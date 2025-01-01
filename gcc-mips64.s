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
	beq	$3,$0,.L6
	move	$2,$4

	daddu	$5,$5,$6
	beq	$6,$0,.L14
	daddu	$3,$4,$6

.L8:
	daddiu	$5,$5,-1
	daddiu	$3,$3,-1
	lb	$4,0($5)
	bne	$2,$3,.L8
	sb	$4,0($3)

.L14:
	jr	$31
	nop

.L6:
	beq	$4,$5,.L13
	nop

	beq	$6,$0,.L14
	daddu	$6,$4,$6

	move	$3,$4
.L9:
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	lb	$4,-1($5)
	bne	$3,$6,.L9
	sb	$4,-1($3)

.L13:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memmove
	.size	memmove, .-memmove
	.align	2
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
	beq	$7,$0,.L17
	andi	$6,$6,0xff

.L16:
	lbu	$2,0($5)
	beq	$6,$2,.L17
	sb	$2,0($4)

	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	bne	$7,$0,.L16
	daddiu	$4,$4,1

.L17:
	beq	$7,$0,.L23
	move	$2,$0

	daddiu	$2,$4,1
.L23:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
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
	andi	$5,$5,0xff
	beq	$6,$0,.L26
	move	$2,$4

.L25:
	lbu	$2,0($4)
	beql	$5,$2,.L32
	move	$2,$4

	daddiu	$6,$6,-1
	bne	$6,$0,.L25
	daddiu	$4,$4,1

	move	$2,$4
.L32:
.L26:
	beq	$6,$0,.L33
	nop

.L24:
	jr	$31
	nop

.L33:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	memchr
	.size	memchr, .-memchr
	.align	2
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
	beq	$6,$0,.L42
	move	$2,$0

.L35:
	lbu	$3,0($4)
	lbu	$2,0($5)
	bne	$3,$2,.L36
	nop

	daddiu	$6,$6,-1
	daddiu	$4,$4,1
	bne	$6,$0,.L35
	daddiu	$5,$5,1

.L36:
	beq	$6,$0,.L42
	move	$2,$0

	lbu	$2,0($4)
	lbu	$3,0($5)
	subu	$2,$2,$3
.L42:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.set	nomips16
	.set	nomicromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L48
	move	$2,$4

	daddu	$6,$4,$6
	move	$3,$4
.L45:
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	lbu	$7,-1($5)
	bne	$3,$6,.L45
	sb	$7,-1($3)

.L48:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
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
	andi	$5,$5,0xff
	daddiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
.L50:
	beq	$6,$2,.L55
	daddu	$3,$4,$6

	lbu	$3,0($3)
	beq	$5,$3,.L56
	daddiu	$7,$6,-1

	b	.L50
	move	$6,$7

.L56:
	jr	$31
	daddu	$2,$4,$6

.L55:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
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
	beq	$6,$0,.L63
	move	$2,$4

	daddu	$6,$4,$6
	move	$3,$4
	andi	$5,$5,0x00ff
	sb	$5,0($3)
.L62:
	daddiu	$3,$3,1
	bnel	$3,$6,.L62
	sb	$5,0($3)

.L63:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memset
	.size	memset, .-memset
	.align	2
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
	move	$2,$4
	lb	$3,0($5)
	beq	$3,$0,.L69
	sb	$3,0($4)

.L66:
	daddiu	$5,$5,1
	daddiu	$2,$2,1
	lb	$3,0($5)
	bne	$3,$0,.L66
	sb	$3,0($2)

.L69:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
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
	lb	$2,0($4)
	beq	$2,$0,.L77
	andi	$5,$5,0xff

	lbu	$2,0($4)
.L79:
	beq	$5,$2,.L78
	nop

	daddiu	$4,$4,1
	lb	$2,0($4)
	bnel	$2,$0,.L79
	lbu	$2,0($4)

	jr	$31
	move	$2,$4

.L77:
	jr	$31
	move	$2,$4

.L78:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
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
	move	$2,$4
	lb	$3,0($2)
.L85:
	beq	$5,$3,.L86
	nop

	daddiu	$2,$2,1
	lb	$3,-1($2)
	bnel	$3,$0,.L85
	lb	$3,0($2)

	move	$2,$0
.L86:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strchr
	.size	strchr, .-strchr
	.align	2
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
	bnel	$3,$2,.L93
	lbu	$3,0($4)

	lb	$2,0($4)
.L94:
	beql	$2,$0,.L93
	lbu	$3,0($4)

	daddiu	$4,$4,1
	daddiu	$5,$5,1
	lb	$3,0($4)
	lb	$2,0($5)
	beql	$3,$2,.L94
	lb	$2,0($4)

	lbu	$3,0($4)
.L93:
	lbu	$2,0($5)
	jr	$31
	subu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
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
	beq	$2,$0,.L101
	move	$2,$4

	daddiu	$2,$2,1
.L102:
	lb	$5,0($2)
	bnel	$5,$0,.L102
	daddiu	$2,$2,1

.L96:
.L101:
	jr	$31
	dsubu	$2,$2,$4

	.set	macro
	.set	reorder
	.end	strlen
	.size	strlen, .-strlen
	.align	2
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
	beq	$6,$0,.L108
	nop

	lbu	$2,0($4)
	beql	$2,$0,.L110
	lbu	$3,0($5)

	daddiu	$6,$6,-1
	daddu	$6,$4,$6
.L106:
	lbu	$2,0($5)
	beql	$2,$0,.L111
	lbu	$2,0($4)

	beql	$4,$6,.L111
	lbu	$2,0($4)

	lbu	$3,0($4)
	lbu	$2,0($5)
	bnel	$3,$2,.L111
	lbu	$2,0($4)

	daddiu	$4,$4,1
	lbu	$2,0($4)
	bne	$2,$0,.L106
	daddiu	$5,$5,1

	lbu	$2,0($4)
.L111:
	lbu	$3,0($5)
.L110:
	jr	$31
	subu	$2,$2,$3

.L108:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
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
	bne	$2,$0,.L117
	daddiu	$2,$6,-2

	dsrl	$2,$2,1
	daddiu	$2,$2,1
	dsll	$2,$2,1
	daddu	$2,$4,$2
.L114:
	lb	$3,1($4)
	sb	$3,0($5)
	lb	$3,0($4)
	sb	$3,1($5)
	daddiu	$4,$4,2
	bne	$4,$2,.L114
	daddiu	$5,$5,2

.L117:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	swab
	.size	swab, .-swab
	.align	2
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
	beq	$4,$2,.L124
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

.L124:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isblank
	.size	isblank, .-isblank
	.align	2
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
	bne	$3,$0,.L130
	li	$2,1			# 0x1

	xori	$4,$4,0x7f
	sltu	$2,$4,1
.L130:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
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
	beq	$4,$2,.L141
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

.L141:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isspace
	.size	isspace, .-isspace
	.align	2
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
	bne	$3,$0,.L151
	li	$2,1			# 0x1

	addiu	$3,$4,-127
	sltu	$3,$3,33
	bne	$3,$0,.L151
	addiu	$3,$4,-8232

	sltu	$3,$3,2
	bne	$3,$0,.L151
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$2,$2,$4
	sltu	$2,$2,3
.L151:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
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
	bne	$2,$0,.L162
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,.L157
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,.L158
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$2,$4
	sltu	$2,$2,8185
	bne	$2,$0,.L159
	li	$3,1048576			# 0x100000

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$2,$4
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,.L160
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

.L162:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

.L157:
	jr	$31
	li	$2,1			# 0x1

.L158:
	jr	$31
	li	$2,1			# 0x1

.L159:
	jr	$31
	li	$2,1			# 0x1

.L160:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
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
	bne	$3,$0,.L167
	li	$2,1			# 0x1

	ori	$4,$4,0x20
	addiu	$4,$4,-97
	sltu	$2,$4,6
.L167:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
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
	bc1t	.L173
	nop

	c.un.d	$f13,$f13
	nop
	bc1t	.L174
	nop

	c.lt.d	$f13,$f12
	nop
	bc1f	.L177
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

.L173:
	jr	$31
	mov.d	$f0,$f12

.L174:
	jr	$31
	mov.d	$f0,$f13

.L177:
	dmtc1	$0,$f0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fdim
	.size	fdim, .-fdim
	.align	2
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
	bc1t	.L182
	nop

	c.un.s	$f13,$f13
	nop
	bc1t	.L183
	nop

	c.lt.s	$f13,$f12
	nop
	bc1f	.L186
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

.L182:
	jr	$31
	mov.s	$f0,$f12

.L183:
	jr	$31
	mov.s	$f0,$f13

.L186:
	mtc1	$0,$f0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fdimf
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.set	nomips16
	.set	nomicromips
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmfc1	$3,$f13
	c.un.d	$f12,$f12
	nop
	bc1t	.L194
	nop

	dmfc1	$2,$f12
	c.un.d	$f13,$f13
	nop
	bc1t	.L195
	dsrl	$5,$2,63

	dsrl	$4,$3,63
	beq	$5,$4,.L190
	nop

	bgez	$2,.L199
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f13

