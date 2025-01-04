	.file	1 "mini-libc.c"
	.section .mdebug.abi64
	.previous
	.nan	2008
	.module	fp=64
	.module	oddspreg
	.module	arch=mips3
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
	beq	$6,$0,.L67
	daddiu	$5,$5,1

	lbu	$2,0($4)
.L76:
	lbu	$3,0($5)
	daddiu	$6,$6,-1
	beq	$2,$3,.L65
	daddiu	$4,$4,1

	jr	$31
	subu	$2,$2,$3

	.align	3
.L67:
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
	beq	$6,$0,.L78
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

.L78:
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
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(memset)))
	beq	$6,$0,.L92
	move	$16,$4

	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	andi	$5,$5,0x00ff

.L92:
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
	daddiu	$6,$6,-1

	lbu	$2,0($4)
	bne	$2,$0,.L143
	daddu	$9,$4,$6

	b	.L142
	lbu	$3,0($5)

	.align	3
.L155:
	beq	$4,$9,.L142
	nop

	bne	$3,$2,.L142
	daddiu	$4,$4,1

	lbu	$2,0($4)
	beql	$2,$0,.L154
	lbu	$3,1($5)

	move	$5,$7
.L143:
	lbu	$3,0($5)
	bne	$3,$0,.L155
	daddiu	$7,$5,1

.L142:
	jr	$31
	subu	$2,$2,$3

	.align	3
.L147:
	jr	$31
	move	$2,$0

	.align	3
.L154:
	jr	$31
	subu	$2,$2,$3

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
	bne	$2,$0,.L166
	daddiu	$3,$6,-2

	sltu	$7,$3,14
	bne	$7,$0,.L158
	or	$8,$5,$4

	andi	$9,$8,0x7
	bne	$9,$0,.L158
	dsrl	$11,$6,4

	dsll	$12,$11,4
	dsrl	$13,$6,1
	move	$25,$4
	move	$3,$5
	daddu	$10,$4,$12
	.align	3
.L159:
	ld	$15,0($25)
	ld	$24,8($25)
	daddiu	$3,$3,16
	dmtc1	$15,$f0
	dmtc1	$24,$f1
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
	bne	$25,$10,.L159
	sdc1	$f16,-8($3)

	dsll	$10,$11,4
	dsll	$11,$11,3
	daddu	$5,$5,$12
	dsubu	$25,$6,$10
	beq	$13,$11,.L166
	daddu	$12,$4,$12

	lbu	$13,1($12)
	lbu	$6,0($12)
	slt	$4,$25,4
	sb	$13,0($5)
	bne	$4,$0,.L166
	sb	$6,1($5)

	lbu	$3,3($12)
	lbu	$8,2($12)
	slt	$9,$25,6
	sb	$3,2($5)
	bne	$9,$0,.L166
	sb	$8,3($5)

	lbu	$15,5($12)
	lbu	$24,4($12)
	slt	$7,$25,8
	sb	$15,4($5)
	bne	$7,$0,.L166
	sb	$24,5($5)

	lbu	$2,7($12)
	lbu	$10,6($12)
	slt	$11,$25,10
	sb	$2,6($5)
	bne	$11,$0,.L166
	sb	$10,7($5)

	lbu	$13,9($12)
	lbu	$6,8($12)
	slt	$4,$25,12
	sb	$13,8($5)
	bne	$4,$0,.L166
	sb	$6,9($5)

	lbu	$8,11($12)
	lbu	$9,10($12)
	slt	$25,$25,14
	sb	$8,10($5)
	bne	$25,$0,.L166
	sb	$9,11($5)

	lbu	$3,13($12)
	lbu	$12,12($12)
	sb	$3,12($5)
	jr	$31
	sb	$12,13($5)

	.align	3
.L158:
	dsrl	$15,$6,1
	dsll	$24,$15,1
	daddu	$7,$4,$24
	.align	3
.L161:
	lbu	$2,1($4)
	lbu	$10,0($4)
	daddiu	$4,$4,2
	sb	$2,0($5)
	sb	$10,1($5)
	bne	$7,$4,.L161
	daddiu	$5,$5,2

.L166:
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
	beq	$4,$2,.L173
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

	.align	3
.L173:
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
	sltu	$3,$4,32
	bne	$3,$0,.L178
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

	.align	3
.L178:
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
	beq	$4,$2,.L190
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

	.align	3
.L190:
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
	sltu	$3,$4,32
	bne	$3,$0,.L201
	li	$2,1			# 0x1

	addiu	$6,$4,-127
	sltu	$7,$6,33
	beq	$7,$0,.L200
	addiu	$8,$4,-8232

.L201:
	jr	$31
	nop

	.align	3
.L200:
	sltu	$9,$8,2
	bne	$9,$0,.L201
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$10,$2,7
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
	bne	$2,$0,.L212
	sltu	$3,$4,8232

	bne	$3,$0,.L209
	addiu	$6,$4,-8234

	li	$7,47062			# 0xb7d6
	sltu	$8,$6,$7
	bne	$8,$0,.L209
	li	$9,-65536			# 0xffffffffffff0000

	addiu	$10,$9,8192
	addu	$11,$4,$10
	sltu	$12,$11,8185
	bne	$12,$0,.L209
	addiu	$13,$9,4

	li	$14,1048576			# 0x100000
	addu	$15,$4,$13
	addiu	$24,$14,4
	sltu	$25,$15,$24
	beq	$25,$0,.L210
	andi	$4,$4,0xfffe

	xori	$2,$4,0xfffe
	jr	$31
	sltu	$2,$0,$2

	.align	3
.L209:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L212:
	addiu	$3,$4,1
	andi	$6,$3,0x7f
	sltu	$7,$6,33
	jr	$31
	sltu	$2,$7,1

	.align	3
.L210:
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
	addiu	$3,$4,-48
	sltu	$2,$3,10
	bne	$2,$0,.L216
	ori	$4,$4,0x20

	addiu	$6,$4,-97
	jr	$31
	sltu	$2,$6,6

	.align	3
.L216:
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
	c.un.d	$f12,$f12
	nop
	bc1t	.L223
	nop

	c.un.d	$f13,$f13
	nop
	bc1t	.L224
	nop

	c.lt.d	$f13,$f12
	nop
	bc1f	.L227
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

	.align	3
.L227:
	dmtc1	$0,$f0
	jr	$31
	nop

	.align	3
.L223:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L224:
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
	c.un.s	$f12,$f12
	nop
	bc1t	.L232
	nop

	c.un.s	$f13,$f13
	nop
	bc1t	.L233
	nop

	c.lt.s	$f13,$f12
	nop
	bc1f	.L236
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

	.align	3
.L236:
	mtc1	$0,$f0
	jr	$31
	nop

	.align	3
.L232:
	jr	$31
	mov.s	$f0,$f12

	.align	3
.L233:
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
	c.un.d	$f12,$f12
	daddiu	$sp,$sp,-16
	bc1t	.L244
	sdc1	$f13,0($sp)

	c.un.d	$f13,$f13
	dmfc1	$2,$f12
	bc1t	.L245
	mov.d	$f0,$f13

	ld	$4,0($sp)
	dsrl	$6,$2,63
	dsrl	$7,$4,63
	beq	$6,$7,.L240
	nop

	beq	$6,$0,.L245
	nop

.L238:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L240:
	c.lt.d	$f12,$f13
	nop
	bc1t	.L238
	nop

.L245:
	dmtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L244:
	b	.L238
	mov.d	$f0,$f13

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
	c.un.s	$f12,$f12
	daddiu	$sp,$sp,-16
	bc1t	.L256
	swc1	$f13,0($sp)

	c.un.s	$f13,$f13
	mfc1	$2,$f12
	bc1t	.L257
	mov.s	$f0,$f13

	lw	$3,0($sp)
	li	$5,-2147483648			# 0xffffffff80000000
	and	$7,$2,$5
	and	$8,$3,$5
	beq	$7,$8,.L252
	move	$9,$7

	beq	$9,$0,.L257
	nop

.L250:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L252:
	c.lt.s	$f12,$f13
	nop
	bc1t	.L250
	nop

.L257:
	mtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L256:
	b	.L250
	mov.s	$f0,$f13

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
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$28,96($sp)
	sd	$19,56($sp)
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	dmfc1	$19,$f12
	daddu	$28,$28,$25
	dmfc1	$9,$f13
	sd	$17,40($sp)
	sd	$16,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	dmfc1	$17,$f14
	dmfc1	$16,$f15
	dmtc1	$19,$f12
	dmtc1	$19,$f14
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$9,$f15
	dmtc1	$9,$f13
	sd	$18,48($sp)
	sd	$31,104($sp)
	sd	$23,88($sp)
	sd	$22,80($sp)
	sd	$21,72($sp)
	sd	$20,64($sp)
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$18,$9

	bne	$2,$0,.L262
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$17,$f14
	dmtc1	$17,$f12
	dmtc1	$16,$f15
	dmtc1	$16,$f13
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L269
	dsrl	$2,$18,63

	dsrl	$3,$16,63
	beql	$2,$3,.L264
	sd	$17,0($sp)

	beql	$2,$0,.L274
	move	$17,$19

.L262:
	ld	$31,104($sp)
