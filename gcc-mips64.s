	.file	1 "mini-libc.c"
	.section .mdebug.abi64
	.previous
	.nan	2008
	.module	fp=64
	.module	oddspreg
	.module	arch=mips4
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
	beq	$6,$0,.L36
	daddu	$9,$4,$6

	.align	3
.L9:
	lb	$7,-1($10)
	daddiu	$9,$9,-1
	daddiu	$10,$10,-1
	bne	$2,$9,.L9
	sb	$7,0($9)

.L36:
	jr	$31
	nop

	.align	3
.L7:
	bne	$4,$5,.L34
	nop

	jr	$31
	nop

	.align	3
.L34:
	beq	$6,$0,.L36
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

	move	$24,$2
	dsll	$14,$13,3
	daddu	$15,$5,$14
	.align	3
.L11:
	ldc1	$f0,0($5)
	daddiu	$5,$5,8
	daddiu	$24,$24,8
	bne	$15,$5,.L11
	sdc1	$f0,-8($24)

	daddu	$25,$2,$14
	beq	$6,$14,.L36
	dsubu	$5,$6,$14

	lb	$3,0($15)
	li	$6,1			# 0x1
	beq	$5,$6,.L36
	sb	$3,0($25)

	lb	$4,1($15)
	li	$7,2			# 0x2
	beq	$5,$7,.L36
	sb	$4,1($25)

	lb	$9,2($15)
	li	$10,3			# 0x3
	beq	$5,$10,.L36
	sb	$9,2($25)

	lb	$11,3($15)
	li	$12,4			# 0x4
	beq	$5,$12,.L36
	sb	$11,3($25)

	lb	$13,4($15)
	li	$14,5			# 0x5
	beq	$5,$14,.L36
	sb	$13,4($25)

	lb	$24,5($15)
	li	$3,6			# 0x6
	beq	$5,$3,.L36
	sb	$24,5($25)

	lb	$15,6($15)
	jr	$31
	sb	$15,6($25)

	.align	3
.L10:
	daddu	$25,$2,$6
	move	$6,$2
	.align	3
.L14:
	lb	$5,-1($4)
	daddiu	$6,$6,1
	daddiu	$4,$4,1
	bne	$6,$25,.L14
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
	bne	$7,$0,.L38
	andi	$6,$6,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L41:
	beq	$7,$0,.L40
	daddiu	$4,$4,1

.L38:
	lbu	$2,0($5)
	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	bne	$2,$6,.L41
	sb	$2,0($4)

	jr	$31
	daddiu	$2,$4,1

	.align	3
.L40:
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
	bne	$6,$0,.L52
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L54:
	beq	$6,$0,.L55
	daddiu	$4,$4,1

.L52:
	lbu	$2,0($4)
	bne	$2,$5,.L54
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L55:
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
	bnel	$6,$0,.L76
	lbu	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L65:
	beq	$6,$0,.L75
	move	$2,$0

	lbu	$2,0($4)
.L76:
	daddiu	$6,$6,-1
	daddiu	$4,$4,1
	lbu	$3,0($5)
	beq	$2,$3,.L65
	daddiu	$5,$5,1

	jr	$31
	subu	$2,$2,$3

.L75:
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
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(memcpy)))
	beq	$6,$0,.L78
	sd	$31,24($sp)

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

.L78:
	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
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
	andi	$5,$5,0x00ff
	daddu	$8,$4,$6
	b	.L84
	daddiu	$4,$4,-1

	.align	3
.L86:
	lbu	$3,0($2)
	beq	$3,$5,.L88
	daddiu	$8,$8,-1

.L84:
	bne	$8,$4,.L86
	move	$2,$8

	move	$2,$0
.L88:
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
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(memset)))
	beq	$6,$0,.L92
	sd	$31,24($sp)

	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	andi	$5,$5,0x00ff

.L92:
	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
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
	beq	$3,$0,.L102
	sb	$3,0($4)

	.align	3
.L96:
	lb	$4,1($5)
	daddiu	$2,$2,1
	daddiu	$5,$5,1
	bne	$4,$0,.L96
	sb	$4,0($2)

.L102:
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
	beq	$4,$0,.L112
	andi	$5,$5,0x00ff

	b	.L113
	andi	$3,$4,0x00ff

	.align	3
.L106:
	beq	$4,$0,.L112
	daddiu	$2,$2,1

	andi	$3,$4,0x00ff
.L113:
	bnel	$3,$5,.L106
	lb	$4,1($2)

.L112:
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
	b	.L116
	move	$2,$4

	.align	3
.L120:
	beq	$3,$0,.L119
	daddiu	$2,$2,1

.L116:
	lb	$3,0($2)
	bne	$3,$5,.L120
	nop

	jr	$31
	nop

	.align	3
.L119:
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
	beq	$3,$2,.L132
	daddiu	$4,$4,1

	b	.L131
	andi	$3,$3,0x00ff

	.align	3
.L124:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,.L130
	daddiu	$4,$4,1

.L132:
	bne	$3,$0,.L124
	daddiu	$5,$5,1

	andi	$4,$2,0x00ff
	jr	$31
	subu	$2,$3,$4

	.align	3
.L130:
	andi	$3,$3,0x00ff
	.align	3
.L131:
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
	beq	$2,$0,.L136
	move	$6,$4

	.align	3
.L135:
	lb	$3,1($6)
	bne	$3,$0,.L135
	daddiu	$6,$6,1

	jr	$31
	dsubu	$2,$6,$4

	.align	3
.L136:
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
	beq	$6,$0,.L147
	nop

	lbu	$2,0($4)
	beq	$2,$0,.L150
	daddiu	$6,$6,-1

	b	.L143
	daddu	$9,$4,$6

	.align	3
.L152:
	beq	$4,$9,.L142
	nop

	bne	$3,$2,.L142
	daddiu	$4,$4,1

	lbu	$2,0($4)
	beql	$2,$0,.L151
	lbu	$3,1($5)

	move	$5,$7
.L143:
	lbu	$3,0($5)
	bne	$3,$0,.L152
	daddiu	$7,$5,1

.L142:
	jr	$31
	subu	$2,$2,$3

	.align	3
.L147:
	jr	$31
	move	$2,$0

	.align	3
.L151:
	jr	$31
	subu	$2,$2,$3

.L150:
	b	.L142
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
	bne	$2,$0,.L163
	daddiu	$3,$6,-2

	sltu	$7,$3,14
	bne	$7,$0,.L155
	or	$8,$5,$4

	andi	$9,$8,0x7
	bne	$9,$0,.L155
	dsrl	$11,$6,4

	move	$25,$4
	dsll	$12,$11,4
	move	$3,$5
	dsrl	$13,$6,1
	daddu	$10,$4,$12
	.align	3
.L156:
	ld	$15,0($25)
	daddiu	$3,$3,16
	daddiu	$25,$25,16
	ld	$24,-8($25)
	dmtc1	$15,$f0
	dmtc1	$24,$f1
	punpckhbh	$f2,$f0,$f1
	punpcklbh	$f4,$f0,$f1
	punpckhbh	$f6,$f4,$f2
	punpcklbh	$f8,$f4,$f2
	punpcklbh	$f10,$f8,$f6
	punpckhbh	$f12,$f8,$f6
	punpcklbh	$f14,$f12,$f10
	punpckhbh	$f16,$f12,$f10
	sdc1	$f14,-16($3)
	bne	$25,$10,.L156
	sdc1	$f16,-8($3)

	dsll	$10,$11,4
	daddu	$5,$5,$12
	dsll	$11,$11,3
	daddu	$12,$4,$12
	beq	$13,$11,.L163
	dsubu	$25,$6,$10

	lbu	$13,1($12)
	slt	$4,$25,4
	lbu	$6,0($12)
	sb	$13,0($5)
	bne	$4,$0,.L163
	sb	$6,1($5)

	lbu	$3,3($12)
	slt	$9,$25,6
	lbu	$8,2($12)
	sb	$3,2($5)
	bne	$9,$0,.L163
	sb	$8,3($5)

	lbu	$15,5($12)
	slt	$7,$25,8
	lbu	$24,4($12)
	sb	$15,4($5)
	bne	$7,$0,.L163
	sb	$24,5($5)

	lbu	$2,7($12)
	slt	$11,$25,10
	lbu	$10,6($12)
	sb	$2,6($5)
	bne	$11,$0,.L163
	sb	$10,7($5)

	lbu	$13,9($12)
	slt	$4,$25,12
	lbu	$6,8($12)
	sb	$13,8($5)
	bne	$4,$0,.L163
	sb	$6,9($5)

	lbu	$8,11($12)
	slt	$25,$25,14
	lbu	$9,10($12)
	sb	$8,10($5)
	bne	$25,$0,.L163
	sb	$9,11($5)

	lbu	$3,13($12)
	lbu	$12,12($12)
	sb	$3,12($5)
	jr	$31
	sb	$12,13($5)

	.align	3
.L155:
	dsrl	$15,$6,1
	dsll	$24,$15,1
	daddu	$7,$4,$24
	.align	3
.L158:
	lbu	$2,1($4)
	daddiu	$4,$4,2
	daddiu	$5,$5,2
	lbu	$10,-2($4)
	sb	$2,-2($5)
	bne	$7,$4,.L158
	sb	$10,-1($5)

.L163:
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
	beq	$4,$2,.L170
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

	.align	3
.L170:
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
	bne	$2,$0,.L174
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

	.align	3
.L174:
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
	beq	$4,$2,.L186
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

	.align	3
.L186:
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
	bne	$2,$0,.L194
	addiu	$5,$4,-127

	sltu	$6,$5,33
	beq	$6,$0,.L196
	addiu	$7,$4,-8232

.L194:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L196:
	sltu	$8,$7,2
	bne	$8,$0,.L194
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
	bne	$2,$0,.L207
	sltu	$3,$4,8232

	bne	$3,$0,.L204
	addiu	$6,$4,-8234

	li	$7,47062			# 0xb7d6
	sltu	$8,$6,$7
	bne	$8,$0,.L204
	li	$9,-65536			# 0xffffffffffff0000

	addiu	$10,$9,8192
	addu	$11,$4,$10
	sltu	$12,$11,8185
	bne	$12,$0,.L204
	addiu	$13,$9,4

	li	$14,1048576			# 0x100000
	addu	$15,$4,$13
	addiu	$24,$14,4
	sltu	$25,$15,$24
	beq	$25,$0,.L205
	andi	$4,$4,0xfffe

	xori	$2,$4,0xfffe
	jr	$31
	sltu	$2,$0,$2

	.align	3
.L204:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L207:
	addiu	$3,$4,1
	andi	$6,$3,0x7f
	sltu	$7,$6,33
	jr	$31
	sltu	$2,$7,1

	.align	3
.L205:
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
	bne	$5,$0,.L210
	ori	$4,$4,0x20

	addiu	$6,$4,-97
	jr	$31
	sltu	$2,$6,6

	.align	3
.L210:
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
	bc1t	$fcc0,.L217
	c.un.d	$fcc1,$f13,$f13

	bc1t	$fcc1,.L218
	nop

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L221
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

	.align	3
.L221:
	jr	$31
	dmtc1	$0,$f0

	.align	3
.L217:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L218:
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
	bc1t	$fcc0,.L226
	c.un.s	$fcc1,$f13,$f13

	bc1t	$fcc1,.L227
	nop

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L230
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

	.align	3
.L230:
	jr	$31
	mtc1	$0,$f0

	.align	3
.L226:
	jr	$31
	mov.s	$f0,$f12

	.align	3
.L227:
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
	bc1t	$fcc0,.L232
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L236
	ld	$2,0($sp)

	ld	$3,8($sp)
	dsrl	$5,$2,63
	dsrl	$6,$3,63
	beq	$5,$6,.L234
	mov.d	$f0,$f12

	movn.d	$f0,$f13,$5
.L232:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L234:
	c.lt.d	$fcc2,$f12,$f13
	daddiu	$sp,$sp,16
	jr	$31
	movt.d	$f0,$f13,$fcc2

	.align	3
