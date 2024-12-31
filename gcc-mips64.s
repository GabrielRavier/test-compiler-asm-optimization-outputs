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
	move	$3,$5
	move	$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$3,$5
	move	$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$2,$4
	sltu	$3,$5,$4
	beq	$3,$0,.L4
	nop

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
	daddiu	$sp,$sp,16
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
	beq	$7,$0,.L12
	nop

	lbu	$2,0($5)
	sb	$2,0($4)
	andi	$2,$2,0x00ff
	bne	$6,$2,.L13
	nop

.L12:
	beq	$7,$0,.L15
	nop

	daddiu	$2,$4,1
	b	.L14
	nop

.L15:
	move	$2,$0
.L14:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	beq	$6,$0,.L18
	nop

	lbu	$2,0($4)
	bne	$5,$2,.L19
	nop

.L18:
	beq	$6,$0,.L21
	nop

	move	$2,$4
	b	.L20
	nop

.L21:
	move	$2,$0
.L20:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	b	.L23
	nop

.L25:
	daddiu	$6,$6,-1
	daddiu	$4,$4,1
	daddiu	$5,$5,1
.L23:
	beq	$6,$0,.L24
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	beq	$3,$2,.L25
	nop

.L24:
	beq	$6,$0,.L27
	nop

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
	daddiu	$sp,$sp,16
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
	daddiu	$sp,$sp,16
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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
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
	dsll	$3,$3,56
	dsra	$3,$3,56
	bne	$3,$0,.L41
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	beq	$3,$0,.L44
	nop

	lbu	$3,0($2)
	bne	$5,$3,.L45
	nop

.L44:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	bne	$2,$0,.L48
	nop

	b	.L47
	nop

.L49:
	move	$2,$4
.L47:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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

	bne	$3,$0,.L53
	nop

.L52:
	lbu	$3,0($4)
	lbu	$2,0($5)
	subu	$2,$3,$2
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	b	.L55
	nop

.L56:
	daddiu	$2,$2,1
.L55:
	lb	$3,0($2)
	bne	$3,$0,.L56
	nop

	dsubu	$2,$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	beq	$6,$0,.L62
	nop

	daddiu	$6,$6,-1
	daddu	$6,$4,$6
	b	.L59
	nop

.L61:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
.L59:
	lbu	$2,0($4)
	beq	$2,$0,.L60
	nop

	lbu	$2,0($5)
	beq	$2,$0,.L60
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	beq	$3,$0,.L65
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	ori	$4,$4,0x20
	addiu	$2,$4,-97
	sltu	$2,$2,26
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	sltu	$2,$4,32
	bne	$2,$0,.L74
	nop

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
	daddiu	$sp,$sp,16
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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	li	$2,32			# 0x20
	beq	$4,$2,.L82
	nop

	addiu	$4,$4,-9
	sltu	$4,$4,5
	beq	$4,$0,.L83
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	sltu	$2,$4,32
	bne	$2,$0,.L87
	nop

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,.L88
	nop

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,.L89
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$2,$2,$4
	sltu	$2,$2,3
	beq	$2,$0,.L90
	nop

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
	daddiu	$sp,$sp,16
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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	sltu	$2,$4,255
	beq	$2,$0,.L93
	nop

	addiu	$2,$4,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	sltu	$2,$2,1
	b	.L94
	nop

.L93:
	sltu	$2,$4,8232
	bne	$2,$0,.L95
	nop

	addiu	$2,$4,-8234
	li	$3,47062			# 0xb7d6
	sltu	$2,$2,$3
	bne	$2,$0,.L96
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$2,$4
	sltu	$2,$2,8185
	bne	$2,$0,.L97
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$2,$4
	li	$3,1048576			# 0x100000
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,.L98
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	addiu	$2,$4,-48
	sltu	$2,$2,10
	bne	$2,$0,.L102
	nop

	ori	$4,$4,0x20
	addiu	$4,$4,-97
	sltu	$4,$4,6
	beq	$4,$0,.L103
	nop

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
	daddiu	$sp,$sp,16
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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	mov.d	$f0,$f13
	c.un.d	$f12,$f12
	nop
	bc1t	.L108
	nop

	c.un.d	$f13,$f13
	nop
	bc1t	.L106
	nop

	c.lt.d	$f13,$f12
	nop
	bc1f	.L112
	nop

	sub.d	$f0,$f12,$f13
	b	.L106
	nop

.L108:
	mov.d	$f0,$f12
	b	.L106
	nop

.L112:
	dmtc1	$0,$f0
.L106:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	mov.s	$f0,$f13
	c.un.s	$f12,$f12
	nop
	bc1t	.L116
	nop

	c.un.s	$f13,$f13
	nop
	bc1t	.L114
	nop

	c.lt.s	$f13,$f12
	nop
	bc1f	.L120
	nop

	sub.s	$f0,$f12,$f13
	b	.L114
	nop

.L116:
	mov.s	$f0,$f12
	b	.L114
	nop

.L120:
	mtc1	$0,$f0
.L114:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	c.un.d	$f12,$f12
	nop
	bc1t	.L125
	nop

	mov.d	$f0,$f13
	c.un.d	$f13,$f13
	nop
	bc1t	.L126
	nop

	ld	$2,0($fp)
	dsrl	$3,$2,63
	ld	$2,8($fp)
	dsrl	$2,$2,63
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
	c.lt.d	$f0,$f1
	nop
	bc1f	.L130
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
	daddiu	$sp,$sp,32
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
	c.un.s	$f12,$f12
	nop
	bc1t	.L135
	nop

	mov.s	$f0,$f13
	c.un.s	$f13,$f13
	nop
	bc1t	.L136
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
	c.lt.s	$f0,$f1
	nop
	bc1f	.L140
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
	daddiu	$sp,$sp,32
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
	nop
	dmtc1	$16,$f14
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L145
	nop

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

	bne	$2,$0,.L142
	nop

	dsrl	$2,$16,63
	dsrl	$3,$18,63
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
	nop
	dmtc1	$18,$f14
	dmtc1	$17,$f13
	nop
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
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
	daddiu	$sp,$sp,64
	jr	$31
	nop

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
	c.un.d	$f12,$f12
	nop
	bc1t	.L155
	nop

	c.un.d	$f13,$f13
	nop
	bc1t	.L156
	nop

	ld	$2,0($fp)
	dsrl	$3,$2,63
	ld	$2,8($fp)
	dsrl	$2,$2,63
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
	c.lt.d	$f0,$f1
	nop
	bc1f	.L160
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
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	c.un.s	$f12,$f12
	nop
	bc1t	.L165
	nop

	c.un.s	$f13,$f13
	nop
	bc1t	.L166
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
	c.lt.s	$f0,$f1
	nop
	bc1f	.L170
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
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	nop
	dmtc1	$18,$f14
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L172
	nop

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

	bne	$2,$0,.L176
	nop

	dsrl	$2,$18,63
	dsrl	$3,$16,63
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
	nop
	dmtc1	$16,$f14
	dmtc1	$19,$f13
	nop
	dmtc1	$18,$f12
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
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
	daddiu	$sp,$sp,64
	jr	$31
	nop

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
	srl	$4,$4,6
.L182:
	bne	$4,$0,.L183
	nop

	sb	$0,0($2)
	ld	$2,%got_page(s.0)($6)
	daddiu	$2,$2,%got_ofst(s.0)
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	bne	$5,$0,.L187
	nop

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
	beq	$2,$0,.L186
	nop

	sd	$4,8($2)
.L186:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	ld	$2,0($4)
	beq	$2,$0,.L190
	nop

	ld	$3,8($4)
	sd	$3,8($2)
