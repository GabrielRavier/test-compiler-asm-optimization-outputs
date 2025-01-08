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
	li	$2, %hi($__profc_memmove)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_memmove)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_memmove)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_memmove)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_memmove)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memmove)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi($__profc_memmove)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memmove)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi($__profc_memmove)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memmove)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB0_8 # 16 bit inst
$BB0_8:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB0_11  # 16 bit inst
	b	$BB0_9 # 16 bit inst
$BB0_9:                                 #   in Loop: Header=BB0_8 Depth=1
	li	$2, %hi(__llvm_gcov_ctr)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_memmove)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memmove)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
	li	$2, %hi(__llvm_gcov_ctr)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB0_12 # 16 bit inst
$BB0_12:
	li	$2, %hi(__llvm_gcov_ctr)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
	li	$2, %hi($__profc_memccpy)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_memccpy)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_memccpy)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_memccpy)($5)
	sw	$2, 4($3)
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
	beqz	$2, $BB1_4  # 16 bit inst
	b	$BB1_2 # 16 bit inst
$BB1_2:                                 #   in Loop: Header=BB1_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.1)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.1)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.1)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.1)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_memccpy)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memccpy)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 8($16)
	lbu	$3, 0($2)
	lw	$2, 12($16)
	sb	$3, 0($2)
	lw	$4, 20($16)
	move	$5, $3
	xor	$5, $4
	li	$2, 0
	sltu	$2, $5
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	cmp	$3, $4
	sw	$2, 4($16)                      # 4-byte Folded Spill
	bteqz	$BB1_4  # 16 bit inst
	b	$BB1_3 # 16 bit inst
$BB1_3:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.1)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.1)
	lw	$3, 12($4)
	lw	$5, 8($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 8($4)
	sw	$3, 12($4)
	li	$3, %hi($__profc_memccpy)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_memccpy)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB1_4 # 16 bit inst
$BB1_4:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB1_7  # 16 bit inst
	b	$BB1_5 # 16 bit inst
$BB1_5:                                 #   in Loop: Header=BB1_1 Depth=1
	li	$2, %hi($__profc_memccpy)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memccpy)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB1_6 # 16 bit inst
$BB1_6:                                 #   in Loop: Header=BB1_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.1)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.1)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
$BB1_7:
	lw	$2, 16($16)
	beqz	$2, $BB1_9  # 16 bit inst
	b	$BB1_8 # 16 bit inst
$BB1_8:
	li	$2, %hi(__llvm_gcov_ctr.1)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.1)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_memccpy)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memccpy)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 32($16)
	b	$BB1_10 # 16 bit inst
$BB1_9:
	li	$2, %hi(__llvm_gcov_ctr.1)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.1)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, 0
	sw	$2, 32($16)
	b	$BB1_10 # 16 bit inst
$BB1_10:
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
	li	$2, %hi($__profc_memchr)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_memchr)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_memchr)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_memchr)($5)
	sw	$2, 4($3)
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
	beqz	$2, $BB2_4  # 16 bit inst
	b	$BB2_2 # 16 bit inst
$BB2_2:                                 #   in Loop: Header=BB2_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.2)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.2)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_memchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memchr)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 12($16)
	lbu	$3, 0($2)
	lw	$4, 20($16)
	move	$5, $3
	xor	$5, $4
	li	$2, 0
	sltu	$2, $5
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	cmp	$3, $4
	sw	$2, 8($16)                      # 4-byte Folded Spill
	bteqz	$BB2_4  # 16 bit inst
	b	$BB2_3 # 16 bit inst
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.2)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.2)
	lw	$3, 12($4)
	lw	$5, 8($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 8($4)
	sw	$3, 12($4)
	li	$3, %hi($__profc_memchr)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_memchr)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB2_4 # 16 bit inst
$BB2_4:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB2_7  # 16 bit inst
	b	$BB2_5 # 16 bit inst
$BB2_5:                                 #   in Loop: Header=BB2_1 Depth=1
	li	$2, %hi($__profc_memchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memchr)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB2_6 # 16 bit inst
$BB2_6:                                 #   in Loop: Header=BB2_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.2)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.2)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	lw	$2, 16($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 16($16)
	b	$BB2_1 # 16 bit inst
$BB2_7:
	lw	$2, 16($16)
	beqz	$2, $BB2_9  # 16 bit inst
	b	$BB2_8 # 16 bit inst
$BB2_8:
	li	$2, %hi(__llvm_gcov_ctr.2)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.2)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_memchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memchr)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 12($16)
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB2_10 # 16 bit inst
$BB2_9:
	li	$2, %hi(__llvm_gcov_ctr.2)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.2)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, 0
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB2_10 # 16 bit inst
$BB2_10:
	lw	$2, 0($16)                      # 4-byte Folded Reload
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
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 32($16)
	sw	$5, 28($16)
	sw	$6, 24($16)
	li	$2, %hi($__profc_memcmp)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_memcmp)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_memcmp)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_memcmp)($5)
	sw	$2, 4($3)
	lw	$2, 32($16)
	sw	$2, 20($16)
	lw	$2, 28($16)
	sw	$2, 16($16)
	b	$BB3_1 # 16 bit inst
$BB3_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 24($16)
	li	$3, 0
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB3_4  # 16 bit inst
	b	$BB3_2 # 16 bit inst
$BB3_2:                                 #   in Loop: Header=BB3_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.3)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.3)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.3)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.3)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_memcmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memcmp)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 20($16)
	lbu	$3, 0($2)
	lw	$2, 16($16)
	lbu	$4, 0($2)
	move	$2, $3
	xor	$2, $4
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 8($16)                      # 4-byte Folded Spill
	cmp	$3, $4
	sw	$2, 12($16)                     # 4-byte Folded Spill
	btnez	$BB3_4  # 16 bit inst
	b	$BB3_3 # 16 bit inst
$BB3_3:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.3)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.3)
	lw	$3, 12($4)
	lw	$5, 8($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 8($4)
	sw	$3, 12($4)
	li	$3, %hi($__profc_memcmp)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_memcmp)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 12($16)                     # 4-byte Folded Spill
	b	$BB3_4 # 16 bit inst
$BB3_4:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$2, 12($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB3_7  # 16 bit inst
	b	$BB3_5 # 16 bit inst
$BB3_5:                                 #   in Loop: Header=BB3_1 Depth=1
	li	$2, %hi($__profc_memcmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memcmp)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB3_6 # 16 bit inst
$BB3_6:                                 #   in Loop: Header=BB3_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.3)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.3)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 24($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 24($16)
	lw	$2, 20($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 20($16)
	lw	$2, 16($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 16($16)
	b	$BB3_1 # 16 bit inst
$BB3_7:
	lw	$2, 24($16)
	beqz	$2, $BB3_9  # 16 bit inst
	b	$BB3_8 # 16 bit inst
$BB3_8:
	li	$2, %hi(__llvm_gcov_ctr.3)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.3)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_memcmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memcmp)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 20($16)
	lbu	$2, 0($2)
	lw	$3, 16($16)
	lbu	$3, 0($3)
	subu	$2, $2, $3
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB3_10 # 16 bit inst
$BB3_9:
	li	$2, %hi(__llvm_gcov_ctr.3)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.3)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, 0
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB3_10 # 16 bit inst
$BB3_10:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

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
	.frame	$16,32,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 32 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.4)
	sll	$17, $2, 16
	move	$2, $17
	addiu	$2, %lo(__llvm_gcov_ctr.4)
	sw	$2, 0($16)                      # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$7, %lo(__llvm_gcov_ctr.4)($17)
	addiu	$7, 1	# 16 bit inst
	sltiu	$7, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 0($16)                      # 4-byte Folded Reload
	sw	$7, %lo(__llvm_gcov_ctr.4)($17)
	sw	$2, 4($3)
	sw	$4, 20($16)
	sw	$5, 16($16)
	sw	$6, 12($16)
	li	$2, %hi($__profc_memcpy)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_memcpy)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_memcpy)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_memcpy)($5)
	sw	$2, 4($3)
	lw	$2, 20($16)
	sw	$2, 8($16)
	lw	$2, 16($16)
	sw	$2, 4($16)
	b	$BB4_1 # 16 bit inst
$BB4_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	beqz	$2, $BB4_4  # 16 bit inst
	b	$BB4_2 # 16 bit inst
$BB4_2:                                 #   in Loop: Header=BB4_1 Depth=1
	li	$2, %hi($__profc_memcpy)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memcpy)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, 1	# 16 bit inst
	sw	$3, 4($16)
	lbu	$2, 0($2)
	lw	$3, 8($16)
	move	$4, $3
	addiu	$4, 1	# 16 bit inst
	sw	$4, 8($16)
	sb	$2, 0($3)
	b	$BB4_3 # 16 bit inst
$BB4_3:                                 #   in Loop: Header=BB4_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.4)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.4)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 12($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB4_1 # 16 bit inst
$BB4_4:
	lw	$2, 20($16)
	move	$sp, $16
	restore	$16, $17, 32 # 16 bit inst

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
	li	$2, %hi($__profc_memrchr)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_memrchr)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_memrchr)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_memrchr)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc_memrchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memrchr)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 0($16)
	lw	$3, 4($16)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	lw	$3, 8($16)
	cmp	$2, $3
	btnez	$BB5_4  # 16 bit inst
	b	$BB5_3 # 16 bit inst
$BB5_3:
	li	$2, %hi(__llvm_gcov_ctr.5)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.5)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.5)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.5)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_memrchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memrchr)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 0($16)
	lw	$3, 4($16)
	addu	$2, $2, $3
	sw	$2, 16($16)
	b	$BB5_6 # 16 bit inst
$BB5_4:                                 #   in Loop: Header=BB5_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.5)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.5)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB5_1 # 16 bit inst
$BB5_5:
	li	$2, %hi(__llvm_gcov_ctr.5)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.5)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	.frame	$16,32,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 32 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.6)
	sll	$17, $2, 16
	move	$2, $17
	addiu	$2, %lo(__llvm_gcov_ctr.6)
	sw	$2, 0($16)                      # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$7, %lo(__llvm_gcov_ctr.6)($17)
	addiu	$7, 1	# 16 bit inst
	sltiu	$7, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 0($16)                      # 4-byte Folded Reload
	sw	$7, %lo(__llvm_gcov_ctr.6)($17)
	sw	$2, 4($3)
	sw	$4, 20($16)
	sw	$5, 16($16)
	sw	$6, 12($16)
	li	$2, %hi($__profc_memset)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_memset)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_memset)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_memset)($5)
	sw	$2, 4($3)
	lw	$2, 20($16)
	sw	$2, 8($16)
	b	$BB6_1 # 16 bit inst
$BB6_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	beqz	$2, $BB6_4  # 16 bit inst
	b	$BB6_2 # 16 bit inst
$BB6_2:                                 #   in Loop: Header=BB6_1 Depth=1
	li	$2, %hi($__profc_memset)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memset)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 16($16)
	lw	$3, 8($16)
	sb	$2, 0($3)
	b	$BB6_3 # 16 bit inst
$BB6_3:                                 #   in Loop: Header=BB6_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.6)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.6)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 12($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 12($16)
	lw	$2, 8($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB6_1 # 16 bit inst
$BB6_4:
	lw	$2, 20($16)
	move	$sp, $16
	restore	$16, $17, 32 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.7)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.7)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.7)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.7)($7)
	sw	$2, 4($3)
	sw	$4, 4($16)
	sw	$5, 0($16)
	li	$2, %hi($__profc_stpcpy)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_stpcpy)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_stpcpy)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_stpcpy)($5)
	sw	$2, 4($3)
	b	$BB7_1 # 16 bit inst
$BB7_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 0($16)
	lbu	$2, 0($2)
	lw	$3, 4($16)
	sb	$2, 0($3)
	beqz	$2, $BB7_4  # 16 bit inst
	b	$BB7_2 # 16 bit inst
$BB7_2:                                 #   in Loop: Header=BB7_1 Depth=1
	li	$2, %hi($__profc_stpcpy)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_stpcpy)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB7_3 # 16 bit inst
$BB7_3:                                 #   in Loop: Header=BB7_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.7)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.7)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 0($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 0($16)
	lw	$2, 4($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 4($16)
	b	$BB7_1 # 16 bit inst
$BB7_4:
	lw	$2, 4($16)
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	.frame	$16,24,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 24 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.8)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.8)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.8)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.8)($7)
	sw	$2, 4($3)
	sw	$4, 12($16)
	sw	$5, 8($16)
	li	$2, %hi($__profc_strchrnul)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_strchrnul)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_strchrnul)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_strchrnul)($5)
	sw	$2, 4($3)
	addiu	$2, $16, 8
	lbu	$2, 0($2)
	sw	$2, 8($16)
	b	$BB8_1 # 16 bit inst
$BB8_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	lb	$2, 0($2)
	li	$3, 0
	sw	$3, 4($16)                      # 4-byte Folded Spill
	beqz	$2, $BB8_4  # 16 bit inst
	b	$BB8_2 # 16 bit inst
$BB8_2:                                 #   in Loop: Header=BB8_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.8)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.8)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_strchrnul)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strchrnul)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 12($16)
	lbu	$3, 0($2)
	lw	$4, 8($16)
	move	$5, $3
	xor	$5, $4
	li	$2, 0
	sltu	$2, $5
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	cmp	$3, $4
	sw	$2, 4($16)                      # 4-byte Folded Spill
	bteqz	$BB8_4  # 16 bit inst
	b	$BB8_3 # 16 bit inst
$BB8_3:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.8)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.8)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_strchrnul)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_strchrnul)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB8_4 # 16 bit inst
$BB8_4:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB8_7  # 16 bit inst
	b	$BB8_5 # 16 bit inst
$BB8_5:                                 #   in Loop: Header=BB8_1 Depth=1
	li	$2, %hi($__profc_strchrnul)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strchrnul)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB8_6 # 16 bit inst
$BB8_6:                                 #   in Loop: Header=BB8_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.8)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.8)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB8_1 # 16 bit inst
$BB8_7:
	lw	$2, 12($16)
	move	$sp, $16
	restore	$16, $17, 24 # 16 bit inst

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
	li	$2, %hi($__profc_strchr)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_strchr)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_strchr)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_strchr)($5)
	sw	$2, 4($3)
	b	$BB9_2 # 16 bit inst
$BB9_1:                                 #   in Loop: Header=BB9_2 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.9)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.9)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_strchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strchr)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB9_2 # 16 bit inst
$BB9_2:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 4($16)
	lb	$2, 0($2)
	lw	$3, 0($16)
	cmp	$2, $3
	btnez	$BB9_4  # 16 bit inst
	b	$BB9_3 # 16 bit inst
$BB9_3:
	li	$2, %hi(__llvm_gcov_ctr.9)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.9)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.9)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.9)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_strchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strchr)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 4($16)
	sw	$2, 8($16)
	b	$BB9_7 # 16 bit inst
$BB9_4:                                 #   in Loop: Header=BB9_2 Depth=1
	b	$BB9_5 # 16 bit inst
$BB9_5:                                 #   in Loop: Header=BB9_2 Depth=1
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, 1	# 16 bit inst
	sw	$3, 4($16)
	lbu	$2, 0($2)
	bnez	$2, $BB9_1  # 16 bit inst
	b	$BB9_6 # 16 bit inst
$BB9_6:
	li	$2, %hi(__llvm_gcov_ctr.9)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.9)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, 0
	sw	$2, 8($16)
	b	$BB9_7 # 16 bit inst
$BB9_7:
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
	.frame	$16,24,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 24 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.10)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.10)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.10)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.10)($7)
	sw	$2, 4($3)
	sw	$4, 12($16)
	sw	$5, 8($16)
	li	$2, %hi($__profc_strcmp)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_strcmp)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_strcmp)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_strcmp)($5)
	sw	$2, 4($3)
	b	$BB10_1 # 16 bit inst
$BB10_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	lb	$3, 0($2)
	lw	$2, 8($16)
	lb	$4, 0($2)
	li	$2, 0
	cmp	$3, $4
	sw	$2, 4($16)                      # 4-byte Folded Spill
	btnez	$BB10_4  # 16 bit inst
	b	$BB10_2 # 16 bit inst
$BB10_2:                                #   in Loop: Header=BB10_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.10)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.10)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_strcmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strcmp)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 12($16)
	lb	$2, 0($2)
	li	$3, 0
	move	$4, $2
	xor	$4, $3
	sltu	$3, $4
	move	$3, $24
	sw	$3, 0($16)                      # 4-byte Folded Spill
	sw	$3, 4($16)                      # 4-byte Folded Spill
	beqz	$2, $BB10_4  # 16 bit inst
	b	$BB10_3 # 16 bit inst
$BB10_3:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.10)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.10)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_strcmp)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_strcmp)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB10_4 # 16 bit inst
$BB10_4:                                #   in Loop: Header=BB10_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB10_7  # 16 bit inst
	b	$BB10_5 # 16 bit inst
$BB10_5:                                #   in Loop: Header=BB10_1 Depth=1
	li	$2, %hi($__profc_strcmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strcmp)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB10_6 # 16 bit inst
$BB10_6:                                #   in Loop: Header=BB10_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.10)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.10)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	lw	$2, 8($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB10_1 # 16 bit inst
$BB10_7:
	lw	$2, 12($16)
	lbu	$2, 0($2)
	lw	$3, 8($16)
	lbu	$3, 0($3)
	subu	$2, $2, $3
	move	$sp, $16
	restore	$16, $17, 24 # 16 bit inst

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
	li	$2, %hi(__llvm_gcov_ctr.11)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.11)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.11)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.11)($6)
	sw	$2, 4($3)
	sw	$4, 8($16)
	li	$2, %hi($__profc_strlen)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_strlen)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_strlen)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_strlen)($5)
	sw	$2, 4($3)
	lw	$2, 8($16)
	sw	$2, 4($16)
	b	$BB11_1 # 16 bit inst
$BB11_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	lbu	$2, 0($2)
	beqz	$2, $BB11_4  # 16 bit inst
	b	$BB11_2 # 16 bit inst
$BB11_2:                                #   in Loop: Header=BB11_1 Depth=1
	li	$2, %hi($__profc_strlen)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strlen)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB11_3 # 16 bit inst
$BB11_3:                                #   in Loop: Header=BB11_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.11)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.11)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 28($16)
	sw	$5, 24($16)
	sw	$6, 20($16)
	li	$2, %hi($__profc_strncmp)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_strncmp)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_strncmp)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_strncmp)($5)
	sw	$2, 4($3)
	lw	$2, 28($16)
	sw	$2, 16($16)
	lw	$2, 24($16)
	sw	$2, 12($16)
	lw	$2, 20($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 20($16)
	bnez	$2, $BB12_2  # 16 bit inst
	b	$BB12_1 # 16 bit inst
$BB12_1:
	li	$2, %hi(__llvm_gcov_ctr.12)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.12)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_strncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strncmp)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, 0
	sw	$2, 32($16)
	b	$BB12_14 # 16 bit inst
$BB12_2:
	li	$2, %hi(__llvm_gcov_ctr.12)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.12)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.12)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.12)($5)
	sw	$2, 4($3)
	b	$BB12_3 # 16 bit inst
$BB12_3:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	lbu	$2, 0($2)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB12_10
	b	$BB12_4 # 16 bit inst
$BB12_4:                                #   in Loop: Header=BB12_3 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.12)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.12)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_strncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strncmp)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	lw	$2, 12($16)
	lbu	$2, 0($2)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB12_10
	b	$BB12_5 # 16 bit inst
$BB12_5:                                #   in Loop: Header=BB12_3 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.12)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.12)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_strncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strncmp)
	lw	$2, 68($3)
	lw	$4, 64($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 64($3)
	sw	$2, 68($3)
	b	$BB12_6 # 16 bit inst
$BB12_6:                                #   in Loop: Header=BB12_3 Depth=1
	li	$2, %hi($__profc_strncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strncmp)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 20($16)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB12_10  # 16 bit inst
	b	$BB12_7 # 16 bit inst
$BB12_7:                                #   in Loop: Header=BB12_3 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.12)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.12)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_strncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strncmp)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	b	$BB12_8 # 16 bit inst
$BB12_8:                                #   in Loop: Header=BB12_3 Depth=1
	li	$2, %hi($__profc_strncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strncmp)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 16($16)
	lbu	$3, 0($2)
	lw	$2, 12($16)
	lbu	$4, 0($2)
	move	$2, $3
	xor	$2, $4
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	cmp	$3, $4
	sw	$2, 8($16)                      # 4-byte Folded Spill
	btnez	$BB12_10  # 16 bit inst
	b	$BB12_9 # 16 bit inst
$BB12_9:                                #   in Loop: Header=BB12_3 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.12)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.12)
	lw	$3, 44($4)
	lw	$5, 40($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 40($4)
	sw	$3, 44($4)
	li	$3, %hi($__profc_strncmp)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_strncmp)
	lw	$3, 36($4)
	lw	$5, 32($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 32($4)
	sw	$3, 36($4)
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB12_10 # 16 bit inst
$BB12_10:                               #   in Loop: Header=BB12_3 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB12_13  # 16 bit inst
	b	$BB12_11 # 16 bit inst
$BB12_11:                               #   in Loop: Header=BB12_3 Depth=1
	li	$2, %hi($__profc_strncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strncmp)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	b	$BB12_12 # 16 bit inst
$BB12_12:                               #   in Loop: Header=BB12_3 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.12)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.12)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 16($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 16($16)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	lw	$2, 20($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 20($16)
	b	$BB12_3 # 16 bit inst
$BB12_13:
	lw	$2, 16($16)
	lbu	$2, 0($2)
	lw	$3, 12($16)
	lbu	$3, 0($3)
	subu	$2, $2, $3
	sw	$2, 32($16)
	b	$BB12_14 # 16 bit inst
$BB12_14:
	lw	$2, 32($16)
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

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
	.frame	$16,32,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 32 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.13)
	sll	$17, $2, 16
	move	$2, $17
	addiu	$2, %lo(__llvm_gcov_ctr.13)
	sw	$2, 0($16)                      # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$7, %lo(__llvm_gcov_ctr.13)($17)
	addiu	$7, 1	# 16 bit inst
	sltiu	$7, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 0($16)                      # 4-byte Folded Reload
	sw	$7, %lo(__llvm_gcov_ctr.13)($17)
	sw	$2, 4($3)
	sw	$4, 20($16)
	sw	$5, 16($16)
	sw	$6, 12($16)
	li	$2, %hi($__profc_swab)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_swab)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_swab)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_swab)($5)
	sw	$2, 4($3)
	lw	$2, 20($16)
	sw	$2, 8($16)
	lw	$2, 16($16)
	sw	$2, 4($16)
	b	$BB13_1 # 16 bit inst
$BB13_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	slti	$2, 2 	# 16 bit inst
	btnez	$BB13_4  # 16 bit inst
	b	$BB13_2 # 16 bit inst
$BB13_2:                                #   in Loop: Header=BB13_1 Depth=1
	li	$2, %hi($__profc_swab)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_swab)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 8($16)
	lbu	$2, 1($2)
	lw	$3, 4($16)
	sb	$2, 0($3)
	lw	$2, 8($16)
	lbu	$2, 0($2)
	lw	$3, 4($16)
	sb	$2, 1($3)
	lw	$2, 4($16)
	addiu	$2, 2	# 16 bit inst
	sw	$2, 4($16)
	lw	$2, 8($16)
	addiu	$2, 2	# 16 bit inst
	sw	$2, 8($16)
	b	$BB13_3 # 16 bit inst
$BB13_3:                                #   in Loop: Header=BB13_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.13)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.13)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 12($16)
	addiu	$2, -2	# 16 bit inst
	sw	$2, 12($16)
	b	$BB13_1 # 16 bit inst
$BB13_4:
	move	$sp, $16
	restore	$16, $17, 32 # 16 bit inst

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
	li	$2, %hi(__llvm_gcov_ctr.14)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.14)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.14)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.14)($6)
	sw	$2, 4($3)
	sw	$4, 0($16)
	li	$2, %hi($__profc_isalpha)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_isalpha)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_isalpha)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_isalpha)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.15)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.15)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.15)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.15)($6)
	sw	$2, 4($3)
	sw	$4, 0($16)
	li	$2, %hi($__profc_isascii)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_isascii)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_isascii)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_isascii)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.16)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.16)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.16)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.16)($6)
	sw	$2, 4($3)
	sw	$4, 8($16)
	li	$2, %hi($__profc_isblank)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_isblank)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_isblank)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_isblank)($5)
	sw	$2, 4($3)
	lw	$3, 8($16)
	li	$2, 1
	cmpi	$3, 32 	# 16 bit inst
	sw	$2, 4($16)                      # 4-byte Folded Spill
	bteqz	$BB16_3  # 16 bit inst
	b	$BB16_1 # 16 bit inst
$BB16_1:
	li	$2, %hi(__llvm_gcov_ctr.16)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.16)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_isblank)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_isblank)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$3, 8($16)
	li	$4, 9
	move	$2, $3
	xor	$2, $4
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	cmpi	$3, 9 	# 16 bit inst
	sw	$2, 4($16)                      # 4-byte Folded Spill
	bteqz	$BB16_3  # 16 bit inst
	b	$BB16_2 # 16 bit inst
$BB16_2:
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.16)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.16)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_isblank)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_isblank)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB16_3 # 16 bit inst
$BB16_3:
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
	li	$2, %hi(__llvm_gcov_ctr.17)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.17)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.17)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.17)($6)
	sw	$2, 4($3)
	sw	$4, 8($16)
	li	$2, %hi($__profc_iscntrl)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_iscntrl)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_iscntrl)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_iscntrl)($5)
	sw	$2, 4($3)
	lw	$2, 8($16)
	sltiu	$2, 32 	# 16 bit inst
	move	$2, $24
	li	$3, 1
	sw	$3, 4($16)                      # 4-byte Folded Spill
	bnez	$2, $BB17_3  # 16 bit inst
	b	$BB17_1 # 16 bit inst
$BB17_1:
	li	$2, %hi(__llvm_gcov_ctr.17)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.17)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_iscntrl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_iscntrl)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$3, 8($16)
	li	$4, 127
	move	$2, $3
	xor	$2, $4
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	cmpi	$3, 127 	# 16 bit inst
	sw	$2, 4($16)                      # 4-byte Folded Spill
	bteqz	$BB17_3  # 16 bit inst
	b	$BB17_2 # 16 bit inst
$BB17_2:
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.17)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.17)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_iscntrl)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_iscntrl)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB17_3 # 16 bit inst
$BB17_3:
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
	li	$2, %hi(__llvm_gcov_ctr.18)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.18)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.18)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.18)($6)
	sw	$2, 4($3)
	sw	$4, 0($16)
	li	$2, %hi($__profc_isdigit)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_isdigit)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_isdigit)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_isdigit)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.19)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.19)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.19)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.19)($6)
	sw	$2, 4($3)
	sw	$4, 0($16)
	li	$2, %hi($__profc_isgraph)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_isgraph)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_isgraph)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_isgraph)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.20)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.20)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.20)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.20)($6)
	sw	$2, 4($3)
	sw	$4, 0($16)
	li	$2, %hi($__profc_islower)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_islower)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_islower)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_islower)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.21)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.21)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.21)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.21)($6)
	sw	$2, 4($3)
	sw	$4, 0($16)
	li	$2, %hi($__profc_isprint)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_isprint)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_isprint)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_isprint)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.22)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.22)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.22)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.22)($6)
	sw	$2, 4($3)
	sw	$4, 8($16)
	li	$2, %hi($__profc_isspace)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_isspace)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_isspace)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_isspace)($5)
	sw	$2, 4($3)
	lw	$3, 8($16)
	li	$2, 1
	cmpi	$3, 32 	# 16 bit inst
	sw	$2, 4($16)                      # 4-byte Folded Spill
	bteqz	$BB22_3  # 16 bit inst
	b	$BB22_1 # 16 bit inst
$BB22_1:
	li	$2, %hi(__llvm_gcov_ctr.22)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.22)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_isspace)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_isspace)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 8($16)
	addiu	$2, -9	# 16 bit inst
	sltiu	$2, 5 	# 16 bit inst
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	move	$3, $2
	sw	$3, 4($16)                      # 4-byte Folded Spill
	bnez	$2, $BB22_3  # 16 bit inst
	b	$BB22_2 # 16 bit inst
$BB22_2:
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.22)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.22)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_isspace)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_isspace)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB22_3 # 16 bit inst
$BB22_3:
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
	li	$2, %hi(__llvm_gcov_ctr.23)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.23)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.23)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.23)($6)
	sw	$2, 4($3)
	sw	$4, 0($16)
	li	$2, %hi($__profc_isupper)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_isupper)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_isupper)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_isupper)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.24)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.24)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.24)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.24)($6)
	sw	$2, 4($3)
	sw	$4, 0($16)
	li	$2, %hi($__profc_iswdigit)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_iswdigit)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_iswdigit)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_iswdigit)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.25)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.25)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.25)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.25)($6)
	sw	$2, 4($3)
	sw	$4, 8($16)
	li	$2, %hi($__profc_iswxdigit)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_iswxdigit)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_iswxdigit)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_iswxdigit)($5)
	sw	$2, 4($3)
	lw	$2, 8($16)
	addiu	$2, -48	# 16 bit inst
	sltiu	$2, 10 	# 16 bit inst
	move	$2, $24
	li	$3, 1
	sw	$3, 4($16)                      # 4-byte Folded Spill
	bnez	$2, $BB25_3  # 16 bit inst
	b	$BB25_1 # 16 bit inst
$BB25_1:
	li	$2, %hi(__llvm_gcov_ctr.25)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.25)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_iswxdigit)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_iswxdigit)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 8($16)
	li	$3, 32
	or	$2, $3
	addiu	$2, -97	# 16 bit inst
	sltiu	$2, 6 	# 16 bit inst
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	move	$3, $2
	sw	$3, 4($16)                      # 4-byte Folded Spill
	bnez	$2, $BB25_3  # 16 bit inst
	b	$BB25_2 # 16 bit inst
$BB25_2:
	lw	$2, 0($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.25)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.25)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_iswxdigit)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_iswxdigit)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB25_3 # 16 bit inst
$BB25_3:
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
	li	$2, %hi(__llvm_gcov_ctr.26)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.26)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.26)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.26)($6)
	sw	$2, 4($3)
	sw	$4, 0($16)
	li	$2, %hi($__profc_toascii)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_toascii)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_toascii)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_toascii)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc_fdim)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_fdim)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_fdim)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_fdim)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.27)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.27)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.27)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.27)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_fdim)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fdim)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.27)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.27)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_fdim)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fdim)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.27)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.27)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_fdim)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fdim)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.27)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.27)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi($__profc_fdimf)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_fdimf)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_fdimf)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_fdimf)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.28)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.28)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.28)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.28)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_fdimf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fdimf)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.28)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.28)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_fdimf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fdimf)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.28)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.28)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_fdimf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fdimf)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$4, 24($16)
	lw	$5, 20($16)
	jal	__subsf3
	nop
	sw	$2, 16($16)                     # 4-byte Folded Spill
	b	$BB28_7 # 16 bit inst
$BB28_6:
	li	$2, %hi(__llvm_gcov_ctr.28)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.28)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi($__profc_fmax)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_fmax)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_fmax)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_fmax)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.29)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.29)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.29)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.29)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_fmax)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmax)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.29)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.29)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_fmax)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmax)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc_fmax)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmax)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$3, 60($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB29_11  # 16 bit inst
	b	$BB29_10 # 16 bit inst
$BB29_10:
	li	$2, %hi(__llvm_gcov_ctr.29)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.29)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_fmax)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmax)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB29_12 # 16 bit inst
$BB29_11:
	li	$2, %hi(__llvm_gcov_ctr.29)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.29)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.29)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.29)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_fmax)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmax)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB29_16 # 16 bit inst
$BB29_15:
	li	$2, %hi(__llvm_gcov_ctr.29)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.29)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	li	$2, %hi($__profc_fmaxf)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_fmaxf)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_fmaxf)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_fmaxf)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.30)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.30)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.30)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.30)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_fmaxf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmaxf)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.30)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.30)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_fmaxf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmaxf)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc_fmaxf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmaxf)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$3, 32($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB30_7  # 16 bit inst
	b	$BB30_6 # 16 bit inst
$BB30_6:
	li	$2, %hi(__llvm_gcov_ctr.30)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.30)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_fmaxf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmaxf)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 28($16)
	sw	$2, 24($16)                     # 4-byte Folded Spill
	b	$BB30_8 # 16 bit inst