.L236:
	b	.L232
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
	bc1t	$fcc0,.L239
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L243
	lw	$3,0($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	mov.s	$f0,$f12
	lw	$2,4($sp)
	and	$6,$3,$4
	and	$7,$2,$4
	beq	$6,$7,.L241
	move	$8,$6

	movn.s	$f0,$f13,$8
.L239:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L241:
	c.lt.s	$fcc2,$f12,$f13
	daddiu	$sp,$sp,16
	jr	$31
	movt.s	$f0,$f13,$fcc2

	.align	3
.L243:
	b	.L239
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
	dmfc1	$fp,$f12
	sd	$23,80($sp)
	dmfc1	$23,$f14
	sd	$22,72($sp)
	dmfc1	$22,$f15
	dmtc1	$fp,$f14
	sd	$20,64($sp)
	dmfc1	$20,$f13
	dmtc1	$fp,$f12
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	sd	$31,104($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	sd	$19,56($sp)
	dmtc1	$20,$f15
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$20,$f13
	sd	$18,48($sp)
	sd	$17,40($sp)
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	sd	$16,32($sp)

	bne	$2,$0,.L246
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$23,$f14
	dmtc1	$23,$f12
	dmtc1	$22,$f15
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$22,$f13

	bne	$2,$0,.L253
	dsrl	$2,$20,63

	dsrl	$4,$22,63
	beql	$2,$4,.L248
	sd	$23,0($sp)

	beq	$2,$0,.L258
	ld	$31,104($sp)

.L246:
	ld	$31,104($sp)
.L259:
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
.L248:
	sd	$fp,16($sp)
	ldc1	$f14,0($sp)
	ldc1	$f12,16($sp)
	sd	$22,8($sp)
	sd	$20,24($sp)
	ldc1	$f15,8($sp)
	ld	$25,%call16(__lttf2)($28)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f13,24($sp)

	bltz	$2,.L259
	ld	$31,104($sp)

.L253:
	ld	$31,104($sp)
.L258:
	move	$23,$fp
	move	$22,$20
	dmtc1	$23,$f0
	ld	$fp,96($sp)
	dmtc1	$22,$f2
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
	bc1t	$fcc0,.L260
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L264
	ld	$2,0($sp)

	ld	$3,8($sp)
	dsrl	$5,$2,63
	dsrl	$6,$3,63
	beql	$5,$6,.L262
	mov.d	$f0,$f12

	movn.d	$f0,$f12,$5
.L260:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L262:
	c.lt.d	$fcc2,$f12,$f13
	daddiu	$sp,$sp,16
	jr	$31
	movf.d	$f0,$f13,$fcc2

	.align	3
.L264:
	b	.L260
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
	bc1t	$fcc0,.L267
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L271
	lw	$3,0($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	lw	$2,4($sp)
	and	$6,$3,$4
	and	$7,$2,$4
	beq	$6,$7,.L269
	move	$8,$6

	movn.s	$f0,$f12,$8
.L267:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L269:
	mov.s	$f0,$f12
	c.lt.s	$fcc2,$f12,$f13
	daddiu	$sp,$sp,16
	jr	$31
	movf.s	$f0,$f13,$fcc2

	.align	3
.L271:
	b	.L267
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
	sd	$22,72($sp)
	dmfc1	$22,$f12
	sd	$fp,96($sp)
	dmfc1	$fp,$f14
	sd	$23,80($sp)
	dmfc1	$23,$f15
	dmtc1	$22,$f14
	sd	$20,64($sp)
	dmfc1	$20,$f13
	dmtc1	$22,$f12
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	daddu	$28,$28,$25
	sd	$31,104($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	sd	$19,56($sp)
	dmtc1	$20,$f15
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$20,$f13
	sd	$18,48($sp)
	sd	$17,40($sp)
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	sd	$16,32($sp)

	bne	$2,$0,.L280
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$fp,$f14
	dmtc1	$fp,$f12
	dmtc1	$23,$f15
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$23,$f13

	bne	$2,$0,.L274
	dsrl	$2,$20,63

	dsrl	$4,$23,63
	beql	$2,$4,.L276
	sd	$fp,0($sp)

	beq	$2,$0,.L286
	ld	$31,104($sp)

.L274:
	ld	$31,104($sp)
.L287:
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
.L276:
	sd	$22,16($sp)
	ldc1	$f14,0($sp)
	ldc1	$f12,16($sp)
	sd	$23,8($sp)
	sd	$20,24($sp)
	ldc1	$f15,8($sp)
	ld	$25,%call16(__lttf2)($28)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f13,24($sp)

	bltz	$2,.L287
	ld	$31,104($sp)

.L280:
	ld	$31,104($sp)
.L286:
	move	$22,$fp
	move	$20,$23
	dmtc1	$22,$f0
	ld	$fp,96($sp)
	dmtc1	$20,$f2
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
	beq	$4,$0,.L291
	daddiu	$7,$7,%lo(%neg(%gp_rel(l64a)))

	ld	$8,%got_page(s.0)($7)
	move	$3,$4
	ld	$6,%got_page(digits)($7)
	daddiu	$2,$8,%got_ofst(s.0)
	daddiu	$9,$6,%got_ofst(digits)
	move	$5,$2
	.align	3
.L290:
	andi	$10,$3,0x3f
	daddiu	$5,$5,1
	daddu	$11,$9,$10
	lbu	$12,0($11)
	srl	$3,$3,6
	bne	$3,$0,.L290
	sb	$12,-1($5)

	jr	$31
	sb	$0,0($5)

	.align	3
.L291:
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
	addiu	$4,$4,-1
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(srand)))
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
	lui	$5,%hi(%neg(%gp_rel(rand)))
	li	$3,1481703424			# 0x58510000
	daddu	$5,$5,$25
	ori	$2,$3,0xf42d
	daddiu	$5,$5,%lo(%neg(%gp_rel(rand)))
	ld	$4,%got_page(seed)($5)
	dsll	$6,$2,16
	daddiu	$8,$6,19605
	ld	$7,%got_ofst(seed)($4)
	dsll	$9,$8,16
	daddiu	$10,$9,32557
	gsdmultu	$11,$7,$10
	daddiu	$12,$11,1
	dsrl	$2,$12,33
	jr	$31
	sd	$12,%got_ofst(seed)($4)

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
	beql	$5,$0,.L305
	sd	$0,8($4)

	ld	$2,0($5)
	sd	$5,8($4)
	sd	$2,0($4)
	sd	$4,0($5)
	ld	$5,0($4)
	bnel	$5,$0,.L307
	sd	$4,8($5)

.L307:
	jr	$31
	nop

	.align	3
.L305:
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
	beql	$2,$0,.L319
	ld	$4,8($4)

	ld	$3,8($4)
	sd	$3,8($2)
	ld	$4,8($4)
.L319:
	bnel	$4,$0,.L318
	sd	$2,0($4)

.L318:
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
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	sd	$19,32($sp)
	daddu	$28,$28,$25
	ld	$19,0($6)
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	sd	$fp,80($sp)
	move	$fp,$5
	sd	$23,64($sp)
	move	$23,$6
	sd	$20,40($sp)
	move	$20,$4
	sd	$18,24($sp)
	move	$18,$7
	sd	$31,88($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$17,16($sp)
	beq	$19,$0,.L321
	sd	$16,8($sp)

	move	$21,$8
	move	$17,$0
	b	.L323
	move	$16,$5

	.align	3
.L336:
	beq	$19,$17,.L337
	daddiu	$2,$19,1

.L323:
	move	$5,$16
	daddiu	$17,$17,1
	move	$25,$21
	jalr	$25
	move	$4,$20

	move	$22,$16
	bne	$2,$0,.L336
	daddu	$16,$16,$18

.L320:
	ld	$31,88($sp)
	move	$2,$22
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.align	3
.L321:
	daddiu	$2,$19,1
	.align	3
.L337:
	gsdmultu	$3,$18,$19
	daddu	$22,$fp,$3
	beq	$18,$0,.L320
	sd	$2,0($23)

	ld	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$22

	ld	$31,88($sp)
	move	$2,$22
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
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
	sd	$21,48($sp)
	ld	$21,0($6)
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	beq	$21,$0,.L339
	sd	$16,8($sp)

	move	$18,$4
	move	$17,$0
	move	$19,$7
	move	$20,$8
	b	.L341
	move	$16,$5

	.align	3
.L350:
	beq	$21,$17,.L351
	ld	$31,72($sp)

.L341:
	move	$5,$16
	daddiu	$17,$17,1
	move	$25,$20
	jalr	$25
	move	$4,$18

	move	$22,$16
	bne	$2,$0,.L350
	daddu	$16,$16,$19

	ld	$31,72($sp)
	move	$2,$22
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L339:
	ld	$31,72($sp)
	.align	3
.L351:
	move	$22,$0
	ld	$21,48($sp)
	move	$2,$22
	ld	$22,56($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
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
	beq	$5,$3,.L358
	addiu	$2,$5,-9

	sltu	$6,$2,5
	bnel	$6,$0,.L364
	daddiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,.L359
	li	$8,45			# 0x2d

	bne	$5,$8,.L377
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
	move	$7,$14
	addu	$3,$25,$2
	sll	$10,$3,1
	subu	$2,$10,$14
	addiu	$14,$5,-48
	sltu	$6,$14,10
	bne	$6,$0,.L366
	daddiu	$4,$4,1

	bne	$24,$0,.L378
	nop

	jr	$31
	subu	$2,$7,$10

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
	lb	$10,1($4)
	move	$24,$0
	addiu	$14,$10,-48
	sltu	$11,$14,10
	bne	$11,$0,.L362
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
	beq	$5,$3,.L380
	addiu	$2,$5,-9

	sltu	$6,$2,5
	bnel	$6,$0,.L386
	daddiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,.L381
	li	$8,45			# 0x2d

	bne	$5,$8,.L399
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
	move	$5,$14
	daddiu	$4,$4,1
	daddu	$2,$3,$2
	addiu	$14,$25,-48
	dsll	$6,$2,1
	sltu	$7,$14,10
	bne	$7,$0,.L388
	dsubu	$2,$6,$5

	bne	$24,$0,.L400
	nop

	jr	$31
	dsubu	$2,$5,$6

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
	lb	$10,1($4)
	move	$24,$0
	addiu	$14,$10,-48
	sltu	$11,$14,10
	bne	$11,$0,.L384
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
	beq	$5,$3,.L402
	addiu	$2,$5,-9

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
	move	$24,$6
	daddiu	$4,$4,1
	daddu	$25,$15,$2
	addiu	$6,$14,-48
	dsll	$3,$25,1
	sltu	$7,$6,10
	bne	$7,$0,.L410
	dsubu	$2,$3,$24

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
	dsubu	$2,$24,$3

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
	beq	$2,$0,.L438
	ld	$31,72($sp)

	beq	$16,$0,.L424
	daddu	$18,$17,$19

.L427:
	dsrl	$22,$16,1
.L439:
	move	$4,$20
	daddiu	$16,$16,-1
	gsdmultu	$17,$22,$19
	daddu	$17,$18,$17
	move	$25,$21
	dsubu	$16,$16,$22
	jalr	$25
	move	$5,$17

	bgez	$2,.L437
	nop

	move	$16,$22
	bne	$16,$0,.L439
	dsrl	$22,$16,1

.L424:
	move	$17,$0
	ld	$31,72($sp)
.L438:
	move	$2,$17
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
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
	move	$22,$9
	sd	$21,48($sp)
	move	$21,$8
	sd	$20,40($sp)
	move	$20,$4
	sd	$18,24($sp)
	move	$18,$7
	sd	$17,16($sp)
	move	$17,$5
	sd	$16,8($sp)
	move	$16,$6
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$23,64($sp)
	beq	$6,$0,.L445
	sd	$19,32($sp)

	.align	3
.L453:
	dsra	$fp,$16,1
	.align	3
.L457:
	move	$6,$22
	gsdmultu	$23,$fp,$18
	daddu	$23,$17,$23
	move	$4,$20
	move	$5,$23
	sra	$19,$16,1
	addiu	$16,$16,-1
	move	$25,$21
	jalr	$25
	sra	$16,$16,1

	beq	$2,$0,.L456
	ld	$31,88($sp)

	blez	$2,.L443
	nop

	bne	$16,$0,.L453
	daddu	$17,$23,$18

.L445:
	move	$23,$0
	ld	$31,88($sp)
.L456:
	move	$2,$23
	ld	$fp,80($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.align	3
.L443:
	beq	$fp,$0,.L445
	move	$16,$19

	b	.L457
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
	mflo	$3
	mfhi	$4
	mtc1	$3,$f0
	mtc1	$4,$f1
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
	bltz	$4,.L463
	move	$2,$4

	jr	$31
	nop

	.align	3
.L463:
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
	mflo	$2
	mfhi	$3
	jr	$31
	daddiu	$sp,$sp,16

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
	bltz	$4,.L471
	move	$2,$4

	jr	$31
	nop

	.align	3
.L471:
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
	mflo	$2
	mfhi	$3
	jr	$31
	daddiu	$sp,$sp,16

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
	bltz	$4,.L479
	move	$2,$4

	jr	$31
	nop

	.align	3
.L479:
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
	mflo	$2
	mfhi	$3
	jr	$31
	daddiu	$sp,$sp,16

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
	bne	$2,$0,.L485
	nop

	jr	$31
	nop

	.align	3
.L487:
	beq	$2,$0,.L488
	daddiu	$4,$4,4

.L485:
	bnel	$5,$2,.L487
	lw	$2,4($4)

	jr	$31
	move	$2,$4

	.align	3
.L488:
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
	beql	$2,$3,.L503
	daddiu	$4,$4,4

	b	.L502
	slt	$4,$2,$3

	.align	3
.L496:
	lw	$2,0($4)
	lw	$3,0($5)
	bne	$2,$3,.L495
	daddiu	$4,$4,4

.L503:
	bne	$2,$0,.L496
	daddiu	$5,$5,4

.L495:
	slt	$4,$2,$3
.L502:
	bne	$4,$0,.L498
	nop

	jr	$31
	slt	$2,$3,$2

	.align	3
.L498:
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
.L505:
	lw	$6,0($5)
	daddiu	$3,$3,4
	daddiu	$5,$5,4
	bne	$6,$0,.L505
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
	beq	$2,$0,.L511
	move	$6,$4

	.align	3
.L510:
	lw	$3,4($6)
	bne	$3,$0,.L510
	daddiu	$6,$6,4

	dsubu	$4,$6,$4
	jr	$31
	dsra	$2,$4,2

	.align	3
.L511:
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
	bnel	$6,$0,.L529
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L526:
	beql	$2,$0,.L530
	lw	$6,0($4)

	daddiu	$4,$4,4
	beq	$6,$0,.L520
	daddiu	$5,$5,4

	lw	$2,0($4)
.L529:
	lw	$3,0($5)
	beq	$3,$2,.L526
	daddiu	$6,$6,-1

	lw	$6,0($4)
.L530:
	lw	$5,0($5)
	slt	$4,$6,$5
	bne	$4,$0,.L527
	nop

	jr	$31
	slt	$2,$5,$6

	.align	3
.L527:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L520:
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
	bnel	$6,$0,.L541
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L534:
	beq	$6,$0,.L535
	daddiu	$4,$4,4

	lw	$2,0($4)
.L541:
	bne	$2,$5,.L534
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L535:
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
	bnel	$6,$0,.L558
	lw	$3,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L545:
	daddiu	$4,$4,4
	beq	$6,$0,.L548
	daddiu	$5,$5,4

	lw	$3,0($4)
.L558:
	lw	$2,0($5)
	beq	$3,$2,.L545
	daddiu	$6,$6,-1

	lw	$6,0($4)
	lw	$5,0($5)
	slt	$4,$6,$5
	bnel	$4,$0,.L557
	li	$2,-1			# 0xffffffffffffffff

	jr	$31
	slt	$2,$5,$6

	.align	3
.L548:
	jr	$31
	move	$2,$0

.L557:
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
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(wmemcpy)))
	beq	$6,$0,.L560
	sd	$31,24($sp)

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L560:
	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
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
	beq	$4,$5,.L599
	move	$2,$4

	dsubu	$8,$4,$5
	move	$7,$5
	dsll	$3,$6,2
	sltu	$10,$8,$3
	bne	$10,$0,.L567
	daddiu	$14,$6,-1

	beq	$6,$0,.L599
	sltu	$11,$14,9

	bne	$11,$0,.L577
	or	$12,$5,$4

	andi	$13,$12,0x7
	bne	$13,$0,.L597
	daddiu	$13,$5,4

	beq	$4,$13,.L578
	move	$15,$0

	dsrl	$14,$6,1
	.align	3
.L572:
	ldc1	$f0,0($7)
	daddiu	$15,$15,1
	daddiu	$7,$7,8
	daddiu	$4,$4,8
	bne	$14,$15,.L572
	sdc1	$f0,-8($4)

	andi	$24,$6,0x1
	beq	$24,$0,.L599
	li	$25,-2			# 0xfffffffffffffffe

	and	$6,$6,$25
	dsll	$8,$6,2
	lwx	$5,$8($5)
	daddu	$3,$2,$8
	jr	$31
	sw	$5,0($3)

	.align	3
.L577:
	move	$12,$4
	daddiu	$13,$5,4
.L571:
	li	$10,-1			# 0xffffffffffffffff
	.align	3
.L575:
	lw	$11,-4($13)
	daddiu	$14,$14,-1
	daddiu	$12,$12,4
	daddiu	$13,$13,4
	bne	$14,$10,.L575
	sw	$11,-4($12)

.L599:
	jr	$31
	nop

	.align	3
.L567:
	beq	$6,$0,.L599
	dsll	$24,$14,2

	li	$15,-4			# 0xfffffffffffffffc
	.align	3
.L570:
	lwx	$7,$24($5)
	daddu	$4,$2,$24
	daddiu	$24,$24,-4
	bne	$24,$15,.L570
	sw	$7,0($4)

	jr	$31
	nop

.L597:
.L578:
	b	.L571
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
	beq	$6,$0,.L619
	move	$2,$4

	daddiu	$4,$6,-1
	dsrl	$3,$2,2
	sltu	$7,$4,6
	bne	$7,$0,.L606
	andi	$8,$3,0x1

	beq	$8,$0,.L603
	move	$10,$2

	daddiu	$10,$2,4
	daddiu	$4,$6,-2
	sw	$5,0($2)
.L603:
	dmtc1	$5,$f0
	dsubu	$6,$6,$8
	dsll	$12,$8,2
	move	$15,$0
	dsrl	$14,$6,1
	daddu	$24,$2,$12
	punpcklwd	$f1,$f0,$f0
	dmfc1	$13,$f1
	.align	3
.L604:
	daddiu	$15,$15,1
	sd	$13,0($24)
	bne	$15,$14,.L604
	daddiu	$24,$24,8

	andi	$25,$6,0x1
	beq	$25,$0,.L619
	li	$3,-2			# 0xfffffffffffffffe

	and	$7,$6,$3
	dsll	$8,$7,2
	dsubu	$4,$4,$7
	daddu	$9,$10,$8
.L602:
	beq	$4,$0,.L619
	sw	$5,0($9)

	li	$10,1			# 0x1
	beq	$4,$10,.L619
	sw	$5,4($9)

	li	$6,2			# 0x2
	beq	$4,$6,.L619
	sw	$5,8($9)

	li	$12,3			# 0x3
	beq	$4,$12,.L619
	sw	$5,12($9)

	li	$13,4			# 0x4
	beq	$4,$13,.L619
	sw	$5,16($9)

	sw	$5,20($9)
.L619:
	jr	$31
	nop

.L606:
	b	.L602
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
	beq	$2,$0,.L621
	daddu	$7,$4,$6

	beq	$6,$0,.L654
	daddu	$5,$5,$6

	.align	3
.L623:
	lb	$3,-1($7)
	daddiu	$7,$7,-1
	daddiu	$5,$5,-1
	bne	$4,$7,.L623
	sb	$3,0($5)

.L654:
	jr	$31
	nop

	.align	3
.L621:
	bne	$4,$5,.L650
	nop

	jr	$31
	nop

	.align	3
.L650:
	beq	$6,$0,.L654
	daddiu	$3,$6,-1

	sltu	$7,$3,8
	bne	$7,$0,.L648
	or	$9,$5,$4

	andi	$10,$9,0x7
	bne	$10,$0,.L652
	daddiu	$2,$4,1

	dsubu	$11,$5,$2
	sltu	$12,$11,7
	bne	$12,$0,.L624
	dsrl	$13,$6,3

	move	$24,$5
	dsll	$14,$13,3
	daddu	$15,$4,$14
	.align	3
.L625:
	ldc1	$f0,0($4)
	daddiu	$4,$4,8
	daddiu	$24,$24,8
	bne	$15,$4,.L625
	sdc1	$f0,-8($24)

	daddu	$5,$5,$14
	beq	$6,$14,.L654
	dsubu	$25,$6,$14

	lb	$6,0($15)
	li	$4,1			# 0x1
	beq	$25,$4,.L654
	sb	$6,0($5)

	lb	$2,1($15)
	li	$3,2			# 0x2
	beq	$25,$3,.L654
	sb	$2,1($5)

	lb	$7,2($15)
	li	$9,3			# 0x3
	beq	$25,$9,.L654
	sb	$7,2($5)

	lb	$10,3($15)
	li	$11,4			# 0x4
	beq	$25,$11,.L654
	sb	$10,3($5)

	lb	$12,4($15)
	li	$13,5			# 0x5
	beq	$25,$13,.L654
	sb	$12,4($5)

	lb	$14,5($15)
	li	$24,6			# 0x6
	beq	$25,$24,.L654
	sb	$14,5($5)

	lb	$15,6($15)
	jr	$31
	sb	$15,6($5)

	.align	3
.L648:
	daddiu	$2,$4,1
.L624:
	.align	3
.L652:
	b	.L628
	daddu	$25,$4,$6

	.align	3
.L651:
	daddiu	$2,$2,1
.L628:
	lb	$6,-1($2)
	daddiu	$5,$5,1
	bne	$2,$25,.L651
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
	andi	$7,$2,0xf
	sll	$6,$4,$5
	srl	$4,$4,$7
	or	$8,$6,$4
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
	andi	$7,$2,0xf
	srl	$6,$4,$5
	sll	$4,$4,$7
	or	$8,$6,$4
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
	andi	$7,$2,0x7
	sll	$6,$4,$5
	srl	$4,$4,$7
	or	$8,$6,$4
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
	andi	$7,$2,0x7
	srl	$6,$4,$5
	sll	$4,$4,$7
	or	$8,$6,$4
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
	li	$6,16711680			# 0xff0000
	sll	$3,$4,8
	and	$2,$4,$6
	sll	$7,$4,24
	srl	$5,$4,24
	and	$4,$3,$6
	or	$10,$4,$7
	srl	$9,$2,8
	or	$11,$5,$10
	jr	$31
	or	$2,$9,$11

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
	li	$3,255			# 0xff
	dsrl	$11,$4,56
	li	$7,16711680			# 0xff0000
	dsrl	$5,$4,40
	or	$13,$2,$11
	dsrl	$8,$4,24
	andi	$14,$5,0xff00
	and	$15,$8,$7
	or	$25,$13,$14
	dsll	$6,$3,24
	or	$2,$25,$15
	dsrl	$24,$4,8
	and	$7,$24,$6
	dsll	$10,$3,32
	or	$5,$2,$7
	dsll	$6,$4,8
	dsll	$11,$4,24
	and	$10,$6,$10
	dsll	$9,$3,40
	or	$8,$5,$10
	and	$9,$11,$9
	dsll	$4,$4,40
	or	$14,$8,$9
	dsll	$3,$3,48
	and	$13,$4,$3
	jr	$31
	or	$2,$14,$13

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
	b	.L684
	li	$6,32			# 0x20

	.align	3
.L688:
	beq	$6,$2,.L687
	nop

.L684:
	srl	$5,$4,$3
	addiu	$2,$3,1
	andi	$8,$5,0x1
	beq	$8,$0,.L688
	move	$3,$2

	jr	$31
	nop

	.align	3
.L687:
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
	beq	$4,$0,.L697
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,.L696
	nop

	li	$2,1			# 0x1
	.align	3
.L691:
	dsra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,.L691
	addiu	$2,$2,1

.L697:
	jr	$31
	nop

.L696:
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
	bc1t	$fcc0,.L701
	ld	$3,%got_page(.LC1)($4)

	lwc1	$f1,%got_ofst(.LC1)($3)
	c.lt.s	$fcc1,$f1,$f12
	bc1f	$fcc1,.L703
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L701:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L703:
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
	bc1t	$fcc0,.L707
	ld	$3,%got_page(.LC3)($4)

	ldc1	$f1,%got_ofst(.LC3)($3)
	c.lt.d	$fcc1,$f1,$f12
	bc1f	$fcc1,.L709
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L707:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L709:
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
	sd	$17,8($sp)
	dmfc1	$17,$f12
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	sd	$16,0($sp)
	dmfc1	$16,$f13
	ld	$2,%got_page(.LC4)($28)
	ld	$25,%call16(__lttf2)($28)
	ldc1	$f14,%got_ofst(.LC4)($2)
	sd	$31,40($sp)
	sd	$19,24($sp)
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	sd	$18,16($sp)

	bltz	$2,.L713
	ld	$31,40($sp)

	ld	$3,%got_page(.LC5)($28)
	dmtc1	$17,$f12
	ld	$25,%call16(__gttf2)($28)
	ldc1	$f14,%got_ofst(.LC5)($3)
	dmtc1	$16,$f13
	.reloc	1f,R_MIPS_JALR,__gttf2
1:	jalr	$25
	ldc1	$f15,%got_ofst(.LC5+8)($3)

	ld	$31,40($sp)
	ld	$28,32($sp)
	slt	$2,$0,$2
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L713:
	li	$2,1			# 0x1
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
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
	dmtc1	$5,$f0
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_Qp_itoq)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_Qp_itoq)))
	sd	$31,40($sp)
	ld	$25,%call16(__extenddftf2)($28)
	cvt.d.w	$f12,$f0
	sd	$19,24($sp)
	.reloc	1f,R_MIPS_JALR,__extenddftf2
