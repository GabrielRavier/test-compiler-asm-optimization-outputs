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
	jr	$31
	nop

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
	b	.L16
	andi	$6,$6,0xff

.L18:
	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	daddiu	$4,$4,1
.L16:
	beq	$7,$0,.L22
	move	$2,$0

	lbu	$2,0($5)
	bne	$6,$2,.L18
	sb	$2,0($4)

	beq	$7,$0,.L22
	move	$2,$0

	daddiu	$2,$4,1
.L22:
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
	b	.L24
	andi	$5,$5,0xff

.L26:
	daddiu	$6,$6,-1
.L24:
	beq	$6,$0,.L25
	nop

	lbu	$2,0($4)
	bnel	$5,$2,.L26
	daddiu	$4,$4,1

.L25:
	beq	$6,$0,.L28
	nop

	jr	$31
	move	$2,$4

.L28:
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
	b	.L31
	nop

.L33:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
.L31:
	beq	$6,$0,.L37
	move	$2,$0

	lbu	$3,0($4)
	lbu	$2,0($5)
	beql	$3,$2,.L33
	daddiu	$6,$6,-1

	beq	$6,$0,.L37
	move	$2,$0

	lbu	$2,0($4)
	lbu	$3,0($5)
	subu	$2,$2,$3
.L37:
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
	.set	nomicromips
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
	daddiu	$3,$3,1
.L51:
	bnel	$3,$6,.L52
	sb	$5,0($3)

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
	b	.L55
	move	$2,$4

.L56:
	daddiu	$5,$5,1
	daddiu	$2,$2,1
.L55:
	lb	$3,0($5)
	bne	$3,$0,.L56
	sb	$3,0($2)

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
	move	$2,$4
	andi	$5,$5,0xff
.L61:
	lb	$3,0($2)
	beq	$3,$0,.L63
	nop

	lbu	$3,0($2)
	bnel	$5,$3,.L61
	daddiu	$2,$2,1

.L63:
	jr	$31
	nop

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
	lb	$2,0($4)
.L70:
	beq	$5,$2,.L67
	nop

	daddiu	$4,$4,1
	lb	$2,-1($4)
	bnel	$2,$0,.L70
	lb	$2,0($4)

	jr	$31
	nop

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
	.set	nomicromips
	.ent	strcmp
	.type	strcmp, @function
strcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L76
	lb	$3,0($4)

.L74:
	daddiu	$5,$5,1
	lb	$3,0($4)
.L76:
	lb	$2,0($5)
	bnel	$3,$2,.L77
	lbu	$3,0($4)

	bnel	$3,$0,.L74
	daddiu	$4,$4,1

	lbu	$3,0($4)
.L77:
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
	move	$2,$4
.L80:
	lb	$5,0($2)
	bnel	$5,$0,.L80
	daddiu	$2,$2,1

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
	beq	$6,$0,.L87
	daddiu	$6,$6,-1

	daddu	$6,$4,$6
.L84:
	lbu	$2,0($4)
	beql	$2,$0,.L89
	lbu	$3,0($5)

	lbu	$2,0($5)
	beql	$2,$0,.L90
	lbu	$2,0($4)

	beql	$4,$6,.L90
	lbu	$2,0($4)

	lbu	$3,0($4)
	lbu	$2,0($5)
	bnel	$3,$2,.L85
	lbu	$2,0($4)

	daddiu	$4,$4,1
	b	.L84
	daddiu	$5,$5,1

.L85:
.L90:
	lbu	$3,0($5)
.L89:
	jr	$31
	subu	$2,$2,$3

.L87:
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
	move	$2,$4
	b	.L92
	daddu	$6,$4,$6

.L93:
	sb	$3,0($5)
	lb	$3,0($2)
	sb	$3,1($5)
	daddiu	$5,$5,2
	daddiu	$2,$2,2
.L92:
	dsubu	$3,$6,$2
	slt	$3,$3,2
	beql	$3,$0,.L93
	lb	$3,1($2)

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
	beq	$4,$2,.L101
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

.L101:
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
	bne	$3,$0,.L107
	li	$2,1			# 0x1

	xori	$4,$4,0x7f
	sltu	$2,$4,1
.L107:
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
	beq	$4,$2,.L118
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

.L118:
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
	bne	$3,$0,.L128
	li	$2,1			# 0x1

	addiu	$3,$4,-127
	sltu	$3,$3,33
	bne	$3,$0,.L128
	addiu	$3,$4,-8232

	sltu	$3,$3,2
	bne	$3,$0,.L128
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$2,$2,$4
	sltu	$2,$2,3
.L128:
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
	bne	$2,$0,.L139
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,.L134
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,.L135
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$2,$4
	sltu	$2,$2,8185
	bne	$2,$0,.L136
	li	$3,1048576			# 0x100000

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$2,$4
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,.L137
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

.L139:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

.L134:
	jr	$31
	li	$2,1			# 0x1

.L135:
	jr	$31
	li	$2,1			# 0x1

.L136:
	jr	$31
	li	$2,1			# 0x1

.L137:
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
	bne	$3,$0,.L144
	li	$2,1			# 0x1

	ori	$4,$4,0x20
	addiu	$4,$4,-97
	sltu	$2,$4,6
.L144:
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
	bc1t	.L150
	nop

	c.un.d	$f13,$f13
	nop
	bc1t	.L151
	nop

	c.lt.d	$f13,$f12
	nop
	bc1f	.L154
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
	bc1t	.L159
	nop

	c.un.s	$f13,$f13
	nop
	bc1t	.L160
	nop

	c.lt.s	$f13,$f12
	nop
	bc1f	.L163
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
	bc1t	.L171
	nop

	dmfc1	$2,$f12
	c.un.d	$f13,$f13
	nop
	bc1t	.L172
	dsrl	$5,$2,63

	dsrl	$4,$3,63
	beq	$5,$4,.L167
	nop

	bgez	$2,.L176
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f13

.L167:
	c.lt.d	$f12,$f13
	nop
	bc1t	.L168
	li	$4,1			# 0x1

	move	$4,$0