$BB30_7:
	li	$2, %hi(__llvm_gcov_ctr.30)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.30)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.30)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.30)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_fmaxf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmaxf)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 28($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB30_12 # 16 bit inst
$BB30_11:
	li	$2, %hi(__llvm_gcov_ctr.30)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.30)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	li	$2, %hi($__profc_fmaxl)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_fmaxl)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_fmaxl)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_fmaxl)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.31)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.31)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.31)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.31)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_fmaxl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmaxl)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.31)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.31)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_fmaxl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmaxl)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc_fmaxl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmaxl)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$3, 60($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB31_11  # 16 bit inst
	b	$BB31_10 # 16 bit inst
$BB31_10:
	li	$2, %hi(__llvm_gcov_ctr.31)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.31)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_fmaxl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmaxl)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB31_12 # 16 bit inst
$BB31_11:
	li	$2, %hi(__llvm_gcov_ctr.31)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.31)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.31)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.31)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_fmaxl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmaxl)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 52($16)
	lw	$3, 48($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB31_16 # 16 bit inst
$BB31_15:
	li	$2, %hi(__llvm_gcov_ctr.31)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.31)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	li	$2, %hi($__profc_fmin)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_fmin)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_fmin)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_fmin)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.32)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.32)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.32)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.32)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_fmin)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmin)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.32)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.32)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_fmin)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmin)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc_fmin)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmin)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$3, 60($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB32_11  # 16 bit inst
	b	$BB32_10 # 16 bit inst
$BB32_10:
	li	$2, %hi(__llvm_gcov_ctr.32)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.32)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_fmin)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmin)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB32_12 # 16 bit inst
$BB32_11:
	li	$2, %hi(__llvm_gcov_ctr.32)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.32)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.32)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.32)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_fmin)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fmin)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB32_16 # 16 bit inst
$BB32_15:
	li	$2, %hi(__llvm_gcov_ctr.32)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.32)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	li	$2, %hi($__profc_fminf)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_fminf)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_fminf)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_fminf)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.33)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.33)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.33)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.33)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_fminf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fminf)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.33)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.33)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_fminf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fminf)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc_fminf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fminf)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$3, 32($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB33_7  # 16 bit inst
	b	$BB33_6 # 16 bit inst
$BB33_6:
	li	$2, %hi(__llvm_gcov_ctr.33)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.33)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_fminf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fminf)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 32($16)
	sw	$2, 24($16)                     # 4-byte Folded Spill
	b	$BB33_8 # 16 bit inst
$BB33_7:
	li	$2, %hi(__llvm_gcov_ctr.33)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.33)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.33)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.33)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_fminf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fminf)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 32($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB33_12 # 16 bit inst
$BB33_11:
	li	$2, %hi(__llvm_gcov_ctr.33)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.33)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	li	$2, %hi($__profc_fminl)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_fminl)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_fminl)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_fminl)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.34)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.34)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.34)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.34)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_fminl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fminl)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.34)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.34)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_fminl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fminl)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc_fminl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fminl)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$3, 60($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB34_11  # 16 bit inst
	b	$BB34_10 # 16 bit inst
$BB34_10:
	li	$2, %hi(__llvm_gcov_ctr.34)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.34)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_fminl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fminl)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$2, 28($16)                     # 4-byte Folded Spill
	b	$BB34_12 # 16 bit inst
$BB34_11:
	li	$2, %hi(__llvm_gcov_ctr.34)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.34)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.34)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.34)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_fminl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_fminl)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 60($16)
	lw	$3, 56($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB34_16 # 16 bit inst
$BB34_15:
	li	$2, %hi(__llvm_gcov_ctr.34)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.34)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	li	$2, %hi(__llvm_gcov_ctr.35)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.35)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.35)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.35)($6)
	sw	$2, 4($3)
	sw	$4, 8($16)
	li	$2, %hi($__profc_l64a)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_l64a)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_l64a)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_l64a)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc_l64a)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_l64a)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.35)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.35)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.36)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.36)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.36)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.36)($6)
	sw	$2, 4($3)
	sw	$4, 0($16)
	li	$2, %hi($__profc_srand)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_srand)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_srand)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_srand)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.37)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.37)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.37)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.37)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_rand)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_rand)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_rand)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_rand)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc_insque)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_insque)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_insque)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_insque)($5)
	sw	$2, 4($3)
	lw	$2, 16($16)
	sw	$2, 8($16)
	lw	$2, 12($16)
	sw	$2, 4($16)
	lw	$2, 4($16)
	bnez	$2, $BB38_2  # 16 bit inst
	b	$BB38_1 # 16 bit inst
$BB38_1:
	li	$2, %hi(__llvm_gcov_ctr.38)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.38)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_insque)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_insque)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$3, 8($16)
	li	$2, 0
	sw	$2, 4($3)
	lw	$3, 8($16)
	sw	$2, 0($3)
	b	$BB38_4 # 16 bit inst
$BB38_2:
	li	$2, %hi(__llvm_gcov_ctr.38)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.38)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.38)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.38)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.38)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.38)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_insque)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_insque)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.39)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.39)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.39)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.39)($6)
	sw	$2, 4($3)
	sw	$4, 8($16)
	li	$2, %hi($__profc_remque)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_remque)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_remque)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_remque)($5)
	sw	$2, 4($3)
	lw	$2, 8($16)
	sw	$2, 4($16)
	lw	$2, 4($16)
	lw	$2, 0($2)
	beqz	$2, $BB39_2  # 16 bit inst
	b	$BB39_1 # 16 bit inst
$BB39_1:
	li	$2, %hi(__llvm_gcov_ctr.39)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.39)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_remque)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_remque)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.39)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.39)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_remque)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_remque)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc_lsearch)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_lsearch)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_lsearch)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_lsearch)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc_lsearch)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_lsearch)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.40)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.40)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.40)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.40)($6)
	sw	$2, 4($3)
	li	$2, %hi($__profc_lsearch)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_lsearch)
	lw	$2, 20($3)
	lw	$5, 16($3)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$5, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.40)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.40)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 24($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 24($16)
	b	$BB40_1 # 16 bit inst
$BB40_6:
	lw	$4, 20($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.40)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.40)
	lw	$2, 20($3)
	lw	$5, 16($3)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$5, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc_lfind)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_lfind)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_lfind)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_lfind)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc_lfind)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_lfind)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.41)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.41)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.41)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.41)($6)
	sw	$2, 4($3)
	li	$2, %hi($__profc_lfind)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_lfind)
	lw	$2, 20($3)
	lw	$5, 16($3)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$5, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.41)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.41)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 24($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 24($16)
	b	$BB41_1 # 16 bit inst
$BB41_6:
	li	$2, %hi(__llvm_gcov_ctr.41)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.41)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc_abs)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_abs)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_abs)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_abs)($5)
	sw	$2, 4($3)
	lw	$2, 8($16)
	slti	$2, 1 	# 16 bit inst
	btnez	$BB42_2  # 16 bit inst
	b	$BB42_1 # 16 bit inst
$BB42_1:
	li	$2, %hi(__llvm_gcov_ctr.42)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.42)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.42)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.42)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_abs)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_abs)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 8($16)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB42_3 # 16 bit inst
$BB42_2:
	li	$2, %hi(__llvm_gcov_ctr.42)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.42)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi($__profc_atoi)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_atoi)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_atoi)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_atoi)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.43)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.43)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.43)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.43)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_atoi)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoi)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	btnez	$BB43_8  # 16 bit inst
	b	$BB43_5 # 16 bit inst
$BB43_5:
	li	$2, %hi(__llvm_gcov_ctr.43)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.43)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_atoi)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoi)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, 1
	sw	$2, 28($16)
	b	$BB43_7 # 16 bit inst
$BB43_6:
	li	$2, %hi(__llvm_gcov_ctr.43)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.43)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_atoi)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoi)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	b	$BB43_7 # 16 bit inst
$BB43_7:
	lw	$2, 36($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 36($16)
	b	$BB43_8 # 16 bit inst
$BB43_8:
	li	$2, %hi($__profc_atoi)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoi)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	b	$BB43_9 # 16 bit inst
$BB43_9:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 36($16)
	lb	$4, 0($2)
	jal	isdigit
	nop
	beqz	$2, $BB43_11  # 16 bit inst
	b	$BB43_10 # 16 bit inst
$BB43_10:                               #   in Loop: Header=BB43_9 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.43)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.43)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_atoi)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoi)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	b	$BB43_9 # 16 bit inst
$BB43_11:
	lw	$2, 28($16)
	beqz	$2, $BB43_13  # 16 bit inst
	b	$BB43_12 # 16 bit inst
$BB43_12:
	li	$2, %hi(__llvm_gcov_ctr.43)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.43)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_atoi)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoi)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 32($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB43_14 # 16 bit inst
$BB43_13:
	li	$2, %hi(__llvm_gcov_ctr.43)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.43)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 32($16)
	neg	$2, $2
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB43_14 # 16 bit inst
$BB43_14:
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
	li	$2, %hi($__profc_atol)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_atol)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_atol)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_atol)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.44)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.44)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.44)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.44)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_atol)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atol)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	btnez	$BB44_8  # 16 bit inst
	b	$BB44_5 # 16 bit inst
$BB44_5:
	li	$2, %hi(__llvm_gcov_ctr.44)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.44)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_atol)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atol)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, 1
	sw	$2, 28($16)
	b	$BB44_7 # 16 bit inst
$BB44_6:
	li	$2, %hi(__llvm_gcov_ctr.44)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.44)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_atol)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atol)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	b	$BB44_7 # 16 bit inst
$BB44_7:
	lw	$2, 36($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 36($16)
	b	$BB44_8 # 16 bit inst
$BB44_8:
	li	$2, %hi($__profc_atol)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atol)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	b	$BB44_9 # 16 bit inst
$BB44_9:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 36($16)
	lb	$4, 0($2)
	jal	isdigit
	nop
	beqz	$2, $BB44_11  # 16 bit inst
	b	$BB44_10 # 16 bit inst
$BB44_10:                               #   in Loop: Header=BB44_9 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.44)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.44)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_atol)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atol)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	b	$BB44_9 # 16 bit inst
$BB44_11:
	lw	$2, 28($16)
	beqz	$2, $BB44_13  # 16 bit inst
	b	$BB44_12 # 16 bit inst
$BB44_12:
	li	$2, %hi(__llvm_gcov_ctr.44)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.44)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_atol)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atol)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 32($16)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB44_14 # 16 bit inst
$BB44_13:
	li	$2, %hi(__llvm_gcov_ctr.44)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.44)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 32($16)
	neg	$2, $2
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB44_14 # 16 bit inst
$BB44_14:
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
	li	$2, %hi($__profc_atoll)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_atoll)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_atoll)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_atoll)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.45)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.45)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.45)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.45)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_atoll)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoll)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	btnez	$BB45_8  # 16 bit inst
	b	$BB45_5 # 16 bit inst
$BB45_5:
	li	$2, %hi(__llvm_gcov_ctr.45)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.45)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_atoll)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoll)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, 1
	sw	$2, 28($16)
	b	$BB45_7 # 16 bit inst
$BB45_6:
	li	$2, %hi(__llvm_gcov_ctr.45)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.45)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_atoll)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoll)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	b	$BB45_7 # 16 bit inst
$BB45_7:
	lw	$2, 44($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 44($16)
	b	$BB45_8 # 16 bit inst
$BB45_8:
	li	$2, %hi($__profc_atoll)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoll)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	b	$BB45_9 # 16 bit inst
$BB45_9:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 44($16)
	lb	$4, 0($2)
	jal	isdigit
	nop
	beqz	$2, $BB45_11  # 16 bit inst
	b	$BB45_10 # 16 bit inst
$BB45_10:                               #   in Loop: Header=BB45_9 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.45)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.45)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_atoll)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoll)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	b	$BB45_9 # 16 bit inst
$BB45_11:
	lw	$2, 28($16)
	beqz	$2, $BB45_13  # 16 bit inst
	b	$BB45_12 # 16 bit inst
$BB45_12:
	li	$2, %hi(__llvm_gcov_ctr.45)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.45)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_atoll)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_atoll)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 36($16)
	lw	$3, 32($16)
	sw	$3, 16($16)                     # 4-byte Folded Spill
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB45_14 # 16 bit inst
$BB45_13:
	li	$2, %hi(__llvm_gcov_ctr.45)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.45)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	b	$BB45_14 # 16 bit inst
$BB45_14:
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
	li	$2, %hi($__profc_bsearch)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_bsearch)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_bsearch)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_bsearch)($5)
	sw	$2, 4($3)
	b	$BB46_1 # 16 bit inst
$BB46_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 32($16)
	beqz	$2, $BB46_9
	b	$BB46_2 # 16 bit inst
$BB46_2:                                #   in Loop: Header=BB46_1 Depth=1
	li	$2, %hi($__profc_bsearch)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_bsearch)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.46)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.46)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_bsearch)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_bsearch)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc_bsearch)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_bsearch)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.46)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.46)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 24($16)
	sw	$2, 44($16)
	b	$BB46_10 # 16 bit inst
$BB46_7:                                #   in Loop: Header=BB46_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.46)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.46)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB46_8 # 16 bit inst
$BB46_8:                                #   in Loop: Header=BB46_1 Depth=1
	b	$BB46_1 # 16 bit inst
$BB46_9:
	li	$2, %hi(__llvm_gcov_ctr.46)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.46)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.46)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.46)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc_bsearch_r)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_bsearch_r)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_bsearch_r)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_bsearch_r)($5)
	sw	$2, 4($3)
	lw	$2, 44($16)
	sw	$2, 32($16)
	lw	$2, 40($16)
	sw	$2, 28($16)
	b	$BB47_1 # 16 bit inst
$BB47_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 28($16)
	beqz	$2, $BB47_8
	b	$BB47_2 # 16 bit inst
$BB47_2:                                #   in Loop: Header=BB47_1 Depth=1
	li	$2, %hi($__profc_bsearch_r)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_bsearch_r)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.47)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.47)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.47)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.47)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_bsearch_r)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_bsearch_r)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 20($16)
	sw	$2, 52($16)
	b	$BB47_9 # 16 bit inst
$BB47_4:                                #   in Loop: Header=BB47_1 Depth=1
	lw	$2, 24($16)
	slti	$2, 1 	# 16 bit inst
	btnez	$BB47_6  # 16 bit inst
	b	$BB47_5 # 16 bit inst
$BB47_5:                                #   in Loop: Header=BB47_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.47)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.47)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_bsearch_r)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_bsearch_r)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.47)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.47)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 28($16)
	sra	$2, $2, 1
	sw	$2, 28($16)
	b	$BB47_1 # 16 bit inst
$BB47_8:
	li	$2, %hi(__llvm_gcov_ctr.47)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.47)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	.frame	$16,24,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 24 # 16 bit inst

	move	$16, $sp
	move	$2, $4
	sw	$2, 4($16)                      # 4-byte Folded Spill
	li	$2, %hi(__llvm_gcov_ctr.48)
	sll	$2, $2, 16
	sw	$2, 0($16)                      # 4-byte Folded Spill
	move	$7, $2
	addiu	$7, %lo(__llvm_gcov_ctr.48)
	lw	$3, 4($7)
	lw	$17, %lo(__llvm_gcov_ctr.48)($2)
	addiu	$17, 1	# 16 bit inst
	sltiu	$17, 1 	# 16 bit inst
	move	$2, $24
	addu	$3, $3, $2
	lw	$2, 0($16)                      # 4-byte Folded Reload
	sw	$17, %lo(__llvm_gcov_ctr.48)($2)
	lw	$2, 4($16)                      # 4-byte Folded Reload
	sw	$3, 4($7)
	sw	$5, 12($16)
	sw	$6, 8($16)
	li	$3, %hi($__profc_div)
	sll	$7, $3, 16
	move	$5, $7
	addiu	$5, %lo($__profc_div)
	lw	$3, 4($5)
	lw	$6, %lo($__profc_div)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$3, $3, $17
	sw	$6, %lo($__profc_div)($7)
	sw	$3, 4($5)
	lw	$3, 12($16)
	lw	$5, 8($16)
	div	$zero, $3, $5
	mflo	$3
	sw	$3, 0($4)
	lw	$3, 12($16)
	lw	$5, 8($16)
	div	$zero, $3, $5
	mfhi	$3
	sw	$3, 4($4)
	move	$sp, $16
	restore	$16, $17, 24 # 16 bit inst

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
	li	$2, %hi($__profc_imaxabs)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_imaxabs)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_imaxabs)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_imaxabs)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.49)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.49)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.49)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.49)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_imaxabs)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_imaxabs)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 20($16)
	lw	$3, 16($16)
	sw	$3, 0($16)                      # 4-byte Folded Spill
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB49_5 # 16 bit inst
$BB49_4:
	li	$2, %hi(__llvm_gcov_ctr.49)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.49)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	.frame	$16,72,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 72 # 16 bit inst

	move	$16, $sp
	sw	$4, 28($16)                     # 4-byte Folded Spill
	sw	$4, 32($16)                     # 4-byte Folded Spill
	lw	$3, 92($16)
	lw	$2, 88($16)
	sw	$2, 24($16)                     # 4-byte Folded Spill
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
	li	$2, %hi(__llvm_gcov_ctr.50)
	sll	$2, $2, 16
	sw	$2, 20($16)                     # 4-byte Folded Spill
	move	$5, $2
	addiu	$5, %lo(__llvm_gcov_ctr.50)
	lw	$4, 4($5)
	lw	$17, %lo(__llvm_gcov_ctr.50)($2)
	addiu	$17, 1	# 16 bit inst
	sltiu	$17, 1 	# 16 bit inst
	move	$2, $24
	addu	$4, $4, $2
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$17, %lo(__llvm_gcov_ctr.50)($2)
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$4, 4($5)
	sw	$7, 52($16)
	sw	$6, 48($16)
	sw	$3, 44($16)
	sw	$2, 40($16)
	li	$2, %hi($__profc_imaxdiv)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_imaxdiv)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_imaxdiv)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_imaxdiv)($5)
	sw	$2, 4($3)
	lw	$4, 48($16)
	lw	$5, 52($16)
	lw	$6, 40($16)
	lw	$7, 44($16)
	jal	__divdi3
	nop
	lw	$4, 28($16)                     # 4-byte Folded Reload
	sw	$3, 4($4)
	sw	$2, 0($4)
	lw	$4, 48($16)
	lw	$5, 52($16)
	lw	$6, 40($16)
	lw	$7, 44($16)
	jal	__moddi3
	nop
	lw	$4, 28($16)                     # 4-byte Folded Reload
	move	$5, $2
	lw	$2, 32($16)                     # 4-byte Folded Reload
	sw	$5, 36($16)                     # 4-byte Folded Spill
	move	$5, $3
	lw	$3, 36($16)                     # 4-byte Folded Reload
	sw	$5, 12($4)
	sw	$3, 8($4)
	move	$sp, $16
	restore	$16, $17, $ra, 72 # 16 bit inst

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
	li	$2, %hi($__profc_labs)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_labs)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_labs)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_labs)($5)
	sw	$2, 4($3)
	lw	$2, 8($16)
	slti	$2, 1 	# 16 bit inst
	btnez	$BB51_2  # 16 bit inst
	b	$BB51_1 # 16 bit inst
$BB51_1:
	li	$2, %hi(__llvm_gcov_ctr.51)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.51)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.51)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.51)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_labs)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_labs)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 8($16)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB51_3 # 16 bit inst
$BB51_2:
	li	$2, %hi(__llvm_gcov_ctr.51)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.51)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	.frame	$16,24,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 24 # 16 bit inst

	move	$16, $sp
	move	$2, $4
	sw	$2, 4($16)                      # 4-byte Folded Spill
	li	$2, %hi(__llvm_gcov_ctr.52)
	sll	$2, $2, 16
	sw	$2, 0($16)                      # 4-byte Folded Spill
	move	$7, $2
	addiu	$7, %lo(__llvm_gcov_ctr.52)
	lw	$3, 4($7)
	lw	$17, %lo(__llvm_gcov_ctr.52)($2)
	addiu	$17, 1	# 16 bit inst
	sltiu	$17, 1 	# 16 bit inst
	move	$2, $24
	addu	$3, $3, $2
	lw	$2, 0($16)                      # 4-byte Folded Reload
	sw	$17, %lo(__llvm_gcov_ctr.52)($2)
	lw	$2, 4($16)                      # 4-byte Folded Reload
	sw	$3, 4($7)
	sw	$5, 12($16)
	sw	$6, 8($16)
	li	$3, %hi($__profc_ldiv)
	sll	$7, $3, 16
	move	$5, $7
	addiu	$5, %lo($__profc_ldiv)
	lw	$3, 4($5)
	lw	$6, %lo($__profc_ldiv)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$3, $3, $17
	sw	$6, %lo($__profc_ldiv)($7)
	sw	$3, 4($5)
	lw	$3, 12($16)
	lw	$5, 8($16)
	div	$zero, $3, $5
	mflo	$3
	sw	$3, 0($4)
	lw	$3, 12($16)
	lw	$5, 8($16)
	div	$zero, $3, $5
	mfhi	$3
	sw	$3, 4($4)
	move	$sp, $16
	restore	$16, $17, 24 # 16 bit inst

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
	li	$2, %hi($__profc_llabs)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_llabs)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_llabs)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_llabs)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.53)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.53)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.53)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.53)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_llabs)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_llabs)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 20($16)
	lw	$3, 16($16)
	sw	$3, 0($16)                      # 4-byte Folded Spill
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB53_5 # 16 bit inst
$BB53_4:
	li	$2, %hi(__llvm_gcov_ctr.53)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.53)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	.frame	$16,72,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 72 # 16 bit inst

	move	$16, $sp
	sw	$4, 28($16)                     # 4-byte Folded Spill
	sw	$4, 32($16)                     # 4-byte Folded Spill
	lw	$3, 92($16)
	lw	$2, 88($16)
	sw	$2, 24($16)                     # 4-byte Folded Spill
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
	li	$2, %hi(__llvm_gcov_ctr.54)
	sll	$2, $2, 16
	sw	$2, 20($16)                     # 4-byte Folded Spill
	move	$5, $2
	addiu	$5, %lo(__llvm_gcov_ctr.54)
	lw	$4, 4($5)
	lw	$17, %lo(__llvm_gcov_ctr.54)($2)
	addiu	$17, 1	# 16 bit inst
	sltiu	$17, 1 	# 16 bit inst
	move	$2, $24
	addu	$4, $4, $2
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$17, %lo(__llvm_gcov_ctr.54)($2)
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$4, 4($5)
	sw	$7, 52($16)
	sw	$6, 48($16)
	sw	$3, 44($16)
	sw	$2, 40($16)
	li	$2, %hi($__profc_lldiv)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_lldiv)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_lldiv)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_lldiv)($5)
	sw	$2, 4($3)
	lw	$4, 48($16)
	lw	$5, 52($16)
	lw	$6, 40($16)
	lw	$7, 44($16)
	jal	__divdi3
	nop
	lw	$4, 28($16)                     # 4-byte Folded Reload
	sw	$3, 4($4)
	sw	$2, 0($4)
	lw	$4, 48($16)
	lw	$5, 52($16)
	lw	$6, 40($16)
	lw	$7, 44($16)
	jal	__moddi3
	nop
	lw	$4, 28($16)                     # 4-byte Folded Reload
	move	$5, $2
	lw	$2, 32($16)                     # 4-byte Folded Reload
	sw	$5, 36($16)                     # 4-byte Folded Spill
	move	$5, $3
	lw	$3, 36($16)                     # 4-byte Folded Reload
	sw	$5, 12($4)
	sw	$3, 8($4)
	move	$sp, $16
	restore	$16, $17, $ra, 72 # 16 bit inst

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
	li	$2, %hi($__profc_wcschr)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_wcschr)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_wcschr)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_wcschr)($5)
	sw	$2, 4($3)
	b	$BB55_1 # 16 bit inst
$BB55_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	lw	$2, 0($2)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB55_4  # 16 bit inst
	b	$BB55_2 # 16 bit inst
$BB55_2:                                #   in Loop: Header=BB55_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.55)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.55)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.55)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.55)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_wcschr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcschr)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 16($16)
	lw	$3, 0($2)
	lw	$4, 12($16)
	move	$5, $3
	xor	$5, $4
	li	$2, 0
	sltu	$2, $5
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	cmp	$3, $4
	sw	$2, 8($16)                      # 4-byte Folded Spill
	bteqz	$BB55_4  # 16 bit inst
	b	$BB55_3 # 16 bit inst
$BB55_3:                                #   in Loop: Header=BB55_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.55)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.55)
	lw	$3, 12($4)
	lw	$5, 8($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 8($4)
	sw	$3, 12($4)
	li	$3, %hi($__profc_wcschr)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_wcschr)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB55_4 # 16 bit inst
$BB55_4:                                #   in Loop: Header=BB55_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB55_7  # 16 bit inst
	b	$BB55_5 # 16 bit inst
$BB55_5:                                #   in Loop: Header=BB55_1 Depth=1
	li	$2, %hi($__profc_wcschr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcschr)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB55_6 # 16 bit inst
$BB55_6:                                #   in Loop: Header=BB55_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.55)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.55)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 16($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 16($16)
	b	$BB55_1 # 16 bit inst
$BB55_7:
	lw	$2, 16($16)
	lw	$2, 0($2)
	beqz	$2, $BB55_9  # 16 bit inst
	b	$BB55_8 # 16 bit inst
$BB55_8:
	li	$2, %hi(__llvm_gcov_ctr.55)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.55)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_wcschr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcschr)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 16($16)
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB55_10 # 16 bit inst
$BB55_9:
	li	$2, %hi(__llvm_gcov_ctr.55)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.55)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, 0
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB55_10 # 16 bit inst
$BB55_10:
	lw	$2, 0($16)                      # 4-byte Folded Reload
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
	li	$2, %hi($__profc_wcscmp)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_wcscmp)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_wcscmp)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_wcscmp)($5)
	sw	$2, 4($3)
	b	$BB56_1 # 16 bit inst
$BB56_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	lw	$3, 0($2)
	lw	$2, 12($16)
	lw	$4, 0($2)
	li	$2, 0
	cmp	$3, $4
	sw	$2, 8($16)                      # 4-byte Folded Spill
	btnez	$BB56_6
	b	$BB56_2 # 16 bit inst
$BB56_2:                                #   in Loop: Header=BB56_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.56)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.56)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.56)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.56)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_wcscmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcscmp)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 16($16)
	lw	$2, 0($2)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB56_6  # 16 bit inst
	b	$BB56_3 # 16 bit inst
$BB56_3:                                #   in Loop: Header=BB56_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.56)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.56)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_wcscmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcscmp)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	b	$BB56_4 # 16 bit inst
$BB56_4:                                #   in Loop: Header=BB56_1 Depth=1
	li	$2, %hi($__profc_wcscmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcscmp)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 12($16)
	lw	$2, 0($2)
	li	$3, 0
	move	$4, $2
	xor	$4, $3
	sltu	$3, $4
	move	$3, $24
	sw	$3, 4($16)                      # 4-byte Folded Spill
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB56_6  # 16 bit inst
	b	$BB56_5 # 16 bit inst
$BB56_5:                                #   in Loop: Header=BB56_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.56)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.56)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_wcscmp)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_wcscmp)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB56_6 # 16 bit inst
$BB56_6:                                #   in Loop: Header=BB56_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB56_9  # 16 bit inst
	b	$BB56_7 # 16 bit inst
$BB56_7:                                #   in Loop: Header=BB56_1 Depth=1
	li	$2, %hi($__profc_wcscmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcscmp)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB56_8 # 16 bit inst
$BB56_8:                                #   in Loop: Header=BB56_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.56)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.56)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 16($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 16($16)
	lw	$2, 12($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 12($16)
	b	$BB56_1 # 16 bit inst
$BB56_9:
	lw	$2, 16($16)
	lw	$2, 0($2)
	lw	$3, 12($16)
	lw	$3, 0($3)
	slt	$2, $3
	bteqz	$BB56_11  # 16 bit inst
	b	$BB56_10 # 16 bit inst
$BB56_10:
	li	$2, %hi(__llvm_gcov_ctr.56)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.56)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_wcscmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcscmp)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	move	$2, $zero
	addiu	$2, -1
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB56_12 # 16 bit inst
$BB56_11:
	li	$2, %hi(__llvm_gcov_ctr.56)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.56)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 16($16)
	lw	$3, 0($2)
	lw	$2, 12($16)
	lw	$2, 0($2)
	slt	$2, $3
	move	$2, $24
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB56_12 # 16 bit inst
$BB56_12:
	lw	$2, 0($16)                      # 4-byte Folded Reload
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
	.frame	$16,24,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 24 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.57)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.57)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.57)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.57)($7)
	sw	$2, 4($3)
	sw	$4, 12($16)
	sw	$5, 8($16)
	li	$2, %hi($__profc_wcscpy)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_wcscpy)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_wcscpy)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_wcscpy)($5)
	sw	$2, 4($3)
	lw	$2, 12($16)
	sw	$2, 4($16)
	b	$BB57_1 # 16 bit inst
$BB57_1:                                # =>This Inner Loop Header: Depth=1
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
	beqz	$2, $BB57_3  # 16 bit inst
	b	$BB57_2 # 16 bit inst
$BB57_2:                                #   in Loop: Header=BB57_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.57)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.57)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_wcscpy)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcscpy)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB57_1 # 16 bit inst
$BB57_3:
	lw	$2, 4($16)
	move	$sp, $16
	restore	$16, $17, 24 # 16 bit inst

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
	li	$2, %hi(__llvm_gcov_ctr.58)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.58)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.58)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.58)($6)
	sw	$2, 4($3)
	sw	$4, 8($16)
	li	$2, %hi($__profc_wcslen)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_wcslen)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_wcslen)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_wcslen)($5)
	sw	$2, 4($3)
	lw	$2, 8($16)
	sw	$2, 4($16)
	b	$BB58_1 # 16 bit inst
$BB58_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	lw	$2, 0($2)
	beqz	$2, $BB58_4  # 16 bit inst
	b	$BB58_2 # 16 bit inst
$BB58_2:                                #   in Loop: Header=BB58_1 Depth=1
	li	$2, %hi($__profc_wcslen)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcslen)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB58_3 # 16 bit inst
$BB58_3:                                #   in Loop: Header=BB58_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.58)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.58)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi($__profc_wcsncmp)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_wcsncmp)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_wcsncmp)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_wcsncmp)($5)
	sw	$2, 4($3)
	b	$BB59_1 # 16 bit inst
$BB59_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	li	$3, 0
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB59_8
	b	$BB59_2 # 16 bit inst
$BB59_2:                                #   in Loop: Header=BB59_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.59)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.59)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.59)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.59)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_wcsncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcsncmp)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 24($16)
	lw	$3, 0($2)
	lw	$2, 20($16)
	lw	$4, 0($2)
	li	$2, 0
	cmp	$3, $4
	sw	$2, 12($16)                     # 4-byte Folded Spill
	btnez	$BB59_8
	b	$BB59_3 # 16 bit inst
$BB59_3:                                #   in Loop: Header=BB59_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.59)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.59)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_wcsncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcsncmp)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	b	$BB59_4 # 16 bit inst
$BB59_4:                                #   in Loop: Header=BB59_1 Depth=1
	li	$2, %hi($__profc_wcsncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcsncmp)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 24($16)
	lw	$2, 0($2)
	li	$3, 0
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB59_8  # 16 bit inst
	b	$BB59_5 # 16 bit inst
$BB59_5:                                #   in Loop: Header=BB59_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.59)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.59)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_wcsncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcsncmp)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	b	$BB59_6 # 16 bit inst
$BB59_6:                                #   in Loop: Header=BB59_1 Depth=1
	li	$2, %hi($__profc_wcsncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcsncmp)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 20($16)
	lw	$2, 0($2)
	li	$3, 0
	move	$4, $2
	xor	$4, $3
	sltu	$3, $4
	move	$3, $24
	sw	$3, 8($16)                      # 4-byte Folded Spill
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB59_8  # 16 bit inst
	b	$BB59_7 # 16 bit inst
$BB59_7:                                #   in Loop: Header=BB59_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.59)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.59)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	li	$3, %hi($__profc_wcsncmp)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_wcsncmp)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 12($16)                     # 4-byte Folded Spill
	b	$BB59_8 # 16 bit inst
