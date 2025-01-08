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
	lui	$1, %hi(%neg(%gp_rel(make_ti)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(make_ti)))
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$2, %got_page(.L__profc_make_ti)($1)
	ld	$1, %got_ofst(.L__profc_make_ti)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_make_ti)($2)
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
	lui	$1, %hi(%neg(%gp_rel(make_tu)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(make_tu)))
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$2, %got_page(.L__profc_make_tu)($1)
	ld	$1, %got_ofst(.L__profc_make_tu)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_make_tu)($2)
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
	lui	$1, %hi(%neg(%gp_rel(memmove)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(memmove)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_memmove)($1)
	ld	$1, %got_ofst(.L__profc_memmove)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_memmove)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memmove)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memmove)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memmove)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memmove)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memmove)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memmove)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memmove)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memmove)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	lui	$1, %hi(%neg(%gp_rel(memccpy)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(memccpy)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$2, $6
	sd	$4, 64($fp)
	sd	$5, 56($fp)
	sw	$2, 52($fp)
	sd	$7, 40($fp)
	ld	$2, %got_page(.L__profc_memccpy)($1)
	ld	$1, %got_ofst(.L__profc_memccpy)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_memccpy)($2)
	ld	$1, 64($fp)
	sd	$1, 32($fp)
	ld	$1, 56($fp)
	sd	$1, 24($fp)
	lbu	$1, 52($fp)
	sw	$1, 52($fp)
	b	.LBB3_1
	nop
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 40($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB3_6
	nop
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_3
	nop
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memccpy)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memccpy)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 24($fp)
	lbu	$1, 0($1)
	ld	$2, 32($fp)
	sb	$1, 0($2)
	lw	$2, 52($fp)
	xor	$3, $1, $2
	sltu	$3, $zero, $3
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	beq	$1, $2, .LBB3_6
	nop
# %bb.4:                                #   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_5
	nop
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_memccpy)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_memccpy)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB3_6
	nop
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB3_10
	nop
# %bb.7:                                #   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_8
	nop
.LBB3_8:                                #   in Loop: Header=BB3_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memccpy)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memccpy)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB3_9
	nop
.LBB3_9:                                #   in Loop: Header=BB3_1 Depth=1
	ld	$1, 40($fp)
	daddiu	$1, $1, -1
	sd	$1, 40($fp)
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	ld	$1, 32($fp)
	daddiu	$1, $1, 1
	sd	$1, 32($fp)
	b	.LBB3_1
	nop
.LBB3_10:
	ld	$1, 40($fp)
	beqz	$1, .LBB3_13
	nop
# %bb.11:
	b	.LBB3_12
	nop
.LBB3_12:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memccpy)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memccpy)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 32($fp)
	daddiu	$1, $1, 1
	sd	$1, 72($fp)
	b	.LBB3_14
	nop
.LBB3_13:
	daddiu	$1, $zero, 0
	sd	$zero, 72($fp)
	b	.LBB3_14
	nop
.LBB3_14:
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
	lui	$1, %hi(%neg(%gp_rel(memchr)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(memchr)))
	sd	$1, 24($fp)                     # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 56($fp)
	sw	$2, 52($fp)
	sd	$6, 40($fp)
	ld	$2, %got_page(.L__profc_memchr)($1)
	ld	$1, %got_ofst(.L__profc_memchr)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_memchr)($2)
	ld	$1, 56($fp)
	sd	$1, 32($fp)
	lbu	$1, 52($fp)
	sw	$1, 52($fp)
	b	.LBB4_1
	nop
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 40($fp)
	addiu	$2, $zero, 0
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB4_6
	nop
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_3
	nop
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memchr)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 32($fp)
	lbu	$1, 0($1)
	lw	$2, 52($fp)
	xor	$3, $1, $2
	sltu	$3, $zero, $3
	sw	$3, 16($fp)                     # 4-byte Folded Spill
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	beq	$1, $2, .LBB4_6
	nop
# %bb.4:                                #   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_5
	nop
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	ld	$2, 24($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_memchr)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_memchr)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	b	.LBB4_6
	nop
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB4_10
	nop
# %bb.7:                                #   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_8
	nop
.LBB4_8:                                #   in Loop: Header=BB4_1 Depth=1
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memchr)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB4_9
	nop
.LBB4_9:                                #   in Loop: Header=BB4_1 Depth=1
	ld	$1, 32($fp)
	daddiu	$1, $1, 1
	sd	$1, 32($fp)
	ld	$1, 40($fp)
	daddiu	$1, $1, -1
	sd	$1, 40($fp)
	b	.LBB4_1
	nop
.LBB4_10:
	ld	$1, 40($fp)
	beqz	$1, .LBB4_13
	nop
# %bb.11:
	b	.LBB4_12
	nop
.LBB4_12:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memchr)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 32($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB4_14
	nop
.LBB4_13:
	daddiu	$1, $zero, 0
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB4_14
	nop
.LBB4_14:
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	move	$sp, $fp
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
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
	lui	$1, %hi(%neg(%gp_rel(memcmp)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(memcmp)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	sd	$4, 56($fp)
	sd	$5, 48($fp)
	sd	$6, 40($fp)
	ld	$2, %got_page(.L__profc_memcmp)($1)
	ld	$1, %got_ofst(.L__profc_memcmp)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_memcmp)($2)
	ld	$1, 56($fp)
	sd	$1, 32($fp)
	ld	$1, 48($fp)
	sd	$1, 24($fp)
	b	.LBB5_1
	nop
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 40($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB5_6
	nop
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	b	.LBB5_3
	nop
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memcmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memcmp)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 32($fp)
	lbu	$1, 0($1)
	ld	$2, 24($fp)
	lbu	$2, 0($2)
	xor	$3, $1, $2
	sltiu	$3, $3, 1
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	bne	$1, $2, .LBB5_6
	nop
# %bb.4:                                #   in Loop: Header=BB5_1 Depth=1
	b	.LBB5_5
	nop
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_memcmp)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_memcmp)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB5_6
	nop
.LBB5_6:                                #   in Loop: Header=BB5_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB5_10
	nop
# %bb.7:                                #   in Loop: Header=BB5_1 Depth=1
	b	.LBB5_8
	nop
.LBB5_8:                                #   in Loop: Header=BB5_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memcmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memcmp)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB5_9
	nop
.LBB5_9:                                #   in Loop: Header=BB5_1 Depth=1
	ld	$1, 40($fp)
	daddiu	$1, $1, -1
	sd	$1, 40($fp)
	ld	$1, 32($fp)
	daddiu	$1, $1, 1
	sd	$1, 32($fp)
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	b	.LBB5_1
	nop
.LBB5_10:
	ld	$1, 40($fp)
	beqz	$1, .LBB5_13
	nop
# %bb.11:
	b	.LBB5_12
	nop
.LBB5_12:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memcmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memcmp)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 32($fp)
	lbu	$1, 0($1)
	ld	$2, 24($fp)
	lbu	$2, 0($2)
	subu	$1, $1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB5_14
	nop
.LBB5_13:
	addiu	$1, $zero, 0
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB5_14
	nop
.LBB5_14:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	sll	$2, $1, 0
	move	$sp, $fp
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
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
	lui	$1, %hi(%neg(%gp_rel(memcpy)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(memcpy)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_memcpy)($1)
	ld	$1, %got_ofst(.L__profc_memcpy)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_memcpy)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memcpy)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memcpy)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	lui	$1, %hi(%neg(%gp_rel(memrchr)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(memrchr)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 32($fp)
	sw	$2, 28($fp)
	sd	$6, 16($fp)
	ld	$2, %got_page(.L__profc_memrchr)($1)
	ld	$1, %got_ofst(.L__profc_memrchr)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_memrchr)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memrchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memrchr)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memrchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memrchr)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	lui	$1, %hi(%neg(%gp_rel(memset)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(memset)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 40($fp)
	sw	$2, 36($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_memset)($1)
	ld	$1, %got_ofst(.L__profc_memset)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_memset)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memset)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memset)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	lui	$1, %hi(%neg(%gp_rel(stpcpy)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(stpcpy)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$2, %got_page(.L__profc_stpcpy)($1)
	ld	$1, %got_ofst(.L__profc_stpcpy)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_stpcpy)($2)
	b	.LBB9_1
	nop
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	ld	$1, 16($fp)
	lbu	$1, 0($1)
	ld	$2, 24($fp)
	sb	$1, 0($2)
	beqz	$1, .LBB9_5
	nop
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	b	.LBB9_3
	nop
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_stpcpy)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_stpcpy)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB9_4
	nop
.LBB9_4:                                #   in Loop: Header=BB9_1 Depth=1
	ld	$1, 16($fp)
	daddiu	$1, $1, 1
	sd	$1, 16($fp)
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	b	.LBB9_1
	nop
.LBB9_5:
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
	lui	$1, %hi(%neg(%gp_rel(strchrnul)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(strchrnul)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 24($fp)
	sw	$2, 20($fp)
	ld	$2, %got_page(.L__profc_strchrnul)($1)
	ld	$1, %got_ofst(.L__profc_strchrnul)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_strchrnul)($2)
	lbu	$1, 20($fp)
	sw	$1, 20($fp)
	b	.LBB10_1
	nop
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	lb	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB10_6
	nop
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_3
	nop
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strchrnul)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strchrnul)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 24($fp)
	lbu	$1, 0($1)
	lw	$2, 20($fp)
	xor	$3, $1, $2
	sltu	$3, $zero, $3
	sw	$3, 0($fp)                      # 4-byte Folded Spill
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	beq	$1, $2, .LBB10_6
	nop
# %bb.4:                                #   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_5
	nop
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_strchrnul)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_strchrnul)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB10_6
	nop
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB10_10
	nop
# %bb.7:                                #   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_8
	nop
.LBB10_8:                               #   in Loop: Header=BB10_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strchrnul)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strchrnul)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB10_9
	nop
.LBB10_9:                               #   in Loop: Header=BB10_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	b	.LBB10_1
	nop
.LBB10_10:
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
	lui	$1, %hi(%neg(%gp_rel(strchr)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(strchr)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 16($fp)
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc_strchr)($1)
	ld	$1, %got_ofst(.L__profc_strchr)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_strchr)($2)
	b	.LBB11_2
	nop
.LBB11_1:                               #   in Loop: Header=BB11_2 Depth=1
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strchr)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB11_2
	nop
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 16($fp)
	lb	$1, 0($1)
	lw	$2, 12($fp)
	bne	$1, $2, .LBB11_5
	nop
# %bb.3:
	b	.LBB11_4
	nop
.LBB11_4:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strchr)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 16($fp)
	sd	$1, 24($fp)
	b	.LBB11_9
	nop
.LBB11_5:                               #   in Loop: Header=BB11_2 Depth=1
	b	.LBB11_6
	nop
.LBB11_6:                               #   in Loop: Header=BB11_2 Depth=1
	ld	$1, 16($fp)
	daddiu	$2, $1, 1
	sd	$2, 16($fp)
	lbu	$1, 0($1)
	bnez	$1, .LBB11_1
	nop
# %bb.7:
	b	.LBB11_8
	nop
.LBB11_8:
	daddiu	$1, $zero, 0
	sd	$zero, 24($fp)
	b	.LBB11_9
	nop
.LBB11_9:
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
	lui	$1, %hi(%neg(%gp_rel(strcmp)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(strcmp)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$2, %got_page(.L__profc_strcmp)($1)
	ld	$1, %got_ofst(.L__profc_strcmp)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_strcmp)($2)
	b	.LBB12_1
	nop
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	lb	$1, 0($1)
	ld	$2, 16($fp)
	lb	$2, 0($2)
	addiu	$3, $zero, 0
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	bne	$1, $2, .LBB12_6
	nop
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_3
	nop
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strcmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strcmp)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 24($fp)
	lb	$1, 0($1)
	sltu	$2, $zero, $1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB12_6
	nop
# %bb.4:                                #   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_5
	nop
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_strcmp)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_strcmp)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB12_6
	nop
.LBB12_6:                               #   in Loop: Header=BB12_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB12_10
	nop
# %bb.7:                                #   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_8
	nop
.LBB12_8:                               #   in Loop: Header=BB12_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strcmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strcmp)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB12_9
	nop
.LBB12_9:                               #   in Loop: Header=BB12_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	ld	$1, 16($fp)
	daddiu	$1, $1, 1
	sd	$1, 16($fp)
	b	.LBB12_1
	nop
.LBB12_10:
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
	lui	$1, %hi(%neg(%gp_rel(strlen)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(strlen)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 24($fp)
	ld	$2, %got_page(.L__profc_strlen)($1)
	ld	$1, %got_ofst(.L__profc_strlen)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_strlen)($2)
	ld	$1, 24($fp)
	sd	$1, 16($fp)
	b	.LBB13_1
	nop
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	lbu	$1, 0($1)
	beqz	$1, .LBB13_5
	nop
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	b	.LBB13_3
	nop
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strlen)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strlen)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB13_4
	nop
.LBB13_4:                               #   in Loop: Header=BB13_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	b	.LBB13_1
	nop
.LBB13_5:
	ld	$1, 24($fp)
	ld	$2, 16($fp)
	dsubu	$2, $1, $2
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
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
	lui	$1, %hi(%neg(%gp_rel(strncmp)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(strncmp)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 48($fp)
	sd	$5, 40($fp)
	sd	$6, 32($fp)
	ld	$2, %got_page(.L__profc_strncmp)($1)
	ld	$1, %got_ofst(.L__profc_strncmp)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_strncmp)($2)
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strncmp)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	sw	$zero, 60($fp)
	b	.LBB14_20
	nop
.LBB14_3:
	b	.LBB14_4
	nop
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	lbu	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB14_15
	nop
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=1
	b	.LBB14_6
	nop
.LBB14_6:                               #   in Loop: Header=BB14_4 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strncmp)
	ld	$1, 56($2)
	daddiu	$1, $1, 1
	sd	$1, 56($2)
	ld	$1, 16($fp)
	lbu	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB14_15
	nop
# %bb.7:                                #   in Loop: Header=BB14_4 Depth=1
	b	.LBB14_8
	nop
.LBB14_8:                               #   in Loop: Header=BB14_4 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strncmp)
	ld	$1, 64($2)
	daddiu	$1, $1, 1
	sd	$1, 64($2)
	b	.LBB14_9
	nop
.LBB14_9:                               #   in Loop: Header=BB14_4 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strncmp)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	ld	$1, 32($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB14_15
	nop
# %bb.10:                               #   in Loop: Header=BB14_4 Depth=1
	b	.LBB14_11
	nop
.LBB14_11:                              #   in Loop: Header=BB14_4 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strncmp)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	b	.LBB14_12
	nop
.LBB14_12:                              #   in Loop: Header=BB14_4 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strncmp)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	ld	$1, 24($fp)
	lbu	$1, 0($1)
	ld	$2, 16($fp)
	lbu	$2, 0($2)
	xor	$3, $1, $2
	sltiu	$3, $3, 1
	sw	$3, 0($fp)                      # 4-byte Folded Spill
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	bne	$1, $2, .LBB14_15
	nop
# %bb.13:                               #   in Loop: Header=BB14_4 Depth=1
	b	.LBB14_14
	nop
.LBB14_14:                              #   in Loop: Header=BB14_4 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_strncmp)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_strncmp)
	ld	$2, 32($3)
	daddiu	$2, $2, 1
	sd	$2, 32($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB14_15
	nop
.LBB14_15:                              #   in Loop: Header=BB14_4 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB14_19
	nop
# %bb.16:                               #   in Loop: Header=BB14_4 Depth=1
	b	.LBB14_17
	nop
.LBB14_17:                              #   in Loop: Header=BB14_4 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strncmp)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	b	.LBB14_18
	nop
.LBB14_18:                              #   in Loop: Header=BB14_4 Depth=1
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
.LBB14_19:
	ld	$1, 24($fp)
	lbu	$1, 0($1)
	ld	$2, 16($fp)
	lbu	$2, 0($2)
	subu	$1, $1, $2
	sw	$1, 60($fp)
	b	.LBB14_20
	nop
.LBB14_20:
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
	lui	$1, %hi(%neg(%gp_rel(swab)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(swab)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_swab)($1)
	ld	$1, %got_ofst(.L__profc_swab)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_swab)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_swab)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_swab)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	lui	$1, %hi(%neg(%gp_rel(isalpha)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(isalpha)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc_isalpha)($1)
	ld	$1, %got_ofst(.L__profc_isalpha)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_isalpha)($2)
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
	lui	$1, %hi(%neg(%gp_rel(isascii)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(isascii)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc_isascii)($1)
	ld	$1, %got_ofst(.L__profc_isascii)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_isascii)($2)
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
	lui	$1, %hi(%neg(%gp_rel(isblank)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(isblank)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$2, $4
	sw	$2, 28($fp)
	ld	$2, %got_page(.L__profc_isblank)($1)
	ld	$1, %got_ofst(.L__profc_isblank)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_isblank)($2)
	lw	$1, 28($fp)
	addiu	$3, $zero, 1
	addiu	$2, $zero, 32
	sw	$3, 24($fp)                     # 4-byte Folded Spill
	beq	$1, $2, .LBB18_5
	nop
# %bb.1:
	b	.LBB18_2
	nop
.LBB18_2:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_isblank)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_isblank)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 28($fp)
	addiu	$2, $zero, 9
	xor	$3, $1, $2
	sltiu	$3, $3, 1
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	sw	$3, 24($fp)                     # 4-byte Folded Spill
	beq	$1, $2, .LBB18_5
	nop
# %bb.3:
	b	.LBB18_4
	nop
.LBB18_4:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_isblank)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_isblank)
	ld	$2, 16($3)
	daddiu	$2, $2, 1
	sd	$2, 16($3)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	b	.LBB18_5
	nop
.LBB18_5:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
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
	lui	$1, %hi(%neg(%gp_rel(iscntrl)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(iscntrl)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$2, $4
	sw	$2, 28($fp)
	ld	$2, %got_page(.L__profc_iscntrl)($1)
	ld	$1, %got_ofst(.L__profc_iscntrl)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_iscntrl)($2)
	lw	$1, 28($fp)
	sltiu	$1, $1, 32
	addiu	$2, $zero, 1
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB19_5
	nop
# %bb.1:
	b	.LBB19_2
	nop
.LBB19_2:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iscntrl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iscntrl)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 28($fp)
	addiu	$2, $zero, 127
	xor	$3, $1, $2
	sltiu	$3, $3, 1
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	sw	$3, 24($fp)                     # 4-byte Folded Spill
	beq	$1, $2, .LBB19_5
	nop
# %bb.3:
	b	.LBB19_4
	nop
.LBB19_4:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_iscntrl)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_iscntrl)
	ld	$2, 16($3)
	daddiu	$2, $2, 1
	sd	$2, 16($3)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	b	.LBB19_5
	nop
.LBB19_5:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
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
	lui	$1, %hi(%neg(%gp_rel(isdigit)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(isdigit)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc_isdigit)($1)
	ld	$1, %got_ofst(.L__profc_isdigit)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_isdigit)($2)
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
	lui	$1, %hi(%neg(%gp_rel(isgraph)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(isgraph)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc_isgraph)($1)
	ld	$1, %got_ofst(.L__profc_isgraph)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_isgraph)($2)
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
	lui	$1, %hi(%neg(%gp_rel(islower)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(islower)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc_islower)($1)
	ld	$1, %got_ofst(.L__profc_islower)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_islower)($2)
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
	lui	$1, %hi(%neg(%gp_rel(isprint)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(isprint)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc_isprint)($1)
	ld	$1, %got_ofst(.L__profc_isprint)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_isprint)($2)
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
	lui	$1, %hi(%neg(%gp_rel(isspace)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(isspace)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$2, $4
	sw	$2, 28($fp)
	ld	$2, %got_page(.L__profc_isspace)($1)
	ld	$1, %got_ofst(.L__profc_isspace)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_isspace)($2)
	lw	$1, 28($fp)
	addiu	$3, $zero, 1
	addiu	$2, $zero, 32
	sw	$3, 24($fp)                     # 4-byte Folded Spill
	beq	$1, $2, .LBB24_5
	nop
# %bb.1:
	b	.LBB24_2
	nop
.LBB24_2:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_isspace)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_isspace)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 28($fp)
	addiu	$1, $1, -9
	sltiu	$1, $1, 5
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	move	$2, $1
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB24_5
	nop
# %bb.3:
	b	.LBB24_4
	nop
.LBB24_4:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_isspace)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_isspace)
	ld	$2, 16($3)
	daddiu	$2, $2, 1
	sd	$2, 16($3)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	b	.LBB24_5
	nop
.LBB24_5:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
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
	lui	$1, %hi(%neg(%gp_rel(isupper)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(isupper)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc_isupper)($1)
	ld	$1, %got_ofst(.L__profc_isupper)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_isupper)($2)
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
	lui	$1, %hi(%neg(%gp_rel(iswcntrl)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(iswcntrl)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$2, $4
	sw	$2, 28($fp)
	ld	$2, %got_page(.L__profc_iswcntrl)($1)
	ld	$1, %got_ofst(.L__profc_iswcntrl)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_iswcntrl)($2)
	lw	$1, 28($fp)
	sltiu	$1, $1, 32
	addiu	$2, $zero, 1
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB26_11
	nop
# %bb.1:
	b	.LBB26_2
	nop
.LBB26_2:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswcntrl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswcntrl)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	lw	$1, 28($fp)
	addiu	$1, $1, -127
	sltiu	$1, $1, 33
	addiu	$2, $zero, 1
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB26_11
	nop
# %bb.3:
	b	.LBB26_4
	nop
.LBB26_4:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswcntrl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswcntrl)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	b	.LBB26_5
	nop
.LBB26_5:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswcntrl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswcntrl)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	lw	$1, 28($fp)
	addiu	$1, $1, -8232
	sltiu	$1, $1, 2
	addiu	$2, $zero, 1
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB26_11
	nop
# %bb.6:
	b	.LBB26_7
	nop
.LBB26_7:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswcntrl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswcntrl)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	b	.LBB26_8
	nop
.LBB26_8:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswcntrl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswcntrl)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 28($fp)
	lui	$2, 65535
	ori	$2, $2, 7
	addu	$1, $1, $2
	sltiu	$1, $1, 3
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	move	$2, $1
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB26_11
	nop
# %bb.9:
	b	.LBB26_10
	nop
.LBB26_10:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_iswcntrl)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_iswcntrl)
	ld	$2, 16($3)
	daddiu	$2, $2, 1
	sd	$2, 16($3)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	b	.LBB26_11
	nop
.LBB26_11:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
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
	lui	$1, %hi(%neg(%gp_rel(iswdigit)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(iswdigit)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc_iswdigit)($1)
	ld	$1, %got_ofst(.L__profc_iswdigit)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_iswdigit)($2)
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
	lui	$1, %hi(%neg(%gp_rel(iswprint)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(iswprint)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	move	$2, $4
	sw	$2, 8($fp)
	ld	$2, %got_page(.L__profc_iswprint)($1)
	ld	$1, %got_ofst(.L__profc_iswprint)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_iswprint)($2)
	lw	$1, 8($fp)
	sltiu	$1, $1, 255
	beqz	$1, .LBB28_3
	nop
# %bb.1:
	b	.LBB28_2
	nop
.LBB28_2:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswprint)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswprint)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	andi	$2, $1, 127
	addiu	$1, $zero, 32
	slt	$1, $1, $2
	sw	$1, 12($fp)
	b	.LBB28_19
	nop
.LBB28_3:
	lw	$1, 8($fp)
	sltiu	$1, $1, 8232
	bnez	$1, .LBB28_11
	nop
# %bb.4:
	b	.LBB28_5
	nop
.LBB28_5:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswprint)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswprint)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	lw	$1, 8($fp)
	addiu	$1, $1, -8234
	ori	$2, $zero, 47062
	sltu	$1, $1, $2
	bnez	$1, .LBB28_11
	nop
# %bb.6:
	b	.LBB28_7
	nop
.LBB28_7:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswprint)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswprint)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	b	.LBB28_8
	nop
