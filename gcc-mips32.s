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
	.option	pic0
	b	$L32
	.option	pic2
	addiu	$6,$6,-1

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
	li	$3,-1			# 0xffffffffffffffff
	bne	$6,$3,$L34
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
	.option	pic0
	b	$L37
	.option	pic2
	move	$3,$4

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
	b	$L51
	.option	pic2
	move	$fp,$sp

$L54:
	addiu	$5,$5,1
$L51:
	lb	$3,0($4)
	lb	$2,0($5)
	nop
	bne	$3,$2,$L52
	nop

	bne	$3,$0,$L54
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L52:
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
	b	$L56
	.option	pic2
	move	$2,$4

$L57:
	addiu	$2,$2,1
$L56:
	lb	$5,0($2)
	nop
	bne	$5,$0,$L57
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
	beq	$6,$0,$L63
	move	$fp,$sp

	addiu	$6,$6,-1
	.option	pic0
	b	$L60
	.option	pic2
	addu	$2,$4,$6

$L64:
	addiu	$5,$5,1
$L60:
	lbu	$3,0($4)
	nop
	beq	$3,$0,$L61
	nop

	lbu	$3,0($5)
	nop
	beq	$3,$0,$L61
	nop

	beq	$4,$2,$L61
	nop

	lbu	$6,0($4)
	nop
	beq	$6,$3,$L64
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L61:
	lbu	$2,0($4)
	lbu	$3,0($5)
	.option	pic0
	b	$L59
	.option	pic2
	subu	$2,$2,$3

$L63:
	move	$2,$0
$L59:
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
	.option	pic0
	b	$L66
	.option	pic2
	move	$3,$4

$L67:
	lb	$2,1($3)
	nop
	sb	$2,0($5)
	lb	$2,0($3)
	nop
	sb	$2,1($5)
	addiu	$5,$5,2
	addiu	$3,$3,2
$L66:
	addu	$2,$4,$6
	subu	$2,$2,$3
	slt	$2,$2,2
	beq	$2,$0,$L67
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
	beq	$4,$2,$L72
	move	$fp,$sp

	li	$2,9			# 0x9
	bne	$4,$2,$L73
	li	$2,1			# 0x1

	.option	pic0
	b	$L71
	nop

	.option	pic2
$L72:
	.option	pic0
	b	$L71
	.option	pic2
	li	$2,1			# 0x1

$L73:
	move	$2,$0
$L71:
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
	bne	$2,$0,$L76
	move	$fp,$sp

	li	$2,127			# 0x7f
	bne	$4,$2,$L77
	li	$2,1			# 0x1

	.option	pic0
	b	$L75
	nop

	.option	pic2
$L76:
	.option	pic0
	b	$L75
	.option	pic2
	li	$2,1			# 0x1

$L77:
	move	$2,$0
$L75:
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
	beq	$4,$2,$L84
	move	$fp,$sp

	addiu	$4,$4,-9
	sltu	$4,$4,5
	beq	$4,$0,$L85
	li	$2,1			# 0x1

	.option	pic0
	b	$L83
	nop

	.option	pic2
$L84:
	.option	pic0
	b	$L83
	.option	pic2
	li	$2,1			# 0x1

$L85:
	move	$2,$0
$L83:
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
	bne	$2,$0,$L89
	move	$fp,$sp

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,$L93
	li	$2,1			# 0x1

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L93
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	sltu	$4,$4,3
	beq	$4,$0,$L92
	li	$2,1			# 0x1

	.option	pic0
	b	$L88
	nop

	.option	pic2
$L89:
	.option	pic0
	b	$L88
	.option	pic2
	li	$2,1			# 0x1

	.option	pic0
	b	$L88
	.option	pic2
	li	$2,1			# 0x1

$L92:
	move	$2,$0
$L88:
$L93:
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
	beq	$2,$0,$L96
	move	$fp,$sp

	addiu	$2,$4,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	.option	pic0
	b	$L97
	.option	pic2
	xori	$2,$2,0x1

$L96:
	sltu	$2,$4,8232
	bne	$2,$0,$L98
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,$L103
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$4,$2
	sltu	$2,$2,8185
	bne	$2,$0,$L103
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$4,$2
	li	$3,1048576			# 0x100000
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L101
	andi	$4,$4,0xfffe

	li	$2,65534			# 0xfffe
	beq	$4,$2,$L102
	li	$2,1			# 0x1

	.option	pic0
	b	$L97
	nop

	.option	pic2
$L98:
	.option	pic0
	b	$L97
	.option	pic2
	li	$2,1			# 0x1

	.option	pic0
	b	$L97
	.option	pic2
	li	$2,1			# 0x1

$L101:
	.option	pic0
	b	$L97
	.option	pic2
	move	$2,$0

$L102:
	move	$2,$0
$L97:
$L103:
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
	bne	$2,$0,$L106
	move	$fp,$sp

	ori	$4,$4,0x20
	addiu	$4,$4,-97
	sltu	$4,$4,6
	beq	$4,$0,$L107
	li	$2,1			# 0x1

	.option	pic0
	b	$L105
	nop

	.option	pic2
$L106:
	.option	pic0
	b	$L105
	.option	pic2
	li	$2,1			# 0x1

$L107:
	move	$2,$0
$L105:
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
	bc1t	$L112
	move	$fp,$sp

	c.un.d	$f14,$f14
	nop
	bc1t	$L117
	mov.d	$f0,$f14

	c.lt.d	$f14,$f12
	nop
	bc1f	$L116
	nop

	.option	pic0
	b	$L110
	.option	pic2
	sub.d	$f0,$f12,$f14

$L112:
	.option	pic0
	b	$L110
	.option	pic2
	mov.d	$f0,$f12

$L116:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
$L110:
$L117:
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
	bc1t	$L121
	move	$fp,$sp

	c.un.s	$f14,$f14
	nop
	bc1t	$L126
	mov.s	$f0,$f14

	c.lt.s	$f14,$f12
	nop
	bc1f	$L125
	nop

	.option	pic0
	b	$L119
	.option	pic2
	sub.s	$f0,$f12,$f14

$L121:
	.option	pic0
	b	$L119
	.option	pic2
	mov.s	$f0,$f12

$L125:
	mtc1	$0,$f0