$BB59_8:                                #   in Loop: Header=BB59_1 Depth=1
	lw	$2, 12($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB59_11  # 16 bit inst
	b	$BB59_9 # 16 bit inst
$BB59_9:                                #   in Loop: Header=BB59_1 Depth=1
	li	$2, %hi($__profc_wcsncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcsncmp)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB59_10 # 16 bit inst
$BB59_10:                               #   in Loop: Header=BB59_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.59)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.59)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
$BB59_11:
	lw	$2, 16($16)
	beqz	$2, $BB59_16  # 16 bit inst
	b	$BB59_12 # 16 bit inst
$BB59_12:
	li	$2, %hi($__profc_wcsncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcsncmp)
	lw	$2, 68($3)
	lw	$4, 64($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 64($3)
	sw	$2, 68($3)
	lw	$2, 24($16)
	lw	$2, 0($2)
	lw	$3, 20($16)
	lw	$3, 0($3)
	slt	$2, $3
	bteqz	$BB59_14  # 16 bit inst
	b	$BB59_13 # 16 bit inst
$BB59_13:
	li	$2, %hi(__llvm_gcov_ctr.59)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.59)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	li	$2, %hi($__profc_wcsncmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wcsncmp)
	lw	$2, 76($3)
	lw	$4, 72($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 72($3)
	sw	$2, 76($3)
	move	$2, $zero
	addiu	$2, -1
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB59_15 # 16 bit inst
$BB59_14:
	li	$2, %hi(__llvm_gcov_ctr.59)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.59)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 24($16)
	lw	$3, 0($2)
	lw	$2, 20($16)
	lw	$2, 0($2)
	slt	$2, $3
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB59_15 # 16 bit inst
$BB59_15:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB59_17 # 16 bit inst
$BB59_16:
	li	$2, %hi(__llvm_gcov_ctr.59)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.59)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	li	$2, 0
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB59_17 # 16 bit inst
$BB59_17:
	lw	$2, 0($16)                      # 4-byte Folded Reload
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
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
	sw	$4, 24($16)
	sw	$5, 20($16)
	sw	$6, 16($16)
	li	$2, %hi($__profc_wmemchr)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_wmemchr)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_wmemchr)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_wmemchr)($5)
	sw	$2, 4($3)
	b	$BB60_1 # 16 bit inst
$BB60_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	li	$3, 0
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB60_4  # 16 bit inst
	b	$BB60_2 # 16 bit inst
$BB60_2:                                #   in Loop: Header=BB60_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.60)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.60)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.60)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.60)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_wmemchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemchr)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 24($16)
	lw	$3, 0($2)
	lw	$4, 20($16)
	move	$5, $3
	xor	$5, $4
	li	$2, 0
	sltu	$2, $5
	move	$2, $24
	sw	$2, 8($16)                      # 4-byte Folded Spill
	cmp	$3, $4
	sw	$2, 12($16)                     # 4-byte Folded Spill
	bteqz	$BB60_4  # 16 bit inst
	b	$BB60_3 # 16 bit inst
$BB60_3:                                #   in Loop: Header=BB60_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.60)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.60)
	lw	$3, 12($4)
	lw	$5, 8($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 8($4)
	sw	$3, 12($4)
	li	$3, %hi($__profc_wmemchr)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_wmemchr)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 12($16)                     # 4-byte Folded Spill
	b	$BB60_4 # 16 bit inst
$BB60_4:                                #   in Loop: Header=BB60_1 Depth=1
	lw	$2, 12($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB60_7  # 16 bit inst
	b	$BB60_5 # 16 bit inst
$BB60_5:                                #   in Loop: Header=BB60_1 Depth=1
	li	$2, %hi($__profc_wmemchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemchr)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB60_6 # 16 bit inst
$BB60_6:                                #   in Loop: Header=BB60_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.60)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.60)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 16($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 16($16)
	lw	$2, 24($16)
	addiu	$2, 4	# 16 bit inst
	sw	$2, 24($16)
	b	$BB60_1 # 16 bit inst
$BB60_7:
	lw	$2, 16($16)
	beqz	$2, $BB60_9  # 16 bit inst
	b	$BB60_8 # 16 bit inst
$BB60_8:
	li	$2, %hi(__llvm_gcov_ctr.60)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.60)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_wmemchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemchr)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 24($16)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB60_10 # 16 bit inst
$BB60_9:
	li	$2, %hi(__llvm_gcov_ctr.60)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.60)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, 0
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB60_10 # 16 bit inst
$BB60_10:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

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
	li	$2, %hi($__profc_wmemcmp)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_wmemcmp)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_wmemcmp)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_wmemcmp)($5)
	sw	$2, 4($3)
	b	$BB61_1 # 16 bit inst
$BB61_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	li	$3, 0
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB61_4  # 16 bit inst
	b	$BB61_2 # 16 bit inst
$BB61_2:                                #   in Loop: Header=BB61_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.61)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.61)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.61)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.61)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_wmemcmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemcmp)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 24($16)
	lw	$3, 0($2)
	lw	$2, 20($16)
	lw	$4, 0($2)
	move	$2, $3
	xor	$2, $4
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 8($16)                      # 4-byte Folded Spill
	cmp	$3, $4
	sw	$2, 12($16)                     # 4-byte Folded Spill
	btnez	$BB61_4  # 16 bit inst
	b	$BB61_3 # 16 bit inst
$BB61_3:                                #   in Loop: Header=BB61_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.61)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.61)
	lw	$3, 12($4)
	lw	$5, 8($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 8($4)
	sw	$3, 12($4)
	li	$3, %hi($__profc_wmemcmp)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_wmemcmp)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 12($16)                     # 4-byte Folded Spill
	b	$BB61_4 # 16 bit inst
$BB61_4:                                #   in Loop: Header=BB61_1 Depth=1
	lw	$2, 12($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB61_7  # 16 bit inst
	b	$BB61_5 # 16 bit inst
$BB61_5:                                #   in Loop: Header=BB61_1 Depth=1
	li	$2, %hi($__profc_wmemcmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemcmp)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB61_6 # 16 bit inst
$BB61_6:                                #   in Loop: Header=BB61_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.61)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.61)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
$BB61_7:
	lw	$2, 16($16)
	beqz	$2, $BB61_12  # 16 bit inst
	b	$BB61_8 # 16 bit inst
$BB61_8:
	li	$2, %hi($__profc_wmemcmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemcmp)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 24($16)
	lw	$2, 0($2)
	lw	$3, 20($16)
	lw	$3, 0($3)
	slt	$2, $3
	bteqz	$BB61_10  # 16 bit inst
	b	$BB61_9 # 16 bit inst
$BB61_9:
	li	$2, %hi(__llvm_gcov_ctr.61)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.61)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_wmemcmp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemcmp)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	move	$2, $zero
	addiu	$2, -1
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB61_11 # 16 bit inst
$BB61_10:
	li	$2, %hi(__llvm_gcov_ctr.61)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.61)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 24($16)
	lw	$3, 0($2)
	lw	$2, 20($16)
	lw	$2, 0($2)
	slt	$2, $3
	move	$2, $24
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB61_11 # 16 bit inst
$BB61_11:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB61_13 # 16 bit inst
$BB61_12:
	li	$2, %hi(__llvm_gcov_ctr.61)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.61)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	li	$2, 0
	sw	$2, 0($16)                      # 4-byte Folded Spill
	b	$BB61_13 # 16 bit inst
$BB61_13:
	lw	$2, 0($16)                      # 4-byte Folded Reload
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
	.frame	$16,32,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 32 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.62)
	sll	$17, $2, 16
	move	$2, $17
	addiu	$2, %lo(__llvm_gcov_ctr.62)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$7, %lo(__llvm_gcov_ctr.62)($17)
	addiu	$7, 1	# 16 bit inst
	sltiu	$7, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 4($16)                      # 4-byte Folded Reload
	sw	$7, %lo(__llvm_gcov_ctr.62)($17)
	sw	$2, 4($3)
	sw	$4, 20($16)
	sw	$5, 16($16)
	sw	$6, 12($16)
	li	$2, %hi($__profc_wmemcpy)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_wmemcpy)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_wmemcpy)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_wmemcpy)($5)
	sw	$2, 4($3)
	lw	$2, 20($16)
	sw	$2, 8($16)
	b	$BB62_1 # 16 bit inst
$BB62_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 12($16)
	beqz	$2, $BB62_3  # 16 bit inst
	b	$BB62_2 # 16 bit inst
$BB62_2:                                #   in Loop: Header=BB62_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.62)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.62)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_wmemcpy)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemcpy)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 16($16)
	move	$3, $2
	addiu	$3, 4	# 16 bit inst
	sw	$3, 16($16)
	lw	$2, 0($2)
	lw	$3, 20($16)
	move	$4, $3
	addiu	$4, 4	# 16 bit inst
	sw	$4, 20($16)
	sw	$2, 0($3)
	b	$BB62_1 # 16 bit inst
$BB62_3:
	lw	$2, 8($16)
	move	$sp, $16
	restore	$16, $17, 32 # 16 bit inst

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
	li	$2, %hi($__profc_wmemmove)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_wmemmove)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_wmemmove)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_wmemmove)($5)
	sw	$2, 4($3)
	lw	$2, 12($16)
	sw	$2, 0($16)
	lw	$2, 12($16)
	lw	$3, 8($16)
	cmp	$2, $3
	btnez	$BB63_2  # 16 bit inst
	b	$BB63_1 # 16 bit inst
$BB63_1:
	li	$2, %hi(__llvm_gcov_ctr.63)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.63)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.63)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.63)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_wmemmove)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemmove)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.63)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.63)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_wmemmove)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemmove)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	b	$BB63_4 # 16 bit inst
$BB63_4:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 4($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 4($16)
	beqz	$2, $BB63_6  # 16 bit inst
	b	$BB63_5 # 16 bit inst
$BB63_5:                                #   in Loop: Header=BB63_4 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.63)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.63)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_wmemmove)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemmove)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.63)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.63)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_wmemmove)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemmove)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
	li	$2, %hi(__llvm_gcov_ctr.63)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.63)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
	.frame	$16,32,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 32 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.64)
	sll	$17, $2, 16
	move	$2, $17
	addiu	$2, %lo(__llvm_gcov_ctr.64)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$7, %lo(__llvm_gcov_ctr.64)($17)
	addiu	$7, 1	# 16 bit inst
	sltiu	$7, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 4($16)                      # 4-byte Folded Reload
	sw	$7, %lo(__llvm_gcov_ctr.64)($17)
	sw	$2, 4($3)
	sw	$4, 20($16)
	sw	$5, 16($16)
	sw	$6, 12($16)
	li	$2, %hi($__profc_wmemset)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_wmemset)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_wmemset)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_wmemset)($5)
	sw	$2, 4($3)
	lw	$2, 20($16)
	sw	$2, 8($16)
	b	$BB64_1 # 16 bit inst
$BB64_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 12($16)
	beqz	$2, $BB64_3  # 16 bit inst
	b	$BB64_2 # 16 bit inst
$BB64_2:                                #   in Loop: Header=BB64_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.64)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.64)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_wmemset)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_wmemset)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 16($16)
	lw	$3, 20($16)
	move	$4, $3
	addiu	$4, 4	# 16 bit inst
	sw	$4, 20($16)
	sw	$2, 0($3)
	b	$BB64_1 # 16 bit inst
$BB64_3:
	lw	$2, 8($16)
	move	$sp, $16
	restore	$16, $17, 32 # 16 bit inst

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
	li	$2, %hi($__profc_bcopy)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_bcopy)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_bcopy)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_bcopy)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.65)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.65)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.65)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.65)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_bcopy)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_bcopy)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi($__profc_bcopy)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_bcopy)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.65)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.65)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi($__profc_bcopy)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_bcopy)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB65_8 # 16 bit inst
$BB65_8:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB65_11  # 16 bit inst
	b	$BB65_9 # 16 bit inst
$BB65_9:                                #   in Loop: Header=BB65_8 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.65)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.65)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_bcopy)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_bcopy)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
	li	$2, %hi(__llvm_gcov_ctr.65)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.65)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB65_12 # 16 bit inst
$BB65_12:
	li	$2, %hi(__llvm_gcov_ctr.65)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.65)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
	.frame	$16,104,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 104 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.66)
	sll	$17, $2, 16
	move	$2, $17
	addiu	$2, %lo(__llvm_gcov_ctr.66)
	sw	$2, 48($16)                     # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$7, %lo(__llvm_gcov_ctr.66)($17)
	addiu	$7, 1	# 16 bit inst
	sltiu	$7, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 48($16)                     # 4-byte Folded Reload
	sw	$7, %lo(__llvm_gcov_ctr.66)($17)
	sw	$2, 4($3)
	sw	$5, 92($16)
	sw	$4, 88($16)
	sw	$6, 84($16)
	li	$2, %hi($__profc_rotl64)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_rotl64)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_rotl64)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_rotl64)($5)
	sw	$2, 4($3)
	lw	$2, 92($16)
	sw	$2, 52($16)                     # 4-byte Folded Spill
	lw	$3, 88($16)
	sw	$3, 56($16)                     # 4-byte Folded Spill
	lw	$4, 84($16)
	sw	$4, 60($16)                     # 4-byte Folded Spill
	li	$5, 32
	sw	$5, 64($16)                     # 4-byte Folded Spill
	move	$2, $4
	and	$2, $5
	sw	$2, 68($16)                     # 4-byte Folded Spill
	sllv	$3, $4
	sw	$3, 72($16)                     # 4-byte Folded Spill
	li	$3, 0
	sw	$3, 76($16)                     # 4-byte Folded Spill
	sw	$3, 80($16)                     # 4-byte Folded Spill
	bnez	$2, $BB66_2  # 16 bit inst
# %bb.1:
	lw	$2, 72($16)                     # 4-byte Folded Reload
	sw	$2, 80($16)                     # 4-byte Folded Spill
$BB66_2:
	lw	$2, 68($16)                     # 4-byte Folded Reload
	lw	$3, 72($16)                     # 4-byte Folded Reload
	lw	$5, 56($16)                     # 4-byte Folded Reload
	lw	$6, 60($16)                     # 4-byte Folded Reload
	lw	$4, 52($16)                     # 4-byte Folded Reload
	lw	$7, 80($16)                     # 4-byte Folded Reload
	sw	$7, 32($16)                     # 4-byte Folded Spill
	sllv	$4, $6
	li	$7, 31
	sw	$7, 36($16)                     # 4-byte Folded Spill
	xor	$6, $7
	srl	$5, $5, 1
	srlv	$5, $6
	or	$4, $5
	sw	$4, 40($16)                     # 4-byte Folded Spill
	sw	$3, 44($16)                     # 4-byte Folded Spill
	bnez	$2, $BB66_4  # 16 bit inst
# %bb.3:
	lw	$2, 40($16)                     # 4-byte Folded Reload
	sw	$2, 44($16)                     # 4-byte Folded Spill
$BB66_4:
	lw	$3, 52($16)                     # 4-byte Folded Reload
	lw	$5, 64($16)                     # 4-byte Folded Reload
	lw	$2, 36($16)                     # 4-byte Folded Reload
	lw	$6, 56($16)                     # 4-byte Folded Reload
	lw	$7, 60($16)                     # 4-byte Folded Reload
	lw	$4, 44($16)                     # 4-byte Folded Reload
	sw	$4, 12($16)                     # 4-byte Folded Spill
	li	$4, 64
	subu	$4, $4, $7
	srlv	$6, $4
	move	$7, $4
	xor	$7, $2
	sll	$2, $3, 1
	sllv	$2, $7
	or	$2, $6
	sw	$2, 16($16)                     # 4-byte Folded Spill
	move	$2, $4
	and	$2, $5
	sw	$2, 20($16)                     # 4-byte Folded Spill
	srlv	$3, $4
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$3, 28($16)                     # 4-byte Folded Spill
	bnez	$2, $BB66_6  # 16 bit inst
# %bb.5:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	sw	$2, 28($16)                     # 4-byte Folded Spill
$BB66_6:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	lw	$3, 76($16)                     # 4-byte Folded Reload
	lw	$4, 28($16)                     # 4-byte Folded Reload
	sw	$4, 4($16)                      # 4-byte Folded Spill
	sw	$3, 8($16)                      # 4-byte Folded Spill
	bnez	$2, $BB66_8  # 16 bit inst
# %bb.7:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$2, 8($16)                      # 4-byte Folded Spill
$BB66_8:
	lw	$4, 4($16)                      # 4-byte Folded Reload
	lw	$2, 32($16)                     # 4-byte Folded Reload
	lw	$3, 12($16)                     # 4-byte Folded Reload
	lw	$5, 8($16)                      # 4-byte Folded Reload
	or	$3, $5
	or	$2, $4
	move	$sp, $16
	restore	$16, $17, 104 # 16 bit inst

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
	.frame	$16,104,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 104 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.67)
	sll	$17, $2, 16
	move	$2, $17
	addiu	$2, %lo(__llvm_gcov_ctr.67)
	sw	$2, 48($16)                     # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$7, %lo(__llvm_gcov_ctr.67)($17)
	addiu	$7, 1	# 16 bit inst
	sltiu	$7, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 48($16)                     # 4-byte Folded Reload
	sw	$7, %lo(__llvm_gcov_ctr.67)($17)
	sw	$2, 4($3)
	sw	$5, 92($16)
	sw	$4, 88($16)
	sw	$6, 84($16)
	li	$2, %hi($__profc_rotr64)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_rotr64)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_rotr64)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_rotr64)($5)
	sw	$2, 4($3)
	lw	$2, 88($16)
	sw	$2, 52($16)                     # 4-byte Folded Spill
	lw	$3, 92($16)
	sw	$3, 56($16)                     # 4-byte Folded Spill
	lw	$4, 84($16)
	sw	$4, 60($16)                     # 4-byte Folded Spill
	li	$5, 32
	sw	$5, 64($16)                     # 4-byte Folded Spill
	move	$2, $4
	and	$2, $5
	sw	$2, 68($16)                     # 4-byte Folded Spill
	srlv	$3, $4
	sw	$3, 72($16)                     # 4-byte Folded Spill
	li	$3, 0
	sw	$3, 76($16)                     # 4-byte Folded Spill
	sw	$3, 80($16)                     # 4-byte Folded Spill
	bnez	$2, $BB67_2  # 16 bit inst
# %bb.1:
	lw	$2, 72($16)                     # 4-byte Folded Reload
	sw	$2, 80($16)                     # 4-byte Folded Spill
$BB67_2:
	lw	$2, 68($16)                     # 4-byte Folded Reload
	lw	$3, 72($16)                     # 4-byte Folded Reload
	lw	$4, 56($16)                     # 4-byte Folded Reload
	lw	$6, 60($16)                     # 4-byte Folded Reload
	lw	$5, 52($16)                     # 4-byte Folded Reload
	lw	$7, 80($16)                     # 4-byte Folded Reload
	sw	$7, 32($16)                     # 4-byte Folded Spill
	srlv	$5, $6
	li	$7, 31
	sw	$7, 36($16)                     # 4-byte Folded Spill
	xor	$6, $7
	sll	$4, $4, 1
	sllv	$4, $6
	or	$4, $5
	sw	$4, 40($16)                     # 4-byte Folded Spill
	sw	$3, 44($16)                     # 4-byte Folded Spill
	bnez	$2, $BB67_4  # 16 bit inst
# %bb.3:
	lw	$2, 40($16)                     # 4-byte Folded Reload
	sw	$2, 44($16)                     # 4-byte Folded Spill
$BB67_4:
	lw	$3, 52($16)                     # 4-byte Folded Reload
	lw	$5, 64($16)                     # 4-byte Folded Reload
	lw	$6, 36($16)                     # 4-byte Folded Reload
	lw	$2, 56($16)                     # 4-byte Folded Reload
	lw	$7, 60($16)                     # 4-byte Folded Reload
	lw	$4, 44($16)                     # 4-byte Folded Reload
	sw	$4, 12($16)                     # 4-byte Folded Spill
	li	$4, 64
	subu	$4, $4, $7
	sllv	$2, $4
	move	$7, $4
	xor	$7, $6
	srl	$6, $3, 1
	srlv	$6, $7
	or	$2, $6
	sw	$2, 16($16)                     # 4-byte Folded Spill
	move	$2, $4
	and	$2, $5
	sw	$2, 20($16)                     # 4-byte Folded Spill
	sllv	$3, $4
	sw	$3, 24($16)                     # 4-byte Folded Spill
	sw	$3, 28($16)                     # 4-byte Folded Spill
	bnez	$2, $BB67_6  # 16 bit inst
# %bb.5:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	sw	$2, 28($16)                     # 4-byte Folded Spill
$BB67_6:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	lw	$3, 76($16)                     # 4-byte Folded Reload
	lw	$4, 28($16)                     # 4-byte Folded Reload
	sw	$4, 4($16)                      # 4-byte Folded Spill
	sw	$3, 8($16)                      # 4-byte Folded Spill
	bnez	$2, $BB67_8  # 16 bit inst
# %bb.7:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$2, 8($16)                      # 4-byte Folded Spill
$BB67_8:
	lw	$4, 4($16)                      # 4-byte Folded Reload
	lw	$3, 32($16)                     # 4-byte Folded Reload
	lw	$2, 12($16)                     # 4-byte Folded Reload
	lw	$5, 8($16)                      # 4-byte Folded Reload
	or	$2, $5
	or	$3, $4
	move	$sp, $16
	restore	$16, $17, 104 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.68)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.68)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.68)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.68)($7)
	sw	$2, 4($3)
	sw	$4, 4($16)
	sw	$5, 0($16)
	li	$2, %hi($__profc_rotl32)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_rotl32)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_rotl32)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_rotl32)($5)
	sw	$2, 4($3)
	lw	$3, 4($16)
	lw	$5, 0($16)
	move	$2, $3
	sllv	$2, $5
	li	$4, 32
	subu	$4, $4, $5
	srlv	$3, $4
	or	$2, $3
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.69)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.69)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.69)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.69)($7)
	sw	$2, 4($3)
	sw	$4, 4($16)
	sw	$5, 0($16)
	li	$2, %hi($__profc_rotr32)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_rotr32)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_rotr32)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_rotr32)($5)
	sw	$2, 4($3)
	lw	$3, 4($16)
	lw	$5, 0($16)
	move	$2, $3
	srlv	$2, $5
	li	$4, 32
	subu	$4, $4, $5
	sllv	$3, $4
	or	$2, $3
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.70)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.70)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.70)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.70)($7)
	sw	$2, 4($3)
	sw	$4, 4($16)
	sw	$5, 0($16)
	li	$2, %hi($__profc_rotl_sz)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_rotl_sz)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_rotl_sz)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_rotl_sz)($5)
	sw	$2, 4($3)
	lw	$3, 4($16)
	lw	$5, 0($16)
	move	$2, $3
	sllv	$2, $5
	li	$4, 32
	subu	$4, $4, $5
	srlv	$3, $4
	or	$2, $3
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.71)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.71)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.71)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.71)($7)
	sw	$2, 4($3)
	sw	$4, 4($16)
	sw	$5, 0($16)
	li	$2, %hi($__profc_rotr_sz)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_rotr_sz)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_rotr_sz)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_rotr_sz)($5)
	sw	$2, 4($3)
	lw	$3, 4($16)
	lw	$5, 0($16)
	move	$2, $3
	srlv	$2, $5
	li	$4, 32
	subu	$4, $4, $5
	sllv	$3, $4
	or	$2, $3
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.72)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.72)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.72)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.72)($7)
	sw	$2, 4($3)
	addiu	$2, $16, 6
	sh	$4, 0($2)
	sw	$5, 0($16)
	li	$3, %hi($__profc_rotl16)
	sll	$6, $3, 16
	move	$4, $6
	addiu	$4, %lo($__profc_rotl16)
	lw	$3, 4($4)
	lw	$5, %lo($__profc_rotl16)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$3, $3, $7
	sw	$5, %lo($__profc_rotl16)($6)
	sw	$3, 4($4)
	lhu	$3, 0($2)
	lw	$5, 0($16)
	move	$2, $3
	sllv	$2, $5
	li	$4, 16
	subu	$4, $4, $5
	srlv	$3, $4
	or	$2, $3
	li	$3, 65535
	and	$2, $3
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.73)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.73)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.73)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.73)($7)
	sw	$2, 4($3)
	addiu	$2, $16, 6
	sh	$4, 0($2)
	sw	$5, 0($16)
	li	$3, %hi($__profc_rotr16)
	sll	$6, $3, 16
	move	$4, $6
	addiu	$4, %lo($__profc_rotr16)
	lw	$3, 4($4)
	lw	$5, %lo($__profc_rotr16)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$3, $3, $7
	sw	$5, %lo($__profc_rotr16)($6)
	sw	$3, 4($4)
	lhu	$3, 0($2)
	lw	$5, 0($16)
	move	$2, $3
	srlv	$2, $5
	li	$4, 16
	subu	$4, $4, $5
	sllv	$3, $4
	or	$2, $3
	li	$3, 65535
	and	$2, $3
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.74)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.74)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.74)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.74)($7)
	sw	$2, 4($3)
	addiu	$2, $16, 7
	sb	$4, 0($2)
	sw	$5, 0($16)
	li	$3, %hi($__profc_rotl8)
	sll	$6, $3, 16
	move	$4, $6
	addiu	$4, %lo($__profc_rotl8)
	lw	$3, 4($4)
	lw	$5, %lo($__profc_rotl8)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$3, $3, $7
	sw	$5, %lo($__profc_rotl8)($6)
	sw	$3, 4($4)
	lbu	$3, 0($2)
	lw	$5, 0($16)
	move	$2, $3
	sllv	$2, $5
	li	$4, 8
	subu	$4, $4, $5
	srlv	$3, $4
	or	$2, $3
	li	$3, 255
	and	$2, $3
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.75)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.75)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.75)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.75)($7)
	sw	$2, 4($3)
	addiu	$2, $16, 7
	sb	$4, 0($2)
	sw	$5, 0($16)
	li	$3, %hi($__profc_rotr8)
	sll	$6, $3, 16
	move	$4, $6
	addiu	$4, %lo($__profc_rotr8)
	lw	$3, 4($4)
	lw	$5, %lo($__profc_rotr8)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$3, $3, $7
	sw	$5, %lo($__profc_rotr8)($6)
	sw	$3, 4($4)
	lbu	$3, 0($2)
	lw	$5, 0($16)
	move	$2, $3
	srlv	$2, $5
	li	$4, 8
	subu	$4, $4, $5
	sllv	$3, $4
	or	$2, $3
	li	$3, 255
	and	$2, $3
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	li	$2, %hi(__llvm_gcov_ctr.76)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.76)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.76)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.76)($6)
	sw	$2, 4($3)
	addiu	$3, $16, 2
	sh	$4, 0($3)
	li	$2, %hi($__profc_bswap_16)
	sll	$6, $2, 16
	move	$4, $6
	addiu	$4, %lo($__profc_bswap_16)
	lw	$2, 4($4)
	lw	$5, %lo($__profc_bswap_16)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo($__profc_bswap_16)($6)
	sw	$2, 4($4)
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
	li	$2, %hi(__llvm_gcov_ctr.77)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.77)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.77)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.77)($6)
	sw	$2, 4($3)
	sw	$4, 8($16)
	li	$2, %hi($__profc_bswap_32)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_bswap_32)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_bswap_32)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_bswap_32)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.78)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.78)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.78)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.78)($7)
	sw	$2, 4($3)
	sw	$5, 36($16)
	sw	$4, 32($16)
	li	$2, %hi($__profc_bswap_64)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_bswap_64)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_bswap_64)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_bswap_64)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc_ffs)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_ffs)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_ffs)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_ffs)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc_ffs)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ffs)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 4($16)
	lw	$3, 0($16)
	srlv	$2, $3
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB79_4  # 16 bit inst
	b	$BB79_3 # 16 bit inst
$BB79_3:
	li	$2, %hi(__llvm_gcov_ctr.79)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.79)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.79)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.79)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_ffs)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ffs)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 0($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 8($16)
	b	$BB79_7 # 16 bit inst
$BB79_4:                                #   in Loop: Header=BB79_1 Depth=1
	b	$BB79_5 # 16 bit inst
$BB79_5:                                #   in Loop: Header=BB79_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.79)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.79)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 0($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 0($16)
	b	$BB79_1 # 16 bit inst
$BB79_6:
	li	$2, %hi(__llvm_gcov_ctr.79)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.79)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc_libiberty_ffs)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_libiberty_ffs)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_libiberty_ffs)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_libiberty_ffs)($5)
	sw	$2, 4($3)
	lw	$2, 4($16)
	bnez	$2, $BB80_2  # 16 bit inst
	b	$BB80_1 # 16 bit inst
$BB80_1:
	li	$2, %hi(__llvm_gcov_ctr.80)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.80)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_libiberty_ffs)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_libiberty_ffs)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, 0
	sw	$2, 8($16)
	b	$BB80_7 # 16 bit inst
$BB80_2:
	li	$2, %hi(__llvm_gcov_ctr.80)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.80)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.80)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.80)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc_libiberty_ffs)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_libiberty_ffs)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 4($16)
	sra	$2, $2, 1
	sw	$2, 4($16)
	b	$BB80_5 # 16 bit inst
$BB80_5:                                #   in Loop: Header=BB80_3 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.80)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.80)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	.frame	$16,40,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.81)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.81)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.81)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.81)($6)
	sw	$2, 4($3)
	sw	$4, 28($16)
	li	$2, %hi($__profc_gl_isinff)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_gl_isinff)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_gl_isinff)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_gl_isinff)($5)
	sw	$2, 4($3)
	lw	$4, 28($16)
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
	sw	$2, 24($16)                     # 4-byte Folded Spill
	btnez	$BB81_3  # 16 bit inst
	b	$BB81_1 # 16 bit inst
$BB81_1:
	li	$2, %hi(__llvm_gcov_ctr.81)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.81)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_gl_isinff)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_gl_isinff)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$4, 28($16)
	lw	$5, 1f
	b	2f
	.align	2
1: 	.word	2139095039
2:
	jal	__gtsf2
	nop
	move	$4, $2
	li	$3, 0
	slt	$3, $4
	move	$2, $24
	sw	$2, 20($16)                     # 4-byte Folded Spill
	slt	$3, $4
	sw	$2, 24($16)                     # 4-byte Folded Spill
	btnez	$BB81_3  # 16 bit inst
	b	$BB81_2 # 16 bit inst
$BB81_2:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.81)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.81)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_gl_isinff)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_gl_isinff)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	sw	$2, 24($16)                     # 4-byte Folded Spill
	b	$BB81_3 # 16 bit inst
$BB81_3:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, $ra, 40 # 16 bit inst

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
	.frame	$16,48,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.82)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.82)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.82)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.82)($7)
	sw	$2, 4($3)
	sw	$5, 28($16)
	sw	$4, 24($16)
	li	$2, %hi($__profc_gl_isinfd)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_gl_isinfd)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_gl_isinfd)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_gl_isinfd)($5)
	sw	$2, 4($3)
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
	btnez	$BB82_3  # 16 bit inst
	b	$BB82_1 # 16 bit inst
$BB82_1:
	li	$2, %hi(__llvm_gcov_ctr.82)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.82)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_gl_isinfd)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_gl_isinfd)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	move	$4, $2
	li	$3, 0
	slt	$3, $4
	move	$2, $24
	sw	$2, 16($16)                     # 4-byte Folded Spill
	slt	$3, $4
	sw	$2, 20($16)                     # 4-byte Folded Spill
	btnez	$BB82_3  # 16 bit inst
	b	$BB82_2 # 16 bit inst
$BB82_2:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.82)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.82)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_gl_isinfd)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_gl_isinfd)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB82_3 # 16 bit inst
$BB82_3:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, $17, $ra, 48 # 16 bit inst

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
	.frame	$16,48,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 48 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.83)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.83)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.83)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.83)($7)
	sw	$2, 4($3)
	sw	$5, 28($16)
	sw	$4, 24($16)
	li	$2, %hi($__profc_gl_isinfl)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_gl_isinfl)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_gl_isinfl)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_gl_isinfl)($5)
	sw	$2, 4($3)
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
	btnez	$BB83_3  # 16 bit inst
	b	$BB83_1 # 16 bit inst
$BB83_1:
	li	$2, %hi(__llvm_gcov_ctr.83)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.83)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_gl_isinfl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_gl_isinfl)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	move	$4, $2
	li	$3, 0
	slt	$3, $4
	move	$2, $24
	sw	$2, 16($16)                     # 4-byte Folded Spill
	slt	$3, $4
	sw	$2, 20($16)                     # 4-byte Folded Spill
	btnez	$BB83_3  # 16 bit inst
	b	$BB83_2 # 16 bit inst
$BB83_2:
	lw	$2, 16($16)                     # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.83)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.83)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_gl_isinfl)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_gl_isinfl)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	b	$BB83_3 # 16 bit inst
