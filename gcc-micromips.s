	.file	1 "mini-libc.c"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.module	arch=mips64r2
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
	move	$2,$4
	jr	$31
	move	$3,$5

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
	move	$2,$4
	jr	$31
	move	$3,$5

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
	beqz	$6,.L21
	daddu	$3,$4,$6

	.align	3
.L9:
	lb	$4,-1($5)
	daddiu	$3,$3,-1
	daddiu	$5,$5,-1
	bne	$2,$3,.L9
	sb	$4,0($3)

.L21:
	jrc	$31
	.align	3
.L7:
	beq	$4,$5,.L20
	nop

	beqz	$6,.L21
	daddu	$6,$4,$6

	move	$3,$4
	.align	3
.L10:
	lb	$4,0($5)
	daddiu	$3,$3,1
	daddiu	$5,$5,1
	bne	$6,$3,.L10
	sb	$4,-1($3)

.L20:
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
	bnez	$7,.L23
	andi	$6,$6,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L25:
	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	beqz	$7,.L27
	daddiu	$4,$4,1

.L23:
	lbu	$2,0($5)
	bne	$2,$6,.L25
	sb	$2,0($4)

	beqzc	$7,.L27
	jr	$31
	daddiu	$2,$4,1

	.align	3
.L27:
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
	bnez	$6,.L38
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L40:
	beqz	$6,.L43
	daddiu	$4,$4,1

.L38:
	lbu	$2,0($4)
	bne	$2,$5,.L40
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
	bnez	$6,.L48
	move	$2,$4

	.align	3
.L43:
	move	$2,$0
.L48:
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
	bnez	$6,.L50
	move	$2,$0

	b	.L62
	nop

	.align	3
.L52:
	daddiu	$4,$4,1
	beqz	$6,.L54
	daddiu	$5,$5,1

.L50:
	lbu	$2,0($4)
	lbu	$3,0($5)
	beq	$2,$3,.L52
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
	beqzc	$6,.L54
	jr	$31
	subu	$2,$2,$3

	.align	3
.L54:
	move	$2,$0
.L62:
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
	beqz	$6,.L64
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalrs	$25
	nop

.L64:
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
	b	.L70
	daddiu	$4,$4,-1

	.align	3
.L72:
	lbu	$3,0($6)
	move	$2,$6
	beq	$3,$5,.L74
	daddiu	$6,$6,-1

.L70:
	bne	$6,$4,.L72
	move	$2,$0

.L74:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$6,.L83
	move	$2,$4

	daddu	$6,$4,$6
	move	$3,$4
	.align	3
.L77:
	sb	$5,0($3)
	daddiu	$3,$3,1
	bne	$6,$3,.L77
	nop

.L83:
	jrc	$31
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
	beqz	$3,.L92
	sb	$3,0($4)

	.align	3
.L86:
	lb	$3,1($5)
	daddiu	$2,$2,1
	daddiu	$5,$5,1
	bnez	$3,.L86
	sb	$3,0($2)

.L92:
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
	lb	$3,0($4)
	move	$2,$4
	bnez	$3,.L94
	andi	$5,$5,0x00ff

.L103:
	jrc	$31
	.align	3
.L96:
	lb	$3,1($2)
	beqz	$3,.L103
	daddiu	$2,$2,1

.L94:
	andi	$3,$3,0x00ff
	bne	$3,$5,.L96
	nop

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
	b	.L106
	move	$2,$4

	.align	3
.L110:
	beqz	$3,.L109
	daddiu	$2,$2,1

.L106:
	lb	$3,0($2)
	bne	$3,$5,.L110
	nop

	jrc	$31
	.align	3
.L109:
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
	lb	$2,0($4)
	lb	$3,0($5)
	beq	$2,$3,.L112
	nop

	b	.L117
	andi	$3,$3,0x00ff

	.align	3
.L114:
	lb	$2,1($4)
	lb	$3,1($5)
	daddiu	$4,$4,1
	bne	$2,$3,.L113
	daddiu	$5,$5,1

.L112:
	bnezc	$2,.L114
.L113:
	andi	$3,$3,0x00ff
.L117:
	andi	$2,$2,0x00ff
	jr	$31
	subu	$2,$2,$3

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
	beqzc	$2,.L121
	move	$2,$4
	.align	3
.L120:
	lb	$5,1($2)
	bnez	$5,.L120
	daddiu	$2,$2,1

	jr	$31
	dsubu	$2,$2,$4

	.align	3
.L121:
	move	$2,$4
	jr	$31
	dsubu	$2,$2,$4

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
	beqzc	$6,.L129
	lbu	$2,0($4)
	beqzc	$2,.L126
	daddiu	$6,$6,-1
	b	.L127
	daddu	$6,$4,$6

	.align	3
.L140:
	beq	$4,$6,.L126
	nop

	bne	$3,$2,.L126
	nop

	lbu	$2,1($4)
	daddiu	$5,$5,1
	beqz	$2,.L126
	daddiu	$4,$4,1

.L127:
	lbu	$3,0($5)
	bnezc	$3,.L140
.L126:
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

	.align	3
.L129:
	jr	$31
	move	$2,$0

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
	bnez	$2,.L146
	li	$2,-2			# 0xfffffffffffffffe

	and	$6,$6,$2
	daddu	$6,$4,$6
	.align	3
.L143:
	lbu	$3,1($4)
	lbu	$2,0($4)
	daddiu	$4,$4,2
	sb	$3,0($5)
	sb	$2,1($5)
	bne	$4,$6,.L143
	daddiu	$5,$5,2

.L146:
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
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,26

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
	beq	$4,$2,.L153
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

	.align	3
.L153:
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
	bnez	$2,.L157
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

	.align	3
.L157:
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
	beq	$4,$2,.L169
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

	.align	3
.L169:
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
	bnezc	$2,.L177
	addiu	$2,$4,-127
	sltu	$2,$2,33
	beqzc	$2,.L179
.L177:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L179:
	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bnezc	$2,.L177
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
	bnez	$2,.L190
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bnez	$2,.L187
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bnezc	$2,.L187
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$3,$2,8192
	addu	$3,$4,$3
	sltu	$3,$3,8185
	bnez	$3,.L187
	li	$3,1048576			# 0x100000

	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beqzc	$2,.L188
	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

	.align	3
.L187:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L190:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

	.align	3
.L188:
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
	sltu	$2,$2,10
	bnezc	$2,.L193
	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

	.align	3
.L193:
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
	bc1t	$fcc0,.L200
	c.un.d	$fcc1,$f13,$f13

	bc1t	$fcc1,.L201
	nop

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L204
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

	.align	3
.L204:
	jr	$31
	dmtc1	$0,$f0

	.align	3
.L200:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L201:
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
	bc1t	$fcc0,.L209
	c.un.s	$fcc1,$f13,$f13

	bc1t	$fcc1,.L210
	nop

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L213
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

	.align	3
.L213:
	jr	$31
	mtc1	$0,$f0

	.align	3
.L209:
	jr	$31
	mov.s	$f0,$f12

	.align	3
.L210:
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
	sdc1	$f12,0($sp)
	bc1t	$fcc0,.L218
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L219
	ld	$3,8($sp)

	ld	$2,0($sp)
	dsrl	$2,$2,63
	dext	$3,$3,63,1
	bne	$2,$3,.L222
	mov.d	$f0,$f12

	ldc1	$f0,0($sp)
	ldc1	$f1,8($sp)
	c.lt.d	$fcc2,$f0,$f1
	movt.d	$f0,$f1,$fcc2
.L215:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L222:
	daddiu	$sp,$sp,16
	jr	$31
	movn.d	$f0,$f13,$2

	.align	3
.L218:
	b	.L215
	ldc1	$f0,8($sp)

	.align	3
.L219:
	b	.L215
	ldc1	$f0,0($sp)

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
	swc1	$f12,0($sp)
	bc1t	$fcc0,.L226
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L227
	lw	$3,0($sp)

	lw	$2,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	and	$2,$2,$4
	bne	$3,$2,.L230
	move	$4,$3

	lwc1	$f0,0($sp)
	lwc1	$f1,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	movt.s	$f0,$f1,$fcc2
.L223:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L230:
	mov.s	$f0,$f12
	daddiu	$sp,$sp,16
	jr	$31
	movn.s	$f0,$f13,$4

	.align	3
.L226:
	b	.L223
	lwc1	$f0,4($sp)

	.align	3
.L227:
	b	.L223
	lwc1	$f0,0($sp)

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
	dmfc1	$11,$f13
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	dmfc1	$10,$f12
	dmfc1	$5,$f15
	dmfc1	$4,$f14
	dmtc1	$11,$f13
	dmtc1	$11,$f15
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$10,$f14
	dmtc1	$10,$f12
	sd	$fp,96($sp)
	sd	$23,80($sp)
	sd	$22,72($sp)
	sd	$20,64($sp)
	sd	$31,104($sp)
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	move	$20,$10
	move	$fp,$11
	move	$22,$4
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	move	$23,$5

	bnez	$2,.L231
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$23,$f15
	dmtc1	$23,$f13
	dmtc1	$22,$f14
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$22,$f12

	bnez	$2,.L238
	dsrl	$2,$20,63

	dext	$4,$22,63,1
	beq	$2,$4,.L233
	ld	$25,%call16(__lttf2)($28)

	beqz	$2,.L243
	ld	$31,104($sp)

.L231:
	ld	$31,104($sp)
