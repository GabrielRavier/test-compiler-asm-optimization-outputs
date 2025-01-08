	.text
	.file	"mini-libc.c"
	.globl	make_ti                         # -- Begin function make_ti
	.p2align	5
	.type	make_ti,@function
make_ti:                                # @make_ti
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_make_ti)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_make_ti)
	lu32i.d	$t8, %pc64_lo20(.L__profc_make_ti)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_make_ti)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	make_ti, .Lfunc_end0-make_ti
                                        # -- End function
	.globl	make_tu                         # -- Begin function make_tu
	.p2align	5
	.type	make_tu,@function
make_tu:                                # @make_tu
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_make_tu)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_make_tu)
	lu32i.d	$t8, %pc64_lo20(.L__profc_make_tu)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_make_tu)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	make_tu, .Lfunc_end1-make_tu
                                        # -- End function
	.globl	memmove                         # -- Begin function memmove
	.p2align	5
	.type	memmove,@function
memmove:                                # @memmove
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memmove)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmove)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmove)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmove)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -48
	bgeu	$a0, $a1, .LBB2_6
	b	.LBB2_1
.LBB2_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memmove)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmove)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmove)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmove)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a1, $fp, -40
	ld.d	$a0, $fp, -56
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -56
	ld.d	$a1, $fp, -40
	ld.d	$a0, $fp, -48
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -48
	b	.LBB2_2
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB2_5
	b	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_2 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memmove)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmove)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmove)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmove)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -56
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, -56
	ld.b	$a0, $a0, -1
	ld.d	$a1, $fp, -48
	addi.d	$a2, $a1, -1
	st.d	$a2, $fp, -48
	st.b	$a0, $a1, -1
	b	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	b	.LBB2_2
.LBB2_5:
	b	.LBB2_13
.LBB2_6:
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -48
	beq	$a0, $a1, .LBB2_12
	b	.LBB2_7
.LBB2_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memmove)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmove)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmove)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmove)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	b	.LBB2_8
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB2_11
	b	.LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_8 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memmove)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmove)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmove)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmove)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -56
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, -56
	ld.b	$a0, $a0, 0
	ld.d	$a1, $fp, -48
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, -48
	st.b	$a0, $a1, 0
	b	.LBB2_10
.LBB2_10:                               #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	b	.LBB2_8
.LBB2_11:
	b	.LBB2_12
.LBB2_12:
	b	.LBB2_13
.LBB2_13:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	memmove, .Lfunc_end2-memmove
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	5
	.type	memccpy,@function
memccpy:                                # @memccpy
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
                                        # kill: def $r8 killed $r6
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	st.w	$a2, $fp, -44
	st.d	$a3, $fp, -56
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memccpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memccpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memccpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memccpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -64
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -72
	ld.bu	$a0, $fp, -44
	st.w	$a0, $fp, -44
	b	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -56
	move	$a1, $zero
	st.d	$a1, $fp, -80                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_4
	b	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memccpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memccpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memccpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memccpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -72
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -64
	st.b	$a0, $a1, 0
	ld.w	$a1, $fp, -44
	xor	$a2, $a0, $a1
	sltu	$a2, $zero, $a2
	st.d	$a2, $fp, -88                   # 8-byte Folded Spill
	st.d	$a2, $fp, -80                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB3_4
	b	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $fp, -88                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_memccpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memccpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memccpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memccpy)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -80                   # 8-byte Folded Spill
	b	.LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $fp, -80                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_7
	b	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memccpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memccpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memccpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memccpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $fp, -56
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -72
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -72
	ld.d	$a0, $fp, -64
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -64
	b	.LBB3_1
.LBB3_7:
	ld.d	$a0, $fp, -56
	beqz	$a0, .LBB3_9
	b	.LBB3_8
.LBB3_8:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memccpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memccpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memccpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memccpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -64
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB3_10
.LBB3_9:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB3_10
.LBB3_10:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	5
	.type	memchr,@function
memchr:                                 # @memchr
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
                                        # kill: def $r7 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	ld.bu	$a0, $fp, -28
	st.w	$a0, $fp, -28
	b	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -56                   # 8-byte Folded Spill
	beqz	$a0, .LBB4_4
	b	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -48
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	xor	$a2, $a0, $a1
	sltu	$a2, $zero, $a2
	st.d	$a2, $fp, -64                   # 8-byte Folded Spill
	st.d	$a2, $fp, -56                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB4_4
	b	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_memchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memchr)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB4_4
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_7
	b	.LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB4_6
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a0, $fp, -48
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	b	.LBB4_1
.LBB4_7:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB4_9
	b	.LBB4_8
.LBB4_8:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -48
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB4_10
.LBB4_9:
	move	$a0, $zero
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB4_10
.LBB4_10:
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end4:
	.size	memchr, .Lfunc_end4-memchr
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	5
	.type	memcmp,@function
memcmp:                                 # @memcmp
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	b	.LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -64                   # 8-byte Folded Spill
	beqz	$a0, .LBB5_4
	b	.LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -48
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -56
	ld.bu	$a1, $a1, 0
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	st.d	$a2, $fp, -72                   # 8-byte Folded Spill
	st.d	$a2, $fp, -64                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB5_4
	b	.LBB5_3
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_memcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memcmp)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB5_4
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_7
	b	.LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB5_6
.LBB5_6:                                #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -48
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -56
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -56
	b	.LBB5_1
.LBB5_7:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB5_9
	b	.LBB5_8
.LBB5_8:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -48
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -56
	ld.bu	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -80                   # 8-byte Folded Spill
	b	.LBB5_10
.LBB5_9:
	move	$a0, $zero
	st.d	$a0, $fp, -80                   # 8-byte Folded Spill
	b	.LBB5_10
.LBB5_10:
	ld.d	$a0, $fp, -80                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end5:
	.size	memcmp, .Lfunc_end5-memcmp
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	5
	.type	memcpy,@function
memcpy:                                 # @memcpy
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memcpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memcpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memcpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memcpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	b	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB6_4
	b	.LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memcpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memcpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memcpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memcpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -56
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, -56
	ld.b	$a0, $a0, 0
	ld.d	$a1, $fp, -48
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, -48
	st.b	$a0, $a1, 0
	b	.LBB6_3
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	b	.LBB6_1
.LBB6_4:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	memcpy, .Lfunc_end6-memcpy
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	5
	.type	memrchr,@function
memrchr:                                # @memrchr
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r7 killed $r5
	st.d	$a0, $fp, -32
	st.w	$a1, $fp, -36
	st.d	$a2, $fp, -48
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memrchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memrchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memrchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memrchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	ld.bu	$a0, $fp, -36
	st.w	$a0, $fp, -36
	b	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -48
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, -48
	beqz	$a0, .LBB7_5
	b	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memrchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memrchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memrchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memrchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -48
	ldx.bu	$a0, $a0, $a1
	ld.w	$a1, $fp, -36
	bne	$a0, $a1, .LBB7_4
	b	.LBB7_3
.LBB7_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memrchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memrchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memrchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memrchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -48
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	b	.LBB7_6
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	b	.LBB7_1
.LBB7_5:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB7_6
.LBB7_6:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end7:
	.size	memrchr, .Lfunc_end7-memrchr
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	5
	.type	memset,@function
memset:                                 # @memset
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r7 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memset)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memset)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memset)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memset)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	b	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB8_4
	b	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memset)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memset)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memset)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memset)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.b	$a0, $fp, -28
	ld.d	$a1, $fp, -48
	st.b	$a0, $a1, 0
	b	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -48
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -48
	b	.LBB8_1
.LBB8_4:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end8:
	.size	memset, .Lfunc_end8-memset
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	5
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_stpcpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_stpcpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_stpcpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_stpcpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -32
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -24
	st.b	$a0, $a1, 0
	beqz	$a0, .LBB9_4
	b	.LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_stpcpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_stpcpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_stpcpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_stpcpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	ld.d	$a0, $fp, -32
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -32
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB9_1
.LBB9_4:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	stpcpy, .Lfunc_end9-stpcpy
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	5
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strchrnul)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strchrnul)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strchrnul)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strchrnul)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.bu	$a0, $fp, -28
	st.w	$a0, $fp, -28
	b	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	move	$a1, $zero
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	beqz	$a0, .LBB10_4
	b	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strchrnul)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strchrnul)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strchrnul)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strchrnul)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	xor	$a2, $a0, $a1
	sltu	$a2, $zero, $a2
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB10_4
	b	.LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_strchrnul)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strchrnul)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strchrnul)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strchrnul)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_7
	b	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strchrnul)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strchrnul)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strchrnul)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strchrnul)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB10_6
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB10_1
.LBB10_7:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	strchrnul, .Lfunc_end10-strchrnul
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	5
	.type	strchr,@function
strchr:                                 # @strchr
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -32
	st.w	$a1, $fp, -36
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB11_2
.LBB11_1:                               #   in Loop: Header=BB11_2 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB11_2
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -32
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -36
	bne	$a0, $a1, .LBB11_4
	b	.LBB11_3
.LBB11_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB11_7
.LBB11_4:                               #   in Loop: Header=BB11_2 Depth=1
	b	.LBB11_5
.LBB11_5:                               #   in Loop: Header=BB11_2 Depth=1
	ld.d	$a0, $fp, -32
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, -32
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB11_1
	b	.LBB11_6
.LBB11_6:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB11_7
.LBB11_7:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	strchr, .Lfunc_end11-strchr
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	5
	.type	strcmp,@function
strcmp:                                 # @strcmp
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB12_1
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.b	$a1, $a1, 0
	move	$a2, $zero
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB12_4
	b	.LBB12_2
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	sltu	$a1, $zero, $a0
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_4
	b	.LBB12_3
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_strcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strcmp)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_7
	b	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_1 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	ld.d	$a0, $fp, -32
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -32
	b	.LBB12_1
.LBB12_7:
	ld.d	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.bu	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	strcmp, .Lfunc_end12-strcmp
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	5
	.type	strlen,@function
strlen:                                 # @strlen
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strlen)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strlen)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strlen)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strlen)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB13_4
	b	.LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strlen)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strlen)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strlen)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strlen)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB13_1
.LBB13_4:
	ld.d	$a0, $fp, -24
	ld.d	$a1, $fp, -32
	sub.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	strlen, .Lfunc_end13-strlen
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	5
	.type	strncmp,@function
strncmp:                                # @strncmp
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	st.d	$a2, $fp, -48
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -64
	ld.d	$a0, $fp, -48
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, -48
	bnez	$a0, .LBB14_2
	b	.LBB14_1
.LBB14_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_strncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncmp)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -20
	b	.LBB14_14
.LBB14_2:
	b	.LBB14_3
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -56
	ld.bu	$a0, $a0, 0
	move	$a1, $zero
	st.d	$a1, $fp, -72                   # 8-byte Folded Spill
	beqz	$a0, .LBB14_10
	b	.LBB14_4
.LBB14_4:                               #   in Loop: Header=BB14_3 Depth=1
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_strncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncmp)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 56
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 56
	ld.d	$a0, $fp, -64
	ld.bu	$a0, $a0, 0
	st.d	$a1, $fp, -72                   # 8-byte Folded Spill
	beqz	$a0, .LBB14_10
	b	.LBB14_5
.LBB14_5:                               #   in Loop: Header=BB14_3 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 64
	b	.LBB14_6
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_strncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncmp)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 40
	ld.d	$a0, $fp, -48
	st.d	$a1, $fp, -72                   # 8-byte Folded Spill
	beqz	$a0, .LBB14_10
	b	.LBB14_7
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	b	.LBB14_8
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a0, $fp, -56
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -64
	ld.bu	$a1, $a1, 0
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	st.d	$a2, $fp, -80                   # 8-byte Folded Spill
	st.d	$a2, $fp, -72                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB14_10
	b	.LBB14_9
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a0, $fp, -80                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_strncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncmp)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 32
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 32
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB14_10
.LBB14_10:                              #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB14_13
	b	.LBB14_11
.LBB14_11:                              #   in Loop: Header=BB14_3 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	b	.LBB14_12
.LBB14_12:                              #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a0, $fp, -56
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -64
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -64
	ld.d	$a0, $fp, -48
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -48
	b	.LBB14_3
.LBB14_13:
	ld.d	$a0, $fp, -56
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -64
	ld.bu	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	b	.LBB14_14
.LBB14_14:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end14:
	.size	strncmp, .Lfunc_end14-strncmp
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	5
	.type	swab,@function
swab:                                   # @swab
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_swab)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_swab)
	lu32i.d	$t8, %pc64_lo20(.L__profc_swab)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_swab)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	b	.LBB15_1
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB15_4
	b	.LBB15_2
.LBB15_2:                               #   in Loop: Header=BB15_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_swab)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_swab)
	lu32i.d	$t8, %pc64_lo20(.L__profc_swab)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_swab)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -48
	ld.b	$a0, $a0, 1
	ld.d	$a1, $fp, -56
	st.b	$a0, $a1, 0
	ld.d	$a0, $fp, -48
	ld.b	$a0, $a0, 0
	ld.d	$a1, $fp, -56
	st.b	$a0, $a1, 1
	ld.d	$a0, $fp, -56
	addi.d	$a0, $a0, 2
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -48
	addi.d	$a0, $a0, 2
	st.d	$a0, $fp, -48
	b	.LBB15_3
.LBB15_3:                               #   in Loop: Header=BB15_1 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -2
	st.d	$a0, $fp, -40
	b	.LBB15_1
.LBB15_4:
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end15:
	.size	swab, .Lfunc_end15-swab
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	5
	.type	isalpha,@function
isalpha:                                # @isalpha
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_isalpha)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isalpha)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isalpha)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isalpha)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	ori	$a0, $a0, 32
	addi.d	$a0, $a0, -97
	addi.w	$a0, $a0, 0
	sltui	$a0, $a0, 26
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	isalpha, .Lfunc_end16-isalpha
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	5
	.type	isascii,@function
isascii:                                # @isascii
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_isascii)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isascii)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isascii)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isascii)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a0, $fp, -20
	bstrpick.d	$a0, $a0, 31, 7
	slli.d	$a0, $a0, 7
	addi.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end17:
	.size	isascii, .Lfunc_end17-isascii
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	5
	.type	isblank,@function
isblank:                                # @isblank
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_isblank)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isblank)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isblank)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isblank)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB18_3
	b	.LBB18_1
.LBB18_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_isblank)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isblank)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isblank)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isblank)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -20
	addi.d	$a1, $a0, -9
	sltui	$a2, $a1, 1
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	ori	$a1, $zero, 9
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB18_3
	b	.LBB18_2
.LBB18_2:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_isblank)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isblank)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isblank)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isblank)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB18_3
.LBB18_3:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	5
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iscntrl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iscntrl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iscntrl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iscntrl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB19_3
	b	.LBB19_1
.LBB19_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iscntrl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iscntrl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iscntrl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iscntrl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -20
	addi.d	$a1, $a0, -127
	sltui	$a2, $a1, 1
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	ori	$a1, $zero, 127
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB19_3
	b	.LBB19_2
.LBB19_2:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_iscntrl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iscntrl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iscntrl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iscntrl)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB19_3
.LBB19_3:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end19:
	.size	iscntrl, .Lfunc_end19-iscntrl
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	5
	.type	isdigit,@function
isdigit:                                # @isdigit
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_isdigit)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isdigit)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isdigit)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isdigit)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -48
	addi.w	$a0, $a0, 0
	sltui	$a0, $a0, 10
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end20:
	.size	isdigit, .Lfunc_end20-isdigit
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	5
	.type	isgraph,@function
isgraph:                                # @isgraph
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_isgraph)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isgraph)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isgraph)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isgraph)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -33
	addi.w	$a0, $a0, 0
	sltui	$a0, $a0, 94
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end21:
	.size	isgraph, .Lfunc_end21-isgraph
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	5
	.type	islower,@function
islower:                                # @islower
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_islower)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_islower)
	lu32i.d	$t8, %pc64_lo20(.L__profc_islower)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_islower)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -97
	addi.w	$a0, $a0, 0
	sltui	$a0, $a0, 26
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	islower, .Lfunc_end22-islower
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	5
	.type	isprint,@function
isprint:                                # @isprint
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_isprint)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isprint)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isprint)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isprint)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -32
	addi.w	$a0, $a0, 0
	sltui	$a0, $a0, 95
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end23:
	.size	isprint, .Lfunc_end23-isprint
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	5
	.type	isspace,@function
isspace:                                # @isspace
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_isspace)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isspace)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isspace)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isspace)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB24_3
	b	.LBB24_1
.LBB24_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_isspace)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isspace)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isspace)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isspace)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -9
	addi.w	$a0, $a0, 0
	sltui	$a2, $a0, 5
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	ori	$a1, $zero, 5
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB24_3
	b	.LBB24_2
.LBB24_2:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_isspace)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isspace)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isspace)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isspace)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB24_3
.LBB24_3:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	isspace, .Lfunc_end24-isspace
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	5
	.type	isupper,@function
isupper:                                # @isupper
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_isupper)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_isupper)
	lu32i.d	$t8, %pc64_lo20(.L__profc_isupper)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_isupper)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -65
	addi.w	$a0, $a0, 0
	sltui	$a0, $a0, 26
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end25:
	.size	isupper, .Lfunc_end25-isupper
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	5
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswcntrl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswcntrl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswcntrl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswcntrl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB26_7
	b	.LBB26_1
.LBB26_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswcntrl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswcntrl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswcntrl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswcntrl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -127
	addi.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	ori	$a1, $zero, 33
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB26_7
	b	.LBB26_2
.LBB26_2:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswcntrl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswcntrl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswcntrl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswcntrl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	b	.LBB26_3
.LBB26_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswcntrl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswcntrl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswcntrl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswcntrl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.w	$a0, $fp, -20
	lu12i.w	$a1, -3
	ori	$a1, $a1, 4056
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	ori	$a1, $zero, 2
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB26_7
	b	.LBB26_4
.LBB26_4:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswcntrl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswcntrl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswcntrl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswcntrl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	b	.LBB26_5
.LBB26_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswcntrl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswcntrl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswcntrl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswcntrl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -20
	addu16i.d	$a0, $a0, -1
	addi.w	$a0, $a0, 7
	sltui	$a2, $a0, 3
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	ori	$a1, $zero, 3
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB26_7
	b	.LBB26_6
.LBB26_6:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_iswcntrl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswcntrl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswcntrl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswcntrl)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB26_7
.LBB26_7:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end26:
	.size	iswcntrl, .Lfunc_end26-iswcntrl
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	5
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswdigit)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswdigit)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswdigit)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswdigit)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -48
	addi.w	$a0, $a0, 0
	sltui	$a0, $a0, 10
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end27:
	.size	iswdigit, .Lfunc_end27-iswdigit
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	5
	.type	iswprint,@function
iswprint:                               # @iswprint
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswprint)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswprint)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswprint)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswprint)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a1, $fp, -24
	ori	$a0, $zero, 254
	bltu	$a0, $a1, .LBB28_2
	b	.LBB28_1
.LBB28_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswprint)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswprint)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswprint)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswprint)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	andi	$a1, $a0, 127
	ori	$a0, $zero, 32
	sltu	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	b	.LBB28_13
.LBB28_2:
	ld.wu	$a0, $fp, -24
	srli.d	$a0, $a0, 3
	ori	$a1, $zero, 1029
	bltu	$a0, $a1, .LBB28_7
	b	.LBB28_3
.LBB28_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswprint)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswprint)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswprint)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswprint)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.w	$a0, $fp, -24
	lu12i.w	$a1, -3
	ori	$a1, $a1, 4054
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	lu12i.w	$a1, 11
	ori	$a1, $a1, 2006
	bltu	$a0, $a1, .LBB28_7
	b	.LBB28_4
.LBB28_4:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswprint)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswprint)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswprint)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswprint)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	b	.LBB28_5
.LBB28_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswprint)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswprint)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswprint)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswprint)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.w	$a0, $fp, -24
	lu12i.w	$a1, -14
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 4089
	bltu	$a0, $a1, .LBB28_7
	b	.LBB28_6
.LBB28_6:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswprint)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswprint)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswprint)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswprint)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	b	.LBB28_8
.LBB28_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswprint)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswprint)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswprint)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswprint)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB28_13
.LBB28_8:
	ld.w	$a0, $fp, -24
	addu16i.d	$a0, $a0, -1
	addi.w	$a1, $a0, 4
	lu12i.w	$a0, 256
	ori	$a0, $a0, 3
	bltu	$a0, $a1, .LBB28_11
	b	.LBB28_9
.LBB28_9:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswprint)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswprint)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswprint)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswprint)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 64
	ld.wu	$a0, $fp, -24
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a0, $a0, 1
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4094
	beq	$a0, $a1, .LBB28_11
	b	.LBB28_10
.LBB28_10:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswprint)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswprint)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswprint)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswprint)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 72
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 72
	b	.LBB28_12
.LBB28_11:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_iswprint)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswprint)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswprint)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswprint)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 56
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 56
	st.w	$a0, $fp, -20
	b	.LBB28_13
.LBB28_12:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB28_13
.LBB28_13:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end28:
	.size	iswprint, .Lfunc_end28-iswprint
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	5
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswxdigit)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswxdigit)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswxdigit)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswxdigit)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -48
	addi.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	ori	$a1, $zero, 10
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB29_3
	b	.LBB29_1
.LBB29_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_iswxdigit)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswxdigit)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswxdigit)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswxdigit)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -20
	ori	$a0, $a0, 32
	addi.d	$a0, $a0, -97
	addi.w	$a0, $a0, 0
	sltui	$a2, $a0, 6
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	ori	$a1, $zero, 6
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB29_3
	b	.LBB29_2
.LBB29_2:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_iswxdigit)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_iswxdigit)
	lu32i.d	$t8, %pc64_lo20(.L__profc_iswxdigit)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_iswxdigit)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB29_3
.LBB29_3:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end29:
	.size	iswxdigit, .Lfunc_end29-iswxdigit
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	5
	.type	toascii,@function
toascii:                                # @toascii
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_toascii)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_toascii)
	lu32i.d	$t8, %pc64_lo20(.L__profc_toascii)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_toascii)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a0, $fp, -20
	andi	$a0, $a0, 127
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end30:
	.size	toascii, .Lfunc_end30-toascii
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	5
	.type	fdim,@function
fdim:                                   # @fdim
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fdim)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fdim)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fdim)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fdim)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	bstrpick.d	$a0, $a0, 62, 0
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, 2047
	blt	$a0, $a1, .LBB31_2
	b	.LBB31_1
.LBB31_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fdim)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fdim)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fdim)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fdim)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB31_8
.LBB31_2:
	ld.d	$a0, $fp, -40
	bstrpick.d	$a0, $a0, 62, 0
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, 2047
	blt	$a0, $a1, .LBB31_4
	b	.LBB31_3
.LBB31_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fdim)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fdim)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fdim)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fdim)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -24
	b	.LBB31_8
.LBB31_4:
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	pcalau12i	$ra, %got_pc_hi20(__gtdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gtdf2)
	lu32i.d	$t8, %got64_pc_lo20(__gtdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gtdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB31_6
	b	.LBB31_5
.LBB31_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fdim)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fdim)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fdim)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fdim)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	pcalau12i	$ra, %got_pc_hi20(__subdf3)
	addi.d	$t8, $zero, %got_pc_lo12(__subdf3)
	lu32i.d	$t8, %got64_pc_lo20(__subdf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__subdf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB31_7
.LBB31_6:
	move	$a0, $zero
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB31_7
.LBB31_7:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	st.d	$a0, $fp, -24
	b	.LBB31_8
.LBB31_8:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end31:
	.size	fdim, .Lfunc_end31-fdim
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	5
	.type	fdimf,@function
fdimf:                                  # @fdimf
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fdimf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fdimf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fdimf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fdimf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a0, $fp, -24
	bstrpick.d	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB32_2
	b	.LBB32_1
.LBB32_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fdimf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fdimf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fdimf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fdimf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB32_8
.LBB32_2:
	ld.wu	$a0, $fp, -28
	bstrpick.d	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB32_4
	b	.LBB32_3
.LBB32_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fdimf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fdimf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fdimf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fdimf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.w	$a0, $fp, -28
	st.w	$a0, $fp, -20
	b	.LBB32_8
.LBB32_4:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	pcalau12i	$ra, %got_pc_hi20(__gtsf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gtsf2)
	lu32i.d	$t8, %got64_pc_lo20(__gtsf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gtsf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB32_6
	b	.LBB32_5
.LBB32_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fdimf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fdimf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fdimf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fdimf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	pcalau12i	$ra, %got_pc_hi20(__subsf3)
	addi.d	$t8, $zero, %got_pc_lo12(__subsf3)
	lu32i.d	$t8, %got64_pc_lo20(__subsf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__subsf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB32_7
.LBB32_6:
	move	$a0, $zero
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB32_7
.LBB32_7:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	st.w	$a0, $fp, -20
	b	.LBB32_8
.LBB32_8:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end32:
	.size	fdimf, .Lfunc_end32-fdimf
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	5
	.type	fmax,@function
fmax:                                   # @fmax
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmax)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmax)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmax)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmax)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	bstrpick.d	$a0, $a0, 62, 0
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, 2047
	blt	$a0, $a1, .LBB33_2
	b	.LBB33_1
.LBB33_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmax)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmax)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmax)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmax)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -24
	b	.LBB33_13
.LBB33_2:
	ld.d	$a0, $fp, -40
	bstrpick.d	$a0, $a0, 62, 0
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, 2047
	blt	$a0, $a1, .LBB33_4
	b	.LBB33_3
.LBB33_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmax)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmax)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmax)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmax)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB33_13
.LBB33_4:
	ld.d	$a0, $fp, -32
	srli.d	$a0, $a0, 63
	ld.d	$a1, $fp, -40
	srli.d	$a1, $a1, 63
	beq	$a0, $a1, .LBB33_9
	b	.LBB33_5
.LBB33_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmax)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmax)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmax)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmax)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a1, $fp, -32
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB33_7
	b	.LBB33_6
.LBB33_6:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmax)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmax)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmax)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmax)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB33_8
.LBB33_7:
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB33_8
.LBB33_8:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	st.d	$a0, $fp, -24
	b	.LBB33_13
.LBB33_9:
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB33_11
	b	.LBB33_10
.LBB33_10:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmax)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmax)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmax)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmax)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB33_12
.LBB33_11:
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB33_12
.LBB33_12:
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	st.d	$a0, $fp, -24
	b	.LBB33_13
.LBB33_13:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end33:
	.size	fmax, .Lfunc_end33-fmax
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	5
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a0, $fp, -24
	bstrpick.d	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB34_2
	b	.LBB34_1
.LBB34_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -28
	st.w	$a0, $fp, -20
	b	.LBB34_13
.LBB34_2:
	ld.wu	$a0, $fp, -28
	bstrpick.d	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB34_4
	b	.LBB34_3
.LBB34_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB34_13
.LBB34_4:
	ld.wu	$a0, $fp, -24
	srli.d	$a0, $a0, 31
	ld.wu	$a1, $fp, -28
	srli.d	$a1, $a1, 31
	beq	$a0, $a1, .LBB34_9
	b	.LBB34_5
.LBB34_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.w	$a1, $fp, -24
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB34_7
	b	.LBB34_6
.LBB34_6:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.w	$a0, $fp, -28
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB34_8
.LBB34_7:
	ld.w	$a0, $fp, -24
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB34_8
.LBB34_8:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	st.w	$a0, $fp, -20
	b	.LBB34_13
