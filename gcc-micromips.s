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
	daddiu	$5,$5,-1
	daddiu	$3,$3,-1
	lb	$4,0($5)
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
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	lb	$4,-1($5)
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
	beqz	$7,.L27
	andi	$6,$6,0x00ff

	.align	3
.L23:
	lbu	$2,0($5)
	beq	$2,$6,.L36
	sb	$2,0($4)

	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	bnez	$7,.L23
	daddiu	$4,$4,1

.L27:
	jr	$31
	move	$2,$0

	.align	3
.L36:
	beqzc	$7,.L27
	jr	$31
	daddiu	$2,$4,1

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
	beqz	$6,.L43
	andi	$5,$5,0x00ff

	.align	3
.L38:
	lbu	$2,0($4)
	beq	$2,$5,.L48
	nop

	daddiu	$6,$6,-1
	bnez	$6,.L38
	daddiu	$4,$4,1

.L43:
	jr	$31
	move	$2,$0

	.align	3
.L48:
	beqz	$6,.L43
	move	$2,$4

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
	beqzc	$6,.L54
	.align	3
.L50:
	lbu	$3,0($4)
	lbu	$2,0($5)
	bne	$3,$2,.L62
	daddiu	$4,$4,1

	daddiu	$6,$6,-1
	bnez	$6,.L50
	daddiu	$5,$5,1

.L54:
	jr	$31
	move	$2,$0

	.align	3
.L62:
	beqzc	$6,.L54
	move	$2,$3
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

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
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(memcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(memcpy)))
	beqz	$6,.L64
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalrs	$25
	nop

.L64:
	move	$2,$16
	ld	$31,24($sp)
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
	daddiu	$4,$4,-1
	andi	$5,$5,0x00ff
	.align	3
.L70:
	beq	$6,$4,.L76
	move	$2,$0

	move	$2,$6
	lbu	$3,0($2)
	bne	$3,$5,.L70
	daddiu	$6,$6,-1

.L76:
	jrc	$31
.L69:
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
	beqz	$6,.L85
	move	$2,$4

	daddu	$6,$4,$6
	move	$3,$4
	.align	3
.L79:
	sb	$5,0($3)
	daddiu	$3,$3,1
	bne	$6,$3,.L79
	nop

.L85:
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
	move	$2,$4
	lb	$3,0($5)
	beqz	$3,.L94
	sb	$3,0($4)

	.align	3
.L88:
	daddiu	$5,$5,1
	daddiu	$2,$2,1
	lb	$3,0($5)
	bnez	$3,.L88
	sb	$3,0($2)

.L94:
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
	lb	$3,0($4)
	beqz	$3,.L107
	andi	$5,$5,0x00ff

	andi	$3,$3,0x00ff
	.align	3
.L105:
	beq	$3,$5,.L106
	nop

	daddiu	$2,$2,1
	lb	$3,0($2)
	bnez	$3,.L105
	andi	$3,$3,0x00ff

.L107:
	jrc	$31
.L106:
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
	move	$2,$4
	.align	3
.L110:
	lb	$3,0($2)
	beq	$3,$5,.L113
	nop

	bnez	$3,.L110
	daddiu	$2,$2,1

	move	$2,$0
.L113:
	jrc	$31
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
	bne	$2,$3,.L116
	nop

	.align	3
.L115:
	beqz	$2,.L120
	andi	$2,$2,0x00ff

	daddiu	$4,$4,1
	daddiu	$5,$5,1
	lb	$2,0($4)
	lb	$3,0($5)
	beq	$2,$3,.L115
	nop

.L116:
	andi	$2,$2,0x00ff
.L120:
	andi	$3,$3,0x00ff
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
	beqz	$2,.L127
	move	$2,$4

	.align	3
.L123:
	daddiu	$2,$2,1
	lb	$5,0($2)
	bnezc	$5,.L123
.L122:
	.align	3
.L127:
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
	beqzc	$6,.L133
	lbu	$2,0($4)
	beqzc	$2,.L130
	daddiu	$6,$6,-1
	daddu	$6,$4,$6
	.align	3
.L131:
	lbu	$3,0($5)
	beqzc	$3,.L130
	beq	$4,$6,.L130
	nop

	bne	$3,$2,.L130
	nop

	daddiu	$4,$4,1
	lbu	$2,0($4)
	bnez	$2,.L131
	daddiu	$5,$5,1

.L130:
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

	.align	3
.L133:
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
	bnez	$2,.L149
	li	$2,-2			# 0xfffffffffffffffe

	and	$6,$6,$2
	daddu	$3,$4,$6
	.align	3
.L146:
	lbu	$2,1($4)
	sb	$2,0($5)
	lbu	$2,0($4)
	sb	$2,1($5)
	daddiu	$4,$4,2
	bne	$4,$3,.L146
	daddiu	$5,$5,2

.L149:
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
	beq	$4,$2,.L156
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

	.align	3
.L156:
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
	bnez	$2,.L160
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

	.align	3
.L160:
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
	beq	$4,$2,.L172
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

	.align	3
.L172:
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
	bnezc	$2,.L180
	addiu	$2,$4,-127
	sltu	$2,$2,33
	bnezc	$2,.L180
	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bnezc	$2,.L180
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	jr	$31
	sltu	$2,$4,3

	.align	3
.L180:
	jr	$31
	li	$2,1			# 0x1

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
	bnez	$2,.L192
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bnez	$2,.L189
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bnezc	$2,.L189
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$3,$2,8192
	addu	$3,$4,$3
	sltu	$3,$3,8185
	bnez	$3,.L189
	li	$3,1048576			# 0x100000

	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beqzc	$2,.L190
	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

	.align	3
.L192:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

	.align	3
.L189:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L190:
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
	bnezc	$2,.L195
	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

	.align	3
.L195:
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
	bc1t	$fcc0,.L202
	c.un.d	$fcc1,$f13,$f13

	bc1t	$fcc1,.L203
	nop

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L206
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

	.align	3
.L202:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L203:
	jr	$31
	mov.d	$f0,$f13

	.align	3
.L206:
	jr	$31
	dmtc1	$0,$f0

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
	bc1t	$fcc0,.L211
	c.un.s	$fcc1,$f13,$f13

	bc1t	$fcc1,.L212
	nop

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L215
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

	.align	3
.L211:
	jr	$31
	mov.s	$f0,$f12

	.align	3
.L212:
	jr	$31
	mov.s	$f0,$f13

	.align	3
.L215:
	jr	$31
	mtc1	$0,$f0

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
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L220
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L221
	ld	$2,0($sp)

	dsrl	$2,$2,63
	ld	$3,8($sp)
	dext	$3,$3,63,1
	beq	$2,$3,.L219
	ldc1	$f0,0($sp)

	mov.d	$f0,$f12
	movn.d	$f0,$f13,$2
.L217:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L219:
	ldc1	$f1,8($sp)
	c.lt.d	$fcc2,$f0,$f1
	b	.L217
	movt.d	$f0,$f1,$fcc2

	.align	3
.L220:
	b	.L217
	ldc1	$f0,8($sp)

	.align	3
