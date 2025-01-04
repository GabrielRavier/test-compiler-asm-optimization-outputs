	.file	1 "mini-libc.c"
	.section .mdebug.abi64
	.previous
	.nan	2008
	.module	fp=64
	.module	oddspreg
	.module	arch=mips64r2
	.module	dspr2
	.module	smartmips
	.module	mips16e2
	.abicalls
	.text
	.align	2
	.align	3
	.globl	make_ti
	.set	nomips16
	.set	micromips
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
	.set	micromips
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
	.set	micromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$5,$4
	beqz	$3,.L7
	move	$2,$4

	daddu	$5,$5,$6
	beqz	$6,.L38
	daddu	$3,$4,$6

	.align	3
.L9:
	lb	$7,-1($5)
	daddiu	$3,$3,-1
	daddiu	$5,$5,-1
	bne	$2,$3,.L9
	sb	$7,0($3)

.L38:
	jrc	$31
	.align	3
.L7:
	bne	$4,$5,.L35
	nop

	jrc	$31
	.align	3
.L35:
	beqz	$6,.L38
	daddiu	$4,$6,-1

	sltu	$7,$4,8
	bnez	$7,.L10
	daddiu	$4,$5,1

	or	$3,$5,$2
	andi	$7,$3,0x7
	bnezc	$7,.L10
	dsubu	$3,$2,$4
	sltu	$8,$3,7
	bnez	$8,.L10
	dsrl	$10,$6,3

	dsll	$11,$10,3
	move	$4,$2
	daddu	$12,$5,$11
	.align	3
.L11:
	ld	$13,0($5)
	daddiu	$5,$5,8
	sd	$13,0($4)
	bne	$12,$5,.L11
	daddiu	$4,$4,8

	daddu	$14,$2,$11
	beq	$6,$11,.L38
	dsubu	$15,$6,$11

	lb	$6,0($12)
	li	$5,1			# 0x1
	beq	$15,$5,.L38
	sb	$6,0($14)

	lb	$7,1($12)
	li	$24,2			# 0x2
	beq	$15,$24,.L38
	sb	$7,1($14)

	lb	$3,2($12)
	li	$25,3			# 0x3
	beq	$15,$25,.L38
	sb	$3,2($14)

	lb	$4,3($12)
	li	$8,4			# 0x4
	beq	$15,$8,.L38
	sb	$4,3($14)

	lb	$6,4($12)
	li	$10,5			# 0x5
	beq	$15,$10,.L38
	sb	$6,4($14)

	lb	$7,5($12)
	li	$11,6			# 0x6
	beq	$15,$11,.L38
	sb	$7,5($14)

	lb	$5,6($12)
	jr	$31
	sb	$5,6($14)

	.align	3
.L10:
	daddu	$6,$2,$6
	b	.L14
	move	$3,$2

	.align	3
.L36:
	daddiu	$4,$4,1
.L14:
	lb	$12,-1($4)
	daddiu	$3,$3,1
	bne	$3,$6,.L36
	sb	$12,-1($3)

	jrc	$31
	.set	macro
	.set	reorder
	.end	memmove
	.size	memmove, .-memmove
	.align	2
	.align	3
	.globl	memccpy
	.set	nomips16
	.set	micromips
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnez	$7,.L40
	andi	$6,$6,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L43:
	daddiu	$5,$5,1
	beqz	$7,.L42
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.align	3
	.globl	memchr
	.set	nomips16
	.set	micromips
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnez	$6,.L54
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L56:
	beqz	$6,.L57
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
	jrc	$31
	.set	macro
	.set	reorder
	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.align	3
	.globl	memcmp
	.set	nomips16
	.set	micromips
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnez	$6,.L65
	move	$2,$0

	b	.L77
	nop

	.align	3
.L67:
	daddiu	$4,$4,1
	beqz	$6,.L69
	daddiu	$5,$5,1

.L65:
	lbu	$2,0($4)
	lbu	$3,0($5)
	beq	$2,$3,.L67
	daddiu	$6,$6,-1

	jr	$31
	subu	$2,$2,$3

	.align	3
.L69:
	move	$2,$0
.L77:
	jrc	$31
	.set	macro
	.set	reorder
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.align	3
	.globl	memcpy
	.set	nomips16
	.set	micromips
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
	beqz	$6,.L79
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalrs	$25
	nop

.L79:
	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.align	3
	.globl	memrchr
	.set	nomips16
	.set	micromips
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$6,$6,-1
	daddu	$6,$4,$6
	andi	$5,$5,0x00ff
	b	.L85
	daddiu	$4,$4,-1

	.align	3
.L87:
	lbu	$3,0($2)
	beq	$3,$5,.L89
	daddiu	$6,$6,-1

.L85:
	bne	$6,$4,.L87
	move	$2,$6

	move	$2,$0
.L89:
	jrc	$31
	.set	macro
	.set	reorder
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
	.align	3
	.globl	memset
	.set	nomips16
	.set	micromips
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
	beqz	$6,.L93
	move	$16,$4

	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MICROMIPS_JALR,memset
1:	jalrs	$25
	andi	$5,$5,0x00ff

.L93:
	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	memset
	.size	memset, .-memset
	.align	2
	.align	3
	.globl	stpcpy
	.set	nomips16
	.set	micromips
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
	beqz	$3,.L103
	sb	$3,0($4)

	.align	3
.L97:
	lb	$4,1($5)
	daddiu	$2,$2,1
	daddiu	$5,$5,1
	bnez	$4,.L97
	sb	$4,0($2)

.L103:
	jrc	$31
	.set	macro
	.set	reorder
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
	.align	3
	.globl	strchrnul
	.set	nomips16
	.set	micromips
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
	beqz	$4,.L113
	andi	$5,$5,0x00ff

	b	.L114
	andi	$3,$4,0x00ff

	.align	3
.L107:
	lb	$4,1($2)
	beqz	$4,.L113
	daddiu	$2,$2,1

	andi	$3,$4,0x00ff
.L114:
	bne	$3,$5,.L107
	nop

.L113:
	jrc	$31
	.set	macro
	.set	reorder
	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
	.align	3
	.globl	strchr
	.set	nomips16
	.set	micromips
	.ent	strchr
	.type	strchr, @function
strchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L117
	move	$2,$4

	.align	3
.L121:
	beqz	$3,.L120
	daddiu	$2,$2,1

.L117:
	lb	$3,0($2)
	bne	$3,$5,.L121
	nop

	jrc	$31
	.align	3
.L120:
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
	.set	micromips
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
	beq	$3,$2,.L133
	daddiu	$4,$4,1

	b	.L132
	andi	$3,$3,0x00ff

	.align	3
.L125:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,.L131
	daddiu	$4,$4,1

.L133:
	bnez	$3,.L125
	daddiu	$5,$5,1

	andi	$4,$2,0x00ff
	jr	$31
	subu	$2,$3,$4

	.align	3
.L131:
	andi	$3,$3,0x00ff
	.align	3
.L132:
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
	.set	micromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$2,0($4)
	beqz	$2,.L137
	move	$6,$4

	.align	3
.L136:
	lb	$3,1($6)
	bnez	$3,.L136
	daddiu	$6,$6,1

	jr	$31
	dsubu	$2,$6,$4

	.align	3
.L137:
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
	.set	micromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqzc	$6,.L148
	lbu	$2,0($4)
	beqz	$2,.L151
	daddiu	$6,$6,-1

	b	.L144
	daddu	$6,$4,$6

	.align	3
.L153:
	beq	$4,$6,.L143
	nop

	bne	$3,$2,.L143
	daddiu	$4,$4,1

	lbu	$2,0($4)
	beqzc	$2,.L152
	move	$5,$7
.L144:
	lbu	$3,0($5)
	bnez	$3,.L153
	daddiu	$7,$5,1

.L143:
	jr	$31
	subu	$2,$2,$3

	.align	3
.L148:
	jr	$31
	move	$2,$0

	.align	3
.L152:
	lbu	$3,1($5)
	jr	$31
	subu	$2,$2,$3

.L151:
	b	.L143
	lbu	$3,0($5)

	.set	macro
	.set	reorder
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.align	3
	.globl	swab
	.set	nomips16
	.set	micromips
	.ent	swab
	.type	swab, @function
swab:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$6,2
	bnez	$2,.L159
	dsrl	$3,$6,1

	dsll	$6,$3,1
	daddu	$2,$4,$6
	.align	3
.L156:
	lbu	$6,1($4)
	lbu	$3,0($4)
	daddiu	$4,$4,2
	sb	$6,0($5)
	sb	$3,1($5)
	bne	$4,$2,.L156
	daddiu	$5,$5,2

.L159:
	jrc	$31
	.set	macro
	.set	reorder
	.end	swab
	.size	swab, .-swab
	.align	2
	.align	3
	.globl	isalpha
	.set	nomips16
	.set	micromips
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
	.set	micromips
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
	.set	micromips
	.ent	isblank
	.type	isblank, @function
isblank:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,32			# 0x20
	beq	$4,$2,.L166
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

	.align	3
.L166:
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
	.set	micromips
	.ent	iscntrl
	.type	iscntrl, @function
iscntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,32
	bnez	$2,.L170
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

	.align	3
.L170:
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
	.set	micromips
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
	.set	micromips
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
	.set	micromips
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
	.set	micromips
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
	.set	micromips
	.ent	isspace
	.type	isspace, @function
isspace:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,32			# 0x20
	beq	$4,$2,.L182
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

	.align	3
.L182:
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
	.set	micromips
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
	.set	micromips
	.ent	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,32
	bnez	$2,.L190
	addiu	$5,$4,-127

	sltu	$6,$5,33
	beqz	$6,.L192
	addiu	$7,$4,-8232

.L190:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L192:
	sltu	$8,$7,2
	bnezc	$8,.L190
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
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
	.set	micromips
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
	.set	micromips
	.ent	iswprint
	.type	iswprint, @function
iswprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,255
	bnez	$2,.L203
	sltu	$3,$4,8232

	bnez	$3,.L200
	addiu	$6,$4,-8234

	li	$7,47062			# 0xb7d6
	sltu	$8,$6,$7
	bnezc	$8,.L200
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$3,$2,8192
	addu	$6,$4,$3
	sltu	$9,$6,8185
	bnez	$9,.L200
	addiu	$7,$2,4

	li	$3,1048576			# 0x100000
	addu	$2,$4,$7
	addiu	$6,$3,4
	sltu	$10,$2,$6
	beqz	$10,.L201
	andi	$4,$4,0xfffe

	xori	$11,$4,0xfffe
	jr	$31
	sltu	$2,$0,$11

	.align	3
.L200:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L203:
	addiu	$7,$4,1
	andi	$12,$7,0x7f
	sltu	$13,$12,33
	jr	$31
	sltu	$2,$13,1

	.align	3
.L201:
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
	.set	micromips
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
	bnez	$5,.L206
	ori	$4,$4,0x20

	addiu	$6,$4,-97
	jr	$31
	sltu	$2,$6,6

	.align	3
.L206:
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
	.set	micromips
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
	.set	micromips
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L213
	c.un.d	$fcc1,$f13,$f13

	bc1t	$fcc1,.L214
	nop

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L217
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

	.align	3
.L217:
	jr	$31
	dmtc1	$0,$f0

	.align	3
.L213:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L214:
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
	.set	micromips
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L222
	c.un.s	$fcc1,$f13,$f13

	bc1t	$fcc1,.L223
	nop

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L226
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

	.align	3
.L226:
	jr	$31
	mtc1	$0,$f0

	.align	3
.L222:
	jr	$31
	mov.s	$f0,$f12

	.align	3
.L223:
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
	.set	micromips
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
	bc1t	$fcc0,.L228
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L232
	ld	$2,0($sp)

	ld	$3,8($sp)
	dsrl	$5,$2,63
	dext	$6,$3,63,1
	beq	$5,$6,.L230
	mov.d	$f0,$f12

	movn.d	$f0,$f13,$5
.L228:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L230:
	c.lt.d	$fcc2,$f12,$f13
	daddiu	$sp,$sp,16
	jr	$31
	movt.d	$f0,$f13,$fcc2

	.align	3
.L232:
	b	.L228
	mov.d	$f0,$f12

	.set	macro
	.set	reorder
	.end	fmax
	.size	fmax, .-fmax
	.align	2
	.align	3
	.globl	fmaxf
	.set	nomips16
	.set	micromips
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
	bc1t	$fcc0,.L235
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L239
	lw	$3,0($sp)

	lw	$2,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	and	$2,$2,$4
	mov.s	$f0,$f12
	beq	$3,$2,.L237
	move	$6,$3

	movn.s	$f0,$f13,$6
.L235:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L237:
	c.lt.s	$fcc2,$f12,$f13
	daddiu	$sp,$sp,16
	jr	$31
	movt.s	$f0,$f13,$fcc2

	.align	3
.L239:
	b	.L235
	mov.s	$f0,$f12

	.set	macro
	.set	reorder
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
	.align	3
	.globl	fmaxl
	.set	nomips16
	.set	micromips
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
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	move	$20,$3

	bnez	$2,.L242
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$23,$f14
	dmtc1	$23,$f12
	dmtc1	$22,$f15
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$22,$f13

	bnez	$2,.L249
	dsrl	$2,$20,63

	dext	$4,$22,63,1
	beq	$2,$4,.L244
	ld	$25,%call16(__lttf2)($28)

	beqz	$2,.L254
	ld	$31,104($sp)

.L242:
	ld	$31,104($sp)
.L255:
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
	jraddiusp	112
	.align	3
.L244:
	sd	$23,0($sp)
	sd	$fp,16($sp)
	ldc1	$f14,0($sp)
	ldc1	$f12,16($sp)
	sd	$22,8($sp)
	sd	$20,24($sp)
	ldc1	$f15,8($sp)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f13,24($sp)

	bltz	$2,.L255
	ld	$31,104($sp)

.L249:
	ld	$31,104($sp)
.L254:
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
	jraddiusp	112
	.set	macro
	.set	reorder
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
	.align	3
	.globl	fmin
	.set	nomips16
	.set	micromips
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
	bc1t	$fcc0,.L256
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L260
	ld	$2,0($sp)

	ld	$3,8($sp)
	dsrl	$5,$2,63
	dext	$6,$3,63,1
	beq	$5,$6,.L258
	nop

	movn.d	$f0,$f12,$5
.L256:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L258:
	c.lt.d	$fcc2,$f12,$f13
	mov.d	$f0,$f12
	daddiu	$sp,$sp,16
	jr	$31
	movf.d	$f0,$f13,$fcc2

	.align	3
.L260:
	b	.L256
	mov.d	$f0,$f12

	.set	macro
	.set	reorder
	.end	fmin
	.size	fmin, .-fmin
	.align	2
	.align	3
	.globl	fminf
	.set	nomips16
	.set	micromips
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
	bc1t	$fcc0,.L263
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L267
	lw	$3,0($sp)

	lw	$2,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	and	$2,$2,$4
	beq	$3,$2,.L265
	move	$6,$3

	movn.s	$f0,$f12,$6
