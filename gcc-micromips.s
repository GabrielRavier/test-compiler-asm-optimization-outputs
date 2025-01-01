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
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sltu	$3,$5,$4
	beqz	$3,.L4
	move	$2,$4

	daddu	$3,$5,$6
	b	.L5
	daddu	$6,$4,$6

.L6:
	daddiu	$3,$3,-1
	daddiu	$6,$6,-1
	lb	$7,0($3)
	sb	$7,0($6)
.L5:
	bne	$3,$5,.L6
	nop

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
	daddiu	$3,$3,1
	daddiu	$6,$6,1
	lb	$4,-1($3)
	sb	$4,-1($6)
.L8:
	bne	$6,$7,.L9
	nop

.L7:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	beqzc	$7,.L12
	lbu	$2,0($5)
	bne	$6,$2,.L13
	sb	$2,0($4)

.L12:
	bnez	$7,.L14
	daddiu	$2,$4,1

	move	$2,$0
.L14:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	andi	$5,$5,0xff
	b	.L17
	move	$2,$4

.L22:
	daddiu	$6,$6,-1
.L17:
	beqzc	$6,.L18
	lbu	$3,0($2)
	bne	$5,$3,.L22
	daddiu	$2,$2,1

	daddiu	$2,$2,-1
.L18:
	movz	$2,$0,$6
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L24
	move	$fp,$sp

.L29:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
.L24:
	beqzc	$6,.L25
	lbu	$3,0($4)
	lbu	$2,0($5)
	beq	$3,$2,.L29
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
.L25:
	beqzc	$6,.L28
	lbu	$2,0($4)
	lbu	$3,0($5)
	b	.L27
	subu	$2,$2,$3

.L28:
	move	$2,$0
.L27:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	lbu	$7,-1($5)
	sb	$7,-1($3)
.L31:
	bne	$3,$6,.L32
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	andi	$5,$5,0xff
	daddiu	$6,$6,-1
	b	.L34
	li	$2,-1			# 0xffffffffffffffff

.L36:
	lbu	$3,0($3)
	bne	$5,$3,.L37
	daddiu	$7,$6,-1

	b	.L35
	daddu	$2,$4,$6

.L37:
	move	$6,$7
.L34:
	bne	$6,$2,.L36
	daddu	$3,$4,$6

	move	$2,$0
.L35:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	move	$3,$4
	b	.L39
	andi	$5,$5,0xff

.L40:
	sb	$5,0($3)
	daddiu	$3,$3,1
.L39:
	bne	$3,$6,.L40
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	bnez	$3,.L43
	sb	$3,0($2)

	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	b	.L45
	andi	$5,$5,0xff

.L45:
	lb	$3,0($2)
	beqzc	$3,.L46
	lbu	$3,0($2)
	bne	$5,$3,.L45
	daddiu	$2,$2,1

	daddiu	$2,$2,-1
.L46:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
.L50:
	lb	$2,0($4)
	beq	$5,$2,.L51
	move	$2,$4

	daddiu	$4,$4,1
	lb	$2,-1($4)
	bnezc	$2,.L50
.L51:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L54
	move	$fp,$sp

.L57:
	daddiu	$5,$5,1
.L54:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,.L55
	nop

	bnez	$3,.L57
	daddiu	$4,$4,1

	daddiu	$4,$4,-1
.L55:
	lbu	$3,0($4)
	lbu	$2,0($5)
	subu	$2,$3,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L59
	move	$2,$4

.L60:
	daddiu	$2,$2,1
.L59:
	lb	$5,0($2)
	bnezc	$5,.L60
	dsubu	$2,$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	beqz	$6,.L66
	move	$fp,$sp

	daddiu	$6,$6,-1
	b	.L63
	daddu	$2,$4,$6

.L67:
	daddiu	$5,$5,1
.L63:
	lbu	$3,0($4)
	beqzc	$3,.L64
	lbu	$3,0($5)
	beqzc	$3,.L64
	beq	$4,$2,.L64
	nop

	lbu	$6,0($4)
	lbu	$3,0($5)
	beq	$6,$3,.L67
	daddiu	$4,$4,1

	daddiu	$4,$4,-1
.L64:
	lbu	$2,0($4)
	lbu	$3,0($5)
	b	.L62
	subu	$2,$2,$3

.L66:
	move	$2,$0
.L62:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	b	.L69
	daddu	$6,$4,$6

.L70:
	lb	$3,1($2)
	sb	$3,0($5)
	lb	$3,0($2)
	sb	$3,1($5)
	daddiu	$5,$5,2
	daddiu	$2,$2,2
.L69:
	dsubu	$3,$6,$2
	slt	$3,$3,2
	beqzc	$3,.L70
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	li	$2,32			# 0x20
	beq	$4,$2,.L75
	move	$fp,$sp

	xori	$4,$4,0x9
	b	.L74
	sltu	$2,$4,1

.L75:
	li	$2,1			# 0x1
.L74:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	sltu	$2,$4,32
	bnez	$2,.L79
	move	$fp,$sp

	xori	$4,$4,0x7f
	b	.L78
	sltu	$2,$4,1

.L79:
	li	$2,1			# 0x1
.L78:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	16
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
	jraddiusp	16
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
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	li	$2,32			# 0x20
	beq	$4,$2,.L87
	move	$fp,$sp

	addiu	$4,$4,-9
	b	.L86
	sltu	$2,$4,5

.L87:
	li	$2,1			# 0x1
.L86:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	sltu	$2,$4,32
	bnez	$2,.L92
	move	$fp,$sp

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bnez	$2,.L96
	li	$2,1			# 0x1

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bnez	$2,.L94
	li	$2,-65536			# 0xffffffffffff0000

	addiu	$2,$2,7
	addu	$2,$2,$4
	b	.L91
	sltu	$2,$2,3

.L92:
	b	.L91
	li	$2,1			# 0x1

.L94:
	li	$2,1			# 0x1
.L91:
.L96:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	sltu	$2,$4,255
	beqz	$2,.L99
	move	$fp,$sp

	addiu	$2,$4,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	b	.L100
	sltu	$2,$2,1

.L99:
	sltu	$2,$4,8232
	bnez	$2,.L101
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bnez	$2,.L106
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$2,$4
	sltu	$2,$2,8185
	bnez	$2,.L106
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$2,$4
	li	$3,1048576			# 0x100000
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beqz	$2,.L104
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	addiu	$2,$4,-48
	sltu	$2,$2,10
	bnez	$2,.L109
	move	$fp,$sp

	ori	$2,$4,0x20
	addiu	$2,$2,-97
	b	.L108
	sltu	$2,$2,6

.L109:
	li	$2,1			# 0x1
