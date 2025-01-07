	.text
	.abicalls
	.section	.mdebug.abi64,"",@progbits
	.nan	legacy
	.module	softfloat
	.text
	.file	"mini-libc.c"
	.globl	make_ti                         # -- Begin function make_ti
	.p2align	3
	.type	make_ti,@function
	.set	nomicromips
	.set	nomips16
	.ent	make_ti
make_ti:                                # @make_ti
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$1, 24($fp)
	sd	$1, 8($fp)
	ld	$1, 16($fp)
	sd	$1, 0($fp)
	ld	$2, 0($fp)
	ld	$3, 8($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	make_ti
.Lfunc_end0:
	.size	make_ti, .Lfunc_end0-make_ti
                                        # -- End function
	.globl	make_tu                         # -- Begin function make_tu
	.p2align	3
	.type	make_tu,@function
	.set	nomicromips
	.set	nomips16
	.ent	make_tu
make_tu:                                # @make_tu
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$1, 24($fp)
	sd	$1, 8($fp)
	ld	$1, 16($fp)
	sd	$1, 0($fp)
	ld	$2, 0($fp)
	ld	$3, 8($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	make_tu
.Lfunc_end1:
	.size	make_tu, .Lfunc_end1-make_tu
                                        # -- End function
	.globl	memmove                         # -- Begin function memmove
	.p2align	3
	.type	memmove,@function
	.set	nomicromips
	.set	nomips16
	.ent	memmove
memmove:                                # @memmove
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$1, 40($fp)
	sd	$1, 16($fp)
	ld	$1, 32($fp)
	sd	$1, 8($fp)
	ld	$1, 8($fp)
	ld	$2, 16($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB2_8
	nop
# %bb.1:
	b	.LBB2_2
	nop
.LBB2_2:
	ld	$2, 24($fp)
	ld	$1, 8($fp)
	daddu	$1, $1, $2
	sd	$1, 8($fp)
	ld	$2, 24($fp)
	ld	$1, 16($fp)
	daddu	$1, $1, $2
	sd	$1, 16($fp)
	b	.LBB2_3
	nop
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	beqz	$1, .LBB2_7
	nop
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	b	.LBB2_5
	nop
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	ld	$1, 8($fp)
	daddiu	$2, $1, -1
	sd	$2, 8($fp)
	lbu	$1, -1($1)
	ld	$2, 16($fp)
	daddiu	$3, $2, -1
	sd	$3, 16($fp)
	sb	$1, -1($2)
	b	.LBB2_6
	nop
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	b	.LBB2_3
	nop
.LBB2_7:
	b	.LBB2_17
	nop
.LBB2_8:
	ld	$1, 8($fp)
	ld	$2, 16($fp)
	beq	$1, $2, .LBB2_16
	nop
# %bb.9:
	b	.LBB2_10
	nop
.LBB2_10:
	b	.LBB2_11
	nop
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	beqz	$1, .LBB2_15
	nop
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	b	.LBB2_13
	nop
.LBB2_13:                               #   in Loop: Header=BB2_11 Depth=1
	ld	$1, 8($fp)
	daddiu	$2, $1, 1
	sd	$2, 8($fp)
	lbu	$1, 0($1)
	ld	$2, 16($fp)
	daddiu	$3, $2, 1
	sd	$3, 16($fp)
	sb	$1, 0($2)
	b	.LBB2_14
	nop
.LBB2_14:                               #   in Loop: Header=BB2_11 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	b	.LBB2_11
	nop
.LBB2_15:
	b	.LBB2_16
	nop
.LBB2_16:
	b	.LBB2_17
	nop
.LBB2_17:
	ld	$2, 40($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	memmove
.Lfunc_end2:
	.size	memmove, .Lfunc_end2-memmove
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	3
	.type	memccpy,@function
	.set	nomicromips
	.set	nomips16
	.ent	memccpy
memccpy:                                # @memccpy
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $6
	sd	$4, 48($fp)
	sd	$5, 40($fp)
	sw	$1, 36($fp)
	sd	$7, 24($fp)
	ld	$1, 48($fp)
	sd	$1, 16($fp)
	ld	$1, 40($fp)
	sd	$1, 8($fp)
	lbu	$1, 36($fp)
	sw	$1, 36($fp)
	b	.LBB3_1
	nop
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB3_4
	nop
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_3
	nop
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	ld	$1, 8($fp)
	lbu	$1, 0($1)
	ld	$2, 16($fp)
	sb	$1, 0($2)
	lw	$2, 36($fp)
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB3_4
	nop
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB3_8
	nop
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_6
	nop
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_7
	nop
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	ld	$1, 8($fp)
	daddiu	$1, $1, 1
	sd	$1, 8($fp)
	ld	$1, 16($fp)
	daddiu	$1, $1, 1
	sd	$1, 16($fp)
	b	.LBB3_1
	nop
.LBB3_8:
	ld	$1, 24($fp)
	beqz	$1, .LBB3_11
	nop
# %bb.9:
	b	.LBB3_10
	nop
.LBB3_10:
	ld	$1, 16($fp)
	daddiu	$1, $1, 1
	sd	$1, 56($fp)
	b	.LBB3_12
	nop
.LBB3_11:
	daddiu	$1, $zero, 0
	sd	$zero, 56($fp)
	b	.LBB3_12
	nop
.LBB3_12:
	ld	$2, 56($fp)
	move	$sp, $fp
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	memccpy
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	3
	.type	memchr,@function
	.set	nomicromips
	.set	nomips16
	.ent	memchr
memchr:                                 # @memchr
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 40($fp)
	sw	$1, 36($fp)
	sd	$6, 24($fp)
	ld	$1, 40($fp)
	sd	$1, 16($fp)
	lbu	$1, 36($fp)
	sw	$1, 36($fp)
	b	.LBB4_1
	nop
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB4_4
	nop
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_3
	nop
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	ld	$1, 16($fp)
	lbu	$1, 0($1)
	lw	$2, 36($fp)
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB4_4
	nop
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB4_8
	nop
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_6
	nop
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_7
	nop
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	ld	$1, 16($fp)
	daddiu	$1, $1, 1
	sd	$1, 16($fp)
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	b	.LBB4_1
	nop
.LBB4_8:
	ld	$1, 24($fp)
	beqz	$1, .LBB4_11
	nop
# %bb.9:
	b	.LBB4_10
	nop
.LBB4_10:
	ld	$1, 16($fp)
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB4_12
	nop
.LBB4_11:
	daddiu	$1, $zero, 0
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB4_12
	nop
.LBB4_12:
	ld	$2, 0($fp)                      # 8-byte Folded Reload
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	memchr
.Lfunc_end4:
	.size	memchr, .Lfunc_end4-memchr
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	3
	.type	memcmp,@function
	.set	nomicromips
	.set	nomips16
	.ent	memcmp
memcmp:                                 # @memcmp
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$1, 40($fp)
	sd	$1, 16($fp)
	ld	$1, 32($fp)
	sd	$1, 8($fp)
	b	.LBB5_1
	nop
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB5_4
	nop
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	b	.LBB5_3
	nop
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	ld	$1, 16($fp)
	lbu	$1, 0($1)
	ld	$2, 8($fp)
	lbu	$2, 0($2)
	xor	$1, $1, $2
	sltiu	$1, $1, 1
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB5_4
	nop
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB5_8
	nop
# %bb.5:                                #   in Loop: Header=BB5_1 Depth=1
	b	.LBB5_6
	nop
.LBB5_6:                                #   in Loop: Header=BB5_1 Depth=1
	b	.LBB5_7
	nop
.LBB5_7:                                #   in Loop: Header=BB5_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	ld	$1, 16($fp)
	daddiu	$1, $1, 1
	sd	$1, 16($fp)
	ld	$1, 8($fp)
	daddiu	$1, $1, 1
	sd	$1, 8($fp)
	b	.LBB5_1
	nop
.LBB5_8:
	ld	$1, 24($fp)
	beqz	$1, .LBB5_11
	nop
# %bb.9:
	b	.LBB5_10
	nop
.LBB5_10:
	ld	$1, 16($fp)
	lbu	$1, 0($1)
	ld	$2, 8($fp)
	lbu	$2, 0($2)
	subu	$1, $1, $2
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	.LBB5_12
	nop
.LBB5_11:
	addiu	$1, $zero, 0
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	.LBB5_12
	nop
.LBB5_12:
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	memcmp
.Lfunc_end5:
	.size	memcmp, .Lfunc_end5-memcmp
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	3
	.type	memcpy,@function
	.set	nomicromips
	.set	nomips16
	.ent	memcpy
memcpy:                                 # @memcpy
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$1, 40($fp)
	sd	$1, 16($fp)
	ld	$1, 32($fp)
	sd	$1, 8($fp)
	b	.LBB6_1
	nop
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	beqz	$1, .LBB6_5
	nop
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	b	.LBB6_3
	nop
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	ld	$1, 8($fp)
	daddiu	$2, $1, 1
	sd	$2, 8($fp)
	lbu	$1, 0($1)
	ld	$2, 16($fp)
	daddiu	$3, $2, 1
	sd	$3, 16($fp)
	sb	$1, 0($2)
	b	.LBB6_4
	nop
.LBB6_4:                                #   in Loop: Header=BB6_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	b	.LBB6_1
	nop
.LBB6_5:
	ld	$2, 40($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	memcpy
.Lfunc_end6:
	.size	memcpy, .Lfunc_end6-memcpy
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	3
	.type	memrchr,@function
	.set	nomicromips
	.set	nomips16
	.ent	memrchr
memrchr:                                # @memrchr
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 32($fp)
	sw	$1, 28($fp)
	sd	$6, 16($fp)
	ld	$1, 32($fp)
	sd	$1, 8($fp)
	lbu	$1, 28($fp)
	sw	$1, 28($fp)
	b	.LBB7_1
	nop
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 16($fp)
	daddiu	$2, $1, -1
	sd	$2, 16($fp)
	beqz	$1, .LBB7_7
	nop
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	b	.LBB7_3
	nop
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	ld	$1, 8($fp)
	ld	$2, 16($fp)
	daddu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 28($fp)
	bne	$1, $2, .LBB7_6
	nop
# %bb.4:
	b	.LBB7_5
	nop
.LBB7_5:
	ld	$1, 8($fp)
	ld	$2, 16($fp)
	daddu	$1, $1, $2
	sd	$1, 40($fp)
	b	.LBB7_8
	nop
.LBB7_6:                                #   in Loop: Header=BB7_1 Depth=1
	b	.LBB7_1
	nop
.LBB7_7:
	daddiu	$1, $zero, 0
	sd	$zero, 40($fp)
	b	.LBB7_8
	nop
.LBB7_8:
	ld	$2, 40($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	memrchr
.Lfunc_end7:
	.size	memrchr, .Lfunc_end7-memrchr
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	3
	.type	memset,@function
	.set	nomicromips
	.set	nomips16
	.ent	memset
memset:                                 # @memset
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 40($fp)
	sw	$1, 36($fp)
	sd	$6, 24($fp)
	ld	$1, 40($fp)
	sd	$1, 16($fp)
	b	.LBB8_1
	nop
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	beqz	$1, .LBB8_5
	nop
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_3
	nop
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 36($fp)
	ld	$2, 16($fp)
	sb	$1, 0($2)
	b	.LBB8_4
	nop
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	ld	$1, 16($fp)
	daddiu	$1, $1, 1
	sd	$1, 16($fp)
	b	.LBB8_1
	nop
.LBB8_5:
	ld	$2, 40($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	memset
.Lfunc_end8:
	.size	memset, .Lfunc_end8-memset
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	3
	.type	stpcpy,@function
	.set	nomicromips
	.set	nomips16
	.ent	stpcpy
stpcpy:                                 # @stpcpy
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	sd	$5, 0($fp)
	b	.LBB9_1
	nop
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 0($fp)
	lbu	$1, 0($1)
	ld	$2, 8($fp)
	sb	$1, 0($2)
	beqz	$1, .LBB9_5
	nop
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	b	.LBB9_3
	nop
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	b	.LBB9_4
	nop
.LBB9_4:                                #   in Loop: Header=BB9_1 Depth=1
	ld	$1, 0($fp)
	daddiu	$1, $1, 1
	sd	$1, 0($fp)
	ld	$1, 8($fp)
	daddiu	$1, $1, 1
	sd	$1, 8($fp)
	b	.LBB9_1
	nop
.LBB9_5:
	ld	$2, 8($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	stpcpy
.Lfunc_end9:
	.size	stpcpy, .Lfunc_end9-stpcpy
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	3
	.type	strchrnul,@function
	.set	nomicromips
	.set	nomips16
	.ent	strchrnul
strchrnul:                              # @strchrnul
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 8($fp)
	sw	$1, 4($fp)
	lbu	$1, 4($fp)
	sw	$1, 4($fp)
	b	.LBB10_1
	nop
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 8($fp)
	lb	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB10_4
	nop
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_3
	nop
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	ld	$1, 8($fp)
	lbu	$1, 0($1)
	lw	$2, 4($fp)
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	.LBB10_4
	nop
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB10_8
	nop
# %bb.5:                                #   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_6
	nop
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_7
	nop
.LBB10_7:                               #   in Loop: Header=BB10_1 Depth=1
	ld	$1, 8($fp)
	daddiu	$1, $1, 1
	sd	$1, 8($fp)
	b	.LBB10_1
	nop
.LBB10_8:
	ld	$2, 8($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	strchrnul
.Lfunc_end10:
	.size	strchrnul, .Lfunc_end10-strchrnul
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	3
	.type	strchr,@function
	.set	nomicromips
	.set	nomips16
	.ent	strchr
strchr:                                 # @strchr
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 16($fp)
	sw	$1, 12($fp)
	b	.LBB11_1
	nop
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 16($fp)
	lb	$1, 0($1)
	lw	$2, 12($fp)
	bne	$1, $2, .LBB11_4
	nop
# %bb.2:
	b	.LBB11_3
	nop
.LBB11_3:
	ld	$1, 16($fp)
	sd	$1, 24($fp)
	b	.LBB11_8
	nop
.LBB11_4:                               #   in Loop: Header=BB11_1 Depth=1
	b	.LBB11_5
	nop
.LBB11_5:                               #   in Loop: Header=BB11_1 Depth=1
	ld	$1, 16($fp)
	daddiu	$2, $1, 1
	sd	$2, 16($fp)
	lbu	$1, 0($1)
	bnez	$1, .LBB11_1
	nop
# %bb.6:
	b	.LBB11_7
	nop
.LBB11_7:
	daddiu	$1, $zero, 0
	sd	$zero, 24($fp)
	b	.LBB11_8
	nop
.LBB11_8:
	ld	$2, 24($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	strchr
.Lfunc_end11:
	.size	strchr, .Lfunc_end11-strchr
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	3
	.type	strcmp,@function
	.set	nomicromips
	.set	nomips16
	.ent	strcmp
strcmp:                                 # @strcmp
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	b	.LBB12_1
	nop
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	lb	$1, 0($1)
	ld	$2, 16($fp)
	lb	$2, 0($2)
	addiu	$3, $zero, 0
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	bne	$1, $2, .LBB12_4
	nop
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_3
	nop
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	ld	$1, 24($fp)
	lb	$1, 0($1)
	sltu	$1, $zero, $1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB12_4
	nop
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB12_8
	nop
# %bb.5:                                #   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_6
	nop
.LBB12_6:                               #   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_7
	nop
.LBB12_7:                               #   in Loop: Header=BB12_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	ld	$1, 16($fp)
	daddiu	$1, $1, 1
	sd	$1, 16($fp)
	b	.LBB12_1
	nop
.LBB12_8:
	ld	$1, 24($fp)
	lbu	$1, 0($1)
	ld	$2, 16($fp)
	lbu	$2, 0($2)
	subu	$1, $1, $2
                                        # implicit-def: $v0_64
	move	$2, $1
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	strcmp
.Lfunc_end12:
	.size	strcmp, .Lfunc_end12-strcmp
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	3
	.type	strlen,@function
	.set	nomicromips
	.set	nomips16
	.ent	strlen
strlen:                                 # @strlen
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	ld	$1, 8($fp)
	sd	$1, 0($fp)
	b	.LBB13_1
	nop
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 8($fp)
	lbu	$1, 0($1)
	beqz	$1, .LBB13_5
	nop
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	b	.LBB13_3
	nop
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	b	.LBB13_4
	nop
.LBB13_4:                               #   in Loop: Header=BB13_1 Depth=1
	ld	$1, 8($fp)
	daddiu	$1, $1, 1
	sd	$1, 8($fp)
	b	.LBB13_1
	nop
.LBB13_5:
	ld	$1, 8($fp)
	ld	$2, 0($fp)
	dsubu	$2, $1, $2
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	strlen
.Lfunc_end13:
	.size	strlen, .Lfunc_end13-strlen
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	3
	.type	strncmp,@function
	.set	nomicromips
	.set	nomips16
	.ent	strncmp
strncmp:                                # @strncmp
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 48($fp)
	sd	$5, 40($fp)
	sd	$6, 32($fp)
	ld	$1, 48($fp)
	sd	$1, 24($fp)
	ld	$1, 40($fp)
	sd	$1, 16($fp)
	ld	$1, 32($fp)
	daddiu	$2, $1, -1
	sd	$2, 32($fp)
	bnez	$1, .LBB14_3
	nop
# %bb.1:
	b	.LBB14_2
	nop
.LBB14_2:
	sw	$zero, 60($fp)
	b	.LBB14_16
	nop
.LBB14_3:
	b	.LBB14_4
	nop
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	lbu	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB14_11
	nop
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=1
	b	.LBB14_6
	nop
.LBB14_6:                               #   in Loop: Header=BB14_4 Depth=1
	ld	$1, 16($fp)
	lbu	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB14_11
	nop
# %bb.7:                                #   in Loop: Header=BB14_4 Depth=1
	b	.LBB14_8
	nop
.LBB14_8:                               #   in Loop: Header=BB14_4 Depth=1
	ld	$1, 32($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB14_11
	nop
# %bb.9:                                #   in Loop: Header=BB14_4 Depth=1
	b	.LBB14_10
	nop
.LBB14_10:                              #   in Loop: Header=BB14_4 Depth=1
	ld	$1, 24($fp)
	lbu	$1, 0($1)
	ld	$2, 16($fp)
	lbu	$2, 0($2)
	xor	$1, $1, $2
	sltiu	$1, $1, 1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB14_11
	nop
.LBB14_11:                              #   in Loop: Header=BB14_4 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB14_15
	nop
# %bb.12:                               #   in Loop: Header=BB14_4 Depth=1
	b	.LBB14_13
	nop
.LBB14_13:                              #   in Loop: Header=BB14_4 Depth=1
	b	.LBB14_14
	nop
.LBB14_14:                              #   in Loop: Header=BB14_4 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	ld	$1, 16($fp)
	daddiu	$1, $1, 1
	sd	$1, 16($fp)
	ld	$1, 32($fp)
	daddiu	$1, $1, -1
	sd	$1, 32($fp)
	b	.LBB14_4
	nop
.LBB14_15:
	ld	$1, 24($fp)
	lbu	$1, 0($1)
	ld	$2, 16($fp)
	lbu	$2, 0($2)
	subu	$1, $1, $2
	sw	$1, 60($fp)
	b	.LBB14_16
	nop
.LBB14_16:
	lw	$2, 60($fp)
	move	$sp, $fp
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	strncmp
.Lfunc_end14:
	.size	strncmp, .Lfunc_end14-strncmp
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	3
	.type	swab,@function
	.set	nomicromips
	.set	nomips16
	.ent	swab
swab:                                   # @swab
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$1, 40($fp)
	sd	$1, 16($fp)
	ld	$1, 32($fp)
	sd	$1, 8($fp)
	b	.LBB15_1
	nop
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	slti	$1, $1, 2
	bnez	$1, .LBB15_5
	nop
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	b	.LBB15_3
	nop
.LBB15_3:                               #   in Loop: Header=BB15_1 Depth=1
	ld	$1, 16($fp)
	lbu	$1, 1($1)
	ld	$2, 8($fp)
	sb	$1, 0($2)
	ld	$1, 16($fp)
	lbu	$1, 0($1)
	ld	$2, 8($fp)
	sb	$1, 1($2)
	ld	$1, 8($fp)
	daddiu	$1, $1, 2
	sd	$1, 8($fp)
	ld	$1, 16($fp)
	daddiu	$1, $1, 2
	sd	$1, 16($fp)
	b	.LBB15_4
	nop
.LBB15_4:                               #   in Loop: Header=BB15_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -2
	sd	$1, 24($fp)
	b	.LBB15_1
	nop
.LBB15_5:
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	swab
.Lfunc_end15:
	.size	swab, .Lfunc_end15-swab
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	3
	.type	isalpha,@function
	.set	nomicromips
	.set	nomips16
	.ent	isalpha
isalpha:                                # @isalpha
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	ori	$1, $1, 32
	addiu	$1, $1, -97
	sltiu	$1, $1, 26
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	isalpha
.Lfunc_end16:
	.size	isalpha, .Lfunc_end16-isalpha
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	3
	.type	isascii,@function
	.set	nomicromips
	.set	nomips16
	.ent	isascii
isascii:                                # @isascii
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$2, $zero, -128
	and	$1, $1, $2
	sltiu	$1, $1, 1
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	isascii
.Lfunc_end17:
	.size	isascii, .Lfunc_end17-isascii
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	3
	.type	isblank,@function
	.set	nomicromips
	.set	nomips16
	.ent	isblank
isblank:                                # @isblank
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$3, $zero, 1
	addiu	$2, $zero, 32
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	beq	$1, $2, .LBB18_3
	nop
# %bb.1:
	b	.LBB18_2
	nop
.LBB18_2:
	lw	$1, 12($fp)
	addiu	$2, $zero, 9
	xor	$1, $1, $2
	sltiu	$1, $1, 1
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB18_3
	nop
.LBB18_3:
	lw	$2, 8($fp)                      # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	isblank
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	3
	.type	iscntrl,@function
	.set	nomicromips
	.set	nomips16
	.ent	iscntrl
iscntrl:                                # @iscntrl
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	sltiu	$1, $1, 32
	addiu	$2, $zero, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, .LBB19_3
	nop
# %bb.1:
	b	.LBB19_2
	nop
.LBB19_2:
	lw	$1, 12($fp)
	addiu	$2, $zero, 127
	xor	$1, $1, $2
	sltiu	$1, $1, 1
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB19_3
	nop
.LBB19_3:
	lw	$2, 8($fp)                      # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	iscntrl
.Lfunc_end19:
	.size	iscntrl, .Lfunc_end19-iscntrl
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	3
	.type	isdigit,@function
	.set	nomicromips
	.set	nomips16
	.ent	isdigit
isdigit:                                # @isdigit
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, -48
	sltiu	$1, $1, 10
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	isdigit
.Lfunc_end20:
	.size	isdigit, .Lfunc_end20-isdigit
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	3
	.type	isgraph,@function
	.set	nomicromips
	.set	nomips16
	.ent	isgraph
isgraph:                                # @isgraph
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, -33
	sltiu	$1, $1, 94
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	isgraph
.Lfunc_end21:
	.size	isgraph, .Lfunc_end21-isgraph
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	3
	.type	islower,@function
	.set	nomicromips
	.set	nomips16
	.ent	islower
islower:                                # @islower
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, -97
	sltiu	$1, $1, 26
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	islower
.Lfunc_end22:
	.size	islower, .Lfunc_end22-islower
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	3
	.type	isprint,@function
	.set	nomicromips
	.set	nomips16
	.ent	isprint
isprint:                                # @isprint
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, -32
	sltiu	$1, $1, 95
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	isprint
.Lfunc_end23:
	.size	isprint, .Lfunc_end23-isprint
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	3
	.type	isspace,@function
	.set	nomicromips
	.set	nomips16
	.ent	isspace
isspace:                                # @isspace
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$3, $zero, 1
	addiu	$2, $zero, 32
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	beq	$1, $2, .LBB24_3
	nop
# %bb.1:
	b	.LBB24_2
	nop
.LBB24_2:
	lw	$1, 12($fp)
	addiu	$1, $1, -9
	sltiu	$1, $1, 5
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB24_3
	nop
.LBB24_3:
	lw	$2, 8($fp)                      # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	isspace
.Lfunc_end24:
	.size	isspace, .Lfunc_end24-isspace
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	3
	.type	isupper,@function
	.set	nomicromips
	.set	nomips16
	.ent	isupper
isupper:                                # @isupper
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, -65
	sltiu	$1, $1, 26
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	isupper
.Lfunc_end25:
	.size	isupper, .Lfunc_end25-isupper
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	3
	.type	iswcntrl,@function
	.set	nomicromips
	.set	nomips16
	.ent	iswcntrl
iswcntrl:                               # @iswcntrl
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	sltiu	$1, $1, 32
	addiu	$2, $zero, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, .LBB26_7
	nop
# %bb.1:
	b	.LBB26_2
	nop
.LBB26_2:
	lw	$1, 12($fp)
	addiu	$1, $1, -127
	sltiu	$1, $1, 33
	addiu	$2, $zero, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, .LBB26_7
	nop
# %bb.3:
	b	.LBB26_4
	nop
.LBB26_4:
	lw	$1, 12($fp)
	addiu	$1, $1, -8232
	sltiu	$1, $1, 2
	addiu	$2, $zero, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, .LBB26_7
	nop
# %bb.5:
	b	.LBB26_6
	nop
.LBB26_6:
	lw	$1, 12($fp)
	lui	$2, 65535
	ori	$2, $2, 7
	addu	$1, $1, $2
	sltiu	$1, $1, 3
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB26_7
	nop
.LBB26_7:
	lw	$2, 8($fp)                      # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	iswcntrl
.Lfunc_end26:
	.size	iswcntrl, .Lfunc_end26-iswcntrl
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	3
	.type	iswdigit,@function
	.set	nomicromips
	.set	nomips16
	.ent	iswdigit
iswdigit:                               # @iswdigit
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, -48
	sltiu	$1, $1, 10
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	iswdigit
.Lfunc_end27:
	.size	iswdigit, .Lfunc_end27-iswdigit
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	3
	.type	iswprint,@function
	.set	nomicromips
	.set	nomips16
	.ent	iswprint
iswprint:                               # @iswprint
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	sltiu	$1, $1, 255
	beqz	$1, .LBB28_3
	nop
# %bb.1:
	b	.LBB28_2
	nop
.LBB28_2:
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	andi	$2, $1, 127
	addiu	$1, $zero, 32
	slt	$1, $1, $2
	sw	$1, 12($fp)
	b	.LBB28_16
	nop
.LBB28_3:
	lw	$1, 8($fp)
	sltiu	$1, $1, 8232
	bnez	$1, .LBB28_9
	nop
# %bb.4:
	b	.LBB28_5
	nop
.LBB28_5:
	lw	$1, 8($fp)
	addiu	$1, $1, -8234
	ori	$2, $zero, 47062
	sltu	$1, $1, $2
	bnez	$1, .LBB28_9
	nop
# %bb.6:
	b	.LBB28_7
	nop
.LBB28_7:
	lw	$1, 8($fp)
	lui	$2, 65535
	ori	$2, $2, 8192
	addu	$1, $1, $2
	sltiu	$1, $1, 8185
	beqz	$1, .LBB28_10
	nop
# %bb.8:
	b	.LBB28_9
	nop
.LBB28_9:
	addiu	$1, $zero, 1
	sw	$1, 12($fp)
	b	.LBB28_16
	nop
.LBB28_10:
	lw	$1, 8($fp)
	lui	$2, 65535
	ori	$2, $2, 4
	addu	$2, $1, $2
	lui	$1, 16
	ori	$1, $1, 3
	sltu	$1, $1, $2
	bnez	$1, .LBB28_14
	nop
# %bb.11:
	b	.LBB28_12
	nop
.LBB28_12:
	lw	$1, 8($fp)
	andi	$1, $1, 65534
	ori	$2, $zero, 65534
	bne	$1, $2, .LBB28_15
	nop
# %bb.13:
	b	.LBB28_14
	nop
.LBB28_14:
	sw	$zero, 12($fp)
	b	.LBB28_16
	nop
.LBB28_15:
	addiu	$1, $zero, 1
	sw	$1, 12($fp)
	b	.LBB28_16
	nop
.LBB28_16:
	lw	$2, 12($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	iswprint
.Lfunc_end28:
	.size	iswprint, .Lfunc_end28-iswprint
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	3
	.type	iswxdigit,@function
	.set	nomicromips
	.set	nomips16
	.ent	iswxdigit
iswxdigit:                              # @iswxdigit
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, -48
	sltiu	$1, $1, 10
	addiu	$2, $zero, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, .LBB29_3
	nop
# %bb.1:
	b	.LBB29_2
	nop
.LBB29_2:
	lw	$1, 12($fp)
	ori	$1, $1, 32
	addiu	$1, $1, -97
	sltiu	$1, $1, 6
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB29_3
	nop
.LBB29_3:
	lw	$2, 8($fp)                      # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	iswxdigit
.Lfunc_end29:
	.size	iswxdigit, .Lfunc_end29-iswxdigit
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	3
	.type	toascii,@function
	.set	nomicromips
	.set	nomips16
	.ent	toascii
toascii:                                # @toascii
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	andi	$1, $1, 127
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	toascii
.Lfunc_end30:
	.size	toascii, .Lfunc_end30-toascii
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	3
	.type	fdim,@function
	.set	nomicromips
	.set	nomips16
	.ent	fdim
fdim:                                   # @fdim
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(fdim)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(fdim)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$1, 24($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	daddiu	$2, $2, -1
	and	$1, $1, $2
	daddiu	$2, $zero, 2047
	dsll	$2, $2, 52
	daddiu	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB31_3
	nop
# %bb.1:
	b	.LBB31_2
	nop
.LBB31_2:
	ld	$1, 24($fp)
	sd	$1, 32($fp)
	b	.LBB31_11
	nop
.LBB31_3:
	ld	$1, 16($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	daddiu	$2, $2, -1
	and	$1, $1, $2
	daddiu	$2, $zero, 2047
	dsll	$2, $2, 52
	daddiu	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB31_6
	nop
# %bb.4:
	b	.LBB31_5
	nop
.LBB31_5:
	ld	$1, 16($fp)
	sd	$1, 32($fp)
	b	.LBB31_11
	nop
.LBB31_6:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 24($fp)
	ld	$5, 16($fp)
	ld	$25, %call16(__gtdf2)($gp)
	.reloc .Ltmp0, R_MIPS_JALR, __gtdf2
.Ltmp0:
	jalr	$25
	nop
	blez	$2, .LBB31_9
	nop
# %bb.7:
	b	.LBB31_8
	nop
.LBB31_8:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 24($fp)
	ld	$5, 16($fp)
	ld	$25, %call16(__subdf3)($gp)
	.reloc .Ltmp1, R_MIPS_JALR, __subdf3
.Ltmp1:
	jalr	$25
	nop
	sd	$2, 0($fp)                      # 8-byte Folded Spill
	b	.LBB31_10
	nop
.LBB31_9:
	daddiu	$1, $zero, 0
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB31_10
	nop
.LBB31_10:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	sd	$1, 32($fp)
	b	.LBB31_11
	nop
.LBB31_11:
	ld	$2, 32($fp)
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	fdim
.Lfunc_end31:
	.size	fdim, .Lfunc_end31-fdim
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	3
	.type	fdimf,@function
	.set	nomicromips
	.set	nomips16
	.ent	fdimf
fdimf:                                  # @fdimf
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(fdimf)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(fdimf)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$4, 32($fp)
	sw	$5, 28($fp)
	lw	$1, 32($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB32_3
	nop
# %bb.1:
	b	.LBB32_2
	nop
.LBB32_2:
	lw	$1, 32($fp)
	sw	$1, 36($fp)
	b	.LBB32_11
	nop
.LBB32_3:
	lw	$1, 28($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB32_6
	nop
# %bb.4:
	b	.LBB32_5
	nop
.LBB32_5:
	lw	$1, 28($fp)
	sw	$1, 36($fp)
	b	.LBB32_11
	nop
.LBB32_6:
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	lw	$4, 32($fp)
	lw	$5, 28($fp)
	ld	$25, %call16(__gtsf2)($gp)
	.reloc .Ltmp2, R_MIPS_JALR, __gtsf2
.Ltmp2:
	jalr	$25
	nop
	blez	$2, .LBB32_9
	nop
# %bb.7:
	b	.LBB32_8
	nop
.LBB32_8:
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	lw	$4, 32($fp)
	lw	$5, 28($fp)
	ld	$25, %call16(__subsf3)($gp)
	.reloc .Ltmp3, R_MIPS_JALR, __subsf3
.Ltmp3:
	jalr	$25
	nop
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	b	.LBB32_10
	nop
.LBB32_9:
	addiu	$1, $zero, 0
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB32_10
	nop
.LBB32_10:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	sw	$1, 36($fp)
	b	.LBB32_11
	nop
.LBB32_11:
	lw	$2, 36($fp)
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	fdimf
.Lfunc_end32:
	.size	fdimf, .Lfunc_end32-fdimf
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	3
	.type	fmax,@function
	.set	nomicromips
	.set	nomips16
	.ent	fmax
fmax:                                   # @fmax
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	sd	$gp, 56($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(fmax)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(fmax)))
	sd	$1, 24($fp)                     # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	ld	$1, 40($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	daddiu	$2, $2, -1
	and	$1, $1, $2
	daddiu	$2, $zero, 2047
	dsll	$2, $2, 52
	daddiu	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB33_3
	nop
# %bb.1:
	b	.LBB33_2
	nop
.LBB33_2:
	ld	$1, 32($fp)
	sd	$1, 48($fp)
	b	.LBB33_18
	nop
.LBB33_3:
	ld	$1, 32($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	daddiu	$2, $2, -1
	and	$1, $1, $2
	daddiu	$2, $zero, 2047
	dsll	$2, $2, 52
	daddiu	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB33_6
	nop
# %bb.4:
	b	.LBB33_5
	nop
.LBB33_5:
	ld	$1, 40($fp)
	sd	$1, 48($fp)
	b	.LBB33_18
	nop
.LBB33_6:
	ld	$1, 40($fp)
	dsrl	$1, $1, 63
                                        # kill: def $at killed $at killed $at_64
	sll	$1, $1, 0
	ld	$2, 32($fp)
	dsrl	$2, $2, 63
                                        # kill: def $v0 killed $v0 killed $v0_64
	sll	$2, $2, 0
	beq	$1, $2, .LBB33_13
	nop
# %bb.7:
	b	.LBB33_8
	nop
.LBB33_8:
	ld	$1, 40($fp)
	bgez	$1, .LBB33_11
	nop
# %bb.9:
	b	.LBB33_10
	nop
.LBB33_10:
	ld	$1, 32($fp)
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	b	.LBB33_12
	nop
.LBB33_11:
	ld	$1, 40($fp)
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	b	.LBB33_12
	nop
.LBB33_12:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	sd	$1, 48($fp)
	b	.LBB33_18
	nop
.LBB33_13:
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$4, 40($fp)
	ld	$5, 32($fp)
	ld	$25, %call16(__ltdf2)($gp)
	.reloc .Ltmp4, R_MIPS_JALR, __ltdf2
.Ltmp4:
	jalr	$25
	nop
	bgez	$2, .LBB33_16
	nop
# %bb.14:
	b	.LBB33_15
	nop
.LBB33_15:
	ld	$1, 32($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB33_17
	nop
.LBB33_16:
	ld	$1, 40($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB33_17
	nop
.LBB33_17:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	sd	$1, 48($fp)
	b	.LBB33_18
	nop
.LBB33_18:
	ld	$2, 48($fp)
	move	$sp, $fp
	ld	$gp, 56($sp)                    # 8-byte Folded Reload
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	fmax
.Lfunc_end33:
	.size	fmax, .Lfunc_end33-fmax
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	3
	.type	fmaxf,@function
	.set	nomicromips
	.set	nomips16
	.ent	fmaxf
fmaxf:                                  # @fmaxf
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(fmaxf)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(fmaxf)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$4, 32($fp)
	sw	$5, 28($fp)
	lw	$1, 32($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB34_3
	nop
# %bb.1:
	b	.LBB34_2
	nop
.LBB34_2:
	lw	$1, 28($fp)
	sw	$1, 36($fp)
	b	.LBB34_18
	nop
.LBB34_3:
	lw	$1, 28($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB34_6
	nop
# %bb.4:
	b	.LBB34_5
	nop
.LBB34_5:
	lw	$1, 32($fp)
	sw	$1, 36($fp)
	b	.LBB34_18
	nop
.LBB34_6:
	lw	$1, 32($fp)
	srl	$1, $1, 31
	lw	$2, 28($fp)
	srl	$2, $2, 31
	beq	$1, $2, .LBB34_13
	nop
# %bb.7:
	b	.LBB34_8
	nop
.LBB34_8:
	lw	$1, 32($fp)
	bgez	$1, .LBB34_11
	nop
# %bb.9:
	b	.LBB34_10
	nop
.LBB34_10:
	lw	$1, 28($fp)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB34_12
	nop
.LBB34_11:
	lw	$1, 32($fp)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB34_12
	nop
.LBB34_12:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	sw	$1, 36($fp)
	b	.LBB34_18
	nop
.LBB34_13:
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	lw	$4, 32($fp)
	lw	$5, 28($fp)
	ld	$25, %call16(__ltsf2)($gp)
	.reloc .Ltmp5, R_MIPS_JALR, __ltsf2
.Ltmp5:
	jalr	$25
	nop
	bgez	$2, .LBB34_16
	nop
# %bb.14:
	b	.LBB34_15
	nop
.LBB34_15:
	lw	$1, 28($fp)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB34_17
	nop
.LBB34_16:
	lw	$1, 32($fp)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB34_17
	nop
.LBB34_17:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	sw	$1, 36($fp)
	b	.LBB34_18
	nop
.LBB34_18:
	lw	$2, 36($fp)
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	fmaxf
.Lfunc_end34:
	.size	fmaxf, .Lfunc_end34-fmaxf
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	3
	.type	fmaxl,@function
	.set	nomicromips
	.set	nomips16
	.ent	fmaxl
fmaxl:                                  # @fmaxl
	.frame	$fp,144,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -144
	sd	$ra, 136($sp)                   # 8-byte Folded Spill
	sd	$fp, 128($sp)                   # 8-byte Folded Spill
	sd	$gp, 120($sp)                   # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(fmaxl)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(fmaxl)))
	sd	$1, 48($fp)                     # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a3_64
                                        # kill: def $at_64 killed $a2_64
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 88($fp)
	sd	$4, 80($fp)
	sd	$7, 72($fp)
	sd	$6, 64($fp)
	ld	$2, 80($fp)
	ld	$1, 88($fp)
	daddiu	$3, $zero, 1
	dsll	$3, $3, 63
	daddiu	$3, $3, -1
	and	$1, $1, $3
	daddiu	$3, $zero, 32767
	dsll	$3, $3, 48
	slt	$4, $1, $3
	sw	$4, 56($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 60($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB35_2
	nop
# %bb.1:
	lw	$1, 56($fp)                     # 4-byte Folded Reload
	sw	$1, 60($fp)                     # 4-byte Folded Spill
.LBB35_2:
	lw	$1, 60($fp)                     # 4-byte Folded Reload
	bnez	$1, .LBB35_5
	nop
# %bb.3:
	b	.LBB35_4
	nop
.LBB35_4:
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 104($fp)
	sd	$1, 96($fp)
	b	.LBB35_22
	nop
.LBB35_5:
	ld	$2, 64($fp)
	ld	$1, 72($fp)
	daddiu	$3, $zero, 1
	dsll	$3, $3, 63
	daddiu	$3, $3, -1
	and	$1, $1, $3
	daddiu	$3, $zero, 32767
	dsll	$3, $3, 48
	slt	$4, $1, $3
	sw	$4, 40($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 44($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB35_7
	nop
# %bb.6:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	sw	$1, 44($fp)                     # 4-byte Folded Spill
.LBB35_7:
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	bnez	$1, .LBB35_10
	nop
# %bb.8:
	b	.LBB35_9
	nop
.LBB35_9:
	ld	$1, 80($fp)
	ld	$2, 88($fp)
	sd	$2, 104($fp)
	sd	$1, 96($fp)
	b	.LBB35_22
	nop
.LBB35_10:
	ld	$1, 88($fp)
	dsrl	$1, $1, 63
                                        # kill: def $at killed $at killed $at_64
	sll	$1, $1, 0
	ld	$2, 72($fp)
	dsrl	$2, $2, 63
                                        # kill: def $v0 killed $v0 killed $v0_64
	sll	$2, $2, 0
	beq	$1, $2, .LBB35_17
	nop
# %bb.11:
	b	.LBB35_12
	nop
.LBB35_12:
	ld	$1, 88($fp)
	bgez	$1, .LBB35_15
	nop
# %bb.13:
	b	.LBB35_14
	nop
.LBB35_14:
	ld	$1, 72($fp)
	ld	$2, 64($fp)
	sd	$2, 24($fp)                     # 8-byte Folded Spill
	sd	$1, 32($fp)                     # 8-byte Folded Spill
	b	.LBB35_16
	nop
.LBB35_15:
	ld	$1, 88($fp)
	ld	$2, 80($fp)
	sd	$2, 24($fp)                     # 8-byte Folded Spill
	sd	$1, 32($fp)                     # 8-byte Folded Spill
	b	.LBB35_16
	nop
.LBB35_16:
	ld	$2, 24($fp)                     # 8-byte Folded Reload
	ld	$1, 32($fp)                     # 8-byte Folded Reload
	sd	$2, 96($fp)
	sd	$1, 104($fp)
	b	.LBB35_22
	nop
.LBB35_17:
	ld	$gp, 48($fp)                    # 8-byte Folded Reload
	ld	$4, 80($fp)
	ld	$5, 88($fp)
	ld	$6, 64($fp)
	ld	$7, 72($fp)
	ld	$25, %call16(__lttf2)($gp)
	.reloc .Ltmp6, R_MIPS_JALR, __lttf2
.Ltmp6:
	jalr	$25
	nop
	bgez	$2, .LBB35_20
	nop
# %bb.18:
	b	.LBB35_19
	nop
.LBB35_19:
	ld	$1, 72($fp)
	ld	$2, 64($fp)
	sd	$2, 8($fp)                      # 8-byte Folded Spill
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	b	.LBB35_21
	nop
.LBB35_20:
	ld	$1, 88($fp)
	ld	$2, 80($fp)
	sd	$2, 8($fp)                      # 8-byte Folded Spill
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	b	.LBB35_21
	nop
.LBB35_21:
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	sd	$2, 96($fp)
	sd	$1, 104($fp)
	b	.LBB35_22
	nop
.LBB35_22:
	ld	$2, 96($fp)
	ld	$4, 104($fp)
	move	$sp, $fp
	ld	$gp, 120($sp)                   # 8-byte Folded Reload
	ld	$fp, 128($sp)                   # 8-byte Folded Reload
	ld	$ra, 136($sp)                   # 8-byte Folded Reload
	daddiu	$sp, $sp, 144
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	fmaxl
.Lfunc_end35:
	.size	fmaxl, .Lfunc_end35-fmaxl
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	3
	.type	fmin,@function
	.set	nomicromips
	.set	nomips16
	.ent	fmin
fmin:                                   # @fmin
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	sd	$gp, 56($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(fmin)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(fmin)))
	sd	$1, 24($fp)                     # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	ld	$1, 40($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	daddiu	$2, $2, -1
	and	$1, $1, $2
	daddiu	$2, $zero, 2047
	dsll	$2, $2, 52
	daddiu	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB36_3
	nop
# %bb.1:
	b	.LBB36_2
	nop
.LBB36_2:
	ld	$1, 32($fp)
	sd	$1, 48($fp)
	b	.LBB36_18
	nop
.LBB36_3:
	ld	$1, 32($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	daddiu	$2, $2, -1
	and	$1, $1, $2
	daddiu	$2, $zero, 2047
	dsll	$2, $2, 52
	daddiu	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB36_6
	nop
# %bb.4:
	b	.LBB36_5
	nop
.LBB36_5:
	ld	$1, 40($fp)
	sd	$1, 48($fp)
	b	.LBB36_18
	nop
.LBB36_6:
	ld	$1, 40($fp)
	dsrl	$1, $1, 63
                                        # kill: def $at killed $at killed $at_64
	sll	$1, $1, 0
	ld	$2, 32($fp)
	dsrl	$2, $2, 63
                                        # kill: def $v0 killed $v0 killed $v0_64
	sll	$2, $2, 0
	beq	$1, $2, .LBB36_13
	nop
# %bb.7:
	b	.LBB36_8
	nop
.LBB36_8:
	ld	$1, 40($fp)
	bgez	$1, .LBB36_11
	nop
# %bb.9:
	b	.LBB36_10
	nop
.LBB36_10:
	ld	$1, 40($fp)
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	b	.LBB36_12
	nop
.LBB36_11:
	ld	$1, 32($fp)
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	b	.LBB36_12
	nop
.LBB36_12:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	sd	$1, 48($fp)
	b	.LBB36_18
	nop
.LBB36_13:
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$4, 40($fp)
	ld	$5, 32($fp)
	ld	$25, %call16(__ltdf2)($gp)
	.reloc .Ltmp7, R_MIPS_JALR, __ltdf2
.Ltmp7:
	jalr	$25
	nop
	bgez	$2, .LBB36_16
	nop
# %bb.14:
	b	.LBB36_15
	nop
.LBB36_15:
	ld	$1, 40($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB36_17
	nop
.LBB36_16:
	ld	$1, 32($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB36_17
	nop
.LBB36_17:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	sd	$1, 48($fp)
	b	.LBB36_18
	nop
.LBB36_18:
	ld	$2, 48($fp)
	move	$sp, $fp
	ld	$gp, 56($sp)                    # 8-byte Folded Reload
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	fmin
.Lfunc_end36:
	.size	fmin, .Lfunc_end36-fmin
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	3
	.type	fminf,@function
	.set	nomicromips
	.set	nomips16
	.ent	fminf
fminf:                                  # @fminf
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(fminf)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(fminf)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$4, 32($fp)
	sw	$5, 28($fp)
	lw	$1, 32($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB37_3
	nop
# %bb.1:
	b	.LBB37_2
	nop
.LBB37_2:
	lw	$1, 28($fp)
	sw	$1, 36($fp)
	b	.LBB37_18
	nop
.LBB37_3:
	lw	$1, 28($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, .LBB37_6
	nop
# %bb.4:
	b	.LBB37_5
	nop
.LBB37_5:
	lw	$1, 32($fp)
	sw	$1, 36($fp)
	b	.LBB37_18
	nop
.LBB37_6:
	lw	$1, 32($fp)
	srl	$1, $1, 31
	lw	$2, 28($fp)
	srl	$2, $2, 31
	beq	$1, $2, .LBB37_13
	nop
# %bb.7:
	b	.LBB37_8
	nop
.LBB37_8:
	lw	$1, 32($fp)
	bgez	$1, .LBB37_11
	nop
# %bb.9:
	b	.LBB37_10
	nop
.LBB37_10:
	lw	$1, 32($fp)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB37_12
	nop
.LBB37_11:
	lw	$1, 28($fp)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB37_12
	nop
.LBB37_12:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	sw	$1, 36($fp)
	b	.LBB37_18
	nop
.LBB37_13:
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	lw	$4, 32($fp)
	lw	$5, 28($fp)
	ld	$25, %call16(__ltsf2)($gp)
	.reloc .Ltmp8, R_MIPS_JALR, __ltsf2
.Ltmp8:
	jalr	$25
	nop
	bgez	$2, .LBB37_16
	nop
# %bb.14:
	b	.LBB37_15
	nop
.LBB37_15:
	lw	$1, 32($fp)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB37_17
	nop
.LBB37_16:
	lw	$1, 28($fp)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB37_17
	nop
.LBB37_17:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	sw	$1, 36($fp)
	b	.LBB37_18
	nop
.LBB37_18:
	lw	$2, 36($fp)
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	fminf
.Lfunc_end37:
	.size	fminf, .Lfunc_end37-fminf
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	3
	.type	fminl,@function
	.set	nomicromips
	.set	nomips16
	.ent	fminl
fminl:                                  # @fminl
	.frame	$fp,144,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -144
	sd	$ra, 136($sp)                   # 8-byte Folded Spill
	sd	$fp, 128($sp)                   # 8-byte Folded Spill
	sd	$gp, 120($sp)                   # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(fminl)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(fminl)))
	sd	$1, 48($fp)                     # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a3_64
                                        # kill: def $at_64 killed $a2_64
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 88($fp)
	sd	$4, 80($fp)
	sd	$7, 72($fp)
	sd	$6, 64($fp)
	ld	$2, 80($fp)
	ld	$1, 88($fp)
	daddiu	$3, $zero, 1
	dsll	$3, $3, 63
	daddiu	$3, $3, -1
	and	$1, $1, $3
	daddiu	$3, $zero, 32767
	dsll	$3, $3, 48
	slt	$4, $1, $3
	sw	$4, 56($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 60($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB38_2
	nop
# %bb.1:
	lw	$1, 56($fp)                     # 4-byte Folded Reload
	sw	$1, 60($fp)                     # 4-byte Folded Spill
.LBB38_2:
	lw	$1, 60($fp)                     # 4-byte Folded Reload
	bnez	$1, .LBB38_5
	nop
# %bb.3:
	b	.LBB38_4
	nop
.LBB38_4:
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 104($fp)
	sd	$1, 96($fp)
	b	.LBB38_22
	nop
.LBB38_5:
	ld	$2, 64($fp)
	ld	$1, 72($fp)
	daddiu	$3, $zero, 1
	dsll	$3, $3, 63
	daddiu	$3, $3, -1
	and	$1, $1, $3
	daddiu	$3, $zero, 32767
	dsll	$3, $3, 48
	slt	$4, $1, $3
	sw	$4, 40($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 44($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB38_7
	nop
# %bb.6:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	sw	$1, 44($fp)                     # 4-byte Folded Spill
.LBB38_7:
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	bnez	$1, .LBB38_10
	nop
# %bb.8:
	b	.LBB38_9
	nop
.LBB38_9:
	ld	$1, 80($fp)
	ld	$2, 88($fp)
	sd	$2, 104($fp)
	sd	$1, 96($fp)
	b	.LBB38_22
	nop
.LBB38_10:
	ld	$1, 88($fp)
	dsrl	$1, $1, 63
                                        # kill: def $at killed $at killed $at_64
	sll	$1, $1, 0
	ld	$2, 72($fp)
	dsrl	$2, $2, 63
                                        # kill: def $v0 killed $v0 killed $v0_64
	sll	$2, $2, 0
	beq	$1, $2, .LBB38_17
	nop
# %bb.11:
	b	.LBB38_12
	nop
.LBB38_12:
	ld	$1, 88($fp)
	bgez	$1, .LBB38_15
	nop
# %bb.13:
	b	.LBB38_14
	nop
.LBB38_14:
	ld	$1, 88($fp)
	ld	$2, 80($fp)
	sd	$2, 24($fp)                     # 8-byte Folded Spill
	sd	$1, 32($fp)                     # 8-byte Folded Spill
	b	.LBB38_16
	nop
.LBB38_15:
	ld	$1, 72($fp)
	ld	$2, 64($fp)
	sd	$2, 24($fp)                     # 8-byte Folded Spill
	sd	$1, 32($fp)                     # 8-byte Folded Spill
	b	.LBB38_16
	nop
.LBB38_16:
	ld	$2, 24($fp)                     # 8-byte Folded Reload
	ld	$1, 32($fp)                     # 8-byte Folded Reload
	sd	$2, 96($fp)
	sd	$1, 104($fp)
	b	.LBB38_22
	nop
.LBB38_17:
	ld	$gp, 48($fp)                    # 8-byte Folded Reload
	ld	$4, 80($fp)
	ld	$5, 88($fp)
	ld	$6, 64($fp)
	ld	$7, 72($fp)
	ld	$25, %call16(__lttf2)($gp)
	.reloc .Ltmp9, R_MIPS_JALR, __lttf2
.Ltmp9:
	jalr	$25
	nop
	bgez	$2, .LBB38_20
	nop
# %bb.18:
	b	.LBB38_19
	nop
.LBB38_19:
	ld	$1, 88($fp)
	ld	$2, 80($fp)
	sd	$2, 8($fp)                      # 8-byte Folded Spill
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	b	.LBB38_21
	nop
.LBB38_20:
	ld	$1, 72($fp)
	ld	$2, 64($fp)
	sd	$2, 8($fp)                      # 8-byte Folded Spill
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	b	.LBB38_21
	nop
.LBB38_21:
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	sd	$2, 96($fp)
	sd	$1, 104($fp)
	b	.LBB38_22
	nop
.LBB38_22:
	ld	$2, 96($fp)
	ld	$4, 104($fp)
	move	$sp, $fp
	ld	$gp, 120($sp)                   # 8-byte Folded Reload
	ld	$fp, 128($sp)                   # 8-byte Folded Reload
	ld	$ra, 136($sp)                   # 8-byte Folded Reload
	daddiu	$sp, $sp, 144
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	fminl
.Lfunc_end38:
	.size	fminl, .Lfunc_end38-fminl
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	3
	.type	l64a,@function
	.set	nomicromips
	.set	nomips16
	.ent	l64a
l64a:                                   # @l64a
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(l64a)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(l64a)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 24($fp)
	ld	$2, 24($fp)
	sw	$2, 12($fp)
	ld	$1, %got_page(l64a.s)($1)
	daddiu	$1, $1, %got_ofst(l64a.s)
	sd	$1, 16($fp)
	b	.LBB39_1
	nop
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, .LBB39_5
	nop
# %bb.2:                                #   in Loop: Header=BB39_1 Depth=1
	b	.LBB39_3
	nop
.LBB39_3:                               #   in Loop: Header=BB39_1 Depth=1
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	lw	$2, 12($fp)
	andi	$2, $2, 63
	dsll	$2, $2, 32
	dsrl	$2, $2, 32
	ld	$1, %got_page(digits)($1)
	daddiu	$1, $1, %got_ofst(digits)
	daddu	$1, $1, $2
	lbu	$1, 0($1)
	ld	$2, 16($fp)
	sb	$1, 0($2)
	b	.LBB39_4
	nop
.LBB39_4:                               #   in Loop: Header=BB39_1 Depth=1
	ld	$1, 16($fp)
	daddiu	$1, $1, 1
	sd	$1, 16($fp)
	lw	$1, 12($fp)
	srl	$1, $1, 6
	sw	$1, 12($fp)
	b	.LBB39_1
	nop
.LBB39_5:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$2, 16($fp)
	addiu	$3, $zero, 0
	sb	$zero, 0($2)
	ld	$1, %got_page(l64a.s)($1)
	daddiu	$2, $1, %got_ofst(l64a.s)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	l64a
.Lfunc_end39:
	.size	l64a, .Lfunc_end39-l64a
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	3
	.type	srand,@function
	.set	nomicromips
	.set	nomips16
	.ent	srand
srand:                                  # @srand
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(srand)))
	daddu	$1, $1, $25
	daddiu	$2, $1, %lo(%neg(%gp_rel(srand)))
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	dsll	$1, $1, 32
	dsrl	$1, $1, 32
	ld	$2, %got_page(seed)($2)
	sd	$1, %got_ofst(seed)($2)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	srand
.Lfunc_end40:
	.size	srand, .Lfunc_end40-srand
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	3
	.type	rand,@function
	.set	nomicromips
	.set	nomips16
	.ent	rand
rand:                                   # @rand
	.frame	$fp,16,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -16
	sd	$ra, 8($sp)                     # 8-byte Folded Spill
	sd	$fp, 0($sp)                     # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(rand)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(rand)))
	ld	$1, %got_page(seed)($1)
	ld	$2, %got_ofst(seed)($1)
	lui	$3, 22610
	daddiu	$3, $3, -3027
	dsll	$3, $3, 16
	daddiu	$3, $3, 19605
	dsll	$3, $3, 16
	daddiu	$3, $3, 32557
	dmult	$2, $3
	mflo	$2
	daddiu	$2, $2, 1
	sd	$2, %got_ofst(seed)($1)
	ld	$1, %got_ofst(seed)($1)
	dsrl	$2, $1, 33
	move	$sp, $fp
	ld	$fp, 0($sp)                     # 8-byte Folded Reload
	ld	$ra, 8($sp)                     # 8-byte Folded Reload
	daddiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rand
.Lfunc_end41:
	.size	rand, .Lfunc_end41-rand
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	3
	.type	insque,@function
	.set	nomicromips
	.set	nomips16
	.ent	insque
insque:                                 # @insque
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$1, 24($fp)
	sd	$1, 8($fp)
	ld	$1, 16($fp)
	sd	$1, 0($fp)
	ld	$1, 0($fp)
	bnez	$1, .LBB42_3
	nop
# %bb.1:
	b	.LBB42_2
	nop
.LBB42_2:
	ld	$1, 8($fp)
	daddiu	$2, $zero, 0
	sd	$zero, 8($1)
	ld	$1, 8($fp)
	sd	$zero, 0($1)
	b	.LBB42_6
	nop
.LBB42_3:
	ld	$1, 0($fp)
	ld	$1, 0($1)
	ld	$2, 8($fp)
	sd	$1, 0($2)
	ld	$1, 0($fp)
	ld	$2, 8($fp)
	sd	$1, 8($2)
	ld	$1, 8($fp)
	ld	$2, 0($fp)
	sd	$1, 0($2)
	ld	$1, 8($fp)
	ld	$1, 0($1)
	beqz	$1, .LBB42_6
	nop
# %bb.4:
	b	.LBB42_5
	nop
.LBB42_5:
	ld	$1, 8($fp)
	ld	$2, 0($1)
	sd	$1, 8($2)
	b	.LBB42_6
	nop
.LBB42_6:
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	insque
.Lfunc_end42:
	.size	insque, .Lfunc_end42-insque
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	3
	.type	remque,@function
	.set	nomicromips
	.set	nomips16
	.ent	remque
remque:                                 # @remque
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	ld	$1, 8($fp)
	sd	$1, 0($fp)
	ld	$1, 0($fp)
	ld	$1, 0($1)
	beqz	$1, .LBB43_3
	nop
# %bb.1:
	b	.LBB43_2
	nop
.LBB43_2:
	ld	$2, 0($fp)
	ld	$1, 8($2)
	ld	$2, 0($2)
	sd	$1, 8($2)
	b	.LBB43_3
	nop
.LBB43_3:
	ld	$1, 0($fp)
	ld	$1, 8($1)
	beqz	$1, .LBB43_6
	nop
# %bb.4:
	b	.LBB43_5
	nop
.LBB43_5:
	ld	$2, 0($fp)
	ld	$1, 0($2)
	ld	$2, 8($2)
	sd	$1, 0($2)
	b	.LBB43_6
	nop
.LBB43_6:
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	remque
.Lfunc_end43:
	.size	remque, .Lfunc_end43-remque
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	3
	.type	lsearch,@function
	.set	nomicromips
	.set	nomips16
	.ent	lsearch
lsearch:                                # @lsearch
	.frame	$fp,128,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -128
	sd	$ra, 120($sp)                   # 8-byte Folded Spill
	sd	$fp, 112($sp)                   # 8-byte Folded Spill
	sd	$gp, 104($sp)                   # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(lsearch)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(lsearch)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	sd	$4, 88($fp)
	sd	$5, 80($fp)
	sd	$6, 72($fp)
	sd	$7, 64($fp)
	sd	$8, 56($fp)
	ld	$1, 64($fp)
	sd	$1, 24($fp)                     # 8-byte Folded Spill
	ld	$1, 80($fp)
	sd	$1, 48($fp)
	ld	$1, 72($fp)
	ld	$1, 0($1)
	sd	$1, 40($fp)
	daddiu	$1, $zero, 0
	sd	$zero, 32($fp)
	b	.LBB44_1
	nop
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 32($fp)
	ld	$2, 40($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB44_8
	nop
# %bb.2:                                #   in Loop: Header=BB44_1 Depth=1
	b	.LBB44_3
	nop
.LBB44_3:                               #   in Loop: Header=BB44_1 Depth=1
	ld	$3, 24($fp)                     # 8-byte Folded Reload
	ld	$25, 56($fp)
	ld	$4, 88($fp)
	ld	$1, 48($fp)
	ld	$2, 32($fp)
	dmult	$2, $3
	mflo	$2
	daddu	$5, $1, $2
	jalr	$25
	nop
	bnez	$2, .LBB44_6
	nop
# %bb.4:
	b	.LBB44_5
	nop
.LBB44_5:
	ld	$3, 24($fp)                     # 8-byte Folded Reload
	ld	$1, 48($fp)
	ld	$2, 32($fp)
	dmult	$2, $3
	mflo	$2
	daddu	$1, $1, $2
	sd	$1, 96($fp)
	b	.LBB44_9
	nop
.LBB44_6:                               #   in Loop: Header=BB44_1 Depth=1
	b	.LBB44_7
	nop
.LBB44_7:                               #   in Loop: Header=BB44_1 Depth=1
	ld	$1, 32($fp)
	daddiu	$1, $1, 1
	sd	$1, 32($fp)
	b	.LBB44_1
	nop
.LBB44_8:
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	ld	$3, 24($fp)                     # 8-byte Folded Reload
	ld	$1, 40($fp)
	daddiu	$1, $1, 1
	ld	$2, 72($fp)
	sd	$1, 0($2)
	ld	$1, 48($fp)
	ld	$2, 40($fp)
	dmult	$2, $3
	mflo	$2
	daddu	$4, $1, $2
	sd	$4, 8($fp)                      # 8-byte Folded Spill
	ld	$5, 88($fp)
	ld	$6, 64($fp)
	ld	$25, %call16(memcpy)($gp)
	.reloc .Ltmp10, R_MIPS_JALR, memcpy
.Ltmp10:
	jalr	$25
	nop
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	sd	$1, 96($fp)
	b	.LBB44_9
	nop
.LBB44_9:
	ld	$2, 96($fp)
	move	$sp, $fp
	ld	$gp, 104($sp)                   # 8-byte Folded Reload
	ld	$fp, 112($sp)                   # 8-byte Folded Reload
	ld	$ra, 120($sp)                   # 8-byte Folded Reload
	daddiu	$sp, $sp, 128
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	lsearch
.Lfunc_end44:
	.size	lsearch, .Lfunc_end44-lsearch
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	3
	.type	lfind,@function
	.set	nomicromips
	.set	nomips16
	.ent	lfind
lfind:                                  # @lfind
	.frame	$fp,96,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -96
	sd	$ra, 88($sp)                    # 8-byte Folded Spill
	sd	$fp, 80($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 64($fp)
	sd	$5, 56($fp)
	sd	$6, 48($fp)
	sd	$7, 40($fp)
	sd	$8, 32($fp)
	ld	$1, 40($fp)
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	ld	$1, 56($fp)
	sd	$1, 24($fp)
	ld	$1, 48($fp)
	ld	$1, 0($1)
	sd	$1, 16($fp)
	daddiu	$1, $zero, 0
	sd	$zero, 8($fp)
	b	.LBB45_1
	nop
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 8($fp)
	ld	$2, 16($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB45_8
	nop
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	b	.LBB45_3
	nop
.LBB45_3:                               #   in Loop: Header=BB45_1 Depth=1
	ld	$3, 0($fp)                      # 8-byte Folded Reload
	ld	$25, 32($fp)
	ld	$4, 64($fp)
	ld	$1, 24($fp)
	ld	$2, 8($fp)
	dmult	$2, $3
	mflo	$2
	daddu	$5, $1, $2
	jalr	$25
	nop
	bnez	$2, .LBB45_6
	nop
# %bb.4:
	b	.LBB45_5
	nop
.LBB45_5:
	ld	$3, 0($fp)                      # 8-byte Folded Reload
	ld	$1, 24($fp)
	ld	$2, 8($fp)
	dmult	$2, $3
	mflo	$2
	daddu	$1, $1, $2
	sd	$1, 72($fp)
	b	.LBB45_9
	nop
.LBB45_6:                               #   in Loop: Header=BB45_1 Depth=1
	b	.LBB45_7
	nop
.LBB45_7:                               #   in Loop: Header=BB45_1 Depth=1
	ld	$1, 8($fp)
	daddiu	$1, $1, 1
	sd	$1, 8($fp)
	b	.LBB45_1
	nop
.LBB45_8:
	daddiu	$1, $zero, 0
	sd	$zero, 72($fp)
	b	.LBB45_9
	nop
.LBB45_9:
	ld	$2, 72($fp)
	move	$sp, $fp
	ld	$fp, 80($sp)                    # 8-byte Folded Reload
	ld	$ra, 88($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 96
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	lfind
.Lfunc_end45:
	.size	lfind, .Lfunc_end45-lfind
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	3
	.type	abs,@function
	.set	nomicromips
	.set	nomips16
	.ent	abs
abs:                                    # @abs
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	blez	$1, .LBB46_3
	nop
# %bb.1:
	b	.LBB46_2
	nop
.LBB46_2:
	lw	$1, 12($fp)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB46_4
	nop
.LBB46_3:
	lw	$1, 12($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB46_4
	nop
.LBB46_4:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	abs
.Lfunc_end46:
	.size	abs, .Lfunc_end46-abs
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	3
	.type	atoi,@function
	.set	nomicromips
	.set	nomips16
	.ent	atoi
atoi:                                   # @atoi
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(atoi)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(atoi)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	sd	$4, 32($fp)
	sw	$zero, 28($fp)
	sw	$zero, 24($fp)
	b	.LBB47_1
	nop
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	ld	$1, 32($fp)
	lb	$4, 0($1)
	ld	$25, %call16(isspace)($gp)
	.reloc .Ltmp11, R_MIPS_JALR, isspace
.Ltmp11:
	jalr	$25
	nop
	beqz	$2, .LBB47_4
	nop
# %bb.2:                                #   in Loop: Header=BB47_1 Depth=1
	b	.LBB47_3
	nop
.LBB47_3:                               #   in Loop: Header=BB47_1 Depth=1
	ld	$1, 32($fp)
	daddiu	$1, $1, 1
	sd	$1, 32($fp)
	b	.LBB47_1
	nop
.LBB47_4:
	ld	$1, 32($fp)
	lb	$1, 0($1)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	addiu	$2, $zero, 43
	beq	$1, $2, .LBB47_9
	nop
# %bb.5:
	b	.LBB47_6
	nop
.LBB47_6:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	addiu	$2, $zero, 45
	bne	$1, $2, .LBB47_10
	nop
# %bb.7:
	b	.LBB47_8
	nop
.LBB47_8:
	addiu	$1, $zero, 1
	sw	$1, 24($fp)
	b	.LBB47_9
	nop
.LBB47_9:
	ld	$1, 32($fp)
	daddiu	$1, $1, 1
	sd	$1, 32($fp)
	b	.LBB47_10
	nop
.LBB47_10:
	b	.LBB47_11
	nop
.LBB47_11:                              # =>This Inner Loop Header: Depth=1
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	ld	$1, 32($fp)
	lb	$4, 0($1)
	ld	$25, %call16(isdigit)($gp)
	.reloc .Ltmp12, R_MIPS_JALR, isdigit
.Ltmp12:
	jalr	$25
	nop
	beqz	$2, .LBB47_14
	nop
# %bb.12:                               #   in Loop: Header=BB47_11 Depth=1
	b	.LBB47_13
	nop
.LBB47_13:                              #   in Loop: Header=BB47_11 Depth=1
	lw	$1, 28($fp)
	sll	$2, $1, 1
	sll	$1, $1, 3
	addu	$1, $1, $2
	ld	$2, 32($fp)
	daddiu	$3, $2, 1
	sd	$3, 32($fp)
	lb	$2, 0($2)
	subu	$1, $1, $2
	addiu	$1, $1, 48
	sw	$1, 28($fp)
	b	.LBB47_11
	nop
.LBB47_14:
	lw	$1, 24($fp)
	beqz	$1, .LBB47_17
	nop
# %bb.15:
	b	.LBB47_16
	nop
.LBB47_16:
	lw	$1, 28($fp)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB47_18
	nop
.LBB47_17:
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB47_18
	nop
.LBB47_18:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	atoi
.Lfunc_end47:
	.size	atoi, .Lfunc_end47-atoi
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	3
	.type	atol,@function
	.set	nomicromips
	.set	nomips16
	.ent	atol
atol:                                   # @atol
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	sd	$gp, 56($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(atol)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(atol)))
	sd	$1, 24($fp)                     # 8-byte Folded Spill
	sd	$4, 48($fp)
	daddiu	$1, $zero, 0
	sd	$zero, 40($fp)
	sw	$zero, 36($fp)
	b	.LBB48_1
	nop
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$1, 48($fp)
	lb	$4, 0($1)
	ld	$25, %call16(isspace)($gp)
	.reloc .Ltmp13, R_MIPS_JALR, isspace
.Ltmp13:
	jalr	$25
	nop
	beqz	$2, .LBB48_4
	nop
# %bb.2:                                #   in Loop: Header=BB48_1 Depth=1
	b	.LBB48_3
	nop
.LBB48_3:                               #   in Loop: Header=BB48_1 Depth=1
	ld	$1, 48($fp)
	daddiu	$1, $1, 1
	sd	$1, 48($fp)
	b	.LBB48_1
	nop
.LBB48_4:
	ld	$1, 48($fp)
	lb	$1, 0($1)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	addiu	$2, $zero, 43
	beq	$1, $2, .LBB48_9
	nop
# %bb.5:
	b	.LBB48_6
	nop
.LBB48_6:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$2, $zero, 45
	bne	$1, $2, .LBB48_10
	nop
# %bb.7:
	b	.LBB48_8
	nop
.LBB48_8:
	addiu	$1, $zero, 1
	sw	$1, 36($fp)
	b	.LBB48_9
	nop
.LBB48_9:
	ld	$1, 48($fp)
	daddiu	$1, $1, 1
	sd	$1, 48($fp)
	b	.LBB48_10
	nop
.LBB48_10:
	b	.LBB48_11
	nop
.LBB48_11:                              # =>This Inner Loop Header: Depth=1
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$1, 48($fp)
	lb	$4, 0($1)
	ld	$25, %call16(isdigit)($gp)
	.reloc .Ltmp14, R_MIPS_JALR, isdigit
.Ltmp14:
	jalr	$25
	nop
	beqz	$2, .LBB48_14
	nop
# %bb.12:                               #   in Loop: Header=BB48_11 Depth=1
	b	.LBB48_13
	nop
.LBB48_13:                              #   in Loop: Header=BB48_11 Depth=1
	ld	$1, 40($fp)
	dsll	$2, $1, 1
	dsll	$1, $1, 3
	daddu	$1, $1, $2
	ld	$2, 48($fp)
	daddiu	$3, $2, 1
	sd	$3, 48($fp)
	lb	$2, 0($2)
	addiu	$3, $2, -48
                                        # implicit-def: $v0_64
	move	$2, $3
	dsubu	$1, $1, $2
	sd	$1, 40($fp)
	b	.LBB48_11
	nop
.LBB48_14:
	lw	$1, 36($fp)
	beqz	$1, .LBB48_17
	nop
# %bb.15:
	b	.LBB48_16
	nop
.LBB48_16:
	ld	$1, 40($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB48_18
	nop
.LBB48_17:
	ld	$1, 40($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB48_18
	nop
.LBB48_18:
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	move	$sp, $fp
	ld	$gp, 56($sp)                    # 8-byte Folded Reload
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	atol
.Lfunc_end48:
	.size	atol, .Lfunc_end48-atol
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	3
	.type	atoll,@function
	.set	nomicromips
	.set	nomips16
	.ent	atoll
atoll:                                  # @atoll
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	sd	$gp, 56($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(atoll)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(atoll)))
	sd	$1, 24($fp)                     # 8-byte Folded Spill
	sd	$4, 48($fp)
	daddiu	$1, $zero, 0
	sd	$zero, 40($fp)
	sw	$zero, 36($fp)
	b	.LBB49_1
	nop
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$1, 48($fp)
	lb	$4, 0($1)
	ld	$25, %call16(isspace)($gp)
	.reloc .Ltmp15, R_MIPS_JALR, isspace
.Ltmp15:
	jalr	$25
	nop
	beqz	$2, .LBB49_4
	nop
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
	b	.LBB49_3
	nop
.LBB49_3:                               #   in Loop: Header=BB49_1 Depth=1
	ld	$1, 48($fp)
	daddiu	$1, $1, 1
	sd	$1, 48($fp)
	b	.LBB49_1
	nop
.LBB49_4:
	ld	$1, 48($fp)
	lb	$1, 0($1)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	addiu	$2, $zero, 43
	beq	$1, $2, .LBB49_9
	nop
# %bb.5:
	b	.LBB49_6
	nop
.LBB49_6:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$2, $zero, 45
	bne	$1, $2, .LBB49_10
	nop
# %bb.7:
	b	.LBB49_8
	nop
.LBB49_8:
	addiu	$1, $zero, 1
	sw	$1, 36($fp)
	b	.LBB49_9
	nop
.LBB49_9:
	ld	$1, 48($fp)
	daddiu	$1, $1, 1
	sd	$1, 48($fp)
	b	.LBB49_10
	nop
.LBB49_10:
	b	.LBB49_11
	nop
.LBB49_11:                              # =>This Inner Loop Header: Depth=1
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$1, 48($fp)
	lb	$4, 0($1)
	ld	$25, %call16(isdigit)($gp)
	.reloc .Ltmp16, R_MIPS_JALR, isdigit
.Ltmp16:
	jalr	$25
	nop
	beqz	$2, .LBB49_14
	nop
# %bb.12:                               #   in Loop: Header=BB49_11 Depth=1
	b	.LBB49_13
	nop
.LBB49_13:                              #   in Loop: Header=BB49_11 Depth=1
	ld	$1, 40($fp)
	dsll	$2, $1, 1
	dsll	$1, $1, 3
	daddu	$1, $1, $2
	ld	$2, 48($fp)
	daddiu	$3, $2, 1
	sd	$3, 48($fp)
	lb	$2, 0($2)
	addiu	$3, $2, -48
                                        # implicit-def: $v0_64
	move	$2, $3
	dsubu	$1, $1, $2
	sd	$1, 40($fp)
	b	.LBB49_11
	nop
.LBB49_14:
	lw	$1, 36($fp)
	beqz	$1, .LBB49_17
	nop
# %bb.15:
	b	.LBB49_16
	nop
.LBB49_16:
	ld	$1, 40($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB49_18
	nop
.LBB49_17:
	ld	$1, 40($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB49_18
	nop
.LBB49_18:
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	move	$sp, $fp
	ld	$gp, 56($sp)                    # 8-byte Folded Reload
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	atoll
.Lfunc_end49:
	.size	atoll, .Lfunc_end49-atoll
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	3
	.type	bsearch,@function
	.set	nomicromips
	.set	nomips16
	.ent	bsearch
bsearch:                                # @bsearch
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 48($fp)
	sd	$5, 40($fp)
	sd	$6, 32($fp)
	sd	$7, 24($fp)
	sd	$8, 16($fp)
	b	.LBB50_1
	nop
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 32($fp)
	beqz	$1, .LBB50_12
	nop
# %bb.2:                                #   in Loop: Header=BB50_1 Depth=1
	b	.LBB50_3
	nop
.LBB50_3:                               #   in Loop: Header=BB50_1 Depth=1
	ld	$1, 40($fp)
	ld	$2, 24($fp)
	ld	$3, 32($fp)
	dsrl	$3, $3, 1
	dmult	$2, $3
	mflo	$2
	daddu	$1, $1, $2
	sd	$1, 8($fp)
	ld	$25, 16($fp)
	ld	$4, 48($fp)
	ld	$5, 8($fp)
	jalr	$25
	nop
	sw	$2, 4($fp)
	lw	$1, 4($fp)
	bgez	$1, .LBB50_6
	nop
# %bb.4:                                #   in Loop: Header=BB50_1 Depth=1
	b	.LBB50_5
	nop
.LBB50_5:                               #   in Loop: Header=BB50_1 Depth=1
	ld	$1, 32($fp)
	dsrl	$1, $1, 1
	sd	$1, 32($fp)
	b	.LBB50_11
	nop
.LBB50_6:                               #   in Loop: Header=BB50_1 Depth=1
	lw	$1, 4($fp)
	blez	$1, .LBB50_9
	nop
# %bb.7:                                #   in Loop: Header=BB50_1 Depth=1
	b	.LBB50_8
	nop
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	ld	$1, 8($fp)
	ld	$2, 24($fp)
	daddu	$1, $1, $2
	sd	$1, 40($fp)
	ld	$2, 32($fp)
	dsrl	$1, $2, 1
	daddiu	$3, $zero, -1
	xor	$1, $1, $3
	daddu	$1, $1, $2
	sd	$1, 32($fp)
	b	.LBB50_10
	nop
.LBB50_9:
	ld	$1, 8($fp)
	sd	$1, 56($fp)
	b	.LBB50_13
	nop
.LBB50_10:                              #   in Loop: Header=BB50_1 Depth=1
	b	.LBB50_11
	nop
.LBB50_11:                              #   in Loop: Header=BB50_1 Depth=1
	b	.LBB50_1
	nop
.LBB50_12:
	daddiu	$1, $zero, 0
	sd	$zero, 56($fp)
	b	.LBB50_13
	nop
.LBB50_13:
	ld	$2, 56($fp)
	move	$sp, $fp
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	bsearch
.Lfunc_end50:
	.size	bsearch, .Lfunc_end50-bsearch
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	3
	.type	bsearch_r,@function
	.set	nomicromips
	.set	nomips16
	.ent	bsearch_r
bsearch_r:                              # @bsearch_r
	.frame	$fp,96,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -96
	sd	$ra, 88($sp)                    # 8-byte Folded Spill
	sd	$fp, 80($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 64($fp)
	sd	$5, 56($fp)
	sd	$6, 48($fp)
	sd	$7, 40($fp)
	sd	$8, 32($fp)
	sd	$9, 24($fp)
	ld	$1, 56($fp)
	sd	$1, 16($fp)
	ld	$1, 48($fp)
	sw	$1, 12($fp)
	b	.LBB51_1
	nop
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, .LBB51_11
	nop
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
	b	.LBB51_3
	nop
.LBB51_3:                               #   in Loop: Header=BB51_1 Depth=1
	ld	$1, 16($fp)
	lw	$2, 12($fp)
	sra	$3, $2, 1
                                        # implicit-def: $v0_64
	move	$2, $3
	ld	$3, 40($fp)
	dmult	$2, $3
	mflo	$2
	daddu	$1, $1, $2
	sd	$1, 0($fp)
	ld	$25, 32($fp)
	ld	$4, 64($fp)
	ld	$5, 0($fp)
	ld	$6, 24($fp)
	jalr	$25
	nop
	sw	$2, 8($fp)
	lw	$1, 8($fp)
	bnez	$1, .LBB51_6
	nop
# %bb.4:
	b	.LBB51_5
	nop
.LBB51_5:
	ld	$1, 0($fp)
	sd	$1, 72($fp)
	b	.LBB51_12
	nop
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	lw	$1, 8($fp)
	blez	$1, .LBB51_9
	nop
# %bb.7:                                #   in Loop: Header=BB51_1 Depth=1
	b	.LBB51_8
	nop
.LBB51_8:                               #   in Loop: Header=BB51_1 Depth=1
	ld	$1, 0($fp)
	ld	$2, 40($fp)
	daddu	$1, $1, $2
	sd	$1, 16($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	sw	$1, 12($fp)
	b	.LBB51_9
	nop
.LBB51_9:                               #   in Loop: Header=BB51_1 Depth=1
	b	.LBB51_10
	nop
.LBB51_10:                              #   in Loop: Header=BB51_1 Depth=1
	lw	$1, 12($fp)
	sra	$1, $1, 1
	sw	$1, 12($fp)
	b	.LBB51_1
	nop
.LBB51_11:
	daddiu	$1, $zero, 0
	sd	$zero, 72($fp)
	b	.LBB51_12
	nop
.LBB51_12:
	ld	$2, 72($fp)
	move	$sp, $fp
	ld	$fp, 80($sp)                    # 8-byte Folded Reload
	ld	$ra, 88($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 96
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	bsearch_r
.Lfunc_end51:
	.size	bsearch_r, .Lfunc_end51-bsearch_r
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	3
	.type	div,@function
	.set	nomicromips
	.set	nomips16
	.ent	div
div:                                    # @div
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sw	$2, 4($fp)
	sw	$1, 0($fp)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mflo	$1
	sw	$1, 8($fp)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	sw	$1, 12($fp)
                                        # implicit-def: $v0_64
	ldl	$2, 15($fp)
	ldr	$2, 8($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	div
.Lfunc_end52:
	.size	div, .Lfunc_end52-div
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	3
	.type	imaxabs,@function
	.set	nomicromips
	.set	nomips16
	.ent	imaxabs
imaxabs:                                # @imaxabs
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	ld	$1, 8($fp)
	blez	$1, .LBB53_3
	nop
# %bb.1:
	b	.LBB53_2
	nop
.LBB53_2:
	ld	$1, 8($fp)
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB53_4
	nop
.LBB53_3:
	ld	$1, 8($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB53_4
	nop
.LBB53_4:
	ld	$2, 0($fp)                      # 8-byte Folded Reload
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	imaxabs
.Lfunc_end53:
	.size	imaxabs, .Lfunc_end53-imaxabs
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	3
	.type	imaxdiv,@function
	.set	nomicromips
	.set	nomips16
	.ent	imaxdiv
imaxdiv:                                # @imaxdiv
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	sd	$5, 0($fp)
	ld	$2, 8($fp)
	ld	$1, 0($fp)
	ddiv	$zero, $2, $1
	teq	$1, $zero, 7
	mflo	$1
	sd	$1, 16($fp)
	ld	$2, 8($fp)
	ld	$1, 0($fp)
	ddiv	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	sd	$1, 24($fp)
	ld	$2, 16($fp)
	ld	$3, 24($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	imaxdiv
.Lfunc_end54:
	.size	imaxdiv, .Lfunc_end54-imaxdiv
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	3
	.type	labs,@function
	.set	nomicromips
	.set	nomips16
	.ent	labs
labs:                                   # @labs
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	ld	$1, 8($fp)
	blez	$1, .LBB55_3
	nop
# %bb.1:
	b	.LBB55_2
	nop
.LBB55_2:
	ld	$1, 8($fp)
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB55_4
	nop
.LBB55_3:
	ld	$1, 8($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB55_4
	nop
.LBB55_4:
	ld	$2, 0($fp)                      # 8-byte Folded Reload
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	labs
.Lfunc_end55:
	.size	labs, .Lfunc_end55-labs
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	3
	.type	ldiv,@function
	.set	nomicromips
	.set	nomips16
	.ent	ldiv
ldiv:                                   # @ldiv
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	sd	$5, 0($fp)
	ld	$2, 8($fp)
	ld	$1, 0($fp)
	ddiv	$zero, $2, $1
	teq	$1, $zero, 7
	mflo	$1
	sd	$1, 16($fp)
	ld	$2, 8($fp)
	ld	$1, 0($fp)
	ddiv	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	sd	$1, 24($fp)
	ld	$2, 16($fp)
	ld	$3, 24($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	ldiv
.Lfunc_end56:
	.size	ldiv, .Lfunc_end56-ldiv
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	3
	.type	llabs,@function
	.set	nomicromips
	.set	nomips16
	.ent	llabs
llabs:                                  # @llabs
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	ld	$1, 8($fp)
	blez	$1, .LBB57_3
	nop
# %bb.1:
	b	.LBB57_2
	nop
.LBB57_2:
	ld	$1, 8($fp)
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB57_4
	nop
.LBB57_3:
	ld	$1, 8($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB57_4
	nop
.LBB57_4:
	ld	$2, 0($fp)                      # 8-byte Folded Reload
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	llabs
.Lfunc_end57:
	.size	llabs, .Lfunc_end57-llabs
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	3
	.type	lldiv,@function
	.set	nomicromips
	.set	nomips16
	.ent	lldiv
lldiv:                                  # @lldiv
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	sd	$5, 0($fp)
	ld	$2, 8($fp)
	ld	$1, 0($fp)
	ddiv	$zero, $2, $1
	teq	$1, $zero, 7
	mflo	$1
	sd	$1, 16($fp)
	ld	$2, 8($fp)
	ld	$1, 0($fp)
	ddiv	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	sd	$1, 24($fp)
	ld	$2, 16($fp)
	ld	$3, 24($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	lldiv
.Lfunc_end58:
	.size	lldiv, .Lfunc_end58-lldiv
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	3
	.type	wcschr,@function
	.set	nomicromips
	.set	nomips16
	.ent	wcschr
wcschr:                                 # @wcschr
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 24($fp)
	sw	$1, 20($fp)
	b	.LBB59_1
	nop
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	lw	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB59_4
	nop
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	b	.LBB59_3
	nop
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	ld	$1, 24($fp)
	lw	$1, 0($1)
	lw	$2, 20($fp)
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	b	.LBB59_4
	nop
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB59_8
	nop
# %bb.5:                                #   in Loop: Header=BB59_1 Depth=1
	b	.LBB59_6
	nop
.LBB59_6:                               #   in Loop: Header=BB59_1 Depth=1
	b	.LBB59_7
	nop
.LBB59_7:                               #   in Loop: Header=BB59_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 4
	sd	$1, 24($fp)
	b	.LBB59_1
	nop
.LBB59_8:
	ld	$1, 24($fp)
	lw	$1, 0($1)
	beqz	$1, .LBB59_11
	nop
# %bb.9:
	b	.LBB59_10
	nop
.LBB59_10:
	ld	$1, 24($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB59_12
	nop
.LBB59_11:
	daddiu	$1, $zero, 0
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB59_12
	nop
.LBB59_12:
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	wcschr
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	3
	.type	wcscmp,@function
	.set	nomicromips
	.set	nomips16
	.ent	wcscmp
wcscmp:                                 # @wcscmp
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	b	.LBB60_1
	nop
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	lw	$1, 0($1)
	ld	$2, 16($fp)
	lw	$2, 0($2)
	addiu	$3, $zero, 0
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	bne	$1, $2, .LBB60_6
	nop
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	b	.LBB60_3
	nop
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	ld	$1, 24($fp)
	lw	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB60_6
	nop
# %bb.4:                                #   in Loop: Header=BB60_1 Depth=1
	b	.LBB60_5
	nop
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	ld	$1, 16($fp)
	lw	$1, 0($1)
	sltu	$1, $zero, $1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB60_6
	nop
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB60_10
	nop
# %bb.7:                                #   in Loop: Header=BB60_1 Depth=1
	b	.LBB60_8
	nop
.LBB60_8:                               #   in Loop: Header=BB60_1 Depth=1
	b	.LBB60_9
	nop
.LBB60_9:                               #   in Loop: Header=BB60_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 4
	sd	$1, 24($fp)
	ld	$1, 16($fp)
	daddiu	$1, $1, 4
	sd	$1, 16($fp)
	b	.LBB60_1
	nop
.LBB60_10:
	ld	$1, 24($fp)
	lw	$1, 0($1)
	ld	$2, 16($fp)
	lw	$2, 0($2)
	slt	$1, $1, $2
	beqz	$1, .LBB60_13
	nop
# %bb.11:
	b	.LBB60_12
	nop
.LBB60_12:
	addiu	$1, $zero, -1
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB60_14
	nop
.LBB60_13:
	ld	$1, 24($fp)
	lw	$2, 0($1)
	ld	$1, 16($fp)
	lw	$1, 0($1)
	slt	$1, $1, $2
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB60_14
	nop
.LBB60_14:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	wcscmp
.Lfunc_end60:
	.size	wcscmp, .Lfunc_end60-wcscmp
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	3
	.type	wcscpy,@function
	.set	nomicromips
	.set	nomips16
	.ent	wcscpy
wcscpy:                                 # @wcscpy
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$1, 24($fp)
	sd	$1, 8($fp)
	b	.LBB61_1
	nop
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 16($fp)
	daddiu	$2, $1, 4
	sd	$2, 16($fp)
	lw	$1, 0($1)
	ld	$2, 24($fp)
	daddiu	$3, $2, 4
	sd	$3, 24($fp)
	sw	$1, 0($2)
	beqz	$1, .LBB61_4
	nop
# %bb.2:                                #   in Loop: Header=BB61_1 Depth=1
	b	.LBB61_3
	nop
.LBB61_3:                               #   in Loop: Header=BB61_1 Depth=1
	b	.LBB61_1
	nop
.LBB61_4:
	ld	$2, 8($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	wcscpy
.Lfunc_end61:
	.size	wcscpy, .Lfunc_end61-wcscpy
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	3
	.type	wcslen,@function
	.set	nomicromips
	.set	nomips16
	.ent	wcslen
wcslen:                                 # @wcslen
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	ld	$1, 8($fp)
	sd	$1, 0($fp)
	b	.LBB62_1
	nop
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 8($fp)
	lw	$1, 0($1)
	beqz	$1, .LBB62_5
	nop
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	b	.LBB62_3
	nop
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	b	.LBB62_4
	nop
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	ld	$1, 8($fp)
	daddiu	$1, $1, 4
	sd	$1, 8($fp)
	b	.LBB62_1
	nop
.LBB62_5:
	ld	$1, 8($fp)
	ld	$2, 0($fp)
	dsubu	$1, $1, $2
	dsra	$2, $1, 2
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	wcslen
.Lfunc_end62:
	.size	wcslen, .Lfunc_end62-wcslen
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	3
	.type	wcsncmp,@function
	.set	nomicromips
	.set	nomips16
	.ent	wcsncmp
wcsncmp:                                # @wcsncmp
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	b	.LBB63_1
	nop
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB63_8
	nop
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_3
	nop
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	ld	$1, 40($fp)
	lw	$1, 0($1)
	ld	$2, 32($fp)
	lw	$2, 0($2)
	addiu	$3, $zero, 0
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	bne	$1, $2, .LBB63_8
	nop
# %bb.4:                                #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_5
	nop
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	ld	$1, 40($fp)
	lw	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB63_8
	nop
# %bb.6:                                #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_7
	nop
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
	ld	$1, 32($fp)
	lw	$1, 0($1)
	sltu	$1, $zero, $1
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	b	.LBB63_8
	nop
.LBB63_8:                               #   in Loop: Header=BB63_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB63_12
	nop
# %bb.9:                                #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_10
	nop
.LBB63_10:                              #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_11
	nop
.LBB63_11:                              #   in Loop: Header=BB63_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	ld	$1, 40($fp)
	daddiu	$1, $1, 4
	sd	$1, 40($fp)
	ld	$1, 32($fp)
	daddiu	$1, $1, 4
	sd	$1, 32($fp)
	b	.LBB63_1
	nop
.LBB63_12:
	ld	$1, 24($fp)
	beqz	$1, .LBB63_19
	nop
# %bb.13:
	b	.LBB63_14
	nop
.LBB63_14:
	ld	$1, 40($fp)
	lw	$1, 0($1)
	ld	$2, 32($fp)
	lw	$2, 0($2)
	slt	$1, $1, $2
	beqz	$1, .LBB63_17
	nop
# %bb.15:
	b	.LBB63_16
	nop
.LBB63_16:
	addiu	$1, $zero, -1
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	b	.LBB63_18
	nop
.LBB63_17:
	ld	$1, 40($fp)
	lw	$2, 0($1)
	ld	$1, 32($fp)
	lw	$1, 0($1)
	slt	$1, $1, $2
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	b	.LBB63_18
	nop
.LBB63_18:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB63_20
	nop
.LBB63_19:
	addiu	$1, $zero, 0
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB63_20
	nop
.LBB63_20:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	wcsncmp
.Lfunc_end63:
	.size	wcsncmp, .Lfunc_end63-wcsncmp
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	3
	.type	wmemchr,@function
	.set	nomicromips
	.set	nomips16
	.ent	wmemchr
wmemchr:                                # @wmemchr
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 40($fp)
	sw	$1, 36($fp)
	sd	$6, 24($fp)
	b	.LBB64_1
	nop
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB64_4
	nop
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	b	.LBB64_3
	nop
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	ld	$1, 40($fp)
	lw	$1, 0($1)
	lw	$2, 36($fp)
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	b	.LBB64_4
	nop
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB64_8
	nop
# %bb.5:                                #   in Loop: Header=BB64_1 Depth=1
	b	.LBB64_6
	nop
.LBB64_6:                               #   in Loop: Header=BB64_1 Depth=1
	b	.LBB64_7
	nop
.LBB64_7:                               #   in Loop: Header=BB64_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	ld	$1, 40($fp)
	daddiu	$1, $1, 4
	sd	$1, 40($fp)
	b	.LBB64_1
	nop
.LBB64_8:
	ld	$1, 24($fp)
	beqz	$1, .LBB64_11
	nop
# %bb.9:
	b	.LBB64_10
	nop
.LBB64_10:
	ld	$1, 40($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB64_12
	nop
.LBB64_11:
	daddiu	$1, $zero, 0
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB64_12
	nop
.LBB64_12:
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	wmemchr
.Lfunc_end64:
	.size	wmemchr, .Lfunc_end64-wmemchr
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	3
	.type	wmemcmp,@function
	.set	nomicromips
	.set	nomips16
	.ent	wmemcmp
wmemcmp:                                # @wmemcmp
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	b	.LBB65_1
	nop
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB65_4
	nop
# %bb.2:                                #   in Loop: Header=BB65_1 Depth=1
	b	.LBB65_3
	nop
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	ld	$1, 40($fp)
	lw	$1, 0($1)
	ld	$2, 32($fp)
	lw	$2, 0($2)
	xor	$1, $1, $2
	sltiu	$1, $1, 1
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	b	.LBB65_4
	nop
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB65_8
	nop
# %bb.5:                                #   in Loop: Header=BB65_1 Depth=1
	b	.LBB65_6
	nop
.LBB65_6:                               #   in Loop: Header=BB65_1 Depth=1
	b	.LBB65_7
	nop
.LBB65_7:                               #   in Loop: Header=BB65_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	ld	$1, 40($fp)
	daddiu	$1, $1, 4
	sd	$1, 40($fp)
	ld	$1, 32($fp)
	daddiu	$1, $1, 4
	sd	$1, 32($fp)
	b	.LBB65_1
	nop
.LBB65_8:
	ld	$1, 24($fp)
	beqz	$1, .LBB65_15
	nop
# %bb.9:
	b	.LBB65_10
	nop
.LBB65_10:
	ld	$1, 40($fp)
	lw	$1, 0($1)
	ld	$2, 32($fp)
	lw	$2, 0($2)
	slt	$1, $1, $2
	beqz	$1, .LBB65_13
	nop
# %bb.11:
	b	.LBB65_12
	nop
.LBB65_12:
	addiu	$1, $zero, -1
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	b	.LBB65_14
	nop
.LBB65_13:
	ld	$1, 40($fp)
	lw	$2, 0($1)
	ld	$1, 32($fp)
	lw	$1, 0($1)
	slt	$1, $1, $2
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	b	.LBB65_14
	nop
.LBB65_14:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB65_16
	nop
.LBB65_15:
	addiu	$1, $zero, 0
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB65_16
	nop
.LBB65_16:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	wmemcmp
.Lfunc_end65:
	.size	wmemcmp, .Lfunc_end65-wmemcmp
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	3
	.type	wmemcpy,@function
	.set	nomicromips
	.set	nomips16
	.ent	wmemcpy
wmemcpy:                                # @wmemcpy
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	sd	$6, 8($fp)
	ld	$1, 24($fp)
	sd	$1, 0($fp)
	b	.LBB66_1
	nop
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 8($fp)
	daddiu	$2, $1, -1
	sd	$2, 8($fp)
	beqz	$1, .LBB66_4
	nop
# %bb.2:                                #   in Loop: Header=BB66_1 Depth=1
	b	.LBB66_3
	nop
.LBB66_3:                               #   in Loop: Header=BB66_1 Depth=1
	ld	$1, 16($fp)
	daddiu	$2, $1, 4
	sd	$2, 16($fp)
	lw	$1, 0($1)
	ld	$2, 24($fp)
	daddiu	$3, $2, 4
	sd	$3, 24($fp)
	sw	$1, 0($2)
	b	.LBB66_1
	nop
.LBB66_4:
	ld	$2, 0($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	wmemcpy
.Lfunc_end66:
	.size	wmemcpy, .Lfunc_end66-wmemcpy
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	3
	.type	wmemmove,@function
	.set	nomicromips
	.set	nomips16
	.ent	wmemmove
wmemmove:                               # @wmemmove
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	sd	$6, 16($fp)
	ld	$1, 32($fp)
	sd	$1, 8($fp)
	ld	$1, 32($fp)
	ld	$2, 24($fp)
	bne	$1, $2, .LBB67_3
	nop
# %bb.1:
	b	.LBB67_2
	nop
.LBB67_2:
	ld	$1, 32($fp)
	sd	$1, 40($fp)
	b	.LBB67_16
	nop
.LBB67_3:
	ld	$1, 32($fp)
	ld	$2, 24($fp)
	dsubu	$1, $1, $2
	ld	$2, 16($fp)
	dsll	$2, $2, 2
	sltu	$1, $1, $2
	beqz	$1, .LBB67_10
	nop
# %bb.4:
	b	.LBB67_5
	nop
.LBB67_5:
	b	.LBB67_6
	nop
.LBB67_6:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 16($fp)
	daddiu	$2, $1, -1
	sd	$2, 16($fp)
	beqz	$1, .LBB67_9
	nop
# %bb.7:                                #   in Loop: Header=BB67_6 Depth=1
	b	.LBB67_8
	nop
.LBB67_8:                               #   in Loop: Header=BB67_6 Depth=1
	ld	$1, 24($fp)
	ld	$2, 16($fp)
	dsll	$3, $2, 2
	daddu	$1, $1, $3
	lw	$1, 0($1)
	ld	$2, 32($fp)
	daddu	$2, $2, $3
	sw	$1, 0($2)
	b	.LBB67_6
	nop
.LBB67_9:
	b	.LBB67_15
	nop
.LBB67_10:
	b	.LBB67_11
	nop
.LBB67_11:                              # =>This Inner Loop Header: Depth=1
	ld	$1, 16($fp)
	daddiu	$2, $1, -1
	sd	$2, 16($fp)
	beqz	$1, .LBB67_14
	nop
# %bb.12:                               #   in Loop: Header=BB67_11 Depth=1
	b	.LBB67_13
	nop
.LBB67_13:                              #   in Loop: Header=BB67_11 Depth=1
	ld	$1, 24($fp)
	daddiu	$2, $1, 4
	sd	$2, 24($fp)
	lw	$1, 0($1)
	ld	$2, 32($fp)
	daddiu	$3, $2, 4
	sd	$3, 32($fp)
	sw	$1, 0($2)
	b	.LBB67_11
	nop
.LBB67_14:
	b	.LBB67_15
	nop
.LBB67_15:
	ld	$1, 8($fp)
	sd	$1, 40($fp)
	b	.LBB67_16
	nop
.LBB67_16:
	ld	$2, 40($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	wmemmove
.Lfunc_end67:
	.size	wmemmove, .Lfunc_end67-wmemmove
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	3
	.type	wmemset,@function
	.set	nomicromips
	.set	nomips16
	.ent	wmemset
wmemset:                                # @wmemset
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 24($fp)
	sw	$1, 20($fp)
	sd	$6, 8($fp)
	ld	$1, 24($fp)
	sd	$1, 0($fp)
	b	.LBB68_1
	nop
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 8($fp)
	daddiu	$2, $1, -1
	sd	$2, 8($fp)
	beqz	$1, .LBB68_4
	nop
# %bb.2:                                #   in Loop: Header=BB68_1 Depth=1
	b	.LBB68_3
	nop
.LBB68_3:                               #   in Loop: Header=BB68_1 Depth=1
	lw	$1, 20($fp)
	ld	$2, 24($fp)
	daddiu	$3, $2, 4
	sd	$3, 24($fp)
	sw	$1, 0($2)
	b	.LBB68_1
	nop
.LBB68_4:
	ld	$2, 0($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	wmemset
.Lfunc_end68:
	.size	wmemset, .Lfunc_end68-wmemset
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	3
	.type	bcopy,@function
	.set	nomicromips
	.set	nomips16
	.ent	bcopy
bcopy:                                  # @bcopy
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$1, 40($fp)
	sd	$1, 16($fp)
	ld	$1, 32($fp)
	sd	$1, 8($fp)
	ld	$1, 16($fp)
	ld	$2, 8($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB69_8
	nop
# %bb.1:
	b	.LBB69_2
	nop
.LBB69_2:
	ld	$2, 24($fp)
	ld	$1, 16($fp)
	daddu	$1, $1, $2
	sd	$1, 16($fp)
	ld	$2, 24($fp)
	ld	$1, 8($fp)
	daddu	$1, $1, $2
	sd	$1, 8($fp)
	b	.LBB69_3
	nop
.LBB69_3:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	beqz	$1, .LBB69_7
	nop
# %bb.4:                                #   in Loop: Header=BB69_3 Depth=1
	b	.LBB69_5
	nop
.LBB69_5:                               #   in Loop: Header=BB69_3 Depth=1
	ld	$1, 16($fp)
	daddiu	$2, $1, -1
	sd	$2, 16($fp)
	lbu	$1, -1($1)
	ld	$2, 8($fp)
	daddiu	$3, $2, -1
	sd	$3, 8($fp)
	sb	$1, -1($2)
	b	.LBB69_6
	nop
.LBB69_6:                               #   in Loop: Header=BB69_3 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	b	.LBB69_3
	nop
.LBB69_7:
	b	.LBB69_17
	nop
.LBB69_8:
	ld	$1, 16($fp)
	ld	$2, 8($fp)
	beq	$1, $2, .LBB69_16
	nop
# %bb.9:
	b	.LBB69_10
	nop
.LBB69_10:
	b	.LBB69_11
	nop
.LBB69_11:                              # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	beqz	$1, .LBB69_15
	nop
# %bb.12:                               #   in Loop: Header=BB69_11 Depth=1
	b	.LBB69_13
	nop
.LBB69_13:                              #   in Loop: Header=BB69_11 Depth=1
	ld	$1, 16($fp)
	daddiu	$2, $1, 1
	sd	$2, 16($fp)
	lbu	$1, 0($1)
	ld	$2, 8($fp)
	daddiu	$3, $2, 1
	sd	$3, 8($fp)
	sb	$1, 0($2)
	b	.LBB69_14
	nop
.LBB69_14:                              #   in Loop: Header=BB69_11 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	b	.LBB69_11
	nop
.LBB69_15:
	b	.LBB69_16
	nop
.LBB69_16:
	b	.LBB69_17
	nop
.LBB69_17:
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	bcopy
.Lfunc_end69:
	.size	bcopy, .Lfunc_end69-bcopy
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	3
	.type	rotl64,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotl64
rotl64:                                 # @rotl64
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 8($fp)
	sw	$1, 4($fp)
	ld	$2, 8($fp)
	lw	$4, 4($fp)
	dsllv	$1, $2, $4
	addiu	$3, $zero, 64
	subu	$3, $3, $4
	dsrlv	$2, $2, $3
	or	$2, $1, $2
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotl64
.Lfunc_end70:
	.size	rotl64, .Lfunc_end70-rotl64
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	3
	.type	rotr64,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotr64
rotr64:                                 # @rotr64
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 8($fp)
	sw	$1, 4($fp)
	ld	$2, 8($fp)
	lw	$4, 4($fp)
	dsrlv	$1, $2, $4
	addiu	$3, $zero, 64
	subu	$3, $3, $4
	dsllv	$2, $2, $3
	or	$2, $1, $2
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotr64
.Lfunc_end71:
	.size	rotr64, .Lfunc_end71-rotr64
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	3
	.type	rotl32,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotl32
rotl32:                                 # @rotl32
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lw	$2, 12($fp)
	lw	$4, 8($fp)
	sllv	$1, $2, $4
	addiu	$3, $zero, 32
	subu	$3, $3, $4
	srlv	$2, $2, $3
	or	$1, $1, $2
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotl32
.Lfunc_end72:
	.size	rotl32, .Lfunc_end72-rotl32
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	3
	.type	rotr32,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotr32
rotr32:                                 # @rotr32
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lw	$2, 12($fp)
	lw	$4, 8($fp)
	srlv	$1, $2, $4
	addiu	$3, $zero, 32
	subu	$3, $3, $4
	sllv	$2, $2, $3
	or	$1, $1, $2
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotr32
.Lfunc_end73:
	.size	rotr32, .Lfunc_end73-rotr32
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	3
	.type	rotl_sz,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotl_sz
rotl_sz:                                # @rotl_sz
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 8($fp)
	sw	$1, 4($fp)
	ld	$2, 8($fp)
	lw	$4, 4($fp)
	dsllv	$1, $2, $4
	addiu	$3, $zero, 64
	subu	$3, $3, $4
	dsrlv	$2, $2, $3
	or	$2, $1, $2
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotl_sz
.Lfunc_end74:
	.size	rotl_sz, .Lfunc_end74-rotl_sz
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	3
	.type	rotr_sz,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotr_sz
rotr_sz:                                # @rotr_sz
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 8($fp)
	sw	$1, 4($fp)
	ld	$2, 8($fp)
	lw	$4, 4($fp)
	dsrlv	$1, $2, $4
	addiu	$3, $zero, 64
	subu	$3, $3, $4
	dsllv	$2, $2, $3
	or	$2, $1, $2
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotr_sz
.Lfunc_end75:
	.size	rotr_sz, .Lfunc_end75-rotr_sz
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	3
	.type	rotl16,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotl16
rotl16:                                 # @rotl16
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sh	$2, 14($fp)
	sw	$1, 8($fp)
	lhu	$2, 14($fp)
	lw	$4, 8($fp)
	sllv	$1, $2, $4
	addiu	$3, $zero, 16
	subu	$3, $3, $4
	srlv	$2, $2, $3
	or	$1, $1, $2
	andi	$2, $1, 65535
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotl16
.Lfunc_end76:
	.size	rotl16, .Lfunc_end76-rotl16
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	3
	.type	rotr16,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotr16
rotr16:                                 # @rotr16
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sh	$2, 14($fp)
	sw	$1, 8($fp)
	lhu	$2, 14($fp)
	lw	$4, 8($fp)
	srlv	$1, $2, $4
	addiu	$3, $zero, 16
	subu	$3, $3, $4
	sllv	$2, $2, $3
	or	$1, $1, $2
	andi	$2, $1, 65535
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotr16
.Lfunc_end77:
	.size	rotr16, .Lfunc_end77-rotr16
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	3
	.type	rotl8,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotl8
rotl8:                                  # @rotl8
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sb	$2, 15($fp)
	sw	$1, 8($fp)
	lbu	$2, 15($fp)
	lw	$4, 8($fp)
	sllv	$1, $2, $4
	addiu	$3, $zero, 8
	subu	$3, $3, $4
	srlv	$2, $2, $3
	or	$1, $1, $2
	andi	$2, $1, 255
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotl8
.Lfunc_end78:
	.size	rotl8, .Lfunc_end78-rotl8
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	3
	.type	rotr8,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotr8
rotr8:                                  # @rotr8
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sb	$2, 15($fp)
	sw	$1, 8($fp)
	lbu	$2, 15($fp)
	lw	$4, 8($fp)
	srlv	$1, $2, $4
	addiu	$3, $zero, 8
	subu	$3, $3, $4
	sllv	$2, $2, $3
	or	$1, $1, $2
	andi	$2, $1, 255
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotr8
.Lfunc_end79:
	.size	rotr8, .Lfunc_end79-rotr8
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	3
	.type	bswap_16,@function
	.set	nomicromips
	.set	nomips16
	.ent	bswap_16
bswap_16:                               # @bswap_16
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sh	$1, 14($fp)
	addiu	$1, $zero, 255
	sh	$1, 12($fp)
	lhu	$2, 14($fp)
	lhu	$3, 12($fp)
	sll	$1, $3, 8
	and	$1, $2, $1
	srl	$1, $1, 8
	and	$2, $2, $3
	sll	$2, $2, 8
	or	$1, $1, $2
	andi	$2, $1, 65535
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	bswap_16
.Lfunc_end80:
	.size	bswap_16, .Lfunc_end80-bswap_16
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	3
	.type	bswap_32,@function
	.set	nomicromips
	.set	nomips16
	.ent	bswap_32
bswap_32:                               # @bswap_32
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	addiu	$1, $zero, 255
	sw	$1, 8($fp)
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	sll	$1, $3, 24
	and	$1, $2, $1
	srl	$1, $1, 24
	sll	$4, $3, 16
	and	$5, $2, $4
	srl	$5, $5, 8
	or	$1, $1, $5
	sll	$5, $2, 8
	and	$4, $4, $5
	or	$1, $1, $4
	and	$2, $2, $3
	sll	$2, $2, 24
	or	$1, $1, $2
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	bswap_32
.Lfunc_end81:
	.size	bswap_32, .Lfunc_end81-bswap_32
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	3
	.type	bswap_64,@function
	.set	nomicromips
	.set	nomips16
	.ent	bswap_64
bswap_64:                               # @bswap_64
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	daddiu	$1, $zero, 255
	sd	$1, 0($fp)
	ld	$2, 8($fp)
	ld	$3, 0($fp)
	dsll	$1, $3, 56
	and	$1, $2, $1
	dsrl	$1, $1, 56
	dsll	$4, $3, 48
	and	$5, $2, $4
	dsrl	$5, $5, 40
	or	$1, $1, $5
	dsll	$5, $3, 40
	and	$6, $2, $5
	dsrl	$6, $6, 24
	or	$1, $1, $6
	dsll	$6, $3, 32
	and	$7, $2, $6
	dsrl	$7, $7, 8
	or	$1, $1, $7
	dsll	$7, $2, 8
	and	$6, $6, $7
	or	$1, $1, $6
	dsll	$6, $2, 24
	and	$5, $5, $6
	or	$1, $1, $5
	dsll	$5, $2, 40
	and	$4, $4, $5
	or	$1, $1, $4
	and	$2, $2, $3
	dsll	$2, $2, 56
	or	$2, $1, $2
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	bswap_64
.Lfunc_end82:
	.size	bswap_64, .Lfunc_end82-bswap_64
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	3
	.type	ffs,@function
	.set	nomicromips
	.set	nomips16
	.ent	ffs
ffs:                                    # @ffs
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 8($fp)
	sw	$zero, 4($fp)
	b	.LBB83_1
	nop
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	sltiu	$1, $1, 32
	beqz	$1, .LBB83_8
	nop
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	b	.LBB83_3
	nop
.LBB83_3:                               #   in Loop: Header=BB83_1 Depth=1
	lw	$1, 8($fp)
	lw	$2, 4($fp)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, .LBB83_6
	nop
# %bb.4:
	b	.LBB83_5
	nop
.LBB83_5:
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 12($fp)
	b	.LBB83_9
	nop
.LBB83_6:                               #   in Loop: Header=BB83_1 Depth=1
	b	.LBB83_7
	nop
.LBB83_7:                               #   in Loop: Header=BB83_1 Depth=1
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	b	.LBB83_1
	nop
.LBB83_8:
	sw	$zero, 12($fp)
	b	.LBB83_9
	nop
.LBB83_9:
	lw	$2, 12($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	ffs
.Lfunc_end83:
	.size	ffs, .Lfunc_end83-ffs
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	3
	.type	libiberty_ffs,@function
	.set	nomicromips
	.set	nomips16
	.ent	libiberty_ffs
libiberty_ffs:                          # @libiberty_ffs
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	bnez	$1, .LBB84_3
	nop
# %bb.1:
	b	.LBB84_2
	nop
.LBB84_2:
	sw	$zero, 12($fp)
	b	.LBB84_9
	nop
.LBB84_3:
	addiu	$1, $zero, 1
	sw	$1, 4($fp)
	b	.LBB84_4
	nop
.LBB84_4:                               # =>This Inner Loop Header: Depth=1
	lbu	$1, 8($fp)
	andi	$1, $1, 1
	bnez	$1, .LBB84_8
	nop
# %bb.5:                                #   in Loop: Header=BB84_4 Depth=1
	b	.LBB84_6
	nop
.LBB84_6:                               #   in Loop: Header=BB84_4 Depth=1
	lw	$1, 8($fp)
	sra	$1, $1, 1
	sw	$1, 8($fp)
	b	.LBB84_7
	nop
.LBB84_7:                               #   in Loop: Header=BB84_4 Depth=1
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	b	.LBB84_4
	nop
.LBB84_8:
	lw	$1, 4($fp)
	sw	$1, 12($fp)
	b	.LBB84_9
	nop
.LBB84_9:
	lw	$2, 12($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	libiberty_ffs
.Lfunc_end84:
	.size	libiberty_ffs, .Lfunc_end84-libiberty_ffs
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	3
	.type	gl_isinff,@function
	.set	nomicromips
	.set	nomips16
	.ent	gl_isinff
gl_isinff:                              # @gl_isinff
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	sd	$gp, 24($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(gl_isinff)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(gl_isinff)))
	sd	$gp, 8($fp)                     # 8-byte Folded Spill
                                        # kill: def $at killed $a0
	sw	$4, 20($fp)
	lw	$4, 20($fp)
	ld	$25, %call16(__ltsf2)($gp)
	lui	$1, 65407
	ori	$5, $1, 65535
	.reloc .Ltmp17, R_MIPS_JALR, __ltsf2
.Ltmp17:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	bltz	$2, .LBB85_3
	nop
# %bb.1:
	b	.LBB85_2
	nop
.LBB85_2:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	lw	$4, 20($fp)
	ld	$25, %call16(__gtsf2)($gp)
	lui	$1, 32639
	ori	$5, $1, 65535
	.reloc .Ltmp18, R_MIPS_JALR, __gtsf2
.Ltmp18:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	slt	$1, $zero, $2
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	b	.LBB85_3
	nop
.LBB85_3:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$gp, 24($sp)                    # 8-byte Folded Reload
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	gl_isinff
.Lfunc_end85:
	.size	gl_isinff, .Lfunc_end85-gl_isinff
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	3
	.type	gl_isinfd,@function
	.set	nomicromips
	.set	nomips16
	.ent	gl_isinfd
gl_isinfd:                              # @gl_isinfd
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	sd	$gp, 24($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(gl_isinfd)))
	sd	$gp, 0($fp)                     # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a0_64
	sd	$4, 16($fp)
	ld	$4, 16($fp)
	ld	$25, %call16(__ltdf2)($gp)
	daddiu	$1, $zero, 4095
	dsll	$1, $1, 52
	daddiu	$5, $1, -1
	.reloc .Ltmp19, R_MIPS_JALR, __ltdf2
.Ltmp19:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	bltz	$2, .LBB86_3
	nop
# %bb.1:
	b	.LBB86_2
	nop
.LBB86_2:
	ld	$gp, 0($fp)                     # 8-byte Folded Reload
	ld	$4, 16($fp)
	ld	$25, %call16(__gtdf2)($gp)
	daddiu	$1, $zero, 2047
	dsll	$1, $1, 52
	daddiu	$5, $1, -1
	.reloc .Ltmp20, R_MIPS_JALR, __gtdf2
.Ltmp20:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	slt	$1, $zero, $2
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB86_3
	nop
.LBB86_3:
	lw	$2, 12($fp)                     # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$gp, 24($sp)                    # 8-byte Folded Reload
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	gl_isinfd
.Lfunc_end86:
	.size	gl_isinfd, .Lfunc_end86-gl_isinfd
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	3
	.type	gl_isinfl,@function
	.set	nomicromips
	.set	nomips16
	.ent	gl_isinfl
gl_isinfl:                              # @gl_isinfl
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(gl_isinfl)))
	sd	$gp, 0($fp)                     # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 24($fp)
	sd	$4, 16($fp)
	ld	$4, 16($fp)
	ld	$5, 24($fp)
	ld	$25, %call16(__lttf2)($gp)
	daddiu	$6, $zero, -1
	dsll	$1, $6, 48
	daddiu	$7, $1, -1
	.reloc .Ltmp21, R_MIPS_JALR, __lttf2
.Ltmp21:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	bltz	$2, .LBB87_3
	nop
# %bb.1:
	b	.LBB87_2
	nop
.LBB87_2:
	ld	$gp, 0($fp)                     # 8-byte Folded Reload
	ld	$4, 16($fp)
	ld	$5, 24($fp)
	ld	$25, %call16(__gttf2)($gp)
	daddiu	$1, $zero, 32767
	dsll	$1, $1, 48
	daddiu	$7, $1, -1
	daddiu	$6, $zero, -1
	.reloc .Ltmp22, R_MIPS_JALR, __gttf2
.Ltmp22:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	slt	$1, $zero, $2
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB87_3
	nop
.LBB87_3:
	lw	$2, 12($fp)                     # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	gl_isinfl
.Lfunc_end87:
	.size	gl_isinfl, .Lfunc_end87-gl_isinfl
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	3
	.type	_Qp_itoq,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Qp_itoq
_Qp_itoq:                               # @_Qp_itoq
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	sd	$gp, 24($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(_Qp_itoq)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(_Qp_itoq)))
	sd	$gp, 0($fp)                     # 8-byte Folded Spill
	move	$1, $5
	sd	$4, 16($fp)
	sw	$1, 12($fp)
	lw	$4, 12($fp)
	ld	$25, %call16(__floatsidf)($gp)
	.reloc .Ltmp23, R_MIPS_JALR, __floatsidf
.Ltmp23:
	jalr	$25
	nop
	ld	$gp, 0($fp)                     # 8-byte Folded Reload
	move	$4, $2
	ld	$25, %call16(__extenddftf2)($gp)
	.reloc .Ltmp24, R_MIPS_JALR, __extenddftf2
.Ltmp24:
	jalr	$25
	nop
	ld	$1, 16($fp)
	sd	$4, 8($1)
	sd	$2, 0($1)
	move	$sp, $fp
	ld	$gp, 24($sp)                    # 8-byte Folded Reload
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Qp_itoq
.Lfunc_end88:
	.size	_Qp_itoq, .Lfunc_end88-_Qp_itoq
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	3
	.type	ldexpf,@function
	.set	nomicromips
	.set	nomips16
	.ent	ldexpf
ldexpf:                                 # @ldexpf
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(ldexpf)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(ldexpf)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$1, $5
                                        # kill: def $v0 killed $a0
	sw	$4, 36($fp)
	sw	$1, 32($fp)
	lw	$1, 36($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$2, $1, $2
	lui	$1, 32640
	slt	$1, $1, $2
	bnez	$1, .LBB89_15
	nop
# %bb.1:
	b	.LBB89_2
	nop
.LBB89_2:
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	lw	$5, 36($fp)
	sd	$5, 8($fp)                      # 8-byte Folded Spill
	ld	$25, %call16(__addsf3)($gp)
	move	$4, $5
	.reloc .Ltmp25, R_MIPS_JALR, __addsf3
.Ltmp25:
	jalr	$25
	nop
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	ld	$5, 8($fp)                      # 8-byte Folded Reload
	sll	$4, $2, 0
	ld	$25, %call16(__eqsf2)($gp)
	.reloc .Ltmp26, R_MIPS_JALR, __eqsf2
.Ltmp26:
	jalr	$25
	nop
	beqz	$2, .LBB89_15
	nop
# %bb.3:
	b	.LBB89_4
	nop
.LBB89_4:
	lw	$1, 32($fp)
	slti	$1, $1, 0
	lui	$2, 16384
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	lui	$2, 16128
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	bnez	$1, .LBB89_6
	nop
# %bb.5:
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	sw	$1, 4($fp)                      # 4-byte Folded Spill
.LBB89_6:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	sw	$1, 28($fp)
	b	.LBB89_7
	nop
.LBB89_7:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 32($fp)
	srl	$2, $1, 31
	addu	$2, $1, $2
	addiu	$3, $zero, -2
	and	$2, $2, $3
	subu	$1, $1, $2
	beqz	$1, .LBB89_10
	nop
# %bb.8:                                #   in Loop: Header=BB89_7 Depth=1
	b	.LBB89_9
	nop
.LBB89_9:                               #   in Loop: Header=BB89_7 Depth=1
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	lw	$5, 28($fp)
	lw	$4, 36($fp)
	ld	$25, %call16(__mulsf3)($gp)
	.reloc .Ltmp27, R_MIPS_JALR, __mulsf3
.Ltmp27:
	jalr	$25
	nop
	sw	$2, 36($fp)
	b	.LBB89_10
	nop
.LBB89_10:                              #   in Loop: Header=BB89_7 Depth=1
	lw	$1, 32($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 32($fp)
	lw	$1, 32($fp)
	bnez	$1, .LBB89_13
	nop
# %bb.11:
	b	.LBB89_12
	nop
.LBB89_12:
	b	.LBB89_14
	nop
.LBB89_13:                              #   in Loop: Header=BB89_7 Depth=1
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	lw	$5, 28($fp)
	ld	$25, %call16(__mulsf3)($gp)
	move	$4, $5
	.reloc .Ltmp28, R_MIPS_JALR, __mulsf3
.Ltmp28:
	jalr	$25
	nop
	sw	$2, 28($fp)
	b	.LBB89_7
	nop
.LBB89_14:
	b	.LBB89_15
	nop
.LBB89_15:
	lw	$2, 36($fp)
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	ldexpf
.Lfunc_end89:
	.size	ldexpf, .Lfunc_end89-ldexpf
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	3
	.type	ldexp,@function
	.set	nomicromips
	.set	nomips16
	.ent	ldexp
ldexp:                                  # @ldexp
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	sd	$gp, 56($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(ldexp)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(ldexp)))
	sd	$1, 24($fp)                     # 8-byte Folded Spill
	move	$1, $5
                                        # kill: def $v0_64 killed $a0_64
	sd	$4, 48($fp)
	sw	$1, 44($fp)
	ld	$1, 48($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	daddiu	$2, $2, -1
	and	$2, $1, $2
	daddiu	$1, $zero, 2047
	dsll	$1, $1, 52
	slt	$1, $1, $2
	bnez	$1, .LBB90_15
	nop
# %bb.1:
	b	.LBB90_2
	nop
.LBB90_2:
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$5, 48($fp)
	sd	$5, 16($fp)                     # 8-byte Folded Spill
	ld	$25, %call16(__adddf3)($gp)
	move	$4, $5
	.reloc .Ltmp29, R_MIPS_JALR, __adddf3
.Ltmp29:
	jalr	$25
	nop
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$5, 16($fp)                     # 8-byte Folded Reload
	move	$4, $2
	ld	$25, %call16(__eqdf2)($gp)
	.reloc .Ltmp30, R_MIPS_JALR, __eqdf2
.Ltmp30:
	jalr	$25
	nop
	beqz	$2, .LBB90_15
	nop
# %bb.3:
	b	.LBB90_4
	nop
.LBB90_4:
	lw	$1, 44($fp)
	slti	$1, $1, 0
	daddiu	$2, $zero, 1
	dsll	$2, $2, 62
	sd	$2, 0($fp)                      # 8-byte Folded Spill
	daddiu	$2, $zero, 511
	dsll	$2, $2, 53
	sd	$2, 8($fp)                      # 8-byte Folded Spill
	bnez	$1, .LBB90_6
	nop
# %bb.5:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	sd	$1, 8($fp)                      # 8-byte Folded Spill
.LBB90_6:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	sd	$1, 32($fp)
	b	.LBB90_7
	nop
.LBB90_7:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 44($fp)
	srl	$2, $1, 31
	addu	$2, $1, $2
	addiu	$3, $zero, -2
	and	$2, $2, $3
	subu	$1, $1, $2
	beqz	$1, .LBB90_10
	nop
# %bb.8:                                #   in Loop: Header=BB90_7 Depth=1
	b	.LBB90_9
	nop
.LBB90_9:                               #   in Loop: Header=BB90_7 Depth=1
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$5, 32($fp)
	ld	$4, 48($fp)
	ld	$25, %call16(__muldf3)($gp)
	.reloc .Ltmp31, R_MIPS_JALR, __muldf3
.Ltmp31:
	jalr	$25
	nop
	sd	$2, 48($fp)
	b	.LBB90_10
	nop
.LBB90_10:                              #   in Loop: Header=BB90_7 Depth=1
	lw	$1, 44($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 44($fp)
	lw	$1, 44($fp)
	bnez	$1, .LBB90_13
	nop
# %bb.11:
	b	.LBB90_12
	nop
.LBB90_12:
	b	.LBB90_14
	nop
.LBB90_13:                              #   in Loop: Header=BB90_7 Depth=1
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$5, 32($fp)
	ld	$25, %call16(__muldf3)($gp)
	move	$4, $5
	.reloc .Ltmp32, R_MIPS_JALR, __muldf3
.Ltmp32:
	jalr	$25
	nop
	sd	$2, 32($fp)
	b	.LBB90_7
	nop
.LBB90_14:
	b	.LBB90_15
	nop
.LBB90_15:
	ld	$2, 48($fp)
	move	$sp, $fp
	ld	$gp, 56($sp)                    # 8-byte Folded Reload
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	ldexp
.Lfunc_end90:
	.size	ldexp, .Lfunc_end90-ldexp
                                        # -- End function
	.globl	ldexpl                          # -- Begin function ldexpl
	.p2align	3
	.type	ldexpl,@function
	.set	nomicromips
	.set	nomips16
	.ent	ldexpl
ldexpl:                                 # @ldexpl
	.frame	$fp,144,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -144
	sd	$ra, 136($sp)                   # 8-byte Folded Spill
	sd	$fp, 128($sp)                   # 8-byte Folded Spill
	sd	$gp, 120($sp)                   # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(ldexpl)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(ldexpl)))
	sd	$1, 48($fp)                     # 8-byte Folded Spill
	move	$1, $6
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 104($fp)
	sd	$4, 96($fp)
	sw	$1, 92($fp)
	ld	$2, 96($fp)
	ld	$1, 104($fp)
	daddiu	$3, $zero, 1
	dsll	$3, $3, 63
	daddiu	$3, $3, -1
	and	$1, $1, $3
	daddiu	$3, $zero, 32767
	dsll	$3, $3, 48
	slt	$4, $3, $1
	sw	$4, 56($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltu	$2, $zero, $2
	sw	$2, 60($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB91_2
	nop
# %bb.1:
	lw	$1, 56($fp)                     # 4-byte Folded Reload
	sw	$1, 60($fp)                     # 4-byte Folded Spill
.LBB91_2:
	lw	$1, 60($fp)                     # 4-byte Folded Reload
	bnez	$1, .LBB91_17
	nop
# %bb.3:
	b	.LBB91_4
	nop
.LBB91_4:
	ld	$gp, 48($fp)                    # 8-byte Folded Reload
	ld	$6, 96($fp)
	sd	$6, 24($fp)                     # 8-byte Folded Spill
	ld	$7, 104($fp)
	sd	$7, 32($fp)                     # 8-byte Folded Spill
	ld	$25, %call16(__addtf3)($gp)
	move	$4, $6
	move	$5, $7
	.reloc .Ltmp33, R_MIPS_JALR, __addtf3
.Ltmp33:
	jalr	$25
	nop
	ld	$gp, 48($fp)                    # 8-byte Folded Reload
	ld	$6, 24($fp)                     # 8-byte Folded Reload
	ld	$7, 32($fp)                     # 8-byte Folded Reload
	sd	$2, 40($fp)                     # 8-byte Folded Spill
	move	$5, $4
	ld	$4, 40($fp)                     # 8-byte Folded Reload
	ld	$25, %call16(__eqtf2)($gp)
	.reloc .Ltmp34, R_MIPS_JALR, __eqtf2
.Ltmp34:
	jalr	$25
	nop
	beqz	$2, .LBB91_17
	nop
# %bb.5:
	b	.LBB91_6
	nop
.LBB91_6:
	lw	$1, 92($fp)
	slti	$1, $1, 0
	daddiu	$2, $zero, 1
	dsll	$2, $2, 62
	sd	$2, 8($fp)                      # 8-byte Folded Spill
	daddiu	$2, $zero, 8191
	dsll	$2, $2, 49
	sd	$2, 16($fp)                     # 8-byte Folded Spill
	bnez	$1, .LBB91_8
	nop
# %bb.7:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	sd	$1, 16($fp)                     # 8-byte Folded Spill
.LBB91_8:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	daddiu	$2, $zero, 0
	sd	$zero, 64($fp)
	sd	$1, 72($fp)
	b	.LBB91_9
	nop
.LBB91_9:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 92($fp)
	srl	$2, $1, 31
	addu	$2, $1, $2
	addiu	$3, $zero, -2
	and	$2, $2, $3
	subu	$1, $1, $2
	beqz	$1, .LBB91_12
	nop
# %bb.10:                               #   in Loop: Header=BB91_9 Depth=1
	b	.LBB91_11
	nop
.LBB91_11:                              #   in Loop: Header=BB91_9 Depth=1
	ld	$gp, 48($fp)                    # 8-byte Folded Reload
	ld	$6, 64($fp)
	ld	$7, 72($fp)
	ld	$4, 96($fp)
	ld	$5, 104($fp)
	ld	$25, %call16(__multf3)($gp)
	.reloc .Ltmp35, R_MIPS_JALR, __multf3
.Ltmp35:
	jalr	$25
	nop
	sd	$4, 104($fp)
	sd	$2, 96($fp)
	b	.LBB91_12
	nop
.LBB91_12:                              #   in Loop: Header=BB91_9 Depth=1
	lw	$1, 92($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 92($fp)
	lw	$1, 92($fp)
	bnez	$1, .LBB91_15
	nop
# %bb.13:
	b	.LBB91_14
	nop
.LBB91_14:
	b	.LBB91_16
	nop
.LBB91_15:                              #   in Loop: Header=BB91_9 Depth=1
	ld	$gp, 48($fp)                    # 8-byte Folded Reload
	ld	$6, 64($fp)
	ld	$7, 72($fp)
	ld	$25, %call16(__multf3)($gp)
	move	$4, $6
	move	$5, $7
	.reloc .Ltmp36, R_MIPS_JALR, __multf3
.Ltmp36:
	jalr	$25
	nop
	sd	$4, 72($fp)
	sd	$2, 64($fp)
	b	.LBB91_9
	nop
.LBB91_16:
	b	.LBB91_17
	nop
.LBB91_17:
	ld	$2, 96($fp)
	ld	$4, 104($fp)
	move	$sp, $fp
	ld	$gp, 120($sp)                   # 8-byte Folded Reload
	ld	$fp, 128($sp)                   # 8-byte Folded Reload
	ld	$ra, 136($sp)                   # 8-byte Folded Reload
	daddiu	$sp, $sp, 144
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	ldexpl
.Lfunc_end91:
	.size	ldexpl, .Lfunc_end91-ldexpl
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	3
	.type	memxor,@function
	.set	nomicromips
	.set	nomips16
	.ent	memxor
memxor:                                 # @memxor
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$1, 32($fp)
	sd	$1, 16($fp)
	ld	$1, 40($fp)
	sd	$1, 8($fp)
	b	.LBB92_1
	nop
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	beqz	$1, .LBB92_5
	nop
# %bb.2:                                #   in Loop: Header=BB92_1 Depth=1
	b	.LBB92_3
	nop
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	ld	$1, 16($fp)
	daddiu	$2, $1, 1
	sd	$2, 16($fp)
	lbu	$3, 0($1)
	ld	$2, 8($fp)
	daddiu	$1, $2, 1
	sd	$1, 8($fp)
	lbu	$1, 0($2)
	xor	$1, $1, $3
	sb	$1, 0($2)
	b	.LBB92_4
	nop
.LBB92_4:                               #   in Loop: Header=BB92_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	b	.LBB92_1
	nop
.LBB92_5:
	ld	$2, 40($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	memxor
.Lfunc_end92:
	.size	memxor, .Lfunc_end92-memxor
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	3
	.type	strncat,@function
	.set	nomicromips
	.set	nomips16
	.ent	strncat
strncat:                                # @strncat
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	sd	$gp, 56($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(strncat)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(strncat)))
	sd	$4, 48($fp)
	sd	$5, 40($fp)
	sd	$6, 32($fp)
	ld	$4, 48($fp)
	sd	$4, 16($fp)                     # 8-byte Folded Spill
	ld	$25, %call16(strlen)($gp)
	.reloc .Ltmp37, R_MIPS_JALR, strlen
.Ltmp37:
	jalr	$25
	nop
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	daddu	$1, $1, $2
	sd	$1, 24($fp)
	b	.LBB93_1
	nop
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 32($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB93_4
	nop
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	b	.LBB93_3
	nop
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	ld	$1, 40($fp)
	lbu	$1, 0($1)
	ld	$2, 24($fp)
	sb	$1, 0($2)
	sltu	$1, $zero, $1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB93_4
	nop
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB93_8
	nop
# %bb.5:                                #   in Loop: Header=BB93_1 Depth=1
	b	.LBB93_6
	nop
.LBB93_6:                               #   in Loop: Header=BB93_1 Depth=1
	b	.LBB93_7
	nop
.LBB93_7:                               #   in Loop: Header=BB93_1 Depth=1
	ld	$1, 40($fp)
	daddiu	$1, $1, 1
	sd	$1, 40($fp)
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	ld	$1, 32($fp)
	daddiu	$1, $1, -1
	sd	$1, 32($fp)
	b	.LBB93_1
	nop
.LBB93_8:
	ld	$1, 32($fp)
	bnez	$1, .LBB93_11
	nop
# %bb.9:
	b	.LBB93_10
	nop
.LBB93_10:
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sb	$zero, 0($1)
	b	.LBB93_11
	nop
.LBB93_11:
	ld	$2, 48($fp)
	move	$sp, $fp
	ld	$gp, 56($sp)                    # 8-byte Folded Reload
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	strncat
.Lfunc_end93:
	.size	strncat, .Lfunc_end93-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	3
	.type	strnlen,@function
	.set	nomicromips
	.set	nomips16
	.ent	strnlen
strnlen:                                # @strnlen
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	daddiu	$1, $zero, 0
	sd	$zero, 8($fp)
	b	.LBB94_1
	nop
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 8($fp)
	ld	$3, 16($fp)
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB94_4
	nop
# %bb.2:                                #   in Loop: Header=BB94_1 Depth=1
	b	.LBB94_3
	nop
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	ld	$1, 24($fp)
	ld	$2, 8($fp)
	daddu	$1, $1, $2
	lb	$1, 0($1)
	sltu	$1, $zero, $1
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB94_4
	nop
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB94_8
	nop
# %bb.5:                                #   in Loop: Header=BB94_1 Depth=1
	b	.LBB94_6
	nop
.LBB94_6:                               #   in Loop: Header=BB94_1 Depth=1
	b	.LBB94_7
	nop
.LBB94_7:                               #   in Loop: Header=BB94_1 Depth=1
	ld	$1, 8($fp)
	daddiu	$1, $1, 1
	sd	$1, 8($fp)
	b	.LBB94_1
	nop
.LBB94_8:
	ld	$2, 8($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	strnlen
.Lfunc_end94:
	.size	strnlen, .Lfunc_end94-strnlen
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	3
	.type	strpbrk,@function
	.set	nomicromips
	.set	nomips16
	.ent	strpbrk
strpbrk:                                # @strpbrk
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 16($fp)
	sd	$5, 8($fp)
	b	.LBB95_1
	nop
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_4 Depth 2
	ld	$1, 16($fp)
	lb	$1, 0($1)
	beqz	$1, .LBB95_11
	nop
# %bb.2:                                #   in Loop: Header=BB95_1 Depth=1
	b	.LBB95_3
	nop
.LBB95_3:                               #   in Loop: Header=BB95_1 Depth=1
	ld	$1, 8($fp)
	sd	$1, 0($fp)
	b	.LBB95_4
	nop
.LBB95_4:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	$1, 0($fp)
	lb	$1, 0($1)
	beqz	$1, .LBB95_10
	nop
# %bb.5:                                #   in Loop: Header=BB95_4 Depth=2
	b	.LBB95_6
	nop
.LBB95_6:                               #   in Loop: Header=BB95_4 Depth=2
	ld	$1, 0($fp)
	daddiu	$2, $1, 1
	sd	$2, 0($fp)
	lb	$1, 0($1)
	ld	$2, 16($fp)
	lb	$2, 0($2)
	bne	$1, $2, .LBB95_9
	nop
# %bb.7:
	b	.LBB95_8
	nop
.LBB95_8:
	ld	$1, 16($fp)
	sd	$1, 24($fp)
	b	.LBB95_12
	nop
.LBB95_9:                               #   in Loop: Header=BB95_4 Depth=2
	b	.LBB95_4
	nop
.LBB95_10:                              #   in Loop: Header=BB95_1 Depth=1
	ld	$1, 16($fp)
	daddiu	$1, $1, 1
	sd	$1, 16($fp)
	b	.LBB95_1
	nop
.LBB95_11:
	daddiu	$1, $zero, 0
	sd	$zero, 24($fp)
	b	.LBB95_12
	nop
.LBB95_12:
	ld	$2, 24($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	strpbrk
.Lfunc_end95:
	.size	strpbrk, .Lfunc_end95-strpbrk
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	3
	.type	strrchr,@function
	.set	nomicromips
	.set	nomips16
	.ent	strrchr
strrchr:                                # @strrchr
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 24($fp)
	sw	$1, 20($fp)
	daddiu	$1, $zero, 0
	sd	$zero, 8($fp)
	b	.LBB96_1
	nop
.LBB96_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	lb	$1, 0($1)
	lw	$2, 20($fp)
	bne	$1, $2, .LBB96_4
	nop
# %bb.2:                                #   in Loop: Header=BB96_1 Depth=1
	b	.LBB96_3
	nop
.LBB96_3:                               #   in Loop: Header=BB96_1 Depth=1
	ld	$1, 24($fp)
	sd	$1, 8($fp)
	b	.LBB96_4
	nop
.LBB96_4:                               #   in Loop: Header=BB96_1 Depth=1
	b	.LBB96_5
	nop
.LBB96_5:                               #   in Loop: Header=BB96_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$2, $1, 1
	sd	$2, 24($fp)
	lbu	$1, 0($1)
	bnez	$1, .LBB96_1
	nop
# %bb.6:
	b	.LBB96_7
	nop
.LBB96_7:
	ld	$2, 8($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	strrchr
.Lfunc_end96:
	.size	strrchr, .Lfunc_end96-strrchr
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	3
	.type	strstr,@function
	.set	nomicromips
	.set	nomips16
	.ent	strstr
strstr:                                 # @strstr
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	sd	$gp, 56($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(strstr)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(strstr)))
	sd	$gp, 8($fp)                     # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	ld	$1, 40($fp)
	sd	$1, 24($fp)
	ld	$4, 32($fp)
	ld	$25, %call16(strlen)($gp)
	.reloc .Ltmp38, R_MIPS_JALR, strlen
.Ltmp38:
	jalr	$25
	nop
	sd	$2, 16($fp)
	ld	$1, 16($fp)
	bnez	$1, .LBB97_3
	nop
# %bb.1:
	b	.LBB97_2
	nop
.LBB97_2:
	ld	$1, 40($fp)
	sd	$1, 48($fp)
	b	.LBB97_12
	nop
.LBB97_3:
	b	.LBB97_4
	nop
.LBB97_4:                               # =>This Inner Loop Header: Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 24($fp)
	ld	$1, 32($fp)
	lb	$5, 0($1)
	ld	$25, %call16(strchr)($gp)
	.reloc .Ltmp39, R_MIPS_JALR, strchr
.Ltmp39:
	jalr	$25
	nop
	sd	$2, 24($fp)
	beqz	$2, .LBB97_11
	nop
# %bb.5:                                #   in Loop: Header=BB97_4 Depth=1
	b	.LBB97_6
	nop
.LBB97_6:                               #   in Loop: Header=BB97_4 Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 24($fp)
	ld	$5, 32($fp)
	ld	$6, 16($fp)
	ld	$25, %call16(strncmp)($gp)
	.reloc .Ltmp40, R_MIPS_JALR, strncmp
.Ltmp40:
	jalr	$25
	nop
	bnez	$2, .LBB97_9
	nop
# %bb.7:
	b	.LBB97_8
	nop
.LBB97_8:
	ld	$1, 24($fp)
	sd	$1, 48($fp)
	b	.LBB97_12
	nop
.LBB97_9:                               #   in Loop: Header=BB97_4 Depth=1
	b	.LBB97_10
	nop
.LBB97_10:                              #   in Loop: Header=BB97_4 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	b	.LBB97_4
	nop
.LBB97_11:
	daddiu	$1, $zero, 0
	sd	$zero, 48($fp)
	b	.LBB97_12
	nop
.LBB97_12:
	ld	$2, 48($fp)
	move	$sp, $fp
	ld	$gp, 56($sp)                    # 8-byte Folded Reload
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	strstr
.Lfunc_end97:
	.size	strstr, .Lfunc_end97-strstr
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	3
	.type	copysign,@function
	.set	nomicromips
	.set	nomips16
	.ent	copysign
copysign:                               # @copysign
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(copysign)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(copysign)))
	sd	$gp, 8($fp)                     # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$4, 24($fp)
	ld	$25, %call16(__ltdf2)($gp)
	daddiu	$5, $zero, 0
	.reloc .Ltmp41, R_MIPS_JALR, __ltdf2
.Ltmp41:
	jalr	$25
	nop
	bgez	$2, .LBB98_4
	nop
# %bb.1:
	b	.LBB98_2
	nop
.LBB98_2:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 16($fp)
	ld	$25, %call16(__gtdf2)($gp)
	daddiu	$5, $zero, 0
	.reloc .Ltmp42, R_MIPS_JALR, __gtdf2
.Ltmp42:
	jalr	$25
	nop
	bgtz	$2, .LBB98_8
	nop
# %bb.3:
	b	.LBB98_4
	nop
.LBB98_4:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 24($fp)
	ld	$25, %call16(__gtdf2)($gp)
	daddiu	$5, $zero, 0
	.reloc .Ltmp43, R_MIPS_JALR, __gtdf2
.Ltmp43:
	jalr	$25
	nop
	blez	$2, .LBB98_9
	nop
# %bb.5:
	b	.LBB98_6
	nop
.LBB98_6:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 16($fp)
	ld	$25, %call16(__ltdf2)($gp)
	daddiu	$5, $zero, 0
	.reloc .Ltmp44, R_MIPS_JALR, __ltdf2
.Ltmp44:
	jalr	$25
	nop
	bgez	$2, .LBB98_9
	nop
# %bb.7:
	b	.LBB98_8
	nop
.LBB98_8:
	ld	$1, 24($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	xor	$1, $1, $2
	sd	$1, 32($fp)
	b	.LBB98_10
	nop
.LBB98_9:
	ld	$1, 24($fp)
	sd	$1, 32($fp)
	b	.LBB98_10
	nop
.LBB98_10:
	ld	$2, 32($fp)
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	copysign
.Lfunc_end98:
	.size	copysign, .Lfunc_end98-copysign
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	3
	.type	memmem,@function
	.set	nomicromips
	.set	nomips16
	.ent	memmem
memmem:                                 # @memmem
	.frame	$fp,96,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -96
	sd	$ra, 88($sp)                    # 8-byte Folded Spill
	sd	$fp, 80($sp)                    # 8-byte Folded Spill
	sd	$gp, 72($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(memmem)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(memmem)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 56($fp)
	sd	$5, 48($fp)
	sd	$6, 40($fp)
	sd	$7, 32($fp)
	ld	$1, 56($fp)
	ld	$2, 48($fp)
	daddu	$1, $1, $2
	ld	$2, 32($fp)
	dsubu	$1, $1, $2
	sd	$1, 16($fp)
	ld	$1, 32($fp)
	bnez	$1, .LBB99_3
	nop
# %bb.1:
	b	.LBB99_2
	nop
.LBB99_2:
	ld	$1, 56($fp)
	sd	$1, 64($fp)
	b	.LBB99_17
	nop
.LBB99_3:
	ld	$1, 48($fp)
	ld	$2, 32($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB99_6
	nop
# %bb.4:
	b	.LBB99_5
	nop
.LBB99_5:
	daddiu	$1, $zero, 0
	sd	$zero, 64($fp)
	b	.LBB99_17
	nop
.LBB99_6:
	ld	$1, 56($fp)
	sd	$1, 24($fp)
	b	.LBB99_7
	nop
.LBB99_7:                               # =>This Inner Loop Header: Depth=1
	ld	$2, 24($fp)
	ld	$1, 16($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB99_16
	nop
# %bb.8:                                #   in Loop: Header=BB99_7 Depth=1
	b	.LBB99_9
	nop
.LBB99_9:                               #   in Loop: Header=BB99_7 Depth=1
	ld	$1, 24($fp)
	lb	$1, 0($1)
	ld	$2, 40($fp)
	lb	$2, 0($2)
	bne	$1, $2, .LBB99_14
	nop
# %bb.10:                               #   in Loop: Header=BB99_7 Depth=1
	b	.LBB99_11
	nop
.LBB99_11:                              #   in Loop: Header=BB99_7 Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$1, 24($fp)
	daddiu	$4, $1, 1
	ld	$1, 40($fp)
	daddiu	$5, $1, 1
	ld	$1, 32($fp)
	daddiu	$6, $1, -1
	ld	$25, %call16(memcmp)($gp)
	.reloc .Ltmp45, R_MIPS_JALR, memcmp
.Ltmp45:
	jalr	$25
	nop
	bnez	$2, .LBB99_14
	nop
# %bb.12:
	b	.LBB99_13
	nop
.LBB99_13:
	ld	$1, 24($fp)
	sd	$1, 64($fp)
	b	.LBB99_17
	nop
.LBB99_14:                              #   in Loop: Header=BB99_7 Depth=1
	b	.LBB99_15
	nop
.LBB99_15:                              #   in Loop: Header=BB99_7 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	b	.LBB99_7
	nop
.LBB99_16:
	daddiu	$1, $zero, 0
	sd	$zero, 64($fp)
	b	.LBB99_17
	nop
.LBB99_17:
	ld	$2, 64($fp)
	move	$sp, $fp
	ld	$gp, 72($sp)                    # 8-byte Folded Reload
	ld	$fp, 80($sp)                    # 8-byte Folded Reload
	ld	$ra, 88($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 96
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	memmem
.Lfunc_end99:
	.size	memmem, .Lfunc_end99-memmem
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	3
	.type	mempcpy,@function
	.set	nomicromips
	.set	nomips16
	.ent	mempcpy
mempcpy:                                # @mempcpy
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(mempcpy)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(mempcpy)))
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	sd	$6, 16($fp)
	ld	$4, 32($fp)
	sd	$4, 8($fp)                      # 8-byte Folded Spill
	ld	$5, 24($fp)
	ld	$6, 16($fp)
	ld	$25, %call16(memcpy)($gp)
	.reloc .Ltmp46, R_MIPS_JALR, memcpy
.Ltmp46:
	jalr	$25
	nop
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$2, 16($fp)
	daddu	$2, $1, $2
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	mempcpy
.Lfunc_end100:
	.size	mempcpy, .Lfunc_end100-mempcpy
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	3
	.type	frexp,@function
	.set	nomicromips
	.set	nomips16
	.ent	frexp
frexp:                                  # @frexp
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(frexp)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(frexp)))
	sd	$gp, 8($fp)                     # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a0_64
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	sw	$zero, 16($fp)
	sw	$zero, 20($fp)
	ld	$4, 32($fp)
	ld	$25, %call16(__ltdf2)($gp)
	daddiu	$5, $zero, 0
	.reloc .Ltmp47, R_MIPS_JALR, __ltdf2
.Ltmp47:
	jalr	$25
	nop
	bgez	$2, .LBB101_3
	nop
# %bb.1:
	b	.LBB101_2
	nop
.LBB101_2:
	ld	$1, 32($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	xor	$1, $1, $2
	sd	$1, 32($fp)
	addiu	$1, $zero, 1
	sw	$1, 20($fp)
	b	.LBB101_3
	nop
.LBB101_3:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 32($fp)
	ld	$25, %call16(__gedf2)($gp)
	daddiu	$1, $zero, 1023
	dsll	$5, $1, 52
	.reloc .Ltmp48, R_MIPS_JALR, __gedf2
.Ltmp48:
	jalr	$25
	nop
	bltz	$2, .LBB101_10
	nop
# %bb.4:
	b	.LBB101_5
	nop
.LBB101_5:
	b	.LBB101_6
	nop
.LBB101_6:                              # =>This Inner Loop Header: Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 32($fp)
	ld	$25, %call16(__gedf2)($gp)
	daddiu	$1, $zero, 1023
	dsll	$5, $1, 52
	.reloc .Ltmp49, R_MIPS_JALR, __gedf2
.Ltmp49:
	jalr	$25
	nop
	bltz	$2, .LBB101_9
	nop
# %bb.7:                                #   in Loop: Header=BB101_6 Depth=1
	b	.LBB101_8
	nop
.LBB101_8:                              #   in Loop: Header=BB101_6 Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	ld	$4, 32($fp)
	ld	$25, %call16(__muldf3)($gp)
	daddiu	$1, $zero, 511
	dsll	$5, $1, 53
	.reloc .Ltmp50, R_MIPS_JALR, __muldf3
.Ltmp50:
	jalr	$25
	nop
	sd	$2, 32($fp)
	b	.LBB101_6
	nop
.LBB101_9:
	b	.LBB101_20
	nop
.LBB101_10:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 32($fp)
	ld	$25, %call16(__ltdf2)($gp)
	daddiu	$1, $zero, 511
	dsll	$5, $1, 53
	.reloc .Ltmp51, R_MIPS_JALR, __ltdf2
.Ltmp51:
	jalr	$25
	nop
	bgez	$2, .LBB101_19
	nop
# %bb.11:
	b	.LBB101_12
	nop
.LBB101_12:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 32($fp)
	ld	$25, %call16(__eqdf2)($gp)
	daddiu	$5, $zero, 0
	.reloc .Ltmp52, R_MIPS_JALR, __eqdf2
.Ltmp52:
	jalr	$25
	nop
	beqz	$2, .LBB101_19
	nop
# %bb.13:
	b	.LBB101_14
	nop
.LBB101_14:
	b	.LBB101_15
	nop
.LBB101_15:                             # =>This Inner Loop Header: Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 32($fp)
	ld	$25, %call16(__ltdf2)($gp)
	daddiu	$1, $zero, 511
	dsll	$5, $1, 53
	.reloc .Ltmp53, R_MIPS_JALR, __ltdf2
.Ltmp53:
	jalr	$25
	nop
	bgez	$2, .LBB101_18
	nop
# %bb.16:                               #   in Loop: Header=BB101_15 Depth=1
	b	.LBB101_17
	nop
.LBB101_17:                             #   in Loop: Header=BB101_15 Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	lw	$1, 16($fp)
	addiu	$1, $1, -1
	sw	$1, 16($fp)
	ld	$5, 32($fp)
	ld	$25, %call16(__adddf3)($gp)
	move	$4, $5
	.reloc .Ltmp54, R_MIPS_JALR, __adddf3
.Ltmp54:
	jalr	$25
	nop
	sd	$2, 32($fp)
	b	.LBB101_15
	nop
.LBB101_18:
	b	.LBB101_19
	nop
.LBB101_19:
	b	.LBB101_20
	nop
.LBB101_20:
	lw	$1, 16($fp)
	ld	$2, 24($fp)
	sw	$1, 0($2)
	lw	$1, 20($fp)
	beqz	$1, .LBB101_23
	nop
# %bb.21:
	b	.LBB101_22
	nop
.LBB101_22:
	ld	$1, 32($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	xor	$1, $1, $2
	sd	$1, 32($fp)
	b	.LBB101_23
	nop
.LBB101_23:
	ld	$2, 32($fp)
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	frexp
.Lfunc_end101:
	.size	frexp, .Lfunc_end101-frexp
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	3
	.type	__muldi3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__muldi3
__muldi3:                               # @__muldi3
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	daddiu	$1, $zero, 0
	sd	$zero, 8($fp)
	ld	$1, 24($fp)
	sd	$1, 0($fp)
	b	.LBB102_1
	nop
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	ld	$1, 0($fp)
	beqz	$1, .LBB102_7
	nop
# %bb.2:                                #   in Loop: Header=BB102_1 Depth=1
	b	.LBB102_3
	nop
.LBB102_3:                              #   in Loop: Header=BB102_1 Depth=1
	lbu	$1, 0($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB102_6
	nop
# %bb.4:                                #   in Loop: Header=BB102_1 Depth=1
	b	.LBB102_5
	nop
.LBB102_5:                              #   in Loop: Header=BB102_1 Depth=1
	ld	$2, 16($fp)
	ld	$1, 8($fp)
	daddu	$1, $1, $2
	sd	$1, 8($fp)
	b	.LBB102_6
	nop
.LBB102_6:                              #   in Loop: Header=BB102_1 Depth=1
	ld	$1, 16($fp)
	dsll	$1, $1, 1
	sd	$1, 16($fp)
	ld	$1, 0($fp)
	dsrl	$1, $1, 1
	sd	$1, 0($fp)
	b	.LBB102_1
	nop
.LBB102_7:
	ld	$2, 8($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__muldi3
.Lfunc_end102:
	.size	__muldi3, .Lfunc_end102-__muldi3
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	3
	.type	udivmodsi4,@function
	.set	nomicromips
	.set	nomips16
	.ent	udivmodsi4
udivmodsi4:                             # @udivmodsi4
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sw	$2, 40($fp)
	sw	$1, 36($fp)
	sd	$6, 24($fp)
	addiu	$1, $zero, 1
	sw	$1, 20($fp)
	sw	$zero, 16($fp)
	b	.LBB103_1
	nop
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	lw	$3, 40($fp)
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB103_6
	nop
# %bb.2:                                #   in Loop: Header=BB103_1 Depth=1
	b	.LBB103_3
	nop
.LBB103_3:                              #   in Loop: Header=BB103_1 Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB103_6
	nop
# %bb.4:                                #   in Loop: Header=BB103_1 Depth=1
	b	.LBB103_5
	nop
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	lw	$2, 36($fp)
                                        # implicit-def: $at_64
	move	$1, $2
	daddiu	$2, $zero, 1
	dsll	$2, $2, 31
	and	$1, $1, $2
	sltiu	$1, $1, 1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB103_6
	nop
.LBB103_6:                              #   in Loop: Header=BB103_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB103_9
	nop
# %bb.7:                                #   in Loop: Header=BB103_1 Depth=1
	b	.LBB103_8
	nop
.LBB103_8:                              #   in Loop: Header=BB103_1 Depth=1
	lw	$1, 36($fp)
	sll	$1, $1, 1
	sw	$1, 36($fp)
	lw	$1, 20($fp)
	sll	$1, $1, 1
	sw	$1, 20($fp)
	b	.LBB103_1
	nop
.LBB103_9:
	b	.LBB103_10
	nop
.LBB103_10:                             # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	beqz	$1, .LBB103_16
	nop
# %bb.11:                               #   in Loop: Header=BB103_10 Depth=1
	b	.LBB103_12
	nop
.LBB103_12:                             #   in Loop: Header=BB103_10 Depth=1
	lw	$1, 40($fp)
	lw	$2, 36($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB103_15
	nop
# %bb.13:                               #   in Loop: Header=BB103_10 Depth=1
	b	.LBB103_14
	nop
.LBB103_14:                             #   in Loop: Header=BB103_10 Depth=1
	lw	$2, 36($fp)
	lw	$1, 40($fp)
	subu	$1, $1, $2
	sw	$1, 40($fp)
	lw	$2, 20($fp)
	lw	$1, 16($fp)
	or	$1, $1, $2
	sw	$1, 16($fp)
	b	.LBB103_15
	nop
.LBB103_15:                             #   in Loop: Header=BB103_10 Depth=1
	lw	$1, 20($fp)
	srl	$1, $1, 1
	sw	$1, 20($fp)
	lw	$1, 36($fp)
	srl	$1, $1, 1
	sw	$1, 36($fp)
	b	.LBB103_10
	nop
.LBB103_16:
	ld	$1, 24($fp)
	beqz	$1, .LBB103_19
	nop
# %bb.17:
	b	.LBB103_18
	nop
.LBB103_18:
	lw	$1, 40($fp)
	sw	$1, 44($fp)
	b	.LBB103_20
	nop
.LBB103_19:
	lw	$1, 16($fp)
	sw	$1, 44($fp)
	b	.LBB103_20
	nop
.LBB103_20:
	lw	$2, 44($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	udivmodsi4
.Lfunc_end103:
	.size	udivmodsi4, .Lfunc_end103-udivmodsi4
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	3
	.type	__clrsbqi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__clrsbqi2
__clrsbqi2:                             # @__clrsbqi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sb	$1, 11($fp)
	lb	$1, 11($fp)
	bgez	$1, .LBB104_3
	nop
# %bb.1:
	b	.LBB104_2
	nop
.LBB104_2:
	lbu	$1, 11($fp)
	not	$1, $1
	sb	$1, 11($fp)
	b	.LBB104_3
	nop
.LBB104_3:
	lb	$1, 11($fp)
	bnez	$1, .LBB104_6
	nop
# %bb.4:
	b	.LBB104_5
	nop
.LBB104_5:
	addiu	$1, $zero, 7
	sw	$1, 12($fp)
	b	.LBB104_7
	nop
.LBB104_6:
	lb	$1, 11($fp)
	sll	$1, $1, 8
	srl	$2, $1, 1
	or	$1, $1, $2
	srl	$2, $1, 2
	or	$1, $1, $2
	srl	$2, $1, 4
	or	$1, $1, $2
	srl	$2, $1, 8
	or	$1, $1, $2
	srl	$2, $1, 16
	nor	$1, $1, $2
	srl	$2, $1, 1
	lui	$3, 21845
	ori	$3, $3, 21845
	and	$2, $2, $3
	subu	$2, $1, $2
	lui	$1, 13107
	ori	$3, $1, 13107
	and	$1, $2, $3
	srl	$2, $2, 2
	and	$2, $2, $3
	addu	$1, $1, $2
	srl	$2, $1, 4
	addu	$1, $1, $2
	lui	$2, 3855
	ori	$2, $2, 3855
	and	$1, $1, $2
	sll	$2, $1, 8
	addu	$3, $2, $1
	sll	$2, $1, 16
	addu	$2, $2, $3
	sll	$1, $1, 24
	addu	$1, $1, $2
	srl	$1, $1, 24
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	addiu	$1, $1, -1
	sw	$1, 12($fp)
	b	.LBB104_7
	nop
.LBB104_7:
	lw	$2, 12($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__clrsbqi2
.Lfunc_end104:
	.size	__clrsbqi2, .Lfunc_end104-__clrsbqi2
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	3
	.type	__clrsbdi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__clrsbdi2
__clrsbdi2:                             # @__clrsbdi2
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 16($fp)
	ld	$1, 16($fp)
	bgez	$1, .LBB105_3
	nop
# %bb.1:
	b	.LBB105_2
	nop
.LBB105_2:
	ld	$1, 16($fp)
	daddiu	$2, $zero, -1
	xor	$1, $1, $2
	sd	$1, 16($fp)
	b	.LBB105_3
	nop
.LBB105_3:
	ld	$1, 16($fp)
	bnez	$1, .LBB105_6
	nop
# %bb.4:
	b	.LBB105_5
	nop
.LBB105_5:
	addiu	$1, $zero, 63
	sw	$1, 28($fp)
	b	.LBB105_7
	nop
.LBB105_6:
	ld	$1, 16($fp)
	dsrl	$2, $1, 1
	or	$1, $1, $2
	dsrl	$2, $1, 2
	or	$1, $1, $2
	dsrl	$2, $1, 4
	or	$1, $1, $2
	dsrl	$2, $1, 8
	or	$1, $1, $2
	dsrl	$2, $1, 16
	or	$1, $1, $2
	dsrl	$2, $1, 32
	nor	$1, $1, $2
	dsrl	$2, $1, 1
	lui	$3, 21845
	daddiu	$3, $3, 21845
	dsll	$3, $3, 16
	daddiu	$3, $3, 21845
	dsll	$3, $3, 16
	daddiu	$3, $3, 21845
	and	$2, $2, $3
	dsubu	$2, $1, $2
	lui	$1, 13107
	daddiu	$1, $1, 13107
	dsll	$1, $1, 16
	daddiu	$1, $1, 13107
	dsll	$1, $1, 16
	daddiu	$3, $1, 13107
	and	$1, $2, $3
	dsrl	$2, $2, 2
	and	$2, $2, $3
	daddu	$1, $1, $2
	dsrl	$2, $1, 4
	daddu	$1, $1, $2
	lui	$2, 3855
	daddiu	$2, $2, 3855
	dsll	$2, $2, 16
	daddiu	$2, $2, 3855
	dsll	$2, $2, 16
	daddiu	$2, $2, 3855
	and	$1, $1, $2
	lui	$2, 257
	daddiu	$2, $2, 257
	dsll	$2, $2, 16
	daddiu	$2, $2, 257
	dsll	$2, $2, 16
	daddiu	$2, $2, 257
	dmult	$1, $2
	mflo	$1
	dsrl	$1, $1, 56
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	sw	$1, 28($fp)
	b	.LBB105_7
	nop
.LBB105_7:
	lw	$2, 28($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__clrsbdi2
.Lfunc_end105:
	.size	__clrsbdi2, .Lfunc_end105-__clrsbdi2
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	3
	.type	__mulsi3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__mulsi3
__mulsi3:                               # @__mulsi3
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	sw	$zero, 4($fp)
	b	.LBB106_1
	nop
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, .LBB106_7
	nop
# %bb.2:                                #   in Loop: Header=BB106_1 Depth=1
	b	.LBB106_3
	nop
.LBB106_3:                              #   in Loop: Header=BB106_1 Depth=1
	lbu	$1, 12($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB106_6
	nop
# %bb.4:                                #   in Loop: Header=BB106_1 Depth=1
	b	.LBB106_5
	nop
.LBB106_5:                              #   in Loop: Header=BB106_1 Depth=1
	lw	$2, 8($fp)
	lw	$1, 4($fp)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	.LBB106_6
	nop
.LBB106_6:                              #   in Loop: Header=BB106_1 Depth=1
	lw	$1, 12($fp)
	srl	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 8($fp)
	sll	$1, $1, 1
	sw	$1, 8($fp)
	b	.LBB106_1
	nop
.LBB106_7:
	lw	$2, 4($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__mulsi3
.Lfunc_end106:
	.size	__mulsi3, .Lfunc_end106-__mulsi3
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	3
	.type	__cmovd,@function
	.set	nomicromips
	.set	nomips16
	.ent	__cmovd
__cmovd:                                # @__cmovd
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $6
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sw	$1, 28($fp)
	lw	$1, 28($fp)
	srl	$1, $1, 3
	sw	$1, 20($fp)
	lw	$1, 28($fp)
	addiu	$2, $zero, -8
	and	$1, $1, $2
	sw	$1, 16($fp)
	ld	$1, 40($fp)
	sd	$1, 8($fp)
	ld	$1, 32($fp)
	sd	$1, 0($fp)
	ld	$1, 8($fp)
	ld	$2, 0($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB107_4
	nop
# %bb.1:
	b	.LBB107_2
	nop
.LBB107_2:
	ld	$2, 8($fp)
	ld	$1, 0($fp)
	lwu	$3, 28($fp)
	daddu	$1, $1, $3
	sltu	$1, $1, $2
	beqz	$1, .LBB107_14
	nop
# %bb.3:
	b	.LBB107_4
	nop
.LBB107_4:
	sw	$zero, 24($fp)
	b	.LBB107_5
	nop
.LBB107_5:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB107_9
	nop
# %bb.6:                                #   in Loop: Header=BB107_5 Depth=1
	b	.LBB107_7
	nop
.LBB107_7:                              #   in Loop: Header=BB107_5 Depth=1
	ld	$1, 32($fp)
	lwu	$2, 24($fp)
	dsll	$3, $2, 3
	daddu	$1, $1, $3
	ld	$1, 0($1)
	ld	$2, 40($fp)
	daddu	$2, $2, $3
	sd	$1, 0($2)
	b	.LBB107_8
	nop
.LBB107_8:                              #   in Loop: Header=BB107_5 Depth=1
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	b	.LBB107_5
	nop
.LBB107_9:
	b	.LBB107_10
	nop
.LBB107_10:                             # =>This Inner Loop Header: Depth=1
	lw	$2, 28($fp)
	lw	$1, 16($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB107_13
	nop
# %bb.11:                               #   in Loop: Header=BB107_10 Depth=1
	b	.LBB107_12
	nop
.LBB107_12:                             #   in Loop: Header=BB107_10 Depth=1
	ld	$1, 0($fp)
	lwu	$3, 16($fp)
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 8($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	b	.LBB107_10
	nop
.LBB107_13:
	b	.LBB107_19
	nop
.LBB107_14:
	b	.LBB107_15
	nop
.LBB107_15:                             # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	addiu	$2, $1, -1
	sw	$2, 28($fp)
	beqz	$1, .LBB107_18
	nop
# %bb.16:                               #   in Loop: Header=BB107_15 Depth=1
	b	.LBB107_17
	nop
.LBB107_17:                             #   in Loop: Header=BB107_15 Depth=1
	ld	$1, 0($fp)
	lwu	$3, 28($fp)
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 8($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	b	.LBB107_15
	nop
.LBB107_18:
	b	.LBB107_19
	nop
.LBB107_19:
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__cmovd
.Lfunc_end107:
	.size	__cmovd, .Lfunc_end107-__cmovd
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	3
	.type	__cmovh,@function
	.set	nomicromips
	.set	nomips16
	.ent	__cmovh
__cmovh:                                # @__cmovh
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $6
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sw	$1, 28($fp)
	lw	$1, 28($fp)
	srl	$1, $1, 1
	sw	$1, 20($fp)
	ld	$1, 40($fp)
	sd	$1, 8($fp)
	ld	$1, 32($fp)
	sd	$1, 0($fp)
	ld	$1, 8($fp)
	ld	$2, 0($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB108_4
	nop
# %bb.1:
	b	.LBB108_2
	nop
.LBB108_2:
	ld	$2, 8($fp)
	ld	$1, 0($fp)
	lwu	$3, 28($fp)
	daddu	$1, $1, $3
	sltu	$1, $1, $2
	beqz	$1, .LBB108_13
	nop
# %bb.3:
	b	.LBB108_4
	nop
.LBB108_4:
	sw	$zero, 24($fp)
	b	.LBB108_5
	nop
.LBB108_5:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB108_9
	nop
# %bb.6:                                #   in Loop: Header=BB108_5 Depth=1
	b	.LBB108_7
	nop
.LBB108_7:                              #   in Loop: Header=BB108_5 Depth=1
	ld	$1, 32($fp)
	lwu	$2, 24($fp)
	dsll	$3, $2, 1
	daddu	$1, $1, $3
	lhu	$1, 0($1)
	ld	$2, 40($fp)
	daddu	$2, $2, $3
	sh	$1, 0($2)
	b	.LBB108_8
	nop
.LBB108_8:                              #   in Loop: Header=BB108_5 Depth=1
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	b	.LBB108_5
	nop
.LBB108_9:
	lbu	$1, 28($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB108_12
	nop
# %bb.10:
	b	.LBB108_11
	nop
.LBB108_11:
	ld	$1, 0($fp)
	lw	$2, 28($fp)
	addiu	$2, $2, -1
	dsll	$2, $2, 32
	dsrl	$3, $2, 32
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 8($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	b	.LBB108_12
	nop
.LBB108_12:
	b	.LBB108_18
	nop
.LBB108_13:
	b	.LBB108_14
	nop
.LBB108_14:                             # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	addiu	$2, $1, -1
	sw	$2, 28($fp)
	beqz	$1, .LBB108_17
	nop
# %bb.15:                               #   in Loop: Header=BB108_14 Depth=1
	b	.LBB108_16
	nop
.LBB108_16:                             #   in Loop: Header=BB108_14 Depth=1
	ld	$1, 0($fp)
	lwu	$3, 28($fp)
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 8($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	b	.LBB108_14
	nop
.LBB108_17:
	b	.LBB108_18
	nop
.LBB108_18:
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__cmovh
.Lfunc_end108:
	.size	__cmovh, .Lfunc_end108-__cmovh
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	3
	.type	__cmovw,@function
	.set	nomicromips
	.set	nomips16
	.ent	__cmovw
__cmovw:                                # @__cmovw
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $6
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sw	$1, 28($fp)
	lw	$1, 28($fp)
	srl	$1, $1, 2
	sw	$1, 20($fp)
	lw	$1, 28($fp)
	addiu	$2, $zero, -4
	and	$1, $1, $2
	sw	$1, 16($fp)
	ld	$1, 40($fp)
	sd	$1, 8($fp)
	ld	$1, 32($fp)
	sd	$1, 0($fp)
	ld	$1, 8($fp)
	ld	$2, 0($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB109_4
	nop
# %bb.1:
	b	.LBB109_2
	nop
.LBB109_2:
	ld	$2, 8($fp)
	ld	$1, 0($fp)
	lwu	$3, 28($fp)
	daddu	$1, $1, $3
	sltu	$1, $1, $2
	beqz	$1, .LBB109_14
	nop
# %bb.3:
	b	.LBB109_4
	nop
.LBB109_4:
	sw	$zero, 24($fp)
	b	.LBB109_5
	nop
.LBB109_5:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB109_9
	nop
# %bb.6:                                #   in Loop: Header=BB109_5 Depth=1
	b	.LBB109_7
	nop
.LBB109_7:                              #   in Loop: Header=BB109_5 Depth=1
	ld	$1, 32($fp)
	lwu	$2, 24($fp)
	dsll	$3, $2, 2
	daddu	$1, $1, $3
	lw	$1, 0($1)
	ld	$2, 40($fp)
	daddu	$2, $2, $3
	sw	$1, 0($2)
	b	.LBB109_8
	nop
.LBB109_8:                              #   in Loop: Header=BB109_5 Depth=1
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	b	.LBB109_5
	nop
.LBB109_9:
	b	.LBB109_10
	nop
.LBB109_10:                             # =>This Inner Loop Header: Depth=1
	lw	$2, 28($fp)
	lw	$1, 16($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB109_13
	nop
# %bb.11:                               #   in Loop: Header=BB109_10 Depth=1
	b	.LBB109_12
	nop
.LBB109_12:                             #   in Loop: Header=BB109_10 Depth=1
	ld	$1, 0($fp)
	lwu	$3, 16($fp)
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 8($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	b	.LBB109_10
	nop
.LBB109_13:
	b	.LBB109_19
	nop
.LBB109_14:
	b	.LBB109_15
	nop
.LBB109_15:                             # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	addiu	$2, $1, -1
	sw	$2, 28($fp)
	beqz	$1, .LBB109_18
	nop
# %bb.16:                               #   in Loop: Header=BB109_15 Depth=1
	b	.LBB109_17
	nop
.LBB109_17:                             #   in Loop: Header=BB109_15 Depth=1
	ld	$1, 0($fp)
	lwu	$3, 28($fp)
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 8($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	b	.LBB109_15
	nop
.LBB109_18:
	b	.LBB109_19
	nop
.LBB109_19:
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__cmovw
.Lfunc_end109:
	.size	__cmovw, .Lfunc_end109-__cmovw
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	3
	.type	__modi,@function
	.set	nomicromips
	.set	nomips16
	.ent	__modi
__modi:                                 # @__modi
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
                                        # implicit-def: $v0_64
	move	$2, $1
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__modi
.Lfunc_end110:
	.size	__modi, .Lfunc_end110-__modi
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	3
	.type	__uitod,@function
	.set	nomicromips
	.set	nomips16
	.ent	__uitod
__uitod:                                # @__uitod
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	sd	$gp, 8($sp)                     # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__uitod)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(__uitod)))
	move	$1, $4
	sw	$1, 4($fp)
	lw	$4, 4($fp)
	ld	$25, %call16(__floatunsidf)($gp)
	.reloc .Ltmp55, R_MIPS_JALR, __floatunsidf
.Ltmp55:
	jalr	$25
	nop
	move	$sp, $fp
	ld	$gp, 8($sp)                     # 8-byte Folded Reload
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__uitod
.Lfunc_end111:
	.size	__uitod, .Lfunc_end111-__uitod
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	3
	.type	__uitof,@function
	.set	nomicromips
	.set	nomips16
	.ent	__uitof
__uitof:                                # @__uitof
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	sd	$gp, 8($sp)                     # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__uitof)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(__uitof)))
	move	$1, $4
	sw	$1, 4($fp)
	lw	$4, 4($fp)
	ld	$25, %call16(__floatunsisf)($gp)
	.reloc .Ltmp56, R_MIPS_JALR, __floatunsisf
.Ltmp56:
	jalr	$25
	nop
	move	$sp, $fp
	ld	$gp, 8($sp)                     # 8-byte Folded Reload
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__uitof
.Lfunc_end112:
	.size	__uitof, .Lfunc_end112-__uitof
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	3
	.type	__ulltod,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ulltod
__ulltod:                               # @__ulltod
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	sd	$gp, 8($sp)                     # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__ulltod)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(__ulltod)))
	sd	$4, 0($fp)
	ld	$4, 0($fp)
	ld	$25, %call16(__floatundidf)($gp)
	.reloc .Ltmp57, R_MIPS_JALR, __floatundidf
.Ltmp57:
	jalr	$25
	nop
	move	$sp, $fp
	ld	$gp, 8($sp)                     # 8-byte Folded Reload
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ulltod
.Lfunc_end113:
	.size	__ulltod, .Lfunc_end113-__ulltod
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	3
	.type	__ulltof,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ulltof
__ulltof:                               # @__ulltof
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	sd	$gp, 8($sp)                     # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__ulltof)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(__ulltof)))
	sd	$4, 0($fp)
	ld	$4, 0($fp)
	ld	$25, %call16(__floatundisf)($gp)
	.reloc .Ltmp58, R_MIPS_JALR, __floatundisf
.Ltmp58:
	jalr	$25
	nop
	move	$sp, $fp
	ld	$gp, 8($sp)                     # 8-byte Folded Reload
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ulltof
.Lfunc_end114:
	.size	__ulltof, .Lfunc_end114-__ulltof
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	3
	.type	__umodi,@function
	.set	nomicromips
	.set	nomips16
	.ent	__umodi
__umodi:                                # @__umodi
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	divu	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
                                        # implicit-def: $v0_64
	move	$2, $1
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__umodi
.Lfunc_end115:
	.size	__umodi, .Lfunc_end115-__umodi
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	3
	.type	__clzhi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__clzhi2
__clzhi2:                               # @__clzhi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sh	$1, 14($fp)
	sw	$zero, 8($fp)
	b	.LBB116_1
	nop
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	slti	$1, $1, 16
	beqz	$1, .LBB116_8
	nop
# %bb.2:                                #   in Loop: Header=BB116_1 Depth=1
	b	.LBB116_3
	nop
.LBB116_3:                              #   in Loop: Header=BB116_1 Depth=1
	lhu	$1, 14($fp)
	lw	$3, 8($fp)
	addiu	$2, $zero, 15
	subu	$2, $2, $3
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, .LBB116_6
	nop
# %bb.4:
	b	.LBB116_5
	nop
.LBB116_5:
	b	.LBB116_8
	nop
.LBB116_6:                              #   in Loop: Header=BB116_1 Depth=1
	b	.LBB116_7
	nop
.LBB116_7:                              #   in Loop: Header=BB116_1 Depth=1
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	b	.LBB116_1
	nop
.LBB116_8:
	lw	$2, 8($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__clzhi2
.Lfunc_end116:
	.size	__clzhi2, .Lfunc_end116-__clzhi2
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	3
	.type	__ctzhi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ctzhi2
__ctzhi2:                               # @__ctzhi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sh	$1, 14($fp)
	sw	$zero, 8($fp)
	b	.LBB117_1
	nop
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	slti	$1, $1, 16
	beqz	$1, .LBB117_8
	nop
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
	b	.LBB117_3
	nop
.LBB117_3:                              #   in Loop: Header=BB117_1 Depth=1
	lhu	$1, 14($fp)
	lw	$2, 8($fp)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, .LBB117_6
	nop
# %bb.4:
	b	.LBB117_5
	nop
.LBB117_5:
	b	.LBB117_8
	nop
.LBB117_6:                              #   in Loop: Header=BB117_1 Depth=1
	b	.LBB117_7
	nop
.LBB117_7:                              #   in Loop: Header=BB117_1 Depth=1
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	b	.LBB117_1
	nop
.LBB117_8:
	lw	$2, 8($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ctzhi2
.Lfunc_end117:
	.size	__ctzhi2, .Lfunc_end117-__ctzhi2
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	3
	.type	__fixunssfsi,@function
	.set	nomicromips
	.set	nomips16
	.ent	__fixunssfsi
__fixunssfsi:                           # @__fixunssfsi
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	sd	$gp, 24($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__fixunssfsi)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(__fixunssfsi)))
	sd	$gp, 0($fp)                     # 8-byte Folded Spill
                                        # kill: def $at killed $a0
	sw	$4, 12($fp)
	lw	$4, 12($fp)
	ld	$25, %call16(__gesf2)($gp)
	lui	$5, 18176
	.reloc .Ltmp59, R_MIPS_JALR, __gesf2
.Ltmp59:
	jalr	$25
	nop
	bltz	$2, .LBB118_3
	nop
# %bb.1:
	b	.LBB118_2
	nop
.LBB118_2:
	ld	$gp, 0($fp)                     # 8-byte Folded Reload
	lw	$4, 12($fp)
	ld	$25, %call16(__addsf3)($gp)
	lui	$5, 50944
	.reloc .Ltmp60, R_MIPS_JALR, __addsf3
.Ltmp60:
	jalr	$25
	nop
	ld	$gp, 0($fp)                     # 8-byte Folded Reload
	sll	$4, $2, 0
	ld	$25, %call16(__fixsfdi)($gp)
	.reloc .Ltmp61, R_MIPS_JALR, __fixsfdi
.Ltmp61:
	jalr	$25
	nop
	ori	$1, $zero, 32768
	daddu	$1, $2, $1
	sd	$1, 16($fp)
	b	.LBB118_4
	nop
.LBB118_3:
	ld	$gp, 0($fp)                     # 8-byte Folded Reload
	lw	$4, 12($fp)
	ld	$25, %call16(__fixsfdi)($gp)
	.reloc .Ltmp62, R_MIPS_JALR, __fixsfdi
.Ltmp62:
	jalr	$25
	nop
	sd	$2, 16($fp)
	b	.LBB118_4
	nop
.LBB118_4:
	ld	$2, 16($fp)
	move	$sp, $fp
	ld	$gp, 24($sp)                    # 8-byte Folded Reload
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__fixunssfsi
.Lfunc_end118:
	.size	__fixunssfsi, .Lfunc_end118-__fixunssfsi
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	3
	.type	__parityhi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__parityhi2
__parityhi2:                            # @__parityhi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sh	$1, 14($fp)
	sw	$zero, 4($fp)
	sw	$zero, 8($fp)
	b	.LBB119_1
	nop
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	slti	$1, $1, 16
	beqz	$1, .LBB119_8
	nop
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	b	.LBB119_3
	nop
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
	lhu	$1, 14($fp)
	lw	$2, 8($fp)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, .LBB119_6
	nop
# %bb.4:                                #   in Loop: Header=BB119_1 Depth=1
	b	.LBB119_5
	nop
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	b	.LBB119_6
	nop
.LBB119_6:                              #   in Loop: Header=BB119_1 Depth=1
	b	.LBB119_7
	nop
.LBB119_7:                              #   in Loop: Header=BB119_1 Depth=1
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	b	.LBB119_1
	nop
.LBB119_8:
	lw	$1, 4($fp)
	andi	$1, $1, 1
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__parityhi2
.Lfunc_end119:
	.size	__parityhi2, .Lfunc_end119-__parityhi2
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	3
	.type	__popcounthi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__popcounthi2
__popcounthi2:                          # @__popcounthi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sh	$1, 14($fp)
	sw	$zero, 4($fp)
	sw	$zero, 8($fp)
	b	.LBB120_1
	nop
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	slti	$1, $1, 16
	beqz	$1, .LBB120_8
	nop
# %bb.2:                                #   in Loop: Header=BB120_1 Depth=1
	b	.LBB120_3
	nop
.LBB120_3:                              #   in Loop: Header=BB120_1 Depth=1
	lhu	$1, 14($fp)
	lw	$2, 8($fp)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, .LBB120_6
	nop
# %bb.4:                                #   in Loop: Header=BB120_1 Depth=1
	b	.LBB120_5
	nop
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	b	.LBB120_6
	nop
.LBB120_6:                              #   in Loop: Header=BB120_1 Depth=1
	b	.LBB120_7
	nop
.LBB120_7:                              #   in Loop: Header=BB120_1 Depth=1
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	b	.LBB120_1
	nop
.LBB120_8:
	lw	$2, 4($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__popcounthi2
.Lfunc_end120:
	.size	__popcounthi2, .Lfunc_end120-__popcounthi2
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	3
	.type	__mulsi3_iq2000,@function
	.set	nomicromips
	.set	nomips16
	.ent	__mulsi3_iq2000
__mulsi3_iq2000:                        # @__mulsi3_iq2000
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	sw	$zero, 4($fp)
	b	.LBB121_1
	nop
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, .LBB121_7
	nop
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	b	.LBB121_3
	nop
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	lbu	$1, 12($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB121_6
	nop
# %bb.4:                                #   in Loop: Header=BB121_1 Depth=1
	b	.LBB121_5
	nop
.LBB121_5:                              #   in Loop: Header=BB121_1 Depth=1
	lw	$2, 8($fp)
	lw	$1, 4($fp)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	.LBB121_6
	nop
.LBB121_6:                              #   in Loop: Header=BB121_1 Depth=1
	lw	$1, 12($fp)
	srl	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 8($fp)
	sll	$1, $1, 1
	sw	$1, 8($fp)
	b	.LBB121_1
	nop
.LBB121_7:
	lw	$2, 4($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
.Lfunc_end121:
	.size	__mulsi3_iq2000, .Lfunc_end121-__mulsi3_iq2000
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	3
	.type	__mulsi3_lm32,@function
	.set	nomicromips
	.set	nomips16
	.ent	__mulsi3_lm32
__mulsi3_lm32:                          # @__mulsi3_lm32
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sw	$2, 8($fp)
	sw	$1, 4($fp)
	sw	$zero, 0($fp)
	lw	$1, 8($fp)
	bnez	$1, .LBB122_3
	nop
# %bb.1:
	b	.LBB122_2
	nop
.LBB122_2:
	sw	$zero, 12($fp)
	b	.LBB122_11
	nop
.LBB122_3:
	b	.LBB122_4
	nop
.LBB122_4:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	beqz	$1, .LBB122_10
	nop
# %bb.5:                                #   in Loop: Header=BB122_4 Depth=1
	b	.LBB122_6
	nop
.LBB122_6:                              #   in Loop: Header=BB122_4 Depth=1
	lbu	$1, 4($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB122_9
	nop
# %bb.7:                                #   in Loop: Header=BB122_4 Depth=1
	b	.LBB122_8
	nop
.LBB122_8:                              #   in Loop: Header=BB122_4 Depth=1
	lw	$2, 8($fp)
	lw	$1, 0($fp)
	addu	$1, $1, $2
	sw	$1, 0($fp)
	b	.LBB122_9
	nop
.LBB122_9:                              #   in Loop: Header=BB122_4 Depth=1
	lw	$1, 8($fp)
	sll	$1, $1, 1
	sw	$1, 8($fp)
	lw	$1, 4($fp)
	srl	$1, $1, 1
	sw	$1, 4($fp)
	b	.LBB122_4
	nop
.LBB122_10:
	lw	$1, 0($fp)
	sw	$1, 12($fp)
	b	.LBB122_11
	nop
.LBB122_11:
	lw	$2, 12($fp)
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
.Lfunc_end122:
	.size	__mulsi3_lm32, .Lfunc_end122-__mulsi3_lm32
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	3
	.type	__udivmodsi4,@function
	.set	nomicromips
	.set	nomips16
	.ent	__udivmodsi4
__udivmodsi4:                           # @__udivmodsi4
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $6
	move	$2, $5
	move	$3, $4
	sw	$3, 24($fp)
	sw	$2, 20($fp)
	sw	$1, 16($fp)
	addiu	$1, $zero, 1
	sw	$1, 12($fp)
	sw	$zero, 8($fp)
	b	.LBB123_1
	nop
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$3, 24($fp)
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB123_6
	nop
# %bb.2:                                #   in Loop: Header=BB123_1 Depth=1
	b	.LBB123_3
	nop
.LBB123_3:                              #   in Loop: Header=BB123_1 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB123_6
	nop
# %bb.4:                                #   in Loop: Header=BB123_1 Depth=1
	b	.LBB123_5
	nop
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	lw	$2, 20($fp)
                                        # implicit-def: $at_64
	move	$1, $2
	daddiu	$2, $zero, 1
	dsll	$2, $2, 31
	and	$1, $1, $2
	sltiu	$1, $1, 1
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB123_6
	nop
.LBB123_6:                              #   in Loop: Header=BB123_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB123_9
	nop
# %bb.7:                                #   in Loop: Header=BB123_1 Depth=1
	b	.LBB123_8
	nop
.LBB123_8:                              #   in Loop: Header=BB123_1 Depth=1
	lw	$1, 20($fp)
	sll	$1, $1, 1
	sw	$1, 20($fp)
	lw	$1, 12($fp)
	sll	$1, $1, 1
	sw	$1, 12($fp)
	b	.LBB123_1
	nop
.LBB123_9:
	b	.LBB123_10
	nop
.LBB123_10:                             # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, .LBB123_16
	nop
# %bb.11:                               #   in Loop: Header=BB123_10 Depth=1
	b	.LBB123_12
	nop
.LBB123_12:                             #   in Loop: Header=BB123_10 Depth=1
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB123_15
	nop
# %bb.13:                               #   in Loop: Header=BB123_10 Depth=1
	b	.LBB123_14
	nop
.LBB123_14:                             #   in Loop: Header=BB123_10 Depth=1
	lw	$2, 20($fp)
	lw	$1, 24($fp)
	subu	$1, $1, $2
	sw	$1, 24($fp)
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	or	$1, $1, $2
	sw	$1, 8($fp)
	b	.LBB123_15
	nop
.LBB123_15:                             #   in Loop: Header=BB123_10 Depth=1
	lw	$1, 12($fp)
	srl	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	srl	$1, $1, 1
	sw	$1, 20($fp)
	b	.LBB123_10
	nop
.LBB123_16:
	lw	$1, 16($fp)
	beqz	$1, .LBB123_19
	nop
# %bb.17:
	b	.LBB123_18
	nop
.LBB123_18:
	lw	$1, 24($fp)
	sw	$1, 28($fp)
	b	.LBB123_20
	nop
.LBB123_19:
	lw	$1, 8($fp)
	sw	$1, 28($fp)
	b	.LBB123_20
	nop
.LBB123_20:
	lw	$2, 28($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__udivmodsi4
.Lfunc_end123:
	.size	__udivmodsi4, .Lfunc_end123-__udivmodsi4
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	3
	.type	__mspabi_cmpf,@function
	.set	nomicromips
	.set	nomips16
	.ent	__mspabi_cmpf
__mspabi_cmpf:                          # @__mspabi_cmpf
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	sd	$gp, 24($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__mspabi_cmpf)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(__mspabi_cmpf)))
	sd	$gp, 0($fp)                     # 8-byte Folded Spill
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$4, 16($fp)
	sw	$5, 12($fp)
	lw	$4, 16($fp)
	lw	$5, 12($fp)
	ld	$25, %call16(__ltsf2)($gp)
	.reloc .Ltmp63, R_MIPS_JALR, __ltsf2
.Ltmp63:
	jalr	$25
	nop
	bgez	$2, .LBB124_3
	nop
# %bb.1:
	b	.LBB124_2
	nop
.LBB124_2:
	addiu	$1, $zero, -1
	sw	$1, 20($fp)
	b	.LBB124_7
	nop
.LBB124_3:
	ld	$gp, 0($fp)                     # 8-byte Folded Reload
	lw	$4, 16($fp)
	lw	$5, 12($fp)
	ld	$25, %call16(__gtsf2)($gp)
	.reloc .Ltmp64, R_MIPS_JALR, __gtsf2
.Ltmp64:
	jalr	$25
	nop
	blez	$2, .LBB124_6
	nop
# %bb.4:
	b	.LBB124_5
	nop
.LBB124_5:
	addiu	$1, $zero, 1
	sw	$1, 20($fp)
	b	.LBB124_7
	nop
.LBB124_6:
	sw	$zero, 20($fp)
	b	.LBB124_7
	nop
.LBB124_7:
	lw	$2, 20($fp)
	move	$sp, $fp
	ld	$gp, 24($sp)                    # 8-byte Folded Reload
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__mspabi_cmpf
.Lfunc_end124:
	.size	__mspabi_cmpf, .Lfunc_end124-__mspabi_cmpf
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	3
	.type	__mspabi_cmpd,@function
	.set	nomicromips
	.set	nomips16
	.ent	__mspabi_cmpd
__mspabi_cmpd:                          # @__mspabi_cmpd
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__mspabi_cmpd)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(__mspabi_cmpd)))
	sd	$gp, 8($fp)                     # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$4, 24($fp)
	ld	$5, 16($fp)
	ld	$25, %call16(__ltdf2)($gp)
	.reloc .Ltmp65, R_MIPS_JALR, __ltdf2
.Ltmp65:
	jalr	$25
	nop
	bgez	$2, .LBB125_3
	nop
# %bb.1:
	b	.LBB125_2
	nop
.LBB125_2:
	addiu	$1, $zero, -1
	sw	$1, 36($fp)
	b	.LBB125_7
	nop
.LBB125_3:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 24($fp)
	ld	$5, 16($fp)
	ld	$25, %call16(__gtdf2)($gp)
	.reloc .Ltmp66, R_MIPS_JALR, __gtdf2
.Ltmp66:
	jalr	$25
	nop
	blez	$2, .LBB125_6
	nop
# %bb.4:
	b	.LBB125_5
	nop
.LBB125_5:
	addiu	$1, $zero, 1
	sw	$1, 36($fp)
	b	.LBB125_7
	nop
.LBB125_6:
	sw	$zero, 36($fp)
	b	.LBB125_7
	nop
.LBB125_7:
	lw	$2, 36($fp)
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__mspabi_cmpd
.Lfunc_end125:
	.size	__mspabi_cmpd, .Lfunc_end125-__mspabi_cmpd
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	3
	.type	__mspabi_mpysll,@function
	.set	nomicromips
	.set	nomips16
	.ent	__mspabi_mpysll
__mspabi_mpysll:                        # @__mspabi_mpysll
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	sd	$5, 0($fp)
	ld	$1, 8($fp)
	ld	$2, 0($fp)
	dmult	$1, $2
	mflo	$2
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__mspabi_mpysll
.Lfunc_end126:
	.size	__mspabi_mpysll, .Lfunc_end126-__mspabi_mpysll
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	3
	.type	__mspabi_mpyull,@function
	.set	nomicromips
	.set	nomips16
	.ent	__mspabi_mpyull
__mspabi_mpyull:                        # @__mspabi_mpyull
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	sd	$5, 0($fp)
	ld	$1, 8($fp)
	ld	$2, 0($fp)
	dmult	$1, $2
	mflo	$2
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__mspabi_mpyull
.Lfunc_end127:
	.size	__mspabi_mpyull, .Lfunc_end127-__mspabi_mpyull
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	3
	.type	__mulhi3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__mulhi3
__mulhi3:                               # @__mulhi3
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	sw	$zero, 16($fp)
	sw	$zero, 12($fp)
	lw	$1, 24($fp)
	bgez	$1, .LBB128_3
	nop
# %bb.1:
	b	.LBB128_2
	nop
.LBB128_2:
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 24($fp)
	addiu	$1, $zero, 1
	sw	$1, 16($fp)
	b	.LBB128_3
	nop
.LBB128_3:
	addiu	$1, $zero, 0
	sb	$zero, 23($fp)
	b	.LBB128_4
	nop
.LBB128_4:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB128_7
	nop
# %bb.5:                                #   in Loop: Header=BB128_4 Depth=1
	b	.LBB128_6
	nop
.LBB128_6:                              #   in Loop: Header=BB128_4 Depth=1
	lb	$1, 23($fp)
	sltiu	$1, $1, 32
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB128_7
	nop
.LBB128_7:                              #   in Loop: Header=BB128_4 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB128_14
	nop
# %bb.8:                                #   in Loop: Header=BB128_4 Depth=1
	b	.LBB128_9
	nop
.LBB128_9:                              #   in Loop: Header=BB128_4 Depth=1
	lbu	$1, 24($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB128_12
	nop
# %bb.10:                               #   in Loop: Header=BB128_4 Depth=1
	b	.LBB128_11
	nop
.LBB128_11:                             #   in Loop: Header=BB128_4 Depth=1
	lw	$2, 28($fp)
	lw	$1, 12($fp)
	addu	$1, $1, $2
	sw	$1, 12($fp)
	b	.LBB128_12
	nop
.LBB128_12:                             #   in Loop: Header=BB128_4 Depth=1
	lw	$1, 28($fp)
	sll	$1, $1, 1
	sw	$1, 28($fp)
	lw	$1, 24($fp)
	sra	$1, $1, 1
	sw	$1, 24($fp)
	b	.LBB128_13
	nop
.LBB128_13:                             #   in Loop: Header=BB128_4 Depth=1
	lbu	$1, 23($fp)
	addiu	$1, $1, 1
	sb	$1, 23($fp)
	b	.LBB128_4
	nop
.LBB128_14:
	lw	$1, 16($fp)
	beqz	$1, .LBB128_17
	nop
# %bb.15:
	b	.LBB128_16
	nop
.LBB128_16:
	lw	$1, 12($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB128_18
	nop
.LBB128_17:
	lw	$1, 12($fp)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB128_18
	nop
.LBB128_18:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__mulhi3
.Lfunc_end128:
	.size	__mulhi3, .Lfunc_end128-__mulhi3
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	3
	.type	__divsi3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__divsi3
__divsi3:                               # @__divsi3
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__divsi3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__divsi3)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	sw	$zero, 20($fp)
	ld	$1, 32($fp)
	bgez	$1, .LBB129_3
	nop
# %bb.1:
	b	.LBB129_2
	nop
.LBB129_2:
	ld	$1, 32($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 32($fp)
	lw	$1, 20($fp)
	sltiu	$1, $1, 1
	sw	$1, 20($fp)
	b	.LBB129_3
	nop
.LBB129_3:
	ld	$1, 24($fp)
	bgez	$1, .LBB129_6
	nop
# %bb.4:
	b	.LBB129_5
	nop
.LBB129_5:
	ld	$1, 24($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 24($fp)
	lw	$1, 20($fp)
	sltiu	$1, $1, 1
	sw	$1, 20($fp)
	b	.LBB129_6
	nop
.LBB129_6:
	ld	$gp, 0($fp)                     # 8-byte Folded Reload
	lw	$4, 32($fp)
	lw	$5, 24($fp)
	ld	$25, %call16(__udivmodsi4)($gp)
	daddiu	$6, $zero, 0
	.reloc .Ltmp67, R_MIPS_JALR, __udivmodsi4
.Ltmp67:
	jalr	$25
	nop
	dsll	$1, $2, 32
	dsrl	$1, $1, 32
	sd	$1, 8($fp)
	lw	$1, 20($fp)
	beqz	$1, .LBB129_9
	nop
# %bb.7:
	b	.LBB129_8
	nop
.LBB129_8:
	ld	$1, 8($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 8($fp)
	b	.LBB129_9
	nop
.LBB129_9:
	ld	$2, 8($fp)
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__divsi3
.Lfunc_end129:
	.size	__divsi3, .Lfunc_end129-__divsi3
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	3
	.type	__modsi3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__modsi3
__modsi3:                               # @__modsi3
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__modsi3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__modsi3)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	sw	$zero, 20($fp)
	ld	$1, 32($fp)
	bgez	$1, .LBB130_3
	nop
# %bb.1:
	b	.LBB130_2
	nop
.LBB130_2:
	ld	$1, 32($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 32($fp)
	addiu	$1, $zero, 1
	sw	$1, 20($fp)
	b	.LBB130_3
	nop
.LBB130_3:
	ld	$1, 24($fp)
	bgez	$1, .LBB130_6
	nop
# %bb.4:
	b	.LBB130_5
	nop
.LBB130_5:
	ld	$1, 24($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 24($fp)
	b	.LBB130_6
	nop
.LBB130_6:
	ld	$gp, 0($fp)                     # 8-byte Folded Reload
	lw	$4, 32($fp)
	lw	$5, 24($fp)
	ld	$25, %call16(__udivmodsi4)($gp)
	daddiu	$6, $zero, 1
	.reloc .Ltmp68, R_MIPS_JALR, __udivmodsi4
.Ltmp68:
	jalr	$25
	nop
	dsll	$1, $2, 32
	dsrl	$1, $1, 32
	sd	$1, 8($fp)
	lw	$1, 20($fp)
	beqz	$1, .LBB130_9
	nop
# %bb.7:
	b	.LBB130_8
	nop
.LBB130_8:
	ld	$1, 8($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 8($fp)
	b	.LBB130_9
	nop
.LBB130_9:
	ld	$2, 8($fp)
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__modsi3
.Lfunc_end130:
	.size	__modsi3, .Lfunc_end130-__modsi3
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	3
	.type	__udivmodhi4,@function
	.set	nomicromips
	.set	nomips16
	.ent	__udivmodhi4
__udivmodhi4:                           # @__udivmodhi4
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $6
	move	$2, $5
	move	$3, $4
	sh	$3, 28($fp)
	sh	$2, 26($fp)
	sw	$1, 20($fp)
	addiu	$1, $zero, 1
	sh	$1, 18($fp)
	addiu	$1, $zero, 0
	sh	$zero, 16($fp)
	b	.LBB131_1
	nop
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	lhu	$1, 26($fp)
	lhu	$3, 28($fp)
	addiu	$2, $zero, 0
	slt	$1, $1, $3
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB131_6
	nop
# %bb.2:                                #   in Loop: Header=BB131_1 Depth=1
	b	.LBB131_3
	nop
.LBB131_3:                              #   in Loop: Header=BB131_1 Depth=1
	lhu	$1, 18($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB131_6
	nop
# %bb.4:                                #   in Loop: Header=BB131_1 Depth=1
	b	.LBB131_5
	nop
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	lhu	$1, 26($fp)
	andi	$1, $1, 32768
	sltiu	$1, $1, 1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB131_6
	nop
.LBB131_6:                              #   in Loop: Header=BB131_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB131_9
	nop
# %bb.7:                                #   in Loop: Header=BB131_1 Depth=1
	b	.LBB131_8
	nop
.LBB131_8:                              #   in Loop: Header=BB131_1 Depth=1
	lhu	$1, 26($fp)
	sll	$1, $1, 1
	sh	$1, 26($fp)
	lhu	$1, 18($fp)
	sll	$1, $1, 1
	sh	$1, 18($fp)
	b	.LBB131_1
	nop
.LBB131_9:
	b	.LBB131_10
	nop
.LBB131_10:                             # =>This Inner Loop Header: Depth=1
	lhu	$1, 18($fp)
	beqz	$1, .LBB131_16
	nop
# %bb.11:                               #   in Loop: Header=BB131_10 Depth=1
	b	.LBB131_12
	nop
.LBB131_12:                             #   in Loop: Header=BB131_10 Depth=1
	lhu	$1, 28($fp)
	lhu	$2, 26($fp)
	slt	$1, $1, $2
	bnez	$1, .LBB131_15
	nop
# %bb.13:                               #   in Loop: Header=BB131_10 Depth=1
	b	.LBB131_14
	nop
.LBB131_14:                             #   in Loop: Header=BB131_10 Depth=1
	lhu	$2, 26($fp)
	lhu	$1, 28($fp)
	subu	$1, $1, $2
	sh	$1, 28($fp)
	lhu	$2, 18($fp)
	lhu	$1, 16($fp)
	or	$1, $1, $2
	sh	$1, 16($fp)
	b	.LBB131_15
	nop
.LBB131_15:                             #   in Loop: Header=BB131_10 Depth=1
	lhu	$1, 18($fp)
	srl	$1, $1, 1
	sh	$1, 18($fp)
	lhu	$1, 26($fp)
	srl	$1, $1, 1
	sh	$1, 26($fp)
	b	.LBB131_10
	nop
.LBB131_16:
	lw	$1, 20($fp)
	beqz	$1, .LBB131_19
	nop
# %bb.17:
	b	.LBB131_18
	nop
.LBB131_18:
	lhu	$1, 28($fp)
	sh	$1, 30($fp)
	b	.LBB131_20
	nop
.LBB131_19:
	lhu	$1, 16($fp)
	sh	$1, 30($fp)
	b	.LBB131_20
	nop
.LBB131_20:
	lhu	$2, 30($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__udivmodhi4
.Lfunc_end131:
	.size	__udivmodhi4, .Lfunc_end131-__udivmodhi4
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	3
	.type	__udivmodsi4_libgcc,@function
	.set	nomicromips
	.set	nomips16
	.ent	__udivmodsi4_libgcc
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $6
	sd	$4, 48($fp)
	sd	$5, 40($fp)
	sw	$1, 36($fp)
	daddiu	$1, $zero, 1
	sd	$1, 24($fp)
	daddiu	$1, $zero, 0
	sd	$zero, 16($fp)
	b	.LBB132_1
	nop
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	ld	$1, 40($fp)
	ld	$3, 48($fp)
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB132_6
	nop
# %bb.2:                                #   in Loop: Header=BB132_1 Depth=1
	b	.LBB132_3
	nop
.LBB132_3:                              #   in Loop: Header=BB132_1 Depth=1
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB132_6
	nop
# %bb.4:                                #   in Loop: Header=BB132_1 Depth=1
	b	.LBB132_5
	nop
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	lbu	$1, 43($fp)
	andi	$1, $1, 128
	sltiu	$1, $1, 1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB132_6
	nop
.LBB132_6:                              #   in Loop: Header=BB132_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB132_9
	nop
# %bb.7:                                #   in Loop: Header=BB132_1 Depth=1
	b	.LBB132_8
	nop
.LBB132_8:                              #   in Loop: Header=BB132_1 Depth=1
	ld	$1, 40($fp)
	dsll	$1, $1, 1
	sd	$1, 40($fp)
	ld	$1, 24($fp)
	dsll	$1, $1, 1
	sd	$1, 24($fp)
	b	.LBB132_1
	nop
.LBB132_9:
	b	.LBB132_10
	nop
.LBB132_10:                             # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	beqz	$1, .LBB132_16
	nop
# %bb.11:                               #   in Loop: Header=BB132_10 Depth=1
	b	.LBB132_12
	nop
.LBB132_12:                             #   in Loop: Header=BB132_10 Depth=1
	ld	$1, 48($fp)
	ld	$2, 40($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB132_15
	nop
# %bb.13:                               #   in Loop: Header=BB132_10 Depth=1
	b	.LBB132_14
	nop
.LBB132_14:                             #   in Loop: Header=BB132_10 Depth=1
	ld	$2, 40($fp)
	ld	$1, 48($fp)
	dsubu	$1, $1, $2
	sd	$1, 48($fp)
	ld	$2, 24($fp)
	ld	$1, 16($fp)
	or	$1, $1, $2
	sd	$1, 16($fp)
	b	.LBB132_15
	nop
.LBB132_15:                             #   in Loop: Header=BB132_10 Depth=1
	ld	$1, 24($fp)
	dsrl	$1, $1, 1
	sd	$1, 24($fp)
	ld	$1, 40($fp)
	dsrl	$1, $1, 1
	sd	$1, 40($fp)
	b	.LBB132_10
	nop
.LBB132_16:
	lw	$1, 36($fp)
	beqz	$1, .LBB132_19
	nop
# %bb.17:
	b	.LBB132_18
	nop
.LBB132_18:
	ld	$1, 48($fp)
	sd	$1, 56($fp)
	b	.LBB132_20
	nop
.LBB132_19:
	ld	$1, 16($fp)
	sd	$1, 56($fp)
	b	.LBB132_20
	nop
.LBB132_20:
	ld	$2, 56($fp)
	move	$sp, $fp
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
.Lfunc_end132:
	.size	__udivmodsi4_libgcc, .Lfunc_end132-__udivmodsi4_libgcc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	3
	.type	__ashldi3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ashldi3
__ashldi3:                              # @__ashldi3
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 32($fp)
	sw	$1, 28($fp)
	addiu	$1, $zero, 32
	sw	$1, 24($fp)
	ld	$1, 32($fp)
	sd	$1, 16($fp)
	lbu	$1, 28($fp)
	andi	$1, $1, 32
	beqz	$1, .LBB133_3
	nop
# %bb.1:
	b	.LBB133_2
	nop
.LBB133_2:
	sw	$zero, 8($fp)
	lw	$1, 16($fp)
	lw	$2, 28($fp)
	addiu	$2, $2, -32
	sllv	$1, $1, $2
	sw	$1, 12($fp)
	b	.LBB133_7
	nop
.LBB133_3:
	lw	$1, 28($fp)
	bnez	$1, .LBB133_6
	nop
# %bb.4:
	b	.LBB133_5
	nop
.LBB133_5:
	ld	$1, 32($fp)
	sd	$1, 40($fp)
	b	.LBB133_8
	nop
.LBB133_6:
	lw	$1, 16($fp)
	lw	$2, 28($fp)
	sllv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 20($fp)
	lw	$4, 28($fp)
	sllv	$1, $1, $4
	lw	$2, 16($fp)
	addiu	$3, $zero, 32
	subu	$3, $3, $4
	srlv	$2, $2, $3
	or	$1, $1, $2
	sw	$1, 12($fp)
	b	.LBB133_7
	nop
.LBB133_7:
	ld	$1, 8($fp)
	sd	$1, 40($fp)
	b	.LBB133_8
	nop
.LBB133_8:
	ld	$2, 40($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ashldi3
.Lfunc_end133:
	.size	__ashldi3, .Lfunc_end133-__ashldi3
                                        # -- End function
	.globl	__ashlti3                       # -- Begin function __ashlti3
	.p2align	3
	.type	__ashlti3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ashlti3
__ashlti3:                              # @__ashlti3
	.frame	$fp,96,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -96
	sd	$ra, 88($sp)                    # 8-byte Folded Spill
	sd	$fp, 80($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $6
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 56($fp)
	sd	$4, 48($fp)
	sw	$1, 44($fp)
	addiu	$1, $zero, 64
	sw	$1, 40($fp)
	ld	$1, 48($fp)
	ld	$2, 56($fp)
	sd	$2, 24($fp)
	sd	$1, 16($fp)
	lbu	$1, 44($fp)
	andi	$1, $1, 64
	beqz	$1, .LBB134_3
	nop
# %bb.1:
	b	.LBB134_2
	nop
.LBB134_2:
	daddiu	$1, $zero, 0
	sd	$zero, 0($fp)
	ld	$1, 16($fp)
	lw	$2, 44($fp)
	addiu	$2, $2, -64
	dsllv	$1, $1, $2
	sd	$1, 8($fp)
	b	.LBB134_7
	nop
.LBB134_3:
	lw	$1, 44($fp)
	bnez	$1, .LBB134_6
	nop
# %bb.4:
	b	.LBB134_5
	nop
.LBB134_5:
	ld	$1, 48($fp)
	ld	$2, 56($fp)
	sd	$2, 72($fp)
	sd	$1, 64($fp)
	b	.LBB134_8
	nop
.LBB134_6:
	ld	$1, 16($fp)
	lw	$2, 44($fp)
	dsllv	$1, $1, $2
	sd	$1, 0($fp)
	ld	$1, 24($fp)
	lw	$4, 44($fp)
	dsllv	$1, $1, $4
	ld	$2, 16($fp)
	addiu	$3, $zero, 64
	subu	$3, $3, $4
	dsrlv	$2, $2, $3
	or	$1, $1, $2
	sd	$1, 8($fp)
	b	.LBB134_7
	nop
.LBB134_7:
	ld	$1, 0($fp)
	ld	$2, 8($fp)
	sd	$2, 72($fp)
	sd	$1, 64($fp)
	b	.LBB134_8
	nop
.LBB134_8:
	ld	$2, 64($fp)
	ld	$3, 72($fp)
	move	$sp, $fp
	ld	$fp, 80($sp)                    # 8-byte Folded Reload
	ld	$ra, 88($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 96
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ashlti3
.Lfunc_end134:
	.size	__ashlti3, .Lfunc_end134-__ashlti3
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	3
	.type	__ashrdi3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ashrdi3
__ashrdi3:                              # @__ashrdi3
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 32($fp)
	sw	$1, 28($fp)
	addiu	$1, $zero, 32
	sw	$1, 24($fp)
	ld	$1, 32($fp)
	sd	$1, 16($fp)
	lbu	$1, 28($fp)
	andi	$1, $1, 32
	beqz	$1, .LBB135_3
	nop
# %bb.1:
	b	.LBB135_2
	nop
.LBB135_2:
	lw	$1, 20($fp)
	sra	$1, $1, 31
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	lw	$2, 28($fp)
	addiu	$2, $2, -32
	srav	$1, $1, $2
	sw	$1, 8($fp)
	b	.LBB135_7
	nop
.LBB135_3:
	lw	$1, 28($fp)
	bnez	$1, .LBB135_6
	nop
# %bb.4:
	b	.LBB135_5
	nop
.LBB135_5:
	ld	$1, 32($fp)
	sd	$1, 40($fp)
	b	.LBB135_8
	nop
.LBB135_6:
	lw	$1, 20($fp)
	lw	$2, 28($fp)
	srav	$1, $1, $2
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	lw	$3, 28($fp)
	addiu	$2, $zero, 32
	subu	$2, $2, $3
	sllv	$1, $1, $2
	lw	$2, 16($fp)
	srlv	$2, $2, $3
	or	$1, $1, $2
	sw	$1, 8($fp)
	b	.LBB135_7
	nop
.LBB135_7:
	ld	$1, 8($fp)
	sd	$1, 40($fp)
	b	.LBB135_8
	nop
.LBB135_8:
	ld	$2, 40($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ashrdi3
.Lfunc_end135:
	.size	__ashrdi3, .Lfunc_end135-__ashrdi3
                                        # -- End function
	.globl	__ashrti3                       # -- Begin function __ashrti3
	.p2align	3
	.type	__ashrti3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ashrti3
__ashrti3:                              # @__ashrti3
	.frame	$fp,96,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -96
	sd	$ra, 88($sp)                    # 8-byte Folded Spill
	sd	$fp, 80($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $6
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 56($fp)
	sd	$4, 48($fp)
	sw	$1, 44($fp)
	addiu	$1, $zero, 64
	sw	$1, 40($fp)
	ld	$1, 48($fp)
	ld	$2, 56($fp)
	sd	$2, 24($fp)
	sd	$1, 16($fp)
	lbu	$1, 44($fp)
	andi	$1, $1, 64
	beqz	$1, .LBB136_3
	nop
# %bb.1:
	b	.LBB136_2
	nop
.LBB136_2:
	ld	$1, 24($fp)
	dsra	$1, $1, 63
	sd	$1, 8($fp)
	ld	$1, 24($fp)
	lw	$2, 44($fp)
	addiu	$2, $2, -64
	dsrav	$1, $1, $2
	sd	$1, 0($fp)
	b	.LBB136_7
	nop
.LBB136_3:
	lw	$1, 44($fp)
	bnez	$1, .LBB136_6
	nop
# %bb.4:
	b	.LBB136_5
	nop
.LBB136_5:
	ld	$1, 48($fp)
	ld	$2, 56($fp)
	sd	$2, 72($fp)
	sd	$1, 64($fp)
	b	.LBB136_8
	nop
.LBB136_6:
	ld	$1, 24($fp)
	lw	$2, 44($fp)
	dsrav	$1, $1, $2
	sd	$1, 8($fp)
	ld	$1, 24($fp)
	lw	$3, 44($fp)
	addiu	$2, $zero, 64
	subu	$2, $2, $3
	dsllv	$1, $1, $2
	ld	$2, 16($fp)
	dsrlv	$2, $2, $3
	or	$1, $1, $2
	sd	$1, 0($fp)
	b	.LBB136_7
	nop
.LBB136_7:
	ld	$1, 0($fp)
	ld	$2, 8($fp)
	sd	$2, 72($fp)
	sd	$1, 64($fp)
	b	.LBB136_8
	nop
.LBB136_8:
	ld	$2, 64($fp)
	ld	$3, 72($fp)
	move	$sp, $fp
	ld	$fp, 80($sp)                    # 8-byte Folded Reload
	ld	$ra, 88($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 96
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ashrti3
.Lfunc_end136:
	.size	__ashrti3, .Lfunc_end136-__ashrti3
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	3
	.type	__bswapdi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__bswapdi2
__bswapdi2:                             # @__bswapdi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	ld	$2, 8($fp)
	dsrl	$1, $2, 56
	daddiu	$3, $zero, 255
	dsll	$4, $3, 48
	and	$4, $2, $4
	dsrl	$4, $4, 40
	or	$1, $1, $4
	dsll	$4, $3, 40
	and	$4, $2, $4
	dsrl	$4, $4, 24
	or	$1, $1, $4
	dsll	$4, $3, 32
	and	$4, $2, $4
	dsrl	$4, $4, 8
	or	$1, $1, $4
	dsll	$3, $3, 24
	and	$3, $2, $3
	dsll	$3, $3, 8
	or	$1, $1, $3
	lui	$3, 255
	and	$3, $2, $3
	dsll	$3, $3, 24
	or	$1, $1, $3
	andi	$3, $2, 65280
	dsll	$3, $3, 40
	or	$1, $1, $3
	dsll	$2, $2, 56
	or	$2, $1, $2
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__bswapdi2
.Lfunc_end137:
	.size	__bswapdi2, .Lfunc_end137-__bswapdi2
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	3
	.type	__bswapsi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__bswapsi2
__bswapsi2:                             # @__bswapsi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$2, 12($fp)
	srl	$1, $2, 24
	lui	$3, 255
	and	$3, $2, $3
	srl	$3, $3, 8
	or	$1, $1, $3
	andi	$3, $2, 65280
	sll	$3, $3, 8
	or	$1, $1, $3
	sll	$2, $2, 24
	or	$1, $1, $2
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__bswapsi2
.Lfunc_end138:
	.size	__bswapsi2, .Lfunc_end138-__bswapsi2
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	3
	.type	__clzsi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__clzsi2
__clzsi2:                               # @__clzsi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	sw	$1, 8($fp)
	lhu	$1, 10($fp)
	sll	$1, $1, 16
	sltiu	$1, $1, 1
	sll	$1, $1, 4
	sw	$1, 4($fp)
	lw	$2, 4($fp)
	addiu	$1, $zero, 16
	subu	$2, $1, $2
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	lbu	$1, 9($fp)
	sll	$1, $1, 8
	sltiu	$1, $1, 1
	sll	$1, $1, 3
	sw	$1, 4($fp)
	lw	$2, 4($fp)
	addiu	$1, $zero, 8
	subu	$2, $1, $2
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	addu	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 8($fp)
	andi	$1, $1, 240
	sltiu	$1, $1, 1
	sll	$1, $1, 2
	sw	$1, 4($fp)
	lw	$2, 4($fp)
	addiu	$1, $zero, 4
	subu	$2, $1, $2
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	addu	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 8($fp)
	andi	$1, $1, 12
	sltiu	$1, $1, 1
	sll	$1, $1, 1
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	addiu	$2, $zero, 2
	subu	$3, $2, $1
	lw	$1, 8($fp)
	srlv	$1, $1, $3
	sw	$1, 8($fp)
	lw	$3, 4($fp)
	lw	$1, 0($fp)
	addu	$1, $1, $3
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	lw	$3, 8($fp)
	subu	$2, $2, $3
	andi	$3, $3, 2
	sltiu	$3, $3, 1
	addiu	$4, $zero, 0
	negu	$3, $3
	and	$2, $2, $3
	addu	$1, $1, $2
                                        # implicit-def: $v0_64
	move	$2, $1
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__clzsi2
.Lfunc_end139:
	.size	__clzsi2, .Lfunc_end139-__clzsi2
                                        # -- End function
	.globl	__clzti2                        # -- Begin function __clzti2
	.p2align	3
	.type	__clzti2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__clzti2
__clzti2:                               # @__clzti2
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 40($fp)
	sd	$4, 32($fp)
	ld	$1, 32($fp)
	ld	$2, 40($fp)
	sd	$2, 24($fp)
	sd	$1, 16($fp)
	ld	$1, 24($fp)
	sltiu	$1, $1, 1
	dsll	$1, $1, 32
	dsrl	$1, $1, 32
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 8($fp)
	ld	$1, 24($fp)
	ld	$2, 8($fp)
	daddiu	$3, $zero, -1
	xor	$3, $2, $3
	and	$1, $1, $3
	ld	$3, 16($fp)
	and	$3, $3, $2
	or	$1, $1, $3
	dsrl	$3, $1, 1
	or	$1, $1, $3
	dsrl	$3, $1, 2
	or	$1, $1, $3
	dsrl	$3, $1, 4
	or	$1, $1, $3
	dsrl	$3, $1, 8
	or	$1, $1, $3
	dsrl	$3, $1, 16
	or	$1, $1, $3
	dsrl	$3, $1, 32
	nor	$1, $1, $3
	dsrl	$3, $1, 1
	lui	$4, 21845
	daddiu	$4, $4, 21845
	dsll	$4, $4, 16
	daddiu	$4, $4, 21845
	dsll	$4, $4, 16
	daddiu	$4, $4, 21845
	and	$3, $3, $4
	dsubu	$3, $1, $3
	lui	$1, 13107
	daddiu	$1, $1, 13107
	dsll	$1, $1, 16
	daddiu	$1, $1, 13107
	dsll	$1, $1, 16
	daddiu	$4, $1, 13107
	and	$1, $3, $4
	dsrl	$3, $3, 2
	and	$3, $3, $4
	daddu	$1, $1, $3
	dsrl	$3, $1, 4
	daddu	$1, $1, $3
	lui	$3, 3855
	daddiu	$3, $3, 3855
	dsll	$3, $3, 16
	daddiu	$3, $3, 3855
	dsll	$3, $3, 16
	daddiu	$3, $3, 3855
	and	$1, $1, $3
	lui	$3, 257
	daddiu	$3, $3, 257
	dsll	$3, $3, 16
	daddiu	$3, $3, 257
	dsll	$3, $3, 16
	daddiu	$3, $3, 257
	dmult	$1, $3
	mflo	$1
	dsrl	$1, $1, 56
                                        # kill: def $at killed $at killed $at_64
	sll	$1, $1, 0
                                        # kill: def $v0 killed $v0 killed $v0_64
	sll	$2, $2, 0
	andi	$2, $2, 64
	addu	$1, $1, $2
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__clzti2
.Lfunc_end140:
	.size	__clzti2, .Lfunc_end140-__clzti2
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	3
	.type	__cmpdi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__cmpdi2
__cmpdi2:                               # @__cmpdi2
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	ld	$1, 32($fp)
	sd	$1, 16($fp)
	ld	$1, 24($fp)
	sd	$1, 8($fp)
	lw	$1, 20($fp)
	lw	$2, 12($fp)
	slt	$1, $1, $2
	beqz	$1, .LBB141_3
	nop
# %bb.1:
	b	.LBB141_2
	nop
.LBB141_2:
	sw	$zero, 44($fp)
	b	.LBB141_13
	nop
.LBB141_3:
	lw	$2, 20($fp)
	lw	$1, 12($fp)
	slt	$1, $1, $2
	beqz	$1, .LBB141_6
	nop
# %bb.4:
	b	.LBB141_5
	nop
.LBB141_5:
	addiu	$1, $zero, 2
	sw	$1, 44($fp)
	b	.LBB141_13
	nop
.LBB141_6:
	lw	$1, 16($fp)
	lw	$2, 8($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB141_9
	nop
# %bb.7:
	b	.LBB141_8
	nop
.LBB141_8:
	sw	$zero, 44($fp)
	b	.LBB141_13
	nop
.LBB141_9:
	lw	$2, 16($fp)
	lw	$1, 8($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB141_12
	nop
# %bb.10:
	b	.LBB141_11
	nop
.LBB141_11:
	addiu	$1, $zero, 2
	sw	$1, 44($fp)
	b	.LBB141_13
	nop
.LBB141_12:
	addiu	$1, $zero, 1
	sw	$1, 44($fp)
	b	.LBB141_13
	nop
.LBB141_13:
	lw	$2, 44($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__cmpdi2
.Lfunc_end141:
	.size	__cmpdi2, .Lfunc_end141-__cmpdi2
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	3
	.type	__aeabi_lcmp,@function
	.set	nomicromips
	.set	nomips16
	.ent	__aeabi_lcmp
__aeabi_lcmp:                           # @__aeabi_lcmp
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	sd	$gp, 24($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__aeabi_lcmp)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(__aeabi_lcmp)))
	sd	$4, 16($fp)
	sd	$5, 8($fp)
	ld	$4, 16($fp)
	ld	$5, 8($fp)
	ld	$25, %call16(__cmpdi2)($gp)
	.reloc .Ltmp69, R_MIPS_JALR, __cmpdi2
.Ltmp69:
	jalr	$25
	nop
	addiu	$1, $2, -1
                                        # implicit-def: $v0_64
	move	$2, $1
	move	$sp, $fp
	ld	$gp, 24($sp)                    # 8-byte Folded Reload
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
.Lfunc_end142:
	.size	__aeabi_lcmp, .Lfunc_end142-__aeabi_lcmp
                                        # -- End function
	.globl	__cmpti2                        # -- Begin function __cmpti2
	.p2align	3
	.type	__cmpti2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__cmpti2
__cmpti2:                               # @__cmpti2
	.frame	$fp,96,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -96
	sd	$ra, 88($sp)                    # 8-byte Folded Spill
	sd	$fp, 80($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at_64 killed $a3_64
                                        # kill: def $at_64 killed $a2_64
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 56($fp)
	sd	$4, 48($fp)
	sd	$7, 40($fp)
	sd	$6, 32($fp)
	ld	$1, 48($fp)
	ld	$2, 56($fp)
	sd	$2, 24($fp)
	sd	$1, 16($fp)
	ld	$1, 32($fp)
	ld	$2, 40($fp)
	sd	$2, 8($fp)
	sd	$1, 0($fp)
	ld	$1, 24($fp)
	ld	$2, 8($fp)
	slt	$1, $1, $2
	beqz	$1, .LBB143_3
	nop
# %bb.1:
	b	.LBB143_2
	nop
.LBB143_2:
	sw	$zero, 76($fp)
	b	.LBB143_13
	nop
.LBB143_3:
	ld	$2, 24($fp)
	ld	$1, 8($fp)
	slt	$1, $1, $2
	beqz	$1, .LBB143_6
	nop
# %bb.4:
	b	.LBB143_5
	nop
.LBB143_5:
	addiu	$1, $zero, 2
	sw	$1, 76($fp)
	b	.LBB143_13
	nop
.LBB143_6:
	ld	$1, 16($fp)
	ld	$2, 0($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB143_9
	nop
# %bb.7:
	b	.LBB143_8
	nop
.LBB143_8:
	sw	$zero, 76($fp)
	b	.LBB143_13
	nop
.LBB143_9:
	ld	$2, 16($fp)
	ld	$1, 0($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB143_12
	nop
# %bb.10:
	b	.LBB143_11
	nop
.LBB143_11:
	addiu	$1, $zero, 2
	sw	$1, 76($fp)
	b	.LBB143_13
	nop
.LBB143_12:
	addiu	$1, $zero, 1
	sw	$1, 76($fp)
	b	.LBB143_13
	nop
.LBB143_13:
	lw	$2, 76($fp)
	move	$sp, $fp
	ld	$fp, 80($sp)                    # 8-byte Folded Reload
	ld	$ra, 88($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 96
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__cmpti2
.Lfunc_end143:
	.size	__cmpti2, .Lfunc_end143-__cmpti2
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	3
	.type	__ctzsi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ctzsi2
__ctzsi2:                               # @__ctzsi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	sw	$1, 8($fp)
	lhu	$1, 8($fp)
	sltiu	$1, $1, 1
	sll	$1, $1, 4
	sw	$1, 4($fp)
	lw	$2, 4($fp)
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	lbu	$1, 8($fp)
	sltiu	$1, $1, 1
	sll	$1, $1, 3
	sw	$1, 4($fp)
	lw	$2, 4($fp)
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	addu	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 8($fp)
	andi	$1, $1, 15
	sltiu	$1, $1, 1
	sll	$1, $1, 2
	sw	$1, 4($fp)
	lw	$2, 4($fp)
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	addu	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 8($fp)
	andi	$1, $1, 3
	sltiu	$1, $1, 1
	sll	$1, $1, 1
	sw	$1, 4($fp)
	lw	$2, 4($fp)
	lw	$1, 8($fp)
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	andi	$1, $1, 3
	sw	$1, 8($fp)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	addu	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	lw	$3, 8($fp)
	srl	$4, $3, 1
	addiu	$2, $zero, 2
	subu	$2, $2, $4
	andi	$3, $3, 1
	addiu	$3, $3, -1
	and	$2, $2, $3
	addu	$1, $1, $2
                                        # implicit-def: $v0_64
	move	$2, $1
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ctzsi2
.Lfunc_end144:
	.size	__ctzsi2, .Lfunc_end144-__ctzsi2
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0                          # -- Begin function __ctzti2
.LCPI145_0:
	.ascii	"\000\001\002\007\003\r\b\023\004\031\016\034\t\"\024(\005\021\032&\017.\0350\n\037#6\0252)9?\006\f\022\030\033!'\020%-/\036518>\013\027 $,47=\026+3<*;:"
	.text
	.globl	__ctzti2
	.p2align	3
	.type	__ctzti2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ctzti2
__ctzti2:                               # @__ctzti2
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__ctzti2)))
	daddu	$1, $1, $25
	daddiu	$2, $1, %lo(%neg(%gp_rel(__ctzti2)))
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 56($fp)
	sd	$4, 48($fp)
	ld	$1, 48($fp)
	ld	$3, 56($fp)
	sd	$3, 40($fp)
	sd	$1, 32($fp)
	ld	$1, 32($fp)
	sltiu	$1, $1, 1
	dsll	$1, $1, 32
	dsrl	$1, $1, 32
	daddiu	$3, $zero, 0
	dnegu	$1, $1
	sd	$1, 24($fp)
	ld	$1, 40($fp)
	ld	$4, 24($fp)
	sd	$4, 0($fp)                      # 8-byte Folded Spill
	and	$1, $1, $4
	ld	$3, 32($fp)
	daddiu	$5, $zero, -1
	xor	$4, $4, $5
	and	$3, $3, $4
	or	$1, $1, $3
	dnegu	$3, $1
	and	$3, $1, $3
	lui	$4, 537
	daddiu	$4, $4, -23661
	dsll	$4, $4, 16
	daddiu	$4, $4, -12995
	dsll	$4, $4, 16
	daddiu	$4, $4, 23999
	dmult	$3, $4
	mflo	$3
	dsrl	$3, $3, 58
	ld	$2, %got_page(.LCPI145_0)($2)
	daddiu	$2, $2, %got_ofst(.LCPI145_0)
	daddu	$2, $2, $3
	lbu	$2, 0($2)
	sd	$2, 8($fp)                      # 8-byte Folded Spill
	sltiu	$1, $1, 1
	daddiu	$2, $zero, 64
	sd	$2, 16($fp)                     # 8-byte Folded Spill
	bnez	$1, .LBB145_2
	nop
# %bb.1:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	sd	$1, 16($fp)                     # 8-byte Folded Spill
.LBB145_2:
	ld	$2, 0($fp)                      # 8-byte Folded Reload
	ld	$1, 16($fp)                     # 8-byte Folded Reload
                                        # kill: def $at killed $at killed $at_64
	sll	$1, $1, 0
                                        # kill: def $v0 killed $v0 killed $v0_64
	sll	$2, $2, 0
	andi	$2, $2, 64
	addu	$1, $1, $2
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ctzti2
.Lfunc_end145:
	.size	__ctzti2, .Lfunc_end145-__ctzti2
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0                          # -- Begin function __ffsti2
.LCPI146_0:
	.ascii	"\000\001\002\007\003\r\b\023\004\031\016\034\t\"\024(\005\021\032&\017.\0350\n\037#6\0252)9?\006\f\022\030\033!'\020%-/\036518>\013\027 $,47=\026+3<*;:"
	.text
	.globl	__ffsti2
	.p2align	3
	.type	__ffsti2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ffsti2
__ffsti2:                               # @__ffsti2
	.frame	$fp,112,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -112
	sd	$ra, 104($sp)                   # 8-byte Folded Spill
	sd	$fp, 96($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__ffsti2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__ffsti2)))
	sd	$1, 40($fp)                     # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 72($fp)
	sd	$4, 64($fp)
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 56($fp)
	sd	$1, 48($fp)
	ld	$1, 48($fp)
	bnez	$1, .LBB146_8
	nop
# %bb.1:
	b	.LBB146_2
	nop
.LBB146_2:
	ld	$1, 56($fp)
	bnez	$1, .LBB146_5
	nop
# %bb.3:
	b	.LBB146_4
	nop
.LBB146_4:
	sw	$zero, 92($fp)
	b	.LBB146_11
	nop
.LBB146_5:
	ld	$2, 40($fp)                     # 8-byte Folded Reload
	ld	$1, 56($fp)
	daddiu	$3, $zero, 0
	dnegu	$3, $1
	and	$3, $1, $3
	lui	$4, 537
	daddiu	$4, $4, -23661
	dsll	$4, $4, 16
	daddiu	$4, $4, -12995
	dsll	$4, $4, 16
	daddiu	$4, $4, 23999
	dmult	$3, $4
	mflo	$3
	dsrl	$3, $3, 58
	ld	$2, %got_page(.LCPI146_0)($2)
	daddiu	$2, $2, %got_ofst(.LCPI146_0)
	daddu	$2, $2, $3
	lbu	$2, 0($2)
	sd	$2, 24($fp)                     # 8-byte Folded Spill
	sltiu	$1, $1, 1
	daddiu	$2, $zero, 64
	sd	$2, 32($fp)                     # 8-byte Folded Spill
	bnez	$1, .LBB146_7
	nop
# %bb.6:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	sd	$1, 32($fp)                     # 8-byte Folded Spill
.LBB146_7:
	ld	$1, 32($fp)                     # 8-byte Folded Reload
	daddiu	$1, $1, 65
	sw	$1, 92($fp)
	b	.LBB146_11
	nop
.LBB146_8:
	ld	$2, 40($fp)                     # 8-byte Folded Reload
	ld	$1, 48($fp)
	daddiu	$3, $zero, 0
	dnegu	$3, $1
	and	$3, $1, $3
	lui	$4, 537
	daddiu	$4, $4, -23661
	dsll	$4, $4, 16
	daddiu	$4, $4, -12995
	dsll	$4, $4, 16
	daddiu	$4, $4, 23999
	dmult	$3, $4
	mflo	$3
	dsrl	$3, $3, 58
	ld	$2, %got_page(.LCPI146_0)($2)
	daddiu	$2, $2, %got_ofst(.LCPI146_0)
	daddu	$2, $2, $3
	lbu	$2, 0($2)
	sd	$2, 8($fp)                      # 8-byte Folded Spill
	sltiu	$1, $1, 1
	daddiu	$2, $zero, 64
	sd	$2, 16($fp)                     # 8-byte Folded Spill
	bnez	$1, .LBB146_10
	nop
# %bb.9:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	sd	$1, 16($fp)                     # 8-byte Folded Spill
.LBB146_10:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
                                        # kill: def $at killed $at killed $at_64
	sll	$1, $1, 0
	addiu	$1, $1, 1
	sw	$1, 92($fp)
	b	.LBB146_11
	nop
.LBB146_11:
	lw	$2, 92($fp)
	move	$sp, $fp
	ld	$fp, 96($sp)                    # 8-byte Folded Reload
	ld	$ra, 104($sp)                   # 8-byte Folded Reload
	daddiu	$sp, $sp, 112
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ffsti2
.Lfunc_end146:
	.size	__ffsti2, .Lfunc_end146-__ffsti2
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	3
	.type	__lshrdi3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__lshrdi3
__lshrdi3:                              # @__lshrdi3
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	sd	$4, 32($fp)
	sw	$1, 28($fp)
	addiu	$1, $zero, 32
	sw	$1, 24($fp)
	ld	$1, 32($fp)
	sd	$1, 16($fp)
	lbu	$1, 28($fp)
	andi	$1, $1, 32
	beqz	$1, .LBB147_3
	nop
# %bb.1:
	b	.LBB147_2
	nop
.LBB147_2:
	sw	$zero, 12($fp)
	lw	$1, 20($fp)
	lw	$2, 28($fp)
	addiu	$2, $2, -32
	srlv	$1, $1, $2
	sw	$1, 8($fp)
	b	.LBB147_7
	nop
.LBB147_3:
	lw	$1, 28($fp)
	bnez	$1, .LBB147_6
	nop
# %bb.4:
	b	.LBB147_5
	nop
.LBB147_5:
	ld	$1, 32($fp)
	sd	$1, 40($fp)
	b	.LBB147_8
	nop
.LBB147_6:
	lw	$1, 20($fp)
	lw	$2, 28($fp)
	srlv	$1, $1, $2
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	lw	$3, 28($fp)
	addiu	$2, $zero, 32
	subu	$2, $2, $3
	sllv	$1, $1, $2
	lw	$2, 16($fp)
	srlv	$2, $2, $3
	or	$1, $1, $2
	sw	$1, 8($fp)
	b	.LBB147_7
	nop
.LBB147_7:
	ld	$1, 8($fp)
	sd	$1, 40($fp)
	b	.LBB147_8
	nop
.LBB147_8:
	ld	$2, 40($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__lshrdi3
.Lfunc_end147:
	.size	__lshrdi3, .Lfunc_end147-__lshrdi3
                                        # -- End function
	.globl	__lshrti3                       # -- Begin function __lshrti3
	.p2align	3
	.type	__lshrti3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__lshrti3
__lshrti3:                              # @__lshrti3
	.frame	$fp,96,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -96
	sd	$ra, 88($sp)                    # 8-byte Folded Spill
	sd	$fp, 80($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $6
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 56($fp)
	sd	$4, 48($fp)
	sw	$1, 44($fp)
	addiu	$1, $zero, 64
	sw	$1, 40($fp)
	ld	$1, 48($fp)
	ld	$2, 56($fp)
	sd	$2, 24($fp)
	sd	$1, 16($fp)
	lbu	$1, 44($fp)
	andi	$1, $1, 64
	beqz	$1, .LBB148_3
	nop
# %bb.1:
	b	.LBB148_2
	nop
.LBB148_2:
	daddiu	$1, $zero, 0
	sd	$zero, 8($fp)
	ld	$1, 24($fp)
	lw	$2, 44($fp)
	addiu	$2, $2, -64
	dsrlv	$1, $1, $2
	sd	$1, 0($fp)
	b	.LBB148_7
	nop
.LBB148_3:
	lw	$1, 44($fp)
	bnez	$1, .LBB148_6
	nop
# %bb.4:
	b	.LBB148_5
	nop
.LBB148_5:
	ld	$1, 48($fp)
	ld	$2, 56($fp)
	sd	$2, 72($fp)
	sd	$1, 64($fp)
	b	.LBB148_8
	nop
.LBB148_6:
	ld	$1, 24($fp)
	lw	$2, 44($fp)
	dsrlv	$1, $1, $2
	sd	$1, 8($fp)
	ld	$1, 24($fp)
	lw	$3, 44($fp)
	addiu	$2, $zero, 64
	subu	$2, $2, $3
	dsllv	$1, $1, $2
	ld	$2, 16($fp)
	dsrlv	$2, $2, $3
	or	$1, $1, $2
	sd	$1, 0($fp)
	b	.LBB148_7
	nop
.LBB148_7:
	ld	$1, 0($fp)
	ld	$2, 8($fp)
	sd	$2, 72($fp)
	sd	$1, 64($fp)
	b	.LBB148_8
	nop
.LBB148_8:
	ld	$2, 64($fp)
	ld	$3, 72($fp)
	move	$sp, $fp
	ld	$fp, 80($sp)                    # 8-byte Folded Reload
	ld	$ra, 88($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 96
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__lshrti3
.Lfunc_end148:
	.size	__lshrti3, .Lfunc_end148-__lshrti3
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	3
	.type	__muldsi3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__muldsi3
__muldsi3:                              # @__muldsi3
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $5
	move	$2, $4
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	addiu	$1, $zero, 16
	sw	$1, 12($fp)
	ori	$1, $zero, 65535
	sw	$1, 8($fp)
	lhu	$1, 28($fp)
	lhu	$2, 24($fp)
	mult	$1, $2
	mflo	$1
	sw	$1, 16($fp)
	lhu	$1, 18($fp)
	sw	$1, 4($fp)
	lhu	$1, 16($fp)
	sw	$1, 16($fp)
	lhu	$1, 30($fp)
	lhu	$2, 24($fp)
	mult	$1, $2
	mflo	$2
	lw	$1, 4($fp)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	sll	$2, $1, 16
	lw	$1, 16($fp)
	addu	$1, $1, $2
	sw	$1, 16($fp)
	lhu	$1, 6($fp)
	sw	$1, 20($fp)
	lhu	$1, 18($fp)
	sw	$1, 4($fp)
	lhu	$1, 16($fp)
	sw	$1, 16($fp)
	lhu	$1, 26($fp)
	lhu	$2, 28($fp)
	mult	$1, $2
	mflo	$2
	lw	$1, 4($fp)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	sll	$2, $1, 16
	lw	$1, 16($fp)
	addu	$1, $1, $2
	sw	$1, 16($fp)
	lhu	$2, 6($fp)
	lw	$1, 20($fp)
	addu	$1, $1, $2
	sw	$1, 20($fp)
	lhu	$1, 30($fp)
	lhu	$2, 26($fp)
	mult	$1, $2
	mflo	$2
	lw	$1, 20($fp)
	addu	$1, $1, $2
	sw	$1, 20($fp)
	ld	$2, 16($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__muldsi3
.Lfunc_end149:
	.size	__muldsi3, .Lfunc_end149-__muldsi3
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	3
	.type	__muldi3_compiler_rt,@function
	.set	nomicromips
	.set	nomips16
	.ent	__muldi3_compiler_rt
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__muldi3_compiler_rt)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(__muldi3_compiler_rt)))
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	ld	$1, 32($fp)
	sd	$1, 16($fp)
	ld	$1, 24($fp)
	sd	$1, 8($fp)
	lw	$4, 16($fp)
	lw	$5, 8($fp)
	ld	$25, %call16(__muldsi3)($gp)
	.reloc .Ltmp70, R_MIPS_JALR, __muldsi3
.Ltmp70:
	jalr	$25
	nop
	sd	$2, 0($fp)
	lw	$1, 20($fp)
	lw	$2, 8($fp)
	mult	$1, $2
	mflo	$1
	lw	$2, 16($fp)
	lw	$3, 12($fp)
	mult	$2, $3
	mflo	$2
	addu	$2, $1, $2
	lw	$1, 4($fp)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	ld	$2, 0($fp)
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
.Lfunc_end150:
	.size	__muldi3_compiler_rt, .Lfunc_end150-__muldi3_compiler_rt
                                        # -- End function
	.globl	__mulddi3                       # -- Begin function __mulddi3
	.p2align	3
	.type	__mulddi3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__mulddi3
__mulddi3:                              # @__mulddi3
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)                    # 8-byte Folded Spill
	sd	$fp, 64($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 56($fp)
	sd	$5, 48($fp)
	addiu	$1, $zero, 32
	sw	$1, 28($fp)
	daddiu	$1, $zero, 1
	dsll	$1, $1, 32
	daddiu	$1, $1, -1
	sd	$1, 16($fp)
	lwu	$1, 56($fp)
	lwu	$2, 48($fp)
	dmult	$1, $2
	mflo	$1
	sd	$1, 32($fp)
	lwu	$1, 36($fp)
	sd	$1, 8($fp)
	lwu	$1, 32($fp)
	sd	$1, 32($fp)
	lwu	$1, 60($fp)
	lwu	$2, 48($fp)
	dmult	$1, $2
	mflo	$2
	ld	$1, 8($fp)
	daddu	$1, $1, $2
	sd	$1, 8($fp)
	ld	$1, 8($fp)
	dsll	$2, $1, 32
	ld	$1, 32($fp)
	daddu	$1, $1, $2
	sd	$1, 32($fp)
	lwu	$1, 12($fp)
	sd	$1, 40($fp)
	lwu	$1, 36($fp)
	sd	$1, 8($fp)
	lwu	$1, 32($fp)
	sd	$1, 32($fp)
	lwu	$1, 52($fp)
	lwu	$2, 56($fp)
	dmult	$1, $2
	mflo	$2
	ld	$1, 8($fp)
	daddu	$1, $1, $2
	sd	$1, 8($fp)
	ld	$1, 8($fp)
	dsll	$2, $1, 32
	ld	$1, 32($fp)
	daddu	$1, $1, $2
	sd	$1, 32($fp)
	lwu	$2, 12($fp)
	ld	$1, 40($fp)
	daddu	$1, $1, $2
	sd	$1, 40($fp)
	lwu	$1, 60($fp)
	lwu	$2, 52($fp)
	dmult	$1, $2
	mflo	$2
	ld	$1, 40($fp)
	daddu	$1, $1, $2
	sd	$1, 40($fp)
	ld	$2, 32($fp)
	ld	$3, 40($fp)
	move	$sp, $fp
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__mulddi3
.Lfunc_end151:
	.size	__mulddi3, .Lfunc_end151-__mulddi3
                                        # -- End function
	.globl	__multi3                        # -- Begin function __multi3
	.p2align	3
	.type	__multi3,@function
	.set	nomicromips
	.set	nomips16
	.ent	__multi3
__multi3:                               # @__multi3
	.frame	$fp,112,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -112
	sd	$ra, 104($sp)                   # 8-byte Folded Spill
	sd	$fp, 96($sp)                    # 8-byte Folded Spill
	sd	$gp, 88($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__multi3)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(__multi3)))
                                        # kill: def $at_64 killed $a3_64
                                        # kill: def $at_64 killed $a2_64
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 72($fp)
	sd	$4, 64($fp)
	sd	$7, 56($fp)
	sd	$6, 48($fp)
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 40($fp)
	sd	$1, 32($fp)
	ld	$1, 48($fp)
	ld	$2, 56($fp)
	sd	$2, 24($fp)
	sd	$1, 16($fp)
	ld	$4, 32($fp)
	ld	$5, 16($fp)
	ld	$25, %call16(__mulddi3)($gp)
	.reloc .Ltmp71, R_MIPS_JALR, __mulddi3
.Ltmp71:
	jalr	$25
	nop
	sd	$3, 8($fp)
	sd	$2, 0($fp)
	ld	$1, 40($fp)
	ld	$2, 16($fp)
	dmult	$1, $2
	mflo	$1
	ld	$2, 32($fp)
	ld	$3, 24($fp)
	dmult	$2, $3
	mflo	$2
	daddu	$2, $1, $2
	ld	$1, 8($fp)
	daddu	$1, $1, $2
	sd	$1, 8($fp)
	ld	$2, 0($fp)
	ld	$3, 8($fp)
	move	$sp, $fp
	ld	$gp, 88($sp)                    # 8-byte Folded Reload
	ld	$fp, 96($sp)                    # 8-byte Folded Reload
	ld	$ra, 104($sp)                   # 8-byte Folded Reload
	daddiu	$sp, $sp, 112
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__multi3
.Lfunc_end152:
	.size	__multi3, .Lfunc_end152-__multi3
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	3
	.type	__negdi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__negdi2
__negdi2:                               # @__negdi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 8($fp)
	ld	$1, 8($fp)
	daddiu	$2, $zero, 0
	dnegu	$2, $1
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__negdi2
.Lfunc_end153:
	.size	__negdi2, .Lfunc_end153-__negdi2
                                        # -- End function
	.globl	__negti2                        # -- Begin function __negti2
	.p2align	3
	.type	__negti2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__negti2
__negti2:                               # @__negti2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 8($fp)
	sd	$4, 0($fp)
	ld	$1, 8($fp)
	ld	$3, 0($fp)
	daddiu	$2, $zero, 0
	dnegu	$2, $3
	sltu	$3, $zero, $3
	dsll	$3, $3, 32
	dsrl	$3, $3, 32
	daddu	$1, $1, $3
	dnegu	$3, $1
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__negti2
.Lfunc_end154:
	.size	__negti2, .Lfunc_end154-__negti2
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	3
	.type	__paritydi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__paritydi2
__paritydi2:                            # @__paritydi2
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 24($fp)
	ld	$1, 24($fp)
	sd	$1, 16($fp)
	lw	$1, 20($fp)
	lw	$2, 16($fp)
	xor	$1, $1, $2
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	srl	$2, $1, 16
	xor	$1, $1, $2
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	srl	$2, $1, 8
	xor	$1, $1, $2
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	srl	$2, $1, 4
	xor	$1, $1, $2
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	andi	$2, $1, 15
	addiu	$1, $zero, 27030
	srlv	$1, $1, $2
	andi	$1, $1, 1
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__paritydi2
.Lfunc_end155:
	.size	__paritydi2, .Lfunc_end155-__paritydi2
                                        # -- End function
	.globl	__parityti2                     # -- Begin function __parityti2
	.p2align	3
	.type	__parityti2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__parityti2
__parityti2:                            # @__parityti2
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 40($fp)
	sd	$4, 32($fp)
	ld	$1, 32($fp)
	ld	$2, 40($fp)
	sd	$2, 24($fp)
	sd	$1, 16($fp)
	ld	$1, 24($fp)
	ld	$2, 16($fp)
	xor	$1, $1, $2
	sd	$1, 8($fp)
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	xor	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	srl	$2, $1, 16
	xor	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	srl	$2, $1, 8
	xor	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	srl	$2, $1, 4
	xor	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	andi	$2, $1, 15
	addiu	$1, $zero, 27030
	srlv	$1, $1, $2
	andi	$1, $1, 1
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__parityti2
.Lfunc_end156:
	.size	__parityti2, .Lfunc_end156-__parityti2
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	3
	.type	__paritysi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__paritysi2
__paritysi2:                            # @__paritysi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	srl	$2, $1, 16
	xor	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	srl	$2, $1, 8
	xor	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	srl	$2, $1, 4
	xor	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	andi	$2, $1, 15
	addiu	$1, $zero, 27030
	srlv	$1, $1, $2
	andi	$1, $1, 1
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__paritysi2
.Lfunc_end157:
	.size	__paritysi2, .Lfunc_end157-__paritysi2
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	3
	.type	__popcountdi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__popcountdi2
__popcountdi2:                          # @__popcountdi2
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 24($fp)
	ld	$1, 24($fp)
	sd	$1, 16($fp)
	ld	$1, 16($fp)
	dsrl	$2, $1, 1
	lui	$3, 21845
	daddiu	$3, $3, 21845
	dsll	$3, $3, 16
	daddiu	$3, $3, 21845
	dsll	$3, $3, 16
	daddiu	$3, $3, 21845
	and	$2, $2, $3
	dsubu	$1, $1, $2
	sd	$1, 16($fp)
	ld	$2, 16($fp)
	dsrl	$1, $2, 2
	lui	$3, 13107
	daddiu	$3, $3, 13107
	dsll	$3, $3, 16
	daddiu	$3, $3, 13107
	dsll	$3, $3, 16
	daddiu	$3, $3, 13107
	and	$1, $1, $3
	and	$2, $2, $3
	daddu	$1, $1, $2
	sd	$1, 16($fp)
	ld	$1, 16($fp)
	dsrl	$2, $1, 4
	daddu	$1, $1, $2
	lui	$2, 3855
	daddiu	$2, $2, 3855
	dsll	$2, $2, 16
	daddiu	$2, $2, 3855
	dsll	$2, $2, 16
	daddiu	$2, $2, 3855
	and	$1, $1, $2
	sd	$1, 16($fp)
	ld	$1, 16($fp)
	dsrl	$2, $1, 32
	daddu	$1, $1, $2
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	srl	$2, $1, 16
	addu	$1, $1, $2
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	srl	$2, $1, 8
	addu	$1, $1, $2
	andi	$1, $1, 127
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__popcountdi2
.Lfunc_end158:
	.size	__popcountdi2, .Lfunc_end158-__popcountdi2
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	3
	.type	__popcountsi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__popcountsi2
__popcountsi2:                          # @__popcountsi2
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)                    # 8-byte Folded Spill
	sd	$fp, 16($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	move	$1, $4
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	srl	$2, $1, 1
	lui	$3, 21845
	ori	$3, $3, 21845
	and	$2, $2, $3
	subu	$1, $1, $2
	sw	$1, 8($fp)
	lw	$2, 8($fp)
	srl	$1, $2, 2
	lui	$3, 13107
	ori	$3, $3, 13107
	and	$1, $1, $3
	and	$2, $2, $3
	addu	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	srl	$2, $1, 4
	addu	$1, $1, $2
	lui	$2, 3855
	ori	$2, $2, 3855
	and	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	srl	$2, $1, 16
	addu	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	srl	$2, $1, 8
	addu	$1, $1, $2
	andi	$1, $1, 63
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 16($sp)                    # 8-byte Folded Reload
	ld	$ra, 24($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__popcountsi2
.Lfunc_end159:
	.size	__popcountsi2, .Lfunc_end159-__popcountsi2
                                        # -- End function
	.globl	__popcountti2                   # -- Begin function __popcountti2
	.p2align	3
	.type	__popcountti2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__popcountti2
__popcountti2:                          # @__popcountti2
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 40($fp)
	sd	$4, 32($fp)
	ld	$1, 32($fp)
	ld	$2, 40($fp)
	sd	$2, 24($fp)
	sd	$1, 16($fp)
	ld	$2, 16($fp)
	ld	$1, 24($fp)
	dsrl	$4, $1, 1
	dsrl	$3, $2, 1
	lui	$5, 21845
	daddiu	$5, $5, 21845
	dsll	$5, $5, 16
	daddiu	$5, $5, 21845
	dsll	$5, $5, 16
	daddiu	$5, $5, 21845
	and	$3, $3, $5
	and	$4, $4, $5
	dsubu	$1, $1, $4
	sltu	$4, $2, $3
	dsll	$4, $4, 32
	dsrl	$4, $4, 32
	dsubu	$1, $1, $4
	dsubu	$2, $2, $3
	sd	$2, 16($fp)
	sd	$1, 24($fp)
	ld	$2, 16($fp)
	ld	$4, 24($fp)
	dsrl	$1, $4, 2
	dsrl	$3, $2, 2
	lui	$5, 13107
	daddiu	$5, $5, 13107
	dsll	$5, $5, 16
	daddiu	$5, $5, 13107
	dsll	$5, $5, 16
	daddiu	$5, $5, 13107
	and	$3, $3, $5
	and	$1, $1, $5
	and	$2, $2, $5
	and	$4, $4, $5
	daddu	$1, $1, $4
	daddu	$2, $3, $2
	sltu	$3, $2, $3
	dsll	$3, $3, 32
	dsrl	$3, $3, 32
	daddu	$1, $1, $3
	sd	$2, 16($fp)
	sd	$1, 24($fp)
	ld	$3, 16($fp)
	ld	$1, 24($fp)
	dsll	$4, $1, 60
	dsrl	$2, $3, 4
	or	$2, $2, $4
	dsrl	$4, $1, 4
	daddu	$1, $1, $4
	daddu	$2, $3, $2
	sltu	$3, $2, $3
	dsll	$3, $3, 32
	dsrl	$3, $3, 32
	daddu	$1, $1, $3
	lui	$3, 3855
	daddiu	$3, $3, 3855
	dsll	$3, $3, 16
	daddiu	$3, $3, 3855
	dsll	$3, $3, 16
	daddiu	$3, $3, 3855
	and	$1, $1, $3
	and	$2, $2, $3
	sd	$2, 16($fp)
	sd	$1, 24($fp)
	ld	$2, 24($fp)
	ld	$1, 16($fp)
	daddu	$1, $1, $2
	sd	$1, 8($fp)
	ld	$1, 8($fp)
	dsrl	$2, $1, 32
	daddu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	srl	$2, $1, 16
	addu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	srl	$2, $1, 8
	addu	$1, $1, $2
	andi	$1, $1, 255
	dsll	$1, $1, 32
	dsrl	$2, $1, 32
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__popcountti2
.Lfunc_end160:
	.size	__popcountti2, .Lfunc_end160-__popcountti2
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	3
	.type	__powidf2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__powidf2
__powidf2:                              # @__powidf2
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__powidf2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__powidf2)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$1, $5
                                        # kill: def $v0_64 killed $a0_64
	sd	$4, 32($fp)
	sw	$1, 28($fp)
	lw	$1, 28($fp)
	srl	$1, $1, 31
	sw	$1, 24($fp)
	daddiu	$1, $zero, 1023
	dsll	$1, $1, 52
	sd	$1, 16($fp)
	b	.LBB161_1
	nop
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	lbu	$1, 28($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB161_4
	nop
# %bb.2:                                #   in Loop: Header=BB161_1 Depth=1
	b	.LBB161_3
	nop
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$5, 32($fp)
	ld	$4, 16($fp)
	ld	$25, %call16(__muldf3)($gp)
	.reloc .Ltmp72, R_MIPS_JALR, __muldf3
.Ltmp72:
	jalr	$25
	nop
	sd	$2, 16($fp)
	b	.LBB161_4
	nop
.LBB161_4:                              #   in Loop: Header=BB161_1 Depth=1
	lw	$1, 28($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 28($fp)
	lw	$1, 28($fp)
	bnez	$1, .LBB161_7
	nop
# %bb.5:
	b	.LBB161_6
	nop
.LBB161_6:
	b	.LBB161_8
	nop
.LBB161_7:                              #   in Loop: Header=BB161_1 Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$5, 32($fp)
	ld	$25, %call16(__muldf3)($gp)
	move	$4, $5
	.reloc .Ltmp73, R_MIPS_JALR, __muldf3
.Ltmp73:
	jalr	$25
	nop
	sd	$2, 32($fp)
	b	.LBB161_1
	nop
.LBB161_8:
	lw	$1, 24($fp)
	beqz	$1, .LBB161_11
	nop
# %bb.9:
	b	.LBB161_10
	nop
.LBB161_10:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$5, 16($fp)
	ld	$25, %call16(__divdf3)($gp)
	daddiu	$1, $zero, 1023
	dsll	$4, $1, 52
	.reloc .Ltmp74, R_MIPS_JALR, __divdf3
.Ltmp74:
	jalr	$25
	nop
	sd	$2, 0($fp)                      # 8-byte Folded Spill
	b	.LBB161_12
	nop
.LBB161_11:
	ld	$1, 16($fp)
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB161_12
	nop
.LBB161_12:
	ld	$2, 0($fp)                      # 8-byte Folded Reload
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__powidf2
.Lfunc_end161:
	.size	__powidf2, .Lfunc_end161-__powidf2
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	3
	.type	__powisf2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__powisf2
__powisf2:                              # @__powisf2
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	sd	$gp, 40($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__powisf2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__powisf2)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$1, $5
                                        # kill: def $v0 killed $a0
	sw	$4, 36($fp)
	sw	$1, 32($fp)
	lw	$1, 32($fp)
	srl	$1, $1, 31
	sw	$1, 28($fp)
	lui	$1, 16256
	sw	$1, 24($fp)
	b	.LBB162_1
	nop
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	lbu	$1, 32($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB162_4
	nop
# %bb.2:                                #   in Loop: Header=BB162_1 Depth=1
	b	.LBB162_3
	nop
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	lw	$5, 36($fp)
	lw	$4, 24($fp)
	ld	$25, %call16(__mulsf3)($gp)
	.reloc .Ltmp75, R_MIPS_JALR, __mulsf3
.Ltmp75:
	jalr	$25
	nop
	sw	$2, 24($fp)
	b	.LBB162_4
	nop
.LBB162_4:                              #   in Loop: Header=BB162_1 Depth=1
	lw	$1, 32($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 32($fp)
	lw	$1, 32($fp)
	bnez	$1, .LBB162_7
	nop
# %bb.5:
	b	.LBB162_6
	nop
.LBB162_6:
	b	.LBB162_8
	nop
.LBB162_7:                              #   in Loop: Header=BB162_1 Depth=1
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	lw	$5, 36($fp)
	ld	$25, %call16(__mulsf3)($gp)
	move	$4, $5
	.reloc .Ltmp76, R_MIPS_JALR, __mulsf3
.Ltmp76:
	jalr	$25
	nop
	sw	$2, 36($fp)
	b	.LBB162_1
	nop
.LBB162_8:
	lw	$1, 28($fp)
	beqz	$1, .LBB162_11
	nop
# %bb.9:
	b	.LBB162_10
	nop
.LBB162_10:
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	lw	$5, 24($fp)
	ld	$25, %call16(__divsf3)($gp)
	lui	$4, 16256
	.reloc .Ltmp77, R_MIPS_JALR, __divsf3
.Ltmp77:
	jalr	$25
	nop
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	b	.LBB162_12
	nop
.LBB162_11:
	lw	$1, 24($fp)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB162_12
	nop
.LBB162_12:
	lw	$2, 12($fp)                     # 4-byte Folded Reload
	move	$sp, $fp
	ld	$gp, 40($sp)                    # 8-byte Folded Reload
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__powisf2
.Lfunc_end162:
	.size	__powisf2, .Lfunc_end162-__powisf2
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	3
	.type	__ucmpdi2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ucmpdi2
__ucmpdi2:                              # @__ucmpdi2
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)                    # 8-byte Folded Spill
	sd	$fp, 48($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	ld	$1, 32($fp)
	sd	$1, 16($fp)
	ld	$1, 24($fp)
	sd	$1, 8($fp)
	lw	$1, 20($fp)
	lw	$2, 12($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB163_3
	nop
# %bb.1:
	b	.LBB163_2
	nop
.LBB163_2:
	sw	$zero, 44($fp)
	b	.LBB163_13
	nop
.LBB163_3:
	lw	$2, 20($fp)
	lw	$1, 12($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB163_6
	nop
# %bb.4:
	b	.LBB163_5
	nop
.LBB163_5:
	addiu	$1, $zero, 2
	sw	$1, 44($fp)
	b	.LBB163_13
	nop
.LBB163_6:
	lw	$1, 16($fp)
	lw	$2, 8($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB163_9
	nop
# %bb.7:
	b	.LBB163_8
	nop
.LBB163_8:
	sw	$zero, 44($fp)
	b	.LBB163_13
	nop
.LBB163_9:
	lw	$2, 16($fp)
	lw	$1, 8($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB163_12
	nop
# %bb.10:
	b	.LBB163_11
	nop
.LBB163_11:
	addiu	$1, $zero, 2
	sw	$1, 44($fp)
	b	.LBB163_13
	nop
.LBB163_12:
	addiu	$1, $zero, 1
	sw	$1, 44($fp)
	b	.LBB163_13
	nop
.LBB163_13:
	lw	$2, 44($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ucmpdi2
.Lfunc_end163:
	.size	__ucmpdi2, .Lfunc_end163-__ucmpdi2
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	3
	.type	__aeabi_ulcmp,@function
	.set	nomicromips
	.set	nomips16
	.ent	__aeabi_ulcmp
__aeabi_ulcmp:                          # @__aeabi_ulcmp
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)                    # 8-byte Folded Spill
	sd	$fp, 32($sp)                    # 8-byte Folded Spill
	sd	$gp, 24($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(__aeabi_ulcmp)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(__aeabi_ulcmp)))
	sd	$4, 16($fp)
	sd	$5, 8($fp)
	ld	$4, 16($fp)
	ld	$5, 8($fp)
	ld	$25, %call16(__ucmpdi2)($gp)
	.reloc .Ltmp78, R_MIPS_JALR, __ucmpdi2
.Ltmp78:
	jalr	$25
	nop
	addiu	$1, $2, -1
                                        # implicit-def: $v0_64
	move	$2, $1
	move	$sp, $fp
	ld	$gp, 24($sp)                    # 8-byte Folded Reload
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
.Lfunc_end164:
	.size	__aeabi_ulcmp, .Lfunc_end164-__aeabi_ulcmp
                                        # -- End function
	.globl	__ucmpti2                       # -- Begin function __ucmpti2
	.p2align	3
	.type	__ucmpti2,@function
	.set	nomicromips
	.set	nomips16
	.ent	__ucmpti2
__ucmpti2:                              # @__ucmpti2
	.frame	$fp,96,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	daddiu	$sp, $sp, -96
	sd	$ra, 88($sp)                    # 8-byte Folded Spill
	sd	$fp, 80($sp)                    # 8-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at_64 killed $a3_64
                                        # kill: def $at_64 killed $a2_64
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 56($fp)
	sd	$4, 48($fp)
	sd	$7, 40($fp)
	sd	$6, 32($fp)
	ld	$1, 48($fp)
	ld	$2, 56($fp)
	sd	$2, 24($fp)
	sd	$1, 16($fp)
	ld	$1, 32($fp)
	ld	$2, 40($fp)
	sd	$2, 8($fp)
	sd	$1, 0($fp)
	ld	$1, 24($fp)
	ld	$2, 8($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB165_3
	nop
# %bb.1:
	b	.LBB165_2
	nop
.LBB165_2:
	sw	$zero, 76($fp)
	b	.LBB165_13
	nop
.LBB165_3:
	ld	$2, 24($fp)
	ld	$1, 8($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB165_6
	nop
# %bb.4:
	b	.LBB165_5
	nop
.LBB165_5:
	addiu	$1, $zero, 2
	sw	$1, 76($fp)
	b	.LBB165_13
	nop
.LBB165_6:
	ld	$1, 16($fp)
	ld	$2, 0($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB165_9
	nop
# %bb.7:
	b	.LBB165_8
	nop
.LBB165_8:
	sw	$zero, 76($fp)
	b	.LBB165_13
	nop
.LBB165_9:
	ld	$2, 16($fp)
	ld	$1, 0($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB165_12
	nop
# %bb.10:
	b	.LBB165_11
	nop
.LBB165_11:
	addiu	$1, $zero, 2
	sw	$1, 76($fp)
	b	.LBB165_13
	nop
.LBB165_12:
	addiu	$1, $zero, 1
	sw	$1, 76($fp)
	b	.LBB165_13
	nop
.LBB165_13:
	lw	$2, 76($fp)
	move	$sp, $fp
	ld	$fp, 80($sp)                    # 8-byte Folded Reload
	ld	$ra, 88($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 96
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__ucmpti2
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
	.text
