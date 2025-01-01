	.file	1 "mini-libc.c"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.module	arch=mips3
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
	.set	nomicromips
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

	daddu	$5,$5,$6
	beq	$6,$0,.L21
	daddu	$3,$4,$6

	.align	3
.L9:
	lb	$4,-1($5)
	daddiu	$3,$3,-1
	daddiu	$5,$5,-1
	bne	$2,$3,.L9
	sb	$4,0($3)

.L21:
	jr	$31
	nop

	.align	3
.L7:
	beq	$4,$5,.L20
	nop

	beq	$6,$0,.L21
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
	bne	$7,$0,.L23
	andi	$6,$6,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L25:
	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	beq	$7,$0,.L27
	daddiu	$4,$4,1

.L23:
	lbu	$2,0($5)
	bne	$2,$6,.L25
	sb	$2,0($4)

	beql	$7,$0,.L36
	move	$2,$0

	jr	$31
	daddiu	$2,$4,1

	.align	3
.L27:
	move	$2,$0
.L36:
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
	bne	$6,$0,.L38
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

	.align	3
.L40:
	beq	$6,$0,.L43
	daddiu	$4,$4,1

.L38:
	lbu	$2,0($4)
	bnel	$2,$5,.L40
	daddiu	$6,$6,-1

	bne	$6,$0,.L48
	move	$2,$4

	.align	3
.L43:
	move	$2,$0
.L48:
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
	bnel	$6,$0,.L63
	lbu	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L52:
	daddiu	$4,$4,1
	beq	$6,$0,.L54
	daddiu	$5,$5,1

	lbu	$2,0($4)
.L63:
	lbu	$3,0($5)
	beql	$2,$3,.L52
	daddiu	$6,$6,-1

	beql	$6,$0,.L62
	move	$2,$0

	jr	$31
	subu	$2,$2,$3

	.align	3
.L54:
	move	$2,$0
.L62:
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
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(memcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(memcpy)))
	beq	$6,$0,.L65
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

.L65:
	move	$2,$16
	ld	$31,24($sp)
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
	daddu	$6,$4,$6
	daddiu	$4,$4,-1
	b	.L71
	andi	$5,$5,0x00ff

	.align	3
.L73:
	lbu	$3,0($6)
	beq	$3,$5,.L75
	daddiu	$6,$6,-1

.L71:
	bnel	$6,$4,.L73
	move	$2,$6

	move	$2,$0
.L75:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L85
	move	$2,$4

	daddu	$6,$4,$6
	move	$3,$4
	sb	$5,0($3)
	.align	3
.L84:
	daddiu	$3,$3,1
	bnel	$6,$3,.L84
	sb	$5,0($3)

.L85:
	jr	$31
	nop

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
	beq	$3,$0,.L94
	sb	$3,0($4)

	.align	3
.L88:
	lb	$3,1($5)
	daddiu	$5,$5,1
	daddiu	$2,$2,1
	bne	$3,$0,.L88
	sb	$3,0($2)

.L94:
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
	lb	$3,0($4)
	bne	$3,$0,.L96
	andi	$5,$5,0x00ff

.L105:
	jr	$31
	nop

	.align	3
.L98:
	beq	$3,$0,.L105
	daddiu	$2,$2,1

.L96:
	andi	$3,$3,0x00ff
	bnel	$3,$5,.L98
	lb	$3,1($2)

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
	b	.L108
	move	$2,$4

	.align	3
.L112:
	beq	$3,$0,.L111
	daddiu	$2,$2,1

.L108:
	lb	$3,0($2)
	bne	$3,$5,.L112
	nop

	jr	$31
	nop

	.align	3
.L111:
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
	lb	$2,0($4)
	lb	$3,0($5)
	beq	$2,$3,.L114
	nop

	b	.L119
	andi	$2,$2,0x00ff

	.align	3
.L116:
	lb	$3,1($5)
	daddiu	$4,$4,1
	bne	$2,$3,.L115
	daddiu	$5,$5,1

.L114:
	bnel	$2,$0,.L116
	lb	$2,1($4)

.L115:
	andi	$2,$2,0x00ff
.L119:
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
	beq	$2,$0,.L123
	move	$2,$4

	.align	3
.L122:
	lb	$5,1($2)
	bne	$5,$0,.L122
	daddiu	$2,$2,1

	jr	$31
	dsubu	$2,$2,$4

	.align	3
.L123:
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
	.set	nomicromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L131
	nop

	lbu	$2,0($4)
	beql	$2,$0,.L143
	lbu	$3,0($5)

	daddiu	$6,$6,-1
	b	.L129
	daddu	$6,$4,$6

	.align	3
.L142:
	beql	$4,$6,.L143
	lbu	$3,0($5)

	bnel	$3,$2,.L143
	lbu	$3,0($5)

	lbu	$2,1($4)
	daddiu	$4,$4,1
	beq	$2,$0,.L128
	daddiu	$5,$5,1

.L129:
	lbu	$3,0($5)
	bne	$3,$0,.L142
	nop

.L128:
	lbu	$3,0($5)
.L143:
	jr	$31
	subu	$2,$2,$3

	.align	3
.L131:
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
	bne	$2,$0,.L149
	li	$2,-2			# 0xfffffffffffffffe

	and	$6,$6,$2
	daddu	$6,$4,$6
	.align	3
.L146:
	lbu	$3,1($4)
	lbu	$2,0($4)
	daddiu	$4,$4,2
	sb	$3,0($5)
	sb	$2,1($5)
	bne	$4,$6,.L146
	daddiu	$5,$5,2

.L149:
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
	bne	$3,$0,.L161
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

	.align	3
.L161:
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
	beq	$4,$2,.L173
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

	.align	3
.L173:
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
	bne	$3,$0,.L184
	li	$2,1			# 0x1

	addiu	$3,$4,-127
	sltu	$3,$3,33
	beq	$3,$0,.L183
	addiu	$3,$4,-8232

.L184:
	jr	$31
	nop

	.align	3
.L183:
	sltu	$3,$3,2
	bne	$3,$0,.L184
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$2,$4,$2
	jr	$31
	sltu	$2,$2,3

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
	bne	$2,$0,.L195
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,.L192
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,.L192
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$3,$2,8192
	addu	$3,$4,$3
	sltu	$3,$3,8185
	bne	$3,$0,.L192
	li	$3,1048576			# 0x100000

	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,.L193
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

	.align	3
.L192:
	jr	$31
	li	$2,1			# 0x1

	.align	3
.L195:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

	.align	3
.L193:
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
	sltu	$3,$3,10
	bne	$3,$0,.L199
	ori	$4,$4,0x20

	addiu	$4,$4,-97
	jr	$31
	sltu	$2,$4,6

	.align	3
.L199:
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
	bc1t	.L206
	nop

	c.un.d	$f13,$f13
	nop
	bc1t	.L207
	nop

	c.lt.d	$f13,$f12
	nop
	bc1f	.L210
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

	.align	3
.L210:
	dmtc1	$0,$f0
	jr	$31
	nop

	.align	3
.L206:
	jr	$31
	mov.d	$f0,$f12

	.align	3
.L207:
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
	bc1t	.L215
	nop

	c.un.s	$f13,$f13
	nop
	bc1t	.L216
	nop

	c.lt.s	$f13,$f12
	nop
	bc1f	.L219
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

	.align	3
.L219:
	mtc1	$0,$f0
	jr	$31
	nop

	.align	3
.L215:
	jr	$31
	mov.s	$f0,$f12

	.align	3
.L216:
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
	daddiu	$sp,$sp,-16
	c.un.d	$f12,$f12
	nop
	bc1t	.L227
	sdc1	$f13,0($sp)

	dmfc1	$2,$f12
	c.un.d	$f13,$f13
	nop
	bc1t	.L228
	mov.d	$f0,$f13

	ld	$4,0($sp)
	dsrl	$3,$2,63
	dsrl	$4,$4,63
	beql	$3,$4,.L223
	ldc1	$f0,0($sp)

	beq	$3,$0,.L228
	nop

.L221:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L223:
	c.lt.d	$f12,$f0
	nop
	bc1t	.L221
	nop

.L228:
	dmtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L227:
	b	.L221
	ldc1	$f0,0($sp)

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
	daddiu	$sp,$sp,-16
	c.un.s	$f12,$f12
	nop
	bc1t	.L239
	swc1	$f13,0($sp)

	mfc1	$2,$f12
	c.un.s	$f13,$f13
	nop
	bc1t	.L240
	mov.s	$f0,$f13

	li	$5,-2147483648			# 0xffffffff80000000
	lw	$3,0($sp)
	and	$4,$2,$5
	and	$3,$3,$5
	beq	$4,$3,.L235
	move	$5,$4

	beq	$5,$0,.L240
	nop

.L233:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L235:
	lwc1	$f0,0($sp)
	c.lt.s	$f12,$f0
	nop
	bc1t	.L233
	nop

.L240:
	mtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L239:
	b	.L233
	lwc1	$f0,0($sp)

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
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$23,88($sp)
	sd	$22,80($sp)
	sd	$21,72($sp)
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
	dmfc1	$3,$f15
	dmfc1	$2,$f14
	move	$18,$8
	move	$19,$9
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$9,$f15
	nop
	dmtc1	$8,$f14
	dmtc1	$9,$f13
	nop
	dmtc1	$8,$f12
	move	$16,$2
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$17,$3

	bne	$2,$0,.L245
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$17,$f15
	nop
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	nop
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L252
	dsrl	$2,$18,63

	dsrl	$3,$16,63
	beql	$2,$3,.L247
	sd	$16,0($sp)

	beql	$2,$0,.L257
	move	$16,$18