$BB83_3:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	move	$sp, $16
	restore	$16, $17, $ra, 48 # 16 bit inst

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
	.frame	$16,40,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 40 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.84)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.84)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.84)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.84)($7)
	sw	$2, 4($3)
	sw	$4, 24($16)
	sw	$5, 20($16)
	li	$2, %hi($__profc__Qp_itoq)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc__Qp_itoq)
	lw	$2, 4($3)
	lw	$4, %lo($__profc__Qp_itoq)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc__Qp_itoq)($5)
	sw	$2, 4($3)
	lw	$4, 20($16)
	jal	__floatsidf
	nop
	move	$4, $3
	lw	$3, 24($16)
	sw	$4, 4($3)
	sw	$2, 0($3)
	move	$sp, $16
	restore	$16, $17, $ra, 40 # 16 bit inst

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
	.frame	$16,56,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 56 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.85)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.85)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.85)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.85)($7)
	sw	$2, 4($3)
	sw	$4, 40($16)
	sw	$5, 36($16)
	li	$2, %hi($__profc_ldexpf)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_ldexpf)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_ldexpf)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_ldexpf)($5)
	sw	$2, 4($3)
	lw	$3, 40($16)
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
	btnez	$BB85_12
	b	$BB85_1 # 16 bit inst
$BB85_1:
	li	$2, %hi(__llvm_gcov_ctr.85)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.85)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_ldexpf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexpf)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$5, 40($16)
	sw	$5, 28($16)                     # 4-byte Folded Spill
	move	$4, $5
	jal	__addsf3
	nop
	lw	$5, 28($16)                     # 4-byte Folded Reload
	move	$4, $2
	jal	__eqsf2
	nop
	beqz	$2, $BB85_12
	b	$BB85_2 # 16 bit inst
$BB85_2:
	li	$2, %hi(__llvm_gcov_ctr.85)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.85)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_ldexpf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexpf)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB85_3 # 16 bit inst
$BB85_3:
	li	$2, %hi($__profc_ldexpf)
	sll	$4, $2, 16
	addiu	$4, %lo($__profc_ldexpf)
	sw	$4, 16($16)                     # 4-byte Folded Spill
	lw	$2, 12($4)
	lw	$3, 8($4)
	addiu	$3, 1	# 16 bit inst
	sltiu	$3, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$3, 8($4)
	sw	$2, 12($4)
	lw	$3, 36($16)
	srl	$5, $3, 31
	lw	$2, 36($4)
	lw	$6, 32($4)
	addu	$5, $6, $5
	sltu	$5, $6
	move	$6, $24
	addu	$2, $2, $6
	sw	$5, 32($4)
	sw	$2, 36($4)
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1073741824
2:
	sw	$2, 20($16)                     # 4-byte Folded Spill
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1056964608
2:
	slti	$3, 0
	sw	$2, 24($16)                     # 4-byte Folded Spill
	btnez	$BB85_5  # 16 bit inst
# %bb.4:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$2, 24($16)                     # 4-byte Folded Spill
$BB85_5:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$2, 32($16)
	b	$BB85_6 # 16 bit inst
$BB85_6:                                # =>This Inner Loop Header: Depth=1
	li	$2, %hi($__profc_ldexpf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexpf)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 36($16)
	srl	$3, $2, 31
	addu	$3, $2, $3
	move	$4, $zero
	addiu	$4, -2
	and	$3, $4
	subu	$2, $2, $3
	beqz	$2, $BB85_8  # 16 bit inst
	b	$BB85_7 # 16 bit inst
$BB85_7:                                #   in Loop: Header=BB85_6 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.85)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.85)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_ldexpf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexpf)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$5, 32($16)
	lw	$4, 40($16)
	jal	__mulsf3
	nop
	sw	$2, 40($16)
	b	$BB85_8 # 16 bit inst
$BB85_8:                                #   in Loop: Header=BB85_6 Depth=1
	lw	$2, 36($16)
	srl	$3, $2, 31
	addu	$2, $2, $3
	sra	$2, $2, 1
	sw	$2, 36($16)
	lw	$2, 36($16)
	bnez	$2, $BB85_10  # 16 bit inst
	b	$BB85_9 # 16 bit inst
$BB85_9:
	li	$2, %hi($__profc_ldexpf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexpf)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	b	$BB85_11 # 16 bit inst
$BB85_10:                               #   in Loop: Header=BB85_6 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.85)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.85)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$5, 32($16)
	move	$4, $5
	jal	__mulsf3
	nop
	sw	$2, 32($16)
	b	$BB85_6 # 16 bit inst
$BB85_11:
	b	$BB85_12 # 16 bit inst
$BB85_12:
	lw	$2, 40($16)
	move	$sp, $16
	restore	$16, $17, $ra, 56 # 16 bit inst

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
	.frame	$16,88,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 88 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.86)
	sll	$17, $2, 16
	move	$2, $17
	addiu	$2, %lo(__llvm_gcov_ctr.86)
	sw	$2, 36($16)                     # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$7, %lo(__llvm_gcov_ctr.86)($17)
	addiu	$7, 1	# 16 bit inst
	sltiu	$7, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 36($16)                     # 4-byte Folded Reload
	sw	$7, %lo(__llvm_gcov_ctr.86)($17)
	sw	$2, 4($3)
	sw	$5, 68($16)
	sw	$4, 64($16)
	sw	$6, 60($16)
	li	$2, %hi($__profc_ldexp)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_ldexp)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_ldexp)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_ldexp)($5)
	sw	$2, 4($3)
	lw	$5, 64($16)
	lw	$4, 68($16)
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
	sw	$2, 40($16)                     # 4-byte Folded Spill
	li	$2, 0
	xor	$5, $2
	sltu	$2, $5
	move	$2, $24
	cmp	$3, $4
	sw	$2, 44($16)                     # 4-byte Folded Spill
	bteqz	$BB86_2  # 16 bit inst
# %bb.1:
	lw	$2, 40($16)                     # 4-byte Folded Reload
	sw	$2, 44($16)                     # 4-byte Folded Spill
$BB86_2:
	lw	$2, 44($16)                     # 4-byte Folded Reload
	bnez	$2, $BB86_14
	b	$BB86_3 # 16 bit inst
$BB86_3:
	li	$2, %hi(__llvm_gcov_ctr.86)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.86)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_ldexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexp)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$6, 64($16)
	sw	$6, 28($16)                     # 4-byte Folded Spill
	lw	$7, 68($16)
	sw	$7, 32($16)                     # 4-byte Folded Spill
	move	$4, $6
	move	$5, $7
	jal	__adddf3
	nop
	lw	$6, 28($16)                     # 4-byte Folded Reload
	lw	$7, 32($16)                     # 4-byte Folded Reload
	move	$4, $2
	move	$5, $3
	jal	__eqdf2
	nop
	beqz	$2, $BB86_14
	b	$BB86_4 # 16 bit inst
$BB86_4:
	li	$2, %hi(__llvm_gcov_ctr.86)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.86)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_ldexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexp)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB86_5 # 16 bit inst
$BB86_5:
	li	$2, %hi($__profc_ldexp)
	sll	$4, $2, 16
	addiu	$4, %lo($__profc_ldexp)
	sw	$4, 16($16)                     # 4-byte Folded Spill
	lw	$2, 12($4)
	lw	$3, 8($4)
	addiu	$3, 1	# 16 bit inst
	sltiu	$3, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$3, 8($4)
	sw	$2, 12($4)
	lw	$3, 60($16)
	srl	$5, $3, 31
	lw	$2, 36($4)
	lw	$6, 32($4)
	addu	$5, $6, $5
	sltu	$5, $6
	move	$6, $24
	addu	$2, $2, $6
	sw	$5, 32($4)
	sw	$2, 36($4)
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1073741824
2:
	sw	$2, 20($16)                     # 4-byte Folded Spill
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1071644672
2:
	slti	$3, 0
	sw	$2, 24($16)                     # 4-byte Folded Spill
	btnez	$BB86_7  # 16 bit inst
# %bb.6:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$2, 24($16)                     # 4-byte Folded Spill
$BB86_7:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$2, 52($16)
	li	$2, 0
	sw	$2, 48($16)
	b	$BB86_8 # 16 bit inst
$BB86_8:                                # =>This Inner Loop Header: Depth=1
	li	$2, %hi($__profc_ldexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexp)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 60($16)
	srl	$3, $2, 31
	addu	$3, $2, $3
	move	$4, $zero
	addiu	$4, -2
	and	$3, $4
	subu	$2, $2, $3
	beqz	$2, $BB86_10  # 16 bit inst
	b	$BB86_9 # 16 bit inst
$BB86_9:                                #   in Loop: Header=BB86_8 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.86)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.86)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_ldexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexp)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$6, 48($16)
	lw	$7, 52($16)
	lw	$4, 64($16)
	lw	$5, 68($16)
	jal	__muldf3
	nop
	sw	$3, 68($16)
	sw	$2, 64($16)
	b	$BB86_10 # 16 bit inst
$BB86_10:                               #   in Loop: Header=BB86_8 Depth=1
	lw	$2, 60($16)
	srl	$3, $2, 31
	addu	$2, $2, $3
	sra	$2, $2, 1
	sw	$2, 60($16)
	lw	$2, 60($16)
	bnez	$2, $BB86_12  # 16 bit inst
	b	$BB86_11 # 16 bit inst
$BB86_11:
	li	$2, %hi($__profc_ldexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexp)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	b	$BB86_13 # 16 bit inst
$BB86_12:                               #   in Loop: Header=BB86_8 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.86)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.86)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$6, 48($16)
	lw	$7, 52($16)
	move	$4, $6
	move	$5, $7
	jal	__muldf3
	nop
	sw	$3, 52($16)
	sw	$2, 48($16)
	b	$BB86_8 # 16 bit inst
$BB86_13:
	b	$BB86_14 # 16 bit inst
$BB86_14:
	lw	$2, 64($16)
	lw	$3, 68($16)
	move	$sp, $16
	restore	$16, $17, $ra, 88 # 16 bit inst

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
	.frame	$16,88,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 88 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.87)
	sll	$17, $2, 16
	move	$2, $17
	addiu	$2, %lo(__llvm_gcov_ctr.87)
	sw	$2, 36($16)                     # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$7, %lo(__llvm_gcov_ctr.87)($17)
	addiu	$7, 1	# 16 bit inst
	sltiu	$7, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 36($16)                     # 4-byte Folded Reload
	sw	$7, %lo(__llvm_gcov_ctr.87)($17)
	sw	$2, 4($3)
	sw	$5, 68($16)
	sw	$4, 64($16)
	sw	$6, 60($16)
	li	$2, %hi($__profc_ldexpl)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_ldexpl)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_ldexpl)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_ldexpl)($5)
	sw	$2, 4($3)
	lw	$5, 64($16)
	lw	$4, 68($16)
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
	sw	$2, 40($16)                     # 4-byte Folded Spill
	li	$2, 0
	xor	$5, $2
	sltu	$2, $5
	move	$2, $24
	cmp	$3, $4
	sw	$2, 44($16)                     # 4-byte Folded Spill
	bteqz	$BB87_2  # 16 bit inst
# %bb.1:
	lw	$2, 40($16)                     # 4-byte Folded Reload
	sw	$2, 44($16)                     # 4-byte Folded Spill
$BB87_2:
	lw	$2, 44($16)                     # 4-byte Folded Reload
	bnez	$2, $BB87_14
	b	$BB87_3 # 16 bit inst
$BB87_3:
	li	$2, %hi(__llvm_gcov_ctr.87)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.87)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_ldexpl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexpl)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$6, 64($16)
	sw	$6, 28($16)                     # 4-byte Folded Spill
	lw	$7, 68($16)
	sw	$7, 32($16)                     # 4-byte Folded Spill
	move	$4, $6
	move	$5, $7
	jal	__adddf3
	nop
	lw	$6, 28($16)                     # 4-byte Folded Reload
	lw	$7, 32($16)                     # 4-byte Folded Reload
	move	$4, $2
	move	$5, $3
	jal	__eqdf2
	nop
	beqz	$2, $BB87_14
	b	$BB87_4 # 16 bit inst
$BB87_4:
	li	$2, %hi(__llvm_gcov_ctr.87)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.87)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_ldexpl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexpl)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB87_5 # 16 bit inst
$BB87_5:
	li	$2, %hi($__profc_ldexpl)
	sll	$4, $2, 16
	addiu	$4, %lo($__profc_ldexpl)
	sw	$4, 16($16)                     # 4-byte Folded Spill
	lw	$2, 12($4)
	lw	$3, 8($4)
	addiu	$3, 1	# 16 bit inst
	sltiu	$3, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$3, 8($4)
	sw	$2, 12($4)
	lw	$3, 60($16)
	srl	$5, $3, 31
	lw	$2, 36($4)
	lw	$6, 32($4)
	addu	$5, $6, $5
	sltu	$5, $6
	move	$6, $24
	addu	$2, $2, $6
	sw	$5, 32($4)
	sw	$2, 36($4)
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1073741824
2:
	sw	$2, 20($16)                     # 4-byte Folded Spill
	lw	$2, 1f
	b	2f
	.align	2
1: 	.word	1071644672
2:
	slti	$3, 0
	sw	$2, 24($16)                     # 4-byte Folded Spill
	btnez	$BB87_7  # 16 bit inst
# %bb.6:
	lw	$2, 20($16)                     # 4-byte Folded Reload
	sw	$2, 24($16)                     # 4-byte Folded Spill
$BB87_7:
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$2, 52($16)
	li	$2, 0
	sw	$2, 48($16)
	b	$BB87_8 # 16 bit inst
$BB87_8:                                # =>This Inner Loop Header: Depth=1
	li	$2, %hi($__profc_ldexpl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexpl)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 60($16)
	srl	$3, $2, 31
	addu	$3, $2, $3
	move	$4, $zero
	addiu	$4, -2
	and	$3, $4
	subu	$2, $2, $3
	beqz	$2, $BB87_10  # 16 bit inst
	b	$BB87_9 # 16 bit inst
$BB87_9:                                #   in Loop: Header=BB87_8 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.87)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.87)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_ldexpl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexpl)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$6, 48($16)
	lw	$7, 52($16)
	lw	$4, 64($16)
	lw	$5, 68($16)
	jal	__muldf3
	nop
	sw	$3, 68($16)
	sw	$2, 64($16)
	b	$BB87_10 # 16 bit inst
$BB87_10:                               #   in Loop: Header=BB87_8 Depth=1
	lw	$2, 60($16)
	srl	$3, $2, 31
	addu	$2, $2, $3
	sra	$2, $2, 1
	sw	$2, 60($16)
	lw	$2, 60($16)
	bnez	$2, $BB87_12  # 16 bit inst
	b	$BB87_11 # 16 bit inst
$BB87_11:
	li	$2, %hi($__profc_ldexpl)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_ldexpl)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	b	$BB87_13 # 16 bit inst
$BB87_12:                               #   in Loop: Header=BB87_8 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.87)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.87)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$6, 48($16)
	lw	$7, 52($16)
	move	$4, $6
	move	$5, $7
	jal	__muldf3
	nop
	sw	$3, 52($16)
	sw	$2, 48($16)
	b	$BB87_8 # 16 bit inst
$BB87_13:
	b	$BB87_14 # 16 bit inst
$BB87_14:
	lw	$2, 64($16)
	lw	$3, 68($16)
	move	$sp, $16
	restore	$16, $17, $ra, 88 # 16 bit inst

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
	.frame	$16,32,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 32 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.88)
	sll	$17, $2, 16
	move	$2, $17
	addiu	$2, %lo(__llvm_gcov_ctr.88)
	sw	$2, 0($16)                      # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$7, %lo(__llvm_gcov_ctr.88)($17)
	addiu	$7, 1	# 16 bit inst
	sltiu	$7, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 0($16)                      # 4-byte Folded Reload
	sw	$7, %lo(__llvm_gcov_ctr.88)($17)
	sw	$2, 4($3)
	sw	$4, 20($16)
	sw	$5, 16($16)
	sw	$6, 12($16)
	li	$2, %hi($__profc_memxor)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_memxor)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_memxor)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_memxor)($5)
	sw	$2, 4($3)
	lw	$2, 16($16)
	sw	$2, 8($16)
	lw	$2, 20($16)
	sw	$2, 4($16)
	b	$BB88_1 # 16 bit inst
$BB88_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	beqz	$2, $BB88_4  # 16 bit inst
	b	$BB88_2 # 16 bit inst
$BB88_2:                                #   in Loop: Header=BB88_1 Depth=1
	li	$2, %hi($__profc_memxor)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memxor)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 8($16)
	move	$3, $2
	addiu	$3, 1	# 16 bit inst
	sw	$3, 8($16)
	lbu	$4, 0($2)
	lw	$3, 4($16)
	move	$2, $3
	addiu	$2, 1	# 16 bit inst
	sw	$2, 4($16)
	lbu	$2, 0($3)
	xor	$2, $4
	sb	$2, 0($3)
	b	$BB88_3 # 16 bit inst
$BB88_3:                                #   in Loop: Header=BB88_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.88)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.88)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 12($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB88_1 # 16 bit inst
$BB88_4:
	lw	$2, 20($16)
	move	$sp, $16
	restore	$16, $17, 32 # 16 bit inst

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
	.frame	$16,56,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 56 # 16 bit inst

	move	$16, $sp
	sw	$4, 44($16)
	sw	$5, 40($16)
	sw	$6, 36($16)
	li	$2, %hi($__profc_strncat)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_strncat)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_strncat)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_strncat)($5)
	sw	$2, 4($3)
	lw	$4, 44($16)
	sw	$4, 28($16)                     # 4-byte Folded Spill
	jal	strlen
	nop
	move	$3, $2
	lw	$2, 28($16)                     # 4-byte Folded Reload
	addu	$2, $2, $3
	sw	$2, 32($16)
	b	$BB89_1 # 16 bit inst
$BB89_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 36($16)
	li	$3, 0
	sw	$3, 24($16)                     # 4-byte Folded Spill
	beqz	$2, $BB89_4  # 16 bit inst
	b	$BB89_2 # 16 bit inst
$BB89_2:                                #   in Loop: Header=BB89_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.89)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.89)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.89)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.89)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_strncat)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strncat)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 40($16)
	lbu	$2, 0($2)
	lw	$3, 32($16)
	sb	$2, 0($3)
	li	$3, 0
	move	$4, $2
	xor	$4, $3
	sltu	$3, $4
	move	$3, $24
	sw	$3, 20($16)                     # 4-byte Folded Spill
	sw	$3, 24($16)                     # 4-byte Folded Spill
	beqz	$2, $BB89_4  # 16 bit inst
	b	$BB89_3 # 16 bit inst
$BB89_3:                                #   in Loop: Header=BB89_1 Depth=1
	lw	$2, 20($16)                     # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.89)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.89)
	lw	$3, 12($4)
	lw	$5, 8($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 8($4)
	sw	$3, 12($4)
	li	$3, %hi($__profc_strncat)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_strncat)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 24($16)                     # 4-byte Folded Spill
	b	$BB89_4 # 16 bit inst
$BB89_4:                                #   in Loop: Header=BB89_1 Depth=1
	lw	$2, 24($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB89_7  # 16 bit inst
	b	$BB89_5 # 16 bit inst
$BB89_5:                                #   in Loop: Header=BB89_1 Depth=1
	li	$2, %hi($__profc_strncat)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strncat)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB89_6 # 16 bit inst
$BB89_6:                                #   in Loop: Header=BB89_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.89)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.89)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 40($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 40($16)
	lw	$2, 32($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 32($16)
	lw	$2, 36($16)
	addiu	$2, -1	# 16 bit inst
	sw	$2, 36($16)
	b	$BB89_1 # 16 bit inst
$BB89_7:
	li	$2, %hi(__llvm_gcov_ctr.89)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.89)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 36($16)
	bnez	$2, $BB89_9  # 16 bit inst
	b	$BB89_8 # 16 bit inst
$BB89_8:
	li	$2, %hi(__llvm_gcov_ctr.89)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.89)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_strncat)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strncat)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$3, 32($16)
	li	$2, 0
	sb	$2, 0($3)
	b	$BB89_9 # 16 bit inst
$BB89_9:
	lw	$2, 44($16)
	move	$sp, $16
	restore	$16, $ra, 56 # 16 bit inst

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
	.frame	$16,32,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 32 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.90)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.90)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.90)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.90)($7)
	sw	$2, 4($3)
	sw	$4, 20($16)
	sw	$5, 16($16)
	li	$2, %hi($__profc_strnlen)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_strnlen)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_strnlen)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_strnlen)($5)
	sw	$2, 4($3)
	li	$2, 0
	sw	$2, 12($16)
	b	$BB90_1 # 16 bit inst
$BB90_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	lw	$3, 16($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	bnez	$2, $BB90_4  # 16 bit inst
	b	$BB90_2 # 16 bit inst
$BB90_2:                                #   in Loop: Header=BB90_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.90)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.90)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_strnlen)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strnlen)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 20($16)
	lw	$3, 12($16)
	addu	$2, $2, $3
	lb	$2, 0($2)
	li	$3, 0
	move	$4, $2
	xor	$4, $3
	sltu	$3, $4
	move	$3, $24
	sw	$3, 4($16)                      # 4-byte Folded Spill
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB90_4  # 16 bit inst
	b	$BB90_3 # 16 bit inst
$BB90_3:                                #   in Loop: Header=BB90_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.90)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.90)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_strnlen)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_strnlen)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB90_4 # 16 bit inst
$BB90_4:                                #   in Loop: Header=BB90_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB90_7  # 16 bit inst
	b	$BB90_5 # 16 bit inst
$BB90_5:                                #   in Loop: Header=BB90_1 Depth=1
	li	$2, %hi($__profc_strnlen)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strnlen)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB90_6 # 16 bit inst
$BB90_6:                                #   in Loop: Header=BB90_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.90)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.90)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB90_1 # 16 bit inst
$BB90_7:
	lw	$2, 12($16)
	move	$sp, $16
	restore	$16, $17, 32 # 16 bit inst

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
	li	$2, %hi($__profc_strpbrk)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_strpbrk)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_strpbrk)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_strpbrk)($5)
	sw	$2, 4($3)
	b	$BB91_1 # 16 bit inst
$BB91_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB91_3 Depth 2
	lw	$2, 12($16)
	lb	$2, 0($2)
	beqz	$2, $BB91_8
	b	$BB91_2 # 16 bit inst
$BB91_2:                                #   in Loop: Header=BB91_1 Depth=1
	li	$2, %hi($__profc_strpbrk)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strpbrk)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi($__profc_strpbrk)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strpbrk)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.91)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.91)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_strpbrk)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strpbrk)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 12($16)
	sw	$2, 16($16)
	b	$BB91_9 # 16 bit inst
$BB91_6:                                #   in Loop: Header=BB91_3 Depth=2
	li	$2, %hi(__llvm_gcov_ctr.91)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.91)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	b	$BB91_3 # 16 bit inst
$BB91_7:                                #   in Loop: Header=BB91_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.91)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.91)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB91_1 # 16 bit inst
$BB91_8:
	li	$2, %hi(__llvm_gcov_ctr.91)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.91)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.91)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.91)($5)
	sw	$2, 4($3)
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
	.frame	$16,24,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 24 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.92)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.92)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.92)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.92)($7)
	sw	$2, 4($3)
	sw	$4, 12($16)
	sw	$5, 8($16)
	li	$2, %hi($__profc_strrchr)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_strrchr)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_strrchr)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_strrchr)($5)
	sw	$2, 4($3)
	li	$2, 0
	sw	$2, 4($16)
	b	$BB92_2 # 16 bit inst
$BB92_1:                                #   in Loop: Header=BB92_2 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.92)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.92)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_strrchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strrchr)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	b	$BB92_2 # 16 bit inst
$BB92_2:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	lb	$2, 0($2)
	lw	$3, 8($16)
	cmp	$2, $3
	btnez	$BB92_4  # 16 bit inst
	b	$BB92_3 # 16 bit inst
$BB92_3:                                #   in Loop: Header=BB92_2 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.92)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.92)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_strrchr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strrchr)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 12($16)
	sw	$2, 4($16)
	b	$BB92_4 # 16 bit inst
$BB92_4:                                #   in Loop: Header=BB92_2 Depth=1
	b	$BB92_5 # 16 bit inst
$BB92_5:                                #   in Loop: Header=BB92_2 Depth=1
	lw	$2, 12($16)
	move	$3, $2
	addiu	$3, 1	# 16 bit inst
	sw	$3, 12($16)
	lbu	$2, 0($2)
	bnez	$2, $BB92_1  # 16 bit inst
	b	$BB92_6 # 16 bit inst
$BB92_6:
	lw	$2, 4($16)
	move	$sp, $16
	restore	$16, $17, 24 # 16 bit inst

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
	li	$2, %hi($__profc_strstr)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_strstr)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_strstr)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_strstr)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.93)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.93)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.93)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.93)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_strstr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strstr)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi($__profc_strstr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strstr)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$4, 24($16)
	lw	$5, 28($16)
	lw	$6, 20($16)
	jal	strncmp
	nop
	bnez	$2, $BB93_6  # 16 bit inst
	b	$BB93_5 # 16 bit inst
$BB93_5:
	li	$2, %hi(__llvm_gcov_ctr.93)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.93)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_strstr)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_strstr)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 24($16)
	sw	$2, 36($16)
	b	$BB93_9 # 16 bit inst
$BB93_6:                                #   in Loop: Header=BB93_3 Depth=1
	b	$BB93_7 # 16 bit inst
$BB93_7:                                #   in Loop: Header=BB93_3 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.93)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.93)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 24($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 24($16)
	b	$BB93_3 # 16 bit inst
$BB93_8:
	li	$2, %hi(__llvm_gcov_ctr.93)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.93)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi($__profc_copysign)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_copysign)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_copysign)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_copysign)($5)
	sw	$2, 4($3)
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
	btnez	$BB94_3  # 16 bit inst
	b	$BB94_1 # 16 bit inst
$BB94_1:
	li	$2, %hi(__llvm_gcov_ctr.94)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.94)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.94)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.94)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_copysign)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_copysign)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$4, 16($16)
	lw	$5, 20($16)
	li	$7, 0
	move	$6, $7
	jal	__gtdf2
	nop
	slti	$2, 1 	# 16 bit inst
	btnez	$BB94_3  # 16 bit inst
	b	$BB94_2 # 16 bit inst
$BB94_2:
	li	$2, %hi(__llvm_gcov_ctr.94)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.94)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_copysign)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_copysign)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	b	$BB94_6 # 16 bit inst
$BB94_3:
	li	$2, %hi($__profc_copysign)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_copysign)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$4, 24($16)
	lw	$5, 28($16)
	li	$7, 0
	move	$6, $7
	jal	__gtdf2
	nop
	slti	$2, 1 	# 16 bit inst
	btnez	$BB94_7  # 16 bit inst
	b	$BB94_4 # 16 bit inst
$BB94_4:
	li	$2, %hi(__llvm_gcov_ctr.94)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.94)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_copysign)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_copysign)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$4, 16($16)
	lw	$5, 20($16)
	li	$7, 0
	move	$6, $7
	jal	__ltdf2
	nop
	move	$3, $2
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB94_7  # 16 bit inst
	b	$BB94_5 # 16 bit inst
$BB94_5:
	li	$2, %hi(__llvm_gcov_ctr.94)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.94)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_copysign)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_copysign)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	b	$BB94_6 # 16 bit inst
$BB94_6:
	li	$2, %hi($__profc_copysign)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_copysign)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$3, 24($16)
	lw	$2, 28($16)
	lw	$4, 1f
	b	2f
	.align	2
1: 	.word	-2147483648
2:
	xor	$2, $4
	sw	$3, 32($16)
	sw	$2, 36($16)
	b	$BB94_8 # 16 bit inst
$BB94_7:
	li	$2, %hi(__llvm_gcov_ctr.94)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.94)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 24($16)
	lw	$3, 28($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB94_8 # 16 bit inst
$BB94_8:
	lw	$2, 32($16)
	lw	$3, 36($16)
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

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
	li	$2, %hi($__profc_memmem)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_memmem)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_memmem)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_memmem)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.95)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.95)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.95)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.95)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_memmem)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memmem)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 40($16)
	sw	$2, 44($16)
	b	$BB95_13 # 16 bit inst
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
	li	$2, %hi(__llvm_gcov_ctr.95)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.95)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_memmem)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memmem)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, 0
	sw	$2, 44($16)
	b	$BB95_13 # 16 bit inst
$BB95_4:
	lw	$2, 40($16)
	sw	$2, 24($16)
	b	$BB95_5 # 16 bit inst
$BB95_5:                                # =>This Inner Loop Header: Depth=1
	lw	$3, 24($16)
	lw	$2, 20($16)
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB95_12
	b	$BB95_6 # 16 bit inst
$BB95_6:                                #   in Loop: Header=BB95_5 Depth=1
	li	$2, %hi($__profc_memmem)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memmem)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 24($16)
	lb	$2, 0($2)
	lw	$3, 32($16)
	lb	$3, 0($3)
	cmp	$2, $3
	btnez	$BB95_10  # 16 bit inst
	b	$BB95_7 # 16 bit inst
$BB95_7:                                #   in Loop: Header=BB95_5 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.95)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.95)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_memmem)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memmem)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$4, 24($16)
	addiu	$4, 1	# 16 bit inst
	lw	$5, 32($16)
	addiu	$5, 1	# 16 bit inst
	lw	$6, 28($16)
	addiu	$6, -1	# 16 bit inst
	jal	memcmp
	nop
	bnez	$2, $BB95_10  # 16 bit inst
	b	$BB95_8 # 16 bit inst
$BB95_8:
	li	$2, %hi(__llvm_gcov_ctr.95)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.95)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_memmem)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memmem)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	b	$BB95_9 # 16 bit inst
$BB95_9:
	li	$2, %hi($__profc_memmem)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_memmem)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 24($16)
	sw	$2, 44($16)
	b	$BB95_13 # 16 bit inst
$BB95_10:                               #   in Loop: Header=BB95_5 Depth=1
	b	$BB95_11 # 16 bit inst
$BB95_11:                               #   in Loop: Header=BB95_5 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.95)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.95)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 24($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 24($16)
	b	$BB95_5 # 16 bit inst
$BB95_12:
	li	$2, %hi(__llvm_gcov_ctr.95)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.95)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	li	$2, 0
	sw	$2, 44($16)
	b	$BB95_13 # 16 bit inst
$BB95_13:
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
	.frame	$16,48,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 48 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.96)
	sll	$17, $2, 16
	move	$2, $17
	addiu	$2, %lo(__llvm_gcov_ctr.96)
	sw	$2, 16($16)                     # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$7, %lo(__llvm_gcov_ctr.96)($17)
	addiu	$7, 1	# 16 bit inst
	sltiu	$7, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 16($16)                     # 4-byte Folded Reload
	sw	$7, %lo(__llvm_gcov_ctr.96)($17)
	sw	$2, 4($3)
	sw	$4, 32($16)
	sw	$5, 28($16)
	sw	$6, 24($16)
	li	$2, %hi($__profc_mempcpy)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_mempcpy)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_mempcpy)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_mempcpy)($5)
	sw	$2, 4($3)
	lw	$4, 32($16)
	sw	$4, 20($16)                     # 4-byte Folded Spill
	lw	$5, 28($16)
	lw	$6, 24($16)
	jal	memcpy
	nop
                                        # kill: def $v1 killed $v0
	lw	$2, 20($16)                     # 4-byte Folded Reload
	lw	$3, 24($16)
	addu	$2, $2, $3
	move	$sp, $16
	restore	$16, $17, $ra, 48 # 16 bit inst

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
	li	$2, %hi($__profc_frexp)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_frexp)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_frexp)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_frexp)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.97)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.97)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.97)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.97)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_frexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_frexp)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.97)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.97)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_frexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_frexp)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.97)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.97)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc_frexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_frexp)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	b	$BB97_15 # 16 bit inst
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
	btnez	$BB97_14
	b	$BB97_8 # 16 bit inst
$BB97_8:
	li	$2, %hi(__llvm_gcov_ctr.97)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.97)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_frexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_frexp)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$4, 32($16)
	lw	$5, 36($16)
	li	$7, 0
	move	$6, $7
	jal	__eqdf2
	nop
	beqz	$2, $BB97_14
	b	$BB97_9 # 16 bit inst
$BB97_9:
	li	$2, %hi($__profc_frexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_frexp)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	b	$BB97_10 # 16 bit inst
$BB97_10:
	li	$2, %hi($__profc_frexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_frexp)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	b	$BB97_11 # 16 bit inst
$BB97_11:                               # =>This Inner Loop Header: Depth=1
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
	b	$BB97_12 # 16 bit inst