.L168:
	andi	$4,$4,0x00ff
	dmtc1	$2,$f0
	beq	$4,$0,.L175
	nop

	dmtc1	$3,$f0
.L176:
	jr	$31
	nop

.L171:
	jr	$31
	mov.d	$f0,$f13

.L172:
	mov.d	$f0,$f12
.L175:
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
	bc1t	.L183
	nop

	mfc1	$2,$f12
	c.un.s	$f13,$f13
	nop
	bc1t	.L184
	li	$6,-2147483648			# 0xffffffff80000000

	and	$5,$2,$6
	and	$4,$3,$6
	beq	$5,$4,.L179
	nop

	bgez	$2,.L188
	mov.s	$f0,$f12

	jr	$31
	mov.s	$f0,$f13

.L179:
	c.lt.s	$f12,$f13
	nop
	bc1t	.L180
	li	$4,1			# 0x1

	move	$4,$0
.L180:
	andi	$4,$4,0x00ff
	mtc1	$2,$f0
	beq	$4,$0,.L187
	nop

	mtc1	$3,$f0
.L188:
	jr	$31
	nop

.L183:
	jr	$31
	mov.s	$f0,$f13

.L184:
	mov.s	$f0,$f12
.L187:
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

	bne	$2,$0,.L195
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

	bne	$2,$0,.L190
	dsrl	$2,$16,63

	dsrl	$3,$22,63
	beq	$2,$3,.L191
	ld	$25,%call16(__lttf2)($28)

	bgez	$16,.L190
	nop

	move	$16,$22
	move	$17,$23
.L190:
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

.L191:
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

	bgez	$2,.L190
	nop

	move	$16,$22
	b	.L190
	move	$17,$23

.L195:
	move	$16,$22
	b	.L190
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
	bc1t	.L205
	sdc1	$f13,0($sp)

	dmfc1	$2,$f12
	c.un.d	$f13,$f13
	nop
	bc1t	.L206
	mov.d	$f0,$f13

	dsrl	$4,$2,63
	ld	$3,0($sp)
	dsrl	$3,$3,63
	beq	$4,$3,.L201
	ldc1	$f1,0($sp)

	bltzl	$2,.L200
	mov.d	$f0,$f12

.L200:
	jr	$31
	daddiu	$sp,$sp,16

.L201:
	c.lt.d	$f12,$f1
	nop
	bc1t	.L202
	li	$3,1			# 0x1

	move	$3,$0
.L202:
	andi	$3,$3,0x00ff
	beq	$3,$0,.L200
	ldc1	$f0,0($sp)

	dmtc1	$2,$f0
	b	.L200
	nop

.L205:
	b	.L200
	ldc1	$f0,0($sp)

.L206:
	b	.L200
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
	bc1t	.L215
	swc1	$f13,0($sp)

	mfc1	$2,$f12
	c.un.s	$f13,$f13
	nop
	bc1t	.L216
	mov.s	$f0,$f13

	li	$5,-2147483648			# 0xffffffff80000000
	and	$4,$2,$5
	lw	$3,0($sp)
	and	$3,$3,$5
	beq	$4,$3,.L211
	lwc1	$f1,0($sp)

	bltzl	$2,.L210
	mov.s	$f0,$f12

.L210:
	jr	$31
	daddiu	$sp,$sp,16

.L211:
	c.lt.s	$f12,$f1
	nop
	bc1t	.L212
	li	$3,1			# 0x1

	move	$3,$0
.L212:
	andi	$3,$3,0x00ff
	beq	$3,$0,.L210
	lwc1	$f0,0($sp)

	mtc1	$2,$f0
	b	.L210
	nop

.L215:
	b	.L210
	lwc1	$f0,0($sp)

.L216:
	b	.L210
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

	bne	$2,$0,.L220
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

	bne	$2,$0,.L226
	dsrl	$2,$22,63

	dsrl	$3,$16,63
	beq	$2,$3,.L221
	ld	$25,%call16(__lttf2)($28)

	bgez	$22,.L220
	nop

	move	$16,$22
	move	$17,$23
.L220:
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

.L221:
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

	bgez	$2,.L220
	nop

	move	$16,$22
	b	.L220
	move	$17,$23

.L226:
	move	$16,$22
	b	.L220
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
	daddiu	$6,$6,%lo(%neg(%gp_rel(l64a)))
	sll	$4,$4,0
	ld	$3,%got_page(s.0)($6)
	daddiu	$3,$3,%got_ofst(s.0)
	ld	$5,%got_page(digits)($6)
	b	.L230
	daddiu	$5,$5,%got_ofst(digits)

.L231:
	daddu	$2,$2,$5
	lb	$2,0($2)
	sb	$2,0($3)
	daddiu	$3,$3,1
	srl	$4,$4,6
.L230:
	bnel	$4,$0,.L231
	andi	$2,$4,0x3f

	sb	$0,0($3)
	ld	$2,%got_page(s.0)($6)
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
	beql	$5,$0,.L241
	sd	$0,8($4)

	ld	$2,0($5)
	sd	$2,0($4)
	sd	$5,8($4)
	sd	$4,0($5)
	ld	$2,0($4)
	bnel	$2,$0,.L243
	sd	$4,8($2)

.L243:
	jr	$31
	nop

.L241:
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
	beql	$2,$0,.L248
	ld	$2,8($4)

	ld	$3,8($4)
	sd	$3,8($2)
	ld	$2,8($4)
.L248:
	beq	$2,$0,.L249
	nop

	ld	$3,0($4)
	sd	$3,0($2)
.L249:
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
	move	$18,$7
	move	$20,$8
	ld	$23,0($6)
	move	$17,$5
	b	.L251
	move	$16,$0

.L252:
	daddiu	$16,$16,1
.L251:
	beq	$16,$23,.L256
	move	$5,$17

	move	$25,$20
	jalr	$25
	move	$4,$19

	bne	$2,$0,.L252
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L253
	daddu	$2,$21,$2