.L221:
	b	.L217
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
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L227
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L228
	lw	$2,0($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,4($sp)
	and	$3,$3,$4
	beq	$2,$3,.L226
	move	$5,$2

	mov.s	$f0,$f12
	movn.s	$f0,$f13,$5
.L224:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L226:
	lwc1	$f0,0($sp)
	lwc1	$f1,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	b	.L224
	movt.s	$f0,$f1,$fcc2

	.align	3
.L227:
	b	.L224
	lwc1	$f0,4($sp)

	.align	3
.L228:
	b	.L224
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
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$28,88($sp)
	sd	$23,80($sp)
	sd	$22,72($sp)
	sd	$20,64($sp)
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	dmfc1	$9,$f13
	dmfc1	$8,$f12
	move	$fp,$9
	move	$20,$8
	dmfc1	$9,$f15
	dmfc1	$8,$f14
	move	$22,$8
	move	$23,$9
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$fp,$f15
	dmtc1	$20,$f14
	dmtc1	$fp,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$20,$f12

	bnez	$2,.L231
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$23,$f15
	dmtc1	$22,$f14
	dmtc1	$23,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$22,$f12

	bnez	$2,.L238
	dsrl	$2,$20,63

	dext	$4,$22,63,1
	beq	$2,$4,.L233
	ld	$25,%call16(__lttf2)($28)

	bnez	$2,.L244
	dmtc1	$22,$f0

	b	.L243
	move	$22,$20

	.align	3
.L233:
	sd	$22,0($sp)
	sd	$23,8($sp)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	sd	$20,16($sp)
	sd	$fp,24($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bltz	$2,.L244
	dmtc1	$22,$f0

.L238:
	move	$22,$20
.L243:
	move	$23,$fp
.L231:
	dmtc1	$22,$f0
.L244:
	dmtc1	$23,$f2
	ld	$31,104($sp)
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
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L248
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L249
	mov.d	$f0,$f13

	ld	$2,0($sp)
	dsrl	$2,$2,63
	ld	$3,8($sp)
	dext	$3,$3,63,1
	beq	$2,$3,.L247
	ldc1	$f1,8($sp)

	movn.d	$f0,$f12,$2
.L245:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L247:
	ldc1	$f0,0($sp)
	c.lt.d	$fcc2,$f0,$f1
	b	.L245
	movf.d	$f0,$f1,$fcc2

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
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L255
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L256
	mov.s	$f0,$f13

	lw	$2,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,4($sp)
	and	$3,$3,$4
	beq	$2,$3,.L254
	move	$5,$2

	movn.s	$f0,$f12,$5
.L252:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L254:
	lwc1	$f0,0($sp)
	lwc1	$f1,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	b	.L252
	movf.s	$f0,$f1,$fcc2

	.align	3
.L255:
	b	.L252
	lwc1	$f0,4($sp)

	.align	3
.L256:
	b	.L252
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
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$28,88($sp)
	sd	$23,80($sp)
	sd	$22,72($sp)
	sd	$20,64($sp)
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	dmfc1	$9,$f13
	dmfc1	$8,$f12
	move	$22,$9
	move	$20,$8
	dmfc1	$9,$f15
	dmfc1	$8,$f14
	move	$23,$8
	move	$fp,$9
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$22,$f15
	dmtc1	$20,$f14
	dmtc1	$22,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$20,$f12

	bnez	$2,.L265
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$fp,$f15
	dmtc1	$23,$f14
	dmtc1	$fp,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$23,$f12

	bnez	$2,.L267
	dsrl	$2,$20,63

	dext	$4,$23,63,1
	beq	$2,$4,.L261
	ld	$25,%call16(__lttf2)($28)

	beqzc	$2,.L265
.L267:
	b	.L259
	move	$3,$20

	.align	3
.L261:
	sd	$23,0($sp)
	sd	$fp,8($sp)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	sd	$20,16($sp)
	sd	$22,24($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bltz	$2,.L259
	move	$3,$20

.L265:
	move	$3,$23
	move	$22,$fp
.L259:
	dmtc1	$3,$f0
	dmtc1	$22,$f2
	ld	$31,104($sp)
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
	beqz	$4,.L274
	daddiu	$7,$7,%lo(%neg(%gp_rel(l64a)))

	move	$3,$4
	ld	$2,%got_page(s.0)($7)
	daddiu	$2,$2,%got_ofst(s.0)
	move	$5,$2
	ld	$6,%got_page(digits)($7)
	daddiu	$6,$6,%got_ofst(digits)
	.align	3
.L273:
	andi	$4,$3,0x3f
	daddu	$4,$6,$4
	lbu	$4,0($4)
	sb	$4,0($5)
	dext	$3,$3,6,26
	bnez	$3,.L273
	daddiu	$5,$5,1

.L272:
	jr	$31
	sb	$0,0($5)

	.align	3
.L274:
	ld	$2,%got_page(s.0)($7)
	daddiu	$2,$2,%got_ofst(s.0)
	b	.L272
	move	$5,$2

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
	addiu	$4,$4,-1
	dext	$4,$4,0,32
	ld	$2,%got_page(seed)($3)
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
	daddiu	$5,$5,%lo(%neg(%gp_rel(rand)))
	ld	$3,%got_page(seed)($5)
	ld	$4,%got_ofst(seed)($3)
	li	$2,1481703424			# 0x58510000
	ori	$2,$2,0xf42d
	dsll	$2,$2,16
	ori	$2,$2,0x4c95
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
	beqzc	$5,.L288
	ld	$2,0($5)
	sd	$2,0($4)
	sd	$5,8($4)
	sd	$4,0($5)
	ld	$2,0($4)
	beqzc	$2,.L289
	sd	$4,8($2)
.L289:
	jrc	$31
	.align	3
.L288:
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
	beqzc	$2,.L291
	ld	$3,8($4)
	sd	$3,8($2)
.L291:
	ld	$2,8($4)
	beqzc	$2,.L300
	ld	$3,0($4)
	sd	$3,0($2)
.L300:
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
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$28,72($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	move	$19,$4
	move	$fp,$5
	move	$23,$6
	ld	$22,0($6)
	beqz	$22,.L302
	move	$18,$7

	move	$20,$8
	move	$16,$5
	move	$17,$0
	.align	3
.L304:
	move	$21,$16
	move	$5,$16
	move	$25,$20
	jalr	$25
	move	$4,$19

	beqz	$2,.L301
	daddiu	$17,$17,1

	bne	$22,$17,.L304
	daddu	$16,$16,$18

.L302:
	daddiu	$2,$22,1
	sd	$2,0($23)
	dmult	$18,$22
	mflo	$4
	move	$6,$18
	move	$5,$19
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$fp,$4

	move	$21,$2
.L301:
	move	$2,$21
	ld	$31,88($sp)
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
	ld	$21,0($6)
	beqz	$21,.L314
	move	$18,$4

	move	$20,$7
	move	$19,$8
	move	$16,$5
	move	$17,$0
	.align	3
.L316:
	move	$22,$16
	move	$5,$16
	move	$25,$19
	jalr	$25
	move	$4,$18

	beqz	$2,.L313
	daddiu	$17,$17,1

	bne	$21,$17,.L316
	daddu	$16,$16,$20

.L314:
	move	$22,$0
.L313:
	move	$2,$22
	ld	$31,72($sp)
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
	bltz	$4,.L329
	nop

	jr	$31
	move	$2,$4

	.align	3
.L329:
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
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(atoi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoi)))
	move	$16,$4
	b	.L331
	ld	$18,%got_disp(isspace)($28)

	.align	3
.L332:
	daddiu	$16,$16,1
.L331:
	lb	$17,0($16)
	move	$25,$18
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	move	$4,$17

	bnez	$2,.L332
	li	$3,43			# 0x2b

	beq	$17,$3,.L338
	li	$3,45			# 0x2d

	bne	$17,$3,.L334
	move	$5,$0

	li	$5,1			# 0x1
.L333:
	daddiu	$16,$16,1
.L334:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$4,$3,10
	beqz	$4,.L336
	sll	$4,$2,2

	.align	3
.L343:
	addu	$4,$4,$2
	sll	$4,$4,1
	daddiu	$16,$16,1
	seb	$3,$3
	subu	$2,$4,$3
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$4,$3,10
	bnez	$4,.L343
	sll	$4,$2,2

.L336:
	bnez	$5,.L344
	ld	$31,40($sp)

	subu	$2,$0,$2
.L344:
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
	.align	3
.L338:
	b	.L333
	move	$5,$0

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
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(atol)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atol)))
	move	$16,$4
	b	.L346
	ld	$18,%got_disp(isspace)($28)

	.align	3
.L347:
	daddiu	$16,$16,1
.L346:
	lb	$17,0($16)
	move	$25,$18
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	move	$4,$17

	bnez	$2,.L347
	li	$3,43			# 0x2b

	beq	$17,$3,.L348
	li	$3,45			# 0x2d

	bne	$17,$3,.L349
	nop

	li	$2,1			# 0x1