1:	jalr	$25
	sd	$18,16($sp)

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
	lui	$4,%hi(%neg(%gp_rel(ldexpf)))
	c.un.s	$fcc0,$f12,$f12
	mov.s	$f0,$f12
	daddu	$4,$4,$25
	bc1t	$fcc0,.L735
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexpf)))

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f1,$f12
	bc1t	$fcc1,.L735
	nop

	bltz	$5,.L731
	ld	$2,%got_page(.LC6)($4)

	lwc1	$f2,%got_ofst(.LC6)($2)
.L719:
	andi	$6,$5,0x1
	beq	$6,$0,.L734
	srl	$7,$5,31

	.align	3
.L721:
	mul.s	$f0,$f0,$f2
	srl	$7,$5,31
.L734:
	addu	$5,$7,$5
	sra	$5,$5,1
	beq	$5,$0,.L735
	srl	$8,$5,31

	andi	$9,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$9,$0,.L721
	addu	$10,$8,$5

	sra	$5,$10,1
.L733:
	mul.s	$f2,$f2,$f2
	srl	$8,$5,31
	andi	$9,$5,0x1
	bne	$9,$0,.L721
	addu	$10,$8,$5

	b	.L733
	sra	$5,$10,1

.L735:
	jr	$31
	nop

	.align	3
.L731:
	ld	$3,%got_page(.LC7)($4)
	b	.L719
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
	lui	$4,%hi(%neg(%gp_rel(ldexp)))
	c.un.d	$fcc0,$f12,$f12
	mov.d	$f0,$f12
	daddu	$4,$4,$25
	bc1t	$fcc0,.L754
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexp)))

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f1,$f12
	bc1t	$fcc1,.L754
	nop

	bltz	$5,.L750
	ld	$2,%got_page(.LC8)($4)

	ldc1	$f2,%got_ofst(.LC8)($2)
.L738:
	andi	$6,$5,0x1
	beq	$6,$0,.L753
	srl	$7,$5,31

	.align	3
.L740:
	mul.d	$f0,$f0,$f2
	srl	$7,$5,31
.L753:
	addu	$5,$7,$5
	sra	$5,$5,1
	beq	$5,$0,.L754
	srl	$8,$5,31

	andi	$9,$5,0x1
	mul.d	$f2,$f2,$f2
	bne	$9,$0,.L740
	addu	$10,$8,$5

	sra	$5,$10,1
.L752:
	mul.d	$f2,$f2,$f2
	srl	$8,$5,31
	andi	$9,$5,0x1
	bne	$9,$0,.L740
	addu	$10,$8,$5

	b	.L752
	sra	$5,$10,1

.L754:
	jr	$31
	nop

	.align	3
