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
	beqz	$3,.L4
	move	$2,$4

	daddu	$3,$5,$6
	b	.L5
	daddu	$6,$4,$6

.L6:
	daddiu	$6,$6,-1
	lb	$7,0($3)
	sb	$7,0($6)
.L5:
	bne	$3,$5,.L6
	daddiu	$3,$3,-1

.L11:
	jrc	$31
.L4:
	beq	$4,$5,.L11
	daddu	$7,$4,$6

	move	$3,$5
	b	.L8
	move	$6,$4

.L9:
	daddiu	$6,$6,1
	lb	$4,-1($3)
	sb	$4,-1($6)
.L8:
	bne	$6,$7,.L9
	daddiu	$3,$3,1

	jrc	$31
	.set	macro
	.set	reorder
	.end	memmove
	.size	memmove, .-memmove
	.align	2
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
	b	.L13
	andi	$6,$6,0xff

.L15:
	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	daddiu	$4,$4,1
.L13:
	beqzc	$7,.L14
	lbu	$2,0($5)
	bne	$6,$2,.L15
	sb	$2,0($4)

.L14:
	beqzc	$7,.L17
	jr	$31
	daddiu	$2,$4,1

.L17:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
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
	andi	$5,$5,0xff
	b	.L19
	move	$2,$4

.L24:
	daddiu	$6,$6,-1
.L19:
	beqzc	$6,.L20
	lbu	$3,0($2)
	bne	$5,$3,.L24
	daddiu	$2,$2,1

	daddiu	$2,$2,-1
.L20:
	jr	$31
	movz	$2,$0,$6

	.set	macro
	.set	reorder
	.end	memchr
	.size	memchr, .-memchr
	.align	2
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
	b	.L26
	nop

.L31:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
.L26:
	beqzc	$6,.L27
	lbu	$3,0($4)
	lbu	$2,0($5)
	beq	$3,$2,.L31
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
.L27:
	beqzc	$6,.L30
	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

.L30:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.set	nomips16
	.set	micromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	daddu	$6,$4,$6
	b	.L33
	move	$3,$4

.L34:
	daddiu	$3,$3,1
	lbu	$7,-1($5)
	sb	$7,-1($3)
.L33:
	bne	$3,$6,.L34
	daddiu	$5,$5,1

	jrc	$31
	.set	macro
	.set	reorder
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
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
	andi	$5,$5,0xff
	daddiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
.L36:
	beq	$6,$2,.L40
	daddu	$3,$4,$6

	lbu	$3,0($3)
	beq	$5,$3,.L41
	daddiu	$7,$6,-1

	b	.L36
	move	$6,$7

.L41:
	jr	$31
	daddu	$2,$4,$6

.L40:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
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
	move	$2,$4
	daddu	$6,$4,$6
	move	$3,$4
	b	.L43
	andi	$5,$5,0xff

.L44:
	sb	$5,0($3)
	daddiu	$3,$3,1
.L43:
	bne	$3,$6,.L44
	nop

	jrc	$31
	.set	macro
	.set	reorder
	.end	memset
	.size	memset, .-memset
	.align	2
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
	b	.L46
	move	$2,$4

.L47:
	daddiu	$5,$5,1
	daddiu	$2,$2,1
.L46:
	lb	$3,0($5)
	bnez	$3,.L47
	sb	$3,0($2)

	jrc	$31
	.set	macro
	.set	reorder
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
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
	b	.L49
	andi	$5,$5,0xff

.L49:
	lb	$3,0($2)
	beqzc	$3,.L52
	lbu	$3,0($2)
	bne	$5,$3,.L49
	daddiu	$2,$2,1

	daddiu	$2,$2,-1
.L52:
	jrc	$31
	.set	macro
	.set	reorder
	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
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
.L55:
	lb	$2,0($4)
	beq	$5,$2,.L56
	nop

	daddiu	$4,$4,1
	lb	$2,-1($4)
	bnezc	$2,.L55
	jrc	$31
.L56:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	strchr
	.size	strchr, .-strchr
	.align	2
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
	b	.L62
	lb	$3,0($4)

.L63:
	daddiu	$5,$5,1
	lb	$3,0($4)
.L62:
	lb	$2,0($5)
	bne	$3,$2,.L60
	nop

	bnez	$3,.L63
	daddiu	$4,$4,1

	daddiu	$4,$4,-1
.L60:
	lbu	$3,0($4)
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
	.set	micromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L65
	move	$2,$4

.L66:
	daddiu	$2,$2,1
.L65:
	lb	$5,0($2)
	bnezc	$5,.L66
	jr	$31
	dsubu	$2,$2,$4

	.set	macro
	.set	reorder
	.end	strlen
	.size	strlen, .-strlen
	.align	2
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
	beqz	$6,.L72
	daddiu	$6,$6,-1

	daddu	$2,$4,$6
.L69:
	lbu	$3,0($4)
	beqzc	$3,.L70
	lbu	$3,0($5)
	beqzc	$3,.L70
	beq	$4,$2,.L70
	nop

	lbu	$6,0($4)
	lbu	$3,0($5)
	bne	$6,$3,.L70
	nop

	daddiu	$4,$4,1
	b	.L69
	daddiu	$5,$5,1

.L70:
	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

.L72:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
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
	move	$2,$4
	b	.L74
	daddu	$6,$4,$6

.L75:
	lb	$3,1($2)
	sb	$3,0($5)
	lb	$3,0($2)
	sb	$3,1($5)
	daddiu	$5,$5,2
	daddiu	$2,$2,2
.L74:
	dsubu	$3,$6,$2
	slt	$3,$3,2
	beqzc	$3,.L75
	jrc	$31
	.set	macro
	.set	reorder
	.end	swab
	.size	swab, .-swab
	.align	2
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
	beq	$4,$2,.L80
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

.L80:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isblank
	.size	isblank, .-isblank
	.align	2
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
	bnez	$2,.L84
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

.L84:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
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
	beq	$4,$2,.L92
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

.L92:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isspace
	.size	isspace, .-isspace
	.align	2
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
	bnezc	$2,.L97
	addiu	$2,$4,-127
	sltu	$2,$2,33
	bnezc	$2,.L98
	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bnezc	$2,.L99
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$2,$2,$4
	jr	$31
	sltu	$2,$2,3

.L97:
	jr	$31
	li	$2,1			# 0x1

.L98:
	jr	$31
	li	$2,1			# 0x1

.L99:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
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
	bnez	$2,.L110
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bnez	$2,.L105
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bnezc	$2,.L106
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$2,$4
	sltu	$2,$2,8185
	bnez	$2,.L107
	li	$3,1048576			# 0x100000

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$2,$4
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beqzc	$2,.L108
	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

.L110:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

.L105:
	jr	$31
	li	$2,1			# 0x1

.L106:
	jr	$31
	li	$2,1			# 0x1

.L107:
	jr	$31
	li	$2,1			# 0x1

.L108:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
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
	bnezc	$2,.L113
	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

.L113:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
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
	bc1t	$fcc0,.L119
	c.un.d	$fcc1,$f13,$f13

	bc1t	$fcc1,.L120
	nop

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L123
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

.L119:
	jr	$31
	mov.d	$f0,$f12

.L120:
	jr	$31
	mov.d	$f0,$f13

.L123:
	jr	$31
	dmtc1	$0,$f0

	.set	macro
	.set	reorder
	.end	fdim
	.size	fdim, .-fdim
	.align	2
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
	bc1t	$fcc0,.L127
	c.un.s	$fcc1,$f13,$f13

	bc1t	$fcc1,.L128
	nop

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L131
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

.L127:
	jr	$31
	mov.s	$f0,$f12

.L128:
	jr	$31
	mov.s	$f0,$f13

.L131:
	jr	$31
	mtc1	$0,$f0

	.set	macro
	.set	reorder
	.end	fdimf
	.size	fdimf, .-fdimf
	.align	2
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
	bc1t	$fcc0,.L136
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L137
	mov.d	$f0,$f13

	ld	$3,0($sp)
	dsrl	$3,$3,63
	ld	$2,8($sp)
	dext	$2,$2,63,1
	beq	$3,$2,.L134
	ldc1	$f1,8($sp)

	movz.d	$f0,$f12,$3
.L133:
.L142:
	jr	$31
	daddiu	$sp,$sp,16