.L263:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L265:
	c.lt.s	$fcc2,$f12,$f13
	mov.s	$f0,$f12
	daddiu	$sp,$sp,16
	jr	$31
	movf.s	$f0,$f13,$fcc2

	.align	3
.L267:
	b	.L263
	mov.s	$f0,$f12

	.set	macro
	.set	reorder
	.end	fminf
	.size	fminf, .-fminf
	.align	2
	.align	3
	.globl	fminl
	.set	nomips16
	.set	micromips
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
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	move	$20,$3

	bnez	$2,.L276
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$fp,$f14
	dmtc1	$fp,$f12
	dmtc1	$23,$f15
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$23,$f13

	bnez	$2,.L270
	dsrl	$2,$20,63

	dext	$4,$23,63,1
	beq	$2,$4,.L272
	ld	$25,%call16(__lttf2)($28)

	beqz	$2,.L282
	ld	$31,104($sp)

.L270:
	ld	$31,104($sp)
.L283:
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
	jraddiusp	112
	.align	3
.L272:
	sd	$fp,0($sp)
	sd	$22,16($sp)
	ldc1	$f14,0($sp)
	ldc1	$f12,16($sp)
	sd	$23,8($sp)
	sd	$20,24($sp)
	ldc1	$f15,8($sp)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f13,24($sp)

	bltz	$2,.L283
	ld	$31,104($sp)

.L276:
	ld	$31,104($sp)
.L282:
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
	jraddiusp	112
	.set	macro
	.set	reorder
	.end	fminl
	.size	fminl, .-fminl
	.align	2
	.align	3
	.globl	l64a
	.set	nomips16
	.set	micromips
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
	beqz	$4,.L287
	daddiu	$7,$7,%lo(%neg(%gp_rel(l64a)))

	ld	$8,%got_page(s.0)($7)
	ld	$6,%got_page(digits)($7)
	daddiu	$2,$8,%got_ofst(s.0)
	move	$3,$4
	move	$5,$2
	daddiu	$6,$6,%got_ofst(digits)
	.align	3
.L286:
	andi	$4,$3,0x3f
	daddu	$4,$6,$4
	lbu	$4,0($4)
	dext	$3,$3,6,26
	sb	$4,0($5)
	bnez	$3,.L286
	daddiu	$5,$5,1

	jr	$31
	sb	$0,0($5)

	.align	3
.L287:
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
	.set	micromips
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
	dext	$5,$4,0,32
	jr	$31
	sd	$5,%got_ofst(seed)($2)

	.set	macro
	.set	reorder
	.end	srand
	.size	srand, .-srand
	.align	2
	.align	3
	.globl	rand
	.set	nomips16
	.set	micromips
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
	li	$2,1481703424			# 0x58510000
	ori	$4,$2,0xf42d
	daddiu	$5,$5,%lo(%neg(%gp_rel(rand)))
	ld	$3,%got_page(seed)($5)
	dsll	$6,$4,16
	daddiu	$7,$6,19605
	ld	$8,%got_ofst(seed)($3)
	dsll	$9,$7,16
	daddiu	$10,$9,32557
	dmult	$8,$10
	mflo	$2
	daddiu	$4,$2,1
	sd	$4,%got_ofst(seed)($3)
	jr	$31
	dsrl	$2,$4,33

	.set	macro
	.set	reorder
	.end	rand
	.size	rand, .-rand
	.align	2
	.align	3
	.globl	insque
	.set	nomips16
	.set	micromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqzc	$5,.L301
	ld	$2,0($5)
	sd	$5,8($4)
	sd	$2,0($4)
	sd	$4,0($5)
	ld	$5,0($4)
	beqzc	$5,.L302
	sd	$4,8($5)
.L302:
	jrc	$31
	.align	3
.L301:
	sd	$0,8($4)
	jr	$31
	sd	$0,0($4)

	.set	macro
	.set	reorder
	.end	insque
	.size	insque, .-insque
	.align	2
	.align	3
	.globl	remque
	.set	nomips16
	.set	micromips
	.ent	remque
	.type	remque, @function
remque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($4)
	beqzc	$2,.L304
	ld	$3,8($4)
	sd	$3,8($2)
.L304:
	ld	$4,8($4)
	beqzc	$4,.L313
	sd	$2,0($4)
.L313:
	jrc	$31
	.set	macro
	.set	reorder
	.end	remque
	.size	remque, .-remque
	.align	2
	.align	3
	.globl	lsearch
	.set	nomips16
	.set	micromips
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
	beqz	$19,.L315
	move	$18,$7

	move	$22,$8
	move	$16,$5
	b	.L317
	move	$17,$0

	.align	3
.L330:
	beq	$19,$17,.L315
	daddu	$16,$16,$18

.L317:
	move	$5,$16
	move	$4,$20
	move	$25,$22
	jalr	$25
	move	$21,$16

	bnez	$2,.L330
	daddiu	$17,$17,1

.L314:
	ld	$31,88($sp)
	move	$2,$21
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
	jraddiusp	96
	.align	3
.L315:
	dmult	$18,$19
	daddiu	$19,$19,1
	sd	$19,0($23)
	mflo	$21
	beqz	$18,.L314
	daddu	$21,$fp,$21

	ld	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MICROMIPS_JALR,memmove
1:	jalr	$25
	move	$4,$21

	ld	$31,88($sp)
	move	$2,$21
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
	jraddiusp	96
	.set	macro
	.set	reorder
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.align	3
	.globl	lfind
	.set	nomips16
	.set	micromips
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
	beqz	$20,.L332
	sd	$16,8($sp)

	move	$18,$4
	move	$21,$7
	move	$19,$8
	move	$16,$5
	b	.L334
	move	$17,$0

	.align	3
.L343:
	beq	$20,$17,.L332
	daddu	$16,$16,$21