.L190:
	c.lt.d	$f12,$f13
	nop
	bc1t	.L191
	li	$4,1			# 0x1

	move	$4,$0
.L191:
	andi	$4,$4,0x00ff
	dmtc1	$2,$f0
	beq	$4,$0,.L198
	nop

	dmtc1	$3,$f0
.L199:
	jr	$31
	nop

.L194:
	jr	$31
	mov.d	$f0,$f13

.L195:
	mov.d	$f0,$f12
.L198:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fmax
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.set	nomips16
	.set	nomicromips
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mfc1	$3,$f13
	c.un.s	$f12,$f12
	nop
	bc1t	.L206
	nop

	mfc1	$2,$f12
	c.un.s	$f13,$f13
	nop
	bc1t	.L207
	li	$6,-2147483648			# 0xffffffff80000000

	and	$5,$2,$6
	and	$4,$3,$6
	beq	$5,$4,.L202
	nop

	bgez	$2,.L211
	mov.s	$f0,$f12

	jr	$31
	mov.s	$f0,$f13

.L202:
	c.lt.s	$f12,$f13
	nop
	bc1t	.L203
	li	$4,1			# 0x1

	move	$4,$0
.L203:
	andi	$4,$4,0x00ff
	mtc1	$2,$f0
	beq	$4,$0,.L210
	nop

	mtc1	$3,$f0
.L211:
	jr	$31
	nop

.L206:
	jr	$31
	mov.s	$f0,$f13

.L207:
	mov.s	$f0,$f12
.L210:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
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
	dmfc1	$7,$f13
	dmfc1	$6,$f12
	nop
	move	$16,$6
	move	$17,$7
	dmfc1	$7,$f15
	dmfc1	$6,$f14
	nop
	move	$22,$6
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$17,$f15
	nop
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	nop
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$23,$7

	bne	$2,$0,.L218
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$23,$f15
	nop
	dmtc1	$22,$f14
	dmtc1	$23,$f13
	nop
	dmtc1	$22,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L212
	dsrl	$2,$16,63

	dsrl	$3,$22,63
	beq	$2,$3,.L214
	ld	$25,%call16(__lttf2)($28)

	bgez	$16,.L212
	nop

	move	$16,$22
	move	$17,$23
.L212:
	dmtc1	$16,$f0
	dmtc1	$17,$f2
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