.L245:
	dmtc1	$17,$f2
	dmtc1	$16,$f0
	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$23,88($sp)
	ld	$22,80($sp)
	ld	$21,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	ld	$17,40($sp)
	ld	$16,32($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L247:
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$19,24($sp)
	ld	$25,%call16(__lttf2)($28)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bltz	$2,.L245
	nop

.L252:
	move	$16,$18
.L257:
	b	.L245
	move	$17,$19

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
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	dmfc1	$2,$f13
	c.un.d	$f12,$f12
	nop
	bc1t	.L258
	mov.d	$f0,$f13

	c.un.d	$f13,$f13
	nop
	bc1t	.L265
	ld	$3,0($sp)

	dsrl	$3,$3,63
	dsrl	$4,$2,63
	beql	$3,$4,.L260
	ldc1	$f0,0($sp)

	beq	$3,$0,.L270
	mov.d	$f0,$f12

.L258:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L260:
	c.lt.d	$f0,$f13
	nop
	bc1t	.L258
	nop

.L270:
	dmtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L265:
	b	.L258
	ldc1	$f0,0($sp)

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
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	mfc1	$2,$f13
	c.un.s	$f12,$f12
	nop
	bc1t	.L271
	mov.s	$f0,$f13

	c.un.s	$f13,$f13
	nop
	bc1t	.L278
	li	$5,-2147483648			# 0xffffffff80000000

	lw	$4,0($sp)
	and	$4,$4,$5
	and	$3,$2,$5
	beq	$4,$3,.L273
	move	$5,$4

	beq	$5,$0,.L283
	mov.s	$f0,$f12

.L271:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L273:
	lwc1	$f0,0($sp)
	c.lt.s	$f0,$f13
	nop
	bc1t	.L271
	nop

.L283:
	mtc1	$2,$f0
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L278:
	b	.L271
	lwc1	$f0,0($sp)

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
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$23,88($sp)
	sd	$22,80($sp)
	sd	$21,72($sp)
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
	dmfc1	$3,$f15
	dmfc1	$2,$f14
	move	$16,$8
	move	$17,$9
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$9,$f15
	nop
	dmtc1	$8,$f14
	dmtc1	$9,$f13
	nop
	dmtc1	$8,$f12
	move	$18,$2
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$19,$3

	bne	$2,$0,.L290
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$19,$f15
	nop
	dmtc1	$18,$f14
	dmtc1	$19,$f13
	nop
	dmtc1	$18,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L284
	dsrl	$2,$16,63

	dsrl	$3,$18,63
	beql	$2,$3,.L286
	sd	$18,0($sp)

	beql	$2,$0,.L296
	move	$16,$18

.L284:
	dmtc1	$17,$f2
	dmtc1	$16,$f0
	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$23,88($sp)
	ld	$22,80($sp)
	ld	$21,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	ld	$17,40($sp)
	ld	$16,32($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L286:
	sd	$16,16($sp)
	sd	$19,8($sp)
	sd	$17,24($sp)
	ld	$25,%call16(__lttf2)($28)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bltz	$2,.L284
	nop

.L290:
	move	$16,$18
.L296:
	b	.L284
	move	$17,$19

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
	beq	$4,$0,.L300
	daddiu	$7,$7,%lo(%neg(%gp_rel(l64a)))

	move	$3,$4
	ld	$2,%got_page(s.0)($7)
	daddiu	$2,$2,%got_ofst(s.0)
	move	$5,$2
	ld	$6,%got_page(digits)($7)
	daddiu	$6,$6,%got_ofst(digits)
	.align	3
.L299:
	andi	$4,$3,0x3f
	daddu	$4,$6,$4
	lbu	$4,0($4)
	srl	$3,$3,6
	sb	$4,0($5)
	bne	$3,$0,.L299
	daddiu	$5,$5,1

	jr	$31
	sb	$0,0($5)

	.align	3
.L300:
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
	dsll	$4,$4,32
	dsrl	$4,$4,32
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
	ori	$2,$2,0xf42d
	ld	$4,%got_ofst(seed)($3)
	dsll	$2,$2,16
	daddiu	$2,$2,19605
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
	.set	nomicromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beql	$5,$0,.L314
	sd	$0,8($4)

	ld	$2,0($5)
	sd	$5,8($4)
	sd	$2,0($4)
	sd	$4,0($5)
	ld	$2,0($4)
	bnel	$2,$0,.L316
	sd	$4,8($2)

.L316:
	jr	$31
	nop

	.align	3
.L314:
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
	beql	$2,$0,.L327
	ld	$2,8($4)

	ld	$3,8($4)
	sd	$3,8($2)
	ld	$2,8($4)
.L327:
	beq	$2,$0,.L328
	nop

	ld	$3,0($4)
	sd	$3,0($2)
.L328:
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
	move	$23,$6
	ld	$19,0($6)
	move	$20,$4
	move	$fp,$5
	beq	$19,$0,.L330
	move	$18,$7

	move	$22,$8
	move	$16,$5
	b	.L332
	move	$17,$0

	.align	3
.L345:
	beq	$19,$17,.L330
	daddu	$16,$16,$18

.L332:
	move	$5,$16
	move	$4,$20
	move	$25,$22
	jalr	$25
	move	$21,$16

	bne	$2,$0,.L345
	daddiu	$17,$17,1

.L329:
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
	jr	$31
	daddiu	$sp,$sp,96

	.align	3
.L330:
	dmult	$18,$19
	mflo	$21
	daddiu	$19,$19,1
	sd	$19,0($23)
	beq	$18,$0,.L329
	daddu	$21,$fp,$21

	ld	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$21

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
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	ld	$20,0($6)
	beq	$20,$0,.L347
	move	$18,$4

	move	$21,$7
	move	$19,$8
	move	$16,$5
	b	.L349
	move	$17,$0

	.align	3
.L358:
	beq	$20,$17,.L347
	daddu	$16,$16,$21

.L349:
	move	$5,$16
	move	$4,$18
	move	$25,$19
	jalr	$25
	move	$22,$16

	bne	$2,$0,.L358
	daddiu	$17,$17,1

.L346:
	move	$2,$22
	ld	$31,72($sp)
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
.L347:
	b	.L346
	move	$22,$0

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
	li	$5,32			# 0x20
	.align	3
.L362:
	lb	$3,0($4)
	beql	$3,$5,.L362
	daddiu	$4,$4,1

	addiu	$2,$3,-9
	sltu	$2,$2,5
	beql	$2,$0,.L376
	li	$5,43			# 0x2b

	b	.L362
	daddiu	$4,$4,1

	.align	3
.L376:
	beq	$3,$5,.L371
	li	$5,45			# 0x2d

	beq	$3,$5,.L377
	move	$7,$0

.L366:
	lb	$6,0($4)
	addiu	$5,$6,-48
	sltu	$3,$5,10
	beq	$3,$0,.L368
	nop

	.align	3
.L367:
	lb	$6,1($4)
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$2,$5,24
	sra	$2,$2,24
	addiu	$5,$6,-48
	sll	$3,$3,1
	sltu	$6,$5,10
	daddiu	$4,$4,1
	bne	$6,$0,.L367
	subu	$2,$3,$2

.L368:
	beql	$7,$0,.L378
	subu	$2,$0,$2

.L378:
	jr	$31
	nop

	.align	3
.L377:
	li	$7,1			# 0x1
	b	.L366
	daddiu	$4,$4,1

	.align	3
.L371:
	move	$7,$0
	b	.L366
	daddiu	$4,$4,1

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
	.align	3
.L380:
	lb	$2,0($4)
	beql	$2,$3,.L380
	daddiu	$4,$4,1

	addiu	$6,$2,-9
	sltu	$6,$6,5
	beql	$6,$0,.L393
	li	$3,43			# 0x2b

	b	.L380
	daddiu	$4,$4,1

	.align	3
.L393:
	beq	$2,$3,.L383
	li	$3,45			# 0x2d

	beql	$2,$3,.L394
	li	$6,1			# 0x1

.L384:
	lb	$7,0($4)
	addiu	$5,$7,-48
	sltu	$3,$5,10
	beq	$3,$0,.L386
	move	$2,$0

	.align	3
.L385:
	lb	$7,1($4)
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$2,$5,56
	dsra	$2,$2,56
	addiu	$5,$7,-48
	dsll	$3,$3,1
	sltu	$7,$5,10
	daddiu	$4,$4,1
	bne	$7,$0,.L385
	dsubu	$2,$3,$2

.L386:
	beql	$6,$0,.L395
	dsubu	$2,$0,$2

.L395:
	jr	$31
	nop

	.align	3
.L394:
.L383:
	b	.L384
	daddiu	$4,$4,1

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
	lui	$3,%hi(%neg(%gp_rel(atoll)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(atoll)))
	ld	$25,%got_disp(atol)($3)
	.reloc	1f,R_MIPS_JALR,atol
1:	jr	$25
	nop

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
	beq	$6,$0,.L399
	sd	$16,8($sp)

	move	$16,$6
	move	$22,$4
	move	$20,$5
	move	$19,$7
	b	.L402
	move	$21,$8

	.align	3
.L409:
	blez	$2,.L398
	daddiu	$16,$16,-1

	dsubu	$16,$16,$18
	beq	$16,$0,.L399
	daddu	$20,$17,$19

.L402:
	dsrl	$18,$16,1
.L410:
	dmult	$18,$19
	mflo	$17
	move	$4,$22
	daddu	$17,$20,$17
	move	$25,$21
	jalr	$25
	move	$5,$17

	bgez	$2,.L409
	nop

	move	$16,$18
	bne	$16,$0,.L410
	dsrl	$18,$16,1

.L399:
	move	$17,$0
.L398:
	move	$2,$17
	ld	$31,72($sp)
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
	beq	$6,$0,.L412
	sd	$16,0($sp)

	move	$22,$4
	move	$19,$5
	move	$18,$7
	move	$21,$8
	move	$20,$9
	b	.L415
	move	$16,$6

	.align	3
.L424:
	blez	$2,.L414
	nop

	addiu	$16,$16,-1
	daddu	$19,$17,$18
	sra	$23,$16,1
.L414:
	beq	$23,$0,.L412
	move	$16,$23

.L415:
	dsra	$2,$16,1
	dmult	$2,$18
	mflo	$17
	move	$6,$20
	move	$4,$22
	sra	$23,$16,1
	daddu	$17,$19,$17
	move	$25,$21
	jalr	$25
	move	$5,$17

	bne	$2,$0,.L424
	nop

.L411:
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
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L412:
	b	.L411
	move	$17,$0

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
	daddiu	$sp,$sp,-16
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dsll	$2,$2,32
	or	$2,$2,$4
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
	.set	nomicromips
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$3,0($4)
	bne	$3,$0,.L440
	move	$2,$0

	b	.L449
	nop

	.align	3
.L442:
	beq	$3,$0,.L445
	daddiu	$4,$4,4

.L440:
	bnel	$5,$3,.L442
	lw	$3,4($4)

	bne	$3,$0,.L449
	move	$2,$4

	.align	3
.L445:
	move	$2,$0
.L449:
	jr	$31
	nop

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
	beq	$3,$6,.L451
	nop

	b	.L462
	slt	$4,$3,$6

	.align	3
.L461:
	beql	$6,$0,.L463
	slt	$4,$3,$6

	lw	$3,4($4)
	lw	$6,4($5)
	daddiu	$4,$4,4
	bne	$3,$6,.L452
	daddiu	$5,$5,4

.L451:
	bne	$3,$0,.L461
	nop

.L452:
	slt	$4,$3,$6
.L462:
.L463:
	bne	$4,$0,.L464
	li	$2,-1			# 0xffffffffffffffff

	slt	$2,$6,$3
.L464:
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
.L466:
	lw	$6,0($5)
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	bne	$6,$0,.L466
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
	beq	$2,$0,.L472
	move	$2,$4

	.align	3
.L471:
	lw	$3,4($2)
	bne	$3,$0,.L471
	daddiu	$2,$2,4

	dsubu	$2,$2,$4
	jr	$31
	dsra	$2,$2,2

	.align	3
.L472:
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
	.set	nomicromips
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnel	$6,$0,.L491
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L489:
	beq	$2,$0,.L477
	nop

	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	beq	$6,$0,.L480
	daddiu	$5,$5,4

	lw	$2,0($4)
.L491:
	lw	$3,0($5)
	beq	$3,$2,.L489
	nop

.L477:
	beql	$6,$0,.L490
	move	$2,$0

	lw	$4,0($4)
	lw	$3,0($5)
	slt	$5,$4,$3
	bne	$5,$0,.L490
	li	$2,-1			# 0xffffffffffffffff

	jr	$31
	slt	$2,$3,$4

	.align	3
.L480:
	move	$2,$0
.L490:
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
	bnel	$6,$0,.L503
	lw	$2,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L495:
	beq	$6,$0,.L498
	daddiu	$4,$4,4

	lw	$2,0($4)
.L503:
	bnel	$2,$5,.L495
	daddiu	$6,$6,-1

	bne	$6,$0,.L502
	move	$2,$4

	.align	3
.L498:
	move	$2,$0
.L502:
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
	bnel	$6,$0,.L519
	lw	$3,0($4)

	jr	$31
	move	$2,$0

	.align	3
.L507:
	daddiu	$4,$4,4
	beq	$6,$0,.L509
	daddiu	$5,$5,4

	lw	$3,0($4)
.L519:
	lw	$2,0($5)
	beql	$3,$2,.L507
	daddiu	$6,$6,-1

	beql	$6,$0,.L518
	move	$2,$0

	move	$4,$3
	move	$3,$2
	slt	$5,$4,$3
	bne	$5,$0,.L518
	li	$2,-1			# 0xffffffffffffffff

	jr	$31
	slt	$2,$3,$4

	.align	3
.L509:
	move	$2,$0
.L518:
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
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(wmemcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(wmemcpy)))
	beq	$6,$0,.L521
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L521:
	move	$2,$16
	ld	$31,24($sp)
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
	beq	$4,$5,.L542
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$4,$3,$4
	beq	$4,$0,.L539
	daddiu	$3,$6,-1

	beq	$6,$0,.L542
	dsll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
	.align	3
.L530:
	daddu	$4,$5,$3
	lw	$6,0($4)
	daddu	$4,$2,$3
	daddiu	$3,$3,-4
	bne	$3,$7,.L530
	sw	$6,0($4)

.L542:
	jr	$31
	nop

	.align	3
.L539:
	move	$7,$2
	beq	$6,$0,.L542
	li	$8,-1			# 0xffffffffffffffff

	.align	3
.L529:
	lw	$4,0($5)
	daddiu	$3,$3,-1
	daddiu	$5,$5,4
	daddiu	$7,$7,4
	bne	$3,$8,.L529
	sw	$4,-4($7)

	jr	$31
	nop

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
	beq	$6,$0,.L551
	move	$2,$4

	daddiu	$3,$6,-1
	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
	.align	3
.L545:
	daddiu	$3,$3,-1
	daddiu	$6,$6,4
	bne	$3,$7,.L545
	sw	$5,-4($6)

.L551:
	jr	$31
	nop

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
	beq	$2,$0,.L553
	daddu	$2,$4,$6

	beq	$6,$0,.L567
	daddu	$5,$5,$6

	.align	3
.L555:
	lb	$3,-1($2)
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	bne	$4,$2,.L555
	sb	$3,0($5)

.L567:
	jr	$31
	nop

	.align	3
.L553:
	beq	$4,$5,.L566
	nop

	beq	$6,$0,.L567
	daddu	$6,$4,$6

	.align	3
.L556:
	lb	$2,0($4)
	daddiu	$4,$4,1
	daddiu	$5,$5,1
	bne	$6,$4,.L556
	sb	$2,-1($5)

.L566:
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
	dsll	$5,$4,$5
	dsrl	$2,$4,$2
	jr	$31
	or	$2,$2,$5

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
	subu	$2,$0,$5
	dsrl	$5,$4,$5
	dsll	$2,$4,$2
	jr	$31
	or	$2,$2,$5

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
	subu	$2,$0,$5
	sll	$5,$4,$5
	srl	$2,$4,$2
	jr	$31
	or	$2,$2,$5

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
	subu	$2,$0,$5
	srl	$5,$4,$5
	sll	$2,$4,$2
	jr	$31
	or	$2,$2,$5

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
	dsll	$5,$4,$5
	dsrl	$2,$4,$2
	jr	$31
	or	$2,$2,$5

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
	subu	$2,$0,$5
	dsrl	$5,$4,$5
	dsll	$2,$4,$2
	jr	$31
	or	$2,$2,$5

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
	andi	$2,$2,0xf
	sll	$5,$4,$5
	srl	$2,$4,$2
	or	$2,$5,$2
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
	andi	$2,$2,0xf
	srl	$5,$4,$5
	sll	$2,$4,$2
	or	$2,$5,$2
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
	andi	$2,$2,0x7
	sll	$5,$4,$5
	srl	$2,$4,$2
	or	$2,$5,$2
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
	andi	$2,$2,0x7
	srl	$5,$4,$5
	sll	$2,$4,$2
	or	$2,$5,$2
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
	or	$2,$2,$4
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
	and	$3,$3,$2
	sll	$5,$4,24
	or	$3,$3,$5
	srl	$5,$4,24
	and	$2,$4,$2
	or	$3,$5,$3
	srl	$2,$2,8
	jr	$31
	or	$2,$2,$3

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
	or	$2,$2,$6
	andi	$5,$5,0xff00
	dsrl	$6,$4,24
	or	$2,$2,$5
	li	$5,16711680			# 0xff0000
	and	$6,$6,$5
	dsrl	$5,$4,8
	dsll	$7,$3,24
	or	$2,$2,$6
	and	$5,$5,$7
	dsll	$6,$4,8
	dsll	$7,$3,32
	or	$2,$2,$5
	and	$6,$6,$7
	dsll	$5,$4,24
	dsll	$7,$3,40
	or	$2,$2,$6
	and	$5,$5,$7
	dsll	$4,$4,40
	dsll	$3,$3,48
	or	$2,$2,$5
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

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
	b	.L597
	li	$6,32			# 0x20

	.align	3
.L601:
	beq	$6,$2,.L600
	nop

.L597:
	srl	$5,$4,$3
	addiu	$2,$3,1
	andi	$5,$5,0x1
	beq	$5,$0,.L601
	move	$3,$2

	jr	$31
	nop

	.align	3
.L600:
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
	beq	$4,$0,.L610
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,.L609
	nop

	li	$2,1			# 0x1
	.align	3
.L604:
	dsra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,.L604
	addiu	$2,$2,1

.L610:
	jr	$31
	nop

.L609:
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
	bc1t	.L617
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC1)($4)
	lwc1	$f0,%got_ofst(.LC1)($3)
	c.lt.s	$f0,$f12
	nop
	bc1f	.L616
	li	$2,1			# 0x1