.L334:
	move	$5,$16
	move	$4,$18
	move	$25,$19
	jalr	$25
	move	$22,$16

	bnez	$2,.L343
	daddiu	$17,$17,1

	ld	$31,72($sp)
	move	$2,$22
	ld	$21,48($sp)
	ld	$22,56($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	80
	.align	3
.L332:
	ld	$31,72($sp)
	move	$22,$0
	move	$2,$22
	ld	$21,48($sp)
	ld	$22,56($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	lfind
	.size	lfind, .-lfind
	.align	2
	.align	3
	.globl	abs
	.set	nomips16
	.set	micromips
	.ent	abs
	.type	abs, @function
abs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L348
	nop

	jr	$31
	move	$2,$4

	.align	3
.L348:
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
	.set	micromips
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,32			# 0x20
.L356:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L350
	sltu	$6,$2,5

	bnez	$6,.L350
	li	$7,43			# 0x2b

	beq	$5,$7,.L351
	li	$3,45			# 0x2d

	bne	$5,$3,.L369
	addiu	$13,$5,-48

	lb	$11,1($4)
	addiu	$13,$11,-48
	sltu	$12,$13,10
	beqz	$12,.L361
	daddiu	$4,$4,1

	li	$15,1			# 0x1
.L354:
	move	$2,$0
	.align	3
.L358:
	sll	$5,$2,2
	lb	$24,1($4)
	addu	$2,$5,$2
	sll	$25,$2,1
	move	$7,$13
	subu	$2,$25,$13
	addiu	$13,$24,-48
	sltu	$6,$13,10
	bnez	$6,.L358
	daddiu	$4,$4,1

	bnezc	$15,.L370
	jr	$31
	subu	$2,$7,$25

	.align	3
.L350:
	b	.L356
	daddiu	$4,$4,1

	.align	3
.L369:
	sltu	$14,$13,10
	bnez	$14,.L354
	move	$15,$0

.L361:
	move	$2,$0
.L370:
	jrc	$31
	.align	3
.L351:
	lb	$8,1($4)
	move	$15,$0
	addiu	$13,$8,-48
	sltu	$10,$13,10
	bnez	$10,.L354
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
	.set	micromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,32			# 0x20
.L378:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L372
	sltu	$6,$2,5

	bnez	$6,.L372
	li	$7,43			# 0x2b

	beq	$5,$7,.L373
	li	$3,45			# 0x2d

	bne	$5,$3,.L391
	addiu	$13,$5,-48

	lb	$11,1($4)
	addiu	$13,$11,-48
	sltu	$12,$13,10
	beqz	$12,.L383
	daddiu	$4,$4,1

	li	$15,1			# 0x1
.L376:
	move	$2,$0
	.align	3
.L380:
	lb	$24,1($4)
	dsll	$5,$2,2
	daddu	$2,$5,$2
	move	$5,$13
	addiu	$13,$24,-48
	dsll	$6,$2,1
	sltu	$25,$13,10
	daddiu	$4,$4,1
	bnez	$25,.L380
	dsubu	$2,$6,$5

	bnezc	$15,.L392
	jr	$31
	dsubu	$2,$5,$6

	.align	3
.L372:
	b	.L378
	daddiu	$4,$4,1

	.align	3
.L391:
	sltu	$14,$13,10
	bnez	$14,.L376
	move	$15,$0

.L383:
	move	$2,$0
.L392:
	jrc	$31
	.align	3
.L373:
	lb	$8,1($4)
	move	$15,$0
	addiu	$13,$8,-48
	sltu	$10,$13,10
	bnez	$10,.L376
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
	.set	micromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,32			# 0x20
.L398:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L394
	sltu	$6,$2,5

	bnez	$6,.L394
	li	$7,43			# 0x2b

	beq	$5,$7,.L395
	li	$3,45			# 0x2d

	beq	$5,$3,.L396
	li	$12,1			# 0x1

.L413:
	addiu	$14,$5,-48
	sltu	$11,$14,10
	beqz	$11,.L405
	move	$12,$0

.L399:
	move	$2,$0
	.align	3
.L402:
	lb	$13,1($4)
	dsll	$6,$2,2
	daddu	$2,$6,$2
	move	$6,$14
	addiu	$14,$13,-48
	dsll	$5,$2,1
	sltu	$15,$14,10
	daddiu	$4,$4,1
	bnez	$15,.L402
	dsubu	$2,$5,$6

	beqzc	$12,.L414
	jrc	$31
	.align	3
.L394:
	b	.L398
	daddiu	$4,$4,1

	.align	3
.L414:
	jr	$31
	dsubu	$2,$6,$5

	.align	3
.L396:
	lb	$8,1($4)
	addiu	$14,$8,-48
	sltu	$10,$14,10
	bnez	$10,.L399
	daddiu	$4,$4,1

.L405:
	jr	$31
	move	$2,$0

	.align	3
.L395:
	lb	$5,1($4)
	b	.L413
	daddiu	$4,$4,1

	.set	macro
	.set	reorder
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.align	3
	.globl	bsearch
	.set	nomips16
	.set	micromips
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
	beqz	$6,.L416
	sd	$16,8($sp)

	move	$16,$6
	move	$20,$4
	move	$18,$5
	move	$19,$7
	b	.L419
	move	$21,$8

	.align	3
.L429:
	beqz	$2,.L415
	dsubu	$16,$16,$22

	beqz	$16,.L416
	daddu	$18,$17,$19

.L419:
	dsrl	$22,$16,1
.L430:
	dmult	$22,$19
	move	$4,$20
	move	$25,$21
	daddiu	$16,$16,-1
	mflo	$17
	daddu	$17,$18,$17
	jalr	$25
	move	$5,$17

	bgez	$2,.L429
	nop

	move	$16,$22
	bnez	$16,.L430
	dsrl	$22,$16,1

.L416:
	move	$17,$0
.L415:
	ld	$31,72($sp)
	move	$2,$17
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.align	3
	.globl	bsearch_r
	.set	nomips16
	.set	micromips
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
	beqz	$6,.L436
	move	$16,$6

	.align	3
.L444:
	dsra	$fp,$16,1
	.align	3
.L448:
	dmult	$fp,$18
	move	$6,$22
	move	$4,$20
	move	$25,$21
	sra	$19,$16,1
	addiu	$16,$16,-1
	sra	$16,$16,1
	mflo	$23
	daddu	$23,$17,$23
	jalr	$25
	move	$5,$23

	beqz	$2,.L447
	ld	$31,88($sp)

	blez	$2,.L434
	nop

	bnez	$16,.L444
	daddu	$17,$23,$18

.L436:
	move	$23,$0
	ld	$31,88($sp)
.L447:
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
	jraddiusp	96
	.align	3
.L434:
	beqz	$fp,.L436
	move	$16,$19

	b	.L448
	dsra	$fp,$16,1

	.set	macro
	.set	reorder
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.align	3
	.globl	div
	.set	nomips16
	.set	micromips
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
	move	$3,$0
	move	$2,$0
	daddiu	$sp,$sp,-16
	daddiu	$sp,$sp,16
	mflo	$5
	mfhi	$4
	dins	$3,$5,0,32
	dins	$3,$4,32,32
	sll	$7,$3,0
	dext	$8,$7,0,32
	dins	$2,$8,0,32
	dsrl	$9,$3,32
	jr	$31
	dins	$2,$9,32,32

	.set	macro
	.set	reorder
	.end	div
	.size	div, .-div
	.align	2
	.align	3
	.globl	imaxabs
	.set	nomips16
	.set	micromips
	.ent	imaxabs
	.type	imaxabs, @function
imaxabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L454
	move	$2,$4

	jrc	$31
	.align	3
.L454:
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
	.set	micromips
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
	.set	micromips
	.ent	labs
	.type	labs, @function
labs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L462
	move	$2,$4

	jrc	$31
	.align	3
.L462:
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
	.set	micromips
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
	.set	micromips
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L470
	move	$2,$4

	jrc	$31
	.align	3
.L470:
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
	.set	micromips
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
	.set	micromips
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	bnezc	$2,.L476
	jrc	$31
	.align	3
.L478:
	lw	$2,4($4)
	beqz	$2,.L479
	daddiu	$4,$4,4

.L476:
	bne	$5,$2,.L478
	move	$2,$4

	jrc	$31
	.align	3
.L479:
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
	.set	micromips
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
	beq	$2,$3,.L494
	daddiu	$4,$4,4

	daddiu	$4,$4,-4
	b	.L493
	slt	$4,$2,$3

	.align	3
.L487:
	lw	$2,0($4)
	lw	$3,0($5)
	bne	$2,$3,.L486
	daddiu	$4,$4,4

.L494:
	bnez	$2,.L487
	daddiu	$5,$5,4

.L486:
	slt	$4,$2,$3
.L493:
	bnezc	$4,.L489
	jr	$31
	slt	$2,$3,$2

	.align	3
.L489:
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
	.set	micromips
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
.L496:
	lw	$6,0($5)
	daddiu	$3,$3,4
	daddiu	$5,$5,4
	bnez	$6,.L496
	sw	$6,-4($3)

	jrc	$31
	.set	macro
	.set	reorder
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
	.align	3
	.globl	wcslen
	.set	nomips16
	.set	micromips
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	beqz	$2,.L502
	move	$6,$4

	.align	3
.L501:
	lw	$3,4($6)
	bnez	$3,.L501
	daddiu	$6,$6,4

	dsubu	$4,$6,$4
	jr	$31
	dsra	$2,$4,2

	.align	3
.L502:
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
	.set	micromips
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnez	$6,.L506
	move	$2,$0

	b	.L519
	nop

	.align	3
.L517:
	beqzc	$2,.L508
	daddiu	$4,$4,4
	beqz	$6,.L511
	daddiu	$5,$5,4

.L506:
	lw	$2,0($4)
	lw	$3,0($5)
	beq	$3,$2,.L517
	daddiu	$6,$6,-1

.L508:
	lw	$6,0($4)
	lw	$5,0($5)
	slt	$4,$6,$5
	bnezc	$4,.L518
	jr	$31
	slt	$2,$5,$6

	.align	3
.L518:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L511:
	move	$2,$0
.L519:
	jrc	$31
	.set	macro
	.set	reorder
	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
	.align	3
	.globl	wmemchr
	.set	nomips16
	.set	micromips
	.ent	wmemchr
	.type	wmemchr, @function
wmemchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnez	$6,.L521
	move	$2,$0

	b	.L529
	nop

	.align	3
.L523:
	beqz	$6,.L524
	daddiu	$4,$4,4

.L521:
	lw	$2,0($4)
	bne	$2,$5,.L523
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L524:
	move	$2,$0
.L529:
	jrc	$31
	.set	macro
	.set	reorder
	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
	.align	3
	.globl	wmemcmp
	.set	nomips16
	.set	micromips
	.ent	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnez	$6,.L531
	move	$2,$0

	b	.L545
	nop

	.align	3
.L533:
	daddiu	$4,$4,4
	beqz	$6,.L536
	daddiu	$5,$5,4

.L531:
	lw	$3,0($4)
	lw	$2,0($5)
	beq	$3,$2,.L533
	daddiu	$6,$6,-1

	lw	$6,0($4)
	lw	$5,0($5)
	slt	$4,$6,$5
	bnezc	$4,.L544
	jr	$31
	slt	$2,$5,$6

	.align	3
.L536:
	jr	$31
	move	$2,$0

	.align	3
.L544:
	li	$2,-1			# 0xffffffffffffffff
.L545:
	jrc	$31
	.set	macro
	.set	reorder
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.align	3
	.globl	wmemcpy
	.set	nomips16
	.set	micromips
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
	beqz	$6,.L547
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L547:
	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.align	3
	.globl	wmemmove
	.set	nomips16
	.set	micromips
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L587
	move	$2,$4

	dsll	$3,$6,2
	dsubu	$8,$4,$5
	sltu	$9,$8,$3
	move	$7,$5
	bnez	$9,.L554
	daddiu	$3,$6,-1

	beqz	$6,.L587
	sltu	$11,$3,9

	bnez	$11,.L564
	or	$12,$5,$4

	andi	$13,$12,0x7
	bnez	$13,.L584
	daddiu	$14,$5,4

	beq	$4,$14,.L565
	dsrl	$15,$6,1

	move	$3,$0
	.align	3
.L559:
	ld	$24,0($7)
	daddiu	$3,$3,1
	sd	$24,0($4)
	daddiu	$7,$7,8
	bne	$15,$3,.L559
	daddiu	$4,$4,8

	andi	$3,$6,0x1
	beqz	$3,.L587
	li	$7,-2			# 0xfffffffffffffffe

	and	$6,$6,$7
	dsll	$6,$6,2
	lwx	$5,$6($5)
	daddu	$4,$2,$6
	jr	$31
	sw	$5,0($4)

	.align	3
.L564:
	move	$7,$4
	daddiu	$14,$5,4
.L558:
	b	.L562
	li	$25,-1			# 0xffffffffffffffff

	.align	3
.L585:
	daddiu	$14,$14,4
.L562:
	lw	$8,-4($14)
	daddiu	$3,$3,-1
	daddiu	$7,$7,4
	bne	$3,$25,.L585
	sw	$8,-4($7)

.L587:
	jrc	$31
	.align	3
.L554:
	beqz	$6,.L587
	dsll	$3,$3,2

	li	$9,-4			# 0xfffffffffffffffc
	.align	3
.L557:
	lwx	$6,$3($5)
	daddu	$4,$2,$3
	daddiu	$3,$3,-4
	bne	$3,$9,.L557
	sw	$6,0($4)

	jrc	$31
.L584:
.L565:
	b	.L558
	move	$7,$2

	.set	macro
	.set	reorder
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
	.align	3
	.globl	wmemset
	.set	nomips16
	.set	micromips
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$6,.L607
	move	$2,$4

	daddiu	$4,$6,-1
	sltu	$7,$4,6
	bnez	$7,.L594
	dext	$3,$2,2,1

	beqz	$3,.L591
	move	$10,$2

	daddiu	$10,$2,4
	sw	$5,0($2)
	daddiu	$4,$6,-2
.L591:
	move	$12,$0
	dsubu	$6,$6,$3
	dsll	$7,$3,2
	dins	$12,$5,0,32
	daddu	$3,$2,$7
	dsrl	$9,$6,1
	dins	$12,$5,32,32
	move	$7,$0
	.align	3
.L592:
	daddiu	$7,$7,1
	sd	$12,0($3)
	bne	$7,$9,.L592
	daddiu	$3,$3,8

	andi	$7,$6,0x1
	beqz	$7,.L607
	li	$3,-2			# 0xfffffffffffffffe

	and	$6,$6,$3
	dsll	$7,$6,2
	dsubu	$4,$4,$6
	daddu	$8,$10,$7
.L590:
	beqz	$4,.L607
	sw	$5,0($8)

	li	$13,1			# 0x1
	beq	$4,$13,.L607
	sw	$5,4($8)

	li	$14,2			# 0x2
	beq	$4,$14,.L607
	sw	$5,8($8)

	li	$15,3			# 0x3
	beq	$4,$15,.L607
	sw	$5,12($8)

	li	$24,4			# 0x4
	beq	$4,$24,.L607
	sw	$5,16($8)

	sw	$5,20($8)
.L607:
	jrc	$31
.L594:
	b	.L590
	move	$8,$2

	.set	macro
	.set	reorder
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.align	3
	.globl	bcopy
	.set	nomips16
	.set	micromips
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$5
	beqz	$2,.L609
	daddu	$7,$4,$6

	beqz	$6,.L642
	daddu	$5,$5,$6

	.align	3
.L611:
	lb	$6,-1($7)
	daddiu	$7,$7,-1
	daddiu	$5,$5,-1
	bne	$4,$7,.L611
	sb	$6,0($5)

.L642:
	jrc	$31
	.align	3
.L609:
	bne	$4,$5,.L638
	nop

	jrc	$31
	.align	3
.L638:
	beqz	$6,.L642
	daddiu	$3,$6,-1

	sltu	$7,$3,8
	bnez	$7,.L636
	or	$2,$5,$4

	andi	$3,$2,0x7
	bnez	$3,.L640
	daddiu	$3,$4,1

	dsubu	$7,$5,$3
	sltu	$8,$7,7
	bnez	$8,.L612
	dsrl	$10,$6,3

	dsll	$11,$10,3
	move	$2,$5
	daddu	$12,$4,$11
	.align	3
.L613:
	ld	$13,0($4)
	daddiu	$4,$4,8
	sd	$13,0($2)
	bne	$12,$4,.L613
	daddiu	$2,$2,8

	daddu	$5,$5,$11
	beq	$6,$11,.L642
	dsubu	$14,$6,$11

	lb	$4,0($12)
	li	$6,1			# 0x1
	beq	$14,$6,.L642
	sb	$4,0($5)

	lb	$7,1($12)
	li	$15,2			# 0x2
	beq	$14,$15,.L642
	sb	$7,1($5)

	lb	$2,2($12)
	li	$24,3			# 0x3
	beq	$14,$24,.L642
	sb	$2,2($5)

	lb	$4,3($12)
	li	$25,4			# 0x4
	beq	$14,$25,.L642
	sb	$4,3($5)

	lb	$6,4($12)
	li	$3,5			# 0x5
	beq	$14,$3,.L642
	sb	$6,4($5)

	lb	$7,5($12)
	li	$8,6			# 0x6
	beq	$14,$8,.L642
	sb	$7,5($5)

	lb	$2,6($12)
	jr	$31
	sb	$2,6($5)

	.align	3
.L636:
	daddiu	$3,$4,1
.L612:
	.align	3
.L640:
	b	.L616
	daddu	$4,$4,$6

	.align	3
.L639:
	daddiu	$3,$3,1
.L616:
	lb	$10,-1($3)
	daddiu	$5,$5,1
	bne	$3,$4,.L639
	sb	$10,-1($5)

	jrc	$31
	.set	macro
	.set	reorder
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
	.align	3
	.globl	rotl64
	.set	nomips16
	.set	micromips
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
	.set	micromips
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
	.set	micromips
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
	.set	micromips
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
	.set	micromips
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
	.set	micromips
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
	.set	micromips
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
	or	$5,$7,$4
	jr	$31
	andi	$2,$5,0xffff

	.set	macro
	.set	reorder
	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
	.align	3
	.globl	rotr16
	.set	nomips16
	.set	micromips
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
	or	$5,$7,$4
	jr	$31
	andi	$2,$5,0xffff

	.set	macro
	.set	reorder
	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
	.align	3
	.globl	rotl8
	.set	nomips16
	.set	micromips
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
	or	$5,$7,$4
	jr	$31
	andi	$2,$5,0x00ff

	.set	macro
	.set	reorder
	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
	.align	3
	.globl	rotr8
	.set	nomips16
	.set	micromips
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
	or	$5,$7,$4
	jr	$31
	andi	$2,$5,0x00ff

	.set	macro
	.set	reorder
	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
	.align	3
	.globl	bswap_16
	.set	nomips16
	.set	micromips
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	wsbh	$2,$4
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.align	3
	.globl	bswap_32
	.set	nomips16
	.set	micromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	wsbh	$2,$4
	jr	$31
	ror	$2,$2,16

	.set	macro
	.set	reorder
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.align	3
	.globl	bswap_64
	.set	nomips16
	.set	micromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsbh	$2,$4
	jr	$31
	dshd	$2,$2

	.set	macro
	.set	reorder
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.align	3
	.globl	ffs
	.set	nomips16
	.set	micromips
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$3,$0
	b	.L672
	li	$6,32			# 0x20

	.align	3
.L676:
	beq	$6,$2,.L675
	nop

.L672:
	srl	$5,$4,$3
	addiu	$2,$3,1
	andi	$5,$5,0x1
	beqz	$5,.L676
	move	$3,$2

	jrc	$31
	.align	3
.L675:
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
	.set	micromips
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$4,.L685
	move	$2,$0

	andi	$2,$4,0x1
	bnezc	$2,.L684
	li	$2,1			# 0x1
	.align	3
.L679:
	dsra	$4,$4,1
	andi	$3,$4,0x1
	beqz	$3,.L679
	addiu	$2,$2,1

.L685:
	jrc	$31
.L684:
	jrc	$31
	.set	macro
	.set	reorder
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.align	3
	.globl	gl_isinff
	.set	nomips16
	.set	micromips
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
	bc1t	$fcc0,.L689
	ld	$3,%got_page(.LC1)($4)

	lwc1	$f1,%got_ofst(.LC1)($3)
	c.lt.s	$fcc1,$f1,$f12
	bc1f	$fcc1,.L691
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L689:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L691:
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
	.set	micromips
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
	bc1t	$fcc0,.L695
	ld	$3,%got_page(.LC3)($4)

	ldc1	$f1,%got_ofst(.LC3)($3)
	c.lt.d	$fcc1,$f1,$f12
	bc1f	$fcc1,.L697
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L695:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L697:
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
	.set	micromips
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
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	dmfc1	$16,$f13

	bltz	$2,.L701
	ld	$31,40($sp)

	ld	$3,%got_page(.LC5)($28)
	dmtc1	$17,$f12
	ldc1	$f14,%got_ofst(.LC5)($3)
	ld	$25,%call16(__gttf2)($28)
	dmtc1	$16,$f13
	.reloc	1f,R_MICROMIPS_JALR,__gttf2
1:	jalr	$25
	ldc1	$f15,%got_ofst(.LC5+8)($3)

	ld	$31,40($sp)
	slt	$2,$0,$2
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	48
	.align	3
.L701:
	li	$2,1			# 0x1
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.align	3
	.globl	_Qp_itoq
	.set	nomips16
	.set	micromips
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
	.reloc	1f,R_MICROMIPS_JALR,__extenddftf2
1:	jalr	$25
	move	$16,$4

	ld	$31,40($sp)
	sdc1	$f0,0($16)
	sdc1	$f2,8($16)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	_Qp_itoq
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.align	3
	.globl	ldexpf
	.set	nomips16
	.set	micromips
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
	bc1t	$fcc0,.L723
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexpf)))

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f1,$f12
	bc1t	$fcc1,.L723
	nop

	bltz	$5,.L719
	ld	$2,%got_page(.LC6)($4)

	lwc1	$f2,%got_ofst(.LC6)($2)
.L707:
	andi	$6,$5,0x1
	beqz	$6,.L722
	srl	$7,$5,31

	.align	3
.L709:
	mul.s	$f0,$f0,$f2
	srl	$7,$5,31
.L722:
	addu	$5,$7,$5
	sra	$5,$5,1
	beqz	$5,.L723
	srl	$2,$5,31

	andi	$3,$5,0x1
	mul.s	$f2,$f2,$f2
	bnez	$3,.L709
	addu	$6,$2,$5

	sra	$5,$6,1
.L721:
	srl	$2,$5,31
	andi	$3,$5,0x1
	mul.s	$f2,$f2,$f2
	bnez	$3,.L709
	addu	$6,$2,$5

	b	.L721
	sra	$5,$6,1

.L723:
	jrc	$31
	.align	3
.L719:
	ld	$3,%got_page(.LC7)($4)
	b	.L707
	lwc1	$f2,%got_ofst(.LC7)($3)

	.set	macro
	.set	reorder
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
	.align	3
	.globl	ldexp
	.set	nomips16
	.set	micromips
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
	bc1t	$fcc0,.L742
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexp)))

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f1,$f12
	bc1t	$fcc1,.L742
	nop

	bltz	$5,.L738
	ld	$2,%got_page(.LC8)($4)

	ldc1	$f2,%got_ofst(.LC8)($2)
.L726:
	andi	$6,$5,0x1
	beqz	$6,.L741
	srl	$7,$5,31

	.align	3
.L728:
	mul.d	$f0,$f0,$f2
	srl	$7,$5,31
.L741:
	addu	$5,$7,$5
	sra	$5,$5,1
	beqz	$5,.L742
	srl	$2,$5,31

	andi	$3,$5,0x1
	mul.d	$f2,$f2,$f2
	bnez	$3,.L728
	addu	$6,$2,$5

	sra	$5,$6,1