.L214:
	sd	$22,0($sp)
	sd	$23,8($sp)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	sd	$16,16($sp)
	sd	$17,24($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bgez	$2,.L212
	nop

	move	$16,$22
	b	.L212
	move	$17,$23

.L218:
	move	$16,$22
	b	.L212
	move	$17,$23

	.set	macro
	.set	reorder
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
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
	c.un.d	$f12,$f12
	nop
	bc1t	.L228
	sdc1	$f13,0($sp)

	dmfc1	$2,$f12
	c.un.d	$f13,$f13
	nop
	bc1t	.L229
	mov.d	$f0,$f13

	dsrl	$4,$2,63
	ld	$3,0($sp)
	dsrl	$3,$3,63
	beq	$4,$3,.L224
	ldc1	$f1,0($sp)

	bltzl	$2,.L222
	mov.d	$f0,$f12

.L222:
	jr	$31
	daddiu	$sp,$sp,16

.L224:
	c.lt.d	$f12,$f1
	nop
	bc1t	.L225
	li	$3,1			# 0x1

	move	$3,$0
.L225:
	andi	$3,$3,0x00ff
	beq	$3,$0,.L222
	ldc1	$f0,0($sp)

	dmtc1	$2,$f0
	b	.L222
	nop

.L228:
	b	.L222
	ldc1	$f0,0($sp)

.L229:
	b	.L222
	mov.d	$f0,$f12

	.set	macro
	.set	reorder
	.end	fmin
	.size	fmin, .-fmin
	.align	2
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
	c.un.s	$f12,$f12
	nop
	bc1t	.L238
	swc1	$f13,0($sp)

	mfc1	$2,$f12
	c.un.s	$f13,$f13
	nop
	bc1t	.L239
	mov.s	$f0,$f13

	li	$5,-2147483648			# 0xffffffff80000000
	and	$4,$2,$5
	lw	$3,0($sp)
	and	$3,$3,$5
	beq	$4,$3,.L234
	lwc1	$f1,0($sp)

	bltzl	$2,.L232
	mov.s	$f0,$f12

.L232:
	jr	$31
	daddiu	$sp,$sp,16

.L234:
	c.lt.s	$f12,$f1
	nop
	bc1t	.L235
	li	$3,1			# 0x1

	move	$3,$0
.L235:
	andi	$3,$3,0x00ff
	beq	$3,$0,.L232
	lwc1	$f0,0($sp)

	mtc1	$2,$f0
	b	.L232
	nop

.L238:
	b	.L232
	lwc1	$f0,0($sp)

.L239:
	b	.L232
	mov.s	$f0,$f12

	.set	macro
	.set	reorder
	.end	fminf
	.size	fminf, .-fminf
	.align	2
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
	dmfc1	$7,$f13
	dmfc1	$6,$f12
	nop
	move	$22,$6
	move	$23,$7
	dmfc1	$7,$f15
	dmfc1	$6,$f14
	nop
	move	$16,$6
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$23,$f15
	nop
	dmtc1	$22,$f14
	dmtc1	$23,$f13
	nop
	dmtc1	$22,$f12
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$17,$7

	bne	$2,$0,.L242
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

	bne	$2,$0,.L249
	dsrl	$2,$22,63

	dsrl	$3,$16,63
	beq	$2,$3,.L244
	ld	$25,%call16(__lttf2)($28)

	bgez	$22,.L242
	nop

	move	$16,$22
	move	$17,$23
.L242:
	dmtc1	$16,$f0
	dmtc1	$17,$f2
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

.L244:
	sd	$16,0($sp)
	sd	$17,8($sp)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	sd	$22,16($sp)
	sd	$23,24($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bgez	$2,.L242
	nop

	move	$16,$22
	b	.L242
	move	$17,$23

.L249:
	move	$16,$22
	b	.L242
	move	$17,$23

	.set	macro
	.set	reorder
	.end	fminl
	.size	fminl, .-fminl
	.rdata
	.align	3
	.type	digits, @object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr"
	.ascii	"stuvwxyz\000"
	.text
	.align	2
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
	lui	$6,%hi(%neg(%gp_rel(l64a)))
	daddu	$6,$6,$25
	sll	$4,$4,0
	beq	$4,$0,.L255
	daddiu	$6,$6,%lo(%neg(%gp_rel(l64a)))

	move	$5,$4
	ld	$3,%got_page(s.0)($6)
	daddiu	$3,$3,%got_ofst(s.0)
	ld	$4,%got_page(digits)($6)
	daddiu	$4,$4,%got_ofst(digits)
.L254:
	andi	$2,$5,0x3f
	daddu	$2,$2,$4
	lb	$2,0($2)
	sb	$2,0($3)
	daddiu	$3,$3,1
	srl	$2,$5,6
	bne	$2,$0,.L254
	move	$5,$2

.L253:
	sb	$0,0($3)
	ld	$2,%got_page(s.0)($6)
	jr	$31
	daddiu	$2,$2,%got_ofst(s.0)

.L255:
	ld	$3,%got_page(s.0)($6)
	b	.L253
	daddiu	$3,$3,%got_ofst(s.0)

	.set	macro
	.set	reorder
	.end	l64a
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
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
	beql	$5,$0,.L266
	sd	$0,8($4)

	ld	$2,0($5)
	sd	$2,0($4)
	sd	$5,8($4)
	sd	$4,0($5)
	ld	$2,0($4)
	bnel	$2,$0,.L268
	sd	$4,8($2)

.L268:
	jr	$31
	nop

.L266:
	sd	$0,0($4)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	insque
	.size	insque, .-insque
	.align	2
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
	beql	$2,$0,.L273
	ld	$2,8($4)

	ld	$3,8($4)
	sd	$3,8($2)
	ld	$2,8($4)
.L273:
	beq	$2,$0,.L274
	nop

	ld	$3,0($4)
	sd	$3,0($2)
.L274:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	remque
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.set	nomips16
	.set	nomicromips
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$28,64($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	move	$19,$4
	move	$21,$5
	move	$22,$6
	ld	$23,0($6)
	beq	$23,$0,.L276
	move	$18,$7

	move	$20,$8
	move	$17,$5
	move	$16,$0
.L279:
	move	$5,$17
	move	$25,$20
	jalr	$25
	move	$4,$19

	beq	$2,$0,.L282
	dmult	$16,$18

	daddiu	$16,$16,1
	bne	$16,$23,.L279
	daddu	$17,$17,$18

.L276:
	daddiu	$2,$23,1
	sd	$2,0($22)
	dmult	$18,$23
	mflo	$4
	move	$6,$18
	move	$5,$19
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$21,$4

.L275:
	ld	$31,72($sp)
	ld	$28,64($sp)
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

.L282:
	mflo	$2
	b	.L275
	daddu	$2,$21,$2

	.set	macro
	.set	reorder
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
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
	ld	$21,0($6)
	beq	$21,$0,.L287
	move	$19,$4

	move	$22,$5
	move	$18,$7
	move	$20,$8
	move	$17,$5
	move	$16,$0
.L286:
	move	$5,$17
	move	$25,$20
	jalr	$25
	move	$4,$19

	beq	$2,$0,.L290
	dmult	$16,$18

	daddiu	$16,$16,1
	bne	$16,$21,.L286
	daddu	$17,$17,$18

	b	.L283
	move	$2,$0

.L290:
	mflo	$2
	daddu	$2,$22,$2
.L283:
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

.L287:
	b	.L283
	move	$2,$0

	.set	macro
	.set	reorder
	.end	lfind
	.size	lfind, .-lfind
	.align	2
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
	.globl	atoi
	.set	nomips16
	.set	nomicromips
	.ent	atoi
	.type	atoi, @function
atoi:
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
	lui	$28,%hi(%neg(%gp_rel(atoi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoi)))
	move	$16,$4
	ld	$17,%got_disp(isspace)($28)
.L295:
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnel	$2,$0,.L295
	daddiu	$16,$16,1

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L301
	li	$3,45			# 0x2d

	bne	$2,$3,.L307
	move	$4,$0

	li	$4,1			# 0x1
.L296:
	daddiu	$16,$16,1
	lb	$2,0($16)
.L307:
	addiu	$2,$2,-48
	sltu	$2,$2,10
	beq	$2,$0,.L298
	move	$2,$0

	sll	$3,$2,2
.L306:
	addu	$3,$3,$2
	sll	$3,$3,1
	daddiu	$16,$16,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	subu	$2,$3,$2
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,.L306
	sll	$3,$2,2

.L298:
	beql	$4,$0,.L300
	subu	$2,$0,$2

.L300:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L301:
	b	.L296
	move	$4,$0

	.set	macro
	.set	reorder
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	nomips16
	.set	nomicromips
	.ent	atol
	.type	atol, @function
atol:
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
	lui	$28,%hi(%neg(%gp_rel(atol)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atol)))
	move	$16,$4
	ld	$17,%got_disp(isspace)($28)
.L310:
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnel	$2,$0,.L310
	daddiu	$16,$16,1

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L316
	li	$3,45			# 0x2d

	bne	$2,$3,.L322
	move	$4,$0

	li	$4,1			# 0x1
.L311:
	daddiu	$16,$16,1
	lb	$2,0($16)
.L322:
	addiu	$2,$2,-48
	sltu	$2,$2,10
	beq	$2,$0,.L313
	move	$2,$0

	dsll	$3,$2,2
.L321:
	daddu	$3,$3,$2
	dsll	$3,$3,1
	daddiu	$16,$16,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	dsubu	$2,$3,$2
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,.L321
	dsll	$3,$2,2

.L313:
	beql	$4,$0,.L308
	dsubu	$2,$0,$2

.L308:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L316:
	b	.L311
	move	$4,$0

	.set	macro
	.set	reorder
	.end	atol
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.set	nomips16
	.set	nomicromips
	.ent	atoll
	.type	atoll, @function
atoll:
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
	lui	$28,%hi(%neg(%gp_rel(atoll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoll)))
	move	$16,$4
	ld	$17,%got_disp(isspace)($28)
.L325:
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnel	$2,$0,.L325
	daddiu	$16,$16,1

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L331
	li	$3,45			# 0x2d

	bne	$2,$3,.L337
	move	$4,$0

	li	$4,1			# 0x1
.L326:
	daddiu	$16,$16,1
	lb	$2,0($16)
.L337:
	addiu	$2,$2,-48
	sltu	$2,$2,10
	beq	$2,$0,.L328
	move	$2,$0

	dsll	$3,$2,2
.L336:
	daddu	$3,$3,$2
	dsll	$3,$3,1
	daddiu	$16,$16,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	dsubu	$2,$3,$2
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,.L336
	dsll	$3,$2,2

.L328:
	beql	$4,$0,.L323
	dsubu	$2,$0,$2

.L323:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L331:
	b	.L326
	move	$4,$0

	.set	macro
	.set	reorder
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.set	nomips16
	.set	nomicromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$21,$4
	move	$19,$5
	move	$16,$6
	move	$18,$7
	bne	$6,$0,.L342
	move	$20,$8

	b	.L338
	move	$17,$0

.L347:
.L341:
	beq	$16,$0,.L346
	move	$17,$0

.L342:
	dsrl	$2,$16,1
	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$5,$17
	move	$25,$20
	jalr	$25
	move	$4,$21

	bltzl	$2,.L347
	dsrl	$16,$16,1

	blez	$2,.L338
	daddu	$19,$17,$18

	dsrl	$2,$16,1
	daddiu	$16,$16,-1
	b	.L341
	dsubu	$16,$16,$2

.L346:
.L338:
	move	$2,$17
	ld	$31,56($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.set	nomips16
	.set	nomicromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
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
	move	$22,$4
	move	$19,$5
	move	$18,$7
	move	$21,$8
	move	$20,$9
	sll	$6,$6,0
	bne	$6,$0,.L351
	move	$16,$6

	b	.L348
	move	$17,$0

.L350:
	sra	$16,$16,1
.L357:
	beq	$16,$0,.L355
	move	$17,$0

.L351:
	sra	$2,$16,1
	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$6,$20
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	beql	$2,$0,.L356
	move	$2,$17

	blezl	$2,.L357
	sra	$16,$16,1

	daddu	$19,$17,$18
	b	.L350
	addiu	$16,$16,-1

.L355:
.L348:
	move	$2,$17
.L356:
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
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
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
	mflo	$2
	nop
	nop
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
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
	beq	$2,$0,.L374
	move	$2,$4

.L373:
	lw	$2,0($4)
	beq	$5,$2,.L381
	move	$2,$4

	daddiu	$4,$4,4
	lw	$2,0($4)
	bne	$2,$0,.L373
	move	$2,$4

.L381:
.L374:
	lw	$3,0($2)
	beq	$3,$0,.L382
	nop

.L372:
	jr	$31
	nop

.L382:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	wcschr
	.size	wcschr, .-wcschr
	.align	2
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
	lw	$2,0($5)
	bne	$3,$2,.L391
	slt	$3,$3,$2

	lw	$2,0($4)
.L394:
	beql	$2,$0,.L392
	lw	$3,0($4)

	lw	$2,0($5)
	beql	$2,$0,.L393
	lw	$3,0($4)

	daddiu	$4,$4,4
	daddiu	$5,$5,4
	lw	$3,0($4)
	lw	$2,0($5)
	beql	$3,$2,.L394
	lw	$2,0($4)

	lw	$3,0($4)
.L392:
	lw	$2,0($5)
.L393:
	slt	$3,$3,$2
.L391:
	bne	$3,$0,.L395
	li	$2,-1			# 0xffffffffffffffff

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3,$2
.L395:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
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
.L397:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$6,-4($5)
	bne	$6,$0,.L397
	sw	$6,-4($3)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
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
	beq	$2,$0,.L401
	move	$2,$4

	daddiu	$2,$2,4
.L406:
	lw	$3,0($2)
	bnel	$3,$0,.L406
	daddiu	$2,$2,4

.L401:
	dsubu	$2,$2,$4
	jr	$31
	dsra	$2,$2,2

	.set	macro
	.set	reorder
	.end	wcslen
	.size	wcslen, .-wcslen
	.align	2
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
	beq	$6,$0,.L416
	move	$2,$0

.L408:
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L409
	nop

	beq	$3,$0,.L409
	nop

	beq	$2,$0,.L409
	nop

	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	bne	$6,$0,.L408
	daddiu	$5,$5,4

.L409:
	beq	$6,$0,.L416
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$3,$2
	bne	$3,$0,.L416
	li	$2,-1			# 0xffffffffffffffff

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3,$2
.L416:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
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
	beq	$6,$0,.L419
	move	$2,$4

.L418:
	lw	$2,0($4)
	beql	$5,$2,.L425
	move	$2,$4

	daddiu	$6,$6,-1
	bne	$6,$0,.L418
	daddiu	$4,$4,4

	move	$2,$4
.L425:
.L419:
	beq	$6,$0,.L426
	nop

.L417:
	jr	$31
	nop

.L426:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
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
	beq	$6,$0,.L436
	move	$2,$0

.L428:
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L429
	nop

	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	bne	$6,$0,.L428
	daddiu	$5,$5,4

.L429:
	beq	$6,$0,.L436
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$3,$2
	bne	$3,$0,.L436
	li	$2,-1			# 0xffffffffffffffff

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3,$2
.L436:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.set	nomips16
	.set	nomicromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L442
	move	$2,$4

	daddiu	$3,$6,-1
	move	$6,$4
	li	$8,-1			# 0xffffffffffffffff
.L439:
	daddiu	$5,$5,4
	daddiu	$6,$6,4
	lw	$7,-4($5)
	daddiu	$3,$3,-1
	bne	$3,$8,.L439
	sw	$7,-4($6)

.L442:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
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
	beq	$4,$5,.L455
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$3,$3,$4
	bne	$3,$0,.L445
	daddiu	$7,$6,-1

	move	$3,$2
	beq	$6,$0,.L455
	li	$8,-1			# 0xffffffffffffffff

.L446:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$4,-4($5)
	daddiu	$7,$7,-1
	bne	$7,$8,.L446
	sw	$4,-4($3)

.L455:
	jr	$31
	nop

.L445:
	beq	$6,$0,.L455
	daddiu	$6,$6,-1

	dsll	$6,$6,2
	li	$7,-4			# 0xfffffffffffffffc
.L447:
	daddu	$3,$5,$6
	lw	$4,0($3)
	daddu	$3,$2,$6
	daddiu	$6,$6,-4
	bne	$6,$7,.L447
	sw	$4,0($3)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
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
	beq	$6,$0,.L461
	move	$2,$4

	daddiu	$3,$6,-1
	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
.L458:
	daddiu	$6,$6,4
	daddiu	$3,$3,-1
	bne	$3,$7,.L458
	sw	$5,-4($6)

.L461:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
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
	beq	$2,$0,.L463
	daddu	$2,$4,$6

	beq	$6,$0,.L471
	daddu	$5,$5,$6

.L465:
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	lb	$3,0($2)
	bne	$4,$2,.L465
	sb	$3,0($5)

.L471:
	jr	$31
	nop

.L463:
	beq	$4,$5,.L470
	nop

	beq	$6,$0,.L471
	daddu	$6,$4,$6

.L466:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
	lb	$2,-1($4)
	bne	$4,$6,.L466
	sb	$2,-1($5)

.L470:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
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
	dsll	$2,$4,$5
	subu	$5,$0,$5
	dsrl	$4,$4,$5
	jr	$31
	or	$2,$4,$2

	.set	macro
	.set	reorder
	.end	rotl64
	.size	rotl64, .-rotl64
	.align	2
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
	dsrl	$2,$4,$5
	subu	$5,$0,$5
	dsll	$4,$4,$5
	jr	$31
	or	$2,$4,$2

	.set	macro
	.set	reorder
	.end	rotr64
	.size	rotr64, .-rotr64
	.align	2
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
	sll	$2,$4,$5
	subu	$5,$0,$5
	srl	$4,$4,$5
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	rotl32
	.size	rotl32, .-rotl32
	.align	2
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
	srl	$2,$4,$5
	subu	$5,$0,$5
	sll	$4,$4,$5
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	rotr32
	.size	rotr32, .-rotr32
	.align	2
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
	dsll	$2,$4,$5
	subu	$5,$0,$5
	dsrl	$4,$4,$5
	jr	$31
	or	$2,$4,$2

	.set	macro
	.set	reorder
	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
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
	dsrl	$2,$4,$5
	subu	$5,$0,$5
	dsll	$4,$4,$5
	jr	$31
	or	$2,$4,$2

	.set	macro
	.set	reorder
	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
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
	sll	$3,$4,$5
	li	$2,16			# 0x10
	subu	$2,$2,$5
	srl	$2,$4,$2
	or	$2,$2,$3
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
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
	srl	$3,$4,$5
	li	$2,16			# 0x10
	subu	$2,$2,$5
	sll	$2,$4,$2
	or	$2,$2,$3
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
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
	sll	$3,$4,$5
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$2,$4,$2
	or	$2,$2,$3
	jr	$31
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
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
	srl	$3,$4,$5
	li	$2,8			# 0x8
	subu	$2,$2,$5
	sll	$2,$4,$2
	or	$2,$2,$3
	jr	$31
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
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
	dsrl	$2,$4,8
	andi	$4,$4,0x00ff
	dsll	$4,$4,8
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
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
	srl	$2,$4,24
	li	$3,16711680			# 0xff0000
	and	$3,$4,$3
	dsrl	$3,$3,8
	andi	$5,$4,0xff00
	dsll	$5,$5,8
	sll	$4,$4,24
	or	$4,$4,$5
	or	$2,$2,$4
	jr	$31
	or	$2,$2,$3

	.set	macro
	.set	reorder
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
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
	li	$2,-1			# 0xffffffffffffffff
	dsll	$5,$2,56
	and	$5,$4,$5
	dsrl	$5,$5,56
	li	$2,255			# 0xff
	dsll	$3,$2,48
	and	$3,$4,$3
	dsrl	$3,$3,40
	or	$3,$3,$5
	dsll	$5,$2,40
	and	$5,$4,$5
	dsrl	$5,$5,24
	or	$3,$3,$5
	dsll	$5,$2,32
	and	$5,$4,$5
	dsrl	$5,$5,8
	or	$3,$3,$5
	dsll	$2,$2,24
	and	$2,$4,$2
	dsll	$2,$2,8
	or	$3,$3,$2
	li	$2,16711680			# 0xff0000
	and	$2,$4,$2
	dsll	$2,$2,24
	or	$3,$3,$2
	andi	$2,$4,0xff00
	dsll	$2,$2,40
	or	$3,$3,$2
	dsll	$2,$4,56
	jr	$31
	or	$2,$3,$2

	.set	macro
	.set	reorder
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
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
	move	$2,$0
	li	$5,32			# 0x20
	srl	$3,$4,$2
.L505:
	andi	$3,$3,0x1
	bne	$3,$0,.L504
	nop

	addiu	$2,$2,1
	bne	$2,$5,.L505
	srl	$3,$4,$2

	jr	$31
	move	$2,$0

.L504:
	jr	$31
	addiu	$2,$2,1

	.set	macro
	.set	reorder
	.end	ffs
	.size	ffs, .-ffs
	.align	2
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
	beq	$4,$0,.L509
	nop

	andi	$2,$4,0x1
	bne	$2,$0,.L510
	nop

	li	$2,1			# 0x1
.L508:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,.L508
	addiu	$2,$2,1

	jr	$31
	nop

.L509:
	jr	$31
	move	$2,$0

.L510:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
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
	bc1t	.L518
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC1)($4)
	lwc1	$f0,%got_ofst(.LC1)($3)
	c.lt.s	$f0,$f12
	nop
	bc1t	.L515
	li	$2,1			# 0x1

	move	$2,$0
.L515:
	andi	$2,$2,0x1
.L518:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	gl_isinff
	.size	gl_isinff, .-gl_isinff
	.align	2
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
	bc1t	.L524
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC3)($4)
	ldc1	$f0,%got_ofst(.LC3)($3)
	c.lt.d	$f0,$f12
	nop
	bc1t	.L521
	li	$2,1			# 0x1

	move	$2,$0
.L521:
	andi	$2,$2,0x1
.L524:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	gl_isinfd
	.size	gl_isinfd, .-gl_isinfd
	.align	2
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
	dmfc1	$3,$f13
	dmfc1	$2,$f12
	nop
	move	$19,$2
	move	$18,$3
	ld	$25,%call16(__lttf2)($28)
	ld	$2,%got_page(.LC4)($28)
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC4)($2)

	bltz	$2,.L526
	li	$3,1			# 0x1

	ld	$25,%call16(__gttf2)($28)
	ld	$2,%got_page(.LC5)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	dmtc1	$18,$f13
	nop
	dmtc1	$19,$f12
	.reloc	1f,R_MIPS_JALR,__gttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC5)($2)

	slt	$3,$0,$2