.L348:
	daddiu	$16,$16,1
.L349:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$4,$3,10
	beqz	$4,.L351
	move	$5,$0

	dsll	$4,$5,2
	.align	3
.L357:
	daddu	$4,$4,$5
	dsll	$4,$4,1
	daddiu	$16,$16,1
	seb	$3,$3
	dsubu	$5,$4,$3
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$4,$3,10
	bnez	$4,.L357
	dsll	$4,$5,2

.L351:
	bnez	$2,.L358
	move	$2,$5

	dsubu	$5,$0,$5
	move	$2,$5
.L358:
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
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
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(atoll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoll)))
	move	$16,$4
	b	.L360
	ld	$18,%got_disp(isspace)($28)

	.align	3
.L361:
	daddiu	$16,$16,1
.L360:
	lb	$17,0($16)
	move	$25,$18
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	move	$4,$17

	bnez	$2,.L361
	li	$3,43			# 0x2b

	beq	$17,$3,.L362
	li	$3,45			# 0x2d

	bne	$17,$3,.L363
	nop

	li	$2,1			# 0x1
.L362:
	daddiu	$16,$16,1
.L363:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$4,$3,10
	beqz	$4,.L365
	move	$5,$0

	dsll	$4,$5,2
	.align	3
.L371:
	daddu	$4,$4,$5
	dsll	$4,$4,1
	daddiu	$16,$16,1
	seb	$3,$3
	dsubu	$5,$4,$3
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$4,$3,10
	bnez	$4,.L371
	dsll	$4,$5,2

.L365:
	bnez	$2,.L372
	move	$2,$5

	dsubu	$5,$0,$5
	move	$2,$5
.L372:
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
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
	beqz	$6,.L374
	sd	$16,8($sp)

	move	$20,$4
	move	$19,$5
	move	$16,$6
	move	$18,$7
	b	.L377
	move	$21,$8

	.align	3
.L378:
	move	$16,$22
.L375:
	beqz	$16,.L373
	move	$17,$0

.L377:
	dsrl	$22,$16,1
	dmult	$22,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$20

	bltz	$2,.L378
	nop

	blez	$2,.L373
	daddu	$19,$17,$18

	daddiu	$16,$16,-1
	b	.L375
	dsubu	$16,$16,$22

	.align	3
.L374:
	move	$17,$0
.L373:
	move	$2,$17
	ld	$31,72($sp)
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
	sd	$31,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sll	$6,$6,0
	beqz	$6,.L385
	sd	$16,0($sp)

	move	$22,$4
	move	$19,$5
	move	$18,$7
	move	$21,$8
	move	$20,$9
	b	.L388
	move	$16,$6

	.align	3
.L387:
	beqz	$23,.L385
	move	$16,$23

.L388:
	sra	$23,$16,1
	dsra	$2,$16,1
	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$6,$20
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	beqzc	$2,.L384
	blez	$2,.L387
	nop

	daddu	$19,$17,$18
	addiu	$16,$16,-1
	b	.L387
	sra	$23,$16,1

	.align	3
.L385:
	move	$17,$0
.L384:
	move	$2,$17
	ld	$31,72($sp)
	ld	$23,56($sp)
	ld	$22,48($sp)
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
	daddiu	$sp,$sp,-16
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$3
	move	$2,$0
	dext	$3,$3,0,32
	dins	$2,$3,32,32
	dext	$4,$4,0,32
	dins	$2,$4,0,32
	jr	$31
	daddiu	$sp,$sp,16

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
	bltz	$4,.L402
	move	$2,$4

.L400:
	jrc	$31
	.align	3
.L402:
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
	daddiu	$sp,$sp,-16
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
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
	.set	micromips
	.ent	labs
	.type	labs, @function
labs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L408
	move	$2,$4

.L406:
	jrc	$31
	.align	3
.L408:
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
	daddiu	$sp,$sp,-16
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
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
	.set	micromips
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L414
	move	$2,$4

.L412:
	jrc	$31
	.align	3
.L414:
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
	daddiu	$sp,$sp,-16
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
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
	beqzc	$3,.L423
	.align	3
.L418:
	beq	$5,$3,.L427
	nop

	daddiu	$4,$4,4
	lw	$3,0($4)
	bnezc	$3,.L418
.L423:
	jr	$31
	move	$2,$0

	.align	3
.L427:
	beqz	$3,.L423
	move	$2,$4

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
	bne	$2,$3,.L430
	nop

	.align	3
.L429:
	beqzc	$2,.L430
	beqz	$3,.L430
	daddiu	$4,$4,4

	daddiu	$5,$5,4
	lw	$2,0($4)
	lw	$3,0($5)
	beq	$2,$3,.L429
	nop

.L430:
	slt	$4,$2,$3
	bnezc	$4,.L433
	jr	$31
	slt	$2,$3,$2

	.align	3
.L433:
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
.L440:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$6,-4($5)
	bnez	$6,.L440
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
	beqz	$2,.L444
	move	$2,$4

	.align	3
.L445:
	daddiu	$2,$2,4
	lw	$3,0($2)
	bnezc	$3,.L445
.L444:
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
	beqzc	$6,.L454
	.align	3
.L450:
	lw	$2,0($4)
	lw	$3,0($5)
	bne	$3,$2,.L451
	nop

	beqzc	$2,.L451
	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	bnez	$6,.L450
	daddiu	$5,$5,4

.L454:
	jr	$31
	move	$2,$0

	.align	3
.L451:
	beqzc	$6,.L454
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$4,$2,$3
	bnezc	$4,.L455
	jr	$31
	slt	$2,$3,$2

	.align	3
.L455:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

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
	beqzc	$6,.L469
	.align	3
.L464:
	lw	$2,0($4)
	beq	$2,$5,.L473
	nop

	daddiu	$6,$6,-1
	bnez	$6,.L464
	daddiu	$4,$4,4

.L469:
	jr	$31
	move	$2,$0

	.align	3
.L473:
	beqz	$6,.L469
	move	$2,$4

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
	beqzc	$6,.L479
	.align	3
.L475:
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L488
	daddiu	$4,$4,4

	daddiu	$6,$6,-1
	bnez	$6,.L475
	daddiu	$5,$5,4

.L479:
	jr	$31
	move	$2,$0

	.align	3
.L488:
	beqzc	$6,.L479
	move	$2,$3
	lw	$3,0($5)
	slt	$4,$2,$3
	bnezc	$4,.L480
	jr	$31
	slt	$2,$3,$2

	.align	3
.L480:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

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
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(wmemcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(wmemcpy)))
	beqz	$6,.L490
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L490:
	move	$2,$16
	ld	$31,24($sp)
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
	beq	$4,$5,.L510
	move	$2,$4

	dsubu	$4,$4,$5
	dsll	$7,$6,2
	sltu	$4,$4,$7
	bnez	$4,.L497
	daddiu	$3,$6,-1

	move	$7,$2
	beqz	$6,.L510
	li	$8,-1			# 0xffffffffffffffff

	.align	3
.L498:
	daddiu	$5,$5,4
	daddiu	$7,$7,4
	lw	$4,-4($5)
	daddiu	$3,$3,-1
	bne	$3,$8,.L498
	sw	$4,-4($7)

.L510:
	jrc	$31
	.align	3
.L497:
	beqz	$6,.L510
	dsll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
	.align	3
.L499:
	daddu	$4,$5,$3
	lw	$6,0($4)
	daddu	$4,$2,$3
	daddiu	$3,$3,-4
	bne	$3,$7,.L499
	sw	$6,0($4)

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
	beqz	$6,.L519
	move	$2,$4

	daddiu	$3,$6,-1
	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
	.align	3
.L513:
	daddiu	$6,$6,4
	daddiu	$3,$3,-1
	bne	$3,$7,.L513
	sw	$5,-4($6)

.L519:
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
	beqz	$2,.L521
	daddu	$2,$4,$6

	beqz	$6,.L535
	daddu	$5,$5,$6

	.align	3
