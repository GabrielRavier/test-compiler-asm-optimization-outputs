	.file	1 "mini-libc.c"
	.section .mdebug.abi64
	.previous
	.nan	2008
	.module	fp=64
	.module	oddspreg
	.module	arch=mips64
	.module	dspr2
	.module	eva
	.module	mcu
	.module	mdmx
	.module	mt
	.module	smartmips
	.module	virt
	.module	xpa
	.module	mips16e2
	.module	crc
	.module	ginv
	.module	loongson-mmi
	.module	loongson-ext2
	.abicalls
	.text
	.align	2
	.align	3
	.globl	make_ti
	.set	nomips16
	.set	nomicromips
	.ent	make_ti
	.type	make_ti, @function
make_ti:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$5
	jr	$31
	move	$3,$4

	.set	macro
	.set	reorder
	.end	make_ti
	.size	make_ti, .-make_ti
	.align	2
	.align	3
	.globl	make_tu
	.set	nomips16
	.set	nomicromips
	.ent	make_tu
	.type	make_tu, @function
make_tu:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$5
	jr	$31
	move	$3,$4

	.set	macro
	.set	reorder
	.end	make_tu
	.size	make_tu, .-make_tu
	.align	2
	.align	3
	.globl	memmove
	.set	nomips16
	.set	nomicromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$5,$4
	beq	$3,$0,.L7
	move	$2,$4

	daddu	$10,$5,$6
	beq	$6,$0,.L38
	daddu	$9,$4,$6

	.align	3
.L9:
	lb	$7,-1($10)
	daddiu	$9,$9,-1
	daddiu	$10,$10,-1
	bne	$2,$9,.L9
	sb	$7,0($9)

.L38:
	jr	$31
	nop

	.align	3
.L7:
	bne	$4,$5,.L35
	nop

	jr	$31
	nop

	.align	3
.L35:
	beq	$6,$0,.L38
	daddiu	$4,$6,-1

	sltu	$7,$4,8
	bne	$7,$0,.L10
	daddiu	$4,$5,1

	or	$9,$5,$2
	andi	$10,$9,0x7
	bne	$10,$0,.L10
	dsubu	$11,$2,$4

	sltu	$12,$11,7
	bne	$12,$0,.L10
	dsrl	$13,$6,3

	dsll	$14,$13,3
	move	$24,$2
	daddu	$15,$5,$14
	.align	3
.L11:
	ldc1	$f0,0($5)
	daddiu	$5,$5,8
	daddiu	$24,$24,8
	bne	$15,$5,.L11
	sdc1	$f0,-8($24)

	daddu	$25,$2,$14
	beq	$6,$14,.L38
	dsubu	$5,$6,$14

	lb	$3,0($15)
	li	$6,1			# 0x1
	beq	$5,$6,.L38
	sb	$3,0($25)

	lb	$4,1($15)
	li	$7,2			# 0x2
	beq	$5,$7,.L38
	sb	$4,1($25)

	lb	$9,2($15)
	li	$10,3			# 0x3
	beq	$5,$10,.L38
	sb	$9,2($25)

	lb	$11,3($15)
	li	$12,4			# 0x4
	beq	$5,$12,.L38
	sb	$11,3($25)

	lb	$13,4($15)
	li	$14,5			# 0x5
	beq	$5,$14,.L38
	sb	$13,4($25)

	lb	$24,5($15)
	li	$3,6			# 0x6
	beq	$5,$3,.L38
	sb	$24,5($25)

	lb	$15,6($15)
	jr	$31
	sb	$15,6($25)

	.align	3
.L10:
	daddu	$25,$2,$6
	b	.L14
	move	$6,$2

	.align	3
.L36:
	daddiu	$4,$4,1
.L14:
	lb	$5,-1($4)
	daddiu	$6,$6,1
	bne	$6,$25,.L36
	sb	$5,-1($6)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memmove
	.size	memmove, .-memmove
	.align	2
	.align	3
	.globl	memccpy
	.set	nomips16
	.set	nomicromips
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$7,$0,.L40
	andi	$6,$6,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L43:
	daddiu	$5,$5,1
	beq	$7,$0,.L42
	daddiu	$4,$4,1

.L40:
	lbu	$2,0($5)
	daddiu	$7,$7,-1
	bne	$2,$6,.L43
	sb	$2,0($4)

	jr	$31
	daddiu	$2,$4,1

	.align	3
.L42:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.align	3
	.globl	memchr
	.set	nomips16
	.set	nomicromips
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$6,$0,.L54
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L56:
	beq	$6,$0,.L57
	daddiu	$4,$4,1

.L54:
	lbu	$2,0($4)
	bne	$2,$5,.L56
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L57:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.align	3
	.globl	memcmp
	.set	nomips16
	.set	nomicromips
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnel	$6,$0,.L78
	lbu	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L67:
	daddiu	$4,$4,1
	beq	$6,$0,.L69
	daddiu	$5,$5,1

	lbu	$2,0($4)
.L78:
	lbu	$3,0($5)
	beq	$2,$3,.L67
	daddiu	$6,$6,-1

	jr	$31
	subu	$2,$2,$3

	.align	3
.L69:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.align	3
	.globl	memcpy
	.set	nomips16
	.set	nomicromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(memcpy)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(memcpy)))
	beq	$6,$0,.L80
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

.L80:
	ld	$31,24($sp)
	ld	$28,16($sp)
	move	$2,$16
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.align	3
	.globl	memrchr
	.set	nomips16
	.set	nomicromips
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$6,$6,-1
	daddu	$8,$4,$6
	andi	$5,$5,0x00ff
	b	.L86
	daddiu	$4,$4,-1

	.align	3
.L88:
	lbu	$3,0($2)
	beq	$3,$5,.L90
	daddiu	$8,$8,-1

.L86:
	bne	$8,$4,.L88
	move	$2,$8

	move	$2,$0
.L90:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
	.align	3
	.globl	memset
	.set	nomips16
	.set	nomicromips
	.ent	memset
	.type	memset, @function
memset:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(memset)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(memset)))
	beq	$6,$0,.L94
	move	$16,$4

	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	andi	$5,$5,0x00ff

.L94:
	ld	$31,24($sp)
	ld	$28,16($sp)
	move	$2,$16
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	memset
	.size	memset, .-memset
	.align	2
	.align	3
	.globl	stpcpy
	.set	nomips16
	.set	nomicromips
	.ent	stpcpy
	.type	stpcpy, @function
stpcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$3,0($5)
	move	$2,$4
	beq	$3,$0,.L104
	sb	$3,0($4)

	.align	3
.L98:
	lb	$4,1($5)
	daddiu	$2,$2,1
	daddiu	$5,$5,1
	bne	$4,$0,.L98
	sb	$4,0($2)

.L104:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
	.align	3
	.globl	strchrnul
	.set	nomips16
	.set	nomicromips
	.ent	strchrnul
	.type	strchrnul, @function
strchrnul:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	lb	$4,0($4)
	beq	$4,$0,.L114
	andi	$5,$5,0x00ff

	b	.L115
	andi	$3,$4,0x00ff

	.align	3
.L108:
	beq	$4,$0,.L114
	daddiu	$2,$2,1

	andi	$3,$4,0x00ff
.L115:
	bnel	$3,$5,.L108
	lb	$4,1($2)

.L114:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
	.align	3
	.globl	strchr
	.set	nomips16
	.set	nomicromips
	.ent	strchr
	.type	strchr, @function
strchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L118
	move	$2,$4

	.align	3
.L122:
	beq	$3,$0,.L121
	daddiu	$2,$2,1

.L118:
	lb	$3,0($2)
	bne	$3,$5,.L122
	nop

	jr	$31
	nop

	.align	3
.L121:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strchr
	.size	strchr, .-strchr
	.align	2
	.align	3
	.globl	strcmp
	.set	nomips16
	.set	nomicromips
	.ent	strcmp
	.type	strcmp, @function
strcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$3,0($4)
	lb	$2,0($5)
	beq	$3,$2,.L134
	daddiu	$4,$4,1

	b	.L133
	andi	$3,$3,0x00ff

	.align	3
.L126:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,.L132
	daddiu	$4,$4,1

.L134:
	bne	$3,$0,.L126
	daddiu	$5,$5,1

	andi	$4,$2,0x00ff
	jr	$31
	subu	$2,$3,$4

	.align	3
.L132:
	andi	$3,$3,0x00ff
	.align	3
.L133:
	andi	$4,$2,0x00ff
	jr	$31
	subu	$2,$3,$4

	.set	macro
	.set	reorder
	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
	.align	3
	.globl	strlen
	.set	nomips16
	.set	nomicromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$2,0($4)
	beq	$2,$0,.L138
	move	$6,$4

	.align	3
.L137:
	lb	$3,1($6)
	bne	$3,$0,.L137
	daddiu	$6,$6,1

	jr	$31
	dsubu	$2,$6,$4

	.align	3
.L138:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.align	3
	.globl	strncmp
	.set	nomips16
	.set	nomicromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L149
	nop

	lbu	$2,0($4)
	beq	$2,$0,.L152
	daddiu	$6,$6,-1

	b	.L145
	daddu	$9,$4,$6

	.align	3
.L154:
	beq	$4,$9,.L144
	nop

	bne	$3,$2,.L144
	daddiu	$4,$4,1

	lbu	$2,0($4)
	beql	$2,$0,.L153
	lbu	$3,1($5)

	move	$5,$7
.L145:
	lbu	$3,0($5)
	bne	$3,$0,.L154
	daddiu	$7,$5,1

.L144:
	jr	$31
	subu	$2,$2,$3

	.align	3
.L149:
	jr	$31
	move	$2,$0

	.align	3
.L153:
	jr	$31
	subu	$2,$2,$3

.L152:
	b	.L144
	lbu	$3,0($5)

	.set	macro
	.set	reorder
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.align	3
	.globl	swab
	.set	nomips16
	.set	nomicromips
	.ent	swab
	.type	swab, @function
swab:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$6,2
	bne	$2,$0,.L165
	daddiu	$3,$6,-2

	sltu	$7,$3,14
	bne	$7,$0,.L157
	or	$8,$5,$4

	andi	$9,$8,0x7
	bne	$9,$0,.L157
	dsrl	$11,$6,4

	dsll	$12,$11,4
	dsrl	$13,$6,1
	move	$25,$4
	move	$3,$5
	daddu	$10,$4,$12
	.align	3
.L158:
	ld	$15,0($25)
	ld	$24,8($25)
	dmtc1	$15,$f0
	dmtc1	$24,$f1
	daddiu	$3,$3,16
	daddiu	$25,$25,16
	punpckhbh	$f2,$f0,$f1
	punpcklbh	$f4,$f0,$f1
	punpckhbh	$f6,$f4,$f2
	punpcklbh	$f8,$f4,$f2
	punpcklbh	$f10,$f8,$f6
	punpckhbh	$f12,$f8,$f6
	punpcklbh	$f14,$f12,$f10
	punpckhbh	$f16,$f12,$f10
	sdc1	$f14,-16($3)
	bne	$25,$10,.L158
	sdc1	$f16,-8($3)

	dsll	$10,$11,4
	dsll	$11,$11,3
	daddu	$5,$5,$12
	dsubu	$25,$6,$10
	beq	$13,$11,.L165
	daddu	$12,$4,$12

	lbu	$13,1($12)
	lbu	$6,0($12)
	slt	$4,$25,4
	sb	$13,0($5)
	bne	$4,$0,.L165
	sb	$6,1($5)

	lbu	$3,3($12)
	lbu	$8,2($12)
	slt	$9,$25,6
	sb	$3,2($5)
	bne	$9,$0,.L165
	sb	$8,3($5)

	lbu	$15,5($12)
	lbu	$24,4($12)
	slt	$7,$25,8
	sb	$15,4($5)
	bne	$7,$0,.L165
	sb	$24,5($5)

	lbu	$2,7($12)
	lbu	$10,6($12)
	slt	$11,$25,10
	sb	$2,6($5)
	bne	$11,$0,.L165
	sb	$10,7($5)

	lbu	$13,9($12)
	lbu	$6,8($12)
	slt	$4,$25,12
	sb	$13,8($5)
	bne	$4,$0,.L165
	sb	$6,9($5)

	lbu	$8,11($12)
	lbu	$9,10($12)
	slt	$25,$25,14
	sb	$8,10($5)
	bne	$25,$0,.L165
	sb	$9,11($5)

	lbu	$3,13($12)
	lbu	$12,12($12)
	sb	$3,12($5)
	jr	$31
	sb	$12,13($5)

	.align	3
.L157:
	dsrl	$15,$6,1
	dsll	$24,$15,1
	daddu	$7,$4,$24
	.align	3
.L160:
	lbu	$2,1($4)
	lbu	$10,0($4)
	daddiu	$4,$4,2
	sb	$2,0($5)
	sb	$10,1($5)
	bne	$7,$4,.L160
	daddiu	$5,$5,2

.L165:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	swab
	.size	swab, .-swab
	.align	2
	.align	3
	.globl	isalpha
	.set	nomips16
	.set	nomicromips
	.ent	isalpha
	.type	isalpha, @function
isalpha:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ori	$2,$4,0x20
	addiu	$4,$2,-97
	jr	$31
	sltu	$2,$4,26

	.set	macro
	.set	reorder
	.end	isalpha
	.size	isalpha, .-isalpha
	.align	2
	.align	3
	.globl	isascii
	.set	nomips16
	.set	nomicromips
	.ent	isascii
	.type	isascii, @function
isascii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sltu	$2,$4,128

	.set	macro
	.set	reorder
	.end	isascii
	.size	isascii, .-isascii
	.align	2
	.align	3
	.globl	isblank
	.set	nomips16
	.set	nomicromips
	.ent	isblank
	.type	isblank, @function
isblank:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,32			# 0x20
	beq	$4,$2,.L172
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

	.align	3
.L172:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isblank
	.size	isblank, .-isblank
	.align	2
	.align	3
	.globl	iscntrl
	.set	nomips16
	.set	nomicromips
	.ent	iscntrl
	.type	iscntrl, @function
iscntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,32
	bne	$2,$0,.L176
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

	.align	3
.L176:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
	.align	3
	.globl	isdigit
	.set	nomips16
	.set	nomicromips
	.ent	isdigit
	.type	isdigit, @function
isdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-48
	jr	$31
	sltu	$2,$2,10

	.set	macro
	.set	reorder
	.end	isdigit
	.size	isdigit, .-isdigit
	.align	2
	.align	3
	.globl	isgraph
	.set	nomips16
	.set	nomicromips
	.ent	isgraph
	.type	isgraph, @function
isgraph:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-33
	jr	$31
	sltu	$2,$2,94

	.set	macro
	.set	reorder
	.end	isgraph
	.size	isgraph, .-isgraph
	.align	2
	.align	3
	.globl	islower
	.set	nomips16
	.set	nomicromips
	.ent	islower
	.type	islower, @function
islower:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-97
	jr	$31
	sltu	$2,$2,26

	.set	macro
	.set	reorder
	.end	islower
	.size	islower, .-islower
	.align	2
	.align	3
	.globl	isprint
	.set	nomips16
	.set	nomicromips
	.ent	isprint
	.type	isprint, @function
isprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-32
	jr	$31
	sltu	$2,$2,95

	.set	macro
	.set	reorder
	.end	isprint
	.size	isprint, .-isprint
	.align	2
	.align	3
	.globl	isspace
	.set	nomips16
	.set	nomicromips
	.ent	isspace
	.type	isspace, @function
isspace:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,32			# 0x20
	beq	$4,$2,.L188
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

	.align	3
.L188:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isspace
	.size	isspace, .-isspace
	.align	2
	.align	3
	.globl	isupper
	.set	nomips16
	.set	nomicromips
	.ent	isupper
	.type	isupper, @function
isupper:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-65
	jr	$31
	sltu	$2,$2,26

	.set	macro
	.set	reorder
	.end	isupper
	.size	isupper, .-isupper
	.align	2
	.align	3
	.globl	iswcntrl
	.set	nomips16
	.set	nomicromips
	.ent	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,32
	bne	$2,$0,.L196
	addiu	$5,$4,-127

	sltu	$6,$5,33
	beq	$6,$0,.L198
	addiu	$7,$4,-8232

.L196:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L198:
	sltu	$8,$7,2
	bne	$8,$0,.L196
	li	$9,-65536			# 0xffffffffffff0000

	addiu	$10,$9,7
	addu	$4,$4,$10
	jr	$31
	sltu	$2,$4,3

	.set	macro
	.set	reorder
	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
	.align	3
	.globl	iswdigit
	.set	nomips16
	.set	nomicromips
	.ent	iswdigit
	.type	iswdigit, @function
iswdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-48
	jr	$31
	sltu	$2,$2,10

	.set	macro
	.set	reorder
	.end	iswdigit
	.size	iswdigit, .-iswdigit
	.align	2
	.align	3
	.globl	iswprint
	.set	nomips16
	.set	nomicromips
	.ent	iswprint
	.type	iswprint, @function
iswprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,255
	bne	$2,$0,.L209
	sltu	$3,$4,8232

	bne	$3,$0,.L206
	addiu	$6,$4,-8234

	li	$7,47062			# 0xb7d6
	sltu	$8,$6,$7
	bne	$8,$0,.L206
	li	$9,-65536			# 0xffffffffffff0000

	addiu	$10,$9,8192
	addu	$11,$4,$10
	sltu	$12,$11,8185
	bne	$12,$0,.L206
	addiu	$13,$9,4

	li	$14,1048576			# 0x100000
	addu	$15,$4,$13
	addiu	$24,$14,4
	sltu	$25,$15,$24
	beq	$25,$0,.L207
	andi	$4,$4,0xfffe

	xori	$2,$4,0xfffe
	jr	$31
	sltu	$2,$0,$2

	.align	3
.L206:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L209:
	addiu	$3,$4,1
	andi	$6,$3,0x7f
	sltu	$7,$6,33
	jr	$31
	sltu	$2,$7,1

	.align	3
.L207:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
	.align	3
	.globl	iswxdigit
	.set	nomips16
	.set	nomicromips
	.ent	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-48
	sltu	$5,$2,10
	bne	$5,$0,.L212
	ori	$4,$4,0x20

	addiu	$6,$4,-97
	jr	$31
	sltu	$2,$6,6

	.align	3
.L212:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
	.align	3
	.globl	toascii
	.set	nomips16
	.set	nomicromips
	.ent	toascii
	.type	toascii, @function
toascii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	andi	$2,$4,0x7f

	.set	macro
	.set	reorder
	.end	toascii
	.size	toascii, .-toascii
	.align	2
	.align	3
	.globl	fdim
	.set	nomips16
	.set	nomicromips
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L219
	c.un.d	$fcc1,$f13,$f13

	bc1t	$fcc1,.L220
	nop

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L223
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

	.align	3
.L223:
	jr	$31
	dmtc1	$0,$f0

	.align	3