.LBB28_8:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswprint)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswprint)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	lw	$1, 8($fp)
	lui	$2, 65535
	ori	$2, $2, 8192
	addu	$1, $1, $2
	sltiu	$1, $1, 8185
	bnez	$1, .LBB28_11
	nop
# %bb.9:
	b	.LBB28_10
	nop
.LBB28_10:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswprint)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswprint)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	b	.LBB28_12
	nop
.LBB28_11:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswprint)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswprint)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	addiu	$1, $zero, 1
	sw	$1, 12($fp)
	b	.LBB28_19
	nop
.LBB28_12:
	lw	$1, 8($fp)
	lui	$2, 65535
	ori	$2, $2, 4
	addu	$2, $1, $2
	lui	$1, 16
	ori	$1, $1, 3
	sltu	$1, $1, $2
	bnez	$1, .LBB28_17
	nop
# %bb.13:
	b	.LBB28_14
	nop
.LBB28_14:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswprint)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswprint)
	ld	$1, 64($2)
	daddiu	$1, $1, 1
	sd	$1, 64($2)
	lw	$1, 8($fp)
	andi	$1, $1, 65534
	ori	$2, $zero, 65534
	beq	$1, $2, .LBB28_17
	nop
# %bb.15:
	b	.LBB28_16
	nop
.LBB28_16:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswprint)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswprint)
	ld	$1, 72($2)
	daddiu	$1, $1, 1
	sd	$1, 72($2)
	b	.LBB28_18
	nop
.LBB28_17:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswprint)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswprint)
	ld	$1, 56($2)
	daddiu	$1, $1, 1
	sd	$1, 56($2)
	sw	$zero, 12($fp)
	b	.LBB28_19
	nop
.LBB28_18:
	addiu	$1, $zero, 1
	sw	$1, 12($fp)
	b	.LBB28_19
	nop
.LBB28_19:
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
	lui	$1, %hi(%neg(%gp_rel(iswxdigit)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(iswxdigit)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$2, $4
	sw	$2, 28($fp)
	ld	$2, %got_page(.L__profc_iswxdigit)($1)
	ld	$1, %got_ofst(.L__profc_iswxdigit)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_iswxdigit)($2)
	lw	$1, 28($fp)
	addiu	$1, $1, -48
	sltiu	$1, $1, 10
	addiu	$2, $zero, 1
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB29_5
	nop
# %bb.1:
	b	.LBB29_2
	nop
.LBB29_2:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_iswxdigit)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_iswxdigit)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 28($fp)
	ori	$1, $1, 32
	addiu	$1, $1, -97
	sltiu	$1, $1, 6
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	move	$2, $1
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB29_5
	nop
# %bb.3:
	b	.LBB29_4
	nop
.LBB29_4:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_iswxdigit)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_iswxdigit)
	ld	$2, 16($3)
	daddiu	$2, $2, 1
	sd	$2, 16($3)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	b	.LBB29_5
	nop
.LBB29_5:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
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
	lui	$1, %hi(%neg(%gp_rel(toascii)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(toascii)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc_toascii)($1)
	ld	$1, %got_ofst(.L__profc_toascii)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_toascii)($2)
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
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$2, %got_page(.L__profc_fdim)($1)
	ld	$1, %got_ofst(.L__profc_fdim)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_fdim)($2)
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fdim)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fdim)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fdim)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fdim)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, %got_page(.L__profc_fdim)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_fdim)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$4, 32($fp)
	sw	$5, 28($fp)
	ld	$2, %got_page(.L__profc_fdimf)($1)
	ld	$1, %got_ofst(.L__profc_fdimf)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_fdimf)($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fdimf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fdimf)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fdimf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fdimf)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, %got_page(.L__profc_fdimf)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_fdimf)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	ld	$2, %got_page(.L__profc_fmax)($1)
	ld	$1, %got_ofst(.L__profc_fmax)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_fmax)($2)
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
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmax)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmax)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmax)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmax)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmax)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmax)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	ld	$1, 40($fp)
	bgez	$1, .LBB33_11
	nop
# %bb.9:
	b	.LBB33_10
	nop
.LBB33_10:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmax)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmax)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmax)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmax)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
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
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$4, 32($fp)
	sw	$5, 28($fp)
	ld	$2, %got_page(.L__profc_fmaxf)($1)
	ld	$1, %got_ofst(.L__profc_fmaxf)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_fmaxf)($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmaxf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmaxf)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmaxf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmaxf)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmaxf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmaxf)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	lw	$1, 32($fp)
	bgez	$1, .LBB34_11
	nop
# %bb.9:
	b	.LBB34_10
	nop
.LBB34_10:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmaxf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmaxf)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmaxf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmaxf)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
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
                                        # kill: def $v0_64 killed $a3_64
                                        # kill: def $v0_64 killed $a2_64
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 88($fp)
	sd	$4, 80($fp)
	sd	$7, 72($fp)
	sd	$6, 64($fp)
	ld	$2, %got_page(.L__profc_fmaxl)($1)
	ld	$1, %got_ofst(.L__profc_fmaxl)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_fmaxl)($2)
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
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmaxl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmaxl)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmaxl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmaxl)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmaxl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmaxl)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	ld	$1, 88($fp)
	bgez	$1, .LBB35_15
	nop
# %bb.13:
	b	.LBB35_14
	nop
.LBB35_14:
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmaxl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmaxl)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmaxl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmaxl)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
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
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	ld	$2, %got_page(.L__profc_fmin)($1)
	ld	$1, %got_ofst(.L__profc_fmin)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_fmin)($2)
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
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmin)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmin)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmin)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmin)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmin)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmin)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	ld	$1, 40($fp)
	bgez	$1, .LBB36_11
	nop
# %bb.9:
	b	.LBB36_10
	nop
.LBB36_10:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmin)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmin)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fmin)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fmin)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
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
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	sw	$4, 32($fp)
	sw	$5, 28($fp)
	ld	$2, %got_page(.L__profc_fminf)($1)
	ld	$1, %got_ofst(.L__profc_fminf)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_fminf)($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fminf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fminf)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fminf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fminf)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fminf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fminf)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	lw	$1, 32($fp)
	bgez	$1, .LBB37_11
	nop
# %bb.9:
	b	.LBB37_10
	nop
.LBB37_10:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fminf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fminf)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fminf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fminf)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
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
                                        # kill: def $v0_64 killed $a3_64
                                        # kill: def $v0_64 killed $a2_64
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 88($fp)
	sd	$4, 80($fp)
	sd	$7, 72($fp)
	sd	$6, 64($fp)
	ld	$2, %got_page(.L__profc_fminl)($1)
	ld	$1, %got_ofst(.L__profc_fminl)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_fminl)($2)
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
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fminl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fminl)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fminl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fminl)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fminl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fminl)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	ld	$1, 88($fp)
	bgez	$1, .LBB38_15
	nop
# %bb.13:
	b	.LBB38_14
	nop
.LBB38_14:
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fminl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fminl)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_fminl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_fminl)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
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
	ld	$3, %got_page(.L__profc_l64a)($1)
	ld	$2, %got_ofst(.L__profc_l64a)($3)
	daddiu	$2, $2, 1
	sd	$2, %got_ofst(.L__profc_l64a)($3)
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
	ld	$2, %got_page(.L__profc_l64a)($1)
	daddiu	$3, $2, %got_ofst(.L__profc_l64a)
	ld	$2, 8($3)
	daddiu	$2, $2, 1
	sd	$2, 8($3)
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
	ld	$3, %got_page(.L__profc_srand)($2)
	ld	$1, %got_ofst(.L__profc_srand)($3)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_srand)($3)
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
	ld	$3, %got_page(.L__profc_rand)($1)
	ld	$2, %got_ofst(.L__profc_rand)($3)
	daddiu	$2, $2, 1
	sd	$2, %got_ofst(.L__profc_rand)($3)
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
	lui	$1, %hi(%neg(%gp_rel(insque)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(insque)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	ld	$2, %got_page(.L__profc_insque)($1)
	ld	$1, %got_ofst(.L__profc_insque)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_insque)($2)
	ld	$1, 40($fp)
	sd	$1, 24($fp)
	ld	$1, 32($fp)
	sd	$1, 16($fp)
	ld	$1, 16($fp)
	bnez	$1, .LBB42_3
	nop
# %bb.1:
	b	.LBB42_2
	nop
.LBB42_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_insque)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_insque)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 24($fp)
	daddiu	$2, $zero, 0
	sd	$zero, 8($1)
	ld	$1, 24($fp)
	sd	$zero, 0($1)
	b	.LBB42_6
	nop
.LBB42_3:
	ld	$1, 16($fp)
	ld	$1, 0($1)
	ld	$2, 24($fp)
	sd	$1, 0($2)
	ld	$1, 16($fp)
	ld	$2, 24($fp)
	sd	$1, 8($2)
	ld	$1, 24($fp)
	ld	$2, 16($fp)
	sd	$1, 0($2)
	ld	$1, 24($fp)
	ld	$1, 0($1)
	beqz	$1, .LBB42_6
	nop
# %bb.4:
	b	.LBB42_5
	nop
.LBB42_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_insque)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_insque)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 24($fp)
	ld	$2, 0($1)
	sd	$1, 8($2)
	b	.LBB42_6
	nop
.LBB42_6:
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
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
	lui	$1, %hi(%neg(%gp_rel(remque)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(remque)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 24($fp)
	ld	$2, %got_page(.L__profc_remque)($1)
	ld	$1, %got_ofst(.L__profc_remque)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_remque)($2)
	ld	$1, 24($fp)
	sd	$1, 16($fp)
	ld	$1, 16($fp)
	ld	$1, 0($1)
	beqz	$1, .LBB43_3
	nop
# %bb.1:
	b	.LBB43_2
	nop
.LBB43_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_remque)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_remque)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$2, 16($fp)
	ld	$1, 8($2)
	ld	$2, 0($2)
	sd	$1, 8($2)
	b	.LBB43_3
	nop
.LBB43_3:
	ld	$1, 16($fp)
	ld	$1, 8($1)
	beqz	$1, .LBB43_6
	nop
# %bb.4:
	b	.LBB43_5
	nop
.LBB43_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_remque)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_remque)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$2, 16($fp)
	ld	$1, 0($2)
	ld	$2, 8($2)
	sd	$1, 0($2)
	b	.LBB43_6
	nop
.LBB43_6:
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
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
	ld	$2, %got_page(.L__profc_lsearch)($1)
	ld	$1, %got_ofst(.L__profc_lsearch)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_lsearch)($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_lsearch)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_lsearch)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_lsearch)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_lsearch)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	lui	$1, %hi(%neg(%gp_rel(lfind)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(lfind)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 80($fp)
	sd	$5, 72($fp)
	sd	$6, 64($fp)
	sd	$7, 56($fp)
	sd	$8, 48($fp)
	ld	$2, %got_page(.L__profc_lfind)($1)
	ld	$1, %got_ofst(.L__profc_lfind)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_lfind)($2)
	ld	$1, 56($fp)
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	ld	$1, 72($fp)
	sd	$1, 40($fp)
	ld	$1, 64($fp)
	ld	$1, 0($1)
	sd	$1, 32($fp)
	daddiu	$1, $zero, 0
	sd	$zero, 24($fp)
	b	.LBB45_1
	nop
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	ld	$2, 32($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB45_8
	nop
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	b	.LBB45_3
	nop
.LBB45_3:                               #   in Loop: Header=BB45_1 Depth=1
	ld	$3, 16($fp)                     # 8-byte Folded Reload
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_lfind)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_lfind)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$25, 48($fp)
	ld	$4, 80($fp)
	ld	$1, 40($fp)
	ld	$2, 24($fp)
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
	ld	$3, 16($fp)                     # 8-byte Folded Reload
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_lfind)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_lfind)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 40($fp)
	ld	$2, 24($fp)
	dmult	$2, $3
	mflo	$2
	daddu	$1, $1, $2
	sd	$1, 88($fp)
	b	.LBB45_9
	nop
.LBB45_6:                               #   in Loop: Header=BB45_1 Depth=1
	b	.LBB45_7
	nop
.LBB45_7:                               #   in Loop: Header=BB45_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	b	.LBB45_1
	nop
.LBB45_8:
	daddiu	$1, $zero, 0
	sd	$zero, 88($fp)
	b	.LBB45_9
	nop
.LBB45_9:
	ld	$2, 88($fp)
	move	$sp, $fp
	ld	$fp, 96($sp)                    # 8-byte Folded Reload
	ld	$ra, 104($sp)                   # 8-byte Folded Reload
	daddiu	$sp, $sp, 112
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
	lui	$1, %hi(%neg(%gp_rel(abs)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(abs)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$2, $4
	sw	$2, 28($fp)
	ld	$2, %got_page(.L__profc_abs)($1)
	ld	$1, %got_ofst(.L__profc_abs)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_abs)($2)
	lw	$1, 28($fp)
	blez	$1, .LBB46_3
	nop
# %bb.1:
	b	.LBB46_2
	nop
.LBB46_2:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_abs)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_abs)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 28($fp)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB46_4
	nop
.LBB46_3:
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB46_4
	nop
.LBB46_4:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
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
	ld	$2, %got_page(.L__profc_atoi)($1)
	ld	$1, %got_ofst(.L__profc_atoi)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_atoi)($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoi)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoi)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	bne	$1, $2, .LBB47_11
	nop
# %bb.7:
	b	.LBB47_8
	nop
.LBB47_8:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoi)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoi)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	addiu	$1, $zero, 1
	sw	$1, 24($fp)
	b	.LBB47_10
	nop
.LBB47_9:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoi)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoi)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	b	.LBB47_10
	nop
.LBB47_10:
	ld	$1, 32($fp)
	daddiu	$1, $1, 1
	sd	$1, 32($fp)
	b	.LBB47_11
	nop
.LBB47_11:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoi)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoi)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	b	.LBB47_12
	nop
.LBB47_12:                              # =>This Inner Loop Header: Depth=1
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	ld	$1, 32($fp)
	lb	$4, 0($1)
	ld	$25, %call16(isdigit)($gp)
	.reloc .Ltmp12, R_MIPS_JALR, isdigit
.Ltmp12:
	jalr	$25
	nop
	beqz	$2, .LBB47_15
	nop
# %bb.13:                               #   in Loop: Header=BB47_12 Depth=1
	b	.LBB47_14
	nop
.LBB47_14:                              #   in Loop: Header=BB47_12 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoi)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoi)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
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
	b	.LBB47_12
	nop
.LBB47_15:
	lw	$1, 24($fp)
	beqz	$1, .LBB47_18
	nop
# %bb.16:
	b	.LBB47_17
	nop
.LBB47_17:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoi)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoi)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	lw	$1, 28($fp)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB47_19
	nop
.LBB47_18:
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	.LBB47_19
	nop
.LBB47_19:
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
	ld	$2, %got_page(.L__profc_atol)($1)
	ld	$1, %got_ofst(.L__profc_atol)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_atol)($2)
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
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atol)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atol)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	bne	$1, $2, .LBB48_11
	nop
# %bb.7:
	b	.LBB48_8
	nop
.LBB48_8:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atol)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atol)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	addiu	$1, $zero, 1
	sw	$1, 36($fp)
	b	.LBB48_10
	nop
.LBB48_9:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atol)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atol)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	b	.LBB48_10
	nop
.LBB48_10:
	ld	$1, 48($fp)
	daddiu	$1, $1, 1
	sd	$1, 48($fp)
	b	.LBB48_11
	nop
.LBB48_11:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atol)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atol)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	b	.LBB48_12
	nop
.LBB48_12:                              # =>This Inner Loop Header: Depth=1
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$1, 48($fp)
	lb	$4, 0($1)
	ld	$25, %call16(isdigit)($gp)
	.reloc .Ltmp14, R_MIPS_JALR, isdigit
.Ltmp14:
	jalr	$25
	nop
	beqz	$2, .LBB48_15
	nop
# %bb.13:                               #   in Loop: Header=BB48_12 Depth=1
	b	.LBB48_14
	nop
.LBB48_14:                              #   in Loop: Header=BB48_12 Depth=1
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atol)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atol)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
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
	b	.LBB48_12
	nop
.LBB48_15:
	lw	$1, 36($fp)
	beqz	$1, .LBB48_18
	nop
# %bb.16:
	b	.LBB48_17
	nop
.LBB48_17:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atol)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atol)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	ld	$1, 40($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB48_19
	nop
.LBB48_18:
	ld	$1, 40($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB48_19
	nop
.LBB48_19:
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
	ld	$2, %got_page(.L__profc_atoll)($1)
	ld	$1, %got_ofst(.L__profc_atoll)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_atoll)($2)
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
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoll)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoll)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	bne	$1, $2, .LBB49_11
	nop
# %bb.7:
	b	.LBB49_8
	nop
.LBB49_8:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoll)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoll)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	addiu	$1, $zero, 1
	sw	$1, 36($fp)
	b	.LBB49_10
	nop
.LBB49_9:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoll)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoll)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	b	.LBB49_10
	nop
.LBB49_10:
	ld	$1, 48($fp)
	daddiu	$1, $1, 1
	sd	$1, 48($fp)
	b	.LBB49_11
	nop
.LBB49_11:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoll)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoll)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	b	.LBB49_12
	nop
.LBB49_12:                              # =>This Inner Loop Header: Depth=1
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$1, 48($fp)
	lb	$4, 0($1)
	ld	$25, %call16(isdigit)($gp)
	.reloc .Ltmp16, R_MIPS_JALR, isdigit
.Ltmp16:
	jalr	$25
	nop
	beqz	$2, .LBB49_15
	nop
# %bb.13:                               #   in Loop: Header=BB49_12 Depth=1
	b	.LBB49_14
	nop
.LBB49_14:                              #   in Loop: Header=BB49_12 Depth=1
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoll)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoll)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
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
	b	.LBB49_12
	nop
.LBB49_15:
	lw	$1, 36($fp)
	beqz	$1, .LBB49_18
	nop
# %bb.16:
	b	.LBB49_17
	nop
.LBB49_17:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_atoll)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_atoll)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	ld	$1, 40($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB49_19
	nop
.LBB49_18:
	ld	$1, 40($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB49_19
	nop
.LBB49_19:
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
	lui	$1, %hi(%neg(%gp_rel(bsearch)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(bsearch)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 64($fp)
	sd	$5, 56($fp)
	sd	$6, 48($fp)
	sd	$7, 40($fp)
	sd	$8, 32($fp)
	ld	$2, %got_page(.L__profc_bsearch)($1)
	ld	$1, %got_ofst(.L__profc_bsearch)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_bsearch)($2)
	b	.LBB50_1
	nop
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 48($fp)
	beqz	$1, .LBB50_12
	nop
# %bb.2:                                #   in Loop: Header=BB50_1 Depth=1
	b	.LBB50_3
	nop
.LBB50_3:                               #   in Loop: Header=BB50_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_bsearch)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_bsearch)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 56($fp)
	ld	$2, 40($fp)
	ld	$3, 48($fp)
	dsrl	$3, $3, 1
	dmult	$2, $3
	mflo	$2
	daddu	$1, $1, $2
	sd	$1, 24($fp)
	ld	$25, 32($fp)
	ld	$4, 64($fp)
	ld	$5, 24($fp)
	jalr	$25
	nop
	sw	$2, 20($fp)
	lw	$1, 20($fp)
	bgez	$1, .LBB50_6
	nop
# %bb.4:                                #   in Loop: Header=BB50_1 Depth=1
	b	.LBB50_5
	nop
.LBB50_5:                               #   in Loop: Header=BB50_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_bsearch)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_bsearch)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 48($fp)
	dsrl	$1, $1, 1
	sd	$1, 48($fp)
	b	.LBB50_11
	nop
.LBB50_6:                               #   in Loop: Header=BB50_1 Depth=1
	lw	$1, 20($fp)
	blez	$1, .LBB50_9
	nop
# %bb.7:                                #   in Loop: Header=BB50_1 Depth=1
	b	.LBB50_8
	nop
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_bsearch)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_bsearch)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	ld	$1, 24($fp)
	ld	$2, 40($fp)
	daddu	$1, $1, $2
	sd	$1, 56($fp)
	ld	$2, 48($fp)
	dsrl	$1, $2, 1
	daddiu	$3, $zero, -1
	xor	$1, $1, $3
	daddu	$1, $1, $2
	sd	$1, 48($fp)
	b	.LBB50_10
	nop
.LBB50_9:
	ld	$1, 24($fp)
	sd	$1, 72($fp)
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
	sd	$zero, 72($fp)
	b	.LBB50_13
	nop
.LBB50_13:
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
	lui	$1, %hi(%neg(%gp_rel(bsearch_r)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(bsearch_r)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 80($fp)
	sd	$5, 72($fp)
	sd	$6, 64($fp)
	sd	$7, 56($fp)
	sd	$8, 48($fp)
	sd	$9, 40($fp)
	ld	$2, %got_page(.L__profc_bsearch_r)($1)
	ld	$1, %got_ofst(.L__profc_bsearch_r)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_bsearch_r)($2)
	ld	$1, 72($fp)
	sd	$1, 32($fp)
	ld	$1, 64($fp)
	sw	$1, 28($fp)
	b	.LBB51_1
	nop
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	beqz	$1, .LBB51_11
	nop
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
	b	.LBB51_3
	nop
.LBB51_3:                               #   in Loop: Header=BB51_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_bsearch_r)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_bsearch_r)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 32($fp)
	lw	$2, 28($fp)
	sra	$3, $2, 1
                                        # implicit-def: $v0_64
	move	$2, $3
	ld	$3, 56($fp)
	dmult	$2, $3
	mflo	$2
	daddu	$1, $1, $2
	sd	$1, 16($fp)
	ld	$25, 48($fp)
	ld	$4, 80($fp)
	ld	$5, 16($fp)
	ld	$6, 40($fp)
	jalr	$25
	nop
	sw	$2, 24($fp)
	lw	$1, 24($fp)
	bnez	$1, .LBB51_6
	nop
# %bb.4:
	b	.LBB51_5
	nop
.LBB51_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_bsearch_r)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_bsearch_r)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 16($fp)
	sd	$1, 88($fp)
	b	.LBB51_12
	nop
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	lw	$1, 24($fp)
	blez	$1, .LBB51_9
	nop
# %bb.7:                                #   in Loop: Header=BB51_1 Depth=1
	b	.LBB51_8
	nop
.LBB51_8:                               #   in Loop: Header=BB51_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_bsearch_r)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_bsearch_r)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	ld	$1, 16($fp)
	ld	$2, 56($fp)
	daddu	$1, $1, $2
	sd	$1, 32($fp)
	lw	$1, 28($fp)
	addiu	$1, $1, -1
	sw	$1, 28($fp)
	b	.LBB51_9
	nop
.LBB51_9:                               #   in Loop: Header=BB51_1 Depth=1
	b	.LBB51_10
	nop
.LBB51_10:                              #   in Loop: Header=BB51_1 Depth=1
	lw	$1, 28($fp)
	sra	$1, $1, 1
	sw	$1, 28($fp)
	b	.LBB51_1
	nop
.LBB51_11:
	daddiu	$1, $zero, 0
	sd	$zero, 88($fp)
	b	.LBB51_12
	nop