.L134:
	ldc1	$f0,0($sp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L142
	nop

	b	.L133
	mov.d	$f0,$f1

.L136:
	b	.L133
	ldc1	$f0,8($sp)

.L137:
	b	.L133
	ldc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fmax
	.size	fmax, .-fmax
	.align	2
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
	bc1t	$fcc0,.L147
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L148
	mov.s	$f0,$f13

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($sp)
	and	$2,$2,$4
	beq	$3,$2,.L145
	lwc1	$f1,4($sp)

	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	movz.s	$f0,$f12,$2
.L144:
.L153:
	jr	$31
	daddiu	$sp,$sp,16

.L145:
	lwc1	$f0,0($sp)
	c.lt.s	$fcc2,$f0,$f1
	bc1f	$fcc2,.L153
	nop

	b	.L144
	mov.s	$f0,$f1

.L147:
	b	.L144
	lwc1	$f0,4($sp)

.L148:
	b	.L144
	lwc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.set	nomips16
	.set	micromips
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
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
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	dmfc1	$17,$f13
	dmfc1	$16,$f12
	dmfc1	$19,$f15
	dmfc1	$18,$f14
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$17,$f15
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$16,$f14

	bnez	$2,.L158
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$19,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$18,$f12

	bnez	$2,.L155
	dsrl	$2,$16,63

	dext	$3,$18,63,1
	beq	$2,$3,.L156
	ld	$25,%call16(__lttf2)($28)

	bgez	$16,.L164
	dmtc1	$16,$f0

	move	$17,$19
	move	$16,$18
.L155:
	dmtc1	$16,$f0
.L164:
	dmtc1	$17,$f2
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	48
.L156:
	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	dmtc1	$16,$f12

	bgez	$2,.L164
	dmtc1	$16,$f0

	move	$17,$19
	b	.L155
	move	$16,$18

.L158:
	move	$17,$19
	b	.L155
	move	$16,$18

	.set	macro
	.set	reorder
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
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
	bc1t	$fcc0,.L169
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L170
	ld	$3,0($sp)

	dsrl	$3,$3,63
	ld	$2,8($sp)
	dext	$2,$2,63,1
	beq	$3,$2,.L167
	ldc1	$f0,0($sp)

	mov.d	$f0,$f12
	movz.d	$f0,$f13,$3
.L166:
	jr	$31
	daddiu	$sp,$sp,16

.L167:
	ldc1	$f1,8($sp)
	c.lt.d	$fcc2,$f0,$f1
	bc1t	$fcc2,.L166
	nop

	b	.L166
	ldc1	$f0,8($sp)

.L169:
	b	.L166
	ldc1	$f0,8($sp)

.L170:
	b	.L166
	ldc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fmin
	.size	fmin, .-fmin
	.align	2
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
	bc1t	$fcc0,.L179
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L180
	lw	$3,0($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($sp)
	and	$2,$2,$4
	beq	$3,$2,.L177
	lwc1	$f0,0($sp)

	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	mov.s	$f0,$f12
	movz.s	$f0,$f13,$2
.L176:
	jr	$31
	daddiu	$sp,$sp,16

.L177:
	lwc1	$f1,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	bc1t	$fcc2,.L176
	nop

	b	.L176
	lwc1	$f0,4($sp)

.L179:
	b	.L176
	lwc1	$f0,4($sp)

.L180:
	b	.L176
	lwc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fminf
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.set	nomips16
	.set	micromips
	.ent	fminl
	.type	fminl, @function
fminl:
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
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	dmfc1	$19,$f13
	dmfc1	$18,$f12
	dmfc1	$17,$f15
	dmfc1	$16,$f14
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$19,$f15
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$18,$f14

	bnez	$2,.L186
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$16,$f12

	bnez	$2,.L190
	dsrl	$2,$18,63

	dext	$3,$16,63,1
	beq	$2,$3,.L187
	ld	$25,%call16(__lttf2)($28)

	bgez	$18,.L195
	dmtc1	$16,$f0

	move	$17,$19
	move	$16,$18
.L186:
	dmtc1	$16,$f0
.L195:
	dmtc1	$17,$f2
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	48
.L187:
	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$19,$f13
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	dmtc1	$18,$f12

	bgez	$2,.L195
	dmtc1	$16,$f0

	move	$17,$19
	b	.L186
	move	$16,$18

.L190:
	move	$17,$19
	b	.L186
	move	$16,$18

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
	.set	micromips
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
	daddiu	$6,$6,%lo(%neg(%gp_rel(l64a)))
	sll	$4,$4,0
	ld	$3,%got_page(s.0)($6)
	daddiu	$3,$3,%got_ofst(s.0)
	ld	$5,%got_page(digits)($6)
	b	.L197
	daddiu	$5,$5,%got_ofst(digits)

.L198:
	andi	$2,$4,0x3f
	daddu	$2,$2,$5
	lb	$2,0($2)
	sb	$2,0($3)
	daddiu	$3,$3,1
	dext	$4,$4,6,26
.L197:
	bnez	$4,.L198
	ld	$2,%got_page(s.0)($6)

	sb	$0,0($3)
	jr	$31
	daddiu	$2,$2,%got_ofst(s.0)

	.set	macro
	.set	reorder
	.end	l64a
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
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
	beqzc	$5,.L204
	ld	$2,0($5)
	sd	$2,0($4)
	sd	$5,8($4)
	sd	$4,0($5)
	ld	$2,0($4)
	beqzc	$2,.L205
	sd	$4,8($2)
.L205:
	jrc	$31
.L204:
	sd	$0,8($4)
	jr	$31
	sd	$0,0($4)

	.set	macro
	.set	reorder
	.end	insque
	.size	insque, .-insque
	.align	2
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
	beqzc	$2,.L207
	ld	$3,8($4)
	sd	$3,8($2)
.L207:
	ld	$2,8($4)
	beqzc	$2,.L209
	ld	$3,0($4)
	sd	$3,0($2)
.L209:
	jrc	$31
	.set	macro
	.set	reorder
	.end	remque
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.set	nomips16
	.set	micromips
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
	move	$18,$7
	move	$20,$8
	ld	$23,0($6)
	move	$17,$5
	b	.L211
	move	$16,$0

.L212:
	daddiu	$16,$16,1
.L211:
	beq	$16,$23,.L215
	move	$5,$17

	move	$25,$20
	jalr	$25
	move	$4,$19

	bnez	$2,.L212
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L213
	daddu	$2,$21,$2

.L215:
	daddiu	$2,$23,1
	sd	$2,0($22)
	dmult	$18,$23
	mflo	$4
	move	$6,$18
	move	$5,$19
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$21,$4

.L213:
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
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
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
	move	$20,$4
	move	$22,$5
	move	$18,$7
	move	$19,$8
	ld	$21,0($6)
	move	$17,$5
	b	.L217
	move	$16,$0

.L218:
	daddiu	$16,$16,1
.L217:
	beq	$16,$21,.L221
	move	$5,$17

	move	$25,$19
	jalr	$25
	move	$4,$20

	bnez	$2,.L218
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L219
	daddu	$2,$22,$2

.L221:
	move	$2,$0
.L219:
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
	bltz	$4,.L224
	move	$2,$4

.L223:
	jrc	$31
.L224:
	jr	$31
	subu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	abs
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.set	nomips16
	.set	micromips
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
	b	.L226
	ld	$17,%got_disp(isspace)($28)

.L227:
	daddiu	$16,$16,1
.L226:
	move	$25,$17
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnez	$2,.L227
	li	$3,43			# 0x2b

	lb	$2,0($16)
	beq	$2,$3,.L233
	li	$3,45			# 0x2d

	bne	$2,$3,.L234
	nop

	li	$4,1			# 0x1
.L228:
	daddiu	$16,$16,1
.L229:
	b	.L230
	move	$2,$0

.L233:
	b	.L228
	move	$4,$0

.L234:
	b	.L229
	move	$4,$0

.L231:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	subu	$2,$3,$2
.L230:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnez	$3,.L231
	daddiu	$16,$16,1

	bnez	$4,.L236
	ld	$31,24($sp)

	subu	$2,$0,$2
.L236:
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	nomips16
	.set	micromips
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
	b	.L238
	ld	$17,%got_disp(isspace)($28)

.L239:
	daddiu	$16,$16,1
.L238:
	move	$25,$17
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnez	$2,.L239
	li	$3,43			# 0x2b

	lb	$2,0($16)
	beq	$2,$3,.L245
	li	$3,45			# 0x2d

	bne	$2,$3,.L246
	nop

	li	$4,1			# 0x1
.L240:
	daddiu	$16,$16,1
.L241:
	b	.L242
	move	$2,$0

.L245:
	b	.L240
	move	$4,$0

.L246:
	b	.L241
	move	$4,$0

.L243:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	dsubu	$2,$3,$2
.L242:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnez	$3,.L243
	daddiu	$16,$16,1

	bnez	$4,.L248
	ld	$31,24($sp)

	dsubu	$2,$0,$2
.L248:
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	atol
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.set	nomips16
	.set	micromips
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
	b	.L250
	ld	$17,%got_disp(isspace)($28)

.L251:
	daddiu	$16,$16,1
.L250:
	move	$25,$17
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnez	$2,.L251
	li	$3,43			# 0x2b

	lb	$2,0($16)
	beq	$2,$3,.L257
	li	$3,45			# 0x2d

	bne	$2,$3,.L258
	nop

	li	$4,1			# 0x1
.L252:
	daddiu	$16,$16,1
.L253:
	b	.L254
	move	$2,$0

.L257:
	b	.L252
	move	$4,$0

.L258:
	b	.L253
	move	$4,$0

.L255:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	dsubu	$2,$3,$2
.L254:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnez	$3,.L255
	daddiu	$16,$16,1

	bnez	$4,.L260
	ld	$31,24($sp)

	dsubu	$2,$0,$2
.L260:
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.set	nomips16
	.set	micromips
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
	b	.L262
	move	$20,$8

.L269:
	dsrl	$16,$16,1
.L262:
	beqz	$16,.L268
	dsrl	$2,$16,1

	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$5,$17
	move	$25,$20
	jalr	$25
	move	$4,$21

	bltz	$2,.L269
	nop

	blez	$2,.L267
	daddu	$19,$17,$18

	dsrl	$2,$16,1
	daddiu	$16,$16,-1
	b	.L262
	dsubu	$16,$16,$2

.L268:
	move	$2,$0
.L265:
	ld	$31,56($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	64
.L267:
	b	.L265
	move	$2,$17

	.set	macro
	.set	reorder
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.set	nomips16
	.set	micromips
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
	move	$19,$7
	move	$21,$8
	move	$20,$9
	sll	$16,$6,0
	b	.L271
	move	$18,$5

.L273:
	sra	$16,$16,1
.L271:
	beqz	$16,.L276
	sra	$2,$16,1

	dmult	$2,$19
	mflo	$17
	daddu	$17,$18,$17
	move	$6,$20
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	beqzc	$2,.L275
	blez	$2,.L273
	nop

	daddu	$18,$17,$19
	b	.L273
	addiu	$16,$16,-1

.L276:
	move	$2,$0
.L272:
	ld	$31,72($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	80
.L275:
	b	.L272
	move	$2,$17

	.set	macro
	.set	reorder
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
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
	mflo	$3
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
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
	bltz	$4,.L280
	move	$2,$4

.L279:
	jrc	$31
.L280:
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	imaxabs
	.size	imaxabs, .-imaxabs
	.align	2
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
	bltz	$4,.L284
	move	$2,$4

.L283:
	jrc	$31
.L284:
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	labs
	.size	labs, .-labs
	.align	2
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
	bltz	$4,.L288
	move	$2,$4

.L287:
	jrc	$31
.L288:
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	llabs
	.size	llabs, .-llabs
	.align	2
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
	b	.L291
	move	$2,$4

.L291:
	lw	$3,0($2)
	beqzc	$3,.L296
	bne	$5,$3,.L291
	daddiu	$2,$2,4

	daddiu	$2,$2,-4
	lw	$3,0($2)
.L296:
	jr	$31
	movz	$2,$0,$3

	.set	macro
	.set	reorder
	.end	wcschr
	.size	wcschr, .-wcschr
	.align	2
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
	b	.L303
	lw	$3,0($4)

.L304:
	daddiu	$5,$5,4
	lw	$3,0($4)
.L303:
	lw	$2,0($5)
	bne	$3,$2,.L299
	nop

	beqzc	$3,.L299
	bnez	$2,.L304
	daddiu	$4,$4,4

	daddiu	$4,$4,-4
.L299:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L302
	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

.L302:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
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
.L306:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$6,-4($5)
	bnez	$6,.L306
	sw	$6,-4($3)

	jrc	$31
	.set	macro
	.set	reorder
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
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
	b	.L309
	move	$2,$4

.L310:
	daddiu	$2,$2,4
.L309:
	lw	$3,0($2)
	bnezc	$3,.L310
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
	.set	micromips
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
.L312:
	beqzc	$6,.L313
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L313
	nop

	beqzc	$3,.L313
	beqzc	$2,.L313
	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	b	.L312
	daddiu	$5,$5,4

.L313:
	beqzc	$6,.L316
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L317
	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

.L316:
	jr	$31
	move	$2,$0

.L317:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
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
	b	.L319
	move	$2,$4

.L324:
	daddiu	$2,$2,4
.L319:
	beqzc	$6,.L320
	lw	$3,0($2)
	bne	$5,$3,.L324
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
.L320:
	jr	$31
	movz	$2,$0,$6

	.set	macro
	.set	reorder
	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
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
	b	.L326
	nop

.L332:
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L326:
	beqzc	$6,.L327
	lw	$3,0($4)
	lw	$2,0($5)
	beq	$3,$2,.L332
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
.L327:
	beqzc	$6,.L330
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L331
	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

.L330:
	jr	$31
	move	$2,$0

.L331:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.set	nomips16
	.set	micromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	move	$3,$4
	b	.L334
	li	$8,-1			# 0xffffffffffffffff

.L335:
	daddiu	$3,$3,4
	lw	$7,-4($5)
	sw	$7,-4($3)
.L334:
	daddiu	$6,$6,-1
	bne	$6,$8,.L335
	daddiu	$5,$5,4

	jrc	$31
	.set	macro
	.set	reorder
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
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
	beq	$4,$5,.L344
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$3,$3,$4
	beqzc	$3,.L342
	daddu	$5,$5,$4
	daddu	$3,$2,$4
	b	.L339
	daddiu	$6,$2,-4

.L340:
	lw	$4,0($5)
	sw	$4,0($3)
.L339:
	daddiu	$3,$3,-4
	bne	$3,$6,.L340
	daddiu	$5,$5,-4

.L344:
	jrc	$31
.L341:
	daddiu	$3,$3,4
	lw	$4,-4($5)
	sw	$4,-4($3)
.L338:
	daddiu	$6,$6,-1
	bne	$6,$7,.L341
	daddiu	$5,$5,4

	jrc	$31
.L342:
	move	$3,$2
	b	.L338
	li	$7,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
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
	move	$2,$4
	move	$3,$4
	b	.L346
	li	$7,-1			# 0xffffffffffffffff

.L347:
	sw	$5,-4($3)
.L346:
	daddiu	$6,$6,-1
	bne	$6,$7,.L347
	daddiu	$3,$3,4

	jrc	$31
	.set	macro
	.set	reorder
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
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
	beqz	$2,.L349
	daddu	$2,$4,$6

	b	.L350
	daddu	$5,$5,$6

.L351:
	daddiu	$5,$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
.L350:
	bne	$2,$4,.L351
	daddiu	$2,$2,-1

.L356:
	jrc	$31
.L349:
	beq	$4,$5,.L356
	daddu	$6,$5,$6

	b	.L353
	move	$2,$4

.L354:
	daddiu	$5,$5,1
	lb	$3,-1($2)
	sb	$3,-1($5)
.L353:
	bne	$5,$6,.L354
	daddiu	$2,$2,1

	jrc	$31
	.set	macro
	.set	reorder
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
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
	dsll	$2,$4,$5
	subu	$5,$0,$5
	dsrl	$4,$4,$5
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
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
	dsrl	$2,$4,$5
	subu	$5,$0,$5
	dsll	$4,$4,$5
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
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
	sll	$3,$4,$5
	li	$2,16			# 0x10
	subu	$2,$2,$5
	srl	$4,$4,$2
	or	$2,$4,$3
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
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
	srl	$3,$4,$5
	li	$2,16			# 0x10
	subu	$2,$2,$5
	sll	$4,$4,$2
	or	$2,$4,$3
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
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
	sll	$3,$4,$5
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	or	$2,$4,$3
	jr	$31
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
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
	srl	$3,$4,$5
	li	$2,8			# 0x8
	subu	$2,$2,$5
	sll	$4,$4,$2
	or	$2,$4,$3
	jr	$31
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
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
	.set	micromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,255			# 0xff
	dsll	$2,$2,24
	and	$2,$4,$2
	dsrl	$2,$2,24
	sll	$2,$2,0
	dsrl	$3,$4,8
	andi	$3,$3,0xff00
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
	.set	micromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$5,-1			# 0xffffffffffffffff
	dsll	$5,$5,56
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
	or	$2,$2,$3

	.set	macro
	.set	reorder
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
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
	move	$2,$0
	li	$5,32			# 0x20
.L371:
	beq	$2,$5,.L375
	srl	$3,$4,$2

	andi	$3,$3,0x1
	bnezc	$3,.L376
	b	.L371
	addiu	$2,$2,1

.L376:
	jr	$31
	addiu	$2,$2,1

.L375:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	ffs
	.size	ffs, .-ffs
	.align	2
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
	beqzc	$4,.L381
	b	.L379
	li	$2,1			# 0x1

.L380:
	addiu	$2,$2,1
.L379:
	andi	$3,$4,0x1
	beqz	$3,.L380
	sra	$4,$4,1

	jrc	$31
.L381:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
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
	lui	$3,%hi(%neg(%gp_rel(gl_isinff)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinff)))
	ld	$2,%got_page(.LC0)($3)
	lwc1	$f0,%got_ofst(.LC0)($2)
	c.lt.s	$fcc0,$f12,$f0
	bc1t	$fcc0,.L385
	nop

	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$fcc1,$f0,$f12
	bc1f	$fcc1,.L388
	nop

	jr	$31
	li	$2,1			# 0x1

.L385:
	jr	$31
	li	$2,1			# 0x1

.L388:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	gl_isinff
	.size	gl_isinff, .-gl_isinff
	.align	2
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
	lui	$3,%hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinfd)))
	ld	$2,%got_page(.LC2)($3)
	ldc1	$f0,%got_ofst(.LC2)($2)
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L392
	nop

	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$fcc1,$f0,$f12
	bc1f	$fcc1,.L395
	nop

	jr	$31
	li	$2,1			# 0x1

