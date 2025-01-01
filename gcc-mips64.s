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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	move	$3,$5
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	move	$3,$5
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sltu	$3,$5,$4
	beq	$3,$0,.L4
	move	$2,$4

	daddu	$3,$5,$6
	b	.L5
	daddu	$6,$4,$6

.L6:
	daddiu	$6,$6,-1
	lb	$7,0($3)
	sb	$7,0($6)
.L5:
	bnel	$3,$5,.L6
	daddiu	$3,$3,-1

	b	.L7
	nop

.L4:
	beq	$4,$5,.L7
	nop

	daddu	$7,$4,$6
	move	$3,$5
	b	.L8
	move	$6,$4

.L9:
	daddiu	$6,$6,1
	lb	$4,-1($3)
	sb	$4,-1($6)
.L8:
	bnel	$6,$7,.L9
	daddiu	$3,$3,1

.L7:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L11
	andi	$6,$6,0xff

.L13:
	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	daddiu	$4,$4,1
.L11:
	beq	$7,$0,.L16
	move	$2,$0

	lbu	$2,0($5)
	bne	$6,$2,.L13
	sb	$2,0($4)

	beq	$7,$0,.L14
	move	$2,$0

	daddiu	$2,$4,1
.L14:
.L16:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L18
	andi	$5,$5,0xff

.L20:
	daddiu	$6,$6,-1
.L18:
	beq	$6,$0,.L19
	nop

	lbu	$2,0($4)
	bnel	$5,$2,.L20
	daddiu	$4,$4,1

.L19:
	bne	$6,$0,.L21
	move	$2,$4

	move	$2,$0
.L21:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L24
	move	$fp,$sp

.L26:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
.L24:
	beq	$6,$0,.L29
	move	$2,$0

	lbu	$3,0($4)
	lbu	$2,0($5)
	beql	$3,$2,.L26
	daddiu	$6,$6,-1

	beq	$6,$0,.L27
	move	$2,$0

	lbu	$2,0($4)
	lbu	$3,0($5)
	subu	$2,$2,$3
.L27:
.L29:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	daddu	$6,$4,$6
	b	.L31
	move	$3,$4

.L32:
	daddiu	$3,$3,1
	lbu	$7,-1($5)
	sb	$7,-1($3)
.L31:
	bnel	$3,$6,.L32
	daddiu	$5,$5,1

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	andi	$5,$5,0xff
	b	.L34
	daddiu	$6,$6,-1

.L36:
	lbu	$3,0($3)
	bne	$5,$3,.L37
	daddiu	$7,$6,-1

	b	.L35
	daddu	$2,$4,$6

.L37:
	move	$6,$7
.L34:
	li	$3,-1			# 0xffffffffffffffff
	bne	$6,$3,.L36
	daddu	$3,$4,$6

	move	$2,$0
.L35:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	daddu	$6,$4,$6
	b	.L39
	move	$3,$4

.L40:
	daddiu	$3,$3,1
.L39:
	bnel	$3,$6,.L40
	sb	$5,0($3)

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L42
	move	$2,$4

.L43:
	daddiu	$5,$5,1
	daddiu	$2,$2,1
.L42:
	lb	$3,0($5)
	bne	$3,$0,.L43
	sb	$3,0($2)

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	andi	$5,$5,0xff
.L47:
	lb	$3,0($2)
	beq	$3,$0,.L46
	nop

	lbu	$3,0($2)
	bnel	$5,$3,.L47
	daddiu	$2,$2,1

.L46:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	lb	$2,0($4)
.L52:
	beq	$5,$2,.L51
	move	$2,$4

	daddiu	$4,$4,1
	lb	$2,-1($4)
	bnel	$2,$0,.L52
	lb	$2,0($4)

.L51:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L54
	move	$fp,$sp

.L56:
	daddiu	$5,$5,1
.L54:
	lb	$3,0($4)
	lb	$2,0($5)
	bnel	$3,$2,.L57
	lbu	$3,0($4)

	bnel	$3,$0,.L56
	daddiu	$4,$4,1

	lbu	$3,0($4)
.L57:
	lbu	$2,0($5)
	subu	$2,$3,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
.L60:
	lb	$5,0($2)
	bnel	$5,$0,.L60
	daddiu	$2,$2,1

	dsubu	$2,$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	beq	$6,$0,.L66
	move	$fp,$sp

	daddiu	$6,$6,-1
	b	.L63
	daddu	$6,$4,$6

.L65:
	daddiu	$5,$5,1
.L63:
	lbu	$2,0($4)
	beql	$2,$0,.L67
	lbu	$3,0($5)

	lbu	$2,0($5)
	beql	$2,$0,.L68
	lbu	$2,0($4)

	beql	$4,$6,.L68
	lbu	$2,0($4)

	lbu	$3,0($4)
	lbu	$2,0($5)
	beql	$3,$2,.L65
	daddiu	$4,$4,1

	lbu	$2,0($4)
.L68:
	lbu	$3,0($5)
.L67:
	b	.L62
	subu	$2,$2,$3

.L66:
	move	$2,$0
.L62:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L70
	move	$3,$4

.L71:
	sb	$2,0($5)
	lb	$2,0($3)
	sb	$2,1($5)
	daddiu	$5,$5,2
	daddiu	$3,$3,2
.L70:
	daddu	$2,$4,$6
	dsubu	$2,$2,$3
	slt	$2,$2,2
	beql	$2,$0,.L71
	lb	$2,1($3)

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	ori	$2,$4,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,26
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sltu	$2,$4,128
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	li	$2,32			# 0x20
	beq	$4,$2,.L76
	move	$fp,$sp

	xori	$4,$4,0x9
	b	.L75
	sltu	$2,$4,1

.L76:
	li	$2,1			# 0x1
.L75:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sltu	$3,$4,32
	bne	$3,$0,.L79
	li	$2,1			# 0x1

	xori	$4,$4,0x7f
	sltu	$2,$4,1
.L79:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	addiu	$2,$4,-48
	sltu	$2,$2,10
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	addiu	$2,$4,-33
	sltu	$2,$2,94
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	addiu	$2,$4,-97
	sltu	$2,$2,26
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	addiu	$2,$4,-32
	sltu	$2,$2,95
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	li	$2,32			# 0x20
	beq	$4,$2,.L88
	move	$fp,$sp

	addiu	$4,$4,-9
	b	.L87
	sltu	$2,$4,5

.L88:
	li	$2,1			# 0x1
.L87:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	addiu	$2,$4,-65
	sltu	$2,$2,26
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sltu	$3,$4,32
	bne	$3,$0,.L92
	li	$2,1			# 0x1

	addiu	$3,$4,-127
	sltu	$3,$3,33
	bne	$3,$0,.L92
	addiu	$3,$4,-8232

	sltu	$3,$3,2
	bne	$3,$0,.L92
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$2,$2,$4
	sltu	$2,$2,3
.L92:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	addiu	$2,$4,-48
	sltu	$2,$2,10
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	sltu	$2,$4,255
	beq	$2,$0,.L99
	move	$fp,$sp

	addiu	$2,$4,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	b	.L100
	sltu	$2,$2,1

.L99:
	sltu	$2,$4,8232
	bne	$2,$0,.L101
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,.L106
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$2,$4
	sltu	$2,$2,8185
	bne	$2,$0,.L106
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$2,$4
	li	$3,1048576			# 0x100000
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,.L104
	andi	$2,$4,0xfffe

	xori	$2,$2,0xfffe
	b	.L100
	sltu	$2,$0,$2

.L101:
	b	.L100
	li	$2,1			# 0x1

	b	.L100
	li	$2,1			# 0x1

.L104:
	move	$2,$0
.L100:
.L106:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	addiu	$3,$4,-48
	sltu	$3,$3,10
	bne	$3,$0,.L108
	li	$2,1			# 0x1

	ori	$4,$4,0x20
	addiu	$4,$4,-97
	sltu	$2,$4,6
.L108:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	andi	$2,$4,0x7f
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	c.un.d	$f12,$f12
	nop
	bc1t	.L115
	move	$fp,$sp

	c.un.d	$f13,$f13
	nop
	bc1t	.L120
	mov.d	$f0,$f13

	c.lt.d	$f13,$f12
	nop
	bc1f	.L119
	nop

	b	.L113
	sub.d	$f0,$f12,$f13

