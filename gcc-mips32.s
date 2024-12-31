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

	addu	$4,$5,$6
	.option	pic0
	b	$L3
	.option	pic2
	addu	$3,$2,$6

$L4:
	addiu	$4,$4,-1
	addiu	$3,$3,-1
	lb	$6,0($4)
	nop
	sb	$6,0($3)
$L3:
	bne	$4,$5,$L4
	nop

	.option	pic0
	b	$L5
	nop

	.option	pic2
$L2:
	beq	$4,$5,$L5
	nop

	addu	$6,$4,$6
	move	$4,$5
	.option	pic0
	b	$L6
	.option	pic2
	move	$3,$2

$L7:
	addiu	$4,$4,1
	addiu	$3,$3,1
	lb	$5,-1($4)
	nop
	sb	$5,-1($3)
$L6:
	bne	$3,$6,$L7
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
	sb	$2,0($4)
	andi	$2,$2,0x00ff
	bne	$6,$2,$L11
	nop

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

$L17:
	addiu	$4,$4,1
	addiu	$6,$6,-1
$L15:
	beq	$6,$0,$L16
	nop

	lbu	$2,0($4)
	nop
	bne	$5,$2,$L17
	nop

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
	b	$L21
	.option	pic2
	move	$fp,$sp

$L23:
	addiu	$6,$6,-1
	addiu	$4,$4,1
	addiu	$5,$5,1
$L21:
	beq	$6,$0,$L22
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	beq	$3,$2,$L23
	nop

$L22:
	beq	$6,$0,$L25
	nop

	lbu	$2,0($4)
	lbu	$3,0($5)
	.option	pic0
	b	$L24
	.option	pic2
	subu	$2,$2,$3

$L25:
	move	$2,$0
$L24:
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
	b	$L27
	.option	pic2
	move	$3,$4

$L28:
	addiu	$5,$5,1
	addiu	$3,$3,1
	lbu	$4,-1($5)
	nop
	sb	$4,-1($3)
$L27:
	bne	$3,$6,$L28
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
	b	$L30
	.option	pic2
	addiu	$6,$6,-1

$L32:
	lbu	$3,0($2)
	nop
	bne	$5,$3,$L33
	addiu	$2,$6,-1

	.option	pic0
	b	$L31
	.option	pic2
	addu	$2,$4,$6

$L33:
	move	$6,$2
$L30:
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,$L32
	addu	$2,$4,$6

	move	$2,$0
$L31:
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
	b	$L35
	.option	pic2
	move	$3,$4

$L36:
	sb	$5,0($3)
	addiu	$3,$3,1
$L35:
	bne	$3,$6,$L36
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
	b	$L38
	.option	pic2
	move	$2,$4

$L39:
	addiu	$5,$5,1
	addiu	$2,$2,1
$L38:
	lb	$3,0($5)
	nop
	sb	$3,0($2)
	sll	$3,$3,24
	sra	$3,$3,24
	bne	$3,$0,$L39
	nop

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
	b	$L41
	.option	pic2
	andi	$5,$5,0x00ff

$L43:
	addiu	$2,$2,1
$L41:
	lb	$3,0($2)
	nop
	beq	$3,$0,$L42
	nop

	lbu	$3,0($2)
	nop
	bne	$5,$3,$L43
	nop

$L42:
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
$L46:
	lb	$2,0($4)
	nop
	beq	$5,$2,$L47
	move	$2,$4

	addiu	$4,$4,1
	lb	$2,-1($4)
	nop
	bne	$2,$0,$L46
	nop

$L47:
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
	b	$L49
	.option	pic2
	move	$fp,$sp

$L51:
	addiu	$4,$4,1
	addiu	$5,$5,1
$L49:
	lb	$3,0($4)
	lb	$2,0($5)
	nop
	bne	$3,$2,$L50
	nop

	bne	$3,$0,$L51
	nop

$L50:
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
	b	$L53
	.option	pic2
	move	$2,$4

$L54:
	addiu	$2,$2,1
$L53:
	lb	$3,0($2)
	nop
	bne	$3,$0,$L54
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
	beq	$6,$0,$L60
	move	$fp,$sp

	addiu	$6,$6,-1
	.option	pic0
	b	$L57
	.option	pic2
	addu	$6,$4,$6

$L59:
	addiu	$4,$4,1
	addiu	$5,$5,1
$L57:
	lbu	$2,0($4)
	nop
	beq	$2,$0,$L61
	nop

	lbu	$2,0($5)
	nop
	beq	$2,$0,$L58
	nop

	beq	$4,$6,$L58
	nop

	lbu	$3,0($4)
	nop
	beq	$3,$2,$L59
	nop

$L58:
	lbu	$2,0($4)
$L61:
	lbu	$3,0($5)
	.option	pic0
	b	$L56
	.option	pic2
	subu	$2,$2,$3

$L60:
	move	$2,$0
$L56:
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
	b	$L63
	.option	pic2
	move	$2,$4

$L64:
	lb	$3,1($2)
	nop
	sb	$3,0($5)
	lb	$3,0($2)
	nop
	sb	$3,1($5)
	addiu	$5,$5,2
	addiu	$2,$2,2
$L63:
	addu	$3,$4,$6
	subu	$3,$3,$2
	slt	$3,$3,2
	beq	$3,$0,$L64
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
	beq	$4,$2,$L69
	move	$fp,$sp

	li	$2,9			# 0x9
	bne	$4,$2,$L70
	li	$2,1			# 0x1

	.option	pic0
	b	$L68
	nop

	.option	pic2
$L69:
	.option	pic0
	b	$L68
	.option	pic2
	li	$2,1			# 0x1

$L70:
	move	$2,$0
$L68:
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
	bne	$2,$0,$L73
	move	$fp,$sp

	li	$2,127			# 0x7f
	bne	$4,$2,$L74
	li	$2,1			# 0x1

	.option	pic0
	b	$L72
	nop

	.option	pic2
$L73:
	.option	pic0
	b	$L72
	.option	pic2
	li	$2,1			# 0x1

$L74:
	move	$2,$0
$L72:
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
	beq	$4,$2,$L81
	move	$fp,$sp

	addiu	$4,$4,-9
	sltu	$4,$4,5
	beq	$4,$0,$L82
	li	$2,1			# 0x1

	.option	pic0
	b	$L80
	nop

	.option	pic2
$L81:
	.option	pic0
	b	$L80
	.option	pic2
	li	$2,1			# 0x1

$L82:
	move	$2,$0
$L80:
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
	bne	$2,$0,$L86
	move	$fp,$sp

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,$L90
	li	$2,1			# 0x1

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L90
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	sltu	$4,$4,3
	beq	$4,$0,$L89
	li	$2,1			# 0x1

	.option	pic0
	b	$L85
	nop

	.option	pic2
$L86:
	.option	pic0
	b	$L85
	.option	pic2
	li	$2,1			# 0x1

	.option	pic0
	b	$L85
	.option	pic2
	li	$2,1			# 0x1

$L89:
	move	$2,$0
$L85:
$L90:
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
	beq	$2,$0,$L93
	move	$fp,$sp

	addiu	$2,$4,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	.option	pic0
	b	$L94
	.option	pic2
	xori	$2,$2,0x1

