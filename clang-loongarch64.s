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
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -48
	bgeu	$a0, $a1, .LBB2_6
	b	.LBB2_1
.LBB2_1:
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
	b	.LBB2_8
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB2_11
	b	.LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_8 Depth=1
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
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 80
                                        # kill: def $r8 killed $r6
	st.d	$a0, $fp, -32
	st.d	$a1, $fp, -40
	st.w	$a2, $fp, -44
	st.d	$a3, $fp, -56
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
	beqz	$a0, .LBB3_3
	b	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $fp, -72
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -64
	st.b	$a0, $a1, 0
	ld.w	$a1, $fp, -44
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.d	$a0, $fp, -80                   # 8-byte Folded Spill
	b	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $fp, -80                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_6
	b	.LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
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
.LBB3_6:
	ld.d	$a0, $fp, -56
	beqz	$a0, .LBB3_8
	b	.LBB3_7
.LBB3_7:
	ld.d	$a0, $fp, -64
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB3_9
.LBB3_8:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB3_9
.LBB3_9:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	5
	.type	memchr,@function
memchr:                                 # @memchr
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
                                        # kill: def $r7 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	st.d	$a2, $fp, -40
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	ld.bu	$a0, $fp, -28
	st.w	$a0, $fp, -28
	b	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -56                   # 8-byte Folded Spill
	beqz	$a0, .LBB4_3
	b	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a0, $fp, -48
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_6
	b	.LBB4_4
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a0, $fp, -48
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	b	.LBB4_1
.LBB4_6:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB4_8
	b	.LBB4_7
.LBB4_7:
	ld.d	$a0, $fp, -48
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB4_9
.LBB4_8:
	move	$a0, $zero
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB4_9
.LBB4_9:
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
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
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	b	.LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -64                   # 8-byte Folded Spill
	beqz	$a0, .LBB5_3
	b	.LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $fp, -48
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -56
	ld.bu	$a1, $a1, 0
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB5_3
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_6
	b	.LBB5_4
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	b	.LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
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
.LBB5_6:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB5_8
	b	.LBB5_7
.LBB5_7:
	ld.d	$a0, $fp, -48
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -56
	ld.bu	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB5_9
.LBB5_8:
	move	$a0, $zero
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB5_9
.LBB5_9:
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
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
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -48
	ldx.bu	$a0, $a0, $a1
	ld.w	$a1, $fp, -36
	bne	$a0, $a1, .LBB7_4
	b	.LBB7_3
.LBB7_3:
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
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	b	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB8_4
	b	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
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
	b	.LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -32
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -24
	st.b	$a0, $a1, 0
	beqz	$a0, .LBB9_4
	b	.LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
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
	ld.bu	$a0, $fp, -28
	st.w	$a0, $fp, -28
	b	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	move	$a1, $zero
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	beqz	$a0, .LBB10_3
	b	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	ld.d	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_6
	b	.LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB10_1
.LBB10_6:
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
	b	.LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -32
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -36
	bne	$a0, $a1, .LBB11_3
	b	.LBB11_2
.LBB11_2:
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB11_6
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	b	.LBB11_4
.LBB11_4:                               #   in Loop: Header=BB11_1 Depth=1
	ld.d	$a0, $fp, -32
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, -32
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB11_1
	b	.LBB11_5
.LBB11_5:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB11_6
.LBB11_6:
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
	b	.LBB12_1
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.b	$a1, $a1, 0
	move	$a2, $zero
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB12_3
	b	.LBB12_2
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB12_3
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_6
	b	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	ld.d	$a0, $fp, -32
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -32
	b	.LBB12_1
.LBB12_6:
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
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB13_4
	b	.LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
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
	st.w	$a0, $fp, -20
	b	.LBB14_11
.LBB14_2:
	b	.LBB14_3
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -56
	ld.bu	$a0, $a0, 0
	move	$a1, $zero
	st.d	$a1, $fp, -72                   # 8-byte Folded Spill
	beqz	$a0, .LBB14_7
	b	.LBB14_4
.LBB14_4:                               #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a0, $fp, -64
	ld.bu	$a0, $a0, 0
	move	$a1, $zero
	st.d	$a1, $fp, -72                   # 8-byte Folded Spill
	beqz	$a0, .LBB14_7
	b	.LBB14_5
.LBB14_5:                               #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a0, $fp, -48
	move	$a1, $zero
	st.d	$a1, $fp, -72                   # 8-byte Folded Spill
	beqz	$a0, .LBB14_7
	b	.LBB14_6
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a0, $fp, -56
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -64
	ld.bu	$a1, $a1, 0
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB14_7
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB14_10
	b	.LBB14_8
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	b	.LBB14_9
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
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
.LBB14_10:
	ld.d	$a0, $fp, -56
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -64
	ld.bu	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	b	.LBB14_11
.LBB14_11:
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
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -20
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB18_2
	b	.LBB18_1
.LBB18_1:
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -9
	sltui	$a0, $a0, 1
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB18_2
.LBB18_2:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	5
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -20
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB19_2
	b	.LBB19_1
.LBB19_1:
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -127
	sltui	$a0, $a0, 1
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB19_2
.LBB19_2:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
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
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -20
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB24_2
	b	.LBB24_1
.LBB24_1:
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -9
	addi.w	$a0, $a0, 0
	sltui	$a0, $a0, 5
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB24_2
.LBB24_2:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
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
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -20
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB26_4
	b	.LBB26_1
.LBB26_1:
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -127
	addi.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	ori	$a1, $zero, 33
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB26_4
	b	.LBB26_2
.LBB26_2:
	ld.w	$a0, $fp, -20
	lu12i.w	$a1, -3
	ori	$a1, $a1, 4056
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	ori	$a1, $zero, 2
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB26_4
	b	.LBB26_3
.LBB26_3:
	ld.w	$a0, $fp, -20
	addu16i.d	$a0, $a0, -1
	addi.w	$a0, $a0, 7
	sltui	$a0, $a0, 3
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB26_4
.LBB26_4:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
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
	ld.w	$a1, $fp, -24
	ori	$a0, $zero, 254
	bltu	$a0, $a1, .LBB28_2
	b	.LBB28_1
.LBB28_1:
	ld.w	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	andi	$a1, $a0, 127
	ori	$a0, $zero, 32
	sltu	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	b	.LBB28_10
.LBB28_2:
	ld.wu	$a0, $fp, -24
	srli.d	$a0, $a0, 3
	ori	$a1, $zero, 1029
	bltu	$a0, $a1, .LBB28_5
	b	.LBB28_3
.LBB28_3:
	ld.w	$a0, $fp, -24
	lu12i.w	$a1, -3
	ori	$a1, $a1, 4054
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	lu12i.w	$a1, 11
	ori	$a1, $a1, 2006
	bltu	$a0, $a1, .LBB28_5
	b	.LBB28_4
.LBB28_4:
	ld.w	$a0, $fp, -24
	lu12i.w	$a1, -14
	add.d	$a0, $a0, $a1
	addi.w	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4088
	bltu	$a0, $a1, .LBB28_6
	b	.LBB28_5
.LBB28_5:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB28_10
.LBB28_6:
	ld.w	$a0, $fp, -24
	addu16i.d	$a0, $a0, -1
	addi.w	$a1, $a0, 4
	lu12i.w	$a0, 256
	ori	$a0, $a0, 3
	bltu	$a0, $a1, .LBB28_8
	b	.LBB28_7
.LBB28_7:
	ld.wu	$a0, $fp, -24
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a0, $a0, 1
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4094
	bne	$a0, $a1, .LBB28_9
	b	.LBB28_8
