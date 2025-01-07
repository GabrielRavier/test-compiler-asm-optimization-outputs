	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	softfloat
	.module	nooddspreg
	.text
	.file	"mini-libc.c"
	.globl	memmove                         # -- Begin function memmove
	.p2align	2
	.type	memmove,@function
	.set	micromips
	.set	nomips16
	.ent	memmove
memmove:                                # @memmove
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	lw	$2, 8($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB0_8
# %bb.1:
	j	$BB0_2
	nop
$BB0_2:
	lw	$3, 12($fp)
	lw	$2, 4($fp)
	addu16	$2, $2, $3
	sw	$2, 4($fp)
	lw	$3, 12($fp)
	lw	$2, 8($fp)
	addu16	$2, $2, $3
	sw	$2, 8($fp)
	j	$BB0_3
	nop
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	j	$BB0_5
	nop
$BB0_5:                                 #   in Loop: Header=BB0_3 Depth=1
	lw	$2, 4($fp)
	addiur2	$3, $2, -1
	sw	$3, 4($fp)
	lbu	$1, -1($2)
	lw	$2, 8($fp)
	addiur2	$3, $2, -1
	sw	$3, 8($fp)
	sb	$1, -1($2)
	j	$BB0_6
	nop
$BB0_6:                                 #   in Loop: Header=BB0_3 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	j	$BB0_3
	nop
$BB0_7:
	j	$BB0_17
	nop
$BB0_8:
	lw	$1, 4($fp)
	lw	$2, 8($fp)
	beq	$1, $2, $BB0_16
	nop
# %bb.9:
	j	$BB0_10
	nop
$BB0_10:
	j	$BB0_11
	nop
$BB0_11:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB0_15
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	j	$BB0_13
	nop
$BB0_13:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$2, 4($fp)
	addiur2	$3, $2, 1
	sw	$3, 4($fp)
	lbu	$1, 0($2)
	lw	$2, 8($fp)
	addiur2	$3, $2, 1
	sw	$3, 8($fp)
	sb	$1, 0($2)
	j	$BB0_14
	nop
$BB0_14:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	j	$BB0_11
	nop
$BB0_15:
	j	$BB0_16
	nop
$BB0_16:
	j	$BB0_17
	nop
$BB0_17:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	memmove
$func_end0:
	.size	memmove, ($func_end0)-memmove
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	2
	.type	memccpy,@function
	.set	micromips
	.set	nomips16
	.ent	memccpy
memccpy:                                # @memccpy
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 24($fp)
	sw	$5, 20($fp)
	sw	$6, 16($fp)
	sw	$7, 12($fp)
	lw	$1, 24($fp)
	sw	$1, 8($fp)
	lw	$1, 20($fp)
	sw	$1, 4($fp)
	lbu	$1, 16($fp)
	sw	$1, 16($fp)
	j	$BB1_1
	nop
$BB1_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	li16	$2, 0
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	j	$BB1_3
	nop
$BB1_3:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 4($fp)
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	sb	$1, 0($2)
	lw	$2, 16($fp)
	xor	$1, $1, $2
	sltu	$2, $zero, $1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	j	$BB1_4
	nop
$BB1_4:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB1_8
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	j	$BB1_6
	nop
$BB1_6:                                 #   in Loop: Header=BB1_1 Depth=1
	j	$BB1_7
	nop
$BB1_7:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	lw	$2, 4($fp)
	addiur2	$2, $2, 1
	sw	$2, 4($fp)
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 8($fp)
	j	$BB1_1
	nop
$BB1_8:
	lw	$1, 12($fp)
	beqzc	$1, $BB1_11
# %bb.9:
	j	$BB1_10
	nop
$BB1_10:
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 28($fp)
	j	$BB1_12
	nop
$BB1_11:
	li16	$2, 0
	sw	$2, 28($fp)
	j	$BB1_12
	nop
$BB1_12:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	memccpy
$func_end1:
	.size	memccpy, ($func_end1)-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	2
	.type	memchr,@function
	.set	micromips
	.set	nomips16
	.ent	memchr
memchr:                                 # @memchr
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	lbu	$1, 16($fp)
	sw	$1, 16($fp)
	j	$BB2_1
	nop
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	li16	$2, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_3
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 8($fp)
	lbu	$1, 0($1)
	lw	$2, 16($fp)
	xor	$1, $1, $2
	sltu	$2, $zero, $1
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	j	$BB2_4
	nop
$BB2_4:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB2_8
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_6
	nop
$BB2_6:                                 #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_7
	nop
$BB2_7:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 8($fp)
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	j	$BB2_1
	nop
$BB2_8:
	lw	$1, 12($fp)
	beqzc	$1, $BB2_11
# %bb.9:
	j	$BB2_10
	nop
$BB2_10:
	lw	$1, 8($fp)
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB2_12
	nop
$BB2_11:
	li16	$2, 0
	move	$1, $2
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB2_12
	nop
$BB2_12:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	memchr
$func_end2:
	.size	memchr, ($func_end2)-memchr
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	2
	.type	memcmp,@function
	.set	micromips
	.set	nomips16
	.ent	memcmp
memcmp:                                 # @memcmp
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	lw	$1, 28($fp)
	sw	$1, 16($fp)
	lw	$1, 24($fp)
	sw	$1, 12($fp)
	j	$BB3_1
	nop
$BB3_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	li16	$2, 0
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	j	$BB3_3
	nop
$BB3_3:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$1, 16($fp)
	lbu	$1, 0($1)
	lw	$2, 12($fp)
	lbu	$2, 0($2)
	xor	$1, $1, $2
	sltiu	$2, $1, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	j	$BB3_4
	nop
$BB3_4:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB3_8
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	j	$BB3_6
	nop
$BB3_6:                                 #   in Loop: Header=BB3_1 Depth=1
	j	$BB3_7
	nop
$BB3_7:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$2, 20($fp)
	addiur2	$2, $2, -1
	sw	$2, 20($fp)
	lw	$2, 16($fp)
	addiur2	$2, $2, 1
	sw	$2, 16($fp)
	lw	$2, 12($fp)
	addiur2	$2, $2, 1
	sw	$2, 12($fp)
	j	$BB3_1
	nop
$BB3_8:
	lw	$1, 20($fp)
	beqzc	$1, $BB3_11
# %bb.9:
	j	$BB3_10
	nop
$BB3_10:
	lw	$1, 16($fp)
	lbu	$2, 0($1)
	lw	$1, 12($fp)
	lbu	$3, 0($1)
	subu16	$2, $2, $3
	move	$1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB3_12
	nop
$BB3_11:
	li16	$2, 0
	move	$1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB3_12
	nop
$BB3_12:
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	memcmp
$func_end3:
	.size	memcmp, ($func_end3)-memcmp
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	2
	.type	memcpy,@function
	.set	micromips
	.set	nomips16
	.ent	memcpy
memcpy:                                 # @memcpy
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	j	$BB4_1
	nop
$BB4_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB4_5
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	j	$BB4_3
	nop
$BB4_3:                                 #   in Loop: Header=BB4_1 Depth=1
	lw	$2, 4($fp)
	addiur2	$3, $2, 1
	sw	$3, 4($fp)
	lbu	$1, 0($2)
	lw	$2, 8($fp)
	addiur2	$3, $2, 1
	sw	$3, 8($fp)
	sb	$1, 0($2)
	j	$BB4_4
	nop
$BB4_4:                                 #   in Loop: Header=BB4_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	j	$BB4_1
	nop
$BB4_5:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	memcpy
$func_end4:
	.size	memcpy, ($func_end4)-memcpy
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	2
	.type	memrchr,@function
	.set	micromips
	.set	nomips16
	.ent	memrchr
memrchr:                                # @memrchr
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 16($fp)
	sw	$5, 12($fp)
	sw	$6, 8($fp)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	lbu	$1, 12($fp)
	sw	$1, 12($fp)
	j	$BB5_1
	nop
$BB5_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 8($fp)
	addiur2	$3, $2, -1
	sw	$3, 8($fp)
	beqzc	$2, $BB5_7
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	j	$BB5_3
	nop
$BB5_3:                                 #   in Loop: Header=BB5_1 Depth=1
	lw	$2, 4($fp)
	lw	$3, 8($fp)
	addu16	$2, $2, $3
	lbu	$1, 0($2)
	lw	$2, 12($fp)
	bne	$1, $2, $BB5_6
	nop
# %bb.4:
	j	$BB5_5
	nop
$BB5_5:
	lw	$2, 4($fp)
	lw	$3, 8($fp)
	addu16	$2, $2, $3
	sw	$2, 20($fp)
	j	$BB5_8
	nop
$BB5_6:                                 #   in Loop: Header=BB5_1 Depth=1
	j	$BB5_1
	nop
$BB5_7:
	li16	$2, 0
	sw	$2, 20($fp)
	j	$BB5_8
	nop
$BB5_8:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	memrchr
$func_end5:
	.size	memrchr, ($func_end5)-memrchr
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	2
	.type	memset,@function
	.set	micromips
	.set	nomips16
	.ent	memset
memset:                                 # @memset
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	j	$BB6_1
	nop
$BB6_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB6_5
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	j	$BB6_3
	nop
$BB6_3:                                 #   in Loop: Header=BB6_1 Depth=1
	lw	$1, 16($fp)
	lw	$2, 8($fp)
	sb	$1, 0($2)
	j	$BB6_4
	nop
$BB6_4:                                 #   in Loop: Header=BB6_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 8($fp)
	j	$BB6_1
	nop
$BB6_5:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	memset
$func_end6:
	.size	memset, ($func_end6)-memset
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	2
	.type	stpcpy,@function
	.set	micromips
	.set	nomips16
	.ent	stpcpy
stpcpy:                                 # @stpcpy
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	j	$BB7_1
	nop
$BB7_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 0($fp)
	lbu	$1, 0($1)
	lw	$2, 4($fp)
	sb	$1, 0($2)
	beqzc	$1, $BB7_5
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	j	$BB7_3
	nop
$BB7_3:                                 #   in Loop: Header=BB7_1 Depth=1
	j	$BB7_4
	nop
$BB7_4:                                 #   in Loop: Header=BB7_1 Depth=1
	lw	$2, 0($fp)
	addiur2	$2, $2, 1
	sw	$2, 0($fp)
	lw	$2, 4($fp)
	addiur2	$2, $2, 1
	sw	$2, 4($fp)
	j	$BB7_1
	nop
$BB7_5:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	stpcpy
$func_end7:
	.size	stpcpy, ($func_end7)-stpcpy
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	2
	.type	strchrnul,@function
	.set	micromips
	.set	nomips16
	.ent	strchrnul
strchrnul:                              # @strchrnul
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	lbu	$1, 8($fp)
	sw	$1, 8($fp)
	j	$BB8_1
	nop
$BB8_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	lb	$1, 0($1)
	li16	$2, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB8_4
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_3
	nop
$BB8_3:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 12($fp)
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	xor	$1, $1, $2
	sltu	$2, $zero, $1
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	j	$BB8_4
	nop
$BB8_4:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB8_8
# %bb.5:                                #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_6
	nop
$BB8_6:                                 #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_7
	nop
$BB8_7:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, 1
	sw	$2, 12($fp)
	j	$BB8_1
	nop
$BB8_8:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	strchrnul
$func_end8:
	.size	strchrnul, ($func_end8)-strchrnul
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	2
	.type	strchr,@function
	.set	micromips
	.set	nomips16
	.ent	strchr
strchr:                                 # @strchr
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 8($fp)
	sw	$5, 4($fp)
	j	$BB9_1
	nop
$BB9_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	lb	$1, 0($1)
	lw	$2, 4($fp)
	bne	$1, $2, $BB9_4
	nop
# %bb.2:
	j	$BB9_3
	nop
$BB9_3:
	lw	$1, 8($fp)
	sw	$1, 12($fp)
	j	$BB9_8
	nop
$BB9_4:                                 #   in Loop: Header=BB9_1 Depth=1
	j	$BB9_5
	nop
$BB9_5:                                 #   in Loop: Header=BB9_1 Depth=1
	lw	$2, 8($fp)
	addiur2	$3, $2, 1
	sw	$3, 8($fp)
	lbu	$1, 0($2)
	bnezc	$1, $BB9_1
# %bb.6:
	j	$BB9_7
	nop
$BB9_7:
	li16	$2, 0
	sw	$2, 12($fp)
	j	$BB9_8
	nop
$BB9_8:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	strchr
$func_end9:
	.size	strchr, ($func_end9)-strchr
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	2
	.type	strcmp,@function
	.set	micromips
	.set	nomips16
	.ent	strcmp
strcmp:                                 # @strcmp
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	j	$BB10_1
	nop
$BB10_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	lb	$1, 0($1)
	lw	$2, 8($fp)
	lb	$2, 0($2)
	li16	$3, 0
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	bne	$1, $2, $BB10_4
	nop
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	j	$BB10_3
	nop
$BB10_3:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$1, 12($fp)
	lb	$1, 0($1)
	sltu	$2, $zero, $1
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	j	$BB10_4
	nop
$BB10_4:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB10_8
# %bb.5:                                #   in Loop: Header=BB10_1 Depth=1
	j	$BB10_6
	nop
$BB10_6:                                #   in Loop: Header=BB10_1 Depth=1
	j	$BB10_7
	nop
$BB10_7:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, 1
	sw	$2, 12($fp)
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 8($fp)
	j	$BB10_1
	nop
$BB10_8:
	lw	$1, 12($fp)
	lbu	$2, 0($1)
	lw	$1, 8($fp)
	lbu	$3, 0($1)
	subu16	$2, $2, $3
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	strcmp
$func_end10:
	.size	strcmp, ($func_end10)-strcmp
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	2
	.type	strlen,@function
	.set	micromips
	.set	nomips16
	.ent	strlen
strlen:                                 # @strlen
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	j	$BB11_1
	nop
$BB11_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lbu	$1, 0($1)
	beqzc	$1, $BB11_5
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	j	$BB11_3
	nop
$BB11_3:                                #   in Loop: Header=BB11_1 Depth=1
	j	$BB11_4
	nop
$BB11_4:                                #   in Loop: Header=BB11_1 Depth=1
	lw	$2, 4($fp)
	addiur2	$2, $2, 1
	sw	$2, 4($fp)
	j	$BB11_1
	nop
$BB11_5:
	lw	$2, 4($fp)
	lw	$3, 0($fp)
	subu16	$2, $2, $3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	strlen
$func_end11:
	.size	strlen, ($func_end11)-strlen
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	2
	.type	strncmp,@function
	.set	micromips
	.set	nomips16
	.ent	strncmp
strncmp:                                # @strncmp
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 24($fp)
	sw	$5, 20($fp)
	sw	$6, 16($fp)
	lw	$1, 24($fp)
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	lw	$2, 16($fp)
	addiur2	$3, $2, -1
	sw	$3, 16($fp)
	bnezc	$2, $BB12_3
# %bb.1:
	j	$BB12_2
	nop
$BB12_2:
	li16	$2, 0
	sw	$2, 28($fp)
	j	$BB12_16
	nop
$BB12_3:
	j	$BB12_4
	nop
$BB12_4:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	lbu	$1, 0($1)
	li16	$2, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB12_11
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	j	$BB12_6
	nop
$BB12_6:                                #   in Loop: Header=BB12_4 Depth=1
	lw	$1, 8($fp)
	lbu	$1, 0($1)
	li16	$2, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB12_11
# %bb.7:                                #   in Loop: Header=BB12_4 Depth=1
	j	$BB12_8
	nop
$BB12_8:                                #   in Loop: Header=BB12_4 Depth=1
	lw	$1, 16($fp)
	li16	$2, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB12_11
# %bb.9:                                #   in Loop: Header=BB12_4 Depth=1
	j	$BB12_10
	nop
$BB12_10:                               #   in Loop: Header=BB12_4 Depth=1
	lw	$1, 12($fp)
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	lbu	$2, 0($2)
	xor	$1, $1, $2
	sltiu	$2, $1, 1
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	j	$BB12_11
	nop
$BB12_11:                               #   in Loop: Header=BB12_4 Depth=1
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB12_15
# %bb.12:                               #   in Loop: Header=BB12_4 Depth=1
	j	$BB12_13
	nop
$BB12_13:                               #   in Loop: Header=BB12_4 Depth=1
	j	$BB12_14
	nop
$BB12_14:                               #   in Loop: Header=BB12_4 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, 1
	sw	$2, 12($fp)
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 8($fp)
	lw	$2, 16($fp)
	addiur2	$2, $2, -1
	sw	$2, 16($fp)
	j	$BB12_4
	nop
$BB12_15:
	lw	$1, 12($fp)
	lbu	$2, 0($1)
	lw	$1, 8($fp)
	lbu	$3, 0($1)
	subu16	$2, $2, $3
	sw	$2, 28($fp)
	j	$BB12_16
	nop
$BB12_16:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	strncmp
$func_end12:
	.size	strncmp, ($func_end12)-strncmp
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	2
	.type	swab,@function
	.set	micromips
	.set	nomips16
	.ent	swab
swab:                                   # @swab
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	j	$BB13_1
	nop
$BB13_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	slti	$1, $1, 2
	bnezc	$1, $BB13_5
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	j	$BB13_3
	nop
$BB13_3:                                #   in Loop: Header=BB13_1 Depth=1
	lw	$1, 8($fp)
	lbu	$1, 1($1)
	lw	$2, 4($fp)
	sb	$1, 0($2)
	lw	$1, 8($fp)
	lbu	$1, 0($1)
	lw	$2, 4($fp)
	sb	$1, 1($2)
	lw	$1, 4($fp)
	addius5	$1, 2
	sw	$1, 4($fp)
	lw	$1, 8($fp)
	addius5	$1, 2
	sw	$1, 8($fp)
	j	$BB13_4
	nop
$BB13_4:                                #   in Loop: Header=BB13_1 Depth=1
	lw	$1, 12($fp)
	addius5	$1, -2
	sw	$1, 12($fp)
	j	$BB13_1
	nop
$BB13_5:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	swab
$func_end13:
	.size	swab, ($func_end13)-swab
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	2
	.type	isalpha,@function
	.set	micromips
	.set	nomips16
	.ent	isalpha
isalpha:                                # @isalpha
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	ori	$1, $1, 32
	addiu	$1, $1, -97
	sltiu	$2, $1, 26
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	isalpha
$func_end14:
	.size	isalpha, ($func_end14)-isalpha
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	2
	.type	isascii,@function
	.set	micromips
	.set	nomips16
	.ent	isascii
isascii:                                # @isascii
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$3, 4($fp)
	addiu	$2, $zero, -128
	and16	$2, $3
	sltiu	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	isascii
$func_end15:
	.size	isascii, ($func_end15)-isascii
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	2
	.type	isblank,@function
	.set	micromips
	.set	nomips16
	.ent	isblank
isblank:                                # @isblank
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	li16	$3, 1
	li16	$2, 32
	sw	$3, 0($fp)                      # 4-byte Folded Spill
	beq	$1, $2, $BB16_3
	nop
# %bb.1:
	j	$BB16_2
	nop
$BB16_2:
	lw	$1, 4($fp)
	li16	$2, 9
	xor	$1, $1, $2
	sltiu	$2, $1, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	j	$BB16_3
	nop
$BB16_3:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	isblank
$func_end16:
	.size	isblank, ($func_end16)-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	2
	.type	iscntrl,@function
	.set	micromips
	.set	nomips16
	.ent	iscntrl
iscntrl:                                # @iscntrl
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	sltiu	$1, $1, 32
	li16	$2, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	bnezc	$1, $BB17_3
# %bb.1:
	j	$BB17_2
	nop
$BB17_2:
	lw	$1, 4($fp)
	addiu	$2, $zero, 127
	xor	$1, $1, $2
	sltiu	$2, $1, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	j	$BB17_3
	nop
$BB17_3:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	iscntrl
$func_end17:
	.size	iscntrl, ($func_end17)-iscntrl
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	2
	.type	isdigit,@function
	.set	micromips
	.set	nomips16
	.ent	isdigit
isdigit:                                # @isdigit
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	addiu	$1, $1, -48
	sltiu	$2, $1, 10
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	isdigit
$func_end18:
	.size	isdigit, ($func_end18)-isdigit
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	2
	.type	isgraph,@function
	.set	micromips
	.set	nomips16
	.ent	isgraph
isgraph:                                # @isgraph
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	addiu	$1, $1, -33
	sltiu	$2, $1, 94
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	isgraph
$func_end19:
	.size	isgraph, ($func_end19)-isgraph
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	2
	.type	islower,@function
	.set	micromips
	.set	nomips16
	.ent	islower
islower:                                # @islower
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	addiu	$1, $1, -97
	sltiu	$2, $1, 26
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	islower
$func_end20:
	.size	islower, ($func_end20)-islower
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	2
	.type	isprint,@function
	.set	micromips
	.set	nomips16
	.ent	isprint
isprint:                                # @isprint
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	addiu	$1, $1, -32
	sltiu	$2, $1, 95
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	isprint
$func_end21:
	.size	isprint, ($func_end21)-isprint
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	2
	.type	isspace,@function
	.set	micromips
	.set	nomips16
	.ent	isspace
isspace:                                # @isspace
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	li16	$3, 1
	li16	$2, 32
	sw	$3, 0($fp)                      # 4-byte Folded Spill
	beq	$1, $2, $BB22_3
	nop
# %bb.1:
	j	$BB22_2
	nop
$BB22_2:
	lw	$1, 4($fp)
	addiu	$1, $1, -9
	sltiu	$2, $1, 5
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	j	$BB22_3
	nop
$BB22_3:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	isspace
$func_end22:
	.size	isspace, ($func_end22)-isspace
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	2
	.type	isupper,@function
	.set	micromips
	.set	nomips16
	.ent	isupper
isupper:                                # @isupper
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	addiu	$1, $1, -65
	sltiu	$2, $1, 26
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	isupper
$func_end23:
	.size	isupper, ($func_end23)-isupper
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	2
	.type	iswcntrl,@function
	.set	micromips
	.set	nomips16
	.ent	iswcntrl
iswcntrl:                               # @iswcntrl
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	sltiu	$1, $1, 32
	li16	$2, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	bnezc	$1, $BB24_7
# %bb.1:
	j	$BB24_2
	nop
$BB24_2:
	lw	$1, 4($fp)
	addiu	$1, $1, -127
	sltiu	$1, $1, 33
	li16	$2, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	bnezc	$1, $BB24_7
# %bb.3:
	j	$BB24_4
	nop
$BB24_4:
	lw	$1, 4($fp)
	addiu	$1, $1, -8232
	sltiu	$1, $1, 2
	li16	$2, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	bnezc	$1, $BB24_7
# %bb.5:
	j	$BB24_6
	nop
$BB24_6:
	lw	$2, 4($fp)
	lui	$1, 65535
	ori	$3, $1, 7
	addu16	$2, $2, $3
	sltiu	$2, $2, 3
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	j	$BB24_7
	nop
$BB24_7:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	iswcntrl
$func_end24:
	.size	iswcntrl, ($func_end24)-iswcntrl
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	2
	.type	iswdigit,@function
	.set	micromips
	.set	nomips16
	.ent	iswdigit
iswdigit:                               # @iswdigit
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	addiu	$1, $1, -48
	sltiu	$2, $1, 10
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	iswdigit
$func_end25:
	.size	iswdigit, ($func_end25)-iswdigit
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	2
	.type	iswprint,@function
	.set	micromips
	.set	nomips16
	.ent	iswprint
iswprint:                               # @iswprint
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 0($fp)
	lw	$1, 0($fp)
	sltiu	$1, $1, 255
	beqzc	$1, $BB26_3
# %bb.1:
	j	$BB26_2
	nop
$BB26_2:
	lw	$2, 0($fp)
	addiur2	$2, $2, 1
	andi	$1, $2, 127
	li16	$2, 32
	slt	$1, $2, $1
	sw	$1, 4($fp)
	j	$BB26_16
	nop
$BB26_3:
	lw	$1, 0($fp)
	sltiu	$1, $1, 8232
	bnezc	$1, $BB26_9
# %bb.4:
	j	$BB26_5
	nop
$BB26_5:
	lw	$1, 0($fp)
	addiu	$1, $1, -8234
	ori	$2, $zero, 47062
	sltu	$1, $1, $2
	bnezc	$1, $BB26_9
# %bb.6:
	j	$BB26_7
	nop
$BB26_7:
	lw	$2, 0($fp)
	lui	$1, 65535
	ori	$3, $1, 8192
	addu16	$2, $2, $3
	sltiu	$1, $2, 8185
	beqzc	$1, $BB26_10
# %bb.8:
	j	$BB26_9
	nop
$BB26_9:
	li16	$2, 1
	sw	$2, 4($fp)
	j	$BB26_16
	nop
$BB26_10:
	lw	$2, 0($fp)
	lui	$1, 65535
	ori	$3, $1, 4
	addu16	$2, $2, $3
	lui	$1, 16
	ori	$1, $1, 3
	sltu	$1, $1, $2
	bnezc	$1, $BB26_14
# %bb.11:
	j	$BB26_12
	nop
$BB26_12:
	lw	$1, 0($fp)
	andi	$1, $1, 65534
	ori	$2, $zero, 65534
	bne	$1, $2, $BB26_15
	nop
# %bb.13:
	j	$BB26_14
	nop
$BB26_14:
	li16	$2, 0
	sw	$2, 4($fp)
	j	$BB26_16
	nop
$BB26_15:
	li16	$2, 1
	sw	$2, 4($fp)
	j	$BB26_16
	nop
$BB26_16:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	iswprint
$func_end26:
	.size	iswprint, ($func_end26)-iswprint
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	2
	.type	iswxdigit,@function
	.set	micromips
	.set	nomips16
	.ent	iswxdigit
iswxdigit:                              # @iswxdigit
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	addiu	$1, $1, -48
	sltiu	$1, $1, 10
	li16	$2, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	bnezc	$1, $BB27_3
# %bb.1:
	j	$BB27_2
	nop
$BB27_2:
	lw	$1, 4($fp)
	ori	$1, $1, 32
	addiu	$1, $1, -97
	sltiu	$2, $1, 6
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	j	$BB27_3
	nop
$BB27_3:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	iswxdigit
$func_end27:
	.size	iswxdigit, ($func_end27)-iswxdigit
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	2
	.type	toascii,@function
	.set	micromips
	.set	nomips16
	.ent	toascii
toascii:                                # @toascii
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	andi	$2, $1, 127
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	toascii
$func_end28:
	.size	toascii, ($func_end28)-toascii
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	2
	.type	fdim,@function
	.set	micromips
	.set	nomips16
	.ent	fdim
fdim:                                   # @fdim
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 36($fp)
	sw	$4, 32($fp)
	sw	$7, 28($fp)
	sw	$6, 24($fp)
	lw	$2, 32($fp)
	lw	$4, 36($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $3, $4
	xor	$3, $3, $4
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB29_3
# %bb.1:
	j	$BB29_2
	nop
$BB29_2:
	lw	$1, 32($fp)
	lw	$2, 36($fp)
	sw	$2, 44($fp)
	sw	$1, 40($fp)
	j	$BB29_11
	nop
$BB29_3:
	lw	$2, 24($fp)
	lw	$4, 28($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $3, $4
	xor	$3, $3, $4
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB29_6
# %bb.4:
	j	$BB29_5
	nop
$BB29_5:
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 44($fp)
	sw	$1, 40($fp)
	j	$BB29_11
	nop
$BB29_6:
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	jal	__gtdf2
	nop
	blez	$2, $BB29_9
	nop
# %bb.7:
	j	$BB29_8
	nop
$BB29_8:
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	jal	__subdf3
	nop
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	j	$BB29_10
	nop
$BB29_9:
	li16	$2, 0
	move	$1, $2
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB29_10
	nop
$BB29_10:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 40($fp)
	sw	$1, 44($fp)
	j	$BB29_11
	nop
$BB29_11:
	lw	$2, 40($fp)
	lw	$3, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	fdim
$func_end29:
	.size	fdim, ($func_end29)-fdim
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	2
	.type	fdimf,@function
	.set	micromips
	.set	nomips16
	.ent	fdimf
fdimf:                                  # @fdimf
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$4, 24($fp)
	sw	$5, 20($fp)
	lw	$3, 24($fp)
	lui	$1, 32767
	ori	$2, $1, 65535
	and16	$2, $3
	lui	$1, 32640
	ori	$1, $1, 1
	slt	$1, $2, $1
	bnezc	$1, $BB30_3
# %bb.1:
	j	$BB30_2
	nop
$BB30_2:
	lw	$1, 24($fp)
	sw	$1, 28($fp)
	j	$BB30_11
	nop
$BB30_3:
	lw	$3, 20($fp)
	lui	$1, 32767
	ori	$2, $1, 65535
	and16	$2, $3
	lui	$1, 32640
	ori	$1, $1, 1
	slt	$1, $2, $1
	bnezc	$1, $BB30_6
# %bb.4:
	j	$BB30_5
	nop
$BB30_5:
	lw	$1, 20($fp)
	sw	$1, 28($fp)
	j	$BB30_11
	nop
$BB30_6:
	lw	$4, 24($fp)
	lw	$5, 20($fp)
	jal	__gtsf2
	nop
	blez	$2, $BB30_9
	nop
# %bb.7:
	j	$BB30_8
	nop
$BB30_8:
	lw	$4, 24($fp)
	lw	$5, 20($fp)
	jal	__subsf3
	nop
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	j	$BB30_10
	nop
$BB30_9:
	li16	$2, 0
	move	$1, $2
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	j	$BB30_10
	nop
$BB30_10:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	nop
	sw	$1, 28($fp)
	j	$BB30_11
	nop
$BB30_11:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	fdimf
$func_end30:
	.size	fdimf, ($func_end30)-fdimf
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	2
	.type	fmax,@function
	.set	micromips
	.set	nomips16
	.ent	fmax
fmax:                                   # @fmax
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 44($fp)
	sw	$4, 40($fp)
	sw	$7, 36($fp)
	sw	$6, 32($fp)
	lw	$2, 40($fp)
	lw	$4, 44($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $3, $4
	xor	$3, $3, $4
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB31_3
# %bb.1:
	j	$BB31_2
	nop
$BB31_2:
	lw	$1, 32($fp)
	lw	$2, 36($fp)
	sw	$2, 52($fp)
	sw	$1, 48($fp)
	j	$BB31_18
	nop
$BB31_3:
	lw	$2, 32($fp)
	lw	$4, 36($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $3, $4
	xor	$3, $3, $4
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB31_6
# %bb.4:
	j	$BB31_5
	nop
$BB31_5:
	lw	$1, 40($fp)
	lw	$2, 44($fp)
	sw	$2, 52($fp)
	sw	$1, 48($fp)
	j	$BB31_18
	nop
$BB31_6:
	lw	$1, 44($fp)
	srl	$1, $1, 31
	lw	$2, 36($fp)
	srl	$2, $2, 31
	beq	$1, $2, $BB31_13
	nop
# %bb.7:
	j	$BB31_8
	nop
$BB31_8:
	lw	$1, 44($fp)
	bgez	$1, $BB31_11
	nop
# %bb.9:
	j	$BB31_10
	nop
$BB31_10:
	lw	$1, 36($fp)
	lw	$2, 32($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB31_12
	nop
$BB31_11:
	lw	$1, 44($fp)
	lw	$2, 40($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB31_12
	nop
$BB31_12:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$2, 48($fp)
	sw	$1, 52($fp)
	j	$BB31_18
	nop
$BB31_13:
	lw	$4, 40($fp)
	lw	$5, 44($fp)
	lw	$6, 32($fp)
	lw	$7, 36($fp)
	jal	__ltdf2
	nop
	bgez	$2, $BB31_16
	nop
# %bb.14:
	j	$BB31_15
	nop
$BB31_15:
	lw	$1, 36($fp)
	lw	$2, 32($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB31_17
	nop
$BB31_16:
	lw	$1, 44($fp)
	lw	$2, 40($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB31_17
	nop
$BB31_17:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 48($fp)
	sw	$1, 52($fp)
	j	$BB31_18
	nop
$BB31_18:
	lw	$2, 48($fp)
	lw	$3, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	fmax
$func_end31:
	.size	fmax, ($func_end31)-fmax
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	2
	.type	fmaxf,@function
	.set	micromips
	.set	nomips16
	.ent	fmaxf
fmaxf:                                  # @fmaxf
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$4, 32($fp)
	sw	$5, 28($fp)
	lw	$3, 32($fp)
	lui	$1, 32767
	ori	$2, $1, 65535
	and16	$2, $3
	lui	$1, 32640
	ori	$1, $1, 1
	slt	$1, $2, $1
	bnezc	$1, $BB32_3
# %bb.1:
	j	$BB32_2
	nop
$BB32_2:
	lw	$1, 28($fp)
	sw	$1, 36($fp)
	j	$BB32_18
	nop
$BB32_3:
	lw	$3, 28($fp)
	lui	$1, 32767
	ori	$2, $1, 65535
	and16	$2, $3
	lui	$1, 32640
	ori	$1, $1, 1
	slt	$1, $2, $1
	bnezc	$1, $BB32_6
# %bb.4:
	j	$BB32_5
	nop
$BB32_5:
	lw	$1, 32($fp)
	sw	$1, 36($fp)
	j	$BB32_18
	nop
$BB32_6:
	lw	$1, 32($fp)
	srl	$1, $1, 31
	lw	$2, 28($fp)
	srl	$2, $2, 31
	beq	$1, $2, $BB32_13
	nop
# %bb.7:
	j	$BB32_8
	nop
$BB32_8:
	lw	$1, 32($fp)
	bgez	$1, $BB32_11
	nop
# %bb.9:
	j	$BB32_10
	nop
$BB32_10:
	lw	$1, 28($fp)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	j	$BB32_12
	nop
$BB32_11:
	lw	$1, 32($fp)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	j	$BB32_12
	nop
$BB32_12:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	nop
	sw	$1, 36($fp)
	j	$BB32_18
	nop
$BB32_13:
	lw	$4, 32($fp)
	lw	$5, 28($fp)
	jal	__ltsf2
	nop
	bgez	$2, $BB32_16
	nop
# %bb.14:
	j	$BB32_15
	nop
$BB32_15:
	lw	$1, 28($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB32_17
	nop
$BB32_16:
	lw	$1, 32($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB32_17
	nop
$BB32_17:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	nop
	sw	$1, 36($fp)
	j	$BB32_18
	nop
$BB32_18:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	fmaxf
$func_end32:
	.size	fmaxf, ($func_end32)-fmaxf
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	2
	.type	fmaxl,@function
	.set	micromips
	.set	nomips16
	.ent	fmaxl
fmaxl:                                  # @fmaxl
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 44($fp)
	sw	$4, 40($fp)
	sw	$7, 36($fp)
	sw	$6, 32($fp)
	lw	$2, 40($fp)
	lw	$4, 44($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $3, $4
	xor	$3, $3, $4
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB33_3
# %bb.1:
	j	$BB33_2
	nop
$BB33_2:
	lw	$1, 32($fp)
	lw	$2, 36($fp)
	sw	$2, 52($fp)
	sw	$1, 48($fp)
	j	$BB33_18
	nop
$BB33_3:
	lw	$2, 32($fp)
	lw	$4, 36($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $3, $4
	xor	$3, $3, $4
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB33_6
# %bb.4:
	j	$BB33_5
	nop
$BB33_5:
	lw	$1, 40($fp)
	lw	$2, 44($fp)
	sw	$2, 52($fp)
	sw	$1, 48($fp)
	j	$BB33_18
	nop
$BB33_6:
	lw	$1, 44($fp)
	srl	$1, $1, 31
	lw	$2, 36($fp)
	srl	$2, $2, 31
	beq	$1, $2, $BB33_13
	nop
# %bb.7:
	j	$BB33_8
	nop
$BB33_8:
	lw	$1, 44($fp)
	bgez	$1, $BB33_11
	nop
# %bb.9:
	j	$BB33_10
	nop
$BB33_10:
	lw	$1, 36($fp)
	lw	$2, 32($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB33_12
	nop
$BB33_11:
	lw	$1, 44($fp)
	lw	$2, 40($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB33_12
	nop
$BB33_12:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$2, 48($fp)
	sw	$1, 52($fp)
	j	$BB33_18
	nop
$BB33_13:
	lw	$4, 40($fp)
	lw	$5, 44($fp)
	lw	$6, 32($fp)
	lw	$7, 36($fp)
	jal	__ltdf2
	nop
	bgez	$2, $BB33_16
	nop
# %bb.14:
	j	$BB33_15
	nop
$BB33_15:
	lw	$1, 36($fp)
	lw	$2, 32($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB33_17
	nop
$BB33_16:
	lw	$1, 44($fp)
	lw	$2, 40($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB33_17
	nop
$BB33_17:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 48($fp)
	sw	$1, 52($fp)
	j	$BB33_18
	nop
$BB33_18:
	lw	$2, 48($fp)
	lw	$3, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	fmaxl
$func_end33:
	.size	fmaxl, ($func_end33)-fmaxl
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	2
	.type	fmin,@function
	.set	micromips
	.set	nomips16
	.ent	fmin
fmin:                                   # @fmin
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 44($fp)
	sw	$4, 40($fp)
	sw	$7, 36($fp)
	sw	$6, 32($fp)
	lw	$2, 40($fp)
	lw	$4, 44($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $3, $4
	xor	$3, $3, $4
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB34_3
# %bb.1:
	j	$BB34_2
	nop
$BB34_2:
	lw	$1, 32($fp)
	lw	$2, 36($fp)
	sw	$2, 52($fp)
	sw	$1, 48($fp)
	j	$BB34_18
	nop
$BB34_3:
	lw	$2, 32($fp)
	lw	$4, 36($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $3, $4
	xor	$3, $3, $4
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB34_6
# %bb.4:
	j	$BB34_5
	nop
$BB34_5:
	lw	$1, 40($fp)
	lw	$2, 44($fp)
	sw	$2, 52($fp)
	sw	$1, 48($fp)
	j	$BB34_18
	nop
$BB34_6:
	lw	$1, 44($fp)
	srl	$1, $1, 31
	lw	$2, 36($fp)
	srl	$2, $2, 31
	beq	$1, $2, $BB34_13
	nop
# %bb.7:
	j	$BB34_8
	nop
$BB34_8:
	lw	$1, 44($fp)
	bgez	$1, $BB34_11
	nop
# %bb.9:
	j	$BB34_10
	nop
$BB34_10:
	lw	$1, 44($fp)
	lw	$2, 40($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB34_12
	nop
$BB34_11:
	lw	$1, 36($fp)
	lw	$2, 32($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB34_12
	nop
$BB34_12:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$2, 48($fp)
	sw	$1, 52($fp)
	j	$BB34_18
	nop
$BB34_13:
	lw	$4, 40($fp)
	lw	$5, 44($fp)
	lw	$6, 32($fp)
	lw	$7, 36($fp)
	jal	__ltdf2
	nop
	bgez	$2, $BB34_16
	nop
# %bb.14:
	j	$BB34_15
	nop
$BB34_15:
	lw	$1, 44($fp)
	lw	$2, 40($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB34_17
	nop
$BB34_16:
	lw	$1, 36($fp)
	lw	$2, 32($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB34_17
	nop
$BB34_17:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 48($fp)
	sw	$1, 52($fp)
	j	$BB34_18
	nop
$BB34_18:
	lw	$2, 48($fp)
	lw	$3, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	fmin
$func_end34:
	.size	fmin, ($func_end34)-fmin
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	2
	.type	fminf,@function
	.set	micromips
	.set	nomips16
	.ent	fminf
fminf:                                  # @fminf
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$4, 32($fp)
	sw	$5, 28($fp)
	lw	$3, 32($fp)
	lui	$1, 32767
	ori	$2, $1, 65535
	and16	$2, $3
	lui	$1, 32640
	ori	$1, $1, 1
	slt	$1, $2, $1
	bnezc	$1, $BB35_3
# %bb.1:
	j	$BB35_2
	nop
$BB35_2:
	lw	$1, 28($fp)
	sw	$1, 36($fp)
	j	$BB35_18
	nop
$BB35_3:
	lw	$3, 28($fp)
	lui	$1, 32767
	ori	$2, $1, 65535
	and16	$2, $3
	lui	$1, 32640
	ori	$1, $1, 1
	slt	$1, $2, $1
	bnezc	$1, $BB35_6
# %bb.4:
	j	$BB35_5
	nop
$BB35_5:
	lw	$1, 32($fp)
	sw	$1, 36($fp)
	j	$BB35_18
	nop
$BB35_6:
	lw	$1, 32($fp)
	srl	$1, $1, 31
	lw	$2, 28($fp)
	srl	$2, $2, 31
	beq	$1, $2, $BB35_13
	nop
# %bb.7:
	j	$BB35_8
	nop
$BB35_8:
	lw	$1, 32($fp)
	bgez	$1, $BB35_11
	nop
# %bb.9:
	j	$BB35_10
	nop
$BB35_10:
	lw	$1, 32($fp)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	j	$BB35_12
	nop
$BB35_11:
	lw	$1, 28($fp)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	j	$BB35_12
	nop
$BB35_12:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	nop
	sw	$1, 36($fp)
	j	$BB35_18
	nop
$BB35_13:
	lw	$4, 32($fp)
	lw	$5, 28($fp)
	jal	__ltsf2
	nop
	bgez	$2, $BB35_16
	nop
# %bb.14:
	j	$BB35_15
	nop
$BB35_15:
	lw	$1, 32($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB35_17
	nop
$BB35_16:
	lw	$1, 28($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB35_17
	nop
$BB35_17:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	nop
	sw	$1, 36($fp)
	j	$BB35_18
	nop
$BB35_18:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	fminf
$func_end35:
	.size	fminf, ($func_end35)-fminf
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	2
	.type	fminl,@function
	.set	micromips
	.set	nomips16
	.ent	fminl
fminl:                                  # @fminl
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 44($fp)
	sw	$4, 40($fp)
	sw	$7, 36($fp)
	sw	$6, 32($fp)
	lw	$2, 40($fp)
	lw	$4, 44($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $3, $4
	xor	$3, $3, $4
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB36_3
# %bb.1:
	j	$BB36_2
	nop
$BB36_2:
	lw	$1, 32($fp)
	lw	$2, 36($fp)
	sw	$2, 52($fp)
	sw	$1, 48($fp)
	j	$BB36_18
	nop
$BB36_3:
	lw	$2, 32($fp)
	lw	$4, 36($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $3, $4
	xor	$3, $3, $4
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB36_6
# %bb.4:
	j	$BB36_5
	nop
$BB36_5:
	lw	$1, 40($fp)
	lw	$2, 44($fp)
	sw	$2, 52($fp)
	sw	$1, 48($fp)
	j	$BB36_18
	nop
$BB36_6:
	lw	$1, 44($fp)
	srl	$1, $1, 31
	lw	$2, 36($fp)
	srl	$2, $2, 31
	beq	$1, $2, $BB36_13
	nop
# %bb.7:
	j	$BB36_8
	nop
$BB36_8:
	lw	$1, 44($fp)
	bgez	$1, $BB36_11
	nop
# %bb.9:
	j	$BB36_10
	nop
$BB36_10:
	lw	$1, 44($fp)
	lw	$2, 40($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB36_12
	nop
$BB36_11:
	lw	$1, 36($fp)
	lw	$2, 32($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB36_12
	nop
$BB36_12:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$2, 48($fp)
	sw	$1, 52($fp)
	j	$BB36_18
	nop
$BB36_13:
	lw	$4, 40($fp)
	lw	$5, 44($fp)
	lw	$6, 32($fp)
	lw	$7, 36($fp)
	jal	__ltdf2
	nop
	bgez	$2, $BB36_16
	nop
# %bb.14:
	j	$BB36_15
	nop
$BB36_15:
	lw	$1, 44($fp)
	lw	$2, 40($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB36_17
	nop
$BB36_16:
	lw	$1, 36($fp)
	lw	$2, 32($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB36_17
	nop
$BB36_17:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 48($fp)
	sw	$1, 52($fp)
	j	$BB36_18
	nop
$BB36_18:
	lw	$2, 48($fp)
	lw	$3, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	fminl
$func_end36:
	.size	fminl, ($func_end36)-fminl
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	2
	.type	l64a,@function
	.set	micromips
	.set	nomips16
	.ent	l64a
l64a:                                   # @l64a
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	lw	$1, 12($fp)
	sw	$1, 4($fp)
	lui	$1, %hi(l64a.s)
	addiu	$1, $1, %lo(l64a.s)
	sw	$1, 8($fp)
	j	$BB37_1
	nop
$BB37_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	beqzc	$1, $BB37_5
# %bb.2:                                #   in Loop: Header=BB37_1 Depth=1
	j	$BB37_3
	nop
$BB37_3:                                #   in Loop: Header=BB37_1 Depth=1
	lw	$2, 4($fp)
	andi16	$3, $2, 63
	lui	$1, %hi(digits)
	addiu	$2, $1, %lo(digits)
	addu16	$2, $2, $3
	lbu	$1, 0($2)
	lw	$2, 8($fp)
	sb	$1, 0($2)
	j	$BB37_4
	nop
$BB37_4:                                #   in Loop: Header=BB37_1 Depth=1
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 8($fp)
	lw	$2, 4($fp)
	srl16	$2, $2, 6
	sw	$2, 4($fp)
	j	$BB37_1
	nop
$BB37_5:
	lw	$1, 8($fp)
	li16	$2, 0
	sb	$2, 0($1)
	lui	$1, %hi(l64a.s)
	addiu	$2, $1, %lo(l64a.s)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	l64a
$func_end37:
	.size	l64a, ($func_end37)-l64a
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	2
	.type	srand,@function
	.set	micromips
	.set	nomips16
	.ent	srand
srand:                                  # @srand
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$2, 4($fp)
	addiur2	$2, $2, -1
	lui	$1, %hi(seed)
	addiu	$4, $1, %lo(seed)
	li16	$3, 0
	sw16	$3, 4($4)
	sw	$2, %lo(seed)($1)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	srand
$func_end38:
	.size	srand, ($func_end38)-srand
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	2
	.type	rand,@function
	.set	micromips
	.set	nomips16
	.ent	rand
rand:                                   # @rand
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(seed)
	addiu	$2, $1, %lo(seed)
	lw16	$4, 4($2)
	lw	$3, %lo(seed)($1)
	lui	$5, 22609
	ori	$5, $5, 62509
	mul	$6, $3, $5
	lui	$5, 19605
	ori	$5, $5, 32557
	multu	$3, $5
	mflo	$3
	sw	$3, 8($fp)                      # 8-byte Folded Spill
	mfhi	$3
	sw	$3, 12($fp)                     # 8-byte Folded Spill
	mfhi16	$3
	addu16	$3, $3, $6
	mul	$4, $4, $5
	lw	$5, 8($fp)                      # 8-byte Folded Reload
	nop
	mtlo	$5
	lw	$5, 12($fp)                     # 8-byte Folded Reload
	nop
	mthi	$5
	addu16	$3, $3, $4
	mflo16	$4
	addiur2	$4, $4, 1
	sltiu	$5, $4, 1
	addu16	$3, $3, $5
	sw	$4, %lo(seed)($1)
	sw16	$3, 4($2)
	lw16	$2, 4($2)
	srl16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	rand
$func_end39:
	.size	rand, ($func_end39)-rand
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	2
	.type	insque,@function
	.set	micromips
	.set	nomips16
	.ent	insque
insque:                                 # @insque
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	lw	$1, 12($fp)
	sw	$1, 4($fp)
	lw	$1, 8($fp)
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	bnezc	$1, $BB40_3
# %bb.1:
	j	$BB40_2
	nop
$BB40_2:
	lw	$3, 4($fp)
	li16	$2, 0
	sw16	$2, 4($3)
	lw	$3, 4($fp)
	sw16	$2, 0($3)
	j	$BB40_6
	nop
$BB40_3:
	lw	$2, 0($fp)
	lw16	$2, 0($2)
	lw	$3, 4($fp)
	sw16	$2, 0($3)
	lw	$2, 0($fp)
	lw	$3, 4($fp)
	sw16	$2, 4($3)
	lw	$2, 4($fp)
	lw	$3, 0($fp)
	sw16	$2, 0($3)
	lw	$2, 4($fp)
	lw16	$2, 0($2)
	beqzc	$2, $BB40_6
# %bb.4:
	j	$BB40_5
	nop
$BB40_5:
	lw	$2, 4($fp)
	lw16	$3, 0($2)
	sw16	$2, 4($3)
	j	$BB40_6
	nop
$BB40_6:
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	insque
$func_end40:
	.size	insque, ($func_end40)-insque
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	2
	.type	remque,@function
	.set	micromips
	.set	nomips16
	.ent	remque
remque:                                 # @remque
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	lw	$2, 0($fp)
	lw16	$2, 0($2)
	beqzc	$2, $BB41_3
# %bb.1:
	j	$BB41_2
	nop
$BB41_2:
	lw	$3, 0($fp)
	lw16	$2, 4($3)
	lw16	$3, 0($3)
	sw16	$2, 4($3)
	j	$BB41_3
	nop
$BB41_3:
	lw	$2, 0($fp)
	lw16	$2, 4($2)
	beqzc	$2, $BB41_6
# %bb.4:
	j	$BB41_5
	nop
$BB41_5:
	lw	$3, 0($fp)
	lw16	$2, 0($3)
	lw16	$3, 4($3)
	sw16	$2, 0($3)
	j	$BB41_6
	nop
$BB41_6:
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	remque
$func_end41:
	.size	remque, ($func_end41)-remque
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	2
	.type	lsearch,@function
	.set	micromips
	.set	nomips16
	.ent	lsearch
lsearch:                                # @lsearch
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	lw	$1, 80($fp)
	sw	$4, 48($fp)
	sw	$5, 44($fp)
	sw	$6, 40($fp)
	sw	$7, 36($fp)
	lw	$1, 36($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	lw	$1, 44($fp)
	sw	$1, 32($fp)
	lw	$2, 40($fp)
	lw16	$2, 0($2)
	sw	$2, 28($fp)
	li16	$2, 0
	sw	$2, 24($fp)
	j	$BB42_1
	nop
$BB42_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB42_8
# %bb.2:                                #   in Loop: Header=BB42_1 Depth=1
	j	$BB42_3
	nop
$BB42_3:                                #   in Loop: Header=BB42_1 Depth=1
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lw	$25, 80($fp)
	lw	$4, 48($fp)
	lw	$2, 32($fp)
	lw	$1, 24($fp)
	mul	$3, $1, $3
	addu16	$5, $2, $3
	jalr	$25
	nop
	bnezc	$2, $BB42_6
# %bb.4:
	j	$BB42_5
	nop
$BB42_5:
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 32($fp)
	lw	$1, 24($fp)
	mul	$3, $1, $3
	addu16	$2, $2, $3
	sw	$2, 52($fp)
	j	$BB42_9
	nop
$BB42_6:                                #   in Loop: Header=BB42_1 Depth=1
	j	$BB42_7
	nop
$BB42_7:                                #   in Loop: Header=BB42_1 Depth=1
	lw	$2, 24($fp)
	addiur2	$2, $2, 1
	sw	$2, 24($fp)
	j	$BB42_1
	nop
$BB42_8:
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 28($fp)
	addiur2	$2, $2, 1
	lw	$4, 40($fp)
	sw16	$2, 0($4)
	lw	$2, 32($fp)
	lw	$1, 28($fp)
	mul	$3, $1, $3
	addu16	$4, $2, $3
	sw	$4, 16($fp)                     # 4-byte Folded Spill
	lw	$5, 48($fp)
	lw	$6, 36($fp)
	jal	memcpy
	nop
                                        # kill: def $at killed $v0
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	nop
	sw	$2, 52($fp)
	j	$BB42_9
	nop
$BB42_9:
	lw	$2, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	lsearch
$func_end42:
	.size	lsearch, ($func_end42)-lsearch
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	2
	.type	lfind,@function
	.set	micromips
	.set	nomips16
	.ent	lfind
lfind:                                  # @lfind
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	lw	$1, 80($fp)
	sw	$4, 48($fp)
	sw	$5, 44($fp)
	sw	$6, 40($fp)
	sw	$7, 36($fp)
	lw	$1, 36($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	lw	$1, 44($fp)
	sw	$1, 32($fp)
	lw	$2, 40($fp)
	lw16	$2, 0($2)
	sw	$2, 28($fp)
	li16	$2, 0
	sw	$2, 24($fp)
	j	$BB43_1
	nop
$BB43_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB43_8
# %bb.2:                                #   in Loop: Header=BB43_1 Depth=1
	j	$BB43_3
	nop
$BB43_3:                                #   in Loop: Header=BB43_1 Depth=1
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lw	$25, 80($fp)
	lw	$4, 48($fp)
	lw	$2, 32($fp)
	lw	$1, 24($fp)
	mul	$3, $1, $3
	addu16	$5, $2, $3
	jalr	$25
	nop
	bnezc	$2, $BB43_6
# %bb.4:
	j	$BB43_5
	nop
$BB43_5:
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 32($fp)
	lw	$1, 24($fp)
	mul	$3, $1, $3
	addu16	$2, $2, $3
	sw	$2, 52($fp)
	j	$BB43_9
	nop
$BB43_6:                                #   in Loop: Header=BB43_1 Depth=1
	j	$BB43_7
	nop
$BB43_7:                                #   in Loop: Header=BB43_1 Depth=1
	lw	$2, 24($fp)
	addiur2	$2, $2, 1
	sw	$2, 24($fp)
	j	$BB43_1
	nop
$BB43_8:
	li16	$2, 0
	sw	$2, 52($fp)
	j	$BB43_9
	nop
$BB43_9:
	lw	$2, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	lfind
$func_end43:
	.size	lfind, ($func_end43)-lfind
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	2
	.type	abs,@function
	.set	micromips
	.set	nomips16
	.ent	abs
abs:                                    # @abs
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	blez	$1, $BB44_3
	nop
# %bb.1:
	j	$BB44_2
	nop
$BB44_2:
	lw	$1, 4($fp)
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB44_4
	nop
$BB44_3:
	lw	$3, 4($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	move	$1, $2
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB44_4
	nop
$BB44_4:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	abs
$func_end44:
	.size	abs, ($func_end44)-abs
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	2
	.type	atoi,@function
	.set	micromips
	.set	nomips16
	.ent	atoi
atoi:                                   # @atoi
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 36($fp)
	li16	$2, 0
	sw	$2, 32($fp)
	sw	$2, 28($fp)
	j	$BB45_1
	nop
$BB45_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	lb	$4, 0($1)
	jal	isspace
	nop
	beqzc	$2, $BB45_4
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	j	$BB45_3
	nop
$BB45_3:                                #   in Loop: Header=BB45_1 Depth=1
	lw	$2, 36($fp)
	addiur2	$2, $2, 1
	sw	$2, 36($fp)
	j	$BB45_1
	nop
$BB45_4:
	lw	$1, 36($fp)
	lb	$1, 0($1)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	li16	$2, 43
	beq	$1, $2, $BB45_9
	nop
# %bb.5:
	j	$BB45_6
	nop
$BB45_6:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	li16	$2, 45
	bne	$1, $2, $BB45_10
	nop
# %bb.7:
	j	$BB45_8
	nop
$BB45_8:
	li16	$2, 1
	sw	$2, 28($fp)
	j	$BB45_9
	nop
$BB45_9:
	lw	$2, 36($fp)
	addiur2	$2, $2, 1
	sw	$2, 36($fp)
	j	$BB45_10
	nop
$BB45_10:
	j	$BB45_11
	nop
$BB45_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	lb	$4, 0($1)
	jal	isdigit
	nop
	beqzc	$2, $BB45_14
# %bb.12:                               #   in Loop: Header=BB45_11 Depth=1
	j	$BB45_13
	nop
$BB45_13:                               #   in Loop: Header=BB45_11 Depth=1
	lw	$2, 32($fp)
	sll16	$3, $2, 1
	sll16	$2, $2, 3
	addu16	$2, $2, $3
	lw	$3, 36($fp)
	addiur2	$4, $3, 1
	sw	$4, 36($fp)
	lb	$3, 0($3)
	subu16	$2, $2, $3
	addiu	$1, $2, 48
	sw	$1, 32($fp)
	j	$BB45_11
	nop
$BB45_14:
	lw	$1, 28($fp)
	beqzc	$1, $BB45_17
# %bb.15:
	j	$BB45_16
	nop
$BB45_16:
	lw	$1, 32($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB45_18
	nop
$BB45_17:
	lw	$3, 32($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	move	$1, $2
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB45_18
	nop
$BB45_18:
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	atoi
$func_end45:
	.size	atoi, ($func_end45)-atoi
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	2
	.type	atol,@function
	.set	micromips
	.set	nomips16
	.ent	atol
atol:                                   # @atol
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 36($fp)
	li16	$2, 0
	sw	$2, 32($fp)
	sw	$2, 28($fp)
	j	$BB46_1
	nop
$BB46_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	lb	$4, 0($1)
	jal	isspace
	nop
	beqzc	$2, $BB46_4
# %bb.2:                                #   in Loop: Header=BB46_1 Depth=1
	j	$BB46_3
	nop
$BB46_3:                                #   in Loop: Header=BB46_1 Depth=1
	lw	$2, 36($fp)
	addiur2	$2, $2, 1
	sw	$2, 36($fp)
	j	$BB46_1
	nop
$BB46_4:
	lw	$1, 36($fp)
	lb	$1, 0($1)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	li16	$2, 43
	beq	$1, $2, $BB46_9
	nop
# %bb.5:
	j	$BB46_6
	nop
$BB46_6:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	li16	$2, 45
	bne	$1, $2, $BB46_10
	nop
# %bb.7:
	j	$BB46_8
	nop
$BB46_8:
	li16	$2, 1
	sw	$2, 28($fp)
	j	$BB46_9
	nop
$BB46_9:
	lw	$2, 36($fp)
	addiur2	$2, $2, 1
	sw	$2, 36($fp)
	j	$BB46_10
	nop
$BB46_10:
	j	$BB46_11
	nop
$BB46_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	lb	$4, 0($1)
	jal	isdigit
	nop
	beqzc	$2, $BB46_14
# %bb.12:                               #   in Loop: Header=BB46_11 Depth=1
	j	$BB46_13
	nop
$BB46_13:                               #   in Loop: Header=BB46_11 Depth=1
	lw	$2, 32($fp)
	sll16	$3, $2, 1
	sll16	$2, $2, 3
	addu16	$2, $2, $3
	lw	$3, 36($fp)
	addiur2	$4, $3, 1
	sw	$4, 36($fp)
	lb	$3, 0($3)
	subu16	$2, $2, $3
	addiu	$1, $2, 48
	sw	$1, 32($fp)
	j	$BB46_11
	nop
$BB46_14:
	lw	$1, 28($fp)
	beqzc	$1, $BB46_17
# %bb.15:
	j	$BB46_16
	nop
$BB46_16:
	lw	$1, 32($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB46_18
	nop
$BB46_17:
	lw	$3, 32($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	move	$1, $2
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB46_18
	nop
$BB46_18:
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	atol
$func_end46:
	.size	atol, ($func_end46)-atol
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	2
	.type	atoll,@function
	.set	micromips
	.set	nomips16
	.ent	atoll
atoll:                                  # @atoll
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 44($fp)
	li16	$2, 0
	sw	$2, 36($fp)
	sw	$2, 32($fp)
	sw	$2, 28($fp)
	j	$BB47_1
	nop
$BB47_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 44($fp)
	lb	$4, 0($1)
	jal	isspace
	nop
	beqzc	$2, $BB47_4
# %bb.2:                                #   in Loop: Header=BB47_1 Depth=1
	j	$BB47_3
	nop
$BB47_3:                                #   in Loop: Header=BB47_1 Depth=1
	lw	$2, 44($fp)
	addiur2	$2, $2, 1
	sw	$2, 44($fp)
	j	$BB47_1
	nop
$BB47_4:
	lw	$1, 44($fp)
	lb	$1, 0($1)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	li16	$2, 43
	beq	$1, $2, $BB47_9
	nop
# %bb.5:
	j	$BB47_6
	nop
$BB47_6:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	li16	$2, 45
	bne	$1, $2, $BB47_10
	nop
# %bb.7:
	j	$BB47_8
	nop
$BB47_8:
	li16	$2, 1
	sw	$2, 28($fp)
	j	$BB47_9
	nop
$BB47_9:
	lw	$2, 44($fp)
	addiur2	$2, $2, 1
	sw	$2, 44($fp)
	j	$BB47_10
	nop
$BB47_10:
	j	$BB47_11
	nop
$BB47_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 44($fp)
	lb	$4, 0($1)
	jal	isdigit
	nop
	beqzc	$2, $BB47_14
# %bb.12:                               #   in Loop: Header=BB47_11 Depth=1
	j	$BB47_13
	nop
$BB47_13:                               #   in Loop: Header=BB47_11 Depth=1
	lw	$5, 36($fp)
	lw	$4, 32($fp)
	srl	$3, $4, 31
	sll16	$2, $5, 1
	or16	$3, $2
	srl	$2, $4, 29
	sll16	$5, $5, 3
	or16	$2, $5
	addu16	$2, $2, $3
	sll16	$3, $4, 1
	sll16	$4, $4, 3
	addu16	$3, $4, $3
	sltu	$4, $3, $4
	addu16	$2, $2, $4
	lw	$4, 44($fp)
	addiur2	$5, $4, 1
	sw	$5, 44($fp)
	lb	$1, 0($4)
	addiu	$4, $1, -48
	sra	$5, $4, 31
	subu16	$2, $2, $5
	sltu	$5, $3, $4
	subu16	$2, $2, $5
	subu16	$3, $3, $4
	sw	$3, 32($fp)
	sw	$2, 36($fp)
	j	$BB47_11
	nop
$BB47_14:
	lw	$1, 28($fp)
	beqzc	$1, $BB47_17
# %bb.15:
	j	$BB47_16
	nop
$BB47_16:
	lw	$1, 36($fp)
	lw	$2, 32($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB47_18
	nop
$BB47_17:
	lw	$4, 36($fp)
	lw	$5, 32($fp)
	li16	$3, 0
	subu16	$2, $3, $5
	sltu	$5, $zero, $5
	addu16	$4, $4, $5
	subu16	$3, $3, $4
	move	$1, $3
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB47_18
	nop
$BB47_18:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	atoll
$func_end47:
	.size	atoll, ($func_end47)-atoll
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	2
	.type	bsearch,@function
	.set	micromips
	.set	nomips16
	.ent	bsearch
bsearch:                                # @bsearch
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	lw	$1, 72($fp)
	sw	$4, 40($fp)
	sw	$5, 36($fp)
	sw	$6, 32($fp)
	sw	$7, 28($fp)
	j	$BB48_1
	nop
$BB48_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 32($fp)
	beqzc	$1, $BB48_12
# %bb.2:                                #   in Loop: Header=BB48_1 Depth=1
	j	$BB48_3
	nop
$BB48_3:                                #   in Loop: Header=BB48_1 Depth=1
	lw	$2, 36($fp)
	lw	$1, 28($fp)
	lw	$3, 32($fp)
	srl16	$3, $3, 1
	mul	$3, $1, $3
	addu16	$2, $2, $3
	sw	$2, 24($fp)
	lw	$25, 72($fp)
	lw	$4, 40($fp)
	lw	$5, 24($fp)
	jalr	$25
	nop
	sw	$2, 20($fp)
	lw	$1, 20($fp)
	bgez	$1, $BB48_6
	nop
# %bb.4:                                #   in Loop: Header=BB48_1 Depth=1
	j	$BB48_5
	nop
$BB48_5:                                #   in Loop: Header=BB48_1 Depth=1
	lw	$2, 32($fp)
	srl16	$2, $2, 1
	sw	$2, 32($fp)
	j	$BB48_11
	nop
$BB48_6:                                #   in Loop: Header=BB48_1 Depth=1
	lw	$1, 20($fp)
	blez	$1, $BB48_9
	nop
# %bb.7:                                #   in Loop: Header=BB48_1 Depth=1
	j	$BB48_8
	nop
$BB48_8:                                #   in Loop: Header=BB48_1 Depth=1
	lw	$2, 24($fp)
	lw	$3, 28($fp)
	addu16	$2, $2, $3
	sw	$2, 36($fp)
	lw	$3, 32($fp)
	srl16	$2, $3, 1
	not16	$2, $2
	addu16	$2, $2, $3
	sw	$2, 32($fp)
	j	$BB48_10
	nop
$BB48_9:
	lw	$1, 24($fp)
	sw	$1, 44($fp)
	j	$BB48_13
	nop
$BB48_10:                               #   in Loop: Header=BB48_1 Depth=1
	j	$BB48_11
	nop
$BB48_11:                               #   in Loop: Header=BB48_1 Depth=1
	j	$BB48_1
	nop
$BB48_12:
	li16	$2, 0
	sw	$2, 44($fp)
	j	$BB48_13
	nop
$BB48_13:
	lw	$2, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	bsearch
$func_end48:
	.size	bsearch, ($func_end48)-bsearch
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	2
	.type	bsearch_r,@function
	.set	micromips
	.set	nomips16
	.ent	bsearch_r
bsearch_r:                              # @bsearch_r
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	lw	$1, 84($fp)
	lw	$1, 80($fp)
	sw	$4, 48($fp)
	sw	$5, 44($fp)
	sw	$6, 40($fp)
	sw	$7, 36($fp)
	lw	$1, 44($fp)
	sw	$1, 32($fp)
	lw	$1, 40($fp)
	sw	$1, 28($fp)
	j	$BB49_1
	nop
$BB49_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	beqzc	$1, $BB49_11
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
	j	$BB49_3
	nop
$BB49_3:                                #   in Loop: Header=BB49_1 Depth=1
	lw	$2, 32($fp)
	lw	$1, 28($fp)
	sra	$1, $1, 1
	lw	$3, 36($fp)
	mul	$3, $1, $3
	addu16	$2, $2, $3
	sw	$2, 20($fp)
	lw	$25, 80($fp)
	lw	$4, 48($fp)
	lw	$5, 20($fp)
	lw	$6, 84($fp)
	jalr	$25
	nop
	sw	$2, 24($fp)
	lw	$1, 24($fp)
	bnezc	$1, $BB49_6
# %bb.4:
	j	$BB49_5
	nop
$BB49_5:
	lw	$1, 20($fp)
	sw	$1, 52($fp)
	j	$BB49_12
	nop
$BB49_6:                                #   in Loop: Header=BB49_1 Depth=1
	lw	$1, 24($fp)
	blez	$1, $BB49_9
	nop
# %bb.7:                                #   in Loop: Header=BB49_1 Depth=1
	j	$BB49_8
	nop
$BB49_8:                                #   in Loop: Header=BB49_1 Depth=1
	lw	$2, 20($fp)
	lw	$3, 36($fp)
	addu16	$2, $2, $3
	sw	$2, 32($fp)
	lw	$2, 28($fp)
	addiur2	$2, $2, -1
	sw	$2, 28($fp)
	j	$BB49_9
	nop
$BB49_9:                                #   in Loop: Header=BB49_1 Depth=1
	j	$BB49_10
	nop
$BB49_10:                               #   in Loop: Header=BB49_1 Depth=1
	lw	$1, 28($fp)
	sra	$1, $1, 1
	sw	$1, 28($fp)
	j	$BB49_1
	nop
$BB49_11:
	li16	$2, 0
	sw	$2, 52($fp)
	j	$BB49_12
	nop
$BB49_12:
	lw	$2, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	bsearch_r
$func_end49:
	.size	bsearch_r, ($func_end49)-bsearch_r
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	2
	.type	div,@function
	.set	micromips
	.set	nomips16
	.ent	div
div:                                    # @div
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	move	$2, $4
	sw	$5, 4($fp)
	sw	$6, 0($fp)
	lw	$3, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $3, $1
	teq	$1, $zero, 7
	mflo16	$3
	sw16	$3, 0($4)
	lw	$3, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $3, $1
	teq	$1, $zero, 7
	mfhi16	$3
	sw16	$3, 4($4)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	div
$func_end50:
	.size	div, ($func_end50)-div
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	2
	.type	imaxabs,@function
	.set	micromips
	.set	nomips16
	.ent	imaxabs
imaxabs:                                # @imaxabs
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 12($fp)
	sw	$4, 8($fp)
	lw	$2, 8($fp)
	lw	$3, 12($fp)
	slti	$1, $3, 0
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB51_3
# %bb.1:
	j	$BB51_2
	nop
$BB51_2:
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB51_4
	nop
$BB51_3:
	lw	$4, 12($fp)
	lw	$5, 8($fp)
	li16	$3, 0
	subu16	$2, $3, $5
	sltu	$5, $zero, $5
	addu16	$4, $4, $5
	subu16	$3, $3, $4
	move	$1, $3
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB51_4
	nop
$BB51_4:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	lw	$3, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	imaxabs
$func_end51:
	.size	imaxabs, ($func_end51)-imaxabs
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	2
	.type	imaxdiv,@function
	.set	micromips
	.set	nomips16
	.ent	imaxdiv
imaxdiv:                                # @imaxdiv
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)                     # 4-byte Folded Spill
	sw	$4, 24($fp)                     # 4-byte Folded Spill
	lw	$2, 76($fp)
	lw	$1, 72($fp)
                                        # kill: def $v1 killed $a3
                                        # kill: def $v1 killed $a2
	sw	$7, 44($fp)
	sw	$6, 40($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	lw	$4, 40($fp)
	lw	$5, 44($fp)
	lw	$6, 32($fp)
	lw	$7, 36($fp)
	jal	__divdi3
	nop
	lw	$4, 20($fp)                     # 4-byte Folded Reload
	nop
	sw16	$3, 4($4)
	sw16	$2, 0($4)
	lw	$4, 40($fp)
	lw	$5, 44($fp)
	lw	$6, 32($fp)
	lw	$7, 36($fp)
	jal	__moddi3
	nop
	lw	$4, 20($fp)                     # 4-byte Folded Reload
	move	$5, $2
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	sw	$5, 28($fp)                     # 4-byte Folded Spill
	move	$5, $3
	lw	$3, 28($fp)                     # 4-byte Folded Reload
	sw16	$5, 12($4)
	sw16	$3, 8($4)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	imaxdiv
$func_end52:
	.size	imaxdiv, ($func_end52)-imaxdiv
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	2
	.type	labs,@function
	.set	micromips
	.set	nomips16
	.ent	labs
labs:                                   # @labs
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	blez	$1, $BB53_3
	nop
# %bb.1:
	j	$BB53_2
	nop
$BB53_2:
	lw	$1, 4($fp)
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB53_4
	nop
$BB53_3:
	lw	$3, 4($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	move	$1, $2
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB53_4
	nop
$BB53_4:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	labs
$func_end53:
	.size	labs, ($func_end53)-labs
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	2
	.type	ldiv,@function
	.set	micromips
	.set	nomips16
	.ent	ldiv
ldiv:                                   # @ldiv
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	move	$2, $4
	sw	$5, 4($fp)
	sw	$6, 0($fp)
	lw	$3, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $3, $1
	teq	$1, $zero, 7
	mflo16	$3
	sw16	$3, 0($4)
	lw	$3, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $3, $1
	teq	$1, $zero, 7
	mfhi16	$3
	sw16	$3, 4($4)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	ldiv
$func_end54:
	.size	ldiv, ($func_end54)-ldiv
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	2
	.type	llabs,@function
	.set	micromips
	.set	nomips16
	.ent	llabs
llabs:                                  # @llabs
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 12($fp)
	sw	$4, 8($fp)
	lw	$2, 8($fp)
	lw	$3, 12($fp)
	slti	$1, $3, 0
	sltiu	$2, $2, 1
	movz	$1, $2, $3
	bnezc	$1, $BB55_3
# %bb.1:
	j	$BB55_2
	nop
$BB55_2:
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB55_4
	nop
$BB55_3:
	lw	$4, 12($fp)
	lw	$5, 8($fp)
	li16	$3, 0
	subu16	$2, $3, $5
	sltu	$5, $zero, $5
	addu16	$4, $4, $5
	subu16	$3, $3, $4
	move	$1, $3
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB55_4
	nop
$BB55_4:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	lw	$3, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	llabs
$func_end55:
	.size	llabs, ($func_end55)-llabs
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	2
	.type	lldiv,@function
	.set	micromips
	.set	nomips16
	.ent	lldiv
lldiv:                                  # @lldiv
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)                     # 4-byte Folded Spill
	sw	$4, 24($fp)                     # 4-byte Folded Spill
	lw	$2, 76($fp)
	lw	$1, 72($fp)
                                        # kill: def $v1 killed $a3
                                        # kill: def $v1 killed $a2
	sw	$7, 44($fp)
	sw	$6, 40($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	lw	$4, 40($fp)
	lw	$5, 44($fp)
	lw	$6, 32($fp)
	lw	$7, 36($fp)
	jal	__divdi3
	nop
	lw	$4, 20($fp)                     # 4-byte Folded Reload
	nop
	sw16	$3, 4($4)
	sw16	$2, 0($4)
	lw	$4, 40($fp)
	lw	$5, 44($fp)
	lw	$6, 32($fp)
	lw	$7, 36($fp)
	jal	__moddi3
	nop
	lw	$4, 20($fp)                     # 4-byte Folded Reload
	move	$5, $2
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	sw	$5, 28($fp)                     # 4-byte Folded Spill
	move	$5, $3
	lw	$3, 28($fp)                     # 4-byte Folded Reload
	sw16	$5, 12($4)
	sw16	$3, 8($4)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	lldiv
$func_end56:
	.size	lldiv, ($func_end56)-lldiv
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	2
	.type	wcschr,@function
	.set	micromips
	.set	nomips16
	.ent	wcschr
wcschr:                                 # @wcschr
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	j	$BB57_1
	nop
$BB57_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 12($fp)
	lw16	$2, 0($2)
	li16	$3, 0
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	beqzc	$2, $BB57_4
# %bb.2:                                #   in Loop: Header=BB57_1 Depth=1
	j	$BB57_3
	nop
$BB57_3:                                #   in Loop: Header=BB57_1 Depth=1
	lw	$2, 12($fp)
	lw16	$2, 0($2)
	lw	$1, 8($fp)
	xor	$1, $2, $1
	sltu	$2, $zero, $1
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	j	$BB57_4
	nop
$BB57_4:                                #   in Loop: Header=BB57_1 Depth=1
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB57_8
# %bb.5:                                #   in Loop: Header=BB57_1 Depth=1
	j	$BB57_6
	nop
$BB57_6:                                #   in Loop: Header=BB57_1 Depth=1
	j	$BB57_7
	nop
$BB57_7:                                #   in Loop: Header=BB57_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, 4
	sw	$2, 12($fp)
	j	$BB57_1
	nop
$BB57_8:
	lw	$2, 12($fp)
	lw16	$2, 0($2)
	beqzc	$2, $BB57_11
# %bb.9:
	j	$BB57_10
	nop
$BB57_10:
	lw	$1, 12($fp)
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB57_12
	nop
$BB57_11:
	li16	$2, 0
	move	$1, $2
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB57_12
	nop
$BB57_12:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	wcschr
$func_end57:
	.size	wcschr, ($func_end57)-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	2
	.type	wcscmp,@function
	.set	micromips
	.set	nomips16
	.ent	wcscmp
wcscmp:                                 # @wcscmp
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	j	$BB58_1
	nop
$BB58_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 12($fp)
	lw16	$2, 0($2)
	lw	$3, 8($fp)
	lw16	$3, 0($3)
	li16	$4, 0
	sw	$4, 4($fp)                      # 4-byte Folded Spill
	bne	$2, $3, $BB58_6
	nop
# %bb.2:                                #   in Loop: Header=BB58_1 Depth=1
	j	$BB58_3
	nop
$BB58_3:                                #   in Loop: Header=BB58_1 Depth=1
	lw	$2, 12($fp)
	lw16	$2, 0($2)
	li16	$3, 0
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	beqzc	$2, $BB58_6
# %bb.4:                                #   in Loop: Header=BB58_1 Depth=1
	j	$BB58_5
	nop
$BB58_5:                                #   in Loop: Header=BB58_1 Depth=1
	lw	$2, 8($fp)
	lw16	$2, 0($2)
	sltu	$2, $zero, $2
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	j	$BB58_6
	nop
$BB58_6:                                #   in Loop: Header=BB58_1 Depth=1
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB58_10
# %bb.7:                                #   in Loop: Header=BB58_1 Depth=1
	j	$BB58_8
	nop
$BB58_8:                                #   in Loop: Header=BB58_1 Depth=1
	j	$BB58_9
	nop
$BB58_9:                                #   in Loop: Header=BB58_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, 4
	sw	$2, 12($fp)
	lw	$2, 8($fp)
	addiur2	$2, $2, 4
	sw	$2, 8($fp)
	j	$BB58_1
	nop
$BB58_10:
	lw	$2, 12($fp)
	lw16	$2, 0($2)
	lw	$3, 8($fp)
	lw16	$3, 0($3)
	slt	$1, $2, $3
	beqzc	$1, $BB58_13
# %bb.11:
	j	$BB58_12
	nop
$BB58_12:
	li16	$2, -1
	move	$1, $2
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB58_14
	nop
$BB58_13:
	lw	$2, 12($fp)
	lw16	$3, 0($2)
	lw	$2, 8($fp)
	lw16	$2, 0($2)
	slt	$1, $2, $3
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB58_14
	nop
$BB58_14:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	wcscmp
$func_end58:
	.size	wcscmp, ($func_end58)-wcscmp
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	2
	.type	wcscpy,@function
	.set	micromips
	.set	nomips16
	.ent	wcscpy
wcscpy:                                 # @wcscpy
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	lw	$1, 12($fp)
	sw	$1, 4($fp)
	j	$BB59_1
	nop
$BB59_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($fp)
	addiur2	$3, $2, 4
	sw	$3, 8($fp)
	lw16	$2, 0($2)
	lw	$3, 12($fp)
	addiur2	$4, $3, 4
	sw	$4, 12($fp)
	sw16	$2, 0($3)
	beqzc	$2, $BB59_4
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	j	$BB59_3
	nop
$BB59_3:                                #   in Loop: Header=BB59_1 Depth=1
	j	$BB59_1
	nop
$BB59_4:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	wcscpy
$func_end59:
	.size	wcscpy, ($func_end59)-wcscpy
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	2
	.type	wcslen,@function
	.set	micromips
	.set	nomips16
	.ent	wcslen
wcslen:                                 # @wcslen
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	j	$BB60_1
	nop
$BB60_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 4($fp)
	lw16	$2, 0($2)
	beqzc	$2, $BB60_5
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	j	$BB60_3
	nop
$BB60_3:                                #   in Loop: Header=BB60_1 Depth=1
	j	$BB60_4
	nop
$BB60_4:                                #   in Loop: Header=BB60_1 Depth=1
	lw	$2, 4($fp)
	addiur2	$2, $2, 4
	sw	$2, 4($fp)
	j	$BB60_1
	nop
$BB60_5:
	lw	$2, 4($fp)
	lw	$3, 0($fp)
	subu16	$2, $2, $3
	sra	$2, $2, 2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	wcslen
$func_end60:
	.size	wcslen, ($func_end60)-wcslen
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	2
	.type	wcsncmp,@function
	.set	micromips
	.set	nomips16
	.ent	wcsncmp
wcsncmp:                                # @wcsncmp
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	j	$BB61_1
	nop
$BB61_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	li16	$2, 0
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB61_8
# %bb.2:                                #   in Loop: Header=BB61_1 Depth=1
	j	$BB61_3
	nop
$BB61_3:                                #   in Loop: Header=BB61_1 Depth=1
	lw	$2, 20($fp)
	lw16	$2, 0($2)
	lw	$3, 16($fp)
	lw16	$3, 0($3)
	li16	$4, 0
	sw	$4, 8($fp)                      # 4-byte Folded Spill
	bne	$2, $3, $BB61_8
	nop
# %bb.4:                                #   in Loop: Header=BB61_1 Depth=1
	j	$BB61_5
	nop
$BB61_5:                                #   in Loop: Header=BB61_1 Depth=1
	lw	$2, 20($fp)
	lw16	$2, 0($2)
	li16	$3, 0
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	beqzc	$2, $BB61_8
# %bb.6:                                #   in Loop: Header=BB61_1 Depth=1
	j	$BB61_7
	nop
$BB61_7:                                #   in Loop: Header=BB61_1 Depth=1
	lw	$2, 16($fp)
	lw16	$2, 0($2)
	sltu	$2, $zero, $2
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	j	$BB61_8
	nop
$BB61_8:                                #   in Loop: Header=BB61_1 Depth=1
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB61_12
# %bb.9:                                #   in Loop: Header=BB61_1 Depth=1
	j	$BB61_10
	nop
$BB61_10:                               #   in Loop: Header=BB61_1 Depth=1
	j	$BB61_11
	nop
$BB61_11:                               #   in Loop: Header=BB61_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	lw	$2, 20($fp)
	addiur2	$2, $2, 4
	sw	$2, 20($fp)
	lw	$2, 16($fp)
	addiur2	$2, $2, 4
	sw	$2, 16($fp)
	j	$BB61_1
	nop
$BB61_12:
	lw	$1, 12($fp)
	beqzc	$1, $BB61_19
# %bb.13:
	j	$BB61_14
	nop
$BB61_14:
	lw	$2, 20($fp)
	lw16	$2, 0($2)
	lw	$3, 16($fp)
	lw16	$3, 0($3)
	slt	$1, $2, $3
	beqzc	$1, $BB61_17
# %bb.15:
	j	$BB61_16
	nop
$BB61_16:
	li16	$2, -1
	move	$1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB61_18
	nop
$BB61_17:
	lw	$2, 20($fp)
	lw16	$3, 0($2)
	lw	$2, 16($fp)
	lw16	$2, 0($2)
	slt	$1, $2, $3
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB61_18
	nop
$BB61_18:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	nop
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB61_20
	nop
$BB61_19:
	li16	$2, 0
	move	$1, $2
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB61_20
	nop
$BB61_20:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	wcsncmp
$func_end61:
	.size	wcsncmp, ($func_end61)-wcsncmp
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	2
	.type	wmemchr,@function
	.set	micromips
	.set	nomips16
	.ent	wmemchr
wmemchr:                                # @wmemchr
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	j	$BB62_1
	nop
$BB62_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	li16	$2, 0
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB62_4
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	j	$BB62_3
	nop
$BB62_3:                                #   in Loop: Header=BB62_1 Depth=1
	lw	$2, 20($fp)
	lw16	$2, 0($2)
	lw	$1, 16($fp)
	xor	$1, $2, $1
	sltu	$2, $zero, $1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	j	$BB62_4
	nop
$BB62_4:                                #   in Loop: Header=BB62_1 Depth=1
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB62_8
# %bb.5:                                #   in Loop: Header=BB62_1 Depth=1
	j	$BB62_6
	nop
$BB62_6:                                #   in Loop: Header=BB62_1 Depth=1
	j	$BB62_7
	nop
$BB62_7:                                #   in Loop: Header=BB62_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	lw	$2, 20($fp)
	addiur2	$2, $2, 4
	sw	$2, 20($fp)
	j	$BB62_1
	nop
$BB62_8:
	lw	$1, 12($fp)
	beqzc	$1, $BB62_11
# %bb.9:
	j	$BB62_10
	nop
$BB62_10:
	lw	$1, 20($fp)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB62_12
	nop
$BB62_11:
	li16	$2, 0
	move	$1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB62_12
	nop
$BB62_12:
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	wmemchr
$func_end62:
	.size	wmemchr, ($func_end62)-wmemchr
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	2
	.type	wmemcmp,@function
	.set	micromips
	.set	nomips16
	.ent	wmemcmp
wmemcmp:                                # @wmemcmp
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	j	$BB63_1
	nop
$BB63_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	li16	$2, 0
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB63_4
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	j	$BB63_3
	nop
$BB63_3:                                #   in Loop: Header=BB63_1 Depth=1
	lw	$2, 20($fp)
	lw16	$2, 0($2)
	lw	$3, 16($fp)
	lw16	$3, 0($3)
	xor	$1, $2, $3
	sltiu	$2, $1, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	j	$BB63_4
	nop
$BB63_4:                                #   in Loop: Header=BB63_1 Depth=1
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB63_8
# %bb.5:                                #   in Loop: Header=BB63_1 Depth=1
	j	$BB63_6
	nop
$BB63_6:                                #   in Loop: Header=BB63_1 Depth=1
	j	$BB63_7
	nop
$BB63_7:                                #   in Loop: Header=BB63_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	lw	$2, 20($fp)
	addiur2	$2, $2, 4
	sw	$2, 20($fp)
	lw	$2, 16($fp)
	addiur2	$2, $2, 4
	sw	$2, 16($fp)
	j	$BB63_1
	nop
$BB63_8:
	lw	$1, 12($fp)
	beqzc	$1, $BB63_15
# %bb.9:
	j	$BB63_10
	nop
$BB63_10:
	lw	$2, 20($fp)
	lw16	$2, 0($2)
	lw	$3, 16($fp)
	lw16	$3, 0($3)
	slt	$1, $2, $3
	beqzc	$1, $BB63_13
# %bb.11:
	j	$BB63_12
	nop
$BB63_12:
	li16	$2, -1
	move	$1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB63_14
	nop
$BB63_13:
	lw	$2, 20($fp)
	lw16	$3, 0($2)
	lw	$2, 16($fp)
	lw16	$2, 0($2)
	slt	$1, $2, $3
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB63_14
	nop
$BB63_14:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	nop
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB63_16
	nop
$BB63_15:
	li16	$2, 0
	move	$1, $2
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB63_16
	nop
$BB63_16:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	wmemcmp
$func_end63:
	.size	wmemcmp, ($func_end63)-wmemcmp
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	2
	.type	wmemcpy,@function
	.set	micromips
	.set	nomips16
	.ent	wmemcpy
wmemcpy:                                # @wmemcpy
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	sw	$6, 4($fp)
	lw	$1, 12($fp)
	sw	$1, 0($fp)
	j	$BB64_1
	nop
$BB64_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 4($fp)
	addiur2	$3, $2, -1
	sw	$3, 4($fp)
	beqzc	$2, $BB64_4
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	j	$BB64_3
	nop
$BB64_3:                                #   in Loop: Header=BB64_1 Depth=1
	lw	$2, 8($fp)
	addiur2	$3, $2, 4
	sw	$3, 8($fp)
	lw16	$2, 0($2)
	lw	$3, 12($fp)
	addiur2	$4, $3, 4
	sw	$4, 12($fp)
	sw16	$2, 0($3)
	j	$BB64_1
	nop
$BB64_4:
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	wmemcpy
$func_end64:
	.size	wmemcpy, ($func_end64)-wmemcpy
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	2
	.type	wmemmove,@function
	.set	micromips
	.set	nomips16
	.ent	wmemmove
wmemmove:                               # @wmemmove
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 16($fp)
	sw	$5, 12($fp)
	sw	$6, 8($fp)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	lw	$1, 16($fp)
	lw	$2, 12($fp)
	bne	$1, $2, $BB65_3
	nop
# %bb.1:
	j	$BB65_2
	nop
$BB65_2:
	lw	$1, 16($fp)
	sw	$1, 20($fp)
	j	$BB65_16
	nop
$BB65_3:
	lw	$2, 16($fp)
	lw	$3, 12($fp)
	subu16	$2, $2, $3
	lw	$3, 8($fp)
	sll16	$3, $3, 2
	sltu	$1, $2, $3
	beqzc	$1, $BB65_10
# %bb.4:
	j	$BB65_5
	nop
$BB65_5:
	j	$BB65_6
	nop
$BB65_6:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($fp)
	addiur2	$3, $2, -1
	sw	$3, 8($fp)
	beqzc	$2, $BB65_9
# %bb.7:                                #   in Loop: Header=BB65_6 Depth=1
	j	$BB65_8
	nop
$BB65_8:                                #   in Loop: Header=BB65_6 Depth=1
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	sll16	$4, $3, 2
	addu16	$2, $2, $4
	lw16	$2, 0($2)
	lw	$3, 16($fp)
	addu16	$3, $3, $4
	sw16	$2, 0($3)
	j	$BB65_6
	nop
$BB65_9:
	j	$BB65_15
	nop
$BB65_10:
	j	$BB65_11
	nop
$BB65_11:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 8($fp)
	addiur2	$3, $2, -1
	sw	$3, 8($fp)
	beqzc	$2, $BB65_14
# %bb.12:                               #   in Loop: Header=BB65_11 Depth=1
	j	$BB65_13
	nop
$BB65_13:                               #   in Loop: Header=BB65_11 Depth=1
	lw	$2, 12($fp)
	addiur2	$3, $2, 4
	sw	$3, 12($fp)
	lw16	$2, 0($2)
	lw	$3, 16($fp)
	addiur2	$4, $3, 4
	sw	$4, 16($fp)
	sw16	$2, 0($3)
	j	$BB65_11
	nop
$BB65_14:
	j	$BB65_15
	nop
$BB65_15:
	lw	$1, 4($fp)
	sw	$1, 20($fp)
	j	$BB65_16
	nop
$BB65_16:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	wmemmove
$func_end65:
	.size	wmemmove, ($func_end65)-wmemmove
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	2
	.type	wmemset,@function
	.set	micromips
	.set	nomips16
	.ent	wmemset
wmemset:                                # @wmemset
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	sw	$6, 4($fp)
	lw	$1, 12($fp)
	sw	$1, 0($fp)
	j	$BB66_1
	nop
$BB66_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 4($fp)
	addiur2	$3, $2, -1
	sw	$3, 4($fp)
	beqzc	$2, $BB66_4
# %bb.2:                                #   in Loop: Header=BB66_1 Depth=1
	j	$BB66_3
	nop
$BB66_3:                                #   in Loop: Header=BB66_1 Depth=1
	lw	$2, 8($fp)
	lw	$3, 12($fp)
	addiur2	$4, $3, 4
	sw	$4, 12($fp)
	sw16	$2, 0($3)
	j	$BB66_1
	nop
$BB66_4:
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	wmemset
$func_end66:
	.size	wmemset, ($func_end66)-wmemset
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	2
	.type	bcopy,@function
	.set	micromips
	.set	nomips16
	.ent	bcopy
bcopy:                                  # @bcopy
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	lw	$1, 8($fp)
	lw	$2, 4($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB67_8
# %bb.1:
	j	$BB67_2
	nop
$BB67_2:
	lw	$3, 12($fp)
	lw	$2, 8($fp)
	addu16	$2, $2, $3
	sw	$2, 8($fp)
	lw	$3, 12($fp)
	lw	$2, 4($fp)
	addu16	$2, $2, $3
	sw	$2, 4($fp)
	j	$BB67_3
	nop
$BB67_3:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB67_7
# %bb.4:                                #   in Loop: Header=BB67_3 Depth=1
	j	$BB67_5
	nop
$BB67_5:                                #   in Loop: Header=BB67_3 Depth=1
	lw	$2, 8($fp)
	addiur2	$3, $2, -1
	sw	$3, 8($fp)
	lbu	$1, -1($2)
	lw	$2, 4($fp)
	addiur2	$3, $2, -1
	sw	$3, 4($fp)
	sb	$1, -1($2)
	j	$BB67_6
	nop
$BB67_6:                                #   in Loop: Header=BB67_3 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	j	$BB67_3
	nop
$BB67_7:
	j	$BB67_17
	nop
$BB67_8:
	lw	$1, 8($fp)
	lw	$2, 4($fp)
	beq	$1, $2, $BB67_16
	nop
# %bb.9:
	j	$BB67_10
	nop
$BB67_10:
	j	$BB67_11
	nop
$BB67_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB67_15
# %bb.12:                               #   in Loop: Header=BB67_11 Depth=1
	j	$BB67_13
	nop
$BB67_13:                               #   in Loop: Header=BB67_11 Depth=1
	lw	$2, 8($fp)
	addiur2	$3, $2, 1
	sw	$3, 8($fp)
	lbu	$1, 0($2)
	lw	$2, 4($fp)
	addiur2	$3, $2, 1
	sw	$3, 4($fp)
	sb	$1, 0($2)
	j	$BB67_14
	nop
$BB67_14:                               #   in Loop: Header=BB67_11 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	j	$BB67_11
	nop
$BB67_15:
	j	$BB67_16
	nop
$BB67_16:
	j	$BB67_17
	nop
$BB67_17:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	bcopy
$func_end67:
	.size	bcopy, ($func_end67)-bcopy
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	2
	.type	rotl64,@function
	.set	micromips
	.set	nomips16
	.ent	rotl64
rotl64:                                 # @rotl64
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 36($fp)
	sw	$4, 32($fp)
	sw	$6, 28($fp)
	lw	$5, 32($fp)
	lw	$3, 36($fp)
	lw	$6, 28($fp)
	sllv	$2, $3, $6
	xori	$1, $6, 31
	srl16	$4, $5, 1
	srlv	$4, $4, $1
	or16	$4, $2
	sllv	$2, $5, $6
	andi16	$7, $6, 32
	movn	$4, $2, $7
	sw	$4, 4($fp)                      # 4-byte Folded Spill
	li16	$4, 0
	movn	$2, $4, $7
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	li16	$2, 64
	subu16	$2, $2, $6
	srlv	$5, $5, $2
	xori	$1, $2, 31
	sll16	$6, $3, 1
	sllv	$6, $6, $1
	or16	$5, $6
	sw	$5, 12($fp)                     # 4-byte Folded Spill
	srlv	$3, $3, $2
	sw	$3, 16($fp)                     # 4-byte Folded Spill
	andi16	$2, $2, 32
	sw	$4, 20($fp)                     # 4-byte Folded Spill
	sw	$3, 24($fp)                     # 4-byte Folded Spill
	bnezc	$2, $BB68_2
# %bb.1:
	lw	$2, 12($fp)                     # 4-byte Folded Reload
	lw	$3, 16($fp)                     # 4-byte Folded Reload
	nop
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	sw	$2, 24($fp)                     # 4-byte Folded Spill
$BB68_2:
	lw	$4, 8($fp)                      # 4-byte Folded Reload
	lw	$5, 4($fp)                      # 4-byte Folded Reload
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	or16	$3, $5
	or16	$2, $4
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	rotl64
$func_end68:
	.size	rotl64, ($func_end68)-rotl64
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	2
	.type	rotr64,@function
	.set	micromips
	.set	nomips16
	.ent	rotr64
rotr64:                                 # @rotr64
	.frame	$fp,64,$ra
	.mask 	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	sw	$16, 52($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 44($fp)
	sw	$4, 40($fp)
	sw	$6, 36($fp)
	lw	$3, 44($fp)
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	lw	$4, 40($fp)
	sw	$4, 8($fp)                      # 4-byte Folded Spill
	lw	$2, 36($fp)
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	srlv	$4, $4, $2
	xori	$1, $2, 31
	sll16	$5, $3, 1
	sllv	$5, $5, $1
	or16	$4, $5
	sw	$4, 16($fp)                     # 4-byte Folded Spill
	srlv	$3, $3, $2
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	andi16	$2, $2, 32
	li16	$4, 0
	sw	$4, 24($fp)                     # 4-byte Folded Spill
	sw	$4, 28($fp)                     # 4-byte Folded Spill
	sw	$3, 32($fp)                     # 4-byte Folded Spill
	bnezc	$2, $BB69_2
# %bb.1:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	nop
	sw	$3, 28($fp)                     # 4-byte Folded Spill
	sw	$2, 32($fp)                     # 4-byte Folded Spill
$BB69_2:
	lw	$6, 24($fp)                     # 4-byte Folded Reload
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	lw	$3, 4($fp)                      # 4-byte Folded Reload
	lw	$16, 12($fp)                    # 4-byte Folded Reload
	lw	$4, 28($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	li16	$7, 64
	subu16	$7, $7, $16
	sllv	$16, $3, $7
	xori	$1, $7, 31
	srl16	$3, $2, 1
	srlv	$3, $3, $1
	or16	$3, $16
	sllv	$2, $2, $7
	andi16	$7, $7, 32
	movn	$3, $2, $7
	movn	$2, $6, $7
	or16	$2, $5
	or16	$3, $4
	move	$sp, $fp
	lw	$16, 52($sp)                    # 4-byte Folded Reload
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	rotr64
$func_end69:
	.size	rotr64, ($func_end69)-rotr64
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	2
	.type	rotl32,@function
	.set	micromips
	.set	nomips16
	.ent	rotl32
rotl32:                                 # @rotl32
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lw	$1, 4($fp)
	lw	$4, 0($fp)
	sllv	$3, $1, $4
	li16	$2, 32
	subu16	$2, $2, $4
	srlv	$2, $1, $2
	or16	$2, $3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	rotl32
$func_end70:
	.size	rotl32, ($func_end70)-rotl32
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	2
	.type	rotr32,@function
	.set	micromips
	.set	nomips16
	.ent	rotr32
rotr32:                                 # @rotr32
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lw	$1, 4($fp)
	lw	$4, 0($fp)
	srlv	$3, $1, $4
	li16	$2, 32
	subu16	$2, $2, $4
	sllv	$2, $1, $2
	or16	$2, $3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	rotr32
$func_end71:
	.size	rotr32, ($func_end71)-rotr32
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	2
	.type	rotl_sz,@function
	.set	micromips
	.set	nomips16
	.ent	rotl_sz
rotl_sz:                                # @rotl_sz
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lw	$1, 4($fp)
	lw	$4, 0($fp)
	sllv	$3, $1, $4
	li16	$2, 32
	subu16	$2, $2, $4
	srlv	$2, $1, $2
	or16	$2, $3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	rotl_sz
$func_end72:
	.size	rotl_sz, ($func_end72)-rotl_sz
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	2
	.type	rotr_sz,@function
	.set	micromips
	.set	nomips16
	.ent	rotr_sz
rotr_sz:                                # @rotr_sz
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lw	$1, 4($fp)
	lw	$4, 0($fp)
	srlv	$3, $1, $4
	li16	$2, 32
	subu16	$2, $2, $4
	sllv	$2, $1, $2
	or16	$2, $3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	rotr_sz
$func_end73:
	.size	rotr_sz, ($func_end73)-rotr_sz
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	2
	.type	rotl16,@function
	.set	micromips
	.set	nomips16
	.ent	rotl16
rotl16:                                 # @rotl16
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sh	$4, 6($fp)
	sw	$5, 0($fp)
	lhu	$1, 6($fp)
	lw	$4, 0($fp)
	sllv	$3, $1, $4
	li16	$2, 16
	subu16	$2, $2, $4
	srlv	$2, $1, $2
	or16	$2, $3
	andi16	$2, $2, 65535
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	rotl16
$func_end74:
	.size	rotl16, ($func_end74)-rotl16
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	2
	.type	rotr16,@function
	.set	micromips
	.set	nomips16
	.ent	rotr16
rotr16:                                 # @rotr16
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sh	$4, 6($fp)
	sw	$5, 0($fp)
	lhu	$1, 6($fp)
	lw	$4, 0($fp)
	srlv	$3, $1, $4
	li16	$2, 16
	subu16	$2, $2, $4
	sllv	$2, $1, $2
	or16	$2, $3
	andi16	$2, $2, 65535
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	rotr16
$func_end75:
	.size	rotr16, ($func_end75)-rotr16
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	2
	.type	rotl8,@function
	.set	micromips
	.set	nomips16
	.ent	rotl8
rotl8:                                  # @rotl8
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sb	$4, 7($fp)
	sw	$5, 0($fp)
	lbu	$1, 7($fp)
	lw	$4, 0($fp)
	sllv	$3, $1, $4
	li16	$2, 8
	subu16	$2, $2, $4
	srlv	$2, $1, $2
	or16	$2, $3
	andi16	$2, $2, 255
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	rotl8
$func_end76:
	.size	rotl8, ($func_end76)-rotl8
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	2
	.type	rotr8,@function
	.set	micromips
	.set	nomips16
	.ent	rotr8
rotr8:                                  # @rotr8
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sb	$4, 7($fp)
	sw	$5, 0($fp)
	lbu	$1, 7($fp)
	lw	$4, 0($fp)
	srlv	$3, $1, $4
	li16	$2, 8
	subu16	$2, $2, $4
	sllv	$2, $1, $2
	or16	$2, $3
	andi16	$2, $2, 255
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	rotr8
$func_end77:
	.size	rotr8, ($func_end77)-rotr8
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	2
	.type	bswap_16,@function
	.set	micromips
	.set	nomips16
	.ent	bswap_16
bswap_16:                               # @bswap_16
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sh	$4, 6($fp)
	addiu	$1, $zero, 255
	sh	$1, 4($fp)
	lhu	$4, 6($fp)
	lhu	$2, 4($fp)
	sll16	$3, $2, 8
	and16	$3, $4
	srl16	$3, $3, 8
	and16	$2, $4
	sll16	$2, $2, 8
	or16	$2, $3
	andi16	$2, $2, 65535
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	bswap_16
$func_end78:
	.size	bswap_16, ($func_end78)-bswap_16
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	2
	.type	bswap_32,@function
	.set	micromips
	.set	nomips16
	.ent	bswap_32
bswap_32:                               # @bswap_32
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	addiu	$1, $zero, 255
	sw	$1, 0($fp)
	lw	$4, 4($fp)
	lw	$2, 0($fp)
	sll	$3, $2, 24
	and16	$3, $4
	srl	$3, $3, 24
	sll	$6, $2, 16
	move	$5, $6
	and16	$5, $4
	srl16	$5, $5, 8
	or16	$5, $3
	sll16	$3, $4, 8
	and16	$3, $6
	or16	$3, $5
	and16	$2, $4
	sll	$2, $2, 24
	or16	$2, $3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	bswap_32
$func_end79:
	.size	bswap_32, ($func_end79)-bswap_32
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	2
	.type	bswap_64,@function
	.set	micromips
	.set	nomips16
	.ent	bswap_64
bswap_64:                               # @bswap_64
	.frame	$fp,40,$ra
	.mask 	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	sw	$17, 28($sp)                    # 4-byte Folded Spill
	sw	$16, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 20($fp)
	sw	$4, 16($fp)
	li16	$2, 0
	sw	$2, 12($fp)
	addiu	$1, $zero, 255
	sw	$1, 8($fp)
	lw	$5, 16($fp)
	lw	$17, 20($fp)
	lw	$3, 8($fp)
	sll	$2, $3, 24
	and16	$2, $17
	srl	$2, $2, 24
	sll	$7, $3, 16
	move	$4, $7
	and16	$4, $17
	srl16	$4, $4, 8
	or16	$4, $2
	sll16	$16, $3, 8
	move	$2, $16
	and16	$2, $17
	srl	$6, $2, 24
	sw	$6, 0($fp)                      # 4-byte Folded Spill
	sll16	$2, $2, 8
	or16	$2, $4
	move	$4, $3
	and16	$4, $17
	srl16	$6, $4, 8
	sll	$4, $4, 24
	or16	$4, $2
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	sw	$4, 4($fp)                      # 4-byte Folded Spill
	or16	$6, $2
	srl	$4, $5, 24
	sll16	$2, $17, 8
	or16	$4, $2
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	and16	$4, $3
	or16	$4, $6
	srl16	$6, $5, 8
	sll	$17, $17, 24
	or16	$6, $17
	and16	$6, $16
	or16	$6, $4
	sll16	$4, $5, 8
	and16	$4, $7
	or16	$4, $6
	and16	$3, $5
	sll	$3, $3, 24
	or16	$3, $4
	move	$sp, $fp
	lw	$16, 24($sp)                    # 4-byte Folded Reload
	lw	$17, 28($sp)                    # 4-byte Folded Reload
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	bswap_64
$func_end80:
	.size	bswap_64, ($func_end80)-bswap_64
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	2
	.type	ffs,@function
	.set	micromips
	.set	nomips16
	.ent	ffs
ffs:                                    # @ffs
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 8($fp)
	li16	$2, 0
	sw	$2, 4($fp)
	j	$BB81_1
	nop
$BB81_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	sltiu	$1, $1, 32
	beqzc	$1, $BB81_8
# %bb.2:                                #   in Loop: Header=BB81_1 Depth=1
	j	$BB81_3
	nop
$BB81_3:                                #   in Loop: Header=BB81_1 Depth=1
	lw	$1, 8($fp)
	lw	$2, 4($fp)
	srlv	$2, $1, $2
	andi16	$2, $2, 1
	beqzc	$2, $BB81_6
# %bb.4:
	j	$BB81_5
	nop
$BB81_5:
	lw	$2, 4($fp)
	addiur2	$2, $2, 1
	sw	$2, 12($fp)
	j	$BB81_9
	nop
$BB81_6:                                #   in Loop: Header=BB81_1 Depth=1
	j	$BB81_7
	nop
$BB81_7:                                #   in Loop: Header=BB81_1 Depth=1
	lw	$2, 4($fp)
	addiur2	$2, $2, 1
	sw	$2, 4($fp)
	j	$BB81_1
	nop
$BB81_8:
	li16	$2, 0
	sw	$2, 12($fp)
	j	$BB81_9
	nop
$BB81_9:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	ffs
$func_end81:
	.size	ffs, ($func_end81)-ffs
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	2
	.type	libiberty_ffs,@function
	.set	micromips
	.set	nomips16
	.ent	libiberty_ffs
libiberty_ffs:                          # @libiberty_ffs
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 8($fp)
	lw	$1, 8($fp)
	bnezc	$1, $BB82_3
# %bb.1:
	j	$BB82_2
	nop
$BB82_2:
	li16	$2, 0
	sw	$2, 12($fp)
	j	$BB82_9
	nop
$BB82_3:
	li16	$2, 1
	sw	$2, 4($fp)
	j	$BB82_4
	nop
$BB82_4:                                # =>This Inner Loop Header: Depth=1
	lbu	$2, 8($fp)
	andi16	$2, $2, 1
	bnezc	$2, $BB82_8
# %bb.5:                                #   in Loop: Header=BB82_4 Depth=1
	j	$BB82_6
	nop
$BB82_6:                                #   in Loop: Header=BB82_4 Depth=1
	lw	$1, 8($fp)
	sra	$1, $1, 1
	sw	$1, 8($fp)
	j	$BB82_7
	nop
$BB82_7:                                #   in Loop: Header=BB82_4 Depth=1
	lw	$2, 4($fp)
	addiur2	$2, $2, 1
	sw	$2, 4($fp)
	j	$BB82_4
	nop
$BB82_8:
	lw	$1, 4($fp)
	sw	$1, 12($fp)
	j	$BB82_9
	nop
$BB82_9:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	libiberty_ffs
$func_end82:
	.size	libiberty_ffs, ($func_end82)-libiberty_ffs
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	2
	.type	gl_isinff,@function
	.set	micromips
	.set	nomips16
	.ent	gl_isinff
gl_isinff:                              # @gl_isinff
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sw	$4, 20($fp)
	lw	$4, 20($fp)
	lui	$1, 65407
	ori	$5, $1, 65535
	jal	__ltsf2
	nop
	li16	$3, 1
	sw	$3, 16($fp)                     # 4-byte Folded Spill
	bltz	$2, $BB83_3
	nop
# %bb.1:
	j	$BB83_2
	nop
$BB83_2:
	lw	$4, 20($fp)
	lui	$1, 32639
	ori	$5, $1, 65535
	jal	__gtsf2
	nop
	move	$1, $2
	li16	$2, 0
	slt	$2, $2, $1
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	j	$BB83_3
	nop
$BB83_3:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	gl_isinff
$func_end83:
	.size	gl_isinff, ($func_end83)-gl_isinff
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	2
	.type	gl_isinfd,@function
	.set	micromips
	.set	nomips16
	.ent	gl_isinfd
gl_isinfd:                              # @gl_isinfd
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lui	$1, 65519
	ori	$7, $1, 65535
	li16	$6, -1
	jal	__ltdf2
	nop
	li16	$3, 1
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	bltz	$2, $BB84_3
	nop
# %bb.1:
	j	$BB84_2
	nop
$BB84_2:
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lui	$1, 32751
	ori	$7, $1, 65535
	li16	$6, -1
	jal	__gtdf2
	nop
	move	$1, $2
	li16	$2, 0
	slt	$2, $2, $1
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	j	$BB84_3
	nop
$BB84_3:
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	gl_isinfd
$func_end84:
	.size	gl_isinfd, ($func_end84)-gl_isinfd
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	2
	.type	gl_isinfl,@function
	.set	micromips
	.set	nomips16
	.ent	gl_isinfl
gl_isinfl:                              # @gl_isinfl
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lui	$1, 65519
	ori	$7, $1, 65535
	li16	$6, -1
	jal	__ltdf2
	nop
	li16	$3, 1
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	bltz	$2, $BB85_3
	nop
# %bb.1:
	j	$BB85_2
	nop
$BB85_2:
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lui	$1, 32751
	ori	$7, $1, 65535
	li16	$6, -1
	jal	__gtdf2
	nop
	move	$1, $2
	li16	$2, 0
	slt	$2, $2, $1
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	j	$BB85_3
	nop
$BB85_3:
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	gl_isinfl
$func_end85:
	.size	gl_isinfl, ($func_end85)-gl_isinfl
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	2
	.type	_Qp_itoq,@function
	.set	micromips
	.set	nomips16
	.ent	_Qp_itoq
_Qp_itoq:                               # @_Qp_itoq
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	lw	$4, 16($fp)
	jal	__floatsidf
	nop
	move	$4, $3
	lw	$3, 20($fp)
	sw16	$4, 4($3)
	sw16	$2, 0($3)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	_Qp_itoq
$func_end86:
	.size	_Qp_itoq, ($func_end86)-_Qp_itoq
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	2
	.type	ldexpf,@function
	.set	micromips
	.set	nomips16
	.ent	ldexpf
ldexpf:                                 # @ldexpf
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	lw	$3, 28($fp)
	lui	$1, 32767
	ori	$2, $1, 65535
	and16	$2, $3
	lui	$1, 32640
	slt	$1, $1, $2
	bnezc	$1, $BB87_13
# %bb.1:
	j	$BB87_2
	nop
$BB87_2:
	lw	$5, 28($fp)
	sw	$5, 16($fp)                     # 4-byte Folded Spill
	move	$4, $5
	jal	__addsf3
	nop
	lw	$5, 16($fp)                     # 4-byte Folded Reload
	move	$4, $2
	jal	__eqsf2
	nop
	beqzc	$2, $BB87_13
# %bb.3:
	j	$BB87_4
	nop
$BB87_4:
	lw	$1, 24($fp)
	slti	$3, $1, 0
	lui	$1, 16384
	lui	$2, 16128
	movn	$1, $2, $3
	sw	$1, 20($fp)
	j	$BB87_5
	nop
$BB87_5:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 24($fp)
	srl	$3, $2, 31
	addu16	$4, $2, $3
	addiu	$3, $zero, -2
	and16	$3, $4
	subu16	$2, $2, $3
	beqzc	$2, $BB87_8
# %bb.6:                                #   in Loop: Header=BB87_5 Depth=1
	j	$BB87_7
	nop
$BB87_7:                                #   in Loop: Header=BB87_5 Depth=1
	lw	$5, 20($fp)
	lw	$4, 28($fp)
	jal	__mulsf3
	nop
	sw	$2, 28($fp)
	j	$BB87_8
	nop
$BB87_8:                                #   in Loop: Header=BB87_5 Depth=1
	lw	$2, 24($fp)
	srl	$3, $2, 31
	addu16	$2, $2, $3
	sra	$1, $2, 1
	sw	$1, 24($fp)
	lw	$1, 24($fp)
	bnezc	$1, $BB87_11
# %bb.9:
	j	$BB87_10
	nop
$BB87_10:
	j	$BB87_12
	nop
$BB87_11:                               #   in Loop: Header=BB87_5 Depth=1
	lw	$5, 20($fp)
	move	$4, $5
	jal	__mulsf3
	nop
	sw	$2, 20($fp)
	j	$BB87_5
	nop
$BB87_12:
	j	$BB87_13
	nop
$BB87_13:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	ldexpf
$func_end87:
	.size	ldexpf, ($func_end87)-ldexpf
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	2
	.type	ldexp,@function
	.set	micromips
	.set	nomips16
	.ent	ldexp
ldexp:                                  # @ldexp
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 44($fp)
	sw	$4, 40($fp)
	sw	$6, 36($fp)
	lw	$2, 40($fp)
	lw	$4, 44($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $4, $3
	xor	$3, $3, $4
	sltu	$2, $zero, $2
	movz	$1, $2, $3
	bnezc	$1, $BB88_13
# %bb.1:
	j	$BB88_2
	nop
$BB88_2:
	lw	$6, 40($fp)
	sw	$6, 16($fp)                     # 4-byte Folded Spill
	lw	$7, 44($fp)
	sw	$7, 20($fp)                     # 4-byte Folded Spill
	move	$4, $6
	move	$5, $7
	jal	__adddf3
	nop
	lw	$6, 16($fp)                     # 4-byte Folded Reload
	lw	$7, 20($fp)                     # 4-byte Folded Reload
	move	$4, $2
	move	$5, $3
	jal	__eqdf2
	nop
	beqzc	$2, $BB88_13
# %bb.3:
	j	$BB88_4
	nop
$BB88_4:
	lw	$1, 36($fp)
	slti	$3, $1, 0
	lui	$1, 16384
	lui	$2, 16352
	movn	$1, $2, $3
	li16	$2, 0
	sw	$2, 24($fp)
	sw	$1, 28($fp)
	j	$BB88_5
	nop
$BB88_5:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 36($fp)
	srl	$3, $2, 31
	addu16	$4, $2, $3
	addiu	$3, $zero, -2
	and16	$3, $4
	subu16	$2, $2, $3
	beqzc	$2, $BB88_8
# %bb.6:                                #   in Loop: Header=BB88_5 Depth=1
	j	$BB88_7
	nop
$BB88_7:                                #   in Loop: Header=BB88_5 Depth=1
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	lw	$4, 40($fp)
	lw	$5, 44($fp)
	jal	__muldf3
	nop
	sw	$3, 44($fp)
	sw	$2, 40($fp)
	j	$BB88_8
	nop
$BB88_8:                                #   in Loop: Header=BB88_5 Depth=1
	lw	$2, 36($fp)
	srl	$3, $2, 31
	addu16	$2, $2, $3
	sra	$1, $2, 1
	sw	$1, 36($fp)
	lw	$1, 36($fp)
	bnezc	$1, $BB88_11
# %bb.9:
	j	$BB88_10
	nop
$BB88_10:
	j	$BB88_12
	nop
$BB88_11:                               #   in Loop: Header=BB88_5 Depth=1
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	move	$4, $6
	move	$5, $7
	jal	__muldf3
	nop
	sw	$3, 28($fp)
	sw	$2, 24($fp)
	j	$BB88_5
	nop
$BB88_12:
	j	$BB88_13
	nop
$BB88_13:
	lw	$2, 40($fp)
	lw	$3, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	ldexp
$func_end88:
	.size	ldexp, ($func_end88)-ldexp
                                        # -- End function
	.globl	ldexpl                          # -- Begin function ldexpl
	.p2align	2
	.type	ldexpl,@function
	.set	micromips
	.set	nomips16
	.ent	ldexpl
ldexpl:                                 # @ldexpl
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 44($fp)
	sw	$4, 40($fp)
	sw	$6, 36($fp)
	lw	$2, 40($fp)
	lw	$4, 44($fp)
	lui	$1, 32767
	ori	$3, $1, 65535
	and16	$3, $4
	lui	$4, 32752
	slt	$1, $4, $3
	xor	$3, $3, $4
	sltu	$2, $zero, $2
	movz	$1, $2, $3
	bnezc	$1, $BB89_13
# %bb.1:
	j	$BB89_2
	nop
$BB89_2:
	lw	$6, 40($fp)
	sw	$6, 16($fp)                     # 4-byte Folded Spill
	lw	$7, 44($fp)
	sw	$7, 20($fp)                     # 4-byte Folded Spill
	move	$4, $6
	move	$5, $7
	jal	__adddf3
	nop
	lw	$6, 16($fp)                     # 4-byte Folded Reload
	lw	$7, 20($fp)                     # 4-byte Folded Reload
	move	$4, $2
	move	$5, $3
	jal	__eqdf2
	nop
	beqzc	$2, $BB89_13
# %bb.3:
	j	$BB89_4
	nop
$BB89_4:
	lw	$1, 36($fp)
	slti	$3, $1, 0
	lui	$1, 16384
	lui	$2, 16352
	movn	$1, $2, $3
	li16	$2, 0
	sw	$2, 24($fp)
	sw	$1, 28($fp)
	j	$BB89_5
	nop
$BB89_5:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 36($fp)
	srl	$3, $2, 31
	addu16	$4, $2, $3
	addiu	$3, $zero, -2
	and16	$3, $4
	subu16	$2, $2, $3
	beqzc	$2, $BB89_8
# %bb.6:                                #   in Loop: Header=BB89_5 Depth=1
	j	$BB89_7
	nop
$BB89_7:                                #   in Loop: Header=BB89_5 Depth=1
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	lw	$4, 40($fp)
	lw	$5, 44($fp)
	jal	__muldf3
	nop
	sw	$3, 44($fp)
	sw	$2, 40($fp)
	j	$BB89_8
	nop
$BB89_8:                                #   in Loop: Header=BB89_5 Depth=1
	lw	$2, 36($fp)
	srl	$3, $2, 31
	addu16	$2, $2, $3
	sra	$1, $2, 1
	sw	$1, 36($fp)
	lw	$1, 36($fp)
	bnezc	$1, $BB89_11
# %bb.9:
	j	$BB89_10
	nop
$BB89_10:
	j	$BB89_12
	nop
$BB89_11:                               #   in Loop: Header=BB89_5 Depth=1
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	move	$4, $6
	move	$5, $7
	jal	__muldf3
	nop
	sw	$3, 28($fp)
	sw	$2, 24($fp)
	j	$BB89_5
	nop
$BB89_12:
	j	$BB89_13
	nop
$BB89_13:
	lw	$2, 40($fp)
	lw	$3, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	ldexpl
$func_end89:
	.size	ldexpl, ($func_end89)-ldexpl
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	2
	.type	memxor,@function
	.set	micromips
	.set	nomips16
	.ent	memxor
memxor:                                 # @memxor
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	lw	$1, 16($fp)
	sw	$1, 8($fp)
	lw	$1, 20($fp)
	sw	$1, 4($fp)
	j	$BB90_1
	nop
$BB90_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB90_5
# %bb.2:                                #   in Loop: Header=BB90_1 Depth=1
	j	$BB90_3
	nop
$BB90_3:                                #   in Loop: Header=BB90_1 Depth=1
	lw	$2, 8($fp)
	addiur2	$3, $2, 1
	sw	$3, 8($fp)
	lbu	$2, 0($2)
	lw	$3, 4($fp)
	addiur2	$4, $3, 1
	sw	$4, 4($fp)
	lbu	$4, 0($3)
	xor16	$2, $4
	sb	$2, 0($3)
	j	$BB90_4
	nop
$BB90_4:                                #   in Loop: Header=BB90_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	j	$BB90_1
	nop
$BB90_5:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	memxor
$func_end90:
	.size	memxor, ($func_end90)-memxor
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	2
	.type	strncat,@function
	.set	micromips
	.set	nomips16
	.ent	strncat
strncat:                                # @strncat
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	sw	$6, 28($fp)
	lw	$4, 36($fp)
	sw	$4, 20($fp)                     # 4-byte Folded Spill
	jal	strlen
	nop
	move	$3, $2
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	nop
	addu16	$2, $2, $3
	sw	$2, 24($fp)
	j	$BB91_1
	nop
$BB91_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	li16	$2, 0
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	beqzc	$1, $BB91_4
# %bb.2:                                #   in Loop: Header=BB91_1 Depth=1
	j	$BB91_3
	nop
$BB91_3:                                #   in Loop: Header=BB91_1 Depth=1
	lw	$1, 32($fp)
	lbu	$1, 0($1)
	lw	$2, 24($fp)
	sb	$1, 0($2)
	sltu	$2, $zero, $1
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	j	$BB91_4
	nop
$BB91_4:                                #   in Loop: Header=BB91_1 Depth=1
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB91_8
# %bb.5:                                #   in Loop: Header=BB91_1 Depth=1
	j	$BB91_6
	nop
$BB91_6:                                #   in Loop: Header=BB91_1 Depth=1
	j	$BB91_7
	nop
$BB91_7:                                #   in Loop: Header=BB91_1 Depth=1
	lw	$2, 32($fp)
	addiur2	$2, $2, 1
	sw	$2, 32($fp)
	lw	$2, 24($fp)
	addiur2	$2, $2, 1
	sw	$2, 24($fp)
	lw	$2, 28($fp)
	addiur2	$2, $2, -1
	sw	$2, 28($fp)
	j	$BB91_1
	nop
$BB91_8:
	lw	$1, 28($fp)
	bnezc	$1, $BB91_11
# %bb.9:
	j	$BB91_10
	nop
$BB91_10:
	lw	$1, 24($fp)
	li16	$2, 0
	sb	$2, 0($1)
	j	$BB91_11
	nop
$BB91_11:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	strncat
$func_end91:
	.size	strncat, ($func_end91)-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	2
	.type	strnlen,@function
	.set	micromips
	.set	nomips16
	.ent	strnlen
strnlen:                                # @strnlen
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	li16	$2, 0
	sw	$2, 4($fp)
	j	$BB92_1
	nop
$BB92_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lw	$3, 8($fp)
	li16	$2, 0
	sltu	$1, $1, $3
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB92_4
# %bb.2:                                #   in Loop: Header=BB92_1 Depth=1
	j	$BB92_3
	nop
$BB92_3:                                #   in Loop: Header=BB92_1 Depth=1
	lw	$2, 12($fp)
	lw	$3, 4($fp)
	addu16	$2, $2, $3
	lb	$1, 0($2)
	sltu	$2, $zero, $1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	j	$BB92_4
	nop
$BB92_4:                                #   in Loop: Header=BB92_1 Depth=1
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB92_8
# %bb.5:                                #   in Loop: Header=BB92_1 Depth=1
	j	$BB92_6
	nop
$BB92_6:                                #   in Loop: Header=BB92_1 Depth=1
	j	$BB92_7
	nop
$BB92_7:                                #   in Loop: Header=BB92_1 Depth=1
	lw	$2, 4($fp)
	addiur2	$2, $2, 1
	sw	$2, 4($fp)
	j	$BB92_1
	nop
$BB92_8:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	strnlen
$func_end92:
	.size	strnlen, ($func_end92)-strnlen
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	2
	.type	strpbrk,@function
	.set	micromips
	.set	nomips16
	.ent	strpbrk
strpbrk:                                # @strpbrk
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 8($fp)
	sw	$5, 4($fp)
	j	$BB93_1
	nop
$BB93_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_4 Depth 2
	lw	$1, 8($fp)
	lb	$1, 0($1)
	beqzc	$1, $BB93_11
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	j	$BB93_3
	nop
$BB93_3:                                #   in Loop: Header=BB93_1 Depth=1
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	j	$BB93_4
	nop
$BB93_4:                                #   Parent Loop BB93_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($fp)
	lb	$1, 0($1)
	beqzc	$1, $BB93_10
# %bb.5:                                #   in Loop: Header=BB93_4 Depth=2
	j	$BB93_6
	nop
$BB93_6:                                #   in Loop: Header=BB93_4 Depth=2
	lw	$2, 0($fp)
	addiur2	$3, $2, 1
	sw	$3, 0($fp)
	lb	$1, 0($2)
	lw	$2, 8($fp)
	lb	$2, 0($2)
	bne	$1, $2, $BB93_9
	nop
# %bb.7:
	j	$BB93_8
	nop
$BB93_8:
	lw	$1, 8($fp)
	sw	$1, 12($fp)
	j	$BB93_12
	nop
$BB93_9:                                #   in Loop: Header=BB93_4 Depth=2
	j	$BB93_4
	nop
$BB93_10:                               #   in Loop: Header=BB93_1 Depth=1
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 8($fp)
	j	$BB93_1
	nop
$BB93_11:
	li16	$2, 0
	sw	$2, 12($fp)
	j	$BB93_12
	nop
$BB93_12:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	strpbrk
$func_end93:
	.size	strpbrk, ($func_end93)-strpbrk
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	2
	.type	strrchr,@function
	.set	micromips
	.set	nomips16
	.ent	strrchr
strrchr:                                # @strrchr
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	li16	$2, 0
	sw	$2, 4($fp)
	j	$BB94_1
	nop
$BB94_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	lb	$1, 0($1)
	lw	$2, 8($fp)
	bne	$1, $2, $BB94_4
	nop
# %bb.2:                                #   in Loop: Header=BB94_1 Depth=1
	j	$BB94_3
	nop
$BB94_3:                                #   in Loop: Header=BB94_1 Depth=1
	lw	$1, 12($fp)
	sw	$1, 4($fp)
	j	$BB94_4
	nop
$BB94_4:                                #   in Loop: Header=BB94_1 Depth=1
	j	$BB94_5
	nop
$BB94_5:                                #   in Loop: Header=BB94_1 Depth=1
	lw	$2, 12($fp)
	addiur2	$3, $2, 1
	sw	$3, 12($fp)
	lbu	$1, 0($2)
	bnezc	$1, $BB94_1
# %bb.6:
	j	$BB94_7
	nop
$BB94_7:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	strrchr
$func_end94:
	.size	strrchr, ($func_end94)-strrchr
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	2
	.type	strstr,@function
	.set	micromips
	.set	nomips16
	.ent	strstr
strstr:                                 # @strstr
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 32($fp)
	sw	$5, 28($fp)
	lw	$1, 32($fp)
	sw	$1, 24($fp)
	lw	$4, 28($fp)
	jal	strlen
	nop
	sw	$2, 20($fp)
	lw	$1, 20($fp)
	bnezc	$1, $BB95_3
# %bb.1:
	j	$BB95_2
	nop
$BB95_2:
	lw	$1, 32($fp)
	sw	$1, 36($fp)
	j	$BB95_12
	nop
$BB95_3:
	j	$BB95_4
	nop
$BB95_4:                                # =>This Inner Loop Header: Depth=1
	lw	$4, 24($fp)
	lw	$1, 28($fp)
	lb	$5, 0($1)
	jal	strchr
	nop
	sw	$2, 24($fp)
	beqzc	$2, $BB95_11
# %bb.5:                                #   in Loop: Header=BB95_4 Depth=1
	j	$BB95_6
	nop
$BB95_6:                                #   in Loop: Header=BB95_4 Depth=1
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lw	$6, 20($fp)
	jal	strncmp
	nop
	bnezc	$2, $BB95_9
# %bb.7:
	j	$BB95_8
	nop
$BB95_8:
	lw	$1, 24($fp)
	sw	$1, 36($fp)
	j	$BB95_12
	nop
$BB95_9:                                #   in Loop: Header=BB95_4 Depth=1
	j	$BB95_10
	nop
$BB95_10:                               #   in Loop: Header=BB95_4 Depth=1
	lw	$2, 24($fp)
	addiur2	$2, $2, 1
	sw	$2, 24($fp)
	j	$BB95_4
	nop
$BB95_11:
	li16	$2, 0
	sw	$2, 36($fp)
	j	$BB95_12
	nop
$BB95_12:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	strstr
$func_end95:
	.size	strstr, ($func_end95)-strstr
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	2
	.type	copysign,@function
	.set	micromips
	.set	nomips16
	.ent	copysign
copysign:                               # @copysign
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	li16	$7, 0
	move	$6, $7
	jal	__ltdf2
	nop
	bgez	$2, $BB96_4
	nop
# %bb.1:
	j	$BB96_2
	nop
$BB96_2:
	lw	$4, 16($fp)
	lw	$5, 20($fp)
	li16	$7, 0
	move	$6, $7
	jal	__gtdf2
	nop
	bgtz	$2, $BB96_8
	nop
# %bb.3:
	j	$BB96_4
	nop
$BB96_4:
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	li16	$7, 0
	move	$6, $7
	jal	__gtdf2
	nop
	blez	$2, $BB96_9
	nop
# %bb.5:
	j	$BB96_6
	nop
$BB96_6:
	lw	$4, 16($fp)
	lw	$5, 20($fp)
	li16	$7, 0
	move	$6, $7
	jal	__ltdf2
	nop
	bgez	$2, $BB96_9
	nop
# %bb.7:
	j	$BB96_8
	nop
$BB96_8:
	lw	$1, 24($fp)
	lw	$3, 28($fp)
	lui	$2, 32768
	xor16	$2, $3
	sw	$1, 32($fp)
	sw	$2, 36($fp)
	j	$BB96_10
	nop
$BB96_9:
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	j	$BB96_10
	nop
$BB96_10:
	lw	$2, 32($fp)
	lw	$3, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	copysign
$func_end96:
	.size	copysign, ($func_end96)-copysign
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	2
	.type	memmem,@function
	.set	micromips
	.set	nomips16
	.ent	memmem
memmem:                                 # @memmem
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 40($fp)
	sw	$5, 36($fp)
	sw	$6, 32($fp)
	sw	$7, 28($fp)
	lw	$2, 40($fp)
	lw	$3, 36($fp)
	addu16	$2, $2, $3
	lw	$3, 28($fp)
	subu16	$2, $2, $3
	sw	$2, 20($fp)
	lw	$1, 28($fp)
	bnezc	$1, $BB97_3
# %bb.1:
	j	$BB97_2
	nop
$BB97_2:
	lw	$1, 40($fp)
	sw	$1, 44($fp)
	j	$BB97_17
	nop
$BB97_3:
	lw	$1, 36($fp)
	lw	$2, 28($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB97_6
# %bb.4:
	j	$BB97_5
	nop
$BB97_5:
	li16	$2, 0
	sw	$2, 44($fp)
	j	$BB97_17
	nop
$BB97_6:
	lw	$1, 40($fp)
	sw	$1, 24($fp)
	j	$BB97_7
	nop
$BB97_7:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 24($fp)
	lw	$1, 20($fp)
	sltu	$1, $1, $2
	bnezc	$1, $BB97_16
# %bb.8:                                #   in Loop: Header=BB97_7 Depth=1
	j	$BB97_9
	nop
$BB97_9:                                #   in Loop: Header=BB97_7 Depth=1
	lw	$1, 24($fp)
	lb	$1, 0($1)
	lw	$2, 32($fp)
	lb	$2, 0($2)
	bne	$1, $2, $BB97_14
	nop
# %bb.10:                               #   in Loop: Header=BB97_7 Depth=1
	j	$BB97_11
	nop
$BB97_11:                               #   in Loop: Header=BB97_7 Depth=1
	lw	$2, 24($fp)
	addiur2	$4, $2, 1
	lw	$2, 32($fp)
	addiur2	$5, $2, 1
	lw	$2, 28($fp)
	addiur2	$6, $2, -1
	jal	memcmp
	nop
	bnezc	$2, $BB97_14
# %bb.12:
	j	$BB97_13
	nop
$BB97_13:
	lw	$1, 24($fp)
	sw	$1, 44($fp)
	j	$BB97_17
	nop
$BB97_14:                               #   in Loop: Header=BB97_7 Depth=1
	j	$BB97_15
	nop
$BB97_15:                               #   in Loop: Header=BB97_7 Depth=1
	lw	$2, 24($fp)
	addiur2	$2, $2, 1
	sw	$2, 24($fp)
	j	$BB97_7
	nop
$BB97_16:
	li16	$2, 0
	sw	$2, 44($fp)
	j	$BB97_17
	nop
$BB97_17:
	lw	$2, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	memmem
$func_end97:
	.size	memmem, ($func_end97)-memmem
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	2
	.type	mempcpy,@function
	.set	micromips
	.set	nomips16
	.ent	mempcpy
mempcpy:                                # @mempcpy
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	lw	$4, 28($fp)
	sw	$4, 16($fp)                     # 4-byte Folded Spill
	lw	$5, 24($fp)
	lw	$6, 20($fp)
	jal	memcpy
	nop
                                        # kill: def $at killed $v0
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$3, 20($fp)
	addu16	$2, $2, $3
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	mempcpy
$func_end98:
	.size	mempcpy, ($func_end98)-mempcpy
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	2
	.type	frexp,@function
	.set	micromips
	.set	nomips16
	.ent	frexp
frexp:                                  # @frexp
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 36($fp)
	sw	$4, 32($fp)
	sw	$6, 28($fp)
	li16	$7, 0
	sw	$7, 20($fp)
	sw	$7, 24($fp)
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	move	$6, $7
	jal	__ltdf2
	nop
	bgez	$2, $BB99_3
	nop
# %bb.1:
	j	$BB99_2
	nop
$BB99_2:
	lw	$3, 36($fp)
	lui	$2, 32768
	xor16	$2, $3
	sw	$2, 36($fp)
	li16	$2, 1
	sw	$2, 24($fp)
	j	$BB99_3
	nop
$BB99_3:
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	li16	$6, 0
	lui	$7, 16368
	jal	__gedf2
	nop
	bltz	$2, $BB99_10
	nop
# %bb.4:
	j	$BB99_5
	nop
$BB99_5:
	j	$BB99_6
	nop
$BB99_6:                                # =>This Inner Loop Header: Depth=1
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	li16	$6, 0
	lui	$7, 16368
	jal	__gedf2
	nop
	bltz	$2, $BB99_9
	nop
# %bb.7:                                #   in Loop: Header=BB99_6 Depth=1
	j	$BB99_8
	nop
$BB99_8:                                #   in Loop: Header=BB99_6 Depth=1
	lw	$2, 20($fp)
	addiur2	$2, $2, 1
	sw	$2, 20($fp)
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	li16	$6, 0
	lui	$7, 16352
	jal	__muldf3
	nop
	sw	$3, 36($fp)
	sw	$2, 32($fp)
	j	$BB99_6
	nop
$BB99_9:
	j	$BB99_20
	nop
$BB99_10:
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	li16	$6, 0
	lui	$7, 16352
	jal	__ltdf2
	nop
	bgez	$2, $BB99_19
	nop
# %bb.11:
	j	$BB99_12
	nop
$BB99_12:
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	li16	$7, 0
	move	$6, $7
	jal	__eqdf2
	nop
	beqzc	$2, $BB99_19
# %bb.13:
	j	$BB99_14
	nop
$BB99_14:
	j	$BB99_15
	nop
$BB99_15:                               # =>This Inner Loop Header: Depth=1
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	li16	$6, 0
	lui	$7, 16352
	jal	__ltdf2
	nop
	bgez	$2, $BB99_18
	nop
# %bb.16:                               #   in Loop: Header=BB99_15 Depth=1
	j	$BB99_17
	nop
$BB99_17:                               #   in Loop: Header=BB99_15 Depth=1
	lw	$2, 20($fp)
	addiur2	$2, $2, -1
	sw	$2, 20($fp)
	lw	$6, 32($fp)
	lw	$7, 36($fp)
	move	$4, $6
	move	$5, $7
	jal	__adddf3
	nop
	sw	$3, 36($fp)
	sw	$2, 32($fp)
	j	$BB99_15
	nop
$BB99_18:
	j	$BB99_19
	nop
$BB99_19:
	j	$BB99_20
	nop
$BB99_20:
	lw	$2, 20($fp)
	lw	$3, 28($fp)
	sw16	$2, 0($3)
	lw	$1, 24($fp)
	beqzc	$1, $BB99_23
# %bb.21:
	j	$BB99_22
	nop
$BB99_22:
	lw	$3, 36($fp)
	lui	$2, 32768
	xor16	$2, $3
	sw	$2, 36($fp)
	j	$BB99_23
	nop
$BB99_23:
	lw	$2, 32($fp)
	lw	$3, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	frexp
$func_end99:
	.size	frexp, ($func_end99)-frexp
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	2
	.type	__muldi3,@function
	.set	micromips
	.set	nomips16
	.ent	__muldi3
__muldi3:                               # @__muldi3
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	li16	$2, 0
	sw	$2, 12($fp)
	sw	$2, 8($fp)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 4($fp)
	sw	$1, 0($fp)
	j	$BB100_1
	nop
$BB100_1:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 4($fp)
	lw	$3, 0($fp)
	or16	$2, $3
	beqzc	$2, $BB100_7
# %bb.2:                                #   in Loop: Header=BB100_1 Depth=1
	j	$BB100_3
	nop
$BB100_3:                               #   in Loop: Header=BB100_1 Depth=1
	lbu	$2, 0($fp)
	andi16	$2, $2, 1
	beqzc	$2, $BB100_6
# %bb.4:                                #   in Loop: Header=BB100_1 Depth=1
	j	$BB100_5
	nop
$BB100_5:                               #   in Loop: Header=BB100_1 Depth=1
	lw	$3, 16($fp)
	lw	$5, 20($fp)
	lw	$4, 8($fp)
	lw	$2, 12($fp)
	addu16	$2, $2, $5
	addu16	$3, $4, $3
	sltu	$4, $3, $4
	addu16	$2, $2, $4
	sw	$3, 8($fp)
	sw	$2, 12($fp)
	j	$BB100_6
	nop
$BB100_6:                               #   in Loop: Header=BB100_1 Depth=1
	lw	$4, 20($fp)
	lw	$3, 16($fp)
	srl	$2, $3, 31
	sll16	$4, $4, 1
	or16	$2, $4
	sll16	$3, $3, 1
	sw	$3, 16($fp)
	sw	$2, 20($fp)
	lw	$4, 0($fp)
	lw	$3, 4($fp)
	sll	$2, $3, 31
	srl16	$4, $4, 1
	or16	$2, $4
	srl16	$3, $3, 1
	sw	$3, 4($fp)
	sw	$2, 0($fp)
	j	$BB100_1
	nop
$BB100_7:
	lw	$2, 8($fp)
	lw	$3, 12($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__muldi3
$func_end100:
	.size	__muldi3, ($func_end100)-__muldi3
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	2
	.type	udivmodsi4,@function
	.set	micromips
	.set	nomips16
	.ent	udivmodsi4
udivmodsi4:                             # @udivmodsi4
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 24($fp)
	sw	$5, 20($fp)
	sw	$6, 16($fp)
	li16	$2, 1
	sw	$2, 12($fp)
	li16	$2, 0
	sw	$2, 8($fp)
	j	$BB101_1
	nop
$BB101_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$3, 24($fp)
	li16	$2, 0
	sltu	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB101_6
# %bb.2:                                #   in Loop: Header=BB101_1 Depth=1
	j	$BB101_3
	nop
$BB101_3:                               #   in Loop: Header=BB101_1 Depth=1
	lw	$1, 12($fp)
	li16	$2, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB101_6
# %bb.4:                                #   in Loop: Header=BB101_1 Depth=1
	j	$BB101_5
	nop
$BB101_5:                               #   in Loop: Header=BB101_1 Depth=1
	lbu	$2, 23($fp)
	andi16	$2, $2, 128
	sltiu	$2, $2, 1
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	j	$BB101_6
	nop
$BB101_6:                               #   in Loop: Header=BB101_1 Depth=1
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB101_9
# %bb.7:                                #   in Loop: Header=BB101_1 Depth=1
	j	$BB101_8
	nop
$BB101_8:                               #   in Loop: Header=BB101_1 Depth=1
	lw	$2, 20($fp)
	sll16	$2, $2, 1
	sw	$2, 20($fp)
	lw	$2, 12($fp)
	sll16	$2, $2, 1
	sw	$2, 12($fp)
	j	$BB101_1
	nop
$BB101_9:
	j	$BB101_10
	nop
$BB101_10:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB101_16
# %bb.11:                               #   in Loop: Header=BB101_10 Depth=1
	j	$BB101_12
	nop
$BB101_12:                              #   in Loop: Header=BB101_10 Depth=1
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	sltu	$1, $1, $2
	bnezc	$1, $BB101_15
# %bb.13:                               #   in Loop: Header=BB101_10 Depth=1
	j	$BB101_14
	nop
$BB101_14:                              #   in Loop: Header=BB101_10 Depth=1
	lw	$3, 20($fp)
	lw	$2, 24($fp)
	subu16	$2, $2, $3
	sw	$2, 24($fp)
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	or16	$2, $3
	sw	$2, 8($fp)
	j	$BB101_15
	nop
$BB101_15:                              #   in Loop: Header=BB101_10 Depth=1
	lw	$2, 12($fp)
	srl16	$2, $2, 1
	sw	$2, 12($fp)
	lw	$2, 20($fp)
	srl16	$2, $2, 1
	sw	$2, 20($fp)
	j	$BB101_10
	nop
$BB101_16:
	lw	$1, 16($fp)
	beqzc	$1, $BB101_19
# %bb.17:
	j	$BB101_18
	nop
$BB101_18:
	lw	$1, 24($fp)
	sw	$1, 28($fp)
	j	$BB101_20
	nop
$BB101_19:
	lw	$1, 8($fp)
	sw	$1, 28($fp)
	j	$BB101_20
	nop
$BB101_20:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	udivmodsi4
$func_end101:
	.size	udivmodsi4, ($func_end101)-udivmodsi4
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	2
	.type	__clrsbqi2,@function
	.set	micromips
	.set	nomips16
	.ent	__clrsbqi2
__clrsbqi2:                             # @__clrsbqi2
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sb	$4, 11($fp)
	lb	$1, 11($fp)
	bgez	$1, $BB102_3
	nop
# %bb.1:
	j	$BB102_2
	nop
$BB102_2:
	lbu	$2, 11($fp)
	not16	$2, $2
	sb	$2, 11($fp)
	j	$BB102_3
	nop
$BB102_3:
	lb	$1, 11($fp)
	bnezc	$1, $BB102_6
# %bb.4:
	j	$BB102_5
	nop
$BB102_5:
	li16	$2, 7
	sw	$2, 12($fp)
	j	$BB102_7
	nop
$BB102_6:
	lb	$2, 11($fp)
	sll16	$2, $2, 8
	srl16	$3, $2, 1
	or16	$3, $2
	srl16	$2, $3, 2
	or16	$2, $3
	srl16	$3, $2, 4
	or16	$3, $2
	srl16	$2, $3, 8
	or16	$2, $3
	srl	$1, $2, 16
	nor	$2, $2, $1
	srl16	$4, $2, 1
	lui	$1, 21845
	ori	$3, $1, 21845
	and16	$3, $4
	subu16	$4, $2, $3
	lui	$1, 13107
	ori	$3, $1, 13107
	move	$2, $3
	and16	$2, $4
	srl16	$4, $4, 2
	and16	$3, $4
	addu16	$2, $2, $3
	srl16	$3, $2, 4
	addu16	$3, $2, $3
	lui	$1, 3855
	ori	$2, $1, 3855
	and16	$2, $3
	sll16	$3, $2, 8
	addu16	$4, $3, $2
	sll	$3, $2, 16
	addu16	$3, $3, $4
	sll	$2, $2, 24
	addu16	$2, $2, $3
	srl	$1, $2, 24
	sw	$1, 4($fp)
	lw	$2, 4($fp)
	addiur2	$2, $2, -1
	sw	$2, 12($fp)
	j	$BB102_7
	nop
$BB102_7:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__clrsbqi2
$func_end102:
	.size	__clrsbqi2, ($func_end102)-__clrsbqi2
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	2
	.type	__clrsbdi2,@function
	.set	micromips
	.set	nomips16
	.ent	__clrsbdi2
__clrsbdi2:                             # @__clrsbdi2
	.frame	$fp,40,$ra
	.mask 	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	sw	$17, 28($sp)                    # 4-byte Folded Spill
	sw	$16, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 12($fp)
	sw	$4, 8($fp)
	lw	$1, 12($fp)
	bgez	$1, $BB103_3
	nop
# %bb.1:
	j	$BB103_2
	nop
$BB103_2:
	lw	$3, 12($fp)
	lw	$2, 8($fp)
	not16	$2, $2
	not16	$3, $3
	sw	$3, 12($fp)
	sw	$2, 8($fp)
	j	$BB103_3
	nop
$BB103_3:
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	or16	$2, $3
	bnezc	$2, $BB103_6
# %bb.4:
	j	$BB103_5
	nop
$BB103_5:
	li16	$2, 63
	sw	$2, 20($fp)
	j	$BB103_7
	nop
$BB103_6:
	lw	$5, 8($fp)
	lw	$3, 12($fp)
	srl16	$4, $3, 1
	or16	$4, $3
	srl16	$2, $4, 2
	or16	$2, $4
	srl16	$4, $2, 4
	or16	$4, $2
	srl16	$2, $4, 8
	or16	$2, $4
	srl	$1, $2, 16
	nor	$2, $2, $1
	srl16	$6, $2, 1
	lui	$1, 21845
	ori	$7, $1, 21845
	move	$4, $7
	and16	$4, $6
	subu16	$4, $2, $4
	lui	$1, 13107
	ori	$6, $1, 13107
	move	$2, $6
	and16	$2, $4
	srl16	$16, $4, 2
	move	$4, $6
	and16	$4, $16
	addu16	$2, $2, $4
	srl16	$4, $2, 4
	addu16	$16, $2, $4
	lui	$1, 3855
	ori	$4, $1, 3855
	move	$2, $4
	and16	$2, $16
	sll16	$16, $2, 8
	addu16	$17, $16, $2
	sll	$16, $2, 16
	addu16	$16, $16, $17
	sll	$2, $2, 24
	addu16	$2, $2, $16
	srl	$2, $2, 24
	srl16	$16, $5, 1
	or16	$16, $5
	srl16	$5, $16, 2
	or16	$5, $16
	srl16	$16, $5, 4
	or16	$16, $5
	srl16	$5, $16, 8
	or16	$5, $16
	srl	$1, $5, 16
	nor	$5, $5, $1
	srl16	$16, $5, 1
	and16	$7, $16
	subu16	$7, $5, $7
	move	$5, $6
	and16	$5, $7
	srl16	$7, $7, 2
	and16	$6, $7
	addu16	$5, $5, $6
	srl16	$6, $5, 4
	addu16	$5, $5, $6
	and16	$4, $5
	sll16	$5, $4, 8
	addu16	$6, $5, $4
	sll	$5, $4, 16
	addu16	$5, $5, $6
	sll	$4, $4, 24
	addu16	$4, $4, $5
	srl	$1, $4, 24
	addiu	$1, $1, 32
	movn	$1, $2, $3
	sw	$1, 4($fp)
	lw	$2, 4($fp)
	addiur2	$2, $2, -1
	sw	$2, 20($fp)
	j	$BB103_7
	nop
$BB103_7:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$16, 24($sp)                    # 4-byte Folded Reload
	lw	$17, 28($sp)                    # 4-byte Folded Reload
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__clrsbdi2
$func_end103:
	.size	__clrsbdi2, ($func_end103)-__clrsbdi2
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	2
	.type	__mulsi3,@function
	.set	micromips
	.set	nomips16
	.ent	__mulsi3
__mulsi3:                               # @__mulsi3
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	li16	$2, 0
	sw	$2, 4($fp)
	j	$BB104_1
	nop
$BB104_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB104_7
# %bb.2:                                #   in Loop: Header=BB104_1 Depth=1
	j	$BB104_3
	nop
$BB104_3:                               #   in Loop: Header=BB104_1 Depth=1
	lbu	$2, 12($fp)
	andi16	$2, $2, 1
	beqzc	$2, $BB104_6
# %bb.4:                                #   in Loop: Header=BB104_1 Depth=1
	j	$BB104_5
	nop
$BB104_5:                               #   in Loop: Header=BB104_1 Depth=1
	lw	$3, 8($fp)
	lw	$2, 4($fp)
	addu16	$2, $2, $3
	sw	$2, 4($fp)
	j	$BB104_6
	nop
$BB104_6:                               #   in Loop: Header=BB104_1 Depth=1
	lw	$2, 12($fp)
	srl16	$2, $2, 1
	sw	$2, 12($fp)
	lw	$2, 8($fp)
	sll16	$2, $2, 1
	sw	$2, 8($fp)
	j	$BB104_1
	nop
$BB104_7:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__mulsi3
$func_end104:
	.size	__mulsi3, ($func_end104)-__mulsi3
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	2
	.type	__cmovd,@function
	.set	micromips
	.set	nomips16
	.ent	__cmovd
__cmovd:                                # @__cmovd
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	lw	$2, 20($fp)
	srl16	$2, $2, 3
	sw	$2, 12($fp)
	lw	$3, 20($fp)
	addiu	$2, $zero, -8
	and16	$2, $3
	sw	$2, 8($fp)
	lw	$1, 28($fp)
	sw	$1, 4($fp)
	lw	$1, 24($fp)
	sw	$1, 0($fp)
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	sltu	$1, $1, $2
	bnezc	$1, $BB105_4
# %bb.1:
	j	$BB105_2
	nop
$BB105_2:
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	lw	$3, 20($fp)
	addu16	$2, $2, $3
	sltu	$1, $2, $1
	beqzc	$1, $BB105_14
# %bb.3:
	j	$BB105_4
	nop
$BB105_4:
	li16	$2, 0
	sw	$2, 16($fp)
	j	$BB105_5
	nop
$BB105_5:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$2, 12($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB105_9
# %bb.6:                                #   in Loop: Header=BB105_5 Depth=1
	j	$BB105_7
	nop
$BB105_7:                               #   in Loop: Header=BB105_5 Depth=1
	lw	$2, 24($fp)
	lw	$3, 16($fp)
	sll16	$5, $3, 3
	addu16	$3, $2, $5
	lw16	$2, 0($3)
	lw16	$4, 4($3)
	lw	$3, 28($fp)
	addu16	$3, $3, $5
	sw16	$4, 4($3)
	sw16	$2, 0($3)
	j	$BB105_8
	nop
$BB105_8:                               #   in Loop: Header=BB105_5 Depth=1
	lw	$2, 16($fp)
	addiur2	$2, $2, 1
	sw	$2, 16($fp)
	j	$BB105_5
	nop
$BB105_9:
	j	$BB105_10
	nop
$BB105_10:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 20($fp)
	lw	$1, 8($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB105_13
# %bb.11:                               #   in Loop: Header=BB105_10 Depth=1
	j	$BB105_12
	nop
$BB105_12:                              #   in Loop: Header=BB105_10 Depth=1
	lw	$2, 0($fp)
	lw	$3, 8($fp)
	addu16	$2, $2, $3
	lbu	$1, 0($2)
	lw	$2, 4($fp)
	addu16	$2, $2, $3
	sb	$1, 0($2)
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 8($fp)
	j	$BB105_10
	nop
$BB105_13:
	j	$BB105_19
	nop
$BB105_14:
	j	$BB105_15
	nop
$BB105_15:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 20($fp)
	addiur2	$3, $2, -1
	sw	$3, 20($fp)
	beqzc	$2, $BB105_18
# %bb.16:                               #   in Loop: Header=BB105_15 Depth=1
	j	$BB105_17
	nop
$BB105_17:                              #   in Loop: Header=BB105_15 Depth=1
	lw	$2, 0($fp)
	lw	$3, 20($fp)
	addu16	$2, $2, $3
	lbu	$1, 0($2)
	lw	$2, 4($fp)
	addu16	$2, $2, $3
	sb	$1, 0($2)
	j	$BB105_15
	nop
$BB105_18:
	j	$BB105_19
	nop
$BB105_19:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__cmovd
$func_end105:
	.size	__cmovd, ($func_end105)-__cmovd
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	2
	.type	__cmovh,@function
	.set	micromips
	.set	nomips16
	.ent	__cmovh
__cmovh:                                # @__cmovh
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	lw	$2, 20($fp)
	srl16	$2, $2, 1
	sw	$2, 12($fp)
	lw	$1, 28($fp)
	sw	$1, 8($fp)
	lw	$1, 24($fp)
	sw	$1, 4($fp)
	lw	$1, 8($fp)
	lw	$2, 4($fp)
	sltu	$1, $1, $2
	bnezc	$1, $BB106_4
# %bb.1:
	j	$BB106_2
	nop
$BB106_2:
	lw	$1, 8($fp)
	lw	$2, 4($fp)
	lw	$3, 20($fp)
	addu16	$2, $2, $3
	sltu	$1, $2, $1
	beqzc	$1, $BB106_13
# %bb.3:
	j	$BB106_4
	nop
$BB106_4:
	li16	$2, 0
	sw	$2, 16($fp)
	j	$BB106_5
	nop
$BB106_5:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$2, 12($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB106_9
# %bb.6:                                #   in Loop: Header=BB106_5 Depth=1
	j	$BB106_7
	nop
$BB106_7:                               #   in Loop: Header=BB106_5 Depth=1
	lw	$2, 24($fp)
	lw	$3, 16($fp)
	sll16	$3, $3, 1
	addu16	$2, $2, $3
	lhu	$1, 0($2)
	lw	$2, 28($fp)
	addu16	$2, $2, $3
	sh	$1, 0($2)
	j	$BB106_8
	nop
$BB106_8:                               #   in Loop: Header=BB106_5 Depth=1
	lw	$2, 16($fp)
	addiur2	$2, $2, 1
	sw	$2, 16($fp)
	j	$BB106_5
	nop
$BB106_9:
	lbu	$2, 20($fp)
	andi16	$2, $2, 1
	beqzc	$2, $BB106_12
# %bb.10:
	j	$BB106_11
	nop
$BB106_11:
	lw	$2, 4($fp)
	lw	$3, 20($fp)
	addiur2	$3, $3, -1
	addu16	$2, $2, $3
	lbu	$1, 0($2)
	lw	$2, 8($fp)
	addu16	$2, $2, $3
	sb	$1, 0($2)
	j	$BB106_12
	nop
$BB106_12:
	j	$BB106_18
	nop
$BB106_13:
	j	$BB106_14
	nop
$BB106_14:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 20($fp)
	addiur2	$3, $2, -1
	sw	$3, 20($fp)
	beqzc	$2, $BB106_17
# %bb.15:                               #   in Loop: Header=BB106_14 Depth=1
	j	$BB106_16
	nop
$BB106_16:                              #   in Loop: Header=BB106_14 Depth=1
	lw	$2, 4($fp)
	lw	$3, 20($fp)
	addu16	$2, $2, $3
	lbu	$1, 0($2)
	lw	$2, 8($fp)
	addu16	$2, $2, $3
	sb	$1, 0($2)
	j	$BB106_14
	nop
$BB106_17:
	j	$BB106_18
	nop
$BB106_18:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__cmovh
$func_end106:
	.size	__cmovh, ($func_end106)-__cmovh
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	2
	.type	__cmovw,@function
	.set	micromips
	.set	nomips16
	.ent	__cmovw
__cmovw:                                # @__cmovw
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	lw	$2, 20($fp)
	srl16	$2, $2, 2
	sw	$2, 12($fp)
	lw	$3, 20($fp)
	addiu	$2, $zero, -4
	and16	$2, $3
	sw	$2, 8($fp)
	lw	$1, 28($fp)
	sw	$1, 4($fp)
	lw	$1, 24($fp)
	sw	$1, 0($fp)
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	sltu	$1, $1, $2
	bnezc	$1, $BB107_4
# %bb.1:
	j	$BB107_2
	nop
$BB107_2:
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	lw	$3, 20($fp)
	addu16	$2, $2, $3
	sltu	$1, $2, $1
	beqzc	$1, $BB107_14
# %bb.3:
	j	$BB107_4
	nop
$BB107_4:
	li16	$2, 0
	sw	$2, 16($fp)
	j	$BB107_5
	nop
$BB107_5:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$2, 12($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB107_9
# %bb.6:                                #   in Loop: Header=BB107_5 Depth=1
	j	$BB107_7
	nop
$BB107_7:                               #   in Loop: Header=BB107_5 Depth=1
	lw	$2, 24($fp)
	lw	$3, 16($fp)
	sll16	$4, $3, 2
	addu16	$2, $2, $4
	lw16	$2, 0($2)
	lw	$3, 28($fp)
	addu16	$3, $3, $4
	sw16	$2, 0($3)
	j	$BB107_8
	nop
$BB107_8:                               #   in Loop: Header=BB107_5 Depth=1
	lw	$2, 16($fp)
	addiur2	$2, $2, 1
	sw	$2, 16($fp)
	j	$BB107_5
	nop
$BB107_9:
	j	$BB107_10
	nop
$BB107_10:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 20($fp)
	lw	$1, 8($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB107_13
# %bb.11:                               #   in Loop: Header=BB107_10 Depth=1
	j	$BB107_12
	nop
$BB107_12:                              #   in Loop: Header=BB107_10 Depth=1
	lw	$2, 0($fp)
	lw	$3, 8($fp)
	addu16	$2, $2, $3
	lbu	$1, 0($2)
	lw	$2, 4($fp)
	addu16	$2, $2, $3
	sb	$1, 0($2)
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 8($fp)
	j	$BB107_10
	nop
$BB107_13:
	j	$BB107_19
	nop
$BB107_14:
	j	$BB107_15
	nop
$BB107_15:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 20($fp)
	addiur2	$3, $2, -1
	sw	$3, 20($fp)
	beqzc	$2, $BB107_18
# %bb.16:                               #   in Loop: Header=BB107_15 Depth=1
	j	$BB107_17
	nop
$BB107_17:                              #   in Loop: Header=BB107_15 Depth=1
	lw	$2, 0($fp)
	lw	$3, 20($fp)
	addu16	$2, $2, $3
	lbu	$1, 0($2)
	lw	$2, 4($fp)
	addu16	$2, $2, $3
	sb	$1, 0($2)
	j	$BB107_15
	nop
$BB107_18:
	j	$BB107_19
	nop
$BB107_19:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__cmovw
$func_end107:
	.size	__cmovw, ($func_end107)-__cmovw
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	2
	.type	__modi,@function
	.set	micromips
	.set	nomips16
	.ent	__modi
__modi:                                 # @__modi
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi16	$2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__modi
$func_end108:
	.size	__modi, ($func_end108)-__modi
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	2
	.type	__uitod,@function
	.set	micromips
	.set	nomips16
	.ent	__uitod
__uitod:                                # @__uitod
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	lw	$4, 20($fp)
	jal	__floatunsidf
	nop
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__uitod
$func_end109:
	.size	__uitod, ($func_end109)-__uitod
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	2
	.type	__uitof,@function
	.set	micromips
	.set	nomips16
	.ent	__uitof
__uitof:                                # @__uitof
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	lw	$4, 20($fp)
	jal	__floatunsisf
	nop
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__uitof
$func_end110:
	.size	__uitof, ($func_end110)-__uitof
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	2
	.type	__ulltod,@function
	.set	micromips
	.set	nomips16
	.ent	__ulltod
__ulltod:                               # @__ulltod
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 20($fp)
	sw	$4, 16($fp)
	lw	$4, 16($fp)
	lw	$5, 20($fp)
	jal	__floatundidf
	nop
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__ulltod
$func_end111:
	.size	__ulltod, ($func_end111)-__ulltod
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	2
	.type	__ulltof,@function
	.set	micromips
	.set	nomips16
	.ent	__ulltof
__ulltof:                               # @__ulltof
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 20($fp)
	sw	$4, 16($fp)
	lw	$4, 16($fp)
	lw	$5, 20($fp)
	jal	__floatundisf
	nop
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__ulltof
$func_end112:
	.size	__ulltof, ($func_end112)-__ulltof
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	2
	.type	__umodi,@function
	.set	micromips
	.set	nomips16
	.ent	__umodi
__umodi:                                # @__umodi
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	divu	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi16	$2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__umodi
$func_end113:
	.size	__umodi, ($func_end113)-__umodi
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	2
	.type	__clzhi2,@function
	.set	micromips
	.set	nomips16
	.ent	__clzhi2
__clzhi2:                               # @__clzhi2
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sh	$4, 6($fp)
	li16	$2, 0
	sw	$2, 0($fp)
	j	$BB114_1
	nop
$BB114_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($fp)
	slti	$1, $1, 16
	beqzc	$1, $BB114_8
# %bb.2:                                #   in Loop: Header=BB114_1 Depth=1
	j	$BB114_3
	nop
$BB114_3:                               #   in Loop: Header=BB114_1 Depth=1
	lhu	$1, 6($fp)
	lw	$3, 0($fp)
	li16	$2, 15
	subu16	$2, $2, $3
	srlv	$2, $1, $2
	andi16	$2, $2, 1
	beqzc	$2, $BB114_6
# %bb.4:
	j	$BB114_5
	nop
$BB114_5:
	j	$BB114_8
	nop
$BB114_6:                               #   in Loop: Header=BB114_1 Depth=1
	j	$BB114_7
	nop
$BB114_7:                               #   in Loop: Header=BB114_1 Depth=1
	lw	$2, 0($fp)
	addiur2	$2, $2, 1
	sw	$2, 0($fp)
	j	$BB114_1
	nop
$BB114_8:
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__clzhi2
$func_end114:
	.size	__clzhi2, ($func_end114)-__clzhi2
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	2
	.type	__ctzhi2,@function
	.set	micromips
	.set	nomips16
	.ent	__ctzhi2
__ctzhi2:                               # @__ctzhi2
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sh	$4, 6($fp)
	li16	$2, 0
	sw	$2, 0($fp)
	j	$BB115_1
	nop
$BB115_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($fp)
	slti	$1, $1, 16
	beqzc	$1, $BB115_8
# %bb.2:                                #   in Loop: Header=BB115_1 Depth=1
	j	$BB115_3
	nop
$BB115_3:                               #   in Loop: Header=BB115_1 Depth=1
	lhu	$1, 6($fp)
	lw	$2, 0($fp)
	srlv	$2, $1, $2
	andi16	$2, $2, 1
	beqzc	$2, $BB115_6
# %bb.4:
	j	$BB115_5
	nop
$BB115_5:
	j	$BB115_8
	nop
$BB115_6:                               #   in Loop: Header=BB115_1 Depth=1
	j	$BB115_7
	nop
$BB115_7:                               #   in Loop: Header=BB115_1 Depth=1
	lw	$2, 0($fp)
	addiur2	$2, $2, 1
	sw	$2, 0($fp)
	j	$BB115_1
	nop
$BB115_8:
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__ctzhi2
$func_end115:
	.size	__ctzhi2, ($func_end115)-__ctzhi2
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	2
	.type	__fixunssfsi,@function
	.set	micromips
	.set	nomips16
	.ent	__fixunssfsi
__fixunssfsi:                           # @__fixunssfsi
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sw	$4, 16($fp)
	lw	$4, 16($fp)
	lui	$5, 18176
	jal	__gesf2
	nop
	bltz	$2, $BB116_3
	nop
# %bb.1:
	j	$BB116_2
	nop
$BB116_2:
	lw	$4, 16($fp)
	lui	$5, 50944
	jal	__addsf3
	nop
	move	$4, $2
	jal	__fixsfsi
	nop
	ori	$3, $zero, 32768
	addu16	$2, $2, $3
	sw	$2, 20($fp)
	j	$BB116_4
	nop
$BB116_3:
	lw	$4, 16($fp)
	jal	__fixsfsi
	nop
	sw	$2, 20($fp)
	j	$BB116_4
	nop
$BB116_4:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__fixunssfsi
$func_end116:
	.size	__fixunssfsi, ($func_end116)-__fixunssfsi
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	2
	.type	__parityhi2,@function
	.set	micromips
	.set	nomips16
	.ent	__parityhi2
__parityhi2:                            # @__parityhi2
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sh	$4, 14($fp)
	li16	$2, 0
	sw	$2, 4($fp)
	sw	$2, 8($fp)
	j	$BB117_1
	nop
$BB117_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	slti	$1, $1, 16
	beqzc	$1, $BB117_8
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
	j	$BB117_3
	nop
$BB117_3:                               #   in Loop: Header=BB117_1 Depth=1
	lhu	$1, 14($fp)
	lw	$2, 8($fp)
	srlv	$2, $1, $2
	andi16	$2, $2, 1
	beqzc	$2, $BB117_6
# %bb.4:                                #   in Loop: Header=BB117_1 Depth=1
	j	$BB117_5
	nop
$BB117_5:                               #   in Loop: Header=BB117_1 Depth=1
	lw	$2, 4($fp)
	addiur2	$2, $2, 1
	sw	$2, 4($fp)
	j	$BB117_6
	nop
$BB117_6:                               #   in Loop: Header=BB117_1 Depth=1
	j	$BB117_7
	nop
$BB117_7:                               #   in Loop: Header=BB117_1 Depth=1
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 8($fp)
	j	$BB117_1
	nop
$BB117_8:
	lw	$2, 4($fp)
	andi16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__parityhi2
$func_end117:
	.size	__parityhi2, ($func_end117)-__parityhi2
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	2
	.type	__popcounthi2,@function
	.set	micromips
	.set	nomips16
	.ent	__popcounthi2
__popcounthi2:                          # @__popcounthi2
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sh	$4, 14($fp)
	li16	$2, 0
	sw	$2, 4($fp)
	sw	$2, 8($fp)
	j	$BB118_1
	nop
$BB118_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	slti	$1, $1, 16
	beqzc	$1, $BB118_8
# %bb.2:                                #   in Loop: Header=BB118_1 Depth=1
	j	$BB118_3
	nop
$BB118_3:                               #   in Loop: Header=BB118_1 Depth=1
	lhu	$1, 14($fp)
	lw	$2, 8($fp)
	srlv	$2, $1, $2
	andi16	$2, $2, 1
	beqzc	$2, $BB118_6
# %bb.4:                                #   in Loop: Header=BB118_1 Depth=1
	j	$BB118_5
	nop
$BB118_5:                               #   in Loop: Header=BB118_1 Depth=1
	lw	$2, 4($fp)
	addiur2	$2, $2, 1
	sw	$2, 4($fp)
	j	$BB118_6
	nop
$BB118_6:                               #   in Loop: Header=BB118_1 Depth=1
	j	$BB118_7
	nop
$BB118_7:                               #   in Loop: Header=BB118_1 Depth=1
	lw	$2, 8($fp)
	addiur2	$2, $2, 1
	sw	$2, 8($fp)
	j	$BB118_1
	nop
$BB118_8:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__popcounthi2
$func_end118:
	.size	__popcounthi2, ($func_end118)-__popcounthi2
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	2
	.type	__mulsi3_iq2000,@function
	.set	micromips
	.set	nomips16
	.ent	__mulsi3_iq2000
__mulsi3_iq2000:                        # @__mulsi3_iq2000
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	li16	$2, 0
	sw	$2, 4($fp)
	j	$BB119_1
	nop
$BB119_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB119_7
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	j	$BB119_3
	nop
$BB119_3:                               #   in Loop: Header=BB119_1 Depth=1
	lbu	$2, 12($fp)
	andi16	$2, $2, 1
	beqzc	$2, $BB119_6
# %bb.4:                                #   in Loop: Header=BB119_1 Depth=1
	j	$BB119_5
	nop
$BB119_5:                               #   in Loop: Header=BB119_1 Depth=1
	lw	$3, 8($fp)
	lw	$2, 4($fp)
	addu16	$2, $2, $3
	sw	$2, 4($fp)
	j	$BB119_6
	nop
$BB119_6:                               #   in Loop: Header=BB119_1 Depth=1
	lw	$2, 12($fp)
	srl16	$2, $2, 1
	sw	$2, 12($fp)
	lw	$2, 8($fp)
	sll16	$2, $2, 1
	sw	$2, 8($fp)
	j	$BB119_1
	nop
$BB119_7:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
$func_end119:
	.size	__mulsi3_iq2000, ($func_end119)-__mulsi3_iq2000
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	2
	.type	__mulsi3_lm32,@function
	.set	micromips
	.set	nomips16
	.ent	__mulsi3_lm32
__mulsi3_lm32:                          # @__mulsi3_lm32
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 8($fp)
	sw	$5, 4($fp)
	li16	$2, 0
	sw	$2, 0($fp)
	lw	$1, 8($fp)
	bnezc	$1, $BB120_3
# %bb.1:
	j	$BB120_2
	nop
$BB120_2:
	li16	$2, 0
	sw	$2, 12($fp)
	j	$BB120_11
	nop
$BB120_3:
	j	$BB120_4
	nop
$BB120_4:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	beqzc	$1, $BB120_10
# %bb.5:                                #   in Loop: Header=BB120_4 Depth=1
	j	$BB120_6
	nop
$BB120_6:                               #   in Loop: Header=BB120_4 Depth=1
	lbu	$2, 4($fp)
	andi16	$2, $2, 1
	beqzc	$2, $BB120_9
# %bb.7:                                #   in Loop: Header=BB120_4 Depth=1
	j	$BB120_8
	nop
$BB120_8:                               #   in Loop: Header=BB120_4 Depth=1
	lw	$3, 8($fp)
	lw	$2, 0($fp)
	addu16	$2, $2, $3
	sw	$2, 0($fp)
	j	$BB120_9
	nop
$BB120_9:                               #   in Loop: Header=BB120_4 Depth=1
	lw	$2, 8($fp)
	sll16	$2, $2, 1
	sw	$2, 8($fp)
	lw	$2, 4($fp)
	srl16	$2, $2, 1
	sw	$2, 4($fp)
	j	$BB120_4
	nop
$BB120_10:
	lw	$1, 0($fp)
	sw	$1, 12($fp)
	j	$BB120_11
	nop
$BB120_11:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
$func_end120:
	.size	__mulsi3_lm32, ($func_end120)-__mulsi3_lm32
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,@function
	.set	micromips
	.set	nomips16
	.ent	__udivmodsi4
__udivmodsi4:                           # @__udivmodsi4
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 24($fp)
	sw	$5, 20($fp)
	sw	$6, 16($fp)
	li16	$2, 1
	sw	$2, 12($fp)
	li16	$2, 0
	sw	$2, 8($fp)
	j	$BB121_1
	nop
$BB121_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$3, 24($fp)
	li16	$2, 0
	sltu	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB121_6
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	j	$BB121_3
	nop
$BB121_3:                               #   in Loop: Header=BB121_1 Depth=1
	lw	$1, 12($fp)
	li16	$2, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB121_6
# %bb.4:                                #   in Loop: Header=BB121_1 Depth=1
	j	$BB121_5
	nop
$BB121_5:                               #   in Loop: Header=BB121_1 Depth=1
	lbu	$2, 23($fp)
	andi16	$2, $2, 128
	sltiu	$2, $2, 1
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	j	$BB121_6
	nop
$BB121_6:                               #   in Loop: Header=BB121_1 Depth=1
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB121_9
# %bb.7:                                #   in Loop: Header=BB121_1 Depth=1
	j	$BB121_8
	nop
$BB121_8:                               #   in Loop: Header=BB121_1 Depth=1
	lw	$2, 20($fp)
	sll16	$2, $2, 1
	sw	$2, 20($fp)
	lw	$2, 12($fp)
	sll16	$2, $2, 1
	sw	$2, 12($fp)
	j	$BB121_1
	nop
$BB121_9:
	j	$BB121_10
	nop
$BB121_10:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB121_16
# %bb.11:                               #   in Loop: Header=BB121_10 Depth=1
	j	$BB121_12
	nop
$BB121_12:                              #   in Loop: Header=BB121_10 Depth=1
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	sltu	$1, $1, $2
	bnezc	$1, $BB121_15
# %bb.13:                               #   in Loop: Header=BB121_10 Depth=1
	j	$BB121_14
	nop
$BB121_14:                              #   in Loop: Header=BB121_10 Depth=1
	lw	$3, 20($fp)
	lw	$2, 24($fp)
	subu16	$2, $2, $3
	sw	$2, 24($fp)
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	or16	$2, $3
	sw	$2, 8($fp)
	j	$BB121_15
	nop
$BB121_15:                              #   in Loop: Header=BB121_10 Depth=1
	lw	$2, 12($fp)
	srl16	$2, $2, 1
	sw	$2, 12($fp)
	lw	$2, 20($fp)
	srl16	$2, $2, 1
	sw	$2, 20($fp)
	j	$BB121_10
	nop
$BB121_16:
	lw	$1, 16($fp)
	beqzc	$1, $BB121_19
# %bb.17:
	j	$BB121_18
	nop
$BB121_18:
	lw	$1, 24($fp)
	sw	$1, 28($fp)
	j	$BB121_20
	nop
$BB121_19:
	lw	$1, 8($fp)
	sw	$1, 28($fp)
	j	$BB121_20
	nop
$BB121_20:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__udivmodsi4
$func_end121:
	.size	__udivmodsi4, ($func_end121)-__udivmodsi4
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	2
	.type	__mspabi_cmpf,@function
	.set	micromips
	.set	nomips16
	.ent	__mspabi_cmpf
__mspabi_cmpf:                          # @__mspabi_cmpf
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$4, 24($fp)
	sw	$5, 20($fp)
	lw	$4, 24($fp)
	lw	$5, 20($fp)
	jal	__ltsf2
	nop
	bgez	$2, $BB122_3
	nop
# %bb.1:
	j	$BB122_2
	nop
$BB122_2:
	li16	$2, -1
	sw	$2, 28($fp)
	j	$BB122_7
	nop
$BB122_3:
	lw	$4, 24($fp)
	lw	$5, 20($fp)
	jal	__gtsf2
	nop
	blez	$2, $BB122_6
	nop
# %bb.4:
	j	$BB122_5
	nop
$BB122_5:
	li16	$2, 1
	sw	$2, 28($fp)
	j	$BB122_7
	nop
$BB122_6:
	li16	$2, 0
	sw	$2, 28($fp)
	j	$BB122_7
	nop
$BB122_7:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__mspabi_cmpf
$func_end122:
	.size	__mspabi_cmpf, ($func_end122)-__mspabi_cmpf
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	2
	.type	__mspabi_cmpd,@function
	.set	micromips
	.set	nomips16
	.ent	__mspabi_cmpd
__mspabi_cmpd:                          # @__mspabi_cmpd
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lw	$6, 16($fp)
	lw	$7, 20($fp)
	jal	__ltdf2
	nop
	bgez	$2, $BB123_3
	nop
# %bb.1:
	j	$BB123_2
	nop
$BB123_2:
	li16	$2, -1
	sw	$2, 36($fp)
	j	$BB123_7
	nop
$BB123_3:
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lw	$6, 16($fp)
	lw	$7, 20($fp)
	jal	__gtdf2
	nop
	blez	$2, $BB123_6
	nop
# %bb.4:
	j	$BB123_5
	nop
$BB123_5:
	li16	$2, 1
	sw	$2, 36($fp)
	j	$BB123_7
	nop
$BB123_6:
	li16	$2, 0
	sw	$2, 36($fp)
	j	$BB123_7
	nop
$BB123_7:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__mspabi_cmpd
$func_end123:
	.size	__mspabi_cmpd, ($func_end123)-__mspabi_cmpd
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	2
	.type	__mspabi_mpysll,@function
	.set	micromips
	.set	nomips16
	.ent	__mspabi_mpysll
__mspabi_mpysll:                        # @__mspabi_mpysll
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	mult	$1, $2
	mflo16	$2
	mfhi16	$3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__mspabi_mpysll
$func_end124:
	.size	__mspabi_mpysll, ($func_end124)-__mspabi_mpysll
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	2
	.type	__mspabi_mpyull,@function
	.set	micromips
	.set	nomips16
	.ent	__mspabi_mpyull
__mspabi_mpyull:                        # @__mspabi_mpyull
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	multu	$1, $2
	mflo16	$2
	mfhi16	$3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__mspabi_mpyull
$func_end125:
	.size	__mspabi_mpyull, ($func_end125)-__mspabi_mpyull
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	2
	.type	__mulhi3,@function
	.set	micromips
	.set	nomips16
	.ent	__mulhi3
__mulhi3:                               # @__mulhi3
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	li16	$2, 0
	sw	$2, 16($fp)
	sw	$2, 12($fp)
	lw	$1, 24($fp)
	bgez	$1, $BB126_3
	nop
# %bb.1:
	j	$BB126_2
	nop
$BB126_2:
	lw	$3, 24($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	sw	$2, 24($fp)
	li16	$2, 1
	sw	$2, 16($fp)
	j	$BB126_3
	nop
$BB126_3:
	li16	$2, 0
	sb	$2, 23($fp)
	j	$BB126_4
	nop
$BB126_4:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	li16	$2, 0
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB126_7
# %bb.5:                                #   in Loop: Header=BB126_4 Depth=1
	j	$BB126_6
	nop
$BB126_6:                               #   in Loop: Header=BB126_4 Depth=1
	lb	$1, 23($fp)
	sltiu	$2, $1, 32
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	j	$BB126_7
	nop
$BB126_7:                               #   in Loop: Header=BB126_4 Depth=1
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB126_14
# %bb.8:                                #   in Loop: Header=BB126_4 Depth=1
	j	$BB126_9
	nop
$BB126_9:                               #   in Loop: Header=BB126_4 Depth=1
	lbu	$2, 24($fp)
	andi16	$2, $2, 1
	beqzc	$2, $BB126_12
# %bb.10:                               #   in Loop: Header=BB126_4 Depth=1
	j	$BB126_11
	nop
$BB126_11:                              #   in Loop: Header=BB126_4 Depth=1
	lw	$3, 28($fp)
	lw	$2, 12($fp)
	addu16	$2, $2, $3
	sw	$2, 12($fp)
	j	$BB126_12
	nop
$BB126_12:                              #   in Loop: Header=BB126_4 Depth=1
	lw	$2, 28($fp)
	sll16	$2, $2, 1
	sw	$2, 28($fp)
	lw	$1, 24($fp)
	sra	$1, $1, 1
	sw	$1, 24($fp)
	j	$BB126_13
	nop
$BB126_13:                              #   in Loop: Header=BB126_4 Depth=1
	lbu	$2, 23($fp)
	addiur2	$2, $2, 1
	sb	$2, 23($fp)
	j	$BB126_4
	nop
$BB126_14:
	lw	$1, 16($fp)
	beqzc	$1, $BB126_17
# %bb.15:
	j	$BB126_16
	nop
$BB126_16:
	lw	$3, 12($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	move	$1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB126_18
	nop
$BB126_17:
	lw	$1, 12($fp)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB126_18
	nop
$BB126_18:
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__mulhi3
$func_end126:
	.size	__mulhi3, ($func_end126)-__mulhi3
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,@function
	.set	micromips
	.set	nomips16
	.ent	__divsi3
__divsi3:                               # @__divsi3
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	li16	$2, 0
	sw	$2, 20($fp)
	lw	$1, 28($fp)
	bgez	$1, $BB127_3
	nop
# %bb.1:
	j	$BB127_2
	nop
$BB127_2:
	lw	$3, 28($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	sw	$2, 28($fp)
	lw	$1, 20($fp)
	sltiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB127_3
	nop
$BB127_3:
	lw	$1, 24($fp)
	bgez	$1, $BB127_6
	nop
# %bb.4:
	j	$BB127_5
	nop
$BB127_5:
	lw	$3, 24($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	sw	$2, 24($fp)
	lw	$1, 20($fp)
	sltiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB127_6
	nop
$BB127_6:
	lw	$4, 28($fp)
	lw	$5, 24($fp)
	li16	$6, 0
	jal	__udivmodsi4
	nop
	sw	$2, 16($fp)
	lw	$1, 20($fp)
	beqzc	$1, $BB127_9
# %bb.7:
	j	$BB127_8
	nop
$BB127_8:
	lw	$3, 16($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	sw	$2, 16($fp)
	j	$BB127_9
	nop
$BB127_9:
	lw	$2, 16($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__divsi3
$func_end127:
	.size	__divsi3, ($func_end127)-__divsi3
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,@function
	.set	micromips
	.set	nomips16
	.ent	__modsi3
__modsi3:                               # @__modsi3
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	li16	$2, 0
	sw	$2, 20($fp)
	lw	$1, 28($fp)
	bgez	$1, $BB128_3
	nop
# %bb.1:
	j	$BB128_2
	nop
$BB128_2:
	lw	$3, 28($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	sw	$2, 28($fp)
	li16	$2, 1
	sw	$2, 20($fp)
	j	$BB128_3
	nop
$BB128_3:
	lw	$1, 24($fp)
	bgez	$1, $BB128_6
	nop
# %bb.4:
	j	$BB128_5
	nop
$BB128_5:
	lw	$3, 24($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	sw	$2, 24($fp)
	j	$BB128_6
	nop
$BB128_6:
	lw	$4, 28($fp)
	lw	$5, 24($fp)
	li16	$6, 1
	jal	__udivmodsi4
	nop
	sw	$2, 16($fp)
	lw	$1, 20($fp)
	beqzc	$1, $BB128_9
# %bb.7:
	j	$BB128_8
	nop
$BB128_8:
	lw	$3, 16($fp)
	li16	$2, 0
	subu16	$2, $2, $3
	sw	$2, 16($fp)
	j	$BB128_9
	nop
$BB128_9:
	lw	$2, 16($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__modsi3
$func_end128:
	.size	__modsi3, ($func_end128)-__modsi3
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	2
	.type	__udivmodhi4,@function
	.set	micromips
	.set	nomips16
	.ent	__udivmodhi4
__udivmodhi4:                           # @__udivmodhi4
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sh	$4, 20($fp)
	sh	$5, 18($fp)
	sw	$6, 12($fp)
	li16	$2, 1
	sh	$2, 10($fp)
	li16	$2, 0
	sh	$2, 8($fp)
	j	$BB129_1
	nop
$BB129_1:                               # =>This Inner Loop Header: Depth=1
	lhu	$1, 18($fp)
	lhu	$3, 20($fp)
	li16	$2, 0
	slt	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB129_6
# %bb.2:                                #   in Loop: Header=BB129_1 Depth=1
	j	$BB129_3
	nop
$BB129_3:                               #   in Loop: Header=BB129_1 Depth=1
	lhu	$1, 10($fp)
	li16	$2, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB129_6
# %bb.4:                                #   in Loop: Header=BB129_1 Depth=1
	j	$BB129_5
	nop
$BB129_5:                               #   in Loop: Header=BB129_1 Depth=1
	lhu	$2, 18($fp)
	andi16	$2, $2, 32768
	sltiu	$2, $2, 1
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	j	$BB129_6
	nop
$BB129_6:                               #   in Loop: Header=BB129_1 Depth=1
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB129_9
# %bb.7:                                #   in Loop: Header=BB129_1 Depth=1
	j	$BB129_8
	nop
$BB129_8:                               #   in Loop: Header=BB129_1 Depth=1
	lhu	$2, 18($fp)
	sll16	$2, $2, 1
	sh	$2, 18($fp)
	lhu	$2, 10($fp)
	sll16	$2, $2, 1
	sh	$2, 10($fp)
	j	$BB129_1
	nop
$BB129_9:
	j	$BB129_10
	nop
$BB129_10:                              # =>This Inner Loop Header: Depth=1
	lhu	$1, 10($fp)
	beqzc	$1, $BB129_16
# %bb.11:                               #   in Loop: Header=BB129_10 Depth=1
	j	$BB129_12
	nop
$BB129_12:                              #   in Loop: Header=BB129_10 Depth=1
	lhu	$1, 20($fp)
	lhu	$2, 18($fp)
	slt	$1, $1, $2
	bnezc	$1, $BB129_15
# %bb.13:                               #   in Loop: Header=BB129_10 Depth=1
	j	$BB129_14
	nop
$BB129_14:                              #   in Loop: Header=BB129_10 Depth=1
	lhu	$3, 18($fp)
	lhu	$2, 20($fp)
	subu16	$2, $2, $3
	sh	$2, 20($fp)
	lhu	$2, 10($fp)
	lhu	$3, 8($fp)
	or16	$2, $3
	sh	$2, 8($fp)
	j	$BB129_15
	nop
$BB129_15:                              #   in Loop: Header=BB129_10 Depth=1
	lhu	$2, 10($fp)
	srl16	$2, $2, 1
	sh	$2, 10($fp)
	lhu	$2, 18($fp)
	srl16	$2, $2, 1
	sh	$2, 18($fp)
	j	$BB129_10
	nop
$BB129_16:
	lw	$1, 12($fp)
	beqzc	$1, $BB129_19
# %bb.17:
	j	$BB129_18
	nop
$BB129_18:
	lhu	$1, 20($fp)
	sh	$1, 22($fp)
	j	$BB129_20
	nop
$BB129_19:
	lhu	$1, 8($fp)
	sh	$1, 22($fp)
	j	$BB129_20
	nop
$BB129_20:
	lhu	$2, 22($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__udivmodhi4
$func_end129:
	.size	__udivmodhi4, ($func_end129)-__udivmodhi4
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
	.set	micromips
	.set	nomips16
	.ent	__udivmodsi4_libgcc
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 24($fp)
	sw	$5, 20($fp)
	sw	$6, 16($fp)
	li16	$2, 1
	sw	$2, 12($fp)
	li16	$2, 0
	sw	$2, 8($fp)
	j	$BB130_1
	nop
$BB130_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$3, 24($fp)
	li16	$2, 0
	sltu	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB130_6
# %bb.2:                                #   in Loop: Header=BB130_1 Depth=1
	j	$BB130_3
	nop
$BB130_3:                               #   in Loop: Header=BB130_1 Depth=1
	lw	$1, 12($fp)
	li16	$2, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqzc	$1, $BB130_6
# %bb.4:                                #   in Loop: Header=BB130_1 Depth=1
	j	$BB130_5
	nop
$BB130_5:                               #   in Loop: Header=BB130_1 Depth=1
	lbu	$2, 23($fp)
	andi16	$2, $2, 128
	sltiu	$2, $2, 1
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	j	$BB130_6
	nop
$BB130_6:                               #   in Loop: Header=BB130_1 Depth=1
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	nop
	andi16	$2, $2, 1
	beqzc	$2, $BB130_9
# %bb.7:                                #   in Loop: Header=BB130_1 Depth=1
	j	$BB130_8
	nop
$BB130_8:                               #   in Loop: Header=BB130_1 Depth=1
	lw	$2, 20($fp)
	sll16	$2, $2, 1
	sw	$2, 20($fp)
	lw	$2, 12($fp)
	sll16	$2, $2, 1
	sw	$2, 12($fp)
	j	$BB130_1
	nop
$BB130_9:
	j	$BB130_10
	nop
$BB130_10:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqzc	$1, $BB130_16
# %bb.11:                               #   in Loop: Header=BB130_10 Depth=1
	j	$BB130_12
	nop
$BB130_12:                              #   in Loop: Header=BB130_10 Depth=1
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	sltu	$1, $1, $2
	bnezc	$1, $BB130_15
# %bb.13:                               #   in Loop: Header=BB130_10 Depth=1
	j	$BB130_14
	nop
$BB130_14:                              #   in Loop: Header=BB130_10 Depth=1
	lw	$3, 20($fp)
	lw	$2, 24($fp)
	subu16	$2, $2, $3
	sw	$2, 24($fp)
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	or16	$2, $3
	sw	$2, 8($fp)
	j	$BB130_15
	nop
$BB130_15:                              #   in Loop: Header=BB130_10 Depth=1
	lw	$2, 12($fp)
	srl16	$2, $2, 1
	sw	$2, 12($fp)
	lw	$2, 20($fp)
	srl16	$2, $2, 1
	sw	$2, 20($fp)
	j	$BB130_10
	nop
$BB130_16:
	lw	$1, 16($fp)
	beqzc	$1, $BB130_19
# %bb.17:
	j	$BB130_18
	nop
$BB130_18:
	lw	$1, 24($fp)
	sw	$1, 28($fp)
	j	$BB130_20
	nop
$BB130_19:
	lw	$1, 8($fp)
	sw	$1, 28($fp)
	j	$BB130_20
	nop
$BB130_20:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
$func_end130:
	.size	__udivmodsi4_libgcc, ($func_end130)-__udivmodsi4_libgcc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,@function
	.set	micromips
	.set	nomips16
	.ent	__ashldi3
__ashldi3:                              # @__ashldi3
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$6, 20($fp)
	li16	$2, 32
	sw	$2, 16($fp)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lbu	$2, 20($fp)
	andi16	$2, $2, 32
	beqzc	$2, $BB131_3
# %bb.1:
	j	$BB131_2
	nop
$BB131_2:
	li16	$2, 0
	sw	$2, 0($fp)
	lw	$1, 8($fp)
	lw	$2, 20($fp)
	addiu	$2, $2, -32
	sllv	$1, $1, $2
	sw	$1, 4($fp)
	j	$BB131_7
	nop
$BB131_3:
	lw	$1, 20($fp)
	bnezc	$1, $BB131_6
# %bb.4:
	j	$BB131_5
	nop
$BB131_5:
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	j	$BB131_8
	nop
$BB131_6:
	lw	$1, 8($fp)
	lw	$2, 20($fp)
	sllv	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 12($fp)
	lw	$4, 20($fp)
	sllv	$3, $1, $4
	lw	$1, 8($fp)
	li16	$2, 32
	subu16	$2, $2, $4
	srlv	$2, $1, $2
	or16	$2, $3
	sw	$2, 4($fp)
	j	$BB131_7
	nop
$BB131_7:
	lw	$1, 0($fp)
	lw	$2, 4($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	j	$BB131_8
	nop
$BB131_8:
	lw	$2, 32($fp)
	lw	$3, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__ashldi3
$func_end131:
	.size	__ashldi3, ($func_end131)-__ashldi3
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,@function
	.set	micromips
	.set	nomips16
	.ent	__ashrdi3
__ashrdi3:                              # @__ashrdi3
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$6, 20($fp)
	li16	$2, 32
	sw	$2, 16($fp)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lbu	$2, 20($fp)
	andi16	$2, $2, 32
	beqzc	$2, $BB132_3
# %bb.1:
	j	$BB132_2
	nop
$BB132_2:
	lw	$1, 12($fp)
	sra	$1, $1, 31
	sw	$1, 4($fp)
	lw	$1, 12($fp)
	lw	$2, 20($fp)
	addiu	$2, $2, -32
	srav	$1, $1, $2
	sw	$1, 0($fp)
	j	$BB132_7
	nop
$BB132_3:
	lw	$1, 20($fp)
	bnezc	$1, $BB132_6
# %bb.4:
	j	$BB132_5
	nop
$BB132_5:
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	j	$BB132_8
	nop
$BB132_6:
	lw	$1, 12($fp)
	lw	$2, 20($fp)
	srav	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 12($fp)
	lw	$2, 20($fp)
	li16	$3, 32
	subu16	$3, $3, $2
	sllv	$3, $1, $3
	lw	$1, 8($fp)
	srlv	$2, $1, $2
	or16	$2, $3
	sw	$2, 0($fp)
	j	$BB132_7
	nop
$BB132_7:
	lw	$1, 0($fp)
	lw	$2, 4($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	j	$BB132_8
	nop
$BB132_8:
	lw	$2, 32($fp)
	lw	$3, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__ashrdi3
$func_end132:
	.size	__ashrdi3, ($func_end132)-__ashrdi3
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	2
	.type	__bswapdi2,@function
	.set	micromips
	.set	nomips16
	.ent	__bswapdi2
__bswapdi2:                             # @__bswapdi2
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 4($fp)
	sw	$4, 0($fp)
	lw	$3, 0($fp)
	lw	$2, 4($fp)
	srl	$4, $2, 24
	lui	$5, 255
	move	$6, $5
	and16	$6, $2
	srl16	$6, $6, 8
	or16	$6, $4
	andi	$4, $2, 65280
	sll16	$4, $4, 8
	or16	$4, $6
	sll	$2, $2, 24
	or16	$2, $4
	srl	$4, $3, 24
	and16	$5, $3
	srl16	$5, $5, 8
	or16	$5, $4
	andi	$4, $3, 65280
	sll16	$4, $4, 8
	or16	$4, $5
	sll	$3, $3, 24
	or16	$3, $4
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__bswapdi2
$func_end133:
	.size	__bswapdi2, ($func_end133)-__bswapdi2
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	2
	.type	__bswapsi2,@function
	.set	micromips
	.set	nomips16
	.ent	__bswapsi2
__bswapsi2:                             # @__bswapsi2
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$2, 4($fp)
	srl	$3, $2, 24
	lui	$4, 255
	and16	$4, $2
	srl16	$4, $4, 8
	or16	$4, $3
	andi	$3, $2, 65280
	sll16	$3, $3, 8
	or16	$3, $4
	sll	$2, $2, 24
	or16	$2, $3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__bswapsi2
$func_end134:
	.size	__bswapsi2, ($func_end134)-__bswapsi2
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,@function
	.set	micromips
	.set	nomips16
	.ent	__clzsi2
__clzsi2:                               # @__clzsi2
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	lw	$1, 12($fp)
	sw	$1, 8($fp)
	lhu	$1, 10($fp)
	sll	$1, $1, 16
	sltiu	$2, $1, 1
	sll16	$2, $2, 4
	sw	$2, 4($fp)
	lw	$3, 4($fp)
	li16	$2, 16
	subu16	$2, $2, $3
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	lbu	$2, 9($fp)
	sll16	$2, $2, 8
	sltiu	$2, $2, 1
	sll16	$2, $2, 3
	sw	$2, 4($fp)
	lw	$3, 4($fp)
	li16	$2, 8
	subu16	$2, $2, $3
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$3, 4($fp)
	lw	$2, 0($fp)
	addu16	$2, $2, $3
	sw	$2, 0($fp)
	lw	$1, 8($fp)
	andi	$1, $1, 240
	sltiu	$2, $1, 1
	sll16	$2, $2, 2
	sw	$2, 4($fp)
	lw	$3, 4($fp)
	li16	$2, 4
	subu16	$2, $2, $3
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$3, 4($fp)
	lw	$2, 0($fp)
	addu16	$2, $2, $3
	sw	$2, 0($fp)
	lw	$1, 8($fp)
	andi	$1, $1, 12
	sltiu	$2, $1, 1
	sll16	$2, $2, 1
	sw	$2, 4($fp)
	lw	$2, 4($fp)
	li16	$4, 2
	subu16	$2, $4, $2
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$3, 4($fp)
	lw	$2, 0($fp)
	addu16	$2, $2, $3
	sw	$2, 0($fp)
	lw	$2, 0($fp)
	lw	$3, 8($fp)
	subu16	$4, $4, $3
	andi16	$3, $3, 2
	sltiu	$5, $3, 1
	li16	$3, 0
	subu16	$3, $3, $5
	and16	$3, $4
	addu16	$2, $2, $3
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__clzsi2
$func_end135:
	.size	__clzsi2, ($func_end135)-__clzsi2
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,@function
	.set	micromips
	.set	nomips16
	.ent	__cmpdi2
__cmpdi2:                               # @__cmpdi2
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	lw	$2, 20($fp)
	sw	$2, 4($fp)
	sw	$1, 0($fp)
	lw	$1, 12($fp)
	lw	$2, 4($fp)
	slt	$1, $1, $2
	beqzc	$1, $BB136_3
# %bb.1:
	j	$BB136_2
	nop
$BB136_2:
	li16	$2, 0
	sw	$2, 36($fp)
	j	$BB136_13
	nop
$BB136_3:
	lw	$2, 12($fp)
	lw	$1, 4($fp)
	slt	$1, $1, $2
	beqzc	$1, $BB136_6
# %bb.4:
	j	$BB136_5
	nop
$BB136_5:
	li16	$2, 2
	sw	$2, 36($fp)
	j	$BB136_13
	nop
$BB136_6:
	lw	$1, 8($fp)
	lw	$2, 0($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB136_9
# %bb.7:
	j	$BB136_8
	nop
$BB136_8:
	li16	$2, 0
	sw	$2, 36($fp)
	j	$BB136_13
	nop
$BB136_9:
	lw	$2, 8($fp)
	lw	$1, 0($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB136_12
# %bb.10:
	j	$BB136_11
	nop
$BB136_11:
	li16	$2, 2
	sw	$2, 36($fp)
	j	$BB136_13
	nop
$BB136_12:
	li16	$2, 1
	sw	$2, 36($fp)
	j	$BB136_13
	nop
$BB136_13:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__cmpdi2
$func_end136:
	.size	__cmpdi2, ($func_end136)-__cmpdi2
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,@function
	.set	micromips
	.set	nomips16
	.ent	__aeabi_lcmp
__aeabi_lcmp:                           # @__aeabi_lcmp
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	lw	$5, 28($fp)
	lw	$4, 24($fp)
	lw	$7, 20($fp)
	lw	$6, 16($fp)
	jal	__cmpdi2
	nop
	addiur2	$2, $2, -1
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
$func_end137:
	.size	__aeabi_lcmp, ($func_end137)-__aeabi_lcmp
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,@function
	.set	micromips
	.set	nomips16
	.ent	__ctzsi2
__ctzsi2:                               # @__ctzsi2
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	lw	$1, 12($fp)
	sw	$1, 8($fp)
	lhu	$1, 8($fp)
	sltiu	$2, $1, 1
	sll16	$2, $2, 4
	sw	$2, 4($fp)
	lw	$2, 4($fp)
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	lbu	$1, 8($fp)
	sltiu	$2, $1, 1
	sll16	$2, $2, 3
	sw	$2, 4($fp)
	lw	$2, 4($fp)
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$3, 4($fp)
	lw	$2, 0($fp)
	addu16	$2, $2, $3
	sw	$2, 0($fp)
	lw	$2, 8($fp)
	andi16	$2, $2, 15
	sltiu	$2, $2, 1
	sll16	$2, $2, 2
	sw	$2, 4($fp)
	lw	$2, 4($fp)
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$3, 4($fp)
	lw	$2, 0($fp)
	addu16	$2, $2, $3
	sw	$2, 0($fp)
	lw	$2, 8($fp)
	andi16	$2, $2, 3
	sltiu	$2, $2, 1
	sll16	$2, $2, 1
	sw	$2, 4($fp)
	lw	$2, 4($fp)
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$2, 8($fp)
	andi16	$2, $2, 3
	sw	$2, 8($fp)
	lw	$3, 4($fp)
	lw	$2, 0($fp)
	addu16	$2, $2, $3
	sw	$2, 0($fp)
	lw	$2, 0($fp)
	lw	$3, 8($fp)
	srl16	$5, $3, 1
	li16	$4, 2
	subu16	$4, $4, $5
	andi16	$3, $3, 1
	addiur2	$3, $3, -1
	and16	$3, $4
	addu16	$2, $2, $3
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__ctzsi2
$func_end138:
	.size	__ctzsi2, ($func_end138)-__ctzsi2
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,@function
	.set	micromips
	.set	nomips16
	.ent	__lshrdi3
__lshrdi3:                              # @__lshrdi3
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$6, 20($fp)
	li16	$2, 32
	sw	$2, 16($fp)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lbu	$2, 20($fp)
	andi16	$2, $2, 32
	beqzc	$2, $BB139_3
# %bb.1:
	j	$BB139_2
	nop
$BB139_2:
	li16	$2, 0
	sw	$2, 4($fp)
	lw	$1, 12($fp)
	lw	$2, 20($fp)
	addiu	$2, $2, -32
	srlv	$1, $1, $2
	sw	$1, 0($fp)
	j	$BB139_7
	nop
$BB139_3:
	lw	$1, 20($fp)
	bnezc	$1, $BB139_6
# %bb.4:
	j	$BB139_5
	nop
$BB139_5:
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	j	$BB139_8
	nop
$BB139_6:
	lw	$1, 12($fp)
	lw	$2, 20($fp)
	srlv	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 12($fp)
	lw	$2, 20($fp)
	li16	$3, 32
	subu16	$3, $3, $2
	sllv	$3, $1, $3
	lw	$1, 8($fp)
	srlv	$2, $1, $2
	or16	$2, $3
	sw	$2, 0($fp)
	j	$BB139_7
	nop
$BB139_7:
	lw	$1, 0($fp)
	lw	$2, 4($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	j	$BB139_8
	nop
$BB139_8:
	lw	$2, 32($fp)
	lw	$3, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__lshrdi3
$func_end139:
	.size	__lshrdi3, ($func_end139)-__lshrdi3
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	2
	.type	__muldsi3,@function
	.set	micromips
	.set	nomips16
	.ent	__muldsi3
__muldsi3:                              # @__muldsi3
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	li16	$2, 16
	sw	$2, 12($fp)
	ori	$1, $zero, 65535
	sw	$1, 8($fp)
	lhu	$1, 28($fp)
	lhu	$2, 24($fp)
	mul	$1, $1, $2
	sw	$1, 16($fp)
	lhu	$1, 18($fp)
	sw	$1, 4($fp)
	lhu	$1, 16($fp)
	sw	$1, 16($fp)
	lhu	$1, 30($fp)
	lhu	$2, 24($fp)
	mul	$3, $1, $2
	lw	$2, 4($fp)
	addu16	$2, $2, $3
	sw	$2, 4($fp)
	lw	$1, 4($fp)
	sll	$3, $1, 16
	lw	$2, 16($fp)
	addu16	$2, $2, $3
	sw	$2, 16($fp)
	lhu	$1, 6($fp)
	sw	$1, 20($fp)
	lhu	$1, 18($fp)
	sw	$1, 4($fp)
	lhu	$1, 16($fp)
	sw	$1, 16($fp)
	lhu	$1, 26($fp)
	lhu	$2, 28($fp)
	mul	$3, $1, $2
	lw	$2, 4($fp)
	addu16	$2, $2, $3
	sw	$2, 4($fp)
	lw	$1, 4($fp)
	sll	$3, $1, 16
	lw	$2, 16($fp)
	addu16	$2, $2, $3
	sw	$2, 16($fp)
	lhu	$3, 6($fp)
	lw	$2, 20($fp)
	addu16	$2, $2, $3
	sw	$2, 20($fp)
	lhu	$1, 30($fp)
	lhu	$2, 26($fp)
	mul	$3, $1, $2
	lw	$2, 20($fp)
	addu16	$2, $2, $3
	sw	$2, 20($fp)
	lw	$2, 16($fp)
	lw	$3, 20($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__muldsi3
$func_end140:
	.size	__muldsi3, ($func_end140)-__muldsi3
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	2
	.type	__muldi3_compiler_rt,@function
	.set	micromips
	.set	nomips16
	.ent	__muldi3_compiler_rt
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 52($fp)
	sw	$4, 48($fp)
	sw	$7, 44($fp)
	sw	$6, 40($fp)
	lw	$1, 48($fp)
	lw	$2, 52($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	lw	$1, 40($fp)
	lw	$2, 44($fp)
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	lw	$4, 32($fp)
	lw	$5, 24($fp)
	jal	__muldsi3
	nop
	sw	$3, 20($fp)
	sw	$2, 16($fp)
	lw	$1, 36($fp)
	lw	$2, 24($fp)
	mul	$2, $1, $2
	lw	$1, 32($fp)
	lw	$3, 28($fp)
	mul	$3, $1, $3
	addu16	$3, $2, $3
	lw	$2, 20($fp)
	addu16	$2, $2, $3
	sw	$2, 20($fp)
	lw	$2, 16($fp)
	lw	$3, 20($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
$func_end141:
	.size	__muldi3_compiler_rt, ($func_end141)-__muldi3_compiler_rt
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	2
	.type	__negdi2,@function
	.set	micromips
	.set	nomips16
	.ent	__negdi2
__negdi2:                               # @__negdi2
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 4($fp)
	sw	$4, 0($fp)
	lw	$4, 4($fp)
	lw	$5, 0($fp)
	li16	$3, 0
	subu16	$2, $3, $5
	sltu	$5, $zero, $5
	addu16	$4, $4, $5
	subu16	$3, $3, $4
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__negdi2
$func_end142:
	.size	__negdi2, ($func_end142)-__negdi2
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,@function
	.set	micromips
	.set	nomips16
	.ent	__paritydi2
__paritydi2:                            # @__paritydi2
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 20($fp)
	sw	$4, 16($fp)
	lw	$1, 16($fp)
	lw	$2, 20($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lw	$3, 12($fp)
	lw	$2, 8($fp)
	xor16	$2, $3
	sw	$2, 4($fp)
	lw	$3, 4($fp)
	srl	$2, $3, 16
	xor16	$2, $3
	sw	$2, 4($fp)
	lw	$3, 4($fp)
	srl16	$2, $3, 8
	xor16	$2, $3
	sw	$2, 4($fp)
	lw	$3, 4($fp)
	srl16	$2, $3, 4
	xor16	$2, $3
	sw	$2, 4($fp)
	lw	$2, 4($fp)
	andi16	$2, $2, 15
	addiu	$1, $zero, 27030
	srlv	$2, $1, $2
	andi16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__paritydi2
$func_end143:
	.size	__paritydi2, ($func_end143)-__paritydi2
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,@function
	.set	micromips
	.set	nomips16
	.ent	__paritysi2
__paritysi2:                            # @__paritysi2
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	lw	$3, 0($fp)
	srl	$2, $3, 16
	xor16	$2, $3
	sw	$2, 0($fp)
	lw	$3, 0($fp)
	srl16	$2, $3, 8
	xor16	$2, $3
	sw	$2, 0($fp)
	lw	$3, 0($fp)
	srl16	$2, $3, 4
	xor16	$2, $3
	sw	$2, 0($fp)
	lw	$2, 0($fp)
	andi16	$2, $2, 15
	addiu	$1, $zero, 27030
	srlv	$2, $1, $2
	andi16	$2, $2, 1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__paritysi2
$func_end144:
	.size	__paritysi2, ($func_end144)-__paritysi2
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,@function
	.set	micromips
	.set	nomips16
	.ent	__popcountdi2
__popcountdi2:                          # @__popcountdi2
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 20($fp)
	sw	$4, 16($fp)
	lw	$1, 16($fp)
	lw	$2, 20($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	srl16	$5, $3, 1
	srl16	$7, $2, 1
	lui	$1, 21845
	ori	$4, $1, 21845
	move	$6, $4
	and16	$6, $7
	and16	$4, $5
	sltu	$5, $3, $4
	subu16	$2, $2, $6
	subu16	$2, $2, $5
	subu16	$3, $3, $4
	sw	$3, 8($fp)
	sw	$2, 12($fp)
	lw	$7, 8($fp)
	lw	$6, 12($fp)
	srl16	$3, $6, 2
	srl16	$2, $7, 2
	lui	$1, 13107
	ori	$5, $1, 13107
	move	$4, $5
	and16	$4, $2
	move	$2, $5
	and16	$2, $3
	move	$3, $5
	and16	$3, $7
	and16	$5, $6
	addu16	$2, $2, $5
	addu16	$3, $4, $3
	sltu	$4, $3, $4
	addu16	$2, $2, $4
	sw	$3, 8($fp)
	sw	$2, 12($fp)
	lw	$3, 8($fp)
	lw	$2, 12($fp)
	sll	$4, $2, 28
	srl16	$5, $3, 4
	or16	$4, $5
	srl16	$5, $2, 4
	addu16	$2, $2, $5
	addu16	$4, $3, $4
	sltu	$3, $4, $3
	addu16	$5, $2, $3
	lui	$1, 3855
	ori	$3, $1, 3855
	move	$2, $3
	and16	$2, $5
	and16	$3, $4
	sw	$3, 8($fp)
	sw	$2, 12($fp)
	lw	$3, 12($fp)
	lw	$2, 8($fp)
	addu16	$2, $2, $3
	sw	$2, 4($fp)
	lw	$2, 4($fp)
	srl	$3, $2, 16
	addu16	$2, $2, $3
	sw	$2, 4($fp)
	lw	$2, 4($fp)
	srl16	$3, $2, 8
	addu16	$2, $2, $3
	andi	$2, $2, 127
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__popcountdi2
$func_end145:
	.size	__popcountdi2, ($func_end145)-__popcountdi2
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,@function
	.set	micromips
	.set	nomips16
	.ent	__popcountsi2
__popcountsi2:                          # @__popcountsi2
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	lw	$2, 0($fp)
	srl16	$4, $2, 1
	lui	$1, 21845
	ori	$3, $1, 21845
	and16	$3, $4
	subu16	$2, $2, $3
	sw	$2, 0($fp)
	lw	$4, 0($fp)
	srl16	$5, $4, 2
	lui	$1, 13107
	ori	$3, $1, 13107
	move	$2, $3
	and16	$2, $5
	and16	$3, $4
	addu16	$2, $2, $3
	sw	$2, 0($fp)
	lw	$2, 0($fp)
	srl16	$3, $2, 4
	addu16	$3, $2, $3
	lui	$1, 3855
	ori	$2, $1, 3855
	and16	$2, $3
	sw	$2, 0($fp)
	lw	$2, 0($fp)
	srl	$3, $2, 16
	addu16	$2, $2, $3
	sw	$2, 0($fp)
	lw	$2, 0($fp)
	srl16	$3, $2, 8
	addu16	$2, $2, $3
	andi16	$2, $2, 63
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__popcountsi2
$func_end146:
	.size	__popcountsi2, ($func_end146)-__popcountsi2
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	2
	.type	__powidf2,@function
	.set	micromips
	.set	nomips16
	.ent	__powidf2
__powidf2:                              # @__powidf2
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 44($fp)
	sw	$4, 40($fp)
	sw	$6, 36($fp)
	lw	$1, 36($fp)
	srl	$1, $1, 31
	sw	$1, 32($fp)
	lui	$1, 16368
	sw	$1, 28($fp)
	li16	$2, 0
	sw	$2, 24($fp)
	j	$BB147_1
	nop
$BB147_1:                               # =>This Inner Loop Header: Depth=1
	lbu	$2, 36($fp)
	andi16	$2, $2, 1
	beqzc	$2, $BB147_4
# %bb.2:                                #   in Loop: Header=BB147_1 Depth=1
	j	$BB147_3
	nop
$BB147_3:                               #   in Loop: Header=BB147_1 Depth=1
	lw	$6, 40($fp)
	lw	$7, 44($fp)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	jal	__muldf3
	nop
	sw	$3, 28($fp)
	sw	$2, 24($fp)
	j	$BB147_4
	nop
$BB147_4:                               #   in Loop: Header=BB147_1 Depth=1
	lw	$2, 36($fp)
	srl	$3, $2, 31
	addu16	$2, $2, $3
	sra	$1, $2, 1
	sw	$1, 36($fp)
	lw	$1, 36($fp)
	bnezc	$1, $BB147_7
# %bb.5:
	j	$BB147_6
	nop
$BB147_6:
	j	$BB147_8
	nop
$BB147_7:                               #   in Loop: Header=BB147_1 Depth=1
	lw	$6, 40($fp)
	lw	$7, 44($fp)
	move	$4, $6
	move	$5, $7
	jal	__muldf3
	nop
	sw	$3, 44($fp)
	sw	$2, 40($fp)
	j	$BB147_1
	nop
$BB147_8:
	lw	$1, 32($fp)
	beqzc	$1, $BB147_11
# %bb.9:
	j	$BB147_10
	nop
$BB147_10:
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	li16	$4, 0
	lui	$5, 16368
	jal	__divdf3
	nop
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	j	$BB147_12
	nop
$BB147_11:
	lw	$1, 28($fp)
	lw	$2, 24($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB147_12
	nop
$BB147_12:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__powidf2
$func_end147:
	.size	__powidf2, ($func_end147)-__powidf2
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	2
	.type	__powisf2,@function
	.set	micromips
	.set	nomips16
	.ent	__powisf2
__powisf2:                              # @__powisf2
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a0
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	lw	$1, 32($fp)
	srl	$1, $1, 31
	sw	$1, 28($fp)
	lui	$1, 16256
	sw	$1, 24($fp)
	j	$BB148_1
	nop
$BB148_1:                               # =>This Inner Loop Header: Depth=1
	lbu	$2, 32($fp)
	andi16	$2, $2, 1
	beqzc	$2, $BB148_4
# %bb.2:                                #   in Loop: Header=BB148_1 Depth=1
	j	$BB148_3
	nop
$BB148_3:                               #   in Loop: Header=BB148_1 Depth=1
	lw	$5, 36($fp)
	lw	$4, 24($fp)
	jal	__mulsf3
	nop
	sw	$2, 24($fp)
	j	$BB148_4
	nop
$BB148_4:                               #   in Loop: Header=BB148_1 Depth=1
	lw	$2, 32($fp)
	srl	$3, $2, 31
	addu16	$2, $2, $3
	sra	$1, $2, 1
	sw	$1, 32($fp)
	lw	$1, 32($fp)
	bnezc	$1, $BB148_7
# %bb.5:
	j	$BB148_6
	nop
$BB148_6:
	j	$BB148_8
	nop
$BB148_7:                               #   in Loop: Header=BB148_1 Depth=1
	lw	$5, 36($fp)
	move	$4, $5
	jal	__mulsf3
	nop
	sw	$2, 36($fp)
	j	$BB148_1
	nop
$BB148_8:
	lw	$1, 28($fp)
	beqzc	$1, $BB148_11
# %bb.9:
	j	$BB148_10
	nop
$BB148_10:
	lw	$5, 24($fp)
	lui	$4, 16256
	jal	__divsf3
	nop
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	j	$BB148_12
	nop
$BB148_11:
	lw	$1, 24($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB148_12
	nop
$BB148_12:
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__powisf2
$func_end148:
	.size	__powisf2, ($func_end148)-__powisf2
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,@function
	.set	micromips
	.set	nomips16
	.ent	__ucmpdi2
__ucmpdi2:                              # @__ucmpdi2
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	lw	$2, 20($fp)
	sw	$2, 4($fp)
	sw	$1, 0($fp)
	lw	$1, 12($fp)
	lw	$2, 4($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB149_3
# %bb.1:
	j	$BB149_2
	nop
$BB149_2:
	li16	$2, 0
	sw	$2, 36($fp)
	j	$BB149_13
	nop
$BB149_3:
	lw	$2, 12($fp)
	lw	$1, 4($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB149_6
# %bb.4:
	j	$BB149_5
	nop
$BB149_5:
	li16	$2, 2
	sw	$2, 36($fp)
	j	$BB149_13
	nop
$BB149_6:
	lw	$1, 8($fp)
	lw	$2, 0($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB149_9
# %bb.7:
	j	$BB149_8
	nop
$BB149_8:
	li16	$2, 0
	sw	$2, 36($fp)
	j	$BB149_13
	nop
$BB149_9:
	lw	$2, 8($fp)
	lw	$1, 0($fp)
	sltu	$1, $1, $2
	beqzc	$1, $BB149_12
# %bb.10:
	j	$BB149_11
	nop
$BB149_11:
	li16	$2, 2
	sw	$2, 36($fp)
	j	$BB149_13
	nop
$BB149_12:
	li16	$2, 1
	sw	$2, 36($fp)
	j	$BB149_13
	nop
$BB149_13:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__ucmpdi2
$func_end149:
	.size	__ucmpdi2, ($func_end149)-__ucmpdi2
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,@function
	.set	micromips
	.set	nomips16
	.ent	__aeabi_ulcmp
__aeabi_ulcmp:                          # @__aeabi_ulcmp
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	lw	$5, 28($fp)
	lw	$4, 24($fp)
	lw	$7, 20($fp)
	lw	$6, 16($fp)
	jal	__ucmpdi2
	nop
	addiur2	$2, $2, -1
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jrc	$ra
	.set	at
	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
$func_end150:
	.size	__aeabi_ulcmp, ($func_end150)-__aeabi_ulcmp
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