.LBB51_12:
	ld	$2, 88($fp)
	move	$sp, $fp
	ld	$fp, 96($sp)                    # 8-byte Folded Reload
	ld	$ra, 104($sp)                   # 8-byte Folded Reload
	daddiu	$sp, $sp, 112
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
	lui	$1, %hi(%neg(%gp_rel(div)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(div)))
	move	$2, $5
	move	$3, $4
	sw	$3, 4($fp)
	sw	$2, 0($fp)
	ld	$2, %got_page(.L__profc_div)($1)
	ld	$1, %got_ofst(.L__profc_div)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_div)($2)
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
	lui	$1, %hi(%neg(%gp_rel(imaxabs)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(imaxabs)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	sd	$4, 24($fp)
	ld	$2, %got_page(.L__profc_imaxabs)($1)
	ld	$1, %got_ofst(.L__profc_imaxabs)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_imaxabs)($2)
	ld	$1, 24($fp)
	blez	$1, .LBB53_3
	nop
# %bb.1:
	b	.LBB53_2
	nop
.LBB53_2:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_imaxabs)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_imaxabs)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 24($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB53_4
	nop
.LBB53_3:
	ld	$1, 24($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB53_4
	nop
.LBB53_4:
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
	lui	$1, %hi(%neg(%gp_rel(imaxdiv)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(imaxdiv)))
	sd	$4, 8($fp)
	sd	$5, 0($fp)
	ld	$2, %got_page(.L__profc_imaxdiv)($1)
	ld	$1, %got_ofst(.L__profc_imaxdiv)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_imaxdiv)($2)
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
	lui	$1, %hi(%neg(%gp_rel(labs)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(labs)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	sd	$4, 24($fp)
	ld	$2, %got_page(.L__profc_labs)($1)
	ld	$1, %got_ofst(.L__profc_labs)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_labs)($2)
	ld	$1, 24($fp)
	blez	$1, .LBB55_3
	nop
# %bb.1:
	b	.LBB55_2
	nop
.LBB55_2:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_labs)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_labs)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 24($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB55_4
	nop
.LBB55_3:
	ld	$1, 24($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB55_4
	nop
.LBB55_4:
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
	lui	$1, %hi(%neg(%gp_rel(ldiv)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(ldiv)))
	sd	$4, 8($fp)
	sd	$5, 0($fp)
	ld	$2, %got_page(.L__profc_ldiv)($1)
	ld	$1, %got_ofst(.L__profc_ldiv)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_ldiv)($2)
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
	lui	$1, %hi(%neg(%gp_rel(llabs)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(llabs)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	sd	$4, 24($fp)
	ld	$2, %got_page(.L__profc_llabs)($1)
	ld	$1, %got_ofst(.L__profc_llabs)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_llabs)($2)
	ld	$1, 24($fp)
	blez	$1, .LBB57_3
	nop
# %bb.1:
	b	.LBB57_2
	nop
.LBB57_2:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_llabs)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_llabs)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 24($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB57_4
	nop
.LBB57_3:
	ld	$1, 24($fp)
	daddiu	$2, $zero, 0
	dnegu	$1, $1
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB57_4
	nop
.LBB57_4:
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
	lui	$1, %hi(%neg(%gp_rel(lldiv)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(lldiv)))
	sd	$4, 8($fp)
	sd	$5, 0($fp)
	ld	$2, %got_page(.L__profc_lldiv)($1)
	ld	$1, %got_ofst(.L__profc_lldiv)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_lldiv)($2)
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
	lui	$1, %hi(%neg(%gp_rel(wcschr)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(wcschr)))
	sd	$1, 24($fp)                     # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 40($fp)
	sw	$2, 36($fp)
	ld	$2, %got_page(.L__profc_wcschr)($1)
	ld	$1, %got_ofst(.L__profc_wcschr)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_wcschr)($2)
	b	.LBB59_1
	nop
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 40($fp)
	lw	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB59_6
	nop
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	b	.LBB59_3
	nop
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcschr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcschr)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 40($fp)
	lw	$1, 0($1)
	lw	$2, 36($fp)
	xor	$3, $1, $2
	sltu	$3, $zero, $3
	sw	$3, 16($fp)                     # 4-byte Folded Spill
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	beq	$1, $2, .LBB59_6
	nop
# %bb.4:                                #   in Loop: Header=BB59_1 Depth=1
	b	.LBB59_5
	nop
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	ld	$2, 24($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_wcschr)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_wcschr)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	b	.LBB59_6
	nop
.LBB59_6:                               #   in Loop: Header=BB59_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB59_10
	nop
# %bb.7:                                #   in Loop: Header=BB59_1 Depth=1
	b	.LBB59_8
	nop
.LBB59_8:                               #   in Loop: Header=BB59_1 Depth=1
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcschr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcschr)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB59_9
	nop
.LBB59_9:                               #   in Loop: Header=BB59_1 Depth=1
	ld	$1, 40($fp)
	daddiu	$1, $1, 4
	sd	$1, 40($fp)
	b	.LBB59_1
	nop
.LBB59_10:
	ld	$1, 40($fp)
	lw	$1, 0($1)
	beqz	$1, .LBB59_13
	nop
# %bb.11:
	b	.LBB59_12
	nop
.LBB59_12:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcschr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcschr)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 40($fp)
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB59_14
	nop
.LBB59_13:
	daddiu	$1, $zero, 0
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	b	.LBB59_14
	nop
.LBB59_14:
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
	lui	$1, %hi(%neg(%gp_rel(wcscmp)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(wcscmp)))
	sd	$1, 24($fp)                     # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	ld	$2, %got_page(.L__profc_wcscmp)($1)
	ld	$1, %got_ofst(.L__profc_wcscmp)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_wcscmp)($2)
	b	.LBB60_1
	nop
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 40($fp)
	lw	$1, 0($1)
	ld	$2, 32($fp)
	lw	$2, 0($2)
	addiu	$3, $zero, 0
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	bne	$1, $2, .LBB60_9
	nop
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	b	.LBB60_3
	nop
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcscmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcscmp)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 40($fp)
	lw	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB60_9
	nop
# %bb.4:                                #   in Loop: Header=BB60_1 Depth=1
	b	.LBB60_5
	nop
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcscmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcscmp)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	b	.LBB60_6
	nop
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcscmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcscmp)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 32($fp)
	lw	$1, 0($1)
	sltu	$2, $zero, $1
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB60_9
	nop
# %bb.7:                                #   in Loop: Header=BB60_1 Depth=1
	b	.LBB60_8
	nop
.LBB60_8:                               #   in Loop: Header=BB60_1 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	ld	$2, 24($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_wcscmp)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_wcscmp)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	b	.LBB60_9
	nop
.LBB60_9:                               #   in Loop: Header=BB60_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB60_13
	nop
# %bb.10:                               #   in Loop: Header=BB60_1 Depth=1
	b	.LBB60_11
	nop
.LBB60_11:                              #   in Loop: Header=BB60_1 Depth=1
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcscmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcscmp)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB60_12
	nop
.LBB60_12:                              #   in Loop: Header=BB60_1 Depth=1
	ld	$1, 40($fp)
	daddiu	$1, $1, 4
	sd	$1, 40($fp)
	ld	$1, 32($fp)
	daddiu	$1, $1, 4
	sd	$1, 32($fp)
	b	.LBB60_1
	nop
.LBB60_13:
	ld	$1, 40($fp)
	lw	$1, 0($1)
	ld	$2, 32($fp)
	lw	$2, 0($2)
	slt	$1, $1, $2
	beqz	$1, .LBB60_16
	nop
# %bb.14:
	b	.LBB60_15
	nop
.LBB60_15:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcscmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcscmp)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	addiu	$1, $zero, -1
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB60_17
	nop
.LBB60_16:
	ld	$1, 40($fp)
	lw	$2, 0($1)
	ld	$1, 32($fp)
	lw	$1, 0($1)
	slt	$1, $1, $2
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB60_17
	nop
.LBB60_17:
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
	lui	$1, %hi(%neg(%gp_rel(wcscpy)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(wcscpy)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$2, %got_page(.L__profc_wcscpy)($1)
	ld	$1, %got_ofst(.L__profc_wcscpy)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_wcscpy)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcscpy)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcscpy)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	lui	$1, %hi(%neg(%gp_rel(wcslen)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(wcslen)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 24($fp)
	ld	$2, %got_page(.L__profc_wcslen)($1)
	ld	$1, %got_ofst(.L__profc_wcslen)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_wcslen)($2)
	ld	$1, 24($fp)
	sd	$1, 16($fp)
	b	.LBB62_1
	nop
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	lw	$1, 0($1)
	beqz	$1, .LBB62_5
	nop
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	b	.LBB62_3
	nop
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcslen)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcslen)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB62_4
	nop
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 4
	sd	$1, 24($fp)
	b	.LBB62_1
	nop
.LBB62_5:
	ld	$1, 24($fp)
	ld	$2, 16($fp)
	dsubu	$1, $1, $2
	dsra	$2, $1, 2
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
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
	lui	$1, %hi(%neg(%gp_rel(wcsncmp)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(wcsncmp)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_wcsncmp)($1)
	ld	$1, %got_ofst(.L__profc_wcsncmp)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_wcsncmp)($2)
	b	.LBB63_1
	nop
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB63_12
	nop
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_3
	nop
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcsncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcsncmp)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	ld	$1, 40($fp)
	lw	$1, 0($1)
	ld	$2, 32($fp)
	lw	$2, 0($2)
	addiu	$3, $zero, 0
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	bne	$1, $2, .LBB63_12
	nop
# %bb.4:                                #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_5
	nop
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcsncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcsncmp)
	ld	$1, 56($2)
	daddiu	$1, $1, 1
	sd	$1, 56($2)
	b	.LBB63_6
	nop
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcsncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcsncmp)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 40($fp)
	lw	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB63_12
	nop
# %bb.7:                                #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_8
	nop
.LBB63_8:                               #   in Loop: Header=BB63_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcsncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcsncmp)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	b	.LBB63_9
	nop
.LBB63_9:                               #   in Loop: Header=BB63_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcsncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcsncmp)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 32($fp)
	lw	$1, 0($1)
	sltu	$2, $zero, $1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB63_12
	nop
# %bb.10:                               #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_11
	nop
.LBB63_11:                              #   in Loop: Header=BB63_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_wcsncmp)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_wcsncmp)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB63_12
	nop
.LBB63_12:                              #   in Loop: Header=BB63_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB63_16
	nop
# %bb.13:                               #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_14
	nop
.LBB63_14:                              #   in Loop: Header=BB63_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcsncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcsncmp)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB63_15
	nop
.LBB63_15:                              #   in Loop: Header=BB63_1 Depth=1
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
.LBB63_16:
	ld	$1, 24($fp)
	beqz	$1, .LBB63_23
	nop
# %bb.17:
	b	.LBB63_18
	nop
.LBB63_18:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcsncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcsncmp)
	ld	$1, 64($2)
	daddiu	$1, $1, 1
	sd	$1, 64($2)
	ld	$1, 40($fp)
	lw	$1, 0($1)
	ld	$2, 32($fp)
	lw	$2, 0($2)
	slt	$1, $1, $2
	beqz	$1, .LBB63_21
	nop
# %bb.19:
	b	.LBB63_20
	nop
.LBB63_20:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wcsncmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wcsncmp)
	ld	$1, 72($2)
	daddiu	$1, $1, 1
	sd	$1, 72($2)
	addiu	$1, $zero, -1
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB63_22
	nop
.LBB63_21:
	ld	$1, 40($fp)
	lw	$2, 0($1)
	ld	$1, 32($fp)
	lw	$1, 0($1)
	slt	$1, $1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB63_22
	nop
.LBB63_22:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	.LBB63_24
	nop
.LBB63_23:
	addiu	$1, $zero, 0
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	.LBB63_24
	nop
.LBB63_24:
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
	lui	$1, %hi(%neg(%gp_rel(wmemchr)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(wmemchr)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 40($fp)
	sw	$2, 36($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_wmemchr)($1)
	ld	$1, %got_ofst(.L__profc_wmemchr)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_wmemchr)($2)
	b	.LBB64_1
	nop
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB64_6
	nop
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	b	.LBB64_3
	nop
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemchr)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 40($fp)
	lw	$1, 0($1)
	lw	$2, 36($fp)
	xor	$3, $1, $2
	sltu	$3, $zero, $3
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	beq	$1, $2, .LBB64_6
	nop
# %bb.4:                                #   in Loop: Header=BB64_1 Depth=1
	b	.LBB64_5
	nop
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_wmemchr)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_wmemchr)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB64_6
	nop
.LBB64_6:                               #   in Loop: Header=BB64_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB64_10
	nop
# %bb.7:                                #   in Loop: Header=BB64_1 Depth=1
	b	.LBB64_8
	nop
.LBB64_8:                               #   in Loop: Header=BB64_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemchr)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB64_9
	nop
.LBB64_9:                               #   in Loop: Header=BB64_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, -1
	sd	$1, 24($fp)
	ld	$1, 40($fp)
	daddiu	$1, $1, 4
	sd	$1, 40($fp)
	b	.LBB64_1
	nop
.LBB64_10:
	ld	$1, 24($fp)
	beqz	$1, .LBB64_13
	nop
# %bb.11:
	b	.LBB64_12
	nop
.LBB64_12:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemchr)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 40($fp)
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB64_14
	nop
.LBB64_13:
	daddiu	$1, $zero, 0
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	b	.LBB64_14
	nop
.LBB64_14:
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
	lui	$1, %hi(%neg(%gp_rel(wmemcmp)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(wmemcmp)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_wmemcmp)($1)
	ld	$1, %got_ofst(.L__profc_wmemcmp)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_wmemcmp)($2)
	b	.LBB65_1
	nop
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB65_6
	nop
# %bb.2:                                #   in Loop: Header=BB65_1 Depth=1
	b	.LBB65_3
	nop
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemcmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemcmp)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 40($fp)
	lw	$1, 0($1)
	ld	$2, 32($fp)
	lw	$2, 0($2)
	xor	$3, $1, $2
	sltiu	$3, $3, 1
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	bne	$1, $2, .LBB65_6
	nop
# %bb.4:                                #   in Loop: Header=BB65_1 Depth=1
	b	.LBB65_5
	nop
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_wmemcmp)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_wmemcmp)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB65_6
	nop
.LBB65_6:                               #   in Loop: Header=BB65_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB65_10
	nop
# %bb.7:                                #   in Loop: Header=BB65_1 Depth=1
	b	.LBB65_8
	nop
.LBB65_8:                               #   in Loop: Header=BB65_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemcmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemcmp)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB65_9
	nop
.LBB65_9:                               #   in Loop: Header=BB65_1 Depth=1
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
.LBB65_10:
	ld	$1, 24($fp)
	beqz	$1, .LBB65_17
	nop
# %bb.11:
	b	.LBB65_12
	nop
.LBB65_12:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemcmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemcmp)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 40($fp)
	lw	$1, 0($1)
	ld	$2, 32($fp)
	lw	$2, 0($2)
	slt	$1, $1, $2
	beqz	$1, .LBB65_15
	nop
# %bb.13:
	b	.LBB65_14
	nop
.LBB65_14:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemcmp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemcmp)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	addiu	$1, $zero, -1
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB65_16
	nop
.LBB65_15:
	ld	$1, 40($fp)
	lw	$2, 0($1)
	ld	$1, 32($fp)
	lw	$1, 0($1)
	slt	$1, $1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB65_16
	nop
.LBB65_16:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	.LBB65_18
	nop
.LBB65_17:
	addiu	$1, $zero, 0
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	.LBB65_18
	nop
.LBB65_18:
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
	lui	$1, %hi(%neg(%gp_rel(wmemcpy)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(wmemcpy)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_wmemcpy)($1)
	ld	$1, %got_ofst(.L__profc_wmemcpy)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_wmemcpy)($2)
	ld	$1, 40($fp)
	sd	$1, 16($fp)
	b	.LBB66_1
	nop
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	daddiu	$2, $1, -1
	sd	$2, 24($fp)
	beqz	$1, .LBB66_4
	nop
# %bb.2:                                #   in Loop: Header=BB66_1 Depth=1
	b	.LBB66_3
	nop
.LBB66_3:                               #   in Loop: Header=BB66_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemcpy)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemcpy)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 32($fp)
	daddiu	$2, $1, 4
	sd	$2, 32($fp)
	lw	$1, 0($1)
	ld	$2, 40($fp)
	daddiu	$3, $2, 4
	sd	$3, 40($fp)
	sw	$1, 0($2)
	b	.LBB66_1
	nop
.LBB66_4:
	ld	$2, 16($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
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
	lui	$1, %hi(%neg(%gp_rel(wmemmove)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(wmemmove)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	sd	$6, 16($fp)
	ld	$2, %got_page(.L__profc_wmemmove)($1)
	ld	$1, %got_ofst(.L__profc_wmemmove)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_wmemmove)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemmove)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemmove)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemmove)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemmove)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemmove)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemmove)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemmove)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemmove)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	lui	$1, %hi(%neg(%gp_rel(wmemset)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(wmemset)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 40($fp)
	sw	$2, 36($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_wmemset)($1)
	ld	$1, %got_ofst(.L__profc_wmemset)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_wmemset)($2)
	ld	$1, 40($fp)
	sd	$1, 16($fp)
	b	.LBB68_1
	nop
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	daddiu	$2, $1, -1
	sd	$2, 24($fp)
	beqz	$1, .LBB68_4
	nop
# %bb.2:                                #   in Loop: Header=BB68_1 Depth=1
	b	.LBB68_3
	nop
.LBB68_3:                               #   in Loop: Header=BB68_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_wmemset)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_wmemset)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 36($fp)
	ld	$2, 40($fp)
	daddiu	$3, $2, 4
	sd	$3, 40($fp)
	sw	$1, 0($2)
	b	.LBB68_1
	nop
.LBB68_4:
	ld	$2, 16($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
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
	lui	$1, %hi(%neg(%gp_rel(bcopy)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(bcopy)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_bcopy)($1)
	ld	$1, %got_ofst(.L__profc_bcopy)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_bcopy)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_bcopy)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_bcopy)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_bcopy)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_bcopy)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_bcopy)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_bcopy)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_bcopy)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_bcopy)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	lui	$1, %hi(%neg(%gp_rel(rotl64)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(rotl64)))
	move	$2, $5
	sd	$4, 8($fp)
	sw	$2, 4($fp)
	ld	$2, %got_page(.L__profc_rotl64)($1)
	ld	$1, %got_ofst(.L__profc_rotl64)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_rotl64)($2)
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
	lui	$1, %hi(%neg(%gp_rel(rotr64)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(rotr64)))
	move	$2, $5
	sd	$4, 8($fp)
	sw	$2, 4($fp)
	ld	$2, %got_page(.L__profc_rotr64)($1)
	ld	$1, %got_ofst(.L__profc_rotr64)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_rotr64)($2)
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
	lui	$1, %hi(%neg(%gp_rel(rotl32)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(rotl32)))
	move	$2, $5
	move	$3, $4
	sw	$3, 12($fp)
	sw	$2, 8($fp)
	ld	$2, %got_page(.L__profc_rotl32)($1)
	ld	$1, %got_ofst(.L__profc_rotl32)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_rotl32)($2)
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
	lui	$1, %hi(%neg(%gp_rel(rotr32)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(rotr32)))
	move	$2, $5
	move	$3, $4
	sw	$3, 12($fp)
	sw	$2, 8($fp)
	ld	$2, %got_page(.L__profc_rotr32)($1)
	ld	$1, %got_ofst(.L__profc_rotr32)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_rotr32)($2)
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
	lui	$1, %hi(%neg(%gp_rel(rotl_sz)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(rotl_sz)))
	move	$2, $5
	sd	$4, 8($fp)
	sw	$2, 4($fp)
	ld	$2, %got_page(.L__profc_rotl_sz)($1)
	ld	$1, %got_ofst(.L__profc_rotl_sz)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_rotl_sz)($2)
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
	lui	$1, %hi(%neg(%gp_rel(rotr_sz)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(rotr_sz)))
	move	$2, $5
	sd	$4, 8($fp)
	sw	$2, 4($fp)
	ld	$2, %got_page(.L__profc_rotr_sz)($1)
	ld	$1, %got_ofst(.L__profc_rotr_sz)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_rotr_sz)($2)
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
	lui	$1, %hi(%neg(%gp_rel(rotl16)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(rotl16)))
	move	$2, $5
	move	$3, $4
	sh	$3, 14($fp)
	sw	$2, 8($fp)
	ld	$2, %got_page(.L__profc_rotl16)($1)
	ld	$1, %got_ofst(.L__profc_rotl16)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_rotl16)($2)
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
	lui	$1, %hi(%neg(%gp_rel(rotr16)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(rotr16)))
	move	$2, $5
	move	$3, $4
	sh	$3, 14($fp)
	sw	$2, 8($fp)
	ld	$2, %got_page(.L__profc_rotr16)($1)
	ld	$1, %got_ofst(.L__profc_rotr16)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_rotr16)($2)
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
	lui	$1, %hi(%neg(%gp_rel(rotl8)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(rotl8)))
	move	$2, $5
	move	$3, $4
	sb	$3, 15($fp)
	sw	$2, 8($fp)
	ld	$2, %got_page(.L__profc_rotl8)($1)
	ld	$1, %got_ofst(.L__profc_rotl8)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_rotl8)($2)
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
	lui	$1, %hi(%neg(%gp_rel(rotr8)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(rotr8)))
	move	$2, $5
	move	$3, $4
	sb	$3, 15($fp)
	sw	$2, 8($fp)
	ld	$2, %got_page(.L__profc_rotr8)($1)
	ld	$1, %got_ofst(.L__profc_rotr8)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_rotr8)($2)
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
	lui	$1, %hi(%neg(%gp_rel(bswap_16)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(bswap_16)))
	move	$2, $4
	sh	$2, 14($fp)
	ld	$2, %got_page(.L__profc_bswap_16)($1)
	ld	$1, %got_ofst(.L__profc_bswap_16)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_bswap_16)($2)
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
	lui	$1, %hi(%neg(%gp_rel(bswap_32)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(bswap_32)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc_bswap_32)($1)
	ld	$1, %got_ofst(.L__profc_bswap_32)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_bswap_32)($2)
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
	lui	$1, %hi(%neg(%gp_rel(bswap_64)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(bswap_64)))
	sd	$4, 8($fp)
	ld	$2, %got_page(.L__profc_bswap_64)($1)
	ld	$1, %got_ofst(.L__profc_bswap_64)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_bswap_64)($2)
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
	lui	$1, %hi(%neg(%gp_rel(ffs)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(ffs)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $4
	sw	$2, 24($fp)
	ld	$2, %got_page(.L__profc_ffs)($1)
	ld	$1, %got_ofst(.L__profc_ffs)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_ffs)($2)
	sw	$zero, 20($fp)
	b	.LBB83_1
	nop
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	sltiu	$1, $1, 32
	beqz	$1, .LBB83_8
	nop
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	b	.LBB83_3
	nop
.LBB83_3:                               #   in Loop: Header=BB83_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ffs)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_ffs)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, .LBB83_6
	nop
# %bb.4:
	b	.LBB83_5
	nop
.LBB83_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ffs)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_ffs)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 28($fp)
	b	.LBB83_9
	nop
.LBB83_6:                               #   in Loop: Header=BB83_1 Depth=1
	b	.LBB83_7
	nop
.LBB83_7:                               #   in Loop: Header=BB83_1 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	b	.LBB83_1
	nop
.LBB83_8:
	sw	$zero, 28($fp)
	b	.LBB83_9
	nop
.LBB83_9:
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
	lui	$1, %hi(%neg(%gp_rel(libiberty_ffs)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(libiberty_ffs)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $4
	sw	$2, 24($fp)
	ld	$2, %got_page(.L__profc_libiberty_ffs)($1)
	ld	$1, %got_ofst(.L__profc_libiberty_ffs)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_libiberty_ffs)($2)
	lw	$1, 24($fp)
	bnez	$1, .LBB84_3
	nop
# %bb.1:
	b	.LBB84_2
	nop
.LBB84_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_libiberty_ffs)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_libiberty_ffs)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	sw	$zero, 28($fp)
	b	.LBB84_9
	nop
.LBB84_3:
	addiu	$1, $zero, 1
	sw	$1, 20($fp)
	b	.LBB84_4
	nop
.LBB84_4:                               # =>This Inner Loop Header: Depth=1
	lbu	$1, 24($fp)
	andi	$1, $1, 1
	bnez	$1, .LBB84_8
	nop
# %bb.5:                                #   in Loop: Header=BB84_4 Depth=1
	b	.LBB84_6
	nop
.LBB84_6:                               #   in Loop: Header=BB84_4 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_libiberty_ffs)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_libiberty_ffs)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	lw	$1, 24($fp)
	sra	$1, $1, 1
	sw	$1, 24($fp)
	b	.LBB84_7
	nop
.LBB84_7:                               #   in Loop: Header=BB84_4 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	b	.LBB84_4
	nop
.LBB84_8:
	lw	$1, 20($fp)
	sw	$1, 28($fp)
	b	.LBB84_9
	nop