$BB97_12:                               #   in Loop: Header=BB97_11 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.97)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.97)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_frexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_frexp)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
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
	b	$BB97_11 # 16 bit inst
$BB97_13:
	li	$2, %hi(__llvm_gcov_ctr.97)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.97)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	b	$BB97_14 # 16 bit inst
$BB97_14:
	li	$2, %hi(__llvm_gcov_ctr.97)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.97)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	b	$BB97_15 # 16 bit inst
$BB97_15:
	lw	$2, 20($16)
	lw	$3, 28($16)
	sw	$2, 0($3)
	lw	$2, 24($16)
	beqz	$2, $BB97_17  # 16 bit inst
	b	$BB97_16 # 16 bit inst
$BB97_16:
	li	$2, %hi(__llvm_gcov_ctr.97)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.97)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	li	$2, %hi($__profc_frexp)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_frexp)
	lw	$2, 68($3)
	lw	$4, 64($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 64($3)
	sw	$2, 68($3)
	lw	$2, 36($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	-2147483648
2:
	xor	$2, $3
	sw	$2, 36($16)
	b	$BB97_17 # 16 bit inst
$BB97_17:
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
	.frame	$16,56,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 56 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.98)
	sll	$3, $2, 16
	sw	$3, 8($16)                      # 4-byte Folded Spill
	move	$2, $3
	addiu	$2, %lo(__llvm_gcov_ctr.98)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$17, %lo(__llvm_gcov_ctr.98)($3)
	addiu	$17, 1	# 16 bit inst
	sltiu	$17, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 4($16)                      # 4-byte Folded Reload
	sw	$2, 12($16)                     # 4-byte Folded Spill
	lw	$2, 8($16)                      # 4-byte Folded Reload
	sw	$17, %lo(__llvm_gcov_ctr.98)($2)
	lw	$2, 12($16)                     # 4-byte Folded Reload
	sw	$2, 4($3)
	sw	$5, 44($16)
	sw	$4, 40($16)
	sw	$7, 36($16)
	sw	$6, 32($16)
	li	$2, %hi($__profc___muldi3)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___muldi3)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___muldi3)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___muldi3)($5)
	sw	$2, 4($3)
	li	$2, 0
	sw	$2, 28($16)
	sw	$2, 24($16)
	lw	$2, 40($16)
	lw	$3, 44($16)
	sw	$3, 20($16)
	sw	$2, 16($16)
	b	$BB98_1 # 16 bit inst
$BB98_1:                                # =>This Inner Loop Header: Depth=1
	lw	$3, 20($16)
	lw	$2, 16($16)
	or	$2, $3
	beqz	$2, $BB98_5
	b	$BB98_2 # 16 bit inst
$BB98_2:                                #   in Loop: Header=BB98_1 Depth=1
	li	$2, %hi($__profc___muldi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___muldi3)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	addiu	$2, $16, 16
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB98_4  # 16 bit inst
	b	$BB98_3 # 16 bit inst
$BB98_3:                                #   in Loop: Header=BB98_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.98)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.98)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___muldi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___muldi3)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$3, 32($16)
	lw	$5, 36($16)
	lw	$4, 24($16)
	lw	$2, 28($16)
	addu	$2, $2, $5
	addu	$3, $4, $3
	sltu	$3, $4
	move	$4, $24
	addu	$2, $2, $4
	sw	$3, 24($16)
	sw	$2, 28($16)
	b	$BB98_4 # 16 bit inst
$BB98_4:                                #   in Loop: Header=BB98_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.98)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.98)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 36($16)
	lw	$3, 32($16)
	srl	$4, $3, 31
	sll	$2, $2, 1
	or	$2, $4
	sll	$3, $3, 1
	sw	$3, 32($16)
	sw	$2, 36($16)
	lw	$2, 16($16)
	lw	$3, 20($16)
	sll	$4, $3, 31
	srl	$2, $2, 1
	or	$2, $4
	srl	$3, $3, 1
	sw	$3, 20($16)
	sw	$2, 16($16)
	b	$BB98_1 # 16 bit inst
$BB98_5:
	lw	$2, 24($16)
	lw	$3, 28($16)
	move	$sp, $16
	restore	$16, $17, 56 # 16 bit inst

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
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 28($16)
	sw	$5, 24($16)
	sw	$6, 20($16)
	li	$2, %hi($__profc_udivmodsi4)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc_udivmodsi4)
	lw	$2, 4($3)
	lw	$4, %lo($__profc_udivmodsi4)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc_udivmodsi4)($5)
	sw	$2, 4($3)
	li	$2, 1
	sw	$2, 16($16)
	li	$2, 0
	sw	$2, 12($16)
	b	$BB99_1 # 16 bit inst
$BB99_1:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 24($16)
	lw	$3, 28($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	bnez	$2, $BB99_6
	b	$BB99_2 # 16 bit inst
$BB99_2:                                #   in Loop: Header=BB99_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.99)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.99)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.99)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.99)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc_udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_udivmodsi4)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 16($16)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB99_6  # 16 bit inst
	b	$BB99_3 # 16 bit inst
$BB99_3:                                #   in Loop: Header=BB99_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.99)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.99)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc_udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_udivmodsi4)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	b	$BB99_4 # 16 bit inst
$BB99_4:                                #   in Loop: Header=BB99_1 Depth=1
	li	$2, %hi($__profc_udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_udivmodsi4)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 24($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	-2147483648
2:
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$3, $24
	sw	$3, 4($16)                      # 4-byte Folded Spill
	sw	$3, 8($16)                      # 4-byte Folded Spill
	bnez	$2, $BB99_6  # 16 bit inst
	b	$BB99_5 # 16 bit inst
$BB99_5:                                #   in Loop: Header=BB99_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.99)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.99)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc_udivmodsi4)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc_udivmodsi4)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB99_6 # 16 bit inst
$BB99_6:                                #   in Loop: Header=BB99_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB99_8  # 16 bit inst
	b	$BB99_7 # 16 bit inst
$BB99_7:                                #   in Loop: Header=BB99_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.99)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.99)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc_udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_udivmodsi4)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 24($16)
	sll	$2, $2, 1
	sw	$2, 24($16)
	lw	$2, 16($16)
	sll	$2, $2, 1
	sw	$2, 16($16)
	b	$BB99_1 # 16 bit inst
$BB99_8:
	b	$BB99_9 # 16 bit inst
$BB99_9:                                # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	beqz	$2, $BB99_13  # 16 bit inst
	b	$BB99_10 # 16 bit inst
$BB99_10:                               #   in Loop: Header=BB99_9 Depth=1
	li	$2, %hi($__profc_udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_udivmodsi4)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 28($16)
	lw	$3, 24($16)
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB99_12  # 16 bit inst
	b	$BB99_11 # 16 bit inst
$BB99_11:                               #   in Loop: Header=BB99_9 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.99)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.99)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc_udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_udivmodsi4)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	lw	$3, 24($16)
	lw	$2, 28($16)
	subu	$2, $2, $3
	sw	$2, 28($16)
	lw	$3, 16($16)
	lw	$2, 12($16)
	or	$2, $3
	sw	$2, 12($16)
	b	$BB99_12 # 16 bit inst
$BB99_12:                               #   in Loop: Header=BB99_9 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.99)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.99)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 16($16)
	srl	$2, $2, 1
	sw	$2, 16($16)
	lw	$2, 24($16)
	srl	$2, $2, 1
	sw	$2, 24($16)
	b	$BB99_9 # 16 bit inst
$BB99_13:
	lw	$2, 20($16)
	beqz	$2, $BB99_15  # 16 bit inst
	b	$BB99_14 # 16 bit inst
$BB99_14:
	li	$2, %hi(__llvm_gcov_ctr.99)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.99)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	li	$2, %hi($__profc_udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc_udivmodsi4)
	lw	$2, 68($3)
	lw	$4, 64($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 64($3)
	sw	$2, 68($3)
	lw	$2, 28($16)
	sw	$2, 32($16)
	b	$BB99_16 # 16 bit inst
$BB99_15:
	li	$2, %hi(__llvm_gcov_ctr.99)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.99)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	lw	$2, 12($16)
	sw	$2, 32($16)
	b	$BB99_16 # 16 bit inst
$BB99_16:
	lw	$2, 32($16)
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

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
	li	$3, %hi($__profc___clrsbqi2)
	sll	$6, $3, 16
	move	$4, $6
	addiu	$4, %lo($__profc___clrsbqi2)
	lw	$3, 4($4)
	lw	$5, %lo($__profc___clrsbqi2)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$3, $3, $7
	sw	$5, %lo($__profc___clrsbqi2)($6)
	sw	$3, 4($4)
	lb	$3, 0($2)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB100_2  # 16 bit inst
	b	$BB100_1 # 16 bit inst
$BB100_1:
	li	$2, %hi(__llvm_gcov_ctr.100)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.100)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.100)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.100)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___clrsbqi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___clrsbqi2)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.100)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.100)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___clrsbqi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___clrsbqi2)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, 7
	sw	$2, 8($16)
	b	$BB100_5 # 16 bit inst
$BB100_4:
	li	$2, %hi(__llvm_gcov_ctr.100)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.100)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc___clrsbdi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___clrsbdi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___clrsbdi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___clrsbdi2)($5)
	sw	$2, 4($3)
	lw	$3, 20($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB101_2  # 16 bit inst
	b	$BB101_1 # 16 bit inst
$BB101_1:
	li	$2, %hi(__llvm_gcov_ctr.101)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.101)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.101)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.101)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___clrsbdi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___clrsbdi2)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.101)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.101)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___clrsbdi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___clrsbdi2)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, 63
	sw	$2, 28($16)
	b	$BB101_7 # 16 bit inst
$BB101_4:
	li	$2, %hi(__llvm_gcov_ctr.101)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.101)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	.frame	$16,24,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 24 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.102)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.102)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.102)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.102)($7)
	sw	$2, 4($3)
	sw	$4, 12($16)
	sw	$5, 8($16)
	li	$2, %hi($__profc___mulsi3)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___mulsi3)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___mulsi3)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___mulsi3)($5)
	sw	$2, 4($3)
	li	$2, 0
	sw	$2, 4($16)
	b	$BB102_1 # 16 bit inst
$BB102_1:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	beqz	$2, $BB102_5  # 16 bit inst
	b	$BB102_2 # 16 bit inst
$BB102_2:                               #   in Loop: Header=BB102_1 Depth=1
	li	$2, %hi($__profc___mulsi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulsi3)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	addiu	$2, $16, 12
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB102_4  # 16 bit inst
	b	$BB102_3 # 16 bit inst
$BB102_3:                               #   in Loop: Header=BB102_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.102)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.102)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___mulsi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulsi3)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$3, 8($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	b	$BB102_4 # 16 bit inst
$BB102_4:                               #   in Loop: Header=BB102_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.102)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.102)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 12($16)
	srl	$2, $2, 1
	sw	$2, 12($16)
	lw	$2, 8($16)
	sll	$2, $2, 1
	sw	$2, 8($16)
	b	$BB102_1 # 16 bit inst
$BB102_5:
	lw	$2, 4($16)
	move	$sp, $16
	restore	$16, $17, 24 # 16 bit inst

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
	li	$2, %hi($__profc___cmovd)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___cmovd)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___cmovd)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___cmovd)($5)
	sw	$2, 4($3)
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
	bnez	$2, $BB103_3  # 16 bit inst
	b	$BB103_1 # 16 bit inst
$BB103_1:
	li	$2, %hi(__llvm_gcov_ctr.103)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.103)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.103)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.103)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___cmovd)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovd)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$3, 8($16)
	lw	$2, 4($16)
	lw	$4, 24($16)
	addu	$2, $2, $4
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB103_3  # 16 bit inst
	b	$BB103_2 # 16 bit inst
$BB103_2:
	li	$2, %hi($__profc___cmovd)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovd)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB103_11 # 16 bit inst
$BB103_3:
	li	$2, %hi($__profc___cmovd)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovd)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, 0
	sw	$2, 20($16)
	b	$BB103_4 # 16 bit inst
$BB103_4:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 20($16)
	lw	$3, 16($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB103_7  # 16 bit inst
	b	$BB103_5 # 16 bit inst
$BB103_5:                               #   in Loop: Header=BB103_4 Depth=1
	li	$2, %hi($__profc___cmovd)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovd)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
	b	$BB103_6 # 16 bit inst
$BB103_6:                               #   in Loop: Header=BB103_4 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.103)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.103)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 20($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 20($16)
	b	$BB103_4 # 16 bit inst
$BB103_7:
	b	$BB103_8 # 16 bit inst
$BB103_8:                               # =>This Inner Loop Header: Depth=1
	lw	$3, 24($16)
	lw	$2, 12($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB103_10  # 16 bit inst
	b	$BB103_9 # 16 bit inst
$BB103_9:                               #   in Loop: Header=BB103_8 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.103)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.103)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc___cmovd)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovd)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	b	$BB103_8 # 16 bit inst
$BB103_10:
	li	$2, %hi(__llvm_gcov_ctr.103)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.103)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB103_15 # 16 bit inst
$BB103_11:
	b	$BB103_12 # 16 bit inst
$BB103_12:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 24($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 24($16)
	beqz	$2, $BB103_14  # 16 bit inst
	b	$BB103_13 # 16 bit inst
$BB103_13:                              #   in Loop: Header=BB103_12 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.103)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.103)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc___cmovd)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovd)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 4($16)
	lw	$4, 24($16)
	addu	$2, $2, $4
	lbu	$2, 0($2)
	lw	$3, 8($16)
	addu	$3, $3, $4
	sb	$2, 0($3)
	b	$BB103_12 # 16 bit inst
$BB103_14:
	li	$2, %hi(__llvm_gcov_ctr.103)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.103)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	b	$BB103_15 # 16 bit inst
$BB103_15:
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
	li	$2, %hi($__profc___cmovh)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___cmovh)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___cmovh)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___cmovh)($5)
	sw	$2, 4($3)
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
	bnez	$2, $BB104_3  # 16 bit inst
	b	$BB104_1 # 16 bit inst
$BB104_1:
	li	$2, %hi(__llvm_gcov_ctr.104)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.104)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.104)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.104)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___cmovh)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovh)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$3, 4($16)
	lw	$2, 0($16)
	lw	$4, 16($16)
	addu	$2, $2, $4
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB104_3  # 16 bit inst
	b	$BB104_2 # 16 bit inst
$BB104_2:
	li	$2, %hi($__profc___cmovh)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovh)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB104_10 # 16 bit inst
$BB104_3:
	li	$2, %hi($__profc___cmovh)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovh)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, 0
	sw	$2, 12($16)
	b	$BB104_4 # 16 bit inst
$BB104_4:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	lw	$3, 8($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB104_7  # 16 bit inst
	b	$BB104_5 # 16 bit inst
$BB104_5:                               #   in Loop: Header=BB104_4 Depth=1
	li	$2, %hi($__profc___cmovh)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovh)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 20($16)
	lw	$3, 12($16)
	sll	$4, $3, 1
	addu	$2, $2, $4
	lhu	$2, 0($2)
	lw	$3, 24($16)
	addu	$3, $3, $4
	sh	$2, 0($3)
	b	$BB104_6 # 16 bit inst
$BB104_6:                               #   in Loop: Header=BB104_4 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.104)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.104)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 12($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 12($16)
	b	$BB104_4 # 16 bit inst
$BB104_7:
	addiu	$2, $16, 16
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB104_9  # 16 bit inst
	b	$BB104_8 # 16 bit inst
$BB104_8:
	li	$2, %hi(__llvm_gcov_ctr.104)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.104)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc___cmovh)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovh)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 0($16)
	lw	$4, 16($16)
	addiu	$4, -1	# 16 bit inst
	addu	$2, $2, $4
	lbu	$2, 0($2)
	lw	$3, 4($16)
	addu	$3, $3, $4
	sb	$2, 0($3)
	b	$BB104_9 # 16 bit inst
$BB104_9:
	li	$2, %hi(__llvm_gcov_ctr.104)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.104)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB104_14 # 16 bit inst
$BB104_10:
	b	$BB104_11 # 16 bit inst
$BB104_11:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 16($16)
	beqz	$2, $BB104_13  # 16 bit inst
	b	$BB104_12 # 16 bit inst
$BB104_12:                              #   in Loop: Header=BB104_11 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.104)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.104)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc___cmovh)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovh)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 0($16)
	lw	$4, 16($16)
	addu	$2, $2, $4
	lbu	$2, 0($2)
	lw	$3, 4($16)
	addu	$3, $3, $4
	sb	$2, 0($3)
	b	$BB104_11 # 16 bit inst
$BB104_13:
	li	$2, %hi(__llvm_gcov_ctr.104)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.104)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	b	$BB104_14 # 16 bit inst
$BB104_14:
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
	li	$2, %hi($__profc___cmovw)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___cmovw)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___cmovw)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___cmovw)($5)
	sw	$2, 4($3)
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
	bnez	$2, $BB105_3  # 16 bit inst
	b	$BB105_1 # 16 bit inst
$BB105_1:
	li	$2, %hi(__llvm_gcov_ctr.105)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.105)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.105)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.105)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___cmovw)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovw)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$3, 8($16)
	lw	$2, 4($16)
	lw	$4, 24($16)
	addu	$2, $2, $4
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB105_3  # 16 bit inst
	b	$BB105_2 # 16 bit inst
$BB105_2:
	li	$2, %hi($__profc___cmovw)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovw)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB105_11 # 16 bit inst
$BB105_3:
	li	$2, %hi($__profc___cmovw)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovw)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, 0
	sw	$2, 20($16)
	b	$BB105_4 # 16 bit inst
$BB105_4:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 20($16)
	lw	$3, 16($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB105_7  # 16 bit inst
	b	$BB105_5 # 16 bit inst
$BB105_5:                               #   in Loop: Header=BB105_4 Depth=1
	li	$2, %hi($__profc___cmovw)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovw)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 28($16)
	lw	$3, 20($16)
	sll	$4, $3, 2
	addu	$2, $2, $4
	lw	$2, 0($2)
	lw	$3, 32($16)
	addu	$3, $3, $4
	sw	$2, 0($3)
	b	$BB105_6 # 16 bit inst
$BB105_6:                               #   in Loop: Header=BB105_4 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.105)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.105)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 20($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 20($16)
	b	$BB105_4 # 16 bit inst
$BB105_7:
	b	$BB105_8 # 16 bit inst
$BB105_8:                               # =>This Inner Loop Header: Depth=1
	lw	$3, 24($16)
	lw	$2, 12($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	bnez	$2, $BB105_10  # 16 bit inst
	b	$BB105_9 # 16 bit inst
$BB105_9:                               #   in Loop: Header=BB105_8 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.105)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.105)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc___cmovw)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovw)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
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
	b	$BB105_8 # 16 bit inst
$BB105_10:
	li	$2, %hi(__llvm_gcov_ctr.105)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.105)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB105_15 # 16 bit inst
$BB105_11:
	b	$BB105_12 # 16 bit inst
$BB105_12:                              # =>This Inner Loop Header: Depth=1
	lw	$2, 24($16)
	move	$3, $2
	addiu	$3, -1	# 16 bit inst
	sw	$3, 24($16)
	beqz	$2, $BB105_14  # 16 bit inst
	b	$BB105_13 # 16 bit inst
$BB105_13:                              #   in Loop: Header=BB105_12 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.105)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.105)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc___cmovw)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmovw)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 4($16)
	lw	$4, 24($16)
	addu	$2, $2, $4
	lbu	$2, 0($2)
	lw	$3, 8($16)
	addu	$3, $3, $4
	sb	$2, 0($3)
	b	$BB105_12 # 16 bit inst
$BB105_14:
	li	$2, %hi(__llvm_gcov_ctr.105)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.105)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	b	$BB105_15 # 16 bit inst
$BB105_15:
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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.106)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.106)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.106)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.106)($7)
	sw	$2, 4($3)
	sw	$4, 4($16)
	sw	$5, 0($16)
	li	$2, %hi($__profc___modi)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___modi)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___modi)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___modi)($5)
	sw	$2, 4($3)
	lw	$2, 4($16)
	lw	$3, 0($16)
	div	$zero, $2, $3
	mfhi	$2
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	li	$2, %hi(__llvm_gcov_ctr.107)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.107)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.107)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.107)($6)
	sw	$2, 4($3)
	sw	$4, 20($16)
	li	$2, %hi($__profc___uitod)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___uitod)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___uitod)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___uitod)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.108)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.108)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.108)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.108)($6)
	sw	$2, 4($3)
	sw	$4, 20($16)
	li	$2, %hi($__profc___uitof)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___uitof)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___uitof)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___uitof)($5)
	sw	$2, 4($3)
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
	.frame	$16,40,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.109)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.109)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.109)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.109)($7)
	sw	$2, 4($3)
	sw	$5, 20($16)
	sw	$4, 16($16)
	li	$2, %hi($__profc___ulltod)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___ulltod)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___ulltod)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___ulltod)($5)
	sw	$2, 4($3)
	lw	$4, 16($16)
	lw	$5, 20($16)
	jal	__floatundidf
	nop
	move	$sp, $16
	restore	$16, $17, $ra, 40 # 16 bit inst

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
	.frame	$16,40,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 40 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.110)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.110)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.110)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.110)($7)
	sw	$2, 4($3)
	sw	$5, 20($16)
	sw	$4, 16($16)
	li	$2, %hi($__profc___ulltof)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___ulltof)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___ulltof)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___ulltof)($5)
	sw	$2, 4($3)
	lw	$4, 16($16)
	lw	$5, 20($16)
	jal	__floatundisf
	nop
	move	$sp, $16
	restore	$16, $17, $ra, 40 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.111)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.111)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.111)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.111)($7)
	sw	$2, 4($3)
	sw	$4, 4($16)
	sw	$5, 0($16)
	li	$2, %hi($__profc___umodi)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___umodi)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___umodi)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___umodi)($5)
	sw	$2, 4($3)
	lw	$2, 4($16)
	lw	$3, 0($16)
	divu	$zero, $2, $3
	mfhi	$2
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	li	$2, %hi(__llvm_gcov_ctr.112)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.112)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.112)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.112)($6)
	sw	$2, 4($3)
	addiu	$2, $16, 10
	sh	$4, 0($2)
	li	$2, %hi($__profc___clzhi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___clzhi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___clzhi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___clzhi2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc___clzhi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___clzhi2)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.112)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.112)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___clzhi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___clzhi2)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	b	$BB112_6 # 16 bit inst
$BB112_4:                               #   in Loop: Header=BB112_1 Depth=1
	b	$BB112_5 # 16 bit inst
$BB112_5:                               #   in Loop: Header=BB112_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.112)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.112)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.113)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.113)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.113)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.113)($6)
	sw	$2, 4($3)
	addiu	$2, $16, 10
	sh	$4, 0($2)
	li	$2, %hi($__profc___ctzhi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___ctzhi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___ctzhi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___ctzhi2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc___ctzhi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___ctzhi2)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	addiu	$2, $16, 10
	lhu	$2, 0($2)
	lw	$3, 4($16)
	srlv	$2, $3
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB113_4  # 16 bit inst
	b	$BB113_3 # 16 bit inst
$BB113_3:
	li	$2, %hi(__llvm_gcov_ctr.113)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.113)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___ctzhi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___ctzhi2)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	b	$BB113_6 # 16 bit inst
$BB113_4:                               #   in Loop: Header=BB113_1 Depth=1
	b	$BB113_5 # 16 bit inst
$BB113_5:                               #   in Loop: Header=BB113_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.113)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.113)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc___fixunssfsi)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___fixunssfsi)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___fixunssfsi)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___fixunssfsi)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.114)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.114)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.114)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.114)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___fixunssfsi)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___fixunssfsi)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.114)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.114)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.115)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.115)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.115)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.115)($6)
	sw	$2, 4($3)
	addiu	$2, $16, 10
	sh	$4, 0($2)
	li	$2, %hi($__profc___parityhi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___parityhi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___parityhi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___parityhi2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc___parityhi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___parityhi2)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	addiu	$2, $16, 10
	lhu	$2, 0($2)
	lw	$3, 4($16)
	srlv	$2, $3
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB115_4  # 16 bit inst
	b	$BB115_3 # 16 bit inst
$BB115_3:                               #   in Loop: Header=BB115_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.115)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.115)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___parityhi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___parityhi2)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 0($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 0($16)
	b	$BB115_4 # 16 bit inst
$BB115_4:                               #   in Loop: Header=BB115_1 Depth=1
	b	$BB115_5 # 16 bit inst
$BB115_5:                               #   in Loop: Header=BB115_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.115)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.115)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.116)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.116)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.116)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.116)($6)
	sw	$2, 4($3)
	addiu	$2, $16, 10
	sh	$4, 0($2)
	li	$2, %hi($__profc___popcounthi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___popcounthi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___popcounthi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___popcounthi2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc___popcounthi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___popcounthi2)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	addiu	$2, $16, 10
	lhu	$2, 0($2)
	lw	$3, 4($16)
	srlv	$2, $3
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB116_4  # 16 bit inst
	b	$BB116_3 # 16 bit inst
$BB116_3:                               #   in Loop: Header=BB116_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.116)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.116)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___popcounthi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___popcounthi2)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 0($16)
	addiu	$2, 1	# 16 bit inst
	sw	$2, 0($16)
	b	$BB116_4 # 16 bit inst
$BB116_4:                               #   in Loop: Header=BB116_1 Depth=1
	b	$BB116_5 # 16 bit inst
$BB116_5:                               #   in Loop: Header=BB116_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.116)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.116)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	.frame	$16,24,$ra
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 24 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.117)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.117)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.117)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.117)($7)
	sw	$2, 4($3)
	sw	$4, 12($16)
	sw	$5, 8($16)
	li	$2, %hi($__profc___mulsi3_iq2000)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___mulsi3_iq2000)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___mulsi3_iq2000)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___mulsi3_iq2000)($5)
	sw	$2, 4($3)
	li	$2, 0
	sw	$2, 4($16)
	b	$BB117_1 # 16 bit inst
$BB117_1:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 12($16)
	beqz	$2, $BB117_5  # 16 bit inst
	b	$BB117_2 # 16 bit inst
$BB117_2:                               #   in Loop: Header=BB117_1 Depth=1
	li	$2, %hi($__profc___mulsi3_iq2000)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulsi3_iq2000)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	addiu	$2, $16, 12
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB117_4  # 16 bit inst
	b	$BB117_3 # 16 bit inst
$BB117_3:                               #   in Loop: Header=BB117_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.117)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.117)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___mulsi3_iq2000)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulsi3_iq2000)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$3, 8($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	b	$BB117_4 # 16 bit inst
$BB117_4:                               #   in Loop: Header=BB117_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.117)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.117)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 12($16)
	srl	$2, $2, 1
	sw	$2, 12($16)
	lw	$2, 8($16)
	sll	$2, $2, 1
	sw	$2, 8($16)
	b	$BB117_1 # 16 bit inst
$BB117_5:
	lw	$2, 4($16)
	move	$sp, $16
	restore	$16, $17, 24 # 16 bit inst

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
	li	$2, %hi($__profc___mulsi3_lm32)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___mulsi3_lm32)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___mulsi3_lm32)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___mulsi3_lm32)($5)
	sw	$2, 4($3)
	li	$2, 0
	sw	$2, 4($16)
	lw	$2, 12($16)
	bnez	$2, $BB118_2  # 16 bit inst
	b	$BB118_1 # 16 bit inst
$BB118_1:
	li	$2, %hi(__llvm_gcov_ctr.118)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.118)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___mulsi3_lm32)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulsi3_lm32)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, 0
	sw	$2, 16($16)
	b	$BB118_8 # 16 bit inst
$BB118_2:
	li	$2, %hi(__llvm_gcov_ctr.118)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.118)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.118)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.118)($5)
	sw	$2, 4($3)
	b	$BB118_3 # 16 bit inst
$BB118_3:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 8($16)
	beqz	$2, $BB118_7  # 16 bit inst
	b	$BB118_4 # 16 bit inst
$BB118_4:                               #   in Loop: Header=BB118_3 Depth=1
	li	$2, %hi($__profc___mulsi3_lm32)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulsi3_lm32)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	addiu	$2, $16, 8
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB118_6  # 16 bit inst
	b	$BB118_5 # 16 bit inst
$BB118_5:                               #   in Loop: Header=BB118_3 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.118)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.118)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc___mulsi3_lm32)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulsi3_lm32)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$3, 12($16)
	lw	$2, 4($16)
	addu	$2, $2, $3
	sw	$2, 4($16)
	b	$BB118_6 # 16 bit inst
$BB118_6:                               #   in Loop: Header=BB118_3 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.118)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.118)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 28($16)
	sw	$5, 24($16)
	sw	$6, 20($16)
	li	$2, %hi($__profc___udivmodsi4)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___udivmodsi4)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___udivmodsi4)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___udivmodsi4)($5)
	sw	$2, 4($3)
	li	$2, 1
	sw	$2, 16($16)
	li	$2, 0
	sw	$2, 12($16)
	b	$BB119_1 # 16 bit inst
$BB119_1:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 24($16)
	lw	$3, 28($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	bnez	$2, $BB119_6
	b	$BB119_2 # 16 bit inst
$BB119_2:                               #   in Loop: Header=BB119_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.119)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.119)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.119)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.119)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 16($16)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB119_6  # 16 bit inst
	b	$BB119_3 # 16 bit inst
$BB119_3:                               #   in Loop: Header=BB119_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.119)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.119)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	b	$BB119_4 # 16 bit inst
$BB119_4:                               #   in Loop: Header=BB119_1 Depth=1
	li	$2, %hi($__profc___udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 24($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	-2147483648
2:
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$3, $24
	sw	$3, 4($16)                      # 4-byte Folded Spill
	sw	$3, 8($16)                      # 4-byte Folded Spill
	bnez	$2, $BB119_6  # 16 bit inst
	b	$BB119_5 # 16 bit inst
$BB119_5:                               #   in Loop: Header=BB119_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.119)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.119)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc___udivmodsi4)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc___udivmodsi4)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB119_6 # 16 bit inst
$BB119_6:                               #   in Loop: Header=BB119_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB119_8  # 16 bit inst
	b	$BB119_7 # 16 bit inst
$BB119_7:                               #   in Loop: Header=BB119_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.119)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.119)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc___udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 24($16)
	sll	$2, $2, 1
	sw	$2, 24($16)
	lw	$2, 16($16)
	sll	$2, $2, 1
	sw	$2, 16($16)
	b	$BB119_1 # 16 bit inst
$BB119_8:
	b	$BB119_9 # 16 bit inst
$BB119_9:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	beqz	$2, $BB119_13  # 16 bit inst
	b	$BB119_10 # 16 bit inst
$BB119_10:                              #   in Loop: Header=BB119_9 Depth=1
	li	$2, %hi($__profc___udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 28($16)
	lw	$3, 24($16)
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB119_12  # 16 bit inst
	b	$BB119_11 # 16 bit inst
$BB119_11:                              #   in Loop: Header=BB119_9 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.119)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.119)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc___udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	lw	$3, 24($16)
	lw	$2, 28($16)
	subu	$2, $2, $3
	sw	$2, 28($16)
	lw	$3, 16($16)
	lw	$2, 12($16)
	or	$2, $3
	sw	$2, 12($16)
	b	$BB119_12 # 16 bit inst
$BB119_12:                              #   in Loop: Header=BB119_9 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.119)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.119)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 16($16)
	srl	$2, $2, 1
	sw	$2, 16($16)
	lw	$2, 24($16)
	srl	$2, $2, 1
	sw	$2, 24($16)
	b	$BB119_9 # 16 bit inst
$BB119_13:
	lw	$2, 20($16)
	beqz	$2, $BB119_15  # 16 bit inst
	b	$BB119_14 # 16 bit inst
$BB119_14:
	li	$2, %hi(__llvm_gcov_ctr.119)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.119)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	li	$2, %hi($__profc___udivmodsi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4)
	lw	$2, 68($3)
	lw	$4, 64($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 64($3)
	sw	$2, 68($3)
	lw	$2, 28($16)
	sw	$2, 32($16)
	b	$BB119_16 # 16 bit inst
$BB119_15:
	li	$2, %hi(__llvm_gcov_ctr.119)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.119)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	lw	$2, 12($16)
	sw	$2, 32($16)
	b	$BB119_16 # 16 bit inst
$BB119_16:
	lw	$2, 32($16)
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

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
	li	$2, %hi($__profc___mspabi_cmpf)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___mspabi_cmpf)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___mspabi_cmpf)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___mspabi_cmpf)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.120)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.120)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.120)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.120)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___mspabi_cmpf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mspabi_cmpf)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.120)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.120)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___mspabi_cmpf)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mspabi_cmpf)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, 1
	sw	$2, 28($16)
	b	$BB120_5 # 16 bit inst