.L750:
	ld	$3,%got_page(.LC9)($4)
	b	.L738
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
	dmfc1	$4,$f12
	daddiu	$sp,$sp,-144
	dmfc1	$5,$f13
	sd	$28,120($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	dmtc1	$4,$f14
	daddu	$28,$28,$25
	sd	$fp,128($sp)
	move	$fp,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	sd	$23,112($sp)
	move	$23,$5
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$5,$f15
	sd	$22,104($sp)
	move	$22,$4
	sd	$31,136($sp)
	sd	$21,96($sp)
	sd	$20,88($sp)
	sd	$19,80($sp)
	sd	$18,72($sp)
	sd	$17,64($sp)
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	sd	$16,56($sp)

	bne	$2,$0,.L756
	ld	$25,%call16(__addtf3)($28)

	sd	$22,0($sp)
	dmtc1	$22,$f14
	ldc1	$f12,0($sp)
	sd	$23,8($sp)
	dmtc1	$23,$f15
	.reloc	1f,R_MIPS_JALR,__addtf3
1:	jalr	$25
	ldc1	$f13,8($sp)

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

	beq	$2,$0,.L772
	ld	$31,136($sp)

	bltz	$fp,.L771
	ld	$6,%got_page(.LC10)($28)

	ld	$20,%got_ofst(.LC10)($6)
	ld	$21,%got_ofst(.LC10+8)($6)
.L758:
	andi	$8,$fp,0x1
	beq	$8,$0,.L773
	srl	$9,$fp,31

	.align	3
.L760:
	dmtc1	$22,$f12
	ld	$25,%call16(__multf3)($28)
	dmtc1	$20,$f14
	dmtc1	$23,$f13
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$21,$f15

	dmfc1	$22,$f0
	dmfc1	$23,$f2
	srl	$9,$fp,31
.L773:
	addu	$10,$9,$fp
	sra	$fp,$10,1
	beq	$fp,$0,.L772
	ld	$31,136($sp)

.L761:
	dmtc1	$20,$f14
	ld	$25,%call16(__multf3)($28)
	dmtc1	$20,$f12
	dmtc1	$21,$f15
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$21,$f13

	andi	$12,$fp,0x1
	dmfc1	$18,$f0
	srl	$11,$fp,31
	dmfc1	$19,$f2
	addu	$13,$11,$fp
	move	$20,$18
	bne	$12,$0,.L760
	move	$21,$19

	b	.L761
	sra	$fp,$13,1

	.align	3
.L756:
	ld	$31,136($sp)
	.align	3
.L772:
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
.L771:
	ld	$7,%got_page(.LC11)($28)
	ld	$20,%got_ofst(.LC11)($7)
	b	.L758
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
	beq	$6,$0,.L787
	move	$2,$4

	daddiu	$3,$6,-1
	sltu	$4,$3,7
	bne	$4,$0,.L776
	or	$7,$2,$5

	andi	$8,$7,0x7
	bne	$8,$0,.L776
	dsrl	$9,$6,3

	move	$15,$2
	dsll	$11,$9,3
	daddu	$12,$5,$11
	.align	3
.L777:
	ld	$13,0($15)
	daddiu	$5,$5,8
	daddiu	$15,$15,8
	ld	$14,-8($5)
	dmtc1	$13,$f0
	dmtc1	$14,$f1
	xor	$f2,$f0,$f1
	bne	$12,$5,.L777
	sdc1	$f2,-8($15)

	daddu	$25,$2,$11
	beq	$6,$11,.L787
	dsubu	$5,$6,$11

	lbu	$3,0($25)
	li	$6,1			# 0x1
	lbu	$4,0($12)
	xor	$7,$3,$4
	beq	$5,$6,.L787
	sb	$7,0($25)

	lbu	$8,1($25)
	li	$11,2			# 0x2
	lbu	$9,1($12)
	xor	$13,$9,$8
	beq	$5,$11,.L787
	sb	$13,1($25)

	lbu	$14,2($25)
	li	$24,3			# 0x3
	lbu	$15,2($12)
	xor	$3,$15,$14
	beq	$5,$24,.L787
	sb	$3,2($25)

	lbu	$7,3($25)
	li	$6,4			# 0x4
	lbu	$4,3($12)
	xor	$8,$4,$7
	beq	$5,$6,.L787
	sb	$8,3($25)

	lbu	$9,4($25)
	li	$13,5			# 0x5
	lbu	$11,4($12)
	xor	$14,$11,$9
	beq	$5,$13,.L787
	sb	$14,4($25)

	lbu	$15,5($25)
	li	$3,6			# 0x6
	lbu	$24,5($12)
	xor	$7,$24,$15
	beq	$5,$3,.L787
	sb	$7,5($25)

	lbu	$5,6($25)
	lbu	$12,6($12)
	xor	$4,$12,$5
	jr	$31
	sb	$4,6($25)

	.align	3
.L776:
	daddu	$25,$5,$6
	move	$9,$2
	.align	3
.L779:
	lbu	$6,0($9)
	daddiu	$5,$5,1
	daddiu	$9,$9,1
	lbu	$8,-1($5)
	xor	$11,$8,$6
	bne	$25,$5,.L779
	sb	$11,-1($9)

.L787:
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
	beq	$3,$0,.L795
	move	$2,$4

	move	$9,$4
	.align	3
.L790:
	lb	$7,1($9)
	bne	$7,$0,.L790
	daddiu	$9,$9,1

	beq	$6,$0,.L792
	nop

	lb	$4,0($5)
	.align	3
.L806:
	daddiu	$9,$9,1
	daddiu	$6,$6,-1
	daddiu	$5,$5,1
	beq	$4,$0,.L807
	sb	$4,-1($9)

.L793:
	bnel	$6,$0,.L806
	lb	$4,0($5)

.L792:
	jr	$31
	sb	$0,0($9)

.L807:
	jr	$31
	nop

	.align	3
.L795:
	b	.L793
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
	daddiu	$6,$6,1
	b	.L882
	move	$12,$13

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
	nop

.L879:
	lbu	$15,0($25)
	daddiu	$5,$5,1
	lbu	$24,-1($5)
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
	move	$17,$4
	sd	$16,0($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	move	$16,$6
	beq	$6,$0,.L895
	sd	$31,24($sp)

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
	daddu	$6,$6,$25
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L923
	daddiu	$6,$6,%lo(%neg(%gp_rel(frexp)))

	ld	$2,%got_page(.LC14)($6)
	ldc1	$f1,%got_ofst(.LC14)($2)
	c.le.d	$fcc3,$f1,$f12
	bc1f	$fcc3,.L924
	move	$3,$0

.L903:
	ld	$10,%got_page(.LC9)($6)
	move	$9,$0
	ldc1	$f7,%got_ofst(.LC14)($2)
	ldc1	$f8,%got_ofst(.LC9)($10)
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
	li	$14,1			# 0x1

	b	.L936
	li	$2,32			# 0x20

	.align	3
.L940:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L938
	sll	$14,$14,1

	beq	$2,$0,.L939
	nop

.L936:
	bgez	$5,.L940
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L942:
	sltu	$8,$4,$5
	move	$13,$14
	subu	$10,$4,$5
	sltu	$12,$8,1
	srl	$9,$14,1
	movz	$13,$0,$12
	move	$14,$9
	srl	$5,$5,1
	or	$2,$13,$2
	bne	$14,$0,.L942
	movn	$4,$10,$12

.L939:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L938:
	bne	$14,$0,.L942
	move	$2,$0

	b	.L939
	nop

	.align	3
.L956:
	sltu	$3,$4,$5
	subu	$5,$4,$5
	sltu	$2,$3,1
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
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$2,$4,7
	dsll	$3,$2,56
	dsra	$5,$3,56
	beq	$4,$5,.L959
	xor	$6,$4,$5

	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbqi2)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbqi2)))
	sll	$4,$6,8
	ld	$25,%call16(__clzdi2)($28)
	dsll	$7,$4,32
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	dsrl	$4,$7,32

	ld	$31,8($sp)
	ld	$28,0($sp)
	addiu	$2,$2,-33
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	dsra	$3,$4,63
	beq	$2,$3,.L966
	xor	$4,$4,$3

	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbdi2)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbdi2)))
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	ld	$31,8($sp)
	ld	$28,0($sp)
	addiu	$2,$2,-1
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L966:
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
	beq	$4,$0,.L978
	move	$2,$0

	.align	3
.L973:
	andi	$3,$4,0x1
	subu	$7,$0,$3
	and	$8,$7,$5
	srl	$4,$4,1
	addu	$2,$8,$2
	bne	$4,$0,.L973
	sll	$5,$5,1

.L978:
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
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$3,$4,$5
	srl	$7,$6,3
	bne	$3,$0,.L983
	and	$10,$6,$2

	dsll	$8,$6,32
	dsrl	$9,$8,32
	daddu	$12,$5,$9
	sltu	$13,$12,$4
	beq	$13,$0,.L1015
	nop

.L983:
	beq	$7,$0,.L1016
	dsll	$8,$7,3

	move	$13,$5
	move	$3,$4
	daddu	$9,$8,$5
	.align	3
.L986:
	ld	$12,0($13)
	daddiu	$13,$13,8
	daddiu	$3,$3,8
	bne	$13,$9,.L986
	sd	$12,-8($3)

	sltu	$14,$10,$6
	beq	$14,$0,.L1019
	subu	$15,$6,$10

	addiu	$24,$15,-1
	dsll	$25,$10,32
	sltu	$2,$24,8
	bne	$2,$0,.L988
	dsrl	$7,$25,32

	daddiu	$8,$7,1
	daddu	$3,$4,$7
	daddu	$9,$5,$8
	dsubu	$12,$3,$9
	sltu	$13,$12,7
	bne	$13,$0,.L988
	daddu	$2,$5,$7

	or	$14,$2,$3
	andi	$24,$14,0x7
	bne	$24,$0,.L988
	srl	$25,$15,3

	dsll	$7,$25,32
	dsrl	$8,$7,32
	dsll	$9,$8,3
	daddu	$12,$2,$9
	.align	3
.L989:
	ldc1	$f0,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$12,.L989
	sdc1	$f0,-8($3)

	li	$13,-8			# 0xfffffffffffffff8
	andi	$14,$15,0x7
	and	$15,$15,$13
	beq	$14,$0,.L1019
	addu	$10,$15,$10

	dsll	$24,$10,32
	addiu	$12,$10,1
	dsrl	$25,$24,32
	sltu	$8,$12,$6
	daddu	$9,$5,$25
	daddu	$7,$4,$25
	lb	$2,0($9)
	beq	$8,$0,.L1019
	sb	$2,0($7)

	dsll	$3,$12,32
	addiu	$14,$10,2
	dsrl	$13,$3,32
	sltu	$25,$14,$6
	daddu	$15,$5,$13
	daddu	$24,$4,$13
	lb	$12,0($15)
	beq	$25,$0,.L1019
	sb	$12,0($24)

	dsll	$9,$14,32
	addiu	$2,$10,3
	dsrl	$7,$9,32
	sltu	$8,$2,$6
	daddu	$3,$5,$7
	daddu	$13,$4,$7
	lb	$14,0($3)
	beq	$8,$0,.L1019
	sb	$14,0($13)

	dsll	$15,$2,32
	addiu	$25,$10,4
	dsrl	$24,$15,32
	sltu	$2,$25,$6
	daddu	$12,$5,$24
	daddu	$7,$4,$24
	lb	$9,0($12)
	beq	$2,$0,.L1019
	sb	$9,0($7)

	dsll	$3,$25,32
	addiu	$14,$10,5
	dsrl	$13,$3,32
	sltu	$8,$14,$6
	daddu	$15,$5,$13
	daddu	$24,$4,$13
	lb	$25,0($15)
	beq	$8,$0,.L1019
	sb	$25,0($24)

	dsll	$12,$14,32
	addiu	$10,$10,6
	dsrl	$9,$12,32
	sltu	$6,$10,$6
	daddu	$7,$5,$9
	daddu	$2,$4,$9
	lb	$3,0($7)
	beq	$6,$0,.L1019
	sb	$3,0($2)

	dsll	$13,$10,32
	dsrl	$14,$13,32
	daddu	$5,$5,$14
	daddu	$4,$4,$14
	lb	$15,0($5)
	jr	$31
	sb	$15,0($4)

	.align	3
.L1015:
	beq	$6,$0,.L1019
	addiu	$14,$6,-1

	dsll	$6,$14,32
	dsrl	$15,$6,32
	daddu	$2,$5,$15
	daddu	$4,$4,$15
	.align	3
.L993:
	lb	$24,0($2)
	move	$25,$2
	daddiu	$4,$4,-1
	daddiu	$2,$2,-1
	bne	$5,$25,.L993
	sb	$24,1($4)

.L1019:
	jr	$31
	nop

	.align	3
.L1016:
	beq	$6,$0,.L1019
	dsll	$7,$10,32

	dsrl	$7,$7,32
.L988:
	move	$12,$7
	.align	3
.L991:
	daddu	$24,$5,$12
	daddu	$25,$4,$12
	daddiu	$12,$12,1
	lb	$8,0($24)
	sll	$9,$12,0
	sltu	$10,$9,$6
	bne	$10,$0,.L991
	sb	$8,0($25)

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
	bne	$2,$0,.L1024
	srl	$8,$6,1

	dsll	$3,$6,32
	dsrl	$7,$3,32
	daddu	$9,$5,$7
	sltu	$10,$9,$4
	beq	$10,$0,.L1047
	nop

.L1024:
	beq	$8,$0,.L1023
	addiu	$25,$8,-1

	sltu	$2,$25,7
	bne	$2,$0,.L1027
	or	$3,$5,$4

	andi	$7,$3,0x7
	bne	$7,$0,.L1027
	daddiu	$9,$5,2

	dsubu	$10,$4,$9
	sltu	$12,$10,5
	bne	$12,$0,.L1027
	srl	$13,$6,3

	move	$24,$5
	dsll	$14,$13,3
	move	$25,$4
	daddu	$15,$14,$5
	.align	3