.L526:
	move	$2,$3
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
	move	$16,$4
	ld	$25,%call16(__extenddftf2)($28)
	dmtc1	$5,$f0
	.reloc	1f,R_MIPS_JALR,__extenddftf2
1:	jalr	$25
	cvt.d.w	$f12,$f0

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
	lui	$3,%hi(%neg(%gp_rel(ldexpf)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexpf)))
	c.un.s	$f12,$f12
	nop
	bc1t	.L541
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$f12,$f1
	nop
	bc1t	.L541
	nop

	bltz	$5,.L539
	ld	$2,%got_page(.LC6)($3)

	b	.L536
	lwc1	$f1,%got_ofst(.LC6)($2)

.L539:
	ld	$2,%got_page(.LC7)($3)
	b	.L536
	lwc1	$f1,%got_ofst(.LC7)($2)

.L535:
	srl	$2,$5,31
.L540:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L541
	nop

	mul.s	$f1,$f1,$f1
.L536:
	andi	$2,$5,0x1
	bnel	$2,$0,.L535
	mul.s	$f0,$f0,$f1

	b	.L540
	srl	$2,$5,31

.L541:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
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
	lui	$3,%hi(%neg(%gp_rel(ldexp)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexp)))
	c.un.d	$f12,$f12
	nop
	bc1t	.L551
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$f12,$f1
	nop
	bc1t	.L551
	nop

	bltz	$5,.L549
	ld	$2,%got_page(.LC8)($3)

	b	.L546
	ldc1	$f1,%got_ofst(.LC8)($2)

.L549:
	ld	$2,%got_page(.LC9)($3)
	b	.L546
	ldc1	$f1,%got_ofst(.LC9)($2)

.L545:
	srl	$2,$5,31