.L244:
	dmtc1	$23,$f2
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
.L233:
	sd	$23,8($sp)
	sd	$fp,24($sp)
	ldc1	$f15,8($sp)
	ldc1	$f13,24($sp)
	sd	$22,0($sp)
	sd	$20,16($sp)
	ldc1	$f14,0($sp)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bltz	$2,.L244
	ld	$31,104($sp)

.L238:
	ld	$31,104($sp)
.L243:
	move	$22,$20
	move	$23,$fp
	dmtc1	$23,$f2
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
	sdc1	$f12,0($sp)
	bc1t	$fcc0,.L248
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L249
	mov.d	$f0,$f13

	ld	$2,0($sp)
	ld	$3,8($sp)
	dsrl	$2,$2,63
	dext	$3,$3,63,1
	bne	$2,$3,.L252
	ldc1	$f1,8($sp)

	ldc1	$f0,0($sp)
	c.lt.d	$fcc2,$f0,$f1
	movf.d	$f0,$f1,$fcc2
.L245:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L252:
	movn.d	$f0,$f12,$2
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L248:
	b	.L245
	ldc1	$f0,8($sp)

	.align	3
.L249:
	b	.L245
	ldc1	$f0,0($sp)

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
	swc1	$f12,0($sp)
	bc1t	$fcc0,.L256
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L257
	mov.s	$f0,$f13

	lw	$3,0($sp)
	lw	$2,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	and	$2,$2,$4
	bne	$3,$2,.L260
	move	$4,$3

	lwc1	$f0,0($sp)
	lwc1	$f1,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	movf.s	$f0,$f1,$fcc2
.L253:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L260:
	movn.s	$f0,$f12,$4
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L256:
	b	.L253
	lwc1	$f0,4($sp)

	.align	3
.L257:
	b	.L253
	lwc1	$f0,0($sp)

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
	dmfc1	$11,$f13
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	daddu	$28,$28,$25
	dmfc1	$10,$f12
	dmfc1	$5,$f15
	dmfc1	$4,$f14
	dmtc1	$11,$f13
	dmtc1	$11,$f15
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$10,$f14
	dmtc1	$10,$f12
	sd	$fp,96($sp)
	sd	$23,80($sp)
	sd	$22,72($sp)
	sd	$20,64($sp)
	sd	$31,104($sp)
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	move	$20,$10
	move	$22,$11
	move	$23,$4
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	move	$fp,$5

	bnez	$2,.L267
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$fp,$f15
	dmtc1	$fp,$f13
	dmtc1	$23,$f14
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$23,$f12

	bnez	$2,.L269
	dsrl	$2,$20,63

	dext	$4,$23,63,1
	beq	$2,$4,.L263
	ld	$25,%call16(__lttf2)($28)

	bnez	$2,.L273
	ld	$31,104($sp)

.L267:
	ld	$31,104($sp)
.L274:
	move	$22,$fp
	move	$3,$23
	dmtc1	$22,$f2
	dmtc1	$3,$f0
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
.L263:
	sd	$fp,8($sp)
	sd	$22,24($sp)
	ldc1	$f15,8($sp)
	ldc1	$f13,24($sp)
	sd	$23,0($sp)
	sd	$20,16($sp)
	ldc1	$f14,0($sp)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bgez	$2,.L274
	ld	$31,104($sp)

.L269:
	ld	$31,104($sp)
.L273:
	move	$3,$20
	dmtc1	$22,$f2
	dmtc1	$3,$f0
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
	beqz	$4,.L278
	daddiu	$7,$7,%lo(%neg(%gp_rel(l64a)))

	ld	$2,%got_page(s.0)($7)
	ld	$6,%got_page(digits)($7)
	daddiu	$2,$2,%got_ofst(s.0)
	move	$3,$4
	move	$5,$2
	daddiu	$6,$6,%got_ofst(digits)
	.align	3
.L277:
	andi	$4,$3,0x3f
	daddu	$4,$6,$4
	lbu	$4,0($4)
	dext	$3,$3,6,26
	sb	$4,0($5)
	bnez	$3,.L277
	daddiu	$5,$5,1

	jr	$31
	sb	$0,0($5)

	.align	3
.L278:
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
	dext	$4,$4,0,32
	jr	$31
	sd	$4,%got_ofst(seed)($2)

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
	daddiu	$5,$5,%lo(%neg(%gp_rel(rand)))
	ori	$2,$2,0xf42d
	ld	$3,%got_page(seed)($5)
	dsll	$2,$2,16
	daddiu	$2,$2,19605
	ld	$4,%got_ofst(seed)($3)
	dsll	$2,$2,16
	daddiu	$2,$2,32557
	dmult	$4,$2
	mflo	$2
	daddiu	$2,$2,1
	sd	$2,%got_ofst(seed)($3)
	jr	$31
	dsrl	$2,$2,33

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
	beqzc	$5,.L292
	ld	$2,0($5)
	sd	$5,8($4)
	sd	$2,0($4)
	sd	$4,0($5)
	ld	$2,0($4)
	beqzc	$2,.L293
	sd	$4,8($2)
.L293:
	jrc	$31
	.align	3
.L292:
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
	beqzc	$2,.L295
	ld	$3,8($4)
	sd	$3,8($2)
.L295:
	ld	$2,8($4)
	beqzc	$2,.L304
	ld	$3,0($4)
	sd	$3,0($2)