$L119:
$L126:
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
	bc1t	$L131
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L132
	mov.d	$f0,$f14

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L129
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L133
	nop

	.option	pic0
	b	$L128
	nop

	.option	pic2
$L129:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L136
	mov.d	$f0,$f2

	.option	pic0
	b	$L128
	nop

	.option	pic2
$L131:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L128
	nop

	.option	pic2
$L132:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L128
	nop

	.option	pic2
$L133:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L128
	nop

	.option	pic2
$L136:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
$L128:
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
	bc1t	$L141
	swc1	$f14,12($fp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L142
	mov.s	$f0,$f14

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,12($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L139
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L143
	nop

	.option	pic0
	b	$L138
	nop

	.option	pic2
$L139:
	lwc1	$f0,8($fp)
	lwc1	$f2,12($fp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L146
	nop

	.option	pic0
	b	$L138
	.option	pic2
	mov.s	$f0,$f2

$L141:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L138
	nop

	.option	pic2
$L142:
	lwc1	$f0,8($fp)
	.option	pic0
	b	$L138
	nop

	.option	pic2
$L143:
	lwc1	$f0,8($fp)
$L146:
$L138:
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
	bc1t	$L151
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L152
	mov.d	$f0,$f14

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L149
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L153
	nop

	.option	pic0
	b	$L148
	nop

	.option	pic2
$L149:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L156
	mov.d	$f0,$f2

	.option	pic0
	b	$L148
	nop

	.option	pic2
$L151:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L148
	nop

	.option	pic2
$L152:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L148
	nop

	.option	pic2
$L153:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L148
	nop

	.option	pic2
$L156:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
$L148:
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
	bc1t	$L161
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L162
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,8($fp)
	nop
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L159
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L163
	nop

	.option	pic0
	b	$L158
	.option	pic2
	mov.d	$f0,$f12

$L159:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L166
	nop

	.option	pic0
	b	$L158
	nop

	.option	pic2
$L161:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L158
	nop

	.option	pic2
$L162:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L158
	nop

	.option	pic2
$L163:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L158
	nop

	.option	pic2
$L166:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
$L158:
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
	bc1t	$L171
	swc1	$f14,12($fp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L172
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,8($fp)
	nop
	and	$3,$3,$4
	lw	$2,12($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L169
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L173
	nop

	.option	pic0
	b	$L168
	.option	pic2
	mov.s	$f0,$f12

$L169:
	lwc1	$f0,8($fp)
	lwc1	$f2,12($fp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L176
	nop

	.option	pic0
	b	$L168
	nop

	.option	pic2
$L171:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L168
	nop

	.option	pic2
$L172:
	lwc1	$f0,8($fp)
	.option	pic0
	b	$L168
	nop

	.option	pic2
$L173:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L168
	nop

	.option	pic2
$L176:
	lwc1	$f0,12($fp)
$L168:
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
	bc1t	$L181
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L182
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,8($fp)
	nop
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L179
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L183
	nop

	.option	pic0
	b	$L178
	.option	pic2
	mov.d	$f0,$f12

$L179:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L186
	nop

	.option	pic0
	b	$L178
	nop

	.option	pic2
$L181:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L178
	nop

	.option	pic2
$L182:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L178
	nop

	.option	pic2
$L183:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L178
	nop

	.option	pic2
$L186:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
$L178:
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
	lui	$5,%hi(s.0)
	.option	pic0
	b	$L188
	.option	pic2
	addiu	$5,$5,%lo(s.0)

$L189:
	lui	$3,%hi(digits)
	addiu	$3,$3,%lo(digits)
	addu	$2,$2,$3
	lb	$2,0($2)
	nop
	sb	$2,0($5)
	addiu	$5,$5,1
	srl	$4,$4,6
$L188:
	bne	$4,$0,$L189
	andi	$2,$4,0x3f

	sb	$0,0($5)
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
	bne	$5,$0,$L193
	move	$fp,$sp

	sw	$0,4($4)
	.option	pic0
	b	$L192
	.option	pic2
	sw	$0,0($4)

$L193:
	lw	$2,0($5)
	nop
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L192
	nop

	sw	$4,4($2)
$L192:
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
	beq	$2,$0,$L196
	move	$fp,$sp

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L196:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L195
	nop

	lw	$3,0($4)
	nop
	sw	$3,0($2)
$L195:
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
	b	$L199
	.option	pic2
	move	$16,$0

$L202:
	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L200
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L201
	.option	pic2
	addu	$2,$22,$2

$L200:
	addiu	$16,$16,1
$L199:
	bne	$16,$20,$L202
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
$L201:
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
	b	$L204
	.option	pic2
	move	$16,$0

$L207:
	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	bne	$2,$0,$L205
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L206
	.option	pic2
	addu	$2,$22,$2

$L205:
	addiu	$16,$16,1
$L204:
	bne	$16,$20,$L207
	move	$5,$17

	move	$2,$0
$L206:
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
	bgez	$4,$L209
	move	$2,$4

	subu	$2,$0,$4
$L209:
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
	b	$L211
	.option	pic2
	move	$16,$4

$L212:
	addiu	$16,$16,1
$L211:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L212
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L218
	li	$3,45			# 0x2d

	bne	$2,$3,$L219
	nop

	.option	pic0
	b	$L213
	.option	pic2
	li	$4,1			# 0x1

$L218:
	move	$4,$0
$L213:
	.option	pic0
	b	$L214
	.option	pic2
	addiu	$16,$16,1

$L219:
	move	$4,$0
$L214:
	.option	pic0
	b	$L215
	.option	pic2
	move	$2,$0

$L216:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L215:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L216
	addiu	$16,$16,1

	bne	$4,$0,$L217
	nop

	subu	$2,$0,$2
$L217:
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
	b	$L222
	.option	pic2
	move	$16,$4

$L223:
	addiu	$16,$16,1
$L222:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L223
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L229
	li	$3,45			# 0x2d

	bne	$2,$3,$L230
	nop

	.option	pic0
	b	$L224
	.option	pic2
	li	$4,1			# 0x1

$L229:
	move	$4,$0
$L224:
	.option	pic0
	b	$L225
	.option	pic2
	addiu	$16,$16,1

$L230:
	move	$4,$0
$L225:
	.option	pic0
	b	$L226
	.option	pic2
	move	$2,$0

$L227:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L226:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L227
	addiu	$16,$16,1

	bne	$4,$0,$L228
	nop

	subu	$2,$0,$2
$L228:
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
	b	$L233
	.option	pic2
	move	$22,$4

$L234:
	addiu	$22,$22,1
$L233:
	lb	$4,0($22)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L234
	li	$3,43			# 0x2b

	lb	$2,0($22)
	nop
	beq	$2,$3,$L240
	li	$3,45			# 0x2d

	bne	$2,$3,$L241
	nop

	.option	pic0
	b	$L235
	.option	pic2
	li	$6,1			# 0x1

$L240:
	move	$6,$0
$L235:
	.option	pic0
	b	$L236
	.option	pic2
	addiu	$22,$22,1

$L241:
	move	$6,$0
$L236:
	move	$9,$0
	.option	pic0
	b	$L237
	.option	pic2
	move	$8,$0

$L238:
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
$L237:
	lb	$4,0($22)
	nop
	addiu	$4,$4,-48
	sltu	$4,$4,10
	bne	$4,$0,$L238
	srl	$4,$9,30

	bne	$6,$0,$L242
	subu	$5,$0,$9

	sltu	$3,$0,$5
	subu	$4,$0,$8
	subu	$4,$4,$3
	move	$3,$5
	.option	pic0
	b	$L239
	.option	pic2
	move	$2,$4

$L242:
	move	$3,$9
	move	$2,$8
$L239:
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
	b	$L244
	.option	pic2
	move	$18,$7

$L248:
	srl	$2,$16,1
	mult	$2,$18
	mflo	$17
	addu	$17,$19,$17
	move	$5,$17
	move	$25,$21
	jalr	$25
	nop

	bgez	$2,$L245
	nop

	.option	pic0
	b	$L244
	.option	pic2
	srl	$16,$16,1

$L245:
	blez	$2,$L249
	addu	$19,$17,$18

	srl	$2,$16,1
	addiu	$16,$16,-1
	subu	$16,$16,$2
$L244:
	bne	$16,$0,$L248
	move	$4,$20

	.option	pic0
	b	$L247
	.option	pic2
	move	$2,$0

$L249:
	move	$2,$17
$L247:
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
	b	$L251
	.option	pic2
	move	$18,$5

$L254:
	sra	$2,$16,1
	mult	$2,$19
	mflo	$17
	addu	$17,$18,$17
	move	$5,$17
	move	$4,$20
	move	$25,$22
	jalr	$25
	nop

	beq	$2,$0,$L255
	nop

	blez	$2,$L253
	nop

	addu	$18,$17,$19
	addiu	$16,$16,-1
$L253:
	sra	$16,$16,1
$L251:
	bne	$16,$0,$L254
	move	$6,$21

	.option	pic0
	b	$L252
	.option	pic2
	move	$2,$0

$L255:
	move	$2,$17
$L252:
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
	bgez	$4,$L258
	move	$2,$4

	subu	$3,$0,$5
	sltu	$5,$0,$3
	subu	$2,$0,$4
	subu	$2,$2,$5
$L258:
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
	bgez	$4,$L262
	move	$2,$4

	subu	$2,$0,$4
$L262:
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
	bgez	$4,$L265
	move	$2,$4

	subu	$3,$0,$5
	sltu	$5,$0,$3
	subu	$2,$0,$4
	subu	$2,$2,$5
$L265:
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
	b	$L269
	.option	pic2
	move	$fp,$sp

$L269:
	lw	$2,0($4)
	nop
	beq	$2,$0,$L274
	nop

	bne	$5,$2,$L269
	addiu	$4,$4,4

	addiu	$4,$4,-4
	lw	$2,0($4)
	nop
$L274:
	bne	$2,$0,$L272
	move	$2,$4

	move	$2,$0
$L272:
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
	b	$L276
	.option	pic2
	move	$fp,$sp

$L281:
	addiu	$5,$5,4
$L276:
	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L277
	nop

	beq	$3,$0,$L277
	nop

	bne	$2,$0,$L281
	addiu	$4,$4,4

	addiu	$4,$4,-4
$L277:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L280
	nop

	lw	$2,0($4)
	.option	pic0
	b	$L279
	.option	pic2
	slt	$2,$3,$2

$L280:
	li	$2,-1			# 0xffffffffffffffff
$L279:
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
$L283:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$6,-4($5)
	nop
	bne	$6,$0,$L283
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
	b	$L285
	.option	pic2
	move	$2,$4

$L286:
	addiu	$2,$2,4
$L285:
	lw	$3,0($2)
	nop
	bne	$3,$0,$L286
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
	b	$L288
	.option	pic2
	move	$fp,$sp

$L294:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L288:
	beq	$6,$0,$L295
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L289
	nop

	beq	$3,$0,$L289
	nop

	bne	$2,$0,$L294
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L289:
	beq	$6,$0,$L295
	move	$2,$0

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L293
	nop

	lw	$2,0($4)
	.option	pic0
	b	$L291
	.option	pic2
	slt	$2,$3,$2

$L293:
	li	$2,-1			# 0xffffffffffffffff
$L291:
$L295:
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
	b	$L297
	.option	pic2
	move	$fp,$sp

$L302:
	addiu	$4,$4,4
$L297:
	beq	$6,$0,$L298
	nop

	lw	$2,0($4)
	nop
	bne	$5,$2,$L302
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L298:
	bne	$6,$0,$L300
	move	$2,$4

	move	$2,$0
$L300:
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
	b	$L304
	.option	pic2
	move	$fp,$sp

$L310:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L304:
	beq	$6,$0,$L311
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	beq	$3,$2,$L310
	addiu	$6,$6,-1

	addiu	$6,$6,1
	beq	$6,$0,$L311
	move	$2,$0

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L309
	nop

	lw	$2,0($4)
	.option	pic0
	b	$L307
	.option	pic2
	slt	$2,$3,$2

$L309:
	li	$2,-1			# 0xffffffffffffffff
$L307:
$L311:
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
	.option	pic0
	b	$L313
	.option	pic2
	move	$3,$4

$L314:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$7,-4($5)
	nop
	sw	$7,-4($3)
$L313:
	addiu	$6,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	bne	$6,$7,$L314
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
	beq	$4,$5,$L316
	move	$2,$4

	subu	$3,$4,$5
	sll	$4,$6,2
	sltu	$3,$3,$4
	beq	$3,$0,$L321
	addu	$3,$2,$4

	addu	$5,$5,$4
	.option	pic0
	b	$L318
	.option	pic2
	addiu	$6,$2,-4

$L319:
	lw	$4,0($5)
	nop
	sw	$4,0($3)
$L318:
	addiu	$3,$3,-4
	bne	$3,$6,$L319
	addiu	$5,$5,-4

	.option	pic0
	b	$L316
	nop

	.option	pic2
$L320:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$4,-4($5)
	.option	pic0
	b	$L317
	.option	pic2
	sw	$4,-4($3)

$L321:
	move	$3,$2
$L317:
	addiu	$6,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	bne	$6,$7,$L320
	nop

$L316:
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
	.option	pic0
	b	$L323
	.option	pic2
	move	$3,$4

$L324:
	addiu	$3,$3,4
	sw	$5,-4($3)
$L323:
	addiu	$6,$6,-1
	li	$7,-1			# 0xffffffffffffffff
	bne	$6,$7,$L324
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
	beq	$2,$0,$L326
	move	$fp,$sp

	addu	$2,$4,$6
	.option	pic0
	b	$L327
	.option	pic2
	addu	$5,$5,$6

$L328:
	addiu	$2,$2,-1
	addiu	$5,$5,-1
	lb	$3,0($2)
	nop
	sb	$3,0($5)
$L327:
	bne	$2,$4,$L328
	nop

	.option	pic0
	b	$L325
	nop

	.option	pic2
$L326:
	beq	$4,$5,$L325
	nop

	addu	$6,$5,$6
	.option	pic0
	b	$L330
	.option	pic2
	move	$2,$4

$L331:
	addiu	$2,$2,1
	addiu	$5,$5,1
	lb	$3,-1($2)
	nop
	sb	$3,-1($5)
$L330:
	bne	$5,$6,$L331
	nop

$L325:
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
	beq	$2,$0,$L333
	move	$fp,$sp

	sll	$8,$5,$6
	.option	pic0
	b	$L334
	.option	pic2
	move	$9,$0

$L333:
	srl	$2,$5,1
	nor	$3,$0,$6
	srl	$2,$2,$3
	sll	$8,$4,$6
	or	$8,$2,$8
	sll	$9,$5,$6
$L334:
	subu	$2,$0,$6
	andi	$2,$2,0x20
	beq	$2,$0,$L335
	sll	$2,$4,1

	subu	$6,$0,$6
	srl	$11,$4,$6
	.option	pic0
	b	$L336
	.option	pic2
	move	$10,$0

$L335:
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$11,$5,$6
	or	$11,$2,$11
	srl	$10,$4,$6
$L336:
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
	beq	$2,$0,$L338
	move	$fp,$sp

	srl	$9,$4,$6
	.option	pic0
	b	$L339
	.option	pic2
	move	$8,$0

$L338:
	sll	$2,$4,1
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$9,$5,$6
	or	$9,$2,$9
	srl	$8,$4,$6
$L339:
	subu	$2,$0,$6
	andi	$2,$2,0x20
	beq	$2,$0,$L340
	srl	$2,$5,1

	subu	$6,$0,$6
	sll	$10,$5,$6
	.option	pic0
	b	$L341
	.option	pic2
	move	$11,$0

$L340:
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$3,$0,$6
	srl	$2,$2,$3
	sll	$10,$4,$6
	or	$10,$2,$10
	sll	$11,$5,$6
$L341:
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
	.option	pic0
	b	$L354
	.option	pic2
	move	$2,$0

$L357:
	andi	$3,$3,0x1
	beq	$3,$0,$L354
	addiu	$2,$2,1

	addiu	$2,$2,-1
	.option	pic0
	b	$L356
	.option	pic2
	addiu	$2,$2,1

$L354:
	li	$3,32			# 0x20
	bne	$2,$3,$L357
	srl	$3,$4,$2

	move	$2,$0
$L356:
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
	beq	$4,$0,$L362
	move	$fp,$sp

	.option	pic0
	b	$L360
	.option	pic2
	li	$2,1			# 0x1

$L361:
	sra	$4,$4,1
	addiu	$2,$2,1
$L360:
	andi	$3,$4,0x1
	beq	$3,$0,$L361
	nop

	.option	pic0
	b	$L359
	nop

	.option	pic2
$L362:
	move	$2,$0
$L359:
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
	bc1t	$L366
	move	$fp,$sp

	lui	$2,%hi($LC1)
	lwc1	$f0,%lo($LC1)($2)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1f	$L369
	li	$2,1			# 0x1

	.option	pic0
	b	$L364
	nop

	.option	pic2
$L366:
	.option	pic0
	b	$L364
	.option	pic2
	li	$2,1			# 0x1

$L369:
	move	$2,$0
$L364:
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
	bc1t	$L373
	move	$fp,$sp

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L376
	li	$2,1			# 0x1

	.option	pic0
	b	$L371
	nop

	.option	pic2
$L373:
	.option	pic0
	b	$L371
	.option	pic2
	li	$2,1			# 0x1

$L376:
	move	$2,$0
$L371:
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
	bc1t	$L380
	move	$fp,$sp

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L383
	li	$2,1			# 0x1

	.option	pic0
	b	$L378
	nop

	.option	pic2
$L380:
	.option	pic0
	b	$L378
	.option	pic2
	li	$2,1			# 0x1

$L383:
	move	$2,$0
$L378:
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
	bc1t	$L386
	mov.s	$f0,$f12

	add.s	$f2,$f12,$f12
	c.eq.s	$f12,$f2
	nop
	bc1t	$L386
	nop

	bgez	$5,$L390
	lui	$2,%hi($LC4)

	lwc1	$f2,%lo($LC4)($2)
	.option	pic0
	b	$L391
	.option	pic2
	andi	$2,$5,0x1

$L390:
	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5)($2)
$L389:
	andi	$2,$5,0x1
$L391:
	beq	$2,$0,$L392
	srl	$2,$5,31

	mul.s	$f0,$f0,$f2
$L392:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L386
	nop

	.option	pic0
	b	$L389
	.option	pic2
	mul.s	$f2,$f2,$f2

$L386:
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
	bc1t	$L394
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L394
	nop

	bgez	$6,$L398
	lui	$2,%hi($LC6)

	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L399
	.option	pic2
	andi	$2,$6,0x1

$L398:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
$L397:
	andi	$2,$6,0x1
$L399:
	beq	$2,$0,$L400
	srl	$2,$6,31

	mul.d	$f0,$f0,$f2
$L400:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L394
	nop

	.option	pic0
	b	$L397
	.option	pic2
	mul.d	$f2,$f2,$f2

$L394:
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
	bc1t	$L402
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L402
	nop

	bgez	$6,$L406
	lui	$2,%hi($LC6)

	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L407
	.option	pic2
	andi	$2,$6,0x1

$L406:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
$L405:
	andi	$2,$6,0x1
$L407:
	beq	$2,$0,$L408
	srl	$2,$6,31

	mul.d	$f0,$f0,$f2
$L408:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L402
	nop

	.option	pic0
	b	$L405
	.option	pic2
	mul.d	$f2,$f2,$f2

$L402:
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
	b	$L410
	.option	pic2
	move	$3,$4

$L411:
	addiu	$5,$5,1
	lb	$8,-1($5)
	addiu	$3,$3,1
	lb	$7,-1($3)
	nop
	xor	$7,$7,$8
	sb	$7,-1($3)
$L410:
	bne	$3,$6,$L411
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
	b	$L413
	.option	pic2
	addu	$2,$18,$2

$L415:
	addiu	$17,$17,1
	addiu	$2,$2,1
	addiu	$16,$16,-1
$L413:
	beq	$16,$0,$L414
	nop

	lb	$3,0($17)
	nop
	bne	$3,$0,$L415
	sb	$3,0($2)

$L414:
	bne	$16,$0,$L416
	nop

	sb	$0,0($2)
$L416:
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
	b	$L418
	.option	pic2
	move	$2,$0

$L420:
	addiu	$2,$2,1
$L418:
	beq	$2,$5,$L419
	addu	$3,$4,$2

	lb	$3,0($3)
	nop
	bne	$3,$0,$L420
	nop

$L419:
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
	b	$L422
	.option	pic2
	move	$fp,$sp

$L424:
	lb	$7,-1($3)
	lb	$6,0($4)
	nop
	beq	$7,$6,$L426
	move	$2,$4

$L427:
	lb	$6,0($3)
	nop
	bne	$6,$0,$L424
	addiu	$3,$3,1

	addiu	$3,$3,-1
	addiu	$4,$4,1
$L422:
	lb	$2,0($4)
	nop
	bne	$2,$0,$L427
	move	$3,$5

$L426:
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
$L430:
	lb	$3,0($4)
	nop
	bne	$5,$3,$L429
	nop

	move	$2,$4
$L429:
	addiu	$4,$4,1
	lb	$3,-1($4)
	nop
	bne	$3,$0,$L430
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
	beq	$2,$0,$L436
	move	$18,$2

	lb	$19,0($17)
	.option	pic0
	b	$L438
	.option	pic2
	move	$5,$19

$L435:
	move	$6,$18
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	beq	$2,$0,$L437
	move	$5,$19

	addiu	$16,$16,1
$L438:
	move	$4,$16
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	bne	$2,$0,$L435
	move	$16,$2

	.option	pic0
	b	$L433
	.option	pic2
	move	$2,$0

$L436:
	.option	pic0
	b	$L433
	.option	pic2
	move	$2,$16

$L437:
	move	$2,$16
$L433:
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
	bc1f	$L440
	swc1	$f13,24($fp)

	c.lt.d	$f0,$f14
	nop
	bc1t	$L452
	li	$2,-2147483648			# 0xffffffff80000000

$L440:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L450
	nop

	c.lt.d	$f14,$f0
	nop
	bc1f	$L451
	li	$2,-2147483648			# 0xffffffff80000000

$L452:
	lw	$3,24($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,28($fp)
	.option	pic0
	b	$L443
	.option	pic2
	sw	$2,12($fp)

$L450:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	swc1	$f0,12($fp)
	.option	pic0
	b	$L443
	.option	pic2
	swc1	$f1,8($fp)

$L451:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
$L443:
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
	move	$17,$6
	move	$19,$7
	subu	$18,$5,$7
	beq	$7,$0,$L458
	addu	$18,$4,$18

	sltu	$5,$5,$7
	bne	$5,$0,$L459
	sltu	$2,$18,$16

	.option	pic0
	b	$L461
	nop

	.option	pic2
$L457:
	lb	$3,0($16)
	lb	$2,0($17)
	nop
	bne	$3,$2,$L456
	addiu	$6,$19,-1

	addiu	$5,$17,1
	addiu	$4,$16,1
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	beq	$2,$0,$L460
	move	$2,$16

$L456:
	addiu	$16,$16,1
	sltu	$2,$18,$16
$L461:
	beq	$2,$0,$L457
	move	$2,$0

	.option	pic0
	b	$L454
	nop

	.option	pic2
$L458:
	.option	pic0
	b	$L454
	.option	pic2
	move	$2,$4

$L459:
	move	$2,$0
$L460:
$L454:
	move	$sp,$fp
	lw	$31,44($fp)
	lw	$fp,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

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
	bc1f	$L480
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
	b	$L464
	.option	pic2
	li	$4,1			# 0x1

$L480:
	move	$4,$0
$L464:
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
	bc1t	$L475
	lui	$2,%hi($LC6)

	.option	pic0
	b	$L481
	nop

	.option	pic2
$L468:
	addiu	$2,$2,1
	lwc1	$f0,%lo($LC6+4)($3)
	nop
	lwc1	$f1,%lo($LC6)($3)
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	mul.d	$f0,$f2,$f0
	swc1	$f0,28($fp)
	.option	pic0
	b	$L466
	.option	pic2
	swc1	$f1,24($fp)

$L475:
	move	$2,$0
$L466:
	lui	$3,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($3)
	nop
	lwc1	$f1,%lo($LC8)($3)
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.le.d	$f0,$f2
	nop
	bc1t	$L468
	lui	$3,%hi($LC6)

	.option	pic0
	b	$L483
	.option	pic2
	sw	$2,0($6)

$L481:
	lwc1	$f0,%lo($LC6+4)($2)
	nop
	lwc1	$f1,%lo($LC6)($2)
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L482
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.eq.d	$f2,$f0
	nop
	bc1f	$L477
	move	$2,$0

	.option	pic0
	b	$L483
	.option	pic2
	sw	$2,0($6)

$L472:
	addiu	$2,$2,-1
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	add.d	$f0,$f0,$f0
	swc1	$f0,28($fp)
	swc1	$f1,24($fp)
$L477:
	lui	$3,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($3)
	nop
	lwc1	$f1,%lo($LC6)($3)
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L472
	nop

	.option	pic0
	b	$L483
	.option	pic2
	sw	$2,0($6)

$L482:
	move	$2,$0
	sw	$2,0($6)
$L483:
	beq	$4,$0,$L473
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
$L473:
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
	b	$L485
	.option	pic2
	move	$24,$0

$L488:
	andi	$13,$5,0x1
	or	$14,$12,$13
	beq	$14,$0,$L489
	srl	$14,$7,31

	addu	$15,$25,$7
	sltu	$3,$15,$25
	addu	$14,$24,$6
	addu	$14,$3,$14
	move	$25,$15
	move	$24,$14
	srl	$14,$7,31
$L489:
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
$L485:
	or	$14,$4,$5
	bne	$14,$0,$L488
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
	b	$L491
	.option	pic2
	li	$3,1			# 0x1

$L493:
	sll	$5,$5,1
	sll	$3,$3,1
$L491:
	sltu	$2,$5,$4
	beq	$2,$0,$L498
	addiu	$7,$7,-1

	beq	$7,$0,$L499
	nop

	bgez	$5,$L493
	move	$2,$0

	.option	pic0
	b	$L495
	nop

	.option	pic2
$L496:
	bne	$7,$0,$L494
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L494:
	srl	$3,$3,1
	.option	pic0
	b	$L495
	.option	pic2
	srl	$5,$5,1

$L498:
	.option	pic0
	b	$L495
	.option	pic2
	move	$2,$0

$L499:
	move	$2,$0
$L495:
	bne	$3,$0,$L496
	sltu	$7,$4,$5

	beq	$6,$0,$L497
	nop

	move	$2,$4
$L497:
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
	bgez	$4,$L502
	.cprestore	16

	nor	$4,$0,$4
$L502:
	beq	$4,$0,$L504
	sll	$4,$4,8

	lw	$25,%call16(__clzsi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L503
	.option	pic2
	addiu	$2,$2,-1

$L504:
	li	$2,7			# 0x7
$L503:
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
	bgez	$4,$L506
	.cprestore	16

	nor	$2,$0,$4
	nor	$3,$0,$5
	move	$5,$3
	move	$4,$2
$L506:
	or	$2,$4,$5
	beq	$2,$0,$L510
	nop

	lw	$25,%call16(__clzdi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L508
	.option	pic2
	addiu	$2,$2,-1

$L510:
	li	$2,63			# 0x3f
$L508:
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
	b	$L512
	.option	pic2
	move	$2,$0

$L514:
	beq	$3,$0,$L513
	nop

	addu	$2,$2,$5
$L513:
	srl	$4,$4,1
	sll	$5,$5,1
$L512:
	bne	$4,$0,$L514
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
	bne	$3,$0,$L516
	and	$2,$6,$2

	addu	$3,$5,$6
	sltu	$3,$3,$4
	beq	$3,$0,$L517
	nop

$L516:
	move	$3,$5
	move	$7,$4
	sll	$10,$10,3
	.option	pic0
	b	$L518
	.option	pic2
	addu	$10,$10,$5

$L519:
	lw	$9,4($3)
	lw	$8,0($3)
	sw	$9,4($7)
	sw	$8,0($7)
	addiu	$3,$3,8
	addiu	$7,$7,8
$L518:
	bne	$3,$10,$L519
	nop

	.option	pic0
	b	$L524
	.option	pic2
	sltu	$3,$2,$6

$L521:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L524:
	bne	$3,$0,$L521
	addu	$3,$5,$2

	.option	pic0
	b	$L515
	nop

	.option	pic2
$L523:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L517:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,$L523
	addu	$2,$5,$6

$L515:
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
	bne	$2,$0,$L526
	srl	$8,$6,1

	addu	$2,$5,$6
	sltu	$2,$2,$4
	beq	$2,$0,$L527
	nop

$L526:
	move	$2,$5
	move	$3,$4
	sll	$8,$8,1
	.option	pic0
	b	$L528
	.option	pic2
	addu	$8,$8,$5

$L529:
	lh	$7,0($2)
	nop
	sh	$7,0($3)
	addiu	$2,$2,2
	addiu	$3,$3,2
$L528:
	bne	$2,$8,$L529
	nop

	andi	$2,$6,0x1
	beq	$2,$0,$L525
	nop

	addiu	$6,$6,-1
	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	.option	pic0
	b	$L525
	.option	pic2
	sb	$2,0($4)

$L531:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L527:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,$L531
	addu	$2,$5,$6

$L525:
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
	bne	$3,$0,$L533
	and	$2,$6,$2

	addu	$3,$5,$6
	sltu	$3,$3,$4
	beq	$3,$0,$L534
	nop

$L533:
	move	$3,$5
	move	$7,$4
	sll	$9,$9,2
	.option	pic0
	b	$L535
	.option	pic2
	addu	$9,$9,$5

$L536:
	lw	$8,0($3)
	nop
	sw	$8,0($7)
	addiu	$3,$3,4
	addiu	$7,$7,4
$L535:
	bne	$3,$9,$L536
	nop

	.option	pic0
	b	$L541
	.option	pic2
	sltu	$3,$2,$6

$L538:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L541:
	bne	$3,$0,$L538
	addu	$3,$5,$2

	.option	pic0
	b	$L532
	nop

	.option	pic2
$L540:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L534:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,$L540
	addu	$2,$5,$6

$L532:
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
	bgez	$4,$L544
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L544:
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
	bgez	$4,$L546
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L546:
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
	.option	pic0
	b	$L551
	.option	pic2
	move	$2,$0

$L553:
	subu	$3,$3,$2
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,$L552
	nop

	addiu	$2,$2,1
$L551:
	li	$3,16			# 0x10
	bne	$2,$3,$L553
	li	$3,15			# 0xf

$L552:
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
	.option	pic0
	b	$L555
	.option	pic2
	move	$2,$0

$L557:
	andi	$3,$3,0x1
	bne	$3,$0,$L556
	nop

	addiu	$2,$2,1
$L555:
	li	$3,16			# 0x10
	bne	$2,$3,$L557
	sra	$3,$4,$2

$L556:
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
	bc1f	$L563
	move	$fp,$sp

	sub.s	$f12,$f12,$f0
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	li	$3,32768			# 0x8000
	.option	pic0
	b	$L561
	.option	pic2
	addu	$2,$2,$3

$L563:
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
$L561:
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
	.option	pic0
	b	$L565
	.option	pic2
	move	$3,$0

$L567:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beq	$5,$0,$L566
	nop

	addiu	$2,$2,1
$L566:
	addiu	$3,$3,1
$L565:
	li	$5,16			# 0x10
	bne	$3,$5,$L567
	nop

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
	.option	pic0
	b	$L569
	.option	pic2
	move	$3,$0

$L571:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beq	$5,$0,$L570
	nop

	addiu	$2,$2,1
$L570:
	addiu	$3,$3,1
$L569:
	li	$5,16			# 0x10
	bne	$3,$5,$L571
	nop

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
	b	$L573
	.option	pic2
	move	$2,$0

$L575:
	beq	$3,$0,$L574
	nop

	addu	$2,$2,$5
$L574:
	srl	$4,$4,1
	sll	$5,$5,1
$L573:
	bne	$4,$0,$L575
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
	beq	$4,$0,$L581
	move	$fp,$sp

	.option	pic0
	b	$L578
	.option	pic2
	move	$2,$0

$L580:
	beq	$3,$0,$L579
	nop

	addu	$2,$2,$4
$L579:
	sll	$4,$4,1
	srl	$5,$5,1
$L578:
	bne	$5,$0,$L580
	andi	$3,$5,0x1

	.option	pic0
	b	$L577
	nop

	.option	pic2
$L581:
	move	$2,$0
$L577:
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
	b	$L583
	.option	pic2
	li	$3,1			# 0x1

$L585:
	sll	$5,$5,1
	sll	$3,$3,1
$L583:
	sltu	$2,$5,$4
	beq	$2,$0,$L590
	addiu	$7,$7,-1

	beq	$7,$0,$L591
	nop

	bgez	$5,$L585
	move	$2,$0

	.option	pic0
	b	$L587
	nop

	.option	pic2
$L588:
	bne	$7,$0,$L586
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L586:
	srl	$3,$3,1
	.option	pic0
	b	$L587
	.option	pic2
	srl	$5,$5,1

$L590:
	.option	pic0
	b	$L587
	.option	pic2
	move	$2,$0

$L591:
	move	$2,$0
$L587:
	bne	$3,$0,$L588
	sltu	$7,$4,$5

	beq	$6,$0,$L589
	nop

	move	$2,$4
$L589:
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
	bc1t	$L595
	move	$fp,$sp

	c.lt.s	$f14,$f12
	nop
	bc1t	$L596
	move	$2,$0

	.option	pic0
	b	$L594
	nop

	.option	pic2
$L595:
	.option	pic0
	b	$L594
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L596:
	li	$2,1			# 0x1
$L594:
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
	bc1t	$L599
	move	$fp,$sp

	c.lt.d	$f14,$f12
	nop
	bc1t	$L600
	move	$2,$0

	.option	pic0
	b	$L598
	nop

	.option	pic2
$L599:
	.option	pic0
	b	$L598
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L600:
	li	$2,1			# 0x1
$L598:
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
	bgez	$5,$L610
	move	$fp,$sp

	subu	$5,$0,$5
	.option	pic0
	b	$L604
	.option	pic2
	li	$7,1			# 0x1

$L610:
	move	$7,$0
$L604:
	li	$3,33			# 0x21
	.option	pic0
	b	$L605
	.option	pic2
	move	$2,$0

$L608:
	beq	$6,$0,$L606
	nop

	addu	$2,$2,$4
$L606:
	sll	$4,$4,1
	sra	$5,$5,1
$L605:
	beq	$5,$0,$L607
	nop

	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	bne	$3,$0,$L608
	andi	$6,$5,0x1

$L607:
	beq	$7,$0,$L609
	nop

	subu	$2,$0,$2
$L609:
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
	bgez	$4,$L616
	move	$fp,$sp

	subu	$4,$0,$4
	.option	pic0
	b	$L613
	.option	pic2
	li	$16,1			# 0x1

$L616:
	move	$16,$0
$L613:
	bgez	$5,$L617
	move	$6,$0

	subu	$5,$0,$5
	xori	$16,$16,0x1
$L617:
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L615
	nop

	subu	$2,$0,$2
$L615:
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
	bgez	$4,$L622
	move	$fp,$sp

	subu	$4,$0,$4
	.option	pic0
	b	$L619
	.option	pic2
	li	$16,1			# 0x1

$L622:
	move	$16,$0
$L619:
	bgez	$5,$L623
	li	$6,1			# 0x1

	subu	$5,$0,$5
$L623:
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L621
	nop

	subu	$2,$0,$2
$L621:
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
	b	$L625
	.option	pic2
	li	$3,1			# 0x1

$L627:
	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	andi	$3,$3,0xffff
$L625:
	sltu	$7,$5,$4
	beq	$7,$0,$L632
	nop

	addiu	$2,$2,-1
	beq	$2,$0,$L633
	sll	$7,$5,16

	sra	$7,$7,16
	bgez	$7,$L627
	nop

	.option	pic0
	b	$L629
	.option	pic2
	move	$2,$0

$L630:
	bne	$7,$0,$L628
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$2,$2,$3
$L628:
	srl	$3,$3,1
	.option	pic0
	b	$L629
	.option	pic2
	srl	$5,$5,1

$L632:
	.option	pic0
	b	$L629
	.option	pic2
	move	$2,$0

$L633:
	move	$2,$0
$L629:
	bne	$3,$0,$L630
	sltu	$7,$4,$5

	beq	$6,$0,$L631
	nop

	move	$2,$4
$L631:
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
	b	$L636
	.option	pic2
	li	$3,1			# 0x1

$L638:
	sll	$5,$5,1
	sll	$3,$3,1
$L636:
	sltu	$2,$5,$4
	beq	$2,$0,$L643
	addiu	$7,$7,-1

	beq	$7,$0,$L644
	nop

	bgez	$5,$L638
	move	$2,$0

	.option	pic0
	b	$L640
	nop

	.option	pic2
$L641:
	bne	$7,$0,$L639
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L639:
	srl	$3,$3,1
	.option	pic0
	b	$L640
	.option	pic2
	srl	$5,$5,1

$L643:
	.option	pic0
	b	$L640
	.option	pic2
	move	$2,$0

$L644:
	move	$2,$0
$L640:
	bne	$3,$0,$L641
	sltu	$7,$4,$5

	beq	$6,$0,$L642
	nop

	move	$2,$4
$L642:
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
	beq	$2,$0,$L647
	move	$fp,$sp

	move	$3,$0
	.option	pic0
	b	$L649
	.option	pic2
	sll	$2,$5,$6

$L647:
	beq	$6,$0,$L650
	sll	$3,$5,$6

	sll	$4,$4,$6
	subu	$6,$0,$6
	srl	$6,$5,$6
	.option	pic0
	b	$L649
	.option	pic2
	or	$2,$6,$4

$L650:
	move	$3,$5
	move	$2,$4
$L649:
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
	beq	$2,$0,$L652
	move	$fp,$sp

	sra	$2,$4,31
	.option	pic0
	b	$L654
	.option	pic2
	sra	$3,$4,$6

$L652:
	beq	$6,$0,$L655
	sra	$2,$4,$6

	subu	$7,$0,$6
	sll	$4,$4,$7
	srl	$6,$5,$6
	.option	pic0
	b	$L654
	.option	pic2
	or	$3,$4,$6

$L655:
	move	$3,$5
	move	$2,$4
$L654:
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
	beq	$2,$0,$L663
	move	$fp,$sp

	.option	pic0
	b	$L659
	.option	pic2
	li	$3,16			# 0x10

$L663:
	move	$3,$0
$L659:
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	beq	$2,$0,$L660
	li	$5,8			# 0x8

	move	$5,$0
$L660:
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xf0
	bne	$2,$0,$L665
	addu	$3,$3,$5

	.option	pic0
	b	$L661
	.option	pic2
	li	$5,4			# 0x4

$L665:
	move	$5,$0
$L661:
	li	$2,4			# 0x4
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xc
	bne	$2,$0,$L666
	addu	$3,$3,$5

	.option	pic0
	b	$L662
	.option	pic2
	li	$5,2			# 0x2

$L666:
	move	$5,$0
$L662:
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
	bne	$2,$0,$L669
	move	$fp,$sp

	slt	$2,$6,$4
	bne	$2,$0,$L673
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bne	$2,$0,$L673
	move	$2,$0

	sltu	$2,$7,$5
	bne	$2,$0,$L672
	li	$2,1			# 0x1

	.option	pic0
	b	$L668
	nop

	.option	pic2
$L669:
	.option	pic0
	b	$L668
	.option	pic2
	move	$2,$0

	.option	pic0
	b	$L668
	.option	pic2
	move	$2,$0

$L672:
	li	$2,2			# 0x2
$L668:
$L673:
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
	bne	$2,$0,$L680
	move	$fp,$sp

	.option	pic0
	b	$L676
	.option	pic2
	li	$3,16			# 0x10

$L680:
	move	$3,$0
$L676:
	srl	$4,$4,$3
	andi	$2,$4,0xff
	beq	$2,$0,$L677
	li	$2,8			# 0x8

	move	$2,$0
$L677:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0xf
	beq	$2,$0,$L678
	li	$2,4			# 0x4

	move	$2,$0
$L678:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	beq	$2,$0,$L679
	li	$2,2			# 0x2

	move	$2,$0
$L679:
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
	beq	$2,$0,$L685
	move	$fp,$sp

	move	$2,$0
	.option	pic0
	b	$L687
	.option	pic2
	srl	$3,$4,$6

$L685:
	beq	$6,$0,$L688
	srl	$2,$4,$6

	subu	$7,$0,$6
	sll	$4,$4,$7
	srl	$6,$5,$6
	.option	pic0
	b	$L687
	.option	pic2
	or	$3,$4,$6

$L688:
	move	$3,$5
	move	$2,$4
$L687:
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
$L699:
	andi	$2,$6,0x1
	beq	$2,$0,$L702
	srl	$2,$6,31

	mul.d	$f0,$f0,$f12
$L702:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L698
	nop

	.option	pic0
	b	$L699
	.option	pic2
	mul.d	$f12,$f12,$f12

$L698:
	beq	$3,$0,$L700
	lui	$2,%hi($LC8)

	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	div.d	$f0,$f2,$f0
$L700:
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
$L706:
	andi	$2,$5,0x1
	beq	$2,$0,$L709
	srl	$2,$5,31

	mul.s	$f0,$f0,$f12
$L709:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L705
	nop

	.option	pic0
	b	$L706
	.option	pic2
	mul.s	$f12,$f12,$f12

$L705:
	beq	$3,$0,$L707
	lui	$2,%hi($LC11)

	lwc1	$f2,%lo($LC11)($2)
	nop
	div.s	$f0,$f2,$f0
$L707:
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
	bne	$2,$0,$L712
	move	$fp,$sp

	sltu	$2,$6,$4
	bne	$2,$0,$L716
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bne	$2,$0,$L716
	move	$2,$0

	sltu	$2,$7,$5
	bne	$2,$0,$L715
	li	$2,1			# 0x1

	.option	pic0
	b	$L711
	nop

	.option	pic2
$L712:
	.option	pic0
	b	$L711
	.option	pic2
	move	$2,$0

	.option	pic0
	b	$L711
	.option	pic2
	move	$2,$0

$L715:
	li	$2,2			# 0x2
$L711:
$L716:
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
	.rdata
	.align	2
$LC0:
	.word	-8388609
	.align	2
$LC1:
	.word	2139095039
	.align	3
$LC2:
	.word	-1048577
	.word	-1
	.align	3
$LC3:
	.word	2146435071
	.word	-1
	.align	2
$LC4:
	.word	1056964608
	$LC5 = $LC7
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
