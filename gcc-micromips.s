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
	b	.L39
	move	$3,$4

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
	b	.L53
	move	$fp,$sp

.L56:
	daddiu	$5,$5,1
.L53:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,.L54
	nop

	bnez	$3,.L56
	daddiu	$4,$4,1

	daddiu	$4,$4,-1
.L54:
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
	b	.L58
	move	$2,$4

.L59:
	daddiu	$2,$2,1
.L58:
	lb	$5,0($2)
	bnezc	$5,.L59
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
	beqz	$6,.L65
	move	$fp,$sp

	daddiu	$6,$6,-1
	b	.L62
	daddu	$2,$4,$6

.L66:
	daddiu	$5,$5,1
.L62:
	lbu	$3,0($4)
	beqzc	$3,.L63
	lbu	$3,0($5)
	beqzc	$3,.L63
	beq	$4,$2,.L63
	nop

	lbu	$6,0($4)
	lbu	$3,0($5)
	beq	$6,$3,.L66
	daddiu	$4,$4,1

	daddiu	$4,$4,-1
.L63:
	lbu	$2,0($4)
	lbu	$3,0($5)
	b	.L61
	subu	$2,$2,$3

.L65:
	move	$2,$0
.L61:
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
	b	.L68
	move	$3,$4

.L69:
	lb	$2,1($3)
	sb	$2,0($5)
	lb	$2,0($3)
	sb	$2,1($5)
	daddiu	$5,$5,2
	daddiu	$3,$3,2
.L68:
	daddu	$2,$4,$6
	dsubu	$2,$2,$3
	slt	$2,$2,2
	beqzc	$2,.L69
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
	beq	$4,$2,.L74
	move	$fp,$sp

	xori	$4,$4,0x9
	b	.L73
	sltu	$2,$4,1

.L74:
	li	$2,1			# 0x1
.L73:
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
	bnez	$2,.L78
	move	$fp,$sp

	xori	$4,$4,0x7f
	b	.L77
	sltu	$2,$4,1

.L78:
	li	$2,1			# 0x1
.L77:
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
	beq	$4,$2,.L86
	move	$fp,$sp

	addiu	$4,$4,-9
	b	.L85
	sltu	$2,$4,5

.L86:
	li	$2,1			# 0x1
.L85:
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
	bnez	$2,.L91
	move	$fp,$sp

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bnez	$2,.L95
	li	$2,1			# 0x1

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bnez	$2,.L93
	li	$2,-65536			# 0xffffffffffff0000

	addiu	$2,$2,7
	addu	$2,$2,$4
	b	.L90
	sltu	$2,$2,3

.L91:
	b	.L90
	li	$2,1			# 0x1

.L93:
	li	$2,1			# 0x1
.L90:
.L95:
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
	beqz	$2,.L98
	move	$fp,$sp

	addiu	$2,$4,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	b	.L99
	sltu	$2,$2,1

.L98:
	sltu	$2,$4,8232
	bnez	$2,.L100
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bnez	$2,.L105
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$2,$4
	sltu	$2,$2,8185
	bnez	$2,.L105
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$2,$4
	li	$3,1048576			# 0x100000
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beqz	$2,.L103
	andi	$2,$4,0xfffe

	xori	$2,$2,0xfffe
	b	.L99
	sltu	$2,$0,$2

.L100:
	b	.L99
	li	$2,1			# 0x1

	b	.L99
	li	$2,1			# 0x1

.L103:
	move	$2,$0
.L99:
.L105:
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
	bnez	$2,.L108
	move	$fp,$sp

	ori	$2,$4,0x20
	addiu	$2,$2,-97
	b	.L107
	sltu	$2,$2,6

.L108:
	li	$2,1			# 0x1
.L107:
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
	bc1t	$fcc0,.L114
	move	$fp,$sp

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L119
	mov.d	$f0,$f13

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L118
	nop

	b	.L112
	sub.d	$f0,$f12,$f13

.L114:
	b	.L112
	mov.d	$f0,$f12

.L118:
	dmtc1	$0,$f0
.L112:
.L119:
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
	bc1t	$fcc0,.L123
	move	$fp,$sp

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L128
	mov.s	$f0,$f13

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L127
	nop

	b	.L121
	sub.s	$f0,$f12,$f13

.L123:
	b	.L121
	mov.s	$f0,$f12

.L127:
	mtc1	$0,$f0
