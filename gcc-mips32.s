	.file	1 "mini-libc.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.module	arch=mips1
	.abicalls
	.text
	.align	2
	.globl	memmove
	.set	nomips16
	.set	nomicromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sltu	$3,$5,$4
	beq	$3,$0,$L2
	move	$2,$4

	addu	$3,$5,$6
	.option	pic0
	b	$L3
	.option	pic2
	addu	$6,$4,$6

$L4:
	addiu	$3,$3,-1
	addiu	$6,$6,-1
	lb	$7,0($3)
	nop
	sb	$7,0($6)
$L3:
	bne	$3,$5,$L4
	nop

	.option	pic0
	b	$L5
	nop

	.option	pic2
$L2:
	beq	$4,$5,$L5
	nop

	addu	$7,$4,$6
	move	$3,$5
	.option	pic0
	b	$L6
	.option	pic2
	move	$6,$4

$L7:
	addiu	$3,$3,1
	addiu	$6,$6,1
	lb	$4,-1($3)
	nop
	sb	$4,-1($6)
$L6:
	bne	$6,$7,$L7
	nop

$L5:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L9
	.option	pic2
	andi	$6,$6,0x00ff

$L11:
	addiu	$7,$7,-1
	addiu	$5,$5,1
	addiu	$4,$4,1
$L9:
	beq	$7,$0,$L10
	nop

	lbu	$2,0($5)
	nop
	bne	$6,$2,$L11
	sb	$2,0($4)

$L10:
	bne	$7,$0,$L12
	addiu	$2,$4,1

	move	$2,$0
$L12:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L15
	.option	pic2
	andi	$5,$5,0x00ff

$L20:
	addiu	$6,$6,-1
$L15:
	beq	$6,$0,$L16
	nop

	lbu	$2,0($4)
	nop
	bne	$5,$2,$L20
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L16:
	bne	$6,$0,$L18
	move	$2,$4

	move	$2,$0
$L18:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	.option	pic0
	b	$L22
	.option	pic2
	move	$fp,$sp

$L27:
	addiu	$4,$4,1
	addiu	$5,$5,1
$L22:
	beq	$6,$0,$L23
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	beq	$3,$2,$L27
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L23:
	beq	$6,$0,$L26
	nop

	lbu	$2,0($4)
	lbu	$3,0($5)
	.option	pic0
	b	$L25
	.option	pic2
	subu	$2,$2,$3

$L26:
	move	$2,$0
$L25:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	addu	$6,$4,$6
	.option	pic0
	b	$L29
	.option	pic2
	move	$3,$4

$L30:
	addiu	$5,$5,1
	addiu	$3,$3,1
	lbu	$7,-1($5)
	nop
	sb	$7,-1($3)
$L29:
	bne	$3,$6,$L30
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	andi	$5,$5,0x00ff
	addiu	$6,$6,-1
	.option	pic0
	b	$L32
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L34:
	lbu	$3,0($3)
	nop
	bne	$5,$3,$L35
	addiu	$7,$6,-1

	.option	pic0
	b	$L33
	.option	pic2
	addu	$2,$4,$6

$L35:
	move	$6,$7
$L32:
	bne	$6,$2,$L34
	addu	$3,$4,$6

	move	$2,$0
$L33:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	addu	$6,$4,$6
	move	$3,$4
	.option	pic0
	b	$L37
	.option	pic2
	andi	$5,$5,0x00ff

$L38:
	sb	$5,0($3)
	addiu	$3,$3,1
$L37:
	bne	$3,$6,$L38
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L40
	.option	pic2
	move	$2,$4

$L41:
	addiu	$5,$5,1
	addiu	$2,$2,1
$L40:
	lb	$3,0($5)
	nop
	bne	$3,$0,$L41
	sb	$3,0($2)

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	.option	pic0
	b	$L43
	.option	pic2
	andi	$5,$5,0x00ff

$L43:
	lb	$3,0($2)
	nop
	beq	$3,$0,$L44
	nop

	lbu	$3,0($2)
	nop
	bne	$5,$3,$L43
	addiu	$2,$2,1

	addiu	$2,$2,-1
$L44:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
$L48:
	lb	$2,0($4)
	nop
	beq	$5,$2,$L49
	move	$2,$4

	addiu	$4,$4,1
	lb	$2,-1($4)
	nop
	bne	$2,$0,$L48
	nop

$L49:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	.option	pic0
	b	$L52
	.option	pic2
	move	$fp,$sp

$L55:
	addiu	$5,$5,1
$L52:
	lb	$3,0($4)
	lb	$2,0($5)
	nop
	bne	$3,$2,$L53
	nop

	bne	$3,$0,$L55
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L53:
	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	subu	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L57
	.option	pic2
	move	$2,$4

$L58:
	addiu	$2,$2,1
$L57:
	lb	$5,0($2)
	nop
	bne	$5,$0,$L58
	nop

	subu	$2,$2,$4
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	beq	$6,$0,$L64
	move	$fp,$sp

	addiu	$6,$6,-1
	.option	pic0
	b	$L61
	.option	pic2
	addu	$2,$4,$6

$L65:
	addiu	$5,$5,1
$L61:
	lbu	$3,0($4)
	nop
	beq	$3,$0,$L62
	nop

	lbu	$3,0($5)
	nop
	beq	$3,$0,$L62
	nop

	beq	$4,$2,$L62
	nop

	lbu	$6,0($4)
	nop
	beq	$6,$3,$L65
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L62:
	lbu	$2,0($4)
	lbu	$3,0($5)
	.option	pic0
	b	$L60
	.option	pic2
	subu	$2,$2,$3

$L64:
	move	$2,$0
$L60:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	.option	pic0
	b	$L67
	.option	pic2
	addu	$6,$4,$6

$L68:
	lb	$3,1($2)
	nop
	sb	$3,0($5)
	lb	$3,0($2)
	nop
	sb	$3,1($5)
	addiu	$5,$5,2
	addiu	$2,$2,2
$L67:
	subu	$3,$6,$2
	slt	$3,$3,2
	beq	$3,$0,$L68
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	ori	$2,$4,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,26
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sltu	$2,$4,128
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	li	$2,32			# 0x20
	beq	$4,$2,$L73
	move	$fp,$sp

	xori	$4,$4,0x9
	.option	pic0
	b	$L72
	.option	pic2
	sltu	$2,$4,1

$L73:
	li	$2,1			# 0x1
$L72:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	sltu	$2,$4,32
	bne	$2,$0,$L77
	move	$fp,$sp

	xori	$4,$4,0x7f
	.option	pic0
	b	$L76
	.option	pic2
	sltu	$2,$4,1

$L77:
	li	$2,1			# 0x1
$L76:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	addiu	$2,$4,-48
	sltu	$2,$2,10
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	addiu	$2,$4,-33
	sltu	$2,$2,94
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	addiu	$2,$4,-97
	sltu	$2,$2,26
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	addiu	$2,$4,-32
	sltu	$2,$2,95
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	li	$2,32			# 0x20
	beq	$4,$2,$L85
	move	$fp,$sp

	addiu	$4,$4,-9
	.option	pic0
	b	$L84
	.option	pic2
	sltu	$2,$4,5

$L85:
	li	$2,1			# 0x1
$L84:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	addiu	$2,$4,-65
	sltu	$2,$2,26
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	sltu	$2,$4,32
	bne	$2,$0,$L90
	move	$fp,$sp

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,$L94
	li	$2,1			# 0x1

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L92
	li	$2,-65536			# 0xffffffffffff0000

	addiu	$2,$2,7
	addu	$4,$4,$2
	.option	pic0
	b	$L89
	.option	pic2
	sltu	$2,$4,3

$L90:
	.option	pic0
	b	$L89
	.option	pic2
	li	$2,1			# 0x1

$L92:
	li	$2,1			# 0x1
$L89:
$L94:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	addiu	$2,$4,-48
	sltu	$2,$2,10
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	sltu	$2,$4,255
	beq	$2,$0,$L97
	move	$fp,$sp

	addiu	$2,$4,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	.option	pic0
	b	$L98
	.option	pic2
	xori	$2,$2,0x1

$L97:
	sltu	$2,$4,8232
	bne	$2,$0,$L99
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,$L104
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$4,$2
	sltu	$2,$2,8185
	bne	$2,$0,$L104
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$4,$2
	li	$3,1048576			# 0x100000
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L102
	andi	$2,$4,0xfffe

	xori	$2,$2,0xfffe
	.option	pic0
	b	$L98
	.option	pic2
	sltu	$2,$0,$2

$L99:
	.option	pic0
	b	$L98
	.option	pic2
	li	$2,1			# 0x1

	.option	pic0
	b	$L98
	.option	pic2
	li	$2,1			# 0x1

$L102:
	move	$2,$0
$L98:
$L104:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	addiu	$2,$4,-48
	sltu	$2,$2,10
	bne	$2,$0,$L107
	move	$fp,$sp

	ori	$2,$4,0x20
	addiu	$2,$2,-97
	.option	pic0
	b	$L106
	.option	pic2
	sltu	$2,$2,6