.L740:
	srl	$2,$5,31
	andi	$3,$5,0x1
	mul.d	$f2,$f2,$f2
	bnez	$3,.L728
	addu	$6,$2,$5

	b	.L740
	sra	$5,$6,1

.L742:
	jrc	$31
	.align	3
.L738:
	ld	$3,%got_page(.LC9)($4)
	b	.L726
	ldc1	$f2,%got_ofst(.LC9)($3)

	.set	macro
	.set	reorder
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
	.align	3
	.globl	ldexpl
	.set	nomips16
	.set	micromips
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
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	move	$fp,$6

	bnez	$2,.L744
	ld	$25,%call16(__addtf3)($28)

	sd	$22,0($sp)
	ldc1	$f12,0($sp)
	sd	$23,8($sp)
	dmtc1	$22,$f14
	ldc1	$f13,8($sp)
	.reloc	1f,R_MICROMIPS_JALR,__addtf3
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
	.reloc	1f,R_MICROMIPS_JALR,__netf2
1:	jalr	$25
	ldc1	$f13,40($sp)

	beqz	$2,.L760
	ld	$31,136($sp)

	bltz	$fp,.L759
	ld	$6,%got_page(.LC10)($28)

	ld	$20,%got_ofst(.LC10)($6)
	ld	$21,%got_ofst(.LC10+8)($6)
.L746:
	andi	$8,$fp,0x1
	beqz	$8,.L761
	srl	$9,$fp,31

	.align	3
.L748:
	dmtc1	$22,$f12
	dmtc1	$20,$f14
	ld	$25,%call16(__multf3)($28)
	dmtc1	$23,$f13
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$21,$f15

	dmfc1	$22,$f0
	dmfc1	$23,$f2
	srl	$9,$fp,31
.L761:
	addu	$10,$9,$fp
	sra	$fp,$10,1
	beqz	$fp,.L760
	ld	$31,136($sp)

.L749:
	dmtc1	$20,$f14
	dmtc1	$20,$f12
	ld	$25,%call16(__multf3)($28)
	dmtc1	$21,$f15
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$21,$f13

	srl	$11,$fp,31
	dmfc1	$18,$f0
	dmfc1	$19,$f2
	andi	$12,$fp,0x1
	move	$20,$18
	move	$21,$19
	bnez	$12,.L748
	addu	$13,$11,$fp

	b	.L749
	sra	$fp,$13,1

	.align	3
.L744:
	ld	$31,136($sp)
	.align	3
.L760:
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
.L759:
	ld	$7,%got_page(.LC11)($28)
	ld	$20,%got_ofst(.LC11)($7)
	b	.L746
	ld	$21,%got_ofst(.LC11+8)($7)

	.set	macro
	.set	reorder
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.align	3
	.globl	memxor
	.set	nomips16
	.set	micromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$6,.L775
	move	$2,$4

	daddiu	$3,$6,-1
	sltu	$4,$3,7
	bnez	$4,.L764
	or	$7,$2,$5

	andi	$3,$7,0x7
	bnez	$3,.L764
	dsrl	$4,$6,3

	dsll	$4,$4,3
	move	$7,$2
	daddu	$9,$5,$4
	.align	3
.L765:
	ld	$8,0($7)
	ld	$11,0($5)
	daddiu	$5,$5,8
	xor	$12,$11,$8
	sd	$12,0($7)
	bne	$9,$5,.L765
	daddiu	$7,$7,8

	daddu	$3,$2,$4
	beq	$6,$4,.L775
	dsubu	$5,$6,$4

	lbu	$4,0($3)
	lbu	$7,0($9)
	li	$6,1			# 0x1
	xor	$4,$4,$7
	beq	$5,$6,.L775
	sb	$4,0($3)

	lbu	$7,1($3)
	lbu	$4,1($9)
	li	$13,2			# 0x2
	xor	$4,$4,$7
	beq	$5,$13,.L775
	sb	$4,1($3)

	lbu	$7,2($3)
	lbu	$4,2($9)
	li	$14,3			# 0x3
	xor	$4,$4,$7
	beq	$5,$14,.L775
	sb	$4,2($3)

	lbu	$7,3($3)
	lbu	$4,3($9)
	li	$15,4			# 0x4
	xor	$4,$4,$7
	beq	$5,$15,.L775
	sb	$4,3($3)

	lbu	$7,4($3)
	lbu	$4,4($9)
	li	$24,5			# 0x5
	xor	$4,$4,$7
	beq	$5,$24,.L775
	sb	$4,4($3)

	lbu	$7,5($3)
	lbu	$4,5($9)
	li	$25,6			# 0x6
	xor	$4,$4,$7
	beq	$5,$25,.L775
	sb	$4,5($3)

	lbu	$5,6($3)
	lbu	$6,6($9)
	xor	$6,$6,$5
	jr	$31
	sb	$6,6($3)

	.align	3
.L764:
	daddu	$6,$5,$6
	move	$3,$2
	.align	3
.L767:
	lbu	$4,0($3)
	lbu	$7,0($5)
	daddiu	$3,$3,1
	xor	$7,$7,$4
	daddiu	$5,$5,1
	bne	$6,$5,.L767
	sb	$7,-1($3)

.L775:
	jrc	$31
	.set	macro
	.set	reorder
	.end	memxor
	.size	memxor, .-memxor
	.align	2
	.align	3
	.globl	strncat
	.set	nomips16
	.set	micromips
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$3,0($4)
	beqz	$3,.L783
	move	$2,$4

	move	$3,$4
	.align	3
.L778:
	lb	$7,1($3)
	bnez	$7,.L778
	daddiu	$3,$3,1

	beqzc	$6,.L780
	.align	3
.L794:
	lb	$4,0($5)
	daddiu	$6,$6,-1
	beqz	$4,.L795
	sb	$4,0($3)

	daddiu	$5,$5,1
	daddiu	$3,$3,1
.L792:
	bnezc	$6,.L794
.L780:
	jr	$31
	sb	$0,0($3)

.L795:
	jrc	$31
	.align	3
.L783:
	b	.L792
	move	$3,$4

	.set	macro
	.set	reorder
	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.align	3
	.globl	strnlen
	.set	nomips16
	.set	micromips
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$5,.L807
	move	$2,$0

.L797:
	lbux	$3,$2($4)
	bnezc	$3,.L799
.L807:
	jrc	$31
	.align	3
.L799:
	daddiu	$2,$2,1
	bne	$5,$2,.L797
	nop

	jrc	$31
	.set	macro
	.set	reorder
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
	.align	3
	.globl	strpbrk
	.set	nomips16
	.set	micromips
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$7,0($4)
	beqz	$7,.L813
	move	$2,$4

.L809:
	b	.L812
	move	$3,$5

	.align	3
.L811:
	beq	$6,$7,.L819
	nop

.L812:
	lb	$6,0($3)
	bnez	$6,.L811
	daddiu	$3,$3,1

	lb	$7,1($2)
	bnez	$7,.L809
	daddiu	$2,$2,1

.L813:
	move	$2,$0
.L819:
	jrc	$31
	.set	macro
	.set	reorder
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.align	3
	.globl	strrchr
	.set	nomips16
	.set	micromips
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
.L821:
	lb	$3,0($4)
	xor	$6,$3,$5
	movz	$2,$4,$6
	bnez	$3,.L821
	daddiu	$4,$4,1

	jrc	$31
	.set	macro
	.set	reorder
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
	.align	3
	.globl	strstr
	.set	nomips16
	.set	micromips
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$8,0($5)
	beqzc	$8,.L835
	move	$2,$5
	.align	3
.L826:
	lb	$3,1($2)
	bnez	$3,.L826
	daddiu	$2,$2,1

	beq	$2,$5,.L835
	dsubu	$10,$2,$5

	b	.L844
	daddiu	$10,$10,-1

	.align	3
.L847:
	beqz	$6,.L846
	daddiu	$4,$4,1

.L844:
	lb	$6,0($4)
	bne	$6,$8,.L847
	andi	$3,$6,0x00ff

	daddu	$9,$4,$10
	move	$2,$5
	b	.L828
	move	$6,$4

	.align	3
.L848:
	beq	$6,$9,.L829
	nop

	bne	$7,$3,.L829
	daddiu	$6,$6,1

	lbu	$3,0($6)
	beqz	$3,.L829
	daddiu	$2,$2,1

.L828:
	lbu	$7,0($2)
	bnezc	$7,.L848
.L829:
	lbu	$12,0($2)
	beq	$12,$3,.L835
	nop

	b	.L844
	daddiu	$4,$4,1

	.align	3
.L846:
	jr	$31
	move	$2,$0

	.align	3
.L835:
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
	.set	micromips
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
	bc1t	$fcc0,.L860
	mov.d	$f0,$f12

	c.lt.d	$fcc2,$f1,$f12
	bc1f	$fcc2,.L861
	nop

	c.lt.d	$fcc3,$f13,$f1
	bc1t	$fcc3,.L852
	nop

.L861:
	jrc	$31
	.align	3
.L860:
	c.lt.d	$fcc1,$f1,$f13
	bc1f	$fcc1,.L861
	nop

.L852:
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
	.set	micromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$7,.L879
	move	$2,$4

	sltu	$3,$5,$7
	bnez	$3,.L873
	dsubu	$5,$5,$7

	daddu	$9,$4,$5
	sltu	$4,$9,$4
	bnez	$4,.L873
	daddiu	$7,$7,-1

	lb	$13,0($6)
	move	$12,$13
	b	.L868
	daddiu	$6,$6,1

	.align	3
.L872:
	move	$2,$4
.L864:
	sltu	$10,$9,$2
	bnezc	$10,.L873
.L868:
	lb	$8,0($2)
	bne	$8,$12,.L872
	daddiu	$4,$2,1

	beqz	$7,.L879
	move	$5,$6

.L867:
	move	$3,$4
	b	.L865
	daddu	$8,$4,$7

	.align	3
.L866:
	beq	$3,$8,.L879
	daddiu	$5,$5,1

.L865:
	lbu	$15,0($3)
	lbu	$24,0($5)
	beq	$15,$24,.L866
	daddiu	$3,$3,1

	sltu	$2,$9,$4
	bnezc	$2,.L873
	lb	$11,0($4)
	bne	$11,$13,.L864
	daddiu	$2,$4,1

	move	$25,$4
	move	$5,$6
	move	$4,$2
	b	.L867
	move	$2,$25

	.align	3
.L873:
	move	$2,$0
.L879:
	jrc	$31
	.set	macro
	.set	reorder
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.align	3
	.globl	mempcpy
	.set	nomips16
	.set	micromips
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
	beqz	$6,.L881
	move	$17,$4

	ld	$25,%call16(memmove)($28)
	.reloc	1f,R_MICROMIPS_JALR,memmove
1:	jalrs	$25
	nop

.L881:
	ld	$31,24($sp)
	daddu	$2,$17,$16
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	mempcpy
	.size	mempcpy, .-mempcpy
	.align	2
	.align	3
	.globl	frexp
	.set	nomips16
	.set	micromips
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
	bc1t	$fcc0,.L909
	daddiu	$6,$6,%lo(%neg(%gp_rel(frexp)))

	ld	$2,%got_page(.LC14)($6)
	ldc1	$f1,%got_ofst(.LC14)($2)
	c.le.d	$fcc3,$f1,$f12
	bc1f	$fcc3,.L910
	move	$3,$0

.L889:
	ld	$9,%got_page(.LC9)($6)
	ldc1	$f7,%got_ofst(.LC14)($2)
	ldc1	$f8,%got_ofst(.LC9)($9)
	move	$2,$0
	.align	3
.L895:
	mul.d	$f12,$f12,$f8
	c.le.d	$fcc6,$f7,$f12
	bc1t	$fcc6,.L895
	addiu	$2,$2,1

.L896:
	beqz	$3,.L902
	sw	$2,0($5)

	jr	$31
	neg.d	$f0,$f12

	.align	3
.L910:
	ld	$4,%got_page(.LC9)($6)
	ldc1	$f2,%got_ofst(.LC9)($4)
	c.lt.d	$fcc4,$f12,$f2
	bc1f	$fcc4,.L892
	c.eq.d	$fcc5,$f12,$f0

	bc1f	$fcc5,.L901
	mov.d	$f3,$f12

.L892:
	mov.d	$f0,$f12
.L912:
	jr	$31
	sw	$0,0($5)

	.align	3
.L909:
	ld	$7,%got_page(.LC12)($6)
	ldc1	$f4,%got_ofst(.LC12)($7)
	c.le.d	$fcc1,$f12,$f4
	bc1f	$fcc1,.L911
	neg.d	$f3,$f12

	mov.d	$f12,$f3
	ld	$2,%got_page(.LC14)($6)
	b	.L889
	li	$3,1			# 0x1

	.align	3
.L902:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L911:
	ld	$8,%got_page(.LC13)($6)
	ldc1	$f5,%got_ofst(.LC13)($8)
	c.lt.d	$fcc2,$f5,$f12
	bc1f	$fcc2,.L912
	mov.d	$f0,$f12

	ld	$4,%got_page(.LC9)($6)
	li	$3,1			# 0x1
.L890:
	ldc1	$f6,%got_ofst(.LC9)($4)
	mov.d	$f12,$f3
	move	$2,$0
	.align	3
.L897:
	add.d	$f12,$f12,$f12
	c.lt.d	$fcc7,$f12,$f6
	bc1t	$fcc7,.L897
	addiu	$2,$2,-1

	b	.L896
	nop

.L901:
	b	.L890
	move	$3,$0

	.set	macro
	.set	reorder
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.align	3
	.globl	__muldi3
	.set	nomips16
	.set	micromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$4,.L920
	move	$2,$0

	.align	3
.L915:
	andi	$3,$4,0x1
	dsubu	$7,$0,$3
	and	$7,$7,$5
	dsrl	$4,$4,1
	daddu	$2,$2,$7
	bnez	$4,.L915
	dsll	$5,$5,1

.L920:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
	.align	3
	.globl	udivmodsi4
	.set	nomips16
	.set	micromips
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beqz	$2,.L942
	li	$13,1			# 0x1

	b	.L922
	li	$2,32			# 0x20

	.align	3
.L926:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beqz	$7,.L924
	sll	$13,$13,1

	beqzc	$2,.L925
.L922:
	bgez	$5,.L926
	addiu	$2,$2,-1

.L927:
	move	$2,$0
	.align	3
.L928:
	sltu	$8,$4,$5
	sltu	$11,$8,1
	move	$12,$13
	subu	$9,$4,$5
	movz	$12,$0,$11
	dext	$13,$13,1,31
	movn	$4,$9,$11
	or	$2,$12,$2
	bnez	$13,.L928
	dext	$5,$5,1,31

.L925:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L924:
	bnez	$13,.L927
	move	$2,$0

	b	.L925
	nop

	.align	3