.L550:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L551
	nop

	mul.d	$f1,$f1,$f1
.L546:
	andi	$2,$5,0x1
	bnel	$2,$0,.L545
	mul.d	$f0,$f0,$f1

	b	.L550
	srl	$2,$5,31

.L551:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
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
	nop
	move	$fp,$4
	move	$23,$5
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$5,$f15
	nop
	dmtc1	$4,$f14
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$22,$6

	bne	$2,$0,.L553
	ld	$25,%call16(__addtf3)($28)

	dmtc1	$23,$f15
	nop
	dmtc1	$fp,$f14
	sd	$fp,0($sp)
	sd	$23,8($sp)
	ldc1	$f13,8($sp)
	.reloc	1f,R_MIPS_JALR,__addtf3
1:	jalr	$25
	ldc1	$f12,0($sp)

	ld	$25,%call16(__netf2)($28)
	sdc1	$f0,16($sp)
	sdc1	$f2,24($sp)
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	sd	$fp,32($sp)
	sd	$23,40($sp)
	ldc1	$f13,40($sp)
	.reloc	1f,R_MIPS_JALR,__netf2
1:	jalr	$25
	ldc1	$f12,32($sp)

	beq	$2,$0,.L553
	nop

	bltz	$22,.L561
	ld	$2,%got_page(.LC10)($28)

	ld	$17,%got_ofst(.LC10+8)($2)
	b	.L557
	ld	$16,%got_ofst(.LC10)($2)

.L561:
	ld	$2,%got_page(.LC11)($28)
	ld	$17,%got_ofst(.LC11+8)($2)
	b	.L557
	ld	$16,%got_ofst(.LC11)($2)

.L556:
.L562:
	addu	$22,$2,$22
	sra	$22,$22,1
	beq	$22,$0,.L553
	ld	$25,%call16(__multf3)($28)

	dmtc1	$17,$f15
	nop
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	nop
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	nop

	dmfc1	$3,$f0
	dmfc1	$2,$f2
	nop
	move	$17,$2
	move	$16,$3
.L557:
	andi	$2,$22,0x1
	beql	$2,$0,.L556
	srl	$2,$22,31

	ld	$25,%call16(__multf3)($28)
	dmtc1	$17,$f15
	nop
	dmtc1	$16,$f14
	dmtc1	$23,$f13
	nop
	dmtc1	$fp,$f12
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	nop

	dmfc1	$fp,$f0
	dmfc1	$23,$f2
	b	.L562
	srl	$2,$22,31

.L553:
	dmtc1	$fp,$f0
	dmtc1	$23,$f2
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
	beq	$6,$0,.L568
	move	$2,$4

	daddu	$6,$5,$6
	move	$3,$4
.L565:
	daddiu	$5,$5,1
	lb	$8,-1($5)
	daddiu	$3,$3,1
	lb	$7,-1($3)
	xor	$7,$7,$8
	bne	$5,$6,.L565
	sb	$7,-1($3)

.L568:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memxor
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.set	nomips16
	.set	nomicromips
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
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	move	$16,$6

	beq	$16,$0,.L571
	daddu	$2,$18,$2

.L570:
	lb	$3,0($17)
	beq	$3,$0,.L571
	sb	$3,0($2)

	daddiu	$17,$17,1
	daddiu	$16,$16,-1
	bne	$16,$0,.L570
	daddiu	$2,$2,1

.L571:
	beql	$16,$0,.L573
	sb	$0,0($2)

.L573:
	move	$2,$18
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	strncat
	.size	strncat, .-strncat
	.align	2
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
	beq	$5,$0,.L586
	move	$2,$0

	daddu	$3,$4,$2
.L584:
	lb	$3,0($3)
	bnel	$3,$0,.L579
	daddiu	$2,$2,1

.L576:
.L586:
	jr	$31
	nop

.L579:
	bne	$2,$5,.L584
	daddu	$3,$4,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
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
	lb	$3,0($4)
	beq	$3,$0,.L595
	move	$2,$4

	move	$3,$5
.L598:
	lb	$6,0($3)
.L597:
	beq	$6,$0,.L596
	daddiu	$3,$3,1

	lb	$7,-1($3)
	lb	$6,0($2)
	bnel	$7,$6,.L597
	lb	$6,0($3)

.L589:
	jr	$31
	nop

.L595:
	jr	$31
	move	$2,$0

.L596:
	daddiu	$2,$2,1
	lb	$3,0($2)
	bne	$3,$0,.L598
	move	$3,$5

	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
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
	b	.L601
	move	$2,$0

.L600:
	daddiu	$4,$4,1
.L606:
	lb	$3,-1($4)
	beq	$3,$0,.L607
	nop

.L601:
	lb	$3,0($4)
	beql	$5,$3,.L600
	move	$2,$4

	b	.L606
	daddiu	$4,$4,1

.L607:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.set	nomips16
	.set	nomicromips
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
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	move	$4,$5

	beq	$2,$0,.L608
	move	$18,$2

	lb	$20,0($17)
	ld	$19,%got_disp(strchr)($28)
	ld	$21,%got_disp(strncmp)($28)
.L610:
	move	$5,$20
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,strchr
1:	jalr	$25
	move	$4,$16

	beq	$2,$0,.L608
	move	$16,$2

	move	$6,$18
	move	$5,$17
	move	$25,$21
	.reloc	1f,R_MIPS_JALR,strncmp
1:	jalr	$25
	move	$4,$16

	beq	$2,$0,.L614
	move	$2,$16

	b	.L610
	daddiu	$16,$16,1

.L608:
	move	$2,$16
.L614:
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	strstr
	.size	strstr, .-strstr
	.align	2
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
	dmfc1	$2,$f12
	dmtc1	$0,$f0
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	.L625
	nop

.L616:
	dmtc1	$0,$f0
	dmtc1	$2,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L619
	nop

	c.lt.d	$f13,$f0
	nop
	bc1t	.L626
	li	$3,-1			# 0xffffffffffffffff

.L619:
	dmtc1	$2,$f0
	jr	$31
	nop

.L625:
	c.lt.d	$f0,$f13
	nop
	bc1f	.L616
	li	$3,-1			# 0xffffffffffffffff

.L626:
	dsll	$3,$3,63
	b	.L619
	xor	$2,$2,$3

	.set	macro
	.set	reorder
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	nomips16
	.set	nomicromips
	.ent	memmem
	.type	memmem, @function
memmem:
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
	lui	$28,%hi(%neg(%gp_rel(memmem)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(memmem)))
	move	$16,$4
	dsubu	$17,$5,$7
	beq	$7,$0,.L631
	daddu	$17,$4,$17

	sltu	$5,$5,$7
	bne	$5,$0,.L638
	move	$2,$0

	sltu	$2,$17,$4
	bne	$2,$0,.L633
	daddiu	$20,$6,1

	lb	$19,0($6)
	daddiu	$18,$7,-1
	b	.L630
	ld	$21,%got_disp(memcmp)($28)

.L629:
.L639:
	sltu	$2,$17,$16
	bne	$2,$0,.L637
	move	$2,$0

.L630:
	lb	$2,0($16)
	bnel	$2,$19,.L639
	daddiu	$16,$16,1

	move	$6,$18
	move	$5,$20
	move	$25,$21
	.reloc	1f,R_MIPS_JALR,memcmp
1:	jalr	$25
	daddiu	$4,$16,1

	bnel	$2,$0,.L629
	daddiu	$16,$16,1

	move	$2,$16
.L637:
.L627:
.L638:
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L631:
	b	.L627
	move	$2,$4

.L633:
	b	.L627
	move	$2,$0

	.set	macro
	.set	reorder
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.set	nomips16
	.set	nomicromips
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
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$16,$6

	daddu	$2,$2,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	mempcpy
	.size	mempcpy, .-mempcpy
	.align	2
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
	bc1t	.L665
	daddiu	$7,$7,%lo(%neg(%gp_rel(frexp)))

	move	$4,$0
.L643:
	ld	$6,%got_page(.LC12)($7)
	ldc1	$f0,%got_ofst(.LC12)($6)
	dmtc1	$2,$f1
	nop
	c.le.d	$f0,$f1
	nop
	bc1f	.L662
	move	$3,$0

	ld	$6,%got_page(.LC9)($7)
	ldc1	$f1,%got_ofst(.LC9)($6)
.L647:
	dmtc1	$2,$f2
	nop
	mul.d	$f2,$f2,$f1
	dmfc1	$2,$f2
	c.le.d	$f0,$f2
	nop
	bc1t	.L647
	addiu	$3,$3,1

.L648:
.L666:
	beq	$4,$0,.L651
	sw	$3,0($5)

	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
.L651:
	dmtc1	$2,$f0
	jr	$31
	nop

.L665:
	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
	b	.L643
	li	$4,1			# 0x1

.L662:
	ld	$3,%got_page(.LC9)($7)
	ldc1	$f0,%got_ofst(.LC9)($3)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L666
	move	$3,$0

	dmtc1	$0,$f0
	nop
	c.eq.d	$f1,$f0
	nop
	bc1t	.L648
	ld	$6,%got_page(.LC9)($7)

	ldc1	$f0,%got_ofst(.LC9)($6)