.L523:
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	lb	$3,0($2)
	bne	$4,$2,.L523
	sb	$3,0($5)

.L535:
	jrc	$31
	.align	3
.L521:
	beq	$4,$5,.L534
	nop

	beqz	$6,.L535
	daddu	$6,$4,$6

	.align	3
.L524:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
	lb	$2,-1($4)
	bne	$6,$4,.L524
	sb	$2,-1($5)

.L534:
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
	sll	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0xf
	srl	$4,$4,$5
	or	$2,$2,$4
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
	srl	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0xf
	sll	$4,$4,$5
	or	$2,$2,$4
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
	sll	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0x7
	srl	$4,$4,$5
	or	$2,$2,$4
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
	srl	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0x7
	sll	$4,$4,$5
	or	$2,$2,$4
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
	li	$6,32			# 0x20
	srl	$5,$4,$3
	.align	3
.L568:
	andi	$5,$5,0x1
	addiu	$2,$3,1
	bnez	$5,.L569
	move	$3,$2

	bne	$6,$2,.L568
	srl	$5,$4,$3

	move	$2,$0
.L569:
	jrc	$31
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
	beqz	$4,.L578
	move	$2,$0

	andi	$2,$4,0x1
	bnezc	$2,.L577
	li	$2,1			# 0x1
	.align	3
.L572:
	dsra	$4,$4,1
	andi	$3,$4,0x1
	beqz	$3,.L572
	addiu	$2,$2,1

.L578:
	jrc	$31
.L577:
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
	bc1t	$fcc0,.L582
	ld	$3,%got_page(.LC1)($4)

	lwc1	$f0,%got_ofst(.LC1)($3)
	c.lt.s	$fcc1,$f0,$f12
	bc1t	$fcc1,.L584
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

	.align	3
.L582:
	li	$2,1			# 0x1
.L584:
	jrc	$31
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
	bc1t	$fcc0,.L588
	ld	$3,%got_page(.LC3)($4)

	ldc1	$f0,%got_ofst(.LC3)($3)
	c.lt.d	$fcc1,$f0,$f12
	bc1t	$fcc1,.L590
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

	.align	3
.L588:
	li	$2,1			# 0x1
.L590:
	jrc	$31
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
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	dmfc1	$3,$f13
	dmfc1	$2,$f12
	move	$17,$2
	move	$16,$3
	ld	$25,%call16(__lttf2)($28)
	ld	$2,%got_page(.LC4)($28)
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC4)($2)

	bltz	$2,.L596
	li	$2,1			# 0x1

	ld	$25,%call16(__gttf2)($28)
	ld	$2,%got_page(.LC5)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	ldc1	$f14,%got_ofst(.LC5)($2)
	dmtc1	$16,$f13
	.reloc	1f,R_MICROMIPS_JALR,__gttf2
1:	jalr	$25
	dmtc1	$17,$f12

	slt	$2,$0,$2
.L592:
	.align	3
.L596:
	ld	$31,40($sp)
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
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_Qp_itoq)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_Qp_itoq)))
	move	$16,$4
	ld	$25,%call16(__extenddftf2)($28)
	dmtc1	$5,$f0
	.reloc	1f,R_MICROMIPS_JALR,__extenddftf2
1:	jalr	$25
	cvt.d.w	$f12,$f0

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
	bc1t	$fcc0,.L617
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f1,$f12
	bc1t	$fcc1,.L617
	lui	$3,%hi(%neg(%gp_rel(ldexpf)))

	daddu	$3,$3,$25
	bltz	$5,.L615
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexpf)))

	ld	$2,%got_page(.LC6)($3)
	b	.L603
	lwc1	$f1,%got_ofst(.LC6)($2)

	.align	3
.L615:
	ld	$2,%got_page(.LC7)($3)
	b	.L603
	lwc1	$f1,%got_ofst(.LC7)($2)

	.align	3
.L616:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L617
	mul.s	$f1,$f1,$f1
.L603:
	andi	$2,$5,0x1
	beqz	$2,.L616
	srl	$2,$5,31

	b	.L616
	mul.s	$f0,$f0,$f1

.L617:
	jrc	$31
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
	bc1t	$fcc0,.L636
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f1,$f12
	bc1t	$fcc1,.L636
	lui	$3,%hi(%neg(%gp_rel(ldexp)))

	daddu	$3,$3,$25
	bltz	$5,.L634
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexp)))

	ld	$2,%got_page(.LC8)($3)
	b	.L622
	ldc1	$f1,%got_ofst(.LC8)($2)

	.align	3
.L634:
	ld	$2,%got_page(.LC9)($3)
	b	.L622
	ldc1	$f1,%got_ofst(.LC9)($2)

	.align	3
.L635:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L636
	mul.d	$f1,$f1,$f1
.L622:
	andi	$2,$5,0x1
	beqz	$2,.L635
	srl	$2,$5,31

	b	.L635
	mul.d	$f0,$f0,$f1

.L636:
	jrc	$31
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
	sd	$31,136($sp)
	sd	$fp,128($sp)
	sd	$28,120($sp)
	sd	$23,112($sp)
	sd	$22,104($sp)
	sd	$21,96($sp)
	sd	$20,88($sp)
	sd	$19,80($sp)
	sd	$18,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	dmfc1	$5,$f13
	dmfc1	$4,$f12
	move	$17,$4
	move	$16,$5
	move	$fp,$6
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$5,$f15
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$4,$f14

	bnez	$2,.L638
	ld	$25,%call16(__addtf3)($28)

	dmtc1	$16,$f15
	dmtc1	$17,$f14
	sd	$17,0($sp)
	sd	$16,8($sp)
	ldc1	$f13,8($sp)
	.reloc	1f,R_MICROMIPS_JALR,__addtf3
1:	jalr	$25
	ldc1	$f12,0($sp)

	ld	$25,%call16(__netf2)($28)
	sd	$17,16($sp)
	sd	$16,24($sp)
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	sdc1	$f0,32($sp)
	sdc1	$f2,40($sp)
	ldc1	$f13,40($sp)
	.reloc	1f,R_MICROMIPS_JALR,__netf2
1:	jalr	$25
	ldc1	$f12,32($sp)

	beqz	$2,.L653
	dmtc1	$17,$f0

	bltz	$fp,.L652
	ld	$2,%got_page(.LC10)($28)

	ld	$21,%got_ofst(.LC10+8)($2)
	b	.L642
	ld	$20,%got_ofst(.LC10)($2)

	.align	3
.L652:
	ld	$2,%got_page(.LC11)($28)
	ld	$21,%got_ofst(.LC11+8)($2)
	b	.L642
	ld	$20,%got_ofst(.LC11)($2)

	.align	3
.L641:
	srl	$2,$fp,31
	.align	3
.L654:
	addu	$2,$2,$fp
	sra	$fp,$2,1
	beqz	$fp,.L638
	ld	$25,%call16(__multf3)($28)

	dmtc1	$21,$f15
	dmtc1	$20,$f14
	dmtc1	$21,$f13
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$20,$f12

	dmfc1	$3,$f0
	dmfc1	$2,$f2
	move	$21,$2
	move	$20,$3
.L642:
	andi	$2,$fp,0x1
	beqz	$2,.L654
	srl	$2,$fp,31

	ld	$25,%call16(__multf3)($28)
	dmtc1	$21,$f15
	dmtc1	$20,$f14
	dmtc1	$16,$f13
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$17,$f12

	dmfc1	$17,$f0
	b	.L641
	dmfc1	$16,$f2

	.align	3
.L638:
	dmtc1	$17,$f0
	.align	3
.L653:
	dmtc1	$16,$f2
	ld	$31,136($sp)
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
	beqz	$6,.L663
	move	$2,$4

	daddu	$6,$5,$6
	move	$3,$4
	.align	3
.L657:
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	lbu	$7,-1($3)
	lbu	$8,-1($5)
	xor	$7,$7,$8
	bne	$6,$5,.L657
	sb	$7,-1($3)

