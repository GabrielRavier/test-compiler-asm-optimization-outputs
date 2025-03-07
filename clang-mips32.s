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
	.set	nomicromips
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
	lui	$4, %hi($__profc_memmove)
	addiu	$2, $4, %lo($__profc_memmove)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_memmove)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_memmove)($4)
	sw	$1, 4($2)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	lw	$2, 8($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB0_8
	nop
# %bb.1:
	j	$BB0_2
	nop
$BB0_2:
	lui	$4, %hi(__llvm_gcov_ctr)
	addiu	$2, $4, %lo(__llvm_gcov_ctr)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_memmove)
	addiu	$2, $1, %lo($__profc_memmove)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$2, 12($fp)
	lw	$1, 4($fp)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	addu	$1, $1, $2
	sw	$1, 8($fp)
	j	$BB0_3
	nop
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB0_7
	nop
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	j	$BB0_5
	nop
$BB0_5:                                 #   in Loop: Header=BB0_3 Depth=1
	lui	$1, %hi($__profc_memmove)
	addiu	$2, $1, %lo($__profc_memmove)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 4($fp)
	addiu	$2, $1, -1
	sw	$2, 4($fp)
	lbu	$1, -1($1)
	lw	$2, 8($fp)
	addiu	$3, $2, -1
	sw	$3, 8($fp)
	sb	$1, -1($2)
	j	$BB0_6
	nop
$BB0_6:                                 #   in Loop: Header=BB0_3 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr)
	addiu	$2, $1, %lo(__llvm_gcov_ctr)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	sw	$1, 12($fp)
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
	lui	$1, %hi($__profc_memmove)
	addiu	$2, $1, %lo($__profc_memmove)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB0_11
	nop
$BB0_11:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB0_15
	nop
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	j	$BB0_13
	nop
$BB0_13:                                #   in Loop: Header=BB0_11 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr)
	addiu	$2, $1, %lo(__llvm_gcov_ctr)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_memmove)
	addiu	$2, $1, %lo($__profc_memmove)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 4($fp)
	addiu	$2, $1, 1
	sw	$2, 4($fp)
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	addiu	$3, $2, 1
	sw	$3, 8($fp)
	sb	$1, 0($2)
	j	$BB0_14
	nop
$BB0_14:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	sw	$1, 12($fp)
	j	$BB0_11
	nop
$BB0_15:
	lui	$1, %hi(__llvm_gcov_ctr)
	addiu	$2, $1, %lo(__llvm_gcov_ctr)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB0_16
	nop
$BB0_16:
	lui	$1, %hi(__llvm_gcov_ctr)
	addiu	$2, $1, %lo(__llvm_gcov_ctr)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	j	$BB0_17
	nop
$BB0_17:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	memccpy
memccpy:                                # @memccpy
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
	sw	$6, 24($fp)
	sw	$7, 20($fp)
	lui	$4, %hi($__profc_memccpy)
	addiu	$2, $4, %lo($__profc_memccpy)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_memccpy)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_memccpy)($4)
	sw	$1, 4($2)
	lw	$1, 32($fp)
	sw	$1, 16($fp)
	lw	$1, 28($fp)
	sw	$1, 12($fp)
	lbu	$1, 24($fp)
	sw	$1, 24($fp)
	j	$BB1_1
	nop
$BB1_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 0
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB1_6
	nop
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	j	$BB1_3
	nop
$BB1_3:                                 #   in Loop: Header=BB1_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.1)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.1)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.1)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.1)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_memccpy)
	addiu	$2, $1, %lo($__profc_memccpy)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 12($fp)
	lbu	$1, 0($1)
	lw	$2, 16($fp)
	sb	$1, 0($2)
	lw	$2, 24($fp)
	xor	$3, $1, $2
	sltu	$3, $zero, $3
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	beq	$1, $2, $BB1_6
	nop
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	j	$BB1_5
	nop
$BB1_5:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.1)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.1)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lui	$2, %hi($__profc_memccpy)
	addiu	$3, $2, %lo($__profc_memccpy)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB1_6
	nop
$BB1_6:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB1_10
	nop
# %bb.7:                                #   in Loop: Header=BB1_1 Depth=1
	j	$BB1_8
	nop
$BB1_8:                                 #   in Loop: Header=BB1_1 Depth=1
	lui	$1, %hi($__profc_memccpy)
	addiu	$2, $1, %lo($__profc_memccpy)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB1_9
	nop
$BB1_9:                                 #   in Loop: Header=BB1_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.1)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.1)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 20($fp)
	addiu	$1, $1, -1
	sw	$1, 20($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	j	$BB1_1
	nop
$BB1_10:
	lw	$1, 20($fp)
	beqz	$1, $BB1_13
	nop
# %bb.11:
	j	$BB1_12
	nop
$BB1_12:
	lui	$1, %hi(__llvm_gcov_ctr.1)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.1)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_memccpy)
	addiu	$2, $1, %lo($__profc_memccpy)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 36($fp)
	j	$BB1_14
	nop
$BB1_13:
	lui	$1, %hi(__llvm_gcov_ctr.1)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.1)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	sw	$zero, 36($fp)
	j	$BB1_14
	nop
$BB1_14:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	memchr
memchr:                                 # @memchr
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
	lui	$4, %hi($__profc_memchr)
	addiu	$2, $4, %lo($__profc_memchr)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_memchr)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_memchr)($4)
	sw	$1, 4($2)
	lw	$1, 28($fp)
	sw	$1, 16($fp)
	lbu	$1, 24($fp)
	sw	$1, 24($fp)
	j	$BB2_1
	nop
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, $BB2_6
	nop
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_3
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.2)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.2)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.2)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_memchr)
	addiu	$2, $1, %lo($__profc_memchr)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 16($fp)
	lbu	$1, 0($1)
	lw	$2, 24($fp)
	xor	$3, $1, $2
	sltu	$3, $zero, $3
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	beq	$1, $2, $BB2_6
	nop
# %bb.4:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_5
	nop
$BB2_5:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.2)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.2)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lui	$2, %hi($__profc_memchr)
	addiu	$3, $2, %lo($__profc_memchr)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	j	$BB2_6
	nop
$BB2_6:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB2_10
	nop
# %bb.7:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_8
	nop
$BB2_8:                                 #   in Loop: Header=BB2_1 Depth=1
	lui	$1, %hi($__profc_memchr)
	addiu	$2, $1, %lo($__profc_memchr)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB2_9
	nop
$BB2_9:                                 #   in Loop: Header=BB2_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.2)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.2)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	lw	$1, 20($fp)
	addiu	$1, $1, -1
	sw	$1, 20($fp)
	j	$BB2_1
	nop
$BB2_10:
	lw	$1, 20($fp)
	beqz	$1, $BB2_13
	nop
# %bb.11:
	j	$BB2_12
	nop
$BB2_12:
	lui	$1, %hi(__llvm_gcov_ctr.2)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.2)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_memchr)
	addiu	$2, $1, %lo($__profc_memchr)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 16($fp)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB2_14
	nop
$BB2_13:
	lui	$1, %hi(__llvm_gcov_ctr.2)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.2)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	addiu	$1, $zero, 0
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB2_14
	nop
$BB2_14:
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_memcmp)
	addiu	$2, $4, %lo($__profc_memcmp)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_memcmp)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_memcmp)($4)
	sw	$1, 4($2)
	lw	$1, 28($fp)
	sw	$1, 16($fp)
	lw	$1, 24($fp)
	sw	$1, 12($fp)
	j	$BB3_1
	nop
$BB3_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 0
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB3_6
	nop
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	j	$BB3_3
	nop
$BB3_3:                                 #   in Loop: Header=BB3_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.3)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.3)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.3)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.3)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_memcmp)
	addiu	$2, $1, %lo($__profc_memcmp)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 16($fp)
	lbu	$1, 0($1)
	lw	$2, 12($fp)
	lbu	$2, 0($2)
	xor	$3, $1, $2
	sltiu	$3, $3, 1
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	bne	$1, $2, $BB3_6
	nop
# %bb.4:                                #   in Loop: Header=BB3_1 Depth=1
	j	$BB3_5
	nop
$BB3_5:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.3)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.3)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lui	$2, %hi($__profc_memcmp)
	addiu	$3, $2, %lo($__profc_memcmp)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB3_6
	nop
$BB3_6:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB3_10
	nop
# %bb.7:                                #   in Loop: Header=BB3_1 Depth=1
	j	$BB3_8
	nop
$BB3_8:                                 #   in Loop: Header=BB3_1 Depth=1
	lui	$1, %hi($__profc_memcmp)
	addiu	$2, $1, %lo($__profc_memcmp)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB3_9
	nop
$BB3_9:                                 #   in Loop: Header=BB3_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.3)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.3)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 20($fp)
	addiu	$1, $1, -1
	sw	$1, 20($fp)
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, 1
	sw	$1, 12($fp)
	j	$BB3_1
	nop
$BB3_10:
	lw	$1, 20($fp)
	beqz	$1, $BB3_13
	nop
# %bb.11:
	j	$BB3_12
	nop
$BB3_12:
	lui	$1, %hi(__llvm_gcov_ctr.3)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.3)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_memcmp)
	addiu	$2, $1, %lo($__profc_memcmp)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 16($fp)
	lbu	$1, 0($1)
	lw	$2, 12($fp)
	lbu	$2, 0($2)
	subu	$1, $1, $2
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB3_14
	nop
$BB3_13:
	lui	$1, %hi(__llvm_gcov_ctr.3)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.3)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	addiu	$1, $zero, 0
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB3_14
	nop
$BB3_14:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$7, %hi(__llvm_gcov_ctr.4)
	addiu	$2, $7, %lo(__llvm_gcov_ctr.4)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.4)($7)
	addiu	$3, $3, 1
	sltiu	$8, $3, 1
	addu	$1, $1, $8
	sw	$3, %lo(__llvm_gcov_ctr.4)($7)
	sw	$1, 4($2)
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	lui	$4, %hi($__profc_memcpy)
	addiu	$2, $4, %lo($__profc_memcpy)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_memcpy)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_memcpy)($4)
	sw	$1, 4($2)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	j	$BB4_1
	nop
$BB4_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB4_5
	nop
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	j	$BB4_3
	nop
$BB4_3:                                 #   in Loop: Header=BB4_1 Depth=1
	lui	$1, %hi($__profc_memcpy)
	addiu	$2, $1, %lo($__profc_memcpy)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	addiu	$2, $1, 1
	sw	$2, 4($fp)
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	addiu	$3, $2, 1
	sw	$3, 8($fp)
	sb	$1, 0($2)
	j	$BB4_4
	nop
$BB4_4:                                 #   in Loop: Header=BB4_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.4)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.4)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	sw	$1, 12($fp)
	j	$BB4_1
	nop
$BB4_5:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_memrchr)
	addiu	$2, $4, %lo($__profc_memrchr)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_memrchr)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_memrchr)($4)
	sw	$1, 4($2)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	lbu	$1, 12($fp)
	sw	$1, 12($fp)
	j	$BB5_1
	nop
$BB5_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $1, -1
	sw	$2, 8($fp)
	beqz	$1, $BB5_7
	nop
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	j	$BB5_3
	nop
$BB5_3:                                 #   in Loop: Header=BB5_1 Depth=1
	lui	$1, %hi($__profc_memrchr)
	addiu	$2, $1, %lo($__profc_memrchr)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	lw	$2, 8($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 12($fp)
	bne	$1, $2, $BB5_6
	nop
# %bb.4:
	j	$BB5_5
	nop
$BB5_5:
	lui	$4, %hi(__llvm_gcov_ctr.5)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.5)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.5)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.5)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_memrchr)
	addiu	$2, $1, %lo($__profc_memrchr)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 4($fp)
	lw	$2, 8($fp)
	addu	$1, $1, $2
	sw	$1, 20($fp)
	j	$BB5_8
	nop
$BB5_6:                                 #   in Loop: Header=BB5_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.5)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.5)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB5_1
	nop
$BB5_7:
	lui	$1, %hi(__llvm_gcov_ctr.5)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.5)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	sw	$zero, 20($fp)
	j	$BB5_8
	nop
$BB5_8:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$7, %hi(__llvm_gcov_ctr.6)
	addiu	$2, $7, %lo(__llvm_gcov_ctr.6)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.6)($7)
	addiu	$3, $3, 1
	sltiu	$8, $3, 1
	addu	$1, $1, $8
	sw	$3, %lo(__llvm_gcov_ctr.6)($7)
	sw	$1, 4($2)
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	lui	$4, %hi($__profc_memset)
	addiu	$2, $4, %lo($__profc_memset)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_memset)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_memset)($4)
	sw	$1, 4($2)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	j	$BB6_1
	nop
$BB6_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB6_5
	nop
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	j	$BB6_3
	nop
$BB6_3:                                 #   in Loop: Header=BB6_1 Depth=1
	lui	$1, %hi($__profc_memset)
	addiu	$2, $1, %lo($__profc_memset)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 16($fp)
	lw	$2, 8($fp)
	sb	$1, 0($2)
	j	$BB6_4
	nop
$BB6_4:                                 #   in Loop: Header=BB6_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.6)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.6)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	sw	$1, 12($fp)
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	j	$BB6_1
	nop
$BB6_5:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.7)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.7)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.7)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.7)($6)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc_stpcpy)
	addiu	$2, $4, %lo($__profc_stpcpy)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_stpcpy)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_stpcpy)($4)
	sw	$1, 4($2)
	j	$BB7_1
	nop
$BB7_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 0($fp)
	lbu	$1, 0($1)
	lw	$2, 4($fp)
	sb	$1, 0($2)
	beqz	$1, $BB7_5
	nop
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	j	$BB7_3
	nop
$BB7_3:                                 #   in Loop: Header=BB7_1 Depth=1
	lui	$1, %hi($__profc_stpcpy)
	addiu	$2, $1, %lo($__profc_stpcpy)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB7_4
	nop
$BB7_4:                                 #   in Loop: Header=BB7_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.7)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.7)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 0($fp)
	addiu	$1, $1, 1
	sw	$1, 0($fp)
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	j	$BB7_1
	nop
$BB7_5:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.8)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.8)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.8)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.8)($6)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	lui	$4, %hi($__profc_strchrnul)
	addiu	$2, $4, %lo($__profc_strchrnul)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_strchrnul)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_strchrnul)($4)
	sw	$1, 4($2)
	lbu	$1, 8($fp)
	sw	$1, 8($fp)
	j	$BB8_1
	nop
$BB8_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	lb	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB8_6
	nop
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_3
	nop
$BB8_3:                                 #   in Loop: Header=BB8_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.8)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.8)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_strchrnul)
	addiu	$2, $1, %lo($__profc_strchrnul)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 12($fp)
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	xor	$3, $1, $2
	sltu	$3, $zero, $3
	sw	$3, 0($fp)                      # 4-byte Folded Spill
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	beq	$1, $2, $BB8_6
	nop
# %bb.4:                                #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_5
	nop
$BB8_5:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.8)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.8)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_strchrnul)
	addiu	$3, $2, %lo($__profc_strchrnul)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB8_6
	nop
$BB8_6:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB8_10
	nop
# %bb.7:                                #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_8
	nop
$BB8_8:                                 #   in Loop: Header=BB8_1 Depth=1
	lui	$1, %hi($__profc_strchrnul)
	addiu	$2, $1, %lo($__profc_strchrnul)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB8_9
	nop
$BB8_9:                                 #   in Loop: Header=BB8_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.8)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.8)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 12($fp)
	addiu	$1, $1, 1
	sw	$1, 12($fp)
	j	$BB8_1
	nop
$BB8_10:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_strchr)
	addiu	$2, $4, %lo($__profc_strchr)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_strchr)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_strchr)($4)
	sw	$1, 4($2)
	j	$BB9_2
	nop
$BB9_1:                                 #   in Loop: Header=BB9_2 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.9)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.9)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_strchr)
	addiu	$2, $1, %lo($__profc_strchr)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB9_2
	nop
$BB9_2:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	lb	$1, 0($1)
	lw	$2, 4($fp)
	bne	$1, $2, $BB9_5
	nop
# %bb.3:
	j	$BB9_4
	nop
$BB9_4:
	lui	$4, %hi(__llvm_gcov_ctr.9)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.9)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.9)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.9)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_strchr)
	addiu	$2, $1, %lo($__profc_strchr)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 8($fp)
	sw	$1, 12($fp)
	j	$BB9_9
	nop
$BB9_5:                                 #   in Loop: Header=BB9_2 Depth=1
	j	$BB9_6
	nop
$BB9_6:                                 #   in Loop: Header=BB9_2 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $1, 1
	sw	$2, 8($fp)
	lbu	$1, 0($1)
	bnez	$1, $BB9_1
	nop
# %bb.7:
	j	$BB9_8
	nop
$BB9_8:
	lui	$1, %hi(__llvm_gcov_ctr.9)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.9)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	sw	$zero, 12($fp)
	j	$BB9_9
	nop
$BB9_9:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.10)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.10)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.10)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.10)($6)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	lui	$4, %hi($__profc_strcmp)
	addiu	$2, $4, %lo($__profc_strcmp)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_strcmp)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_strcmp)($4)
	sw	$1, 4($2)
	j	$BB10_1
	nop
$BB10_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	lb	$1, 0($1)
	lw	$2, 8($fp)
	lb	$2, 0($2)
	addiu	$3, $zero, 0
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	bne	$1, $2, $BB10_6
	nop
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	j	$BB10_3
	nop
$BB10_3:                                #   in Loop: Header=BB10_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.10)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.10)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_strcmp)
	addiu	$2, $1, %lo($__profc_strcmp)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 12($fp)
	lb	$1, 0($1)
	sltu	$2, $zero, $1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB10_6
	nop
# %bb.4:                                #   in Loop: Header=BB10_1 Depth=1
	j	$BB10_5
	nop
$BB10_5:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.10)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.10)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_strcmp)
	addiu	$3, $2, %lo($__profc_strcmp)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB10_6
	nop
$BB10_6:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB10_10
	nop
# %bb.7:                                #   in Loop: Header=BB10_1 Depth=1
	j	$BB10_8
	nop
$BB10_8:                                #   in Loop: Header=BB10_1 Depth=1
	lui	$1, %hi($__profc_strcmp)
	addiu	$2, $1, %lo($__profc_strcmp)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB10_9
	nop
$BB10_9:                                #   in Loop: Header=BB10_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.10)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.10)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 12($fp)
	addiu	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	j	$BB10_1
	nop
$BB10_10:
	lw	$1, 12($fp)
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	lbu	$2, 0($2)
	subu	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.11)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.11)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.11)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.11)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_strlen)
	addiu	$2, $4, %lo($__profc_strlen)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_strlen)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_strlen)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	j	$BB11_1
	nop
$BB11_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lbu	$1, 0($1)
	beqz	$1, $BB11_5
	nop
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	j	$BB11_3
	nop
$BB11_3:                                #   in Loop: Header=BB11_1 Depth=1
	lui	$1, %hi($__profc_strlen)
	addiu	$2, $1, %lo($__profc_strlen)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB11_4
	nop
$BB11_4:                                #   in Loop: Header=BB11_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.11)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.11)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	j	$BB11_1
	nop
$BB11_5:
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	subu	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_strncmp)
	addiu	$2, $4, %lo($__profc_strncmp)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_strncmp)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_strncmp)($4)
	sw	$1, 4($2)
	lw	$1, 24($fp)
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	addiu	$2, $1, -1
	sw	$2, 16($fp)
	bnez	$1, $BB12_3
	nop
# %bb.1:
	j	$BB12_2
	nop
$BB12_2:
	lui	$1, %hi(__llvm_gcov_ctr.12)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.12)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_strncmp)
	addiu	$2, $1, %lo($__profc_strncmp)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	sw	$zero, 28($fp)
	j	$BB12_20
	nop
$BB12_3:
	lui	$4, %hi(__llvm_gcov_ctr.12)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.12)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.12)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.12)($4)
	sw	$1, 4($2)
	j	$BB12_4
	nop
$BB12_4:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	lbu	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB12_15
	nop
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	j	$BB12_6
	nop
$BB12_6:                                #   in Loop: Header=BB12_4 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.12)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.12)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_strncmp)
	addiu	$2, $1, %lo($__profc_strncmp)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	lw	$1, 8($fp)
	lbu	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB12_15
	nop
# %bb.7:                                #   in Loop: Header=BB12_4 Depth=1
	j	$BB12_8
	nop
$BB12_8:                                #   in Loop: Header=BB12_4 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.12)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.12)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_strncmp)
	addiu	$2, $1, %lo($__profc_strncmp)
	lw	$1, 68($2)
	lw	$3, 64($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 64($2)
	sw	$1, 68($2)
	j	$BB12_9
	nop
$BB12_9:                                #   in Loop: Header=BB12_4 Depth=1
	lui	$1, %hi($__profc_strncmp)
	addiu	$2, $1, %lo($__profc_strncmp)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 16($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB12_15
	nop
# %bb.10:                               #   in Loop: Header=BB12_4 Depth=1
	j	$BB12_11
	nop
$BB12_11:                               #   in Loop: Header=BB12_4 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.12)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.12)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_strncmp)
	addiu	$2, $1, %lo($__profc_strncmp)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	j	$BB12_12
	nop
$BB12_12:                               #   in Loop: Header=BB12_4 Depth=1
	lui	$1, %hi($__profc_strncmp)
	addiu	$2, $1, %lo($__profc_strncmp)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 12($fp)
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	lbu	$2, 0($2)
	xor	$3, $1, $2
	sltiu	$3, $3, 1
	sw	$3, 0($fp)                      # 4-byte Folded Spill
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	bne	$1, $2, $BB12_15
	nop
# %bb.13:                               #   in Loop: Header=BB12_4 Depth=1
	j	$BB12_14
	nop
$BB12_14:                               #   in Loop: Header=BB12_4 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.12)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.12)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lui	$2, %hi($__profc_strncmp)
	addiu	$3, $2, %lo($__profc_strncmp)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB12_15
	nop
$BB12_15:                               #   in Loop: Header=BB12_4 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB12_19
	nop
# %bb.16:                               #   in Loop: Header=BB12_4 Depth=1
	j	$BB12_17
	nop
$BB12_17:                               #   in Loop: Header=BB12_4 Depth=1
	lui	$1, %hi($__profc_strncmp)
	addiu	$2, $1, %lo($__profc_strncmp)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	j	$BB12_18
	nop
$BB12_18:                               #   in Loop: Header=BB12_4 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.12)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.12)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 12($fp)
	addiu	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	addiu	$1, $1, -1
	sw	$1, 16($fp)
	j	$BB12_4
	nop
$BB12_19:
	lw	$1, 12($fp)
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	lbu	$2, 0($2)
	subu	$1, $1, $2
	sw	$1, 28($fp)
	j	$BB12_20
	nop
$BB12_20:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$7, %hi(__llvm_gcov_ctr.13)
	addiu	$2, $7, %lo(__llvm_gcov_ctr.13)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.13)($7)
	addiu	$3, $3, 1
	sltiu	$8, $3, 1
	addu	$1, $1, $8
	sw	$3, %lo(__llvm_gcov_ctr.13)($7)
	sw	$1, 4($2)
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	lui	$4, %hi($__profc_swab)
	addiu	$2, $4, %lo($__profc_swab)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_swab)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_swab)($4)
	sw	$1, 4($2)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	j	$BB13_1
	nop
$BB13_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	slti	$1, $1, 2
	bnez	$1, $BB13_5
	nop
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	j	$BB13_3
	nop
$BB13_3:                                #   in Loop: Header=BB13_1 Depth=1
	lui	$1, %hi($__profc_swab)
	addiu	$2, $1, %lo($__profc_swab)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 8($fp)
	lbu	$1, 1($1)
	lw	$2, 4($fp)
	sb	$1, 0($2)
	lw	$1, 8($fp)
	lbu	$1, 0($1)
	lw	$2, 4($fp)
	sb	$1, 1($2)
	lw	$1, 4($fp)
	addiu	$1, $1, 2
	sw	$1, 4($fp)
	lw	$1, 8($fp)
	addiu	$1, $1, 2
	sw	$1, 8($fp)
	j	$BB13_4
	nop
$BB13_4:                                #   in Loop: Header=BB13_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.13)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.13)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 12($fp)
	addiu	$1, $1, -2
	sw	$1, 12($fp)
	j	$BB13_1
	nop
$BB13_5:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.14)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.14)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.14)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.14)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_isalpha)
	addiu	$2, $4, %lo($__profc_isalpha)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_isalpha)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_isalpha)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	ori	$1, $1, 32
	addiu	$1, $1, -97
	sltiu	$2, $1, 26
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.15)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.15)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.15)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.15)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_isascii)
	addiu	$2, $4, %lo($__profc_isascii)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_isascii)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_isascii)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	addiu	$2, $zero, -128
	and	$1, $1, $2
	sltiu	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	isblank
isblank:                                # @isblank
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
	lui	$5, %hi(__llvm_gcov_ctr.16)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.16)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.16)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.16)($5)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	lui	$4, %hi($__profc_isblank)
	addiu	$2, $4, %lo($__profc_isblank)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_isblank)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_isblank)($4)
	sw	$1, 4($2)
	lw	$1, 12($fp)
	addiu	$3, $zero, 1
	addiu	$2, $zero, 32
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	beq	$1, $2, $BB16_5
	nop
# %bb.1:
	j	$BB16_2
	nop
$BB16_2:
	lui	$1, %hi(__llvm_gcov_ctr.16)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.16)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_isblank)
	addiu	$2, $1, %lo($__profc_isblank)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 12($fp)
	addiu	$2, $zero, 9
	xor	$3, $1, $2
	sltiu	$3, $3, 1
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	beq	$1, $2, $BB16_5
	nop
# %bb.3:
	j	$BB16_4
	nop
$BB16_4:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.16)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.16)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_isblank)
	addiu	$3, $2, %lo($__profc_isblank)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB16_5
	nop
$BB16_5:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	iscntrl
iscntrl:                                # @iscntrl
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
	lui	$5, %hi(__llvm_gcov_ctr.17)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.17)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.17)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.17)($5)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	lui	$4, %hi($__profc_iscntrl)
	addiu	$2, $4, %lo($__profc_iscntrl)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_iscntrl)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_iscntrl)($4)
	sw	$1, 4($2)
	lw	$1, 12($fp)
	sltiu	$1, $1, 32
	addiu	$2, $zero, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB17_5
	nop
# %bb.1:
	j	$BB17_2
	nop
$BB17_2:
	lui	$1, %hi(__llvm_gcov_ctr.17)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.17)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_iscntrl)
	addiu	$2, $1, %lo($__profc_iscntrl)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 12($fp)
	addiu	$2, $zero, 127
	xor	$3, $1, $2
	sltiu	$3, $3, 1
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	beq	$1, $2, $BB17_5
	nop
# %bb.3:
	j	$BB17_4
	nop
$BB17_4:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.17)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.17)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_iscntrl)
	addiu	$3, $2, %lo($__profc_iscntrl)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB17_5
	nop
$BB17_5:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.18)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.18)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.18)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.18)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_isdigit)
	addiu	$2, $4, %lo($__profc_isdigit)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_isdigit)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_isdigit)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	addiu	$1, $1, -48
	sltiu	$2, $1, 10
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.19)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.19)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.19)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.19)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_isgraph)
	addiu	$2, $4, %lo($__profc_isgraph)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_isgraph)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_isgraph)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	addiu	$1, $1, -33
	sltiu	$2, $1, 94
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.20)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.20)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.20)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.20)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_islower)
	addiu	$2, $4, %lo($__profc_islower)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_islower)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_islower)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	addiu	$1, $1, -97
	sltiu	$2, $1, 26
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.21)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.21)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.21)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.21)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_isprint)
	addiu	$2, $4, %lo($__profc_isprint)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_isprint)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_isprint)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	addiu	$1, $1, -32
	sltiu	$2, $1, 95
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	isspace
isspace:                                # @isspace
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
	lui	$5, %hi(__llvm_gcov_ctr.22)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.22)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.22)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.22)($5)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	lui	$4, %hi($__profc_isspace)
	addiu	$2, $4, %lo($__profc_isspace)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_isspace)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_isspace)($4)
	sw	$1, 4($2)
	lw	$1, 12($fp)
	addiu	$3, $zero, 1
	addiu	$2, $zero, 32
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	beq	$1, $2, $BB22_5
	nop
# %bb.1:
	j	$BB22_2
	nop
$BB22_2:
	lui	$1, %hi(__llvm_gcov_ctr.22)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.22)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_isspace)
	addiu	$2, $1, %lo($__profc_isspace)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 12($fp)
	addiu	$1, $1, -9
	sltiu	$1, $1, 5
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	move	$2, $1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB22_5
	nop
# %bb.3:
	j	$BB22_4
	nop
$BB22_4:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.22)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.22)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_isspace)
	addiu	$3, $2, %lo($__profc_isspace)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB22_5
	nop
$BB22_5:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.23)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.23)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.23)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.23)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_isupper)
	addiu	$2, $4, %lo($__profc_isupper)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_isupper)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_isupper)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	addiu	$1, $1, -65
	sltiu	$2, $1, 26
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	iswcntrl
iswcntrl:                               # @iswcntrl
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
	lui	$5, %hi(__llvm_gcov_ctr.24)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.24)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.24)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.24)($5)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	lui	$4, %hi($__profc_iswcntrl)
	addiu	$2, $4, %lo($__profc_iswcntrl)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_iswcntrl)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_iswcntrl)($4)
	sw	$1, 4($2)
	lw	$1, 12($fp)
	sltiu	$1, $1, 32
	addiu	$2, $zero, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB24_11
	nop
# %bb.1:
	j	$BB24_2
	nop
$BB24_2:
	lui	$1, %hi(__llvm_gcov_ctr.24)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.24)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_iswcntrl)
	addiu	$2, $1, %lo($__profc_iswcntrl)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 12($fp)
	addiu	$1, $1, -127
	sltiu	$1, $1, 33
	addiu	$2, $zero, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB24_11
	nop
# %bb.3:
	j	$BB24_4
	nop
$BB24_4:
	lui	$1, %hi(__llvm_gcov_ctr.24)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.24)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_iswcntrl)
	addiu	$2, $1, %lo($__profc_iswcntrl)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	j	$BB24_5
	nop
$BB24_5:
	lui	$1, %hi($__profc_iswcntrl)
	addiu	$2, $1, %lo($__profc_iswcntrl)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 12($fp)
	addiu	$1, $1, -8232
	sltiu	$1, $1, 2
	addiu	$2, $zero, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB24_11
	nop
# %bb.6:
	j	$BB24_7
	nop
$BB24_7:
	lui	$1, %hi(__llvm_gcov_ctr.24)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.24)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_iswcntrl)
	addiu	$2, $1, %lo($__profc_iswcntrl)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	j	$BB24_8
	nop
$BB24_8:
	lui	$1, %hi($__profc_iswcntrl)
	addiu	$2, $1, %lo($__profc_iswcntrl)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 12($fp)
	lui	$2, 65535
	ori	$2, $2, 7
	addu	$1, $1, $2
	sltiu	$1, $1, 3
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	move	$2, $1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB24_11
	nop
# %bb.9:
	j	$BB24_10
	nop
$BB24_10:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.24)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.24)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lui	$2, %hi($__profc_iswcntrl)
	addiu	$3, $2, %lo($__profc_iswcntrl)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB24_11
	nop
$BB24_11:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.25)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.25)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.25)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.25)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_iswdigit)
	addiu	$2, $4, %lo($__profc_iswdigit)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_iswdigit)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_iswdigit)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	addiu	$1, $1, -48
	sltiu	$2, $1, 10
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_iswprint)
	addiu	$2, $4, %lo($__profc_iswprint)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_iswprint)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_iswprint)($4)
	sw	$1, 4($2)
	lw	$1, 0($fp)
	sltiu	$1, $1, 255
	beqz	$1, $BB26_3
	nop
# %bb.1:
	j	$BB26_2
	nop
$BB26_2:
	lui	$4, %hi(__llvm_gcov_ctr.26)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.26)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.26)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.26)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_iswprint)
	addiu	$2, $1, %lo($__profc_iswprint)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 0($fp)
	addiu	$1, $1, 1
	andi	$2, $1, 127
	addiu	$1, $zero, 32
	slt	$1, $1, $2
	sw	$1, 4($fp)
	j	$BB26_19
	nop
$BB26_3:
	lw	$1, 0($fp)
	sltiu	$1, $1, 8232
	bnez	$1, $BB26_11
	nop
# %bb.4:
	j	$BB26_5
	nop
$BB26_5:
	lui	$1, %hi(__llvm_gcov_ctr.26)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.26)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_iswprint)
	addiu	$2, $1, %lo($__profc_iswprint)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 0($fp)
	addiu	$1, $1, -8234
	ori	$2, $zero, 47062
	sltu	$1, $1, $2
	bnez	$1, $BB26_11
	nop
# %bb.6:
	j	$BB26_7
	nop
$BB26_7:
	lui	$1, %hi(__llvm_gcov_ctr.26)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.26)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_iswprint)
	addiu	$2, $1, %lo($__profc_iswprint)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	j	$BB26_8
	nop
$BB26_8:
	lui	$1, %hi($__profc_iswprint)
	addiu	$2, $1, %lo($__profc_iswprint)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 0($fp)
	lui	$2, 65535
	ori	$2, $2, 8192
	addu	$1, $1, $2
	sltiu	$1, $1, 8185
	bnez	$1, $BB26_11
	nop
# %bb.9:
	j	$BB26_10
	nop
$BB26_10:
	lui	$1, %hi($__profc_iswprint)
	addiu	$2, $1, %lo($__profc_iswprint)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	j	$BB26_12
	nop
$BB26_11:
	lui	$1, %hi(__llvm_gcov_ctr.26)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.26)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_iswprint)
	addiu	$2, $1, %lo($__profc_iswprint)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	addiu	$1, $zero, 1
	sw	$1, 4($fp)
	j	$BB26_19
	nop
$BB26_12:
	lw	$1, 0($fp)
	lui	$2, 65535
	ori	$2, $2, 4
	addu	$2, $1, $2
	lui	$1, 16
	ori	$1, $1, 3
	sltu	$1, $1, $2
	bnez	$1, $BB26_17
	nop
# %bb.13:
	j	$BB26_14
	nop
$BB26_14:
	lui	$1, %hi(__llvm_gcov_ctr.26)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.26)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_iswprint)
	addiu	$2, $1, %lo($__profc_iswprint)
	lw	$1, 68($2)
	lw	$3, 64($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 64($2)
	sw	$1, 68($2)
	lw	$1, 0($fp)
	andi	$1, $1, 65534
	ori	$2, $zero, 65534
	beq	$1, $2, $BB26_17
	nop
# %bb.15:
	j	$BB26_16
	nop
$BB26_16:
	lui	$1, %hi($__profc_iswprint)
	addiu	$2, $1, %lo($__profc_iswprint)
	lw	$1, 76($2)
	lw	$3, 72($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 72($2)
	sw	$1, 76($2)
	j	$BB26_18
	nop
$BB26_17:
	lui	$1, %hi(__llvm_gcov_ctr.26)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.26)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lui	$1, %hi($__profc_iswprint)
	addiu	$2, $1, %lo($__profc_iswprint)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	sw	$zero, 4($fp)
	j	$BB26_19
	nop
$BB26_18:
	lui	$1, %hi(__llvm_gcov_ctr.26)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.26)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	addiu	$1, $zero, 1
	sw	$1, 4($fp)
	j	$BB26_19
	nop
$BB26_19:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	iswxdigit
iswxdigit:                              # @iswxdigit
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
	lui	$5, %hi(__llvm_gcov_ctr.27)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.27)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.27)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.27)($5)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	lui	$4, %hi($__profc_iswxdigit)
	addiu	$2, $4, %lo($__profc_iswxdigit)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_iswxdigit)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_iswxdigit)($4)
	sw	$1, 4($2)
	lw	$1, 12($fp)
	addiu	$1, $1, -48
	sltiu	$1, $1, 10
	addiu	$2, $zero, 1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB27_5
	nop
# %bb.1:
	j	$BB27_2
	nop
$BB27_2:
	lui	$1, %hi(__llvm_gcov_ctr.27)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.27)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_iswxdigit)
	addiu	$2, $1, %lo($__profc_iswxdigit)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 12($fp)
	ori	$1, $1, 32
	addiu	$1, $1, -97
	sltiu	$1, $1, 6
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	move	$2, $1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB27_5
	nop
# %bb.3:
	j	$BB27_4
	nop
$BB27_4:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.27)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.27)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_iswxdigit)
	addiu	$3, $2, %lo($__profc_iswxdigit)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB27_5
	nop
$BB27_5:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.28)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.28)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.28)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.28)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_toascii)
	addiu	$2, $4, %lo($__profc_toascii)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_toascii)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_toascii)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	andi	$2, $1, 127
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	fdim
fdim:                                   # @fdim
	.frame	$fp,72,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -72
	sw	$ra, 68($sp)                    # 4-byte Folded Spill
	sw	$fp, 64($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 52($fp)
	sw	$4, 48($fp)
	sw	$7, 44($fp)
	sw	$6, 40($fp)
	lui	$4, %hi($__profc_fdim)
	addiu	$2, $4, %lo($__profc_fdim)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_fdim)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_fdim)($4)
	sw	$1, 4($2)
	lw	$2, 48($fp)
	lw	$1, 52($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $1, $3
	sw	$4, 32($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 36($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB29_2
	nop
# %bb.1:
	lw	$1, 32($fp)                     # 4-byte Folded Reload
	sw	$1, 36($fp)                     # 4-byte Folded Spill
$BB29_2:
	lw	$1, 36($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB29_5
	nop
# %bb.3:
	j	$BB29_4
	nop
$BB29_4:
	lui	$4, %hi(__llvm_gcov_ctr.29)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.29)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.29)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.29)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_fdim)
	addiu	$2, $1, %lo($__profc_fdim)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 48($fp)
	lw	$2, 52($fp)
	sw	$2, 60($fp)
	sw	$1, 56($fp)
	j	$BB29_15
	nop
$BB29_5:
	lw	$2, 40($fp)
	lw	$1, 44($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $1, $3
	sw	$4, 24($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 28($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB29_7
	nop
# %bb.6:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	sw	$1, 28($fp)                     # 4-byte Folded Spill
$BB29_7:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB29_10
	nop
# %bb.8:
	j	$BB29_9
	nop
$BB29_9:
	lui	$1, %hi(__llvm_gcov_ctr.29)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.29)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_fdim)
	addiu	$2, $1, %lo($__profc_fdim)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 40($fp)
	lw	$2, 44($fp)
	sw	$2, 60($fp)
	sw	$1, 56($fp)
	j	$BB29_15
	nop
$BB29_10:
	lw	$4, 48($fp)
	lw	$5, 52($fp)
	lw	$6, 40($fp)
	lw	$7, 44($fp)
	jal	__gtdf2
	nop
	blez	$2, $BB29_13
	nop
# %bb.11:
	j	$BB29_12
	nop
$BB29_12:
	lui	$1, %hi(__llvm_gcov_ctr.29)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.29)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_fdim)
	addiu	$2, $1, %lo($__profc_fdim)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$4, 48($fp)
	lw	$5, 52($fp)
	lw	$6, 40($fp)
	lw	$7, 44($fp)
	jal	__subdf3
	nop
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	j	$BB29_14
	nop
$BB29_13:
	lui	$1, %hi(__llvm_gcov_ctr.29)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.29)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	addiu	$1, $zero, 0
	move	$2, $1
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB29_14
	nop
$BB29_14:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 56($fp)
	sw	$1, 60($fp)
	j	$BB29_15
	nop
$BB29_15:
	lw	$2, 56($fp)
	lw	$3, 60($fp)
	move	$sp, $fp
	lw	$fp, 64($sp)                    # 4-byte Folded Reload
	lw	$ra, 68($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 72
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_fdimf)
	addiu	$2, $4, %lo($__profc_fdimf)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_fdimf)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_fdimf)($4)
	sw	$1, 4($2)
	lw	$1, 24($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, $BB30_3
	nop
# %bb.1:
	j	$BB30_2
	nop
$BB30_2:
	lui	$4, %hi(__llvm_gcov_ctr.30)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.30)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.30)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.30)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_fdimf)
	addiu	$2, $1, %lo($__profc_fdimf)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 24($fp)
	sw	$1, 28($fp)
	j	$BB30_11
	nop
$BB30_3:
	lw	$1, 20($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, $BB30_6
	nop
# %bb.4:
	j	$BB30_5
	nop
$BB30_5:
	lui	$1, %hi(__llvm_gcov_ctr.30)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.30)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_fdimf)
	addiu	$2, $1, %lo($__profc_fdimf)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
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
	lui	$1, %hi(__llvm_gcov_ctr.30)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.30)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_fdimf)
	addiu	$2, $1, %lo($__profc_fdimf)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$4, 24($fp)
	lw	$5, 20($fp)
	jal	__subsf3
	nop
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	j	$BB30_10
	nop
$BB30_9:
	lui	$1, %hi(__llvm_gcov_ctr.30)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.30)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	addiu	$1, $zero, 0
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	j	$BB30_10
	nop
$BB30_10:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	sw	$1, 28($fp)
	j	$BB30_11
	nop
$BB30_11:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	fmax
fmax:                                   # @fmax
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 60($fp)
	sw	$4, 56($fp)
	sw	$7, 52($fp)
	sw	$6, 48($fp)
	lui	$4, %hi($__profc_fmax)
	addiu	$2, $4, %lo($__profc_fmax)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_fmax)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_fmax)($4)
	sw	$1, 4($2)
	lw	$2, 56($fp)
	lw	$1, 60($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $1, $3
	sw	$4, 40($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 44($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB31_2
	nop
# %bb.1:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	sw	$1, 44($fp)                     # 4-byte Folded Spill
$BB31_2:
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB31_5
	nop
# %bb.3:
	j	$BB31_4
	nop
$BB31_4:
	lui	$4, %hi(__llvm_gcov_ctr.31)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.31)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.31)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.31)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_fmax)
	addiu	$2, $1, %lo($__profc_fmax)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 48($fp)
	lw	$2, 52($fp)
	sw	$2, 68($fp)
	sw	$1, 64($fp)
	j	$BB31_22
	nop
$BB31_5:
	lw	$2, 48($fp)
	lw	$1, 52($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $1, $3
	sw	$4, 32($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 36($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB31_7
	nop
# %bb.6:
	lw	$1, 32($fp)                     # 4-byte Folded Reload
	sw	$1, 36($fp)                     # 4-byte Folded Spill
$BB31_7:
	lw	$1, 36($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB31_10
	nop
# %bb.8:
	j	$BB31_9
	nop
$BB31_9:
	lui	$1, %hi(__llvm_gcov_ctr.31)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.31)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_fmax)
	addiu	$2, $1, %lo($__profc_fmax)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 56($fp)
	lw	$2, 60($fp)
	sw	$2, 68($fp)
	sw	$1, 64($fp)
	j	$BB31_22
	nop
$BB31_10:
	lw	$1, 60($fp)
	srl	$1, $1, 31
	lw	$2, 52($fp)
	srl	$2, $2, 31
	beq	$1, $2, $BB31_17
	nop
# %bb.11:
	j	$BB31_12
	nop
$BB31_12:
	lui	$1, %hi($__profc_fmax)
	addiu	$2, $1, %lo($__profc_fmax)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 60($fp)
	bgez	$1, $BB31_15
	nop
# %bb.13:
	j	$BB31_14
	nop
$BB31_14:
	lui	$1, %hi(__llvm_gcov_ctr.31)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.31)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_fmax)
	addiu	$2, $1, %lo($__profc_fmax)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 52($fp)
	lw	$2, 48($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB31_16
	nop
$BB31_15:
	lui	$1, %hi(__llvm_gcov_ctr.31)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.31)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 60($fp)
	lw	$2, 56($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB31_16
	nop
$BB31_16:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$2, 64($fp)
	sw	$1, 68($fp)
	j	$BB31_22
	nop
$BB31_17:
	lw	$4, 56($fp)
	lw	$5, 60($fp)
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	jal	__ltdf2
	nop
	bgez	$2, $BB31_20
	nop
# %bb.18:
	j	$BB31_19
	nop
$BB31_19:
	lui	$1, %hi(__llvm_gcov_ctr.31)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.31)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_fmax)
	addiu	$2, $1, %lo($__profc_fmax)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 52($fp)
	lw	$2, 48($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB31_21
	nop
$BB31_20:
	lui	$1, %hi(__llvm_gcov_ctr.31)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.31)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 60($fp)
	lw	$2, 56($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB31_21
	nop
$BB31_21:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 64($fp)
	sw	$1, 68($fp)
	j	$BB31_22
	nop
$BB31_22:
	lw	$2, 64($fp)
	lw	$3, 68($fp)
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_fmaxf)
	addiu	$2, $4, %lo($__profc_fmaxf)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_fmaxf)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_fmaxf)($4)
	sw	$1, 4($2)
	lw	$1, 32($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, $BB32_3
	nop
# %bb.1:
	j	$BB32_2
	nop
$BB32_2:
	lui	$4, %hi(__llvm_gcov_ctr.32)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.32)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.32)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.32)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_fmaxf)
	addiu	$2, $1, %lo($__profc_fmaxf)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 28($fp)
	sw	$1, 36($fp)
	j	$BB32_18
	nop
$BB32_3:
	lw	$1, 28($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, $BB32_6
	nop
# %bb.4:
	j	$BB32_5
	nop
$BB32_5:
	lui	$1, %hi(__llvm_gcov_ctr.32)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.32)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_fmaxf)
	addiu	$2, $1, %lo($__profc_fmaxf)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
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
	lui	$1, %hi($__profc_fmaxf)
	addiu	$2, $1, %lo($__profc_fmaxf)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 32($fp)
	bgez	$1, $BB32_11
	nop
# %bb.9:
	j	$BB32_10
	nop
$BB32_10:
	lui	$1, %hi(__llvm_gcov_ctr.32)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.32)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_fmaxf)
	addiu	$2, $1, %lo($__profc_fmaxf)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 28($fp)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	j	$BB32_12
	nop
$BB32_11:
	lui	$1, %hi(__llvm_gcov_ctr.32)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.32)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 32($fp)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	j	$BB32_12
	nop
$BB32_12:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
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
	lui	$1, %hi(__llvm_gcov_ctr.32)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.32)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_fmaxf)
	addiu	$2, $1, %lo($__profc_fmaxf)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 28($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB32_17
	nop
$BB32_16:
	lui	$1, %hi(__llvm_gcov_ctr.32)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.32)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 32($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB32_17
	nop
$BB32_17:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$1, 36($fp)
	j	$BB32_18
	nop
$BB32_18:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	fmaxl
fmaxl:                                  # @fmaxl
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 60($fp)
	sw	$4, 56($fp)
	sw	$7, 52($fp)
	sw	$6, 48($fp)
	lui	$4, %hi($__profc_fmaxl)
	addiu	$2, $4, %lo($__profc_fmaxl)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_fmaxl)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_fmaxl)($4)
	sw	$1, 4($2)
	lw	$2, 56($fp)
	lw	$1, 60($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $1, $3
	sw	$4, 40($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 44($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB33_2
	nop
# %bb.1:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	sw	$1, 44($fp)                     # 4-byte Folded Spill
$BB33_2:
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB33_5
	nop
# %bb.3:
	j	$BB33_4
	nop
$BB33_4:
	lui	$4, %hi(__llvm_gcov_ctr.33)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.33)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.33)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.33)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_fmaxl)
	addiu	$2, $1, %lo($__profc_fmaxl)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 48($fp)
	lw	$2, 52($fp)
	sw	$2, 68($fp)
	sw	$1, 64($fp)
	j	$BB33_22
	nop
$BB33_5:
	lw	$2, 48($fp)
	lw	$1, 52($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $1, $3
	sw	$4, 32($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 36($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB33_7
	nop
# %bb.6:
	lw	$1, 32($fp)                     # 4-byte Folded Reload
	sw	$1, 36($fp)                     # 4-byte Folded Spill
$BB33_7:
	lw	$1, 36($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB33_10
	nop
# %bb.8:
	j	$BB33_9
	nop
$BB33_9:
	lui	$1, %hi(__llvm_gcov_ctr.33)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.33)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_fmaxl)
	addiu	$2, $1, %lo($__profc_fmaxl)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 56($fp)
	lw	$2, 60($fp)
	sw	$2, 68($fp)
	sw	$1, 64($fp)
	j	$BB33_22
	nop
$BB33_10:
	lw	$1, 60($fp)
	srl	$1, $1, 31
	lw	$2, 52($fp)
	srl	$2, $2, 31
	beq	$1, $2, $BB33_17
	nop
# %bb.11:
	j	$BB33_12
	nop
$BB33_12:
	lui	$1, %hi($__profc_fmaxl)
	addiu	$2, $1, %lo($__profc_fmaxl)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 60($fp)
	bgez	$1, $BB33_15
	nop
# %bb.13:
	j	$BB33_14
	nop
$BB33_14:
	lui	$1, %hi(__llvm_gcov_ctr.33)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.33)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_fmaxl)
	addiu	$2, $1, %lo($__profc_fmaxl)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 52($fp)
	lw	$2, 48($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB33_16
	nop
$BB33_15:
	lui	$1, %hi(__llvm_gcov_ctr.33)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.33)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 60($fp)
	lw	$2, 56($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB33_16
	nop
$BB33_16:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$2, 64($fp)
	sw	$1, 68($fp)
	j	$BB33_22
	nop
$BB33_17:
	lw	$4, 56($fp)
	lw	$5, 60($fp)
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	jal	__ltdf2
	nop
	bgez	$2, $BB33_20
	nop
# %bb.18:
	j	$BB33_19
	nop
$BB33_19:
	lui	$1, %hi(__llvm_gcov_ctr.33)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.33)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_fmaxl)
	addiu	$2, $1, %lo($__profc_fmaxl)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 52($fp)
	lw	$2, 48($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB33_21
	nop
$BB33_20:
	lui	$1, %hi(__llvm_gcov_ctr.33)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.33)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 60($fp)
	lw	$2, 56($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB33_21
	nop
$BB33_21:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 64($fp)
	sw	$1, 68($fp)
	j	$BB33_22
	nop
$BB33_22:
	lw	$2, 64($fp)
	lw	$3, 68($fp)
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	fmin
fmin:                                   # @fmin
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 60($fp)
	sw	$4, 56($fp)
	sw	$7, 52($fp)
	sw	$6, 48($fp)
	lui	$4, %hi($__profc_fmin)
	addiu	$2, $4, %lo($__profc_fmin)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_fmin)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_fmin)($4)
	sw	$1, 4($2)
	lw	$2, 56($fp)
	lw	$1, 60($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $1, $3
	sw	$4, 40($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 44($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB34_2
	nop
# %bb.1:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	sw	$1, 44($fp)                     # 4-byte Folded Spill
$BB34_2:
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB34_5
	nop
# %bb.3:
	j	$BB34_4
	nop
$BB34_4:
	lui	$4, %hi(__llvm_gcov_ctr.34)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.34)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.34)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.34)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_fmin)
	addiu	$2, $1, %lo($__profc_fmin)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 48($fp)
	lw	$2, 52($fp)
	sw	$2, 68($fp)
	sw	$1, 64($fp)
	j	$BB34_22
	nop
$BB34_5:
	lw	$2, 48($fp)
	lw	$1, 52($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $1, $3
	sw	$4, 32($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 36($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB34_7
	nop
# %bb.6:
	lw	$1, 32($fp)                     # 4-byte Folded Reload
	sw	$1, 36($fp)                     # 4-byte Folded Spill
$BB34_7:
	lw	$1, 36($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB34_10
	nop
# %bb.8:
	j	$BB34_9
	nop
$BB34_9:
	lui	$1, %hi(__llvm_gcov_ctr.34)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.34)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_fmin)
	addiu	$2, $1, %lo($__profc_fmin)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 56($fp)
	lw	$2, 60($fp)
	sw	$2, 68($fp)
	sw	$1, 64($fp)
	j	$BB34_22
	nop
$BB34_10:
	lw	$1, 60($fp)
	srl	$1, $1, 31
	lw	$2, 52($fp)
	srl	$2, $2, 31
	beq	$1, $2, $BB34_17
	nop
# %bb.11:
	j	$BB34_12
	nop
$BB34_12:
	lui	$1, %hi($__profc_fmin)
	addiu	$2, $1, %lo($__profc_fmin)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 60($fp)
	bgez	$1, $BB34_15
	nop
# %bb.13:
	j	$BB34_14
	nop
$BB34_14:
	lui	$1, %hi(__llvm_gcov_ctr.34)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.34)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_fmin)
	addiu	$2, $1, %lo($__profc_fmin)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 60($fp)
	lw	$2, 56($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB34_16
	nop
$BB34_15:
	lui	$1, %hi(__llvm_gcov_ctr.34)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.34)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 52($fp)
	lw	$2, 48($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB34_16
	nop
$BB34_16:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$2, 64($fp)
	sw	$1, 68($fp)
	j	$BB34_22
	nop
$BB34_17:
	lw	$4, 56($fp)
	lw	$5, 60($fp)
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	jal	__ltdf2
	nop
	bgez	$2, $BB34_20
	nop
# %bb.18:
	j	$BB34_19
	nop
$BB34_19:
	lui	$1, %hi(__llvm_gcov_ctr.34)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.34)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_fmin)
	addiu	$2, $1, %lo($__profc_fmin)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 60($fp)
	lw	$2, 56($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB34_21
	nop
$BB34_20:
	lui	$1, %hi(__llvm_gcov_ctr.34)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.34)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 52($fp)
	lw	$2, 48($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB34_21
	nop
$BB34_21:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 64($fp)
	sw	$1, 68($fp)
	j	$BB34_22
	nop
$BB34_22:
	lw	$2, 64($fp)
	lw	$3, 68($fp)
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_fminf)
	addiu	$2, $4, %lo($__profc_fminf)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_fminf)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_fminf)($4)
	sw	$1, 4($2)
	lw	$1, 32($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, $BB35_3
	nop
# %bb.1:
	j	$BB35_2
	nop
$BB35_2:
	lui	$4, %hi(__llvm_gcov_ctr.35)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.35)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.35)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.35)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_fminf)
	addiu	$2, $1, %lo($__profc_fminf)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 28($fp)
	sw	$1, 36($fp)
	j	$BB35_18
	nop
$BB35_3:
	lw	$1, 28($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lui	$2, 32640
	ori	$2, $2, 1
	slt	$1, $1, $2
	bnez	$1, $BB35_6
	nop
# %bb.4:
	j	$BB35_5
	nop
$BB35_5:
	lui	$1, %hi(__llvm_gcov_ctr.35)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.35)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_fminf)
	addiu	$2, $1, %lo($__profc_fminf)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
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
	lui	$1, %hi($__profc_fminf)
	addiu	$2, $1, %lo($__profc_fminf)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 32($fp)
	bgez	$1, $BB35_11
	nop
# %bb.9:
	j	$BB35_10
	nop
$BB35_10:
	lui	$1, %hi(__llvm_gcov_ctr.35)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.35)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_fminf)
	addiu	$2, $1, %lo($__profc_fminf)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 32($fp)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	j	$BB35_12
	nop
$BB35_11:
	lui	$1, %hi(__llvm_gcov_ctr.35)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.35)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 28($fp)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	j	$BB35_12
	nop
$BB35_12:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
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
	lui	$1, %hi(__llvm_gcov_ctr.35)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.35)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_fminf)
	addiu	$2, $1, %lo($__profc_fminf)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 32($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB35_17
	nop
$BB35_16:
	lui	$1, %hi(__llvm_gcov_ctr.35)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.35)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 28($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB35_17
	nop
$BB35_17:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$1, 36($fp)
	j	$BB35_18
	nop
$BB35_18:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	fminl
fminl:                                  # @fminl
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a3
                                        # kill: def $at killed $a2
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	sw	$5, 60($fp)
	sw	$4, 56($fp)
	sw	$7, 52($fp)
	sw	$6, 48($fp)
	lui	$4, %hi($__profc_fminl)
	addiu	$2, $4, %lo($__profc_fminl)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_fminl)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_fminl)($4)
	sw	$1, 4($2)
	lw	$2, 56($fp)
	lw	$1, 60($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $1, $3
	sw	$4, 40($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 44($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB36_2
	nop
# %bb.1:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	sw	$1, 44($fp)                     # 4-byte Folded Spill
$BB36_2:
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB36_5
	nop
# %bb.3:
	j	$BB36_4
	nop
$BB36_4:
	lui	$4, %hi(__llvm_gcov_ctr.36)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.36)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.36)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.36)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_fminl)
	addiu	$2, $1, %lo($__profc_fminl)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 48($fp)
	lw	$2, 52($fp)
	sw	$2, 68($fp)
	sw	$1, 64($fp)
	j	$BB36_22
	nop
$BB36_5:
	lw	$2, 48($fp)
	lw	$1, 52($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $1, $3
	sw	$4, 32($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltiu	$2, $2, 1
	sw	$2, 36($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB36_7
	nop
# %bb.6:
	lw	$1, 32($fp)                     # 4-byte Folded Reload
	sw	$1, 36($fp)                     # 4-byte Folded Spill
$BB36_7:
	lw	$1, 36($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB36_10
	nop
# %bb.8:
	j	$BB36_9
	nop
$BB36_9:
	lui	$1, %hi(__llvm_gcov_ctr.36)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.36)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_fminl)
	addiu	$2, $1, %lo($__profc_fminl)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 56($fp)
	lw	$2, 60($fp)
	sw	$2, 68($fp)
	sw	$1, 64($fp)
	j	$BB36_22
	nop
$BB36_10:
	lw	$1, 60($fp)
	srl	$1, $1, 31
	lw	$2, 52($fp)
	srl	$2, $2, 31
	beq	$1, $2, $BB36_17
	nop
# %bb.11:
	j	$BB36_12
	nop
$BB36_12:
	lui	$1, %hi($__profc_fminl)
	addiu	$2, $1, %lo($__profc_fminl)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 60($fp)
	bgez	$1, $BB36_15
	nop
# %bb.13:
	j	$BB36_14
	nop
$BB36_14:
	lui	$1, %hi(__llvm_gcov_ctr.36)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.36)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_fminl)
	addiu	$2, $1, %lo($__profc_fminl)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 60($fp)
	lw	$2, 56($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB36_16
	nop
$BB36_15:
	lui	$1, %hi(__llvm_gcov_ctr.36)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.36)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 52($fp)
	lw	$2, 48($fp)
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	j	$BB36_16
	nop
$BB36_16:
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$2, 64($fp)
	sw	$1, 68($fp)
	j	$BB36_22
	nop
$BB36_17:
	lw	$4, 56($fp)
	lw	$5, 60($fp)
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	jal	__ltdf2
	nop
	bgez	$2, $BB36_20
	nop
# %bb.18:
	j	$BB36_19
	nop
$BB36_19:
	lui	$1, %hi(__llvm_gcov_ctr.36)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.36)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_fminl)
	addiu	$2, $1, %lo($__profc_fminl)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 60($fp)
	lw	$2, 56($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB36_21
	nop
$BB36_20:
	lui	$1, %hi(__llvm_gcov_ctr.36)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.36)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 52($fp)
	lw	$2, 48($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB36_21
	nop
$BB36_21:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 64($fp)
	sw	$1, 68($fp)
	j	$BB36_22
	nop
$BB36_22:
	lw	$2, 64($fp)
	lw	$3, 68($fp)
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.37)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.37)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.37)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.37)($5)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	lui	$4, %hi($__profc_l64a)
	addiu	$2, $4, %lo($__profc_l64a)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_l64a)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_l64a)($4)
	sw	$1, 4($2)
	lw	$1, 12($fp)
	sw	$1, 4($fp)
	lui	$1, %hi(l64a.s)
	addiu	$1, $1, %lo(l64a.s)
	sw	$1, 8($fp)
	j	$BB37_1
	nop
$BB37_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	beqz	$1, $BB37_5
	nop
# %bb.2:                                #   in Loop: Header=BB37_1 Depth=1
	j	$BB37_3
	nop
$BB37_3:                                #   in Loop: Header=BB37_1 Depth=1
	lui	$1, %hi($__profc_l64a)
	addiu	$2, $1, %lo($__profc_l64a)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	andi	$2, $1, 63
	lui	$1, %hi(digits)
	addiu	$1, $1, %lo(digits)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	sb	$1, 0($2)
	j	$BB37_4
	nop
$BB37_4:                                #   in Loop: Header=BB37_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.37)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.37)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	lw	$1, 4($fp)
	srl	$1, $1, 6
	sw	$1, 4($fp)
	j	$BB37_1
	nop
$BB37_5:
	lw	$1, 8($fp)
	addiu	$2, $zero, 0
	sb	$zero, 0($1)
	lui	$1, %hi(l64a.s)
	addiu	$2, $1, %lo(l64a.s)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.38)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.38)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.38)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.38)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_srand)
	addiu	$2, $4, %lo($__profc_srand)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_srand)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_srand)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	addiu	$2, $1, -1
	lui	$1, %hi(seed)
	sw	$2, %lo(seed)($1)
	addiu	$1, $1, %lo(seed)
	sw	$zero, 4($1)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi(__llvm_gcov_ctr.39)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.39)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.39)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.39)($4)
	sw	$1, 4($2)
	lui	$4, %hi($__profc_rand)
	addiu	$2, $4, %lo($__profc_rand)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_rand)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_rand)($4)
	sw	$1, 4($2)
	lui	$4, %hi(seed)
	addiu	$1, $4, %lo(seed)
	lw	$3, 4($1)
	lw	$2, %lo(seed)($4)
	lui	$5, 22609
	ori	$5, $5, 62509
	mult	$2, $5
	mflo	$6
	lui	$5, 19605
	ori	$5, $5, 32557
	multu	$2, $5
	mflo	$2
	sw	$2, 8($fp)                      # 8-byte Folded Spill
	mfhi	$2
	sw	$2, 12($fp)                     # 8-byte Folded Spill
	mfhi	$2
	addu	$2, $2, $6
	mult	$3, $5
	mflo	$3
	lw	$5, 8($fp)                      # 8-byte Folded Reload
	mtlo	$5
	lw	$5, 12($fp)                     # 8-byte Folded Reload
	mthi	$5
	addu	$2, $2, $3
	mflo	$3
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$2, $2, $5
	sw	$3, %lo(seed)($4)
	sw	$2, 4($1)
	lw	$1, 4($1)
	srl	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_insque)
	addiu	$2, $4, %lo($__profc_insque)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_insque)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_insque)($4)
	sw	$1, 4($2)
	lw	$1, 12($fp)
	sw	$1, 4($fp)
	lw	$1, 8($fp)
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	bnez	$1, $BB40_3
	nop
# %bb.1:
	j	$BB40_2
	nop
$BB40_2:
	lui	$1, %hi(__llvm_gcov_ctr.40)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.40)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_insque)
	addiu	$2, $1, %lo($__profc_insque)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	sw	$zero, 4($1)
	lw	$1, 4($fp)
	sw	$zero, 0($1)
	j	$BB40_6
	nop
$BB40_3:
	lui	$4, %hi(__llvm_gcov_ctr.40)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.40)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.40)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.40)($4)
	sw	$1, 4($2)
	lw	$1, 0($fp)
	lw	$1, 0($1)
	lw	$2, 4($fp)
	sw	$1, 0($2)
	lw	$1, 0($fp)
	lw	$2, 4($fp)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	sw	$1, 0($2)
	lw	$1, 4($fp)
	lw	$1, 0($1)
	beqz	$1, $BB40_6
	nop
# %bb.4:
	j	$BB40_5
	nop
$BB40_5:
	lui	$1, %hi(__llvm_gcov_ctr.40)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.40)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_insque)
	addiu	$2, $1, %lo($__profc_insque)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 4($fp)
	lw	$2, 0($1)
	sw	$1, 4($2)
	j	$BB40_6
	nop
$BB40_6:
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.41)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.41)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.41)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.41)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_remque)
	addiu	$2, $4, %lo($__profc_remque)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_remque)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_remque)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	lw	$1, 0($1)
	beqz	$1, $BB41_3
	nop
# %bb.1:
	j	$BB41_2
	nop
$BB41_2:
	lui	$1, %hi(__llvm_gcov_ctr.41)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.41)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_remque)
	addiu	$2, $1, %lo($__profc_remque)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$2, 0($fp)
	lw	$1, 4($2)
	lw	$2, 0($2)
	sw	$1, 4($2)
	j	$BB41_3
	nop
$BB41_3:
	lw	$1, 0($fp)
	lw	$1, 4($1)
	beqz	$1, $BB41_6
	nop
# %bb.4:
	j	$BB41_5
	nop
$BB41_5:
	lui	$1, %hi(__llvm_gcov_ctr.41)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.41)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_remque)
	addiu	$2, $1, %lo($__profc_remque)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$2, 0($fp)
	lw	$1, 0($2)
	lw	$2, 4($2)
	sw	$1, 0($2)
	j	$BB41_6
	nop
$BB41_6:
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_lsearch)
	addiu	$2, $4, %lo($__profc_lsearch)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_lsearch)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_lsearch)($4)
	sw	$1, 4($2)
	lw	$1, 36($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	lw	$1, 44($fp)
	sw	$1, 32($fp)
	lw	$1, 40($fp)
	lw	$1, 0($1)
	sw	$1, 28($fp)
	sw	$zero, 24($fp)
	j	$BB42_1
	nop
$BB42_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB42_8
	nop
# %bb.2:                                #   in Loop: Header=BB42_1 Depth=1
	j	$BB42_3
	nop
$BB42_3:                                #   in Loop: Header=BB42_1 Depth=1
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lui	$1, %hi($__profc_lsearch)
	addiu	$2, $1, %lo($__profc_lsearch)
	lw	$1, 12($2)
	lw	$4, 8($2)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$1, $1, $5
	sw	$4, 8($2)
	sw	$1, 12($2)
	lw	$25, 80($fp)
	lw	$4, 48($fp)
	lw	$1, 32($fp)
	lw	$2, 24($fp)
	mult	$2, $3
	mflo	$2
	addu	$5, $1, $2
	jalr	$25
	nop
	bnez	$2, $BB42_6
	nop
# %bb.4:
	j	$BB42_5
	nop
$BB42_5:
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lui	$5, %hi(__llvm_gcov_ctr.42)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.42)
	lw	$1, 4($2)
	lw	$4, %lo(__llvm_gcov_ctr.42)($5)
	addiu	$4, $4, 1
	sltiu	$6, $4, 1
	addu	$1, $1, $6
	sw	$4, %lo(__llvm_gcov_ctr.42)($5)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_lsearch)
	addiu	$2, $1, %lo($__profc_lsearch)
	lw	$1, 20($2)
	lw	$4, 16($2)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$1, $1, $5
	sw	$4, 16($2)
	sw	$1, 20($2)
	lw	$1, 32($fp)
	lw	$2, 24($fp)
	mult	$2, $3
	mflo	$2
	addu	$1, $1, $2
	sw	$1, 52($fp)
	j	$BB42_9
	nop
$BB42_6:                                #   in Loop: Header=BB42_1 Depth=1
	j	$BB42_7
	nop
$BB42_7:                                #   in Loop: Header=BB42_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.42)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.42)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	j	$BB42_1
	nop
$BB42_8:
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.42)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.42)
	lw	$1, 20($2)
	lw	$4, 16($2)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$1, $1, $5
	sw	$4, 16($2)
	sw	$1, 20($2)
	lw	$1, 28($fp)
	addiu	$1, $1, 1
	lw	$2, 40($fp)
	sw	$1, 0($2)
	lw	$1, 32($fp)
	lw	$2, 28($fp)
	mult	$2, $3
	mflo	$2
	addu	$4, $1, $2
	sw	$4, 16($fp)                     # 4-byte Folded Spill
	lw	$5, 48($fp)
	lw	$6, 36($fp)
	jal	memcpy
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	sw	$1, 52($fp)
	j	$BB42_9
	nop
$BB42_9:
	lw	$2, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_lfind)
	addiu	$2, $4, %lo($__profc_lfind)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_lfind)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_lfind)($4)
	sw	$1, 4($2)
	lw	$1, 36($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	lw	$1, 44($fp)
	sw	$1, 32($fp)
	lw	$1, 40($fp)
	lw	$1, 0($1)
	sw	$1, 28($fp)
	sw	$zero, 24($fp)
	j	$BB43_1
	nop
$BB43_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB43_8
	nop
# %bb.2:                                #   in Loop: Header=BB43_1 Depth=1
	j	$BB43_3
	nop
$BB43_3:                                #   in Loop: Header=BB43_1 Depth=1
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lui	$1, %hi($__profc_lfind)
	addiu	$2, $1, %lo($__profc_lfind)
	lw	$1, 12($2)
	lw	$4, 8($2)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$1, $1, $5
	sw	$4, 8($2)
	sw	$1, 12($2)
	lw	$25, 80($fp)
	lw	$4, 48($fp)
	lw	$1, 32($fp)
	lw	$2, 24($fp)
	mult	$2, $3
	mflo	$2
	addu	$5, $1, $2
	jalr	$25
	nop
	bnez	$2, $BB43_6
	nop
# %bb.4:
	j	$BB43_5
	nop
$BB43_5:
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lui	$5, %hi(__llvm_gcov_ctr.43)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.43)
	lw	$1, 4($2)
	lw	$4, %lo(__llvm_gcov_ctr.43)($5)
	addiu	$4, $4, 1
	sltiu	$6, $4, 1
	addu	$1, $1, $6
	sw	$4, %lo(__llvm_gcov_ctr.43)($5)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_lfind)
	addiu	$2, $1, %lo($__profc_lfind)
	lw	$1, 20($2)
	lw	$4, 16($2)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$1, $1, $5
	sw	$4, 16($2)
	sw	$1, 20($2)
	lw	$1, 32($fp)
	lw	$2, 24($fp)
	mult	$2, $3
	mflo	$2
	addu	$1, $1, $2
	sw	$1, 52($fp)
	j	$BB43_9
	nop
$BB43_6:                                #   in Loop: Header=BB43_1 Depth=1
	j	$BB43_7
	nop
$BB43_7:                                #   in Loop: Header=BB43_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.43)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.43)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	j	$BB43_1
	nop
$BB43_8:
	lui	$1, %hi(__llvm_gcov_ctr.43)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.43)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	sw	$zero, 52($fp)
	j	$BB43_9
	nop
$BB43_9:
	lw	$2, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_abs)
	addiu	$2, $4, %lo($__profc_abs)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_abs)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_abs)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	blez	$1, $BB44_3
	nop
# %bb.1:
	j	$BB44_2
	nop
$BB44_2:
	lui	$4, %hi(__llvm_gcov_ctr.44)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.44)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.44)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.44)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_abs)
	addiu	$2, $1, %lo($__profc_abs)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB44_4
	nop
$BB44_3:
	lui	$1, %hi(__llvm_gcov_ctr.44)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.44)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB44_4
	nop
$BB44_4:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_atoi)
	addiu	$2, $4, %lo($__profc_atoi)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_atoi)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_atoi)($4)
	sw	$1, 4($2)
	sw	$zero, 32($fp)
	sw	$zero, 28($fp)
	j	$BB45_1
	nop
$BB45_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	lb	$4, 0($1)
	jal	isspace
	nop
	beqz	$2, $BB45_4
	nop
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	j	$BB45_3
	nop
$BB45_3:                                #   in Loop: Header=BB45_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.45)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.45)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.45)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.45)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_atoi)
	addiu	$2, $1, %lo($__profc_atoi)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 36($fp)
	addiu	$1, $1, 1
	sw	$1, 36($fp)
	j	$BB45_1
	nop
$BB45_4:
	lw	$1, 36($fp)
	lb	$1, 0($1)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	addiu	$2, $zero, 43
	beq	$1, $2, $BB45_9
	nop
# %bb.5:
	j	$BB45_6
	nop
$BB45_6:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$2, $zero, 45
	bne	$1, $2, $BB45_11
	nop
# %bb.7:
	j	$BB45_8
	nop
$BB45_8:
	lui	$1, %hi(__llvm_gcov_ctr.45)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.45)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_atoi)
	addiu	$2, $1, %lo($__profc_atoi)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	addiu	$1, $zero, 1
	sw	$1, 28($fp)
	j	$BB45_10
	nop
$BB45_9:
	lui	$1, %hi(__llvm_gcov_ctr.45)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.45)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_atoi)
	addiu	$2, $1, %lo($__profc_atoi)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	j	$BB45_10
	nop
$BB45_10:
	lw	$1, 36($fp)
	addiu	$1, $1, 1
	sw	$1, 36($fp)
	j	$BB45_11
	nop
$BB45_11:
	lui	$1, %hi($__profc_atoi)
	addiu	$2, $1, %lo($__profc_atoi)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	j	$BB45_12
	nop
$BB45_12:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	lb	$4, 0($1)
	jal	isdigit
	nop
	beqz	$2, $BB45_15
	nop
# %bb.13:                               #   in Loop: Header=BB45_12 Depth=1
	j	$BB45_14
	nop
$BB45_14:                               #   in Loop: Header=BB45_12 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.45)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.45)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_atoi)
	addiu	$2, $1, %lo($__profc_atoi)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 32($fp)
	sll	$2, $1, 1
	sll	$1, $1, 3
	addu	$1, $1, $2
	lw	$2, 36($fp)
	addiu	$3, $2, 1
	sw	$3, 36($fp)
	lb	$2, 0($2)
	subu	$1, $1, $2
	addiu	$1, $1, 48
	sw	$1, 32($fp)
	j	$BB45_12
	nop
$BB45_15:
	lw	$1, 28($fp)
	beqz	$1, $BB45_18
	nop
# %bb.16:
	j	$BB45_17
	nop
$BB45_17:
	lui	$1, %hi(__llvm_gcov_ctr.45)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.45)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_atoi)
	addiu	$2, $1, %lo($__profc_atoi)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 32($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB45_19
	nop
$BB45_18:
	lui	$1, %hi(__llvm_gcov_ctr.45)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.45)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 32($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB45_19
	nop
$BB45_19:
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_atol)
	addiu	$2, $4, %lo($__profc_atol)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_atol)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_atol)($4)
	sw	$1, 4($2)
	sw	$zero, 32($fp)
	sw	$zero, 28($fp)
	j	$BB46_1
	nop
$BB46_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	lb	$4, 0($1)
	jal	isspace
	nop
	beqz	$2, $BB46_4
	nop
# %bb.2:                                #   in Loop: Header=BB46_1 Depth=1
	j	$BB46_3
	nop
$BB46_3:                                #   in Loop: Header=BB46_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.46)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.46)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.46)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.46)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_atol)
	addiu	$2, $1, %lo($__profc_atol)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 36($fp)
	addiu	$1, $1, 1
	sw	$1, 36($fp)
	j	$BB46_1
	nop
$BB46_4:
	lw	$1, 36($fp)
	lb	$1, 0($1)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	addiu	$2, $zero, 43
	beq	$1, $2, $BB46_9
	nop
# %bb.5:
	j	$BB46_6
	nop
$BB46_6:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$2, $zero, 45
	bne	$1, $2, $BB46_11
	nop
# %bb.7:
	j	$BB46_8
	nop
$BB46_8:
	lui	$1, %hi(__llvm_gcov_ctr.46)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.46)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_atol)
	addiu	$2, $1, %lo($__profc_atol)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	addiu	$1, $zero, 1
	sw	$1, 28($fp)
	j	$BB46_10
	nop
$BB46_9:
	lui	$1, %hi(__llvm_gcov_ctr.46)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.46)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_atol)
	addiu	$2, $1, %lo($__profc_atol)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	j	$BB46_10
	nop
$BB46_10:
	lw	$1, 36($fp)
	addiu	$1, $1, 1
	sw	$1, 36($fp)
	j	$BB46_11
	nop
$BB46_11:
	lui	$1, %hi($__profc_atol)
	addiu	$2, $1, %lo($__profc_atol)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	j	$BB46_12
	nop
$BB46_12:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	lb	$4, 0($1)
	jal	isdigit
	nop
	beqz	$2, $BB46_15
	nop
# %bb.13:                               #   in Loop: Header=BB46_12 Depth=1
	j	$BB46_14
	nop
$BB46_14:                               #   in Loop: Header=BB46_12 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.46)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.46)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_atol)
	addiu	$2, $1, %lo($__profc_atol)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 32($fp)
	sll	$2, $1, 1
	sll	$1, $1, 3
	addu	$1, $1, $2
	lw	$2, 36($fp)
	addiu	$3, $2, 1
	sw	$3, 36($fp)
	lb	$2, 0($2)
	subu	$1, $1, $2
	addiu	$1, $1, 48
	sw	$1, 32($fp)
	j	$BB46_12
	nop
$BB46_15:
	lw	$1, 28($fp)
	beqz	$1, $BB46_18
	nop
# %bb.16:
	j	$BB46_17
	nop
$BB46_17:
	lui	$1, %hi(__llvm_gcov_ctr.46)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.46)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_atol)
	addiu	$2, $1, %lo($__profc_atol)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 32($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB46_19
	nop
$BB46_18:
	lui	$1, %hi(__llvm_gcov_ctr.46)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.46)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 32($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB46_19
	nop
$BB46_19:
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_atoll)
	addiu	$2, $4, %lo($__profc_atoll)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_atoll)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_atoll)($4)
	sw	$1, 4($2)
	sw	$zero, 36($fp)
	sw	$zero, 32($fp)
	sw	$zero, 28($fp)
	j	$BB47_1
	nop
$BB47_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 44($fp)
	lb	$4, 0($1)
	jal	isspace
	nop
	beqz	$2, $BB47_4
	nop
# %bb.2:                                #   in Loop: Header=BB47_1 Depth=1
	j	$BB47_3
	nop
$BB47_3:                                #   in Loop: Header=BB47_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.47)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.47)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.47)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.47)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_atoll)
	addiu	$2, $1, %lo($__profc_atoll)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 44($fp)
	addiu	$1, $1, 1
	sw	$1, 44($fp)
	j	$BB47_1
	nop
$BB47_4:
	lw	$1, 44($fp)
	lb	$1, 0($1)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	addiu	$2, $zero, 43
	beq	$1, $2, $BB47_9
	nop
# %bb.5:
	j	$BB47_6
	nop
$BB47_6:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$2, $zero, 45
	bne	$1, $2, $BB47_11
	nop
# %bb.7:
	j	$BB47_8
	nop
$BB47_8:
	lui	$1, %hi(__llvm_gcov_ctr.47)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.47)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_atoll)
	addiu	$2, $1, %lo($__profc_atoll)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	addiu	$1, $zero, 1
	sw	$1, 28($fp)
	j	$BB47_10
	nop
$BB47_9:
	lui	$1, %hi(__llvm_gcov_ctr.47)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.47)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_atoll)
	addiu	$2, $1, %lo($__profc_atoll)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	j	$BB47_10
	nop
$BB47_10:
	lw	$1, 44($fp)
	addiu	$1, $1, 1
	sw	$1, 44($fp)
	j	$BB47_11
	nop
$BB47_11:
	lui	$1, %hi($__profc_atoll)
	addiu	$2, $1, %lo($__profc_atoll)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	j	$BB47_12
	nop
$BB47_12:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 44($fp)
	lb	$4, 0($1)
	jal	isdigit
	nop
	beqz	$2, $BB47_15
	nop
# %bb.13:                               #   in Loop: Header=BB47_12 Depth=1
	j	$BB47_14
	nop
$BB47_14:                               #   in Loop: Header=BB47_12 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.47)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.47)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_atoll)
	addiu	$2, $1, %lo($__profc_atoll)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 36($fp)
	lw	$3, 32($fp)
	srl	$4, $3, 31
	sll	$2, $1, 1
	or	$2, $2, $4
	srl	$4, $3, 29
	sll	$1, $1, 3
	or	$1, $1, $4
	addu	$1, $1, $2
	sll	$2, $3, 1
	sll	$3, $3, 3
	addu	$2, $3, $2
	sltu	$3, $2, $3
	addu	$1, $1, $3
	lw	$3, 44($fp)
	addiu	$4, $3, 1
	sw	$4, 44($fp)
	lb	$3, 0($3)
	addiu	$3, $3, -48
	sra	$4, $3, 31
	subu	$1, $1, $4
	sltu	$4, $2, $3
	subu	$1, $1, $4
	subu	$2, $2, $3
	sw	$2, 32($fp)
	sw	$1, 36($fp)
	j	$BB47_12
	nop
$BB47_15:
	lw	$1, 28($fp)
	beqz	$1, $BB47_18
	nop
# %bb.16:
	j	$BB47_17
	nop
$BB47_17:
	lui	$1, %hi(__llvm_gcov_ctr.47)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.47)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_atoll)
	addiu	$2, $1, %lo($__profc_atoll)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 36($fp)
	lw	$2, 32($fp)
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB47_19
	nop
$BB47_18:
	lui	$1, %hi(__llvm_gcov_ctr.47)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.47)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 36($fp)
	lw	$3, 32($fp)
	addiu	$2, $zero, 0
	negu	$2, $3
	sltu	$3, $zero, $3
	addu	$1, $1, $3
	negu	$1, $1
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB47_19
	nop
$BB47_19:
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_bsearch)
	addiu	$2, $4, %lo($__profc_bsearch)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_bsearch)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_bsearch)($4)
	sw	$1, 4($2)
	j	$BB48_1
	nop
$BB48_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 32($fp)
	beqz	$1, $BB48_12
	nop
# %bb.2:                                #   in Loop: Header=BB48_1 Depth=1
	j	$BB48_3
	nop
$BB48_3:                                #   in Loop: Header=BB48_1 Depth=1
	lui	$1, %hi($__profc_bsearch)
	addiu	$2, $1, %lo($__profc_bsearch)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 36($fp)
	lw	$2, 28($fp)
	lw	$3, 32($fp)
	srl	$3, $3, 1
	mult	$2, $3
	mflo	$2
	addu	$1, $1, $2
	sw	$1, 24($fp)
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
	lui	$1, %hi(__llvm_gcov_ctr.48)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.48)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_bsearch)
	addiu	$2, $1, %lo($__profc_bsearch)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 32($fp)
	srl	$1, $1, 1
	sw	$1, 32($fp)
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
	lui	$1, %hi($__profc_bsearch)
	addiu	$2, $1, %lo($__profc_bsearch)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	addu	$1, $1, $2
	sw	$1, 36($fp)
	lw	$2, 32($fp)
	srl	$1, $2, 1
	not	$1, $1
	addu	$1, $1, $2
	sw	$1, 32($fp)
	j	$BB48_10
	nop
$BB48_9:
	lui	$1, %hi(__llvm_gcov_ctr.48)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.48)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 24($fp)
	sw	$1, 44($fp)
	j	$BB48_13
	nop
$BB48_10:                               #   in Loop: Header=BB48_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.48)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.48)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB48_11
	nop
$BB48_11:                               #   in Loop: Header=BB48_1 Depth=1
	j	$BB48_1
	nop
$BB48_12:
	lui	$4, %hi(__llvm_gcov_ctr.48)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.48)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.48)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.48)($4)
	sw	$1, 4($2)
	sw	$zero, 44($fp)
	j	$BB48_13
	nop
$BB48_13:
	lw	$2, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_bsearch_r)
	addiu	$2, $4, %lo($__profc_bsearch_r)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_bsearch_r)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_bsearch_r)($4)
	sw	$1, 4($2)
	lw	$1, 44($fp)
	sw	$1, 32($fp)
	lw	$1, 40($fp)
	sw	$1, 28($fp)
	j	$BB49_1
	nop
$BB49_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	beqz	$1, $BB49_11
	nop
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
	j	$BB49_3
	nop
$BB49_3:                                #   in Loop: Header=BB49_1 Depth=1
	lui	$1, %hi($__profc_bsearch_r)
	addiu	$2, $1, %lo($__profc_bsearch_r)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 32($fp)
	lw	$2, 28($fp)
	sra	$2, $2, 1
	lw	$3, 36($fp)
	mult	$2, $3
	mflo	$2
	addu	$1, $1, $2
	sw	$1, 20($fp)
	lw	$25, 80($fp)
	lw	$4, 48($fp)
	lw	$5, 20($fp)
	lw	$6, 84($fp)
	jalr	$25
	nop
	sw	$2, 24($fp)
	lw	$1, 24($fp)
	bnez	$1, $BB49_6
	nop
# %bb.4:
	j	$BB49_5
	nop
$BB49_5:
	lui	$4, %hi(__llvm_gcov_ctr.49)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.49)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.49)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.49)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_bsearch_r)
	addiu	$2, $1, %lo($__profc_bsearch_r)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
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
	lui	$1, %hi(__llvm_gcov_ctr.49)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.49)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_bsearch_r)
	addiu	$2, $1, %lo($__profc_bsearch_r)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 20($fp)
	lw	$2, 36($fp)
	addu	$1, $1, $2
	sw	$1, 32($fp)
	lw	$1, 28($fp)
	addiu	$1, $1, -1
	sw	$1, 28($fp)
	j	$BB49_9
	nop
$BB49_9:                                #   in Loop: Header=BB49_1 Depth=1
	j	$BB49_10
	nop
$BB49_10:                               #   in Loop: Header=BB49_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.49)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.49)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 28($fp)
	sra	$1, $1, 1
	sw	$1, 28($fp)
	j	$BB49_1
	nop
$BB49_11:
	lui	$1, %hi(__llvm_gcov_ctr.49)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.49)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	sw	$zero, 52($fp)
	j	$BB49_12
	nop
$BB49_12:
	lw	$2, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$8, %hi(__llvm_gcov_ctr.50)
	addiu	$3, $8, %lo(__llvm_gcov_ctr.50)
	lw	$1, 4($3)
	lw	$7, %lo(__llvm_gcov_ctr.50)($8)
	addiu	$7, $7, 1
	sltiu	$9, $7, 1
	addu	$1, $1, $9
	sw	$7, %lo(__llvm_gcov_ctr.50)($8)
	sw	$1, 4($3)
	sw	$5, 4($fp)
	sw	$6, 0($fp)
	lui	$6, %hi($__profc_div)
	addiu	$3, $6, %lo($__profc_div)
	lw	$1, 4($3)
	lw	$5, %lo($__profc_div)($6)
	addiu	$5, $5, 1
	sltiu	$7, $5, 1
	addu	$1, $1, $7
	sw	$5, %lo($__profc_div)($6)
	sw	$1, 4($3)
	lw	$3, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $3, $1
	teq	$1, $zero, 7
	mflo	$1
	sw	$1, 0($4)
	lw	$3, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $3, $1
	teq	$1, $zero, 7
	mfhi	$1
	sw	$1, 4($4)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	imaxabs
imaxabs:                                # @imaxabs
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
	lui	$4, %hi($__profc_imaxabs)
	addiu	$2, $4, %lo($__profc_imaxabs)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_imaxabs)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_imaxabs)($4)
	sw	$1, 4($2)
	lw	$2, 16($fp)
	lw	$1, 20($fp)
	slti	$3, $1, 0
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	sltiu	$2, $2, 1
	sltiu	$1, $1, 1
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB51_2
	nop
# %bb.1:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	sw	$1, 12($fp)                     # 4-byte Folded Spill
$BB51_2:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB51_5
	nop
# %bb.3:
	j	$BB51_4
	nop
$BB51_4:
	lui	$4, %hi(__llvm_gcov_ctr.51)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.51)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.51)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.51)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_imaxabs)
	addiu	$2, $1, %lo($__profc_imaxabs)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 20($fp)
	lw	$2, 16($fp)
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB51_6
	nop
$BB51_5:
	lui	$1, %hi(__llvm_gcov_ctr.51)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.51)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 20($fp)
	lw	$3, 16($fp)
	addiu	$2, $zero, 0
	negu	$2, $3
	sltu	$3, $zero, $3
	addu	$1, $1, $3
	negu	$1, $1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB51_6
	nop
$BB51_6:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	lw	$3, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	imaxdiv
imaxdiv:                                # @imaxdiv
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
	sw	$4, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 20($fp)                     # 4-byte Folded Spill
	lw	$2, 68($fp)
	lw	$1, 64($fp)
                                        # kill: def $v1 killed $a3
                                        # kill: def $v1 killed $a2
	lui	$8, %hi(__llvm_gcov_ctr.52)
	addiu	$4, $8, %lo(__llvm_gcov_ctr.52)
	lw	$3, 4($4)
	lw	$5, %lo(__llvm_gcov_ctr.52)($8)
	addiu	$5, $5, 1
	sltiu	$9, $5, 1
	addu	$3, $3, $9
	sw	$5, %lo(__llvm_gcov_ctr.52)($8)
	sw	$3, 4($4)
	sw	$7, 36($fp)
	sw	$6, 32($fp)
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	lui	$4, %hi($__profc_imaxdiv)
	addiu	$2, $4, %lo($__profc_imaxdiv)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_imaxdiv)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_imaxdiv)($4)
	sw	$1, 4($2)
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	jal	__divdi3
	nop
	lw	$4, 16($fp)                     # 4-byte Folded Reload
	sw	$3, 4($4)
	sw	$2, 0($4)
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	jal	__moddi3
	nop
	lw	$4, 16($fp)                     # 4-byte Folded Reload
	move	$1, $2
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	sw	$3, 12($4)
	sw	$1, 8($4)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_labs)
	addiu	$2, $4, %lo($__profc_labs)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_labs)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_labs)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	blez	$1, $BB53_3
	nop
# %bb.1:
	j	$BB53_2
	nop
$BB53_2:
	lui	$4, %hi(__llvm_gcov_ctr.53)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.53)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.53)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.53)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_labs)
	addiu	$2, $1, %lo($__profc_labs)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB53_4
	nop
$BB53_3:
	lui	$1, %hi(__llvm_gcov_ctr.53)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.53)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB53_4
	nop
$BB53_4:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$8, %hi(__llvm_gcov_ctr.54)
	addiu	$3, $8, %lo(__llvm_gcov_ctr.54)
	lw	$1, 4($3)
	lw	$7, %lo(__llvm_gcov_ctr.54)($8)
	addiu	$7, $7, 1
	sltiu	$9, $7, 1
	addu	$1, $1, $9
	sw	$7, %lo(__llvm_gcov_ctr.54)($8)
	sw	$1, 4($3)
	sw	$5, 4($fp)
	sw	$6, 0($fp)
	lui	$6, %hi($__profc_ldiv)
	addiu	$3, $6, %lo($__profc_ldiv)
	lw	$1, 4($3)
	lw	$5, %lo($__profc_ldiv)($6)
	addiu	$5, $5, 1
	sltiu	$7, $5, 1
	addu	$1, $1, $7
	sw	$5, %lo($__profc_ldiv)($6)
	sw	$1, 4($3)
	lw	$3, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $3, $1
	teq	$1, $zero, 7
	mflo	$1
	sw	$1, 0($4)
	lw	$3, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $3, $1
	teq	$1, $zero, 7
	mfhi	$1
	sw	$1, 4($4)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	llabs
llabs:                                  # @llabs
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
	lui	$4, %hi($__profc_llabs)
	addiu	$2, $4, %lo($__profc_llabs)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_llabs)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_llabs)($4)
	sw	$1, 4($2)
	lw	$2, 16($fp)
	lw	$1, 20($fp)
	slti	$3, $1, 0
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	sltiu	$2, $2, 1
	sltiu	$1, $1, 1
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB55_2
	nop
# %bb.1:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	sw	$1, 12($fp)                     # 4-byte Folded Spill
$BB55_2:
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB55_5
	nop
# %bb.3:
	j	$BB55_4
	nop
$BB55_4:
	lui	$4, %hi(__llvm_gcov_ctr.55)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.55)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.55)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.55)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_llabs)
	addiu	$2, $1, %lo($__profc_llabs)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 20($fp)
	lw	$2, 16($fp)
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB55_6
	nop
$BB55_5:
	lui	$1, %hi(__llvm_gcov_ctr.55)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.55)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 20($fp)
	lw	$3, 16($fp)
	addiu	$2, $zero, 0
	negu	$2, $3
	sltu	$3, $zero, $3
	addu	$1, $1, $3
	negu	$1, $1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB55_6
	nop
$BB55_6:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	lw	$3, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	lldiv
lldiv:                                  # @lldiv
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
	sw	$4, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 20($fp)                     # 4-byte Folded Spill
	lw	$2, 68($fp)
	lw	$1, 64($fp)
                                        # kill: def $v1 killed $a3
                                        # kill: def $v1 killed $a2
	lui	$8, %hi(__llvm_gcov_ctr.56)
	addiu	$4, $8, %lo(__llvm_gcov_ctr.56)
	lw	$3, 4($4)
	lw	$5, %lo(__llvm_gcov_ctr.56)($8)
	addiu	$5, $5, 1
	sltiu	$9, $5, 1
	addu	$3, $3, $9
	sw	$5, %lo(__llvm_gcov_ctr.56)($8)
	sw	$3, 4($4)
	sw	$7, 36($fp)
	sw	$6, 32($fp)
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	lui	$4, %hi($__profc_lldiv)
	addiu	$2, $4, %lo($__profc_lldiv)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_lldiv)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_lldiv)($4)
	sw	$1, 4($2)
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	jal	__divdi3
	nop
	lw	$4, 16($fp)                     # 4-byte Folded Reload
	sw	$3, 4($4)
	sw	$2, 0($4)
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	jal	__moddi3
	nop
	lw	$4, 16($fp)                     # 4-byte Folded Reload
	move	$1, $2
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	sw	$3, 12($4)
	sw	$1, 8($4)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	wcschr
wcschr:                                 # @wcschr
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
	lui	$4, %hi($__profc_wcschr)
	addiu	$2, $4, %lo($__profc_wcschr)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_wcschr)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_wcschr)($4)
	sw	$1, 4($2)
	j	$BB57_1
	nop
$BB57_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, $BB57_6
	nop
# %bb.2:                                #   in Loop: Header=BB57_1 Depth=1
	j	$BB57_3
	nop
$BB57_3:                                #   in Loop: Header=BB57_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.57)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.57)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.57)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.57)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_wcschr)
	addiu	$2, $1, %lo($__profc_wcschr)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 20($fp)
	lw	$1, 0($1)
	lw	$2, 16($fp)
	xor	$3, $1, $2
	sltu	$3, $zero, $3
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	beq	$1, $2, $BB57_6
	nop
# %bb.4:                                #   in Loop: Header=BB57_1 Depth=1
	j	$BB57_5
	nop
$BB57_5:                                #   in Loop: Header=BB57_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.57)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.57)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lui	$2, %hi($__profc_wcschr)
	addiu	$3, $2, %lo($__profc_wcschr)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	j	$BB57_6
	nop
$BB57_6:                                #   in Loop: Header=BB57_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB57_10
	nop
# %bb.7:                                #   in Loop: Header=BB57_1 Depth=1
	j	$BB57_8
	nop
$BB57_8:                                #   in Loop: Header=BB57_1 Depth=1
	lui	$1, %hi($__profc_wcschr)
	addiu	$2, $1, %lo($__profc_wcschr)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB57_9
	nop
$BB57_9:                                #   in Loop: Header=BB57_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.57)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.57)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 20($fp)
	addiu	$1, $1, 4
	sw	$1, 20($fp)
	j	$BB57_1
	nop
$BB57_10:
	lw	$1, 20($fp)
	lw	$1, 0($1)
	beqz	$1, $BB57_13
	nop
# %bb.11:
	j	$BB57_12
	nop
$BB57_12:
	lui	$1, %hi(__llvm_gcov_ctr.57)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.57)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_wcschr)
	addiu	$2, $1, %lo($__profc_wcschr)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 20($fp)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB57_14
	nop
$BB57_13:
	lui	$1, %hi(__llvm_gcov_ctr.57)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.57)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	addiu	$1, $zero, 0
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB57_14
	nop
$BB57_14:
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	wcscmp
wcscmp:                                 # @wcscmp
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
	lui	$4, %hi($__profc_wcscmp)
	addiu	$2, $4, %lo($__profc_wcscmp)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_wcscmp)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_wcscmp)($4)
	sw	$1, 4($2)
	j	$BB58_1
	nop
$BB58_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$1, 0($1)
	lw	$2, 16($fp)
	lw	$2, 0($2)
	addiu	$3, $zero, 0
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	bne	$1, $2, $BB58_9
	nop
# %bb.2:                                #   in Loop: Header=BB58_1 Depth=1
	j	$BB58_3
	nop
$BB58_3:                                #   in Loop: Header=BB58_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.58)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.58)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.58)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.58)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_wcscmp)
	addiu	$2, $1, %lo($__profc_wcscmp)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 20($fp)
	lw	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, $BB58_9
	nop
# %bb.4:                                #   in Loop: Header=BB58_1 Depth=1
	j	$BB58_5
	nop
$BB58_5:                                #   in Loop: Header=BB58_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.58)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.58)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_wcscmp)
	addiu	$2, $1, %lo($__profc_wcscmp)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	j	$BB58_6
	nop
$BB58_6:                                #   in Loop: Header=BB58_1 Depth=1
	lui	$1, %hi($__profc_wcscmp)
	addiu	$2, $1, %lo($__profc_wcscmp)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 16($fp)
	lw	$1, 0($1)
	sltu	$2, $zero, $1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	beqz	$1, $BB58_9
	nop
# %bb.7:                                #   in Loop: Header=BB58_1 Depth=1
	j	$BB58_8
	nop
$BB58_8:                                #   in Loop: Header=BB58_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.58)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.58)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_wcscmp)
	addiu	$3, $2, %lo($__profc_wcscmp)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	j	$BB58_9
	nop
$BB58_9:                                #   in Loop: Header=BB58_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB58_13
	nop
# %bb.10:                               #   in Loop: Header=BB58_1 Depth=1
	j	$BB58_11
	nop
$BB58_11:                               #   in Loop: Header=BB58_1 Depth=1
	lui	$1, %hi($__profc_wcscmp)
	addiu	$2, $1, %lo($__profc_wcscmp)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB58_12
	nop
$BB58_12:                               #   in Loop: Header=BB58_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.58)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.58)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 20($fp)
	addiu	$1, $1, 4
	sw	$1, 20($fp)
	lw	$1, 16($fp)
	addiu	$1, $1, 4
	sw	$1, 16($fp)
	j	$BB58_1
	nop
$BB58_13:
	lw	$1, 20($fp)
	lw	$1, 0($1)
	lw	$2, 16($fp)
	lw	$2, 0($2)
	slt	$1, $1, $2
	beqz	$1, $BB58_16
	nop
# %bb.14:
	j	$BB58_15
	nop
$BB58_15:
	lui	$1, %hi(__llvm_gcov_ctr.58)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.58)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_wcscmp)
	addiu	$2, $1, %lo($__profc_wcscmp)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	addiu	$1, $zero, -1
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB58_17
	nop
$BB58_16:
	lui	$1, %hi(__llvm_gcov_ctr.58)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.58)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 20($fp)
	lw	$2, 0($1)
	lw	$1, 16($fp)
	lw	$1, 0($1)
	slt	$1, $1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB58_17
	nop
$BB58_17:
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.59)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.59)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.59)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.59)($6)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	lui	$4, %hi($__profc_wcscpy)
	addiu	$2, $4, %lo($__profc_wcscpy)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_wcscpy)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_wcscpy)($4)
	sw	$1, 4($2)
	lw	$1, 12($fp)
	sw	$1, 4($fp)
	j	$BB59_1
	nop
$BB59_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $1, 4
	sw	$2, 8($fp)
	lw	$1, 0($1)
	lw	$2, 12($fp)
	addiu	$3, $2, 4
	sw	$3, 12($fp)
	sw	$1, 0($2)
	beqz	$1, $BB59_4
	nop
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	j	$BB59_3
	nop
$BB59_3:                                #   in Loop: Header=BB59_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.59)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.59)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_wcscpy)
	addiu	$2, $1, %lo($__profc_wcscpy)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB59_1
	nop
$BB59_4:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.60)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.60)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.60)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.60)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_wcslen)
	addiu	$2, $4, %lo($__profc_wcslen)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_wcslen)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_wcslen)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	j	$BB60_1
	nop
$BB60_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lw	$1, 0($1)
	beqz	$1, $BB60_5
	nop
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	j	$BB60_3
	nop
$BB60_3:                                #   in Loop: Header=BB60_1 Depth=1
	lui	$1, %hi($__profc_wcslen)
	addiu	$2, $1, %lo($__profc_wcslen)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB60_4
	nop
$BB60_4:                                #   in Loop: Header=BB60_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.60)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.60)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	addiu	$1, $1, 4
	sw	$1, 4($fp)
	j	$BB60_1
	nop
$BB60_5:
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	subu	$1, $1, $2
	sra	$2, $1, 2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	wcsncmp
wcsncmp:                                # @wcsncmp
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
	lui	$4, %hi($__profc_wcsncmp)
	addiu	$2, $4, %lo($__profc_wcsncmp)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_wcsncmp)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_wcsncmp)($4)
	sw	$1, 4($2)
	j	$BB61_1
	nop
$BB61_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 0
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	beqz	$1, $BB61_12
	nop
# %bb.2:                                #   in Loop: Header=BB61_1 Depth=1
	j	$BB61_3
	nop
$BB61_3:                                #   in Loop: Header=BB61_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.61)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.61)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.61)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.61)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_wcsncmp)
	addiu	$2, $1, %lo($__profc_wcsncmp)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 28($fp)
	lw	$1, 0($1)
	lw	$2, 24($fp)
	lw	$2, 0($2)
	addiu	$3, $zero, 0
	sw	$3, 16($fp)                     # 4-byte Folded Spill
	bne	$1, $2, $BB61_12
	nop
# %bb.4:                                #   in Loop: Header=BB61_1 Depth=1
	j	$BB61_5
	nop
$BB61_5:                                #   in Loop: Header=BB61_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.61)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.61)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_wcsncmp)
	addiu	$2, $1, %lo($__profc_wcsncmp)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	j	$BB61_6
	nop
$BB61_6:                                #   in Loop: Header=BB61_1 Depth=1
	lui	$1, %hi($__profc_wcsncmp)
	addiu	$2, $1, %lo($__profc_wcsncmp)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 28($fp)
	lw	$1, 0($1)
	addiu	$2, $zero, 0
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	beqz	$1, $BB61_12
	nop
# %bb.7:                                #   in Loop: Header=BB61_1 Depth=1
	j	$BB61_8
	nop
$BB61_8:                                #   in Loop: Header=BB61_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.61)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.61)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_wcsncmp)
	addiu	$2, $1, %lo($__profc_wcsncmp)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	j	$BB61_9
	nop
$BB61_9:                                #   in Loop: Header=BB61_1 Depth=1
	lui	$1, %hi($__profc_wcsncmp)
	addiu	$2, $1, %lo($__profc_wcsncmp)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 24($fp)
	lw	$1, 0($1)
	sltu	$2, $zero, $1
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	beqz	$1, $BB61_12
	nop
# %bb.10:                               #   in Loop: Header=BB61_1 Depth=1
	j	$BB61_11
	nop
$BB61_11:                               #   in Loop: Header=BB61_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.61)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.61)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lui	$2, %hi($__profc_wcsncmp)
	addiu	$3, $2, %lo($__profc_wcsncmp)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	j	$BB61_12
	nop
$BB61_12:                               #   in Loop: Header=BB61_1 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB61_16
	nop
# %bb.13:                               #   in Loop: Header=BB61_1 Depth=1
	j	$BB61_14
	nop
$BB61_14:                               #   in Loop: Header=BB61_1 Depth=1
	lui	$1, %hi($__profc_wcsncmp)
	addiu	$2, $1, %lo($__profc_wcsncmp)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB61_15
	nop
$BB61_15:                               #   in Loop: Header=BB61_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.61)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.61)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 20($fp)
	addiu	$1, $1, -1
	sw	$1, 20($fp)
	lw	$1, 28($fp)
	addiu	$1, $1, 4
	sw	$1, 28($fp)
	lw	$1, 24($fp)
	addiu	$1, $1, 4
	sw	$1, 24($fp)
	j	$BB61_1
	nop
$BB61_16:
	lw	$1, 20($fp)
	beqz	$1, $BB61_23
	nop
# %bb.17:
	j	$BB61_18
	nop
$BB61_18:
	lui	$1, %hi($__profc_wcsncmp)
	addiu	$2, $1, %lo($__profc_wcsncmp)
	lw	$1, 68($2)
	lw	$3, 64($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 64($2)
	sw	$1, 68($2)
	lw	$1, 28($fp)
	lw	$1, 0($1)
	lw	$2, 24($fp)
	lw	$2, 0($2)
	slt	$1, $1, $2
	beqz	$1, $BB61_21
	nop
# %bb.19:
	j	$BB61_20
	nop
$BB61_20:
	lui	$1, %hi(__llvm_gcov_ctr.61)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.61)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lui	$1, %hi($__profc_wcsncmp)
	addiu	$2, $1, %lo($__profc_wcsncmp)
	lw	$1, 76($2)
	lw	$3, 72($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 72($2)
	sw	$1, 76($2)
	addiu	$1, $zero, -1
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB61_22
	nop
$BB61_21:
	lui	$1, %hi(__llvm_gcov_ctr.61)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.61)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 28($fp)
	lw	$2, 0($1)
	lw	$1, 24($fp)
	lw	$1, 0($1)
	slt	$1, $1, $2
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB61_22
	nop
$BB61_22:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB61_24
	nop
$BB61_23:
	lui	$1, %hi(__llvm_gcov_ctr.61)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.61)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	addiu	$1, $zero, 0
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB61_24
	nop
$BB61_24:
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_wmemchr)
	addiu	$2, $4, %lo($__profc_wmemchr)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_wmemchr)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_wmemchr)($4)
	sw	$1, 4($2)
	j	$BB62_1
	nop
$BB62_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 0
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB62_6
	nop
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	j	$BB62_3
	nop
$BB62_3:                                #   in Loop: Header=BB62_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.62)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.62)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.62)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.62)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_wmemchr)
	addiu	$2, $1, %lo($__profc_wmemchr)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 20($fp)
	lw	$1, 0($1)
	lw	$2, 16($fp)
	xor	$3, $1, $2
	sltu	$3, $zero, $3
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	beq	$1, $2, $BB62_6
	nop
# %bb.4:                                #   in Loop: Header=BB62_1 Depth=1
	j	$BB62_5
	nop
$BB62_5:                                #   in Loop: Header=BB62_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.62)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.62)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lui	$2, %hi($__profc_wmemchr)
	addiu	$3, $2, %lo($__profc_wmemchr)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB62_6
	nop
$BB62_6:                                #   in Loop: Header=BB62_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB62_10
	nop
# %bb.7:                                #   in Loop: Header=BB62_1 Depth=1
	j	$BB62_8
	nop
$BB62_8:                                #   in Loop: Header=BB62_1 Depth=1
	lui	$1, %hi($__profc_wmemchr)
	addiu	$2, $1, %lo($__profc_wmemchr)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB62_9
	nop
$BB62_9:                                #   in Loop: Header=BB62_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.62)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.62)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	addiu	$1, $1, 4
	sw	$1, 20($fp)
	j	$BB62_1
	nop
$BB62_10:
	lw	$1, 12($fp)
	beqz	$1, $BB62_13
	nop
# %bb.11:
	j	$BB62_12
	nop
$BB62_12:
	lui	$1, %hi(__llvm_gcov_ctr.62)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.62)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_wmemchr)
	addiu	$2, $1, %lo($__profc_wmemchr)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 20($fp)
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB62_14
	nop
$BB62_13:
	lui	$1, %hi(__llvm_gcov_ctr.62)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.62)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	addiu	$1, $zero, 0
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB62_14
	nop
$BB62_14:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	wmemcmp
wmemcmp:                                # @wmemcmp
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
	lui	$4, %hi($__profc_wmemcmp)
	addiu	$2, $4, %lo($__profc_wmemcmp)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_wmemcmp)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_wmemcmp)($4)
	sw	$1, 4($2)
	j	$BB63_1
	nop
$BB63_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 0
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	beqz	$1, $BB63_6
	nop
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	j	$BB63_3
	nop
$BB63_3:                                #   in Loop: Header=BB63_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.63)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.63)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.63)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.63)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_wmemcmp)
	addiu	$2, $1, %lo($__profc_wmemcmp)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 28($fp)
	lw	$1, 0($1)
	lw	$2, 24($fp)
	lw	$2, 0($2)
	xor	$3, $1, $2
	sltiu	$3, $3, 1
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	sw	$3, 16($fp)                     # 4-byte Folded Spill
	bne	$1, $2, $BB63_6
	nop
# %bb.4:                                #   in Loop: Header=BB63_1 Depth=1
	j	$BB63_5
	nop
$BB63_5:                                #   in Loop: Header=BB63_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.63)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.63)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lui	$2, %hi($__profc_wmemcmp)
	addiu	$3, $2, %lo($__profc_wmemcmp)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	j	$BB63_6
	nop
$BB63_6:                                #   in Loop: Header=BB63_1 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB63_10
	nop
# %bb.7:                                #   in Loop: Header=BB63_1 Depth=1
	j	$BB63_8
	nop
$BB63_8:                                #   in Loop: Header=BB63_1 Depth=1
	lui	$1, %hi($__profc_wmemcmp)
	addiu	$2, $1, %lo($__profc_wmemcmp)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB63_9
	nop
$BB63_9:                                #   in Loop: Header=BB63_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.63)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.63)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 20($fp)
	addiu	$1, $1, -1
	sw	$1, 20($fp)
	lw	$1, 28($fp)
	addiu	$1, $1, 4
	sw	$1, 28($fp)
	lw	$1, 24($fp)
	addiu	$1, $1, 4
	sw	$1, 24($fp)
	j	$BB63_1
	nop
$BB63_10:
	lw	$1, 20($fp)
	beqz	$1, $BB63_17
	nop
# %bb.11:
	j	$BB63_12
	nop
$BB63_12:
	lui	$1, %hi($__profc_wmemcmp)
	addiu	$2, $1, %lo($__profc_wmemcmp)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 28($fp)
	lw	$1, 0($1)
	lw	$2, 24($fp)
	lw	$2, 0($2)
	slt	$1, $1, $2
	beqz	$1, $BB63_15
	nop
# %bb.13:
	j	$BB63_14
	nop
$BB63_14:
	lui	$1, %hi(__llvm_gcov_ctr.63)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.63)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_wmemcmp)
	addiu	$2, $1, %lo($__profc_wmemcmp)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	addiu	$1, $zero, -1
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB63_16
	nop
$BB63_15:
	lui	$1, %hi(__llvm_gcov_ctr.63)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.63)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 28($fp)
	lw	$2, 0($1)
	lw	$1, 24($fp)
	lw	$1, 0($1)
	slt	$1, $1, $2
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB63_16
	nop
$BB63_16:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB63_18
	nop
$BB63_17:
	lui	$1, %hi(__llvm_gcov_ctr.63)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.63)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	addiu	$1, $zero, 0
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB63_18
	nop
$BB63_18:
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$7, %hi(__llvm_gcov_ctr.64)
	addiu	$2, $7, %lo(__llvm_gcov_ctr.64)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.64)($7)
	addiu	$3, $3, 1
	sltiu	$8, $3, 1
	addu	$1, $1, $8
	sw	$3, %lo(__llvm_gcov_ctr.64)($7)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	sw	$6, 4($fp)
	lui	$4, %hi($__profc_wmemcpy)
	addiu	$2, $4, %lo($__profc_wmemcpy)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_wmemcpy)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_wmemcpy)($4)
	sw	$1, 4($2)
	lw	$1, 12($fp)
	sw	$1, 0($fp)
	j	$BB64_1
	nop
$BB64_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	addiu	$2, $1, -1
	sw	$2, 4($fp)
	beqz	$1, $BB64_4
	nop
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	j	$BB64_3
	nop
$BB64_3:                                #   in Loop: Header=BB64_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.64)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.64)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_wmemcpy)
	addiu	$2, $1, %lo($__profc_wmemcpy)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 8($fp)
	addiu	$2, $1, 4
	sw	$2, 8($fp)
	lw	$1, 0($1)
	lw	$2, 12($fp)
	addiu	$3, $2, 4
	sw	$3, 12($fp)
	sw	$1, 0($2)
	j	$BB64_1
	nop
$BB64_4:
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_wmemmove)
	addiu	$2, $4, %lo($__profc_wmemmove)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_wmemmove)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_wmemmove)($4)
	sw	$1, 4($2)
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
	lui	$4, %hi(__llvm_gcov_ctr.65)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.65)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.65)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.65)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_wmemmove)
	addiu	$2, $1, %lo($__profc_wmemmove)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 16($fp)
	sw	$1, 20($fp)
	j	$BB65_16
	nop
$BB65_3:
	lw	$1, 16($fp)
	lw	$2, 12($fp)
	subu	$1, $1, $2
	lw	$2, 8($fp)
	sll	$2, $2, 2
	sltu	$1, $1, $2
	beqz	$1, $BB65_10
	nop
# %bb.4:
	j	$BB65_5
	nop
$BB65_5:
	lui	$1, %hi(__llvm_gcov_ctr.65)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.65)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_wmemmove)
	addiu	$2, $1, %lo($__profc_wmemmove)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	j	$BB65_6
	nop
$BB65_6:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $1, -1
	sw	$2, 8($fp)
	beqz	$1, $BB65_9
	nop
# %bb.7:                                #   in Loop: Header=BB65_6 Depth=1
	j	$BB65_8
	nop
$BB65_8:                                #   in Loop: Header=BB65_6 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.65)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.65)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_wmemmove)
	addiu	$2, $1, %lo($__profc_wmemmove)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	sll	$3, $2, 2
	addu	$1, $1, $3
	lw	$1, 0($1)
	lw	$2, 16($fp)
	addu	$2, $2, $3
	sw	$1, 0($2)
	j	$BB65_6
	nop
$BB65_9:
	j	$BB65_15
	nop
$BB65_10:
	j	$BB65_11
	nop
$BB65_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $1, -1
	sw	$2, 8($fp)
	beqz	$1, $BB65_14
	nop
# %bb.12:                               #   in Loop: Header=BB65_11 Depth=1
	j	$BB65_13
	nop
$BB65_13:                               #   in Loop: Header=BB65_11 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.65)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.65)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_wmemmove)
	addiu	$2, $1, %lo($__profc_wmemmove)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 12($fp)
	addiu	$2, $1, 4
	sw	$2, 12($fp)
	lw	$1, 0($1)
	lw	$2, 16($fp)
	addiu	$3, $2, 4
	sw	$3, 16($fp)
	sw	$1, 0($2)
	j	$BB65_11
	nop
$BB65_14:
	lui	$1, %hi(__llvm_gcov_ctr.65)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.65)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
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
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$7, %hi(__llvm_gcov_ctr.66)
	addiu	$2, $7, %lo(__llvm_gcov_ctr.66)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.66)($7)
	addiu	$3, $3, 1
	sltiu	$8, $3, 1
	addu	$1, $1, $8
	sw	$3, %lo(__llvm_gcov_ctr.66)($7)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	sw	$6, 4($fp)
	lui	$4, %hi($__profc_wmemset)
	addiu	$2, $4, %lo($__profc_wmemset)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_wmemset)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_wmemset)($4)
	sw	$1, 4($2)
	lw	$1, 12($fp)
	sw	$1, 0($fp)
	j	$BB66_1
	nop
$BB66_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	addiu	$2, $1, -1
	sw	$2, 4($fp)
	beqz	$1, $BB66_4
	nop
# %bb.2:                                #   in Loop: Header=BB66_1 Depth=1
	j	$BB66_3
	nop
$BB66_3:                                #   in Loop: Header=BB66_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.66)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.66)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_wmemset)
	addiu	$2, $1, %lo($__profc_wmemset)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 8($fp)
	lw	$2, 12($fp)
	addiu	$3, $2, 4
	sw	$3, 12($fp)
	sw	$1, 0($2)
	j	$BB66_1
	nop
$BB66_4:
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_bcopy)
	addiu	$2, $4, %lo($__profc_bcopy)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_bcopy)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_bcopy)($4)
	sw	$1, 4($2)
	lw	$1, 20($fp)
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	lw	$1, 8($fp)
	lw	$2, 4($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB67_8
	nop
# %bb.1:
	j	$BB67_2
	nop
$BB67_2:
	lui	$4, %hi(__llvm_gcov_ctr.67)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.67)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.67)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.67)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_bcopy)
	addiu	$2, $1, %lo($__profc_bcopy)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	addu	$1, $1, $2
	sw	$1, 8($fp)
	lw	$2, 12($fp)
	lw	$1, 4($fp)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	j	$BB67_3
	nop
$BB67_3:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB67_7
	nop
# %bb.4:                                #   in Loop: Header=BB67_3 Depth=1
	j	$BB67_5
	nop
$BB67_5:                                #   in Loop: Header=BB67_3 Depth=1
	lui	$1, %hi($__profc_bcopy)
	addiu	$2, $1, %lo($__profc_bcopy)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 8($fp)
	addiu	$2, $1, -1
	sw	$2, 8($fp)
	lbu	$1, -1($1)
	lw	$2, 4($fp)
	addiu	$3, $2, -1
	sw	$3, 4($fp)
	sb	$1, -1($2)
	j	$BB67_6
	nop
$BB67_6:                                #   in Loop: Header=BB67_3 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.67)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.67)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	sw	$1, 12($fp)
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
	lui	$1, %hi($__profc_bcopy)
	addiu	$2, $1, %lo($__profc_bcopy)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB67_11
	nop
$BB67_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB67_15
	nop
# %bb.12:                               #   in Loop: Header=BB67_11 Depth=1
	j	$BB67_13
	nop
$BB67_13:                               #   in Loop: Header=BB67_11 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.67)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.67)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_bcopy)
	addiu	$2, $1, %lo($__profc_bcopy)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 8($fp)
	addiu	$2, $1, 1
	sw	$2, 8($fp)
	lbu	$1, 0($1)
	lw	$2, 4($fp)
	addiu	$3, $2, 1
	sw	$3, 4($fp)
	sb	$1, 0($2)
	j	$BB67_14
	nop
$BB67_14:                               #   in Loop: Header=BB67_11 Depth=1
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	sw	$1, 12($fp)
	j	$BB67_11
	nop
$BB67_15:
	lui	$1, %hi(__llvm_gcov_ctr.67)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.67)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB67_16
	nop
$BB67_16:
	lui	$1, %hi(__llvm_gcov_ctr.67)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.67)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	j	$BB67_17
	nop
$BB67_17:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	rotl64
rotl64:                                 # @rotl64
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	lui	$7, %hi(__llvm_gcov_ctr.68)
	addiu	$2, $7, %lo(__llvm_gcov_ctr.68)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.68)($7)
	addiu	$3, $3, 1
	sltiu	$8, $3, 1
	addu	$1, $1, $8
	sw	$3, %lo(__llvm_gcov_ctr.68)($7)
	sw	$1, 4($2)
	sw	$5, 68($fp)
	sw	$4, 64($fp)
	sw	$6, 60($fp)
	lui	$4, %hi($__profc_rotl64)
	addiu	$2, $4, %lo($__profc_rotl64)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_rotl64)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_rotl64)($4)
	sw	$1, 4($2)
	lw	$2, 64($fp)
	sw	$2, 32($fp)                     # 4-byte Folded Spill
	lw	$3, 68($fp)
	sw	$3, 36($fp)                     # 4-byte Folded Spill
	lw	$1, 60($fp)
	sw	$1, 40($fp)                     # 4-byte Folded Spill
	sllv	$3, $3, $1
	xori	$5, $1, 31
	srl	$4, $2, 1
	srlv	$4, $4, $5
	or	$3, $3, $4
	sw	$3, 44($fp)                     # 4-byte Folded Spill
	sllv	$2, $2, $1
	sw	$2, 48($fp)                     # 4-byte Folded Spill
	andi	$1, $1, 32
	sw	$1, 52($fp)                     # 4-byte Folded Spill
	sw	$2, 56($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB68_2
	nop
# %bb.1:
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	sw	$1, 56($fp)                     # 4-byte Folded Spill
$BB68_2:
	lw	$1, 52($fp)                     # 4-byte Folded Reload
	lw	$2, 56($fp)                     # 4-byte Folded Reload
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	addiu	$2, $zero, 0
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sw	$2, 28($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB68_4
	nop
# %bb.3:
	lw	$1, 48($fp)                     # 4-byte Folded Reload
	sw	$1, 28($fp)                     # 4-byte Folded Spill
$BB68_4:
	lw	$3, 24($fp)                     # 4-byte Folded Reload
	lw	$2, 36($fp)                     # 4-byte Folded Reload
	lw	$4, 32($fp)                     # 4-byte Folded Reload
	lw	$5, 40($fp)                     # 4-byte Folded Reload
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	addiu	$1, $zero, 64
	subu	$1, $1, $5
	srlv	$5, $4, $1
	xori	$6, $1, 31
	sll	$4, $2, 1
	sllv	$4, $4, $6
	or	$4, $4, $5
	sw	$4, 4($fp)                      # 4-byte Folded Spill
	srlv	$2, $2, $1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	andi	$1, $1, 32
	sw	$3, 12($fp)                     # 4-byte Folded Spill
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB68_6
	nop
# %bb.5:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	sw	$1, 16($fp)                     # 4-byte Folded Spill
$BB68_6:
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	lw	$3, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 12($fp)                     # 4-byte Folded Reload
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	or	$3, $3, $4
	or	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	rotr64
rotr64:                                 # @rotr64
	.frame	$fp,88,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -88
	sw	$ra, 84($sp)                    # 4-byte Folded Spill
	sw	$fp, 80($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	lui	$7, %hi(__llvm_gcov_ctr.69)
	addiu	$2, $7, %lo(__llvm_gcov_ctr.69)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.69)($7)
	addiu	$3, $3, 1
	sltiu	$8, $3, 1
	addu	$1, $1, $8
	sw	$3, %lo(__llvm_gcov_ctr.69)($7)
	sw	$1, 4($2)
	sw	$5, 76($fp)
	sw	$4, 72($fp)
	sw	$6, 68($fp)
	lui	$4, %hi($__profc_rotr64)
	addiu	$2, $4, %lo($__profc_rotr64)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_rotr64)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_rotr64)($4)
	sw	$1, 4($2)
	lw	$2, 76($fp)
	sw	$2, 36($fp)                     # 4-byte Folded Spill
	lw	$3, 72($fp)
	sw	$3, 40($fp)                     # 4-byte Folded Spill
	lw	$1, 68($fp)
	sw	$1, 44($fp)                     # 4-byte Folded Spill
	srlv	$4, $3, $1
	xori	$5, $1, 31
	sll	$3, $2, 1
	sllv	$3, $3, $5
	or	$3, $3, $4
	sw	$3, 48($fp)                     # 4-byte Folded Spill
	srlv	$2, $2, $1
	sw	$2, 52($fp)                     # 4-byte Folded Spill
	andi	$1, $1, 32
	addiu	$3, $zero, 0
	sw	$3, 56($fp)                     # 4-byte Folded Spill
	sw	$3, 60($fp)                     # 4-byte Folded Spill
	sw	$2, 64($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB69_2
	nop
# %bb.1:
	lw	$1, 48($fp)                     # 4-byte Folded Reload
	lw	$2, 52($fp)                     # 4-byte Folded Reload
	sw	$2, 60($fp)                     # 4-byte Folded Spill
	sw	$1, 64($fp)                     # 4-byte Folded Spill
$BB69_2:
	lw	$2, 40($fp)                     # 4-byte Folded Reload
	lw	$3, 36($fp)                     # 4-byte Folded Reload
	lw	$4, 44($fp)                     # 4-byte Folded Reload
	lw	$1, 60($fp)                     # 4-byte Folded Reload
	lw	$5, 64($fp)                     # 4-byte Folded Reload
	sw	$5, 12($fp)                     # 4-byte Folded Spill
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	addiu	$1, $zero, 64
	subu	$1, $1, $4
	sllv	$3, $3, $1
	xori	$5, $1, 31
	srl	$4, $2, 1
	srlv	$4, $4, $5
	or	$3, $3, $4
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	sllv	$2, $2, $1
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	andi	$1, $1, 32
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	sw	$2, 32($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB69_4
	nop
# %bb.3:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	sw	$1, 32($fp)                     # 4-byte Folded Spill
$BB69_4:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$2, 56($fp)                     # 4-byte Folded Reload
	lw	$3, 32($fp)                     # 4-byte Folded Reload
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB69_6
	nop
# %bb.5:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	sw	$1, 8($fp)                      # 4-byte Folded Spill
$BB69_6:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$3, 4($fp)                      # 4-byte Folded Reload
	lw	$2, 12($fp)                     # 4-byte Folded Reload
	lw	$4, 8($fp)                      # 4-byte Folded Reload
	or	$2, $2, $4
	or	$3, $1, $3
	move	$sp, $fp
	lw	$fp, 80($sp)                    # 4-byte Folded Reload
	lw	$ra, 84($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 88
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.70)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.70)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.70)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.70)($6)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc_rotl32)
	addiu	$2, $4, %lo($__profc_rotl32)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_rotl32)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_rotl32)($4)
	sw	$1, 4($2)
	lw	$2, 4($fp)
	lw	$4, 0($fp)
	sllv	$1, $2, $4
	addiu	$3, $zero, 32
	subu	$3, $3, $4
	srlv	$2, $2, $3
	or	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.71)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.71)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.71)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.71)($6)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc_rotr32)
	addiu	$2, $4, %lo($__profc_rotr32)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_rotr32)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_rotr32)($4)
	sw	$1, 4($2)
	lw	$2, 4($fp)
	lw	$4, 0($fp)
	srlv	$1, $2, $4
	addiu	$3, $zero, 32
	subu	$3, $3, $4
	sllv	$2, $2, $3
	or	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.72)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.72)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.72)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.72)($6)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc_rotl_sz)
	addiu	$2, $4, %lo($__profc_rotl_sz)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_rotl_sz)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_rotl_sz)($4)
	sw	$1, 4($2)
	lw	$2, 4($fp)
	lw	$4, 0($fp)
	sllv	$1, $2, $4
	addiu	$3, $zero, 32
	subu	$3, $3, $4
	srlv	$2, $2, $3
	or	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.73)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.73)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.73)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.73)($6)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc_rotr_sz)
	addiu	$2, $4, %lo($__profc_rotr_sz)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_rotr_sz)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_rotr_sz)($4)
	sw	$1, 4($2)
	lw	$2, 4($fp)
	lw	$4, 0($fp)
	srlv	$1, $2, $4
	addiu	$3, $zero, 32
	subu	$3, $3, $4
	sllv	$2, $2, $3
	or	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.74)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.74)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.74)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.74)($6)
	sw	$1, 4($2)
	sh	$4, 6($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc_rotl16)
	addiu	$2, $4, %lo($__profc_rotl16)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_rotl16)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_rotl16)($4)
	sw	$1, 4($2)
	lhu	$2, 6($fp)
	lw	$4, 0($fp)
	sllv	$1, $2, $4
	addiu	$3, $zero, 16
	subu	$3, $3, $4
	srlv	$2, $2, $3
	or	$1, $1, $2
	andi	$2, $1, 65535
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.75)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.75)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.75)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.75)($6)
	sw	$1, 4($2)
	sh	$4, 6($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc_rotr16)
	addiu	$2, $4, %lo($__profc_rotr16)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_rotr16)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_rotr16)($4)
	sw	$1, 4($2)
	lhu	$2, 6($fp)
	lw	$4, 0($fp)
	srlv	$1, $2, $4
	addiu	$3, $zero, 16
	subu	$3, $3, $4
	sllv	$2, $2, $3
	or	$1, $1, $2
	andi	$2, $1, 65535
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.76)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.76)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.76)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.76)($6)
	sw	$1, 4($2)
	sb	$4, 7($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc_rotl8)
	addiu	$2, $4, %lo($__profc_rotl8)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_rotl8)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_rotl8)($4)
	sw	$1, 4($2)
	lbu	$2, 7($fp)
	lw	$4, 0($fp)
	sllv	$1, $2, $4
	addiu	$3, $zero, 8
	subu	$3, $3, $4
	srlv	$2, $2, $3
	or	$1, $1, $2
	andi	$2, $1, 255
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.77)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.77)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.77)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.77)($6)
	sw	$1, 4($2)
	sb	$4, 7($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc_rotr8)
	addiu	$2, $4, %lo($__profc_rotr8)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_rotr8)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_rotr8)($4)
	sw	$1, 4($2)
	lbu	$2, 7($fp)
	lw	$4, 0($fp)
	srlv	$1, $2, $4
	addiu	$3, $zero, 8
	subu	$3, $3, $4
	sllv	$2, $2, $3
	or	$1, $1, $2
	andi	$2, $1, 255
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.78)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.78)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.78)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.78)($5)
	sw	$1, 4($2)
	sh	$4, 6($fp)
	lui	$4, %hi($__profc_bswap_16)
	addiu	$2, $4, %lo($__profc_bswap_16)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_bswap_16)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_bswap_16)($4)
	sw	$1, 4($2)
	addiu	$1, $zero, 255
	sh	$1, 4($fp)
	lhu	$2, 6($fp)
	lhu	$3, 4($fp)
	sll	$1, $3, 8
	and	$1, $2, $1
	srl	$1, $1, 8
	and	$2, $2, $3
	sll	$2, $2, 8
	or	$1, $1, $2
	andi	$2, $1, 65535
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.79)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.79)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.79)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.79)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc_bswap_32)
	addiu	$2, $4, %lo($__profc_bswap_32)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_bswap_32)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_bswap_32)($4)
	sw	$1, 4($2)
	addiu	$1, $zero, 255
	sw	$1, 0($fp)
	lw	$2, 4($fp)
	lw	$3, 0($fp)
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
	or	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	bswap_64
bswap_64:                               # @bswap_64
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
	lui	$6, %hi(__llvm_gcov_ctr.80)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.80)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.80)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.80)($6)
	sw	$1, 4($2)
	sw	$5, 12($fp)
	sw	$4, 8($fp)
	lui	$4, %hi($__profc_bswap_64)
	addiu	$2, $4, %lo($__profc_bswap_64)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_bswap_64)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_bswap_64)($4)
	sw	$1, 4($2)
	addiu	$1, $zero, 255
	sw	$1, 0($fp)
	sw	$zero, 4($fp)
	lw	$3, 8($fp)
	lw	$7, 12($fp)
	lw	$4, 0($fp)
	sll	$1, $4, 24
	and	$1, $7, $1
	srl	$1, $1, 24
	sll	$5, $4, 16
	and	$2, $7, $5
	srl	$2, $2, 8
	or	$2, $1, $2
	sll	$6, $4, 8
	and	$8, $7, $6
	srl	$1, $8, 24
	sll	$8, $8, 8
	or	$2, $2, $8
	and	$9, $7, $4
	srl	$8, $9, 8
	sll	$9, $9, 24
	or	$2, $2, $9
	or	$1, $1, $8
	srl	$9, $3, 24
	sll	$8, $7, 8
	or	$8, $8, $9
	and	$8, $4, $8
	or	$1, $1, $8
	srl	$8, $3, 8
	sll	$7, $7, 24
	or	$7, $7, $8
	and	$6, $6, $7
	or	$1, $1, $6
	sll	$6, $3, 8
	and	$5, $5, $6
	or	$1, $1, $5
	and	$3, $3, $4
	sll	$3, $3, 24
	or	$3, $1, $3
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_ffs)
	addiu	$2, $4, %lo($__profc_ffs)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_ffs)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_ffs)($4)
	sw	$1, 4($2)
	sw	$zero, 4($fp)
	j	$BB81_1
	nop
$BB81_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	sltiu	$1, $1, 32
	beqz	$1, $BB81_8
	nop
# %bb.2:                                #   in Loop: Header=BB81_1 Depth=1
	j	$BB81_3
	nop
$BB81_3:                                #   in Loop: Header=BB81_1 Depth=1
	lui	$1, %hi($__profc_ffs)
	addiu	$2, $1, %lo($__profc_ffs)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 8($fp)
	lw	$2, 4($fp)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, $BB81_6
	nop
# %bb.4:
	j	$BB81_5
	nop
$BB81_5:
	lui	$4, %hi(__llvm_gcov_ctr.81)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.81)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.81)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.81)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_ffs)
	addiu	$2, $1, %lo($__profc_ffs)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 12($fp)
	j	$BB81_9
	nop
$BB81_6:                                #   in Loop: Header=BB81_1 Depth=1
	j	$BB81_7
	nop
$BB81_7:                                #   in Loop: Header=BB81_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.81)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.81)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	j	$BB81_1
	nop
$BB81_8:
	lui	$1, %hi(__llvm_gcov_ctr.81)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.81)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	sw	$zero, 12($fp)
	j	$BB81_9
	nop
$BB81_9:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_libiberty_ffs)
	addiu	$2, $4, %lo($__profc_libiberty_ffs)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_libiberty_ffs)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_libiberty_ffs)($4)
	sw	$1, 4($2)
	lw	$1, 8($fp)
	bnez	$1, $BB82_3
	nop
# %bb.1:
	j	$BB82_2
	nop
$BB82_2:
	lui	$1, %hi(__llvm_gcov_ctr.82)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.82)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_libiberty_ffs)
	addiu	$2, $1, %lo($__profc_libiberty_ffs)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	sw	$zero, 12($fp)
	j	$BB82_9
	nop
$BB82_3:
	lui	$4, %hi(__llvm_gcov_ctr.82)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.82)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.82)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.82)($4)
	sw	$1, 4($2)
	addiu	$1, $zero, 1
	sw	$1, 4($fp)
	j	$BB82_4
	nop
$BB82_4:                                # =>This Inner Loop Header: Depth=1
	lbu	$1, 8($fp)
	andi	$1, $1, 1
	bnez	$1, $BB82_8
	nop
# %bb.5:                                #   in Loop: Header=BB82_4 Depth=1
	j	$BB82_6
	nop
$BB82_6:                                #   in Loop: Header=BB82_4 Depth=1
	lui	$1, %hi($__profc_libiberty_ffs)
	addiu	$2, $1, %lo($__profc_libiberty_ffs)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 8($fp)
	sra	$1, $1, 1
	sw	$1, 8($fp)
	j	$BB82_7
	nop
$BB82_7:                                #   in Loop: Header=BB82_4 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.82)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.82)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
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
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	gl_isinff
gl_isinff:                              # @gl_isinff
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
	lui	$5, %hi(__llvm_gcov_ctr.83)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.83)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.83)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.83)($5)
	sw	$1, 4($2)
	sw	$4, 28($fp)
	lui	$4, %hi($__profc_gl_isinff)
	addiu	$2, $4, %lo($__profc_gl_isinff)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_gl_isinff)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_gl_isinff)($4)
	sw	$1, 4($2)
	lw	$4, 28($fp)
	lui	$1, 65407
	ori	$5, $1, 65535
	jal	__ltsf2
	nop
	addiu	$1, $zero, 1
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	bltz	$2, $BB83_5
	nop
# %bb.1:
	j	$BB83_2
	nop
$BB83_2:
	lui	$1, %hi(__llvm_gcov_ctr.83)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.83)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_gl_isinff)
	addiu	$2, $1, %lo($__profc_gl_isinff)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$4, 28($fp)
	lui	$1, 32639
	ori	$5, $1, 65535
	jal	__gtsf2
	nop
	addiu	$1, $zero, 0
	slt	$1, $zero, $2
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	bgtz	$2, $BB83_5
	nop
# %bb.3:
	j	$BB83_4
	nop
$BB83_4:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.83)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.83)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_gl_isinff)
	addiu	$3, $2, %lo($__profc_gl_isinff)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	j	$BB83_5
	nop
$BB83_5:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.84)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.84)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.84)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.84)($6)
	sw	$1, 4($2)
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	lui	$4, %hi($__profc_gl_isinfd)
	addiu	$2, $4, %lo($__profc_gl_isinfd)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_gl_isinfd)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_gl_isinfd)($4)
	sw	$1, 4($2)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lui	$1, 65519
	ori	$7, $1, 65535
	addiu	$6, $zero, -1
	jal	__ltdf2
	nop
	addiu	$1, $zero, 1
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	bltz	$2, $BB84_5
	nop
# %bb.1:
	j	$BB84_2
	nop
$BB84_2:
	lui	$1, %hi(__llvm_gcov_ctr.84)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.84)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_gl_isinfd)
	addiu	$2, $1, %lo($__profc_gl_isinfd)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lui	$1, 32751
	ori	$7, $1, 65535
	addiu	$6, $zero, -1
	jal	__gtdf2
	nop
	addiu	$1, $zero, 0
	slt	$1, $zero, $2
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	bgtz	$2, $BB84_5
	nop
# %bb.3:
	j	$BB84_4
	nop
$BB84_4:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.84)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.84)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_gl_isinfd)
	addiu	$3, $2, %lo($__profc_gl_isinfd)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB84_5
	nop
$BB84_5:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.85)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.85)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.85)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.85)($6)
	sw	$1, 4($2)
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	lui	$4, %hi($__profc_gl_isinfl)
	addiu	$2, $4, %lo($__profc_gl_isinfl)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_gl_isinfl)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_gl_isinfl)($4)
	sw	$1, 4($2)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lui	$1, 65519
	ori	$7, $1, 65535
	addiu	$6, $zero, -1
	jal	__ltdf2
	nop
	addiu	$1, $zero, 1
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	bltz	$2, $BB85_5
	nop
# %bb.1:
	j	$BB85_2
	nop
$BB85_2:
	lui	$1, %hi(__llvm_gcov_ctr.85)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.85)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_gl_isinfl)
	addiu	$2, $1, %lo($__profc_gl_isinfl)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lui	$1, 32751
	ori	$7, $1, 65535
	addiu	$6, $zero, -1
	jal	__gtdf2
	nop
	addiu	$1, $zero, 0
	slt	$1, $zero, $2
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	bgtz	$2, $BB85_5
	nop
# %bb.3:
	j	$BB85_4
	nop
$BB85_4:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.85)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.85)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_gl_isinfl)
	addiu	$3, $2, %lo($__profc_gl_isinfl)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	j	$BB85_5
	nop
$BB85_5:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.86)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.86)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.86)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.86)($6)
	sw	$1, 4($2)
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	lui	$4, %hi($__profc__Qp_itoq)
	addiu	$2, $4, %lo($__profc__Qp_itoq)
	lw	$1, 4($2)
	lw	$3, %lo($__profc__Qp_itoq)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc__Qp_itoq)($4)
	sw	$1, 4($2)
	lw	$4, 16($fp)
	jal	__floatsidf
	nop
	lw	$1, 20($fp)
	sw	$3, 4($1)
	sw	$2, 0($1)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	ldexpf
ldexpf:                                 # @ldexpf
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
                                        # kill: def $at killed $a0
	lui	$6, %hi(__llvm_gcov_ctr.87)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.87)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.87)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.87)($6)
	sw	$1, 4($2)
	sw	$4, 44($fp)
	sw	$5, 40($fp)
	lui	$4, %hi($__profc_ldexpf)
	addiu	$2, $4, %lo($__profc_ldexpf)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_ldexpf)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_ldexpf)($4)
	sw	$1, 4($2)
	lw	$1, 44($fp)
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$2, $1, $2
	lui	$1, 32640
	slt	$1, $1, $2
	bnez	$1, $BB87_16
	nop
# %bb.1:
	j	$BB87_2
	nop
$BB87_2:
	lui	$1, %hi(__llvm_gcov_ctr.87)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.87)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_ldexpf)
	addiu	$2, $1, %lo($__profc_ldexpf)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$5, 44($fp)
	sw	$5, 32($fp)                     # 4-byte Folded Spill
	move	$4, $5
	jal	__addsf3
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	move	$4, $2
	jal	__eqsf2
	nop
	beqz	$2, $BB87_16
	nop
# %bb.3:
	j	$BB87_4
	nop
$BB87_4:
	lui	$1, %hi(__llvm_gcov_ctr.87)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.87)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_ldexpf)
	addiu	$2, $1, %lo($__profc_ldexpf)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB87_5
	nop
$BB87_5:
	lui	$1, %hi($__profc_ldexpf)
	addiu	$3, $1, %lo($__profc_ldexpf)
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	lw	$1, 12($3)
	lw	$2, 8($3)
	addiu	$2, $2, 1
	sltiu	$4, $2, 1
	addu	$1, $1, $4
	sw	$2, 8($3)
	sw	$1, 12($3)
	lw	$2, 40($fp)
	slti	$1, $2, 0
	srl	$4, $2, 31
	lw	$2, 36($3)
	lw	$5, 32($3)
	addu	$4, $5, $4
	sltu	$5, $4, $5
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lui	$2, 16384
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	lui	$2, 16128
	sw	$2, 28($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB87_7
	nop
# %bb.6:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	sw	$1, 28($fp)                     # 4-byte Folded Spill
$BB87_7:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$1, 36($fp)
	j	$BB87_8
	nop
$BB87_8:                                # =>This Inner Loop Header: Depth=1
	lui	$1, %hi($__profc_ldexpf)
	addiu	$2, $1, %lo($__profc_ldexpf)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 40($fp)
	srl	$2, $1, 31
	addu	$2, $1, $2
	addiu	$3, $zero, -2
	and	$2, $2, $3
	subu	$1, $1, $2
	beqz	$1, $BB87_11
	nop
# %bb.9:                                #   in Loop: Header=BB87_8 Depth=1
	j	$BB87_10
	nop
$BB87_10:                               #   in Loop: Header=BB87_8 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.87)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.87)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_ldexpf)
	addiu	$2, $1, %lo($__profc_ldexpf)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$5, 36($fp)
	lw	$4, 44($fp)
	jal	__mulsf3
	nop
	sw	$2, 44($fp)
	j	$BB87_11
	nop
$BB87_11:                               #   in Loop: Header=BB87_8 Depth=1
	lw	$1, 40($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 40($fp)
	lw	$1, 40($fp)
	bnez	$1, $BB87_14
	nop
# %bb.12:
	j	$BB87_13
	nop
$BB87_13:
	lui	$1, %hi($__profc_ldexpf)
	addiu	$2, $1, %lo($__profc_ldexpf)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	j	$BB87_15
	nop
$BB87_14:                               #   in Loop: Header=BB87_8 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.87)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.87)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$5, 36($fp)
	move	$4, $5
	jal	__mulsf3
	nop
	sw	$2, 36($fp)
	j	$BB87_8
	nop
$BB87_15:
	j	$BB87_16
	nop
$BB87_16:
	lw	$2, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	ldexp
ldexp:                                  # @ldexp
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	lui	$7, %hi(__llvm_gcov_ctr.88)
	addiu	$2, $7, %lo(__llvm_gcov_ctr.88)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.88)($7)
	addiu	$3, $3, 1
	sltiu	$8, $3, 1
	addu	$1, $1, $8
	sw	$3, %lo(__llvm_gcov_ctr.88)($7)
	sw	$1, 4($2)
	sw	$5, 68($fp)
	sw	$4, 64($fp)
	sw	$6, 60($fp)
	lui	$4, %hi($__profc_ldexp)
	addiu	$2, $4, %lo($__profc_ldexp)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_ldexp)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_ldexp)($4)
	sw	$1, 4($2)
	lw	$2, 64($fp)
	lw	$1, 68($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $3, $1
	sw	$4, 40($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltu	$2, $zero, $2
	sw	$2, 44($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB88_2
	nop
# %bb.1:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	sw	$1, 44($fp)                     # 4-byte Folded Spill
$BB88_2:
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB88_18
	nop
# %bb.3:
	j	$BB88_4
	nop
$BB88_4:
	lui	$1, %hi(__llvm_gcov_ctr.88)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.88)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_ldexp)
	addiu	$2, $1, %lo($__profc_ldexp)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$6, 64($fp)
	sw	$6, 32($fp)                     # 4-byte Folded Spill
	lw	$7, 68($fp)
	sw	$7, 36($fp)                     # 4-byte Folded Spill
	move	$4, $6
	move	$5, $7
	jal	__adddf3
	nop
	lw	$6, 32($fp)                     # 4-byte Folded Reload
	lw	$7, 36($fp)                     # 4-byte Folded Reload
	move	$4, $2
	move	$5, $3
	jal	__eqdf2
	nop
	beqz	$2, $BB88_18
	nop
# %bb.5:
	j	$BB88_6
	nop
$BB88_6:
	lui	$1, %hi(__llvm_gcov_ctr.88)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.88)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_ldexp)
	addiu	$2, $1, %lo($__profc_ldexp)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB88_7
	nop
$BB88_7:
	lui	$1, %hi($__profc_ldexp)
	addiu	$3, $1, %lo($__profc_ldexp)
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	lw	$1, 12($3)
	lw	$2, 8($3)
	addiu	$2, $2, 1
	sltiu	$4, $2, 1
	addu	$1, $1, $4
	sw	$2, 8($3)
	sw	$1, 12($3)
	lw	$2, 60($fp)
	slti	$1, $2, 0
	srl	$4, $2, 31
	lw	$2, 36($3)
	lw	$5, 32($3)
	addu	$4, $5, $4
	sltu	$5, $4, $5
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lui	$2, 16384
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	lui	$2, 16352
	sw	$2, 28($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB88_9
	nop
# %bb.8:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	sw	$1, 28($fp)                     # 4-byte Folded Spill
$BB88_9:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$1, 52($fp)
	sw	$zero, 48($fp)
	j	$BB88_10
	nop
$BB88_10:                               # =>This Inner Loop Header: Depth=1
	lui	$1, %hi($__profc_ldexp)
	addiu	$2, $1, %lo($__profc_ldexp)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 60($fp)
	srl	$2, $1, 31
	addu	$2, $1, $2
	addiu	$3, $zero, -2
	and	$2, $2, $3
	subu	$1, $1, $2
	beqz	$1, $BB88_13
	nop
# %bb.11:                               #   in Loop: Header=BB88_10 Depth=1
	j	$BB88_12
	nop
$BB88_12:                               #   in Loop: Header=BB88_10 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.88)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.88)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_ldexp)
	addiu	$2, $1, %lo($__profc_ldexp)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	lw	$4, 64($fp)
	lw	$5, 68($fp)
	jal	__muldf3
	nop
	sw	$3, 68($fp)
	sw	$2, 64($fp)
	j	$BB88_13
	nop
$BB88_13:                               #   in Loop: Header=BB88_10 Depth=1
	lw	$1, 60($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 60($fp)
	lw	$1, 60($fp)
	bnez	$1, $BB88_16
	nop
# %bb.14:
	j	$BB88_15
	nop
$BB88_15:
	lui	$1, %hi($__profc_ldexp)
	addiu	$2, $1, %lo($__profc_ldexp)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	j	$BB88_17
	nop
$BB88_16:                               #   in Loop: Header=BB88_10 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.88)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.88)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	move	$4, $6
	move	$5, $7
	jal	__muldf3
	nop
	sw	$3, 52($fp)
	sw	$2, 48($fp)
	j	$BB88_10
	nop
$BB88_17:
	j	$BB88_18
	nop
$BB88_18:
	lw	$2, 64($fp)
	lw	$3, 68($fp)
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	ldexpl
ldexpl:                                 # @ldexpl
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
                                        # kill: def $at killed $a1
                                        # kill: def $at killed $a0
	lui	$7, %hi(__llvm_gcov_ctr.89)
	addiu	$2, $7, %lo(__llvm_gcov_ctr.89)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.89)($7)
	addiu	$3, $3, 1
	sltiu	$8, $3, 1
	addu	$1, $1, $8
	sw	$3, %lo(__llvm_gcov_ctr.89)($7)
	sw	$1, 4($2)
	sw	$5, 68($fp)
	sw	$4, 64($fp)
	sw	$6, 60($fp)
	lui	$4, %hi($__profc_ldexpl)
	addiu	$2, $4, %lo($__profc_ldexpl)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_ldexpl)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_ldexpl)($4)
	sw	$1, 4($2)
	lw	$2, 64($fp)
	lw	$1, 68($fp)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$1, $1, $3
	lui	$3, 32752
	slt	$4, $3, $1
	sw	$4, 40($fp)                     # 4-byte Folded Spill
	xor	$1, $1, $3
	sltiu	$1, $1, 1
	sltu	$2, $zero, $2
	sw	$2, 44($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB89_2
	nop
# %bb.1:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	sw	$1, 44($fp)                     # 4-byte Folded Spill
$BB89_2:
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	bnez	$1, $BB89_18
	nop
# %bb.3:
	j	$BB89_4
	nop
$BB89_4:
	lui	$1, %hi(__llvm_gcov_ctr.89)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.89)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_ldexpl)
	addiu	$2, $1, %lo($__profc_ldexpl)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$6, 64($fp)
	sw	$6, 32($fp)                     # 4-byte Folded Spill
	lw	$7, 68($fp)
	sw	$7, 36($fp)                     # 4-byte Folded Spill
	move	$4, $6
	move	$5, $7
	jal	__adddf3
	nop
	lw	$6, 32($fp)                     # 4-byte Folded Reload
	lw	$7, 36($fp)                     # 4-byte Folded Reload
	move	$4, $2
	move	$5, $3
	jal	__eqdf2
	nop
	beqz	$2, $BB89_18
	nop
# %bb.5:
	j	$BB89_6
	nop
$BB89_6:
	lui	$1, %hi(__llvm_gcov_ctr.89)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.89)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_ldexpl)
	addiu	$2, $1, %lo($__profc_ldexpl)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB89_7
	nop
$BB89_7:
	lui	$1, %hi($__profc_ldexpl)
	addiu	$3, $1, %lo($__profc_ldexpl)
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	lw	$1, 12($3)
	lw	$2, 8($3)
	addiu	$2, $2, 1
	sltiu	$4, $2, 1
	addu	$1, $1, $4
	sw	$2, 8($3)
	sw	$1, 12($3)
	lw	$2, 60($fp)
	slti	$1, $2, 0
	srl	$4, $2, 31
	lw	$2, 36($3)
	lw	$5, 32($3)
	addu	$4, $5, $4
	sltu	$5, $4, $5
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lui	$2, 16384
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	lui	$2, 16352
	sw	$2, 28($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB89_9
	nop
# %bb.8:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	sw	$1, 28($fp)                     # 4-byte Folded Spill
$BB89_9:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$1, 52($fp)
	sw	$zero, 48($fp)
	j	$BB89_10
	nop
$BB89_10:                               # =>This Inner Loop Header: Depth=1
	lui	$1, %hi($__profc_ldexpl)
	addiu	$2, $1, %lo($__profc_ldexpl)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 60($fp)
	srl	$2, $1, 31
	addu	$2, $1, $2
	addiu	$3, $zero, -2
	and	$2, $2, $3
	subu	$1, $1, $2
	beqz	$1, $BB89_13
	nop
# %bb.11:                               #   in Loop: Header=BB89_10 Depth=1
	j	$BB89_12
	nop
$BB89_12:                               #   in Loop: Header=BB89_10 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.89)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.89)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_ldexpl)
	addiu	$2, $1, %lo($__profc_ldexpl)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	lw	$4, 64($fp)
	lw	$5, 68($fp)
	jal	__muldf3
	nop
	sw	$3, 68($fp)
	sw	$2, 64($fp)
	j	$BB89_13
	nop
$BB89_13:                               #   in Loop: Header=BB89_10 Depth=1
	lw	$1, 60($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 60($fp)
	lw	$1, 60($fp)
	bnez	$1, $BB89_16
	nop
# %bb.14:
	j	$BB89_15
	nop
$BB89_15:
	lui	$1, %hi($__profc_ldexpl)
	addiu	$2, $1, %lo($__profc_ldexpl)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	j	$BB89_17
	nop
$BB89_16:                               #   in Loop: Header=BB89_10 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.89)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.89)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	move	$4, $6
	move	$5, $7
	jal	__muldf3
	nop
	sw	$3, 52($fp)
	sw	$2, 48($fp)
	j	$BB89_10
	nop
$BB89_17:
	j	$BB89_18
	nop
$BB89_18:
	lw	$2, 64($fp)
	lw	$3, 68($fp)
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$7, %hi(__llvm_gcov_ctr.90)
	addiu	$2, $7, %lo(__llvm_gcov_ctr.90)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.90)($7)
	addiu	$3, $3, 1
	sltiu	$8, $3, 1
	addu	$1, $1, $8
	sw	$3, %lo(__llvm_gcov_ctr.90)($7)
	sw	$1, 4($2)
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	lui	$4, %hi($__profc_memxor)
	addiu	$2, $4, %lo($__profc_memxor)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_memxor)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_memxor)($4)
	sw	$1, 4($2)
	lw	$1, 16($fp)
	sw	$1, 8($fp)
	lw	$1, 20($fp)
	sw	$1, 4($fp)
	j	$BB90_1
	nop
$BB90_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB90_5
	nop
# %bb.2:                                #   in Loop: Header=BB90_1 Depth=1
	j	$BB90_3
	nop
$BB90_3:                                #   in Loop: Header=BB90_1 Depth=1
	lui	$1, %hi($__profc_memxor)
	addiu	$2, $1, %lo($__profc_memxor)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 8($fp)
	addiu	$2, $1, 1
	sw	$2, 8($fp)
	lbu	$3, 0($1)
	lw	$2, 4($fp)
	addiu	$1, $2, 1
	sw	$1, 4($fp)
	lbu	$1, 0($2)
	xor	$1, $1, $3
	sb	$1, 0($2)
	j	$BB90_4
	nop
$BB90_4:                                #   in Loop: Header=BB90_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.90)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.90)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	sw	$1, 12($fp)
	j	$BB90_1
	nop
$BB90_5:
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	strncat
strncat:                                # @strncat
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
	sw	$5, 40($fp)
	sw	$6, 36($fp)
	lui	$4, %hi($__profc_strncat)
	addiu	$2, $4, %lo($__profc_strncat)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_strncat)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_strncat)($4)
	sw	$1, 4($2)
	lw	$4, 44($fp)
	sw	$4, 28($fp)                     # 4-byte Folded Spill
	jal	strlen
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addu	$1, $1, $2
	sw	$1, 32($fp)
	j	$BB91_1
	nop
$BB91_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	addiu	$2, $zero, 0
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	beqz	$1, $BB91_6
	nop
# %bb.2:                                #   in Loop: Header=BB91_1 Depth=1
	j	$BB91_3
	nop
$BB91_3:                                #   in Loop: Header=BB91_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.91)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.91)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.91)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.91)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_strncat)
	addiu	$2, $1, %lo($__profc_strncat)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 40($fp)
	lbu	$1, 0($1)
	lw	$2, 32($fp)
	sb	$1, 0($2)
	sltu	$2, $zero, $1
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	beqz	$1, $BB91_6
	nop
# %bb.4:                                #   in Loop: Header=BB91_1 Depth=1
	j	$BB91_5
	nop
$BB91_5:                                #   in Loop: Header=BB91_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.91)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.91)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lui	$2, %hi($__profc_strncat)
	addiu	$3, $2, %lo($__profc_strncat)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	j	$BB91_6
	nop
$BB91_6:                                #   in Loop: Header=BB91_1 Depth=1
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB91_10
	nop
# %bb.7:                                #   in Loop: Header=BB91_1 Depth=1
	j	$BB91_8
	nop
$BB91_8:                                #   in Loop: Header=BB91_1 Depth=1
	lui	$1, %hi($__profc_strncat)
	addiu	$2, $1, %lo($__profc_strncat)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB91_9
	nop
$BB91_9:                                #   in Loop: Header=BB91_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.91)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.91)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 40($fp)
	addiu	$1, $1, 1
	sw	$1, 40($fp)
	lw	$1, 32($fp)
	addiu	$1, $1, 1
	sw	$1, 32($fp)
	lw	$1, 36($fp)
	addiu	$1, $1, -1
	sw	$1, 36($fp)
	j	$BB91_1
	nop
$BB91_10:
	lui	$1, %hi(__llvm_gcov_ctr.91)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.91)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 36($fp)
	bnez	$1, $BB91_13
	nop
# %bb.11:
	j	$BB91_12
	nop
$BB91_12:
	lui	$1, %hi(__llvm_gcov_ctr.91)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.91)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_strncat)
	addiu	$2, $1, %lo($__profc_strncat)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 32($fp)
	addiu	$2, $zero, 0
	sb	$zero, 0($1)
	j	$BB91_13
	nop
$BB91_13:
	lw	$2, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	strnlen
strnlen:                                # @strnlen
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
	lui	$6, %hi(__llvm_gcov_ctr.92)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.92)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.92)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.92)($6)
	sw	$1, 4($2)
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	lui	$4, %hi($__profc_strnlen)
	addiu	$2, $4, %lo($__profc_strnlen)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_strnlen)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_strnlen)($4)
	sw	$1, 4($2)
	sw	$zero, 12($fp)
	j	$BB92_1
	nop
$BB92_1:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	lw	$3, 16($fp)
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB92_6
	nop
# %bb.2:                                #   in Loop: Header=BB92_1 Depth=1
	j	$BB92_3
	nop
$BB92_3:                                #   in Loop: Header=BB92_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.92)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.92)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_strnlen)
	addiu	$2, $1, %lo($__profc_strnlen)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 20($fp)
	lw	$2, 12($fp)
	addu	$1, $1, $2
	lb	$1, 0($1)
	sltu	$2, $zero, $1
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB92_6
	nop
# %bb.4:                                #   in Loop: Header=BB92_1 Depth=1
	j	$BB92_5
	nop
$BB92_5:                                #   in Loop: Header=BB92_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.92)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.92)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_strnlen)
	addiu	$3, $2, %lo($__profc_strnlen)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB92_6
	nop
$BB92_6:                                #   in Loop: Header=BB92_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB92_10
	nop
# %bb.7:                                #   in Loop: Header=BB92_1 Depth=1
	j	$BB92_8
	nop
$BB92_8:                                #   in Loop: Header=BB92_1 Depth=1
	lui	$1, %hi($__profc_strnlen)
	addiu	$2, $1, %lo($__profc_strnlen)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB92_9
	nop
$BB92_9:                                #   in Loop: Header=BB92_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.92)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.92)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 12($fp)
	addiu	$1, $1, 1
	sw	$1, 12($fp)
	j	$BB92_1
	nop
$BB92_10:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_strpbrk)
	addiu	$2, $4, %lo($__profc_strpbrk)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_strpbrk)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_strpbrk)($4)
	sw	$1, 4($2)
	j	$BB93_1
	nop
$BB93_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_4 Depth 2
	lw	$1, 8($fp)
	lb	$1, 0($1)
	beqz	$1, $BB93_11
	nop
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	j	$BB93_3
	nop
$BB93_3:                                #   in Loop: Header=BB93_1 Depth=1
	lui	$1, %hi($__profc_strpbrk)
	addiu	$2, $1, %lo($__profc_strpbrk)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	j	$BB93_4
	nop
$BB93_4:                                #   Parent Loop BB93_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($fp)
	lb	$1, 0($1)
	beqz	$1, $BB93_10
	nop
# %bb.5:                                #   in Loop: Header=BB93_4 Depth=2
	j	$BB93_6
	nop
$BB93_6:                                #   in Loop: Header=BB93_4 Depth=2
	lui	$1, %hi($__profc_strpbrk)
	addiu	$2, $1, %lo($__profc_strpbrk)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 0($fp)
	addiu	$2, $1, 1
	sw	$2, 0($fp)
	lb	$1, 0($1)
	lw	$2, 8($fp)
	lb	$2, 0($2)
	bne	$1, $2, $BB93_9
	nop
# %bb.7:
	j	$BB93_8
	nop
$BB93_8:
	lui	$1, %hi(__llvm_gcov_ctr.93)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.93)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_strpbrk)
	addiu	$2, $1, %lo($__profc_strpbrk)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 8($fp)
	sw	$1, 12($fp)
	j	$BB93_12
	nop
$BB93_9:                                #   in Loop: Header=BB93_4 Depth=2
	lui	$1, %hi(__llvm_gcov_ctr.93)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.93)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	j	$BB93_4
	nop
$BB93_10:                               #   in Loop: Header=BB93_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.93)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.93)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	j	$BB93_1
	nop
$BB93_11:
	lui	$4, %hi(__llvm_gcov_ctr.93)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.93)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.93)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.93)($4)
	sw	$1, 4($2)
	sw	$zero, 12($fp)
	j	$BB93_12
	nop
$BB93_12:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.94)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.94)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.94)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.94)($6)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	lui	$4, %hi($__profc_strrchr)
	addiu	$2, $4, %lo($__profc_strrchr)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_strrchr)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_strrchr)($4)
	sw	$1, 4($2)
	sw	$zero, 4($fp)
	j	$BB94_2
	nop
$BB94_1:                                #   in Loop: Header=BB94_2 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.94)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.94)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_strrchr)
	addiu	$2, $1, %lo($__profc_strrchr)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	j	$BB94_2
	nop
$BB94_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	lb	$1, 0($1)
	lw	$2, 8($fp)
	bne	$1, $2, $BB94_5
	nop
# %bb.3:                                #   in Loop: Header=BB94_2 Depth=1
	j	$BB94_4
	nop
$BB94_4:                                #   in Loop: Header=BB94_2 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.94)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.94)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_strrchr)
	addiu	$2, $1, %lo($__profc_strrchr)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 12($fp)
	sw	$1, 4($fp)
	j	$BB94_5
	nop
$BB94_5:                                #   in Loop: Header=BB94_2 Depth=1
	j	$BB94_6
	nop
$BB94_6:                                #   in Loop: Header=BB94_2 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $1, 1
	sw	$2, 12($fp)
	lbu	$1, 0($1)
	bnez	$1, $BB94_1
	nop
# %bb.7:
	j	$BB94_8
	nop
$BB94_8:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_strstr)
	addiu	$2, $4, %lo($__profc_strstr)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_strstr)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_strstr)($4)
	sw	$1, 4($2)
	lw	$1, 32($fp)
	sw	$1, 24($fp)
	lw	$4, 28($fp)
	jal	strlen
	nop
	sw	$2, 20($fp)
	lw	$1, 20($fp)
	bnez	$1, $BB95_3
	nop
# %bb.1:
	j	$BB95_2
	nop
$BB95_2:
	lui	$4, %hi(__llvm_gcov_ctr.95)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.95)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.95)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.95)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_strstr)
	addiu	$2, $1, %lo($__profc_strstr)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
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
	beqz	$2, $BB95_11
	nop
# %bb.5:                                #   in Loop: Header=BB95_4 Depth=1
	j	$BB95_6
	nop
$BB95_6:                                #   in Loop: Header=BB95_4 Depth=1
	lui	$1, %hi($__profc_strstr)
	addiu	$2, $1, %lo($__profc_strstr)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	lw	$6, 20($fp)
	jal	strncmp
	nop
	bnez	$2, $BB95_9
	nop
# %bb.7:
	j	$BB95_8
	nop
$BB95_8:
	lui	$1, %hi(__llvm_gcov_ctr.95)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.95)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_strstr)
	addiu	$2, $1, %lo($__profc_strstr)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 24($fp)
	sw	$1, 36($fp)
	j	$BB95_12
	nop
$BB95_9:                                #   in Loop: Header=BB95_4 Depth=1
	j	$BB95_10
	nop
$BB95_10:                               #   in Loop: Header=BB95_4 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.95)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.95)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	j	$BB95_4
	nop
$BB95_11:
	lui	$1, %hi(__llvm_gcov_ctr.95)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.95)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	sw	$zero, 36($fp)
	j	$BB95_12
	nop
$BB95_12:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_copysign)
	addiu	$2, $4, %lo($__profc_copysign)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_copysign)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_copysign)($4)
	sw	$1, 4($2)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	addiu	$7, $zero, 0
	move	$6, $7
	jal	__ltdf2
	nop
	bgez	$2, $BB96_5
	nop
# %bb.1:
	j	$BB96_2
	nop
$BB96_2:
	lui	$4, %hi(__llvm_gcov_ctr.96)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.96)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.96)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.96)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_copysign)
	addiu	$2, $1, %lo($__profc_copysign)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$4, 16($fp)
	lw	$5, 20($fp)
	addiu	$7, $zero, 0
	move	$6, $7
	jal	__gtdf2
	nop
	blez	$2, $BB96_5
	nop
# %bb.3:
	j	$BB96_4
	nop
$BB96_4:
	lui	$1, %hi(__llvm_gcov_ctr.96)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.96)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_copysign)
	addiu	$2, $1, %lo($__profc_copysign)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	j	$BB96_10
	nop
$BB96_5:
	lui	$1, %hi($__profc_copysign)
	addiu	$2, $1, %lo($__profc_copysign)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$4, 24($fp)
	lw	$5, 28($fp)
	addiu	$7, $zero, 0
	move	$6, $7
	jal	__gtdf2
	nop
	blez	$2, $BB96_11
	nop
# %bb.6:
	j	$BB96_7
	nop
$BB96_7:
	lui	$1, %hi(__llvm_gcov_ctr.96)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.96)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_copysign)
	addiu	$2, $1, %lo($__profc_copysign)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$4, 16($fp)
	lw	$5, 20($fp)
	addiu	$7, $zero, 0
	move	$6, $7
	jal	__ltdf2
	nop
	bgez	$2, $BB96_11
	nop
# %bb.8:
	j	$BB96_9
	nop
$BB96_9:
	lui	$1, %hi(__llvm_gcov_ctr.96)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.96)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_copysign)
	addiu	$2, $1, %lo($__profc_copysign)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	j	$BB96_10
	nop
$BB96_10:
	lui	$1, %hi($__profc_copysign)
	addiu	$2, $1, %lo($__profc_copysign)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$2, 24($fp)
	lw	$1, 28($fp)
	lui	$3, 32768
	xor	$1, $1, $3
	sw	$2, 32($fp)
	sw	$1, 36($fp)
	j	$BB96_12
	nop
$BB96_11:
	lui	$1, %hi(__llvm_gcov_ctr.96)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.96)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	j	$BB96_12
	nop
$BB96_12:
	lw	$2, 32($fp)
	lw	$3, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_memmem)
	addiu	$2, $4, %lo($__profc_memmem)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_memmem)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_memmem)($4)
	sw	$1, 4($2)
	lw	$1, 40($fp)
	lw	$2, 36($fp)
	addu	$1, $1, $2
	lw	$2, 28($fp)
	subu	$1, $1, $2
	sw	$1, 20($fp)
	lw	$1, 28($fp)
	bnez	$1, $BB97_3
	nop
# %bb.1:
	j	$BB97_2
	nop
$BB97_2:
	lui	$4, %hi(__llvm_gcov_ctr.97)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.97)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.97)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.97)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_memmem)
	addiu	$2, $1, %lo($__profc_memmem)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 40($fp)
	sw	$1, 44($fp)
	j	$BB97_18
	nop
$BB97_3:
	lw	$1, 36($fp)
	lw	$2, 28($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB97_6
	nop
# %bb.4:
	j	$BB97_5
	nop
$BB97_5:
	lui	$1, %hi(__llvm_gcov_ctr.97)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.97)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_memmem)
	addiu	$2, $1, %lo($__profc_memmem)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	sw	$zero, 44($fp)
	j	$BB97_18
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
	bnez	$1, $BB97_17
	nop
# %bb.8:                                #   in Loop: Header=BB97_7 Depth=1
	j	$BB97_9
	nop
$BB97_9:                                #   in Loop: Header=BB97_7 Depth=1
	lui	$1, %hi($__profc_memmem)
	addiu	$2, $1, %lo($__profc_memmem)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 24($fp)
	lb	$1, 0($1)
	lw	$2, 32($fp)
	lb	$2, 0($2)
	bne	$1, $2, $BB97_15
	nop
# %bb.10:                               #   in Loop: Header=BB97_7 Depth=1
	j	$BB97_11
	nop
$BB97_11:                               #   in Loop: Header=BB97_7 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.97)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.97)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_memmem)
	addiu	$2, $1, %lo($__profc_memmem)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 24($fp)
	addiu	$4, $1, 1
	lw	$1, 32($fp)
	addiu	$5, $1, 1
	lw	$1, 28($fp)
	addiu	$6, $1, -1
	jal	memcmp
	nop
	bnez	$2, $BB97_15
	nop
# %bb.12:
	j	$BB97_13
	nop
$BB97_13:
	lui	$1, %hi(__llvm_gcov_ctr.97)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.97)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_memmem)
	addiu	$2, $1, %lo($__profc_memmem)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	j	$BB97_14
	nop
$BB97_14:
	lui	$1, %hi($__profc_memmem)
	addiu	$2, $1, %lo($__profc_memmem)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 24($fp)
	sw	$1, 44($fp)
	j	$BB97_18
	nop
$BB97_15:                               #   in Loop: Header=BB97_7 Depth=1
	j	$BB97_16
	nop
$BB97_16:                               #   in Loop: Header=BB97_7 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.97)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.97)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	j	$BB97_7
	nop
$BB97_17:
	lui	$1, %hi(__llvm_gcov_ctr.97)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.97)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	sw	$zero, 44($fp)
	j	$BB97_18
	nop
$BB97_18:
	lw	$2, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$7, %hi(__llvm_gcov_ctr.98)
	addiu	$2, $7, %lo(__llvm_gcov_ctr.98)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.98)($7)
	addiu	$3, $3, 1
	sltiu	$8, $3, 1
	addu	$1, $1, $8
	sw	$3, %lo(__llvm_gcov_ctr.98)($7)
	sw	$1, 4($2)
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	lui	$4, %hi($__profc_mempcpy)
	addiu	$2, $4, %lo($__profc_mempcpy)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_mempcpy)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_mempcpy)($4)
	sw	$1, 4($2)
	lw	$4, 28($fp)
	sw	$4, 16($fp)                     # 4-byte Folded Spill
	lw	$5, 24($fp)
	lw	$6, 20($fp)
	jal	memcpy
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 20($fp)
	addu	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_frexp)
	addiu	$2, $4, %lo($__profc_frexp)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_frexp)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_frexp)($4)
	sw	$1, 4($2)
	sw	$zero, 20($fp)
	sw	$zero, 24($fp)
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	addiu	$7, $zero, 0
	move	$6, $7
	jal	__ltdf2
	nop
	bgez	$2, $BB99_3
	nop
# %bb.1:
	j	$BB99_2
	nop
$BB99_2:
	lui	$4, %hi(__llvm_gcov_ctr.99)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.99)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.99)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.99)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_frexp)
	addiu	$2, $1, %lo($__profc_frexp)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 36($fp)
	lui	$2, 32768
	xor	$1, $1, $2
	sw	$1, 36($fp)
	addiu	$1, $zero, 1
	sw	$1, 24($fp)
	j	$BB99_3
	nop
$BB99_3:
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	addiu	$6, $zero, 0
	lui	$7, 16368
	jal	__gedf2
	nop
	bltz	$2, $BB99_10
	nop
# %bb.4:
	j	$BB99_5
	nop
$BB99_5:
	lui	$1, %hi(__llvm_gcov_ctr.99)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.99)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_frexp)
	addiu	$2, $1, %lo($__profc_frexp)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	j	$BB99_6
	nop
$BB99_6:                                # =>This Inner Loop Header: Depth=1
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	addiu	$6, $zero, 0
	lui	$7, 16368
	jal	__gedf2
	nop
	bltz	$2, $BB99_9
	nop
# %bb.7:                                #   in Loop: Header=BB99_6 Depth=1
	j	$BB99_8
	nop
$BB99_8:                                #   in Loop: Header=BB99_6 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.99)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.99)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc_frexp)
	addiu	$2, $1, %lo($__profc_frexp)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	addiu	$6, $zero, 0
	lui	$7, 16352
	jal	__muldf3
	nop
	sw	$3, 36($fp)
	sw	$2, 32($fp)
	j	$BB99_6
	nop
$BB99_9:
	j	$BB99_21
	nop
$BB99_10:
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	addiu	$6, $zero, 0
	lui	$7, 16352
	jal	__ltdf2
	nop
	bgez	$2, $BB99_20
	nop
# %bb.11:
	j	$BB99_12
	nop
$BB99_12:
	lui	$1, %hi(__llvm_gcov_ctr.99)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.99)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_frexp)
	addiu	$2, $1, %lo($__profc_frexp)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	addiu	$7, $zero, 0
	move	$6, $7
	jal	__eqdf2
	nop
	beqz	$2, $BB99_20
	nop
# %bb.13:
	j	$BB99_14
	nop
$BB99_14:
	lui	$1, %hi($__profc_frexp)
	addiu	$2, $1, %lo($__profc_frexp)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	j	$BB99_15
	nop
$BB99_15:
	lui	$1, %hi($__profc_frexp)
	addiu	$2, $1, %lo($__profc_frexp)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	j	$BB99_16
	nop
$BB99_16:                               # =>This Inner Loop Header: Depth=1
	lw	$4, 32($fp)
	lw	$5, 36($fp)
	addiu	$6, $zero, 0
	lui	$7, 16352
	jal	__ltdf2
	nop
	bgez	$2, $BB99_19
	nop
# %bb.17:                               #   in Loop: Header=BB99_16 Depth=1
	j	$BB99_18
	nop
$BB99_18:                               #   in Loop: Header=BB99_16 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.99)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.99)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_frexp)
	addiu	$2, $1, %lo($__profc_frexp)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	lw	$1, 20($fp)
	addiu	$1, $1, -1
	sw	$1, 20($fp)
	lw	$6, 32($fp)
	lw	$7, 36($fp)
	move	$4, $6
	move	$5, $7
	jal	__adddf3
	nop
	sw	$3, 36($fp)
	sw	$2, 32($fp)
	j	$BB99_16
	nop
$BB99_19:
	lui	$1, %hi(__llvm_gcov_ctr.99)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.99)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	j	$BB99_20
	nop
$BB99_20:
	lui	$1, %hi(__llvm_gcov_ctr.99)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.99)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	j	$BB99_21
	nop
$BB99_21:
	lw	$1, 20($fp)
	lw	$2, 28($fp)
	sw	$1, 0($2)
	lw	$1, 24($fp)
	beqz	$1, $BB99_24
	nop
# %bb.22:
	j	$BB99_23
	nop
$BB99_23:
	lui	$1, %hi(__llvm_gcov_ctr.99)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.99)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	lui	$1, %hi($__profc_frexp)
	addiu	$2, $1, %lo($__profc_frexp)
	lw	$1, 68($2)
	lw	$3, 64($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 64($2)
	sw	$1, 68($2)
	lw	$1, 36($fp)
	lui	$2, 32768
	xor	$1, $1, $2
	sw	$1, 36($fp)
	j	$BB99_24
	nop
$BB99_24:
	lw	$2, 32($fp)
	lw	$3, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$8, %hi(__llvm_gcov_ctr.100)
	addiu	$2, $8, %lo(__llvm_gcov_ctr.100)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.100)($8)
	addiu	$3, $3, 1
	sltiu	$9, $3, 1
	addu	$1, $1, $9
	sw	$3, %lo(__llvm_gcov_ctr.100)($8)
	sw	$1, 4($2)
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	lui	$4, %hi($__profc___muldi3)
	addiu	$2, $4, %lo($__profc___muldi3)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___muldi3)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___muldi3)($4)
	sw	$1, 4($2)
	sw	$zero, 12($fp)
	sw	$zero, 8($fp)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 4($fp)
	sw	$1, 0($fp)
	j	$BB100_1
	nop
$BB100_1:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	or	$1, $1, $2
	beqz	$1, $BB100_7
	nop
# %bb.2:                                #   in Loop: Header=BB100_1 Depth=1
	j	$BB100_3
	nop
$BB100_3:                               #   in Loop: Header=BB100_1 Depth=1
	lui	$1, %hi($__profc___muldi3)
	addiu	$2, $1, %lo($__profc___muldi3)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lbu	$1, 0($fp)
	andi	$1, $1, 1
	beqz	$1, $BB100_6
	nop
# %bb.4:                                #   in Loop: Header=BB100_1 Depth=1
	j	$BB100_5
	nop
$BB100_5:                               #   in Loop: Header=BB100_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.100)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.100)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___muldi3)
	addiu	$2, $1, %lo($__profc___muldi3)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$2, 16($fp)
	lw	$4, 20($fp)
	lw	$3, 8($fp)
	lw	$1, 12($fp)
	addu	$1, $1, $4
	addu	$2, $3, $2
	sltu	$3, $2, $3
	addu	$1, $1, $3
	sw	$2, 8($fp)
	sw	$1, 12($fp)
	j	$BB100_6
	nop
$BB100_6:                               #   in Loop: Header=BB100_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.100)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.100)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 20($fp)
	lw	$2, 16($fp)
	srl	$3, $2, 31
	sll	$1, $1, 1
	or	$1, $1, $3
	sll	$2, $2, 1
	sw	$2, 16($fp)
	sw	$1, 20($fp)
	lw	$1, 0($fp)
	lw	$2, 4($fp)
	sll	$3, $2, 31
	srl	$1, $1, 1
	or	$1, $1, $3
	srl	$2, $2, 1
	sw	$2, 4($fp)
	sw	$1, 0($fp)
	j	$BB100_1
	nop
$BB100_7:
	lw	$2, 8($fp)
	lw	$3, 12($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc_udivmodsi4)
	addiu	$2, $4, %lo($__profc_udivmodsi4)
	lw	$1, 4($2)
	lw	$3, %lo($__profc_udivmodsi4)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc_udivmodsi4)($4)
	sw	$1, 4($2)
	addiu	$1, $zero, 1
	sw	$1, 12($fp)
	sw	$zero, 8($fp)
	j	$BB101_1
	nop
$BB101_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$3, 24($fp)
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB101_9
	nop
# %bb.2:                                #   in Loop: Header=BB101_1 Depth=1
	j	$BB101_3
	nop
$BB101_3:                               #   in Loop: Header=BB101_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.101)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.101)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.101)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.101)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc_udivmodsi4)
	addiu	$2, $1, %lo($__profc_udivmodsi4)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 12($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB101_9
	nop
# %bb.4:                                #   in Loop: Header=BB101_1 Depth=1
	j	$BB101_5
	nop
$BB101_5:                               #   in Loop: Header=BB101_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.101)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.101)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc_udivmodsi4)
	addiu	$2, $1, %lo($__profc_udivmodsi4)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	j	$BB101_6
	nop
$BB101_6:                               #   in Loop: Header=BB101_1 Depth=1
	lui	$1, %hi($__profc_udivmodsi4)
	addiu	$2, $1, %lo($__profc_udivmodsi4)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 20($fp)
	lui	$2, 32768
	and	$1, $1, $2
	sltiu	$2, $1, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB101_9
	nop
# %bb.7:                                #   in Loop: Header=BB101_1 Depth=1
	j	$BB101_8
	nop
$BB101_8:                               #   in Loop: Header=BB101_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.101)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.101)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc_udivmodsi4)
	addiu	$3, $2, %lo($__profc_udivmodsi4)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB101_9
	nop
$BB101_9:                               #   in Loop: Header=BB101_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB101_12
	nop
# %bb.10:                               #   in Loop: Header=BB101_1 Depth=1
	j	$BB101_11
	nop
$BB101_11:                              #   in Loop: Header=BB101_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.101)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.101)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc_udivmodsi4)
	addiu	$2, $1, %lo($__profc_udivmodsi4)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 20($fp)
	sll	$1, $1, 1
	sw	$1, 20($fp)
	lw	$1, 12($fp)
	sll	$1, $1, 1
	sw	$1, 12($fp)
	j	$BB101_1
	nop
$BB101_12:
	j	$BB101_13
	nop
$BB101_13:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB101_19
	nop
# %bb.14:                               #   in Loop: Header=BB101_13 Depth=1
	j	$BB101_15
	nop
$BB101_15:                              #   in Loop: Header=BB101_13 Depth=1
	lui	$1, %hi($__profc_udivmodsi4)
	addiu	$2, $1, %lo($__profc_udivmodsi4)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	sltu	$1, $1, $2
	bnez	$1, $BB101_18
	nop
# %bb.16:                               #   in Loop: Header=BB101_13 Depth=1
	j	$BB101_17
	nop
$BB101_17:                              #   in Loop: Header=BB101_13 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.101)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.101)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc_udivmodsi4)
	addiu	$2, $1, %lo($__profc_udivmodsi4)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	lw	$2, 20($fp)
	lw	$1, 24($fp)
	subu	$1, $1, $2
	sw	$1, 24($fp)
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	or	$1, $1, $2
	sw	$1, 8($fp)
	j	$BB101_18
	nop
$BB101_18:                              #   in Loop: Header=BB101_13 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.101)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.101)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 12($fp)
	srl	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	srl	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB101_13
	nop
$BB101_19:
	lw	$1, 16($fp)
	beqz	$1, $BB101_22
	nop
# %bb.20:
	j	$BB101_21
	nop
$BB101_21:
	lui	$1, %hi(__llvm_gcov_ctr.101)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.101)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lui	$1, %hi($__profc_udivmodsi4)
	addiu	$2, $1, %lo($__profc_udivmodsi4)
	lw	$1, 68($2)
	lw	$3, 64($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 64($2)
	sw	$1, 68($2)
	lw	$1, 24($fp)
	sw	$1, 28($fp)
	j	$BB101_23
	nop
$BB101_22:
	lui	$1, %hi(__llvm_gcov_ctr.101)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.101)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	lw	$1, 8($fp)
	sw	$1, 28($fp)
	j	$BB101_23
	nop
$BB101_23:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___clrsbqi2)
	addiu	$2, $4, %lo($__profc___clrsbqi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___clrsbqi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___clrsbqi2)($4)
	sw	$1, 4($2)
	lb	$1, 11($fp)
	bgez	$1, $BB102_3
	nop
# %bb.1:
	j	$BB102_2
	nop
$BB102_2:
	lui	$4, %hi(__llvm_gcov_ctr.102)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.102)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.102)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.102)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___clrsbqi2)
	addiu	$2, $1, %lo($__profc___clrsbqi2)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lbu	$1, 11($fp)
	not	$1, $1
	sb	$1, 11($fp)
	j	$BB102_3
	nop
$BB102_3:
	lb	$1, 11($fp)
	bnez	$1, $BB102_6
	nop
# %bb.4:
	j	$BB102_5
	nop
$BB102_5:
	lui	$1, %hi(__llvm_gcov_ctr.102)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.102)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___clrsbqi2)
	addiu	$2, $1, %lo($__profc___clrsbqi2)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	addiu	$1, $zero, 7
	sw	$1, 12($fp)
	j	$BB102_7
	nop
$BB102_6:
	lui	$1, %hi(__llvm_gcov_ctr.102)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.102)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
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
	j	$BB102_7
	nop
$BB102_7:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
	.set	nomips16
	.ent	__clrsbdi2
__clrsbdi2:                             # @__clrsbdi2
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
	sw	$5, 20($fp)
	sw	$4, 16($fp)
	lui	$4, %hi($__profc___clrsbdi2)
	addiu	$2, $4, %lo($__profc___clrsbdi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___clrsbdi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___clrsbdi2)($4)
	sw	$1, 4($2)
	lw	$1, 20($fp)
	bgez	$1, $BB103_3
	nop
# %bb.1:
	j	$BB103_2
	nop
$BB103_2:
	lui	$4, %hi(__llvm_gcov_ctr.103)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.103)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.103)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.103)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___clrsbdi2)
	addiu	$2, $1, %lo($__profc___clrsbdi2)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$2, 20($fp)
	lw	$1, 16($fp)
	not	$1, $1
	not	$2, $2
	sw	$2, 20($fp)
	sw	$1, 16($fp)
	j	$BB103_3
	nop
$BB103_3:
	lw	$2, 20($fp)
	lw	$1, 16($fp)
	or	$1, $1, $2
	bnez	$1, $BB103_6
	nop
# %bb.4:
	j	$BB103_5
	nop
$BB103_5:
	lui	$1, %hi(__llvm_gcov_ctr.103)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.103)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___clrsbdi2)
	addiu	$2, $1, %lo($__profc___clrsbdi2)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	addiu	$1, $zero, 63
	sw	$1, 28($fp)
	j	$BB103_9
	nop
$BB103_6:
	lui	$1, %hi(__llvm_gcov_ctr.103)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.103)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$3, 16($fp)
	lw	$1, 20($fp)
	srl	$2, $1, 1
	or	$2, $1, $2
	srl	$4, $2, 2
	or	$2, $2, $4
	srl	$4, $2, 4
	or	$2, $2, $4
	srl	$4, $2, 8
	or	$2, $2, $4
	srl	$4, $2, 16
	nor	$2, $2, $4
	srl	$4, $2, 1
	lui	$5, 21845
	ori	$7, $5, 21845
	and	$4, $4, $7
	subu	$4, $2, $4
	lui	$2, 13107
	ori	$6, $2, 13107
	and	$2, $4, $6
	srl	$4, $4, 2
	and	$4, $4, $6
	addu	$2, $2, $4
	srl	$4, $2, 4
	addu	$2, $2, $4
	lui	$4, 3855
	ori	$4, $4, 3855
	and	$2, $2, $4
	sll	$5, $2, 8
	addu	$8, $5, $2
	sll	$5, $2, 16
	addu	$5, $5, $8
	sll	$2, $2, 24
	addu	$2, $2, $5
	srl	$2, $2, 24
	srl	$5, $3, 1
	or	$3, $3, $5
	srl	$5, $3, 2
	or	$3, $3, $5
	srl	$5, $3, 4
	or	$3, $3, $5
	srl	$5, $3, 8
	or	$3, $3, $5
	srl	$5, $3, 16
	nor	$3, $3, $5
	srl	$5, $3, 1
	and	$5, $5, $7
	subu	$5, $3, $5
	and	$3, $5, $6
	srl	$5, $5, 2
	and	$5, $5, $6
	addu	$3, $3, $5
	srl	$5, $3, 4
	addu	$3, $3, $5
	and	$3, $3, $4
	sll	$4, $3, 8
	addu	$5, $4, $3
	sll	$4, $3, 16
	addu	$4, $4, $5
	sll	$3, $3, 24
	addu	$3, $3, $4
	srl	$3, $3, 24
	addiu	$3, $3, 32
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	sltu	$1, $zero, $1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB103_8
	nop
# %bb.7:
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	sw	$1, 8($fp)                      # 4-byte Folded Spill
$BB103_8:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	sw	$1, 12($fp)
	lw	$1, 12($fp)
	addiu	$1, $1, -1
	sw	$1, 28($fp)
	j	$BB103_9
	nop
$BB103_9:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.104)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.104)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.104)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.104)($6)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	lui	$4, %hi($__profc___mulsi3)
	addiu	$2, $4, %lo($__profc___mulsi3)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___mulsi3)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___mulsi3)($4)
	sw	$1, 4($2)
	sw	$zero, 4($fp)
	j	$BB104_1
	nop
$BB104_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB104_7
	nop
# %bb.2:                                #   in Loop: Header=BB104_1 Depth=1
	j	$BB104_3
	nop
$BB104_3:                               #   in Loop: Header=BB104_1 Depth=1
	lui	$1, %hi($__profc___mulsi3)
	addiu	$2, $1, %lo($__profc___mulsi3)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lbu	$1, 12($fp)
	andi	$1, $1, 1
	beqz	$1, $BB104_6
	nop
# %bb.4:                                #   in Loop: Header=BB104_1 Depth=1
	j	$BB104_5
	nop
$BB104_5:                               #   in Loop: Header=BB104_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.104)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.104)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___mulsi3)
	addiu	$2, $1, %lo($__profc___mulsi3)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$2, 8($fp)
	lw	$1, 4($fp)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	j	$BB104_6
	nop
$BB104_6:                               #   in Loop: Header=BB104_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.104)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.104)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 12($fp)
	srl	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 8($fp)
	sll	$1, $1, 1
	sw	$1, 8($fp)
	j	$BB104_1
	nop
$BB104_7:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___cmovd)
	addiu	$2, $4, %lo($__profc___cmovd)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___cmovd)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___cmovd)($4)
	sw	$1, 4($2)
	lw	$1, 20($fp)
	srl	$1, $1, 3
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	addiu	$2, $zero, -8
	and	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 28($fp)
	sw	$1, 4($fp)
	lw	$1, 24($fp)
	sw	$1, 0($fp)
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	sltu	$1, $1, $2
	bnez	$1, $BB105_5
	nop
# %bb.1:
	j	$BB105_2
	nop
$BB105_2:
	lui	$4, %hi(__llvm_gcov_ctr.105)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.105)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.105)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.105)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___cmovd)
	addiu	$2, $1, %lo($__profc___cmovd)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	lw	$3, 20($fp)
	addu	$1, $1, $3
	sltu	$1, $1, $2
	bnez	$1, $BB105_5
	nop
# %bb.3:
	j	$BB105_4
	nop
$BB105_4:
	lui	$1, %hi($__profc___cmovd)
	addiu	$2, $1, %lo($__profc___cmovd)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB105_15
	nop
$BB105_5:
	lui	$1, %hi($__profc___cmovd)
	addiu	$2, $1, %lo($__profc___cmovd)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	sw	$zero, 16($fp)
	j	$BB105_6
	nop
$BB105_6:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$2, 12($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB105_10
	nop
# %bb.7:                                #   in Loop: Header=BB105_6 Depth=1
	j	$BB105_8
	nop
$BB105_8:                               #   in Loop: Header=BB105_6 Depth=1
	lui	$1, %hi($__profc___cmovd)
	addiu	$2, $1, %lo($__profc___cmovd)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 24($fp)
	lw	$2, 16($fp)
	sll	$4, $2, 3
	addu	$2, $1, $4
	lw	$1, 0($2)
	lw	$3, 4($2)
	lw	$2, 28($fp)
	addu	$2, $2, $4
	sw	$3, 4($2)
	sw	$1, 0($2)
	j	$BB105_9
	nop
$BB105_9:                               #   in Loop: Header=BB105_6 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.105)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.105)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	j	$BB105_6
	nop
$BB105_10:
	j	$BB105_11
	nop
$BB105_11:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 20($fp)
	lw	$1, 8($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB105_14
	nop
# %bb.12:                               #   in Loop: Header=BB105_11 Depth=1
	j	$BB105_13
	nop
$BB105_13:                              #   in Loop: Header=BB105_11 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.105)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.105)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc___cmovd)
	addiu	$2, $1, %lo($__profc___cmovd)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 0($fp)
	lw	$3, 8($fp)
	addu	$1, $1, $3
	lbu	$1, 0($1)
	lw	$2, 4($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	j	$BB105_11
	nop
$BB105_14:
	lui	$1, %hi(__llvm_gcov_ctr.105)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.105)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB105_20
	nop
$BB105_15:
	j	$BB105_16
	nop
$BB105_16:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $1, -1
	sw	$2, 20($fp)
	beqz	$1, $BB105_19
	nop
# %bb.17:                               #   in Loop: Header=BB105_16 Depth=1
	j	$BB105_18
	nop
$BB105_18:                              #   in Loop: Header=BB105_16 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.105)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.105)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc___cmovd)
	addiu	$2, $1, %lo($__profc___cmovd)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 0($fp)
	lw	$3, 20($fp)
	addu	$1, $1, $3
	lbu	$1, 0($1)
	lw	$2, 4($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	j	$BB105_16
	nop
$BB105_19:
	lui	$1, %hi(__llvm_gcov_ctr.105)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.105)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	j	$BB105_20
	nop
$BB105_20:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___cmovh)
	addiu	$2, $4, %lo($__profc___cmovh)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___cmovh)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___cmovh)($4)
	sw	$1, 4($2)
	lw	$1, 20($fp)
	srl	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 28($fp)
	sw	$1, 8($fp)
	lw	$1, 24($fp)
	sw	$1, 4($fp)
	lw	$1, 8($fp)
	lw	$2, 4($fp)
	sltu	$1, $1, $2
	bnez	$1, $BB106_5
	nop
# %bb.1:
	j	$BB106_2
	nop
$BB106_2:
	lui	$4, %hi(__llvm_gcov_ctr.106)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.106)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.106)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.106)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___cmovh)
	addiu	$2, $1, %lo($__profc___cmovh)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$2, 8($fp)
	lw	$1, 4($fp)
	lw	$3, 20($fp)
	addu	$1, $1, $3
	sltu	$1, $1, $2
	bnez	$1, $BB106_5
	nop
# %bb.3:
	j	$BB106_4
	nop
$BB106_4:
	lui	$1, %hi($__profc___cmovh)
	addiu	$2, $1, %lo($__profc___cmovh)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB106_14
	nop
$BB106_5:
	lui	$1, %hi($__profc___cmovh)
	addiu	$2, $1, %lo($__profc___cmovh)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	sw	$zero, 16($fp)
	j	$BB106_6
	nop
$BB106_6:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$2, 12($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB106_10
	nop
# %bb.7:                                #   in Loop: Header=BB106_6 Depth=1
	j	$BB106_8
	nop
$BB106_8:                               #   in Loop: Header=BB106_6 Depth=1
	lui	$1, %hi($__profc___cmovh)
	addiu	$2, $1, %lo($__profc___cmovh)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 24($fp)
	lw	$2, 16($fp)
	sll	$3, $2, 1
	addu	$1, $1, $3
	lhu	$1, 0($1)
	lw	$2, 28($fp)
	addu	$2, $2, $3
	sh	$1, 0($2)
	j	$BB106_9
	nop
$BB106_9:                               #   in Loop: Header=BB106_6 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.106)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.106)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	j	$BB106_6
	nop
$BB106_10:
	lbu	$1, 20($fp)
	andi	$1, $1, 1
	beqz	$1, $BB106_13
	nop
# %bb.11:
	j	$BB106_12
	nop
$BB106_12:
	lui	$1, %hi(__llvm_gcov_ctr.106)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.106)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc___cmovh)
	addiu	$2, $1, %lo($__profc___cmovh)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 4($fp)
	lw	$2, 20($fp)
	addiu	$3, $2, -1
	addu	$1, $1, $3
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	j	$BB106_13
	nop
$BB106_13:
	lui	$1, %hi(__llvm_gcov_ctr.106)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.106)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB106_19
	nop
$BB106_14:
	j	$BB106_15
	nop
$BB106_15:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $1, -1
	sw	$2, 20($fp)
	beqz	$1, $BB106_18
	nop
# %bb.16:                               #   in Loop: Header=BB106_15 Depth=1
	j	$BB106_17
	nop
$BB106_17:                              #   in Loop: Header=BB106_15 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.106)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.106)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc___cmovh)
	addiu	$2, $1, %lo($__profc___cmovh)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 4($fp)
	lw	$3, 20($fp)
	addu	$1, $1, $3
	lbu	$1, 0($1)
	lw	$2, 8($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	j	$BB106_15
	nop
$BB106_18:
	lui	$1, %hi(__llvm_gcov_ctr.106)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.106)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	j	$BB106_19
	nop
$BB106_19:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___cmovw)
	addiu	$2, $4, %lo($__profc___cmovw)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___cmovw)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___cmovw)($4)
	sw	$1, 4($2)
	lw	$1, 20($fp)
	srl	$1, $1, 2
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	addiu	$2, $zero, -4
	and	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 28($fp)
	sw	$1, 4($fp)
	lw	$1, 24($fp)
	sw	$1, 0($fp)
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	sltu	$1, $1, $2
	bnez	$1, $BB107_5
	nop
# %bb.1:
	j	$BB107_2
	nop
$BB107_2:
	lui	$4, %hi(__llvm_gcov_ctr.107)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.107)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.107)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.107)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___cmovw)
	addiu	$2, $1, %lo($__profc___cmovw)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	lw	$3, 20($fp)
	addu	$1, $1, $3
	sltu	$1, $1, $2
	bnez	$1, $BB107_5
	nop
# %bb.3:
	j	$BB107_4
	nop
$BB107_4:
	lui	$1, %hi($__profc___cmovw)
	addiu	$2, $1, %lo($__profc___cmovw)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB107_15
	nop
$BB107_5:
	lui	$1, %hi($__profc___cmovw)
	addiu	$2, $1, %lo($__profc___cmovw)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	sw	$zero, 16($fp)
	j	$BB107_6
	nop
$BB107_6:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$2, 12($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB107_10
	nop
# %bb.7:                                #   in Loop: Header=BB107_6 Depth=1
	j	$BB107_8
	nop
$BB107_8:                               #   in Loop: Header=BB107_6 Depth=1
	lui	$1, %hi($__profc___cmovw)
	addiu	$2, $1, %lo($__profc___cmovw)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 24($fp)
	lw	$2, 16($fp)
	sll	$3, $2, 2
	addu	$1, $1, $3
	lw	$1, 0($1)
	lw	$2, 28($fp)
	addu	$2, $2, $3
	sw	$1, 0($2)
	j	$BB107_9
	nop
$BB107_9:                               #   in Loop: Header=BB107_6 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.107)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.107)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	j	$BB107_6
	nop
$BB107_10:
	j	$BB107_11
	nop
$BB107_11:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 20($fp)
	lw	$1, 8($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB107_14
	nop
# %bb.12:                               #   in Loop: Header=BB107_11 Depth=1
	j	$BB107_13
	nop
$BB107_13:                              #   in Loop: Header=BB107_11 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.107)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.107)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc___cmovw)
	addiu	$2, $1, %lo($__profc___cmovw)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 0($fp)
	lw	$3, 8($fp)
	addu	$1, $1, $3
	lbu	$1, 0($1)
	lw	$2, 4($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	j	$BB107_11
	nop
$BB107_14:
	lui	$1, %hi(__llvm_gcov_ctr.107)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.107)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB107_20
	nop
$BB107_15:
	j	$BB107_16
	nop
$BB107_16:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $1, -1
	sw	$2, 20($fp)
	beqz	$1, $BB107_19
	nop
# %bb.17:                               #   in Loop: Header=BB107_16 Depth=1
	j	$BB107_18
	nop
$BB107_18:                              #   in Loop: Header=BB107_16 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.107)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.107)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc___cmovw)
	addiu	$2, $1, %lo($__profc___cmovw)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 0($fp)
	lw	$3, 20($fp)
	addu	$1, $1, $3
	lbu	$1, 0($1)
	lw	$2, 4($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	j	$BB107_16
	nop
$BB107_19:
	lui	$1, %hi(__llvm_gcov_ctr.107)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.107)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	j	$BB107_20
	nop
$BB107_20:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.108)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.108)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.108)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.108)($6)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc___modi)
	addiu	$2, $4, %lo($__profc___modi)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___modi)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___modi)($4)
	sw	$1, 4($2)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.109)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.109)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.109)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.109)($5)
	sw	$1, 4($2)
	sw	$4, 20($fp)
	lui	$4, %hi($__profc___uitod)
	addiu	$2, $4, %lo($__profc___uitod)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___uitod)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___uitod)($4)
	sw	$1, 4($2)
	lw	$4, 20($fp)
	jal	__floatunsidf
	nop
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.110)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.110)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.110)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.110)($5)
	sw	$1, 4($2)
	sw	$4, 20($fp)
	lui	$4, %hi($__profc___uitof)
	addiu	$2, $4, %lo($__profc___uitof)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___uitof)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___uitof)($4)
	sw	$1, 4($2)
	lw	$4, 20($fp)
	jal	__floatunsisf
	nop
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.111)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.111)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.111)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.111)($6)
	sw	$1, 4($2)
	sw	$5, 20($fp)
	sw	$4, 16($fp)
	lui	$4, %hi($__profc___ulltod)
	addiu	$2, $4, %lo($__profc___ulltod)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___ulltod)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___ulltod)($4)
	sw	$1, 4($2)
	lw	$4, 16($fp)
	lw	$5, 20($fp)
	jal	__floatundidf
	nop
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.112)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.112)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.112)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.112)($6)
	sw	$1, 4($2)
	sw	$5, 20($fp)
	sw	$4, 16($fp)
	lui	$4, %hi($__profc___ulltof)
	addiu	$2, $4, %lo($__profc___ulltof)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___ulltof)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___ulltof)($4)
	sw	$1, 4($2)
	lw	$4, 16($fp)
	lw	$5, 20($fp)
	jal	__floatundisf
	nop
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.113)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.113)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.113)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.113)($6)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc___umodi)
	addiu	$2, $4, %lo($__profc___umodi)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___umodi)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___umodi)($4)
	sw	$1, 4($2)
	lw	$2, 4($fp)
	lw	$1, 0($fp)
	divu	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.114)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.114)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.114)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.114)($5)
	sw	$1, 4($2)
	sh	$4, 6($fp)
	lui	$4, %hi($__profc___clzhi2)
	addiu	$2, $4, %lo($__profc___clzhi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___clzhi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___clzhi2)($4)
	sw	$1, 4($2)
	sw	$zero, 0($fp)
	j	$BB114_1
	nop
$BB114_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($fp)
	slti	$1, $1, 16
	beqz	$1, $BB114_8
	nop
# %bb.2:                                #   in Loop: Header=BB114_1 Depth=1
	j	$BB114_3
	nop
$BB114_3:                               #   in Loop: Header=BB114_1 Depth=1
	lui	$1, %hi($__profc___clzhi2)
	addiu	$2, $1, %lo($__profc___clzhi2)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lhu	$1, 6($fp)
	lw	$3, 0($fp)
	addiu	$2, $zero, 15
	subu	$2, $2, $3
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, $BB114_6
	nop
# %bb.4:
	j	$BB114_5
	nop
$BB114_5:
	lui	$1, %hi(__llvm_gcov_ctr.114)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.114)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___clzhi2)
	addiu	$2, $1, %lo($__profc___clzhi2)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	j	$BB114_8
	nop
$BB114_6:                               #   in Loop: Header=BB114_1 Depth=1
	j	$BB114_7
	nop
$BB114_7:                               #   in Loop: Header=BB114_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.114)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.114)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 0($fp)
	addiu	$1, $1, 1
	sw	$1, 0($fp)
	j	$BB114_1
	nop
$BB114_8:
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.115)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.115)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.115)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.115)($5)
	sw	$1, 4($2)
	sh	$4, 6($fp)
	lui	$4, %hi($__profc___ctzhi2)
	addiu	$2, $4, %lo($__profc___ctzhi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___ctzhi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___ctzhi2)($4)
	sw	$1, 4($2)
	sw	$zero, 0($fp)
	j	$BB115_1
	nop
$BB115_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($fp)
	slti	$1, $1, 16
	beqz	$1, $BB115_8
	nop
# %bb.2:                                #   in Loop: Header=BB115_1 Depth=1
	j	$BB115_3
	nop
$BB115_3:                               #   in Loop: Header=BB115_1 Depth=1
	lui	$1, %hi($__profc___ctzhi2)
	addiu	$2, $1, %lo($__profc___ctzhi2)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lhu	$1, 6($fp)
	lw	$2, 0($fp)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, $BB115_6
	nop
# %bb.4:
	j	$BB115_5
	nop
$BB115_5:
	lui	$1, %hi(__llvm_gcov_ctr.115)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.115)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___ctzhi2)
	addiu	$2, $1, %lo($__profc___ctzhi2)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	j	$BB115_8
	nop
$BB115_6:                               #   in Loop: Header=BB115_1 Depth=1
	j	$BB115_7
	nop
$BB115_7:                               #   in Loop: Header=BB115_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.115)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.115)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 0($fp)
	addiu	$1, $1, 1
	sw	$1, 0($fp)
	j	$BB115_1
	nop
$BB115_8:
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___fixunssfsi)
	addiu	$2, $4, %lo($__profc___fixunssfsi)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___fixunssfsi)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___fixunssfsi)($4)
	sw	$1, 4($2)
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
	lui	$4, %hi(__llvm_gcov_ctr.116)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.116)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.116)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.116)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___fixunssfsi)
	addiu	$2, $1, %lo($__profc___fixunssfsi)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$4, 16($fp)
	lui	$5, 50944
	jal	__addsf3
	nop
	move	$4, $2
	jal	__fixsfsi
	nop
	ori	$1, $zero, 32768
	addu	$1, $2, $1
	sw	$1, 20($fp)
	j	$BB116_4
	nop
$BB116_3:
	lui	$1, %hi(__llvm_gcov_ctr.116)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.116)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
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
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.117)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.117)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.117)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.117)($5)
	sw	$1, 4($2)
	sh	$4, 14($fp)
	lui	$4, %hi($__profc___parityhi2)
	addiu	$2, $4, %lo($__profc___parityhi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___parityhi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___parityhi2)($4)
	sw	$1, 4($2)
	sw	$zero, 4($fp)
	sw	$zero, 8($fp)
	j	$BB117_1
	nop
$BB117_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	slti	$1, $1, 16
	beqz	$1, $BB117_8
	nop
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
	j	$BB117_3
	nop
$BB117_3:                               #   in Loop: Header=BB117_1 Depth=1
	lui	$1, %hi($__profc___parityhi2)
	addiu	$2, $1, %lo($__profc___parityhi2)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lhu	$1, 14($fp)
	lw	$2, 8($fp)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, $BB117_6
	nop
# %bb.4:                                #   in Loop: Header=BB117_1 Depth=1
	j	$BB117_5
	nop
$BB117_5:                               #   in Loop: Header=BB117_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.117)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.117)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___parityhi2)
	addiu	$2, $1, %lo($__profc___parityhi2)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	j	$BB117_6
	nop
$BB117_6:                               #   in Loop: Header=BB117_1 Depth=1
	j	$BB117_7
	nop
$BB117_7:                               #   in Loop: Header=BB117_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.117)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.117)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	j	$BB117_1
	nop
$BB117_8:
	lw	$1, 4($fp)
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.118)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.118)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.118)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.118)($5)
	sw	$1, 4($2)
	sh	$4, 14($fp)
	lui	$4, %hi($__profc___popcounthi2)
	addiu	$2, $4, %lo($__profc___popcounthi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___popcounthi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___popcounthi2)($4)
	sw	$1, 4($2)
	sw	$zero, 4($fp)
	sw	$zero, 8($fp)
	j	$BB118_1
	nop
$BB118_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	slti	$1, $1, 16
	beqz	$1, $BB118_8
	nop
# %bb.2:                                #   in Loop: Header=BB118_1 Depth=1
	j	$BB118_3
	nop
$BB118_3:                               #   in Loop: Header=BB118_1 Depth=1
	lui	$1, %hi($__profc___popcounthi2)
	addiu	$2, $1, %lo($__profc___popcounthi2)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lhu	$1, 14($fp)
	lw	$2, 8($fp)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, $BB118_6
	nop
# %bb.4:                                #   in Loop: Header=BB118_1 Depth=1
	j	$BB118_5
	nop
$BB118_5:                               #   in Loop: Header=BB118_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.118)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.118)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___popcounthi2)
	addiu	$2, $1, %lo($__profc___popcounthi2)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	j	$BB118_6
	nop
$BB118_6:                               #   in Loop: Header=BB118_1 Depth=1
	j	$BB118_7
	nop
$BB118_7:                               #   in Loop: Header=BB118_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.118)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.118)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	j	$BB118_1
	nop
$BB118_8:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.119)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.119)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.119)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.119)($6)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	lui	$4, %hi($__profc___mulsi3_iq2000)
	addiu	$2, $4, %lo($__profc___mulsi3_iq2000)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___mulsi3_iq2000)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___mulsi3_iq2000)($4)
	sw	$1, 4($2)
	sw	$zero, 4($fp)
	j	$BB119_1
	nop
$BB119_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB119_7
	nop
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	j	$BB119_3
	nop
$BB119_3:                               #   in Loop: Header=BB119_1 Depth=1
	lui	$1, %hi($__profc___mulsi3_iq2000)
	addiu	$2, $1, %lo($__profc___mulsi3_iq2000)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lbu	$1, 12($fp)
	andi	$1, $1, 1
	beqz	$1, $BB119_6
	nop
# %bb.4:                                #   in Loop: Header=BB119_1 Depth=1
	j	$BB119_5
	nop
$BB119_5:                               #   in Loop: Header=BB119_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.119)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.119)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___mulsi3_iq2000)
	addiu	$2, $1, %lo($__profc___mulsi3_iq2000)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$2, 8($fp)
	lw	$1, 4($fp)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	j	$BB119_6
	nop
$BB119_6:                               #   in Loop: Header=BB119_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.119)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.119)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 12($fp)
	srl	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 8($fp)
	sll	$1, $1, 1
	sw	$1, 8($fp)
	j	$BB119_1
	nop
$BB119_7:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___mulsi3_lm32)
	addiu	$2, $4, %lo($__profc___mulsi3_lm32)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___mulsi3_lm32)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___mulsi3_lm32)($4)
	sw	$1, 4($2)
	sw	$zero, 0($fp)
	lw	$1, 8($fp)
	bnez	$1, $BB120_3
	nop
# %bb.1:
	j	$BB120_2
	nop
$BB120_2:
	lui	$1, %hi(__llvm_gcov_ctr.120)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.120)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___mulsi3_lm32)
	addiu	$2, $1, %lo($__profc___mulsi3_lm32)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	sw	$zero, 12($fp)
	j	$BB120_11
	nop
$BB120_3:
	lui	$4, %hi(__llvm_gcov_ctr.120)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.120)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.120)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.120)($4)
	sw	$1, 4($2)
	j	$BB120_4
	nop
$BB120_4:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	beqz	$1, $BB120_10
	nop
# %bb.5:                                #   in Loop: Header=BB120_4 Depth=1
	j	$BB120_6
	nop
$BB120_6:                               #   in Loop: Header=BB120_4 Depth=1
	lui	$1, %hi($__profc___mulsi3_lm32)
	addiu	$2, $1, %lo($__profc___mulsi3_lm32)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lbu	$1, 4($fp)
	andi	$1, $1, 1
	beqz	$1, $BB120_9
	nop
# %bb.7:                                #   in Loop: Header=BB120_4 Depth=1
	j	$BB120_8
	nop
$BB120_8:                               #   in Loop: Header=BB120_4 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.120)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.120)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc___mulsi3_lm32)
	addiu	$2, $1, %lo($__profc___mulsi3_lm32)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$2, 8($fp)
	lw	$1, 0($fp)
	addu	$1, $1, $2
	sw	$1, 0($fp)
	j	$BB120_9
	nop
$BB120_9:                               #   in Loop: Header=BB120_4 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.120)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.120)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 8($fp)
	sll	$1, $1, 1
	sw	$1, 8($fp)
	lw	$1, 4($fp)
	srl	$1, $1, 1
	sw	$1, 4($fp)
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
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___udivmodsi4)
	addiu	$2, $4, %lo($__profc___udivmodsi4)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___udivmodsi4)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___udivmodsi4)($4)
	sw	$1, 4($2)
	addiu	$1, $zero, 1
	sw	$1, 12($fp)
	sw	$zero, 8($fp)
	j	$BB121_1
	nop
$BB121_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$3, 24($fp)
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB121_9
	nop
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	j	$BB121_3
	nop
$BB121_3:                               #   in Loop: Header=BB121_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.121)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.121)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.121)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.121)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___udivmodsi4)
	addiu	$2, $1, %lo($__profc___udivmodsi4)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 12($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB121_9
	nop
# %bb.4:                                #   in Loop: Header=BB121_1 Depth=1
	j	$BB121_5
	nop
$BB121_5:                               #   in Loop: Header=BB121_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.121)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.121)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___udivmodsi4)
	addiu	$2, $1, %lo($__profc___udivmodsi4)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	j	$BB121_6
	nop
$BB121_6:                               #   in Loop: Header=BB121_1 Depth=1
	lui	$1, %hi($__profc___udivmodsi4)
	addiu	$2, $1, %lo($__profc___udivmodsi4)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 20($fp)
	lui	$2, 32768
	and	$1, $1, $2
	sltiu	$2, $1, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB121_9
	nop
# %bb.7:                                #   in Loop: Header=BB121_1 Depth=1
	j	$BB121_8
	nop
$BB121_8:                               #   in Loop: Header=BB121_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.121)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.121)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc___udivmodsi4)
	addiu	$3, $2, %lo($__profc___udivmodsi4)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB121_9
	nop
$BB121_9:                               #   in Loop: Header=BB121_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB121_12
	nop
# %bb.10:                               #   in Loop: Header=BB121_1 Depth=1
	j	$BB121_11
	nop
$BB121_11:                              #   in Loop: Header=BB121_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.121)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.121)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc___udivmodsi4)
	addiu	$2, $1, %lo($__profc___udivmodsi4)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 20($fp)
	sll	$1, $1, 1
	sw	$1, 20($fp)
	lw	$1, 12($fp)
	sll	$1, $1, 1
	sw	$1, 12($fp)
	j	$BB121_1
	nop
$BB121_12:
	j	$BB121_13
	nop
$BB121_13:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB121_19
	nop
# %bb.14:                               #   in Loop: Header=BB121_13 Depth=1
	j	$BB121_15
	nop
$BB121_15:                              #   in Loop: Header=BB121_13 Depth=1
	lui	$1, %hi($__profc___udivmodsi4)
	addiu	$2, $1, %lo($__profc___udivmodsi4)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	sltu	$1, $1, $2
	bnez	$1, $BB121_18
	nop
# %bb.16:                               #   in Loop: Header=BB121_13 Depth=1
	j	$BB121_17
	nop
$BB121_17:                              #   in Loop: Header=BB121_13 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.121)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.121)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc___udivmodsi4)
	addiu	$2, $1, %lo($__profc___udivmodsi4)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	lw	$2, 20($fp)
	lw	$1, 24($fp)
	subu	$1, $1, $2
	sw	$1, 24($fp)
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	or	$1, $1, $2
	sw	$1, 8($fp)
	j	$BB121_18
	nop
$BB121_18:                              #   in Loop: Header=BB121_13 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.121)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.121)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 12($fp)
	srl	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	srl	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB121_13
	nop
$BB121_19:
	lw	$1, 16($fp)
	beqz	$1, $BB121_22
	nop
# %bb.20:
	j	$BB121_21
	nop
$BB121_21:
	lui	$1, %hi(__llvm_gcov_ctr.121)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.121)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lui	$1, %hi($__profc___udivmodsi4)
	addiu	$2, $1, %lo($__profc___udivmodsi4)
	lw	$1, 68($2)
	lw	$3, 64($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 64($2)
	sw	$1, 68($2)
	lw	$1, 24($fp)
	sw	$1, 28($fp)
	j	$BB121_23
	nop
$BB121_22:
	lui	$1, %hi(__llvm_gcov_ctr.121)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.121)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	lw	$1, 8($fp)
	sw	$1, 28($fp)
	j	$BB121_23
	nop
$BB121_23:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___mspabi_cmpf)
	addiu	$2, $4, %lo($__profc___mspabi_cmpf)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___mspabi_cmpf)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___mspabi_cmpf)($4)
	sw	$1, 4($2)
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
	lui	$4, %hi(__llvm_gcov_ctr.122)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.122)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.122)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.122)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___mspabi_cmpf)
	addiu	$2, $1, %lo($__profc___mspabi_cmpf)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	addiu	$1, $zero, -1
	sw	$1, 28($fp)
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
	lui	$1, %hi(__llvm_gcov_ctr.122)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.122)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___mspabi_cmpf)
	addiu	$2, $1, %lo($__profc___mspabi_cmpf)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	addiu	$1, $zero, 1
	sw	$1, 28($fp)
	j	$BB122_7
	nop
$BB122_6:
	lui	$1, %hi(__llvm_gcov_ctr.122)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.122)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	sw	$zero, 28($fp)
	j	$BB122_7
	nop
$BB122_7:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___mspabi_cmpd)
	addiu	$2, $4, %lo($__profc___mspabi_cmpd)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___mspabi_cmpd)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___mspabi_cmpd)($4)
	sw	$1, 4($2)
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
	lui	$4, %hi(__llvm_gcov_ctr.123)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.123)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.123)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.123)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___mspabi_cmpd)
	addiu	$2, $1, %lo($__profc___mspabi_cmpd)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	addiu	$1, $zero, -1
	sw	$1, 36($fp)
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
	lui	$1, %hi(__llvm_gcov_ctr.123)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.123)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___mspabi_cmpd)
	addiu	$2, $1, %lo($__profc___mspabi_cmpd)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	addiu	$1, $zero, 1
	sw	$1, 36($fp)
	j	$BB123_7
	nop
$BB123_6:
	lui	$1, %hi(__llvm_gcov_ctr.123)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.123)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	sw	$zero, 36($fp)
	j	$BB123_7
	nop
$BB123_7:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.124)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.124)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.124)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.124)($6)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc___mspabi_mpysll)
	addiu	$2, $4, %lo($__profc___mspabi_mpysll)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___mspabi_mpysll)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___mspabi_mpysll)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	mult	$1, $2
	mflo	$2
	mfhi	$3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.125)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.125)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.125)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.125)($6)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lui	$4, %hi($__profc___mspabi_mpyull)
	addiu	$2, $4, %lo($__profc___mspabi_mpyull)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___mspabi_mpyull)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___mspabi_mpyull)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	multu	$1, $2
	mflo	$2
	mfhi	$3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___mulhi3)
	addiu	$2, $4, %lo($__profc___mulhi3)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___mulhi3)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___mulhi3)($4)
	sw	$1, 4($2)
	sw	$zero, 16($fp)
	sw	$zero, 12($fp)
	lw	$1, 24($fp)
	bgez	$1, $BB126_3
	nop
# %bb.1:
	j	$BB126_2
	nop
$BB126_2:
	lui	$4, %hi(__llvm_gcov_ctr.126)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.126)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.126)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.126)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___mulhi3)
	addiu	$2, $1, %lo($__profc___mulhi3)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 24($fp)
	addiu	$1, $zero, 1
	sw	$1, 16($fp)
	j	$BB126_3
	nop
$BB126_3:
	addiu	$1, $zero, 0
	sb	$zero, 23($fp)
	j	$BB126_4
	nop
$BB126_4:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB126_9
	nop
# %bb.5:                                #   in Loop: Header=BB126_4 Depth=1
	j	$BB126_6
	nop
$BB126_6:                               #   in Loop: Header=BB126_4 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.126)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.126)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___mulhi3)
	addiu	$2, $1, %lo($__profc___mulhi3)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lb	$1, 23($fp)
	sltiu	$1, $1, 32
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	move	$2, $1
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB126_9
	nop
# %bb.7:                                #   in Loop: Header=BB126_4 Depth=1
	j	$BB126_8
	nop
$BB126_8:                               #   in Loop: Header=BB126_4 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.126)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.126)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc___mulhi3)
	addiu	$3, $2, %lo($__profc___mulhi3)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	j	$BB126_9
	nop
$BB126_9:                               #   in Loop: Header=BB126_4 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB126_16
	nop
# %bb.10:                               #   in Loop: Header=BB126_4 Depth=1
	j	$BB126_11
	nop
$BB126_11:                              #   in Loop: Header=BB126_4 Depth=1
	lui	$1, %hi($__profc___mulhi3)
	addiu	$2, $1, %lo($__profc___mulhi3)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lbu	$1, 24($fp)
	andi	$1, $1, 1
	beqz	$1, $BB126_14
	nop
# %bb.12:                               #   in Loop: Header=BB126_4 Depth=1
	j	$BB126_13
	nop
$BB126_13:                              #   in Loop: Header=BB126_4 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.126)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.126)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc___mulhi3)
	addiu	$2, $1, %lo($__profc___mulhi3)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$2, 28($fp)
	lw	$1, 12($fp)
	addu	$1, $1, $2
	sw	$1, 12($fp)
	j	$BB126_14
	nop
$BB126_14:                              #   in Loop: Header=BB126_4 Depth=1
	lw	$1, 28($fp)
	sll	$1, $1, 1
	sw	$1, 28($fp)
	lw	$1, 24($fp)
	sra	$1, $1, 1
	sw	$1, 24($fp)
	j	$BB126_15
	nop
$BB126_15:                              #   in Loop: Header=BB126_4 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.126)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.126)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lbu	$1, 23($fp)
	addiu	$1, $1, 1
	sb	$1, 23($fp)
	j	$BB126_4
	nop
$BB126_16:
	lw	$1, 16($fp)
	beqz	$1, $BB126_19
	nop
# %bb.17:
	j	$BB126_18
	nop
$BB126_18:
	lui	$1, %hi(__llvm_gcov_ctr.126)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.126)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lui	$1, %hi($__profc___mulhi3)
	addiu	$2, $1, %lo($__profc___mulhi3)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 12($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB126_20
	nop
$BB126_19:
	lui	$1, %hi(__llvm_gcov_ctr.126)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.126)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 12($fp)
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	j	$BB126_20
	nop
$BB126_20:
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.127)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.127)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.127)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.127)($6)
	sw	$1, 4($2)
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	lui	$4, %hi($__profc___divsi3)
	addiu	$2, $4, %lo($__profc___divsi3)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___divsi3)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___divsi3)($4)
	sw	$1, 4($2)
	sw	$zero, 20($fp)
	lw	$1, 28($fp)
	bgez	$1, $BB127_3
	nop
# %bb.1:
	j	$BB127_2
	nop
$BB127_2:
	lui	$1, %hi(__llvm_gcov_ctr.127)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.127)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___divsi3)
	addiu	$2, $1, %lo($__profc___divsi3)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 28($fp)
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
	lui	$1, %hi(__llvm_gcov_ctr.127)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.127)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc___divsi3)
	addiu	$2, $1, %lo($__profc___divsi3)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 24($fp)
	lw	$1, 20($fp)
	sltiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB127_6
	nop
$BB127_6:
	lw	$4, 28($fp)
	lw	$5, 24($fp)
	addiu	$6, $zero, 0
	jal	__udivmodsi4
	nop
	sw	$2, 16($fp)
	lw	$1, 20($fp)
	beqz	$1, $BB127_9
	nop
# %bb.7:
	j	$BB127_8
	nop
$BB127_8:
	lui	$1, %hi(__llvm_gcov_ctr.127)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.127)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc___divsi3)
	addiu	$2, $1, %lo($__profc___divsi3)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 16($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 16($fp)
	j	$BB127_9
	nop
$BB127_9:
	lw	$2, 16($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.128)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.128)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.128)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.128)($6)
	sw	$1, 4($2)
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	lui	$4, %hi($__profc___modsi3)
	addiu	$2, $4, %lo($__profc___modsi3)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___modsi3)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___modsi3)($4)
	sw	$1, 4($2)
	sw	$zero, 20($fp)
	lw	$1, 28($fp)
	bgez	$1, $BB128_3
	nop
# %bb.1:
	j	$BB128_2
	nop
$BB128_2:
	lui	$1, %hi(__llvm_gcov_ctr.128)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.128)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___modsi3)
	addiu	$2, $1, %lo($__profc___modsi3)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 28($fp)
	addiu	$1, $zero, 1
	sw	$1, 20($fp)
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
	lui	$1, %hi(__llvm_gcov_ctr.128)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.128)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc___modsi3)
	addiu	$2, $1, %lo($__profc___modsi3)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 24($fp)
	j	$BB128_6
	nop
$BB128_6:
	lw	$4, 28($fp)
	lw	$5, 24($fp)
	addiu	$6, $zero, 1
	jal	__udivmodsi4
	nop
	sw	$2, 16($fp)
	lw	$1, 20($fp)
	beqz	$1, $BB128_9
	nop
# %bb.7:
	j	$BB128_8
	nop
$BB128_8:
	lui	$1, %hi(__llvm_gcov_ctr.128)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.128)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc___modsi3)
	addiu	$2, $1, %lo($__profc___modsi3)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lw	$1, 16($fp)
	addiu	$2, $zero, 0
	negu	$1, $1
	sw	$1, 16($fp)
	j	$BB128_9
	nop
$BB128_9:
	lw	$2, 16($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___udivmodhi4)
	addiu	$2, $4, %lo($__profc___udivmodhi4)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___udivmodhi4)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___udivmodhi4)($4)
	sw	$1, 4($2)
	addiu	$1, $zero, 1
	sh	$1, 10($fp)
	addiu	$1, $zero, 0
	sh	$zero, 8($fp)
	j	$BB129_1
	nop
$BB129_1:                               # =>This Inner Loop Header: Depth=1
	lhu	$1, 18($fp)
	lhu	$3, 20($fp)
	addiu	$2, $zero, 0
	slt	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB129_9
	nop
# %bb.2:                                #   in Loop: Header=BB129_1 Depth=1
	j	$BB129_3
	nop
$BB129_3:                               #   in Loop: Header=BB129_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.129)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.129)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.129)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.129)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___udivmodhi4)
	addiu	$2, $1, %lo($__profc___udivmodhi4)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lhu	$1, 10($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB129_9
	nop
# %bb.4:                                #   in Loop: Header=BB129_1 Depth=1
	j	$BB129_5
	nop
$BB129_5:                               #   in Loop: Header=BB129_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.129)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.129)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___udivmodhi4)
	addiu	$2, $1, %lo($__profc___udivmodhi4)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	j	$BB129_6
	nop
$BB129_6:                               #   in Loop: Header=BB129_1 Depth=1
	lui	$1, %hi($__profc___udivmodhi4)
	addiu	$2, $1, %lo($__profc___udivmodhi4)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lhu	$1, 18($fp)
	andi	$1, $1, 32768
	sltiu	$2, $1, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB129_9
	nop
# %bb.7:                                #   in Loop: Header=BB129_1 Depth=1
	j	$BB129_8
	nop
$BB129_8:                               #   in Loop: Header=BB129_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.129)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.129)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc___udivmodhi4)
	addiu	$3, $2, %lo($__profc___udivmodhi4)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB129_9
	nop
$BB129_9:                               #   in Loop: Header=BB129_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB129_12
	nop
# %bb.10:                               #   in Loop: Header=BB129_1 Depth=1
	j	$BB129_11
	nop
$BB129_11:                              #   in Loop: Header=BB129_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.129)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.129)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc___udivmodhi4)
	addiu	$2, $1, %lo($__profc___udivmodhi4)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lhu	$1, 18($fp)
	sll	$1, $1, 1
	sh	$1, 18($fp)
	lhu	$1, 10($fp)
	sll	$1, $1, 1
	sh	$1, 10($fp)
	j	$BB129_1
	nop
$BB129_12:
	j	$BB129_13
	nop
$BB129_13:                              # =>This Inner Loop Header: Depth=1
	lhu	$1, 10($fp)
	beqz	$1, $BB129_19
	nop
# %bb.14:                               #   in Loop: Header=BB129_13 Depth=1
	j	$BB129_15
	nop
$BB129_15:                              #   in Loop: Header=BB129_13 Depth=1
	lui	$1, %hi($__profc___udivmodhi4)
	addiu	$2, $1, %lo($__profc___udivmodhi4)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lhu	$1, 20($fp)
	lhu	$2, 18($fp)
	slt	$1, $1, $2
	bnez	$1, $BB129_18
	nop
# %bb.16:                               #   in Loop: Header=BB129_13 Depth=1
	j	$BB129_17
	nop
$BB129_17:                              #   in Loop: Header=BB129_13 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.129)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.129)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc___udivmodhi4)
	addiu	$2, $1, %lo($__profc___udivmodhi4)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	lhu	$2, 18($fp)
	lhu	$1, 20($fp)
	subu	$1, $1, $2
	sh	$1, 20($fp)
	lhu	$2, 10($fp)
	lhu	$1, 8($fp)
	or	$1, $1, $2
	sh	$1, 8($fp)
	j	$BB129_18
	nop
$BB129_18:                              #   in Loop: Header=BB129_13 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.129)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.129)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lhu	$1, 10($fp)
	srl	$1, $1, 1
	sh	$1, 10($fp)
	lhu	$1, 18($fp)
	srl	$1, $1, 1
	sh	$1, 18($fp)
	j	$BB129_13
	nop
$BB129_19:
	lw	$1, 12($fp)
	beqz	$1, $BB129_22
	nop
# %bb.20:
	j	$BB129_21
	nop
$BB129_21:
	lui	$1, %hi(__llvm_gcov_ctr.129)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.129)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lui	$1, %hi($__profc___udivmodhi4)
	addiu	$2, $1, %lo($__profc___udivmodhi4)
	lw	$1, 68($2)
	lw	$3, 64($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 64($2)
	sw	$1, 68($2)
	lhu	$1, 20($fp)
	sh	$1, 22($fp)
	j	$BB129_23
	nop
$BB129_22:
	lui	$1, %hi(__llvm_gcov_ctr.129)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.129)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	lhu	$1, 8($fp)
	sh	$1, 22($fp)
	j	$BB129_23
	nop
$BB129_23:
	lhu	$2, 22($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___udivmodsi4_libgcc)
	addiu	$2, $4, %lo($__profc___udivmodsi4_libgcc)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___udivmodsi4_libgcc)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___udivmodsi4_libgcc)($4)
	sw	$1, 4($2)
	addiu	$1, $zero, 1
	sw	$1, 12($fp)
	sw	$zero, 8($fp)
	j	$BB130_1
	nop
$BB130_1:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$3, 24($fp)
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB130_9
	nop
# %bb.2:                                #   in Loop: Header=BB130_1 Depth=1
	j	$BB130_3
	nop
$BB130_3:                               #   in Loop: Header=BB130_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.130)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.130)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.130)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.130)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___udivmodsi4_libgcc)
	addiu	$2, $1, %lo($__profc___udivmodsi4_libgcc)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$1, 12($fp)
	addiu	$2, $zero, 0
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB130_9
	nop
# %bb.4:                                #   in Loop: Header=BB130_1 Depth=1
	j	$BB130_5
	nop
$BB130_5:                               #   in Loop: Header=BB130_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.130)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.130)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___udivmodsi4_libgcc)
	addiu	$2, $1, %lo($__profc___udivmodsi4_libgcc)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	j	$BB130_6
	nop
$BB130_6:                               #   in Loop: Header=BB130_1 Depth=1
	lui	$1, %hi($__profc___udivmodsi4_libgcc)
	addiu	$2, $1, %lo($__profc___udivmodsi4_libgcc)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 20($fp)
	lui	$2, 32768
	and	$1, $1, $2
	sltiu	$2, $1, 1
	sw	$2, 0($fp)                      # 4-byte Folded Spill
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	bnez	$1, $BB130_9
	nop
# %bb.7:                                #   in Loop: Header=BB130_1 Depth=1
	j	$BB130_8
	nop
$BB130_8:                               #   in Loop: Header=BB130_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	lui	$2, %hi(__llvm_gcov_ctr.130)
	addiu	$3, $2, %lo(__llvm_gcov_ctr.130)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lui	$2, %hi($__profc___udivmodsi4_libgcc)
	addiu	$3, $2, %lo($__profc___udivmodsi4_libgcc)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, $4, 1
	sltiu	$5, $4, 1
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB130_9
	nop
$BB130_9:                               #   in Loop: Header=BB130_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB130_12
	nop
# %bb.10:                               #   in Loop: Header=BB130_1 Depth=1
	j	$BB130_11
	nop
$BB130_11:                              #   in Loop: Header=BB130_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.130)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.130)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc___udivmodsi4_libgcc)
	addiu	$2, $1, %lo($__profc___udivmodsi4_libgcc)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$1, 20($fp)
	sll	$1, $1, 1
	sw	$1, 20($fp)
	lw	$1, 12($fp)
	sll	$1, $1, 1
	sw	$1, 12($fp)
	j	$BB130_1
	nop
$BB130_12:
	j	$BB130_13
	nop
$BB130_13:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	beqz	$1, $BB130_19
	nop
# %bb.14:                               #   in Loop: Header=BB130_13 Depth=1
	j	$BB130_15
	nop
$BB130_15:                              #   in Loop: Header=BB130_13 Depth=1
	lui	$1, %hi($__profc___udivmodsi4_libgcc)
	addiu	$2, $1, %lo($__profc___udivmodsi4_libgcc)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	sltu	$1, $1, $2
	bnez	$1, $BB130_18
	nop
# %bb.16:                               #   in Loop: Header=BB130_13 Depth=1
	j	$BB130_17
	nop
$BB130_17:                              #   in Loop: Header=BB130_13 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.130)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.130)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lui	$1, %hi($__profc___udivmodsi4_libgcc)
	addiu	$2, $1, %lo($__profc___udivmodsi4_libgcc)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	lw	$2, 20($fp)
	lw	$1, 24($fp)
	subu	$1, $1, $2
	sw	$1, 24($fp)
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	or	$1, $1, $2
	sw	$1, 8($fp)
	j	$BB130_18
	nop
$BB130_18:                              #   in Loop: Header=BB130_13 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.130)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.130)
	lw	$1, 44($2)
	lw	$3, 40($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 40($2)
	sw	$1, 44($2)
	lw	$1, 12($fp)
	srl	$1, $1, 1
	sw	$1, 12($fp)
	lw	$1, 20($fp)
	srl	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB130_13
	nop
$BB130_19:
	lw	$1, 16($fp)
	beqz	$1, $BB130_22
	nop
# %bb.20:
	j	$BB130_21
	nop
$BB130_21:
	lui	$1, %hi(__llvm_gcov_ctr.130)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.130)
	lw	$1, 52($2)
	lw	$3, 48($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 48($2)
	sw	$1, 52($2)
	lui	$1, %hi($__profc___udivmodsi4_libgcc)
	addiu	$2, $1, %lo($__profc___udivmodsi4_libgcc)
	lw	$1, 68($2)
	lw	$3, 64($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 64($2)
	sw	$1, 68($2)
	lw	$1, 24($fp)
	sw	$1, 28($fp)
	j	$BB130_23
	nop
$BB130_22:
	lui	$1, %hi(__llvm_gcov_ctr.130)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.130)
	lw	$1, 60($2)
	lw	$3, 56($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 56($2)
	sw	$1, 60($2)
	lw	$1, 8($fp)
	sw	$1, 28($fp)
	j	$BB130_23
	nop
$BB130_23:
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___ashldi3)
	addiu	$2, $4, %lo($__profc___ashldi3)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___ashldi3)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___ashldi3)($4)
	sw	$1, 4($2)
	addiu	$1, $zero, 32
	sw	$1, 16($fp)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lbu	$1, 20($fp)
	andi	$1, $1, 32
	beqz	$1, $BB131_3
	nop
# %bb.1:
	j	$BB131_2
	nop
$BB131_2:
	lui	$4, %hi(__llvm_gcov_ctr.131)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.131)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.131)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.131)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___ashldi3)
	addiu	$2, $1, %lo($__profc___ashldi3)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	sw	$zero, 0($fp)
	lw	$1, 8($fp)
	lw	$2, 20($fp)
	addiu	$2, $2, -32
	sllv	$1, $1, $2
	sw	$1, 4($fp)
	j	$BB131_7
	nop
$BB131_3:
	lw	$1, 20($fp)
	bnez	$1, $BB131_6
	nop
# %bb.4:
	j	$BB131_5
	nop
$BB131_5:
	lui	$1, %hi(__llvm_gcov_ctr.131)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.131)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___ashldi3)
	addiu	$2, $1, %lo($__profc___ashldi3)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	j	$BB131_8
	nop
$BB131_6:
	lui	$1, %hi(__llvm_gcov_ctr.131)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.131)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 8($fp)
	lw	$2, 20($fp)
	sllv	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 12($fp)
	lw	$4, 20($fp)
	sllv	$1, $1, $4
	lw	$2, 8($fp)
	addiu	$3, $zero, 32
	subu	$3, $3, $4
	srlv	$2, $2, $3
	or	$1, $1, $2
	sw	$1, 4($fp)
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
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___ashrdi3)
	addiu	$2, $4, %lo($__profc___ashrdi3)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___ashrdi3)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___ashrdi3)($4)
	sw	$1, 4($2)
	addiu	$1, $zero, 32
	sw	$1, 16($fp)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lbu	$1, 20($fp)
	andi	$1, $1, 32
	beqz	$1, $BB132_3
	nop
# %bb.1:
	j	$BB132_2
	nop
$BB132_2:
	lui	$4, %hi(__llvm_gcov_ctr.132)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.132)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.132)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.132)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___ashrdi3)
	addiu	$2, $1, %lo($__profc___ashrdi3)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
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
	bnez	$1, $BB132_6
	nop
# %bb.4:
	j	$BB132_5
	nop
$BB132_5:
	lui	$1, %hi(__llvm_gcov_ctr.132)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.132)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___ashrdi3)
	addiu	$2, $1, %lo($__profc___ashrdi3)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	j	$BB132_8
	nop
$BB132_6:
	lui	$1, %hi(__llvm_gcov_ctr.132)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.132)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 12($fp)
	lw	$2, 20($fp)
	srav	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 12($fp)
	lw	$3, 20($fp)
	addiu	$2, $zero, 32
	subu	$2, $2, $3
	sllv	$1, $1, $2
	lw	$2, 8($fp)
	srlv	$2, $2, $3
	or	$1, $1, $2
	sw	$1, 0($fp)
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
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.133)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.133)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.133)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.133)($6)
	sw	$1, 4($2)
	sw	$5, 4($fp)
	sw	$4, 0($fp)
	lui	$4, %hi($__profc___bswapdi2)
	addiu	$2, $4, %lo($__profc___bswapdi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___bswapdi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___bswapdi2)($4)
	sw	$1, 4($2)
	lw	$3, 0($fp)
	lw	$2, 4($fp)
	srl	$1, $2, 24
	lui	$4, 255
	and	$5, $2, $4
	srl	$5, $5, 8
	or	$1, $1, $5
	andi	$5, $2, 65280
	sll	$5, $5, 8
	or	$1, $1, $5
	sll	$2, $2, 24
	or	$2, $1, $2
	srl	$1, $3, 24
	and	$4, $3, $4
	srl	$4, $4, 8
	or	$1, $1, $4
	andi	$4, $3, 65280
	sll	$4, $4, 8
	or	$1, $1, $4
	sll	$3, $3, 24
	or	$3, $1, $3
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.134)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.134)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.134)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.134)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc___bswapsi2)
	addiu	$2, $4, %lo($__profc___bswapsi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___bswapsi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___bswapsi2)($4)
	sw	$1, 4($2)
	lw	$2, 4($fp)
	srl	$1, $2, 24
	lui	$3, 255
	and	$3, $2, $3
	srl	$3, $3, 8
	or	$1, $1, $3
	andi	$3, $2, 65280
	sll	$3, $3, 8
	or	$1, $1, $3
	sll	$2, $2, 24
	or	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.135)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.135)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.135)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.135)($5)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	lui	$4, %hi($__profc___clzsi2)
	addiu	$2, $4, %lo($__profc___clzsi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___clzsi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___clzsi2)($4)
	sw	$1, 4($2)
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
	addu	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___cmpdi2)
	addiu	$2, $4, %lo($__profc___cmpdi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___cmpdi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___cmpdi2)($4)
	sw	$1, 4($2)
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
	beqz	$1, $BB136_3
	nop
# %bb.1:
	j	$BB136_2
	nop
$BB136_2:
	lui	$4, %hi(__llvm_gcov_ctr.136)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.136)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.136)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.136)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___cmpdi2)
	addiu	$2, $1, %lo($__profc___cmpdi2)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	sw	$zero, 36($fp)
	j	$BB136_13
	nop
$BB136_3:
	lw	$2, 12($fp)
	lw	$1, 4($fp)
	slt	$1, $1, $2
	beqz	$1, $BB136_6
	nop
# %bb.4:
	j	$BB136_5
	nop
$BB136_5:
	lui	$1, %hi(__llvm_gcov_ctr.136)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.136)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___cmpdi2)
	addiu	$2, $1, %lo($__profc___cmpdi2)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	addiu	$1, $zero, 2
	sw	$1, 36($fp)
	j	$BB136_13
	nop
$BB136_6:
	lw	$1, 8($fp)
	lw	$2, 0($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB136_9
	nop
# %bb.7:
	j	$BB136_8
	nop
$BB136_8:
	lui	$1, %hi(__llvm_gcov_ctr.136)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.136)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc___cmpdi2)
	addiu	$2, $1, %lo($__profc___cmpdi2)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	sw	$zero, 36($fp)
	j	$BB136_13
	nop
$BB136_9:
	lw	$2, 8($fp)
	lw	$1, 0($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB136_12
	nop
# %bb.10:
	j	$BB136_11
	nop
$BB136_11:
	lui	$1, %hi(__llvm_gcov_ctr.136)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.136)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc___cmpdi2)
	addiu	$2, $1, %lo($__profc___cmpdi2)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	addiu	$1, $zero, 2
	sw	$1, 36($fp)
	j	$BB136_13
	nop
$BB136_12:
	lui	$1, %hi(__llvm_gcov_ctr.136)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.136)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	addiu	$1, $zero, 1
	sw	$1, 36($fp)
	j	$BB136_13
	nop
$BB136_13:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$8, %hi(__llvm_gcov_ctr.137)
	addiu	$2, $8, %lo(__llvm_gcov_ctr.137)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.137)($8)
	addiu	$3, $3, 1
	sltiu	$9, $3, 1
	addu	$1, $1, $9
	sw	$3, %lo(__llvm_gcov_ctr.137)($8)
	sw	$1, 4($2)
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	lui	$4, %hi($__profc___aeabi_lcmp)
	addiu	$2, $4, %lo($__profc___aeabi_lcmp)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___aeabi_lcmp)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___aeabi_lcmp)($4)
	sw	$1, 4($2)
	lw	$5, 28($fp)
	lw	$4, 24($fp)
	lw	$7, 20($fp)
	lw	$6, 16($fp)
	jal	__cmpdi2
	nop
	addiu	$2, $2, -1
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.138)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.138)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.138)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.138)($5)
	sw	$1, 4($2)
	sw	$4, 12($fp)
	lui	$4, %hi($__profc___ctzsi2)
	addiu	$2, $4, %lo($__profc___ctzsi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___ctzsi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___ctzsi2)($4)
	sw	$1, 4($2)
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
	addu	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___lshrdi3)
	addiu	$2, $4, %lo($__profc___lshrdi3)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___lshrdi3)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___lshrdi3)($4)
	sw	$1, 4($2)
	addiu	$1, $zero, 32
	sw	$1, 16($fp)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lbu	$1, 20($fp)
	andi	$1, $1, 32
	beqz	$1, $BB139_3
	nop
# %bb.1:
	j	$BB139_2
	nop
$BB139_2:
	lui	$4, %hi(__llvm_gcov_ctr.139)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.139)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.139)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.139)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___lshrdi3)
	addiu	$2, $1, %lo($__profc___lshrdi3)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	sw	$zero, 4($fp)
	lw	$1, 12($fp)
	lw	$2, 20($fp)
	addiu	$2, $2, -32
	srlv	$1, $1, $2
	sw	$1, 0($fp)
	j	$BB139_7
	nop
$BB139_3:
	lw	$1, 20($fp)
	bnez	$1, $BB139_6
	nop
# %bb.4:
	j	$BB139_5
	nop
$BB139_5:
	lui	$1, %hi(__llvm_gcov_ctr.139)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.139)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___lshrdi3)
	addiu	$2, $1, %lo($__profc___lshrdi3)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	sw	$2, 36($fp)
	sw	$1, 32($fp)
	j	$BB139_8
	nop
$BB139_6:
	lui	$1, %hi(__llvm_gcov_ctr.139)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.139)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$1, 12($fp)
	lw	$2, 20($fp)
	srlv	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 12($fp)
	lw	$3, 20($fp)
	addiu	$2, $zero, 32
	subu	$2, $2, $3
	sllv	$1, $1, $2
	lw	$2, 8($fp)
	srlv	$2, $2, $3
	or	$1, $1, $2
	sw	$1, 0($fp)
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
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.140)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.140)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.140)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.140)($6)
	sw	$1, 4($2)
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	lui	$4, %hi($__profc___muldsi3)
	addiu	$2, $4, %lo($__profc___muldsi3)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___muldsi3)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___muldsi3)($4)
	sw	$1, 4($2)
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
	lw	$2, 16($fp)
	lw	$3, 20($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$8, %hi(__llvm_gcov_ctr.141)
	addiu	$2, $8, %lo(__llvm_gcov_ctr.141)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.141)($8)
	addiu	$3, $3, 1
	sltiu	$9, $3, 1
	addu	$1, $1, $9
	sw	$3, %lo(__llvm_gcov_ctr.141)($8)
	sw	$1, 4($2)
	sw	$5, 52($fp)
	sw	$4, 48($fp)
	sw	$7, 44($fp)
	sw	$6, 40($fp)
	lui	$4, %hi($__profc___muldi3_compiler_rt)
	addiu	$2, $4, %lo($__profc___muldi3_compiler_rt)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___muldi3_compiler_rt)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___muldi3_compiler_rt)($4)
	sw	$1, 4($2)
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
	mult	$1, $2
	mflo	$1
	lw	$2, 32($fp)
	lw	$3, 28($fp)
	mult	$2, $3
	mflo	$2
	addu	$2, $1, $2
	lw	$1, 20($fp)
	addu	$1, $1, $2
	sw	$1, 20($fp)
	lw	$2, 16($fp)
	lw	$3, 20($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.142)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.142)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.142)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.142)($6)
	sw	$1, 4($2)
	sw	$5, 4($fp)
	sw	$4, 0($fp)
	lui	$4, %hi($__profc___negdi2)
	addiu	$2, $4, %lo($__profc___negdi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___negdi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___negdi2)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	lw	$3, 0($fp)
	addiu	$2, $zero, 0
	negu	$2, $3
	sltu	$3, $zero, $3
	addu	$1, $1, $3
	negu	$3, $1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.143)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.143)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.143)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.143)($6)
	sw	$1, 4($2)
	sw	$5, 20($fp)
	sw	$4, 16($fp)
	lui	$4, %hi($__profc___paritydi2)
	addiu	$2, $4, %lo($__profc___paritydi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___paritydi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___paritydi2)($4)
	sw	$1, 4($2)
	lw	$1, 16($fp)
	lw	$2, 20($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
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
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.144)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.144)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.144)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.144)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc___paritysi2)
	addiu	$2, $4, %lo($__profc___paritysi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___paritysi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___paritysi2)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	srl	$2, $1, 16
	xor	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	srl	$2, $1, 8
	xor	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	srl	$2, $1, 4
	xor	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	andi	$2, $1, 15
	addiu	$1, $zero, 27030
	srlv	$1, $1, $2
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$6, %hi(__llvm_gcov_ctr.145)
	addiu	$2, $6, %lo(__llvm_gcov_ctr.145)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.145)($6)
	addiu	$3, $3, 1
	sltiu	$7, $3, 1
	addu	$1, $1, $7
	sw	$3, %lo(__llvm_gcov_ctr.145)($6)
	sw	$1, 4($2)
	sw	$5, 20($fp)
	sw	$4, 16($fp)
	lui	$4, %hi($__profc___popcountdi2)
	addiu	$2, $4, %lo($__profc___popcountdi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___popcountdi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___popcountdi2)($4)
	sw	$1, 4($2)
	lw	$1, 16($fp)
	lw	$2, 20($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	srl	$3, $2, 1
	srl	$5, $1, 1
	lui	$4, 21845
	ori	$4, $4, 21845
	and	$5, $5, $4
	and	$3, $3, $4
	sltu	$4, $2, $3
	subu	$1, $1, $5
	subu	$1, $1, $4
	subu	$2, $2, $3
	sw	$2, 8($fp)
	sw	$1, 12($fp)
	lw	$2, 8($fp)
	lw	$4, 12($fp)
	srl	$1, $4, 2
	srl	$3, $2, 2
	lui	$5, 13107
	ori	$5, $5, 13107
	and	$3, $3, $5
	and	$1, $1, $5
	and	$2, $2, $5
	and	$4, $4, $5
	addu	$1, $1, $4
	addu	$2, $3, $2
	sltu	$3, $2, $3
	addu	$1, $1, $3
	sw	$2, 8($fp)
	sw	$1, 12($fp)
	lw	$3, 8($fp)
	lw	$1, 12($fp)
	sll	$4, $1, 28
	srl	$2, $3, 4
	or	$2, $2, $4
	srl	$4, $1, 4
	addu	$1, $1, $4
	addu	$2, $3, $2
	sltu	$3, $2, $3
	addu	$1, $1, $3
	lui	$3, 3855
	ori	$3, $3, 3855
	and	$1, $1, $3
	and	$2, $2, $3
	sw	$2, 8($fp)
	sw	$1, 12($fp)
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	srl	$2, $1, 16
	addu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 4($fp)
	srl	$2, $1, 8
	addu	$1, $1, $2
	andi	$2, $1, 127
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$5, %hi(__llvm_gcov_ctr.146)
	addiu	$2, $5, %lo(__llvm_gcov_ctr.146)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.146)($5)
	addiu	$3, $3, 1
	sltiu	$6, $3, 1
	addu	$1, $1, $6
	sw	$3, %lo(__llvm_gcov_ctr.146)($5)
	sw	$1, 4($2)
	sw	$4, 4($fp)
	lui	$4, %hi($__profc___popcountsi2)
	addiu	$2, $4, %lo($__profc___popcountsi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___popcountsi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___popcountsi2)($4)
	sw	$1, 4($2)
	lw	$1, 4($fp)
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	srl	$2, $1, 1
	lui	$3, 21845
	ori	$3, $3, 21845
	and	$2, $2, $3
	subu	$1, $1, $2
	sw	$1, 0($fp)
	lw	$2, 0($fp)
	srl	$1, $2, 2
	lui	$3, 13107
	ori	$3, $3, 13107
	and	$1, $1, $3
	and	$2, $2, $3
	addu	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	srl	$2, $1, 4
	addu	$1, $1, $2
	lui	$2, 3855
	ori	$2, $2, 3855
	and	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	srl	$2, $1, 16
	addu	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	srl	$2, $1, 8
	addu	$1, $1, $2
	andi	$2, $1, 63
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___powidf2)
	addiu	$2, $4, %lo($__profc___powidf2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___powidf2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___powidf2)($4)
	sw	$1, 4($2)
	lw	$1, 36($fp)
	srl	$1, $1, 31
	sw	$1, 32($fp)
	lui	$1, 16368
	sw	$1, 28($fp)
	sw	$zero, 24($fp)
	j	$BB147_1
	nop
$BB147_1:                               # =>This Inner Loop Header: Depth=1
	lui	$1, %hi($__profc___powidf2)
	addiu	$2, $1, %lo($__profc___powidf2)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lbu	$1, 36($fp)
	andi	$1, $1, 1
	beqz	$1, $BB147_4
	nop
# %bb.2:                                #   in Loop: Header=BB147_1 Depth=1
	j	$BB147_3
	nop
$BB147_3:                               #   in Loop: Header=BB147_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.147)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.147)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.147)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.147)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___powidf2)
	addiu	$2, $1, %lo($__profc___powidf2)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
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
	lw	$1, 36($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 36($fp)
	lw	$1, 36($fp)
	bnez	$1, $BB147_7
	nop
# %bb.5:
	j	$BB147_6
	nop
$BB147_6:
	lui	$1, %hi($__profc___powidf2)
	addiu	$2, $1, %lo($__profc___powidf2)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB147_8
	nop
$BB147_7:                               #   in Loop: Header=BB147_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.147)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.147)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
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
	beqz	$1, $BB147_11
	nop
# %bb.9:
	j	$BB147_10
	nop
$BB147_10:
	lui	$1, %hi(__llvm_gcov_ctr.147)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.147)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc___powidf2)
	addiu	$2, $1, %lo($__profc___powidf2)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$6, 24($fp)
	lw	$7, 28($fp)
	addiu	$4, $zero, 0
	lui	$5, 16368
	jal	__divdf3
	nop
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	sw	$3, 20($fp)                     # 4-byte Folded Spill
	j	$BB147_12
	nop
$BB147_11:
	lui	$1, %hi(__llvm_gcov_ctr.147)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.147)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
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
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___powisf2)
	addiu	$2, $4, %lo($__profc___powisf2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___powisf2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___powisf2)($4)
	sw	$1, 4($2)
	lw	$1, 32($fp)
	srl	$1, $1, 31
	sw	$1, 28($fp)
	lui	$1, 16256
	sw	$1, 24($fp)
	j	$BB148_1
	nop
$BB148_1:                               # =>This Inner Loop Header: Depth=1
	lui	$1, %hi($__profc___powisf2)
	addiu	$2, $1, %lo($__profc___powisf2)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lbu	$1, 32($fp)
	andi	$1, $1, 1
	beqz	$1, $BB148_4
	nop
# %bb.2:                                #   in Loop: Header=BB148_1 Depth=1
	j	$BB148_3
	nop
$BB148_3:                               #   in Loop: Header=BB148_1 Depth=1
	lui	$4, %hi(__llvm_gcov_ctr.148)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.148)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.148)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.148)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___powisf2)
	addiu	$2, $1, %lo($__profc___powisf2)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lw	$5, 36($fp)
	lw	$4, 24($fp)
	jal	__mulsf3
	nop
	sw	$2, 24($fp)
	j	$BB148_4
	nop
$BB148_4:                               #   in Loop: Header=BB148_1 Depth=1
	lw	$1, 32($fp)
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 32($fp)
	lw	$1, 32($fp)
	bnez	$1, $BB148_7
	nop
# %bb.5:
	j	$BB148_6
	nop
$BB148_6:
	lui	$1, %hi($__profc___powisf2)
	addiu	$2, $1, %lo($__profc___powisf2)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	j	$BB148_8
	nop
$BB148_7:                               #   in Loop: Header=BB148_1 Depth=1
	lui	$1, %hi(__llvm_gcov_ctr.148)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.148)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lw	$5, 36($fp)
	move	$4, $5
	jal	__mulsf3
	nop
	sw	$2, 36($fp)
	j	$BB148_1
	nop
$BB148_8:
	lw	$1, 28($fp)
	beqz	$1, $BB148_11
	nop
# %bb.9:
	j	$BB148_10
	nop
$BB148_10:
	lui	$1, %hi(__llvm_gcov_ctr.148)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.148)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc___powisf2)
	addiu	$2, $1, %lo($__profc___powisf2)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	lw	$5, 24($fp)
	lui	$4, 16256
	jal	__divsf3
	nop
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	j	$BB148_12
	nop
$BB148_11:
	lui	$1, %hi(__llvm_gcov_ctr.148)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.148)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
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
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$4, %hi($__profc___ucmpdi2)
	addiu	$2, $4, %lo($__profc___ucmpdi2)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___ucmpdi2)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___ucmpdi2)($4)
	sw	$1, 4($2)
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
	beqz	$1, $BB149_3
	nop
# %bb.1:
	j	$BB149_2
	nop
$BB149_2:
	lui	$4, %hi(__llvm_gcov_ctr.149)
	addiu	$2, $4, %lo(__llvm_gcov_ctr.149)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.149)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo(__llvm_gcov_ctr.149)($4)
	sw	$1, 4($2)
	lui	$1, %hi($__profc___ucmpdi2)
	addiu	$2, $1, %lo($__profc___ucmpdi2)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	sw	$zero, 36($fp)
	j	$BB149_13
	nop
$BB149_3:
	lw	$2, 12($fp)
	lw	$1, 4($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB149_6
	nop
# %bb.4:
	j	$BB149_5
	nop
$BB149_5:
	lui	$1, %hi(__llvm_gcov_ctr.149)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.149)
	lw	$1, 12($2)
	lw	$3, 8($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 8($2)
	sw	$1, 12($2)
	lui	$1, %hi($__profc___ucmpdi2)
	addiu	$2, $1, %lo($__profc___ucmpdi2)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	addiu	$1, $zero, 2
	sw	$1, 36($fp)
	j	$BB149_13
	nop
$BB149_6:
	lw	$1, 8($fp)
	lw	$2, 0($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB149_9
	nop
# %bb.7:
	j	$BB149_8
	nop
$BB149_8:
	lui	$1, %hi(__llvm_gcov_ctr.149)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.149)
	lw	$1, 20($2)
	lw	$3, 16($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 16($2)
	sw	$1, 20($2)
	lui	$1, %hi($__profc___ucmpdi2)
	addiu	$2, $1, %lo($__profc___ucmpdi2)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	sw	$zero, 36($fp)
	j	$BB149_13
	nop
$BB149_9:
	lw	$2, 8($fp)
	lw	$1, 0($fp)
	sltu	$1, $1, $2
	beqz	$1, $BB149_12
	nop
# %bb.10:
	j	$BB149_11
	nop
$BB149_11:
	lui	$1, %hi(__llvm_gcov_ctr.149)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.149)
	lw	$1, 28($2)
	lw	$3, 24($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 24($2)
	sw	$1, 28($2)
	lui	$1, %hi($__profc___ucmpdi2)
	addiu	$2, $1, %lo($__profc___ucmpdi2)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	addiu	$1, $zero, 2
	sw	$1, 36($fp)
	j	$BB149_13
	nop
$BB149_12:
	lui	$1, %hi(__llvm_gcov_ctr.149)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.149)
	lw	$1, 36($2)
	lw	$3, 32($2)
	addiu	$3, $3, 1
	sltiu	$4, $3, 1
	addu	$1, $1, $4
	sw	$3, 32($2)
	sw	$1, 36($2)
	addiu	$1, $zero, 1
	sw	$1, 36($fp)
	j	$BB149_13
	nop
$BB149_13:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	.set	nomicromips
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
	lui	$8, %hi(__llvm_gcov_ctr.150)
	addiu	$2, $8, %lo(__llvm_gcov_ctr.150)
	lw	$1, 4($2)
	lw	$3, %lo(__llvm_gcov_ctr.150)($8)
	addiu	$3, $3, 1
	sltiu	$9, $3, 1
	addu	$1, $1, $9
	sw	$3, %lo(__llvm_gcov_ctr.150)($8)
	sw	$1, 4($2)
	sw	$5, 28($fp)
	sw	$4, 24($fp)
	sw	$7, 20($fp)
	sw	$6, 16($fp)
	lui	$4, %hi($__profc___aeabi_ulcmp)
	addiu	$2, $4, %lo($__profc___aeabi_ulcmp)
	lw	$1, 4($2)
	lw	$3, %lo($__profc___aeabi_ulcmp)($4)
	addiu	$3, $3, 1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$3, %lo($__profc___aeabi_ulcmp)($4)
	sw	$1, 4($2)
	lw	$5, 28($fp)
	lw	$4, 24($fp)
	lw	$7, 20($fp)
	lw	$6, 16($fp)
	jal	__ucmpdi2
	nop
	addiu	$2, $2, -1
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
$func_end150:
	.size	__aeabi_ulcmp, ($func_end150)-__aeabi_ulcmp
                                        # -- End function
	.p2align	2                               # -- Begin function __llvm_gcov_writeout
	.type	__llvm_gcov_writeout,@function
	.set	nomicromips
	.set	nomips16
	.ent	__llvm_gcov_writeout
__llvm_gcov_writeout:                   # @__llvm_gcov_writeout
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
	addiu	$1, $zero, 0
	sw	$1, 52($fp)                     # 4-byte Folded Spill
	j	$BB151_1
	nop
$BB151_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB151_3 Depth 2
	lw	$1, 52($fp)                     # 4-byte Folded Reload
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	sll	$2, $1, 3
	sll	$1, $1, 4
	addu	$2, $1, $2
	lui	$1, %hi(__llvm_internal_gcov_emit_file_info)
	addiu	$1, $1, %lo(__llvm_internal_gcov_emit_file_info)
	addu	$1, $1, $2
	sw	$1, 32($fp)                     # 4-byte Folded Spill
	lw	$4, 0($1)
	lw	$5, 4($1)
	lw	$6, 8($1)
	jal	llvm_gcda_start_file
	nop
	lw	$2, 32($fp)                     # 4-byte Folded Reload
	lw	$1, 12($2)
	sw	$1, 36($fp)                     # 4-byte Folded Spill
	lw	$3, 16($2)
	sw	$3, 40($fp)                     # 4-byte Folded Spill
	lw	$2, 20($2)
	sw	$2, 44($fp)                     # 4-byte Folded Spill
	addiu	$2, $zero, 0
	sw	$2, 48($fp)                     # 4-byte Folded Spill
	blez	$1, $BB151_5
	nop
# %bb.2:                                #   in Loop: Header=BB151_1 Depth=1
	j	$BB151_3
	nop
$BB151_3:                               #   Parent Loop BB151_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$2, 48($fp)                     # 4-byte Folded Reload
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	sll	$3, $2, 2
	sll	$2, $2, 3
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	addu	$2, $2, $3
	addu	$1, $1, $2
	lw	$4, 0($1)
	lw	$5, 4($1)
	lw	$6, 8($1)
	jal	llvm_gcda_emit_function
	nop
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	addu	$1, $1, $2
	lw	$4, 0($1)
	lw	$5, 4($1)
	jal	llvm_gcda_emit_arcs
	nop
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	lw	$1, 36($fp)                     # 4-byte Folded Reload
	addiu	$2, $2, 1
	slt	$1, $2, $1
	sw	$2, 48($fp)                     # 4-byte Folded Spill
	bnez	$1, $BB151_3
	nop
# %bb.4:                                #   in Loop: Header=BB151_1 Depth=1
	j	$BB151_5
	nop
$BB151_5:                               #   in Loop: Header=BB151_1 Depth=1
	jal	llvm_gcda_summary_info
	nop
	jal	llvm_gcda_end_file
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$1, $1, 1
	move	$2, $1
	sw	$2, 52($fp)                     # 4-byte Folded Spill
	blez	$1, $BB151_1
	nop
# %bb.6:
	j	$BB151_7
	nop
$BB151_7:
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__llvm_gcov_writeout
$func_end151:
	.size	__llvm_gcov_writeout, ($func_end151)-__llvm_gcov_writeout
                                        # -- End function
	.p2align	2                               # -- Begin function __llvm_gcov_reset
	.type	__llvm_gcov_reset,@function
	.set	nomicromips
	.set	nomips16
	.ent	__llvm_gcov_reset
__llvm_gcov_reset:                      # @__llvm_gcov_reset
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
	lui	$1, %hi(__llvm_gcov_ctr)
	addiu	$4, $1, %lo(__llvm_gcov_ctr)
	addiu	$5, $zero, 0
	sw	$5, 32($fp)                     # 4-byte Folded Spill
	addiu	$6, $zero, 40
	sw	$6, 36($fp)                     # 4-byte Folded Spill
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.1)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.1)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.2)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.2)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.3)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.3)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.4)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.4)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.4)($1)
	lui	$1, %hi(__llvm_gcov_ctr.5)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.5)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.5)($1)
	lui	$1, %hi(__llvm_gcov_ctr.6)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.6)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.6)($1)
	lui	$1, %hi(__llvm_gcov_ctr.7)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.7)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.7)($1)
	lui	$1, %hi(__llvm_gcov_ctr.8)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.8)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.8)($1)
	lui	$1, %hi(__llvm_gcov_ctr.9)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.9)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.9)($1)
	lui	$1, %hi(__llvm_gcov_ctr.10)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.10)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.10)($1)
	lui	$1, %hi(__llvm_gcov_ctr.11)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.11)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.11)($1)
	lui	$1, %hi(__llvm_gcov_ctr.12)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.12)
	addiu	$6, $zero, 56
	sw	$6, 24($fp)                     # 4-byte Folded Spill
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.13)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.13)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.13)($1)
	lui	$1, %hi(__llvm_gcov_ctr.14)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.14)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.14)($1)
	lui	$1, %hi(__llvm_gcov_ctr.15)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.15)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.15)($1)
	lui	$1, %hi(__llvm_gcov_ctr.16)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.16)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.16)($1)
	lui	$1, %hi(__llvm_gcov_ctr.17)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.17)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.17)($1)
	lui	$1, %hi(__llvm_gcov_ctr.18)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.18)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.18)($1)
	lui	$1, %hi(__llvm_gcov_ctr.19)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.19)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.19)($1)
	lui	$1, %hi(__llvm_gcov_ctr.20)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.20)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.20)($1)
	lui	$1, %hi(__llvm_gcov_ctr.21)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.21)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.21)($1)
	lui	$1, %hi(__llvm_gcov_ctr.22)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.22)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.22)($1)
	lui	$1, %hi(__llvm_gcov_ctr.23)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.23)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.23)($1)
	lui	$1, %hi(__llvm_gcov_ctr.24)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.24)
	jal	memset
	nop
	lw	$6, 24($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.25)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.25)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.25)($1)
	lui	$1, %hi(__llvm_gcov_ctr.26)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.26)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.27)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.27)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.27)($1)
	lui	$1, %hi(__llvm_gcov_ctr.28)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.28)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.28)($1)
	lui	$1, %hi(__llvm_gcov_ctr.29)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.29)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.29)($1)
	lui	$1, %hi(__llvm_gcov_ctr.30)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.30)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.30)($1)
	lui	$1, %hi(__llvm_gcov_ctr.31)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.31)
	addiu	$6, $zero, 48
	sw	$6, 20($fp)                     # 4-byte Folded Spill
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.32)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.32)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.33)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.33)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.34)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.34)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.35)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.35)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.36)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.36)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.37)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.37)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.37)($1)
	lui	$1, %hi(__llvm_gcov_ctr.38)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.38)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.38)($1)
	lui	$1, %hi(__llvm_gcov_ctr.39)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.39)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.39)($1)
	lui	$1, %hi(__llvm_gcov_ctr.40)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.40)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.40)($1)
	lui	$1, %hi(__llvm_gcov_ctr.41)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.41)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.41)($1)
	lui	$1, %hi(__llvm_gcov_ctr.42)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.42)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.42)($1)
	lui	$1, %hi(__llvm_gcov_ctr.43)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.43)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.43)($1)
	lui	$1, %hi(__llvm_gcov_ctr.44)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.44)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.44)($1)
	lui	$1, %hi(__llvm_gcov_ctr.45)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.45)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.46)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.46)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.47)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.47)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.48)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.48)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.48)($1)
	lui	$1, %hi(__llvm_gcov_ctr.49)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.49)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.49)($1)
	lui	$1, %hi(__llvm_gcov_ctr.50)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.50)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.50)($1)
	lui	$1, %hi(__llvm_gcov_ctr.51)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.51)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.51)($1)
	lui	$1, %hi(__llvm_gcov_ctr.52)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.52)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.52)($1)
	lui	$1, %hi(__llvm_gcov_ctr.53)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.53)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.53)($1)
	lui	$1, %hi(__llvm_gcov_ctr.54)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.54)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.54)($1)
	lui	$1, %hi(__llvm_gcov_ctr.55)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.55)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.55)($1)
	lui	$1, %hi(__llvm_gcov_ctr.56)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.56)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.56)($1)
	lui	$1, %hi(__llvm_gcov_ctr.57)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.57)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.58)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.58)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.59)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.59)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.59)($1)
	lui	$1, %hi(__llvm_gcov_ctr.60)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.60)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.60)($1)
	lui	$1, %hi(__llvm_gcov_ctr.61)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.61)
	addiu	$6, $zero, 64
	sw	$6, 28($fp)                     # 4-byte Folded Spill
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.62)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.62)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.63)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.63)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.64)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.64)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.64)($1)
	lui	$1, %hi(__llvm_gcov_ctr.65)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.65)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.66)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.66)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.66)($1)
	lui	$1, %hi(__llvm_gcov_ctr.67)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.67)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.68)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.68)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.68)($1)
	lui	$1, %hi(__llvm_gcov_ctr.69)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.69)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.69)($1)
	lui	$1, %hi(__llvm_gcov_ctr.70)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.70)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.70)($1)
	lui	$1, %hi(__llvm_gcov_ctr.71)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.71)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.71)($1)
	lui	$1, %hi(__llvm_gcov_ctr.72)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.72)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.72)($1)
	lui	$1, %hi(__llvm_gcov_ctr.73)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.73)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.73)($1)
	lui	$1, %hi(__llvm_gcov_ctr.74)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.74)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.74)($1)
	lui	$1, %hi(__llvm_gcov_ctr.75)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.75)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.75)($1)
	lui	$1, %hi(__llvm_gcov_ctr.76)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.76)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.76)($1)
	lui	$1, %hi(__llvm_gcov_ctr.77)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.77)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.77)($1)
	lui	$1, %hi(__llvm_gcov_ctr.78)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.78)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.78)($1)
	lui	$1, %hi(__llvm_gcov_ctr.79)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.79)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.79)($1)
	lui	$1, %hi(__llvm_gcov_ctr.80)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.80)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.80)($1)
	lui	$1, %hi(__llvm_gcov_ctr.81)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.81)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.81)($1)
	lui	$1, %hi(__llvm_gcov_ctr.82)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.82)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.82)($1)
	lui	$1, %hi(__llvm_gcov_ctr.83)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.83)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.83)($1)
	lui	$1, %hi(__llvm_gcov_ctr.84)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.84)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.84)($1)
	lui	$1, %hi(__llvm_gcov_ctr.85)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.85)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.85)($1)
	lui	$1, %hi(__llvm_gcov_ctr.86)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.86)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.86)($1)
	lui	$1, %hi(__llvm_gcov_ctr.87)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.87)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.88)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.88)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.89)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.89)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.90)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.90)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.90)($1)
	lui	$1, %hi(__llvm_gcov_ctr.91)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.91)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.92)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.92)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.92)($1)
	lui	$1, %hi(__llvm_gcov_ctr.93)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.93)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.93)($1)
	lui	$1, %hi(__llvm_gcov_ctr.94)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.94)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.94)($1)
	lui	$1, %hi(__llvm_gcov_ctr.95)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.95)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.95)($1)
	lui	$1, %hi(__llvm_gcov_ctr.96)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.96)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.97)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.97)
	jal	memset
	nop
	lw	$6, 28($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.98)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.98)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.98)($1)
	lui	$1, %hi(__llvm_gcov_ctr.99)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.99)
	jal	memset
	nop
	lw	$6, 28($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.100)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.100)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.100)($1)
	lui	$1, %hi(__llvm_gcov_ctr.101)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.101)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.102)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.102)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.102)($1)
	lui	$1, %hi(__llvm_gcov_ctr.103)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.103)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.103)($1)
	lui	$1, %hi(__llvm_gcov_ctr.104)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.104)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.104)($1)
	lui	$1, %hi(__llvm_gcov_ctr.105)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.105)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.106)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.106)
	jal	memset
	nop
	lw	$6, 20($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.107)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.107)
	jal	memset
	nop
	lw	$6, 28($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.108)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.108)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.108)($1)
	lui	$1, %hi(__llvm_gcov_ctr.109)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.109)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.109)($1)
	lui	$1, %hi(__llvm_gcov_ctr.110)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.110)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.110)($1)
	lui	$1, %hi(__llvm_gcov_ctr.111)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.111)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.111)($1)
	lui	$1, %hi(__llvm_gcov_ctr.112)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.112)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.112)($1)
	lui	$1, %hi(__llvm_gcov_ctr.113)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.113)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.113)($1)
	lui	$1, %hi(__llvm_gcov_ctr.114)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.114)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.114)($1)
	lui	$1, %hi(__llvm_gcov_ctr.115)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.115)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.115)($1)
	lui	$1, %hi(__llvm_gcov_ctr.116)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.116)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.116)($1)
	lui	$1, %hi(__llvm_gcov_ctr.117)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.117)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.117)($1)
	lui	$1, %hi(__llvm_gcov_ctr.118)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.118)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.118)($1)
	lui	$1, %hi(__llvm_gcov_ctr.119)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.119)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.119)($1)
	lui	$1, %hi(__llvm_gcov_ctr.120)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.120)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.120)($1)
	lui	$1, %hi(__llvm_gcov_ctr.121)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.121)
	jal	memset
	nop
	lw	$6, 24($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.122)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.122)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.122)($1)
	lui	$1, %hi(__llvm_gcov_ctr.123)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.123)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.123)($1)
	lui	$1, %hi(__llvm_gcov_ctr.124)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.124)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.124)($1)
	lui	$1, %hi(__llvm_gcov_ctr.125)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.125)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.125)($1)
	lui	$1, %hi(__llvm_gcov_ctr.126)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.126)
	jal	memset
	nop
	lw	$6, 28($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.127)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.127)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.127)($1)
	lui	$1, %hi(__llvm_gcov_ctr.128)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.128)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.128)($1)
	lui	$1, %hi(__llvm_gcov_ctr.129)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.129)
	jal	memset
	nop
	lw	$6, 28($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.130)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.130)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.131)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.131)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.131)($1)
	lui	$1, %hi(__llvm_gcov_ctr.132)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.132)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.132)($1)
	lui	$1, %hi(__llvm_gcov_ctr.133)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.133)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.133)($1)
	lui	$1, %hi(__llvm_gcov_ctr.134)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.134)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.134)($1)
	lui	$1, %hi(__llvm_gcov_ctr.135)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.135)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.135)($1)
	lui	$1, %hi(__llvm_gcov_ctr.136)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.136)
	jal	memset
	nop
	lw	$5, 32($fp)                     # 4-byte Folded Reload
	lw	$6, 36($fp)                     # 4-byte Folded Reload
	lui	$1, %hi(__llvm_gcov_ctr.137)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.137)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.137)($1)
	lui	$1, %hi(__llvm_gcov_ctr.138)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.138)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.138)($1)
	lui	$1, %hi(__llvm_gcov_ctr.139)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.139)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.139)($1)
	lui	$1, %hi(__llvm_gcov_ctr.140)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.140)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.140)($1)
	lui	$1, %hi(__llvm_gcov_ctr.141)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.141)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.141)($1)
	lui	$1, %hi(__llvm_gcov_ctr.142)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.142)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.142)($1)
	lui	$1, %hi(__llvm_gcov_ctr.143)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.143)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.143)($1)
	lui	$1, %hi(__llvm_gcov_ctr.144)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.144)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.144)($1)
	lui	$1, %hi(__llvm_gcov_ctr.145)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.145)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.145)($1)
	lui	$1, %hi(__llvm_gcov_ctr.146)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.146)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.146)($1)
	lui	$1, %hi(__llvm_gcov_ctr.147)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.147)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.147)($1)
	lui	$1, %hi(__llvm_gcov_ctr.148)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.148)
	swl	$zero, 31($2)
	swl	$zero, 27($2)
	swl	$zero, 23($2)
	swl	$zero, 19($2)
	swl	$zero, 15($2)
	swl	$zero, 11($2)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 28($2)
	swr	$zero, 24($2)
	swr	$zero, 20($2)
	swr	$zero, 16($2)
	swr	$zero, 12($2)
	swr	$zero, 8($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.148)($1)
	lui	$1, %hi(__llvm_gcov_ctr.149)
	addiu	$4, $1, %lo(__llvm_gcov_ctr.149)
	jal	memset
	nop
	lui	$1, %hi(__llvm_gcov_ctr.150)
	addiu	$2, $1, %lo(__llvm_gcov_ctr.150)
	swl	$zero, 7($2)
	swl	$zero, 3($2)
	swr	$zero, 4($2)
	swr	$zero, %lo(__llvm_gcov_ctr.150)($1)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__llvm_gcov_reset
$func_end152:
	.size	__llvm_gcov_reset, ($func_end152)-__llvm_gcov_reset
                                        # -- End function
	.p2align	2                               # -- Begin function __llvm_gcov_init
	.type	__llvm_gcov_init,@function
	.set	nomicromips
	.set	nomips16
	.ent	__llvm_gcov_init
__llvm_gcov_init:                       # @__llvm_gcov_init
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
	lui	$1, %hi(__llvm_gcov_writeout)
	addiu	$4, $1, %lo(__llvm_gcov_writeout)
	lui	$1, %hi(__llvm_gcov_reset)
	addiu	$5, $1, %lo(__llvm_gcov_reset)
	jal	llvm_gcov_init
	nop
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	__llvm_gcov_init
$func_end153:
	.size	__llvm_gcov_init, ($func_end153)-__llvm_gcov_init
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
	.type	$__unnamed_1,@object            # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
$__unnamed_1:
	.asciz	"/home/gravier/tmp/some-libc-opt/clang-mips32.gcda"
	.size	$__unnamed_1, 50

	.type	__llvm_internal_gcov_emit_function_args.0,@object # @__llvm_internal_gcov_emit_function_args.0
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
__llvm_internal_gcov_emit_function_args.0:
	.4byte	0                               # 0x0
	.4byte	560687177                       # 0x216b6849
	.4byte	3469251760                      # 0xcec894b0
	.4byte	1                               # 0x1
	.4byte	1589591758                      # 0x5ebf3ece
	.4byte	3469251760                      # 0xcec894b0
	.4byte	2                               # 0x2
	.4byte	2176136383                      # 0x81b534bf
	.4byte	3469251760                      # 0xcec894b0
	.4byte	3                               # 0x3
	.4byte	3586625172                      # 0xd5c78e94
	.4byte	3469251760                      # 0xcec894b0
	.4byte	4                               # 0x4
	.4byte	2323119728                      # 0x8a77fe70
	.4byte	3469251760                      # 0xcec894b0
	.4byte	5                               # 0x5
	.4byte	2314569740                      # 0x89f5880c
	.4byte	3469251760                      # 0xcec894b0
	.4byte	6                               # 0x6
	.4byte	2833673551                      # 0xa8e66d4f
	.4byte	3469251760                      # 0xcec894b0
	.4byte	7                               # 0x7
	.4byte	1458633189                      # 0x56f0f9e5
	.4byte	3469251760                      # 0xcec894b0
	.4byte	8                               # 0x8
	.4byte	1190300833                      # 0x46f28ca1
	.4byte	3469251760                      # 0xcec894b0
	.4byte	9                               # 0x9
	.4byte	758327989                       # 0x2d332ab5
	.4byte	3469251760                      # 0xcec894b0
	.4byte	10                              # 0xa
	.4byte	1651479037                      # 0x626f91fd
	.4byte	3469251760                      # 0xcec894b0
	.4byte	11                              # 0xb
	.4byte	4132343275                      # 0xf64e8deb
	.4byte	3469251760                      # 0xcec894b0
	.4byte	12                              # 0xc
	.4byte	734262523                       # 0x2bc3f4fb
	.4byte	3469251760                      # 0xcec894b0
	.4byte	13                              # 0xd
	.4byte	2463424677                      # 0x92d4e0a5
	.4byte	3469251760                      # 0xcec894b0
	.4byte	14                              # 0xe
	.4byte	1419026334                      # 0x54949f9e
	.4byte	3469251760                      # 0xcec894b0
	.4byte	15                              # 0xf
	.4byte	3154471370                      # 0xbc0569ca
	.4byte	3469251760                      # 0xcec894b0
	.4byte	16                              # 0x10
	.4byte	2077973487                      # 0x7bdb5bef
	.4byte	3469251760                      # 0xcec894b0
	.4byte	17                              # 0x11
	.4byte	1474691227                      # 0x57e6009b
	.4byte	3469251760                      # 0xcec894b0
	.4byte	18                              # 0x12
	.4byte	3710986016                      # 0xdd312720
	.4byte	3469251760                      # 0xcec894b0
	.4byte	19                              # 0x13
	.4byte	1305101473                      # 0x4dca44a1
	.4byte	3469251760                      # 0xcec894b0
	.4byte	20                              # 0x14
	.4byte	3762036564                      # 0xe03c1f54
	.4byte	3469251760                      # 0xcec894b0
	.4byte	21                              # 0x15
	.4byte	477914433                       # 0x1c7c6541
	.4byte	3469251760                      # 0xcec894b0
	.4byte	22                              # 0x16
	.4byte	3923035234                      # 0xe9d4c462
	.4byte	3469251760                      # 0xcec894b0
	.4byte	23                              # 0x17
	.4byte	951651702                       # 0x38b90d76
	.4byte	3469251760                      # 0xcec894b0
	.4byte	24                              # 0x18
	.4byte	4206925919                      # 0xfac0985f
	.4byte	3469251760                      # 0xcec894b0
	.4byte	25                              # 0x19
	.4byte	32773942                        # 0x1f41736
	.4byte	3469251760                      # 0xcec894b0
	.4byte	26                              # 0x1a
	.4byte	2877267246                      # 0xab7f9d2e
	.4byte	3469251760                      # 0xcec894b0
	.4byte	27                              # 0x1b
	.4byte	860405771                       # 0x3348c00b
	.4byte	3469251760                      # 0xcec894b0
	.4byte	28                              # 0x1c
	.4byte	815674877                       # 0x309e35fd
	.4byte	3469251760                      # 0xcec894b0
	.4byte	29                              # 0x1d
	.4byte	1778838753                      # 0x6a06ece1
	.4byte	3469251760                      # 0xcec894b0
	.4byte	30                              # 0x1e
	.4byte	2718307199                      # 0xa206137f
	.4byte	3469251760                      # 0xcec894b0
	.4byte	31                              # 0x1f
	.4byte	856224820                       # 0x3308f434
	.4byte	3469251760                      # 0xcec894b0
	.4byte	32                              # 0x20
	.4byte	1111195143                      # 0x423b7e07
	.4byte	3469251760                      # 0xcec894b0
	.4byte	33                              # 0x21
	.4byte	1178414519                      # 0x463d2db7
	.4byte	3469251760                      # 0xcec894b0
	.4byte	34                              # 0x22
	.4byte	3477640633                      # 0xcf4895b9
	.4byte	3469251760                      # 0xcec894b0
	.4byte	35                              # 0x23
	.4byte	4294770115                      # 0xfffcfdc3
	.4byte	3469251760                      # 0xcec894b0
	.4byte	36                              # 0x24
	.4byte	3650660234                      # 0xd998a78a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	37                              # 0x25
	.4byte	289327647                       # 0x113eca1f
	.4byte	3469251760                      # 0xcec894b0
	.4byte	38                              # 0x26
	.4byte	2093612798                      # 0x7cc9fefe
	.4byte	3469251760                      # 0xcec894b0
	.4byte	39                              # 0x27
	.4byte	4177956716                      # 0xf9068f6c
	.4byte	3469251760                      # 0xcec894b0
	.4byte	40                              # 0x28
	.4byte	3434808461                      # 0xccbb048d
	.4byte	3469251760                      # 0xcec894b0
	.4byte	41                              # 0x29
	.4byte	3206497114                      # 0xbf1f435a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	42                              # 0x2a
	.4byte	1537257434                      # 0x5ba0afda
	.4byte	3469251760                      # 0xcec894b0
	.4byte	43                              # 0x2b
	.4byte	3028077325                      # 0xb47ccb0d
	.4byte	3469251760                      # 0xcec894b0
	.4byte	44                              # 0x2c
	.4byte	1369848209                      # 0x51a63991
	.4byte	3469251760                      # 0xcec894b0
	.4byte	45                              # 0x2d
	.4byte	938831176                       # 0x37f56d48
	.4byte	3469251760                      # 0xcec894b0
	.4byte	46                              # 0x2e
	.4byte	1663146323                      # 0x63219953
	.4byte	3469251760                      # 0xcec894b0
	.4byte	47                              # 0x2f
	.4byte	4111410217                      # 0xf50f2429
	.4byte	3469251760                      # 0xcec894b0
	.4byte	48                              # 0x30
	.4byte	1475378556                      # 0x57f07d7c
	.4byte	3469251760                      # 0xcec894b0
	.4byte	49                              # 0x31
	.4byte	3356195547                      # 0xc80b7adb
	.4byte	3469251760                      # 0xcec894b0
	.4byte	50                              # 0x32
	.4byte	514931786                       # 0x1eb13c4a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	51                              # 0x33
	.4byte	2854034444                      # 0xaa1d1c0c
	.4byte	3469251760                      # 0xcec894b0
	.4byte	52                              # 0x34
	.4byte	2747937306                      # 0xa3ca321a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	53                              # 0x35
	.4byte	4192776208                      # 0xf9e8b010
	.4byte	3469251760                      # 0xcec894b0
	.4byte	54                              # 0x36
	.4byte	984436227                       # 0x3aad4e03
	.4byte	3469251760                      # 0xcec894b0
	.4byte	55                              # 0x37
	.4byte	1477657574                      # 0x581343e6
	.4byte	3469251760                      # 0xcec894b0
	.4byte	56                              # 0x38
	.4byte	1339127973                      # 0x4fd178a5
	.4byte	3469251760                      # 0xcec894b0
	.4byte	57                              # 0x39
	.4byte	2960567906                      # 0xb076ae62
	.4byte	3469251760                      # 0xcec894b0
	.4byte	58                              # 0x3a
	.4byte	3390076872                      # 0xca1077c8
	.4byte	3469251760                      # 0xcec894b0
	.4byte	59                              # 0x3b
	.4byte	1543282230                      # 0x5bfc9e36
	.4byte	3469251760                      # 0xcec894b0
	.4byte	60                              # 0x3c
	.4byte	2934101789                      # 0xaee2d71d
	.4byte	3469251760                      # 0xcec894b0
	.4byte	61                              # 0x3d
	.4byte	3737986119                      # 0xdecd2447
	.4byte	3469251760                      # 0xcec894b0
	.4byte	62                              # 0x3e
	.4byte	49556427                        # 0x2f42bcb
	.4byte	3469251760                      # 0xcec894b0
	.4byte	63                              # 0x3f
	.4byte	234051526                       # 0xdf357c6
	.4byte	3469251760                      # 0xcec894b0
	.4byte	64                              # 0x40
	.4byte	2341800126                      # 0x8b9508be
	.4byte	3469251760                      # 0xcec894b0
	.4byte	65                              # 0x41
	.4byte	3256799948                      # 0xc21ed2cc
	.4byte	3469251760                      # 0xcec894b0
	.4byte	66                              # 0x42
	.4byte	777295480                       # 0x2e549678
	.4byte	3469251760                      # 0xcec894b0
	.4byte	67                              # 0x43
	.4byte	14040531                        # 0xd63dd3
	.4byte	3469251760                      # 0xcec894b0
	.4byte	68                              # 0x44
	.4byte	8047973                         # 0x7acd65
	.4byte	3469251760                      # 0xcec894b0
	.4byte	69                              # 0x45
	.4byte	719459161                       # 0x2ae21359
	.4byte	3469251760                      # 0xcec894b0
	.4byte	70                              # 0x46
	.4byte	243358501                       # 0xe815b25
	.4byte	3469251760                      # 0xcec894b0
	.4byte	71                              # 0x47
	.4byte	3262173932                      # 0xc270d2ec
	.4byte	3469251760                      # 0xcec894b0
	.4byte	72                              # 0x48
	.4byte	398910553                       # 0x17c6e459
	.4byte	3469251760                      # 0xcec894b0
	.4byte	73                              # 0x49
	.4byte	3354219739                      # 0xc7ed54db
	.4byte	3469251760                      # 0xcec894b0
	.4byte	74                              # 0x4a
	.4byte	2570308788                      # 0x9933ccb4
	.4byte	3469251760                      # 0xcec894b0
	.4byte	75                              # 0x4b
	.4byte	982429111                       # 0x3a8eadb7
	.4byte	3469251760                      # 0xcec894b0
	.4byte	76                              # 0x4c
	.4byte	211491241                       # 0xc9b19a9
	.4byte	3469251760                      # 0xcec894b0
	.4byte	77                              # 0x4d
	.4byte	1075683319                      # 0x401d9ff7
	.4byte	3469251760                      # 0xcec894b0
	.4byte	78                              # 0x4e
	.4byte	1886352651                      # 0x706f750b
	.4byte	3469251760                      # 0xcec894b0
	.4byte	79                              # 0x4f
	.4byte	248637203                       # 0xed1e713
	.4byte	3469251760                      # 0xcec894b0
	.4byte	80                              # 0x50
	.4byte	703327087                       # 0x29ebeb6f
	.4byte	3469251760                      # 0xcec894b0
	.4byte	81                              # 0x51
	.4byte	3690160730                      # 0xdbf3625a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	82                              # 0x52
	.4byte	787048238                       # 0x2ee9672e
	.4byte	3469251760                      # 0xcec894b0
	.4byte	83                              # 0x53
	.4byte	1937497967                      # 0x737bdf6f
	.4byte	3469251760                      # 0xcec894b0
	.4byte	84                              # 0x54
	.4byte	4205062514                      # 0xfaa42972
	.4byte	3469251760                      # 0xcec894b0
	.4byte	85                              # 0x55
	.4byte	694462539                       # 0x2964a84b
	.4byte	3469251760                      # 0xcec894b0
	.4byte	86                              # 0x56
	.4byte	85970907                        # 0x51fcfdb
	.4byte	3469251760                      # 0xcec894b0
	.4byte	87                              # 0x57
	.4byte	3681984728                      # 0xdb76a0d8
	.4byte	3469251760                      # 0xcec894b0
	.4byte	88                              # 0x58
	.4byte	3620297642                      # 0xd7c95baa
	.4byte	3469251760                      # 0xcec894b0
	.4byte	89                              # 0x59
	.4byte	3394804480                      # 0xca589b00
	.4byte	3469251760                      # 0xcec894b0
	.4byte	90                              # 0x5a
	.4byte	2119330183                      # 0x7e526987
	.4byte	3469251760                      # 0xcec894b0
	.4byte	91                              # 0x5b
	.4byte	1963040266                      # 0x75019e0a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	92                              # 0x5c
	.4byte	1603391838                      # 0x5f91d15e
	.4byte	3469251760                      # 0xcec894b0
	.4byte	93                              # 0x5d
	.4byte	2340921237                      # 0x8b879f95
	.4byte	3469251760                      # 0xcec894b0
	.4byte	94                              # 0x5e
	.4byte	3028177438                      # 0xb47e521e
	.4byte	3469251760                      # 0xcec894b0
	.4byte	95                              # 0x5f
	.4byte	2265525308                      # 0x87092c3c
	.4byte	3469251760                      # 0xcec894b0
	.4byte	96                              # 0x60
	.4byte	2598903994                      # 0x9ae820ba
	.4byte	3469251760                      # 0xcec894b0
	.4byte	97                              # 0x61
	.4byte	139524705                       # 0x850fa61
	.4byte	3469251760                      # 0xcec894b0
	.4byte	98                              # 0x62
	.4byte	1076410600                      # 0x4028b8e8
	.4byte	3469251760                      # 0xcec894b0
	.4byte	99                              # 0x63
	.4byte	220237413                       # 0xd208e65
	.4byte	3469251760                      # 0xcec894b0
	.4byte	100                             # 0x64
	.4byte	3913623866                      # 0xe945293a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	101                             # 0x65
	.4byte	3453026372                      # 0xcdd10044
	.4byte	3469251760                      # 0xcec894b0
	.4byte	102                             # 0x66
	.4byte	2321387380                      # 0x8a5d8f74
	.4byte	3469251760                      # 0xcec894b0
	.4byte	103                             # 0x67
	.4byte	3319939363                      # 0xc5e24123
	.4byte	3469251760                      # 0xcec894b0
	.4byte	104                             # 0x68
	.4byte	398991913                       # 0x17c82229
	.4byte	3469251760                      # 0xcec894b0
	.4byte	105                             # 0x69
	.4byte	333429647                       # 0x13dfbb8f
	.4byte	3469251760                      # 0xcec894b0
	.4byte	106                             # 0x6a
	.4byte	3927133990                      # 0xea134f26
	.4byte	3469251760                      # 0xcec894b0
	.4byte	107                             # 0x6b
	.4byte	1797971294                      # 0x6b2add5e
	.4byte	3469251760                      # 0xcec894b0
	.4byte	108                             # 0x6c
	.4byte	1622314776                      # 0x60b28f18
	.4byte	3469251760                      # 0xcec894b0
	.4byte	109                             # 0x6d
	.4byte	1092862330                      # 0x4123c17a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	110                             # 0x6e
	.4byte	2568657322                      # 0x991a99aa
	.4byte	3469251760                      # 0xcec894b0
	.4byte	111                             # 0x6f
	.4byte	2168129897                      # 0x813b0969
	.4byte	3469251760                      # 0xcec894b0
	.4byte	112                             # 0x70
	.4byte	2890303119                      # 0xac46868f
	.4byte	3469251760                      # 0xcec894b0
	.4byte	113                             # 0x71
	.4byte	1713332582                      # 0x661f6166
	.4byte	3469251760                      # 0xcec894b0
	.4byte	114                             # 0x72
	.4byte	2375727721                      # 0x8d9aba69
	.4byte	3469251760                      # 0xcec894b0
	.4byte	115                             # 0x73
	.4byte	3586767156                      # 0xd5c9b934
	.4byte	3469251760                      # 0xcec894b0
	.4byte	116                             # 0x74
	.4byte	2191348475                      # 0x829d52fb
	.4byte	3469251760                      # 0xcec894b0
	.4byte	117                             # 0x75
	.4byte	3910023869                      # 0xe90e3abd
	.4byte	3469251760                      # 0xcec894b0
	.4byte	118                             # 0x76
	.4byte	4189915105                      # 0xf9bd07e1
	.4byte	3469251760                      # 0xcec894b0
	.4byte	119                             # 0x77
	.4byte	2527353334                      # 0x96a459f6
	.4byte	3469251760                      # 0xcec894b0
	.4byte	120                             # 0x78
	.4byte	3429265923                      # 0xcc667203
	.4byte	3469251760                      # 0xcec894b0
	.4byte	121                             # 0x79
	.4byte	1283962724                      # 0x4c87b764
	.4byte	3469251760                      # 0xcec894b0
	.4byte	122                             # 0x7a
	.4byte	1970290990                      # 0x7570412e
	.4byte	3469251760                      # 0xcec894b0
	.4byte	123                             # 0x7b
	.4byte	2615950861                      # 0x9bec3e0d
	.4byte	3469251760                      # 0xcec894b0
	.4byte	124                             # 0x7c
	.4byte	3338450337                      # 0xc6fcb5a1
	.4byte	3469251760                      # 0xcec894b0
	.4byte	125                             # 0x7d
	.4byte	3971836509                      # 0xecbd6a5d
	.4byte	3469251760                      # 0xcec894b0
	.4byte	126                             # 0x7e
	.4byte	4260339231                      # 0xfdef9e1f
	.4byte	3469251760                      # 0xcec894b0
	.4byte	127                             # 0x7f
	.4byte	4160738226                      # 0xf7ffd3b2
	.4byte	3469251760                      # 0xcec894b0
	.4byte	128                             # 0x80
	.4byte	1309372079                      # 0x4e0b6eaf
	.4byte	3469251760                      # 0xcec894b0
	.4byte	129                             # 0x81
	.4byte	3151575564                      # 0xbbd93a0c
	.4byte	3469251760                      # 0xcec894b0
	.4byte	130                             # 0x82
	.4byte	3938977714                      # 0xeac807b2
	.4byte	3469251760                      # 0xcec894b0
	.4byte	131                             # 0x83
	.4byte	3228738087                      # 0xc072a227
	.4byte	3469251760                      # 0xcec894b0
	.4byte	132                             # 0x84
	.4byte	3135705803                      # 0xbae712cb
	.4byte	3469251760                      # 0xcec894b0
	.4byte	133                             # 0x85
	.4byte	4061147315                      # 0xf21030b3
	.4byte	3469251760                      # 0xcec894b0
	.4byte	134                             # 0x86
	.4byte	2783543715                      # 0xa5e981a3
	.4byte	3469251760                      # 0xcec894b0
	.4byte	135                             # 0x87
	.4byte	2471046843                      # 0x93492ebb
	.4byte	3469251760                      # 0xcec894b0
	.4byte	136                             # 0x88
	.4byte	260073473                       # 0xf806801
	.4byte	3469251760                      # 0xcec894b0
	.4byte	137                             # 0x89
	.4byte	1259876295                      # 0x4b182fc7
	.4byte	3469251760                      # 0xcec894b0
	.4byte	138                             # 0x8a
	.4byte	2579807359                      # 0x99c4bc7f
	.4byte	3469251760                      # 0xcec894b0
	.4byte	139                             # 0x8b
	.4byte	90061610                        # 0x55e3b2a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	140                             # 0x8c
	.4byte	3598610789                      # 0xd67e7165
	.4byte	3469251760                      # 0xcec894b0
	.4byte	141                             # 0x8d
	.4byte	2351688191                      # 0x8c2be9ff
	.4byte	3469251760                      # 0xcec894b0
	.4byte	142                             # 0x8e
	.4byte	1438161982                      # 0x55b89c3e
	.4byte	3469251760                      # 0xcec894b0
	.4byte	143                             # 0x8f
	.4byte	2438880600                      # 0x915e5d58
	.4byte	3469251760                      # 0xcec894b0
	.4byte	144                             # 0x90
	.4byte	3593193962                      # 0xd62bc9ea
	.4byte	3469251760                      # 0xcec894b0
	.4byte	145                             # 0x91
	.4byte	1755082314                      # 0x689c6e4a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	146                             # 0x92
	.4byte	3432612426                      # 0xcc99824a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	147                             # 0x93
	.4byte	3374828335                      # 0xc927cb2f
	.4byte	3469251760                      # 0xcec894b0
	.4byte	148                             # 0x94
	.4byte	3311814731                      # 0xc566484b
	.4byte	3469251760                      # 0xcec894b0
	.4byte	149                             # 0x95
	.4byte	413908966                       # 0x18abbfe6
	.4byte	3469251760                      # 0xcec894b0
	.4byte	150                             # 0x96
	.4byte	3027808697                      # 0xb478b1b9
	.4byte	3469251760                      # 0xcec894b0
	.size	__llvm_internal_gcov_emit_function_args.0, 1812

	.type	__llvm_internal_gcov_emit_arcs_args.0,@object # @__llvm_internal_gcov_emit_arcs_args.0
	.p2align	4, 0x0
__llvm_internal_gcov_emit_arcs_args.0:
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.1
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.2
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.3
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.4
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.5
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.6
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.7
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.8
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.9
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.10
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.11
	.4byte	7                               # 0x7
	.4byte	__llvm_gcov_ctr.12
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.13
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.14
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.15
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.16
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.17
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.18
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.19
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.20
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.21
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.22
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.23
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.24
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.25
	.4byte	7                               # 0x7
	.4byte	__llvm_gcov_ctr.26
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.27
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.28
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.29
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.30
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.31
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.32
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.33
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.34
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.35
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.36
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.37
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.38
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.39
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.40
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.41
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.42
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.43
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.44
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.45
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.46
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.47
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.48
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.49
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.50
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.51
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.52
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.53
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.54
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.55
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.56
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.57
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.58
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.59
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.60
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.61
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.62
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.63
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.64
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.65
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.66
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.67
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.68
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.69
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.70
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.71
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.72
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.73
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.74
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.75
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.76
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.77
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.78
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.79
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.80
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.81
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.82
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.83
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.84
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.85
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.86
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.87
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.88
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.89
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.90
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.91
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.92
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.93
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.94
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.95
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.96
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.97
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.98
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.99
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.100
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.101
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.102
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.103
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.104
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.105
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.106
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.107
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.108
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.109
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.110
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.111
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.112
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.113
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.114
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.115
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.116
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.117
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.118
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.119
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.120
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.121
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.122
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.123
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.124
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.125
	.4byte	7                               # 0x7
	.4byte	__llvm_gcov_ctr.126
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.127
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.128
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.129
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.130
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.131
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.132
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.133
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.134
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.135
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.136
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.137
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.138
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.139
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.140
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.141
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.142
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.143
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.144
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.145
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.146
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.147
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.148
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.149
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.150
	.size	__llvm_internal_gcov_emit_arcs_args.0, 1208

	.type	__llvm_internal_gcov_emit_file_info,@object # @__llvm_internal_gcov_emit_file_info
	.p2align	4, 0x0
__llvm_internal_gcov_emit_file_info:
	.4byte	($__unnamed_1)
	.4byte	875575338                       # 0x3430382a
	.4byte	3469251760                      # 0xcec894b0
	.4byte	151                             # 0x97
	.4byte	__llvm_internal_gcov_emit_function_args.0
	.4byte	__llvm_internal_gcov_emit_arcs_args.0
	.size	__llvm_internal_gcov_emit_file_info, 24

	.section	.init_array.0,"aw",@init_array
	.p2align	2, 0x0
	.4byte	__llvm_gcov_init
	.hidden	__llvm_profile_runtime
	.type	$__profc_memmove,@object        # @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
$__profc_memmove:
	.space	40
	.size	$__profc_memmove, 40

	.type	$__profd_memmove,@object        # @__profd_memmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
$__profd_memmove:
	.8byte	-306081897096246147             # 0xfbc09422e3668c7d
	.8byte	-4061701397412038936            # 0xc7a1f0194f8c36e8
	.4byte	($__profc_memmove)-($__profd_memmove)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_memmove, 48

	.type	$__profc_memccpy,@object        # @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
$__profc_memccpy:
	.space	40
	.size	$__profc_memccpy, 40

	.type	$__profd_memccpy,@object        # @__profd_memccpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
$__profd_memccpy:
	.8byte	-1590863763861247346            # 0xe9ec1dd5e5026a8e
	.8byte	1189690007454808                # 0x43a044a498458
	.4byte	($__profc_memccpy)-($__profd_memccpy)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_memccpy, 48

	.type	$__profc_memchr,@object         # @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
$__profc_memchr:
	.space	40
	.size	$__profc_memchr, 40

	.type	$__profd_memchr,@object         # @__profd_memchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
$__profd_memchr:
	.8byte	5708666158622859656             # 0x4f3941a01e026188
	.8byte	4538308109                      # 0x10e81160d
	.4byte	($__profc_memchr)-($__profd_memchr)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_memchr, 48

	.type	$__profc_memcmp,@object         # @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
$__profc_memcmp:
	.space	40
	.size	$__profc_memcmp, 40

	.type	$__profd_memcmp,@object         # @__profd_memcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
$__profd_memcmp:
	.8byte	-4679550853048924350            # 0xbf0ee54adfa48742
	.8byte	4538045965                      # 0x10e7d160d
	.4byte	($__profc_memcmp)-($__profd_memcmp)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_memcmp, 48

	.type	$__profc_memcpy,@object         # @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
$__profc_memcpy:
	.space	16
	.size	$__profc_memcpy, 16

	.type	$__profd_memcpy,@object         # @__profd_memcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
$__profd_memcpy:
	.8byte	3893303423671325810             # 0x3607cad612bdd472
	.8byte	17496                           # 0x4458
	.4byte	($__profc_memcpy)-($__profd_memcpy)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_memcpy, 48

	.type	$__profc_memrchr,@object        # @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
$__profc_memrchr:
	.space	24
	.size	$__profc_memrchr, 24

	.type	$__profd_memrchr,@object        # @__profd_memrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
$__profd_memrchr:
	.8byte	-548334422562728352             # 0xf863ecbf75079660
	.8byte	9516882138200                   # 0x8a7d2611458
	.4byte	($__profc_memrchr)-($__profd_memrchr)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_memrchr, 48

	.type	$__profc_memset,@object         # @__profc_memset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
$__profc_memset:
	.space	16
	.size	$__profc_memset, 16

	.type	$__profd_memset,@object         # @__profd_memset
	.section	__llvm_prf_data,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
$__profd_memset:
	.8byte	-2741574704065975695            # 0xd9f3f85506f36a71
	.8byte	17496                           # 0x4458
	.4byte	($__profc_memset)-($__profd_memset)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_memset, 48

	.type	$__profc_stpcpy,@object         # @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
$__profc_stpcpy:
	.space	16
	.size	$__profc_stpcpy, 16

	.type	$__profd_stpcpy,@object         # @__profd_stpcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
$__profd_stpcpy:
	.8byte	4454833295779690053             # 0x3dd2bf47a087f645
	.8byte	17496                           # 0x4458
	.4byte	($__profc_stpcpy)-($__profd_stpcpy)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_stpcpy, 48

	.type	$__profc_strchrnul,@object      # @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
$__profc_strchrnul:
	.space	32
	.size	$__profc_strchrnul, 32

	.type	$__profd_strchrnul,@object      # @__profd_strchrnul
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
$__profd_strchrnul:
	.8byte	5039208642683934005             # 0x45eedd8fc8411535
	.8byte	70911064                        # 0x43a0458
	.4byte	($__profc_strchrnul)-($__profd_strchrnul)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_strchrnul, 48

	.type	$__profc_strchr,@object         # @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
$__profc_strchr:
	.space	24
	.size	$__profc_strchr, 24

	.type	$__profd_strchr,@object         # @__profd_strchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
$__profd_strchr:
	.8byte	-5671522429266412413            # 0xb14ab4664bea3c83
	.8byte	13914928649304                  # 0xca7d2611458
	.4byte	($__profc_strchr)-($__profd_strchr)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_strchr, 48

	.type	$__profc_strcmp,@object         # @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
$__profc_strcmp:
	.space	32
	.size	$__profc_strcmp, 32

	.type	$__profd_strcmp,@object         # @__profd_strcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
$__profd_strcmp:
	.8byte	1013198891307352868             # 0xe0f9b060331c324
	.8byte	70906968                        # 0x439f458
	.4byte	($__profc_strcmp)-($__profd_strcmp)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_strcmp, 48

	.type	$__profc_strlen,@object         # @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
$__profc_strlen:
	.space	16
	.size	$__profc_strlen, 16

	.type	$__profd_strlen,@object         # @__profd_strlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
$__profd_strlen:
	.8byte	2965136410638013299             # 0x292647db02a7d373
	.8byte	17496                           # 0x4458
	.4byte	($__profc_strlen)-($__profd_strlen)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_strlen, 48

	.type	$__profc_strncmp,@object        # @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
$__profc_strncmp:
	.space	72
	.size	$__profc_strncmp, 72

	.type	$__profd_strncmp,@object        # @__profd_strncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
$__profd_strncmp:
	.8byte	-6058495834680104774            # 0xabebe6233cb568ba
	.8byte	7207353986825238351             # 0x6405aa43cb36b74f
	.4byte	($__profc_strncmp)-($__profd_strncmp)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_strncmp, 48

	.type	$__profc_swab,@object           # @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
$__profc_swab:
	.space	16
	.size	$__profc_swab, 16

	.type	$__profd_swab,@object           # @__profd_swab
	.section	__llvm_prf_data,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
$__profd_swab:
	.8byte	-1619950660557759641            # 0xe984c77503cb9b67
	.8byte	18193                           # 0x4711
	.4byte	($__profc_swab)-($__profd_swab)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_swab, 48

	.type	$__profc_isalpha,@object        # @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
$__profc_isalpha:
	.space	8
	.size	$__profc_isalpha, 8

	.type	$__profd_isalpha,@object        # @__profd_isalpha
	.section	__llvm_prf_data,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
$__profd_isalpha:
	.8byte	-1429966999967671460            # 0xec27bc96fe655b5c
	.8byte	1563                            # 0x61b
	.4byte	($__profc_isalpha)-($__profd_isalpha)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_isalpha, 48

	.type	$__profc_isascii,@object        # @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
$__profc_isascii:
	.space	8
	.size	$__profc_isascii, 8

	.type	$__profd_isascii,@object        # @__profd_isascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
$__profd_isascii:
	.8byte	-4792250000779744687            # 0xbd7e8203c4a86a51
	.8byte	1562                            # 0x61a
	.4byte	($__profc_isascii)-($__profd_isascii)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_isascii, 48

	.type	$__profc_isblank,@object        # @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
$__profc_isblank:
	.space	24
	.size	$__profc_isblank, 24

	.type	$__profd_isblank,@object        # @__profd_isblank
	.section	__llvm_prf_data,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
$__profd_isblank:
	.8byte	2465200613623135234             # 0x223626e59b14fc02
	.8byte	6354911                         # 0x60f7df
	.4byte	($__profc_isblank)-($__profd_isblank)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_isblank, 48

	.type	$__profc_iscntrl,@object        # @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
$__profc_iscntrl:
	.space	24
	.size	$__profc_iscntrl, 24

	.type	$__profd_iscntrl,@object        # @__profd_iscntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
$__profd_iscntrl:
	.8byte	8897732069425577183             # 0x7b7b182cc8b67cdf
	.8byte	6354655                         # 0x60f6df
	.4byte	($__profc_iscntrl)-($__profd_iscntrl)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_iscntrl, 48

	.type	$__profc_isdigit,@object        # @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
$__profc_isdigit:
	.space	8
	.size	$__profc_isdigit, 8

	.type	$__profd_isdigit,@object        # @__profd_isdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
$__profd_isdigit:
	.8byte	3483985654529092453             # 0x30599a7e6cc36b65
	.8byte	1563                            # 0x61b
	.4byte	($__profc_isdigit)-($__profd_isdigit)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_isdigit, 48

	.type	$__profc_isgraph,@object        # @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
$__profc_isgraph:
	.space	8
	.size	$__profc_isgraph, 8

	.type	$__profd_isgraph,@object        # @__profd_isgraph
	.section	__llvm_prf_data,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
$__profd_isgraph:
	.8byte	-127227288456547236             # 0xfe3bff7489cfb45c
	.8byte	1563                            # 0x61b
	.4byte	($__profc_isgraph)-($__profd_isgraph)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_isgraph, 48

	.type	$__profc_islower,@object        # @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
$__profc_islower:
	.space	8
	.size	$__profc_islower, 8

	.type	$__profd_islower,@object        # @__profd_islower
	.section	__llvm_prf_data,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
$__profd_islower:
	.8byte	7501983819047161697             # 0x681c66894508cf61
	.8byte	1563                            # 0x61b
	.4byte	($__profc_islower)-($__profd_islower)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_islower, 48

	.type	$__profc_isprint,@object        # @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
$__profc_isprint:
	.space	8
	.size	$__profc_isprint, 8

	.type	$__profd_isprint,@object        # @__profd_isprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
$__profd_isprint:
	.8byte	-7275761640889424986            # 0x9b074d56145f63a6
	.8byte	1563                            # 0x61b
	.4byte	($__profc_isprint)-($__profd_isprint)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_isprint, 48

	.type	$__profc_isspace,@object        # @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
$__profc_isspace:
	.space	24
	.size	$__profc_isspace, 24

	.type	$__profd_isspace,@object        # @__profd_isspace
	.section	__llvm_prf_data,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
$__profd_isspace:
	.8byte	9032360604355461395             # 0x7d59641d39d70113
	.8byte	6354907                         # 0x60f7db
	.4byte	($__profc_isspace)-($__profd_isspace)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_isspace, 48

	.type	$__profc_isupper,@object        # @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
$__profc_isupper:
	.space	8
	.size	$__profc_isupper, 8

	.type	$__profd_isupper,@object        # @__profd_isupper
	.section	__llvm_prf_data,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
$__profd_isupper:
	.8byte	4174714232255583053             # 0x39ef9079c45c934d
	.8byte	1563                            # 0x61b
	.4byte	($__profc_isupper)-($__profd_isupper)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_isupper, 48

	.type	$__profc_iswcntrl,@object       # @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
$__profc_iswcntrl:
	.space	56
	.size	$__profc_iswcntrl, 56

	.type	$__profd_iswcntrl,@object       # @__profd_iswcntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
$__profd_iswcntrl:
	.8byte	7000259844681188668             # 0x6125eb3d61a7453c
	.8byte	106600273393371                 # 0x60f3cf6db6db
	.4byte	($__profc_iswcntrl)-($__profd_iswcntrl)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_iswcntrl, 48

	.type	$__profc_iswdigit,@object       # @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
$__profc_iswdigit:
	.space	8
	.size	$__profc_iswdigit, 8

	.type	$__profd_iswdigit,@object       # @__profd_iswdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
$__profd_iswdigit:
	.8byte	8583753245428091608             # 0x771f9e1919590ad8
	.8byte	1563                            # 0x61b
	.4byte	($__profc_iswdigit)-($__profd_iswdigit)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_iswdigit, 48

	.type	$__profc_iswprint,@object       # @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
$__profc_iswprint:
	.space	80
	.size	$__profc_iswprint, 80

	.type	$__profd_iswprint,@object       # @__profd_iswprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
$__profd_iswprint:
	.8byte	-719555261641779946             # 0xf603a04d49941516
	.8byte	-2566119187471392224            # 0xdc635031e3742220
	.4byte	($__profc_iswprint)-($__profd_iswprint)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	10                              # 0xa
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_iswprint, 48

	.type	$__profc_iswxdigit,@object      # @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
$__profc_iswxdigit:
	.space	24
	.size	$__profc_iswxdigit, 24

	.type	$__profd_iswxdigit,@object      # @__profd_iswxdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
$__profd_iswxdigit:
	.8byte	624771703830219826              # 0x8aba28df0840c32
	.8byte	6354651                         # 0x60f6db
	.4byte	($__profc_iswxdigit)-($__profd_iswxdigit)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_iswxdigit, 48

	.type	$__profc_toascii,@object        # @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
$__profc_toascii:
	.space	8
	.size	$__profc_toascii, 8

	.type	$__profd_toascii,@object        # @__profd_toascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
$__profd_toascii:
	.8byte	4548159975983457080             # 0x3f1e4f66a624a338
	.8byte	24                              # 0x18
	.4byte	($__profc_toascii)-($__profd_toascii)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_toascii, 48

	.type	$__profc_fdim,@object           # @__profc_fdim
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
$__profc_fdim:
	.space	32
	.size	$__profc_fdim, 32

	.type	$__profd_fdim,@object           # @__profd_fdim
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
$__profd_fdim:
	.8byte	-3545869933759497925            # 0xceca8a150286f93b
	.8byte	7369846577040809592             # 0x6646f46a29a55e78
	.4byte	($__profc_fdim)-($__profd_fdim)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_fdim, 48

	.type	$__profc_fdimf,@object          # @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
$__profc_fdimf:
	.space	32
	.size	$__profc_fdimf, 32

	.type	$__profd_fdimf,@object          # @__profd_fdimf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
$__profd_fdimf:
	.8byte	-1547869627280940664            # 0xea84dcc6634da188
	.8byte	7369846577040809592             # 0x6646f46a29a55e78
	.4byte	($__profc_fdimf)-($__profd_fdimf)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_fdimf, 48

	.type	$__profc_fmax,@object           # @__profc_fmax
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
$__profc_fmax:
	.space	48
	.size	$__profc_fmax, 48

	.type	$__profd_fmax,@object           # @__profd_fmax
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
$__profd_fmax:
	.8byte	-2423801789625842334            # 0xde5ced1d3b654562
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.4byte	($__profc_fmax)-($__profd_fmax)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_fmax, 48

	.type	$__profc_fmaxf,@object          # @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
$__profc_fmaxf:
	.space	48
	.size	$__profc_fmaxf, 48

	.type	$__profd_fmaxf,@object          # @__profd_fmaxf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
$__profd_fmaxf:
	.8byte	-5134209104457391460            # 0xb8bfa0058e3da29c
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.4byte	($__profc_fmaxf)-($__profd_fmaxf)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_fmaxf, 48

	.type	$__profc_fmaxl,@object          # @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
$__profc_fmaxl:
	.space	48
	.size	$__profc_fmaxl, 48

	.type	$__profd_fmaxl,@object          # @__profd_fmaxl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
$__profd_fmaxl:
	.8byte	-3138580006960380340            # 0xd471861cd1fbc64c
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.4byte	($__profc_fmaxl)-($__profd_fmaxl)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_fmaxl, 48

	.type	$__profc_fmin,@object           # @__profc_fmin
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
$__profc_fmin:
	.space	48
	.size	$__profc_fmin, 48

	.type	$__profd_fmin,@object           # @__profd_fmin
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
$__profd_fmin:
	.8byte	965427315610335377              # 0xd65e3074b69b891
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.4byte	($__profc_fmin)-($__profd_fmin)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_fmin, 48

	.type	$__profc_fminf,@object          # @__profc_fminf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
$__profc_fminf:
	.space	48
	.size	$__profc_fminf, 48

	.type	$__profd_fminf,@object          # @__profd_fminf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
$__profd_fminf:
	.8byte	7710199602704325723             # 0x6b0021b0328c9c5b
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.4byte	($__profc_fminf)-($__profd_fminf)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_fminf, 48

	.type	$__profc_fminl,@object          # @__profc_fminl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
$__profc_fminl:
	.space	48
	.size	$__profc_fminl, 48

	.type	$__profd_fminl,@object          # @__profd_fminl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
$__profd_fminl:
	.8byte	2487418697363824514             # 0x2285162058091f82
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.4byte	($__profc_fminl)-($__profd_fminl)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_fminl, 48

	.type	$__profc_l64a,@object           # @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
$__profc_l64a:
	.space	16
	.size	$__profc_l64a, 16

	.type	$__profd_l64a,@object           # @__profd_l64a
	.section	__llvm_prf_data,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
$__profd_l64a:
	.8byte	-6158745991357604691            # 0xaa87bd26bb44dcad
	.8byte	17496                           # 0x4458
	.4byte	($__profc_l64a)-($__profd_l64a)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_l64a, 48

	.type	$__profc_srand,@object          # @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
$__profc_srand:
	.space	8
	.size	$__profc_srand, 8

	.type	$__profd_srand,@object          # @__profd_srand
	.section	__llvm_prf_data,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
$__profd_srand:
	.8byte	-2085616837322687880            # 0xe30e668959ceba78
	.8byte	0                               # 0x0
	.4byte	($__profc_srand)-($__profd_srand)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_srand, 48

	.type	$__profc_rand,@object           # @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
$__profc_rand:
	.space	8
	.size	$__profc_rand, 8

	.type	$__profd_rand,@object           # @__profd_rand
	.section	__llvm_prf_data,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
$__profd_rand:
	.8byte	7206085285791387956             # 0x6401286350c3d134
	.8byte	24                              # 0x18
	.4byte	($__profc_rand)-($__profd_rand)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_rand, 48

	.type	$__profc_insque,@object         # @__profc_insque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
$__profc_insque:
	.space	24
	.size	$__profc_insque, 24

	.type	$__profd_insque,@object         # @__profd_insque
	.section	__llvm_prf_data,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
$__profd_insque:
	.8byte	-5080349535175464041            # 0xb97ef903bd0bab97
	.8byte	45786906010769                  # 0x29a49844a491
	.4byte	($__profc_insque)-($__profd_insque)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_insque, 48

	.type	$__profc_remque,@object         # @__profc_remque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
$__profc_remque:
	.space	24
	.size	$__profc_remque, 24

	.type	$__profd_remque,@object         # @__profd_remque
	.section	__llvm_prf_data,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
$__profd_remque:
	.8byte	-7214219538753974334            # 0x9be1f18d54e30fc2
	.8byte	11043906705                     # 0x29244a491
	.4byte	($__profc_remque)-($__profd_remque)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_remque, 48

	.type	$__profc_lsearch,@object        # @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
$__profc_lsearch:
	.space	24
	.size	$__profc_lsearch, 24

	.type	$__profd_lsearch,@object        # @__profd_lsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
$__profd_lsearch:
	.8byte	-7032153342590886098            # 0x9e68c5caf8cb5f2e
	.8byte	1245367951758424                # 0x46ca7d2611458
	.4byte	($__profc_lsearch)-($__profd_lsearch)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_lsearch, 48

	.type	$__profc_lfind,@object          # @__profc_lfind
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
$__profc_lfind:
	.space	24
	.size	$__profc_lfind, 24

	.type	$__profd_lfind,@object          # @__profd_lfind
	.section	__llvm_prf_data,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
$__profd_lfind:
	.8byte	-6350214982902907667            # 0xa7df811e30b57ced
	.8byte	1245367951758424                # 0x46ca7d2611458
	.4byte	($__profc_lfind)-($__profd_lfind)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_lfind, 48

	.type	$__profc_abs,@object            # @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
$__profc_abs:
	.space	16
	.size	$__profc_abs, 16

	.type	$__profd_abs,@object            # @__profd_abs
	.section	__llvm_prf_data,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
$__profd_abs:
	.8byte	-238465663743841031             # 0xfcb0ccbe056bacf9
	.8byte	99164                           # 0x1835c
	.4byte	($__profc_abs)-($__profd_abs)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_abs, 48

	.type	$__profc_atoi,@object           # @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
$__profc_atoi:
	.space	56
	.size	$__profc_atoi, 56

	.type	$__profd_atoi,@object           # @__profd_atoi
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
$__profd_atoi:
	.8byte	-6544211519801369139            # 0xa52e4a4ba3385dcd
	.8byte	638206505195021                 # 0x244720809160d
	.4byte	($__profc_atoi)-($__profd_atoi)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_atoi, 48

	.type	$__profc_atol,@object           # @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
$__profc_atol:
	.space	56
	.size	$__profc_atol, 56

	.type	$__profd_atol,@object           # @__profd_atol
	.section	__llvm_prf_data,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
$__profd_atol:
	.8byte	8236175749196770609             # 0x724cc634ee8f6d31
	.8byte	638206505195021                 # 0x244720809160d
	.4byte	($__profc_atol)-($__profd_atol)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_atol, 48

	.type	$__profc_atoll,@object          # @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
$__profc_atoll:
	.space	56
	.size	$__profc_atoll, 56

	.type	$__profd_atoll,@object          # @__profd_atoll
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
$__profd_atoll:
	.8byte	3653807471789013357             # 0x32b4ee8971a6f96d
	.8byte	638206505195021                 # 0x244720809160d
	.4byte	($__profc_atoll)-($__profd_atoll)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_atoll, 48

	.type	$__profc_bsearch,@object        # @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
$__profc_bsearch:
	.space	32
	.size	$__profc_bsearch, 32

	.type	$__profd_bsearch,@object        # @__profd_bsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
$__profd_bsearch:
	.8byte	8750110911118262334             # 0x796ea3837a79403e
	.8byte	-852542619444921222             # 0xf42b29012c1abc7a
	.4byte	($__profc_bsearch)-($__profd_bsearch)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_bsearch, 48

	.type	$__profc_bsearch_r,@object      # @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
$__profc_bsearch_r:
	.space	32
	.size	$__profc_bsearch_r, 32

	.type	$__profd_bsearch_r,@object      # @__profd_bsearch_r
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
$__profd_bsearch_r:
	.8byte	1417097008757763708             # 0x13aa8a38ab466e7c
	.8byte	1259382983000112142             # 0x117a3a2689e4bc0e
	.4byte	($__profc_bsearch_r)-($__profd_bsearch_r)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_bsearch_r, 48

	.type	$__profc_div,@object            # @__profc_div
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_div
	.p2align	3, 0x0
$__profc_div:
	.space	8
	.size	$__profc_div, 8

	.type	$__profd_div,@object            # @__profd_div
	.section	__llvm_prf_data,"awG",@progbits,__profc_div
	.p2align	3, 0x0
$__profd_div:
	.8byte	5497092892325669176             # 0x4c4998dc58656938
	.8byte	24                              # 0x18
	.4byte	($__profc_div)-($__profd_div)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_div, 48

	.type	$__profc_imaxabs,@object        # @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
$__profc_imaxabs:
	.space	16
	.size	$__profc_imaxabs, 16

	.type	$__profd_imaxabs,@object        # @__profd_imaxabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
$__profd_imaxabs:
	.8byte	8946668544180752025             # 0x7c28f3a3b30e0e99
	.8byte	99164                           # 0x1835c
	.4byte	($__profc_imaxabs)-($__profd_imaxabs)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_imaxabs, 48

	.type	$__profc_imaxdiv,@object        # @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
$__profc_imaxdiv:
	.space	8
	.size	$__profc_imaxdiv, 8

	.type	$__profd_imaxdiv,@object        # @__profd_imaxdiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
$__profd_imaxdiv:
	.8byte	-3928426486442246988            # 0xc97b6cec9d5fbcb4
	.8byte	24                              # 0x18
	.4byte	($__profc_imaxdiv)-($__profd_imaxdiv)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_imaxdiv, 48

	.type	$__profc_labs,@object           # @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
$__profc_labs:
	.space	16
	.size	$__profc_labs, 16

	.type	$__profd_labs,@object           # @__profd_labs
	.section	__llvm_prf_data,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
$__profd_labs:
	.8byte	-7118441263952323418            # 0x9d363762b3a39ca6
	.8byte	99164                           # 0x1835c
	.4byte	($__profc_labs)-($__profd_labs)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_labs, 48

	.type	$__profc_ldiv,@object           # @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
$__profc_ldiv:
	.space	8
	.size	$__profc_ldiv, 8

	.type	$__profd_ldiv,@object           # @__profd_ldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
$__profd_ldiv:
	.8byte	7149836041034155625             # 0x633951ff74204669
	.8byte	24                              # 0x18
	.4byte	($__profc_ldiv)-($__profd_ldiv)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_ldiv, 48

	.type	$__profc_llabs,@object          # @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
$__profc_llabs:
	.space	16
	.size	$__profc_llabs, 16

	.type	$__profd_llabs,@object          # @__profd_llabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
$__profd_llabs:
	.8byte	7684789126781046466             # 0x6aa5dafebb918ec2
	.8byte	99164                           # 0x1835c
	.4byte	($__profc_llabs)-($__profd_llabs)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_llabs, 48

	.type	$__profc_lldiv,@object          # @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
$__profc_lldiv:
	.space	8
	.size	$__profc_lldiv, 8

	.type	$__profd_lldiv,@object          # @__profd_lldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
$__profd_lldiv:
	.8byte	-5329156747615108898            # 0xb60b082c520680de
	.8byte	24                              # 0x18
	.4byte	($__profc_lldiv)-($__profd_lldiv)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_lldiv, 48

	.type	$__profc_wcschr,@object         # @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
$__profc_wcschr:
	.space	40
	.size	$__profc_wcschr, 40

	.type	$__profd_wcschr,@object         # @__profd_wcschr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
$__profd_wcschr:
	.8byte	-2279810736707830048            # 0xe05c7c36c3687ee0
	.8byte	4538308109                      # 0x10e81160d
	.4byte	($__profc_wcschr)-($__profd_wcschr)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_wcschr, 48

	.type	$__profc_wcscmp,@object         # @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
$__profc_wcscmp:
	.space	56
	.size	$__profc_wcscmp, 56

	.type	$__profd_wcscmp,@object         # @__profd_wcscmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
$__profd_wcscmp:
	.8byte	-3710185595167438704            # 0xcc82c5dbcd460890
	.8byte	1188468208228060                # 0x438e7d160d6dc
	.4byte	($__profc_wcscmp)-($__profd_wcscmp)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_wcscmp, 48

	.type	$__profc_wcscpy,@object         # @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
$__profc_wcscpy:
	.space	16
	.size	$__profc_wcscpy, 16

	.type	$__profd_wcscpy,@object         # @__profd_wcscpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
$__profd_wcscpy:
	.8byte	-8381368184235816342            # 0x8baf660af6dd0a6a
	.8byte	9304                            # 0x2458
	.4byte	($__profc_wcscpy)-($__profd_wcscpy)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_wcscpy, 48

	.type	$__profc_wcslen,@object         # @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
$__profc_wcslen:
	.space	16
	.size	$__profc_wcslen, 16

	.type	$__profd_wcslen,@object         # @__profd_wcslen
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
$__profd_wcslen:
	.8byte	3988408974905483574             # 0x3759acd4c838a136
	.8byte	17496                           # 0x4458
	.4byte	($__profc_wcslen)-($__profd_wcslen)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_wcslen, 48

	.type	$__profc_wcsncmp,@object        # @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
$__profc_wcsncmp:
	.space	80
	.size	$__profc_wcsncmp, 80

	.type	$__profd_wcsncmp,@object        # @__profd_wcsncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
$__profd_wcsncmp:
	.8byte	-5425166749483878188            # 0xb4b5ef95c9c0b8d4
	.8byte	6710790269995215964             # 0x5d218431fd366c5c
	.4byte	($__profc_wcsncmp)-($__profd_wcsncmp)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	10                              # 0xa
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_wcsncmp, 48

	.type	$__profc_wmemchr,@object        # @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
$__profc_wmemchr:
	.space	40
	.size	$__profc_wmemchr, 40

	.type	$__profd_wmemchr,@object        # @__profd_wmemchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
$__profd_wmemchr:
	.8byte	-150916099757221660             # 0xfde7d69b5b1558e4
	.8byte	4538308109                      # 0x10e81160d
	.4byte	($__profc_wmemchr)-($__profd_wmemchr)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_wmemchr, 48

	.type	$__profc_wmemcmp,@object        # @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
$__profc_wmemcmp:
	.space	48
	.size	$__profc_wmemcmp, 48

	.type	$__profd_wmemcmp,@object        # @__profd_wmemcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
$__profd_wmemcmp:
	.8byte	5386172057678365784             # 0x4abf86f3050dc458
	.8byte	1189621521503964                # 0x439f45834d6dc
	.4byte	($__profc_wmemcmp)-($__profd_wmemcmp)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	6                               # 0x6
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_wmemcmp, 48

	.type	$__profc_wmemcpy,@object        # @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
$__profc_wmemcpy:
	.space	16
	.size	$__profc_wmemcpy, 16

	.type	$__profd_wmemcpy,@object        # @__profd_wmemcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
$__profd_wmemcpy:
	.8byte	7326050423799855187             # 0x65ab5c0b9d30b853
	.8byte	9304                            # 0x2458
	.4byte	($__profc_wmemcpy)-($__profd_wmemcpy)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_wmemcpy, 48

	.type	$__profc_wmemmove,@object       # @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
$__profc_wmemmove:
	.space	40
	.size	$__profc_wmemmove, 40

	.type	$__profd_wmemmove,@object       # @__profd_wmemmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
$__profd_wmemmove:
	.8byte	-4659407939446788683            # 0xbf56752a69a3adb5
	.8byte	-1500206092990891740            # 0xeb2e3281c166b924
	.4byte	($__profc_wmemmove)-($__profd_wmemmove)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_wmemmove, 48

	.type	$__profc_wmemset,@object        # @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
$__profc_wmemset:
	.space	16
	.size	$__profc_wmemset, 16

	.type	$__profd_wmemset,@object        # @__profd_wmemset
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
$__profd_wmemset:
	.8byte	-8291142148468431281            # 0x8ceff224f245264f
	.8byte	9304                            # 0x2458
	.4byte	($__profc_wmemset)-($__profd_wmemset)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_wmemset, 48

	.type	$__profc_bcopy,@object          # @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
$__profc_bcopy:
	.space	40
	.size	$__profc_bcopy, 40

	.type	$__profd_bcopy,@object          # @__profd_bcopy
	.section	__llvm_prf_data,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
$__profd_bcopy:
	.8byte	-8407331144368071880            # 0x8b5328de3edcdb38
	.8byte	5234109875325077019             # 0x48a34b333a1d861b
	.4byte	($__profc_bcopy)-($__profd_bcopy)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_bcopy, 48

	.type	$__profc_rotl64,@object         # @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
$__profc_rotl64:
	.space	8
	.size	$__profc_rotl64, 8

	.type	$__profd_rotl64,@object         # @__profd_rotl64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
$__profd_rotl64:
	.8byte	4714666614722164144             # 0x416ddc4e84e875b0
	.8byte	24                              # 0x18
	.4byte	($__profc_rotl64)-($__profd_rotl64)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_rotl64, 48

	.type	$__profc_rotr64,@object         # @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
$__profc_rotr64:
	.space	8
	.size	$__profc_rotr64, 8

	.type	$__profd_rotr64,@object         # @__profd_rotr64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
$__profd_rotr64:
	.8byte	-8427642833712987187            # 0x8b0aff7e8aabc3cd
	.8byte	24                              # 0x18
	.4byte	($__profc_rotr64)-($__profd_rotr64)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_rotr64, 48

	.type	$__profc_rotl32,@object         # @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
$__profc_rotl32:
	.space	8
	.size	$__profc_rotl32, 8

	.type	$__profd_rotl32,@object         # @__profd_rotl32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
$__profd_rotl32:
	.8byte	6417704780586152324             # 0x5910447ed829f184
	.8byte	24                              # 0x18
	.4byte	($__profc_rotl32)-($__profd_rotl32)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_rotl32, 48

	.type	$__profc_rotr32,@object         # @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
$__profc_rotr32:
	.space	8
	.size	$__profc_rotr32, 8

	.type	$__profd_rotr32,@object         # @__profd_rotr32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
$__profd_rotr32:
	.8byte	-5668908084823466940            # 0xb153fe21cbc1dc44
	.8byte	24                              # 0x18
	.4byte	($__profc_rotr32)-($__profd_rotr32)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_rotr32, 48

	.type	$__profc_rotl_sz,@object        # @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
$__profc_rotl_sz:
	.space	8
	.size	$__profc_rotl_sz, 8

	.type	$__profd_rotl_sz,@object        # @__profd_rotl_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
$__profd_rotl_sz:
	.8byte	-3686623714176605670            # 0xccd67b43b7f8e21a
	.8byte	24                              # 0x18
	.4byte	($__profc_rotl_sz)-($__profd_rotl_sz)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_rotl_sz, 48

	.type	$__profc_rotr_sz,@object        # @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
$__profc_rotr_sz:
	.space	8
	.size	$__profc_rotr_sz, 8

	.type	$__profd_rotr_sz,@object        # @__profd_rotr_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
$__profd_rotr_sz:
	.8byte	3415499704483829380             # 0x2f664ae29835d684
	.8byte	24                              # 0x18
	.4byte	($__profc_rotr_sz)-($__profd_rotr_sz)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_rotr_sz, 48

	.type	$__profc_rotl16,@object         # @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
$__profc_rotl16:
	.space	8
	.size	$__profc_rotl16, 8

	.type	$__profd_rotl16,@object         # @__profd_rotl16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
$__profd_rotl16:
	.8byte	7327166975465201445             # 0x65af538b0e939f25
	.8byte	24                              # 0x18
	.4byte	($__profc_rotl16)-($__profd_rotl16)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_rotl16, 48

	.type	$__profc_rotr16,@object         # @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
$__profc_rotr16:
	.space	8
	.size	$__profc_rotr16, 8

	.type	$__profd_rotr16,@object         # @__profd_rotr16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
$__profd_rotr16:
	.8byte	5274763753728838268             # 0x4933b9afe71d0a7c
	.8byte	24                              # 0x18
	.4byte	($__profc_rotr16)-($__profd_rotr16)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_rotr16, 48

	.type	$__profc_rotl8,@object          # @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
$__profc_rotl8:
	.space	8
	.size	$__profc_rotl8, 8

	.type	$__profd_rotl8,@object          # @__profd_rotl8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
$__profd_rotl8:
	.8byte	4408423234350850624             # 0x3d2ddd93270fa240
	.8byte	24                              # 0x18
	.4byte	($__profc_rotl8)-($__profd_rotl8)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_rotl8, 48

	.type	$__profc_rotr8,@object          # @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
$__profc_rotr8:
	.space	8
	.size	$__profc_rotr8, 8

	.type	$__profd_rotr8,@object          # @__profd_rotr8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
$__profd_rotr8:
	.8byte	-6535801773217052896            # 0xa54c2aea59078720
	.8byte	24                              # 0x18
	.4byte	($__profc_rotr8)-($__profd_rotr8)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_rotr8, 48

	.type	$__profc_bswap_16,@object       # @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
$__profc_bswap_16:
	.space	8
	.size	$__profc_bswap_16, 8

	.type	$__profd_bswap_16,@object       # @__profd_bswap_16
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
$__profd_bswap_16:
	.8byte	-8870828063230114195            # 0x84e47ce04b9a466d
	.8byte	24                              # 0x18
	.4byte	($__profc_bswap_16)-($__profd_bswap_16)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_bswap_16, 48

	.type	$__profc_bswap_32,@object       # @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
$__profc_bswap_32:
	.space	8
	.size	$__profc_bswap_32, 8

	.type	$__profd_bswap_32,@object       # @__profd_bswap_32
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
$__profd_bswap_32:
	.8byte	7304833549461180700             # 0x655ffb691afd511c
	.8byte	24                              # 0x18
	.4byte	($__profc_bswap_32)-($__profd_bswap_32)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_bswap_32, 48

	.type	$__profc_bswap_64,@object       # @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
$__profc_bswap_64:
	.space	8
	.size	$__profc_bswap_64, 8

	.type	$__profd_bswap_64,@object       # @__profd_bswap_64
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
$__profd_bswap_64:
	.8byte	2873856403134720854             # 0x27e1fd2c1c53ab56
	.8byte	24                              # 0x18
	.4byte	($__profc_bswap_64)-($__profd_bswap_64)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_bswap_64, 48

	.type	$__profc_ffs,@object            # @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
$__profc_ffs:
	.space	24
	.size	$__profc_ffs, 24

	.type	$__profd_ffs,@object            # @__profd_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
$__profd_ffs:
	.8byte	9222170723057548859             # 0x7ffbbb6955da3e3b
	.8byte	19458657686616                  # 0x11b292611458
	.4byte	($__profc_ffs)-($__profd_ffs)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_ffs, 48

	.type	$__profc_libiberty_ffs,@object  # @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
$__profc_libiberty_ffs:
	.space	24
	.size	$__profc_libiberty_ffs, 24

	.type	$__profd_libiberty_ffs,@object  # @__profd_libiberty_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
$__profd_libiberty_ffs:
	.8byte	65216057573358521               # 0xe7b1a8a94fbbb9
	.8byte	2952352215704664                # 0xa7d261111a458
	.4byte	($__profc_libiberty_ffs)-($__profd_libiberty_ffs)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_libiberty_ffs, 48

	.type	$__profc_gl_isinff,@object      # @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
$__profc_gl_isinff:
	.space	24
	.size	$__profc_gl_isinff, 24

	.type	$__profd_gl_isinff,@object      # @__profd_gl_isinff
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
$__profd_gl_isinff:
	.8byte	6535010584615638394             # 0x5ab10580b36ed57a
	.8byte	6354652                         # 0x60f6dc
	.4byte	($__profc_gl_isinff)-($__profd_gl_isinff)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_gl_isinff, 48

	.type	$__profc_gl_isinfd,@object      # @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
$__profc_gl_isinfd:
	.space	24
	.size	$__profc_gl_isinfd, 24

	.type	$__profd_gl_isinfd,@object      # @__profd_gl_isinfd
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
$__profd_gl_isinfd:
	.8byte	-9165907066207032774            # 0x80cc28161a7caa3a
	.8byte	6354652                         # 0x60f6dc
	.4byte	($__profc_gl_isinfd)-($__profd_gl_isinfd)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_gl_isinfd, 48

	.type	$__profc_gl_isinfl,@object      # @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
$__profc_gl_isinfl:
	.space	24
	.size	$__profc_gl_isinfl, 24

	.type	$__profd_gl_isinfl,@object      # @__profd_gl_isinfl
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
$__profd_gl_isinfl:
	.8byte	4731159788068304891             # 0x41a874c2af6c77fb
	.8byte	6354652                         # 0x60f6dc
	.4byte	($__profc_gl_isinfl)-($__profd_gl_isinfl)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_gl_isinfl, 48

	.type	$__profc__Qp_itoq,@object       # @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
$__profc__Qp_itoq:
	.space	8
	.size	$__profc__Qp_itoq, 8

	.type	$__profd__Qp_itoq,@object       # @__profd__Qp_itoq
	.section	__llvm_prf_data,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
$__profd__Qp_itoq:
	.8byte	-3858125999267273921            # 0xca752ed84af9a33f
	.8byte	0                               # 0x0
	.4byte	($__profc__Qp_itoq)-($__profd__Qp_itoq)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd__Qp_itoq, 48

	.type	$__profc_ldexpf,@object         # @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
$__profc_ldexpf:
	.space	64
	.size	$__profc_ldexpf, 64

	.type	$__profd_ldexpf,@object         # @__profd_ldexpf
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
$__profd_ldexpf:
	.8byte	-2560632889718296859            # 0xdc76cdf42028aee5
	.8byte	-2048372819454505383            # 0xe392b7c600d94e59
	.4byte	($__profc_ldexpf)-($__profd_ldexpf)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	8                               # 0x8
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_ldexpf, 48

	.type	$__profc_ldexp,@object          # @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
$__profc_ldexp:
	.space	64
	.size	$__profc_ldexp, 64

	.type	$__profd_ldexp,@object          # @__profd_ldexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
$__profd_ldexp:
	.8byte	-240549059163932437             # 0xfca965e7b97ab8eb
	.8byte	-2048372819454505383            # 0xe392b7c600d94e59
	.4byte	($__profc_ldexp)-($__profd_ldexp)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	8                               # 0x8
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_ldexp, 48

	.type	$__profc_ldexpl,@object         # @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
$__profc_ldexpl:
	.space	64
	.size	$__profc_ldexpl, 64

	.type	$__profd_ldexpl,@object         # @__profd_ldexpl
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
$__profd_ldexpl:
	.8byte	-5097262943286299417            # 0xb942e25c0aa874e7
	.8byte	-2048372819454505383            # 0xe392b7c600d94e59
	.4byte	($__profc_ldexpl)-($__profd_ldexpl)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	8                               # 0x8
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_ldexpl, 48

	.type	$__profc_memxor,@object         # @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
$__profc_memxor:
	.space	16
	.size	$__profc_memxor, 16

	.type	$__profd_memxor,@object         # @__profd_memxor
	.section	__llvm_prf_data,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
$__profd_memxor:
	.8byte	-8368025376422999318            # 0x8bdecd417eda4aea
	.8byte	1164376                         # 0x11c458
	.4byte	($__profc_memxor)-($__profd_memxor)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_memxor, 48

	.type	$__profc_strncat,@object        # @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
$__profc_strncat:
	.space	40
	.size	$__profc_strncat, 40

	.type	$__profd_strncat,@object        # @__profd_strncat
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
$__profd_strncat:
	.8byte	-3582483947543505905            # 0xce4875d49d21540f
	.8byte	76123606467028056               # 0x10e72044a7d2458
	.4byte	($__profc_strncat)-($__profd_strncat)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_strncat, 48

	.type	$__profc_strnlen,@object        # @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
$__profc_strnlen:
	.space	32
	.size	$__profc_strnlen, 32

	.type	$__profd_strnlen,@object        # @__profd_strnlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
$__profd_strnlen:
	.8byte	517590790318988421              # 0x72eda14dbfa1c85
	.8byte	4537021528                      # 0x10e6d7458
	.4byte	($__profc_strnlen)-($__profd_strnlen)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_strnlen, 48

	.type	$__profc_strpbrk,@object        # @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
$__profc_strpbrk:
	.space	32
	.size	$__profc_strpbrk, 32

	.type	$__profd_strpbrk,@object        # @__profd_strpbrk
	.section	__llvm_prf_data,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
$__profd_strpbrk:
	.8byte	-6867074718569872870            # 0xa0b33fed4193c21a
	.8byte	-4444802448421279214            # 0xc250e3b905102a12
	.4byte	($__profc_strpbrk)-($__profd_strpbrk)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_strpbrk, 48

	.type	$__profc_strrchr,@object        # @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
$__profc_strrchr:
	.space	24
	.size	$__profc_strrchr, 24

	.type	$__profd_strrchr,@object        # @__profd_strrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
$__profd_strrchr:
	.8byte	5307837722043833871             # 0x49a93a493bd75e0f
	.8byte	217420731480                    # 0x329f491458
	.4byte	($__profc_strrchr)-($__profd_strrchr)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_strrchr, 48

	.type	$__profc_strstr,@object         # @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
$__profc_strstr:
	.space	32
	.size	$__profc_strstr, 32

	.type	$__profd_strstr,@object         # @__profd_strstr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
$__profd_strstr:
	.8byte	3560562421867190603             # 0x3169a8a873ff994b
	.8byte	-7798267876297541628            # 0x93c6fcaef9f1f804
	.4byte	($__profc_strstr)-($__profd_strstr)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_strstr, 48

	.type	$__profc_copysign,@object       # @__profc_copysign
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
$__profc_copysign:
	.space	56
	.size	$__profc_copysign, 56

	.type	$__profd_copysign,@object       # @__profd_copysign
	.section	__llvm_prf_data,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
$__profd_copysign:
	.8byte	-9076603418344796971            # 0x82096d47ea764cd5
	.8byte	4200982705386070127             # 0x3a4ce3834618a06f
	.4byte	($__profc_copysign)-($__profd_copysign)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_copysign, 48

	.type	$__profc_memmem,@object         # @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
$__profc_memmem:
	.space	56
	.size	$__profc_memmem, 56

	.type	$__profd_memmem,@object         # @__profd_memmem
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
$__profd_memmem:
	.8byte	-7485463843177831536            # 0x981e4a4b585ae390
	.8byte	5508063777036862020             # 0x4c7092d27e7a8244
	.4byte	($__profc_memmem)-($__profd_memmem)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_memmem, 48

	.type	$__profc_mempcpy,@object        # @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
$__profc_mempcpy:
	.space	8
	.size	$__profc_mempcpy, 8

	.type	$__profd_mempcpy,@object        # @__profd_mempcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
$__profd_mempcpy:
	.8byte	-722907995699078206             # 0xf5f7b7020f111bc2
	.8byte	24                              # 0x18
	.4byte	($__profc_mempcpy)-($__profd_mempcpy)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_mempcpy, 48

	.type	$__profc_frexp,@object          # @__profc_frexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
$__profc_frexp:
	.space	72
	.size	$__profc_frexp, 72

	.type	$__profd_frexp,@object          # @__profd_frexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
$__profd_frexp:
	.8byte	-2997169543230593137            # 0xd667ea2e1c1ee78f
	.8byte	-2373782428686282824            # 0xdf0ea1753c170fb8
	.4byte	($__profc_frexp)-($__profd_frexp)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_frexp, 48

	.type	$__profc___muldi3,@object       # @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
$__profc___muldi3:
	.space	24
	.size	$__profc___muldi3, 24

	.type	$__profd___muldi3,@object       # @__profd___muldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
$__profd___muldi3:
	.8byte	3987271357918321816             # 0x3755a22cafcf9c98
	.8byte	2320045144                      # 0x8a491458
	.4byte	($__profc___muldi3)-($__profd___muldi3)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___muldi3, 48

	.type	$__profc_udivmodsi4,@object     # @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
$__profc_udivmodsi4:
	.space	72
	.size	$__profc_udivmodsi4, 72

	.type	$__profd_udivmodsi4,@object     # @__profd_udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
$__profd_udivmodsi4:
	.8byte	4670832108574850701             # 0x40d2210e3d17be8d
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.4byte	($__profc_udivmodsi4)-($__profd_udivmodsi4)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd_udivmodsi4, 48

	.type	$__profc___clrsbqi2,@object     # @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
$__profc___clrsbqi2:
	.space	24
	.size	$__profc___clrsbqi2, 24

	.type	$__profd___clrsbqi2,@object     # @__profd___clrsbqi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
$__profd___clrsbqi2:
	.8byte	-7858138078702729622            # 0x92f2490d36f4066a
	.8byte	187824153796641880              # 0x29b49129f498458
	.4byte	($__profc___clrsbqi2)-($__profd___clrsbqi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___clrsbqi2, 48

	.type	$__profc___clrsbdi2,@object     # @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
$__profc___clrsbdi2:
	.space	24
	.size	$__profc___clrsbdi2, 24

	.type	$__profd___clrsbdi2,@object     # @__profd___clrsbdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
$__profd___clrsbdi2:
	.8byte	-1533375985051215657            # 0xeab85aaa6fe858d7
	.8byte	187824153796641880              # 0x29b49129f498458
	.4byte	($__profc___clrsbdi2)-($__profd___clrsbdi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___clrsbdi2, 48

	.type	$__profc___mulsi3,@object       # @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
$__profc___mulsi3:
	.space	24
	.size	$__profc___mulsi3, 24

	.type	$__profd___mulsi3,@object       # @__profd___mulsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
$__profd___mulsi3:
	.8byte	5127670123023436031             # 0x472924cf303208ff
	.8byte	2320045144                      # 0x8a491458
	.4byte	($__profc___mulsi3)-($__profd___mulsi3)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___mulsi3, 48

	.type	$__profc___cmovd,@object        # @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
$__profc___cmovd:
	.space	56
	.size	$__profc___cmovd, 56

	.type	$__profd___cmovd,@object        # @__profd___cmovd
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
$__profd___cmovd:
	.8byte	1458405851566781960             # 0x143d4c6520fd3608
	.8byte	-6411111704588201945            # 0xa70727df48abd027
	.4byte	($__profc___cmovd)-($__profd___cmovd)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___cmovd, 48

	.type	$__profc___cmovh,@object        # @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
$__profc___cmovh:
	.space	56
	.size	$__profc___cmovh, 56

	.type	$__profd___cmovh,@object        # @__profd___cmovh
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
$__profd___cmovh:
	.8byte	-1240290101804783090            # 0xeec99ab9477e2a0e
	.8byte	3130117398598530023             # 0x2b706930a0bc33e7
	.4byte	($__profc___cmovh)-($__profd___cmovh)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___cmovh, 48

	.type	$__profc___cmovw,@object        # @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
$__profc___cmovw:
	.space	56
	.size	$__profc___cmovw, 56

	.type	$__profd___cmovw,@object        # @__profd___cmovw
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
$__profd___cmovw:
	.8byte	-6631700889337257300            # 0xa3f7772d6a6922ac
	.8byte	-6411111704588201945            # 0xa70727df48abd027
	.4byte	($__profc___cmovw)-($__profd___cmovw)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___cmovw, 48

	.type	$__profc___modi,@object         # @__profc___modi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
$__profc___modi:
	.space	8
	.size	$__profc___modi, 8

	.type	$__profd___modi,@object         # @__profd___modi
	.section	__llvm_prf_data,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
$__profd___modi:
	.8byte	4130297501716739761             # 0x3951c3b1ce8276b1
	.8byte	24                              # 0x18
	.4byte	($__profc___modi)-($__profd___modi)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___modi, 48

	.type	$__profc___uitod,@object        # @__profc___uitod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
$__profc___uitod:
	.space	8
	.size	$__profc___uitod, 8

	.type	$__profd___uitod,@object        # @__profd___uitod
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
$__profd___uitod:
	.8byte	-3793169221884876252            # 0xcb5bf4b0949b6a24
	.8byte	24                              # 0x18
	.4byte	($__profc___uitod)-($__profd___uitod)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___uitod, 48

	.type	$__profc___uitof,@object        # @__profc___uitof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
$__profc___uitof:
	.space	8
	.size	$__profc___uitof, 8

	.type	$__profd___uitof,@object        # @__profd___uitof
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
$__profd___uitof:
	.8byte	2684105554667313846             # 0x253fdbc7ed991ab6
	.8byte	24                              # 0x18
	.4byte	($__profc___uitof)-($__profd___uitof)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___uitof, 48

	.type	$__profc___ulltod,@object       # @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
$__profc___ulltod:
	.space	8
	.size	$__profc___ulltod, 8

	.type	$__profd___ulltod,@object       # @__profd___ulltod
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
$__profd___ulltod:
	.8byte	3995277539005434566             # 0x377213c0fb840ac6
	.8byte	24                              # 0x18
	.4byte	($__profc___ulltod)-($__profd___ulltod)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___ulltod, 48

	.type	$__profc___ulltof,@object       # @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
$__profc___ulltof:
	.space	8
	.size	$__profc___ulltof, 8

	.type	$__profd___ulltof,@object       # @__profd___ulltof
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
$__profd___ulltof:
	.8byte	-1906554817873249395            # 0xe58a8e7e97dafb8d
	.8byte	24                              # 0x18
	.4byte	($__profc___ulltof)-($__profd___ulltof)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___ulltof, 48

	.type	$__profc___umodi,@object        # @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
$__profc___umodi:
	.space	8
	.size	$__profc___umodi, 8

	.type	$__profd___umodi,@object        # @__profd___umodi
	.section	__llvm_prf_data,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
$__profd___umodi:
	.8byte	6154071623751134202             # 0x5567a7893fff6bfa
	.8byte	24                              # 0x18
	.4byte	($__profc___umodi)-($__profd___umodi)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___umodi, 48

	.type	$__profc___clzhi2,@object       # @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
$__profc___clzhi2:
	.space	24
	.size	$__profc___clzhi2, 24

	.type	$__profd___clzhi2,@object       # @__profd___clzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
$__profd___clzhi2:
	.8byte	-9221703320275173474            # 0x8005edb05af53f9e
	.8byte	19458657162328                  # 0x11b292591458
	.4byte	($__profc___clzhi2)-($__profd___clzhi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___clzhi2, 48

	.type	$__profc___ctzhi2,@object       # @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
$__profc___ctzhi2:
	.space	24
	.size	$__profc___ctzhi2, 24

	.type	$__profd___ctzhi2,@object       # @__profd___ctzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
$__profd___ctzhi2:
	.8byte	-1569202989881991136            # 0xea391231d79a6020
	.8byte	19458657162328                  # 0x11b292591458
	.4byte	($__profc___ctzhi2)-($__profd___ctzhi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___ctzhi2, 48

	.type	$__profc___fixunssfsi,@object   # @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
$__profc___fixunssfsi:
	.space	16
	.size	$__profc___fixunssfsi, 16

	.type	$__profd___fixunssfsi,@object   # @__profd___fixunssfsi
	.section	__llvm_prf_data,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
$__profd___fixunssfsi:
	.8byte	-7800469359816066749            # 0x93bf2a7226d83943
	.8byte	11245552728                     # 0x29e498458
	.4byte	($__profc___fixunssfsi)-($__profd___fixunssfsi)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	2                               # 0x2
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___fixunssfsi, 48

	.type	$__profc___parityhi2,@object    # @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
$__profc___parityhi2:
	.space	24
	.size	$__profc___parityhi2, 24

	.type	$__profd___parityhi2,@object    # @__profd___parityhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
$__profd___parityhi2:
	.8byte	1203893203113466329             # 0x10b5167d5f15d9d9
	.8byte	304041497688                    # 0x46ca491458
	.4byte	($__profc___parityhi2)-($__profd___parityhi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___parityhi2, 48

	.type	$__profc___popcounthi2,@object  # @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
$__profc___popcounthi2:
	.space	24
	.size	$__profc___popcounthi2, 24

	.type	$__profd___popcounthi2,@object  # @__profd___popcounthi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
$__profd___popcounthi2:
	.8byte	3943219574947026310             # 0x36b9214fb4159586
	.8byte	304041497688                    # 0x46ca491458
	.4byte	($__profc___popcounthi2)-($__profd___popcounthi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___popcounthi2, 48

	.type	$__profc___mulsi3_iq2000,@object # @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
$__profc___mulsi3_iq2000:
	.space	24
	.size	$__profc___mulsi3_iq2000, 24

	.type	$__profd___mulsi3_iq2000,@object # @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
$__profd___mulsi3_iq2000:
	.8byte	-3976353352410196972            # 0xc8d127b190281414
	.8byte	171971253336                    # 0x280a491458
	.4byte	($__profc___mulsi3_iq2000)-($__profd___mulsi3_iq2000)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___mulsi3_iq2000, 48

	.type	$__profc___mulsi3_lm32,@object  # @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
$__profc___mulsi3_lm32:
	.space	32
	.size	$__profc___mulsi3_lm32, 32

	.type	$__profd___mulsi3_lm32,@object  # @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
$__profd___mulsi3_lm32:
	.8byte	2775651425054705869             # 0x26851843dab148cd
	.8byte	-6210685127595396365            # 0xa9cf36c835dff2f3
	.4byte	($__profc___mulsi3_lm32)-($__profd___mulsi3_lm32)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___mulsi3_lm32, 48

	.type	$__profc___udivmodsi4,@object   # @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
$__profc___udivmodsi4:
	.space	72
	.size	$__profc___udivmodsi4, 72

	.type	$__profd___udivmodsi4,@object   # @__profd___udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
$__profd___udivmodsi4:
	.8byte	-6720389007632434094            # 0xa2bc61cdbfa0fc52
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.4byte	($__profc___udivmodsi4)-($__profd___udivmodsi4)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___udivmodsi4, 48

	.type	$__profc___mspabi_cmpf,@object  # @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
$__profc___mspabi_cmpf:
	.space	24
	.size	$__profc___mspabi_cmpf, 24

	.type	$__profd___mspabi_cmpf,@object  # @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
$__profd___mspabi_cmpf:
	.8byte	6399771733438470391             # 0x58d08e7bef2f98f7
	.8byte	1352614535537600836             # 0x12c573c0ecbfa944
	.4byte	($__profc___mspabi_cmpf)-($__profd___mspabi_cmpf)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___mspabi_cmpf, 48

	.type	$__profc___mspabi_cmpd,@object  # @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
$__profc___mspabi_cmpd:
	.space	24
	.size	$__profc___mspabi_cmpd, 24

	.type	$__profd___mspabi_cmpd,@object  # @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
$__profd___mspabi_cmpd:
	.8byte	-5775354270414500759            # 0xafd9d1e3e3e88c69
	.8byte	1352614535537600836             # 0x12c573c0ecbfa944
	.4byte	($__profc___mspabi_cmpd)-($__profd___mspabi_cmpd)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___mspabi_cmpd, 48

	.type	$__profc___mspabi_mpysll,@object # @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
$__profc___mspabi_mpysll:
	.space	8
	.size	$__profc___mspabi_mpysll, 8

	.type	$__profd___mspabi_mpysll,@object # @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
$__profd___mspabi_mpysll:
	.8byte	-359228324547500507             # 0xfb03c3bdfa166625
	.8byte	24                              # 0x18
	.4byte	($__profc___mspabi_mpysll)-($__profd___mspabi_mpysll)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___mspabi_mpysll, 48

	.type	$__profc___mspabi_mpyull,@object # @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
$__profc___mspabi_mpyull:
	.space	8
	.size	$__profc___mspabi_mpyull, 8

	.type	$__profd___mspabi_mpyull,@object # @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
$__profd___mspabi_mpyull:
	.8byte	6629829186354316853             # 0x5c01e284c62a8635
	.8byte	24                              # 0x18
	.4byte	($__profc___mspabi_mpyull)-($__profd___mspabi_mpyull)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___mspabi_mpyull, 48

	.type	$__profc___mulhi3,@object       # @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
$__profc___mulhi3:
	.space	56
	.size	$__profc___mulhi3, 56

	.type	$__profd___mulhi3,@object       # @__profd___mulhi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
$__profd___mulhi3:
	.8byte	-4671748085078636676            # 0xbf2a9dde5cc6c77c
	.8byte	-5374843387156864121            # 0xb568b86aa1286387
	.4byte	($__profc___mulhi3)-($__profd___mulhi3)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	7                               # 0x7
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___mulhi3, 48

	.type	$__profc___divsi3,@object       # @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
$__profc___divsi3:
	.space	32
	.size	$__profc___divsi3, 32

	.type	$__profd___divsi3,@object       # @__profd___divsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
$__profd___divsi3:
	.8byte	5631431475223784324             # 0x4e26dd1711aaeb84
	.8byte	510575534943447681              # 0x715edbe6f4f2a81
	.4byte	($__profc___divsi3)-($__profd___divsi3)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___divsi3, 48

	.type	$__profc___modsi3,@object       # @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
$__profc___modsi3:
	.space	32
	.size	$__profc___modsi3, 32

	.type	$__profd___modsi3,@object       # @__profd___modsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
$__profd___modsi3:
	.8byte	-8995696579390192574            # 0x8328dd9f4e404442
	.8byte	2121116644152358499             # 0x1d6fb85985deb663
	.4byte	($__profc___modsi3)-($__profd___modsi3)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	4                               # 0x4
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___modsi3, 48

	.type	$__profc___udivmodhi4,@object   # @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
$__profc___udivmodhi4:
	.space	72
	.size	$__profc___udivmodhi4, 72

	.type	$__profd___udivmodhi4,@object   # @__profd___udivmodhi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
$__profd___udivmodhi4:
	.8byte	2241631039268115874             # 0x1f1bdf8db510d5a2
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.4byte	($__profc___udivmodhi4)-($__profd___udivmodhi4)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___udivmodhi4, 48

	.type	$__profc___udivmodsi4_libgcc,@object # @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
$__profc___udivmodsi4_libgcc:
	.space	72
	.size	$__profc___udivmodsi4_libgcc, 72

	.type	$__profd___udivmodsi4_libgcc,@object # @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
$__profd___udivmodsi4_libgcc:
	.8byte	-1484205535638993157            # 0xeb670aedd291c6fb
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.4byte	($__profc___udivmodsi4_libgcc)-($__profd___udivmodsi4_libgcc)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	9                               # 0x9
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___udivmodsi4_libgcc, 48

	.type	$__profc___ashldi3,@object      # @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
$__profc___ashldi3:
	.space	24
	.size	$__profc___ashldi3, 24

	.type	$__profd___ashldi3,@object      # @__profd___ashldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
$__profd___ashldi3:
	.8byte	3719210884952086607             # 0x339d4a983a55d84f
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.4byte	($__profc___ashldi3)-($__profd___ashldi3)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___ashldi3, 48

	.type	$__profc___ashrdi3,@object      # @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
$__profc___ashrdi3:
	.space	24
	.size	$__profc___ashrdi3, 24

	.type	$__profd___ashrdi3,@object      # @__profd___ashrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
$__profd___ashrdi3:
	.8byte	-1855717345837424946            # 0xe63f2ae7edd45ece
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.4byte	($__profc___ashrdi3)-($__profd___ashrdi3)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___ashrdi3, 48

	.type	$__profc___bswapdi2,@object     # @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
$__profc___bswapdi2:
	.space	8
	.size	$__profc___bswapdi2, 8

	.type	$__profd___bswapdi2,@object     # @__profd___bswapdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
$__profd___bswapdi2:
	.8byte	9149352740892555196             # 0x7ef907d7ada5b7bc
	.8byte	24                              # 0x18
	.4byte	($__profc___bswapdi2)-($__profd___bswapdi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___bswapdi2, 48

	.type	$__profc___bswapsi2,@object     # @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
$__profc___bswapsi2:
	.space	8
	.size	$__profc___bswapsi2, 8

	.type	$__profd___bswapsi2,@object     # @__profd___bswapsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
$__profd___bswapsi2:
	.8byte	-3374945843358245974            # 0xd129c8a2fe735baa
	.8byte	24                              # 0x18
	.4byte	($__profc___bswapsi2)-($__profd___bswapsi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___bswapsi2, 48

	.type	$__profc___clzsi2,@object       # @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
$__profc___clzsi2:
	.space	8
	.size	$__profc___clzsi2, 8

	.type	$__profd___clzsi2,@object       # @__profd___clzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
$__profd___clzsi2:
	.8byte	1382681549752930563             # 0x1330458b32829103
	.8byte	33814345247                     # 0x7df7df61f
	.4byte	($__profc___clzsi2)-($__profd___clzsi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___clzsi2, 48

	.type	$__profc___cmpdi2,@object       # @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
$__profc___cmpdi2:
	.space	40
	.size	$__profc___cmpdi2, 40

	.type	$__profd___cmpdi2,@object       # @__profd___cmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
$__profd___cmpdi2:
	.8byte	-5499644794300757496            # 0xb3ad5632ace08a08
	.8byte	-7406659272189927428            # 0x993642a254c41ffc
	.4byte	($__profc___cmpdi2)-($__profd___cmpdi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___cmpdi2, 48

	.type	$__profc___aeabi_lcmp,@object   # @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
$__profc___aeabi_lcmp:
	.space	8
	.size	$__profc___aeabi_lcmp, 8

	.type	$__profd___aeabi_lcmp,@object   # @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
$__profd___aeabi_lcmp:
	.8byte	7067747365298492588             # 0x6215aec83ed1d4ac
	.8byte	24                              # 0x18
	.4byte	($__profc___aeabi_lcmp)-($__profd___aeabi_lcmp)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___aeabi_lcmp, 48

	.type	$__profc___ctzsi2,@object       # @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
$__profc___ctzsi2:
	.space	8
	.size	$__profc___ctzsi2, 8

	.type	$__profd___ctzsi2,@object       # @__profd___ctzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
$__profd___ctzsi2:
	.8byte	-5501728155980453225            # 0xb3a5ef643c052a97
	.8byte	33814345247                     # 0x7df7df61f
	.4byte	($__profc___ctzsi2)-($__profd___ctzsi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___ctzsi2, 48

	.type	$__profc___lshrdi3,@object      # @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
$__profc___lshrdi3:
	.space	24
	.size	$__profc___lshrdi3, 24

	.type	$__profd___lshrdi3,@object      # @__profd___lshrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
$__profd___lshrdi3:
	.8byte	10441766047587925               # 0x2518bb1c181e55
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.4byte	($__profc___lshrdi3)-($__profd___lshrdi3)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	3                               # 0x3
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___lshrdi3, 48

	.type	$__profc___muldsi3,@object      # @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
$__profc___muldsi3:
	.space	8
	.size	$__profc___muldsi3, 8

	.type	$__profd___muldsi3,@object      # @__profd___muldsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
$__profd___muldsi3:
	.8byte	4756674255824047264             # 0x42031a08a2a34ca0
	.8byte	24                              # 0x18
	.4byte	($__profc___muldsi3)-($__profd___muldsi3)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___muldsi3, 48

	.type	$__profc___muldi3_compiler_rt,@object # @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
$__profc___muldi3_compiler_rt:
	.space	8
	.size	$__profc___muldi3_compiler_rt, 8

	.type	$__profd___muldi3_compiler_rt,@object # @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
$__profd___muldi3_compiler_rt:
	.8byte	-737717619142303851             # 0xf5c319bbe679df95
	.8byte	24                              # 0x18
	.4byte	($__profc___muldi3_compiler_rt)-($__profd___muldi3_compiler_rt)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___muldi3_compiler_rt, 48

	.type	$__profc___negdi2,@object       # @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
$__profc___negdi2:
	.space	8
	.size	$__profc___negdi2, 8

	.type	$__profd___negdi2,@object       # @__profd___negdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
$__profd___negdi2:
	.8byte	-2796404983763388037            # 0xd9312c7bb6a6b97b
	.8byte	24                              # 0x18
	.4byte	($__profc___negdi2)-($__profd___negdi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___negdi2, 48

	.type	$__profc___paritydi2,@object    # @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
$__profc___paritydi2:
	.space	8
	.size	$__profc___paritydi2, 8

	.type	$__profd___paritydi2,@object    # @__profd___paritydi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
$__profd___paritydi2:
	.8byte	-5102883611502574357            # 0xb92eea643e3a04eb
	.8byte	24                              # 0x18
	.4byte	($__profc___paritydi2)-($__profd___paritydi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___paritydi2, 48

	.type	$__profc___paritysi2,@object    # @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
$__profc___paritysi2:
	.space	8
	.size	$__profc___paritysi2, 8

	.type	$__profd___paritysi2,@object    # @__profd___paritysi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
$__profd___paritysi2:
	.8byte	8495812714014201054             # 0x75e730a6911054de
	.8byte	24                              # 0x18
	.4byte	($__profc___paritysi2)-($__profd___paritysi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___paritysi2, 48

	.type	$__profc___popcountdi2,@object  # @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
$__profc___popcountdi2:
	.space	8
	.size	$__profc___popcountdi2, 8

	.type	$__profd___popcountdi2,@object  # @__profd___popcountdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
$__profd___popcountdi2:
	.8byte	4342496508124198892             # 0x3c43a5910d1df7ec
	.8byte	24                              # 0x18
	.4byte	($__profc___popcountdi2)-($__profd___popcountdi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___popcountdi2, 48

	.type	$__profc___popcountsi2,@object  # @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
$__profc___popcountsi2:
	.space	8
	.size	$__profc___popcountsi2, 8

	.type	$__profd___popcountsi2,@object  # @__profd___popcountsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
$__profd___popcountsi2:
	.8byte	-2149276146439341705            # 0xe22c3cbb6f433977
	.8byte	24                              # 0x18
	.4byte	($__profc___popcountsi2)-($__profd___popcountsi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___popcountsi2, 48

	.type	$__profc___powidf2,@object      # @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
$__profc___powidf2:
	.space	40
	.size	$__profc___powidf2, 40

	.type	$__profd___powidf2,@object      # @__profd___powidf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
$__profd___powidf2:
	.8byte	-1752541073601039051            # 0xe7adb92dcdba7535
	.8byte	-4868838055443737378            # 0xbc6e6995b45f54de
	.4byte	($__profc___powidf2)-($__profd___powidf2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___powidf2, 48

	.type	$__profc___powisf2,@object      # @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
$__profc___powisf2:
	.space	40
	.size	$__profc___powisf2, 40

	.type	$__profd___powisf2,@object      # @__profd___powisf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
$__profd___powisf2:
	.8byte	-3807360110918407144            # 0xcb298a26c0b76c18
	.8byte	-4868838055443737378            # 0xbc6e6995b45f54de
	.4byte	($__profc___powisf2)-($__profd___powisf2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___powisf2, 48

	.type	$__profc___ucmpdi2,@object      # @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
$__profc___ucmpdi2:
	.space	40
	.size	$__profc___ucmpdi2, 40

	.type	$__profd___ucmpdi2,@object      # @__profd___ucmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
$__profd___ucmpdi2:
	.8byte	-2044349310657886323            # 0xe3a10322256c078d
	.8byte	-7406659272189927428            # 0x993642a254c41ffc
	.4byte	($__profc___ucmpdi2)-($__profd___ucmpdi2)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	5                               # 0x5
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___ucmpdi2, 48

	.type	$__profc___aeabi_ulcmp,@object  # @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
$__profc___aeabi_ulcmp:
	.space	8
	.size	$__profc___aeabi_ulcmp, 8

	.type	$__profd___aeabi_ulcmp,@object  # @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
$__profd___aeabi_ulcmp:
	.8byte	448670595368434735              # 0x639ff8782193c2f
	.8byte	24                              # 0x18
	.4byte	($__profc___aeabi_ulcmp)-($__profd___aeabi_ulcmp)
	.4byte	0                               # 0x0
	.4byte	0
	.4byte	0
	.4byte	1                               # 0x1
	.space	6
	.space	2
	.4byte	0                               # 0x0
	.size	$__profd___aeabi_ulcmp, 48

	.type	$__llvm_prf_nm,@object          # @__llvm_prf_nm
	.section	__llvm_prf_names,"aR",@progbits,unique,1
$__llvm_prf_nm:
	.ascii	"\225\n\246\004x\332]\223\tn\3430\fE\241\033e\222\242\3505\346\004\206\254%&J-\221\344*\355\351\207\244\344\244\031\300\340\373\244VRtp!\244/\247\202\013\306\344o\341V\004!\013F\260\314huM\325\2269Z\033\007\343\216S\th\021\001]dDq\273^\025T\215y\323\314j\000\210+\352\370I4\221\246\023-\\\241\021\257E\347\215\210\251\273B\314\005\"\307k\326\306\021\367\234%\336\217\205\375X\331\217\251\375>B-\215\303\274\205 \306+\037\364]\314\220H\026\242\030/\026\025\276\277iU\213\216V\211\201Xo\273S\305\005\006V\247)W\205\036hL\257U\351\226\200\r\212A\265\316\031\223KQ\026\276\024\320a<\233\311>\262\203\242\206\024\335M\345:2\250p\f*3\201\313I\220r\366\371B}>Q\237o\304\224\227\354\363\225V\223(\\R\243\214\030e\000/g\361\006p\251?\342N\342\237wq\007\360C\234\017J\246\353\274Pp\bZ;\004m\351=\335\036VX]i\337\013{W\\\240RA\375C\331\207B\265\374\315\013\264t\243\354\335=\373\201a\221\033\354\236\312h\035\335\204\263\225\362Z>\231G\243\321\2478\301\n\327\310\313\350cHc\372\302[.K\330\251\252\027\265SiC\262\025\336(f\260\324\365\006\347CZ\2214\263\322L\212Q\t\355\3446\331yB\262@\330\351\346v\3223\021g\200\205D\346L\203?\3338\245M\341\341\276\307Z}\345\341\254\013\264\3571\220S6i\217m\373u\225\005n\347\323\351\364\3641\\x\364%\227@\377\304\nt\307\354_<\373\364\002U\210\232\362\267\277\017\177\307M2\246\rG\352\262\355\345y\306&g<\017\\\350\225\257\306PL\327M\n+\252\f%\3750\212)\262\316\022\377L\021\346\240v|\r\344\316\225\332\214a|\354\303oV\037\212\0227)d@W\226\322(\030\335u\3543\n\370[\327\227b\332\027\357\030\353`\375\241\252\250\375\277\233\355|\265\177\337\f\323w"
	.size	$__llvm_prf_nm, 554

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
	.addrsig_sym $__profc_memmove
	.addrsig_sym $__profd_memmove
	.addrsig_sym $__profc_memccpy
	.addrsig_sym $__profd_memccpy
	.addrsig_sym $__profc_memchr
	.addrsig_sym $__profd_memchr
	.addrsig_sym $__profc_memcmp
	.addrsig_sym $__profd_memcmp
	.addrsig_sym $__profc_memcpy
	.addrsig_sym $__profd_memcpy
	.addrsig_sym $__profc_memrchr
	.addrsig_sym $__profd_memrchr
	.addrsig_sym $__profc_memset
	.addrsig_sym $__profd_memset
	.addrsig_sym $__profc_stpcpy
	.addrsig_sym $__profd_stpcpy
	.addrsig_sym $__profc_strchrnul
	.addrsig_sym $__profd_strchrnul
	.addrsig_sym $__profc_strchr
	.addrsig_sym $__profd_strchr
	.addrsig_sym $__profc_strcmp
	.addrsig_sym $__profd_strcmp
	.addrsig_sym $__profc_strlen
	.addrsig_sym $__profd_strlen
	.addrsig_sym $__profc_strncmp
	.addrsig_sym $__profd_strncmp
	.addrsig_sym $__profc_swab
	.addrsig_sym $__profd_swab
	.addrsig_sym $__profc_isalpha
	.addrsig_sym $__profd_isalpha
	.addrsig_sym $__profc_isascii
	.addrsig_sym $__profd_isascii
	.addrsig_sym $__profc_isblank
	.addrsig_sym $__profd_isblank
	.addrsig_sym $__profc_iscntrl
	.addrsig_sym $__profd_iscntrl
	.addrsig_sym $__profc_isdigit
	.addrsig_sym $__profd_isdigit
	.addrsig_sym $__profc_isgraph
	.addrsig_sym $__profd_isgraph
	.addrsig_sym $__profc_islower
	.addrsig_sym $__profd_islower
	.addrsig_sym $__profc_isprint
	.addrsig_sym $__profd_isprint
	.addrsig_sym $__profc_isspace
	.addrsig_sym $__profd_isspace
	.addrsig_sym $__profc_isupper
	.addrsig_sym $__profd_isupper
	.addrsig_sym $__profc_iswcntrl
	.addrsig_sym $__profd_iswcntrl
	.addrsig_sym $__profc_iswdigit
	.addrsig_sym $__profd_iswdigit
	.addrsig_sym $__profc_iswprint
	.addrsig_sym $__profd_iswprint
	.addrsig_sym $__profc_iswxdigit
	.addrsig_sym $__profd_iswxdigit
	.addrsig_sym $__profc_toascii
	.addrsig_sym $__profd_toascii
	.addrsig_sym $__profc_fdim
	.addrsig_sym $__profd_fdim
	.addrsig_sym $__profc_fdimf
	.addrsig_sym $__profd_fdimf
	.addrsig_sym $__profc_fmax
	.addrsig_sym $__profd_fmax
	.addrsig_sym $__profc_fmaxf
	.addrsig_sym $__profd_fmaxf
	.addrsig_sym $__profc_fmaxl
	.addrsig_sym $__profd_fmaxl
	.addrsig_sym $__profc_fmin
	.addrsig_sym $__profd_fmin
	.addrsig_sym $__profc_fminf
	.addrsig_sym $__profd_fminf
	.addrsig_sym $__profc_fminl
	.addrsig_sym $__profd_fminl
	.addrsig_sym $__profc_l64a
	.addrsig_sym $__profd_l64a
	.addrsig_sym $__profc_srand
	.addrsig_sym $__profd_srand
	.addrsig_sym $__profc_rand
	.addrsig_sym $__profd_rand
	.addrsig_sym $__profc_insque
	.addrsig_sym $__profd_insque
	.addrsig_sym $__profc_remque
	.addrsig_sym $__profd_remque
	.addrsig_sym $__profc_lsearch
	.addrsig_sym $__profd_lsearch
	.addrsig_sym $__profc_lfind
	.addrsig_sym $__profd_lfind
	.addrsig_sym $__profc_abs
	.addrsig_sym $__profd_abs
	.addrsig_sym $__profc_atoi
	.addrsig_sym $__profd_atoi
	.addrsig_sym $__profc_atol
	.addrsig_sym $__profd_atol
	.addrsig_sym $__profc_atoll
	.addrsig_sym $__profd_atoll
	.addrsig_sym $__profc_bsearch
	.addrsig_sym $__profd_bsearch
	.addrsig_sym $__profc_bsearch_r
	.addrsig_sym $__profd_bsearch_r
	.addrsig_sym $__profc_div
	.addrsig_sym $__profd_div
	.addrsig_sym $__profc_imaxabs
	.addrsig_sym $__profd_imaxabs
	.addrsig_sym $__profc_imaxdiv
	.addrsig_sym $__profd_imaxdiv
	.addrsig_sym $__profc_labs
	.addrsig_sym $__profd_labs
	.addrsig_sym $__profc_ldiv
	.addrsig_sym $__profd_ldiv
	.addrsig_sym $__profc_llabs
	.addrsig_sym $__profd_llabs
	.addrsig_sym $__profc_lldiv
	.addrsig_sym $__profd_lldiv
	.addrsig_sym $__profc_wcschr
	.addrsig_sym $__profd_wcschr
	.addrsig_sym $__profc_wcscmp
	.addrsig_sym $__profd_wcscmp
	.addrsig_sym $__profc_wcscpy
	.addrsig_sym $__profd_wcscpy
	.addrsig_sym $__profc_wcslen
	.addrsig_sym $__profd_wcslen
	.addrsig_sym $__profc_wcsncmp
	.addrsig_sym $__profd_wcsncmp
	.addrsig_sym $__profc_wmemchr
	.addrsig_sym $__profd_wmemchr
	.addrsig_sym $__profc_wmemcmp
	.addrsig_sym $__profd_wmemcmp
	.addrsig_sym $__profc_wmemcpy
	.addrsig_sym $__profd_wmemcpy
	.addrsig_sym $__profc_wmemmove
	.addrsig_sym $__profd_wmemmove
	.addrsig_sym $__profc_wmemset
	.addrsig_sym $__profd_wmemset
	.addrsig_sym $__profc_bcopy
	.addrsig_sym $__profd_bcopy
	.addrsig_sym $__profc_rotl64
	.addrsig_sym $__profd_rotl64
	.addrsig_sym $__profc_rotr64
	.addrsig_sym $__profd_rotr64
	.addrsig_sym $__profc_rotl32
	.addrsig_sym $__profd_rotl32
	.addrsig_sym $__profc_rotr32
	.addrsig_sym $__profd_rotr32
	.addrsig_sym $__profc_rotl_sz
	.addrsig_sym $__profd_rotl_sz
	.addrsig_sym $__profc_rotr_sz
	.addrsig_sym $__profd_rotr_sz
	.addrsig_sym $__profc_rotl16
	.addrsig_sym $__profd_rotl16
	.addrsig_sym $__profc_rotr16
	.addrsig_sym $__profd_rotr16
	.addrsig_sym $__profc_rotl8
	.addrsig_sym $__profd_rotl8
	.addrsig_sym $__profc_rotr8
	.addrsig_sym $__profd_rotr8
	.addrsig_sym $__profc_bswap_16
	.addrsig_sym $__profd_bswap_16
	.addrsig_sym $__profc_bswap_32
	.addrsig_sym $__profd_bswap_32
	.addrsig_sym $__profc_bswap_64
	.addrsig_sym $__profd_bswap_64
	.addrsig_sym $__profc_ffs
	.addrsig_sym $__profd_ffs
	.addrsig_sym $__profc_libiberty_ffs
	.addrsig_sym $__profd_libiberty_ffs
	.addrsig_sym $__profc_gl_isinff
	.addrsig_sym $__profd_gl_isinff
	.addrsig_sym $__profc_gl_isinfd
	.addrsig_sym $__profd_gl_isinfd
	.addrsig_sym $__profc_gl_isinfl
	.addrsig_sym $__profd_gl_isinfl
	.addrsig_sym $__profc__Qp_itoq
	.addrsig_sym $__profd__Qp_itoq
	.addrsig_sym $__profc_ldexpf
	.addrsig_sym $__profd_ldexpf
	.addrsig_sym $__profc_ldexp
	.addrsig_sym $__profd_ldexp
	.addrsig_sym $__profc_ldexpl
	.addrsig_sym $__profd_ldexpl
	.addrsig_sym $__profc_memxor
	.addrsig_sym $__profd_memxor
	.addrsig_sym $__profc_strncat
	.addrsig_sym $__profd_strncat
	.addrsig_sym $__profc_strnlen
	.addrsig_sym $__profd_strnlen
	.addrsig_sym $__profc_strpbrk
	.addrsig_sym $__profd_strpbrk
	.addrsig_sym $__profc_strrchr
	.addrsig_sym $__profd_strrchr
	.addrsig_sym $__profc_strstr
	.addrsig_sym $__profd_strstr
	.addrsig_sym $__profc_copysign
	.addrsig_sym $__profd_copysign
	.addrsig_sym $__profc_memmem
	.addrsig_sym $__profd_memmem
	.addrsig_sym $__profc_mempcpy
	.addrsig_sym $__profd_mempcpy
	.addrsig_sym $__profc_frexp
	.addrsig_sym $__profd_frexp
	.addrsig_sym $__profc___muldi3
	.addrsig_sym $__profd___muldi3
	.addrsig_sym $__profc_udivmodsi4
	.addrsig_sym $__profd_udivmodsi4
	.addrsig_sym $__profc___clrsbqi2
	.addrsig_sym $__profd___clrsbqi2
	.addrsig_sym $__profc___clrsbdi2
	.addrsig_sym $__profd___clrsbdi2
	.addrsig_sym $__profc___mulsi3
	.addrsig_sym $__profd___mulsi3
	.addrsig_sym $__profc___cmovd
	.addrsig_sym $__profd___cmovd
	.addrsig_sym $__profc___cmovh
	.addrsig_sym $__profd___cmovh
	.addrsig_sym $__profc___cmovw
	.addrsig_sym $__profd___cmovw
	.addrsig_sym $__profc___modi
	.addrsig_sym $__profd___modi
	.addrsig_sym $__profc___uitod
	.addrsig_sym $__profd___uitod
	.addrsig_sym $__profc___uitof
	.addrsig_sym $__profd___uitof
	.addrsig_sym $__profc___ulltod
	.addrsig_sym $__profd___ulltod
	.addrsig_sym $__profc___ulltof
	.addrsig_sym $__profd___ulltof
	.addrsig_sym $__profc___umodi
	.addrsig_sym $__profd___umodi
	.addrsig_sym $__profc___clzhi2
	.addrsig_sym $__profd___clzhi2
	.addrsig_sym $__profc___ctzhi2
	.addrsig_sym $__profd___ctzhi2
	.addrsig_sym $__profc___fixunssfsi
	.addrsig_sym $__profd___fixunssfsi
	.addrsig_sym $__profc___parityhi2
	.addrsig_sym $__profd___parityhi2
	.addrsig_sym $__profc___popcounthi2
	.addrsig_sym $__profd___popcounthi2
	.addrsig_sym $__profc___mulsi3_iq2000
	.addrsig_sym $__profd___mulsi3_iq2000
	.addrsig_sym $__profc___mulsi3_lm32
	.addrsig_sym $__profd___mulsi3_lm32
	.addrsig_sym $__profc___udivmodsi4
	.addrsig_sym $__profd___udivmodsi4
	.addrsig_sym $__profc___mspabi_cmpf
	.addrsig_sym $__profd___mspabi_cmpf
	.addrsig_sym $__profc___mspabi_cmpd
	.addrsig_sym $__profd___mspabi_cmpd
	.addrsig_sym $__profc___mspabi_mpysll
	.addrsig_sym $__profd___mspabi_mpysll
	.addrsig_sym $__profc___mspabi_mpyull
	.addrsig_sym $__profd___mspabi_mpyull
	.addrsig_sym $__profc___mulhi3
	.addrsig_sym $__profd___mulhi3
	.addrsig_sym $__profc___divsi3
	.addrsig_sym $__profd___divsi3
	.addrsig_sym $__profc___modsi3
	.addrsig_sym $__profd___modsi3
	.addrsig_sym $__profc___udivmodhi4
	.addrsig_sym $__profd___udivmodhi4
	.addrsig_sym $__profc___udivmodsi4_libgcc
	.addrsig_sym $__profd___udivmodsi4_libgcc
	.addrsig_sym $__profc___ashldi3
	.addrsig_sym $__profd___ashldi3
	.addrsig_sym $__profc___ashrdi3
	.addrsig_sym $__profd___ashrdi3
	.addrsig_sym $__profc___bswapdi2
	.addrsig_sym $__profd___bswapdi2
	.addrsig_sym $__profc___bswapsi2
	.addrsig_sym $__profd___bswapsi2
	.addrsig_sym $__profc___clzsi2
	.addrsig_sym $__profd___clzsi2
	.addrsig_sym $__profc___cmpdi2
	.addrsig_sym $__profd___cmpdi2
	.addrsig_sym $__profc___aeabi_lcmp
	.addrsig_sym $__profd___aeabi_lcmp
	.addrsig_sym $__profc___ctzsi2
	.addrsig_sym $__profd___ctzsi2
	.addrsig_sym $__profc___lshrdi3
	.addrsig_sym $__profd___lshrdi3
	.addrsig_sym $__profc___muldsi3
	.addrsig_sym $__profd___muldsi3
	.addrsig_sym $__profc___muldi3_compiler_rt
	.addrsig_sym $__profd___muldi3_compiler_rt
	.addrsig_sym $__profc___negdi2
	.addrsig_sym $__profd___negdi2
	.addrsig_sym $__profc___paritydi2
	.addrsig_sym $__profd___paritydi2
	.addrsig_sym $__profc___paritysi2
	.addrsig_sym $__profd___paritysi2
	.addrsig_sym $__profc___popcountdi2
	.addrsig_sym $__profd___popcountdi2
	.addrsig_sym $__profc___popcountsi2
	.addrsig_sym $__profd___popcountsi2
	.addrsig_sym $__profc___powidf2
	.addrsig_sym $__profd___powidf2
	.addrsig_sym $__profc___powisf2
	.addrsig_sym $__profd___powisf2
	.addrsig_sym $__profc___ucmpdi2
	.addrsig_sym $__profd___ucmpdi2
	.addrsig_sym $__profc___aeabi_ulcmp
	.addrsig_sym $__profd___aeabi_ulcmp
	.addrsig_sym $__llvm_prf_nm
	.text