.L942:
	sltu	$3,$4,$5
	sltu	$2,$3,1
	subu	$5,$4,$5
	b	.L925
	movn	$4,$5,$2

	.set	macro
	.set	reorder
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.align	3
	.globl	__clrsbqi2
	.set	nomips16
	.set	micromips
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$3,$4,7
	seb	$6,$3
	beq	$4,$6,.L945
	xor	$2,$4,$6

	sll	$4,$2,8
	clz	$7,$4
	jr	$31
	addiu	$2,$7,-1

	.align	3
.L945:
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
	.set	micromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$3,$4,63
	beq	$4,$3,.L949
	xor	$2,$4,$3

	dclz	$4,$2
	jr	$31
	addiu	$2,$4,-1

	.align	3
.L949:
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
	.set	micromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$4,.L958
	move	$2,$0

	.align	3
.L953:
	andi	$3,$4,0x1
	subu	$7,$0,$3
	and	$7,$7,$5
	dext	$4,$4,1,31
	addu	$2,$7,$2
	bnez	$4,.L953
	sll	$5,$5,1

.L958:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
	.align	3
	.globl	__cmovd
	.set	nomips16
	.set	micromips
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
	and	$12,$6,$9
	bnez	$2,.L963
	dext	$8,$6,3,29

	dext	$3,$6,0,32
	daddu	$7,$5,$3
	sltu	$10,$7,$4
	beqzc	$10,.L995
.L963:
	beqz	$8,.L996
	dsll	$15,$8,3

	move	$7,$5
	move	$3,$4
	daddu	$24,$15,$5
	.align	3
.L966:
	ld	$25,0($7)
	daddiu	$7,$7,8
	sd	$25,0($3)
	bne	$7,$24,.L966
	daddiu	$3,$3,8

	sltu	$9,$12,$6
	beqz	$9,.L999
	subu	$10,$6,$12

	addiu	$8,$10,-1
	sltu	$13,$8,8
	bnez	$13,.L968
	dext	$7,$12,0,32

	daddiu	$14,$7,1
	daddu	$2,$5,$14
	daddu	$3,$4,$7
	dsubu	$15,$3,$2
	sltu	$24,$15,7
	bnez	$24,.L968
	daddu	$2,$5,$7

	or	$25,$2,$3
	andi	$9,$25,0x7
	bnez	$9,.L968
	dext	$8,$10,3,29

	dsll	$7,$8,3
	daddu	$13,$2,$7
	.align	3
.L969:
	ld	$14,0($2)
	daddiu	$2,$2,8
	sd	$14,0($3)
	bne	$2,$13,.L969
	daddiu	$3,$3,8

	li	$15,-8			# 0xfffffffffffffff8
	and	$24,$10,$15
	andi	$10,$10,0x7
	beqz	$10,.L999
	addu	$12,$24,$12

	dext	$7,$12,0,32
	daddu	$2,$5,$7
	lb	$25,0($2)
	addiu	$9,$12,1
	daddu	$3,$4,$7
	sltu	$8,$9,$6
	beqz	$8,.L999
	sb	$25,0($3)

	dext	$2,$9,0,32
	daddu	$7,$5,$2
	lb	$13,0($7)
	addiu	$14,$12,2
	daddu	$3,$4,$2
	sltu	$15,$14,$6
	beqz	$15,.L999
	sb	$13,0($3)

	dext	$2,$14,0,32
	daddu	$7,$5,$2
	lb	$24,0($7)
	addiu	$10,$12,3
	daddu	$3,$4,$2
	sltu	$25,$10,$6
	beqz	$25,.L999
	sb	$24,0($3)

	dext	$2,$10,0,32
	daddu	$7,$5,$2
	lb	$9,0($7)
	addiu	$13,$12,4
	daddu	$3,$4,$2
	sltu	$8,$13,$6
	beqz	$8,.L999
	sb	$9,0($3)

	dext	$2,$13,0,32
	daddu	$7,$5,$2
	lb	$14,0($7)
	addiu	$15,$12,5
	daddu	$3,$4,$2
	sltu	$24,$15,$6
	beqz	$24,.L999
	sb	$14,0($3)

	dext	$3,$15,0,32
	daddu	$2,$5,$3
	lb	$7,0($2)
	addiu	$12,$12,6
	daddu	$3,$4,$3
	sltu	$6,$12,$6
	beqz	$6,.L999
	sb	$7,0($3)

	dext	$2,$12,0,32
	daddu	$5,$5,$2
	lb	$7,0($5)
	daddu	$4,$4,$2
	jr	$31
	sb	$7,0($4)

	.align	3
.L995:
	beqz	$6,.L999
	addiu	$13,$6,-1

	dext	$6,$13,0,32
	daddu	$2,$5,$6
	daddu	$4,$4,$6
	.align	3
.L973:
	lb	$7,0($2)
	move	$14,$2
	sb	$7,0($4)
	daddiu	$2,$2,-1
	bne	$5,$14,.L973
	daddiu	$4,$4,-1

.L999:
	jrc	$31
	.align	3
.L996:
	beqz	$6,.L999
	dext	$7,$12,0,32

.L968:
	move	$2,$7
	.align	3
.L971:
	daddu	$3,$5,$2
	daddu	$7,$4,$2
	daddiu	$2,$2,1
	lb	$10,0($3)
	sll	$25,$2,0
	sltu	$9,$25,$6
	bnez	$9,.L971
	sb	$10,0($7)

	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.align	3
	.globl	__cmovh
	.set	nomips16
	.set	micromips
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$5
	bnez	$2,.L1004
	dext	$9,$6,1,31

	dext	$3,$6,0,32
	daddu	$7,$5,$3
	sltu	$8,$7,$4
	beqzc	$8,.L1027
.L1004:
	beqz	$9,.L1031
	andi	$3,$6,0x1

	addiu	$13,$9,-1
	sltu	$14,$13,7
	bnez	$14,.L1007
	or	$3,$5,$4

	andi	$7,$3,0x7
	bnez	$7,.L1007
	daddiu	$2,$5,2

	dsubu	$3,$4,$2
	sltu	$15,$3,5
	bnez	$15,.L1007
	dext	$24,$6,3,29

	dsll	$25,$24,3
	dext	$10,$6,3,29
	move	$7,$5
	move	$2,$4
	daddu	$8,$25,$5
	.align	3
.L1008:
	ld	$12,0($7)
	daddiu	$7,$7,8
	sd	$12,0($2)
	bne	$7,$8,.L1008
	daddiu	$2,$2,8

	dsll	$2,$10,2
	beq	$9,$2,.L1003
	dsll	$7,$2,1

	lhx	$13,$7($5)
	addiu	$14,$2,1
	daddu	$3,$4,$7
	sltu	$15,$14,$9
	beqz	$15,.L1003
	sh	$13,0($3)

	dext	$7,$14,0,32
	dsll	$3,$7,1
	addiu	$24,$2,2
	lhx	$7,$3($5)
	daddu	$2,$4,$3
	sltu	$9,$24,$9
	beqz	$9,.L1003
	sh	$7,0($2)

	dext	$3,$24,0,32
	dsll	$7,$3,1
	lhx	$3,$7($5)
	daddu	$2,$4,$7
	sh	$3,0($2)
.L1003:
	andi	$3,$6,0x1
.L1031:
	beqz	$3,.L1033
	addiu	$6,$6,-1

.L1030:
	dext	$7,$6,0,32
	daddu	$5,$5,$7
	lb	$2,0($5)
	daddu	$4,$4,$7
	jr	$31
	sb	$2,0($4)

	.align	3
.L1027:
	beqz	$6,.L1033
	addiu	$10,$6,-1

	dext	$6,$10,0,32
	daddu	$2,$5,$6
	daddu	$4,$4,$6
	.align	3
.L1013:
	lb	$7,0($2)
	move	$12,$2
	sb	$7,0($4)
	daddiu	$2,$2,-1
	bne	$5,$12,.L1013
	daddiu	$4,$4,-1

.L1033:
	jrc	$31
	.align	3
.L1007:
	dsll	$25,$9,1
	move	$10,$5
	move	$8,$4
	daddu	$12,$25,$5
	.align	3
.L1010:
	lh	$7,0($10)
	daddiu	$10,$10,2
	sh	$7,0($8)
	bne	$10,$12,.L1010
	daddiu	$8,$8,2

	andi	$3,$6,0x1
	bnez	$3,.L1030
	addiu	$6,$6,-1

	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.align	3
	.globl	__cmovw
	.set	nomips16
	.set	micromips
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$9,-4			# 0xfffffffffffffffc
	sltu	$2,$4,$5
	and	$13,$6,$9
	bnez	$2,.L1039
	dext	$10,$6,2,30

	dext	$3,$6,0,32
	daddu	$7,$5,$3
	sltu	$8,$7,$4
	beqzc	$8,.L1075
.L1039:
	beqz	$10,.L1076
	addiu	$15,$10,-1

	sltu	$24,$15,9
	bnezc	$24,.L1041
	or	$3,$4,$5
	andi	$7,$3,0x7
	bnez	$7,.L1041
	daddiu	$2,$5,4

	beq	$4,$2,.L1041
	dext	$25,$6,3,29

	dsll	$9,$25,3
	dext	$11,$6,3,29
	move	$7,$5
	move	$3,$4
	daddu	$8,$9,$5
	.align	3
.L1042:
	ld	$14,0($7)
	daddiu	$7,$7,8
	sd	$14,0($3)
	bne	$7,$8,.L1042
	daddiu	$3,$3,8

	dsll	$2,$11,1
	beq	$10,$2,.L1045
	dsll	$7,$2,2

	lwx	$3,$7($5)
	daddu	$2,$4,$7
	sw	$3,0($2)
.L1045:
	sltu	$24,$13,$6
.L1078:
	beqz	$24,.L1080
	subu	$25,$6,$13

	addiu	$9,$25,-1
	sltu	$11,$9,8
	bnez	$11,.L1037
	dext	$7,$13,0,32

	daddiu	$8,$7,1
	daddu	$3,$4,$7
	daddu	$14,$5,$8
	dsubu	$10,$3,$14
	sltu	$15,$10,7
	bnez	$15,.L1037
	daddu	$2,$5,$7

	or	$24,$2,$3
	andi	$9,$24,0x7
	bnezc	$9,.L1037
	dext	$7,$25,3,29
	dsll	$11,$7,3
	daddu	$8,$2,$11
	.align	3
.L1046:
	ld	$14,0($2)
	daddiu	$2,$2,8
	sd	$14,0($3)
	bne	$2,$8,.L1046
	daddiu	$3,$3,8

	li	$10,-8			# 0xfffffffffffffff8
	and	$15,$25,$10
	andi	$25,$25,0x7
	beqz	$25,.L1080
	addu	$13,$15,$13

	dext	$7,$13,0,32
	daddu	$2,$5,$7
	lb	$24,0($2)
	addiu	$9,$13,1
	daddu	$3,$4,$7
	sltu	$11,$9,$6
	beqz	$11,.L1080
	sb	$24,0($3)

	dext	$2,$9,0,32
	daddu	$7,$5,$2
	lb	$14,0($7)
	addiu	$10,$13,2
	daddu	$3,$4,$2
	sltu	$8,$10,$6
	beqz	$8,.L1080
	sb	$14,0($3)

	dext	$2,$10,0,32
	daddu	$7,$5,$2
	lb	$15,0($7)
	addiu	$25,$13,3
	daddu	$3,$4,$2
	sltu	$24,$25,$6
	beqz	$24,.L1080
	sb	$15,0($3)

	dext	$2,$25,0,32
	daddu	$7,$5,$2
	lb	$9,0($7)
	addiu	$11,$13,4
	daddu	$3,$4,$2
	sltu	$14,$11,$6
	beqz	$14,.L1080
	sb	$9,0($3)

	dext	$2,$11,0,32
	daddu	$7,$5,$2
	lb	$10,0($7)
	addiu	$15,$13,5
	daddu	$3,$4,$2
	sltu	$8,$15,$6
	beqz	$8,.L1080
	sb	$10,0($3)

	dext	$3,$15,0,32
	daddu	$2,$5,$3
	lb	$7,0($2)
	addiu	$13,$13,6
	daddu	$3,$4,$3
	sltu	$6,$13,$6
	beqz	$6,.L1080
	sb	$7,0($3)

	dext	$2,$13,0,32
	daddu	$5,$5,$2
	lb	$7,0($5)
	daddu	$4,$4,$2
	jr	$31
	sb	$7,0($4)

	.align	3
.L1075:
	beqz	$6,.L1080
	addiu	$11,$6,-1

	dext	$6,$11,0,32
	daddu	$2,$5,$6
	daddu	$4,$4,$6
	.align	3
.L1050:
	lb	$7,0($2)
	move	$14,$2
	sb	$7,0($4)
	daddiu	$2,$2,-1
	bne	$5,$14,.L1050
	daddiu	$4,$4,-1

.L1080:
	jrc	$31
	.align	3
.L1041:
	dsll	$10,$10,2
	move	$2,$5
	move	$3,$4
	daddu	$15,$10,$5
	.align	3
.L1044:
	lw	$7,0($2)
	daddiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$15,.L1044
	daddiu	$3,$3,4

	b	.L1078
	sltu	$24,$13,$6

	.align	3
.L1076:
	beqz	$6,.L1080
	dext	$7,$13,0,32

.L1037:
	move	$2,$7
	.align	3
.L1048:
	daddu	$3,$5,$2
	daddu	$7,$4,$2
	daddiu	$2,$2,1
	lb	$25,0($3)
	sll	$24,$2,0
	sltu	$9,$24,$6
	bnez	$9,.L1048
	sb	$25,0($7)

	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
	.align	3
	.globl	__modi
	.set	nomips16
	.set	micromips
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
	jr	$31
	mfhi	$2

	.set	macro
	.set	reorder
	.end	__modi
	.size	__modi, .-__modi
	.align	2
	.align	3
	.globl	__uitod
	.set	nomips16
	.set	micromips
	.ent	__uitod
	.type	__uitod, @function
__uitod:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$4,$4,0,32
	dmtc1	$4,$f0
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
	.set	micromips
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$4,$4,0,32
	dmtc1	$4,$f0
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
	.set	micromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L1089
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.align	3
.L1089:
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f1
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
	.set	micromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L1093
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.align	3
.L1093:
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f1
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
	.set	micromips
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
	jr	$31
	mfhi	$2

	.set	macro
	.set	reorder
	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.align	3
	.globl	__clzhi2
	.set	nomips16
	.set	micromips
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$2,$4,15,32
	bnez	$2,.L1100
	move	$3,$4

	dsrl	$2,$3,14
	bnez	$2,.L1118
	sra	$6,$4,13

	bnez	$6,.L1101
	sra	$7,$4,12

	bnez	$7,.L1102
	sra	$8,$4,11

	bnez	$8,.L1103
	sra	$9,$4,10

	bnez	$9,.L1104
	sra	$10,$4,9

	bnezc	$10,.L1105
	sra	$2,$4,8
	bnez	$2,.L1106
	sra	$6,$4,7

	bnez	$6,.L1107
	sra	$7,$4,6

	bnezc	$7,.L1108
	sra	$2,$4,5
	bnez	$2,.L1109
	sra	$6,$4,4

	bnez	$6,.L1110
	sra	$7,$4,3

	bnezc	$7,.L1111
	sra	$2,$4,2
	bnez	$2,.L1112
	sra	$3,$4,1

	bnezc	$3,.L1113
	bnez	$4,.L1117
	li	$2,16			# 0x10