.LBB34_9:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	pcalau12i	$ra, %got_pc_hi20(__ltsf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltsf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltsf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltsf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB34_11
	b	.LBB34_10
.LBB34_10:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.w	$a0, $fp, -28
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB34_12
.LBB34_11:
	ld.w	$a0, $fp, -24
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB34_12
.LBB34_12:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	st.w	$a0, $fp, -20
	b	.LBB34_13
.LBB34_13:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end34:
	.size	fmaxf, .Lfunc_end34-fmaxf
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	5
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	st.d	$a3, $fp, -56
	st.d	$a2, $fp, -64
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	bstrpick.d	$a2, $a1, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a3, $a1, 2047
	slt	$a1, $a2, $a3
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB35_2
	b	.LBB35_1
.LBB35_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -64
	ld.d	$a1, $fp, -56
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB35_13
.LBB35_2:
	ld.d	$a0, $fp, -64
	ld.d	$a1, $fp, -56
	bstrpick.d	$a2, $a1, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a3, $a1, 2047
	slt	$a1, $a2, $a3
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB35_4
	b	.LBB35_3
.LBB35_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB35_13
.LBB35_4:
	ld.d	$a0, $fp, -40
	srli.d	$a0, $a0, 63
	ld.d	$a1, $fp, -56
	srli.d	$a1, $a1, 63
	beq	$a0, $a1, .LBB35_9
	b	.LBB35_5
.LBB35_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a1, $fp, -40
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB35_7
	b	.LBB35_6
.LBB35_6:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -64
	st.d	$a1, $fp, -80                   # 8-byte Folded Spill
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB35_8
.LBB35_7:
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	st.d	$a1, $fp, -80                   # 8-byte Folded Spill
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB35_8
.LBB35_8:
	ld.d	$a1, $fp, -80                   # 8-byte Folded Reload
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
	st.d	$a1, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB35_13
.LBB35_9:
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	ld.d	$a2, $fp, -64
	ld.d	$a3, $fp, -56
	pcalau12i	$ra, %got_pc_hi20(__lttf2)
	addi.d	$t8, $zero, %got_pc_lo12(__lttf2)
	lu32i.d	$t8, %got64_pc_lo20(__lttf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__lttf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB35_11
	b	.LBB35_10
.LBB35_10:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmaxl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmaxl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmaxl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmaxl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -64
	st.d	$a1, $fp, -96                   # 8-byte Folded Spill
	st.d	$a0, $fp, -88                   # 8-byte Folded Spill
	b	.LBB35_12
.LBB35_11:
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	st.d	$a1, $fp, -96                   # 8-byte Folded Spill
	st.d	$a0, $fp, -88                   # 8-byte Folded Spill
	b	.LBB35_12
.LBB35_12:
	ld.d	$a1, $fp, -96                   # 8-byte Folded Reload
	ld.d	$a0, $fp, -88                   # 8-byte Folded Reload
	st.d	$a1, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB35_13
.LBB35_13:
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end35:
	.size	fmaxl, .Lfunc_end35-fmaxl
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	5
	.type	fmin,@function
fmin:                                   # @fmin
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmin)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmin)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmin)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmin)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	bstrpick.d	$a0, $a0, 62, 0
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, 2047
	blt	$a0, $a1, .LBB36_2
	b	.LBB36_1
.LBB36_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmin)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmin)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmin)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmin)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -24
	b	.LBB36_13
.LBB36_2:
	ld.d	$a0, $fp, -40
	bstrpick.d	$a0, $a0, 62, 0
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, 2047
	blt	$a0, $a1, .LBB36_4
	b	.LBB36_3
.LBB36_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmin)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmin)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmin)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmin)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB36_13
.LBB36_4:
	ld.d	$a0, $fp, -32
	srli.d	$a0, $a0, 63
	ld.d	$a1, $fp, -40
	srli.d	$a1, $a1, 63
	beq	$a0, $a1, .LBB36_9
	b	.LBB36_5
.LBB36_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmin)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmin)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmin)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmin)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a1, $fp, -32
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB36_7
	b	.LBB36_6
.LBB36_6:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmin)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmin)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmin)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmin)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB36_8
.LBB36_7:
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB36_8
.LBB36_8:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	st.d	$a0, $fp, -24
	b	.LBB36_13
.LBB36_9:
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB36_11
	b	.LBB36_10
.LBB36_10:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fmin)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fmin)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fmin)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fmin)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB36_12
.LBB36_11:
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB36_12
.LBB36_12:
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	st.d	$a0, $fp, -24
	b	.LBB36_13
.LBB36_13:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end36:
	.size	fmin, .Lfunc_end36-fmin
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	5
	.type	fminf,@function
fminf:                                  # @fminf
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a0, $fp, -24
	bstrpick.d	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB37_2
	b	.LBB37_1
.LBB37_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -28
	st.w	$a0, $fp, -20
	b	.LBB37_13
.LBB37_2:
	ld.wu	$a0, $fp, -28
	bstrpick.d	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB37_4
	b	.LBB37_3
.LBB37_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB37_13
.LBB37_4:
	ld.wu	$a0, $fp, -24
	srli.d	$a0, $a0, 31
	ld.wu	$a1, $fp, -28
	srli.d	$a1, $a1, 31
	beq	$a0, $a1, .LBB37_9
	b	.LBB37_5
.LBB37_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.w	$a1, $fp, -24
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB37_7
	b	.LBB37_6
.LBB37_6:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.w	$a0, $fp, -24
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB37_8
.LBB37_7:
	ld.w	$a0, $fp, -28
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB37_8
.LBB37_8:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	st.w	$a0, $fp, -20
	b	.LBB37_13
.LBB37_9:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	pcalau12i	$ra, %got_pc_hi20(__ltsf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltsf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltsf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltsf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB37_11
	b	.LBB37_10
.LBB37_10:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.w	$a0, $fp, -24
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB37_12
.LBB37_11:
	ld.w	$a0, $fp, -28
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB37_12
.LBB37_12:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	st.w	$a0, $fp, -20
	b	.LBB37_13
.LBB37_13:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end37:
	.size	fminf, .Lfunc_end37-fminf
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	5
	.type	fminl,@function
fminl:                                  # @fminl
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	st.d	$a3, $fp, -56
	st.d	$a2, $fp, -64
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	bstrpick.d	$a2, $a1, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a3, $a1, 2047
	slt	$a1, $a2, $a3
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB38_2
	b	.LBB38_1
.LBB38_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -64
	ld.d	$a1, $fp, -56
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB38_13
.LBB38_2:
	ld.d	$a0, $fp, -64
	ld.d	$a1, $fp, -56
	bstrpick.d	$a2, $a1, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a3, $a1, 2047
	slt	$a1, $a2, $a3
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB38_4
	b	.LBB38_3
.LBB38_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB38_13
.LBB38_4:
	ld.d	$a0, $fp, -40
	srli.d	$a0, $a0, 63
	ld.d	$a1, $fp, -56
	srli.d	$a1, $a1, 63
	beq	$a0, $a1, .LBB38_9
	b	.LBB38_5
.LBB38_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a1, $fp, -40
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB38_7
	b	.LBB38_6
.LBB38_6:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	st.d	$a1, $fp, -80                   # 8-byte Folded Spill
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB38_8
.LBB38_7:
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -64
	st.d	$a1, $fp, -80                   # 8-byte Folded Spill
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB38_8
.LBB38_8:
	ld.d	$a1, $fp, -80                   # 8-byte Folded Reload
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
	st.d	$a1, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB38_13
.LBB38_9:
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	ld.d	$a2, $fp, -64
	ld.d	$a3, $fp, -56
	pcalau12i	$ra, %got_pc_hi20(__lttf2)
	addi.d	$t8, $zero, %got_pc_lo12(__lttf2)
	lu32i.d	$t8, %got64_pc_lo20(__lttf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__lttf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB38_11
	b	.LBB38_10
.LBB38_10:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_fminl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_fminl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_fminl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_fminl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	st.d	$a1, $fp, -96                   # 8-byte Folded Spill
	st.d	$a0, $fp, -88                   # 8-byte Folded Spill
	b	.LBB38_12
.LBB38_11:
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -64
	st.d	$a1, $fp, -96                   # 8-byte Folded Spill
	st.d	$a0, $fp, -88                   # 8-byte Folded Spill
	b	.LBB38_12
.LBB38_12:
	ld.d	$a1, $fp, -96                   # 8-byte Folded Reload
	ld.d	$a0, $fp, -88                   # 8-byte Folded Reload
	st.d	$a1, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB38_13
.LBB38_13:
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end38:
	.size	fminl, .Lfunc_end38-fminl
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	5
	.type	l64a,@function
l64a:                                   # @l64a
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_l64a)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_l64a)
	lu32i.d	$t8, %pc64_lo20(.L__profc_l64a)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_l64a)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, -24
	st.w	$a1, $fp, -36
	pcalau12i	$a0, %pc_hi20(l64a.s)
	addi.d	$t8, $zero, %pc_lo12(l64a.s)
	lu32i.d	$t8, %pc64_lo20(l64a.s)
	lu52i.d	$t8, $t8, %pc64_hi12(l64a.s)
	add.d	$a0, $t8, $a0
	st.d	$a0, $fp, -32
	b	.LBB39_1
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -36
	beqz	$a0, .LBB39_4
	b	.LBB39_2
.LBB39_2:                               #   in Loop: Header=BB39_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_l64a)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_l64a)
	lu32i.d	$t8, %pc64_lo20(.L__profc_l64a)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_l64a)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	ld.wu	$a1, $fp, -36
	andi	$a1, $a1, 63
	pcalau12i	$a0, %pc_hi20(digits)
	addi.d	$t8, $zero, %pc_lo12(digits)
	lu32i.d	$t8, %pc64_lo20(digits)
	lu52i.d	$t8, $t8, %pc64_hi12(digits)
	add.d	$a0, $t8, $a0
	ldx.b	$a0, $a0, $a1
	ld.d	$a1, $fp, -32
	st.b	$a0, $a1, 0
	b	.LBB39_3
.LBB39_3:                               #   in Loop: Header=BB39_1 Depth=1
	ld.d	$a0, $fp, -32
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -32
	ld.wu	$a0, $fp, -36
	srli.d	$a0, $a0, 6
	st.w	$a0, $fp, -36
	b	.LBB39_1
.LBB39_4:
	ld.d	$a1, $fp, -32
	move	$a0, $zero
	st.b	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(l64a.s)
	addi.d	$t8, $zero, %pc_lo12(l64a.s)
	lu32i.d	$t8, %pc64_lo20(l64a.s)
	lu52i.d	$t8, $t8, %pc64_hi12(l64a.s)
	add.d	$a0, $t8, $a0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end39:
	.size	l64a, .Lfunc_end39-l64a
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	5
	.type	srand,@function
srand:                                  # @srand
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_srand)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_srand)
	lu32i.d	$t8, %pc64_lo20(.L__profc_srand)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_srand)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 0
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	pcalau12i	$a1, %pc_hi20(seed)
	addi.d	$t8, $zero, %pc_lo12(seed)
	lu32i.d	$t8, %pc64_lo20(seed)
	lu52i.d	$t8, $t8, %pc64_hi12(seed)
	add.d	$a1, $t8, $a1
	st.d	$a0, $a1, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end40:
	.size	srand, .Lfunc_end40-srand
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	5
	.type	rand,@function
rand:                                   # @rand
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $sp, 16
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_rand)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_rand)
	lu32i.d	$t8, %pc64_lo20(.L__profc_rand)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_rand)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	pcalau12i	$a0, %pc_hi20(seed)
	addi.d	$t8, $zero, %pc_lo12(seed)
	lu32i.d	$t8, %pc64_lo20(seed)
	lu52i.d	$t8, $t8, %pc64_hi12(seed)
	add.d	$a0, $t8, $a0
	ld.d	$a1, $a0, 0
	lu12i.w	$a2, 313687
	ori	$a2, $a2, 3885
	lu32i.d	$a2, 128045
	lu52i.d	$a2, $a2, 1413
	mul.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	st.d	$a1, $a0, 0
	ld.d	$a0, $a0, 0
	srli.d	$a0, $a0, 33
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end41:
	.size	rand, .Lfunc_end41-rand
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	5
	.type	insque,@function
insque:                                 # @insque
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_insque)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_insque)
	lu32i.d	$t8, %pc64_lo20(.L__profc_insque)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_insque)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -48
	bnez	$a0, .LBB42_2
	b	.LBB42_1
.LBB42_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_insque)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_insque)
	lu32i.d	$t8, %pc64_lo20(.L__profc_insque)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_insque)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	ld.d	$a1, $fp, -40
	st.d	$a0, $a1, 8
	ld.d	$a1, $fp, -40
	st.d	$a0, $a1, 0
	b	.LBB42_4
.LBB42_2:
	ld.d	$a0, $fp, -48
	ld.d	$a0, $a0, 0
	ld.d	$a1, $fp, -40
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -40
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB42_4
	b	.LBB42_3
.LBB42_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_insque)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_insque)
	lu32i.d	$t8, %pc64_lo20(.L__profc_insque)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_insque)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -40
	ld.d	$a1, $a0, 0
	st.d	$a0, $a1, 8
	b	.LBB42_4
.LBB42_4:
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end42:
	.size	insque, .Lfunc_end42-insque
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	5
	.type	remque,@function
remque:                                 # @remque
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_remque)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_remque)
	lu32i.d	$t8, %pc64_lo20(.L__profc_remque)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_remque)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -32
	ld.d	$a0, $fp, -32
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB43_2
	b	.LBB43_1
.LBB43_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_remque)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_remque)
	lu32i.d	$t8, %pc64_lo20(.L__profc_remque)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_remque)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a1, $fp, -32
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 0
	st.d	$a0, $a1, 8
	b	.LBB43_2
.LBB43_2:
	ld.d	$a0, $fp, -32
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB43_4
	b	.LBB43_3
.LBB43_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_remque)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_remque)
	lu32i.d	$t8, %pc64_lo20(.L__profc_remque)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_remque)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a1, $fp, -32
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	st.d	$a0, $a1, 0
	b	.LBB43_4
.LBB43_4:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end43:
	.size	remque, .Lfunc_end43-remque
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	5
	.type	lsearch,@function
lsearch:                                # @lsearch
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 112
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	st.d	$a2, $fp, -48
	st.d	$a3, $fp, -56
	st.d	$a4, $fp, -64
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_lsearch)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_lsearch)
	lu32i.d	$t8, %pc64_lo20(.L__profc_lsearch)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_lsearch)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, -56
	st.d	$a1, $fp, -96                   # 8-byte Folded Spill
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -72
	ld.d	$a1, $fp, -48
	ld.d	$a1, $a1, 0
	st.d	$a1, $fp, -80
	st.d	$a0, $fp, -88
	b	.LBB44_1
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -88
	ld.d	$a1, $fp, -80
	bgeu	$a0, $a1, .LBB44_6
	b	.LBB44_2
.LBB44_2:                               #   in Loop: Header=BB44_1 Depth=1
	ld.d	$a4, $fp, -96                   # 8-byte Folded Reload
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_lsearch)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_lsearch)
	lu32i.d	$t8, %pc64_lo20(.L__profc_lsearch)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_lsearch)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a2, $fp, -64
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -72
	ld.d	$a3, $fp, -88
	mul.d	$a3, $a3, $a4
	add.d	$a1, $a1, $a3
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB44_4
	b	.LBB44_3
.LBB44_3:
	ld.d	$a2, $fp, -96                   # 8-byte Folded Reload
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_lsearch)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_lsearch)
	lu32i.d	$t8, %pc64_lo20(.L__profc_lsearch)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_lsearch)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -72
	ld.d	$a1, $fp, -88
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	b	.LBB44_7
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	b	.LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
	ld.d	$a0, $fp, -88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -88
	b	.LBB44_1
.LBB44_6:
	ld.d	$a2, $fp, -96                   # 8-byte Folded Reload
	ld.d	$a0, $fp, -80
	addi.d	$a0, $a0, 1
	ld.d	$a1, $fp, -48
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -72
	ld.d	$a1, $fp, -80
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -104                  # 8-byte Folded Spill
	ld.d	$a1, $fp, -32
	ld.d	$a2, $fp, -56
	pcalau12i	$ra, %got_pc_hi20(memcpy)
	addi.d	$t8, $zero, %got_pc_lo12(memcpy)
	lu32i.d	$t8, %got64_pc_lo20(memcpy)
	lu52i.d	$t8, $t8, %got64_pc_hi12(memcpy)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
                                        # kill: def $r5 killed $r4
	ld.d	$a0, $fp, -104                  # 8-byte Folded Reload
	st.d	$a0, $fp, -24
	b	.LBB44_7
.LBB44_7:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end44:
	.size	lsearch, .Lfunc_end44-lsearch
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	5
	.type	lfind,@function
lfind:                                  # @lfind
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	st.d	$a2, $fp, -48
	st.d	$a3, $fp, -56
	st.d	$a4, $fp, -64
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_lfind)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_lfind)
	lu32i.d	$t8, %pc64_lo20(.L__profc_lfind)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_lfind)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, -56
	st.d	$a1, $fp, -96                   # 8-byte Folded Spill
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -72
	ld.d	$a1, $fp, -48
	ld.d	$a1, $a1, 0
	st.d	$a1, $fp, -80
	st.d	$a0, $fp, -88
	b	.LBB45_1
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -88
	ld.d	$a1, $fp, -80
	bgeu	$a0, $a1, .LBB45_6
	b	.LBB45_2
.LBB45_2:                               #   in Loop: Header=BB45_1 Depth=1
	ld.d	$a4, $fp, -96                   # 8-byte Folded Reload
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_lfind)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_lfind)
	lu32i.d	$t8, %pc64_lo20(.L__profc_lfind)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_lfind)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a2, $fp, -64
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -72
	ld.d	$a3, $fp, -88
	mul.d	$a3, $a3, $a4
	add.d	$a1, $a1, $a3
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB45_4
	b	.LBB45_3
.LBB45_3:
	ld.d	$a2, $fp, -96                   # 8-byte Folded Reload
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_lfind)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_lfind)
	lu32i.d	$t8, %pc64_lo20(.L__profc_lfind)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_lfind)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -72
	ld.d	$a1, $fp, -88
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	b	.LBB45_7
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	b	.LBB45_5
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
	ld.d	$a0, $fp, -88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -88
	b	.LBB45_1
.LBB45_6:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB45_7
.LBB45_7:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end45:
	.size	lfind, .Lfunc_end45-lfind
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	5
	.type	abs,@function
abs:                                    # @abs
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_abs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_abs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_abs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_abs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB46_2
	b	.LBB46_1
.LBB46_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_abs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_abs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_abs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_abs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -20
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB46_3
.LBB46_2:
	ld.w	$a1, $fp, -20
	move	$a0, $zero
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB46_3
.LBB46_3:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end46:
	.size	abs, .Lfunc_end46-abs
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	5
	.type	atoi,@function
atoi:                                   # @atoi
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_atoi)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoi)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoi)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoi)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -28
	st.w	$a0, $fp, -32
	b	.LBB47_1
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	pcalau12i	$ra, %pc_hi20(isspace)
	addi.d	$t8, $zero, %pc_lo12(isspace)
	lu32i.d	$t8, %pc64_lo20(isspace)
	lu52i.d	$t8, $t8, %pc64_hi12(isspace)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_3
	b	.LBB47_2
.LBB47_2:                               #   in Loop: Header=BB47_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoi)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoi)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoi)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoi)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB47_1
.LBB47_3:
	ld.d	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ext.w.b	$a1, $a0
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	ori	$a1, $zero, 43
	beq	$a0, $a1, .LBB47_6
	b	.LBB47_4
.LBB47_4:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB47_8
	b	.LBB47_5
.LBB47_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoi)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoi)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoi)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoi)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -32
	b	.LBB47_7
.LBB47_6:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoi)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoi)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoi)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoi)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	b	.LBB47_7
.LBB47_7:
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB47_8
.LBB47_8:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoi)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoi)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoi)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoi)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	b	.LBB47_9
.LBB47_9:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	pcalau12i	$ra, %pc_hi20(isdigit)
	addi.d	$t8, $zero, %pc_lo12(isdigit)
	lu32i.d	$t8, %pc64_lo20(isdigit)
	lu52i.d	$t8, $t8, %pc64_hi12(isdigit)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_11
	b	.LBB47_10
.LBB47_10:                              #   in Loop: Header=BB47_9 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoi)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoi)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoi)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoi)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.w	$a0, $fp, -28
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	ld.d	$a1, $fp, -24
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, -24
	ld.b	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 48
	st.w	$a0, $fp, -28
	b	.LBB47_9
.LBB47_11:
	ld.w	$a0, $fp, -32
	beqz	$a0, .LBB47_13
	b	.LBB47_12
.LBB47_12:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoi)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoi)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoi)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoi)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.w	$a0, $fp, -28
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB47_14
.LBB47_13:
	ld.w	$a1, $fp, -28
	move	$a0, $zero
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB47_14
.LBB47_14:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end47:
	.size	atoi, .Lfunc_end47-atoi
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	5
	.type	atol,@function
atol:                                   # @atol
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_atol)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atol)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atol)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atol)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.d	$a0, $fp, -32
	st.w	$a0, $fp, -36
	b	.LBB48_1
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	pcalau12i	$ra, %pc_hi20(isspace)
	addi.d	$t8, $zero, %pc_lo12(isspace)
	lu32i.d	$t8, %pc64_lo20(isspace)
	lu52i.d	$t8, $t8, %pc64_hi12(isspace)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_3
	b	.LBB48_2
.LBB48_2:                               #   in Loop: Header=BB48_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atol)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atol)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atol)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atol)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB48_1
.LBB48_3:
	ld.d	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ext.w.b	$a1, $a0
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	ori	$a1, $zero, 43
	beq	$a0, $a1, .LBB48_6
	b	.LBB48_4
.LBB48_4:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB48_8
	b	.LBB48_5
.LBB48_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atol)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atol)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atol)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atol)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -36
	b	.LBB48_7
.LBB48_6:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atol)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atol)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atol)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atol)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	b	.LBB48_7
.LBB48_7:
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB48_8
.LBB48_8:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atol)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atol)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atol)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atol)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	b	.LBB48_9
.LBB48_9:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	pcalau12i	$ra, %pc_hi20(isdigit)
	addi.d	$t8, $zero, %pc_lo12(isdigit)
	lu32i.d	$t8, %pc64_lo20(isdigit)
	lu52i.d	$t8, $t8, %pc64_hi12(isdigit)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_11
	b	.LBB48_10
.LBB48_10:                              #   in Loop: Header=BB48_9 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atol)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atol)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atol)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atol)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.d	$a0, $fp, -32
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	ld.d	$a1, $fp, -24
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, -24
	ld.b	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 48
	st.d	$a0, $fp, -32
	b	.LBB48_9
.LBB48_11:
	ld.w	$a0, $fp, -36
	beqz	$a0, .LBB48_13
	b	.LBB48_12
.LBB48_12:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atol)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atol)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atol)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atol)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB48_14
.LBB48_13:
	ld.d	$a1, $fp, -32
	move	$a0, $zero
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB48_14
.LBB48_14:
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end48:
	.size	atol, .Lfunc_end48-atol
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	5
	.type	atoll,@function
atoll:                                  # @atoll
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_atoll)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoll)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoll)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoll)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.d	$a0, $fp, -32
	st.w	$a0, $fp, -36
	b	.LBB49_1
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	pcalau12i	$ra, %pc_hi20(isspace)
	addi.d	$t8, $zero, %pc_lo12(isspace)
	lu32i.d	$t8, %pc64_lo20(isspace)
	lu52i.d	$t8, $t8, %pc64_hi12(isspace)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_3
	b	.LBB49_2
.LBB49_2:                               #   in Loop: Header=BB49_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoll)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoll)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoll)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoll)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB49_1
.LBB49_3:
	ld.d	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ext.w.b	$a1, $a0
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	ori	$a1, $zero, 43
	beq	$a0, $a1, .LBB49_6
	b	.LBB49_4
.LBB49_4:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB49_8
	b	.LBB49_5
.LBB49_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoll)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoll)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoll)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoll)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -36
	b	.LBB49_7
.LBB49_6:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoll)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoll)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoll)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoll)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	b	.LBB49_7
.LBB49_7:
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB49_8
.LBB49_8:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoll)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoll)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoll)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoll)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	b	.LBB49_9
.LBB49_9:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	pcalau12i	$ra, %pc_hi20(isdigit)
	addi.d	$t8, $zero, %pc_lo12(isdigit)
	lu32i.d	$t8, %pc64_lo20(isdigit)
	lu52i.d	$t8, $t8, %pc64_hi12(isdigit)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_11
	b	.LBB49_10
.LBB49_10:                              #   in Loop: Header=BB49_9 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoll)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoll)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoll)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoll)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.d	$a0, $fp, -32
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	ld.d	$a1, $fp, -24
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, -24
	ld.b	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 48
	st.d	$a0, $fp, -32
	b	.LBB49_9
.LBB49_11:
	ld.w	$a0, $fp, -36
	beqz	$a0, .LBB49_13
	b	.LBB49_12
.LBB49_12:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_atoll)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_atoll)
	lu32i.d	$t8, %pc64_lo20(.L__profc_atoll)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_atoll)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB49_14
.LBB49_13:
	ld.d	$a1, $fp, -32
	move	$a0, $zero
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB49_14
.LBB49_14:
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end49:
	.size	atoll, .Lfunc_end49-atoll
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	5
	.type	bsearch,@function
bsearch:                                # @bsearch
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	st.d	$a2, $fp, -48
	st.d	$a3, $fp, -56
	st.d	$a4, $fp, -64
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bsearch)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bsearch)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bsearch)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bsearch)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB50_1
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -48
	beqz	$a0, .LBB50_9
	b	.LBB50_2
.LBB50_2:                               #   in Loop: Header=BB50_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bsearch)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bsearch)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bsearch)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bsearch)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -56
	ld.d	$a2, $fp, -48
	srli.d	$a2, $a2, 1
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -72
	ld.d	$a2, $fp, -64
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -72
	jirl	$ra, $a2, 0
	st.w	$a0, $fp, -76
	ld.w	$a1, $fp, -76
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB50_4
	b	.LBB50_3
.LBB50_3:                               #   in Loop: Header=BB50_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bsearch)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bsearch)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bsearch)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bsearch)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -48
	srli.d	$a0, $a0, 1
	st.d	$a0, $fp, -48
	b	.LBB50_8
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	ld.w	$a0, $fp, -76
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB50_6
	b	.LBB50_5
.LBB50_5:                               #   in Loop: Header=BB50_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bsearch)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bsearch)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bsearch)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bsearch)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a0, $fp, -72
	ld.d	$a1, $fp, -56
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	srli.d	$a0, $a1, 1
	nor	$a0, $a0, $zero
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -48
	b	.LBB50_7
.LBB50_6:
	ld.d	$a0, $fp, -72
	st.d	$a0, $fp, -24
	b	.LBB50_10
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	b	.LBB50_8
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	b	.LBB50_1
.LBB50_9:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB50_10
.LBB50_10:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end50:
	.size	bsearch, .Lfunc_end50-bsearch
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	5
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	st.d	$a2, $fp, -48
	st.d	$a3, $fp, -56
	st.d	$a4, $fp, -64
	st.d	$a5, $fp, -72
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bsearch_r)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bsearch_r)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bsearch_r)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bsearch_r)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -80
	ld.d	$a0, $fp, -48
	st.w	$a0, $fp, -84
	b	.LBB51_1
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -84
	beqz	$a0, .LBB51_8
	b	.LBB51_2