.LBB84_9:
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
	ld	$2, %got_page(.L__profc_gl_isinff)($gp)
	ld	$1, %got_ofst(.L__profc_gl_isinff)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_gl_isinff)($2)
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
	bltz	$2, .LBB85_5
	nop
# %bb.1:
	b	.LBB85_2
	nop
.LBB85_2:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_gl_isinff)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_gl_isinff)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	bgtz	$2, .LBB85_5
	nop
# %bb.3:
	b	.LBB85_4
	nop
.LBB85_4:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_gl_isinff)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_gl_isinff)
	ld	$2, 16($3)
	daddiu	$2, $2, 1
	sd	$2, 16($3)
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	b	.LBB85_5
	nop
.LBB85_5:
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
	lui	$1, %hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(gl_isinfd)))
	sd	$gp, 16($fp)                    # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a0_64
	sd	$4, 32($fp)
	ld	$2, %got_page(.L__profc_gl_isinfd)($gp)
	ld	$1, %got_ofst(.L__profc_gl_isinfd)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_gl_isinfd)($2)
	ld	$4, 32($fp)
	ld	$25, %call16(__ltdf2)($gp)
	daddiu	$1, $zero, 4095
	dsll	$1, $1, 52
	daddiu	$5, $1, -1
	.reloc .Ltmp19, R_MIPS_JALR, __ltdf2
.Ltmp19:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	bltz	$2, .LBB86_5
	nop
# %bb.1:
	b	.LBB86_2
	nop
.LBB86_2:
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_gl_isinfd)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_gl_isinfd)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$4, 32($fp)
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
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	bgtz	$2, .LBB86_5
	nop
# %bb.3:
	b	.LBB86_4
	nop
.LBB86_4:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_gl_isinfd)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_gl_isinfd)
	ld	$2, 16($3)
	daddiu	$2, $2, 1
	sd	$2, 16($3)
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	b	.LBB86_5
	nop
.LBB86_5:
	lw	$2, 28($fp)                     # 4-byte Folded Reload
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
	lui	$1, %hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$1, $1, $25
	daddiu	$gp, $1, %lo(%neg(%gp_rel(gl_isinfl)))
	sd	$gp, 16($fp)                    # 8-byte Folded Spill
                                        # kill: def $at_64 killed $a1_64
                                        # kill: def $at_64 killed $a0_64
	sd	$5, 40($fp)
	sd	$4, 32($fp)
	ld	$2, %got_page(.L__profc_gl_isinfl)($gp)
	ld	$1, %got_ofst(.L__profc_gl_isinfl)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_gl_isinfl)($2)
	ld	$4, 32($fp)
	ld	$5, 40($fp)
	ld	$25, %call16(__lttf2)($gp)
	daddiu	$6, $zero, -1
	dsll	$1, $6, 48
	daddiu	$7, $1, -1
	.reloc .Ltmp21, R_MIPS_JALR, __lttf2
.Ltmp21:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	bltz	$2, .LBB87_5
	nop
# %bb.1:
	b	.LBB87_2
	nop
.LBB87_2:
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_gl_isinfl)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_gl_isinfl)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$4, 32($fp)
	ld	$5, 40($fp)
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
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	bgtz	$2, .LBB87_5
	nop
# %bb.3:
	b	.LBB87_4
	nop
.LBB87_4:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_gl_isinfl)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_gl_isinfl)
	ld	$2, 16($3)
	daddiu	$2, $2, 1
	sd	$2, 16($3)
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	b	.LBB87_5
	nop
.LBB87_5:
	lw	$2, 28($fp)                     # 4-byte Folded Reload
                                        # implicit-def: $at_64
	move	$1, $2
	andi	$2, $1, 1
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
	ld	$2, %got_page(.L__profc__Qp_itoq)($gp)
	ld	$1, %got_ofst(.L__profc__Qp_itoq)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc__Qp_itoq)($2)
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
	move	$2, $5
                                        # kill: def $v1 killed $a0
	sw	$4, 36($fp)
	sw	$2, 32($fp)
	ld	$2, %got_page(.L__profc_ldexpf)($1)
	ld	$1, %got_ofst(.L__profc_ldexpf)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_ldexpf)($2)
	lw	$1, 36($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$2, $1, $2
	lui	$1, 32640
	slt	$1, $1, $2
	bnez	$1, .LBB89_16
	nop
# %bb.1:
	b	.LBB89_2
	nop
.LBB89_2:
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpf)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexpf)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	beqz	$2, .LBB89_16
	nop
# %bb.3:
	b	.LBB89_4
	nop
.LBB89_4:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexpf)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	b	.LBB89_5
	nop
.LBB89_5:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpf)($1)
	daddiu	$3, $1, %got_ofst(.L__profc_ldexpf)
	ld	$1, 8($3)
	daddiu	$1, $1, 1
	sd	$1, 8($3)
	lw	$2, 32($fp)
	slti	$1, $2, 0
	srl	$2, $2, 31
	dsll	$2, $2, 32
	dsrl	$4, $2, 32
	ld	$2, 32($3)
	daddu	$2, $2, $4
	sd	$2, 32($3)
	lui	$2, 16384
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	lui	$2, 16128
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	bnez	$1, .LBB89_7
	nop
# %bb.6:
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	sw	$1, 4($fp)                      # 4-byte Folded Spill
.LBB89_7:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	sw	$1, 28($fp)
	b	.LBB89_8
	nop
.LBB89_8:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexpf)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	lw	$1, 32($fp)
	srl	$2, $1, 31
	addu	$2, $1, $2
	addiu	$3, $zero, -2
	and	$2, $2, $3
	subu	$1, $1, $2
	beqz	$1, .LBB89_11
	nop
# %bb.9:                                #   in Loop: Header=BB89_8 Depth=1
	b	.LBB89_10
	nop
.LBB89_10:                              #   in Loop: Header=BB89_8 Depth=1
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpf)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexpf)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	lw	$5, 28($fp)
	lw	$4, 36($fp)
	ld	$25, %call16(__mulsf3)($gp)
	.reloc .Ltmp27, R_MIPS_JALR, __mulsf3
.Ltmp27:
	jalr	$25
	nop
	sw	$2, 36($fp)
	b	.LBB89_11
	nop
.LBB89_11:                              #   in Loop: Header=BB89_8 Depth=1
	lw	$1, 32($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 32($fp)
	lw	$1, 32($fp)
	bnez	$1, .LBB89_14
	nop
# %bb.12:
	b	.LBB89_13
	nop
.LBB89_13:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexpf)
	ld	$1, 56($2)
	daddiu	$1, $1, 1
	sd	$1, 56($2)
	b	.LBB89_15
	nop
.LBB89_14:                              #   in Loop: Header=BB89_8 Depth=1
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	lw	$5, 28($fp)
	ld	$25, %call16(__mulsf3)($gp)
	move	$4, $5
	.reloc .Ltmp28, R_MIPS_JALR, __mulsf3
.Ltmp28:
	jalr	$25
	nop
	sw	$2, 28($fp)
	b	.LBB89_8
	nop
.LBB89_15:
	b	.LBB89_16
	nop
.LBB89_16:
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
	move	$2, $5
                                        # kill: def $v1_64 killed $a0_64
	sd	$4, 48($fp)
	sw	$2, 44($fp)
	ld	$2, %got_page(.L__profc_ldexp)($1)
	ld	$1, %got_ofst(.L__profc_ldexp)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_ldexp)($2)
	ld	$1, 48($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	daddiu	$2, $2, -1
	and	$2, $1, $2
	daddiu	$1, $zero, 2047
	dsll	$1, $1, 52
	slt	$1, $1, $2
	bnez	$1, .LBB90_16
	nop
# %bb.1:
	b	.LBB90_2
	nop
.LBB90_2:
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexp)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexp)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	beqz	$2, .LBB90_16
	nop
# %bb.3:
	b	.LBB90_4
	nop
.LBB90_4:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexp)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	b	.LBB90_5
	nop
.LBB90_5:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexp)($1)
	daddiu	$3, $1, %got_ofst(.L__profc_ldexp)
	ld	$1, 8($3)
	daddiu	$1, $1, 1
	sd	$1, 8($3)
	lw	$2, 44($fp)
	slti	$1, $2, 0
	srl	$2, $2, 31
	dsll	$2, $2, 32
	dsrl	$4, $2, 32
	ld	$2, 32($3)
	daddu	$2, $2, $4
	sd	$2, 32($3)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 62
	sd	$2, 0($fp)                      # 8-byte Folded Spill
	daddiu	$2, $zero, 511
	dsll	$2, $2, 53
	sd	$2, 8($fp)                      # 8-byte Folded Spill
	bnez	$1, .LBB90_7
	nop
# %bb.6:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	sd	$1, 8($fp)                      # 8-byte Folded Spill
.LBB90_7:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	sd	$1, 32($fp)
	b	.LBB90_8
	nop
.LBB90_8:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexp)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	lw	$1, 44($fp)
	srl	$2, $1, 31
	addu	$2, $1, $2
	addiu	$3, $zero, -2
	and	$2, $2, $3
	subu	$1, $1, $2
	beqz	$1, .LBB90_11
	nop
# %bb.9:                                #   in Loop: Header=BB90_8 Depth=1
	b	.LBB90_10
	nop
.LBB90_10:                              #   in Loop: Header=BB90_8 Depth=1
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexp)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexp)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	ld	$5, 32($fp)
	ld	$4, 48($fp)
	ld	$25, %call16(__muldf3)($gp)
	.reloc .Ltmp31, R_MIPS_JALR, __muldf3
.Ltmp31:
	jalr	$25
	nop
	sd	$2, 48($fp)
	b	.LBB90_11
	nop
.LBB90_11:                              #   in Loop: Header=BB90_8 Depth=1
	lw	$1, 44($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 44($fp)
	lw	$1, 44($fp)
	bnez	$1, .LBB90_14
	nop
# %bb.12:
	b	.LBB90_13
	nop
.LBB90_13:
	ld	$1, 24($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexp)
	ld	$1, 56($2)
	daddiu	$1, $1, 1
	sd	$1, 56($2)
	b	.LBB90_15
	nop
.LBB90_14:                              #   in Loop: Header=BB90_8 Depth=1
	ld	$gp, 24($fp)                    # 8-byte Folded Reload
	ld	$5, 32($fp)
	ld	$25, %call16(__muldf3)($gp)
	move	$4, $5
	.reloc .Ltmp32, R_MIPS_JALR, __muldf3
.Ltmp32:
	jalr	$25
	nop
	sd	$2, 32($fp)
	b	.LBB90_8
	nop
.LBB90_15:
	b	.LBB90_16
	nop
.LBB90_16:
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
	move	$2, $6
                                        # kill: def $v1_64 killed $a1_64
                                        # kill: def $v1_64 killed $a0_64
	sd	$5, 104($fp)
	sd	$4, 96($fp)
	sw	$2, 92($fp)
	ld	$2, %got_page(.L__profc_ldexpl)($1)
	ld	$1, %got_ofst(.L__profc_ldexpl)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_ldexpl)($2)
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
	bnez	$1, .LBB91_18
	nop
# %bb.3:
	b	.LBB91_4
	nop
.LBB91_4:
	ld	$gp, 48($fp)                    # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpl)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexpl)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	beqz	$2, .LBB91_18
	nop
# %bb.5:
	b	.LBB91_6
	nop
.LBB91_6:
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexpl)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	b	.LBB91_7
	nop
.LBB91_7:
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpl)($1)
	daddiu	$3, $1, %got_ofst(.L__profc_ldexpl)
	ld	$1, 8($3)
	daddiu	$1, $1, 1
	sd	$1, 8($3)
	lw	$2, 92($fp)
	slti	$1, $2, 0
	srl	$2, $2, 31
	dsll	$2, $2, 32
	dsrl	$4, $2, 32
	ld	$2, 32($3)
	daddu	$2, $2, $4
	sd	$2, 32($3)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 62
	sd	$2, 8($fp)                      # 8-byte Folded Spill
	daddiu	$2, $zero, 8191
	dsll	$2, $2, 49
	sd	$2, 16($fp)                     # 8-byte Folded Spill
	bnez	$1, .LBB91_9
	nop
# %bb.8:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	sd	$1, 16($fp)                     # 8-byte Folded Spill
.LBB91_9:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	sd	$1, 72($fp)
	daddiu	$1, $zero, 0
	sd	$zero, 64($fp)
	b	.LBB91_10
	nop
.LBB91_10:                              # =>This Inner Loop Header: Depth=1
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexpl)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	lw	$1, 92($fp)
	srl	$2, $1, 31
	addu	$2, $1, $2
	addiu	$3, $zero, -2
	and	$2, $2, $3
	subu	$1, $1, $2
	beqz	$1, .LBB91_13
	nop
# %bb.11:                               #   in Loop: Header=BB91_10 Depth=1
	b	.LBB91_12
	nop
.LBB91_12:                              #   in Loop: Header=BB91_10 Depth=1
	ld	$gp, 48($fp)                    # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpl)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexpl)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
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
	b	.LBB91_13
	nop
.LBB91_13:                              #   in Loop: Header=BB91_10 Depth=1
	lw	$1, 92($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 92($fp)
	lw	$1, 92($fp)
	bnez	$1, .LBB91_16
	nop
# %bb.14:
	b	.LBB91_15
	nop
.LBB91_15:
	ld	$1, 48($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_ldexpl)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_ldexpl)
	ld	$1, 56($2)
	daddiu	$1, $1, 1
	sd	$1, 56($2)
	b	.LBB91_17
	nop
.LBB91_16:                              #   in Loop: Header=BB91_10 Depth=1
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
	b	.LBB91_10
	nop
.LBB91_17:
	b	.LBB91_18
	nop
.LBB91_18:
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
	lui	$1, %hi(%neg(%gp_rel(memxor)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(memxor)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_memxor)($1)
	ld	$1, %got_ofst(.L__profc_memxor)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_memxor)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memxor)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memxor)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	sd	$gp, 8($fp)                     # 8-byte Folded Spill
	sd	$4, 48($fp)
	sd	$5, 40($fp)
	sd	$6, 32($fp)
	ld	$2, %got_page(.L__profc_strncat)($gp)
	ld	$1, %got_ofst(.L__profc_strncat)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_strncat)($2)
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
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB93_6
	nop
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	b	.LBB93_3
	nop
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strncat)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strncat)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 40($fp)
	lbu	$1, 0($1)
	ld	$2, 24($fp)
	sb	$1, 0($2)
	sltu	$2, $zero, $1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB93_6
	nop
# %bb.4:                                #   in Loop: Header=BB93_1 Depth=1
	b	.LBB93_5
	nop
.LBB93_5:                               #   in Loop: Header=BB93_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_strncat)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_strncat)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB93_6
	nop
.LBB93_6:                               #   in Loop: Header=BB93_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB93_10
	nop
# %bb.7:                                #   in Loop: Header=BB93_1 Depth=1
	b	.LBB93_8
	nop
.LBB93_8:                               #   in Loop: Header=BB93_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strncat)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strncat)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB93_9
	nop
.LBB93_9:                               #   in Loop: Header=BB93_1 Depth=1
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
.LBB93_10:
	ld	$1, 32($fp)
	bnez	$1, .LBB93_13
	nop
# %bb.11:
	b	.LBB93_12
	nop
.LBB93_12:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strncat)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strncat)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sb	$zero, 0($1)
	b	.LBB93_13
	nop
.LBB93_13:
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
	lui	$1, %hi(%neg(%gp_rel(strnlen)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(strnlen)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	ld	$2, %got_page(.L__profc_strnlen)($1)
	ld	$1, %got_ofst(.L__profc_strnlen)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_strnlen)($2)
	daddiu	$1, $zero, 0
	sd	$zero, 24($fp)
	b	.LBB94_1
	nop
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	ld	$3, 32($fp)
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB94_6
	nop
# %bb.2:                                #   in Loop: Header=BB94_1 Depth=1
	b	.LBB94_3
	nop
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strnlen)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strnlen)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 40($fp)
	ld	$2, 24($fp)
	daddu	$1, $1, $2
	lb	$1, 0($1)
	sltu	$2, $zero, $1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB94_6
	nop
# %bb.4:                                #   in Loop: Header=BB94_1 Depth=1
	b	.LBB94_5
	nop
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_strnlen)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_strnlen)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB94_6
	nop
.LBB94_6:                               #   in Loop: Header=BB94_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB94_10
	nop
# %bb.7:                                #   in Loop: Header=BB94_1 Depth=1
	b	.LBB94_8
	nop
.LBB94_8:                               #   in Loop: Header=BB94_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strnlen)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strnlen)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB94_9
	nop
.LBB94_9:                               #   in Loop: Header=BB94_1 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	b	.LBB94_1
	nop
.LBB94_10:
	ld	$2, 24($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
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
	lui	$1, %hi(%neg(%gp_rel(strpbrk)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(strpbrk)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	ld	$2, %got_page(.L__profc_strpbrk)($1)
	ld	$1, %got_ofst(.L__profc_strpbrk)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_strpbrk)($2)
	b	.LBB95_1
	nop
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_4 Depth 2
	ld	$1, 32($fp)
	lb	$1, 0($1)
	beqz	$1, .LBB95_11
	nop
# %bb.2:                                #   in Loop: Header=BB95_1 Depth=1
	b	.LBB95_3
	nop
.LBB95_3:                               #   in Loop: Header=BB95_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strpbrk)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strpbrk)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 24($fp)
	sd	$1, 16($fp)
	b	.LBB95_4
	nop
.LBB95_4:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	$1, 16($fp)
	lb	$1, 0($1)
	beqz	$1, .LBB95_10
	nop
# %bb.5:                                #   in Loop: Header=BB95_4 Depth=2
	b	.LBB95_6
	nop
.LBB95_6:                               #   in Loop: Header=BB95_4 Depth=2
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strpbrk)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strpbrk)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 16($fp)
	daddiu	$2, $1, 1
	sd	$2, 16($fp)
	lb	$1, 0($1)
	ld	$2, 32($fp)
	lb	$2, 0($2)
	bne	$1, $2, .LBB95_9
	nop
# %bb.7:
	b	.LBB95_8
	nop
.LBB95_8:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strpbrk)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strpbrk)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	ld	$1, 32($fp)
	sd	$1, 40($fp)
	b	.LBB95_12
	nop
.LBB95_9:                               #   in Loop: Header=BB95_4 Depth=2
	b	.LBB95_4
	nop
.LBB95_10:                              #   in Loop: Header=BB95_1 Depth=1
	ld	$1, 32($fp)
	daddiu	$1, $1, 1
	sd	$1, 32($fp)
	b	.LBB95_1
	nop
.LBB95_11:
	daddiu	$1, $zero, 0
	sd	$zero, 40($fp)
	b	.LBB95_12
	nop
.LBB95_12:
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
	lui	$1, %hi(%neg(%gp_rel(strrchr)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(strrchr)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 24($fp)
	sw	$2, 20($fp)
	ld	$2, %got_page(.L__profc_strrchr)($1)
	ld	$1, %got_ofst(.L__profc_strrchr)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_strrchr)($2)
	daddiu	$1, $zero, 0
	sd	$zero, 8($fp)
	b	.LBB96_2
	nop
.LBB96_1:                               #   in Loop: Header=BB96_2 Depth=1
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strrchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strrchr)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	b	.LBB96_2
	nop
.LBB96_2:                               # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	lb	$1, 0($1)
	lw	$2, 20($fp)
	bne	$1, $2, .LBB96_5
	nop
# %bb.3:                                #   in Loop: Header=BB96_2 Depth=1
	b	.LBB96_4
	nop
.LBB96_4:                               #   in Loop: Header=BB96_2 Depth=1
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strrchr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strrchr)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 24($fp)
	sd	$1, 8($fp)
	b	.LBB96_5
	nop
.LBB96_5:                               #   in Loop: Header=BB96_2 Depth=1
	b	.LBB96_6
	nop
.LBB96_6:                               #   in Loop: Header=BB96_2 Depth=1
	ld	$1, 24($fp)
	daddiu	$2, $1, 1
	sd	$2, 24($fp)
	lbu	$1, 0($1)
	bnez	$1, .LBB96_1
	nop
# %bb.7:
	b	.LBB96_8
	nop
.LBB96_8:
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
	ld	$2, %got_page(.L__profc_strstr)($gp)
	ld	$1, %got_ofst(.L__profc_strstr)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_strstr)($2)
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strstr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strstr)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, %got_page(.L__profc_strstr)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_strstr)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_strstr)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_strstr)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
	ld	$2, %got_page(.L__profc_copysign)($gp)
	ld	$1, %got_ofst(.L__profc_copysign)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_copysign)($2)
	ld	$4, 24($fp)
	ld	$25, %call16(__ltdf2)($gp)
	daddiu	$5, $zero, 0
	.reloc .Ltmp41, R_MIPS_JALR, __ltdf2
.Ltmp41:
	jalr	$25
	nop
	bgez	$2, .LBB98_5
	nop
# %bb.1:
	b	.LBB98_2
	nop
.LBB98_2:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_copysign)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_copysign)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	ld	$4, 16($fp)
	ld	$25, %call16(__gtdf2)($gp)
	daddiu	$5, $zero, 0
	.reloc .Ltmp42, R_MIPS_JALR, __gtdf2
.Ltmp42:
	jalr	$25
	nop
	blez	$2, .LBB98_5
	nop
# %bb.3:
	b	.LBB98_4
	nop
.LBB98_4:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_copysign)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_copysign)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	b	.LBB98_10
	nop
.LBB98_5:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_copysign)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_copysign)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$4, 24($fp)
	ld	$25, %call16(__gtdf2)($gp)
	daddiu	$5, $zero, 0
	.reloc .Ltmp43, R_MIPS_JALR, __gtdf2
.Ltmp43:
	jalr	$25
	nop
	blez	$2, .LBB98_11
	nop
# %bb.6:
	b	.LBB98_7
	nop
.LBB98_7:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_copysign)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_copysign)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	ld	$4, 16($fp)
	ld	$25, %call16(__ltdf2)($gp)
	daddiu	$5, $zero, 0
	.reloc .Ltmp44, R_MIPS_JALR, __ltdf2
.Ltmp44:
	jalr	$25
	nop
	bgez	$2, .LBB98_11
	nop
# %bb.8:
	b	.LBB98_9
	nop
.LBB98_9:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_copysign)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_copysign)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	b	.LBB98_10
	nop
.LBB98_10:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_copysign)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_copysign)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 24($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	xor	$1, $1, $2
	sd	$1, 32($fp)
	b	.LBB98_12
	nop
.LBB98_11:
	ld	$1, 24($fp)
	sd	$1, 32($fp)
	b	.LBB98_12
	nop
.LBB98_12:
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
	ld	$2, %got_page(.L__profc_memmem)($1)
	ld	$1, %got_ofst(.L__profc_memmem)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_memmem)($2)
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memmem)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memmem)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 56($fp)
	sd	$1, 64($fp)
	b	.LBB99_18
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memmem)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memmem)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	daddiu	$1, $zero, 0
	sd	$zero, 64($fp)
	b	.LBB99_18
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
	bnez	$1, .LBB99_17
	nop
# %bb.8:                                #   in Loop: Header=BB99_7 Depth=1
	b	.LBB99_9
	nop
.LBB99_9:                               #   in Loop: Header=BB99_7 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memmem)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memmem)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	ld	$1, 24($fp)
	lb	$1, 0($1)
	ld	$2, 40($fp)
	lb	$2, 0($2)
	bne	$1, $2, .LBB99_15
	nop
# %bb.10:                               #   in Loop: Header=BB99_7 Depth=1
	b	.LBB99_11
	nop
.LBB99_11:                              #   in Loop: Header=BB99_7 Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memmem)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_memmem)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
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
	bnez	$2, .LBB99_15
	nop
# %bb.12:
	b	.LBB99_13
	nop
.LBB99_13:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memmem)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memmem)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	b	.LBB99_14
	nop
.LBB99_14:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_memmem)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_memmem)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 24($fp)
	sd	$1, 64($fp)
	b	.LBB99_18
	nop
.LBB99_15:                              #   in Loop: Header=BB99_7 Depth=1
	b	.LBB99_16
	nop