.L219:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L220:
	jr	$31
	mov.d	$f0,$f13

	.set	macro
	.set	reorder
	.end	fdim
	.size	fdim, .-fdim
	.align	2
	.align	3
	.globl	fdimf
	.set	nomips16
	.set	nomicromips
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L228
	c.un.s	$fcc1,$f13,$f13

	bc1t	$fcc1,.L229
	nop

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L232
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

	.align	3
.L232:
	jr	$31
	mtc1	$0,$f0

	.align	3
.L228:
	jr	$31
	mov.s	$f0,$f12

	.align	3
.L229:
	jr	$31
	mov.s	$f0,$f13

	.set	macro
	.set	reorder
	.end	fdimf
	.size	fdimf, .-fdimf
	.align	2
	.align	3
	.globl	fmax
	.set	nomips16
	.set	nomicromips
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.d	$fcc0,$f12,$f12
	daddiu	$sp,$sp,-16
	mov.d	$f0,$f13
	sdc1	$f12,0($sp)
	bc1t	$fcc0,.L234
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L238
	ld	$2,0($sp)

	ld	$3,8($sp)
	dsrl	$5,$2,63
	dsrl	$6,$3,63
	beq	$5,$6,.L236
	mov.d	$f0,$f12

	movn.d	$f0,$f13,$5
.L234:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L236:
	c.lt.d	$fcc2,$f12,$f13
	daddiu	$sp,$sp,16
	jr	$31
	movt.d	$f0,$f13,$fcc2

	.align	3
.L238:
	b	.L234
	mov.d	$f0,$f12

	.set	macro
	.set	reorder
	.end	fmax
	.size	fmax, .-fmax
	.align	2
	.align	3
	.globl	fmaxf
	.set	nomips16
	.set	nomicromips
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.s	$fcc0,$f12,$f12
	daddiu	$sp,$sp,-16
	mov.s	$f0,$f13
	swc1	$f12,0($sp)
	bc1t	$fcc0,.L241
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L245
	lw	$3,0($sp)

	lw	$2,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$6,$3,$4
	and	$7,$2,$4
	mov.s	$f0,$f12
	beq	$6,$7,.L243
	move	$8,$6

	movn.s	$f0,$f13,$8
.L241:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L243:
	c.lt.s	$fcc2,$f12,$f13
	daddiu	$sp,$sp,16
	jr	$31
	movt.s	$f0,$f13,$fcc2

	.align	3