.L190:
	ld	$2,8($4)
	beq	$2,$0,.L189
	nop

	ld	$3,0($4)
	sd	$3,0($2)
.L189:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	jalr	$25
	nop

	daddu	$22,$22,$17
	bne	$2,$0,.L194
	nop

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
	mflo	$2
	daddu	$4,$16,$2
	move	$6,$17
	move	$5,$18
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
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
	daddiu	$sp,$sp,96
	jr	$31
	nop

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
	jalr	$25
	nop

	daddu	$19,$19,$17
	bne	$2,$0,.L199
	nop

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
	daddiu	$sp,$sp,80
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	b	.L204
	nop

.L205:
	daddiu	$16,$16,1
.L204:
	lb	$4,0($16)
	ld	$25,%got_disp(isspace)($28)
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	nop

	bne	$2,$0,.L205
	nop

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L211
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L212
	nop

	li	$4,1			# 0x1
	b	.L206
	nop

.L211:
	move	$4,$0
.L206:
	daddiu	$16,$16,1
	b	.L207
	nop

.L212:
	move	$4,$0
.L207:
	move	$2,$0
	b	.L208
	nop

.L209:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$2,$3,1
	daddiu	$16,$16,1
	lb	$3,-1($16)
	addiu	$3,$3,-48
	subu	$2,$2,$3
.L208:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,.L209
	nop

	bne	$4,$0,.L210
	nop

	subu	$2,$0,$2
.L210:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	b	.L215
	nop

.L216:
	daddiu	$16,$16,1
.L215:
	lb	$4,0($16)
	ld	$25,%got_disp(isspace)($28)
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	nop

	bne	$2,$0,.L216
	nop

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L222
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L223
	nop

	li	$4,1			# 0x1
	b	.L217
	nop

.L222:
	move	$4,$0
.L217:
	daddiu	$16,$16,1
	b	.L218
	nop

.L223:
	move	$4,$0
.L218:
	move	$2,$0
	b	.L219
	nop

.L220:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$2,$3,1
	daddiu	$16,$16,1
	lb	$3,-1($16)
	addiu	$3,$3,-48
	dsubu	$2,$2,$3
.L219:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,.L220
	nop

	bne	$4,$0,.L221
	nop

	dsubu	$2,$0,$2
.L221:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	b	.L226
	nop

.L227:
	daddiu	$16,$16,1
.L226:
	lb	$4,0($16)
	ld	$25,%got_disp(isspace)($28)
	.reloc	1f,R_MIPS_JALR,isspace
1:	jalr	$25
	nop

	bne	$2,$0,.L227
	nop

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,.L233
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L234
	nop

	li	$4,1			# 0x1
	b	.L228
	nop

.L233:
	move	$4,$0
.L228:
	daddiu	$16,$16,1
	b	.L229
	nop

.L234:
	move	$4,$0
.L229:
	move	$2,$0
	b	.L230
	nop

.L231:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$2,$3,1
	daddiu	$16,$16,1
	lb	$3,-1($16)
	addiu	$3,$3,-48
	dsubu	$2,$2,$3
.L230:
	lb	$3,0($16)
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,.L231
	nop

	bne	$4,$0,.L232
	nop

	dsubu	$2,$0,$2
.L232:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	move	$20,$8
	b	.L237
	nop

.L241:
	dsrl	$2,$16,1
	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$5,$17
	move	$4,$21
	move	$25,$20
	jalr	$25
	nop

	bgez	$2,.L238
	nop

	dsrl	$16,$16,1
	b	.L237
	nop

.L238:
	blez	$2,.L242
	nop

	daddu	$19,$17,$18
	dsrl	$2,$16,1
	daddiu	$16,$16,-1
	dsubu	$16,$16,$2
.L237:
	bne	$16,$0,.L241
	nop

	move	$2,$0
	b	.L240
	nop

.L242:
	move	$2,$17