.L256:
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

.L253:
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
	move	$20,$4
	move	$22,$5
	move	$18,$7
	move	$19,$8
	ld	$21,0($6)
	move	$17,$5
	b	.L258
	move	$16,$0

.L259:
	daddiu	$16,$16,1
.L258:
	beq	$16,$21,.L263
	move	$5,$17

	move	$25,$19
	jalr	$25
	move	$4,$20

	bne	$2,$0,.L259
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L260
	daddu	$2,$22,$2

.L263:
	move	$2,$0
.L260:
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
.L268:
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnel	$2,$0,.L268
	daddiu	$16,$16,1

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L269
	move	$4,$0

	li	$3,45			# 0x2d
	bnel	$2,$3,.L278
	move	$3,$0

	li	$4,1			# 0x1
.L269:
	daddiu	$16,$16,1
	b	.L271
	move	$3,$0

.L272:
	addu	$2,$2,$3
	sll	$2,$2,1
	daddiu	$16,$16,1
	lb	$3,-1($16)
	addiu	$3,$3,-48
	subu	$3,$2,$3
.L271:
	lb	$2,0($16)
.L278:
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnel	$2,$0,.L272
	sll	$2,$3,2

	bne	$4,$0,.L273
	move	$2,$3

	subu	$2,$0,$3
.L273:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
.L281:
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnel	$2,$0,.L281
	daddiu	$16,$16,1

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L282
	move	$4,$0

	li	$3,45			# 0x2d
	bnel	$2,$3,.L291
	move	$3,$0

	li	$4,1			# 0x1
.L282:
	daddiu	$16,$16,1
	b	.L284
	move	$3,$0

.L285:
	daddu	$2,$2,$3
	dsll	$2,$2,1
	daddiu	$16,$16,1
	lb	$3,-1($16)
	addiu	$3,$3,-48
	dsubu	$3,$2,$3
.L284:
	lb	$2,0($16)
.L291:
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnel	$2,$0,.L285
	dsll	$2,$3,2

	bne	$4,$0,.L286
	move	$2,$3

	dsubu	$2,$0,$3
.L286:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
.L294:
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnel	$2,$0,.L294
	daddiu	$16,$16,1

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L295
	move	$4,$0

	li	$3,45			# 0x2d
	bnel	$2,$3,.L304
	move	$3,$0

	li	$4,1			# 0x1
.L295:
	daddiu	$16,$16,1
	b	.L297
	move	$3,$0

.L298:
	daddu	$2,$2,$3
	dsll	$2,$2,1
	daddiu	$16,$16,1
	lb	$3,-1($16)
	addiu	$3,$3,-48
	dsubu	$3,$2,$3
.L297:
	lb	$2,0($16)
.L304:
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnel	$2,$0,.L298
	dsll	$2,$3,2

	bne	$4,$0,.L299
	move	$2,$3

	dsubu	$2,$0,$3
.L299:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	move	$20,$8
.L314:
.L306:
	beq	$16,$0,.L313
	dsrl	$2,$16,1

	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$5,$17
	move	$25,$20
	jalr	$25
	move	$4,$21

	bltzl	$2,.L314
	dsrl	$16,$16,1

	blez	$2,.L311
	daddu	$19,$17,$18

	dsrl	$2,$16,1
	daddiu	$16,$16,-1
	b	.L306
	dsubu	$16,$16,$2

.L313:
	move	$2,$0