$BB120_4:
	li	$2, %hi(__llvm_gcov_ctr.120)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.120)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc___mspabi_cmpd)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___mspabi_cmpd)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___mspabi_cmpd)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___mspabi_cmpd)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.121)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.121)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.121)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.121)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___mspabi_cmpd)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mspabi_cmpd)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.121)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.121)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___mspabi_cmpd)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mspabi_cmpd)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, 1
	sw	$2, 36($16)
	b	$BB121_5 # 16 bit inst
$BB121_4:
	li	$2, %hi(__llvm_gcov_ctr.121)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.121)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.122)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.122)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.122)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.122)($7)
	sw	$2, 4($3)
	sw	$4, 4($16)
	sw	$5, 0($16)
	li	$2, %hi($__profc___mspabi_mpysll)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___mspabi_mpysll)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___mspabi_mpysll)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___mspabi_mpysll)($5)
	sw	$2, 4($3)
	lw	$2, 4($16)
	lw	$3, 0($16)
	mult	$2, $3
	mflo	$2
	mfhi	$3
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.123)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.123)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.123)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.123)($7)
	sw	$2, 4($3)
	sw	$4, 4($16)
	sw	$5, 0($16)
	li	$2, %hi($__profc___mspabi_mpyull)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___mspabi_mpyull)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___mspabi_mpyull)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___mspabi_mpyull)($5)
	sw	$2, 4($3)
	lw	$2, 4($16)
	lw	$3, 0($16)
	multu	$2, $3
	mflo	$2
	mfhi	$3
	move	$sp, $16
	restore	$16, $17, 16 # 16 bit inst

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
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 32($16)
	sw	$5, 28($16)
	li	$2, %hi($__profc___mulhi3)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___mulhi3)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___mulhi3)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___mulhi3)($5)
	sw	$2, 4($3)
	li	$2, 0
	sw	$2, 20($16)
	sw	$2, 16($16)
	lw	$3, 28($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB124_2  # 16 bit inst
	b	$BB124_1 # 16 bit inst
$BB124_1:
	li	$2, %hi(__llvm_gcov_ctr.124)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.124)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.124)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.124)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___mulhi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulhi3)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 28($16)
	neg	$2, $2
	sw	$2, 28($16)
	li	$2, 1
	sw	$2, 20($16)
	b	$BB124_2 # 16 bit inst
$BB124_2:
	addiu	$3, $16, 27
	li	$2, 0
	sb	$2, 0($3)
	b	$BB124_3 # 16 bit inst
$BB124_3:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 28($16)
	li	$3, 0
	sw	$3, 12($16)                     # 4-byte Folded Spill
	beqz	$2, $BB124_6  # 16 bit inst
	b	$BB124_4 # 16 bit inst
$BB124_4:                               #   in Loop: Header=BB124_3 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.124)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.124)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___mulhi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulhi3)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	addiu	$2, $16, 27
	lb	$3, 0($2)
	li	$2, 31
	sltu	$2, $3
	move	$2, $24
	sltiu	$3, 32 	# 16 bit inst
	move	$3, $24
	sw	$3, 8($16)                      # 4-byte Folded Spill
	sw	$3, 12($16)                     # 4-byte Folded Spill
	bnez	$2, $BB124_6  # 16 bit inst
	b	$BB124_5 # 16 bit inst
$BB124_5:                               #   in Loop: Header=BB124_3 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.124)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.124)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc___mulhi3)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc___mulhi3)
	lw	$3, 36($4)
	lw	$5, 32($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 32($4)
	sw	$3, 36($4)
	sw	$2, 12($16)                     # 4-byte Folded Spill
	b	$BB124_6 # 16 bit inst
$BB124_6:                               #   in Loop: Header=BB124_3 Depth=1
	lw	$2, 12($16)                     # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB124_11  # 16 bit inst
	b	$BB124_7 # 16 bit inst
$BB124_7:                               #   in Loop: Header=BB124_3 Depth=1
	li	$2, %hi($__profc___mulhi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulhi3)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	addiu	$2, $16, 28
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB124_9  # 16 bit inst
	b	$BB124_8 # 16 bit inst
$BB124_8:                               #   in Loop: Header=BB124_3 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.124)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.124)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc___mulhi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulhi3)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$3, 32($16)
	lw	$2, 16($16)
	addu	$2, $2, $3
	sw	$2, 16($16)
	b	$BB124_9 # 16 bit inst
$BB124_9:                               #   in Loop: Header=BB124_3 Depth=1
	lw	$2, 32($16)
	sll	$2, $2, 1
	sw	$2, 32($16)
	lw	$2, 28($16)
	sra	$2, $2, 1
	sw	$2, 28($16)
	b	$BB124_10 # 16 bit inst
$BB124_10:                              #   in Loop: Header=BB124_3 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.124)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.124)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	addiu	$3, $16, 27
	lbu	$2, 0($3)
	addiu	$2, 1	# 16 bit inst
	sb	$2, 0($3)
	b	$BB124_3 # 16 bit inst
$BB124_11:
	lw	$2, 20($16)
	beqz	$2, $BB124_13  # 16 bit inst
	b	$BB124_12 # 16 bit inst
$BB124_12:
	li	$2, %hi(__llvm_gcov_ctr.124)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.124)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	li	$2, %hi($__profc___mulhi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___mulhi3)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 16($16)
	neg	$2, $2
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB124_14 # 16 bit inst
$BB124_13:
	li	$2, %hi(__llvm_gcov_ctr.124)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.124)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 16($16)
	sw	$2, 4($16)                      # 4-byte Folded Spill
	b	$BB124_14 # 16 bit inst
$BB124_14:
	lw	$2, 4($16)                      # 4-byte Folded Reload
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

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
	.frame	$16,48,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 48 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.125)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.125)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.125)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.125)($7)
	sw	$2, 4($3)
	sw	$4, 32($16)
	sw	$5, 28($16)
	li	$2, %hi($__profc___divsi3)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___divsi3)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___divsi3)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___divsi3)($5)
	sw	$2, 4($3)
	li	$2, 0
	sw	$2, 24($16)
	lw	$3, 32($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB125_2  # 16 bit inst
	b	$BB125_1 # 16 bit inst
$BB125_1:
	li	$2, %hi(__llvm_gcov_ctr.125)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.125)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___divsi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___divsi3)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 32($16)
	neg	$2, $2
	sw	$2, 32($16)
	lw	$2, 24($16)
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 24($16)
	b	$BB125_2 # 16 bit inst
$BB125_2:
	lw	$3, 28($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB125_4  # 16 bit inst
	b	$BB125_3 # 16 bit inst
$BB125_3:
	li	$2, %hi(__llvm_gcov_ctr.125)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.125)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc___divsi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___divsi3)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 28($16)
	neg	$2, $2
	sw	$2, 28($16)
	lw	$2, 24($16)
	sltiu	$2, 1 	# 16 bit inst
	move	$2, $24
	sw	$2, 24($16)
	b	$BB125_4 # 16 bit inst
$BB125_4:
	lw	$4, 32($16)
	lw	$5, 28($16)
	li	$6, 0
	jal	__udivmodsi4
	nop
	sw	$2, 20($16)
	lw	$2, 24($16)
	beqz	$2, $BB125_6  # 16 bit inst
	b	$BB125_5 # 16 bit inst
$BB125_5:
	li	$2, %hi(__llvm_gcov_ctr.125)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.125)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc___divsi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___divsi3)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 20($16)
	neg	$2, $2
	sw	$2, 20($16)
	b	$BB125_6 # 16 bit inst
$BB125_6:
	lw	$2, 20($16)
	move	$sp, $16
	restore	$16, $17, $ra, 48 # 16 bit inst

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
	.frame	$16,48,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 48 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.126)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.126)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.126)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.126)($7)
	sw	$2, 4($3)
	sw	$4, 32($16)
	sw	$5, 28($16)
	li	$2, %hi($__profc___modsi3)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___modsi3)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___modsi3)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___modsi3)($5)
	sw	$2, 4($3)
	li	$2, 0
	sw	$2, 24($16)
	lw	$3, 32($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB126_2  # 16 bit inst
	b	$BB126_1 # 16 bit inst
$BB126_1:
	li	$2, %hi(__llvm_gcov_ctr.126)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.126)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___modsi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___modsi3)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 32($16)
	neg	$2, $2
	sw	$2, 32($16)
	li	$2, 1
	sw	$2, 24($16)
	b	$BB126_2 # 16 bit inst
$BB126_2:
	lw	$3, 28($16)
	move	$2, $zero
	addiu	$2, -1
	slt	$2, $3
	btnez	$BB126_4  # 16 bit inst
	b	$BB126_3 # 16 bit inst
$BB126_3:
	li	$2, %hi(__llvm_gcov_ctr.126)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.126)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc___modsi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___modsi3)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 28($16)
	neg	$2, $2
	sw	$2, 28($16)
	b	$BB126_4 # 16 bit inst
$BB126_4:
	lw	$4, 32($16)
	lw	$5, 28($16)
	li	$6, 1
	jal	__udivmodsi4
	nop
	sw	$2, 20($16)
	lw	$2, 24($16)
	beqz	$2, $BB126_6  # 16 bit inst
	b	$BB126_5 # 16 bit inst
$BB126_5:
	li	$2, %hi(__llvm_gcov_ctr.126)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.126)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc___modsi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___modsi3)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	lw	$2, 20($16)
	neg	$2, $2
	sw	$2, 20($16)
	b	$BB126_6 # 16 bit inst
$BB126_6:
	lw	$2, 20($16)
	move	$sp, $16
	restore	$16, $17, $ra, 48 # 16 bit inst

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
	.frame	$16,32,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 32 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	addiu	$2, $16, 24
	sh	$4, 0($2)
	addiu	$2, $16, 22
	sh	$5, 0($2)
	sw	$6, 16($16)
	li	$2, %hi($__profc___udivmodhi4)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___udivmodhi4)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___udivmodhi4)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___udivmodhi4)($5)
	sw	$2, 4($3)
	addiu	$3, $16, 14
	li	$2, 1
	sh	$2, 0($3)
	addiu	$3, $16, 12
	li	$2, 0
	sh	$2, 0($3)
	b	$BB127_1 # 16 bit inst
$BB127_1:                               # =>This Inner Loop Header: Depth=1
	addiu	$2, $16, 22
	lhu	$3, 0($2)
	addiu	$2, $16, 24
	lhu	$4, 0($2)
	li	$2, 0
	slt	$3, $4
	sw	$2, 8($16)                      # 4-byte Folded Spill
	bteqz	$BB127_6
	b	$BB127_2 # 16 bit inst
$BB127_2:                               #   in Loop: Header=BB127_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.127)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.127)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.127)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.127)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___udivmodhi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodhi4)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	addiu	$2, $16, 14
	lhu	$2, 0($2)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB127_6  # 16 bit inst
	b	$BB127_3 # 16 bit inst
$BB127_3:                               #   in Loop: Header=BB127_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.127)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.127)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___udivmodhi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodhi4)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	b	$BB127_4 # 16 bit inst
$BB127_4:                               #   in Loop: Header=BB127_1 Depth=1
	li	$2, %hi($__profc___udivmodhi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodhi4)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	addiu	$2, $16, 22
	lhu	$2, 0($2)
	li	$3, 32768
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$3, $24
	sw	$3, 4($16)                      # 4-byte Folded Spill
	sw	$3, 8($16)                      # 4-byte Folded Spill
	bnez	$2, $BB127_6  # 16 bit inst
	b	$BB127_5 # 16 bit inst
$BB127_5:                               #   in Loop: Header=BB127_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.127)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.127)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc___udivmodhi4)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc___udivmodhi4)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB127_6 # 16 bit inst
$BB127_6:                               #   in Loop: Header=BB127_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB127_8  # 16 bit inst
	b	$BB127_7 # 16 bit inst
$BB127_7:                               #   in Loop: Header=BB127_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.127)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.127)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc___udivmodhi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodhi4)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	addiu	$3, $16, 22
	lhu	$2, 0($3)
	sll	$2, $2, 1
	sh	$2, 0($3)
	addiu	$3, $16, 14
	lhu	$2, 0($3)
	sll	$2, $2, 1
	sh	$2, 0($3)
	b	$BB127_1 # 16 bit inst
$BB127_8:
	b	$BB127_9 # 16 bit inst
$BB127_9:                               # =>This Inner Loop Header: Depth=1
	addiu	$2, $16, 14
	lhu	$2, 0($2)
	beqz	$2, $BB127_13  # 16 bit inst
	b	$BB127_10 # 16 bit inst
$BB127_10:                              #   in Loop: Header=BB127_9 Depth=1
	li	$2, %hi($__profc___udivmodhi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodhi4)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	addiu	$2, $16, 24
	lhu	$2, 0($2)
	addiu	$3, $16, 22
	lhu	$3, 0($3)
	slt	$2, $3
	btnez	$BB127_12  # 16 bit inst
	b	$BB127_11 # 16 bit inst
$BB127_11:                              #   in Loop: Header=BB127_9 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.127)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.127)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc___udivmodhi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodhi4)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	addiu	$2, $16, 22
	lhu	$4, 0($2)
	addiu	$3, $16, 24
	lhu	$2, 0($3)
	subu	$2, $2, $4
	sh	$2, 0($3)
	addiu	$2, $16, 14
	lhu	$4, 0($2)
	addiu	$3, $16, 12
	lhu	$2, 0($3)
	or	$2, $4
	sh	$2, 0($3)
	b	$BB127_12 # 16 bit inst
$BB127_12:                              #   in Loop: Header=BB127_9 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.127)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.127)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	addiu	$3, $16, 14
	lhu	$2, 0($3)
	srl	$2, $2, 1
	sh	$2, 0($3)
	addiu	$3, $16, 22
	lhu	$2, 0($3)
	srl	$2, $2, 1
	sh	$2, 0($3)
	b	$BB127_9 # 16 bit inst
$BB127_13:
	lw	$2, 16($16)
	beqz	$2, $BB127_15  # 16 bit inst
	b	$BB127_14 # 16 bit inst
$BB127_14:
	li	$2, %hi(__llvm_gcov_ctr.127)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.127)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	li	$2, %hi($__profc___udivmodhi4)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodhi4)
	lw	$2, 68($3)
	lw	$4, 64($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 64($3)
	sw	$2, 68($3)
	addiu	$2, $16, 24
	lhu	$2, 0($2)
	addiu	$3, $16, 26
	sh	$2, 0($3)
	b	$BB127_16 # 16 bit inst
$BB127_15:
	li	$2, %hi(__llvm_gcov_ctr.127)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.127)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	addiu	$2, $16, 12
	lhu	$2, 0($2)
	addiu	$3, $16, 26
	sh	$2, 0($3)
	b	$BB127_16 # 16 bit inst
$BB127_16:
	addiu	$2, $16, 26
	lhu	$2, 0($2)
	move	$sp, $16
	restore	$16, 32 # 16 bit inst

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
	.frame	$16,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, 40 # 16 bit inst

	move	$16, $sp
	sw	$4, 28($16)
	sw	$5, 24($16)
	sw	$6, 20($16)
	li	$2, %hi($__profc___udivmodsi4_libgcc)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___udivmodsi4_libgcc)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___udivmodsi4_libgcc)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___udivmodsi4_libgcc)($5)
	sw	$2, 4($3)
	li	$2, 1
	sw	$2, 16($16)
	li	$2, 0
	sw	$2, 12($16)
	b	$BB128_1 # 16 bit inst
$BB128_1:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 24($16)
	lw	$3, 28($16)
	sltu	$2, $3
	move	$2, $24
	li	$3, 1
	xor	$2, $3
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	bnez	$2, $BB128_6
	b	$BB128_2 # 16 bit inst
$BB128_2:                               #   in Loop: Header=BB128_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.128)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.128)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.128)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.128)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___udivmodsi4_libgcc)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4_libgcc)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	lw	$2, 16($16)
	li	$3, 0
	sw	$3, 8($16)                      # 4-byte Folded Spill
	beqz	$2, $BB128_6  # 16 bit inst
	b	$BB128_3 # 16 bit inst
$BB128_3:                               #   in Loop: Header=BB128_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.128)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.128)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___udivmodsi4_libgcc)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4_libgcc)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	b	$BB128_4 # 16 bit inst
$BB128_4:                               #   in Loop: Header=BB128_1 Depth=1
	li	$2, %hi($__profc___udivmodsi4_libgcc)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4_libgcc)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 24($16)
	lw	$3, 1f
	b	2f
	.align	2
1: 	.word	-2147483648
2:
	and	$2, $3
	sltiu	$2, 1 	# 16 bit inst
	move	$3, $24
	sw	$3, 4($16)                      # 4-byte Folded Spill
	sw	$3, 8($16)                      # 4-byte Folded Spill
	bnez	$2, $BB128_6  # 16 bit inst
	b	$BB128_5 # 16 bit inst
$BB128_5:                               #   in Loop: Header=BB128_1 Depth=1
	lw	$2, 4($16)                      # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.128)
	sll	$4, $3, 16
	addiu	$4, %lo(__llvm_gcov_ctr.128)
	lw	$3, 20($4)
	lw	$5, 16($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 16($4)
	sw	$3, 20($4)
	li	$3, %hi($__profc___udivmodsi4_libgcc)
	sll	$4, $3, 16
	addiu	$4, %lo($__profc___udivmodsi4_libgcc)
	lw	$3, 28($4)
	lw	$5, 24($4)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$6, $24
	addu	$3, $3, $6
	sw	$5, 24($4)
	sw	$3, 28($4)
	sw	$2, 8($16)                      # 4-byte Folded Spill
	b	$BB128_6 # 16 bit inst
$BB128_6:                               #   in Loop: Header=BB128_1 Depth=1
	lw	$2, 8($16)                      # 4-byte Folded Reload
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB128_8  # 16 bit inst
	b	$BB128_7 # 16 bit inst
$BB128_7:                               #   in Loop: Header=BB128_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.128)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.128)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc___udivmodsi4_libgcc)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4_libgcc)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	lw	$2, 24($16)
	sll	$2, $2, 1
	sw	$2, 24($16)
	lw	$2, 16($16)
	sll	$2, $2, 1
	sw	$2, 16($16)
	b	$BB128_1 # 16 bit inst
$BB128_8:
	b	$BB128_9 # 16 bit inst
$BB128_9:                               # =>This Inner Loop Header: Depth=1
	lw	$2, 16($16)
	beqz	$2, $BB128_13  # 16 bit inst
	b	$BB128_10 # 16 bit inst
$BB128_10:                              #   in Loop: Header=BB128_9 Depth=1
	li	$2, %hi($__profc___udivmodsi4_libgcc)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4_libgcc)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	lw	$2, 28($16)
	lw	$3, 24($16)
	sltu	$2, $3
	move	$2, $24
	bnez	$2, $BB128_12  # 16 bit inst
	b	$BB128_11 # 16 bit inst
$BB128_11:                              #   in Loop: Header=BB128_9 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.128)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.128)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, %hi($__profc___udivmodsi4_libgcc)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4_libgcc)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	lw	$3, 24($16)
	lw	$2, 28($16)
	subu	$2, $2, $3
	sw	$2, 28($16)
	lw	$3, 16($16)
	lw	$2, 12($16)
	or	$2, $3
	sw	$2, 12($16)
	b	$BB128_12 # 16 bit inst
$BB128_12:                              #   in Loop: Header=BB128_9 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.128)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.128)
	lw	$2, 44($3)
	lw	$4, 40($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 40($3)
	sw	$2, 44($3)
	lw	$2, 16($16)
	srl	$2, $2, 1
	sw	$2, 16($16)
	lw	$2, 24($16)
	srl	$2, $2, 1
	sw	$2, 24($16)
	b	$BB128_9 # 16 bit inst
$BB128_13:
	lw	$2, 20($16)
	beqz	$2, $BB128_15  # 16 bit inst
	b	$BB128_14 # 16 bit inst
$BB128_14:
	li	$2, %hi(__llvm_gcov_ctr.128)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.128)
	lw	$2, 52($3)
	lw	$4, 48($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 48($3)
	sw	$2, 52($3)
	li	$2, %hi($__profc___udivmodsi4_libgcc)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___udivmodsi4_libgcc)
	lw	$2, 68($3)
	lw	$4, 64($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 64($3)
	sw	$2, 68($3)
	lw	$2, 28($16)
	sw	$2, 32($16)
	b	$BB128_16 # 16 bit inst
$BB128_15:
	li	$2, %hi(__llvm_gcov_ctr.128)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.128)
	lw	$2, 60($3)
	lw	$4, 56($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 56($3)
	sw	$2, 60($3)
	lw	$2, 12($16)
	sw	$2, 32($16)
	b	$BB128_16 # 16 bit inst
$BB128_16:
	lw	$2, 32($16)
	move	$sp, $16
	restore	$16, 40 # 16 bit inst

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
	li	$2, %hi($__profc___ashldi3)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___ashldi3)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___ashldi3)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___ashldi3)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.129)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.129)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.129)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.129)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___ashldi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___ashldi3)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.129)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.129)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___ashldi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___ashldi3)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 24($16)
	lw	$3, 28($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB129_6 # 16 bit inst
$BB129_4:
	li	$2, %hi(__llvm_gcov_ctr.129)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.129)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc___ashrdi3)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___ashrdi3)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___ashrdi3)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___ashrdi3)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.130)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.130)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.130)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.130)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___ashrdi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___ashrdi3)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.130)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.130)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___ashrdi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___ashrdi3)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 24($16)
	lw	$3, 28($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB130_6 # 16 bit inst
$BB130_4:
	li	$2, %hi(__llvm_gcov_ctr.130)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.130)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.131)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.131)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.131)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.131)($7)
	sw	$2, 4($3)
	sw	$5, 4($16)
	sw	$4, 0($16)
	li	$2, %hi($__profc___bswapdi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___bswapdi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___bswapdi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___bswapdi2)($5)
	sw	$2, 4($3)
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
	restore	$16, $17, 16 # 16 bit inst

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
	li	$2, %hi(__llvm_gcov_ctr.132)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.132)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.132)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.132)($6)
	sw	$2, 4($3)
	sw	$4, 0($16)
	li	$2, %hi($__profc___bswapsi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___bswapsi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___bswapsi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___bswapsi2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.133)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.133)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.133)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.133)($6)
	sw	$2, 4($3)
	sw	$4, 16($16)
	li	$2, %hi($__profc___clzsi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___clzsi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___clzsi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___clzsi2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc___cmpdi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___cmpdi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___cmpdi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___cmpdi2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.134)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.134)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.134)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.134)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___cmpdi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmpdi2)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.134)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.134)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___cmpdi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmpdi2)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.134)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.134)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc___cmpdi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmpdi2)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.134)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.134)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc___cmpdi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___cmpdi2)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, 2
	sw	$2, 32($16)
	b	$BB134_9 # 16 bit inst
$BB134_8:
	li	$2, %hi(__llvm_gcov_ctr.134)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.134)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
	.frame	$16,64,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 64 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.135)
	sll	$3, $2, 16
	sw	$3, 24($16)                     # 4-byte Folded Spill
	move	$2, $3
	addiu	$2, %lo(__llvm_gcov_ctr.135)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$17, %lo(__llvm_gcov_ctr.135)($3)
	addiu	$17, 1	# 16 bit inst
	sltiu	$17, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 20($16)                     # 4-byte Folded Reload
	sw	$2, 28($16)                     # 4-byte Folded Spill
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$17, %lo(__llvm_gcov_ctr.135)($2)
	lw	$2, 28($16)                     # 4-byte Folded Reload
	sw	$2, 4($3)
	sw	$5, 44($16)
	sw	$4, 40($16)
	sw	$7, 36($16)
	sw	$6, 32($16)
	li	$2, %hi($__profc___aeabi_lcmp)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___aeabi_lcmp)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___aeabi_lcmp)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___aeabi_lcmp)($5)
	sw	$2, 4($3)
	lw	$5, 44($16)
	lw	$4, 40($16)
	lw	$7, 36($16)
	lw	$6, 32($16)
	jal	__cmpdi2
	nop
	addiu	$2, -1	# 16 bit inst
	move	$sp, $16
	restore	$16, $17, $ra, 64 # 16 bit inst

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
	li	$2, %hi(__llvm_gcov_ctr.136)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.136)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.136)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.136)($6)
	sw	$2, 4($3)
	sw	$4, 16($16)
	li	$2, %hi($__profc___ctzsi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___ctzsi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___ctzsi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___ctzsi2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc___lshrdi3)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___lshrdi3)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___lshrdi3)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___lshrdi3)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.137)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.137)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.137)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.137)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___lshrdi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___lshrdi3)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.137)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.137)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___lshrdi3)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___lshrdi3)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	lw	$2, 24($16)
	lw	$3, 28($16)
	sw	$3, 36($16)
	sw	$2, 32($16)
	b	$BB137_6 # 16 bit inst
$BB137_4:
	li	$2, %hi(__llvm_gcov_ctr.137)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.137)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 40 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr.138)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.138)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.138)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.138)($7)
	sw	$2, 4($3)
	sw	$4, 28($16)
	sw	$5, 24($16)
	li	$2, %hi($__profc___muldsi3)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___muldsi3)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___muldsi3)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___muldsi3)($5)
	sw	$2, 4($3)
	li	$2, 16
	sw	$2, 12($16)
	li	$2, 65535
	sw	$2, 8($16)
	addiu	$2, $16, 28
	lhu	$4, 0($2)
	addiu	$3, $16, 24
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
	restore	$16, $17, 40 # 16 bit inst

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
	.frame	$16,88,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 88 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.139)
	sll	$3, $2, 16
	sw	$3, 24($16)                     # 4-byte Folded Spill
	move	$2, $3
	addiu	$2, %lo(__llvm_gcov_ctr.139)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$17, %lo(__llvm_gcov_ctr.139)($3)
	addiu	$17, 1	# 16 bit inst
	sltiu	$17, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 20($16)                     # 4-byte Folded Reload
	sw	$2, 28($16)                     # 4-byte Folded Spill
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$17, %lo(__llvm_gcov_ctr.139)($2)
	lw	$2, 28($16)                     # 4-byte Folded Reload
	sw	$2, 4($3)
	sw	$5, 68($16)
	sw	$4, 64($16)
	sw	$7, 60($16)
	sw	$6, 56($16)
	li	$2, %hi($__profc___muldi3_compiler_rt)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___muldi3_compiler_rt)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___muldi3_compiler_rt)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___muldi3_compiler_rt)($5)
	sw	$2, 4($3)
	lw	$2, 64($16)
	lw	$3, 68($16)
	sw	$3, 52($16)
	sw	$2, 48($16)
	lw	$2, 56($16)
	lw	$3, 60($16)
	sw	$3, 44($16)
	sw	$2, 40($16)
	lw	$4, 48($16)
	lw	$5, 40($16)
	jal	__muldsi3
	nop
	sw	$3, 36($16)
	sw	$2, 32($16)
	lw	$2, 52($16)
	lw	$3, 40($16)
	mult	$2, $3
	mflo	$2
	lw	$3, 48($16)
	lw	$4, 44($16)
	mult	$3, $4
	mflo	$3
	addu	$3, $2, $3
	lw	$2, 36($16)
	addu	$2, $2, $3
	sw	$2, 36($16)
	lw	$2, 32($16)
	lw	$3, 36($16)
	move	$sp, $16
	restore	$16, $17, $ra, 88 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 16 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.140)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.140)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.140)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.140)($7)
	sw	$2, 4($3)
	sw	$5, 4($16)
	sw	$4, 0($16)
	li	$2, %hi($__profc___negdi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___negdi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___negdi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___negdi2)($5)
	sw	$2, 4($3)
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
	restore	$16, $17, 16 # 16 bit inst

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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 32 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.141)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.141)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.141)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.141)($7)
	sw	$2, 4($3)
	sw	$5, 20($16)
	sw	$4, 16($16)
	li	$2, %hi($__profc___paritydi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___paritydi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___paritydi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___paritydi2)($5)
	sw	$2, 4($3)
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
	restore	$16, $17, 32 # 16 bit inst

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
	li	$2, %hi(__llvm_gcov_ctr.142)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.142)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.142)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.142)($6)
	sw	$2, 4($3)
	sw	$4, 8($16)
	li	$2, %hi($__profc___paritysi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___paritysi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___paritysi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___paritysi2)($5)
	sw	$2, 4($3)
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
	.mask 	0x00030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, 32 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.143)
	sll	$7, $2, 16
	move	$3, $7
	addiu	$3, %lo(__llvm_gcov_ctr.143)
	lw	$2, 4($3)
	lw	$6, %lo(__llvm_gcov_ctr.143)($7)
	addiu	$6, 1	# 16 bit inst
	sltiu	$6, 1 	# 16 bit inst
	move	$17, $24
	addu	$2, $2, $17
	sw	$6, %lo(__llvm_gcov_ctr.143)($7)
	sw	$2, 4($3)
	sw	$5, 20($16)
	sw	$4, 16($16)
	li	$2, %hi($__profc___popcountdi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___popcountdi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___popcountdi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___popcountdi2)($5)
	sw	$2, 4($3)
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
	restore	$16, $17, 32 # 16 bit inst

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
	li	$2, %hi(__llvm_gcov_ctr.144)
	sll	$6, $2, 16
	move	$3, $6
	addiu	$3, %lo(__llvm_gcov_ctr.144)
	lw	$2, 4($3)
	lw	$5, %lo(__llvm_gcov_ctr.144)($6)
	addiu	$5, 1	# 16 bit inst
	sltiu	$5, 1 	# 16 bit inst
	move	$7, $24
	addu	$2, $2, $7
	sw	$5, %lo(__llvm_gcov_ctr.144)($6)
	sw	$2, 4($3)
	sw	$4, 8($16)
	li	$2, %hi($__profc___popcountsi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___popcountsi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___popcountsi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___popcountsi2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc___powidf2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___powidf2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___powidf2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___powidf2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc___powidf2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___powidf2)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	addiu	$2, $16, 36
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB145_3  # 16 bit inst
	b	$BB145_2 # 16 bit inst