.L650:
	dmtc1	$2,$f1
	nop
	add.d	$f1,$f1,$f1
	dmfc1	$2,$f1
	c.lt.d	$f1,$f0
	nop
	bc1t	.L650
	addiu	$3,$3,-1

	b	.L648
	nop

	.set	macro
	.set	reorder
	.end	frexp
	.size	frexp, .-frexp
	.align	2
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
	beq	$4,$0,.L670
	nop

	move	$2,$0
.L669:
	andi	$3,$4,0x1
	dsubu	$3,$0,$3
	and	$3,$5,$3
	daddu	$2,$2,$3
	dsrl	$4,$4,1
	bne	$4,$0,.L669
	dsll	$5,$5,1

	jr	$31
	nop

.L670:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
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
	li	$2,32			# 0x20
	beq	$7,$0,.L675
	li	$3,1			# 0x1

.L674:
	bltz	$5,.L675
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L675
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,.L674
	nop

.L675:
	bne	$3,$0,.L676
	move	$2,$0

.L677:
	bne	$6,$0,.L689
	nop

.L680:
	jr	$31
	nop

.L690:
	move	$3,$7
	beq	$7,$0,.L677
	srl	$5,$5,1

.L676:
	sltu	$7,$4,$5
	bne	$7,$0,.L690
	srl	$7,$3,1

	subu	$4,$4,$5
	b	.L690
	or	$2,$2,$3

.L689:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
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
	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbqi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbqi2)))
	dsra	$3,$4,63
	beq	$3,$4,.L693
	xor	$2,$3,$4

	sll	$4,$2,8
	dsll	$4,$4,32
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	dsrl	$4,$4,32

	addiu	$2,$2,-33
.L692:
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L693:
	b	.L692
	li	$2,7			# 0x7

	.set	macro
	.set	reorder
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
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
	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbdi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbdi2)))
	dsra	$2,$4,63
	beq	$2,$4,.L697
	xor	$3,$2,$4

	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	move	$4,$3

	addiu	$2,$2,-1
.L696:
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L697:
	b	.L696
	li	$2,63			# 0x3f

	.set	macro
	.set	reorder
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
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
	beq	$4,$0,.L702
	nop

	move	$2,$0
.L701:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$3,$2
	srl	$3,$4,1
	move	$4,$3
	bne	$3,$0,.L701
	sll	$5,$5,1

	jr	$31
	nop

.L702:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
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
	beq	$3,$0,.L706
	and	$2,$6,$2

.L709:
	beq	$8,$0,.L708
	move	$3,$5

	move	$7,$4
	dsll	$8,$8,3
	daddu	$8,$8,$5
.L712:
	ld	$9,0($3)
	sd	$9,0($7)
	daddiu	$3,$3,8
	bne	$3,$8,.L712
	daddiu	$7,$7,8

.L708:
	sltu	$3,$2,$6
	beq	$3,$0,.L722
	dsll	$2,$2,32

	dsrl	$2,$2,32
	daddu	$3,$5,$2
.L720:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L720
	daddu	$3,$5,$2

.L722:
	jr	$31
	nop

.L706:
	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bne	$3,$0,.L709
	nop

	beq	$6,$0,.L722
	addiu	$6,$6,-1

	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$2,$5,$6
	daddu	$4,$4,$6
	daddiu	$5,$5,-1
.L714:
	lb	$3,0($2)
	sb	$3,0($4)
	daddiu	$2,$2,-1
	bne	$2,$5,.L714
	daddiu	$4,$4,-1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
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
	beq	$2,$0,.L724
	srl	$7,$6,1

.L727:
	beq	$7,$0,.L726
	move	$2,$5

	move	$3,$4
	dsll	$7,$7,1
	daddu	$7,$7,$5
.L730:
	lh	$8,0($2)
	sh	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$7,.L730
	daddiu	$3,$3,2

.L726:
	andi	$2,$6,0x1
	beq	$2,$0,.L737
	addiu	$6,$6,-1

	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$5,$5,$6
	daddu	$4,$4,$6
	lb	$2,0($5)
	jr	$31
	sb	$2,0($4)

.L724:
	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	bne	$2,$0,.L727
	nop

	beq	$6,$0,.L737
	addiu	$6,$6,-1

	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$2,$5,$6
	daddu	$4,$4,$6
	daddiu	$5,$5,-1
.L731:
	lb	$3,0($2)
	sb	$3,0($4)
	daddiu	$2,$2,-1
	bne	$2,$5,.L731
	daddiu	$4,$4,-1

.L737:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
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
	beq	$3,$0,.L739
	and	$2,$6,$2

.L742:
	beq	$8,$0,.L741
	move	$3,$5

	move	$7,$4
	dsll	$8,$8,2
	daddu	$8,$8,$5
.L745:
	lw	$9,0($3)
	sw	$9,0($7)
	daddiu	$3,$3,4
	bne	$3,$8,.L745
	daddiu	$7,$7,4

.L741:
	sltu	$3,$2,$6
	beq	$3,$0,.L755
	dsll	$2,$2,32

	dsrl	$2,$2,32
	daddu	$3,$5,$2
.L753:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L753
	daddu	$3,$5,$2

.L755:
	jr	$31
	nop

.L739:
	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bne	$3,$0,.L742
	nop

	beq	$6,$0,.L755
	addiu	$6,$6,-1

	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$2,$5,$6
	daddu	$4,$4,$6
	daddiu	$5,$5,-1
.L747:
	lb	$3,0($2)
	sb	$3,0($4)
	daddiu	$2,$2,-1
	bne	$2,$5,.L747
	daddiu	$4,$4,-1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
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
	bltz	$4,.L764
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

.L764:
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
	bltz	$4,.L768
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

.L768:
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
.L777:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,.L778
	nop

	addiu	$2,$2,1
	bne	$2,$6,.L777
	subu	$3,$5,$2

.L778:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
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
.L784:
	andi	$3,$3,0x1
	bne	$3,$0,.L785
	nop

	addiu	$2,$2,1
	bne	$2,$5,.L784
	sra	$3,$4,$2

.L785:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ctzhi2
	.size	__ctzhi2, .-__ctzhi2
	.align	2
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
	bc1tl	.L793
	sub.s	$f12,$f12,$f0

	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	jr	$31
	nop

.L793:
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
.L795:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,.L795
	addu	$2,$5,$2

	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
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
	move	$2,$0
	move	$3,$0
	li	$6,16			# 0x10
.L799:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,.L799
	addu	$2,$5,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
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
	beq	$4,$0,.L805
	nop

	move	$2,$0
.L804:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$3,$2
	srl	$3,$4,1
	move	$4,$3
	bne	$3,$0,.L804
	sll	$5,$5,1

	jr	$31
	nop

.L805:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
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
	beq	$4,$0,.L811
	nop

	beq	$5,$0,.L812
	nop

	move	$2,$0
.L810:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$3,$2
	sll	$4,$4,1
	srl	$3,$5,1
	bne	$3,$0,.L810
	move	$5,$3

	jr	$31
	nop

.L811:
	jr	$31
	move	$2,$0

.L812:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
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
	li	$2,32			# 0x20
	beq	$7,$0,.L817
	li	$3,1			# 0x1

.L816:
	bltz	$5,.L817
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L817
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,.L816
	nop

.L817:
	bne	$3,$0,.L818
	move	$2,$0

.L819:
	bne	$6,$0,.L831
	nop

.L822:
	jr	$31
	nop

.L832:
	move	$3,$7
	beq	$7,$0,.L819
	srl	$5,$5,1

.L818:
	sltu	$7,$4,$5
	bne	$7,$0,.L832
	srl	$7,$3,1

	subu	$4,$4,$5
	b	.L832
	or	$2,$2,$3

.L831:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
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
	bc1t	.L836
	nop

	c.lt.s	$f13,$f12
	nop
	bc1t	.L835
	li	$2,1			# 0x1

	move	$2,$0
.L835:
	jr	$31
	andi	$2,$2,0x1

.L836:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	__mspabi_cmpf
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
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
	bc1t	.L841
	nop

	c.lt.d	$f13,$f12
	nop
	bc1t	.L840
	li	$2,1			# 0x1

	move	$2,$0
.L840:
	jr	$31
	andi	$2,$2,0x1

.L841:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
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
	bltz	$5,.L856
	move	$7,$0

.L848:
	beq	$5,$0,.L849
	move	$2,$0

	li	$6,32			# 0x20
	andi	$3,$5,0x1
.L858:
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$3,$2
	sra	$5,$5,1
	beq	$5,$0,.L849
	sll	$4,$4,1

	addiu	$6,$6,-1
	andi	$6,$6,0x00ff
	bne	$6,$0,.L858
	andi	$3,$5,0x1

.L849:
	bnel	$7,$0,.L857
	subu	$2,$0,$2

.L857:
	jr	$31
	nop

.L856:
	subu	$5,$0,$5
	b	.L848
	li	$7,1			# 0x1

	.set	macro
	.set	reorder
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.set	nomips16
	.set	nomicromips
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
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))
	bltz	$4,.L865
	move	$16,$0