.L115:
	b	.L113
	mov.d	$f0,$f12

.L119:
	dmtc1	$0,$f0
.L113:
.L120:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	c.un.s	$f12,$f12
	nop
	bc1t	.L124
	move	$fp,$sp

	c.un.s	$f13,$f13
	nop
	bc1t	.L129
	mov.s	$f0,$f13

	c.lt.s	$f13,$f12
	nop
	bc1f	.L128
	nop

	b	.L122
	sub.s	$f0,$f12,$f13

.L124:
	b	.L122
	mov.s	$f0,$f12

.L128:
	mtc1	$0,$f0
.L122:
.L129:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	dmfc1	$2,$f12
	dmfc1	$3,$f13
	c.un.d	$f12,$f12
	nop
	bc1t	.L134
	move	$fp,$sp

	c.un.d	$f13,$f13
	nop
	bc1t	.L135
	mov.d	$f0,$f13

	dsrl	$5,$2,63
	dsrl	$4,$3,63
	beq	$5,$4,.L132
	nop

	bgez	$2,.L131
	mov.d	$f0,$f12

	b	.L131
	mov.d	$f0,$f13

.L132:
	c.lt.d	$f12,$f13
	nop
	bc1t	.L131
	nop

	b	.L139
	mov.d	$f0,$f12

.L134:
	b	.L131
	mov.d	$f0,$f13

.L135:
	mov.d	$f0,$f12
.L139:
.L131:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	mfc1	$2,$f12
	mfc1	$3,$f13
	c.un.s	$f12,$f12
	nop
	bc1t	.L144
	move	$fp,$sp

	c.un.s	$f13,$f13
	nop
	bc1t	.L145
	mov.s	$f0,$f13

	li	$6,-2147483648			# 0xffffffff80000000
	and	$5,$2,$6
	and	$4,$3,$6
	beq	$5,$4,.L142
	nop

	bgez	$2,.L141
	mov.s	$f0,$f12

	b	.L141
	mov.s	$f0,$f13

.L142:
	c.lt.s	$f12,$f13
	nop
	bc1t	.L141
	nop

	b	.L149
	mov.s	$f0,$f12

.L144:
	b	.L141
	mov.s	$f0,$f13

.L145:
	mov.s	$f0,$f12
.L149:
.L141:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0xd00f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	dmfc1	$19,$f13
	dmfc1	$18,$f12
	dmfc1	$17,$f15
	dmfc1	$16,$f14
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$19,$f15
	nop
	dmtc1	$18,$f14
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$fp,$sp

	bne	$2,$0,.L154
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

	bne	$2,$0,.L155
	dsrl	$2,$18,63

	dsrl	$3,$16,63
	beq	$2,$3,.L152
	ld	$25,%call16(__lttf2)($28)

	move	$5,$19
	bgez	$18,.L151
	move	$4,$18

	move	$5,$17
	b	.L151
	move	$4,$16

.L152:
	dmtc1	$17,$f15
	nop
	dmtc1	$16,$f14
	dmtc1	$19,$f13
	nop
	dmtc1	$18,$f12
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	nop

	move	$5,$17
	bltz	$2,.L151
	move	$4,$16

	b	.L159
	move	$5,$19

.L154:
	move	$5,$17
	b	.L151
	move	$4,$16

.L155:
	move	$5,$19
	b	.L151
	move	$4,$18

.L159:
	move	$4,$18
.L151:
	dmtc1	$4,$f0
	dmtc1	$5,$f2
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	dmfc1	$2,$f12
	dmfc1	$3,$f13
	c.un.d	$f12,$f12
	nop
	bc1t	.L164
	move	$fp,$sp

	c.un.d	$f13,$f13
	nop
	bc1t	.L165
	mov.d	$f0,$f13

	dsrl	$5,$2,63
	dsrl	$4,$3,63
	beq	$5,$4,.L162
	nop

	bltzl	$2,.L161
	mov.d	$f0,$f12

	b	.L161
	nop

.L162:
	c.lt.d	$f12,$f13
	nop
	bc1t	.L161
	mov.d	$f0,$f12

	b	.L169
	mov.d	$f0,$f13

.L164:
	b	.L161
	mov.d	$f0,$f13

.L165:
	mov.d	$f0,$f12
.L169:
.L161:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	mfc1	$2,$f12
	mfc1	$3,$f13
	c.un.s	$f12,$f12
	nop
	bc1t	.L174
	move	$fp,$sp

	c.un.s	$f13,$f13
	nop
	bc1t	.L175
	mov.s	$f0,$f13

	li	$6,-2147483648			# 0xffffffff80000000
	and	$5,$2,$6
	and	$4,$3,$6
	beq	$5,$4,.L172
	nop

	bltzl	$2,.L171
	mov.s	$f0,$f12

	b	.L171
	nop

.L172:
	c.lt.s	$f12,$f13
	nop
	bc1t	.L171
	mov.s	$f0,$f12

	b	.L179
	mov.s	$f0,$f13

.L174:
	b	.L171
	mov.s	$f0,$f13

.L175:
	mov.s	$f0,$f12
.L179:
.L171:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0xd00f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	dmfc1	$19,$f13
	dmfc1	$18,$f12
	dmfc1	$17,$f15
	dmfc1	$16,$f14
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$19,$f15
	nop
	dmtc1	$18,$f14
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$fp,$sp

	bne	$2,$0,.L184
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

	bne	$2,$0,.L185
	dsrl	$2,$18,63

	dsrl	$3,$16,63
	beq	$2,$3,.L182
	ld	$25,%call16(__lttf2)($28)

	move	$5,$17
	bgez	$18,.L181
	move	$4,$16

	move	$5,$19
	b	.L181
	move	$4,$18

.L182:
	dmtc1	$17,$f15
	nop
	dmtc1	$16,$f14
	dmtc1	$19,$f13
	nop
	dmtc1	$18,$f12
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	nop

	move	$5,$19
	bltz	$2,.L181
	move	$4,$18

	b	.L189
	move	$5,$17

.L184:
	move	$5,$17
	b	.L181
	move	$4,$16

.L185:
	move	$5,$19
	b	.L181
	move	$4,$18

.L189:
	move	$4,$16
.L181:
	dmtc1	$4,$f0
	dmtc1	$5,$f2
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	lui	$6,%hi(%neg(%gp_rel(l64a)))
	daddu	$6,$6,$25
	daddiu	$6,$6,%lo(%neg(%gp_rel(l64a)))
	sll	$4,$4,0
	ld	$5,%got_page(s.0)($6)
	b	.L191
	daddiu	$5,$5,%got_ofst(s.0)

.L192:
	ld	$3,%got_page(digits)($6)
	daddiu	$3,$3,%got_ofst(digits)
	daddu	$2,$2,$3
	lb	$2,0($2)
	sb	$2,0($5)
	daddiu	$5,$5,1
	srl	$4,$4,6
.L191:
	bne	$4,$0,.L192
	andi	$2,$4,0x3f

	sb	$0,0($5)
	ld	$2,%got_page(s.0)($6)
	daddiu	$2,$2,%got_ofst(s.0)
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	lui	$3,%hi(%neg(%gp_rel(srand)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(srand)))
	addiu	$4,$4,-1
	dsll	$4,$4,32
	dsrl	$4,$4,32
	ld	$2,%got_page(seed)($3)
	sd	$4,%got_ofst(seed)($2)
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	dsrl	$2,$2,33
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	bne	$5,$0,.L196
	move	$fp,$sp

	sd	$0,8($4)
	b	.L195
	sd	$0,0($4)

.L196:
	ld	$2,0($5)
	sd	$2,0($4)
	sd	$5,8($4)
	sd	$4,0($5)
	ld	$2,0($4)
	bnel	$2,$0,.L195
	sd	$4,8($2)

.L195:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	ld	$2,0($4)
	beq	$2,$0,.L199
	move	$fp,$sp

	ld	$3,8($4)
	sd	$3,8($2)
.L199:
	ld	$2,8($4)
	beq	$2,$0,.L198
	nop

	ld	$3,0($4)
	sd	$3,0($2)
.L198:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
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
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	move	$19,$4
	move	$22,$5
	move	$23,$6
	move	$18,$7
	move	$20,$8
	ld	$21,0($6)
	move	$17,$5
	b	.L202
	move	$16,$0