$L107:
	li	$2,1			# 0x1
$L106:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	andi	$2,$4,0x7f
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L113
	move	$fp,$sp

	c.un.d	$f14,$f14
	nop
	bc1t	$L118
	mov.d	$f0,$f14

	c.lt.d	$f14,$f12
	nop
	bc1f	$L117
	nop

	.option	pic0
	b	$L111
	.option	pic2
	sub.d	$f0,$f12,$f14

$L113:
	.option	pic0
	b	$L111
	.option	pic2
	mov.d	$f0,$f12

$L117:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
$L111:
$L118:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	c.un.s	$f12,$f12
	nop
	bc1t	$L122
	move	$fp,$sp

	c.un.s	$f14,$f14
	nop
	bc1t	$L127
	mov.s	$f0,$f14

	c.lt.s	$f14,$f12
	nop
	bc1f	$L126
	nop

	.option	pic0
	b	$L120
	.option	pic2
	sub.s	$f0,$f12,$f14

$L122:
	.option	pic0
	b	$L120
	.option	pic2
	mov.s	$f0,$f12

$L126:
	mtc1	$0,$f0
$L120:
$L127:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	swc1	$f14,20($fp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L132
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L133
	mov.d	$f0,$f14

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L130
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L134
	nop

	.option	pic0
	b	$L129
	nop

	.option	pic2
$L130:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L137
	mov.d	$f0,$f2

	.option	pic0
	b	$L129
	nop

	.option	pic2
$L132:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L129
	nop

	.option	pic2
$L133:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L129
	nop

	.option	pic2
$L134:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L129
	nop

	.option	pic2
$L137:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
$L129:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,8($fp)
	c.un.s	$f12,$f12
	nop
	bc1t	$L142
	swc1	$f14,12($fp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L143
	mov.s	$f0,$f14

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,12($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L140
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L144
	nop

	.option	pic0
	b	$L139
	nop

	.option	pic2
$L140:
	lwc1	$f0,8($fp)
	lwc1	$f2,12($fp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L147
	nop

	.option	pic0
	b	$L139
	.option	pic2
	mov.s	$f0,$f2

$L142:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L139
	nop

	.option	pic2
$L143:
	lwc1	$f0,8($fp)
	.option	pic0
	b	$L139
	nop

	.option	pic2
$L144:
	lwc1	$f0,8($fp)
$L147:
$L139:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	swc1	$f14,20($fp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L152
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L153
	mov.d	$f0,$f14

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L150
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L154
	nop

	.option	pic0
	b	$L149
	nop

	.option	pic2
$L150:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L157
	mov.d	$f0,$f2

	.option	pic0
	b	$L149
	nop

	.option	pic2
$L152:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L149
	nop

	.option	pic2
$L153:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L149
	nop

	.option	pic2
$L154:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L149
	nop

	.option	pic2
$L157:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
$L149:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	swc1	$f14,20($fp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L162
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L163
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,8($fp)
	nop
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L160
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L164
	nop

	.option	pic0
	b	$L159
	.option	pic2
	mov.d	$f0,$f12

$L160:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L167
	nop

	.option	pic0
	b	$L159
	nop

	.option	pic2
$L162:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L159
	nop

	.option	pic2
$L163:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L159
	nop

	.option	pic2
$L164:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L159
	nop

	.option	pic2
$L167:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
$L159:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,8($fp)
	c.un.s	$f12,$f12
	nop
	bc1t	$L172
	swc1	$f14,12($fp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L173
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,8($fp)
	nop
	and	$3,$3,$4
	lw	$2,12($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L170
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L174
	nop

	.option	pic0
	b	$L169
	.option	pic2
	mov.s	$f0,$f12

$L170:
	lwc1	$f0,8($fp)
	lwc1	$f2,12($fp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L177
	nop

	.option	pic0
	b	$L169
	nop

	.option	pic2
$L172:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L169
	nop

	.option	pic2
$L173:
	lwc1	$f0,8($fp)
	.option	pic0
	b	$L169
	nop

	.option	pic2
$L174:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L169
	nop

	.option	pic2
$L177:
	lwc1	$f0,12($fp)
$L169:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,12($fp)
	swc1	$f13,8($fp)
	swc1	$f14,20($fp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L182
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L183
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,8($fp)
	nop
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L180
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L184
	nop

	.option	pic0
	b	$L179
	.option	pic2
	mov.d	$f0,$f12

$L180:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L187
	nop

	.option	pic0
	b	$L179
	nop

	.option	pic2
$L182:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L179
	nop

	.option	pic2
$L183:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L179
	nop

	.option	pic2
$L184:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L179
	nop

	.option	pic2
$L187:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
$L179:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	fminl
	.size	fminl, .-fminl
	.rdata
	.align	2
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$3,%hi(s.0)
	addiu	$3,$3,%lo(s.0)
	lui	$5,%hi(digits)
	.option	pic0
	b	$L189
	.option	pic2
	addiu	$5,$5,%lo(digits)

$L190:
	addu	$2,$2,$5
	lb	$2,0($2)
	nop
	sb	$2,0($3)
	addiu	$3,$3,1
	srl	$4,$4,6
$L189:
	bne	$4,$0,$L190
	andi	$2,$4,0x3f

	sb	$0,0($3)
	lui	$2,%hi(s.0)
	addiu	$2,$2,%lo(s.0)
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	addiu	$3,$4,-1
	move	$2,$0
	lui	$4,%hi(seed)
	sw	$3,%lo(seed+4)($4)
	sw	$2,%lo(seed)($4)
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$6,%hi(seed)
	lw	$9,%lo(seed+4)($6)
	lw	$8,%lo(seed)($6)
	li	$2,1284833280			# 0x4c950000
	addiu	$2,$2,32557
	mult	$8,$2
	mflo	$3
	li	$4,1481703424			# 0x58510000
	ori	$4,$4,0xf42d
	mult	$9,$4
	mflo	$4
	addu	$3,$3,$4
	nop
	multu	$9,$2
	mflo	$9
	mfhi	$8
	addu	$8,$3,$8
	addiu	$3,$9,1
	sltu	$5,$3,$9
	addu	$2,$5,$8
	sw	$3,%lo(seed+4)($6)
	sw	$2,%lo(seed)($6)
	srl	$5,$2,1
	move	$2,$5
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	bne	$5,$0,$L194
	move	$fp,$sp

	sw	$0,4($4)
	.option	pic0
	b	$L193
	.option	pic2
	sw	$0,0($4)

$L194:
	lw	$2,0($5)
	nop
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L193
	nop

	sw	$4,4($2)
$L193:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L197
	move	$fp,$sp

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L197:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L196
	nop

	lw	$3,0($4)
	nop
	sw	$3,0($2)
$L196:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,64,$31		# vars= 0, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$19,$4
	move	$22,$5
	move	$23,$6
	move	$18,$7
	lw	$21,80($fp)
	lw	$20,0($6)
	move	$17,$5
	.option	pic0
	b	$L200
	.option	pic2
	move	$16,$0

$L203:
	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L201
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L202
	.option	pic2
	addu	$2,$22,$2

$L201:
	addiu	$16,$16,1
$L200:
	bne	$16,$20,$L203
	move	$5,$17

	addiu	$2,$20,1
	sw	$2,0($23)
	mult	$18,$20
	mflo	$4
	move	$6,$18
	move	$5,$19
	addu	$4,$22,$4
	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L202:
	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,64

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
	.frame	$fp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0xc07f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	move	$19,$4
	move	$22,$5
	move	$18,$7
	lw	$21,80($fp)
	lw	$20,0($6)
	move	$17,$5
	.option	pic0
	b	$L205
	.option	pic2
	move	$16,$0

$L208:
	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	bne	$2,$0,$L206
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L207
	.option	pic2
	addu	$2,$22,$2

$L206:
	addiu	$16,$16,1
$L205:
	bne	$16,$20,$L208
	move	$5,$17

	move	$2,$0
$L207:
	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	bgez	$4,$L210
	move	$2,$4

	subu	$2,$0,$4
$L210:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	.option	pic0
	b	$L212
	.option	pic2
	move	$16,$4

$L213:
	addiu	$16,$16,1
$L212:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L213
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L219
	li	$3,45			# 0x2d

	bne	$2,$3,$L220
	nop

	.option	pic0
	b	$L214
	.option	pic2
	li	$4,1			# 0x1

$L219:
	move	$4,$0
$L214:
	.option	pic0
	b	$L215
	.option	pic2
	addiu	$16,$16,1

$L220:
	move	$4,$0
$L215:
	.option	pic0
	b	$L216
	.option	pic2
	move	$2,$0

$L217:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L216:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L217
	addiu	$16,$16,1

	bne	$4,$0,$L218
	nop

	subu	$2,$0,$2
$L218:
	move	$sp,$fp
	lw	$31,36($fp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

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
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	.option	pic0
	b	$L223
	.option	pic2
	move	$16,$4

$L224:
	addiu	$16,$16,1
$L223:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L224
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L230
	li	$3,45			# 0x2d

	bne	$2,$3,$L231
	nop

	.option	pic0
	b	$L225
	.option	pic2
	li	$4,1			# 0x1

$L230:
	move	$4,$0
$L225:
	.option	pic0
	b	$L226
	.option	pic2
	addiu	$16,$16,1

$L231:
	move	$4,$0
$L226:
	.option	pic0
	b	$L227
	.option	pic2
	move	$2,$0

$L228:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L227:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L228
	addiu	$16,$16,1

	bne	$4,$0,$L229
	nop

	subu	$2,$0,$2
$L229:
	move	$sp,$fp
	lw	$31,36($fp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

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
	.frame	$fp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0xc07f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	.option	pic0
	b	$L234
	.option	pic2
	move	$22,$4

$L235:
	addiu	$22,$22,1
$L234:
	lb	$4,0($22)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L235
	li	$3,43			# 0x2b

	lb	$2,0($22)
	nop
	beq	$2,$3,$L241
	li	$3,45			# 0x2d

	bne	$2,$3,$L242
	nop

	.option	pic0
	b	$L236
	.option	pic2
	li	$6,1			# 0x1

$L241:
	move	$6,$0
$L236:
	.option	pic0
	b	$L237
	.option	pic2
	addiu	$22,$22,1

$L242:
	move	$6,$0
$L237:
	move	$9,$0
	.option	pic0
	b	$L238
	.option	pic2
	move	$8,$0

$L239:
	sll	$16,$8,2
	or	$16,$4,$16
	sll	$17,$9,2
	addu	$5,$17,$9
	sltu	$3,$5,$17
	addu	$4,$16,$8
	addu	$4,$3,$4
	srl	$2,$5,31
	sll	$18,$4,1
	or	$18,$2,$18
	sll	$19,$5,1
	addiu	$22,$22,1
	lb	$2,-1($22)
	nop
	addiu	$2,$2,-48
	move	$21,$2
	sra	$20,$2,31
	subu	$3,$19,$21
	sltu	$4,$19,$3
	subu	$2,$18,$20
	subu	$2,$2,$4
	move	$9,$3
	move	$8,$2
$L238:
	lb	$4,0($22)
	nop
	addiu	$4,$4,-48
	sltu	$4,$4,10
	bne	$4,$0,$L239
	srl	$4,$9,30

	bne	$6,$0,$L243
	subu	$5,$0,$9

	sltu	$3,$0,$5
	subu	$4,$0,$8
	subu	$4,$4,$3
	move	$3,$5
	.option	pic0
	b	$L240
	.option	pic2
	move	$2,$4

$L243:
	move	$3,$9
	move	$2,$8
$L240:
	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

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
	.frame	$fp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0xc03f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$fp,$sp
	move	$20,$4
	move	$19,$5
	move	$16,$6
	lw	$21,72($fp)
	.option	pic0
	b	$L245
	.option	pic2
	move	$18,$7

$L249:
	srl	$2,$16,1
	mult	$2,$18
	mflo	$17
	addu	$17,$19,$17
	move	$5,$17
	move	$25,$21
	jalr	$25
	nop

	bgez	$2,$L246
	nop

	.option	pic0
	b	$L245
	.option	pic2
	srl	$16,$16,1

$L246:
	blez	$2,$L250
	addu	$19,$17,$18

	srl	$2,$16,1
	addiu	$16,$16,-1
	subu	$16,$16,$2
$L245:
	bne	$16,$0,$L249
	move	$4,$20

	.option	pic0
	b	$L248
	.option	pic2
	move	$2,$0

$L250:
	move	$2,$17
$L248:
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,56

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
	.frame	$fp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0xc07f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	move	$20,$4
	move	$19,$7
	lw	$22,80($fp)
	lw	$21,84($fp)
	move	$16,$6
	.option	pic0
	b	$L252
	.option	pic2
	move	$18,$5

$L255:
	sra	$2,$16,1
	mult	$2,$19
	mflo	$17
	addu	$17,$18,$17
	move	$5,$17
	move	$4,$20
	move	$25,$22
	jalr	$25
	nop

	beq	$2,$0,$L256
	nop

	blez	$2,$L254
	nop

	addu	$18,$17,$19
	addiu	$16,$16,-1
$L254:
	sra	$16,$16,1
$L252:
	bne	$16,$0,$L255
	move	$6,$21

	.option	pic0
	b	$L253
	.option	pic2
	move	$2,$0

$L256:
	move	$2,$17
$L253:
	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	bne	$6,$0,1f
	div	$0,$5,$6
	break	7
1:
	mfhi	$5
	mflo	$3
	sw	$3,0($4)
	sw	$5,4($4)
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$3,$5
	bgez	$4,$L259
	move	$2,$4

	subu	$3,$0,$5
	sltu	$5,$0,$3
	subu	$2,$0,$4
	subu	$2,$2,$5
$L259:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0xc01f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$20,$4
	move	$17,$7
	move	$16,$6
	lw	$25,%call16(__divdi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$17
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$19,$3
	move	$18,$2
	lw	$25,%call16(__moddi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$17
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$19,4($20)
	sw	$18,0($20)
	sw	$3,12($20)
	sw	$2,8($20)
	move	$2,$20
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,56

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	bgez	$4,$L263
	move	$2,$4

	subu	$2,$0,$4
$L263:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	bne	$6,$0,1f
	div	$0,$5,$6
	break	7
1:
	mfhi	$5
	mflo	$3
	sw	$3,0($4)
	sw	$5,4($4)
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$3,$5
	bgez	$4,$L266
	move	$2,$4

	subu	$3,$0,$5
	sltu	$5,$0,$3
	subu	$2,$0,$4
	subu	$2,$2,$5
$L266:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0xc01f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$20,$4
	move	$17,$7
	move	$16,$6
	lw	$25,%call16(__divdi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$17
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$19,$3
	move	$18,$2
	lw	$25,%call16(__moddi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$17
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$19,4($20)
	sw	$18,0($20)
	sw	$3,12($20)
	sw	$2,8($20)
	move	$2,$20
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,56

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	.option	pic0
	b	$L270
	.option	pic2
	move	$fp,$sp

$L270:
	lw	$2,0($4)
	nop
	beq	$2,$0,$L275
	nop

	bne	$5,$2,$L270
	addiu	$4,$4,4

	addiu	$4,$4,-4
	lw	$2,0($4)
	nop
$L275:
	bne	$2,$0,$L273
	move	$2,$4

	move	$2,$0
$L273:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	.option	pic0
	b	$L277
	.option	pic2
	move	$fp,$sp

$L282:
	addiu	$5,$5,4
$L277:
	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L278
	nop

	beq	$3,$0,$L278
	nop

	bne	$2,$0,$L282
	addiu	$4,$4,4

	addiu	$4,$4,-4
$L278:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L281
	nop

	lw	$2,0($4)
	.option	pic0
	b	$L280
	.option	pic2
	slt	$2,$3,$2

$L281:
	li	$2,-1			# 0xffffffffffffffff
$L280:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	move	$3,$4
$L284:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$6,-4($5)
	nop
	bne	$6,$0,$L284
	sw	$6,-4($3)

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L287
	.option	pic2
	move	$2,$4

$L288:
	addiu	$2,$2,4
$L287:
	lw	$3,0($2)
	nop
	bne	$3,$0,$L288
	nop

	subu	$2,$2,$4
	sra	$2,$2,2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	.option	pic0
	b	$L290
	.option	pic2
	move	$fp,$sp

$L296:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L290:
	beq	$6,$0,$L297
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L291
	nop

	beq	$3,$0,$L291
	nop

	bne	$2,$0,$L296
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L291:
	beq	$6,$0,$L297
	move	$2,$0

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L295
	nop

	lw	$2,0($4)
	.option	pic0
	b	$L293
	.option	pic2
	slt	$2,$3,$2

$L295:
	li	$2,-1			# 0xffffffffffffffff
$L293:
$L297:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	.option	pic0
	b	$L299
	.option	pic2
	move	$fp,$sp

$L304:
	addiu	$4,$4,4
$L299:
	beq	$6,$0,$L300
	nop

	lw	$2,0($4)
	nop
	bne	$5,$2,$L304
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L300:
	bne	$6,$0,$L302
	move	$2,$4

	move	$2,$0
$L302:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	.option	pic0
	b	$L306
	.option	pic2
	move	$fp,$sp

$L312:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L306:
	beq	$6,$0,$L313
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	beq	$3,$2,$L312
	addiu	$6,$6,-1

	addiu	$6,$6,1
	beq	$6,$0,$L313
	move	$2,$0

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L311
	nop

	lw	$2,0($4)
	.option	pic0
	b	$L309
	.option	pic2
	slt	$2,$3,$2

$L311:
	li	$2,-1			# 0xffffffffffffffff
$L309:
$L313:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	move	$3,$4
	.option	pic0
	b	$L315
	.option	pic2
	li	$8,-1			# 0xffffffffffffffff

$L316:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$7,-4($5)
	nop
	sw	$7,-4($3)
$L315:
	addiu	$6,$6,-1
	bne	$6,$8,$L316
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	beq	$4,$5,$L318
	move	$2,$4

	subu	$3,$4,$5
	sll	$4,$6,2
	sltu	$3,$3,$4
	beq	$3,$0,$L323
	li	$7,-1			# 0xffffffffffffffff

	addu	$5,$5,$4
	addu	$3,$2,$4
	.option	pic0
	b	$L320
	.option	pic2
	addiu	$6,$2,-4

$L321:
	lw	$4,0($5)
	nop
	sw	$4,0($3)
$L320:
	addiu	$3,$3,-4
	bne	$3,$6,$L321
	addiu	$5,$5,-4

	.option	pic0
	b	$L318
	nop

	.option	pic2
$L322:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$4,-4($5)
	.option	pic0
	b	$L319
	.option	pic2
	sw	$4,-4($3)

$L323:
	move	$3,$2
$L319:
	addiu	$6,$6,-1
	bne	$6,$7,$L322
	nop

$L318:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	move	$3,$4
	.option	pic0
	b	$L325
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L326:
	addiu	$3,$3,4
	sw	$5,-4($3)
$L325:
	addiu	$6,$6,-1
	bne	$6,$7,$L326
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	sltu	$2,$4,$5
	beq	$2,$0,$L328
	move	$fp,$sp

	addu	$2,$4,$6
	.option	pic0
	b	$L329
	.option	pic2
	addu	$5,$5,$6

$L330:
	addiu	$2,$2,-1
	addiu	$5,$5,-1
	lb	$3,0($2)
	nop
	sb	$3,0($5)
$L329:
	bne	$2,$4,$L330
	nop

	.option	pic0
	b	$L327
	nop

	.option	pic2
$L328:
	beq	$4,$5,$L327
	nop

	addu	$6,$5,$6
	.option	pic0
	b	$L332
	.option	pic2
	move	$2,$4

$L333:
	addiu	$2,$2,1
	addiu	$5,$5,1
	lb	$3,-1($2)
	nop
	sb	$3,-1($5)
$L332:
	bne	$5,$6,$L333
	nop

$L327:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	andi	$2,$6,0x20
	beq	$2,$0,$L335
	move	$fp,$sp

	sll	$8,$5,$6
	.option	pic0
	b	$L336
	.option	pic2
	move	$9,$0

$L335:
	srl	$2,$5,1
	nor	$3,$0,$6
	srl	$2,$2,$3
	sll	$8,$4,$6
	or	$8,$2,$8
	sll	$9,$5,$6
$L336:
	subu	$2,$0,$6
	andi	$2,$2,0x20
	beq	$2,$0,$L337
	sll	$2,$4,1

	subu	$6,$0,$6
	srl	$11,$4,$6
	.option	pic0
	b	$L338
	.option	pic2
	move	$10,$0

$L337:
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$11,$5,$6
	or	$11,$2,$11
	srl	$10,$4,$6
$L338:
	or	$2,$10,$8
	or	$3,$11,$9
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	andi	$2,$6,0x20
	beq	$2,$0,$L340
	move	$fp,$sp

	srl	$9,$4,$6
	.option	pic0
	b	$L341
	.option	pic2
	move	$8,$0

$L340:
	sll	$2,$4,1
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$9,$5,$6
	or	$9,$2,$9
	srl	$8,$4,$6
$L341:
	subu	$2,$0,$6
	andi	$2,$2,0x20
	beq	$2,$0,$L342
	srl	$2,$5,1

	subu	$6,$0,$6
	sll	$10,$5,$6
	.option	pic0
	b	$L343
	.option	pic2
	move	$11,$0

$L342:
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$3,$0,$6
	srl	$2,$2,$3
	sll	$10,$4,$6
	or	$10,$2,$10
	sll	$11,$5,$6
$L343:
	or	$2,$10,$8
	or	$3,$11,$9
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sll	$2,$4,$5
	subu	$5,$0,$5
	srl	$4,$4,$5
	or	$2,$4,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$2,$4,$5
	subu	$5,$0,$5
	sll	$4,$4,$5
	or	$2,$4,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sll	$2,$4,$5
	subu	$5,$0,$5
	srl	$4,$4,$5
	or	$2,$4,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$2,$4,$5
	subu	$5,$0,$5
	sll	$4,$4,$5
	or	$2,$4,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sll	$3,$4,$5
	li	$2,16			# 0x10
	subu	$2,$2,$5
	srl	$4,$4,$2
	or	$2,$4,$3
	andi	$2,$2,0xffff
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$3,$4,$5
	li	$2,16			# 0x10
	subu	$2,$2,$5
	sll	$4,$4,$2
	or	$2,$4,$3
	andi	$2,$2,0xffff
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sll	$3,$4,$5
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	or	$2,$4,$3
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$3,$4,$5
	li	$2,8			# 0x8
	subu	$2,$2,$5
	sll	$4,$4,$2
	or	$2,$4,$3
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$2,$4,8
	andi	$4,$4,0x00ff
	sll	$4,$4,8
	or	$2,$2,$4
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$3,$4,24
	srl	$2,$4,8
	andi	$2,$2,0xff00
	or	$2,$2,$3
	andi	$3,$4,0xff00
	sll	$3,$3,8
	or	$2,$2,$3
	sll	$4,$4,24
	or	$2,$2,$4
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$11,-16777216			# 0xffffffffff000000
	and	$6,$4,$11
	srl	$3,$6,24
	li	$10,16711680			# 0xff0000
	and	$8,$4,$10
	srl	$7,$8,8
	move	$8,$0
	or	$9,$7,$3
	andi	$6,$4,0xff00
	sll	$3,$6,8
	srl	$2,$6,24
	or	$6,$8,$2
	or	$7,$9,$3
	andi	$8,$4,0xff
	sll	$3,$8,24
	srl	$2,$8,8
	or	$8,$6,$2
	or	$9,$7,$3
	move	$6,$0
	and	$7,$5,$11
	srl	$4,$7,24
	sll	$2,$6,8
	or	$2,$4,$2
	sll	$3,$7,8
	or	$6,$8,$2
	or	$7,$9,$3
	move	$8,$0
	and	$9,$5,$10
	srl	$4,$9,8
	sll	$2,$8,24
	or	$2,$4,$2
	sll	$3,$9,24
	or	$8,$6,$2
	or	$9,$7,$3
	andi	$7,$5,0xff00
	sll	$2,$7,8
	or	$6,$8,$2
	andi	$3,$5,0xff
	sll	$4,$3,24
	or	$2,$6,$4
	move	$3,$9
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$0
	.option	pic0
	b	$L356
	.option	pic2
	li	$5,32			# 0x20

$L359:
	andi	$3,$3,0x1
	beq	$3,$0,$L356
	addiu	$2,$2,1

	addiu	$2,$2,-1
	.option	pic0
	b	$L358
	.option	pic2
	addiu	$2,$2,1

$L356:
	bne	$2,$5,$L359
	srl	$3,$4,$2

	move	$2,$0
$L358:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	beq	$4,$0,$L364
	move	$fp,$sp

	.option	pic0
	b	$L362
	.option	pic2
	li	$2,1			# 0x1

$L363:
	sra	$4,$4,1
	addiu	$2,$2,1
$L362:
	andi	$3,$4,0x1
	beq	$3,$0,$L363
	nop

	.option	pic0
	b	$L361
	nop

	.option	pic2
$L364:
	move	$2,$0
$L361:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	lui	$2,%hi($LC0)
	lwc1	$f0,%lo($LC0)($2)
	nop
	c.lt.s	$f12,$f0
	nop
	bc1t	$L368
	move	$fp,$sp

	lui	$2,%hi($LC1)
	lwc1	$f0,%lo($LC1)($2)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1f	$L371
	li	$2,1			# 0x1

	.option	pic0
	b	$L366
	nop

	.option	pic2
$L368:
	.option	pic0
	b	$L366
	.option	pic2
	li	$2,1			# 0x1

$L371:
	move	$2,$0
$L366:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L375
	move	$fp,$sp

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L378
	li	$2,1			# 0x1

	.option	pic0
	b	$L373
	nop

	.option	pic2
$L375:
	.option	pic0
	b	$L373
	.option	pic2
	li	$2,1			# 0x1

$L378:
	move	$2,$0
$L373:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L382
	move	$fp,$sp

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L385
	li	$2,1			# 0x1

	.option	pic0
	b	$L380
	nop

	.option	pic2
$L382:
	.option	pic0
	b	$L380
	.option	pic2
	li	$2,1			# 0x1

$L385:
	move	$2,$0
$L380:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	mtc1	$5,$f0
	nop
	cvt.d.w	$f0,$f0
	swc1	$f0,4($4)
	swc1	$f1,0($4)
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	c.un.s	$f12,$f12
	nop
	bc1t	$L388
	mov.s	$f0,$f12

	add.s	$f2,$f12,$f12
	c.eq.s	$f12,$f2
	nop
	bc1t	$L388
	nop

	bgez	$5,$L392
	lui	$2,%hi($LC4)

	lwc1	$f2,%lo($LC4)($2)
	.option	pic0
	b	$L393
	.option	pic2
	andi	$2,$5,0x1

$L392:
	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5)($2)
$L391:
	andi	$2,$5,0x1
$L393:
	beq	$2,$0,$L394
	srl	$2,$5,31

	mul.s	$f0,$f0,$f2
$L394:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L388
	nop

	.option	pic0
	b	$L391
	.option	pic2
	mul.s	$f2,$f2,$f2

$L388:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	c.un.d	$f12,$f12
	nop
	bc1t	$L396
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L396
	nop

	bgez	$6,$L400
	lui	$2,%hi($LC6)

	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L401
	.option	pic2
	andi	$2,$6,0x1

$L400:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
$L399:
	andi	$2,$6,0x1
$L401:
	beq	$2,$0,$L402
	srl	$2,$6,31

	mul.d	$f0,$f0,$f2
$L402:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L396
	nop

	.option	pic0
	b	$L399
	.option	pic2
	mul.d	$f2,$f2,$f2

$L396:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	c.un.d	$f12,$f12
	nop
	bc1t	$L404
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L404
	nop

	bgez	$6,$L408
	lui	$2,%hi($LC6)

	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L409
	.option	pic2
	andi	$2,$6,0x1

$L408:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
$L407:
	andi	$2,$6,0x1
$L409:
	beq	$2,$0,$L410
	srl	$2,$6,31

	mul.d	$f0,$f0,$f2
$L410:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L404
	nop

	.option	pic0
	b	$L407
	.option	pic2
	mul.d	$f2,$f2,$f2

$L404:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	addu	$6,$4,$6
	.option	pic0
	b	$L412
	.option	pic2
	move	$3,$4

$L413:
	addiu	$5,$5,1
	lb	$8,-1($5)
	addiu	$3,$3,1
	lb	$7,-1($3)
	nop
	xor	$7,$7,$8
	sb	$7,-1($3)
$L412:
	bne	$3,$6,$L413
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,48,$31		# vars= 0, regs= 5/0, args= 16, gp= 8
	.mask	0xc0070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	move	$18,$4
	move	$17,$5
	move	$16,$6
	.option	pic0
	jal	strlen
	nop

	.option	pic2
	.option	pic0
	b	$L415
	.option	pic2
	addu	$2,$18,$2

$L417:
	addiu	$17,$17,1
	addiu	$2,$2,1
	addiu	$16,$16,-1
$L415:
	beq	$16,$0,$L416
	nop

	lb	$3,0($17)
	nop
	bne	$3,$0,$L417
	sb	$3,0($2)

$L416:
	bne	$16,$0,$L418
	nop

	sb	$0,0($2)
$L418:
	move	$2,$18
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,48

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L420
	.option	pic2
	move	$2,$0

$L422:
	addiu	$2,$2,1
$L420:
	beq	$2,$5,$L421
	addu	$3,$4,$2

	lb	$3,0($3)
	nop
	bne	$3,$0,$L422
	nop

$L421:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	.option	pic0
	b	$L424
	.option	pic2
	move	$fp,$sp

$L426:
	lb	$7,-1($3)
	lb	$6,0($4)
	nop
	beq	$7,$6,$L428
	move	$2,$4

$L429:
	lb	$6,0($3)
	nop
	bne	$6,$0,$L426
	addiu	$3,$3,1

	addiu	$3,$3,-1
	addiu	$4,$4,1
$L424:
	lb	$2,0($4)
	nop
	bne	$2,$0,$L429
	move	$3,$5

$L428:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$0
$L432:
	lb	$3,0($4)
	nop
	bne	$5,$3,$L431
	nop

	move	$2,$4
$L431:
	addiu	$4,$4,1
	lb	$3,-1($4)
	nop
	bne	$3,$0,$L432
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,48,$31		# vars= 0, regs= 6/0, args= 16, gp= 8
	.mask	0xc00f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$fp,$sp
	move	$16,$4
	move	$17,$5
	move	$4,$5
	.option	pic0
	jal	strlen
	nop

	.option	pic2
	beq	$2,$0,$L439
	move	$18,$2

	lb	$19,0($17)
	.option	pic0
	b	$L441
	.option	pic2
	move	$5,$19

$L438:
	move	$6,$18
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	beq	$2,$0,$L440
	move	$5,$19

	addiu	$16,$16,1
$L441:
	move	$4,$16
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	bne	$2,$0,$L438
	move	$16,$2

	.option	pic0
	b	$L436
	.option	pic2
	move	$2,$0

$L439:
	.option	pic0
	b	$L436
	.option	pic2
	move	$2,$16

$L440:
	move	$2,$16
$L436:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	swc1	$f12,28($fp)
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1f	$L443
	swc1	$f13,24($fp)

	c.lt.d	$f0,$f14
	nop
	bc1t	$L455
	li	$2,-2147483648			# 0xffffffff80000000

$L443:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L453
	nop

	c.lt.d	$f14,$f0
	nop
	bc1f	$L454
	li	$2,-2147483648			# 0xffffffff80000000

$L455:
	lw	$3,24($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,28($fp)
	.option	pic0
	b	$L446
	.option	pic2
	sw	$2,12($fp)

$L453:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	swc1	$f0,12($fp)
	.option	pic0
	b	$L446
	.option	pic2
	swc1	$f1,8($fp)

$L454:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
$L446:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	jr	$31
	addiu	$sp,$sp,24

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
	.frame	$fp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0xc01f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	move	$16,$4
	move	$17,$6
	subu	$18,$5,$7
	beq	$7,$0,$L461
	addu	$18,$4,$18

	sltu	$5,$5,$7
	bne	$5,$0,$L462
	addiu	$19,$6,1

	.option	pic0
	b	$L458
	.option	pic2
	addiu	$20,$7,-1

$L460:
	lb	$3,0($16)
	lb	$2,0($17)
	nop
	bne	$3,$2,$L459
	move	$6,$20

	move	$5,$19
	addiu	$4,$16,1
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	beq	$2,$0,$L463
	move	$2,$16

$L459:
	addiu	$16,$16,1
$L458:
	sltu	$2,$18,$16
	beq	$2,$0,$L460
	move	$2,$0

	.option	pic0
	b	$L457
	nop

	.option	pic2
$L461:
	.option	pic0
	b	$L457
	.option	pic2
	move	$2,$4

$L462:
	move	$2,$0
$L463:
$L457:
	move	$sp,$fp
	lw	$31,52($fp)
	lw	$fp,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,56

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
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$16,$6
	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addu	$2,$2,$16
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	swc1	$f12,28($fp)
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1f	$L482
	swc1	$f13,24($fp)

	li	$2,-2147483648			# 0xffffffff80000000
	lw	$3,24($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	sw	$2,12($fp)
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	nop
	swc1	$f0,28($fp)
	swc1	$f1,24($fp)
	.option	pic0
	b	$L466
	.option	pic2
	li	$3,1			# 0x1

$L482:
	move	$3,$0
$L466:
	lui	$2,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($2)
	nop
	lwc1	$f1,%lo($LC8)($2)
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.le.d	$f0,$f2
	nop
	bc1t	$L477
	lui	$4,%hi($LC8)

	.option	pic0
	b	$L483
	.option	pic2
	lui	$2,%hi($LC6)

$L470:
	addiu	$2,$2,1
	lwc1	$f4,28($fp)
	nop
	lwc1	$f5,24($fp)
	nop
	mul.d	$f4,$f4,$f2
	swc1	$f4,28($fp)
	.option	pic0
	b	$L468
	.option	pic2
	swc1	$f5,24($fp)

$L477:
	move	$2,$0
	lwc1	$f0,%lo($LC8+4)($4)
	nop
	lwc1	$f1,%lo($LC8)($4)
	lui	$4,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($4)
	nop
	lwc1	$f3,%lo($LC6)($4)
$L468:
	lwc1	$f4,28($fp)
	nop
	lwc1	$f5,24($fp)
	nop
	c.le.d	$f0,$f4
	nop
	bc1t	$L470
	nop

	.option	pic0
	b	$L485
	.option	pic2
	sw	$2,0($6)

$L483:
	lwc1	$f0,%lo($LC6+4)($2)
	nop
	lwc1	$f1,%lo($LC6)($2)
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L484
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.eq.d	$f2,$f0
	nop
	bc1f	$L479
	lui	$4,%hi($LC6)

	.option	pic0
	b	$L471
	.option	pic2
	move	$2,$0

$L474:
	addiu	$2,$2,-1
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	add.d	$f2,$f2,$f2
	swc1	$f2,28($fp)
	.option	pic0
	b	$L473
	.option	pic2
	swc1	$f3,24($fp)

$L479:
	move	$2,$0
	lwc1	$f0,%lo($LC6+4)($4)
	nop
	lwc1	$f1,%lo($LC6)($4)
$L473:
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L474
	nop

	.option	pic0
	b	$L485
	.option	pic2
	sw	$2,0($6)

$L484:
	move	$2,$0
$L471:
	sw	$2,0($6)
$L485:
	beq	$3,$0,$L475
	li	$2,-2147483648			# 0xffffffff80000000

	lw	$3,24($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	sw	$2,12($fp)
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	nop
	swc1	$f0,28($fp)
	swc1	$f1,24($fp)
$L475:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	jr	$31
	addiu	$sp,$sp,24

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$25,$0
	.option	pic0
	b	$L487
	.option	pic2
	move	$24,$0

$L490:
	andi	$13,$5,0x1
	or	$14,$12,$13
	beq	$14,$0,$L491
	srl	$14,$7,31

	addu	$15,$25,$7
	sltu	$3,$15,$25
	addu	$14,$24,$6
	addu	$14,$3,$14
	move	$25,$15
	move	$24,$14
	srl	$14,$7,31
$L491:
	sll	$8,$6,1
	or	$8,$14,$8
	sll	$9,$7,1
	move	$7,$9
	move	$6,$8
	sll	$14,$4,31
	srl	$11,$5,1
	or	$11,$14,$11
	srl	$10,$4,1
	move	$5,$11
	move	$4,$10
$L487:
	or	$14,$4,$5
	bne	$14,$0,$L490
	move	$12,$0

	move	$3,$25
	move	$2,$24
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$7,33			# 0x21
	.option	pic0
	b	$L493
	.option	pic2
	li	$3,1			# 0x1

$L497:
	sll	$5,$5,1
	sll	$3,$3,1
$L493:
	sltu	$2,$5,$4
	bne	$2,$0,$L494
	addiu	$7,$7,-1

	addiu	$7,$7,1
	.option	pic0
	b	$L495
	.option	pic2
	move	$2,$0

$L494:
	beq	$7,$0,$L495
	move	$2,$0

	bgez	$5,$L497
	nop

	.option	pic0
	b	$L495
	nop

	.option	pic2
$L499:
	bne	$7,$0,$L498
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L498:
	srl	$3,$3,1
	srl	$5,$5,1
$L495:
	bne	$3,$0,$L499
	sltu	$7,$4,$5

	beq	$6,$0,$L500
	nop

	move	$2,$4
$L500:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	bgez	$4,$L504
	.cprestore	16

	nor	$4,$0,$4
$L504:
	beq	$4,$0,$L506
	sll	$4,$4,8

	lw	$25,%call16(__clzsi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L505
	.option	pic2
	addiu	$2,$2,-1

$L506:
	li	$2,7			# 0x7
$L505:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	bgez	$4,$L508
	.cprestore	16

	nor	$2,$0,$4
	nor	$3,$0,$5
	move	$5,$3
	move	$4,$2
$L508:
	or	$2,$4,$5
	beq	$2,$0,$L512
	nop

	lw	$25,%call16(__clzdi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L510
	.option	pic2
	addiu	$2,$2,-1

$L512:
	li	$2,63			# 0x3f
$L510:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L514
	.option	pic2
	move	$2,$0

$L516:
	beq	$3,$0,$L515
	nop

	addu	$2,$2,$5
$L515:
	srl	$4,$4,1
	sll	$5,$5,1
$L514:
	bne	$4,$0,$L516
	andi	$3,$4,0x1

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$10,$6,3
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$3,$4,$5
	bne	$3,$0,$L518
	and	$2,$6,$2

	addu	$3,$5,$6
	sltu	$3,$3,$4
	bne	$3,$0,$L528
	move	$3,$5

	.option	pic0
	b	$L519
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L518:
	move	$3,$5
$L528:
	move	$7,$4
	sll	$10,$10,3
	.option	pic0
	b	$L520
	.option	pic2
	addu	$10,$10,$5

$L521:
	lw	$9,4($3)
	lw	$8,0($3)
	sw	$9,4($7)
	sw	$8,0($7)
	addiu	$3,$3,8
	addiu	$7,$7,8
$L520:
	bne	$3,$10,$L521
	nop

	.option	pic0
	b	$L527
	.option	pic2
	sltu	$3,$2,$6

$L523:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L527:
	bne	$3,$0,$L523
	addu	$3,$5,$2

	.option	pic0
	b	$L517
	nop

	.option	pic2
$L525:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L519:
	addiu	$6,$6,-1
	bne	$6,$7,$L525
	addu	$2,$5,$6

$L517:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sltu	$2,$4,$5
	bne	$2,$0,$L530
	srl	$8,$6,1

	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L537
	move	$2,$5

	.option	pic0
	b	$L531
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L530:
	move	$2,$5
$L537:
	move	$3,$4
	sll	$8,$8,1
	.option	pic0
	b	$L532
	.option	pic2
	addu	$8,$8,$5

$L533:
	lh	$7,0($2)
	nop
	sh	$7,0($3)
	addiu	$2,$2,2
	addiu	$3,$3,2
$L532:
	bne	$2,$8,$L533
	nop

	andi	$2,$6,0x1
	beq	$2,$0,$L529
	nop

	addiu	$6,$6,-1
	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	.option	pic0
	b	$L529
	.option	pic2
	sb	$2,0($4)

$L535:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L531:
	addiu	$6,$6,-1
	bne	$6,$7,$L535
	addu	$2,$5,$6

$L529:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$9,$6,2
	li	$2,-4			# 0xfffffffffffffffc
	sltu	$3,$4,$5
	bne	$3,$0,$L539
	and	$2,$6,$2

	addu	$3,$5,$6
	sltu	$3,$3,$4
	bne	$3,$0,$L549
	move	$3,$5

	.option	pic0
	b	$L540
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L539:
	move	$3,$5
$L549:
	move	$7,$4
	sll	$9,$9,2
	.option	pic0
	b	$L541
	.option	pic2
	addu	$9,$9,$5

$L542:
	lw	$8,0($3)
	nop
	sw	$8,0($7)
	addiu	$3,$3,4
	addiu	$7,$7,4
$L541:
	bne	$3,$9,$L542
	nop

	.option	pic0
	b	$L548
	.option	pic2
	sltu	$3,$2,$6

$L544:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L548:
	bne	$3,$0,$L544
	addu	$3,$5,$2

	.option	pic0
	b	$L538
	nop

	.option	pic2
$L546:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L540:
	addiu	$6,$6,-1
	bne	$6,$7,$L546
	addu	$2,$5,$6

$L538:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	bne	$5,$0,1f
	div	$0,$4,$5
	break	7
1:
	mfhi	$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	mtc1	$4,$f0
	bgez	$4,$L552
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L552:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	mtc1	$4,$f0
	bgez	$4,$L554
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L554:
	cvt.s.d	$f0,$f0
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$25,%call16(__floatundidf)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$25,%call16(__floatundisf)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__floatundisf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	bne	$5,$0,1f
	divu	$0,$4,$5
	break	7
1:
	mfhi	$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$0
	li	$5,16			# 0x10
	.option	pic0
	b	$L559
	.option	pic2
	li	$6,15			# 0xf

$L561:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,$L560
	nop

	addiu	$2,$2,1
$L559:
	bne	$2,$5,$L561
	subu	$3,$6,$2

$L560:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$0
	.option	pic0
	b	$L563
	.option	pic2
	li	$5,16			# 0x10

$L565:
	andi	$3,$3,0x1
	bne	$3,$0,$L564
	nop

	addiu	$2,$2,1
$L563:
	bne	$2,$5,$L565
	sra	$3,$4,$2

$L564:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	lui	$2,%hi($LC10)
	lwc1	$f0,%lo($LC10)($2)
	nop
	c.le.s	$f0,$f12
	nop
	bc1f	$L571
	move	$fp,$sp

	sub.s	$f12,$f12,$f0
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	li	$3,32768			# 0x8000
	.option	pic0
	b	$L569
	.option	pic2
	addu	$2,$2,$3

$L571:
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
$L569:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$0
	move	$3,$0
	.option	pic0
	b	$L573
	.option	pic2
	li	$6,16			# 0x10

$L575:
	andi	$5,$5,0x1
	beq	$5,$0,$L574
	nop

	addiu	$2,$2,1
$L574:
	addiu	$3,$3,1
$L573:
	bne	$3,$6,$L575
	sra	$5,$4,$3

	andi	$2,$2,0x1
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$0
	move	$3,$0
	.option	pic0
	b	$L577
	.option	pic2
	li	$6,16			# 0x10

$L579:
	andi	$5,$5,0x1
	beq	$5,$0,$L578
	nop

	addiu	$2,$2,1
$L578:
	addiu	$3,$3,1
$L577:
	bne	$3,$6,$L579
	sra	$5,$4,$3

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L581
	.option	pic2
	move	$2,$0

$L583:
	beq	$3,$0,$L582
	nop

	addu	$2,$2,$5
$L582:
	srl	$4,$4,1
	sll	$5,$5,1
$L581:
	bne	$4,$0,$L583
	andi	$3,$4,0x1

	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	beq	$4,$0,$L589
	move	$fp,$sp

	.option	pic0
	b	$L586
	.option	pic2
	move	$2,$0

$L588:
	beq	$3,$0,$L587
	nop

	addu	$2,$2,$4
$L587:
	sll	$4,$4,1
	srl	$5,$5,1
$L586:
	bne	$5,$0,$L588
	andi	$3,$5,0x1

	.option	pic0
	b	$L585
	nop

	.option	pic2
$L589:
	move	$2,$0
$L585:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$7,33			# 0x21
	.option	pic0
	b	$L591
	.option	pic2
	li	$3,1			# 0x1

$L595:
	sll	$5,$5,1
	sll	$3,$3,1
$L591:
	sltu	$2,$5,$4
	bne	$2,$0,$L592
	addiu	$7,$7,-1

	addiu	$7,$7,1
	.option	pic0
	b	$L593
	.option	pic2
	move	$2,$0

$L592:
	beq	$7,$0,$L593
	move	$2,$0

	bgez	$5,$L595
	nop

	.option	pic0
	b	$L593
	nop

	.option	pic2
$L597:
	bne	$7,$0,$L596
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L596:
	srl	$3,$3,1
	srl	$5,$5,1
$L593:
	bne	$3,$0,$L597
	sltu	$7,$4,$5

	beq	$6,$0,$L598
	nop

	move	$2,$4
$L598:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	c.lt.s	$f12,$f14
	nop
	bc1t	$L603
	move	$fp,$sp

	c.lt.s	$f14,$f12
	nop
	bc1t	$L604
	move	$2,$0

	.option	pic0
	b	$L602
	nop

	.option	pic2
$L603:
	.option	pic0
	b	$L602
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L604:
	li	$2,1			# 0x1
$L602:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	c.lt.d	$f12,$f14
	nop
	bc1t	$L607
	move	$fp,$sp

	c.lt.d	$f14,$f12
	nop
	bc1t	$L608
	move	$2,$0

	.option	pic0
	b	$L606
	nop

	.option	pic2
$L607:
	.option	pic0
	b	$L606
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L608:
	li	$2,1			# 0x1
$L606:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$7,$4
	sra	$6,$4,31
	move	$3,$5
	sra	$2,$5,31
	mult	$6,$5
	mflo	$4
	nop
	nop
	mult	$2,$7
	mflo	$5
	addu	$4,$4,$5
	nop
	multu	$7,$3
	mflo	$3
	mfhi	$2
	addu	$2,$4,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	multu	$4,$5
	mflo	$3
	mfhi	$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	bgez	$5,$L618
	move	$fp,$sp

	subu	$5,$0,$5
	.option	pic0
	b	$L612
	.option	pic2
	li	$7,1			# 0x1

$L618:
	move	$7,$0
$L612:
	li	$3,33			# 0x21
	.option	pic0
	b	$L613
	.option	pic2
	move	$2,$0

$L616:
	beq	$6,$0,$L614
	nop

	addu	$2,$2,$4
$L614:
	sll	$4,$4,1
	sra	$5,$5,1
$L613:
	beq	$5,$0,$L615
	nop

	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	bne	$3,$0,$L616
	andi	$6,$5,0x1

$L615:
	beq	$7,$0,$L617
	nop

	subu	$2,$0,$2
$L617:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	sw	$16,28($sp)
	bgez	$4,$L624
	move	$fp,$sp

	subu	$4,$0,$4
	.option	pic0
	b	$L621
	.option	pic2
	li	$16,1			# 0x1

$L624:
	move	$16,$0
$L621:
	bgez	$5,$L625
	move	$6,$0

	subu	$5,$0,$5
	xori	$16,$16,0x1
$L625:
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L623
	nop

	subu	$2,$0,$2
$L623:
	move	$sp,$fp
	lw	$31,36($fp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

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
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	sw	$16,28($sp)
	bgez	$4,$L630
	move	$fp,$sp

	subu	$4,$0,$4
	.option	pic0
	b	$L627
	.option	pic2
	li	$16,1			# 0x1

$L630:
	move	$16,$0
$L627:
	bgez	$5,$L631
	li	$6,1			# 0x1

	subu	$5,$0,$5
$L631:
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L629
	nop

	subu	$2,$0,$2
$L629:
	move	$sp,$fp
	lw	$31,36($fp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$2,17			# 0x11
	.option	pic0
	b	$L633
	.option	pic2
	li	$3,1			# 0x1

$L637:
	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	andi	$3,$3,0xffff
$L633:
	sltu	$7,$5,$4
	bne	$7,$0,$L634
	addiu	$2,$2,-1

	addiu	$2,$2,1
	.option	pic0
	b	$L635
	.option	pic2
	move	$2,$0

$L641:
	.option	pic0
	b	$L635
	.option	pic2
	move	$2,$0

$L634:
	beq	$2,$0,$L641
	sll	$7,$5,16

	sra	$7,$7,16
	bgez	$7,$L637
	nop

	.option	pic0
	b	$L635
	.option	pic2
	move	$2,$0

$L639:
	bne	$7,$0,$L638
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$2,$2,$3
$L638:
	srl	$3,$3,1
	srl	$5,$5,1
$L635:
	bne	$3,$0,$L639
	sltu	$7,$4,$5

	beq	$6,$0,$L640
	nop

	move	$2,$4
$L640:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$7,33			# 0x21
	.option	pic0
	b	$L644
	.option	pic2
	li	$3,1			# 0x1

$L648:
	sll	$5,$5,1
	sll	$3,$3,1
$L644:
	sltu	$2,$5,$4
	bne	$2,$0,$L645
	addiu	$7,$7,-1

	addiu	$7,$7,1
	.option	pic0
	b	$L646
	.option	pic2
	move	$2,$0

$L645:
	beq	$7,$0,$L646
	move	$2,$0

	bgez	$5,$L648
	nop

	.option	pic0
	b	$L646
	nop

	.option	pic2
$L650:
	bne	$7,$0,$L649
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L649:
	srl	$3,$3,1
	srl	$5,$5,1
$L646:
	bne	$3,$0,$L650
	sltu	$7,$4,$5

	beq	$6,$0,$L651
	nop

	move	$2,$4
$L651:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	andi	$2,$6,0x20
	beq	$2,$0,$L655
	move	$fp,$sp

	move	$3,$0
	.option	pic0
	b	$L657
	.option	pic2
	sll	$2,$5,$6

$L655:
	beq	$6,$0,$L658
	sll	$3,$5,$6

	sll	$4,$4,$6
	subu	$6,$0,$6
	srl	$6,$5,$6
	.option	pic0
	b	$L657
	.option	pic2
	or	$2,$6,$4

$L658:
	move	$3,$5
	move	$2,$4
$L657:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	andi	$2,$6,0x20
	beq	$2,$0,$L660
	move	$fp,$sp

	sra	$2,$4,31
	.option	pic0
	b	$L662
	.option	pic2
	sra	$3,$4,$6

$L660:
	beq	$6,$0,$L663
	sra	$2,$4,$6

	subu	$7,$0,$6
	sll	$4,$4,$7
	srl	$6,$5,$6
	.option	pic0
	b	$L662
	.option	pic2
	or	$3,$4,$6

$L663:
	move	$3,$5
	move	$2,$4
$L662:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.set	nomips16
	.set	nomicromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$fp,32,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x403f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	sw	$21,24($sp)
	sw	$20,20($sp)
	sw	$19,16($sp)
	sw	$18,12($sp)
	sw	$17,8($sp)
	sw	$16,4($sp)
	move	$fp,$sp
	move	$19,$5
	srl	$21,$4,24
	srl	$3,$4,8
	move	$10,$0
	andi	$11,$3,0xff00
	sll	$12,$4,8
	srl	$3,$5,24
	or	$3,$12,$3
	move	$8,$0
	li	$24,16711680			# 0xff0000
	and	$9,$3,$24
	sll	$16,$4,24
	srl	$5,$5,8
	or	$5,$16,$5
	move	$14,$0
	li	$2,-16777216			# 0xffffffffff000000
	and	$15,$5,$2
	sll	$7,$19,8
	andi	$12,$3,0xff
	sll	$3,$19,24
	andi	$4,$5,0xff00
	and	$6,$7,$24
	or	$24,$3,$10
	or	$25,$21,$11
	or	$2,$24,$8
	or	$3,$25,$9
	or	$8,$2,$14
	or	$9,$3,$15
	or	$2,$8,$12
	move	$3,$9
	or	$8,$2,$4
	or	$2,$8,$6
	move	$sp,$fp
	lw	$fp,28($sp)
	lw	$21,24($sp)
	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$5,$4,24
	srl	$3,$4,8
	andi	$3,$3,0xff00
	sll	$2,$4,8
	li	$6,16711680			# 0xff0000
	and	$2,$2,$6
	sll	$4,$4,24
	or	$4,$4,$5
	or	$4,$4,$3
	or	$2,$4,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	li	$2,65536			# 0x10000
	sltu	$2,$4,$2
	beq	$2,$0,$L671
	move	$fp,$sp

	.option	pic0
	b	$L667
	.option	pic2
	li	$3,16			# 0x10

$L671:
	move	$3,$0
$L667:
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	beq	$2,$0,$L668
	li	$5,8			# 0x8

	move	$5,$0
$L668:
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xf0
	bne	$2,$0,$L673
	addu	$3,$3,$5

	.option	pic0
	b	$L669
	.option	pic2
	li	$5,4			# 0x4

$L673:
	move	$5,$0
$L669:
	li	$2,4			# 0x4
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xc
	bne	$2,$0,$L674
	addu	$3,$3,$5

	.option	pic0
	b	$L670
	.option	pic2
	li	$5,2			# 0x2

$L674:
	move	$5,$0
$L670:
	li	$2,2			# 0x2
	subu	$6,$2,$5
	srl	$4,$4,$6
	addu	$3,$3,$5
	andi	$5,$4,0x2
	sltu	$5,$5,1
	subu	$2,$2,$4
	mult	$5,$2
	mflo	$2
	addu	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.set	nomips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	slt	$2,$4,$6
	bne	$2,$0,$L677
	move	$fp,$sp

	slt	$2,$6,$4
	bne	$2,$0,$L681
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bne	$2,$0,$L681
	move	$2,$0

	sltu	$2,$7,$5
	bne	$2,$0,$L680
	li	$2,1			# 0x1

	.option	pic0
	b	$L676
	nop

	.option	pic2
$L677:
	.option	pic0
	b	$L676
	.option	pic2
	move	$2,$0

	.option	pic0
	b	$L676
	.option	pic2
	move	$2,$0

$L680:
	li	$2,2			# 0x2
$L676:
$L681:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.option	pic0
	jal	__cmpdi2
	nop

	.option	pic2
	addiu	$2,$2,-1
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	andi	$2,$4,0xffff
	bne	$2,$0,$L688
	move	$fp,$sp

	.option	pic0
	b	$L684
	.option	pic2
	li	$3,16			# 0x10

$L688:
	move	$3,$0
$L684:
	srl	$4,$4,$3
	andi	$2,$4,0xff
	beq	$2,$0,$L685
	li	$2,8			# 0x8

	move	$2,$0
$L685:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0xf
	beq	$2,$0,$L686
	li	$2,4			# 0x4

	move	$2,$0
$L686:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	beq	$2,$0,$L687
	li	$2,2			# 0x2

	move	$2,$0
$L687:
	srl	$4,$4,$2
	andi	$4,$4,0x3
	addu	$3,$3,$2
	nor	$5,$0,$4
	andi	$5,$5,0x1
	srl	$4,$4,1
	li	$2,2			# 0x2
	subu	$2,$2,$4
	subu	$4,$0,$5
	and	$2,$2,$4
	addu	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	andi	$2,$6,0x20
	beq	$2,$0,$L693
	move	$fp,$sp

	move	$2,$0
	.option	pic0
	b	$L695
	.option	pic2
	srl	$3,$4,$6

$L693:
	beq	$6,$0,$L696
	srl	$2,$4,$6

	subu	$7,$0,$6
	sll	$4,$4,$7
	srl	$6,$5,$6
	.option	pic0
	b	$L695
	.option	pic2
	or	$3,$4,$6

$L696:
	move	$3,$5
	move	$2,$4
$L695:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.set	nomips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	andi	$8,$4,0xffff
	andi	$9,$5,0xffff
	mult	$8,$9
	mflo	$2
	srl	$3,$2,16
	andi	$2,$2,0xffff
	srl	$4,$4,16
	mult	$4,$9
	mflo	$9
	addu	$3,$3,$9
	sll	$9,$3,16
	addu	$7,$9,$2
	srl	$6,$3,16
	srl	$3,$7,16
	andi	$2,$7,0xffff
	srl	$5,$5,16
	mult	$8,$5
	mflo	$8
	addu	$3,$3,$8
	sll	$8,$3,16
	addu	$7,$8,$2
	srl	$3,$3,16
	addu	$3,$3,$6
	mult	$4,$5
	mflo	$2
	addu	$6,$2,$3
	move	$3,$7
	move	$2,$6
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,48,$31		# vars= 0, regs= 6/0, args= 16, gp= 8
	.mask	0xc00f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$fp,$sp
	move	$17,$5
	move	$16,$4
	move	$19,$7
	move	$18,$6
	move	$5,$7
	move	$4,$17
	.option	pic0
	jal	__muldsi3
	nop

	.option	pic2
	move	$4,$2
	move	$7,$3
	mult	$16,$19
	mflo	$3
	nop
	nop
	mult	$18,$17
	mflo	$2
	addu	$3,$3,$2
	addu	$6,$3,$4
	move	$3,$7
	move	$2,$6
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__negdi2
	.set	nomips16
	.set	nomicromips
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	subu	$3,$0,$5
	sltu	$5,$0,$3
	subu	$2,$0,$4
	subu	$2,$2,$5
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__paritydi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	xor	$4,$5,$4
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
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
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
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sll	$6,$4,31
	srl	$3,$5,1
	or	$3,$6,$3
	srl	$2,$4,1
	li	$8,1431633920			# 0x55550000
	addiu	$8,$8,21845
	and	$6,$2,$8
	and	$7,$3,$8
	subu	$3,$5,$7
	sltu	$5,$5,$3
	subu	$2,$4,$6
	subu	$2,$2,$5
	sll	$4,$2,30
	srl	$7,$3,2
	or	$7,$4,$7
	srl	$6,$2,2
	li	$4,858980352			# 0x33330000
	addiu	$4,$4,13107
	and	$8,$6,$4
	and	$9,$7,$4
	and	$6,$2,$4
	and	$7,$3,$4
	addu	$11,$9,$7
	sltu	$4,$11,$9
	addu	$10,$8,$6
	addu	$10,$4,$10
	sll	$4,$10,28
	srl	$7,$11,4
	or	$7,$4,$7
	srl	$6,$10,4
	addu	$5,$7,$11
	sltu	$3,$5,$7
	addu	$4,$6,$10
	addu	$4,$3,$4
	li	$2,252641280			# 0xf0f0000
	addiu	$2,$2,3855
	and	$8,$4,$2
	and	$9,$5,$2
	addu	$3,$8,$9
	srl	$2,$3,16
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	andi	$2,$2,0x7f
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
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
	addu	$4,$2,$4
	li	$2,252641280			# 0xf0f0000
	addiu	$2,$2,3855
	and	$4,$4,$2
	srl	$2,$4,16
	addu	$4,$4,$2
	srl	$2,$4,8
	addu	$2,$2,$4
	andi	$2,$2,0x3f
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__powidf2
	.set	nomips16
	.set	nomicromips
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$3,$6,31
	lui	$2,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($2)
	nop
	lwc1	$f1,%lo($LC8)($2)
$L707:
	andi	$2,$6,0x1
	beq	$2,$0,$L710
	srl	$2,$6,31

	mul.d	$f0,$f0,$f12
$L710:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L706
	nop

	.option	pic0
	b	$L707
	.option	pic2
	mul.d	$f12,$f12,$f12

$L706:
	beq	$3,$0,$L708
	lui	$2,%hi($LC8)

	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	div.d	$f0,$f2,$f0
$L708:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$3,$5,31
	lui	$2,%hi($LC11)
	lwc1	$f0,%lo($LC11)($2)
$L714:
	andi	$2,$5,0x1
	beq	$2,$0,$L717
	srl	$2,$5,31

	mul.s	$f0,$f0,$f12
$L717:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L713
	nop

	.option	pic0
	b	$L714
	.option	pic2
	mul.s	$f12,$f12,$f12

$L713:
	beq	$3,$0,$L715
	lui	$2,%hi($LC11)

	lwc1	$f2,%lo($LC11)($2)
	nop
	div.s	$f0,$f2,$f0
$L715:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	sltu	$2,$4,$6
	bne	$2,$0,$L720
	move	$fp,$sp

	sltu	$2,$6,$4
	bne	$2,$0,$L724
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bne	$2,$0,$L724
	move	$2,$0

	sltu	$2,$7,$5
	bne	$2,$0,$L723
	li	$2,1			# 0x1

	.option	pic0
	b	$L719
	nop

	.option	pic2
$L720:
	.option	pic0
	b	$L719
	.option	pic2
	move	$2,$0

	.option	pic0
	b	$L719
	.option	pic2
	move	$2,$0

$L723:
	li	$2,2			# 0x2
$L719:
$L724:
	move	$sp,$fp
	lw	$fp,4($sp)
	jr	$31
	addiu	$sp,$sp,8

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
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.option	pic0
	jal	__ucmpdi2
	nop

	.option	pic2
	addiu	$2,$2,-1
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
$LC0:
	.word	-8388609
	.align	2
$LC1:
	.word	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
$LC2:
	.word	-1048577
	.word	-1
	.align	3
$LC3:
	.word	2146435071
	.word	-1
	.section	.rodata.cst4
	.align	2
$LC4:
	.word	1056964608
	$LC5 = $LC7
	.section	.rodata.cst8
	.align	3
$LC6:
	.word	1071644672
	.word	0
	.align	3
$LC7:
	.word	1073741824
	.word	0
	.align	3
$LC8:
	.word	1072693248
	.word	0
	.align	3
$LC9:
	.word	1106247680
	.word	0
	.section	.rodata.cst4
	.align	2
$LC10:
	.word	1191182336
	.align	2
$LC11:
	.word	1065353216
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