.L663:
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
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(strncat)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strncat)))
	move	$18,$4
	move	$17,$5
	ld	$25,%got_disp(strlen)($28)
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalr	$25
	move	$16,$6

	beqz	$16,.L670
	daddu	$2,$18,$2

	.align	3
.L665:
	lb	$3,0($17)
	beqz	$3,.L675
	sb	$3,0($2)

	daddiu	$17,$17,1
	daddiu	$16,$16,-1
	bnez	$16,.L665
	daddiu	$2,$2,1

	b	.L668
	sb	$0,0($2)

	.align	3
.L675:
	bnezc	$16,.L668
.L670:
	sb	$0,0($2)
.L668:
	move	$2,$18
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
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
	beqz	$5,.L687
	move	$2,$0

	daddu	$3,$4,$2
.L685:
	lb	$3,0($3)
	bnezc	$3,.L679
.L676:
.L687:
	jrc	$31
	.align	3
.L679:
	daddiu	$2,$2,1
	bne	$5,$2,.L685
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
	beqz	$7,.L693
	move	$2,$4

	move	$3,$5
	.align	3
.L692:
	lb	$6,0($3)
	beqzc	$6,.L697
	bne	$6,$7,.L692
	daddiu	$3,$3,1

.L690:
	jrc	$31
	.align	3
.L697:
	daddiu	$2,$2,1
	lb	$7,0($2)
	bnez	$7,.L692
	move	$3,$5

.L693:
	jr	$31
	move	$2,$0

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
	b	.L700
	move	$2,$0

	.align	3
.L699:
	beqz	$3,.L705
	daddiu	$4,$4,1

.L700:
	lb	$3,0($4)
	bne	$3,$5,.L699
	nop

	b	.L699
	move	$2,$4

.L705:
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
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(strstr)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strstr)))
	move	$16,$4
	move	$17,$5
	ld	$25,%got_disp(strlen)($28)
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalr	$25
	move	$4,$5

	beqz	$2,.L706
	move	$18,$2

	lb	$20,0($17)
	ld	$19,%got_disp(strchr)($28)
	ld	$21,%got_disp(strncmp)($28)
	.align	3
.L708:
	move	$5,$20
	move	$25,$19
	.reloc	1f,R_MICROMIPS_JALR,strchr
1:	jalr	$25
	move	$4,$16

	beqz	$2,.L706
	move	$16,$2

	move	$6,$18
	move	$5,$17
	move	$25,$21
	.reloc	1f,R_MICROMIPS_JALR,strncmp
1:	jalr	$25
	move	$4,$16

	beqz	$2,.L715
	move	$2,$16

	b	.L708
	daddiu	$16,$16,1

	.align	3
.L706:
	move	$2,$16
	.align	3
.L715:
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	64
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
	daddiu	$sp,$sp,-16
	dmtc1	$0,$f0
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L726
	sdc1	$f12,0($sp)

	dmtc1	$0,$f0
.L728:
	ldc1	$f1,0($sp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L720
	nop

	c.lt.d	$fcc3,$f13,$f0
	bc1t	$fcc3,.L727
	li	$2,-1			# 0xffffffffffffffff

.L720:
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L726:
	c.lt.d	$fcc1,$f0,$f13
	bc1f	$fcc1,.L728
	dmtc1	$0,$f0

	li	$2,-1			# 0xffffffffffffffff
.L727:
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	b	.L720
	sd	$2,0($sp)

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
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$28,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(memmem)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(memmem)))
	beqz	$7,.L733
	move	$16,$4

	sltu	$2,$5,$7
	bnez	$2,.L735
	dsubu	$17,$5,$7

	daddu	$17,$4,$17
	sltu	$2,$17,$4
	bnez	$2,.L735
	daddiu	$21,$7,-1

	lb	$19,0($6)
	daddiu	$20,$6,1
	b	.L732
	ld	$22,%got_disp(memcmp)($28)

	.align	3
.L731:
	sltu	$2,$17,$16
	bnez	$2,.L729
	move	$18,$0

.L732:
	lb	$2,0($16)
	move	$18,$16
	bne	$2,$19,.L731
	daddiu	$16,$16,1

	move	$6,$21
	move	$5,$20
	move	$25,$22
	.reloc	1f,R_MICROMIPS_JALR,memcmp
1:	jalr	$25
	move	$4,$16

	bnez	$2,.L731
	move	$2,$18

	b	.L742
	ld	$31,72($sp)

	.align	3
.L733:
	b	.L729
	move	$18,$4

	.align	3
.L735:
	move	$18,$0
.L729:
	move	$2,$18
	ld	$31,72($sp)
.L742:
	ld	$28,64($sp)
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
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(mempcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	move	$16,$6

	daddu	$2,$2,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
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
	daddiu	$sp,$sp,-16
	lui	$7,%hi(%neg(%gp_rel(frexp)))
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(frexp)))
	dmtc1	$0,$f0
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L770
	sdc1	$f12,0($sp)

	move	$6,$0
.L746:
	ld	$3,%got_page(.LC12)($7)
	ldc1	$f0,%got_ofst(.LC12)($3)
	ldc1	$f1,0($sp)
	c.le.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L767
	move	$2,$0

	ld	$4,%got_page(.LC9)($7)
	ldc1	$f1,%got_ofst(.LC9)($4)
	.align	3
.L750:
	addiu	$2,$2,1
	ldc1	$f2,0($sp)
	mul.d	$f2,$f2,$f1
	c.le.d	$fcc2,$f0,$f2
	bc1t	$fcc2,.L750
	sdc1	$f2,0($sp)

.L751:
	beqz	$6,.L754
	sw	$2,0($5)

	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	sd	$2,0($sp)
.L754:
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L770:
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	sd	$2,0($sp)
	b	.L746
	li	$6,1			# 0x1

	.align	3
.L767:
	ld	$4,%got_page(.LC9)($7)
	ldc1	$f0,%got_ofst(.LC9)($4)
	ldc1	$f1,0($sp)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L768
	dmtc1	$0,$f0

	c.eq.d	$fcc4,$f1,$f0
	bc1t	$fcc4,.L751
	move	$2,$0

	ldc1	$f0,%got_ofst(.LC9)($4)
	.align	3
.L753:
	addiu	$2,$2,-1
	ldc1	$f1,0($sp)
	add.d	$f1,$f1,$f1
	c.lt.d	$fcc5,$f1,$f0
	bc1t	$fcc5,.L753
	sdc1	$f1,0($sp)

	b	.L751
	nop

	.align	3
.L768:
	b	.L751
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
	beqz	$4,.L778
	move	$2,$0

	.align	3
.L773:
	andi	$3,$4,0x1
	dsubu	$3,$0,$3
	and	$3,$3,$5
	daddu	$2,$2,$3
	dsrl	$4,$4,1
	bnez	$4,.L773
	dsll	$5,$5,1

.L778:
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
	beqz	$2,.L795
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
	.align	3
.L780:
	bltz	$5,.L781
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beqz	$7,.L781
	sll	$3,$3,1

	addiu	$2,$2,-1
	bnezc	$2,.L780
.L789:
	move	$2,$0
.L783:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L781:
	beqzc	$3,.L789
.L795:
	b	.L785
	move	$2,$0

	.align	3
.L784:
	dext	$3,$3,1,31
	beqz	$3,.L783
	dext	$5,$5,1,31

.L785:
	sltu	$7,$4,$5
	bnezc	$7,.L784
	subu	$4,$4,$5
	b	.L784
	or	$2,$2,$3

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
	beq	$4,$3,.L799
	xor	$2,$4,$3

	sll	$2,$2,8
	clz	$2,$2
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L799:
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
	beq	$4,$3,.L803
	xor	$2,$4,$3

	dclz	$2,$2
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L803:
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
	beqz	$4,.L812
	move	$2,$0

	.align	3
.L807:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$3,$2
	dext	$4,$4,1,31
	bnez	$4,.L807
	sll	$5,$5,1