.L1118:
	jrc	$31
.L1100:
	jr	$31
	move	$2,$0

.L1111:
	jr	$31
	li	$2,12			# 0xc

.L1117:
	jr	$31
	li	$2,15			# 0xf

.L1101:
	jr	$31
	li	$2,2			# 0x2

.L1102:
	jr	$31
	li	$2,3			# 0x3

.L1103:
	jr	$31
	li	$2,4			# 0x4

.L1104:
	jr	$31
	li	$2,5			# 0x5

.L1105:
	jr	$31
	li	$2,6			# 0x6

.L1106:
	jr	$31
	li	$2,7			# 0x7

.L1107:
	jr	$31
	li	$2,8			# 0x8

.L1108:
	jr	$31
	li	$2,9			# 0x9

.L1109:
	jr	$31
	li	$2,10			# 0xa

.L1110:
	jr	$31
	li	$2,11			# 0xb

.L1112:
	jr	$31
	li	$2,13			# 0xd

.L1113:
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
	.set	micromips
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$4,0x1
	bnez	$2,.L1122
	andi	$5,$4,0x2

	bnez	$5,.L1123
	andi	$6,$4,0x4

	bnez	$6,.L1124
	andi	$7,$4,0x8

	bnezc	$7,.L1125
	andi	$2,$4,0x10
	bnez	$2,.L1126
	andi	$5,$4,0x20

	bnez	$5,.L1127
	andi	$6,$4,0x40

	bnez	$6,.L1128
	andi	$8,$4,0x80

	bnez	$8,.L1129
	andi	$9,$4,0x100

	bnez	$9,.L1130
	andi	$10,$4,0x200

	bnez	$10,.L1131
	andi	$11,$4,0x400

	bnez	$11,.L1132
	andi	$12,$4,0x800

	bnez	$12,.L1133
	andi	$13,$4,0x1000

	bnez	$13,.L1134
	andi	$14,$4,0x2000

	bnez	$14,.L1135
	andi	$15,$4,0x4000

	bnez	$15,.L1136
	sra	$4,$4,15

	bnez	$4,.L1140
	li	$2,16			# 0x10

	jrc	$31
.L1122:
	jr	$31
	move	$2,$0

.L1123:
	jr	$31
	li	$2,1			# 0x1

.L1134:
	jr	$31
	li	$2,12			# 0xc

.L1140:
	jr	$31
	li	$2,15			# 0xf

.L1124:
	jr	$31
	li	$2,2			# 0x2

.L1125:
	jr	$31
	li	$2,3			# 0x3

.L1126:
	jr	$31
	li	$2,4			# 0x4

.L1127:
	jr	$31
	li	$2,5			# 0x5

.L1128:
	jr	$31
	li	$2,6			# 0x6

.L1129:
	jr	$31
	li	$2,7			# 0x7

.L1130:
	jr	$31
	li	$2,8			# 0x8

.L1131:
	jr	$31
	li	$2,9			# 0x9

.L1132:
	jr	$31
	li	$2,10			# 0xa

.L1133:
	jr	$31
	li	$2,11			# 0xb

.L1135:
	jr	$31
	li	$2,13			# 0xd

.L1136:
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
	.set	micromips
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
	bc1t	$fcc0,.L1148
	li	$3,32768			# 0x8000

	trunc.l.s $f1,$f12
	jr	$31
	dmfc1	$2,$f1

	.align	3
.L1148:
	sub.s	$f12,$f12,$f0
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
	.set	micromips
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ext	$2,$4,1,1
	andi	$3,$4,0x1
	addu	$6,$2,$3
	ext	$7,$4,2,1
	addu	$2,$6,$7
	ext	$3,$4,3,1
	addu	$6,$2,$3
	ext	$7,$4,4,1
	addu	$2,$6,$7
	ext	$3,$4,5,1
	addu	$6,$2,$3
	ext	$7,$4,6,1
	addu	$2,$6,$7
	ext	$3,$4,7,1
	addu	$6,$2,$3
	ext	$7,$4,8,1
	addu	$2,$6,$7
	ext	$3,$4,9,1
	addu	$6,$2,$3
	ext	$7,$4,10,1
	addu	$2,$6,$7
	ext	$3,$4,11,1
	addu	$6,$2,$3
	ext	$7,$4,12,1
	addu	$2,$6,$7
	ext	$3,$4,13,1
	addu	$6,$2,$3
	ext	$7,$4,14,1
	addu	$2,$6,$7
	dext	$4,$4,15,32
	addu	$3,$2,$4
	jr	$31
	andi	$2,$3,0x1

	.set	macro
	.set	reorder
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.align	3
	.globl	__popcounthi2
	.set	nomips16
	.set	micromips
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ext	$3,$4,1,1
	andi	$2,$4,0x1
	addu	$6,$3,$2
	ext	$7,$4,2,1
	addu	$3,$6,$7
	ext	$2,$4,3,1
	addu	$6,$3,$2
	ext	$7,$4,4,1
	addu	$3,$6,$7
	ext	$2,$4,5,1
	addu	$6,$3,$2
	ext	$7,$4,6,1
	addu	$3,$6,$7
	ext	$2,$4,7,1
	addu	$6,$3,$2
	ext	$7,$4,8,1
	addu	$3,$6,$7
	ext	$2,$4,9,1
	addu	$6,$3,$2
	ext	$7,$4,10,1
	addu	$3,$6,$7
	ext	$2,$4,11,1
	addu	$6,$3,$2
	ext	$7,$4,12,1
	addu	$3,$6,$7
	ext	$2,$4,13,1
	addu	$6,$3,$2
	ext	$7,$4,14,1
	addu	$3,$6,$7
	dext	$4,$4,15,32
	jr	$31
	addu	$2,$3,$4

	.set	macro
	.set	reorder
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.align	3
	.globl	__mulsi3_iq2000
	.set	nomips16
	.set	micromips
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$4,.L1160
	move	$2,$0

	.align	3
.L1155:
	andi	$3,$4,0x1
	subu	$7,$0,$3
	and	$7,$7,$5
	dext	$4,$4,1,31
	addu	$2,$7,$2
	bnez	$4,.L1155
	sll	$5,$5,1

.L1160:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.align	3
	.globl	__mulsi3_lm32
	.set	nomips16
	.set	micromips
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$4,.L1169
	move	$2,$0

	beqzc	$5,.L1168
	.align	3
.L1163:
	andi	$3,$5,0x1
	subu	$7,$0,$3
	and	$7,$7,$4
	dext	$5,$5,1,31
	addu	$2,$7,$2
	bnez	$5,.L1163
	sll	$4,$4,1

.L1169:
	jrc	$31
.L1168:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.align	3
	.globl	__udivmodsi4
	.set	nomips16
	.set	micromips
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beqz	$2,.L1191
	li	$13,1			# 0x1

	b	.L1171
	li	$2,32			# 0x20

	.align	3
.L1175:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beqz	$7,.L1173
	sll	$13,$13,1

	beqzc	$2,.L1174
.L1171:
	bgez	$5,.L1175
	addiu	$2,$2,-1

.L1176:
	move	$2,$0
	.align	3
.L1177:
	sltu	$8,$4,$5
	sltu	$11,$8,1
	move	$12,$13
	subu	$9,$4,$5
	movz	$12,$0,$11
	dext	$13,$13,1,31
	movn	$4,$9,$11
	or	$2,$12,$2
	bnez	$13,.L1177
	dext	$5,$5,1,31

.L1174:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L1173:
	bnez	$13,.L1176
	move	$2,$0

	b	.L1174
	nop

	.align	3
.L1191:
	sltu	$3,$4,$5
	sltu	$2,$3,1
	subu	$5,$4,$5
	b	.L1174
	movn	$4,$5,$2

	.set	macro
	.set	reorder
	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.align	3
	.globl	__mspabi_cmpf
	.set	nomips16
	.set	micromips
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.s	$fcc0,$f12,$f13
	bc1t	$fcc0,.L1195
	nop

	c.lt.s	$fcc1,$f13,$f12
	bc1f	$fcc1,.L1197
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L1197:
	jr	$31
	move	$2,$0

	.align	3
.L1195:
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
	.set	micromips
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.d	$fcc0,$f12,$f13
	bc1t	$fcc0,.L1203
	nop

	c.lt.d	$fcc1,$f13,$f12
	bc1f	$fcc1,.L1205
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L1205:
	jr	$31
	move	$2,$0

	.align	3
.L1203:
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
	.set	micromips
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmult	$4,$5
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	__mspabi_mpysll
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.align	3
	.globl	__mspabi_mpyull
	.set	nomips16
	.set	micromips
	.ent	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmult	$4,$5
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.align	3
	.globl	__mulhi3
	.set	nomips16
	.set	micromips
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$5,.L1227
	nop

	beqz	$5,.L1218
	move	$7,$0

.L1214:
	li	$6,32			# 0x20
	b	.L1217
	move	$2,$0

	.align	3
.L1228:
	beqzc	$6,.L1216
.L1217:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addiu	$6,$6,-1
	dsra	$5,$5,1
	andi	$6,$6,0x00ff
	addu	$2,$3,$2
	bnez	$5,.L1228
	sll	$4,$4,1

.L1216:
	beqzc	$7,.L1229
	jr	$31
	subu	$2,$0,$2

.L1218:
	move	$2,$0
.L1229:
	jrc	$31
	.align	3
.L1227:
	subu	$5,$0,$5
	b	.L1214
	li	$7,1			# 0x1

	.set	macro
	.set	reorder
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.align	3
	.globl	__divsi3
	.set	nomips16
	.set	micromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L1254
	move	$2,$0

	li	$2,1			# 0x1
	move	$9,$0
.L1231:
	bgez	$5,.L1232
	nop

	dsubu	$5,$0,$5
	move	$9,$2
.L1232:
	sll	$4,$4,0
	sll	$14,$5,0
	sltu	$3,$14,$4
	beqz	$3,.L1255
	li	$7,32			# 0x20

	b	.L1233
	li	$13,1			# 0x1

	.align	3
.L1237:
	sll	$14,$14,1
	sltu	$6,$14,$4
	beqz	$6,.L1235
	sll	$13,$13,1

	beqz	$7,.L1236
	move	$2,$0

.L1233:
	bgez	$14,.L1237
	addiu	$7,$7,-1

.L1238:
	move	$2,$0
	.align	3
.L1239:
	sltu	$8,$4,$14
	sltu	$11,$8,1
	move	$7,$13
	subu	$12,$4,$14
	movz	$7,$0,$11
	dext	$13,$13,1,31
	movn	$4,$12,$11
	or	$2,$2,$7
	bnez	$13,.L1239
	dext	$14,$14,1,31

.L1241:
	dext	$2,$2,0,32
.L1236:
	beqzc	$9,.L1256
	jr	$31
	dsubu	$2,$0,$2

.L1256:
	jrc	$31
	.align	3
.L1235:
	bnez	$13,.L1238
	move	$2,$0

	b	.L1236
	nop

	.align	3
.L1254:
	dsubu	$4,$0,$4
	b	.L1231
	li	$9,1			# 0x1

.L1255:
	sltu	$5,$4,$14
	b	.L1241
	sltu	$2,$5,1

	.set	macro
	.set	reorder
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.align	3
	.globl	__modsi3
	.set	nomips16
	.set	micromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L1285
	nop

	move	$7,$0
.L1258:
	bgez	$5,.L1259
	sll	$2,$4,0

	dsubu	$5,$0,$5
.L1259:
	sll	$14,$5,0
	sltu	$4,$14,$2
	beqz	$4,.L1286
	subu	$5,$2,$14

	li	$9,32			# 0x20
	b	.L1260
	li	$13,1			# 0x1

	.align	3
.L1264:
	sll	$14,$14,1
	sltu	$6,$14,$2
	beqz	$6,.L1284
	sll	$13,$13,1

	beqzc	$9,.L1263
.L1260:
	bgez	$14,.L1264
	addiu	$9,$9,-1

	sltu	$10,$2,$14
	.align	3
.L1287:
	subu	$11,$2,$14
	sltu	$12,$10,1
	movn	$2,$11,$12
	dext	$13,$13,1,31
	dext	$14,$14,1,31
.L1284:
	bnez	$13,.L1287
	sltu	$10,$2,$14

.L1263:
	beqz	$7,.L1288
	dext	$2,$2,0,32

	jr	$31
	dsubu	$2,$0,$2

.L1288:
	jrc	$31
	.align	3
.L1285:
	dsubu	$4,$0,$4
	b	.L1258
	li	$7,1			# 0x1

.L1286:
	sltu	$3,$2,$14
	b	.L1263
	movz	$2,$5,$3

	.set	macro
	.set	reorder
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.align	3
	.globl	__udivmodhi4
	.set	nomips16
	.set	micromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beqz	$2,.L1372
	move	$7,$4

	seh	$8,$5
	bltz	$8,.L1292
	nop

	sll	$2,$5,1
	andi	$3,$2,0xffff
	sltu	$9,$3,$4
	beqz	$9,.L1299
	seh	$10,$3

	bltz	$10,.L1294
	li	$12,2			# 0x2

	sll	$3,$5,2
	andi	$3,$3,0xffff
	sltu	$12,$3,$4
	beqz	$12,.L1301
	seh	$13,$3

	bltz	$13,.L1301
	sll	$4,$5,3

	andi	$3,$4,0xffff
	sltu	$14,$3,$7
	beqz	$14,.L1303
	seh	$15,$3

	bltz	$15,.L1303
	sll	$2,$5,4

	andi	$3,$2,0xffff
	sltu	$24,$3,$7
	beqz	$24,.L1305
	seh	$25,$3

	bltz	$25,.L1305
	nop

	sll	$3,$5,5
	andi	$3,$3,0xffff
	sltu	$8,$3,$7
	beqz	$8,.L1307
	seh	$9,$3

	bltz	$9,.L1307
	sll	$4,$5,6

	andi	$3,$4,0xffff
	sltu	$10,$3,$7
	beqz	$10,.L1294
	li	$12,64			# 0x40

	seh	$12,$3
	bltz	$12,.L1309
	sll	$2,$5,7

	andi	$3,$2,0xffff
	sltu	$13,$3,$7
	beqz	$13,.L1311
	seh	$14,$3

	bltz	$14,.L1311
	nop

	sll	$3,$5,8
	andi	$3,$3,0xffff
	sltu	$15,$3,$7
	beqz	$15,.L1313
	seh	$24,$3

	bltz	$24,.L1313
	sll	$4,$5,9

	andi	$3,$4,0xffff
	sltu	$25,$3,$7
	beqz	$25,.L1315
	seh	$8,$3

	bltz	$8,.L1315
	sll	$2,$5,10

	andi	$3,$2,0xffff
	sltu	$9,$3,$7
	beqz	$9,.L1317
	seh	$10,$3

	bltz	$10,.L1294
	li	$12,1024			# 0x400

	sll	$3,$5,11
	andi	$3,$3,0xffff
	sltu	$12,$3,$7
	beqz	$12,.L1319
	seh	$13,$3

	bltz	$13,.L1319
	sll	$4,$5,12

	andi	$3,$4,0xffff
	sltu	$14,$3,$7
	beqz	$14,.L1321
	seh	$15,$3

	bltz	$15,.L1321
	sll	$2,$5,13

	andi	$3,$2,0xffff
	sltu	$24,$3,$7
	beqz	$24,.L1323
	seh	$25,$3

	bltz	$25,.L1323
	nop

	sll	$3,$5,14
	andi	$3,$3,0xffff
	sltu	$8,$3,$7
	beqz	$8,.L1325
	seh	$9,$3

	bltz	$9,.L1325
	sll	$5,$5,15

	andi	$5,$5,0xffff
	sltu	$10,$5,$7
	beqzc	$10,.L1326
	bnez	$5,.L1373
	move	$2,$7