.LBB28_8:
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB28_10
.LBB28_9:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB28_10
.LBB28_10:
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
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -48
	addi.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	ori	$a1, $zero, 10
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB29_2
	b	.LBB29_1
.LBB29_1:
	ld.w	$a0, $fp, -20
	ori	$a0, $a0, 32
	addi.d	$a0, $a0, -97
	addi.w	$a0, $a0, 0
	sltui	$a0, $a0, 6
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB29_2
.LBB29_2:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
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
	ld.d	$a0, $fp, -32
	bstrpick.d	$a0, $a0, 62, 0
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, 2047
	blt	$a0, $a1, .LBB31_2
	b	.LBB31_1
.LBB31_1:
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
	ld.wu	$a0, $fp, -24
	bstrpick.d	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB32_2
	b	.LBB32_1
.LBB32_1:
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
	ld.d	$a0, $fp, -32
	bstrpick.d	$a0, $a0, 62, 0
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, 2047
	blt	$a0, $a1, .LBB33_2
	b	.LBB33_1
.LBB33_1:
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
	ld.d	$a1, $fp, -32
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB33_7
	b	.LBB33_6
.LBB33_6:
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
	ld.wu	$a0, $fp, -24
	bstrpick.d	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB34_2
	b	.LBB34_1
.LBB34_1:
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
	ld.w	$a1, $fp, -24
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB34_7
	b	.LBB34_6
.LBB34_6:
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
	ld.d	$a1, $fp, -40
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB35_7
	b	.LBB35_6
.LBB35_6:
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
	ld.d	$a0, $fp, -32
	bstrpick.d	$a0, $a0, 62, 0
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, 2047
	blt	$a0, $a1, .LBB36_2
	b	.LBB36_1
.LBB36_1:
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
	ld.d	$a1, $fp, -32
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB36_7
	b	.LBB36_6
.LBB36_6:
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
	ld.wu	$a0, $fp, -24
	bstrpick.d	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB37_2
	b	.LBB37_1
.LBB37_1:
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
	ld.w	$a1, $fp, -24
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB37_7
	b	.LBB37_6
.LBB37_6:
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
	ld.d	$a1, $fp, -40
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB38_7
	b	.LBB38_6
.LBB38_6:
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
	ld.d	$a0, $fp, -24
	st.w	$a0, $fp, -36
	move	$a0, $zero
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
	ld.wu	$a0, $fp, -36
	andi	$a1, $a0, 63
	move	$a0, $zero
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
	ld.w	$a0, $fp, -20
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	move	$a1, $zero
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
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -48
	bnez	$a0, .LBB42_2
	b	.LBB42_1
.LBB42_1:
	ld.d	$a1, $fp, -40
	move	$a0, $zero
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
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -32
	ld.d	$a0, $fp, -32
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB43_2
	b	.LBB43_1
.LBB43_1:
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
	ld.d	$a0, $fp, -56
	st.d	$a0, $fp, -96                   # 8-byte Folded Spill
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -72
	ld.d	$a0, $fp, -48
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, -80
	move	$a0, $zero
	st.d	$a0, $fp, -88
	b	.LBB44_1
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -88
	ld.d	$a1, $fp, -80
	bgeu	$a0, $a1, .LBB44_6
	b	.LBB44_2
.LBB44_2:                               #   in Loop: Header=BB44_1 Depth=1
	ld.d	$a4, $fp, -96                   # 8-byte Folded Reload
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
	ld.d	$a0, $fp, -56
	st.d	$a0, $fp, -96                   # 8-byte Folded Spill
	ld.d	$a0, $fp, -40
	st.d	$a0, $fp, -72
	ld.d	$a0, $fp, -48
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, -80
	move	$a0, $zero
	st.d	$a0, $fp, -88
	b	.LBB45_1
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -88
	ld.d	$a1, $fp, -80
	bgeu	$a0, $a1, .LBB45_6
	b	.LBB45_2
.LBB45_2:                               #   in Loop: Header=BB45_1 Depth=1
	ld.d	$a4, $fp, -96                   # 8-byte Folded Reload
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
	ld.w	$a0, $fp, -20
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB46_2
	b	.LBB46_1
.LBB46_1:
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
	bne	$a0, $a1, .LBB47_7
	b	.LBB47_5
.LBB47_5:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -32
	b	.LBB47_6
.LBB47_6:
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB47_7
.LBB47_7:
	b	.LBB47_8
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	pcalau12i	$ra, %pc_hi20(isdigit)
	addi.d	$t8, $zero, %pc_lo12(isdigit)
	lu32i.d	$t8, %pc64_lo20(isdigit)
	lu52i.d	$t8, $t8, %pc64_hi12(isdigit)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB47_10
	b	.LBB47_9
.LBB47_9:                               #   in Loop: Header=BB47_8 Depth=1
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
	b	.LBB47_8
.LBB47_10:
	ld.w	$a0, $fp, -32
	beqz	$a0, .LBB47_12
	b	.LBB47_11
.LBB47_11:
	ld.w	$a0, $fp, -28
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB47_13
.LBB47_12:
	ld.w	$a1, $fp, -28
	move	$a0, $zero
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB47_13
.LBB47_13:
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
	bne	$a0, $a1, .LBB48_7
	b	.LBB48_5
.LBB48_5:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -36
	b	.LBB48_6
.LBB48_6:
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB48_7
.LBB48_7:
	b	.LBB48_8
.LBB48_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	pcalau12i	$ra, %pc_hi20(isdigit)
	addi.d	$t8, $zero, %pc_lo12(isdigit)
	lu32i.d	$t8, %pc64_lo20(isdigit)
	lu52i.d	$t8, $t8, %pc64_hi12(isdigit)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_10
	b	.LBB48_9
.LBB48_9:                               #   in Loop: Header=BB48_8 Depth=1
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
	b	.LBB48_8
.LBB48_10:
	ld.w	$a0, $fp, -36
	beqz	$a0, .LBB48_12
	b	.LBB48_11
.LBB48_11:
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB48_13
.LBB48_12:
	ld.d	$a1, $fp, -32
	move	$a0, $zero
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB48_13
.LBB48_13:
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
	bne	$a0, $a1, .LBB49_7
	b	.LBB49_5
.LBB49_5:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -36
	b	.LBB49_6
.LBB49_6:
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -24
	b	.LBB49_7
.LBB49_7:
	b	.LBB49_8
.LBB49_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	pcalau12i	$ra, %pc_hi20(isdigit)
	addi.d	$t8, $zero, %pc_lo12(isdigit)
	lu32i.d	$t8, %pc64_lo20(isdigit)
	lu52i.d	$t8, $t8, %pc64_hi12(isdigit)
	add.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_10
	b	.LBB49_9
.LBB49_9:                               #   in Loop: Header=BB49_8 Depth=1
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
	b	.LBB49_8
.LBB49_10:
	ld.w	$a0, $fp, -36
	beqz	$a0, .LBB49_12
	b	.LBB49_11
.LBB49_11:
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB49_13
.LBB49_12:
	ld.d	$a1, $fp, -32
	move	$a0, $zero
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB49_13
.LBB49_13:
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
	b	.LBB50_1
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -48
	beqz	$a0, .LBB50_9
	b	.LBB50_2
.LBB50_2:                               #   in Loop: Header=BB50_1 Depth=1
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
	ld.d	$a0, $fp, -96
	st.d	$a0, $fp, -24
	b	.LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	ld.w	$a0, $fp, -88
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB51_6
	b	.LBB51_5
.LBB51_5:                               #   in Loop: Header=BB51_1 Depth=1
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
	ld.d	$a0, $fp, -24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB53_2
	b	.LBB53_1