.L275:
	ld	$28,96($sp)
	ld	$23,88($sp)
	ld	$22,80($sp)
	ld	$21,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	dmtc1	$16,$f2
	dmtc1	$17,$f0
	ld	$16,32($sp)
	ld	$17,40($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L264:
	sd	$19,16($sp)
	ldc1	$f14,0($sp)
	ldc1	$f12,16($sp)
	sd	$16,8($sp)
	sd	$18,24($sp)
	ld	$25,%call16(__lttf2)($28)
	ldc1	$f15,8($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f13,24($sp)

	bltz	$2,.L275
	ld	$31,104($sp)

.L269:
	move	$17,$19
.L274:
	b	.L262
	move	$16,$18

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
	c.un.d	$f12,$f12
	daddiu	$sp,$sp,-16
	dmfc1	$2,$f13
	mov.d	$f0,$f13
	bc1t	.L276
	sdc1	$f12,0($sp)

	c.un.d	$f13,$f13
	nop
	bc1t	.L283
	ld	$3,0($sp)

	dsrl	$7,$2,63
	dsrl	$6,$3,63
	beq	$6,$7,.L278
	mov.d	$f0,$f12

	beq	$6,$0,.L288
	nop

.L276:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L278:
	c.lt.d	$f12,$f13
	nop
	bc1t	.L276
	nop

.L288:
	dmtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L283:
	b	.L276
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
	c.un.s	$f12,$f12
	daddiu	$sp,$sp,-16
	mfc1	$2,$f13
	mov.s	$f0,$f13
	bc1t	.L289
	swc1	$f12,0($sp)

	c.un.s	$f13,$f13
	nop
	bc1t	.L296
	lw	$4,0($sp)

	li	$5,-2147483648			# 0xffffffff80000000
	and	$8,$2,$5
	and	$7,$4,$5
	mov.s	$f0,$f12
	beq	$7,$8,.L291
	move	$9,$7

	beq	$9,$0,.L301
	nop

.L289:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L291:
	c.lt.s	$f12,$f13
	nop
	bc1t	.L289
	nop

.L301:
	mtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L296:
	b	.L289
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
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$28,96($sp)
	sd	$17,40($sp)
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	dmfc1	$17,$f12
	daddu	$28,$28,$25
	dmfc1	$9,$f13
	sd	$19,56($sp)
	sd	$18,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	dmfc1	$19,$f14
	dmfc1	$18,$f15
	dmtc1	$17,$f12
	dmtc1	$17,$f14
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$9,$f15
	dmtc1	$9,$f13
	sd	$16,32($sp)
	sd	$31,104($sp)
	sd	$23,88($sp)
	sd	$22,80($sp)
	sd	$21,72($sp)
	sd	$20,64($sp)
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$16,$9

	bne	$2,$0,.L308
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$19,$f14
	dmtc1	$19,$f12
	dmtc1	$18,$f15
	dmtc1	$18,$f13
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L302
	dsrl	$2,$16,63

	dsrl	$3,$18,63
	beql	$2,$3,.L304
	sd	$19,0($sp)

	beql	$2,$0,.L314
	move	$17,$19

.L302:
	ld	$31,104($sp)
.L315:
	ld	$28,96($sp)
	ld	$23,88($sp)
	ld	$22,80($sp)
	ld	$21,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	dmtc1	$16,$f2
	dmtc1	$17,$f0
	ld	$16,32($sp)
	ld	$17,40($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L304:
	sd	$17,16($sp)
	ldc1	$f14,0($sp)
	ldc1	$f12,16($sp)
	sd	$18,8($sp)
	sd	$16,24($sp)
	ld	$25,%call16(__lttf2)($28)
	ldc1	$f15,8($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f13,24($sp)

	bltz	$2,.L315
	ld	$31,104($sp)

.L308:
	move	$17,$19
.L314:
	b	.L302
	move	$16,$18

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
	beq	$4,$0,.L319
	daddiu	$7,$7,%lo(%neg(%gp_rel(l64a)))

	ld	$8,%got_page(s.0)($7)
	ld	$6,%got_page(digits)($7)
	move	$3,$4
	daddiu	$2,$8,%got_ofst(s.0)
	move	$5,$2
	daddiu	$9,$6,%got_ofst(digits)
	.align	3
.L318:
	andi	$10,$3,0x3f
	daddu	$11,$9,$10
	lbu	$12,0($11)
	srl	$3,$3,6
	daddiu	$5,$5,1
	bne	$3,$0,.L318
	sb	$12,-1($5)

	jr	$31
	sb	$0,0($5)

	.align	3
.L319:
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
	ld	$2,%got_page(seed)($3)
	addiu	$4,$4,-1
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
	daddu	$5,$5,$25
	daddiu	$5,$5,%lo(%neg(%gp_rel(rand)))
	ld	$3,%got_page(seed)($5)
	li	$2,1481703424			# 0x58510000
	ori	$4,$2,0xf42d
	dsll	$6,$4,16
	ld	$7,%got_ofst(seed)($3)
	daddiu	$8,$6,19605
	dsll	$9,$8,16
	daddiu	$10,$9,32557
	dmult	$7,$10
	mflo	$11
	daddiu	$12,$11,1
	sd	$12,%got_ofst(seed)($3)
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
	beql	$5,$0,.L333
	sd	$0,8($4)

	ld	$2,0($5)
	sd	$5,8($4)
	sd	$2,0($4)
	sd	$4,0($5)
	ld	$5,0($4)
	bnel	$5,$0,.L335
	sd	$4,8($5)

.L335:
	jr	$31
	nop

	.align	3
.L333:
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
	beql	$2,$0,.L347
	ld	$4,8($4)

	ld	$3,8($4)
	sd	$3,8($2)
	ld	$4,8($4)
.L347:
	bnel	$4,$0,.L346
	sd	$2,0($4)

.L346:
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
	sd	$19,32($sp)
	ld	$19,0($6)
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
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
	beq	$19,$0,.L349
	move	$18,$7

	move	$22,$8
	move	$16,$5
	b	.L351
	move	$17,$0

	.align	3
.L364:
	beq	$19,$17,.L349
	daddu	$16,$16,$18

.L351:
	move	$5,$16
	move	$25,$22
	jalr	$25
	move	$4,$20

	move	$21,$16
	bne	$2,$0,.L364
	daddiu	$17,$17,1

.L348:
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	move	$2,$21
	ld	$21,48($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.align	3
.L349:
	dmult	$18,$19
	daddiu	$2,$19,1
	sd	$2,0($23)
	mflo	$21
	beq	$18,$0,.L348
	daddu	$21,$fp,$21

	ld	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$21

	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	move	$2,$21
	ld	$21,48($sp)
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
	beq	$20,$0,.L366
	sd	$16,8($sp)

	move	$18,$4
	move	$21,$7
	move	$19,$8
	move	$16,$5
	b	.L368
	move	$17,$0

	.align	3
.L377:
	beq	$20,$17,.L366
	daddu	$16,$16,$21

.L368:
	move	$5,$16
	move	$25,$19
	jalr	$25
	move	$4,$18

	move	$22,$16
	bne	$2,$0,.L377
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
.L366:
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
	sra	$2,$4,31
	xor	$4,$2,$4
	jr	$31
	subu	$2,$4,$2

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
.L387:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L381
	sltu	$6,$2,5

	bnel	$6,$0,.L387
	daddiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,.L382
	li	$8,45			# 0x2d

	bne	$5,$8,.L400
	addiu	$14,$5,-48

	lb	$12,1($4)
	addiu	$14,$12,-48
	sltu	$13,$14,10
	beq	$13,$0,.L392
	daddiu	$4,$4,1

	li	$24,1			# 0x1
.L385:
	move	$2,$0
	.align	3
.L389:
	lb	$5,1($4)
	sll	$25,$2,2
	addu	$3,$25,$2
	sll	$10,$3,1
	move	$7,$14
	subu	$2,$10,$14
	addiu	$14,$5,-48
	sltu	$6,$14,10
	bne	$6,$0,.L389
	daddiu	$4,$4,1

	bne	$24,$0,.L401
	nop

	jr	$31
	subu	$2,$7,$10

	.align	3
.L381:
	b	.L387
	daddiu	$4,$4,1

	.align	3
.L400:
	sltu	$15,$14,10
	bne	$15,$0,.L385
	move	$24,$0

.L392:
	move	$2,$0
.L401:
	jr	$31
	nop

	.align	3
.L382:
	lb	$10,1($4)
	move	$24,$0
	addiu	$14,$10,-48
	sltu	$11,$14,10
	bne	$11,$0,.L385
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
.L409:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L403
	sltu	$6,$2,5

	bnel	$6,$0,.L409
	daddiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,.L404
	li	$8,45			# 0x2d

	bne	$5,$8,.L422
	addiu	$14,$5,-48

	lb	$12,1($4)
	addiu	$14,$12,-48
	sltu	$13,$14,10
	beq	$13,$0,.L414
	daddiu	$4,$4,1

	li	$24,1			# 0x1
.L407:
	move	$2,$0
	.align	3
.L411:
	lb	$25,1($4)
	dsll	$3,$2,2
	daddu	$5,$3,$2
	move	$6,$14
	addiu	$14,$25,-48
	dsll	$10,$5,1
	sltu	$7,$14,10
	daddiu	$4,$4,1
	bne	$7,$0,.L411
	dsubu	$2,$10,$6

	bne	$24,$0,.L423
	nop

	jr	$31
	dsubu	$2,$6,$10

	.align	3
.L403:
	b	.L409
	daddiu	$4,$4,1

	.align	3
.L422:
	sltu	$15,$14,10
	bne	$15,$0,.L407
	move	$24,$0

.L414:
	move	$2,$0
.L423:
	jr	$31
	nop

	.align	3
.L404:
	lb	$10,1($4)
	move	$24,$0
	addiu	$14,$10,-48
	sltu	$11,$14,10
	bne	$11,$0,.L407
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
.L429:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L425
	sltu	$6,$2,5

	bnel	$6,$0,.L429
	daddiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,.L426
	li	$11,45			# 0x2d

	beql	$5,$11,.L427
	lb	$12,1($4)

	addiu	$14,$5,-48
	sltu	$15,$14,10
	beq	$15,$0,.L436
	move	$24,$0

.L430:
	move	$2,$0
	.align	3
.L433:
	lb	$25,1($4)
	dsll	$3,$2,2
	daddu	$5,$3,$2
	move	$6,$14
	addiu	$14,$25,-48
	dsll	$8,$5,1
	sltu	$7,$14,10
	daddiu	$4,$4,1
	bne	$7,$0,.L433
	dsubu	$2,$8,$6

	bne	$24,$0,.L444
	nop

	jr	$31
	dsubu	$2,$6,$8

	.align	3
.L425:
	b	.L429
	daddiu	$4,$4,1

	.align	3
.L427:
	li	$24,1			# 0x1
	addiu	$14,$12,-48
	sltu	$13,$14,10
	bne	$13,$0,.L430
	daddiu	$4,$4,1

.L436:
	move	$2,$0
.L444:
	jr	$31
	nop

	.align	3
.L426:
	lb	$8,1($4)
	addiu	$14,$8,-48
	sltu	$10,$14,10
	beq	$10,$0,.L436
	daddiu	$4,$4,1

	b	.L430
	move	$24,$0

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
	beq	$6,$0,.L446
	sd	$16,8($sp)

	move	$16,$6
	move	$21,$4
	move	$19,$5
	move	$20,$7
	b	.L449
	move	$22,$8

	.align	3
.L459:
	beq	$2,$0,.L445
	dsubu	$16,$16,$18

	beq	$16,$0,.L446
	daddu	$19,$17,$20

.L449:
	dsrl	$18,$16,1
.L460:
	dmult	$18,$20
	move	$4,$21
	move	$25,$22
	daddiu	$16,$16,-1
	mflo	$17
	daddu	$17,$19,$17
	jalr	$25
	move	$5,$17

	bgez	$2,.L459
	nop

	move	$16,$18
	bne	$16,$0,.L460
	dsrl	$18,$16,1

.L446:
	move	$17,$0
.L445:
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
	sd	$fp,80($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$16,8($sp)
	sd	$31,88($sp)
	sd	$21,48($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	move	$22,$4
	move	$19,$5
	move	$20,$7
	move	$23,$8
	move	$fp,$9
	beq	$6,$0,.L466
	move	$16,$6

	.align	3
.L474:
	dsra	$18,$16,1
	.align	3
.L478:
	dmult	$18,$20
	move	$6,$fp
	move	$4,$22
	move	$25,$23
	sra	$21,$16,1
	addiu	$16,$16,-1
	sra	$16,$16,1
	mflo	$17
	daddu	$17,$19,$17
	jalr	$25
	move	$5,$17

	beq	$2,$0,.L477
	ld	$31,88($sp)

	blez	$2,.L464
	nop

	bne	$16,$0,.L474
	daddu	$19,$17,$20

.L466:
	move	$17,$0
	ld	$31,88($sp)
.L477:
	ld	$fp,80($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$16,8($sp)
	move	$2,$17
	ld	$17,16($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.align	3
.L464:
	beq	$18,$0,.L466
	move	$16,$21

	b	.L478
	dsra	$18,$16,1

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
	mtc1	$4,$f1
	mflo	$3
	mtc1	$3,$f0
	nop
	punpcklwd	$f2,$f0,$f1
	dmfc1	$5,$f2
	nop
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
	dsra	$2,$4,63
	xor	$4,$2,$4
	jr	$31
	dsubu	$2,$4,$2

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
	mfhi	$3
	mflo	$2
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
	dsra	$2,$4,63
	xor	$4,$2,$4
	jr	$31
	dsubu	$2,$4,$2

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
	mfhi	$3
	mflo	$2
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
	dsra	$2,$4,63
	xor	$4,$2,$4
	jr	$31
	dsubu	$2,$4,$2

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
	mfhi	$3
	mflo	$2
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
	bne	$2,$0,.L494
	nop

	jr	$31
	nop

	.align	3
.L496:
	beq	$2,$0,.L497
	daddiu	$4,$4,4

.L494:
	bnel	$5,$2,.L496
	lw	$2,4($4)

	jr	$31
	move	$2,$4

	.align	3
.L497:
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
	lw	$3,0($4)
	lw	$6,0($5)
	beql	$3,$6,.L512
	daddiu	$4,$4,4

	b	.L511
	slt	$4,$3,$6

	.align	3
.L505:
	lw	$3,0($4)
	lw	$6,0($5)
	bne	$3,$6,.L504
	daddiu	$4,$4,4

.L512:
	bne	$3,$0,.L505
	daddiu	$5,$5,4

.L504:
	slt	$4,$3,$6
.L511:
	bne	$4,$0,.L513
	li	$2,-1			# 0xffffffffffffffff

	slt	$2,$6,$3
.L513:
	jr	$31
	nop

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
.L515:
	lw	$6,0($5)
	daddiu	$3,$3,4
	daddiu	$5,$5,4
	bne	$6,$0,.L515
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
	beq	$2,$0,.L521
	move	$6,$4

	.align	3
.L520:
	lw	$3,4($6)
	bne	$3,$0,.L520
	daddiu	$6,$6,4

	dsubu	$4,$6,$4
	jr	$31
	dsra	$2,$4,2

	.align	3
.L521:
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
	bnel	$6,$0,.L539
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L536:
	beql	$2,$0,.L540
	lw	$6,0($4)

	daddiu	$4,$4,4
	beq	$6,$0,.L530
	daddiu	$5,$5,4

	lw	$2,0($4)
.L539:
	lw	$3,0($5)
	beq	$3,$2,.L536
	daddiu	$6,$6,-1

	lw	$6,0($4)
.L540:
	lw	$5,0($5)
	slt	$4,$6,$5
	beq	$4,$0,.L538
	slt	$2,$5,$6

	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L530:
	move	$2,$0
.L538:
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
	bnel	$6,$0,.L551
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L544:
	beq	$6,$0,.L545
	daddiu	$4,$4,4

	lw	$2,0($4)
.L551:
	bne	$2,$5,.L544
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L545:
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
	bnel	$6,$0,.L568
	lw	$3,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L555:
	daddiu	$4,$4,4
	beq	$6,$0,.L558
	daddiu	$5,$5,4

	lw	$3,0($4)
.L568:
	lw	$2,0($5)
	beq	$3,$2,.L555
	daddiu	$6,$6,-1

	lw	$6,0($4)
	lw	$5,0($5)
	slt	$4,$6,$5
	bne	$4,$0,.L566
	slt	$2,$5,$6

	jr	$31
	nop

	.align	3
.L558:
	jr	$31
	move	$2,$0

	.align	3
.L566:
	li	$2,-1			# 0xffffffffffffffff
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
	beq	$6,$0,.L571
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L571:
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
	beq	$4,$5,.L611
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$8,$6,2
	sltu	$10,$3,$8
	move	$7,$5
	bne	$10,$0,.L578
	daddiu	$14,$6,-1

	beq	$6,$0,.L611
	sltu	$11,$14,9

	bne	$11,$0,.L588
	move	$12,$4

	or	$12,$5,$4
	andi	$13,$12,0x7
	bne	$13,$0,.L608
	daddiu	$13,$5,4

	beq	$4,$13,.L589
	move	$15,$0

	dsrl	$14,$6,1
	.align	3
.L583:
	ldc1	$f0,0($7)
	daddiu	$15,$15,1
	daddiu	$7,$7,8
	sdc1	$f0,0($4)
	bne	$14,$15,.L583
	daddiu	$4,$4,8

	andi	$24,$6,0x1
	beq	$24,$0,.L611
	li	$25,-2			# 0xfffffffffffffffe

	and	$6,$6,$25
	dsll	$3,$6,2
	lwx	$5,$3($5)
	daddu	$8,$2,$3
	jr	$31
	sw	$5,0($8)

	.align	3
.L588:
	daddiu	$13,$5,4
.L582:
	b	.L586
	li	$10,-1			# 0xffffffffffffffff

	.align	3
.L609:
	daddiu	$13,$13,4
.L586:
	lw	$11,-4($13)
	daddiu	$14,$14,-1
	daddiu	$12,$12,4
	bne	$14,$10,.L609
	sw	$11,-4($12)

.L611:
	jr	$31
	nop

	.align	3
.L578:
	beq	$6,$0,.L611
	dsll	$24,$14,2

	li	$15,-4			# 0xfffffffffffffffc
	.align	3
.L581:
	lwx	$7,$24($5)
	daddu	$4,$2,$24
	daddiu	$24,$24,-4
	bne	$24,$15,.L581
	sw	$7,0($4)

	jr	$31
	nop

.L608:
.L589:
	b	.L582
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
	beq	$6,$0,.L631
	move	$2,$4

	daddiu	$4,$6,-1
	dsrl	$3,$2,2
	sltu	$7,$4,6
	bne	$7,$0,.L618
	andi	$8,$3,0x1

	beq	$8,$0,.L615
	move	$10,$2

	daddiu	$10,$2,4
	sw	$5,0($2)
	daddiu	$4,$6,-2
.L615:
	dmtc1	$5,$f0
	dsubu	$6,$6,$8
	punpcklwd	$f1,$f0,$f0
	dsll	$12,$8,2
	dmfc1	$14,$f1
	dsrl	$13,$6,1
	daddu	$24,$2,$12
	move	$15,$0
	.align	3
.L616:
	daddiu	$15,$15,1
	sd	$14,0($24)
	bne	$15,$13,.L616
	daddiu	$24,$24,8

	andi	$25,$6,0x1
	beq	$25,$0,.L631
	li	$3,-2			# 0xfffffffffffffffe

	and	$7,$6,$3
	dsll	$8,$7,2
	dsubu	$4,$4,$7
	daddu	$9,$10,$8
.L614:
	beq	$4,$0,.L631
	sw	$5,0($9)

	li	$10,1			# 0x1
	beq	$4,$10,.L631
	sw	$5,4($9)

	li	$6,2			# 0x2
	beq	$4,$6,.L631
	sw	$5,8($9)

	li	$12,3			# 0x3
	beq	$4,$12,.L631
	sw	$5,12($9)

	li	$13,4			# 0x4
	beq	$4,$13,.L631
	sw	$5,16($9)

	sw	$5,20($9)
.L631:
	jr	$31
	nop

.L618:
	b	.L614
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
	beq	$2,$0,.L633
	daddu	$7,$4,$6

	beq	$6,$0,.L666
	daddu	$5,$5,$6

	.align	3
.L635:
	lb	$3,-1($7)
	daddiu	$7,$7,-1
	daddiu	$5,$5,-1
	bne	$4,$7,.L635
	sb	$3,0($5)

.L666:
	jr	$31
	nop

	.align	3
.L633:
	bne	$4,$5,.L662
	nop

	jr	$31
	nop

	.align	3
.L662:
	beq	$6,$0,.L666
	daddiu	$3,$6,-1

	sltu	$7,$3,8
	bne	$7,$0,.L660
	or	$9,$5,$4

	andi	$10,$9,0x7
	bne	$10,$0,.L664
	daddiu	$2,$4,1

	dsubu	$11,$5,$2
	sltu	$12,$11,7
	bne	$12,$0,.L636
	dsrl	$13,$6,3

	dsll	$14,$13,3
	move	$24,$5
	daddu	$15,$4,$14
	.align	3
.L637:
	ldc1	$f0,0($4)
	daddiu	$4,$4,8
	daddiu	$24,$24,8
	bne	$15,$4,.L637
	sdc1	$f0,-8($24)

	daddu	$5,$5,$14
	beq	$6,$14,.L666
	dsubu	$25,$6,$14

	lb	$6,0($15)
	li	$4,1			# 0x1
	beq	$25,$4,.L666
	sb	$6,0($5)

	lb	$2,1($15)
	li	$3,2			# 0x2
	beq	$25,$3,.L666
	sb	$2,1($5)

	lb	$7,2($15)
	li	$9,3			# 0x3
	beq	$25,$9,.L666
	sb	$7,2($5)

	lb	$10,3($15)
	li	$11,4			# 0x4
	beq	$25,$11,.L666
	sb	$10,3($5)

	lb	$12,4($15)
	li	$13,5			# 0x5
	beq	$25,$13,.L666
	sb	$12,4($5)

	lb	$14,5($15)
	li	$24,6			# 0x6
	beq	$25,$24,.L666
	sb	$14,5($5)

	lb	$15,6($15)
	jr	$31
	sb	$15,6($5)

	.align	3
.L660:
	daddiu	$2,$4,1
.L636:
	.align	3
.L664:
	b	.L640
	daddu	$25,$4,$6

	.align	3
.L663:
	daddiu	$2,$2,1
.L640:
	lb	$6,-1($2)
	daddiu	$5,$5,1
	bne	$2,$25,.L663
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
	subu	$2,$0,$5
	jr	$31
	dror	$2,$4,$2

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
	subu	$2,$0,$5
	jr	$31
	dror	$2,$4,$2

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
	b	.L696
	li	$6,32			# 0x20

	.align	3
.L700:
	beq	$6,$2,.L699
	nop

.L696:
	srl	$5,$4,$3
	addiu	$2,$3,1
	andi	$8,$5,0x1
	beq	$8,$0,.L700
	move	$3,$2

	jr	$31
	nop

	.align	3
.L699:
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
	beq	$4,$0,.L709
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,.L708
	nop

	li	$2,1			# 0x1
	.align	3
.L703:
	dsra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,.L703
	addiu	$2,$2,1

.L709:
	jr	$31
	nop

.L708:
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
	ld	$3,%got_page(.LC0)($4)
	lwc1	$f0,%got_ofst(.LC0)($3)
	c.lt.s	$f12,$f0
	nop
	bc1t	.L716
	li	$2,1			# 0x1

	ld	$5,%got_page(.LC1)($4)
	lwc1	$f1,%got_ofst(.LC1)($5)
	c.lt.s	$f1,$f12
	nop
	bc1f	.L715
	li	$2,1			# 0x1

.L716:
	jr	$31
	nop

	.align	3
.L715:
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
	ld	$3,%got_page(.LC2)($4)
	ldc1	$f0,%got_ofst(.LC2)($3)
	c.lt.d	$f12,$f0
	nop
	bc1t	.L723
	li	$2,1			# 0x1

	ld	$5,%got_page(.LC3)($4)
	ldc1	$f1,%got_ofst(.LC3)($5)
	c.lt.d	$f1,$f12
	nop
	bc1f	.L722
	li	$2,1			# 0x1

.L723:
	jr	$31
	nop

	.align	3
.L722:
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
	sd	$17,8($sp)
	ldc1	$f14,%got_ofst(.LC4)($2)
	sd	$16,0($sp)
	sd	$31,40($sp)
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	sd	$19,24($sp)
	dmfc1	$17,$f12
	dmfc1	$16,$f13
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	sd	$18,16($sp)

	move	$3,$2
	bltz	$3,.L725
	li	$2,1			# 0x1

	ld	$4,%got_page(.LC5)($28)
	dmtc1	$17,$f12
	ld	$25,%call16(__gttf2)($28)
	ldc1	$f14,%got_ofst(.LC5)($4)
	dmtc1	$16,$f13
	.reloc	1f,R_MIPS_JALR,__gttf2
1:	jalr	$25
	ldc1	$f15,%got_ofst(.LC5+8)($4)

	slt	$2,$0,$2
.L725:
	ld	$31,40($sp)
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
	c.un.s	$f12,$f12
	lui	$4,%hi(%neg(%gp_rel(ldexpf)))
	daddu	$4,$4,$25
	mov.s	$f0,$f12
	bc1t	.L750
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexpf)))

	add.s	$f1,$f12,$f12
	c.eq.s	$f1,$f12
	nop
	bc1t	.L750
	nop

	bltz	$5,.L746
	ld	$2,%got_page(.LC6)($4)

	lwc1	$f2,%got_ofst(.LC6)($2)
.L734:
	andi	$6,$5,0x1
	beq	$6,$0,.L749
	srl	$7,$5,31

	.align	3
.L736:
	mul.s	$f0,$f0,$f2
	srl	$7,$5,31
.L749:
	addu	$5,$7,$5
	sra	$5,$5,1
	beq	$5,$0,.L750
	srl	$8,$5,31

	andi	$9,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$9,$0,.L736
	addu	$10,$8,$5

	sra	$5,$10,1
.L748:
	srl	$8,$5,31
	andi	$9,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$9,$0,.L736
	addu	$10,$8,$5

	b	.L748
	sra	$5,$10,1

.L750:
	jr	$31
	nop

	.align	3
.L746:
	ld	$3,%got_page(.LC7)($4)
	b	.L734
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
	c.un.d	$f12,$f12
	lui	$4,%hi(%neg(%gp_rel(ldexp)))
	daddu	$4,$4,$25
	mov.d	$f0,$f12
	bc1t	.L769
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexp)))

	add.d	$f1,$f12,$f12
	c.eq.d	$f1,$f12
	nop
	bc1t	.L769
	nop

	bltz	$5,.L765
	ld	$2,%got_page(.LC8)($4)

	ldc1	$f2,%got_ofst(.LC8)($2)
.L753:
	andi	$6,$5,0x1
	beq	$6,$0,.L768
	srl	$7,$5,31

	.align	3
.L755:
	mul.d	$f0,$f0,$f2
	srl	$7,$5,31
.L768:
	addu	$5,$7,$5
	sra	$5,$5,1
	beq	$5,$0,.L769
	srl	$8,$5,31

	andi	$9,$5,0x1
	mul.d	$f2,$f2,$f2
	bne	$9,$0,.L755
	addu	$10,$8,$5

	sra	$5,$10,1
.L767:
	srl	$8,$5,31
	andi	$9,$5,0x1
	mul.d	$f2,$f2,$f2
	bne	$9,$0,.L755
	addu	$10,$8,$5

	b	.L767
	sra	$5,$10,1

.L769:
	jr	$31
	nop

	.align	3
.L765:
	ld	$3,%got_page(.LC9)($4)
	b	.L753
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
	.frame	$sp,144,$31		# vars= 64, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	dmfc1	$10,$f12
	sd	$28,128($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	dmfc1	$11,$f13
	dmtc1	$10,$f14
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$11,$f15
	sd	$21,112($sp)
	sd	$20,104($sp)
	sd	$16,72($sp)
	sd	$31,136($sp)
	sd	$22,120($sp)
	sd	$19,96($sp)
	sd	$18,88($sp)
	sd	$17,80($sp)
	sd	$8,48($sp)
	sd	$9,56($sp)
	sd	$4,32($sp)
	sd	$5,40($sp)
	move	$20,$10
	move	$21,$11
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$16,$6

	bne	$2,$0,.L771
	ld	$25,%call16(__addtf3)($28)

	dmtc1	$20,$f14
	dmtc1	$20,$f12
	dmtc1	$21,$f15
	dmtc1	$21,$f13
	.reloc	1f,R_MIPS_JALR,__addtf3
1:	jalr	$25
	nop

	sdc1	$f0,16($sp)
	sd	$20,0($sp)
	ldc1	$f14,0($sp)
	ldc1	$f12,16($sp)
	sd	$21,8($sp)
	sdc1	$f2,24($sp)
	ldc1	$f15,8($sp)
	ld	$25,%call16(__netf2)($28)
	.reloc	1f,R_MIPS_JALR,__netf2
1:	jalr	$25
	ldc1	$f13,24($sp)

	beq	$2,$0,.L787
	ld	$31,136($sp)

	bltz	$16,.L786
	ld	$6,%got_page(.LC10)($28)

	ld	$4,%got_ofst(.LC10)($6)
	ld	$5,%got_ofst(.LC10+8)($6)
.L773:
	andi	$12,$16,0x1
	beq	$12,$0,.L788
	srl	$13,$16,31

	.align	3
.L775:
	dmtc1	$4,$f14
	dmtc1	$20,$f12
	ld	$25,%call16(__multf3)($28)
	dmtc1	$5,$f15
	dmtc1	$21,$f13
	sd	$4,0($sp)
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	sd	$5,8($sp)

	ld	$4,0($sp)
	ld	$5,8($sp)
	dmfc1	$20,$f0
	dmfc1	$21,$f2
	srl	$13,$16,31
.L788:
	addu	$16,$13,$16
	sra	$16,$16,1
	beq	$16,$0,.L787
	ld	$31,136($sp)

.L776:
	dmtc1	$4,$f14
	dmtc1	$4,$f12
	ld	$25,%call16(__multf3)($28)
	dmtc1	$5,$f15
	dmtc1	$5,$f13
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	nop

	dmfc1	$3,$f2
	srl	$14,$16,31
	andi	$15,$16,0x1
	dmfc1	$4,$f0
	move	$5,$3
	bne	$15,$0,.L775
	addu	$24,$14,$16

	b	.L776
	sra	$16,$24,1

	.align	3
.L771:
	ld	$31,136($sp)
	.align	3
.L787:
	ld	$28,128($sp)
	ld	$22,120($sp)
	ld	$19,96($sp)
	ld	$18,88($sp)
	ld	$17,80($sp)
	ld	$16,72($sp)
	dmtc1	$21,$f2
	dmtc1	$20,$f0
	ld	$21,112($sp)
	ld	$20,104($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.align	3
.L786:
	ld	$7,%got_page(.LC11)($28)
	ld	$4,%got_ofst(.LC11)($7)
	b	.L773
	ld	$5,%got_ofst(.LC11+8)($7)

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
	beq	$6,$0,.L802
	move	$2,$4

	daddiu	$3,$6,-1
	sltu	$4,$3,7
	bne	$4,$0,.L791
	or	$7,$2,$5

	andi	$8,$7,0x7
	bne	$8,$0,.L791
	dsrl	$9,$6,3

	dsll	$11,$9,3
	move	$15,$2
	daddu	$12,$5,$11
	.align	3
.L792:
	ld	$13,0($15)
	ld	$14,0($5)
	daddiu	$15,$15,8
	dmtc1	$13,$f0
	dmtc1	$14,$f1
	daddiu	$5,$5,8
	xor	$f2,$f0,$f1
	bne	$12,$5,.L792
	sdc1	$f2,-8($15)

	daddu	$25,$2,$11
	beq	$6,$11,.L802
	dsubu	$5,$6,$11

	lbu	$3,0($25)
	lbu	$4,0($12)
	li	$6,1			# 0x1
	xor	$7,$3,$4
	beq	$5,$6,.L802
	sb	$7,0($25)

	lbu	$8,1($25)
	lbu	$9,1($12)
	li	$11,2			# 0x2
	xor	$13,$9,$8
	beq	$5,$11,.L802
	sb	$13,1($25)

	lbu	$14,2($25)
	lbu	$15,2($12)
	li	$24,3			# 0x3
	xor	$3,$15,$14
	beq	$5,$24,.L802
	sb	$3,2($25)

	lbu	$7,3($25)
	lbu	$4,3($12)
	li	$6,4			# 0x4
	xor	$8,$4,$7
	beq	$5,$6,.L802
	sb	$8,3($25)

	lbu	$9,4($25)
	lbu	$11,4($12)
	li	$13,5			# 0x5
	xor	$14,$11,$9
	beq	$5,$13,.L802
	sb	$14,4($25)

	lbu	$15,5($25)
	lbu	$24,5($12)
	li	$3,6			# 0x6
	xor	$7,$24,$15
	beq	$5,$3,.L802
	sb	$7,5($25)

	lbu	$5,6($25)
	lbu	$12,6($12)
	xor	$4,$12,$5
	jr	$31
	sb	$4,6($25)

	.align	3
.L791:
	daddu	$25,$5,$6
	move	$9,$2
	.align	3
.L794:
	lbu	$6,0($9)
	lbu	$8,0($5)
	daddiu	$9,$9,1
	daddiu	$5,$5,1
	xor	$11,$8,$6
	bne	$25,$5,.L794
	sb	$11,-1($9)

.L802:
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
	beq	$3,$0,.L810
	move	$2,$4

	move	$9,$4
	.align	3
.L805:
	lb	$7,1($9)
	bne	$7,$0,.L805
	daddiu	$9,$9,1

	beq	$6,$0,.L807
	nop

	lb	$4,0($5)
	.align	3
.L822:
	daddiu	$6,$6,-1
	daddiu	$5,$5,1
	beq	$4,$0,.L823
	sb	$4,0($9)

	daddiu	$9,$9,1
.L819:
	bnel	$6,$0,.L822
	lb	$4,0($5)

.L807:
	jr	$31
	sb	$0,0($9)

.L823:
	jr	$31
	nop

	.align	3
.L810:
	b	.L819
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
	beq	$5,$0,.L836
	move	$2,$0

	lbux	$3,$2($4)
.L834:
	bnel	$3,$0,.L827
	daddiu	$2,$2,1

.L836:
	jr	$31
	nop

	.align	3
.L827:
	bnel	$5,$2,.L834
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
	beq	$7,$0,.L842
	move	$2,$4

.L838:
	b	.L841
	move	$3,$5

	.align	3
.L840:
	beq	$6,$7,.L848
	nop

.L841:
	lb	$6,0($3)
	bne	$6,$0,.L840
	daddiu	$3,$3,1

	lb	$7,1($2)
	bne	$7,$0,.L838
	daddiu	$2,$2,1

.L842:
	move	$2,$0
.L848:
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
	move	$6,$0
	.align	3
.L852:
	lb	$3,0($4)
	bne	$3,$5,.L851
	move	$2,$6

	move	$2,$4
.L851:
	move	$6,$2
	bne	$3,$0,.L852
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
	beq	$8,$0,.L867
	nop

	move	$2,$5
	.align	3
.L858:
	lb	$3,1($2)
	bne	$3,$0,.L858
	daddiu	$2,$2,1

	beq	$2,$5,.L867
	dsubu	$10,$2,$5

	b	.L876
	daddiu	$13,$10,-1

	.align	3
.L879:
	beq	$6,$0,.L878
	daddiu	$4,$4,1

.L876:
	lb	$6,0($4)
	bne	$6,$8,.L879
	andi	$14,$6,0x00ff

	daddu	$9,$4,$13
	move	$15,$5
	b	.L860
	move	$12,$4

	.align	3
.L880:
	beql	$12,$9,.L881
	lbu	$24,0($15)

	bne	$7,$14,.L861
	daddiu	$12,$12,1

	lbu	$14,0($12)
	beq	$14,$0,.L861
	daddiu	$15,$15,1

.L860:
	lbu	$7,0($15)
	bne	$7,$0,.L880
	nop

.L861:
	lbu	$24,0($15)
.L881:
	beq	$24,$14,.L867
	nop

	b	.L876
	daddiu	$4,$4,1

	.align	3
.L878:
	jr	$31
	move	$2,$0

	.align	3
.L867:
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
	nop
	c.lt.d	$f12,$f1
	nop
	bc1t	.L893
	mov.d	$f0,$f12

	c.lt.d	$f1,$f12
	nop
	bc1f	.L894
	nop

	c.lt.d	$f13,$f1
	nop
	bc1t	.L885
	nop

.L894:
	jr	$31
	nop

	.align	3
.L893:
	c.lt.d	$f1,$f13
	nop
	bc1f	.L894
	nop

.L885:
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
	beq	$7,$0,.L912
	move	$2,$4

	sltu	$3,$5,$7
	bne	$3,$0,.L906
	dsubu	$5,$5,$7

	daddu	$9,$4,$5
	sltu	$4,$9,$4
	bne	$4,$0,.L906
	daddiu	$7,$7,-1

	lb	$13,0($6)
	daddiu	$6,$6,1
	b	.L901
	move	$12,$13

	.align	3
.L905:
	move	$2,$4
.L897:
	sltu	$10,$9,$2
	bnel	$10,$0,.L912
	move	$2,$0

.L901:
	lb	$8,0($2)
	bne	$8,$12,.L905
	daddiu	$4,$2,1

	beq	$7,$0,.L912
	move	$5,$6

.L900:
	move	$25,$4
	b	.L898
	daddu	$8,$4,$7

	.align	3
.L899:
	beq	$25,$8,.L912
	nop

.L898:
	lbu	$15,0($25)
	lbu	$24,0($5)
	daddiu	$25,$25,1
	beq	$15,$24,.L899
	daddiu	$5,$5,1

	sltu	$2,$9,$4
	bnel	$2,$0,.L912
	move	$2,$0

	lb	$11,0($4)
	bne	$11,$13,.L897
	daddiu	$2,$4,1

	move	$3,$4
	move	$5,$6
	move	$4,$2
	b	.L900
	move	$2,$3

	.align	3
.L906:
	move	$2,$0
.L912:
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
	beq	$6,$0,.L914
	move	$17,$4

	ld	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

.L914:
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
	c.lt.d	$f12,$f0
	daddu	$6,$6,$25
	bc1t	.L943
	daddiu	$6,$6,%lo(%neg(%gp_rel(frexp)))

	ld	$8,%got_page(.LC14)($6)
	ldc1	$f1,%got_ofst(.LC14)($8)
	c.le.d	$f1,$f12
	nop
	bc1f	.L944
	move	$9,$0

.L922:
	ld	$10,%got_page(.LC9)($6)
	ldc1	$f7,%got_ofst(.LC14)($8)
	move	$7,$0
	ldc1	$f8,%got_ofst(.LC9)($10)
	.align	3
.L928:
	mul.d	$f12,$f12,$f8
	c.le.d	$f7,$f12
	nop
	bc1t	.L928
	addiu	$7,$7,1

	mov.d	$f0,$f12
	beq	$9,$0,.L948
	sw	$7,0($5)

.L946:
	jr	$31
	neg.d	$f0,$f12

	.align	3
.L944:
	ld	$2,%got_page(.LC9)($6)
	ldc1	$f2,%got_ofst(.LC9)($2)
	c.lt.d	$f12,$f2
	nop
	bc1fl	.L947
	mov.d	$f0,$f12

	c.eq.d	$f12,$f0
	nop
	bc1f	.L923
	mov.d	$f3,$f12

	mov.d	$f0,$f12
.L947:
	jr	$31
	sw	$0,0($5)

	.align	3
.L943:
	ld	$3,%got_page(.LC12)($6)
	ldc1	$f4,%got_ofst(.LC12)($3)
	c.le.d	$f12,$f4
	nop
	bc1f	.L945
	neg.d	$f3,$f12

	ld	$8,%got_page(.LC14)($6)
	mov.d	$f12,$f3
	b	.L922
	li	$9,1			# 0x1

	.align	3
.L945:
	ld	$4,%got_page(.LC13)($6)
	ldc1	$f5,%got_ofst(.LC13)($4)
	c.lt.d	$f5,$f12
	nop
	bc1f	.L947
	mov.d	$f0,$f12

	ld	$2,%got_page(.LC9)($6)
	li	$9,1			# 0x1
.L923:
	ldc1	$f6,%got_ofst(.LC9)($2)
	mov.d	$f12,$f3
	move	$7,$0
	.align	3
.L930:
	add.d	$f12,$f12,$f12
	c.lt.d	$f12,$f6
	nop
	bc1t	.L930
	addiu	$7,$7,-1

	mov.d	$f0,$f12
	bne	$9,$0,.L946
	sw	$7,0($5)

.L948:
	jr	$31
	nop

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
	beq	$4,$0,.L956
	move	$2,$0

	.align	3
.L951:
	andi	$3,$4,0x1
	dsubu	$7,$0,$3
	and	$8,$7,$5
	dsrl	$4,$4,1
	daddu	$2,$2,$8
	bne	$4,$0,.L951
	dsll	$5,$5,1

.L956:
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
	sltu	$7,$5,$4
	beq	$7,$0,.L986
	li	$2,32			# 0x20

	b	.L958
	li	$24,1			# 0x1

	.align	3
.L962:
	sll	$5,$5,1
	sltu	$8,$5,$4
	beq	$8,$0,.L960
	sll	$24,$24,1

	beq	$2,$0,.L961
	nop

.L958:
	bgez	$5,.L962
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L968:
	sltu	$12,$4,$5
	srl	$9,$24,1
	srl	$13,$5,1
	subu	$14,$4,$5
	bne	$12,$0,.L965
	sltu	$10,$12,1

	move	$4,$14
.L965:
	beq	$10,$0,.L967
	move	$15,$0

	move	$15,$24
.L967:
	move	$24,$9
	or	$2,$15,$2
	bne	$24,$0,.L968
	move	$5,$13

.L961:
	bne	$6,$0,.L988
	nop

	jr	$31
	nop

	.align	3
.L960:
	bne	$24,$0,.L968
	move	$2,$0

	b	.L961
	nop

	.align	3
.L988:
	jr	$31
	move	$2,$4

.L986:
	sltu	$3,$4,$5
	sltu	$2,$3,1
	bne	$3,$0,.L961
	subu	$5,$4,$5

	b	.L961
	move	$4,$5

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
	beq	$4,$5,.L991
	xor	$6,$4,$5

	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbqi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbqi2)))
	ld	$25,%call16(__clzdi2)($28)
	sll	$4,$6,8
	dsll	$7,$4,32
	sd	$31,8($sp)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	dsrl	$4,$7,32

	ld	$31,8($sp)
	ld	$28,0($sp)
	addiu	$2,$2,-33
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L991:
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
	beq	$2,$3,.L998
	xor	$4,$4,$3

	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbdi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbdi2)))
	ld	$25,%call16(__clzdi2)($28)
	sd	$31,8($sp)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	ld	$31,8($sp)
	ld	$28,0($sp)
	addiu	$2,$2,-1
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L998:
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
	beq	$4,$0,.L1010
	move	$2,$0

	.align	3