.L1295:
	jr	$31
	movz	$2,$5,$6

.L1299:
	li	$12,2			# 0x2
	.align	3
.L1294:
	sltu	$13,$7,$3
	subu	$4,$7,$3
	andi	$2,$4,0xffff
	sltu	$14,$13,1
	move	$4,$7
	movn	$4,$2,$14
	dsrl	$5,$3,1
	sltu	$7,$4,$5
	move	$15,$12
	dsrl	$24,$12,1
	subu	$2,$4,$5
	movn	$24,$0,$7
	movn	$15,$0,$13
	sltu	$25,$7,1
	andi	$2,$2,0xffff
	or	$5,$24,$15
	dsrl	$8,$12,2
	movz	$2,$4,$25
	andi	$5,$5,0xffff
	beqz	$8,.L1295
	dsrl	$7,$3,2

	sltu	$9,$2,$7
	sltu	$13,$9,1
	subu	$7,$2,$7
	andi	$4,$7,0xffff
	movz	$8,$0,$13
	dsrl	$10,$12,3
	movn	$2,$4,$13
	or	$5,$8,$5
	beqz	$10,.L1295
	dsrl	$7,$3,3

	sltu	$14,$2,$7
	sltu	$15,$14,1
	subu	$7,$2,$7
	andi	$4,$7,0xffff
	movz	$10,$0,$15
	dsrl	$24,$12,4
	movn	$2,$4,$15
	or	$5,$10,$5
	beqz	$24,.L1295
	dsrl	$4,$3,4

	sltu	$25,$2,$4
	sltu	$8,$25,1
	subu	$4,$2,$4
	andi	$7,$4,0xffff
	movz	$24,$0,$8
	dsrl	$13,$12,5
	movn	$2,$7,$8
	or	$5,$24,$5
	beqz	$13,.L1295
	dsrl	$4,$3,5

	sltu	$9,$2,$4
	sltu	$10,$9,1
	subu	$4,$2,$4
	andi	$7,$4,0xffff
	movz	$13,$0,$10
	dsrl	$14,$12,6
	movn	$2,$7,$10
	or	$5,$13,$5
	beqz	$14,.L1295
	dsrl	$4,$3,6

	sltu	$15,$2,$4
	sltu	$24,$15,1
	subu	$4,$2,$4
	andi	$7,$4,0xffff
	movz	$14,$0,$24
	dsrl	$25,$12,7
	movn	$2,$7,$24
	or	$5,$14,$5
	beqz	$25,.L1295
	dsrl	$4,$3,7

	sltu	$8,$2,$4
	sltu	$13,$8,1
	subu	$4,$2,$4
	andi	$7,$4,0xffff
	movz	$25,$0,$13
	dsrl	$9,$12,8
	movn	$2,$7,$13
	or	$5,$25,$5
	beqz	$9,.L1295
	dsrl	$4,$3,8

	sltu	$10,$2,$4
	sltu	$14,$10,1
	subu	$4,$2,$4
	andi	$7,$4,0xffff
	movz	$9,$0,$14
	dsrl	$15,$12,9
	movn	$2,$7,$14
	or	$5,$9,$5
	beqz	$15,.L1295
	dsrl	$4,$3,9

	sltu	$24,$2,$4
	sltu	$25,$24,1
	subu	$4,$2,$4
	andi	$7,$4,0xffff
	movz	$15,$0,$25
	dsrl	$8,$12,10
	movn	$2,$7,$25
	or	$5,$15,$5
	beqz	$8,.L1295
	dsrl	$4,$3,10

	sltu	$13,$2,$4
	sltu	$9,$13,1
	subu	$4,$2,$4
	andi	$7,$4,0xffff
	movz	$8,$0,$9
	dsrl	$10,$12,11
	movn	$2,$7,$9
	or	$5,$8,$5
	beqz	$10,.L1295
	dsrl	$4,$3,11

	sltu	$14,$2,$4
	sltu	$15,$14,1
	subu	$4,$2,$4
	andi	$7,$4,0xffff
	movz	$10,$0,$15
	dsrl	$24,$12,12
	movn	$2,$7,$15
	or	$5,$10,$5
	beqz	$24,.L1295
	dsrl	$4,$3,12

	sltu	$25,$2,$4
	sltu	$8,$25,1
	subu	$4,$2,$4
	andi	$7,$4,0xffff
	movz	$24,$0,$8
	dsrl	$13,$12,13
	movn	$2,$7,$8
	or	$5,$24,$5
	beqz	$13,.L1295
	dsrl	$4,$3,13

	sltu	$9,$2,$4
	sltu	$10,$9,1
	subu	$4,$2,$4
	andi	$7,$4,0xffff
	movz	$13,$0,$10
	dsrl	$14,$12,14
	movn	$2,$7,$10
	or	$5,$13,$5
	beqz	$14,.L1295
	dsrl	$4,$3,14

	sltu	$15,$2,$4
	sltu	$24,$15,1
	subu	$4,$2,$4
	andi	$7,$4,0xffff
	movz	$14,$0,$24
	li	$25,16384			# 0x4000
	movn	$2,$7,$24
	or	$5,$14,$5
	beq	$12,$25,.L1295
	dsrl	$3,$3,15

	sltu	$12,$2,$3
	subu	$4,$2,$3
	sltu	$7,$12,1
	andi	$3,$4,0xffff
	movn	$2,$3,$7
	or	$5,$5,$7
	jr	$31
	movz	$2,$5,$6

.L1301:
	b	.L1294
	li	$12,4			# 0x4

.L1303:
	b	.L1294
	li	$12,8			# 0x8

.L1305:
	b	.L1294
	li	$12,16			# 0x10

.L1315:
	b	.L1294
	li	$12,512			# 0x200

.L1307:
	b	.L1294
	li	$12,32			# 0x20

.L1309:
	b	.L1294
	li	$12,64			# 0x40

.L1311:
	b	.L1294
	li	$12,128			# 0x80

.L1313:
	b	.L1294
	li	$12,256			# 0x100

.L1372:
	xor	$3,$5,$4
	subu	$4,$4,$5
	andi	$2,$4,0xffff
	sltu	$5,$3,1
	b	.L1295
	movz	$2,$7,$5

.L1317:
	b	.L1294
	li	$12,1024			# 0x400

.L1319:
	b	.L1294
	li	$12,2048			# 0x800

.L1321:
	b	.L1294
	li	$12,4096			# 0x1000

.L1323:
	b	.L1294
	li	$12,8192			# 0x2000

.L1325:
	b	.L1294
	li	$12,16384			# 0x4000

.L1373:
	li	$12,32768			# 0x8000
	b	.L1294
	li	$3,32768			# 0x8000

.L1326:
	li	$3,32768			# 0x8000
	b	.L1294
	li	$12,32768			# 0x8000

.L1292:
	subu	$7,$4,$5
	andi	$2,$7,0xffff
	b	.L1295
	li	$5,1			# 0x1

	.set	macro
	.set	reorder
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.align	3
	.globl	__udivmodsi4_libgcc
	.set	nomips16
	.set	micromips
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beqz	$2,.L1398
	li	$3,1			# 0x1

	li	$7,64			# 0x40
	b	.L1375
	dsll	$9,$3,31

	.align	3
.L1379:
	dsll	$5,$5,1
	sltu	$8,$5,$4
	beqz	$8,.L1377
	dsll	$3,$3,1

	beqzc	$7,.L1378
.L1375:
	and	$2,$5,$9
	beqz	$2,.L1379
	addiu	$7,$7,-1

.L1380:
	move	$2,$0
	.align	3
.L1381:
	sltu	$11,$4,$5
	sltu	$12,$11,1
	move	$14,$3
	dsubu	$13,$4,$5
	movz	$14,$0,$12
	dsrl	$3,$3,1
	movn	$4,$13,$12
	or	$2,$2,$14
	bnez	$3,.L1381
	dsrl	$5,$5,1

.L1378:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L1377:
	bnezc	$3,.L1380
	b	.L1378
	nop

	.align	3
.L1398:
	sltu	$3,$4,$5
	sltu	$2,$3,1
	dsubu	$5,$4,$5
	b	.L1378
	movn	$4,$5,$2

	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.align	3
	.globl	__ashldi3
	.set	nomips16
	.set	micromips
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beqz	$2,.L1400
	sll	$8,$4,0

	sll	$3,$8,$5
	move	$2,$0
	move	$5,$0
	dins	$2,$5,0,32
	jr	$31
	dins	$2,$3,32,32

	.align	3
.L1400:
	beqz	$5,.L1403
	sll	$7,$4,0

	subu	$3,$0,$5
	dsra	$4,$4,32
	sll	$2,$4,$5
	srl	$3,$7,$3
	or	$3,$3,$2
	sll	$5,$7,$5
	move	$2,$0
	dins	$2,$5,0,32
	jr	$31
	dins	$2,$3,32,32

	.align	3
.L1403:
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
	.set	micromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beqzc	$2,.L1406
	dsll	$5,$4,$6
	move	$4,$0
.L1409:
	move	$2,$4
	jr	$31
	move	$3,$5

	.align	3
.L1406:
	beqzc	$6,.L1409
	subu	$3,$0,$6
	dsrl	$2,$4,$3
	dsll	$5,$5,$6
	or	$5,$5,$2
	dsll	$4,$4,$6
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
	.set	micromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beqz	$2,.L1412
	dsra	$9,$4,32

	sra	$8,$9,31
	move	$2,$0
	sra	$7,$9,$5
	dins	$2,$8,32,32
	jr	$31
	dins	$2,$7,0,32

	.align	3
.L1412:
	beqz	$5,.L1415
	dsra	$3,$4,32

	subu	$7,$0,$5
	sll	$4,$4,0
	sll	$2,$3,$7
	srl	$7,$4,$5
	or	$7,$7,$2
	sra	$8,$3,$5
	move	$2,$0
	dins	$2,$8,32,32
	jr	$31
	dins	$2,$7,0,32

	.align	3
.L1415:
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
	.set	micromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beqz	$2,.L1418
	dsra	$3,$5,63

	jr	$31
	dsra	$2,$5,$6

	.align	3
.L1418:
	beqz	$6,.L1421
	subu	$7,$0,$6

	dsll	$7,$5,$7
	dsrl	$2,$4,$6
	dsra	$3,$5,$6
	jr	$31
	or	$2,$2,$7

	.align	3
.L1421:
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
	.set	micromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsbh	$2,$4
	jr	$31
	dshd	$2,$2

	.set	macro
	.set	reorder
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.align	3
	.globl	__bswapsi2
	.set	nomips16
	.set	micromips
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	wsbh	$2,$4
	jr	$31
	ror	$2,$2,16

	.set	macro
	.set	reorder
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.align	3
	.globl	__clzsi2
	.set	nomips16
	.set	micromips
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
	dsll	$7,$2,4
	li	$3,16			# 0x10
	subu	$5,$3,$7
	srl	$4,$4,$5
	andi	$6,$4,0xff00
	sltu	$2,$6,1
	dsll	$6,$2,3
	li	$3,8			# 0x8
	subu	$5,$3,$6
	srl	$8,$4,$5
	andi	$10,$8,0xf0
	sltu	$4,$10,1
	dsll	$5,$4,2
	li	$2,4			# 0x4
	subu	$3,$2,$5
	srl	$11,$8,$3
	andi	$12,$11,0xc
	sltu	$4,$12,1
	li	$2,2			# 0x2
	dsll	$4,$4,1
	subu	$13,$2,$4
	srl	$3,$11,$13
	daddu	$7,$6,$7
	daddu	$6,$5,$7
	subu	$5,$2,$3
	andi	$2,$3,0x2
	movn	$5,$0,$2
	addu	$4,$4,$6
	jr	$31
	addu	$2,$5,$4

	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.align	3
	.globl	__clzti2
	.set	nomips16
	.set	micromips
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
	movn	$4,$0,$5
	and	$3,$3,$5
	or	$3,$3,$4
	dclz	$4,$3
	dsll	$5,$2,6
	jr	$31
	daddu	$2,$5,$4

	.set	macro
	.set	reorder
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.align	3
	.globl	__cmpdi2
	.set	nomips16
	.set	micromips
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
	bnez	$6,.L1435
	slt	$8,$3,$2

	bnez	$8,.L1436
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bnez	$9,.L1435
	sltu	$10,$5,$4

	bnezc	$10,.L1436
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1435:
	jr	$31
	move	$2,$0

	.align	3
.L1436:
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
	.set	micromips
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
	bnez	$6,.L1442
	slt	$8,$3,$2

	bnez	$8,.L1441
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bnezc	$9,.L1442
	jr	$31
	sltu	$2,$5,$4

	.align	3
.L1442:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1441:
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
	.set	micromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$5,$7
	bnez	$2,.L1448
	slt	$5,$7,$5

	bnez	$5,.L1449
	sltu	$7,$4,$6

	bnez	$7,.L1448
	sltu	$4,$6,$4

	bnezc	$4,.L1449
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1448:
	jr	$31
	move	$2,$0

	.align	3