.L245:
	b	.L241
	mov.s	$f0,$f12

	.set	macro
	.set	reorder
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
	.align	3
	.globl	fmaxl
	.set	nomips16
	.set	nomicromips
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	$sp,112,$31		# vars= 32, regs= 10/0, args= 0, gp= 0
	.mask	0xd0df0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$fp,96($sp)
	sd	$28,88($sp)
	dmfc1	$fp,$f12
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	dmfc1	$3,$f13
	sd	$23,80($sp)
	sd	$22,72($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	dmfc1	$23,$f14
	dmfc1	$22,$f15
	dmtc1	$fp,$f12
	dmtc1	$fp,$f14
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$3,$f15
	dmtc1	$3,$f13
	sd	$20,64($sp)
	sd	$31,104($sp)
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$20,$3

	bne	$2,$0,.L248
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$23,$f14
	dmtc1	$23,$f12
	dmtc1	$22,$f15
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$22,$f13

	bne	$2,$0,.L255
	dsrl	$2,$20,63

	dsrl	$4,$22,63
	beql	$2,$4,.L250
	sd	$23,0($sp)

	beq	$2,$0,.L260
	ld	$31,104($sp)

.L248:
	ld	$31,104($sp)
.L261:
	dmtc1	$22,$f2
	dmtc1	$23,$f0
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$23,80($sp)
	ld	$22,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	ld	$17,40($sp)
	ld	$16,32($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L250:
	sd	$fp,16($sp)
	ldc1	$f14,0($sp)
	ldc1	$f12,16($sp)
	sd	$22,8($sp)
	sd	$20,24($sp)
	ld	$25,%call16(__lttf2)($28)
	ldc1	$f15,8($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f13,24($sp)

	bltz	$2,.L261
	ld	$31,104($sp)

.L255:
	ld	$31,104($sp)
.L260:
	move	$23,$fp
	move	$22,$20
	dmtc1	$22,$f2
	dmtc1	$23,$f0
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$23,80($sp)
	ld	$22,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	ld	$17,40($sp)
	ld	$16,32($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
	.align	3
	.globl	fmin
	.set	nomips16
	.set	nomicromips
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.d	$fcc0,$f12,$f12
	daddiu	$sp,$sp,-16
	mov.d	$f0,$f13
	sdc1	$f12,0($sp)
	bc1t	$fcc0,.L262
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L266
	ld	$2,0($sp)

	ld	$3,8($sp)
	dsrl	$5,$2,63
	dsrl	$6,$3,63
	beql	$5,$6,.L264
	c.lt.d	$fcc2,$f12,$f13

	movn.d	$f0,$f12,$5
.L262:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L264:
	mov.d	$f0,$f12
	daddiu	$sp,$sp,16
	jr	$31
	movf.d	$f0,$f13,$fcc2

	.align	3
.L266:
	b	.L262
	mov.d	$f0,$f12

	.set	macro
	.set	reorder
	.end	fmin
	.size	fmin, .-fmin
	.align	2
	.align	3
	.globl	fminf
	.set	nomips16
	.set	nomicromips
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.s	$fcc0,$f12,$f12
	daddiu	$sp,$sp,-16
	mov.s	$f0,$f13
	swc1	$f12,0($sp)
	bc1t	$fcc0,.L269
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L273
	lw	$3,0($sp)

	lw	$2,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$6,$3,$4
	and	$7,$2,$4
	beq	$6,$7,.L271
	move	$8,$6

	movn.s	$f0,$f12,$8
.L269:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L271:
	c.lt.s	$fcc2,$f12,$f13
	mov.s	$f0,$f12
	daddiu	$sp,$sp,16
	jr	$31
	movf.s	$f0,$f13,$fcc2

	.align	3
.L273:
	b	.L269
	mov.s	$f0,$f12

	.set	macro
	.set	reorder
	.end	fminf
	.size	fminf, .-fminf
	.align	2
	.align	3
	.globl	fminl
	.set	nomips16
	.set	nomicromips
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	$sp,112,$31		# vars= 32, regs= 10/0, args= 0, gp= 0
	.mask	0xd0df0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$28,88($sp)
	sd	$22,72($sp)
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	dmfc1	$22,$f12
	daddu	$28,$28,$25
	dmfc1	$3,$f13
	sd	$fp,96($sp)
	sd	$23,80($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	dmfc1	$fp,$f14
	dmfc1	$23,$f15
	dmtc1	$22,$f12
	dmtc1	$22,$f14
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$3,$f15
	dmtc1	$3,$f13
	sd	$20,64($sp)
	sd	$31,104($sp)
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$20,$3

	bne	$2,$0,.L282
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$fp,$f14
	dmtc1	$fp,$f12
	dmtc1	$23,$f15
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$23,$f13

	bne	$2,$0,.L276
	dsrl	$2,$20,63

	dsrl	$4,$23,63
	beql	$2,$4,.L278
	sd	$fp,0($sp)

	beq	$2,$0,.L288
	ld	$31,104($sp)

.L276:
	ld	$31,104($sp)
.L289:
	dmtc1	$20,$f2
	dmtc1	$22,$f0
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$23,80($sp)
	ld	$22,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	ld	$17,40($sp)
	ld	$16,32($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L278:
	sd	$22,16($sp)
	ldc1	$f14,0($sp)
	ldc1	$f12,16($sp)
	sd	$23,8($sp)
	sd	$20,24($sp)
	ld	$25,%call16(__lttf2)($28)
	ldc1	$f15,8($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f13,24($sp)

	bltz	$2,.L289
	ld	$31,104($sp)

.L282:
	ld	$31,104($sp)
.L288:
	move	$22,$fp
	move	$20,$23
	dmtc1	$20,$f2
	dmtc1	$22,$f0
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$23,80($sp)
	ld	$22,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	ld	$17,40($sp)
	ld	$16,32($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	fminl
	.size	fminl, .-fminl
	.align	2
	.align	3
	.globl	l64a
	.set	nomips16
	.set	nomicromips
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$7,%hi(%neg(%gp_rel(l64a)))
	daddu	$7,$7,$25
	sll	$4,$4,0
	beq	$4,$0,.L293
	daddiu	$7,$7,%lo(%neg(%gp_rel(l64a)))

	ld	$8,%got_page(s.0)($7)
	ld	$6,%got_page(digits)($7)
	daddiu	$2,$8,%got_ofst(s.0)
	move	$3,$4
	move	$5,$2
	daddiu	$9,$6,%got_ofst(digits)
	.align	3
.L292:
	andi	$10,$3,0x3f
	daddu	$11,$9,$10
	lbu	$12,0($11)
	srl	$3,$3,6
	sb	$12,0($5)
	bne	$3,$0,.L292
	daddiu	$5,$5,1

	jr	$31
	sb	$0,0($5)

	.align	3
.L293:
	ld	$2,%got_page(s.0)($7)
	daddiu	$2,$2,%got_ofst(s.0)
	move	$5,$2
	jr	$31
	sb	$0,0($5)

	.set	macro
	.set	reorder
	.end	l64a
	.size	l64a, .-l64a
	.align	2
	.align	3
	.globl	srand
	.set	nomips16
	.set	nomicromips
	.ent	srand
	.type	srand, @function
srand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(%neg(%gp_rel(srand)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(srand)))
	addiu	$4,$4,-1
	ld	$2,%got_page(seed)($3)
	dsll	$5,$4,32
	dsrl	$6,$5,32
	jr	$31
	sd	$6,%got_ofst(seed)($2)

	.set	macro
	.set	reorder
	.end	srand
	.size	srand, .-srand
	.align	2
	.align	3
	.globl	rand
	.set	nomips16
	.set	nomicromips
	.ent	rand
	.type	rand, @function
rand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,1481703424			# 0x58510000
	lui	$5,%hi(%neg(%gp_rel(rand)))
	ori	$2,$3,0xf42d
	daddu	$5,$5,$25
	dsll	$6,$2,16
	daddiu	$5,$5,%lo(%neg(%gp_rel(rand)))
	ld	$4,%got_page(seed)($5)
	daddiu	$7,$6,19605
	dsll	$8,$7,16
	ld	$9,%got_ofst(seed)($4)
	daddiu	$10,$8,32557
	gsdmultu	$11,$9,$10
	daddiu	$12,$11,1
	sd	$12,%got_ofst(seed)($4)
	jr	$31
	dsrl	$2,$12,33

	.set	macro
	.set	reorder
	.end	rand
	.size	rand, .-rand
	.align	2
	.align	3
	.globl	insque
	.set	nomips16
	.set	nomicromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beql	$5,$0,.L307
	sd	$0,8($4)

	ld	$2,0($5)
	sd	$5,8($4)
	sd	$2,0($4)
	sd	$4,0($5)
	ld	$5,0($4)
	bnel	$5,$0,.L309
	sd	$4,8($5)

.L309:
	jr	$31
	nop

	.align	3
.L307:
	sd	$0,0($4)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	insque
	.size	insque, .-insque
	.align	2
	.align	3
	.globl	remque
	.set	nomips16
	.set	nomicromips
	.ent	remque
	.type	remque, @function
remque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($4)
	beql	$2,$0,.L321
	ld	$4,8($4)

	ld	$3,8($4)
	sd	$3,8($2)
	ld	$4,8($4)
.L321:
	bnel	$4,$0,.L320
	sd	$2,0($4)

.L320:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	remque
	.size	remque, .-remque
	.align	2
	.align	3
	.globl	lsearch
	.set	nomips16
	.set	nomicromips
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	sd	$19,32($sp)
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	ld	$19,0($6)
	daddu	$28,$28,$25
	sd	$fp,80($sp)
	sd	$23,64($sp)
	sd	$20,40($sp)
	sd	$18,24($sp)
	sd	$31,88($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	move	$23,$6
	move	$20,$4
	move	$fp,$5
	beq	$19,$0,.L323
	move	$18,$7

	move	$21,$8
	move	$16,$5
	b	.L325
	move	$17,$0

	.align	3
.L338:
	beq	$19,$17,.L323
	daddu	$16,$16,$18

.L325:
	move	$5,$16
	move	$4,$20
	move	$25,$21
	jalr	$25
	move	$22,$16

	bne	$2,$0,.L338
	daddiu	$17,$17,1

.L322:
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	move	$2,$22
	ld	$22,56($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.align	3
.L323:
	daddiu	$2,$19,1
	gsdmultu	$3,$18,$19
	sd	$2,0($23)
	beq	$18,$0,.L322
	daddu	$22,$fp,$3

	ld	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$22

	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	move	$2,$22
	ld	$22,56($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.align	3
	.globl	lfind
	.set	nomips16
	.set	nomicromips
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$20,40($sp)
	ld	$20,0($6)
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	beq	$20,$0,.L340
	sd	$16,8($sp)

	move	$18,$4
	move	$21,$7
	move	$19,$8
	move	$16,$5
	b	.L342
	move	$17,$0

	.align	3
.L351:
	beq	$20,$17,.L340
	daddu	$16,$16,$21

.L342:
	move	$5,$16
	move	$4,$18
	move	$25,$19
	jalr	$25
	move	$22,$16

	bne	$2,$0,.L351
	daddiu	$17,$17,1

	ld	$31,72($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	move	$2,$22
	ld	$22,56($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L340:
	ld	$31,72($sp)
	move	$22,$0
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	move	$2,$22
	ld	$22,56($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	lfind
	.size	lfind, .-lfind
	.align	2
	.align	3
	.globl	abs
	.set	nomips16
	.set	nomicromips
	.ent	abs
	.type	abs, @function
abs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L356
	nop

	jr	$31
	move	$2,$4

	.align	3
.L356:
	jr	$31
	subu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	abs
	.size	abs, .-abs
	.align	2
	.align	3
	.globl	atoi
	.set	nomips16
	.set	nomicromips
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,32			# 0x20
.L364:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L358
	sltu	$6,$2,5

	bnel	$6,$0,.L364
	daddiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,.L359
	li	$11,45			# 0x2d

	bne	$5,$11,.L377
	addiu	$14,$5,-48

	lb	$12,1($4)
	addiu	$14,$12,-48
	sltu	$13,$14,10
	beq	$13,$0,.L369
	daddiu	$4,$4,1

	li	$24,1			# 0x1
.L362:
	move	$2,$0
	.align	3
.L366:
	sll	$25,$2,2
	lb	$5,1($4)
	addu	$3,$25,$2
	sll	$8,$3,1
	move	$7,$14
	subu	$2,$8,$14
	addiu	$14,$5,-48
	sltu	$6,$14,10
	bne	$6,$0,.L366
	daddiu	$4,$4,1

	bne	$24,$0,.L378
	nop

	jr	$31
	subu	$2,$7,$8

	.align	3
.L358:
	b	.L364
	daddiu	$4,$4,1

	.align	3
.L377:
	sltu	$15,$14,10
	bne	$15,$0,.L362
	move	$24,$0

.L369:
	move	$2,$0
.L378:
	jr	$31
	nop

	.align	3
.L359:
	lb	$8,1($4)
	move	$24,$0
	addiu	$14,$8,-48
	sltu	$10,$14,10
	bne	$10,$0,.L362
	daddiu	$4,$4,1

	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.align	3
	.globl	atol
	.set	nomips16
	.set	nomicromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,32			# 0x20
.L386:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L380
	sltu	$6,$2,5

	bnel	$6,$0,.L386
	daddiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,.L381
	li	$11,45			# 0x2d

	bne	$5,$11,.L399
	addiu	$14,$5,-48

	lb	$12,1($4)
	addiu	$14,$12,-48
	sltu	$13,$14,10
	beq	$13,$0,.L391
	daddiu	$4,$4,1

	li	$24,1			# 0x1
.L384:
	move	$2,$0
	.align	3
.L388:
	lb	$25,1($4)
	dsll	$3,$2,2
	daddu	$5,$3,$2
	move	$6,$14
	addiu	$14,$25,-48
	dsll	$8,$5,1
	sltu	$7,$14,10
	daddiu	$4,$4,1
	bne	$7,$0,.L388
	dsubu	$2,$8,$6

	bne	$24,$0,.L400
	nop

	jr	$31
	dsubu	$2,$6,$8

	.align	3
.L380:
	b	.L386
	daddiu	$4,$4,1

	.align	3
.L399:
	sltu	$15,$14,10
	bne	$15,$0,.L384
	move	$24,$0

.L391:
	move	$2,$0
.L400:
	jr	$31
	nop

	.align	3
.L381:
	lb	$8,1($4)
	move	$24,$0
	addiu	$14,$8,-48
	sltu	$10,$14,10
	bne	$10,$0,.L384
	daddiu	$4,$4,1

	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	atol
	.size	atol, .-atol
	.align	2
	.align	3
	.globl	atoll
	.set	nomips16
	.set	nomicromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,32			# 0x20
.L406:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L402
	sltu	$6,$2,5

	bnel	$6,$0,.L406
	daddiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,.L403
	li	$8,45			# 0x2d

	beql	$5,$8,.L404
	lb	$10,1($4)

.L421:
	addiu	$6,$5,-48
	sltu	$12,$6,10
	beq	$12,$0,.L413
	move	$13,$0

.L407:
	move	$2,$0
	.align	3
.L410:
	lb	$14,1($4)
	dsll	$15,$2,2
	daddu	$24,$15,$2
	move	$25,$6
	addiu	$6,$14,-48
	dsll	$3,$24,1
	sltu	$7,$6,10
	daddiu	$4,$4,1
	bne	$7,$0,.L410
	dsubu	$2,$3,$25

	beq	$13,$0,.L422
	nop

	jr	$31
	nop

	.align	3
.L402:
	b	.L406
	daddiu	$4,$4,1

	.align	3
.L422:
	jr	$31
	dsubu	$2,$25,$3

	.align	3
.L404:
	li	$13,1			# 0x1
	addiu	$6,$10,-48
	sltu	$11,$6,10
	bne	$11,$0,.L407
	daddiu	$4,$4,1

.L413:
	jr	$31
	move	$2,$0

	.align	3
.L403:
	lb	$5,1($4)
	b	.L421
	daddiu	$4,$4,1

	.set	macro
	.set	reorder
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.align	3
	.globl	bsearch
	.set	nomips16
	.set	nomicromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	beq	$6,$0,.L424
	sd	$16,8($sp)

	move	$16,$6
	move	$20,$4
	move	$18,$5
	move	$19,$7
	b	.L427
	move	$21,$8

	.align	3
.L437:
	beq	$2,$0,.L423
	dsubu	$16,$16,$22

	beq	$16,$0,.L424
	daddu	$18,$17,$19

.L427:
	dsrl	$22,$16,1
.L438:
	gsdmultu	$17,$22,$19
	daddu	$17,$18,$17
	move	$5,$17
	move	$4,$20
	move	$25,$21
	jalr	$25
	daddiu	$16,$16,-1

	bgez	$2,.L437
	nop

	move	$16,$22
	bne	$16,$0,.L438
	dsrl	$22,$16,1

.L424:
	move	$17,$0
.L423:
	ld	$31,72($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$16,8($sp)
	move	$2,$17
	ld	$17,16($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.align	3
	.globl	bsearch_r
	.set	nomips16
	.set	nomicromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sll	$6,$6,0
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$23,64($sp)
	sd	$19,32($sp)
	move	$20,$4
	move	$17,$5
	move	$18,$7
	move	$21,$8
	move	$22,$9
	beq	$6,$0,.L444
	move	$16,$6

	.align	3
.L452:
	dsra	$fp,$16,1
	.align	3
.L455:
	gsdmultu	$23,$fp,$18
	daddu	$23,$17,$23
	move	$6,$22
	move	$5,$23
	move	$4,$20
	move	$25,$21
	jalr	$25
	sra	$19,$16,1

	addiu	$16,$16,-1
	beq	$2,$0,.L439
	sra	$16,$16,1

	blez	$2,.L442
	nop

	bne	$16,$0,.L452
	daddu	$17,$23,$18

.L444:
	move	$23,$0
.L439:
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	move	$2,$23
	ld	$23,64($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.align	3
.L442:
	beq	$fp,$0,.L444
	move	$16,$19

	b	.L455
	dsra	$fp,$16,1

	.set	macro
	.set	reorder
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.align	3
	.globl	div
	.set	nomips16
	.set	nomicromips
	.ent	div
	.type	div, @function
div:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	div	$0,$4,$5
	teq	$5,$0,7
	daddiu	$sp,$sp,-16
	daddiu	$sp,$sp,16
	mfhi	$4
	mflo	$3
	mtc1	$4,$f1
	mtc1	$3,$f0
	punpcklwd	$f2,$f0,$f1
	dmfc1	$5,$f2
	sll	$2,$5,0
	dsll	$8,$2,32
	dsrl	$7,$5,32
	dsrl	$9,$8,32
	dsll	$10,$7,32
	jr	$31
	or	$2,$9,$10

	.set	macro
	.set	reorder
	.end	div
	.size	div, .-div
	.align	2
	.align	3
	.globl	imaxabs
	.set	nomips16
	.set	nomicromips
	.ent	imaxabs
	.type	imaxabs, @function
imaxabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L461
	move	$2,$4

	jr	$31
	nop

	.align	3
.L461:
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	imaxabs
	.size	imaxabs, .-imaxabs
	.align	2
	.align	3
	.globl	imaxdiv
	.set	nomips16
	.set	nomicromips
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ddiv	$0,$4,$5
	teq	$5,$0,7
	daddiu	$sp,$sp,-16
	daddiu	$sp,$sp,16
	mfhi	$3
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	imaxdiv
	.size	imaxdiv, .-imaxdiv
	.align	2
	.align	3
	.globl	labs
	.set	nomips16
	.set	nomicromips
	.ent	labs
	.type	labs, @function
labs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L469
	move	$2,$4

	jr	$31
	nop

	.align	3
.L469:
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	labs
	.size	labs, .-labs
	.align	2
	.align	3
	.globl	ldiv
	.set	nomips16
	.set	nomicromips
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ddiv	$0,$4,$5
	teq	$5,$0,7
	daddiu	$sp,$sp,-16
	daddiu	$sp,$sp,16
	mfhi	$3
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	ldiv
	.size	ldiv, .-ldiv
	.align	2
	.align	3
	.globl	llabs
	.set	nomips16
	.set	nomicromips
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L477
	move	$2,$4

	jr	$31
	nop

	.align	3
.L477:
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	llabs
	.size	llabs, .-llabs
	.align	2
	.align	3
	.globl	lldiv
	.set	nomips16
	.set	nomicromips
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ddiv	$0,$4,$5
	teq	$5,$0,7
	daddiu	$sp,$sp,-16
	daddiu	$sp,$sp,16
	mfhi	$3
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	lldiv
	.size	lldiv, .-lldiv
	.align	2
	.align	3
	.globl	wcschr
	.set	nomips16
	.set	nomicromips
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	bne	$2,$0,.L483
	nop

	jr	$31
	nop

	.align	3
.L485:
	beq	$2,$0,.L486
	daddiu	$4,$4,4

.L483:
	bnel	$5,$2,.L485
	lw	$2,4($4)

	jr	$31
	move	$2,$4

	.align	3
.L486:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	wcschr
	.size	wcschr, .-wcschr
	.align	2
	.align	3
	.globl	wcscmp
	.set	nomips16
	.set	nomicromips
	.ent	wcscmp
	.type	wcscmp, @function
wcscmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	lw	$3,0($5)
	beql	$2,$3,.L501
	daddiu	$4,$4,4

	b	.L500
	slt	$4,$2,$3

	.align	3
.L494:
	lw	$2,0($4)
	lw	$3,0($5)
	bne	$2,$3,.L493
	daddiu	$4,$4,4

.L501:
	bne	$2,$0,.L494
	daddiu	$5,$5,4

.L493:
	slt	$4,$2,$3
.L500:
	bne	$4,$0,.L496
	nop

	jr	$31
	slt	$2,$3,$2

	.align	3
.L496:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
	.align	3
	.globl	wcscpy
	.set	nomips16
	.set	nomicromips
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	move	$3,$4
	.align	3
.L503:
	lw	$6,0($5)
	daddiu	$3,$3,4
	daddiu	$5,$5,4
	bne	$6,$0,.L503
	sw	$6,-4($3)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
	.align	3
	.globl	wcslen
	.set	nomips16
	.set	nomicromips
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	beq	$2,$0,.L509
	move	$6,$4

	.align	3
.L508:
	lw	$3,4($6)
	bne	$3,$0,.L508
	daddiu	$6,$6,4

	dsubu	$4,$6,$4
	jr	$31
	dsra	$2,$4,2

	.align	3
.L509:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	wcslen
	.size	wcslen, .-wcslen
	.align	2
	.align	3
	.globl	wcsncmp
	.set	nomips16
	.set	nomicromips
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnel	$6,$0,.L527
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L524:
	beql	$2,$0,.L528
	lw	$6,0($4)

	daddiu	$4,$4,4
	beq	$6,$0,.L518
	daddiu	$5,$5,4

	lw	$2,0($4)
.L527:
	lw	$3,0($5)
	beq	$3,$2,.L524
	daddiu	$6,$6,-1

	lw	$6,0($4)
.L528:
	lw	$5,0($5)
	slt	$4,$6,$5
	bne	$4,$0,.L525
	nop

	jr	$31
	slt	$2,$5,$6

	.align	3
.L525:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L518:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
	.align	3
	.globl	wmemchr
	.set	nomips16
	.set	nomicromips
	.ent	wmemchr
	.type	wmemchr, @function
wmemchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnel	$6,$0,.L539
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L532:
	beq	$6,$0,.L533
	daddiu	$4,$4,4

	lw	$2,0($4)
.L539:
	bne	$2,$5,.L532
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L533:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
	.align	3
	.globl	wmemcmp
	.set	nomips16
	.set	nomicromips
	.ent	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnel	$6,$0,.L556
	lw	$3,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L543:
	daddiu	$4,$4,4
	beq	$6,$0,.L546
	daddiu	$5,$5,4

	lw	$3,0($4)
.L556:
	lw	$2,0($5)
	beq	$3,$2,.L543
	daddiu	$6,$6,-1

	lw	$6,0($4)
	lw	$5,0($5)
	slt	$4,$6,$5
	bnel	$4,$0,.L555
	li	$2,-1			# 0xffffffffffffffff

	jr	$31
	slt	$2,$5,$6

	.align	3
.L546:
	jr	$31
	move	$2,$0

.L555:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.align	3
	.globl	wmemcpy
	.set	nomips16
	.set	nomicromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(wmemcpy)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(wmemcpy)))
	beq	$6,$0,.L558
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L558:
	ld	$31,24($sp)
	ld	$28,16($sp)
	move	$2,$16
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.align	3
	.globl	wmemmove
	.set	nomips16
	.set	nomicromips
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L598
	move	$2,$4

	dsubu	$8,$4,$5
	dsll	$3,$6,2
	sltu	$10,$8,$3
	move	$7,$5
	bne	$10,$0,.L565
	daddiu	$14,$6,-1

	beq	$6,$0,.L598
	sltu	$11,$14,9

	bne	$11,$0,.L575
	move	$12,$4

	or	$12,$5,$4
	andi	$13,$12,0x7
	bne	$13,$0,.L595
	daddiu	$13,$5,4

	beq	$4,$13,.L576
	move	$15,$0

	dsrl	$14,$6,1
	.align	3
.L570:
	ldc1	$f0,0($7)
	daddiu	$15,$15,1
	daddiu	$7,$7,8
	sdc1	$f0,0($4)
	bne	$14,$15,.L570
	daddiu	$4,$4,8

	andi	$24,$6,0x1
	beq	$24,$0,.L598
	li	$25,-2			# 0xfffffffffffffffe

	and	$6,$6,$25
	dsll	$8,$6,2
	lwx	$5,$8($5)
	daddu	$3,$2,$8
	jr	$31
	sw	$5,0($3)

	.align	3
.L575:
	daddiu	$13,$5,4
.L569:
	b	.L573
	li	$10,-1			# 0xffffffffffffffff

	.align	3
.L596:
	daddiu	$13,$13,4
.L573:
	lw	$11,-4($13)
	daddiu	$14,$14,-1
	daddiu	$12,$12,4
	bne	$14,$10,.L596
	sw	$11,-4($12)

.L598:
	jr	$31
	nop

	.align	3
.L565:
	beq	$6,$0,.L598
	dsll	$24,$14,2

	li	$15,-4			# 0xfffffffffffffffc
	.align	3
.L568:
	lwx	$7,$24($5)
	daddu	$4,$2,$24
	daddiu	$24,$24,-4
	bne	$24,$15,.L568
	sw	$7,0($4)

	jr	$31
	nop

.L595:
.L576:
	b	.L569
	move	$12,$2

	.set	macro
	.set	reorder
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
	.align	3
	.globl	wmemset
	.set	nomips16
	.set	nomicromips
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L618
	move	$2,$4

	daddiu	$4,$6,-1
	dsrl	$3,$2,2
	sltu	$7,$4,6
	bne	$7,$0,.L605
	andi	$8,$3,0x1

	beq	$8,$0,.L602
	move	$10,$2

	daddiu	$10,$2,4
	sw	$5,0($2)
	daddiu	$4,$6,-2
.L602:
	dmtc1	$5,$f0
	dsubu	$6,$6,$8
	punpcklwd	$f1,$f0,$f0
	dsll	$12,$8,2
	dmfc1	$14,$f1
	dsrl	$13,$6,1
	daddu	$24,$2,$12
	move	$15,$0
	.align	3
.L603:
	daddiu	$15,$15,1
	sd	$14,0($24)
	bne	$15,$13,.L603
	daddiu	$24,$24,8

	andi	$25,$6,0x1
	beq	$25,$0,.L618
	li	$3,-2			# 0xfffffffffffffffe

	and	$7,$6,$3
	dsll	$8,$7,2
	dsubu	$4,$4,$7
	daddu	$9,$10,$8
.L601:
	beq	$4,$0,.L618
	sw	$5,0($9)

	li	$10,1			# 0x1
	beq	$4,$10,.L618
	sw	$5,4($9)

	li	$6,2			# 0x2
	beq	$4,$6,.L618
	sw	$5,8($9)

	li	$12,3			# 0x3
	beq	$4,$12,.L618
	sw	$5,12($9)

	li	$13,4			# 0x4
	beq	$4,$13,.L618
	sw	$5,16($9)

	sw	$5,20($9)
.L618:
	jr	$31
	nop

.L605:
	b	.L601
	move	$9,$2

	.set	macro
	.set	reorder
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.align	3
	.globl	bcopy
	.set	nomips16
	.set	nomicromips
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$5
	beq	$2,$0,.L620
	daddu	$7,$4,$6

	beq	$6,$0,.L653
	daddu	$5,$5,$6

	.align	3
.L622:
	lb	$3,-1($7)
	daddiu	$7,$7,-1
	daddiu	$5,$5,-1
	bne	$4,$7,.L622
	sb	$3,0($5)

.L653:
	jr	$31
	nop

	.align	3
.L620:
	bne	$4,$5,.L649
	nop

	jr	$31
	nop

	.align	3
.L649:
	beq	$6,$0,.L653
	daddiu	$3,$6,-1

	sltu	$7,$3,8
	bne	$7,$0,.L647
	or	$9,$5,$4

	andi	$10,$9,0x7
	bne	$10,$0,.L651
	daddiu	$2,$4,1

	dsubu	$11,$5,$2
	sltu	$12,$11,7
	bne	$12,$0,.L623
	dsrl	$13,$6,3

	dsll	$14,$13,3
	move	$24,$5
	daddu	$15,$4,$14
	.align	3
.L624:
	ldc1	$f0,0($4)
	daddiu	$4,$4,8
	daddiu	$24,$24,8
	bne	$15,$4,.L624
	sdc1	$f0,-8($24)

	daddu	$5,$5,$14
	beq	$6,$14,.L653
	dsubu	$25,$6,$14

	lb	$6,0($15)
	li	$4,1			# 0x1
	beq	$25,$4,.L653
	sb	$6,0($5)

	lb	$2,1($15)
	li	$3,2			# 0x2
	beq	$25,$3,.L653
	sb	$2,1($5)

	lb	$7,2($15)
	li	$9,3			# 0x3
	beq	$25,$9,.L653
	sb	$7,2($5)

	lb	$10,3($15)
	li	$11,4			# 0x4
	beq	$25,$11,.L653
	sb	$10,3($5)

	lb	$12,4($15)
	li	$13,5			# 0x5
	beq	$25,$13,.L653
	sb	$12,4($5)

	lb	$14,5($15)
	li	$24,6			# 0x6
	beq	$25,$24,.L653
	sb	$14,5($5)

	lb	$15,6($15)
	jr	$31
	sb	$15,6($5)

	.align	3
.L647:
	daddiu	$2,$4,1
.L623:
	.align	3
.L651:
	b	.L627
	daddu	$25,$4,$6

	.align	3
.L650:
	daddiu	$2,$2,1
.L627:
	lb	$6,-1($2)
	daddiu	$5,$5,1
	bne	$2,$25,.L650
	sb	$6,-1($5)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
	.align	3
	.globl	rotl64
	.set	nomips16
	.set	nomicromips
	.ent	rotl64
	.type	rotl64, @function
rotl64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	subu	$5,$0,$5
	jr	$31
	dror	$2,$4,$5

	.set	macro
	.set	reorder
	.end	rotl64
	.size	rotl64, .-rotl64
	.align	2
	.align	3
	.globl	rotr64
	.set	nomips16
	.set	nomicromips
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dror	$2,$4,$5

	.set	macro
	.set	reorder
	.end	rotr64
	.size	rotr64, .-rotr64
	.align	2
	.align	3
	.globl	rotl32
	.set	nomips16
	.set	nomicromips
	.ent	rotl32
	.type	rotl32, @function
rotl32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	subu	$5,$0,$5
	jr	$31
	ror	$2,$4,$5

	.set	macro
	.set	reorder
	.end	rotl32
	.size	rotl32, .-rotl32
	.align	2
	.align	3
	.globl	rotr32
	.set	nomips16
	.set	nomicromips
	.ent	rotr32
	.type	rotr32, @function
rotr32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	ror	$2,$4,$5

	.set	macro
	.set	reorder
	.end	rotr32
	.size	rotr32, .-rotr32
	.align	2
	.align	3
	.globl	rotl_sz
	.set	nomips16
	.set	nomicromips
	.ent	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	subu	$5,$0,$5
	jr	$31
	dror	$2,$4,$5

	.set	macro
	.set	reorder
	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
	.align	3
	.globl	rotr_sz
	.set	nomips16
	.set	nomicromips
	.ent	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dror	$2,$4,$5

	.set	macro
	.set	reorder
	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
	.align	3
	.globl	rotl16
	.set	nomips16
	.set	nomicromips
	.ent	rotl16
	.type	rotl16, @function
rotl16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0xf
	subu	$2,$0,$5
	andi	$6,$2,0xf
	sll	$7,$4,$5
	srl	$4,$4,$6
	or	$8,$7,$4
	jr	$31
	andi	$2,$8,0xffff

	.set	macro
	.set	reorder
	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
	.align	3
	.globl	rotr16
	.set	nomips16
	.set	nomicromips
	.ent	rotr16
	.type	rotr16, @function
rotr16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0xf
	subu	$2,$0,$5
	andi	$6,$2,0xf
	srl	$7,$4,$5
	sll	$4,$4,$6
	or	$8,$7,$4
	jr	$31
	andi	$2,$8,0xffff

	.set	macro
	.set	reorder
	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
	.align	3
	.globl	rotl8
	.set	nomips16
	.set	nomicromips
	.ent	rotl8
	.type	rotl8, @function
rotl8:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0x7
	subu	$2,$0,$5
	andi	$6,$2,0x7
	sll	$7,$4,$5
	srl	$4,$4,$6
	or	$8,$7,$4
	jr	$31
	andi	$2,$8,0x00ff

	.set	macro
	.set	reorder
	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
	.align	3
	.globl	rotr8
	.set	nomips16
	.set	nomicromips
	.ent	rotr8
	.type	rotr8, @function
rotr8:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0x7
	subu	$2,$0,$5
	andi	$6,$2,0x7
	srl	$7,$4,$5
	sll	$4,$4,$6
	or	$8,$7,$4
	jr	$31
	andi	$2,$8,0x00ff

	.set	macro
	.set	reorder
	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
	.align	3
	.globl	bswap_16
	.set	nomips16
	.set	nomicromips
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,8
	sll	$4,$4,8
	or	$5,$2,$4
	jr	$31
	andi	$2,$5,0xffff

	.set	macro
	.set	reorder
	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.align	3
	.globl	bswap_32
	.set	nomips16
	.set	nomicromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,16711680			# 0xff0000
	sll	$3,$4,8
	and	$7,$3,$2
	sll	$5,$4,24
	srl	$9,$4,24
	or	$8,$7,$5
	and	$4,$4,$2
	or	$10,$9,$8
	srl	$11,$4,8
	jr	$31
	or	$2,$11,$10

	.set	macro
	.set	reorder
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.align	3
	.globl	bswap_64
	.set	nomips16
	.set	nomicromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$2,$4,56
	dsrl	$6,$4,56
	dsrl	$5,$4,40
	li	$3,255			# 0xff
	or	$9,$2,$6
	andi	$10,$5,0xff00
	dsrl	$11,$4,24
	li	$7,16711680			# 0xff0000
	or	$12,$9,$10
	and	$13,$11,$7
	dsrl	$14,$4,8
	dsll	$15,$3,24
	or	$24,$12,$13
	dsll	$6,$4,8
	dsll	$5,$3,32
	and	$25,$14,$15
	or	$2,$24,$25
	dsll	$10,$4,24
	dsll	$11,$3,40
	and	$9,$6,$5
	or	$7,$2,$9
	and	$12,$10,$11
	dsll	$4,$4,40
	dsll	$3,$3,48
	or	$13,$7,$12
	and	$14,$4,$3
	jr	$31
	or	$2,$13,$14

	.set	macro
	.set	reorder
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.align	3
	.globl	ffs
	.set	nomips16
	.set	nomicromips
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$3,$0
	b	.L683
	li	$6,32			# 0x20

	.align	3
.L687:
	beq	$6,$2,.L686
	nop

.L683:
	srl	$5,$4,$3
	addiu	$2,$3,1
	andi	$8,$5,0x1
	beq	$8,$0,.L687
	move	$3,$2

	jr	$31
	nop

	.align	3
.L686:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	ffs
	.size	ffs, .-ffs
	.align	2
	.align	3
	.globl	libiberty_ffs
	.set	nomips16
	.set	nomicromips
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L696
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,.L695
	nop

	li	$2,1			# 0x1
	.align	3
.L690:
	dsra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,.L690
	addiu	$2,$2,1

.L696:
	jr	$31
	nop

.L695:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.align	3
	.globl	gl_isinff
	.set	nomips16
	.set	nomicromips
	.ent	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(%neg(%gp_rel(gl_isinff)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(gl_isinff)))
	ld	$2,%got_page(.LC0)($4)
	lwc1	$f0,%got_ofst(.LC0)($2)
	c.lt.s	$fcc0,$f12,$f0
	bc1t	$fcc0,.L700
	ld	$3,%got_page(.LC1)($4)

	lwc1	$f1,%got_ofst(.LC1)($3)
	c.lt.s	$fcc1,$f1,$f12
	bc1f	$fcc1,.L702
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L700:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L702:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	gl_isinff
	.size	gl_isinff, .-gl_isinff
	.align	2
	.align	3
	.globl	gl_isinfd
	.set	nomips16
	.set	nomicromips
	.ent	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(gl_isinfd)))
	ld	$2,%got_page(.LC2)($4)
	ldc1	$f0,%got_ofst(.LC2)($2)
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L706
	ld	$3,%got_page(.LC3)($4)

	ldc1	$f1,%got_ofst(.LC3)($3)
	c.lt.d	$fcc1,$f1,$f12
	bc1f	$fcc1,.L708
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L706:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L708:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	gl_isinfd
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.align	3
	.globl	gl_isinfl
	.set	nomips16
	.set	nomicromips
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	ld	$2,%got_page(.LC4)($28)
	ld	$25,%call16(__lttf2)($28)
	ldc1	$f14,%got_ofst(.LC4)($2)
	sd	$17,8($sp)
	sd	$16,0($sp)
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	sd	$31,40($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dmfc1	$17,$f12
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	dmfc1	$16,$f13

	bltz	$2,.L712
	ld	$31,40($sp)

	ld	$3,%got_page(.LC5)($28)
	dmtc1	$17,$f12
	ldc1	$f14,%got_ofst(.LC5)($3)
	ld	$25,%call16(__gttf2)($28)
	dmtc1	$16,$f13
	.reloc	1f,R_MIPS_JALR,__gttf2
1:	jalr	$25
	ldc1	$f15,%got_ofst(.LC5+8)($3)

	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	slt	$2,$0,$2
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L712:
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	li	$2,1			# 0x1
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.align	3
	.globl	_Qp_itoq
	.set	nomips16
	.set	nomicromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x900d0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_Qp_itoq)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_Qp_itoq)))
	ld	$25,%call16(__extenddftf2)($28)
	dmtc1	$5,$f0
	sd	$16,8($sp)
	sd	$31,40($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	cvt.d.w	$f12,$f0
	.reloc	1f,R_MIPS_JALR,__extenddftf2
1:	jalr	$25
	move	$16,$4

	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	sdc1	$f0,0($16)
	sdc1	$f2,8($16)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_Qp_itoq
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.align	3
	.globl	ldexpf
	.set	nomips16
	.set	nomicromips
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.s	$fcc0,$f12,$f12
	lui	$4,%hi(%neg(%gp_rel(ldexpf)))
	daddu	$4,$4,$25
	mov.s	$f0,$f12
	bc1t	$fcc0,.L734
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexpf)))

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f1,$f12
	bc1t	$fcc1,.L734
	nop

	bltz	$5,.L730
	ld	$2,%got_page(.LC6)($4)

	lwc1	$f2,%got_ofst(.LC6)($2)
.L718:
	andi	$6,$5,0x1
	beq	$6,$0,.L733
	srl	$7,$5,31

	.align	3
.L720:
	mul.s	$f0,$f0,$f2
	srl	$7,$5,31
.L733:
	addu	$5,$7,$5
	sra	$5,$5,1
	beq	$5,$0,.L734
	srl	$8,$5,31

	andi	$9,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$9,$0,.L720
	addu	$10,$8,$5

	sra	$5,$10,1
.L732:
	srl	$8,$5,31
	andi	$9,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$9,$0,.L720
	addu	$10,$8,$5

	b	.L732
	sra	$5,$10,1

.L734:
	jr	$31
	nop

	.align	3
.L730:
	ld	$3,%got_page(.LC7)($4)
	b	.L718
	lwc1	$f2,%got_ofst(.LC7)($3)

	.set	macro
	.set	reorder
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
	.align	3
	.globl	ldexp
	.set	nomips16
	.set	nomicromips
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.d	$fcc0,$f12,$f12
	lui	$4,%hi(%neg(%gp_rel(ldexp)))
	daddu	$4,$4,$25
	mov.d	$f0,$f12
	bc1t	$fcc0,.L753
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexp)))

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f1,$f12
	bc1t	$fcc1,.L753
	nop

	bltz	$5,.L749
	ld	$2,%got_page(.LC8)($4)

	ldc1	$f2,%got_ofst(.LC8)($2)
.L737:
	andi	$6,$5,0x1
	beq	$6,$0,.L752
	srl	$7,$5,31

	.align	3
.L739:
	mul.d	$f0,$f0,$f2
	srl	$7,$5,31
.L752:
	addu	$5,$7,$5
	sra	$5,$5,1
	beq	$5,$0,.L753
	srl	$8,$5,31

	andi	$9,$5,0x1
	mul.d	$f2,$f2,$f2
	bne	$9,$0,.L739
	addu	$10,$8,$5

	sra	$5,$10,1
.L751:
	srl	$8,$5,31
	andi	$9,$5,0x1
	mul.d	$f2,$f2,$f2
	bne	$9,$0,.L739
	addu	$10,$8,$5

	b	.L751
	sra	$5,$10,1

.L753:
	jr	$31
	nop

	.align	3
.L749:
	ld	$3,%got_page(.LC9)($4)
	b	.L737
	ldc1	$f2,%got_ofst(.LC9)($3)

	.set	macro
	.set	reorder
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
	.align	3
	.globl	ldexpl
	.set	nomips16
	.set	nomicromips
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	$sp,144,$31		# vars= 48, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	dmfc1	$4,$f12
	sd	$28,120($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	dmfc1	$5,$f13
	dmtc1	$4,$f14
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$5,$f15
	sd	$fp,128($sp)
	sd	$23,112($sp)
	sd	$22,104($sp)
	sd	$31,136($sp)
	sd	$21,96($sp)
	sd	$20,88($sp)
	sd	$19,80($sp)
	sd	$18,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	move	$22,$4
	move	$23,$5
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$fp,$6

	bne	$2,$0,.L755
	ld	$25,%call16(__addtf3)($28)

	sd	$22,0($sp)
	ldc1	$f12,0($sp)
	sd	$23,8($sp)
	dmtc1	$22,$f14
	ldc1	$f13,8($sp)
	.reloc	1f,R_MIPS_JALR,__addtf3
1:	jalr	$25
	dmtc1	$23,$f15

	sd	$22,16($sp)
	sdc1	$f0,32($sp)
	ldc1	$f14,16($sp)
	ldc1	$f12,32($sp)
	sd	$23,24($sp)
	sdc1	$f2,40($sp)
	ldc1	$f15,24($sp)
	ld	$25,%call16(__netf2)($28)
	.reloc	1f,R_MIPS_JALR,__netf2
1:	jalr	$25
	ldc1	$f13,40($sp)

	beq	$2,$0,.L771
	ld	$31,136($sp)

	bltz	$fp,.L770
	ld	$6,%got_page(.LC10)($28)

	ld	$20,%got_ofst(.LC10)($6)
	ld	$21,%got_ofst(.LC10+8)($6)
.L757:
	andi	$8,$fp,0x1
	beq	$8,$0,.L772
	srl	$9,$fp,31

	.align	3
.L759:
	dmtc1	$22,$f12
	dmtc1	$20,$f14
	ld	$25,%call16(__multf3)($28)
	dmtc1	$23,$f13
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$21,$f15

	dmfc1	$22,$f0
	dmfc1	$23,$f2
	srl	$9,$fp,31
.L772:
	addu	$10,$9,$fp
	sra	$fp,$10,1
	beq	$fp,$0,.L771
	ld	$31,136($sp)

.L760:
	dmtc1	$20,$f14
	dmtc1	$20,$f12
	ld	$25,%call16(__multf3)($28)
	dmtc1	$21,$f15
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$21,$f13

	srl	$11,$fp,31
	dmfc1	$18,$f0
	dmfc1	$19,$f2
	andi	$12,$fp,0x1
	move	$20,$18
	move	$21,$19
	bne	$12,$0,.L759
	addu	$13,$11,$fp

	b	.L760
	sra	$fp,$13,1

	.align	3
.L755:
	ld	$31,136($sp)
	.align	3
.L771:
	dmtc1	$23,$f2
	dmtc1	$22,$f0
	ld	$fp,128($sp)
	ld	$28,120($sp)
	ld	$23,112($sp)
	ld	$22,104($sp)
	ld	$21,96($sp)
	ld	$20,88($sp)
	ld	$19,80($sp)
	ld	$18,72($sp)
	ld	$17,64($sp)
	ld	$16,56($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.align	3
.L770:
	ld	$7,%got_page(.LC11)($28)
	ld	$20,%got_ofst(.LC11)($7)
	b	.L757
	ld	$21,%got_ofst(.LC11+8)($7)

	.set	macro
	.set	reorder
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.align	3
	.globl	memxor
	.set	nomips16
	.set	nomicromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L786
	move	$2,$4

	daddiu	$3,$6,-1
	sltu	$4,$3,7
	bne	$4,$0,.L775
	or	$7,$2,$5

	andi	$8,$7,0x7
	bne	$8,$0,.L775
	dsrl	$9,$6,3

	dsll	$11,$9,3
	move	$15,$2
	daddu	$12,$5,$11
	.align	3
.L776:
	ld	$13,0($15)
	ld	$14,0($5)
	dmtc1	$13,$f0
	dmtc1	$14,$f1
	daddiu	$15,$15,8
	daddiu	$5,$5,8
	xor	$f2,$f0,$f1
	bne	$12,$5,.L776
	sdc1	$f2,-8($15)

	daddu	$25,$2,$11
	beq	$6,$11,.L786
	dsubu	$5,$6,$11

	lbu	$3,0($25)
	lbu	$4,0($12)
	li	$6,1			# 0x1
	xor	$7,$3,$4
	beq	$5,$6,.L786
	sb	$7,0($25)

	lbu	$8,1($25)
	lbu	$9,1($12)
	li	$11,2			# 0x2
	xor	$13,$9,$8
	beq	$5,$11,.L786
	sb	$13,1($25)

	lbu	$14,2($25)
	lbu	$15,2($12)
	li	$24,3			# 0x3
	xor	$3,$15,$14
	beq	$5,$24,.L786
	sb	$3,2($25)

	lbu	$7,3($25)
	lbu	$4,3($12)
	li	$6,4			# 0x4
	xor	$8,$4,$7
	beq	$5,$6,.L786
	sb	$8,3($25)

	lbu	$9,4($25)
	lbu	$11,4($12)
	li	$13,5			# 0x5
	xor	$14,$11,$9
	beq	$5,$13,.L786
	sb	$14,4($25)

	lbu	$15,5($25)
	lbu	$24,5($12)
	li	$3,6			# 0x6
	xor	$7,$24,$15
	beq	$5,$3,.L786
	sb	$7,5($25)

	lbu	$5,6($25)
	lbu	$12,6($12)
	xor	$4,$12,$5
	jr	$31
	sb	$4,6($25)

	.align	3
.L775:
	daddu	$25,$5,$6
	move	$11,$2
	.align	3
.L778:
	lbu	$6,0($11)
	lbu	$8,0($5)
	daddiu	$11,$11,1
	xor	$9,$8,$6
	daddiu	$5,$5,1
	bne	$25,$5,.L778
	sb	$9,-1($11)

.L786:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memxor
	.size	memxor, .-memxor
	.align	2
	.align	3
	.globl	strncat
	.set	nomips16
	.set	nomicromips
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$3,0($4)
	beq	$3,$0,.L794
	move	$2,$4

	move	$9,$4
	.align	3
.L789:
	lb	$7,1($9)
	bne	$7,$0,.L789
	daddiu	$9,$9,1

	beq	$6,$0,.L791
	nop

	lb	$4,0($5)
	.align	3
.L806:
	daddiu	$6,$6,-1
	beq	$4,$0,.L807
	sb	$4,0($9)

	daddiu	$5,$5,1
	daddiu	$9,$9,1
.L803:
	bnel	$6,$0,.L806
	lb	$4,0($5)

.L791:
	jr	$31
	sb	$0,0($9)

.L807:
	jr	$31
	nop

	.align	3
.L794:
	b	.L803
	move	$9,$4

	.set	macro
	.set	reorder
	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.align	3
	.globl	strnlen
	.set	nomips16
	.set	nomicromips
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,.L820
	move	$2,$0

	lbux	$3,$2($4)
.L818:
	bnel	$3,$0,.L811
	daddiu	$2,$2,1

.L820:
	jr	$31
	nop

	.align	3
.L811:
	bnel	$5,$2,.L818
	lbux	$3,$2($4)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
	.align	3
	.globl	strpbrk
	.set	nomips16
	.set	nomicromips
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$7,0($4)
	beq	$7,$0,.L826
	move	$2,$4

.L822:
	b	.L825
	move	$3,$5

	.align	3
.L824:
	beq	$6,$7,.L832
	nop

.L825:
	lb	$6,0($3)
	bne	$6,$0,.L824
	daddiu	$3,$3,1

	lb	$7,1($2)
	bne	$7,$0,.L822
	daddiu	$2,$2,1

.L826:
	move	$2,$0
.L832:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.align	3
	.globl	strrchr
	.set	nomips16
	.set	nomicromips
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	.align	3
.L834:
	lb	$3,0($4)
	xor	$6,$3,$5
	movz	$2,$4,$6
	bne	$3,$0,.L834
	daddiu	$4,$4,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
	.align	3
	.globl	strstr
	.set	nomips16
	.set	nomicromips
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$8,0($5)
	beq	$8,$0,.L848
	nop

	move	$2,$5
	.align	3
.L839:
	lb	$3,1($2)
	bne	$3,$0,.L839
	daddiu	$2,$2,1

	beq	$2,$5,.L848
	dsubu	$10,$2,$5

	b	.L857
	daddiu	$13,$10,-1

	.align	3
.L860:
	beq	$6,$0,.L859
	daddiu	$4,$4,1

.L857:
	lb	$6,0($4)
	bne	$6,$8,.L860
	andi	$14,$6,0x00ff

	daddu	$9,$4,$13
	move	$15,$5
	b	.L841
	move	$12,$4

	.align	3
.L861:
	beql	$12,$9,.L862
	lbu	$24,0($15)

	bne	$7,$14,.L842
	daddiu	$12,$12,1

	lbu	$14,0($12)
	beq	$14,$0,.L842
	daddiu	$15,$15,1

.L841:
	lbu	$7,0($15)
	bne	$7,$0,.L861
	nop

.L842:
	lbu	$24,0($15)
.L862:
	beq	$24,$14,.L848
	nop

	b	.L857
	daddiu	$4,$4,1

	.align	3
.L859:
	jr	$31
	move	$2,$0

	.align	3
.L848:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	strstr
	.size	strstr, .-strstr
	.align	2
	.align	3
	.globl	copysign
	.set	nomips16
	.set	nomicromips
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmtc1	$0,$f1
	c.lt.d	$fcc0,$f12,$f1
	bc1t	$fcc0,.L874
	mov.d	$f0,$f12

	c.lt.d	$fcc2,$f1,$f12
	bc1f	$fcc2,.L875
	nop

	c.lt.d	$fcc3,$f13,$f1
	bc1t	$fcc3,.L866
	nop

.L875:
	jr	$31
	nop

	.align	3
.L874:
	c.lt.d	$fcc1,$f1,$f13
	bc1f	$fcc1,.L875
	nop

.L866:
	jr	$31
	neg.d	$f0,$f0

	.set	macro
	.set	reorder
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.align	3
	.globl	memmem
	.set	nomips16
	.set	nomicromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$7,$0,.L893
	move	$2,$4

	sltu	$3,$5,$7
	bne	$3,$0,.L887
	dsubu	$5,$5,$7

	daddu	$9,$4,$5
	sltu	$4,$9,$4
	bne	$4,$0,.L887
	daddiu	$7,$7,-1

	lb	$13,0($6)
	move	$12,$13
	b	.L882
	daddiu	$6,$6,1

	.align	3
.L886:
	move	$2,$4
.L878:
	sltu	$10,$9,$2
	bnel	$10,$0,.L893
	move	$2,$0

.L882:
	lb	$8,0($2)
	bne	$8,$12,.L886
	daddiu	$4,$2,1

	beq	$7,$0,.L893
	move	$5,$6

.L881:
	move	$25,$4
	b	.L879
	daddu	$8,$4,$7

	.align	3
.L880:
	beq	$25,$8,.L893
	daddiu	$5,$5,1

.L879:
	lbu	$15,0($25)
	lbu	$24,0($5)
	beq	$15,$24,.L880
	daddiu	$25,$25,1

	sltu	$2,$9,$4
	bnel	$2,$0,.L893
	move	$2,$0

	lb	$11,0($4)
	bne	$11,$13,.L878
	daddiu	$2,$4,1

	move	$3,$4
	move	$5,$6
	move	$4,$2
	b	.L881
	move	$2,$3

	.align	3
.L887:
	move	$2,$0
.L893:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.align	3
	.globl	mempcpy
	.set	nomips16
	.set	nomicromips
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(mempcpy)))
	daddu	$28,$28,$25
	sd	$17,8($sp)
	sd	$16,0($sp)
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	move	$16,$6
	beq	$6,$0,.L895
	move	$17,$4

	ld	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

.L895:
	ld	$31,24($sp)
	daddu	$2,$17,$16
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	mempcpy
	.size	mempcpy, .-mempcpy
	.align	2
	.align	3
	.globl	frexp
	.set	nomips16
	.set	nomicromips
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmtc1	$0,$f0
	lui	$6,%hi(%neg(%gp_rel(frexp)))
	c.lt.d	$fcc0,$f12,$f0
	daddu	$6,$6,$25
	bc1t	$fcc0,.L923
	daddiu	$6,$6,%lo(%neg(%gp_rel(frexp)))

	ld	$2,%got_page(.LC14)($6)
	ldc1	$f1,%got_ofst(.LC14)($2)
	c.le.d	$fcc3,$f1,$f12
	bc1f	$fcc3,.L924
	move	$3,$0

.L903:
	ld	$10,%got_page(.LC9)($6)
	ldc1	$f7,%got_ofst(.LC14)($2)
	ldc1	$f8,%got_ofst(.LC9)($10)
	move	$9,$0
	.align	3
.L909:
	mul.d	$f12,$f12,$f8
	c.le.d	$fcc6,$f7,$f12
	bc1t	$fcc6,.L909
	addiu	$9,$9,1

.L910:
	beq	$3,$0,.L916
	sw	$9,0($5)

	jr	$31
	neg.d	$f0,$f12

	.align	3
.L924:
	ld	$4,%got_page(.LC9)($6)
	ldc1	$f2,%got_ofst(.LC9)($4)
	c.lt.d	$fcc4,$f12,$f2
	bc1fl	$fcc4,.L926
	mov.d	$f0,$f12

	c.eq.d	$fcc5,$f12,$f0
	bc1f	$fcc5,.L915
	mov.d	$f3,$f12

	mov.d	$f0,$f12
.L926:
	jr	$31
	sw	$0,0($5)

	.align	3
.L923:
	ld	$7,%got_page(.LC12)($6)
	ldc1	$f4,%got_ofst(.LC12)($7)
	c.le.d	$fcc1,$f12,$f4
	bc1f	$fcc1,.L925
	neg.d	$f3,$f12

	mov.d	$f12,$f3
	ld	$2,%got_page(.LC14)($6)
	b	.L903
	li	$3,1			# 0x1

	.align	3
.L916:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L925:
	ld	$8,%got_page(.LC13)($6)
	ldc1	$f5,%got_ofst(.LC13)($8)
	c.lt.d	$fcc2,$f5,$f12
	bc1f	$fcc2,.L926
	mov.d	$f0,$f12

	ld	$4,%got_page(.LC9)($6)
	li	$3,1			# 0x1
.L904:
	ldc1	$f6,%got_ofst(.LC9)($4)
	mov.d	$f12,$f3
	move	$9,$0
	.align	3
.L911:
	add.d	$f12,$f12,$f12
	c.lt.d	$fcc7,$f12,$f6
	bc1t	$fcc7,.L911
	addiu	$9,$9,-1

	b	.L910
	nop

.L915:
	b	.L904
	move	$3,$0

	.set	macro
	.set	reorder
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.align	3
	.globl	__muldi3
	.set	nomips16
	.set	nomicromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L934
	move	$2,$0

	.align	3
.L929:
	andi	$3,$4,0x1
	dsubu	$7,$0,$3
	and	$8,$7,$5
	dsrl	$4,$4,1
	daddu	$2,$2,$8
	bne	$4,$0,.L929
	dsll	$5,$5,1

.L934:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
	.align	3
	.globl	udivmodsi4
	.set	nomips16
	.set	nomicromips
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beq	$2,$0,.L956
	li	$13,1			# 0x1

	b	.L936
	li	$2,32			# 0x20

	.align	3
.L940:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L938
	sll	$13,$13,1

	beq	$2,$0,.L939
	nop

.L936:
	bgez	$5,.L940
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L942:
	sltu	$8,$4,$5
	sltu	$11,$8,1
	move	$12,$13
	subu	$9,$4,$5
	movz	$12,$0,$11
	srl	$13,$13,1
	movn	$4,$9,$11
	or	$2,$12,$2
	bne	$13,$0,.L942
	srl	$5,$5,1

.L939:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L938:
	bne	$13,$0,.L942
	move	$2,$0

	b	.L939
	nop

	.align	3
.L956:
	sltu	$3,$4,$5
	sltu	$2,$3,1
	subu	$5,$4,$5
	b	.L939
	movn	$4,$5,$2

	.set	macro
	.set	reorder
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.align	3
	.globl	__clrsbqi2
	.set	nomips16
	.set	nomicromips
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$3,$4,7
	dsll	$2,$3,56
	dsra	$6,$2,56
	beq	$4,$6,.L959
	xor	$7,$4,$6

	sll	$4,$7,8
	clz	$8,$4
	jr	$31
	addiu	$2,$8,-1

	.align	3
.L959:
	jr	$31
	li	$2,7			# 0x7

	.set	macro
	.set	reorder
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.align	3
	.globl	__clrsbdi2
	.set	nomips16
	.set	nomicromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$3,$4,63
	beq	$4,$3,.L963
	xor	$2,$4,$3

	dclz	$4,$2
	jr	$31
	addiu	$2,$4,-1

	.align	3
.L963:
	jr	$31
	li	$2,63			# 0x3f

	.set	macro
	.set	reorder
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.align	3
	.globl	__mulsi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L972
	move	$2,$0

	.align	3
.L967:
	andi	$3,$4,0x1
	subu	$7,$0,$3
	and	$8,$7,$5
	srl	$4,$4,1
	addu	$2,$8,$2
	bne	$4,$0,.L967
	sll	$5,$5,1

.L972:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
	.align	3
	.globl	__cmovd
	.set	nomips16
	.set	nomicromips
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$9,-8			# 0xfffffffffffffff8
	sltu	$2,$4,$5
	srl	$7,$6,3
	bne	$2,$0,.L977
	and	$12,$6,$9

	dsll	$3,$6,32
	dsrl	$8,$3,32
	daddu	$10,$5,$8
	sltu	$13,$10,$4
	beq	$13,$0,.L1009
	nop

.L977:
	beq	$7,$0,.L1010
	dsll	$8,$7,3

	move	$2,$5
	move	$3,$4
	daddu	$10,$8,$5
	.align	3
.L980:
	ld	$13,0($2)
	daddiu	$2,$2,8
	sd	$13,0($3)
	bne	$2,$10,.L980
	daddiu	$3,$3,8

	sltu	$14,$12,$6
	beq	$14,$0,.L1014
	subu	$15,$6,$12

	addiu	$24,$15,-1
	dsll	$25,$12,32
	sltu	$7,$24,8
	bne	$7,$0,.L985
	dsrl	$9,$25,32

	daddiu	$8,$9,1
	daddu	$3,$4,$9
	daddu	$10,$5,$8
	dsubu	$13,$3,$10
	sltu	$14,$13,7
	bne	$14,$0,.L985
	daddu	$2,$5,$9

	or	$24,$2,$3
	andi	$25,$24,0x7
	bne	$25,$0,.L1012
	daddu	$25,$5,$9

	srl	$9,$15,3
	dsll	$7,$9,32
	dsrl	$8,$7,32
	dsll	$10,$8,3
	daddu	$13,$2,$10
	.align	3
.L983:
	ldc1	$f0,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$13,.L983
	sdc1	$f0,-8($3)

	li	$14,-8			# 0xfffffffffffffff8
	and	$24,$15,$14
	andi	$15,$15,0x7
	beq	$15,$0,.L1014
	addu	$12,$24,$12

	dsll	$25,$12,32
	dsrl	$7,$25,32
	daddu	$9,$5,$7
	lb	$10,0($9)
	addiu	$13,$12,1
	daddu	$2,$4,$7
	sltu	$8,$13,$6
	beq	$8,$0,.L1014
	sb	$10,0($2)

	dsll	$3,$13,32
	dsrl	$14,$3,32
	daddu	$24,$5,$14
	lb	$15,0($24)
	addiu	$25,$12,2
	daddu	$7,$4,$14
	sltu	$9,$25,$6
	beq	$9,$0,.L1014
	sb	$15,0($7)

	dsll	$10,$25,32
	dsrl	$13,$10,32
	daddu	$2,$5,$13
	lb	$14,0($2)
	addiu	$3,$12,3
	daddu	$24,$4,$13
	sltu	$8,$3,$6
	beq	$8,$0,.L1014
	sb	$14,0($24)

	dsll	$15,$3,32
	dsrl	$25,$15,32
	daddu	$7,$5,$25
	lb	$9,0($7)
	addiu	$10,$12,4
	daddu	$13,$4,$25
	sltu	$2,$10,$6
	beq	$2,$0,.L1014
	sb	$9,0($13)

	dsll	$14,$10,32
	dsrl	$24,$14,32
	daddu	$3,$5,$24
	lb	$15,0($3)
	addiu	$25,$12,5
	daddu	$7,$4,$24
	sltu	$8,$25,$6
	beq	$8,$0,.L1014
	sb	$15,0($7)

	dsll	$9,$25,32
	dsrl	$10,$9,32
	daddu	$13,$5,$10
	lb	$14,0($13)
	addiu	$12,$12,6
	daddu	$2,$4,$10
	sltu	$6,$12,$6
	beq	$6,$0,.L1014
	sb	$14,0($2)

	dsll	$24,$12,32
	dsrl	$15,$24,32
	daddu	$5,$5,$15
	lb	$3,0($5)
	daddu	$4,$4,$15
	jr	$31
	sb	$3,0($4)

	.align	3
.L1010:
	beq	$6,$0,.L1014
	dsll	$7,$12,32

	dsrl	$9,$7,32
	.align	3
.L985:
	daddu	$25,$5,$9
	.align	3
.L1012:
	daddu	$7,$4,$9
	daddiu	$9,$9,1
	lb	$8,0($25)
	sll	$10,$9,0
	sltu	$13,$10,$6
	bne	$13,$0,.L985
	sb	$8,0($7)

.L1014:
	jr	$31
	nop

	.align	3
.L1009:
	beq	$6,$0,.L1014
	addiu	$14,$6,-1

	dsll	$6,$14,32
	dsrl	$15,$6,32
	daddu	$9,$5,$15
	daddu	$4,$4,$15
	.align	3
.L987:
	lb	$24,0($9)
	move	$25,$9
	sb	$24,0($4)
	daddiu	$9,$9,-1
	bne	$5,$25,.L987
	daddiu	$4,$4,-1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.align	3
	.globl	__cmovh
	.set	nomips16
	.set	nomicromips
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$5
	bne	$2,$0,.L1019
	srl	$7,$6,1

	dsll	$3,$6,32
	dsrl	$8,$3,32
	daddu	$9,$5,$8
	sltu	$10,$9,$4
	beq	$10,$0,.L1042
	nop

.L1019:
	beq	$7,$0,.L1018
	addiu	$25,$7,-1

	sltu	$2,$25,7
	bne	$2,$0,.L1022
	or	$3,$5,$4

	andi	$8,$3,0x7
	bne	$8,$0,.L1022
	daddiu	$9,$5,2

	dsubu	$10,$4,$9
	sltu	$12,$10,5
	bne	$12,$0,.L1022
	srl	$8,$6,3

	dsll	$13,$8,3
	move	$15,$5
	move	$24,$4
	daddu	$14,$13,$5
	.align	3
.L1023:
	ldc1	$f0,0($15)
	daddiu	$15,$15,8
	daddiu	$24,$24,8
	bne	$15,$14,.L1023
	sdc1	$f0,-8($24)

	dsll	$25,$8,2
	beq	$7,$25,.L1018
	dsll	$2,$25,1

	lhx	$10,$2($5)
	addiu	$3,$25,1
	daddu	$12,$4,$2
	sltu	$9,$3,$7
	beq	$9,$0,.L1018
	sh	$10,0($12)

	dsll	$8,$3,32
	dsrl	$13,$8,32
	dsll	$14,$13,1
	addiu	$24,$25,2
	lhx	$15,$14($5)
	daddu	$25,$4,$14
	sltu	$7,$24,$7
	beq	$7,$0,.L1018
	sh	$15,0($25)

	dsll	$2,$24,32
	dsrl	$10,$2,32
	dsll	$12,$10,1
	lhx	$3,$12($5)
	daddu	$9,$4,$12
	sh	$3,0($9)
.L1018:
	andi	$25,$6,0x1
	beq	$25,$0,.L1047
	addiu	$6,$6,-1

.L1045:
	dsll	$7,$6,32
	dsrl	$10,$7,32
	daddu	$5,$5,$10
	lb	$2,0($5)
	daddu	$4,$4,$10
	jr	$31
	sb	$2,0($4)

	.align	3
.L1042:
	beq	$6,$0,.L1047
	addiu	$12,$6,-1

	dsll	$6,$12,32
	dsrl	$13,$6,32
	daddu	$24,$5,$13
	daddu	$4,$4,$13
	.align	3
.L1028:
	lb	$14,0($24)
	move	$15,$24
	sb	$14,0($4)
	daddiu	$24,$24,-1
	bne	$5,$15,.L1028
	daddiu	$4,$4,-1

.L1047:
	jr	$31
	nop

	.align	3
.L1022:
	dsll	$8,$7,1
	move	$15,$5
	move	$24,$4
	daddu	$13,$8,$5
	.align	3
.L1025:
	lh	$14,0($15)
	daddiu	$15,$15,2
	sh	$14,0($24)
	bne	$15,$13,.L1025
	daddiu	$24,$24,2

	andi	$25,$6,0x1
	bne	$25,$0,.L1045
	addiu	$6,$6,-1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.align	3
	.globl	__cmovw
	.set	nomips16
	.set	nomicromips
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$8,-4			# 0xfffffffffffffffc
	sltu	$2,$4,$5
	srl	$7,$6,2
	bne	$2,$0,.L1053
	and	$12,$6,$8

	dsll	$3,$6,32
	dsrl	$9,$3,32
	daddu	$10,$5,$9
	sltu	$13,$10,$4
	beq	$13,$0,.L1089
	nop

.L1053:
	beq	$7,$0,.L1090
	addiu	$2,$7,-1

	sltu	$3,$2,9
	bne	$3,$0,.L1055
	or	$9,$4,$5

	andi	$10,$9,0x7
	bne	$10,$0,.L1055
	daddiu	$13,$5,4

	beq	$4,$13,.L1055
	srl	$14,$6,3

	dsll	$15,$14,3
	move	$25,$5
	move	$8,$4
	daddu	$24,$15,$5
	.align	3
.L1056:
	ldc1	$f0,0($25)
	daddiu	$25,$25,8
	daddiu	$8,$8,8
	bne	$25,$24,.L1056
	sdc1	$f0,-8($8)

	dsll	$2,$14,1
	beq	$7,$2,.L1059
	dsll	$7,$2,2

	lwx	$3,$7($5)
	daddu	$9,$4,$7
	sw	$3,0($9)
.L1059:
	sltu	$25,$12,$6
.L1092:
	beq	$25,$0,.L1094
	subu	$8,$6,$12

	addiu	$2,$8,-1
	dsll	$7,$12,32
	sltu	$3,$2,8
	bne	$3,$0,.L1051
	dsrl	$10,$7,32

	daddiu	$9,$10,1
	daddu	$3,$4,$10
	daddu	$13,$5,$9
	dsubu	$14,$3,$13
	sltu	$15,$14,7
	bne	$15,$0,.L1051
	daddu	$2,$5,$10

	or	$24,$2,$3
	andi	$25,$24,0x7
	bne	$25,$0,.L1051
	srl	$7,$8,3

	dsll	$10,$7,32
	dsrl	$9,$10,32
	dsll	$13,$9,3
	daddu	$14,$2,$13
	.align	3
.L1060:
	ldc1	$f1,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$14,.L1060
	sdc1	$f1,-8($3)

	li	$15,-8			# 0xfffffffffffffff8
	and	$24,$8,$15
	andi	$8,$8,0x7
	beq	$8,$0,.L1094
	addu	$12,$24,$12

	dsll	$25,$12,32
	dsrl	$7,$25,32
	daddu	$10,$5,$7
	lb	$9,0($10)
	addiu	$13,$12,1
	daddu	$14,$4,$7
	sltu	$2,$13,$6
	beq	$2,$0,.L1094
	sb	$9,0($14)

	dsll	$3,$13,32
	dsrl	$15,$3,32
	daddu	$24,$5,$15
	lb	$25,0($24)
	addiu	$7,$12,2
	daddu	$10,$4,$15
	sltu	$8,$7,$6
	beq	$8,$0,.L1094
	sb	$25,0($10)

	dsll	$9,$7,32
	dsrl	$13,$9,32
	daddu	$14,$5,$13
	lb	$2,0($14)
	addiu	$3,$12,3
	daddu	$15,$4,$13
	sltu	$24,$3,$6
	beq	$24,$0,.L1094
	sb	$2,0($15)

	dsll	$25,$3,32
	dsrl	$10,$25,32
	daddu	$7,$5,$10
	lb	$9,0($7)
	addiu	$13,$12,4
	daddu	$14,$4,$10
	sltu	$8,$13,$6
	beq	$8,$0,.L1094
	sb	$9,0($14)

	dsll	$2,$13,32
	dsrl	$15,$2,32
	daddu	$3,$5,$15
	lb	$24,0($3)
	addiu	$25,$12,5
	daddu	$10,$4,$15
	sltu	$7,$25,$6
	beq	$7,$0,.L1094
	sb	$24,0($10)

	dsll	$9,$25,32
	dsrl	$13,$9,32
	daddu	$14,$5,$13
	lb	$8,0($14)
	addiu	$12,$12,6
	daddu	$2,$4,$13
	sltu	$6,$12,$6
	beq	$6,$0,.L1094
	sb	$8,0($2)

	dsll	$15,$12,32
	dsrl	$24,$15,32
	daddu	$5,$5,$24
	lb	$3,0($5)
	daddu	$4,$4,$24
	jr	$31
	sb	$3,0($4)

	.align	3
.L1089:
	beq	$6,$0,.L1094
	addiu	$14,$6,-1

	dsll	$6,$14,32
	dsrl	$15,$6,32
	daddu	$8,$5,$15
	daddu	$4,$4,$15
	.align	3
.L1064:
	lb	$24,0($8)
	move	$25,$8
	sb	$24,0($4)
	daddiu	$8,$8,-1
	bne	$5,$25,.L1064
	daddiu	$4,$4,-1

.L1094:
	jr	$31
	nop

	.align	3
.L1055:
	dsll	$10,$7,2
	move	$15,$5
	move	$24,$4
	daddu	$13,$10,$5
	.align	3
.L1058:
	lw	$14,0($15)
	daddiu	$15,$15,4
	sw	$14,0($24)
	bne	$15,$13,.L1058
	daddiu	$24,$24,4

	b	.L1092
	sltu	$25,$12,$6

	.align	3
.L1090:
	beq	$6,$0,.L1094
	dsll	$7,$12,32

	dsrl	$10,$7,32
.L1051:
	move	$7,$10
	.align	3
.L1062:
	daddu	$25,$5,$7
	daddu	$10,$4,$7
	daddiu	$7,$7,1
	lb	$9,0($25)
	sll	$13,$7,0
	sltu	$14,$13,$6
	bne	$14,$0,.L1062
	sb	$9,0($10)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
	.align	3
	.globl	__modi
	.set	nomips16
	.set	nomicromips
	.ent	__modi
	.type	__modi, @function
__modi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	gsmod	$2,$4,$5
	teq	$5,$0,7
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__modi
	.size	__modi, .-__modi
	.align	2
	.align	3
	.globl	__uitod
	.set	nomips16
	.set	nomicromips
	.ent	__uitod
	.type	__uitod, @function
__uitod:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$4,$4,32
	dsrl	$3,$4,32
	dmtc1	$3,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.set	macro
	.set	reorder
	.end	__uitod
	.size	__uitod, .-__uitod
	.align	2
	.align	3
	.globl	__uitof
	.set	nomips16
	.set	nomicromips
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$4,$4,32
	dsrl	$3,$4,32
	dmtc1	$3,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.set	macro
	.set	reorder
	.end	__uitof
	.size	__uitof, .-__uitof
	.align	2
	.align	3
	.globl	__ulltod
	.set	nomips16
	.set	nomicromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L1103
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.align	3
.L1103:
	dsrl	$4,$4,1
	or	$5,$2,$4
	dmtc1	$5,$f1
	cvt.d.l	$f2,$f1
	jr	$31
	add.d	$f0,$f2,$f2

	.set	macro
	.set	reorder
	.end	__ulltod
	.size	__ulltod, .-__ulltod
	.align	2
	.align	3
	.globl	__ulltof
	.set	nomips16
	.set	nomicromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L1107
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.align	3
.L1107:
	dsrl	$4,$4,1
	or	$5,$2,$4
	dmtc1	$5,$f1
	cvt.s.l	$f2,$f1
	jr	$31
	add.s	$f0,$f2,$f2

	.set	macro
	.set	reorder
	.end	__ulltof
	.size	__ulltof, .-__ulltof
	.align	2
	.align	3
	.globl	__umodi
	.set	nomips16
	.set	nomicromips
	.ent	__umodi
	.type	__umodi, @function
__umodi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	gsmodu	$2,$4,$5
	teq	$5,$0,7
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.align	3
	.globl	__clzhi2
	.set	nomips16
	.set	nomicromips
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$2,$4,15
	bne	$2,$0,.L1114
	move	$3,$4

	dsrl	$2,$3,14
	bne	$2,$0,.L1132
	sra	$6,$4,13

	bne	$6,$0,.L1115
	sra	$7,$4,12

	bne	$7,$0,.L1116
	sra	$8,$4,11

	bne	$8,$0,.L1117
	sra	$9,$4,10

	bne	$9,$0,.L1118
	sra	$10,$4,9

	bne	$10,$0,.L1119
	nop

	sra	$2,$4,8
	bne	$2,$0,.L1120
	sra	$6,$4,7

	bne	$6,$0,.L1121
	sra	$7,$4,6

	bne	$7,$0,.L1122
	nop

	sra	$2,$4,5
	bne	$2,$0,.L1123
	sra	$6,$4,4

	bne	$6,$0,.L1124
	sra	$7,$4,3

	bne	$7,$0,.L1125
	nop

	sra	$2,$4,2
	bne	$2,$0,.L1126
	sra	$3,$4,1

	bne	$3,$0,.L1127
	nop

	bne	$4,$0,.L1131
	li	$2,16			# 0x10

.L1132:
	jr	$31
	nop

.L1114:
	jr	$31
	move	$2,$0

.L1125:
	jr	$31
	li	$2,12			# 0xc

.L1131:
	jr	$31
	li	$2,15			# 0xf

.L1115:
	jr	$31
	li	$2,2			# 0x2

.L1116:
	jr	$31
	li	$2,3			# 0x3

.L1117:
	jr	$31
	li	$2,4			# 0x4

.L1118:
	jr	$31
	li	$2,5			# 0x5

.L1119:
	jr	$31
	li	$2,6			# 0x6

.L1120:
	jr	$31
	li	$2,7			# 0x7

.L1121:
	jr	$31
	li	$2,8			# 0x8

.L1122:
	jr	$31
	li	$2,9			# 0x9

.L1123:
	jr	$31
	li	$2,10			# 0xa

.L1124:
	jr	$31
	li	$2,11			# 0xb

.L1126:
	jr	$31
	li	$2,13			# 0xd

.L1127:
	jr	$31
	li	$2,14			# 0xe

	.set	macro
	.set	reorder
	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
	.align	3
	.globl	__ctzhi2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$4,0x1
	bne	$2,$0,.L1136
	andi	$5,$4,0x2

	bne	$5,$0,.L1137
	andi	$6,$4,0x4

	bne	$6,$0,.L1138
	andi	$7,$4,0x8

	bne	$7,$0,.L1139
	andi	$8,$4,0x10

	bne	$8,$0,.L1140
	andi	$9,$4,0x20

	bne	$9,$0,.L1141
	andi	$10,$4,0x40

	bne	$10,$0,.L1142
	andi	$11,$4,0x80

	bne	$11,$0,.L1143
	andi	$12,$4,0x100

	bne	$12,$0,.L1144
	andi	$13,$4,0x200

	bne	$13,$0,.L1145
	andi	$14,$4,0x400

	bne	$14,$0,.L1146
	andi	$15,$4,0x800

	bne	$15,$0,.L1147
	andi	$24,$4,0x1000

	bne	$24,$0,.L1148
	andi	$25,$4,0x2000

	bne	$25,$0,.L1149
	nop

	andi	$2,$4,0x4000
	bne	$2,$0,.L1150
	sra	$4,$4,15

	bne	$4,$0,.L1154
	li	$2,16			# 0x10

	jr	$31
	nop

.L1136:
	jr	$31
	move	$2,$0

.L1137:
	jr	$31
	li	$2,1			# 0x1

.L1148:
	jr	$31
	li	$2,12			# 0xc

.L1154:
	jr	$31
	li	$2,15			# 0xf

.L1138:
	jr	$31
	li	$2,2			# 0x2

.L1139:
	jr	$31
	li	$2,3			# 0x3

.L1140:
	jr	$31
	li	$2,4			# 0x4

.L1141:
	jr	$31
	li	$2,5			# 0x5

.L1142:
	jr	$31
	li	$2,6			# 0x6

.L1143:
	jr	$31
	li	$2,7			# 0x7

.L1144:
	jr	$31
	li	$2,8			# 0x8

.L1145:
	jr	$31
	li	$2,9			# 0x9

.L1146:
	jr	$31
	li	$2,10			# 0xa

.L1147:
	jr	$31
	li	$2,11			# 0xb

.L1149:
	jr	$31
	li	$2,13			# 0xd

.L1150:
	jr	$31
	li	$2,14			# 0xe

	.set	macro
	.set	reorder
	.end	__ctzhi2
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.align	3
	.globl	__fixunssfsi
	.set	nomips16
	.set	nomicromips
	.ent	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(%neg(%gp_rel(__fixunssfsi)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__fixunssfsi)))
	ld	$2,%got_page(.LC15)($4)
	lwc1	$f0,%got_ofst(.LC15)($2)
	c.le.s	$fcc0,$f0,$f12
	bc1tl	$fcc0,.L1162
	sub.s	$f12,$f12,$f0

	trunc.l.s $f1,$f12
	jr	$31
	dmfc1	$2,$f1

	.align	3
.L1162:
	li	$3,32768			# 0x8000
	trunc.l.s $f2,$f12
	dmfc1	$5,$f2
	jr	$31
	daddu	$2,$5,$3

	.set	macro
	.set	reorder
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.align	3
	.globl	__parityhi2
	.set	nomips16
	.set	nomicromips
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$3,$4
	sra	$2,$4,1
	andi	$7,$2,0x1
	sra	$5,$3,2
	andi	$4,$4,0x1
	addu	$8,$7,$4
	andi	$9,$5,0x1
	sra	$7,$3,3
	addu	$10,$8,$9
	andi	$11,$7,0x1
	sra	$4,$3,4
	addu	$12,$10,$11
	andi	$13,$4,0x1
	sra	$5,$3,5
	addu	$14,$12,$13
	andi	$15,$5,0x1
	sra	$7,$3,6
	addu	$24,$14,$15
	sra	$4,$3,7
	andi	$25,$7,0x1
	addu	$2,$24,$25
	andi	$8,$4,0x1
	sra	$5,$3,8
	addu	$9,$2,$8
	andi	$10,$5,0x1
	sra	$11,$3,9
	addu	$12,$9,$10
	andi	$13,$11,0x1
	sra	$14,$3,10
	addu	$15,$12,$13
	andi	$7,$14,0x1
	sra	$24,$3,11
	addu	$25,$15,$7
	andi	$2,$24,0x1
	sra	$4,$3,12
	addu	$8,$25,$2
	sra	$5,$3,13
	andi	$9,$4,0x1
	sra	$12,$3,14
	addu	$10,$8,$9
	andi	$11,$5,0x1
	addu	$13,$10,$11
	andi	$14,$12,0x1
	addu	$15,$13,$14
	sra	$3,$3,15
	addu	$7,$15,$3
	jr	$31
	andi	$2,$7,0x1

	.set	macro
	.set	reorder
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.align	3
	.globl	__popcounthi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$3,$4
	sra	$2,$4,1
	andi	$7,$2,0x1
	sra	$5,$3,2
	andi	$4,$4,0x1
	addu	$8,$7,$4
	andi	$9,$5,0x1
	sra	$7,$3,3
	addu	$10,$8,$9
	andi	$11,$7,0x1
	sra	$4,$3,4
	addu	$12,$10,$11
	andi	$13,$4,0x1
	sra	$5,$3,5
	addu	$14,$12,$13
	andi	$15,$5,0x1
	sra	$7,$3,6
	addu	$24,$14,$15
	sra	$4,$3,7
	andi	$25,$7,0x1
	addu	$2,$24,$25
	andi	$8,$4,0x1
	sra	$5,$3,8
	addu	$9,$2,$8
	andi	$10,$5,0x1
	sra	$11,$3,9
	addu	$12,$9,$10
	andi	$13,$11,0x1
	sra	$14,$3,10
	addu	$15,$12,$13
	andi	$7,$14,0x1
	sra	$24,$3,11
	addu	$25,$15,$7
	andi	$2,$24,0x1
	sra	$4,$3,12
	addu	$8,$25,$2
	sra	$5,$3,13
	andi	$9,$4,0x1
	sra	$12,$3,14
	addu	$10,$8,$9
	andi	$11,$5,0x1
	addu	$13,$10,$11
	andi	$14,$12,0x1
	addu	$15,$13,$14
	sra	$3,$3,15
	jr	$31
	addu	$2,$15,$3

	.set	macro
	.set	reorder
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.align	3
	.globl	__mulsi3_iq2000
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L1174
	move	$2,$0

	.align	3
.L1169:
	andi	$3,$4,0x1
	subu	$7,$0,$3
	and	$8,$7,$5
	srl	$4,$4,1
	addu	$2,$8,$2
	bne	$4,$0,.L1169
	sll	$5,$5,1

.L1174:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.align	3
	.globl	__mulsi3_lm32
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L1183
	move	$2,$0

	beq	$5,$0,.L1182
	nop

	.align	3
.L1177:
	andi	$3,$5,0x1
	subu	$7,$0,$3
	and	$8,$7,$4
	srl	$5,$5,1
	addu	$2,$8,$2
	bne	$5,$0,.L1177
	sll	$4,$4,1

.L1183:
	jr	$31
	nop

.L1182:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.align	3
	.globl	__udivmodsi4
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beq	$2,$0,.L1205
	li	$13,1			# 0x1

	b	.L1185
	li	$2,32			# 0x20

	.align	3
.L1189:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L1187
	sll	$13,$13,1

	beq	$2,$0,.L1188
	nop

.L1185:
	bgez	$5,.L1189
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L1191:
	sltu	$8,$4,$5
	sltu	$11,$8,1
	move	$12,$13
	subu	$9,$4,$5
	movz	$12,$0,$11
	srl	$13,$13,1
	movn	$4,$9,$11
	or	$2,$12,$2
	bne	$13,$0,.L1191
	srl	$5,$5,1

.L1188:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L1187:
	bne	$13,$0,.L1191
	move	$2,$0

	b	.L1188
	nop

	.align	3
.L1205:
	sltu	$3,$4,$5
	sltu	$2,$3,1
	subu	$5,$4,$5
	b	.L1188
	movn	$4,$5,$2

	.set	macro
	.set	reorder
	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.align	3
	.globl	__mspabi_cmpf
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.s	$fcc0,$f12,$f13
	bc1t	$fcc0,.L1209
	nop

	c.lt.s	$fcc1,$f13,$f12
	bc1f	$fcc1,.L1211
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1211:
	jr	$31
	move	$2,$0

	.align	3
.L1209:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	__mspabi_cmpf
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.align	3
	.globl	__mspabi_cmpd
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.d	$fcc0,$f12,$f13
	bc1t	$fcc0,.L1217
	nop

	c.lt.d	$fcc1,$f13,$f12
	bc1f	$fcc1,.L1219
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1219:
	jr	$31
	move	$2,$0

	.align	3
.L1217:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.align	3
	.globl	__mspabi_mpysll
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	gsdmultu	$2,$4,$5

	.set	macro
	.set	reorder
	.end	__mspabi_mpysll
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.align	3
	.globl	__mspabi_mpyull
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	gsdmultu	$2,$4,$5

	.set	macro
	.set	reorder
	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.align	3
	.globl	__mulhi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltzl	$5,.L1241
	subu	$5,$0,$5

	beq	$5,$0,.L1232
	move	$7,$0

.L1228:
	li	$11,32			# 0x20
	b	.L1231
	move	$2,$0

	.align	3
.L1242:
	beq	$11,$0,.L1230
	nop

.L1231:
	andi	$3,$5,0x1
	subu	$9,$0,$3
	and	$10,$9,$4
	addiu	$6,$11,-1
	dsra	$5,$5,1
	andi	$11,$6,0x00ff
	addu	$2,$10,$2
	bne	$5,$0,.L1242
	sll	$4,$4,1

.L1230:
	beq	$7,$0,.L1243
	nop

	jr	$31
	subu	$2,$0,$2

.L1232:
	move	$2,$0
.L1243:
	jr	$31
	nop

	.align	3
.L1241:
	b	.L1228
	li	$7,1			# 0x1

	.set	macro
	.set	reorder
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.align	3
	.globl	__divsi3
	.set	nomips16
	.set	nomicromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltzl	$4,.L1268
	dsubu	$4,$0,$4

	li	$2,1			# 0x1
	move	$9,$0
.L1245:
	bgez	$5,.L1270
	sll	$4,$4,0

	dsubu	$5,$0,$5
	move	$9,$2
.L1270:
	sll	$24,$5,0
	sltu	$3,$24,$4
	beq	$3,$0,.L1269
	sltu	$5,$4,$24

	li	$7,32			# 0x20
	b	.L1247
	li	$15,1			# 0x1

	.align	3
.L1251:
	sll	$24,$24,1
	sltu	$6,$24,$4
	beq	$6,$0,.L1249
	sll	$15,$15,1

	beq	$7,$0,.L1250
	move	$2,$0

.L1247:
	bgez	$24,.L1251
	addiu	$7,$7,-1

	move	$11,$0
	.align	3
.L1253:
	sltu	$8,$4,$24
	sltu	$12,$8,1
	move	$14,$15
	subu	$13,$4,$24
	movz	$14,$0,$12
	srl	$15,$15,1
	movn	$4,$13,$12
	or	$11,$14,$11
	bne	$15,$0,.L1253
	srl	$24,$24,1

.L1255:
	dsll	$25,$11,32
	dsrl	$2,$25,32
.L1250:
	beq	$9,$0,.L1271
	nop

	jr	$31
	dsubu	$2,$0,$2

.L1271:
	jr	$31
	nop

	.align	3
.L1249:
	bne	$15,$0,.L1253
	move	$11,$0

	b	.L1250
	move	$2,$0

	.align	3
.L1268:
	move	$2,$0
	b	.L1245
	li	$9,1			# 0x1

.L1269:
	b	.L1255
	sltu	$11,$5,1

	.set	macro
	.set	reorder
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.align	3
	.globl	__modsi3
	.set	nomips16
	.set	nomicromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltzl	$4,.L1300
	dsubu	$4,$0,$4

	move	$7,$0
.L1273:
	bgez	$5,.L1274
	sll	$2,$4,0

	dsubu	$5,$0,$5
.L1274:
	sll	$14,$5,0
	sltu	$4,$14,$2
	beq	$4,$0,.L1301
	subu	$5,$2,$14

	li	$9,32			# 0x20
	b	.L1275
	li	$13,1			# 0x1

	.align	3
.L1279:
	sll	$14,$14,1
	sltu	$6,$14,$2
	beq	$6,$0,.L1299
	sll	$13,$13,1

	beq	$9,$0,.L1302
	dsll	$15,$2,32

.L1275:
	bgez	$14,.L1279
	addiu	$9,$9,-1

	sltu	$10,$2,$14
	.align	3
.L1303:
	subu	$11,$2,$14
	sltu	$12,$10,1
	srl	$13,$13,1
	movn	$2,$11,$12
	srl	$14,$14,1
.L1299:
	bne	$13,$0,.L1303
	sltu	$10,$2,$14

.L1278:
	dsll	$15,$2,32
.L1302:
	beq	$7,$0,.L1304
	dsrl	$2,$15,32

	jr	$31
	dsubu	$2,$0,$2

.L1304:
	jr	$31
	nop

	.align	3
.L1300:
	b	.L1273
	li	$7,1			# 0x1

.L1301:
	sltu	$3,$2,$14
	b	.L1278
	movz	$2,$5,$3

	.set	macro
	.set	reorder
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.align	3
	.globl	__udivmodhi4
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beq	$2,$0,.L1388
	move	$7,$4

	sll	$8,$5,16
	sra	$9,$8,16
	bltz	$9,.L1308
	sll	$13,$5,1

	andi	$3,$13,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,.L1315
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,.L1315
	sll	$25,$5,2

	andi	$3,$25,0xffff
	sltu	$2,$3,$4
	beq	$2,$0,.L1317
	sll	$4,$3,16

	sra	$8,$4,16
	bltzl	$8,.L1310
	li	$13,4			# 0x4

	sll	$3,$5,3
	andi	$3,$3,0xffff
	sltu	$9,$3,$7
	beq	$9,$0,.L1319
	sll	$10,$3,16

	sra	$12,$10,16
	bltz	$12,.L1310
	li	$13,8			# 0x8

	sll	$13,$5,4
	andi	$3,$13,0xffff
	sltu	$14,$3,$7
	beq	$14,$0,.L1321
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,.L1321
	sll	$25,$5,5

	andi	$3,$25,0xffff
	sltu	$2,$3,$7
	beq	$2,$0,.L1323
	sll	$4,$3,16

	sra	$8,$4,16
	bltzl	$8,.L1310
	li	$13,32			# 0x20

	sll	$3,$5,6
	andi	$3,$3,0xffff
	sltu	$9,$3,$7
	beq	$9,$0,.L1325
	sll	$10,$3,16

	sra	$12,$10,16
	bltz	$12,.L1310
	li	$13,64			# 0x40

	sll	$13,$5,7
	andi	$3,$13,0xffff
	sltu	$14,$3,$7
	beq	$14,$0,.L1327
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,.L1327
	sll	$25,$5,8

	andi	$3,$25,0xffff
	sltu	$2,$3,$7
	beq	$2,$0,.L1329
	sll	$4,$3,16

	sra	$8,$4,16
	bltzl	$8,.L1310
	li	$13,256			# 0x100

	sll	$3,$5,9
	andi	$3,$3,0xffff
	sltu	$9,$3,$7
	beq	$9,$0,.L1331
	sll	$10,$3,16

	sra	$12,$10,16
	bltz	$12,.L1310
	li	$13,512			# 0x200

	sll	$13,$5,10
	andi	$3,$13,0xffff
	sltu	$14,$3,$7
	beq	$14,$0,.L1333
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,.L1333
	sll	$25,$5,11

	andi	$3,$25,0xffff
	sltu	$2,$3,$7
	beq	$2,$0,.L1335
	sll	$4,$3,16

	sra	$8,$4,16
	bltzl	$8,.L1310
	li	$13,2048			# 0x800

	sll	$3,$5,12
	andi	$3,$3,0xffff
	sltu	$9,$3,$7
	beq	$9,$0,.L1337
	sll	$10,$3,16

	sra	$12,$10,16
	bltz	$12,.L1310
	li	$13,4096			# 0x1000

	sll	$13,$5,13
	andi	$3,$13,0xffff
	sltu	$14,$3,$7
	beq	$14,$0,.L1339
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,.L1339
	sll	$25,$5,14

	andi	$3,$25,0xffff
	sltu	$2,$3,$7
	beq	$2,$0,.L1341
	sll	$4,$3,16

	sra	$8,$4,16
	bltz	$8,.L1341
	sll	$5,$5,15

	andi	$12,$5,0xffff
	sltu	$9,$12,$7
	beql	$9,$0,.L1342
	li	$3,32768			# 0x8000

	bne	$12,$0,.L1389
	move	$2,$7

.L1311:
	jr	$31
	movz	$2,$12,$6

.L1315:
	li	$13,2			# 0x2
	.align	3
.L1310:
	sltu	$10,$7,$3
	subu	$12,$7,$3
	andi	$14,$12,0xffff
	sltu	$15,$10,1
	move	$24,$7
	movn	$24,$14,$15
	dsrl	$2,$3,1
	sltu	$7,$24,$2
	move	$25,$13
	dsrl	$4,$13,1
	movn	$25,$0,$10
	subu	$8,$24,$2
	movn	$4,$0,$7
	andi	$2,$8,0xffff
	sltu	$10,$7,1
	or	$5,$4,$25
	dsrl	$9,$13,2
	movz	$2,$24,$10
	andi	$12,$5,0xffff
	beq	$9,$0,.L1311
	dsrl	$14,$3,2

	sltu	$15,$2,$14
	subu	$24,$2,$14
	sltu	$25,$15,1
	andi	$4,$24,0xffff
	movz	$9,$0,$25
	dsrl	$8,$13,3
	movn	$2,$4,$25
	or	$12,$9,$12
	beq	$8,$0,.L1311
	dsrl	$7,$3,3

	sltu	$10,$2,$7
	subu	$5,$2,$7
	sltu	$14,$10,1
	andi	$15,$5,0xffff
	movz	$8,$0,$14
	dsrl	$9,$13,4
	movn	$2,$15,$14
	or	$12,$8,$12
	beq	$9,$0,.L1311
	dsrl	$24,$3,4

	sltu	$25,$2,$24
	subu	$4,$2,$24
	sltu	$8,$25,1
	andi	$7,$4,0xffff
	movz	$9,$0,$8
	dsrl	$10,$13,5
	movn	$2,$7,$8
	or	$12,$9,$12
	beq	$10,$0,.L1311
	dsrl	$5,$3,5

	sltu	$14,$2,$5
	subu	$15,$2,$5
	sltu	$24,$14,1
	andi	$25,$15,0xffff
	movz	$10,$0,$24
	dsrl	$9,$13,6
	movn	$2,$25,$24
	or	$12,$10,$12
	beq	$9,$0,.L1311
	dsrl	$4,$3,6

	sltu	$8,$2,$4
	subu	$10,$2,$4
	sltu	$7,$8,1
	andi	$5,$10,0xffff
	movz	$9,$0,$7
	dsrl	$14,$13,7
	movn	$2,$5,$7
	or	$12,$9,$12
	beq	$14,$0,.L1311
	dsrl	$15,$3,7

	sltu	$24,$2,$15
	subu	$25,$2,$15
	sltu	$8,$24,1
	andi	$4,$25,0xffff
	movz	$14,$0,$8
	dsrl	$9,$13,8
	movn	$2,$4,$8
	or	$12,$14,$12
	beq	$9,$0,.L1311
	dsrl	$10,$3,8

	sltu	$7,$2,$10
	subu	$5,$2,$10
	sltu	$14,$7,1
	andi	$15,$5,0xffff
	movz	$9,$0,$14
	dsrl	$24,$13,9
	movn	$2,$15,$14
	or	$12,$9,$12
	beq	$24,$0,.L1311
	dsrl	$25,$3,9

	sltu	$8,$2,$25
	subu	$4,$2,$25
	sltu	$10,$8,1
	andi	$7,$4,0xffff
	movz	$24,$0,$10
	dsrl	$9,$13,10
	movn	$2,$7,$10
	or	$12,$24,$12
	beq	$9,$0,.L1311
	dsrl	$5,$3,10

	sltu	$14,$2,$5
	subu	$15,$2,$5
	sltu	$24,$14,1
	andi	$25,$15,0xffff
	movz	$9,$0,$24
	dsrl	$8,$13,11
	movn	$2,$25,$24
	or	$12,$9,$12
	beq	$8,$0,.L1311
	dsrl	$4,$3,11

	sltu	$10,$2,$4
	subu	$9,$2,$4
	sltu	$7,$10,1
	andi	$5,$9,0xffff
	movz	$8,$0,$7
	dsrl	$14,$13,12
	movn	$2,$5,$7
	or	$12,$8,$12
	beq	$14,$0,.L1311
	dsrl	$15,$3,12

	sltu	$24,$2,$15
	subu	$25,$2,$15
	sltu	$8,$24,1
	andi	$4,$25,0xffff
	movz	$14,$0,$8
	dsrl	$10,$13,13
	movn	$2,$4,$8
	or	$12,$14,$12
	beq	$10,$0,.L1311
	dsrl	$9,$3,13

	sltu	$7,$2,$9
	subu	$5,$2,$9
	sltu	$14,$7,1
	andi	$15,$5,0xffff
	movz	$10,$0,$14
	dsrl	$24,$13,14
	movn	$2,$15,$14
	or	$12,$10,$12
	beq	$24,$0,.L1311
	dsrl	$25,$3,14

	sltu	$8,$2,$25
	subu	$4,$2,$25
	sltu	$9,$8,1
	andi	$7,$4,0xffff
	movz	$24,$0,$9
	li	$10,16384			# 0x4000
	movn	$2,$7,$9
	or	$12,$24,$12
	beq	$13,$10,.L1311
	dsrl	$3,$3,15

	subu	$13,$2,$3
	sltu	$5,$2,$3
	sltu	$14,$5,1
	andi	$15,$13,0xffff
	movn	$2,$15,$14
	or	$12,$14,$12
	jr	$31
	movz	$2,$12,$6

.L1317:
	b	.L1310
	li	$13,4			# 0x4

.L1319:
	b	.L1310
	li	$13,8			# 0x8

.L1321:
	b	.L1310
	li	$13,16			# 0x10

.L1331:
	b	.L1310
	li	$13,512			# 0x200

.L1323:
	b	.L1310
	li	$13,32			# 0x20

.L1325:
	b	.L1310
	li	$13,64			# 0x40

.L1327:
	b	.L1310
	li	$13,128			# 0x80

.L1329:
	b	.L1310
	li	$13,256			# 0x100

.L1388:
	xor	$3,$5,$4
	subu	$4,$4,$5
	andi	$2,$4,0xffff
	sltu	$5,$3,1
	movz	$2,$7,$5
	b	.L1311
	move	$12,$5

.L1333:
	b	.L1310
	li	$13,1024			# 0x400

.L1335:
	b	.L1310
	li	$13,2048			# 0x800

.L1337:
	b	.L1310
	li	$13,4096			# 0x1000

.L1339:
	b	.L1310
	li	$13,8192			# 0x2000

.L1341:
	b	.L1310
	li	$13,16384			# 0x4000

.L1389:
	li	$13,32768			# 0x8000
	b	.L1310
	li	$3,32768			# 0x8000

.L1342:
	b	.L1310
	li	$13,32768			# 0x8000

.L1308:
	subu	$10,$4,$5
	andi	$2,$10,0xffff
	b	.L1311
	li	$12,1			# 0x1

	.set	macro
	.set	reorder
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.align	3
	.globl	__udivmodsi4_libgcc
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beq	$2,$0,.L1414
	li	$15,1			# 0x1

	li	$7,64			# 0x40
	b	.L1391
	dsll	$9,$15,31

	.align	3
.L1395:
	dsll	$5,$5,1
	sltu	$8,$5,$4
	beq	$8,$0,.L1393
	dsll	$15,$15,1

	beq	$7,$0,.L1394
	nop

.L1391:
	and	$2,$5,$9
	beq	$2,$0,.L1395
	addiu	$7,$7,-1

	move	$2,$0
	.align	3
.L1397:
	sltu	$11,$4,$5
	sltu	$12,$11,1
	move	$14,$15
	dsubu	$13,$4,$5
	movz	$14,$0,$12
	dsrl	$15,$15,1
	movn	$4,$13,$12
	or	$2,$2,$14
	bne	$15,$0,.L1397
	dsrl	$5,$5,1

.L1394:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L1393:
	bnel	$15,$0,.L1397
	move	$2,$0

	b	.L1394
	nop

	.align	3
.L1414:
	sltu	$3,$4,$5
	sltu	$2,$3,1
	dsubu	$5,$4,$5
	b	.L1394
	movn	$4,$5,$2

	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.align	3
	.globl	__ashldi3
	.set	nomips16
	.set	nomicromips
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beq	$2,$0,.L1416
	addiu	$13,$5,-32

	sll	$12,$4,0
	move	$5,$0
	sll	$11,$12,$13
	dsll	$15,$5,32
	dsll	$14,$11,32
	dsrl	$24,$15,32
	jr	$31
	or	$2,$24,$14

	.align	3
.L1416:
	beq	$5,$0,.L1419
	li	$3,32			# 0x20

	sll	$7,$4,0
	subu	$8,$3,$5
	dsra	$4,$4,32
	sll	$10,$4,$5
	srl	$9,$7,$8
	sll	$5,$7,$5
	or	$11,$9,$10
	dsll	$15,$5,32
	dsll	$14,$11,32
	dsrl	$24,$15,32
	jr	$31
	or	$2,$24,$14

	.align	3
.L1419:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.align	3
	.globl	__ashlti3
	.set	nomips16
	.set	nomicromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beq	$2,$0,.L1422
	nop

	addiu	$6,$6,-64
	dsll	$5,$4,$6
	move	$4,$0
	move	$2,$4
.L1427:
	jr	$31
	move	$3,$5

	.align	3
.L1422:
	beql	$6,$0,.L1427
	move	$2,$4

	li	$3,64			# 0x40
	subu	$8,$3,$6
	dsrl	$9,$4,$8
	dsll	$5,$5,$6
	dsll	$4,$4,$6
	or	$5,$9,$5
	move	$2,$4
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
	.align	3
	.globl	__ashrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beq	$2,$0,.L1429
	dsra	$13,$4,32

	addiu	$5,$5,-32
	sra	$11,$13,$5
	sra	$12,$13,31
	dsll	$14,$11,32
	dsrl	$15,$14,32
	dsll	$24,$12,32
	jr	$31
	or	$2,$24,$15

	.align	3
.L1429:
	beq	$5,$0,.L1432
	li	$3,32			# 0x20

	dsra	$7,$4,32
	subu	$8,$3,$5
	sll	$4,$4,0
	sll	$9,$7,$8
	srl	$10,$4,$5
	or	$11,$9,$10
	sra	$12,$7,$5
	dsll	$14,$11,32
	dsrl	$15,$14,32
	dsll	$24,$12,32
	jr	$31
	or	$2,$24,$15

	.align	3
.L1432:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.align	3
	.globl	__ashrti3
	.set	nomips16
	.set	nomicromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beq	$2,$0,.L1435
	dsra	$3,$5,63

	addiu	$6,$6,-64
	jr	$31
	dsra	$2,$5,$6

	.align	3
.L1435:
	beq	$6,$0,.L1438
	li	$7,64			# 0x40

	subu	$3,$7,$6
	dsll	$9,$5,$3
	dsrl	$4,$4,$6
	dsra	$3,$5,$6
	jr	$31
	or	$2,$9,$4

	.align	3
.L1438:
	move	$2,$4
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
	.align	3
	.globl	__bswapdi2
	.set	nomips16
	.set	nomicromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsrl	$2,$4,56
	dsll	$6,$4,56
	dsrl	$5,$4,40
	li	$3,255			# 0xff
	or	$9,$2,$6
	andi	$10,$5,0xff00
	dsrl	$11,$4,24
	li	$7,16711680			# 0xff0000
	or	$12,$9,$10
	and	$13,$11,$7
	dsrl	$14,$4,8
	dsll	$15,$3,24
	or	$24,$12,$13
	dsll	$6,$4,8
	dsll	$5,$3,32
	and	$25,$14,$15
	or	$2,$24,$25
	dsll	$10,$4,24
	dsll	$11,$3,40
	and	$9,$6,$5
	or	$7,$2,$9
	and	$12,$10,$11
	dsll	$4,$4,40
	dsll	$3,$3,48
	or	$13,$7,$12
	and	$14,$4,$3
	jr	$31
	or	$2,$13,$14

	.set	macro
	.set	reorder
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.align	3
	.globl	__bswapsi2
	.set	nomips16
	.set	nomicromips
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,24
	sll	$5,$4,24
	srl	$3,$4,8
	or	$7,$2,$5
	andi	$8,$3,0xff00
	sll	$4,$4,8
	li	$9,16711680			# 0xff0000
	or	$10,$7,$8
	and	$11,$4,$9
	jr	$31
	or	$2,$10,$11

	.set	macro
	.set	reorder
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.align	3
	.globl	__clzsi2
	.set	nomips16
	.set	nomicromips
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$7,65536			# 0x10000
	sltu	$2,$4,$7
	dsll	$10,$2,4
	li	$3,16			# 0x10
	subu	$5,$3,$10
	srl	$4,$4,$5
	andi	$6,$4,0xff00
	sltu	$8,$6,1
	dsll	$11,$8,3
	li	$12,8			# 0x8
	subu	$13,$12,$11
	srl	$14,$4,$13
	andi	$15,$14,0xf0
	sltu	$24,$15,1
	li	$7,4			# 0x4
	dsll	$25,$24,2
	subu	$2,$7,$25
	srl	$3,$14,$2
	andi	$5,$3,0xc
	sltu	$4,$5,1
	dsll	$12,$4,1
	li	$13,2			# 0x2
	subu	$6,$13,$12
	srl	$8,$3,$6
	daddu	$10,$11,$10
	daddu	$11,$25,$10
	subu	$14,$13,$8
	andi	$15,$8,0x2
	movn	$14,$0,$15
	addu	$24,$12,$11
	jr	$31
	addu	$2,$14,$24

	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.align	3
	.globl	__clzti2
	.set	nomips16
	.set	nomicromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,1
	daddiu	$3,$2,-1
	and	$7,$3,$5
	movn	$4,$0,$5
	or	$4,$7,$4
	dclz	$5,$4
	dsll	$8,$2,6
	jr	$31
	daddu	$2,$8,$5

	.set	macro
	.set	reorder
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.align	3
	.globl	__cmpdi2
	.set	nomips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	dsra	$3,$5,32
	slt	$6,$2,$3
	bne	$6,$0,.L1452
	slt	$8,$3,$2

	bne	$8,$0,.L1453
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1452
	sltu	$10,$5,$4

	bne	$10,$0,.L1453
	nop

	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1452:
	jr	$31
	move	$2,$0

	.align	3
.L1453:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.align	3
	.globl	__aeabi_lcmp
	.set	nomips16
	.set	nomicromips
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	dsra	$3,$5,32
	slt	$6,$2,$3
	bne	$6,$0,.L1459
	slt	$8,$3,$2

	bne	$8,$0,.L1458
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1459
	nop

	jr	$31
	sltu	$2,$5,$4

	.align	3
.L1459:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1458:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.align	3
	.globl	__cmpti2
	.set	nomips16
	.set	nomicromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$5,$7
	bne	$2,$0,.L1465
	slt	$5,$7,$5

	bne	$5,$0,.L1466
	sltu	$7,$4,$6

	bne	$7,$0,.L1465
	sltu	$4,$6,$4

	bne	$4,$0,.L1466
	nop

	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1465:
	jr	$31
	move	$2,$0

	.align	3
.L1466:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
	.align	3
	.globl	__ctzsi2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$7,$4,0xffff
	sltu	$2,$7,1
	dsll	$9,$2,4
	srl	$3,$4,$9
	andi	$6,$3,0xff
	sltu	$4,$6,1
	dsll	$10,$4,3
	srl	$11,$3,$10
	andi	$5,$11,0xf
	sltu	$12,$5,1
	dsll	$13,$12,2
	srl	$14,$11,$13
	andi	$15,$14,0x3
	sltu	$24,$15,1
	dsll	$25,$24,1
	srl	$7,$14,$25
	andi	$3,$7,0x3
	nor	$2,$0,$3
	daddu	$9,$10,$9
	andi	$6,$2,0x1
	srl	$4,$3,1
	li	$10,2			# 0x2
	daddu	$11,$13,$9
	subu	$5,$10,$4
	subu	$12,$0,$6
	and	$13,$12,$5
	addu	$14,$25,$11
	jr	$31
	addu	$2,$13,$14

	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.align	3
	.globl	__ctzti2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,1
	daddiu	$3,$2,-1
	movn	$5,$0,$4
	and	$4,$3,$4
	or	$5,$5,$4
	dctz	$7,$5
	sll	$8,$7,0
	sll	$9,$2,6
	jr	$31
	addu	$2,$8,$9

	.set	macro
	.set	reorder
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.align	3
	.globl	__ffsti2
	.set	nomips16
	.set	nomicromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$4,$0,.L1473
	dctz	$2,$4

	bne	$5,$0,.L1477
	dctz	$5,$5

	jr	$31
	move	$2,$0

	.align	3
.L1473:
	sll	$4,$2,0
	jr	$31
	addiu	$2,$4,1

	.align	3
.L1477:
	sll	$6,$5,0
	jr	$31
	addiu	$2,$6,65

	.set	macro
	.set	reorder
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.align	3
	.globl	__lshrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beq	$2,$0,.L1479
	addiu	$13,$5,-32

	dsra	$12,$4,32
	srl	$11,$12,$13
	move	$5,$0
	dmtc1	$11,$f0
	dmtc1	$5,$f1
	punpcklwd	$f2,$f0,$f1
	jr	$31
	dmfc1	$2,$f2

	.align	3
.L1479:
	beq	$5,$0,.L1482
	li	$3,32			# 0x20

	dsra	$7,$4,32
	subu	$8,$3,$5
	sll	$4,$4,0
	srl	$10,$4,$5
	sll	$9,$7,$8
	or	$11,$9,$10
	srl	$5,$7,$5
	dmtc1	$11,$f0
	dmtc1	$5,$f1
	punpcklwd	$f2,$f0,$f1
	jr	$31
	dmfc1	$2,$f2

	.align	3
.L1482:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.align	3
	.globl	__lshrti3
	.set	nomips16
	.set	nomicromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beq	$2,$0,.L1485
	nop

	addiu	$6,$6,-64
	dsrl	$2,$5,$6
	move	$5,$0
	jr	$31
	move	$3,$5

	.align	3
.L1485:
	beql	$6,$0,.L1488
	move	$2,$4

	li	$3,64			# 0x40
	subu	$8,$3,$6
	dsll	$9,$5,$8
	dsrl	$4,$4,$6
	dsrl	$5,$5,$6
	or	$2,$9,$4
	jr	$31
	move	$3,$5

	.align	3
.L1488:
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.align	3
	.globl	__muldsi3
	.set	nomips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$3,$4,0xffff
	andi	$6,$5,0xffff
	srl	$4,$4,16
	mul	$8,$4,$6
	gsmultu	$2,$3,$6
	srl	$5,$5,16
	srl	$7,$2,16
	addu	$10,$8,$7
	mul	$15,$5,$3
	andi	$11,$2,0xffff
	sll	$12,$10,16
	addu	$13,$11,$12
	mul	$3,$4,$5
	srl	$14,$13,16
	addu	$24,$15,$14
	andi	$4,$13,0xffff
	sll	$2,$24,16
	srl	$25,$10,16
	addu	$8,$4,$2
	addu	$6,$3,$25
	srl	$7,$24,16
	addu	$10,$6,$7
	dsll	$12,$8,32
	dsll	$11,$10,32
	dsrl	$13,$12,32
	jr	$31
	or	$2,$13,$11

	.set	macro
	.set	reorder
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.align	3
	.globl	__muldi3_compiler_rt
	.set	nomips16
	.set	nomicromips
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$9,$4,0
	andi	$7,$5,0xffff
	srl	$8,$9,16
	mul	$10,$8,$7
	sll	$15,$5,0
	andi	$6,$4,0xffff
	gsmultu	$3,$6,$7
	srl	$25,$15,16
	srl	$2,$3,16
	addu	$14,$10,$2
	mul	$6,$25,$6
	andi	$11,$3,0xffff
	mul	$8,$8,$25
	sll	$12,$14,16
	addu	$24,$11,$12
	srl	$7,$24,16
	addu	$10,$6,$7
	srl	$3,$14,16
	addu	$2,$8,$3
	srl	$14,$10,16
	addu	$11,$2,$14
	dsra	$5,$5,32
	mtlo	$11
	madd	$9,$5
	dsra	$4,$4,32
	madd	$15,$4
	andi	$12,$24,0xffff
	sll	$15,$10,16
	mflo	$9
	addu	$24,$12,$15
	dsll	$7,$24,32
	dsll	$25,$9,32
	dsrl	$6,$7,32
	jr	$31
	or	$2,$6,$25

	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.align	3
	.globl	__mulddi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$6,$4,0
	sll	$3,$5,0
	multu	$6,$3
	dsra	$4,$4,32
	mflo	$2
	mfhi	$7
	multu	$3,$4
	dsra	$5,$5,32
	mflo	$13
	mfhi	$14
	multu	$6,$5
	dsll	$9,$2,32
	mflo	$6
	dsrl	$10,$9,32
	dsll	$11,$7,32
	dsll	$15,$13,32
	mfhi	$7
	multu	$4,$5
	or	$12,$10,$11
	dsrl	$24,$15,32
	dsll	$25,$14,32
	or	$3,$24,$25
	dsrl	$2,$12,32
	mflo	$4
	daddu	$9,$3,$2
	dsll	$10,$6,32
	mfhi	$15
	dsrl	$11,$10,32
	dsll	$13,$7,32
	dsll	$5,$9,32
	dsll	$24,$4,32
	or	$14,$11,$13
	dsll	$3,$15,32
	dsrl	$25,$24,32
	dsrl	$6,$5,32
	or	$2,$25,$3
	daddu	$7,$14,$6
	dsrl	$9,$9,32
	dsll	$12,$12,32
	daddu	$10,$9,$2
	dsrl	$11,$7,32
	dsrl	$13,$12,32
	dsll	$14,$7,32
	daddu	$3,$10,$11
	jr	$31
	daddu	$2,$13,$14

	.set	macro
	.set	reorder
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.align	3
	.globl	__multi3
	.set	nomips16
	.set	nomicromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$8,$4,0
	sll	$3,$6,0
	multu	$8,$3
	dsra	$15,$4,32
	mflo	$2
	mfhi	$9
	dsll	$10,$2,32
	multu	$3,$15
	dsrl	$11,$10,32
	dsra	$10,$6,32
	mflo	$24
	mfhi	$25
	multu	$8,$10
	dsll	$13,$9,32
	mflo	$8
	dsll	$3,$24,32
	dsll	$9,$25,32
	mfhi	$25
	multu	$15,$10
	or	$14,$11,$13
	dsrl	$2,$3,32
	or	$13,$2,$9
	mflo	$15
	dsrl	$11,$14,32
	daddu	$24,$13,$11
	mfhi	$10
	dsll	$3,$8,32
	dsrl	$2,$3,32
	dsll	$9,$25,32
	dsll	$11,$15,32
	dsll	$3,$24,32
	or	$13,$2,$9
	dsrl	$8,$11,32
	dsll	$25,$10,32
	dsrl	$9,$3,32
	or	$2,$8,$25
	daddu	$13,$13,$9
	dsrl	$24,$24,32
	daddu	$15,$24,$2
	dsrl	$10,$13,32
	daddu	$11,$15,$10
	dsll	$14,$14,32
	dsrl	$25,$14,32
	dsll	$8,$13,32
	gsdmultu	$4,$4,$7
	daddu	$7,$4,$11
	gsdmultu	$6,$6,$5
	daddu	$2,$25,$8
	jr	$31
	daddu	$3,$7,$6

	.set	macro
	.set	reorder
	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
	.align	3
	.globl	__negdi2
	.set	nomips16
	.set	nomicromips
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.align	3
	.globl	__negti2
	.set	nomips16
	.set	nomicromips
	.ent	__negti2
	.type	__negti2, @function
__negti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$0,$4
	dsubu	$5,$0,$5
	dsubu	$3,$5,$2
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
	.align	3
	.globl	__paritydi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	sll	$4,$4,0
	xor	$6,$2,$4
	srl	$3,$6,16
	xor	$7,$3,$6
	srl	$8,$7,8
	xor	$9,$8,$7
	srl	$10,$9,4
	xor	$11,$10,$9
	andi	$12,$11,0xf
	li	$13,27030			# 0x6996
	sra	$14,$13,$12
	jr	$31
	andi	$2,$14,0x1

	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.align	3
	.globl	__parityti2
	.set	nomips16
	.set	nomicromips
	.ent	__parityti2
	.type	__parityti2, @function
__parityti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	xor	$4,$4,$5
	dsra	$2,$4,32
	sll	$3,$4,0
	xor	$5,$2,$3
	srl	$7,$5,16
	xor	$8,$7,$5
	srl	$9,$8,8
	xor	$10,$9,$8
	srl	$11,$10,4
	xor	$12,$11,$10
	andi	$13,$12,0xf
	li	$14,27030			# 0x6996
	sra	$15,$14,$13
	jr	$31
	andi	$2,$15,0x1

	.set	macro
	.set	reorder
	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.align	3
	.globl	__paritysi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,16
	xor	$3,$2,$4
	srl	$4,$3,8
	xor	$6,$4,$3
	srl	$7,$6,4
	xor	$8,$7,$6
	andi	$9,$8,0xf
	li	$10,27030			# 0x6996
	sra	$11,$10,$9
	jr	$31
	andi	$2,$11,0x1

	.set	macro
	.set	reorder
	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.align	3
	.globl	__popcountdi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,1431633920			# 0x55550000
	daddiu	$3,$2,21845
	dsll	$5,$3,16
	daddiu	$7,$5,21845
	li	$8,858980352			# 0x33330000
	dsll	$9,$7,16
	daddiu	$10,$8,13107
	dsrl	$11,$4,1
	daddiu	$12,$9,21845
	dsll	$13,$10,16
	and	$14,$11,$12
	daddiu	$15,$13,13107
	dsubu	$4,$4,$14
	dsll	$24,$15,16
	li	$25,252641280			# 0xf0f0000
	daddiu	$2,$24,13107
	dsrl	$5,$4,2
	daddiu	$3,$25,3855
	and	$7,$5,$2
	and	$8,$4,$2
	dsll	$9,$3,16
	daddu	$10,$7,$8
	daddiu	$11,$9,3855
	dsrl	$12,$10,4
	dsll	$13,$11,16
	daddu	$14,$12,$10
	daddiu	$15,$13,3855
	and	$4,$14,$15
	dsrl	$24,$4,32
	sll	$25,$4,0
	addu	$2,$24,$25
	srl	$5,$2,16
	addu	$3,$5,$2
	srl	$7,$3,8
	addu	$8,$7,$3
	jr	$31
	andi	$2,$8,0x7f

	.set	macro
	.set	reorder
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.align	3
	.globl	__popcountsi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,1431633920			# 0x55550000
	srl	$2,$4,1
	addiu	$6,$3,21845
	and	$7,$2,$6
	subu	$4,$4,$7
	li	$8,858980352			# 0x33330000
	addiu	$9,$8,13107
	srl	$10,$4,2
	and	$12,$4,$9
	and	$11,$10,$9
	addu	$13,$12,$11
	srl	$14,$13,4
	li	$15,252641280			# 0xf0f0000
	addu	$24,$14,$13
	addiu	$25,$15,3855
	and	$3,$24,$25
	srl	$2,$3,16
	addu	$6,$2,$3
	srl	$7,$6,8
	addu	$4,$6,$7
	jr	$31
	andi	$2,$4,0x3f

	.set	macro
	.set	reorder
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.align	3
	.globl	__popcountti2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$6,1431633920			# 0x55550000
	daddiu	$2,$6,21845
	dsll	$3,$2,16
	daddiu	$7,$3,21845
	dsll	$9,$5,63
	dsrl	$10,$4,1
	dsll	$11,$7,16
	daddiu	$12,$11,21845
	or	$13,$9,$10
	and	$15,$13,$12
	dsrl	$14,$5,1
	li	$24,858980352			# 0x33330000
	and	$6,$14,$12
	daddiu	$2,$24,13107
	dsubu	$25,$4,$15
	sltu	$4,$4,$25
	dsubu	$5,$5,$6
	dsll	$3,$2,16
	dsubu	$7,$5,$4
	daddiu	$9,$3,13107
	dsll	$10,$7,62
	dsrl	$11,$25,2
	dsll	$12,$9,16
	daddiu	$13,$12,13107
	or	$14,$10,$11
	and	$15,$14,$13
	dsrl	$24,$7,2
	and	$25,$25,$13
	daddu	$2,$15,$25
	and	$6,$24,$13
	and	$5,$7,$13
	sltu	$4,$2,$15
	daddu	$3,$6,$5
	daddu	$7,$4,$3
	li	$9,252641280			# 0xf0f0000
	dsll	$10,$7,60
	dsrl	$11,$2,4
	daddiu	$12,$9,3855
	or	$13,$10,$11
	dsll	$14,$12,16
	daddu	$15,$13,$2
	dsrl	$24,$7,4
	daddiu	$25,$14,3855
	sltu	$2,$15,$13
	daddu	$6,$24,$7
	dsll	$5,$25,16
	daddiu	$4,$5,3855
	daddu	$3,$2,$6
	and	$7,$15,$4
	and	$9,$3,$4
	daddu	$10,$9,$7
	dsra	$11,$10,32
	sll	$12,$10,0
	addu	$13,$11,$12
	srl	$14,$13,16
	addu	$15,$14,$13
	srl	$24,$15,8
	addu	$25,$24,$15
	jr	$31
	andi	$2,$25,0x00ff

	.set	macro
	.set	reorder
	.end	__popcountti2
	.size	__popcountti2, .-__popcountti2
	.align	2
	.align	3
	.globl	__powidf2
	.set	nomips16
	.set	nomicromips
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$7,%hi(%neg(%gp_rel(__powidf2)))
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(__powidf2)))
	andi	$2,$5,0x1
	beq	$2,$0,.L1520
	ld	$6,%got_page(.LC14)($7)

	ldc1	$f0,%got_ofst(.LC14)($6)
	move	$11,$5
	.align	3
.L1517:
	mul.d	$f0,$f0,$f12
.L1515:
	srl	$3,$11,31
	addu	$4,$3,$11
	sra	$11,$4,1
	beq	$11,$0,.L1516
	srl	$8,$11,31

	andi	$9,$11,0x1
	mul.d	$f12,$f12,$f12
	bne	$9,$0,.L1517
	addu	$10,$8,$11

	sra	$11,$10,1
.L1524:
	srl	$8,$11,31
	andi	$9,$11,0x1
	mul.d	$f12,$f12,$f12
	bne	$9,$0,.L1517
	addu	$10,$8,$11

	b	.L1524
	sra	$11,$10,1

	.align	3
.L1516:
	bltz	$5,.L1523
	ldc1	$f1,%got_ofst(.LC14)($6)

	jr	$31
	nop

	.align	3
.L1520:
	ldc1	$f0,%got_ofst(.LC14)($6)
	b	.L1515
	move	$11,$5

	.align	3
.L1523:
	jr	$31
	div.d	$f0,$f1,$f0

	.set	macro
	.set	reorder
	.end	__powidf2
	.size	__powidf2, .-__powidf2
	.align	2
	.align	3
	.globl	__powisf2
	.set	nomips16
	.set	nomicromips
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$7,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(__powisf2)))
	andi	$2,$5,0x1
	beq	$2,$0,.L1531
	ld	$6,%got_page(.LC16)($7)

	lwc1	$f0,%got_ofst(.LC16)($6)
	move	$11,$5
	.align	3