.L1005:
	andi	$3,$4,0x1
	subu	$7,$0,$3
	and	$8,$7,$5
	srl	$4,$4,1
	addu	$2,$8,$2
	bne	$4,$0,.L1005
	sll	$5,$5,1

.L1010:
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
	bne	$2,$0,.L1015
	and	$12,$6,$9

	dsll	$3,$6,32
	dsrl	$8,$3,32
	daddu	$10,$5,$8
	sltu	$13,$10,$4
	beq	$13,$0,.L1047
	nop

.L1015:
	beq	$7,$0,.L1048
	dsll	$8,$7,3

	move	$2,$5
	move	$3,$4
	daddu	$10,$8,$5
	.align	3
.L1018:
	ld	$13,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$10,.L1018
	sd	$13,-8($3)

	sltu	$14,$12,$6
	beq	$14,$0,.L1053
	subu	$15,$6,$12

	addiu	$24,$15,-1
	dsll	$25,$12,32
	sltu	$7,$24,8
	bne	$7,$0,.L1023
	dsrl	$9,$25,32

	daddiu	$8,$9,1
	daddu	$3,$4,$9
	daddu	$10,$5,$8
	dsubu	$13,$3,$10
	sltu	$14,$13,7
	bne	$14,$0,.L1023
	daddu	$2,$5,$9

	or	$24,$2,$3
	andi	$25,$24,0x7
	bne	$25,$0,.L1051
	daddu	$25,$5,$9

	srl	$9,$15,3
	dsll	$7,$9,32
	dsrl	$8,$7,32
	dsll	$10,$8,3
	daddu	$13,$2,$10
	.align	3
