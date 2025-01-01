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
.L26:
	daddiu	$5,$5,1
	beqz	$7,.L25
	daddiu	$4,$4,1

.L23:
	lbu	$2,0($5)
	daddiu	$7,$7,-1
	bne	$2,$6,.L26
	sb	$2,0($4)

	jr	$31
	daddiu	$2,$4,1

	.align	3
.L25:
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
	bnez	$6,.L36
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L38:
	beqz	$6,.L39
	daddiu	$4,$4,1

.L36:
	lbu	$2,0($4)
	bne	$2,$5,.L38
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L39:
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
	bnez	$6,.L45
	move	$2,$0

	b	.L54
	nop

	.align	3
.L47:
	daddiu	$4,$4,1
	beqz	$6,.L49
	daddiu	$5,$5,1

.L45:
	lbu	$2,0($4)
	lbu	$3,0($5)
	beq	$2,$3,.L47
	daddiu	$6,$6,-1

	jr	$31
	subu	$2,$2,$3

	.align	3
.L49:
	move	$2,$0
.L54:
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
	beqz	$6,.L56
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalrs	$25
	nop

.L56:
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
	b	.L62
	daddiu	$4,$4,-1

	.align	3
.L64:
	lbu	$3,0($2)
	beq	$3,$5,.L66
	daddiu	$6,$6,-1

.L62:
	bne	$6,$4,.L64
	move	$2,$6

	move	$2,$0
.L66:
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
	beqz	$6,.L70
	move	$16,$4

	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MICROMIPS_JALR,memset
1:	jalrs	$25
	andi	$5,$5,0x00ff

.L70:
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
	beqz	$3,.L80
	sb	$3,0($4)

	.align	3
.L74:
	lb	$3,1($5)
	daddiu	$2,$2,1
	daddiu	$5,$5,1
	bnez	$3,.L74
	sb	$3,0($2)

.L80:
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
	bnez	$3,.L82
	andi	$5,$5,0x00ff

.L91:
	jrc	$31
	.align	3
.L84:
	lb	$3,1($2)
	beqz	$3,.L91
	daddiu	$2,$2,1

.L82:
	andi	$3,$3,0x00ff
	bne	$3,$5,.L84
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
	b	.L94
	move	$2,$4

	.align	3
.L98:
	beqz	$3,.L97
	daddiu	$2,$2,1

.L94:
	lb	$3,0($2)
	bne	$3,$5,.L98
	nop

	jrc	$31
	.align	3
.L97:
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
	beq	$3,$2,.L108
	daddiu	$4,$4,1

	daddiu	$4,$4,-1
	b	.L107
	andi	$3,$3,0x00ff

	.align	3
.L102:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,.L106
	daddiu	$4,$4,1

.L108:
	bnez	$3,.L102
	daddiu	$5,$5,1

	andi	$2,$2,0x00ff
	jr	$31
	subu	$2,$3,$2

	.align	3
.L106:
	andi	$3,$3,0x00ff
	.align	3
.L107:
	andi	$2,$2,0x00ff
	jr	$31
	subu	$2,$3,$2

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
	beqzc	$2,.L112
	move	$2,$4
	.align	3
.L111:
	lb	$3,1($2)
	bnez	$3,.L111
	daddiu	$2,$2,1

	jr	$31
	dsubu	$2,$2,$4

	.align	3
.L112:
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
	beqzc	$6,.L123
	lbu	$2,0($4)
	beqz	$2,.L126
	daddiu	$6,$6,-1

	b	.L119
	daddu	$6,$4,$6

	.align	3
.L128:
	beq	$6,$4,.L118
	nop

	bne	$3,$2,.L118
	daddiu	$4,$4,1

	lbu	$2,0($4)
	beqzc	$2,.L127
	move	$5,$7
.L119:
	lbu	$3,0($5)
	bnez	$3,.L128
	daddiu	$7,$5,1

.L118:
	jr	$31
	subu	$2,$2,$3

	.align	3
.L123:
	jr	$31
	move	$2,$0

	.align	3
.L127:
	lbu	$3,1($5)
	jr	$31
	subu	$2,$2,$3

.L126:
	b	.L118
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
	bnez	$2,.L134
	dsrl	$2,$6,1

	dsll	$2,$2,1
	daddu	$2,$4,$2
	.align	3
.L131:
	lbu	$6,1($4)
	lbu	$3,0($4)
	daddiu	$4,$4,2
	sb	$6,0($5)
	sb	$3,1($5)
	bne	$4,$2,.L131
	daddiu	$5,$5,2

.L134:
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
	beq	$4,$2,.L141
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

	.align	3
.L141:
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
	bnez	$2,.L145
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

	.align	3
.L145:
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
	beq	$4,$2,.L157
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

	.align	3
.L157:
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
	bnezc	$2,.L165
	addiu	$2,$4,-127
	sltu	$2,$2,33
	beqzc	$2,.L167
.L165:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L167:
	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bnezc	$2,.L165
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
	bnez	$2,.L178
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bnez	$2,.L175
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bnezc	$2,.L175
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$3,$2,8192
	addu	$3,$4,$3
	sltu	$3,$3,8185
	bnez	$3,.L175
	li	$3,1048576			# 0x100000

	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beqzc	$2,.L176
	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

	.align	3
.L175:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L178:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

	.align	3
.L176:
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
	bnezc	$2,.L181
	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

	.align	3
.L181:
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
	bc1t	$fcc0,.L188
	c.un.d	$fcc1,$f13,$f13

	bc1t	$fcc1,.L189
	nop

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L192
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

	.align	3
.L192:
	jr	$31
	dmtc1	$0,$f0

	.align	3
.L188:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L189:
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
	bc1t	$fcc0,.L197
	c.un.s	$fcc1,$f13,$f13

	bc1t	$fcc1,.L198
	nop

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L201
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

	.align	3
.L201:
	jr	$31
	mtc1	$0,$f0

	.align	3
.L197:
	jr	$31
	mov.s	$f0,$f12

	.align	3
.L198:
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
	bc1t	$fcc0,.L206
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L207
	ld	$3,8($sp)

	ld	$2,0($sp)
	dsrl	$2,$2,63
	dext	$3,$3,63,1
	bne	$2,$3,.L210
	mov.d	$f0,$f12

	ldc1	$f0,0($sp)
	ldc1	$f1,8($sp)
	c.lt.d	$fcc2,$f0,$f1
	movt.d	$f0,$f1,$fcc2
.L203:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L210:
	daddiu	$sp,$sp,16
	jr	$31
	movn.d	$f0,$f13,$2

	.align	3
.L206:
	b	.L203
	ldc1	$f0,8($sp)

	.align	3