.L1528:
	mul.s	$f0,$f0,$f12
.L1526:
	srl	$3,$11,31
	addu	$4,$3,$11
	sra	$11,$4,1
	beq	$11,$0,.L1527
	srl	$8,$11,31

	andi	$9,$11,0x1
	mul.s	$f12,$f12,$f12
	bne	$9,$0,.L1528
	addu	$10,$8,$11

	sra	$11,$10,1
.L1535:
	srl	$8,$11,31
	andi	$9,$11,0x1
	mul.s	$f12,$f12,$f12
	bne	$9,$0,.L1528
	addu	$10,$8,$11

	b	.L1535
	sra	$11,$10,1

	.align	3
.L1527:
	bltz	$5,.L1534
	lwc1	$f1,%got_ofst(.LC16)($6)

	jr	$31
	nop

	.align	3
.L1531:
	lwc1	$f0,%got_ofst(.LC16)($6)
	b	.L1526
	move	$11,$5

	.align	3
.L1534:
	jr	$31
	div.s	$f0,$f1,$f0

	.set	macro
	.set	reorder
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.align	3
	.globl	__ucmpdi2
	.set	nomips16
	.set	nomicromips
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	dsra	$3,$5,32
	sltu	$6,$2,$3
	bne	$6,$0,.L1540
	sltu	$8,$3,$2

	bne	$8,$0,.L1541
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1540
	sltu	$10,$5,$4

	bne	$10,$0,.L1541
	nop

	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1540:
	jr	$31
	move	$2,$0

	.align	3