.LBB51_2:                               #   in Loop: Header=BB51_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bsearch_r)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bsearch_r)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bsearch_r)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bsearch_r)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -80
	ld.w	$a1, $fp, -84
	srai.d	$a1, $a1, 1
	ld.d	$a2, $fp, -56
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -96
	ld.d	$a3, $fp, -64
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -96
	ld.d	$a2, $fp, -72
	jirl	$ra, $a3, 0
	st.w	$a0, $fp, -88
	ld.w	$a0, $fp, -88
	bnez	$a0, .LBB51_4
	b	.LBB51_3
.LBB51_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bsearch_r)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bsearch_r)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bsearch_r)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bsearch_r)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -96
	st.d	$a0, $fp, -24
	b	.LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	ld.w	$a0, $fp, -88
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB51_6
	b	.LBB51_5
.LBB51_5:                               #   in Loop: Header=BB51_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bsearch_r)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bsearch_r)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bsearch_r)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bsearch_r)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a0, $fp, -96
	ld.d	$a1, $fp, -56
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -80
	ld.w	$a0, $fp, -84
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, -84
	b	.LBB51_6
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	b	.LBB51_7
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
	ld.w	$a0, $fp, -84
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -84
	b	.LBB51_1
.LBB51_8:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB51_9
.LBB51_9:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end51:
	.size	bsearch_r, .Lfunc_end51-bsearch_r
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	5
	.type	div,@function
div:                                    # @div
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -28
	st.w	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_div)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_div)
	lu32i.d	$t8, %pc64_lo20(.L__profc_div)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_div)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -32
	div.d	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -32
	mod.d	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	ld.wu	$a0, $fp, -20
	slli.d	$a0, $a0, 32
	ld.wu	$a1, $fp, -24
	or	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end52:
	.size	div, .Lfunc_end52-div
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	5
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_imaxabs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_imaxabs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_imaxabs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_imaxabs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB53_2
	b	.LBB53_1
.LBB53_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_imaxabs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_imaxabs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_imaxabs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_imaxabs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB53_3
.LBB53_2:
	ld.d	$a1, $fp, -24
	move	$a0, $zero
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB53_3
.LBB53_3:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end53:
	.size	imaxabs, .Lfunc_end53-imaxabs
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	5
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -40
	st.d	$a1, $fp, -48
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_imaxdiv)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_imaxdiv)
	lu32i.d	$t8, %pc64_lo20(.L__profc_imaxdiv)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_imaxdiv)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	div.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	mod.d	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end54:
	.size	imaxdiv, .Lfunc_end54-imaxdiv
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	5
	.type	labs,@function
labs:                                   # @labs
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_labs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_labs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_labs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_labs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB55_2
	b	.LBB55_1
.LBB55_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_labs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_labs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_labs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_labs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB55_3
.LBB55_2:
	ld.d	$a1, $fp, -24
	move	$a0, $zero
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB55_3
.LBB55_3:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end55:
	.size	labs, .Lfunc_end55-labs
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	5
	.type	ldiv,@function
ldiv:                                   # @ldiv
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -40
	st.d	$a1, $fp, -48
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldiv)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldiv)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldiv)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldiv)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	div.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	mod.d	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end56:
	.size	ldiv, .Lfunc_end56-ldiv
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	5
	.type	llabs,@function
llabs:                                  # @llabs
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_llabs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_llabs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_llabs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_llabs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB57_2
	b	.LBB57_1
.LBB57_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_llabs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_llabs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_llabs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_llabs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB57_3
.LBB57_2:
	ld.d	$a1, $fp, -24
	move	$a0, $zero
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB57_3
.LBB57_3:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end57:
	.size	llabs, .Lfunc_end57-llabs
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	5
	.type	lldiv,@function
lldiv:                                  # @lldiv
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -40
	st.d	$a1, $fp, -48
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_lldiv)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_lldiv)
	lu32i.d	$t8, %pc64_lo20(.L__profc_lldiv)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_lldiv)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	div.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	mod.d	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end58:
	.size	lldiv, .Lfunc_end58-lldiv
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	5
	.type	wcschr,@function
wcschr:                                 # @wcschr
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcschr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcschr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcschr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcschr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB59_1
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	beqz	$a0, .LBB59_4
	b	.LBB59_2
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcschr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcschr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcschr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcschr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	xor	$a2, $a0, $a1
	sltu	$a2, $zero, $a2
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB59_4
	b	.LBB59_3
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_wcschr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcschr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcschr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcschr)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB59_4
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB59_7
	b	.LBB59_5
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcschr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcschr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcschr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcschr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB59_6
.LBB59_6:                               #   in Loop: Header=BB59_1 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -24
	b	.LBB59_1
.LBB59_7:
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB59_9
	b	.LBB59_8
.LBB59_8:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcschr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcschr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcschr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcschr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB59_10
.LBB59_9:
	move	$a0, $zero
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB59_10
.LBB59_10:
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	5
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcscmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcscmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcscmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcscmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	move	$a2, $zero
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB60_6
	b	.LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_wcscmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcscmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcscmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcscmp)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 32
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	beqz	$a0, .LBB60_6
	b	.LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcscmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcscmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcscmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcscmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	b	.LBB60_4
.LBB60_4:                               #   in Loop: Header=BB60_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcscmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcscmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcscmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcscmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -32
	ld.w	$a0, $a0, 0
	sltu	$a1, $zero, $a0
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	beqz	$a0, .LBB60_6
	b	.LBB60_5
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_wcscmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcscmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcscmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcscmp)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB60_6
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB60_9
	b	.LBB60_7
.LBB60_7:                               #   in Loop: Header=BB60_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcscmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcscmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcscmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcscmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB60_8
.LBB60_8:                               #   in Loop: Header=BB60_1 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -24
	ld.d	$a0, $fp, -32
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -32
	b	.LBB60_1
.LBB60_9:
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB60_11
	b	.LBB60_10
.LBB60_10:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcscmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcscmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcscmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcscmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	addi.w	$a0, $zero, -1
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB60_12
.LBB60_11:
	ld.d	$a0, $fp, -24
	ld.w	$a1, $a0, 0
	ld.d	$a0, $fp, -32
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB60_12
.LBB60_12:
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end60:
	.size	wcscmp, .Lfunc_end60-wcscmp
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	5
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcscpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcscpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcscpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcscpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -40
	b	.LBB61_1
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -32
	addi.d	$a1, $a0, 4
	st.d	$a1, $fp, -32
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -24
	addi.d	$a2, $a1, 4
	st.d	$a2, $fp, -24
	st.w	$a0, $a1, 0
	beqz	$a0, .LBB61_3
	b	.LBB61_2
.LBB61_2:                               #   in Loop: Header=BB61_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcscpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcscpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcscpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcscpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB61_1
.LBB61_3:
	ld.d	$a0, $fp, -40
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end61:
	.size	wcscpy, .Lfunc_end61-wcscpy
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	5
	.type	wcslen,@function
wcslen:                                 # @wcslen
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcslen)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcslen)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcslen)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcslen)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB62_4
	b	.LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcslen)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcslen)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcslen)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcslen)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -24
	b	.LBB62_1
.LBB62_4:
	ld.d	$a0, $fp, -24
	ld.d	$a1, $fp, -32
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end62:
	.size	wcslen, .Lfunc_end62-wcslen
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	5
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcsncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcsncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcsncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcsncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB63_8
	b	.LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	move	$a2, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcsncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcsncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcsncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcsncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB63_8
	b	.LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcsncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcsncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcsncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcsncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 56
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 56
	b	.LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_wcsncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcsncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcsncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcsncmp)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 32
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB63_8
	b	.LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcsncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcsncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcsncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcsncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	b	.LBB63_6
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcsncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcsncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcsncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcsncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -32
	ld.w	$a0, $a0, 0
	sltu	$a1, $zero, $a0
	st.d	$a1, $fp, -56                   # 8-byte Folded Spill
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB63_8
	b	.LBB63_7
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_wcsncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcsncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcsncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcsncmp)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB63_8
.LBB63_8:                               #   in Loop: Header=BB63_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB63_11
	b	.LBB63_9
.LBB63_9:                               #   in Loop: Header=BB63_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcsncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcsncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcsncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcsncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB63_10
.LBB63_10:                              #   in Loop: Header=BB63_1 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -24
	ld.d	$a0, $fp, -32
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -32
	b	.LBB63_1
.LBB63_11:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB63_16
	b	.LBB63_12
.LBB63_12:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcsncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcsncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcsncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcsncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 64
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB63_14
	b	.LBB63_13
.LBB63_13:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wcsncmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wcsncmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wcsncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wcsncmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 72
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 72
	addi.w	$a0, $zero, -1
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB63_15
.LBB63_14:
	ld.d	$a0, $fp, -24
	ld.w	$a1, $a0, 0
	ld.d	$a0, $fp, -32
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB63_15
.LBB63_15:
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB63_17
.LBB63_16:
	move	$a0, $zero
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB63_17
.LBB63_17:
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end63:
	.size	wcsncmp, .Lfunc_end63-wcsncmp
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	5
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r7 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB64_1
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB64_4
	b	.LBB64_2
.LBB64_2:                               #   in Loop: Header=BB64_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	xor	$a2, $a0, $a1
	sltu	$a2, $zero, $a2
	st.d	$a2, $fp, -56                   # 8-byte Folded Spill
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB64_4
	b	.LBB64_3
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_wmemchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemchr)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB64_4
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB64_7
	b	.LBB64_5
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB64_6
.LBB64_6:                               #   in Loop: Header=BB64_1 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -24
	b	.LBB64_1
.LBB64_7:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB64_9
	b	.LBB64_8
.LBB64_8:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB64_10
.LBB64_9:
	move	$a0, $zero
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB64_10
.LBB64_10:
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end64:
	.size	wmemchr, .Lfunc_end64-wmemchr
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	5
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB65_1
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB65_4
	b	.LBB65_2
.LBB65_2:                               #   in Loop: Header=BB65_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	st.d	$a2, $fp, -56                   # 8-byte Folded Spill
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB65_4
	b	.LBB65_3
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_wmemcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemcmp)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB65_4
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB65_7
	b	.LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB65_6
.LBB65_6:                               #   in Loop: Header=BB65_1 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -24
	ld.d	$a0, $fp, -32
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -32
	b	.LBB65_1
.LBB65_7:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB65_12
	b	.LBB65_8
.LBB65_8:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB65_10
	b	.LBB65_9
.LBB65_9:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	addi.w	$a0, $zero, -1
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB65_11
.LBB65_10:
	ld.d	$a0, $fp, -24
	ld.w	$a1, $a0, 0
	ld.d	$a0, $fp, -32
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB65_11
.LBB65_11:
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB65_13
.LBB65_12:
	move	$a0, $zero
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB65_13
.LBB65_13:
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end65:
	.size	wmemcmp, .Lfunc_end65-wmemcmp
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	5
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemcpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemcpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemcpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemcpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	b	.LBB66_1
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, -40
	beqz	$a0, .LBB66_3
	b	.LBB66_2
.LBB66_2:                               #   in Loop: Header=BB66_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemcpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemcpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemcpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemcpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -32
	addi.d	$a1, $a0, 4
	st.d	$a1, $fp, -32
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -24
	addi.d	$a2, $a1, 4
	st.d	$a2, $fp, -24
	st.w	$a0, $a1, 0
	b	.LBB66_1
.LBB66_3:
	ld.d	$a0, $fp, -48
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end66:
	.size	wmemcpy, .Lfunc_end66-wmemcpy
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	5
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	st.d	$a2, $fp, -48
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemmove)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemmove)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemmove)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemmove)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	bne	$a0, $a1, .LBB67_2
	b	.LBB67_1
.LBB67_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemmove)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemmove)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemmove)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemmove)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB67_12
.LBB67_2:
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	sub.d	$a0, $a0, $a1
	ld.d	$a1, $fp, -48
	slli.d	$a1, $a1, 2
	bgeu	$a0, $a1, .LBB67_7
	b	.LBB67_3
.LBB67_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemmove)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemmove)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemmove)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemmove)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	b	.LBB67_4
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -48
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, -48
	beqz	$a0, .LBB67_6
	b	.LBB67_5
.LBB67_5:                               #   in Loop: Header=BB67_4 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemmove)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemmove)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemmove)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemmove)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	slli.d	$a2, $a1, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a1, $fp, -32
	stx.w	$a0, $a1, $a2
	b	.LBB67_4
.LBB67_6:
	b	.LBB67_11
.LBB67_7:
	b	.LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -48
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, -48
	beqz	$a0, .LBB67_10
	b	.LBB67_9
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemmove)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemmove)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemmove)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemmove)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -40
	addi.d	$a1, $a0, 4
	st.d	$a1, $fp, -40
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	addi.d	$a2, $a1, 4
	st.d	$a2, $fp, -32
	st.w	$a0, $a1, 0
	b	.LBB67_8
.LBB67_10:
	b	.LBB67_11
.LBB67_11:
	ld.d	$a0, $fp, -56
	st.d	$a0, $fp, -24
	b	.LBB67_12
.LBB67_12:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end67:
	.size	wmemmove, .Lfunc_end67-wmemmove
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	5
	.type	wmemset,@function
wmemset:                                # @wmemset
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r7 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemset)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemset)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemset)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemset)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	b	.LBB68_1
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, -40
	beqz	$a0, .LBB68_3
	b	.LBB68_2
.LBB68_2:                               #   in Loop: Header=BB68_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemset)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_wmemset)
	lu32i.d	$t8, %pc64_lo20(.L__profc_wmemset)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_wmemset)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -28
	ld.d	$a1, $fp, -24
	addi.d	$a2, $a1, 4
	st.d	$a2, $fp, -24
	st.w	$a0, $a1, 0
	b	.LBB68_1
.LBB68_3:
	ld.d	$a0, $fp, -48
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end68:
	.size	wmemset, .Lfunc_end68-wmemset
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	5
	.type	bcopy,@function
bcopy:                                  # @bcopy
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bcopy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bcopy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bcopy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bcopy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -56
	bgeu	$a0, $a1, .LBB69_6
	b	.LBB69_1
.LBB69_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bcopy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bcopy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bcopy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bcopy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a1, $fp, -40
	ld.d	$a0, $fp, -48
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	ld.d	$a0, $fp, -56
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -56
	b	.LBB69_2
.LBB69_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB69_5
	b	.LBB69_3
.LBB69_3:                               #   in Loop: Header=BB69_2 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bcopy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bcopy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bcopy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bcopy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -48
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, -48
	ld.b	$a0, $a0, -1
	ld.d	$a1, $fp, -56
	addi.d	$a2, $a1, -1
	st.d	$a2, $fp, -56
	st.b	$a0, $a1, -1
	b	.LBB69_4
.LBB69_4:                               #   in Loop: Header=BB69_2 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	b	.LBB69_2
.LBB69_5:
	b	.LBB69_13
.LBB69_6:
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -56
	beq	$a0, $a1, .LBB69_12
	b	.LBB69_7
.LBB69_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bcopy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bcopy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bcopy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bcopy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	b	.LBB69_8
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB69_11
	b	.LBB69_9
.LBB69_9:                               #   in Loop: Header=BB69_8 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bcopy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bcopy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bcopy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bcopy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -48
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, -48
	ld.b	$a0, $a0, 0
	ld.d	$a1, $fp, -56
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, -56
	st.b	$a0, $a1, 0
	b	.LBB69_10
.LBB69_10:                              #   in Loop: Header=BB69_8 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	b	.LBB69_8
.LBB69_11:
	b	.LBB69_12
.LBB69_12:
	b	.LBB69_13
.LBB69_13:
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end69:
	.size	bcopy, .Lfunc_end69-bcopy
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	5
	.type	rotl64,@function
rotl64:                                 # @rotl64
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_rotl64)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_rotl64)
	lu32i.d	$t8, %pc64_lo20(.L__profc_rotl64)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_rotl64)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	ld.w	$a2, $fp, -28
	ori	$a1, $zero, 64
	sub.d	$a1, $a1, $a2
	rotr.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end70:
	.size	rotl64, .Lfunc_end70-rotl64
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	5
	.type	rotr64,@function
rotr64:                                 # @rotr64
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_rotr64)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_rotr64)
	lu32i.d	$t8, %pc64_lo20(.L__profc_rotr64)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_rotr64)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	rotr.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end71:
	.size	rotr64, .Lfunc_end71-rotr64
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	5
	.type	rotl32,@function
rotl32:                                 # @rotl32
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_rotl32)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_rotl32)
	lu32i.d	$t8, %pc64_lo20(.L__profc_rotl32)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_rotl32)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	ld.w	$a2, $fp, -24
	ori	$a1, $zero, 32
	sub.d	$a1, $a1, $a2
	rotr.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end72:
	.size	rotl32, .Lfunc_end72-rotl32
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	5
	.type	rotr32,@function
rotr32:                                 # @rotr32
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_rotr32)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_rotr32)
	lu32i.d	$t8, %pc64_lo20(.L__profc_rotr32)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_rotr32)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	rotr.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end73:
	.size	rotr32, .Lfunc_end73-rotr32
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	5
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a2, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_rotl_sz)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_rotl_sz)
	lu32i.d	$t8, %pc64_lo20(.L__profc_rotl_sz)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_rotl_sz)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a1, $fp, -24
	ld.w	$a3, $fp, -28
	sll.d	$a0, $a1, $a3
	sub.d	$a2, $a2, $a3
	srl.d	$a1, $a1, $a2
	or	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end74:
	.size	rotl_sz, .Lfunc_end74-rotl_sz
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	5
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a2, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_rotr_sz)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_rotr_sz)
	lu32i.d	$t8, %pc64_lo20(.L__profc_rotr_sz)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_rotr_sz)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a1, $fp, -24
	ld.w	$a3, $fp, -28
	srl.d	$a0, $a1, $a3
	sub.d	$a2, $a2, $a3
	sll.d	$a1, $a1, $a2
	or	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end75:
	.size	rotr_sz, .Lfunc_end75-rotr_sz
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	5
	.type	rotl16,@function
rotl16:                                 # @rotl16
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.h	$a0, $fp, -18
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_rotl16)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_rotl16)
	lu32i.d	$t8, %pc64_lo20(.L__profc_rotl16)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_rotl16)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.hu	$a1, $fp, -18
	ld.wu	$a3, $fp, -24
	sll.w	$a0, $a1, $a3
	ori	$a2, $zero, 16
	sub.d	$a2, $a2, $a3
	srl.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end76:
	.size	rotl16, .Lfunc_end76-rotl16
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	5
	.type	rotr16,@function
rotr16:                                 # @rotr16
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.h	$a0, $fp, -18
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_rotr16)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_rotr16)
	lu32i.d	$t8, %pc64_lo20(.L__profc_rotr16)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_rotr16)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.hu	$a1, $fp, -18
	ld.wu	$a3, $fp, -24
	srl.w	$a0, $a1, $a3
	ori	$a2, $zero, 16
	sub.d	$a2, $a2, $a3
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end77:
	.size	rotr16, .Lfunc_end77-rotr16
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	5
	.type	rotl8,@function
rotl8:                                  # @rotl8
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.b	$a0, $fp, -17
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_rotl8)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_rotl8)
	lu32i.d	$t8, %pc64_lo20(.L__profc_rotl8)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_rotl8)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.bu	$a1, $fp, -17
	ld.wu	$a3, $fp, -24
	sll.w	$a0, $a1, $a3
	ori	$a2, $zero, 8
	sub.d	$a2, $a2, $a3
	srl.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end78:
	.size	rotl8, .Lfunc_end78-rotl8
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	5
	.type	rotr8,@function
rotr8:                                  # @rotr8
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.b	$a0, $fp, -17
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_rotr8)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_rotr8)
	lu32i.d	$t8, %pc64_lo20(.L__profc_rotr8)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_rotr8)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.bu	$a1, $fp, -17
	ld.wu	$a3, $fp, -24
	srl.w	$a0, $a1, $a3
	ori	$a2, $zero, 8
	sub.d	$a2, $a2, $a3
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end79:
	.size	rotr8, .Lfunc_end79-rotr8
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	5
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.h	$a0, $fp, -18
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bswap_16)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bswap_16)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bswap_16)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bswap_16)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 255
	st.h	$a0, $fp, -20
	ld.hu	$a1, $fp, -18
	ld.hu	$a2, $fp, -20
	slli.d	$a0, $a2, 8
	and	$a0, $a1, $a0
	srli.d	$a0, $a0, 8
	and	$a1, $a1, $a2
	slli.d	$a1, $a1, 8
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end80:
	.size	bswap_16, .Lfunc_end80-bswap_16
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	5
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bswap_32)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bswap_32)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bswap_32)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bswap_32)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 255
	st.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -24
	slli.d	$a0, $a2, 24
	and	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 24
	slli.d	$a3, $a2, 16
	and	$a4, $a1, $a3
	lu12i.w	$a5, -16
	lu32i.d	$a5, 0
	and	$a4, $a4, $a5
	srli.d	$a4, $a4, 8
	or	$a0, $a0, $a4
	slli.d	$a4, $a1, 8
	and	$a3, $a3, $a4
	or	$a0, $a0, $a3
	and	$a1, $a1, $a2
	slli.d	$a1, $a1, 24
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end81:
	.size	bswap_32, .Lfunc_end81-bswap_32
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	5
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_bswap_64)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_bswap_64)
	lu32i.d	$t8, %pc64_lo20(.L__profc_bswap_64)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_bswap_64)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 255
	st.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	ld.d	$a2, $fp, -32
	slli.d	$a0, $a2, 56
	and	$a0, $a1, $a0
	srli.d	$a0, $a0, 56
	slli.d	$a3, $a2, 48
	and	$a4, $a1, $a3
	srli.d	$a4, $a4, 40
	or	$a0, $a0, $a4
	slli.d	$a4, $a2, 40
	and	$a5, $a1, $a4
	srli.d	$a5, $a5, 24
	or	$a0, $a0, $a5
	slli.d	$a5, $a2, 32
	and	$a6, $a1, $a5
	srli.d	$a6, $a6, 8
	or	$a0, $a0, $a6
	slli.d	$a6, $a1, 8
	and	$a5, $a5, $a6
	or	$a0, $a0, $a5
	slli.d	$a5, $a1, 24
	and	$a4, $a4, $a5
	or	$a0, $a0, $a4
	slli.d	$a4, $a1, 40
	and	$a3, $a3, $a4
	or	$a0, $a0, $a3
	and	$a1, $a1, $a2
	slli.d	$a1, $a1, 56
	or	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end82:
	.size	bswap_64, .Lfunc_end82-bswap_64
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	5
	.type	ffs,@function
ffs:                                    # @ffs
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_ffs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ffs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ffs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ffs)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -28
	b	.LBB83_1
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -28
	ori	$a0, $zero, 31
	bltu	$a0, $a1, .LBB83_6
	b	.LBB83_2
.LBB83_2:                               #   in Loop: Header=BB83_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ffs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ffs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ffs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ffs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -24
	ld.wu	$a1, $fp, -28
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB83_4
	b	.LBB83_3
.LBB83_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ffs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ffs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ffs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ffs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.w	$a0, $fp, -28
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB83_7
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	b	.LBB83_5
.LBB83_5:                               #   in Loop: Header=BB83_1 Depth=1
	ld.w	$a0, $fp, -28
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB83_1
.LBB83_6:
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB83_7
.LBB83_7:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end83:
	.size	ffs, .Lfunc_end83-ffs
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	5
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_libiberty_ffs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_libiberty_ffs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_libiberty_ffs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_libiberty_ffs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -24
	bnez	$a0, .LBB84_2
	b	.LBB84_1
.LBB84_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_libiberty_ffs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_libiberty_ffs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_libiberty_ffs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_libiberty_ffs)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -20
	b	.LBB84_7
.LBB84_2:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -28
	b	.LBB84_3
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, -24
	andi	$a0, $a0, 1
	bnez	$a0, .LBB84_6
	b	.LBB84_4
.LBB84_4:                               #   in Loop: Header=BB84_3 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_libiberty_ffs)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_libiberty_ffs)
	lu32i.d	$t8, %pc64_lo20(.L__profc_libiberty_ffs)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_libiberty_ffs)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.w	$a0, $fp, -24
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB84_5
.LBB84_5:                               #   in Loop: Header=BB84_3 Depth=1
	ld.w	$a0, $fp, -28
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB84_3
.LBB84_6:
	ld.w	$a0, $fp, -28
	st.w	$a0, $fp, -20
	b	.LBB84_7
.LBB84_7:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end84:
	.size	libiberty_ffs, .Lfunc_end84-libiberty_ffs
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	5
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L__profc_gl_isinff)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_gl_isinff)
	lu32i.d	$t8, %pc64_lo20(.L__profc_gl_isinff)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_gl_isinff)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	lu12i.w	$a1, -2049
	ori	$a1, $a1, 4095
	pcalau12i	$ra, %got_pc_hi20(__ltsf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltsf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltsf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltsf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, -40                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB85_3
	b	.LBB85_1
.LBB85_1:
	move	$a0, $zero
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L__profc_gl_isinff)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_gl_isinff)
	lu32i.d	$t8, %pc64_lo20(.L__profc_gl_isinff)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_gl_isinff)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -20
	lu12i.w	$a1, 522239
	ori	$a1, $a1, 4095
	pcalau12i	$ra, %got_pc_hi20(__gtsf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gtsf2)
	lu32i.d	$t8, %got64_pc_lo20(__gtsf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gtsf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	slt	$a2, $a0, $a1
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB85_3
	b	.LBB85_2
.LBB85_2:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_gl_isinff)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_gl_isinff)
	lu32i.d	$t8, %pc64_lo20(.L__profc_gl_isinff)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_gl_isinff)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB85_3
.LBB85_3:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end85:
	.size	gl_isinff, .Lfunc_end85-gl_isinff
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	5
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r5 killed $r4
	st.d	$a0, $fp, -24
	move	$a0, $zero
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L__profc_gl_isinfd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_gl_isinfd)
	lu32i.d	$t8, %pc64_lo20(.L__profc_gl_isinfd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_gl_isinfd)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, -2
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, -40                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB86_3
	b	.LBB86_1
.LBB86_1:
	move	$a0, $zero
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L__profc_gl_isinfd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_gl_isinfd)
	lu32i.d	$t8, %pc64_lo20(.L__profc_gl_isinfd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_gl_isinfd)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -24
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 2046
	pcalau12i	$ra, %got_pc_hi20(__gtdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gtdf2)
	lu32i.d	$t8, %got64_pc_lo20(__gtdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gtdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	slt	$a2, $a0, $a1
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB86_3
	b	.LBB86_2
.LBB86_2:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_gl_isinfd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_gl_isinfd)
	lu32i.d	$t8, %pc64_lo20(.L__profc_gl_isinfd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_gl_isinfd)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB86_3