.L207:
	b	.L203
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
	bc1t	$fcc0,.L214
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L215
	lw	$3,0($sp)

	lw	$2,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	and	$2,$2,$4
	bne	$3,$2,.L218
	move	$4,$3

	lwc1	$f0,0($sp)
	lwc1	$f1,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	movt.s	$f0,$f1,$fcc2
.L211:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L218:
	mov.s	$f0,$f12
	daddiu	$sp,$sp,16
	jr	$31
	movn.s	$f0,$f13,$4

	.align	3
.L214:
	b	.L211
	lwc1	$f0,4($sp)

	.align	3
.L215:
	b	.L211
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

	bnez	$2,.L219
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$23,$f15
	dmtc1	$23,$f13
	dmtc1	$22,$f14
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$22,$f12

	bnez	$2,.L226
	dsrl	$2,$20,63

	dext	$4,$22,63,1
	beq	$2,$4,.L221
	ld	$25,%call16(__lttf2)($28)

	beqz	$2,.L231
	ld	$31,104($sp)

.L219:
	ld	$31,104($sp)
.L232:
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
.L221:
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

	bltz	$2,.L232
	ld	$31,104($sp)

.L226:
	ld	$31,104($sp)
.L231:
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
	bc1t	$fcc0,.L236
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L237
	mov.d	$f0,$f13

	ld	$2,0($sp)
	ld	$3,8($sp)
	dsrl	$2,$2,63
	dext	$3,$3,63,1
	bne	$2,$3,.L240
	ldc1	$f1,8($sp)

	ldc1	$f0,0($sp)
	c.lt.d	$fcc2,$f0,$f1
	movf.d	$f0,$f1,$fcc2
.L233:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L240:
	movn.d	$f0,$f12,$2
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L236:
	b	.L233
	ldc1	$f0,8($sp)

	.align	3
.L237:
	b	.L233
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
	bc1t	$fcc0,.L244
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L245
	mov.s	$f0,$f13

	lw	$3,0($sp)
	lw	$2,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	and	$2,$2,$4
	bne	$3,$2,.L248
	move	$4,$3

	lwc1	$f0,0($sp)
	lwc1	$f1,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	movf.s	$f0,$f1,$fcc2
.L241:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L248:
	movn.s	$f0,$f12,$4
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L244:
	b	.L241
	lwc1	$f0,4($sp)

	.align	3
.L245:
	b	.L241
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

	bnez	$2,.L255
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$fp,$f15
	dmtc1	$fp,$f13
	dmtc1	$23,$f14
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$23,$f12

	bnez	$2,.L257
	dsrl	$2,$20,63

	dext	$4,$23,63,1
	beq	$2,$4,.L251
	ld	$25,%call16(__lttf2)($28)

	bnez	$2,.L261
	ld	$31,104($sp)

.L255:
	ld	$31,104($sp)
.L262:
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
.L251:
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

	bgez	$2,.L262
	ld	$31,104($sp)

.L257:
	ld	$31,104($sp)
.L261:
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
	beqz	$4,.L266
	daddiu	$7,$7,%lo(%neg(%gp_rel(l64a)))

	ld	$2,%got_page(s.0)($7)
	ld	$6,%got_page(digits)($7)
	daddiu	$2,$2,%got_ofst(s.0)
	move	$3,$4
	move	$5,$2
	daddiu	$6,$6,%got_ofst(digits)
	.align	3
.L265:
	andi	$4,$3,0x3f
	daddu	$4,$6,$4
	lbu	$4,0($4)
	dext	$3,$3,6,26
	sb	$4,0($5)
	bnez	$3,.L265
	daddiu	$5,$5,1

	jr	$31
	sb	$0,0($5)

	.align	3
.L266:
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
	beqzc	$5,.L280
	ld	$2,0($5)
	sd	$5,8($4)
	sd	$2,0($4)
	sd	$4,0($5)
	ld	$2,0($4)
	beqzc	$2,.L281
	sd	$4,8($2)
.L281:
	jrc	$31
	.align	3
.L280:
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
	beqzc	$2,.L283
	ld	$3,8($4)
	sd	$3,8($2)
.L283:
	ld	$3,8($4)
	beqzc	$3,.L292
	sd	$2,0($3)
.L292:
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
	beqz	$19,.L294
	move	$18,$7

	move	$22,$8
	move	$16,$5
	b	.L296
	move	$17,$0

	.align	3
.L309:
	beq	$19,$17,.L294
	daddu	$16,$16,$18

.L296:
	move	$5,$16
	move	$4,$20
	move	$25,$22
	jalr	$25
	move	$21,$16

	bnez	$2,.L309
	daddiu	$17,$17,1

.L293:
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
.L294:
	dmult	$18,$19
	daddiu	$19,$19,1
	sd	$19,0($23)
	mflo	$21
	beqz	$18,.L293
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
	beqz	$20,.L311
	sd	$16,8($sp)

	move	$18,$4
	move	$21,$7
	move	$19,$8
	move	$16,$5
	b	.L313
	move	$17,$0

	.align	3
.L322:
	beq	$20,$17,.L311
	daddu	$16,$16,$21

.L313:
	move	$5,$16
	move	$4,$18
	move	$25,$19
	jalr	$25
	move	$22,$16

	bnez	$2,.L322
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
.L311:
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
	bltz	$4,.L327
	nop

	jr	$31
	move	$2,$4

	.align	3
.L327:
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
.L335:
	lb	$6,0($4)
	addiu	$2,$6,-9
	beq	$6,$3,.L329
	sltu	$2,$2,5

	bnezc	$2,.L329
	li	$2,43			# 0x2b
	beq	$6,$2,.L330
	li	$2,45			# 0x2d

	bne	$6,$2,.L346
	addiu	$5,$6,-48

	lb	$6,1($4)
	addiu	$5,$6,-48
	sltu	$2,$5,10
	beqz	$2,.L340
	daddiu	$4,$4,1

	li	$8,1			# 0x1
.L333:
	move	$2,$0
	.align	3
.L337:
	sll	$3,$2,2
	lb	$6,1($4)
	addu	$3,$3,$2
	sll	$3,$3,1
	move	$7,$5
	subu	$2,$3,$5
	addiu	$5,$6,-48
	sltu	$6,$5,10
	bnez	$6,.L337
	daddiu	$4,$4,1

	bnezc	$8,.L347
	jr	$31
	subu	$2,$7,$3

	.align	3
.L329:
	b	.L335
	daddiu	$4,$4,1

	.align	3
.L346:
	sltu	$2,$5,10
	bnez	$2,.L333
	move	$8,$0

.L340:
	move	$2,$0
.L347:
	jrc	$31
	.align	3