.L205:
	move	$25,$20
	jalr	$25
	move	$4,$19

	bne	$2,$0,.L203
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L204
	daddu	$2,$22,$2

.L203:
	daddiu	$16,$16,1
.L202:
	bne	$16,$21,.L205
	move	$5,$17

	daddiu	$2,$21,1
	sd	$2,0($23)
	dmult	$18,$21
	mflo	$4
	move	$6,$18
	move	$5,$19
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$22,$4

.L204:
	move	$sp,$fp
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
	.globl	lfind
	.set	nomips16
	.set	nomicromips
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	$fp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0xd07f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$fp,64($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	move	$20,$4
	move	$22,$5
	move	$18,$7
	move	$19,$8
	ld	$21,0($6)
	move	$17,$5
	b	.L207
	move	$16,$0

.L210:
	move	$25,$19
	jalr	$25
	move	$4,$20

	bne	$2,$0,.L208
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L209
	daddu	$2,$22,$2

.L208:
	daddiu	$16,$16,1
.L207:
	bne	$16,$21,.L210
	move	$5,$17

	move	$2,$0
.L209:
	move	$sp,$fp
	ld	$31,72($sp)
	ld	$fp,64($sp)
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
	.end	lfind
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.set	nomips16
	.set	nomicromips
	.ent	abs
	.type	abs, @function
abs:
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sra	$2,$4,31
	xor	$4,$2,$4
	subu	$2,$4,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(atoi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoi)))
	move	$16,$4
.L214:
	ld	$25,%got_disp(isspace)($28)
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnel	$2,$0,.L214
	daddiu	$16,$16,1

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L220
	move	$4,$0

	li	$3,45			# 0x2d
	bnel	$2,$3,.L223
	move	$3,$0

	li	$4,1			# 0x1
.L220:
	daddiu	$16,$16,1
	b	.L217
	move	$3,$0

.L218:
	addu	$2,$2,$3
	sll	$2,$2,1
	daddiu	$16,$16,1
	lb	$3,-1($16)
	addiu	$3,$3,-48
	subu	$3,$2,$3
.L217:
	lb	$2,0($16)
.L223:
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnel	$2,$0,.L218
	sll	$2,$3,2

	bne	$4,$0,.L219
	move	$2,$3

	subu	$2,$0,$3
.L219:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
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
	.frame	$fp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(atol)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atol)))
	move	$16,$4
.L226:
	ld	$25,%got_disp(isspace)($28)
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnel	$2,$0,.L226
	daddiu	$16,$16,1

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L232
	move	$4,$0

	li	$3,45			# 0x2d
	bnel	$2,$3,.L235
	move	$3,$0

	li	$4,1			# 0x1
.L232:
	daddiu	$16,$16,1
	b	.L229
	move	$3,$0

.L230:
	daddu	$2,$2,$3
	dsll	$2,$2,1
	daddiu	$16,$16,1
	lb	$3,-1($16)
	addiu	$3,$3,-48
	dsubu	$3,$2,$3
.L229:
	lb	$2,0($16)
.L235:
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnel	$2,$0,.L230
	dsll	$2,$3,2

	bne	$4,$0,.L231
	move	$2,$3

	dsubu	$2,$0,$3
.L231:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
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
	.frame	$fp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(atoll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoll)))
	move	$16,$4
.L238:
	ld	$25,%got_disp(isspace)($28)
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnel	$2,$0,.L238
	daddiu	$16,$16,1

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L244
	move	$4,$0

	li	$3,45			# 0x2d
	bnel	$2,$3,.L247
	move	$3,$0

	li	$4,1			# 0x1
.L244:
	daddiu	$16,$16,1
	b	.L241
	move	$3,$0

.L242:
	daddu	$2,$2,$3
	dsll	$2,$2,1
	daddiu	$16,$16,1
	lb	$3,-1($16)
	addiu	$3,$3,-48
	dsubu	$3,$2,$3
.L241:
	lb	$2,0($16)
.L247:
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnel	$2,$0,.L242
	dsll	$2,$3,2

	bne	$4,$0,.L243
	move	$2,$3

	dsubu	$2,$0,$3
