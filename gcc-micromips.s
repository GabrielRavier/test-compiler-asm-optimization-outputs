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
	beqz	$3,.L6
	move	$2,$4

	daddu	$3,$5,$6
	b	.L7
	daddu	$6,$4,$6

.L8:
	daddiu	$6,$6,-1
	lb	$7,0($3)
	sb	$7,0($6)
.L7:
	bne	$3,$5,.L8
	daddiu	$3,$3,-1

.L14:
	jrc	$31
.L6:
	beq	$4,$5,.L14
	daddu	$7,$4,$6

	move	$3,$5
	b	.L10
	move	$6,$4

.L11:
	daddiu	$6,$6,1
	lb	$4,-1($3)
	sb	$4,-1($6)
.L10:
	bne	$6,$7,.L11
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
	b	.L16
	andi	$6,$6,0xff

.L18:
	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	daddiu	$4,$4,1
.L16:
	beqzc	$7,.L17
	lbu	$2,0($5)
	bne	$6,$2,.L18
	sb	$2,0($4)

.L17:
	beqzc	$7,.L20
	jr	$31
	daddiu	$2,$4,1

.L20:
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
	b	.L23
	move	$2,$4

.L29:
	daddiu	$6,$6,-1
.L23:
	beqzc	$6,.L24
	lbu	$3,0($2)
	bne	$5,$3,.L29
	daddiu	$2,$2,1

	daddiu	$2,$2,-1
.L24:
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
	b	.L31
	nop

.L37:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
.L31:
	beqzc	$6,.L32
	lbu	$3,0($4)
	lbu	$2,0($5)
	beq	$3,$2,.L37
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
.L32:
	beqzc	$6,.L35
	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

.L35:
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
	b	.L39
	move	$3,$4

.L40:
	daddiu	$3,$3,1
	lbu	$7,-1($5)
	sb	$7,-1($3)
.L39:
	bne	$3,$6,.L40
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
.L43:
	beq	$6,$2,.L48
	daddu	$3,$4,$6

	lbu	$3,0($3)
	beq	$5,$3,.L49
	daddiu	$7,$6,-1

	b	.L43
	move	$6,$7

.L49:
	jr	$31
	daddu	$2,$4,$6

.L48:
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
	b	.L51
	andi	$5,$5,0xff

.L52:
	sb	$5,0($3)
	daddiu	$3,$3,1
.L51:
	bne	$3,$6,.L52
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
	b	.L55
	move	$2,$4

.L56:
	daddiu	$5,$5,1
	daddiu	$2,$2,1
.L55:
	lb	$3,0($5)
	bnez	$3,.L56
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
	b	.L59
	andi	$5,$5,0xff

.L59:
	lb	$3,0($2)
	beqzc	$3,.L63
	lbu	$3,0($2)
	bne	$5,$3,.L59
	daddiu	$2,$2,1

	daddiu	$2,$2,-1
.L63:
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
.L66:
	lb	$2,0($4)
	beq	$5,$2,.L67
	nop

	daddiu	$4,$4,1
	lb	$2,-1($4)
	bnezc	$2,.L66
	jrc	$31
.L67:
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
	b	.L75
	lb	$3,0($4)

.L76:
	daddiu	$5,$5,1
	lb	$3,0($4)
.L75:
	lb	$2,0($5)
	bne	$3,$2,.L72
	nop

	bnez	$3,.L76
	daddiu	$4,$4,1

	daddiu	$4,$4,-1
.L72:
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
	b	.L78
	move	$2,$4

.L79:
	daddiu	$2,$2,1
.L78:
	lb	$5,0($2)
	bnezc	$5,.L79
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
	beqz	$6,.L86
	daddiu	$6,$6,-1

	daddu	$2,$4,$6
.L83:
	lbu	$3,0($4)
	beqzc	$3,.L84
	lbu	$3,0($5)
	beqzc	$3,.L84
	beq	$4,$2,.L84
	nop

	lbu	$6,0($4)
	lbu	$3,0($5)
	bne	$6,$3,.L84
	nop

	daddiu	$4,$4,1
	b	.L83
	daddiu	$5,$5,1

.L84:
	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

.L86:
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
	b	.L89
	daddu	$6,$4,$6

.L90:
	lb	$3,1($2)
	sb	$3,0($5)
	lb	$3,0($2)
	sb	$3,1($5)
	daddiu	$5,$5,2
	daddiu	$2,$2,2
.L89:
	dsubu	$3,$6,$2
	slt	$3,$3,2
	beqzc	$3,.L90
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
	beq	$4,$2,.L98
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

.L98:
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
	bnez	$2,.L103
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

.L103:
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
	beq	$4,$2,.L116
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

.L116:
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
	bnezc	$2,.L123
	addiu	$2,$4,-127
	sltu	$2,$2,33
	bnezc	$2,.L124
	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bnezc	$2,.L125
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$2,$2,$4
	jr	$31
	sltu	$2,$2,3

.L123:
	jr	$31
	li	$2,1			# 0x1

.L124:
	jr	$31
	li	$2,1			# 0x1

.L125:
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
	bnez	$2,.L139
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bnez	$2,.L133
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bnezc	$2,.L134
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$2,$4
	sltu	$2,$2,8185
	bnez	$2,.L135
	li	$3,1048576			# 0x100000

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$2,$4
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beqzc	$2,.L136
	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

.L139:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

.L133:
	jr	$31
	li	$2,1			# 0x1

.L134:
	jr	$31
	li	$2,1			# 0x1

.L135:
	jr	$31
	li	$2,1			# 0x1

.L136:
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
	bnezc	$2,.L142
	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

.L142:
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
	bc1t	$fcc0,.L150
	c.un.d	$fcc1,$f13,$f13

	bc1t	$fcc1,.L151
	nop

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L154
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