.L330:
	lb	$6,1($4)
	move	$8,$0
	addiu	$5,$6,-48
	sltu	$2,$5,10
	bnez	$2,.L333
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
.L355:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,.L349
	sltu	$2,$2,5

	bnezc	$2,.L349
	li	$2,43			# 0x2b
	beq	$5,$2,.L350
	li	$2,45			# 0x2d

	bne	$5,$2,.L366
	addiu	$6,$5,-48

	lb	$5,1($4)
	addiu	$6,$5,-48
	sltu	$2,$6,10
	beqz	$2,.L360
	daddiu	$4,$4,1

	li	$8,1			# 0x1
.L353:
	move	$2,$0
	.align	3
.L357:
	lb	$5,1($4)
	dsll	$3,$2,2
	daddu	$3,$3,$2
	move	$7,$6
	addiu	$6,$5,-48
	dsll	$3,$3,1
	sltu	$5,$6,10
	daddiu	$4,$4,1
	bnez	$5,.L357
	dsubu	$2,$3,$7

	bnezc	$8,.L367
	jr	$31
	dsubu	$2,$7,$3

	.align	3
.L349:
	b	.L355
	daddiu	$4,$4,1

	.align	3
.L366:
	sltu	$2,$6,10
	bnez	$2,.L353
	move	$8,$0

.L360:
	move	$2,$0
.L367:
	jrc	$31
	.align	3
.L350:
	lb	$5,1($4)
	move	$8,$0
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bnez	$2,.L353
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
	beqz	$6,.L371
	sd	$16,8($sp)

	move	$16,$6
	move	$21,$4
	move	$19,$5
	move	$18,$7
	b	.L374
	move	$20,$8

	.align	3
.L384:
	beqz	$2,.L370
	dsubu	$16,$16,$22

	beqz	$16,.L371
	daddu	$19,$17,$18

.L374:
	dsrl	$22,$16,1
.L385:
	dmult	$22,$18
	move	$4,$21
	move	$25,$20
	daddiu	$16,$16,-1
	mflo	$17
	daddu	$17,$19,$17
	jalr	$25
	move	$5,$17

	bgez	$2,.L384
	nop

	move	$16,$22
	bnez	$16,.L385
	dsrl	$22,$16,1

.L371:
	move	$17,$0
.L370:
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
	beqz	$6,.L390
	sd	$16,0($sp)

	move	$22,$4
	move	$18,$5
	move	$17,$7
	move	$21,$8
	move	$20,$9
	b	.L387
	move	$16,$6

	.align	3
.L399:
	beqz	$16,.L390
	daddu	$18,$23,$17

.L387:
	dsra	$2,$16,1
.L401:
	dmult	$2,$17
	move	$6,$20
	move	$4,$22
	move	$25,$21
	sra	$19,$16,1
	addiu	$16,$16,-1
	mflo	$23
	daddu	$23,$18,$23
	jalr	$25
	move	$5,$23

	beqz	$2,.L400
	ld	$31,72($sp)

	bgtz	$2,.L399
	sra	$16,$16,1

	move	$16,$19
	bnez	$16,.L401
	dsra	$2,$16,1

.L390:
	move	$23,$0
	ld	$31,72($sp)
.L400:
	move	$2,$23
	ld	$22,48($sp)
	ld	$23,56($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	80
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
	dins	$3,$5,32,32
	dins	$3,$4,0,32
	sll	$4,$3,0
	dsrl	$3,$3,32
	dins	$2,$3,32,32
	dext	$3,$4,0,32
	jr	$31
	dins	$2,$3,0,32

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
	bltz	$4,.L407
	move	$2,$4

	jrc	$31
	.align	3
.L407:
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
	bltz	$4,.L415
	move	$2,$4

	jrc	$31
	.align	3
.L415:
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
	bltz	$4,.L423
	move	$2,$4

	jrc	$31
	.align	3
.L423:
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
	lw	$2,0($4)
	bnezc	$2,.L429
	jrc	$31
	.align	3
.L431:
	lw	$2,4($4)
	beqz	$2,.L432
	daddiu	$4,$4,4

.L429:
	bne	$5,$2,.L431
	move	$2,$4

	jrc	$31
	.align	3
.L432:
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
	beq	$2,$3,.L444
	daddiu	$4,$4,4

	daddiu	$4,$4,-4
	b	.L443
	slt	$4,$2,$3

	.align	3
.L438:
	lw	$2,0($4)
	lw	$3,0($5)
	bne	$2,$3,.L437
	daddiu	$4,$4,4

.L444:
	bnez	$2,.L438
	daddiu	$5,$5,4

.L437:
	slt	$4,$2,$3
.L443:
	bnezc	$4,.L440
	jr	$31
	slt	$2,$3,$2

	.align	3
.L440:
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
.L446:
	lw	$6,0($5)
	daddiu	$3,$3,4
	daddiu	$5,$5,4
	bnez	$6,.L446
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
	beqzc	$2,.L452
	move	$2,$4
	.align	3
.L451:
	lw	$3,4($2)
	bnez	$3,.L451
	daddiu	$2,$2,4

	dsubu	$2,$2,$4
	jr	$31
	dsra	$2,$2,2

	.align	3
.L452:
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
	bnez	$6,.L456
	move	$2,$0

	b	.L467
	nop

	.align	3
.L465:
	beqzc	$2,.L458
	daddiu	$4,$4,4
	beqz	$6,.L461
	daddiu	$5,$5,4

.L456:
	lw	$2,0($4)
	lw	$3,0($5)
	beq	$3,$2,.L465
	daddiu	$6,$6,-1

.L458:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$4,$2,$3
	bnezc	$4,.L466
	jr	$31
	slt	$2,$3,$2

	.align	3
.L466:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L461:
	move	$2,$0
.L467:
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
	bnez	$6,.L469
	move	$2,$0

	b	.L475
	nop

	.align	3
.L471:
	beqz	$6,.L472
	daddiu	$4,$4,4

.L469:
	lw	$2,0($4)
	bne	$2,$5,.L471
	daddiu	$6,$6,-1

	jr	$31
	move	$2,$4

	.align	3
.L472:
	move	$2,$0
.L475:
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
	bnez	$6,.L477
	move	$2,$0

	b	.L488
	nop

	.align	3
.L479:
	daddiu	$4,$4,4
	beqz	$6,.L482
	daddiu	$5,$5,4

.L477:
	lw	$3,0($4)
	lw	$2,0($5)
	beq	$3,$2,.L479
	daddiu	$6,$6,-1

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$4,$2,$3
	bnezc	$4,.L487
	jr	$31
	slt	$2,$3,$2

	.align	3
.L482:
	jr	$31
	move	$2,$0

	.align	3
.L487:
	li	$2,-1			# 0xffffffffffffffff
.L488:
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
	beqz	$6,.L490
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L490:
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
	beq	$4,$5,.L513
	move	$2,$4

	dsll	$3,$6,2
	dsubu	$4,$4,$5
	sltu	$4,$4,$3
	beqz	$4,.L510
	daddiu	$3,$6,-1

	beqz	$6,.L513
	dsll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
	.align	3
.L500:
	daddu	$4,$5,$3
	lw	$6,0($4)
	daddu	$4,$2,$3
	daddiu	$3,$3,-4
	bne	$3,$7,.L500
	sw	$6,0($4)

.L513:
	jrc	$31
	.align	3
.L510:
	move	$7,$2
	beqz	$6,.L513
	li	$8,-1			# 0xffffffffffffffff

	.align	3
.L498:
	lw	$4,0($5)
	daddiu	$3,$3,-1
	daddiu	$7,$7,4
	daddiu	$5,$5,4
	bne	$3,$8,.L498
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
	beqz	$6,.L522
	move	$2,$4

	daddiu	$3,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	move	$6,$4
	.align	3
.L516:
	daddiu	$3,$3,-1
	daddiu	$6,$6,4
	bne	$3,$7,.L516
	sw	$5,-4($6)

.L522:
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
	beqz	$2,.L524
	daddu	$2,$4,$6

	beqz	$6,.L538
	daddu	$5,$5,$6

	.align	3
.L526:
	lb	$3,-1($2)
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	bne	$4,$2,.L526
	sb	$3,0($5)

.L538:
	jrc	$31
	.align	3
.L524:
	beq	$4,$5,.L537
	nop

	beqz	$6,.L538
	daddu	$6,$4,$6

	.align	3
.L527:
	lb	$2,0($4)
	daddiu	$4,$4,1
	daddiu	$5,$5,1
	bne	$6,$4,.L527
	sb	$2,-1($5)

.L537:
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
	b	.L568
	li	$6,32			# 0x20

	.align	3
.L572:
	beq	$6,$2,.L571
	nop

.L568:
	srl	$5,$4,$3
	addiu	$2,$3,1
	andi	$5,$5,0x1
	beqz	$5,.L572
	move	$3,$2

	jrc	$31
	.align	3
.L571:
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
	beqz	$4,.L581
	move	$2,$0

	andi	$2,$4,0x1
	bnezc	$2,.L580
	li	$2,1			# 0x1
	.align	3
.L575:
	dsra	$4,$4,1
	andi	$3,$4,0x1
	beqz	$3,.L575
	addiu	$2,$2,1

.L581:
	jrc	$31
.L580:
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
	bc1t	$fcc0,.L585
	ld	$3,%got_page(.LC1)($4)

	lwc1	$f0,%got_ofst(.LC1)($3)
	c.lt.s	$fcc1,$f0,$f12
	bc1f	$fcc1,.L587
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L585:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L587:
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
	bc1t	$fcc0,.L591
	ld	$3,%got_page(.LC3)($4)

	ldc1	$f0,%got_ofst(.LC3)($3)
	c.lt.d	$fcc1,$f0,$f12
	bc1f	$fcc1,.L593
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L591:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L593:
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

	bltz	$2,.L597
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
.L597:
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
	sdc1	$f2,8($16)
	sdc1	$f0,0($16)
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
	bc1t	$fcc0,.L619
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexpf)))

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f1,$f12
	bc1t	$fcc1,.L619
	nop

	bltz	$5,.L615
	ld	$2,%got_page(.LC6)($4)

	lwc1	$f1,%got_ofst(.LC6)($2)