.L243:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
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
	.frame	$fp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0xd03f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$fp,64($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	move	$fp,$sp
	move	$21,$4
	move	$19,$5
	move	$16,$6
	move	$18,$7
	b	.L249
	move	$20,$8

.L253:
	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$5,$17
	move	$25,$20
	jalr	$25
	move	$4,$21

	bgez	$2,.L250
	nop

	b	.L249
	dsrl	$16,$16,1

.L250:
	blez	$2,.L254
	daddu	$19,$17,$18

	dsrl	$2,$16,1
	daddiu	$16,$16,-1
	dsubu	$16,$16,$2
.L249:
	bnel	$16,$0,.L253
	dsrl	$2,$16,1

	b	.L252
	move	$2,$0

.L254:
	move	$2,$17
.L252:
	move	$sp,$fp
	ld	$31,72($sp)
	ld	$fp,64($sp)
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
	.globl	bsearch_r
	.set	nomips16
	.set	nomicromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	$fp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0xd07f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$fp,64($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	move	$22,$4
	move	$19,$7
	move	$21,$8
	move	$20,$9
	sll	$16,$6,0
	b	.L256
	move	$18,$5

.L259:
	dmult	$2,$19
	mflo	$17
	daddu	$17,$18,$17
	move	$6,$20
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	beql	$2,$0,.L260
	move	$2,$17

	blezl	$2,.L256
	sra	$16,$16,1

	daddu	$18,$17,$19
	addiu	$16,$16,-1
	sra	$16,$16,1
.L256:
	bnel	$16,$0,.L259
	sra	$2,$16,1

	move	$2,$0
.L260:
	move	$sp,$fp
	ld	$31,72($sp)
	ld	$fp,64($sp)
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
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.set	nomips16
	.set	nomicromips
	.ent	div
	.type	div, @function
div:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
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
	move	$sp,$fp
	ld	$fp,24($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsra	$2,$4,63
	xor	$4,$2,$4
	dsubu	$2,$4,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
	move	$sp,$fp
	ld	$fp,24($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsra	$2,$4,63
	xor	$4,$2,$4
	dsubu	$2,$4,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
	move	$sp,$fp
	ld	$fp,24($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsra	$2,$4,63
	xor	$4,$2,$4
	dsubu	$2,$4,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
	move	$sp,$fp
	ld	$fp,24($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
.L271:
	lw	$2,0($4)
	beq	$2,$0,.L274
	nop

	bnel	$5,$2,.L271
	daddiu	$4,$4,4

	lw	$2,0($4)
.L274:
	bne	$2,$0,.L272
	move	$2,$4

	move	$2,$0
.L272:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L276
	move	$fp,$sp

.L278:
	daddiu	$5,$5,4
.L276:
	lw	$3,0($4)
	lw	$2,0($5)
	bnel	$3,$2,.L281
	slt	$3,$3,$2

	beq	$3,$0,.L281
	slt	$3,$3,$2

	bnel	$2,$0,.L278
	daddiu	$4,$4,4

	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$3,$2
.L281:
	bne	$3,$0,.L279
	li	$2,-1			# 0xffffffffffffffff

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3,$2
.L279:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	move	$3,$4
.L283:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$6,-4($5)
	bne	$6,$0,.L283
	sw	$6,-4($3)

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
.L286:
	lw	$3,0($2)
	bnel	$3,$0,.L286
	daddiu	$2,$2,4

	dsubu	$2,$2,$4
	dsra	$2,$2,2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L288
	move	$fp,$sp

.L290:
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L288:
	beq	$6,$0,.L294
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L289
	nop

	beq	$3,$0,.L289
	nop

	bnel	$2,$0,.L290
	daddiu	$6,$6,-1

.L289:
	beq	$6,$0,.L291
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$3,$2
	bne	$3,$0,.L291
	li	$2,-1			# 0xffffffffffffffff

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3,$2
.L291:
.L294:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L296
	move	$fp,$sp

.L298:
	daddiu	$4,$4,4
.L296:
	beq	$6,$0,.L297
	nop

	lw	$2,0($4)
	bnel	$5,$2,.L298
	daddiu	$6,$6,-1

.L297:
	bne	$6,$0,.L299
	move	$2,$4

	move	$2,$0
.L299:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L302
	move	$fp,$sp

.L304:
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L302:
	beq	$6,$0,.L308
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	beql	$3,$2,.L304
	daddiu	$6,$6,-1

	beq	$6,$0,.L305
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$3,$2
	bne	$3,$0,.L305
	li	$2,-1			# 0xffffffffffffffff

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3,$2
.L305:
.L308:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	b	.L310
	move	$3,$4

.L311:
	daddiu	$3,$3,4
	lw	$7,-4($5)
	sw	$7,-4($3)
.L310:
	daddiu	$6,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	bnel	$6,$7,.L311
	daddiu	$5,$5,4

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	beq	$4,$5,.L313
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$3,$3,$4
	beq	$3,$0,.L318
	move	$3,$2

	daddu	$5,$5,$4
	daddu	$6,$2,$4
	b	.L315
	daddiu	$4,$2,-4

.L316:
	lw	$3,0($5)
	sw	$3,0($6)
.L315:
	daddiu	$6,$6,-4
	bne	$6,$4,.L316
	daddiu	$5,$5,-4

	b	.L313
	nop

.L317:
	daddiu	$3,$3,4
	lw	$4,-4($5)
	sw	$4,-4($3)
.L318:
	daddiu	$6,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	bnel	$6,$7,.L317
	daddiu	$5,$5,4

.L313:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	b	.L320
	move	$3,$4

.L321:
	sw	$5,-4($3)
.L320:
	daddiu	$6,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	bnel	$6,$7,.L321
	daddiu	$3,$3,4

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	sltu	$2,$4,$5
	beq	$2,$0,.L323
	move	$fp,$sp

	daddu	$2,$4,$6
	b	.L324
	daddu	$5,$5,$6

.L325:
	daddiu	$5,$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
.L324:
	bnel	$2,$4,.L325
	daddiu	$2,$2,-1

	b	.L322
	nop

.L323:
	beq	$4,$5,.L322
	nop

	daddu	$6,$5,$6
	b	.L327
	move	$2,$4

.L328:
	daddiu	$5,$5,1
	lb	$3,-1($2)
	sb	$3,-1($5)
.L327:
	bnel	$5,$6,.L328
	daddiu	$2,$2,1

.L322:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsll	$2,$4,$5
	subu	$5,$0,$5
	dsrl	$4,$4,$5
	or	$2,$4,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsrl	$2,$4,$5
	subu	$5,$0,$5
	dsll	$4,$4,$5
	or	$2,$4,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sll	$2,$4,$5
	subu	$5,$0,$5
	srl	$4,$4,$5
	or	$2,$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	srl	$2,$4,$5
	subu	$5,$0,$5
	sll	$4,$4,$5
	or	$2,$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsll	$2,$4,$5
	subu	$5,$0,$5
	dsrl	$4,$4,$5
	or	$2,$4,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsrl	$2,$4,$5
	subu	$5,$0,$5
	dsll	$4,$4,$5
	or	$2,$4,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sll	$3,$4,$5
	li	$2,16			# 0x10
	subu	$2,$2,$5
	srl	$2,$4,$2
	or	$2,$2,$3
	andi	$2,$2,0xffff
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	srl	$3,$4,$5
	li	$2,16			# 0x10
	subu	$2,$2,$5
	sll	$2,$4,$2
	or	$2,$2,$3
	andi	$2,$2,0xffff
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sll	$3,$4,$5
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$2,$4,$2
	or	$2,$2,$3
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	srl	$3,$4,$5
	li	$2,8			# 0x8
	subu	$2,$2,$5
	sll	$2,$4,$2
	or	$2,$2,$3
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsrl	$2,$4,8
	andi	$4,$4,0x00ff
	dsll	$4,$4,8
	or	$2,$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	or	$2,$3,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L343
	move	$2,$0

.L346:
	andi	$3,$3,0x1
	bne	$3,$0,.L345
	addiu	$2,$2,1

.L343:
	li	$3,32			# 0x20
	bne	$2,$3,.L346
	srl	$3,$4,$2

	move	$2,$0
.L345:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	beq	$4,$0,.L351
	move	$fp,$sp

	b	.L349
	li	$2,1			# 0x1

.L350:
	addiu	$2,$2,1
.L349:
	andi	$3,$4,0x1
	beql	$3,$0,.L350
	sra	$4,$4,1

	b	.L348
	nop

.L351:
	move	$2,$0
.L348:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	lui	$4,%hi(%neg(%gp_rel(gl_isinff)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(gl_isinff)))
	ld	$3,%got_page(.LC0)($4)
	lwc1	$f0,%got_ofst(.LC0)($3)
	c.lt.s	$f12,$f0
	nop
	bc1t	.L353
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC1)($4)
	lwc1	$f0,%got_ofst(.LC1)($3)
	c.lt.s	$f0,$f12
	nop
	bc1fl	.L353
	move	$2,$0

.L353:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	lui	$4,%hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(gl_isinfd)))
	ld	$3,%got_page(.LC2)($4)
	ldc1	$f0,%got_ofst(.LC2)($3)
	c.lt.d	$f12,$f0
	nop
	bc1t	.L359
	li	$2,1			# 0x1

	ld	$3,%got_page(.LC3)($4)
	ldc1	$f0,%got_ofst(.LC3)($3)
	c.lt.d	$f0,$f12
	nop
	bc1fl	.L359
	move	$2,$0

.L359:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0xd0030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$fp,32($sp)
	sd	$28,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	dmfc1	$17,$f13
	dmfc1	$16,$f12
	ld	$25,%call16(__lttf2)($28)
	ld	$2,%got_page(.LC4)($28)
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC4)($2)

	bltz	$2,.L365
	li	$3,1			# 0x1

	ld	$25,%call16(__gttf2)($28)
	ld	$2,%got_page(.LC5)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	dmtc1	$17,$f13
	nop
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__gttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC5)($2)

	slt	$3,$0,$2
.L365:
	move	$2,$3
	move	$sp,$fp
	ld	$31,40($sp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
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
	.frame	$fp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
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
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	lui	$3,%hi(%neg(%gp_rel(ldexpf)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexpf)))
	c.un.s	$f12,$f12
	nop
	bc1t	.L372
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$f12,$f1
	nop
	bc1t	.L372
	nop

	bgez	$5,.L376
	ld	$2,%got_page(.LC7)($3)

	ld	$2,%got_page(.LC6)($3)
	b	.L375
	lwc1	$f1,%got_ofst(.LC6)($2)

.L376:
	lwc1	$f1,%got_ofst(.LC7)($2)
.L375:
	andi	$2,$5,0x1
	bnel	$2,$0,.L374
	mul.s	$f0,$f0,$f1

.L374:
	srl	$2,$5,31
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L372
	nop

	b	.L375
	mul.s	$f1,$f1,$f1

.L372:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	lui	$3,%hi(%neg(%gp_rel(ldexp)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexp)))
	c.un.d	$f12,$f12
	nop
	bc1t	.L378
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$f12,$f1
	nop
	bc1t	.L378
	nop

	bgez	$5,.L382
	ld	$2,%got_page(.LC9)($3)

	ld	$2,%got_page(.LC8)($3)
	b	.L381
	ldc1	$f1,%got_ofst(.LC8)($2)

.L382:
	ldc1	$f1,%got_ofst(.LC9)($2)
.L381:
	andi	$2,$5,0x1
	bnel	$2,$0,.L380
	mul.d	$f0,$f0,$f1

.L380:
	srl	$2,$5,31
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L378
	nop

	b	.L381
	mul.d	$f1,$f1,$f1

.L378:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0xd01f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	dmfc1	$19,$f13
	dmfc1	$18,$f12
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$19,$f15
	nop
	dmtc1	$18,$f14
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	move	$20,$6

	bne	$2,$0,.L384
	ld	$25,%call16(__addtf3)($28)

	dmtc1	$19,$f15
	nop
	dmtc1	$18,$f14
	dmtc1	$19,$f13
	nop
	dmtc1	$18,$f12
	.reloc	1f,R_MIPS_JALR,__addtf3
1:	jalr	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	ld	$25,%call16(__netf2)($28)
	dmtc1	$3,$f15
	nop
	dmtc1	$4,$f14
	dmtc1	$19,$f13
	nop
	dmtc1	$18,$f12
	.reloc	1f,R_MIPS_JALR,__netf2