.L812:
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
	dext	$9,$6,3,29
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$3,$4,$5
	bnez	$3,.L814
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bnezc	$3,.L814
	beqz	$6,.L831
	addiu	$3,$6,-1

	dext	$3,$3,0,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L820:
	lb	$3,0($2)
	sb	$3,0($4)
	move	$3,$2
	daddiu	$2,$2,-1
	bne	$5,$3,.L820
	daddiu	$4,$4,-1

.L831:
	jrc	$31
	.align	3
.L814:
	beqz	$9,.L817
	move	$3,$5

	move	$7,$4
	dsll	$9,$9,3
	daddu	$9,$9,$5
	.align	3
.L818:
	ld	$8,0($3)
	sd	$8,0($7)
	daddiu	$3,$3,8
	bne	$3,$9,.L818
	daddiu	$7,$7,8

.L817:
	sltu	$3,$2,$6
	beqz	$3,.L831
	dext	$2,$2,0,32

	daddu	$3,$5,$2
	.align	3
.L829:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L829
	daddu	$3,$5,$2

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
	bnez	$2,.L833
	dext	$8,$6,1,31

	dext	$2,$6,0,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	bnezc	$2,.L833
	beqz	$6,.L850
	addiu	$2,$6,-1

	dext	$2,$2,0,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	.align	3
.L838:
	lb	$4,0($3)
	sb	$4,0($2)
	move	$4,$3
	daddiu	$3,$3,-1
	bne	$5,$4,.L838
	daddiu	$2,$2,-1

.L850:
	jrc	$31
	.align	3
.L833:
	beqz	$8,.L836
	move	$2,$5

	move	$3,$4
	dsll	$8,$8,1
	daddu	$8,$8,$5
	.align	3
.L837:
	lh	$7,0($2)
	sh	$7,0($3)
	daddiu	$2,$2,2
	bne	$2,$8,.L837
	daddiu	$3,$3,2

.L836:
	andi	$2,$6,0x1
	beqz	$2,.L850
	addiu	$6,$6,-1

	dext	$6,$6,0,32
	daddu	$5,$5,$6
	lb	$3,0($5)
	daddu	$2,$4,$6
	jr	$31
	sb	$3,0($2)

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
	dext	$9,$6,2,30
	li	$2,-4			# 0xfffffffffffffffc
	sltu	$3,$4,$5
	bnez	$3,.L852
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bnezc	$3,.L852
	beqz	$6,.L869
	addiu	$3,$6,-1

	dext	$3,$3,0,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L858:
	lb	$3,0($2)
	sb	$3,0($4)
	move	$3,$2
	daddiu	$2,$2,-1
	bne	$5,$3,.L858
	daddiu	$4,$4,-1

.L869:
	jrc	$31
	.align	3
.L852:
	beqz	$9,.L855
	move	$3,$5

	move	$7,$4
	dsll	$9,$9,2
	daddu	$9,$9,$5
	.align	3
.L856:
	lw	$8,0($3)
	sw	$8,0($7)
	daddiu	$3,$3,4
	bne	$3,$9,.L856
	daddiu	$7,$7,4

.L855:
	sltu	$3,$2,$6
	beqz	$3,.L869
	dext	$2,$2,0,32

	daddu	$3,$5,$2
	.align	3
.L867:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L867
	daddu	$3,$5,$2

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
	bltz	$4,.L878
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.align	3
.L878:
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
	bltz	$4,.L882
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.align	3
.L882:
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
.L891:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bnezc	$3,.L892
	addiu	$2,$2,1
	bne	$2,$6,.L891
	subu	$3,$5,$2

.L892:
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
.L898:
	andi	$3,$3,0x1
	bnezc	$3,.L899
	addiu	$2,$2,1
	bne	$2,$5,.L898
	sra	$3,$4,$2

.L899:
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
	bc1t	$fcc0,.L907
	li	$3,32768			# 0x8000

	trunc.l.s $f0,$f12
	jr	$31
	dmfc1	$2,$f0

	.align	3
.L907:
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
.L909:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,.L909
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
.L913:
	sra	$2,$4,$3
	andi	$2,$2,0x1
	addu	$2,$2,$5
	addiu	$3,$3,1
	bne	$3,$6,.L913
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
	beqz	$4,.L923
	move	$2,$0

	.align	3
.L918:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$3,$2
	dext	$4,$4,1,31
	bnez	$4,.L918
	sll	$5,$5,1

.L923:
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
	beqz	$4,.L932
	move	$2,$0

	beqzc	$5,.L931
	.align	3
.L926:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$3,$2
	dext	$5,$5,1,31
	bnez	$5,.L926
	sll	$4,$4,1

.L932:
	jrc	$31
.L931:
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
	beqz	$2,.L949
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
	.align	3
.L934:
	bltz	$5,.L935
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beqz	$7,.L935
	sll	$3,$3,1

	addiu	$2,$2,-1
	bnezc	$2,.L934
.L943:
	move	$2,$0
.L937:
	jr	$31
	movn	$2,$4,$6

	.align	3
.L935:
	beqzc	$3,.L943
.L949:
	b	.L939
	move	$2,$0

	.align	3
.L938:
	dext	$3,$3,1,31
	beqz	$3,.L937
	dext	$5,$5,1,31

.L939:
	sltu	$7,$4,$5
	bnezc	$7,.L938
	subu	$4,$4,$5
	b	.L938
	or	$2,$2,$3

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
	bc1t	$fcc0,.L954
	nop

	c.lt.s	$fcc1,$f13,$f12
	bc1t	$fcc1,.L956
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

	.align	3
.L954:
	li	$2,-1			# 0xffffffffffffffff
.L956:
	jrc	$31
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
	bc1t	$fcc0,.L960
	nop

	c.lt.d	$fcc1,$f13,$f12
	bc1t	$fcc1,.L962
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

	.align	3
.L960:
	li	$2,-1			# 0xffffffffffffffff
.L962:
	jrc	$31
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
	bltz	$5,.L982
	nop

	move	$7,$0
.L968:
	beqz	$5,.L969
	move	$2,$0

	li	$6,32			# 0x20
	andi	$3,$5,0x1
	.align	3
.L983:
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$3,$2
	dsra	$5,$5,1
	beqz	$5,.L969
	sll	$4,$4,1

	addiu	$6,$6,-1
	andi	$6,$6,0x00ff
	bnez	$6,.L983
	andi	$3,$5,0x1

.L969:
	beqzc	$7,.L984
	subu	$2,$0,$2
.L984:
	jrc	$31
	.align	3
.L982:
	subu	$5,$0,$5
	b	.L968
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
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__divsi3)))
	daddu	$28,$28,$25
	bltz	$4,.L994
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))

	move	$16,$0
.L986:
	bltz	$5,.L995
	nop

.L987:
	sll	$5,$5,0
	sll	$4,$4,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	move	$6,$0

	beqz	$16,.L985
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L985:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
	.align	3
.L994:
	dsubu	$4,$0,$4
	b	.L986
	li	$16,1			# 0x1

	.align	3
.L995:
	dsubu	$5,$0,$5
	b	.L987
	xori	$16,$16,0x1

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
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__modsi3)))
	daddu	$28,$28,$25
	bltz	$4,.L1005
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))

	move	$16,$0
.L997:
	bltz	$5,.L1006
	move	$2,$5

.L998:
	sll	$5,$2,0
	sll	$4,$4,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	li	$6,1			# 0x1

	beqz	$16,.L996
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L996:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
	.align	3
.L1005:
	dsubu	$4,$0,$4
	b	.L997
	li	$16,1			# 0x1

	.align	3
.L1006:
	b	.L998
	dsubu	$2,$0,$5

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
	beqz	$3,.L1025
	move	$2,$4

	li	$4,16			# 0x10
	li	$3,1			# 0x1
	seh	$7,$5
	.align	3
.L1026:
	bltz	$7,.L1009
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	sltu	$7,$5,$2
	beqz	$7,.L1009
	andi	$3,$3,0xffff

	addiu	$4,$4,-1
	bnez	$4,.L1026
	seh	$7,$5

.L1017:
	move	$4,$0
.L1011:
	jr	$31
	movz	$2,$4,$6

.L1025:
	b	.L1023
	li	$3,1			# 0x1

	.align	3