.L121:
.L128:
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
	bc1t	$fcc0,.L133
	sdc1	$f13,8($fp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L134
	mov.d	$f0,$f13

	ld	$3,0($fp)
	dsrl	$3,$3,63
	ld	$2,8($fp)
	dext	$2,$2,63,1
	beq	$3,$2,.L131
	ldc1	$f1,8($fp)

	b	.L130
	movz.d	$f0,$f12,$3

.L131:
	ldc1	$f0,0($fp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L138
	nop

	b	.L130
	mov.d	$f0,$f1

.L133:
	b	.L130
	ldc1	$f0,8($fp)

.L134:
	ldc1	$f0,0($fp)
.L138:
.L130:
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
	bc1t	$fcc0,.L143
	swc1	$f13,4($fp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L144
	mov.s	$f0,$f13

	lw	$3,0($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($fp)
	and	$2,$2,$4
	beq	$3,$2,.L141
	lwc1	$f1,4($fp)

	lw	$2,0($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	b	.L140
	movz.s	$f0,$f12,$2

.L141:
	lwc1	$f0,0($fp)
	c.lt.s	$fcc2,$f0,$f1
	bc1f	$fcc2,.L148
	nop

	b	.L140
	mov.s	$f0,$f1

.L143:
	b	.L140
	lwc1	$f0,4($fp)

.L144:
	lwc1	$f0,0($fp)
.L148:
.L140:
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

	bnez	$2,.L153
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$19,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$18,$f12

	bnez	$2,.L150
	dsrl	$2,$16,63

	dext	$3,$18,63,1
	beq	$2,$3,.L151
	ld	$25,%call16(__lttf2)($28)

	bgez	$16,.L159
	dmtc1	$16,$f0

	move	$17,$19
	b	.L150
	move	$16,$18

.L151:
	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	dmtc1	$16,$f12

	bgez	$2,.L159
	dmtc1	$16,$f0

	move	$17,$19
	b	.L150
	move	$16,$18

.L153:
	move	$17,$19
	move	$16,$18
.L150:
	dmtc1	$16,$f0
.L159:
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
	bc1t	$fcc0,.L164
	sdc1	$f13,8($fp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L165
	ld	$3,0($fp)

	dsrl	$3,$3,63
	ld	$2,8($fp)
	dext	$2,$2,63,1
	beq	$3,$2,.L162
	ldc1	$f1,8($fp)

	mov.d	$f0,$f12
	b	.L161
	movz.d	$f0,$f13,$3

.L162:
	ldc1	$f0,0($fp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L169
	nop

	b	.L161
	nop

.L164:
	b	.L161
	ldc1	$f0,8($fp)

.L165:
	b	.L161
	ldc1	$f0,0($fp)

.L169:
	ldc1	$f0,8($fp)
.L161:
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
	bc1t	$fcc0,.L174
	swc1	$f13,4($fp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L175
	lw	$3,0($fp)

	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($fp)
	and	$2,$2,$4
	beq	$3,$2,.L172
	lwc1	$f1,4($fp)

	lw	$2,0($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	mov.s	$f0,$f12
	b	.L171
	movz.s	$f0,$f13,$2

.L172:
	lwc1	$f0,0($fp)
	c.lt.s	$fcc2,$f0,$f1
	bc1f	$fcc2,.L179
	nop

	b	.L171
	nop

.L174:
	b	.L171
	lwc1	$f0,4($fp)

.L175:
	b	.L171
	lwc1	$f0,0($fp)

.L179:
	lwc1	$f0,4($fp)
.L171:
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

	bnez	$2,.L181
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$16,$f12

	bnez	$2,.L185
	dsrl	$2,$18,63

	dext	$3,$16,63,1
	beq	$2,$3,.L182
	ld	$25,%call16(__lttf2)($28)

	bgez	$18,.L190
	dmtc1	$16,$f0

	move	$17,$19
	b	.L181
	move	$16,$18

.L182:
	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$19,$f13
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	dmtc1	$18,$f12

	bgez	$2,.L190
	dmtc1	$16,$f0

	move	$17,$19
	b	.L181
	move	$16,$18

.L185:
	move	$17,$19
	move	$16,$18
.L181:
	dmtc1	$16,$f0
.L190:
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
	ld	$5,%got_page(s.0)($6)
	b	.L192
	daddiu	$5,$5,%got_ofst(s.0)

.L193:
	ld	$3,%got_page(digits)($6)
	daddiu	$3,$3,%got_ofst(digits)
	daddu	$2,$2,$3
	lb	$2,0($2)
	sb	$2,0($5)
	daddiu	$5,$5,1
	dext	$4,$4,6,26
.L192:
	bnez	$4,.L193
	andi	$2,$4,0x3f

	sb	$0,0($5)
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
	bnez	$5,.L197
	move	$fp,$sp

	sd	$0,8($4)
	b	.L196
	sd	$0,0($4)

.L197:
	ld	$2,0($5)
	sd	$2,0($4)
	sd	$5,8($4)
	sd	$4,0($5)
	ld	$2,0($4)
	beqzc	$2,.L196
	sd	$4,8($2)
.L196:
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
	beqz	$2,.L200
	move	$fp,$sp

	ld	$3,8($4)
	sd	$3,8($2)
.L200:
	ld	$2,8($4)
	beqzc	$2,.L199
	ld	$3,0($4)
	sd	$3,0($2)
.L199:
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
	b	.L203
	move	$16,$0

.L206:
	move	$25,$20
	jalr	$25
	move	$4,$19

	bnez	$2,.L204
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L205
	daddu	$2,$22,$2

.L204:
	daddiu	$16,$16,1
.L203:
	bne	$16,$21,.L206
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

.L205:
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
	b	.L208
	move	$16,$0

.L211:
	move	$25,$19
	jalr	$25
	move	$4,$20

	bnez	$2,.L209
	daddu	$17,$17,$18

	dmult	$16,$18
	mflo	$2
	b	.L210
	daddu	$2,$22,$2

.L209:
	daddiu	$16,$16,1
.L208:
	bne	$16,$21,.L211
	move	$5,$17

	move	$2,$0
.L210:
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
	bgez	$4,.L213
	move	$2,$4

	subu	$2,$0,$4
.L213:
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
	b	.L215
	move	$16,$4

.L216:
	daddiu	$16,$16,1
.L215:
	ld	$25,%got_disp(isspace)($28)
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnez	$2,.L216
	li	$3,43			# 0x2b

	lb	$2,0($16)
	beq	$2,$3,.L222
	li	$3,45			# 0x2d

	bne	$2,$3,.L223
	nop

	b	.L217
	li	$4,1			# 0x1

.L222:
	move	$4,$0
.L217:
	b	.L218
	daddiu	$16,$16,1

.L223:
	move	$4,$0
.L218:
	b	.L219
	move	$2,$0

.L220:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	subu	$2,$3,$2
.L219:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnez	$3,.L220
	daddiu	$16,$16,1

	bnezc	$4,.L221
	subu	$2,$0,$2
.L221:
	move	$sp,$fp
	ld	$31,24($fp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
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
	b	.L226
	move	$16,$4

.L227:
	daddiu	$16,$16,1
.L226:
	ld	$25,%got_disp(isspace)($28)
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

	b	.L228
	li	$4,1			# 0x1

.L233:
	move	$4,$0
.L228:
	b	.L229
	daddiu	$16,$16,1

.L234:
	move	$4,$0
.L229:
	b	.L230
	move	$2,$0

.L231:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	dsubu	$2,$3,$2
.L230:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnez	$3,.L231
	daddiu	$16,$16,1

	bnezc	$4,.L232
	dsubu	$2,$0,$2
.L232:
	move	$sp,$fp
	ld	$31,24($fp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
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
	b	.L237
	move	$16,$4

.L238:
	daddiu	$16,$16,1
.L237:
	ld	$25,%got_disp(isspace)($28)
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	lb	$4,0($16)

	bnez	$2,.L238
	li	$3,43			# 0x2b

	lb	$2,0($16)
	beq	$2,$3,.L244
	li	$3,45			# 0x2d

	bne	$2,$3,.L245
	nop

	b	.L239
	li	$4,1			# 0x1

.L244:
	move	$4,$0
.L239:
	b	.L240
	daddiu	$16,$16,1

.L245:
	move	$4,$0
.L240:
	b	.L241
	move	$2,$0

.L242:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	dsubu	$2,$3,$2
.L241:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnez	$3,.L242
	daddiu	$16,$16,1

	bnezc	$4,.L243
	dsubu	$2,$0,$2
.L243:
	move	$sp,$fp
	ld	$31,24($fp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
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
	b	.L248
	move	$20,$8

.L252:
	dsrl	$2,$16,1
	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$5,$17
	jalr	$25
	move	$4,$21

	bgez	$2,.L249
	nop

	b	.L248
	dsrl	$16,$16,1

.L249:
	blez	$2,.L253
	daddu	$19,$17,$18

	dsrl	$2,$16,1
	daddiu	$16,$16,-1
	dsubu	$16,$16,$2
.L248:
	bnez	$16,.L252
	move	$25,$20

	b	.L251
	move	$2,$0

.L253:
	move	$2,$17
.L251:
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
	b	.L255
	move	$18,$5

.L258:
	sra	$2,$16,1
	dmult	$2,$19
	mflo	$17
	daddu	$17,$18,$17
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	beqzc	$2,.L259
	blez	$2,.L257
	nop

	daddu	$18,$17,$19
	addiu	$16,$16,-1
.L257:
	sra	$16,$16,1
.L255:
	bnez	$16,.L258
	move	$6,$20

	b	.L256
	move	$2,$0

.L259:
	move	$2,$17
.L256:
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
	bgez	$4,.L262
	move	$2,$4

	dsubu	$2,$0,$4
.L262:
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
	bgez	$4,.L265
	move	$2,$4

	dsubu	$2,$0,$4
.L265:
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
	bgez	$4,.L268
	move	$2,$4

	dsubu	$2,$0,$4
.L268:
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
	b	.L271
	move	$2,$4

.L271:
	lw	$3,0($2)
	beqzc	$3,.L276
	bne	$5,$3,.L271
	daddiu	$2,$2,4

	daddiu	$2,$2,-4
	lw	$3,0($2)
.L276:
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
	b	.L278
	move	$fp,$sp

.L283:
	daddiu	$5,$5,4
.L278:
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L279
	nop

	beqzc	$3,.L279
	bnez	$2,.L283
	daddiu	$4,$4,4

	daddiu	$4,$4,-4
.L279:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L282
	lw	$2,0($4)
	b	.L281
	slt	$2,$3,$2

.L282:
	li	$2,-1			# 0xffffffffffffffff
.L281:
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
.L285:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$6,-4($5)
	bnez	$6,.L285
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
	b	.L287
	move	$2,$4

.L288:
	daddiu	$2,$2,4
.L287:
	lw	$3,0($2)
	bnezc	$3,.L288
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
	b	.L290
	move	$fp,$sp

.L296:
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L290:
	beqz	$6,.L297
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L291
	nop

	beqzc	$3,.L291
	bnez	$2,.L296
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
.L291:
	beqz	$6,.L297
	move	$2,$0

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L295
	lw	$2,0($4)
	b	.L293
	slt	$2,$3,$2

.L295:
	li	$2,-1			# 0xffffffffffffffff
.L293:
.L297:
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
	b	.L299
	move	$2,$4

.L304:
	daddiu	$2,$2,4
.L299:
	beqzc	$6,.L300
	lw	$3,0($2)
	bne	$5,$3,.L304
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
.L300:
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
	b	.L306
	move	$fp,$sp

.L312:
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L306:
	beqz	$6,.L313
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	beq	$3,$2,.L312
	daddiu	$6,$6,-1

	daddiu	$6,$6,1
	beqz	$6,.L313
	move	$2,$0

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L311
	lw	$2,0($4)
	b	.L309
	slt	$2,$3,$2

.L311:
	li	$2,-1			# 0xffffffffffffffff
.L309:
.L313:
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
	b	.L315
	move	$3,$4

.L316:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$7,-4($5)
	sw	$7,-4($3)
.L315:
	daddiu	$6,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	bne	$6,$7,.L316
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
	beq	$4,$5,.L318
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$3,$3,$4
	beqz	$3,.L323
	daddu	$3,$2,$4

	daddu	$5,$5,$4
	b	.L320
	daddiu	$6,$2,-4

.L321:
	lw	$4,0($5)
	sw	$4,0($3)
.L320:
	daddiu	$3,$3,-4
	bne	$3,$6,.L321
	daddiu	$5,$5,-4

	b	.L318
	nop

.L322:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$4,-4($5)
	b	.L319
	sw	$4,-4($3)

.L323:
	move	$3,$2
.L319:
	daddiu	$6,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	bne	$6,$7,.L322
	nop

.L318:
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
	b	.L325
	move	$3,$4

.L326:
	daddiu	$3,$3,4
	sw	$5,-4($3)
.L325:
	daddiu	$6,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	bne	$6,$7,.L326
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
	beqz	$2,.L328
	move	$fp,$sp

	daddu	$2,$4,$6
	b	.L329
	daddu	$5,$5,$6

.L330:
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
.L329:
	bne	$2,$4,.L330
	nop

	b	.L327
	nop

.L328:
	beq	$4,$5,.L327
	nop

	daddu	$6,$5,$6
	b	.L332
	move	$2,$4

.L333:
	daddiu	$2,$2,1
	daddiu	$5,$5,1
	lb	$3,-1($2)
	sb	$3,-1($5)
.L332:
	bne	$5,$6,.L333
	nop

.L327:
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
	b	.L348
	move	$2,$0

.L351:
	andi	$3,$3,0x1
	beqzc	$3,.L349
	b	.L350
	addiu	$2,$2,1

.L349:
	addiu	$2,$2,1
.L348:
	li	$3,32			# 0x20
	bne	$2,$3,.L351
	srl	$3,$4,$2

	move	$2,$0
.L350:
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
	beqz	$4,.L356
	move	$fp,$sp

	b	.L354
	li	$2,1			# 0x1

.L355:
	sra	$4,$4,1
	addiu	$2,$2,1
.L354:
	andi	$3,$4,0x1
	beqzc	$3,.L355
	b	.L353
	nop

.L356:
	move	$2,$0
.L353:
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
	bc1t	$fcc0,.L360
	move	$fp,$sp

	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$fcc1,$f0,$f12
	bc1f	$fcc1,.L363
	li	$2,1			# 0x1

	b	.L358
	nop

.L360:
	b	.L358
	li	$2,1			# 0x1

.L363:
	move	$2,$0
.L358:
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
	bc1t	$fcc0,.L367
	move	$fp,$sp

	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$fcc1,$f0,$f12
	bc1f	$fcc1,.L370
	li	$2,1			# 0x1

	b	.L365
	nop

.L367:
	b	.L365
	li	$2,1			# 0x1

.L370:
	move	$2,$0
.L365:
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

	bltz	$2,.L374
	ld	$25,%call16(__gttf2)($28)

	ld	$2,%got_page(.LC5)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	ldc1	$f14,%got_ofst(.LC5)($2)
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__gttf2
1:	jalr	$25
	dmtc1	$16,$f12

	b	.L372
	slt	$2,$0,$2

.L374:
	li	$2,1			# 0x1
.L372:
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
	bc1t	$fcc0,.L379
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f12,$f1
	bc1t	$fcc1,.L379
	nop

	bgez	$5,.L383
	ld	$2,%got_page(.LC7)($3)

	ld	$2,%got_page(.LC6)($3)
	b	.L382
	lwc1	$f1,%got_ofst(.LC6)($2)

.L383:
	lwc1	$f1,%got_ofst(.LC7)($2)
.L382:
	andi	$2,$5,0x1
	beqz	$2,.L384
	srl	$2,$5,31

	mul.s	$f0,$f0,$f1
.L384:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L379
	b	.L382
	mul.s	$f1,$f1,$f1

.L379:
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
	bc1t	$fcc0,.L386
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f12,$f1
	bc1t	$fcc1,.L386
	nop

	bgez	$5,.L390
	ld	$2,%got_page(.LC9)($3)

	ld	$2,%got_page(.LC8)($3)
	b	.L389
	ldc1	$f1,%got_ofst(.LC8)($2)

.L390:
	ldc1	$f1,%got_ofst(.LC9)($2)
.L389:
	andi	$2,$5,0x1
	beqz	$2,.L391
	srl	$2,$5,31

	mul.d	$f0,$f0,$f1
.L391:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L386
	b	.L389
	mul.d	$f1,$f1,$f1

.L386:
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

	bnez	$2,.L393
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

	beqz	$2,.L400
	dmtc1	$18,$f0

	bgez	$20,.L398
	ld	$2,%got_page(.LC11)($28)

	ld	$2,%got_page(.LC10)($28)
	ld	$17,%got_ofst(.LC10+8)($2)
	b	.L397
	ld	$16,%got_ofst(.LC10)($2)

.L398:
	ld	$17,%got_ofst(.LC11+8)($2)
	ld	$16,%got_ofst(.LC11)($2)
.L397:
	andi	$2,$20,0x1
	beqz	$2,.L401
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
.L401:
	addu	$2,$2,$20
	sra	$20,$2,1
	beqz	$20,.L393
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
	b	.L397
	move	$16,$4

.L393:
	dmtc1	$18,$f0
.L400:
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
	b	.L403
	move	$3,$4

.L404:
	daddiu	$5,$5,1
	lb	$8,-1($5)
	daddiu	$3,$3,1
	lb	$7,-1($3)
	xor	$7,$7,$8
	sb	$7,-1($3)
.L403:
	bne	$3,$6,.L404
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

	b	.L406
	daddu	$2,$18,$2

.L408:
	daddiu	$17,$17,1
	daddiu	$2,$2,1
	daddiu	$16,$16,-1
.L406:
	beqzc	$16,.L407
	lb	$3,0($17)
	bnez	$3,.L408
	sb	$3,0($2)

.L407:
	bnezc	$16,.L409
	sb	$0,0($2)
.L409:
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
	b	.L411
	move	$2,$0

.L413:
	daddiu	$2,$2,1
.L411:
	beq	$2,$5,.L412
	daddu	$3,$4,$2

	lb	$3,0($3)
	bnezc	$3,.L413
.L412:
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
	b	.L415
	move	$fp,$sp

.L417:
	lb	$7,-1($3)
	lb	$6,0($4)
	beq	$7,$6,.L419
	move	$2,$4

.L420:
	lb	$6,0($3)
	bnez	$6,.L417
	daddiu	$3,$3,1

	daddiu	$3,$3,-1
	daddiu	$4,$4,1
.L415:
	lb	$2,0($4)
	bnez	$2,.L420
	move	$3,$5

.L419:
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
.L423:
	lb	$3,0($4)
	bne	$5,$3,.L422
	nop

	move	$2,$4
.L422:
	daddiu	$4,$4,1
	lb	$3,-1($4)
	bnezc	$3,.L423
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
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalr	$25
	move	$4,$5

	beqz	$2,.L429
	move	$18,$2

	b	.L427
	lb	$19,0($17)

.L428:
	move	$6,$18
	move	$5,$17
	ld	$25,%got_disp(strncmp)($28)
	.reloc	1f,R_MICROMIPS_JALR,strncmp
1:	jalr	$25
	move	$4,$16

	beqz	$2,.L430
	move	$2,$16

	daddiu	$16,$16,1
.L427:
	move	$5,$19
	ld	$25,%got_disp(strchr)($28)
	.reloc	1f,R_MICROMIPS_JALR,strchr
1:	jalr	$25
	move	$4,$16

	bnez	$2,.L428
	move	$16,$2

	b	.L426
	move	$2,$0

.L429:
	move	$2,$16
.L430:
.L426:
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
	bc1f	$fcc0,.L446
	sdc1	$f12,0($fp)

	c.lt.d	$fcc1,$f0,$f13
	bc1t	$fcc1,.L445
	li	$2,-1			# 0xffffffffffffffff

	dmtc1	$0,$f0
.L446:
	ldc1	$f1,0($fp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L442
	nop

	c.lt.d	$fcc3,$f13,$f0
	bc1f	$fcc3,.L444
	ldc1	$f0,0($fp)

	li	$2,-1			# 0xffffffffffffffff
.L445:
	dsll	$2,$2,63
	ld	$3,0($fp)
	xor	$2,$3,$2
	b	.L435
	sd	$2,0($fp)

.L442:
	b	.L444
	ldc1	$f0,0($fp)

.L435:
	ldc1	$f0,0($fp)
.L444:
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
	beqz	$7,.L452
	daddu	$18,$4,$18

	sltu	$5,$5,$7
	bnez	$5,.L453
	sltu	$2,$18,$16

	b	.L455
	nop

.L451:
	lb	$3,0($16)
	lb	$2,0($17)
	bne	$3,$2,.L450
	daddiu	$6,$19,-1

	daddiu	$5,$17,1
	ld	$25,%got_disp(memcmp)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcmp
1:	jalr	$25
	daddiu	$4,$16,1

	beqz	$2,.L454
	move	$2,$16

.L450:
	daddiu	$16,$16,1
	sltu	$2,$18,$16
.L455:
	beqz	$2,.L451
	move	$2,$0

	b	.L448
	nop

.L452:
	b	.L448
	move	$2,$4

.L453:
	move	$2,$0
.L454:
.L448:
	move	$sp,$fp
	ld	$31,56($fp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	64
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
	bc1f	$fcc0,.L474
	sdc1	$f12,0($fp)

	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($fp)
	xor	$2,$3,$2
	sd	$2,0($fp)
	b	.L458
	li	$4,1			# 0x1

.L474:
	move	$4,$0
.L458:
	ld	$2,%got_page(.LC12)($6)
	ldc1	$f0,%got_ofst(.LC12)($2)
	ldc1	$f1,0($fp)
	c.le.d	$fcc1,$f0,$f1
	bc1t	$fcc1,.L469
	ld	$2,%got_page(.LC8)($6)

	b	.L475
	ldc1	$f0,%got_ofst(.LC8)($2)

.L462:
	addiu	$2,$2,1
	ldc1	$f0,%got_ofst(.LC8)($3)
	ldc1	$f1,0($fp)
	mul.d	$f0,$f1,$f0
	b	.L460
	sdc1	$f0,0($fp)

.L469:
	move	$2,$0
.L460:
	ld	$3,%got_page(.LC12)($6)
	ldc1	$f0,%got_ofst(.LC12)($3)
	ldc1	$f1,0($fp)
	c.le.d	$fcc2,$f0,$f1
	bc1t	$fcc2,.L462
	ld	$3,%got_page(.LC8)($6)

	b	.L477
	sw	$2,0($5)

.L475:
	ldc1	$f1,0($fp)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L476
	dmtc1	$0,$f0

	c.eq.d	$fcc4,$f1,$f0
	bc1f	$fcc4,.L471
	move	$2,$0

	b	.L477
	sw	$2,0($5)

.L466:
	addiu	$2,$2,-1
	add.d	$f0,$f0,$f0
	sdc1	$f0,0($fp)
.L471:
	ld	$3,%got_page(.LC8)($6)
	ldc1	$f0,%got_ofst(.LC8)($3)
	ldc1	$f1,0($fp)
	c.lt.d	$fcc5,$f1,$f0
	bc1t	$fcc5,.L466
	ldc1	$f0,0($fp)

	b	.L477
	sw	$2,0($5)

.L476:
	move	$2,$0
	sw	$2,0($5)
.L477:
	beqz	$4,.L478
	ldc1	$f0,0($fp)

	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($fp)
	xor	$2,$3,$2
	sd	$2,0($fp)
	ldc1	$f0,0($fp)
.L478:
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
	b	.L480
	move	$2,$0

.L482:
	beqzc	$3,.L481
	daddu	$2,$2,$5
.L481:
	dsll	$5,$5,1
	dsrl	$4,$4,1
.L480:
	bnez	$4,.L482
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
	b	.L484
	li	$3,1			# 0x1

.L488:
	sll	$5,$5,1
	sll	$3,$3,1
.L484:
	sltu	$7,$5,$2
	beqz	$7,.L486
	move	$7,$0

	addiu	$4,$4,-1
	beqzc	$4,.L486
	bgez	$5,.L488
	nop

	b	.L486
	nop

.L490:
	bnezc	$4,.L489
	subu	$2,$2,$5
	or	$7,$7,$3
.L489:
	dext	$3,$3,1,31
	dext	$5,$5,1,31
.L486:
	bnez	$3,.L490
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
	bgez	$4,.L495
	move	$fp,$sp

	nor	$4,$0,$4
	seb	$4,$4
.L495:
	beqz	$4,.L497
	sll	$2,$4,8

	clz	$2,$2
	b	.L496
	addiu	$2,$2,-1

.L497:
	li	$2,7			# 0x7
.L496:
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
	bgez	$4,.L499
	move	$fp,$sp

	nor	$4,$0,$4
.L499:
	beqz	$4,.L501
	dclz	$4,$4

	b	.L500
	addiu	$2,$4,-1

.L501:
	li	$2,63			# 0x3f
.L500:
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
	b	.L503
	move	$2,$0

.L505:
	beqzc	$3,.L504
	addu	$2,$2,$5
.L504:
	dext	$4,$4,1,31
	sll	$5,$5,1
.L503:
	bnez	$4,.L505
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
	bnez	$3,.L507
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beqzc	$3,.L508
.L507:
	move	$3,$5
	move	$7,$4
	dsll	$9,$9,3
	b	.L509
	daddu	$9,$9,$5

.L510:
	ld	$8,0($3)
	sd	$8,0($7)
	daddiu	$3,$3,8
	daddiu	$7,$7,8
.L509:
	bne	$3,$9,.L510
	nop

	b	.L511
	dext	$2,$2,0,32

.L512:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L511:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L512
	daddu	$3,$5,$2

	b	.L506
	nop

.L514:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L508:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L514
	dext	$2,$6,0,32

.L506:
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
	bnez	$2,.L516
	dext	$8,$6,1,31

	dext	$2,$6,0,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	beqzc	$2,.L517
.L516:
	move	$2,$5
	move	$3,$4
	dsll	$8,$8,1
	b	.L518
	daddu	$8,$8,$5

.L519:
	lh	$7,0($2)
	sh	$7,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,2
.L518:
	bne	$2,$8,.L519
	nop

	andi	$2,$6,0x1
	beqzc	$2,.L515
	addiu	$6,$6,-1
	dext	$6,$6,0,32
	daddu	$5,$5,$6
	daddu	$4,$4,$6
	lb	$2,0($5)
	b	.L515
	sb	$2,0($4)

.L521:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L517:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L521
	dext	$2,$6,0,32

.L515:
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
	bnez	$3,.L523
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beqzc	$3,.L524
.L523:
	move	$3,$5
	move	$7,$4
	dsll	$9,$9,2
	b	.L525
	daddu	$9,$9,$5

.L526:
	lw	$8,0($3)
	sw	$8,0($7)
	daddiu	$3,$3,4
	daddiu	$7,$7,4
.L525:
	bne	$3,$9,.L526
	nop

	b	.L527
	dext	$2,$2,0,32

.L528:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L527:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L528
	daddu	$3,$5,$2

	b	.L522
	nop

.L530:
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L524:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L530
	dext	$2,$6,0,32

.L522:
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
	bltz	$4,.L536
	move	$fp,$sp

	dmtc1	$4,$f0
	b	.L535
	cvt.d.l	$f0,$f0

.L536:
	andi	$2,$4,0x1
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	add.d	$f0,$f0,$f0
.L535:
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
	bltz	$4,.L539
	move	$fp,$sp

	dmtc1	$4,$f0
	b	.L538
	cvt.s.l	$f0,$f0

.L539:
	andi	$2,$4,0x1
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	add.s	$f0,$f0,$f0
.L538:
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
	b	.L542
	move	$2,$0

.L544:
	subu	$3,$3,$2
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bnezc	$3,.L543
	addiu	$2,$2,1
.L542:
	li	$3,16			# 0x10
	bne	$2,$3,.L544
	li	$3,15			# 0xf

.L543:
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
	b	.L546
	move	$2,$0

.L548:
	andi	$3,$3,0x1
	bnezc	$3,.L547
	addiu	$2,$2,1
.L546:
	li	$3,16			# 0x10
	bne	$2,$3,.L548
	sra	$3,$4,$2

.L547:
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
	bc1f	$fcc0,.L554
	move	$fp,$sp

	sub.s	$f12,$f12,$f0
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	li	$3,32768			# 0x8000
	b	.L552
	daddu	$2,$2,$3

.L554:
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
.L552:
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
	b	.L556
	move	$3,$0

.L558:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beqzc	$5,.L557
	addiu	$2,$2,1
.L557:
	addiu	$3,$3,1
.L556:
	li	$5,16			# 0x10
	bne	$3,$5,.L558
	nop

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
	b	.L560
	move	$3,$0

.L562:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beqzc	$5,.L561
	addiu	$2,$2,1
.L561:
	addiu	$3,$3,1
.L560:
	li	$5,16			# 0x10
	bne	$3,$5,.L562
	nop

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
	b	.L564
	move	$2,$0

.L566:
	beqzc	$3,.L565
	addu	$2,$2,$5
.L565:
	dext	$4,$4,1,31
	sll	$5,$5,1
.L564:
	bnez	$4,.L566
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
	beqz	$4,.L572
	move	$fp,$sp

	b	.L569
	move	$2,$0

.L571:
	beqzc	$3,.L570
	addu	$2,$2,$4
.L570:
	sll	$4,$4,1
	dext	$5,$5,1,31
.L569:
	bnez	$5,.L571
	andi	$3,$5,0x1

	b	.L568
	nop

.L572:
	move	$2,$0
.L568:
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
	b	.L574
	li	$3,1			# 0x1

.L578:
	sll	$5,$5,1
	sll	$3,$3,1
.L574:
	sltu	$7,$5,$2
	beqz	$7,.L576
	move	$7,$0

	addiu	$4,$4,-1
	beqzc	$4,.L576
	bgez	$5,.L578
	nop

	b	.L576
	nop

.L580:
	bnezc	$4,.L579
	subu	$2,$2,$5
	or	$7,$7,$3
.L579:
	dext	$3,$3,1,31
	dext	$5,$5,1,31
.L576:
	bnez	$3,.L580
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
	bc1t	$fcc0,.L586
	move	$fp,$sp

	c.lt.s	$fcc1,$f13,$f12
	bc1t	$fcc1,.L587
	move	$2,$0

	b	.L585
	nop

.L586:
	b	.L585
	li	$2,-1			# 0xffffffffffffffff

.L587:
	li	$2,1			# 0x1
.L585:
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
	bc1t	$fcc0,.L590
	move	$fp,$sp

	c.lt.d	$fcc1,$f13,$f12
	bc1t	$fcc1,.L591
	move	$2,$0

	b	.L589
	nop

.L590:
	b	.L589
	li	$2,-1			# 0xffffffffffffffff

.L591:
	li	$2,1			# 0x1
.L589:
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
	bgez	$5,.L601
	move	$fp,$sp

	subu	$5,$0,$5
	b	.L595
	li	$7,1			# 0x1

.L601:
	move	$7,$0
.L595:
	li	$3,33			# 0x21
	b	.L596
	move	$2,$0

.L599:
	beqzc	$6,.L597
	addu	$2,$2,$4
.L597:
	sll	$4,$4,1
	sra	$5,$5,1
.L596:
	beqzc	$5,.L598
	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	bnez	$3,.L599
	andi	$6,$5,0x1

.L598:
	beqzc	$7,.L600
	subu	$2,$0,$2
.L600:
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
	bgez	$4,.L607
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))

	dsubu	$4,$0,$4
	b	.L604
	li	$16,1			# 0x1

.L607:
	move	$16,$0
.L604:
	bgez	$5,.L605
	nop

	dsubu	$5,$0,$5
	xori	$16,$16,0x1
.L605:
	sll	$4,$4,0
	sll	$5,$5,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	move	$6,$0

	beqz	$16,.L606
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L606:
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
	bgez	$4,.L612
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))

	dsubu	$4,$0,$4
	b	.L609
	li	$16,1			# 0x1

.L612:
	move	$16,$0
.L609:
	bgez	$5,.L610
	nop

	dsubu	$5,$0,$5
.L610:
	sll	$4,$4,0
	sll	$5,$5,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	li	$6,1			# 0x1

	beqz	$16,.L611
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L611:
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
	b	.L614
	li	$3,1			# 0x1

.L618:
	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	andi	$3,$3,0xffff
.L614:
	sltu	$7,$5,$2
	beqz	$7,.L616
	move	$7,$0

	addiu	$4,$4,-1
	beqzc	$4,.L616
	seh	$7,$5
	bgez	$7,.L618
	move	$7,$0

	b	.L616
	nop

.L620:
	bnezc	$4,.L619
	subu	$2,$2,$5
	andi	$2,$2,0xffff
	or	$7,$7,$3
.L619:
	dsrl	$3,$3,1
	dsrl	$5,$5,1
.L616:
	bnez	$3,.L620
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
	b	.L625
	li	$3,1			# 0x1

.L629:
	dsll	$5,$5,1
	dsll	$3,$3,1
.L625:
	sltu	$4,$5,$2
	bnezc	$4,.L626
	b	.L627
	move	$7,$0

.L633:
	b	.L627
	move	$7,$0

.L626:
	addiu	$7,$7,-1
	beqz	$7,.L633
	dext	$4,$5,31,1

	beqzc	$4,.L629
	b	.L627
	move	$7,$0

.L631:
	bnezc	$4,.L630
	dsubu	$2,$2,$5
	or	$7,$7,$3
.L630:
	dsrl	$3,$3,1
	dsrl	$5,$5,1
.L627:
	bnez	$3,.L631
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
	beqz	$2,.L636
	move	$fp,$sp

	move	$2,$0
	dins	$2,$0,0,32
	sll	$4,$4,0
	sll	$5,$4,$5
	b	.L638
	dins	$2,$5,32,32

.L636:
	beqz	$5,.L639
	sll	$3,$4,0

	sll	$6,$3,$5
	move	$2,$0
	dins	$2,$6,0,32
	dsra	$4,$4,32
	sll	$4,$4,$5
	subu	$5,$0,$5
	srl	$3,$3,$5
	or	$3,$3,$4
	b	.L638
	dins	$2,$3,32,32

.L639:
	move	$2,$4
.L638:
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
	beqz	$2,.L641
	move	$fp,$sp

	move	$3,$0
	b	.L643
	dsll	$2,$5,$6

.L641:
	beqz	$6,.L644
	dsll	$3,$5,$6

	dsll	$4,$4,$6
	subu	$6,$0,$6
	dsrl	$6,$5,$6
	b	.L643
	or	$2,$6,$4

.L644:
	move	$3,$5
	move	$2,$4
.L643:
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
	beqz	$2,.L646
	move	$fp,$sp

	dsra	$4,$4,32
	sra	$3,$4,31
	move	$2,$0
	dins	$2,$3,32,32
	sra	$4,$4,$5
	b	.L648
	dins	$2,$4,0,32

.L646:
	beqz	$5,.L649
	dsra	$3,$4,32

	sra	$6,$3,$5
	move	$2,$0
	dins	$2,$6,32,32
	subu	$6,$0,$5
	sll	$3,$3,$6
	sll	$4,$4,0
	srl	$5,$4,$5
	or	$3,$3,$5
	b	.L648
	dins	$2,$3,0,32

.L649:
	move	$2,$4
.L648:
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
	beqz	$2,.L651
	move	$fp,$sp

	dsra	$2,$4,63
	b	.L653
	dsra	$3,$4,$6

.L651:
	beqz	$6,.L654
	dsra	$2,$4,$6

	subu	$7,$0,$6
	dsll	$4,$4,$7
	dsrl	$6,$5,$6
	b	.L653
	or	$3,$4,$6

.L654:
	move	$3,$5
	move	$2,$4
.L653:
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
	beqz	$2,.L662
	move	$fp,$sp

	b	.L658
	li	$3,16			# 0x10

.L662:
	move	$3,$0
.L658:
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	beqz	$2,.L659
	li	$5,8			# 0x8

	move	$5,$0
.L659:
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xf0
	bnez	$2,.L664
	addu	$3,$5,$3

	b	.L660
	li	$5,4			# 0x4

.L664:
	move	$5,$0
.L660:
	li	$2,4			# 0x4
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xc
	bnez	$2,.L665
	addu	$3,$3,$5

	b	.L661
	li	$2,2			# 0x2

.L665:
	move	$2,$0
.L661:
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
	bnez	$2,.L669
	move	$fp,$sp

	dsra	$2,$4,32
	slt	$2,$3,$2
	bnez	$2,.L670
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bnez	$2,.L671
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$4,$5,$4
	bnez	$4,.L672
	li	$2,1			# 0x1

	b	.L668
	nop

.L669:
	b	.L668
	move	$2,$0

.L670:
	b	.L668
	li	$2,2			# 0x2

.L671:
	b	.L668
	move	$2,$0

.L672:
	li	$2,2			# 0x2
.L668:
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
	bnez	$2,.L676
	move	$fp,$sp

	slt	$2,$6,$4
	bnez	$2,.L680
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bnez	$2,.L680
	move	$2,$0

	sltu	$2,$7,$5
	bnez	$2,.L679
	li	$2,1			# 0x1

	b	.L675
	nop

.L676:
	b	.L675
	move	$2,$0

	b	.L675
	move	$2,$0

.L679:
	li	$2,2			# 0x2
.L675:
.L680:
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
	bnez	$2,.L686
	move	$fp,$sp

	b	.L682
	li	$3,16			# 0x10

.L686:
	move	$3,$0
.L682:
	srl	$4,$4,$3
	andi	$2,$4,0x00ff
	beqz	$2,.L683
	li	$2,8			# 0x8

	move	$2,$0
.L683:
	srl	$4,$4,$2
	addu	$3,$2,$3
	andi	$2,$4,0xf
	beqz	$2,.L684
	li	$2,4			# 0x4

	move	$2,$0
.L684:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	beqz	$2,.L685
	li	$2,2			# 0x2

	move	$2,$0
.L685:
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
	bnez	$5,.L692
	move	$fp,$sp

	beqz	$4,.L694
	dsubu	$3,$0,$4

	and	$3,$3,$4
	dclz	$3,$3
	li	$2,63			# 0x3f
	subu	$2,$2,$3
	b	.L693
	addiu	$2,$2,65

.L692:
	dsubu	$3,$0,$5
	and	$3,$3,$5
	dclz	$3,$3
	li	$2,63			# 0x3f
	subu	$2,$2,$3
	b	.L693
	addiu	$2,$2,1

.L694:
	move	$2,$0
.L693:
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
	beqz	$2,.L696
	move	$fp,$sp

	move	$2,$0
	dins	$2,$0,32,32
	dsra	$4,$4,32
	srl	$5,$4,$5
	b	.L698
	dins	$2,$5,0,32

.L696:
	beqz	$5,.L699
	dsra	$3,$4,32

	srl	$6,$3,$5
	move	$2,$0
	dins	$2,$6,32,32
	subu	$6,$0,$5
	sll	$3,$3,$6
	sll	$4,$4,0
	srl	$5,$4,$5
	or	$3,$3,$5
	b	.L698
	dins	$2,$3,0,32

.L699:
	move	$2,$4
.L698:
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
	beqz	$2,.L701
	move	$fp,$sp

	move	$2,$0
	b	.L703
	dsrl	$3,$4,$6

.L701:
	beqz	$6,.L704
	dsrl	$2,$4,$6

	subu	$7,$0,$6
	dsll	$4,$4,$7
	dsrl	$6,$5,$6
	b	.L703
	or	$3,$4,$6

.L704:
	move	$3,$5
	move	$2,$4
.L703:
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
.L720:
	andi	$2,$5,0x1
	beqz	$2,.L723
	srl	$2,$5,31

	mul.d	$f0,$f0,$f12
.L723:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L719
	b	.L720
	mul.d	$f12,$f12,$f12

.L719:
	beqz	$3,.L721
	ld	$2,%got_page(.LC12)($4)

	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
.L721:
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
.L727:
	andi	$2,$5,0x1
	beqz	$2,.L730
	srl	$2,$5,31

	mul.s	$f0,$f0,$f12
.L730:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L726
	b	.L727
	mul.s	$f12,$f12,$f12

.L726:
	beqz	$3,.L728
	ld	$2,%got_page(.LC14)($4)

	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
.L728:
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
	bnez	$2,.L733
	move	$fp,$sp

	dsra	$2,$4,32
	sltu	$2,$3,$2
	bnez	$2,.L734
	sll	$3,$5,0

	sll	$2,$4,0
	sltu	$2,$2,$3
	bnez	$2,.L735
	sll	$4,$4,0

	sll	$5,$5,0
	sltu	$4,$5,$4
	bnez	$4,.L736
	li	$2,1			# 0x1

	b	.L732
	nop

.L733:
	b	.L732
	move	$2,$0

.L734:
	b	.L732
	li	$2,2			# 0x2

.L735:
	b	.L732
	move	$2,$0

.L736:
	li	$2,2			# 0x2
.L732:
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
	bnez	$2,.L740
	move	$fp,$sp

	sltu	$2,$6,$4
	bnez	$2,.L744
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bnez	$2,.L744
	move	$2,$0

	sltu	$2,$7,$5
	bnez	$2,.L743
	li	$2,1			# 0x1

	b	.L739
	nop

.L740:
	b	.L739
	move	$2,$0

	b	.L739
	move	$2,$0

.L743:
	li	$2,2			# 0x2
.L739:
.L744:
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