.L392:
	jr	$31
	li	$2,1			# 0x1

.L395:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	gl_isinfd
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.set	nomips16
	.set	micromips
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
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
	lui	$28,%hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	dmfc1	$17,$f13
	dmfc1	$16,$f12
	ld	$25,%call16(__lttf2)($28)
	ld	$2,%got_page(.LC4)($28)
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC4)($2)

	bltz	$2,.L402
	li	$2,1			# 0x1

	ld	$25,%call16(__gttf2)($28)
	ld	$2,%got_page(.LC5)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	ldc1	$f14,%got_ofst(.LC5)($2)
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__gttf2
1:	jalr	$25
	dmtc1	$16,$f12

	slt	$2,$0,$2
.L397:
.L402:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.set	nomips16
	.set	micromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
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
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	_Qp_itoq
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
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
	lui	$3,%hi(%neg(%gp_rel(ldexpf)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexpf)))
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L412
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f12,$f1
	bc1t	$fcc1,.L412
	nop

	bltz	$5,.L410
	ld	$2,%got_page(.LC7)($3)

	b	.L408
	lwc1	$f1,%got_ofst(.LC7)($2)

.L410:
	ld	$2,%got_page(.LC6)($3)
	b	.L408
	lwc1	$f1,%got_ofst(.LC6)($2)