.L603:
	andi	$2,$5,0x1
	beqz	$2,.L618
	srl	$2,$5,31

	.align	3
.L605:
	mul.s	$f0,$f0,$f1
	srl	$2,$5,31
.L618:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqz	$5,.L619
	srl	$2,$5,31

	andi	$3,$5,0x1
	mul.s	$f1,$f1,$f1
	bnez	$3,.L605
	addu	$2,$2,$5

	sra	$5,$2,1
.L617:
	srl	$2,$5,31
	andi	$3,$5,0x1
	mul.s	$f1,$f1,$f1
	bnez	$3,.L605
	addu	$2,$2,$5

	b	.L617
	sra	$5,$2,1

.L619:
	jrc	$31
	.align	3
.L615:
	ld	$2,%got_page(.LC7)($4)
	b	.L603
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
	lui	$4,%hi(%neg(%gp_rel(ldexp)))
	daddu	$4,$4,$25
	mov.d	$f0,$f12
	bc1t	$fcc0,.L638
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexp)))

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f1,$f12
	bc1t	$fcc1,.L638
	nop

	bltz	$5,.L634
	ld	$2,%got_page(.LC8)($4)

	ldc1	$f1,%got_ofst(.LC8)($2)
.L622:
	andi	$2,$5,0x1
	beqz	$2,.L637
	srl	$2,$5,31

	.align	3
.L624:
	mul.d	$f0,$f0,$f1
	srl	$2,$5,31
.L637:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqz	$5,.L638
	srl	$2,$5,31

	andi	$3,$5,0x1
	mul.d	$f1,$f1,$f1
	bnez	$3,.L624
	addu	$2,$2,$5

	sra	$5,$2,1
.L636:
	srl	$2,$5,31
	andi	$3,$5,0x1
	mul.d	$f1,$f1,$f1
	bnez	$3,.L624
	addu	$2,$2,$5

	b	.L636
	sra	$5,$2,1

.L638:
	jrc	$31
	.align	3
.L634:
	ld	$2,%got_page(.LC9)($4)
	b	.L622
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

	bnez	$2,.L640
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

	beqz	$2,.L656
	ld	$31,136($sp)

	bltz	$fp,.L655
	ld	$2,%got_page(.LC10)($28)

	ld	$21,%got_ofst(.LC10+8)($2)
	ld	$20,%got_ofst(.LC10)($2)
.L642:
	andi	$2,$fp,0x1
	beqz	$2,.L657
	srl	$2,$fp,31

	.align	3
.L644:
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
.L657:
	addu	$2,$2,$fp
	sra	$fp,$2,1
	beqz	$fp,.L656
	ld	$31,136($sp)

.L645:
	dmtc1	$21,$f15
	dmtc1	$21,$f13
	ld	$25,%call16(__multf3)($28)
	dmtc1	$20,$f14
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$20,$f12

	dmfc1	$2,$f0
	dmfc1	$3,$f2
	move	$18,$2
	move	$19,$3
	srl	$2,$fp,31
	andi	$3,$fp,0x1
	addu	$2,$2,$fp
	move	$21,$19
	bnez	$3,.L644
	move	$20,$18

	b	.L645
	sra	$fp,$2,1

	.align	3
.L640:
	ld	$31,136($sp)
	.align	3