.LBB53_1:
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
	ld.d	$a0, $fp, -24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB55_2
	b	.LBB55_1
.LBB55_1:
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
	ld.d	$a0, $fp, -24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB57_2
	b	.LBB57_1
.LBB57_1:
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
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
	st.d	$a0, $fp, -24
	st.w	$a1, $fp, -28
	b	.LBB59_1
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	beqz	$a0, .LBB59_3
	b	.LBB59_2
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB59_3
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB59_6
	b	.LBB59_4
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	b	.LBB59_5
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -24
	b	.LBB59_1
.LBB59_6:
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB59_8
	b	.LBB59_7
.LBB59_7:
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB59_9
.LBB59_8:
	move	$a0, $zero
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB59_9
.LBB59_9:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	5
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	b	.LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	move	$a2, $zero
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB60_4
	b	.LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	beqz	$a0, .LBB60_4
	b	.LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	ld.d	$a0, $fp, -32
	ld.w	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB60_4
.LBB60_4:                               #   in Loop: Header=BB60_1 Depth=1
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB60_7
	b	.LBB60_5
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	b	.LBB60_6
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -24
	ld.d	$a0, $fp, -32
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -32
	b	.LBB60_1
.LBB60_7:
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB60_9
	b	.LBB60_8
.LBB60_8:
	addi.w	$a0, $zero, -1
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB60_10
.LBB60_9:
	ld.d	$a0, $fp, -24
	ld.w	$a1, $a0, 0
	ld.d	$a0, $fp, -32
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB60_10
.LBB60_10:
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
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
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -32
	b	.LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB62_4
	b	.LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
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
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	b	.LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB63_5
	b	.LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	move	$a2, $zero
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB63_5
	b	.LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB63_5
	b	.LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	ld.d	$a0, $fp, -32
	ld.w	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB63_8
	b	.LBB63_6
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_7
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
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
.LBB63_8:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB63_13
	b	.LBB63_9
.LBB63_9:
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB63_11
	b	.LBB63_10
.LBB63_10:
	addi.w	$a0, $zero, -1
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB63_12
.LBB63_11:
	ld.d	$a0, $fp, -24
	ld.w	$a1, $a0, 0
	ld.d	$a0, $fp, -32
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB63_12
.LBB63_12:
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB63_14
.LBB63_13:
	move	$a0, $zero
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB63_14
.LBB63_14:
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
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
	b	.LBB64_1
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB64_3
	b	.LBB64_2
.LBB64_2:                               #   in Loop: Header=BB64_1 Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB64_3
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB64_6
	b	.LBB64_4
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	b	.LBB64_5
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -24
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, -24
	b	.LBB64_1
.LBB64_6:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB64_8
	b	.LBB64_7
.LBB64_7:
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB64_9
.LBB64_8:
	move	$a0, $zero
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB64_9
.LBB64_9:
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
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
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
	b	.LBB65_1
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB65_3
	b	.LBB65_2
.LBB65_2:                               #   in Loop: Header=BB65_1 Depth=1
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB65_3
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB65_6
	b	.LBB65_4
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	b	.LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
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
.LBB65_6:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB65_11
	b	.LBB65_7
.LBB65_7:
	ld.d	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB65_9
	b	.LBB65_8
.LBB65_8:
	addi.w	$a0, $zero, -1
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB65_10
.LBB65_9:
	ld.d	$a0, $fp, -24
	ld.w	$a1, $a0, 0
	ld.d	$a0, $fp, -32
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB65_10
.LBB65_10:
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB65_12
.LBB65_11:
	move	$a0, $zero
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB65_12
.LBB65_12:
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
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
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	bne	$a0, $a1, .LBB67_2
	b	.LBB67_1
.LBB67_1:
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
	b	.LBB67_4
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -48
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, -48
	beqz	$a0, .LBB67_6
	b	.LBB67_5
.LBB67_5:                               #   in Loop: Header=BB67_4 Depth=1
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
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -56
	bgeu	$a0, $a1, .LBB69_6
	b	.LBB69_1
.LBB69_1:
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
	b	.LBB69_8
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB69_11
	b	.LBB69_9
.LBB69_9:                               #   in Loop: Header=BB69_8 Depth=1
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
	ld.d	$a1, $fp, -24
	ld.w	$a3, $fp, -28
	sll.d	$a0, $a1, $a3
	move	$a2, $zero
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
	ld.d	$a1, $fp, -24
	ld.w	$a3, $fp, -28
	srl.d	$a0, $a1, $a3
	move	$a2, $zero
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
	st.w	$a0, $fp, -28
	b	.LBB83_1
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -28
	ori	$a0, $zero, 31
	bltu	$a0, $a1, .LBB83_6
	b	.LBB83_2
.LBB83_2:                               #   in Loop: Header=BB83_1 Depth=1
	ld.w	$a0, $fp, -24
	ld.wu	$a1, $fp, -28
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB83_4
	b	.LBB83_3
.LBB83_3:
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
	ld.w	$a0, $fp, -24
	bnez	$a0, .LBB84_2
	b	.LBB84_1