.L1028:
	ldc1	$f0,0($24)
	daddiu	$24,$24,8
	daddiu	$25,$25,8
	bne	$24,$15,.L1028
	sdc1	$f0,-8($25)

	dsll	$2,$13,2
	beq	$8,$2,.L1023
	dsll	$7,$2,1

	addiu	$3,$2,1
	lhx	$10,$7($5)
	daddu	$12,$4,$7
	sltu	$9,$3,$8
	beq	$9,$0,.L1023
	sh	$10,0($12)

	dsll	$13,$3,32
	addiu	$15,$2,2
	dsrl	$14,$13,32
	sltu	$8,$15,$8
	dsll	$24,$14,1
	lhx	$25,$24($5)
	daddu	$2,$4,$24
	beq	$8,$0,.L1023
	sh	$25,0($2)

	dsll	$7,$15,32
	dsrl	$3,$7,32
	dsll	$10,$3,1
	lhx	$12,$10($5)
	daddu	$9,$4,$10
	sh	$12,0($9)
.L1023:
	andi	$25,$6,0x1
	beq	$25,$0,.L1052
	addiu	$6,$6,-1

.L1050:
	dsll	$2,$6,32
	dsrl	$7,$2,32
	daddu	$5,$5,$7
	daddu	$4,$4,$7
	lb	$3,0($5)
	jr	$31
	sb	$3,0($4)

	.align	3
.L1047:
	beq	$6,$0,.L1052
	addiu	$12,$6,-1

	dsll	$6,$12,32
	dsrl	$13,$6,32
	daddu	$24,$5,$13
	daddu	$4,$4,$13
	.align	3
.L1033:
	lb	$14,0($24)
	move	$15,$24
	daddiu	$4,$4,-1
	daddiu	$24,$24,-1
	bne	$5,$15,.L1033
	sb	$14,1($4)

.L1052:
	jr	$31
	nop

	.align	3
.L1027:
	dsll	$13,$8,1
	move	$24,$5
	move	$8,$4
	daddu	$14,$13,$5
	.align	3
.L1030:
	lh	$15,0($24)
	daddiu	$24,$24,2
	daddiu	$8,$8,2
	bne	$24,$14,.L1030
	sh	$15,-2($8)

	andi	$25,$6,0x1
	bne	$25,$0,.L1050
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
	srl	$9,$6,2
	bne	$2,$0,.L1058
	and	$12,$6,$8

	dsll	$3,$6,32
	dsrl	$7,$3,32
	daddu	$10,$5,$7
	sltu	$13,$10,$4
	beq	$13,$0,.L1094
	nop

.L1058:
	beq	$9,$0,.L1095
	addiu	$2,$9,-1

	sltu	$3,$2,9
	bne	$3,$0,.L1060
	or	$7,$4,$5

	andi	$10,$7,0x7
	bne	$10,$0,.L1060
	daddiu	$13,$5,4

	beq	$4,$13,.L1060
	srl	$14,$6,3

	move	$25,$5
	dsll	$15,$14,3
	move	$8,$4
	daddu	$24,$15,$5
	.align	3
.L1061:
	ldc1	$f0,0($25)
	daddiu	$25,$25,8
	daddiu	$8,$8,8
	bne	$25,$24,.L1061
	sdc1	$f0,-8($8)

	dsll	$2,$14,1
	beq	$9,$2,.L1064
	dsll	$9,$2,2

	lwx	$3,$9($5)
	daddu	$7,$4,$9
	sw	$3,0($7)
.L1064:
	sltu	$25,$12,$6
.L1097:
	beq	$25,$0,.L1099
	subu	$8,$6,$12

	addiu	$2,$8,-1
	dsll	$9,$12,32
	sltu	$3,$2,8
	bne	$3,$0,.L1056
	dsrl	$7,$9,32

	daddiu	$10,$7,1
	daddu	$3,$4,$7
	daddu	$13,$5,$10
	dsubu	$14,$3,$13
	sltu	$15,$14,7
	bne	$15,$0,.L1056
	daddu	$2,$5,$7

	or	$24,$2,$3
	andi	$25,$24,0x7
	bne	$25,$0,.L1056
	srl	$9,$8,3

	dsll	$7,$9,32
	dsrl	$10,$7,32
	dsll	$13,$10,3
	daddu	$14,$2,$13
	.align	3
.L1065:
	ldc1	$f1,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$14,.L1065
	sdc1	$f1,-8($3)

	li	$15,-8			# 0xfffffffffffffff8
	andi	$24,$8,0x7
	and	$8,$8,$15
	beq	$24,$0,.L1099
	addu	$12,$8,$12

	dsll	$25,$12,32
	addiu	$10,$12,1
	dsrl	$7,$25,32
	sltu	$14,$10,$6
	daddu	$9,$5,$7
	daddu	$13,$4,$7
	lb	$2,0($9)
	beq	$14,$0,.L1099
	sb	$2,0($13)

	dsll	$3,$10,32
	addiu	$24,$12,2
	dsrl	$15,$3,32
	sltu	$8,$24,$6
	daddu	$25,$5,$15
	daddu	$7,$4,$15
	lb	$10,0($25)
	beq	$8,$0,.L1099
	sb	$10,0($7)

	dsll	$9,$24,32
	addiu	$14,$12,3
	dsrl	$13,$9,32
	sltu	$15,$14,$6
	daddu	$2,$5,$13
	daddu	$3,$4,$13
	lb	$24,0($2)
	beq	$15,$0,.L1099
	sb	$24,0($3)

	dsll	$25,$14,32
	addiu	$7,$12,4
	dsrl	$8,$25,32
	sltu	$14,$7,$6
	daddu	$10,$5,$8
	daddu	$13,$4,$8
	lb	$9,0($10)
	beq	$14,$0,.L1099
	sb	$9,0($13)

	dsll	$2,$7,32
	addiu	$3,$12,5
	dsrl	$15,$2,32
	sltu	$8,$3,$6
	daddu	$24,$5,$15
	daddu	$25,$4,$15
	lb	$7,0($24)
	beq	$8,$0,.L1099
	sb	$7,0($25)

	dsll	$10,$3,32
	addiu	$12,$12,6
	dsrl	$13,$10,32
	sltu	$6,$12,$6
	daddu	$14,$5,$13
	daddu	$9,$4,$13
	lb	$2,0($14)
	beq	$6,$0,.L1099
	sb	$2,0($9)

	dsll	$15,$12,32
	dsrl	$3,$15,32
	daddu	$5,$5,$3
	daddu	$4,$4,$3
	lb	$24,0($5)
	jr	$31
	sb	$24,0($4)

	.align	3
.L1094:
	beq	$6,$0,.L1099
	addiu	$14,$6,-1

	dsll	$6,$14,32
	dsrl	$15,$6,32
	daddu	$8,$5,$15
	daddu	$4,$4,$15
	.align	3
.L1069:
	lb	$24,0($8)
	move	$25,$8
	daddiu	$4,$4,-1
	daddiu	$8,$8,-1
	bne	$5,$25,.L1069
	sb	$24,1($4)

.L1099:
	jr	$31
	nop

	.align	3
.L1060:
	dsll	$10,$9,2
	move	$15,$5
	move	$24,$4
	daddu	$13,$10,$5
	.align	3
.L1063:
	lw	$14,0($15)
	daddiu	$15,$15,4
	daddiu	$24,$24,4
	bne	$15,$13,.L1063
	sw	$14,-4($24)

	b	.L1097
	sltu	$25,$12,$6

	.align	3
.L1095:
	beq	$6,$0,.L1099
	dsll	$9,$12,32

	dsrl	$7,$9,32
.L1056:
	move	$10,$7
	.align	3
.L1067:
	daddu	$25,$5,$10
	daddu	$7,$4,$10
	daddiu	$10,$10,1
	lb	$8,0($25)
	sll	$13,$10,0
	sltu	$12,$13,$6
	bne	$12,$0,.L1067
	sb	$8,0($7)

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
	bltz	$4,.L1108
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.align	3
.L1108:
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
	bltz	$4,.L1112
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.align	3
.L1112:
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
	bne	$2,$0,.L1119
	move	$3,$4

	dsrl	$2,$3,14
	bne	$2,$0,.L1137
	sra	$6,$4,13

	bne	$6,$0,.L1120
	sra	$7,$4,12

	bne	$7,$0,.L1121
	sra	$8,$4,11

	bne	$8,$0,.L1122
	sra	$9,$4,10

	bne	$9,$0,.L1123
	sra	$10,$4,9

	bne	$10,$0,.L1124
	nop

	sra	$2,$4,8
	bne	$2,$0,.L1125
	sra	$6,$4,7

	bne	$6,$0,.L1126
	sra	$7,$4,6

	bne	$7,$0,.L1127
	nop

	sra	$2,$4,5
	bne	$2,$0,.L1128
	sra	$6,$4,4

	bne	$6,$0,.L1129
	sra	$7,$4,3

	bne	$7,$0,.L1130
	nop

	sra	$2,$4,2
	bne	$2,$0,.L1131
	sra	$3,$4,1

	bne	$3,$0,.L1132
	nop

	bne	$4,$0,.L1136
	li	$2,16			# 0x10

.L1137:
	jr	$31
	nop

.L1119:
	jr	$31
	move	$2,$0

.L1130:
	jr	$31
	li	$2,12			# 0xc

.L1136:
	jr	$31
	li	$2,15			# 0xf

.L1120:
	jr	$31
	li	$2,2			# 0x2

.L1121:
	jr	$31
	li	$2,3			# 0x3

.L1122:
	jr	$31
	li	$2,4			# 0x4

.L1123:
	jr	$31
	li	$2,5			# 0x5

.L1124:
	jr	$31
	li	$2,6			# 0x6

.L1125:
	jr	$31
	li	$2,7			# 0x7

.L1126:
	jr	$31
	li	$2,8			# 0x8

.L1127:
	jr	$31
	li	$2,9			# 0x9

.L1128:
	jr	$31
	li	$2,10			# 0xa

.L1129:
	jr	$31
	li	$2,11			# 0xb

.L1131:
	jr	$31
	li	$2,13			# 0xd

.L1132:
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
	bne	$2,$0,.L1141
	andi	$5,$4,0x2

	bne	$5,$0,.L1142
	andi	$6,$4,0x4

	bne	$6,$0,.L1143
	andi	$7,$4,0x8

	bne	$7,$0,.L1144
	andi	$8,$4,0x10

	bne	$8,$0,.L1145
	andi	$9,$4,0x20

	bne	$9,$0,.L1146
	andi	$10,$4,0x40

	bne	$10,$0,.L1147
	andi	$11,$4,0x80

	bne	$11,$0,.L1148
	andi	$12,$4,0x100

	bne	$12,$0,.L1149
	andi	$13,$4,0x200

	bne	$13,$0,.L1150
	andi	$14,$4,0x400

	bne	$14,$0,.L1151
	andi	$15,$4,0x800

	bne	$15,$0,.L1152
	andi	$24,$4,0x1000

	bne	$24,$0,.L1153
	andi	$25,$4,0x2000

	bne	$25,$0,.L1154
	nop

	andi	$2,$4,0x4000
	bne	$2,$0,.L1155
	sra	$4,$4,15

	bne	$4,$0,.L1159
	li	$2,16			# 0x10

	jr	$31
	nop

.L1141:
	jr	$31
	move	$2,$0

.L1142:
	jr	$31
	li	$2,1			# 0x1

.L1153:
	jr	$31
	li	$2,12			# 0xc

.L1159:
	jr	$31
	li	$2,15			# 0xf

.L1143:
	jr	$31
	li	$2,2			# 0x2

.L1144:
	jr	$31
	li	$2,3			# 0x3

.L1145:
	jr	$31
	li	$2,4			# 0x4

.L1146:
	jr	$31
	li	$2,5			# 0x5

.L1147:
	jr	$31
	li	$2,6			# 0x6

.L1148:
	jr	$31
	li	$2,7			# 0x7

.L1149:
	jr	$31
	li	$2,8			# 0x8

.L1150:
	jr	$31
	li	$2,9			# 0x9

.L1151:
	jr	$31
	li	$2,10			# 0xa

.L1152:
	jr	$31
	li	$2,11			# 0xb

.L1154:
	jr	$31
	li	$2,13			# 0xd

.L1155:
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
	bc1tl	$fcc0,.L1167
	sub.s	$f12,$f12,$f0

	trunc.l.s $f1,$f12
	jr	$31
	dmfc1	$2,$f1

	.align	3