.L617:
	jr	$31
	nop

	.align	3
.L616:
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
	bc1t	.L624
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC3)($4)
	ldc1	$f0,%got_ofst(.LC3)($3)
	c.lt.d	$f0,$f12
	nop
	bc1f	.L623
	li	$2,1			# 0x1

.L624:
	jr	$31
	nop

	.align	3
.L623:
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
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	dmfc1	$5,$f13
	dmfc1	$4,$f12
	ld	$25,%call16(__lttf2)($28)
	ld	$2,%got_page(.LC4)($28)
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	ldc1	$f14,%got_ofst(.LC4)($2)
	move	$17,$4
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	move	$16,$5

	move	$3,$2
	bltz	$3,.L626
	li	$2,1			# 0x1

	ld	$25,%call16(__gttf2)($28)
	ld	$2,%got_page(.LC5)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	dmtc1	$16,$f13
	nop
	dmtc1	$17,$f12
	.reloc	1f,R_MIPS_JALR,__gttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC5)($2)

	slt	$2,$0,$2
.L626:
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
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_Qp_itoq)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_Qp_itoq)))
	ld	$25,%call16(__extenddftf2)($28)
	dmtc1	$5,$f0
	nop
	cvt.d.w	$f12,$f0
	.reloc	1f,R_MIPS_JALR,__extenddftf2