.L860:
	bltzl	$5,.L866
	dsubu	$5,$0,$5

.L861:
	sll	$4,$4,0
	sll	$5,$5,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MIPS_JALR,__udivmodsi4
1:	jalr	$25
	move	$6,$0

	dsll	$2,$2,32
	beq	$16,$0,.L859
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L859:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L865:
	dsubu	$4,$0,$4
	b	.L860
	li	$16,1			# 0x1

.L866:
	b	.L861
	xori	$16,$16,0x1

	.set	macro
	.set	reorder
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.set	nomips16
	.set	nomicromips
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
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))
	bltz	$4,.L872
	move	$16,$0

.L868:
	dsra	$3,$5,63
	xor	$2,$3,$5
	sll	$4,$4,0
	sll	$2,$2,0
	li	$6,1			# 0x1
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MIPS_JALR,__udivmodsi4
1:	jalr	$25
	subu	$5,$2,$3

	dsll	$2,$2,32
	beq	$16,$0,.L867
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L867:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L872:
	dsubu	$4,$0,$4
	b	.L868
	li	$16,1			# 0x1

	.set	macro
	.set	reorder
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
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
	li	$2,16			# 0x10
	beq	$7,$0,.L875
	li	$3,1			# 0x1

	dsll	$7,$5,48
.L890:
	dsra	$7,$7,48
	bltz	$7,.L875
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	sltu	$7,$5,$4
	beq	$7,$0,.L875
	andi	$3,$3,0xffff

	addiu	$2,$2,-1
	bne	$2,$0,.L890
	dsll	$7,$5,48

.L875:
	bne	$3,$0,.L876
	move	$2,$0

.L877:
	bne	$6,$0,.L889
	nop

.L880:
	jr	$31
	nop

.L879:
	dsrl	$3,$3,1
.L891:
	beq	$3,$0,.L877
	dsrl	$5,$5,1

.L876:
	sltu	$7,$4,$5
	bnel	$7,$0,.L891
	dsrl	$3,$3,1

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$2,$2,$3
	b	.L879
	andi	$2,$2,0xffff

.L889:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
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
	sltu	$7,$5,$4
	li	$2,64			# 0x40
	li	$3,1			# 0x1
	li	$8,1			# 0x1
	beq	$7,$0,.L894
	dsll	$8,$8,31

	and	$7,$5,$8
.L909:
	bne	$7,$0,.L894
	nop

	dsll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,.L894
	dsll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,.L909
	and	$7,$5,$8

.L894:
	bne	$3,$0,.L895
	move	$2,$0

.L896:
	bne	$6,$0,.L908
	nop

.L892:
	jr	$31
	nop

.L898:
	dsrl	$3,$3,1
.L910:
	beq	$3,$0,.L896
	dsrl	$5,$5,1

.L895:
	sltu	$7,$4,$5
	bnel	$7,$0,.L910
	dsrl	$3,$3,1

	dsubu	$4,$4,$5
	b	.L898
	or	$2,$2,$3

.L908:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
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
	beq	$2,$0,.L912
	nop

	sll	$4,$4,0
	sll	$4,$4,$5
	dsll	$4,$4,32
.L913:
	jr	$31
	move	$2,$4

.L912:
	beq	$5,$0,.L915
	nop

	sll	$2,$4,0
	sll	$3,$2,$5
	dsra	$4,$4,32
	sll	$4,$4,$5
	subu	$5,$0,$5
	srl	$2,$2,$5
	or	$2,$2,$4
	dsll	$2,$2,32
	dsll	$3,$3,32
	dsrl	$3,$3,32
	b	.L913
	or	$4,$3,$2

.L915:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
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
	beq	$2,$0,.L918
	move	$3,$0

	jr	$31
	dsll	$2,$5,$6

.L918:
	beql	$6,$0,.L921
	move	$2,$4

	dsll	$3,$5,$6
	dsll	$2,$4,$6
	subu	$6,$0,$6
	dsrl	$5,$5,$6
	jr	$31
	or	$2,$5,$2

.L921:
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
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
	beq	$2,$0,.L924
	nop

	dsra	$4,$4,32
	sra	$2,$4,31
	sra	$4,$4,$5
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dsll	$2,$2,32
	or	$4,$2,$4
.L925:
	jr	$31
	move	$2,$4

.L924:
	beq	$5,$0,.L927
	subu	$6,$0,$5

	dsra	$2,$4,32
	sra	$3,$2,$5
	sll	$2,$2,$6
	sll	$4,$4,0
	srl	$4,$4,$5
	or	$2,$2,$4
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsll	$3,$3,32
	b	.L925
	or	$4,$3,$2

.L927:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
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
	beq	$2,$0,.L930
	dsra	$2,$4,63

	dsra	$5,$4,$6
.L932:
.L935:
	jr	$31
	move	$3,$5

.L930:
	beql	$6,$0,.L935
	move	$2,$4

	dsra	$2,$4,$6
	subu	$3,$0,$6
	dsll	$4,$4,$3
	dsrl	$5,$5,$6
	b	.L932
	or	$5,$4,$5

	.set	macro
	.set	reorder
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
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
	dsrl	$10,$4,56
	dsrl	$9,$4,40
	andi	$9,$9,0xff00
	dsrl	$8,$4,24
	li	$2,16711680			# 0xff0000
	and	$8,$8,$2
	dsrl	$7,$4,8
	li	$3,255			# 0xff
	dsll	$2,$3,24
	and	$7,$7,$2
	dsll	$6,$4,8
	dsll	$2,$3,32
	and	$6,$6,$2
	dsll	$5,$4,24
	dsll	$2,$3,40
	and	$5,$5,$2
	dsll	$2,$4,40
	dsll	$3,$3,48
	and	$3,$2,$3
	dsll	$2,$4,56
	or	$2,$2,$10
	or	$2,$2,$9
	or	$2,$2,$8
	or	$2,$2,$7
	or	$2,$2,$6
	or	$2,$2,$5
	jr	$31
	or	$2,$2,$3

	.set	macro
	.set	reorder
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
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
	srl	$3,$4,24
	srl	$5,$4,8
	andi	$5,$5,0xff00
	sll	$2,$4,8
	li	$6,16711680			# 0xff0000
	and	$2,$2,$6
	sll	$4,$4,24
	or	$3,$3,$4
	or	$3,$3,$5
	jr	$31
	or	$2,$2,$3

	.set	macro
	.set	reorder
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
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
	li	$3,65536			# 0x10000
	sltu	$3,$4,$3
	dsll	$3,$3,4
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	sltu	$2,$2,1
	dsll	$2,$2,3
	li	$5,8			# 0x8
	subu	$5,$5,$2
	srl	$4,$4,$5
	daddu	$3,$2,$3
	andi	$2,$4,0xf0
	sltu	$2,$2,1
	dsll	$2,$2,2
	li	$5,4			# 0x4
	subu	$5,$5,$2
	srl	$4,$4,$5
	daddu	$3,$3,$2
	andi	$2,$4,0xc
	sltu	$2,$2,1
	dsll	$2,$2,1
	li	$5,2			# 0x2
	subu	$6,$5,$2
	srl	$4,$4,$6
	daddu	$3,$3,$2
	dsrl	$2,$4,1
	andi	$2,$2,0x1
	sltu	$2,$2,1
	subu	$5,$5,$4
	subu	$2,$0,$2
	and	$2,$2,$5
	jr	$31
	addu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
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
	sltu	$3,$4,1
	dsubu	$16,$0,$3
	daddiu	$3,$3,-1
	and	$3,$3,$4
	and	$4,$16,$5
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	or	$4,$3,$4

	andi	$16,$16,0x40
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
	slt	$2,$2,$3
	bne	$2,$0,.L946
	nop

	dsra	$2,$4,32
	slt	$2,$3,$2
	bne	$2,$0,.L947
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bne	$2,$0,.L948
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$5,$4
	jr	$31
	daddiu	$2,$2,1

.L946:
	jr	$31
	move	$2,$0

.L947:
	jr	$31
	li	$2,2			# 0x2

.L948:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.set	nomips16
	.set	nomicromips
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
	.reloc	1f,R_MIPS_JALR,__cmpdi2
1:	jalr	$25
	nop

	addiu	$2,$2,-1
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
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
	bne	$2,$0,.L955
	slt	$4,$6,$4

	bne	$4,$0,.L956
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L957
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

.L955:
	jr	$31
	move	$2,$0

.L956:
	jr	$31
	li	$2,2			# 0x2