$BB145_2:                               #   in Loop: Header=BB145_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.145)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.145)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.145)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.145)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___powidf2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___powidf2)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc___powidf2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___powidf2)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB145_6 # 16 bit inst
$BB145_5:                               #   in Loop: Header=BB145_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.145)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.145)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.145)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.145)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc___powidf2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___powidf2)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
	li	$2, %hi(__llvm_gcov_ctr.145)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.145)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi($__profc___powisf2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___powisf2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___powisf2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___powisf2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi($__profc___powisf2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___powisf2)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	addiu	$2, $16, 32
	lbu	$2, 0($2)
	li	$3, 1
	and	$2, $3
	beqz	$2, $BB146_3  # 16 bit inst
	b	$BB146_2 # 16 bit inst
$BB146_2:                               #   in Loop: Header=BB146_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.146)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.146)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.146)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.146)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___powisf2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___powisf2)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi($__profc___powisf2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___powisf2)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	b	$BB146_6 # 16 bit inst
$BB146_5:                               #   in Loop: Header=BB146_1 Depth=1
	li	$2, %hi(__llvm_gcov_ctr.146)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.146)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.146)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.146)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc___powisf2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___powisf2)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
	li	$2, %hi(__llvm_gcov_ctr.146)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.146)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi($__profc___ucmpdi2)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___ucmpdi2)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___ucmpdi2)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___ucmpdi2)($5)
	sw	$2, 4($3)
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
	li	$2, %hi(__llvm_gcov_ctr.147)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo(__llvm_gcov_ctr.147)
	lw	$2, 4($3)
	lw	$4, %lo(__llvm_gcov_ctr.147)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo(__llvm_gcov_ctr.147)($5)
	sw	$2, 4($3)
	li	$2, %hi($__profc___ucmpdi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___ucmpdi2)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
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
	li	$2, %hi(__llvm_gcov_ctr.147)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.147)
	lw	$2, 12($3)
	lw	$4, 8($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 8($3)
	sw	$2, 12($3)
	li	$2, %hi($__profc___ucmpdi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___ucmpdi2)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
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
	li	$2, %hi(__llvm_gcov_ctr.147)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.147)
	lw	$2, 20($3)
	lw	$4, 16($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 16($3)
	sw	$2, 20($3)
	li	$2, %hi($__profc___ucmpdi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___ucmpdi2)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
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
	li	$2, %hi(__llvm_gcov_ctr.147)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.147)
	lw	$2, 28($3)
	lw	$4, 24($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 24($3)
	sw	$2, 28($3)
	li	$2, %hi($__profc___ucmpdi2)
	sll	$3, $2, 16
	addiu	$3, %lo($__profc___ucmpdi2)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
	li	$2, 2
	sw	$2, 32($16)
	b	$BB147_9 # 16 bit inst
$BB147_8:
	li	$2, %hi(__llvm_gcov_ctr.147)
	sll	$3, $2, 16
	addiu	$3, %lo(__llvm_gcov_ctr.147)
	lw	$2, 36($3)
	lw	$4, 32($3)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$5, $24
	addu	$2, $2, $5
	sw	$4, 32($3)
	sw	$2, 36($3)
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
	.frame	$16,64,$ra
	.mask 	0x80030000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $17, $ra, 64 # 16 bit inst

	move	$16, $sp
                                        # kill: def $v0 killed $a3
                                        # kill: def $v0 killed $a2
                                        # kill: def $v0 killed $a1
                                        # kill: def $v0 killed $a0
	li	$2, %hi(__llvm_gcov_ctr.148)
	sll	$3, $2, 16
	sw	$3, 24($16)                     # 4-byte Folded Spill
	move	$2, $3
	addiu	$2, %lo(__llvm_gcov_ctr.148)
	sw	$2, 20($16)                     # 4-byte Folded Spill
	lw	$2, 4($2)
	lw	$17, %lo(__llvm_gcov_ctr.148)($3)
	addiu	$17, 1	# 16 bit inst
	sltiu	$17, 1 	# 16 bit inst
	move	$3, $24
	addu	$2, $2, $3
	lw	$3, 20($16)                     # 4-byte Folded Reload
	sw	$2, 28($16)                     # 4-byte Folded Spill
	lw	$2, 24($16)                     # 4-byte Folded Reload
	sw	$17, %lo(__llvm_gcov_ctr.148)($2)
	lw	$2, 28($16)                     # 4-byte Folded Reload
	sw	$2, 4($3)
	sw	$5, 44($16)
	sw	$4, 40($16)
	sw	$7, 36($16)
	sw	$6, 32($16)
	li	$2, %hi($__profc___aeabi_ulcmp)
	sll	$5, $2, 16
	move	$3, $5
	addiu	$3, %lo($__profc___aeabi_ulcmp)
	lw	$2, 4($3)
	lw	$4, %lo($__profc___aeabi_ulcmp)($5)
	addiu	$4, 1	# 16 bit inst
	sltiu	$4, 1 	# 16 bit inst
	move	$6, $24
	addu	$2, $2, $6
	sw	$4, %lo($__profc___aeabi_ulcmp)($5)
	sw	$2, 4($3)
	lw	$5, 44($16)
	lw	$4, 40($16)
	lw	$7, 36($16)
	lw	$6, 32($16)
	jal	__ucmpdi2
	nop
	addiu	$2, -1	# 16 bit inst
	move	$sp, $16
	restore	$16, $17, $ra, 64 # 16 bit inst

	jrc	$ra
	.end	__aeabi_ulcmp
$func_end148:
	.size	__aeabi_ulcmp, ($func_end148)-__aeabi_ulcmp
                                        # -- End function
	.p2align	2                               # -- Begin function __llvm_gcov_writeout
	.type	__llvm_gcov_writeout,@function
	.set	nomicromips
	.set	mips16
	.ent	__llvm_gcov_writeout
__llvm_gcov_writeout:                   # @__llvm_gcov_writeout
	.frame	$16,56,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 56 # 16 bit inst

	move	$16, $sp
	li	$2, 0
	sw	$2, 44($16)                     # 4-byte Folded Spill
	b	$BB149_1 # 16 bit inst
$BB149_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB149_2 Depth 2
	lw	$2, 44($16)                     # 4-byte Folded Reload
	sw	$2, 20($16)                     # 4-byte Folded Spill
	li	$3, 24
	mult	$2, $3
	mflo	$3
	li	$2, %hi(__llvm_internal_gcov_emit_file_info)
	sll	$2, $2, 16
	addiu	$2, %lo(__llvm_internal_gcov_emit_file_info)
	addu	$2, $2, $3
	sw	$2, 24($16)                     # 4-byte Folded Spill
	lw	$4, 0($2)
	lw	$5, 4($2)
	lw	$6, 8($2)
	jal	llvm_gcda_start_file
	nop
	lw	$2, 24($16)                     # 4-byte Folded Reload
	lw	$3, 12($2)
	sw	$3, 28($16)                     # 4-byte Folded Spill
	lw	$4, 16($2)
	sw	$4, 32($16)                     # 4-byte Folded Spill
	lw	$2, 20($2)
	sw	$2, 36($16)                     # 4-byte Folded Spill
	li	$2, 0
	slti	$3, 1 	# 16 bit inst
	sw	$2, 40($16)                     # 4-byte Folded Spill
	btnez	$BB149_3  # 16 bit inst
	b	$BB149_2 # 16 bit inst
$BB149_2:                               #   Parent Loop BB149_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$3, 40($16)                     # 4-byte Folded Reload
	lw	$2, 32($16)                     # 4-byte Folded Reload
	sw	$3, 16($16)                     # 4-byte Folded Spill
	li	$4, 12
	mult	$3, $4
	mflo	$3
	addu	$2, $2, $3
	lw	$4, 0($2)
	lw	$5, 4($2)
	lw	$6, 8($2)
	jal	llvm_gcda_emit_function
	nop
	lw	$2, 36($16)                     # 4-byte Folded Reload
	lw	$3, 16($16)                     # 4-byte Folded Reload
	sll	$3, $3, 3
	addu	$2, $2, $3
	lw	$4, 0($2)
	lw	$5, 4($2)
	jal	llvm_gcda_emit_arcs
	nop
	lw	$2, 16($16)                     # 4-byte Folded Reload
	lw	$3, 28($16)                     # 4-byte Folded Reload
	addiu	$2, 1	# 16 bit inst
	slt	$2, $3
	sw	$2, 40($16)                     # 4-byte Folded Spill
	btnez	$BB149_2  # 16 bit inst
	b	$BB149_3 # 16 bit inst
$BB149_3:                               #   in Loop: Header=BB149_1 Depth=1
	jal	llvm_gcda_summary_info
	nop
	jal	llvm_gcda_end_file
	nop
	lw	$2, 20($16)                     # 4-byte Folded Reload
	addiu	$2, 1	# 16 bit inst
	slti	$2, 1 	# 16 bit inst
	sw	$2, 44($16)                     # 4-byte Folded Spill
	btnez	$BB149_1  # 16 bit inst
	b	$BB149_4 # 16 bit inst
$BB149_4:
	move	$sp, $16
	restore	$16, $ra, 56 # 16 bit inst

	jrc	$ra
	.end	__llvm_gcov_writeout
$func_end149:
	.size	__llvm_gcov_writeout, ($func_end149)-__llvm_gcov_writeout
                                        # -- End function
	.p2align	2                               # -- Begin function __llvm_gcov_reset
	.type	__llvm_gcov_reset,@function
	.set	nomicromips
	.set	mips16
	.ent	__llvm_gcov_reset
__llvm_gcov_reset:                      # @__llvm_gcov_reset
	.frame	$16,48,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 48 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_ctr)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr)
	li	$5, 0
	sw	$5, 36($16)                     # 4-byte Folded Spill
	li	$6, 40
	sw	$6, 32($16)                     # 4-byte Folded Spill
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.1)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.1)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.2)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.2)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.3)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.3)
	jal	memset
	nop
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.4)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.4)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.4)($2)
	li	$2, %hi(__llvm_gcov_ctr.5)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.5)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.5)($2)
	li	$2, %hi(__llvm_gcov_ctr.6)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.6)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.6)($2)
	li	$2, %hi(__llvm_gcov_ctr.7)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.7)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.7)($2)
	li	$2, %hi(__llvm_gcov_ctr.8)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.8)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.8)($2)
	li	$2, %hi(__llvm_gcov_ctr.9)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.9)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.9)($2)
	li	$2, %hi(__llvm_gcov_ctr.10)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.10)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.10)($2)
	li	$2, %hi(__llvm_gcov_ctr.11)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.11)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.11)($2)
	li	$2, %hi(__llvm_gcov_ctr.12)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.12)
	li	$6, 56
	sw	$6, 24($16)                     # 4-byte Folded Spill
	jal	memset
	nop
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.13)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.13)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.13)($2)
	li	$2, %hi(__llvm_gcov_ctr.14)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.14)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.14)($2)
	li	$2, %hi(__llvm_gcov_ctr.15)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.15)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.15)($2)
	li	$2, %hi(__llvm_gcov_ctr.16)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.16)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.16)($2)
	li	$2, %hi(__llvm_gcov_ctr.17)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.17)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.17)($2)
	li	$2, %hi(__llvm_gcov_ctr.18)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.18)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.18)($2)
	li	$2, %hi(__llvm_gcov_ctr.19)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.19)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.19)($2)
	li	$2, %hi(__llvm_gcov_ctr.20)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.20)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.20)($2)
	li	$2, %hi(__llvm_gcov_ctr.21)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.21)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.21)($2)
	li	$2, %hi(__llvm_gcov_ctr.22)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.22)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.22)($2)
	li	$2, %hi(__llvm_gcov_ctr.23)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.23)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.23)($2)
	li	$2, %hi(__llvm_gcov_ctr.24)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.24)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.24)($2)
	li	$2, %hi(__llvm_gcov_ctr.25)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.25)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.25)($2)
	li	$2, %hi(__llvm_gcov_ctr.26)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.26)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.26)($2)
	li	$2, %hi(__llvm_gcov_ctr.27)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.27)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.27)($2)
	li	$2, %hi(__llvm_gcov_ctr.28)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.28)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.28)($2)
	li	$2, %hi(__llvm_gcov_ctr.29)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.29)
	li	$6, 48
	sw	$6, 20($16)                     # 4-byte Folded Spill
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.30)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.30)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.31)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.31)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.32)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.32)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.33)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.33)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.34)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.34)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.35)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.35)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.35)($2)
	li	$2, %hi(__llvm_gcov_ctr.36)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.36)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.36)($2)
	li	$2, %hi(__llvm_gcov_ctr.37)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.37)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.37)($2)
	li	$2, %hi(__llvm_gcov_ctr.38)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.38)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.38)($2)
	li	$2, %hi(__llvm_gcov_ctr.39)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.39)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.39)($2)
	li	$2, %hi(__llvm_gcov_ctr.40)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.40)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.40)($2)
	li	$2, %hi(__llvm_gcov_ctr.41)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.41)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.41)($2)
	li	$2, %hi(__llvm_gcov_ctr.42)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.42)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.42)($2)
	li	$2, %hi(__llvm_gcov_ctr.43)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.43)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.44)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.44)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.45)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.45)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.46)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.46)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.46)($2)
	li	$2, %hi(__llvm_gcov_ctr.47)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.47)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.47)($2)
	li	$2, %hi(__llvm_gcov_ctr.48)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.48)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.48)($2)
	li	$2, %hi(__llvm_gcov_ctr.49)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.49)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.49)($2)
	li	$2, %hi(__llvm_gcov_ctr.50)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.50)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.50)($2)
	li	$2, %hi(__llvm_gcov_ctr.51)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.51)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.51)($2)
	li	$2, %hi(__llvm_gcov_ctr.52)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.52)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.52)($2)
	li	$2, %hi(__llvm_gcov_ctr.53)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.53)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.53)($2)
	li	$2, %hi(__llvm_gcov_ctr.54)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.54)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.54)($2)
	li	$2, %hi(__llvm_gcov_ctr.55)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.55)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.56)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.56)
	jal	memset
	nop
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.57)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.57)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.57)($2)
	li	$2, %hi(__llvm_gcov_ctr.58)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.58)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.58)($2)
	li	$2, %hi(__llvm_gcov_ctr.59)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.59)
	li	$6, 64
	sw	$6, 28($16)                     # 4-byte Folded Spill
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.60)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.60)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.61)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.61)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.62)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.62)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.62)($2)
	li	$2, %hi(__llvm_gcov_ctr.63)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.63)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.64)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.64)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.64)($2)
	li	$2, %hi(__llvm_gcov_ctr.65)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.65)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.66)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.66)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.66)($2)
	li	$2, %hi(__llvm_gcov_ctr.67)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.67)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.67)($2)
	li	$2, %hi(__llvm_gcov_ctr.68)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.68)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.68)($2)
	li	$2, %hi(__llvm_gcov_ctr.69)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.69)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.69)($2)
	li	$2, %hi(__llvm_gcov_ctr.70)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.70)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.70)($2)
	li	$2, %hi(__llvm_gcov_ctr.71)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.71)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.71)($2)
	li	$2, %hi(__llvm_gcov_ctr.72)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.72)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.72)($2)
	li	$2, %hi(__llvm_gcov_ctr.73)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.73)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.73)($2)
	li	$2, %hi(__llvm_gcov_ctr.74)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.74)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.74)($2)
	li	$2, %hi(__llvm_gcov_ctr.75)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.75)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.75)($2)
	li	$2, %hi(__llvm_gcov_ctr.76)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.76)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.76)($2)
	li	$2, %hi(__llvm_gcov_ctr.77)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.77)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.77)($2)
	li	$2, %hi(__llvm_gcov_ctr.78)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.78)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.78)($2)
	li	$2, %hi(__llvm_gcov_ctr.79)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.79)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.79)($2)
	li	$2, %hi(__llvm_gcov_ctr.80)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.80)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.80)($2)
	li	$2, %hi(__llvm_gcov_ctr.81)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.81)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.81)($2)
	li	$2, %hi(__llvm_gcov_ctr.82)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.82)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.82)($2)
	li	$2, %hi(__llvm_gcov_ctr.83)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.83)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.83)($2)
	li	$2, %hi(__llvm_gcov_ctr.84)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.84)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.84)($2)
	li	$2, %hi(__llvm_gcov_ctr.85)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.85)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.86)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.86)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.87)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.87)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.88)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.88)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.88)($2)
	li	$2, %hi(__llvm_gcov_ctr.89)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.89)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.90)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.90)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.90)($2)
	li	$2, %hi(__llvm_gcov_ctr.91)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.91)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.91)($2)
	li	$2, %hi(__llvm_gcov_ctr.92)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.92)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.92)($2)
	li	$2, %hi(__llvm_gcov_ctr.93)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.93)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.93)($2)
	li	$2, %hi(__llvm_gcov_ctr.94)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.94)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.95)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.95)
	jal	memset
	nop
	lw	$6, 28($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.96)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.96)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.96)($2)
	li	$2, %hi(__llvm_gcov_ctr.97)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.97)
	jal	memset
	nop
	lw	$6, 28($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.98)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.98)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.98)($2)
	li	$2, %hi(__llvm_gcov_ctr.99)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.99)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.100)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.100)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.100)($2)
	li	$2, %hi(__llvm_gcov_ctr.101)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.101)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.101)($2)
	li	$2, %hi(__llvm_gcov_ctr.102)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.102)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.102)($2)
	li	$2, %hi(__llvm_gcov_ctr.103)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.103)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.104)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.104)
	jal	memset
	nop
	lw	$6, 20($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.105)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.105)
	jal	memset
	nop
	lw	$6, 28($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.106)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.106)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.106)($2)
	li	$2, %hi(__llvm_gcov_ctr.107)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.107)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.107)($2)
	li	$2, %hi(__llvm_gcov_ctr.108)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.108)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.108)($2)
	li	$2, %hi(__llvm_gcov_ctr.109)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.109)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.109)($2)
	li	$2, %hi(__llvm_gcov_ctr.110)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.110)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.110)($2)
	li	$2, %hi(__llvm_gcov_ctr.111)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.111)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.111)($2)
	li	$2, %hi(__llvm_gcov_ctr.112)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.112)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.112)($2)
	li	$2, %hi(__llvm_gcov_ctr.113)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.113)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.113)($2)
	li	$2, %hi(__llvm_gcov_ctr.114)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.114)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.114)($2)
	li	$2, %hi(__llvm_gcov_ctr.115)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.115)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.115)($2)
	li	$2, %hi(__llvm_gcov_ctr.116)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.116)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.116)($2)
	li	$2, %hi(__llvm_gcov_ctr.117)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.117)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.117)($2)
	li	$2, %hi(__llvm_gcov_ctr.118)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.118)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.118)($2)
	li	$2, %hi(__llvm_gcov_ctr.119)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.119)
	jal	memset
	nop
	lw	$6, 24($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.120)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.120)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.120)($2)
	li	$2, %hi(__llvm_gcov_ctr.121)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.121)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.121)($2)
	li	$2, %hi(__llvm_gcov_ctr.122)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.122)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.122)($2)
	li	$2, %hi(__llvm_gcov_ctr.123)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.123)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.123)($2)
	li	$2, %hi(__llvm_gcov_ctr.124)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.124)
	jal	memset
	nop
	lw	$6, 28($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.125)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.125)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.125)($2)
	li	$2, %hi(__llvm_gcov_ctr.126)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.126)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.126)($2)
	li	$2, %hi(__llvm_gcov_ctr.127)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.127)
	jal	memset
	nop
	lw	$6, 28($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.128)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.128)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.129)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.129)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.129)($2)
	li	$2, %hi(__llvm_gcov_ctr.130)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.130)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.130)($2)
	li	$2, %hi(__llvm_gcov_ctr.131)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.131)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.131)($2)
	li	$2, %hi(__llvm_gcov_ctr.132)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.132)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.132)($2)
	li	$2, %hi(__llvm_gcov_ctr.133)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.133)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.133)($2)
	li	$2, %hi(__llvm_gcov_ctr.134)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.134)
	jal	memset
	nop
	lw	$6, 32($16)                     # 4-byte Folded Reload
	lw	$5, 36($16)                     # 4-byte Folded Reload
	li	$2, %hi(__llvm_gcov_ctr.135)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.135)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.135)($2)
	li	$2, %hi(__llvm_gcov_ctr.136)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.136)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.136)($2)
	li	$2, %hi(__llvm_gcov_ctr.137)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.137)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.137)($2)
	li	$2, %hi(__llvm_gcov_ctr.138)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.138)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.138)($2)
	li	$2, %hi(__llvm_gcov_ctr.139)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.139)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.139)($2)
	li	$2, %hi(__llvm_gcov_ctr.140)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.140)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.140)($2)
	li	$2, %hi(__llvm_gcov_ctr.141)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.141)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.141)($2)
	li	$2, %hi(__llvm_gcov_ctr.142)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.142)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.142)($2)
	li	$2, %hi(__llvm_gcov_ctr.143)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.143)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.143)($2)
	li	$2, %hi(__llvm_gcov_ctr.144)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.144)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.144)($2)
	li	$2, %hi(__llvm_gcov_ctr.145)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.145)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.145)($2)
	li	$2, %hi(__llvm_gcov_ctr.146)
	sll	$2, $2, 16
	move	$3, $2
	addiu	$3, %lo(__llvm_gcov_ctr.146)
	sb	$5, 31($3)
	sb	$5, 30($3)
	sb	$5, 29($3)
	sb	$5, 28($3)
	sb	$5, 27($3)
	sb	$5, 26($3)
	sb	$5, 25($3)
	sb	$5, 24($3)
	sb	$5, 23($3)
	sb	$5, 22($3)
	sb	$5, 21($3)
	sb	$5, 20($3)
	sb	$5, 19($3)
	sb	$5, 18($3)
	sb	$5, 17($3)
	sb	$5, 16($3)
	sb	$5, 15($3)
	sb	$5, 14($3)
	sb	$5, 13($3)
	sb	$5, 12($3)
	sb	$5, 11($3)
	sb	$5, 10($3)
	sb	$5, 9($3)
	sb	$5, 8($3)
	sb	$5, 7($3)
	sb	$5, 6($3)
	sb	$5, 5($3)
	sb	$5, 4($3)
	sb	$5, 3($3)
	sb	$5, 2($3)
	sb	$5, 1($3)
	sb	$5, %lo(__llvm_gcov_ctr.146)($2)
	li	$2, %hi(__llvm_gcov_ctr.147)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_ctr.147)
	jal	memset
	nop
                                        # kill: def $v1 killed $v0
	lw	$2, 36($16)                     # 4-byte Folded Reload
	li	$3, %hi(__llvm_gcov_ctr.148)
	sll	$3, $3, 16
	move	$4, $3
	addiu	$4, %lo(__llvm_gcov_ctr.148)
	sb	$2, 7($4)
	sb	$2, 6($4)
	sb	$2, 5($4)
	sb	$2, 4($4)
	sb	$2, 3($4)
	sb	$2, 2($4)
	sb	$2, 1($4)
	sb	$2, %lo(__llvm_gcov_ctr.148)($3)
	move	$sp, $16
	restore	$16, $ra, 48 # 16 bit inst

	jrc	$ra
	.end	__llvm_gcov_reset
$func_end150:
	.size	__llvm_gcov_reset, ($func_end150)-__llvm_gcov_reset
                                        # -- End function
	.p2align	2                               # -- Begin function __llvm_gcov_init
	.type	__llvm_gcov_init,@function
	.set	nomicromips
	.set	mips16
	.ent	__llvm_gcov_init
__llvm_gcov_init:                       # @__llvm_gcov_init
	.frame	$16,24,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
# %bb.0:
	save	$16, $ra, 24 # 16 bit inst

	move	$16, $sp
	li	$2, %hi(__llvm_gcov_writeout)
	sll	$4, $2, 16
	addiu	$4, %lo(__llvm_gcov_writeout)
	li	$2, %hi(__llvm_gcov_reset)
	sll	$5, $2, 16
	addiu	$5, %lo(__llvm_gcov_reset)
	jal	llvm_gcov_init
	nop
	move	$sp, $16
	restore	$16, $ra, 24 # 16 bit inst

	jrc	$ra
	.end	__llvm_gcov_init
$func_end151:
	.size	__llvm_gcov_init, ($func_end151)-__llvm_gcov_init
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
	.comm	__llvm_gcov_ctr.24,8,8
	.type	__llvm_gcov_ctr.25,@object      # @__llvm_gcov_ctr.25
	.local	__llvm_gcov_ctr.25
	.comm	__llvm_gcov_ctr.25,24,16
	.type	__llvm_gcov_ctr.26,@object      # @__llvm_gcov_ctr.26
	.local	__llvm_gcov_ctr.26
	.comm	__llvm_gcov_ctr.26,8,8
	.type	__llvm_gcov_ctr.27,@object      # @__llvm_gcov_ctr.27
	.local	__llvm_gcov_ctr.27
	.comm	__llvm_gcov_ctr.27,32,16
	.type	__llvm_gcov_ctr.28,@object      # @__llvm_gcov_ctr.28
	.local	__llvm_gcov_ctr.28
	.comm	__llvm_gcov_ctr.28,32,16
	.type	__llvm_gcov_ctr.29,@object      # @__llvm_gcov_ctr.29
	.local	__llvm_gcov_ctr.29
	.comm	__llvm_gcov_ctr.29,48,16
	.type	__llvm_gcov_ctr.30,@object      # @__llvm_gcov_ctr.30
	.local	__llvm_gcov_ctr.30
	.comm	__llvm_gcov_ctr.30,48,16
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
	.comm	__llvm_gcov_ctr.35,16,8
	.type	__llvm_gcov_ctr.36,@object      # @__llvm_gcov_ctr.36
	.local	__llvm_gcov_ctr.36
	.comm	__llvm_gcov_ctr.36,8,8
	.type	__llvm_gcov_ctr.37,@object      # @__llvm_gcov_ctr.37
	.local	__llvm_gcov_ctr.37
	.comm	__llvm_gcov_ctr.37,8,8
	.type	__llvm_gcov_ctr.38,@object      # @__llvm_gcov_ctr.38
	.local	__llvm_gcov_ctr.38
	.comm	__llvm_gcov_ctr.38,24,16
	.type	__llvm_gcov_ctr.39,@object      # @__llvm_gcov_ctr.39
	.local	__llvm_gcov_ctr.39
	.comm	__llvm_gcov_ctr.39,24,16
	.type	__llvm_gcov_ctr.40,@object      # @__llvm_gcov_ctr.40
	.local	__llvm_gcov_ctr.40
	.comm	__llvm_gcov_ctr.40,24,16
	.type	__llvm_gcov_ctr.41,@object      # @__llvm_gcov_ctr.41
	.local	__llvm_gcov_ctr.41
	.comm	__llvm_gcov_ctr.41,24,16
	.type	__llvm_gcov_ctr.42,@object      # @__llvm_gcov_ctr.42
	.local	__llvm_gcov_ctr.42
	.comm	__llvm_gcov_ctr.42,16,8
	.type	__llvm_gcov_ctr.43,@object      # @__llvm_gcov_ctr.43
	.local	__llvm_gcov_ctr.43
	.comm	__llvm_gcov_ctr.43,48,16
	.type	__llvm_gcov_ctr.44,@object      # @__llvm_gcov_ctr.44
	.local	__llvm_gcov_ctr.44
	.comm	__llvm_gcov_ctr.44,48,16
	.type	__llvm_gcov_ctr.45,@object      # @__llvm_gcov_ctr.45
	.local	__llvm_gcov_ctr.45
	.comm	__llvm_gcov_ctr.45,48,16
	.type	__llvm_gcov_ctr.46,@object      # @__llvm_gcov_ctr.46
	.local	__llvm_gcov_ctr.46
	.comm	__llvm_gcov_ctr.46,32,16
	.type	__llvm_gcov_ctr.47,@object      # @__llvm_gcov_ctr.47
	.local	__llvm_gcov_ctr.47
	.comm	__llvm_gcov_ctr.47,32,16
	.type	__llvm_gcov_ctr.48,@object      # @__llvm_gcov_ctr.48
	.local	__llvm_gcov_ctr.48
	.comm	__llvm_gcov_ctr.48,8,8
	.type	__llvm_gcov_ctr.49,@object      # @__llvm_gcov_ctr.49
	.local	__llvm_gcov_ctr.49
	.comm	__llvm_gcov_ctr.49,16,8
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
	.comm	__llvm_gcov_ctr.55,40,16
	.type	__llvm_gcov_ctr.56,@object      # @__llvm_gcov_ctr.56
	.local	__llvm_gcov_ctr.56
	.comm	__llvm_gcov_ctr.56,48,16
	.type	__llvm_gcov_ctr.57,@object      # @__llvm_gcov_ctr.57
	.local	__llvm_gcov_ctr.57
	.comm	__llvm_gcov_ctr.57,16,8
	.type	__llvm_gcov_ctr.58,@object      # @__llvm_gcov_ctr.58
	.local	__llvm_gcov_ctr.58
	.comm	__llvm_gcov_ctr.58,16,8
	.type	__llvm_gcov_ctr.59,@object      # @__llvm_gcov_ctr.59
	.local	__llvm_gcov_ctr.59
	.comm	__llvm_gcov_ctr.59,64,16
	.type	__llvm_gcov_ctr.60,@object      # @__llvm_gcov_ctr.60
	.local	__llvm_gcov_ctr.60
	.comm	__llvm_gcov_ctr.60,40,16
	.type	__llvm_gcov_ctr.61,@object      # @__llvm_gcov_ctr.61
	.local	__llvm_gcov_ctr.61
	.comm	__llvm_gcov_ctr.61,48,16
	.type	__llvm_gcov_ctr.62,@object      # @__llvm_gcov_ctr.62
	.local	__llvm_gcov_ctr.62
	.comm	__llvm_gcov_ctr.62,16,8
	.type	__llvm_gcov_ctr.63,@object      # @__llvm_gcov_ctr.63
	.local	__llvm_gcov_ctr.63
	.comm	__llvm_gcov_ctr.63,40,16
	.type	__llvm_gcov_ctr.64,@object      # @__llvm_gcov_ctr.64
	.local	__llvm_gcov_ctr.64
	.comm	__llvm_gcov_ctr.64,16,8
	.type	__llvm_gcov_ctr.65,@object      # @__llvm_gcov_ctr.65
	.local	__llvm_gcov_ctr.65
	.comm	__llvm_gcov_ctr.65,40,16
	.type	__llvm_gcov_ctr.66,@object      # @__llvm_gcov_ctr.66
	.local	__llvm_gcov_ctr.66
	.comm	__llvm_gcov_ctr.66,8,8
	.type	__llvm_gcov_ctr.67,@object      # @__llvm_gcov_ctr.67
	.local	__llvm_gcov_ctr.67
	.comm	__llvm_gcov_ctr.67,8,8
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
	.comm	__llvm_gcov_ctr.79,24,16
	.type	__llvm_gcov_ctr.80,@object      # @__llvm_gcov_ctr.80
	.local	__llvm_gcov_ctr.80
	.comm	__llvm_gcov_ctr.80,24,16
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
	.comm	__llvm_gcov_ctr.84,8,8
	.type	__llvm_gcov_ctr.85,@object      # @__llvm_gcov_ctr.85
	.local	__llvm_gcov_ctr.85
	.comm	__llvm_gcov_ctr.85,40,16
	.type	__llvm_gcov_ctr.86,@object      # @__llvm_gcov_ctr.86
	.local	__llvm_gcov_ctr.86
	.comm	__llvm_gcov_ctr.86,40,16
	.type	__llvm_gcov_ctr.87,@object      # @__llvm_gcov_ctr.87
	.local	__llvm_gcov_ctr.87
	.comm	__llvm_gcov_ctr.87,40,16
	.type	__llvm_gcov_ctr.88,@object      # @__llvm_gcov_ctr.88
	.local	__llvm_gcov_ctr.88
	.comm	__llvm_gcov_ctr.88,16,8
	.type	__llvm_gcov_ctr.89,@object      # @__llvm_gcov_ctr.89
	.local	__llvm_gcov_ctr.89
	.comm	__llvm_gcov_ctr.89,40,16
	.type	__llvm_gcov_ctr.90,@object      # @__llvm_gcov_ctr.90
	.local	__llvm_gcov_ctr.90
	.comm	__llvm_gcov_ctr.90,32,16
	.type	__llvm_gcov_ctr.91,@object      # @__llvm_gcov_ctr.91
	.local	__llvm_gcov_ctr.91
	.comm	__llvm_gcov_ctr.91,32,16
	.type	__llvm_gcov_ctr.92,@object      # @__llvm_gcov_ctr.92
	.local	__llvm_gcov_ctr.92
	.comm	__llvm_gcov_ctr.92,24,16
	.type	__llvm_gcov_ctr.93,@object      # @__llvm_gcov_ctr.93
	.local	__llvm_gcov_ctr.93
	.comm	__llvm_gcov_ctr.93,32,16
	.type	__llvm_gcov_ctr.94,@object      # @__llvm_gcov_ctr.94
	.local	__llvm_gcov_ctr.94
	.comm	__llvm_gcov_ctr.94,40,16
	.type	__llvm_gcov_ctr.95,@object      # @__llvm_gcov_ctr.95
	.local	__llvm_gcov_ctr.95
	.comm	__llvm_gcov_ctr.95,48,16
	.type	__llvm_gcov_ctr.96,@object      # @__llvm_gcov_ctr.96
	.local	__llvm_gcov_ctr.96
	.comm	__llvm_gcov_ctr.96,8,8
	.type	__llvm_gcov_ctr.97,@object      # @__llvm_gcov_ctr.97
	.local	__llvm_gcov_ctr.97
	.comm	__llvm_gcov_ctr.97,64,16
	.type	__llvm_gcov_ctr.98,@object      # @__llvm_gcov_ctr.98
	.local	__llvm_gcov_ctr.98
	.comm	__llvm_gcov_ctr.98,24,16
	.type	__llvm_gcov_ctr.99,@object      # @__llvm_gcov_ctr.99
	.local	__llvm_gcov_ctr.99
	.comm	__llvm_gcov_ctr.99,64,16
	.type	__llvm_gcov_ctr.100,@object     # @__llvm_gcov_ctr.100
	.local	__llvm_gcov_ctr.100
	.comm	__llvm_gcov_ctr.100,24,16
	.type	__llvm_gcov_ctr.101,@object     # @__llvm_gcov_ctr.101
	.local	__llvm_gcov_ctr.101
	.comm	__llvm_gcov_ctr.101,24,16
	.type	__llvm_gcov_ctr.102,@object     # @__llvm_gcov_ctr.102
	.local	__llvm_gcov_ctr.102
	.comm	__llvm_gcov_ctr.102,24,16
	.type	__llvm_gcov_ctr.103,@object     # @__llvm_gcov_ctr.103
	.local	__llvm_gcov_ctr.103
	.comm	__llvm_gcov_ctr.103,48,16
	.type	__llvm_gcov_ctr.104,@object     # @__llvm_gcov_ctr.104
	.local	__llvm_gcov_ctr.104
	.comm	__llvm_gcov_ctr.104,48,16
	.type	__llvm_gcov_ctr.105,@object     # @__llvm_gcov_ctr.105
	.local	__llvm_gcov_ctr.105
	.comm	__llvm_gcov_ctr.105,48,16
	.type	__llvm_gcov_ctr.106,@object     # @__llvm_gcov_ctr.106
	.local	__llvm_gcov_ctr.106
	.comm	__llvm_gcov_ctr.106,8,8
	.type	__llvm_gcov_ctr.107,@object     # @__llvm_gcov_ctr.107
	.local	__llvm_gcov_ctr.107
	.comm	__llvm_gcov_ctr.107,8,8
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
	.comm	__llvm_gcov_ctr.112,24,16
	.type	__llvm_gcov_ctr.113,@object     # @__llvm_gcov_ctr.113
	.local	__llvm_gcov_ctr.113
	.comm	__llvm_gcov_ctr.113,24,16
	.type	__llvm_gcov_ctr.114,@object     # @__llvm_gcov_ctr.114
	.local	__llvm_gcov_ctr.114
	.comm	__llvm_gcov_ctr.114,16,8
	.type	__llvm_gcov_ctr.115,@object     # @__llvm_gcov_ctr.115
	.local	__llvm_gcov_ctr.115
	.comm	__llvm_gcov_ctr.115,24,16
	.type	__llvm_gcov_ctr.116,@object     # @__llvm_gcov_ctr.116
	.local	__llvm_gcov_ctr.116
	.comm	__llvm_gcov_ctr.116,24,16
	.type	__llvm_gcov_ctr.117,@object     # @__llvm_gcov_ctr.117
	.local	__llvm_gcov_ctr.117
	.comm	__llvm_gcov_ctr.117,24,16
	.type	__llvm_gcov_ctr.118,@object     # @__llvm_gcov_ctr.118
	.local	__llvm_gcov_ctr.118
	.comm	__llvm_gcov_ctr.118,32,16
	.type	__llvm_gcov_ctr.119,@object     # @__llvm_gcov_ctr.119
	.local	__llvm_gcov_ctr.119
	.comm	__llvm_gcov_ctr.119,64,16
	.type	__llvm_gcov_ctr.120,@object     # @__llvm_gcov_ctr.120
	.local	__llvm_gcov_ctr.120
	.comm	__llvm_gcov_ctr.120,24,16
	.type	__llvm_gcov_ctr.121,@object     # @__llvm_gcov_ctr.121
	.local	__llvm_gcov_ctr.121
	.comm	__llvm_gcov_ctr.121,24,16
	.type	__llvm_gcov_ctr.122,@object     # @__llvm_gcov_ctr.122
	.local	__llvm_gcov_ctr.122
	.comm	__llvm_gcov_ctr.122,8,8
	.type	__llvm_gcov_ctr.123,@object     # @__llvm_gcov_ctr.123
	.local	__llvm_gcov_ctr.123
	.comm	__llvm_gcov_ctr.123,8,8
	.type	__llvm_gcov_ctr.124,@object     # @__llvm_gcov_ctr.124
	.local	__llvm_gcov_ctr.124
	.comm	__llvm_gcov_ctr.124,56,16
	.type	__llvm_gcov_ctr.125,@object     # @__llvm_gcov_ctr.125
	.local	__llvm_gcov_ctr.125
	.comm	__llvm_gcov_ctr.125,32,16
	.type	__llvm_gcov_ctr.126,@object     # @__llvm_gcov_ctr.126
	.local	__llvm_gcov_ctr.126
	.comm	__llvm_gcov_ctr.126,32,16
	.type	__llvm_gcov_ctr.127,@object     # @__llvm_gcov_ctr.127
	.local	__llvm_gcov_ctr.127
	.comm	__llvm_gcov_ctr.127,64,16
	.type	__llvm_gcov_ctr.128,@object     # @__llvm_gcov_ctr.128
	.local	__llvm_gcov_ctr.128
	.comm	__llvm_gcov_ctr.128,64,16
	.type	__llvm_gcov_ctr.129,@object     # @__llvm_gcov_ctr.129
	.local	__llvm_gcov_ctr.129
	.comm	__llvm_gcov_ctr.129,24,16
	.type	__llvm_gcov_ctr.130,@object     # @__llvm_gcov_ctr.130
	.local	__llvm_gcov_ctr.130
	.comm	__llvm_gcov_ctr.130,24,16
	.type	__llvm_gcov_ctr.131,@object     # @__llvm_gcov_ctr.131
	.local	__llvm_gcov_ctr.131
	.comm	__llvm_gcov_ctr.131,8,8
	.type	__llvm_gcov_ctr.132,@object     # @__llvm_gcov_ctr.132
	.local	__llvm_gcov_ctr.132
	.comm	__llvm_gcov_ctr.132,8,8
	.type	__llvm_gcov_ctr.133,@object     # @__llvm_gcov_ctr.133
	.local	__llvm_gcov_ctr.133
	.comm	__llvm_gcov_ctr.133,8,8
	.type	__llvm_gcov_ctr.134,@object     # @__llvm_gcov_ctr.134
	.local	__llvm_gcov_ctr.134
	.comm	__llvm_gcov_ctr.134,40,16
	.type	__llvm_gcov_ctr.135,@object     # @__llvm_gcov_ctr.135
	.local	__llvm_gcov_ctr.135
	.comm	__llvm_gcov_ctr.135,8,8
	.type	__llvm_gcov_ctr.136,@object     # @__llvm_gcov_ctr.136
	.local	__llvm_gcov_ctr.136
	.comm	__llvm_gcov_ctr.136,8,8
	.type	__llvm_gcov_ctr.137,@object     # @__llvm_gcov_ctr.137
	.local	__llvm_gcov_ctr.137
	.comm	__llvm_gcov_ctr.137,24,16
	.type	__llvm_gcov_ctr.138,@object     # @__llvm_gcov_ctr.138
	.local	__llvm_gcov_ctr.138
	.comm	__llvm_gcov_ctr.138,8,8
	.type	__llvm_gcov_ctr.139,@object     # @__llvm_gcov_ctr.139
	.local	__llvm_gcov_ctr.139
	.comm	__llvm_gcov_ctr.139,8,8
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
	.comm	__llvm_gcov_ctr.145,32,16
	.type	__llvm_gcov_ctr.146,@object     # @__llvm_gcov_ctr.146
	.local	__llvm_gcov_ctr.146
	.comm	__llvm_gcov_ctr.146,32,16
	.type	__llvm_gcov_ctr.147,@object     # @__llvm_gcov_ctr.147
	.local	__llvm_gcov_ctr.147
	.comm	__llvm_gcov_ctr.147,40,16
	.type	__llvm_gcov_ctr.148,@object     # @__llvm_gcov_ctr.148
	.local	__llvm_gcov_ctr.148
	.comm	__llvm_gcov_ctr.148,8,8
	.type	$__unnamed_1,@object            # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