.LBB99_16:                              #   in Loop: Header=BB99_7 Depth=1
	ld	$1, 24($fp)
	daddiu	$1, $1, 1
	sd	$1, 24($fp)
	b	.LBB99_7
	nop
.LBB99_17:
	daddiu	$1, $zero, 0
	sd	$zero, 64($fp)
	b	.LBB99_18
	nop
.LBB99_18:
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
	ld	$2, %got_page(.L__profc_mempcpy)($gp)
	ld	$1, %got_ofst(.L__profc_mempcpy)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_mempcpy)($2)
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
	ld	$2, %got_page(.L__profc_frexp)($gp)
	ld	$1, %got_ofst(.L__profc_frexp)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_frexp)($2)
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_frexp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_frexp)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_frexp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_frexp)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, %got_page(.L__profc_frexp)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_frexp)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
	b	.LBB101_21
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
	bgez	$2, .LBB101_20
	nop
# %bb.11:
	b	.LBB101_12
	nop
.LBB101_12:
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_frexp)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_frexp)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	ld	$4, 32($fp)
	ld	$25, %call16(__eqdf2)($gp)
	daddiu	$5, $zero, 0
	.reloc .Ltmp52, R_MIPS_JALR, __eqdf2
.Ltmp52:
	jalr	$25
	nop
	beqz	$2, .LBB101_20
	nop
# %bb.13:
	b	.LBB101_14
	nop
.LBB101_14:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_frexp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_frexp)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	b	.LBB101_15
	nop
.LBB101_15:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_frexp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_frexp)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	b	.LBB101_16
	nop
.LBB101_16:                             # =>This Inner Loop Header: Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$4, 32($fp)
	ld	$25, %call16(__ltdf2)($gp)
	daddiu	$1, $zero, 511
	dsll	$5, $1, 53
	.reloc .Ltmp53, R_MIPS_JALR, __ltdf2
.Ltmp53:
	jalr	$25
	nop
	bgez	$2, .LBB101_19
	nop
# %bb.17:                               #   in Loop: Header=BB101_16 Depth=1
	b	.LBB101_18
	nop
.LBB101_18:                             #   in Loop: Header=BB101_16 Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_frexp)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc_frexp)
	ld	$1, 56($2)
	daddiu	$1, $1, 1
	sd	$1, 56($2)
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
	b	.LBB101_16
	nop
.LBB101_19:
	b	.LBB101_20
	nop
.LBB101_20:
	b	.LBB101_21
	nop
.LBB101_21:
	lw	$1, 16($fp)
	ld	$2, 24($fp)
	sw	$1, 0($2)
	lw	$1, 20($fp)
	beqz	$1, .LBB101_24
	nop
# %bb.22:
	b	.LBB101_23
	nop
.LBB101_23:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_frexp)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_frexp)
	ld	$1, 64($2)
	daddiu	$1, $1, 1
	sd	$1, 64($2)
	ld	$1, 32($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 63
	xor	$1, $1, $2
	sd	$1, 32($fp)
	b	.LBB101_24
	nop
.LBB101_24:
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
	lui	$1, %hi(%neg(%gp_rel(__muldi3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__muldi3)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	sd	$4, 40($fp)
	sd	$5, 32($fp)
	ld	$2, %got_page(.L__profc___muldi3)($1)
	ld	$1, %got_ofst(.L__profc___muldi3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___muldi3)($2)
	daddiu	$1, $zero, 0
	sd	$zero, 24($fp)
	ld	$1, 40($fp)
	sd	$1, 16($fp)
	b	.LBB102_1
	nop
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	ld	$1, 16($fp)
	beqz	$1, .LBB102_7
	nop
# %bb.2:                                #   in Loop: Header=BB102_1 Depth=1
	b	.LBB102_3
	nop
.LBB102_3:                              #   in Loop: Header=BB102_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___muldi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___muldi3)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lbu	$1, 16($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB102_6
	nop
# %bb.4:                                #   in Loop: Header=BB102_1 Depth=1
	b	.LBB102_5
	nop
.LBB102_5:                              #   in Loop: Header=BB102_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___muldi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___muldi3)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$2, 32($fp)
	ld	$1, 24($fp)
	daddu	$1, $1, $2
	sd	$1, 24($fp)
	b	.LBB102_6
	nop
.LBB102_6:                              #   in Loop: Header=BB102_1 Depth=1
	ld	$1, 32($fp)
	dsll	$1, $1, 1
	sd	$1, 32($fp)
	ld	$1, 16($fp)
	dsrl	$1, $1, 1
	sd	$1, 16($fp)
	b	.LBB102_1
	nop
.LBB102_7:
	ld	$2, 24($fp)
	move	$sp, $fp
	ld	$fp, 48($sp)                    # 8-byte Folded Reload
	ld	$ra, 56($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
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
	lui	$1, %hi(%neg(%gp_rel(udivmodsi4)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(udivmodsi4)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $5
	move	$3, $4
	sw	$3, 40($fp)
	sw	$2, 36($fp)
	sd	$6, 24($fp)
	ld	$2, %got_page(.L__profc_udivmodsi4)($1)
	ld	$1, %got_ofst(.L__profc_udivmodsi4)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc_udivmodsi4)($2)
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
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB103_9
	nop
# %bb.2:                                #   in Loop: Header=BB103_1 Depth=1
	b	.LBB103_3
	nop
.LBB103_3:                              #   in Loop: Header=BB103_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_udivmodsi4)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	lw	$1, 20($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB103_9
	nop
# %bb.4:                                #   in Loop: Header=BB103_1 Depth=1
	b	.LBB103_5
	nop
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_udivmodsi4)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	b	.LBB103_6
	nop
.LBB103_6:                              #   in Loop: Header=BB103_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_udivmodsi4)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	lw	$2, 36($fp)
                                        # implicit-def: $at_64
	move	$1, $2
	daddiu	$2, $zero, 1
	dsll	$2, $2, 31
	and	$1, $1, $2
	sltiu	$2, $1, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	bnez	$1, .LBB103_9
	nop
# %bb.7:                                #   in Loop: Header=BB103_1 Depth=1
	b	.LBB103_8
	nop
.LBB103_8:                              #   in Loop: Header=BB103_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc_udivmodsi4)($2)
	daddiu	$3, $2, %got_ofst(.L__profc_udivmodsi4)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB103_9
	nop
.LBB103_9:                              #   in Loop: Header=BB103_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB103_12
	nop
# %bb.10:                               #   in Loop: Header=BB103_1 Depth=1
	b	.LBB103_11
	nop
.LBB103_11:                             #   in Loop: Header=BB103_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_udivmodsi4)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 36($fp)
	sll	$1, $1, 1
	sw	$1, 36($fp)
	lw	$1, 20($fp)
	sll	$1, $1, 1
	sw	$1, 20($fp)
	b	.LBB103_1
	nop
.LBB103_12:
	b	.LBB103_13
	nop
.LBB103_13:                             # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	beqz	$1, .LBB103_19
	nop
# %bb.14:                               #   in Loop: Header=BB103_13 Depth=1
	b	.LBB103_15
	nop
.LBB103_15:                             #   in Loop: Header=BB103_13 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_udivmodsi4)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	lw	$1, 40($fp)
	lw	$2, 36($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB103_18
	nop
# %bb.16:                               #   in Loop: Header=BB103_13 Depth=1
	b	.LBB103_17
	nop
.LBB103_17:                             #   in Loop: Header=BB103_13 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_udivmodsi4)
	ld	$1, 56($2)
	daddiu	$1, $1, 1
	sd	$1, 56($2)
	lw	$2, 36($fp)
	lw	$1, 40($fp)
	subu	$1, $1, $2
	sw	$1, 40($fp)
	lw	$2, 20($fp)
	lw	$1, 16($fp)
	or	$1, $1, $2
	sw	$1, 16($fp)
	b	.LBB103_18
	nop
.LBB103_18:                             #   in Loop: Header=BB103_13 Depth=1
	lw	$1, 20($fp)
	srl	$1, $1, 1
	sw	$1, 20($fp)
	lw	$1, 36($fp)
	srl	$1, $1, 1
	sw	$1, 36($fp)
	b	.LBB103_13
	nop
.LBB103_19:
	ld	$1, 24($fp)
	beqz	$1, .LBB103_22
	nop
# %bb.20:
	b	.LBB103_21
	nop
.LBB103_21:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc_udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc_udivmodsi4)
	ld	$1, 64($2)
	daddiu	$1, $1, 1
	sd	$1, 64($2)
	lw	$1, 40($fp)
	sw	$1, 44($fp)
	b	.LBB103_23
	nop
.LBB103_22:
	lw	$1, 16($fp)
	sw	$1, 44($fp)
	b	.LBB103_23
	nop
.LBB103_23:
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
	lui	$1, %hi(%neg(%gp_rel(__clrsbqi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__clrsbqi2)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $4
	sb	$2, 27($fp)
	ld	$2, %got_page(.L__profc___clrsbqi2)($1)
	ld	$1, %got_ofst(.L__profc___clrsbqi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___clrsbqi2)($2)
	lb	$1, 27($fp)
	bgez	$1, .LBB104_3
	nop
# %bb.1:
	b	.LBB104_2
	nop
.LBB104_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___clrsbqi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___clrsbqi2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lbu	$1, 27($fp)
	not	$1, $1
	sb	$1, 27($fp)
	b	.LBB104_3
	nop
.LBB104_3:
	lb	$1, 27($fp)
	bnez	$1, .LBB104_6
	nop
# %bb.4:
	b	.LBB104_5
	nop
.LBB104_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___clrsbqi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___clrsbqi2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	addiu	$1, $zero, 7
	sw	$1, 28($fp)
	b	.LBB104_7
	nop
.LBB104_6:
	lb	$1, 27($fp)
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
	sw	$1, 20($fp)
	lw	$1, 20($fp)
	addiu	$1, $1, -1
	sw	$1, 28($fp)
	b	.LBB104_7
	nop
.LBB104_7:
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
	lui	$1, %hi(%neg(%gp_rel(__clrsbdi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__clrsbdi2)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 16($fp)
	ld	$2, %got_page(.L__profc___clrsbdi2)($1)
	ld	$1, %got_ofst(.L__profc___clrsbdi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___clrsbdi2)($2)
	ld	$1, 16($fp)
	bgez	$1, .LBB105_3
	nop
# %bb.1:
	b	.LBB105_2
	nop
.LBB105_2:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___clrsbdi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___clrsbdi2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___clrsbdi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___clrsbdi2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	lui	$1, %hi(%neg(%gp_rel(__mulsi3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__mulsi3)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $5
	move	$3, $4
	sw	$3, 28($fp)
	sw	$2, 24($fp)
	ld	$2, %got_page(.L__profc___mulsi3)($1)
	ld	$1, %got_ofst(.L__profc___mulsi3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___mulsi3)($2)
	sw	$zero, 20($fp)
	b	.LBB106_1
	nop
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	beqz	$1, .LBB106_7
	nop
# %bb.2:                                #   in Loop: Header=BB106_1 Depth=1
	b	.LBB106_3
	nop
.LBB106_3:                              #   in Loop: Header=BB106_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulsi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulsi3)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lbu	$1, 28($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB106_6
	nop
# %bb.4:                                #   in Loop: Header=BB106_1 Depth=1
	b	.LBB106_5
	nop
.LBB106_5:                              #   in Loop: Header=BB106_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulsi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulsi3)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	lw	$2, 24($fp)
	lw	$1, 20($fp)
	addu	$1, $1, $2
	sw	$1, 20($fp)
	b	.LBB106_6
	nop
.LBB106_6:                              #   in Loop: Header=BB106_1 Depth=1
	lw	$1, 28($fp)
	srl	$1, $1, 1
	sw	$1, 28($fp)
	lw	$1, 24($fp)
	sll	$1, $1, 1
	sw	$1, 24($fp)
	b	.LBB106_1
	nop
.LBB106_7:
	lw	$2, 20($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
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
	lui	$1, %hi(%neg(%gp_rel(__cmovd)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__cmovd)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $6
	sd	$4, 56($fp)
	sd	$5, 48($fp)
	sw	$2, 44($fp)
	ld	$2, %got_page(.L__profc___cmovd)($1)
	ld	$1, %got_ofst(.L__profc___cmovd)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___cmovd)($2)
	lw	$1, 44($fp)
	srl	$1, $1, 3
	sw	$1, 36($fp)
	lw	$1, 44($fp)
	addiu	$2, $zero, -8
	and	$1, $1, $2
	sw	$1, 32($fp)
	ld	$1, 56($fp)
	sd	$1, 24($fp)
	ld	$1, 48($fp)
	sd	$1, 16($fp)
	ld	$1, 24($fp)
	ld	$2, 16($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB107_5
	nop
# %bb.1:
	b	.LBB107_2
	nop
.LBB107_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovd)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovd)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$2, 24($fp)
	ld	$1, 16($fp)
	lwu	$3, 44($fp)
	daddu	$1, $1, $3
	sltu	$1, $1, $2
	bnez	$1, .LBB107_5
	nop
# %bb.3:
	b	.LBB107_4
	nop
.LBB107_4:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovd)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovd)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	b	.LBB107_15
	nop
.LBB107_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovd)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovd)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	sw	$zero, 40($fp)
	b	.LBB107_6
	nop
.LBB107_6:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 40($fp)
	lw	$2, 36($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB107_10
	nop
# %bb.7:                                #   in Loop: Header=BB107_6 Depth=1
	b	.LBB107_8
	nop
.LBB107_8:                              #   in Loop: Header=BB107_6 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovd)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovd)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 48($fp)
	lwu	$2, 40($fp)
	dsll	$3, $2, 3
	daddu	$1, $1, $3
	ld	$1, 0($1)
	ld	$2, 56($fp)
	daddu	$2, $2, $3
	sd	$1, 0($2)
	b	.LBB107_9
	nop
.LBB107_9:                              #   in Loop: Header=BB107_6 Depth=1
	lw	$1, 40($fp)
	addiu	$1, $1, 1
	sw	$1, 40($fp)
	b	.LBB107_6
	nop
.LBB107_10:
	b	.LBB107_11
	nop
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	lw	$2, 44($fp)
	lw	$1, 32($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB107_14
	nop
# %bb.12:                               #   in Loop: Header=BB107_11 Depth=1
	b	.LBB107_13
	nop
.LBB107_13:                             #   in Loop: Header=BB107_11 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovd)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovd)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	ld	$1, 16($fp)
	lwu	$3, 32($fp)
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 24($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 32($fp)
	addiu	$1, $1, 1
	sw	$1, 32($fp)
	b	.LBB107_11
	nop
.LBB107_14:
	b	.LBB107_20
	nop
.LBB107_15:
	b	.LBB107_16
	nop
.LBB107_16:                             # =>This Inner Loop Header: Depth=1
	lw	$1, 44($fp)
	addiu	$2, $1, -1
	sw	$2, 44($fp)
	beqz	$1, .LBB107_19
	nop
# %bb.17:                               #   in Loop: Header=BB107_16 Depth=1
	b	.LBB107_18
	nop
.LBB107_18:                             #   in Loop: Header=BB107_16 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovd)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovd)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	ld	$1, 16($fp)
	lwu	$3, 44($fp)
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 24($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	b	.LBB107_16
	nop
.LBB107_19:
	b	.LBB107_20
	nop
.LBB107_20:
	move	$sp, $fp
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
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
	lui	$1, %hi(%neg(%gp_rel(__cmovh)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__cmovh)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $6
	sd	$4, 56($fp)
	sd	$5, 48($fp)
	sw	$2, 44($fp)
	ld	$2, %got_page(.L__profc___cmovh)($1)
	ld	$1, %got_ofst(.L__profc___cmovh)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___cmovh)($2)
	lw	$1, 44($fp)
	srl	$1, $1, 1
	sw	$1, 36($fp)
	ld	$1, 56($fp)
	sd	$1, 24($fp)
	ld	$1, 48($fp)
	sd	$1, 16($fp)
	ld	$1, 24($fp)
	ld	$2, 16($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB108_5
	nop
# %bb.1:
	b	.LBB108_2
	nop
.LBB108_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovh)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovh)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$2, 24($fp)
	ld	$1, 16($fp)
	lwu	$3, 44($fp)
	daddu	$1, $1, $3
	sltu	$1, $1, $2
	bnez	$1, .LBB108_5
	nop
# %bb.3:
	b	.LBB108_4
	nop
.LBB108_4:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovh)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovh)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	b	.LBB108_14
	nop
.LBB108_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovh)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovh)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	sw	$zero, 40($fp)
	b	.LBB108_6
	nop
.LBB108_6:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 40($fp)
	lw	$2, 36($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB108_10
	nop
# %bb.7:                                #   in Loop: Header=BB108_6 Depth=1
	b	.LBB108_8
	nop
.LBB108_8:                              #   in Loop: Header=BB108_6 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovh)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovh)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 48($fp)
	lwu	$2, 40($fp)
	dsll	$3, $2, 1
	daddu	$1, $1, $3
	lhu	$1, 0($1)
	ld	$2, 56($fp)
	daddu	$2, $2, $3
	sh	$1, 0($2)
	b	.LBB108_9
	nop
.LBB108_9:                              #   in Loop: Header=BB108_6 Depth=1
	lw	$1, 40($fp)
	addiu	$1, $1, 1
	sw	$1, 40($fp)
	b	.LBB108_6
	nop
.LBB108_10:
	lbu	$1, 44($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB108_13
	nop
# %bb.11:
	b	.LBB108_12
	nop
.LBB108_12:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovh)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovh)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	ld	$1, 16($fp)
	lw	$2, 44($fp)
	addiu	$2, $2, -1
	dsll	$2, $2, 32
	dsrl	$3, $2, 32
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 24($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	b	.LBB108_13
	nop
.LBB108_13:
	b	.LBB108_19
	nop
.LBB108_14:
	b	.LBB108_15
	nop
.LBB108_15:                             # =>This Inner Loop Header: Depth=1
	lw	$1, 44($fp)
	addiu	$2, $1, -1
	sw	$2, 44($fp)
	beqz	$1, .LBB108_18
	nop
# %bb.16:                               #   in Loop: Header=BB108_15 Depth=1
	b	.LBB108_17
	nop
.LBB108_17:                             #   in Loop: Header=BB108_15 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovh)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovh)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	ld	$1, 16($fp)
	lwu	$3, 44($fp)
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 24($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	b	.LBB108_15
	nop
.LBB108_18:
	b	.LBB108_19
	nop
.LBB108_19:
	move	$sp, $fp
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
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
	lui	$1, %hi(%neg(%gp_rel(__cmovw)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__cmovw)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $6
	sd	$4, 56($fp)
	sd	$5, 48($fp)
	sw	$2, 44($fp)
	ld	$2, %got_page(.L__profc___cmovw)($1)
	ld	$1, %got_ofst(.L__profc___cmovw)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___cmovw)($2)
	lw	$1, 44($fp)
	srl	$1, $1, 2
	sw	$1, 36($fp)
	lw	$1, 44($fp)
	addiu	$2, $zero, -4
	and	$1, $1, $2
	sw	$1, 32($fp)
	ld	$1, 56($fp)
	sd	$1, 24($fp)
	ld	$1, 48($fp)
	sd	$1, 16($fp)
	ld	$1, 24($fp)
	ld	$2, 16($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB109_5
	nop
# %bb.1:
	b	.LBB109_2
	nop
.LBB109_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovw)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovw)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$2, 24($fp)
	ld	$1, 16($fp)
	lwu	$3, 44($fp)
	daddu	$1, $1, $3
	sltu	$1, $1, $2
	bnez	$1, .LBB109_5
	nop
# %bb.3:
	b	.LBB109_4
	nop
.LBB109_4:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovw)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovw)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	b	.LBB109_15
	nop
.LBB109_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovw)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovw)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	sw	$zero, 40($fp)
	b	.LBB109_6
	nop
.LBB109_6:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 40($fp)
	lw	$2, 36($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB109_10
	nop
# %bb.7:                                #   in Loop: Header=BB109_6 Depth=1
	b	.LBB109_8
	nop
.LBB109_8:                              #   in Loop: Header=BB109_6 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovw)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovw)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 48($fp)
	lwu	$2, 40($fp)
	dsll	$3, $2, 2
	daddu	$1, $1, $3
	lw	$1, 0($1)
	ld	$2, 56($fp)
	daddu	$2, $2, $3
	sw	$1, 0($2)
	b	.LBB109_9
	nop
.LBB109_9:                              #   in Loop: Header=BB109_6 Depth=1
	lw	$1, 40($fp)
	addiu	$1, $1, 1
	sw	$1, 40($fp)
	b	.LBB109_6
	nop
.LBB109_10:
	b	.LBB109_11
	nop
.LBB109_11:                             # =>This Inner Loop Header: Depth=1
	lw	$2, 44($fp)
	lw	$1, 32($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB109_14
	nop
# %bb.12:                               #   in Loop: Header=BB109_11 Depth=1
	b	.LBB109_13
	nop
.LBB109_13:                             #   in Loop: Header=BB109_11 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovw)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovw)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	ld	$1, 16($fp)
	lwu	$3, 32($fp)
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 24($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 32($fp)
	addiu	$1, $1, 1
	sw	$1, 32($fp)
	b	.LBB109_11
	nop
.LBB109_14:
	b	.LBB109_20
	nop
.LBB109_15:
	b	.LBB109_16
	nop
.LBB109_16:                             # =>This Inner Loop Header: Depth=1
	lw	$1, 44($fp)
	addiu	$2, $1, -1
	sw	$2, 44($fp)
	beqz	$1, .LBB109_19
	nop
# %bb.17:                               #   in Loop: Header=BB109_16 Depth=1
	b	.LBB109_18
	nop
.LBB109_18:                             #   in Loop: Header=BB109_16 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmovw)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmovw)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	ld	$1, 16($fp)
	lwu	$3, 44($fp)
	daddu	$1, $1, $3
	lbu	$1, 0($1)
	ld	$2, 24($fp)
	daddu	$2, $2, $3
	sb	$1, 0($2)
	b	.LBB109_16
	nop
.LBB109_19:
	b	.LBB109_20
	nop
.LBB109_20:
	move	$sp, $fp
	ld	$fp, 64($sp)                    # 8-byte Folded Reload
	ld	$ra, 72($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
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
	lui	$1, %hi(%neg(%gp_rel(__modi)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__modi)))
	move	$2, $5
	move	$3, $4
	sw	$3, 12($fp)
	sw	$2, 8($fp)
	ld	$2, %got_page(.L__profc___modi)($1)
	ld	$1, %got_ofst(.L__profc___modi)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___modi)($2)
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
	ld	$2, %got_page(.L__profc___uitod)($gp)
	ld	$1, %got_ofst(.L__profc___uitod)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___uitod)($2)
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
	ld	$2, %got_page(.L__profc___uitof)($gp)
	ld	$1, %got_ofst(.L__profc___uitof)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___uitof)($2)
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
	ld	$2, %got_page(.L__profc___ulltod)($gp)
	ld	$1, %got_ofst(.L__profc___ulltod)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ulltod)($2)
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
	ld	$2, %got_page(.L__profc___ulltof)($gp)
	ld	$1, %got_ofst(.L__profc___ulltof)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ulltof)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__umodi)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__umodi)))
	move	$2, $5
	move	$3, $4
	sw	$3, 12($fp)
	sw	$2, 8($fp)
	ld	$2, %got_page(.L__profc___umodi)($1)
	ld	$1, %got_ofst(.L__profc___umodi)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___umodi)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__clzhi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__clzhi2)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	move	$2, $4
	sh	$2, 14($fp)
	ld	$2, %got_page(.L__profc___clzhi2)($1)
	ld	$1, %got_ofst(.L__profc___clzhi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___clzhi2)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___clzhi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___clzhi2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___clzhi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___clzhi2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	lui	$1, %hi(%neg(%gp_rel(__ctzhi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__ctzhi2)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	move	$2, $4
	sh	$2, 14($fp)
	ld	$2, %got_page(.L__profc___ctzhi2)($1)
	ld	$1, %got_ofst(.L__profc___ctzhi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ctzhi2)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ctzhi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ctzhi2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ctzhi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ctzhi2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$2, %got_page(.L__profc___fixunssfsi)($gp)
	ld	$1, %got_ofst(.L__profc___fixunssfsi)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___fixunssfsi)($2)
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
	ld	$1, %got_page(.L__profc___fixunssfsi)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc___fixunssfsi)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	lui	$1, %hi(%neg(%gp_rel(__parityhi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__parityhi2)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $4
	sh	$2, 30($fp)
	ld	$2, %got_page(.L__profc___parityhi2)($1)
	ld	$1, %got_ofst(.L__profc___parityhi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___parityhi2)($2)
	sw	$zero, 20($fp)
	sw	$zero, 24($fp)
	b	.LBB119_1
	nop
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	slti	$1, $1, 16
	beqz	$1, .LBB119_8
	nop
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	b	.LBB119_3
	nop
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___parityhi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___parityhi2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lhu	$1, 30($fp)
	lw	$2, 24($fp)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, .LBB119_6
	nop
# %bb.4:                                #   in Loop: Header=BB119_1 Depth=1
	b	.LBB119_5
	nop
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___parityhi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___parityhi2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	b	.LBB119_6
	nop
.LBB119_6:                              #   in Loop: Header=BB119_1 Depth=1
	b	.LBB119_7
	nop
.LBB119_7:                              #   in Loop: Header=BB119_1 Depth=1
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	b	.LBB119_1
	nop
.LBB119_8:
	lw	$1, 20($fp)
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
	lui	$1, %hi(%neg(%gp_rel(__popcounthi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__popcounthi2)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $4
	sh	$2, 30($fp)
	ld	$2, %got_page(.L__profc___popcounthi2)($1)
	ld	$1, %got_ofst(.L__profc___popcounthi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___popcounthi2)($2)
	sw	$zero, 20($fp)
	sw	$zero, 24($fp)
	b	.LBB120_1
	nop
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	slti	$1, $1, 16
	beqz	$1, .LBB120_8
	nop
# %bb.2:                                #   in Loop: Header=BB120_1 Depth=1
	b	.LBB120_3
	nop
.LBB120_3:                              #   in Loop: Header=BB120_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___popcounthi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___popcounthi2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lhu	$1, 30($fp)
	lw	$2, 24($fp)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, .LBB120_6
	nop
# %bb.4:                                #   in Loop: Header=BB120_1 Depth=1
	b	.LBB120_5
	nop
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___popcounthi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___popcounthi2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	b	.LBB120_6
	nop
.LBB120_6:                              #   in Loop: Header=BB120_1 Depth=1
	b	.LBB120_7
	nop
.LBB120_7:                              #   in Loop: Header=BB120_1 Depth=1
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	b	.LBB120_1
	nop
.LBB120_8:
	lw	$2, 20($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
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
	lui	$1, %hi(%neg(%gp_rel(__mulsi3_iq2000)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__mulsi3_iq2000)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $5
	move	$3, $4
	sw	$3, 28($fp)
	sw	$2, 24($fp)
	ld	$2, %got_page(.L__profc___mulsi3_iq2000)($1)
	ld	$1, %got_ofst(.L__profc___mulsi3_iq2000)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___mulsi3_iq2000)($2)
	sw	$zero, 20($fp)
	b	.LBB121_1
	nop
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	beqz	$1, .LBB121_7
	nop
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	b	.LBB121_3
	nop
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulsi3_iq2000)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulsi3_iq2000)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lbu	$1, 28($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB121_6
	nop
# %bb.4:                                #   in Loop: Header=BB121_1 Depth=1
	b	.LBB121_5
	nop
.LBB121_5:                              #   in Loop: Header=BB121_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulsi3_iq2000)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulsi3_iq2000)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	lw	$2, 24($fp)
	lw	$1, 20($fp)
	addu	$1, $1, $2
	sw	$1, 20($fp)
	b	.LBB121_6
	nop
.LBB121_6:                              #   in Loop: Header=BB121_1 Depth=1
	lw	$1, 28($fp)
	srl	$1, $1, 1
	sw	$1, 28($fp)
	lw	$1, 24($fp)
	sll	$1, $1, 1
	sw	$1, 24($fp)
	b	.LBB121_1
	nop
.LBB121_7:
	lw	$2, 20($fp)
	move	$sp, $fp
	ld	$fp, 32($sp)                    # 8-byte Folded Reload
	ld	$ra, 40($sp)                    # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
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
	lui	$1, %hi(%neg(%gp_rel(__mulsi3_lm32)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__mulsi3_lm32)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $5
	move	$3, $4
	sw	$3, 24($fp)
	sw	$2, 20($fp)
	ld	$2, %got_page(.L__profc___mulsi3_lm32)($1)
	ld	$1, %got_ofst(.L__profc___mulsi3_lm32)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___mulsi3_lm32)($2)
	sw	$zero, 16($fp)
	lw	$1, 24($fp)
	bnez	$1, .LBB122_3
	nop
# %bb.1:
	b	.LBB122_2
	nop
.LBB122_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulsi3_lm32)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulsi3_lm32)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	sw	$zero, 28($fp)
	b	.LBB122_11
	nop
.LBB122_3:
	b	.LBB122_4
	nop
.LBB122_4:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	beqz	$1, .LBB122_10
	nop
# %bb.5:                                #   in Loop: Header=BB122_4 Depth=1
	b	.LBB122_6
	nop
.LBB122_6:                              #   in Loop: Header=BB122_4 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulsi3_lm32)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulsi3_lm32)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	lbu	$1, 20($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB122_9
	nop
# %bb.7:                                #   in Loop: Header=BB122_4 Depth=1
	b	.LBB122_8
	nop
.LBB122_8:                              #   in Loop: Header=BB122_4 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulsi3_lm32)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulsi3_lm32)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	lw	$2, 24($fp)
	lw	$1, 16($fp)
	addu	$1, $1, $2
	sw	$1, 16($fp)
	b	.LBB122_9
	nop
.LBB122_9:                              #   in Loop: Header=BB122_4 Depth=1
	lw	$1, 24($fp)
	sll	$1, $1, 1
	sw	$1, 24($fp)
	lw	$1, 20($fp)
	srl	$1, $1, 1
	sw	$1, 20($fp)
	b	.LBB122_4
	nop
.LBB122_10:
	lw	$1, 16($fp)
	sw	$1, 28($fp)
	b	.LBB122_11
	nop
.LBB122_11:
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
	lui	$1, %hi(%neg(%gp_rel(__udivmodsi4)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__udivmodsi4)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$2, $6
	move	$3, $5
                                        # kill: def $a0 killed $a0 killed $a0_64
	sw	$4, 40($fp)
	sw	$3, 36($fp)
	sw	$2, 32($fp)
	ld	$2, %got_page(.L__profc___udivmodsi4)($1)
	ld	$1, %got_ofst(.L__profc___udivmodsi4)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___udivmodsi4)($2)
	addiu	$1, $zero, 1
	sw	$1, 28($fp)
	sw	$zero, 24($fp)
	b	.LBB123_1
	nop
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	lw	$3, 40($fp)
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB123_9
	nop
# %bb.2:                                #   in Loop: Header=BB123_1 Depth=1
	b	.LBB123_3
	nop
.LBB123_3:                              #   in Loop: Header=BB123_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB123_9
	nop
# %bb.4:                                #   in Loop: Header=BB123_1 Depth=1
	b	.LBB123_5
	nop
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	b	.LBB123_6
	nop
.LBB123_6:                              #   in Loop: Header=BB123_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	lw	$2, 36($fp)
                                        # implicit-def: $at_64
	move	$1, $2
	daddiu	$2, $zero, 1
	dsll	$2, $2, 31
	and	$1, $1, $2
	sltiu	$2, $1, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	bnez	$1, .LBB123_9
	nop
# %bb.7:                                #   in Loop: Header=BB123_1 Depth=1
	b	.LBB123_8
	nop
.LBB123_8:                              #   in Loop: Header=BB123_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc___udivmodsi4)($2)
	daddiu	$3, $2, %got_ofst(.L__profc___udivmodsi4)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB123_9
	nop
.LBB123_9:                              #   in Loop: Header=BB123_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB123_12
	nop
# %bb.10:                               #   in Loop: Header=BB123_1 Depth=1
	b	.LBB123_11
	nop
.LBB123_11:                             #   in Loop: Header=BB123_1 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 36($fp)
	sll	$1, $1, 1
	sw	$1, 36($fp)
	lw	$1, 28($fp)
	sll	$1, $1, 1
	sw	$1, 28($fp)
	b	.LBB123_1
	nop
.LBB123_12:
	b	.LBB123_13
	nop
.LBB123_13:                             # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	beqz	$1, .LBB123_19
	nop
# %bb.14:                               #   in Loop: Header=BB123_13 Depth=1
	b	.LBB123_15
	nop
.LBB123_15:                             #   in Loop: Header=BB123_13 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	lw	$1, 40($fp)
	lw	$2, 36($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB123_18
	nop
# %bb.16:                               #   in Loop: Header=BB123_13 Depth=1
	b	.LBB123_17
	nop
.LBB123_17:                             #   in Loop: Header=BB123_13 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4)
	ld	$1, 56($2)
	daddiu	$1, $1, 1
	sd	$1, 56($2)
	lw	$2, 36($fp)
	lw	$1, 40($fp)
	subu	$1, $1, $2
	sw	$1, 40($fp)
	lw	$2, 28($fp)
	lw	$1, 24($fp)
	or	$1, $1, $2
	sw	$1, 24($fp)
	b	.LBB123_18
	nop
.LBB123_18:                             #   in Loop: Header=BB123_13 Depth=1
	lw	$1, 28($fp)
	srl	$1, $1, 1
	sw	$1, 28($fp)
	lw	$1, 36($fp)
	srl	$1, $1, 1
	sw	$1, 36($fp)
	b	.LBB123_13
	nop
.LBB123_19:
	lw	$1, 32($fp)
	beqz	$1, .LBB123_22
	nop
# %bb.20:
	b	.LBB123_21
	nop
.LBB123_21:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4)
	ld	$1, 64($2)
	daddiu	$1, $1, 1
	sd	$1, 64($2)
	lw	$1, 40($fp)
	sw	$1, 44($fp)
	b	.LBB123_23
	nop
.LBB123_22:
	lw	$1, 24($fp)
	sw	$1, 44($fp)
	b	.LBB123_23
	nop
.LBB123_23:
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
	ld	$2, %got_page(.L__profc___mspabi_cmpf)($gp)
	ld	$1, %got_ofst(.L__profc___mspabi_cmpf)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___mspabi_cmpf)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mspabi_cmpf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mspabi_cmpf)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mspabi_cmpf)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mspabi_cmpf)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$2, %got_page(.L__profc___mspabi_cmpd)($gp)
	ld	$1, %got_ofst(.L__profc___mspabi_cmpd)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___mspabi_cmpd)($2)
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mspabi_cmpd)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mspabi_cmpd)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mspabi_cmpd)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mspabi_cmpd)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	lui	$1, %hi(%neg(%gp_rel(__mspabi_mpysll)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__mspabi_mpysll)))
	sd	$4, 8($fp)
	sd	$5, 0($fp)
	ld	$2, %got_page(.L__profc___mspabi_mpysll)($1)
	ld	$1, %got_ofst(.L__profc___mspabi_mpysll)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___mspabi_mpysll)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__mspabi_mpyull)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__mspabi_mpyull)))
	sd	$4, 8($fp)
	sd	$5, 0($fp)
	ld	$2, %got_page(.L__profc___mspabi_mpyull)($1)
	ld	$1, %got_ofst(.L__profc___mspabi_mpyull)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___mspabi_mpyull)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__mulhi3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__mulhi3)))
	sd	$1, 16($fp)                     # 8-byte Folded Spill
	move	$2, $5
	move	$3, $4
	sw	$3, 44($fp)
	sw	$2, 40($fp)
	ld	$2, %got_page(.L__profc___mulhi3)($1)
	ld	$1, %got_ofst(.L__profc___mulhi3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___mulhi3)($2)
	sw	$zero, 32($fp)
	sw	$zero, 28($fp)
	lw	$1, 40($fp)
	bgez	$1, .LBB128_3
	nop