1:	jalr	$25
	move	$16,$4

	sdc1	$f2,8($16)
	sdc1	$f0,0($16)
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
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
	nop
	bc1t	.L652
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$f1,$f12
	nop
	bc1t	.L652
	lui	$3,%hi(%neg(%gp_rel(ldexpf)))

	daddu	$3,$3,$25
	bltz	$5,.L649
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexpf)))

	ld	$2,%got_page(.LC6)($3)
	lwc1	$f1,%got_ofst(.LC6)($2)
	.align	3
.L650:
.L637:
	andi	$2,$5,0x1
	bnel	$2,$0,.L636
	mul.s	$f0,$f0,$f1

.L636:
	srl	$2,$5,31
	addu	$5,$2,$5
	sra	$5,$5,1
	bnel	$5,$0,.L650
	mul.s	$f1,$f1,$f1

.L652:
	jr	$31
	nop

	.align	3
.L649:
	ld	$2,%got_page(.LC7)($3)
	b	.L637
	lwc1	$f1,%got_ofst(.LC7)($2)

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
	nop
	bc1t	.L672
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$f1,$f12
	nop
	bc1t	.L672
	lui	$3,%hi(%neg(%gp_rel(ldexp)))

	daddu	$3,$3,$25
	bltz	$5,.L669
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexp)))

	ld	$2,%got_page(.LC8)($3)
	ldc1	$f1,%got_ofst(.LC8)($2)
	.align	3
.L670:
.L657:
	andi	$2,$5,0x1
	bnel	$2,$0,.L656
	mul.d	$f0,$f0,$f1

.L656:
	srl	$2,$5,31
	addu	$5,$2,$5
	sra	$5,$5,1
	bnel	$5,$0,.L670
	mul.d	$f1,$f1,$f1

.L672:
	jr	$31
	nop

	.align	3