.L1009:
	beqzc	$3,.L1017
.L1023:
	b	.L1013
	move	$4,$0

	.align	3
.L1012:
	dsrl	$3,$3,1
	beqz	$3,.L1011
	dsrl	$5,$5,1

.L1013:
	sltu	$7,$2,$5
	bnezc	$7,.L1012
	subu	$2,$2,$5
	andi	$2,$2,0xffff
	or	$4,$4,$3
	b	.L1012
	andi	$4,$4,0xffff

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
	beqz	$3,.L1045
	move	$2,$4

	li	$4,64			# 0x40
	li	$3,1			# 0x1
	dsll	$8,$3,31
	and	$7,$5,$8
	.align	3
.L1046:
	bnezc	$7,.L1029
	dsll	$5,$5,1
	sltu	$7,$5,$2
	beqz	$7,.L1029
	dsll	$3,$3,1

	addiu	$4,$4,-1
	bnez	$4,.L1046
	and	$7,$5,$8

.L1037:
	move	$7,$0
.L1031:
	jr	$31
	movz	$2,$7,$6

.L1045:
	b	.L1043
	li	$3,1			# 0x1

	.align	3
.L1029:
	beqzc	$3,.L1037
.L1043:
	b	.L1033
	move	$7,$0

	.align	3
.L1032:
	dsrl	$3,$3,1
	beqz	$3,.L1031
	dsrl	$5,$5,1

.L1033:
	sltu	$4,$2,$5
	bnezc	$4,.L1032
	dsubu	$2,$2,$5
	b	.L1032
	or	$7,$7,$3

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
	beqz	$2,.L1048
	move	$3,$0

	sll	$4,$4,0
	sll	$5,$4,$5
.L1049:
	move	$2,$0
	dins	$2,$3,0,32
	jr	$31
	dins	$2,$5,32,32

	.align	3
.L1048:
	beqz	$5,.L1051
	subu	$6,$0,$5

	sll	$2,$4,0
	sll	$3,$2,$5
	srl	$2,$2,$6
	dsra	$4,$4,32
	sll	$5,$4,$5
	b	.L1049
	or	$5,$5,$2

	.align	3
.L1051:
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
	beqz	$2,.L1054
	dsll	$2,$5,$6

	jr	$31
	move	$3,$0

	.align	3
.L1054:
	beqzc	$6,.L1057
	dsll	$3,$5,$6
	subu	$2,$0,$6
	dsrl	$5,$5,$2
	dsll	$2,$4,$6
	jr	$31
	or	$2,$2,$5

	.align	3
.L1057:
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
	beqzc	$2,.L1060
	dsra	$4,$4,32
	sra	$3,$4,31
	sra	$5,$4,$5
.L1061:
	move	$2,$0
	dins	$2,$3,32,32
	jr	$31
	dins	$2,$5,0,32

	.align	3
.L1060:
	beqz	$5,.L1063
	subu	$6,$0,$5

	dsra	$2,$4,32
	sra	$3,$2,$5
	sll	$2,$2,$6
	sll	$4,$4,0
	srl	$5,$4,$5
	b	.L1061
	or	$5,$5,$2

	.align	3
.L1063:
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
	beqz	$2,.L1066
	dsra	$2,$4,63

	dsra	$5,$4,$6
.L1068:
	jr	$31
	move	$3,$5

	.align	3
.L1066:
	beqzc	$6,.L1069
	dsra	$2,$4,$6
	subu	$3,$0,$6
	dsll	$4,$4,$3
	dsrl	$5,$5,$6
	b	.L1068
	or	$5,$5,$4

	.align	3
.L1069:
	b	.L1068
	move	$2,$4

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
	li	$5,65536			# 0x10000
	sltu	$5,$4,$5
	dsll	$5,$5,4
	li	$2,16			# 0x10
	subu	$2,$2,$5
	srl	$3,$4,$2
	andi	$2,$3,0xff00
	sltu	$2,$2,1
	dsll	$2,$2,3
	li	$4,8			# 0x8
	subu	$4,$4,$2
	srl	$3,$3,$4
	daddu	$4,$2,$5
	andi	$2,$3,0xf0
	sltu	$2,$2,1
	dsll	$2,$2,2
	li	$5,4			# 0x4
	subu	$5,$5,$2
	srl	$3,$3,$5
	daddu	$5,$2,$4
	andi	$4,$3,0xc
	sltu	$4,$4,1
	dsll	$4,$4,1
	li	$2,2			# 0x2
	subu	$6,$2,$4
	srl	$3,$3,$6
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
	bnezc	$6,.L1083
	slt	$2,$3,$2
	bnez	$2,.L1084
	sll	$4,$4,0

	sll	$5,$5,0
	move	$3,$5
	sltu	$5,$4,$5
	bnezc	$5,.L1083
	sltu	$2,$3,$4
	bnezc	$2,.L1084
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1083:
	jr	$31
	move	$2,$0

	.align	3
.L1084:
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
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__aeabi_lcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_lcmp)))
	ld	$25,%got_disp(__cmpdi2)($28)
	.reloc	1f,R_MICROMIPS_JALR,__cmpdi2
1:	jalrs	$25
	nop

	addiu	$2,$2,-1
	ld	$31,8($sp)
	ld	$28,0($sp)
	jraddiusp	16
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
	bnez	$2,.L1092
	slt	$4,$6,$4

	bnezc	$4,.L1093
	sltu	$2,$5,$7
	bnez	$2,.L1092
	sltu	$5,$7,$5

	bnezc	$5,.L1093
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1092:
	jr	$31
	move	$2,$0

	.align	3
.L1093:
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
	andi	$2,$4,0xffff
	sltu	$2,$2,1
	dsll	$5,$2,4
	sll	$2,$2,4
	srl	$3,$4,$2
	andi	$2,$3,0xff
	sltu	$2,$2,1
	dsll	$4,$2,3
	sll	$2,$2,3
	srl	$3,$3,$2
	daddu	$4,$4,$5
	andi	$2,$3,0xf
	sltu	$2,$2,1
	dsll	$6,$2,2
	sll	$2,$2,2
	srl	$3,$3,$2
	daddu	$6,$6,$4
	andi	$4,$3,0x3
	sltu	$4,$4,1
	dsll	$5,$4,1
	sll	$4,$4,1
	srl	$3,$3,$4
	andi	$3,$3,0x3
	nor	$2,$0,$3
	andi	$2,$2,0x1
	srl	$3,$3,1
	li	$4,2			# 0x2
	subu	$4,$4,$3
	subu	$3,$0,$2
	and	$3,$3,$4
	addu	$2,$5,$6
	jr	$31
	addu	$2,$3,$2

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
	movn	$4,$0,$5
	daddiu	$2,$3,-1
	and	$2,$2,$5
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
	bnez	$5,.L1100
	dsubu	$2,$0,$5

	beqzc	$4,.L1102
	dsubu	$2,$0,$4
	and	$4,$4,$2
	dclz	$4,$4
	li	$2,63			# 0x3f
	subu	$2,$2,$4
	jr	$31
	addiu	$2,$2,65

	.align	3
.L1100:
	and	$5,$5,$2
	dclz	$5,$5
	li	$2,63			# 0x3f
	subu	$2,$2,$5
	jr	$31
	addiu	$2,$2,1

	.align	3
.L1102:
	jr	$31
	move	$2,$0

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
	beqz	$2,.L1105
	move	$3,$0

	dsra	$4,$4,32
	srl	$5,$4,$5
.L1106:
	move	$2,$0
	dins	$2,$3,32,32
	jr	$31
	dins	$2,$5,0,32

	.align	3
.L1105:
	beqz	$5,.L1108
	subu	$6,$0,$5

	dsra	$2,$4,32
	srl	$3,$2,$5
	sll	$2,$2,$6
	sll	$4,$4,0
	srl	$5,$4,$5
	b	.L1106
	or	$5,$5,$2

	.align	3
.L1108:
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
	beqz	$2,.L1111
	move	$2,$0

	dsrl	$5,$4,$6
