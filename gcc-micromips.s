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
	move	$2,$4
	sltu	$3,$5,$4
	beqzc	$3,.L4
	daddu	$4,$5,$6
	daddu	$3,$2,$6
	b	.L5
	nop

.L6:
	daddiu	$4,$4,-1
	daddiu	$3,$3,-1
	lb	$6,0($4)
	sb	$6,0($3)
.L5:
	bne	$4,$5,.L6
	nop

	b	.L7
	nop

.L4:
	beq	$4,$5,.L7
	nop

	daddu	$6,$4,$6
	move	$4,$5
	move	$3,$2
	b	.L8
	nop

.L9:
	daddiu	$4,$4,1
	daddiu	$3,$3,1
	lb	$5,-1($4)
	sb	$5,-1($3)
.L8:
	bne	$3,$6,.L9
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
	andi	$6,$6,0xff
	b	.L11
	nop

.L13:
	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	daddiu	$4,$4,1
.L11:
	beqzc	$7,.L12
	lbu	$2,0($5)
	sb	$2,0($4)
	andi	$2,$2,0x00ff
	bne	$6,$2,.L13
	nop

.L12:
	beqzc	$7,.L15
	daddiu	$2,$4,1
	b	.L14
	nop

.L15:
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
	nop

.L19:
	daddiu	$4,$4,1
	daddiu	$6,$6,-1
.L17:
	beqzc	$6,.L18
	lbu	$2,0($4)
	bne	$5,$2,.L19
	nop

.L18:
	beqzc	$6,.L21
	move	$2,$4
	b	.L20
	nop

.L21:
	move	$2,$0
.L20:
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
	move	$fp,$sp
	b	.L23
	nop

.L25:
	daddiu	$6,$6,-1
	daddiu	$4,$4,1
	daddiu	$5,$5,1
.L23:
	beqzc	$6,.L24
	lbu	$3,0($4)
	lbu	$2,0($5)
	beq	$3,$2,.L25
	nop

.L24:
	beqzc	$6,.L27
	lbu	$2,0($4)
	lbu	$3,0($5)
	subu	$2,$2,$3
	b	.L26
	nop

.L27:
	move	$2,$0
.L26:
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
	move	$3,$4
	b	.L29
	nop

.L30:
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	lbu	$4,-1($5)
	sb	$4,-1($3)
.L29:
	bne	$3,$6,.L30
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
	b	.L32
	nop

.L34:
	daddu	$2,$4,$6
	daddiu	$3,$6,-1
	lbu	$2,0($2)
	bne	$5,$2,.L35
	nop

	daddu	$2,$4,$6
	b	.L33
	nop

.L35:
	move	$6,$3
.L32:
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L34
	nop

	move	$2,$0
.L33:
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
	b	.L37
	nop

.L38:
	sb	$5,0($3)
	daddiu	$3,$3,1
.L37:
	bne	$3,$6,.L38
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
	move	$2,$4
	b	.L40
	nop

.L41:
	daddiu	$5,$5,1
	daddiu	$2,$2,1
.L40:
	lb	$3,0($5)
	sb	$3,0($2)
	seb	$3,$3
	bnezc	$3,.L41
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
	andi	$5,$5,0xff
	b	.L43
	nop

.L45:
	daddiu	$2,$2,1
.L43:
	lb	$3,0($2)
	beqzc	$3,.L44
	lbu	$3,0($2)
	bne	$5,$3,.L45
	nop

.L44:
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
.L48:
	lb	$2,0($4)
	beq	$5,$2,.L49
	nop

	daddiu	$4,$4,1
	lb	$2,-1($4)
	bnezc	$2,.L48
	b	.L47
	nop

.L49:
	move	$2,$4
.L47:
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
	move	$fp,$sp
	b	.L51
	nop

.L53:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
.L51:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,.L52
	nop

	bnezc	$3,.L53
.L52:
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
	move	$2,$4
	b	.L55
	nop

.L56:
	daddiu	$2,$2,1
.L55:
	lb	$3,0($2)
	bnezc	$3,.L56
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
	move	$fp,$sp
	beqzc	$6,.L62
	daddiu	$6,$6,-1
	daddu	$6,$4,$6
	b	.L59
	nop

.L61:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
.L59:
	lbu	$2,0($4)
	beqzc	$2,.L60
	lbu	$2,0($5)
	beqzc	$2,.L60
	beq	$4,$6,.L60
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	beq	$3,$2,.L61
	nop

.L60:
	lbu	$2,0($4)
	lbu	$3,0($5)
	subu	$2,$2,$3
	b	.L58
	nop

.L62:
	move	$2,$0
.L58:
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
	b	.L64
	nop

.L65:
	lb	$3,1($2)
	sb	$3,0($5)
	lb	$3,0($2)
	sb	$3,1($5)
	daddiu	$5,$5,2
	daddiu	$2,$2,2
.L64:
	daddu	$3,$4,$6
	dsubu	$3,$3,$2
	slt	$3,$3,2
	beqzc	$3,.L65
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
	move	$fp,$sp
	li	$2,32			# 0x20
	beq	$4,$2,.L70
	nop

	li	$2,9			# 0x9
	bne	$4,$2,.L71
	nop

	li	$2,1			# 0x1
	b	.L69
	nop

.L70:
	li	$2,1			# 0x1
	b	.L69
	nop

.L71:
	move	$2,$0
.L69:
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
	move	$fp,$sp
	sltu	$2,$4,32
	bnezc	$2,.L74
	li	$2,127			# 0x7f
	bne	$4,$2,.L75
	nop

	li	$2,1			# 0x1
	b	.L73
	nop

.L74:
	li	$2,1			# 0x1
	b	.L73
	nop

.L75:
	move	$2,$0
.L73:
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
	move	$fp,$sp
	li	$2,32			# 0x20
	beq	$4,$2,.L82
	nop

	addiu	$4,$4,-9
	sltu	$4,$4,5
	beqzc	$4,.L83
	li	$2,1			# 0x1
	b	.L81
	nop

.L82:
	li	$2,1			# 0x1
	b	.L81
	nop

.L83:
	move	$2,$0
.L81:
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
	move	$fp,$sp
	sltu	$2,$4,32
	bnezc	$2,.L87
	addiu	$2,$4,-127
	sltu	$2,$2,33
	bnezc	$2,.L88
	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bnezc	$2,.L89
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$2,$2,$4
	sltu	$2,$2,3
	beqzc	$2,.L90
	li	$2,1			# 0x1
	b	.L86
	nop

.L87:
	li	$2,1			# 0x1
	b	.L86
	nop

.L88:
	li	$2,1			# 0x1
	b	.L86
	nop

.L89:
	li	$2,1			# 0x1
	b	.L86
	nop

.L90:
	move	$2,$0
.L86:
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
	move	$fp,$sp
	sltu	$2,$4,255
	beqzc	$2,.L93
	addiu	$2,$4,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	sltu	$2,$2,1
	b	.L94
	nop

.L93:
	sltu	$2,$4,8232
	bnezc	$2,.L95
	addiu	$2,$4,-8234
	li	$3,47062			# 0xb7d6
	sltu	$2,$2,$3
	bnezc	$2,.L96
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$2,$4
	sltu	$2,$2,8185
	bnezc	$2,.L97
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$2,$4
	li	$3,1048576			# 0x100000
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beqzc	$2,.L98
	andi	$4,$4,0xfffe
	li	$2,65534			# 0xfffe
	beq	$4,$2,.L99
	nop

	li	$2,1			# 0x1
	b	.L94
	nop

.L95:
	li	$2,1			# 0x1
	b	.L94
	nop

.L96:
	li	$2,1			# 0x1
	b	.L94
	nop

.L97:
	li	$2,1			# 0x1
	b	.L94
	nop

.L98:
	move	$2,$0
	b	.L94
	nop

.L99:
	move	$2,$0