.L669:
	ld	$2,%got_page(.LC9)($3)
	b	.L657
	ldc1	$f1,%got_ofst(.LC9)($2)

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
	sd	$31,136($sp)
	sd	$28,128($sp)
	sd	$22,120($sp)
	sd	$21,112($sp)
	sd	$20,104($sp)
	sd	$19,96($sp)
	sd	$18,88($sp)
	sd	$17,80($sp)
	sd	$16,72($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	sd	$9,56($sp)
	sd	$8,48($sp)
	sd	$5,40($sp)
	sd	$4,32($sp)
	dmfc1	$11,$f13
	dmfc1	$10,$f12
	ld	$25,%call16(__unordtf2)($28)
	move	$17,$10
	move	$22,$11
	dmtc1	$11,$f15
	nop
	dmtc1	$10,$f14
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$16,$6

	bne	$2,$0,.L674
	ld	$25,%call16(__addtf3)($28)

	dmtc1	$22,$f15
	nop
	dmtc1	$17,$f14
	dmtc1	$22,$f13
	nop
	dmtc1	$17,$f12
	.reloc	1f,R_MIPS_JALR,__addtf3
1:	jalr	$25
	nop

	sd	$17,0($sp)
	sdc1	$f0,16($sp)
	sd	$22,8($sp)
	sdc1	$f2,24($sp)
	ld	$25,%call16(__netf2)($28)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MIPS_JALR,__netf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	beq	$2,$0,.L674
	nop

	bltz	$16,.L688
	ld	$2,%got_page(.LC10)($28)

	ld	$5,%got_ofst(.LC10+8)($2)
	b	.L678
	ld	$4,%got_ofst(.LC10)($2)

	.align	3
.L689:
	dmtc1	$5,$f15
	nop
	dmtc1	$4,$f14
	dmtc1	$5,$f13
	nop
	dmtc1	$4,$f12
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	nop

	dmfc1	$3,$f0
	dmfc1	$2,$f2
	nop
	move	$5,$2
	move	$4,$3
.L678:
	andi	$2,$16,0x1
	beq	$2,$0,.L690
	srl	$2,$16,31

	ld	$25,%call16(__multf3)($28)
	dmtc1	$5,$f15
	nop
	dmtc1	$4,$f14
	sd	$5,8($sp)
	dmtc1	$22,$f13
	nop
	dmtc1	$17,$f12
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	sd	$4,0($sp)

	dmfc1	$17,$f0
	dmfc1	$22,$f2
	ld	$5,8($sp)
	ld	$4,0($sp)
	srl	$2,$16,31
.L690:
	addu	$16,$2,$16
	sra	$16,$16,1
	bne	$16,$0,.L689
	ld	$25,%call16(__multf3)($28)

.L674:
	dmtc1	$22,$f2
	dmtc1	$17,$f0
	ld	$31,136($sp)
	ld	$28,128($sp)
	ld	$22,120($sp)
	ld	$21,112($sp)
	ld	$20,104($sp)
	ld	$19,96($sp)
	ld	$18,88($sp)
	ld	$17,80($sp)
	ld	$16,72($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.align	3
.L688:
	ld	$2,%got_page(.LC11)($28)
	ld	$5,%got_ofst(.LC11+8)($2)
	b	.L678
	ld	$4,%got_ofst(.LC11)($2)

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
	beq	$6,$0,.L699
	move	$2,$4

	daddu	$6,$5,$6
	move	$3,$4
	.align	3
.L693:
	lbu	$7,0($3)
	lbu	$8,0($5)
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	xor	$7,$7,$8
	bne	$6,$5,.L693
	sb	$7,-1($3)

.L699:
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
	beq	$3,$0,.L707
	move	$2,$4

	move	$3,$4
	.align	3
.L702:
	lb	$7,1($3)
	bne	$7,$0,.L702
	daddiu	$3,$3,1

	beql	$6,$0,.L718
	sb	$0,0($3)

	lb	$7,0($5)
	.align	3
.L719:
	beq	$7,$0,.L716
	sb	$7,0($3)

	daddiu	$6,$6,-1
	daddiu	$5,$5,1
	daddiu	$3,$3,1
.L715:
	bnel	$6,$0,.L719
	lb	$7,0($5)

	sb	$0,0($3)
.L718:
	jr	$31
	nop

	.align	3
.L716:
	bne	$6,$0,.L718
	nop

	jr	$31
	sb	$0,0($3)

	.align	3
.L707:
	b	.L715
	move	$3,$4

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
	beq	$5,$0,.L732
	move	$2,$0

	daddu	$3,$4,$2
.L730:
	lb	$3,0($3)
	bnel	$3,$0,.L723
	daddiu	$2,$2,1

.L732:
	jr	$31
	nop

	.align	3
.L723:
	bne	$5,$2,.L730
	daddu	$3,$4,$2

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
	beq	$7,$0,.L738
	move	$2,$4

.L734:
	b	.L737
	move	$3,$5

	.align	3
.L736:
	beq	$6,$7,.L742
	daddiu	$3,$3,1

.L737:
	lb	$6,0($3)
	bne	$6,$0,.L736
	nop

	lb	$7,1($2)
	bne	$7,$0,.L734
	daddiu	$2,$2,1

.L738:
	move	$2,$0
.L742:
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
.L745:
	lb	$3,0($4)
	beql	$3,$5,.L744
	move	$2,$4

.L744:
	bne	$3,$0,.L745
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
	move	$2,$4
	beq	$8,$0,.L750
	move	$3,$5

	.align	3
.L751:
	lb	$4,1($3)
	bne	$4,$0,.L751
	daddiu	$3,$3,1

.L750:
	beq	$3,$5,.L778
	dsubu	$10,$3,$5

	b	.L758
	daddiu	$10,$10,-1

	.align	3
.L775:
	beq	$3,$0,.L774
	daddiu	$2,$2,1

.L758:
	lb	$3,0($2)
	bne	$3,$8,.L775
	nop

	beq	$2,$0,.L778
	nop

	lbu	$4,0($2)
	beq	$4,$0,.L761
	move	$3,$2

	daddu	$9,$2,$10
	b	.L755
	move	$6,$5

	.align	3
.L776:
	beql	$3,$9,.L777
	lbu	$3,0($6)

	bnel	$7,$4,.L777
	lbu	$3,0($6)

	lbu	$4,1($3)
	daddiu	$3,$3,1
	beq	$4,$0,.L754
	daddiu	$6,$6,1

.L755:
	lbu	$7,0($6)
	bne	$7,$0,.L776
	nop

.L754:
	lbu	$3,0($6)
.L777:
	beq	$3,$4,.L778
	nop

	b	.L758
	daddiu	$2,$2,1

	.align	3
.L774:
	jr	$31
	move	$2,$0

.L778:
	jr	$31
	nop

.L761:
	b	.L754
	move	$6,$5

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
	dmtc1	$0,$f0
	dmfc1	$2,$f12
	c.lt.d	$f12,$f0
	nop
	bc1t	.L789
	nop

.L780:
	dmtc1	$0,$f0
	dmtc1	$2,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L783
	nop

	c.lt.d	$f13,$f0
	nop
	bc1t	.L790
	li	$3,-1			# 0xffffffffffffffff

.L783:
	dmtc1	$2,$f0
	jr	$31
	nop

	.align	3
.L789:
	c.lt.d	$f0,$f13
	nop
	bc1f	.L780
	li	$3,-1			# 0xffffffffffffffff

.L790:
	dsll	$3,$3,63
	xor	$2,$2,$3
	dmtc1	$2,$f0
	jr	$31
	nop

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
	beq	$7,$0,.L799
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L801
	dsubu	$5,$5,$7

	daddu	$11,$4,$5
	sltu	$2,$11,$4
	bne	$2,$0,.L801
	nop

	b	.L798
	lb	$12,0($6)

	.align	3
.L793:
	sltu	$2,$11,$4
	.align	3
.L816:
	bne	$2,$0,.L801
	nop

.L798:
	lb	$3,0($4)
	move	$2,$4
	bne	$3,$12,.L793
	daddiu	$4,$4,1

	daddiu	$3,$7,-1
	beq	$3,$0,.L818
	daddiu	$5,$6,1

	b	.L794
	move	$8,$4

	.align	3
.L796:
	daddiu	$8,$8,1
	beq	$3,$0,.L818
	daddiu	$5,$5,1

.L794:
	lbu	$10,0($8)
	lbu	$9,0($5)
	beql	$10,$9,.L796
	daddiu	$3,$3,-1

	beq	$3,$0,.L817
	nop

	bnel	$10,$9,.L816
	sltu	$2,$11,$4

.L818:
	jr	$31
	nop

	.align	3
.L801:
	jr	$31
	move	$2,$0

	.align	3
.L799:
	jr	$31
	move	$2,$4

.L817:
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
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(mempcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	move	$16,$6
	beq	$6,$0,.L820
	move	$17,$4

	ld	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

.L820:
	daddu	$2,$17,$16
	ld	$31,24($sp)
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
	lui	$7,%hi(%neg(%gp_rel(frexp)))
	daddu	$7,$7,$25
	dmfc1	$2,$f12
	dmtc1	$0,$f0
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	.L851
	daddiu	$7,$7,%lo(%neg(%gp_rel(frexp)))

	move	$4,$0
	ld	$3,%got_page(.LC12)($7)
	ldc1	$f0,%got_ofst(.LC12)($3)
	dmtc1	$2,$f1
	nop
	c.le.d	$f0,$f1
	nop
	bc1f	.L847
	ld	$6,%got_page(.LC9)($7)

.L852:
	move	$3,$0
	ldc1	$f1,%got_ofst(.LC9)($6)
	.align	3
.L830:
	dmtc1	$2,$f2
	nop
	mul.d	$f2,$f2,$f1
	dmfc1	$2,$f2
	c.le.d	$f0,$f2
	nop
	bc1t	.L830
	addiu	$3,$3,1

.L831:
	beq	$4,$0,.L834
	sw	$3,0($5)

	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
.L834:
	dmtc1	$2,$f0
	jr	$31
	nop

	.align	3
.L851:
	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
	li	$4,1			# 0x1
	ld	$3,%got_page(.LC12)($7)
	ldc1	$f0,%got_ofst(.LC12)($3)
	dmtc1	$2,$f1
	nop
	c.le.d	$f0,$f1
	nop
	bc1t	.L852
	ld	$6,%got_page(.LC9)($7)

.L847:
	ldc1	$f0,%got_ofst(.LC9)($6)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L831
	move	$3,$0

	dmtc1	$0,$f1
	dmtc1	$2,$f2
	nop
	c.eq.d	$f2,$f1
	nop
	bc1t	.L831
	nop

	.align	3
.L833:
	dmtc1	$2,$f1
	nop
	add.d	$f1,$f1,$f1
	dmfc1	$2,$f1
	c.lt.d	$f1,$f0
	nop
	bc1f	.L831
	addiu	$3,$3,-1

	dmtc1	$2,$f1
	nop
	add.d	$f1,$f1,$f1
	dmfc1	$2,$f1
	c.lt.d	$f1,$f0
	nop
	bc1t	.L833
	addiu	$3,$3,-1

	b	.L831
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
	beq	$4,$0,.L860
	move	$2,$0

	.align	3
.L855:
	andi	$3,$4,0x1
	dsubu	$3,$0,$3
	and	$3,$3,$5
	dsrl	$4,$4,1
	daddu	$2,$2,$3
	bne	$4,$0,.L855
	dsll	$5,$5,1

.L860:
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
	li	$3,1			# 0x1
	bne	$7,$0,.L862
	li	$2,32			# 0x20

	b	.L867
	move	$2,$0

	.align	3
.L864:
	sltu	$7,$5,$4
	beq	$7,$0,.L863
	sll	$3,$3,1

	addiu	$2,$2,-1
	beq	$2,$0,.L871
	nop

.L862:
	bgezl	$5,.L864
	sll	$5,$5,1

.L863:
	beq	$3,$0,.L871
	nop

	move	$2,$0
	.align	3
.L867:
	sltu	$7,$4,$5
	bnel	$7,$0,.L882
	srl	$3,$3,1

	or	$2,$3,$2
	subu	$4,$4,$5
	srl	$3,$3,1
.L882:
	bne	$3,$0,.L867
	srl	$5,$5,1

	bne	$6,$0,.L881
	nop

.L883:
	jr	$31
	nop

	.align	3
.L881:
	jr	$31
	move	$2,$4

	.align	3
.L871:
	beq	$6,$0,.L883
	move	$2,$0

	b	.L881
	nop

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
	dsll	$2,$2,56
	dsra	$2,$2,56
	beq	$4,$2,.L886
	xor	$3,$4,$2

	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbqi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbqi2)))
	sll	$4,$3,8
	ld	$25,%call16(__clzdi2)($28)
	dsll	$4,$4,32
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	dsrl	$4,$4,32

	addiu	$2,$2,-33
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L886:
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
	beq	$2,$3,.L893
	xor	$4,$4,$3

	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbdi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbdi2)))
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	addiu	$2,$2,-1
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L893:
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
	beq	$4,$0,.L905
	move	$2,$0

	.align	3
.L900:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	srl	$4,$4,1
	and	$3,$3,$5
	addu	$2,$3,$2
	bne	$4,$0,.L900
	sll	$5,$5,1

.L905:
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
	srl	$8,$6,3
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$3,$4,$5
	bne	$3,$0,.L907
	and	$2,$6,$2

	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beq	$3,$0,.L921
	nop

.L907:
	beq	$8,$0,.L910
	move	$3,$5

	dsll	$8,$8,3
	move	$7,$4
	daddu	$8,$8,$5
	.align	3
.L911:
	ld	$9,0($3)
	daddiu	$3,$3,8
	daddiu	$7,$7,8
	bne	$3,$8,.L911
	sd	$9,-8($7)

.L910:
	sltu	$3,$2,$6
	beq	$3,$0,.L924
	dsll	$2,$2,32

	dsrl	$2,$2,32
	.align	3
.L912:
	daddu	$3,$5,$2
	daddu	$7,$4,$2
	lb	$8,0($3)
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L912
	sb	$8,0($7)

.L924:
	jr	$31
	nop

	.align	3
.L921:
	beq	$6,$0,.L924
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L913:
	lb	$6,0($2)
	move	$3,$2
	daddiu	$4,$4,-1
	sb	$6,1($4)
	bne	$5,$3,.L913
	daddiu	$2,$2,-1

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
	bne	$2,$0,.L926
	srl	$7,$6,1

	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	beq	$2,$0,.L941
	nop

.L926:
	beq	$7,$0,.L929
	move	$2,$5

	dsll	$7,$7,1
	move	$3,$4
	daddu	$7,$7,$5
	.align	3
.L930:
	lh	$8,0($2)
	daddiu	$2,$2,2
	daddiu	$3,$3,2
	bne	$2,$7,.L930
	sh	$8,-2($3)

.L929:
	andi	$2,$6,0x1
	beq	$2,$0,.L944
	addiu	$6,$6,-1

	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$5,$5,$6
	lb	$2,0($5)
	daddu	$4,$4,$6
	jr	$31
	sb	$2,0($4)

	.align	3
.L941:
	beq	$6,$0,.L944
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L931:
	lb	$6,0($2)
	move	$3,$2
	daddiu	$4,$4,-1
	sb	$6,1($4)
	bne	$5,$3,.L931
	daddiu	$2,$2,-1

.L944:
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
	srl	$8,$6,2
	li	$2,-4			# 0xfffffffffffffffc
	sltu	$3,$4,$5
	bne	$3,$0,.L946
	and	$2,$6,$2

	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beq	$3,$0,.L960
	nop