.L411:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L412
	mul.s	$f1,$f1,$f1
.L408:
	andi	$2,$5,0x1
	beqz	$2,.L411
	srl	$2,$5,31

	b	.L411
	mul.s	$f0,$f0,$f1

.L412:
	jrc	$31
	.set	macro
	.set	reorder
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
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
	lui	$3,%hi(%neg(%gp_rel(ldexp)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexp)))
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L421
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f12,$f1
	bc1t	$fcc1,.L421
	nop

	bltz	$5,.L419
	ld	$2,%got_page(.LC9)($3)

	b	.L417
	ldc1	$f1,%got_ofst(.LC9)($2)

.L419:
	ld	$2,%got_page(.LC8)($3)
	b	.L417
	ldc1	$f1,%got_ofst(.LC8)($2)

.L420:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L421
	mul.d	$f1,$f1,$f1
.L417:
	andi	$2,$5,0x1
	beqz	$2,.L420
	srl	$2,$5,31

	b	.L420
	mul.d	$f0,$f0,$f1

.L421:
	jrc	$31
	.set	macro
	.set	reorder
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	.set	nomips16
	.set	micromips
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	dmfc1	$19,$f13
	dmfc1	$18,$f12
	move	$20,$6
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$19,$f15
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$18,$f14

	bnez	$2,.L423
	ld	$25,%call16(__addtf3)($28)

	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$19,$f13
	.reloc	1f,R_MICROMIPS_JALR,__addtf3
1:	jalr	$25
	dmtc1	$18,$f12

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	ld	$25,%call16(__netf2)($28)
	dmtc1	$3,$f15
	dmtc1	$4,$f14
	dmtc1	$19,$f13
	.reloc	1f,R_MICROMIPS_JALR,__netf2
1:	jalr	$25
	dmtc1	$18,$f12

	beqz	$2,.L431
	dmtc1	$18,$f0

	bltz	$20,.L430
	ld	$2,%got_page(.LC11)($28)

	ld	$17,%got_ofst(.LC11+8)($2)
	b	.L427
	ld	$16,%got_ofst(.LC11)($2)

.L430:
	ld	$2,%got_page(.LC10)($28)
	ld	$17,%got_ofst(.LC10+8)($2)
	b	.L427
	ld	$16,%got_ofst(.LC10)($2)

.L426:
	srl	$2,$20,31
.L432:
	addu	$2,$2,$20
	sra	$20,$2,1
	beqz	$20,.L423
	ld	$25,%call16(__multf3)($28)

	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$16,$f12

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$17,$3
	move	$16,$4
.L427:
	andi	$2,$20,0x1
	beqz	$2,.L432
	srl	$2,$20,31

	ld	$25,%call16(__multf3)($28)
	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$19,$f13
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$18,$f12

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$19,$3
	b	.L426
	move	$18,$4

.L423:
	dmtc1	$18,$f0
.L431:
	dmtc1	$19,$f2
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
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
	move	$2,$4
	daddu	$6,$4,$6
	b	.L434
	move	$3,$4

.L435:
	lb	$8,-1($5)
	daddiu	$3,$3,1
	lb	$7,-1($3)
	xor	$7,$7,$8
	sb	$7,-1($3)
.L434:
	bne	$3,$6,.L435
	daddiu	$5,$5,1

	jrc	$31
	.set	macro
	.set	reorder
	.end	memxor
	.size	memxor, .-memxor
	.align	2
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

	b	.L437
	daddu	$2,$18,$2

.L439:
	daddiu	$17,$17,1
	daddiu	$2,$2,1
	daddiu	$16,$16,-1
.L437:
	beqzc	$16,.L438
	lb	$3,0($17)
	bnez	$3,.L439
	sb	$3,0($2)

.L438:
	bnezc	$16,.L440
	sb	$0,0($2)
.L440:
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
	move	$2,$0
.L442:
	beq	$2,$5,.L445
	daddu	$3,$4,$2

	lb	$3,0($3)
	bnezc	$3,.L444
.L445:
	jrc	$31
.L444:
	b	.L442
	daddiu	$2,$2,1

	.set	macro
	.set	reorder
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
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
.L447:
	lb	$2,0($4)
	beqz	$2,.L455
	move	$3,$5

.L450:
	lb	$6,0($3)
	beqz	$6,.L454
	daddiu	$3,$3,1

	lb	$7,-1($3)
	lb	$6,0($4)
	bne	$7,$6,.L450
	nop

	jr	$31
	move	$2,$4