.LBB86_3:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end86:
	.size	gl_isinfd, .Lfunc_end86-gl_isinfd
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	5
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	move	$a0, $zero
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L__profc_gl_isinfl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_gl_isinfl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_gl_isinfl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_gl_isinfl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	addi.w	$a2, $zero, -1
	move	$a3, $a2
	lu32i.d	$a3, -65537
	pcalau12i	$ra, %got_pc_hi20(__lttf2)
	addi.d	$t8, $zero, %got_pc_lo12(__lttf2)
	lu32i.d	$t8, %got64_pc_lo20(__lttf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__lttf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, -48                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB87_3
	b	.LBB87_1
.LBB87_1:
	move	$a0, $zero
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L__profc_gl_isinfl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_gl_isinfl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_gl_isinfl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_gl_isinfl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	addi.w	$a2, $zero, -1
	move	$a3, $a2
	lu32i.d	$a3, -65537
	lu52i.d	$a3, $a3, 2047
	pcalau12i	$ra, %got_pc_hi20(__gttf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gttf2)
	lu32i.d	$t8, %got64_pc_lo20(__gttf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gttf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	slt	$a2, $a0, $a1
	st.d	$a2, $fp, -56                   # 8-byte Folded Spill
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB87_3
	b	.LBB87_2
.LBB87_2:
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_gl_isinfl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_gl_isinfl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_gl_isinfl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_gl_isinfl)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB87_3
.LBB87_3:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end87:
	.size	gl_isinfl, .Lfunc_end87-gl_isinfl
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	5
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc__Qp_itoq)
	addi.d	$t8, $zero, %pc_lo12(.L__profc__Qp_itoq)
	lu32i.d	$t8, %pc64_lo20(.L__profc__Qp_itoq)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc__Qp_itoq)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -28
	pcalau12i	$ra, %got_pc_hi20(__floatsidf)
	addi.d	$t8, $zero, %got_pc_lo12(__floatsidf)
	lu32i.d	$t8, %got64_pc_lo20(__floatsidf)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__floatsidf)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	pcalau12i	$ra, %got_pc_hi20(__extenddftf2)
	addi.d	$t8, $zero, %got_pc_lo12(__extenddftf2)
	lu32i.d	$t8, %got64_pc_lo20(__extenddftf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__extenddftf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a2, $a1
	ld.d	$a1, $fp, -24
	st.d	$a2, $a1, 8
	st.d	$a0, $a1, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end88:
	.size	_Qp_itoq, .Lfunc_end88-_Qp_itoq
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	5
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a0, $fp, -20
	bstrpick.d	$a1, $a0, 30, 0
	lu12i.w	$a0, 522240
	blt	$a0, $a1, .LBB89_10
	b	.LBB89_1
.LBB89_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.w	$a1, $fp, -20
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	move	$a0, $a1
	pcalau12i	$ra, %got_pc_hi20(__addsf3)
	addi.d	$t8, $zero, %got_pc_lo12(__addsf3)
	lu32i.d	$t8, %got64_pc_lo20(__addsf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__addsf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, -40                   # 8-byte Folded Reload
	pcalau12i	$ra, %got_pc_hi20(__eqsf2)
	addi.d	$t8, $zero, %got_pc_lo12(__eqsf2)
	lu32i.d	$t8, %got64_pc_lo20(__eqsf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__eqsf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB89_10
	b	.LBB89_2
.LBB89_2:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	b	.LBB89_3
.LBB89_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.wu	$a0, $fp, -24
	addi.w	$a2, $a0, 0
	slti	$a2, $a2, 0
	srli.d	$a3, $a0, 31
	ld.d	$a0, $a1, 32
	add.d	$a0, $a0, $a3
	st.d	$a0, $a1, 32
	lu12i.w	$a0, 262144
	masknez	$a1, $a0, $a2
	lu12i.w	$a0, 258048
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	b	.LBB89_4
.LBB89_4:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.wu	$a0, $fp, -24
	srli.d	$a1, $a0, 31
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB89_6
	b	.LBB89_5
.LBB89_5:                               #   in Loop: Header=BB89_4 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -20
	pcalau12i	$ra, %got_pc_hi20(__mulsf3)
	addi.d	$t8, $zero, %got_pc_lo12(__mulsf3)
	lu32i.d	$t8, %got64_pc_lo20(__mulsf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__mulsf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, -20
	b	.LBB89_6
.LBB89_6:                               #   in Loop: Header=BB89_4 Depth=1
	ld.wu	$a0, $fp, -24
	srli.d	$a1, $a0, 31
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -24
	bnez	$a0, .LBB89_8
	b	.LBB89_7
.LBB89_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpf)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 56
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 56
	b	.LBB89_9
.LBB89_8:                               #   in Loop: Header=BB89_4 Depth=1
	ld.w	$a1, $fp, -28
	move	$a0, $a1
	pcalau12i	$ra, %got_pc_hi20(__mulsf3)
	addi.d	$t8, $zero, %got_pc_lo12(__mulsf3)
	lu32i.d	$t8, %got64_pc_lo20(__mulsf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__mulsf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, -28
	b	.LBB89_4
.LBB89_9:
	b	.LBB89_10
.LBB89_10:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end89:
	.size	ldexpf, .Lfunc_end89-ldexpf
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	5
	.type	ldexp,@function
ldexp:                                  # @ldexp
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	bstrpick.d	$a1, $a0, 62, 0
	lu52i.d	$a0, $zero, 2047
	blt	$a0, $a1, .LBB90_10
	b	.LBB90_1
.LBB90_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a1, $fp, -24
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	move	$a0, $a1
	pcalau12i	$ra, %got_pc_hi20(__adddf3)
	addi.d	$t8, $zero, %got_pc_lo12(__adddf3)
	lu32i.d	$t8, %got64_pc_lo20(__adddf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__adddf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, -48                   # 8-byte Folded Reload
	pcalau12i	$ra, %got_pc_hi20(__eqdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__eqdf2)
	lu32i.d	$t8, %got64_pc_lo20(__eqdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__eqdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB90_10
	b	.LBB90_2
.LBB90_2:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	b	.LBB90_3
.LBB90_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.wu	$a0, $fp, -28
	addi.w	$a2, $a0, 0
	slti	$a2, $a2, 0
	srli.d	$a3, $a0, 31
	ld.d	$a0, $a1, 32
	add.d	$a0, $a0, $a3
	st.d	$a0, $a1, 32
	lu52i.d	$a0, $zero, 1024
	masknez	$a1, $a0, $a2
	lu52i.d	$a0, $zero, 1022
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $fp, -40
	b	.LBB90_4
.LBB90_4:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.wu	$a0, $fp, -28
	srli.d	$a1, $a0, 31
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB90_6
	b	.LBB90_5
.LBB90_5:                               #   in Loop: Header=BB90_4 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.d	$a1, $fp, -40
	ld.d	$a0, $fp, -24
	pcalau12i	$ra, %got_pc_hi20(__muldf3)
	addi.d	$t8, $zero, %got_pc_lo12(__muldf3)
	lu32i.d	$t8, %got64_pc_lo20(__muldf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__muldf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -24
	b	.LBB90_6
.LBB90_6:                               #   in Loop: Header=BB90_4 Depth=1
	ld.wu	$a0, $fp, -28
	srli.d	$a1, $a0, 31
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	bnez	$a0, .LBB90_8
	b	.LBB90_7
.LBB90_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 56
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 56
	b	.LBB90_9
.LBB90_8:                               #   in Loop: Header=BB90_4 Depth=1
	ld.d	$a1, $fp, -40
	move	$a0, $a1
	pcalau12i	$ra, %got_pc_hi20(__muldf3)
	addi.d	$t8, $zero, %got_pc_lo12(__muldf3)
	lu32i.d	$t8, %got64_pc_lo20(__muldf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__muldf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -40
	b	.LBB90_4
.LBB90_9:
	b	.LBB90_10
.LBB90_10:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end90:
	.size	ldexp, .Lfunc_end90-ldexp
                                        # -- End function
	.globl	ldexpl                          # -- Begin function ldexpl
	.p2align	5
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r6
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	st.w	$a2, $fp, -36
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	bstrpick.d	$a2, $a1, 62, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a3, $a1, 2047
	slt	$a1, $a3, $a2
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltu	$a0, $zero, $a0
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB91_10
	b	.LBB91_1
.LBB91_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a2, $fp, -32
	st.d	$a2, $fp, -80                   # 8-byte Folded Spill
	ld.d	$a3, $fp, -24
	st.d	$a3, $fp, -72                   # 8-byte Folded Spill
	move	$a0, $a2
	move	$a1, $a3
	pcalau12i	$ra, %got_pc_hi20(__addtf3)
	addi.d	$t8, $zero, %got_pc_lo12(__addtf3)
	lu32i.d	$t8, %got64_pc_lo20(__addtf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__addtf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, -80                   # 8-byte Folded Reload
	ld.d	$a3, $fp, -72                   # 8-byte Folded Reload
	pcalau12i	$ra, %got_pc_hi20(__eqtf2)
	addi.d	$t8, $zero, %got_pc_lo12(__eqtf2)
	lu32i.d	$t8, %got64_pc_lo20(__eqtf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__eqtf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB91_10
	b	.LBB91_2
.LBB91_2:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	b	.LBB91_3
.LBB91_3:
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_ldexpl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpl)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 8
	ld.wu	$a0, $fp, -36
	addi.w	$a3, $a0, 0
	slti	$a3, $a3, 0
	srli.d	$a4, $a0, 31
	ld.d	$a0, $a2, 32
	add.d	$a0, $a0, $a4
	st.d	$a0, $a2, 32
	lu52i.d	$a0, $zero, 1024
	masknez	$a2, $a0, $a3
	ori	$a0, $zero, 0
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, 1023
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	st.d	$a1, $fp, -64
	st.d	$a0, $fp, -56
	b	.LBB91_4
.LBB91_4:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.wu	$a0, $fp, -36
	srli.d	$a1, $a0, 31
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB91_6
	b	.LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_4 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.d	$a2, $fp, -64
	ld.d	$a3, $fp, -56
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	pcalau12i	$ra, %got_pc_hi20(__multf3)
	addi.d	$t8, $zero, %got_pc_lo12(__multf3)
	lu32i.d	$t8, %got64_pc_lo20(__multf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__multf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB91_6
.LBB91_6:                               #   in Loop: Header=BB91_4 Depth=1
	ld.wu	$a0, $fp, -36
	srli.d	$a1, $a0, 31
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -36
	bnez	$a0, .LBB91_8
	b	.LBB91_7
.LBB91_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_ldexpl)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_ldexpl)
	lu32i.d	$t8, %pc64_lo20(.L__profc_ldexpl)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_ldexpl)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 56
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 56
	b	.LBB91_9
.LBB91_8:                               #   in Loop: Header=BB91_4 Depth=1
	ld.d	$a2, $fp, -64
	ld.d	$a3, $fp, -56
	move	$a0, $a2
	move	$a1, $a3
	pcalau12i	$ra, %got_pc_hi20(__multf3)
	addi.d	$t8, $zero, %got_pc_lo12(__multf3)
	lu32i.d	$t8, %got64_pc_lo20(__multf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__multf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a1, $fp, -56
	st.d	$a0, $fp, -64
	b	.LBB91_4
.LBB91_9:
	b	.LBB91_10
.LBB91_10:
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end91:
	.size	ldexpl, .Lfunc_end91-ldexpl
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	5
	.type	memxor,@function
memxor:                                 # @memxor
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memxor)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memxor)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memxor)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memxor)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -56
	b	.LBB92_1
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB92_4
	b	.LBB92_2
.LBB92_2:                               #   in Loop: Header=BB92_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memxor)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memxor)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memxor)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memxor)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -48
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, -48
	ld.b	$a2, $a0, 0
	ld.d	$a1, $fp, -56
	addi.d	$a0, $a1, 1
	st.d	$a0, $fp, -56
	ld.b	$a0, $a1, 0
	xor	$a0, $a0, $a2
	st.b	$a0, $a1, 0
	b	.LBB92_3
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	b	.LBB92_1
.LBB92_4:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end92:
	.size	memxor, .Lfunc_end92-memxor
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	5
	.type	strncat,@function
strncat:                                # @strncat
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strncat)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncat)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncat)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncat)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	pcalau12i	$ra, %pc_hi20(strlen)
	addi.d	$t8, $zero, %pc_lo12(strlen)
	lu32i.d	$t8, %pc64_lo20(strlen)
	lu52i.d	$t8, $t8, %pc64_hi12(strlen)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -48
	b	.LBB93_1
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -64                   # 8-byte Folded Spill
	beqz	$a0, .LBB93_4
	b	.LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strncat)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncat)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncat)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncat)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -32
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -48
	st.b	$a0, $a1, 0
	sltu	$a1, $zero, $a0
	st.d	$a1, $fp, -72                   # 8-byte Folded Spill
	st.d	$a1, $fp, -64                   # 8-byte Folded Spill
	beqz	$a0, .LBB93_4
	b	.LBB93_3
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_strncat)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncat)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncat)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncat)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB93_4
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB93_7
	b	.LBB93_5
.LBB93_5:                               #   in Loop: Header=BB93_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strncat)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncat)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncat)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncat)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB93_6
.LBB93_6:                               #   in Loop: Header=BB93_1 Depth=1
	ld.d	$a0, $fp, -32
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -32
	ld.d	$a0, $fp, -48
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	b	.LBB93_1
.LBB93_7:
	ld.d	$a0, $fp, -40
	bnez	$a0, .LBB93_9
	b	.LBB93_8
.LBB93_8:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_strncat)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strncat)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strncat)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strncat)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 32
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 32
	ld.d	$a1, $fp, -48
	st.b	$a0, $a1, 0
	b	.LBB93_9
.LBB93_9:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end93:
	.size	strncat, .Lfunc_end93-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	5
	.type	strnlen,@function
strnlen:                                # @strnlen
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_strnlen)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strnlen)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strnlen)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strnlen)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.d	$a0, $fp, -40
	b	.LBB94_1
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -32
	move	$a2, $zero
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB94_4
	b	.LBB94_2
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strnlen)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strnlen)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strnlen)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strnlen)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -24
	ld.d	$a1, $fp, -40
	ldx.b	$a0, $a0, $a1
	sltu	$a1, $zero, $a0
	st.d	$a1, $fp, -56                   # 8-byte Folded Spill
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB94_4
	b	.LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_strnlen)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strnlen)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strnlen)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strnlen)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB94_7
	b	.LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strnlen)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strnlen)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strnlen)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strnlen)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB94_6
.LBB94_6:                               #   in Loop: Header=BB94_1 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -40
	b	.LBB94_1
.LBB94_7:
	ld.d	$a0, $fp, -40
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end94:
	.size	strnlen, .Lfunc_end94-strnlen
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	5
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strpbrk)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strpbrk)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strpbrk)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strpbrk)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	b	.LBB95_1
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	ld.d	$a0, $fp, -32
	ld.b	$a0, $a0, 0
	beqz	$a0, .LBB95_8
	b	.LBB95_2
.LBB95_2:                               #   in Loop: Header=BB95_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strpbrk)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strpbrk)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strpbrk)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strpbrk)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -48
	b	.LBB95_3
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, -48
	ld.b	$a0, $a0, 0
	beqz	$a0, .LBB95_7
	b	.LBB95_4
.LBB95_4:                               #   in Loop: Header=BB95_3 Depth=2
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strpbrk)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strpbrk)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strpbrk)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strpbrk)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -48
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, -48
	ld.b	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.b	$a1, $a1, 0
	bne	$a0, $a1, .LBB95_6
	b	.LBB95_5
.LBB95_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strpbrk)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strpbrk)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strpbrk)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strpbrk)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
	b	.LBB95_3
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
	ld.d	$a0, $fp, -32
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -32
	b	.LBB95_1
.LBB95_8:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB95_9
.LBB95_9:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end95:
	.size	strpbrk, .Lfunc_end95-strpbrk
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	5
	.type	strrchr,@function
strrchr:                                # @strrchr
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_strrchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strrchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strrchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strrchr)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.d	$a0, $fp, -40
	b	.LBB96_2
.LBB96_1:                               #   in Loop: Header=BB96_2 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strrchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strrchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strrchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strrchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	b	.LBB96_2
.LBB96_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	bne	$a0, $a1, .LBB96_4
	b	.LBB96_3
.LBB96_3:                               #   in Loop: Header=BB96_2 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strrchr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strrchr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strrchr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strrchr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -40
	b	.LBB96_4
.LBB96_4:                               #   in Loop: Header=BB96_2 Depth=1
	b	.LBB96_5
.LBB96_5:                               #   in Loop: Header=BB96_2 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, -24
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB96_1
	b	.LBB96_6
.LBB96_6:
	ld.d	$a0, $fp, -40
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end96:
	.size	strrchr, .Lfunc_end96-strrchr
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	5
	.type	strstr,@function
strstr:                                 # @strstr
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strstr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strstr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strstr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strstr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -40
	pcalau12i	$ra, %pc_hi20(strlen)
	addi.d	$t8, $zero, %pc_lo12(strlen)
	lu32i.d	$t8, %pc64_lo20(strlen)
	lu52i.d	$t8, $t8, %pc64_hi12(strlen)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -56
	bnez	$a0, .LBB97_2
	b	.LBB97_1
.LBB97_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strstr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strstr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strstr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strstr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB97_9
.LBB97_2:
	b	.LBB97_3
.LBB97_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	ld.b	$a1, $a1, 0
	pcalau12i	$ra, %pc_hi20(strchr)
	addi.d	$t8, $zero, %pc_lo12(strchr)
	lu32i.d	$t8, %pc64_lo20(strchr)
	lu52i.d	$t8, $t8, %pc64_hi12(strchr)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -48
	beqz	$a0, .LBB97_8
	b	.LBB97_4
.LBB97_4:                               #   in Loop: Header=BB97_3 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strstr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strstr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strstr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strstr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	ld.d	$a2, $fp, -56
	pcalau12i	$ra, %pc_hi20(strncmp)
	addi.d	$t8, $zero, %pc_lo12(strncmp)
	lu32i.d	$t8, %pc64_lo20(strncmp)
	lu52i.d	$t8, $t8, %pc64_hi12(strncmp)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB97_6
	b	.LBB97_5
.LBB97_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_strstr)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_strstr)
	lu32i.d	$t8, %pc64_lo20(.L__profc_strstr)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_strstr)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a0, $fp, -48
	st.d	$a0, $fp, -24
	b	.LBB97_9
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	b	.LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_3 Depth=1
	ld.d	$a0, $fp, -48
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -48
	b	.LBB97_3
.LBB97_8:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB97_9
.LBB97_9:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end97:
	.size	strstr, .Lfunc_end97-strstr
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	5
	.type	copysign,@function
copysign:                               # @copysign
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_copysign)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_copysign)
	lu32i.d	$t8, %pc64_lo20(.L__profc_copysign)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_copysign)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 0
	ld.d	$a0, $fp, -32
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB98_3
	b	.LBB98_1
.LBB98_1:
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_copysign)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_copysign)
	lu32i.d	$t8, %pc64_lo20(.L__profc_copysign)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_copysign)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 24
	ld.d	$a0, $fp, -40
	pcalau12i	$ra, %got_pc_hi20(__gtdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gtdf2)
	lu32i.d	$t8, %got64_pc_lo20(__gtdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gtdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB98_3
	b	.LBB98_2
.LBB98_2:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_copysign)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_copysign)
	lu32i.d	$t8, %pc64_lo20(.L__profc_copysign)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_copysign)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	b	.LBB98_6
.LBB98_3:
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_copysign)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_copysign)
	lu32i.d	$t8, %pc64_lo20(.L__profc_copysign)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_copysign)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 16
	ld.d	$a0, $fp, -32
	pcalau12i	$ra, %got_pc_hi20(__gtdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gtdf2)
	lu32i.d	$t8, %got64_pc_lo20(__gtdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gtdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB98_7
	b	.LBB98_4
.LBB98_4:
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_copysign)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_copysign)
	lu32i.d	$t8, %pc64_lo20(.L__profc_copysign)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_copysign)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 40
	ld.d	$a0, $fp, -40
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB98_7
	b	.LBB98_5
.LBB98_5:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_copysign)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_copysign)
	lu32i.d	$t8, %pc64_lo20(.L__profc_copysign)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_copysign)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	b	.LBB98_6
.LBB98_6:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_copysign)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_copysign)
	lu32i.d	$t8, %pc64_lo20(.L__profc_copysign)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_copysign)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -32
	lu52i.d	$a1, $zero, -2048
	xor	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	b	.LBB98_8
.LBB98_7:
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB98_8
.LBB98_8:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end98:
	.size	copysign, .Lfunc_end98-copysign
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	5
	.type	memmem,@function
memmem:                                 # @memmem
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	st.d	$a2, $fp, -48
	st.d	$a3, $fp, -56
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memmem)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmem)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmem)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmem)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	add.d	$a0, $a0, $a1
	ld.d	$a1, $fp, -56
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -72
	ld.d	$a0, $fp, -56
	bnez	$a0, .LBB99_2
	b	.LBB99_1
.LBB99_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memmem)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmem)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmem)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmem)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB99_13
.LBB99_2:
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -56
	bgeu	$a0, $a1, .LBB99_4
	b	.LBB99_3
.LBB99_3:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_memmem)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmem)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmem)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmem)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	st.d	$a0, $fp, -24
	b	.LBB99_13
.LBB99_4:
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -64
	b	.LBB99_5
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, -64
	ld.d	$a0, $fp, -72
	bltu	$a0, $a1, .LBB99_12
	b	.LBB99_6
.LBB99_6:                               #   in Loop: Header=BB99_5 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memmem)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmem)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmem)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmem)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.d	$a0, $fp, -64
	ld.b	$a0, $a0, 0
	ld.d	$a1, $fp, -48
	ld.b	$a1, $a1, 0
	bne	$a0, $a1, .LBB99_10
	b	.LBB99_7
.LBB99_7:                               #   in Loop: Header=BB99_5 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memmem)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmem)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmem)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmem)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.d	$a0, $fp, -64
	addi.d	$a0, $a0, 1
	ld.d	$a1, $fp, -48
	addi.d	$a1, $a1, 1
	ld.d	$a2, $fp, -56
	addi.d	$a2, $a2, -1
	pcalau12i	$ra, %pc_hi20(memcmp)
	addi.d	$t8, $zero, %pc_lo12(memcmp)
	lu32i.d	$t8, %pc64_lo20(memcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(memcmp)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB99_10
	b	.LBB99_8
.LBB99_8:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memmem)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmem)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmem)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmem)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	b	.LBB99_9
.LBB99_9:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_memmem)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_memmem)
	lu32i.d	$t8, %pc64_lo20(.L__profc_memmem)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_memmem)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -64
	st.d	$a0, $fp, -24
	b	.LBB99_13
.LBB99_10:                              #   in Loop: Header=BB99_5 Depth=1
	b	.LBB99_11
.LBB99_11:                              #   in Loop: Header=BB99_5 Depth=1
	ld.d	$a0, $fp, -64
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -64
	b	.LBB99_5
.LBB99_12:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB99_13
.LBB99_13:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end99:
	.size	memmem, .Lfunc_end99-memmem
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	5
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_mempcpy)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_mempcpy)
	lu32i.d	$t8, %pc64_lo20(.L__profc_mempcpy)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_mempcpy)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	ld.d	$a1, $fp, -32
	ld.d	$a2, $fp, -40
	pcalau12i	$ra, %got_pc_hi20(memcpy)
	addi.d	$t8, $zero, %got_pc_lo12(memcpy)
	lu32i.d	$t8, %got64_pc_lo20(memcpy)
	lu52i.d	$t8, $t8, %got64_pc_hi12(memcpy)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
                                        # kill: def $r5 killed $r4
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	ld.d	$a1, $fp, -40
	add.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end100:
	.size	mempcpy, .Lfunc_end100-mempcpy
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	5
	.type	frexp,@function
frexp:                                  # @frexp
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r4
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_frexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_frexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_frexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_frexp)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 0
	st.w	$a1, $fp, -40
	st.w	$a1, $fp, -36
	ld.d	$a0, $fp, -24
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB101_2
	b	.LBB101_1
.LBB101_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_frexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_frexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_frexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_frexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -24
	lu52i.d	$a1, $zero, -2048
	xor	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -36
	b	.LBB101_2