.L946:
	beq	$8,$0,.L949
	move	$3,$5

	dsll	$8,$8,2
	move	$7,$4
	daddu	$8,$8,$5
	.align	3
.L950:
	lw	$9,0($3)
	daddiu	$3,$3,4
	daddiu	$7,$7,4
	bne	$3,$8,.L950
	sw	$9,-4($7)

.L949:
	sltu	$3,$2,$6
	beq	$3,$0,.L963
	dsll	$2,$2,32

	dsrl	$2,$2,32
	.align	3
.L951:
	daddu	$3,$5,$2
	daddu	$7,$4,$2
	lb	$8,0($3)
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L951
	sb	$8,0($7)

.L963:
	jr	$31
	nop

	.align	3
.L960:
	beq	$6,$0,.L963
	addiu	$3,$6,-1

	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
	.align	3
.L952:
	lb	$6,0($2)
	move	$3,$2
	daddiu	$4,$4,-1
	sb	$6,1($4)
	bne	$5,$3,.L952
	daddiu	$2,$2,-1

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
	dsrl	$4,$4,32
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
	dsrl	$4,$4,32
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
	.set	nomicromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L972
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.align	3
.L972:
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	nop
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
	.set	nomicromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L976
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.align	3
.L976:
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	nop
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
	move	$2,$0
	li	$5,15			# 0xf
	li	$6,16			# 0x10
	subu	$3,$5,$2
	.align	3
.L985:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,.L986
	nop

	addiu	$2,$2,1
	bne	$2,$6,.L985
	subu	$3,$5,$2

.L986:
	jr	$31
	nop

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
	move	$2,$0
	li	$5,16			# 0x10
	sra	$3,$4,$2
	.align	3
.L992:
	andi	$3,$3,0x1
	bne	$3,$0,.L993
	nop

	addiu	$2,$2,1
	bne	$2,$5,.L992
	sra	$3,$4,$2

.L993:
	jr	$31
	nop

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
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	c.le.s	$f0,$f12
	nop
	bc1tl	.L1001
	sub.s	$f12,$f12,$f0

	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	jr	$31
	nop

	.align	3
.L1001:
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	li	$3,32768			# 0x8000
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
	.set	nomicromips
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
.L1003:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,.L1003
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
	.set	nomicromips
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
.L1007:
	sra	$2,$4,$3
	andi	$2,$2,0x1
	addu	$2,$2,$5
	addiu	$3,$3,1
	bne	$3,$6,.L1007
	move	$5,$2

	jr	$31
	nop

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
	beq	$4,$0,.L1017
	move	$2,$0

	.align	3
.L1012:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	srl	$4,$4,1
	and	$3,$3,$5
	addu	$2,$3,$2
	bne	$4,$0,.L1012
	sll	$5,$5,1

.L1017:
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
	beq	$4,$0,.L1026
	move	$2,$0

	beq	$5,$0,.L1025
	nop

	.align	3
.L1020:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	srl	$5,$5,1
	and	$3,$3,$4
	addu	$2,$3,$2
	bne	$5,$0,.L1020
	sll	$4,$4,1

.L1026:
	jr	$31
	nop

.L1025:
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
	li	$3,1			# 0x1
	bne	$7,$0,.L1028
	li	$2,32			# 0x20

	b	.L1033
	move	$2,$0

	.align	3
.L1030:
	sltu	$7,$5,$4
	beq	$7,$0,.L1029
	sll	$3,$3,1

	addiu	$2,$2,-1
	beq	$2,$0,.L1037
	nop

.L1028:
	bgezl	$5,.L1030
	sll	$5,$5,1

.L1029:
	beq	$3,$0,.L1037
	nop

	move	$2,$0
	.align	3
.L1033:
	sltu	$7,$4,$5
	bnel	$7,$0,.L1048
	srl	$3,$3,1

	or	$2,$3,$2
	subu	$4,$4,$5
	srl	$3,$3,1
.L1048:
	bne	$3,$0,.L1033
	srl	$5,$5,1

	bne	$6,$0,.L1047
	nop

.L1049:
	jr	$31
	nop

	.align	3
.L1047:
	jr	$31
	move	$2,$4

	.align	3
.L1037:
	beq	$6,$0,.L1049
	move	$2,$0

	b	.L1047
	nop

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
	bc1t	.L1053
	nop

	c.lt.s	$f13,$f12
	nop
	bc1f	.L1055
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1055:
	jr	$31
	move	$2,$0

	.align	3
.L1053:
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
	bc1t	.L1061
	nop

	c.lt.d	$f13,$f12
	nop
	bc1f	.L1063
	li	$2,1			# 0x1

	jr	$31
	nop

	.align	3
.L1063:
	jr	$31
	move	$2,$0

	.align	3
.L1061:
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
	bgez	$5,.L1071
	move	$7,$0

	subu	$5,$0,$5
	li	$7,1			# 0x1
.L1071:
	beq	$5,$0,.L1072
	move	$2,$0

	b	.L1073
	li	$6,32			# 0x20

	.align	3
.L1086:
	addiu	$6,$6,-1
	andi	$6,$6,0x00ff
	beq	$6,$0,.L1072
	nop

.L1073:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	dsra	$5,$5,1
	addu	$2,$3,$2
	bne	$5,$0,.L1086
	sll	$4,$4,1

.L1072:
	bnel	$7,$0,.L1087
	subu	$2,$0,$2

.L1087:
	jr	$31
	nop

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
	bgez	$4,.L1089
	move	$7,$0

	dsubu	$4,$0,$4
	li	$7,1			# 0x1
.L1089:
	bgez	$5,.L1113
	sll	$4,$4,0

	dsubu	$5,$0,$5
	xori	$7,$7,0x1
.L1113:
	sll	$5,$5,0
	sltu	$6,$5,$4
	li	$2,32			# 0x20
	bne	$6,$0,.L1091
	li	$3,1			# 0x1

	b	.L1096
	move	$2,$0

	.align	3
.L1093:
	sltu	$6,$5,$4
	beq	$6,$0,.L1092
	sll	$3,$3,1

	addiu	$2,$2,-1
	beql	$2,$0,.L1094
	move	$2,$0

.L1091:
	bgezl	$5,.L1093
	sll	$5,$5,1

.L1092:
	beq	$3,$0,.L1094
	move	$2,$0

	.align	3
.L1096:
	sltu	$6,$4,$5
	bnel	$6,$0,.L1114
	srl	$3,$3,1

	subu	$4,$4,$5
	or	$2,$3,$2
	srl	$3,$3,1
.L1114:
	bne	$3,$0,.L1096
	srl	$5,$5,1

.L1094:
	dsll	$2,$2,32
	beq	$7,$0,.L1115
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L1115:
	jr	$31
	nop

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
	bgez	$4,.L1117
	move	$7,$0

	dsubu	$4,$0,$4
	li	$7,1			# 0x1
.L1117:
	dsra	$6,$5,63
	xor	$3,$6,$5
	sll	$3,$3,0
	sll	$2,$4,0
	subu	$3,$3,$6
	sltu	$6,$3,$2
	li	$4,32			# 0x20
	bne	$6,$0,.L1118
	li	$5,1			# 0x1

	b	.L1141
	sltu	$4,$2,$3

	.align	3
.L1120:
	sltu	$6,$3,$2
	beq	$6,$0,.L1140
	sll	$5,$5,1

	addiu	$4,$4,-1
	beql	$4,$0,.L1142
	dsll	$2,$2,32

.L1118:
	bgezl	$3,.L1120
	sll	$3,$3,1

.L1140:
	beql	$5,$0,.L1142
	dsll	$2,$2,32

	.align	3
.L1132:
	sltu	$4,$2,$3
	.align	3
.L1141:
	beql	$4,$0,.L1122
	subu	$2,$2,$3

.L1122:
	srl	$5,$5,1
	bne	$5,$0,.L1132
	srl	$3,$3,1

	dsll	$2,$2,32
.L1142:
	beq	$7,$0,.L1143
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L1143:
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
	sltu	$7,$5,$4
	li	$3,1			# 0x1
	beq	$7,$0,.L1161
	li	$2,16			# 0x10

	sll	$7,$5,16
	.align	3
.L1165:
	sra	$7,$7,16
	bltz	$7,.L1146
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	sltu	$7,$5,$4
	beq	$7,$0,.L1146
	andi	$3,$3,0xffff

	addiu	$2,$2,-1
	bne	$2,$0,.L1165
	sll	$7,$5,16

.L1154:
	bne	$6,$0,.L1164
	move	$2,$0

.L1167:
	jr	$31
	nop

	.align	3
.L1146:
	beq	$3,$0,.L1154
	nop

.L1161:
	move	$2,$0
	.align	3
.L1150:
	sltu	$7,$4,$5
	bnel	$7,$0,.L1166
	dsrl	$3,$3,1

	subu	$4,$4,$5
	or	$2,$3,$2
	andi	$4,$4,0xffff
	andi	$2,$2,0xffff
	dsrl	$3,$3,1
.L1166:
	bne	$3,$0,.L1150
	dsrl	$5,$5,1

	beq	$6,$0,.L1167
	nop

.L1164:
	jr	$31
	move	$2,$4

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
	li	$3,1			# 0x1
	sltu	$7,$5,$4
	li	$2,64			# 0x40
	bne	$7,$0,.L1169
	dsll	$8,$3,31

	b	.L1174
	move	$2,$0

	.align	3
.L1171:
	sltu	$7,$5,$4
	beq	$7,$0,.L1170
	dsll	$3,$3,1

	addiu	$2,$2,-1
	beq	$2,$0,.L1178
	nop