.L454:
	b	.L447
	daddiu	$4,$4,1

.L455:
	jrc	$31
	.set	macro
	.set	reorder
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
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
	b	.L458
	move	$2,$0

.L457:
	daddiu	$4,$4,1
	lb	$3,-1($4)
	beqzc	$3,.L462
.L458:
	lb	$3,0($4)
	bne	$5,$3,.L457
	nop

	b	.L457
	move	$2,$4

.L462:
	jrc	$31
	.set	macro
	.set	reorder
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
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

	beqz	$2,.L467
	move	$18,$2

	lb	$20,0($17)
	ld	$19,%got_disp(strchr)($28)
	ld	$21,%got_disp(strncmp)($28)
.L465:
	move	$5,$20
	move	$25,$19
	.reloc	1f,R_MICROMIPS_JALR,strchr
1:	jalr	$25
	move	$4,$16

	beqz	$2,.L469
	move	$16,$2

	move	$6,$18
	move	$5,$17
	move	$25,$21
	.reloc	1f,R_MICROMIPS_JALR,strncmp
1:	jalr	$25
	move	$4,$16

	beqz	$2,.L470
	move	$2,$16

	b	.L465
	daddiu	$16,$16,1

.L469:
	b	.L464
	move	$2,$0

.L467:
	move	$2,$16
.L464:
.L470:
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
	bc1t	$fcc0,.L484
	sdc1	$f12,0($sp)

	dmtc1	$0,$f0
.L486:
	ldc1	$f1,0($sp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L475
	nop

	c.lt.d	$fcc3,$f13,$f0
	bc1t	$fcc3,.L485
	li	$2,-1			# 0xffffffffffffffff

.L475:
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L484:
	c.lt.d	$fcc1,$f0,$f13
	bc1f	$fcc1,.L486
	dmtc1	$0,$f0

	li	$2,-1			# 0xffffffffffffffff
.L485:
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	b	.L475
	sd	$2,0($sp)

	.set	macro
	.set	reorder
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	nomips16
	.set	micromips
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
	move	$17,$6
	dsubu	$18,$5,$7
	beqz	$7,.L492
	daddu	$18,$4,$18

	sltu	$5,$5,$7
	bnez	$5,.L493
	daddiu	$20,$6,1

	daddiu	$19,$7,-1
	b	.L489
	ld	$21,%got_disp(memcmp)($28)

.L490:
	daddiu	$16,$16,1
.L489:
	sltu	$2,$18,$16
	bnez	$2,.L495
	move	$2,$0

	lb	$3,0($16)
	lb	$2,0($17)
	bne	$3,$2,.L490
	move	$6,$19

	move	$5,$20
	move	$25,$21
	.reloc	1f,R_MICROMIPS_JALR,memcmp
1:	jalr	$25
	daddiu	$4,$16,1

	bnez	$2,.L489
	daddiu	$16,$16,1

	daddiu	$16,$16,-1
	move	$2,$16
.L495:
.L488:
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	64
.L492:
	b	.L488
	move	$2,$4

.L493:
	b	.L488
	move	$2,$0

	.set	macro
	.set	reorder
	.end	memmem
	.size	memmem, .-memmem
	.align	2
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
	lui	$6,%hi(%neg(%gp_rel(frexp)))
	daddu	$6,$6,$25
	daddiu	$6,$6,%lo(%neg(%gp_rel(frexp)))
	dmtc1	$0,$f0
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L517
	sdc1	$f12,0($sp)

	move	$3,$0
.L498:
	ld	$2,%got_page(.LC12)($6)
	ldc1	$f0,%got_ofst(.LC12)($2)
	ldc1	$f1,0($sp)
	c.le.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L518
	move	$2,$0

	ld	$4,%got_page(.LC12)($6)
	ldc1	$f0,%got_ofst(.LC12)($4)
	ld	$4,%got_page(.LC8)($6)
	b	.L500
	ldc1	$f1,%got_ofst(.LC8)($4)

.L517:
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	sd	$2,0($sp)
	b	.L498
	li	$3,1			# 0x1

.L502:
	addiu	$2,$2,1
	mul.d	$f2,$f2,$f1
	sdc1	$f2,0($sp)
.L500:
	ldc1	$f2,0($sp)
	c.le.d	$fcc2,$f0,$f2
	bc1t	$fcc2,.L502
	nop

.L503:
	beqz	$3,.L507
	sw	$2,0($5)

	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	sd	$2,0($sp)
.L507:
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L518:
	ld	$2,%got_page(.LC8)($6)
	ldc1	$f0,%got_ofst(.LC8)($2)
	ldc1	$f1,0($sp)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L516
	dmtc1	$0,$f0

	c.eq.d	$fcc4,$f1,$f0
	bc1f	$fcc4,.L511
	ld	$4,%got_page(.LC8)($6)

	b	.L503
	move	$2,$0

.L506:
	addiu	$2,$2,-1
	add.d	$f1,$f1,$f1
	sdc1	$f1,0($sp)
.L505:
	ldc1	$f1,0($sp)
	c.lt.d	$fcc5,$f1,$f0
	bc1t	$fcc5,.L506
	nop

	b	.L503
	nop

.L511:
	move	$2,$0
	b	.L505
	ldc1	$f0,%got_ofst(.LC8)($4)

.L516:
	b	.L503
	move	$2,$0

	.set	macro
	.set	reorder
	.end	frexp
	.size	frexp, .-frexp
	.align	2
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
	b	.L520
	move	$2,$0

.L521:
	dsll	$5,$5,1
	dsrl	$4,$4,1
.L520:
	beqz	$4,.L524
	andi	$3,$4,0x1

	beqzc	$3,.L521
	b	.L521
	daddu	$2,$2,$5

.L524:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
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
	move	$2,$4
	li	$4,33			# 0x21
	b	.L526
	li	$3,1			# 0x1

.L530:
	sll	$5,$5,1
	sll	$3,$3,1
.L526:
	sltu	$7,$5,$2
	beqz	$7,.L536
	addiu	$4,$4,-1

	beqzc	$4,.L534
	bgez	$5,.L530
	move	$7,$0

	b	.L528
	nop

.L536:
	b	.L528
	move	$7,$0

.L534:
	b	.L528
	move	$7,$0

.L531:
	dext	$3,$3,1,31
	dext	$5,$5,1,31
.L528:
	beqz	$3,.L537
	sltu	$4,$2,$5

	bnezc	$4,.L531
	subu	$2,$2,$5
	b	.L531
	or	$7,$7,$3

.L537:
	jr	$31
	movz	$2,$7,$6

	.set	macro
	.set	reorder
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
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
	bltz	$4,.L542
	nop

.L539:
	beqzc	$4,.L541
	sll	$2,$4,8
	clz	$2,$2
	jr	$31
	addiu	$2,$2,-1

.L542:
	nor	$4,$0,$4
	b	.L539
	seb	$4,$4

.L541:
	jr	$31
	li	$2,7			# 0x7

	.set	macro
	.set	reorder
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
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
	bltz	$4,.L547
	nop

.L544:
	beqz	$4,.L546
	dclz	$4,$4

	jr	$31
	addiu	$2,$4,-1

.L547:
	b	.L544
	nor	$4,$0,$4

.L546:
	jr	$31
	li	$2,63			# 0x3f

	.set	macro
	.set	reorder
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
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
	b	.L549
	move	$2,$0

.L550:
	dext	$4,$4,1,31
	sll	$5,$5,1
.L549:
	beqz	$4,.L553
	andi	$3,$4,0x1

	beqzc	$3,.L550
	b	.L550
	addu	$2,$2,$5

.L553:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
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
	bnez	$3,.L555
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bnez	$3,.L564
	move	$3,$5

	b	.L556
	li	$7,-1			# 0xffffffffffffffff

.L555:
	move	$3,$5
.L564:
	move	$7,$4
	dsll	$9,$9,3
	b	.L557
	daddu	$9,$9,$5

.L558:
	ld	$8,0($3)
	sd	$8,0($7)
	daddiu	$3,$3,8
	daddiu	$7,$7,8
.L557:
	bne	$3,$9,.L558
	nop

	b	.L559
	dext	$2,$2,0,32

.L560:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L559:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L560
	daddu	$3,$5,$2

	jrc	$31
.L562:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L556:
	addiu	$6,$6,-1
	bne	$6,$7,.L562
	dext	$2,$6,0,32

	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
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
	bnez	$2,.L566
	dext	$8,$6,1,31

	dext	$2,$6,0,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	bnez	$2,.L573
	move	$2,$5

	b	.L567
	li	$7,-1			# 0xffffffffffffffff

.L566:
	move	$2,$5
.L573:
	move	$3,$4
	dsll	$8,$8,1
	b	.L568
	daddu	$8,$8,$5

.L569:
	lh	$7,0($2)
	sh	$7,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,2
.L568:
	bne	$2,$8,.L569
	nop

	andi	$2,$6,0x1
	beqz	$2,.L574
	addiu	$6,$6,-1

	dext	$6,$6,0,32
	daddu	$5,$5,$6
	daddu	$4,$4,$6
	lb	$2,0($5)
	jr	$31
	sb	$2,0($4)

.L571:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L567:
	addiu	$6,$6,-1
	bne	$6,$7,.L571
	dext	$2,$6,0,32

.L574:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
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
	bnez	$3,.L576
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bnez	$3,.L585
	move	$3,$5

	b	.L577
	li	$7,-1			# 0xffffffffffffffff

.L576:
	move	$3,$5
.L585:
	move	$7,$4
	dsll	$9,$9,2
	b	.L578
	daddu	$9,$9,$5

.L579:
	lw	$8,0($3)
	sw	$8,0($7)
	daddiu	$3,$3,4
	daddiu	$7,$7,4
.L578:
	bne	$3,$9,.L579
	nop

	b	.L580
	dext	$2,$2,0,32

.L581:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L580:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L581
	daddu	$3,$5,$2

	jrc	$31
.L583:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L577:
	addiu	$6,$6,-1
	bne	$6,$7,.L583
	dext	$2,$6,0,32

	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
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
	bltz	$4,.L591
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

.L591:
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
	bltz	$4,.L594
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

.L594:
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
	li	$5,16			# 0x10
	li	$6,15			# 0xf
.L597:
	beq	$2,$5,.L600
	subu	$3,$6,$2

	sra	$3,$4,$3
	andi	$3,$3,0x1
	bnezc	$3,.L600
	b	.L597
	addiu	$2,$2,1

.L600:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
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
.L602:
	beq	$2,$5,.L605
	sra	$3,$4,$2

	andi	$3,$3,0x1
	bnezc	$3,.L605
	b	.L602
	addiu	$2,$2,1

.L605:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ctzhi2
	.size	__ctzhi2, .-__ctzhi2
	.align	2
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
	bc1t	$fcc0,.L612
	li	$3,32768			# 0x8000

	trunc.l.s $f0,$f12
	jr	$31
	dmfc1	$2,$f0

.L612:
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
	b	.L614
	li	$6,16			# 0x10

.L615:
	addiu	$3,$3,1
.L614:
	beq	$3,$6,.L617
	sra	$5,$4,$3

	andi	$5,$5,0x1
	beqzc	$5,.L615
	b	.L615
	addiu	$2,$2,1

.L617:
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
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
	move	$2,$0
	move	$3,$0
	b	.L619
	li	$6,16			# 0x10

.L620:
	addiu	$3,$3,1
.L619:
	beq	$3,$6,.L623
	sra	$5,$4,$3

	andi	$5,$5,0x1
	beqzc	$5,.L620
	b	.L620
	addiu	$2,$2,1

.L623:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
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
	b	.L625
	move	$2,$0

.L626:
	dext	$4,$4,1,31
	sll	$5,$5,1
.L625:
	beqz	$4,.L629
	andi	$3,$4,0x1

	beqzc	$3,.L626
	b	.L626
	addu	$2,$2,$5

.L629:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
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
	beqzc	$4,.L635
	b	.L632
	move	$2,$0

.L633:
	sll	$4,$4,1
	dext	$5,$5,1,31
.L632:
	beqz	$5,.L637
	andi	$3,$5,0x1

	beqzc	$3,.L633
	b	.L633
	addu	$2,$2,$4

.L637:
	jrc	$31
.L635:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
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
	move	$2,$4
	li	$4,33			# 0x21
	b	.L639
	li	$3,1			# 0x1

.L643:
	sll	$5,$5,1
	sll	$3,$3,1
.L639:
	sltu	$7,$5,$2
	beqz	$7,.L649
	addiu	$4,$4,-1

	beqzc	$4,.L647
	bgez	$5,.L643
	move	$7,$0

	b	.L641
	nop

.L649:
	b	.L641
	move	$7,$0

.L647:
	b	.L641
	move	$7,$0

.L644:
	dext	$3,$3,1,31
	dext	$5,$5,1,31
.L641:
	beqz	$3,.L650
	sltu	$4,$2,$5

	bnezc	$4,.L644
	subu	$2,$2,$5
	b	.L644
	or	$7,$7,$3

.L650:
	jr	$31
	movz	$2,$7,$6

	.set	macro
	.set	reorder
	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
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
	bc1t	$fcc0,.L653
	nop

	c.lt.s	$fcc1,$f13,$f12
	bc1t	$fcc1,.L654
	nop

	jr	$31
	move	$2,$0

.L653:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

.L654:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	__mspabi_cmpf
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
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
	bc1t	$fcc0,.L657
	nop

	c.lt.d	$fcc1,$f13,$f12
	bc1t	$fcc1,.L658
	nop

	jr	$31
	move	$2,$0

.L657:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

.L658:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
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
	bltz	$5,.L670
	nop

	move	$7,$0
.L662:
	li	$3,33			# 0x21
	b	.L663
	move	$2,$0

.L670:
	subu	$5,$0,$5
	b	.L662
	li	$7,1			# 0x1

.L664:
	sll	$4,$4,1
	sra	$5,$5,1
.L663:
	beqz	$5,.L665
	addiu	$3,$3,-1

	andi	$3,$3,0x00ff
	beqz	$3,.L665
	andi	$6,$5,0x1

	beqzc	$6,.L664
	b	.L664
	addu	$2,$2,$4

.L665:
	beqzc	$7,.L671
	subu	$2,$0,$2
.L671:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
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
	bltz	$4,.L677
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))

	move	$16,$0