.L94:
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
	move	$fp,$sp
	addiu	$2,$4,-48
	sltu	$2,$2,10
	bnezc	$2,.L102
	ori	$4,$4,0x20
	addiu	$4,$4,-97
	sltu	$4,$4,6
	beqzc	$4,.L103
	li	$2,1			# 0x1
	b	.L101
	nop

.L102:
	li	$2,1			# 0x1
	b	.L101
	nop

.L103:
	move	$2,$0
.L101:
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
	move	$fp,$sp
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L108
	nop

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L109
	nop

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L112
	nop

	sub.d	$f0,$f12,$f13
	b	.L106
	nop

.L108:
	mov.d	$f0,$f12
	b	.L106
	nop

.L109:
	mov.d	$f0,$f13
	b	.L106
	nop

.L112:
	dmtc1	$0,$f0
.L106:
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
	move	$fp,$sp
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L116
	nop

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L117
	nop

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L120
	nop

	sub.s	$f0,$f12,$f13
	b	.L114
	nop

.L116:
	mov.s	$f0,$f12
	b	.L114
	nop

.L117:
	mov.s	$f0,$f13
	b	.L114
	nop

.L120:
	mtc1	$0,$f0
.L114:
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
	sdc1	$f13,8($fp)
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L125
	nop

	mov.d	$f0,$f13
	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L126
	nop

	ld	$3,0($fp)
	dsrl	$3,$3,63
	ld	$2,8($fp)
	dext	$2,$2,63,1
	beq	$3,$2,.L123
	nop

	ld	$2,0($fp)
	bgez	$2,.L127
	nop

	b	.L122
	nop