.L1169:
	and	$7,$5,$8
	beql	$7,$0,.L1171
	dsll	$5,$5,1

.L1170:
	beq	$3,$0,.L1178
	nop

	move	$2,$0
	.align	3
.L1174:
	sltu	$7,$4,$5
	bnel	$7,$0,.L1189
	dsrl	$3,$3,1

	dsubu	$4,$4,$5
	or	$2,$2,$3
	dsrl	$3,$3,1
.L1189:
	bne	$3,$0,.L1174
	dsrl	$5,$5,1

	bne	$6,$0,.L1188
	nop

.L1190:
	jr	$31
	nop

	.align	3
.L1188:
	jr	$31
	move	$2,$4

	.align	3
.L1178:
	beq	$6,$0,.L1190
	move	$2,$0

	b	.L1188
	nop

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
	beq	$2,$0,.L1192
	move	$2,$0

	sll	$4,$4,0
	sll	$3,$4,$5
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,$2,32
	jr	$31
	or	$2,$2,$3

	.align	3
.L1192:
	beq	$5,$0,.L1195
	subu	$3,$0,$5

	sll	$2,$4,0
	dsra	$4,$4,32
	srl	$3,$2,$3
	sll	$4,$4,$5
	or	$3,$3,$4
	sll	$2,$2,$5
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,$2,32
	jr	$31
	or	$2,$2,$3

	.align	3
.L1195:
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
	beq	$2,$0,.L1198
	dsll	$2,$5,$6

	move	$5,$0
	jr	$31
	move	$3,$5

	.align	3
.L1198:
	beql	$6,$0,.L1201
	move	$2,$4

	subu	$3,$0,$6
	dsrl	$3,$5,$3
	dsll	$2,$4,$6
	dsll	$5,$5,$6
	or	$2,$3,$2
	jr	$31
	move	$3,$5

	.align	3
.L1201:
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
	beq	$2,$0,.L1204
	move	$3,$5

	dsra	$5,$4,32
	sra	$4,$5,31
	sra	$5,$5,$3
	dsll	$5,$5,32
	dsrl	$5,$5,32
	dsll	$4,$4,32
	jr	$31
	or	$2,$4,$5

	.align	3
.L1204:
	beq	$5,$0,.L1207
	dsra	$6,$4,32

	subu	$2,$0,$5
	sll	$4,$4,0
	sll	$2,$6,$2
	srl	$4,$4,$5
	or	$5,$2,$4
	sra	$4,$6,$3
	dsll	$5,$5,32
	dsrl	$5,$5,32
	dsll	$4,$4,32
	jr	$31
	or	$2,$4,$5

	.align	3
.L1207:
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
	beq	$2,$0,.L1210
	dsra	$2,$4,63

	dsra	$5,$4,$6
	jr	$31
	move	$3,$5

	.align	3
.L1210:
	beql	$6,$0,.L1213
	move	$2,$4

	subu	$3,$0,$6
	dsll	$3,$4,$3
	dsrl	$5,$5,$6
	dsra	$2,$4,$6
	or	$5,$3,$5
	jr	$31
	move	$3,$5

	.align	3
.L1213:
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
	or	$2,$2,$6
	andi	$5,$5,0xff00
	dsrl	$6,$4,24
	or	$2,$2,$5
	li	$5,16711680			# 0xff0000
	and	$6,$6,$5
	dsrl	$5,$4,8
	dsll	$7,$3,24
	or	$2,$2,$6
	and	$5,$5,$7
	dsll	$6,$4,8
	dsll	$7,$3,32
	or	$2,$2,$5
	and	$6,$6,$7
	dsll	$5,$4,24
	dsll	$7,$3,40
	or	$2,$2,$6
	and	$5,$5,$7
	dsll	$4,$4,40
	dsll	$3,$3,48
	or	$2,$2,$5
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

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
	or	$2,$2,$5
	andi	$3,$3,0xff00
	sll	$4,$4,8
	or	$2,$2,$3
	li	$3,16711680			# 0xff0000
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

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
	sltu	$6,$4,$6
	dsll	$6,$6,4
	li	$2,16			# 0x10
	subu	$2,$2,$6
	srl	$4,$4,$2
	andi	$5,$4,0xff00
	sltu	$5,$5,1
	dsll	$5,$5,3
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xf0
	sltu	$2,$2,1
	dsll	$2,$2,2
	li	$3,4			# 0x4
	subu	$3,$3,$2
	srl	$4,$4,$3
	andi	$3,$4,0xc
	sltu	$3,$3,1
	dsll	$3,$3,1
	li	$8,2			# 0x2
	subu	$7,$8,$3
	srl	$4,$4,$7
	dsrl	$7,$4,1
	daddu	$5,$5,$6
	andi	$7,$7,0x1
	daddu	$2,$2,$5
	beq	$7,$0,.L1221
	subu	$5,$8,$4

	move	$5,$0
.L1221:
	addu	$2,$3,$2
	jr	$31
	addu	$2,$5,$2

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
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__clzti2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clzti2)))
	sltu	$16,$4,1
	daddiu	$2,$16,-1
	and	$2,$2,$4
	beq	$4,$0,.L1227
	move	$3,$5

	move	$3,$0
.L1227:
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	or	$4,$2,$3

	sll	$16,$16,6
	addu	$2,$2,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
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
	bne	$6,$0,.L1235
	nop

	slt	$2,$3,$2
	bne	$2,$0,.L1234
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bne	$3,$0,.L1235
	nop

	sltu	$2,$5,$2
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1235:
	jr	$31
	move	$2,$0

	.align	3
.L1234:
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
	bnel	$6,$0,.L1245
	move	$2,$0

	slt	$2,$3,$2
	bne	$2,$0,.L1241
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bnel	$3,$0,.L1242
	move	$2,$0

	sltu	$2,$5,$2
	daddiu	$2,$2,1
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L1242:
	.align	3
.L1245:
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L1241:
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
	.set	nomicromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$4,$6
	bne	$2,$0,.L1250
	slt	$4,$6,$4

	bne	$4,$0,.L1249
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L1250
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1250:
	jr	$31
	move	$2,$0

	.align	3
.L1249:
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
	andi	$6,$4,0xffff
	sltu	$6,$6,1
	sll	$3,$6,4
	srl	$3,$4,$3
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
	nor	$6,$0,$3
	daddu	$2,$2,$7
	dsll	$5,$5,2
	andi	$6,$6,0x1
	srl	$3,$3,1
	daddu	$5,$5,$2
	dsll	$4,$4,1
	li	$2,2			# 0x2
	subu	$3,$2,$3
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
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__ctzti2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ctzti2)))
	sltu	$16,$5,1
	beq	$5,$0,.L1257
	move	$2,$4

	move	$2,$0
.L1257:
	daddiu	$4,$16,-1
	ld	$25,%call16(__ctzdi2)($28)
	and	$4,$4,$5
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	or	$4,$2,$4

	sll	$16,$16,6
	addu	$2,$2,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
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
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__ffsti2)))
	daddu	$28,$28,$25
	bne	$5,$0,.L1262
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ffsti2)))

	bne	$4,$0,.L1267
	move	$2,$0

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1262:
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	move	$4,$5

	addiu	$2,$2,1
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1267:
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	nop

	addiu	$2,$2,65
	ld	$31,8($sp)
	ld	$28,0($sp)
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
	beq	$2,$0,.L1269
	move	$2,$0

	dsra	$4,$4,32
	srl	$3,$4,$5
	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsll	$2,$2,32
	jr	$31
	or	$2,$2,$3

	.align	3
.L1269:
	beq	$5,$0,.L1272
	subu	$3,$0,$5

	dsra	$2,$4,32
	sll	$4,$4,0
	sll	$3,$2,$3
	srl	$4,$4,$5
	or	$3,$3,$4
	srl	$2,$2,$5
	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsll	$2,$2,32
	jr	$31
	or	$2,$2,$3

	.align	3
.L1272:
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
	beq	$2,$0,.L1275
	nop

	dsrl	$5,$4,$6
	move	$4,$0
	move	$2,$4
.L1280:
	jr	$31
	move	$3,$5

	.align	3