.LBB101_2:
	ld.d	$a0, $fp, -24
	lu52i.d	$a1, $zero, 1023
	pcalau12i	$ra, %got_pc_hi20(__gedf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gedf2)
	lu32i.d	$t8, %got64_pc_lo20(__gedf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gedf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $zero
	blt	$a0, $a1, .LBB101_7
	b	.LBB101_3
.LBB101_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_frexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_frexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_frexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_frexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	b	.LBB101_4
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	lu52i.d	$a1, $zero, 1023
	pcalau12i	$ra, %got_pc_hi20(__gedf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gedf2)
	lu32i.d	$t8, %got64_pc_lo20(__gedf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gedf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $zero
	blt	$a0, $a1, .LBB101_6
	b	.LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_4 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_frexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_frexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_frexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_frexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.w	$a0, $fp, -40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -40
	ld.d	$a0, $fp, -24
	lu52i.d	$a1, $zero, 1022
	pcalau12i	$ra, %got_pc_hi20(__muldf3)
	addi.d	$t8, $zero, %got_pc_lo12(__muldf3)
	lu32i.d	$t8, %got64_pc_lo20(__muldf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__muldf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -24
	b	.LBB101_4
.LBB101_6:
	b	.LBB101_15
.LBB101_7:
	ld.d	$a0, $fp, -24
	lu52i.d	$a1, $zero, 1022
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB101_14
	b	.LBB101_8
.LBB101_8:
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_frexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_frexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_frexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_frexp)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 40
	ld.d	$a0, $fp, -24
	pcalau12i	$ra, %got_pc_hi20(__eqdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__eqdf2)
	lu32i.d	$t8, %got64_pc_lo20(__eqdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__eqdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB101_14
	b	.LBB101_9
.LBB101_9:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_frexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_frexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_frexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_frexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	b	.LBB101_10
.LBB101_10:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_frexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_frexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_frexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_frexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	b	.LBB101_11
.LBB101_11:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	lu52i.d	$a1, $zero, 1022
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB101_13
	b	.LBB101_12
.LBB101_12:                             #   in Loop: Header=BB101_11 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_frexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_frexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_frexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_frexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 56
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 56
	ld.w	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, -40
	ld.d	$a1, $fp, -24
	move	$a0, $a1
	pcalau12i	$ra, %got_pc_hi20(__adddf3)
	addi.d	$t8, $zero, %got_pc_lo12(__adddf3)
	lu32i.d	$t8, %got64_pc_lo20(__adddf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__adddf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -24
	b	.LBB101_11
.LBB101_13:
	b	.LBB101_14
.LBB101_14:
	b	.LBB101_15
.LBB101_15:
	ld.w	$a0, $fp, -40
	ld.d	$a1, $fp, -32
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, -36
	beqz	$a0, .LBB101_17
	b	.LBB101_16
.LBB101_16:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_frexp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_frexp)
	lu32i.d	$t8, %pc64_lo20(.L__profc_frexp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_frexp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 64
	ld.d	$a0, $fp, -24
	lu52i.d	$a1, $zero, -2048
	xor	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	b	.LBB101_17
.LBB101_17:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end101:
	.size	frexp, .Lfunc_end101-frexp
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	5
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___muldi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___muldi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___muldi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___muldi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	b	.LBB102_1
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -48
	beqz	$a0, .LBB102_5
	b	.LBB102_2
.LBB102_2:                              #   in Loop: Header=BB102_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___muldi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___muldi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___muldi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___muldi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.bu	$a0, $fp, -48
	andi	$a0, $a0, 1
	beqz	$a0, .LBB102_4
	b	.LBB102_3
.LBB102_3:                              #   in Loop: Header=BB102_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___muldi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___muldi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___muldi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___muldi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a1, $fp, -32
	ld.d	$a0, $fp, -40
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -40
	b	.LBB102_4
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
	ld.d	$a0, $fp, -32
	slli.d	$a0, $a0, 1
	st.d	$a0, $fp, -32
	ld.d	$a0, $fp, -48
	srli.d	$a0, $a0, 1
	st.d	$a0, $fp, -48
	b	.LBB102_1
.LBB102_5:
	ld.d	$a0, $fp, -40
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end102:
	.size	__muldi3, .Lfunc_end102-__muldi3
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	5
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.w	$a0, $fp, -24
	st.w	$a1, $fp, -28
	st.d	$a2, $fp, -40
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc_udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_udivmodsi4)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	ori	$a1, $zero, 1
	st.w	$a1, $fp, -44
	st.w	$a0, $fp, -48
	b	.LBB103_1
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -24
	move	$a2, $zero
	st.d	$a2, $fp, -56                   # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB103_6
	b	.LBB103_2
.LBB103_2:                              #   in Loop: Header=BB103_1 Depth=1
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc_udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_udivmodsi4)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 32
	ld.w	$a0, $fp, -44
	st.d	$a1, $fp, -56                   # 8-byte Folded Spill
	beqz	$a0, .LBB103_6
	b	.LBB103_3
.LBB103_3:                              #   in Loop: Header=BB103_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc_udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	b	.LBB103_4
.LBB103_4:                              #   in Loop: Header=BB103_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc_udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.wu	$a0, $fp, -28
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	sltui	$a1, $a0, 1
	st.d	$a1, $fp, -64                   # 8-byte Folded Spill
	st.d	$a1, $fp, -56                   # 8-byte Folded Spill
	bnez	$a0, .LBB103_6
	b	.LBB103_5
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc_udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc_udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_udivmodsi4)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB103_6
.LBB103_6:                              #   in Loop: Header=BB103_1 Depth=1
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB103_8
	b	.LBB103_7
.LBB103_7:                              #   in Loop: Header=BB103_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc_udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -28
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -44
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -44
	b	.LBB103_1
.LBB103_8:
	b	.LBB103_9
.LBB103_9:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -44
	beqz	$a0, .LBB103_13
	b	.LBB103_10
.LBB103_10:                             #   in Loop: Header=BB103_9 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc_udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bltu	$a0, $a1, .LBB103_12
	b	.LBB103_11
.LBB103_11:                             #   in Loop: Header=BB103_9 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc_udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 56
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 56
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -24
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a1, $fp, -44
	ld.w	$a0, $fp, -48
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -48
	b	.LBB103_12
.LBB103_12:                             #   in Loop: Header=BB103_9 Depth=1
	ld.wu	$a0, $fp, -44
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -44
	ld.wu	$a0, $fp, -28
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB103_9
.LBB103_13:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB103_15
	b	.LBB103_14
.LBB103_14:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc_udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc_udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc_udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc_udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 64
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB103_16
.LBB103_15:
	ld.w	$a0, $fp, -48
	st.w	$a0, $fp, -20
	b	.LBB103_16
.LBB103_16:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end103:
	.size	udivmodsi4, .Lfunc_end103-udivmodsi4
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	5
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.b	$a0, $fp, -21
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___clrsbqi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___clrsbqi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___clrsbqi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___clrsbqi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.b	$a1, $fp, -21
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB104_2
	b	.LBB104_1
.LBB104_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___clrsbqi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___clrsbqi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___clrsbqi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___clrsbqi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.b	$a0, $fp, -21
	nor	$a0, $a0, $zero
	st.b	$a0, $fp, -21
	b	.LBB104_2
.LBB104_2:
	ld.b	$a0, $fp, -21
	bnez	$a0, .LBB104_4
	b	.LBB104_3
.LBB104_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___clrsbqi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___clrsbqi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___clrsbqi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___clrsbqi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ori	$a0, $zero, 7
	st.w	$a0, $fp, -20
	b	.LBB104_5
.LBB104_4:
	ld.b	$a0, $fp, -21
	slli.d	$a0, $a0, 40
	clz.d	$a0, $a0
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, -20
	b	.LBB104_5
.LBB104_5:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end104:
	.size	__clrsbqi2, .Lfunc_end104-__clrsbqi2
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	5
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___clrsbdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___clrsbdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___clrsbdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___clrsbdi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a1, $fp, -32
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB105_2
	b	.LBB105_1
.LBB105_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___clrsbdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___clrsbdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___clrsbdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___clrsbdi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -32
	nor	$a0, $a0, $zero
	st.d	$a0, $fp, -32
	b	.LBB105_2
.LBB105_2:
	ld.d	$a0, $fp, -32
	bnez	$a0, .LBB105_4
	b	.LBB105_3
.LBB105_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___clrsbdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___clrsbdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___clrsbdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___clrsbdi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ori	$a0, $zero, 63
	st.w	$a0, $fp, -20
	b	.LBB105_5
.LBB105_4:
	ld.d	$a0, $fp, -32
	clz.d	$a0, $a0
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -36
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, -20
	b	.LBB105_5
.LBB105_5:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end105:
	.size	__clrsbdi2, .Lfunc_end105-__clrsbdi2
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	5
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___mulsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulsi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -28
	b	.LBB106_1
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB106_5
	b	.LBB106_2
.LBB106_2:                              #   in Loop: Header=BB106_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mulsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulsi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.bu	$a0, $fp, -20
	andi	$a0, $a0, 1
	beqz	$a0, .LBB106_4
	b	.LBB106_3
.LBB106_3:                              #   in Loop: Header=BB106_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mulsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulsi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.w	$a1, $fp, -24
	ld.w	$a0, $fp, -28
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	b	.LBB106_4
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
	ld.wu	$a0, $fp, -20
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -24
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB106_1
.LBB106_5:
	ld.w	$a0, $fp, -28
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end106:
	.size	__mulsi3, .Lfunc_end106-__mulsi3
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	5
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r7 killed $r6
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.w	$a2, $fp, -36
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovd)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovd)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a0, $fp, -36
	srli.d	$a0, $a0, 3
	st.w	$a0, $fp, -44
	ld.wu	$a0, $fp, -36
	bstrpick.d	$a0, $a0, 31, 3
	slli.d	$a0, $a0, 3
	st.w	$a0, $fp, -48
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -64
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -64
	bltu	$a0, $a1, .LBB107_3
	b	.LBB107_1
.LBB107_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovd)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovd)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a1, $fp, -56
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	add.d	$a0, $a0, $a2
	bltu	$a0, $a1, .LBB107_3
	b	.LBB107_2
.LBB107_2:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovd)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovd)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	b	.LBB107_11
.LBB107_3:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___cmovd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovd)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovd)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -40
	b	.LBB107_4
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -44
	bgeu	$a0, $a1, .LBB107_7
	b	.LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_4 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovd)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovd)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -32
	ld.wu	$a1, $fp, -40
	slli.d	$a2, $a1, 3
	ldx.d	$a0, $a0, $a2
	ld.d	$a1, $fp, -24
	stx.d	$a0, $a1, $a2
	b	.LBB107_6
.LBB107_6:                              #   in Loop: Header=BB107_4 Depth=1
	ld.w	$a0, $fp, -40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -40
	b	.LBB107_4
.LBB107_7:
	b	.LBB107_8
.LBB107_8:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -48
	bgeu	$a0, $a1, .LBB107_10
	b	.LBB107_9
.LBB107_9:                              #   in Loop: Header=BB107_8 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovd)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovd)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -48
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	ld.w	$a0, $fp, -48
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -48
	b	.LBB107_8
.LBB107_10:
	b	.LBB107_15
.LBB107_11:
	b	.LBB107_12
.LBB107_12:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -36
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, -36
	beqz	$a0, .LBB107_14
	b	.LBB107_13
.LBB107_13:                             #   in Loop: Header=BB107_12 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovd)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovd)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	b	.LBB107_12
.LBB107_14:
	b	.LBB107_15
.LBB107_15:
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end107:
	.size	__cmovd, .Lfunc_end107-__cmovd
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	5
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r7 killed $r6
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.w	$a2, $fp, -36
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovh)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovh)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovh)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovh)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a0, $fp, -36
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -44
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -64
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -64
	bltu	$a0, $a1, .LBB108_3
	b	.LBB108_1
.LBB108_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovh)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovh)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovh)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovh)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a1, $fp, -56
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	add.d	$a0, $a0, $a2
	bltu	$a0, $a1, .LBB108_3
	b	.LBB108_2
.LBB108_2:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovh)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovh)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovh)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovh)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	b	.LBB108_10
.LBB108_3:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___cmovh)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovh)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovh)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovh)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -40
	b	.LBB108_4
.LBB108_4:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -44
	bgeu	$a0, $a1, .LBB108_7
	b	.LBB108_5
.LBB108_5:                              #   in Loop: Header=BB108_4 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovh)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovh)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovh)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovh)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -32
	ld.wu	$a1, $fp, -40
	slli.d	$a2, $a1, 1
	ldx.h	$a0, $a0, $a2
	ld.d	$a1, $fp, -24
	stx.h	$a0, $a1, $a2
	b	.LBB108_6
.LBB108_6:                              #   in Loop: Header=BB108_4 Depth=1
	ld.w	$a0, $fp, -40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -40
	b	.LBB108_4
.LBB108_7:
	ld.bu	$a0, $fp, -36
	andi	$a0, $a0, 1
	beqz	$a0, .LBB108_9
	b	.LBB108_8
.LBB108_8:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovh)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovh)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovh)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovh)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.d	$a0, $fp, -64
	ld.w	$a1, $fp, -36
	addi.d	$a1, $a1, -1
	bstrpick.d	$a2, $a1, 31, 0
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	b	.LBB108_9
.LBB108_9:
	b	.LBB108_14
.LBB108_10:
	b	.LBB108_11
.LBB108_11:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -36
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, -36
	beqz	$a0, .LBB108_13
	b	.LBB108_12
.LBB108_12:                             #   in Loop: Header=BB108_11 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovh)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovh)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovh)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovh)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	b	.LBB108_11
.LBB108_13:
	b	.LBB108_14
.LBB108_14:
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end108:
	.size	__cmovh, .Lfunc_end108-__cmovh
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	5
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r7 killed $r6
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.w	$a2, $fp, -36
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovw)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovw)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovw)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovw)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a0, $fp, -36
	srli.d	$a0, $a0, 2
	st.w	$a0, $fp, -44
	ld.wu	$a0, $fp, -36
	bstrpick.d	$a0, $a0, 31, 2
	slli.d	$a0, $a0, 2
	st.w	$a0, $fp, -48
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -64
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -64
	bltu	$a0, $a1, .LBB109_3
	b	.LBB109_1
.LBB109_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovw)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovw)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovw)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovw)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a1, $fp, -56
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	add.d	$a0, $a0, $a2
	bltu	$a0, $a1, .LBB109_3
	b	.LBB109_2
.LBB109_2:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovw)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovw)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovw)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovw)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	b	.LBB109_11
.LBB109_3:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___cmovw)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovw)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovw)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovw)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -40
	b	.LBB109_4
.LBB109_4:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -44
	bgeu	$a0, $a1, .LBB109_7
	b	.LBB109_5
.LBB109_5:                              #   in Loop: Header=BB109_4 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovw)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovw)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovw)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovw)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a0, $fp, -32
	ld.wu	$a1, $fp, -40
	slli.d	$a2, $a1, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a1, $fp, -24
	stx.w	$a0, $a1, $a2
	b	.LBB109_6
.LBB109_6:                              #   in Loop: Header=BB109_4 Depth=1
	ld.w	$a0, $fp, -40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -40
	b	.LBB109_4
.LBB109_7:
	b	.LBB109_8
.LBB109_8:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -48
	bgeu	$a0, $a1, .LBB109_10
	b	.LBB109_9
.LBB109_9:                              #   in Loop: Header=BB109_8 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovw)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovw)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovw)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovw)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -48
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	ld.w	$a0, $fp, -48
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -48
	b	.LBB109_8
.LBB109_10:
	b	.LBB109_15
.LBB109_11:
	b	.LBB109_12
.LBB109_12:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -36
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, -36
	beqz	$a0, .LBB109_14
	b	.LBB109_13
.LBB109_13:                             #   in Loop: Header=BB109_12 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmovw)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmovw)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmovw)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmovw)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	b	.LBB109_12
.LBB109_14:
	b	.LBB109_15
.LBB109_15:
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end109:
	.size	__cmovw, .Lfunc_end109-__cmovw
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	5
	.type	__modi,@function
__modi:                                 # @__modi
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___modi)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___modi)
	lu32i.d	$t8, %pc64_lo20(.L__profc___modi)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___modi)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	mod.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end110:
	.size	__modi, .Lfunc_end110-__modi
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	5
	.type	__uitod,@function
__uitod:                                # @__uitod
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___uitod)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___uitod)
	lu32i.d	$t8, %pc64_lo20(.L__profc___uitod)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___uitod)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	pcalau12i	$ra, %got_pc_hi20(__floatunsidf)
	addi.d	$t8, $zero, %got_pc_lo12(__floatunsidf)
	lu32i.d	$t8, %got64_pc_lo20(__floatunsidf)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__floatunsidf)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end111:
	.size	__uitod, .Lfunc_end111-__uitod
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	5
	.type	__uitof,@function
__uitof:                                # @__uitof
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___uitof)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___uitof)
	lu32i.d	$t8, %pc64_lo20(.L__profc___uitof)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___uitof)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	pcalau12i	$ra, %got_pc_hi20(__floatunsisf)
	addi.d	$t8, $zero, %got_pc_lo12(__floatunsisf)
	lu32i.d	$t8, %got64_pc_lo20(__floatunsisf)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__floatunsisf)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end112:
	.size	__uitof, .Lfunc_end112-__uitof
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	5
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ulltod)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ulltod)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ulltod)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ulltod)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	pcalau12i	$ra, %got_pc_hi20(__floatundidf)
	addi.d	$t8, $zero, %got_pc_lo12(__floatundidf)
	lu32i.d	$t8, %got64_pc_lo20(__floatundidf)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__floatundidf)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end113:
	.size	__ulltod, .Lfunc_end113-__ulltod
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	5
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ulltof)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ulltof)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ulltof)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ulltof)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	pcalau12i	$ra, %got_pc_hi20(__floatundisf)
	addi.d	$t8, $zero, %got_pc_lo12(__floatundisf)
	lu32i.d	$t8, %got64_pc_lo20(__floatundisf)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__floatundisf)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end114:
	.size	__ulltof, .Lfunc_end114-__ulltof
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	5
	.type	__umodi,@function
__umodi:                                # @__umodi
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___umodi)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___umodi)
	lu32i.d	$t8, %pc64_lo20(.L__profc___umodi)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___umodi)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	mod.wu	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end115:
	.size	__umodi, .Lfunc_end115-__umodi
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	5
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.h	$a0, $fp, -18
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___clzhi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___clzhi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___clzhi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___clzhi2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -24
	b	.LBB116_1
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -24
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB116_6
	b	.LBB116_2
.LBB116_2:                              #   in Loop: Header=BB116_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___clzhi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___clzhi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___clzhi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___clzhi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.hu	$a0, $fp, -18
	ld.w	$a2, $fp, -24
	ori	$a1, $zero, 15
	sub.d	$a1, $a1, $a2
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB116_4
	b	.LBB116_3
.LBB116_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___clzhi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___clzhi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___clzhi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___clzhi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	b	.LBB116_6
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	b	.LBB116_5
.LBB116_5:                              #   in Loop: Header=BB116_1 Depth=1
	ld.w	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB116_1
.LBB116_6:
	ld.w	$a0, $fp, -24
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end116:
	.size	__clzhi2, .Lfunc_end116-__clzhi2
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	5
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.h	$a0, $fp, -18
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___ctzhi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ctzhi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ctzhi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ctzhi2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -24
	b	.LBB117_1
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -24
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB117_6
	b	.LBB117_2
.LBB117_2:                              #   in Loop: Header=BB117_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ctzhi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ctzhi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ctzhi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ctzhi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.hu	$a0, $fp, -18
	ld.wu	$a1, $fp, -24
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB117_4
	b	.LBB117_3
.LBB117_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ctzhi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ctzhi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ctzhi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ctzhi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	b	.LBB117_6
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	b	.LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
	ld.w	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB117_1
.LBB117_6:
	ld.w	$a0, $fp, -24
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end117:
	.size	__ctzhi2, .Lfunc_end117-__ctzhi2
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	5
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -28
	move	$a0, $zero
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L__profc___fixunssfsi)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___fixunssfsi)
	lu32i.d	$t8, %pc64_lo20(.L__profc___fixunssfsi)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___fixunssfsi)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -28
	lu12i.w	$a1, 290816
	pcalau12i	$ra, %got_pc_hi20(__gesf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gesf2)
	lu32i.d	$t8, %got64_pc_lo20(__gesf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gesf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, -40                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB118_2
	b	.LBB118_1
.LBB118_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___fixunssfsi)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___fixunssfsi)
	lu32i.d	$t8, %pc64_lo20(.L__profc___fixunssfsi)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___fixunssfsi)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -28
	lu12i.w	$a1, -233472
	pcalau12i	$ra, %got_pc_hi20(__addsf3)
	addi.d	$t8, $zero, %got_pc_lo12(__addsf3)
	lu32i.d	$t8, %got64_pc_lo20(__addsf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__addsf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	pcalau12i	$ra, %got_pc_hi20(__fixsfdi)
	addi.d	$t8, $zero, %got_pc_lo12(__fixsfdi)
	lu32i.d	$t8, %got64_pc_lo20(__fixsfdi)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__fixsfdi)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 8
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	b	.LBB118_3
.LBB118_2:
	ld.w	$a0, $fp, -28
	pcalau12i	$ra, %got_pc_hi20(__fixsfdi)
	addi.d	$t8, $zero, %got_pc_lo12(__fixsfdi)
	lu32i.d	$t8, %got64_pc_lo20(__fixsfdi)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__fixsfdi)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -24
	b	.LBB118_3
.LBB118_3:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end118:
	.size	__fixunssfsi, .Lfunc_end118-__fixunssfsi
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	5
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.h	$a0, $fp, -18
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___parityhi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___parityhi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___parityhi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___parityhi2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -28
	st.w	$a0, $fp, -24
	b	.LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -24
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB119_6
	b	.LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___parityhi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___parityhi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___parityhi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___parityhi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.hu	$a0, $fp, -18
	ld.wu	$a1, $fp, -24
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB119_4
	b	.LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___parityhi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___parityhi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___parityhi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___parityhi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.w	$a0, $fp, -28
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB119_4
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	b	.LBB119_5
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
	ld.w	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB119_1
.LBB119_6:
	ld.wu	$a0, $fp, -28
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end119:
	.size	__parityhi2, .Lfunc_end119-__parityhi2
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	5
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.h	$a0, $fp, -18
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___popcounthi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___popcounthi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___popcounthi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___popcounthi2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -28
	st.w	$a0, $fp, -24
	b	.LBB120_1
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -24
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB120_6
	b	.LBB120_2
.LBB120_2:                              #   in Loop: Header=BB120_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___popcounthi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___popcounthi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___popcounthi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___popcounthi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.hu	$a0, $fp, -18
	ld.wu	$a1, $fp, -24
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB120_4
	b	.LBB120_3
.LBB120_3:                              #   in Loop: Header=BB120_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___popcounthi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___popcounthi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___popcounthi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___popcounthi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.w	$a0, $fp, -28
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB120_4
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	b	.LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
	ld.w	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB120_1
.LBB120_6:
	ld.w	$a0, $fp, -28
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end120:
	.size	__popcounthi2, .Lfunc_end120-__popcounthi2
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	5
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___mulsi3_iq2000)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulsi3_iq2000)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulsi3_iq2000)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulsi3_iq2000)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -28
	b	.LBB121_1
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB121_5
	b	.LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mulsi3_iq2000)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulsi3_iq2000)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulsi3_iq2000)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulsi3_iq2000)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.bu	$a0, $fp, -20
	andi	$a0, $a0, 1
	beqz	$a0, .LBB121_4
	b	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mulsi3_iq2000)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulsi3_iq2000)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulsi3_iq2000)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulsi3_iq2000)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.w	$a1, $fp, -24
	ld.w	$a0, $fp, -28
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	b	.LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	ld.wu	$a0, $fp, -20
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -24
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB121_1
.LBB121_5:
	ld.w	$a0, $fp, -28
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end121:
	.size	__mulsi3_iq2000, .Lfunc_end121-__mulsi3_iq2000
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	5
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___mulsi3_lm32)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulsi3_lm32)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulsi3_lm32)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulsi3_lm32)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -24
	bnez	$a0, .LBB122_2
	b	.LBB122_1
.LBB122_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___mulsi3_lm32)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulsi3_lm32)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulsi3_lm32)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulsi3_lm32)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -20
	b	.LBB122_8
.LBB122_2:
	b	.LBB122_3
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB122_7
	b	.LBB122_4
.LBB122_4:                              #   in Loop: Header=BB122_3 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mulsi3_lm32)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulsi3_lm32)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulsi3_lm32)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulsi3_lm32)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.bu	$a0, $fp, -28
	andi	$a0, $a0, 1
	beqz	$a0, .LBB122_6
	b	.LBB122_5
.LBB122_5:                              #   in Loop: Header=BB122_3 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mulsi3_lm32)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulsi3_lm32)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulsi3_lm32)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulsi3_lm32)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.w	$a1, $fp, -24
	ld.w	$a0, $fp, -32
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	b	.LBB122_6
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
	ld.w	$a0, $fp, -24
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	ld.wu	$a0, $fp, -28
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB122_3
.LBB122_7:
	ld.w	$a0, $fp, -32
	st.w	$a0, $fp, -20
	b	.LBB122_8
.LBB122_8:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end122:
	.size	__mulsi3_lm32, .Lfunc_end122-__mulsi3_lm32
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	5
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.w	$a0, $fp, -24
	st.w	$a1, $fp, -28
	st.w	$a2, $fp, -32
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	ori	$a1, $zero, 1
	st.w	$a1, $fp, -36
	st.w	$a0, $fp, -40
	b	.LBB123_1
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -24
	move	$a2, $zero
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB123_6
	b	.LBB123_2
.LBB123_2:                              #   in Loop: Header=BB123_1 Depth=1
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 32
	ld.w	$a0, $fp, -36
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB123_6
	b	.LBB123_3
.LBB123_3:                              #   in Loop: Header=BB123_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	b	.LBB123_4
.LBB123_4:                              #   in Loop: Header=BB123_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.wu	$a0, $fp, -28
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	sltui	$a1, $a0, 1
	st.d	$a1, $fp, -56                   # 8-byte Folded Spill
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	bnez	$a0, .LBB123_6
	b	.LBB123_5
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB123_6
.LBB123_6:                              #   in Loop: Header=BB123_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB123_8
	b	.LBB123_7
.LBB123_7:                              #   in Loop: Header=BB123_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -28
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -36
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -36
	b	.LBB123_1
.LBB123_8:
	b	.LBB123_9
.LBB123_9:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -36
	beqz	$a0, .LBB123_13
	b	.LBB123_10
.LBB123_10:                             #   in Loop: Header=BB123_9 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bltu	$a0, $a1, .LBB123_12
	b	.LBB123_11
.LBB123_11:                             #   in Loop: Header=BB123_9 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 56
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 56
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -24
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -40
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -40
	b	.LBB123_12
.LBB123_12:                             #   in Loop: Header=BB123_9 Depth=1
	ld.wu	$a0, $fp, -36
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -36
	ld.wu	$a0, $fp, -28
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB123_9
.LBB123_13:
	ld.w	$a0, $fp, -32
	beqz	$a0, .LBB123_15
	b	.LBB123_14
.LBB123_14:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 64
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB123_16
.LBB123_15:
	ld.w	$a0, $fp, -40
	st.w	$a0, $fp, -20
	b	.LBB123_16
.LBB123_16:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end123:
	.size	__udivmodsi4, .Lfunc_end123-__udivmodsi4
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	5
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mspabi_cmpf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mspabi_cmpf)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mspabi_cmpf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mspabi_cmpf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	pcalau12i	$ra, %got_pc_hi20(__ltsf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltsf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltsf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltsf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB124_2
	b	.LBB124_1
.LBB124_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mspabi_cmpf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mspabi_cmpf)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mspabi_cmpf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mspabi_cmpf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, -20
	b	.LBB124_5
.LBB124_2:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	pcalau12i	$ra, %got_pc_hi20(__gtsf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gtsf2)
	lu32i.d	$t8, %got64_pc_lo20(__gtsf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gtsf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB124_4
	b	.LBB124_3
.LBB124_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mspabi_cmpf)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mspabi_cmpf)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mspabi_cmpf)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mspabi_cmpf)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB124_5
.LBB124_4:
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB124_5
.LBB124_5:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end124:
	.size	__mspabi_cmpf, .Lfunc_end124-__mspabi_cmpf
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	5
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mspabi_cmpd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mspabi_cmpd)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mspabi_cmpd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mspabi_cmpd)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB125_2
	b	.LBB125_1
.LBB125_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mspabi_cmpd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mspabi_cmpd)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mspabi_cmpd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mspabi_cmpd)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, -20
	b	.LBB125_5
.LBB125_2:
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	pcalau12i	$ra, %got_pc_hi20(__gtdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gtdf2)
	lu32i.d	$t8, %got64_pc_lo20(__gtdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gtdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB125_4
	b	.LBB125_3
.LBB125_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mspabi_cmpd)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mspabi_cmpd)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mspabi_cmpd)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mspabi_cmpd)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB125_5
.LBB125_4:
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB125_5
.LBB125_5:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end125:
	.size	__mspabi_cmpd, .Lfunc_end125-__mspabi_cmpd
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	5
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mspabi_mpysll)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mspabi_mpysll)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mspabi_mpysll)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mspabi_mpysll)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	ld.d	$a1, $fp, -32
	mul.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end126:
	.size	__mspabi_mpysll, .Lfunc_end126-__mspabi_mpysll
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	5
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mspabi_mpyull)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mspabi_mpyull)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mspabi_mpyull)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mspabi_mpyull)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	ld.d	$a1, $fp, -32
	mul.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end127:
	.size	__mspabi_mpyull, .Lfunc_end127-__mspabi_mpyull
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	5
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___mulhi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulhi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulhi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulhi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -32
	st.w	$a0, $fp, -36
	ld.w	$a1, $fp, -24
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB128_2
	b	.LBB128_1
.LBB128_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___mulhi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulhi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulhi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulhi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	ld.w	$a1, $fp, -24
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -32
	b	.LBB128_2
.LBB128_2:
	move	$a0, $zero
	st.b	$a0, $fp, -25
	b	.LBB128_3
.LBB128_3:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	move	$a1, $zero
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB128_6
	b	.LBB128_4
.LBB128_4:                              #   in Loop: Header=BB128_3 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mulhi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulhi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulhi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulhi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	ld.b	$a1, $fp, -25
	sltui	$a2, $a1, 32
	st.d	$a2, $fp, -56                   # 8-byte Folded Spill
	ori	$a0, $zero, 31
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB128_6
	b	.LBB128_5