.L123:
	ldc1	$f0,0($fp)
	ldc1	$f1,8($fp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L130
	nop

	mov.d	$f0,$f1
	b	.L122
	nop

.L125:
	ldc1	$f0,8($fp)
	b	.L122
	nop

.L126:
	ldc1	$f0,0($fp)
	b	.L122
	nop

.L127:
	ldc1	$f0,0($fp)
	b	.L122
	nop

.L130:
	ldc1	$f0,0($fp)
.L122:
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
	swc1	$f13,4($fp)
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L135
	nop

	mov.s	$f0,$f13
	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L136
	nop

	lw	$2,0($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,4($fp)
	and	$3,$3,$4
	beq	$2,$3,.L133
	nop

	lw	$2,0($fp)
	bgez	$2,.L137
	nop

	b	.L132
	nop

.L133:
	lwc1	$f0,0($fp)
	lwc1	$f1,4($fp)
	c.lt.s	$fcc2,$f0,$f1
	bc1f	$fcc2,.L140
	nop

	mov.s	$f0,$f1
	b	.L132
	nop

.L135:
	lwc1	$f0,4($fp)
	b	.L132
	nop

.L136:
	lwc1	$f0,0($fp)
	b	.L132
	nop

.L137:
	lwc1	$f0,0($fp)
	b	.L132
	nop

.L140:
	lwc1	$f0,0($fp)
.L132:
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
	dmtc1	$16,$f14
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	bnezc	$2,.L145
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$19,$f13
	dmtc1	$18,$f12
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	bnezc	$2,.L142
	dsrl	$2,$16,63
	dext	$3,$18,63,1
	beq	$2,$3,.L143
	nop

	bgez	$16,.L142
	nop

	move	$17,$19
	move	$16,$18
	b	.L142
	nop

.L143:
	ld	$25,%call16(__lttf2)($28)
	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$17,$f13
	dmtc1	$16,$f12
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalrs	$25
	nop

	bgez	$2,.L142
	nop

	move	$17,$19
	move	$16,$18
	b	.L142
	nop

.L145:
	move	$17,$19
	move	$16,$18
.L142:
	dmtc1	$16,$f0
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
	sdc1	$f13,8($fp)
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L155
	nop

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L156
	nop

	ld	$3,0($fp)
	dsrl	$3,$3,63
	ld	$2,8($fp)
	dext	$2,$2,63,1
	beq	$3,$2,.L153
	nop

	ld	$2,0($fp)
	bgez	$2,.L157
	nop

	mov.d	$f0,$f12
	b	.L152
	nop

.L153:
	ldc1	$f0,0($fp)
	ldc1	$f1,8($fp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L160
	nop

	b	.L152
	nop

.L155:
	ldc1	$f0,8($fp)
	b	.L152
	nop

.L156:
	ldc1	$f0,0($fp)
	b	.L152
	nop

.L157:
	ldc1	$f0,8($fp)
	b	.L152
	nop

.L160:
	ldc1	$f0,8($fp)
.L152:
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
	swc1	$f13,4($fp)
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L165
	nop

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L166
	nop

	lw	$2,0($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,4($fp)
	and	$3,$3,$4
	beq	$2,$3,.L163
	nop

	lw	$2,0($fp)
	bgez	$2,.L167
	nop

	mov.s	$f0,$f12
	b	.L162
	nop

.L163:
	lwc1	$f0,0($fp)
	lwc1	$f1,4($fp)
	c.lt.s	$fcc2,$f0,$f1
	bc1f	$fcc2,.L170
	nop

	b	.L162
	nop

.L165:
	lwc1	$f0,4($fp)
	b	.L162
	nop

.L166:
	lwc1	$f0,0($fp)
	b	.L162
	nop

.L167:
	lwc1	$f0,4($fp)
	b	.L162
	nop

.L170:
	lwc1	$f0,4($fp)
.L162:
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
	dmtc1	$18,$f14
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	bnezc	$2,.L172
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	dmtc1	$16,$f12
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	bnezc	$2,.L176
	dsrl	$2,$18,63
	dext	$3,$16,63,1
	beq	$2,$3,.L173
	nop

	bgez	$18,.L172
	nop

	move	$17,$19
	move	$16,$18
	b	.L172
	nop

.L173:
	ld	$25,%call16(__lttf2)($28)
	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$19,$f13
	dmtc1	$18,$f12
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalrs	$25
	nop

	bgez	$2,.L172
	nop

	move	$17,$19
	move	$16,$18
	b	.L172
	nop

.L176:
	move	$17,$19
	move	$16,$18
.L172:
	dmtc1	$16,$f0
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
	ld	$2,%got_page(s.0)($6)
	daddiu	$2,$2,%got_ofst(s.0)
	b	.L182
	nop

.L183:
	andi	$3,$4,0x3f
	ld	$5,%got_page(digits)($6)
	daddiu	$5,$5,%got_ofst(digits)
	daddu	$3,$3,$5
	lb	$3,0($3)
	sb	$3,0($2)
	daddiu	$2,$2,1
	dext	$4,$4,6,26
.L182:
	bnezc	$4,.L183
	sb	$0,0($2)
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
	move	$fp,$sp
	bnezc	$5,.L187
	sd	$0,8($4)
	sd	$0,0($4)
	b	.L186
	nop

.L187:
	ld	$2,0($5)
	sd	$2,0($4)
	sd	$5,8($4)
	sd	$4,0($5)
	ld	$2,0($4)
	beqzc	$2,.L186
	sd	$4,8($2)
.L186:
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
	move	$fp,$sp
	ld	$2,0($4)
	beqzc	$2,.L190
	ld	$3,8($4)
	sd	$3,8($2)
.L190:
	ld	$2,8($4)
	beqzc	$2,.L189
	ld	$3,0($4)
	sd	$3,0($2)
.L189:
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
	move	$18,$4
	move	$16,$5
	move	$19,$6
	move	$17,$7
	move	$23,$8
	ld	$21,0($6)
	move	$22,$5
	move	$20,$0
	b	.L193
	nop

.L196:
	move	$5,$22
	move	$4,$18
	move	$25,$23
	jalrs	$25
	nop

	daddu	$22,$22,$17
	bnezc	$2,.L194
	dmult	$20,$17
	mflo	$2
	daddu	$2,$16,$2
	b	.L195
	nop

.L194:
	daddiu	$20,$20,1
.L193:
	bne	$20,$21,.L196
	nop

	daddiu	$2,$21,1
	sd	$2,0($19)
	dmult	$17,$21
	mflo	$4
	move	$6,$17
	move	$5,$18
	daddu	$4,$16,$4
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalrs	$25
	nop

.L195:
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
	move	$21,$4
	move	$16,$5
	move	$17,$7
	move	$20,$8
	ld	$22,0($6)
	move	$19,$5
	move	$18,$0
	b	.L198
	nop

.L201:
	move	$5,$19
	move	$4,$21
	move	$25,$20
	jalrs	$25
	nop

	daddu	$19,$19,$17
	bnezc	$2,.L199
	dmult	$18,$17
	mflo	$2
	daddu	$2,$16,$2
	b	.L200
	nop

.L199:
	daddiu	$18,$18,1
.L198:
	bne	$18,$22,.L201
	nop

	move	$2,$0
.L200:
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
	move	$2,$4
	bgez	$4,.L203
	nop

	subu	$2,$0,$4
.L203:
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
	move	$16,$4
	b	.L205
	nop

.L206:
	daddiu	$16,$16,1
.L205:
	lb	$4,0($16)
	ld	$25,%got_disp(isspace)($28)
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L206
	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L212
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L213
	nop

	li	$4,1			# 0x1
	b	.L207
	nop

.L212:
	move	$4,$0
.L207:
	daddiu	$16,$16,1
	b	.L208
	nop

.L213:
	move	$4,$0
.L208:
	move	$2,$0
	b	.L209
	nop

.L210:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	daddiu	$16,$16,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	subu	$2,$3,$2
.L209:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnezc	$3,.L210
	bnezc	$4,.L211
	subu	$2,$0,$2
.L211:
	move	$sp,$fp
	ld	$31,24($sp)
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
	move	$16,$4
	b	.L216
	nop

.L217:
	daddiu	$16,$16,1
.L216:
	lb	$4,0($16)
	ld	$25,%got_disp(isspace)($28)
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L217
	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L223
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L224
	nop

	li	$4,1			# 0x1
	b	.L218
	nop

.L223:
	move	$4,$0
.L218:
	daddiu	$16,$16,1
	b	.L219
	nop

.L224:
	move	$4,$0
.L219:
	move	$2,$0
	b	.L220
	nop

.L221:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	daddiu	$16,$16,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	dsubu	$2,$3,$2
.L220:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnezc	$3,.L221
	bnezc	$4,.L222
	dsubu	$2,$0,$2
.L222:
	move	$sp,$fp
	ld	$31,24($sp)
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
	move	$16,$4
	b	.L227
	nop

.L228:
	daddiu	$16,$16,1
.L227:
	lb	$4,0($16)
	ld	$25,%got_disp(isspace)($28)
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L228
	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L234
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L235
	nop

	li	$4,1			# 0x1
	b	.L229
	nop

.L234:
	move	$4,$0
.L229:
	daddiu	$16,$16,1
	b	.L230
	nop

.L235:
	move	$4,$0
.L230:
	move	$2,$0
	b	.L231
	nop

.L232:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	daddiu	$16,$16,1
	lb	$2,-1($16)
	addiu	$2,$2,-48
	dsubu	$2,$3,$2
.L231:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bnezc	$3,.L232
	bnezc	$4,.L233
	dsubu	$2,$0,$2
.L233:
	move	$sp,$fp
	ld	$31,24($sp)
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
	move	$20,$8
	b	.L238
	nop

.L242:
	dsrl	$2,$16,1
	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$5,$17
	move	$4,$21
	move	$25,$20
	jalrs	$25
	nop

	bgez	$2,.L239
	nop

	dsrl	$16,$16,1
	b	.L238
	nop

.L239:
	blez	$2,.L243
	nop

	daddu	$19,$17,$18
	dsrl	$2,$16,1
	daddiu	$16,$16,-1
	dsubu	$16,$16,$2
.L238:
	bnezc	$16,.L242
	move	$2,$0
	b	.L241
	nop

.L243:
	move	$2,$17
.L241:
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
	move	$18,$5
	b	.L245
	nop

.L248:
	sra	$2,$16,1
	dmult	$2,$19
	mflo	$17
	daddu	$17,$18,$17
	move	$6,$20
	move	$5,$17
	move	$4,$22
	move	$25,$21
	jalrs	$25
	nop

	beqzc	$2,.L249
	blez	$2,.L247
	nop

	daddu	$18,$17,$19
	addiu	$16,$16,-1
.L247:
	sra	$16,$16,1
.L245:
	bnezc	$16,.L248
	move	$2,$0
	b	.L246
	nop

.L249:
	move	$2,$17
.L246:
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
	mflo	$2
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	sw	$2,0($fp)
	sw	$4,4($fp)
	move	$2,$0
	lwu	$3,0($fp)
	dins	$2,$3,32,32
	dext	$3,$4,0,32
	dins	$2,$3,0,32
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
	move	$2,$4
	bgez	$4,.L252
	nop

	dsubu	$2,$0,$4
.L252:
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
	mflo	$5
	sd	$5,0($fp)
	sd	$4,8($fp)
	move	$2,$5
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
	move	$2,$4
	bgez	$4,.L255
	nop

	dsubu	$2,$0,$4
.L255:
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
	mflo	$5
	sd	$5,0($fp)
	sd	$4,8($fp)
	move	$2,$5
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
	move	$2,$4
	bgez	$4,.L258
	nop

	dsubu	$2,$0,$4
.L258:
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
	mflo	$5
	sd	$5,0($fp)
	sd	$4,8($fp)
	move	$2,$5
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
	b	.L261
	nop

.L263:
	daddiu	$4,$4,4
.L261:
	lw	$2,0($4)
	beqzc	$2,.L262
	lw	$2,0($4)
	bne	$5,$2,.L263
	nop

.L262:
	lw	$2,0($4)
	beqzc	$2,.L265
	move	$2,$4
	b	.L264
	nop

.L265:
	move	$2,$0
.L264:
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
	move	$fp,$sp
	b	.L267
	nop

.L269:
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L267:
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L268
	nop

	beqzc	$3,.L268
	lw	$2,0($5)
	bnezc	$2,.L269
.L268:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L271
	lw	$2,0($4)
	slt	$2,$3,$2
	b	.L270
	nop

.L271:
	li	$2,-1			# 0xffffffffffffffff
.L270:
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
.L273:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$4,-4($5)
	sw	$4,-4($3)
	lw	$4,-4($3)
	bnezc	$4,.L273
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
	move	$2,$4
	b	.L275
	nop

.L276:
	daddiu	$2,$2,4
.L275:
	lw	$3,0($2)
	bnezc	$3,.L276
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
	move	$fp,$sp
	b	.L278
	nop

.L280:
	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L278:
	beqzc	$6,.L279
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L279
	nop

	beqzc	$3,.L279
	lw	$2,0($5)
	bnezc	$2,.L280
.L279:
	beqzc	$6,.L282
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L283
	lw	$2,0($4)
	slt	$2,$3,$2
	b	.L281
	nop

.L282:
	move	$2,$0
	b	.L281
	nop

.L283:
	li	$2,-1			# 0xffffffffffffffff
.L281:
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
	b	.L285
	nop

.L287:
	daddiu	$6,$6,-1
	daddiu	$4,$4,4
.L285:
	beqzc	$6,.L286
	lw	$2,0($4)
	bne	$5,$2,.L287
	nop

.L286:
	beqzc	$6,.L289
	move	$2,$4
	b	.L288
	nop

.L289:
	move	$2,$0
.L288:
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
	move	$fp,$sp
	b	.L291
	nop

.L293:
	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L291:
	beqzc	$6,.L292
	lw	$3,0($4)
	lw	$2,0($5)
	beq	$3,$2,.L293
	nop

.L292:
	beqzc	$6,.L295
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bnezc	$2,.L296
	lw	$2,0($4)
	slt	$2,$3,$2
	b	.L294
	nop

.L295:
	move	$2,$0
	b	.L294
	nop

.L296:
	li	$2,-1			# 0xffffffffffffffff
.L294:
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
	b	.L298
	nop

.L299:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$4,-4($5)
	sw	$4,-4($3)
.L298:
	daddiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,.L299
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
	move	$2,$4
	beq	$4,$5,.L301
	nop

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$3,$3,$4
	beqzc	$3,.L306
	daddu	$5,$5,$4
	daddu	$6,$2,$4
	daddiu	$3,$2,-4
	b	.L303
	nop

.L304:
	lw	$4,0($5)
	sw	$4,0($6)
.L303:
	daddiu	$5,$5,-4
	daddiu	$6,$6,-4
	bne	$6,$3,.L304
	nop

	b	.L301
	nop

.L305:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$4,-4($5)
	sw	$4,-4($3)
	b	.L302
	nop

.L306:
	move	$3,$2
.L302:
	daddiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,.L305
	nop

.L301:
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
	b	.L308
	nop

.L309:
	daddiu	$3,$3,4
	sw	$5,-4($3)
.L308:
	daddiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,.L309
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
	move	$fp,$sp
	sltu	$2,$4,$5
	beqzc	$2,.L311
	daddu	$2,$4,$6
	daddu	$5,$5,$6
	b	.L312
	nop

.L313:
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
.L312:
	bne	$2,$4,.L313
	nop

	b	.L310
	nop

.L311:
	beq	$4,$5,.L310
	nop

	daddu	$6,$5,$6
	move	$2,$4
	b	.L315
	nop

.L316:
	daddiu	$2,$2,1
	daddiu	$5,$5,1
	lb	$3,-1($2)
	sb	$3,-1($5)
.L315:
	bne	$5,$6,.L316
	nop

.L310:
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
	b	.L331
	nop

.L334:
	srl	$3,$4,$2
	andi	$3,$3,0x1
	beqzc	$3,.L332
	addiu	$2,$2,1
	b	.L333
	nop

.L332:
	addiu	$2,$2,1
.L331:
	li	$3,32			# 0x20
	bne	$2,$3,.L334
	nop

	move	$2,$0
.L333:
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
	move	$fp,$sp
	beqzc	$4,.L339
	li	$2,1			# 0x1
	b	.L337
	nop

.L338:
	sra	$4,$4,1
	addiu	$2,$2,1
.L337:
	andi	$3,$4,0x1
	beqzc	$3,.L338
	b	.L336
	nop

.L339:
	move	$2,$0
.L336:
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
	move	$fp,$sp
	lui	$3,%hi(%neg(%gp_rel(gl_isinff)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinff)))
	ld	$2,%got_page(.LC0)($3)
	lwc1	$f0,%got_ofst(.LC0)($2)
	c.lt.s	$fcc0,$f12,$f0
	bc1t	$fcc0,.L343
	nop

	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$fcc1,$f0,$f12
	bc1f	$fcc1,.L346
	nop

	li	$2,1			# 0x1
	b	.L341
	nop

.L343:
	li	$2,1			# 0x1
	b	.L341
	nop

.L346:
	move	$2,$0
.L341:
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
	move	$fp,$sp
	lui	$3,%hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinfd)))
	ld	$2,%got_page(.LC2)($3)
	ldc1	$f0,%got_ofst(.LC2)($2)
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L350
	nop

	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$fcc1,$f0,$f12
	bc1f	$fcc1,.L353
	nop

	li	$2,1			# 0x1
	b	.L348
	nop