.L304:
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
	sd	$fp,80($sp)
	sd	$28,72($sp)
	sd	$23,64($sp)
	sd	$20,40($sp)
	sd	$18,24($sp)
	sd	$31,88($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$19,32($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	ld	$19,0($6)
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	move	$23,$6
	move	$20,$4
	move	$fp,$5
	beqz	$19,.L306
	move	$18,$7

	move	$22,$8
	move	$16,$5
	b	.L308
	move	$17,$0

	.align	3
.L321:
	beq	$19,$17,.L306
	daddu	$16,$16,$18

.L308:
	move	$5,$16
	move	$4,$20
	move	$25,$22
	jalr	$25
	move	$21,$16

	bnez	$2,.L321
	daddiu	$17,$17,1

.L305:
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
.L306:
	dmult	$18,$19
	daddiu	$19,$19,1
	sd	$19,0($23)
	mflo	$21
	beqz	$18,.L305
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
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	ld	$20,0($6)
	beqz	$20,.L323
	move	$18,$4

	move	$21,$7
	move	$19,$8
	move	$16,$5
	b	.L325
	move	$17,$0

	.align	3
.L334:
	beq	$20,$17,.L323
	daddu	$16,$16,$21

.L325:
	move	$5,$16
	move	$4,$18
	move	$25,$19
	jalr	$25
	move	$22,$16

	bnez	$2,.L334
	daddiu	$17,$17,1

.L322:
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
.L323:
	b	.L322
	move	$22,$0

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
	bltz	$4,.L339
	nop

	jr	$31
	move	$2,$4

	.align	3
.L339:
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
	li	$5,32			# 0x20
	.align	3
.L341:
	lb	$3,0($4)
	beq	$3,$5,.L343
	nop

	addiu	$2,$3,-9
	sltu	$2,$2,5
	beqzc	$2,.L355
.L343:
	b	.L341
	daddiu	$4,$4,1

	.align	3
.L355:
	li	$5,43			# 0x2b
	beq	$3,$5,.L350
	li	$5,45			# 0x2d

	beq	$3,$5,.L356
	nop

	lb	$6,0($4)
	addiu	$5,$6,-48
	sltu	$3,$5,10
	bnez	$3,.L346
	move	$7,$0

	.align	3
.L347:
	bnezc	$7,.L357
	subu	$2,$0,$2
.L357:
	jrc	$31
	.align	3
.L356:
	li	$7,1			# 0x1
.L344:
	lb	$6,1($4)
	addiu	$5,$6,-48
	sltu	$3,$5,10
	beqz	$3,.L347
	daddiu	$4,$4,1

	.align	3
.L346:
	lb	$6,1($4)
	sll	$3,$2,2
	addu	$3,$3,$2
	seb	$2,$5
	addiu	$5,$6,-48
	sll	$3,$3,1
	sltu	$6,$5,10
	daddiu	$4,$4,1
	bnez	$6,.L346
	subu	$2,$3,$2

	b	.L347
	nop

	.align	3
.L350:
	b	.L344
	move	$7,$0

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
	.align	3
.L359:
	lb	$2,0($4)
	beq	$2,$3,.L361
	nop

	addiu	$6,$2,-9
	sltu	$6,$6,5
	beqzc	$6,.L372
.L361:
	b	.L359
	daddiu	$4,$4,1

	.align	3
.L372:
	li	$3,43			# 0x2b
	beq	$2,$3,.L362
	li	$3,45			# 0x2d

	beq	$2,$3,.L373
	nop

.L363:
	lb	$7,0($4)
	addiu	$5,$7,-48
	sltu	$3,$5,10
	beqz	$3,.L365
	move	$2,$0

	.align	3
.L364:
	lb	$7,1($4)
	dsll	$3,$2,2
	daddu	$3,$3,$2
	seb	$2,$5
	addiu	$5,$7,-48
	dsll	$3,$3,1
	sltu	$7,$5,10
	daddiu	$4,$4,1
	bnez	$7,.L364
	dsubu	$2,$3,$2

.L365:
	bnezc	$6,.L374
	dsubu	$2,$0,$2
.L374:
	jrc	$31
	.align	3
.L373:
	li	$6,1			# 0x1
.L362:
	b	.L363
	daddiu	$4,$4,1

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
	lui	$3,%hi(%neg(%gp_rel(atoll)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(atoll)))
	ld	$25,%got_disp(atol)($3)
	.reloc	1f,R_MICROMIPS_JALR,atol
1:	jrc	$25
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
	beqz	$6,.L378
	sd	$16,8($sp)

	move	$16,$6
	move	$21,$4
	move	$19,$5
	move	$18,$7
	b	.L381
	move	$20,$8

	.align	3
.L388:
	blez	$2,.L377
	daddiu	$16,$16,-1

	dsubu	$16,$16,$22
	beqz	$16,.L378
	daddu	$19,$17,$18

.L381:
	dsrl	$22,$16,1
.L389:
	dmult	$22,$18
	move	$4,$21
	move	$25,$20
	mflo	$17
	daddu	$17,$19,$17
	jalr	$25
	move	$5,$17

	bgez	$2,.L388
	nop

	move	$16,$22
	bnez	$16,.L389
	dsrl	$22,$16,1

.L378:
	move	$17,$0
.L377:
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
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sll	$6,$6,0
	sd	$31,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	beqz	$6,.L391
	sd	$16,0($sp)

	move	$22,$4
	move	$19,$5
	move	$18,$7
	move	$21,$8
	move	$20,$9
	b	.L394
	move	$16,$6

	.align	3
.L403:
	blez	$2,.L393
	nop

	addiu	$16,$16,-1
	daddu	$19,$17,$18
	sra	$23,$16,1
.L393:
	beqz	$23,.L391
	move	$16,$23

.L394:
	dsra	$2,$16,1
	dmult	$2,$18
	move	$6,$20
	move	$4,$22
	move	$25,$21
	sra	$23,$16,1
	mflo	$17
	daddu	$17,$19,$17
	jalr	$25
	move	$5,$17

	bnezc	$2,.L403
.L390:
	ld	$31,72($sp)
	move	$2,$17
	ld	$23,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	80
	.align	3
.L391:
	b	.L390
	move	$17,$0

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
	move	$2,$0
	daddiu	$sp,$sp,-16
	daddiu	$sp,$sp,16
	mflo	$3
	mfhi	$4
	dext	$3,$3,0,32
	dins	$2,$3,32,32
	dext	$4,$4,0,32
	jr	$31
	dins	$2,$4,0,32

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
	bltz	$4,.L409
	move	$2,$4

	jrc	$31
	.align	3
.L409:
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
	mfhi	$4
	mflo	$2
	jr	$31
	move	$3,$4

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
	bltz	$4,.L417
	move	$2,$4

	jrc	$31
	.align	3
.L417:
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
	mfhi	$4
	mflo	$2
	jr	$31
	move	$3,$4

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
	bltz	$4,.L425
	move	$2,$4

	jrc	$31
	.align	3
.L425:
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
	mfhi	$4
	mflo	$2
	jr	$31
	move	$3,$4

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
	lw	$3,0($4)
	bnez	$3,.L431
	move	$2,$0

	b	.L440
	nop

	.align	3
.L433:
	lw	$3,4($4)
	beqz	$3,.L436
	daddiu	$4,$4,4

.L431:
	bne	$5,$3,.L433
	nop

	bnez	$3,.L440
	move	$2,$4

	.align	3
.L436:
	move	$2,$0
.L440:
	jrc	$31
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
	beq	$2,$3,.L442
	nop

	b	.L453
	slt	$4,$2,$3

	.align	3
.L452:
	beqzc	$3,.L443
	lw	$2,4($4)
	lw	$3,4($5)
	daddiu	$4,$4,4
	bne	$2,$3,.L443
	daddiu	$5,$5,4

.L442:
	bnezc	$2,.L452
.L443:
	slt	$4,$2,$3
.L453:
	bnezc	$4,.L446
	jr	$31
	slt	$2,$3,$2

	.align	3
.L446:
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
.L455:
	lw	$6,0($5)
	daddiu	$3,$3,4
	daddiu	$5,$5,4
	bnez	$6,.L455
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
	beqzc	$2,.L461
	move	$2,$4
	.align	3
.L460:
	lw	$3,4($2)
	bnez	$3,.L460
	daddiu	$2,$2,4

	dsubu	$2,$2,$4
	jr	$31
	dsra	$2,$2,2

	.align	3
.L461:
	move	$2,$4
	dsubu	$2,$2,$4
	jr	$31
	dsra	$2,$2,2

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
	bnez	$6,.L465
	move	$2,$0

	b	.L479
	nop

	.align	3
.L478:
	beqzc	$2,.L466
	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	beqz	$6,.L469
	daddiu	$5,$5,4

.L465:
	lw	$2,0($4)
	lw	$3,0($5)
	beq	$3,$2,.L478
	nop

.L466:
	beqzc	$6,.L469
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$4,$2,$3
	bnezc	$4,.L470
	jr	$31
	slt	$2,$3,$2

	.align	3
.L469:
	jr	$31
	move	$2,$0

	.align	3
.L470:
	li	$2,-1			# 0xffffffffffffffff
.L479:
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
	bnez	$6,.L481
	move	$2,$0

	b	.L490
	nop

	.align	3
.L483:
	beqz	$6,.L486
	daddiu	$4,$4,4

.L481:
	lw	$2,0($4)
	bne	$2,$5,.L483
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
	bnez	$6,.L490
	move	$2,$4

	.align	3
.L486:
	move	$2,$0
.L490:
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
	bnez	$6,.L492
	move	$2,$0

	b	.L505
	nop

	.align	3
.L494:
	daddiu	$4,$4,4
	beqz	$6,.L496
	daddiu	$5,$5,4

.L492:
	lw	$3,0($4)
	lw	$2,0($5)
	beq	$3,$2,.L494
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
	beqzc	$6,.L496
	move	$2,$3
	lw	$3,0($5)
	slt	$4,$2,$3
	bnezc	$4,.L497
	jr	$31
	slt	$2,$3,$2

	.align	3
.L496:
	jr	$31
	move	$2,$0

	.align	3
.L497:
	li	$2,-1			# 0xffffffffffffffff
.L505:
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
	beqz	$6,.L507
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L507:
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
	beq	$4,$5,.L528
	move	$2,$4

	dsll	$3,$6,2
	dsubu	$4,$4,$5
	sltu	$4,$4,$3
	beqz	$4,.L525
	daddiu	$3,$6,-1

	beqz	$6,.L528
	dsll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
	.align	3
.L516:
	daddu	$4,$5,$3
	lw	$6,0($4)
	daddu	$4,$2,$3
	daddiu	$3,$3,-4
	bne	$3,$7,.L516
	sw	$6,0($4)

.L528:
	jrc	$31
	.align	3
.L525:
	move	$7,$2
	beqz	$6,.L528
	li	$8,-1			# 0xffffffffffffffff

	.align	3
.L515:
	lw	$4,0($5)
	daddiu	$3,$3,-1
	daddiu	$7,$7,4
	daddiu	$5,$5,4
	bne	$3,$8,.L515
	sw	$4,-4($7)

	jrc	$31
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
	beqz	$6,.L537
	move	$2,$4

	daddiu	$3,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	move	$6,$4
	.align	3
.L531:
	daddiu	$3,$3,-1
	daddiu	$6,$6,4
	bne	$3,$7,.L531
	sw	$5,-4($6)

.L537:
	jrc	$31
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
	beqz	$2,.L539
	daddu	$2,$4,$6

	beqz	$6,.L553
	daddu	$5,$5,$6

	.align	3
.L541:
	lb	$3,-1($2)
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	bne	$4,$2,.L541
	sb	$3,0($5)

.L553:
	jrc	$31
	.align	3
.L539:
	beq	$4,$5,.L552
	nop

	beqz	$6,.L553
	daddu	$6,$4,$6

	.align	3
.L542:
	lb	$2,0($4)
	daddiu	$4,$4,1
	daddiu	$5,$5,1
	bne	$6,$4,.L542
	sb	$2,-1($5)

.L552:
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
	andi	$2,$2,0xf
	sll	$5,$4,$5
	srl	$4,$4,$2
	or	$2,$5,$4
	jr	$31
	andi	$2,$2,0xffff

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
	andi	$2,$2,0xf
	srl	$5,$4,$5
	sll	$4,$4,$2
	or	$2,$5,$4
	jr	$31
	andi	$2,$2,0xffff

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
	andi	$2,$2,0x7
	sll	$5,$4,$5
	srl	$4,$4,$2
	or	$2,$5,$4
	jr	$31
	andi	$2,$2,0x00ff

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
	andi	$2,$2,0x7
	srl	$5,$4,$5
	sll	$4,$4,$2
	or	$2,$5,$4
	jr	$31
	andi	$2,$2,0x00ff

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
	b	.L583
	li	$6,32			# 0x20

	.align	3
.L587:
	beq	$6,$2,.L586
	nop

.L583:
	srl	$5,$4,$3
	addiu	$2,$3,1
	andi	$5,$5,0x1
	beqz	$5,.L587
	move	$3,$2

	jrc	$31
	.align	3
.L586:
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
	beqz	$4,.L596
	move	$2,$0

	andi	$2,$4,0x1
	bnezc	$2,.L595
	li	$2,1			# 0x1
	.align	3
.L590:
	dsra	$4,$4,1
	andi	$3,$4,0x1
	beqz	$3,.L590
	addiu	$2,$2,1

.L596:
	jrc	$31
.L595:
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
	bc1t	$fcc0,.L600
	ld	$3,%got_page(.LC1)($4)

	lwc1	$f0,%got_ofst(.LC1)($3)
	c.lt.s	$fcc1,$f0,$f12
	bc1f	$fcc1,.L602
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L600:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L602:
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
	bc1t	$fcc0,.L606
	ld	$3,%got_page(.LC3)($4)

	ldc1	$f0,%got_ofst(.LC3)($3)
	c.lt.d	$fcc1,$f0,$f12
	bc1f	$fcc1,.L608
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L606:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L608:
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
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	dmfc1	$5,$f13
	dmfc1	$4,$f12
	ldc1	$f14,%got_ofst(.LC4)($2)
	sd	$17,8($sp)
	sd	$16,0($sp)
	sd	$31,40($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	move	$17,$4
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	move	$16,$5

	bltz	$2,.L612
	ld	$31,40($sp)

	ld	$2,%got_page(.LC5)($28)
	dmtc1	$16,$f13
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	ld	$25,%call16(__gttf2)($28)
	dmtc1	$17,$f12
	.reloc	1f,R_MICROMIPS_JALR,__gttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC5)($2)

	ld	$31,40($sp)
	slt	$2,$0,$2
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	48
	.align	3
.L612:
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

	sdc1	$f2,8($16)
	sdc1	$f0,0($16)
	ld	$31,40($sp)
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
	bc1t	$fcc0,.L636
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f1,$f12
	bc1t	$fcc1,.L636
	lui	$3,%hi(%neg(%gp_rel(ldexpf)))

	daddu	$3,$3,$25
	bltz	$5,.L632
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexpf)))

	ld	$2,%got_page(.LC6)($3)
	b	.L620
	lwc1	$f1,%got_ofst(.LC6)($2)

	.align	3