.L656:
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
.L655:
	ld	$2,%got_page(.LC11)($28)
	ld	$21,%got_ofst(.LC11+8)($2)
	b	.L642
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
	beqz	$6,.L666
	move	$2,$4

	daddu	$6,$5,$6
	move	$3,$4
	.align	3
.L660:
	lbu	$7,0($3)
	lbu	$8,0($5)
	daddiu	$3,$3,1
	xor	$7,$7,$8
	daddiu	$5,$5,1
	bne	$6,$5,.L660
	sb	$7,-1($3)

.L666:
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
	beqz	$3,.L674
	move	$2,$4

	move	$3,$4
	.align	3
.L669:
	lb	$7,1($3)
	bnez	$7,.L669
	daddiu	$3,$3,1

	beqzc	$6,.L671
	.align	3
.L683:
	lb	$7,0($5)
	daddiu	$6,$6,-1
	beqz	$7,.L684
	sb	$7,0($3)

	daddiu	$5,$5,1
	daddiu	$3,$3,1
.L681:
	bnezc	$6,.L683
.L671:
	jr	$31
	sb	$0,0($3)

.L684:
	jrc	$31
	.align	3
.L674:
	b	.L681
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
	beqz	$5,.L697
	move	$2,$0

	daddu	$3,$4,$2
.L695:
	lb	$3,0($3)
	bnezc	$3,.L688
.L697:
	jrc	$31
	.align	3
.L688:
	daddiu	$2,$2,1
	bne	$5,$2,.L695
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
	beqz	$7,.L703
	move	$2,$4

.L699:
	b	.L702
	move	$3,$5

	.align	3
.L701:
	beq	$6,$7,.L707
	nop

.L702:
	lb	$6,0($3)
	bnez	$6,.L701
	daddiu	$3,$3,1

	lb	$7,1($2)
	bnez	$7,.L699
	daddiu	$2,$2,1

.L703:
	move	$2,$0
.L707:
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
.L710:
	lb	$3,0($4)
	bne	$5,$3,.L709
	nop

	move	$2,$4
.L709:
	bnez	$3,.L710
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
	beqzc	$8,.L724
	move	$2,$5
	.align	3
.L715:
	lb	$3,1($2)
	bnez	$3,.L715
	daddiu	$2,$2,1

	beq	$2,$5,.L724
	dsubu	$10,$2,$5

	b	.L721
	daddiu	$10,$10,-1

	.align	3
.L735:
	beqz	$3,.L734
	daddiu	$4,$4,1

.L721:
	lb	$3,0($4)
	bne	$8,$3,.L735
	daddu	$9,$4,$10

	andi	$3,$3,0x00ff
	move	$6,$5
	b	.L717
	move	$2,$4

	.align	3
.L736:
	beq	$2,$9,.L718
	nop

	bne	$7,$3,.L718
	daddiu	$2,$2,1

	lbu	$3,0($2)
	beqz	$3,.L718
	daddiu	$6,$6,1

.L717:
	lbu	$7,0($6)
	bnezc	$7,.L736
.L718:
	lbu	$2,0($6)
	beq	$2,$3,.L724
	nop

	b	.L721
	daddiu	$4,$4,1

	.align	3
.L734:
	jr	$31
	move	$2,$0

	.align	3