.L350:
	li	$2,1			# 0x1
	b	.L348
	nop

.L353:
	move	$2,$0
.L348:
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
	ldc1	$f14,%got_ofst(.LC4)($2)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalrs	$25
	nop

	bltz	$2,.L357
	nop

	ld	$25,%call16(__gttf2)($28)
	ld	$2,%got_page(.LC5)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	ldc1	$f14,%got_ofst(.LC5)($2)
	dmtc1	$17,$f13
	dmtc1	$16,$f12
	.reloc	1f,R_MICROMIPS_JALR,__gttf2
1:	jalrs	$25
	nop

	blez	$2,.L360
	nop

	li	$2,1			# 0x1
	b	.L355
	nop

.L357:
	li	$2,1			# 0x1
	b	.L355
	nop

.L360:
	move	$2,$0
.L355:
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
	cvt.d.w	$f12,$f0
	.reloc	1f,R_MICROMIPS_JALR,__extenddftf2
1:	jalrs	$25
	nop

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
	mov.s	$f0,$f12
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L363
	nop

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f12,$f1
	bc1t	$fcc1,.L363
	nop

	bgez	$5,.L367
	nop

	ld	$2,%got_page(.LC6)($3)
	lwc1	$f1,%got_ofst(.LC6)($2)
	b	.L366
	nop

.L367:
	ld	$2,%got_page(.LC7)($3)
	lwc1	$f1,%got_ofst(.LC7)($2)
.L366:
	andi	$2,$5,0x1
	beqzc	$2,.L365
	mul.s	$f0,$f0,$f1
.L365:
	srl	$2,$5,31
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L363
	mul.s	$f1,$f1,$f1
	b	.L366
	nop

.L363:
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
	mov.d	$f0,$f12
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L369
	nop

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f12,$f1
	bc1t	$fcc1,.L369
	nop

	bgez	$5,.L373
	nop

	ld	$2,%got_page(.LC8)($3)
	ldc1	$f1,%got_ofst(.LC8)($2)
	b	.L372
	nop

.L373:
	ld	$2,%got_page(.LC9)($3)
	ldc1	$f1,%got_ofst(.LC9)($2)
.L372:
	andi	$2,$5,0x1
	beqzc	$2,.L371
	mul.d	$f0,$f0,$f1
.L371:
	srl	$2,$5,31
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L369
	mul.d	$f1,$f1,$f1
	b	.L372
	nop

.L369:
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
	dmfc1	$17,$f13
	dmfc1	$16,$f12
	move	$20,$6
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$17,$f15
	dmtc1	$16,$f14
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	bnezc	$2,.L375
	ld	$25,%call16(__addtf3)($28)
	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	dmtc1	$16,$f12
	.reloc	1f,R_MICROMIPS_JALR,__addtf3
1:	jalrs	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	ld	$25,%call16(__netf2)($28)
	dmtc1	$3,$f15
	dmtc1	$4,$f14
	dmtc1	$17,$f13
	dmtc1	$16,$f12
	.reloc	1f,R_MICROMIPS_JALR,__netf2
1:	jalrs	$25
	nop

	beqzc	$2,.L375
	bgez	$20,.L380
	nop

	ld	$2,%got_page(.LC10)($28)
	ld	$19,%got_ofst(.LC10+8)($2)
	ld	$18,%got_ofst(.LC10)($2)
	b	.L379
	nop

.L380:
	ld	$2,%got_page(.LC11)($28)
	ld	$19,%got_ofst(.LC11+8)($2)
	ld	$18,%got_ofst(.LC11)($2)
.L379:
	andi	$2,$20,0x1
	beqzc	$2,.L378
	ld	$25,%call16(__multf3)($28)
	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$17,$f13
	dmtc1	$16,$f12
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalrs	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$17,$3
	move	$16,$4
.L378:
	srl	$2,$20,31
	addu	$2,$2,$20
	sra	$20,$2,1
	beqzc	$20,.L375
	ld	$25,%call16(__multf3)($28)
	dmtc1	$19,$f15
	dmtc1	$18,$f14
	dmtc1	$19,$f13
	dmtc1	$18,$f12
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalrs	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$19,$3
	move	$18,$4
	b	.L379
	nop