.L1167:
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
	andi	$4,$4,0x1
	sra	$2,$3,1
	sra	$8,$3,2
	andi	$5,$2,0x1
	addu	$14,$5,$4
	andi	$9,$8,0x1
	sra	$7,$3,3
	addu	$15,$14,$9
	sra	$6,$3,4
	andi	$10,$7,0x1
	addu	$2,$15,$10
	andi	$13,$6,0x1
	sra	$7,$3,5
	addu	$13,$2,$13
	sra	$11,$3,6
	andi	$24,$7,0x1
	sra	$4,$3,7
	andi	$25,$11,0x1
	andi	$14,$4,0x1
	addu	$4,$13,$24
	sra	$6,$3,8
	addu	$25,$4,$25
	sra	$5,$3,9
	andi	$10,$6,0x1
	addu	$14,$25,$14
	andi	$9,$5,0x1
	addu	$2,$14,$10
	sra	$8,$3,10
	addu	$9,$2,$9
	sra	$7,$3,11
	andi	$11,$8,0x1
	sra	$15,$3,12
	andi	$8,$7,0x1
	addu	$11,$9,$11
	andi	$6,$15,0x1
	sra	$24,$3,13
	addu	$4,$11,$8
	andi	$5,$24,0x1
	addu	$7,$4,$6
	sra	$13,$3,14
	addu	$15,$7,$5
	andi	$10,$13,0x1
	sra	$3,$3,15
	addu	$24,$15,$10
	addu	$25,$24,$3
	jr	$31
	andi	$2,$25,0x1

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
	andi	$4,$4,0x1
	sra	$2,$3,1
	sra	$8,$3,2
	andi	$5,$2,0x1
	addu	$14,$5,$4
	andi	$9,$8,0x1
	sra	$7,$3,3
	addu	$15,$14,$9
	sra	$6,$3,4
	andi	$10,$7,0x1
	addu	$2,$15,$10
	andi	$13,$6,0x1
	sra	$7,$3,5
	addu	$13,$2,$13
	sra	$11,$3,6
	andi	$24,$7,0x1
	sra	$4,$3,7
	andi	$25,$11,0x1
	andi	$14,$4,0x1
	addu	$4,$13,$24
	sra	$6,$3,8
	addu	$25,$4,$25
	sra	$5,$3,9
	andi	$10,$6,0x1
	addu	$14,$25,$14
	andi	$9,$5,0x1
	addu	$2,$14,$10
	sra	$8,$3,10
	addu	$9,$2,$9
	sra	$7,$3,11
	andi	$11,$8,0x1
	sra	$15,$3,12
	andi	$8,$7,0x1
	addu	$11,$9,$11
	andi	$6,$15,0x1
	sra	$24,$3,13
	addu	$4,$11,$8
	andi	$5,$24,0x1
	addu	$7,$4,$6
	sra	$13,$3,14
	addu	$15,$7,$5
	andi	$10,$13,0x1
	sra	$3,$3,15
	addu	$24,$15,$10
	jr	$31
	addu	$2,$24,$3

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
	beq	$4,$0,.L1179
	move	$2,$0

	.align	3
.L1174:
	andi	$3,$4,0x1
	subu	$7,$0,$3
	and	$8,$7,$5
	srl	$4,$4,1
	addu	$2,$8,$2
	bne	$4,$0,.L1174
	sll	$5,$5,1

.L1179:
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
	beq	$4,$0,.L1188
	move	$2,$0

	beq	$5,$0,.L1187
	nop

	.align	3
.L1182:
	andi	$3,$5,0x1
	subu	$7,$0,$3
	and	$8,$7,$4
	srl	$5,$5,1
	addu	$2,$8,$2
	bne	$5,$0,.L1182
	sll	$4,$4,1

.L1188:
	jr	$31
	nop

.L1187:
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
	beq	$2,$0,.L1210
	li	$14,1			# 0x1

	b	.L1190
	li	$2,32			# 0x20

	.align	3
.L1194:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L1192
	sll	$14,$14,1

	beq	$2,$0,.L1193
	nop

.L1190:
	bgez	$5,.L1194
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L1196:
	sltu	$8,$4,$5
	move	$13,$14
	subu	$10,$4,$5
	sltu	$12,$8,1
	srl	$9,$14,1
	movz	$13,$0,$12
	move	$14,$9
	srl	$5,$5,1
	or	$2,$13,$2
	bne	$14,$0,.L1196
	movn	$4,$10,$12

.L1193:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L1192:
	bne	$14,$0,.L1196
	move	$2,$0

	b	.L1193
	nop

	.align	3
.L1210:
	sltu	$3,$4,$5
	subu	$5,$4,$5
	sltu	$2,$3,1
	b	.L1193
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
	bc1t	$fcc0,.L1214
	nop

	c.lt.s	$fcc1,$f13,$f12
	bc1f	$fcc1,.L1216
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1216:
	jr	$31
	move	$2,$0

	.align	3
.L1214:
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
	bc1t	$fcc0,.L1222
	nop

	c.lt.d	$fcc1,$f13,$f12
	bc1f	$fcc1,.L1224
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1224:
	jr	$31
	move	$2,$0

	.align	3
.L1222:
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
	bltzl	$5,.L1246
	subu	$5,$0,$5

	beq	$5,$0,.L1237
	move	$7,$0

.L1233:
	li	$10,32			# 0x20
	b	.L1236
	move	$2,$0

	.align	3
.L1247:
	beq	$10,$0,.L1235
	nop

.L1236:
	andi	$3,$5,0x1
	addiu	$6,$10,-1
	subu	$9,$0,$3
	andi	$10,$6,0x00ff
	and	$11,$9,$4
	dsra	$5,$5,1
	addu	$2,$11,$2
	bne	$5,$0,.L1247
	sll	$4,$4,1

.L1235:
	beq	$7,$0,.L1248
	nop

	jr	$31
	subu	$2,$0,$2

.L1237:
	move	$2,$0
.L1248:
	jr	$31
	nop

	.align	3
.L1246:
	b	.L1233
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
	bltzl	$4,.L1273
	dsubu	$4,$0,$4

	li	$2,1			# 0x1
	move	$10,$0
.L1250:
	bgez	$5,.L1275
	sll	$4,$4,0

	dsubu	$5,$0,$5
	move	$10,$2
.L1275:
	sll	$14,$5,0
	sltu	$3,$14,$4
	beq	$3,$0,.L1274
	sltu	$5,$4,$14

	li	$7,32			# 0x20
	b	.L1252
	li	$25,1			# 0x1

	.align	3
.L1256:
	sll	$14,$14,1
	sltu	$6,$14,$4
	beq	$6,$0,.L1254
	sll	$25,$25,1

	beq	$7,$0,.L1255
	move	$2,$0

.L1252:
	bgez	$14,.L1256
	addiu	$7,$7,-1

	move	$12,$0
	.align	3
.L1258:
	sltu	$13,$4,$14
	move	$24,$25
	subu	$9,$4,$14
	sltu	$15,$13,1
	srl	$8,$25,1
	movz	$24,$0,$15
	move	$25,$8
	srl	$14,$14,1
	or	$12,$24,$12
	bne	$25,$0,.L1258
	movn	$4,$9,$15

.L1260:
	dsll	$2,$12,32
	dsrl	$2,$2,32
.L1255:
	beq	$10,$0,.L1276
	nop

	jr	$31
	dsubu	$2,$0,$2

.L1276:
	jr	$31
	nop

	.align	3
.L1254:
	bne	$25,$0,.L1258
	move	$12,$0

	b	.L1255
	move	$2,$0

	.align	3
.L1273:
	move	$2,$0
	b	.L1250
	li	$10,1			# 0x1

.L1274:
	b	.L1260
	sltu	$12,$5,1

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
	bltzl	$4,.L1305
	dsubu	$4,$0,$4

	move	$7,$0
.L1278:
	bgez	$5,.L1279
	sll	$2,$4,0

	dsubu	$5,$0,$5
.L1279:
	sll	$13,$5,0
	sltu	$4,$13,$2
	beq	$4,$0,.L1306
	subu	$5,$2,$13

	li	$9,32			# 0x20
	b	.L1280
	li	$12,1			# 0x1

	.align	3
.L1284:
	sll	$13,$13,1
	sltu	$6,$13,$2
	beq	$6,$0,.L1304
	sll	$12,$12,1

	beq	$9,$0,.L1307
	dsll	$15,$2,32

.L1280:
	bgez	$13,.L1284
	addiu	$9,$9,-1

	sltu	$10,$2,$13
	.align	3
.L1308:
	subu	$11,$2,$13
	sltu	$14,$10,1
	srl	$12,$12,1
	srl	$13,$13,1
	movn	$2,$11,$14
.L1304:
	bne	$12,$0,.L1308
	sltu	$10,$2,$13

.L1283:
	dsll	$15,$2,32
.L1307:
	beq	$7,$0,.L1309
	dsrl	$2,$15,32

	jr	$31
	dsubu	$2,$0,$2

.L1309:
	jr	$31
	nop

	.align	3
.L1305:
	b	.L1278
	li	$7,1			# 0x1

.L1306:
	sltu	$3,$2,$13
	b	.L1283
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
	beq	$2,$0,.L1393
	sll	$8,$5,16

	sra	$9,$8,16
	bltz	$9,.L1313
	sll	$10,$5,1

	andi	$3,$10,0xffff
	sltu	$11,$3,$4
	beq	$11,$0,.L1320
	sll	$14,$3,16

	sra	$15,$14,16
	bltz	$15,.L1320
	sll	$24,$5,2

	andi	$3,$24,0xffff
	sltu	$25,$3,$4
	beq	$25,$0,.L1315
	li	$8,4			# 0x4

	sll	$2,$3,16
	sra	$7,$2,16
	bltz	$7,.L1395
	sltu	$13,$4,$3

	sll	$3,$5,3
	andi	$3,$3,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,.L1324
	sll	$9,$3,16

	sra	$13,$9,16
	bltz	$13,.L1324
	sll	$10,$5,4

	andi	$3,$10,0xffff
	sltu	$11,$3,$4
	beq	$11,$0,.L1326
	sll	$14,$3,16

	sra	$15,$14,16
	bltz	$15,.L1326
	sll	$24,$5,5

	andi	$3,$24,0xffff
	sltu	$25,$3,$4
	beq	$25,$0,.L1315
	li	$8,32			# 0x20

	sll	$2,$3,16
	sra	$7,$2,16
	bltz	$7,.L1395
	sltu	$13,$4,$3

	sll	$3,$5,6
	andi	$3,$3,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,.L1330
	sll	$9,$3,16

	sra	$13,$9,16
	bltz	$13,.L1330
	sll	$10,$5,7

	andi	$3,$10,0xffff
	sltu	$11,$3,$4
	beq	$11,$0,.L1332
	sll	$14,$3,16

	sra	$15,$14,16
	bltz	$15,.L1332
	sll	$24,$5,8

	andi	$3,$24,0xffff
	sltu	$25,$3,$4
	beq	$25,$0,.L1315
	li	$8,256			# 0x100

	sll	$2,$3,16
	sra	$7,$2,16
	bltz	$7,.L1395
	sltu	$13,$4,$3

	sll	$3,$5,9
	andi	$3,$3,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,.L1336
	sll	$9,$3,16

	sra	$13,$9,16
	bltz	$13,.L1336
	sll	$10,$5,10

	andi	$3,$10,0xffff
	sltu	$11,$3,$4
	beq	$11,$0,.L1338
	sll	$14,$3,16

	sra	$15,$14,16
	bltz	$15,.L1338
	sll	$24,$5,11

	andi	$3,$24,0xffff
	sltu	$25,$3,$4
	beq	$25,$0,.L1315
	li	$8,2048			# 0x800

	sll	$2,$3,16
	sra	$7,$2,16
	bltz	$7,.L1395
	sltu	$13,$4,$3

	sll	$3,$5,12
	andi	$3,$3,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,.L1342
	sll	$9,$3,16

	sra	$13,$9,16
	bltz	$13,.L1342
	sll	$10,$5,13

	andi	$3,$10,0xffff
	sltu	$11,$3,$4
	beq	$11,$0,.L1344
	sll	$14,$3,16

	sra	$15,$14,16
	bltz	$15,.L1344
	sll	$24,$5,14

	andi	$3,$24,0xffff
	sltu	$25,$3,$4
	beql	$25,$0,.L1315
	li	$8,16384			# 0x4000

	sll	$2,$3,16
	sra	$7,$2,16
	bltz	$7,.L1346
	sll	$5,$5,15

	andi	$13,$5,0xffff
	sltu	$9,$13,$4
	beql	$9,$0,.L1347
	li	$3,32768			# 0x8000

	bne	$13,$0,.L1394
	move	$2,$4

.L1316:
	jr	$31
	movz	$2,$13,$6

.L1320:
	li	$8,2			# 0x2
	.align	3
.L1315:
	sltu	$13,$4,$3
	.align	3