.L724:
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmtc1	$0,$f0
	daddiu	$sp,$sp,-16
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L748
	sdc1	$f12,0($sp)

	ldc1	$f1,0($sp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L741
	nop

	c.lt.d	$fcc3,$f13,$f0
	bc1t	$fcc3,.L749
	ld	$3,0($sp)

.L741:
	ldc1	$f0,0($sp)
.L750:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L748:
	c.lt.d	$fcc1,$f0,$f13
	bc1f	$fcc1,.L750
	ldc1	$f0,0($sp)

	ld	$3,0($sp)
.L749:
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
	beqzc	$7,.L757
	sltu	$2,$5,$7
	bnez	$2,.L759
	dsubu	$5,$5,$7

	daddu	$11,$4,$5
	sltu	$2,$11,$4
	bnez	$2,.L759
	li	$13,1			# 0x1

	lb	$12,0($6)
	b	.L756
	daddu	$10,$6,$7

	.align	3
.L753:
	sltu	$2,$11,$4
	bnezc	$2,.L759
.L756:
	lb	$3,0($4)
	move	$2,$4
	bne	$3,$12,.L753
	daddiu	$4,$4,1

	beq	$7,$13,.L765
	daddiu	$3,$6,1

	move	$5,$4
	.align	3
.L754:
	lbu	$8,0($3)
	lbu	$9,0($5)
	bne	$9,$8,.L753
	daddiu	$3,$3,1

	bne	$3,$10,.L754
	daddiu	$5,$5,1

.L765:
	jrc	$31
	.align	3
.L759:
	jr	$31
	move	$2,$0

	.align	3
.L757:
	jr	$31
	move	$2,$4

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
	beqz	$6,.L767
	move	$17,$4

	ld	$25,%call16(memmove)($28)
	.reloc	1f,R_MICROMIPS_JALR,memmove
1:	jalrs	$25
	nop

.L767:
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
	bc1t	$fcc0,.L795
	sdc1	$f12,0($sp)

	ld	$2,%got_page(.LC14)($6)
	ldc1	$f2,0($sp)
	ldc1	$f1,%got_ofst(.LC14)($2)
	c.le.d	$fcc3,$f1,$f2
	bc1f	$fcc3,.L796
	move	$4,$0

.L775:
	ld	$3,%got_page(.LC9)($6)
	ldc1	$f1,%got_ofst(.LC14)($2)
	ldc1	$f0,%got_ofst(.LC9)($3)
	move	$2,$0
	.align	3
.L781:
	ldc1	$f2,0($sp)
	addiu	$2,$2,1
	mul.d	$f2,$f2,$f0
	c.le.d	$fcc6,$f1,$f2
	bc1t	$fcc6,.L781
	sdc1	$f2,0($sp)

.L782:
	beqz	$4,.L772
	sw	$2,0($5)

	ld	$3,0($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	sd	$2,0($sp)
.L772:
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L796:
	ld	$3,%got_page(.LC9)($6)
	ldc1	$f1,%got_ofst(.LC9)($3)
	c.lt.d	$fcc4,$f2,$f1
	bc1f	$fcc4,.L778
	c.eq.d	$fcc5,$f2,$f0

	bc1f	$fcc5,.L787
	ld	$2,0($sp)

.L778:
	ldc1	$f0,0($sp)
	sw	$0,0($5)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L795:
	ld	$3,0($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	ld	$3,%got_page(.LC12)($6)
	ldc1	$f0,%got_ofst(.LC12)($3)
	c.le.d	$fcc1,$f12,$f0
	bc1f	$fcc1,.L797
	li	$4,1			# 0x1

	sd	$2,0($sp)
	b	.L775
	ld	$2,%got_page(.LC14)($6)

	.align	3
.L797:
	ld	$3,%got_page(.LC13)($6)
	ldc1	$f0,%got_ofst(.LC13)($3)
	c.lt.d	$fcc2,$f0,$f12
	bc1t	$fcc2,.L785
	ld	$3,%got_page(.LC9)($6)

	b	.L772
	sw	$0,0($5)

	.align	3
.L785:
	li	$4,1			# 0x1
.L776:
	ldc1	$f0,%got_ofst(.LC9)($3)
	sd	$2,0($sp)
	move	$2,$0
	.align	3
.L783:
	ldc1	$f1,0($sp)
	addiu	$2,$2,-1
	add.d	$f1,$f1,$f1
	c.lt.d	$fcc7,$f1,$f0
	bc1t	$fcc7,.L783
	sdc1	$f1,0($sp)

	b	.L782
	nop

.L787:
	b	.L776
	move	$4,$0

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
	beqz	$4,.L805
	move	$2,$0

	.align	3
.L800:
	andi	$3,$4,0x1
	dsubu	$3,$0,$3
	and	$3,$3,$5
	dsrl	$4,$4,1
	daddu	$2,$2,$3
	bnez	$4,.L800
	dsll	$5,$5,1

.L805:
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
	beqz	$2,.L808
	li	$3,1			# 0x1

	b	.L807
	li	$2,32			# 0x20

	.align	3
.L811:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beqz	$7,.L809
	sll	$3,$3,1

	beqzc	$2,.L810
.L807:
	bgez	$5,.L811
	addiu	$2,$2,-1

.L808:
	move	$2,$0
	.align	3
.L813:
	sltu	$7,$4,$5
	or	$8,$3,$2
	bnez	$7,.L812
	dext	$3,$3,1,31

	subu	$4,$4,$5
	move	$2,$8
.L812:
	bnez	$3,.L813
	dext	$5,$5,1,31

.L810:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L809:
	bnez	$3,.L808
	move	$2,$0

	b	.L810
	nop

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
	beq	$4,$3,.L825
	xor	$2,$4,$3

	sll	$2,$2,8
	clz	$2,$2
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L825:
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
	beq	$4,$3,.L829
	xor	$2,$4,$3

	dclz	$2,$2
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L829:
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
	beqz	$4,.L838
	move	$2,$0

	.align	3
.L833:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	dext	$4,$4,1,31
	addu	$2,$3,$2
	bnez	$4,.L833
	sll	$5,$5,1

.L838:
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
	bnez	$3,.L843
	dext	$9,$6,3,29

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beqzc	$3,.L853
.L843:
	beqz	$9,.L842
	move	$3,$5

	dsll	$9,$9,3
	move	$7,$4
	daddu	$9,$9,$5
	.align	3
.L846:
	ld	$8,0($3)
	daddiu	$3,$3,8
	sd	$8,0($7)
	bne	$3,$9,.L846
	daddiu	$7,$7,8

.L842:
	sltu	$3,$2,$6
	beqz	$3,.L856
	dext	$2,$2,0,32

	.align	3
.L847:
	daddu	$3,$5,$2
	daddu	$7,$4,$2
	daddiu	$2,$2,1
	lb	$8,0($3)
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L847
	sb	$8,0($7)

.L856:
	jrc	$31
	.align	3
.L853:
	beqz	$6,.L856
	addiu	$3,$6,-1

	dext	$3,$3,0,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L848:
	lb	$6,0($2)
	move	$3,$2
	sb	$6,0($4)
	daddiu	$2,$2,-1
	bne	$5,$3,.L848
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
	bnez	$2,.L861
	dext	$8,$6,1,31

	dext	$2,$6,0,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	beqzc	$2,.L873
.L861:
	beqz	$8,.L860
	move	$2,$5

	dsll	$8,$8,1
	move	$3,$4
	daddu	$8,$8,$5
	.align	3
.L864:
	lh	$7,0($2)
	daddiu	$2,$2,2
	sh	$7,0($3)
	bne	$2,$8,.L864
	daddiu	$3,$3,2

.L860:
	andi	$2,$6,0x1
	beqz	$2,.L876
	addiu	$6,$6,-1

	dext	$6,$6,0,32
	daddu	$5,$5,$6
	lb	$3,0($5)
	daddu	$2,$4,$6
	jr	$31
	sb	$3,0($2)

	.align	3
.L873:
	beqz	$6,.L876
	addiu	$2,$6,-1

	dext	$2,$2,0,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	.align	3
.L866:
	lb	$6,0($3)
	move	$4,$3
	sb	$6,0($2)
	daddiu	$3,$3,-1
	bne	$5,$4,.L866
	daddiu	$2,$2,-1

.L876:
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
	bnez	$3,.L881
	dext	$9,$6,2,30

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beqzc	$3,.L891
.L881:
	beqz	$9,.L880
	move	$3,$5

	dsll	$9,$9,2
	move	$7,$4
	daddu	$9,$9,$5
	.align	3
.L884:
	lw	$8,0($3)
	daddiu	$3,$3,4
	sw	$8,0($7)
	bne	$3,$9,.L884
	daddiu	$7,$7,4

.L880:
	sltu	$3,$2,$6
	beqz	$3,.L894
	dext	$2,$2,0,32

	.align	3
.L885:
	daddu	$3,$5,$2
	daddu	$7,$4,$2
	daddiu	$2,$2,1
	lb	$8,0($3)
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L885
	sb	$8,0($7)

.L894:
	jrc	$31
	.align	3
.L891:
	beqz	$6,.L894
	addiu	$3,$6,-1

	dext	$3,$3,0,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L886:
	lb	$6,0($2)
	move	$3,$2
	sb	$6,0($4)
	daddiu	$2,$2,-1
	bne	$5,$3,.L886
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
	bltz	$4,.L903
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.align	3
.L903:
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
	bltz	$4,.L907
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.align	3
.L907:
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
.L916:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bnezc	$3,.L917
	addiu	$2,$2,1
	bne	$2,$6,.L916
	subu	$3,$5,$2

.L917:
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
.L923:
	andi	$3,$3,0x1
	bnezc	$3,.L924
	addiu	$2,$2,1
	bne	$2,$5,.L923
	sra	$3,$4,$2

.L924:
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
	ld	$2,%got_page(.LC15)($4)
	lwc1	$f0,%got_ofst(.LC15)($2)
	c.le.s	$fcc0,$f0,$f12
	bc1t	$fcc0,.L932
	li	$3,32768			# 0x8000

	trunc.l.s $f0,$f12
	jr	$31
	dmfc1	$2,$f0

	.align	3
.L932:
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
.L934:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,.L934
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
.L938:
	sra	$2,$4,$3
	andi	$2,$2,0x1
	addu	$2,$2,$5
	addiu	$3,$3,1
	bne	$3,$6,.L938
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
	beqz	$4,.L948
	move	$2,$0

	.align	3
.L943:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	dext	$4,$4,1,31
	addu	$2,$3,$2
	bnez	$4,.L943
	sll	$5,$5,1

.L948:
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
	beqz	$4,.L957
	move	$2,$0

	beqzc	$5,.L956
	.align	3
.L951:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	dext	$5,$5,1,31
	addu	$2,$3,$2
	bnez	$5,.L951
	sll	$4,$4,1

.L957:
	jrc	$31
.L956:
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
	beqz	$2,.L960
	li	$3,1			# 0x1

	b	.L959
	li	$2,32			# 0x20

	.align	3
.L963:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beqz	$7,.L961
	sll	$3,$3,1

	beqzc	$2,.L962
.L959:
	bgez	$5,.L963
	addiu	$2,$2,-1

.L960:
	move	$2,$0
	.align	3
.L965:
	sltu	$7,$4,$5
	or	$8,$3,$2
	bnez	$7,.L964
	dext	$3,$3,1,31

	subu	$4,$4,$5
	move	$2,$8
.L964:
	bnez	$3,.L965
	dext	$5,$5,1,31

.L962:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L961:
	bnez	$3,.L960
	move	$2,$0

	b	.L962
	nop

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
	bc1t	$fcc0,.L978
	nop

	c.lt.s	$fcc1,$f13,$f12
	bc1f	$fcc1,.L980
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L980:
	jr	$31
	move	$2,$0

	.align	3
.L978:
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
	bc1t	$fcc0,.L986
	nop

	c.lt.d	$fcc1,$f13,$f12
	bc1f	$fcc1,.L988
	li	$2,1			# 0x1

	jrc	$31
	.align	3
.L988:
	jr	$31
	move	$2,$0

	.align	3
.L986:
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
	bltz	$5,.L1010
	nop

	beqz	$5,.L1001
	move	$7,$0

.L997:
	li	$6,32			# 0x20
	b	.L1000
	move	$2,$0

	.align	3
.L1011:
	beqzc	$6,.L999
.L1000:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addiu	$6,$6,-1
	dsra	$5,$5,1
	andi	$6,$6,0x00ff
	addu	$2,$3,$2
	bnez	$5,.L1011
	sll	$4,$4,1

.L999:
	beqzc	$7,.L1012
	jr	$31
	subu	$2,$0,$2

.L1001:
	move	$2,$0
.L1012:
	jrc	$31
	.align	3
.L1010:
	subu	$5,$0,$5
	b	.L997
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
	bltz	$4,.L1033
	nop

	move	$7,$0
.L1014:
	bgez	$5,.L1015
	nop

	dsubu	$5,$0,$5
	xori	$7,$7,0x1
.L1015:
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$2,$5,$4
	beqz	$2,.L1017
	li	$3,1			# 0x1

	b	.L1016
	li	$2,32			# 0x20

	.align	3
.L1020:
	sll	$5,$5,1
	sltu	$6,$5,$4
	beqz	$6,.L1018
	sll	$3,$3,1

	beqzc	$2,.L1027
.L1016:
	bgez	$5,.L1020
	addiu	$2,$2,-1

.L1017:
	move	$2,$0
	.align	3
.L1022:
	sltu	$6,$4,$5
	bnezc	$6,.L1021
	subu	$4,$4,$5
	or	$2,$2,$3
.L1021:
	dext	$3,$3,1,31
	bnez	$3,.L1022
	dext	$5,$5,1,31

	dext	$2,$2,0,32
.L1019:
	beqzc	$7,.L1034
	dsubu	$2,$0,$2
.L1034:
	jrc	$31
	.align	3
.L1018:
	bnezc	$3,.L1017
	.align	3
.L1027:
	b	.L1019
	move	$2,$0

	.align	3
.L1033:
	dsubu	$4,$0,$4
	b	.L1014
	li	$7,1			# 0x1

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
	bltz	$4,.L1060
	nop

	move	$7,$0
.L1036:
	bgez	$5,.L1037
	sll	$2,$4,0

	dsubu	$5,$0,$5
.L1037:
	sll	$3,$5,0
	sltu	$4,$3,$2
	beqz	$4,.L1044
	li	$5,1			# 0x1

	b	.L1038
	li	$4,32			# 0x20

	.align	3
.L1042:
	sll	$3,$3,1
	sltu	$6,$3,$2
	beqz	$6,.L1059
	sll	$5,$5,1

	beqzc	$4,.L1041
.L1038:
	bgez	$3,.L1042
	addiu	$4,$4,-1

	.align	3
.L1044:
	sltu	$4,$2,$3
	.align	3
.L1061:
	bnez	$4,.L1043
	dext	$5,$5,1,31

	subu	$2,$2,$3
.L1043:
	dext	$3,$3,1,31
.L1059:
	bnez	$5,.L1061
	sltu	$4,$2,$3

.L1041:
	beqz	$7,.L1062
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L1062:
	jrc	$31
	.align	3
.L1060:
	dsubu	$4,$0,$4
	b	.L1036
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
	beqz	$3,.L1078
	move	$2,$4

	li	$7,16			# 0x10
	li	$3,1			# 0x1
	seh	$4,$5
	.align	3
.L1079:
	sll	$9,$5,1
	sll	$8,$3,1
	bltz	$4,.L1065
	addiu	$7,$7,-1

	andi	$5,$9,0xffff
	sltu	$4,$5,$2
	beqz	$4,.L1066
	andi	$3,$8,0xffff

	bnez	$7,.L1079
	seh	$4,$5

	move	$4,$0
.L1080:
	jr	$31
	movz	$2,$4,$6

	.align	3
.L1066:
	beqz	$3,.L1080
	move	$4,$0

.L1065:
	move	$4,$0
	.align	3
.L1070:
	sltu	$7,$2,$5
	or	$8,$3,$4
	subu	$9,$2,$5
	bnez	$7,.L1069
	dsrl	$3,$3,1

	andi	$2,$9,0xffff
	andi	$4,$8,0xffff
.L1069:
	bnez	$3,.L1070
	dsrl	$5,$5,1

	jr	$31
	movz	$2,$4,$6

.L1078:
	b	.L1065
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
	sltu	$2,$5,$4
	beqz	$2,.L1083
	li	$3,1			# 0x1

	li	$7,64			# 0x40
	b	.L1082
	dsll	$9,$3,31

	.align	3
.L1086:
	dsll	$5,$5,1
	sltu	$8,$5,$4
	beqz	$8,.L1084
	dsll	$3,$3,1

	beqzc	$7,.L1085
.L1082:
	and	$2,$5,$9
	beqz	$2,.L1086
	addiu	$7,$7,-1

.L1083:
	move	$2,$0
	.align	3
.L1088:
	sltu	$7,$4,$5
	bnezc	$7,.L1087
	dsubu	$4,$4,$5
	or	$2,$2,$3
.L1087:
	dsrl	$3,$3,1
	bnez	$3,.L1088
	dsrl	$5,$5,1

.L1085:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L1084:
	bnezc	$3,.L1083
	b	.L1085
	nop

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
	beqz	$2,.L1102
	move	$2,$0

	sll	$4,$4,0
	sll	$3,$4,$5
	move	$4,$0
	dins	$2,$4,0,32
	jr	$31
	dins	$2,$3,32,32

	.align	3
.L1102:
	beqz	$5,.L1105
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
.L1105:
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
	beqz	$2,.L1108
	dsll	$2,$5,$6

	move	$5,$0
	jr	$31
	move	$3,$5

	.align	3
.L1108:
	beqzc	$6,.L1111
	subu	$3,$0,$6
	dsrl	$3,$5,$3
	dsll	$2,$4,$6
	dsll	$5,$5,$6
	or	$2,$2,$3
	jr	$31
	move	$3,$5

	.align	3
.L1111:
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
	beqz	$2,.L1114
	move	$2,$0

	dsra	$4,$4,32
	sra	$3,$4,31
	sra	$4,$4,$5
	dins	$2,$3,32,32
	jr	$31
	dins	$2,$4,0,32

	.align	3
.L1114:
	beqz	$5,.L1117
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
.L1117:
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
	beqz	$2,.L1120
	dsra	$2,$4,63

	dsra	$5,$4,$6
	jr	$31
	move	$3,$5

	.align	3
.L1120:
	beqzc	$6,.L1123
	subu	$3,$0,$6
	dsll	$3,$4,$3
	dsrl	$5,$5,$6
	or	$5,$5,$3
	dsra	$2,$4,$6
	jr	$31
	move	$3,$5

	.align	3
.L1123:
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
	bnezc	$6,.L1137
	slt	$2,$3,$2
	bnez	$2,.L1138
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$4,$5
	bnez	$2,.L1137
	sltu	$4,$5,$4

	bnezc	$4,.L1138
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1137:
	jr	$31
	move	$2,$0

	.align	3
.L1138:
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
	bnezc	$6,.L1144
	slt	$2,$3,$2
	bnez	$2,.L1143
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bnezc	$3,.L1144
	jr	$31
	sltu	$2,$5,$2

	.align	3
.L1144:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1143:
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
	slt	$2,$4,$6
	bnez	$2,.L1150
	slt	$4,$6,$4

	bnezc	$4,.L1151
	sltu	$2,$5,$7
	bnez	$2,.L1150
	sltu	$5,$7,$5

	bnezc	$5,.L1151
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1150:
	jr	$31
	move	$2,$0

	.align	3
.L1151:
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
	bnez	$5,.L1158
	dsubu	$2,$0,$5

	bnezc	$4,.L1162
	jr	$31
	move	$2,$0

	.align	3
.L1158:
	and	$5,$5,$2
	dclz	$5,$5
	li	$2,63			# 0x3f
	subu	$2,$2,$5
	jr	$31
	addiu	$2,$2,1

	.align	3
.L1162:
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
	beqz	$2,.L1164
	move	$2,$0

	dsra	$4,$4,32
	srl	$3,$4,$5
	move	$4,$0
	dins	$2,$4,32,32
	jr	$31
	dins	$2,$3,0,32

	.align	3
.L1164:
	beqz	$5,.L1167
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
.L1167:
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
	beqzc	$2,.L1170
	dsrl	$5,$4,$6
	move	$4,$0
.L1173:
	move	$2,$4
	jr	$31
	move	$3,$5

	.align	3
.L1170:
	beqzc	$6,.L1173
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
	lui	$7,%hi(%neg(%gp_rel(__powidf2)))
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(__powidf2)))
	andi	$2,$5,0x1
	beqz	$2,.L1205
	ld	$6,%got_page(.LC14)($7)

	ldc1	$f0,%got_ofst(.LC14)($6)
	move	$2,$5
	.align	3
.L1202:
	mul.d	$f0,$f0,$f12
.L1200:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beqz	$2,.L1201
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bnez	$4,.L1202
	addu	$3,$3,$2

	sra	$2,$3,1
.L1209:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bnez	$4,.L1202
	addu	$3,$3,$2

	b	.L1209
	sra	$2,$3,1

	.align	3
.L1201:
	bltz	$5,.L1208
	ldc1	$f1,%got_ofst(.LC14)($6)

	jrc	$31
	.align	3
.L1205:
	ldc1	$f0,%got_ofst(.LC14)($6)
	b	.L1200
	move	$2,$5

	.align	3
.L1208:
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
	beqz	$2,.L1216
	ld	$6,%got_page(.LC16)($7)

	lwc1	$f0,%got_ofst(.LC16)($6)
	move	$2,$5
	.align	3
.L1213:
	mul.s	$f0,$f0,$f12
.L1211:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beqz	$2,.L1212
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bnez	$4,.L1213
	addu	$3,$3,$2

	sra	$2,$3,1
.L1220:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bnez	$4,.L1213
	addu	$3,$3,$2

	b	.L1220
	sra	$2,$3,1

	.align	3
.L1212:
	bltz	$5,.L1219
	lwc1	$f1,%got_ofst(.LC16)($6)

	jrc	$31
	.align	3
.L1216:
	lwc1	$f0,%got_ofst(.LC16)($6)
	b	.L1211
	move	$2,$5

	.align	3
.L1219:
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
	bnezc	$6,.L1225
	sltu	$2,$3,$2
	bnez	$2,.L1226
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$4,$5
	bnez	$2,.L1225
	sltu	$4,$5,$4

	bnezc	$4,.L1226
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1225:
	jr	$31
	move	$2,$0

	.align	3
.L1226:
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
	bnezc	$6,.L1232
	sltu	$2,$3,$2
	bnez	$2,.L1231
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bnezc	$3,.L1232
	jr	$31
	sltu	$2,$5,$2

	.align	3
.L1232:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L1231:
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
	sltu	$2,$4,$6
	bnez	$2,.L1238
	sltu	$4,$6,$4

	bnezc	$4,.L1239
	sltu	$2,$5,$7
	bnez	$2,.L1238
	sltu	$5,$7,$5

	bnezc	$5,.L1239
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1238:
	jr	$31
	move	$2,$0

	.align	3
.L1239:
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
	.word	-1074790400
	.word	0
	.align	3
.LC13:
	.word	-1075838976
	.word	0
	.align	3
.LC14:
	.word	1072693248
	.word	0
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