.L240:
	move	$sp,$fp
	ld	$31,72($sp)
	ld	$fp,64($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	daddiu	$sp,$sp,80
	jr	$31
	nop

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
	move	$18,$5
	b	.L244
	nop

.L247:
	sra	$2,$16,1
	dmult	$2,$19
	mflo	$17
	daddu	$17,$18,$17
	move	$6,$20
	move	$5,$17
	move	$4,$22
	move	$25,$21
	jalr	$25
	nop

	beq	$2,$0,.L248
	nop

	blez	$2,.L246
	nop

	daddu	$18,$17,$19
	addiu	$16,$16,-1
.L246:
	sra	$16,$16,1
.L244:
	bne	$16,$0,.L247
	nop

	move	$2,$0
	b	.L245
	nop

.L248:
	move	$2,$17
.L245:
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
	daddiu	$sp,$sp,80
	jr	$31
	nop

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
	mfhi	$3
	mflo	$2
	nop
	nop
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	sw	$2,0($fp)
	sw	$4,4($fp)
	dsll	$2,$2,32
	dsrl	$2,$2,32
	dsll	$2,$2,32
	dsll	$3,$3,32
	dsrl	$3,$3,32
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,24($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	dsra	$3,$4,63
	xor	$2,$3,$4
	dsubu	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	mflo	$5
	sd	$5,0($fp)
	sd	$4,8($fp)
	move	$2,$5
	move	$3,$4
	move	$sp,$fp
	ld	$fp,24($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	dsra	$3,$4,63
	xor	$2,$3,$4
	dsubu	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	mflo	$5
	sd	$5,0($fp)
	sd	$4,8($fp)
	move	$2,$5
	move	$3,$4
	move	$sp,$fp
	ld	$fp,24($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	dsra	$3,$4,63
	xor	$2,$3,$4
	dsubu	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	mflo	$5
	sd	$5,0($fp)
	sd	$4,8($fp)
	move	$2,$5
	move	$3,$4
	move	$sp,$fp
	ld	$fp,24($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	b	.L257
	nop

.L259:
	daddiu	$4,$4,4
.L257:
	lw	$2,0($4)
	beq	$2,$0,.L258
	nop

	lw	$2,0($4)
	bne	$5,$2,.L259
	nop

.L258:
	lw	$2,0($4)
	beq	$2,$0,.L261
	nop

	move	$2,$4
	b	.L260
	nop

.L261:
	move	$2,$0
.L260:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	b	.L263
	nop

.L265:
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L263:
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L264
	nop

	beq	$3,$0,.L264
	nop

	lw	$2,0($5)
	bne	$2,$0,.L265
	nop

.L264:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bne	$2,$0,.L267
	nop

	lw	$2,0($4)
	slt	$2,$3,$2
	b	.L266
	nop

.L267:
	li	$2,-1			# 0xffffffffffffffff
.L266:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
.L269:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$4,-4($5)
	sw	$4,-4($3)
	lw	$4,-4($3)
	bne	$4,$0,.L269
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	b	.L271
	nop

.L272:
	daddiu	$2,$2,4
.L271:
	lw	$3,0($2)
	bne	$3,$0,.L272
	nop

	dsubu	$2,$2,$4
	dsra	$2,$2,2
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	b	.L274
	nop

.L276:
	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L274:
	beq	$6,$0,.L275
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L275
	nop

	beq	$3,$0,.L275
	nop

	lw	$2,0($5)
	bne	$2,$0,.L276
	nop

.L275:
	beq	$6,$0,.L278
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bne	$2,$0,.L279
	nop

	lw	$2,0($4)
	slt	$2,$3,$2
	b	.L277
	nop

.L278:
	move	$2,$0
	b	.L277
	nop

.L279:
	li	$2,-1			# 0xffffffffffffffff
.L277:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L281
	nop

.L283:
	daddiu	$6,$6,-1
	daddiu	$4,$4,4
.L281:
	beq	$6,$0,.L282
	nop

	lw	$2,0($4)
	bne	$5,$2,.L283
	nop

.L282:
	beq	$6,$0,.L285
	nop

	move	$2,$4
	b	.L284
	nop

.L285:
	move	$2,$0
.L284:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	b	.L287
	nop

.L289:
	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	daddiu	$5,$5,4
.L287:
	beq	$6,$0,.L288
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	beq	$3,$2,.L289
	nop

.L288:
	beq	$6,$0,.L291
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$2,$3
	bne	$2,$0,.L292
	nop

	lw	$2,0($4)
	slt	$2,$3,$2
	b	.L290
	nop

.L291:
	move	$2,$0
	b	.L290
	nop

.L292:
	li	$2,-1			# 0xffffffffffffffff
.L290:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	b	.L294
	nop

.L295:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$4,-4($5)
	sw	$4,-4($3)
.L294:
	daddiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,.L295
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$4
	beq	$4,$5,.L297
	nop

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$3,$3,$4
	beq	$3,$0,.L302
	nop

	daddu	$5,$5,$4
	daddu	$6,$2,$4
	daddiu	$3,$2,-4
	b	.L299
	nop

.L300:
	lw	$4,0($5)
	sw	$4,0($6)
.L299:
	daddiu	$5,$5,-4
	daddiu	$6,$6,-4
	bne	$6,$3,.L300
	nop

	b	.L297
	nop

.L301:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$4,-4($5)
	sw	$4,-4($3)
	b	.L298
	nop

.L302:
	move	$3,$2
.L298:
	daddiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,.L301
	nop

.L297:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	b	.L304
	nop

.L305:
	daddiu	$3,$3,4
	sw	$5,-4($3)
.L304:
	daddiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,.L305
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	sltu	$2,$4,$5
	beq	$2,$0,.L307
	nop

	daddu	$2,$4,$6
	daddu	$5,$5,$6
	b	.L308
	nop

.L309:
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
.L308:
	bne	$2,$4,.L309
	nop

	b	.L306
	nop

.L307:
	beq	$4,$5,.L306
	nop

	daddu	$6,$5,$6
	move	$2,$4
	b	.L311
	nop

.L312:
	daddiu	$2,$2,1
	daddiu	$5,$5,1
	lb	$3,-1($2)
	sb	$3,-1($5)
.L311:
	bne	$5,$6,.L312
	nop

.L306:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	dsll	$3,$4,$5
	subu	$5,$0,$5
	dsrl	$2,$4,$5
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	dsrl	$3,$4,$5
	subu	$5,$0,$5
	dsll	$2,$4,$5
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	dsll	$3,$4,32
	dsrl	$3,$3,32
	li	$2,255			# 0xff
	dsll	$2,$2,24
	and	$2,$4,$2
	dsrl	$2,$2,24
	sll	$2,$2,0
	dsrl	$3,$3,8
	andi	$3,$3,0xff00
	andi	$5,$4,0xff00
	dsll	$5,$5,8
	sll	$4,$4,24
	or	$4,$4,$5
	or	$2,$2,$4
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	li	$3,255			# 0xff
	dsll	$2,$3,48
	and	$2,$4,$2
	dsrl	$2,$2,40
	or	$2,$2,$5
	dsll	$5,$3,40
	and	$5,$4,$5
	dsrl	$5,$5,24
	or	$2,$2,$5
	dsll	$5,$3,32
	and	$5,$4,$5
	dsrl	$5,$5,8
	or	$2,$2,$5
	dsll	$3,$3,24
	and	$3,$4,$3
	dsll	$3,$3,8
	or	$2,$2,$3
	li	$3,16711680			# 0xff0000
	and	$3,$4,$3
	dsll	$3,$3,24
	or	$2,$2,$3
	andi	$3,$4,0xff00
	dsll	$3,$3,40
	or	$2,$2,$3
	dsll	$4,$4,56
	or	$2,$2,$4
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$2,$0
	b	.L327
	nop

.L330:
	srl	$3,$4,$2
	andi	$3,$3,0x1
	beq	$3,$0,.L328
	nop

	addiu	$2,$2,1
	b	.L329
	nop

.L328:
	addiu	$2,$2,1
.L327:
	li	$3,32			# 0x20
	bne	$2,$3,.L330
	nop

	move	$2,$0
.L329:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	beq	$4,$0,.L335
	nop

	li	$2,1			# 0x1
	b	.L333
	nop

.L334:
	sra	$4,$4,1
	addiu	$2,$2,1
.L333:
	andi	$3,$4,0x1
	beq	$3,$0,.L334
	nop

	b	.L332
	nop

.L335:
	move	$2,$0
.L332:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	lui	$3,%hi(%neg(%gp_rel(gl_isinff)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinff)))
	ld	$2,%got_page(.LC0)($3)
	lwc1	$f0,%got_ofst(.LC0)($2)
	c.lt.s	$f12,$f0
	nop
	bc1t	.L339
	nop

	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$f0,$f12
	nop
	bc1f	.L342
	nop

	li	$2,1			# 0x1
	b	.L337
	nop

.L339:
	li	$2,1			# 0x1
	b	.L337
	nop

.L342:
	move	$2,$0
.L337:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	c.lt.d	$f12,$f0
	nop
	bc1t	.L346
	nop

	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$f0,$f12
	nop
	bc1f	.L349
	nop

	li	$2,1			# 0x1
	b	.L344
	nop

.L346:
	li	$2,1			# 0x1
	b	.L344
	nop

.L349:
	move	$2,$0
.L344:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	nop

	bltz	$2,.L353
	nop

	ld	$25,%call16(__gttf2)($28)
	ld	$2,%got_page(.LC5)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	ldc1	$f14,%got_ofst(.LC5)($2)
	dmtc1	$17,$f13
	nop
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__gttf2
1:	jalr	$25
	nop

	blez	$2,.L356
	nop

	li	$2,1			# 0x1
	b	.L351
	nop

.L353:
	li	$2,1			# 0x1
	b	.L351
	nop

.L356:
	move	$2,$0
.L351:
	move	$sp,$fp
	ld	$31,40($sp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	nop
	cvt.d.w	$f12,$f0
	.reloc	1f,R_MIPS_JALR,__extenddftf2
1:	jalr	$25
	nop

	dmfc1	$4,$f0
	sdc1	$f2,8($16)
	sdc1	$f0,0($16)
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	mov.s	$f0,$f12
	c.un.s	$f12,$f12
	nop
	bc1t	.L359
	nop

	add.s	$f1,$f12,$f12
	c.eq.s	$f12,$f1
	nop
	bc1t	.L359
	nop

	bgez	$5,.L363
	nop

	ld	$2,%got_page(.LC6)($3)
	lwc1	$f1,%got_ofst(.LC6)($2)
	b	.L362
	nop

.L363:
	ld	$2,%got_page(.LC7)($3)
	lwc1	$f1,%got_ofst(.LC7)($2)
.L362:
	andi	$2,$5,0x1
	beq	$2,$0,.L361
	nop

	mul.s	$f0,$f0,$f1
.L361:
	srl	$2,$5,31
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L359
	nop

	mul.s	$f1,$f1,$f1
	b	.L362
	nop

.L359:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	c.un.d	$f12,$f12
	nop
	bc1t	.L365
	nop

	add.d	$f1,$f12,$f12
	c.eq.d	$f12,$f1
	nop
	bc1t	.L365
	nop

	bgez	$5,.L369
	nop

	ld	$2,%got_page(.LC8)($3)
	ldc1	$f1,%got_ofst(.LC8)($2)
	b	.L368
	nop

.L369:
	ld	$2,%got_page(.LC9)($3)
	ldc1	$f1,%got_ofst(.LC9)($2)
.L368:
	andi	$2,$5,0x1
	beq	$2,$0,.L367
	nop

	mul.d	$f0,$f0,$f1
.L367:
	srl	$2,$5,31
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,.L365
	nop

	mul.d	$f1,$f1,$f1
	b	.L368
	nop

.L365:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	nop
	dmtc1	$16,$f14
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L371
	nop

	ld	$25,%call16(__addtf3)($28)
	dmtc1	$17,$f15
	nop
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	nop
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__addtf3
1:	jalr	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	ld	$25,%call16(__netf2)($28)
	dmtc1	$3,$f15
	nop
	dmtc1	$4,$f14
	dmtc1	$17,$f13
	nop
	dmtc1	$16,$f12
	.reloc	1f,R_MIPS_JALR,__netf2
1:	jalr	$25
	nop

	beq	$2,$0,.L371
	nop

	bgez	$20,.L376
	nop

	ld	$2,%got_page(.LC10)($28)
	ld	$19,%got_ofst(.LC10+8)($2)
	ld	$18,%got_ofst(.LC10)($2)
	b	.L375
	nop

.L376:
	ld	$2,%got_page(.LC11)($28)
	ld	$19,%got_ofst(.LC11+8)($2)
	ld	$18,%got_ofst(.LC11)($2)
.L375:
	andi	$2,$20,0x1
	beq	$2,$0,.L374
	nop

	ld	$25,%call16(__multf3)($28)
	dmtc1	$19,$f15
	nop
	dmtc1	$18,$f14
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
	move	$16,$4
.L374:
	srl	$2,$20,31
	addu	$20,$2,$20
	sra	$20,$20,1
	beq	$20,$0,.L371
	nop

	ld	$25,%call16(__multf3)($28)
	dmtc1	$19,$f15
	nop
	dmtc1	$18,$f14
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
	b	.L375
	nop

.L371:
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
	daddiu	$sp,$sp,64
	jr	$31
	nop

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
	move	$3,$4
	b	.L379
	nop

.L380:
	daddiu	$5,$5,1
	lb	$7,-1($5)
	daddiu	$3,$3,1
	lb	$4,-1($3)
	xor	$4,$4,$7
	sb	$4,-1($3)
.L379:
	bne	$3,$6,.L380
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	nop

	daddu	$2,$18,$2
	b	.L382
	nop

.L384:
	daddiu	$17,$17,1
	daddiu	$2,$2,1
	daddiu	$16,$16,-1
.L382:
	beq	$16,$0,.L383
	nop

	lb	$3,0($17)
	sb	$3,0($2)
	dsll	$3,$3,56
	dsra	$3,$3,56
	bne	$3,$0,.L384
	nop

.L383:
	bne	$16,$0,.L385
	nop

	sb	$0,0($2)
.L385:
	move	$2,$18
	move	$sp,$fp
	ld	$31,40($sp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	b	.L387
	nop

.L389:
	daddiu	$2,$2,1
.L387:
	beq	$2,$5,.L388
	nop

	daddu	$3,$4,$2
	lb	$3,0($3)
	bne	$3,$0,.L389
	nop

.L388:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	b	.L391
	nop

.L393:
	daddiu	$2,$2,1
	lb	$6,-1($2)
	lb	$3,0($4)
	beq	$6,$3,.L395
	nop

	b	.L394
	nop

.L396:
	move	$2,$5
.L394:
	lb	$3,0($2)
	bne	$3,$0,.L393
	nop

	daddiu	$4,$4,1
.L391:
	lb	$2,0($4)
	bne	$2,$0,.L396
	nop

	b	.L392
	nop

.L395:
	move	$2,$4
.L392:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
.L399:
	lb	$3,0($4)
	bne	$5,$3,.L398
	nop

	move	$2,$4
.L398:
	daddiu	$4,$4,1
	lb	$3,-1($4)
	bne	$3,$0,.L399
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	nop

	move	$18,$2
	beq	$2,$0,.L405
	nop

	lb	$19,0($17)
	b	.L403
	nop

.L404:
	move	$6,$18
	move	$5,$17
	move	$4,$16
	ld	$25,%got_disp(strncmp)($28)
	.reloc	1f,R_MIPS_JALR,strncmp
1:	jalr	$25
	nop

	beq	$2,$0,.L406
	nop

	daddiu	$16,$16,1
.L403:
	move	$5,$19
	move	$4,$16
	ld	$25,%got_disp(strchr)($28)
	.reloc	1f,R_MIPS_JALR,strchr
1:	jalr	$25
	nop

	move	$16,$2
	bne	$2,$0,.L404
	nop

	move	$2,$0
	b	.L402
	nop

.L405:
	move	$2,$16
	b	.L402
	nop

.L406:
	move	$2,$16
.L402:
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

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
	move	$fp,$sp
	dmfc1	$2,$f12
	dmtc1	$0,$f0
	nop
	c.lt.d	$f12,$f0
	nop
	bc1f	.L408
	nop

	c.lt.d	$f0,$f13
	nop
	bc1t	.L410
	nop

.L408:
	dmtc1	$0,$f0
	dmtc1	$2,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L411
	nop

	c.lt.d	$f13,$f0
	nop
	bc1f	.L411
	nop

.L410:
	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
.L411:
	dmtc1	$2,$f0
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$18,$6
	move	$17,$7
	dsubu	$19,$5,$7
	daddu	$19,$4,$19
	beq	$7,$0,.L425
	nop

	sltu	$5,$5,$7
	bne	$5,$0,.L426
	nop

	b	.L422
	nop

.L424:
	lb	$3,0($16)
	lb	$2,0($18)
	bne	$3,$2,.L423
	nop

	daddiu	$4,$16,1
	daddiu	$6,$17,-1
	daddiu	$5,$18,1
	ld	$25,%got_disp(memcmp)($28)
	.reloc	1f,R_MIPS_JALR,memcmp
1:	jalr	$25
	nop

	beq	$2,$0,.L427
	nop

.L423:
	daddiu	$16,$16,1
.L422:
	sltu	$2,$19,$16
	beq	$2,$0,.L424
	nop

	move	$2,$0
	b	.L421
	nop

.L425:
	move	$2,$4
	b	.L421
	nop

.L426:
	move	$2,$0
	b	.L421
	nop

.L427:
	move	$2,$16
.L421:
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

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
	move	$16,$6
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	daddu	$2,$2,$16
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	daddiu	$7,$7,%lo(%neg(%gp_rel(frexp)))
	dmfc1	$2,$f12
	dmtc1	$0,$f0
	nop
	c.lt.d	$f12,$f0
	nop
	bc1f	.L446
	nop

	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
	li	$4,1			# 0x1
	b	.L430
	nop

.L446:
	move	$4,$0
.L430:
	ld	$3,%got_page(.LC12)($7)
	ldc1	$f0,%got_ofst(.LC12)($3)
	dmtc1	$2,$f1
	nop
	c.le.d	$f0,$f1
	nop
	bc1t	.L441
	nop

	b	.L447
	nop

.L434:
	addiu	$3,$3,1
	ld	$6,%got_page(.LC8)($7)
	ldc1	$f0,%got_ofst(.LC8)($6)
	dmtc1	$2,$f1
	nop
	mul.d	$f0,$f1,$f0
	dmfc1	$2,$f0
	b	.L432
	nop

.L441:
	move	$3,$0
.L432:
	ld	$6,%got_page(.LC12)($7)
	ldc1	$f0,%got_ofst(.LC12)($6)
	dmtc1	$2,$f1
	nop
	c.le.d	$f0,$f1
	nop
	bc1t	.L434
	nop

	b	.L435
	nop

.L447:
	ld	$3,%got_page(.LC8)($7)
	ldc1	$f0,%got_ofst(.LC8)($3)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L448
	nop

	dmtc1	$0,$f0
	nop
	c.eq.d	$f1,$f0
	nop
	bc1f	.L443
	nop

	move	$3,$0
	b	.L435
	nop

.L438:
	addiu	$3,$3,-1
	dmtc1	$2,$f0
	nop
	add.d	$f0,$f0,$f0
	dmfc1	$2,$f0
	b	.L437
	nop

.L443:
	move	$3,$0
.L437:
	ld	$6,%got_page(.LC8)($7)
	ldc1	$f0,%got_ofst(.LC8)($6)
	dmtc1	$2,$f1
	nop
	c.lt.d	$f1,$f0
	nop
	bc1t	.L438
	nop

	b	.L435
	nop

.L448:
	move	$3,$0
.L435:
	sw	$3,0($5)
	beq	$4,$0,.L439
	nop

	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	xor	$2,$2,$3
.L439:
	dmtc1	$2,$f0
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
	b	.L450
	nop

.L452:
	andi	$3,$4,0x1
	beq	$3,$0,.L451
	nop

	daddu	$2,$2,$5
.L451:
	dsll	$5,$5,1
	dsrl	$4,$4,1
.L450:
	bne	$4,$0,.L452
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	b	.L454
	nop

.L456:
	sll	$5,$5,1
	sll	$2,$2,1
.L454:
	sltu	$7,$5,$4
	beq	$7,$0,.L461
	nop

	addiu	$3,$3,-1
	beq	$3,$0,.L462
	nop

	bgez	$5,.L456
	nop

	move	$3,$0
	b	.L458
	nop

.L459:
	sltu	$7,$4,$5
	bne	$7,$0,.L457
	nop

	subu	$4,$4,$5
	or	$3,$3,$2
.L457:
	srl	$2,$2,1
	srl	$5,$5,1
	b	.L458
	nop

.L461:
	move	$3,$0
	b	.L458
	nop

.L462:
	move	$3,$0
.L458:
	bne	$2,$0,.L459
	nop

	bne	$6,$0,.L463
	nop

	move	$2,$3
	b	.L460
	nop

.L463:
	move	$2,$4
.L460:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbqi2)))
	bgez	$4,.L465
	nop

	nor	$4,$0,$4
	dsll	$4,$4,56
	dsra	$4,$4,56
.L465:
	beq	$4,$0,.L467
	nop

	sll	$4,$4,8
	dsll	$4,$4,32
	dsrl	$4,$4,32
	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	addiu	$2,$2,-33
	b	.L466
	nop

.L467:
	li	$2,7			# 0x7
.L466:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	bgez	$4,.L469
	nop

	nor	$4,$0,$4
.L469:
	beq	$4,$0,.L471
	nop

	ld	$25,%call16(__clzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	addiu	$2,$2,-1
	b	.L470
	nop

.L471:
	li	$2,63			# 0x3f
.L470:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	move	$2,$0
	b	.L473
	nop

.L475:
	andi	$3,$4,0x1
	beq	$3,$0,.L474
	nop

	addu	$2,$2,$5
.L474:
	srl	$4,$4,1
	sll	$5,$5,1
.L473:
	bne	$4,$0,.L475
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	srl	$3,$6,3
	li	$2,-8			# 0xfffffffffffffff8
	and	$2,$6,$2
	sltu	$7,$4,$5
	bne	$7,$0,.L477
	nop

	dsll	$7,$6,32
	dsrl	$7,$7,32
	daddu	$7,$5,$7
	sltu	$7,$7,$4
	beq	$7,$0,.L478
	nop

.L477:
	move	$7,$5
	move	$8,$4
	dsll	$3,$3,3
	daddu	$3,$3,$5
	b	.L479
	nop

.L480:
	ld	$9,0($7)
	sd	$9,0($8)
	daddiu	$7,$7,8
	daddiu	$8,$8,8
.L479:
	bne	$7,$3,.L480
	nop

	dsll	$2,$2,32
	dsrl	$2,$2,32
	b	.L481
	nop

.L482:
	daddu	$3,$5,$2
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L481:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L482
	nop

	b	.L476
	nop

.L484:
	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L478:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L484
	nop

.L476:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	srl	$2,$6,1
	sltu	$3,$4,$5
	bne	$3,$0,.L486
	nop

	dsll	$3,$6,32
	dsrl	$3,$3,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	beq	$3,$0,.L487
	nop

.L486:
	move	$3,$5
	move	$7,$4
	dsll	$2,$2,1
	daddu	$2,$2,$5
	b	.L488
	nop

.L489:
	lh	$8,0($3)
	sh	$8,0($7)
	daddiu	$3,$3,2
	daddiu	$7,$7,2
.L488:
	bne	$3,$2,.L489
	nop

	andi	$2,$6,0x1
	beq	$2,$0,.L485
	nop

	addiu	$6,$6,-1
	dsll	$6,$6,32
	dsrl	$6,$6,32
	daddu	$5,$5,$6
	daddu	$4,$4,$6
	lb	$2,0($5)
	sb	$2,0($4)
	b	.L485
	nop

.L491:
	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L487:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L491
	nop

.L485:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	srl	$3,$6,2
	li	$2,-4			# 0xfffffffffffffffc
	and	$2,$6,$2
	sltu	$7,$4,$5
	bne	$7,$0,.L493
	nop

	dsll	$7,$6,32
	dsrl	$7,$7,32
	daddu	$7,$5,$7
	sltu	$7,$7,$4
	beq	$7,$0,.L494
	nop

.L493:
	move	$7,$5
	move	$8,$4
	dsll	$3,$3,2
	daddu	$3,$3,$5
	b	.L495
	nop

.L496:
	lw	$9,0($7)
	sw	$9,0($8)
	daddiu	$7,$7,4
	daddiu	$8,$8,4
.L495:
	bne	$7,$3,.L496
	nop

	dsll	$2,$2,32
	dsrl	$2,$2,32
	b	.L497
	nop

.L498:
	daddu	$3,$5,$2
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
.L497:
	sll	$3,$2,0
	sltu	$3,$3,$6
	bne	$3,$0,.L498
	nop

	b	.L492
	nop

.L500:
	dsll	$2,$6,32
	dsrl	$2,$2,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L494:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L500
	nop

.L492:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	daddiu	$sp,$sp,16
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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	bltz	$4,.L506
	nop

	dmtc1	$4,$f0
	nop
	cvt.d.l	$f0,$f0
	b	.L505
	nop

.L506:
	andi	$2,$4,0x1
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	nop
	cvt.d.l	$f0,$f0
	add.d	$f0,$f0,$f0
.L505:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	bltz	$4,.L509
	nop

	dmtc1	$4,$f0
	nop
	cvt.s.l	$f0,$f0
	b	.L508
	nop

.L509:
	andi	$2,$4,0x1
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	nop
	cvt.s.l	$f0,$f0
	add.s	$f0,$f0,$f0
.L508:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
	b	.L512
	nop

.L514:
	li	$3,15			# 0xf
	subu	$3,$3,$2
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,.L513
	nop

	addiu	$2,$2,1
.L512:
	li	$3,16			# 0x10
	bne	$2,$3,.L514
	nop

.L513:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	sra	$3,$4,$2
	andi	$3,$3,0x1
	bne	$3,$0,.L517
	nop

	addiu	$2,$2,1
.L516:
	li	$3,16			# 0x10
	bne	$2,$3,.L518
	nop

.L517:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	c.le.s	$f0,$f12
	nop
	bc1f	.L524
	nop

	sub.s	$f12,$f12,$f0
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	li	$3,32768			# 0x8000
	daddu	$2,$2,$3
	b	.L522
	nop

.L524:
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
.L522:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$3,$0
	b	.L526
	nop

.L528:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beq	$5,$0,.L527
	nop

	addiu	$2,$2,1
.L527:
	addiu	$3,$3,1
.L526:
	li	$5,16			# 0x10
	bne	$3,$5,.L528
	nop

	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$3,$0
	b	.L530
	nop

.L532:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beq	$5,$0,.L531
	nop

	addiu	$2,$2,1
.L531:
	addiu	$3,$3,1
.L530:
	li	$5,16			# 0x10
	bne	$3,$5,.L532
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$2,$0
	b	.L534
	nop

.L536:
	andi	$3,$4,0x1
	beq	$3,$0,.L535
	nop

	addu	$2,$2,$5
.L535:
	srl	$4,$4,1
	sll	$5,$5,1
.L534:
	bne	$4,$0,.L536
	nop

	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	beq	$4,$0,.L542
	nop

	move	$2,$0
	b	.L539
	nop

.L541:
	andi	$3,$5,0x1
	beq	$3,$0,.L540
	nop

	addu	$2,$2,$4
.L540:
	sll	$4,$4,1
	srl	$5,$5,1
.L539:
	bne	$5,$0,.L541
	nop

	b	.L538
	nop

.L542:
	move	$2,$0
.L538:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	li	$3,33			# 0x21
	li	$2,1			# 0x1
	b	.L544
	nop

.L546:
	sll	$5,$5,1
	sll	$2,$2,1
.L544:
	sltu	$7,$5,$4
	beq	$7,$0,.L551
	nop

	addiu	$3,$3,-1
	beq	$3,$0,.L552
	nop

	bgez	$5,.L546
	nop

	move	$3,$0
	b	.L548
	nop

.L549:
	sltu	$7,$4,$5
	bne	$7,$0,.L547
	nop

	subu	$4,$4,$5
	or	$3,$3,$2
.L547:
	srl	$2,$2,1
	srl	$5,$5,1
	b	.L548
	nop

.L551:
	move	$3,$0
	b	.L548
	nop

.L552:
	move	$3,$0
.L548:
	bne	$2,$0,.L549
	nop

	bne	$6,$0,.L553
	nop

	move	$2,$3
	b	.L550
	nop

.L553:
	move	$2,$4
.L550:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	c.lt.s	$f12,$f13
	nop
	bc1t	.L556
	nop

	c.lt.s	$f13,$f12
	nop
	bc1t	.L557
	nop

	move	$2,$0
	b	.L555
	nop

.L556:
	li	$2,-1			# 0xffffffffffffffff
	b	.L555
	nop

.L557:
	li	$2,1			# 0x1
.L555:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	c.lt.d	$f12,$f13
	nop
	bc1t	.L560
	nop

	c.lt.d	$f13,$f12
	nop
	bc1t	.L561
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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
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
	daddiu	$sp,$sp,16
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
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	bgez	$5,.L571
	nop

	subu	$5,$0,$5
	li	$6,1			# 0x1
	b	.L565
	nop

.L571:
	move	$6,$0
.L565:
	li	$3,33			# 0x21
	move	$2,$0
	b	.L566
	nop

.L569:
	andi	$7,$5,0x1
	beq	$7,$0,.L567
	nop

	addu	$2,$2,$4
.L567:
	sll	$4,$4,1
	sra	$5,$5,1
.L566:
	beq	$5,$0,.L568
	nop

	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	bne	$3,$0,.L569
	nop

.L568:
	beq	$6,$0,.L570
	nop

	subu	$2,$0,$2
.L570:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	bgez	$4,.L577
	nop

	dsubu	$4,$0,$4
	li	$16,1			# 0x1
	b	.L574
	nop

.L577:
	move	$16,$0
.L574:
	bgez	$5,.L575
	nop

	dsubu	$5,$0,$5
	xori	$16,$16,0x1
.L575:
	sll	$4,$4,0
	sll	$5,$5,0
	move	$6,$0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MIPS_JALR,__udivmodsi4
1:	jalr	$25
	nop

	dsll	$2,$2,32
	dsrl	$2,$2,32
	beq	$16,$0,.L576
	nop

	dsubu	$2,$0,$2
.L576:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	bgez	$4,.L582
	nop

	dsubu	$4,$0,$4
	li	$16,1			# 0x1
	b	.L579
	nop

.L582:
	move	$16,$0
.L579:
	bgez	$5,.L580
	nop

	dsubu	$5,$0,$5
.L580:
	sll	$4,$4,0
	sll	$5,$5,0
	li	$6,1			# 0x1
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MIPS_JALR,__udivmodsi4
1:	jalr	$25
	nop

	dsll	$2,$2,32
	dsrl	$2,$2,32
	beq	$16,$0,.L581
	nop

	dsubu	$2,$0,$2
.L581:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	li	$3,17			# 0x11
	li	$2,1			# 0x1
	b	.L584
	nop

.L586:
	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$2,$2,1
	andi	$2,$2,0xffff
.L584:
	sltu	$7,$5,$4
	beq	$7,$0,.L591
	nop

	addiu	$3,$3,-1
	beq	$3,$0,.L592
	nop

	dsll	$7,$5,48
	dsra	$7,$7,48
	bgez	$7,.L586
	nop

	move	$3,$0
	b	.L588
	nop

.L589:
	sltu	$7,$4,$5
	bne	$7,$0,.L587
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$3,$3,$2
.L587:
	dsrl	$2,$2,1
	dsrl	$5,$5,1
	b	.L588
	nop

.L591:
	move	$3,$0
	b	.L588
	nop

.L592:
	move	$3,$0
.L588:
	bne	$2,$0,.L589
	nop

	bne	$6,$0,.L593
	nop

	move	$2,$3
	b	.L590
	nop

.L593:
	move	$2,$4
.L590:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	li	$3,65			# 0x41
	li	$2,1			# 0x1
	b	.L595
	nop

.L597:
	dsll	$5,$5,1
	dsll	$2,$2,1
.L595:
	sltu	$7,$5,$4
	beq	$7,$0,.L602
	nop

	addiu	$3,$3,-1
	beq	$3,$0,.L603
	nop

	dsrl	$7,$5,31
	andi	$7,$7,0x1
	beq	$7,$0,.L597
	nop

	move	$3,$0
	b	.L599
	nop

.L600:
	sltu	$7,$4,$5
	bne	$7,$0,.L598
	nop

	dsubu	$4,$4,$5
	or	$3,$3,$2
.L598:
	dsrl	$2,$2,1
	dsrl	$5,$5,1
	b	.L599
	nop

.L602:
	move	$3,$0
	b	.L599
	nop

.L603:
	move	$3,$0
.L599:
	bne	$2,$0,.L600
	nop

	bne	$6,$0,.L604
	nop

	move	$2,$3
	b	.L601
	nop

.L604:
	move	$2,$4
.L601:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	move	$2,$4
	move	$3,$4
	andi	$4,$5,0x20
	beq	$4,$0,.L606
	nop

	sll	$3,$3,0
	sll	$3,$3,$5
	dsll	$2,$3,32
	b	.L608
	nop

.L606:
	beq	$5,$0,.L608
	nop

	sll	$4,$2,0
	sll	$6,$4,$5
	dsll	$2,$6,32
	dsrl	$2,$2,32
	dsra	$3,$3,32
	sll	$3,$3,$5
	subu	$5,$0,$5
	srl	$4,$4,$5
	or	$4,$4,$3
	dsll	$4,$4,32
	or	$2,$2,$4
.L608:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	move	$11,$5
	move	$10,$4
	andi	$2,$6,0x40
	beq	$2,$0,.L611
	nop

	move	$9,$0
	dsll	$6,$5,$6
	move	$8,$6
	b	.L612
	nop

.L611:
	beq	$6,$0,.L614
	nop

	dsll	$9,$5,$6
	dsll	$10,$4,$6
	subu	$6,$0,$6
	dsrl	$2,$5,$6
	or	$2,$2,$10
	move	$8,$2
.L612:
	move	$3,$9
	move	$2,$8
	b	.L613
	nop

.L614:
	move	$3,$5
	move	$2,$4
.L613:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	move	$2,$4
	move	$3,$4
	andi	$4,$5,0x20
	beq	$4,$0,.L616
	nop

	dsra	$3,$2,32
	sra	$4,$3,31
	dsll	$2,$4,32
	sra	$3,$3,$5
	dsll	$3,$3,32
	dsrl	$3,$3,32
	or	$2,$2,$3
	b	.L618
	nop

.L616:
	beq	$5,$0,.L618
	nop

	dsra	$4,$2,32
	sra	$6,$4,$5
	dsll	$2,$6,32
	subu	$6,$0,$5
	sll	$4,$4,$6
	sll	$3,$3,0
	srl	$3,$3,$5
	or	$4,$4,$3
	dsll	$4,$4,32
	dsrl	$4,$4,32
	or	$2,$2,$4
.L618:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	move	$11,$5
	move	$10,$4
	andi	$2,$6,0x40
	beq	$2,$0,.L621
	nop

	dsra	$8,$4,63
	dsra	$10,$4,$6
	move	$9,$10
	b	.L622
	nop

.L621:
	beq	$6,$0,.L624
	nop

	dsra	$8,$4,$6
	subu	$3,$0,$6
	dsll	$2,$4,$3
	dsrl	$6,$5,$6
	or	$9,$2,$6
.L622:
	move	$3,$9
	move	$2,$8
	b	.L623
	nop

.L624:
	move	$3,$5
	move	$2,$4
.L623:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	li	$2,255			# 0xff
	dsll	$3,$2,24
	and	$7,$7,$3
	dsll	$6,$4,8
	dsll	$3,$2,32
	and	$6,$6,$3
	dsll	$5,$4,24
	dsll	$3,$2,40
	and	$5,$5,$3
	dsll	$3,$4,40
	dsll	$2,$2,48
	and	$3,$3,$2
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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	li	$2,65536			# 0x10000
	sltu	$2,$4,$2
	beq	$2,$0,.L632
	nop

	li	$3,16			# 0x10
	b	.L628
	nop

.L632:
	move	$3,$0
.L628:
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	bne	$2,$0,.L633
	nop

	li	$2,8			# 0x8
	b	.L629
	nop

.L633:
	move	$2,$0
.L629:
	li	$5,8			# 0x8
	subu	$5,$5,$2
	srl	$4,$4,$5
	addu	$3,$2,$3
	andi	$2,$4,0xf0
	bne	$2,$0,.L634
	nop

	li	$2,4			# 0x4
	b	.L630
	nop

.L634:
	move	$2,$0
.L630:
	li	$5,4			# 0x4
	subu	$5,$5,$2
	srl	$4,$4,$5
	addu	$3,$3,$2
	andi	$2,$4,0xc
	bne	$2,$0,.L635
	nop

	li	$5,2			# 0x2
	b	.L631
	nop

.L635:
	move	$5,$0
.L631:
	li	$2,2			# 0x2
	subu	$6,$2,$5
	srl	$4,$4,$6
	addu	$3,$3,$5
	andi	$5,$4,0x2
	sltu	$5,$5,1
	subu	$2,$2,$4
	mult	$5,$2
	mflo	$2
	addu	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	or	$4,$3,$4
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	andi	$16,$16,0x40
	addu	$2,$2,$16
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	move	$fp,$sp
	dsra	$2,$4,32
	dsra	$3,$5,32
	slt	$2,$2,$3
	bne	$2,$0,.L639
	nop

	dsra	$2,$4,32
	slt	$2,$3,$2
	bne	$2,$0,.L640
	nop

	sll	$2,$4,0
	sll	$3,$5,0
	sltu	$2,$2,$3
	bne	$2,$0,.L641
	nop

	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5,$4
	bne	$4,$0,.L642
	nop

	li	$2,1			# 0x1
	b	.L638
	nop

.L639:
	move	$2,$0
	b	.L638
	nop

.L640:
	li	$2,2			# 0x2
	b	.L638
	nop

.L641:
	move	$2,$0
	b	.L638
	nop

.L642:
	li	$2,2			# 0x2
.L638:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__aeabi_lcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_lcmp)))
	ld	$25,%got_disp(__cmpdi2)($28)
	.reloc	1f,R_MIPS_JALR,__cmpdi2
1:	jalr	$25
	nop

	addiu	$2,$2,-1
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	move	$fp,$sp
	slt	$2,$4,$6
	bne	$2,$0,.L646
	nop

	slt	$2,$6,$4
	bne	$2,$0,.L647
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L648
	nop

	sltu	$2,$7,$5
	bne	$2,$0,.L649
	nop

	li	$2,1			# 0x1
	b	.L645
	nop

.L646:
	move	$2,$0
	b	.L645
	nop

.L647:
	li	$2,2			# 0x2
	b	.L645
	nop

.L648:
	move	$2,$0
	b	.L645
	nop

.L649:
	li	$2,2			# 0x2
.L645:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	bne	$2,$0,.L655
	nop

	li	$3,16			# 0x10
	b	.L651
	nop

.L655:
	move	$3,$0
.L651:
	srl	$4,$4,$3
	andi	$2,$4,0x00ff
	bne	$2,$0,.L656
	nop

	li	$2,8			# 0x8
	b	.L652
	nop

.L656:
	move	$2,$0
.L652:
	srl	$4,$4,$2
	addu	$3,$2,$3
	andi	$2,$4,0xf
	bne	$2,$0,.L657
	nop

	li	$2,4			# 0x4
	b	.L653
	nop

.L657:
	move	$2,$0
.L653:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	bne	$2,$0,.L658
	nop

	li	$2,2			# 0x2
	b	.L654
	nop

.L658:
	move	$2,$0
.L654:
	srl	$4,$4,$2
	andi	$4,$4,0x3
	addu	$3,$3,$2
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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	and	$4,$16,$4
	nor	$2,$0,$16
	and	$2,$2,$5
	ld	$25,%call16(__ctzdi2)($28)
	or	$4,$2,$4
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	nop

	andi	$16,$16,0x40
	addu	$2,$2,$16
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ffsti2)))
	bne	$5,$0,.L661
	nop

	beq	$4,$0,.L663
	nop

	ld	$25,%call16(__ctzdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	nop

	addiu	$2,$2,65
	b	.L662
	nop

.L661:
	ld	$25,%call16(__ctzdi2)($28)
	move	$4,$5
	.reloc	1f,R_MIPS_JALR,__ctzdi2
1:	jalr	$25
	nop

	addiu	$2,$2,1
	b	.L662
	nop

.L663:
	move	$2,$0
.L662:
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	move	$fp,$sp
	move	$2,$4
	move	$3,$4
	andi	$4,$5,0x20
	beq	$4,$0,.L665
	nop

	dsra	$3,$3,32
	srl	$5,$3,$5
	dsll	$2,$5,32
	dsrl	$2,$2,32
	b	.L667
	nop

.L665:
	beq	$5,$0,.L667
	nop

	dsra	$4,$2,32
	srl	$6,$4,$5
	dsll	$2,$6,32
	subu	$6,$0,$5
	sll	$4,$4,$6
	sll	$3,$3,0
	srl	$3,$3,$5
	or	$4,$4,$3
	dsll	$4,$4,32
	dsrl	$4,$4,32
	or	$2,$2,$4
.L667:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	move	$11,$5
	move	$10,$4
	andi	$2,$6,0x40
	beq	$2,$0,.L670
	nop

	move	$8,$0
	dsrl	$9,$4,$6
	b	.L671
	nop

.L670:
	beq	$6,$0,.L673
	nop

	dsrl	$8,$4,$6
	subu	$3,$0,$6
	dsll	$2,$4,$3
	dsrl	$6,$5,$6
	or	$9,$2,$6
.L671:
	move	$3,$9
	move	$2,$8
	b	.L672
	nop

.L673:
	move	$3,$5
	move	$2,$4
.L672:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	andi	$8,$4,0xffff
	andi	$7,$5,0xffff
	mult	$8,$7
	li	$6,-1			# 0xffffffffffffffff
	dsll	$6,$6,32
	mflo	$2
	dsll	$2,$2,32
	dsrl	$2,$2,32
	sll	$2,$2,0
	srl	$3,$2,16
	andi	$2,$2,0xffff
	srl	$4,$4,16
	mult	$4,$7
	mflo	$7
	addu	$3,$3,$7
	sll	$2,$2,0
	sll	$7,$3,16
	addu	$2,$2,$7
	dsll	$2,$2,32
	dsrl	$2,$2,32
	srl	$3,$3,16
	dsll	$3,$3,32
	or	$2,$2,$3
	sll	$7,$2,0
	srl	$3,$7,16
	andi	$7,$7,0xffff
	and	$2,$2,$6
	or	$2,$2,$7
	srl	$5,$5,16
	mult	$5,$8
	mflo	$7
	addu	$3,$3,$7
	sll	$7,$2,0
	sll	$8,$3,16
	addu	$7,$7,$8
	dsll	$7,$7,32
	dsrl	$7,$7,32
	and	$2,$2,$6
	or	$2,$2,$7
	dsra	$6,$2,32
	srl	$3,$3,16
	addu	$3,$3,$6
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,$2,32
	or	$2,$2,$3
	dsra	$6,$2,32
	mult	$5,$4
	mflo	$3
	addu	$3,$3,$6
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,$2,32
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$4,$18
	ld	$25,%got_disp(__muldsi3)($28)
	.reloc	1f,R_MIPS_JALR,__muldsi3
1:	jalr	$25
	nop

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
	daddiu	$sp,$sp,80
	jr	$31
	nop

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
	mflo	$3
	dsrl	$2,$3,32
	dsll	$3,$3,32
	dsrl	$3,$3,32
	dsrl	$4,$4,32
	dmult	$4,$9
	mflo	$9
	daddu	$2,$2,$9
	dsll	$9,$2,32
	daddu	$7,$9,$3
	dsrl	$2,$2,32
	move	$6,$2
	dsrl	$2,$7,32
	dsll	$3,$7,32
	dsrl	$3,$3,32
	dsrl	$5,$5,32
	dmult	$8,$5
	mflo	$8
	daddu	$2,$2,$8
	dsll	$8,$2,32
	daddu	$7,$8,$3
	dsrl	$2,$2,32
	daddu	$2,$2,$6
	dmult	$4,$5
	mflo	$3
	daddu	$2,$3,$2
	move	$3,$7
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.reloc	1f,R_MIPS_JALR,__mulddi3
1:	jalr	$25
	nop

	move	$6,$2
	move	$5,$3
	dmult	$17,$18
	mflo	$3
	nop
	nop
	dmult	$19,$16
	mflo	$2
	daddu	$3,$3,$2
	daddu	$2,$3,$6
	move	$3,$5
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
	daddiu	$sp,$sp,80
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$2,$4
	srl	$4,$4,16
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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	and	$3,$3,$2
	dsubu	$3,$4,$3
	dsrl	$4,$3,2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	daddiu	$2,$2,13107
	and	$4,$4,$2
	and	$3,$3,$2
	daddu	$3,$4,$3
	dsrl	$2,$3,4
	daddu	$3,$2,$3
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	daddiu	$2,$2,3855
	and	$3,$3,$2
	sll	$2,$3,0
	dsrl	$3,$3,32
	addu	$3,$2,$3
	srl	$2,$3,16
	addu	$3,$2,$3
	srl	$2,$3,8
	addu	$2,$2,$3
	andi	$2,$2,0x7f
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	srl	$3,$4,1
	li	$2,1431633920			# 0x55550000
	addiu	$2,$2,21845
	and	$3,$3,$2
	subu	$3,$4,$3
	srl	$4,$3,2
	li	$2,858980352			# 0x33330000
	addiu	$2,$2,13107
	and	$4,$4,$2
	and	$3,$3,$2
	addu	$3,$4,$3
	srl	$2,$3,4
	addu	$2,$2,$3
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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	dsll	$6,$10,60
	dsrl	$5,$11,4
	or	$5,$6,$5
	dsrl	$4,$10,4
	daddu	$7,$5,$11
	sltu	$3,$7,$5
	daddu	$6,$4,$10
	daddu	$6,$3,$6
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	daddiu	$2,$2,3855
	and	$8,$6,$2
	and	$9,$7,$2
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
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	slt	$2,$5,0
	ld	$3,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($3)
.L689:
	andi	$3,$5,0x1
	beq	$3,$0,.L687
	nop

	mul.d	$f0,$f0,$f12
.L687:
	srl	$3,$5,31
	addu	$5,$3,$5
	sra	$5,$5,1
	beq	$5,$0,.L688
	nop

	mul.d	$f12,$f12,$f12
	b	.L689
	nop

.L688:
	beq	$2,$0,.L690
	nop

	ld	$2,%got_page(.LC12)($4)
	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
.L690:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
.L695:
	andi	$3,$5,0x1
	beq	$3,$0,.L693
	nop

	mul.s	$f0,$f0,$f12
.L693:
	srl	$3,$5,31
	addu	$5,$3,$5
	sra	$5,$5,1
	beq	$5,$0,.L694
	nop

	mul.s	$f12,$f12,$f12
	b	.L695
	nop

.L694:
	beq	$2,$0,.L696
	nop

	ld	$2,%got_page(.LC14)($4)
	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
.L696:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
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
	bne	$2,$0,.L700
	nop

	dsra	$2,$4,32
	sltu	$2,$3,$2
	bne	$2,$0,.L701
	nop

	sll	$2,$4,0
	sll	$3,$5,0
	sltu	$2,$2,$3
	bne	$2,$0,.L702
	nop

	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5,$4
	bne	$4,$0,.L703
	nop

	li	$2,1			# 0x1
	b	.L699
	nop

.L700:
	move	$2,$0
	b	.L699
	nop

.L701:
	li	$2,2			# 0x2
	b	.L699
	nop

.L702:
	move	$2,$0
	b	.L699
	nop

.L703:
	li	$2,2			# 0x2
.L699:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__aeabi_ulcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_ulcmp)))
	ld	$25,%got_disp(__ucmpdi2)($28)
	.reloc	1f,R_MIPS_JALR,__ucmpdi2
1:	jalr	$25
	nop

	addiu	$2,$2,-1
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	move	$fp,$sp
	sltu	$2,$4,$6
	bne	$2,$0,.L707
	nop

	sltu	$2,$6,$4
	bne	$2,$0,.L708
	nop

	sltu	$2,$5,$7
	bne	$2,$0,.L709
	nop

	sltu	$2,$7,$5
	bne	$2,$0,.L710
	nop

	li	$2,1			# 0x1
	b	.L706
	nop

.L707:
	move	$2,$0
	b	.L706
	nop

.L708:
	li	$2,2			# 0x2
	b	.L706
	nop

.L709:
	move	$2,$0
	b	.L706
	nop

.L710:
	li	$2,2			# 0x2
.L706:
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