$__unnamed_1:
	.asciz	"/home/gravier/tmp/some-libc-opt/clang-mips16.gcda"
	.size	$__unnamed_1, 50

	.type	__llvm_internal_gcov_emit_function_args.0,@object # @__llvm_internal_gcov_emit_function_args.0
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
__llvm_internal_gcov_emit_function_args.0:
	.4byte	0                               # 0x0
	.4byte	560687177                       # 0x216b6849
	.4byte	3144195120                      # 0xbb689c30
	.4byte	1                               # 0x1
	.4byte	1589591758                      # 0x5ebf3ece
	.4byte	3144195120                      # 0xbb689c30
	.4byte	2                               # 0x2
	.4byte	2176136383                      # 0x81b534bf
	.4byte	3144195120                      # 0xbb689c30
	.4byte	3                               # 0x3
	.4byte	3586625172                      # 0xd5c78e94
	.4byte	3144195120                      # 0xbb689c30
	.4byte	4                               # 0x4
	.4byte	2323119728                      # 0x8a77fe70
	.4byte	3144195120                      # 0xbb689c30
	.4byte	5                               # 0x5
	.4byte	2314569740                      # 0x89f5880c
	.4byte	3144195120                      # 0xbb689c30
	.4byte	6                               # 0x6
	.4byte	2833673551                      # 0xa8e66d4f
	.4byte	3144195120                      # 0xbb689c30
	.4byte	7                               # 0x7
	.4byte	1458633189                      # 0x56f0f9e5
	.4byte	3144195120                      # 0xbb689c30
	.4byte	8                               # 0x8
	.4byte	1190300833                      # 0x46f28ca1
	.4byte	3144195120                      # 0xbb689c30
	.4byte	9                               # 0x9
	.4byte	758327989                       # 0x2d332ab5
	.4byte	3144195120                      # 0xbb689c30
	.4byte	10                              # 0xa
	.4byte	1651479037                      # 0x626f91fd
	.4byte	3144195120                      # 0xbb689c30
	.4byte	11                              # 0xb
	.4byte	4132343275                      # 0xf64e8deb
	.4byte	3144195120                      # 0xbb689c30
	.4byte	12                              # 0xc
	.4byte	734262523                       # 0x2bc3f4fb
	.4byte	3144195120                      # 0xbb689c30
	.4byte	13                              # 0xd
	.4byte	2463424677                      # 0x92d4e0a5
	.4byte	3144195120                      # 0xbb689c30
	.4byte	14                              # 0xe
	.4byte	1419026334                      # 0x54949f9e
	.4byte	3144195120                      # 0xbb689c30
	.4byte	15                              # 0xf
	.4byte	3154471370                      # 0xbc0569ca
	.4byte	3144195120                      # 0xbb689c30
	.4byte	16                              # 0x10
	.4byte	2077973487                      # 0x7bdb5bef
	.4byte	3144195120                      # 0xbb689c30
	.4byte	17                              # 0x11
	.4byte	1474691227                      # 0x57e6009b
	.4byte	3144195120                      # 0xbb689c30
	.4byte	18                              # 0x12
	.4byte	3710986016                      # 0xdd312720
	.4byte	3144195120                      # 0xbb689c30
	.4byte	19                              # 0x13
	.4byte	1305101473                      # 0x4dca44a1
	.4byte	3144195120                      # 0xbb689c30
	.4byte	20                              # 0x14
	.4byte	3762036564                      # 0xe03c1f54
	.4byte	3144195120                      # 0xbb689c30
	.4byte	21                              # 0x15
	.4byte	477914433                       # 0x1c7c6541
	.4byte	3144195120                      # 0xbb689c30
	.4byte	22                              # 0x16
	.4byte	3923035234                      # 0xe9d4c462
	.4byte	3144195120                      # 0xbb689c30
	.4byte	23                              # 0x17
	.4byte	951651702                       # 0x38b90d76
	.4byte	3144195120                      # 0xbb689c30
	.4byte	24                              # 0x18
	.4byte	32773942                        # 0x1f41736
	.4byte	3144195120                      # 0xbb689c30
	.4byte	25                              # 0x19
	.4byte	860405771                       # 0x3348c00b
	.4byte	3144195120                      # 0xbb689c30
	.4byte	26                              # 0x1a
	.4byte	815674877                       # 0x309e35fd
	.4byte	3144195120                      # 0xbb689c30
	.4byte	27                              # 0x1b
	.4byte	1778838753                      # 0x6a06ece1
	.4byte	3144195120                      # 0xbb689c30
	.4byte	28                              # 0x1c
	.4byte	2718307199                      # 0xa206137f
	.4byte	3144195120                      # 0xbb689c30
	.4byte	29                              # 0x1d
	.4byte	856224820                       # 0x3308f434
	.4byte	3144195120                      # 0xbb689c30
	.4byte	30                              # 0x1e
	.4byte	1111195143                      # 0x423b7e07
	.4byte	3144195120                      # 0xbb689c30
	.4byte	31                              # 0x1f
	.4byte	1178414519                      # 0x463d2db7
	.4byte	3144195120                      # 0xbb689c30
	.4byte	32                              # 0x20
	.4byte	3477640633                      # 0xcf4895b9
	.4byte	3144195120                      # 0xbb689c30
	.4byte	33                              # 0x21
	.4byte	4294770115                      # 0xfffcfdc3
	.4byte	3144195120                      # 0xbb689c30
	.4byte	34                              # 0x22
	.4byte	3650660234                      # 0xd998a78a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	35                              # 0x23
	.4byte	289327647                       # 0x113eca1f
	.4byte	3144195120                      # 0xbb689c30
	.4byte	36                              # 0x24
	.4byte	2093612798                      # 0x7cc9fefe
	.4byte	3144195120                      # 0xbb689c30
	.4byte	37                              # 0x25
	.4byte	4177956716                      # 0xf9068f6c
	.4byte	3144195120                      # 0xbb689c30
	.4byte	38                              # 0x26
	.4byte	3434808461                      # 0xccbb048d
	.4byte	3144195120                      # 0xbb689c30
	.4byte	39                              # 0x27
	.4byte	3206497114                      # 0xbf1f435a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	40                              # 0x28
	.4byte	1537257434                      # 0x5ba0afda
	.4byte	3144195120                      # 0xbb689c30
	.4byte	41                              # 0x29
	.4byte	3028077325                      # 0xb47ccb0d
	.4byte	3144195120                      # 0xbb689c30
	.4byte	42                              # 0x2a
	.4byte	1369848209                      # 0x51a63991
	.4byte	3144195120                      # 0xbb689c30
	.4byte	43                              # 0x2b
	.4byte	938831176                       # 0x37f56d48
	.4byte	3144195120                      # 0xbb689c30
	.4byte	44                              # 0x2c
	.4byte	1663146323                      # 0x63219953
	.4byte	3144195120                      # 0xbb689c30
	.4byte	45                              # 0x2d
	.4byte	4111410217                      # 0xf50f2429
	.4byte	3144195120                      # 0xbb689c30
	.4byte	46                              # 0x2e
	.4byte	1475378556                      # 0x57f07d7c
	.4byte	3144195120                      # 0xbb689c30
	.4byte	47                              # 0x2f
	.4byte	3356195547                      # 0xc80b7adb
	.4byte	3144195120                      # 0xbb689c30
	.4byte	48                              # 0x30
	.4byte	514931786                       # 0x1eb13c4a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	49                              # 0x31
	.4byte	2854034444                      # 0xaa1d1c0c
	.4byte	3144195120                      # 0xbb689c30
	.4byte	50                              # 0x32
	.4byte	2747937306                      # 0xa3ca321a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	51                              # 0x33
	.4byte	4192776208                      # 0xf9e8b010
	.4byte	3144195120                      # 0xbb689c30
	.4byte	52                              # 0x34
	.4byte	984436227                       # 0x3aad4e03
	.4byte	3144195120                      # 0xbb689c30
	.4byte	53                              # 0x35
	.4byte	1477657574                      # 0x581343e6
	.4byte	3144195120                      # 0xbb689c30
	.4byte	54                              # 0x36
	.4byte	1339127973                      # 0x4fd178a5
	.4byte	3144195120                      # 0xbb689c30
	.4byte	55                              # 0x37
	.4byte	2960567906                      # 0xb076ae62
	.4byte	3144195120                      # 0xbb689c30
	.4byte	56                              # 0x38
	.4byte	3390076872                      # 0xca1077c8
	.4byte	3144195120                      # 0xbb689c30
	.4byte	57                              # 0x39
	.4byte	1543282230                      # 0x5bfc9e36
	.4byte	3144195120                      # 0xbb689c30
	.4byte	58                              # 0x3a
	.4byte	2934101789                      # 0xaee2d71d
	.4byte	3144195120                      # 0xbb689c30
	.4byte	59                              # 0x3b
	.4byte	3737986119                      # 0xdecd2447
	.4byte	3144195120                      # 0xbb689c30
	.4byte	60                              # 0x3c
	.4byte	49556427                        # 0x2f42bcb
	.4byte	3144195120                      # 0xbb689c30
	.4byte	61                              # 0x3d
	.4byte	234051526                       # 0xdf357c6
	.4byte	3144195120                      # 0xbb689c30
	.4byte	62                              # 0x3e
	.4byte	2341800126                      # 0x8b9508be
	.4byte	3144195120                      # 0xbb689c30
	.4byte	63                              # 0x3f
	.4byte	3256799948                      # 0xc21ed2cc
	.4byte	3144195120                      # 0xbb689c30
	.4byte	64                              # 0x40
	.4byte	777295480                       # 0x2e549678
	.4byte	3144195120                      # 0xbb689c30
	.4byte	65                              # 0x41
	.4byte	14040531                        # 0xd63dd3
	.4byte	3144195120                      # 0xbb689c30
	.4byte	66                              # 0x42
	.4byte	8047973                         # 0x7acd65
	.4byte	3144195120                      # 0xbb689c30
	.4byte	67                              # 0x43
	.4byte	719459161                       # 0x2ae21359
	.4byte	3144195120                      # 0xbb689c30
	.4byte	68                              # 0x44
	.4byte	243358501                       # 0xe815b25
	.4byte	3144195120                      # 0xbb689c30
	.4byte	69                              # 0x45
	.4byte	3262173932                      # 0xc270d2ec
	.4byte	3144195120                      # 0xbb689c30
	.4byte	70                              # 0x46
	.4byte	398910553                       # 0x17c6e459
	.4byte	3144195120                      # 0xbb689c30
	.4byte	71                              # 0x47
	.4byte	3354219739                      # 0xc7ed54db
	.4byte	3144195120                      # 0xbb689c30
	.4byte	72                              # 0x48
	.4byte	2570308788                      # 0x9933ccb4
	.4byte	3144195120                      # 0xbb689c30
	.4byte	73                              # 0x49
	.4byte	982429111                       # 0x3a8eadb7
	.4byte	3144195120                      # 0xbb689c30
	.4byte	74                              # 0x4a
	.4byte	211491241                       # 0xc9b19a9
	.4byte	3144195120                      # 0xbb689c30
	.4byte	75                              # 0x4b
	.4byte	1075683319                      # 0x401d9ff7
	.4byte	3144195120                      # 0xbb689c30
	.4byte	76                              # 0x4c
	.4byte	1886352651                      # 0x706f750b
	.4byte	3144195120                      # 0xbb689c30
	.4byte	77                              # 0x4d
	.4byte	248637203                       # 0xed1e713
	.4byte	3144195120                      # 0xbb689c30
	.4byte	78                              # 0x4e
	.4byte	703327087                       # 0x29ebeb6f
	.4byte	3144195120                      # 0xbb689c30
	.4byte	79                              # 0x4f
	.4byte	3690160730                      # 0xdbf3625a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	80                              # 0x50
	.4byte	787048238                       # 0x2ee9672e
	.4byte	3144195120                      # 0xbb689c30
	.4byte	81                              # 0x51
	.4byte	1937497967                      # 0x737bdf6f
	.4byte	3144195120                      # 0xbb689c30
	.4byte	82                              # 0x52
	.4byte	4205062514                      # 0xfaa42972
	.4byte	3144195120                      # 0xbb689c30
	.4byte	83                              # 0x53
	.4byte	694462539                       # 0x2964a84b
	.4byte	3144195120                      # 0xbb689c30
	.4byte	84                              # 0x54
	.4byte	85970907                        # 0x51fcfdb
	.4byte	3144195120                      # 0xbb689c30
	.4byte	85                              # 0x55
	.4byte	3681984728                      # 0xdb76a0d8
	.4byte	3144195120                      # 0xbb689c30
	.4byte	86                              # 0x56
	.4byte	3620297642                      # 0xd7c95baa
	.4byte	3144195120                      # 0xbb689c30
	.4byte	87                              # 0x57
	.4byte	3394804480                      # 0xca589b00
	.4byte	3144195120                      # 0xbb689c30
	.4byte	88                              # 0x58
	.4byte	2119330183                      # 0x7e526987
	.4byte	3144195120                      # 0xbb689c30
	.4byte	89                              # 0x59
	.4byte	1963040266                      # 0x75019e0a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	90                              # 0x5a
	.4byte	1603391838                      # 0x5f91d15e
	.4byte	3144195120                      # 0xbb689c30
	.4byte	91                              # 0x5b
	.4byte	2340921237                      # 0x8b879f95
	.4byte	3144195120                      # 0xbb689c30
	.4byte	92                              # 0x5c
	.4byte	3028177438                      # 0xb47e521e
	.4byte	3144195120                      # 0xbb689c30
	.4byte	93                              # 0x5d
	.4byte	2265525308                      # 0x87092c3c
	.4byte	3144195120                      # 0xbb689c30
	.4byte	94                              # 0x5e
	.4byte	2598903994                      # 0x9ae820ba
	.4byte	3144195120                      # 0xbb689c30
	.4byte	95                              # 0x5f
	.4byte	139524705                       # 0x850fa61
	.4byte	3144195120                      # 0xbb689c30
	.4byte	96                              # 0x60
	.4byte	1076410600                      # 0x4028b8e8
	.4byte	3144195120                      # 0xbb689c30
	.4byte	97                              # 0x61
	.4byte	220237413                       # 0xd208e65
	.4byte	3144195120                      # 0xbb689c30
	.4byte	98                              # 0x62
	.4byte	3913623866                      # 0xe945293a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	99                              # 0x63
	.4byte	3453026372                      # 0xcdd10044
	.4byte	3144195120                      # 0xbb689c30
	.4byte	100                             # 0x64
	.4byte	2321387380                      # 0x8a5d8f74
	.4byte	3144195120                      # 0xbb689c30
	.4byte	101                             # 0x65
	.4byte	3319939363                      # 0xc5e24123
	.4byte	3144195120                      # 0xbb689c30
	.4byte	102                             # 0x66
	.4byte	398991913                       # 0x17c82229
	.4byte	3144195120                      # 0xbb689c30
	.4byte	103                             # 0x67
	.4byte	333429647                       # 0x13dfbb8f
	.4byte	3144195120                      # 0xbb689c30
	.4byte	104                             # 0x68
	.4byte	3927133990                      # 0xea134f26
	.4byte	3144195120                      # 0xbb689c30
	.4byte	105                             # 0x69
	.4byte	1797971294                      # 0x6b2add5e
	.4byte	3144195120                      # 0xbb689c30
	.4byte	106                             # 0x6a
	.4byte	1622314776                      # 0x60b28f18
	.4byte	3144195120                      # 0xbb689c30
	.4byte	107                             # 0x6b
	.4byte	1092862330                      # 0x4123c17a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	108                             # 0x6c
	.4byte	2568657322                      # 0x991a99aa
	.4byte	3144195120                      # 0xbb689c30
	.4byte	109                             # 0x6d
	.4byte	2168129897                      # 0x813b0969
	.4byte	3144195120                      # 0xbb689c30
	.4byte	110                             # 0x6e
	.4byte	2890303119                      # 0xac46868f
	.4byte	3144195120                      # 0xbb689c30
	.4byte	111                             # 0x6f
	.4byte	1713332582                      # 0x661f6166
	.4byte	3144195120                      # 0xbb689c30
	.4byte	112                             # 0x70
	.4byte	2375727721                      # 0x8d9aba69
	.4byte	3144195120                      # 0xbb689c30
	.4byte	113                             # 0x71
	.4byte	3586767156                      # 0xd5c9b934
	.4byte	3144195120                      # 0xbb689c30
	.4byte	114                             # 0x72
	.4byte	2191348475                      # 0x829d52fb
	.4byte	3144195120                      # 0xbb689c30
	.4byte	115                             # 0x73
	.4byte	3910023869                      # 0xe90e3abd
	.4byte	3144195120                      # 0xbb689c30
	.4byte	116                             # 0x74
	.4byte	4189915105                      # 0xf9bd07e1
	.4byte	3144195120                      # 0xbb689c30
	.4byte	117                             # 0x75
	.4byte	2527353334                      # 0x96a459f6
	.4byte	3144195120                      # 0xbb689c30
	.4byte	118                             # 0x76
	.4byte	3429265923                      # 0xcc667203
	.4byte	3144195120                      # 0xbb689c30
	.4byte	119                             # 0x77
	.4byte	1283962724                      # 0x4c87b764
	.4byte	3144195120                      # 0xbb689c30
	.4byte	120                             # 0x78
	.4byte	1970290990                      # 0x7570412e
	.4byte	3144195120                      # 0xbb689c30
	.4byte	121                             # 0x79
	.4byte	2615950861                      # 0x9bec3e0d
	.4byte	3144195120                      # 0xbb689c30
	.4byte	122                             # 0x7a
	.4byte	3338450337                      # 0xc6fcb5a1
	.4byte	3144195120                      # 0xbb689c30
	.4byte	123                             # 0x7b
	.4byte	3971836509                      # 0xecbd6a5d
	.4byte	3144195120                      # 0xbb689c30
	.4byte	124                             # 0x7c
	.4byte	4260339231                      # 0xfdef9e1f
	.4byte	3144195120                      # 0xbb689c30
	.4byte	125                             # 0x7d
	.4byte	4160738226                      # 0xf7ffd3b2
	.4byte	3144195120                      # 0xbb689c30
	.4byte	126                             # 0x7e
	.4byte	1309372079                      # 0x4e0b6eaf
	.4byte	3144195120                      # 0xbb689c30
	.4byte	127                             # 0x7f
	.4byte	3151575564                      # 0xbbd93a0c
	.4byte	3144195120                      # 0xbb689c30
	.4byte	128                             # 0x80
	.4byte	3938977714                      # 0xeac807b2
	.4byte	3144195120                      # 0xbb689c30
	.4byte	129                             # 0x81
	.4byte	3228738087                      # 0xc072a227
	.4byte	3144195120                      # 0xbb689c30
	.4byte	130                             # 0x82
	.4byte	3135705803                      # 0xbae712cb
	.4byte	3144195120                      # 0xbb689c30
	.4byte	131                             # 0x83
	.4byte	4061147315                      # 0xf21030b3
	.4byte	3144195120                      # 0xbb689c30
	.4byte	132                             # 0x84
	.4byte	2783543715                      # 0xa5e981a3
	.4byte	3144195120                      # 0xbb689c30
	.4byte	133                             # 0x85
	.4byte	2471046843                      # 0x93492ebb
	.4byte	3144195120                      # 0xbb689c30
	.4byte	134                             # 0x86
	.4byte	260073473                       # 0xf806801
	.4byte	3144195120                      # 0xbb689c30
	.4byte	135                             # 0x87
	.4byte	1259876295                      # 0x4b182fc7
	.4byte	3144195120                      # 0xbb689c30
	.4byte	136                             # 0x88
	.4byte	2579807359                      # 0x99c4bc7f
	.4byte	3144195120                      # 0xbb689c30
	.4byte	137                             # 0x89
	.4byte	90061610                        # 0x55e3b2a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	138                             # 0x8a
	.4byte	3598610789                      # 0xd67e7165
	.4byte	3144195120                      # 0xbb689c30
	.4byte	139                             # 0x8b
	.4byte	2351688191                      # 0x8c2be9ff
	.4byte	3144195120                      # 0xbb689c30
	.4byte	140                             # 0x8c
	.4byte	1438161982                      # 0x55b89c3e
	.4byte	3144195120                      # 0xbb689c30
	.4byte	141                             # 0x8d
	.4byte	2438880600                      # 0x915e5d58
	.4byte	3144195120                      # 0xbb689c30
	.4byte	142                             # 0x8e
	.4byte	3593193962                      # 0xd62bc9ea
	.4byte	3144195120                      # 0xbb689c30
	.4byte	143                             # 0x8f
	.4byte	1755082314                      # 0x689c6e4a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	144                             # 0x90
	.4byte	3432612426                      # 0xcc99824a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	145                             # 0x91
	.4byte	3374828335                      # 0xc927cb2f
	.4byte	3144195120                      # 0xbb689c30
	.4byte	146                             # 0x92
	.4byte	3311814731                      # 0xc566484b
	.4byte	3144195120                      # 0xbb689c30
	.4byte	147                             # 0x93
	.4byte	413908966                       # 0x18abbfe6
	.4byte	3144195120                      # 0xbb689c30
	.4byte	148                             # 0x94
	.4byte	3027808697                      # 0xb478b1b9
	.4byte	3144195120                      # 0xbb689c30
	.size	__llvm_internal_gcov_emit_function_args.0, 1788

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
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.24
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.25
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.26
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.27
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.28
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.29
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.30
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.31
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.32
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.33
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.34
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.35
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.36
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.37
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.38
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.39
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.40
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.41
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.42
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.43
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.44
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.45
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.46
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.47
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.48
	.4byte	2                               # 0x2
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
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.55
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.56
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.57
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.58
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.59
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.60
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.61
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.62
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.63
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.64
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.65
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.66
	.4byte	1                               # 0x1
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
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.79
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.80
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.81
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.82
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.83
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.84
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.85
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.86
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.87
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.88
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.89
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.90
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.91
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.92
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.93
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.94
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.95
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.96
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.97
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.98
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.99
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.100
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.101
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.102
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.103
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.104
	.4byte	6                               # 0x6
	.4byte	__llvm_gcov_ctr.105
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.106
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.107
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.108
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.109
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.110
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.111
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.112
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.113
	.4byte	2                               # 0x2
	.4byte	__llvm_gcov_ctr.114
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.115
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.116
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.117
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.118
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.119
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.120
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.121
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.122
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.123
	.4byte	7                               # 0x7
	.4byte	__llvm_gcov_ctr.124
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.125
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.126
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.127
	.4byte	8                               # 0x8
	.4byte	__llvm_gcov_ctr.128
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.129
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.130
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.131
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.132
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.133
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.134
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.135
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.136
	.4byte	3                               # 0x3
	.4byte	__llvm_gcov_ctr.137
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.138
	.4byte	1                               # 0x1
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
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.145
	.4byte	4                               # 0x4
	.4byte	__llvm_gcov_ctr.146
	.4byte	5                               # 0x5
	.4byte	__llvm_gcov_ctr.147
	.4byte	1                               # 0x1
	.4byte	__llvm_gcov_ctr.148
	.size	__llvm_internal_gcov_emit_arcs_args.0, 1192

	.type	__llvm_internal_gcov_emit_file_info,@object # @__llvm_internal_gcov_emit_file_info
	.p2align	4, 0x0
__llvm_internal_gcov_emit_file_info:
	.4byte	($__unnamed_1)
	.4byte	875575338                       # 0x3430382a
	.4byte	3144195120                      # 0xbb689c30
	.4byte	149                             # 0x95
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
	.ascii	"\203\n\242\004x\332]\223\013n#!\f\206\305\215\272MU\365\032{\202\021\303#c\325<\202\231N\332\323\257mH\322\254\024\371\373m\030\300?$\205\224\312W0)$\347\352\267rk\212T\025\243\330f\225B7\324\253T\251K1\3578\225\202?b`\310\202\254\351aW\003d\261nVH\016\200\271\242\315\237L\227y:\323\303\031:\363\334l\335\230X\216\320\230\265A\226:U\353\002s\257U\353\307\355\203\343:T/c\351\350!i\210&&{\3250$r\204\254!jD\203\357o\326P\263\331\033\r\220\351\262\007\323B\022 \005\313\235\031\214\300cv%c{\001\t\250\001\315:gL.\315x\3702\300\233\311l\241\344(\t\252\032R\365\341H\\\023\260M\0026\225!\3461\324\274c\336\3071/\344\2307\"\324{;\346\235\254\256p\271\225\316\035\t\332\000\236^5\033\300\205~4\235\304?\357\232\016\340\207&\037\334\314a\353\302\305!\370\333!x\311\030\371\364\260\302\032Z\377^$;\343\002\304\206\306\273\362w\205f\371[\027\350\345\302\335\207k\215\003#\242<\247ki\343\241\330\256\234\017\247\256\355Sx{V\3743\322 \3019\313g\374\023\3503\214M\226\\\226\264\263\253'\263\263\265\251x\2027\2569l\264^\340\365&\275J\236I<\223kl\241\237\334&\017\231P<0v>\271\237\214B\304Y\020\241\2259\323\341\3176v\351SD\270\356\231(\222\fW\333\240\177\217\201Z\252+{\356\333\257\243,py}yyy\344\230N2\372\324K\342\177\300\n|\306\032\2372\377\310\022;\304\217\362w\276\217|\307M;\346\005G\353\272\354\351\261\307\246{<6\\\370\226\317\316q\315\322\246\306\252jC\351{\030f\252\244i\361\317\024i\016\332 \307@y\271\352\315\030\306\373:rgtW\334\270+\251\002\206\266\264\316\305\034\316c\235a\340oMOf\372\247\3546v\200\2177E\252\366\377N\266\313\321\376\001\347\314\314\177"
	.size	$__llvm_prf_nm, 550

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
	.addrsig_sym $__profc_iswdigit
	.addrsig_sym $__profd_iswdigit
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