# %bb.1:
	b	.LBB128_2
	nop
.LBB128_2:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulhi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulhi3)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lw	$1, 40($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 40($fp)
	addiu	$1, $zero, 1
	sw	$1, 32($fp)
	b	.LBB128_3
	nop
.LBB128_3:
	addiu	$1, $zero, 0
	sb	$zero, 39($fp)
	b	.LBB128_4
	nop
.LBB128_4:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 40($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB128_9
	nop
# %bb.5:                                #   in Loop: Header=BB128_4 Depth=1
	b	.LBB128_6
	nop
.LBB128_6:                              #   in Loop: Header=BB128_4 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulhi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulhi3)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	lb	$1, 39($fp)
	sltiu	$1, $1, 32
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	move	$2, $1
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, .LBB128_9
	nop
# %bb.7:                                #   in Loop: Header=BB128_4 Depth=1
	b	.LBB128_8
	nop
.LBB128_8:                              #   in Loop: Header=BB128_4 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	ld	$2, 16($fp)                     # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc___mulhi3)($2)
	daddiu	$3, $2, %got_ofst(.L__profc___mulhi3)
	ld	$2, 32($3)
	daddiu	$2, $2, 1
	sd	$2, 32($3)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	.LBB128_9
	nop
.LBB128_9:                              #   in Loop: Header=BB128_4 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB128_16
	nop
# %bb.10:                               #   in Loop: Header=BB128_4 Depth=1
	b	.LBB128_11
	nop
.LBB128_11:                             #   in Loop: Header=BB128_4 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulhi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulhi3)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	lbu	$1, 40($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB128_14
	nop
# %bb.12:                               #   in Loop: Header=BB128_4 Depth=1
	b	.LBB128_13
	nop
.LBB128_13:                             #   in Loop: Header=BB128_4 Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulhi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulhi3)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	lw	$2, 44($fp)
	lw	$1, 28($fp)
	addu	$1, $1, $2
	sw	$1, 28($fp)
	b	.LBB128_14
	nop
.LBB128_14:                             #   in Loop: Header=BB128_4 Depth=1
	lw	$1, 44($fp)
	sll	$1, $1, 1
	sw	$1, 44($fp)
	lw	$1, 40($fp)
	sra	$1, $1, 1
	sw	$1, 40($fp)
	b	.LBB128_15
	nop
.LBB128_15:                             #   in Loop: Header=BB128_4 Depth=1
	lbu	$1, 39($fp)
	addiu	$1, $1, 1
	sb	$1, 39($fp)
	b	.LBB128_4
	nop
.LBB128_16:
	lw	$1, 32($fp)
	beqz	$1, .LBB128_19
	nop
# %bb.17:
	b	.LBB128_18
	nop
.LBB128_18:
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___mulhi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___mulhi3)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB128_20
	nop
.LBB128_19:
	lw	$1, 28($fp)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB128_20
	nop
.LBB128_20:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
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
	ld	$2, %got_page(.L__profc___divsi3)($1)
	ld	$1, %got_ofst(.L__profc___divsi3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___divsi3)($2)
	sw	$zero, 20($fp)
	ld	$1, 32($fp)
	bgez	$1, .LBB129_3
	nop
# %bb.1:
	b	.LBB129_2
	nop
.LBB129_2:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___divsi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___divsi3)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___divsi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___divsi3)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___divsi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___divsi3)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
	ld	$2, %got_page(.L__profc___modsi3)($1)
	ld	$1, %got_ofst(.L__profc___modsi3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___modsi3)($2)
	sw	$zero, 20($fp)
	ld	$1, 32($fp)
	bgez	$1, .LBB130_3
	nop
# %bb.1:
	b	.LBB130_2
	nop
.LBB130_2:
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___modsi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___modsi3)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___modsi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___modsi3)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___modsi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___modsi3)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
	lui	$1, %hi(%neg(%gp_rel(__udivmodhi4)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__udivmodhi4)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $6
	move	$3, $5
                                        # kill: def $a0 killed $a0 killed $a0_64
	sh	$4, 28($fp)
	sh	$3, 26($fp)
	sw	$2, 20($fp)
	ld	$2, %got_page(.L__profc___udivmodhi4)($1)
	ld	$1, %got_ofst(.L__profc___udivmodhi4)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___udivmodhi4)($2)
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
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB131_9
	nop
# %bb.2:                                #   in Loop: Header=BB131_1 Depth=1
	b	.LBB131_3
	nop
.LBB131_3:                              #   in Loop: Header=BB131_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodhi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodhi4)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	lhu	$1, 18($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB131_9
	nop
# %bb.4:                                #   in Loop: Header=BB131_1 Depth=1
	b	.LBB131_5
	nop
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodhi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodhi4)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	b	.LBB131_6
	nop
.LBB131_6:                              #   in Loop: Header=BB131_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodhi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodhi4)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	lhu	$1, 26($fp)
	andi	$1, $1, 32768
	sltiu	$2, $1, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	bnez	$1, .LBB131_9
	nop
# %bb.7:                                #   in Loop: Header=BB131_1 Depth=1
	b	.LBB131_8
	nop
.LBB131_8:                              #   in Loop: Header=BB131_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc___udivmodhi4)($2)
	daddiu	$3, $2, %got_ofst(.L__profc___udivmodhi4)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB131_9
	nop
.LBB131_9:                              #   in Loop: Header=BB131_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB131_12
	nop
# %bb.10:                               #   in Loop: Header=BB131_1 Depth=1
	b	.LBB131_11
	nop
.LBB131_11:                             #   in Loop: Header=BB131_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodhi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodhi4)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lhu	$1, 26($fp)
	sll	$1, $1, 1
	sh	$1, 26($fp)
	lhu	$1, 18($fp)
	sll	$1, $1, 1
	sh	$1, 18($fp)
	b	.LBB131_1
	nop
.LBB131_12:
	b	.LBB131_13
	nop
.LBB131_13:                             # =>This Inner Loop Header: Depth=1
	lhu	$1, 18($fp)
	beqz	$1, .LBB131_19
	nop
# %bb.14:                               #   in Loop: Header=BB131_13 Depth=1
	b	.LBB131_15
	nop
.LBB131_15:                             #   in Loop: Header=BB131_13 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodhi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodhi4)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	lhu	$1, 28($fp)
	lhu	$2, 26($fp)
	slt	$1, $1, $2
	bnez	$1, .LBB131_18
	nop
# %bb.16:                               #   in Loop: Header=BB131_13 Depth=1
	b	.LBB131_17
	nop
.LBB131_17:                             #   in Loop: Header=BB131_13 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodhi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodhi4)
	ld	$1, 56($2)
	daddiu	$1, $1, 1
	sd	$1, 56($2)
	lhu	$2, 26($fp)
	lhu	$1, 28($fp)
	subu	$1, $1, $2
	sh	$1, 28($fp)
	lhu	$2, 18($fp)
	lhu	$1, 16($fp)
	or	$1, $1, $2
	sh	$1, 16($fp)
	b	.LBB131_18
	nop
.LBB131_18:                             #   in Loop: Header=BB131_13 Depth=1
	lhu	$1, 18($fp)
	srl	$1, $1, 1
	sh	$1, 18($fp)
	lhu	$1, 26($fp)
	srl	$1, $1, 1
	sh	$1, 26($fp)
	b	.LBB131_13
	nop
.LBB131_19:
	lw	$1, 20($fp)
	beqz	$1, .LBB131_22
	nop
# %bb.20:
	b	.LBB131_21
	nop
.LBB131_21:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodhi4)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodhi4)
	ld	$1, 64($2)
	daddiu	$1, $1, 1
	sd	$1, 64($2)
	lhu	$1, 28($fp)
	sh	$1, 30($fp)
	b	.LBB131_23
	nop
.LBB131_22:
	lhu	$1, 16($fp)
	sh	$1, 30($fp)
	b	.LBB131_23
	nop
.LBB131_23:
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
	lui	$1, %hi(%neg(%gp_rel(__udivmodsi4_libgcc)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__udivmodsi4_libgcc)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $6
	sd	$4, 48($fp)
	sd	$5, 40($fp)
	sw	$2, 36($fp)
	ld	$2, %got_page(.L__profc___udivmodsi4_libgcc)($1)
	ld	$1, %got_ofst(.L__profc___udivmodsi4_libgcc)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___udivmodsi4_libgcc)($2)
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
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB132_9
	nop
# %bb.2:                                #   in Loop: Header=BB132_1 Depth=1
	b	.LBB132_3
	nop
.LBB132_3:                              #   in Loop: Header=BB132_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4_libgcc)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4_libgcc)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	ld	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, .LBB132_9
	nop
# %bb.4:                                #   in Loop: Header=BB132_1 Depth=1
	b	.LBB132_5
	nop
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4_libgcc)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4_libgcc)
	ld	$1, 40($2)
	daddiu	$1, $1, 1
	sd	$1, 40($2)
	b	.LBB132_6
	nop
.LBB132_6:                              #   in Loop: Header=BB132_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4_libgcc)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4_libgcc)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 40($fp)
	daddiu	$2, $zero, 1
	dsll	$2, $2, 31
	and	$1, $1, $2
	sltiu	$2, $1, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	bnez	$1, .LBB132_9
	nop
# %bb.7:                                #   in Loop: Header=BB132_1 Depth=1
	b	.LBB132_8
	nop
.LBB132_8:                              #   in Loop: Header=BB132_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	ld	$2, 8($fp)                      # 8-byte Folded Reload
	ld	$2, %got_page(.L__profc___udivmodsi4_libgcc)($2)
	daddiu	$3, $2, %got_ofst(.L__profc___udivmodsi4_libgcc)
	ld	$2, 24($3)
	daddiu	$2, $2, 1
	sd	$2, 24($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	.LBB132_9
	nop
.LBB132_9:                              #   in Loop: Header=BB132_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, .LBB132_12
	nop
# %bb.10:                               #   in Loop: Header=BB132_1 Depth=1
	b	.LBB132_11
	nop
.LBB132_11:                             #   in Loop: Header=BB132_1 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4_libgcc)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4_libgcc)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 40($fp)
	dsll	$1, $1, 1
	sd	$1, 40($fp)
	ld	$1, 24($fp)
	dsll	$1, $1, 1
	sd	$1, 24($fp)
	b	.LBB132_1
	nop
.LBB132_12:
	b	.LBB132_13
	nop
.LBB132_13:                             # =>This Inner Loop Header: Depth=1
	ld	$1, 24($fp)
	beqz	$1, .LBB132_19
	nop
# %bb.14:                               #   in Loop: Header=BB132_13 Depth=1
	b	.LBB132_15
	nop
.LBB132_15:                             #   in Loop: Header=BB132_13 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4_libgcc)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4_libgcc)
	ld	$1, 48($2)
	daddiu	$1, $1, 1
	sd	$1, 48($2)
	ld	$1, 48($fp)
	ld	$2, 40($fp)
	sltu	$1, $1, $2
	bnez	$1, .LBB132_18
	nop
# %bb.16:                               #   in Loop: Header=BB132_13 Depth=1
	b	.LBB132_17
	nop
.LBB132_17:                             #   in Loop: Header=BB132_13 Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4_libgcc)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4_libgcc)
	ld	$1, 56($2)
	daddiu	$1, $1, 1
	sd	$1, 56($2)
	ld	$2, 40($fp)
	ld	$1, 48($fp)
	dsubu	$1, $1, $2
	sd	$1, 48($fp)
	ld	$2, 24($fp)
	ld	$1, 16($fp)
	or	$1, $1, $2
	sd	$1, 16($fp)
	b	.LBB132_18
	nop
.LBB132_18:                             #   in Loop: Header=BB132_13 Depth=1
	ld	$1, 24($fp)
	dsrl	$1, $1, 1
	sd	$1, 24($fp)
	ld	$1, 40($fp)
	dsrl	$1, $1, 1
	sd	$1, 40($fp)
	b	.LBB132_13
	nop
.LBB132_19:
	lw	$1, 36($fp)
	beqz	$1, .LBB132_22
	nop
# %bb.20:
	b	.LBB132_21
	nop
.LBB132_21:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___udivmodsi4_libgcc)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___udivmodsi4_libgcc)
	ld	$1, 64($2)
	daddiu	$1, $1, 1
	sd	$1, 64($2)
	ld	$1, 48($fp)
	sd	$1, 56($fp)
	b	.LBB132_23
	nop