1:	jalr	$25
	nop

	beq	$2,$0,.L384
	nop

	bgez	$20,.L389
	ld	$2,%got_page(.LC11)($28)

	ld	$2,%got_page(.LC10)($28)
	ld	$17,%got_ofst(.LC10+8)($2)
	b	.L388
	ld	$16,%got_ofst(.LC10)($2)

.L389:
	ld	$17,%got_ofst(.LC11+8)($2)
	ld	$16,%got_ofst(.LC11)($2)
.L388:
	andi	$2,$20,0x1
	beq	$2,$0,.L391
	srl	$2,$20,31

	ld	$25,%call16(__multf3)($28)
	dmtc1	$17,$f15
	nop
	dmtc1	$16,$f14
	dmtc1	$19,$f13
	nop
	dmtc1	$18,$f12
	.reloc	1f,R_MIPS_JALR,__multf3
1:	jalr	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	nop
	move	$19,$3
	move	$18,$4
	srl	$2,$20,31
.L391:
	addu	$20,$2,$20
	sra	$20,$20,1
	beq	$20,$0,.L384
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

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	nop
	move	$17,$3
	b	.L388
	move	$16,$4

.L384:
	dmtc1	$18,$f0
	dmtc1	$19,$f2
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	daddu	$6,$4,$6
	b	.L393
	move	$3,$4

.L394:
	lb	$8,-1($5)
	daddiu	$3,$3,1
	lb	$7,-1($3)
	xor	$7,$7,$8
	sb	$7,-1($3)
.L393:
	bnel	$3,$6,.L394
	daddiu	$5,$5,1

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0xd0070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$fp,32($sp)
	sd	$28,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(strncat)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strncat)))
	move	$18,$4
	move	$17,$5
	ld	$25,%got_disp(strlen)($28)
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	move	$16,$6

	b	.L396
	daddu	$2,$18,$2

.L398:
	daddiu	$17,$17,1
	daddiu	$2,$2,1
	daddiu	$16,$16,-1
.L396:
	beql	$16,$0,.L399
	sb	$0,0($2)

	lb	$3,0($17)
	bne	$3,$0,.L398
	sb	$3,0($2)

	beql	$16,$0,.L399
	sb	$0,0($2)

.L399:
	move	$2,$18
	move	$sp,$fp
	ld	$31,40($sp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
.L403:
	beq	$2,$5,.L402
	daddu	$3,$4,$2

	lb	$3,0($3)
	bnel	$3,$0,.L403
	daddiu	$2,$2,1

.L402:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L405
	move	$fp,$sp

.L407:
	lb	$7,-1($3)
	lb	$6,0($4)
	bnel	$7,$6,.L411
	lb	$6,0($3)

	b	.L409
	move	$2,$4

.L410:
	lb	$6,0($3)
.L411:
	bnel	$6,$0,.L407
	daddiu	$3,$3,1

	daddiu	$4,$4,1
.L405:
	lb	$2,0($4)
	bnel	$2,$0,.L410
	move	$3,$5

.L409:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
	lb	$3,0($4)
.L416:
	beql	$5,$3,.L413
	move	$2,$4

.L413:
	daddiu	$4,$4,1
	lb	$3,-1($4)
	bnel	$3,$0,.L416
	lb	$3,0($4)

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0xd00f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(strstr)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strstr)))
	move	$16,$4
	move	$17,$5
	ld	$25,%got_disp(strlen)($28)
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	move	$4,$5

	beq	$2,$0,.L421
	move	$18,$2

	b	.L419
	lb	$19,0($17)

.L420:
	move	$6,$18
	move	$5,$17
	ld	$25,%got_disp(strncmp)($28)
	.reloc	1f,R_MIPS_JALR,strncmp
1:	jalr	$25
	move	$4,$16

	beq	$2,$0,.L422
	move	$2,$16

	daddiu	$16,$16,1
.L419:
	move	$5,$19
	ld	$25,%got_disp(strchr)($28)
	.reloc	1f,R_MIPS_JALR,strchr
1:	jalr	$25
	move	$4,$16

	bne	$2,$0,.L420
	move	$16,$2

	b	.L418
	move	$2,$0

.L421:
	move	$2,$16
.L422:
.L418:
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	dmfc1	$2,$f12
	dmtc1	$0,$f0
	nop
	c.lt.d	$f12,$f0
	nop
	bc1f	.L437
	move	$fp,$sp

	c.lt.d	$f0,$f13
	nop
	bc1t	.L436
	li	$3,-1			# 0xffffffffffffffff

	dmtc1	$0,$f0
.L437:
	dmtc1	$2,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L427
	nop

	c.lt.d	$f13,$f0
	nop
	bc1f	.L427
	li	$3,-1			# 0xffffffffffffffff

.L436:
	dsll	$3,$3,63
	xor	$2,$2,$3
.L427:
	dmtc1	$2,$f0
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0xd00f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(memmem)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(memmem)))
	move	$16,$4
	move	$17,$6
	move	$19,$7
	dsubu	$18,$5,$7
	beq	$7,$0,.L443
	daddu	$18,$4,$18

	sltu	$5,$5,$7
	bnel	$5,$0,.L447
	move	$2,$0

	b	.L446
	sltu	$2,$18,$16

.L442:
	lb	$2,0($17)
	bnel	$3,$2,.L448
	daddiu	$16,$16,1

	daddiu	$6,$19,-1
	daddiu	$5,$17,1
	ld	$25,%got_disp(memcmp)($28)
	.reloc	1f,R_MIPS_JALR,memcmp
1:	jalr	$25
	daddiu	$4,$16,1

	beq	$2,$0,.L445
	move	$2,$16

	daddiu	$16,$16,1
.L448:
	sltu	$2,$18,$16
.L446:
	beql	$2,$0,.L442
	lb	$3,0($16)

	b	.L439
	move	$2,$0

.L443:
	move	$2,$4
.L445:
.L439:
.L447:
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

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
	.frame	$fp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(mempcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$16,$6

	daddu	$2,$2,$16
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	lui	$7,%hi(%neg(%gp_rel(frexp)))
	daddu	$7,$7,$25
	dmfc1	$2,$f12
	dmtc1	$0,$f0
	nop
	c.lt.d	$f12,$f0
	nop
	bc1f	.L467
	daddiu	$7,$7,%lo(%neg(%gp_rel(frexp)))

	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
	b	.L451
	li	$6,1			# 0x1

.L467:
	move	$6,$0
.L451:
	ld	$4,%got_page(.LC12)($7)
	ldc1	$f0,%got_ofst(.LC12)($4)
	dmtc1	$2,$f1
	nop
	c.le.d	$f0,$f1
	nop
	bc1t	.L472
	move	$3,$0

	b	.L468
	ld	$3,%got_page(.LC8)($7)

.L455:
	ld	$4,%got_page(.LC8)($7)
	ldc1	$f0,%got_ofst(.LC8)($4)
	dmtc1	$2,$f1
	nop
	mul.d	$f0,$f1,$f0
	dmfc1	$2,$f0
	ld	$4,%got_page(.LC12)($7)
.L472:
	ldc1	$f0,%got_ofst(.LC12)($4)
	dmtc1	$2,$f1
	nop
	c.le.d	$f0,$f1
	nop
	bc1tl	.L455
	addiu	$3,$3,1

	b	.L470
	sw	$3,0($5)

.L468:
	ldc1	$f0,%got_ofst(.LC8)($3)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L469
	move	$3,$0

	dmtc1	$0,$f0
	nop
	c.eq.d	$f1,$f0
	nop
	bc1tl	.L470
	sw	$3,0($5)

	b	.L471
	ld	$4,%got_page(.LC8)($7)

.L459:
	dmtc1	$2,$f0
	nop
	add.d	$f0,$f0,$f0
	dmfc1	$2,$f0
	ld	$4,%got_page(.LC8)($7)
.L471:
	ldc1	$f0,%got_ofst(.LC8)($4)
	dmtc1	$2,$f1
	nop
	c.lt.d	$f1,$f0
	nop
	bc1tl	.L459
	addiu	$3,$3,-1

	b	.L470
	sw	$3,0($5)

.L469:
	sw	$3,0($5)
.L470:
	beq	$6,$0,.L460
	li	$3,-1			# 0xffffffffffffffff

	dsll	$3,$3,63
	xor	$2,$2,$3
.L460:
	dmtc1	$2,$f0
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L474
	move	$2,$0

.L476:
	bnel	$3,$0,.L475
	daddu	$2,$2,$5

.L475:
	dsll	$5,$5,1
	dsrl	$4,$4,1
.L474:
	bne	$4,$0,.L476
	andi	$3,$4,0x1

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	li	$7,33			# 0x21
	b	.L478
	li	$3,1			# 0x1

.L480:
	sll	$3,$3,1
.L478:
	sltu	$2,$5,$4
	beq	$2,$0,.L485
	addiu	$7,$7,-1

	beql	$7,$0,.L486
	move	$2,$0

	bgezl	$5,.L480
	sll	$5,$5,1

	b	.L482
	move	$2,$0

.L483:
	bnel	$7,$0,.L488
	srl	$3,$3,1

	subu	$4,$4,$5
	or	$2,$2,$3
	srl	$3,$3,1
.L488:
	b	.L482
	srl	$5,$5,1

.L485:
	move	$2,$0
.L486:
.L482:
	bne	$3,$0,.L483
	sltu	$7,$4,$5

	bnel	$6,$0,.L484
	move	$2,$4

.L484:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__clrsbqi2)))
	daddu	$28,$28,$25
	bgez	$4,.L490
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbqi2)))

	nor	$4,$0,$4
	dsll	$4,$4,56
	dsra	$4,$4,56