.L375:
	dmtc1	$16,$f0
	dmtc1	$17,$f2
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
	move	$3,$4
	b	.L383
	nop

.L384:
	daddiu	$5,$5,1
	lb	$7,-1($5)
	daddiu	$3,$3,1
	lb	$4,-1($3)
	xor	$4,$4,$7
	sb	$4,-1($3)
.L383:
	bne	$3,$6,.L384
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
	move	$16,$6
	ld	$25,%got_disp(strlen)($28)
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalrs	$25
	nop

	daddu	$2,$18,$2
	b	.L386
	nop

.L388:
	daddiu	$17,$17,1
	daddiu	$2,$2,1
	daddiu	$16,$16,-1
.L386:
	beqzc	$16,.L387
	lb	$3,0($17)
	sb	$3,0($2)
	seb	$3,$3
	bnezc	$3,.L388
.L387:
	bnezc	$16,.L389
	sb	$0,0($2)
.L389:
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
	move	$2,$0
	b	.L391
	nop

.L393:
	daddiu	$2,$2,1
.L391:
	beq	$2,$5,.L392
	nop

	daddu	$3,$4,$2
	lb	$3,0($3)
	bnezc	$3,.L393
.L392:
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
	move	$fp,$sp
	b	.L395
	nop

.L397:
	daddiu	$2,$2,1
	lb	$6,-1($2)
	lb	$3,0($4)
	beq	$6,$3,.L399
	nop

	b	.L398
	nop

.L400:
	move	$2,$5
.L398:
	lb	$3,0($2)
	bnezc	$3,.L397
	daddiu	$4,$4,1
.L395:
	lb	$2,0($4)
	bnezc	$2,.L400
	b	.L396
	nop

.L399:
	move	$2,$4
.L396:
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
.L403:
	lb	$3,0($4)
	bne	$5,$3,.L402
	nop

	move	$2,$4
.L402:
	daddiu	$4,$4,1
	lb	$3,-1($4)
	bnezc	$3,.L403
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
	move	$4,$5
	ld	$25,%got_disp(strlen)($28)
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalrs	$25
	nop

	move	$18,$2
	beqzc	$2,.L409
	lb	$19,0($17)
	b	.L407
	nop

.L408:
	move	$6,$18
	move	$5,$17
	move	$4,$16
	ld	$25,%got_disp(strncmp)($28)
	.reloc	1f,R_MICROMIPS_JALR,strncmp
1:	jalrs	$25
	nop

	beqzc	$2,.L410
	daddiu	$16,$16,1
.L407:
	move	$5,$19
	move	$4,$16
	ld	$25,%got_disp(strchr)($28)
	.reloc	1f,R_MICROMIPS_JALR,strchr
1:	jalrs	$25
	nop

	move	$16,$2
	bnezc	$2,.L408
	move	$2,$0
	b	.L406
	nop

.L409:
	move	$2,$16
	b	.L406
	nop

.L410:
	move	$2,$16
.L406:
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
	sdc1	$f12,0($fp)
	dmtc1	$0,$f0
	c.lt.d	$fcc0,$f12,$f0
	bc1f	$fcc0,.L412
	nop

	c.lt.d	$fcc1,$f0,$f13
	bc1t	$fcc1,.L414
	nop