.LBB132_22:
	ld	$1, 16($fp)
	sd	$1, 56($fp)
	b	.LBB132_23
	nop
.LBB132_23:
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
	lui	$1, %hi(%neg(%gp_rel(__ashldi3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__ashldi3)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 32($fp)
	sw	$2, 28($fp)
	ld	$2, %got_page(.L__profc___ashldi3)($1)
	ld	$1, %got_ofst(.L__profc___ashldi3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ashldi3)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ashldi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ashldi3)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ashldi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ashldi3)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	lui	$1, %hi(%neg(%gp_rel(__ashlti3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__ashlti3)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $6
                                        # kill: def $v1_64 killed $a1_64
                                        # kill: def $v1_64 killed $a0_64
	sd	$5, 72($fp)
	sd	$4, 64($fp)
	sw	$2, 60($fp)
	ld	$2, %got_page(.L__profc___ashlti3)($1)
	ld	$1, %got_ofst(.L__profc___ashlti3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ashlti3)($2)
	addiu	$1, $zero, 64
	sw	$1, 56($fp)
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 40($fp)
	sd	$1, 32($fp)
	lbu	$1, 60($fp)
	andi	$1, $1, 64
	beqz	$1, .LBB134_3
	nop
# %bb.1:
	b	.LBB134_2
	nop
.LBB134_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ashlti3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ashlti3)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	daddiu	$1, $zero, 0
	sd	$zero, 16($fp)
	ld	$1, 32($fp)
	lw	$2, 60($fp)
	addiu	$2, $2, -64
	dsllv	$1, $1, $2
	sd	$1, 24($fp)
	b	.LBB134_7
	nop
.LBB134_3:
	lw	$1, 60($fp)
	bnez	$1, .LBB134_6
	nop
# %bb.4:
	b	.LBB134_5
	nop
.LBB134_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ashlti3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ashlti3)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 88($fp)
	sd	$1, 80($fp)
	b	.LBB134_8
	nop
.LBB134_6:
	ld	$1, 32($fp)
	lw	$2, 60($fp)
	dsllv	$1, $1, $2
	sd	$1, 16($fp)
	ld	$1, 40($fp)
	lw	$4, 60($fp)
	dsllv	$1, $1, $4
	ld	$2, 32($fp)
	addiu	$3, $zero, 64
	subu	$3, $3, $4
	dsrlv	$2, $2, $3
	or	$1, $1, $2
	sd	$1, 24($fp)
	b	.LBB134_7
	nop
.LBB134_7:
	ld	$1, 16($fp)
	ld	$2, 24($fp)
	sd	$2, 88($fp)
	sd	$1, 80($fp)
	b	.LBB134_8
	nop
.LBB134_8:
	ld	$2, 80($fp)
	ld	$3, 88($fp)
	move	$sp, $fp
	ld	$fp, 96($sp)                    # 8-byte Folded Reload
	ld	$ra, 104($sp)                   # 8-byte Folded Reload
	daddiu	$sp, $sp, 112
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
	lui	$1, %hi(%neg(%gp_rel(__ashrdi3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__ashrdi3)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 32($fp)
	sw	$2, 28($fp)
	ld	$2, %got_page(.L__profc___ashrdi3)($1)
	ld	$1, %got_ofst(.L__profc___ashrdi3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ashrdi3)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ashrdi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ashrdi3)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ashrdi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ashrdi3)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	lui	$1, %hi(%neg(%gp_rel(__ashrti3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__ashrti3)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $6
                                        # kill: def $v1_64 killed $a1_64
                                        # kill: def $v1_64 killed $a0_64
	sd	$5, 72($fp)
	sd	$4, 64($fp)
	sw	$2, 60($fp)
	ld	$2, %got_page(.L__profc___ashrti3)($1)
	ld	$1, %got_ofst(.L__profc___ashrti3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ashrti3)($2)
	addiu	$1, $zero, 64
	sw	$1, 56($fp)
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 40($fp)
	sd	$1, 32($fp)
	lbu	$1, 60($fp)
	andi	$1, $1, 64
	beqz	$1, .LBB136_3
	nop
# %bb.1:
	b	.LBB136_2
	nop
.LBB136_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ashrti3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ashrti3)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 40($fp)
	dsra	$1, $1, 63
	sd	$1, 24($fp)
	ld	$1, 40($fp)
	lw	$2, 60($fp)
	addiu	$2, $2, -64
	dsrav	$1, $1, $2
	sd	$1, 16($fp)
	b	.LBB136_7
	nop
.LBB136_3:
	lw	$1, 60($fp)
	bnez	$1, .LBB136_6
	nop
# %bb.4:
	b	.LBB136_5
	nop
.LBB136_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ashrti3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ashrti3)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 88($fp)
	sd	$1, 80($fp)
	b	.LBB136_8
	nop
.LBB136_6:
	ld	$1, 40($fp)
	lw	$2, 60($fp)
	dsrav	$1, $1, $2
	sd	$1, 24($fp)
	ld	$1, 40($fp)
	lw	$3, 60($fp)
	addiu	$2, $zero, 64
	subu	$2, $2, $3
	dsllv	$1, $1, $2
	ld	$2, 32($fp)
	dsrlv	$2, $2, $3
	or	$1, $1, $2
	sd	$1, 16($fp)
	b	.LBB136_7
	nop
.LBB136_7:
	ld	$1, 16($fp)
	ld	$2, 24($fp)
	sd	$2, 88($fp)
	sd	$1, 80($fp)
	b	.LBB136_8
	nop
.LBB136_8:
	ld	$2, 80($fp)
	ld	$3, 88($fp)
	move	$sp, $fp
	ld	$fp, 96($sp)                    # 8-byte Folded Reload
	ld	$ra, 104($sp)                   # 8-byte Folded Reload
	daddiu	$sp, $sp, 112
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
	lui	$1, %hi(%neg(%gp_rel(__bswapdi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__bswapdi2)))
	sd	$4, 8($fp)
	ld	$2, %got_page(.L__profc___bswapdi2)($1)
	ld	$1, %got_ofst(.L__profc___bswapdi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___bswapdi2)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__bswapsi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__bswapsi2)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc___bswapsi2)($1)
	ld	$1, %got_ofst(.L__profc___bswapsi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___bswapsi2)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__clzsi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__clzsi2)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc___clzsi2)($1)
	ld	$1, %got_ofst(.L__profc___clzsi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___clzsi2)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__clzti2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__clzti2)))
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 40($fp)
	sd	$4, 32($fp)
	ld	$2, %got_page(.L__profc___clzti2)($1)
	ld	$1, %got_ofst(.L__profc___clzti2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___clzti2)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__cmpdi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__cmpdi2)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	ld	$2, %got_page(.L__profc___cmpdi2)($1)
	ld	$1, %got_ofst(.L__profc___cmpdi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___cmpdi2)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmpdi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmpdi2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmpdi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmpdi2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmpdi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmpdi2)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmpdi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmpdi2)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	ld	$2, %got_page(.L__profc___aeabi_lcmp)($gp)
	ld	$1, %got_ofst(.L__profc___aeabi_lcmp)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___aeabi_lcmp)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__cmpti2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__cmpti2)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
                                        # kill: def $v0_64 killed $a3_64
                                        # kill: def $v0_64 killed $a2_64
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 72($fp)
	sd	$4, 64($fp)
	sd	$7, 56($fp)
	sd	$6, 48($fp)
	ld	$2, %got_page(.L__profc___cmpti2)($1)
	ld	$1, %got_ofst(.L__profc___cmpti2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___cmpti2)($2)
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 40($fp)
	sd	$1, 32($fp)
	ld	$1, 48($fp)
	ld	$2, 56($fp)
	sd	$2, 24($fp)
	sd	$1, 16($fp)
	ld	$1, 40($fp)
	ld	$2, 24($fp)
	slt	$1, $1, $2
	beqz	$1, .LBB143_3
	nop
# %bb.1:
	b	.LBB143_2
	nop
.LBB143_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmpti2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmpti2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	sw	$zero, 92($fp)
	b	.LBB143_13
	nop
.LBB143_3:
	ld	$2, 40($fp)
	ld	$1, 24($fp)
	slt	$1, $1, $2
	beqz	$1, .LBB143_6
	nop
# %bb.4:
	b	.LBB143_5
	nop
.LBB143_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmpti2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmpti2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	addiu	$1, $zero, 2
	sw	$1, 92($fp)
	b	.LBB143_13
	nop
.LBB143_6:
	ld	$1, 32($fp)
	ld	$2, 16($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB143_9
	nop
# %bb.7:
	b	.LBB143_8
	nop
.LBB143_8:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmpti2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmpti2)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	sw	$zero, 92($fp)
	b	.LBB143_13
	nop
.LBB143_9:
	ld	$2, 32($fp)
	ld	$1, 16($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB143_12
	nop
# %bb.10:
	b	.LBB143_11
	nop
.LBB143_11:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___cmpti2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___cmpti2)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	addiu	$1, $zero, 2
	sw	$1, 92($fp)
	b	.LBB143_13
	nop
.LBB143_12:
	addiu	$1, $zero, 1
	sw	$1, 92($fp)
	b	.LBB143_13
	nop
.LBB143_13:
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
	lui	$1, %hi(%neg(%gp_rel(__ctzsi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__ctzsi2)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc___ctzsi2)($1)
	ld	$1, %got_ofst(.L__profc___ctzsi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ctzsi2)($2)
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
	ld	$3, %got_page(.L__profc___ctzti2)($2)
	ld	$1, %got_ofst(.L__profc___ctzti2)($3)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ctzti2)($3)
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
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 72($fp)
	sd	$4, 64($fp)
	ld	$2, %got_page(.L__profc___ffsti2)($1)
	ld	$1, %got_ofst(.L__profc___ffsti2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ffsti2)($2)
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
	ld	$1, 40($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ffsti2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ffsti2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	ld	$1, 56($fp)
	bnez	$1, .LBB146_5
	nop
# %bb.3:
	b	.LBB146_4
	nop
.LBB146_4:
	ld	$1, 40($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ffsti2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ffsti2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	lui	$1, %hi(%neg(%gp_rel(__lshrdi3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__lshrdi3)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	move	$2, $5
	sd	$4, 32($fp)
	sw	$2, 28($fp)
	ld	$2, %got_page(.L__profc___lshrdi3)($1)
	ld	$1, %got_ofst(.L__profc___lshrdi3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___lshrdi3)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___lshrdi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___lshrdi3)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___lshrdi3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___lshrdi3)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	lui	$1, %hi(%neg(%gp_rel(__lshrti3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__lshrti3)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
	move	$2, $6
                                        # kill: def $v1_64 killed $a1_64
                                        # kill: def $v1_64 killed $a0_64
	sd	$5, 72($fp)
	sd	$4, 64($fp)
	sw	$2, 60($fp)
	ld	$2, %got_page(.L__profc___lshrti3)($1)
	ld	$1, %got_ofst(.L__profc___lshrti3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___lshrti3)($2)
	addiu	$1, $zero, 64
	sw	$1, 56($fp)
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 40($fp)
	sd	$1, 32($fp)
	lbu	$1, 60($fp)
	andi	$1, $1, 64
	beqz	$1, .LBB148_3
	nop
# %bb.1:
	b	.LBB148_2
	nop
.LBB148_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___lshrti3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___lshrti3)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	daddiu	$1, $zero, 0
	sd	$zero, 24($fp)
	ld	$1, 40($fp)
	lw	$2, 60($fp)
	addiu	$2, $2, -64
	dsrlv	$1, $1, $2
	sd	$1, 16($fp)
	b	.LBB148_7
	nop
.LBB148_3:
	lw	$1, 60($fp)
	bnez	$1, .LBB148_6
	nop
# %bb.4:
	b	.LBB148_5
	nop
.LBB148_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___lshrti3)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___lshrti3)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 88($fp)
	sd	$1, 80($fp)
	b	.LBB148_8
	nop
.LBB148_6:
	ld	$1, 40($fp)
	lw	$2, 60($fp)
	dsrlv	$1, $1, $2
	sd	$1, 24($fp)
	ld	$1, 40($fp)
	lw	$3, 60($fp)
	addiu	$2, $zero, 64
	subu	$2, $2, $3
	dsllv	$1, $1, $2
	ld	$2, 32($fp)
	dsrlv	$2, $2, $3
	or	$1, $1, $2
	sd	$1, 16($fp)
	b	.LBB148_7
	nop
.LBB148_7:
	ld	$1, 16($fp)
	ld	$2, 24($fp)
	sd	$2, 88($fp)
	sd	$1, 80($fp)
	b	.LBB148_8
	nop
.LBB148_8:
	ld	$2, 80($fp)
	ld	$3, 88($fp)
	move	$sp, $fp
	ld	$fp, 96($sp)                    # 8-byte Folded Reload
	ld	$ra, 104($sp)                   # 8-byte Folded Reload
	daddiu	$sp, $sp, 112
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
	lui	$1, %hi(%neg(%gp_rel(__muldsi3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__muldsi3)))
	move	$2, $5
	move	$3, $4
	sw	$3, 28($fp)
	sw	$2, 24($fp)
	ld	$2, %got_page(.L__profc___muldsi3)($1)
	ld	$1, %got_ofst(.L__profc___muldsi3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___muldsi3)($2)
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
	ld	$2, %got_page(.L__profc___muldi3_compiler_rt)($gp)
	ld	$1, %got_ofst(.L__profc___muldi3_compiler_rt)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___muldi3_compiler_rt)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__mulddi3)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__mulddi3)))
	sd	$4, 56($fp)
	sd	$5, 48($fp)
	ld	$2, %got_page(.L__profc___mulddi3)($1)
	ld	$1, %got_ofst(.L__profc___mulddi3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___mulddi3)($2)
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
	ld	$2, %got_page(.L__profc___multi3)($gp)
	ld	$1, %got_ofst(.L__profc___multi3)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___multi3)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__negdi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__negdi2)))
	sd	$4, 8($fp)
	ld	$2, %got_page(.L__profc___negdi2)($1)
	ld	$1, %got_ofst(.L__profc___negdi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___negdi2)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__negti2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__negti2)))
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 8($fp)
	sd	$4, 0($fp)
	ld	$2, %got_page(.L__profc___negti2)($1)
	ld	$1, %got_ofst(.L__profc___negti2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___negti2)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__paritydi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__paritydi2)))
	sd	$4, 24($fp)
	ld	$2, %got_page(.L__profc___paritydi2)($1)
	ld	$1, %got_ofst(.L__profc___paritydi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___paritydi2)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__parityti2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__parityti2)))
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 40($fp)
	sd	$4, 32($fp)
	ld	$2, %got_page(.L__profc___parityti2)($1)
	ld	$1, %got_ofst(.L__profc___parityti2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___parityti2)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__paritysi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__paritysi2)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc___paritysi2)($1)
	ld	$1, %got_ofst(.L__profc___paritysi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___paritysi2)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__popcountdi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__popcountdi2)))
	sd	$4, 24($fp)
	ld	$2, %got_page(.L__profc___popcountdi2)($1)
	ld	$1, %got_ofst(.L__profc___popcountdi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___popcountdi2)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__popcountsi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__popcountsi2)))
	move	$2, $4
	sw	$2, 12($fp)
	ld	$2, %got_page(.L__profc___popcountsi2)($1)
	ld	$1, %got_ofst(.L__profc___popcountsi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___popcountsi2)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__popcountti2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__popcountti2)))
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 40($fp)
	sd	$4, 32($fp)
	ld	$2, %got_page(.L__profc___popcountti2)($1)
	ld	$1, %got_ofst(.L__profc___popcountti2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___popcountti2)($2)
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
	move	$2, $5
                                        # kill: def $v1_64 killed $a0_64
	sd	$4, 32($fp)
	sw	$2, 28($fp)
	ld	$2, %got_page(.L__profc___powidf2)($1)
	ld	$1, %got_ofst(.L__profc___powidf2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___powidf2)($2)
	lw	$1, 28($fp)
	srl	$1, $1, 31
	sw	$1, 24($fp)
	daddiu	$1, $zero, 1023
	dsll	$1, $1, 52
	sd	$1, 16($fp)
	b	.LBB161_1
	nop
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___powidf2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___powidf2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lbu	$1, 28($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB161_4
	nop
# %bb.2:                                #   in Loop: Header=BB161_1 Depth=1
	b	.LBB161_3
	nop
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	ld	$gp, 8($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___powidf2)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc___powidf2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___powidf2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___powidf2)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
	ld	$1, %got_page(.L__profc___powidf2)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc___powidf2)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	move	$2, $5
                                        # kill: def $v1 killed $a0
	sw	$4, 36($fp)
	sw	$2, 32($fp)
	ld	$2, %got_page(.L__profc___powisf2)($1)
	ld	$1, %got_ofst(.L__profc___powisf2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___powisf2)($2)
	lw	$1, 32($fp)
	srl	$1, $1, 31
	sw	$1, 28($fp)
	lui	$1, 16256
	sw	$1, 24($fp)
	b	.LBB162_1
	nop
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___powisf2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___powisf2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	lbu	$1, 32($fp)
	andi	$1, $1, 1
	beqz	$1, .LBB162_4
	nop
# %bb.2:                                #   in Loop: Header=BB162_1 Depth=1
	b	.LBB162_3
	nop
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	ld	$gp, 16($fp)                    # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___powisf2)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc___powisf2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 16($fp)                     # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___powisf2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___powisf2)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
	ld	$1, %got_page(.L__profc___powisf2)($gp)
	daddiu	$2, $1, %got_ofst(.L__profc___powisf2)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	lui	$1, %hi(%neg(%gp_rel(__ucmpdi2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__ucmpdi2)))
	sd	$1, 0($fp)                      # 8-byte Folded Spill
	sd	$4, 32($fp)
	sd	$5, 24($fp)
	ld	$2, %got_page(.L__profc___ucmpdi2)($1)
	ld	$1, %got_ofst(.L__profc___ucmpdi2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ucmpdi2)($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ucmpdi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ucmpdi2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ucmpdi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ucmpdi2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ucmpdi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ucmpdi2)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
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
	ld	$1, 0($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ucmpdi2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ucmpdi2)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
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
	ld	$2, %got_page(.L__profc___aeabi_ulcmp)($gp)
	ld	$1, %got_ofst(.L__profc___aeabi_ulcmp)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___aeabi_ulcmp)($2)
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
	lui	$1, %hi(%neg(%gp_rel(__ucmpti2)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(__ucmpti2)))
	sd	$1, 8($fp)                      # 8-byte Folded Spill
                                        # kill: def $v0_64 killed $a3_64
                                        # kill: def $v0_64 killed $a2_64
                                        # kill: def $v0_64 killed $a1_64
                                        # kill: def $v0_64 killed $a0_64
	sd	$5, 72($fp)
	sd	$4, 64($fp)
	sd	$7, 56($fp)
	sd	$6, 48($fp)
	ld	$2, %got_page(.L__profc___ucmpti2)($1)
	ld	$1, %got_ofst(.L__profc___ucmpti2)($2)
	daddiu	$1, $1, 1
	sd	$1, %got_ofst(.L__profc___ucmpti2)($2)
	ld	$1, 64($fp)
	ld	$2, 72($fp)
	sd	$2, 40($fp)
	sd	$1, 32($fp)
	ld	$1, 48($fp)
	ld	$2, 56($fp)
	sd	$2, 24($fp)
	sd	$1, 16($fp)
	ld	$1, 40($fp)
	ld	$2, 24($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB165_3
	nop
# %bb.1:
	b	.LBB165_2
	nop
.LBB165_2:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ucmpti2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ucmpti2)
	ld	$1, 8($2)
	daddiu	$1, $1, 1
	sd	$1, 8($2)
	sw	$zero, 92($fp)
	b	.LBB165_13
	nop
.LBB165_3:
	ld	$2, 40($fp)
	ld	$1, 24($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB165_6
	nop
# %bb.4:
	b	.LBB165_5
	nop
.LBB165_5:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ucmpti2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ucmpti2)
	ld	$1, 16($2)
	daddiu	$1, $1, 1
	sd	$1, 16($2)
	addiu	$1, $zero, 2
	sw	$1, 92($fp)
	b	.LBB165_13
	nop
.LBB165_6:
	ld	$1, 32($fp)
	ld	$2, 16($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB165_9
	nop
# %bb.7:
	b	.LBB165_8
	nop
.LBB165_8:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ucmpti2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ucmpti2)
	ld	$1, 24($2)
	daddiu	$1, $1, 1
	sd	$1, 24($2)
	sw	$zero, 92($fp)
	b	.LBB165_13
	nop
.LBB165_9:
	ld	$2, 32($fp)
	ld	$1, 16($fp)
	sltu	$1, $1, $2
	beqz	$1, .LBB165_12
	nop
# %bb.10:
	b	.LBB165_11
	nop
.LBB165_11:
	ld	$1, 8($fp)                      # 8-byte Folded Reload
	ld	$1, %got_page(.L__profc___ucmpti2)($1)
	daddiu	$2, $1, %got_ofst(.L__profc___ucmpti2)
	ld	$1, 32($2)
	daddiu	$1, $1, 1
	sd	$1, 32($2)
	addiu	$1, $zero, 2
	sw	$1, 92($fp)
	b	.LBB165_13
	nop
.LBB165_12:
	addiu	$1, $zero, 1
	sw	$1, 92($fp)
	b	.LBB165_13
	nop