.L490:
	beq	$4,$0,.L492
	sll	$4,$4,8

	dsll	$4,$4,32
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	dsrl	$4,$4,32

	b	.L491
	addiu	$2,$2,-33

.L492:
	li	$2,7			# 0x7
.L491:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__clrsbdi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbdi2)))
	dsra	$2,$4,63
	beq	$2,$4,.L496
	xor	$3,$2,$4

	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	move	$4,$3

	b	.L495
	addiu	$2,$2,-1

.L496:
	li	$2,63			# 0x3f
.L495:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L498
	move	$2,$0

.L500:
	bnel	$3,$0,.L499
	addu	$2,$2,$5

.L499:
	srl	$4,$4,1
	sll	$5,$5,1
.L498:
	bne	$4,$0,.L500
	andi	$3,$4,0x1

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	srl	$8,$6,3
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$3,$4,$5
	bne	$3,$0,.L502
	and	$2,$6,$2

	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beql	$3,$0,.L510
	addiu	$6,$6,-1

.L502:
	move	$3,$5
	move	$7,$4
	dsll	$8,$8,3
	b	.L504
	daddu	$8,$8,$5

.L505:
	sd	$9,0($7)
	daddiu	$3,$3,8
	daddiu	$7,$7,8
.L504:
	bnel	$3,$8,.L505
	ld	$9,0($3)

	dsll	$2,$2,32
	b	.L506
	dsrl	$2,$2,32

.L507:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L506:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L507
	daddu	$3,$5,$2

	b	.L501
	nop

.L509:
	dsrl	$2,$2,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	addiu	$6,$6,-1
.L510:
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L509
	dsll	$2,$6,32

.L501:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sltu	$2,$4,$5
	bne	$2,$0,.L512
	srl	$7,$6,1

	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	beql	$2,$0,.L518
	addiu	$6,$6,-1

.L512:
	move	$2,$5
	move	$3,$4
	dsll	$7,$7,1
	b	.L514
	daddu	$7,$7,$5

.L515:
	sh	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,2
.L514:
	bnel	$2,$7,.L515
	lh	$8,0($2)

	andi	$2,$6,0x1
	beq	$2,$0,.L511
	nop

	addiu	$6,$6,-1
	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$5,$5,$6
	daddu	$4,$4,$6
	lb	$2,0($5)
	b	.L511
	sb	$2,0($4)

.L517:
	dsrl	$2,$2,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	addiu	$6,$6,-1
.L518:
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L517
	dsll	$2,$6,32

.L511:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	srl	$8,$6,2
	li	$2,-4			# 0xfffffffffffffffc
	sltu	$3,$4,$5
	bne	$3,$0,.L520
	and	$2,$6,$2

	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beql	$3,$0,.L528
	addiu	$6,$6,-1

.L520:
	move	$3,$5
	move	$7,$4
	dsll	$8,$8,2
	b	.L522
	daddu	$8,$8,$5

.L523:
	sw	$9,0($7)
	daddiu	$3,$3,4
	daddiu	$7,$7,4
.L522:
	bnel	$3,$8,.L523
	lw	$9,0($3)

	dsll	$2,$2,32
	b	.L524
	dsrl	$2,$2,32

.L525:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L524:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L525
	daddu	$3,$5,$2

	b	.L519
	nop

.L527:
	dsrl	$2,$2,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	addiu	$6,$6,-1
.L528:
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L527
	dsll	$2,$6,32

.L519:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dmtc1	$4,$f0
	nop
	cvt.d.l	$f0,$f0
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dmtc1	$4,$f0
	nop
	cvt.s.l	$f0,$f0
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	bltz	$4,.L534
	move	$fp,$sp

	dmtc1	$4,$f0
	b	.L533
	cvt.d.l	$f0,$f0

.L534:
	andi	$2,$4,0x1
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	nop
	cvt.d.l	$f0,$f0
	add.d	$f0,$f0,$f0
.L533:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	bltz	$4,.L537
	move	$fp,$sp

	dmtc1	$4,$f0
	b	.L536
	cvt.s.l	$f0,$f0

.L537:
	andi	$2,$4,0x1
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	nop
	cvt.s.l	$f0,$f0
	add.s	$f0,$f0,$f0
.L536:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	divu	$0,$4,$5
	teq	$5,$0,7
	mfhi	$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L540
	move	$2,$0

.L542:
	subu	$3,$3,$2
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,.L541
	nop

	addiu	$2,$2,1
.L540:
	li	$3,16			# 0x10
	bne	$2,$3,.L542
	li	$3,15			# 0xf

.L541:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L544
	move	$2,$0

.L546:
	andi	$3,$3,0x1
	bne	$3,$0,.L545
	nop

	addiu	$2,$2,1
.L544:
	li	$3,16			# 0x10
	bne	$2,$3,.L546
	sra	$3,$4,$2

.L545:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	lui	$4,%hi(%neg(%gp_rel(__fixunssfsi)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__fixunssfsi)))
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	c.le.s	$f0,$f12
	nop
	bc1f	.L552
	move	$fp,$sp

	sub.s	$f12,$f12,$f0
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	li	$3,32768			# 0x8000
	b	.L550
	daddu	$2,$2,$3

.L552:
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
.L550:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
	b	.L554
	move	$3,$0

.L556:
	andi	$5,$5,0x1
	bnel	$5,$0,.L555
	addiu	$2,$2,1

.L555:
	addiu	$3,$3,1
.L554:
	li	$5,16			# 0x10
	bnel	$3,$5,.L556
	sra	$5,$4,$3

	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
	b	.L558
	move	$3,$0

.L560:
	andi	$5,$5,0x1
	bnel	$5,$0,.L559
	addiu	$2,$2,1

.L559:
	addiu	$3,$3,1
.L558:
	li	$5,16			# 0x10
	bnel	$3,$5,.L560
	sra	$5,$4,$3

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L562
	move	$2,$0

.L564:
	bnel	$3,$0,.L563
	addu	$2,$2,$5

.L563:
	srl	$4,$4,1
	sll	$5,$5,1
.L562:
	bne	$4,$0,.L564
	andi	$3,$4,0x1

	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	beq	$4,$0,.L570
	move	$fp,$sp

	b	.L567
	move	$2,$0

.L569:
	bnel	$3,$0,.L568
	addu	$2,$2,$4

.L568:
	sll	$4,$4,1
	srl	$5,$5,1
.L567:
	bne	$5,$0,.L569
	andi	$3,$5,0x1

	b	.L566
	nop

.L570:
	move	$2,$0
.L566:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	li	$7,33			# 0x21
	b	.L572
	li	$3,1			# 0x1

.L574:
	sll	$3,$3,1
.L572:
	sltu	$2,$5,$4
	beq	$2,$0,.L579
	addiu	$7,$7,-1

	beql	$7,$0,.L580
	move	$2,$0

	bgezl	$5,.L574
	sll	$5,$5,1

	b	.L576
	move	$2,$0

.L577:
	bnel	$7,$0,.L582
	srl	$3,$3,1

	subu	$4,$4,$5
	or	$2,$2,$3
	srl	$3,$3,1