.L633:
	mul.s	$f1,$f1,$f1
.L620:
	andi	$2,$5,0x1
	beqz	$2,.L634
	srl	$2,$5,31

	mul.s	$f0,$f0,$f1
.L634:
	addu	$5,$2,$5
	sra	$5,$5,1
	bnezc	$5,.L633
.L636:
	jrc	$31
	.align	3
.L632:
	ld	$2,%got_page(.LC7)($3)
	b	.L620
	lwc1	$f1,%got_ofst(.LC7)($2)

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
	bc1t	$fcc0,.L657
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f1,$f12
	bc1t	$fcc1,.L657
	lui	$3,%hi(%neg(%gp_rel(ldexp)))

	daddu	$3,$3,$25
	bltz	$5,.L653
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexp)))

	ld	$2,%got_page(.LC8)($3)
	b	.L641
	ldc1	$f1,%got_ofst(.LC8)($2)

	.align	3
.L654:
	mul.d	$f1,$f1,$f1
.L641:
	andi	$2,$5,0x1
	beqz	$2,.L655
	srl	$2,$5,31

	mul.d	$f0,$f0,$f1
.L655:
	addu	$5,$2,$5
	sra	$5,$5,1
	bnezc	$5,.L654
.L657:
	jrc	$31
	.align	3