.L1395:
	subu	$10,$4,$3
	move	$11,$8
	andi	$2,$10,0xffff
	sltu	$24,$13,1
	movz	$2,$4,$24
	dsrl	$15,$3,1
	sltu	$25,$2,$15
	subu	$7,$2,$15
	dsrl	$14,$8,1
	andi	$5,$7,0xffff
	movn	$11,$0,$13
	sltu	$9,$25,1
	movn	$14,$0,$25
	or	$13,$14,$11
	dsrl	$10,$8,2
	andi	$13,$13,0xffff
	dsrl	$4,$3,2
	beq	$10,$0,.L1316
	movn	$2,$5,$9

	sltu	$14,$2,$4
	subu	$15,$2,$4
	sltu	$25,$14,1
	andi	$7,$15,0xffff
	movz	$10,$0,$25
	dsrl	$24,$8,3
	or	$13,$10,$13
	dsrl	$11,$3,3
	beq	$24,$0,.L1316
	movn	$2,$7,$25

	sltu	$9,$2,$11
	subu	$5,$2,$11
	sltu	$14,$9,1
	andi	$15,$5,0xffff
	movz	$24,$0,$14
	dsrl	$10,$8,4
	or	$13,$24,$13
	dsrl	$4,$3,4
	beq	$10,$0,.L1316
	movn	$2,$15,$14

	sltu	$24,$2,$4
	subu	$25,$2,$4
	sltu	$9,$24,1
	andi	$5,$25,0xffff
	movz	$10,$0,$9
	dsrl	$11,$8,5
	or	$13,$10,$13
	dsrl	$7,$3,5
	beq	$11,$0,.L1316
	movn	$2,$5,$9

	sltu	$14,$2,$7
	subu	$15,$2,$7
	sltu	$24,$14,1
	andi	$25,$15,0xffff
	movz	$11,$0,$24
	dsrl	$10,$8,6
	or	$13,$11,$13
	dsrl	$4,$3,6
	beq	$10,$0,.L1316
	movn	$2,$25,$24

	sltu	$7,$2,$4
	subu	$14,$2,$4
	sltu	$9,$7,1
	andi	$15,$14,0xffff
	movz	$10,$0,$9
	dsrl	$11,$8,7
	or	$13,$10,$13
	dsrl	$5,$3,7
	beq	$11,$0,.L1316
	movn	$2,$15,$9

	sltu	$24,$2,$5
	subu	$25,$2,$5
	sltu	$7,$24,1
	andi	$14,$25,0xffff
	movz	$11,$0,$7
	dsrl	$10,$8,8
	or	$13,$11,$13
	dsrl	$4,$3,8
	beq	$10,$0,.L1316
	movn	$2,$14,$7

	sltu	$9,$2,$4
	subu	$15,$2,$4
	sltu	$24,$9,1
	andi	$25,$15,0xffff
	movz	$10,$0,$24
	dsrl	$11,$8,9
	or	$13,$10,$13
	dsrl	$5,$3,9
	beq	$11,$0,.L1316
	movn	$2,$25,$24

	sltu	$7,$2,$5
	subu	$14,$2,$5
	sltu	$9,$7,1
	andi	$15,$14,0xffff
	movz	$11,$0,$9
	dsrl	$10,$8,10
	or	$13,$11,$13
	dsrl	$4,$3,10
	beq	$10,$0,.L1316
	movn	$2,$15,$9

	sltu	$24,$2,$4
	subu	$25,$2,$4
	sltu	$7,$24,1
	andi	$14,$25,0xffff
	movz	$10,$0,$7
	dsrl	$11,$8,11
	or	$13,$10,$13
	dsrl	$5,$3,11
	beq	$11,$0,.L1316
	movn	$2,$14,$7

	sltu	$9,$2,$5
	subu	$15,$2,$5
	sltu	$24,$9,1
	andi	$25,$15,0xffff
	movz	$11,$0,$24
	dsrl	$10,$8,12
	or	$13,$11,$13
	dsrl	$4,$3,12
	beq	$10,$0,.L1316
	movn	$2,$25,$24

	sltu	$7,$2,$4
	subu	$14,$2,$4
	sltu	$9,$7,1
	andi	$15,$14,0xffff
	movz	$10,$0,$9
	dsrl	$11,$8,13
	or	$13,$10,$13
	dsrl	$5,$3,13
	beq	$11,$0,.L1316
	movn	$2,$15,$9

	sltu	$24,$2,$5
	subu	$25,$2,$5
	sltu	$7,$24,1
	andi	$14,$25,0xffff
	movz	$11,$0,$7
	dsrl	$10,$8,14
	or	$13,$11,$13
	dsrl	$4,$3,14
	beq	$10,$0,.L1316
	movn	$2,$14,$7

	sltu	$11,$2,$4
	subu	$15,$2,$4
	sltu	$5,$11,1
	andi	$24,$15,0xffff
	movz	$10,$0,$5
	li	$9,16384			# 0x4000
	dsrl	$3,$3,15
	or	$13,$10,$13
	beq	$8,$9,.L1316
	movn	$2,$24,$5

	subu	$8,$2,$3
	sltu	$25,$2,$3
	sltu	$10,$25,1
	andi	$4,$8,0xffff
	movn	$2,$4,$10
	or	$13,$10,$13
	jr	$31
	movz	$2,$13,$6

.L1324:
	b	.L1315
	li	$8,8			# 0x8

.L1326:
	b	.L1315
	li	$8,16			# 0x10

.L1336:
	b	.L1315
	li	$8,512			# 0x200

.L1330:
	b	.L1315
	li	$8,64			# 0x40

.L1332:
	b	.L1315
	li	$8,128			# 0x80

.L1393:
	subu	$3,$4,$5
	xor	$7,$5,$4
	sltu	$5,$7,1
	andi	$2,$3,0xffff
	move	$13,$5
	b	.L1316
	movz	$2,$4,$5

.L1338:
	b	.L1315
	li	$8,1024			# 0x400

.L1342:
	b	.L1315
	li	$8,4096			# 0x1000

.L1344:
	b	.L1315
	li	$8,8192			# 0x2000

.L1346:
	b	.L1315
	li	$8,16384			# 0x4000

.L1394:
	li	$8,32768			# 0x8000
	b	.L1315
	li	$3,32768			# 0x8000

.L1347:
	b	.L1315
	li	$8,32768			# 0x8000

.L1313:
	subu	$4,$4,$5
	li	$13,1			# 0x1
	b	.L1316
	andi	$2,$4,0xffff

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
	beq	$2,$0,.L1420
	li	$15,1			# 0x1

	li	$7,64			# 0x40
	b	.L1397
	dsll	$9,$15,31

	.align	3
.L1401:
	dsll	$5,$5,1
	sltu	$8,$5,$4
	beq	$8,$0,.L1399
	dsll	$15,$15,1

	beq	$7,$0,.L1400
	nop

.L1397:
	and	$2,$5,$9
	beq	$2,$0,.L1401
	addiu	$7,$7,-1

	move	$2,$0
	.align	3
.L1403:
	sltu	$11,$4,$5
	move	$14,$15
	dsubu	$12,$4,$5
	sltu	$13,$11,1
	movz	$14,$0,$13
	dsrl	$15,$15,1
	or	$2,$2,$14
	movn	$4,$12,$13
	bne	$15,$0,.L1403
	dsrl	$5,$5,1

.L1400:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L1399:
	bnel	$15,$0,.L1403
	move	$2,$0

	b	.L1400
	nop

	.align	3
.L1420:
	sltu	$3,$4,$5
	dsubu	$5,$4,$5
	sltu	$2,$3,1
	b	.L1400
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
	beq	$2,$0,.L1422
	sll	$12,$4,0

	addiu	$13,$5,-32
	move	$10,$0
	sll	$11,$12,$13
	dsll	$15,$10,32
	dsll	$14,$11,32
	dsrl	$24,$15,32
	jr	$31
	or	$2,$24,$14

	.align	3
.L1422:
	beq	$5,$0,.L1425
	li	$3,32			# 0x20

	sll	$6,$4,0
	subu	$8,$3,$5
	dsra	$4,$4,32
	sll	$9,$4,$5
	sll	$10,$6,$5
	srl	$5,$6,$8
	or	$11,$5,$9
	dsll	$15,$10,32
	dsll	$14,$11,32
	dsrl	$24,$15,32
	jr	$31
	or	$2,$24,$14

	.align	3
.L1425:
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
	beq	$2,$0,.L1428
	addiu	$8,$6,-64

	move	$2,$0
	dsll	$5,$4,$8
	jr	$31
	move	$3,$5

	.align	3
.L1428:
	beql	$6,$0,.L1431
	move	$2,$4

	li	$3,64			# 0x40
	dsll	$2,$4,$6
	dsll	$5,$5,$6
	subu	$6,$3,$6
	dsrl	$4,$4,$6
	or	$5,$4,$5
	jr	$31
	move	$3,$5

	.align	3
.L1431:
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
	beq	$2,$0,.L1434
	dsra	$12,$4,32

	addiu	$13,$5,-32
	sra	$11,$12,$13
	sra	$10,$12,31
	dsll	$14,$11,32
	dsrl	$15,$14,32
	dsll	$24,$10,32
	jr	$31
	or	$2,$24,$15

	.align	3
.L1434:
	beq	$5,$0,.L1437
	li	$3,32			# 0x20

	dsra	$6,$4,32
	subu	$8,$3,$5
	sll	$4,$4,0
	srl	$9,$4,$5
	sra	$10,$6,$5
	sll	$5,$6,$8
	or	$11,$5,$9
	dsll	$14,$11,32
	dsrl	$15,$14,32
	dsll	$24,$10,32
	jr	$31
	or	$2,$24,$15

	.align	3
.L1437:
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
	beq	$2,$0,.L1440
	dsra	$3,$5,63

	addiu	$6,$6,-64
	jr	$31
	dsra	$2,$5,$6

	.align	3
.L1440:
	beq	$6,$0,.L1443
	li	$7,64			# 0x40

	dsrl	$9,$4,$6
	subu	$4,$7,$6
	dsra	$3,$5,$6
	dsll	$5,$5,$4
	jr	$31
	or	$2,$5,$9

	.align	3
.L1443:
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
	li	$3,255			# 0xff
	dsll	$11,$4,56
	li	$7,16711680			# 0xff0000
	dsrl	$5,$4,40
	or	$13,$2,$11
	dsrl	$8,$4,24
	andi	$14,$5,0xff00
	and	$15,$8,$7
	or	$25,$13,$14
	dsll	$6,$3,24
	or	$2,$25,$15
	dsrl	$24,$4,8
	and	$7,$24,$6
	dsll	$10,$3,32
	or	$5,$2,$7
	dsll	$6,$4,8
	dsll	$11,$4,24
	and	$10,$6,$10
	dsll	$9,$3,40
	or	$8,$5,$10
	and	$9,$11,$9
	dsll	$4,$4,40
	or	$14,$8,$9
	dsll	$3,$3,48
	and	$13,$4,$3
	jr	$31
	or	$2,$14,$13

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
	li	$5,16711680			# 0xff0000
	sll	$6,$4,24
	srl	$3,$4,8
	or	$8,$2,$6
	sll	$4,$4,8
	andi	$9,$3,0xff00
	and	$10,$4,$5
	or	$11,$8,$9
	jr	$31
	or	$2,$11,$10

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
	li	$2,65536			# 0x10000
	li	$3,16			# 0x10
	sltu	$8,$4,$2
	li	$5,8			# 0x8
	dsll	$10,$8,4
	li	$7,4			# 0x4
	subu	$11,$3,$10
	li	$6,2			# 0x2
	srl	$12,$4,$11
	andi	$4,$12,0xff00
	sltu	$13,$4,1
	dsll	$14,$13,3
	subu	$15,$5,$14
	daddu	$24,$14,$10
	srl	$25,$12,$15
	andi	$2,$25,0xf0
	sltu	$3,$2,1
	dsll	$5,$3,2
	subu	$7,$7,$5
	daddu	$8,$5,$24
	srl	$10,$25,$7
	andi	$11,$10,0xc
	sltu	$12,$11,1
	dsll	$4,$12,1
	subu	$13,$6,$4
	addu	$14,$4,$8
	srl	$15,$10,$13
	subu	$6,$6,$15
	andi	$24,$15,0x2
	movn	$6,$0,$24
	jr	$31
	addu	$2,$6,$14

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
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(__clzti2)))
	sd	$16,8($sp)
	daddu	$28,$28,$25
	sltu	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clzti2)))
	daddiu	$2,$16,-1
	sd	$31,24($sp)
	ld	$25,%call16(__clzdi2)($28)
	movn	$4,$0,$5
	and	$3,$2,$5
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	or	$4,$3,$4

	ld	$31,24($sp)
	sll	$4,$16,6
	ld	$28,16($sp)
	ld	$16,8($sp)
	addu	$2,$2,$4
	jr	$31
	daddiu	$sp,$sp,32

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
	bne	$6,$0,.L1457
	slt	$8,$3,$2

	bne	$8,$0,.L1458
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1457
	sltu	$10,$5,$4

	bne	$10,$0,.L1458
	nop

	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1457:
	jr	$31
	move	$2,$0

	.align	3
.L1458:
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
	bne	$6,$0,.L1464
	slt	$8,$3,$2

	bne	$8,$0,.L1463
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1464
	nop

	jr	$31
	sltu	$2,$5,$4

	.align	3
.L1464:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1463:
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
	bne	$2,$0,.L1470
	slt	$5,$7,$5

	bne	$5,$0,.L1471
	sltu	$7,$4,$6

	bne	$7,$0,.L1470
	sltu	$4,$6,$4

	bne	$4,$0,.L1471
	nop

	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1470:
	jr	$31
	move	$2,$0

	.align	3
.L1471:
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
	andi	$5,$4,0xffff
	li	$6,2			# 0x2
	sltu	$2,$5,1
	dsll	$8,$2,4
	srl	$3,$4,$8
	andi	$4,$3,0xff
	sltu	$9,$4,1
	dsll	$10,$9,3
	srl	$11,$3,$10
	daddu	$12,$10,$8
	andi	$13,$11,0xf
	sltu	$14,$13,1
	dsll	$15,$14,2
	srl	$24,$11,$15
	daddu	$25,$15,$12
	andi	$5,$24,0x3
	sltu	$2,$5,1
	dsll	$8,$2,1
	srl	$3,$24,$8
	addu	$9,$8,$25
	andi	$10,$3,0x3
	nor	$4,$0,$10
	srl	$11,$10,1
	andi	$12,$4,0x1
	subu	$6,$6,$11
	subu	$13,$0,$12
	and	$14,$13,$6
	jr	$31
	addu	$2,$14,$9

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
	dctz	$8,$5
	sll	$7,$2,6
	sll	$9,$8,0
	jr	$31
	addu	$2,$9,$7

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
	bne	$4,$0,.L1478
	dctz	$2,$4

	bne	$5,$0,.L1482
	dctz	$5,$5

	jr	$31
	move	$2,$0

	.align	3
.L1478:
	sll	$4,$2,0
	jr	$31
	addiu	$2,$4,1

	.align	3
.L1482:
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
	beq	$2,$0,.L1484
	dsra	$12,$4,32

	addiu	$13,$5,-32
	move	$10,$0
	srl	$11,$12,$13
	dmtc1	$11,$f0
	dmtc1	$10,$f1
	punpcklwd	$f2,$f0,$f1
	jr	$31
	dmfc1	$2,$f2

	.align	3
.L1484:
	beq	$5,$0,.L1487
	li	$6,32			# 0x20

	dsra	$3,$4,32
	subu	$8,$6,$5
	sll	$4,$4,0
	srl	$9,$4,$5
	srl	$10,$3,$5
	sll	$5,$3,$8
	or	$11,$5,$9
	dmtc1	$11,$f0
	dmtc1	$10,$f1
	punpcklwd	$f2,$f0,$f1
	jr	$31
	dmfc1	$2,$f2

	.align	3