.L1275:
	beql	$6,$0,.L1280
	move	$2,$4

	subu	$2,$0,$6
	dsll	$2,$4,$2
	dsrl	$5,$5,$6
	dsrl	$4,$4,$6
	or	$5,$2,$5
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
	andi	$3,$5,0xffff
	mult	$6,$3
	mflo	$2
	srl	$4,$4,16
	srl	$5,$5,16
	mult	$4,$3
	mflo	$8
	srl	$3,$2,16
	andi	$2,$2,0xffff
	mult	$5,$6
	mflo	$7
	addu	$3,$3,$8
	sll	$6,$3,16
	addu	$2,$2,$6
	srl	$6,$2,16
	srl	$3,$3,16
	andi	$2,$2,0xffff
	mult	$4,$5
	addu	$4,$6,$7
	sll	$5,$4,16
	srl	$4,$4,16
	addu	$2,$2,$5
	dsll	$2,$2,32
	dsrl	$2,$2,32
	mflo	$5
	addu	$3,$3,$5
	addu	$3,$3,$4
	dsll	$3,$3,32
	jr	$31
	or	$2,$2,$3

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
	andi	$6,$4,0xffff
	andi	$3,$5,0xffff
	mult	$6,$3
	mflo	$2
	srl	$11,$9,16
	sll	$8,$5,0
	srl	$10,$8,16
	dsra	$5,$5,32
	dsra	$4,$4,32
	mult	$11,$3
	mflo	$7
	srl	$3,$2,16
	andi	$2,$2,0xffff
	mult	$10,$6
	mflo	$12
	addu	$3,$3,$7
	sll	$6,$3,16
	addu	$2,$2,$6
	srl	$7,$2,16
	srl	$6,$3,16
	andi	$2,$2,0xffff
	mult	$11,$10
	mflo	$10
	addu	$3,$7,$12
	srl	$7,$3,16
	sll	$3,$3,16
	addu	$3,$2,$3
	dsll	$3,$3,32
	dsrl	$3,$3,32
	mult	$9,$5
	mflo	$2
	addu	$5,$6,$10
	addu	$5,$5,$7
	mult	$8,$4
	addu	$2,$2,$5
	mflo	$4
	addu	$2,$2,$4
	dsll	$2,$2,32
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
	sll	$2,$4,0
	sll	$3,$5,0
	multu	$2,$3
	mflo	$6
	mfhi	$7
	dsll	$6,$6,32
	dsrl	$6,$6,32
	dsll	$7,$7,32
	or	$6,$6,$7
	dsra	$4,$4,32
	dsra	$5,$5,32
	multu	$3,$4
	mflo	$3
	mfhi	$7
	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsll	$7,$7,32
	or	$3,$3,$7
	dsrl	$7,$6,32
	dsll	$6,$6,32
	dsrl	$6,$6,32
	multu	$2,$5
	mflo	$2
	mfhi	$8
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsll	$8,$8,32
	or	$2,$2,$8
	daddu	$3,$3,$7
	dsll	$7,$3,32
	dsrl	$7,$7,32
	dsrl	$3,$3,32
	multu	$4,$5
	mflo	$4
	mfhi	$5
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dsll	$5,$5,32
	or	$4,$4,$5
	daddu	$2,$2,$7
	dsll	$5,$2,32
	dsrl	$2,$2,32
	daddu	$6,$6,$5
	daddu	$3,$3,$4
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
	.set	nomicromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$3,$5,0
	sll	$2,$7,0
	multu	$3,$2
	mflo	$8
	mfhi	$9
	dsll	$8,$8,32
	dsrl	$8,$8,32
	dsll	$9,$9,32
	or	$8,$8,$9
	dsra	$9,$5,32
	dsra	$10,$7,32
	multu	$2,$9
	mflo	$2
	mfhi	$11
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsll	$11,$11,32
	or	$2,$2,$11
	dsrl	$11,$8,32
	dsll	$8,$8,32
	dsrl	$8,$8,32
	multu	$3,$10
	mflo	$3
	mfhi	$12
	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsll	$12,$12,32
	or	$3,$3,$12
	daddu	$2,$2,$11
	dsll	$11,$2,32
	dsrl	$11,$11,32
	dsrl	$2,$2,32
	multu	$9,$10
	mflo	$9
	mfhi	$10
	dsll	$9,$9,32
	dsrl	$9,$9,32
	dsll	$10,$10,32
	or	$9,$9,$10
	daddu	$3,$3,$11
	dsrl	$10,$3,32
	dsll	$3,$3,32
	daddu	$8,$8,$3
	dmult	$5,$6
	mflo	$5
	daddu	$2,$2,$9
	daddu	$10,$2,$10
	dmult	$7,$4
	mflo	$2
	daddu	$5,$5,$10
	daddu	$2,$5,$2
	jr	$31
	move	$3,$8

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
	xor	$2,$2,$4
	srl	$3,$2,16
	xor	$3,$3,$2
	srl	$2,$3,8
	xor	$2,$2,$3
	srl	$3,$2,4
	xor	$3,$3,$2
	andi	$3,$3,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
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
	.set	nomicromips
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
	srl	$3,$2,16
	xor	$3,$3,$2
	srl	$2,$3,8
	xor	$2,$2,$3
	srl	$3,$2,4
	xor	$3,$3,$2
	andi	$3,$3,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
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
	srl	$2,$4,8
	xor	$2,$2,$4
	srl	$4,$2,4
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
	daddiu	$2,$2,21845
	dsll	$2,$2,16
	daddiu	$3,$2,21845
	li	$2,858980352			# 0x33330000
	dsrl	$5,$4,1
	daddiu	$2,$2,13107
	dsll	$3,$3,16
	daddiu	$3,$3,21845
	and	$3,$5,$3
	dsll	$2,$2,16
	dsubu	$4,$4,$3
	daddiu	$2,$2,13107
	dsll	$2,$2,16
	daddiu	$2,$2,13107
	dsrl	$5,$4,2
	li	$3,252641280			# 0xf0f0000
	and	$5,$5,$2
	and	$4,$4,$2
	daddiu	$2,$3,3855
	daddu	$4,$5,$4
	dsll	$2,$2,16
	dsrl	$3,$4,4
	daddiu	$2,$2,3855
	daddu	$3,$3,$4
	dsll	$2,$2,16
	daddiu	$2,$2,3855
	and	$2,$3,$2
	dsrl	$3,$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	srl	$3,$2,16
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
	.set	nomicromips
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
	li	$2,858980352			# 0x33330000
	addiu	$2,$2,13107
	srl	$3,$4,2
	and	$3,$3,$2
	and	$4,$4,$2
	addu	$4,$4,$3
	srl	$3,$4,4
	addu	$3,$3,$4
	li	$2,252641280			# 0xf0f0000
	addiu	$2,$2,3855
	and	$3,$3,$2
	srl	$2,$3,16
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
	daddiu	$3,$3,21845
	dsll	$3,$3,16
	dsll	$6,$4,63
	dsrl	$2,$5,1
	daddiu	$3,$3,21845
	dsll	$3,$3,16
	daddiu	$3,$3,21845
	or	$2,$6,$2
	dsrl	$6,$4,1
	and	$2,$2,$3
	dsubu	$2,$5,$2
	and	$6,$6,$3
	li	$3,858980352			# 0x33330000
	sltu	$5,$5,$2
	dsubu	$4,$4,$6
	daddiu	$3,$3,13107
	dsubu	$4,$4,$5
	dsll	$3,$3,16
	dsll	$6,$4,62
	dsrl	$5,$2,2
	daddiu	$3,$3,13107
	dsll	$3,$3,16
	daddiu	$3,$3,13107
	or	$5,$6,$5
	and	$5,$5,$3
	dsrl	$6,$4,2
	and	$2,$2,$3
	daddu	$2,$5,$2
	and	$6,$6,$3
	and	$4,$4,$3
	sltu	$5,$2,$5
	daddu	$4,$6,$4
	daddu	$5,$5,$4
	dsll	$6,$5,60
	dsrl	$3,$2,4
	li	$4,252641280			# 0xf0f0000
	or	$3,$6,$3
	daddiu	$4,$4,3855
	daddu	$2,$3,$2
	dsrl	$6,$5,4
	dsll	$4,$4,16
	sltu	$3,$2,$3
	daddu	$5,$6,$5
	daddiu	$4,$4,3855
	dsll	$4,$4,16
	daddiu	$4,$4,3855
	daddu	$3,$3,$5
	and	$3,$3,$4
	and	$2,$2,$4
	daddu	$3,$3,$2
	dsra	$2,$3,32
	sll	$3,$3,0
	addu	$2,$2,$3
	srl	$3,$2,16
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
	.set	nomicromips
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
	ldc1	$f0,%got_ofst(.LC12)($4)
	move	$2,$5
	.align	3
.L1314:
	andi	$3,$2,0x1
	bnel	$3,$0,.L1306
	mul.d	$f0,$f0,$f12

.L1306:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	bnel	$2,$0,.L1314
	mul.d	$f12,$f12,$f12

	bltz	$5,.L1315
	ldc1	$f1,%got_ofst(.LC12)($4)

	jr	$31
	nop

	.align	3
.L1315:
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
	lui	$6,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$6,$6,$25
	daddiu	$6,$6,%lo(%neg(%gp_rel(__powisf2)))
	ld	$4,%got_page(.LC14)($6)
	lwc1	$f0,%got_ofst(.LC14)($4)
	move	$2,$5
	.align	3
.L1327:
	andi	$3,$2,0x1
	bnel	$3,$0,.L1319
	mul.s	$f0,$f0,$f12

.L1319:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	bnel	$2,$0,.L1327
	mul.s	$f12,$f12,$f12

	bltz	$5,.L1328
	lwc1	$f1,%got_ofst(.LC14)($4)

	jr	$31
	nop

	.align	3
.L1328:
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
	bne	$6,$0,.L1335
	nop

	sltu	$2,$3,$2
	bne	$2,$0,.L1334
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bne	$3,$0,.L1335
	nop

	sltu	$2,$5,$2
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1335:
	jr	$31
	move	$2,$0

	.align	3
.L1334:
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
	bnel	$6,$0,.L1345
	move	$2,$0

	sltu	$2,$3,$2
	bne	$2,$0,.L1341
	sll	$5,$5,0

	sll	$2,$4,0
	sltu	$3,$2,$5
	bnel	$3,$0,.L1342
	move	$2,$0

	sltu	$2,$5,$2
	daddiu	$2,$2,1
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L1342:
	.align	3
.L1345:
	jr	$31
	addiu	$2,$2,-1

	.align	3
.L1341:
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
	.set	nomicromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$6
	bne	$2,$0,.L1350
	sltu	$4,$6,$4

	bne	$4,$0,.L1349
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L1350
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

	.align	3
.L1350:
	jr	$31
	move	$2,$0

	.align	3
.L1349:
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