.L1021:
	ldc1	$f0,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$13,.L1021
	sdc1	$f0,-8($3)

	li	$14,-8			# 0xfffffffffffffff8
	and	$24,$15,$14
	andi	$15,$15,0x7
	beq	$15,$0,.L1053
	addu	$12,$24,$12

	dsll	$25,$12,32
	dsrl	$7,$25,32
	daddu	$9,$5,$7
	lb	$10,0($9)
	addiu	$13,$12,1
	daddu	$2,$4,$7
	sltu	$8,$13,$6
	beq	$8,$0,.L1053
	sb	$10,0($2)

	dsll	$3,$13,32
	dsrl	$14,$3,32
	daddu	$24,$5,$14
	lb	$15,0($24)
	addiu	$25,$12,2
	daddu	$7,$4,$14
	sltu	$9,$25,$6
	beq	$9,$0,.L1053
	sb	$15,0($7)

	dsll	$10,$25,32
	dsrl	$13,$10,32
	daddu	$2,$5,$13
	lb	$14,0($2)
	addiu	$3,$12,3
	daddu	$24,$4,$13
	sltu	$8,$3,$6
	beq	$8,$0,.L1053
	sb	$14,0($24)

	dsll	$15,$3,32
	dsrl	$25,$15,32
	daddu	$7,$5,$25
	lb	$9,0($7)
	addiu	$10,$12,4
	daddu	$13,$4,$25
	sltu	$2,$10,$6
	beq	$2,$0,.L1053
	sb	$9,0($13)

	dsll	$14,$10,32
	dsrl	$24,$14,32
	daddu	$3,$5,$24
	lb	$15,0($3)
	addiu	$25,$12,5
	daddu	$7,$4,$24
	sltu	$8,$25,$6
	beq	$8,$0,.L1053
	sb	$15,0($7)

	dsll	$9,$25,32
	dsrl	$10,$9,32
	daddu	$13,$5,$10
	lb	$14,0($13)
	addiu	$12,$12,6
	daddu	$2,$4,$10
	sltu	$6,$12,$6
	beq	$6,$0,.L1053
	sb	$14,0($2)

	dsll	$24,$12,32
	dsrl	$15,$24,32
	daddu	$5,$5,$15
	lb	$3,0($5)
	daddu	$4,$4,$15
	jr	$31
	sb	$3,0($4)

	.align	3