.L1449:
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
	.set	micromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$6,$4,0xffff
	sltu	$6,$6,1
	sll	$2,$6,4
	srl	$3,$4,$2
	andi	$4,$3,0xff
	sltu	$2,$4,1
	sll	$5,$2,3
	srl	$7,$3,$5
	andi	$3,$7,0xf
	sltu	$5,$3,1
	sll	$4,$5,2
	srl	$3,$7,$4
	andi	$7,$3,0x3
	sltu	$4,$7,1
	sll	$7,$4,1
	srl	$3,$3,$7
	andi	$3,$3,0x3
	dsll	$7,$6,4
	dsll	$2,$2,3
	nor	$6,$0,$3
	daddu	$2,$2,$7
	andi	$6,$6,0x1
	li	$7,2			# 0x2
	dsll	$5,$5,2
	srl	$3,$3,1
	daddu	$5,$5,$2
	dsll	$4,$4,1
	subu	$3,$7,$3
	subu	$2,$0,$6
	and	$2,$2,$3
	addu	$6,$4,$5
	jr	$31
	addu	$2,$2,$6

	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.align	3
	.globl	__ctzti2
	.set	nomips16
	.set	micromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$4,1
	daddiu	$2,$3,-1
	and	$2,$2,$4
	movn	$5,$0,$4
	or	$5,$5,$2
	dsubu	$4,$0,$5
	and	$5,$5,$4
	dclz	$5,$5
	li	$7,63			# 0x3f
	subu	$8,$7,$5
	sll	$3,$3,6
	jr	$31
	addu	$2,$3,$8

	.set	macro
	.set	reorder
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.align	3
	.globl	__ffsti2
	.set	nomips16
	.set	micromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnez	$4,.L1456
	dsubu	$2,$0,$4

	bnez	$5,.L1460
	dsubu	$7,$0,$5

	jr	$31
	move	$2,$0

	.align	3
.L1456:
	and	$4,$4,$2
	dclz	$4,$4
	li	$5,63			# 0x3f
	subu	$6,$5,$4
	jr	$31
	addiu	$2,$6,1

	.align	3
.L1460:
	and	$5,$5,$7
	dclz	$8,$5
	li	$9,63			# 0x3f
	subu	$10,$9,$8
	jr	$31
	addiu	$2,$10,65

	.set	macro
	.set	reorder
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.align	3
	.globl	__lshrdi3
	.set	nomips16
	.set	micromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beqz	$2,.L1462
	dsra	$8,$4,32

	srl	$3,$8,$5
	move	$2,$0
	move	$5,$0
	dins	$2,$3,0,32
	jr	$31
	dins	$2,$5,32,32

	.align	3
.L1462:
	beqz	$5,.L1465
	dsra	$7,$4,32

	subu	$3,$0,$5
	sll	$4,$4,0
	srl	$2,$4,$5
	sll	$3,$7,$3
	or	$3,$3,$2
	move	$2,$0
	srl	$5,$7,$5
	dins	$2,$3,0,32
	jr	$31
	dins	$2,$5,32,32

	.align	3
.L1465:
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
	.set	micromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beqz	$2,.L1468
	dsrl	$2,$5,$6

	move	$5,$0
	jr	$31
	move	$3,$5

	.align	3
.L1468:
	beqzc	$6,.L1471
	subu	$3,$0,$6
	dsll	$3,$5,$3
	dsrl	$2,$4,$6
	dsrl	$5,$5,$6
	or	$2,$2,$3
	jr	$31
	move	$3,$5

	.align	3
.L1471:
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
	.set	micromips
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
	mul	$3,$6,$7
	dext	$4,$4,16,16
	mul	$9,$7,$4
	dext	$5,$5,16,16
	dext	$8,$3,16,16
	mul	$14,$6,$5
	addu	$11,$9,$8
	andi	$7,$3,0xffff
	sll	$12,$11,16
	addu	$3,$7,$12
	mul	$25,$4,$5
	dext	$13,$3,16,16
	addu	$15,$14,$13
	andi	$6,$3,0xffff
	srl	$24,$11,16
	sll	$5,$15,16
	addu	$4,$25,$24
	addu	$7,$6,$5
	srl	$3,$15,16
	move	$2,$0
	dins	$2,$7,0,32
	addu	$4,$4,$3
	jr	$31
	dins	$2,$4,32,32

	.set	macro
	.set	reorder
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.align	3
	.globl	__muldi3_compiler_rt
	.set	nomips16
	.set	micromips
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$6,$4,0xffff
	andi	$7,$5,0xffff
	mul	$3,$6,$7
	dext	$8,$4,16,16
	mul	$11,$7,$8
	dext	$9,$5,16,16
	dext	$10,$3,16,16
	mul	$24,$6,$9
	addu	$13,$11,$10
	sll	$14,$13,16
	andi	$7,$3,0xffff
	addu	$3,$7,$14
	mul	$8,$8,$9
	dext	$15,$3,16,16
	addu	$25,$24,$15
	srl	$6,$13,16
	sll	$7,$25,16
	andi	$3,$3,0xffff
	addu	$9,$8,$6
	addu	$3,$3,$7
	srl	$10,$25,16
	move	$2,$0
	dins	$2,$3,0,32
	addu	$11,$9,$10
	dins	$2,$11,32,32
	dsra	$15,$2,32
	sll	$13,$4,0
	dsra	$14,$5,32
	mtlo	$15
	madd	$13,$14
	sll	$5,$5,0
	dsra	$4,$4,32
	madd	$5,$4
	mflo	$24
	jr	$31
	dins	$2,$24,32,32

	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.align	3
	.globl	__mulddi3
	.set	nomips16
	.set	micromips
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
	mfhi	$7
	mflo	$2
	multu	$3,$4
	dsra	$5,$5,32
	mfhi	$9
	mflo	$3
	multu	$6,$5
	dins	$2,$7,32,32
	mfhi	$10
	mflo	$6
	multu	$4,$5
	dsrl	$7,$2,32
	dins	$3,$9,32,32
	daddu	$3,$3,$7
	mflo	$4
	mfhi	$11
	dins	$6,$10,32,32
	dext	$5,$3,0,32
	daddu	$7,$6,$5
	dins	$4,$11,32,32
	dsrl	$3,$3,32
	daddu	$5,$3,$4
	dsll	$6,$7,32
	dsrl	$4,$7,32
	dext	$2,$2,0,32
	daddu	$3,$5,$4
	jr	$31
	daddu	$2,$2,$6

	.set	macro
	.set	reorder
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.align	3
	.globl	__multi3
	.set	nomips16
	.set	micromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmult	$4,$7
	sll	$8,$4,0
	sll	$3,$6,0
	dsra	$4,$4,32
	mflo	$7
	multu	$8,$3
	mfhi	$9
	mflo	$2
	dmult	$6,$5
	dsra	$6,$6,32
	dins	$2,$9,32,32
	dsrl	$13,$2,32
	dext	$2,$2,0,32
	mflo	$5
	multu	$3,$4
	mfhi	$12
	mflo	$11
	multu	$8,$6
	dins	$11,$12,32,32
	mfhi	$24
	mflo	$15
	multu	$4,$6
	daddu	$14,$11,$13
	mflo	$4
	mfhi	$25
	dins	$15,$24,32,32
	dext	$8,$14,0,32
	dins	$4,$25,32,32
	daddu	$9,$15,$8
	dsrl	$3,$14,32
	daddu	$6,$3,$4
	dsrl	$4,$9,32
	daddu	$3,$6,$4
	daddu	$7,$7,$3
	dsll	$11,$9,32
	daddu	$3,$7,$5
	jr	$31
	daddu	$2,$2,$11

	.set	macro
	.set	reorder
	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
	.align	3
	.globl	__negdi2
	.set	nomips16
	.set	micromips
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
	.set	micromips
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
	.set	micromips
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
	xor	$2,$2,$4
	dext	$3,$2,16,16
	xor	$2,$2,$3
	dext	$6,$2,8,24
	xor	$2,$2,$6
	dext	$7,$2,4,28
	xor	$2,$2,$7
	andi	$2,$2,0xf
	li	$8,27030			# 0x6996
	sra	$4,$8,$2
	jr	$31
	andi	$2,$4,0x1

	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.align	3
	.globl	__parityti2
	.set	nomips16
	.set	micromips
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
	sll	$4,$4,0
	xor	$2,$2,$4
	dext	$3,$2,16,16
	xor	$2,$2,$3
	dext	$5,$2,8,24
	xor	$2,$2,$5
	dext	$7,$2,4,28
	xor	$2,$2,$7
	andi	$2,$2,0xf
	li	$8,27030			# 0x6996
	sra	$4,$8,$2
	jr	$31
	andi	$2,$4,0x1

	.set	macro
	.set	reorder
	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.align	3
	.globl	__paritysi2
	.set	nomips16
	.set	micromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,16
	xor	$4,$4,$2
	dext	$5,$4,8,24
	xor	$4,$4,$5
	dext	$6,$4,4,28
	xor	$4,$4,$6
	andi	$4,$4,0xf
	li	$7,27030			# 0x6996
	sra	$2,$7,$4
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.align	3
	.globl	__popcountdi2
	.set	nomips16
	.set	micromips
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
	dsrl	$5,$4,1
	daddiu	$11,$9,21845
	dsll	$12,$10,16
	and	$3,$5,$11
	daddiu	$13,$12,13107
	dsubu	$4,$4,$3
	dsll	$14,$13,16
	li	$15,252641280			# 0xf0f0000
	daddiu	$2,$14,13107
	daddiu	$24,$15,3855
	dsrl	$7,$4,2
	and	$7,$7,$2
	and	$4,$4,$2
	dsll	$25,$24,16
	daddu	$5,$7,$4
	daddiu	$8,$25,3855
	dsrl	$3,$5,4
	dsll	$9,$8,16
	daddu	$4,$3,$5
	daddiu	$10,$9,3855
	and	$11,$4,$10
	dext	$12,$11,32,32
	sll	$13,$11,0
	addu	$14,$12,$13
	dext	$15,$14,16,16
	addu	$7,$15,$14
	srl	$2,$7,8
	addu	$5,$2,$7
	jr	$31
	andi	$2,$5,0x7f

	.set	macro
	.set	reorder
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.align	3
	.globl	__popcountsi2
	.set	nomips16
	.set	micromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,1431633920			# 0x55550000
	addiu	$6,$3,21845
	srl	$2,$4,1
	and	$2,$2,$6
	subu	$4,$4,$2
	li	$7,858980352			# 0x33330000
	addiu	$2,$7,13107
	srl	$3,$4,2
	and	$8,$4,$2
	and	$3,$3,$2
	addu	$6,$8,$3
	srl	$7,$6,4
	li	$9,252641280			# 0xf0f0000
	addu	$4,$7,$6
	addiu	$2,$9,3855
	and	$4,$4,$2
	dext	$3,$4,16,13
	addu	$6,$4,$3
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
	.set	micromips
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
	dsll	$9,$7,16
	dsrl	$3,$4,1
	dsll	$2,$5,63
	daddiu	$6,$9,21845
	or	$2,$2,$3
	dsrl	$7,$5,1
	and	$2,$2,$6
	li	$10,858980352			# 0x33330000
	dsubu	$2,$4,$2
	and	$6,$7,$6
	daddiu	$11,$10,13107
	sltu	$4,$4,$2
	dsubu	$5,$5,$6
	dsll	$12,$11,16
	dsubu	$7,$5,$4
	daddiu	$13,$12,13107
	dsrl	$6,$2,2
	dsll	$14,$13,16
	dsll	$4,$7,62
	daddiu	$3,$14,13107
	or	$4,$4,$6
	and	$4,$4,$3
	dsrl	$5,$7,2
	and	$2,$2,$3
	daddu	$2,$4,$2
	and	$5,$5,$3
	and	$7,$7,$3
	sltu	$4,$2,$4
	daddu	$7,$5,$7
	daddu	$5,$4,$7
	li	$15,252641280			# 0xf0f0000
	dsrl	$6,$2,4
	dsll	$3,$5,60
	daddiu	$24,$15,3855
	or	$3,$3,$6
	dsll	$25,$24,16
	daddu	$2,$3,$2
	dsrl	$7,$5,4
	daddiu	$9,$25,3855
	sltu	$3,$2,$3
	daddu	$5,$7,$5
	dsll	$10,$9,16
	daddiu	$4,$10,3855
	daddu	$6,$3,$5
	and	$2,$2,$4
	and	$6,$6,$4
	daddu	$2,$6,$2
	dsra	$11,$2,32
	sll	$12,$2,0
	addu	$13,$11,$12
	dext	$14,$13,16,16
	addu	$7,$14,$13
	srl	$3,$7,8
	addu	$5,$3,$7
	jr	$31
	andi	$2,$5,0x00ff

	.set	macro
	.set	reorder
	.end	__popcountti2
	.size	__popcountti2, .-__popcountti2
	.align	2
	.align	3
	.globl	__powidf2
	.set	nomips16
	.set	micromips
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
	beqz	$2,.L1503
	ld	$6,%got_page(.LC14)($7)

	ldc1	$f0,%got_ofst(.LC14)($6)
	move	$2,$5
	.align	3
.L1500:
	mul.d	$f0,$f0,$f12
.L1498:
	srl	$3,$2,31
	addu	$4,$3,$2
	sra	$2,$4,1
	beqz	$2,.L1499
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bnez	$4,.L1500
	addu	$3,$3,$2

	sra	$2,$3,1
.L1507:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bnez	$4,.L1500
	addu	$3,$3,$2

	b	.L1507
	sra	$2,$3,1

	.align	3
.L1499:
	bltz	$5,.L1506
	ldc1	$f1,%got_ofst(.LC14)($6)

	jrc	$31
	.align	3
.L1503:
	ldc1	$f0,%got_ofst(.LC14)($6)
	b	.L1498
	move	$2,$5

	.align	3
.L1506:
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
	.set	micromips
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
	beqz	$2,.L1514
	ld	$6,%got_page(.LC16)($7)

	lwc1	$f0,%got_ofst(.LC16)($6)
	move	$2,$5
	.align	3
.L1511:
	mul.s	$f0,$f0,$f12
.L1509:
	srl	$3,$2,31
	addu	$4,$3,$2
	sra	$2,$4,1
	beqz	$2,.L1510
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bnez	$4,.L1511
	addu	$3,$3,$2

	sra	$2,$3,1
.L1518:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bnez	$4,.L1511
	addu	$3,$3,$2

	b	.L1518
	sra	$2,$3,1

	.align	3
.L1510:
	bltz	$5,.L1517
	lwc1	$f1,%got_ofst(.LC16)($6)

	jrc	$31
	.align	3
.L1514:
	lwc1	$f0,%got_ofst(.LC16)($6)
	b	.L1509
	move	$2,$5

	.align	3
.L1517:
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
	.set	micromips
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
	bnez	$6,.L1523
	sltu	$8,$3,$2

	bnez	$8,.L1524
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bnez	$9,.L1523
	sltu	$10,$5,$4

	bnezc	$10,.L1524
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1523:
	jr	$31
	move	$2,$0

	.align	3
.L1524:
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
	.set	micromips
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
	bnez	$6,.L1530
	sltu	$8,$3,$2

	bnez	$8,.L1529
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$9,$4,$5
	bnezc	$9,.L1530
	jr	$31
	sltu	$2,$5,$4

	.align	3
.L1530:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1529:
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
	.set	micromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$7
	bnez	$2,.L1536
	sltu	$5,$7,$5

	bnez	$5,.L1537
	sltu	$7,$4,$6

	bnez	$7,.L1536
	sltu	$4,$6,$4

	bnezc	$4,.L1537
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1536:
	jr	$31
	move	$2,$0

	.align	3
.L1537:
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