.L108:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L115
	move	$fp,$sp

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L120
	mov.d	$f0,$f13

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L119
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L124
	move	$fp,$sp

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L129
	mov.s	$f0,$f13

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L128
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
	jraddiusp	16
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sdc1	$f12,0($fp)
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L134
	sdc1	$f13,8($fp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L135
	mov.d	$f0,$f13

	ld	$3,0($fp)
	dsrl	$3,$3,63
	ld	$2,8($fp)
	dext	$2,$2,63,1
	beq	$3,$2,.L132
	ldc1	$f1,8($fp)

	b	.L131
	movz.d	$f0,$f12,$3

.L132:
	ldc1	$f0,0($fp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L139
	nop

	b	.L131
	mov.d	$f0,$f1

.L134:
	b	.L131
	ldc1	$f0,8($fp)

.L135:
	ldc1	$f0,0($fp)
.L139:
.L131:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	swc1	$f12,0($fp)
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L144
	swc1	$f13,4($fp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L145
	mov.s	$f0,$f13

	lw	$3,0($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($fp)
	and	$2,$2,$4
	beq	$3,$2,.L142
	lwc1	$f1,4($fp)

	lw	$2,0($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	b	.L141
	movz.s	$f0,$f12,$2

.L142:
	lwc1	$f0,0($fp)
	c.lt.s	$fcc2,$f0,$f1
	bc1f	$fcc2,.L149
	nop

	b	.L141
	mov.s	$f0,$f1

.L144:
	b	.L141
	lwc1	$f0,4($fp)

.L145:
	lwc1	$f0,0($fp)
.L149:
.L141:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
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

	bnez	$2,.L154
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$19,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$18,$f12

	bnez	$2,.L151
	dsrl	$2,$16,63

	dext	$3,$18,63,1
	beq	$2,$3,.L152
	ld	$25,%call16(__lttf2)($28)

	bgez	$16,.L160
	dmtc1	$16,$f0

	move	$17,$19
	b	.L151
	move	$16,$18

.L152:
	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	dmtc1	$16,$f12

	bgez	$2,.L160
	dmtc1	$16,$f0

	move	$17,$19
	b	.L151
	move	$16,$18

.L154:
	move	$17,$19
	move	$16,$18
.L151:
	dmtc1	$16,$f0
.L160:
	dmtc1	$17,$f2
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	64
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sdc1	$f12,0($fp)
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L165
	sdc1	$f13,8($fp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L166
	ld	$3,0($fp)

	dsrl	$3,$3,63
	ld	$2,8($fp)
	dext	$2,$2,63,1
	beq	$3,$2,.L163
	ldc1	$f1,8($fp)

	mov.d	$f0,$f12
	b	.L162
	movz.d	$f0,$f13,$3

.L163:
	ldc1	$f0,0($fp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L170
	nop

	b	.L162
	nop

.L165:
	b	.L162
	ldc1	$f0,8($fp)

.L166:
	b	.L162
	ldc1	$f0,0($fp)

.L170:
	ldc1	$f0,8($fp)
.L162:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	swc1	$f12,0($fp)
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L175
	swc1	$f13,4($fp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L176
	lw	$3,0($fp)

	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($fp)
	and	$2,$2,$4
	beq	$3,$2,.L173
	lwc1	$f1,4($fp)

	lw	$2,0($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	mov.s	$f0,$f12
	b	.L172
	movz.s	$f0,$f13,$2

.L173:
	lwc1	$f0,0($fp)
	c.lt.s	$fcc2,$f0,$f1
	bc1f	$fcc2,.L180
	nop

	b	.L172
	nop

.L175:
	b	.L172
	lwc1	$f0,4($fp)

.L176:
	b	.L172
	lwc1	$f0,0($fp)

.L180:
	lwc1	$f0,4($fp)
.L172:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
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

	bnez	$2,.L182
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$16,$f12

	bnez	$2,.L186
	dsrl	$2,$18,63

	dext	$3,$16,63,1
	beq	$2,$3,.L183
	ld	$25,%call16(__lttf2)($28)

	bgez	$18,.L191
	dmtc1	$16,$f0

	move	$17,$19
	b	.L182
	move	$16,$18

.L183:
	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$19,$f13
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	dmtc1	$18,$f12

	bgez	$2,.L191
	dmtc1	$16,$f0

	move	$17,$19
	b	.L182
	move	$16,$18

.L186:
	move	$17,$19
	move	$16,$18
.L182:
	dmtc1	$16,$f0
.L191:
	dmtc1	$17,$f2
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	64
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
	ld	$3,%got_page(s.0)($6)
	daddiu	$3,$3,%got_ofst(s.0)
	ld	$5,%got_page(digits)($6)
	b	.L193
	daddiu	$5,$5,%got_ofst(digits)

.L194:
	daddu	$2,$2,$5
	lb	$2,0($2)
	sb	$2,0($3)
	daddiu	$3,$3,1
	dext	$4,$4,6,26
.L193:
	bnez	$4,.L194
	andi	$2,$4,0x3f

	sb	$0,0($3)
	ld	$2,%got_page(s.0)($6)
	daddiu	$2,$2,%got_ofst(s.0)
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	dext	$4,$4,0,32
	ld	$2,%got_page(seed)($3)
	sd	$4,%got_ofst(seed)($2)
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	bnez	$5,.L198
	move	$fp,$sp

	sd	$0,8($4)
	b	.L197
	sd	$0,0($4)

.L198:
	ld	$2,0($5)
	sd	$2,0($4)
	sd	$5,8($4)
	sd	$4,0($5)
	ld	$2,0($4)
	beqzc	$2,.L197
	sd	$4,8($2)
.L197:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	ld	$2,0($4)
	beqz	$2,.L201
	move	$fp,$sp

	ld	$3,8($4)
	sd	$3,8($2)
.L201:
	ld	$2,8($4)
	beqzc	$2,.L200
	ld	$3,0($4)
	sd	$3,0($2)
.L200:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	b	.L204
	move	$16,$0

.L207:
	move	$25,$20
	jalr	$25
	move	$4,$19

	bnez	$2,.L205
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L206
	daddu	$2,$22,$2

.L205:
	daddiu	$16,$16,1
.L204:
	bne	$16,$21,.L207
	move	$5,$17

	daddiu	$2,$21,1
	sd	$2,0($23)
	dmult	$18,$21
	mflo	$4
	move	$6,$18
	move	$5,$19
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$22,$4

.L206:
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
	jraddiusp	96
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
	b	.L209
	move	$16,$0

.L212:
	move	$25,$19
	jalr	$25
	move	$4,$20

	bnez	$2,.L210
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L211
	daddu	$2,$22,$2

.L210:
	daddiu	$16,$16,1
.L209:
	bne	$16,$21,.L212
	move	$5,$17

	move	$2,$0
.L211:
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	bgez	$4,.L214
	move	$2,$4

	subu	$2,$0,$4
.L214:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	lui	$28,%hi(%neg(%gp_rel(atoi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoi)))
	move	$16,$4
	b	.L216
	ld	$17,%got_disp(isspace)($28)

.L217:
	daddiu	$16,$16,1
.L216:
	move	$25,$17
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnez	$2,.L217
	li	$3,43			# 0x2b

	lb	$2,0($16)
	beq	$2,$3,.L223
	li	$3,45			# 0x2d

	bne	$2,$3,.L224
	nop

	b	.L218
	li	$4,1			# 0x1

.L223:
	move	$4,$0
.L218:
	b	.L219
	daddiu	$16,$16,1

.L224:
	move	$4,$0
.L219:
	b	.L220
	move	$2,$0

.L221:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	subu	$2,$3,$2
.L220:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnez	$3,.L221
	daddiu	$16,$16,1

	bnezc	$4,.L222
	subu	$2,$0,$2
.L222:
	move	$sp,$fp
	ld	$31,40($fp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
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
	lui	$28,%hi(%neg(%gp_rel(atol)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atol)))
	move	$16,$4
	b	.L227
	ld	$17,%got_disp(isspace)($28)

.L228:
	daddiu	$16,$16,1
.L227:
	move	$25,$17
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnez	$2,.L228
	li	$3,43			# 0x2b

	lb	$2,0($16)
	beq	$2,$3,.L234
	li	$3,45			# 0x2d

	bne	$2,$3,.L235
	nop

	b	.L229
	li	$4,1			# 0x1

.L234:
	move	$4,$0
.L229:
	b	.L230
	daddiu	$16,$16,1

.L235:
	move	$4,$0
.L230:
	b	.L231
	move	$2,$0

.L232:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	dsubu	$2,$3,$2
.L231:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnez	$3,.L232
	daddiu	$16,$16,1

	bnezc	$4,.L233
	dsubu	$2,$0,$2
.L233:
	move	$sp,$fp
	ld	$31,40($fp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
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
	lui	$28,%hi(%neg(%gp_rel(atoll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoll)))
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

	b	.L240
	li	$4,1			# 0x1

.L245:
	move	$4,$0
.L240:
	b	.L241
	daddiu	$16,$16,1

.L246:
	move	$4,$0
.L241:
	b	.L242
	move	$2,$0

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

	bnezc	$4,.L244
	dsubu	$2,$0,$2
.L244:
	move	$sp,$fp
	ld	$31,40($fp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
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
	dsrl	$2,$16,1
	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$5,$17
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
	bnez	$16,.L253
	move	$25,$20

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
	jraddiusp	80
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
	sra	$2,$16,1
	dmult	$2,$19
	mflo	$17
	daddu	$17,$18,$17
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	beqzc	$2,.L260
	blez	$2,.L258
	nop

	daddu	$18,$17,$19
	addiu	$16,$16,-1
.L258:
	sra	$16,$16,1
.L256:
	bnez	$16,.L259
	move	$6,$20

	b	.L257
	move	$2,$0

.L260:
	move	$2,$17
.L257:
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
	jraddiusp	80
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
	mflo	$3
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	move	$2,$0
	dext	$3,$3,0,32
	dins	$2,$3,32,32
	dext	$4,$4,0,32
	dins	$2,$4,0,32
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	bgez	$4,.L263
	move	$2,$4

	dsubu	$2,$0,$4
.L263:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	32
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	bgez	$4,.L266
	move	$2,$4

	dsubu	$2,$0,$4
.L266:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	32
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	bgez	$4,.L269
	move	$2,$4

	dsubu	$2,$0,$4
.L269:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	32
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L272
	move	$2,$4

.L272:
	lw	$3,0($2)
	beqzc	$3,.L277
	bne	$5,$3,.L272
	daddiu	$2,$2,4

	daddiu	$2,$2,-4
	lw	$3,0($2)
.L277:
	movz	$2,$0,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L279
	move	$fp,$sp

.L284:
	daddiu	$5,$5,4
.L279:
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L280
	nop

	beqzc	$3,.L280
	bnez	$2,.L284
	daddiu	$4,$4,4

	daddiu	$4,$4,-4
.L280:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L283
	lw	$2,0($4)
	b	.L282
	slt	$2,$3,$2

.L283:
	li	$2,-1			# 0xffffffffffffffff
.L282:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
.L286:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$6,-4($5)
	bnez	$6,.L286
	sw	$6,-4($3)

	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L289
	move	$2,$4

.L290:
	daddiu	$2,$2,4
.L289:
	lw	$3,0($2)
	bnezc	$3,.L290
	dsubu	$2,$2,$4
	dsra	$2,$2,2
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L292
	move	$fp,$sp

.L298:
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L292:
	beqz	$6,.L299
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L293
	nop

	beqzc	$3,.L293
	bnez	$2,.L298
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
.L293:
	beqz	$6,.L299
	move	$2,$0

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L297
	lw	$2,0($4)
	b	.L295
	slt	$2,$3,$2

.L297:
	li	$2,-1			# 0xffffffffffffffff
.L295:
.L299:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L301
	move	$2,$4

.L306:
	daddiu	$2,$2,4
.L301:
	beqzc	$6,.L302
	lw	$3,0($2)
	bne	$5,$3,.L306
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
.L302:
	movz	$2,$0,$6
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L308
	move	$fp,$sp

.L314:
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L308:
	beqz	$6,.L315
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	beq	$3,$2,.L314
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
	beqz	$6,.L315
	move	$2,$0

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L313
	lw	$2,0($4)
	b	.L311
	slt	$2,$3,$2

.L313:
	li	$2,-1			# 0xffffffffffffffff
.L311:
.L315:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	b	.L317
	li	$8,-1			# 0xffffffffffffffff

.L318:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$7,-4($5)
	sw	$7,-4($3)
.L317:
	daddiu	$6,$6,-1
	bne	$6,$8,.L318
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	beq	$4,$5,.L320
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$3,$3,$4
	beqz	$3,.L325
	li	$7,-1			# 0xffffffffffffffff

	daddu	$5,$5,$4
	daddu	$3,$2,$4
	b	.L322
	daddiu	$6,$2,-4

.L323:
	lw	$4,0($5)
	sw	$4,0($3)
.L322:
	daddiu	$3,$3,-4
	bne	$3,$6,.L323
	daddiu	$5,$5,-4

	b	.L320
	nop

.L324:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$4,-4($5)
	b	.L321
	sw	$4,-4($3)

.L325:
	move	$3,$2
.L321:
	daddiu	$6,$6,-1
	bne	$6,$7,.L324
	nop

.L320:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	b	.L327
	li	$7,-1			# 0xffffffffffffffff

.L328:
	daddiu	$3,$3,4
	sw	$5,-4($3)
.L327:
	daddiu	$6,$6,-1
	bne	$6,$7,.L328
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	sltu	$2,$4,$5
	beqz	$2,.L330
	move	$fp,$sp

	daddu	$2,$4,$6
	b	.L331
	daddu	$5,$5,$6

.L332:
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
.L331:
	bne	$2,$4,.L332
	nop

	b	.L329
	nop

.L330:
	beq	$4,$5,.L329
	nop

	daddu	$6,$5,$6
	b	.L334
	move	$2,$4

.L335:
	daddiu	$2,$2,1
	daddiu	$5,$5,1
	lb	$3,-1($2)
	sb	$3,-1($5)
.L334:
	bne	$5,$6,.L335
	nop

.L329:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	subu	$5,$0,$5
	dror	$2,$4,$5
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dror	$2,$4,$5
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	subu	$5,$0,$5
	ror	$2,$4,$5
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	ror	$2,$4,$5
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	or	$2,$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	or	$2,$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	srl	$4,$4,$2
	or	$2,$4,$3
	andi	$2,$2,0xffff
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	sll	$4,$4,$2
	or	$2,$4,$3
	andi	$2,$2,0xffff
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	srl	$4,$4,$2
	or	$2,$4,$3
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	sll	$4,$4,$2
	or	$2,$4,$3
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
	b	.L350
	li	$5,32			# 0x20

.L353:
	andi	$3,$3,0x1
	beqzc	$3,.L351
	b	.L352
	addiu	$2,$2,1

.L351:
	addiu	$2,$2,1
.L350:
	bne	$2,$5,.L353
	srl	$3,$4,$2

	move	$2,$0
.L352:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	beqz	$4,.L358
	move	$fp,$sp

	b	.L356
	li	$2,1			# 0x1

.L357:
	sra	$4,$4,1
	addiu	$2,$2,1
.L356:
	andi	$3,$4,0x1
	beqzc	$3,.L357
	b	.L355
	nop

.L358:
	move	$2,$0
.L355:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	lui	$3,%hi(%neg(%gp_rel(gl_isinff)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinff)))
	ld	$2,%got_page(.LC0)($3)
	lwc1	$f0,%got_ofst(.LC0)($2)
	c.lt.s	$fcc0,$f12,$f0
	bc1t	$fcc0,.L362
	move	$fp,$sp

	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$fcc1,$f0,$f12
	bc1f	$fcc1,.L365
	li	$2,1			# 0x1

	b	.L360
	nop

.L362:
	b	.L360
	li	$2,1			# 0x1

.L365:
	move	$2,$0
.L360:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	lui	$3,%hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinfd)))
	ld	$2,%got_page(.LC2)($3)
	ldc1	$f0,%got_ofst(.LC2)($2)
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L369
	move	$fp,$sp

	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$fcc1,$f0,$f12
	bc1f	$fcc1,.L372
	li	$2,1			# 0x1

	b	.L367
	nop

.L369:
	b	.L367
	li	$2,1			# 0x1

.L372:
	move	$2,$0
.L367:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC4)($2)

	bltz	$2,.L376
	ld	$25,%call16(__gttf2)($28)

	ld	$2,%got_page(.LC5)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	ldc1	$f14,%got_ofst(.LC5)($2)
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__gttf2
1:	jalr	$25
	dmtc1	$16,$f12

	b	.L374
	slt	$2,$0,$2

.L376:
	li	$2,1			# 0x1
.L374:
	move	$sp,$fp
	ld	$31,40($sp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
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
	.reloc	1f,R_MICROMIPS_JALR,__extenddftf2
1:	jalr	$25
	cvt.d.w	$f12,$f0

	sdc1	$f2,8($16)
	sdc1	$f0,0($16)
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
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
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L381
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f12,$f1
	bc1t	$fcc1,.L381
	nop

	bgez	$5,.L385
	ld	$2,%got_page(.LC7)($3)

	ld	$2,%got_page(.LC6)($3)
	b	.L384
	lwc1	$f1,%got_ofst(.LC6)($2)

.L385:
	lwc1	$f1,%got_ofst(.LC7)($2)
.L384:
	andi	$2,$5,0x1
	beqz	$2,.L386
	srl	$2,$5,31

	mul.s	$f0,$f0,$f1
.L386:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L381
	b	.L384
	mul.s	$f1,$f1,$f1

.L381:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L388
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f12,$f1
	bc1t	$fcc1,.L388
	nop

	bgez	$5,.L392
	ld	$2,%got_page(.LC9)($3)

	ld	$2,%got_page(.LC8)($3)
	b	.L391
	ldc1	$f1,%got_ofst(.LC8)($2)

.L392:
	ldc1	$f1,%got_ofst(.LC9)($2)
.L391:
	andi	$2,$5,0x1
	beqz	$2,.L393
	srl	$2,$5,31

	mul.d	$f0,$f0,$f1
.L393:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L388
	b	.L391
	mul.d	$f1,$f1,$f1

.L388:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	move	$20,$6
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$19,$f15
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$18,$f14

	bnez	$2,.L395
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

	beqz	$2,.L402
	dmtc1	$18,$f0

	bgez	$20,.L400
	ld	$2,%got_page(.LC11)($28)

	ld	$2,%got_page(.LC10)($28)
	ld	$17,%got_ofst(.LC10+8)($2)
	b	.L399
	ld	$16,%got_ofst(.LC10)($2)

.L400:
	ld	$17,%got_ofst(.LC11+8)($2)
	ld	$16,%got_ofst(.LC11)($2)
.L399:
	andi	$2,$20,0x1
	beqz	$2,.L403
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
	move	$18,$4
	srl	$2,$20,31
.L403:
	addu	$2,$2,$20
	sra	$20,$2,1
	beqz	$20,.L395
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
	b	.L399
	move	$16,$4

.L395:
	dmtc1	$18,$f0
.L402:
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
	b	.L405
	move	$3,$4

.L406:
	daddiu	$5,$5,1
	lb	$8,-1($5)
	daddiu	$3,$3,1
	lb	$7,-1($3)
	xor	$7,$7,$8
	sb	$7,-1($3)
.L405:
	bne	$3,$6,.L406
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalr	$25
	move	$16,$6

	b	.L408
	daddu	$2,$18,$2

.L410:
	daddiu	$17,$17,1
	daddiu	$2,$2,1
	daddiu	$16,$16,-1
.L408:
	beqzc	$16,.L409
	lb	$3,0($17)
	bnez	$3,.L410
	sb	$3,0($2)

.L409:
	bnezc	$16,.L411
	sb	$0,0($2)
.L411:
	move	$2,$18
	move	$sp,$fp
	ld	$31,40($sp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L413
	move	$2,$0

.L415:
	daddiu	$2,$2,1
.L413:
	beq	$2,$5,.L414
	daddu	$3,$4,$2

	lb	$3,0($3)
	bnezc	$3,.L415
.L414:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	b	.L417
	move	$fp,$sp

.L419:
	lb	$7,-1($3)
	lb	$6,0($4)
	beq	$7,$6,.L421
	move	$2,$4

.L422:
	lb	$6,0($3)
	bnez	$6,.L419
	daddiu	$3,$3,1

	daddiu	$3,$3,-1
	daddiu	$4,$4,1
.L417:
	lb	$2,0($4)
	bnez	$2,.L422
	move	$3,$5

.L421:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
.L425:
	lb	$3,0($4)
	bne	$5,$3,.L424
	nop

	move	$2,$4
.L424:
	daddiu	$4,$4,1
	lb	$3,-1($4)
	bnezc	$3,.L425
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0xd03f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$fp,64($sp)
	sd	$28,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
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
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalr	$25
	move	$4,$5

	beqz	$2,.L432
	move	$18,$2

	lb	$20,0($17)
	ld	$19,%got_disp(strchr)($28)
	b	.L430
	ld	$21,%got_disp(strncmp)($28)

.L431:
	move	$6,$18
	move	$5,$17
	move	$25,$21
	.reloc	1f,R_MICROMIPS_JALR,strncmp
1:	jalr	$25
	move	$4,$16

	beqz	$2,.L433
	move	$2,$16

	daddiu	$16,$16,1
.L430:
	move	$5,$20
	move	$25,$19
	.reloc	1f,R_MICROMIPS_JALR,strchr
1:	jalr	$25
	move	$4,$16

	bnez	$2,.L431
	move	$16,$2

	b	.L429
	move	$2,$0

.L432:
	move	$2,$16
.L433:
.L429:
	move	$sp,$fp
	ld	$31,72($sp)
	ld	$fp,64($sp)
	ld	$28,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	80
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	dmtc1	$0,$f0
	c.lt.d	$fcc0,$f12,$f0
	bc1f	$fcc0,.L449
	sdc1	$f12,0($fp)

	c.lt.d	$fcc1,$f0,$f13
	bc1t	$fcc1,.L448
	li	$2,-1			# 0xffffffffffffffff

	dmtc1	$0,$f0
.L449:
	ldc1	$f1,0($fp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L445
	nop

	c.lt.d	$fcc3,$f13,$f0
	bc1f	$fcc3,.L447
	ldc1	$f0,0($fp)

	li	$2,-1			# 0xffffffffffffffff
.L448:
	dsll	$2,$2,63
	ld	$3,0($fp)
	xor	$2,$3,$2
	b	.L438
	sd	$2,0($fp)

.L445:
	b	.L447
	ldc1	$f0,0($fp)

.L438:
	ldc1	$f0,0($fp)
.L447:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
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
	.frame	$fp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0xd03f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$fp,64($sp)
	sd	$28,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
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
	dsubu	$18,$5,$7
	beqz	$7,.L455
	daddu	$18,$4,$18

	sltu	$5,$5,$7
	bnez	$5,.L456
	daddiu	$21,$6,1

	daddiu	$19,$7,-1
	b	.L452
	ld	$20,%got_disp(memcmp)($28)

.L454:
	lb	$3,0($16)
	lb	$2,0($17)
	bne	$3,$2,.L453
	move	$6,$19

	move	$5,$21
	move	$25,$20
	.reloc	1f,R_MICROMIPS_JALR,memcmp
1:	jalr	$25
	daddiu	$4,$16,1

	beqz	$2,.L457
	move	$2,$16

.L453:
	daddiu	$16,$16,1
.L452:
	sltu	$2,$18,$16
	beqz	$2,.L454
	move	$2,$0

	b	.L451
	nop

.L455:
	b	.L451
	move	$2,$4

.L456:
	move	$2,$0
.L457:
.L451:
	move	$sp,$fp
	ld	$31,72($fp)
	ld	$fp,64($sp)
	ld	$28,56($sp)
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
	.globl	mempcpy
	.set	nomips16
	.set	micromips
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
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	move	$16,$6

	daddu	$2,$2,$16
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	lui	$6,%hi(%neg(%gp_rel(frexp)))
	daddu	$6,$6,$25
	daddiu	$6,$6,%lo(%neg(%gp_rel(frexp)))
	dmtc1	$0,$f0
	c.lt.d	$fcc0,$f12,$f0
	bc1f	$fcc0,.L476
	sdc1	$f12,0($fp)

	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($fp)
	xor	$2,$3,$2
	sd	$2,0($fp)
	b	.L460
	li	$3,1			# 0x1

.L476:
	move	$3,$0
.L460:
	ld	$2,%got_page(.LC12)($6)
	ldc1	$f0,%got_ofst(.LC12)($2)
	ldc1	$f1,0($fp)
	c.le.d	$fcc1,$f0,$f1
	bc1t	$fcc1,.L471
	ld	$4,%got_page(.LC12)($6)

	b	.L477
	ld	$2,%got_page(.LC8)($6)

.L464:
	addiu	$2,$2,1
	mul.d	$f2,$f2,$f1
	b	.L462
	sdc1	$f2,0($fp)

.L471:
	move	$2,$0
	ldc1	$f0,%got_ofst(.LC12)($4)
	ld	$4,%got_page(.LC8)($6)
	ldc1	$f1,%got_ofst(.LC8)($4)
.L462:
	ldc1	$f2,0($fp)
	c.le.d	$fcc2,$f0,$f2
	bc1t	$fcc2,.L464
	nop

	b	.L479
	sw	$2,0($5)

.L477:
	ldc1	$f0,%got_ofst(.LC8)($2)
	ldc1	$f1,0($fp)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L478
	dmtc1	$0,$f0

	c.eq.d	$fcc4,$f1,$f0
	bc1f	$fcc4,.L473
	ld	$4,%got_page(.LC8)($6)

	b	.L465
	move	$2,$0

.L468:
	addiu	$2,$2,-1
	add.d	$f1,$f1,$f1
	b	.L467
	sdc1	$f1,0($fp)

.L473:
	move	$2,$0
	ldc1	$f0,%got_ofst(.LC8)($4)
.L467:
	ldc1	$f1,0($fp)
	c.lt.d	$fcc5,$f1,$f0
	bc1t	$fcc5,.L468
	nop

	b	.L479
	sw	$2,0($5)

.L478:
	move	$2,$0
.L465:
	sw	$2,0($5)
.L479:
	beqz	$3,.L480
	ldc1	$f0,0($fp)

	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($fp)
	xor	$2,$3,$2
	sd	$2,0($fp)
	ldc1	$f0,0($fp)
.L480:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L482
	move	$2,$0

.L484:
	beqzc	$3,.L483
	daddu	$2,$2,$5
.L483:
	dsll	$5,$5,1
	dsrl	$4,$4,1
.L482:
	bnez	$4,.L484
	andi	$3,$4,0x1

	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	li	$4,33			# 0x21
	b	.L486
	li	$3,1			# 0x1

.L490:
	sll	$5,$5,1
	sll	$3,$3,1
.L486:
	sltu	$7,$5,$2
	beqz	$7,.L488
	move	$7,$0

	addiu	$4,$4,-1
	beqzc	$4,.L488
	bgez	$5,.L490
	nop

	b	.L488
	nop

.L492:
	bnezc	$4,.L491
	subu	$2,$2,$5
	or	$7,$7,$3
.L491:
	dext	$3,$3,1,31
	dext	$5,$5,1,31
.L488:
	bnez	$3,.L492
	sltu	$4,$2,$5

	movz	$2,$7,$6
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	bgez	$4,.L497
	move	$fp,$sp

	nor	$4,$0,$4
	seb	$4,$4
.L497:
	beqz	$4,.L499
	sll	$2,$4,8

	clz	$2,$2
	b	.L498
	addiu	$2,$2,-1

.L499:
	li	$2,7			# 0x7
.L498:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	bgez	$4,.L501
	move	$fp,$sp

	nor	$4,$0,$4
.L501:
	beqz	$4,.L503
	dclz	$4,$4

	b	.L502
	addiu	$2,$4,-1

.L503:
	li	$2,63			# 0x3f
.L502:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L505
	move	$2,$0

.L507:
	beqzc	$3,.L506
	addu	$2,$2,$5
.L506:
	dext	$4,$4,1,31
	sll	$5,$5,1
.L505:
	bnez	$4,.L507
	andi	$3,$4,0x1

	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dext	$9,$6,3,29
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$3,$4,$5
	bnez	$3,.L509
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bnez	$3,.L518
	move	$3,$5

	b	.L510
	li	$7,-1			# 0xffffffffffffffff

.L509:
	move	$3,$5
.L518:
	move	$7,$4
	dsll	$9,$9,3
	b	.L511
	daddu	$9,$9,$5

.L512:
	ld	$8,0($3)
	sd	$8,0($7)
	daddiu	$3,$3,8
	daddiu	$7,$7,8
.L511:
	bne	$3,$9,.L512
	nop

	b	.L513
	dext	$2,$2,0,32

.L514:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L513:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L514
	daddu	$3,$5,$2

	b	.L508
	nop

.L516:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L510:
	addiu	$6,$6,-1
	bne	$6,$7,.L516
	dext	$2,$6,0,32

.L508:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sltu	$2,$4,$5
	bnez	$2,.L520
	dext	$8,$6,1,31

	dext	$2,$6,0,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	bnez	$2,.L527
	move	$2,$5

	b	.L521
	li	$7,-1			# 0xffffffffffffffff

.L520:
	move	$2,$5
.L527:
	move	$3,$4
	dsll	$8,$8,1
	b	.L522
	daddu	$8,$8,$5

.L523:
	lh	$7,0($2)
	sh	$7,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,2
.L522:
	bne	$2,$8,.L523
	nop

	andi	$2,$6,0x1
	beqzc	$2,.L519
	addiu	$6,$6,-1
	dext	$6,$6,0,32
	daddu	$5,$5,$6
	daddu	$4,$4,$6
	lb	$2,0($5)
	b	.L519
	sb	$2,0($4)

.L525:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L521:
	addiu	$6,$6,-1
	bne	$6,$7,.L525
	dext	$2,$6,0,32

.L519:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dext	$9,$6,2,30
	li	$2,-4			# 0xfffffffffffffffc
	sltu	$3,$4,$5
	bnez	$3,.L529
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bnez	$3,.L538
	move	$3,$5

	b	.L530
	li	$7,-1			# 0xffffffffffffffff

.L529:
	move	$3,$5
.L538:
	move	$7,$4
	dsll	$9,$9,2
	b	.L531
	daddu	$9,$9,$5

.L532:
	lw	$8,0($3)
	sw	$8,0($7)
	daddiu	$3,$3,4
	daddiu	$7,$7,4
.L531:
	bne	$3,$9,.L532
	nop

	b	.L533
	dext	$2,$2,0,32

.L534:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L533:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L534
	daddu	$3,$5,$2

	b	.L528
	nop

.L536:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L530:
	addiu	$6,$6,-1
	bne	$6,$7,.L536
	dext	$2,$6,0,32

.L528:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dext	$4,$4,0,32
	dmtc1	$4,$f0
	cvt.d.l	$f0,$f0
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dext	$4,$4,0,32
	dmtc1	$4,$f0
	cvt.s.l	$f0,$f0
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	bltz	$4,.L544
	move	$fp,$sp

	dmtc1	$4,$f0
	b	.L543
	cvt.d.l	$f0,$f0

.L544:
	andi	$2,$4,0x1
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	add.d	$f0,$f0,$f0
.L543:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	bltz	$4,.L547
	move	$fp,$sp

	dmtc1	$4,$f0
	b	.L546
	cvt.s.l	$f0,$f0

.L547:
	andi	$2,$4,0x1
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	add.s	$f0,$f0,$f0
.L546:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
	li	$5,16			# 0x10
	b	.L550
	li	$6,15			# 0xf

.L552:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bnezc	$3,.L551
	addiu	$2,$2,1
.L550:
	bne	$2,$5,.L552
	subu	$3,$6,$2

.L551:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	li	$5,16			# 0x10

.L556:
	andi	$3,$3,0x1
	bnezc	$3,.L555
	addiu	$2,$2,1
.L554:
	bne	$2,$5,.L556
	sra	$3,$4,$2

.L555:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	c.le.s	$fcc0,$f0,$f12
	bc1f	$fcc0,.L562
	move	$fp,$sp

	sub.s	$f12,$f12,$f0
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	li	$3,32768			# 0x8000
	b	.L560
	daddu	$2,$2,$3

.L562:
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
.L560:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
	move	$3,$0
	b	.L564
	li	$6,16			# 0x10

.L566:
	andi	$5,$5,0x1
	beqzc	$5,.L565
	addiu	$2,$2,1
.L565:
	addiu	$3,$3,1
.L564:
	bne	$3,$6,.L566
	sra	$5,$4,$3

	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
	move	$3,$0
	b	.L568
	li	$6,16			# 0x10

.L570:
	andi	$5,$5,0x1
	beqzc	$5,.L569
	addiu	$2,$2,1
.L569:
	addiu	$3,$3,1
.L568:
	bne	$3,$6,.L570
	sra	$5,$4,$3

	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L572
	move	$2,$0

.L574:
	beqzc	$3,.L573
	addu	$2,$2,$5
.L573:
	dext	$4,$4,1,31
	sll	$5,$5,1
.L572:
	bnez	$4,.L574
	andi	$3,$4,0x1

	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	beqz	$4,.L580
	move	$fp,$sp

	b	.L577
	move	$2,$0

.L579:
	beqzc	$3,.L578
	addu	$2,$2,$4
.L578:
	sll	$4,$4,1
	dext	$5,$5,1,31
.L577:
	bnez	$5,.L579
	andi	$3,$5,0x1

	b	.L576
	nop

.L580:
	move	$2,$0
.L576:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	li	$4,33			# 0x21
	b	.L582
	li	$3,1			# 0x1

.L586:
	sll	$5,$5,1
	sll	$3,$3,1
.L582:
	sltu	$7,$5,$2
	beqz	$7,.L584
	move	$7,$0

	addiu	$4,$4,-1
	beqzc	$4,.L584
	bgez	$5,.L586
	nop

	b	.L584
	nop

.L588:
	bnezc	$4,.L587
	subu	$2,$2,$5
	or	$7,$7,$3
.L587:
	dext	$3,$3,1,31
	dext	$5,$5,1,31
.L584:
	bnez	$3,.L588
	sltu	$4,$2,$5

	movz	$2,$7,$6
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	c.lt.s	$fcc0,$f12,$f13
	bc1t	$fcc0,.L594
	move	$fp,$sp

	c.lt.s	$fcc1,$f13,$f12
	bc1t	$fcc1,.L595
	move	$2,$0

	b	.L593
	nop

.L594:
	b	.L593
	li	$2,-1			# 0xffffffffffffffff

.L595:
	li	$2,1			# 0x1
.L593:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	c.lt.d	$fcc0,$f12,$f13
	bc1t	$fcc0,.L598
	move	$fp,$sp

	c.lt.d	$fcc1,$f13,$f12
	bc1t	$fcc1,.L599
	move	$2,$0

	b	.L597
	nop

.L598:
	b	.L597
	li	$2,-1			# 0xffffffffffffffff

.L599:
	li	$2,1			# 0x1
.L597:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	bgez	$5,.L609
	move	$fp,$sp

	subu	$5,$0,$5
	b	.L603
	li	$7,1			# 0x1

.L609:
	move	$7,$0
.L603:
	li	$3,33			# 0x21
	b	.L604
	move	$2,$0

.L607:
	beqzc	$6,.L605
	addu	$2,$2,$4
.L605:
	sll	$4,$4,1
	sra	$5,$5,1
.L604:
	beqzc	$5,.L606
	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	bnez	$3,.L607
	andi	$6,$5,0x1

.L606:
	beqzc	$7,.L608
	subu	$2,$0,$2
.L608:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	bgez	$4,.L615
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))

	dsubu	$4,$0,$4
	b	.L612
	li	$16,1			# 0x1

.L615:
	move	$16,$0
.L612:
	bgez	$5,.L613
	nop

	dsubu	$5,$0,$5
	xori	$16,$16,0x1
.L613:
	sll	$4,$4,0
	sll	$5,$5,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	move	$6,$0

	beqz	$16,.L614
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L614:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	jraddiusp	32
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
	bgez	$4,.L620
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))

	dsubu	$4,$0,$4
	b	.L617
	li	$16,1			# 0x1

.L620:
	move	$16,$0
.L617:
	bgez	$5,.L618
	nop

	dsubu	$5,$0,$5
.L618:
	sll	$4,$4,0
	sll	$5,$5,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	li	$6,1			# 0x1

	beqz	$16,.L619
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L619:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	jraddiusp	32
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	li	$4,17			# 0x11
	b	.L622
	li	$3,1			# 0x1

.L626:
	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	andi	$3,$3,0xffff
.L622:
	sltu	$7,$5,$2
	beqz	$7,.L624
	move	$7,$0

	addiu	$4,$4,-1
	beqzc	$4,.L624
	seh	$7,$5
	bgez	$7,.L626
	move	$7,$0

	b	.L624
	nop

.L628:
	bnezc	$4,.L627
	subu	$2,$2,$5
	andi	$2,$2,0xffff
	or	$7,$7,$3
.L627:
	dsrl	$3,$3,1
	dsrl	$5,$5,1
.L624:
	bnez	$3,.L628
	sltu	$4,$2,$5

	movz	$2,$7,$6
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	li	$7,65			# 0x41
	li	$3,1			# 0x1
	li	$8,1			# 0x1
	b	.L633
	dsll	$8,$8,31

.L637:
	dsll	$5,$5,1
	dsll	$3,$3,1
.L633:
	sltu	$4,$5,$2
	bnezc	$4,.L634
	b	.L635
	move	$7,$0

.L641:
	b	.L635
	move	$7,$0

.L634:
	addiu	$7,$7,-1
	beqz	$7,.L641
	and	$4,$5,$8

	beqzc	$4,.L637
	b	.L635
	move	$7,$0

.L639:
	bnezc	$4,.L638
	dsubu	$2,$2,$5
	or	$7,$7,$3
.L638:
	dsrl	$3,$3,1
	dsrl	$5,$5,1
.L635:
	bnez	$3,.L639
	sltu	$4,$2,$5

	movz	$2,$7,$6
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$5,0x20
	beqz	$2,.L644
	move	$fp,$sp

	move	$2,$0
	dins	$2,$0,0,32
	sll	$4,$4,0
	sll	$5,$4,$5
	b	.L646
	dins	$2,$5,32,32

.L644:
	beqz	$5,.L647
	sll	$3,$4,0

	sll	$6,$3,$5
	move	$2,$0
	dins	$2,$6,0,32
	dsra	$4,$4,32
	sll	$4,$4,$5
	subu	$5,$0,$5
	srl	$3,$3,$5
	or	$3,$3,$4
	b	.L646
	dins	$2,$3,32,32

.L647:
	move	$2,$4
.L646:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$6,0x40
	beqz	$2,.L649
	move	$fp,$sp

	move	$3,$0
	b	.L651
	dsll	$2,$5,$6

.L649:
	beqz	$6,.L652
	dsll	$3,$5,$6

	dsll	$4,$4,$6
	subu	$6,$0,$6
	dsrl	$6,$5,$6
	b	.L651
	or	$2,$6,$4

.L652:
	move	$3,$5
	move	$2,$4
.L651:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$5,0x20
	beqz	$2,.L654
	move	$fp,$sp

	dsra	$4,$4,32
	sra	$3,$4,31
	move	$2,$0
	dins	$2,$3,32,32
	sra	$4,$4,$5
	b	.L656
	dins	$2,$4,0,32

.L654:
	beqz	$5,.L657
	dsra	$3,$4,32

	sra	$6,$3,$5
	move	$2,$0
	dins	$2,$6,32,32
	subu	$6,$0,$5
	sll	$3,$3,$6
	sll	$4,$4,0
	srl	$5,$4,$5
	or	$3,$3,$5
	b	.L656
	dins	$2,$3,0,32

.L657:
	move	$2,$4
.L656:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$6,0x40
	beqz	$2,.L659
	move	$fp,$sp

	dsra	$2,$4,63
	b	.L661
	dsra	$3,$4,$6

.L659:
	beqz	$6,.L662
	dsra	$2,$4,$6

	subu	$7,$0,$6
	dsll	$4,$4,$7
	dsrl	$6,$5,$6
	b	.L661
	or	$3,$4,$6

.L662:
	move	$3,$5
	move	$2,$4
.L661:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dext	$5,$4,24,8
	dext	$3,$4,8,24
	andi	$3,$3,0xff00
	sll	$2,$4,8
	li	$6,16711680			# 0xff0000
	and	$2,$2,$6
	sll	$4,$4,24
	or	$4,$4,$5
	or	$4,$4,$3
	or	$2,$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	li	$2,65536			# 0x10000
	sltu	$2,$4,$2
	beqz	$2,.L670
	move	$fp,$sp

	b	.L666
	li	$3,16			# 0x10

.L670:
	move	$3,$0
.L666:
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	beqz	$2,.L667
	li	$5,8			# 0x8

	move	$5,$0
.L667:
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xf0
	bnez	$2,.L672
	addu	$3,$5,$3

	b	.L668
	li	$5,4			# 0x4

.L672:
	move	$5,$0
.L668:
	li	$2,4			# 0x4
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xc
	bnez	$2,.L673
	addu	$3,$3,$5

	b	.L669
	li	$2,2			# 0x2

.L673:
	move	$2,$0
.L669:
	li	$5,2			# 0x2
	subu	$6,$5,$2
	srl	$4,$4,$6
	addu	$3,$3,$2
	andi	$2,$4,0x2
	sltu	$2,$2,1
	subu	$5,$5,$4
	mul	$4,$2,$5
	addu	$2,$4,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sltu	$3,$4,1
	dsubu	$2,$0,$3
	daddiu	$3,$3,-1
	and	$3,$3,$4
	and	$4,$2,$5
	or	$3,$3,$4
	dclz	$3,$3
	andi	$2,$2,0x40
	daddu	$2,$3,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	bnez	$2,.L677
	move	$fp,$sp

	dsra	$2,$4,32
	slt	$2,$3,$2
	bnez	$2,.L678
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bnez	$2,.L679
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$4,$5,$4
	bnez	$4,.L680
	li	$2,1			# 0x1

	b	.L676
	nop

.L677:
	b	.L676
	move	$2,$0

.L678:
	b	.L676
	li	$2,2			# 0x2

.L679:
	b	.L676
	move	$2,$0

.L680:
	li	$2,2			# 0x2
.L676:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.reloc	1f,R_MICROMIPS_JALR,__cmpdi2
1:	jalr	$25
	move	$fp,$sp

	addiu	$2,$2,-1
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	jraddiusp	32
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	slt	$2,$4,$6
	bnez	$2,.L684
	move	$fp,$sp

	slt	$2,$6,$4
	bnez	$2,.L688
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bnez	$2,.L688
	move	$2,$0

	sltu	$2,$7,$5
	bnez	$2,.L687
	li	$2,1			# 0x1

	b	.L683
	nop

.L684:
	b	.L683
	move	$2,$0

	b	.L683
	move	$2,$0

.L687:
	li	$2,2			# 0x2
.L683:
.L688:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$4,0xffff
	bnez	$2,.L694
	move	$fp,$sp

	b	.L690
	li	$3,16			# 0x10

.L694:
	move	$3,$0
.L690:
	srl	$4,$4,$3
	andi	$2,$4,0x00ff
	beqz	$2,.L691
	li	$2,8			# 0x8

	move	$2,$0
.L691:
	srl	$4,$4,$2
	addu	$3,$2,$3
	andi	$2,$4,0xf
	beqz	$2,.L692
	li	$2,4			# 0x4

	move	$2,$0
.L692:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	beqz	$2,.L693
	li	$2,2			# 0x2

	move	$2,$0
.L693:
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
	addu	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	addu	$2,$2,$5
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	bnez	$5,.L700
	move	$fp,$sp

	beqz	$4,.L702
	dsubu	$3,$0,$4

	and	$3,$3,$4
	dclz	$3,$3
	li	$2,63			# 0x3f
	subu	$2,$2,$3
	b	.L701
	addiu	$2,$2,65

.L700:
	dsubu	$3,$0,$5
	and	$3,$3,$5
	dclz	$3,$3
	li	$2,63			# 0x3f
	subu	$2,$2,$3
	b	.L701
	addiu	$2,$2,1

.L702:
	move	$2,$0
.L701:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$5,0x20
	beqz	$2,.L704
	move	$fp,$sp

	move	$2,$0
	dins	$2,$0,32,32
	dsra	$4,$4,32
	srl	$5,$4,$5
	b	.L706
	dins	$2,$5,0,32

.L704:
	beqz	$5,.L707
	dsra	$3,$4,32

	srl	$6,$3,$5
	move	$2,$0
	dins	$2,$6,32,32
	subu	$6,$0,$5
	sll	$3,$3,$6
	sll	$4,$4,0
	srl	$5,$4,$5
	or	$3,$3,$5
	b	.L706
	dins	$2,$3,0,32

.L707:
	move	$2,$4
.L706:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	andi	$2,$6,0x40
	beqz	$2,.L709
	move	$fp,$sp

	move	$2,$0
	b	.L711
	dsrl	$3,$4,$6

.L709:
	beqz	$6,.L712
	dsrl	$2,$4,$6

	subu	$7,$0,$6
	dsll	$4,$4,$7
	dsrl	$6,$5,$6
	b	.L711
	or	$3,$4,$6

.L712:
	move	$3,$5
	move	$2,$4
.L711:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	dins	$2,$4,32,32
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	move	$16,$4
	move	$17,$5
	sw	$4,0($fp)
	lw	$19,0($fp)
	sw	$5,4($fp)
	lw	$18,4($fp)
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
	move	$sp,$fp
	ld	$31,72($sp)
	ld	$fp,64($sp)
	ld	$28,56($sp)
	ld	$19,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jraddiusp	80
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	move	$2,$6
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	64
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
	jraddiusp	16
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
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	srl	$2,$4,16
	xor	$4,$4,$2
	dext	$2,$4,8,24
	xor	$4,$4,$2
	dext	$2,$4,4,28
	xor	$4,$4,$2
	andi	$4,$4,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$4
	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	dext	$2,$3,16,16
	addu	$3,$2,$3
	dext	$2,$3,8,24
	addu	$2,$2,$3
	andi	$2,$2,0x7f
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	andi	$2,$2,0x3f
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	ldc1	$f0,%got_ofst(.LC12)($2)
.L728:
	andi	$2,$5,0x1
	beqz	$2,.L731
	srl	$2,$5,31

	mul.d	$f0,$f0,$f12
.L731:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L727
	b	.L728
	mul.d	$f12,$f12,$f12

.L727:
	beqz	$3,.L729
	ld	$2,%got_page(.LC12)($4)

	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
.L729:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	lwc1	$f0,%got_ofst(.LC14)($2)
.L735:
	andi	$2,$5,0x1
	beqz	$2,.L738
	srl	$2,$5,31

	mul.s	$f0,$f0,$f12
.L738:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L734
	b	.L735
	mul.s	$f12,$f12,$f12

.L734:
	beqz	$3,.L736
	ld	$2,%got_page(.LC14)($4)

	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
.L736:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	bnez	$2,.L741
	move	$fp,$sp

	dsra	$2,$4,32
	sltu	$2,$3,$2
	bnez	$2,.L742
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bnez	$2,.L743
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$4,$5,$4
	bnez	$4,.L744
	li	$2,1			# 0x1

	b	.L740
	nop

.L741:
	b	.L740
	move	$2,$0

.L742:
	b	.L740
	li	$2,2			# 0x2

.L743:
	b	.L740
	move	$2,$0

.L744:
	li	$2,2			# 0x2
.L740:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.reloc	1f,R_MICROMIPS_JALR,__ucmpdi2
1:	jalr	$25
	move	$fp,$sp

	addiu	$2,$2,-1
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	jraddiusp	32
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	sltu	$2,$4,$6
	bnez	$2,.L748
	move	$fp,$sp

	sltu	$2,$6,$4
	bnez	$2,.L752
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bnez	$2,.L752
	move	$2,$0

	sltu	$2,$7,$5
	bnez	$2,.L751
	li	$2,1			# 0x1

	b	.L747
	nop

.L748:
	b	.L747
	move	$2,$0

	b	.L747
	move	$2,$0

.L751:
	li	$2,2			# 0x2
.L747:
.L752:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