.L1048:
	dsll	$7,$12,32
	beq	$6,$0,.L1053
	dsrl	$9,$7,32

	.align	3
.L1023:
	daddu	$25,$5,$9
	.align	3
.L1051:
	daddu	$7,$4,$9
	lb	$8,0($25)
	daddiu	$9,$9,1
	sll	$10,$9,0
	sltu	$13,$10,$6
	bne	$13,$0,.L1023
	sb	$8,0($7)

.L1053:
	jr	$31
	nop

	.align	3
.L1047:
	beq	$6,$0,.L1053
	addiu	$14,$6,-1

	dsll	$6,$14,32
	dsrl	$15,$6,32
	daddu	$9,$5,$15
	daddu	$4,$4,$15
	.align	3
.L1025:
	lb	$24,0($9)
	move	$25,$9
	daddiu	$4,$4,-1
	daddiu	$9,$9,-1
	bne	$5,$25,.L1025
	sb	$24,1($4)

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
	bne	$2,$0,.L1058
	srl	$7,$6,1

	dsll	$3,$6,32
	dsrl	$8,$3,32
	daddu	$9,$5,$8
	sltu	$10,$9,$4
	beq	$10,$0,.L1081
	nop

.L1058:
	beq	$7,$0,.L1057
	addiu	$25,$7,-1

	sltu	$2,$25,7
	bne	$2,$0,.L1061
	or	$3,$5,$4

	andi	$8,$3,0x7
	bne	$8,$0,.L1061
	daddiu	$9,$5,2

	dsubu	$10,$4,$9
	sltu	$12,$10,5
	bne	$12,$0,.L1061
	srl	$13,$6,3

	dsll	$14,$13,3
	move	$24,$5
	move	$25,$4
	daddu	$15,$14,$5
	.align	3
.L1062:
	ldc1	$f0,0($24)
	daddiu	$24,$24,8
	daddiu	$25,$25,8
	bne	$24,$15,.L1062
	sdc1	$f0,-8($25)

	dsll	$2,$13,2
	beq	$7,$2,.L1057
	dsll	$8,$2,1

	lhx	$10,$8($5)
	addiu	$3,$2,1
	daddu	$12,$4,$8
	sltu	$9,$3,$7
	beq	$9,$0,.L1057
	sh	$10,0($12)

	dsll	$13,$3,32
	dsrl	$14,$13,32
	dsll	$15,$14,1
	lhx	$24,$15($5)
	addiu	$25,$2,2
	sltu	$7,$25,$7
	daddu	$2,$4,$15
	beq	$7,$0,.L1057
	sh	$24,0($2)

	dsll	$8,$25,32
	dsrl	$10,$8,32
	dsll	$12,$10,1
	lhx	$3,$12($5)
	daddu	$9,$4,$12
	sh	$3,0($9)
.L1057:
	andi	$2,$6,0x1
	beq	$2,$0,.L1086
	addiu	$6,$6,-1

.L1084:
	dsll	$7,$6,32
	dsrl	$8,$7,32
	daddu	$5,$5,$8
	lb	$10,0($5)
	daddu	$4,$4,$8
	jr	$31
	sb	$10,0($4)

	.align	3
.L1081:
	beq	$6,$0,.L1086
	addiu	$12,$6,-1

	dsll	$6,$12,32
	dsrl	$13,$6,32
	daddu	$24,$5,$13
	daddu	$4,$4,$13
	.align	3
.L1067:
	lb	$14,0($24)
	move	$15,$24
	daddiu	$4,$4,-1
	daddiu	$24,$24,-1
	bne	$5,$15,.L1067
	sb	$14,1($4)

.L1086:
	jr	$31
	nop

	.align	3
.L1061:
	dsll	$13,$7,1
	move	$24,$5
	move	$25,$4
	daddu	$14,$13,$5
	.align	3
.L1064:
	lh	$15,0($24)
	daddiu	$24,$24,2
	daddiu	$25,$25,2
	bne	$24,$14,.L1064
	sh	$15,-2($25)

	andi	$2,$6,0x1
	bne	$2,$0,.L1084
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
	bne	$2,$0,.L1092
	and	$12,$6,$8

	dsll	$3,$6,32
	dsrl	$9,$3,32
	daddu	$10,$5,$9
	sltu	$13,$10,$4
	beq	$13,$0,.L1128
	nop

.L1092:
	beq	$7,$0,.L1129
	addiu	$2,$7,-1

	sltu	$3,$2,9
	bne	$3,$0,.L1094
	or	$9,$4,$5

	andi	$10,$9,0x7
	bne	$10,$0,.L1094
	daddiu	$13,$5,4

	beq	$4,$13,.L1094
	srl	$14,$6,3

	dsll	$15,$14,3
	move	$25,$5
	move	$8,$4
	daddu	$24,$15,$5
	.align	3
.L1095:
	ldc1	$f0,0($25)
	daddiu	$25,$25,8
	daddiu	$8,$8,8
	bne	$25,$24,.L1095
	sdc1	$f0,-8($8)

	dsll	$2,$14,1
	beq	$7,$2,.L1098
	dsll	$7,$2,2

	lwx	$3,$7($5)
	daddu	$9,$4,$7
	sw	$3,0($9)
.L1098:
	sltu	$25,$12,$6
.L1132:
	beq	$25,$0,.L1134
	subu	$8,$6,$12

	addiu	$2,$8,-1
	dsll	$7,$12,32
	sltu	$3,$2,8
	bne	$3,$0,.L1090
	dsrl	$10,$7,32

	daddiu	$9,$10,1
	daddu	$3,$4,$10
	daddu	$13,$5,$9
	dsubu	$14,$3,$13
	sltu	$15,$14,7
	bne	$15,$0,.L1090
	daddu	$2,$5,$10

	or	$24,$2,$3
	andi	$25,$24,0x7
	bne	$25,$0,.L1090
	srl	$7,$8,3

	dsll	$10,$7,32
	dsrl	$9,$10,32
	dsll	$13,$9,3
	daddu	$14,$2,$13
	.align	3
.L1099:
	ldc1	$f1,0($2)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$14,.L1099
	sdc1	$f1,-8($3)

	li	$15,-8			# 0xfffffffffffffff8
	and	$24,$8,$15
	andi	$8,$8,0x7
	beq	$8,$0,.L1134
	addu	$12,$24,$12

	dsll	$25,$12,32
	dsrl	$7,$25,32
	daddu	$10,$5,$7
	lb	$9,0($10)
	addiu	$13,$12,1
	daddu	$14,$4,$7
	sltu	$2,$13,$6
	beq	$2,$0,.L1134
	sb	$9,0($14)

	dsll	$3,$13,32
	dsrl	$15,$3,32
	daddu	$24,$5,$15
	lb	$25,0($24)
	addiu	$7,$12,2
	daddu	$10,$4,$15
	sltu	$8,$7,$6
	beq	$8,$0,.L1134
	sb	$25,0($10)

	dsll	$9,$7,32
	dsrl	$13,$9,32
	daddu	$14,$5,$13
	lb	$2,0($14)
	addiu	$3,$12,3
	daddu	$15,$4,$13
	sltu	$24,$3,$6
	beq	$24,$0,.L1134
	sb	$2,0($15)

	dsll	$25,$3,32
	dsrl	$10,$25,32
	daddu	$7,$5,$10
	lb	$9,0($7)
	addiu	$13,$12,4
	daddu	$14,$4,$10
	sltu	$8,$13,$6
	beq	$8,$0,.L1134
	sb	$9,0($14)

	dsll	$2,$13,32
	dsrl	$15,$2,32
	daddu	$3,$5,$15
	lb	$24,0($3)
	addiu	$25,$12,5
	daddu	$10,$4,$15
	sltu	$7,$25,$6
	beq	$7,$0,.L1134
	sb	$24,0($10)

	dsll	$9,$25,32
	dsrl	$13,$9,32
	daddu	$14,$5,$13
	lb	$8,0($14)
	addiu	$12,$12,6
	daddu	$2,$4,$13
	sltu	$6,$12,$6
	beq	$6,$0,.L1134
	sb	$8,0($2)

	dsll	$15,$12,32
	dsrl	$24,$15,32
	daddu	$5,$5,$24
	lb	$3,0($5)
	daddu	$4,$4,$24
	jr	$31
	sb	$3,0($4)

	.align	3
.L1128:
	beq	$6,$0,.L1134
	addiu	$14,$6,-1

	dsll	$6,$14,32
	dsrl	$15,$6,32
	daddu	$8,$5,$15
	daddu	$4,$4,$15
	.align	3
.L1103:
	lb	$24,0($8)
	move	$25,$8
	daddiu	$4,$4,-1
	daddiu	$8,$8,-1
	bne	$5,$25,.L1103
	sb	$24,1($4)

.L1134:
	jr	$31
	nop

	.align	3
.L1094:
	dsll	$10,$7,2
	move	$15,$5
	move	$24,$4
	daddu	$13,$10,$5
	.align	3
.L1097:
	lw	$14,0($15)
	daddiu	$15,$15,4
	daddiu	$24,$24,4
	bne	$15,$13,.L1097
	sw	$14,-4($24)

	b	.L1132
	sltu	$25,$12,$6

	.align	3
.L1129:
	dsll	$7,$12,32
	beq	$6,$0,.L1134
	dsrl	$10,$7,32

.L1090:
	move	$9,$10
	.align	3