.L1113:
	jr	$31
	move	$3,$5

	.align	3
.L1111:
	beqzc	$6,.L1114
	dsrl	$2,$4,$6
	subu	$3,$0,$6
	dsll	$4,$4,$3
	dsrl	$5,$5,$6
	b	.L1113
	or	$5,$5,$4

	.align	3
.L1114:
	b	.L1113
	move	$2,$4

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
	mul	$2,$6,$7
	dext	$3,$2,16,16
	dext	$4,$4,16,16
	mul	$8,$7,$4
	addu	$7,$8,$3
	andi	$2,$2,0xffff
	sll	$3,$7,16
	addu	$2,$2,$3
	dext	$3,$2,16,16
	dext	$5,$5,16,16
	mul	$8,$6,$5
	addu	$6,$8,$3
	andi	$2,$2,0xffff
	sll	$3,$6,16
	addu	$3,$2,$3
	move	$2,$0
	dins	$2,$3,0,32
	srl	$7,$7,16
	mul	$3,$4,$5
	addu	$4,$3,$7
	srl	$6,$6,16
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
	.frame	$sp,64,$31		# vars= 16, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	sd	$19,40($sp)
	sd	$18,32($sp)
	sd	$17,24($sp)
	sd	$16,16($sp)
	lui	$28,%hi(%neg(%gp_rel(__muldi3_compiler_rt)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__muldi3_compiler_rt)))
	move	$16,$4
	move	$17,$5
	sw	$4,0($sp)
	lw	$19,0($sp)
	sw	$5,4($sp)
	lw	$18,4($sp)
	move	$5,$18
	ld	$25,%got_disp(__muldsi3)($28)
	.reloc	1f,R_MICROMIPS_JALR,__muldsi3
1:	jalr	$25
	move	$4,$19

	dsra	$16,$16,32
	dsra	$17,$17,32
	mult	$17,$19
	madd	$16,$18
	mflo	$16
	dsra	$3,$2,32
	addu	$16,$16,$3
	dins	$2,$16,32,32
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jraddiusp	64
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
	mflo	$6
	mfhi	$7
	dins	$6,$7,32,32
	dsrl	$7,$6,32
	dsra	$4,$4,32
	multu	$3,$4
	mflo	$3
	mfhi	$8
	dins	$3,$8,32,32
	daddu	$3,$3,$7
	dext	$7,$3,0,32
	dsra	$5,$5,32
	multu	$2,$5
	mflo	$2
	mfhi	$8
	dins	$2,$8,32,32
	daddu	$2,$2,$7
	dext	$6,$6,0,32
	dsll	$7,$2,32
	daddu	$6,$6,$7
	dsrl	$3,$3,32
	multu	$4,$5
	mflo	$4
	mfhi	$5
	dins	$4,$5,32,32
	daddu	$3,$3,$4
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
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__multi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__multi3)))
	move	$19,$4
	move	$16,$5
	move	$18,$6
	move	$17,$7
	move	$5,$7
	ld	$25,%got_disp(__mulddi3)($28)
	.reloc	1f,R_MICROMIPS_JALR,__mulddi3
1:	jalr	$25
	move	$4,$16

	dmult	$17,$19
	mflo	$4
	dmult	$16,$18
	mflo	$5
	daddu	$4,$4,$5
	daddu	$2,$4,$2
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	48
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
	dsubu	$3,$0,$5
	sltu	$5,$0,$5
	dsubu	$2,$0,$4
	jr	$31
	dsubu	$2,$2,$5

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
	dsrl	$3,$4,1
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	daddiu	$2,$2,21845
	and	$2,$3,$2
	dsubu	$4,$4,$2
	dsrl	$3,$4,2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	daddiu	$2,$2,13107
	and	$3,$3,$2
	and	$4,$4,$2
	daddu	$3,$3,$4
	dsrl	$2,$3,4
	daddu	$3,$2,$3
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
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
	srl	$2,$4,1
	li	$3,1431633920			# 0x55550000
	addiu	$3,$3,21845
	and	$2,$2,$3
	subu	$4,$4,$2
	srl	$3,$4,2
	li	$2,858980352			# 0x33330000
	addiu	$2,$2,13107
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
	dsll	$3,$4,63
	dsrl	$2,$5,1
	or	$2,$2,$3
	dsrl	$6,$4,1
	li	$3,1431633920			# 0x55550000
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	daddiu	$3,$3,21845
	and	$6,$6,$3
	and	$2,$2,$3
	dsubu	$2,$5,$2
	sltu	$5,$5,$2
	dsubu	$4,$4,$6
	dsubu	$4,$4,$5
	dsll	$3,$4,62
	dsrl	$5,$2,2
	or	$5,$5,$3
	dsrl	$6,$4,2
	li	$3,858980352			# 0x33330000
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	daddiu	$3,$3,13107
	and	$6,$6,$3
	and	$5,$5,$3
	and	$4,$4,$3
	and	$2,$2,$3
	daddu	$2,$5,$2
	sltu	$5,$2,$5
	daddu	$3,$6,$4
	daddu	$4,$5,$3
	dsll	$5,$4,60
	dsrl	$3,$2,4
	or	$3,$3,$5
	dsrl	$5,$4,4
	daddu	$2,$3,$2
	sltu	$3,$2,$3
	daddu	$4,$5,$4
	daddu	$3,$3,$4
	li	$4,252641280			# 0xf0f0000
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	daddiu	$4,$4,3855
	and	$3,$3,$4
	and	$2,$2,$4
	daddu	$3,$3,$2
	dext	$2,$3,32,32
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
	move	$2,$5
	ld	$4,%got_page(.LC12)($6)
	b	.L1143
	ldc1	$f0,%got_ofst(.LC12)($4)

	.align	3
.L1150:
	addu	$2,$3,$2
	sra	$2,$2,1
	beqzc	$2,.L1142
	mul.d	$f12,$f12,$f12
.L1143:
	andi	$3,$2,0x1
	beqz	$3,.L1150
	srl	$3,$2,31

	b	.L1150
	mul.d	$f0,$f0,$f12

	.align	3
.L1142:
	bltz	$5,.L1149
	ldc1	$f1,%got_ofst(.LC12)($4)

.L1140:
	jrc	$31
	.align	3
.L1149:
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
	move	$2,$5
	ld	$4,%got_page(.LC14)($6)
	b	.L1154
	lwc1	$f0,%got_ofst(.LC14)($4)

	.align	3
.L1161:
	addu	$2,$3,$2
	sra	$2,$2,1
	beqzc	$2,.L1153
	mul.s	$f12,$f12,$f12
.L1154:
	andi	$3,$2,0x1
	beqz	$3,.L1161
	srl	$3,$2,31

	b	.L1161
	mul.s	$f0,$f0,$f12

	.align	3
.L1153:
	bltz	$5,.L1160
	lwc1	$f1,%got_ofst(.LC14)($4)

.L1151:
	jrc	$31
	.align	3
.L1160:
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
	bnezc	$6,.L1166
	sltu	$2,$3,$2
	bnez	$2,.L1167
	sll	$4,$4,0

	sll	$5,$5,0
	move	$3,$5
	sltu	$5,$4,$5
	bnezc	$5,.L1166
	sltu	$2,$3,$4
	bnezc	$2,.L1167
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1166:
	jr	$31
	move	$2,$0

	.align	3
.L1167:
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
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__aeabi_ulcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_ulcmp)))
	ld	$25,%got_disp(__ucmpdi2)($28)
	.reloc	1f,R_MICROMIPS_JALR,__ucmpdi2
1:	jalrs	$25
	nop

	addiu	$2,$2,-1
	ld	$31,8($sp)
	ld	$28,0($sp)
	jraddiusp	16
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
	bnez	$2,.L1175
	sltu	$4,$6,$4

	bnezc	$4,.L1176
	sltu	$2,$5,$7
	bnez	$2,.L1175
	sltu	$5,$7,$5

	bnezc	$5,.L1176
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L1175:
	jr	$31
	move	$2,$0

	.align	3
.L1176:
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