.L957:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
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
	andi	$2,$4,0xffff
	sltu	$2,$2,1
	dsll	$5,$2,4
	sll	$2,$2,4
	srl	$4,$4,$2
	andi	$2,$4,0x00ff
	sltu	$2,$2,1
	dsll	$3,$2,3
	sll	$2,$2,3
	srl	$4,$4,$2
	daddu	$3,$3,$5
	andi	$2,$4,0xf
	sltu	$2,$2,1
	dsll	$5,$2,2
	sll	$2,$2,2
	srl	$4,$4,$2
	daddu	$3,$3,$5
	andi	$2,$4,0x3
	sltu	$2,$2,1
	dsll	$5,$2,1
	sll	$2,$2,1
	srl	$4,$4,$2
	andi	$4,$4,0x3
	daddu	$3,$3,$5
	nor	$2,$0,$4
	andi	$2,$2,0x1
	dsrl	$4,$4,1
	li	$5,2			# 0x2
	subu	$5,$5,$4
	subu	$2,$0,$2
	and	$2,$2,$5
	jr	$31
	addu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
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
	dsubu	$16,$0,$16
	and	$4,$16,$4
	nor	$2,$0,$16
	and	$2,$2,$5
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	or	$4,$2,$4

	andi	$16,$16,0x40
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
	bne	$5,$0,.L965
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ffsti2)))

	beq	$4,$0,.L966
	move	$2,$0

	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	nop

	b	.L966
	addiu	$2,$2,65

.L965:
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	move	$4,$5

	addiu	$2,$2,1
.L966:
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
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
	beq	$2,$0,.L970
	nop

	dsra	$4,$4,32
	srl	$4,$4,$5
	dsll	$4,$4,32
	dsrl	$4,$4,32
.L971:
	jr	$31
	move	$2,$4

.L970:
	beq	$5,$0,.L973
	subu	$6,$0,$5

	dsra	$2,$4,32
	srl	$3,$2,$5
	sll	$2,$2,$6
	sll	$4,$4,0
	srl	$4,$4,$5
	or	$2,$2,$4
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsll	$3,$3,32
	b	.L971
	or	$4,$3,$2

.L973:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
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
	beq	$2,$0,.L976
	move	$2,$0

	dsrl	$5,$4,$6
.L978:
.L981:
	jr	$31
	move	$3,$5

.L976:
	beql	$6,$0,.L981
	move	$2,$4

	dsrl	$2,$4,$6
	subu	$3,$0,$6
	dsll	$4,$4,$3
	dsrl	$5,$5,$6
	b	.L978
	or	$5,$4,$5

	.set	macro
	.set	reorder
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
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
	andi	$7,$4,0xffff
	andi	$6,$5,0xffff
	mult	$7,$6
	mflo	$2
	srl	$3,$2,16
	srl	$4,$4,16
	mult	$4,$6
	mflo	$6
	addu	$3,$3,$6
	andi	$6,$2,0xffff
	sll	$2,$3,16
	addu	$2,$2,$6
	srl	$6,$3,16
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsrl	$8,$2,16
	andi	$2,$2,0xffff
	srl	$5,$5,16
	mult	$5,$7
	mflo	$3
	addu	$3,$3,$8
	sll	$7,$3,16
	addu	$7,$7,$2
	srl	$3,$3,16
	addu	$3,$3,$6
	mult	$5,$4
	mflo	$2
	addu	$3,$2,$3
	dsll	$3,$3,32
	dsll	$2,$7,32
	dsrl	$2,$2,32
	jr	$31
	or	$2,$2,$3

	.set	macro
	.set	reorder
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.set	nomips16
	.set	nomicromips
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
	move	$17,$4
	move	$16,$5
	sw	$4,0($sp)
	lw	$18,0($sp)
	sw	$5,4($sp)
	lw	$19,4($sp)
	move	$5,$19
	ld	$25,%got_disp(__muldsi3)($28)
	.reloc	1f,R_MIPS_JALR,__muldsi3
1:	jalr	$25
	move	$4,$18

	dsra	$4,$2,32
	dsra	$17,$17,32
	mult	$17,$19
	mflo	$3
	dsra	$16,$16,32
	nop
	mult	$16,$18
	mflo	$5
	addu	$3,$3,$5
	addu	$3,$3,$4
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,$2,32
	or	$2,$2,$3
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
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
	dsll	$7,$4,32
	dsrl	$7,$7,32
	dsll	$2,$5,32
	dsrl	$2,$2,32
	dmult	$7,$2
	mflo	$6
	dsrl	$3,$6,32
	dsrl	$4,$4,32
	dmult	$4,$2
	mflo	$2
	daddu	$2,$2,$3
	dsrl	$8,$2,32
	dsll	$3,$2,32
	dsrl	$3,$3,32
	dsll	$6,$6,32
	dsrl	$6,$6,32
	dsrl	$5,$5,32
	dmult	$7,$5
	mflo	$2
	daddu	$2,$2,$3
	dsll	$3,$2,32
	daddu	$3,$3,$6
	dsrl	$2,$2,32
	daddu	$2,$2,$8
	dmult	$4,$5
	mflo	$4
	jr	$31
	daddu	$2,$4,$2

	.set	macro
	.set	reorder
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.globl	__multi3
	.set	nomips16
	.set	nomicromips
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
	.reloc	1f,R_MIPS_JALR,__mulddi3
1:	jalr	$25
	move	$4,$16

	dmult	$17,$19
	mflo	$4
	nop
	nop
	dmult	$18,$16
	mflo	$5
	daddu	$4,$4,$5
	daddu	$2,$4,$2
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
	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
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
	dsubu	$3,$0,$5
	sltu	$2,$0,$5
	dsubu	$4,$0,$4
	jr	$31
	dsubu	$2,$4,$2

	.set	macro
	.set	reorder
	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
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
	xor	$4,$4,$2
	srl	$2,$4,16
	xor	$4,$4,$2
	srl	$2,$4,8
	xor	$4,$4,$2
	srl	$2,$4,4
	xor	$4,$4,$2
	andi	$4,$4,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$4
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
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
	xor	$2,$5,$4
	dsra	$3,$2,32
	sll	$2,$2,0
	xor	$2,$2,$3
	srl	$3,$2,16
	xor	$2,$2,$3
	srl	$3,$2,8
	xor	$2,$2,$3
	srl	$3,$2,4
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
	xor	$4,$4,$2
	srl	$2,$4,4
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
	sll	$3,$2,0
	dsrl	$2,$2,32
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
	srl	$3,$4,2
	li	$2,858980352			# 0x33330000
	addiu	$2,$2,13107
	and	$3,$3,$2
	and	$4,$4,$2
	addu	$3,$3,$4
	srl	$2,$3,4
	addu	$2,$2,$3
	li	$3,252641280			# 0xf0f0000
	addiu	$3,$3,3855
	and	$2,$2,$3
	srl	$3,$2,16
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
	dsll	$3,$4,63
	dsrl	$2,$5,1
	or	$2,$3,$2
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
	or	$5,$3,$5
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
	daddu	$4,$6,$4
	daddu	$4,$5,$4
	dsll	$5,$4,60
	dsrl	$3,$2,4
	or	$3,$5,$3
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
	sll	$2,$3,0
	dsrl	$3,$3,32
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
	lui	$4,%hi(%neg(%gp_rel(__powidf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powidf2)))
	slt	$3,$5,0
	ld	$2,%got_page(.LC12)($4)
	b	.L1009
	ldc1	$f0,%got_ofst(.LC12)($2)

.L1007:
	srl	$2,$5,31
.L1012:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L1008
	nop

	mul.d	$f12,$f12,$f12
.L1009:
	andi	$2,$5,0x1
	bnel	$2,$0,.L1007
	mul.d	$f0,$f0,$f12

	b	.L1012
	srl	$2,$5,31

.L1008:
	beq	$3,$0,.L1013
	ld	$2,%got_page(.LC12)($4)

	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
.L1013:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__powidf2
	.size	__powidf2, .-__powidf2
	.align	2
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
	lui	$4,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powisf2)))
	slt	$3,$5,0
	ld	$2,%got_page(.LC14)($4)
	b	.L1017
	lwc1	$f0,%got_ofst(.LC14)($2)

.L1015:
	srl	$2,$5,31
.L1020:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L1016
	nop

	mul.s	$f12,$f12,$f12
.L1017:
	andi	$2,$5,0x1
	bnel	$2,$0,.L1015
	mul.s	$f0,$f0,$f12

	b	.L1020
	srl	$2,$5,31

.L1016:
	beq	$3,$0,.L1021
	ld	$2,%got_page(.LC14)($4)

	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
.L1021:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
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
	sltu	$2,$2,$3
	bne	$2,$0,.L1024
	nop

	dsra	$2,$4,32
	sltu	$2,$3,$2
	bne	$2,$0,.L1025
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bne	$2,$0,.L1026
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$5,$4
	jr	$31
	daddiu	$2,$2,1

.L1024:
	jr	$31
	move	$2,$0

.L1025:
	jr	$31
	li	$2,2			# 0x2

.L1026:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.set	nomips16
	.set	nomicromips
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
	.reloc	1f,R_MIPS_JALR,__ucmpdi2
1:	jalr	$25
	nop

	addiu	$2,$2,-1
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
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
	bne	$2,$0,.L1033
	sltu	$4,$6,$4

	bne	$4,$0,.L1034
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L1035
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

.L1033:
	jr	$31
	move	$2,$0

.L1034:
	jr	$31
	li	$2,2			# 0x2

.L1035:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__ucmpti2
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
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