.L1101:
	daddu	$25,$5,$9
	daddu	$10,$4,$9
	lb	$7,0($25)
	daddiu	$9,$9,1
	sll	$13,$9,0
	sltu	$14,$13,$6
	bne	$14,$0,.L1101
	sb	$7,0($10)

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
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$2
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
	bltz	$4,.L1143
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.align	3
.L1143:
	dsrl	$4,$4,1
	or	$5,$2,$4
	dmtc1	$5,$f1
	nop
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
	bltz	$4,.L1147
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.align	3
.L1147:
	dsrl	$4,$4,1
	or	$5,$2,$4
	dmtc1	$5,$f1
	nop
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
	divu	$0,$4,$5
	teq	$5,$0,7
	mfhi	$2
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
	bne	$2,$0,.L1154
	move	$3,$4

	dsrl	$2,$3,14
	bne	$2,$0,.L1170
	sra	$6,$4,13

	bne	$6,$0,.L1155
	sra	$7,$4,12

	bne	$7,$0,.L1156
	sra	$8,$4,11

	bne	$8,$0,.L1157
	sra	$9,$4,10

	bne	$9,$0,.L1158
	sra	$10,$4,9

	bne	$10,$0,.L1159
	nop

	sra	$2,$4,8
	bne	$2,$0,.L1160
	sra	$6,$4,7

	bne	$6,$0,.L1161
	sra	$7,$4,6

	bne	$7,$0,.L1162
	nop

	sra	$2,$4,5
	bne	$2,$0,.L1163
	sra	$6,$4,4

	bne	$6,$0,.L1164
	sra	$7,$4,3

	bne	$7,$0,.L1165
	nop

	sra	$2,$4,2
	bne	$2,$0,.L1166
	sra	$3,$4,1

	bne	$3,$0,.L1167
	sltu	$4,$4,1

	jr	$31
	daddiu	$2,$4,15

.L1167:
	li	$2,14			# 0xe
.L1170:
	jr	$31
	nop

.L1154:
	jr	$31
	move	$2,$0

.L1165:
	jr	$31
	li	$2,12			# 0xc

.L1155:
	jr	$31
	li	$2,2			# 0x2

.L1156:
	jr	$31
	li	$2,3			# 0x3

.L1157:
	jr	$31
	li	$2,4			# 0x4

.L1158:
	jr	$31
	li	$2,5			# 0x5

.L1159:
	jr	$31
	li	$2,6			# 0x6

.L1160:
	jr	$31
	li	$2,7			# 0x7

.L1161:
	jr	$31
	li	$2,8			# 0x8

.L1162:
	jr	$31
	li	$2,9			# 0x9

.L1163:
	jr	$31
	li	$2,10			# 0xa

.L1164:
	jr	$31
	li	$2,11			# 0xb

.L1166:
	jr	$31
	li	$2,13			# 0xd

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
	bne	$2,$0,.L1174
	andi	$5,$4,0x2

	bne	$5,$0,.L1175
	andi	$6,$4,0x4

	bne	$6,$0,.L1176
	andi	$7,$4,0x8

	bne	$7,$0,.L1177
	andi	$8,$4,0x10

	bne	$8,$0,.L1178
	andi	$9,$4,0x20

	bne	$9,$0,.L1179
	andi	$10,$4,0x40

	bne	$10,$0,.L1180
	andi	$11,$4,0x80

	bne	$11,$0,.L1181
	andi	$12,$4,0x100

	bne	$12,$0,.L1182
	andi	$13,$4,0x200

	bne	$13,$0,.L1183
	andi	$14,$4,0x400

	bne	$14,$0,.L1184
	andi	$15,$4,0x800

	bne	$15,$0,.L1185
	andi	$24,$4,0x1000

	bne	$24,$0,.L1186
	andi	$25,$4,0x2000

	bne	$25,$0,.L1187
	nop

	andi	$2,$4,0x4000
	bne	$2,$0,.L1188
	sra	$4,$4,15

	sltu	$5,$4,1
	jr	$31
	daddiu	$2,$5,15

.L1174:
	jr	$31
	move	$2,$0

.L1175:
	jr	$31
	li	$2,1			# 0x1

.L1186:
	jr	$31
	li	$2,12			# 0xc

.L1176:
	jr	$31
	li	$2,2			# 0x2

.L1177:
	jr	$31
	li	$2,3			# 0x3

.L1178:
	jr	$31
	li	$2,4			# 0x4

.L1179:
	jr	$31
	li	$2,5			# 0x5

.L1180:
	jr	$31
	li	$2,6			# 0x6

.L1181:
	jr	$31
	li	$2,7			# 0x7

.L1182:
	jr	$31
	li	$2,8			# 0x8

.L1183:
	jr	$31
	li	$2,9			# 0x9

.L1184:
	jr	$31
	li	$2,10			# 0xa

.L1185:
	jr	$31
	li	$2,11			# 0xb

.L1187:
	jr	$31
	li	$2,13			# 0xd

.L1188:
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
	c.le.s	$f0,$f12
	nop
	bc1tl	.L1198
	sub.s	$f12,$f12,$f0

	trunc.l.s $f1,$f12
	dmfc1	$2,$f1
	jr	$31
	nop

	.align	3
.L1198:
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
	beq	$4,$0,.L1210
	move	$2,$0

	.align	3
.L1205:
	andi	$3,$4,0x1
	subu	$7,$0,$3
	and	$8,$7,$5
	srl	$4,$4,1
	addu	$2,$8,$2
	bne	$4,$0,.L1205
	sll	$5,$5,1

.L1210:
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
	beq	$4,$0,.L1219
	move	$2,$0

	beq	$5,$0,.L1218
	nop

	.align	3
.L1213:
	andi	$3,$5,0x1
	subu	$7,$0,$3
	and	$8,$7,$4
	srl	$5,$5,1
	addu	$2,$8,$2
	bne	$5,$0,.L1213
	sll	$4,$4,1

.L1219:
	jr	$31
	nop

.L1218:
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
	sltu	$7,$5,$4
	beq	$7,$0,.L1249
	li	$2,32			# 0x20

	b	.L1221
	li	$24,1			# 0x1

	.align	3
.L1225:
	sll	$5,$5,1
	sltu	$8,$5,$4
	beq	$8,$0,.L1223
	sll	$24,$24,1

	beq	$2,$0,.L1224
	nop

.L1221:
	bgez	$5,.L1225
	addiu	$2,$2,-1

	move	$2,$0
	.align	3
.L1231:
	sltu	$12,$4,$5
	srl	$9,$24,1
	srl	$13,$5,1
	subu	$14,$4,$5
	bne	$12,$0,.L1228
	sltu	$10,$12,1

	move	$4,$14
.L1228:
	beq	$10,$0,.L1230
	move	$15,$0

	move	$15,$24
.L1230:
	move	$24,$9
	or	$2,$15,$2
	bne	$24,$0,.L1231
	move	$5,$13

.L1224:
	bne	$6,$0,.L1251
	nop

	jr	$31
	nop

	.align	3
.L1223:
	bne	$24,$0,.L1231
	move	$2,$0

	b	.L1224
	nop

	.align	3
.L1251:
	jr	$31
	move	$2,$4

.L1249:
	sltu	$3,$4,$5
	sltu	$2,$3,1
	bne	$3,$0,.L1224
	subu	$5,$4,$5

	b	.L1224
	move	$4,$5

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
	c.lt.s	$f12,$f13
	nop
	bc1t	.L1255
	nop

	c.lt.s	$f13,$f12
	nop
	bc1f	.L1257
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1257:
	jr	$31
	move	$2,$0

	.align	3
.L1255:
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
	c.lt.d	$f12,$f13
	nop
	bc1t	.L1263
	nop

	c.lt.d	$f13,$f12
	nop
	bc1f	.L1265
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1265:
	jr	$31
	move	$2,$0

	.align	3
.L1263:
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
	dmult	$4,$5
	mflo	$2
	jr	$31
	nop

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
	dmult	$4,$5
	mflo	$2
	jr	$31
	nop

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
	bltzl	$5,.L1287
	subu	$5,$0,$5

	beq	$5,$0,.L1278
	move	$7,$0

.L1274:
	li	$11,32			# 0x20
	b	.L1277
	move	$2,$0

	.align	3
.L1288:
	beq	$11,$0,.L1276
	nop

.L1277:
	andi	$3,$5,0x1
	subu	$9,$0,$3
	and	$10,$9,$4
	addiu	$6,$11,-1
	dsra	$5,$5,1
	andi	$11,$6,0x00ff
	addu	$2,$10,$2
	bne	$5,$0,.L1288
	sll	$4,$4,1

.L1276:
	beq	$7,$0,.L1289
	nop

	jr	$31
	subu	$2,$0,$2

.L1278:
	move	$2,$0
.L1289:
	jr	$31
	nop

	.align	3
.L1287:
	b	.L1274
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
	bltzl	$4,.L1321
	dsubu	$4,$0,$4

	li	$2,1			# 0x1
	move	$10,$0
.L1291:
	bgez	$5,.L1322
	sll	$24,$4,0

	dsubu	$5,$0,$5
	move	$10,$2
.L1322:
	sll	$2,$5,0
	sltu	$6,$2,$24
	li	$7,32			# 0x20
	bne	$6,$0,.L1293
	li	$3,1			# 0x1

	b	.L1319
	sltu	$4,$24,$2

	.align	3
.L1297:
	sll	$2,$2,1
	sltu	$8,$2,$24
	beq	$8,$0,.L1295
	sll	$3,$3,1

	beql	$7,$0,.L1296
	move	$2,$0

.L1293:
	bgez	$2,.L1297
	addiu	$7,$7,-1

	move	$12,$0
	.align	3
.L1303:
	sltu	$14,$24,$2
	srl	$13,$3,1
	srl	$15,$2,1
	subu	$5,$24,$2
	bne	$14,$0,.L1300
	sltu	$9,$14,1

	move	$24,$5
.L1300:
	beq	$9,$0,.L1302
	move	$25,$0

	move	$25,$3
.L1302:
	move	$3,$13
	or	$12,$25,$12
	bne	$3,$0,.L1303
	move	$2,$15

.L1305:
	dsll	$6,$12,32
	dsrl	$2,$6,32
.L1296:
	beq	$10,$0,.L1323
	nop

	jr	$31
	dsubu	$2,$0,$2

.L1323:
	jr	$31
	nop

	.align	3
.L1295:
	bne	$3,$0,.L1303
	move	$12,$0

	b	.L1296
	move	$2,$0

	.align	3
.L1321:
	move	$2,$0
	b	.L1291
	li	$10,1			# 0x1

.L1319:
	b	.L1305
	sltu	$12,$4,1

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
	bgez	$4,.L1325
	move	$7,$0

	dsubu	$4,$0,$4
	li	$7,1			# 0x1
.L1325:
	dsra	$6,$5,63
	xor	$3,$6,$5
	sll	$5,$3,0
	sll	$2,$4,0
	subu	$5,$5,$6
	sltu	$9,$5,$2
	li	$11,32			# 0x20
	bne	$9,$0,.L1326
	li	$13,1			# 0x1

	b	.L1356
	sltu	$4,$2,$5

	.align	3
.L1330:
	sll	$5,$5,1
	sltu	$12,$5,$2
	beq	$12,$0,.L1359
	sll	$13,$13,1

	beq	$11,$0,.L1361
	dsll	$25,$2,32

.L1326:
	bgez	$5,.L1330
	addiu	$11,$11,-1

	b	.L1360
	sltu	$14,$2,$5

	.align	3
.L1333:
	move	$5,$15
.L1359:
	beq	$13,$0,.L1329
	sltu	$14,$2,$5

.L1360:
	srl	$13,$13,1
	srl	$15,$5,1
	bne	$14,$0,.L1333
	subu	$24,$2,$5

	move	$2,$24
	b	.L1359
	move	$5,$15

.L1356:
	bne	$4,$0,.L1329
	subu	$10,$2,$5

	move	$2,$10
	.align	3
.L1329:
	dsll	$25,$2,32
	.align	3
.L1361:
	beq	$7,$0,.L1362
	dsrl	$2,$25,32

	jr	$31
	dsubu	$2,$0,$2

.L1362:
	jr	$31
	nop

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
	beq	$2,$0,.L1548
	sll	$9,$5,16

	sra	$10,$9,16
	bltzl	$10,.L1368
	subu	$5,$4,$5

	sll	$13,$5,1
	andi	$3,$13,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,.L1441
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,.L1441
	sll	$25,$5,2

	andi	$3,$25,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,.L1443
	sll	$7,$3,16

	sra	$2,$7,16
	bltzl	$2,.L1370
	li	$13,4			# 0x4

	sll	$3,$5,3
	andi	$3,$3,0xffff
	sltu	$9,$3,$4
	beq	$9,$0,.L1445
	sll	$10,$3,16

	sra	$12,$10,16
	bltz	$12,.L1370
	li	$13,8			# 0x8

	sll	$13,$5,4
	andi	$3,$13,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,.L1447
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,.L1447
	sll	$25,$5,5

	andi	$3,$25,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,.L1449
	sll	$7,$3,16

	sra	$2,$7,16
	bltzl	$2,.L1370
	li	$13,32			# 0x20

	sll	$3,$5,6
	andi	$3,$3,0xffff
	sltu	$9,$3,$4
	beq	$9,$0,.L1451
	sll	$10,$3,16

	sra	$12,$10,16
	bltz	$12,.L1370
	li	$13,64			# 0x40

	sll	$13,$5,7
	andi	$3,$13,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,.L1453
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,.L1453
	sll	$25,$5,8

	andi	$3,$25,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,.L1455
	sll	$7,$3,16

	sra	$2,$7,16
	bltzl	$2,.L1370
	li	$13,256			# 0x100

	sll	$3,$5,9
	andi	$3,$3,0xffff
	sltu	$9,$3,$4
	beq	$9,$0,.L1457
	sll	$10,$3,16

	sra	$12,$10,16
	bltz	$12,.L1370
	li	$13,512			# 0x200

	sll	$13,$5,10
	andi	$3,$13,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,.L1459
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,.L1459
	sll	$25,$5,11

	andi	$3,$25,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,.L1461
	sll	$7,$3,16

	sra	$2,$7,16
	bltzl	$2,.L1370
	li	$13,2048			# 0x800

	sll	$3,$5,12
	andi	$3,$3,0xffff
	sltu	$9,$3,$4
	beq	$9,$0,.L1463
	sll	$10,$3,16

	sra	$12,$10,16
	bltz	$12,.L1370
	li	$13,4096			# 0x1000

	sll	$13,$5,13
	andi	$3,$13,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,.L1465
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,.L1465
	sll	$25,$5,14

	andi	$3,$25,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,.L1467
	sll	$7,$3,16

	sra	$2,$7,16
	bltz	$2,.L1467
	sll	$5,$5,15

	andi	$12,$5,0xffff
	sltu	$9,$12,$4
	beq	$9,$0,.L1468
	move	$2,$4

	li	$13,32768			# 0x8000
	bne	$12,$0,.L1370
	li	$3,32768			# 0x8000