$L93:
	sltu	$2,$4,8232
	bne	$2,$0,$L95
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,$L100
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$4,$2
	sltu	$2,$2,8185
	bne	$2,$0,$L100
	li	$2,1			# 0x1

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$4,$2
	li	$3,1048576			# 0x100000
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L98
	andi	$4,$4,0xfffe

	li	$2,65534			# 0xfffe
	beq	$4,$2,$L99
	li	$2,1			# 0x1

	.option	pic0
	b	$L94
	nop

	.option	pic2
$L95:
	.option	pic0
	b	$L94
	.option	pic2
	li	$2,1			# 0x1

	.option	pic0
	b	$L94
	.option	pic2
	li	$2,1			# 0x1

$L98:
	.option	pic0
	b	$L94
	.option	pic2
	move	$2,$0

$L99:
	move	$2,$0
$L94:
$L100:
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
	bne	$2,$0,$L103
	move	$fp,$sp

	ori	$4,$4,0x20
	addiu	$4,$4,-97
	sltu	$4,$4,6
	beq	$4,$0,$L104
	li	$2,1			# 0x1

	.option	pic0
	b	$L102
	nop

	.option	pic2
$L103:
	.option	pic0
	b	$L102
	.option	pic2
	li	$2,1			# 0x1

$L104:
	move	$2,$0
$L102:
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
	move	$fp,$sp
	c.un.d	$f12,$f12
	nop
	bc1t	$L109
	mov.d	$f0,$f14

	c.un.d	$f14,$f14
	nop
	bc1t	$L107
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L113
	nop

	.option	pic0
	b	$L107
	.option	pic2
	sub.d	$f0,$f12,$f14

$L109:
	.option	pic0
	b	$L107
	.option	pic2
	mov.d	$f0,$f12

$L113:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
$L107:
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
	bc1t	$L117
	move	$fp,$sp

	c.un.s	$f14,$f14
	nop
	bc1t	$L122
	mov.s	$f0,$f14

	c.lt.s	$f14,$f12
	nop
	bc1f	$L121
	nop

	.option	pic0
	b	$L115
	.option	pic2
	sub.s	$f0,$f12,$f14

$L117:
	.option	pic0
	b	$L115
	.option	pic2
	mov.s	$f0,$f12

$L121:
	mtc1	$0,$f0
$L115:
$L122:
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
	bc1t	$L127
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L128
	mov.d	$f0,$f14

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L125
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L129
	nop

	.option	pic0
	b	$L124
	nop

	.option	pic2
$L125:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L132
	mov.d	$f0,$f2

	.option	pic0
	b	$L124
	nop

	.option	pic2
$L127:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L124
	nop

	.option	pic2
$L128:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L124
	nop

	.option	pic2
$L129:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L124
	nop

	.option	pic2
