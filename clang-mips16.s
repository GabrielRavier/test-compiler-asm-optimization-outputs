	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	softfloat
	.module	oddspreg
	.text
	.file	"mini-libc.c"
	.globl	memmove                         # -- Begin function memmove
	.p2align	2
	.type	memmove,@function
	.set	nomicromips
	.set	mips16
	.ent	memmove
memmove:                                # @memmove
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	sw	$6, 8($16)
	lw	$2, 16($16)
	sw	$2, 4($16)
	lw	$2, 12($16)
	sw	$2, 0($16)
	lw	$2, 0($16)
	lw	$3, 4($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB0_6  # 16 bit inst
	b	$BB0_1 # 16 bit inst
$BB0_1:
	lw	$3, 8($16)
	lw	$2, 0($16)
	addu	$2, $2, $3
	sw	$2, 0($16)
	lw	$3, 8($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	b	$BB0_2 # 16 bit inst
$BB0_2:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB0_5  # 16 bit inst
	b	$BB0_3 # 16 bit inst
$BB0_3:                                 #   in Loop: Header=BB0_2 Depth=1
	lw	$2, 0($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 0($16)
	lbu	$2, -1($2)
	lw	$3, 4($16)
	move	$4, $3
	addiu	$4, -1	# 16 bit inst
	sw	$4, 4($16)
	sb	$2, -1($3)
	b	$BB0_4 # 16 bit inst
$BB0_4:                                 #   in Loop: Header=BB0_2 Depth=1
	lw	$2, 8($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB0_2 # 16 bit inst
$BB0_5:
	b	$BB0_13 # 16 bit inst
$BB0_6:
	lw	$2, 0($16)
	lw	$3, 4($16)
	cmp	$2, $3
	bteqz	$BB0_12  # 16 bit inst
	b	$BB0_7 # 16 bit inst
$BB0_7:
	b	$BB0_8 # 16 bit inst
$BB0_8:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB0_11  # 16 bit inst
	b	$BB0_9 # 16 bit inst
$BB0_9:                                 #   in Loop: Header=BB0_8 Depth=1
	lw	$2, 0($16)
	move	$3, $2
	addiu	$3, 1	# 16 bit inst
	sw	$3, 0($16)
	lbu	$2, 0($2)
	lw	$3, 4($16)
	move	$4, $3
	addiu	$4, 1	# 16 bit inst
	sw	$4, 4($16)
	sb	$2, 0($3)
	b	$BB0_10 # 16 bit inst
$BB0_10:                                #   in Loop: Header=BB0_8 Depth=1
	lw	$2, 8($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB0_8 # 16 bit inst
$BB0_11:
	b	$BB0_12 # 16 bit inst
$BB0_12:
	b	$BB0_13 # 16 bit inst
$BB0_13:
	lw	$2, 16($16)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	memmove
$func_end0:
	.size	memmove, ($func_end0)-memmove
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	2
	.type	memccpy,@function
	.set	nomicromips
	.set	mips16
	.ent	memccpy
memccpy:                                # @memccpy
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 28($16)
	sw	$5, 24($16)
	sw	$6, 20($16)
	sw	$7, 16($16)
	lw	$2, 28($16)
	sw	$2, 12($16)
	lw	$2, 24($16)
	sw	$2, 8($16)
	addiu	$2, $16, 20
	lbu	$2, 0($2)
	sw	$2, 20($16)
	b	$BB1_1 # 16 bit inst
$BB1_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	li	$3, 0
	sw	$3, 4($16)                      # 4-byte Folded Spill
	beqz	$2, $BB1_3  # 16 bit inst
	b	$BB1_2 # 16 bit inst
$BB1_2:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$2, 8($16)
	lbu	$3, 0($2)
	lw	$2, 12($16)
	sb	$3, 0($2)
	lw	$2, 20($16)
	xor	$3, $2
	li	$2, 0
	sltu	$2, $3
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB1_3 # 16 bit inst
$BB1_3:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB1_6  # 16 bit inst
	b	$BB1_4 # 16 bit inst
$BB1_4:                                 #   in Loop: Header=BB1_1 Depth=1
	b	$BB1_5 # 16 bit inst
$BB1_5:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$2, 16($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 16($16)
	lw	$2, 8($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB1_1 # 16 bit inst
$BB1_6:
	lw	$2, 16($16)
	beqz	$2, $BB1_8  # 16 bit inst
	b	$BB1_7 # 16 bit inst
$BB1_7:
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 32($16)
	b	$BB1_9 # 16 bit inst
$BB1_8:
	li	$2, 0
	sw	$2, 32($16)
	b	$BB1_9 # 16 bit inst
$BB1_9:
	lw	$2, 32($16)
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

	jrc	$ra
	.end	memccpy
$func_end1:
	.size	memccpy, ($func_end1)-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	2
	.type	memchr,@function
	.set	nomicromips
	.set	mips16
	.ent	memchr
memchr:                                 # @memchr
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 24($16)
	sw	$5, 20($16)
	sw	$6, 16($16)
	lw	$2, 24($16)
	sw	$2, 12($16)
	addiu	$2, $16, 20
	lbu	$2, 0($2)
	sw	$2, 20($16)
	b	$BB2_1 # 16 bit inst
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB2_3  # 16 bit inst
	b	$BB2_2 # 16 bit inst
$BB2_2:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$2, 12($16)
	lbu	$3, 0($2)
	lw	$2, 20($16)
	xor	$3, $2
	li	$2, 0
	sltu	$2, $3
	move	$2, $24
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB2_3 # 16 bit inst
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB2_6  # 16 bit inst
	b	$BB2_4 # 16 bit inst
$BB2_4:                                 #   in Loop: Header=BB2_1 Depth=1
	b	$BB2_5 # 16 bit inst
$BB2_5:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	lw	$2, 16($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 16($16)
	b	$BB2_1 # 16 bit inst
$BB2_6:
	lw	$2, 16($16)
	beqz	$2, $BB2_8  # 16 bit inst
	b	$BB2_7 # 16 bit inst
$BB2_7:
	lw	$2, 12($16)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB2_9 # 16 bit inst
$BB2_8:
	li	$2, 0
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB2_9 # 16 bit inst
$BB2_9:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	memchr
$func_end2:
	.size	memchr, ($func_end2)-memchr
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	2
	.type	memcmp,@function
	.set	nomicromips
	.set	mips16
	.ent	memcmp
memcmp:                                 # @memcmp
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 24($16)
	sw	$5, 20($16)
	sw	$6, 16($16)
	lw	$2, 24($16)
	sw	$2, 12($16)
	lw	$2, 20($16)
	sw	$2, 8($16)
	b	$BB3_1 # 16 bit inst
$BB3_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	li	$3, 0
	sw	$3, 4($16)                      # 4-byte Folded Spill
	beqz	$2, $BB3_3  # 16 bit inst
	b	$BB3_2 # 16 bit inst
$BB3_2:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$2, 12($16)
	lbu	$2, 0($2)
	lw	$3, 8($16)
	lbu	$3, 0($3)
	xor	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB3_3 # 16 bit inst
$BB3_3:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB3_6  # 16 bit inst
	b	$BB3_4 # 16 bit inst
$BB3_4:                                 #   in Loop: Header=BB3_1 Depth=1
	b	$BB3_5 # 16 bit inst
$BB3_5:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$2, 16($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 16($16)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	lw	$2, 8($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB3_1 # 16 bit inst
$BB3_6:
	lw	$2, 16($16)
	beqz	$2, $BB3_8  # 16 bit inst
	b	$BB3_7 # 16 bit inst
$BB3_7:
	lw	$2, 12($16)
	lbu	$2, 0($2)
	lw	$3, 8($16)
	lbu	$3, 0($3)
	subu	$2, $2, $3
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB3_9 # 16 bit inst
$BB3_8:
	li	$2, 0
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB3_9 # 16 bit inst
$BB3_9:
	lw	$2, 0($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	memcmp
$func_end3:
	.size	memcmp, ($func_end3)-memcmp
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	2
	.type	memcpy,@function
	.set	nomicromips
	.set	mips16
	.ent	memcpy
memcpy:                                 # @memcpy
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	sw	$6, 8($16)
	lw	$2, 16($16)
	sw	$2, 4($16)
	lw	$2, 12($16)
	sw	$2, 0($16)
	b	$BB4_1 # 16 bit inst
$BB4_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB4_4  # 16 bit inst
	b	$BB4_2 # 16 bit inst
$BB4_2:                                 #   in Loop: Header=BB4_1 Depth=1
	lw	$2, 0($16)
	move	$3, $2
	addiu	$3, 1	# 16 bit inst
	sw	$3, 0($16)
	lbu	$2, 0($2)
	lw	$3, 4($16)
	move	$4, $3
	addiu	$4, 1	# 16 bit inst
	sw	$4, 4($16)
	sb	$2, 0($3)
	b	$BB4_3 # 16 bit inst
$BB4_3:                                 #   in Loop: Header=BB4_1 Depth=1
	lw	$2, 8($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB4_1 # 16 bit inst
$BB4_4:
	lw	$2, 16($16)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	memcpy
$func_end4:
	.size	memcpy, ($func_end4)-memcpy
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	2
	.type	memrchr,@function
	.set	nomicromips
	.set	mips16
	.ent	memrchr
memrchr:                                # @memrchr
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 12($16)
	sw	$5, 8($16)
	sw	$6, 4($16)
	lw	$2, 12($16)
	sw	$2, 0($16)
	addiu	$2, $16, 8
	lbu	$2, 0($2)
	sw	$2, 8($16)
	b	$BB5_1 # 16 bit inst
$BB5_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 4($16)
	beqz	$2, $BB5_5  # 16 bit inst
	b	$BB5_2 # 16 bit inst
$BB5_2:                                 #   in Loop: Header=BB5_1 Depth=1
	lw	$2, 0($16)
	lw	$3, 4($16)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	lw	$3, 8($16)
	cmp	$2, $3
	btnez	$BB5_4  # 16 bit inst
	b	$BB5_3 # 16 bit inst
$BB5_3:
	lw	$2, 0($16)
	lw	$3, 4($16)
	addu	$2, $2, $3
	sw	$2, 16($16)
	b	$BB5_6 # 16 bit inst
$BB5_4:                                 #   in Loop: Header=BB5_1 Depth=1
	b	$BB5_1 # 16 bit inst
$BB5_5:
	li	$2, 0
	sw	$2, 16($16)
	b	$BB5_6 # 16 bit inst
$BB5_6:
	lw	$2, 16($16)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	memrchr
$func_end5:
	.size	memrchr, ($func_end5)-memrchr
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	2
	.type	memset,@function
	.set	nomicromips
	.set	mips16
	.ent	memset
memset:                                 # @memset
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	sw	$6, 8($16)
	lw	$2, 16($16)
	sw	$2, 4($16)
	b	$BB6_1 # 16 bit inst
$BB6_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB6_4  # 16 bit inst
	b	$BB6_2 # 16 bit inst
$BB6_2:                                 #   in Loop: Header=BB6_1 Depth=1
	lw	$2, 12($16)
	lw	$3, 4($16)
	sb	$2, 0($3)
	b	$BB6_3 # 16 bit inst
$BB6_3:                                 #   in Loop: Header=BB6_1 Depth=1
	lw	$2, 8($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 8($16)
	lw	$2, 4($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 4($16)
	b	$BB6_1 # 16 bit inst
$BB6_4:
	lw	$2, 16($16)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	memset
$func_end6:
	.size	memset, ($func_end6)-memset
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	2
	.type	stpcpy,@function
	.set	nomicromips
	.set	mips16
	.ent	stpcpy
stpcpy:                                 # @stpcpy
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	b	$BB7_1 # 16 bit inst
$BB7_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 4($16)
	lbu	$2, 0($2)
	lw	$3, 8($16)
	sb	$2, 0($3)
	beqz	$2, $BB7_4  # 16 bit inst
	b	$BB7_2 # 16 bit inst
$BB7_2:                                 #   in Loop: Header=BB7_1 Depth=1
	b	$BB7_3 # 16 bit inst
$BB7_3:                                 #   in Loop: Header=BB7_1 Depth=1
	lw	$2, 4($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 4($16)
	lw	$2, 8($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB7_1 # 16 bit inst
$BB7_4:
	lw	$2, 8($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	stpcpy
$func_end7:
	.size	stpcpy, ($func_end7)-stpcpy
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	2
	.type	strchrnul,@function
	.set	nomicromips
	.set	mips16
	.ent	strchrnul
strchrnul:                              # @strchrnul
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	addiu	$2, $16, 4
	lbu	$2, 0($2)
	sw	$2, 4($16)
	b	$BB8_1 # 16 bit inst
$BB8_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	lb	$2, 0($2)
	li	$3, 0
	sw	$3, 0($16)                      # 4-byte Folded Spill
	beqz	$2, $BB8_3  # 16 bit inst
	b	$BB8_2 # 16 bit inst
$BB8_2:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$2, 8($16)
	lbu	$3, 0($2)
	lw	$2, 4($16)
	xor	$3, $2
	li	$2, 0
	sltu	$2, $3
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB8_3 # 16 bit inst
$BB8_3:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB8_6  # 16 bit inst
	b	$BB8_4 # 16 bit inst
$BB8_4:                                 #   in Loop: Header=BB8_1 Depth=1
	b	$BB8_5 # 16 bit inst
$BB8_5:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$2, 8($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB8_1 # 16 bit inst
$BB8_6:
	lw	$2, 8($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	strchrnul
$func_end8:
	.size	strchrnul, ($func_end8)-strchrnul
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	2
	.type	strchr,@function
	.set	nomicromips
	.set	mips16
	.ent	strchr
strchr:                                 # @strchr
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 4($16)
	sw	$5, 0($16)
	b	$BB9_1 # 16 bit inst
$BB9_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 4($16)
	lb	$2, 0($2)
	lw	$3, 0($16)
	cmp	$2, $3
	btnez	$BB9_3  # 16 bit inst
	b	$BB9_2 # 16 bit inst
$BB9_2:
	lw	$2, 4($16)
	sw	$2, 8($16)
	b	$BB9_6 # 16 bit inst
$BB9_3:                                 #   in Loop: Header=BB9_1 Depth=1
	b	$BB9_4 # 16 bit inst
$BB9_4:                                 #   in Loop: Header=BB9_1 Depth=1
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, 1	# 16 bit inst
	sw	$3, 4($16)
	lbu	$2, 0($2)
	bnez	$2, $BB9_1  # 16 bit inst
	b	$BB9_5 # 16 bit inst
$BB9_5:
	li	$2, 0
	sw	$2, 8($16)
	b	$BB9_6 # 16 bit inst
$BB9_6:
	lw	$2, 8($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	strchr
$func_end9:
	.size	strchr, ($func_end9)-strchr
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	2
	.type	strcmp,@function
	.set	nomicromips
	.set	mips16
	.ent	strcmp
strcmp:                                 # @strcmp
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	b	$BB10_1 # 16 bit inst
$BB10_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	lb	$3, 0($2)
	lw	$2, 4($16)
	lb	$4, 0($2)
	li	$2, 0
	cmp	$3, $4
	sw	$2, 0($16)                      # 4-byte Folded Spill
	btnez	$BB10_3  # 16 bit inst
	b	$BB10_2 # 16 bit inst
$BB10_2:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$2, 8($16)
	lb	$3, 0($2)
	li	$2, 0
	xor	$3, $2
	sltu	$2, $3
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB10_3 # 16 bit inst
$BB10_3:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB10_6  # 16 bit inst
	b	$BB10_4 # 16 bit inst
$BB10_4:                                #   in Loop: Header=BB10_1 Depth=1
	b	$BB10_5 # 16 bit inst
$BB10_5:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$2, 8($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	lw	$2, 4($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 4($16)
	b	$BB10_1 # 16 bit inst
$BB10_6:
	lw	$2, 8($16)
	lbu	$2, 0($2)
	lw	$3, 4($16)
	lbu	$3, 0($3)
	subu	$2, $2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	strcmp
$func_end10:
	.size	strcmp, ($func_end10)-strcmp
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	2
	.type	strlen,@function
	.set	nomicromips
	.set	mips16
	.ent	strlen
strlen:                                 # @strlen
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$2, 8($16)
	sw	$2, 4($16)
	b	$BB11_1 # 16 bit inst
$BB11_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	lbu	$2, 0($2)
	beqz	$2, $BB11_4  # 16 bit inst
	b	$BB11_2 # 16 bit inst
$BB11_2:                                #   in Loop: Header=BB11_1 Depth=1
	b	$BB11_3 # 16 bit inst
$BB11_3:                                #   in Loop: Header=BB11_1 Depth=1
	lw	$2, 8($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB11_1 # 16 bit inst
$BB11_4:
	lw	$2, 8($16)
	lw	$3, 4($16)
	subu	$2, $2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	strlen
$func_end11:
	.size	strlen, ($func_end11)-strlen
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	2
	.type	strncmp,@function
	.set	nomicromips
	.set	mips16
	.ent	strncmp
strncmp:                                # @strncmp
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 20($16)
	sw	$5, 16($16)
	sw	$6, 12($16)
	lw	$2, 20($16)
	sw	$2, 8($16)
	lw	$2, 16($16)
	sw	$2, 4($16)
	lw	$2, 12($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 12($16)
	bnez	$2, $BB12_2  # 16 bit inst
	b	$BB12_1 # 16 bit inst
$BB12_1:
	li	$2, 0
	sw	$2, 24($16)
	b	$BB12_11 # 16 bit inst
$BB12_2:
	b	$BB12_3 # 16 bit inst
$BB12_3:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	lbu	$2, 0($2)
	li	$3, 0
	sw	$3, 0($16)                      # 4-byte Folded Spill
	beqz	$2, $BB12_7  # 16 bit inst
	b	$BB12_4 # 16 bit inst
$BB12_4:                                #   in Loop: Header=BB12_3 Depth=1
	lw	$2, 4($16)
	lbu	$2, 0($2)
	li	$3, 0
	sw	$3, 0($16)                      # 4-byte Folded Spill
	beqz	$2, $BB12_7  # 16 bit inst
	b	$BB12_5 # 16 bit inst
$BB12_5:                                #   in Loop: Header=BB12_3 Depth=1
	lw	$2, 12($16)
	li	$3, 0
	sw	$3, 0($16)                      # 4-byte Folded Spill
	beqz	$2, $BB12_7  # 16 bit inst
	b	$BB12_6 # 16 bit inst
$BB12_6:                                #   in Loop: Header=BB12_3 Depth=1
	lw	$2, 8($16)
	lbu	$2, 0($2)
	lw	$3, 4($16)
	lbu	$3, 0($3)
	xor	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB12_7 # 16 bit inst
$BB12_7:                                #   in Loop: Header=BB12_3 Depth=1
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB12_10  # 16 bit inst
	b	$BB12_8 # 16 bit inst
$BB12_8:                                #   in Loop: Header=BB12_3 Depth=1
	b	$BB12_9 # 16 bit inst
$BB12_9:                                #   in Loop: Header=BB12_3 Depth=1
	lw	$2, 8($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	lw	$2, 4($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 4($16)
	lw	$2, 12($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB12_3 # 16 bit inst
$BB12_10:
	lw	$2, 8($16)
	lbu	$2, 0($2)
	lw	$3, 4($16)
	lbu	$3, 0($3)
	subu	$2, $2, $3
	sw	$2, 24($16)
	b	$BB12_11 # 16 bit inst
$BB12_11:
	lw	$2, 24($16)
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	strncmp
$func_end12:
	.size	strncmp, ($func_end12)-strncmp
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	2
	.type	swab,@function
	.set	nomicromips
	.set	mips16
	.ent	swab
swab:                                   # @swab
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	sw	$6, 8($16)
	lw	$2, 16($16)
	sw	$2, 4($16)
	lw	$2, 12($16)
	sw	$2, 0($16)
	b	$BB13_1 # 16 bit inst
$BB13_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	slti	$2, 2 	# 16 bit inst
	btnez	$BB13_4  # 16 bit inst
	b	$BB13_2 # 16 bit inst
$BB13_2:                                #   in Loop: Header=BB13_1 Depth=1
	lw	$2, 4($16)
	lbu	$2, 1($2)
	lw	$3, 0($16)
	sb	$2, 0($3)
	lw	$2, 4($16)
	lbu	$2, 0($2)
	lw	$3, 0($16)
	sb	$2, 1($3)
	lw	$2, 0($16)
	addiu	$2, 2	# 16 bit inst
	sw	$2, 0($16)
	lw	$2, 4($16)
	addiu	$2, 2	# 16 bit inst
	sw	$2, 4($16)
	b	$BB13_3 # 16 bit inst
$BB13_3:                                #   in Loop: Header=BB13_1 Depth=1
	lw	$2, 8($16)
	addiu	$2, -2	# 16 bit inst
	sw	$2, 8($16)
	b	$BB13_1 # 16 bit inst
$BB13_4:
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	swab
$func_end13:
	.size	swab, ($func_end13)-swab
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	2
	.type	isalpha,@function
	.set	nomicromips
	.set	mips16
	.ent	isalpha
isalpha:                                # @isalpha
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
	sw	$4, 0($16)
	lw	$2, 0($16)
	li	$3, 32
	or	$2, $3
	addiu	$2, -97	# 16 bit inst
	sltiu	$2, 26 	# 16 bit inst
	move	$2, $24
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	isalpha
$func_end14:
	.size	isalpha, ($func_end14)-isalpha
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	2
	.type	isascii,@function
	.set	nomicromips
	.set	mips16
	.ent	isascii
isascii:                                # @isascii
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
	sw	$4, 0($16)
	lw	$2, 0($16)
	move	$3, $zero
	addiu	$3, -128
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	isascii
$func_end15:
	.size	isascii, ($func_end15)-isascii
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	2
	.type	isblank,@function
	.set	nomicromips
	.set	mips16
	.ent	isblank
isblank:                                # @isblank
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$3, 8($16)
	li	$2, 1
	cmpi	$3, 32 	# 16 bit inst
	sw	$2, 4($16)                      # 4-byte Folded Spill
	bteqz	$BB16_2  # 16 bit inst
	b	$BB16_1 # 16 bit inst
$BB16_1:
	lw	$2, 8($16)
	li	$3, 9
	xor	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB16_2 # 16 bit inst
$BB16_2:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	isblank
$func_end16:
	.size	isblank, ($func_end16)-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	2
	.type	iscntrl,@function
	.set	nomicromips
	.set	mips16
	.ent	iscntrl
iscntrl:                                # @iscntrl
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$2, 8($16)
	sltiu	$2, 32 	# 16 bit inst
	move	$2, $24
	li	$3, 1
	sw	$3, 4($16)                      # 4-byte Folded Spill
	bnez	$2, $BB17_2  # 16 bit inst
	b	$BB17_1 # 16 bit inst
$BB17_1:
	lw	$2, 8($16)
	li	$3, 127
	xor	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB17_2 # 16 bit inst
$BB17_2:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	iscntrl
$func_end17:
	.size	iscntrl, ($func_end17)-iscntrl
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	2
	.type	isdigit,@function
	.set	nomicromips
	.set	mips16
	.ent	isdigit
isdigit:                                # @isdigit
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
	sw	$4, 0($16)
	lw	$2, 0($16)
	addiu	$2, -48	# 16 bit inst
	sltiu	$2, 10 	# 16 bit inst
	move	$2, $24
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	isdigit
$func_end18:
	.size	isdigit, ($func_end18)-isdigit
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	2
	.type	isgraph,@function
	.set	nomicromips
	.set	mips16
	.ent	isgraph
isgraph:                                # @isgraph
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
	sw	$4, 0($16)
	lw	$2, 0($16)
	addiu	$2, -33	# 16 bit inst
	sltiu	$2, 94 	# 16 bit inst
	move	$2, $24
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	isgraph
$func_end19:
	.size	isgraph, ($func_end19)-isgraph
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	2
	.type	islower,@function
	.set	nomicromips
	.set	mips16
	.ent	islower
islower:                                # @islower
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
	sw	$4, 0($16)
	lw	$2, 0($16)
	addiu	$2, -97	# 16 bit inst
	sltiu	$2, 26 	# 16 bit inst
	move	$2, $24
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	islower
$func_end20:
	.size	islower, ($func_end20)-islower
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	2
	.type	isprint,@function
	.set	nomicromips
	.set	mips16
	.ent	isprint
isprint:                                # @isprint
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
	sw	$4, 0($16)
	lw	$2, 0($16)
	addiu	$2, -32	# 16 bit inst
	sltiu	$2, 95 	# 16 bit inst
	move	$2, $24
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	isprint
$func_end21:
	.size	isprint, ($func_end21)-isprint
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	2
	.type	isspace,@function
	.set	nomicromips
	.set	mips16
	.ent	isspace
isspace:                                # @isspace
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$3, 8($16)
	li	$2, 1
	cmpi	$3, 32 	# 16 bit inst
	sw	$2, 4($16)                      # 4-byte Folded Spill
	bteqz	$BB22_2  # 16 bit inst
	b	$BB22_1 # 16 bit inst
$BB22_1:
	lw	$2, 8($16)
	addiu	$2, -9	# 16 bit inst
	sltiu	$2, 5 	# 16 bit inst
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB22_2 # 16 bit inst
$BB22_2:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	isspace
$func_end22:
	.size	isspace, ($func_end22)-isspace
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	2
	.type	isupper,@function
	.set	nomicromips
	.set	mips16
	.ent	isupper
isupper:                                # @isupper
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
	sw	$4, 0($16)
	lw	$2, 0($16)
	addiu	$2, -65	# 16 bit inst
	sltiu	$2, 26 	# 16 bit inst
	move	$2, $24
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	isupper
$func_end23:
	.size	isupper, ($func_end23)-isupper
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	2
	.type	iswdigit,@function
	.set	nomicromips
	.set	mips16
	.ent	iswdigit
iswdigit:                               # @iswdigit
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
	sw	$4, 0($16)
	lw	$2, 0($16)
	addiu	$2, -48	# 16 bit inst
	sltiu	$2, 10 	# 16 bit inst
	move	$2, $24
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	iswdigit
$func_end24:
	.size	iswdigit, ($func_end24)-iswdigit
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	2
	.type	iswxdigit,@function
	.set	nomicromips
	.set	mips16
	.ent	iswxdigit
iswxdigit:                              # @iswxdigit
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$2, 8($16)
	addiu	$2, -48	# 16 bit inst
	sltiu	$2, 10 	# 16 bit inst
	move	$2, $24
	li	$3, 1
	sw	$3, 4($16)                      # 4-byte Folded Spill
	bnez	$2, $BB25_2  # 16 bit inst
	b	$BB25_1 # 16 bit inst
$BB25_1:
	lw	$2, 8($16)
	li	$3, 32
	or	$2, $3
	addiu	$2, -97	# 16 bit inst
	sltiu	$2, 6 	# 16 bit inst
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB25_2 # 16 bit inst
$BB25_2:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	iswxdigit
$func_end25:
	.size	iswxdigit, ($func_end25)-iswxdigit
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	2
	.type	toascii,@function
	.set	nomicromips
	.set	mips16
	.ent	toascii
toascii:                                # @toascii
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
	sw	$4, 0($16)
	lw	$2, 0($16)
	li	$3, 127
	and	$2, $3
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	toascii
$func_end26:
	.size	toascii, ($func_end26)-toascii
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	2
	.type	fdim,@function
	.set	nomicromips
	.set	mips16
	.ent	fdim
fdim:                                   # @fdim
	.frame	$16,72,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 72 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 52($16)
	sw	$4, 48($16)
	sw	$7, 44($16)
	sw	$6, 40($16)
	lw	$2, 48($16)
	lw	$4, 52($16)
	lw	$3, $CPI27_0	# 16 bit inst
	and	$4, $3
	lw	$3, $CPI27_1	# 16 bit inst
	slt	$4, $3
	move	$5, $24
	sw	$5, 32($16)                     # 4-byte Folded Spill
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	cmp	$3, $4
	sw	$2, 36($16)                     # 4-byte Folded Spill
	bteqz	$BB27_2  # 16 bit inst
# %bb.1:
	lw	$2, 32($16)                     # 4-byte Folded Reload
	sw	$2, 36($16)                     # 4-byte Folded Spill
$BB27_2:
	lw	$2, 36($16)                     # 4-byte Folded Reload
	bnez	$2, $BB27_4  # 16 bit inst
	b	$BB27_3 # 16 bit inst
$BB27_3:
	lw	$2, 48($16)
	lw	$3, 52($16)
	sw	$3, 60($16)
	sw	$2, 56($16)
	b	$BB27_12 # 16 bit inst
$BB27_4:
	lw	$2, 40($16)
	lw	$4, 44($16)
	lw	$3, $CPI27_0	# 16 bit inst
	and	$4, $3
	lw	$3, $CPI27_1	# 16 bit inst
	slt	$4, $3
	move	$5, $24
	sw	$5, 24($16)                     # 4-byte Folded Spill
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	cmp	$3, $4
	sw	$2, 28($16)                     # 4-byte Folded Spill
	bteqz	$BB27_6  # 16 bit inst
# %bb.5:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$2, 28($16)                     # 4-byte Folded Spill
$BB27_6:
	lw	$2, 28($16)                     # 4-byte Folded Reload
	bnez	$2, $BB27_8  # 16 bit inst
	b	$BB27_7 # 16 bit inst
$BB27_7:
	lw	$2, 40($16)
	lw	$3, 44($16)
	sw	$3, 60($16)
	sw	$2, 56($16)
	b	$BB27_12 # 16 bit inst
$BB27_8:
	lw	$4, 48($16)
	lw	$5, 52($16)
	lw	$6, 40($16)
	lw	$7, 44($16)
	jal	__gtdf2
	nop
	slti	$2, 1 	# 16 bit inst
	btnez	$BB27_10  # 16 bit inst
	b	$BB27_9 # 16 bit inst
$BB27_9:
	lw	$4, 48($16)
	lw	$5, 52($16)
	lw	$6, 40($16)
	lw	$7, 44($16)
	jal	__subdf3
	nop
	sw	$2, 16($16)                     # 4-byte Folded Spill
	sw	$3, 20($16)                     # 4-byte Folded Spill
	b	$BB27_11 # 16 bit inst
$BB27_10:
	li	$2, 0
	move	$3, $2
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB27_11 # 16 bit inst
$BB27_11:
	lw	$3, 16($16)                     # 4-byte Folded Reload
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$3, 56($16)
	sw	$2, 60($16)
	b	$BB27_12 # 16 bit inst
$BB27_12:
	lw	$2, 56($16)
	lw	$3, 60($16)
	move	$sp, $16
	restore	$16, $ra, 72 # 16 bit inst

	jrc	$ra
	.p2align	2
# %bb.13:
$CPI27_0:
	.4byte	2147483647                      # 0x7fffffff
$CPI27_1:
	.4byte	2146435072                      # 0x7ff00000
	.end	fdim
$func_end27:
	.size	fdim, ($func_end27)-fdim
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	2
	.type	fdimf,@function
	.set	nomicromips
	.set	mips16
	.ent	fdimf
fdimf:                                  # @fdimf
	.frame	$16,40,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$4, 24($16)
	sw	$5, 20($16)
	lw	$2, 24($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$2, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2139095041
2:
	slt	$2, $3
	btnez	$BB28_2  # 16 bit inst
	b	$BB28_1 # 16 bit inst
$BB28_1:
	lw	$2, 24($16)
	sw	$2, 28($16)
	b	$BB28_8 # 16 bit inst
$BB28_2:
	lw	$2, 20($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$2, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2139095041
2:
	slt	$2, $3
	btnez	$BB28_4  # 16 bit inst
	b	$BB28_3 # 16 bit inst
$BB28_3:
	lw	$2, 20($16)
	sw	$2, 28($16)
	b	$BB28_8 # 16 bit inst
$BB28_4:
	lw	$4, 24($16)
	lw	$5, 20($16)
	jal	__gtsf2
	nop
	slti	$2, 1 	# 16 bit inst
	btnez	$BB28_6  # 16 bit inst
	b	$BB28_5 # 16 bit inst
$BB28_5:
	lw	$4, 24($16)
	lw	$5, 20($16)
	jal	__subsf3
	nop
	sw	$2, 16($16)                     # 4-byte Folded Spill
	b	$BB28_7 # 16 bit inst
$BB28_6:
	li	$2, 0
	sw	$2, 16($16)                     # 4-byte Folded Spill
	b	$BB28_7 # 16 bit inst
$BB28_7:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	sw	$2, 28($16)
	b	$BB28_8 # 16 bit inst
$BB28_8:
	lw	$2, 28($16)
	move	$sp, $16
	restore	$16, $ra, 40 # 16 bit inst

	jrc	$ra
	.end	fdimf
$func_end28:
	.size	fdimf, ($func_end28)-fdimf
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	2
	.type	fmax,@function
	.set	nomicromips
	.set	mips16
	.ent	fmax
fmax:                                   # @fmax
	.frame	$16,80,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 80 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 60($16)
	sw	$4, 56($16)
	sw	$7, 52($16)
	sw	$6, 48($16)
	lw	$2, 56($16)
	lw	$4, 60($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$4, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2146435072
2:
	slt	$4, $3
	move	$5, $24
	sw	$5, 40($16)                     # 4-byte Folded Spill
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	cmp	$3, $4
	sw	$2, 44($16)                     # 4-byte Folded Spill
	bteqz	$BB29_2  # 16 bit inst
# %bb.1:
	lw	$2, 40($16)                     # 4-byte Folded Reload
	sw	$2, 44($16)                     # 4-byte Folded Spill
$BB29_2:
	lw	$2, 44($16)                     # 4-byte Folded Reload
	bnez	$2, $BB29_4  # 16 bit inst
	b	$BB29_3 # 16 bit inst
$BB29_3:
	lw	$2, 48($16)
	lw	$3, 52($16)
	sw	$3, 68($16)
	sw	$2, 64($16)
	b	$BB29_17 # 16 bit inst
$BB29_4:
	lw	$2, 48($16)
	lw	$4, 52($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$4, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2146435072
2:
	slt	$4, $3
	move	$5, $24
	sw	$5, 32($16)                     # 4-byte Folded Spill
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	cmp	$3, $4
	sw	$2, 36($16)                     # 4-byte Folded Spill
	bteqz	$BB29_6  # 16 bit inst
# %bb.5:
	lw	$2, 32($16)                     # 4-byte Folded Reload
	sw	$2, 36($16)                     # 4-byte Folded Spill
$BB29_6:
	lw	$2, 36($16)                     # 4-byte Folded Reload
	bnez	$2, $BB29_8  # 16 bit inst
	b	$BB29_7 # 16 bit inst
$BB29_7:
	lw	$2, 56($16)
	lw	$3, 60($16)
	sw	$3, 68($16)
	sw	$2, 64($16)
	b	$BB29_17 # 16 bit inst
$BB29_8:
	lw	$2, 60($16)
	srl	$2, $2, 31
	lw	$3, 52($16)
	srl	$3, $3, 31
	cmp	$2, $3
	bteqz	$BB29_13  # 16 bit inst
	b	$BB29_9 # 16 bit inst
$BB29_9:
	lw	$3, 60($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB29_11  # 16 bit inst
	b	$BB29_10 # 16 bit inst
$BB29_10:
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB29_12 # 16 bit inst
$BB29_11:
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB29_12 # 16 bit inst
$BB29_12:
	lw	$3, 24($16)                     # 4-byte Folded Reload
	lw	$2, 28($16)                     # 4-byte Folded Reload
	sw	$3, 64($16)
	sw	$2, 68($16)
	b	$BB29_17 # 16 bit inst
$BB29_13:
	lw	$4, 56($16)
	lw	$5, 60($16)
	lw	$6, 48($16)
	lw	$7, 52($16)
	jal	__ltdf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB29_15  # 16 bit inst
	b	$BB29_14 # 16 bit inst
$BB29_14:
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB29_16 # 16 bit inst
$BB29_15:
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB29_16 # 16 bit inst
$BB29_16:
	lw	$3, 16($16)                     # 4-byte Folded Reload
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$3, 64($16)
	sw	$2, 68($16)
	b	$BB29_17 # 16 bit inst
$BB29_17:
	lw	$2, 64($16)
	lw	$3, 68($16)
	move	$sp, $16
	restore	$16, $ra, 80 # 16 bit inst

	jrc	$ra
	.end	fmax
$func_end29:
	.size	fmax, ($func_end29)-fmax
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	2
	.type	fmaxf,@function
	.set	nomicromips
	.set	mips16
	.ent	fmaxf
fmaxf:                                  # @fmaxf
	.frame	$16,48,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$4, 32($16)
	sw	$5, 28($16)
	lw	$2, 32($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$2, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2139095041
2:
	slt	$2, $3
	btnez	$BB30_2  # 16 bit inst
	b	$BB30_1 # 16 bit inst
$BB30_1:
	lw	$2, 28($16)
	sw	$2, 36($16)
	b	$BB30_13 # 16 bit inst
$BB30_2:
	lw	$2, 28($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$2, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2139095041
2:
	slt	$2, $3
	btnez	$BB30_4  # 16 bit inst
	b	$BB30_3 # 16 bit inst
$BB30_3:
	lw	$2, 32($16)
	sw	$2, 36($16)
	b	$BB30_13 # 16 bit inst
$BB30_4:
	lw	$2, 32($16)
	srl	$2, $2, 31
	lw	$3, 28($16)
	srl	$3, $3, 31
	cmp	$2, $3
	bteqz	$BB30_9  # 16 bit inst
	b	$BB30_5 # 16 bit inst
$BB30_5:
	lw	$3, 32($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB30_7  # 16 bit inst
	b	$BB30_6 # 16 bit inst
$BB30_6:
	lw	$2, 28($16)
	sw	$2, 24($16)                     # 4-byte Folded Spill
	b	$BB30_8 # 16 bit inst
$BB30_7:
	lw	$2, 32($16)
	sw	$2, 24($16)                     # 4-byte Folded Spill
	b	$BB30_8 # 16 bit inst
$BB30_8:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$2, 36($16)
	b	$BB30_13 # 16 bit inst
$BB30_9:
	lw	$4, 32($16)
	lw	$5, 28($16)
	jal	__ltsf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB30_11  # 16 bit inst
	b	$BB30_10 # 16 bit inst
$BB30_10:
	lw	$2, 28($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB30_12 # 16 bit inst
$BB30_11:
	lw	$2, 32($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB30_12 # 16 bit inst
$BB30_12:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$2, 36($16)
	b	$BB30_13 # 16 bit inst
$BB30_13:
	lw	$2, 36($16)
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

	jrc	$ra
	.end	fmaxf
$func_end30:
	.size	fmaxf, ($func_end30)-fmaxf
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	2
	.type	fmaxl,@function
	.set	nomicromips
	.set	mips16
	.ent	fmaxl
fmaxl:                                  # @fmaxl
	.frame	$16,80,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 80 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 60($16)
	sw	$4, 56($16)
	sw	$7, 52($16)
	sw	$6, 48($16)
	lw	$2, 56($16)
	lw	$4, 60($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$4, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2146435072
2:
	slt	$4, $3
	move	$5, $24
	sw	$5, 40($16)                     # 4-byte Folded Spill
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	cmp	$3, $4
	sw	$2, 44($16)                     # 4-byte Folded Spill
	bteqz	$BB31_2  # 16 bit inst
# %bb.1:
	lw	$2, 40($16)                     # 4-byte Folded Reload
	sw	$2, 44($16)                     # 4-byte Folded Spill
$BB31_2:
	lw	$2, 44($16)                     # 4-byte Folded Reload
	bnez	$2, $BB31_4  # 16 bit inst
	b	$BB31_3 # 16 bit inst
$BB31_3:
	lw	$2, 48($16)
	lw	$3, 52($16)
	sw	$3, 68($16)
	sw	$2, 64($16)
	b	$BB31_17 # 16 bit inst
$BB31_4:
	lw	$2, 48($16)
	lw	$4, 52($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$4, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2146435072
2:
	slt	$4, $3
	move	$5, $24
	sw	$5, 32($16)                     # 4-byte Folded Spill
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	cmp	$3, $4
	sw	$2, 36($16)                     # 4-byte Folded Spill
	bteqz	$BB31_6  # 16 bit inst
# %bb.5:
	lw	$2, 32($16)                     # 4-byte Folded Reload
	sw	$2, 36($16)                     # 4-byte Folded Spill
$BB31_6:
	lw	$2, 36($16)                     # 4-byte Folded Reload
	bnez	$2, $BB31_8  # 16 bit inst
	b	$BB31_7 # 16 bit inst
$BB31_7:
	lw	$2, 56($16)
	lw	$3, 60($16)
	sw	$3, 68($16)
	sw	$2, 64($16)
	b	$BB31_17 # 16 bit inst
$BB31_8:
	lw	$2, 60($16)
	srl	$2, $2, 31
	lw	$3, 52($16)
	srl	$3, $3, 31
	cmp	$2, $3
	bteqz	$BB31_13  # 16 bit inst
	b	$BB31_9 # 16 bit inst
$BB31_9:
	lw	$3, 60($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB31_11  # 16 bit inst
	b	$BB31_10 # 16 bit inst
$BB31_10:
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB31_12 # 16 bit inst
$BB31_11:
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB31_12 # 16 bit inst
$BB31_12:
	lw	$3, 24($16)                     # 4-byte Folded Reload
	lw	$2, 28($16)                     # 4-byte Folded Reload
	sw	$3, 64($16)
	sw	$2, 68($16)
	b	$BB31_17 # 16 bit inst
$BB31_13:
	lw	$4, 56($16)
	lw	$5, 60($16)
	lw	$6, 48($16)
	lw	$7, 52($16)
	jal	__ltdf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB31_15  # 16 bit inst
	b	$BB31_14 # 16 bit inst
$BB31_14:
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB31_16 # 16 bit inst
$BB31_15:
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB31_16 # 16 bit inst
$BB31_16:
	lw	$3, 16($16)                     # 4-byte Folded Reload
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$3, 64($16)
	sw	$2, 68($16)
	b	$BB31_17 # 16 bit inst
$BB31_17:
	lw	$2, 64($16)
	lw	$3, 68($16)
	move	$sp, $16
	restore	$16, $ra, 80 # 16 bit inst

	jrc	$ra
	.end	fmaxl
$func_end31:
	.size	fmaxl, ($func_end31)-fmaxl
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	2
	.type	fmin,@function
	.set	nomicromips
	.set	mips16
	.ent	fmin
fmin:                                   # @fmin
	.frame	$16,80,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 80 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 60($16)
	sw	$4, 56($16)
	sw	$7, 52($16)
	sw	$6, 48($16)
	lw	$2, 56($16)
	lw	$4, 60($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$4, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2146435072
2:
	slt	$4, $3
	move	$5, $24
	sw	$5, 40($16)                     # 4-byte Folded Spill
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	cmp	$3, $4
	sw	$2, 44($16)                     # 4-byte Folded Spill
	bteqz	$BB32_2  # 16 bit inst
# %bb.1:
	lw	$2, 40($16)                     # 4-byte Folded Reload
	sw	$2, 44($16)                     # 4-byte Folded Spill
$BB32_2:
	lw	$2, 44($16)                     # 4-byte Folded Reload
	bnez	$2, $BB32_4  # 16 bit inst
	b	$BB32_3 # 16 bit inst
$BB32_3:
	lw	$2, 48($16)
	lw	$3, 52($16)
	sw	$3, 68($16)
	sw	$2, 64($16)
	b	$BB32_17 # 16 bit inst
$BB32_4:
	lw	$2, 48($16)
	lw	$4, 52($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$4, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2146435072
2:
	slt	$4, $3
	move	$5, $24
	sw	$5, 32($16)                     # 4-byte Folded Spill
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	cmp	$3, $4
	sw	$2, 36($16)                     # 4-byte Folded Spill
	bteqz	$BB32_6  # 16 bit inst
# %bb.5:
	lw	$2, 32($16)                     # 4-byte Folded Reload
	sw	$2, 36($16)                     # 4-byte Folded Spill
$BB32_6:
	lw	$2, 36($16)                     # 4-byte Folded Reload
	bnez	$2, $BB32_8  # 16 bit inst
	b	$BB32_7 # 16 bit inst
$BB32_7:
	lw	$2, 56($16)
	lw	$3, 60($16)
	sw	$3, 68($16)
	sw	$2, 64($16)
	b	$BB32_17 # 16 bit inst
$BB32_8:
	lw	$2, 60($16)
	srl	$2, $2, 31
	lw	$3, 52($16)
	srl	$3, $3, 31
	cmp	$2, $3
	bteqz	$BB32_13  # 16 bit inst
	b	$BB32_9 # 16 bit inst
$BB32_9:
	lw	$3, 60($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB32_11  # 16 bit inst
	b	$BB32_10 # 16 bit inst
$BB32_10:
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB32_12 # 16 bit inst
$BB32_11:
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB32_12 # 16 bit inst
$BB32_12:
	lw	$3, 24($16)                     # 4-byte Folded Reload
	lw	$2, 28($16)                     # 4-byte Folded Reload
	sw	$3, 64($16)
	sw	$2, 68($16)
	b	$BB32_17 # 16 bit inst
$BB32_13:
	lw	$4, 56($16)
	lw	$5, 60($16)
	lw	$6, 48($16)
	lw	$7, 52($16)
	jal	__ltdf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB32_15  # 16 bit inst
	b	$BB32_14 # 16 bit inst
$BB32_14:
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB32_16 # 16 bit inst
$BB32_15:
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB32_16 # 16 bit inst
$BB32_16:
	lw	$3, 16($16)                     # 4-byte Folded Reload
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$3, 64($16)
	sw	$2, 68($16)
	b	$BB32_17 # 16 bit inst
$BB32_17:
	lw	$2, 64($16)
	lw	$3, 68($16)
	move	$sp, $16
	restore	$16, $ra, 80 # 16 bit inst

	jrc	$ra
	.end	fmin
$func_end32:
	.size	fmin, ($func_end32)-fmin
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	2
	.type	fminf,@function
	.set	nomicromips
	.set	mips16
	.ent	fminf
fminf:                                  # @fminf
	.frame	$16,48,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$4, 32($16)
	sw	$5, 28($16)
	lw	$2, 32($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$2, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2139095041
2:
	slt	$2, $3
	btnez	$BB33_2  # 16 bit inst
	b	$BB33_1 # 16 bit inst
$BB33_1:
	lw	$2, 28($16)
	sw	$2, 36($16)
	b	$BB33_13 # 16 bit inst
$BB33_2:
	lw	$2, 28($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$2, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2139095041
2:
	slt	$2, $3
	btnez	$BB33_4  # 16 bit inst
	b	$BB33_3 # 16 bit inst
$BB33_3:
	lw	$2, 32($16)
	sw	$2, 36($16)
	b	$BB33_13 # 16 bit inst
$BB33_4:
	lw	$2, 32($16)
	srl	$2, $2, 31
	lw	$3, 28($16)
	srl	$3, $3, 31
	cmp	$2, $3
	bteqz	$BB33_9  # 16 bit inst
	b	$BB33_5 # 16 bit inst
$BB33_5:
	lw	$3, 32($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB33_7  # 16 bit inst
	b	$BB33_6 # 16 bit inst
$BB33_6:
	lw	$2, 32($16)
	sw	$2, 24($16)                     # 4-byte Folded Spill
	b	$BB33_8 # 16 bit inst
$BB33_7:
	lw	$2, 28($16)
	sw	$2, 24($16)                     # 4-byte Folded Spill
	b	$BB33_8 # 16 bit inst
$BB33_8:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$2, 36($16)
	b	$BB33_13 # 16 bit inst
$BB33_9:
	lw	$4, 32($16)
	lw	$5, 28($16)
	jal	__ltsf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB33_11  # 16 bit inst
	b	$BB33_10 # 16 bit inst
$BB33_10:
	lw	$2, 32($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB33_12 # 16 bit inst
$BB33_11:
	lw	$2, 28($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB33_12 # 16 bit inst
$BB33_12:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$2, 36($16)
	b	$BB33_13 # 16 bit inst
$BB33_13:
	lw	$2, 36($16)
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

	jrc	$ra
	.end	fminf
$func_end33:
	.size	fminf, ($func_end33)-fminf
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	2
	.type	fminl,@function
	.set	nomicromips
	.set	mips16
	.ent	fminl
fminl:                                  # @fminl
	.frame	$16,80,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 80 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 60($16)
	sw	$4, 56($16)
	sw	$7, 52($16)
	sw	$6, 48($16)
	lw	$2, 56($16)
	lw	$4, 60($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$4, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2146435072
2:
	slt	$4, $3
	move	$5, $24
	sw	$5, 40($16)                     # 4-byte Folded Spill
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	cmp	$3, $4
	sw	$2, 44($16)                     # 4-byte Folded Spill
	bteqz	$BB34_2  # 16 bit inst
# %bb.1:
	lw	$2, 40($16)                     # 4-byte Folded Reload
	sw	$2, 44($16)                     # 4-byte Folded Spill
$BB34_2:
	lw	$2, 44($16)                     # 4-byte Folded Reload
	bnez	$2, $BB34_4  # 16 bit inst
	b	$BB34_3 # 16 bit inst
$BB34_3:
	lw	$2, 48($16)
	lw	$3, 52($16)
	sw	$3, 68($16)
	sw	$2, 64($16)
	b	$BB34_17 # 16 bit inst
$BB34_4:
	lw	$2, 48($16)
	lw	$4, 52($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$4, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2146435072
2:
	slt	$4, $3
	move	$5, $24
	sw	$5, 32($16)                     # 4-byte Folded Spill
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	cmp	$3, $4
	sw	$2, 36($16)                     # 4-byte Folded Spill
	bteqz	$BB34_6  # 16 bit inst
# %bb.5:
	lw	$2, 32($16)                     # 4-byte Folded Reload
	sw	$2, 36($16)                     # 4-byte Folded Spill
$BB34_6:
	lw	$2, 36($16)                     # 4-byte Folded Reload
	bnez	$2, $BB34_8  # 16 bit inst
	b	$BB34_7 # 16 bit inst
$BB34_7:
	lw	$2, 56($16)
	lw	$3, 60($16)
	sw	$3, 68($16)
	sw	$2, 64($16)
	b	$BB34_17 # 16 bit inst
$BB34_8:
	lw	$2, 60($16)
	srl	$2, $2, 31
	lw	$3, 52($16)
	srl	$3, $3, 31
	cmp	$2, $3
	bteqz	$BB34_13  # 16 bit inst
	b	$BB34_9 # 16 bit inst
$BB34_9:
	lw	$3, 60($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB34_11  # 16 bit inst
	b	$BB34_10 # 16 bit inst
$BB34_10:
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB34_12 # 16 bit inst
$BB34_11:
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB34_12 # 16 bit inst
$BB34_12:
	lw	$3, 24($16)                     # 4-byte Folded Reload
	lw	$2, 28($16)                     # 4-byte Folded Reload
	sw	$3, 64($16)
	sw	$2, 68($16)
	b	$BB34_17 # 16 bit inst
$BB34_13:
	lw	$4, 56($16)
	lw	$5, 60($16)
	lw	$6, 48($16)
	lw	$7, 52($16)
	jal	__ltdf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB34_15  # 16 bit inst
	b	$BB34_14 # 16 bit inst
$BB34_14:
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB34_16 # 16 bit inst
$BB34_15:
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB34_16 # 16 bit inst
$BB34_16:
	lw	$3, 16($16)                     # 4-byte Folded Reload
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$3, 64($16)
	sw	$2, 68($16)
	b	$BB34_17 # 16 bit inst
$BB34_17:
	lw	$2, 64($16)
	lw	$3, 68($16)
	move	$sp, $16
	restore	$16, $ra, 80 # 16 bit inst

	jrc	$ra
	.end	fminl
$func_end34:
	.size	fminl, ($func_end34)-fminl
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	2
	.type	l64a,@function
	.set	nomicromips
	.set	mips16
	.ent	l64a
l64a:                                   # @l64a
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$2, 8($16)
	sw	$2, 0($16)
	li	$2, %hi(l64a.s)
	sll	$2, $2, 16
	addiu	$2, %lo(l64a.s)
	sw	$2, 4($16)
	b	$BB35_1 # 16 bit inst
$BB35_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 0($16)
	beqz	$2, $BB35_4  # 16 bit inst
	b	$BB35_2 # 16 bit inst
$BB35_2:                                #   in Loop: Header=BB35_1 Depth=1
	lw	$3, 0($16)
	li	$2, 63
	and	$3, $2
	li	$2, %hi(digits)
	sll	$2, $2, 16
	addiu	$2, %lo(digits)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	lw	$3, 4($16)
	sb	$2, 0($3)
	b	$BB35_3 # 16 bit inst
$BB35_3:                                #   in Loop: Header=BB35_1 Depth=1
	lw	$2, 4($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 4($16)
	lw	$2, 0($16)
	srl	$2, $2, 6
	sw	$2, 0($16)
	b	$BB35_1 # 16 bit inst
$BB35_4:
	lw	$3, 4($16)
	li	$2, 0
	sb	$2, 0($3)
	li	$2, %hi(l64a.s)
	sll	$2, $2, 16
	addiu	$2, %lo(l64a.s)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	l64a
$func_end35:
	.size	l64a, ($func_end35)-l64a
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	2
	.type	srand,@function
	.set	nomicromips
	.set	mips16
	.ent	srand
srand:                                  # @srand
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
	sw	$4, 0($16)
	lw	$2, 0($16)
	addiu	$2, -1	# 16 bit inst
	li	$3, %hi(seed)
	sll	$3, $3, 16
	move	$5, $3
	addiu	$5, %lo(seed)
	li	$4, 0
	sw	$4, 4($5)
	sw	$2, %lo(seed)($3)
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	srand
$func_end36:
	.size	srand, ($func_end36)-srand
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	2
	.type	rand,@function
	.set	nomicromips
	.set	mips16
	.ent	rand
rand:                                   # @rand
	.frame	$16,8,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 8 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(seed)
	sll	$5, $2, 16
	move	$2, $5
	addiu	$2, %lo(seed)
	lw	$6, 4($2)
	lw	$3, %lo(seed)($5)
	lw	$4, 1f
	b	2f
	.align	2
1: 	.word	1481765933
2:
	mult	$3, $4
	mflo	$17
	lw	$7, 1f
	b	2f
	.align	2
1: 	.word	1284865837
2:
	multu	$3, $7
	mflo	$4
	mfhi	$3
	addu	$3, $3, $17
	mult	$6, $7
	mflo	$6
	addu	$3, $3, $6
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$4, %lo(seed)($5)
	sw	$3, 4($2)
	lw	$2, 4($2)
	srl	$2, $2, 1
	move	$sp, $16
	restore	$16, $17, 8 # 16 bit inst

	jrc	$ra
	.end	rand
$func_end37:
	.size	rand, ($func_end37)-rand
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	2
	.type	insque,@function
	.set	nomicromips
	.set	mips16
	.ent	insque
insque:                                 # @insque
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	lw	$2, 16($16)
	sw	$2, 8($16)
	lw	$2, 12($16)
	sw	$2, 4($16)
	lw	$2, 4($16)
	bnez	$2, $BB38_2  # 16 bit inst
	b	$BB38_1 # 16 bit inst
$BB38_1:
	lw	$3, 8($16)
	li	$2, 0
	sw	$2, 4($3)
	lw	$3, 8($16)
	sw	$2, 0($3)
	b	$BB38_4 # 16 bit inst
$BB38_2:
	lw	$2, 4($16)
	lw	$2, 0($2)
	lw	$3, 8($16)
	sw	$2, 0($3)
	lw	$2, 4($16)
	lw	$3, 8($16)
	sw	$2, 4($3)
	lw	$2, 8($16)
	lw	$3, 4($16)
	sw	$2, 0($3)
	lw	$2, 8($16)
	lw	$2, 0($2)
	beqz	$2, $BB38_4  # 16 bit inst
	b	$BB38_3 # 16 bit inst
$BB38_3:
	lw	$2, 8($16)
	lw	$3, 0($2)
	sw	$2, 4($3)
	b	$BB38_4 # 16 bit inst
$BB38_4:
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	insque
$func_end38:
	.size	insque, ($func_end38)-insque
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	2
	.type	remque,@function
	.set	nomicromips
	.set	mips16
	.ent	remque
remque:                                 # @remque
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$2, 8($16)
	sw	$2, 4($16)
	lw	$2, 4($16)
	lw	$2, 0($2)
	beqz	$2, $BB39_2  # 16 bit inst
	b	$BB39_1 # 16 bit inst
$BB39_1:
	lw	$3, 4($16)
	lw	$2, 4($3)
	lw	$3, 0($3)
	sw	$2, 4($3)
	b	$BB39_2 # 16 bit inst
$BB39_2:
	lw	$2, 4($16)
	lw	$2, 4($2)
	beqz	$2, $BB39_4  # 16 bit inst
	b	$BB39_3 # 16 bit inst
$BB39_3:
	lw	$3, 4($16)
	lw	$2, 0($3)
	lw	$3, 4($3)
	sw	$2, 0($3)
	b	$BB39_4 # 16 bit inst
$BB39_4:
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	remque
$func_end39:
	.size	remque, ($func_end39)-remque
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	2
	.type	lsearch,@function
	.set	nomicromips
	.set	mips16
	.ent	lsearch
lsearch:                                # @lsearch
	.frame	$16,64,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 64 # 16 bit inst

	move	$16, $sp
	lw	$2, 80($16)
	sw	$4, 48($16)
	sw	$5, 44($16)
	sw	$6, 40($16)
	sw	$7, 36($16)
	lw	$2, 36($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	lw	$2, 44($16)
	sw	$2, 32($16)
	lw	$2, 40($16)
	lw	$2, 0($2)
	sw	$2, 28($16)
	li	$2, 0
	sw	$2, 24($16)
	b	$BB40_1 # 16 bit inst
$BB40_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 24($16)
	lw	$3, 28($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB40_6  # 16 bit inst
	b	$BB40_2 # 16 bit inst
$BB40_2:                                #   in Loop: Header=BB40_1 Depth=1
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$2, 80($16)
	lw	$4, 48($16)
	lw	$3, 32($16)
	lw	$5, 24($16)
	mult	$5, $6
	mflo	$5
	addu	$5, $3, $5
	move	$25, $2
	jalrc	$2
	bnez	$2, $BB40_4  # 16 bit inst
	b	$BB40_3 # 16 bit inst
$BB40_3:
	lw	$4, 20($16)                     # 4-byte Folded Reload
	lw	$2, 32($16)
	lw	$3, 24($16)
	mult	$3, $4
	mflo	$3
	addu	$2, $2, $3
	sw	$2, 52($16)
	b	$BB40_7 # 16 bit inst
$BB40_4:                                #   in Loop: Header=BB40_1 Depth=1
	b	$BB40_5 # 16 bit inst
$BB40_5:                                #   in Loop: Header=BB40_1 Depth=1
	lw	$2, 24($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 24($16)
	b	$BB40_1 # 16 bit inst
$BB40_6:
	lw	$4, 20($16)                     # 4-byte Folded Reload
	lw	$2, 28($16)
	addiu	$2, 1	# 16 bit inst
	lw	$3, 40($16)
	sw	$2, 0($3)
	lw	$2, 32($16)
	lw	$3, 28($16)
	mult	$3, $4
	mflo	$3
	addu	$4, $2, $3
	sw	$4, 16($16)                     # 4-byte Folded Spill
	lw	$5, 48($16)
	lw	$6, 36($16)
	jal	memcpy
	nop
                                        # kill: def $v1 killed $v0
	lw	$2, 16($16)                     # 4-byte Folded Reload
	sw	$2, 52($16)
	b	$BB40_7 # 16 bit inst
$BB40_7:
	lw	$2, 52($16)
	move	$sp, $16
	restore	$16, $ra, 64 # 16 bit inst

	jrc	$ra
	.end	lsearch
$func_end40:
	.size	lsearch, ($func_end40)-lsearch
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	2
	.type	lfind,@function
	.set	nomicromips
	.set	mips16
	.ent	lfind
lfind:                                  # @lfind
	.frame	$16,64,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 64 # 16 bit inst

	move	$16, $sp
	lw	$2, 80($16)
	sw	$4, 48($16)
	sw	$5, 44($16)
	sw	$6, 40($16)
	sw	$7, 36($16)
	lw	$2, 36($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	lw	$2, 44($16)
	sw	$2, 32($16)
	lw	$2, 40($16)
	lw	$2, 0($2)
	sw	$2, 28($16)
	li	$2, 0
	sw	$2, 24($16)
	b	$BB41_1 # 16 bit inst
$BB41_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 24($16)
	lw	$3, 28($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB41_6  # 16 bit inst
	b	$BB41_2 # 16 bit inst
$BB41_2:                                #   in Loop: Header=BB41_1 Depth=1
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$2, 80($16)
	lw	$4, 48($16)
	lw	$3, 32($16)
	lw	$5, 24($16)
	mult	$5, $6
	mflo	$5
	addu	$5, $3, $5
	move	$25, $2
	jalrc	$2
	bnez	$2, $BB41_4  # 16 bit inst
	b	$BB41_3 # 16 bit inst
$BB41_3:
	lw	$4, 20($16)                     # 4-byte Folded Reload
	lw	$2, 32($16)
	lw	$3, 24($16)
	mult	$3, $4
	mflo	$3
	addu	$2, $2, $3
	sw	$2, 52($16)
	b	$BB41_7 # 16 bit inst
$BB41_4:                                #   in Loop: Header=BB41_1 Depth=1
	b	$BB41_5 # 16 bit inst
$BB41_5:                                #   in Loop: Header=BB41_1 Depth=1
	lw	$2, 24($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 24($16)
	b	$BB41_1 # 16 bit inst
$BB41_6:
	li	$2, 0
	sw	$2, 52($16)
	b	$BB41_7 # 16 bit inst
$BB41_7:
	lw	$2, 52($16)
	move	$sp, $16
	restore	$16, $ra, 64 # 16 bit inst

	jrc	$ra
	.end	lfind
$func_end41:
	.size	lfind, ($func_end41)-lfind
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	2
	.type	abs,@function
	.set	nomicromips
	.set	mips16
	.ent	abs
abs:                                    # @abs
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$2, 8($16)
	slti	$2, 1 	# 16 bit inst
	btnez	$BB42_2  # 16 bit inst
	b	$BB42_1 # 16 bit inst
$BB42_1:
	lw	$2, 8($16)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB42_3 # 16 bit inst
$BB42_2:
	lw	$2, 8($16)
	neg	$2, $2
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB42_3 # 16 bit inst
$BB42_3:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	abs
$func_end42:
	.size	abs, ($func_end42)-abs
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	2
	.type	atoi,@function
	.set	nomicromips
	.set	mips16
	.ent	atoi
atoi:                                   # @atoi
	.frame	$16,48,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 48 # 16 bit inst

	move	$16, $sp
	sw	$4, 36($16)
	li	$2, 0
	sw	$2, 32($16)
	sw	$2, 28($16)
	b	$BB43_1 # 16 bit inst
$BB43_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 36($16)
	lb	$4, 0($2)
	jal	isspace
	nop
	beqz	$2, $BB43_3  # 16 bit inst
	b	$BB43_2 # 16 bit inst
$BB43_2:                                #   in Loop: Header=BB43_1 Depth=1
	lw	$2, 36($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 36($16)
	b	$BB43_1 # 16 bit inst
$BB43_3:
	lw	$2, 36($16)
	lb	$2, 0($2)
	sw	$2, 24($16)                     # 4-byte Folded Spill
	cmpi	$2, 43 	# 16 bit inst
	bteqz	$BB43_6  # 16 bit inst
	b	$BB43_4 # 16 bit inst
$BB43_4:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	cmpi	$2, 45 	# 16 bit inst
	btnez	$BB43_7  # 16 bit inst
	b	$BB43_5 # 16 bit inst
$BB43_5:
	li	$2, 1
	sw	$2, 28($16)
	b	$BB43_6 # 16 bit inst
$BB43_6:
	lw	$2, 36($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 36($16)
	b	$BB43_7 # 16 bit inst
$BB43_7:
	b	$BB43_8 # 16 bit inst
$BB43_8:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 36($16)
	lb	$4, 0($2)
	jal	isdigit
	nop
	beqz	$2, $BB43_10  # 16 bit inst
	b	$BB43_9 # 16 bit inst
$BB43_9:                                #   in Loop: Header=BB43_8 Depth=1
	lw	$2, 32($16)
	li	$3, 10
	mult	$2, $3
	mflo	$2
	lw	$3, 36($16)
	move	$4, $3
	addiu	$4, 1	# 16 bit inst
	sw	$4, 36($16)
	lb	$3, 0($3)
	subu	$2, $2, $3
	addiu	$2, 48	# 16 bit inst
	sw	$2, 32($16)
	b	$BB43_8 # 16 bit inst
$BB43_10:
	lw	$2, 28($16)
	beqz	$2, $BB43_12  # 16 bit inst
	b	$BB43_11 # 16 bit inst
$BB43_11:
	lw	$2, 32($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB43_13 # 16 bit inst
$BB43_12:
	lw	$2, 32($16)
	neg	$2, $2
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB43_13 # 16 bit inst
$BB43_13:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

	jrc	$ra
	.end	atoi
$func_end43:
	.size	atoi, ($func_end43)-atoi
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	2
	.type	atol,@function
	.set	nomicromips
	.set	mips16
	.ent	atol
atol:                                   # @atol
	.frame	$16,48,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 48 # 16 bit inst

	move	$16, $sp
	sw	$4, 36($16)
	li	$2, 0
	sw	$2, 32($16)
	sw	$2, 28($16)
	b	$BB44_1 # 16 bit inst
$BB44_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 36($16)
	lb	$4, 0($2)
	jal	isspace
	nop
	beqz	$2, $BB44_3  # 16 bit inst
	b	$BB44_2 # 16 bit inst
$BB44_2:                                #   in Loop: Header=BB44_1 Depth=1
	lw	$2, 36($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 36($16)
	b	$BB44_1 # 16 bit inst
$BB44_3:
	lw	$2, 36($16)
	lb	$2, 0($2)
	sw	$2, 24($16)                     # 4-byte Folded Spill
	cmpi	$2, 43 	# 16 bit inst
	bteqz	$BB44_6  # 16 bit inst
	b	$BB44_4 # 16 bit inst
$BB44_4:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	cmpi	$2, 45 	# 16 bit inst
	btnez	$BB44_7  # 16 bit inst
	b	$BB44_5 # 16 bit inst
$BB44_5:
	li	$2, 1
	sw	$2, 28($16)
	b	$BB44_6 # 16 bit inst
$BB44_6:
	lw	$2, 36($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 36($16)
	b	$BB44_7 # 16 bit inst
$BB44_7:
	b	$BB44_8 # 16 bit inst
$BB44_8:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 36($16)
	lb	$4, 0($2)
	jal	isdigit
	nop
	beqz	$2, $BB44_10  # 16 bit inst
	b	$BB44_9 # 16 bit inst
$BB44_9:                                #   in Loop: Header=BB44_8 Depth=1
	lw	$2, 32($16)
	li	$3, 10
	mult	$2, $3
	mflo	$2
	lw	$3, 36($16)
	move	$4, $3
	addiu	$4, 1	# 16 bit inst
	sw	$4, 36($16)
	lb	$3, 0($3)
	subu	$2, $2, $3
	addiu	$2, 48	# 16 bit inst
	sw	$2, 32($16)
	b	$BB44_8 # 16 bit inst
$BB44_10:
	lw	$2, 28($16)
	beqz	$2, $BB44_12  # 16 bit inst
	b	$BB44_11 # 16 bit inst
$BB44_11:
	lw	$2, 32($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB44_13 # 16 bit inst
$BB44_12:
	lw	$2, 32($16)
	neg	$2, $2
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB44_13 # 16 bit inst
$BB44_13:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

	jrc	$ra
	.end	atol
$func_end44:
	.size	atol, ($func_end44)-atol
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	2
	.type	atoll,@function
	.set	nomicromips
	.set	mips16
	.ent	atoll
atoll:                                  # @atoll
	.frame	$16,56,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 56 # 16 bit inst

	move	$16, $sp
	sw	$4, 44($16)
	li	$2, 0
	sw	$2, 36($16)
	sw	$2, 32($16)
	sw	$2, 28($16)
	b	$BB45_1 # 16 bit inst
$BB45_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 44($16)
	lb	$4, 0($2)
	jal	isspace
	nop
	beqz	$2, $BB45_3  # 16 bit inst
	b	$BB45_2 # 16 bit inst
$BB45_2:                                #   in Loop: Header=BB45_1 Depth=1
	lw	$2, 44($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 44($16)
	b	$BB45_1 # 16 bit inst
$BB45_3:
	lw	$2, 44($16)
	lb	$2, 0($2)
	sw	$2, 24($16)                     # 4-byte Folded Spill
	cmpi	$2, 43 	# 16 bit inst
	bteqz	$BB45_6  # 16 bit inst
	b	$BB45_4 # 16 bit inst
$BB45_4:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	cmpi	$2, 45 	# 16 bit inst
	btnez	$BB45_7  # 16 bit inst
	b	$BB45_5 # 16 bit inst
$BB45_5:
	li	$2, 1
	sw	$2, 28($16)
	b	$BB45_6 # 16 bit inst
$BB45_6:
	lw	$2, 44($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 44($16)
	b	$BB45_7 # 16 bit inst
$BB45_7:
	b	$BB45_8 # 16 bit inst
$BB45_8:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 44($16)
	lb	$4, 0($2)
	jal	isdigit
	nop
	beqz	$2, $BB45_10  # 16 bit inst
	b	$BB45_9 # 16 bit inst
$BB45_9:                                #   in Loop: Header=BB45_8 Depth=1
	lw	$2, 32($16)
	lw	$4, 36($16)
	li	$3, 10
	mult	$4, $3
	mflo	$4
	multu	$2, $3
	mflo	$3
	mfhi	$2
	addu	$2, $2, $4
	lw	$4, 44($16)
	move	$5, $4
	addiu	$5, 1	# 16 bit inst
	sw	$5, 44($16)
	lb	$4, 0($4)
	addiu	$4, -48	# 16 bit inst
	sra	$5, $4, 31
	subu	$2, $2, $5
	sltu	$3, $4
	move	$5, $24
	subu	$2, $2, $5
	subu	$3, $3, $4
	sw	$3, 32($16)
	sw	$2, 36($16)
	b	$BB45_8 # 16 bit inst
$BB45_10:
	lw	$2, 28($16)
	beqz	$2, $BB45_12  # 16 bit inst
	b	$BB45_11 # 16 bit inst
$BB45_11:
	lw	$2, 36($16)
	lw	$3, 32($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB45_13 # 16 bit inst
$BB45_12:
	lw	$2, 36($16)
	lw	$3, 32($16)
	li	$4, 0
	move	$5, $3
	xor	$5, $4
	sltu	$4, $5
	move	$4, $24
	addu	$2, $2, $4
	neg	$2, $2
	neg	$3, $3
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB45_13 # 16 bit inst
$BB45_13:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	lw	$3, 20($16)                     # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, $ra, 56 # 16 bit inst

	jrc	$ra
	.end	atoll
$func_end45:
	.size	atoll, ($func_end45)-atoll
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	2
	.type	bsearch,@function
	.set	nomicromips
	.set	mips16
	.ent	bsearch
bsearch:                                # @bsearch
	.frame	$16,56,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 56 # 16 bit inst

	move	$16, $sp
	lw	$2, 72($16)
	sw	$4, 40($16)
	sw	$5, 36($16)
	sw	$6, 32($16)
	sw	$7, 28($16)
	b	$BB46_1 # 16 bit inst
$BB46_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 32($16)
	beqz	$2, $BB46_9  # 16 bit inst
	b	$BB46_2 # 16 bit inst
$BB46_2:                                #   in Loop: Header=BB46_1 Depth=1
	lw	$2, 36($16)
	lw	$3, 28($16)
	lw	$4, 32($16)
	srl	$4, $4, 1
	mult	$3, $4
	mflo	$3
	addu	$2, $2, $3
	sw	$2, 24($16)
	lw	$2, 72($16)
	lw	$4, 40($16)
	lw	$5, 24($16)
	move	$25, $2
	jalrc	$2
	sw	$2, 20($16)
	lw	$3, 20($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB46_4  # 16 bit inst
	b	$BB46_3 # 16 bit inst
$BB46_3:                                #   in Loop: Header=BB46_1 Depth=1
	lw	$2, 32($16)
	srl	$2, $2, 1
	sw	$2, 32($16)
	b	$BB46_8 # 16 bit inst
$BB46_4:                                #   in Loop: Header=BB46_1 Depth=1
	lw	$2, 20($16)
	slti	$2, 1 	# 16 bit inst
	btnez	$BB46_6  # 16 bit inst
	b	$BB46_5 # 16 bit inst
$BB46_5:                                #   in Loop: Header=BB46_1 Depth=1
	lw	$2, 24($16)
	lw	$3, 28($16)
	addu	$2, $2, $3
	sw	$2, 36($16)
	lw	$3, 32($16)
	srl	$2, $3, 1
	not	$2, $2
	addu	$2, $2, $3
	sw	$2, 32($16)
	b	$BB46_7 # 16 bit inst
$BB46_6:
	lw	$2, 24($16)
	sw	$2, 44($16)
	b	$BB46_10 # 16 bit inst
$BB46_7:                                #   in Loop: Header=BB46_1 Depth=1
	b	$BB46_8 # 16 bit inst
$BB46_8:                                #   in Loop: Header=BB46_1 Depth=1
	b	$BB46_1 # 16 bit inst
$BB46_9:
	li	$2, 0
	sw	$2, 44($16)
	b	$BB46_10 # 16 bit inst
$BB46_10:
	lw	$2, 44($16)
	move	$sp, $16
	restore	$16, $ra, 56 # 16 bit inst

	jrc	$ra
	.end	bsearch
$func_end46:
	.size	bsearch, ($func_end46)-bsearch
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	2
	.type	bsearch_r,@function
	.set	nomicromips
	.set	mips16
	.ent	bsearch_r
bsearch_r:                              # @bsearch_r
	.frame	$16,64,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 64 # 16 bit inst

	move	$16, $sp
	lw	$2, 84($16)
	lw	$2, 80($16)
	sw	$4, 48($16)
	sw	$5, 44($16)
	sw	$6, 40($16)
	sw	$7, 36($16)
	lw	$2, 44($16)
	sw	$2, 32($16)
	lw	$2, 40($16)
	sw	$2, 28($16)
	b	$BB47_1 # 16 bit inst
$BB47_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 28($16)
	beqz	$2, $BB47_8  # 16 bit inst
	b	$BB47_2 # 16 bit inst
$BB47_2:                                #   in Loop: Header=BB47_1 Depth=1
	lw	$2, 32($16)
	lw	$3, 28($16)
	sra	$3, $3, 1
	lw	$4, 36($16)
	mult	$3, $4
	mflo	$3
	addu	$2, $2, $3
	sw	$2, 20($16)
	lw	$2, 80($16)
	lw	$4, 48($16)
	lw	$5, 20($16)
	lw	$6, 84($16)
	move	$25, $2
	jalrc	$2
	sw	$2, 24($16)
	lw	$2, 24($16)
	bnez	$2, $BB47_4  # 16 bit inst
	b	$BB47_3 # 16 bit inst
$BB47_3:
	lw	$2, 20($16)
	sw	$2, 52($16)
	b	$BB47_9 # 16 bit inst
$BB47_4:                                #   in Loop: Header=BB47_1 Depth=1
	lw	$2, 24($16)
	slti	$2, 1 	# 16 bit inst
	btnez	$BB47_6  # 16 bit inst
	b	$BB47_5 # 16 bit inst
$BB47_5:                                #   in Loop: Header=BB47_1 Depth=1
	lw	$2, 20($16)
	lw	$3, 36($16)
	addu	$2, $2, $3
	sw	$2, 32($16)
	lw	$2, 28($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 28($16)
	b	$BB47_6 # 16 bit inst
$BB47_6:                                #   in Loop: Header=BB47_1 Depth=1
	b	$BB47_7 # 16 bit inst
$BB47_7:                                #   in Loop: Header=BB47_1 Depth=1
	lw	$2, 28($16)
	sra	$2, $2, 1
	sw	$2, 28($16)
	b	$BB47_1 # 16 bit inst
$BB47_8:
	li	$2, 0
	sw	$2, 52($16)
	b	$BB47_9 # 16 bit inst
$BB47_9:
	lw	$2, 52($16)
	move	$sp, $16
	restore	$16, $ra, 64 # 16 bit inst

	jrc	$ra
	.end	bsearch_r
$func_end47:
	.size	bsearch_r, ($func_end47)-bsearch_r
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	2
	.type	div,@function
	.set	nomicromips
	.set	mips16
	.ent	div
div:                                    # @div
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	move	$2, $4
	sw	$5, 8($16)
	sw	$6, 4($16)
	lw	$3, 8($16)
	lw	$5, 4($16)
	div	$zero, $3, $5
	mflo	$3
	sw	$3, 0($4)
	lw	$3, 8($16)
	lw	$5, 4($16)
	div	$zero, $3, $5
	mfhi	$3
	sw	$3, 4($4)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	div
$func_end48:
	.size	div, ($func_end48)-div
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	2
	.type	imaxabs,@function
	.set	nomicromips
	.set	mips16
	.ent	imaxabs
imaxabs:                                # @imaxabs
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 20($16)
	sw	$4, 16($16)
	lw	$3, 16($16)
	lw	$2, 20($16)
	slti	$2, 0 	# 16 bit inst
	move	$4, $24
	sw	$4, 8($16)                      # 4-byte Folded Spill
	sltiu	$3, 1 	# 16 bit inst
	move	$3, $24
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB49_2  # 16 bit inst
# %bb.1:
	lw	$2, 8($16)                      # 4-byte Folded Reload
	sw	$2, 12($16)                     # 4-byte Folded Spill
$BB49_2:
	lw	$2, 12($16)                     # 4-byte Folded Reload
	bnez	$2, $BB49_4  # 16 bit inst
	b	$BB49_3 # 16 bit inst
$BB49_3:
	lw	$2, 20($16)
	lw	$3, 16($16)
	sw	$3, 0($16)                      # 4-byte Folded Spill
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB49_5 # 16 bit inst
$BB49_4:
	lw	$2, 20($16)
	lw	$3, 16($16)
	li	$4, 0
	move	$5, $3
	xor	$5, $4
	sltu	$4, $5
	move	$4, $24
	addu	$2, $2, $4
	neg	$2, $2
	neg	$3, $3
	sw	$3, 0($16)                      # 4-byte Folded Spill
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB49_5 # 16 bit inst
$BB49_5:
	lw	$2, 0($16)                      # 4-byte Folded Reload
	lw	$3, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	imaxabs
$func_end49:
	.size	imaxabs, ($func_end49)-imaxabs
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	2
	.type	imaxdiv,@function
	.set	nomicromips
	.set	mips16
	.ent	imaxdiv
imaxdiv:                                # @imaxdiv
	.frame	$16,56,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 56 # 16 bit inst

	move	$16, $sp
	sw	$4, 20($16)                     # 4-byte Folded Spill
	sw	$4, 24($16)                     # 4-byte Folded Spill
	lw	$3, 76($16)
	lw	$2, 72($16)
                                        # kill: def $a0 killed $a3
                                        # kill: def $a0 killed $a2
	sw	$7, 44($16)
	sw	$6, 40($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	lw	$4, 40($16)
	lw	$5, 44($16)
	lw	$6, 32($16)
	lw	$7, 36($16)
	jal	__divdi3
	nop
	lw	$4, 20($16)                     # 4-byte Folded Reload
	sw	$3, 4($4)
	sw	$2, 0($4)
	lw	$4, 40($16)
	lw	$5, 44($16)
	lw	$6, 32($16)
	lw	$7, 36($16)
	jal	__moddi3
	nop
	lw	$4, 20($16)                     # 4-byte Folded Reload
	move	$5, $2
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$5, 28($16)                     # 4-byte Folded Spill
	move	$5, $3
	lw	$3, 28($16)                     # 4-byte Folded Reload
	sw	$5, 12($4)
	sw	$3, 8($4)
	move	$sp, $16
	restore	$16, $ra, 56 # 16 bit inst

	jrc	$ra
	.end	imaxdiv
$func_end50:
	.size	imaxdiv, ($func_end50)-imaxdiv
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	2
	.type	labs,@function
	.set	nomicromips
	.set	mips16
	.ent	labs
labs:                                   # @labs
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$2, 8($16)
	slti	$2, 1 	# 16 bit inst
	btnez	$BB51_2  # 16 bit inst
	b	$BB51_1 # 16 bit inst
$BB51_1:
	lw	$2, 8($16)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB51_3 # 16 bit inst
$BB51_2:
	lw	$2, 8($16)
	neg	$2, $2
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB51_3 # 16 bit inst
$BB51_3:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	labs
$func_end51:
	.size	labs, ($func_end51)-labs
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	2
	.type	ldiv,@function
	.set	nomicromips
	.set	mips16
	.ent	ldiv
ldiv:                                   # @ldiv
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	move	$2, $4
	sw	$5, 8($16)
	sw	$6, 4($16)
	lw	$3, 8($16)
	lw	$5, 4($16)
	div	$zero, $3, $5
	mflo	$3
	sw	$3, 0($4)
	lw	$3, 8($16)
	lw	$5, 4($16)
	div	$zero, $3, $5
	mfhi	$3
	sw	$3, 4($4)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	ldiv
$func_end52:
	.size	ldiv, ($func_end52)-ldiv
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	2
	.type	llabs,@function
	.set	nomicromips
	.set	mips16
	.ent	llabs
llabs:                                  # @llabs
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 20($16)
	sw	$4, 16($16)
	lw	$3, 16($16)
	lw	$2, 20($16)
	slti	$2, 0 	# 16 bit inst
	move	$4, $24
	sw	$4, 8($16)                      # 4-byte Folded Spill
	sltiu	$3, 1 	# 16 bit inst
	move	$3, $24
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB53_2  # 16 bit inst
# %bb.1:
	lw	$2, 8($16)                      # 4-byte Folded Reload
	sw	$2, 12($16)                     # 4-byte Folded Spill
$BB53_2:
	lw	$2, 12($16)                     # 4-byte Folded Reload
	bnez	$2, $BB53_4  # 16 bit inst
	b	$BB53_3 # 16 bit inst
$BB53_3:
	lw	$2, 20($16)
	lw	$3, 16($16)
	sw	$3, 0($16)                      # 4-byte Folded Spill
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB53_5 # 16 bit inst
$BB53_4:
	lw	$2, 20($16)
	lw	$3, 16($16)
	li	$4, 0
	move	$5, $3
	xor	$5, $4
	sltu	$4, $5
	move	$4, $24
	addu	$2, $2, $4
	neg	$2, $2
	neg	$3, $3
	sw	$3, 0($16)                      # 4-byte Folded Spill
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB53_5 # 16 bit inst
$BB53_5:
	lw	$2, 0($16)                      # 4-byte Folded Reload
	lw	$3, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	llabs
$func_end53:
	.size	llabs, ($func_end53)-llabs
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	2
	.type	lldiv,@function
	.set	nomicromips
	.set	mips16
	.ent	lldiv
lldiv:                                  # @lldiv
	.frame	$16,56,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 56 # 16 bit inst

	move	$16, $sp
	sw	$4, 20($16)                     # 4-byte Folded Spill
	sw	$4, 24($16)                     # 4-byte Folded Spill
	lw	$3, 76($16)
	lw	$2, 72($16)
                                        # kill: def $a0 killed $a3
                                        # kill: def $a0 killed $a2
	sw	$7, 44($16)
	sw	$6, 40($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	lw	$4, 40($16)
	lw	$5, 44($16)
	lw	$6, 32($16)
	lw	$7, 36($16)
	jal	__divdi3
	nop
	lw	$4, 20($16)                     # 4-byte Folded Reload
	sw	$3, 4($4)
	sw	$2, 0($4)
	lw	$4, 40($16)
	lw	$5, 44($16)
	lw	$6, 32($16)
	lw	$7, 36($16)
	jal	__moddi3
	nop
	lw	$4, 20($16)                     # 4-byte Folded Reload
	move	$5, $2
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$5, 28($16)                     # 4-byte Folded Spill
	move	$5, $3
	lw	$3, 28($16)                     # 4-byte Folded Reload
	sw	$5, 12($4)
	sw	$3, 8($4)
	move	$sp, $16
	restore	$16, $ra, 56 # 16 bit inst

	jrc	$ra
	.end	lldiv
$func_end54:
	.size	lldiv, ($func_end54)-lldiv
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	2
	.type	wcschr,@function
	.set	nomicromips
	.set	mips16
	.ent	wcschr
wcschr:                                 # @wcschr
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	b	$BB55_1 # 16 bit inst
$BB55_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	lw	$2, 0($2)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB55_3  # 16 bit inst
	b	$BB55_2 # 16 bit inst
$BB55_2:                                #   in Loop: Header=BB55_1 Depth=1
	lw	$2, 16($16)
	lw	$3, 0($2)
	lw	$2, 12($16)
	xor	$3, $2
	li	$2, 0
	sltu	$2, $3
	move	$2, $24
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB55_3 # 16 bit inst
$BB55_3:                                #   in Loop: Header=BB55_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB55_6  # 16 bit inst
	b	$BB55_4 # 16 bit inst
$BB55_4:                                #   in Loop: Header=BB55_1 Depth=1
	b	$BB55_5 # 16 bit inst
$BB55_5:                                #   in Loop: Header=BB55_1 Depth=1
	lw	$2, 16($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 16($16)
	b	$BB55_1 # 16 bit inst
$BB55_6:
	lw	$2, 16($16)
	lw	$2, 0($2)
	beqz	$2, $BB55_8  # 16 bit inst
	b	$BB55_7 # 16 bit inst
$BB55_7:
	lw	$2, 16($16)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB55_9 # 16 bit inst
$BB55_8:
	li	$2, 0
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB55_9 # 16 bit inst
$BB55_9:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	wcschr
$func_end55:
	.size	wcschr, ($func_end55)-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	2
	.type	wcscmp,@function
	.set	nomicromips
	.set	mips16
	.ent	wcscmp
wcscmp:                                 # @wcscmp
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	b	$BB56_1 # 16 bit inst
$BB56_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	lw	$3, 0($2)
	lw	$2, 12($16)
	lw	$4, 0($2)
	li	$2, 0
	cmp	$3, $4
	sw	$2, 8($16)                      # 4-byte Folded Spill
	btnez	$BB56_4  # 16 bit inst
	b	$BB56_2 # 16 bit inst
$BB56_2:                                #   in Loop: Header=BB56_1 Depth=1
	lw	$2, 16($16)
	lw	$2, 0($2)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB56_4  # 16 bit inst
	b	$BB56_3 # 16 bit inst
$BB56_3:                                #   in Loop: Header=BB56_1 Depth=1
	lw	$2, 12($16)
	lw	$3, 0($2)
	li	$2, 0
	xor	$3, $2
	sltu	$2, $3
	move	$2, $24
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB56_4 # 16 bit inst
$BB56_4:                                #   in Loop: Header=BB56_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB56_7  # 16 bit inst
	b	$BB56_5 # 16 bit inst
$BB56_5:                                #   in Loop: Header=BB56_1 Depth=1
	b	$BB56_6 # 16 bit inst
$BB56_6:                                #   in Loop: Header=BB56_1 Depth=1
	lw	$2, 16($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 16($16)
	lw	$2, 12($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 12($16)
	b	$BB56_1 # 16 bit inst
$BB56_7:
	lw	$2, 16($16)
	lw	$2, 0($2)
	lw	$3, 12($16)
	lw	$3, 0($3)
	slt	$2, $3
	bteqz	$BB56_9  # 16 bit inst
	b	$BB56_8 # 16 bit inst
$BB56_8:
	move	$2, $zero
	addiu	$2, -1
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB56_10 # 16 bit inst
$BB56_9:
	lw	$2, 16($16)
	lw	$3, 0($2)
	lw	$2, 12($16)
	lw	$2, 0($2)
	slt	$2, $3
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB56_10 # 16 bit inst
$BB56_10:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	wcscmp
$func_end56:
	.size	wcscmp, ($func_end56)-wcscmp
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	2
	.type	wcscpy,@function
	.set	nomicromips
	.set	mips16
	.ent	wcscpy
wcscpy:                                 # @wcscpy
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	lw	$2, 8($16)
	sw	$2, 0($16)
	b	$BB57_1 # 16 bit inst
$BB57_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, 4	# 16 bit inst
	sw	$3, 4($16)
	lw	$2, 0($2)
	lw	$3, 8($16)
	move	$4, $3
	addiu	$4, 4	# 16 bit inst
	sw	$4, 8($16)
	sw	$2, 0($3)
	beqz	$2, $BB57_3  # 16 bit inst
	b	$BB57_2 # 16 bit inst
$BB57_2:                                #   in Loop: Header=BB57_1 Depth=1
	b	$BB57_1 # 16 bit inst
$BB57_3:
	lw	$2, 0($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	wcscpy
$func_end57:
	.size	wcscpy, ($func_end57)-wcscpy
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	2
	.type	wcslen,@function
	.set	nomicromips
	.set	mips16
	.ent	wcslen
wcslen:                                 # @wcslen
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$2, 8($16)
	sw	$2, 4($16)
	b	$BB58_1 # 16 bit inst
$BB58_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	lw	$2, 0($2)
	beqz	$2, $BB58_4  # 16 bit inst
	b	$BB58_2 # 16 bit inst
$BB58_2:                                #   in Loop: Header=BB58_1 Depth=1
	b	$BB58_3 # 16 bit inst
$BB58_3:                                #   in Loop: Header=BB58_1 Depth=1
	lw	$2, 8($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 8($16)
	b	$BB58_1 # 16 bit inst
$BB58_4:
	lw	$2, 8($16)
	lw	$3, 4($16)
	subu	$2, $2, $3
	sra	$2, $2, 2
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	wcslen
$func_end58:
	.size	wcslen, ($func_end58)-wcslen
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	2
	.type	wcsncmp,@function
	.set	nomicromips
	.set	mips16
	.ent	wcsncmp
wcsncmp:                                # @wcsncmp
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 24($16)
	sw	$5, 20($16)
	sw	$6, 16($16)
	b	$BB59_1 # 16 bit inst
$BB59_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	li	$3, 0
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB59_5  # 16 bit inst
	b	$BB59_2 # 16 bit inst
$BB59_2:                                #   in Loop: Header=BB59_1 Depth=1
	lw	$2, 24($16)
	lw	$3, 0($2)
	lw	$2, 20($16)
	lw	$4, 0($2)
	li	$2, 0
	cmp	$3, $4
	sw	$2, 12($16)                     # 4-byte Folded Spill
	btnez	$BB59_5  # 16 bit inst
	b	$BB59_3 # 16 bit inst
$BB59_3:                                #   in Loop: Header=BB59_1 Depth=1
	lw	$2, 24($16)
	lw	$2, 0($2)
	li	$3, 0
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB59_5  # 16 bit inst
	b	$BB59_4 # 16 bit inst
$BB59_4:                                #   in Loop: Header=BB59_1 Depth=1
	lw	$2, 20($16)
	lw	$3, 0($2)
	li	$2, 0
	xor	$3, $2
	sltu	$2, $3
	move	$2, $24
	sw	$2, 12($16)                     # 4-byte Folded Spill
	b	$BB59_5 # 16 bit inst
$BB59_5:                                #   in Loop: Header=BB59_1 Depth=1
	lw	$2, 12($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB59_8  # 16 bit inst
	b	$BB59_6 # 16 bit inst
$BB59_6:                                #   in Loop: Header=BB59_1 Depth=1
	b	$BB59_7 # 16 bit inst
$BB59_7:                                #   in Loop: Header=BB59_1 Depth=1
	lw	$2, 16($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 16($16)
	lw	$2, 24($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 24($16)
	lw	$2, 20($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 20($16)
	b	$BB59_1 # 16 bit inst
$BB59_8:
	lw	$2, 16($16)
	beqz	$2, $BB59_13  # 16 bit inst
	b	$BB59_9 # 16 bit inst
$BB59_9:
	lw	$2, 24($16)
	lw	$2, 0($2)
	lw	$3, 20($16)
	lw	$3, 0($3)
	slt	$2, $3
	bteqz	$BB59_11  # 16 bit inst
	b	$BB59_10 # 16 bit inst
$BB59_10:
	move	$2, $zero
	addiu	$2, -1
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB59_12 # 16 bit inst
$BB59_11:
	lw	$2, 24($16)
	lw	$3, 0($2)
	lw	$2, 20($16)
	lw	$2, 0($2)
	slt	$2, $3
	move	$2, $24
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB59_12 # 16 bit inst
$BB59_12:
	lw	$2, 8($16)                      # 4-byte Folded Reload
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB59_14 # 16 bit inst
$BB59_13:
	li	$2, 0
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB59_14 # 16 bit inst
$BB59_14:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	wcsncmp
$func_end59:
	.size	wcsncmp, ($func_end59)-wcsncmp
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	2
	.type	wmemchr,@function
	.set	nomicromips
	.set	mips16
	.ent	wmemchr
wmemchr:                                # @wmemchr
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	sw	$6, 8($16)
	b	$BB60_1 # 16 bit inst
$BB60_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	li	$3, 0
	sw	$3, 4($16)                      # 4-byte Folded Spill
	beqz	$2, $BB60_3  # 16 bit inst
	b	$BB60_2 # 16 bit inst
$BB60_2:                                #   in Loop: Header=BB60_1 Depth=1
	lw	$2, 16($16)
	lw	$3, 0($2)
	lw	$2, 12($16)
	xor	$3, $2
	li	$2, 0
	sltu	$2, $3
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB60_3 # 16 bit inst
$BB60_3:                                #   in Loop: Header=BB60_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB60_6  # 16 bit inst
	b	$BB60_4 # 16 bit inst
$BB60_4:                                #   in Loop: Header=BB60_1 Depth=1
	b	$BB60_5 # 16 bit inst
$BB60_5:                                #   in Loop: Header=BB60_1 Depth=1
	lw	$2, 8($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 8($16)
	lw	$2, 16($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 16($16)
	b	$BB60_1 # 16 bit inst
$BB60_6:
	lw	$2, 8($16)
	beqz	$2, $BB60_8  # 16 bit inst
	b	$BB60_7 # 16 bit inst
$BB60_7:
	lw	$2, 16($16)
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB60_9 # 16 bit inst
$BB60_8:
	li	$2, 0
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB60_9 # 16 bit inst
$BB60_9:
	lw	$2, 0($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	wmemchr
$func_end60:
	.size	wmemchr, ($func_end60)-wmemchr
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	2
	.type	wmemcmp,@function
	.set	nomicromips
	.set	mips16
	.ent	wmemcmp
wmemcmp:                                # @wmemcmp
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 24($16)
	sw	$5, 20($16)
	sw	$6, 16($16)
	b	$BB61_1 # 16 bit inst
$BB61_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	li	$3, 0
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB61_3  # 16 bit inst
	b	$BB61_2 # 16 bit inst
$BB61_2:                                #   in Loop: Header=BB61_1 Depth=1
	lw	$2, 24($16)
	lw	$2, 0($2)
	lw	$3, 20($16)
	lw	$3, 0($3)
	xor	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 12($16)                     # 4-byte Folded Spill
	b	$BB61_3 # 16 bit inst
$BB61_3:                                #   in Loop: Header=BB61_1 Depth=1
	lw	$2, 12($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB61_6  # 16 bit inst
	b	$BB61_4 # 16 bit inst
$BB61_4:                                #   in Loop: Header=BB61_1 Depth=1
	b	$BB61_5 # 16 bit inst
$BB61_5:                                #   in Loop: Header=BB61_1 Depth=1
	lw	$2, 16($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 16($16)
	lw	$2, 24($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 24($16)
	lw	$2, 20($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 20($16)
	b	$BB61_1 # 16 bit inst
$BB61_6:
	lw	$2, 16($16)
	beqz	$2, $BB61_11  # 16 bit inst
	b	$BB61_7 # 16 bit inst
$BB61_7:
	lw	$2, 24($16)
	lw	$2, 0($2)
	lw	$3, 20($16)
	lw	$3, 0($3)
	slt	$2, $3
	bteqz	$BB61_9  # 16 bit inst
	b	$BB61_8 # 16 bit inst
$BB61_8:
	move	$2, $zero
	addiu	$2, -1
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB61_10 # 16 bit inst
$BB61_9:
	lw	$2, 24($16)
	lw	$3, 0($2)
	lw	$2, 20($16)
	lw	$2, 0($2)
	slt	$2, $3
	move	$2, $24
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB61_10 # 16 bit inst
$BB61_10:
	lw	$2, 8($16)                      # 4-byte Folded Reload
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB61_12 # 16 bit inst
$BB61_11:
	li	$2, 0
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB61_12 # 16 bit inst
$BB61_12:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	wmemcmp
$func_end61:
	.size	wmemcmp, ($func_end61)-wmemcmp
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	2
	.type	wmemcpy,@function
	.set	nomicromips
	.set	mips16
	.ent	wmemcpy
wmemcpy:                                # @wmemcpy
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	sw	$6, 8($16)
	lw	$2, 16($16)
	sw	$2, 4($16)
	b	$BB62_1 # 16 bit inst
$BB62_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 8($16)
	beqz	$2, $BB62_3  # 16 bit inst
	b	$BB62_2 # 16 bit inst
$BB62_2:                                #   in Loop: Header=BB62_1 Depth=1
	lw	$2, 12($16)
	move	$3, $2
	addiu	$3, 4	# 16 bit inst
	sw	$3, 12($16)
	lw	$2, 0($2)
	lw	$3, 16($16)
	move	$4, $3
	addiu	$4, 4	# 16 bit inst
	sw	$4, 16($16)
	sw	$2, 0($3)
	b	$BB62_1 # 16 bit inst
$BB62_3:
	lw	$2, 4($16)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	wmemcpy
$func_end62:
	.size	wmemcpy, ($func_end62)-wmemcpy
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	2
	.type	wmemmove,@function
	.set	nomicromips
	.set	mips16
	.ent	wmemmove
wmemmove:                               # @wmemmove
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 12($16)
	sw	$5, 8($16)
	sw	$6, 4($16)
	lw	$2, 12($16)
	sw	$2, 0($16)
	lw	$2, 12($16)
	lw	$3, 8($16)
	cmp	$2, $3
	btnez	$BB63_2  # 16 bit inst
	b	$BB63_1 # 16 bit inst
$BB63_1:
	lw	$2, 12($16)
	sw	$2, 16($16)
	b	$BB63_12 # 16 bit inst
$BB63_2:
	lw	$2, 12($16)
	lw	$3, 8($16)
	subu	$2, $2, $3
	lw	$3, 4($16)
	sll	$3, $3, 2
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB63_7  # 16 bit inst
	b	$BB63_3 # 16 bit inst
$BB63_3:
	b	$BB63_4 # 16 bit inst
$BB63_4:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 4($16)
	beqz	$2, $BB63_6  # 16 bit inst
	b	$BB63_5 # 16 bit inst
$BB63_5:                                #   in Loop: Header=BB63_4 Depth=1
	lw	$2, 8($16)
	lw	$3, 4($16)
	sll	$4, $3, 2
	addu	$2, $2, $4
	lw	$2, 0($2)
	lw	$3, 12($16)
	addu	$3, $3, $4
	sw	$2, 0($3)
	b	$BB63_4 # 16 bit inst
$BB63_6:
	b	$BB63_11 # 16 bit inst
$BB63_7:
	b	$BB63_8 # 16 bit inst
$BB63_8:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 4($16)
	beqz	$2, $BB63_10  # 16 bit inst
	b	$BB63_9 # 16 bit inst
$BB63_9:                                #   in Loop: Header=BB63_8 Depth=1
	lw	$2, 8($16)
	move	$3, $2
	addiu	$3, 4	# 16 bit inst
	sw	$3, 8($16)
	lw	$2, 0($2)
	lw	$3, 12($16)
	move	$4, $3
	addiu	$4, 4	# 16 bit inst
	sw	$4, 12($16)
	sw	$2, 0($3)
	b	$BB63_8 # 16 bit inst
$BB63_10:
	b	$BB63_11 # 16 bit inst
$BB63_11:
	lw	$2, 0($16)
	sw	$2, 16($16)
	b	$BB63_12 # 16 bit inst
$BB63_12:
	lw	$2, 16($16)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	wmemmove
$func_end63:
	.size	wmemmove, ($func_end63)-wmemmove
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	2
	.type	wmemset,@function
	.set	nomicromips
	.set	mips16
	.ent	wmemset
wmemset:                                # @wmemset
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	sw	$6, 8($16)
	lw	$2, 16($16)
	sw	$2, 4($16)
	b	$BB64_1 # 16 bit inst
$BB64_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 8($16)
	beqz	$2, $BB64_3  # 16 bit inst
	b	$BB64_2 # 16 bit inst
$BB64_2:                                #   in Loop: Header=BB64_1 Depth=1
	lw	$2, 12($16)
	lw	$3, 16($16)
	move	$4, $3
	addiu	$4, 4	# 16 bit inst
	sw	$4, 16($16)
	sw	$2, 0($3)
	b	$BB64_1 # 16 bit inst
$BB64_3:
	lw	$2, 4($16)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	wmemset
$func_end64:
	.size	wmemset, ($func_end64)-wmemset
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	2
	.type	bcopy,@function
	.set	nomicromips
	.set	mips16
	.ent	bcopy
bcopy:                                  # @bcopy
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	sw	$6, 8($16)
	lw	$2, 16($16)
	sw	$2, 4($16)
	lw	$2, 12($16)
	sw	$2, 0($16)
	lw	$2, 4($16)
	lw	$3, 0($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB65_6  # 16 bit inst
	b	$BB65_1 # 16 bit inst
$BB65_1:
	lw	$3, 8($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	lw	$3, 8($16)
	lw	$2, 0($16)
	addu	$2, $2, $3
	sw	$2, 0($16)
	b	$BB65_2 # 16 bit inst
$BB65_2:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB65_5  # 16 bit inst
	b	$BB65_3 # 16 bit inst
$BB65_3:                                #   in Loop: Header=BB65_2 Depth=1
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 4($16)
	lbu	$2, -1($2)
	lw	$3, 0($16)
	move	$4, $3
	addiu	$4, -1	# 16 bit inst
	sw	$4, 0($16)
	sb	$2, -1($3)
	b	$BB65_4 # 16 bit inst
$BB65_4:                                #   in Loop: Header=BB65_2 Depth=1
	lw	$2, 8($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB65_2 # 16 bit inst
$BB65_5:
	b	$BB65_13 # 16 bit inst
$BB65_6:
	lw	$2, 4($16)
	lw	$3, 0($16)
	cmp	$2, $3
	bteqz	$BB65_12  # 16 bit inst
	b	$BB65_7 # 16 bit inst
$BB65_7:
	b	$BB65_8 # 16 bit inst
$BB65_8:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB65_11  # 16 bit inst
	b	$BB65_9 # 16 bit inst
$BB65_9:                                #   in Loop: Header=BB65_8 Depth=1
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, 1	# 16 bit inst
	sw	$3, 4($16)
	lbu	$2, 0($2)
	lw	$3, 0($16)
	move	$4, $3
	addiu	$4, 1	# 16 bit inst
	sw	$4, 0($16)
	sb	$2, 0($3)
	b	$BB65_10 # 16 bit inst
$BB65_10:                               #   in Loop: Header=BB65_8 Depth=1
	lw	$2, 8($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB65_8 # 16 bit inst
$BB65_11:
	b	$BB65_12 # 16 bit inst
$BB65_12:
	b	$BB65_13 # 16 bit inst
$BB65_13:
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	bcopy
$func_end65:
	.size	bcopy, ($func_end65)-bcopy
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	2
	.type	rotl64,@function
	.set	nomicromips
	.set	mips16
	.ent	rotl64
rotl64:                                 # @rotl64
	.frame	$16,96,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 96 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 84($16)
	sw	$4, 80($16)
	sw	$6, 76($16)
	lw	$2, 84($16)
	sw	$2, 44($16)                     # 4-byte Folded Spill
	lw	$3, 80($16)
	sw	$3, 48($16)                     # 4-byte Folded Spill
	lw	$4, 76($16)
	sw	$4, 52($16)                     # 4-byte Folded Spill
	li	$5, 32
	sw	$5, 56($16)                     # 4-byte Folded Spill
	move	$2, $4
	and	$2, $5
	sw	$2, 60($16)                     # 4-byte Folded Spill
	sllv	$3, $4
	sw	$3, 64($16)                     # 4-byte Folded Spill
	li	$3, 0
	sw	$3, 68($16)                     # 4-byte Folded Spill
	sw	$3, 72($16)                     # 4-byte Folded Spill
	bnez	$2, $BB66_2  # 16 bit inst
# %bb.1:
	lw	$2, 64($16)                     # 4-byte Folded Reload
	sw	$2, 72($16)                     # 4-byte Folded Spill
$BB66_2:
	lw	$2, 60($16)                     # 4-byte Folded Reload
	lw	$3, 64($16)                     # 4-byte Folded Reload
	lw	$5, 48($16)                     # 4-byte Folded Reload
	lw	$6, 52($16)                     # 4-byte Folded Reload
	lw	$4, 44($16)                     # 4-byte Folded Reload
	lw	$7, 72($16)                     # 4-byte Folded Reload
	sw	$7, 28($16)                     # 4-byte Folded Spill
	sllv	$4, $6
	li	$7, 31
	sw	$7, 32($16)                     # 4-byte Folded Spill
	xor	$6, $7
	srl	$5, $5, 1
	srlv	$5, $6
	or	$4, $5
	sw	$4, 36($16)                     # 4-byte Folded Spill
	sw	$3, 40($16)                     # 4-byte Folded Spill
	bnez	$2, $BB66_4  # 16 bit inst
# %bb.3:
	lw	$2, 36($16)                     # 4-byte Folded Reload
	sw	$2, 40($16)                     # 4-byte Folded Spill
$BB66_4:
	lw	$3, 44($16)                     # 4-byte Folded Reload
	lw	$5, 56($16)                     # 4-byte Folded Reload
	lw	$2, 32($16)                     # 4-byte Folded Reload
	lw	$6, 48($16)                     # 4-byte Folded Reload
	lw	$7, 52($16)                     # 4-byte Folded Reload
	lw	$4, 40($16)                     # 4-byte Folded Reload
	sw	$4, 8($16)                      # 4-byte Folded Spill
	li	$4, 64
	subu	$4, $4, $7
	srlv	$6, $4
	move	$7, $4
	xor	$7, $2
	sll	$2, $3, 1
	sllv	$2, $7
	or	$2, $6
	sw	$2, 12($16)                     # 4-byte Folded Spill
	move	$2, $4
	and	$2, $5
	sw	$2, 16($16)                     # 4-byte Folded Spill
	srlv	$3, $4
	sw	$3, 20($16)                     # 4-byte Folded Spill
	sw	$3, 24($16)                     # 4-byte Folded Spill
	bnez	$2, $BB66_6  # 16 bit inst
# %bb.5:
	lw	$2, 12($16)                     # 4-byte Folded Reload
	sw	$2, 24($16)                     # 4-byte Folded Spill
$BB66_6:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	lw	$3, 68($16)                     # 4-byte Folded Reload
	lw	$4, 24($16)                     # 4-byte Folded Reload
	sw	$4, 0($16)                      # 4-byte Folded Spill
	sw	$3, 4($16)                      # 4-byte Folded Spill
	bnez	$2, $BB66_8  # 16 bit inst
# %bb.7:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$2, 4($16)                      # 4-byte Folded Spill
$BB66_8:
	lw	$4, 0($16)                      # 4-byte Folded Reload
	lw	$2, 28($16)                     # 4-byte Folded Reload
	lw	$3, 8($16)                      # 4-byte Folded Reload
	lw	$5, 4($16)                      # 4-byte Folded Reload
	or	$3, $5
	or	$2, $4
	move	$sp, $16
	restore	$16, 96 # 16 bit inst

	jrc	$ra
	.end	rotl64
$func_end66:
	.size	rotl64, ($func_end66)-rotl64
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	2
	.type	rotr64,@function
	.set	nomicromips
	.set	mips16
	.ent	rotr64
rotr64:                                 # @rotr64
	.frame	$16,96,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 96 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 84($16)
	sw	$4, 80($16)
	sw	$6, 76($16)
	lw	$2, 80($16)
	sw	$2, 44($16)                     # 4-byte Folded Spill
	lw	$3, 84($16)
	sw	$3, 48($16)                     # 4-byte Folded Spill
	lw	$4, 76($16)
	sw	$4, 52($16)                     # 4-byte Folded Spill
	li	$5, 32
	sw	$5, 56($16)                     # 4-byte Folded Spill
	move	$2, $4
	and	$2, $5
	sw	$2, 60($16)                     # 4-byte Folded Spill
	srlv	$3, $4
	sw	$3, 64($16)                     # 4-byte Folded Spill
	li	$3, 0
	sw	$3, 68($16)                     # 4-byte Folded Spill
	sw	$3, 72($16)                     # 4-byte Folded Spill
	bnez	$2, $BB67_2  # 16 bit inst
# %bb.1:
	lw	$2, 64($16)                     # 4-byte Folded Reload
	sw	$2, 72($16)                     # 4-byte Folded Spill
$BB67_2:
	lw	$2, 60($16)                     # 4-byte Folded Reload
	lw	$3, 64($16)                     # 4-byte Folded Reload
	lw	$4, 48($16)                     # 4-byte Folded Reload
	lw	$6, 52($16)                     # 4-byte Folded Reload
	lw	$5, 44($16)                     # 4-byte Folded Reload
	lw	$7, 72($16)                     # 4-byte Folded Reload
	sw	$7, 28($16)                     # 4-byte Folded Spill
	srlv	$5, $6
	li	$7, 31
	sw	$7, 32($16)                     # 4-byte Folded Spill
	xor	$6, $7
	sll	$4, $4, 1
	sllv	$4, $6
	or	$4, $5
	sw	$4, 36($16)                     # 4-byte Folded Spill
	sw	$3, 40($16)                     # 4-byte Folded Spill
	bnez	$2, $BB67_4  # 16 bit inst
# %bb.3:
	lw	$2, 36($16)                     # 4-byte Folded Reload
	sw	$2, 40($16)                     # 4-byte Folded Spill
$BB67_4:
	lw	$3, 44($16)                     # 4-byte Folded Reload
	lw	$5, 56($16)                     # 4-byte Folded Reload
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$2, 48($16)                     # 4-byte Folded Reload
	lw	$7, 52($16)                     # 4-byte Folded Reload
	lw	$4, 40($16)                     # 4-byte Folded Reload
	sw	$4, 8($16)                      # 4-byte Folded Spill
	li	$4, 64
	subu	$4, $4, $7
	sllv	$2, $4
	move	$7, $4
	xor	$7, $6
	srl	$6, $3, 1
	srlv	$6, $7
	or	$2, $6
	sw	$2, 12($16)                     # 4-byte Folded Spill
	move	$2, $4
	and	$2, $5
	sw	$2, 16($16)                     # 4-byte Folded Spill
	sllv	$3, $4
	sw	$3, 20($16)                     # 4-byte Folded Spill
	sw	$3, 24($16)                     # 4-byte Folded Spill
	bnez	$2, $BB67_6  # 16 bit inst
# %bb.5:
	lw	$2, 12($16)                     # 4-byte Folded Reload
	sw	$2, 24($16)                     # 4-byte Folded Spill
$BB67_6:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	lw	$3, 68($16)                     # 4-byte Folded Reload
	lw	$4, 24($16)                     # 4-byte Folded Reload
	sw	$4, 0($16)                      # 4-byte Folded Spill
	sw	$3, 4($16)                      # 4-byte Folded Spill
	bnez	$2, $BB67_8  # 16 bit inst
# %bb.7:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$2, 4($16)                      # 4-byte Folded Spill
$BB67_8:
	lw	$4, 0($16)                      # 4-byte Folded Reload
	lw	$3, 28($16)                     # 4-byte Folded Reload
	lw	$2, 8($16)                      # 4-byte Folded Reload
	lw	$5, 4($16)                      # 4-byte Folded Reload
	or	$2, $5
	or	$3, $4
	move	$sp, $16
	restore	$16, 96 # 16 bit inst

	jrc	$ra
	.end	rotr64
$func_end67:
	.size	rotr64, ($func_end67)-rotr64
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	2
	.type	rotl32,@function
	.set	nomicromips
	.set	mips16
	.ent	rotl32
rotl32:                                 # @rotl32
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	lw	$3, 8($16)
	lw	$5, 4($16)
	move	$2, $3
	sllv	$2, $5
	li	$4, 32
	subu	$4, $4, $5
	srlv	$3, $4
	or	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	rotl32
$func_end68:
	.size	rotl32, ($func_end68)-rotl32
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	2
	.type	rotr32,@function
	.set	nomicromips
	.set	mips16
	.ent	rotr32
rotr32:                                 # @rotr32
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	lw	$3, 8($16)
	lw	$5, 4($16)
	move	$2, $3
	srlv	$2, $5
	li	$4, 32
	subu	$4, $4, $5
	sllv	$3, $4
	or	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	rotr32
$func_end69:
	.size	rotr32, ($func_end69)-rotr32
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	2
	.type	rotl_sz,@function
	.set	nomicromips
	.set	mips16
	.ent	rotl_sz
rotl_sz:                                # @rotl_sz
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	lw	$3, 8($16)
	lw	$5, 4($16)
	move	$2, $3
	sllv	$2, $5
	li	$4, 32
	subu	$4, $4, $5
	srlv	$3, $4
	or	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	rotl_sz
$func_end70:
	.size	rotl_sz, ($func_end70)-rotl_sz
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	2
	.type	rotr_sz,@function
	.set	nomicromips
	.set	mips16
	.ent	rotr_sz
rotr_sz:                                # @rotr_sz
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	lw	$3, 8($16)
	lw	$5, 4($16)
	move	$2, $3
	srlv	$2, $5
	li	$4, 32
	subu	$4, $4, $5
	sllv	$3, $4
	or	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	rotr_sz
$func_end71:
	.size	rotr_sz, ($func_end71)-rotr_sz
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	2
	.type	rotl16,@function
	.set	nomicromips
	.set	mips16
	.ent	rotl16
rotl16:                                 # @rotl16
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	addiu	$2, $16, 10
	sh	$4, 0($2)
	sw	$5, 4($16)
	lhu	$3, 0($2)
	lw	$5, 4($16)
	move	$2, $3
	sllv	$2, $5
	li	$4, 16
	subu	$4, $4, $5
	srlv	$3, $4
	or	$2, $3
	li	$3, 65535
	and	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	rotl16
$func_end72:
	.size	rotl16, ($func_end72)-rotl16
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	2
	.type	rotr16,@function
	.set	nomicromips
	.set	mips16
	.ent	rotr16
rotr16:                                 # @rotr16
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	addiu	$2, $16, 10
	sh	$4, 0($2)
	sw	$5, 4($16)
	lhu	$3, 0($2)
	lw	$5, 4($16)
	move	$2, $3
	srlv	$2, $5
	li	$4, 16
	subu	$4, $4, $5
	sllv	$3, $4
	or	$2, $3
	li	$3, 65535
	and	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	rotr16
$func_end73:
	.size	rotr16, ($func_end73)-rotr16
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	2
	.type	rotl8,@function
	.set	nomicromips
	.set	mips16
	.ent	rotl8
rotl8:                                  # @rotl8
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	addiu	$2, $16, 11
	sb	$4, 0($2)
	sw	$5, 4($16)
	lbu	$3, 0($2)
	lw	$5, 4($16)
	move	$2, $3
	sllv	$2, $5
	li	$4, 8
	subu	$4, $4, $5
	srlv	$3, $4
	or	$2, $3
	li	$3, 255
	and	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	rotl8
$func_end74:
	.size	rotl8, ($func_end74)-rotl8
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	2
	.type	rotr8,@function
	.set	nomicromips
	.set	mips16
	.ent	rotr8
rotr8:                                  # @rotr8
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	addiu	$2, $16, 11
	sb	$4, 0($2)
	sw	$5, 4($16)
	lbu	$3, 0($2)
	lw	$5, 4($16)
	move	$2, $3
	srlv	$2, $5
	li	$4, 8
	subu	$4, $4, $5
	sllv	$3, $4
	or	$2, $3
	li	$3, 255
	and	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	rotr8
$func_end75:
	.size	rotr8, ($func_end75)-rotr8
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	2
	.type	bswap_16,@function
	.set	nomicromips
	.set	mips16
	.ent	bswap_16
bswap_16:                               # @bswap_16
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	addiu	$3, $16, 2
	sh	$4, 0($3)
	addiu	$2, $16, 0
	li	$4, 255
	sh	$4, 0($2)
	lhu	$3, 0($3)
	lhu	$4, 0($2)
	sll	$5, $4, 8
	move	$2, $3
	and	$2, $5
	srl	$2, $2, 8
	and	$3, $4
	sll	$3, $3, 8
	or	$2, $3
	li	$3, 65535
	and	$2, $3
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	bswap_16
$func_end76:
	.size	bswap_16, ($func_end76)-bswap_16
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	2
	.type	bswap_32,@function
	.set	nomicromips
	.set	mips16
	.ent	bswap_32
bswap_32:                               # @bswap_32
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	li	$2, 255
	sw	$2, 4($16)
	lw	$3, 8($16)
	lw	$4, 4($16)
	sll	$5, $4, 24
	move	$2, $3
	and	$2, $5
	srl	$2, $2, 24
	sll	$5, $4, 16
	move	$6, $3
	and	$6, $5
	srl	$6, $6, 8
	or	$2, $6
	sll	$6, $3, 8
	and	$5, $6
	or	$2, $5
	and	$3, $4
	sll	$3, $3, 24
	or	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	bswap_32
$func_end77:
	.size	bswap_32, ($func_end77)-bswap_32
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	2
	.type	bswap_64,@function
	.set	nomicromips
	.set	mips16
	.ent	bswap_64
bswap_64:                               # @bswap_64
	.frame	$16,48,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 36($16)
	sw	$4, 32($16)
	li	$2, 0
	sw	$2, 28($16)
	li	$2, 255
	sw	$2, 24($16)
	lw	$4, 32($16)
	lw	$17, 36($16)
	lw	$5, 24($16)
	sll	$3, $5, 24
	move	$2, $17
	and	$2, $3
	srl	$2, $2, 24
	sll	$6, $5, 16
	move	$3, $17
	and	$3, $6
	srl	$3, $3, 8
	or	$2, $3
	sw	$2, 0($16)                      # 4-byte Folded Spill
	sll	$7, $5, 8
	move	$3, $17
	and	$3, $7
	srl	$2, $3, 24
	sw	$2, 12($16)                     # 4-byte Folded Spill
	lw	$2, 0($16)                      # 4-byte Folded Reload
	sll	$3, $3, 8
	or	$2, $3
	sw	$2, 4($16)                      # 4-byte Folded Spill
	move	$3, $17
	and	$3, $5
	srl	$2, $3, 8
	sw	$2, 8($16)                      # 4-byte Folded Spill
	lw	$2, 4($16)                      # 4-byte Folded Reload
	sll	$3, $3, 24
	or	$2, $3
	lw	$3, 8($16)                      # 4-byte Folded Reload
	sw	$2, 20($16)                     # 4-byte Folded Spill
	lw	$2, 12($16)                     # 4-byte Folded Reload
	or	$2, $3
	sw	$2, 16($16)                     # 4-byte Folded Spill
	srl	$2, $4, 24
	sll	$3, $17, 8
	or	$3, $2
	move	$2, $5
	and	$2, $3
	lw	$3, 16($16)                     # 4-byte Folded Reload
	or	$3, $2
	srl	$2, $4, 8
	sll	$17, $17, 24
	or	$17, $2
	lw	$2, 20($16)                     # 4-byte Folded Reload
	and	$7, $17
	or	$3, $7
	sll	$7, $4, 8
	and	$6, $7
	or	$3, $6
	and	$4, $5
	sll	$4, $4, 24
	or	$3, $4
	move	$sp, $16
	restore	$16, $17, 48 # 16 bit inst

	jrc	$ra
	.end	bswap_64
$func_end78:
	.size	bswap_64, ($func_end78)-bswap_64
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	2
	.type	ffs,@function
	.set	nomicromips
	.set	mips16
	.ent	ffs
ffs:                                    # @ffs
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 4($16)
	li	$2, 0
	sw	$2, 0($16)
	b	$BB79_1 # 16 bit inst
$BB79_1:                                # =>This Inner Loop Header: Depth=1
	lw	$3, 0($16)
	li	$2, 31
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB79_6  # 16 bit inst
	b	$BB79_2 # 16 bit inst
$BB79_2:                                #   in Loop: Header=BB79_1 Depth=1
	lw	$2, 4($16)
	lw	$3, 0($16)
	srlv	$2, $3
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB79_4  # 16 bit inst
	b	$BB79_3 # 16 bit inst
$BB79_3:
	lw	$2, 0($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB79_7 # 16 bit inst
$BB79_4:                                #   in Loop: Header=BB79_1 Depth=1
	b	$BB79_5 # 16 bit inst
$BB79_5:                                #   in Loop: Header=BB79_1 Depth=1
	lw	$2, 0($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 0($16)
	b	$BB79_1 # 16 bit inst
$BB79_6:
	li	$2, 0
	sw	$2, 8($16)
	b	$BB79_7 # 16 bit inst
$BB79_7:
	lw	$2, 8($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	ffs
$func_end79:
	.size	ffs, ($func_end79)-ffs
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	2
	.type	libiberty_ffs,@function
	.set	nomicromips
	.set	mips16
	.ent	libiberty_ffs
libiberty_ffs:                          # @libiberty_ffs
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 4($16)
	lw	$2, 4($16)
	bnez	$2, $BB80_2  # 16 bit inst
	b	$BB80_1 # 16 bit inst
$BB80_1:
	li	$2, 0
	sw	$2, 8($16)
	b	$BB80_7 # 16 bit inst
$BB80_2:
	li	$2, 1
	sw	$2, 0($16)
	b	$BB80_3 # 16 bit inst
$BB80_3:                                # =>This Inner Loop Header: Depth=1
	addiu	$2, $16, 4
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	bnez	$2, $BB80_6  # 16 bit inst
	b	$BB80_4 # 16 bit inst
$BB80_4:                                #   in Loop: Header=BB80_3 Depth=1
	lw	$2, 4($16)
	sra	$2, $2, 1
	sw	$2, 4($16)
	b	$BB80_5 # 16 bit inst
$BB80_5:                                #   in Loop: Header=BB80_3 Depth=1
	lw	$2, 0($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 0($16)
	b	$BB80_3 # 16 bit inst
$BB80_6:
	lw	$2, 0($16)
	sw	$2, 8($16)
	b	$BB80_7 # 16 bit inst
$BB80_7:
	lw	$2, 8($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	libiberty_ffs
$func_end80:
	.size	libiberty_ffs, ($func_end80)-libiberty_ffs
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	2
	.type	gl_isinff,@function
	.set	nomicromips
	.set	mips16
	.ent	gl_isinff
gl_isinff:                              # @gl_isinff
	.frame	$16,32,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 32 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	sw	$4, 20($16)
	lw	$4, 20($16)
	lw	$5, 1f
	b	2f
	.align	2
1: 	.word	-8388609
2:
	jal	__ltsf2
	nop
	move	$3, $2
	li	$2, 1
	slti	$3, 0 	# 16 bit inst
	sw	$2, 16($16)                     # 4-byte Folded Spill
	btnez	$BB81_2  # 16 bit inst
	b	$BB81_1 # 16 bit inst
$BB81_1:
	lw	$4, 20($16)
	lw	$5, 1f
	b	2f
	.align	2
1: 	.word	2139095039
2:
	jal	__gtsf2
	nop
	move	$3, $2
	li	$2, 0
	slt	$2, $3
	move	$2, $24
	sw	$2, 16($16)                     # 4-byte Folded Spill
	b	$BB81_2 # 16 bit inst
$BB81_2:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, $ra, 32 # 16 bit inst

	jrc	$ra
	.end	gl_isinff
$func_end81:
	.size	gl_isinff, ($func_end81)-gl_isinff
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	2
	.type	gl_isinfd,@function
	.set	nomicromips
	.set	mips16
	.ent	gl_isinfd
gl_isinfd:                              # @gl_isinfd
	.frame	$16,40,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 28($16)
	sw	$4, 24($16)
	lw	$4, 24($16)
	lw	$5, 28($16)
	move	$6, $zero
	addiu	$6, -1
	lw	$7, 1f
	b	2f
	.align	2
1: 	.word	-1048577
2:
	jal	__ltdf2
	nop
	move	$3, $2
	li	$2, 1
	slti	$3, 0 	# 16 bit inst
	sw	$2, 20($16)                     # 4-byte Folded Spill
	btnez	$BB82_2  # 16 bit inst
	b	$BB82_1 # 16 bit inst
$BB82_1:
	lw	$4, 24($16)
	lw	$5, 28($16)
	move	$6, $zero
	addiu	$6, -1
	lw	$7, 1f
	b	2f
	.align	2
1: 	.word	2146435071
2:
	jal	__gtdf2
	nop
	move	$3, $2
	li	$2, 0
	slt	$2, $3
	move	$2, $24
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB82_2 # 16 bit inst
$BB82_2:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, $ra, 40 # 16 bit inst

	jrc	$ra
	.end	gl_isinfd
$func_end82:
	.size	gl_isinfd, ($func_end82)-gl_isinfd
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	2
	.type	gl_isinfl,@function
	.set	nomicromips
	.set	mips16
	.ent	gl_isinfl
gl_isinfl:                              # @gl_isinfl
	.frame	$16,40,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 28($16)
	sw	$4, 24($16)
	lw	$4, 24($16)
	lw	$5, 28($16)
	move	$6, $zero
	addiu	$6, -1
	lw	$7, 1f
	b	2f
	.align	2
1: 	.word	-1048577
2:
	jal	__ltdf2
	nop
	move	$3, $2
	li	$2, 1
	slti	$3, 0 	# 16 bit inst
	sw	$2, 20($16)                     # 4-byte Folded Spill
	btnez	$BB83_2  # 16 bit inst
	b	$BB83_1 # 16 bit inst
$BB83_1:
	lw	$4, 24($16)
	lw	$5, 28($16)
	move	$6, $zero
	addiu	$6, -1
	lw	$7, 1f
	b	2f
	.align	2
1: 	.word	2146435071
2:
	jal	__gtdf2
	nop
	move	$3, $2
	li	$2, 0
	slt	$2, $3
	move	$2, $24
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB83_2 # 16 bit inst
$BB83_2:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, $ra, 40 # 16 bit inst

	jrc	$ra
	.end	gl_isinfl
$func_end83:
	.size	gl_isinfl, ($func_end83)-gl_isinfl
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	2
	.type	_Qp_itoq,@function
	.set	nomicromips
	.set	mips16
	.ent	_Qp_itoq
_Qp_itoq:                               # @_Qp_itoq
	.frame	$16,32,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 20($16)
	sw	$5, 16($16)
	lw	$4, 16($16)
	jal	__floatsidf
	nop
	move	$4, $3
	lw	$3, 20($16)
	sw	$4, 4($3)
	sw	$2, 0($3)
	move	$sp, $16
	restore	$16, $ra, 32 # 16 bit inst

	jrc	$ra
	.end	_Qp_itoq
$func_end84:
	.size	_Qp_itoq, ($func_end84)-_Qp_itoq
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	2
	.type	ldexpf,@function
	.set	nomicromips
	.set	mips16
	.ent	ldexpf
ldexpf:                                 # @ldexpf
	.frame	$16,48,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	sw	$4, 36($16)
	sw	$5, 32($16)
	lw	$3, 36($16)
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$3, $2
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	2139095040
2:
	slt	$2, $3
	btnez	$BB85_11  # 16 bit inst
	b	$BB85_1 # 16 bit inst
$BB85_1:
	lw	$5, 36($16)
	sw	$5, 24($16)                     # 4-byte Folded Spill
	move	$4, $5
	jal	__addsf3
	nop
	lw	$5, 24($16)                     # 4-byte Folded Reload
	move	$4, $2
	jal	__eqsf2
	nop
	beqz	$2, $BB85_11  # 16 bit inst
	b	$BB85_2 # 16 bit inst
$BB85_2:
	lw	$3, 32($16)
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1073741824
2:
	sw	$2, 16($16)                     # 4-byte Folded Spill
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1056964608
2:
	slti	$3, 0
	sw	$2, 20($16)                     # 4-byte Folded Spill
	btnez	$BB85_4  # 16 bit inst
# %bb.3:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	sw	$2, 20($16)                     # 4-byte Folded Spill
$BB85_4:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$2, 28($16)
	b	$BB85_5 # 16 bit inst
$BB85_5:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 32($16)
	srl	$3, $2, 31
	addu	$3, $2, $3
	move	$4, $zero
	addiu	$4, -2
	and	$3, $4
	subu	$2, $2, $3
	beqz	$2, $BB85_7  # 16 bit inst
	b	$BB85_6 # 16 bit inst
$BB85_6:                                #   in Loop: Header=BB85_5 Depth=1
	lw	$5, 28($16)
	lw	$4, 36($16)
	jal	__mulsf3
	nop
	sw	$2, 36($16)
	b	$BB85_7 # 16 bit inst
$BB85_7:                                #   in Loop: Header=BB85_5 Depth=1
	lw	$2, 32($16)
	srl	$3, $2, 31
	addu	$2, $2, $3
	sra	$2, $2, 1
	sw	$2, 32($16)
	lw	$2, 32($16)
	bnez	$2, $BB85_9  # 16 bit inst
	b	$BB85_8 # 16 bit inst
$BB85_8:
	b	$BB85_10 # 16 bit inst
$BB85_9:                                #   in Loop: Header=BB85_5 Depth=1
	lw	$5, 28($16)
	move	$4, $5
	jal	__mulsf3
	nop
	sw	$2, 28($16)
	b	$BB85_5 # 16 bit inst
$BB85_10:
	b	$BB85_11 # 16 bit inst
$BB85_11:
	lw	$2, 36($16)
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

	jrc	$ra
	.end	ldexpf
$func_end85:
	.size	ldexpf, ($func_end85)-ldexpf
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	2
	.type	ldexp,@function
	.set	nomicromips
	.set	mips16
	.ent	ldexp
ldexp:                                  # @ldexp
	.frame	$16,72,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 72 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 60($16)
	sw	$4, 56($16)
	sw	$6, 52($16)
	lw	$5, 56($16)
	lw	$4, 60($16)
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$4, $2
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2146435072
2:
	slt	$3, $4
	move	$2, $24
	sw	$2, 32($16)                     # 4-byte Folded Spill
	li	$2, 0
	xor	$5, $2
	sltu	$2, $5
	move	$2, $24
	cmp	$3, $4
	sw	$2, 36($16)                     # 4-byte Folded Spill
	bteqz	$BB86_2  # 16 bit inst
# %bb.1:
	lw	$2, 32($16)                     # 4-byte Folded Reload
	sw	$2, 36($16)                     # 4-byte Folded Spill
$BB86_2:
	lw	$2, 36($16)                     # 4-byte Folded Reload
	bnez	$2, $BB86_13  # 16 bit inst
	b	$BB86_3 # 16 bit inst
$BB86_3:
	lw	$6, 56($16)
	sw	$6, 24($16)                     # 4-byte Folded Spill
	lw	$7, 60($16)
	sw	$7, 28($16)                     # 4-byte Folded Spill
	move	$4, $6
	move	$5, $7
	jal	__adddf3
	nop
	lw	$6, 24($16)                     # 4-byte Folded Reload
	lw	$7, 28($16)                     # 4-byte Folded Reload
	move	$4, $2
	move	$5, $3
	jal	__eqdf2
	nop
	beqz	$2, $BB86_13  # 16 bit inst
	b	$BB86_4 # 16 bit inst
$BB86_4:
	lw	$3, 52($16)
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1073741824
2:
	sw	$2, 16($16)                     # 4-byte Folded Spill
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1071644672
2:
	slti	$3, 0
	sw	$2, 20($16)                     # 4-byte Folded Spill
	btnez	$BB86_6  # 16 bit inst
# %bb.5:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	sw	$2, 20($16)                     # 4-byte Folded Spill
$BB86_6:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	li	$3, 0
	sw	$3, 40($16)
	sw	$2, 44($16)
	b	$BB86_7 # 16 bit inst
$BB86_7:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 52($16)
	srl	$3, $2, 31
	addu	$3, $2, $3
	move	$4, $zero
	addiu	$4, -2
	and	$3, $4
	subu	$2, $2, $3
	beqz	$2, $BB86_9  # 16 bit inst
	b	$BB86_8 # 16 bit inst
$BB86_8:                                #   in Loop: Header=BB86_7 Depth=1
	lw	$6, 40($16)
	lw	$7, 44($16)
	lw	$4, 56($16)
	lw	$5, 60($16)
	jal	__muldf3
	nop
	sw	$3, 60($16)
	sw	$2, 56($16)
	b	$BB86_9 # 16 bit inst
$BB86_9:                                #   in Loop: Header=BB86_7 Depth=1
	lw	$2, 52($16)
	srl	$3, $2, 31
	addu	$2, $2, $3
	sra	$2, $2, 1
	sw	$2, 52($16)
	lw	$2, 52($16)
	bnez	$2, $BB86_11  # 16 bit inst
	b	$BB86_10 # 16 bit inst
$BB86_10:
	b	$BB86_12 # 16 bit inst
$BB86_11:                               #   in Loop: Header=BB86_7 Depth=1
	lw	$6, 40($16)
	lw	$7, 44($16)
	move	$4, $6
	move	$5, $7
	jal	__muldf3
	nop
	sw	$3, 44($16)
	sw	$2, 40($16)
	b	$BB86_7 # 16 bit inst
$BB86_12:
	b	$BB86_13 # 16 bit inst
$BB86_13:
	lw	$2, 56($16)
	lw	$3, 60($16)
	move	$sp, $16
	restore	$16, $ra, 72 # 16 bit inst

	jrc	$ra
	.end	ldexp
$func_end86:
	.size	ldexp, ($func_end86)-ldexp
                                        # -- End function
	.globl	ldexpl                          # -- Begin function ldexpl
	.p2align	2
	.type	ldexpl,@function
	.set	nomicromips
	.set	mips16
	.ent	ldexpl
ldexpl:                                 # @ldexpl
	.frame	$16,72,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 72 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 60($16)
	sw	$4, 56($16)
	sw	$6, 52($16)
	lw	$5, 56($16)
	lw	$4, 60($16)
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	2147483647
2:
	and	$4, $2
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	2146435072
2:
	slt	$3, $4
	move	$2, $24
	sw	$2, 32($16)                     # 4-byte Folded Spill
	li	$2, 0
	xor	$5, $2
	sltu	$2, $5
	move	$2, $24
	cmp	$3, $4
	sw	$2, 36($16)                     # 4-byte Folded Spill
	bteqz	$BB87_2  # 16 bit inst
# %bb.1:
	lw	$2, 32($16)                     # 4-byte Folded Reload
	sw	$2, 36($16)                     # 4-byte Folded Spill
$BB87_2:
	lw	$2, 36($16)                     # 4-byte Folded Reload
	bnez	$2, $BB87_13  # 16 bit inst
	b	$BB87_3 # 16 bit inst
$BB87_3:
	lw	$6, 56($16)
	sw	$6, 24($16)                     # 4-byte Folded Spill
	lw	$7, 60($16)
	sw	$7, 28($16)                     # 4-byte Folded Spill
	move	$4, $6
	move	$5, $7
	jal	__adddf3
	nop
	lw	$6, 24($16)                     # 4-byte Folded Reload
	lw	$7, 28($16)                     # 4-byte Folded Reload
	move	$4, $2
	move	$5, $3
	jal	__eqdf2
	nop
	beqz	$2, $BB87_13  # 16 bit inst
	b	$BB87_4 # 16 bit inst
$BB87_4:
	lw	$3, 52($16)
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1073741824
2:
	sw	$2, 16($16)                     # 4-byte Folded Spill
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1071644672
2:
	slti	$3, 0
	sw	$2, 20($16)                     # 4-byte Folded Spill
	btnez	$BB87_6  # 16 bit inst
# %bb.5:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	sw	$2, 20($16)                     # 4-byte Folded Spill
$BB87_6:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	li	$3, 0
	sw	$3, 40($16)
	sw	$2, 44($16)
	b	$BB87_7 # 16 bit inst
$BB87_7:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 52($16)
	srl	$3, $2, 31
	addu	$3, $2, $3
	move	$4, $zero
	addiu	$4, -2
	and	$3, $4
	subu	$2, $2, $3
	beqz	$2, $BB87_9  # 16 bit inst
	b	$BB87_8 # 16 bit inst
$BB87_8:                                #   in Loop: Header=BB87_7 Depth=1
	lw	$6, 40($16)
	lw	$7, 44($16)
	lw	$4, 56($16)
	lw	$5, 60($16)
	jal	__muldf3
	nop
	sw	$3, 60($16)
	sw	$2, 56($16)
	b	$BB87_9 # 16 bit inst
$BB87_9:                                #   in Loop: Header=BB87_7 Depth=1
	lw	$2, 52($16)
	srl	$3, $2, 31
	addu	$2, $2, $3
	sra	$2, $2, 1
	sw	$2, 52($16)
	lw	$2, 52($16)
	bnez	$2, $BB87_11  # 16 bit inst
	b	$BB87_10 # 16 bit inst
$BB87_10:
	b	$BB87_12 # 16 bit inst
$BB87_11:                               #   in Loop: Header=BB87_7 Depth=1
	lw	$6, 40($16)
	lw	$7, 44($16)
	move	$4, $6
	move	$5, $7
	jal	__muldf3
	nop
	sw	$3, 44($16)
	sw	$2, 40($16)
	b	$BB87_7 # 16 bit inst
$BB87_12:
	b	$BB87_13 # 16 bit inst
$BB87_13:
	lw	$2, 56($16)
	lw	$3, 60($16)
	move	$sp, $16
	restore	$16, $ra, 72 # 16 bit inst

	jrc	$ra
	.end	ldexpl
$func_end87:
	.size	ldexpl, ($func_end87)-ldexpl
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	2
	.type	memxor,@function
	.set	nomicromips
	.set	mips16
	.ent	memxor
memxor:                                 # @memxor
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	sw	$6, 8($16)
	lw	$2, 12($16)
	sw	$2, 4($16)
	lw	$2, 16($16)
	sw	$2, 0($16)
	b	$BB88_1 # 16 bit inst
$BB88_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB88_4  # 16 bit inst
	b	$BB88_2 # 16 bit inst
$BB88_2:                                #   in Loop: Header=BB88_1 Depth=1
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, 1	# 16 bit inst
	sw	$3, 4($16)
	lbu	$4, 0($2)
	lw	$3, 0($16)
	move	$2, $3
	addiu	$2, 1	# 16 bit inst
	sw	$2, 0($16)
	lbu	$2, 0($3)
	xor	$2, $4
	sb	$2, 0($3)
	b	$BB88_3 # 16 bit inst
$BB88_3:                                #   in Loop: Header=BB88_1 Depth=1
	lw	$2, 8($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB88_1 # 16 bit inst
$BB88_4:
	lw	$2, 16($16)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	memxor
$func_end88:
	.size	memxor, ($func_end88)-memxor
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	2
	.type	strncat,@function
	.set	nomicromips
	.set	mips16
	.ent	strncat
strncat:                                # @strncat
	.frame	$16,48,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 48 # 16 bit inst

	move	$16, $sp
	sw	$4, 36($16)
	sw	$5, 32($16)
	sw	$6, 28($16)
	lw	$4, 36($16)
	sw	$4, 20($16)                     # 4-byte Folded Spill
	jal	strlen
	nop
	move	$3, $2
	lw	$2, 20($16)                     # 4-byte Folded Reload
	addu	$2, $2, $3
	sw	$2, 24($16)
	b	$BB89_1 # 16 bit inst
$BB89_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 28($16)
	li	$3, 0
	sw	$3, 16($16)                     # 4-byte Folded Spill
	beqz	$2, $BB89_3  # 16 bit inst
	b	$BB89_2 # 16 bit inst
$BB89_2:                                #   in Loop: Header=BB89_1 Depth=1
	lw	$2, 32($16)
	lbu	$3, 0($2)
	lw	$2, 24($16)
	sb	$3, 0($2)
	li	$2, 0
	xor	$3, $2
	sltu	$2, $3
	move	$2, $24
	sw	$2, 16($16)                     # 4-byte Folded Spill
	b	$BB89_3 # 16 bit inst
$BB89_3:                                #   in Loop: Header=BB89_1 Depth=1
	lw	$2, 16($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB89_6  # 16 bit inst
	b	$BB89_4 # 16 bit inst
$BB89_4:                                #   in Loop: Header=BB89_1 Depth=1
	b	$BB89_5 # 16 bit inst
$BB89_5:                                #   in Loop: Header=BB89_1 Depth=1
	lw	$2, 32($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 32($16)
	lw	$2, 24($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 24($16)
	lw	$2, 28($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 28($16)
	b	$BB89_1 # 16 bit inst
$BB89_6:
	lw	$2, 28($16)
	bnez	$2, $BB89_8  # 16 bit inst
	b	$BB89_7 # 16 bit inst
$BB89_7:
	lw	$3, 24($16)
	li	$2, 0
	sb	$2, 0($3)
	b	$BB89_8 # 16 bit inst
$BB89_8:
	lw	$2, 36($16)
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

	jrc	$ra
	.end	strncat
$func_end89:
	.size	strncat, ($func_end89)-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	2
	.type	strnlen,@function
	.set	nomicromips
	.set	mips16
	.ent	strnlen
strnlen:                                # @strnlen
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	sw	$5, 12($16)
	li	$2, 0
	sw	$2, 8($16)
	b	$BB90_1 # 16 bit inst
$BB90_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	lw	$3, 12($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	li	$3, 0
	sw	$3, 4($16)                      # 4-byte Folded Spill
	bnez	$2, $BB90_3  # 16 bit inst
	b	$BB90_2 # 16 bit inst
$BB90_2:                                #   in Loop: Header=BB90_1 Depth=1
	lw	$2, 16($16)
	lw	$3, 8($16)
	addu	$2, $2, $3
	lb	$3, 0($2)
	li	$2, 0
	xor	$3, $2
	sltu	$2, $3
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB90_3 # 16 bit inst
$BB90_3:                                #   in Loop: Header=BB90_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB90_6  # 16 bit inst
	b	$BB90_4 # 16 bit inst
$BB90_4:                                #   in Loop: Header=BB90_1 Depth=1
	b	$BB90_5 # 16 bit inst
$BB90_5:                                #   in Loop: Header=BB90_1 Depth=1
	lw	$2, 8($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB90_1 # 16 bit inst
$BB90_6:
	lw	$2, 8($16)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	strnlen
$func_end90:
	.size	strnlen, ($func_end90)-strnlen
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	2
	.type	strpbrk,@function
	.set	nomicromips
	.set	mips16
	.ent	strpbrk
strpbrk:                                # @strpbrk
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 12($16)
	sw	$5, 8($16)
	b	$BB91_1 # 16 bit inst
$BB91_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB91_3 Depth 2
	lw	$2, 12($16)
	lb	$2, 0($2)
	beqz	$2, $BB91_8  # 16 bit inst
	b	$BB91_2 # 16 bit inst
$BB91_2:                                #   in Loop: Header=BB91_1 Depth=1
	lw	$2, 8($16)
	sw	$2, 4($16)
	b	$BB91_3 # 16 bit inst
$BB91_3:                                #   Parent Loop BB91_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$2, 4($16)
	lb	$2, 0($2)
	beqz	$2, $BB91_7  # 16 bit inst
	b	$BB91_4 # 16 bit inst
$BB91_4:                                #   in Loop: Header=BB91_3 Depth=2
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, 1	# 16 bit inst
	sw	$3, 4($16)
	lb	$2, 0($2)
	lw	$3, 12($16)
	lb	$3, 0($3)
	cmp	$2, $3
	btnez	$BB91_6  # 16 bit inst
	b	$BB91_5 # 16 bit inst
$BB91_5:
	lw	$2, 12($16)
	sw	$2, 16($16)
	b	$BB91_9 # 16 bit inst
$BB91_6:                                #   in Loop: Header=BB91_3 Depth=2
	b	$BB91_3 # 16 bit inst
$BB91_7:                                #   in Loop: Header=BB91_1 Depth=1
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB91_1 # 16 bit inst
$BB91_8:
	li	$2, 0
	sw	$2, 16($16)
	b	$BB91_9 # 16 bit inst
$BB91_9:
	lw	$2, 16($16)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	strpbrk
$func_end91:
	.size	strpbrk, ($func_end91)-strpbrk
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	2
	.type	strrchr,@function
	.set	nomicromips
	.set	mips16
	.ent	strrchr
strrchr:                                # @strrchr
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	li	$2, 0
	sw	$2, 0($16)
	b	$BB92_1 # 16 bit inst
$BB92_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	lb	$2, 0($2)
	lw	$3, 4($16)
	cmp	$2, $3
	btnez	$BB92_3  # 16 bit inst
	b	$BB92_2 # 16 bit inst
$BB92_2:                                #   in Loop: Header=BB92_1 Depth=1
	lw	$2, 8($16)
	sw	$2, 0($16)
	b	$BB92_3 # 16 bit inst
$BB92_3:                                #   in Loop: Header=BB92_1 Depth=1
	b	$BB92_4 # 16 bit inst
$BB92_4:                                #   in Loop: Header=BB92_1 Depth=1
	lw	$2, 8($16)
	move	$3, $2
	addiu	$3, 1	# 16 bit inst
	sw	$3, 8($16)
	lbu	$2, 0($2)
	bnez	$2, $BB92_1  # 16 bit inst
	b	$BB92_5 # 16 bit inst
$BB92_5:
	lw	$2, 0($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	strrchr
$func_end92:
	.size	strrchr, ($func_end92)-strrchr
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	2
	.type	strstr,@function
	.set	nomicromips
	.set	mips16
	.ent	strstr
strstr:                                 # @strstr
	.frame	$16,48,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 48 # 16 bit inst

	move	$16, $sp
	sw	$4, 32($16)
	sw	$5, 28($16)
	lw	$2, 32($16)
	sw	$2, 24($16)
	lw	$4, 28($16)
	jal	strlen
	nop
	sw	$2, 20($16)
	lw	$2, 20($16)
	bnez	$2, $BB93_2  # 16 bit inst
	b	$BB93_1 # 16 bit inst
$BB93_1:
	lw	$2, 32($16)
	sw	$2, 36($16)
	b	$BB93_9 # 16 bit inst
$BB93_2:
	b	$BB93_3 # 16 bit inst
$BB93_3:                                # =>This Inner Loop Header: Depth=1
	lw	$4, 24($16)
	lw	$2, 28($16)
	lb	$5, 0($2)
	jal	strchr
	nop
	sw	$2, 24($16)
	beqz	$2, $BB93_8  # 16 bit inst
	b	$BB93_4 # 16 bit inst
$BB93_4:                                #   in Loop: Header=BB93_3 Depth=1
	lw	$4, 24($16)
	lw	$5, 28($16)
	lw	$6, 20($16)
	jal	strncmp
	nop
	bnez	$2, $BB93_6  # 16 bit inst
	b	$BB93_5 # 16 bit inst
$BB93_5:
	lw	$2, 24($16)
	sw	$2, 36($16)
	b	$BB93_9 # 16 bit inst
$BB93_6:                                #   in Loop: Header=BB93_3 Depth=1
	b	$BB93_7 # 16 bit inst
$BB93_7:                                #   in Loop: Header=BB93_3 Depth=1
	lw	$2, 24($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 24($16)
	b	$BB93_3 # 16 bit inst
$BB93_8:
	li	$2, 0
	sw	$2, 36($16)
	b	$BB93_9 # 16 bit inst
$BB93_9:
	lw	$2, 36($16)
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

	jrc	$ra
	.end	strstr
$func_end93:
	.size	strstr, ($func_end93)-strstr
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	2
	.type	copysign,@function
	.set	nomicromips
	.set	mips16
	.ent	copysign
copysign:                               # @copysign
	.frame	$16,56,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 56 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 36($16)
	sw	$4, 32($16)
	sw	$7, 28($16)
	sw	$6, 24($16)
	lw	$4, 32($16)
	lw	$5, 36($16)
	li	$7, 0
	move	$6, $7
	jal	__ltdf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB94_2  # 16 bit inst
	b	$BB94_1 # 16 bit inst
$BB94_1:
	lw	$4, 24($16)
	lw	$5, 28($16)
	li	$7, 0
	sw	$7, 20($16)                     # 4-byte Folded Spill
	move	$6, $7
	jal	__gtdf2
	nop
	move	$3, $2
	lw	$2, 20($16)                     # 4-byte Folded Reload
	slt	$2, $3
	btnez	$BB94_4  # 16 bit inst
	b	$BB94_2 # 16 bit inst
$BB94_2:
	lw	$4, 32($16)
	lw	$5, 36($16)
	li	$7, 0
	move	$6, $7
	jal	__gtdf2
	nop
	slti	$2, 1 	# 16 bit inst
	btnez	$BB94_5  # 16 bit inst
	b	$BB94_3 # 16 bit inst
$BB94_3:
	lw	$4, 24($16)
	lw	$5, 28($16)
	li	$7, 0
	move	$6, $7
	jal	__ltdf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB94_5  # 16 bit inst
	b	$BB94_4 # 16 bit inst
$BB94_4:
	lw	$3, 32($16)
	lw	$2, 36($16)
	lw	$4, 1f
	b	2f
	.align	2
1: 	.word	-2147483648
2:
	xor	$2, $4
	sw	$3, 40($16)
	sw	$2, 44($16)
	b	$BB94_6 # 16 bit inst
$BB94_5:
	lw	$2, 32($16)
	lw	$3, 36($16)
	sw	$3, 44($16)
	sw	$2, 40($16)
	b	$BB94_6 # 16 bit inst
$BB94_6:
	lw	$2, 40($16)
	lw	$3, 44($16)
	move	$sp, $16
	restore	$16, $ra, 56 # 16 bit inst

	jrc	$ra
	.end	copysign
$func_end94:
	.size	copysign, ($func_end94)-copysign
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	2
	.type	memmem,@function
	.set	nomicromips
	.set	mips16
	.ent	memmem
memmem:                                 # @memmem
	.frame	$16,56,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 56 # 16 bit inst

	move	$16, $sp
	sw	$4, 40($16)
	sw	$5, 36($16)
	sw	$6, 32($16)
	sw	$7, 28($16)
	lw	$2, 40($16)
	lw	$3, 36($16)
	addu	$2, $2, $3
	lw	$3, 28($16)
	subu	$2, $2, $3
	sw	$2, 20($16)
	lw	$2, 28($16)
	bnez	$2, $BB95_2  # 16 bit inst
	b	$BB95_1 # 16 bit inst
$BB95_1:
	lw	$2, 40($16)
	sw	$2, 44($16)
	b	$BB95_12 # 16 bit inst
$BB95_2:
	lw	$2, 36($16)
	lw	$3, 28($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB95_4  # 16 bit inst
	b	$BB95_3 # 16 bit inst
$BB95_3:
	li	$2, 0
	sw	$2, 44($16)
	b	$BB95_12 # 16 bit inst
$BB95_4:
	lw	$2, 40($16)
	sw	$2, 24($16)
	b	$BB95_5 # 16 bit inst
$BB95_5:                                # =>This Inner Loop Header: Depth=1
	lw	$3, 24($16)
	lw	$2, 20($16)
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB95_11  # 16 bit inst
	b	$BB95_6 # 16 bit inst
$BB95_6:                                #   in Loop: Header=BB95_5 Depth=1
	lw	$2, 24($16)
	lb	$2, 0($2)
	lw	$3, 32($16)
	lb	$3, 0($3)
	cmp	$2, $3
	btnez	$BB95_9  # 16 bit inst
	b	$BB95_7 # 16 bit inst
$BB95_7:                                #   in Loop: Header=BB95_5 Depth=1
	lw	$4, 24($16)
	addiu	$4, 1	# 16 bit inst
	lw	$5, 32($16)
	addiu	$5, 1	# 16 bit inst
	lw	$6, 28($16)
	addiu	$6, -1	# 16 bit inst
	jal	memcmp
	nop
	bnez	$2, $BB95_9  # 16 bit inst
	b	$BB95_8 # 16 bit inst
$BB95_8:
	lw	$2, 24($16)
	sw	$2, 44($16)
	b	$BB95_12 # 16 bit inst
$BB95_9:                                #   in Loop: Header=BB95_5 Depth=1
	b	$BB95_10 # 16 bit inst
$BB95_10:                               #   in Loop: Header=BB95_5 Depth=1
	lw	$2, 24($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 24($16)
	b	$BB95_5 # 16 bit inst
$BB95_11:
	li	$2, 0
	sw	$2, 44($16)
	b	$BB95_12 # 16 bit inst
$BB95_12:
	lw	$2, 44($16)
	move	$sp, $16
	restore	$16, $ra, 56 # 16 bit inst

	jrc	$ra
	.end	memmem
$func_end95:
	.size	memmem, ($func_end95)-memmem
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	2
	.type	mempcpy,@function
	.set	nomicromips
	.set	mips16
	.ent	mempcpy
mempcpy:                                # @mempcpy
	.frame	$16,40,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 28($16)
	sw	$5, 24($16)
	sw	$6, 20($16)
	lw	$4, 28($16)
	sw	$4, 16($16)                     # 4-byte Folded Spill
	lw	$5, 24($16)
	lw	$6, 20($16)
	jal	memcpy
	nop
                                        # kill: def $v1 killed $v0
	lw	$2, 16($16)                     # 4-byte Folded Reload
	lw	$3, 20($16)
	addu	$2, $2, $3
	move	$sp, $16
	restore	$16, $ra, 40 # 16 bit inst

	jrc	$ra
	.end	mempcpy
$func_end96:
	.size	mempcpy, ($func_end96)-mempcpy
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	2
	.type	frexp,@function
	.set	nomicromips
	.set	mips16
	.ent	frexp
frexp:                                  # @frexp
	.frame	$16,48,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 36($16)
	sw	$4, 32($16)
	sw	$6, 28($16)
	li	$7, 0
	sw	$7, 20($16)
	sw	$7, 24($16)
	lw	$4, 32($16)
	lw	$5, 36($16)
	move	$6, $7
	jal	__ltdf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB97_2  # 16 bit inst
	b	$BB97_1 # 16 bit inst
$BB97_1:
	lw	$2, 36($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	-2147483648
2:
	xor	$2, $3
	sw	$2, 36($16)
	li	$2, 1
	sw	$2, 24($16)
	b	$BB97_2 # 16 bit inst
$BB97_2:
	lw	$4, 32($16)
	lw	$5, 36($16)
	li	$6, 0
	lw	$7, 1f
	b	2f
	.align	2
1: 	.word	1072693248
2:
	jal	__gedf2
	nop
	slti	$2, 0 	# 16 bit inst
	btnez	$BB97_7  # 16 bit inst
	b	$BB97_3 # 16 bit inst
$BB97_3:
	b	$BB97_4 # 16 bit inst
$BB97_4:                                # =>This Inner Loop Header: Depth=1
	lw	$4, 32($16)
	lw	$5, 36($16)
	li	$6, 0
	lw	$7, 1f
	b	2f
	.align	2
1: 	.word	1072693248
2:
	jal	__gedf2
	nop
	slti	$2, 0 	# 16 bit inst
	btnez	$BB97_6  # 16 bit inst
	b	$BB97_5 # 16 bit inst
$BB97_5:                                #   in Loop: Header=BB97_4 Depth=1
	lw	$2, 20($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 20($16)
	lw	$4, 32($16)
	lw	$5, 36($16)
	li	$6, 0
	lw	$7, 1f
	b	2f
	.align	2
1: 	.word	1071644672
2:
	jal	__muldf3
	nop
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB97_4 # 16 bit inst
$BB97_6:
	b	$BB97_14 # 16 bit inst
$BB97_7:
	lw	$4, 32($16)
	lw	$5, 36($16)
	li	$6, 0
	lw	$7, 1f
	b	2f
	.align	2
1: 	.word	1071644672
2:
	jal	__ltdf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB97_13  # 16 bit inst
	b	$BB97_8 # 16 bit inst
$BB97_8:
	lw	$4, 32($16)
	lw	$5, 36($16)
	li	$7, 0
	move	$6, $7
	jal	__eqdf2
	nop
	beqz	$2, $BB97_13  # 16 bit inst
	b	$BB97_9 # 16 bit inst
$BB97_9:
	b	$BB97_10 # 16 bit inst
$BB97_10:                               # =>This Inner Loop Header: Depth=1
	lw	$4, 32($16)
	lw	$5, 36($16)
	li	$6, 0
	lw	$7, 1f
	b	2f
	.align	2
1: 	.word	1071644672
2:
	jal	__ltdf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB97_12  # 16 bit inst
	b	$BB97_11 # 16 bit inst
$BB97_11:                               #   in Loop: Header=BB97_10 Depth=1
	lw	$2, 20($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 20($16)
	lw	$6, 32($16)
	lw	$7, 36($16)
	move	$4, $6
	move	$5, $7
	jal	__adddf3
	nop
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB97_10 # 16 bit inst
$BB97_12:
	b	$BB97_13 # 16 bit inst
$BB97_13:
	b	$BB97_14 # 16 bit inst
$BB97_14:
	lw	$2, 20($16)
	lw	$3, 28($16)
	sw	$2, 0($3)
	lw	$2, 24($16)
	beqz	$2, $BB97_16  # 16 bit inst
	b	$BB97_15 # 16 bit inst
$BB97_15:
	lw	$2, 36($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	-2147483648
2:
	xor	$2, $3
	sw	$2, 36($16)
	b	$BB97_16 # 16 bit inst
$BB97_16:
	lw	$2, 32($16)
	lw	$3, 36($16)
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

	jrc	$ra
	.end	frexp
$func_end97:
	.size	frexp, ($func_end97)-frexp
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	2
	.type	__muldi3,@function
	.set	nomicromips
	.set	mips16
	.ent	__muldi3
__muldi3:                               # @__muldi3
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 28($16)
	sw	$4, 24($16)
	sw	$7, 20($16)
	sw	$6, 16($16)
	li	$2, 0
	sw	$2, 12($16)
	sw	$2, 8($16)
	lw	$2, 24($16)
	lw	$3, 28($16)
	sw	$3, 4($16)
	sw	$2, 0($16)
	b	$BB98_1 # 16 bit inst
$BB98_1:                                # =>This Inner Loop Header: Depth=1
	lw	$3, 4($16)
	lw	$2, 0($16)
	or	$2, $3
	beqz	$2, $BB98_5  # 16 bit inst
	b	$BB98_2 # 16 bit inst
$BB98_2:                                #   in Loop: Header=BB98_1 Depth=1
	addiu	$2, $16, 0
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB98_4  # 16 bit inst
	b	$BB98_3 # 16 bit inst
$BB98_3:                                #   in Loop: Header=BB98_1 Depth=1
	lw	$3, 16($16)
	lw	$5, 20($16)
	lw	$4, 8($16)
	lw	$2, 12($16)
	addu	$2, $2, $5
	addu	$3, $4, $3
	sltu	$3, $4
	move	$4, $24
	addu	$2, $2, $4
	sw	$3, 8($16)
	sw	$2, 12($16)
	b	$BB98_4 # 16 bit inst
$BB98_4:                                #   in Loop: Header=BB98_1 Depth=1
	lw	$2, 20($16)
	lw	$3, 16($16)
	srl	$4, $3, 31
	sll	$2, $2, 1
	or	$2, $4
	sll	$3, $3, 1
	sw	$3, 16($16)
	sw	$2, 20($16)
	lw	$2, 0($16)
	lw	$3, 4($16)
	sll	$4, $3, 31
	srl	$2, $2, 1
	or	$2, $4
	srl	$3, $3, 1
	sw	$3, 4($16)
	sw	$2, 0($16)
	b	$BB98_1 # 16 bit inst
$BB98_5:
	lw	$2, 8($16)
	lw	$3, 12($16)
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

	jrc	$ra
	.end	__muldi3
$func_end98:
	.size	__muldi3, ($func_end98)-__muldi3
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	2
	.type	udivmodsi4,@function
	.set	nomicromips
	.set	mips16
	.ent	udivmodsi4
udivmodsi4:                             # @udivmodsi4
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 20($16)
	sw	$5, 16($16)
	sw	$6, 12($16)
	li	$2, 1
	sw	$2, 8($16)
	li	$2, 0
	sw	$2, 4($16)
	b	$BB99_1 # 16 bit inst
$BB99_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	lw	$3, 20($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	li	$3, 0
	sw	$3, 0($16)                      # 4-byte Folded Spill
	bnez	$2, $BB99_4  # 16 bit inst
	b	$BB99_2 # 16 bit inst
$BB99_2:                                #   in Loop: Header=BB99_1 Depth=1
	lw	$2, 8($16)
	li	$3, 0
	sw	$3, 0($16)                      # 4-byte Folded Spill
	beqz	$2, $BB99_4  # 16 bit inst
	b	$BB99_3 # 16 bit inst
$BB99_3:                                #   in Loop: Header=BB99_1 Depth=1
	addiu	$2, $16, 16
	lbu	$2, 3($2)
	li	$3, 128
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB99_4 # 16 bit inst
$BB99_4:                                #   in Loop: Header=BB99_1 Depth=1
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB99_6  # 16 bit inst
	b	$BB99_5 # 16 bit inst
$BB99_5:                                #   in Loop: Header=BB99_1 Depth=1
	lw	$2, 16($16)
	sll	$2, $2, 1
	sw	$2, 16($16)
	lw	$2, 8($16)
	sll	$2, $2, 1
	sw	$2, 8($16)
	b	$BB99_1 # 16 bit inst
$BB99_6:
	b	$BB99_7 # 16 bit inst
$BB99_7:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB99_11  # 16 bit inst
	b	$BB99_8 # 16 bit inst
$BB99_8:                                #   in Loop: Header=BB99_7 Depth=1
	lw	$2, 20($16)
	lw	$3, 16($16)
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB99_10  # 16 bit inst
	b	$BB99_9 # 16 bit inst
$BB99_9:                                #   in Loop: Header=BB99_7 Depth=1
	lw	$3, 16($16)
	lw	$2, 20($16)
	subu	$2, $2, $3
	sw	$2, 20($16)
	lw	$3, 8($16)
	lw	$2, 4($16)
	or	$2, $3
	sw	$2, 4($16)
	b	$BB99_10 # 16 bit inst
$BB99_10:                               #   in Loop: Header=BB99_7 Depth=1
	lw	$2, 8($16)
	srl	$2, $2, 1
	sw	$2, 8($16)
	lw	$2, 16($16)
	srl	$2, $2, 1
	sw	$2, 16($16)
	b	$BB99_7 # 16 bit inst
$BB99_11:
	lw	$2, 12($16)
	beqz	$2, $BB99_13  # 16 bit inst
	b	$BB99_12 # 16 bit inst
$BB99_12:
	lw	$2, 20($16)
	sw	$2, 24($16)
	b	$BB99_14 # 16 bit inst
$BB99_13:
	lw	$2, 4($16)
	sw	$2, 24($16)
	b	$BB99_14 # 16 bit inst
$BB99_14:
	lw	$2, 24($16)
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	udivmodsi4
$func_end99:
	.size	udivmodsi4, ($func_end99)-udivmodsi4
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	2
	.type	__clrsbqi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__clrsbqi2
__clrsbqi2:                             # @__clrsbqi2
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	addiu	$2, $16, 7
	sb	$4, 0($2)
	lb	$3, 0($2)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB100_2  # 16 bit inst
	b	$BB100_1 # 16 bit inst
$BB100_1:
	addiu	$3, $16, 7
	lbu	$2, 0($3)
	not	$2, $2
	sb	$2, 0($3)
	b	$BB100_2 # 16 bit inst
$BB100_2:
	addiu	$2, $16, 7
	lb	$2, 0($2)
	bnez	$2, $BB100_4  # 16 bit inst
	b	$BB100_3 # 16 bit inst
$BB100_3:
	li	$2, 7
	sw	$2, 8($16)
	b	$BB100_5 # 16 bit inst
$BB100_4:
	addiu	$2, $16, 7
	lb	$2, 0($2)
	sll	$2, $2, 8
	srl	$3, $2, 1
	or	$2, $3
	srl	$3, $2, 2
	or	$2, $3
	srl	$3, $2, 4
	or	$2, $3
	srl	$3, $2, 8
	or	$2, $3
	srl	$3, $2, 16
	or	$2, $3
	not	$2, $2
	srl	$3, $2, 1
	lw	$4, 1f
	b	2f
	.align	2
1: 	.word	1431655765
2:
	and	$3, $4
	subu	$3, $2, $3
	lw	$4, 1f
	b	2f
	.align	2
1: 	.word	858993459
2:
	move	$2, $3
	and	$2, $4
	srl	$3, $3, 2
	and	$3, $4
	addu	$2, $2, $3
	srl	$3, $2, 4
	addu	$2, $2, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	252645135
2:
	and	$2, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	16843009
2:
	mult	$2, $3
	mflo	$2
	srl	$2, $2, 24
	sw	$2, 0($16)
	lw	$2, 0($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB100_5 # 16 bit inst
$BB100_5:
	lw	$2, 8($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__clrsbqi2
$func_end100:
	.size	__clrsbqi2, ($func_end100)-__clrsbqi2
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	2
	.type	__clrsbdi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__clrsbdi2
__clrsbdi2:                             # @__clrsbdi2
	.frame	$16,40,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 20($16)
	sw	$4, 16($16)
	lw	$3, 20($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB101_2  # 16 bit inst
	b	$BB101_1 # 16 bit inst
$BB101_1:
	lw	$3, 20($16)
	lw	$2, 16($16)
	not	$2, $2
	not	$3, $3
	sw	$3, 20($16)
	sw	$2, 16($16)
	b	$BB101_2 # 16 bit inst
$BB101_2:
	lw	$3, 20($16)
	lw	$2, 16($16)
	or	$2, $3
	bnez	$2, $BB101_4  # 16 bit inst
	b	$BB101_3 # 16 bit inst
$BB101_3:
	li	$2, 63
	sw	$2, 28($16)
	b	$BB101_7 # 16 bit inst
$BB101_4:
	lw	$4, 16($16)
	lw	$2, 20($16)
	sw	$2, 0($16)                      # 4-byte Folded Spill
	srl	$3, $2, 1
	or	$2, $3
	srl	$3, $2, 2
	or	$2, $3
	srl	$3, $2, 4
	or	$2, $3
	srl	$3, $2, 8
	or	$2, $3
	srl	$3, $2, 16
	or	$2, $3
	not	$3, $2
	srl	$5, $3, 1
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1431655765
2:
	and	$5, $2
	subu	$5, $3, $5
	lw	$17, 1f
	b	2f
	.align	2
1: 	.word	858993459
2:
	move	$3, $5
	and	$3, $17
	srl	$5, $5, 2
	and	$5, $17
	addu	$3, $3, $5
	srl	$5, $3, 4
	addu	$3, $3, $5
	lw	$6, 1f
	b	2f
	.align	2
1: 	.word	252645135
2:
	and	$3, $6
	lw	$5, 1f
	b	2f
	.align	2
1: 	.word	16843009
2:
	mult	$3, $5
	mflo	$3
	srl	$3, $3, 24
	srl	$7, $4, 1
	or	$4, $7
	srl	$7, $4, 2
	or	$4, $7
	srl	$7, $4, 4
	or	$4, $7
	srl	$7, $4, 8
	or	$4, $7
	srl	$7, $4, 16
	or	$4, $7
	not	$4, $4
	srl	$7, $4, 1
	and	$7, $2
	lw	$2, 0($16)                      # 4-byte Folded Reload
	subu	$7, $4, $7
	move	$4, $7
	and	$4, $17
	srl	$7, $7, 2
	and	$7, $17
	addu	$4, $4, $7
	srl	$7, $4, 4
	addu	$4, $4, $7
	and	$4, $6
	mult	$4, $5
	mflo	$4
	srl	$4, $4, 24
	addiu	$4, 32	# 16 bit inst
	sw	$4, 4($16)                      # 4-byte Folded Spill
	sw	$3, 8($16)                      # 4-byte Folded Spill
	bnez	$2, $BB101_6  # 16 bit inst
# %bb.5:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	sw	$2, 8($16)                      # 4-byte Folded Spill
$BB101_6:
	lw	$2, 8($16)                      # 4-byte Folded Reload
	sw	$2, 12($16)
	lw	$2, 12($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 28($16)
	b	$BB101_7 # 16 bit inst
$BB101_7:
	lw	$2, 28($16)
	move	$sp, $16
	restore	$16, $17, 40 # 16 bit inst

	jrc	$ra
	.end	__clrsbdi2
$func_end101:
	.size	__clrsbdi2, ($func_end101)-__clrsbdi2
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	2
	.type	__mulsi3,@function
	.set	nomicromips
	.set	mips16
	.ent	__mulsi3
__mulsi3:                               # @__mulsi3
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	li	$2, 0
	sw	$2, 0($16)
	b	$BB102_1 # 16 bit inst
$BB102_1:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB102_5  # 16 bit inst
	b	$BB102_2 # 16 bit inst
$BB102_2:                               #   in Loop: Header=BB102_1 Depth=1
	addiu	$2, $16, 8
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB102_4  # 16 bit inst
	b	$BB102_3 # 16 bit inst
$BB102_3:                               #   in Loop: Header=BB102_1 Depth=1
	lw	$3, 4($16)
	lw	$2, 0($16)
	addu	$2, $2, $3
	sw	$2, 0($16)
	b	$BB102_4 # 16 bit inst
$BB102_4:                               #   in Loop: Header=BB102_1 Depth=1
	lw	$2, 8($16)
	srl	$2, $2, 1
	sw	$2, 8($16)
	lw	$2, 4($16)
	sll	$2, $2, 1
	sw	$2, 4($16)
	b	$BB102_1 # 16 bit inst
$BB102_5:
	lw	$2, 0($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__mulsi3
$func_end102:
	.size	__mulsi3, ($func_end102)-__mulsi3
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	2
	.type	__cmovd,@function
	.set	nomicromips
	.set	mips16
	.ent	__cmovd
__cmovd:                                # @__cmovd
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 32($16)
	sw	$5, 28($16)
	sw	$6, 24($16)
	lw	$2, 24($16)
	srl	$2, $2, 3
	sw	$2, 16($16)
	lw	$2, 24($16)
	move	$3, $zero
	addiu	$3, -8
	and	$2, $3
	sw	$2, 12($16)
	lw	$2, 32($16)
	sw	$2, 8($16)
	lw	$2, 28($16)
	sw	$2, 4($16)
	lw	$2, 8($16)
	lw	$3, 4($16)
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB103_2  # 16 bit inst
	b	$BB103_1 # 16 bit inst
$BB103_1:
	lw	$3, 8($16)
	lw	$2, 4($16)
	lw	$4, 24($16)
	addu	$2, $2, $4
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB103_10  # 16 bit inst
	b	$BB103_2 # 16 bit inst
$BB103_2:
	li	$2, 0
	sw	$2, 20($16)
	b	$BB103_3 # 16 bit inst
$BB103_3:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 20($16)
	lw	$3, 16($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB103_6  # 16 bit inst
	b	$BB103_4 # 16 bit inst
$BB103_4:                               #   in Loop: Header=BB103_3 Depth=1
	lw	$2, 28($16)
	lw	$3, 20($16)
	sll	$5, $3, 3
	addu	$3, $2, $5
	lw	$2, 0($3)
	lw	$4, 4($3)
	lw	$3, 32($16)
	addu	$3, $3, $5
	sw	$4, 4($3)
	sw	$2, 0($3)
	b	$BB103_5 # 16 bit inst
$BB103_5:                               #   in Loop: Header=BB103_3 Depth=1
	lw	$2, 20($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 20($16)
	b	$BB103_3 # 16 bit inst
$BB103_6:
	b	$BB103_7 # 16 bit inst
$BB103_7:                               # =>This Inner Loop Header: Depth=1
	lw	$3, 24($16)
	lw	$2, 12($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB103_9  # 16 bit inst
	b	$BB103_8 # 16 bit inst
$BB103_8:                               #   in Loop: Header=BB103_7 Depth=1
	lw	$2, 4($16)
	lw	$4, 12($16)
	addu	$2, $2, $4
	lbu	$2, 0($2)
	lw	$3, 8($16)
	addu	$3, $3, $4
	sb	$2, 0($3)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB103_7 # 16 bit inst
$BB103_9:
	b	$BB103_14 # 16 bit inst
$BB103_10:
	b	$BB103_11 # 16 bit inst
$BB103_11:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 24($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 24($16)
	beqz	$2, $BB103_13  # 16 bit inst
	b	$BB103_12 # 16 bit inst
$BB103_12:                              #   in Loop: Header=BB103_11 Depth=1
	lw	$2, 4($16)
	lw	$4, 24($16)
	addu	$2, $2, $4
	lbu	$2, 0($2)
	lw	$3, 8($16)
	addu	$3, $3, $4
	sb	$2, 0($3)
	b	$BB103_11 # 16 bit inst
$BB103_13:
	b	$BB103_14 # 16 bit inst
$BB103_14:
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

	jrc	$ra
	.end	__cmovd
$func_end103:
	.size	__cmovd, ($func_end103)-__cmovd
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	2
	.type	__cmovh,@function
	.set	nomicromips
	.set	mips16
	.ent	__cmovh
__cmovh:                                # @__cmovh
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 24($16)
	sw	$5, 20($16)
	sw	$6, 16($16)
	lw	$2, 16($16)
	srl	$2, $2, 1
	sw	$2, 8($16)
	lw	$2, 24($16)
	sw	$2, 4($16)
	lw	$2, 20($16)
	sw	$2, 0($16)
	lw	$2, 4($16)
	lw	$3, 0($16)
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB104_2  # 16 bit inst
	b	$BB104_1 # 16 bit inst
$BB104_1:
	lw	$3, 4($16)
	lw	$2, 0($16)
	lw	$4, 16($16)
	addu	$2, $2, $4
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB104_9  # 16 bit inst
	b	$BB104_2 # 16 bit inst
$BB104_2:
	li	$2, 0
	sw	$2, 12($16)
	b	$BB104_3 # 16 bit inst
$BB104_3:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	lw	$3, 8($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB104_6  # 16 bit inst
	b	$BB104_4 # 16 bit inst
$BB104_4:                               #   in Loop: Header=BB104_3 Depth=1
	lw	$2, 20($16)
	lw	$3, 12($16)
	sll	$4, $3, 1
	addu	$2, $2, $4
	lhu	$2, 0($2)
	lw	$3, 24($16)
	addu	$3, $3, $4
	sh	$2, 0($3)
	b	$BB104_5 # 16 bit inst
$BB104_5:                               #   in Loop: Header=BB104_3 Depth=1
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB104_3 # 16 bit inst
$BB104_6:
	addiu	$2, $16, 16
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB104_8  # 16 bit inst
	b	$BB104_7 # 16 bit inst
$BB104_7:
	lw	$2, 0($16)
	lw	$4, 16($16)
	addiu	$4, -1	# 16 bit inst
	addu	$2, $2, $4
	lbu	$2, 0($2)
	lw	$3, 4($16)
	addu	$3, $3, $4
	sb	$2, 0($3)
	b	$BB104_8 # 16 bit inst
$BB104_8:
	b	$BB104_13 # 16 bit inst
$BB104_9:
	b	$BB104_10 # 16 bit inst
$BB104_10:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 16($16)
	beqz	$2, $BB104_12  # 16 bit inst
	b	$BB104_11 # 16 bit inst
$BB104_11:                              #   in Loop: Header=BB104_10 Depth=1
	lw	$2, 0($16)
	lw	$4, 16($16)
	addu	$2, $2, $4
	lbu	$2, 0($2)
	lw	$3, 4($16)
	addu	$3, $3, $4
	sb	$2, 0($3)
	b	$BB104_10 # 16 bit inst
$BB104_12:
	b	$BB104_13 # 16 bit inst
$BB104_13:
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	__cmovh
$func_end104:
	.size	__cmovh, ($func_end104)-__cmovh
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	2
	.type	__cmovw,@function
	.set	nomicromips
	.set	mips16
	.ent	__cmovw
__cmovw:                                # @__cmovw
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 32($16)
	sw	$5, 28($16)
	sw	$6, 24($16)
	lw	$2, 24($16)
	srl	$2, $2, 2
	sw	$2, 16($16)
	lw	$2, 24($16)
	move	$3, $zero
	addiu	$3, -4
	and	$2, $3
	sw	$2, 12($16)
	lw	$2, 32($16)
	sw	$2, 8($16)
	lw	$2, 28($16)
	sw	$2, 4($16)
	lw	$2, 8($16)
	lw	$3, 4($16)
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB105_2  # 16 bit inst
	b	$BB105_1 # 16 bit inst
$BB105_1:
	lw	$3, 8($16)
	lw	$2, 4($16)
	lw	$4, 24($16)
	addu	$2, $2, $4
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB105_10  # 16 bit inst
	b	$BB105_2 # 16 bit inst
$BB105_2:
	li	$2, 0
	sw	$2, 20($16)
	b	$BB105_3 # 16 bit inst
$BB105_3:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 20($16)
	lw	$3, 16($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB105_6  # 16 bit inst
	b	$BB105_4 # 16 bit inst
$BB105_4:                               #   in Loop: Header=BB105_3 Depth=1
	lw	$2, 28($16)
	lw	$3, 20($16)
	sll	$4, $3, 2
	addu	$2, $2, $4
	lw	$2, 0($2)
	lw	$3, 32($16)
	addu	$3, $3, $4
	sw	$2, 0($3)
	b	$BB105_5 # 16 bit inst
$BB105_5:                               #   in Loop: Header=BB105_3 Depth=1
	lw	$2, 20($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 20($16)
	b	$BB105_3 # 16 bit inst
$BB105_6:
	b	$BB105_7 # 16 bit inst
$BB105_7:                               # =>This Inner Loop Header: Depth=1
	lw	$3, 24($16)
	lw	$2, 12($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB105_9  # 16 bit inst
	b	$BB105_8 # 16 bit inst
$BB105_8:                               #   in Loop: Header=BB105_7 Depth=1
	lw	$2, 4($16)
	lw	$4, 12($16)
	addu	$2, $2, $4
	lbu	$2, 0($2)
	lw	$3, 8($16)
	addu	$3, $3, $4
	sb	$2, 0($3)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB105_7 # 16 bit inst
$BB105_9:
	b	$BB105_14 # 16 bit inst
$BB105_10:
	b	$BB105_11 # 16 bit inst
$BB105_11:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 24($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 24($16)
	beqz	$2, $BB105_13  # 16 bit inst
	b	$BB105_12 # 16 bit inst
$BB105_12:                              #   in Loop: Header=BB105_11 Depth=1
	lw	$2, 4($16)
	lw	$4, 24($16)
	addu	$2, $2, $4
	lbu	$2, 0($2)
	lw	$3, 8($16)
	addu	$3, $3, $4
	sb	$2, 0($3)
	b	$BB105_11 # 16 bit inst
$BB105_13:
	b	$BB105_14 # 16 bit inst
$BB105_14:
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

	jrc	$ra
	.end	__cmovw
$func_end105:
	.size	__cmovw, ($func_end105)-__cmovw
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	2
	.type	__modi,@function
	.set	nomicromips
	.set	mips16
	.ent	__modi
__modi:                                 # @__modi
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	lw	$2, 8($16)
	lw	$3, 4($16)
	div	$zero, $2, $3
	mfhi	$2
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__modi
$func_end106:
	.size	__modi, ($func_end106)-__modi
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	2
	.type	__uitod,@function
	.set	nomicromips
	.set	mips16
	.ent	__uitod
__uitod:                                # @__uitod
	.frame	$16,32,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 20($16)
	lw	$4, 20($16)
	jal	__floatunsidf
	nop
	move	$sp, $16
	restore	$16, $ra, 32 # 16 bit inst

	jrc	$ra
	.end	__uitod
$func_end107:
	.size	__uitod, ($func_end107)-__uitod
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	2
	.type	__uitof,@function
	.set	nomicromips
	.set	mips16
	.ent	__uitof
__uitof:                                # @__uitof
	.frame	$16,32,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 20($16)
	lw	$4, 20($16)
	jal	__floatunsisf
	nop
	move	$sp, $16
	restore	$16, $ra, 32 # 16 bit inst

	jrc	$ra
	.end	__uitof
$func_end108:
	.size	__uitof, ($func_end108)-__uitof
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	2
	.type	__ulltod,@function
	.set	nomicromips
	.set	mips16
	.ent	__ulltod
__ulltod:                               # @__ulltod
	.frame	$16,32,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 32 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 20($16)
	sw	$4, 16($16)
	lw	$4, 16($16)
	lw	$5, 20($16)
	jal	__floatundidf
	nop
	move	$sp, $16
	restore	$16, $ra, 32 # 16 bit inst

	jrc	$ra
	.end	__ulltod
$func_end109:
	.size	__ulltod, ($func_end109)-__ulltod
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	2
	.type	__ulltof,@function
	.set	nomicromips
	.set	mips16
	.ent	__ulltof
__ulltof:                               # @__ulltof
	.frame	$16,32,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 32 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 20($16)
	sw	$4, 16($16)
	lw	$4, 16($16)
	lw	$5, 20($16)
	jal	__floatundisf
	nop
	move	$sp, $16
	restore	$16, $ra, 32 # 16 bit inst

	jrc	$ra
	.end	__ulltof
$func_end110:
	.size	__ulltof, ($func_end110)-__ulltof
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	2
	.type	__umodi,@function
	.set	nomicromips
	.set	mips16
	.ent	__umodi
__umodi:                                # @__umodi
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	lw	$2, 8($16)
	lw	$3, 4($16)
	divu	$zero, $2, $3
	mfhi	$2
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__umodi
$func_end111:
	.size	__umodi, ($func_end111)-__umodi
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	2
	.type	__clzhi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__clzhi2
__clzhi2:                               # @__clzhi2
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	addiu	$2, $16, 10
	sh	$4, 0($2)
	li	$2, 0
	sw	$2, 4($16)
	b	$BB112_1 # 16 bit inst
$BB112_1:                               # =>This Inner Loop Header: Depth=1
	lw	$3, 4($16)
	li	$2, 15
	slt	$2, $3
	btnez	$BB112_6  # 16 bit inst
	b	$BB112_2 # 16 bit inst
$BB112_2:                               #   in Loop: Header=BB112_1 Depth=1
	addiu	$2, $16, 10
	lhu	$2, 0($2)
	lw	$4, 4($16)
	li	$3, 15
	subu	$3, $3, $4
	srlv	$2, $3
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB112_4  # 16 bit inst
	b	$BB112_3 # 16 bit inst
$BB112_3:
	b	$BB112_6 # 16 bit inst
$BB112_4:                               #   in Loop: Header=BB112_1 Depth=1
	b	$BB112_5 # 16 bit inst
$BB112_5:                               #   in Loop: Header=BB112_1 Depth=1
	lw	$2, 4($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 4($16)
	b	$BB112_1 # 16 bit inst
$BB112_6:
	lw	$2, 4($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__clzhi2
$func_end112:
	.size	__clzhi2, ($func_end112)-__clzhi2
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	2
	.type	__ctzhi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__ctzhi2
__ctzhi2:                               # @__ctzhi2
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	addiu	$2, $16, 10
	sh	$4, 0($2)
	li	$2, 0
	sw	$2, 4($16)
	b	$BB113_1 # 16 bit inst
$BB113_1:                               # =>This Inner Loop Header: Depth=1
	lw	$3, 4($16)
	li	$2, 15
	slt	$2, $3
	btnez	$BB113_6  # 16 bit inst
	b	$BB113_2 # 16 bit inst
$BB113_2:                               #   in Loop: Header=BB113_1 Depth=1
	addiu	$2, $16, 10
	lhu	$2, 0($2)
	lw	$3, 4($16)
	srlv	$2, $3
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB113_4  # 16 bit inst
	b	$BB113_3 # 16 bit inst
$BB113_3:
	b	$BB113_6 # 16 bit inst
$BB113_4:                               #   in Loop: Header=BB113_1 Depth=1
	b	$BB113_5 # 16 bit inst
$BB113_5:                               #   in Loop: Header=BB113_1 Depth=1
	lw	$2, 4($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 4($16)
	b	$BB113_1 # 16 bit inst
$BB113_6:
	lw	$2, 4($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__ctzhi2
$func_end113:
	.size	__ctzhi2, ($func_end113)-__ctzhi2
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	2
	.type	__fixunssfsi,@function
	.set	nomicromips
	.set	mips16
	.ent	__fixunssfsi
__fixunssfsi:                           # @__fixunssfsi
	.frame	$16,32,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 32 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	sw	$4, 16($16)
	lw	$4, 16($16)
	lw	$5, 1f
	b	2f
	.align	2
1: 	.word	1191182336
2:
	jal	__gesf2
	nop
	slti	$2, 0 	# 16 bit inst
	btnez	$BB114_2  # 16 bit inst
	b	$BB114_1 # 16 bit inst
$BB114_1:
	lw	$4, 16($16)
	lw	$5, 1f
	b	2f
	.align	2
1: 	.word	-956301312
2:
	jal	__addsf3
	nop
	move	$4, $2
	jal	__fixsfsi
	nop
	li	$3, 32768
	addu	$2, $2, $3
	sw	$2, 20($16)
	b	$BB114_3 # 16 bit inst
$BB114_2:
	lw	$4, 16($16)
	jal	__fixsfsi
	nop
	sw	$2, 20($16)
	b	$BB114_3 # 16 bit inst
$BB114_3:
	lw	$2, 20($16)
	move	$sp, $16
	restore	$16, $ra, 32 # 16 bit inst

	jrc	$ra
	.end	__fixunssfsi
$func_end114:
	.size	__fixunssfsi, ($func_end114)-__fixunssfsi
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	2
	.type	__parityhi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__parityhi2
__parityhi2:                            # @__parityhi2
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	addiu	$2, $16, 10
	sh	$4, 0($2)
	li	$2, 0
	sw	$2, 0($16)
	sw	$2, 4($16)
	b	$BB115_1 # 16 bit inst
$BB115_1:                               # =>This Inner Loop Header: Depth=1
	lw	$3, 4($16)
	li	$2, 15
	slt	$2, $3
	btnez	$BB115_6  # 16 bit inst
	b	$BB115_2 # 16 bit inst
$BB115_2:                               #   in Loop: Header=BB115_1 Depth=1
	addiu	$2, $16, 10
	lhu	$2, 0($2)
	lw	$3, 4($16)
	srlv	$2, $3
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB115_4  # 16 bit inst
	b	$BB115_3 # 16 bit inst
$BB115_3:                               #   in Loop: Header=BB115_1 Depth=1
	lw	$2, 0($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 0($16)
	b	$BB115_4 # 16 bit inst
$BB115_4:                               #   in Loop: Header=BB115_1 Depth=1
	b	$BB115_5 # 16 bit inst
$BB115_5:                               #   in Loop: Header=BB115_1 Depth=1
	lw	$2, 4($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 4($16)
	b	$BB115_1 # 16 bit inst
$BB115_6:
	lw	$2, 0($16)
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__parityhi2
$func_end115:
	.size	__parityhi2, ($func_end115)-__parityhi2
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	2
	.type	__popcounthi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__popcounthi2
__popcounthi2:                          # @__popcounthi2
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	addiu	$2, $16, 10
	sh	$4, 0($2)
	li	$2, 0
	sw	$2, 0($16)
	sw	$2, 4($16)
	b	$BB116_1 # 16 bit inst
$BB116_1:                               # =>This Inner Loop Header: Depth=1
	lw	$3, 4($16)
	li	$2, 15
	slt	$2, $3
	btnez	$BB116_6  # 16 bit inst
	b	$BB116_2 # 16 bit inst
$BB116_2:                               #   in Loop: Header=BB116_1 Depth=1
	addiu	$2, $16, 10
	lhu	$2, 0($2)
	lw	$3, 4($16)
	srlv	$2, $3
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB116_4  # 16 bit inst
	b	$BB116_3 # 16 bit inst
$BB116_3:                               #   in Loop: Header=BB116_1 Depth=1
	lw	$2, 0($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 0($16)
	b	$BB116_4 # 16 bit inst
$BB116_4:                               #   in Loop: Header=BB116_1 Depth=1
	b	$BB116_5 # 16 bit inst
$BB116_5:                               #   in Loop: Header=BB116_1 Depth=1
	lw	$2, 4($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 4($16)
	b	$BB116_1 # 16 bit inst
$BB116_6:
	lw	$2, 0($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__popcounthi2
$func_end116:
	.size	__popcounthi2, ($func_end116)-__popcounthi2
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	2
	.type	__mulsi3_iq2000,@function
	.set	nomicromips
	.set	mips16
	.ent	__mulsi3_iq2000
__mulsi3_iq2000:                        # @__mulsi3_iq2000
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	li	$2, 0
	sw	$2, 0($16)
	b	$BB117_1 # 16 bit inst
$BB117_1:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB117_5  # 16 bit inst
	b	$BB117_2 # 16 bit inst
$BB117_2:                               #   in Loop: Header=BB117_1 Depth=1
	addiu	$2, $16, 8
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB117_4  # 16 bit inst
	b	$BB117_3 # 16 bit inst
$BB117_3:                               #   in Loop: Header=BB117_1 Depth=1
	lw	$3, 4($16)
	lw	$2, 0($16)
	addu	$2, $2, $3
	sw	$2, 0($16)
	b	$BB117_4 # 16 bit inst
$BB117_4:                               #   in Loop: Header=BB117_1 Depth=1
	lw	$2, 8($16)
	srl	$2, $2, 1
	sw	$2, 8($16)
	lw	$2, 4($16)
	sll	$2, $2, 1
	sw	$2, 4($16)
	b	$BB117_1 # 16 bit inst
$BB117_5:
	lw	$2, 0($16)
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__mulsi3_iq2000
$func_end117:
	.size	__mulsi3_iq2000, ($func_end117)-__mulsi3_iq2000
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	2
	.type	__mulsi3_lm32,@function
	.set	nomicromips
	.set	mips16
	.ent	__mulsi3_lm32
__mulsi3_lm32:                          # @__mulsi3_lm32
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 12($16)
	sw	$5, 8($16)
	li	$2, 0
	sw	$2, 4($16)
	lw	$2, 12($16)
	bnez	$2, $BB118_2  # 16 bit inst
	b	$BB118_1 # 16 bit inst
$BB118_1:
	li	$2, 0
	sw	$2, 16($16)
	b	$BB118_8 # 16 bit inst
$BB118_2:
	b	$BB118_3 # 16 bit inst
$BB118_3:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB118_7  # 16 bit inst
	b	$BB118_4 # 16 bit inst
$BB118_4:                               #   in Loop: Header=BB118_3 Depth=1
	addiu	$2, $16, 8
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB118_6  # 16 bit inst
	b	$BB118_5 # 16 bit inst
$BB118_5:                               #   in Loop: Header=BB118_3 Depth=1
	lw	$3, 12($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	b	$BB118_6 # 16 bit inst
$BB118_6:                               #   in Loop: Header=BB118_3 Depth=1
	lw	$2, 12($16)
	sll	$2, $2, 1
	sw	$2, 12($16)
	lw	$2, 8($16)
	srl	$2, $2, 1
	sw	$2, 8($16)
	b	$BB118_3 # 16 bit inst
$BB118_7:
	lw	$2, 4($16)
	sw	$2, 16($16)
	b	$BB118_8 # 16 bit inst
$BB118_8:
	lw	$2, 16($16)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	__mulsi3_lm32
$func_end118:
	.size	__mulsi3_lm32, ($func_end118)-__mulsi3_lm32
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,@function
	.set	nomicromips
	.set	mips16
	.ent	__udivmodsi4
__udivmodsi4:                           # @__udivmodsi4
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 20($16)
	sw	$5, 16($16)
	sw	$6, 12($16)
	li	$2, 1
	sw	$2, 8($16)
	li	$2, 0
	sw	$2, 4($16)
	b	$BB119_1 # 16 bit inst
$BB119_1:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	lw	$3, 20($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	li	$3, 0
	sw	$3, 0($16)                      # 4-byte Folded Spill
	bnez	$2, $BB119_4  # 16 bit inst
	b	$BB119_2 # 16 bit inst
$BB119_2:                               #   in Loop: Header=BB119_1 Depth=1
	lw	$2, 8($16)
	li	$3, 0
	sw	$3, 0($16)                      # 4-byte Folded Spill
	beqz	$2, $BB119_4  # 16 bit inst
	b	$BB119_3 # 16 bit inst
$BB119_3:                               #   in Loop: Header=BB119_1 Depth=1
	addiu	$2, $16, 16
	lbu	$2, 3($2)
	li	$3, 128
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB119_4 # 16 bit inst
$BB119_4:                               #   in Loop: Header=BB119_1 Depth=1
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB119_6  # 16 bit inst
	b	$BB119_5 # 16 bit inst
$BB119_5:                               #   in Loop: Header=BB119_1 Depth=1
	lw	$2, 16($16)
	sll	$2, $2, 1
	sw	$2, 16($16)
	lw	$2, 8($16)
	sll	$2, $2, 1
	sw	$2, 8($16)
	b	$BB119_1 # 16 bit inst
$BB119_6:
	b	$BB119_7 # 16 bit inst
$BB119_7:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB119_11  # 16 bit inst
	b	$BB119_8 # 16 bit inst
$BB119_8:                               #   in Loop: Header=BB119_7 Depth=1
	lw	$2, 20($16)
	lw	$3, 16($16)
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB119_10  # 16 bit inst
	b	$BB119_9 # 16 bit inst
$BB119_9:                               #   in Loop: Header=BB119_7 Depth=1
	lw	$3, 16($16)
	lw	$2, 20($16)
	subu	$2, $2, $3
	sw	$2, 20($16)
	lw	$3, 8($16)
	lw	$2, 4($16)
	or	$2, $3
	sw	$2, 4($16)
	b	$BB119_10 # 16 bit inst
$BB119_10:                              #   in Loop: Header=BB119_7 Depth=1
	lw	$2, 8($16)
	srl	$2, $2, 1
	sw	$2, 8($16)
	lw	$2, 16($16)
	srl	$2, $2, 1
	sw	$2, 16($16)
	b	$BB119_7 # 16 bit inst
$BB119_11:
	lw	$2, 12($16)
	beqz	$2, $BB119_13  # 16 bit inst
	b	$BB119_12 # 16 bit inst
$BB119_12:
	lw	$2, 20($16)
	sw	$2, 24($16)
	b	$BB119_14 # 16 bit inst
$BB119_13:
	lw	$2, 4($16)
	sw	$2, 24($16)
	b	$BB119_14 # 16 bit inst
$BB119_14:
	lw	$2, 24($16)
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	__udivmodsi4
$func_end119:
	.size	__udivmodsi4, ($func_end119)-__udivmodsi4
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	2
	.type	__mspabi_cmpf,@function
	.set	nomicromips
	.set	mips16
	.ent	__mspabi_cmpf
__mspabi_cmpf:                          # @__mspabi_cmpf
	.frame	$16,40,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$4, 24($16)
	sw	$5, 20($16)
	lw	$4, 24($16)
	lw	$5, 20($16)
	jal	__ltsf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB120_2  # 16 bit inst
	b	$BB120_1 # 16 bit inst
$BB120_1:
	move	$2, $zero
	addiu	$2, -1
	sw	$2, 28($16)
	b	$BB120_5 # 16 bit inst
$BB120_2:
	lw	$4, 24($16)
	lw	$5, 20($16)
	jal	__gtsf2
	nop
	slti	$2, 1 	# 16 bit inst
	btnez	$BB120_4  # 16 bit inst
	b	$BB120_3 # 16 bit inst
$BB120_3:
	li	$2, 1
	sw	$2, 28($16)
	b	$BB120_5 # 16 bit inst
$BB120_4:
	li	$2, 0
	sw	$2, 28($16)
	b	$BB120_5 # 16 bit inst
$BB120_5:
	lw	$2, 28($16)
	move	$sp, $16
	restore	$16, $ra, 40 # 16 bit inst

	jrc	$ra
	.end	__mspabi_cmpf
$func_end120:
	.size	__mspabi_cmpf, ($func_end120)-__mspabi_cmpf
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	2
	.type	__mspabi_cmpd,@function
	.set	nomicromips
	.set	mips16
	.ent	__mspabi_cmpd
__mspabi_cmpd:                          # @__mspabi_cmpd
	.frame	$16,48,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 28($16)
	sw	$4, 24($16)
	sw	$7, 20($16)
	sw	$6, 16($16)
	lw	$4, 24($16)
	lw	$5, 28($16)
	lw	$6, 16($16)
	lw	$7, 20($16)
	jal	__ltdf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB121_2  # 16 bit inst
	b	$BB121_1 # 16 bit inst
$BB121_1:
	move	$2, $zero
	addiu	$2, -1
	sw	$2, 36($16)
	b	$BB121_5 # 16 bit inst
$BB121_2:
	lw	$4, 24($16)
	lw	$5, 28($16)
	lw	$6, 16($16)
	lw	$7, 20($16)
	jal	__gtdf2
	nop
	slti	$2, 1 	# 16 bit inst
	btnez	$BB121_4  # 16 bit inst
	b	$BB121_3 # 16 bit inst
$BB121_3:
	li	$2, 1
	sw	$2, 36($16)
	b	$BB121_5 # 16 bit inst
$BB121_4:
	li	$2, 0
	sw	$2, 36($16)
	b	$BB121_5 # 16 bit inst
$BB121_5:
	lw	$2, 36($16)
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

	jrc	$ra
	.end	__mspabi_cmpd
$func_end121:
	.size	__mspabi_cmpd, ($func_end121)-__mspabi_cmpd
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	2
	.type	__mspabi_mpysll,@function
	.set	nomicromips
	.set	mips16
	.ent	__mspabi_mpysll
__mspabi_mpysll:                        # @__mspabi_mpysll
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	lw	$2, 8($16)
	lw	$3, 4($16)
	mult	$2, $3
	mflo	$2
	mfhi	$3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__mspabi_mpysll
$func_end122:
	.size	__mspabi_mpysll, ($func_end122)-__mspabi_mpysll
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	2
	.type	__mspabi_mpyull,@function
	.set	nomicromips
	.set	mips16
	.ent	__mspabi_mpyull
__mspabi_mpyull:                        # @__mspabi_mpyull
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	sw	$5, 4($16)
	lw	$2, 8($16)
	lw	$3, 4($16)
	multu	$2, $3
	mflo	$2
	mfhi	$3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__mspabi_mpyull
$func_end123:
	.size	__mspabi_mpyull, ($func_end123)-__mspabi_mpyull
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	2
	.type	__mulhi3,@function
	.set	nomicromips
	.set	mips16
	.ent	__mulhi3
__mulhi3:                               # @__mulhi3
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 24($16)
	sw	$5, 20($16)
	li	$2, 0
	sw	$2, 12($16)
	sw	$2, 8($16)
	lw	$3, 20($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB124_2  # 16 bit inst
	b	$BB124_1 # 16 bit inst
$BB124_1:
	lw	$2, 20($16)
	neg	$2, $2
	sw	$2, 20($16)
	li	$2, 1
	sw	$2, 12($16)
	b	$BB124_2 # 16 bit inst
$BB124_2:
	addiu	$3, $16, 19
	li	$2, 0
	sb	$2, 0($3)
	b	$BB124_3 # 16 bit inst
$BB124_3:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 20($16)
	li	$3, 0
	sw	$3, 4($16)                      # 4-byte Folded Spill
	beqz	$2, $BB124_5  # 16 bit inst
	b	$BB124_4 # 16 bit inst
$BB124_4:                               #   in Loop: Header=BB124_3 Depth=1
	addiu	$2, $16, 19
	lb	$2, 0($2)
	sltiu	$2, 32 	# 16 bit inst
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB124_5 # 16 bit inst
$BB124_5:                               #   in Loop: Header=BB124_3 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB124_10  # 16 bit inst
	b	$BB124_6 # 16 bit inst
$BB124_6:                               #   in Loop: Header=BB124_3 Depth=1
	addiu	$2, $16, 20
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB124_8  # 16 bit inst
	b	$BB124_7 # 16 bit inst
$BB124_7:                               #   in Loop: Header=BB124_3 Depth=1
	lw	$3, 24($16)
	lw	$2, 8($16)
	addu	$2, $2, $3
	sw	$2, 8($16)
	b	$BB124_8 # 16 bit inst
$BB124_8:                               #   in Loop: Header=BB124_3 Depth=1
	lw	$2, 24($16)
	sll	$2, $2, 1
	sw	$2, 24($16)
	lw	$2, 20($16)
	sra	$2, $2, 1
	sw	$2, 20($16)
	b	$BB124_9 # 16 bit inst
$BB124_9:                               #   in Loop: Header=BB124_3 Depth=1
	addiu	$3, $16, 19
	lbu	$2, 0($3)
	addiu	$2, 1	# 16 bit inst
	sb	$2, 0($3)
	b	$BB124_3 # 16 bit inst
$BB124_10:
	lw	$2, 12($16)
	beqz	$2, $BB124_12  # 16 bit inst
	b	$BB124_11 # 16 bit inst
$BB124_11:
	lw	$2, 8($16)
	neg	$2, $2
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB124_13 # 16 bit inst
$BB124_12:
	lw	$2, 8($16)
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB124_13 # 16 bit inst
$BB124_13:
	lw	$2, 0($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	__mulhi3
$func_end124:
	.size	__mulhi3, ($func_end124)-__mulhi3
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,@function
	.set	nomicromips
	.set	mips16
	.ent	__divsi3
__divsi3:                               # @__divsi3
	.frame	$16,40,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 28($16)
	sw	$5, 24($16)
	li	$2, 0
	sw	$2, 20($16)
	lw	$3, 28($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB125_2  # 16 bit inst
	b	$BB125_1 # 16 bit inst
$BB125_1:
	lw	$2, 28($16)
	neg	$2, $2
	sw	$2, 28($16)
	lw	$2, 20($16)
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 20($16)
	b	$BB125_2 # 16 bit inst
$BB125_2:
	lw	$3, 24($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB125_4  # 16 bit inst
	b	$BB125_3 # 16 bit inst
$BB125_3:
	lw	$2, 24($16)
	neg	$2, $2
	sw	$2, 24($16)
	lw	$2, 20($16)
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 20($16)
	b	$BB125_4 # 16 bit inst
$BB125_4:
	lw	$4, 28($16)
	lw	$5, 24($16)
	li	$6, 0
	jal	__udivmodsi4
	nop
	sw	$2, 16($16)
	lw	$2, 20($16)
	beqz	$2, $BB125_6  # 16 bit inst
	b	$BB125_5 # 16 bit inst
$BB125_5:
	lw	$2, 16($16)
	neg	$2, $2
	sw	$2, 16($16)
	b	$BB125_6 # 16 bit inst
$BB125_6:
	lw	$2, 16($16)
	move	$sp, $16
	restore	$16, $ra, 40 # 16 bit inst

	jrc	$ra
	.end	__divsi3
$func_end125:
	.size	__divsi3, ($func_end125)-__divsi3
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,@function
	.set	nomicromips
	.set	mips16
	.ent	__modsi3
__modsi3:                               # @__modsi3
	.frame	$16,40,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 28($16)
	sw	$5, 24($16)
	li	$2, 0
	sw	$2, 20($16)
	lw	$3, 28($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB126_2  # 16 bit inst
	b	$BB126_1 # 16 bit inst
$BB126_1:
	lw	$2, 28($16)
	neg	$2, $2
	sw	$2, 28($16)
	li	$2, 1
	sw	$2, 20($16)
	b	$BB126_2 # 16 bit inst
$BB126_2:
	lw	$3, 24($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB126_4  # 16 bit inst
	b	$BB126_3 # 16 bit inst
$BB126_3:
	lw	$2, 24($16)
	neg	$2, $2
	sw	$2, 24($16)
	b	$BB126_4 # 16 bit inst
$BB126_4:
	lw	$4, 28($16)
	lw	$5, 24($16)
	li	$6, 1
	jal	__udivmodsi4
	nop
	sw	$2, 16($16)
	lw	$2, 20($16)
	beqz	$2, $BB126_6  # 16 bit inst
	b	$BB126_5 # 16 bit inst
$BB126_5:
	lw	$2, 16($16)
	neg	$2, $2
	sw	$2, 16($16)
	b	$BB126_6 # 16 bit inst
$BB126_6:
	lw	$2, 16($16)
	move	$sp, $16
	restore	$16, $ra, 40 # 16 bit inst

	jrc	$ra
	.end	__modsi3
$func_end126:
	.size	__modsi3, ($func_end126)-__modsi3
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	2
	.type	__udivmodhi4,@function
	.set	nomicromips
	.set	mips16
	.ent	__udivmodhi4
__udivmodhi4:                           # @__udivmodhi4
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	addiu	$2, $16, 16
	sh	$4, 0($2)
	addiu	$2, $16, 14
	sh	$5, 0($2)
	sw	$6, 8($16)
	addiu	$3, $16, 6
	li	$2, 1
	sh	$2, 0($3)
	addiu	$3, $16, 4
	li	$2, 0
	sh	$2, 0($3)
	b	$BB127_1 # 16 bit inst
$BB127_1:                               # =>This Inner Loop Header: Depth=1
	addiu	$2, $16, 14
	lhu	$3, 0($2)
	addiu	$2, $16, 16
	lhu	$4, 0($2)
	li	$2, 0
	slt	$3, $4
	sw	$2, 0($16)                      # 4-byte Folded Spill
	bteqz	$BB127_4  # 16 bit inst
	b	$BB127_2 # 16 bit inst
$BB127_2:                               #   in Loop: Header=BB127_1 Depth=1
	addiu	$2, $16, 6
	lhu	$2, 0($2)
	li	$3, 0
	sw	$3, 0($16)                      # 4-byte Folded Spill
	beqz	$2, $BB127_4  # 16 bit inst
	b	$BB127_3 # 16 bit inst
$BB127_3:                               #   in Loop: Header=BB127_1 Depth=1
	addiu	$2, $16, 14
	lhu	$2, 0($2)
	li	$3, 32768
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB127_4 # 16 bit inst
$BB127_4:                               #   in Loop: Header=BB127_1 Depth=1
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB127_6  # 16 bit inst
	b	$BB127_5 # 16 bit inst
$BB127_5:                               #   in Loop: Header=BB127_1 Depth=1
	addiu	$3, $16, 14
	lhu	$2, 0($3)
	sll	$2, $2, 1
	sh	$2, 0($3)
	addiu	$3, $16, 6
	lhu	$2, 0($3)
	sll	$2, $2, 1
	sh	$2, 0($3)
	b	$BB127_1 # 16 bit inst
$BB127_6:
	b	$BB127_7 # 16 bit inst
$BB127_7:                               # =>This Inner Loop Header: Depth=1
	addiu	$2, $16, 6
	lhu	$2, 0($2)
	beqz	$2, $BB127_11  # 16 bit inst
	b	$BB127_8 # 16 bit inst
$BB127_8:                               #   in Loop: Header=BB127_7 Depth=1
	addiu	$2, $16, 16
	lhu	$2, 0($2)
	addiu	$3, $16, 14
	lhu	$3, 0($3)
	slt	$2, $3
	btnez	$BB127_10  # 16 bit inst
	b	$BB127_9 # 16 bit inst
$BB127_9:                               #   in Loop: Header=BB127_7 Depth=1
	addiu	$2, $16, 14
	lhu	$4, 0($2)
	addiu	$3, $16, 16
	lhu	$2, 0($3)
	subu	$2, $2, $4
	sh	$2, 0($3)
	addiu	$2, $16, 6
	lhu	$4, 0($2)
	addiu	$3, $16, 4
	lhu	$2, 0($3)
	or	$2, $4
	sh	$2, 0($3)
	b	$BB127_10 # 16 bit inst
$BB127_10:                              #   in Loop: Header=BB127_7 Depth=1
	addiu	$3, $16, 6
	lhu	$2, 0($3)
	srl	$2, $2, 1
	sh	$2, 0($3)
	addiu	$3, $16, 14
	lhu	$2, 0($3)
	srl	$2, $2, 1
	sh	$2, 0($3)
	b	$BB127_7 # 16 bit inst
$BB127_11:
	lw	$2, 8($16)
	beqz	$2, $BB127_13  # 16 bit inst
	b	$BB127_12 # 16 bit inst
$BB127_12:
	addiu	$2, $16, 16
	lhu	$2, 0($2)
	addiu	$3, $16, 18
	sh	$2, 0($3)
	b	$BB127_14 # 16 bit inst
$BB127_13:
	addiu	$2, $16, 4
	lhu	$2, 0($2)
	addiu	$3, $16, 18
	sh	$2, 0($3)
	b	$BB127_14 # 16 bit inst
$BB127_14:
	addiu	$2, $16, 18
	lhu	$2, 0($2)
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	__udivmodhi4
$func_end127:
	.size	__udivmodhi4, ($func_end127)-__udivmodhi4
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
	.set	nomicromips
	.set	mips16
	.ent	__udivmodsi4_libgcc
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 20($16)
	sw	$5, 16($16)
	sw	$6, 12($16)
	li	$2, 1
	sw	$2, 8($16)
	li	$2, 0
	sw	$2, 4($16)
	b	$BB128_1 # 16 bit inst
$BB128_1:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	lw	$3, 20($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	li	$3, 0
	sw	$3, 0($16)                      # 4-byte Folded Spill
	bnez	$2, $BB128_4  # 16 bit inst
	b	$BB128_2 # 16 bit inst
$BB128_2:                               #   in Loop: Header=BB128_1 Depth=1
	lw	$2, 8($16)
	li	$3, 0
	sw	$3, 0($16)                      # 4-byte Folded Spill
	beqz	$2, $BB128_4  # 16 bit inst
	b	$BB128_3 # 16 bit inst
$BB128_3:                               #   in Loop: Header=BB128_1 Depth=1
	addiu	$2, $16, 16
	lbu	$2, 3($2)
	li	$3, 128
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB128_4 # 16 bit inst
$BB128_4:                               #   in Loop: Header=BB128_1 Depth=1
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB128_6  # 16 bit inst
	b	$BB128_5 # 16 bit inst
$BB128_5:                               #   in Loop: Header=BB128_1 Depth=1
	lw	$2, 16($16)
	sll	$2, $2, 1
	sw	$2, 16($16)
	lw	$2, 8($16)
	sll	$2, $2, 1
	sw	$2, 8($16)
	b	$BB128_1 # 16 bit inst
$BB128_6:
	b	$BB128_7 # 16 bit inst
$BB128_7:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB128_11  # 16 bit inst
	b	$BB128_8 # 16 bit inst
$BB128_8:                               #   in Loop: Header=BB128_7 Depth=1
	lw	$2, 20($16)
	lw	$3, 16($16)
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB128_10  # 16 bit inst
	b	$BB128_9 # 16 bit inst
$BB128_9:                               #   in Loop: Header=BB128_7 Depth=1
	lw	$3, 16($16)
	lw	$2, 20($16)
	subu	$2, $2, $3
	sw	$2, 20($16)
	lw	$3, 8($16)
	lw	$2, 4($16)
	or	$2, $3
	sw	$2, 4($16)
	b	$BB128_10 # 16 bit inst
$BB128_10:                              #   in Loop: Header=BB128_7 Depth=1
	lw	$2, 8($16)
	srl	$2, $2, 1
	sw	$2, 8($16)
	lw	$2, 16($16)
	srl	$2, $2, 1
	sw	$2, 16($16)
	b	$BB128_7 # 16 bit inst
$BB128_11:
	lw	$2, 12($16)
	beqz	$2, $BB128_13  # 16 bit inst
	b	$BB128_12 # 16 bit inst
$BB128_12:
	lw	$2, 20($16)
	sw	$2, 24($16)
	b	$BB128_14 # 16 bit inst
$BB128_13:
	lw	$2, 4($16)
	sw	$2, 24($16)
	b	$BB128_14 # 16 bit inst
$BB128_14:
	lw	$2, 24($16)
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	__udivmodsi4_libgcc
$func_end128:
	.size	__udivmodsi4_libgcc, ($func_end128)-__udivmodsi4_libgcc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,@function
	.set	nomicromips
	.set	mips16
	.ent	__ashldi3
__ashldi3:                              # @__ashldi3
	.frame	$16,48,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 28($16)
	sw	$4, 24($16)
	sw	$6, 20($16)
	li	$3, 32
	sw	$3, 16($16)
	lw	$2, 24($16)
	lw	$4, 28($16)
	sw	$4, 12($16)
	sw	$2, 8($16)
	addiu	$2, $16, 20
	lbu	$2, 0($2)
	and	$2, $3
	beqz	$2, $BB129_2  # 16 bit inst
	b	$BB129_1 # 16 bit inst
$BB129_1:
	li	$2, 0
	sw	$2, 0($16)
	lw	$2, 8($16)
	lw	$3, 20($16)
	addiu	$3, -32	# 16 bit inst
	sllv	$2, $3
	sw	$2, 4($16)
	b	$BB129_5 # 16 bit inst
$BB129_2:
	lw	$2, 20($16)
	bnez	$2, $BB129_4  # 16 bit inst
	b	$BB129_3 # 16 bit inst
$BB129_3:
	lw	$2, 24($16)
	lw	$3, 28($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB129_6 # 16 bit inst
$BB129_4:
	lw	$2, 8($16)
	lw	$3, 20($16)
	sllv	$2, $3
	sw	$2, 0($16)
	lw	$2, 12($16)
	lw	$5, 20($16)
	sllv	$2, $5
	lw	$3, 8($16)
	li	$4, 32
	subu	$4, $4, $5
	srlv	$3, $4
	or	$2, $3
	sw	$2, 4($16)
	b	$BB129_5 # 16 bit inst
$BB129_5:
	lw	$2, 0($16)
	lw	$3, 4($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB129_6 # 16 bit inst
$BB129_6:
	lw	$2, 32($16)
	lw	$3, 36($16)
	move	$sp, $16
	restore	$16, 48 # 16 bit inst

	jrc	$ra
	.end	__ashldi3
$func_end129:
	.size	__ashldi3, ($func_end129)-__ashldi3
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,@function
	.set	nomicromips
	.set	mips16
	.ent	__ashrdi3
__ashrdi3:                              # @__ashrdi3
	.frame	$16,48,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 28($16)
	sw	$4, 24($16)
	sw	$6, 20($16)
	li	$3, 32
	sw	$3, 16($16)
	lw	$2, 24($16)
	lw	$4, 28($16)
	sw	$4, 12($16)
	sw	$2, 8($16)
	addiu	$2, $16, 20
	lbu	$2, 0($2)
	and	$2, $3
	beqz	$2, $BB130_2  # 16 bit inst
	b	$BB130_1 # 16 bit inst
$BB130_1:
	lw	$2, 12($16)
	sra	$2, $2, 31
	sw	$2, 4($16)
	lw	$2, 12($16)
	lw	$3, 20($16)
	addiu	$3, -32	# 16 bit inst
	srav	$2, $3
	sw	$2, 0($16)
	b	$BB130_5 # 16 bit inst
$BB130_2:
	lw	$2, 20($16)
	bnez	$2, $BB130_4  # 16 bit inst
	b	$BB130_3 # 16 bit inst
$BB130_3:
	lw	$2, 24($16)
	lw	$3, 28($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB130_6 # 16 bit inst
$BB130_4:
	lw	$2, 12($16)
	lw	$3, 20($16)
	srav	$2, $3
	sw	$2, 4($16)
	lw	$2, 12($16)
	lw	$4, 20($16)
	li	$3, 32
	subu	$3, $3, $4
	sllv	$2, $3
	lw	$3, 8($16)
	srlv	$3, $4
	or	$2, $3
	sw	$2, 0($16)
	b	$BB130_5 # 16 bit inst
$BB130_5:
	lw	$2, 0($16)
	lw	$3, 4($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB130_6 # 16 bit inst
$BB130_6:
	lw	$2, 32($16)
	lw	$3, 36($16)
	move	$sp, $16
	restore	$16, 48 # 16 bit inst

	jrc	$ra
	.end	__ashrdi3
$func_end130:
	.size	__ashrdi3, ($func_end130)-__ashrdi3
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	2
	.type	__bswapdi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__bswapdi2
__bswapdi2:                             # @__bswapdi2
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 4($16)
	sw	$4, 0($16)
	lw	$4, 0($16)
	lw	$3, 4($16)
	srl	$2, $3, 24
	lw	$7, 1f
	b	2f
	.align	2
1: 	.word	16711680
2:
	move	$5, $3
	and	$5, $7
	srl	$5, $5, 8
	or	$2, $5
	li	$6, 65280
	move	$5, $3
	and	$5, $6
	sll	$5, $5, 8
	or	$2, $5
	sll	$3, $3, 24
	or	$2, $3
	srl	$3, $4, 24
	move	$5, $4
	and	$5, $7
	srl	$5, $5, 8
	or	$3, $5
	move	$5, $4
	and	$5, $6
	sll	$5, $5, 8
	or	$3, $5
	sll	$4, $4, 24
	or	$3, $4
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__bswapdi2
$func_end131:
	.size	__bswapdi2, ($func_end131)-__bswapdi2
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	2
	.type	__bswapsi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__bswapsi2
__bswapsi2:                             # @__bswapsi2
	.frame	$16,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 8 # 16 bit inst

	move	$16, $sp
	sw	$4, 0($16)
	lw	$3, 0($16)
	srl	$2, $3, 24
	lw	$5, 1f
	b	2f
	.align	2
1: 	.word	16711680
2:
	move	$4, $3
	and	$4, $5
	srl	$4, $4, 8
	or	$2, $4
	li	$5, 65280
	move	$4, $3
	and	$4, $5
	sll	$4, $4, 8
	or	$2, $4
	sll	$3, $3, 24
	or	$2, $3
	move	$sp, $16
	restore	$16, 8 # 16 bit inst

	jrc	$ra
	.end	__bswapsi2
$func_end132:
	.size	__bswapsi2, ($func_end132)-__bswapsi2
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__clzsi2
__clzsi2:                               # @__clzsi2
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	lw	$2, 16($16)
	sw	$2, 12($16)
	addiu	$2, $16, 12
	lhu	$3, 2($2)
	sll	$3, $3, 16
	sltiu	$3, 1 	# 16 bit inst
	move	$3, $24
	sll	$3, $3, 4
	sw	$3, 8($16)
	lw	$4, 8($16)
	li	$3, 16
	subu	$4, $3, $4
	lw	$3, 12($16)
	srlv	$3, $4
	sw	$3, 12($16)
	lw	$3, 8($16)
	sw	$3, 4($16)
	lbu	$2, 1($2)
	sll	$2, $2, 8
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sll	$2, $2, 3
	sw	$2, 8($16)
	lw	$3, 8($16)
	li	$2, 8
	subu	$3, $2, $3
	lw	$2, 12($16)
	srlv	$2, $3
	sw	$2, 12($16)
	lw	$3, 8($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	lw	$2, 12($16)
	li	$3, 240
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sll	$2, $2, 2
	sw	$2, 8($16)
	lw	$3, 8($16)
	li	$2, 4
	subu	$3, $2, $3
	lw	$2, 12($16)
	srlv	$2, $3
	sw	$2, 12($16)
	lw	$3, 8($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	lw	$2, 12($16)
	li	$3, 12
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sll	$2, $2, 1
	sw	$2, 8($16)
	lw	$2, 8($16)
	li	$5, 2
	subu	$3, $5, $2
	lw	$2, 12($16)
	srlv	$2, $3
	sw	$2, 12($16)
	lw	$3, 8($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	lw	$4, 12($16)
	subu	$3, $5, $4
	and	$4, $5
	sltiu	$4, 1 	# 16 bit inst
	move	$4, $24
	neg	$4, $4
	and	$3, $4
	addu	$2, $2, $3
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	__clzsi2
$func_end133:
	.size	__clzsi2, ($func_end133)-__clzsi2
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__cmpdi2
__cmpdi2:                               # @__cmpdi2
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 28($16)
	sw	$4, 24($16)
	sw	$7, 20($16)
	sw	$6, 16($16)
	lw	$2, 24($16)
	lw	$3, 28($16)
	sw	$3, 12($16)
	sw	$2, 8($16)
	lw	$2, 16($16)
	lw	$3, 20($16)
	sw	$3, 4($16)
	sw	$2, 0($16)
	lw	$2, 12($16)
	lw	$3, 4($16)
	slt	$2, $3
	bteqz	$BB134_2  # 16 bit inst
	b	$BB134_1 # 16 bit inst
$BB134_1:
	li	$2, 0
	sw	$2, 32($16)
	b	$BB134_9 # 16 bit inst
$BB134_2:
	lw	$3, 12($16)
	lw	$2, 4($16)
	slt	$2, $3
	bteqz	$BB134_4  # 16 bit inst
	b	$BB134_3 # 16 bit inst
$BB134_3:
	li	$2, 2
	sw	$2, 32($16)
	b	$BB134_9 # 16 bit inst
$BB134_4:
	lw	$2, 8($16)
	lw	$3, 0($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB134_6  # 16 bit inst
	b	$BB134_5 # 16 bit inst
$BB134_5:
	li	$2, 0
	sw	$2, 32($16)
	b	$BB134_9 # 16 bit inst
$BB134_6:
	lw	$3, 8($16)
	lw	$2, 0($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB134_8  # 16 bit inst
	b	$BB134_7 # 16 bit inst
$BB134_7:
	li	$2, 2
	sw	$2, 32($16)
	b	$BB134_9 # 16 bit inst
$BB134_8:
	li	$2, 1
	sw	$2, 32($16)
	b	$BB134_9 # 16 bit inst
$BB134_9:
	lw	$2, 32($16)
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

	jrc	$ra
	.end	__cmpdi2
$func_end134:
	.size	__cmpdi2, ($func_end134)-__cmpdi2
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,@function
	.set	nomicromips
	.set	mips16
	.ent	__aeabi_lcmp
__aeabi_lcmp:                           # @__aeabi_lcmp
	.frame	$16,40,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 28($16)
	sw	$4, 24($16)
	sw	$7, 20($16)
	sw	$6, 16($16)
	lw	$5, 28($16)
	lw	$4, 24($16)
	lw	$7, 20($16)
	lw	$6, 16($16)
	jal	__cmpdi2
	nop
	addiu	$2, -1	# 16 bit inst
	move	$sp, $16
	restore	$16, $ra, 40 # 16 bit inst

	jrc	$ra
	.end	__aeabi_lcmp
$func_end135:
	.size	__aeabi_lcmp, ($func_end135)-__aeabi_lcmp
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__ctzsi2
__ctzsi2:                               # @__ctzsi2
	.frame	$16,24,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 24 # 16 bit inst

	move	$16, $sp
	sw	$4, 16($16)
	lw	$2, 16($16)
	sw	$2, 12($16)
	addiu	$2, $16, 12
	lhu	$3, 0($2)
	sltiu	$3, 1 	# 16 bit inst
	move	$3, $24
	sll	$3, $3, 4
	sw	$3, 8($16)
	lw	$4, 8($16)
	lw	$3, 12($16)
	srlv	$3, $4
	sw	$3, 12($16)
	lw	$3, 8($16)
	sw	$3, 4($16)
	lbu	$2, 0($2)
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sll	$2, $2, 3
	sw	$2, 8($16)
	lw	$3, 8($16)
	lw	$2, 12($16)
	srlv	$2, $3
	sw	$2, 12($16)
	lw	$3, 8($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	lw	$2, 12($16)
	li	$3, 15
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sll	$2, $2, 2
	sw	$2, 8($16)
	lw	$3, 8($16)
	lw	$2, 12($16)
	srlv	$2, $3
	sw	$2, 12($16)
	lw	$3, 8($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	lw	$2, 12($16)
	li	$3, 3
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sll	$2, $2, 1
	sw	$2, 8($16)
	lw	$4, 8($16)
	lw	$2, 12($16)
	srlv	$2, $4
	sw	$2, 12($16)
	lw	$2, 12($16)
	and	$2, $3
	sw	$2, 12($16)
	lw	$3, 8($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	lw	$4, 12($16)
	srl	$5, $4, 1
	li	$3, 2
	subu	$3, $3, $5
	li	$5, 1
	and	$4, $5
	addiu	$4, -1	# 16 bit inst
	and	$3, $4
	addu	$2, $2, $3
	move	$sp, $16
	restore	$16, 24 # 16 bit inst

	jrc	$ra
	.end	__ctzsi2
$func_end136:
	.size	__ctzsi2, ($func_end136)-__ctzsi2
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,@function
	.set	nomicromips
	.set	mips16
	.ent	__lshrdi3
__lshrdi3:                              # @__lshrdi3
	.frame	$16,48,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 28($16)
	sw	$4, 24($16)
	sw	$6, 20($16)
	li	$3, 32
	sw	$3, 16($16)
	lw	$2, 24($16)
	lw	$4, 28($16)
	sw	$4, 12($16)
	sw	$2, 8($16)
	addiu	$2, $16, 20
	lbu	$2, 0($2)
	and	$2, $3
	beqz	$2, $BB137_2  # 16 bit inst
	b	$BB137_1 # 16 bit inst
$BB137_1:
	li	$2, 0
	sw	$2, 4($16)
	lw	$2, 12($16)
	lw	$3, 20($16)
	addiu	$3, -32	# 16 bit inst
	srlv	$2, $3
	sw	$2, 0($16)
	b	$BB137_5 # 16 bit inst
$BB137_2:
	lw	$2, 20($16)
	bnez	$2, $BB137_4  # 16 bit inst
	b	$BB137_3 # 16 bit inst
$BB137_3:
	lw	$2, 24($16)
	lw	$3, 28($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB137_6 # 16 bit inst
$BB137_4:
	lw	$2, 12($16)
	lw	$3, 20($16)
	srlv	$2, $3
	sw	$2, 4($16)
	lw	$2, 12($16)
	lw	$4, 20($16)
	li	$3, 32
	subu	$3, $3, $4
	sllv	$2, $3
	lw	$3, 8($16)
	srlv	$3, $4
	or	$2, $3
	sw	$2, 0($16)
	b	$BB137_5 # 16 bit inst
$BB137_5:
	lw	$2, 0($16)
	lw	$3, 4($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB137_6 # 16 bit inst
$BB137_6:
	lw	$2, 32($16)
	lw	$3, 36($16)
	move	$sp, $16
	restore	$16, 48 # 16 bit inst

	jrc	$ra
	.end	__lshrdi3
$func_end137:
	.size	__lshrdi3, ($func_end137)-__lshrdi3
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	2
	.type	__muldsi3,@function
	.set	nomicromips
	.set	mips16
	.ent	__muldsi3
__muldsi3:                              # @__muldsi3
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 32($16)
	sw	$5, 28($16)
	li	$2, 16
	sw	$2, 12($16)
	li	$2, 65535
	sw	$2, 8($16)
	addiu	$2, $16, 32
	lhu	$4, 0($2)
	addiu	$3, $16, 28
	lhu	$5, 0($3)
	mult	$4, $5
	mflo	$4
	sw	$4, 16($16)
	addiu	$5, $16, 16
	lhu	$4, 2($5)
	sw	$4, 4($16)
	lhu	$4, 0($5)
	sw	$4, 16($16)
	lhu	$4, 2($2)
	lhu	$6, 0($3)
	mult	$4, $6
	mflo	$6
	lw	$4, 4($16)
	addu	$4, $4, $6
	sw	$4, 4($16)
	lw	$4, 4($16)
	sll	$6, $4, 16
	lw	$4, 16($16)
	addu	$4, $4, $6
	sw	$4, 16($16)
	addiu	$4, $16, 4
	lhu	$6, 2($4)
	sw	$6, 20($16)
	lhu	$6, 2($5)
	sw	$6, 4($16)
	lhu	$5, 0($5)
	sw	$5, 16($16)
	lhu	$5, 2($3)
	lhu	$6, 0($2)
	mult	$5, $6
	mflo	$6
	lw	$5, 4($16)
	addu	$5, $5, $6
	sw	$5, 4($16)
	lw	$5, 4($16)
	sll	$6, $5, 16
	lw	$5, 16($16)
	addu	$5, $5, $6
	sw	$5, 16($16)
	lhu	$5, 2($4)
	lw	$4, 20($16)
	addu	$4, $4, $5
	sw	$4, 20($16)
	lhu	$2, 2($2)
	lhu	$3, 2($3)
	mult	$2, $3
	mflo	$3
	lw	$2, 20($16)
	addu	$2, $2, $3
	sw	$2, 20($16)
	lw	$2, 16($16)
	lw	$3, 20($16)
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

	jrc	$ra
	.end	__muldsi3
$func_end138:
	.size	__muldsi3, ($func_end138)-__muldsi3
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	2
	.type	__muldi3_compiler_rt,@function
	.set	nomicromips
	.set	mips16
	.ent	__muldi3_compiler_rt
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
	.frame	$16,64,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 64 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 52($16)
	sw	$4, 48($16)
	sw	$7, 44($16)
	sw	$6, 40($16)
	lw	$2, 48($16)
	lw	$3, 52($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	lw	$2, 40($16)
	lw	$3, 44($16)
	sw	$3, 28($16)
	sw	$2, 24($16)
	lw	$4, 32($16)
	lw	$5, 24($16)
	jal	__muldsi3
	nop
	sw	$3, 20($16)
	sw	$2, 16($16)
	lw	$2, 36($16)
	lw	$3, 24($16)
	mult	$2, $3
	mflo	$2
	lw	$3, 32($16)
	lw	$4, 28($16)
	mult	$3, $4
	mflo	$3
	addu	$3, $2, $3
	lw	$2, 20($16)
	addu	$2, $2, $3
	sw	$2, 20($16)
	lw	$2, 16($16)
	lw	$3, 20($16)
	move	$sp, $16
	restore	$16, $ra, 64 # 16 bit inst

	jrc	$ra
	.end	__muldi3_compiler_rt
$func_end139:
	.size	__muldi3_compiler_rt, ($func_end139)-__muldi3_compiler_rt
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	2
	.type	__negdi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__negdi2
__negdi2:                               # @__negdi2
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 4($16)
	sw	$4, 0($16)
	lw	$3, 4($16)
	lw	$2, 0($16)
	li	$4, 0
	move	$5, $2
	xor	$5, $4
	sltu	$4, $5
	move	$4, $24
	addu	$3, $3, $4
	neg	$3, $3
	neg	$2, $2
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__negdi2
$func_end140:
	.size	__negdi2, ($func_end140)-__negdi2
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__paritydi2
__paritydi2:                            # @__paritydi2
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 20($16)
	sw	$4, 16($16)
	lw	$2, 16($16)
	lw	$3, 20($16)
	sw	$3, 12($16)
	sw	$2, 8($16)
	lw	$2, 12($16)
	lw	$3, 8($16)
	xor	$2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 16
	xor	$2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 8
	xor	$2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 4
	xor	$2, $3
	sw	$2, 4($16)
	lw	$3, 4($16)
	li	$2, 15
	and	$3, $2
	li	$2, 27030
	srlv	$2, $3
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	__paritydi2
$func_end141:
	.size	__paritydi2, ($func_end141)-__paritydi2
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__paritysi2
__paritysi2:                            # @__paritysi2
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$2, 8($16)
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 16
	xor	$2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 8
	xor	$2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 4
	xor	$2, $3
	sw	$2, 4($16)
	lw	$3, 4($16)
	li	$2, 15
	and	$3, $2
	li	$2, 27030
	srlv	$2, $3
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__paritysi2
$func_end142:
	.size	__paritysi2, ($func_end142)-__paritysi2
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__popcountdi2
__popcountdi2:                          # @__popcountdi2
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 20($16)
	sw	$4, 16($16)
	lw	$2, 16($16)
	lw	$3, 20($16)
	sw	$3, 12($16)
	sw	$2, 8($16)
	lw	$2, 12($16)
	lw	$3, 8($16)
	srl	$4, $3, 1
	srl	$6, $2, 1
	lw	$5, 1f
	b	2f
	.align	2
1: 	.word	1431655765
2:
	and	$6, $5
	and	$4, $5
	sltu	$3, $4
	move	$5, $24
	subu	$2, $2, $6
	subu	$2, $2, $5
	subu	$3, $3, $4
	sw	$3, 8($16)
	sw	$2, 12($16)
	lw	$3, 8($16)
	lw	$5, 12($16)
	srl	$2, $5, 2
	srl	$4, $3, 2
	lw	$6, 1f
	b	2f
	.align	2
1: 	.word	858993459
2:
	and	$4, $6
	and	$2, $6
	and	$3, $6
	and	$5, $6
	addu	$2, $2, $5
	addu	$3, $4, $3
	sltu	$3, $4
	move	$4, $24
	addu	$2, $2, $4
	sw	$3, 8($16)
	sw	$2, 12($16)
	lw	$4, 8($16)
	lw	$2, 12($16)
	sll	$5, $2, 28
	srl	$3, $4, 4
	or	$3, $5
	srl	$5, $2, 4
	addu	$2, $2, $5
	addu	$3, $4, $3
	sltu	$3, $4
	move	$4, $24
	addu	$2, $2, $4
	lw	$4, 1f
	b	2f
	.align	2
1: 	.word	252645135
2:
	and	$2, $4
	and	$3, $4
	sw	$3, 8($16)
	sw	$2, 12($16)
	lw	$3, 12($16)
	lw	$2, 8($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 16
	addu	$2, $2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 8
	addu	$2, $2, $3
	li	$3, 127
	and	$2, $3
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

	jrc	$ra
	.end	__popcountdi2
$func_end143:
	.size	__popcountdi2, ($func_end143)-__popcountdi2
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__popcountsi2
__popcountsi2:                          # @__popcountsi2
	.frame	$16,16,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 16 # 16 bit inst

	move	$16, $sp
	sw	$4, 8($16)
	lw	$2, 8($16)
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 1
	lw	$4, 1f
	b	2f
	.align	2
1: 	.word	1431655765
2:
	and	$3, $4
	subu	$2, $2, $3
	sw	$2, 4($16)
	lw	$3, 4($16)
	srl	$2, $3, 2
	lw	$4, 1f
	b	2f
	.align	2
1: 	.word	858993459
2:
	and	$2, $4
	and	$3, $4
	addu	$2, $2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 4
	addu	$2, $2, $3
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	252645135
2:
	and	$2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 16
	addu	$2, $2, $3
	sw	$2, 4($16)
	lw	$2, 4($16)
	srl	$3, $2, 8
	addu	$2, $2, $3
	li	$3, 63
	and	$2, $3
	move	$sp, $16
	restore	$16, 16 # 16 bit inst

	jrc	$ra
	.end	__popcountsi2
$func_end144:
	.size	__popcountsi2, ($func_end144)-__popcountsi2
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	2
	.type	__powidf2,@function
	.set	nomicromips
	.set	mips16
	.ent	__powidf2
__powidf2:                              # @__powidf2
	.frame	$16,56,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 56 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 44($16)
	sw	$4, 40($16)
	sw	$6, 36($16)
	lw	$2, 36($16)
	srl	$2, $2, 31
	sw	$2, 32($16)
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1072693248
2:
	sw	$2, 28($16)
	li	$2, 0
	sw	$2, 24($16)
	b	$BB145_1 # 16 bit inst
$BB145_1:                               # =>This Inner Loop Header: Depth=1
	addiu	$2, $16, 36
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB145_3  # 16 bit inst
	b	$BB145_2 # 16 bit inst
$BB145_2:                               #   in Loop: Header=BB145_1 Depth=1
	lw	$6, 40($16)
	lw	$7, 44($16)
	lw	$4, 24($16)
	lw	$5, 28($16)
	jal	__muldf3
	nop
	sw	$3, 28($16)
	sw	$2, 24($16)
	b	$BB145_3 # 16 bit inst
$BB145_3:                               #   in Loop: Header=BB145_1 Depth=1
	lw	$2, 36($16)
	srl	$3, $2, 31
	addu	$2, $2, $3
	sra	$2, $2, 1
	sw	$2, 36($16)
	lw	$2, 36($16)
	bnez	$2, $BB145_5  # 16 bit inst
	b	$BB145_4 # 16 bit inst
$BB145_4:
	b	$BB145_6 # 16 bit inst
$BB145_5:                               #   in Loop: Header=BB145_1 Depth=1
	lw	$6, 40($16)
	lw	$7, 44($16)
	move	$4, $6
	move	$5, $7
	jal	__muldf3
	nop
	sw	$3, 44($16)
	sw	$2, 40($16)
	b	$BB145_1 # 16 bit inst
$BB145_6:
	lw	$2, 32($16)
	beqz	$2, $BB145_8  # 16 bit inst
	b	$BB145_7 # 16 bit inst
$BB145_7:
	lw	$6, 24($16)
	lw	$7, 28($16)
	li	$4, 0
	lw	$5, 1f
	b	2f
	.align	2
1: 	.word	1072693248
2:
	jal	__divdf3
	nop
	sw	$2, 16($16)                     # 4-byte Folded Spill
	sw	$3, 20($16)                     # 4-byte Folded Spill
	b	$BB145_9 # 16 bit inst
$BB145_8:
	lw	$2, 28($16)
	lw	$3, 24($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB145_9 # 16 bit inst
$BB145_9:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	lw	$3, 20($16)                     # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, $ra, 56 # 16 bit inst

	jrc	$ra
	.end	__powidf2
$func_end145:
	.size	__powidf2, ($func_end145)-__powidf2
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	2
	.type	__powisf2,@function
	.set	nomicromips
	.set	mips16
	.ent	__powisf2
__powisf2:                              # @__powisf2
	.frame	$16,48,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	sw	$4, 36($16)
	sw	$5, 32($16)
	lw	$2, 32($16)
	srl	$2, $2, 31
	sw	$2, 28($16)
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1065353216
2:
	sw	$2, 24($16)
	b	$BB146_1 # 16 bit inst
$BB146_1:                               # =>This Inner Loop Header: Depth=1
	addiu	$2, $16, 32
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB146_3  # 16 bit inst
	b	$BB146_2 # 16 bit inst
$BB146_2:                               #   in Loop: Header=BB146_1 Depth=1
	lw	$5, 36($16)
	lw	$4, 24($16)
	jal	__mulsf3
	nop
	sw	$2, 24($16)
	b	$BB146_3 # 16 bit inst
$BB146_3:                               #   in Loop: Header=BB146_1 Depth=1
	lw	$2, 32($16)
	srl	$3, $2, 31
	addu	$2, $2, $3
	sra	$2, $2, 1
	sw	$2, 32($16)
	lw	$2, 32($16)
	bnez	$2, $BB146_5  # 16 bit inst
	b	$BB146_4 # 16 bit inst
$BB146_4:
	b	$BB146_6 # 16 bit inst
$BB146_5:                               #   in Loop: Header=BB146_1 Depth=1
	lw	$5, 36($16)
	move	$4, $5
	jal	__mulsf3
	nop
	sw	$2, 36($16)
	b	$BB146_1 # 16 bit inst
$BB146_6:
	lw	$2, 28($16)
	beqz	$2, $BB146_8  # 16 bit inst
	b	$BB146_7 # 16 bit inst
$BB146_7:
	lw	$5, 24($16)
	lw	$4, 1f
	b	2f
	.align	2
1: 	.word	1065353216
2:
	jal	__divsf3
	nop
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB146_9 # 16 bit inst
$BB146_8:
	lw	$2, 24($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB146_9 # 16 bit inst
$BB146_9:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

	jrc	$ra
	.end	__powisf2
$func_end146:
	.size	__powisf2, ($func_end146)-__powisf2
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,@function
	.set	nomicromips
	.set	mips16
	.ent	__ucmpdi2
__ucmpdi2:                              # @__ucmpdi2
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 28($16)
	sw	$4, 24($16)
	sw	$7, 20($16)
	sw	$6, 16($16)
	lw	$2, 24($16)
	lw	$3, 28($16)
	sw	$3, 12($16)
	sw	$2, 8($16)
	lw	$2, 16($16)
	lw	$3, 20($16)
	sw	$3, 4($16)
	sw	$2, 0($16)
	lw	$2, 12($16)
	lw	$3, 4($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB147_2  # 16 bit inst
	b	$BB147_1 # 16 bit inst
$BB147_1:
	li	$2, 0
	sw	$2, 32($16)
	b	$BB147_9 # 16 bit inst
$BB147_2:
	lw	$3, 12($16)
	lw	$2, 4($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB147_4  # 16 bit inst
	b	$BB147_3 # 16 bit inst
$BB147_3:
	li	$2, 2
	sw	$2, 32($16)
	b	$BB147_9 # 16 bit inst
$BB147_4:
	lw	$2, 8($16)
	lw	$3, 0($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB147_6  # 16 bit inst
	b	$BB147_5 # 16 bit inst
$BB147_5:
	li	$2, 0
	sw	$2, 32($16)
	b	$BB147_9 # 16 bit inst
$BB147_6:
	lw	$3, 8($16)
	lw	$2, 0($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB147_8  # 16 bit inst
	b	$BB147_7 # 16 bit inst
$BB147_7:
	li	$2, 2
	sw	$2, 32($16)
	b	$BB147_9 # 16 bit inst
$BB147_8:
	li	$2, 1
	sw	$2, 32($16)
	b	$BB147_9 # 16 bit inst
$BB147_9:
	lw	$2, 32($16)
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

	jrc	$ra
	.end	__ucmpdi2
$func_end147:
	.size	__ucmpdi2, ($func_end147)-__ucmpdi2
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,@function
	.set	nomicromips
	.set	mips16
	.ent	__aeabi_ulcmp
__aeabi_ulcmp:                          # @__aeabi_ulcmp
	.frame	$16,40,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$5, 28($16)
	sw	$4, 24($16)
	sw	$7, 20($16)
	sw	$6, 16($16)
	lw	$5, 28($16)
	lw	$4, 24($16)
	lw	$7, 20($16)
	lw	$6, 16($16)
	jal	__ucmpdi2
	nop
	addiu	$2, -1	# 16 bit inst
	move	$sp, $16
	restore	$16, $ra, 40 # 16 bit inst

	jrc	$ra
	.end	__aeabi_ulcmp
$func_end148:
	.size	__aeabi_ulcmp, ($func_end148)-__aeabi_ulcmp
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
	.text