.LBB128_5:                              #   in Loop: Header=BB128_3 Depth=1
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___mulhi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulhi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulhi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulhi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 32
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 32
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB128_6
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB128_11
	b	.LBB128_7
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mulhi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulhi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulhi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulhi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.bu	$a0, $fp, -24
	andi	$a0, $a0, 1
	beqz	$a0, .LBB128_9
	b	.LBB128_8
.LBB128_8:                              #   in Loop: Header=BB128_3 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mulhi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulhi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulhi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulhi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -36
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	b	.LBB128_9
.LBB128_9:                              #   in Loop: Header=BB128_3 Depth=1
	ld.w	$a0, $fp, -20
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -24
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB128_10
.LBB128_10:                             #   in Loop: Header=BB128_3 Depth=1
	ld.b	$a0, $fp, -25
	addi.d	$a0, $a0, 1
	st.b	$a0, $fp, -25
	b	.LBB128_3
.LBB128_11:
	ld.w	$a0, $fp, -32
	beqz	$a0, .LBB128_13
	b	.LBB128_12
.LBB128_12:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___mulhi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulhi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulhi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulhi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 48
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 48
	ld.w	$a1, $fp, -36
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB128_14
.LBB128_13:
	ld.w	$a0, $fp, -36
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB128_14
.LBB128_14:
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end128:
	.size	__mulhi3, .Lfunc_end128-__mulhi3
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	5
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___divsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___divsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___divsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___divsi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -36
	ld.d	$a1, $fp, -24
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB129_2
	b	.LBB129_1
.LBB129_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___divsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___divsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___divsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___divsi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	ld.d	$a1, $fp, -24
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	ld.w	$a0, $fp, -36
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -36
	b	.LBB129_2
.LBB129_2:
	ld.d	$a1, $fp, -32
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB129_4
	b	.LBB129_3
.LBB129_3:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___divsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___divsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___divsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___divsi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	ld.d	$a1, $fp, -32
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32
	ld.w	$a0, $fp, -36
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -36
	b	.LBB129_4
.LBB129_4:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -32
	move	$a2, $zero
	pcalau12i	$ra, %pc_hi20(__udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(__udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(__udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(__udivmodsi4)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $fp, -48
	ld.w	$a0, $fp, -36
	beqz	$a0, .LBB129_6
	b	.LBB129_5
.LBB129_5:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___divsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___divsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___divsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___divsi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	ld.d	$a1, $fp, -48
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -48
	b	.LBB129_6
.LBB129_6:
	ld.d	$a0, $fp, -48
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end129:
	.size	__divsi3, .Lfunc_end129-__divsi3
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	5
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___modsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___modsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___modsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___modsi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	st.w	$a0, $fp, -36
	ld.d	$a1, $fp, -24
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB130_2
	b	.LBB130_1
.LBB130_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___modsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___modsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___modsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___modsi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	ld.d	$a1, $fp, -24
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -36
	b	.LBB130_2
.LBB130_2:
	ld.d	$a1, $fp, -32
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB130_4
	b	.LBB130_3
.LBB130_3:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___modsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___modsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___modsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___modsi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	ld.d	$a1, $fp, -32
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32
	b	.LBB130_4
.LBB130_4:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -32
	ori	$a2, $zero, 1
	pcalau12i	$ra, %pc_hi20(__udivmodsi4)
	addi.d	$t8, $zero, %pc_lo12(__udivmodsi4)
	lu32i.d	$t8, %pc64_lo20(__udivmodsi4)
	lu52i.d	$t8, $t8, %pc64_hi12(__udivmodsi4)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $fp, -48
	ld.w	$a0, $fp, -36
	beqz	$a0, .LBB130_6
	b	.LBB130_5
.LBB130_5:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___modsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___modsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___modsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___modsi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	ld.d	$a1, $fp, -48
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -48
	b	.LBB130_6
.LBB130_6:
	ld.d	$a0, $fp, -48
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end130:
	.size	__modsi3, .Lfunc_end130-__modsi3
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	5
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.h	$a0, $fp, -20
	st.h	$a1, $fp, -22
	st.w	$a2, $fp, -28
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___udivmodhi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodhi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodhi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodhi4)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	ori	$a1, $zero, 1
	st.h	$a1, $fp, -30
	st.h	$a0, $fp, -32
	b	.LBB131_1
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, -22
	ld.hu	$a1, $fp, -20
	move	$a2, $zero
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	bge	$a0, $a1, .LBB131_6
	b	.LBB131_2
.LBB131_2:                              #   in Loop: Header=BB131_1 Depth=1
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___udivmodhi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodhi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodhi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodhi4)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 32
	ld.hu	$a0, $fp, -30
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	beqz	$a0, .LBB131_6
	b	.LBB131_3
.LBB131_3:                              #   in Loop: Header=BB131_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodhi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodhi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodhi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodhi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	b	.LBB131_4
.LBB131_4:                              #   in Loop: Header=BB131_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodhi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodhi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodhi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodhi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.hu	$a0, $fp, -22
	lu12i.w	$a1, 8
	and	$a0, $a0, $a1
	sltui	$a1, $a0, 1
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	bnez	$a0, .LBB131_6
	b	.LBB131_5
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___udivmodhi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodhi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodhi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodhi4)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB131_6
.LBB131_6:                              #   in Loop: Header=BB131_1 Depth=1
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB131_8
	b	.LBB131_7
.LBB131_7:                              #   in Loop: Header=BB131_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodhi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodhi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodhi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodhi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.h	$a0, $fp, -22
	slli.d	$a0, $a0, 1
	st.h	$a0, $fp, -22
	ld.h	$a0, $fp, -30
	slli.d	$a0, $a0, 1
	st.h	$a0, $fp, -30
	b	.LBB131_1
.LBB131_8:
	b	.LBB131_9
.LBB131_9:                              # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, -30
	beqz	$a0, .LBB131_13
	b	.LBB131_10
.LBB131_10:                             #   in Loop: Header=BB131_9 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodhi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodhi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodhi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodhi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.hu	$a0, $fp, -20
	ld.hu	$a1, $fp, -22
	blt	$a0, $a1, .LBB131_12
	b	.LBB131_11
.LBB131_11:                             #   in Loop: Header=BB131_9 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodhi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodhi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodhi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodhi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 56
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 56
	ld.h	$a1, $fp, -22
	ld.h	$a0, $fp, -20
	sub.d	$a0, $a0, $a1
	st.h	$a0, $fp, -20
	ld.h	$a1, $fp, -30
	ld.h	$a0, $fp, -32
	or	$a0, $a0, $a1
	st.h	$a0, $fp, -32
	b	.LBB131_12
.LBB131_12:                             #   in Loop: Header=BB131_9 Depth=1
	ld.hu	$a0, $fp, -30
	srli.d	$a0, $a0, 1
	st.h	$a0, $fp, -30
	ld.hu	$a0, $fp, -22
	srli.d	$a0, $a0, 1
	st.h	$a0, $fp, -22
	b	.LBB131_9
.LBB131_13:
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB131_15
	b	.LBB131_14
.LBB131_14:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodhi4)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodhi4)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodhi4)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodhi4)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 64
	ld.h	$a0, $fp, -20
	st.h	$a0, $fp, -18
	b	.LBB131_16
.LBB131_15:
	ld.h	$a0, $fp, -32
	st.h	$a0, $fp, -18
	b	.LBB131_16
.LBB131_16:
	ld.hu	$a0, $fp, -18
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end131:
	.size	__udivmodhi4, .Lfunc_end131-__udivmodhi4
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	5
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
                                        # kill: def $r7 killed $r6
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	st.w	$a2, $fp, -44
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4_libgcc)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4_libgcc)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	ori	$a1, $zero, 1
	st.d	$a1, $fp, -56
	st.d	$a0, $fp, -64
	b	.LBB132_1
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -32
	move	$a2, $zero
	st.d	$a2, $fp, -72                   # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB132_6
	b	.LBB132_2
.LBB132_2:                              #   in Loop: Header=BB132_1 Depth=1
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4_libgcc)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4_libgcc)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 32
	ld.d	$a0, $fp, -56
	st.d	$a1, $fp, -72                   # 8-byte Folded Spill
	beqz	$a0, .LBB132_6
	b	.LBB132_3
.LBB132_3:                              #   in Loop: Header=BB132_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4_libgcc)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4_libgcc)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 40
	b	.LBB132_4
.LBB132_4:                              #   in Loop: Header=BB132_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4_libgcc)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4_libgcc)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -40
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	sltui	$a1, $a0, 1
	st.d	$a1, $fp, -80                   # 8-byte Folded Spill
	st.d	$a1, $fp, -72                   # 8-byte Folded Spill
	bnez	$a0, .LBB132_6
	b	.LBB132_5
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	ld.d	$a0, $fp, -80                   # 8-byte Folded Reload
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4_libgcc)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4_libgcc)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB132_6
.LBB132_6:                              #   in Loop: Header=BB132_1 Depth=1
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB132_8
	b	.LBB132_7
.LBB132_7:                              #   in Loop: Header=BB132_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4_libgcc)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4_libgcc)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -40
	slli.d	$a0, $a0, 1
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -56
	slli.d	$a0, $a0, 1
	st.d	$a0, $fp, -56
	b	.LBB132_1
.LBB132_8:
	b	.LBB132_9
.LBB132_9:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -56
	beqz	$a0, .LBB132_13
	b	.LBB132_10
.LBB132_10:                             #   in Loop: Header=BB132_9 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4_libgcc)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4_libgcc)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 48
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	bltu	$a0, $a1, .LBB132_12
	b	.LBB132_11
.LBB132_11:                             #   in Loop: Header=BB132_9 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4_libgcc)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4_libgcc)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 56
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 56
	ld.d	$a1, $fp, -40
	ld.d	$a0, $fp, -32
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32
	ld.d	$a1, $fp, -56
	ld.d	$a0, $fp, -64
	or	$a0, $a0, $a1
	st.d	$a0, $fp, -64
	b	.LBB132_12
.LBB132_12:                             #   in Loop: Header=BB132_9 Depth=1
	ld.d	$a0, $fp, -56
	srli.d	$a0, $a0, 1
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -40
	srli.d	$a0, $a0, 1
	st.d	$a0, $fp, -40
	b	.LBB132_9
.LBB132_13:
	ld.w	$a0, $fp, -44
	beqz	$a0, .LBB132_15
	b	.LBB132_14
.LBB132_14:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	lu32i.d	$t8, %pc64_lo20(.L__profc___udivmodsi4_libgcc)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___udivmodsi4_libgcc)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 64
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB132_16
.LBB132_15:
	ld.d	$a0, $fp, -64
	st.d	$a0, $fp, -24
	b	.LBB132_16
.LBB132_16:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end132:
	.size	__udivmodsi4_libgcc, .Lfunc_end132-__udivmodsi4_libgcc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	5
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -32
	st.w	$a1, $fp, -36
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ashldi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashldi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashldi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashldi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	st.w	$a0, $fp, -40
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.bu	$a0, $fp, -36
	andi	$a0, $a0, 32
	beqz	$a0, .LBB133_2
	b	.LBB133_1
.LBB133_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___ashldi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashldi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashldi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashldi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -56
	ld.w	$a0, $fp, -48
	ld.w	$a1, $fp, -36
	addi.d	$a1, $a1, -32
	sll.w	$a0, $a0, $a1
	st.w	$a0, $fp, -52
	b	.LBB133_5
.LBB133_2:
	ld.w	$a0, $fp, -36
	bnez	$a0, .LBB133_4
	b	.LBB133_3
.LBB133_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ashldi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashldi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashldi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashldi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB133_6
.LBB133_4:
	ld.w	$a0, $fp, -48
	ld.wu	$a1, $fp, -36
	sll.w	$a0, $a0, $a1
	st.w	$a0, $fp, -56
	ld.w	$a0, $fp, -44
	ld.wu	$a3, $fp, -36
	sll.w	$a0, $a0, $a3
	ld.w	$a1, $fp, -48
	ori	$a2, $zero, 32
	sub.d	$a2, $a2, $a3
	srl.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -52
	b	.LBB133_5
.LBB133_5:
	ld.d	$a0, $fp, -56
	st.d	$a0, $fp, -24
	b	.LBB133_6
.LBB133_6:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end133:
	.size	__ashldi3, .Lfunc_end133-__ashldi3
                                        # -- End function
	.globl	__ashlti3                       # -- Begin function __ashlti3
	.p2align	5
	.type	__ashlti3,@function
__ashlti3:                              # @__ashlti3
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r6
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	st.w	$a2, $fp, -52
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ashlti3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashlti3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashlti3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashlti3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 64
	st.w	$a0, $fp, -56
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -72
	st.d	$a0, $fp, -80
	ld.bu	$a0, $fp, -52
	andi	$a0, $a0, 64
	beqz	$a0, .LBB134_2
	b	.LBB134_1
.LBB134_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___ashlti3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashlti3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashlti3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashlti3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.d	$a0, $fp, -96
	ld.d	$a0, $fp, -80
	ld.w	$a1, $fp, -52
	addi.d	$a1, $a1, -64
	sll.d	$a0, $a0, $a1
	st.d	$a0, $fp, -88
	b	.LBB134_5
.LBB134_2:
	ld.w	$a0, $fp, -52
	bnez	$a0, .LBB134_4
	b	.LBB134_3
.LBB134_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ashlti3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashlti3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashlti3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashlti3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB134_6
.LBB134_4:
	ld.d	$a0, $fp, -80
	ld.wu	$a1, $fp, -52
	sll.d	$a0, $a0, $a1
	st.d	$a0, $fp, -96
	ld.d	$a0, $fp, -72
	ld.wu	$a3, $fp, -52
	sll.d	$a0, $a0, $a3
	ld.d	$a1, $fp, -80
	ori	$a2, $zero, 64
	sub.d	$a2, $a2, $a3
	srl.d	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $fp, -88
	b	.LBB134_5
.LBB134_5:
	ld.d	$a0, $fp, -96
	ld.d	$a1, $fp, -88
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB134_6
.LBB134_6:
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end134:
	.size	__ashlti3, .Lfunc_end134-__ashlti3
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	5
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -32
	st.w	$a1, $fp, -36
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ashrdi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashrdi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashrdi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashrdi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	st.w	$a0, $fp, -40
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.bu	$a0, $fp, -36
	andi	$a0, $a0, 32
	beqz	$a0, .LBB135_2
	b	.LBB135_1
.LBB135_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ashrdi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashrdi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashrdi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashrdi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.w	$a0, $fp, -44
	srli.d	$a0, $a0, 31
	st.w	$a0, $fp, -52
	ld.w	$a0, $fp, -44
	ld.w	$a1, $fp, -36
	addi.d	$a1, $a1, -32
	sra.w	$a0, $a0, $a1
	st.w	$a0, $fp, -56
	b	.LBB135_5
.LBB135_2:
	ld.w	$a0, $fp, -36
	bnez	$a0, .LBB135_4
	b	.LBB135_3
.LBB135_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ashrdi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashrdi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashrdi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashrdi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB135_6
.LBB135_4:
	ld.w	$a0, $fp, -44
	ld.wu	$a1, $fp, -36
	sra.w	$a0, $a0, $a1
	st.w	$a0, $fp, -52
	ld.w	$a0, $fp, -44
	ld.wu	$a2, $fp, -36
	ori	$a1, $zero, 32
	sub.d	$a1, $a1, $a2
	sll.w	$a0, $a0, $a1
	ld.w	$a1, $fp, -48
	srl.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -56
	b	.LBB135_5
.LBB135_5:
	ld.d	$a0, $fp, -56
	st.d	$a0, $fp, -24
	b	.LBB135_6
.LBB135_6:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end135:
	.size	__ashrdi3, .Lfunc_end135-__ashrdi3
                                        # -- End function
	.globl	__ashrti3                       # -- Begin function __ashrti3
	.p2align	5
	.type	__ashrti3,@function
__ashrti3:                              # @__ashrti3
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r6
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	st.w	$a2, $fp, -52
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ashrti3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashrti3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashrti3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashrti3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 64
	st.w	$a0, $fp, -56
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -72
	st.d	$a0, $fp, -80
	ld.bu	$a0, $fp, -52
	andi	$a0, $a0, 64
	beqz	$a0, .LBB136_2
	b	.LBB136_1
.LBB136_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ashrti3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashrti3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashrti3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashrti3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -72
	srai.d	$a0, $a0, 63
	st.d	$a0, $fp, -88
	ld.d	$a0, $fp, -72
	ld.w	$a1, $fp, -52
	addi.d	$a1, $a1, -64
	sra.d	$a0, $a0, $a1
	st.d	$a0, $fp, -96
	b	.LBB136_5
.LBB136_2:
	ld.w	$a0, $fp, -52
	bnez	$a0, .LBB136_4
	b	.LBB136_3
.LBB136_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ashrti3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ashrti3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ashrti3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ashrti3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB136_6
.LBB136_4:
	ld.d	$a0, $fp, -72
	ld.wu	$a1, $fp, -52
	sra.d	$a0, $a0, $a1
	st.d	$a0, $fp, -88
	ld.d	$a0, $fp, -72
	ld.wu	$a2, $fp, -52
	ori	$a1, $zero, 64
	sub.d	$a1, $a1, $a2
	sll.d	$a0, $a0, $a1
	ld.d	$a1, $fp, -80
	srl.d	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $fp, -96
	b	.LBB136_5
.LBB136_5:
	ld.d	$a0, $fp, -96
	ld.d	$a1, $fp, -88
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB136_6
.LBB136_6:
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end136:
	.size	__ashrti3, .Lfunc_end136-__ashrti3
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	5
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___bswapdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___bswapdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___bswapdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___bswapdi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a1, $fp, -24
	srli.d	$a0, $a1, 56
	ori	$a2, $zero, 0
	move	$a3, $a2
	lu32i.d	$a3, -65536
	lu52i.d	$a3, $a3, 15
	and	$a3, $a1, $a3
	srli.d	$a3, $a3, 40
	or	$a0, $a0, $a3
	move	$a3, $a2
	lu32i.d	$a3, 65280
	and	$a3, $a1, $a3
	srli.d	$a3, $a3, 24
	or	$a0, $a0, $a3
	lu32i.d	$a2, 255
	and	$a2, $a1, $a2
	srli.d	$a2, $a2, 8
	or	$a0, $a0, $a2
	lu12i.w	$a2, -4096
	lu32i.d	$a2, 0
	and	$a2, $a1, $a2
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a2
	lu12i.w	$a2, 4080
	and	$a2, $a1, $a2
	slli.d	$a2, $a2, 24
	or	$a0, $a0, $a2
	bstrpick.d	$a2, $a1, 15, 8
	slli.d	$a2, $a2, 48
	or	$a0, $a0, $a2
	slli.d	$a1, $a1, 56
	or	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end137:
	.size	__bswapdi2, .Lfunc_end137-__bswapdi2
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	5
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___bswapsi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___bswapsi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___bswapsi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___bswapsi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a1, $fp, -20
	srli.d	$a0, $a1, 24
	lu12i.w	$a2, 4080
	and	$a2, $a1, $a2
	srli.d	$a2, $a2, 8
	or	$a0, $a0, $a2
	bstrpick.d	$a2, $a1, 15, 8
	slli.d	$a2, $a2, 16
	or	$a0, $a0, $a2
	slli.d	$a1, $a1, 24
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end138:
	.size	__bswapsi2, .Lfunc_end138-__bswapsi2
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	5
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a2, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___clzsi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___clzsi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___clzsi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___clzsi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -24
	ld.hu	$a0, $fp, -22
	slli.d	$a0, $a0, 16
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 4
	st.w	$a0, $fp, -28
	ld.w	$a1, $fp, -28
	ori	$a0, $zero, 16
	sub.d	$a1, $a0, $a1
	ld.w	$a0, $fp, -24
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -28
	st.w	$a0, $fp, -32
	ld.bu	$a0, $fp, -23
	slli.d	$a0, $a0, 8
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	st.w	$a0, $fp, -28
	ld.w	$a1, $fp, -28
	ori	$a0, $zero, 8
	sub.d	$a1, $a0, $a1
	ld.w	$a0, $fp, -24
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -32
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	ld.wu	$a0, $fp, -24
	andi	$a0, $a0, 240
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 2
	st.w	$a0, $fp, -28
	ld.w	$a1, $fp, -28
	ori	$a0, $zero, 4
	sub.d	$a1, $a0, $a1
	ld.w	$a0, $fp, -24
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -32
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	ld.wu	$a0, $fp, -24
	andi	$a0, $a0, 12
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	ori	$a1, $zero, 2
	sub.d	$a3, $a1, $a0
	ld.w	$a0, $fp, -24
	srl.w	$a0, $a0, $a3
	st.w	$a0, $fp, -24
	ld.w	$a3, $fp, -28
	ld.w	$a0, $fp, -32
	add.d	$a0, $a0, $a3
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -32
	ld.wu	$a3, $fp, -24
	sub.d	$a1, $a1, $a3
	andi	$a3, $a3, 2
	sltui	$a3, $a3, 1
	sub.d	$a2, $a2, $a3
	and	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end139:
	.size	__clzsi2, .Lfunc_end139-__clzsi2
                                        # -- End function
	.globl	__clzti2                        # -- Begin function __clzti2
	.p2align	5
	.type	__clzti2,@function
__clzti2:                               # @__clzti2
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___clzti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___clzti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___clzti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___clzti2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, -32
	ld.d	$a2, $fp, -24
	st.d	$a2, $fp, -40
	st.d	$a1, $fp, -48
	ld.d	$a1, $fp, -40
	sltui	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -56
	andn	$a0, $a0, $a1
	ld.d	$a2, $fp, -48
	and	$a2, $a2, $a1
	or	$a0, $a0, $a2
	clz.d	$a0, $a0
	andi	$a1, $a1, 64
	add.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end140:
	.size	__clzti2, .Lfunc_end140-__clzti2
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	5
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmpdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmpdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmpdi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -56
	ld.w	$a0, $fp, -44
	ld.w	$a1, $fp, -52
	bge	$a0, $a1, .LBB141_2
	b	.LBB141_1
.LBB141_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___cmpdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmpdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmpdi2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -20
	b	.LBB141_9
.LBB141_2:
	ld.w	$a1, $fp, -44
	ld.w	$a0, $fp, -52
	bge	$a0, $a1, .LBB141_4
	b	.LBB141_3
.LBB141_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmpdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmpdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmpdi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -20
	b	.LBB141_9
.LBB141_4:
	ld.w	$a0, $fp, -48
	ld.w	$a1, $fp, -56
	bgeu	$a0, $a1, .LBB141_6
	b	.LBB141_5
.LBB141_5:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___cmpdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmpdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmpdi2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.w	$a0, $fp, -20
	b	.LBB141_9
.LBB141_6:
	ld.w	$a1, $fp, -48
	ld.w	$a0, $fp, -56
	bgeu	$a0, $a1, .LBB141_8
	b	.LBB141_7
.LBB141_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmpdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmpdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmpdi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -20
	b	.LBB141_9
.LBB141_8:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB141_9
.LBB141_9:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end141:
	.size	__cmpdi2, .Lfunc_end141-__cmpdi2
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	5
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___aeabi_lcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___aeabi_lcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc___aeabi_lcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___aeabi_lcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	ld.d	$a1, $fp, -32
	pcalau12i	$ra, %pc_hi20(__cmpdi2)
	addi.d	$t8, $zero, %pc_lo12(__cmpdi2)
	lu32i.d	$t8, %pc64_lo20(__cmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(__cmpdi2)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end142:
	.size	__aeabi_lcmp, .Lfunc_end142-__aeabi_lcmp
                                        # -- End function
	.globl	__cmpti2                        # -- Begin function __cmpti2
	.p2align	5
	.type	__cmpti2,@function
__cmpti2:                               # @__cmpti2
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	st.d	$a3, $fp, -56
	st.d	$a2, $fp, -64
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmpti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmpti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmpti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmpti2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -72
	st.d	$a0, $fp, -80
	ld.d	$a0, $fp, -64
	ld.d	$a1, $fp, -56
	st.d	$a1, $fp, -88
	st.d	$a0, $fp, -96
	ld.d	$a0, $fp, -72
	ld.d	$a1, $fp, -88
	bge	$a0, $a1, .LBB143_2
	b	.LBB143_1
.LBB143_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___cmpti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmpti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmpti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmpti2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -20
	b	.LBB143_9
.LBB143_2:
	ld.d	$a1, $fp, -72
	ld.d	$a0, $fp, -88
	bge	$a0, $a1, .LBB143_4
	b	.LBB143_3
.LBB143_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmpti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmpti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmpti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmpti2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -20
	b	.LBB143_9
.LBB143_4:
	ld.d	$a0, $fp, -80
	ld.d	$a1, $fp, -96
	bgeu	$a0, $a1, .LBB143_6
	b	.LBB143_5
.LBB143_5:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___cmpti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmpti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmpti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmpti2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.w	$a0, $fp, -20
	b	.LBB143_9
.LBB143_6:
	ld.d	$a1, $fp, -80
	ld.d	$a0, $fp, -96
	bgeu	$a0, $a1, .LBB143_8
	b	.LBB143_7
.LBB143_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___cmpti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___cmpti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___cmpti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___cmpti2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -20
	b	.LBB143_9
.LBB143_8:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB143_9
.LBB143_9:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end143:
	.size	__cmpti2, .Lfunc_end143-__cmpti2
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	5
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ctzsi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ctzsi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ctzsi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ctzsi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -24
	ld.hu	$a0, $fp, -24
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 4
	st.w	$a0, $fp, -28
	ld.wu	$a1, $fp, -28
	ld.w	$a0, $fp, -24
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -28
	st.w	$a0, $fp, -32
	ld.bu	$a0, $fp, -24
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	st.w	$a0, $fp, -28
	ld.wu	$a1, $fp, -28
	ld.w	$a0, $fp, -24
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -32
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	ld.wu	$a0, $fp, -24
	andi	$a0, $a0, 15
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 2
	st.w	$a0, $fp, -28
	ld.wu	$a1, $fp, -28
	ld.w	$a0, $fp, -24
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -32
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	ld.wu	$a0, $fp, -24
	andi	$a0, $a0, 3
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.wu	$a1, $fp, -28
	ld.w	$a0, $fp, -24
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.wu	$a0, $fp, -24
	andi	$a0, $a0, 3
	st.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -32
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -32
	ld.wu	$a2, $fp, -24
	srli.d	$a3, $a2, 1
	ori	$a1, $zero, 2
	sub.d	$a1, $a1, $a3
	andi	$a2, $a2, 1
	addi.d	$a2, $a2, -1
	and	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end144:
	.size	__ctzsi2, .Lfunc_end144-__ctzsi2
                                        # -- End function
	.globl	__ctzti2                        # -- Begin function __ctzti2
	.p2align	5
	.type	__ctzti2,@function
__ctzti2:                               # @__ctzti2
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___ctzti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ctzti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ctzti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ctzti2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, -32
	ld.d	$a2, $fp, -24
	st.d	$a2, $fp, -40
	st.d	$a1, $fp, -48
	ld.d	$a1, $fp, -48
	sltui	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -56
	and	$a0, $a0, $a1
	ld.d	$a2, $fp, -48
	andn	$a2, $a2, $a1
	or	$a0, $a0, $a2
	ctz.d	$a0, $a0
	andi	$a1, $a1, 64
	add.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end145:
	.size	__ctzti2, .Lfunc_end145-__ctzti2
                                        # -- End function
	.globl	__ffsti2                        # -- Begin function __ffsti2
	.p2align	5
	.type	__ffsti2,@function
__ffsti2:                               # @__ffsti2
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ffsti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ffsti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ffsti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ffsti2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -56
	st.d	$a0, $fp, -64
	ld.d	$a0, $fp, -64
	bnez	$a0, .LBB146_4
	b	.LBB146_1
.LBB146_1:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ffsti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ffsti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ffsti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ffsti2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.d	$a0, $fp, -56
	bnez	$a0, .LBB146_3
	b	.LBB146_2
.LBB146_2:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___ffsti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ffsti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ffsti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ffsti2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 16
	st.w	$a0, $fp, -20
	b	.LBB146_5
.LBB146_3:
	ld.d	$a0, $fp, -56
	ctz.d	$a0, $a0
	addi.d	$a0, $a0, 65
	st.w	$a0, $fp, -20
	b	.LBB146_5
.LBB146_4:
	ld.d	$a0, $fp, -64
	ctz.d	$a0, $a0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB146_5
.LBB146_5:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end146:
	.size	__ffsti2, .Lfunc_end146-__ffsti2
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	5
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -32
	st.w	$a1, $fp, -36
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___lshrdi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___lshrdi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___lshrdi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___lshrdi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	st.w	$a0, $fp, -40
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.bu	$a0, $fp, -36
	andi	$a0, $a0, 32
	beqz	$a0, .LBB147_2
	b	.LBB147_1
.LBB147_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___lshrdi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___lshrdi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___lshrdi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___lshrdi3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -52
	ld.w	$a0, $fp, -44
	ld.w	$a1, $fp, -36
	addi.d	$a1, $a1, -32
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -56
	b	.LBB147_5
.LBB147_2:
	ld.w	$a0, $fp, -36
	bnez	$a0, .LBB147_4
	b	.LBB147_3
.LBB147_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___lshrdi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___lshrdi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___lshrdi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___lshrdi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB147_6
.LBB147_4:
	ld.w	$a0, $fp, -44
	ld.wu	$a1, $fp, -36
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -52
	ld.w	$a0, $fp, -44
	ld.wu	$a2, $fp, -36
	ori	$a1, $zero, 32
	sub.d	$a1, $a1, $a2
	sll.w	$a0, $a0, $a1
	ld.w	$a1, $fp, -48
	srl.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -56
	b	.LBB147_5
.LBB147_5:
	ld.d	$a0, $fp, -56
	st.d	$a0, $fp, -24
	b	.LBB147_6
.LBB147_6:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end147:
	.size	__lshrdi3, .Lfunc_end147-__lshrdi3
                                        # -- End function
	.globl	__lshrti3                       # -- Begin function __lshrti3
	.p2align	5
	.type	__lshrti3,@function
__lshrti3:                              # @__lshrti3
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r6
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	st.w	$a2, $fp, -52
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___lshrti3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___lshrti3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___lshrti3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___lshrti3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 64
	st.w	$a0, $fp, -56
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -72
	st.d	$a0, $fp, -80
	ld.bu	$a0, $fp, -52
	andi	$a0, $a0, 64
	beqz	$a0, .LBB148_2
	b	.LBB148_1
.LBB148_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___lshrti3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___lshrti3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___lshrti3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___lshrti3)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.d	$a0, $fp, -88
	ld.d	$a0, $fp, -72
	ld.w	$a1, $fp, -52
	addi.d	$a1, $a1, -64
	srl.d	$a0, $a0, $a1
	st.d	$a0, $fp, -96
	b	.LBB148_5