.L1371:
	bne	$6,$0,.L1563
	nop

	jr	$31
	move	$2,$12

.L1563:
	jr	$31
	nop

.L1441:
	li	$13,2			# 0x2
	.align	3
.L1370:
	subu	$10,$4,$3
	sltu	$12,$4,$3
	bne	$12,$0,.L1437
	andi	$14,$10,0xffff

	move	$4,$14
.L1437:
	andi	$4,$4,0xffff
	bne	$12,$0,.L1439
	move	$15,$0

	andi	$15,$13,0xffff
.L1439:
	dsrl	$25,$3,1
	subu	$8,$4,$25
	sltu	$7,$4,$25
	dsrl	$24,$13,1
	bne	$7,$0,.L1373
	andi	$2,$8,0xffff

	move	$4,$2
.L1373:
	andi	$2,$4,0xffff
	bne	$7,$0,.L1375
	move	$10,$0

	move	$10,$24
.L1375:
	or	$5,$10,$15
	dsrl	$9,$13,2
	andi	$12,$5,0xffff
	beq	$9,$0,.L1371
	dsrl	$14,$3,2

	subu	$15,$2,$14
	sltu	$4,$2,$14
	andi	$24,$15,0xffff
	bne	$4,$0,.L1377
	sltu	$25,$4,1

	move	$2,$24
.L1377:
	andi	$2,$2,0xffff
	beq	$25,$0,.L1379
	move	$8,$0

	move	$8,$9
.L1379:
	or	$12,$8,$12
	dsrl	$5,$13,3
	andi	$12,$12,0xffff
	beq	$5,$0,.L1371
	dsrl	$10,$3,3

	subu	$7,$2,$10
	sltu	$9,$2,$10
	andi	$14,$7,0xffff
	bne	$9,$0,.L1381
	sltu	$15,$9,1

	move	$2,$14
.L1381:
	andi	$2,$2,0xffff
	beq	$15,$0,.L1383
	move	$9,$0

	move	$9,$5
.L1383:
	or	$4,$9,$12
	dsrl	$24,$13,4
	andi	$12,$4,0xffff
	beq	$24,$0,.L1371
	dsrl	$25,$3,4

	subu	$8,$2,$25
	sltu	$5,$2,$25
	andi	$7,$8,0xffff
	bne	$5,$0,.L1385
	sltu	$10,$5,1

	move	$2,$7
.L1385:
	andi	$2,$2,0xffff
	beq	$10,$0,.L1387
	move	$9,$0

	move	$9,$24
.L1387:
	or	$12,$9,$12
	dsrl	$14,$13,5
	andi	$12,$12,0xffff
	beq	$14,$0,.L1371
	dsrl	$15,$3,5

	subu	$24,$2,$15
	sltu	$4,$2,$15
	andi	$25,$24,0xffff
	bne	$4,$0,.L1389
	sltu	$8,$4,1

	move	$2,$25
.L1389:
	andi	$2,$2,0xffff
	beq	$8,$0,.L1391
	move	$9,$0

	move	$9,$14
.L1391:
	or	$5,$9,$12
	dsrl	$14,$13,6
	andi	$12,$5,0xffff
	beq	$14,$0,.L1371
	dsrl	$10,$3,6

	subu	$7,$2,$10
	sltu	$15,$2,$10
	andi	$24,$7,0xffff
	bne	$15,$0,.L1393
	sltu	$25,$15,1

	move	$2,$24
.L1393:
	andi	$2,$2,0xffff
	beq	$25,$0,.L1395
	move	$9,$0

	move	$9,$14
.L1395:
	or	$12,$9,$12
	dsrl	$8,$13,7
	andi	$12,$12,0xffff
	beq	$8,$0,.L1371
	dsrl	$4,$3,7

	subu	$5,$2,$4
	sltu	$14,$2,$4
	andi	$7,$5,0xffff
	beq	$14,$0,.L1549
	sltu	$10,$14,1

	andi	$2,$2,0xffff
	bne	$10,$0,.L1550
	move	$9,$0

.L1399:
	or	$15,$9,$12
	dsrl	$24,$13,8
	andi	$12,$15,0xffff
	beq	$24,$0,.L1371
	dsrl	$25,$3,8

	subu	$8,$2,$25
	sltu	$4,$2,$25
	andi	$5,$8,0xffff
	beq	$4,$0,.L1551
	sltu	$14,$4,1

	andi	$2,$2,0xffff
	bne	$14,$0,.L1552
	move	$9,$0

.L1403:
	or	$12,$9,$12
	dsrl	$15,$13,9
	andi	$12,$12,0xffff
	beq	$15,$0,.L1371
	dsrl	$10,$3,9

	subu	$7,$2,$10
	sltu	$24,$2,$10
	andi	$25,$7,0xffff
	beq	$24,$0,.L1553
	sltu	$8,$24,1

	andi	$2,$2,0xffff
	bne	$8,$0,.L1554
	move	$9,$0

.L1407:
	or	$4,$9,$12
	dsrl	$5,$13,10
	andi	$12,$4,0xffff
	beq	$5,$0,.L1371
	dsrl	$14,$3,10

	subu	$15,$2,$14
	sltu	$24,$2,$14
	andi	$7,$15,0xffff
	beq	$24,$0,.L1555
	sltu	$10,$24,1

	andi	$2,$2,0xffff
	bne	$10,$0,.L1556
	move	$9,$0

.L1411:
	or	$12,$9,$12
	dsrl	$25,$13,11
	andi	$12,$12,0xffff
	beq	$25,$0,.L1371
	dsrl	$8,$3,11

	subu	$5,$2,$8
	sltu	$4,$2,$8
	andi	$14,$5,0xffff
	beq	$4,$0,.L1557
	sltu	$15,$4,1

	andi	$2,$2,0xffff
	bne	$15,$0,.L1558
	move	$9,$0

.L1415:
	or	$24,$9,$12
	dsrl	$25,$13,12
	andi	$12,$24,0xffff
	beq	$25,$0,.L1371
	dsrl	$10,$3,12

	subu	$7,$2,$10
	sltu	$8,$2,$10
	andi	$5,$7,0xffff
	beq	$8,$0,.L1559
	sltu	$14,$8,1

	andi	$2,$2,0xffff
	bne	$14,$0,.L1560
	move	$9,$0

.L1419:
	or	$12,$9,$12
	dsrl	$15,$13,13
	andi	$12,$12,0xffff
	beq	$15,$0,.L1371
	dsrl	$4,$3,13

.L1561:
	subu	$24,$2,$4
	sltu	$25,$2,$4
	andi	$7,$24,0xffff
	bne	$25,$0,.L1421
	sltu	$10,$25,1

	move	$2,$7
.L1421:
	andi	$2,$2,0xffff
	beq	$10,$0,.L1423
	move	$9,$0

	move	$9,$15
.L1423:
	or	$8,$9,$12
	dsrl	$5,$13,14
	andi	$12,$8,0xffff
	beq	$5,$0,.L1371
	dsrl	$14,$3,14

	subu	$15,$2,$14
	sltu	$4,$2,$14
	andi	$24,$15,0xffff
	bne	$4,$0,.L1425
	sltu	$25,$4,1

	move	$2,$24
.L1425:
	andi	$2,$2,0xffff
	beq	$25,$0,.L1427
	move	$9,$0

	move	$9,$5
.L1427:
	or	$12,$9,$12
	li	$7,16384			# 0x4000
	andi	$12,$12,0xffff
	beq	$13,$7,.L1371
	dsrl	$3,$3,15

	subu	$13,$2,$3
	sltu	$10,$2,$3
	andi	$8,$13,0xffff
	bne	$10,$0,.L1429
	sltu	$5,$10,1

	move	$2,$8
.L1429:
	andi	$2,$2,0xffff
	b	.L1371
	or	$12,$5,$12

	.align	3
.L1550:
	b	.L1399
	move	$9,$8

	.align	3
.L1549:
	move	$2,$7
	andi	$2,$2,0xffff
	beq	$10,$0,.L1399
	move	$9,$0

	b	.L1399
	move	$9,$8

	.align	3
.L1552:
	b	.L1403
	move	$9,$24

	.align	3
.L1551:
	move	$2,$5
	andi	$2,$2,0xffff
	beq	$14,$0,.L1403
	move	$9,$0

	b	.L1403
	move	$9,$24

	.align	3
.L1554:
	b	.L1407
	move	$9,$15

	.align	3
.L1553:
	move	$2,$25
	andi	$2,$2,0xffff
	beq	$8,$0,.L1407
	move	$9,$0

	b	.L1407
	move	$9,$15

	.align	3
.L1556:
	b	.L1411
	move	$9,$5

	.align	3
.L1555:
	move	$2,$7
	andi	$2,$2,0xffff
	beq	$10,$0,.L1411
	move	$9,$0

	b	.L1411
	move	$9,$5

	.align	3
.L1558:
	b	.L1415
	move	$9,$25

	.align	3
.L1557:
	move	$2,$14
	andi	$2,$2,0xffff
	beq	$15,$0,.L1415
	move	$9,$0

	b	.L1415
	move	$9,$25

	.align	3
.L1560:
	move	$9,$25
	.align	3
.L1562:
	or	$12,$9,$12
	dsrl	$15,$13,13
	andi	$12,$12,0xffff
	bne	$15,$0,.L1561
	dsrl	$4,$3,13

	b	.L1371
	nop

	.align	3
.L1559:
	move	$2,$5
	andi	$2,$2,0xffff
	beq	$14,$0,.L1419
	move	$9,$0

	b	.L1562
	move	$9,$25

.L1443:
	b	.L1370
	li	$13,4			# 0x4

.L1445:
	b	.L1370
	li	$13,8			# 0x8

.L1447:
	b	.L1370
	li	$13,16			# 0x10

.L1457:
	b	.L1370
	li	$13,512			# 0x200

.L1449:
	b	.L1370
	li	$13,32			# 0x20

.L1451:
	b	.L1370
	li	$13,64			# 0x40

.L1453:
	b	.L1370
	li	$13,128			# 0x80

.L1455:
	b	.L1370
	li	$13,256			# 0x100

.L1548:
	subu	$3,$4,$5
	andi	$8,$3,0xffff
	xor	$7,$5,$4
	bne	$5,$4,.L1366
	move	$2,$4

	move	$2,$8
.L1366:
	andi	$2,$2,0xffff
	b	.L1371
	sltu	$12,$7,1

.L1459:
	b	.L1370
	li	$13,1024			# 0x400

.L1461:
	b	.L1370
	li	$13,2048			# 0x800

.L1463:
	b	.L1370
	li	$13,4096			# 0x1000

.L1465:
	b	.L1370
	li	$13,8192			# 0x2000

.L1467:
	b	.L1370
	li	$13,16384			# 0x4000

.L1468:
	li	$3,32768			# 0x8000
	b	.L1370
	li	$13,32768			# 0x8000

.L1368:
	andi	$2,$5,0xffff
	b	.L1371
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
	beq	$2,$0,.L1595
	li	$15,1			# 0x1

	li	$7,64			# 0x40
	b	.L1565
	dsll	$9,$15,31

	.align	3
.L1569:
	dsll	$5,$5,1
	sltu	$8,$5,$4
	beq	$8,$0,.L1567
	dsll	$15,$15,1

	beq	$7,$0,.L1568
	nop

.L1565:
	and	$2,$5,$9
	beq	$2,$0,.L1569
	addiu	$7,$7,-1

	move	$2,$0
	.align	3
.L1575:
	sltu	$11,$4,$5
	dsubu	$12,$4,$5
	bne	$11,$0,.L1572
	sltu	$13,$11,1

	move	$4,$12
.L1572:
	beq	$13,$0,.L1574
	move	$14,$0

	move	$14,$15
.L1574:
	dsrl	$15,$15,1
	or	$2,$2,$14
	bne	$15,$0,.L1575
	dsrl	$5,$5,1

.L1568:
	bne	$6,$0,.L1597
	nop

	jr	$31
	nop

	.align	3
.L1567:
	bnel	$15,$0,.L1575
	move	$2,$0

	b	.L1568
	nop

	.align	3
.L1597:
	jr	$31
	move	$2,$4

.L1595:
	sltu	$3,$4,$5
	sltu	$2,$3,1
	bne	$3,$0,.L1568
	dsubu	$5,$4,$5

	b	.L1568
	move	$4,$5

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
	beq	$2,$0,.L1599
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
.L1599:
	beq	$5,$0,.L1602
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
.L1602:
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
	beq	$2,$0,.L1605
	nop

	addiu	$6,$6,-64
	dsll	$5,$4,$6
	move	$4,$0
	move	$2,$4