.L309:
	ld	$31,56($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L311:
	b	.L309
	move	$2,$17

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
	move	$19,$7
	move	$21,$8
	move	$20,$9
	sll	$16,$6,0
	b	.L316
	move	$18,$5

.L318:
	sra	$16,$16,1
.L316:
	beq	$16,$0,.L322
	sra	$2,$16,1

	dmult	$2,$19
	mflo	$17
	daddu	$17,$18,$17
	move	$6,$20
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	beql	$2,$0,.L323
	move	$2,$17

	blezl	$2,.L316
	sra	$16,$16,1

	daddu	$18,$17,$19
	b	.L318
	addiu	$16,$16,-1

.L322:
	move	$2,$0
.L317:
.L323:
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
	b	.L345
	lw	$2,0($4)

.L341:
	lw	$2,0($4)
.L345:
	beq	$2,$0,.L346
	lw	$2,0($4)

	bnel	$5,$2,.L341
	daddiu	$4,$4,4

	lw	$2,0($4)
.L346:
	beq	$2,$0,.L343
	nop

	jr	$31
	move	$2,$4

.L343:
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
	b	.L354
	lw	$3,0($4)

.L350:
	daddiu	$5,$5,4
	lw	$3,0($4)
.L354:
	lw	$2,0($5)
	bnel	$3,$2,.L355
	lw	$3,0($4)

	beql	$3,$0,.L355
	lw	$3,0($4)

	bnel	$2,$0,.L350
	daddiu	$4,$4,4

	lw	$3,0($4)
	lw	$2,0($5)
.L355:
	slt	$3,$3,$2
	bne	$3,$0,.L356
	li	$2,-1			# 0xffffffffffffffff

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3,$2
.L356:
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
.L358:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$6,-4($5)
	bne	$6,$0,.L358
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
	move	$2,$4
.L363:
	lw	$3,0($2)
	bnel	$3,$0,.L363
	daddiu	$2,$2,4

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
.L366:
	beq	$6,$0,.L373
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L367
	nop

	beq	$3,$0,.L367
	nop

	beq	$2,$0,.L367
	nop

	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	b	.L366
	daddiu	$5,$5,4

.L367:
	beq	$6,$0,.L373
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$3,$2
	bne	$3,$0,.L373
	li	$2,-1			# 0xffffffffffffffff

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3,$2
.L373:
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
	b	.L375
	nop

.L377:
	daddiu	$4,$4,4
.L375:
	beq	$6,$0,.L376
	nop

	lw	$2,0($4)
	bnel	$5,$2,.L377
	daddiu	$6,$6,-1

.L376:
	beq	$6,$0,.L379
	nop

	jr	$31
	move	$2,$4

.L379:
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
	b	.L382
	nop

.L384:
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L382:
	beq	$6,$0,.L389
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	beql	$3,$2,.L384
	daddiu	$6,$6,-1

	beq	$6,$0,.L389
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$3,$2
	bne	$3,$0,.L389
	li	$2,-1			# 0xffffffffffffffff

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3,$2
.L389:
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
	move	$2,$4
	move	$3,$4
	b	.L391
	li	$8,-1			# 0xffffffffffffffff

.L392:
	daddiu	$3,$3,4
	lw	$7,-4($5)
	sw	$7,-4($3)
.L391:
	daddiu	$6,$6,-1
	bne	$6,$8,.L392
	daddiu	$5,$5,4

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
	beq	$4,$5,.L403
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$3,$3,$4
	beq	$3,$0,.L400
	move	$3,$2

	daddu	$5,$5,$4
	daddu	$6,$2,$4
	b	.L397
	daddiu	$4,$2,-4

.L398:
	lw	$3,0($5)
	sw	$3,0($6)
.L397:
	daddiu	$6,$6,-4
	bne	$6,$4,.L398
	daddiu	$5,$5,-4

.L403:
	jr	$31
	nop

.L399:
	daddiu	$3,$3,4
	lw	$4,-4($5)
	sw	$4,-4($3)
.L396:
	daddiu	$6,$6,-1
	bne	$6,$7,.L399
	daddiu	$5,$5,4

	jr	$31
	nop

.L400:
	b	.L396
	li	$7,-1			# 0xffffffffffffffff

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
	move	$2,$4
	move	$3,$4
	b	.L405
	li	$7,-1			# 0xffffffffffffffff

.L406:
	sw	$5,-4($3)
.L405:
	daddiu	$6,$6,-1
	bne	$6,$7,.L406
	daddiu	$3,$3,4

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
	beq	$2,$0,.L409
	daddu	$2,$4,$6

	b	.L410
	daddu	$5,$5,$6

.L411:
	daddiu	$5,$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
.L410:
	bne	$2,$4,.L411
	daddiu	$2,$2,-1

.L417:
	jr	$31
	nop

.L409:
	beq	$4,$5,.L417
	daddu	$6,$5,$6

	b	.L413
	move	$2,$4

.L414:
	daddiu	$5,$5,1
	lb	$3,-1($2)
	sb	$3,-1($5)
.L413:
	bne	$5,$6,.L414
	daddiu	$2,$2,1

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
.L445:
	beq	$2,$5,.L450
	srl	$3,$4,$2

	andi	$3,$3,0x1
	bne	$3,$0,.L451
	nop

	b	.L445
	addiu	$2,$2,1

.L451:
	jr	$31
	addiu	$2,$2,1

.L450:
	jr	$31
	move	$2,$0

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
	beq	$4,$0,.L456
	nop

	b	.L454
	li	$2,1			# 0x1

.L455:
	addiu	$2,$2,1
.L454:
	andi	$3,$4,0x1
	beq	$3,$0,.L455
	sra	$4,$4,1

	jr	$31
	nop

.L456:
	jr	$31
	move	$2,$0

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
	bc1t	.L463
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC1)($4)
	lwc1	$f0,%got_ofst(.LC1)($3)
	c.lt.s	$f0,$f12
	nop
	bc1t	.L460
	li	$2,1			# 0x1

	move	$2,$0
.L460:
	andi	$2,$2,0x1
.L463:
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
	bc1t	.L469
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC3)($4)
	ldc1	$f0,%got_ofst(.LC3)($3)
	c.lt.d	$f0,$f12
	nop
	bc1t	.L466
	li	$2,1			# 0x1

	move	$2,$0
.L466:
	andi	$2,$2,0x1
.L469:
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

	bltz	$2,.L471
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
.L471:
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
	bc1t	.L486
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$f12,$f1
	nop
	bc1t	.L486
	nop

	bltz	$5,.L484
	ld	$2,%got_page(.LC7)($3)

	b	.L481
	lwc1	$f1,%got_ofst(.LC7)($2)

.L484:
	ld	$2,%got_page(.LC6)($3)
	b	.L481
	lwc1	$f1,%got_ofst(.LC6)($2)

.L480:
	srl	$2,$5,31
.L485:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L486
	nop

	mul.s	$f1,$f1,$f1
.L481:
	andi	$2,$5,0x1
	bnel	$2,$0,.L480
	mul.s	$f0,$f0,$f1

	b	.L485
	srl	$2,$5,31

.L486:
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
	bc1t	.L496
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$f12,$f1
	nop
	bc1t	.L496
	nop

	bltz	$5,.L494
	ld	$2,%got_page(.LC9)($3)

	b	.L491
	ldc1	$f1,%got_ofst(.LC9)($2)

.L494:
	ld	$2,%got_page(.LC8)($3)
	b	.L491
	ldc1	$f1,%got_ofst(.LC8)($2)

.L490:
	srl	$2,$5,31
.L495:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L496
	nop

	mul.d	$f1,$f1,$f1
.L491:
	andi	$2,$5,0x1
	bnel	$2,$0,.L490
	mul.d	$f0,$f0,$f1

	b	.L495
	srl	$2,$5,31

.L496:
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

	bne	$2,$0,.L498
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

	beq	$2,$0,.L498
	nop

	bltz	$22,.L506
	ld	$2,%got_page(.LC11)($28)

	ld	$17,%got_ofst(.LC11+8)($2)
	b	.L502
	ld	$16,%got_ofst(.LC11)($2)

.L506:
	ld	$2,%got_page(.LC10)($28)
	ld	$17,%got_ofst(.LC10+8)($2)
	b	.L502
	ld	$16,%got_ofst(.LC10)($2)

.L501:
.L507:
	addu	$22,$2,$22
	sra	$22,$22,1
	beq	$22,$0,.L498
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
.L502:
	andi	$2,$22,0x1
	beql	$2,$0,.L501
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
	b	.L507
	srl	$2,$22,31