.L1487:
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
	beq	$2,$0,.L1490
	move	$3,$0

	addiu	$6,$6,-64
	jr	$31
	dsrl	$2,$5,$6

	.align	3
.L1490:
	beq	$6,$0,.L1493
	li	$7,64			# 0x40

	dsrl	$9,$4,$6
	subu	$4,$7,$6
	dsrl	$3,$5,$6
	dsll	$5,$5,$4
	jr	$31
	or	$2,$5,$9

	.align	3
.L1493:
	move	$2,$4
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
	andi	$6,$4,0xffff
	andi	$7,$5,0xffff
	gsmultu	$3,$6,$7
	srl	$4,$4,16
	andi	$10,$3,0xffff
	srl	$2,$3,16
	gsmultu	$9,$4,$7
	addu	$11,$2,$9
	sll	$14,$11,16
	addu	$24,$10,$14
	srl	$5,$5,16
	andi	$7,$24,0xffff
	gsmultu	$12,$5,$6
	srl	$6,$24,16
	gsmultu	$13,$4,$5
	addu	$4,$6,$12
	srl	$15,$11,16
	sll	$5,$4,16
	addu	$25,$15,$13
	srl	$2,$4,16
	addu	$3,$7,$5
	addu	$9,$25,$2
	dsll	$11,$3,32
	dsll	$10,$9,32
	dsrl	$12,$11,32
	jr	$31
	or	$2,$12,$10

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
	sll	$3,$4,0
	andi	$7,$4,0xffff
	andi	$9,$5,0xffff
	gsmultu	$2,$7,$9
	srl	$10,$3,16
	andi	$14,$2,0xffff
	srl	$6,$2,16
	gsmultu	$11,$10,$9
	sll	$8,$5,0
	addu	$15,$6,$11
	srl	$24,$8,16
	sll	$12,$15,16
	gsmultu	$9,$24,$7
	gsmultu	$7,$10,$24
	addu	$10,$14,$12
	srl	$2,$10,16
	addu	$11,$2,$9
	srl	$25,$15,16
	addu	$6,$25,$7
	dsra	$5,$5,32
	srl	$15,$11,16
	gsmultu	$14,$3,$5
	andi	$3,$10,0xffff
	addu	$5,$6,$15
	sll	$24,$11,16
	addu	$25,$14,$5
	dsra	$4,$4,32
	addu	$12,$3,$24
	dsll	$9,$12,32
	gsmultu	$8,$8,$4
	addu	$10,$25,$8
	dsrl	$7,$9,32
	dsll	$6,$10,32
	jr	$31
	or	$2,$7,$6

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
	dsra	$5,$5,32
	mflo	$2
	mfhi	$7
	nop
	nop
	multu	$3,$4
	dsll	$9,$2,32
	dsrl	$10,$9,32
	dsll	$11,$7,32
	or	$12,$10,$11
	mflo	$13
	mfhi	$14
	nop
	nop
	multu	$6,$5
	dsll	$15,$13,32
	dsrl	$24,$15,32
	dsll	$25,$14,32
	or	$3,$24,$25
	dsrl	$25,$12,32
	daddu	$3,$3,$25
	mflo	$6
	mfhi	$2
	nop
	nop
	multu	$4,$5
	dsll	$7,$6,32
	dsrl	$9,$7,32
	dsll	$10,$2,32
	dsll	$6,$3,32
	or	$11,$9,$10
	dsrl	$7,$6,32
	mflo	$4
	mfhi	$5
	dsll	$13,$4,32
	daddu	$10,$11,$7
	dsll	$15,$5,32
	dsrl	$14,$13,32
	dsrl	$9,$3,32
	or	$24,$14,$15
	dsll	$12,$12,32
	daddu	$11,$9,$24
	dsrl	$2,$12,32
	dsrl	$4,$10,32
	dsll	$5,$10,32
	daddu	$3,$11,$4
	jr	$31
	daddu	$2,$2,$5

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
	dsra	$9,$4,32
	gsdmultu	$4,$4,$7
	dsra	$10,$6,32
	gsdmultu	$6,$6,$5
	mflo	$2
	mfhi	$11
	nop
	nop
	multu	$3,$9
	dsll	$13,$2,32
	dsrl	$14,$13,32
	dsll	$15,$11,32
	or	$24,$14,$15
	dsrl	$5,$24,32
	dsll	$7,$24,32
	mflo	$25
	mfhi	$2
	nop
	nop
	multu	$8,$10
	dsll	$3,$25,32
	dsrl	$13,$3,32
	dsll	$11,$2,32
	or	$14,$13,$11
	daddu	$14,$14,$5
	dsrl	$24,$7,32
	mflo	$8
	mfhi	$15
	nop
	nop
	multu	$9,$10
	dsll	$25,$8,32
	dsrl	$2,$25,32
	dsll	$3,$15,32
	or	$13,$2,$3
	dsll	$2,$14,32
	dsrl	$3,$14,32
	mflo	$9
	mfhi	$10
	dsll	$11,$9,32
	dsrl	$8,$11,32
	dsll	$15,$10,32
	dsrl	$9,$2,32
	or	$25,$8,$15
	daddu	$13,$13,$9
	daddu	$10,$3,$25
	dsrl	$11,$13,32
	daddu	$15,$10,$11
	dsll	$8,$13,32
	daddu	$25,$4,$15
	daddu	$2,$24,$8
	jr	$31
	daddu	$3,$25,$6

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
	sltu	$3,$0,$4
	dsubu	$5,$0,$5
	dsubu	$2,$0,$4
	jr	$31
	dsubu	$3,$5,$3

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
	dsra	$3,$4,32
	li	$2,27030			# 0x6996
	sll	$4,$4,0
	xor	$6,$3,$4
	srl	$7,$6,16
	xor	$8,$7,$6
	srl	$9,$8,8
	xor	$10,$9,$8
	srl	$11,$10,4
	xor	$12,$11,$10
	andi	$13,$12,0xf
	sra	$14,$2,$13
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
	li	$2,27030			# 0x6996
	dsra	$3,$4,32
	sll	$5,$4,0
	xor	$7,$3,$5
	srl	$8,$7,16
	xor	$9,$8,$7
	srl	$10,$9,8
	xor	$11,$10,$9
	srl	$12,$11,4
	xor	$13,$12,$11
	andi	$14,$13,0xf
	sra	$15,$2,$14
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
	srl	$3,$4,16
	li	$2,27030			# 0x6996
	xor	$6,$3,$4
	srl	$4,$6,8
	xor	$7,$4,$6
	srl	$8,$7,4
	xor	$9,$8,$7
	andi	$10,$9,0xf
	sra	$11,$2,$10
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
	li	$5,1431633920			# 0x55550000
	li	$2,858980352			# 0x33330000
	daddiu	$6,$5,21845
	daddiu	$8,$2,13107
	dsll	$10,$6,16
	li	$3,252641280			# 0xf0f0000
	daddiu	$14,$10,21845
	daddiu	$9,$3,3855
	dsll	$25,$14,16
	dsrl	$11,$4,1
	daddiu	$5,$25,21845
	dsll	$12,$8,16
	dsll	$13,$9,16
	daddiu	$15,$12,13107
	and	$9,$11,$5
	daddiu	$24,$13,3855
	dsubu	$4,$4,$9
	dsll	$2,$15,16
	daddiu	$6,$2,13107
	dsrl	$10,$4,2
	and	$11,$4,$6
	and	$12,$10,$6
	daddu	$13,$12,$11
	dsll	$3,$24,16
	dsrl	$14,$13,4
	daddiu	$8,$3,3855
	daddu	$15,$14,$13
	and	$24,$15,$8
	sll	$2,$24,0
	dsrl	$25,$24,32
	addu	$5,$25,$2
	srl	$3,$5,16
	addu	$6,$3,$5
	srl	$8,$6,8
	addu	$9,$8,$6
	jr	$31
	andi	$2,$9,0x7f

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
	li	$5,1431633920			# 0x55550000
	li	$3,858980352			# 0x33330000
	addiu	$6,$5,21845
	addiu	$8,$3,13107
	srl	$10,$4,1
	li	$2,252641280			# 0xf0f0000
	and	$11,$10,$6
	addiu	$9,$2,3855
	subu	$4,$4,$11
	srl	$12,$4,2
	and	$13,$4,$8
	and	$14,$12,$8
	addu	$15,$13,$14
	srl	$24,$15,4
	addu	$25,$24,$15
	and	$5,$25,$9
	srl	$3,$5,16
	addu	$2,$3,$5
	srl	$6,$2,8
	addu	$8,$2,$6
	jr	$31
	andi	$2,$8,0x3f

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
	li	$3,1431633920			# 0x55550000
	li	$2,858980352			# 0x33330000
	daddiu	$7,$3,21845
	daddiu	$10,$2,13107
	dsll	$11,$7,16
	li	$24,252641280			# 0xf0f0000
	daddiu	$13,$11,21845
	daddiu	$2,$24,3855
	dsll	$12,$5,63
	dsrl	$6,$4,1
	dsll	$25,$13,16
	or	$14,$12,$6
	daddiu	$7,$25,21845
	and	$12,$14,$7
	dsrl	$8,$5,1
	dsubu	$14,$4,$12
	dsll	$15,$10,16
	and	$8,$8,$7
	daddiu	$3,$15,13107
	dsubu	$5,$5,$8
	sltu	$4,$4,$14
	dsll	$10,$3,16
	dsubu	$3,$5,$4
	dsll	$11,$2,16
	daddiu	$13,$10,13107
	dsrl	$24,$14,2
	daddiu	$6,$11,3855
	dsll	$2,$3,62
	and	$11,$3,$13
	or	$12,$2,$24
	and	$25,$14,$13
	dsrl	$7,$3,2
	and	$8,$7,$13
	and	$13,$12,$13
	daddu	$14,$13,$25
	sltu	$5,$14,$13
	dsll	$15,$6,16
	daddu	$6,$8,$11
	daddu	$4,$5,$6
	daddiu	$10,$15,3855
	dsll	$24,$4,60
	dsrl	$15,$14,4
	or	$3,$24,$15
	daddu	$2,$3,$14
	dsrl	$25,$4,4
	sltu	$11,$2,$3
	daddu	$7,$25,$4
	and	$12,$2,$10
	daddu	$8,$11,$7
	and	$10,$8,$10
	daddu	$13,$10,$12
	dsra	$6,$13,32
	sll	$14,$13,0
	addu	$5,$6,$14
	srl	$15,$5,16
	addu	$4,$15,$5
	srl	$24,$4,8
	addu	$25,$24,$4
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
	andi	$2,$5,0x1
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(__powidf2)))
	beq	$2,$0,.L1525
	ld	$6,%got_page(.LC14)($7)

	ldc1	$f0,%got_ofst(.LC14)($6)
	move	$11,$5
	.align	3
.L1522:
	mul.d	$f0,$f0,$f12
.L1520:
	srl	$3,$11,31
	addu	$4,$3,$11
	sra	$11,$4,1
	beq	$11,$0,.L1521
	srl	$8,$11,31

	andi	$9,$11,0x1
	mul.d	$f12,$f12,$f12
	bne	$9,$0,.L1522
	addu	$10,$8,$11

	sra	$11,$10,1
.L1529:
	mul.d	$f12,$f12,$f12
	srl	$8,$11,31
	andi	$9,$11,0x1
	bne	$9,$0,.L1522
	addu	$10,$8,$11

	b	.L1529
	sra	$11,$10,1

	.align	3
.L1521:
	bltz	$5,.L1528
	ldc1	$f1,%got_ofst(.LC14)($6)

	jr	$31
	nop

	.align	3
.L1525:
	ldc1	$f0,%got_ofst(.LC14)($6)
	b	.L1520
	move	$11,$5

	.align	3
.L1528:
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
	andi	$2,$5,0x1
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(__powisf2)))
	beq	$2,$0,.L1536
	ld	$6,%got_page(.LC16)($7)

	lwc1	$f0,%got_ofst(.LC16)($6)
	move	$11,$5
	.align	3
.L1533:
	mul.s	$f0,$f0,$f12
.L1531:
	srl	$3,$11,31
	addu	$4,$3,$11
	sra	$11,$4,1
	beq	$11,$0,.L1532
	srl	$8,$11,31

	andi	$9,$11,0x1
	mul.s	$f12,$f12,$f12
	bne	$9,$0,.L1533
	addu	$10,$8,$11

	sra	$11,$10,1
.L1540:
	mul.s	$f12,$f12,$f12
	srl	$8,$11,31
	andi	$9,$11,0x1
	bne	$9,$0,.L1533
	addu	$10,$8,$11

	b	.L1540
	sra	$11,$10,1

	.align	3
.L1532:
	bltz	$5,.L1539
	lwc1	$f1,%got_ofst(.LC16)($6)

	jr	$31
	nop

	.align	3
.L1536:
	lwc1	$f0,%got_ofst(.LC16)($6)
	b	.L1531
	move	$11,$5

	.align	3
.L1539:
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
	bne	$6,$0,.L1545
	sltu	$8,$3,$2

	bne	$8,$0,.L1546
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1545
	sltu	$10,$5,$4

	bne	$10,$0,.L1546
	nop

	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1545:
	jr	$31
	move	$2,$0

	.align	3
.L1546:
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
	bne	$6,$0,.L1552
	sltu	$8,$3,$2

	bne	$8,$0,.L1551
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1552
	nop

	jr	$31
	sltu	$2,$5,$4

	.align	3
.L1552:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1551:
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
	bne	$2,$0,.L1558
	sltu	$5,$7,$5

	bne	$5,$0,.L1559
	sltu	$7,$4,$6

	bne	$7,$0,.L1558
	sltu	$4,$6,$4

	bne	$4,$0,.L1559
	nop

	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1558:
	jr	$31
	move	$2,$0

	.align	3
.L1559:
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
	.globl	__clzdi2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