.L1541:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.align	3
	.globl	__aeabi_ulcmp
	.set	nomips16
	.set	nomicromips
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	dsra	$3,$5,32
	sltu	$6,$2,$3
	bne	$6,$0,.L1547
	sltu	$8,$3,$2

	bne	$8,$0,.L1546
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1547
	nop

	jr	$31
	sltu	$2,$5,$4

	.align	3
.L1547:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1546:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.align	3
	.globl	__ucmpti2
	.set	nomips16
	.set	nomicromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$7
	bne	$2,$0,.L1553
	sltu	$5,$7,$5

	bne	$5,$0,.L1554
	sltu	$7,$4,$6

	bne	$7,$0,.L1553
	sltu	$4,$6,$4

	bne	$4,$0,.L1554
	nop

	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1553:
	jr	$31
	move	$2,$0

	.align	3
.L1554:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__ucmpti2
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.local	seed
	.comm	seed,8,8
	.rdata
	.align	3
	.type	digits, @object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr"
	.ascii	"stuvwxyz\000"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	-8388609
	.align	2
.LC1:
	.word	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC2:
	.word	-1
	.word	-1048577
	.align	3
.LC3:
	.word	-1
	.word	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC4:
	.word	-1
	.word	-1
	.word	-1
	.word	-65537
	.align	4
.LC5:
	.word	-1
	.word	-1
	.word	-1
	.word	2147418111
	.LC6 = .LC10+12
	.section	.rodata.cst4
	.align	2
.LC7:
	.word	1056964608
	.LC8 = .LC10+8
	.section	.rodata.cst8
	.align	3
.LC9:
	.word	0
	.word	1071644672
	.section	.rodata.cst16
	.align	4
.LC10:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC11:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.section	.rodata.cst8
	.align	3
.LC12:
	.word	0
	.word	-1074790400
	.align	3
.LC13:
	.word	0
	.word	-1075838976
	.align	3
.LC14:
	.word	0
	.word	1072693248
	.section	.rodata.cst4
	.align	2
.LC15:
	.word	1191182336
	.align	2
.LC16:
	.word	1065353216
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