.L498:
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
	move	$2,$4
	daddu	$6,$4,$6
	b	.L509
	move	$3,$4

.L510:
	lb	$8,-1($5)
	daddiu	$3,$3,1
	lb	$7,-1($3)
	xor	$7,$7,$8
	sb	$7,-1($3)
.L509:
	bne	$3,$6,.L510
	daddiu	$5,$5,1

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

	b	.L513
	daddu	$2,$18,$2

.L515:
	daddiu	$17,$17,1
	daddiu	$2,$2,1
	daddiu	$16,$16,-1
.L513:
	beql	$16,$0,.L516
	sb	$0,0($2)

	lb	$3,0($17)
	bne	$3,$0,.L515
	sb	$3,0($2)

	beql	$16,$0,.L516
	sb	$0,0($2)

.L516:
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
	move	$2,$0
.L519:
	beq	$2,$5,.L523
	daddu	$3,$4,$2

	lb	$3,0($3)
	bnel	$3,$0,.L519
	daddiu	$2,$2,1

.L523:
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
.L525:
	lb	$2,0($4)
	beq	$2,$0,.L535
	move	$3,$5

	lb	$6,0($3)
.L534:
	beq	$6,$0,.L533
	daddiu	$3,$3,1

	lb	$7,-1($3)
	lb	$6,0($4)
	bnel	$7,$6,.L534
	lb	$6,0($3)

	jr	$31
	move	$2,$4

.L533:
	b	.L525
	daddiu	$4,$4,1

.L535:
	jr	$31
	nop

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
	b	.L538
	move	$2,$0

.L537:
	daddiu	$4,$4,1
.L543:
	lb	$3,-1($4)
	beq	$3,$0,.L544
	nop

.L538:
	lb	$3,0($4)
	beql	$5,$3,.L537
	move	$2,$4

	b	.L543
	daddiu	$4,$4,1

.L544:
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

	beq	$2,$0,.L549
	move	$18,$2

	lb	$20,0($17)
	ld	$19,%got_disp(strchr)($28)
	ld	$21,%got_disp(strncmp)($28)
.L547:
	move	$5,$20
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,strchr
1:	jalr	$25
	move	$4,$16

	beq	$2,$0,.L552
	move	$16,$2

	move	$6,$18
	move	$5,$17
	move	$25,$21
	.reloc	1f,R_MIPS_JALR,strncmp
1:	jalr	$25
	move	$4,$16

	beq	$2,$0,.L553
	move	$2,$16

	b	.L547
	daddiu	$16,$16,1

.L552:
	b	.L546
	move	$2,$0

.L549:
	move	$2,$16
.L546:
.L553:
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
	bc1t	.L568
	nop

.L555:
	dmtc1	$0,$f0
	dmtc1	$2,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L558
	nop

	c.lt.d	$f13,$f0
	nop
	bc1t	.L569
	li	$3,-1			# 0xffffffffffffffff

.L558:
	dmtc1	$2,$f0
	jr	$31
	nop

.L568:
	c.lt.d	$f0,$f13
	nop
	bc1f	.L555
	li	$3,-1			# 0xffffffffffffffff

.L569:
	dsll	$3,$3,63
	b	.L558
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
	dsubu	$18,$5,$7
	beq	$7,$0,.L575
	daddu	$18,$4,$18

	sltu	$5,$5,$7
	bne	$5,$0,.L576
	move	$17,$6

	daddiu	$20,$6,1
	daddiu	$19,$7,-1
	ld	$21,%got_disp(memcmp)($28)
.L573:
.L572:
	sltu	$2,$18,$16
	bne	$2,$0,.L579
	move	$2,$0

	lb	$3,0($16)
	lb	$2,0($17)
	bnel	$3,$2,.L572
	daddiu	$16,$16,1

	move	$6,$19
	move	$5,$20
	move	$25,$21
	.reloc	1f,R_MIPS_JALR,memcmp
1:	jalr	$25
	daddiu	$4,$16,1

	bnel	$2,$0,.L573
	daddiu	$16,$16,1

	move	$2,$16
.L579:
.L571:
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

.L575:
	b	.L571
	move	$2,$4

.L576:
	b	.L571
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
	bc1t	.L604
	daddiu	$7,$7,%lo(%neg(%gp_rel(frexp)))

	move	$4,$0
.L583:
	ld	$6,%got_page(.LC12)($7)
	ldc1	$f0,%got_ofst(.LC12)($6)
	dmtc1	$2,$f1
	nop
	c.le.d	$f0,$f1
	nop
	bc1f	.L601
	move	$3,$0

	ld	$6,%got_page(.LC8)($7)
	b	.L585
	ldc1	$f1,%got_ofst(.LC8)($6)

.L604:
	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
	b	.L583
	li	$4,1			# 0x1

.L587:
	dmtc1	$2,$f2
	nop
	mul.d	$f2,$f2,$f1
	dmfc1	$2,$f2
	nop
.L585:
	dmtc1	$2,$f2
	nop
	c.le.d	$f0,$f2
	nop
	bc1tl	.L587
	addiu	$3,$3,1

.L588:
.L605:
	beq	$4,$0,.L592
	sw	$3,0($5)

	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
.L592:
	dmtc1	$2,$f0
	jr	$31
	nop

.L601:
	ld	$3,%got_page(.LC8)($7)
	ldc1	$f0,%got_ofst(.LC8)($3)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L605
	move	$3,$0

	dmtc1	$0,$f0
	nop
	c.eq.d	$f1,$f0
	nop
	bc1t	.L588
	ld	$6,%got_page(.LC8)($7)

	b	.L590
	ldc1	$f0,%got_ofst(.LC8)($6)

.L591:
	dmtc1	$2,$f1
	nop
	add.d	$f1,$f1,$f1
	dmfc1	$2,$f1
	nop
.L590:
	dmtc1	$2,$f1
	nop
	c.lt.d	$f1,$f0
	nop
	bc1tl	.L591
	addiu	$3,$3,-1

	b	.L588
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
	b	.L607
	move	$2,$0