.LBB84_1:
	move	$a0, $zero
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
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -20
	lu12i.w	$a1, -2049
	ori	$a1, $a1, 4095
	pcalau12i	$ra, %got_pc_hi20(__ltsf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltsf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltsf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltsf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a1, $zero
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB85_2
	b	.LBB85_1
.LBB85_1:
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
	move	$a0, $zero
	slt	$a0, $a0, $a1
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB85_2
.LBB85_2:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end85:
	.size	gl_isinff, .Lfunc_end85-gl_isinff
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	5
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.d	$a0, $fp, -24
	ld.d	$a0, $fp, -24
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, -2
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a1, $zero
	st.d	$a2, $fp, -32                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB86_2
	b	.LBB86_1
.LBB86_1:
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
	move	$a0, $zero
	slt	$a0, $a0, $a1
	st.d	$a0, $fp, -32                   # 8-byte Folded Spill
	b	.LBB86_2
.LBB86_2:
	ld.d	$a0, $fp, -32                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end86:
	.size	gl_isinfd, .Lfunc_end86-gl_isinfd
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	5
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.d	$a1, $fp, -24
	st.d	$a0, $fp, -32
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
	ori	$a2, $zero, 1
	move	$a1, $zero
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB87_2
	b	.LBB87_1
.LBB87_1:
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
	move	$a0, $zero
	slt	$a0, $a0, $a1
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB87_2
.LBB87_2:
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
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
	ld.wu	$a0, $fp, -20
	bstrpick.d	$a1, $a0, 30, 0
	lu12i.w	$a0, 522240
	blt	$a0, $a1, .LBB89_9
	b	.LBB89_1
.LBB89_1:
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
	beqz	$a0, .LBB89_9
	b	.LBB89_2
.LBB89_2:
	ld.w	$a0, $fp, -24
	slti	$a2, $a0, 0
	lu12i.w	$a0, 262144
	masknez	$a1, $a0, $a2
	lu12i.w	$a0, 258048
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	b	.LBB89_3
.LBB89_3:                               # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $fp, -24
	srli.d	$a1, $a0, 31
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB89_5
	b	.LBB89_4
.LBB89_4:                               #   in Loop: Header=BB89_3 Depth=1
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -20
	pcalau12i	$ra, %got_pc_hi20(__mulsf3)
	addi.d	$t8, $zero, %got_pc_lo12(__mulsf3)
	lu32i.d	$t8, %got64_pc_lo20(__mulsf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__mulsf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, -20
	b	.LBB89_5
.LBB89_5:                               #   in Loop: Header=BB89_3 Depth=1
	ld.wu	$a0, $fp, -24
	srli.d	$a1, $a0, 31
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -24
	bnez	$a0, .LBB89_7
	b	.LBB89_6
.LBB89_6:
	b	.LBB89_8
.LBB89_7:                               #   in Loop: Header=BB89_3 Depth=1
	ld.w	$a1, $fp, -28
	move	$a0, $a1
	pcalau12i	$ra, %got_pc_hi20(__mulsf3)
	addi.d	$t8, $zero, %got_pc_lo12(__mulsf3)
	lu32i.d	$t8, %got64_pc_lo20(__mulsf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__mulsf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, -28
	b	.LBB89_3
.LBB89_8:
	b	.LBB89_9
.LBB89_9:
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
	ld.d	$a0, $fp, -24
	bstrpick.d	$a1, $a0, 62, 0
	lu52i.d	$a0, $zero, 2047
	blt	$a0, $a1, .LBB90_9
	b	.LBB90_1
.LBB90_1:
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
	beqz	$a0, .LBB90_9
	b	.LBB90_2
.LBB90_2:
	ld.w	$a0, $fp, -28
	slti	$a2, $a0, 0
	lu52i.d	$a0, $zero, 1024
	masknez	$a1, $a0, $a2
	lu52i.d	$a0, $zero, 1022
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $fp, -40
	b	.LBB90_3
.LBB90_3:                               # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $fp, -28
	srli.d	$a1, $a0, 31
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB90_5
	b	.LBB90_4
.LBB90_4:                               #   in Loop: Header=BB90_3 Depth=1
	ld.d	$a1, $fp, -40
	ld.d	$a0, $fp, -24
	pcalau12i	$ra, %got_pc_hi20(__muldf3)
	addi.d	$t8, $zero, %got_pc_lo12(__muldf3)
	lu32i.d	$t8, %got64_pc_lo20(__muldf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__muldf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -24
	b	.LBB90_5
.LBB90_5:                               #   in Loop: Header=BB90_3 Depth=1
	ld.wu	$a0, $fp, -28
	srli.d	$a1, $a0, 31
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	bnez	$a0, .LBB90_7
	b	.LBB90_6
.LBB90_6:
	b	.LBB90_8
.LBB90_7:                               #   in Loop: Header=BB90_3 Depth=1
	ld.d	$a1, $fp, -40
	move	$a0, $a1
	pcalau12i	$ra, %got_pc_hi20(__muldf3)
	addi.d	$t8, $zero, %got_pc_lo12(__muldf3)
	lu32i.d	$t8, %got64_pc_lo20(__muldf3)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__muldf3)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, -40
	b	.LBB90_3
.LBB90_8:
	b	.LBB90_9
.LBB90_9:
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
	bnez	$a0, .LBB91_9
	b	.LBB91_1
.LBB91_1:
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
	beqz	$a0, .LBB91_9
	b	.LBB91_2
.LBB91_2:
	ld.w	$a0, $fp, -36
	slti	$a2, $a0, 0
	lu52i.d	$a0, $zero, 1024
	masknez	$a1, $a0, $a2
	ori	$a0, $zero, 0
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, 1023
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	move	$a1, $zero
	st.d	$a1, $fp, -64
	st.d	$a0, $fp, -56
	b	.LBB91_3
.LBB91_3:                               # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $fp, -36
	srli.d	$a1, $a0, 31
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB91_5
	b	.LBB91_4
.LBB91_4:                               #   in Loop: Header=BB91_3 Depth=1
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
	b	.LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_3 Depth=1
	ld.wu	$a0, $fp, -36
	srli.d	$a1, $a0, 31
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -36
	bnez	$a0, .LBB91_7
	b	.LBB91_6
.LBB91_6:
	b	.LBB91_8
.LBB91_7:                               #   in Loop: Header=BB91_3 Depth=1
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
	b	.LBB91_3
.LBB91_8:
	b	.LBB91_9
.LBB91_9:
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
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	st.d	$a2, $fp, -40
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
	beqz	$a0, .LBB93_3
	b	.LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
	ld.d	$a0, $fp, -32
	ld.bu	$a0, $a0, 0
	ld.d	$a1, $fp, -48
	st.b	$a0, $a1, 0
	sltu	$a0, $zero, $a0
	st.d	$a0, $fp, -64                   # 8-byte Folded Spill
	b	.LBB93_3
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	ld.d	$a0, $fp, -64                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB93_6
	b	.LBB93_4
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	b	.LBB93_5
.LBB93_5:                               #   in Loop: Header=BB93_1 Depth=1
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
.LBB93_6:
	ld.d	$a0, $fp, -40
	bnez	$a0, .LBB93_8
	b	.LBB93_7
.LBB93_7:
	ld.d	$a1, $fp, -48
	move	$a0, $zero
	st.b	$a0, $a1, 0
	b	.LBB93_8
.LBB93_8:
	ld.d	$a0, $fp, -24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end93:
	.size	strncat, .Lfunc_end93-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	5
	.type	strnlen,@function
strnlen:                                # @strnlen
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
	st.d	$a0, $fp, -24
	st.d	$a1, $fp, -32
	move	$a0, $zero
	st.d	$a0, $fp, -40
	b	.LBB94_1
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -32
	move	$a2, $zero
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB94_3
	b	.LBB94_2
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
	ld.d	$a0, $fp, -24
	ld.d	$a1, $fp, -40
	ldx.b	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB94_6
	b	.LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	b	.LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	ld.d	$a0, $fp, -40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -40
	b	.LBB94_1
.LBB94_6:
	ld.d	$a0, $fp, -40
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
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
	b	.LBB95_1
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	ld.d	$a0, $fp, -32
	ld.b	$a0, $a0, 0
	beqz	$a0, .LBB95_8
	b	.LBB95_2
.LBB95_2:                               #   in Loop: Header=BB95_1 Depth=1
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
	ld.d	$a0, $fp, -48
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, -48
	ld.b	$a0, $a0, 0
	ld.d	$a1, $fp, -32
	ld.b	$a1, $a1, 0
	bne	$a0, $a1, .LBB95_6
	b	.LBB95_5
.LBB95_5:
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
	st.d	$a0, $fp, -40
	b	.LBB96_1
.LBB96_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	bne	$a0, $a1, .LBB96_3
	b	.LBB96_2
.LBB96_2:                               #   in Loop: Header=BB96_1 Depth=1
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -40
	b	.LBB96_3
.LBB96_3:                               #   in Loop: Header=BB96_1 Depth=1
	b	.LBB96_4
.LBB96_4:                               #   in Loop: Header=BB96_1 Depth=1
	ld.d	$a0, $fp, -24
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, -24
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB96_1
	b	.LBB96_5
.LBB96_5:
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
	ld.d	$a0, $fp, -32
	move	$a1, $zero
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB98_2
	b	.LBB98_1
.LBB98_1:
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	pcalau12i	$ra, %got_pc_hi20(__gtdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gtdf2)
	lu32i.d	$t8, %got64_pc_lo20(__gtdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gtdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB98_4
	b	.LBB98_2
.LBB98_2:
	ld.d	$a0, $fp, -32
	move	$a1, $zero
	pcalau12i	$ra, %got_pc_hi20(__gtdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gtdf2)
	lu32i.d	$t8, %got64_pc_lo20(__gtdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gtdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB98_5
	b	.LBB98_3
.LBB98_3:
	ld.d	$a0, $fp, -40
	move	$a1, $zero
	pcalau12i	$ra, %got_pc_hi20(__ltdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__ltdf2)
	lu32i.d	$t8, %got64_pc_lo20(__ltdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__ltdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB98_5
	b	.LBB98_4
.LBB98_4:
	ld.d	$a0, $fp, -32
	lu52i.d	$a1, $zero, -2048
	xor	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	b	.LBB98_6
.LBB98_5:
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB98_6
.LBB98_6:
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
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB99_12
.LBB99_2:
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -56
	bgeu	$a0, $a1, .LBB99_4
	b	.LBB99_3
.LBB99_3:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB99_12
.LBB99_4:
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -64
	b	.LBB99_5
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, -64
	ld.d	$a0, $fp, -72
	bltu	$a0, $a1, .LBB99_11
	b	.LBB99_6
.LBB99_6:                               #   in Loop: Header=BB99_5 Depth=1
	ld.d	$a0, $fp, -64
	ld.b	$a0, $a0, 0
	ld.d	$a1, $fp, -48
	ld.b	$a1, $a1, 0
	bne	$a0, $a1, .LBB99_9
	b	.LBB99_7
.LBB99_7:                               #   in Loop: Header=BB99_5 Depth=1
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
	bnez	$a0, .LBB99_9
	b	.LBB99_8
.LBB99_8:
	ld.d	$a0, $fp, -64
	st.d	$a0, $fp, -24
	b	.LBB99_12
.LBB99_9:                               #   in Loop: Header=BB99_5 Depth=1
	b	.LBB99_10
.LBB99_10:                              #   in Loop: Header=BB99_5 Depth=1
	ld.d	$a0, $fp, -64
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, -64
	b	.LBB99_5
.LBB99_11:
	move	$a0, $zero
	st.d	$a0, $fp, -24
	b	.LBB99_12
.LBB99_12:
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
	b	.LBB101_14
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
	blt	$a0, $a1, .LBB101_13
	b	.LBB101_8
.LBB101_8:
	ld.d	$a0, $fp, -24
	move	$a1, $zero
	pcalau12i	$ra, %got_pc_hi20(__eqdf2)
	addi.d	$t8, $zero, %got_pc_lo12(__eqdf2)
	lu32i.d	$t8, %got64_pc_lo20(__eqdf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__eqdf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB101_13
	b	.LBB101_9
.LBB101_9:
	b	.LBB101_10
.LBB101_10:                             # =>This Inner Loop Header: Depth=1
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
	blt	$a0, $a1, .LBB101_12
	b	.LBB101_11
.LBB101_11:                             #   in Loop: Header=BB101_10 Depth=1
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
	b	.LBB101_10
.LBB101_12:
	b	.LBB101_13
.LBB101_13:
	b	.LBB101_14
.LBB101_14:
	ld.w	$a0, $fp, -40
	ld.d	$a1, $fp, -32
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, -36
	beqz	$a0, .LBB101_16
	b	.LBB101_15
.LBB101_15:
	ld.d	$a0, $fp, -24
	lu52i.d	$a1, $zero, -2048
	xor	$a0, $a0, $a1
	st.d	$a0, $fp, -24
	b	.LBB101_16
.LBB101_16:
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
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -48
	b	.LBB102_1
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -48
	beqz	$a0, .LBB102_5
	b	.LBB102_2
.LBB102_2:                              #   in Loop: Header=BB102_1 Depth=1
	ld.bu	$a0, $fp, -48
	andi	$a0, $a0, 1
	beqz	$a0, .LBB102_4
	b	.LBB102_3
.LBB102_3:                              #   in Loop: Header=BB102_1 Depth=1
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
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -44
	move	$a0, $zero
	st.w	$a0, $fp, -48
	b	.LBB103_1
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -24
	move	$a2, $zero
	st.d	$a2, $fp, -56                   # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB103_4
	b	.LBB103_2
.LBB103_2:                              #   in Loop: Header=BB103_1 Depth=1
	ld.w	$a0, $fp, -44
	move	$a1, $zero
	st.d	$a1, $fp, -56                   # 8-byte Folded Spill
	beqz	$a0, .LBB103_4
	b	.LBB103_3
.LBB103_3:                              #   in Loop: Header=BB103_1 Depth=1
	ld.wu	$a0, $fp, -28
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB103_4
.LBB103_4:                              #   in Loop: Header=BB103_1 Depth=1
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB103_6
	b	.LBB103_5
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	ld.w	$a0, $fp, -28
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -44
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -44
	b	.LBB103_1
.LBB103_6:
	b	.LBB103_7
.LBB103_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -44
	beqz	$a0, .LBB103_11
	b	.LBB103_8
.LBB103_8:                              #   in Loop: Header=BB103_7 Depth=1
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bltu	$a0, $a1, .LBB103_10
	b	.LBB103_9
.LBB103_9:                              #   in Loop: Header=BB103_7 Depth=1
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -24
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a1, $fp, -44
	ld.w	$a0, $fp, -48
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -48
	b	.LBB103_10
.LBB103_10:                             #   in Loop: Header=BB103_7 Depth=1
	ld.wu	$a0, $fp, -44
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -44
	ld.wu	$a0, $fp, -28
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB103_7
.LBB103_11:
	ld.d	$a0, $fp, -40
	beqz	$a0, .LBB103_13
	b	.LBB103_12
.LBB103_12:
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB103_14
.LBB103_13:
	ld.w	$a0, $fp, -48
	st.w	$a0, $fp, -20
	b	.LBB103_14
.LBB103_14:
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
	ld.b	$a1, $fp, -21
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB104_2
	b	.LBB104_1
.LBB104_1:
	ld.b	$a0, $fp, -21
	nor	$a0, $a0, $zero
	st.b	$a0, $fp, -21
	b	.LBB104_2
.LBB104_2:
	ld.b	$a0, $fp, -21
	bnez	$a0, .LBB104_4
	b	.LBB104_3
.LBB104_3:
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
	ld.d	$a1, $fp, -32
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB105_2
	b	.LBB105_1
.LBB105_1:
	ld.d	$a0, $fp, -32
	nor	$a0, $a0, $zero
	st.d	$a0, $fp, -32
	b	.LBB105_2
.LBB105_2:
	ld.d	$a0, $fp, -32
	bnez	$a0, .LBB105_4
	b	.LBB105_3
.LBB105_3:
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
	st.w	$a0, $fp, -28
	b	.LBB106_1
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB106_5
	b	.LBB106_2
.LBB106_2:                              #   in Loop: Header=BB106_1 Depth=1
	ld.bu	$a0, $fp, -20
	andi	$a0, $a0, 1
	beqz	$a0, .LBB106_4
	b	.LBB106_3
.LBB106_3:                              #   in Loop: Header=BB106_1 Depth=1
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
	bltu	$a0, $a1, .LBB107_2
	b	.LBB107_1
.LBB107_1:
	ld.d	$a1, $fp, -56
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	add.d	$a0, $a0, $a2
	bgeu	$a0, $a1, .LBB107_10
	b	.LBB107_2
.LBB107_2:
	move	$a0, $zero
	st.w	$a0, $fp, -40
	b	.LBB107_3
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -44
	bgeu	$a0, $a1, .LBB107_6
	b	.LBB107_4
.LBB107_4:                              #   in Loop: Header=BB107_3 Depth=1
	ld.d	$a0, $fp, -32
	ld.wu	$a1, $fp, -40
	slli.d	$a2, $a1, 3
	ldx.d	$a0, $a0, $a2
	ld.d	$a1, $fp, -24
	stx.d	$a0, $a1, $a2
	b	.LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_3 Depth=1
	ld.w	$a0, $fp, -40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -40
	b	.LBB107_3
.LBB107_6:
	b	.LBB107_7
.LBB107_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -48
	bgeu	$a0, $a1, .LBB107_9
	b	.LBB107_8
.LBB107_8:                              #   in Loop: Header=BB107_7 Depth=1
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -48
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	ld.w	$a0, $fp, -48
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -48
	b	.LBB107_7
.LBB107_9:
	b	.LBB107_14
.LBB107_10:
	b	.LBB107_11
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -36
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, -36
	beqz	$a0, .LBB107_13
	b	.LBB107_12
.LBB107_12:                             #   in Loop: Header=BB107_11 Depth=1
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	b	.LBB107_11
.LBB107_13:
	b	.LBB107_14
.LBB107_14:
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
	ld.wu	$a0, $fp, -36
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -44
	ld.d	$a0, $fp, -24
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -64
	ld.d	$a0, $fp, -56
	ld.d	$a1, $fp, -64
	bltu	$a0, $a1, .LBB108_2
	b	.LBB108_1
.LBB108_1:
	ld.d	$a1, $fp, -56
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	add.d	$a0, $a0, $a2
	bgeu	$a0, $a1, .LBB108_9
	b	.LBB108_2
.LBB108_2:
	move	$a0, $zero
	st.w	$a0, $fp, -40
	b	.LBB108_3
.LBB108_3:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -44
	bgeu	$a0, $a1, .LBB108_6
	b	.LBB108_4
.LBB108_4:                              #   in Loop: Header=BB108_3 Depth=1
	ld.d	$a0, $fp, -32
	ld.wu	$a1, $fp, -40
	slli.d	$a2, $a1, 1
	ldx.h	$a0, $a0, $a2
	ld.d	$a1, $fp, -24
	stx.h	$a0, $a1, $a2
	b	.LBB108_5
.LBB108_5:                              #   in Loop: Header=BB108_3 Depth=1
	ld.w	$a0, $fp, -40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -40
	b	.LBB108_3
.LBB108_6:
	ld.bu	$a0, $fp, -36
	andi	$a0, $a0, 1
	beqz	$a0, .LBB108_8
	b	.LBB108_7
.LBB108_7:
	ld.d	$a0, $fp, -64
	ld.w	$a1, $fp, -36
	addi.d	$a1, $a1, -1
	bstrpick.d	$a2, $a1, 31, 0
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	b	.LBB108_8
.LBB108_8:
	b	.LBB108_13
.LBB108_9:
	b	.LBB108_10
.LBB108_10:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -36
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, -36
	beqz	$a0, .LBB108_12
	b	.LBB108_11
.LBB108_11:                             #   in Loop: Header=BB108_10 Depth=1
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	b	.LBB108_10
.LBB108_12:
	b	.LBB108_13
.LBB108_13:
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
	bltu	$a0, $a1, .LBB109_2
	b	.LBB109_1
.LBB109_1:
	ld.d	$a1, $fp, -56
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	add.d	$a0, $a0, $a2
	bgeu	$a0, $a1, .LBB109_10
	b	.LBB109_2
.LBB109_2:
	move	$a0, $zero
	st.w	$a0, $fp, -40
	b	.LBB109_3
.LBB109_3:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -44
	bgeu	$a0, $a1, .LBB109_6
	b	.LBB109_4
.LBB109_4:                              #   in Loop: Header=BB109_3 Depth=1
	ld.d	$a0, $fp, -32
	ld.wu	$a1, $fp, -40
	slli.d	$a2, $a1, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a1, $fp, -24
	stx.w	$a0, $a1, $a2
	b	.LBB109_5
.LBB109_5:                              #   in Loop: Header=BB109_3 Depth=1
	ld.w	$a0, $fp, -40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -40
	b	.LBB109_3
.LBB109_6:
	b	.LBB109_7
.LBB109_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -48
	bgeu	$a0, $a1, .LBB109_9
	b	.LBB109_8
.LBB109_8:                              #   in Loop: Header=BB109_7 Depth=1
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -48
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	ld.w	$a0, $fp, -48
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, -48
	b	.LBB109_7
.LBB109_9:
	b	.LBB109_14
.LBB109_10:
	b	.LBB109_11
.LBB109_11:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -36
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, -36
	beqz	$a0, .LBB109_13
	b	.LBB109_12
.LBB109_12:                             #   in Loop: Header=BB109_11 Depth=1
	ld.d	$a0, $fp, -64
	ld.wu	$a2, $fp, -36
	ldx.b	$a0, $a0, $a2
	ld.d	$a1, $fp, -56
	stx.b	$a0, $a1, $a2
	b	.LBB109_11
.LBB109_13:
	b	.LBB109_14
.LBB109_14:
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
	st.w	$a0, $fp, -24
	b	.LBB116_1
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -24
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB116_6
	b	.LBB116_2
.LBB116_2:                              #   in Loop: Header=BB116_1 Depth=1
	ld.hu	$a0, $fp, -18
	ld.w	$a2, $fp, -24
	ori	$a1, $zero, 15
	sub.d	$a1, $a1, $a2
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB116_4
	b	.LBB116_3
.LBB116_3:
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
	st.w	$a0, $fp, -24
	b	.LBB117_1
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -24
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB117_6
	b	.LBB117_2
.LBB117_2:                              #   in Loop: Header=BB117_1 Depth=1
	ld.hu	$a0, $fp, -18
	ld.wu	$a1, $fp, -24
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB117_4
	b	.LBB117_3
.LBB117_3:
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
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	lu12i.w	$a1, 290816
	pcalau12i	$ra, %got_pc_hi20(__gesf2)
	addi.d	$t8, $zero, %got_pc_lo12(__gesf2)
	lu32i.d	$t8, %got64_pc_lo20(__gesf2)
	lu52i.d	$t8, $t8, %got64_pc_hi12(__gesf2)
	ldx.d	$ra, $t8, $ra
	jirl	$ra, $ra, 0
	move	$a1, $zero
	blt	$a0, $a1, .LBB118_2
	b	.LBB118_1
.LBB118_1:
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
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
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
	st.w	$a0, $fp, -28
	st.w	$a0, $fp, -24
	b	.LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -24
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB119_6
	b	.LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
	ld.hu	$a0, $fp, -18
	ld.wu	$a1, $fp, -24
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB119_4
	b	.LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
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
	st.w	$a0, $fp, -28
	st.w	$a0, $fp, -24
	b	.LBB120_1
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -24
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB120_6
	b	.LBB120_2
.LBB120_2:                              #   in Loop: Header=BB120_1 Depth=1
	ld.hu	$a0, $fp, -18
	ld.wu	$a1, $fp, -24
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB120_4
	b	.LBB120_3
.LBB120_3:                              #   in Loop: Header=BB120_1 Depth=1
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
	st.w	$a0, $fp, -28
	b	.LBB121_1
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB121_5
	b	.LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	ld.bu	$a0, $fp, -20
	andi	$a0, $a0, 1
	beqz	$a0, .LBB121_4
	b	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
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
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -24
	bnez	$a0, .LBB122_2
	b	.LBB122_1
.LBB122_1:
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB122_8
.LBB122_2:
	b	.LBB122_3
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB122_7
	b	.LBB122_4
.LBB122_4:                              #   in Loop: Header=BB122_3 Depth=1
	ld.bu	$a0, $fp, -28
	andi	$a0, $a0, 1
	beqz	$a0, .LBB122_6
	b	.LBB122_5
.LBB122_5:                              #   in Loop: Header=BB122_3 Depth=1
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
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 48
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.w	$a0, $fp, -24
	st.w	$a1, $fp, -28
	st.w	$a2, $fp, -32
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -36
	move	$a0, $zero
	st.w	$a0, $fp, -40
	b	.LBB123_1
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -24
	move	$a2, $zero
	st.d	$a2, $fp, -48                   # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB123_4
	b	.LBB123_2
.LBB123_2:                              #   in Loop: Header=BB123_1 Depth=1
	ld.w	$a0, $fp, -36
	move	$a1, $zero
	st.d	$a1, $fp, -48                   # 8-byte Folded Spill
	beqz	$a0, .LBB123_4
	b	.LBB123_3
.LBB123_3:                              #   in Loop: Header=BB123_1 Depth=1
	ld.wu	$a0, $fp, -28
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB123_4
.LBB123_4:                              #   in Loop: Header=BB123_1 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB123_6
	b	.LBB123_5
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	ld.w	$a0, $fp, -28
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -36
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -36
	b	.LBB123_1
.LBB123_6:
	b	.LBB123_7
.LBB123_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -36
	beqz	$a0, .LBB123_11
	b	.LBB123_8
.LBB123_8:                              #   in Loop: Header=BB123_7 Depth=1
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bltu	$a0, $a1, .LBB123_10
	b	.LBB123_9
.LBB123_9:                              #   in Loop: Header=BB123_7 Depth=1
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -24
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -40
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -40
	b	.LBB123_10
.LBB123_10:                             #   in Loop: Header=BB123_7 Depth=1
	ld.wu	$a0, $fp, -36
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -36
	ld.wu	$a0, $fp, -28
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB123_7
.LBB123_11:
	ld.w	$a0, $fp, -32
	beqz	$a0, .LBB123_13
	b	.LBB123_12
.LBB123_12:
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB123_14
.LBB123_13:
	ld.w	$a0, $fp, -40
	st.w	$a0, $fp, -20
	b	.LBB123_14
.LBB123_14:
	ld.w	$a0, $fp, -20
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
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
	st.w	$a0, $fp, -32
	st.w	$a0, $fp, -36
	ld.w	$a1, $fp, -24
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB128_2
	b	.LBB128_1
.LBB128_1:
	ld.w	$a1, $fp, -24
	move	$a0, $zero
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
	beqz	$a0, .LBB128_5
	b	.LBB128_4
.LBB128_4:                              #   in Loop: Header=BB128_3 Depth=1
	ld.b	$a0, $fp, -25
	sltui	$a0, $a0, 32
	st.d	$a0, $fp, -48                   # 8-byte Folded Spill
	b	.LBB128_5
.LBB128_5:                              #   in Loop: Header=BB128_3 Depth=1
	ld.d	$a0, $fp, -48                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB128_10
	b	.LBB128_6
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	ld.bu	$a0, $fp, -24
	andi	$a0, $a0, 1
	beqz	$a0, .LBB128_8
	b	.LBB128_7
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -36
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	b	.LBB128_8
.LBB128_8:                              #   in Loop: Header=BB128_3 Depth=1
	ld.w	$a0, $fp, -20
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -24
	srli.d	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB128_9
.LBB128_9:                              #   in Loop: Header=BB128_3 Depth=1
	ld.b	$a0, $fp, -25
	addi.d	$a0, $a0, 1
	st.b	$a0, $fp, -25
	b	.LBB128_3
.LBB128_10:
	ld.w	$a0, $fp, -32
	beqz	$a0, .LBB128_12
	b	.LBB128_11
.LBB128_11:
	ld.w	$a1, $fp, -36
	move	$a0, $zero
	sub.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB128_13
.LBB128_12:
	ld.w	$a0, $fp, -36
	st.d	$a0, $fp, -56                   # 8-byte Folded Spill
	b	.LBB128_13
.LBB128_13:
	ld.d	$a0, $fp, -56                   # 8-byte Folded Reload
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
	st.w	$a0, $fp, -36
	ld.d	$a1, $fp, -24
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB129_2
	b	.LBB129_1
.LBB129_1:
	ld.d	$a1, $fp, -24
	move	$a0, $zero
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
	ld.d	$a1, $fp, -32
	move	$a0, $zero
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
	ld.d	$a1, $fp, -48
	move	$a0, $zero
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
	st.w	$a0, $fp, -36
	ld.d	$a1, $fp, -24
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB130_2
	b	.LBB130_1
.LBB130_1:
	ld.d	$a1, $fp, -24
	move	$a0, $zero
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
	ld.d	$a1, $fp, -32
	move	$a0, $zero
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
	ld.d	$a1, $fp, -48
	move	$a0, $zero
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
	ori	$a0, $zero, 1
	st.h	$a0, $fp, -30
	move	$a0, $zero
	st.h	$a0, $fp, -32
	b	.LBB131_1
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, -22
	ld.hu	$a1, $fp, -20
	move	$a2, $zero
	st.d	$a2, $fp, -40                   # 8-byte Folded Spill
	bge	$a0, $a1, .LBB131_4
	b	.LBB131_2
.LBB131_2:                              #   in Loop: Header=BB131_1 Depth=1
	ld.hu	$a0, $fp, -30
	move	$a1, $zero
	st.d	$a1, $fp, -40                   # 8-byte Folded Spill
	beqz	$a0, .LBB131_4
	b	.LBB131_3
.LBB131_3:                              #   in Loop: Header=BB131_1 Depth=1
	ld.hu	$a0, $fp, -22
	lu12i.w	$a1, 8
	and	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	st.d	$a0, $fp, -40                   # 8-byte Folded Spill
	b	.LBB131_4
.LBB131_4:                              #   in Loop: Header=BB131_1 Depth=1
	ld.d	$a0, $fp, -40                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB131_6
	b	.LBB131_5
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	ld.h	$a0, $fp, -22
	slli.d	$a0, $a0, 1
	st.h	$a0, $fp, -22
	ld.h	$a0, $fp, -30
	slli.d	$a0, $a0, 1
	st.h	$a0, $fp, -30
	b	.LBB131_1
.LBB131_6:
	b	.LBB131_7
.LBB131_7:                              # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, -30
	beqz	$a0, .LBB131_11
	b	.LBB131_8
.LBB131_8:                              #   in Loop: Header=BB131_7 Depth=1
	ld.hu	$a0, $fp, -20
	ld.hu	$a1, $fp, -22
	blt	$a0, $a1, .LBB131_10
	b	.LBB131_9
.LBB131_9:                              #   in Loop: Header=BB131_7 Depth=1
	ld.h	$a1, $fp, -22
	ld.h	$a0, $fp, -20
	sub.d	$a0, $a0, $a1
	st.h	$a0, $fp, -20
	ld.h	$a1, $fp, -30
	ld.h	$a0, $fp, -32
	or	$a0, $a0, $a1
	st.h	$a0, $fp, -32
	b	.LBB131_10
.LBB131_10:                             #   in Loop: Header=BB131_7 Depth=1
	ld.hu	$a0, $fp, -30
	srli.d	$a0, $a0, 1
	st.h	$a0, $fp, -30
	ld.hu	$a0, $fp, -22
	srli.d	$a0, $a0, 1
	st.h	$a0, $fp, -22
	b	.LBB131_7
.LBB131_11:
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB131_13
	b	.LBB131_12
.LBB131_12:
	ld.h	$a0, $fp, -20
	st.h	$a0, $fp, -18
	b	.LBB131_14
.LBB131_13:
	ld.h	$a0, $fp, -32
	st.h	$a0, $fp, -18
	b	.LBB131_14
.LBB131_14:
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
	ori	$a0, $zero, 1
	st.d	$a0, $fp, -56
	move	$a0, $zero
	st.d	$a0, $fp, -64
	b	.LBB132_1
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -40
	ld.d	$a1, $fp, -32
	move	$a2, $zero
	st.d	$a2, $fp, -72                   # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB132_4
	b	.LBB132_2
.LBB132_2:                              #   in Loop: Header=BB132_1 Depth=1
	ld.d	$a0, $fp, -56
	move	$a1, $zero
	st.d	$a1, $fp, -72                   # 8-byte Folded Spill
	beqz	$a0, .LBB132_4
	b	.LBB132_3
.LBB132_3:                              #   in Loop: Header=BB132_1 Depth=1
	ld.bu	$a0, $fp, -37
	andi	$a0, $a0, 128
	sltui	$a0, $a0, 1
	st.d	$a0, $fp, -72                   # 8-byte Folded Spill
	b	.LBB132_4
.LBB132_4:                              #   in Loop: Header=BB132_1 Depth=1
	ld.d	$a0, $fp, -72                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB132_6
	b	.LBB132_5
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	ld.d	$a0, $fp, -40
	slli.d	$a0, $a0, 1
	st.d	$a0, $fp, -40
	ld.d	$a0, $fp, -56
	slli.d	$a0, $a0, 1
	st.d	$a0, $fp, -56
	b	.LBB132_1
.LBB132_6:
	b	.LBB132_7
.LBB132_7:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -56
	beqz	$a0, .LBB132_11
	b	.LBB132_8
.LBB132_8:                              #   in Loop: Header=BB132_7 Depth=1
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -40
	bltu	$a0, $a1, .LBB132_10
	b	.LBB132_9
.LBB132_9:                              #   in Loop: Header=BB132_7 Depth=1
	ld.d	$a1, $fp, -40
	ld.d	$a0, $fp, -32
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, -32
	ld.d	$a1, $fp, -56
	ld.d	$a0, $fp, -64
	or	$a0, $a0, $a1
	st.d	$a0, $fp, -64
	b	.LBB132_10
.LBB132_10:                             #   in Loop: Header=BB132_7 Depth=1
	ld.d	$a0, $fp, -56
	srli.d	$a0, $a0, 1
	st.d	$a0, $fp, -56
	ld.d	$a0, $fp, -40
	srli.d	$a0, $a0, 1
	st.d	$a0, $fp, -40
	b	.LBB132_7
.LBB132_11:
	ld.w	$a0, $fp, -44
	beqz	$a0, .LBB132_13
	b	.LBB132_12
.LBB132_12:
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -24
	b	.LBB132_14
.LBB132_13:
	ld.d	$a0, $fp, -64
	st.d	$a0, $fp, -24
	b	.LBB132_14
.LBB132_14:
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
	ori	$a0, $zero, 32
	st.w	$a0, $fp, -40
	ld.d	$a0, $fp, -32
	st.d	$a0, $fp, -48
	ld.bu	$a0, $fp, -36
	andi	$a0, $a0, 32
	beqz	$a0, .LBB135_2
	b	.LBB135_1
.LBB135_1:
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
	sub.d	$a2, $a1, $a0
	ld.w	$a0, $fp, -24
	srl.w	$a0, $a0, $a2
	st.w	$a0, $fp, -24
	ld.w	$a2, $fp, -28
	ld.w	$a0, $fp, -32
	add.d	$a0, $a0, $a2
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -32
	ld.wu	$a2, $fp, -24
	sub.d	$a1, $a1, $a2
	andi	$a2, $a2, 2
	sltui	$a3, $a2, 1
	move	$a2, $zero
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
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -40
	sltui	$a1, $a0, 1
	move	$a0, $zero
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
	st.w	$a0, $fp, -20
	b	.LBB141_9
.LBB141_2:
	ld.w	$a1, $fp, -44
	ld.w	$a0, $fp, -52
	bge	$a0, $a1, .LBB141_4
	b	.LBB141_3
.LBB141_3:
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
	st.w	$a0, $fp, -20
	b	.LBB141_9
.LBB141_6:
	ld.w	$a1, $fp, -48
	ld.w	$a0, $fp, -56
	bgeu	$a0, $a1, .LBB141_8
	b	.LBB141_7
.LBB141_7:
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
	st.w	$a0, $fp, -20
	b	.LBB143_9
.LBB143_2:
	ld.d	$a1, $fp, -72
	ld.d	$a0, $fp, -88
	bge	$a0, $a1, .LBB143_4
	b	.LBB143_3
.LBB143_3:
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
	st.w	$a0, $fp, -20
	b	.LBB143_9
.LBB143_6:
	ld.d	$a1, $fp, -80
	ld.d	$a0, $fp, -96
	bgeu	$a0, $a1, .LBB143_8
	b	.LBB143_7
.LBB143_7:
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
	ld.d	$a0, $fp, -32
	ld.d	$a1, $fp, -24
	st.d	$a1, $fp, -40
	st.d	$a0, $fp, -48
	ld.d	$a0, $fp, -48
	sltui	$a1, $a0, 1
	move	$a0, $zero
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
	ld.d	$a0, $fp, -48
	ld.d	$a1, $fp, -40
	st.d	$a1, $fp, -56
	st.d	$a0, $fp, -64
	ld.d	$a0, $fp, -64
	bnez	$a0, .LBB146_4
	b	.LBB146_1
.LBB146_1:
	ld.d	$a0, $fp, -56
	bnez	$a0, .LBB146_3
	b	.LBB146_2
.LBB146_2:
	move	$a0, $zero
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
	ld.d	$a1, $fp, -24
	move	$a0, $zero
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
	ld.d	$a2, $fp, -24
	ld.d	$a3, $fp, -32
	move	$a1, $zero
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
	ld.wu	$a0, $fp, -28
	srli.d	$a0, $a0, 31
	st.w	$a0, $fp, -32
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $fp, -40
	b	.LBB161_1
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, -28
	andi	$a0, $a0, 1
	beqz	$a0, .LBB161_3
	b	.LBB161_2
.LBB161_2:                              #   in Loop: Header=BB161_1 Depth=1
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
	ld.wu	$a0, $fp, -24
	srli.d	$a0, $a0, 31
	st.w	$a0, $fp, -28
	lu12i.w	$a0, 260096
	st.w	$a0, $fp, -32
	b	.LBB162_1
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, -24
	andi	$a0, $a0, 1
	beqz	$a0, .LBB162_3
	b	.LBB162_2
.LBB162_2:                              #   in Loop: Header=BB162_1 Depth=1
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
	st.w	$a0, $fp, -20
	b	.LBB163_9
.LBB163_2:
	ld.w	$a1, $fp, -44
	ld.w	$a0, $fp, -52
	bgeu	$a0, $a1, .LBB163_4
	b	.LBB163_3
.LBB163_3:
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
	st.w	$a0, $fp, -20
	b	.LBB163_9
.LBB163_6:
	ld.w	$a1, $fp, -48
	ld.w	$a0, $fp, -56
	bgeu	$a0, $a1, .LBB163_8
	b	.LBB163_7
.LBB163_7:
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
	st.w	$a0, $fp, -20
	b	.LBB165_9
.LBB165_2:
	ld.d	$a1, $fp, -72
	ld.d	$a0, $fp, -88
	bgeu	$a0, $a1, .LBB165_4
	b	.LBB165_3
.LBB165_3:
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
	st.w	$a0, $fp, -20
	b	.LBB165_9
.LBB165_6:
	ld.d	$a1, $fp, -80
	ld.d	$a0, $fp, -96
	bgeu	$a0, $a1, .LBB165_8
	b	.LBB165_7
.LBB165_7:
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