.L653:
	ld	$2,%got_page(.LC9)($3)
	b	.L641
	ldc1	$f1,%got_ofst(.LC9)($2)

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
	dmfc1	$5,$f13
	sd	$28,120($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	dmfc1	$4,$f12
	dmtc1	$5,$f15
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$4,$f14
	sd	$fp,128($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	sd	$31,136($sp)
	sd	$23,112($sp)
	sd	$22,104($sp)
	sd	$21,96($sp)
	sd	$20,88($sp)
	sd	$19,80($sp)
	sd	$18,72($sp)
	move	$16,$4
	move	$17,$5
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	move	$fp,$6

	bnez	$2,.L659
	ld	$25,%call16(__addtf3)($28)

	sd	$17,8($sp)
	ldc1	$f13,8($sp)
	sd	$16,0($sp)
	dmtc1	$17,$f15
	ldc1	$f12,0($sp)
	.reloc	1f,R_MICROMIPS_JALR,__addtf3
1:	jalr	$25
	dmtc1	$16,$f14

	sd	$17,24($sp)
	sdc1	$f2,40($sp)
	ldc1	$f15,24($sp)
	ldc1	$f13,40($sp)
	sd	$16,16($sp)
	sdc1	$f0,32($sp)
	ldc1	$f14,16($sp)
	ld	$25,%call16(__netf2)($28)
	.reloc	1f,R_MICROMIPS_JALR,__netf2
1:	jalr	$25
	ldc1	$f12,32($sp)

	beqz	$2,.L675
	ld	$31,136($sp)

	bltz	$fp,.L673
	ld	$2,%got_page(.LC10)($28)

	ld	$21,%got_ofst(.LC10+8)($2)
	b	.L663
	ld	$20,%got_ofst(.LC10)($2)

	.align	3
.L674:
	dmtc1	$21,$f15
	dmtc1	$21,$f13
	dmtc1	$20,$f14
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$20,$f12

	dmfc1	$3,$f0
	dmfc1	$2,$f2
	move	$20,$3
	move	$21,$2
.L663:
	andi	$2,$fp,0x1
	beqz	$2,.L676
	srl	$2,$fp,31

	dmtc1	$17,$f13
	dmtc1	$21,$f15
	ld	$25,%call16(__multf3)($28)
	dmtc1	$16,$f12
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$20,$f14

	dmfc1	$16,$f0
	dmfc1	$17,$f2
	srl	$2,$fp,31
.L676:
	addu	$2,$2,$fp
	sra	$fp,$2,1
	bnez	$fp,.L674
	ld	$25,%call16(__multf3)($28)

.L659:
	ld	$31,136($sp)
.L675:
	dmtc1	$17,$f2
	dmtc1	$16,$f0
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
.L673:
	ld	$2,%got_page(.LC11)($28)
	ld	$21,%got_ofst(.LC11+8)($2)
	b	.L663
	ld	$20,%got_ofst(.LC11)($2)

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
	beqz	$6,.L685
	move	$2,$4

	daddu	$6,$5,$6
	move	$3,$4
	.align	3
.L679:
	lbu	$7,0($3)
	lbu	$8,0($5)
	daddiu	$3,$3,1
	xor	$7,$7,$8
	daddiu	$5,$5,1
	bne	$6,$5,.L679
	sb	$7,-1($3)

.L685:
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
	beqz	$3,.L693
	move	$2,$4

	move	$3,$4
	.align	3
.L688:
	lb	$7,1($3)
	bnez	$7,.L688
	daddiu	$3,$3,1

	beqzc	$6,.L695
	.align	3
.L703:
	lb	$7,0($5)
	beqz	$7,.L702
	sb	$7,0($3)

	daddiu	$6,$6,-1
	daddiu	$5,$5,1
	daddiu	$3,$3,1
.L701:
	bnezc	$6,.L703
.L695:
	sb	$0,0($3)
.L704:
	jrc	$31
	.align	3
.L702:
	bnezc	$6,.L704
	jr	$31
	sb	$0,0($3)

	.align	3
.L693:
	b	.L701
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
	beqz	$5,.L717
	move	$2,$0

	daddu	$3,$4,$2
.L715:
	lb	$3,0($3)
	bnezc	$3,.L708
.L717:
	jrc	$31
	.align	3
.L708:
	daddiu	$2,$2,1
	bne	$5,$2,.L715
	daddu	$3,$4,$2

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
	beqz	$7,.L723
	move	$2,$4

.L719:
	b	.L722
	move	$3,$5

	.align	3
.L721:
	beq	$6,$7,.L727
	daddiu	$3,$3,1

.L722:
	lb	$6,0($3)
	bnezc	$6,.L721
	lb	$7,1($2)
	bnez	$7,.L719
	daddiu	$2,$2,1

.L723:
	move	$2,$0
.L727:
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
.L730:
	lb	$3,0($4)
	bne	$3,$5,.L729
	nop

	move	$2,$4
.L729:
	bnez	$3,.L730
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
	move	$2,$4
	beqz	$8,.L735
	move	$3,$5

	.align	3
.L736:
	lb	$4,1($3)
	bnez	$4,.L736
	daddiu	$3,$3,1

.L735:
	beq	$3,$5,.L762
	dsubu	$10,$3,$5

	b	.L743
	daddiu	$10,$10,-1

	.align	3
.L760:
	beqz	$3,.L759
	daddiu	$2,$2,1

.L743:
	lb	$3,0($2)
	bne	$3,$8,.L760
	nop

	beqzc	$2,.L762
	lbu	$4,0($2)
	beqz	$4,.L746
	move	$3,$2

	daddu	$9,$2,$10
	b	.L740
	move	$6,$5

	.align	3
.L761:
	beq	$3,$9,.L739
	nop

	bne	$7,$4,.L739
	nop

	lbu	$4,1($3)
	daddiu	$6,$6,1
	beqz	$4,.L739
	daddiu	$3,$3,1

.L740:
	lbu	$7,0($6)
	bnezc	$7,.L761
.L739:
	lbu	$3,0($6)
	beq	$3,$4,.L762
	nop

	b	.L743
	daddiu	$2,$2,1

	.align	3
.L759:
	jr	$31
	move	$2,$0

.L762:
	jrc	$31
.L746:
	b	.L739
	move	$6,$5

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmtc1	$0,$f0
	daddiu	$sp,$sp,-16
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L773
	sdc1	$f12,0($sp)

	ldc1	$f1,0($sp)
.L775:
	dmtc1	$0,$f0
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L767
	nop

	c.lt.d	$fcc3,$f13,$f0
	bc1t	$fcc3,.L774
	ld	$3,0($sp)

.L767:
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L773:
	c.lt.d	$fcc1,$f0,$f13
	bc1f	$fcc1,.L775
	ldc1	$f1,0($sp)

	ld	$3,0($sp)
.L774:
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	sd	$2,0($sp)
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	beqzc	$7,.L784
	sltu	$2,$5,$7
	bnez	$2,.L786
	dsubu	$5,$5,$7

	daddu	$11,$4,$5
	sltu	$2,$11,$4
	bnezc	$2,.L786
	b	.L783
	lb	$12,0($6)

	.align	3
.L778:
	sltu	$2,$11,$4
	bnezc	$2,.L786
.L783:
	lb	$3,0($4)
	move	$2,$4
	bne	$3,$12,.L778
	daddiu	$4,$4,1

	daddiu	$3,$7,-1
	beqz	$3,.L802
	daddiu	$5,$6,1

	b	.L779
	move	$8,$4

	.align	3
.L781:
	daddiu	$8,$8,1
	beqz	$3,.L802
	daddiu	$5,$5,1

.L779:
	lbu	$10,0($8)
	lbu	$9,0($5)
	beq	$10,$9,.L781
	daddiu	$3,$3,-1

	daddiu	$3,$3,1
	beqzc	$3,.L801
	bne	$10,$9,.L778
	nop

.L802:
	jrc	$31
	.align	3
.L786:
	jr	$31
	move	$2,$0

	.align	3
.L784:
	jr	$31
	move	$2,$4

.L801:
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
	beqz	$6,.L804
	move	$17,$4

	ld	$25,%call16(memmove)($28)
	.reloc	1f,R_MICROMIPS_JALR,memmove
1:	jalrs	$25
	nop

.L804:
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmtc1	$0,$f0
	lui	$6,%hi(%neg(%gp_rel(frexp)))
	c.lt.d	$fcc0,$f12,$f0
	daddiu	$sp,$sp,-16
	daddu	$6,$6,$25
	daddiu	$6,$6,%lo(%neg(%gp_rel(frexp)))
	bc1t	$fcc0,.L835
	sdc1	$f12,0($sp)

	ld	$2,%got_page(.LC12)($6)
	ldc1	$f1,0($sp)
	ldc1	$f0,%got_ofst(.LC12)($2)
	ld	$4,%got_page(.LC9)($6)
	c.le.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L831
	move	$3,$0

.L836:
	ldc1	$f1,%got_ofst(.LC9)($4)
	move	$2,$0
	.align	3
.L814:
	ldc1	$f2,0($sp)
	addiu	$2,$2,1
	mul.d	$f2,$f2,$f1
	c.le.d	$fcc2,$f0,$f2
	bc1t	$fcc2,.L814
	sdc1	$f2,0($sp)

.L815:
	beqz	$3,.L818
	sw	$2,0($5)

	ld	$3,0($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	sd	$2,0($sp)
.L818:
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L835:
	ld	$3,0($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	sd	$2,0($sp)
	ld	$2,%got_page(.LC12)($6)
	ldc1	$f1,0($sp)
	ldc1	$f0,%got_ofst(.LC12)($2)
	ld	$4,%got_page(.LC9)($6)
	c.le.d	$fcc1,$f0,$f1
	bc1t	$fcc1,.L836
	li	$3,1			# 0x1

.L831:
	ldc1	$f0,%got_ofst(.LC9)($4)
	ldc1	$f1,0($sp)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L832
	nop

	ldc1	$f2,0($sp)
	dmtc1	$0,$f1
	c.eq.d	$fcc4,$f2,$f1
	bc1t	$fcc4,.L815
	move	$2,$0

	.align	3
.L817:
	ldc1	$f1,0($sp)
	addiu	$2,$2,-1
	add.d	$f1,$f1,$f1
	c.lt.d	$fcc5,$f1,$f0
	bc1f	$fcc5,.L815
	sdc1	$f1,0($sp)

	ldc1	$f1,0($sp)
	addiu	$2,$2,-1
	add.d	$f1,$f1,$f1
	c.lt.d	$fcc5,$f1,$f0
	bc1t	$fcc5,.L817
	sdc1	$f1,0($sp)

	b	.L815
	nop

	.align	3
.L832:
	b	.L815
	move	$2,$0

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
	beqz	$4,.L844
	move	$2,$0

	.align	3
.L839:
	andi	$3,$4,0x1
	dsubu	$3,$0,$3
	and	$3,$3,$5
	dsrl	$4,$4,1
	daddu	$2,$2,$3
	bnez	$4,.L839
	dsll	$5,$5,1

.L844:
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
	beqz	$2,.L861
	li	$3,1			# 0x1

	b	.L846
	li	$2,32			# 0x20

	.align	3
.L848:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beqz	$7,.L847
	sll	$3,$3,1

	addiu	$2,$2,-1
	beqzc	$2,.L855
.L846:
	bgez	$5,.L848
	nop

.L847:
	beqz	$3,.L863
	move	$2,$0

.L861:
	move	$2,$0
	.align	3
.L851:
	sltu	$7,$4,$5
	bnezc	$7,.L850
	or	$2,$2,$3
	subu	$4,$4,$5
.L850:
	dext	$3,$3,1,31
	bnez	$3,.L851
	dext	$5,$5,1,31

	jr	$31
	movn	$2,$4,$6

	.align	3
.L855:
	move	$2,$0
	.align	3
.L863:
	jr	$31
	movn	$2,$4,$6

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
	seb	$3,$3
	beq	$4,$3,.L866
	xor	$2,$4,$3

	sll	$2,$2,8
	clz	$2,$2
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L866:
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
	beq	$4,$3,.L870
	xor	$2,$4,$3

	dclz	$2,$2
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L870:
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
	beqz	$4,.L879
	move	$2,$0

	.align	3
.L874:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	dext	$4,$4,1,31
	addu	$2,$3,$2
	bnez	$4,.L874
	sll	$5,$5,1

.L879:
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
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$3,$4,$5
	and	$2,$6,$2
	bnez	$3,.L881
	dext	$9,$6,3,29

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beqzc	$3,.L895
.L881:
	beqz	$9,.L884
	move	$3,$5

	dsll	$9,$9,3
	move	$7,$4
	daddu	$9,$9,$5
	.align	3
.L885:
	ld	$8,0($3)
	daddiu	$3,$3,8
	sd	$8,0($7)
	bne	$3,$9,.L885
	daddiu	$7,$7,8

.L884:
	sltu	$3,$2,$6
	beqz	$3,.L898
	dext	$2,$2,0,32

	.align	3
.L886:
	daddu	$3,$5,$2
	daddu	$7,$4,$2
	daddiu	$2,$2,1
	lb	$8,0($3)
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L886
	sb	$8,0($7)

.L898:
	jrc	$31
	.align	3
.L895:
	beqz	$6,.L898
	addiu	$3,$6,-1

	dext	$3,$3,0,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L887:
	lb	$6,0($2)
	move	$3,$2
	sb	$6,0($4)
	daddiu	$2,$2,-1
	bne	$5,$3,.L887
	daddiu	$4,$4,-1

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
	bnez	$2,.L900
	dext	$8,$6,1,31

	dext	$2,$6,0,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	beqzc	$2,.L915
.L900:
	beqz	$8,.L903
	move	$2,$5

	dsll	$8,$8,1
	move	$3,$4
	daddu	$8,$8,$5
	.align	3
.L904:
	lh	$7,0($2)
	daddiu	$2,$2,2
	sh	$7,0($3)
	bne	$2,$8,.L904
	daddiu	$3,$3,2

.L903:
	andi	$2,$6,0x1
	beqz	$2,.L918
	addiu	$6,$6,-1

	dext	$6,$6,0,32
	daddu	$5,$5,$6
	lb	$3,0($5)
	daddu	$2,$4,$6
	jr	$31
	sb	$3,0($2)

	.align	3
.L915:
	beqz	$6,.L918
	addiu	$2,$6,-1

	dext	$2,$2,0,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	.align	3
.L905:
	lb	$6,0($3)
	move	$4,$3
	sb	$6,0($2)
	daddiu	$3,$3,-1
	bne	$5,$4,.L905
	daddiu	$2,$2,-1

.L918:
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
	li	$2,-4			# 0xfffffffffffffffc
	sltu	$3,$4,$5
	and	$2,$6,$2
	bnez	$3,.L920
	dext	$9,$6,2,30

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beqzc	$3,.L934
.L920:
	beqz	$9,.L923
	move	$3,$5

	dsll	$9,$9,2
	move	$7,$4
	daddu	$9,$9,$5
	.align	3
.L924:
	lw	$8,0($3)
	daddiu	$3,$3,4
	sw	$8,0($7)
	bne	$3,$9,.L924
	daddiu	$7,$7,4

.L923:
	sltu	$3,$2,$6
	beqz	$3,.L937
	dext	$2,$2,0,32

	.align	3
.L925:
	daddu	$3,$5,$2
	daddu	$7,$4,$2
	daddiu	$2,$2,1
	lb	$8,0($3)
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L925
	sb	$8,0($7)

.L937:
	jrc	$31
	.align	3
.L934:
	beqz	$6,.L937
	addiu	$3,$6,-1

	dext	$3,$3,0,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L926:
	lb	$6,0($2)
	move	$3,$2
	sb	$6,0($4)
	daddiu	$2,$2,-1
	bne	$5,$3,.L926
	daddiu	$4,$4,-1

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
	bltz	$4,.L946
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.align	3
.L946:
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	jr	$31
	add.d	$f0,$f0,$f0

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
	bltz	$4,.L950
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.align	3
.L950:
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	jr	$31
	add.s	$f0,$f0,$f0

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
	move	$2,$0
	li	$5,15			# 0xf
	li	$6,16			# 0x10
	subu	$3,$5,$2
	.align	3
.L959:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bnezc	$3,.L960
	addiu	$2,$2,1
	bne	$2,$6,.L959
	subu	$3,$5,$2

.L960:
	jrc	$31
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
	move	$2,$0
	li	$5,16			# 0x10
	sra	$3,$4,$2
	.align	3
.L966:
	andi	$3,$3,0x1
	bnezc	$3,.L967
	addiu	$2,$2,1
	bne	$2,$5,.L966
	sra	$3,$4,$2

.L967:
	jrc	$31
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
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	c.le.s	$fcc0,$f0,$f12
	bc1t	$fcc0,.L975
	li	$3,32768			# 0x8000

	trunc.l.s $f0,$f12
	jr	$31
	dmfc1	$2,$f0

	.align	3
.L975:
	sub.s	$f12,$f12,$f0
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	jr	$31
	daddu	$2,$2,$3

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
	move	$2,$0
	move	$3,$0
	li	$6,16			# 0x10
	.align	3
.L977:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,.L977
	addu	$2,$5,$2

	jr	$31
	andi	$2,$2,0x1

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
	move	$5,$0
	move	$3,$0
	li	$6,16			# 0x10
	.align	3
.L981:
	sra	$2,$4,$3
	andi	$2,$2,0x1
	addu	$2,$2,$5
	addiu	$3,$3,1
	bne	$3,$6,.L981
	move	$5,$2

	jrc	$31
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
	beqz	$4,.L991
	move	$2,$0

	.align	3
.L986:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	dext	$4,$4,1,31
	addu	$2,$3,$2
	bnez	$4,.L986
	sll	$5,$5,1

.L991:
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
	beqz	$4,.L1000
	move	$2,$0

	beqzc	$5,.L999
	.align	3
.L994:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	dext	$5,$5,1,31
	addu	$2,$3,$2
	bnez	$5,.L994
	sll	$4,$4,1

.L1000:
	jrc	$31
.L999:
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
	beqz	$2,.L1017
	li	$3,1			# 0x1

	b	.L1002
	li	$2,32			# 0x20

	.align	3
.L1004:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beqz	$7,.L1003
	sll	$3,$3,1

	addiu	$2,$2,-1
	beqzc	$2,.L1011
.L1002:
	bgez	$5,.L1004
	nop

.L1003:
	beqz	$3,.L1019
	move	$2,$0

.L1017:
	move	$2,$0
	.align	3
.L1007:
	sltu	$7,$4,$5
	bnezc	$7,.L1006
	or	$2,$2,$3
	subu	$4,$4,$5
.L1006:
	dext	$3,$3,1,31
	bnez	$3,.L1007
	dext	$5,$5,1,31

	jr	$31
	movn	$2,$4,$6

	.align	3
.L1011:
	move	$2,$0
	.align	3
.L1019:
	jr	$31
	movn	$2,$4,$6

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
	bc1t	$fcc0,.L1023
	nop

	c.lt.s	$fcc1,$f13,$f12
	bc1f	$fcc1,.L1025
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L1025:
	jr	$31
	move	$2,$0

	.align	3
.L1023:
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
	bc1t	$fcc0,.L1031
	nop

	c.lt.d	$fcc1,$f13,$f12
	bc1f	$fcc1,.L1033
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L1033:
	jr	$31
	move	$2,$0

	.align	3
.L1031:
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
	bltz	$5,.L1055
	nop

	move	$7,$0
.L1041:
	beqzc	$5,.L1046
	li	$6,32			# 0x20
	b	.L1043
	move	$2,$0

	.align	3
.L1056:
	addiu	$6,$6,-1
	andi	$6,$6,0x00ff
	beqzc	$6,.L1042
.L1043:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	dsra	$5,$5,1
	addu	$2,$3,$2
	bnez	$5,.L1056
	sll	$4,$4,1

.L1042:
	beqzc	$7,.L1057
	subu	$2,$0,$2
.L1057:
	jrc	$31
	.align	3
.L1055:
	subu	$5,$0,$5
	b	.L1041
	li	$7,1			# 0x1

.L1046:
	b	.L1042
	move	$2,$0

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
	bltz	$4,.L1081
	nop

	move	$7,$0
.L1059:
	bgez	$5,.L1060
	nop

	dsubu	$5,$0,$5
	xori	$7,$7,0x1
.L1060:
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$2,$5,$4
	beqz	$2,.L1079
	li	$3,1			# 0x1

	b	.L1061
	li	$2,32			# 0x20

	.align	3
.L1063:
	sll	$5,$5,1
	sltu	$6,$5,$4
	beqz	$6,.L1062
	sll	$3,$3,1

	addiu	$2,$2,-1
	beqzc	$2,.L1071
.L1061:
	bgez	$5,.L1063
	nop

.L1062:
	beqz	$3,.L1082
	move	$2,$0

.L1079:
	move	$2,$0
	.align	3
.L1066:
	sltu	$6,$4,$5
	bnezc	$6,.L1065
	subu	$4,$4,$5
	or	$2,$2,$3
.L1065:
	dext	$3,$3,1,31
	bnez	$3,.L1066
	dext	$5,$5,1,31

.L1064:
	.align	3
.L1082:
	beqz	$7,.L1083
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L1083:
	jrc	$31
	.align	3
.L1081:
	dsubu	$4,$0,$4
	b	.L1059
	li	$7,1			# 0x1

	.align	3
.L1071:
	b	.L1064
	move	$2,$0

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
	bltz	$4,.L1108
	nop

	move	$7,$0
.L1085:
	bgez	$5,.L1086
	sll	$2,$4,0

	dsubu	$5,$0,$5
.L1086:
	sll	$3,$5,0
	sltu	$4,$3,$2
	beqz	$4,.L1101
	li	$5,1			# 0x1

	b	.L1087
	li	$4,32			# 0x20

	.align	3
.L1089:
	sll	$3,$3,1
	sltu	$6,$3,$2
	beqz	$6,.L1107
	sll	$5,$5,1

	addiu	$4,$4,-1
	beqzc	$4,.L1090
.L1087:
	bgez	$3,.L1089
	nop

	beqzc	$5,.L1090
	.align	3
.L1101:
	sltu	$4,$2,$3
	.align	3
.L1109:
	bnezc	$4,.L1091
	subu	$2,$2,$3
.L1091:
	dext	$5,$5,1,31
	dext	$3,$3,1,31
.L1107:
	bnez	$5,.L1109
	sltu	$4,$2,$3

.L1090:
	beqz	$7,.L1110
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L1110:
	jrc	$31
	.align	3
.L1108:
	dsubu	$4,$0,$4
	b	.L1085
	li	$7,1			# 0x1

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
	sltu	$3,$5,$4
	beqz	$3,.L1129
	move	$2,$4

	li	$4,16			# 0x10
	li	$3,1			# 0x1
	seh	$7,$5
	.align	3
.L1130:
	bltz	$7,.L1113
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	sltu	$7,$5,$2
	beqz	$7,.L1113
	andi	$3,$3,0xffff

	addiu	$4,$4,-1
	bnez	$4,.L1130
	seh	$7,$5

	move	$4,$0
.L1131:
	jr	$31
	movz	$2,$4,$6

	.align	3
.L1113:
	beqz	$3,.L1131
	move	$4,$0

.L1127:
	move	$4,$0
	.align	3
.L1117:
	sltu	$7,$2,$5
	bnezc	$7,.L1116
	subu	$2,$2,$5
	or	$4,$4,$3
	andi	$2,$2,0xffff
	andi	$4,$4,0xffff
.L1116:
	dsrl	$3,$3,1
	bnez	$3,.L1117
	dsrl	$5,$5,1

	jr	$31
	movz	$2,$4,$6

.L1129:
	b	.L1127
	li	$3,1			# 0x1

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
	sltu	$3,$5,$4
	beqz	$3,.L1150
	move	$2,$4

	li	$3,1			# 0x1
	li	$4,64			# 0x40
	b	.L1133
	dsll	$8,$3,31

	.align	3
.L1135:
	dsll	$5,$5,1
	sltu	$7,$5,$2
	beqz	$7,.L1134
	dsll	$3,$3,1

	addiu	$4,$4,-1
	beqz	$4,.L1151
	move	$7,$0

.L1133:
	and	$7,$5,$8
	beqzc	$7,.L1135
.L1134:
	beqz	$3,.L1142
	move	$7,$0

.L1148:
	move	$7,$0
	.align	3
.L1138:
	sltu	$4,$2,$5
	bnezc	$4,.L1137
	dsubu	$2,$2,$5
	or	$7,$7,$3
.L1137:
	dsrl	$3,$3,1
	bnez	$3,.L1138
	dsrl	$5,$5,1

	jr	$31
	movz	$2,$7,$6

	.align	3
.L1142:
	.align	3
.L1151:
	jr	$31
	movz	$2,$7,$6

.L1150:
	b	.L1148
	li	$3,1			# 0x1

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
	beqz	$2,.L1153
	move	$2,$0

	sll	$4,$4,0
	sll	$3,$4,$5
	move	$4,$0
	dins	$2,$4,0,32
	jr	$31
	dins	$2,$3,32,32

	.align	3
.L1153:
	beqz	$5,.L1156
	subu	$3,$0,$5

	sll	$2,$4,0
	dsra	$4,$4,32
	sll	$4,$4,$5
	srl	$3,$2,$3
	or	$3,$3,$4
	sll	$4,$2,$5
	move	$2,$0
	dins	$2,$4,0,32
	jr	$31
	dins	$2,$3,32,32

	.align	3
.L1156:
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
	beqz	$2,.L1159
	dsll	$2,$5,$6

	move	$5,$0
	jr	$31
	move	$3,$5

	.align	3
.L1159:
	beqzc	$6,.L1162
	subu	$3,$0,$6
	dsrl	$3,$5,$3
	dsll	$2,$4,$6
	dsll	$5,$5,$6
	or	$2,$2,$3
	jr	$31
	move	$3,$5

	.align	3
.L1162:
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
	beqz	$2,.L1165
	move	$2,$0

	dsra	$4,$4,32
	sra	$3,$4,31
	sra	$4,$4,$5
	dins	$2,$3,32,32
	jr	$31
	dins	$2,$4,0,32

	.align	3
.L1165:
	beqz	$5,.L1168
	dsra	$3,$4,32

	subu	$2,$0,$5
	sll	$4,$4,0
	sll	$2,$3,$2
	srl	$4,$4,$5
	or	$4,$4,$2
	sra	$3,$3,$5
	move	$2,$0
	dins	$2,$3,32,32
	jr	$31
	dins	$2,$4,0,32

	.align	3
.L1168:
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
	beqz	$2,.L1171
	dsra	$2,$4,63

	dsra	$5,$4,$6
	jr	$31
	move	$3,$5

	.align	3
.L1171:
	beqzc	$6,.L1174
	subu	$3,$0,$6
	dsll	$3,$4,$3
	dsrl	$5,$5,$6
	or	$5,$5,$3
	dsra	$2,$4,$6
	jr	$31
	move	$3,$5

	.align	3
.L1174:
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
	sltu	$7,$4,$7
	dsll	$7,$7,4
	li	$2,16			# 0x10
	subu	$2,$2,$7
	srl	$3,$4,$2
	andi	$6,$3,0xff00
	sltu	$6,$6,1
	dsll	$6,$6,3
	li	$2,8			# 0x8
	subu	$2,$2,$6
	srl	$3,$3,$2
	andi	$5,$3,0xf0
	sltu	$5,$5,1
	dsll	$5,$5,2
	li	$2,4			# 0x4
	subu	$2,$2,$5
	srl	$3,$3,$2
	andi	$4,$3,0xc
	sltu	$4,$4,1
	dsll	$4,$4,1
	li	$2,2			# 0x2
	subu	$8,$2,$4
	srl	$3,$3,$8
	daddu	$6,$6,$7
	daddu	$5,$5,$6
	subu	$2,$2,$3
	andi	$3,$3,0x2
	movn	$2,$0,$3
	addu	$4,$4,$5
	jr	$31
	addu	$2,$2,$4

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
	sltu	$2,$4,1
	daddiu	$3,$2,-1
	and	$3,$3,$4
	movn	$5,$0,$4
	or	$3,$3,$5
	dclz	$3,$3
	dsll	$2,$2,6
	jr	$31
	daddu	$2,$2,$3

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
	bnezc	$6,.L1188
	slt	$2,$3,$2
	bnez	$2,.L1189
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$4,$5
	bnez	$2,.L1188
	sltu	$4,$5,$4

	bnezc	$4,.L1189
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1188:
	jr	$31
	move	$2,$0

	.align	3
.L1189:
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
	bnezc	$6,.L1195
	slt	$2,$3,$2
	bnez	$2,.L1196
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$4,$5
	bnez	$2,.L1195
	sltu	$4,$5,$4

	bnezc	$4,.L1196
	li	$2,1			# 0x1
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L1195:
	move	$2,$0
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L1196:
	li	$2,2			# 0x2
	jr	$31
	addiu	$2,$2,-1

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
	slt	$2,$4,$6
	bnez	$2,.L1202
	slt	$4,$6,$4

	bnezc	$4,.L1203
	sltu	$2,$5,$7
	bnez	$2,.L1202
	sltu	$5,$7,$5

	bnezc	$5,.L1203
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1202:
	jr	$31
	move	$2,$0

	.align	3
.L1203:
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
	andi	$2,$3,0xff
	sltu	$2,$2,1
	sll	$4,$2,3
	srl	$3,$3,$4
	andi	$5,$3,0xf
	sltu	$5,$5,1
	sll	$4,$5,2
	srl	$3,$3,$4
	andi	$4,$3,0x3
	sltu	$4,$4,1
	sll	$7,$4,1
	srl	$3,$3,$7
	andi	$3,$3,0x3
	dsll	$7,$6,4
	dsll	$2,$2,3
	daddu	$2,$2,$7
	nor	$6,$0,$3
	dsll	$5,$5,2
	daddu	$5,$5,$2
	andi	$6,$6,0x1
	li	$2,2			# 0x2
	srl	$3,$3,1
	subu	$3,$2,$3
	dsll	$4,$4,1
	subu	$2,$0,$6
	and	$2,$2,$3
	addu	$4,$4,$5
	jr	$31
	addu	$2,$2,$4

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
	sltu	$3,$5,1
	daddiu	$2,$3,-1
	and	$2,$2,$5
	movn	$4,$0,$5
	or	$4,$4,$2
	dsubu	$2,$0,$4
	and	$4,$4,$2
	dclz	$4,$4
	li	$2,63			# 0x3f
	subu	$2,$2,$4
	sll	$3,$3,6
	jr	$31
	addu	$2,$3,$2

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
	bnez	$5,.L1210
	dsubu	$2,$0,$5

	bnezc	$4,.L1214
	jr	$31
	move	$2,$0

	.align	3
.L1210:
	and	$5,$5,$2
	dclz	$5,$5
	li	$2,63			# 0x3f
	subu	$2,$2,$5
	jr	$31
	addiu	$2,$2,1

	.align	3
.L1214:
	dsubu	$2,$0,$4
	and	$4,$4,$2
	dclz	$4,$4
	li	$2,63			# 0x3f
	subu	$2,$2,$4
	jr	$31
	addiu	$2,$2,65

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
	beqz	$2,.L1216
	move	$2,$0

	dsra	$4,$4,32
	srl	$3,$4,$5
	move	$4,$0
	dins	$2,$4,32,32
	jr	$31
	dins	$2,$3,0,32

	.align	3
.L1216:
	beqz	$5,.L1219
	subu	$3,$0,$5

	dsra	$2,$4,32
	sll	$4,$4,0
	srl	$4,$4,$5
	sll	$3,$2,$3
	or	$3,$3,$4
	srl	$4,$2,$5
	move	$2,$0
	dins	$2,$4,32,32
	jr	$31
	dins	$2,$3,0,32

	.align	3
.L1219:
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
	beqzc	$2,.L1222
	dsrl	$5,$4,$6
	move	$4,$0
.L1225:
	move	$2,$4
	jr	$31
	move	$3,$5

	.align	3
.L1222:
	beqzc	$6,.L1225
	subu	$2,$0,$6
	dsll	$2,$4,$2
	dsrl	$5,$5,$6
	or	$5,$5,$2
	dsrl	$4,$4,$6
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
	andi	$3,$3,0xffff
	addu	$7,$9,$8
	mul	$9,$6,$5
	sll	$8,$7,16
	addu	$3,$3,$8
	dext	$8,$3,16,16
	addu	$6,$9,$8
	mul	$8,$4,$5
	srl	$7,$7,16
	sll	$5,$6,16
	andi	$3,$3,0xffff
	addu	$4,$8,$7
	addu	$3,$3,$5
	srl	$6,$6,16
	move	$2,$0
	dins	$2,$3,0,32
	addu	$4,$4,$6
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
	andi	$3,$3,0xffff
	addu	$7,$11,$10
	mul	$11,$6,$9
	sll	$10,$7,16
	addu	$3,$3,$10
	dext	$10,$3,16,16
	addu	$6,$11,$10
	mul	$10,$8,$9
	srl	$7,$7,16
	andi	$3,$3,0xffff
	move	$2,$0
	addu	$8,$10,$7
	sll	$7,$6,16
	addu	$3,$3,$7
	srl	$6,$6,16
	addu	$8,$8,$6
	dins	$2,$3,0,32
	dins	$2,$8,32,32
	dsra	$6,$2,32
	sll	$3,$4,0
	dsra	$7,$5,32
	mtlo	$6
	madd	$3,$7
	sll	$5,$5,0
	dsra	$4,$4,32
	madd	$5,$4
	mflo	$5
	jr	$31
	dins	$2,$5,32,32

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
	sll	$2,$4,0
	sll	$3,$5,0
	multu	$2,$3
	dsra	$4,$4,32
	mfhi	$7
	mflo	$6
	multu	$3,$4
	dins	$6,$7,32,32
	dsra	$5,$5,32
	mfhi	$7
	mflo	$3
	multu	$2,$5
	dins	$3,$7,32,32
	dsrl	$7,$6,32
	daddu	$3,$3,$7
	mflo	$2
	mfhi	$7
	multu	$4,$5
	dins	$2,$7,32,32
	mfhi	$5
	dext	$7,$3,0,32
	mflo	$4
	daddu	$2,$2,$7
	dins	$4,$5,32,32
	dext	$6,$6,0,32
	dsll	$5,$2,32
	dsrl	$3,$3,32
	daddu	$3,$3,$4
	daddu	$6,$6,$5
	dsrl	$2,$2,32
	daddu	$2,$3,$2
	jr	$31
	move	$3,$6

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
	dmult	$5,$6
	sll	$8,$5,0
	sll	$3,$7,0
	dsra	$5,$5,32
	mflo	$9
	multu	$8,$3
	mfhi	$2
	mflo	$6
	dmult	$7,$4
	dins	$6,$2,32,32
	dsra	$7,$7,32
	mflo	$2
	multu	$3,$5
	mfhi	$4
	mflo	$3
	multu	$8,$7
	dins	$3,$4,32,32
	dsrl	$4,$6,32
	daddu	$3,$3,$4
	mflo	$8
	mfhi	$4
	multu	$5,$7
	dins	$8,$4,32,32
	mflo	$5
	mfhi	$7
	dext	$4,$3,0,32
	dins	$5,$7,32,32
	daddu	$8,$8,$4
	dsrl	$3,$3,32
	dsrl	$4,$8,32
	daddu	$3,$3,$5
	daddu	$3,$3,$4
	dsll	$8,$8,32
	dext	$6,$6,0,32
	daddu	$9,$9,$3
	daddu	$6,$6,$8
	daddu	$2,$9,$2
	jr	$31
	move	$3,$6

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
	sltu	$2,$0,$5
	dsubu	$4,$0,$4
	dsubu	$5,$0,$5
	dsubu	$2,$4,$2
	jr	$31
	move	$3,$5

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
	dext	$3,$2,8,24
	xor	$2,$2,$3
	dext	$3,$2,4,28
	xor	$2,$2,$3
	andi	$2,$2,0xf
	li	$3,27030			# 0x6996
	sra	$2,$3,$2
	jr	$31
	andi	$2,$2,0x1

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
	xor	$5,$5,$4
	dsra	$2,$5,32
	sll	$5,$5,0
	xor	$2,$2,$5
	dext	$3,$2,16,16
	xor	$2,$2,$3
	dext	$3,$2,8,24
	xor	$2,$2,$3
	dext	$3,$2,4,28
	xor	$2,$2,$3
	andi	$2,$2,0xf
	li	$3,27030			# 0x6996
	sra	$2,$3,$2
	jr	$31
	andi	$2,$2,0x1

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
	dext	$2,$4,8,24
	xor	$4,$4,$2
	dext	$2,$4,4,28
	xor	$4,$4,$2
	andi	$4,$4,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$4
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
	daddiu	$2,$2,21845
	dsll	$2,$2,16
	daddiu	$3,$2,21845
	li	$2,858980352			# 0x33330000
	daddiu	$2,$2,13107
	dsll	$3,$3,16
	dsrl	$5,$4,1
	daddiu	$3,$3,21845
	dsll	$2,$2,16
	and	$3,$5,$3
	daddiu	$2,$2,13107
	dsubu	$4,$4,$3
	dsll	$2,$2,16
	daddiu	$2,$2,13107
	dsrl	$5,$4,2
	li	$3,252641280			# 0xf0f0000
	and	$5,$5,$2
	and	$4,$4,$2
	daddiu	$2,$3,3855
	dsll	$2,$2,16
	daddu	$4,$5,$4
	daddiu	$2,$2,3855
	dsrl	$3,$4,4
	dsll	$2,$2,16
	daddu	$3,$3,$4
	daddiu	$2,$2,3855
	and	$2,$3,$2
	dext	$3,$2,32,32
	sll	$2,$2,0
	addu	$2,$3,$2
	dext	$3,$2,16,16
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	jr	$31
	andi	$2,$2,0x7f

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
	srl	$2,$4,1
	addiu	$3,$3,21845
	and	$2,$2,$3
	subu	$4,$4,$2
	li	$2,858980352			# 0x33330000
	addiu	$2,$2,13107
	srl	$3,$4,2
	and	$3,$3,$2
	and	$2,$4,$2
	addu	$2,$2,$3
	srl	$3,$2,4
	addu	$2,$3,$2
	li	$3,252641280			# 0xf0f0000
	addiu	$3,$3,3855
	and	$2,$2,$3
	dext	$3,$2,16,13
	addu	$2,$2,$3
	srl	$3,$2,8
	addu	$2,$2,$3
	jr	$31
	andi	$2,$2,0x3f

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
	li	$2,1431633920			# 0x55550000
	daddiu	$2,$2,21845
	dsll	$3,$2,16
	daddiu	$3,$3,21845
	dsll	$6,$4,63
	dsrl	$2,$5,1
	dsll	$3,$3,16
	daddiu	$3,$3,21845
	or	$2,$2,$6
	dsrl	$6,$4,1
	and	$6,$6,$3
	and	$2,$2,$3
	li	$3,858980352			# 0x33330000
	dsubu	$2,$5,$2
	daddiu	$3,$3,13107
	sltu	$5,$5,$2
	dsubu	$4,$4,$6
	dsll	$3,$3,16
	dsubu	$4,$4,$5
	daddiu	$3,$3,13107
	dsll	$6,$4,62
	dsrl	$5,$2,2
	dsll	$3,$3,16
	daddiu	$3,$3,13107
	or	$5,$5,$6
	and	$5,$5,$3
	dsrl	$6,$4,2
	and	$2,$2,$3
	daddu	$2,$5,$2
	and	$6,$6,$3
	and	$4,$4,$3
	daddu	$3,$6,$4
	sltu	$5,$2,$5
	daddu	$5,$5,$3
	li	$4,252641280			# 0xf0f0000
	dsll	$6,$5,60
	dsrl	$3,$2,4
	daddiu	$4,$4,3855
	or	$3,$3,$6
	dsll	$4,$4,16
	daddu	$2,$3,$2
	dsrl	$6,$5,4
	daddiu	$4,$4,3855
	sltu	$3,$2,$3
	daddu	$5,$6,$5
	dsll	$4,$4,16
	daddiu	$4,$4,3855
	daddu	$3,$3,$5
	and	$2,$2,$4
	and	$3,$3,$4
	daddu	$3,$3,$2
	dsra	$2,$3,32
	sll	$3,$3,0
	addu	$2,$2,$3
	dext	$3,$2,16,16
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	jr	$31
	andi	$2,$2,0x00ff

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
	lui	$6,%hi(%neg(%gp_rel(__powidf2)))
	daddu	$6,$6,$25
	daddiu	$6,$6,%lo(%neg(%gp_rel(__powidf2)))
	ld	$4,%got_page(.LC12)($6)
	move	$2,$5
	b	.L1254
	ldc1	$f0,%got_ofst(.LC12)($4)

	.align	3
.L1260:
	mul.d	$f12,$f12,$f12
.L1254:
	andi	$3,$2,0x1
	beqz	$3,.L1262
	srl	$3,$2,31

	mul.d	$f0,$f0,$f12
.L1262:
	addu	$2,$3,$2
	sra	$2,$2,1
	bnezc	$2,.L1260
	bltz	$5,.L1261
	ldc1	$f1,%got_ofst(.LC12)($4)

	jrc	$31
	.align	3
.L1261:
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
	lui	$6,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$6,$6,$25
	daddiu	$6,$6,%lo(%neg(%gp_rel(__powisf2)))
	ld	$4,%got_page(.LC14)($6)
	move	$2,$5
	b	.L1268
	lwc1	$f0,%got_ofst(.LC14)($4)

	.align	3
.L1274:
	mul.s	$f12,$f12,$f12
.L1268:
	andi	$3,$2,0x1
	beqz	$3,.L1276
	srl	$3,$2,31

	mul.s	$f0,$f0,$f12
.L1276:
	addu	$2,$3,$2
	sra	$2,$2,1
	bnezc	$2,.L1274
	bltz	$5,.L1275
	lwc1	$f1,%got_ofst(.LC14)($4)

	jrc	$31
	.align	3
.L1275:
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
	bnezc	$6,.L1283
	sltu	$2,$3,$2
	bnez	$2,.L1284
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$4,$5
	bnez	$2,.L1283
	sltu	$4,$5,$4

	bnezc	$4,.L1284
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1283:
	jr	$31
	move	$2,$0

	.align	3
.L1284:
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
	bnezc	$6,.L1290
	sltu	$2,$3,$2
	bnez	$2,.L1291
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$4,$5
	bnez	$2,.L1290
	sltu	$4,$5,$4

	bnezc	$4,.L1291
	li	$2,1			# 0x1
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L1290:
	move	$2,$0
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L1291:
	li	$2,2			# 0x2
	jr	$31
	addiu	$2,$2,-1

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
	sltu	$2,$4,$6
	bnez	$2,.L1297
	sltu	$4,$6,$4

	bnezc	$4,.L1298
	sltu	$2,$5,$7
	bnez	$2,.L1297
	sltu	$5,$7,$5

	bnezc	$5,.L1298
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1297:
	jr	$31
	move	$2,$0

	.align	3
.L1298:
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
	.word	-1048577
	.word	-1
	.align	3
.LC3:
	.word	2146435071
	.word	-1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC4:
	.word	-65537
	.word	-1
	.word	-1
	.word	-1
	.align	4
.LC5:
	.word	2147418111
	.word	-1
	.word	-1
	.word	-1
	.LC6 = .LC10
	.section	.rodata.cst4
	.align	2
.LC7:
	.word	1056964608
	.LC8 = .LC10
	.section	.rodata.cst8
	.align	3
.LC9:
	.word	1071644672
	.word	0
	.section	.rodata.cst16
	.align	4
.LC10:
	.word	1073741824
	.word	0
	.word	0
	.word	0
	.align	4
.LC11:
	.word	1073610752
	.word	0
	.word	0
	.word	0
	.section	.rodata.cst8
	.align	3
.LC12:
	.word	1072693248
	.word	0
	.section	.rodata.cst4
	.align	2
.LC13:
	.word	1191182336
	.align	2
.LC14:
	.word	1065353216
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