.L608:
	dmult	$5,$3
	dsrl	$4,$4,1
	mflo	$3
	daddu	$2,$2,$3
	dsll	$5,$5,1
.L607:
	bne	$4,$0,.L608
	andi	$3,$4,0x1

	jr	$31
	nop

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
	li	$7,33			# 0x21
	b	.L611
	li	$3,1			# 0x1

.L615:
	sll	$3,$3,1
.L611:
	sltu	$2,$5,$4
	beq	$2,$0,.L622
	addiu	$7,$7,-1

	beql	$7,$0,.L613
	move	$2,$0

	bgezl	$5,.L615
	sll	$5,$5,1

	b	.L613
	move	$2,$0

.L622:
	b	.L613
	move	$2,$0

.L616:
	srl	$3,$3,1
.L625:
	srl	$5,$5,1
.L613:
	beq	$3,$0,.L623
	sltu	$7,$4,$5

	bnel	$7,$0,.L625
	srl	$3,$3,1

	subu	$4,$4,$5
	b	.L616
	or	$2,$2,$3

.L623:
	bne	$6,$0,.L624
	nop

.L618:
	jr	$31
	nop

.L624:
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
	beq	$3,$4,.L628
	xor	$2,$3,$4

	sll	$4,$2,8
	dsll	$4,$4,32
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	dsrl	$4,$4,32

	addiu	$2,$2,-33
.L627:
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L628:
	b	.L627
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
	beq	$2,$4,.L632
	xor	$3,$2,$4

	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	move	$4,$3

	addiu	$2,$2,-1
.L631:
	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L632:
	b	.L631
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
	b	.L635
	move	$2,$0

.L636:
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	sll	$5,$5,1
.L635:
	bne	$4,$0,.L636
	andi	$3,$4,0x1

	jr	$31
	nop

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
	bne	$3,$0,.L639
	and	$2,$6,$2

	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beq	$3,$0,.L640
	li	$7,-1			# 0xffffffffffffffff

.L639:
	move	$3,$5
	move	$7,$4
	dsll	$8,$8,3
	b	.L641
	daddu	$8,$8,$5

.L642:
	sd	$9,0($7)
	daddiu	$3,$3,8
	daddiu	$7,$7,8
.L641:
	bnel	$3,$8,.L642
	ld	$9,0($3)

	dsll	$2,$2,32
	b	.L643
	dsrl	$2,$2,32

.L644:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L643:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L644
	daddu	$3,$5,$2

	jr	$31
	nop

.L646:
	dsrl	$2,$2,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L640:
	addiu	$6,$6,-1
	bne	$6,$7,.L646
	dsll	$2,$6,32

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
	bne	$2,$0,.L650
	srl	$7,$6,1

	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	bne	$2,$0,.L658
	move	$2,$5

	b	.L651
	li	$7,-1			# 0xffffffffffffffff

.L650:
	move	$2,$5
.L658:
	move	$3,$4
	dsll	$7,$7,1
	b	.L652
	daddu	$7,$7,$5

.L653:
	sh	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,2
.L652:
	bnel	$2,$7,.L653
	lh	$8,0($2)

	andi	$2,$6,0x1
	beq	$2,$0,.L659
	addiu	$6,$6,-1

	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$5,$5,$6
	daddu	$4,$4,$6
	lb	$2,0($5)
	jr	$31
	sb	$2,0($4)

.L655:
	dsrl	$2,$2,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L651:
	addiu	$6,$6,-1
	bne	$6,$7,.L655
	dsll	$2,$6,32

.L659:
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
	bne	$3,$0,.L661
	and	$2,$6,$2

	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beq	$3,$0,.L662
	li	$7,-1			# 0xffffffffffffffff

.L661:
	move	$3,$5
	move	$7,$4
	dsll	$8,$8,2
	b	.L663
	daddu	$8,$8,$5

.L664:
	sw	$9,0($7)
	daddiu	$3,$3,4
	daddiu	$7,$7,4
.L663:
	bnel	$3,$8,.L664
	lw	$9,0($3)

	dsll	$2,$2,32
	b	.L665
	dsrl	$2,$2,32

.L666:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L665:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L666
	daddu	$3,$5,$2

	jr	$31
	nop

.L668:
	dsrl	$2,$2,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L662:
	addiu	$6,$6,-1
	bne	$6,$7,.L668
	dsll	$2,$6,32

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
	bltz	$4,.L679
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

.L679:
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
	bltz	$4,.L683
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

.L683:
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
	li	$5,16			# 0x10
	li	$6,15			# 0xf
.L688:
	beq	$2,$5,.L692
	subu	$3,$6,$2

	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,.L692
	nop

	b	.L688
	addiu	$2,$2,1

.L692:
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
.L694:
	beq	$2,$5,.L698
	sra	$3,$4,$2

	andi	$3,$3,0x1
	bne	$3,$0,.L698
	nop

	b	.L694
	addiu	$2,$2,1

.L698:
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
	bc1tl	.L706
	sub.s	$f12,$f12,$f0

	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	jr	$31
	nop

.L706:
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
	b	.L708
	li	$6,16			# 0x10

.L709:
	andi	$5,$5,0x1
	addiu	$3,$3,1
	addu	$2,$5,$2
.L708:
	bne	$3,$6,.L709
	sra	$5,$4,$3

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
	b	.L712
	li	$6,16			# 0x10

.L713:
	andi	$5,$5,0x1
	addiu	$3,$3,1
	addu	$2,$5,$2
.L712:
	bne	$3,$6,.L713
	sra	$5,$4,$3

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
	b	.L716
	move	$2,$0

.L717:
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	sll	$5,$5,1
.L716:
	bne	$4,$0,.L717
	andi	$3,$4,0x1

	jr	$31
	nop

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
	beq	$4,$0,.L723
	nop

	b	.L721
	move	$2,$0