.L412:
	dmtc1	$0,$f0
	ldc1	$f1,0($fp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L422
	nop

	c.lt.d	$fcc3,$f13,$f0
	bc1f	$fcc3,.L423
	nop

.L414:
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($fp)
	xor	$2,$3,$2
	sd	$2,0($fp)
	b	.L415
	nop

.L422:
	b	.L415
	nop

.L423:
.L415:
	ldc1	$f0,0($fp)
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
	move	$18,$6
	move	$17,$7
	dsubu	$19,$5,$7
	daddu	$19,$4,$19
	beqzc	$7,.L429
	sltu	$5,$5,$7
	bnezc	$5,.L430
	b	.L426
	nop

.L428:
	lb	$3,0($16)
	lb	$2,0($18)
	bne	$3,$2,.L427
	nop

	daddiu	$6,$17,-1
	daddiu	$5,$18,1
	daddiu	$4,$16,1
	ld	$25,%got_disp(memcmp)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcmp
1:	jalrs	$25
	nop

	beqzc	$2,.L431
.L427:
	daddiu	$16,$16,1
.L426:
	sltu	$2,$19,$16
	beqzc	$2,.L428
	move	$2,$0
	b	.L425
	nop

.L429:
	move	$2,$4
	b	.L425
	nop

.L430:
	move	$2,$0
	b	.L425
	nop

.L431:
	move	$2,$16
.L425:
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
	move	$16,$6
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalrs	$25
	nop

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
	sdc1	$f12,0($fp)
	dmtc1	$0,$f0
	c.lt.d	$fcc0,$f12,$f0
	bc1f	$fcc0,.L450
	nop

	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($fp)
	xor	$2,$3,$2
	sd	$2,0($fp)
	li	$3,1			# 0x1
	b	.L434
	nop

.L450:
	move	$3,$0
.L434:
	ld	$2,%got_page(.LC12)($6)
	ldc1	$f0,%got_ofst(.LC12)($2)
	ldc1	$f1,0($fp)
	c.le.d	$fcc1,$f0,$f1
	bc1t	$fcc1,.L445
	nop

	b	.L451
	nop

.L438:
	addiu	$2,$2,1
	ld	$4,%got_page(.LC8)($6)
	ldc1	$f0,%got_ofst(.LC8)($4)
	ldc1	$f1,0($fp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,0($fp)
	b	.L436
	nop

.L445:
	move	$2,$0
.L436:
	ld	$4,%got_page(.LC12)($6)
	ldc1	$f0,%got_ofst(.LC12)($4)
	ldc1	$f1,0($fp)
	c.le.d	$fcc2,$f0,$f1
	bc1t	$fcc2,.L438
	nop

	b	.L439
	nop

.L451:
	ld	$2,%got_page(.LC8)($6)
	ldc1	$f0,%got_ofst(.LC8)($2)
	ldc1	$f1,0($fp)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L452
	nop

	dmtc1	$0,$f0
	c.eq.d	$fcc4,$f1,$f0
	bc1f	$fcc4,.L447
	nop

	move	$2,$0
	b	.L439
	nop

.L442:
	addiu	$2,$2,-1
	ldc1	$f0,0($fp)
	add.d	$f0,$f0,$f0
	sdc1	$f0,0($fp)
	b	.L441
	nop

.L447:
	move	$2,$0
.L441:
	ld	$4,%got_page(.LC8)($6)
	ldc1	$f0,%got_ofst(.LC8)($4)
	ldc1	$f1,0($fp)
	c.lt.d	$fcc5,$f1,$f0
	bc1t	$fcc5,.L442
	nop

	b	.L439
	nop

.L452:
	move	$2,$0
.L439:
	sw	$2,0($5)
	beqzc	$3,.L443
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($fp)
	xor	$2,$3,$2
	sd	$2,0($fp)
.L443:
	ldc1	$f0,0($fp)
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
	move	$2,$0
	b	.L454
	nop

.L456:
	andi	$3,$4,0x1
	beqzc	$3,.L455
	daddu	$2,$2,$5
.L455:
	dsll	$5,$5,1
	dsrl	$4,$4,1
.L454:
	bnezc	$4,.L456
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
	li	$3,33			# 0x21
	li	$2,1			# 0x1
	b	.L458
	nop

.L460:
	sll	$5,$5,1
	sll	$2,$2,1
.L458:
	sltu	$7,$5,$4
	beqzc	$7,.L465
	addiu	$3,$3,-1
	beqzc	$3,.L466
	bgez	$5,.L460
	nop

	move	$3,$0
	b	.L462
	nop

.L463:
	sltu	$7,$4,$5
	bnezc	$7,.L461
	subu	$4,$4,$5
	or	$3,$3,$2
.L461:
	dext	$2,$2,1,31
	dext	$5,$5,1,31
	b	.L462
	nop

.L465:
	move	$3,$0
	b	.L462
	nop

.L466:
	move	$3,$0
.L462:
	bnezc	$2,.L463
	bnezc	$6,.L467
	move	$2,$3
	b	.L464
	nop

.L467:
	move	$2,$4
.L464:
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
	move	$fp,$sp
	bgez	$4,.L469
	nop

	nor	$4,$0,$4
	seb	$4,$4
.L469:
	beqzc	$4,.L471
	sll	$2,$4,8
	clz	$2,$2
	addiu	$2,$2,-1
	b	.L470
	nop

.L471:
	li	$2,7			# 0x7
.L470:
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
	move	$fp,$sp
	bgez	$4,.L473
	nop

	nor	$4,$0,$4
.L473:
	beqzc	$4,.L475
	dclz	$4,$4
	addiu	$2,$4,-1
	b	.L474
	nop

.L475:
	li	$2,63			# 0x3f
.L474:
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
	move	$2,$0
	b	.L477
	nop

.L479:
	andi	$3,$4,0x1
	beqzc	$3,.L478
	addu	$2,$2,$5
.L478:
	dext	$4,$4,1,31
	sll	$5,$5,1
.L477:
	bnezc	$4,.L479
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
	dext	$3,$6,3,29
	li	$2,-8			# 0xfffffffffffffff8
	and	$2,$6,$2
	sltu	$7,$4,$5
	bnezc	$7,.L481
	dext	$7,$6,0,32
	daddu	$7,$5,$7
	sltu	$7,$7,$4
	beqzc	$7,.L482
.L481:
	move	$7,$5
	move	$8,$4
	dsll	$3,$3,3
	daddu	$3,$3,$5
	b	.L483
	nop

.L484:
	ld	$9,0($7)
	sd	$9,0($8)
	daddiu	$7,$7,8
	daddiu	$8,$8,8
.L483:
	bne	$7,$3,.L484
	nop

	dext	$2,$2,0,32
	b	.L485
	nop

.L486:
	daddu	$3,$5,$2
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L485:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnezc	$3,.L486
	b	.L480
	nop

.L488:
	dext	$2,$6,0,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L482:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L488
	nop

.L480:
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
	dext	$2,$6,1,31
	sltu	$3,$4,$5
	bnezc	$3,.L490
	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beqzc	$3,.L491
.L490:
	move	$3,$5
	move	$7,$4
	dsll	$2,$2,1
	daddu	$2,$2,$5
	b	.L492
	nop

.L493:
	lh	$8,0($3)
	sh	$8,0($7)
	daddiu	$3,$3,2
	daddiu	$7,$7,2
.L492:
	bne	$3,$2,.L493
	nop

	andi	$2,$6,0x1
	beqzc	$2,.L489
	addiu	$6,$6,-1
	dext	$6,$6,0,32
	daddu	$5,$5,$6
	daddu	$4,$4,$6
	lb	$2,0($5)
	sb	$2,0($4)
	b	.L489
	nop

.L495:
	dext	$2,$6,0,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L491:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L495
	nop

.L489:
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
	dext	$3,$6,2,30
	li	$2,-4			# 0xfffffffffffffffc
	and	$2,$6,$2
	sltu	$7,$4,$5
	bnezc	$7,.L497
	dext	$7,$6,0,32
	daddu	$7,$5,$7
	sltu	$7,$7,$4
	beqzc	$7,.L498
.L497:
	move	$7,$5
	move	$8,$4
	dsll	$3,$3,2
	daddu	$3,$3,$5
	b	.L499
	nop

.L500:
	lw	$9,0($7)
	sw	$9,0($8)
	daddiu	$7,$7,4
	daddiu	$8,$8,4
.L499:
	bne	$7,$3,.L500
	nop

	dext	$2,$2,0,32
	b	.L501
	nop

.L502:
	daddu	$3,$5,$2
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L501:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnezc	$3,.L502
	b	.L496
	nop

.L504:
	dext	$2,$6,0,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L498:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L504
	nop

.L496:
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
	move	$fp,$sp
	bltz	$4,.L510
	nop

	dmtc1	$4,$f0
	cvt.d.l	$f0,$f0
	b	.L509
	nop

.L510:
	andi	$2,$4,0x1
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	add.d	$f0,$f0,$f0
.L509:
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
	move	$fp,$sp
	bltz	$4,.L513
	nop

	dmtc1	$4,$f0
	cvt.s.l	$f0,$f0
	b	.L512
	nop

.L513:
	andi	$2,$4,0x1
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	add.s	$f0,$f0,$f0
.L512:
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
	b	.L516
	nop

.L518:
	li	$3,15			# 0xf
	subu	$3,$3,$2
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bnezc	$3,.L517
	addiu	$2,$2,1
.L516:
	li	$3,16			# 0x10
	bne	$2,$3,.L518
	nop

.L517:
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
	b	.L520
	nop

.L522:
	sra	$3,$4,$2
	andi	$3,$3,0x1
	bnezc	$3,.L521
	addiu	$2,$2,1
.L520:
	li	$3,16			# 0x10
	bne	$2,$3,.L522
	nop

.L521:
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
	move	$fp,$sp
	lui	$4,%hi(%neg(%gp_rel(__fixunssfsi)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__fixunssfsi)))
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	c.le.s	$fcc0,$f0,$f12
	bc1f	$fcc0,.L528
	nop

	sub.s	$f12,$f12,$f0
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	li	$3,32768			# 0x8000
	daddu	$2,$2,$3
	b	.L526
	nop

.L528:
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
.L526:
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
	b	.L530
	nop

.L532:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beqzc	$5,.L531
	addiu	$2,$2,1
.L531:
	addiu	$3,$3,1
.L530:
	li	$5,16			# 0x10
	bne	$3,$5,.L532
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
	move	$3,$0
	b	.L534
	nop

.L536:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beqzc	$5,.L535
	addiu	$2,$2,1
.L535:
	addiu	$3,$3,1
.L534:
	li	$5,16			# 0x10
	bne	$3,$5,.L536
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
	move	$2,$0
	b	.L538
	nop

.L540:
	andi	$3,$4,0x1
	beqzc	$3,.L539
	addu	$2,$2,$5
.L539:
	dext	$4,$4,1,31
	sll	$5,$5,1
.L538:
	bnezc	$4,.L540
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
	move	$fp,$sp
	beqzc	$4,.L546
	move	$2,$0
	b	.L543
	nop

.L545:
	andi	$3,$5,0x1
	beqzc	$3,.L544
	addu	$2,$2,$4
.L544:
	sll	$4,$4,1
	dext	$5,$5,1,31
.L543:
	bnezc	$5,.L545
	b	.L542
	nop

.L546:
	move	$2,$0
.L542:
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
	li	$3,33			# 0x21
	li	$2,1			# 0x1
	b	.L548
	nop

.L550:
	sll	$5,$5,1
	sll	$2,$2,1
.L548:
	sltu	$7,$5,$4
	beqzc	$7,.L555
	addiu	$3,$3,-1
	beqzc	$3,.L556
	bgez	$5,.L550
	nop

	move	$3,$0
	b	.L552
	nop

.L553:
	sltu	$7,$4,$5
	bnezc	$7,.L551
	subu	$4,$4,$5
	or	$3,$3,$2
.L551:
	dext	$2,$2,1,31
	dext	$5,$5,1,31
	b	.L552
	nop

.L555:
	move	$3,$0
	b	.L552
	nop

.L556:
	move	$3,$0
.L552:
	bnezc	$2,.L553
	bnezc	$6,.L557
	move	$2,$3
	b	.L554
	nop

.L557:
	move	$2,$4
.L554:
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
	move	$fp,$sp
	c.lt.s	$fcc0,$f12,$f13
	bc1t	$fcc0,.L560
	nop

	c.lt.s	$fcc1,$f13,$f12
	bc1t	$fcc1,.L561
	nop

	move	$2,$0
	b	.L559
	nop

.L560:
	li	$2,-1			# 0xffffffffffffffff
	b	.L559
	nop

.L561:
	li	$2,1			# 0x1
.L559:
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
	move	$fp,$sp
	c.lt.d	$fcc0,$f12,$f13
	bc1t	$fcc0,.L564
	nop

	c.lt.d	$fcc1,$f13,$f12
	bc1t	$fcc1,.L565
	nop

	move	$2,$0
	b	.L563
	nop

.L564:
	li	$2,-1			# 0xffffffffffffffff
	b	.L563
	nop

.L565:
	li	$2,1			# 0x1
.L563:
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
	move	$fp,$sp
	bgez	$5,.L575
	nop

	subu	$5,$0,$5
	li	$6,1			# 0x1
	b	.L569
	nop

.L575:
	move	$6,$0
.L569:
	li	$3,33			# 0x21
	move	$2,$0
	b	.L570
	nop

.L573:
	andi	$7,$5,0x1
	beqzc	$7,.L571
	addu	$2,$2,$4
.L571:
	sll	$4,$4,1
	sra	$5,$5,1
.L570:
	beqzc	$5,.L572
	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	bnezc	$3,.L573
.L572:
	beqzc	$6,.L574
	subu	$2,$0,$2
.L574:
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
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))
	bgez	$4,.L581
	nop

	dsubu	$4,$0,$4
	li	$16,1			# 0x1
	b	.L578
	nop