.L582:
	b	.L576
	srl	$5,$5,1

.L579:
	move	$2,$0
.L580:
.L576:
	bne	$3,$0,.L577
	sltu	$7,$4,$5

	bnel	$6,$0,.L578
	move	$2,$4

.L578:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	c.lt.s	$f12,$f13
	nop
	bc1t	.L585
	move	$fp,$sp

	c.lt.s	$f13,$f12
	nop
	bc1t	.L586
	move	$2,$0

	b	.L584
	nop

.L585:
	b	.L584
	li	$2,-1			# 0xffffffffffffffff

.L586:
	li	$2,1			# 0x1
.L584:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	c.lt.d	$f12,$f13
	nop
	bc1t	.L589
	move	$fp,$sp

	c.lt.d	$f13,$f12
	nop
	bc1t	.L590
	move	$2,$0

	b	.L588
	nop

.L589:
	b	.L588
	li	$2,-1			# 0xffffffffffffffff

.L590:
	li	$2,1			# 0x1
.L588:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dmult	$4,$5
	mflo	$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dmult	$4,$5
	mflo	$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	bgez	$5,.L594
	move	$7,$0

	subu	$5,$0,$5
	li	$7,1			# 0x1
.L594:
	li	$2,33			# 0x21
	b	.L595
	move	$6,$0

.L598:
	bnel	$3,$0,.L596
	addu	$6,$6,$4

.L596:
	sll	$4,$4,1
	sra	$5,$5,1
.L595:
	beq	$5,$0,.L597
	nop

	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	bne	$2,$0,.L598
	andi	$3,$5,0x1

.L597:
	beq	$7,$0,.L599
	move	$2,$6

	subu	$2,$0,$6
.L599:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__divsi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))
	bgez	$4,.L603
	move	$16,$0

	dsubu	$4,$0,$4
	li	$16,1			# 0x1
.L603:
	bgez	$5,.L607
	sll	$4,$4,0

	dsubu	$5,$0,$5
	xori	$16,$16,0x1
.L607:
	sll	$5,$5,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MIPS_JALR,__udivmodsi4
1:	jalr	$25
	move	$6,$0

	dsll	$2,$2,32
	beq	$16,$0,.L605
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L605:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__modsi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))
	bgez	$4,.L609
	move	$16,$0

	dsubu	$4,$0,$4
	li	$16,1			# 0x1
.L609:
	dsra	$3,$5,63
	xor	$5,$5,$3
	sll	$4,$4,0
	sll	$5,$5,0
	li	$6,1			# 0x1
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MIPS_JALR,__udivmodsi4
1:	jalr	$25
	subu	$5,$5,$3

	dsll	$2,$2,32
	beq	$16,$0,.L611
	dsrl	$2,$2,32

	dsubu	$2,$0,$2
.L611:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	li	$2,17			# 0x11
	b	.L614
	li	$3,1			# 0x1

.L616:
	andi	$5,$5,0xffff
	sll	$3,$3,1
	andi	$3,$3,0xffff
.L614:
	sltu	$7,$5,$4
	beql	$7,$0,.L618
	move	$2,$0

	addiu	$2,$2,-1
	beql	$2,$0,.L622
	move	$2,$0

	dsll	$7,$5,48
	dsra	$7,$7,48
	bgezl	$7,.L616
	sll	$5,$5,1

	b	.L618
	move	$2,$0

.L619:
	bnel	$7,$0,.L624
	dsrl	$3,$3,1

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$2,$2,$3
	dsrl	$3,$3,1
.L624:
	dsrl	$5,$5,1
.L622:
.L618:
	bnel	$3,$0,.L619
	sltu	$7,$4,$5

	bnel	$6,$0,.L620
	move	$2,$4

.L620:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	li	$8,65			# 0x41
	b	.L626
	li	$3,1			# 0x1

.L628:
	dsll	$3,$3,1
.L626:
	sltu	$2,$5,$4
	beq	$2,$0,.L633
	addiu	$8,$8,-1

	beq	$8,$0,.L634
	dsrl	$7,$5,31

	andi	$7,$7,0x1
	beql	$7,$0,.L628
	dsll	$5,$5,1

	b	.L630
	move	$2,$0

.L631:
	bnel	$7,$0,.L636
	dsrl	$3,$3,1

	dsubu	$4,$4,$5
	or	$2,$2,$3
	dsrl	$3,$3,1
.L636:
	b	.L630
	dsrl	$5,$5,1

.L633:
	b	.L630
	move	$2,$0

.L634:
	move	$2,$0
.L630:
	bne	$3,$0,.L631
	sltu	$7,$4,$5

	bnel	$6,$0,.L632
	move	$2,$4

.L632:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$5,0x20
	beq	$2,$0,.L638
	move	$fp,$sp

	sll	$4,$4,0
	sll	$4,$4,$5
	b	.L639
	dsll	$4,$4,32

.L638:
	beq	$5,$0,.L641
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
	or	$4,$3,$2
.L639:
	b	.L640
	move	$2,$4

.L641:
	move	$2,$4
.L640:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$6,0x40
	beq	$2,$0,.L643
	move	$fp,$sp

	move	$3,$0
	b	.L645
	dsll	$2,$5,$6

.L643:
	beq	$6,$0,.L646
	dsll	$3,$5,$6

	dsll	$4,$4,$6
	subu	$6,$0,$6
	dsrl	$6,$5,$6
	b	.L645
	or	$2,$6,$4

.L646:
	move	$3,$5
	move	$2,$4
.L645:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$5,0x20
	beq	$2,$0,.L648
	move	$fp,$sp

	dsra	$4,$4,32
	sra	$2,$4,31
	sra	$4,$4,$5
	dsll	$4,$4,32
	dsrl	$4,$4,32
	dsll	$2,$2,32
	b	.L649
	or	$4,$2,$4

.L648:
	beq	$5,$0,.L651
	dsra	$2,$4,32

	sra	$3,$2,$5
	subu	$6,$0,$5
	sll	$2,$2,$6
	sll	$4,$4,0
	srl	$4,$4,$5
	or	$2,$2,$4
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsll	$3,$3,32
	or	$4,$3,$2
.L649:
	b	.L650
	move	$2,$4

.L651:
	move	$2,$4
.L650:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$6,0x40
	beq	$2,$0,.L653
	move	$fp,$sp

	dsra	$2,$4,63
	b	.L655
	dsra	$3,$4,$6

.L653:
	beq	$6,$0,.L656
	dsra	$2,$4,$6

	subu	$7,$0,$6
	dsll	$7,$4,$7
	dsrl	$6,$5,$6
	b	.L655
	or	$3,$7,$6

.L656:
	move	$3,$5
	move	$2,$4
.L655:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	srl	$3,$4,24
	srl	$5,$4,8
	andi	$5,$5,0xff00
	sll	$2,$4,8
	li	$6,16711680			# 0xff0000
	and	$2,$2,$6
	sll	$4,$4,24
	or	$3,$3,$4
	or	$3,$3,$5
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	addu	$2,$3,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
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
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	dsra	$2,$4,32
	dsra	$3,$5,32
	slt	$2,$2,$3
	bne	$2,$0,.L671
	move	$fp,$sp

	dsra	$2,$4,32
	slt	$2,$3,$2
	bne	$2,$0,.L672
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bne	$2,$0,.L673
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$5,$4
	b	.L670
	daddiu	$2,$2,1

.L671:
	b	.L670
	move	$2,$0

.L672:
	b	.L670
	li	$2,2			# 0x2

.L673:
	move	$2,$0
.L670:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__aeabi_lcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_lcmp)))
	ld	$25,%got_disp(__cmpdi2)($28)
	.reloc	1f,R_MIPS_JALR,__cmpdi2
1:	jalr	$25
	move	$fp,$sp

	addiu	$2,$2,-1
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	slt	$2,$4,$6
	bne	$2,$0,.L678
	move	$fp,$sp

	slt	$2,$6,$4
	bne	$2,$0,.L682
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bne	$2,$0,.L680
	sltu	$2,$7,$5

	b	.L677
	daddiu	$2,$2,1

.L678:
	b	.L677
	move	$2,$0

.L680:
	move	$2,$0