.LBB165_13:
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
	.8byte	-5001490222628474638            # 0xba9723243ca3f0f2
	.8byte	24                              # 0x18
	.8byte	.L__profc_make_ti-.L__profd_make_ti
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-8857068571906375875            # 0x85155f0f843e7f3d
	.8byte	24                              # 0x18
	.8byte	.L__profc_make_tu-.L__profd_make_tu
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-306081897096246147             # 0xfbc09422e3668c7d
	.8byte	-4061701397412038936            # 0xc7a1f0194f8c36e8
	.8byte	.L__profc_memmove-.L__profd_memmove
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1590863763861247346            # 0xe9ec1dd5e5026a8e
	.8byte	1189690007454808                # 0x43a044a498458
	.8byte	.L__profc_memccpy-.L__profd_memccpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	5708666158622859656             # 0x4f3941a01e026188
	.8byte	4538308109                      # 0x10e81160d
	.8byte	.L__profc_memchr-.L__profd_memchr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-4679550853048924350            # 0xbf0ee54adfa48742
	.8byte	4538045965                      # 0x10e7d160d
	.8byte	.L__profc_memcmp-.L__profd_memcmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	3893303423671325810             # 0x3607cad612bdd472
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_memcpy-.L__profd_memcpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-548334422562728352             # 0xf863ecbf75079660
	.8byte	9516882138200                   # 0x8a7d2611458
	.8byte	.L__profc_memrchr-.L__profd_memrchr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-2741574704065975695            # 0xd9f3f85506f36a71
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_memset-.L__profd_memset
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	4454833295779690053             # 0x3dd2bf47a087f645
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_stpcpy-.L__profd_stpcpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	5039208642683934005             # 0x45eedd8fc8411535
	.8byte	70911064                        # 0x43a0458
	.8byte	.L__profc_strchrnul-.L__profd_strchrnul
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-5671522429266412413            # 0xb14ab4664bea3c83
	.8byte	13914928649304                  # 0xca7d2611458
	.8byte	.L__profc_strchr-.L__profd_strchr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	1013198891307352868             # 0xe0f9b060331c324
	.8byte	70906968                        # 0x439f458
	.8byte	.L__profc_strcmp-.L__profd_strcmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	2965136410638013299             # 0x292647db02a7d373
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_strlen-.L__profd_strlen
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-6058495834680104774            # 0xabebe6233cb568ba
	.8byte	7207353986825238351             # 0x6405aa43cb36b74f
	.8byte	.L__profc_strncmp-.L__profd_strncmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1619950660557759641            # 0xe984c77503cb9b67
	.8byte	18193                           # 0x4711
	.8byte	.L__profc_swab-.L__profd_swab
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1429966999967671460            # 0xec27bc96fe655b5c
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_isalpha-.L__profd_isalpha
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-4792250000779744687            # 0xbd7e8203c4a86a51
	.8byte	1562                            # 0x61a
	.8byte	.L__profc_isascii-.L__profd_isascii
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	2465200613623135234             # 0x223626e59b14fc02
	.8byte	6354911                         # 0x60f7df
	.8byte	.L__profc_isblank-.L__profd_isblank
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	8897732069425577183             # 0x7b7b182cc8b67cdf
	.8byte	6354655                         # 0x60f6df
	.8byte	.L__profc_iscntrl-.L__profd_iscntrl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	3483985654529092453             # 0x30599a7e6cc36b65
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_isdigit-.L__profd_isdigit
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-127227288456547236             # 0xfe3bff7489cfb45c
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_isgraph-.L__profd_isgraph
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7501983819047161697             # 0x681c66894508cf61
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_islower-.L__profd_islower
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-7275761640889424986            # 0x9b074d56145f63a6
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_isprint-.L__profd_isprint
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	9032360604355461395             # 0x7d59641d39d70113
	.8byte	6354907                         # 0x60f7db
	.8byte	.L__profc_isspace-.L__profd_isspace
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	4174714232255583053             # 0x39ef9079c45c934d
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_isupper-.L__profd_isupper
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7000259844681188668             # 0x6125eb3d61a7453c
	.8byte	106600273393371                 # 0x60f3cf6db6db
	.8byte	.L__profc_iswcntrl-.L__profd_iswcntrl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	8583753245428091608             # 0x771f9e1919590ad8
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_iswdigit-.L__profd_iswdigit
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-719555261641779946             # 0xf603a04d49941516
	.8byte	-2566119187471392224            # 0xdc635031e3742220
	.8byte	.L__profc_iswprint-.L__profd_iswprint
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	10                              # 0xa
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	624771703830219826              # 0x8aba28df0840c32
	.8byte	6354651                         # 0x60f6db
	.8byte	.L__profc_iswxdigit-.L__profd_iswxdigit
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	4548159975983457080             # 0x3f1e4f66a624a338
	.8byte	24                              # 0x18
	.8byte	.L__profc_toascii-.L__profd_toascii
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-3545869933759497925            # 0xceca8a150286f93b
	.8byte	7369846577040809592             # 0x6646f46a29a55e78
	.8byte	.L__profc_fdim-.L__profd_fdim
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1547869627280940664            # 0xea84dcc6634da188
	.8byte	7369846577040809592             # 0x6646f46a29a55e78
	.8byte	.L__profc_fdimf-.L__profd_fdimf
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-2423801789625842334            # 0xde5ced1d3b654562
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fmax-.L__profd_fmax
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-5134209104457391460            # 0xb8bfa0058e3da29c
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fmaxf-.L__profd_fmaxf
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-3138580006960380340            # 0xd471861cd1fbc64c
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fmaxl-.L__profd_fmaxl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	965427315610335377              # 0xd65e3074b69b891
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fmin-.L__profd_fmin
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7710199602704325723             # 0x6b0021b0328c9c5b
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fminf-.L__profd_fminf
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	2487418697363824514             # 0x2285162058091f82
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fminl-.L__profd_fminl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-6158745991357604691            # 0xaa87bd26bb44dcad
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_l64a-.L__profd_l64a
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-2085616837322687880            # 0xe30e668959ceba78
	.8byte	0                               # 0x0
	.8byte	.L__profc_srand-.L__profd_srand
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7206085285791387956             # 0x6401286350c3d134
	.8byte	24                              # 0x18
	.8byte	.L__profc_rand-.L__profd_rand
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-5080349535175464041            # 0xb97ef903bd0bab97
	.8byte	45786906010769                  # 0x29a49844a491
	.8byte	.L__profc_insque-.L__profd_insque
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-7214219538753974334            # 0x9be1f18d54e30fc2
	.8byte	11043906705                     # 0x29244a491
	.8byte	.L__profc_remque-.L__profd_remque
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-7032153342590886098            # 0x9e68c5caf8cb5f2e
	.8byte	1245367951758424                # 0x46ca7d2611458
	.8byte	.L__profc_lsearch-.L__profd_lsearch
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-6350214982902907667            # 0xa7df811e30b57ced
	.8byte	1245367951758424                # 0x46ca7d2611458
	.8byte	.L__profc_lfind-.L__profd_lfind
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-238465663743841031             # 0xfcb0ccbe056bacf9
	.8byte	99164                           # 0x1835c
	.8byte	.L__profc_abs-.L__profd_abs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-6544211519801369139            # 0xa52e4a4ba3385dcd
	.8byte	638206505195021                 # 0x244720809160d
	.8byte	.L__profc_atoi-.L__profd_atoi
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	8236175749196770609             # 0x724cc634ee8f6d31
	.8byte	638206505195021                 # 0x244720809160d
	.8byte	.L__profc_atol-.L__profd_atol
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	3653807471789013357             # 0x32b4ee8971a6f96d
	.8byte	638206505195021                 # 0x244720809160d
	.8byte	.L__profc_atoll-.L__profd_atoll
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	8750110911118262334             # 0x796ea3837a79403e
	.8byte	-852542619444921222             # 0xf42b29012c1abc7a
	.8byte	.L__profc_bsearch-.L__profd_bsearch
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	1417097008757763708             # 0x13aa8a38ab466e7c
	.8byte	1259382983000112142             # 0x117a3a2689e4bc0e
	.8byte	.L__profc_bsearch_r-.L__profd_bsearch_r
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	5497092892325669176             # 0x4c4998dc58656938
	.8byte	24                              # 0x18
	.8byte	.L__profc_div-.L__profd_div
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	8946668544180752025             # 0x7c28f3a3b30e0e99
	.8byte	99164                           # 0x1835c
	.8byte	.L__profc_imaxabs-.L__profd_imaxabs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-3928426486442246988            # 0xc97b6cec9d5fbcb4
	.8byte	24                              # 0x18
	.8byte	.L__profc_imaxdiv-.L__profd_imaxdiv
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-7118441263952323418            # 0x9d363762b3a39ca6
	.8byte	99164                           # 0x1835c
	.8byte	.L__profc_labs-.L__profd_labs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7149836041034155625             # 0x633951ff74204669
	.8byte	24                              # 0x18
	.8byte	.L__profc_ldiv-.L__profd_ldiv
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7684789126781046466             # 0x6aa5dafebb918ec2
	.8byte	99164                           # 0x1835c
	.8byte	.L__profc_llabs-.L__profd_llabs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-5329156747615108898            # 0xb60b082c520680de
	.8byte	24                              # 0x18
	.8byte	.L__profc_lldiv-.L__profd_lldiv
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-2279810736707830048            # 0xe05c7c36c3687ee0
	.8byte	4538308109                      # 0x10e81160d
	.8byte	.L__profc_wcschr-.L__profd_wcschr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-3710185595167438704            # 0xcc82c5dbcd460890
	.8byte	1188468208228060                # 0x438e7d160d6dc
	.8byte	.L__profc_wcscmp-.L__profd_wcscmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-8381368184235816342            # 0x8baf660af6dd0a6a
	.8byte	9304                            # 0x2458
	.8byte	.L__profc_wcscpy-.L__profd_wcscpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	3988408974905483574             # 0x3759acd4c838a136
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_wcslen-.L__profd_wcslen
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-5425166749483878188            # 0xb4b5ef95c9c0b8d4
	.8byte	6710790269995215964             # 0x5d218431fd366c5c
	.8byte	.L__profc_wcsncmp-.L__profd_wcsncmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	10                              # 0xa
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-150916099757221660             # 0xfde7d69b5b1558e4
	.8byte	4538308109                      # 0x10e81160d
	.8byte	.L__profc_wmemchr-.L__profd_wmemchr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	5386172057678365784             # 0x4abf86f3050dc458
	.8byte	1189621521503964                # 0x439f45834d6dc
	.8byte	.L__profc_wmemcmp-.L__profd_wmemcmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7326050423799855187             # 0x65ab5c0b9d30b853
	.8byte	9304                            # 0x2458
	.8byte	.L__profc_wmemcpy-.L__profd_wmemcpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-4659407939446788683            # 0xbf56752a69a3adb5
	.8byte	-1500206092990891740            # 0xeb2e3281c166b924
	.8byte	.L__profc_wmemmove-.L__profd_wmemmove
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-8291142148468431281            # 0x8ceff224f245264f
	.8byte	9304                            # 0x2458
	.8byte	.L__profc_wmemset-.L__profd_wmemset
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-8407331144368071880            # 0x8b5328de3edcdb38
	.8byte	5234109875325077019             # 0x48a34b333a1d861b
	.8byte	.L__profc_bcopy-.L__profd_bcopy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	4714666614722164144             # 0x416ddc4e84e875b0
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotl64-.L__profd_rotl64
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-8427642833712987187            # 0x8b0aff7e8aabc3cd
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotr64-.L__profd_rotr64
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	6417704780586152324             # 0x5910447ed829f184
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotl32-.L__profd_rotl32
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-5668908084823466940            # 0xb153fe21cbc1dc44
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotr32-.L__profd_rotr32
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-3686623714176605670            # 0xccd67b43b7f8e21a
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotl_sz-.L__profd_rotl_sz
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	3415499704483829380             # 0x2f664ae29835d684
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotr_sz-.L__profd_rotr_sz
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7327166975465201445             # 0x65af538b0e939f25
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotl16-.L__profd_rotl16
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	5274763753728838268             # 0x4933b9afe71d0a7c
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotr16-.L__profd_rotr16
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	4408423234350850624             # 0x3d2ddd93270fa240
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotl8-.L__profd_rotl8
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-6535801773217052896            # 0xa54c2aea59078720
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotr8-.L__profd_rotr8
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-8870828063230114195            # 0x84e47ce04b9a466d
	.8byte	24                              # 0x18
	.8byte	.L__profc_bswap_16-.L__profd_bswap_16
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7304833549461180700             # 0x655ffb691afd511c
	.8byte	24                              # 0x18
	.8byte	.L__profc_bswap_32-.L__profd_bswap_32
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	2873856403134720854             # 0x27e1fd2c1c53ab56
	.8byte	24                              # 0x18
	.8byte	.L__profc_bswap_64-.L__profd_bswap_64
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	9222170723057548859             # 0x7ffbbb6955da3e3b
	.8byte	19458657686616                  # 0x11b292611458
	.8byte	.L__profc_ffs-.L__profd_ffs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	65216057573358521               # 0xe7b1a8a94fbbb9
	.8byte	2952352215704664                # 0xa7d261111a458
	.8byte	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	6535010584615638394             # 0x5ab10580b36ed57a
	.8byte	6354652                         # 0x60f6dc
	.8byte	.L__profc_gl_isinff-.L__profd_gl_isinff
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-9165907066207032774            # 0x80cc28161a7caa3a
	.8byte	6354652                         # 0x60f6dc
	.8byte	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	4731159788068304891             # 0x41a874c2af6c77fb
	.8byte	6354652                         # 0x60f6dc
	.8byte	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-3858125999267273921            # 0xca752ed84af9a33f
	.8byte	0                               # 0x0
	.8byte	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-2560632889718296859            # 0xdc76cdf42028aee5
	.8byte	-2048372819454505383            # 0xe392b7c600d94e59
	.8byte	.L__profc_ldexpf-.L__profd_ldexpf
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	8                               # 0x8
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-240549059163932437             # 0xfca965e7b97ab8eb
	.8byte	-2048372819454505383            # 0xe392b7c600d94e59
	.8byte	.L__profc_ldexp-.L__profd_ldexp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	8                               # 0x8
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-5097262943286299417            # 0xb942e25c0aa874e7
	.8byte	-2048372819454505383            # 0xe392b7c600d94e59
	.8byte	.L__profc_ldexpl-.L__profd_ldexpl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	8                               # 0x8
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-8368025376422999318            # 0x8bdecd417eda4aea
	.8byte	1164376                         # 0x11c458
	.8byte	.L__profc_memxor-.L__profd_memxor
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-3582483947543505905            # 0xce4875d49d21540f
	.8byte	76123606467028056               # 0x10e72044a7d2458
	.8byte	.L__profc_strncat-.L__profd_strncat
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	517590790318988421              # 0x72eda14dbfa1c85
	.8byte	4537021528                      # 0x10e6d7458
	.8byte	.L__profc_strnlen-.L__profd_strnlen
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-6867074718569872870            # 0xa0b33fed4193c21a
	.8byte	-4444802448421279214            # 0xc250e3b905102a12
	.8byte	.L__profc_strpbrk-.L__profd_strpbrk
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	5307837722043833871             # 0x49a93a493bd75e0f
	.8byte	217420731480                    # 0x329f491458
	.8byte	.L__profc_strrchr-.L__profd_strrchr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	3560562421867190603             # 0x3169a8a873ff994b
	.8byte	-7798267876297541628            # 0x93c6fcaef9f1f804
	.8byte	.L__profc_strstr-.L__profd_strstr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-9076603418344796971            # 0x82096d47ea764cd5
	.8byte	4200982705386070127             # 0x3a4ce3834618a06f
	.8byte	.L__profc_copysign-.L__profd_copysign
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-7485463843177831536            # 0x981e4a4b585ae390
	.8byte	5508063777036862020             # 0x4c7092d27e7a8244
	.8byte	.L__profc_memmem-.L__profd_memmem
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-722907995699078206             # 0xf5f7b7020f111bc2
	.8byte	24                              # 0x18
	.8byte	.L__profc_mempcpy-.L__profd_mempcpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-2997169543230593137            # 0xd667ea2e1c1ee78f
	.8byte	-2373782428686282824            # 0xdf0ea1753c170fb8
	.8byte	.L__profc_frexp-.L__profd_frexp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	3987271357918321816             # 0x3755a22cafcf9c98
	.8byte	2320045144                      # 0x8a491458
	.8byte	.L__profc___muldi3-.L__profd___muldi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	4670832108574850701             # 0x40d2210e3d17be8d
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.8byte	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-7858138078702729622            # 0x92f2490d36f4066a
	.8byte	187824153796641880              # 0x29b49129f498458
	.8byte	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1533375985051215657            # 0xeab85aaa6fe858d7
	.8byte	187824153796641880              # 0x29b49129f498458
	.8byte	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	5127670123023436031             # 0x472924cf303208ff
	.8byte	2320045144                      # 0x8a491458
	.8byte	.L__profc___mulsi3-.L__profd___mulsi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	1458405851566781960             # 0x143d4c6520fd3608
	.8byte	-6411111704588201945            # 0xa70727df48abd027
	.8byte	.L__profc___cmovd-.L__profd___cmovd
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1240290101804783090            # 0xeec99ab9477e2a0e
	.8byte	3130117398598530023             # 0x2b706930a0bc33e7
	.8byte	.L__profc___cmovh-.L__profd___cmovh
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-6631700889337257300            # 0xa3f7772d6a6922ac
	.8byte	-6411111704588201945            # 0xa70727df48abd027
	.8byte	.L__profc___cmovw-.L__profd___cmovw
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	4130297501716739761             # 0x3951c3b1ce8276b1
	.8byte	24                              # 0x18
	.8byte	.L__profc___modi-.L__profd___modi
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-3793169221884876252            # 0xcb5bf4b0949b6a24
	.8byte	24                              # 0x18
	.8byte	.L__profc___uitod-.L__profd___uitod
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	2684105554667313846             # 0x253fdbc7ed991ab6
	.8byte	24                              # 0x18
	.8byte	.L__profc___uitof-.L__profd___uitof
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	3995277539005434566             # 0x377213c0fb840ac6
	.8byte	24                              # 0x18
	.8byte	.L__profc___ulltod-.L__profd___ulltod
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1906554817873249395            # 0xe58a8e7e97dafb8d
	.8byte	24                              # 0x18
	.8byte	.L__profc___ulltof-.L__profd___ulltof
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	6154071623751134202             # 0x5567a7893fff6bfa
	.8byte	24                              # 0x18
	.8byte	.L__profc___umodi-.L__profd___umodi
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-9221703320275173474            # 0x8005edb05af53f9e
	.8byte	19458657162328                  # 0x11b292591458
	.8byte	.L__profc___clzhi2-.L__profd___clzhi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1569202989881991136            # 0xea391231d79a6020
	.8byte	19458657162328                  # 0x11b292591458
	.8byte	.L__profc___ctzhi2-.L__profd___ctzhi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-7800469359816066749            # 0x93bf2a7226d83943
	.8byte	11245552728                     # 0x29e498458
	.8byte	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	1203893203113466329             # 0x10b5167d5f15d9d9
	.8byte	304041497688                    # 0x46ca491458
	.8byte	.L__profc___parityhi2-.L__profd___parityhi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	3943219574947026310             # 0x36b9214fb4159586
	.8byte	304041497688                    # 0x46ca491458
	.8byte	.L__profc___popcounthi2-.L__profd___popcounthi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-3976353352410196972            # 0xc8d127b190281414
	.8byte	171971253336                    # 0x280a491458
	.8byte	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	2775651425054705869             # 0x26851843dab148cd
	.8byte	-6210685127595396365            # 0xa9cf36c835dff2f3
	.8byte	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-6720389007632434094            # 0xa2bc61cdbfa0fc52
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.8byte	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	6399771733438470391             # 0x58d08e7bef2f98f7
	.8byte	1352614535537600836             # 0x12c573c0ecbfa944
	.8byte	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-5775354270414500759            # 0xafd9d1e3e3e88c69
	.8byte	1352614535537600836             # 0x12c573c0ecbfa944
	.8byte	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-359228324547500507             # 0xfb03c3bdfa166625
	.8byte	24                              # 0x18
	.8byte	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	6629829186354316853             # 0x5c01e284c62a8635
	.8byte	24                              # 0x18
	.8byte	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-4671748085078636676            # 0xbf2a9dde5cc6c77c
	.8byte	-5374843387156864121            # 0xb568b86aa1286387
	.8byte	.L__profc___mulhi3-.L__profd___mulhi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	5631431475223784324             # 0x4e26dd1711aaeb84
	.8byte	510575534943447681              # 0x715edbe6f4f2a81
	.8byte	.L__profc___divsi3-.L__profd___divsi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-8995696579390192574            # 0x8328dd9f4e404442
	.8byte	2121116644152358499             # 0x1d6fb85985deb663
	.8byte	.L__profc___modsi3-.L__profd___modsi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	2241631039268115874             # 0x1f1bdf8db510d5a2
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.8byte	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1484205535638993157            # 0xeb670aedd291c6fb
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.8byte	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	3719210884952086607             # 0x339d4a983a55d84f
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___ashldi3-.L__profd___ashldi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	8422580559269035854             # 0x74e30464d7577f4e
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___ashlti3-.L__profd___ashlti3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1855717345837424946            # 0xe63f2ae7edd45ece
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___ashrdi3-.L__profd___ashrdi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1576641649180751463            # 0xea1ea4c6027ec999
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___ashrti3-.L__profd___ashrti3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	9149352740892555196             # 0x7ef907d7ada5b7bc
	.8byte	24                              # 0x18
	.8byte	.L__profc___bswapdi2-.L__profd___bswapdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-3374945843358245974            # 0xd129c8a2fe735baa
	.8byte	24                              # 0x18
	.8byte	.L__profc___bswapsi2-.L__profd___bswapsi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	1382681549752930563             # 0x1330458b32829103
	.8byte	33814345247                     # 0x7df7df61f
	.8byte	.L__profc___clzsi2-.L__profd___clzsi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1806615119558762125            # 0xe6ed9d1ee0d9a173
	.8byte	2008                            # 0x7d8
	.8byte	.L__profc___clzti2-.L__profd___clzti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-5499644794300757496            # 0xb3ad5632ace08a08
	.8byte	-7406659272189927428            # 0x993642a254c41ffc
	.8byte	.L__profc___cmpdi2-.L__profd___cmpdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7067747365298492588             # 0x6215aec83ed1d4ac
	.8byte	24                              # 0x18
	.8byte	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-8389943187845644472            # 0x8b90ef1f5ac07f48
	.8byte	-7406659272189927428            # 0x993642a254c41ffc
	.8byte	.L__profc___cmpti2-.L__profd___cmpti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-5501728155980453225            # 0xb3a5ef643c052a97
	.8byte	33814345247                     # 0x7df7df61f
	.8byte	.L__profc___ctzsi2-.L__profd___ctzsi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7226039699906943586             # 0x64480cd265d2da62
	.8byte	2008                            # 0x7d8
	.8byte	.L__profc___ctzti2-.L__profd___ctzti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	7347651670313848928             # 0x65f81a43be5cd060
	.8byte	-6109625065311516695            # 0xab36405f8f48c7e9
	.8byte	.L__profc___ffsti2-.L__profd___ffsti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	10441766047587925               # 0x2518bb1c181e55
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___lshrdi3-.L__profd___lshrdi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-8202552090810439010            # 0x8e2aae55179b2a9e
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___lshrti3-.L__profd___lshrti3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	4756674255824047264             # 0x42031a08a2a34ca0
	.8byte	24                              # 0x18
	.8byte	.L__profc___muldsi3-.L__profd___muldsi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-737717619142303851             # 0xf5c319bbe679df95
	.8byte	24                              # 0x18
	.8byte	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	373830907859946247              # 0x5301d3ae50dcb07
	.8byte	24                              # 0x18
	.8byte	.L__profc___mulddi3-.L__profd___mulddi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	8967568818272694478             # 0x7c733453f80370ce
	.8byte	24                              # 0x18
	.8byte	.L__profc___multi3-.L__profd___multi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-2796404983763388037            # 0xd9312c7bb6a6b97b
	.8byte	24                              # 0x18
	.8byte	.L__profc___negdi2-.L__profd___negdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	8691511294418398176             # 0x789e7379011aabe0
	.8byte	24                              # 0x18
	.8byte	.L__profc___negti2-.L__profd___negti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-5102883611502574357            # 0xb92eea643e3a04eb
	.8byte	24                              # 0x18
	.8byte	.L__profc___paritydi2-.L__profd___paritydi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-7527016531061130461            # 0x978aaa58479bbb23
	.8byte	24                              # 0x18
	.8byte	.L__profc___parityti2-.L__profd___parityti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	8495812714014201054             # 0x75e730a6911054de
	.8byte	24                              # 0x18
	.8byte	.L__profc___paritysi2-.L__profd___paritysi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	4342496508124198892             # 0x3c43a5910d1df7ec
	.8byte	24                              # 0x18
	.8byte	.L__profc___popcountdi2-.L__profd___popcountdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-2149276146439341705            # 0xe22c3cbb6f433977
	.8byte	24                              # 0x18
	.8byte	.L__profc___popcountsi2-.L__profd___popcountsi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-26294454666068629              # 0xffa295553210fd6b
	.8byte	24                              # 0x18
	.8byte	.L__profc___popcountti2-.L__profd___popcountti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-1752541073601039051            # 0xe7adb92dcdba7535
	.8byte	-4868838055443737378            # 0xbc6e6995b45f54de
	.8byte	.L__profc___powidf2-.L__profd___powidf2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-3807360110918407144            # 0xcb298a26c0b76c18
	.8byte	-4868838055443737378            # 0xbc6e6995b45f54de
	.8byte	.L__profc___powisf2-.L__profd___powisf2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	-2044349310657886323            # 0xe3a10322256c078d
	.8byte	-7406659272189927428            # 0x993642a254c41ffc
	.8byte	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	448670595368434735              # 0x639ff8782193c2f
	.8byte	24                              # 0x18
	.8byte	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.8byte	2719998967855154749             # 0x25bf60a66c6f863d
	.8byte	-7406659272189927428            # 0x993642a254c41ffc
	.8byte	.L__profc___ucmpti2-.L__profd___ucmpti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
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
	.text