.LBB148_2:
	ld.w	$a0, $fp, -52
	bnez	$a0, .LBB148_4
	b	.LBB148_3
.LBB148_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___lshrti3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___lshrti3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___lshrti3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___lshrti3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB148_6
.LBB148_4:
	ld.d	$a0, $fp, -72
	ld.wu	$a1, $fp, -52
	srl.d	$a0, $a0, $a1
	st.d	$a0, $fp, -88
	ld.d	$a0, $fp, -72
	ld.wu	$a2, $fp, -52
	ori	$a1, $zero, 64
	sub.d	$a1, $a1, $a2
	sll.d	$a0, $a0, $a1
	ld.d	$a1, $fp, -80
	srl.d	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $fp, -96
	b	.LBB148_5
.LBB148_5:
	ld.d	$a0, $fp, -96
	ld.d	$a1, $fp, -88
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB148_6
.LBB148_6:
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end148:
	.size	__lshrti3, .Lfunc_end148-__lshrti3
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	5
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___muldsi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___muldsi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___muldsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___muldsi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 16
	st.w	$a0, $fp, -36
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.w	$a0, $fp, -40
	ld.hu	$a0, $fp, -20
	ld.hu	$a1, $fp, -24
	mul.d	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	ld.hu	$a0, $fp, -30
	st.w	$a0, $fp, -44
	ld.hu	$a0, $fp, -32
	st.w	$a0, $fp, -32
	ld.hu	$a0, $fp, -18
	ld.hu	$a1, $fp, -24
	mul.d	$a1, $a0, $a1
	ld.w	$a0, $fp, -44
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -44
	ld.w	$a0, $fp, -44
	slli.d	$a1, $a0, 16
	ld.w	$a0, $fp, -32
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	ld.hu	$a0, $fp, -42
	st.w	$a0, $fp, -28
	ld.hu	$a0, $fp, -30
	st.w	$a0, $fp, -44
	ld.hu	$a0, $fp, -32
	st.w	$a0, $fp, -32
	ld.hu	$a0, $fp, -22
	ld.hu	$a1, $fp, -20
	mul.d	$a1, $a0, $a1
	ld.w	$a0, $fp, -44
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -44
	ld.w	$a0, $fp, -44
	slli.d	$a1, $a0, 16
	ld.w	$a0, $fp, -32
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	ld.hu	$a1, $fp, -42
	ld.w	$a0, $fp, -28
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	ld.hu	$a0, $fp, -18
	ld.hu	$a1, $fp, -22
	mul.d	$a1, $a0, $a1
	ld.w	$a0, $fp, -28
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	ld.d	$a0, $fp, -32
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end149:
	.size	__muldsi3, .Lfunc_end149-__muldsi3
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	5
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___muldi3_compiler_rt)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___muldi3_compiler_rt)
	lu32i.d	$t8, %pc64_lo20(.L__profc___muldi3_compiler_rt)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___muldi3_compiler_rt)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -48
	pcalau12i	$ra, %pc_hi20(__muldsi3)
	addi.d	$t8, $zero, %pc_lo12(__muldsi3)
	lu32i.d	$t8, %pc64_lo20(__muldsi3)
	lu52i.d	$t8, $t8, %pc64_hi12(__muldsi3)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -56
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -48
	mul.d	$a0, $a0, $a1
	ld.w	$a1, $fp, -40
	ld.w	$a2, $fp, -44
	mul.d	$a1, $a1, $a2
	add.d	$a1, $a0, $a1
	ld.w	$a0, $fp, -52
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -52
	ld.d	$a0, $fp, -56
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end150:
	.size	__muldi3_compiler_rt, .Lfunc_end150-__muldi3_compiler_rt
                                        # -- End function
	.globl	__mulddi3                       # -- Begin function __mulddi3
	.p2align	5
	.type	__mulddi3,@function
__mulddi3:                              # @__mulddi3
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___mulddi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___mulddi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___mulddi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___mulddi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	st.w	$a0, $fp, -52
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $fp, -64
	ld.wu	$a0, $fp, -24
	ld.wu	$a1, $fp, -32
	mul.d	$a0, $a0, $a1
	st.d	$a0, $fp, -48
	ld.wu	$a0, $fp, -44
	st.d	$a0, $fp, -72
	ld.wu	$a0, $fp, -48
	st.d	$a0, $fp, -48
	ld.wu	$a0, $fp, -20
	ld.wu	$a1, $fp, -32
	mul.d	$a1, $a0, $a1
	ld.d	$a0, $fp, -72
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -72
	ld.d	$a0, $fp, -72
	slli.d	$a1, $a0, 32
	ld.d	$a0, $fp, -48
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -48
	ld.wu	$a0, $fp, -68
	st.d	$a0, $fp, -40
	ld.wu	$a0, $fp, -44
	st.d	$a0, $fp, -72
	ld.wu	$a0, $fp, -48
	st.d	$a0, $fp, -48
	ld.wu	$a0, $fp, -28
	ld.wu	$a1, $fp, -24
	mul.d	$a1, $a0, $a1
	ld.d	$a0, $fp, -72
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -72
	ld.d	$a0, $fp, -72
	slli.d	$a1, $a0, 32
	ld.d	$a0, $fp, -48
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -48
	ld.wu	$a1, $fp, -68
	ld.d	$a0, $fp, -40
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -40
	ld.wu	$a0, $fp, -20
	ld.wu	$a1, $fp, -28
	mul.d	$a1, $a0, $a1
	ld.d	$a0, $fp, -40
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end151:
	.size	__mulddi3, .Lfunc_end151-__mulddi3
                                        # -- End function
	.globl	__multi3                        # -- Begin function __multi3
	.p2align	5
	.type	__multi3,@function
__multi3:                               # @__multi3
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	st.d	$a3, $fp, -40
	st.d	$a2, $fp, -48
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___multi3)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___multi3)
	lu32i.d	$t8, %pc64_lo20(.L__profc___multi3)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___multi3)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	st.d	$a1, $fp, -56
	st.d	$a0, $fp, -64
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -72
	st.d	$a0, $fp, -80
	ld.d	$a0, $fp, -64
	ld.d	$a1, $fp, -80
	pcalau12i	$ra, %pc_hi20(__mulddi3)
	addi.d	$t8, $zero, %pc_lo12(__mulddi3)
	lu32i.d	$t8, %pc64_lo20(__mulddi3)
	lu52i.d	$t8, $t8, %pc64_hi12(__mulddi3)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a1, $fp, -88
	st.d	$a0, $fp, -96
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -80
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $fp, -64
	ld.d	$a2, $fp, -72
	mul.d	$a1, $a1, $a2
	add.d	$a1, $a0, $a1
	ld.d	$a0, $fp, -88
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -88
	ld.d	$a0, $fp, -96
	ld.d	$a1, $fp, -88
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end152:
	.size	__multi3, .Lfunc_end152-__multi3
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	5
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___negdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___negdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___negdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___negdi2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, -24
	sub.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end153:
	.size	__negdi2, .Lfunc_end153-__negdi2
                                        # -- End function
	.globl	__negti2                        # -- Begin function __negti2
	.p2align	5
	.type	__negti2,@function
__negti2:                               # @__negti2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___negti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___negti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___negti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___negti2)
	add.d	$a2, $t8, $a2
	ld.d	$a0, $a2, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, 0
	ld.d	$a2, $fp, -24
	ld.d	$a3, $fp, -32
	sub.d	$a0, $a1, $a3
	sltu	$a3, $zero, $a3
	add.d	$a2, $a2, $a3
	sub.d	$a1, $a1, $a2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end154:
	.size	__negti2, .Lfunc_end154-__negti2
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	5
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___paritydi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___paritydi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___paritydi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___paritydi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -32
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -32
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	ld.wu	$a0, $fp, -36
	srli.d	$a1, $a0, 16
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	ld.wu	$a0, $fp, -36
	srli.d	$a1, $a0, 8
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	ld.wu	$a0, $fp, -36
	srli.d	$a1, $a0, 4
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	ld.wu	$a0, $fp, -36
	andi	$a1, $a0, 15
	lu12i.w	$a0, 6
	ori	$a0, $a0, 2454
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end155:
	.size	__paritydi2, .Lfunc_end155-__paritydi2
                                        # -- End function
	.globl	__parityti2                     # -- Begin function __parityti2
	.p2align	5
	.type	__parityti2,@function
__parityti2:                            # @__parityti2
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___parityti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___parityti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___parityti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___parityti2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	xor	$a0, $a0, $a1
	st.d	$a0, $fp, -56
	ld.w	$a0, $fp, -52
	ld.w	$a1, $fp, -56
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -60
	ld.wu	$a0, $fp, -60
	srli.d	$a1, $a0, 16
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -60
	ld.wu	$a0, $fp, -60
	srli.d	$a1, $a0, 8
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -60
	ld.wu	$a0, $fp, -60
	srli.d	$a1, $a0, 4
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -60
	ld.wu	$a0, $fp, -60
	andi	$a1, $a0, 15
	lu12i.w	$a0, 6
	ori	$a0, $a0, 2454
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end156:
	.size	__parityti2, .Lfunc_end156-__parityti2
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	5
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___paritysi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___paritysi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___paritysi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___paritysi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -24
	ld.wu	$a0, $fp, -24
	srli.d	$a1, $a0, 16
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.wu	$a0, $fp, -24
	srli.d	$a1, $a0, 8
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.wu	$a0, $fp, -24
	srli.d	$a1, $a0, 4
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.wu	$a0, $fp, -24
	andi	$a1, $a0, 15
	lu12i.w	$a0, 6
	ori	$a0, $a0, 2454
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end157:
	.size	__paritysi2, .Lfunc_end157-__paritysi2
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	5
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___popcountdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___popcountdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___popcountdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___popcountdi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -32
	ld.d	$a0, $fp, -32
	srli.d	$a1, $a0, 1
	lu12i.w	$a2, 349525
	ori	$a2, $a2, 1365
	lu32i.d	$a2, 349525
	lu52i.d	$a2, $a2, 1365
	and	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32
	ld.d	$a1, $fp, -32
	srli.d	$a0, $a1, 2
	lu12i.w	$a2, 209715
	ori	$a2, $a2, 819
	lu32i.d	$a2, 209715
	lu52i.d	$a2, $a2, 819
	and	$a0, $a0, $a2
	and	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32
	ld.d	$a0, $fp, -32
	srli.d	$a1, $a0, 4
	add.d	$a0, $a0, $a1
	lu12i.w	$a1, 61680
	ori	$a1, $a1, 3855
	lu32i.d	$a1, -61681
	lu52i.d	$a1, $a1, 240
	and	$a0, $a0, $a1
	st.d	$a0, $fp, -32
	ld.d	$a0, $fp, -32
	srli.d	$a1, $a0, 32
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	ld.wu	$a0, $fp, -36
	srli.d	$a1, $a0, 16
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -36
	srli.d	$a1, $a0, 8
	add.d	$a0, $a0, $a1
	andi	$a0, $a0, 127
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end158:
	.size	__popcountdi2, .Lfunc_end158-__popcountdi2
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	5
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___popcountsi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___popcountsi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___popcountsi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___popcountsi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -24
	srli.d	$a1, $a0, 1
	lu12i.w	$a2, 349525
	ori	$a2, $a2, 1365
	and	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.wu	$a1, $fp, -24
	srli.d	$a0, $a1, 2
	lu12i.w	$a2, 209715
	ori	$a2, $a2, 819
	and	$a0, $a0, $a2
	and	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -24
	srli.d	$a1, $a0, 4
	add.d	$a0, $a0, $a1
	lu12i.w	$a1, 61680
	ori	$a1, $a1, 3855
	and	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.wu	$a0, $fp, -24
	srli.d	$a1, $a0, 16
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -24
	srli.d	$a1, $a0, 8
	add.d	$a0, $a0, $a1
	andi	$a0, $a0, 63
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end159:
	.size	__popcountsi2, .Lfunc_end159-__popcountsi2
                                        # -- End function
	.globl	__popcountti2                   # -- Begin function __popcountti2
	.p2align	5
	.type	__popcountti2,@function
__popcountti2:                          # @__popcountti2
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___popcountti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___popcountti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___popcountti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___popcountti2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	srli.d	$a2, $a1, 1
	srli.d	$a4, $a0, 1
	lu12i.w	$a3, 349525
	ori	$a3, $a3, 1365
	lu32i.d	$a3, 349525
	lu52i.d	$a3, $a3, 1365
	and	$a4, $a4, $a3
	and	$a2, $a2, $a3
	sltu	$a3, $a1, $a2
	sub.d	$a0, $a0, $a4
	sub.d	$a0, $a0, $a3
	sub.d	$a1, $a1, $a2
	st.d	$a1, $fp, -48
	st.d	$a0, $fp, -40
	ld.d	$a1, $fp, -48
	ld.d	$a3, $fp, -40
	srli.d	$a0, $a3, 2
	srli.d	$a2, $a1, 2
	lu12i.w	$a4, 209715
	ori	$a4, $a4, 819
	lu32i.d	$a4, 209715
	lu52i.d	$a4, $a4, 819
	and	$a2, $a2, $a4
	and	$a0, $a0, $a4
	and	$a1, $a1, $a4
	and	$a3, $a3, $a4
	add.d	$a0, $a0, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	add.d	$a0, $a0, $a2
	st.d	$a1, $fp, -48
	st.d	$a0, $fp, -40
	ld.d	$a2, $fp, -48
	ld.d	$a0, $fp, -40
	slli.d	$a3, $a0, 60
	srli.d	$a1, $a2, 4
	or	$a1, $a1, $a3
	srli.d	$a3, $a0, 4
	add.d	$a0, $a0, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	add.d	$a0, $a0, $a2
	lu12i.w	$a2, 61680
	ori	$a2, $a2, 3855
	lu32i.d	$a2, -61681
	lu52i.d	$a2, $a2, 240
	and	$a0, $a0, $a2
	and	$a1, $a1, $a2
	st.d	$a1, $fp, -48
	st.d	$a0, $fp, -40
	ld.d	$a1, $fp, -40
	ld.d	$a0, $fp, -48
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -56
	srli.d	$a1, $a0, 32
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -60
	ld.wu	$a0, $fp, -60
	srli.d	$a1, $a0, 16
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -60
	ld.w	$a0, $fp, -60
	srli.d	$a1, $a0, 8
	add.d	$a0, $a0, $a1
	andi	$a0, $a0, 255
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end160:
	.size	__popcountti2, .Lfunc_end160-__popcountti2
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	5
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___powidf2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___powidf2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___powidf2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___powidf2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a0, $fp, -28
	srli.d	$a0, $a0, 31
	st.w	$a0, $fp, -32
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $fp, -40
	b	.LBB161_1
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___powidf2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___powidf2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___powidf2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___powidf2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.bu	$a0, $fp, -28
	andi	$a0, $a0, 1
	beqz	$a0, .LBB161_3
	b	.LBB161_2