.L677:
.L682:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	andi	$2,$4,0xffff
	sltu	$2,$2,1
	dsll	$2,$2,4
	srl	$4,$4,$2
	andi	$3,$4,0x00ff
	sltu	$3,$3,1
	dsll	$3,$3,3
	srl	$4,$4,$3
	daddu	$3,$3,$2
	andi	$2,$4,0xf
	sltu	$2,$2,1
	dsll	$2,$2,2
	srl	$4,$4,$2
	daddu	$3,$3,$2
	andi	$2,$4,0x3
	sltu	$2,$2,1
	dsll	$2,$2,1
	srl	$4,$4,$2
	andi	$4,$4,0x3
	daddu	$3,$3,$2
	nor	$2,$0,$4
	andi	$2,$2,0x1
	dsrl	$4,$4,1
	li	$5,2			# 0x2
	subu	$5,$5,$4
	subu	$2,$0,$2
	and	$2,$2,$5
	addu	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__ctzti2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ctzti2)))
	sltu	$16,$5,1
	dsubu	$16,$0,$16
	and	$2,$16,$4
	nor	$4,$0,$16
	and	$4,$4,$5
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	or	$4,$4,$2

	andi	$16,$16,0x40
	addu	$2,$2,$16
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
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
	.frame	$fp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__ffsti2)))
	daddu	$28,$28,$25
	bne	$5,$0,.L694
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ffsti2)))

	beq	$4,$0,.L695
	move	$2,$0

	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	nop

	b	.L695
	addiu	$2,$2,65

.L694:
	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	move	$4,$5

	addiu	$2,$2,1
.L695:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$5,0x20
	beq	$2,$0,.L698
	move	$fp,$sp

	dsra	$4,$4,32
	srl	$4,$4,$5
	dsll	$4,$4,32
	b	.L699
	dsrl	$4,$4,32

.L698:
	beq	$5,$0,.L701
	dsra	$2,$4,32

	srl	$3,$2,$5
	subu	$6,$0,$5
	sll	$2,$2,$6
	sll	$4,$4,0
	srl	$4,$4,$5
	or	$2,$2,$4
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsll	$3,$3,32
	or	$4,$3,$2
.L699:
	b	.L700
	move	$2,$4

.L701:
	move	$2,$4
.L700:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$6,0x40
	beq	$2,$0,.L703
	move	$fp,$sp

	move	$2,$0
	b	.L705
	dsrl	$3,$4,$6

.L703:
	beq	$6,$0,.L706
	dsrl	$2,$4,$6

	subu	$7,$0,$6
	dsll	$7,$4,$7
	dsrl	$6,$5,$6
	b	.L705
	or	$3,$7,$6

.L706:
	move	$3,$5
	move	$2,$4
.L705:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,80,$31		# vars= 16, regs= 7/0, args= 0, gp= 0
	.mask	0xd00f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$fp,64($sp)
	sd	$28,56($sp)
	sd	$19,48($sp)
	sd	$18,40($sp)
	sd	$17,32($sp)
	sd	$16,24($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__muldi3_compiler_rt)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__muldi3_compiler_rt)))
	move	$17,$4
	move	$16,$5
	sw	$4,0($fp)
	lw	$18,0($fp)
	sw	$5,4($fp)
	lw	$19,4($fp)
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
	move	$sp,$fp
	ld	$31,72($sp)
	ld	$fp,64($sp)
	ld	$28,56($sp)
	ld	$19,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jr	$31
	daddiu	$sp,$sp,80

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsll	$8,$4,32
	dsrl	$8,$8,32
	dsll	$9,$5,32
	dsrl	$9,$9,32
	dmult	$8,$9
	mflo	$2
	dsrl	$3,$2,32
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsrl	$4,$4,32
	dmult	$4,$9
	mflo	$9
	daddu	$3,$3,$9
	dsll	$9,$3,32
	daddu	$7,$9,$2
	dsrl	$6,$3,32
	dsrl	$3,$7,32
	dsll	$2,$7,32
	dsrl	$2,$2,32
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
	move	$2,$6
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0xd00f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__multi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__multi3)))
	move	$17,$5
	move	$16,$4
	move	$19,$7
	move	$18,$6
	move	$5,$7
	ld	$25,%got_disp(__mulddi3)($28)
	.reloc	1f,R_MIPS_JALR,__mulddi3
1:	jalr	$25
	move	$4,$17

	move	$4,$2
	move	$7,$3
	dmult	$16,$19
	mflo	$3
	nop
	nop
	dmult	$18,$17
	mflo	$2
	daddu	$3,$3,$2
	daddu	$6,$3,$4
	move	$3,$7
	move	$2,$6
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsubu	$2,$0,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsubu	$3,$0,$5
	sltu	$5,$0,$3
	dsubu	$2,$0,$4
	dsubu	$2,$2,$5
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	xor	$4,$5,$4
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
	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	srl	$2,$4,16
	xor	$4,$2,$4
	srl	$2,$4,8
	xor	$4,$4,$2
	srl	$2,$4,4
	xor	$4,$4,$2
	andi	$4,$4,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$4
	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	andi	$2,$2,0x7f
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	andi	$2,$2,0x3f
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsll	$2,$4,63
	dsrl	$7,$5,1
	or	$7,$2,$7
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
	or	$5,$2,$5
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
	or	$7,$4,$7
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
	srl	$2,$3,16
	addu	$3,$2,$3
	srl	$2,$3,8
	addu	$2,$2,$3
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	lui	$4,%hi(%neg(%gp_rel(__powidf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powidf2)))
	slt	$3,$5,0
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f1,%got_ofst(.LC12)($2)
.L722:
	andi	$2,$5,0x1
	bnel	$2,$0,.L720
	mul.d	$f1,$f1,$f12

.L720:
	srl	$2,$5,31
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L721
	nop

	b	.L722
	mul.d	$f12,$f12,$f12

.L721:
	beq	$3,$0,.L723
	mov.d	$f0,$f1

	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	div.d	$f0,$f0,$f1
.L723:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	lui	$4,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powisf2)))
	slt	$3,$5,0
	ld	$2,%got_page(.LC14)($4)
	lwc1	$f1,%got_ofst(.LC14)($2)
.L728:
	andi	$2,$5,0x1
	bnel	$2,$0,.L726
	mul.s	$f1,$f1,$f12

.L726:
	srl	$2,$5,31
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L727
	nop

	b	.L728
	mul.s	$f12,$f12,$f12

.L727:
	beq	$3,$0,.L729
	mov.s	$f0,$f1

	ld	$2,%got_page(.LC14)($4)
	lwc1	$f0,%got_ofst(.LC14)($2)
	div.s	$f0,$f0,$f1
.L729:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	dsra	$2,$4,32
	dsra	$3,$5,32
	sltu	$2,$2,$3
	bne	$2,$0,.L733
	move	$fp,$sp

	dsra	$2,$4,32
	sltu	$2,$3,$2
	bne	$2,$0,.L734
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bne	$2,$0,.L735
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$2,$5,$4
	b	.L732
	daddiu	$2,$2,1

.L733:
	b	.L732
	move	$2,$0

.L734:
	b	.L732
	li	$2,2			# 0x2

.L735:
	move	$2,$0
.L732:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

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
	.frame	$fp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__aeabi_ulcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_ulcmp)))
	ld	$25,%got_disp(__ucmpdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ucmpdi2
1:	jalr	$25
	move	$fp,$sp

	addiu	$2,$2,-1
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	sltu	$2,$4,$6
	bne	$2,$0,.L740
	move	$fp,$sp

	sltu	$2,$6,$4
	bne	$2,$0,.L744
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bne	$2,$0,.L742
	sltu	$2,$7,$5

	b	.L739
	daddiu	$2,$2,1

.L740:
	b	.L739
	move	$2,$0

.L742:
	move	$2,$0
.L739:
.L744:
	move	$sp,$fp
	ld	$fp,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	__ucmpti2
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.rdata
	.align	2
.LC0:
	.word	-8388609
	.align	2
.LC1:
	.word	2139095039
	.align	3
.LC2:
	.word	-1048577
	.word	-1
	.align	3
.LC3:
	.word	2146435071
	.word	-1
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
	.align	2
.LC6:
	.word	1056964608
	.LC7 = .LC11
	.align	3
.LC8:
	.word	1071644672
	.word	0
	.LC9 = .LC11
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
	.align	3
.LC12:
	.word	1072693248
	.word	0
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