.L673:
	bltz	$5,.L678
	nop

.L674:
	sll	$4,$4,0
	sll	$5,$5,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	move	$6,$0

	beqz	$16,.L675
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L675:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
.L677:
	dsubu	$4,$0,$4
	b	.L673
	li	$16,1			# 0x1

.L678:
	dsubu	$5,$0,$5
	b	.L674
	xori	$16,$16,0x1

	.set	macro
	.set	reorder
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
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
	bltz	$4,.L684
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))

	move	$16,$0
.L680:
	bltz	$5,.L685
	nop

.L681:
	sll	$4,$4,0
	sll	$5,$5,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	li	$6,1			# 0x1

	beqz	$16,.L682
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L682:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
.L684:
	dsubu	$4,$0,$4
	b	.L680
	li	$16,1			# 0x1

.L685:
	b	.L681
	dsubu	$5,$0,$5

	.set	macro
	.set	reorder
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
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
	move	$2,$4
	li	$4,17			# 0x11
	li	$3,1			# 0x1
.L687:
	sltu	$7,$5,$2
	beqz	$7,.L697
	addiu	$4,$4,-1

	beqz	$4,.L689
	move	$7,$0

	seh	$7,$5
	bltz	$7,.L689
	move	$7,$0

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	b	.L687
	andi	$3,$3,0xffff

.L697:
	b	.L689
	move	$7,$0

	b	.L689
	move	$7,$0

.L692:
	dsrl	$3,$3,1
	dsrl	$5,$5,1
.L689:
	beqz	$3,.L699
	sltu	$4,$2,$5

	bnezc	$4,.L692
	subu	$2,$2,$5
	andi	$2,$2,0xffff
	b	.L692
	or	$7,$7,$3

.L699:
	jr	$31
	movz	$2,$7,$6

	.set	macro
	.set	reorder
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
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
	move	$2,$4
	li	$7,65			# 0x41
	li	$3,1			# 0x1
	li	$8,1			# 0x1
	b	.L701
	dsll	$8,$8,31

.L705:
	dsll	$5,$5,1
	dsll	$3,$3,1