.L1610:
	jr	$31
	move	$3,$5

	.align	3
.L1605:
	beql	$6,$0,.L1610
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
	beq	$2,$0,.L1612
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
.L1612:
	beq	$5,$0,.L1615
	li	$7,32			# 0x20

	dsra	$3,$4,32
	subu	$8,$7,$5
	sll	$4,$4,0
	sll	$9,$3,$8
	srl	$10,$4,$5
	or	$11,$9,$10
	sra	$12,$3,$5
	dsll	$14,$11,32
	dsrl	$15,$14,32
	dsll	$24,$12,32
	jr	$31
	or	$2,$24,$15

	.align	3
.L1615:
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
	beq	$2,$0,.L1618
	dsra	$3,$5,63

	addiu	$6,$6,-64
	jr	$31
	dsra	$2,$5,$6

	.align	3
.L1618:
	beq	$6,$0,.L1621
	li	$7,64			# 0x40

	subu	$3,$7,$6
	dsll	$9,$5,$3
	dsrl	$4,$4,$6
	dsra	$3,$5,$6
	jr	$31
	or	$2,$9,$4

	.align	3
.L1621:
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
	li	$6,65536			# 0x10000
	sltu	$2,$4,$6
	dsll	$10,$2,4
	li	$3,16			# 0x10
	subu	$5,$3,$10
	srl	$4,$4,$5
	andi	$7,$4,0xff00
	sltu	$8,$7,1
	dsll	$11,$8,3
	li	$12,8			# 0x8
	subu	$13,$12,$11
	srl	$14,$4,$13
	andi	$15,$14,0xf0
	sltu	$24,$15,1
	li	$6,4			# 0x4
	dsll	$25,$24,2
	subu	$2,$6,$25
	srl	$5,$14,$2
	andi	$3,$5,0xc
	sltu	$4,$3,1
	li	$8,2			# 0x2
	dsll	$12,$4,1
	subu	$7,$8,$12
	srl	$13,$5,$7
	dsrl	$14,$13,1
	daddu	$10,$11,$10
	andi	$11,$14,0x1
	daddu	$15,$25,$10
	beq	$11,$0,.L1629
	subu	$24,$8,$13

	move	$24,$0
.L1629:
	addu	$25,$12,$15
	jr	$31
	addu	$2,$24,$25

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
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__clzti2)))
	sltu	$16,$5,1
	daddu	$28,$28,$25
	daddiu	$2,$16,-1
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clzti2)))
	and	$6,$2,$5
	beq	$5,$0,.L1635
	move	$3,$4

	move	$3,$0
.L1635:
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	or	$4,$6,$3

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
	bne	$6,$0,.L1643
	slt	$8,$3,$2

	bne	$8,$0,.L1642
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1643
	sltu	$10,$5,$4

	jr	$31
	daddiu	$2,$10,1

	.align	3
.L1643:
	jr	$31
	move	$2,$0

	.align	3
.L1642:
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
	bne	$6,$0,.L1650
	slt	$8,$3,$2

	bne	$8,$0,.L1649
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1650
	nop

	jr	$31
	sltu	$2,$5,$4

	.align	3
.L1650:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1649:
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
	bne	$2,$0,.L1656
	slt	$5,$7,$5

	bne	$5,$0,.L1655
	sltu	$7,$4,$6

	bne	$7,$0,.L1656
	sltu	$4,$6,$4

	jr	$31
	daddiu	$2,$4,1

	.align	3
.L1656:
	jr	$31
	move	$2,$0

	.align	3
.L1655:
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
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(__ctzti2)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ctzti2)))
	sltu	$16,$4,1
	beq	$4,$0,.L1663
	move	$3,$5

	move	$3,$0
.L1663:
	ld	$25,%call16(__ctzdi2)($28)
	daddiu	$2,$16,-1
	and	$4,$2,$4
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	or	$4,$3,$4

	ld	$31,24($sp)
	sll	$5,$16,6
	ld	$28,16($sp)
	ld	$16,8($sp)
	addu	$2,$2,$5
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__ffsti2)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	bne	$4,$0,.L1668
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ffsti2)))

	bne	$5,$0,.L1673
	move	$2,$0

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1668:
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	nop

	ld	$31,8($sp)
	ld	$28,0($sp)
	addiu	$2,$2,1
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1673:
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	move	$4,$5

	ld	$31,8($sp)
	ld	$28,0($sp)
	addiu	$2,$2,65
	jr	$31
	daddiu	$sp,$sp,16

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
	beq	$2,$0,.L1675
	addiu	$13,$5,-32

	dsra	$12,$4,32
	srl	$11,$12,$13
	move	$5,$0
	dmtc1	$11,$f0
	dmtc1	$5,$f1
	nop
	punpcklwd	$f2,$f0,$f1
	dmfc1	$2,$f2
	jr	$31
	nop

	.align	3
.L1675:
	beq	$5,$0,.L1678
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
	nop
	punpcklwd	$f2,$f0,$f1
	dmfc1	$2,$f2
	jr	$31
	nop

	.align	3
.L1678:
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
	beq	$2,$0,.L1681
	nop

	addiu	$6,$6,-64
	dsrl	$2,$5,$6
	move	$5,$0
	jr	$31
	move	$3,$5

	.align	3
.L1681:
	beql	$6,$0,.L1684
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
.L1684:
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
	mult	$3,$6
	srl	$4,$4,16
	srl	$5,$5,16
	mflo	$2
	srl	$10,$2,16
	andi	$11,$2,0xffff
	mult	$4,$6
	mflo	$7
	addu	$12,$10,$7
	sll	$13,$12,16
	mult	$5,$3
	addu	$14,$11,$13
	srl	$15,$14,16
	srl	$25,$12,16
	andi	$2,$14,0xffff
	mflo	$9
	addu	$24,$15,$9
	sll	$7,$24,16
	mult	$4,$5
	addu	$5,$2,$7
	srl	$4,$24,16
	dsll	$11,$5,32
	dsrl	$12,$11,32
	mflo	$3
	addu	$6,$25,$3
	addu	$9,$6,$4
	dsll	$10,$9,32
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
	andi	$9,$4,0xffff
	andi	$6,$5,0xffff
	mult	$9,$6
	sll	$2,$4,0
	srl	$8,$2,16
	sll	$12,$5,0
	srl	$7,$12,16
	dsra	$5,$5,32
	dsra	$4,$4,32
	mflo	$3
	srl	$24,$3,16
	nop
	mult	$8,$6
	mflo	$10
	addu	$25,$24,$10
	srl	$10,$25,16
	mult	$7,$9
	sll	$9,$25,16
	mflo	$13
	nop
	nop
	mult	$8,$7
	mflo	$14
	nop
	nop
	mult	$2,$5
	andi	$2,$3,0xffff
	addu	$3,$2,$9
	srl	$6,$3,16
	addu	$8,$6,$13
	srl	$7,$8,16
	sll	$5,$8,16
	mflo	$15
	nop
	nop
	mult	$12,$4
	addu	$12,$10,$14
	addu	$13,$12,$7
	andi	$14,$3,0xffff
	addu	$15,$15,$13
	addu	$24,$14,$5
	dsll	$9,$24,32
	dsrl	$3,$9,32
	mflo	$4
	addu	$25,$15,$4
	dsll	$2,$25,32
	jr	$31
	or	$2,$3,$2

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
	dsll	$9,$2,32
	dsrl	$10,$9,32
	mfhi	$7
	dsll	$11,$7,32
	or	$12,$10,$11
	multu	$3,$4
	mflo	$13
	dsll	$15,$13,32
	dsrl	$24,$15,32
	mfhi	$14
	dsll	$25,$14,32
	or	$3,$24,$25
	multu	$6,$5
	mflo	$6
	dsll	$7,$6,32
	dsrl	$9,$7,32
	mfhi	$2
	dsll	$10,$2,32
	or	$11,$9,$10
	multu	$4,$5
	dsrl	$5,$12,32
	daddu	$3,$3,$5
	dsll	$6,$3,32
	dsrl	$7,$6,32
	daddu	$9,$11,$7
	dsrl	$10,$3,32
	dsll	$12,$12,32
	dsrl	$2,$12,32
	mflo	$4
	dsll	$14,$4,32
	dsrl	$15,$14,32
	mfhi	$13
	dsll	$24,$13,32
	or	$25,$15,$24
	daddu	$11,$10,$25
	dsrl	$4,$9,32
	dsll	$13,$9,32
	daddu	$3,$11,$4
	jr	$31
	daddu	$2,$2,$13

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
	dsll	$10,$2,32
	dsrl	$11,$10,32
	mfhi	$9
	dsra	$10,$6,32
	dsll	$13,$9,32
	multu	$3,$15
	or	$14,$11,$13
	mflo	$24
	dsll	$3,$24,32
	dsrl	$2,$3,32
	mfhi	$25
	dsll	$9,$25,32
	or	$13,$2,$9
	multu	$8,$10
	mflo	$8
	dsll	$24,$8,32
	dsrl	$25,$24,32
	mfhi	$11
	dsll	$3,$11,32
	or	$8,$25,$3
	multu	$15,$10
	mfhi	$2
	dsll	$10,$2,32
	mflo	$15
	dsll	$9,$15,32
	dsrl	$11,$9,32
	dmult	$4,$7
	or	$24,$11,$10
	mflo	$4
	nop
	nop
	dmult	$6,$5
	dsrl	$5,$14,32
	dsll	$6,$14,32
	daddu	$14,$13,$5
	dsll	$13,$14,32
	dsrl	$25,$13,32
	daddu	$8,$8,$25
	dsrl	$3,$14,32
	daddu	$15,$3,$24
	dsrl	$2,$8,32
	daddu	$9,$15,$2
	dsrl	$7,$6,32
	daddu	$11,$4,$9
	dsll	$10,$8,32
	mflo	$24
	daddu	$3,$11,$24
	jr	$31
	daddu	$2,$7,$10

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
	xor	$4,$2,$4
	srl	$5,$4,8
	xor	$6,$5,$4
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
	beq	$2,$0,.L1716
	ld	$6,%got_page(.LC14)($7)

	ldc1	$f0,%got_ofst(.LC14)($6)
	move	$11,$5
	.align	3
.L1713:
	mul.d	$f0,$f0,$f12
.L1711:
	srl	$3,$11,31
	addu	$4,$3,$11
	sra	$11,$4,1
	beq	$11,$0,.L1712
	srl	$8,$11,31

	andi	$9,$11,0x1
	mul.d	$f12,$f12,$f12
	bne	$9,$0,.L1713
	addu	$10,$8,$11

	sra	$11,$10,1
.L1720:
	srl	$8,$11,31
	andi	$9,$11,0x1
	mul.d	$f12,$f12,$f12
	bne	$9,$0,.L1713
	addu	$10,$8,$11

	b	.L1720
	sra	$11,$10,1

	.align	3
.L1712:
	bltz	$5,.L1719
	ldc1	$f1,%got_ofst(.LC14)($6)

	jr	$31
	nop

	.align	3
.L1716:
	ldc1	$f0,%got_ofst(.LC14)($6)
	b	.L1711
	move	$11,$5

	.align	3
.L1719:
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
	beq	$2,$0,.L1727
	ld	$6,%got_page(.LC16)($7)

	lwc1	$f0,%got_ofst(.LC16)($6)
	move	$11,$5
	.align	3
.L1724:
	mul.s	$f0,$f0,$f12
.L1722:
	srl	$3,$11,31
	addu	$4,$3,$11
	sra	$11,$4,1
	beq	$11,$0,.L1723
	srl	$8,$11,31

	andi	$9,$11,0x1
	mul.s	$f12,$f12,$f12
	bne	$9,$0,.L1724
	addu	$10,$8,$11

	sra	$11,$10,1
.L1731:
	srl	$8,$11,31
	andi	$9,$11,0x1
	mul.s	$f12,$f12,$f12
	bne	$9,$0,.L1724
	addu	$10,$8,$11

	b	.L1731
	sra	$11,$10,1

	.align	3
.L1723:
	bltz	$5,.L1730
	lwc1	$f1,%got_ofst(.LC16)($6)

	jr	$31
	nop

	.align	3
.L1727:
	lwc1	$f0,%got_ofst(.LC16)($6)
	b	.L1722
	move	$11,$5

	.align	3
.L1730:
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
	bne	$6,$0,.L1736
	sltu	$8,$3,$2

	bne	$8,$0,.L1735
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1736
	sltu	$10,$5,$4

	jr	$31
	daddiu	$2,$10,1

	.align	3
.L1736:
	jr	$31
	move	$2,$0

	.align	3
.L1735:
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
	bne	$6,$0,.L1743
	sltu	$8,$3,$2

	bne	$8,$0,.L1742
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bne	$9,$0,.L1743
	nop

	jr	$31
	sltu	$2,$5,$4

	.align	3
.L1743:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1742:
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
	bne	$2,$0,.L1749
	sltu	$5,$7,$5

	bne	$5,$0,.L1748
	sltu	$7,$4,$6

	bne	$7,$0,.L1749
	sltu	$4,$6,$4

	jr	$31
	daddiu	$2,$4,1

	.align	3
.L1749:
	jr	$31
	move	$2,$0

	.align	3
.L1748:
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
	.globl	__ctzdi2
	.globl	__clzdi2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