.L150:
	jr	$31
	mov.d	$f0,$f12

.L151:
	jr	$31
	mov.d	$f0,$f13

.L154:
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
	bc1t	$fcc0,.L159
	c.un.s	$fcc1,$f13,$f13

	bc1t	$fcc1,.L160
	nop

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L163
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

.L159:
	jr	$31
	mov.s	$f0,$f12

.L160:
	jr	$31
	mov.s	$f0,$f13

.L163:
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
	bc1t	$fcc0,.L169
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L170
	mov.d	$f0,$f13

	ld	$3,0($sp)
	dsrl	$3,$3,63
	ld	$2,8($sp)
	dext	$2,$2,63,1
	beq	$3,$2,.L167
	ldc1	$f1,8($sp)

	movz.d	$f0,$f12,$3
.L166:
.L176:
	jr	$31
	daddiu	$sp,$sp,16

.L167:
	ldc1	$f0,0($sp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L176
	nop

	b	.L166
	mov.d	$f0,$f1

.L169:
	b	.L166
	ldc1	$f0,8($sp)

.L170:
	b	.L166
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
	bc1t	$fcc0,.L181
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L182
	mov.s	$f0,$f13

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($sp)
	and	$2,$2,$4
	beq	$3,$2,.L179
	lwc1	$f1,4($sp)

	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	movz.s	$f0,$f12,$2
.L178:
.L188:
	jr	$31
	daddiu	$sp,$sp,16

.L179:
	lwc1	$f0,0($sp)
	c.lt.s	$fcc2,$f0,$f1
	bc1f	$fcc2,.L188
	nop

	b	.L178
	mov.s	$f0,$f1

.L181:
	b	.L178
	lwc1	$f0,4($sp)

.L182:
	b	.L178
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

	bnez	$2,.L193
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$19,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$18,$f12

	bnez	$2,.L190
	dsrl	$2,$16,63

	dext	$3,$18,63,1
	beq	$2,$3,.L191
	ld	$25,%call16(__lttf2)($28)

	bgez	$16,.L200
	dmtc1	$16,$f0

	move	$17,$19
	move	$16,$18
.L190:
	dmtc1	$16,$f0
.L200:
	dmtc1	$17,$f2
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	48
.L191:
	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	dmtc1	$16,$f12

	bgez	$2,.L200
	dmtc1	$16,$f0

	move	$17,$19
	b	.L190
	move	$16,$18

.L193:
	move	$17,$19
	b	.L190
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
	bc1t	$fcc0,.L205
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L206
	ld	$3,0($sp)

	dsrl	$3,$3,63
	ld	$2,8($sp)
	dext	$2,$2,63,1
	beq	$3,$2,.L203
	ldc1	$f0,0($sp)

	mov.d	$f0,$f12
	movz.d	$f0,$f13,$3
.L202:
	jr	$31
	daddiu	$sp,$sp,16

.L203:
	ldc1	$f1,8($sp)
	c.lt.d	$fcc2,$f0,$f1
	bc1t	$fcc2,.L202
	nop

	b	.L202
	ldc1	$f0,8($sp)

.L205:
	b	.L202
	ldc1	$f0,8($sp)

.L206:
	b	.L202
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
	bc1t	$fcc0,.L216
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L217
	lw	$3,0($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($sp)
	and	$2,$2,$4
	beq	$3,$2,.L214
	lwc1	$f0,0($sp)

	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	mov.s	$f0,$f12
	movz.s	$f0,$f13,$2
.L213:
	jr	$31
	daddiu	$sp,$sp,16

.L214:
	lwc1	$f1,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	bc1t	$fcc2,.L213
	nop

	b	.L213
	lwc1	$f0,4($sp)

.L216:
	b	.L213
	lwc1	$f0,4($sp)

.L217:
	b	.L213
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

	bnez	$2,.L224
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$16,$f12

	bnez	$2,.L228
	dsrl	$2,$18,63

	dext	$3,$16,63,1
	beq	$2,$3,.L225
	ld	$25,%call16(__lttf2)($28)

	bgez	$18,.L234
	dmtc1	$16,$f0

	move	$17,$19
	move	$16,$18
.L224:
	dmtc1	$16,$f0
.L234:
	dmtc1	$17,$f2
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	48
.L225:
	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$19,$f13
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	dmtc1	$18,$f12

	bgez	$2,.L234
	dmtc1	$16,$f0

	move	$17,$19
	b	.L224
	move	$16,$18

.L228:
	move	$17,$19
	b	.L224
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
	b	.L236
	daddiu	$5,$5,%got_ofst(digits)

.L237:
	andi	$2,$4,0x3f
	daddu	$2,$2,$5
	lb	$2,0($2)
	sb	$2,0($3)
	daddiu	$3,$3,1
	dext	$4,$4,6,26
.L236:
	bnez	$4,.L237
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
	beqzc	$5,.L247
	ld	$2,0($5)
	sd	$2,0($4)
	sd	$5,8($4)
	sd	$4,0($5)
	ld	$2,0($4)
	beqzc	$2,.L248
	sd	$4,8($2)
.L248:
	jrc	$31
.L247:
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
	beqzc	$2,.L250
	ld	$3,8($4)
	sd	$3,8($2)
.L250:
	ld	$2,8($4)
	beqzc	$2,.L253
	ld	$3,0($4)
	sd	$3,0($2)
.L253:
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
	b	.L255
	move	$16,$0

.L256:
	daddiu	$16,$16,1
.L255:
	beq	$16,$23,.L260
	move	$5,$17

	move	$25,$20
	jalr	$25
	move	$4,$19

	bnez	$2,.L256
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L257
	daddu	$2,$21,$2

.L260:
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

.L257:
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
	b	.L262
	move	$16,$0

.L263:
	daddiu	$16,$16,1
.L262:
	beq	$16,$21,.L267
	move	$5,$17

	move	$25,$19
	jalr	$25
	move	$4,$20

	bnez	$2,.L263
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L264
	daddu	$2,$22,$2

.L267:
	move	$2,$0
.L264:
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
	bltz	$4,.L271
	move	$2,$4

.L269:
	jrc	$31
.L271:
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
	b	.L273
	ld	$17,%got_disp(isspace)($28)

.L274:
	daddiu	$16,$16,1
.L273:
	move	$25,$17
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnez	$2,.L274
	li	$3,43			# 0x2b

	lb	$2,0($16)
	beq	$2,$3,.L280
	li	$3,45			# 0x2d

	bne	$2,$3,.L281
	nop

	li	$4,1			# 0x1
.L275:
	daddiu	$16,$16,1
.L276:
	b	.L277
	move	$2,$0

.L280:
	b	.L275
	move	$4,$0

.L281:
	b	.L276
	move	$4,$0

.L278:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	subu	$2,$3,$2
.L277:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnez	$3,.L278
	daddiu	$16,$16,1

	bnez	$4,.L284
	ld	$31,24($sp)

	subu	$2,$0,$2
.L284:
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
	b	.L286
	ld	$17,%got_disp(isspace)($28)

.L287:
	daddiu	$16,$16,1
.L286:
	move	$25,$17
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnez	$2,.L287
	li	$3,43			# 0x2b

	lb	$2,0($16)
	beq	$2,$3,.L293
	li	$3,45			# 0x2d

	bne	$2,$3,.L294
	nop

	li	$4,1			# 0x1
.L288:
	daddiu	$16,$16,1
.L289:
	b	.L290
	move	$2,$0

.L293:
	b	.L288
	move	$4,$0

.L294:
	b	.L289
	move	$4,$0

.L291:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	dsubu	$2,$3,$2
.L290:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnez	$3,.L291
	daddiu	$16,$16,1

	bnez	$4,.L297
	ld	$31,24($sp)

	dsubu	$2,$0,$2
.L297:
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
	b	.L299
	ld	$17,%got_disp(isspace)($28)

.L300:
	daddiu	$16,$16,1
.L299:
	move	$25,$17
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnez	$2,.L300
	li	$3,43			# 0x2b

	lb	$2,0($16)
	beq	$2,$3,.L306
	li	$3,45			# 0x2d

	bne	$2,$3,.L307
	nop

	li	$4,1			# 0x1
.L301:
	daddiu	$16,$16,1
.L302:
	b	.L303
	move	$2,$0

.L306:
	b	.L301
	move	$4,$0

.L307:
	b	.L302
	move	$4,$0

.L304:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	dsubu	$2,$3,$2
.L303:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnez	$3,.L304
	daddiu	$16,$16,1

	bnez	$4,.L310
	ld	$31,24($sp)

	dsubu	$2,$0,$2
.L310:
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
	b	.L312
	move	$20,$8

.L320:
	dsrl	$16,$16,1
.L312:
	beqz	$16,.L319
	dsrl	$2,$16,1

	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$5,$17
	move	$25,$20
	jalr	$25
	move	$4,$21

	bltz	$2,.L320
	nop

	blez	$2,.L317
	daddu	$19,$17,$18

	dsrl	$2,$16,1
	daddiu	$16,$16,-1
	b	.L312
	dsubu	$16,$16,$2

.L319:
	move	$2,$0
.L315:
	ld	$31,56($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	64
.L317:
	b	.L315
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
	b	.L322
	move	$18,$5

.L324:
	sra	$16,$16,1
.L322:
	beqz	$16,.L328
	sra	$2,$16,1

	dmult	$2,$19
	mflo	$17
	daddu	$17,$18,$17
	move	$6,$20
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	beqzc	$2,.L326
	blez	$2,.L324
	nop

	daddu	$18,$17,$19
	b	.L324
	addiu	$16,$16,-1

.L328:
	move	$2,$0
.L323:
	ld	$31,72($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	80
.L326:
	b	.L323
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
	bltz	$4,.L334
	move	$2,$4

.L332:
	jrc	$31
.L334:
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
	bltz	$4,.L340
	move	$2,$4

.L338:
	jrc	$31
.L340:
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
	bltz	$4,.L346
	move	$2,$4

.L344:
	jrc	$31
.L346:
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
	b	.L350
	move	$2,$4

.L350:
	lw	$3,0($2)
	beqzc	$3,.L356
	bne	$5,$3,.L350
	daddiu	$2,$2,4

	daddiu	$2,$2,-4
	lw	$3,0($2)
.L356:
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
	b	.L364
	lw	$3,0($4)

.L365:
	daddiu	$5,$5,4
	lw	$3,0($4)
.L364:
	lw	$2,0($5)
	bne	$3,$2,.L359
	nop

	beqzc	$3,.L359
	bnez	$2,.L365
	daddiu	$4,$4,4

	daddiu	$4,$4,-4
.L359:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L362
	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

.L362:
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
.L367:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$6,-4($5)
	bnez	$6,.L367
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
	b	.L371
	move	$2,$4

.L372:
	daddiu	$2,$2,4
.L371:
	lw	$3,0($2)
	bnezc	$3,.L372
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
.L375:
	beqzc	$6,.L376
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L376
	nop

	beqzc	$3,.L376
	beqzc	$2,.L376
	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	b	.L375
	daddiu	$5,$5,4

.L376:
	beqzc	$6,.L379
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L380
	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

.L379:
	jr	$31
	move	$2,$0

.L380:
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
	b	.L383
	move	$2,$4

.L389:
	daddiu	$2,$2,4
.L383:
	beqzc	$6,.L384
	lw	$3,0($2)
	bne	$5,$3,.L389
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
.L384:
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
	b	.L391
	nop

.L398:
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L391:
	beqzc	$6,.L392
	lw	$3,0($4)
	lw	$2,0($5)
	beq	$3,$2,.L398
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
.L392:
	beqzc	$6,.L395
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L396
	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

.L395:
	jr	$31
	move	$2,$0

.L396:
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
	b	.L400
	li	$8,-1			# 0xffffffffffffffff

.L401:
	daddiu	$3,$3,4
	lw	$7,-4($5)
	sw	$7,-4($3)
.L400:
	daddiu	$6,$6,-1
	bne	$6,$8,.L401
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
	beq	$4,$5,.L412
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$3,$3,$4
	beqzc	$3,.L409
	daddu	$5,$5,$4
	daddu	$3,$2,$4
	b	.L406
	daddiu	$6,$2,-4

.L407:
	lw	$4,0($5)
	sw	$4,0($3)
.L406:
	daddiu	$3,$3,-4
	bne	$3,$6,.L407
	daddiu	$5,$5,-4

.L412:
	jrc	$31
.L408:
	daddiu	$3,$3,4
	lw	$4,-4($5)
	sw	$4,-4($3)
.L405:
	daddiu	$6,$6,-1
	bne	$6,$7,.L408
	daddiu	$5,$5,4

	jrc	$31
.L409:
	move	$3,$2
	b	.L405
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
	b	.L414
	li	$7,-1			# 0xffffffffffffffff

.L415:
	sw	$5,-4($3)
.L414:
	daddiu	$6,$6,-1
	bne	$6,$7,.L415
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
	beqz	$2,.L418
	daddu	$2,$4,$6

	b	.L419
	daddu	$5,$5,$6

.L420:
	daddiu	$5,$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
.L419:
	bne	$2,$4,.L420
	daddiu	$2,$2,-1

.L426:
	jrc	$31
.L418:
	beq	$4,$5,.L426
	daddu	$6,$5,$6

	b	.L422
	move	$2,$4

.L423:
	daddiu	$5,$5,1
	lb	$3,-1($2)
	sb	$3,-1($5)
.L422:
	bne	$5,$6,.L423
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
.L454:
	beq	$2,$5,.L459
	srl	$3,$4,$2

	andi	$3,$3,0x1
	bnezc	$3,.L460
	b	.L454
	addiu	$2,$2,1

.L460:
	jr	$31
	addiu	$2,$2,1

.L459:
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
	beqzc	$4,.L465
	b	.L463
	li	$2,1			# 0x1

.L464:
	addiu	$2,$2,1
.L463:
	andi	$3,$4,0x1
	beqz	$3,.L464
	sra	$4,$4,1

	jrc	$31
.L465:
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
	bc1t	$fcc0,.L470
	nop

	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$fcc1,$f0,$f12
	bc1f	$fcc1,.L473
	nop

	jr	$31
	li	$2,1			# 0x1

.L470:
	jr	$31
	li	$2,1			# 0x1

.L473:
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
	bc1t	$fcc0,.L478
	nop

	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$fcc1,$f0,$f12
	bc1f	$fcc1,.L481
	nop

	jr	$31
	li	$2,1			# 0x1

.L478:
	jr	$31
	li	$2,1			# 0x1

.L481:
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

	bltz	$2,.L490
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
.L484:
.L490:
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
	bc1t	$fcc0,.L502
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f12,$f1
	bc1t	$fcc1,.L502
	nop

	bltz	$5,.L500
	ld	$2,%got_page(.LC7)($3)

	b	.L497
	lwc1	$f1,%got_ofst(.LC7)($2)

.L500:
	ld	$2,%got_page(.LC6)($3)
	b	.L497
	lwc1	$f1,%got_ofst(.LC6)($2)

.L501:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L502
	mul.s	$f1,$f1,$f1
.L497:
	andi	$2,$5,0x1
	beqz	$2,.L501
	srl	$2,$5,31

	b	.L501
	mul.s	$f0,$f0,$f1

.L502:
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
	bc1t	$fcc0,.L512
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f12,$f1
	bc1t	$fcc1,.L512
	nop

	bltz	$5,.L510
	ld	$2,%got_page(.LC9)($3)

	b	.L507
	ldc1	$f1,%got_ofst(.LC9)($2)

.L510:
	ld	$2,%got_page(.LC8)($3)
	b	.L507
	ldc1	$f1,%got_ofst(.LC8)($2)

.L511:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L512
	mul.d	$f1,$f1,$f1
.L507:
	andi	$2,$5,0x1
	beqz	$2,.L511
	srl	$2,$5,31

	b	.L511
	mul.d	$f0,$f0,$f1

.L512:
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

	bnez	$2,.L514
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

	beqz	$2,.L523
	dmtc1	$18,$f0

	bltz	$20,.L522
	ld	$2,%got_page(.LC11)($28)

	ld	$17,%got_ofst(.LC11+8)($2)
	b	.L518
	ld	$16,%got_ofst(.LC11)($2)

.L522:
	ld	$2,%got_page(.LC10)($28)
	ld	$17,%got_ofst(.LC10+8)($2)
	b	.L518
	ld	$16,%got_ofst(.LC10)($2)

.L517:
	srl	$2,$20,31
.L524:
	addu	$2,$2,$20
	sra	$20,$2,1
	beqz	$20,.L514
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
.L518:
	andi	$2,$20,0x1
	beqz	$2,.L524
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
	b	.L517
	move	$18,$4

.L514:
	dmtc1	$18,$f0
.L523:
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
	b	.L526
	move	$3,$4

.L527:
	lb	$8,-1($5)
	daddiu	$3,$3,1
	lb	$7,-1($3)
	xor	$7,$7,$8
	sb	$7,-1($3)
.L526:
	bne	$3,$6,.L527
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

	b	.L530
	daddu	$2,$18,$2

.L532:
	daddiu	$17,$17,1
	daddiu	$2,$2,1
	daddiu	$16,$16,-1
.L530:
	beqzc	$16,.L531
	lb	$3,0($17)
	bnez	$3,.L532
	sb	$3,0($2)

.L531:
	bnezc	$16,.L533
	sb	$0,0($2)
.L533:
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
.L536:
	beq	$2,$5,.L540
	daddu	$3,$4,$2

	lb	$3,0($3)
	bnezc	$3,.L538
.L540:
	jrc	$31
.L538:
	b	.L536
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
.L542:
	lb	$2,0($4)
	beqz	$2,.L551
	move	$3,$5

.L545:
	lb	$6,0($3)
	beqz	$6,.L550
	daddiu	$3,$3,1

	lb	$7,-1($3)
	lb	$6,0($4)
	bne	$7,$6,.L545
	nop

	jr	$31
	move	$2,$4

.L550:
	b	.L542
	daddiu	$4,$4,1

.L551:
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
	b	.L554
	move	$2,$0

.L553:
	daddiu	$4,$4,1
	lb	$3,-1($4)
	beqzc	$3,.L559
.L554:
	lb	$3,0($4)
	bne	$5,$3,.L553
	nop

	b	.L553
	move	$2,$4

.L559:
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

	beqz	$2,.L564
	move	$18,$2

	lb	$20,0($17)
	ld	$19,%got_disp(strchr)($28)
	ld	$21,%got_disp(strncmp)($28)
.L562:
	move	$5,$20
	move	$25,$19
	.reloc	1f,R_MICROMIPS_JALR,strchr
1:	jalr	$25
	move	$4,$16

	beqz	$2,.L567
	move	$16,$2

	move	$6,$18
	move	$5,$17
	move	$25,$21
	.reloc	1f,R_MICROMIPS_JALR,strncmp
1:	jalr	$25
	move	$4,$16

	beqz	$2,.L568
	move	$2,$16

	b	.L562
	daddiu	$16,$16,1

.L567:
	b	.L561
	move	$2,$0

.L564:
	move	$2,$16
.L561:
.L568:
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
	bc1t	$fcc0,.L583
	sdc1	$f12,0($sp)

	dmtc1	$0,$f0
.L585:
	ldc1	$f1,0($sp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L573
	nop

	c.lt.d	$fcc3,$f13,$f0
	bc1t	$fcc3,.L584
	li	$2,-1			# 0xffffffffffffffff

.L573:
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L583:
	c.lt.d	$fcc1,$f0,$f13
	bc1f	$fcc1,.L585
	dmtc1	$0,$f0

	li	$2,-1			# 0xffffffffffffffff
.L584:
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	b	.L573
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
	dsubu	$18,$5,$7
	beqz	$7,.L591
	daddu	$18,$4,$18

	sltu	$5,$5,$7
	bnez	$5,.L592
	move	$17,$6

	daddiu	$20,$6,1
	daddiu	$19,$7,-1
	b	.L588
	ld	$21,%got_disp(memcmp)($28)

.L589:
	daddiu	$16,$16,1
.L588:
	sltu	$2,$18,$16
	bnez	$2,.L595
	move	$2,$0

	lb	$3,0($16)
	lb	$2,0($17)
	bne	$3,$2,.L589
	move	$6,$19

	move	$5,$20
	move	$25,$21
	.reloc	1f,R_MICROMIPS_JALR,memcmp
1:	jalr	$25
	daddiu	$4,$16,1

	bnez	$2,.L588
	daddiu	$16,$16,1

	daddiu	$16,$16,-1
	move	$2,$16
.L595:
.L587:
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	64
.L591:
	b	.L587
	move	$2,$4

.L592:
	b	.L587
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
	bc1t	$fcc0,.L619
	sdc1	$f12,0($sp)

	move	$3,$0
.L599:
	ld	$2,%got_page(.LC12)($6)
	ldc1	$f0,%got_ofst(.LC12)($2)
	ldc1	$f1,0($sp)
	c.le.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L620
	move	$2,$0

	ld	$4,%got_page(.LC12)($6)
	ldc1	$f0,%got_ofst(.LC12)($4)
	ld	$4,%got_page(.LC8)($6)
	b	.L601
	ldc1	$f1,%got_ofst(.LC8)($4)

.L619:
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	sd	$2,0($sp)
	b	.L599
	li	$3,1			# 0x1

.L603:
	addiu	$2,$2,1
	mul.d	$f2,$f2,$f1
	sdc1	$f2,0($sp)
.L601:
	ldc1	$f2,0($sp)
	c.le.d	$fcc2,$f0,$f2
	bc1t	$fcc2,.L603
	nop

.L604:
	beqz	$3,.L608
	sw	$2,0($5)

	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	sd	$2,0($sp)
.L608:
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L620:
	ld	$2,%got_page(.LC8)($6)
	ldc1	$f0,%got_ofst(.LC8)($2)
	ldc1	$f1,0($sp)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L617
	dmtc1	$0,$f0

	c.eq.d	$fcc4,$f1,$f0
	bc1f	$fcc4,.L612
	ld	$4,%got_page(.LC8)($6)

	b	.L604
	move	$2,$0

.L607:
	addiu	$2,$2,-1
	add.d	$f1,$f1,$f1
	sdc1	$f1,0($sp)
.L606:
	ldc1	$f1,0($sp)
	c.lt.d	$fcc5,$f1,$f0
	bc1t	$fcc5,.L607
	nop

	b	.L604
	nop

.L612:
	move	$2,$0
	b	.L606
	ldc1	$f0,%got_ofst(.LC8)($4)

.L617:
	b	.L604
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
	b	.L622
	move	$2,$0

.L623:
	dsll	$5,$5,1
	dsrl	$4,$4,1
.L622:
	beqz	$4,.L627
	andi	$3,$4,0x1

	beqzc	$3,.L623
	b	.L623
	daddu	$2,$2,$5

.L627:
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
	b	.L629
	li	$3,1			# 0x1

.L633:
	sll	$5,$5,1
	sll	$3,$3,1
.L629:
	sltu	$7,$5,$2
	beqz	$7,.L640
	addiu	$4,$4,-1

	beqzc	$4,.L637
	bgez	$5,.L633
	move	$7,$0

	b	.L631
	nop

.L640:
	b	.L631
	move	$7,$0

.L637:
	b	.L631
	move	$7,$0

.L634:
	dext	$3,$3,1,31
	dext	$5,$5,1,31
.L631:
	beqz	$3,.L641
	sltu	$4,$2,$5

	bnezc	$4,.L634
	subu	$2,$2,$5
	b	.L634
	or	$7,$7,$3

.L641:
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
	bltz	$4,.L647
	nop

.L643:
	beqzc	$4,.L645
	sll	$2,$4,8
	clz	$2,$2
	jr	$31
	addiu	$2,$2,-1

.L647:
	nor	$4,$0,$4
	b	.L643
	seb	$4,$4

.L645:
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
	bltz	$4,.L653
	nop

.L649:
	beqz	$4,.L651
	dclz	$4,$4

	jr	$31
	addiu	$2,$4,-1

.L653:
	b	.L649
	nor	$4,$0,$4

.L651:
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
	b	.L655
	move	$2,$0

.L656:
	dext	$4,$4,1,31
	sll	$5,$5,1
.L655:
	beqz	$4,.L660
	andi	$3,$4,0x1

	beqzc	$3,.L656
	b	.L656
	addu	$2,$2,$5

.L660:
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
	bnez	$3,.L662
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bnez	$3,.L672
	move	$3,$5

	b	.L663
	li	$7,-1			# 0xffffffffffffffff

.L662:
	move	$3,$5
.L672:
	move	$7,$4
	dsll	$9,$9,3
	b	.L664
	daddu	$9,$9,$5

.L665:
	ld	$8,0($3)
	sd	$8,0($7)
	daddiu	$3,$3,8
	daddiu	$7,$7,8
.L664:
	bne	$3,$9,.L665
	nop

	b	.L666
	dext	$2,$2,0,32

.L667:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L666:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L667
	daddu	$3,$5,$2

	jrc	$31
.L669:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L663:
	addiu	$6,$6,-1
	bne	$6,$7,.L669
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
	bnez	$2,.L674
	dext	$8,$6,1,31

	dext	$2,$6,0,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	bnez	$2,.L682
	move	$2,$5

	b	.L675
	li	$7,-1			# 0xffffffffffffffff

.L674:
	move	$2,$5
.L682:
	move	$3,$4
	dsll	$8,$8,1
	b	.L676
	daddu	$8,$8,$5

.L677:
	lh	$7,0($2)
	sh	$7,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,2
.L676:
	bne	$2,$8,.L677
	nop

	andi	$2,$6,0x1
	beqz	$2,.L683
	addiu	$6,$6,-1

	dext	$6,$6,0,32
	daddu	$5,$5,$6
	daddu	$4,$4,$6
	lb	$2,0($5)
	jr	$31
	sb	$2,0($4)

.L679:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L675:
	addiu	$6,$6,-1
	bne	$6,$7,.L679
	dext	$2,$6,0,32

.L683:
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
	bnez	$3,.L685
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bnez	$3,.L695
	move	$3,$5

	b	.L686
	li	$7,-1			# 0xffffffffffffffff

.L685:
	move	$3,$5
.L695:
	move	$7,$4
	dsll	$9,$9,2
	b	.L687
	daddu	$9,$9,$5

.L688:
	lw	$8,0($3)
	sw	$8,0($7)
	daddiu	$3,$3,4
	daddiu	$7,$7,4
.L687:
	bne	$3,$9,.L688
	nop

	b	.L689
	dext	$2,$2,0,32

.L690:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L689:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L690
	daddu	$3,$5,$2

	jrc	$31
.L692:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L686:
	addiu	$6,$6,-1
	bne	$6,$7,.L692
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
	bltz	$4,.L704
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

.L704:
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
	bltz	$4,.L708
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

.L708:
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
.L713:
	beq	$2,$5,.L717
	subu	$3,$6,$2

	sra	$3,$4,$3
	andi	$3,$3,0x1
	bnezc	$3,.L717
	b	.L713
	addiu	$2,$2,1

.L717:
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
.L719:
	beq	$2,$5,.L723
	sra	$3,$4,$2

	andi	$3,$3,0x1
	bnezc	$3,.L723
	b	.L719
	addiu	$2,$2,1

.L723:
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
	bc1t	$fcc0,.L731
	li	$3,32768			# 0x8000

	trunc.l.s $f0,$f12
	jr	$31
	dmfc1	$2,$f0

.L731:
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
	b	.L733
	li	$6,16			# 0x10

.L734:
	addiu	$3,$3,1
.L733:
	beq	$3,$6,.L737
	sra	$5,$4,$3

	andi	$5,$5,0x1
	beqzc	$5,.L734
	b	.L734
	addiu	$2,$2,1

.L737:
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
	b	.L739
	li	$6,16			# 0x10

.L740:
	addiu	$3,$3,1
.L739:
	beq	$3,$6,.L744
	sra	$5,$4,$3

	andi	$5,$5,0x1
	beqzc	$5,.L740
	b	.L740
	addiu	$2,$2,1

.L744:
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
	b	.L746
	move	$2,$0

.L747:
	dext	$4,$4,1,31
	sll	$5,$5,1
.L746:
	beqz	$4,.L751
	andi	$3,$4,0x1

	beqzc	$3,.L747
	b	.L747
	addu	$2,$2,$5

.L751:
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
	beqzc	$4,.L757
	b	.L754
	move	$2,$0

.L755:
	sll	$4,$4,1
	dext	$5,$5,1,31
.L754:
	beqz	$5,.L760
	andi	$3,$5,0x1

	beqzc	$3,.L755
	b	.L755
	addu	$2,$2,$4

.L760:
	jrc	$31
.L757:
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
	b	.L762
	li	$3,1			# 0x1

.L766:
	sll	$5,$5,1
	sll	$3,$3,1
.L762:
	sltu	$7,$5,$2
	beqz	$7,.L773
	addiu	$4,$4,-1

	beqzc	$4,.L770
	bgez	$5,.L766
	move	$7,$0

	b	.L764
	nop

.L773:
	b	.L764
	move	$7,$0

.L770:
	b	.L764
	move	$7,$0

.L767:
	dext	$3,$3,1,31
	dext	$5,$5,1,31
.L764:
	beqz	$3,.L774
	sltu	$4,$2,$5

	bnezc	$4,.L767
	subu	$2,$2,$5
	b	.L767
	or	$7,$7,$3

.L774:
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
	bc1t	$fcc0,.L777
	nop

	c.lt.s	$fcc1,$f13,$f12
	bc1t	$fcc1,.L778
	nop

	jr	$31
	move	$2,$0

.L777:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

.L778:
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
	bc1t	$fcc0,.L782
	nop

	c.lt.d	$fcc1,$f13,$f12
	bc1t	$fcc1,.L783
	nop

	jr	$31
	move	$2,$0

.L782:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

.L783:
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
	bltz	$5,.L799
	nop

	move	$7,$0
.L790:
	li	$3,33			# 0x21
	b	.L791
	move	$2,$0

.L799:
	subu	$5,$0,$5
	b	.L790
	li	$7,1			# 0x1

.L792:
	sll	$4,$4,1
	sra	$5,$5,1
.L791:
	beqz	$5,.L793
	addiu	$3,$3,-1

	andi	$3,$3,0x00ff
	beqz	$3,.L793
	andi	$6,$5,0x1

	beqzc	$6,.L792
	b	.L792
	addu	$2,$2,$4

.L793:
	beqzc	$7,.L800
	subu	$2,$0,$2
.L800:
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
	bltz	$4,.L807
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))

	move	$16,$0
.L802:
	bltz	$5,.L808
	nop

.L803:
	sll	$4,$4,0
	sll	$5,$5,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	move	$6,$0

	beqz	$16,.L804
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L804:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
.L807:
	dsubu	$4,$0,$4
	b	.L802
	li	$16,1			# 0x1

.L808:
	dsubu	$5,$0,$5
	b	.L803
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
	bltz	$4,.L815
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))

	move	$16,$0
.L810:
	bltz	$5,.L816
	nop

.L811:
	sll	$4,$4,0
	sll	$5,$5,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	li	$6,1			# 0x1

	beqz	$16,.L812
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L812:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
.L815:
	dsubu	$4,$0,$4
	b	.L810
	li	$16,1			# 0x1

.L816:
	b	.L811
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
.L818:
	sltu	$7,$5,$2
	beqz	$7,.L829
	addiu	$4,$4,-1

	beqz	$4,.L820
	move	$7,$0

	seh	$7,$5
	bltz	$7,.L820
	move	$7,$0

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	b	.L818
	andi	$3,$3,0xffff

.L829:
	b	.L820
	move	$7,$0

	b	.L820
	move	$7,$0

.L823:
	dsrl	$3,$3,1
	dsrl	$5,$5,1
.L820:
	beqz	$3,.L831
	sltu	$4,$2,$5

	bnezc	$4,.L823
	subu	$2,$2,$5
	andi	$2,$2,0xffff
	b	.L823
	or	$7,$7,$3

.L831:
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
	b	.L833
	dsll	$8,$8,31

.L837:
	dsll	$5,$5,1
	dsll	$3,$3,1
.L833:
	sltu	$4,$5,$2
	beqzc	$4,.L844
	addiu	$7,$7,-1
	beqz	$7,.L841
	and	$4,$5,$8

	beqzc	$4,.L837
	b	.L835
	move	$7,$0

.L844:
	b	.L835
	move	$7,$0

.L841:
	b	.L835
	move	$7,$0

.L838:
	dsrl	$3,$3,1
	dsrl	$5,$5,1
.L835:
	beqz	$3,.L845
	sltu	$4,$2,$5

	bnezc	$4,.L838
	dsubu	$2,$2,$5
	b	.L838
	or	$7,$7,$3

.L845:
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
	beqz	$2,.L847
	move	$2,$0

	dins	$2,$0,0,32
	sll	$4,$4,0
	sll	$5,$4,$5
	jr	$31
	dins	$2,$5,32,32

.L847:
	beqz	$5,.L850
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

.L850:
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
	beqz	$2,.L853
	move	$3,$0

	jr	$31
	dsll	$2,$5,$6

.L853:
	beqzc	$6,.L856
	dsll	$3,$5,$6
	dsll	$4,$4,$6
	subu	$6,$0,$6
	dsrl	$6,$5,$6
	jr	$31
	or	$2,$6,$4

.L856:
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
	beqz	$2,.L859
	move	$2,$0

	dsra	$4,$4,32
	sra	$3,$4,31
	dins	$2,$3,32,32
	sra	$4,$4,$5
	jr	$31
	dins	$2,$4,0,32

.L859:
	beqz	$5,.L862
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

.L862:
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
	beqz	$2,.L865
	dsra	$2,$4,63

	jr	$31
	dsra	$3,$4,$6

.L865:
	beqz	$6,.L868
	subu	$7,$0,$6

	dsra	$2,$4,$6
	dsll	$4,$4,$7
	dsrl	$6,$5,$6
	jr	$31
	or	$3,$4,$6

.L868:
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
	beqz	$2,.L875
	move	$3,$0

	li	$3,16			# 0x10
.L875:
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	bnez	$2,.L876
	move	$5,$0

	li	$5,8			# 0x8
.L876:
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xf0
	bnez	$2,.L881
	addu	$3,$5,$3

	li	$5,4			# 0x4
.L877:
	li	$2,4			# 0x4
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xc
	bnez	$2,.L882
	addu	$3,$3,$5

	li	$2,2			# 0x2
.L878:
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

	b	.L876
	move	$5,$0

.L881:
	b	.L877
	move	$5,$0

.L882:
	b	.L878
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
	bnezc	$2,.L888
	dsra	$2,$4,32
	slt	$2,$3,$2
	bnez	$2,.L889
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bnez	$2,.L890
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$4,$5,$4
	bnezc	$4,.L891
	jr	$31
	li	$2,1			# 0x1

.L888:
	jr	$31
	move	$2,$0

.L889:
	jr	$31
	li	$2,2			# 0x2

.L890:
	jr	$31
	move	$2,$0

.L891:
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
	bnezc	$2,.L897
	slt	$2,$6,$4
	bnezc	$2,.L898
	sltu	$2,$5,$7
	bnezc	$2,.L899
	sltu	$2,$7,$5
	bnezc	$2,.L900
	jr	$31
	li	$2,1			# 0x1

.L897:
	jr	$31
	move	$2,$0

.L898:
	jr	$31
	li	$2,2			# 0x2

.L899:
	jr	$31
	move	$2,$0

.L900:
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
	bnez	$2,.L903
	move	$3,$0

	li	$3,16			# 0x10
.L903:
	srl	$4,$4,$3
	andi	$2,$4,0x00ff
	bnez	$2,.L904
	move	$2,$0

	li	$2,8			# 0x8
.L904:
	srl	$4,$4,$2
	addu	$3,$2,$3
	andi	$2,$4,0xf
	bnez	$2,.L905
	move	$2,$0

	li	$2,4			# 0x4
.L905:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	bnezc	$2,.L910
	li	$2,2			# 0x2
.L906:
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

	b	.L904
	move	$2,$0

.L910:
	b	.L906
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
	bnez	$5,.L915
	dsubu	$3,$0,$5

	beqz	$4,.L917
	dsubu	$3,$0,$4

	and	$3,$3,$4
	dclz	$3,$3
	li	$2,63			# 0x3f
	subu	$2,$2,$3
	jr	$31
	addiu	$2,$2,65

.L915:
	and	$3,$3,$5
	dclz	$3,$3
	li	$2,63			# 0x3f
	subu	$2,$2,$3
	jr	$31
	addiu	$2,$2,1

.L917:
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
	beqz	$2,.L920
	move	$2,$0

	dins	$2,$0,32,32
	dsra	$4,$4,32
	srl	$5,$4,$5
	jr	$31
	dins	$2,$5,0,32

.L920:
	beqz	$5,.L923
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

.L923:
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
	beqz	$2,.L926
	move	$2,$0

	jr	$31
	dsrl	$3,$4,$6

.L926:
	beqz	$6,.L929
	subu	$7,$0,$6

	dsrl	$2,$4,$6
	dsll	$4,$4,$7
	dsrl	$6,$5,$6
	jr	$31
	or	$3,$4,$6

.L929:
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
	b	.L958
	ldc1	$f0,%got_ofst(.LC12)($2)

.L962:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L957
	mul.d	$f12,$f12,$f12
.L958:
	andi	$2,$5,0x1
	beqz	$2,.L962
	srl	$2,$5,31

	b	.L962
	mul.d	$f0,$f0,$f12

.L957:
	beqz	$3,.L963
	ld	$2,%got_page(.LC12)($4)

	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
.L963:
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
	b	.L967
	lwc1	$f0,%got_ofst(.LC14)($2)

.L971:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L966
	mul.s	$f12,$f12,$f12
.L967:
	andi	$2,$5,0x1
	beqz	$2,.L971
	srl	$2,$5,31

	b	.L971
	mul.s	$f0,$f0,$f12

.L966:
	beqz	$3,.L972
	ld	$2,%got_page(.LC14)($4)

	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
.L972:
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
	bnezc	$2,.L975
	dsra	$2,$4,32
	sltu	$2,$3,$2
	bnez	$2,.L976
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bnez	$2,.L977
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$4,$5,$4
	bnezc	$4,.L978
	jr	$31
	li	$2,1			# 0x1

.L975:
	jr	$31
	move	$2,$0

.L976:
	jr	$31
	li	$2,2			# 0x2

.L977:
	jr	$31
	move	$2,$0

.L978:
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
	bnezc	$2,.L984
	sltu	$2,$6,$4
	bnezc	$2,.L985
	sltu	$2,$5,$7
	bnezc	$2,.L986
	sltu	$2,$7,$5
	bnezc	$2,.L987
	jr	$31
	li	$2,1			# 0x1

.L984:
	jr	$31
	move	$2,$0

.L985:
	jr	$31
	li	$2,2			# 0x2

.L986:
	jr	$31
	move	$2,$0

.L987:
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