.L581:
	move	$16,$0
.L578:
	bgez	$5,.L579
	nop

	dsubu	$5,$0,$5
	xori	$16,$16,0x1
.L579:
	sll	$4,$4,0
	sll	$5,$5,0
	move	$6,$0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalrs	$25
	nop

	dext	$2,$2,0,32
	beqzc	$16,.L580
	dsubu	$2,$0,$2
.L580:
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
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))
	bgez	$4,.L586
	nop

	dsubu	$4,$0,$4
	li	$16,1			# 0x1
	b	.L583
	nop

.L586:
	move	$16,$0
.L583:
	bgez	$5,.L584
	nop

	dsubu	$5,$0,$5
.L584:
	sll	$4,$4,0
	sll	$5,$5,0
	li	$6,1			# 0x1
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalrs	$25
	nop

	dext	$2,$2,0,32
	beqzc	$16,.L585
	dsubu	$2,$0,$2
.L585:
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
	li	$3,17			# 0x11
	li	$2,1			# 0x1
	b	.L588
	nop

.L590:
	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$2,$2,1
	andi	$2,$2,0xffff
.L588:
	sltu	$7,$5,$4
	beqzc	$7,.L595
	addiu	$3,$3,-1
	beqzc	$3,.L596
	seh	$7,$5
	bgez	$7,.L590
	nop

	move	$3,$0
	b	.L592
	nop

.L593:
	sltu	$7,$4,$5
	bnezc	$7,.L591
	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$3,$3,$2
.L591:
	dsrl	$2,$2,1
	dsrl	$5,$5,1
	b	.L592
	nop

.L595:
	move	$3,$0
	b	.L592
	nop

.L596:
	move	$3,$0
.L592:
	bnezc	$2,.L593
	bnezc	$6,.L597
	move	$2,$3
	b	.L594
	nop

.L597:
	move	$2,$4
.L594:
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
	li	$3,65			# 0x41
	li	$2,1			# 0x1
	b	.L599
	nop

.L601:
	dsll	$5,$5,1
	dsll	$2,$2,1
.L599:
	sltu	$7,$5,$4
	beqzc	$7,.L606
	addiu	$3,$3,-1
	beqzc	$3,.L607
	dext	$7,$5,31,1
	beqzc	$7,.L601
	move	$3,$0
	b	.L603
	nop

.L604:
	sltu	$7,$4,$5
	bnezc	$7,.L602
	dsubu	$4,$4,$5
	or	$3,$3,$2
.L602:
	dsrl	$2,$2,1
	dsrl	$5,$5,1
	b	.L603
	nop

.L606:
	move	$3,$0
	b	.L603
	nop

.L607:
	move	$3,$0
.L603:
	bnezc	$2,.L604
	bnezc	$6,.L608
	move	$2,$3
	b	.L605
	nop

.L608:
	move	$2,$4
.L605:
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
	move	$fp,$sp
	move	$2,$4
	move	$3,$4
	andi	$4,$5,0x20
	beqzc	$4,.L610
	move	$2,$0
	dins	$2,$0,0,32
	sll	$3,$3,0
	sll	$5,$3,$5
	dins	$2,$5,32,32
	b	.L612
	nop

.L610:
	beqzc	$5,.L612
	sll	$4,$2,0
	sll	$6,$4,$5
	move	$2,$0
	dins	$2,$6,0,32
	dsra	$3,$3,32
	sll	$3,$3,$5
	subu	$5,$0,$5
	srl	$4,$4,$5
	or	$4,$4,$3
	dins	$2,$4,32,32
.L612:
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
	move	$fp,$sp
	move	$3,$5
	move	$2,$4
	andi	$7,$6,0x40
	beqzc	$7,.L615
	move	$3,$0
	dsll	$2,$5,$6
	b	.L617
	nop

.L615:
	beqzc	$6,.L617
	dsll	$3,$5,$6
	dsll	$4,$4,$6
	subu	$6,$0,$6
	dsrl	$5,$5,$6
	or	$2,$5,$4
.L617:
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
	move	$fp,$sp
	move	$2,$4
	move	$3,$4
	andi	$4,$5,0x20
	beqzc	$4,.L620
	dsra	$3,$2,32
	sra	$4,$3,31
	move	$2,$0
	dins	$2,$4,32,32
	sra	$3,$3,$5
	dins	$2,$3,0,32
	b	.L622
	nop

.L620:
	beqzc	$5,.L622
	dsra	$4,$2,32
	sra	$6,$4,$5
	move	$2,$0
	dins	$2,$6,32,32
	subu	$6,$0,$5
	sll	$4,$4,$6
	sll	$3,$3,0
	srl	$5,$3,$5
	or	$4,$4,$5
	dins	$2,$4,0,32
.L622:
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
	move	$fp,$sp
	move	$3,$5
	move	$2,$4
	andi	$7,$6,0x40
	beqzc	$7,.L625
	dsra	$2,$4,63
	dsra	$3,$4,$6
	b	.L627
	nop

.L625:
	beqzc	$6,.L627
	dsra	$2,$4,$6
	subu	$7,$0,$6
	dsll	$4,$4,$7
	dsrl	$6,$5,$6
	or	$3,$4,$6
.L627:
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
	move	$fp,$sp
	li	$2,65536			# 0x10000
	sltu	$2,$4,$2
	beqzc	$2,.L636
	li	$3,16			# 0x10
	b	.L632
	nop

.L636:
	move	$3,$0
.L632:
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	bnezc	$2,.L637
	li	$2,8			# 0x8
	b	.L633
	nop

.L637:
	move	$2,$0
.L633:
	li	$5,8			# 0x8
	subu	$5,$5,$2
	srl	$4,$4,$5
	addu	$3,$2,$3
	andi	$2,$4,0xf0
	bnezc	$2,.L638
	li	$2,4			# 0x4
	b	.L634
	nop

.L638:
	move	$2,$0
.L634:
	li	$5,4			# 0x4
	subu	$5,$5,$2
	srl	$4,$4,$5
	addu	$3,$3,$2
	andi	$2,$4,0xc
	bnezc	$2,.L639
	li	$2,2			# 0x2
	b	.L635
	nop

.L639:
	move	$2,$0