.L701:
	sltu	$4,$5,$2
	beqzc	$4,.L711
	addiu	$7,$7,-1
	beqz	$7,.L709
	and	$4,$5,$8

	beqzc	$4,.L705
	b	.L703
	move	$7,$0

.L711:
	b	.L703
	move	$7,$0

.L709:
	b	.L703
	move	$7,$0

.L706:
	dsrl	$3,$3,1
	dsrl	$5,$5,1
.L703:
	beqz	$3,.L712
	sltu	$4,$2,$5

	bnezc	$4,.L706
	dsubu	$2,$2,$5
	b	.L706
	or	$7,$7,$3

.L712:
	jr	$31
	movz	$2,$7,$6

	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
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
	beqz	$2,.L714
	move	$2,$0

	dins	$2,$0,0,32
	sll	$4,$4,0
	sll	$5,$4,$5
	jr	$31
	dins	$2,$5,32,32

.L714:
	beqz	$5,.L717
	sll	$3,$4,0

	sll	$6,$3,$5
	move	$2,$0
	dins	$2,$6,0,32
	dsra	$4,$4,32
	sll	$4,$4,$5
	subu	$5,$0,$5
	srl	$3,$3,$5
	or	$3,$3,$4
	jr	$31
	dins	$2,$3,32,32

.L717:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
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
	beqz	$2,.L719
	move	$3,$0

	jr	$31
	dsll	$2,$5,$6

.L719:
	beqzc	$6,.L722
	dsll	$3,$5,$6
	dsll	$4,$4,$6
	subu	$6,$0,$6
	dsrl	$6,$5,$6
	jr	$31
	or	$2,$6,$4

.L722:
	move	$3,$5
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
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
	beqz	$2,.L724
	move	$2,$0

	dsra	$4,$4,32
	sra	$3,$4,31
	dins	$2,$3,32,32
	sra	$4,$4,$5
	jr	$31
	dins	$2,$4,0,32

.L724:
	beqz	$5,.L727
	dsra	$3,$4,32

	sra	$6,$3,$5
	move	$2,$0
	dins	$2,$6,32,32
	subu	$6,$0,$5
	sll	$3,$3,$6
	sll	$4,$4,0
	srl	$5,$4,$5
	or	$3,$3,$5
	jr	$31
	dins	$2,$3,0,32

.L727:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
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
	beqz	$2,.L729
	dsra	$2,$4,63

	jr	$31
	dsra	$3,$4,$6

.L729:
	beqz	$6,.L732
	subu	$7,$0,$6

	dsra	$2,$4,$6
	dsll	$4,$4,$7
	dsrl	$6,$5,$6
	jr	$31
	or	$3,$4,$6

.L732:
	move	$3,$5
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
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
	.set	micromips
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$5,$4,24,8
	dext	$3,$4,8,24
	andi	$3,$3,0xff00
	sll	$2,$4,8
	li	$6,16711680			# 0xff0000
	and	$2,$2,$6
	sll	$4,$4,24
	or	$4,$4,$5
	or	$4,$4,$3
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
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
	li	$2,65536			# 0x10000
	sltu	$2,$4,$2
	beqz	$2,.L736
	move	$3,$0

	li	$3,16			# 0x10
.L736:
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	bnez	$2,.L737
	move	$5,$0

	li	$5,8			# 0x8
.L737:
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xf0
	bnez	$2,.L742
	addu	$3,$5,$3

	li	$5,4			# 0x4
.L738:
	li	$2,4			# 0x4
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xc
	bnez	$2,.L743
	addu	$3,$3,$5

	li	$2,2			# 0x2
.L739:
	li	$5,2			# 0x2
	subu	$6,$5,$2
	srl	$4,$4,$6
	addu	$3,$3,$2
	andi	$2,$4,0x2
	sltu	$2,$2,1
	subu	$5,$5,$4
	mul	$4,$2,$5
	jr	$31
	addu	$2,$4,$3

	b	.L737
	move	$5,$0

.L742:
	b	.L738
	move	$5,$0

.L743:
	b	.L739
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
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
	sltu	$3,$4,1
	dsubu	$2,$0,$3
	daddiu	$3,$3,-1
	and	$3,$3,$4
	and	$4,$2,$5
	or	$3,$3,$4
	dclz	$3,$3
	andi	$2,$2,0x40
	jr	$31
	daddu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
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
	slt	$2,$2,$3
	bnezc	$2,.L747
	dsra	$2,$4,32
	slt	$2,$3,$2
	bnez	$2,.L748
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bnez	$2,.L749
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$4,$5,$4
	bnezc	$4,.L750
	jr	$31
	li	$2,1			# 0x1

.L747:
	jr	$31
	move	$2,$0

.L748:
	jr	$31
	li	$2,2			# 0x2

.L749:
	jr	$31
	move	$2,$0

.L750:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
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
	bnezc	$2,.L754
	slt	$2,$6,$4
	bnezc	$2,.L755
	sltu	$2,$5,$7
	bnezc	$2,.L756
	sltu	$2,$7,$5
	bnezc	$2,.L757
	jr	$31
	li	$2,1			# 0x1

.L754:
	jr	$31
	move	$2,$0

.L755:
	jr	$31
	li	$2,2			# 0x2

.L756:
	jr	$31
	move	$2,$0

.L757:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
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
	bnez	$2,.L759
	move	$3,$0

	li	$3,16			# 0x10
.L759:
	srl	$4,$4,$3
	andi	$2,$4,0x00ff
	bnez	$2,.L760
	move	$2,$0

	li	$2,8			# 0x8
.L760:
	srl	$4,$4,$2
	addu	$3,$2,$3
	andi	$2,$4,0xf
	bnez	$2,.L761
	move	$2,$0

	li	$2,4			# 0x4
.L761:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	bnezc	$2,.L766
	li	$2,2			# 0x2
.L762:
	srl	$4,$4,$2
	andi	$4,$4,0x3
	addu	$3,$3,$2
	nor	$2,$0,$4
	andi	$2,$2,0x1
	dsrl	$4,$4,1
	li	$5,2			# 0x2
	subu	$4,$5,$4
	subu	$2,$0,$2
	and	$2,$2,$4
	jr	$31
	addu	$2,$2,$3

	b	.L760
	move	$2,$0

.L766:
	b	.L762
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
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
	move	$7,$5
	sltu	$5,$5,1
	dsubu	$5,$0,$5
	and	$2,$5,$4
	nor	$3,$0,$5
	and	$3,$3,$7
	or	$3,$3,$2
	dsubu	$2,$0,$3
	and	$3,$3,$2
	dclz	$3,$3
	li	$2,63			# 0x3f
	subu	$2,$2,$3
	andi	$5,$5,0x40
	jr	$31
	addu	$2,$2,$5

	.set	macro
	.set	reorder
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
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
	bnez	$5,.L769
	dsubu	$3,$0,$5

	beqz	$4,.L771
	dsubu	$3,$0,$4

	and	$3,$3,$4
	dclz	$3,$3
	li	$2,63			# 0x3f
	subu	$2,$2,$3
	jr	$31
	addiu	$2,$2,65

.L769:
	and	$3,$3,$5
	dclz	$3,$3
	li	$2,63			# 0x3f
	subu	$2,$2,$3
	jr	$31
	addiu	$2,$2,1

.L771:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
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
	beqz	$2,.L773
	move	$2,$0

	dins	$2,$0,32,32
	dsra	$4,$4,32
	srl	$5,$4,$5
	jr	$31
	dins	$2,$5,0,32

.L773:
	beqz	$5,.L776
	dsra	$3,$4,32

	srl	$6,$3,$5
	move	$2,$0
	dins	$2,$6,32,32
	subu	$6,$0,$5
	sll	$3,$3,$6
	sll	$4,$4,0
	srl	$5,$4,$5
	or	$3,$3,$5
	jr	$31
	dins	$2,$3,0,32

.L776:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
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
	beqz	$2,.L778
	move	$2,$0

	jr	$31
	dsrl	$3,$4,$6

.L778:
	beqz	$6,.L781
	subu	$7,$0,$6

	dsrl	$2,$4,$6
	dsll	$4,$4,$7
	dsrl	$6,$5,$6
	jr	$31
	or	$3,$4,$6