.L722:
	subu	$3,$0,$3
	and	$3,$3,$4
	srl	$5,$5,1
	addu	$2,$3,$2
	sll	$4,$4,1
.L721:
	bne	$5,$0,.L722
	andi	$3,$5,0x1

	jr	$31
	nop

.L723:
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
	li	$7,33			# 0x21
	b	.L726
	li	$3,1			# 0x1

.L730:
	sll	$3,$3,1
.L726:
	sltu	$2,$5,$4
	beq	$2,$0,.L737
	addiu	$7,$7,-1

	beql	$7,$0,.L728
	move	$2,$0

	bgezl	$5,.L730
	sll	$5,$5,1

	b	.L728
	move	$2,$0

.L737:
	b	.L728
	move	$2,$0

.L731:
	srl	$3,$3,1
.L740:
	srl	$5,$5,1
.L728:
	beq	$3,$0,.L738
	sltu	$7,$4,$5

	bnel	$7,$0,.L740
	srl	$3,$3,1

	subu	$4,$4,$5
	b	.L731
	or	$2,$2,$3

.L738:
	bne	$6,$0,.L739
	nop

.L733:
	jr	$31
	nop

.L739:
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
	bc1t	.L744
	nop

	c.lt.s	$f13,$f12
	nop
	bc1t	.L743
	li	$2,1			# 0x1

	move	$2,$0
.L743:
	jr	$31
	andi	$2,$2,0x1

.L744:
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
	bc1t	.L749
	nop

	c.lt.d	$f13,$f12
	nop
	bc1t	.L748
	li	$2,1			# 0x1

	move	$2,$0
.L748:
	jr	$31
	andi	$2,$2,0x1

.L749:
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
	bltz	$5,.L764
	move	$7,$0

.L756:
	li	$3,33			# 0x21
	b	.L757
	move	$6,$0

.L764:
	subu	$5,$0,$5
	b	.L756
	li	$7,1			# 0x1

.L759:
	subu	$2,$0,$2
	and	$2,$2,$4
	sra	$5,$5,1
	addu	$6,$2,$6
	sll	$4,$4,1
.L757:
	beq	$5,$0,.L758
	nop

	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	bnel	$3,$0,.L759
	andi	$2,$5,0x1

.L758:
	beq	$7,$0,.L765
	move	$2,$6

	subu	$2,$0,$6
.L765:
	jr	$31
	nop

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
	bltz	$4,.L772
	move	$16,$0

.L767:
	bltzl	$5,.L773
	dsubu	$5,$0,$5

.L768:
	sll	$4,$4,0
	sll	$5,$5,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MIPS_JALR,__udivmodsi4
1:	jalr	$25
	move	$6,$0

	dsll	$2,$2,32
	beq	$16,$0,.L769
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L769:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L772:
	dsubu	$4,$0,$4
	b	.L767
	li	$16,1			# 0x1

.L773:
	b	.L768
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
	bltz	$4,.L779
	move	$16,$0

.L775:
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
	beq	$16,$0,.L776
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L776:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L779:
	dsubu	$4,$0,$4
	b	.L775
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
	li	$2,17			# 0x11
	li	$3,1			# 0x1
.L781:
	sltu	$7,$5,$4
	beql	$7,$0,.L783
	move	$2,$0

	addiu	$2,$2,-1
	beql	$2,$0,.L783
	move	$2,$0

	dsll	$7,$5,48
	dsra	$7,$7,48
	bltzl	$7,.L783
	move	$2,$0

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	b	.L781
	andi	$3,$3,0xffff

	b	.L783
	move	$2,$0

.L786:
	dsrl	$3,$3,1
.L796:
	dsrl	$5,$5,1
.L783:
	beq	$3,$0,.L794
	sltu	$7,$4,$5

	bnel	$7,$0,.L796
	dsrl	$3,$3,1

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	b	.L786
	or	$2,$2,$3

.L794:
	bne	$6,$0,.L795
	nop

.L788:
	jr	$31
	nop

.L795:
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
	li	$7,65			# 0x41
	li	$3,1			# 0x1
	li	$8,1			# 0x1
	b	.L798
	dsll	$8,$8,31

.L802:
	dsll	$3,$3,1
.L798:
	sltu	$2,$5,$4
	beq	$2,$0,.L809
	addiu	$7,$7,-1

	beq	$7,$0,.L800
	move	$2,$0

	and	$2,$5,$8
	beql	$2,$0,.L802
	dsll	$5,$5,1

	b	.L800
	move	$2,$0

.L809:
	b	.L800
	move	$2,$0

.L803:
	dsrl	$3,$3,1
.L812:
	dsrl	$5,$5,1
.L800:
	beq	$3,$0,.L810
	sltu	$7,$4,$5

	bnel	$7,$0,.L812
	dsrl	$3,$3,1

	dsubu	$4,$4,$5
	b	.L803
	or	$2,$2,$3

.L810:
	bne	$6,$0,.L811
	nop

.L805:
	jr	$31
	nop

.L811:
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
	beq	$2,$0,.L814
	nop

	sll	$4,$4,0
	sll	$4,$4,$5
	dsll	$4,$4,32
.L815:
	jr	$31
	move	$2,$4

.L814:
	beq	$5,$0,.L817
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
	b	.L815
	or	$4,$3,$2

.L817:
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
	beq	$2,$0,.L820
	move	$3,$0

	jr	$31
	dsll	$2,$5,$6

.L820:
	beql	$6,$0,.L823
	move	$2,$4

	dsll	$3,$5,$6
	dsll	$2,$4,$6
	subu	$6,$0,$6
	dsrl	$5,$5,$6
	jr	$31
	or	$2,$5,$2

.L823:
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
	beq	$2,$0,.L826
	nop

	dsra	$4,$4,32
	sra	$2,$4,31
	sra	$4,$4,$5
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dsll	$2,$2,32
	or	$4,$2,$4
.L827:
	jr	$31
	move	$2,$4

.L826:
	beq	$5,$0,.L829
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
	b	.L827
	or	$4,$3,$2