.L635:
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
	move	$fp,$sp
	dsra	$2,$4,32
	dsra	$3,$5,32
	slt	$2,$2,$3
	bnezc	$2,.L643
	dsra	$2,$4,32
	slt	$2,$3,$2
	bnezc	$2,.L644
	sll	$2,$4,0
	sll	$3,$5,0
	sltu	$2,$2,$3
	bnezc	$2,.L645
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5,$4
	bnezc	$4,.L646
	li	$2,1			# 0x1
	b	.L642
	nop

.L643:
	move	$2,$0
	b	.L642
	nop

.L644:
	li	$2,2			# 0x2
	b	.L642
	nop

.L645:
	move	$2,$0
	b	.L642
	nop

.L646:
	li	$2,2			# 0x2
.L642:
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
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__aeabi_lcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_lcmp)))
	ld	$25,%got_disp(__cmpdi2)($28)
	.reloc	1f,R_MICROMIPS_JALR,__cmpdi2
1:	jalrs	$25
	nop

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
	move	$fp,$sp
	slt	$2,$4,$6
	bnezc	$2,.L650
	slt	$2,$6,$4
	bnezc	$2,.L651
	sltu	$2,$5,$7
	bnezc	$2,.L652
	sltu	$2,$7,$5
	bnezc	$2,.L653
	li	$2,1			# 0x1
	b	.L649
	nop

.L650:
	move	$2,$0
	b	.L649
	nop

.L651:
	li	$2,2			# 0x2
	b	.L649
	nop

.L652:
	move	$2,$0
	b	.L649
	nop

.L653:
	li	$2,2			# 0x2
.L649:
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
	move	$fp,$sp
	andi	$2,$4,0xffff
	bnezc	$2,.L659
	li	$3,16			# 0x10
	b	.L655
	nop

.L659:
	move	$3,$0
.L655:
	srl	$4,$4,$3
	andi	$2,$4,0x00ff
	bnezc	$2,.L660
	li	$2,8			# 0x8
	b	.L656
	nop

.L660:
	move	$2,$0
.L656:
	srl	$4,$4,$2
	addu	$3,$2,$3
	andi	$2,$4,0xf
	bnezc	$2,.L661
	li	$2,4			# 0x4
	b	.L657
	nop

.L661:
	move	$2,$0
.L657:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	bnezc	$2,.L662
	li	$2,2			# 0x2
	b	.L658
	nop

.L662:
	move	$2,$0
.L658:
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
	and	$4,$5,$4
	nor	$3,$0,$5
	and	$3,$3,$7
	or	$3,$3,$4
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
	move	$fp,$sp
	bnezc	$5,.L665
	beqzc	$4,.L667
	dsubu	$3,$0,$4
	and	$3,$3,$4
	dclz	$3,$3
	li	$2,63			# 0x3f
	subu	$2,$2,$3
	addiu	$2,$2,65
	b	.L666
	nop

.L665:
	dsubu	$3,$0,$5
	and	$3,$3,$5
	dclz	$3,$3
	li	$2,63			# 0x3f
	subu	$2,$2,$3
	addiu	$2,$2,1
	b	.L666
	nop

.L667:
	move	$2,$0
.L666:
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
	move	$fp,$sp
	move	$2,$4
	move	$3,$4
	andi	$4,$5,0x20
	beqzc	$4,.L669
	move	$2,$0
	dins	$2,$0,32,32
	dsra	$3,$3,32
	srl	$5,$3,$5
	dins	$2,$5,0,32
	b	.L671
	nop

.L669:
	beqzc	$5,.L671
	dsra	$4,$2,32
	srl	$6,$4,$5
	move	$2,$0
	dins	$2,$6,32,32
	subu	$6,$0,$5
	sll	$4,$4,$6
	sll	$3,$3,0
	srl	$5,$3,$5
	or	$4,$4,$5
	dins	$2,$4,0,32
.L671:
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
	move	$fp,$sp
	move	$3,$5
	move	$2,$4
	andi	$7,$6,0x40
	beqzc	$7,.L674
	move	$2,$0
	dsrl	$3,$4,$6
	b	.L676
	nop

.L674:
	beqzc	$6,.L676
	dsrl	$2,$4,$6
	subu	$7,$0,$6
	dsll	$4,$4,$7
	dsrl	$6,$5,$6
	or	$3,$4,$6
.L676:
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
	move	$4,$19
	ld	$25,%got_disp(__muldsi3)($28)
	.reloc	1f,R_MICROMIPS_JALR,__muldsi3
1:	jalrs	$25
	nop

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
	lui	$28,%hi(%neg(%gp_rel(__multi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__multi3)))
	move	$19,$5
	move	$18,$4
	move	$17,$7
	move	$16,$6
	move	$5,$7
	move	$4,$19
	ld	$25,%got_disp(__mulddi3)($28)
	.reloc	1f,R_MICROMIPS_JALR,__mulddi3
1:	jalrs	$25
	nop

	move	$4,$2
	move	$7,$3
	dmult	$17,$18
	mflo	$3
	dmult	$19,$16
	mflo	$2
	daddu	$3,$3,$2
	daddu	$6,$3,$4
	move	$3,$7
	move	$2,$6
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
	slt	$2,$5,0
	ld	$3,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($3)
.L693:
	andi	$3,$5,0x1
	beqzc	$3,.L691
	mul.d	$f0,$f0,$f12
.L691:
	srl	$3,$5,31
	addu	$5,$3,$5
	sra	$5,$5,1
	beqzc	$5,.L692
	mul.d	$f12,$f12,$f12
	b	.L693
	nop

.L692:
	beqzc	$2,.L694
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
.L694:
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
	slt	$2,$5,0
	ld	$3,%got_page(.LC14)($4)
	lwc1	$f0,%got_ofst(.LC14)($3)
.L699:
	andi	$3,$5,0x1
	beqzc	$3,.L697
	mul.s	$f0,$f0,$f12
.L697:
	srl	$3,$5,31
	addu	$5,$3,$5
	sra	$5,$5,1
	beqzc	$5,.L698
	mul.s	$f12,$f12,$f12
	b	.L699
	nop

.L698:
	beqzc	$2,.L700
	ld	$2,%got_page(.LC14)($4)
	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
.L700:
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
	move	$fp,$sp
	dsra	$2,$4,32
	dsra	$3,$5,32
	sltu	$2,$2,$3
	bnezc	$2,.L704
	dsra	$2,$4,32
	sltu	$2,$3,$2
	bnezc	$2,.L705
	sll	$2,$4,0
	sll	$3,$5,0
	sltu	$2,$2,$3
	bnezc	$2,.L706
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5,$4
	bnezc	$4,.L707
	li	$2,1			# 0x1
	b	.L703
	nop

.L704:
	move	$2,$0
	b	.L703
	nop

.L705:
	li	$2,2			# 0x2
	b	.L703
	nop

.L706:
	move	$2,$0
	b	.L703
	nop

.L707:
	li	$2,2			# 0x2
.L703:
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
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__aeabi_ulcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_ulcmp)))
	ld	$25,%got_disp(__ucmpdi2)($28)
	.reloc	1f,R_MICROMIPS_JALR,__ucmpdi2
1:	jalrs	$25
	nop

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
	move	$fp,$sp
	sltu	$2,$4,$6
	bnezc	$2,.L711
	sltu	$2,$6,$4
	bnezc	$2,.L712
	sltu	$2,$5,$7
	bnezc	$2,.L713
	sltu	$2,$7,$5
	bnezc	$2,.L714
	li	$2,1			# 0x1
	b	.L710
	nop

.L711:
	move	$2,$0
	b	.L710
	nop

.L712:
	li	$2,2			# 0x2
	b	.L710
	nop

.L713:
	move	$2,$0
	b	.L710
	nop

.L714:
	li	$2,2			# 0x2
.L710:
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
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
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