.L781:
	move	$3,$5
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
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
	andi	$3,$4,0xffff
	andi	$6,$5,0xffff
	mul	$7,$3,$6
	move	$2,$0
	dins	$2,$7,0,32
	dext	$7,$2,16,16
	andi	$8,$2,0xffff
	dins	$2,$8,0,32
	dext	$4,$4,16,16
	mul	$8,$4,$6
	addu	$6,$8,$7
	sll	$7,$2,0
	sll	$8,$6,16
	addu	$7,$7,$8
	dins	$2,$7,0,32
	dext	$6,$6,16,16
	dins	$2,$6,32,32
	dext	$7,$2,16,16
	andi	$6,$2,0xffff
	dins	$2,$6,0,32
	dext	$5,$5,16,16
	mul	$6,$3,$5
	addu	$3,$6,$7
	sll	$6,$2,0
	sll	$7,$3,16
	addu	$6,$6,$7
	dins	$2,$6,0,32
	dsra	$6,$2,32
	dext	$3,$3,16,16
	addu	$3,$3,$6
	dins	$2,$3,32,32
	dsra	$3,$2,32
	mul	$6,$4,$5
	addu	$4,$6,$3
	jr	$31
	dins	$2,$4,32,32

	.set	macro
	.set	reorder
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
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

	dsra	$3,$2,32
	dsra	$16,$16,32
	dsra	$17,$17,32
	mult	$17,$19
	madd	$16,$18
	mflo	$16
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
	dext	$8,$4,0,32
	dext	$9,$5,0,32
	dmult	$8,$9
	mflo	$2
	dsrl	$3,$2,32
	dext	$2,$2,0,32
	dsrl	$4,$4,32
	dmult	$4,$9
	mflo	$9
	daddu	$3,$3,$9
	dsll	$9,$3,32
	daddu	$7,$9,$2
	dsrl	$6,$3,32
	dsrl	$3,$7,32
	dext	$2,$7,0,32
	dsrl	$5,$5,32
	dmult	$8,$5
	mflo	$8
	daddu	$3,$3,$8
	dsll	$8,$3,32
	daddu	$7,$8,$2
	dsrl	$3,$3,32
	daddu	$3,$3,$6
	dmult	$4,$5
	mflo	$2
	daddu	$6,$2,$3
	move	$3,$7
	jr	$31
	move	$2,$6

	.set	macro
	.set	reorder
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
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
	move	$17,$5
	move	$16,$4
	move	$19,$7
	move	$18,$6
	move	$5,$7
	ld	$25,%got_disp(__mulddi3)($28)
	.reloc	1f,R_MICROMIPS_JALR,__mulddi3
1:	jalr	$25
	move	$4,$17

	move	$4,$2
	move	$7,$3
	dmult	$16,$19
	mflo	$3
	dmult	$18,$17
	mflo	$2
	daddu	$3,$3,$2
	daddu	$6,$3,$4
	move	$3,$7
	move	$2,$6
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
	sltu	$5,$0,$3
	dsubu	$2,$0,$4
	jr	$31
	dsubu	$2,$2,$5

	.set	macro
	.set	reorder
	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
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
	dsra	$3,$4,32
	sll	$2,$4,0
	xor	$2,$2,$3
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
	dsra	$3,$4,32
	sll	$2,$4,0
	xor	$2,$2,$3
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
	daddu	$4,$3,$4
	dsrl	$2,$4,4
	daddu	$4,$2,$4
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	daddiu	$2,$2,3855
	and	$4,$4,$2
	sll	$3,$4,0
	dsrl	$4,$4,32
	addu	$3,$3,$4
	dext	$2,$3,16,16
	addu	$3,$2,$3
	dext	$2,$3,8,24
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
	.set	micromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$2,$4,1,31
	li	$3,1431633920			# 0x55550000
	addiu	$3,$3,21845
	and	$2,$2,$3
	subu	$4,$4,$2
	dext	$3,$4,2,30
	li	$2,858980352			# 0x33330000
	addiu	$2,$2,13107
	and	$3,$3,$2
	and	$4,$4,$2
	addu	$4,$4,$3
	dext	$2,$4,4,28
	addu	$2,$2,$4
	li	$3,252641280			# 0xf0f0000
	addiu	$3,$3,3855
	and	$2,$2,$3
	dext	$3,$2,16,13
	addu	$2,$2,$3
	dext	$3,$2,8,22
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
	.set	micromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$2,$4,63
	dsrl	$7,$5,1
	or	$7,$7,$2
	dsrl	$6,$4,1
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	daddiu	$2,$2,21845
	and	$8,$6,$2
	and	$9,$7,$2
	dsubu	$7,$5,$9
	sltu	$2,$5,$7
	dsubu	$6,$4,$8
	dsubu	$6,$6,$2
	dsll	$2,$6,62
	dsrl	$5,$7,2
	or	$5,$5,$2
	dsrl	$4,$6,2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	daddiu	$2,$2,13107
	and	$8,$4,$2
	and	$9,$5,$2
	and	$12,$6,$2
	and	$13,$7,$2
	daddu	$11,$9,$13
	sltu	$5,$11,$9
	daddu	$10,$8,$12
	daddu	$10,$5,$10
	dsll	$4,$10,60
	dsrl	$7,$11,4
	or	$7,$7,$4
	dsrl	$6,$10,4
	daddu	$5,$7,$11
	sltu	$3,$5,$7
	daddu	$4,$6,$10
	daddu	$4,$3,$4
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	daddiu	$2,$2,3855
	and	$8,$4,$2
	and	$9,$5,$2
	daddu	$2,$8,$9
	sll	$3,$2,0
	dsra	$2,$2,32
	addu	$3,$3,$2
	dext	$2,$3,16,16
	addu	$3,$2,$3
	dext	$2,$3,8,24
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
	.set	micromips
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
	b	.L797
	ldc1	$f0,%got_ofst(.LC12)($2)

.L800:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L796
	mul.d	$f12,$f12,$f12
.L797:
	andi	$2,$5,0x1
	beqz	$2,.L800
	srl	$2,$5,31

	b	.L800
	mul.d	$f0,$f0,$f12

.L796:
	beqz	$3,.L801
	ld	$2,%got_page(.LC12)($4)

	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
.L801:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__powidf2
	.size	__powidf2, .-__powidf2
	.align	2
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
	lui	$4,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powisf2)))
	slt	$3,$5,0
	ld	$2,%got_page(.LC14)($4)
	b	.L805
	lwc1	$f0,%got_ofst(.LC14)($2)

.L808:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L804
	mul.s	$f12,$f12,$f12
.L805:
	andi	$2,$5,0x1
	beqz	$2,.L808
	srl	$2,$5,31

	b	.L808
	mul.s	$f0,$f0,$f12

.L804:
	beqz	$3,.L809
	ld	$2,%got_page(.LC14)($4)

	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
.L809:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
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
	sltu	$2,$2,$3
	bnezc	$2,.L812
	dsra	$2,$4,32
	sltu	$2,$3,$2
	bnez	$2,.L813
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bnez	$2,.L814
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$4,$5,$4
	bnezc	$4,.L815
	jr	$31
	li	$2,1			# 0x1

.L812:
	jr	$31
	move	$2,$0

.L813:
	jr	$31
	li	$2,2			# 0x2

.L814:
	jr	$31
	move	$2,$0

.L815:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
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
	bnezc	$2,.L819
	sltu	$2,$6,$4
	bnezc	$2,.L820
	sltu	$2,$5,$7
	bnezc	$2,.L821
	sltu	$2,$7,$5
	bnezc	$2,.L822
	jr	$31
	li	$2,1			# 0x1

.L819:
	jr	$31
	move	$2,$0

.L820:
	jr	$31
	li	$2,2			# 0x2

.L821:
	jr	$31
	move	$2,$0

.L822:
	jr	$31
	li	$2,2			# 0x2

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
	.section	.rodata.cst4
	.align	2
.LC6:
	.word	1056964608
	.LC7 = .LC11
	.section	.rodata.cst8
	.align	3
.LC8:
	.word	1071644672
	.word	0
	.LC9 = .LC11
	.section	.rodata.cst16
	.align	4
.LC10:
	.word	1073610752
	.word	0
	.word	0
	.word	0
	.align	4
.LC11:
	.word	1073741824
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