$L132:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
$L124:
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
	bc1t	$L137
	swc1	$f14,12($fp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L138
	mov.s	$f0,$f14

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,12($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L135
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L139
	nop

	.option	pic0
	b	$L134
	nop

	.option	pic2
$L135:
	lwc1	$f0,8($fp)
	lwc1	$f2,12($fp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L142
	mov.s	$f0,$f2

	.option	pic0
	b	$L134
	nop

	.option	pic2
$L137:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L134
	nop

	.option	pic2
$L138:
	lwc1	$f0,8($fp)
	.option	pic0
	b	$L134
	nop

	.option	pic2
$L139:
	lwc1	$f0,8($fp)
	.option	pic0
	b	$L134
	nop

	.option	pic2
$L142:
	lwc1	$f0,8($fp)
$L134:
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
	bc1t	$L147
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L148
	mov.d	$f0,$f14

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L145
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L149
	nop

	.option	pic0
	b	$L144
	nop

	.option	pic2
$L145:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L152
	mov.d	$f0,$f2

	.option	pic0
	b	$L144
	nop

	.option	pic2
$L147:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L144
	nop

	.option	pic2
$L148:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L144
	nop

	.option	pic2
$L149:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L144
	nop

	.option	pic2
$L152:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
$L144:
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
	bc1t	$L157
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L158
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,8($fp)
	nop
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L155
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L159
	nop

	.option	pic0
	b	$L154
	.option	pic2
	mov.d	$f0,$f12

$L155:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L162
	nop

	.option	pic0
	b	$L154
	nop

	.option	pic2
$L157:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L154
	nop

	.option	pic2
$L158:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L154
	nop

	.option	pic2
$L159:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L154
	nop

	.option	pic2
$L162:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
$L154:
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
	bc1t	$L167
	swc1	$f14,12($fp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L168
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,8($fp)
	nop
	and	$3,$3,$4
	lw	$2,12($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L165
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L169
	nop

	.option	pic0
	b	$L164
	.option	pic2
	mov.s	$f0,$f12

$L165:
	lwc1	$f0,8($fp)
	lwc1	$f2,12($fp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L172
	nop

	.option	pic0
	b	$L164
	nop

	.option	pic2
$L167:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L164
	nop

	.option	pic2
$L168:
	lwc1	$f0,8($fp)
	.option	pic0
	b	$L164
	nop

	.option	pic2
$L169:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L164
	nop

	.option	pic2
$L172:
	lwc1	$f0,12($fp)
$L164:
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
	bc1t	$L177
	swc1	$f15,16($fp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L178
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,8($fp)
	nop
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L175
	nop

	lw	$2,8($fp)
	nop
	bgez	$2,$L179
	nop

	.option	pic0
	b	$L174
	.option	pic2
	mov.d	$f0,$f12

$L175:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L182
	nop

	.option	pic0
	b	$L174
	nop

	.option	pic2
$L177:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L174
	nop

	.option	pic2
$L178:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L174
	nop

	.option	pic2
$L179:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L174
	nop

	.option	pic2
$L182:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
$L174:
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
	lui	$2,%hi(s.0)
	.option	pic0
	b	$L184
	.option	pic2
	addiu	$2,$2,%lo(s.0)

$L185:
	lui	$5,%hi(digits)
	addiu	$5,$5,%lo(digits)
	addu	$3,$3,$5
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	addiu	$2,$2,1
	srl	$4,$4,6
$L184:
	bne	$4,$0,$L185
	andi	$3,$4,0x3f

	sb	$0,0($2)
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
	bne	$5,$0,$L189
	move	$fp,$sp

	sw	$0,4($4)
	.option	pic0
	b	$L188
	.option	pic2
	sw	$0,0($4)

$L189:
	lw	$2,0($5)
	nop
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L188
	nop

	sw	$4,4($2)
$L188:
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
	beq	$2,$0,$L192
	move	$fp,$sp

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L192:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L191
	nop

	lw	$3,0($4)
	nop
	sw	$3,0($2)
$L191:
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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$18,$4
	move	$16,$5
	move	$19,$6
	move	$17,$7
	lw	$21,0($6)
	move	$22,$5
	.option	pic0
	b	$L195
	.option	pic2
	move	$20,$0

$L198:
	move	$5,$22
	move	$4,$18
	lw	$25,80($fp)
	nop
	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L196
	addu	$22,$22,$17

	mult	$20,$17
	mflo	$2
	.option	pic0
	b	$L197
	.option	pic2
	addu	$2,$16,$2

$L196:
	addiu	$20,$20,1
$L195:
	bne	$20,$21,$L198
	addiu	$2,$21,1

	sw	$2,0($19)
	mult	$17,$21
	mflo	$4
	move	$6,$17
	move	$5,$18
	addu	$4,$16,$4
	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L197:
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
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.set	nomips16
	.set	nomicromips
	.ent	lfind
	.type	lfind, @function
lfind:
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
	move	$16,$5
	move	$17,$7
	lw	$21,0($6)
	move	$19,$5
	.option	pic0
	b	$L200
	.option	pic2
	move	$18,$0

$L203:
	move	$5,$19
	move	$4,$20
	lw	$25,72($fp)
	nop
	jalr	$25
	nop

	bne	$2,$0,$L201
	addu	$19,$19,$17

	mult	$18,$17
	mflo	$2
	.option	pic0
	b	$L202
	.option	pic2
	addu	$2,$16,$2

$L201:
	addiu	$18,$18,1
$L200:
	bne	$18,$21,$L203
	move	$2,$0

$L202:
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
	bgez	$4,$L205
	move	$2,$4

	subu	$2,$0,$4
$L205:
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
	b	$L207
	.option	pic2
	move	$16,$4

$L208:
	addiu	$16,$16,1
$L207:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L208
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L214
	li	$3,45			# 0x2d

	bne	$2,$3,$L215
	nop

	.option	pic0
	b	$L209
	.option	pic2
	li	$4,1			# 0x1

$L214:
	move	$4,$0
$L209:
	.option	pic0
	b	$L210
	.option	pic2
	addiu	$16,$16,1

$L215:
	move	$4,$0
$L210:
	.option	pic0
	b	$L211
	.option	pic2
	move	$2,$0

$L212:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L211:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L212
	addiu	$16,$16,1

	bne	$4,$0,$L213
	nop

	subu	$2,$0,$2
$L213:
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
	b	$L218
	.option	pic2
	move	$16,$4

$L219:
	addiu	$16,$16,1
$L218:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L219
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L225
	li	$3,45			# 0x2d

	bne	$2,$3,$L226
	nop

	.option	pic0
	b	$L220
	.option	pic2
	li	$4,1			# 0x1

$L225:
	move	$4,$0
$L220:
	.option	pic0
	b	$L221
	.option	pic2
	addiu	$16,$16,1

$L226:
	move	$4,$0
$L221:
	.option	pic0
	b	$L222
	.option	pic2
	move	$2,$0

$L223:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L222:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L223
	addiu	$16,$16,1

	bne	$4,$0,$L224
	nop

	subu	$2,$0,$2
$L224:
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
	b	$L229
	.option	pic2
	move	$22,$4

$L230:
	addiu	$22,$22,1
$L229:
	lb	$4,0($22)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L230
	li	$3,43			# 0x2b

	lb	$2,0($22)
	nop
	beq	$2,$3,$L236
	li	$3,45			# 0x2d

	bne	$2,$3,$L237
	nop

	.option	pic0
	b	$L231
	.option	pic2
	li	$6,1			# 0x1

$L236:
	move	$6,$0
$L231:
	.option	pic0
	b	$L232
	.option	pic2
	addiu	$22,$22,1

$L237:
	move	$6,$0
$L232:
	move	$9,$0
	.option	pic0
	b	$L233
	.option	pic2
	move	$8,$0

$L234:
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
$L233:
	lb	$4,0($22)
	nop
	addiu	$4,$4,-48
	sltu	$4,$4,10
	bne	$4,$0,$L234
	srl	$4,$9,30

	bne	$6,$0,$L238
	subu	$5,$0,$9

	sltu	$3,$0,$5
	subu	$4,$0,$8
	subu	$4,$4,$3
	move	$3,$5
	.option	pic0
	b	$L235
	.option	pic2
	move	$2,$4

$L238:
	move	$3,$9
	move	$2,$8
$L235:
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
	move	$20,$4
	move	$19,$5
	move	$16,$6
	.option	pic0
	b	$L240
	.option	pic2
	move	$18,$7

$L244:
	srl	$2,$16,1
	mult	$2,$18
	mflo	$17
	addu	$17,$19,$17
	move	$5,$17
	move	$4,$20
	lw	$25,72($fp)
	nop
	jalr	$25
	nop

	bgez	$2,$L241
	nop

	.option	pic0
	b	$L240
	.option	pic2
	srl	$16,$16,1

$L241:
	blez	$2,$L245
	addu	$19,$17,$18

	srl	$2,$16,1
	addiu	$16,$16,-1
	subu	$16,$16,$2
$L240:
	bne	$16,$0,$L244
	move	$2,$0

	.option	pic0
	b	$L243
	nop

	.option	pic2
$L245:
	move	$2,$17
$L243:
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
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.set	nomips16
	.set	nomicromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
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
	move	$20,$4
	move	$19,$7
	move	$17,$6
	.option	pic0
	b	$L247
	.option	pic2
	move	$18,$5

$L250:
	sra	$2,$17,1
	mult	$2,$19
	mflo	$16
	addu	$16,$18,$16
	lw	$6,76($fp)
	move	$5,$16
	move	$4,$20
	lw	$25,72($fp)
	nop
	jalr	$25
	nop

	beq	$2,$0,$L251
	nop

	blez	$2,$L249
	nop

	addu	$18,$16,$19
	addiu	$17,$17,-1
$L249:
	sra	$17,$17,1
$L247:
	bne	$17,$0,$L250
	move	$2,$0

	.option	pic0
	b	$L248
	nop

	.option	pic2
$L251:
	move	$2,$16
$L248:
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
	move	$7,$5
	bgez	$4,$L254
	move	$6,$4

	subu	$5,$0,$7
	sltu	$3,$0,$5
	subu	$4,$0,$6
	subu	$4,$4,$3
	move	$7,$5
	move	$6,$4
$L254:
	move	$3,$7
	move	$2,$6
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
	bgez	$4,$L258
	move	$2,$4

	subu	$2,$0,$4
$L258:
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
	move	$7,$5
	bgez	$4,$L261
	move	$6,$4

	subu	$5,$0,$7
	sltu	$3,$0,$5
	subu	$4,$0,$6
	subu	$4,$4,$3
	move	$7,$5
	move	$6,$4
$L261:
	move	$3,$7
	move	$2,$6
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
	b	$L265
	.option	pic2
	move	$fp,$sp

$L267:
	addiu	$4,$4,4
$L265:
	lw	$2,0($4)
	nop
	beq	$2,$0,$L270
	nop

	bne	$5,$2,$L267
	nop

$L270:
	bne	$2,$0,$L268
	move	$2,$4

	move	$2,$0
$L268:
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
	b	$L272
	.option	pic2
	move	$fp,$sp

$L274:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L272:
	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L273
	nop

	beq	$3,$0,$L273
	nop

	bne	$2,$0,$L274
	nop

$L273:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L276
	nop

	lw	$2,0($4)
	.option	pic0
	b	$L275
	.option	pic2
	slt	$2,$3,$2

$L276:
	li	$2,-1			# 0xffffffffffffffff
$L275:
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
$L278:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$4,-4($5)
	nop
	bne	$4,$0,$L278
	sw	$4,-4($3)

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
	b	$L280
	.option	pic2
	move	$2,$4

$L281:
	addiu	$2,$2,4
$L280:
	lw	$3,0($2)
	nop
	bne	$3,$0,$L281
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
	b	$L283
	.option	pic2
	move	$fp,$sp

$L285:
	addiu	$6,$6,-1
	addiu	$4,$4,4
	addiu	$5,$5,4
$L283:
	beq	$6,$0,$L289
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L284
	nop

	beq	$3,$0,$L284
	nop

	bne	$2,$0,$L285
	nop

$L284:
	beq	$6,$0,$L289
	move	$2,$0

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L288
	nop

	lw	$2,0($4)
	.option	pic0
	b	$L286
	.option	pic2
	slt	$2,$3,$2

$L288:
	li	$2,-1			# 0xffffffffffffffff
$L286:
$L289:
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
	b	$L291
	.option	pic2
	move	$fp,$sp

$L293:
	addiu	$6,$6,-1
	addiu	$4,$4,4
$L291:
	beq	$6,$0,$L292
	nop

	lw	$2,0($4)
	nop
	bne	$5,$2,$L293
	nop

$L292:
	bne	$6,$0,$L294
	move	$2,$4

	move	$2,$0
$L294:
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
	b	$L297
	.option	pic2
	move	$fp,$sp

$L299:
	addiu	$6,$6,-1
	addiu	$4,$4,4
	addiu	$5,$5,4
$L297:
	beq	$6,$0,$L303
	move	$2,$0

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	beq	$3,$2,$L299
	nop

	beq	$6,$0,$L303
	move	$2,$0

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L302
	nop

	lw	$2,0($4)
	.option	pic0
	b	$L300
	.option	pic2
	slt	$2,$3,$2

$L302:
	li	$2,-1			# 0xffffffffffffffff
$L300:
$L303:
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
	b	$L305
	.option	pic2
	move	$3,$4

$L306:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$4,-4($5)
	nop
	sw	$4,-4($3)
$L305:
	addiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,$L306
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
	beq	$4,$5,$L308
	move	$2,$4

	subu	$3,$4,$5
	sll	$4,$6,2
	sltu	$3,$3,$4
	beq	$3,$0,$L313
	addiu	$3,$2,-4

	addu	$5,$5,$4
	.option	pic0
	b	$L310
	.option	pic2
	addu	$6,$2,$4

$L311:
	lw	$4,0($5)
	nop
	sw	$4,0($6)
$L310:
	addiu	$6,$6,-4
	bne	$6,$3,$L311
	addiu	$5,$5,-4

	.option	pic0
	b	$L308
	nop

	.option	pic2
$L312:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$4,-4($5)
	.option	pic0
	b	$L309
	.option	pic2
	sw	$4,-4($3)

$L313:
	move	$3,$2
$L309:
	addiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,$L312
	nop

$L308:
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
	b	$L315
	.option	pic2
	move	$3,$4

$L316:
	addiu	$3,$3,4
	sw	$5,-4($3)
$L315:
	addiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,$L316
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
	beq	$2,$0,$L318
	move	$fp,$sp

	addu	$2,$4,$6
	.option	pic0
	b	$L319
	.option	pic2
	addu	$5,$5,$6

$L320:
	addiu	$2,$2,-1
	addiu	$5,$5,-1
	lb	$3,0($2)
	nop
	sb	$3,0($5)
$L319:
	bne	$2,$4,$L320
	nop

	.option	pic0
	b	$L317
	nop

	.option	pic2
$L318:
	beq	$4,$5,$L317
	nop

	addu	$6,$5,$6
	.option	pic0
	b	$L322
	.option	pic2
	move	$2,$4

$L323:
	addiu	$2,$2,1
	addiu	$5,$5,1
	lb	$3,-1($2)
	nop
	sb	$3,-1($5)
$L322:
	bne	$5,$6,$L323
	nop

$L317:
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
	beq	$2,$0,$L325
	move	$fp,$sp

	sll	$8,$5,$6
	.option	pic0
	b	$L326
	.option	pic2
	move	$9,$0

$L325:
	srl	$2,$5,1
	nor	$3,$0,$6
	srl	$2,$2,$3
	sll	$8,$4,$6
	or	$8,$2,$8
	sll	$9,$5,$6
$L326:
	subu	$2,$0,$6
	andi	$2,$2,0x20
	beq	$2,$0,$L327
	move	$10,$0

	subu	$6,$0,$6
	.option	pic0
	b	$L328
	.option	pic2
	srl	$11,$4,$6

$L327:
	sll	$2,$4,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$11,$5,$6
	or	$11,$2,$11
	srl	$10,$4,$6
$L328:
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
	beq	$2,$0,$L330
	move	$fp,$sp

	srl	$9,$4,$6
	.option	pic0
	b	$L331
	.option	pic2
	move	$8,$0

$L330:
	sll	$2,$4,1
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$9,$5,$6
	or	$9,$2,$9
	srl	$8,$4,$6
$L331:
	subu	$2,$0,$6
	andi	$2,$2,0x20
	beq	$2,$0,$L332
	move	$11,$0

	subu	$6,$0,$6
	.option	pic0
	b	$L333
	.option	pic2
	sll	$10,$5,$6

$L332:
	srl	$2,$5,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$3,$0,$6
	srl	$2,$2,$3
	sll	$10,$4,$6
	or	$10,$2,$10
	sll	$11,$5,$6
$L333:
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
	b	$L346
	.option	pic2
	move	$2,$0

$L349:
	andi	$3,$3,0x1
	beq	$3,$0,$L347
	nop

	.option	pic0
	b	$L348
	.option	pic2
	addiu	$2,$2,1

$L347:
	addiu	$2,$2,1
$L346:
	li	$3,32			# 0x20
	bne	$2,$3,$L349
	srl	$3,$4,$2

	move	$2,$0
$L348:
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
	beq	$4,$0,$L354
	move	$fp,$sp

	.option	pic0
	b	$L352
	.option	pic2
	li	$2,1			# 0x1

$L353:
	sra	$4,$4,1
	addiu	$2,$2,1
$L352:
	andi	$3,$4,0x1
	beq	$3,$0,$L353
	nop

	.option	pic0
	b	$L351
	nop

	.option	pic2
$L354:
	move	$2,$0
$L351:
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
	bc1t	$L358
	move	$fp,$sp

	lui	$2,%hi($LC1)
	lwc1	$f0,%lo($LC1)($2)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1f	$L361
	li	$2,1			# 0x1

	.option	pic0
	b	$L356
	nop

	.option	pic2
$L358:
	.option	pic0
	b	$L356
	.option	pic2
	li	$2,1			# 0x1

$L361:
	move	$2,$0
$L356:
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
	bc1t	$L365
	move	$fp,$sp

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L368
	li	$2,1			# 0x1

	.option	pic0
	b	$L363
	nop

	.option	pic2
$L365:
	.option	pic0
	b	$L363
	.option	pic2
	li	$2,1			# 0x1

$L368:
	move	$2,$0
$L363:
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
	bc1t	$L372
	move	$fp,$sp

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L375
	li	$2,1			# 0x1

	.option	pic0
	b	$L370
	nop

	.option	pic2
$L372:
	.option	pic0
	b	$L370
	.option	pic2
	li	$2,1			# 0x1

$L375:
	move	$2,$0
$L370:
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
	bc1t	$L378
	mov.s	$f0,$f12

	add.s	$f2,$f12,$f12
	c.eq.s	$f12,$f2
	nop
	bc1t	$L378
	nop

	bgez	$5,$L382
	lui	$2,%hi($LC4)

	lwc1	$f2,%lo($LC4)($2)
	.option	pic0
	b	$L383
	.option	pic2
	andi	$2,$5,0x1

$L382:
	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5)($2)
$L381:
	andi	$2,$5,0x1
$L383:
	beq	$2,$0,$L384
	srl	$2,$5,31

	mul.s	$f0,$f0,$f2
$L384:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L378
	nop

	.option	pic0
	b	$L381
	.option	pic2
	mul.s	$f2,$f2,$f2

$L378:
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
	bc1t	$L386
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L386
	nop

	bgez	$6,$L390
	lui	$2,%hi($LC6)

	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L391
	.option	pic2
	andi	$2,$6,0x1

$L390:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
$L389:
	andi	$2,$6,0x1
$L391:
	beq	$2,$0,$L392
	srl	$2,$6,31

	mul.d	$f0,$f0,$f2
$L392:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L386
	nop

	.option	pic0
	b	$L389
	.option	pic2
	mul.d	$f2,$f2,$f2

$L386:
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
	b	$L402
	.option	pic2
	move	$3,$4

$L403:
	addiu	$5,$5,1
	lb	$7,-1($5)
	addiu	$3,$3,1
	lb	$4,-1($3)
	nop
	xor	$4,$4,$7
	sb	$4,-1($3)
$L402:
	bne	$3,$6,$L403
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
	b	$L405
	.option	pic2
	addu	$2,$18,$2

$L407:
	addiu	$2,$2,1
	addiu	$16,$16,-1
$L405:
	beq	$16,$0,$L406
	nop

	lb	$3,0($17)
	nop
	sb	$3,0($2)
	sll	$3,$3,24
	sra	$3,$3,24
	bne	$3,$0,$L407
	addiu	$17,$17,1

$L406:
	bne	$16,$0,$L408
	nop

	sb	$0,0($2)
$L408:
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
	b	$L410
	.option	pic2
	move	$2,$0

$L412:
	addiu	$2,$2,1
$L410:
	beq	$2,$5,$L411
	addu	$3,$4,$2

	lb	$3,0($3)
	nop
	bne	$3,$0,$L412
	nop

$L411:
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
	b	$L414
	.option	pic2
	move	$fp,$sp

$L416:
	lb	$6,-1($2)
	lb	$3,0($4)
	nop
	beq	$6,$3,$L418
	nop

	.option	pic0
	b	$L417
	nop

	.option	pic2
$L419:
	move	$2,$5
$L417:
	lb	$3,0($2)
	nop
	bne	$3,$0,$L416
	addiu	$2,$2,1

	addiu	$4,$4,1
$L414:
	lb	$2,0($4)
	nop
	bne	$2,$0,$L419
	nop

	.option	pic0
	b	$L415
	nop

	.option	pic2
$L418:
	move	$2,$4
$L415:
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
$L422:
	lb	$3,0($4)
	nop
	bne	$5,$3,$L421
	nop

	move	$2,$4
$L421:
	addiu	$4,$4,1
	lb	$3,-1($4)
	nop
	bne	$3,$0,$L422
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
	beq	$2,$0,$L428
	move	$18,$2

	lb	$19,0($17)
	.option	pic0
	b	$L430
	.option	pic2
	move	$5,$19

$L427:
	move	$6,$18
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	beq	$2,$0,$L429
	move	$5,$19

	addiu	$16,$16,1
$L430:
	move	$4,$16
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	bne	$2,$0,$L427
	move	$16,$2

	.option	pic0
	b	$L425
	.option	pic2
	move	$2,$0

$L428:
	.option	pic0
	b	$L425
	.option	pic2
	move	$2,$16

$L429:
	move	$2,$16
$L425:
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
	bc1f	$L432
	swc1	$f13,24($fp)

	c.lt.d	$f0,$f14
	nop
	bc1t	$L434
	nop

$L432:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L442
	nop

	c.lt.d	$f14,$f0
	nop
	bc1f	$L443
	nop

$L434:
	sw	$0,12($fp)
	sw	$0,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	lw	$3,24($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,28($fp)
	.option	pic0
	b	$L435
	.option	pic2
	sw	$2,12($fp)

$L442:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	swc1	$f0,12($fp)
	.option	pic0
	b	$L435
	.option	pic2
	swc1	$f1,8($fp)

$L443:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
$L435:
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
	move	$18,$6
	move	$17,$7
	subu	$19,$5,$7
	beq	$7,$0,$L449
	addu	$19,$4,$19

	sltu	$5,$5,$7
	bne	$5,$0,$L450
	sltu	$2,$19,$16

	.option	pic0
	b	$L452
	nop

	.option	pic2
$L448:
	lb	$3,0($16)
	lb	$2,0($18)
	nop
	bne	$3,$2,$L447
	addiu	$6,$17,-1

	addiu	$5,$18,1
	addiu	$4,$16,1
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	beq	$2,$0,$L451
	move	$2,$16

$L447:
	addiu	$16,$16,1
	sltu	$2,$19,$16
$L452:
	beq	$2,$0,$L448
	move	$2,$0

	.option	pic0
	b	$L445
	nop

	.option	pic2
$L449:
	.option	pic0
	b	$L445
	.option	pic2
	move	$2,$4

$L450:
	move	$2,$0
$L451:
$L445:
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
	mfc1	$3,$f12
	mfc1	$2,$f13
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	mtc1	$3,$f2
	nop
	mtc1	$2,$f3
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L471
	move	$fp,$sp

	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	xor	$4,$2,$4
	sw	$4,8($fp)
	sw	$3,12($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	.option	pic0
	b	$L455
	.option	pic2
	li	$5,1			# 0x1

$L471:
	move	$5,$0
$L455:
	lui	$4,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($4)
	nop
	lwc1	$f1,%lo($LC8)($4)
	mtc1	$3,$f2
	nop
	mtc1	$2,$f3
	nop
	c.le.d	$f0,$f2
	nop
	bc1t	$L466
	lui	$4,%hi($LC6)

	.option	pic0
	b	$L472
	nop

	.option	pic2
$L459:
	lwc1	$f0,%lo($LC6+4)($7)
	nop
	lwc1	$f1,%lo($LC6)($7)
	mtc1	$3,$f2
	nop
	mtc1	$2,$f3
	nop
	mul.d	$f0,$f2,$f0
	mfc1	$3,$f0
	mfc1	$2,$f1
	.option	pic0
	b	$L457
	.option	pic2
	addiu	$4,$4,1

$L466:
	move	$4,$0
$L457:
	lui	$7,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($7)
	nop
	lwc1	$f1,%lo($LC8)($7)
	mtc1	$3,$f2
	nop
	mtc1	$2,$f3
	nop
	c.le.d	$f0,$f2
	nop
	bc1t	$L459
	lui	$7,%hi($LC6)

	.option	pic0
	b	$L474
	.option	pic2
	sw	$4,0($6)

$L472:
	lwc1	$f0,%lo($LC6+4)($4)
	nop
	lwc1	$f1,%lo($LC6)($4)
	mtc1	$3,$f2
	nop
	mtc1	$2,$f3
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L473
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.eq.d	$f2,$f0
	nop
	bc1f	$L468
	move	$4,$0

	.option	pic0
	b	$L474
	.option	pic2
	sw	$4,0($6)

$L463:
	mtc1	$3,$f0
	nop
	mtc1	$2,$f1
	nop
	add.d	$f0,$f0,$f0
	mfc1	$3,$f0
	mfc1	$2,$f1
	addiu	$4,$4,-1
$L468:
	lui	$7,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($7)
	nop
	lwc1	$f1,%lo($LC6)($7)
	mtc1	$3,$f2
	nop
	mtc1	$2,$f3
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L463
	nop

	.option	pic0
	b	$L474
	.option	pic2
	sw	$4,0($6)

$L473:
	move	$4,$0
	sw	$4,0($6)
$L474:
	beq	$5,$0,$L464
	li	$4,-2147483648			# 0xffffffff80000000

	sw	$0,12($fp)
	sw	$0,8($fp)
	xor	$4,$2,$4
	sw	$4,8($fp)
	sw	$3,12($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
$L464:
	mtc1	$3,$f0
	nop
	mtc1	$2,$f1
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
	b	$L476
	.option	pic2
	move	$24,$0

$L479:
	move	$14,$0
	andi	$15,$5,0x1
	or	$8,$14,$15
	beq	$8,$0,$L477
	addu	$9,$25,$7

	sltu	$3,$9,$25
	addu	$8,$24,$6
	addu	$8,$3,$8
	move	$25,$9
	move	$24,$8
$L477:
	srl	$8,$7,31
	sll	$10,$6,1
	or	$10,$8,$10
	sll	$11,$7,1
	move	$7,$11
	move	$6,$10
	sll	$8,$4,31
	srl	$13,$5,1
	or	$13,$8,$13
	srl	$12,$4,1
	move	$5,$13
	move	$4,$12
$L476:
	or	$8,$4,$5
	bne	$8,$0,$L479
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
	li	$3,33			# 0x21
	.option	pic0
	b	$L481
	.option	pic2
	li	$2,1			# 0x1

$L483:
	sll	$5,$5,1
	sll	$2,$2,1
$L481:
	sltu	$7,$5,$4
	beq	$7,$0,$L488
	nop

	addiu	$3,$3,-1
	beq	$3,$0,$L489
	nop

	bgez	$5,$L483
	nop

	.option	pic0
	b	$L485
	.option	pic2
	move	$3,$0

$L486:
	bne	$7,$0,$L484
	nop

	subu	$4,$4,$5
	or	$3,$3,$2
$L484:
	srl	$2,$2,1
	.option	pic0
	b	$L485
	.option	pic2
	srl	$5,$5,1

$L488:
	.option	pic0
	b	$L485
	.option	pic2
	move	$3,$0

$L489:
	move	$3,$0
$L485:
	bne	$2,$0,$L486
	sltu	$7,$4,$5

	beq	$6,$0,$L487
	move	$2,$3

	move	$2,$4
$L487:
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
	bgez	$4,$L492
	.cprestore	16

	nor	$4,$0,$4
$L492:
	beq	$4,$0,$L494
	sll	$4,$4,8

	lw	$25,%call16(__clzsi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L493
	.option	pic2
	addiu	$2,$2,-1

$L494:
	li	$2,7			# 0x7
$L493:
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
	bgez	$4,$L496
	.cprestore	16

	nor	$2,$0,$4
	nor	$3,$0,$5
	move	$5,$3
	move	$4,$2
$L496:
	or	$2,$4,$5
	beq	$2,$0,$L500
	nop

	lw	$25,%call16(__clzdi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L498
	.option	pic2
	addiu	$2,$2,-1

$L500:
	li	$2,63			# 0x3f
$L498:
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
	b	$L502
	.option	pic2
	move	$2,$0

$L504:
	beq	$3,$0,$L503
	nop

	addu	$2,$2,$5
$L503:
	srl	$4,$4,1
	sll	$5,$5,1
$L502:
	bne	$4,$0,$L504
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
	srl	$3,$6,3
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$7,$4,$5
	bne	$7,$0,$L506
	and	$2,$6,$2

	addu	$7,$5,$6
	sltu	$7,$7,$4
	beq	$7,$0,$L507
	nop

$L506:
	move	$7,$5
	move	$10,$4
	sll	$3,$3,3
	.option	pic0
	b	$L508
	.option	pic2
	addu	$3,$3,$5

$L509:
	lw	$9,4($7)
	lw	$8,0($7)
	sw	$9,4($10)
	sw	$8,0($10)
	addiu	$7,$7,8
	addiu	$10,$10,8
$L508:
	bne	$7,$3,$L509
	nop

	.option	pic0
	b	$L514
	.option	pic2
	sltu	$3,$2,$6

$L511:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L514:
	bne	$3,$0,$L511
	addu	$3,$5,$2

	.option	pic0
	b	$L505
	nop

	.option	pic2
$L513:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L507:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,$L513
	addu	$2,$5,$6

$L505:
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
	sltu	$3,$4,$5
	bne	$3,$0,$L516
	srl	$2,$6,1

	addu	$3,$5,$6
	sltu	$3,$3,$4
	beq	$3,$0,$L517
	nop

$L516:
	move	$3,$5
	move	$7,$4
	sll	$2,$2,1
	.option	pic0
	b	$L518
	.option	pic2
	addu	$2,$2,$5

$L519:
	lh	$8,0($3)
	nop
	sh	$8,0($7)
	addiu	$3,$3,2
	addiu	$7,$7,2
$L518:
	bne	$3,$2,$L519
	nop

	andi	$2,$6,0x1
	beq	$2,$0,$L515
	nop

	addiu	$6,$6,-1
	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	.option	pic0
	b	$L515
	.option	pic2
	sb	$2,0($4)

$L521:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L517:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,$L521
	addu	$2,$5,$6

$L515:
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
	srl	$3,$6,2
	li	$2,-4			# 0xfffffffffffffffc
	sltu	$7,$4,$5
	bne	$7,$0,$L523
	and	$2,$6,$2

	addu	$7,$5,$6
	sltu	$7,$7,$4
	beq	$7,$0,$L524
	nop

$L523:
	move	$7,$5
	move	$8,$4
	sll	$3,$3,2
	.option	pic0
	b	$L525
	.option	pic2
	addu	$3,$3,$5

$L526:
	lw	$9,0($7)
	nop
	sw	$9,0($8)
	addiu	$7,$7,4
	addiu	$8,$8,4
$L525:
	bne	$7,$3,$L526
	nop

	.option	pic0
	b	$L531
	.option	pic2
	sltu	$3,$2,$6

$L528:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L531:
	bne	$3,$0,$L528
	addu	$3,$5,$2

	.option	pic0
	b	$L522
	nop

	.option	pic2
$L530:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L524:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,$L530
	addu	$2,$5,$6

$L522:
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
	bgez	$4,$L534
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L534:
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
	bgez	$4,$L536
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L536:
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
	b	$L541
	.option	pic2
	move	$2,$0

$L543:
	subu	$3,$3,$2
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,$L542
	nop

	addiu	$2,$2,1
$L541:
	li	$3,16			# 0x10
	bne	$2,$3,$L543
	li	$3,15			# 0xf

$L542:
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
	b	$L545
	.option	pic2
	move	$2,$0

$L547:
	andi	$3,$3,0x1
	bne	$3,$0,$L546
	nop

	addiu	$2,$2,1
$L545:
	li	$3,16			# 0x10
	bne	$2,$3,$L547
	sra	$3,$4,$2

$L546:
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
	bc1f	$L553
	move	$fp,$sp

	sub.s	$f12,$f12,$f0
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	li	$3,32768			# 0x8000
	.option	pic0
	b	$L551
	.option	pic2
	addu	$2,$2,$3

$L553:
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
$L551:
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
	b	$L555
	.option	pic2
	move	$3,$0

$L557:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beq	$5,$0,$L556
	nop

	addiu	$2,$2,1
$L556:
	addiu	$3,$3,1
$L555:
	li	$5,16			# 0x10
	bne	$3,$5,$L557
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
	b	$L559
	.option	pic2
	move	$3,$0

$L561:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beq	$5,$0,$L560
	nop

	addiu	$2,$2,1
$L560:
	addiu	$3,$3,1
$L559:
	li	$5,16			# 0x10
	bne	$3,$5,$L561
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
	b	$L563
	.option	pic2
	move	$2,$0

$L565:
	beq	$3,$0,$L564
	nop

	addu	$2,$2,$5
$L564:
	srl	$4,$4,1
	sll	$5,$5,1
$L563:
	bne	$4,$0,$L565
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
	beq	$4,$0,$L571
	move	$fp,$sp

	.option	pic0
	b	$L568
	.option	pic2
	move	$2,$0

$L570:
	beq	$3,$0,$L569
	nop

	addu	$2,$2,$4
$L569:
	sll	$4,$4,1
	srl	$5,$5,1
$L568:
	bne	$5,$0,$L570
	andi	$3,$5,0x1

	.option	pic0
	b	$L567
	nop

	.option	pic2
$L571:
	move	$2,$0
$L567:
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
	li	$3,33			# 0x21
	.option	pic0
	b	$L573
	.option	pic2
	li	$2,1			# 0x1

$L575:
	sll	$5,$5,1
	sll	$2,$2,1
$L573:
	sltu	$7,$5,$4
	beq	$7,$0,$L580
	nop

	addiu	$3,$3,-1
	beq	$3,$0,$L581
	nop

	bgez	$5,$L575
	nop

	.option	pic0
	b	$L577
	.option	pic2
	move	$3,$0

$L578:
	bne	$7,$0,$L576
	nop

	subu	$4,$4,$5
	or	$3,$3,$2
$L576:
	srl	$2,$2,1
	.option	pic0
	b	$L577
	.option	pic2
	srl	$5,$5,1

$L580:
	.option	pic0
	b	$L577
	.option	pic2
	move	$3,$0

$L581:
	move	$3,$0
$L577:
	bne	$2,$0,$L578
	sltu	$7,$4,$5

	beq	$6,$0,$L579
	move	$2,$3

	move	$2,$4
$L579:
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
	bc1t	$L585
	move	$fp,$sp

	c.lt.s	$f14,$f12
	nop
	bc1t	$L586
	move	$2,$0

	.option	pic0
	b	$L584
	nop

	.option	pic2
$L585:
	.option	pic0
	b	$L584
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L586:
	li	$2,1			# 0x1
$L584:
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
	bc1t	$L589
	move	$fp,$sp

	c.lt.d	$f14,$f12
	nop
	bc1t	$L590
	move	$2,$0

	.option	pic0
	b	$L588
	nop

	.option	pic2
$L589:
	.option	pic0
	b	$L588
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L590:
	li	$2,1			# 0x1
$L588:
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
	bgez	$5,$L600
	move	$fp,$sp

	subu	$5,$0,$5
	.option	pic0
	b	$L594
	.option	pic2
	li	$6,1			# 0x1

$L600:
	move	$6,$0
$L594:
	li	$3,33			# 0x21
	.option	pic0
	b	$L595
	.option	pic2
	move	$2,$0

$L598:
	beq	$7,$0,$L596
	nop

	addu	$2,$2,$4
$L596:
	sll	$4,$4,1
	sra	$5,$5,1
$L595:
	beq	$5,$0,$L597
	nop

	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	bne	$3,$0,$L598
	andi	$7,$5,0x1

$L597:
	beq	$6,$0,$L599
	nop

	subu	$2,$0,$2
$L599:
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
	bgez	$4,$L606
	move	$fp,$sp

	subu	$4,$0,$4
	.option	pic0
	b	$L603
	.option	pic2
	li	$16,1			# 0x1

$L606:
	move	$16,$0
$L603:
	bgez	$5,$L607
	move	$6,$0

	subu	$5,$0,$5
	sltu	$16,$16,1
$L607:
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L605
	nop

	subu	$2,$0,$2
$L605:
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
	bgez	$4,$L612
	move	$fp,$sp

	subu	$4,$0,$4
	.option	pic0
	b	$L609
	.option	pic2
	li	$16,1			# 0x1

$L612:
	move	$16,$0
$L609:
	bgez	$5,$L613
	li	$6,1			# 0x1

	subu	$5,$0,$5
$L613:
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L611
	nop

	subu	$2,$0,$2
$L611:
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
	li	$3,17			# 0x11
	.option	pic0
	b	$L615
	.option	pic2
	li	$2,1			# 0x1

$L617:
	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$2,$2,1
	andi	$2,$2,0xffff
$L615:
	sltu	$7,$5,$4
	beq	$7,$0,$L622
	nop

	addiu	$3,$3,-1
	beq	$3,$0,$L623
	sll	$7,$5,16

	sra	$7,$7,16
	bgez	$7,$L617
	nop

	.option	pic0
	b	$L619
	.option	pic2
	move	$3,$0

$L620:
	bne	$7,$0,$L618
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$3,$3,$2
$L618:
	srl	$2,$2,1
	.option	pic0
	b	$L619
	.option	pic2
	srl	$5,$5,1

$L622:
	.option	pic0
	b	$L619
	.option	pic2
	move	$3,$0

$L623:
	move	$3,$0
$L619:
	bne	$2,$0,$L620
	sltu	$7,$4,$5

	beq	$6,$0,$L621
	move	$2,$3

	move	$2,$4
$L621:
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
	li	$3,33			# 0x21
	.option	pic0
	b	$L626
	.option	pic2
	li	$2,1			# 0x1

$L628:
	sll	$5,$5,1
	sll	$2,$2,1
$L626:
	sltu	$7,$5,$4
	beq	$7,$0,$L633
	nop

	addiu	$3,$3,-1
	beq	$3,$0,$L634
	nop

	bgez	$5,$L628
	nop

	.option	pic0
	b	$L630
	.option	pic2
	move	$3,$0

$L631:
	bne	$7,$0,$L629
	nop

	subu	$4,$4,$5
	or	$3,$3,$2
$L629:
	srl	$2,$2,1
	.option	pic0
	b	$L630
	.option	pic2
	srl	$5,$5,1

$L633:
	.option	pic0
	b	$L630
	.option	pic2
	move	$3,$0

$L634:
	move	$3,$0
$L630:
	bne	$2,$0,$L631
	sltu	$7,$4,$5

	beq	$6,$0,$L632
	move	$2,$3

	move	$2,$4
$L632:
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
	move	$fp,$sp
	move	$3,$5
	andi	$7,$6,0x20
	beq	$7,$0,$L637
	move	$2,$4

	move	$3,$0
	.option	pic0
	b	$L639
	.option	pic2
	sll	$2,$5,$6

$L637:
	beq	$6,$0,$L639
	sll	$4,$4,$6

	sll	$3,$5,$6
	subu	$6,$0,$6
	srl	$5,$5,$6
	or	$2,$5,$4
$L639:
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
	move	$fp,$sp
	move	$3,$5
	andi	$7,$6,0x20
	beq	$7,$0,$L642
	move	$2,$4

	sra	$2,$4,31
	.option	pic0
	b	$L644
	.option	pic2
	sra	$3,$4,$6

$L642:
	beq	$6,$0,$L644
	subu	$7,$0,$6

	sra	$2,$4,$6
	sll	$4,$4,$7
	srl	$6,$5,$6
	or	$3,$4,$6
$L644:
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
	beq	$2,$0,$L653
	move	$fp,$sp

	.option	pic0
	b	$L649
	.option	pic2
	li	$3,16			# 0x10

$L653:
	move	$3,$0
$L649:
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	beq	$2,$0,$L650
	li	$2,8			# 0x8

	move	$2,$0
$L650:
	li	$5,8			# 0x8
	subu	$5,$5,$2
	srl	$4,$4,$5
	addu	$3,$3,$2
	andi	$2,$4,0xf0
	beq	$2,$0,$L651
	li	$2,4			# 0x4

	move	$2,$0
$L651:
	li	$5,4			# 0x4
	subu	$5,$5,$2
	srl	$4,$4,$5
	addu	$3,$3,$2
	andi	$2,$4,0xc
	beq	$2,$0,$L652
	li	$5,2			# 0x2

	move	$5,$0
$L652:
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
	bne	$2,$0,$L659
	move	$fp,$sp

	slt	$2,$6,$4
	bne	$2,$0,$L663
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bne	$2,$0,$L663
	move	$2,$0

	sltu	$2,$7,$5
	bne	$2,$0,$L662
	li	$2,1			# 0x1

	.option	pic0
	b	$L658
	nop

	.option	pic2
$L659:
	.option	pic0
	b	$L658
	.option	pic2
	move	$2,$0

	.option	pic0
	b	$L658
	.option	pic2
	move	$2,$0

$L662:
	li	$2,2			# 0x2
$L658:
$L663:
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
	bne	$2,$0,$L670
	move	$fp,$sp

	.option	pic0
	b	$L666
	.option	pic2
	li	$3,16			# 0x10

$L670:
	move	$3,$0
$L666:
	srl	$4,$4,$3
	andi	$2,$4,0xff
	beq	$2,$0,$L667
	li	$2,8			# 0x8

	move	$2,$0
$L667:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0xf
	beq	$2,$0,$L668
	li	$2,4			# 0x4

	move	$2,$0
$L668:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	beq	$2,$0,$L669
	li	$2,2			# 0x2

	move	$2,$0
$L669:
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
	move	$fp,$sp
	move	$3,$5
	andi	$7,$6,0x20
	beq	$7,$0,$L675
	move	$2,$4

	move	$2,$0
	.option	pic0
	b	$L677
	.option	pic2
	srl	$3,$4,$6

$L675:
	beq	$6,$0,$L677
	subu	$7,$0,$6

	srl	$2,$4,$6
	sll	$4,$4,$7
	srl	$6,$5,$6
	or	$3,$4,$6
$L677:
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
	move	$19,$5
	move	$18,$4
	move	$17,$7
	move	$16,$6
	move	$5,$7
	move	$4,$19
	.option	pic0
	jal	__muldsi3
	nop

	.option	pic2
	move	$4,$2
	move	$7,$3
	mult	$17,$18
	mflo	$3
	nop
	nop
	mult	$19,$16
	mflo	$2
	addu	$3,$3,$2
	addu	$6,$3,$4
	move	$3,$7
	move	$2,$6
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
	srl	$2,$6,31
	lui	$3,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($3)
	nop
	lwc1	$f1,%lo($LC8)($3)
$L689:
	andi	$3,$6,0x1
	beq	$3,$0,$L692
	srl	$3,$6,31

	mul.d	$f0,$f0,$f12
$L692:
	addu	$6,$3,$6
	sra	$6,$6,1
	beq	$6,$0,$L688
	nop

	.option	pic0
	b	$L689
	.option	pic2
	mul.d	$f12,$f12,$f12

$L688:
	beq	$2,$0,$L690
	lui	$2,%hi($LC8)

	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	div.d	$f0,$f2,$f0
$L690:
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
	srl	$2,$5,31
	lui	$3,%hi($LC11)
	lwc1	$f0,%lo($LC11)($3)
$L696:
	andi	$3,$5,0x1
	beq	$3,$0,$L699
	srl	$3,$5,31

	mul.s	$f0,$f0,$f12
$L699:
	addu	$5,$3,$5
	sra	$5,$5,1
	beq	$5,$0,$L695
	nop

	.option	pic0
	b	$L696
	.option	pic2
	mul.s	$f12,$f12,$f12

$L695:
	beq	$2,$0,$L697
	lui	$2,%hi($LC11)

	lwc1	$f2,%lo($LC11)($2)
	nop
	div.s	$f0,$f2,$f0
$L697:
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
	bne	$2,$0,$L702
	move	$fp,$sp

	sltu	$2,$6,$4
	bne	$2,$0,$L706
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bne	$2,$0,$L706
	move	$2,$0

	sltu	$2,$7,$5
	bne	$2,$0,$L705
	li	$2,1			# 0x1

	.option	pic0
	b	$L701
	nop

	.option	pic2
$L702:
	.option	pic0
	b	$L701
	.option	pic2
	move	$2,$0

	.option	pic0
	b	$L701
	.option	pic2
	move	$2,$0

$L705:
	li	$2,2			# 0x2
$L701:
$L706:
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