.LBB161_2:                              #   in Loop: Header=BB161_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___powidf2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___powidf2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___powidf2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___powidf2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.d	$a1, $fp, -24
	ld.d	$a0, $fp, -40
	pcalau12i	$ra, %got_pc_hi20(__muldf3)
	addi.d	$t8, $zero, %got_pc_lo12(__muldf3)
	lu32i.d	$t8, %got64_pc_lo20(__muldf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__muldf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -40
	b	.LBB161_3
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	ld.wu	$a0, $fp, -28
	srli.d	$a1, $a0, 31
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	bnez	$a0, .LBB161_5
	b	.LBB161_4
.LBB161_4:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___powidf2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___powidf2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___powidf2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___powidf2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	b	.LBB161_6
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
	ld.d	$a1, $fp, -24
	move	$a0, $a1
	pcalau12i	$ra, %got_pc_hi20(__muldf3)
	addi.d	$t8, $zero, %got_pc_lo12(__muldf3)
	lu32i.d	$t8, %got64_pc_lo20(__muldf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__muldf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -24
	b	.LBB161_1
.LBB161_6:
	ld.w	$a0, $fp, -32
	beqz	$a0, .LBB161_8
	b	.LBB161_7
.LBB161_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___powidf2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___powidf2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___powidf2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___powidf2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.d	$a1, $fp, -40
	lu52i.d	$a0, $zero, 1023
	pcalau12i	$ra, %got_pc_hi20(__divdf3)
	addi.d	$t8, $zero, %got_pc_lo12(__divdf3)
	lu32i.d	$t8, %got64_pc_lo20(__divdf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__divdf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB161_9
.LBB161_8:
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB161_9
.LBB161_9:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end161:
	.size	__powidf2, .Lfunc_end161-__powidf2
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	5
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___powisf2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___powisf2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___powisf2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___powisf2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.wu	$a0, $fp, -24
	srli.d	$a0, $a0, 31
	st.w	$a0, $fp, -28
	lu12i.w	$a0, 260096
	st.w	$a0, $fp, -32
	b	.LBB162_1
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___powisf2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___powisf2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___powisf2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___powisf2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 8
	ld.bu	$a0, $fp, -24
	andi	$a0, $a0, 1
	beqz	$a0, .LBB162_3
	b	.LBB162_2
.LBB162_2:                              #   in Loop: Header=BB162_1 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___powisf2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___powisf2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___powisf2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___powisf2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -32
	pcalau12i	$ra, %got_pc_hi20(__mulsf3)
	addi.d	$t8, $zero, %got_pc_lo12(__mulsf3)
	lu32i.d	$t8, %got64_pc_lo20(__mulsf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__mulsf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, -32
	b	.LBB162_3
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	ld.wu	$a0, $fp, -24
	srli.d	$a1, $a0, 31
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -24
	bnez	$a0, .LBB162_5
	b	.LBB162_4
.LBB162_4:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___powisf2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___powisf2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___powisf2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___powisf2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 24
	b	.LBB162_6
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
	ld.w	$a1, $fp, -20
	move	$a0, $a1
	pcalau12i	$ra, %got_pc_hi20(__mulsf3)
	addi.d	$t8, $zero, %got_pc_lo12(__mulsf3)
	lu32i.d	$t8, %got64_pc_lo20(__mulsf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__mulsf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, -20
	b	.LBB162_1
.LBB162_6:
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB162_8
	b	.LBB162_7
.LBB162_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___powisf2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___powisf2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___powisf2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___powisf2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ld.w	$a1, $fp, -32
	lu12i.w	$a0, 260096
	pcalau12i	$ra, %got_pc_hi20(__divsf3)
	addi.d	$t8, $zero, %got_pc_lo12(__divsf3)
	lu32i.d	$t8, %got64_pc_lo20(__divsf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__divsf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB162_9
.LBB162_8:
	ld.w	$a0, $fp, -32
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB162_9
.LBB162_9:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end162:
	.size	__powisf2, .Lfunc_end162-__powisf2
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	5
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ucmpdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ucmpdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ucmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ucmpdi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -56
	ld.w	$a0, $fp, -44
	ld.w	$a1, $fp, -52
	bgeu	$a0, $a1, .LBB163_2
	b	.LBB163_1
.LBB163_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___ucmpdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ucmpdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ucmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ucmpdi2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -20
	b	.LBB163_9
.LBB163_2:
	ld.w	$a1, $fp, -44
	ld.w	$a0, $fp, -52
	bgeu	$a0, $a1, .LBB163_4
	b	.LBB163_3
.LBB163_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ucmpdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ucmpdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ucmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ucmpdi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -20
	b	.LBB163_9
.LBB163_4:
	ld.w	$a0, $fp, -48
	ld.w	$a1, $fp, -56
	bgeu	$a0, $a1, .LBB163_6
	b	.LBB163_5
.LBB163_5:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___ucmpdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ucmpdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ucmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ucmpdi2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.w	$a0, $fp, -20
	b	.LBB163_9
.LBB163_6:
	ld.w	$a1, $fp, -48
	ld.w	$a0, $fp, -56
	bgeu	$a0, $a1, .LBB163_8
	b	.LBB163_7
.LBB163_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ucmpdi2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ucmpdi2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ucmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ucmpdi2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -20
	b	.LBB163_9
.LBB163_8:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB163_9
.LBB163_9:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end163:
	.size	__ucmpdi2, .Lfunc_end163-__ucmpdi2
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	5
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___aeabi_ulcmp)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___aeabi_ulcmp)
	lu32i.d	$t8, %pc64_lo20(.L__profc___aeabi_ulcmp)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___aeabi_ulcmp)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -24
	ld.d	$a1, $fp, -32
	pcalau12i	$ra, %pc_hi20(__ucmpdi2)
	addi.d	$t8, $zero, %pc_lo12(__ucmpdi2)
	lu32i.d	$t8, %pc64_lo20(__ucmpdi2)
	lu52i.d	$t8, $t8, %pc64_hi12(__ucmpdi2)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end164:
	.size	__aeabi_ulcmp, .Lfunc_end164-__aeabi_ulcmp
                                        # -- End function
	.globl	__ucmpti2                       # -- Begin function __ucmpti2
	.p2align	5
	.type	__ucmpti2,@function
__ucmpti2:                              # @__ucmpti2
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	st.d	$a3, $fp, -56
	st.d	$a2, $fp, -64
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ucmpti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ucmpti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ucmpti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ucmpti2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -72
	st.d	$a0, $fp, -80
	ld.d	$a0, $fp, -64
	ld.d	$a1, $fp, -56
	st.d	$a1, $fp, -88
	st.d	$a0, $fp, -96
	ld.d	$a0, $fp, -72
	ld.d	$a1, $fp, -88
	bgeu	$a0, $a1, .LBB165_2
	b	.LBB165_1
.LBB165_1:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___ucmpti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ucmpti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ucmpti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ucmpti2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 8
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 8
	st.w	$a0, $fp, -20
	b	.LBB165_9
.LBB165_2:
	ld.d	$a1, $fp, -72
	ld.d	$a0, $fp, -88
	bgeu	$a0, $a1, .LBB165_4
	b	.LBB165_3
.LBB165_3:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ucmpti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ucmpti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ucmpti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ucmpti2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 16
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -20
	b	.LBB165_9
.LBB165_4:
	ld.d	$a0, $fp, -80
	ld.d	$a1, $fp, -96
	bgeu	$a0, $a1, .LBB165_6
	b	.LBB165_5
.LBB165_5:
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.L__profc___ucmpti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ucmpti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ucmpti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ucmpti2)
	add.d	$a2, $t8, $a2
	ld.d	$a1, $a2, 24
	addi.d	$a1, $a1, 1
	st.d	$a1, $a2, 24
	st.w	$a0, $fp, -20
	b	.LBB165_9
.LBB165_6:
	ld.d	$a1, $fp, -80
	ld.d	$a0, $fp, -96
	bgeu	$a0, $a1, .LBB165_8
	b	.LBB165_7
.LBB165_7:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__profc___ucmpti2)
	addi.d	$t8, $zero, %pc_lo12(.L__profc___ucmpti2)
	lu32i.d	$t8, %pc64_lo20(.L__profc___ucmpti2)
	lu52i.d	$t8, $t8, %pc64_hi12(.L__profc___ucmpti2)
	add.d	$a1, $t8, $a1
	ld.d	$a0, $a1, 32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 32
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -20
	b	.LBB165_9
.LBB165_8:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB165_9
.LBB165_9:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end165:
	.size	__ucmpti2, .Lfunc_end165-__ucmpti2
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
	.dword	-5001490222628474638            # 0xba9723243ca3f0f2
	.dword	24                              # 0x18
	.dword	.L__profc_make_ti-.L__profd_make_ti
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8857068571906375875            # 0x85155f0f843e7f3d
	.dword	24                              # 0x18
	.dword	.L__profc_make_tu-.L__profd_make_tu
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-306081897096246147             # 0xfbc09422e3668c7d
	.dword	-4061701397412038936            # 0xc7a1f0194f8c36e8
	.dword	.L__profc_memmove-.L__profd_memmove
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1590863763861247346            # 0xe9ec1dd5e5026a8e
	.dword	1189690007454808                # 0x43a044a498458
	.dword	.L__profc_memccpy-.L__profd_memccpy
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5708666158622859656             # 0x4f3941a01e026188
	.dword	4538308109                      # 0x10e81160d
	.dword	.L__profc_memchr-.L__profd_memchr
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-4679550853048924350            # 0xbf0ee54adfa48742
	.dword	4538045965                      # 0x10e7d160d
	.dword	.L__profc_memcmp-.L__profd_memcmp
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3893303423671325810             # 0x3607cad612bdd472
	.dword	17496                           # 0x4458
	.dword	.L__profc_memcpy-.L__profd_memcpy
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-548334422562728352             # 0xf863ecbf75079660
	.dword	9516882138200                   # 0x8a7d2611458
	.dword	.L__profc_memrchr-.L__profd_memrchr
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2741574704065975695            # 0xd9f3f85506f36a71
	.dword	17496                           # 0x4458
	.dword	.L__profc_memset-.L__profd_memset
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4454833295779690053             # 0x3dd2bf47a087f645
	.dword	17496                           # 0x4458
	.dword	.L__profc_stpcpy-.L__profd_stpcpy
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5039208642683934005             # 0x45eedd8fc8411535
	.dword	70911064                        # 0x43a0458
	.dword	.L__profc_strchrnul-.L__profd_strchrnul
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5671522429266412413            # 0xb14ab4664bea3c83
	.dword	13914928649304                  # 0xca7d2611458
	.dword	.L__profc_strchr-.L__profd_strchr
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	1013198891307352868             # 0xe0f9b060331c324
	.dword	70906968                        # 0x439f458
	.dword	.L__profc_strcmp-.L__profd_strcmp
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2965136410638013299             # 0x292647db02a7d373
	.dword	17496                           # 0x4458
	.dword	.L__profc_strlen-.L__profd_strlen
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6058495834680104774            # 0xabebe6233cb568ba
	.dword	7207353986825238351             # 0x6405aa43cb36b74f
	.dword	.L__profc_strncmp-.L__profd_strncmp
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1619950660557759641            # 0xe984c77503cb9b67
	.dword	18193                           # 0x4711
	.dword	.L__profc_swab-.L__profd_swab
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1429966999967671460            # 0xec27bc96fe655b5c
	.dword	1563                            # 0x61b
	.dword	.L__profc_isalpha-.L__profd_isalpha
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-4792250000779744687            # 0xbd7e8203c4a86a51
	.dword	1562                            # 0x61a
	.dword	.L__profc_isascii-.L__profd_isascii
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2465200613623135234             # 0x223626e59b14fc02
	.dword	6354911                         # 0x60f7df
	.dword	.L__profc_isblank-.L__profd_isblank
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8897732069425577183             # 0x7b7b182cc8b67cdf
	.dword	6354655                         # 0x60f6df
	.dword	.L__profc_iscntrl-.L__profd_iscntrl
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3483985654529092453             # 0x30599a7e6cc36b65
	.dword	1563                            # 0x61b
	.dword	.L__profc_isdigit-.L__profd_isdigit
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-127227288456547236             # 0xfe3bff7489cfb45c
	.dword	1563                            # 0x61b
	.dword	.L__profc_isgraph-.L__profd_isgraph
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7501983819047161697             # 0x681c66894508cf61
	.dword	1563                            # 0x61b
	.dword	.L__profc_islower-.L__profd_islower
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7275761640889424986            # 0x9b074d56145f63a6
	.dword	1563                            # 0x61b
	.dword	.L__profc_isprint-.L__profd_isprint
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	9032360604355461395             # 0x7d59641d39d70113
	.dword	6354907                         # 0x60f7db
	.dword	.L__profc_isspace-.L__profd_isspace
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4174714232255583053             # 0x39ef9079c45c934d
	.dword	1563                            # 0x61b
	.dword	.L__profc_isupper-.L__profd_isupper
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7000259844681188668             # 0x6125eb3d61a7453c
	.dword	106600273393371                 # 0x60f3cf6db6db
	.dword	.L__profc_iswcntrl-.L__profd_iswcntrl
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8583753245428091608             # 0x771f9e1919590ad8
	.dword	1563                            # 0x61b
	.dword	.L__profc_iswdigit-.L__profd_iswdigit
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-719555261641779946             # 0xf603a04d49941516
	.dword	-2566119187471392224            # 0xdc635031e3742220
	.dword	.L__profc_iswprint-.L__profd_iswprint
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	10                              # 0xa
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	624771703830219826              # 0x8aba28df0840c32
	.dword	6354651                         # 0x60f6db
	.dword	.L__profc_iswxdigit-.L__profd_iswxdigit
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4548159975983457080             # 0x3f1e4f66a624a338
	.dword	24                              # 0x18
	.dword	.L__profc_toascii-.L__profd_toascii
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3545869933759497925            # 0xceca8a150286f93b
	.dword	7369846577040809592             # 0x6646f46a29a55e78
	.dword	.L__profc_fdim-.L__profd_fdim
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1547869627280940664            # 0xea84dcc6634da188
	.dword	7369846577040809592             # 0x6646f46a29a55e78
	.dword	.L__profc_fdimf-.L__profd_fdimf
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2423801789625842334            # 0xde5ced1d3b654562
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.dword	.L__profc_fmax-.L__profd_fmax
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5134209104457391460            # 0xb8bfa0058e3da29c
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.dword	.L__profc_fmaxf-.L__profd_fmaxf
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3138580006960380340            # 0xd471861cd1fbc64c
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.dword	.L__profc_fmaxl-.L__profd_fmaxl
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	965427315610335377              # 0xd65e3074b69b891
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.dword	.L__profc_fmin-.L__profd_fmin
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7710199602704325723             # 0x6b0021b0328c9c5b
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.dword	.L__profc_fminf-.L__profd_fminf
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2487418697363824514             # 0x2285162058091f82
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.dword	.L__profc_fminl-.L__profd_fminl
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6158745991357604691            # 0xaa87bd26bb44dcad
	.dword	17496                           # 0x4458
	.dword	.L__profc_l64a-.L__profd_l64a
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2085616837322687880            # 0xe30e668959ceba78
	.dword	0                               # 0x0
	.dword	.L__profc_srand-.L__profd_srand
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7206085285791387956             # 0x6401286350c3d134
	.dword	24                              # 0x18
	.dword	.L__profc_rand-.L__profd_rand
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5080349535175464041            # 0xb97ef903bd0bab97
	.dword	45786906010769                  # 0x29a49844a491
	.dword	.L__profc_insque-.L__profd_insque
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7214219538753974334            # 0x9be1f18d54e30fc2
	.dword	11043906705                     # 0x29244a491
	.dword	.L__profc_remque-.L__profd_remque
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7032153342590886098            # 0x9e68c5caf8cb5f2e
	.dword	1245367951758424                # 0x46ca7d2611458
	.dword	.L__profc_lsearch-.L__profd_lsearch
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6350214982902907667            # 0xa7df811e30b57ced
	.dword	1245367951758424                # 0x46ca7d2611458
	.dword	.L__profc_lfind-.L__profd_lfind
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-238465663743841031             # 0xfcb0ccbe056bacf9
	.dword	99164                           # 0x1835c
	.dword	.L__profc_abs-.L__profd_abs
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6544211519801369139            # 0xa52e4a4ba3385dcd
	.dword	638206505195021                 # 0x244720809160d
	.dword	.L__profc_atoi-.L__profd_atoi
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8236175749196770609             # 0x724cc634ee8f6d31
	.dword	638206505195021                 # 0x244720809160d
	.dword	.L__profc_atol-.L__profd_atol
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3653807471789013357             # 0x32b4ee8971a6f96d
	.dword	638206505195021                 # 0x244720809160d
	.dword	.L__profc_atoll-.L__profd_atoll
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8750110911118262334             # 0x796ea3837a79403e
	.dword	-852542619444921222             # 0xf42b29012c1abc7a
	.dword	.L__profc_bsearch-.L__profd_bsearch
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	1417097008757763708             # 0x13aa8a38ab466e7c
	.dword	1259382983000112142             # 0x117a3a2689e4bc0e
	.dword	.L__profc_bsearch_r-.L__profd_bsearch_r
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5497092892325669176             # 0x4c4998dc58656938
	.dword	24                              # 0x18
	.dword	.L__profc_div-.L__profd_div
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8946668544180752025             # 0x7c28f3a3b30e0e99
	.dword	99164                           # 0x1835c
	.dword	.L__profc_imaxabs-.L__profd_imaxabs
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3928426486442246988            # 0xc97b6cec9d5fbcb4
	.dword	24                              # 0x18
	.dword	.L__profc_imaxdiv-.L__profd_imaxdiv
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7118441263952323418            # 0x9d363762b3a39ca6
	.dword	99164                           # 0x1835c
	.dword	.L__profc_labs-.L__profd_labs
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7149836041034155625             # 0x633951ff74204669
	.dword	24                              # 0x18
	.dword	.L__profc_ldiv-.L__profd_ldiv
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7684789126781046466             # 0x6aa5dafebb918ec2
	.dword	99164                           # 0x1835c
	.dword	.L__profc_llabs-.L__profd_llabs
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5329156747615108898            # 0xb60b082c520680de
	.dword	24                              # 0x18
	.dword	.L__profc_lldiv-.L__profd_lldiv
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2279810736707830048            # 0xe05c7c36c3687ee0
	.dword	4538308109                      # 0x10e81160d
	.dword	.L__profc_wcschr-.L__profd_wcschr
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3710185595167438704            # 0xcc82c5dbcd460890
	.dword	1188468208228060                # 0x438e7d160d6dc
	.dword	.L__profc_wcscmp-.L__profd_wcscmp
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8381368184235816342            # 0x8baf660af6dd0a6a
	.dword	9304                            # 0x2458
	.dword	.L__profc_wcscpy-.L__profd_wcscpy
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3988408974905483574             # 0x3759acd4c838a136
	.dword	17496                           # 0x4458
	.dword	.L__profc_wcslen-.L__profd_wcslen
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5425166749483878188            # 0xb4b5ef95c9c0b8d4
	.dword	6710790269995215964             # 0x5d218431fd366c5c
	.dword	.L__profc_wcsncmp-.L__profd_wcsncmp
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	10                              # 0xa
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-150916099757221660             # 0xfde7d69b5b1558e4
	.dword	4538308109                      # 0x10e81160d
	.dword	.L__profc_wmemchr-.L__profd_wmemchr
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5386172057678365784             # 0x4abf86f3050dc458
	.dword	1189621521503964                # 0x439f45834d6dc
	.dword	.L__profc_wmemcmp-.L__profd_wmemcmp
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7326050423799855187             # 0x65ab5c0b9d30b853
	.dword	9304                            # 0x2458
	.dword	.L__profc_wmemcpy-.L__profd_wmemcpy
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-4659407939446788683            # 0xbf56752a69a3adb5
	.dword	-1500206092990891740            # 0xeb2e3281c166b924
	.dword	.L__profc_wmemmove-.L__profd_wmemmove
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8291142148468431281            # 0x8ceff224f245264f
	.dword	9304                            # 0x2458
	.dword	.L__profc_wmemset-.L__profd_wmemset
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8407331144368071880            # 0x8b5328de3edcdb38
	.dword	5234109875325077019             # 0x48a34b333a1d861b
	.dword	.L__profc_bcopy-.L__profd_bcopy
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4714666614722164144             # 0x416ddc4e84e875b0
	.dword	24                              # 0x18
	.dword	.L__profc_rotl64-.L__profd_rotl64
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8427642833712987187            # 0x8b0aff7e8aabc3cd
	.dword	24                              # 0x18
	.dword	.L__profc_rotr64-.L__profd_rotr64
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	6417704780586152324             # 0x5910447ed829f184
	.dword	24                              # 0x18
	.dword	.L__profc_rotl32-.L__profd_rotl32
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5668908084823466940            # 0xb153fe21cbc1dc44
	.dword	24                              # 0x18
	.dword	.L__profc_rotr32-.L__profd_rotr32
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3686623714176605670            # 0xccd67b43b7f8e21a
	.dword	24                              # 0x18
	.dword	.L__profc_rotl_sz-.L__profd_rotl_sz
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3415499704483829380             # 0x2f664ae29835d684
	.dword	24                              # 0x18
	.dword	.L__profc_rotr_sz-.L__profd_rotr_sz
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7327166975465201445             # 0x65af538b0e939f25
	.dword	24                              # 0x18
	.dword	.L__profc_rotl16-.L__profd_rotl16
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5274763753728838268             # 0x4933b9afe71d0a7c
	.dword	24                              # 0x18
	.dword	.L__profc_rotr16-.L__profd_rotr16
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4408423234350850624             # 0x3d2ddd93270fa240
	.dword	24                              # 0x18
	.dword	.L__profc_rotl8-.L__profd_rotl8
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6535801773217052896            # 0xa54c2aea59078720
	.dword	24                              # 0x18
	.dword	.L__profc_rotr8-.L__profd_rotr8
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8870828063230114195            # 0x84e47ce04b9a466d
	.dword	24                              # 0x18
	.dword	.L__profc_bswap_16-.L__profd_bswap_16
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7304833549461180700             # 0x655ffb691afd511c
	.dword	24                              # 0x18
	.dword	.L__profc_bswap_32-.L__profd_bswap_32
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2873856403134720854             # 0x27e1fd2c1c53ab56
	.dword	24                              # 0x18
	.dword	.L__profc_bswap_64-.L__profd_bswap_64
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	9222170723057548859             # 0x7ffbbb6955da3e3b
	.dword	19458657686616                  # 0x11b292611458
	.dword	.L__profc_ffs-.L__profd_ffs
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	65216057573358521               # 0xe7b1a8a94fbbb9
	.dword	2952352215704664                # 0xa7d261111a458
	.dword	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	6535010584615638394             # 0x5ab10580b36ed57a
	.dword	6354652                         # 0x60f6dc
	.dword	.L__profc_gl_isinff-.L__profd_gl_isinff
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-9165907066207032774            # 0x80cc28161a7caa3a
	.dword	6354652                         # 0x60f6dc
	.dword	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4731159788068304891             # 0x41a874c2af6c77fb
	.dword	6354652                         # 0x60f6dc
	.dword	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3858125999267273921            # 0xca752ed84af9a33f
	.dword	0                               # 0x0
	.dword	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2560632889718296859            # 0xdc76cdf42028aee5
	.dword	-2048372819454505383            # 0xe392b7c600d94e59
	.dword	.L__profc_ldexpf-.L__profd_ldexpf
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	8                               # 0x8
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-240549059163932437             # 0xfca965e7b97ab8eb
	.dword	-2048372819454505383            # 0xe392b7c600d94e59
	.dword	.L__profc_ldexp-.L__profd_ldexp
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	8                               # 0x8
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5097262943286299417            # 0xb942e25c0aa874e7
	.dword	-2048372819454505383            # 0xe392b7c600d94e59
	.dword	.L__profc_ldexpl-.L__profd_ldexpl
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	8                               # 0x8
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8368025376422999318            # 0x8bdecd417eda4aea
	.dword	1164376                         # 0x11c458
	.dword	.L__profc_memxor-.L__profd_memxor
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3582483947543505905            # 0xce4875d49d21540f
	.dword	76123606467028056               # 0x10e72044a7d2458
	.dword	.L__profc_strncat-.L__profd_strncat
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	517590790318988421              # 0x72eda14dbfa1c85
	.dword	4537021528                      # 0x10e6d7458
	.dword	.L__profc_strnlen-.L__profd_strnlen
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6867074718569872870            # 0xa0b33fed4193c21a
	.dword	-4444802448421279214            # 0xc250e3b905102a12
	.dword	.L__profc_strpbrk-.L__profd_strpbrk
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5307837722043833871             # 0x49a93a493bd75e0f
	.dword	217420731480                    # 0x329f491458
	.dword	.L__profc_strrchr-.L__profd_strrchr
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3560562421867190603             # 0x3169a8a873ff994b
	.dword	-7798267876297541628            # 0x93c6fcaef9f1f804
	.dword	.L__profc_strstr-.L__profd_strstr
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-9076603418344796971            # 0x82096d47ea764cd5
	.dword	4200982705386070127             # 0x3a4ce3834618a06f
	.dword	.L__profc_copysign-.L__profd_copysign
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7485463843177831536            # 0x981e4a4b585ae390
	.dword	5508063777036862020             # 0x4c7092d27e7a8244
	.dword	.L__profc_memmem-.L__profd_memmem
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-722907995699078206             # 0xf5f7b7020f111bc2
	.dword	24                              # 0x18
	.dword	.L__profc_mempcpy-.L__profd_mempcpy
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2997169543230593137            # 0xd667ea2e1c1ee78f
	.dword	-2373782428686282824            # 0xdf0ea1753c170fb8
	.dword	.L__profc_frexp-.L__profd_frexp
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3987271357918321816             # 0x3755a22cafcf9c98
	.dword	2320045144                      # 0x8a491458
	.dword	.L__profc___muldi3-.L__profd___muldi3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4670832108574850701             # 0x40d2210e3d17be8d
	.dword	842736872197088594              # 0xbb200b8626e6552
	.dword	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7858138078702729622            # 0x92f2490d36f4066a
	.dword	187824153796641880              # 0x29b49129f498458
	.dword	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1533375985051215657            # 0xeab85aaa6fe858d7
	.dword	187824153796641880              # 0x29b49129f498458
	.dword	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5127670123023436031             # 0x472924cf303208ff
	.dword	2320045144                      # 0x8a491458
	.dword	.L__profc___mulsi3-.L__profd___mulsi3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	1458405851566781960             # 0x143d4c6520fd3608
	.dword	-6411111704588201945            # 0xa70727df48abd027
	.dword	.L__profc___cmovd-.L__profd___cmovd
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1240290101804783090            # 0xeec99ab9477e2a0e
	.dword	3130117398598530023             # 0x2b706930a0bc33e7
	.dword	.L__profc___cmovh-.L__profd___cmovh
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6631700889337257300            # 0xa3f7772d6a6922ac
	.dword	-6411111704588201945            # 0xa70727df48abd027
	.dword	.L__profc___cmovw-.L__profd___cmovw
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4130297501716739761             # 0x3951c3b1ce8276b1
	.dword	24                              # 0x18
	.dword	.L__profc___modi-.L__profd___modi
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3793169221884876252            # 0xcb5bf4b0949b6a24
	.dword	24                              # 0x18
	.dword	.L__profc___uitod-.L__profd___uitod
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2684105554667313846             # 0x253fdbc7ed991ab6
	.dword	24                              # 0x18
	.dword	.L__profc___uitof-.L__profd___uitof
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3995277539005434566             # 0x377213c0fb840ac6
	.dword	24                              # 0x18
	.dword	.L__profc___ulltod-.L__profd___ulltod
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1906554817873249395            # 0xe58a8e7e97dafb8d
	.dword	24                              # 0x18
	.dword	.L__profc___ulltof-.L__profd___ulltof
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	6154071623751134202             # 0x5567a7893fff6bfa
	.dword	24                              # 0x18
	.dword	.L__profc___umodi-.L__profd___umodi
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-9221703320275173474            # 0x8005edb05af53f9e
	.dword	19458657162328                  # 0x11b292591458
	.dword	.L__profc___clzhi2-.L__profd___clzhi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1569202989881991136            # 0xea391231d79a6020
	.dword	19458657162328                  # 0x11b292591458
	.dword	.L__profc___ctzhi2-.L__profd___ctzhi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7800469359816066749            # 0x93bf2a7226d83943
	.dword	11245552728                     # 0x29e498458
	.dword	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	1203893203113466329             # 0x10b5167d5f15d9d9
	.dword	304041497688                    # 0x46ca491458
	.dword	.L__profc___parityhi2-.L__profd___parityhi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3943219574947026310             # 0x36b9214fb4159586
	.dword	304041497688                    # 0x46ca491458
	.dword	.L__profc___popcounthi2-.L__profd___popcounthi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3976353352410196972            # 0xc8d127b190281414
	.dword	171971253336                    # 0x280a491458
	.dword	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2775651425054705869             # 0x26851843dab148cd
	.dword	-6210685127595396365            # 0xa9cf36c835dff2f3
	.dword	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6720389007632434094            # 0xa2bc61cdbfa0fc52
	.dword	842736872197088594              # 0xbb200b8626e6552
	.dword	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	6399771733438470391             # 0x58d08e7bef2f98f7
	.dword	1352614535537600836             # 0x12c573c0ecbfa944
	.dword	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5775354270414500759            # 0xafd9d1e3e3e88c69
	.dword	1352614535537600836             # 0x12c573c0ecbfa944
	.dword	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-359228324547500507             # 0xfb03c3bdfa166625
	.dword	24                              # 0x18
	.dword	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	6629829186354316853             # 0x5c01e284c62a8635
	.dword	24                              # 0x18
	.dword	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-4671748085078636676            # 0xbf2a9dde5cc6c77c
	.dword	-5374843387156864121            # 0xb568b86aa1286387
	.dword	.L__profc___mulhi3-.L__profd___mulhi3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5631431475223784324             # 0x4e26dd1711aaeb84
	.dword	510575534943447681              # 0x715edbe6f4f2a81
	.dword	.L__profc___divsi3-.L__profd___divsi3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8995696579390192574            # 0x8328dd9f4e404442
	.dword	2121116644152358499             # 0x1d6fb85985deb663
	.dword	.L__profc___modsi3-.L__profd___modsi3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2241631039268115874             # 0x1f1bdf8db510d5a2
	.dword	842736872197088594              # 0xbb200b8626e6552
	.dword	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1484205535638993157            # 0xeb670aedd291c6fb
	.dword	842736872197088594              # 0xbb200b8626e6552
	.dword	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3719210884952086607             # 0x339d4a983a55d84f
	.dword	185294818348438616              # 0x2924ca7d2611458
	.dword	.L__profc___ashldi3-.L__profd___ashldi3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8422580559269035854             # 0x74e30464d7577f4e
	.dword	185294818348438616              # 0x2924ca7d2611458
	.dword	.L__profc___ashlti3-.L__profd___ashlti3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1855717345837424946            # 0xe63f2ae7edd45ece
	.dword	185294818348438616              # 0x2924ca7d2611458
	.dword	.L__profc___ashrdi3-.L__profd___ashrdi3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1576641649180751463            # 0xea1ea4c6027ec999
	.dword	185294818348438616              # 0x2924ca7d2611458
	.dword	.L__profc___ashrti3-.L__profd___ashrti3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	9149352740892555196             # 0x7ef907d7ada5b7bc
	.dword	24                              # 0x18
	.dword	.L__profc___bswapdi2-.L__profd___bswapdi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3374945843358245974            # 0xd129c8a2fe735baa
	.dword	24                              # 0x18
	.dword	.L__profc___bswapsi2-.L__profd___bswapsi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	1382681549752930563             # 0x1330458b32829103
	.dword	33814345247                     # 0x7df7df61f
	.dword	.L__profc___clzsi2-.L__profd___clzsi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1806615119558762125            # 0xe6ed9d1ee0d9a173
	.dword	2008                            # 0x7d8
	.dword	.L__profc___clzti2-.L__profd___clzti2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5499644794300757496            # 0xb3ad5632ace08a08
	.dword	-7406659272189927428            # 0x993642a254c41ffc
	.dword	.L__profc___cmpdi2-.L__profd___cmpdi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7067747365298492588             # 0x6215aec83ed1d4ac
	.dword	24                              # 0x18
	.dword	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8389943187845644472            # 0x8b90ef1f5ac07f48
	.dword	-7406659272189927428            # 0x993642a254c41ffc
	.dword	.L__profc___cmpti2-.L__profd___cmpti2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5501728155980453225            # 0xb3a5ef643c052a97
	.dword	33814345247                     # 0x7df7df61f
	.dword	.L__profc___ctzsi2-.L__profd___ctzsi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7226039699906943586             # 0x64480cd265d2da62
	.dword	2008                            # 0x7d8
	.dword	.L__profc___ctzti2-.L__profd___ctzti2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7347651670313848928             # 0x65f81a43be5cd060
	.dword	-6109625065311516695            # 0xab36405f8f48c7e9
	.dword	.L__profc___ffsti2-.L__profd___ffsti2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	10441766047587925               # 0x2518bb1c181e55
	.dword	185294818348438616              # 0x2924ca7d2611458
	.dword	.L__profc___lshrdi3-.L__profd___lshrdi3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8202552090810439010            # 0x8e2aae55179b2a9e
	.dword	185294818348438616              # 0x2924ca7d2611458
	.dword	.L__profc___lshrti3-.L__profd___lshrti3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4756674255824047264             # 0x42031a08a2a34ca0
	.dword	24                              # 0x18
	.dword	.L__profc___muldsi3-.L__profd___muldsi3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-737717619142303851             # 0xf5c319bbe679df95
	.dword	24                              # 0x18
	.dword	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	373830907859946247              # 0x5301d3ae50dcb07
	.dword	24                              # 0x18
	.dword	.L__profc___mulddi3-.L__profd___mulddi3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8967568818272694478             # 0x7c733453f80370ce
	.dword	24                              # 0x18
	.dword	.L__profc___multi3-.L__profd___multi3
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2796404983763388037            # 0xd9312c7bb6a6b97b
	.dword	24                              # 0x18
	.dword	.L__profc___negdi2-.L__profd___negdi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8691511294418398176             # 0x789e7379011aabe0
	.dword	24                              # 0x18
	.dword	.L__profc___negti2-.L__profd___negti2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5102883611502574357            # 0xb92eea643e3a04eb
	.dword	24                              # 0x18
	.dword	.L__profc___paritydi2-.L__profd___paritydi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7527016531061130461            # 0x978aaa58479bbb23
	.dword	24                              # 0x18
	.dword	.L__profc___parityti2-.L__profd___parityti2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8495812714014201054             # 0x75e730a6911054de
	.dword	24                              # 0x18
	.dword	.L__profc___paritysi2-.L__profd___paritysi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4342496508124198892             # 0x3c43a5910d1df7ec
	.dword	24                              # 0x18
	.dword	.L__profc___popcountdi2-.L__profd___popcountdi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2149276146439341705            # 0xe22c3cbb6f433977
	.dword	24                              # 0x18
	.dword	.L__profc___popcountsi2-.L__profd___popcountsi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-26294454666068629              # 0xffa295553210fd6b
	.dword	24                              # 0x18
	.dword	.L__profc___popcountti2-.L__profd___popcountti2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1752541073601039051            # 0xe7adb92dcdba7535
	.dword	-4868838055443737378            # 0xbc6e6995b45f54de
	.dword	.L__profc___powidf2-.L__profd___powidf2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3807360110918407144            # 0xcb298a26c0b76c18
	.dword	-4868838055443737378            # 0xbc6e6995b45f54de
	.dword	.L__profc___powisf2-.L__profd___powisf2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2044349310657886323            # 0xe3a10322256c078d
	.dword	-7406659272189927428            # 0x993642a254c41ffc
	.dword	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	448670595368434735              # 0x639ff8782193c2f
	.dword	24                              # 0x18
	.dword	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2719998967855154749             # 0x25bf60a66c6f863d
	.dword	-7406659272189927428            # 0x993642a254c41ffc
	.dword	.L__profc___ucmpti2-.L__profd___ucmpti2
	.dword	0                               # 0x0
	.dword	0
	.dword	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