.L829:
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
	beq	$2,$0,.L832
	dsra	$2,$4,63

	dsra	$5,$4,$6
.L834:
.L837:
	jr	$31
	move	$3,$5

.L832:
	beql	$6,$0,.L837
	move	$2,$4

	dsra	$2,$4,$6
	subu	$3,$0,$6
	dsll	$4,$4,$3
	dsrl	$5,$5,$6
	b	.L834
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
	daddu	$2,$2,$3
	andi	$3,$4,0xf0
	sltu	$3,$3,1
	dsll	$3,$3,2
	li	$5,4			# 0x4
	subu	$5,$5,$3
	srl	$4,$4,$5
	daddu	$2,$2,$3
	andi	$3,$4,0xc
	sltu	$3,$3,1
	dsll	$3,$3,1
	li	$5,2			# 0x2
	subu	$6,$5,$3
	srl	$4,$4,$6
	daddu	$2,$2,$3
	andi	$3,$4,0x2
	sltu	$3,$3,1
	subu	$5,$5,$4
	mult	$3,$5
	mflo	$3
	jr	$31
	addu	$2,$3,$2

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
	bne	$2,$0,.L848
	nop

	dsra	$2,$4,32
	slt	$2,$3,$2
	bne	$2,$0,.L849
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bne	$2,$0,.L850
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$5,$4
	jr	$31
	daddiu	$2,$2,1

.L848:
	jr	$31
	move	$2,$0

.L849:
	jr	$31
	li	$2,2			# 0x2

.L850:
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
	bne	$2,$0,.L857
	slt	$4,$6,$4

	bne	$4,$0,.L858
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L859
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

.L857:
	jr	$31
	move	$2,$0

.L858:
	jr	$31
	li	$2,2			# 0x2

.L859:
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
	bne	$5,$0,.L867
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ffsti2)))

	beq	$4,$0,.L868
	move	$2,$0

	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	nop

	b	.L868
	addiu	$2,$2,65

.L867:
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	move	$4,$5

	addiu	$2,$2,1
.L868:
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
	beq	$2,$0,.L872
	nop

	dsra	$4,$4,32
	srl	$4,$4,$5
	dsll	$4,$4,32
	dsrl	$4,$4,32
.L873:
	jr	$31
	move	$2,$4

.L872:
	beq	$5,$0,.L875
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
	b	.L873
	or	$4,$3,$2

.L875:
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
	beq	$2,$0,.L878
	move	$2,$0

	dsrl	$5,$4,$6
.L880:
.L883:
	jr	$31
	move	$3,$5

.L878:
	beql	$6,$0,.L883
	move	$2,$4

	dsrl	$2,$4,$6
	subu	$3,$0,$6
	dsll	$4,$4,$3
	dsrl	$5,$5,$6
	b	.L880
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
	srl	$8,$3,16
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsrl	$3,$2,16
	andi	$2,$2,0xffff
	srl	$5,$5,16
	mult	$5,$7
	mflo	$6
	addu	$3,$6,$3
	sll	$6,$3,16
	addu	$6,$6,$2
	srl	$3,$3,16
	addu	$3,$3,$8
	mult	$5,$4
	mflo	$2
	addu	$3,$2,$3
	dsll	$3,$3,32
	dsll	$2,$6,32
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
	dsll	$6,$4,32
	dsrl	$6,$6,32
	dsll	$7,$5,32
	dsrl	$7,$7,32
	dmult	$6,$7
	mflo	$3
	dsrl	$2,$3,32
	dsrl	$4,$4,32
	dmult	$4,$7
	mflo	$7
	daddu	$2,$2,$7
	dsrl	$7,$2,32
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsrl	$5,$5,32
	dmult	$6,$5
	mflo	$6
	daddu	$2,$2,$6
	dsll	$6,$2,32
	daddu	$3,$6,$3
	dsrl	$2,$2,32
	daddu	$2,$2,$7
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
	srl	$2,$3,16
	addu	$3,$2,$3
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
	addu	$4,$3,$4
	srl	$2,$4,4
	addu	$2,$2,$4
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
	addu	$3,$2,$3
	srl	$2,$3,16
	addu	$3,$2,$3
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
	b	.L911
	ldc1	$f1,%got_ofst(.LC12)($2)

.L909:
	srl	$2,$5,31
.L915:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L910
	nop

	mul.d	$f12,$f12,$f12
.L911:
	andi	$2,$5,0x1
	bnel	$2,$0,.L909
	mul.d	$f1,$f1,$f12

	b	.L915
	srl	$2,$5,31

.L910:
	beq	$3,$0,.L916
	mov.d	$f0,$f1

	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	div.d	$f0,$f0,$f1
.L916:
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
	b	.L920
	lwc1	$f1,%got_ofst(.LC14)($2)

.L918:
	srl	$2,$5,31
.L924:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L919
	nop

	mul.s	$f12,$f12,$f12
.L920:
	andi	$2,$5,0x1
	bnel	$2,$0,.L918
	mul.s	$f1,$f1,$f12

	b	.L924
	srl	$2,$5,31

.L919:
	beq	$3,$0,.L925
	mov.s	$f0,$f1

	ld	$2,%got_page(.LC14)($4)
	lwc1	$f0,%got_ofst(.LC14)($2)
	div.s	$f0,$f0,$f1
.L925:
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
	bne	$2,$0,.L928
	nop

	dsra	$2,$4,32
	sltu	$2,$3,$2
	bne	$2,$0,.L929
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bne	$2,$0,.L930
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$5,$4
	jr	$31
	daddiu	$2,$2,1

.L928:
	jr	$31
	move	$2,$0

.L929:
	jr	$31
	li	$2,2			# 0x2

.L930:
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
	bne	$2,$0,.L937
	sltu	$4,$6,$4

	bne	$4,$0,.L938
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L939
	nop

	sltu	$2,$7,$5
	jr	$31
	daddiu	$2,$2,1

.L937:
	jr	$31
	move	$2,$0

.L938:
	jr	$31
	li	$2,2			# 0x2

.L939:
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
