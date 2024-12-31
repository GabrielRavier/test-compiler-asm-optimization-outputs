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
	move	$2,$4
	sltu	$3,$5,$4
	beq	$3,$0,$L2
	nop

	addu	$4,$5,$6
	addu	$3,$2,$6
	.option	pic0
	b	$L3
	nop

	.option	pic2
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
	move	$3,$2
	.option	pic0
	b	$L6
	nop

	.option	pic2
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
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	andi	$6,$6,0x00ff
	.option	pic0
	b	$L9
	nop

	.option	pic2
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
	beq	$7,$0,$L13
	nop

	addiu	$2,$4,1
	.option	pic0
	b	$L12
	nop

	.option	pic2
$L13:
	move	$2,$0
$L12:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L15
	nop

	.option	pic2
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
	beq	$6,$0,$L19
	nop

	move	$2,$4
	.option	pic0
	b	$L18
	nop

	.option	pic2
$L19:
	move	$2,$0
$L18:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L21
	nop

	.option	pic2
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
	nop
	subu	$2,$2,$3
	.option	pic0
	b	$L24
	nop

	.option	pic2
$L25:
	move	$2,$0
$L24:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L27
	nop

	.option	pic2
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
	addiu	$sp,$sp,8
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
	b	$L30
	nop

	.option	pic2
$L32:
	addu	$2,$4,$6
	lbu	$3,0($2)
	addiu	$2,$6,-1
	bne	$5,$3,$L33
	nop

	addu	$2,$4,$6
	.option	pic0
	b	$L31
	nop

	.option	pic2
$L33:
	move	$6,$2
$L30:
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,$L32
	nop

	move	$2,$0
$L31:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L35
	nop

	.option	pic2
$L36:
	sb	$5,0($3)
	addiu	$3,$3,1
$L35:
	bne	$3,$6,$L36
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L38
	nop

	.option	pic2
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
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	andi	$5,$5,0x00ff
	.option	pic0
	b	$L41
	nop

	.option	pic2
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
	addiu	$sp,$sp,8
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
	nop

	addiu	$4,$4,1
	lb	$2,-1($4)
	nop
	bne	$2,$0,$L46
	nop

	.option	pic0
	b	$L45
	nop

	.option	pic2
$L47:
	move	$2,$4
$L45:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L49
	nop

	.option	pic2
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
	lbu	$2,0($4)
	lbu	$3,0($5)
	nop
	subu	$2,$2,$3
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L53
	nop

	.option	pic2
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
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	beq	$6,$0,$L60
	nop

	addiu	$6,$6,-1
	addu	$6,$4,$6
	.option	pic0
	b	$L57
	nop

	.option	pic2
$L59:
	addiu	$4,$4,1
	addiu	$5,$5,1
$L57:
	lbu	$2,0($4)
	nop
	beq	$2,$0,$L58
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
	lbu	$3,0($5)
	nop
	subu	$2,$2,$3
	.option	pic0
	b	$L56
	nop

	.option	pic2
$L60:
	move	$2,$0
$L56:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L62
	nop

	.option	pic2
$L63:
	lb	$3,1($2)
	nop
	sb	$3,0($5)
	lb	$3,0($2)
	nop
	sb	$3,1($5)
	addiu	$5,$5,2
	addiu	$2,$2,2
$L62:
	addu	$3,$4,$6
	subu	$3,$3,$2
	slt	$3,$3,2
	beq	$3,$0,$L63
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$2,32			# 0x20
	beq	$4,$2,$L68
	nop

	li	$2,9			# 0x9
	bne	$4,$2,$L69
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L67
	nop

	.option	pic2
$L68:
	li	$2,1			# 0x1
	.option	pic0
	b	$L67
	nop

	.option	pic2
$L69:
	move	$2,$0
$L67:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sltu	$2,$4,32
	bne	$2,$0,$L72
	nop

	li	$2,127			# 0x7f
	bne	$4,$2,$L73
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L71
	nop

	.option	pic2
$L72:
	li	$2,1			# 0x1
	.option	pic0
	b	$L71
	nop

	.option	pic2
$L73:
	move	$2,$0
$L71:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$2,32			# 0x20
	beq	$4,$2,$L80
	nop

	addiu	$4,$4,-9
	sltu	$4,$4,5
	beq	$4,$0,$L81
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L79
	nop

	.option	pic2
$L80:
	li	$2,1			# 0x1
	.option	pic0
	b	$L79
	nop

	.option	pic2
$L81:
	move	$2,$0
$L79:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sltu	$2,$4,32
	bne	$2,$0,$L85
	nop

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,$L86
	nop

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L87
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	sltu	$4,$4,3
	beq	$4,$0,$L88
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L84
	nop

	.option	pic2
$L85:
	li	$2,1			# 0x1
	.option	pic0
	b	$L84
	nop

	.option	pic2
$L86:
	li	$2,1			# 0x1
	.option	pic0
	b	$L84
	nop

	.option	pic2
$L87:
	li	$2,1			# 0x1
	.option	pic0
	b	$L84
	nop

	.option	pic2
$L88:
	move	$2,$0
$L84:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sltu	$2,$4,255
	beq	$2,$0,$L91
	nop

	addiu	$2,$4,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	xori	$2,$2,0x1
	.option	pic0
	b	$L92
	nop

	.option	pic2
$L91:
	sltu	$2,$4,8232
	bne	$2,$0,$L93
	nop

	addiu	$2,$4,-8234
	li	$3,47062			# 0xb7d6
	sltu	$2,$2,$3
	bne	$2,$0,$L94
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$4,$2
	sltu	$2,$2,8185
	bne	$2,$0,$L95
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$4,$2
	li	$3,1048576			# 0x100000
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L96
	nop

	andi	$4,$4,0xfffe
	li	$2,65534			# 0xfffe
	beq	$4,$2,$L97
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L92
	nop

	.option	pic2
$L93:
	li	$2,1			# 0x1
	.option	pic0
	b	$L92
	nop

	.option	pic2
$L94:
	li	$2,1			# 0x1
	.option	pic0
	b	$L92
	nop

	.option	pic2
$L95:
	li	$2,1			# 0x1
	.option	pic0
	b	$L92
	nop

	.option	pic2
$L96:
	move	$2,$0
	.option	pic0
	b	$L92
	nop

	.option	pic2
$L97:
	move	$2,$0
$L92:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	bne	$2,$0,$L100
	nop

	ori	$4,$4,0x20
	addiu	$4,$4,-97
	sltu	$4,$4,6
	beq	$4,$0,$L101
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L99
	nop

	.option	pic2
$L100:
	li	$2,1			# 0x1
	.option	pic0
	b	$L99
	nop

	.option	pic2
$L101:
	move	$2,$0
$L99:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	mov.d	$f0,$f14
	c.un.d	$f12,$f12
	nop
	bc1t	$L106
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L104
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L110
	nop

	sub.d	$f0,$f12,$f14
	.option	pic0
	b	$L104
	nop

	.option	pic2
$L106:
	mov.d	$f0,$f12
	.option	pic0
	b	$L104
	nop

	.option	pic2
$L110:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
$L104:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	bc1t	$L114
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L115
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L118
	nop

	sub.s	$f0,$f12,$f14
	.option	pic0
	b	$L112
	nop

	.option	pic2
$L114:
	mov.s	$f0,$f12
	.option	pic0
	b	$L112
	nop

	.option	pic2
$L115:
	mov.s	$f0,$f14
	.option	pic0
	b	$L112
	nop

	.option	pic2
$L118:
	mtc1	$0,$f0
$L112:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	swc1	$f15,16($fp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L123
	nop

	mov.d	$f0,$f14
	c.un.d	$f14,$f14
	nop
	bc1t	$L124
	nop

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L121
	nop

	lw	$2,8($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,$L125
	nop

	.option	pic0
	b	$L120
	nop

	.option	pic2
$L121:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L128
	nop

	mov.d	$f0,$f2
	.option	pic0
	b	$L120
	nop

	.option	pic2
$L123:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L120
	nop

	.option	pic2
$L124:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L120
	nop

	.option	pic2
$L125:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L120
	nop

	.option	pic2
$L128:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
$L120:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,8($fp)
	swc1	$f14,12($fp)
	c.un.s	$f12,$f12
	nop
	bc1t	$L133
	nop

	mov.s	$f0,$f14
	c.un.s	$f14,$f14
	nop
	bc1t	$L134
	nop

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,12($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L131
	nop

	lw	$2,8($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,$L135
	nop

	.option	pic0
	b	$L130
	nop

	.option	pic2
$L131:
	lwc1	$f0,8($fp)
	lwc1	$f2,12($fp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L138
	nop

	mov.s	$f0,$f2
	.option	pic0
	b	$L130
	nop

	.option	pic2
$L133:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L130
	nop

	.option	pic2
$L134:
	lwc1	$f0,8($fp)
	.option	pic0
	b	$L130
	nop

	.option	pic2
$L135:
	lwc1	$f0,8($fp)
	.option	pic0
	b	$L130
	nop

	.option	pic2
$L138:
	lwc1	$f0,8($fp)
$L130:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	swc1	$f15,16($fp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L143
	nop

	mov.d	$f0,$f14
	c.un.d	$f14,$f14
	nop
	bc1t	$L144
	nop

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L141
	nop

	lw	$2,8($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,$L145
	nop

	.option	pic0
	b	$L140
	nop

	.option	pic2
$L141:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L148
	nop

	mov.d	$f0,$f2
	.option	pic0
	b	$L140
	nop

	.option	pic2
$L143:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L140
	nop

	.option	pic2
$L144:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L140
	nop

	.option	pic2
$L145:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L140
	nop

	.option	pic2
$L148:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
$L140:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	swc1	$f15,16($fp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L153
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L154
	nop

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L151
	nop

	lw	$2,8($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,$L155
	nop

	mov.d	$f0,$f12
	.option	pic0
	b	$L150
	nop

	.option	pic2
$L151:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L158
	nop

	.option	pic0
	b	$L150
	nop

	.option	pic2
$L153:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L150
	nop

	.option	pic2
$L154:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L150
	nop

	.option	pic2
$L155:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L150
	nop

	.option	pic2
$L158:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
$L150:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	swc1	$f12,8($fp)
	swc1	$f14,12($fp)
	c.un.s	$f12,$f12
	nop
	bc1t	$L163
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L164
	nop

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,12($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L161
	nop

	lw	$2,8($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,$L165
	nop

	mov.s	$f0,$f12
	.option	pic0
	b	$L160
	nop

	.option	pic2
$L161:
	lwc1	$f0,8($fp)
	lwc1	$f2,12($fp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L168
	nop

	.option	pic0
	b	$L160
	nop

	.option	pic2
$L163:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L160
	nop

	.option	pic2
$L164:
	lwc1	$f0,8($fp)
	.option	pic0
	b	$L160
	nop

	.option	pic2
$L165:
	lwc1	$f0,12($fp)
	.option	pic0
	b	$L160
	nop

	.option	pic2
$L168:
	lwc1	$f0,12($fp)
$L160:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	swc1	$f15,16($fp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L173
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L174
	nop

	lw	$3,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,16($fp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L171
	nop

	lw	$2,8($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,$L175
	nop

	mov.d	$f0,$f12
	.option	pic0
	b	$L170
	nop

	.option	pic2
$L171:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	lwc1	$f2,20($fp)
	nop
	lwc1	$f3,16($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L178
	nop

	.option	pic0
	b	$L170
	nop

	.option	pic2
$L173:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L170
	nop

	.option	pic2
$L174:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	.option	pic0
	b	$L170
	nop

	.option	pic2
$L175:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
	.option	pic0
	b	$L170
	nop

	.option	pic2
$L178:
	lwc1	$f0,20($fp)
	nop
	lwc1	$f1,16($fp)
$L170:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

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
	addiu	$2,$2,%lo(s.0)
	.option	pic0
	b	$L180
	nop

	.option	pic2
$L181:
	andi	$3,$4,0x3f
	lui	$5,%hi(digits)
	addiu	$5,$5,%lo(digits)
	addu	$3,$3,$5
	lb	$3,0($3)
	nop
	sb	$3,0($2)
	addiu	$2,$2,1
	srl	$4,$4,6
$L180:
	bne	$4,$0,$L181
	nop

	sb	$0,0($2)
	lui	$2,%hi(s.0)
	addiu	$2,$2,%lo(s.0)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	bne	$5,$0,$L185
	nop

	sw	$0,4($4)
	sw	$0,0($4)
	.option	pic0
	b	$L184
	nop

	.option	pic2
$L185:
	lw	$2,0($5)
	nop
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L184
	nop

	sw	$4,4($2)
$L184:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lw	$2,0($4)
	nop
	beq	$2,$0,$L188
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L188:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L187
	nop

	lw	$3,0($4)
	nop
	sw	$3,0($2)
$L187:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	move	$20,$0
	.option	pic0
	b	$L191
	nop

	.option	pic2
$L194:
	move	$5,$22
	move	$4,$18
	lw	$25,80($fp)
	nop
	jalr	$25
	nop

	lw	$28,16($fp)
	addu	$22,$22,$17
	bne	$2,$0,$L192
	nop

	mult	$20,$17
	mflo	$2
	addu	$2,$16,$2
	.option	pic0
	b	$L193
	nop

	.option	pic2
$L192:
	addiu	$20,$20,1
$L191:
	bne	$20,$21,$L194
	nop

	addiu	$2,$21,1
	sw	$2,0($19)
	mult	$17,$21
	mflo	$2
	addu	$4,$16,$2
	move	$6,$17
	move	$5,$18
	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L193:
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
	addiu	$sp,$sp,64
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
	move	$18,$0
	.option	pic0
	b	$L196
	nop

	.option	pic2
$L199:
	move	$5,$19
	move	$4,$20
	lw	$25,72($fp)
	nop
	jalr	$25
	nop

	addu	$19,$19,$17
	bne	$2,$0,$L197
	nop

	mult	$18,$17
	mflo	$2
	addu	$2,$16,$2
	.option	pic0
	b	$L198
	nop

	.option	pic2
$L197:
	addiu	$18,$18,1
$L196:
	bne	$18,$21,$L199
	nop

	move	$2,$0
$L198:
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	addiu	$sp,$sp,56
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	bgez	$4,$L201
	nop

	subu	$2,$0,$4
$L201:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	move	$16,$4
	.option	pic0
	b	$L203
	nop

	.option	pic2
$L204:
	addiu	$16,$16,1
$L203:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L204
	nop

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,$L210
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L211
	nop

	li	$4,1			# 0x1
	.option	pic0
	b	$L205
	nop

	.option	pic2
$L210:
	move	$4,$0
$L205:
	addiu	$16,$16,1
	.option	pic0
	b	$L206
	nop

	.option	pic2
$L211:
	move	$4,$0
$L206:
	move	$2,$0
	.option	pic0
	b	$L207
	nop

	.option	pic2
$L208:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$2,$3,1
	addiu	$16,$16,1
	lb	$3,-1($16)
	nop
	addiu	$3,$3,-48
	subu	$2,$2,$3
$L207:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L208
	nop

	bne	$4,$0,$L209
	nop

	subu	$2,$0,$2
$L209:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	addiu	$sp,$sp,40
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
	move	$16,$4
	.option	pic0
	b	$L214
	nop

	.option	pic2
$L215:
	addiu	$16,$16,1
$L214:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L215
	nop

	lb	$2,0($16)
	li	$3,43			# 0x2b
	beq	$2,$3,$L221
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L222
	nop

	li	$4,1			# 0x1
	.option	pic0
	b	$L216
	nop

	.option	pic2
$L221:
	move	$4,$0
$L216:
	addiu	$16,$16,1
	.option	pic0
	b	$L217
	nop

	.option	pic2
$L222:
	move	$4,$0
$L217:
	move	$2,$0
	.option	pic0
	b	$L218
	nop

	.option	pic2
$L219:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$2,$3,1
	addiu	$16,$16,1
	lb	$3,-1($16)
	nop
	addiu	$3,$3,-48
	subu	$2,$2,$3
$L218:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L219
	nop

	bne	$4,$0,$L220
	nop

	subu	$2,$0,$2
$L220:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	addiu	$sp,$sp,40
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
	move	$22,$4
	.option	pic0
	b	$L225
	nop

	.option	pic2
$L226:
	addiu	$22,$22,1
$L225:
	lb	$4,0($22)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L226
	nop

	lb	$2,0($22)
	li	$3,43			# 0x2b
	beq	$2,$3,$L232
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,$L233
	nop

	li	$6,1			# 0x1
	.option	pic0
	b	$L227
	nop

	.option	pic2
$L232:
	move	$6,$0
$L227:
	addiu	$22,$22,1
	.option	pic0
	b	$L228
	nop

	.option	pic2
$L233:
	move	$6,$0
$L228:
	move	$9,$0
	move	$8,$0
	.option	pic0
	b	$L229
	nop

	.option	pic2
$L230:
	srl	$4,$9,30
	sll	$18,$8,2
	or	$18,$4,$18
	sll	$19,$9,2
	addu	$5,$19,$9
	sltu	$3,$5,$19
	addu	$4,$18,$8
	addu	$4,$3,$4
	srl	$2,$5,31
	sll	$16,$4,1
	or	$16,$2,$16
	sll	$17,$5,1
	addiu	$22,$22,1
	lb	$2,-1($22)
	nop
	addiu	$2,$2,-48
	move	$21,$2
	sra	$20,$2,31
	subu	$3,$17,$21
	sltu	$4,$17,$3
	subu	$2,$16,$20
	subu	$2,$2,$4
	move	$9,$3
	move	$8,$2
$L229:
	lb	$4,0($22)
	nop
	addiu	$4,$4,-48
	sltu	$4,$4,10
	bne	$4,$0,$L230
	nop

	bne	$6,$0,$L234
	nop

	subu	$5,$0,$9
	sltu	$3,$0,$5
	subu	$4,$0,$8
	subu	$4,$4,$3
	move	$3,$5
	move	$2,$4
	.option	pic0
	b	$L231
	nop

	.option	pic2
$L234:
	move	$3,$9
	move	$2,$8
$L231:
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
	addiu	$sp,$sp,64
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
	move	$18,$7
	.option	pic0
	b	$L236
	nop

	.option	pic2
$L240:
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

	bgez	$2,$L237
	nop

	srl	$16,$16,1
	.option	pic0
	b	$L236
	nop

	.option	pic2
$L237:
	blez	$2,$L241
	nop

	addu	$19,$17,$18
	srl	$2,$16,1
	addiu	$16,$16,-1
	subu	$16,$16,$2
$L236:
	bne	$16,$0,$L240
	nop

	move	$2,$0
	.option	pic0
	b	$L239
	nop

	.option	pic2
$L241:
	move	$2,$17
$L239:
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	addiu	$sp,$sp,56
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
	move	$18,$5
	.option	pic0
	b	$L243
	nop

	.option	pic2
$L246:
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

	beq	$2,$0,$L247
	nop

	blez	$2,$L245
	nop

	addu	$18,$16,$19
	addiu	$17,$17,-1
$L245:
	sra	$17,$17,1
$L243:
	bne	$17,$0,$L246
	nop

	move	$2,$0
	.option	pic0
	b	$L244
	nop

	.option	pic2
$L247:
	move	$2,$16
$L244:
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	addiu	$sp,$sp,56
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	div	$0,$5,$6
	bne	$6,$0,1f
	nop
	break	7
1:
	mfhi	$5
	mflo	$3
	sw	$3,0($4)
	sw	$5,4($4)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$7,$5
	move	$6,$4
	bgez	$4,$L250
	nop

	subu	$5,$0,$7
	sltu	$3,$0,$5
	subu	$4,$0,$6
	subu	$4,$4,$3
	move	$7,$5
	move	$6,$4
$L250:
	move	$3,$7
	move	$2,$6
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,56
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	bgez	$4,$L254
	nop

	subu	$2,$0,$4
$L254:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	div	$0,$5,$6
	bne	$6,$0,1f
	nop
	break	7
1:
	mfhi	$5
	mflo	$3
	sw	$3,0($4)
	sw	$5,4($4)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$7,$5
	move	$6,$4
	bgez	$4,$L257
	nop

	subu	$5,$0,$7
	sltu	$3,$0,$5
	subu	$4,$0,$6
	subu	$4,$4,$3
	move	$7,$5
	move	$6,$4
$L257:
	move	$3,$7
	move	$2,$6
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,56
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L261
	nop

	.option	pic2
$L263:
	addiu	$4,$4,4
$L261:
	lw	$2,0($4)
	nop
	beq	$2,$0,$L262
	nop

	bne	$5,$2,$L263
	nop

$L262:
	lw	$2,0($4)
	nop
	beq	$2,$0,$L265
	nop

	move	$2,$4
	.option	pic0
	b	$L264
	nop

	.option	pic2
$L265:
	move	$2,$0
$L264:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L267
	nop

	.option	pic2
$L269:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L267:
	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L268
	nop

	beq	$3,$0,$L268
	nop

	lw	$2,0($5)
	nop
	bne	$2,$0,$L269
	nop

$L268:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L271
	nop

	lw	$2,0($4)
	nop
	slt	$2,$3,$2
	.option	pic0
	b	$L270
	nop

	.option	pic2
$L271:
	li	$2,-1			# 0xffffffffffffffff
$L270:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
$L273:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$4,-4($5)
	nop
	sw	$4,-4($3)
	bne	$4,$0,$L273
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L275
	nop

	.option	pic2
$L276:
	addiu	$2,$2,4
$L275:
	lw	$3,0($2)
	nop
	bne	$3,$0,$L276
	nop

	subu	$2,$2,$4
	sra	$2,$2,2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L278
	nop

	.option	pic2
$L280:
	addiu	$6,$6,-1
	addiu	$4,$4,4
	addiu	$5,$5,4
$L278:
	beq	$6,$0,$L279
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L279
	nop

	beq	$3,$0,$L279
	nop

	lw	$2,0($5)
	nop
	bne	$2,$0,$L280
	nop

$L279:
	beq	$6,$0,$L282
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L283
	nop

	lw	$2,0($4)
	nop
	slt	$2,$3,$2
	.option	pic0
	b	$L281
	nop

	.option	pic2
$L282:
	move	$2,$0
	.option	pic0
	b	$L281
	nop

	.option	pic2
$L283:
	li	$2,-1			# 0xffffffffffffffff
$L281:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	nop

	.option	pic2
$L287:
	addiu	$6,$6,-1
	addiu	$4,$4,4
$L285:
	beq	$6,$0,$L286
	nop

	lw	$2,0($4)
	nop
	bne	$5,$2,$L287
	nop

$L286:
	beq	$6,$0,$L289
	nop

	move	$2,$4
	.option	pic0
	b	$L288
	nop

	.option	pic2
$L289:
	move	$2,$0
$L288:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L291
	nop

	.option	pic2
$L293:
	addiu	$6,$6,-1
	addiu	$4,$4,4
	addiu	$5,$5,4
$L291:
	beq	$6,$0,$L292
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	beq	$3,$2,$L293
	nop

$L292:
	beq	$6,$0,$L295
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L296
	nop

	lw	$2,0($4)
	nop
	slt	$2,$3,$2
	.option	pic0
	b	$L294
	nop

	.option	pic2
$L295:
	move	$2,$0
	.option	pic0
	b	$L294
	nop

	.option	pic2
$L296:
	li	$2,-1			# 0xffffffffffffffff
$L294:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L298
	nop

	.option	pic2
$L299:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$4,-4($5)
	nop
	sw	$4,-4($3)
$L298:
	addiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,$L299
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	beq	$4,$5,$L301
	nop

	subu	$3,$4,$5
	sll	$4,$6,2
	sltu	$3,$3,$4
	beq	$3,$0,$L306
	nop

	addu	$5,$5,$4
	addu	$6,$2,$4
	addiu	$3,$2,-4
	.option	pic0
	b	$L303
	nop

	.option	pic2
$L304:
	lw	$4,0($5)
	nop
	sw	$4,0($6)
$L303:
	addiu	$5,$5,-4
	addiu	$6,$6,-4
	bne	$6,$3,$L304
	nop

	.option	pic0
	b	$L301
	nop

	.option	pic2
$L305:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$4,-4($5)
	nop
	sw	$4,-4($3)
	.option	pic0
	b	$L302
	nop

	.option	pic2
$L306:
	move	$3,$2
$L302:
	addiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,$L305
	nop

$L301:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L308
	nop

	.option	pic2
$L309:
	addiu	$3,$3,4
	sw	$5,-4($3)
$L308:
	addiu	$6,$6,-1
	li	$4,-1			# 0xffffffffffffffff
	bne	$6,$4,$L309
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sltu	$2,$4,$5
	beq	$2,$0,$L311
	nop

	addu	$2,$4,$6
	addu	$5,$5,$6
	.option	pic0
	b	$L312
	nop

	.option	pic2
$L313:
	addiu	$2,$2,-1
	addiu	$5,$5,-1
	lb	$3,0($2)
	nop
	sb	$3,0($5)
$L312:
	bne	$2,$4,$L313
	nop

	.option	pic0
	b	$L310
	nop

	.option	pic2
$L311:
	beq	$4,$5,$L310
	nop

	addu	$6,$5,$6
	move	$2,$4
	.option	pic0
	b	$L315
	nop

	.option	pic2
$L316:
	addiu	$2,$2,1
	addiu	$5,$5,1
	lb	$3,-1($2)
	nop
	sb	$3,-1($5)
$L315:
	bne	$5,$6,$L316
	nop

$L310:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	andi	$2,$6,0x20
	beq	$2,$0,$L318
	nop

	sll	$10,$5,$6
	move	$11,$0
	.option	pic0
	b	$L319
	nop

	.option	pic2
$L318:
	srl	$2,$5,1
	nor	$3,$0,$6
	srl	$2,$2,$3
	sll	$10,$4,$6
	or	$10,$2,$10
	sll	$11,$5,$6
$L319:
	subu	$2,$0,$6
	andi	$2,$2,0x20
	beq	$2,$0,$L320
	nop

	subu	$6,$0,$6
	srl	$9,$4,$6
	move	$8,$0
	.option	pic0
	b	$L321
	nop

	.option	pic2
$L320:
	sll	$2,$4,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$9,$5,$6
	or	$9,$2,$9
	srl	$8,$4,$6
$L321:
	or	$2,$8,$10
	or	$3,$9,$11
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	andi	$2,$6,0x20
	beq	$2,$0,$L323
	nop

	srl	$11,$4,$6
	move	$10,$0
	.option	pic0
	b	$L324
	nop

	.option	pic2
$L323:
	sll	$2,$4,1
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$11,$5,$6
	or	$11,$2,$11
	srl	$10,$4,$6
$L324:
	subu	$2,$0,$6
	andi	$2,$2,0x20
	beq	$2,$0,$L325
	nop

	subu	$6,$0,$6
	sll	$8,$5,$6
	move	$9,$0
	.option	pic0
	b	$L326
	nop

	.option	pic2
$L325:
	srl	$2,$5,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$3,$0,$6
	srl	$2,$2,$3
	sll	$8,$4,$6
	or	$8,$2,$8
	sll	$9,$5,$6
$L326:
	or	$2,$8,$10
	or	$3,$9,$11
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sll	$3,$4,$5
	subu	$5,$0,$5
	srl	$2,$4,$5
	or	$2,$2,$3
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$3,$4,$5
	subu	$5,$0,$5
	sll	$2,$4,$5
	or	$2,$2,$3
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sll	$3,$4,$5
	subu	$5,$0,$5
	srl	$2,$4,$5
	or	$2,$2,$3
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$3,$4,$5
	subu	$5,$0,$5
	sll	$2,$4,$5
	or	$2,$2,$3
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	srl	$2,$4,$2
	or	$2,$2,$3
	andi	$2,$2,0xffff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	sll	$2,$4,$2
	or	$2,$2,$3
	andi	$2,$2,0xffff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	srl	$2,$4,$2
	or	$2,$2,$3
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	sll	$2,$4,$2
	or	$2,$2,$3
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	b	$L339
	nop

	.option	pic2
$L342:
	srl	$3,$4,$2
	andi	$3,$3,0x1
	beq	$3,$0,$L340
	nop

	addiu	$2,$2,1
	.option	pic0
	b	$L341
	nop

	.option	pic2
$L340:
	addiu	$2,$2,1
$L339:
	li	$3,32			# 0x20
	bne	$2,$3,$L342
	nop

	move	$2,$0
$L341:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	beq	$4,$0,$L347
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L345
	nop

	.option	pic2
$L346:
	sra	$4,$4,1
	addiu	$2,$2,1
$L345:
	andi	$3,$4,0x1
	beq	$3,$0,$L346
	nop

	.option	pic0
	b	$L344
	nop

	.option	pic2
$L347:
	move	$2,$0
$L344:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi($LC0)
	lwc1	$f0,%lo($LC0)($2)
	nop
	c.lt.s	$f12,$f0
	nop
	bc1t	$L351
	nop

	lui	$2,%hi($LC1)
	lwc1	$f0,%lo($LC1)($2)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1f	$L354
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L349
	nop

	.option	pic2
$L351:
	li	$2,1			# 0x1
	.option	pic0
	b	$L349
	nop

	.option	pic2
$L354:
	move	$2,$0
$L349:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L358
	nop

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L361
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L356
	nop

	.option	pic2
$L358:
	li	$2,1			# 0x1
	.option	pic0
	b	$L356
	nop

	.option	pic2
$L361:
	move	$2,$0
$L356:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L365
	nop

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L368
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L363
	nop

	.option	pic2
$L365:
	li	$2,1			# 0x1
	.option	pic0
	b	$L363
	nop

	.option	pic2
$L368:
	move	$2,$0
$L363:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	mov.s	$f0,$f12
	c.un.s	$f12,$f12
	nop
	bc1t	$L371
	nop

	add.s	$f2,$f12,$f12
	c.eq.s	$f12,$f2
	nop
	bc1t	$L371
	nop

	bgez	$5,$L375
	nop

	lui	$2,%hi($LC4)
	lwc1	$f2,%lo($LC4)($2)
	.option	pic0
	b	$L374
	nop

	.option	pic2
$L375:
	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5)($2)
$L374:
	andi	$2,$5,0x1
	beq	$2,$0,$L373
	nop

	mul.s	$f0,$f0,$f2
$L373:
	srl	$2,$5,31
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L371
	nop

	mul.s	$f2,$f2,$f2
	.option	pic0
	b	$L374
	nop

	.option	pic2
$L371:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	mov.d	$f0,$f12
	c.un.d	$f12,$f12
	nop
	bc1t	$L377
	nop

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L377
	nop

	bgez	$6,$L381
	nop

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L380
	nop

	.option	pic2
$L381:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
$L380:
	andi	$2,$6,0x1
	beq	$2,$0,$L379
	nop

	mul.d	$f0,$f0,$f2
$L379:
	srl	$2,$6,31
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L377
	nop

	mul.d	$f2,$f2,$f2
	.option	pic0
	b	$L380
	nop

	.option	pic2
$L377:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	mov.d	$f0,$f12
	c.un.d	$f12,$f12
	nop
	bc1t	$L383
	nop

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L383
	nop

	bgez	$6,$L387
	nop

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L386
	nop

	.option	pic2
$L387:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
$L386:
	andi	$2,$6,0x1
	beq	$2,$0,$L385
	nop

	mul.d	$f0,$f0,$f2
$L385:
	srl	$2,$6,31
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L383
	nop

	mul.d	$f2,$f2,$f2
	.option	pic0
	b	$L386
	nop

	.option	pic2
$L383:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L389
	nop

	.option	pic2
$L390:
	addiu	$5,$5,1
	lb	$7,-1($5)
	addiu	$3,$3,1
	lb	$4,-1($3)
	nop
	xor	$4,$4,$7
	sb	$4,-1($3)
$L389:
	bne	$3,$6,$L390
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addu	$2,$18,$2
	.option	pic0
	b	$L392
	nop

	.option	pic2
$L394:
	addiu	$17,$17,1
	addiu	$2,$2,1
	addiu	$16,$16,-1
$L392:
	beq	$16,$0,$L393
	nop

	lb	$3,0($17)
	nop
	sb	$3,0($2)
	sll	$3,$3,24
	sra	$3,$3,24
	bne	$3,$0,$L394
	nop

$L393:
	bne	$16,$0,$L395
	nop

	sb	$0,0($2)
$L395:
	move	$2,$18
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	addiu	$sp,$sp,48
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
	b	$L397
	nop

	.option	pic2
$L399:
	addiu	$2,$2,1
$L397:
	beq	$2,$5,$L398
	nop

	addu	$3,$4,$2
	lb	$3,0($3)
	nop
	bne	$3,$0,$L399
	nop

$L398:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	.option	pic0
	b	$L401
	nop

	.option	pic2
$L403:
	addiu	$2,$2,1
	lb	$6,-1($2)
	lb	$3,0($4)
	nop
	beq	$6,$3,$L405
	nop

	.option	pic0
	b	$L404
	nop

	.option	pic2
$L406:
	move	$2,$5
$L404:
	lb	$3,0($2)
	nop
	bne	$3,$0,$L403
	nop

	addiu	$4,$4,1
$L401:
	lb	$2,0($4)
	nop
	bne	$2,$0,$L406
	nop

	.option	pic0
	b	$L402
	nop

	.option	pic2
$L405:
	move	$2,$4
$L402:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$0
$L409:
	lb	$3,0($4)
	nop
	bne	$5,$3,$L408
	nop

	move	$2,$4
$L408:
	addiu	$4,$4,1
	lb	$3,-1($4)
	nop
	bne	$3,$0,$L409
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	move	$18,$2
	beq	$2,$0,$L415
	nop

	lb	$19,0($17)
	.option	pic0
	b	$L413
	nop

	.option	pic2
$L414:
	move	$6,$18
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	beq	$2,$0,$L416
	nop

	addiu	$16,$16,1
$L413:
	move	$5,$19
	move	$4,$16
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	move	$16,$2
	bne	$2,$0,$L414
	nop

	move	$2,$0
	.option	pic0
	b	$L412
	nop

	.option	pic2
$L415:
	move	$2,$16
	.option	pic0
	b	$L412
	nop

	.option	pic2
$L416:
	move	$2,$16
$L412:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	addiu	$sp,$sp,48
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	swc1	$f12,28($fp)
	swc1	$f13,24($fp)
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1f	$L418
	nop

	c.lt.d	$f0,$f14
	nop
	bc1t	$L420
	nop

$L418:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	lwc1	$f2,28($fp)
	nop
	lwc1	$f3,24($fp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L428
	nop

	c.lt.d	$f14,$f0
	nop
	bc1f	$L429
	nop

$L420:
	sw	$0,12($fp)
	sw	$0,8($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	lw	$3,24($fp)
	nop
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,28($fp)
	nop
	sw	$2,12($fp)
	.option	pic0
	b	$L421
	nop

	.option	pic2
$L428:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
	.option	pic0
	b	$L421
	nop

	.option	pic2
$L429:
	lwc1	$f0,28($fp)
	nop
	lwc1	$f1,24($fp)
	nop
	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
$L421:
	lwc1	$f0,12($fp)
	nop
	lwc1	$f1,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	addu	$19,$4,$19
	beq	$7,$0,$L435
	nop

	sltu	$5,$5,$7
	bne	$5,$0,$L436
	nop

	.option	pic0
	b	$L432
	nop

	.option	pic2
$L434:
	lb	$3,0($16)
	lb	$2,0($18)
	nop
	bne	$3,$2,$L433
	nop

	addiu	$4,$16,1
	addiu	$6,$17,-1
	addiu	$5,$18,1
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	beq	$2,$0,$L437
	nop

$L433:
	addiu	$16,$16,1
$L432:
	sltu	$2,$19,$16
	beq	$2,$0,$L434
	nop

	move	$2,$0
	.option	pic0
	b	$L431
	nop

	.option	pic2
$L435:
	move	$2,$4
	.option	pic0
	b	$L431
	nop

	.option	pic2
$L436:
	move	$2,$0
	.option	pic0
	b	$L431
	nop

	.option	pic2
$L437:
	move	$2,$16
$L431:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	addiu	$sp,$sp,48
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
	addiu	$sp,$sp,40
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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
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
	bc1f	$L456
	nop

	swc1	$f0,12($fp)
	swc1	$f1,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	xor	$4,$2,$4
	sw	$4,8($fp)
	sw	$3,12($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	li	$5,1			# 0x1
	.option	pic0
	b	$L440
	nop

	.option	pic2
$L456:
	move	$5,$0
$L440:
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
	bc1t	$L451
	nop

	.option	pic0
	b	$L457
	nop

	.option	pic2
$L444:
	addiu	$4,$4,1
	lui	$7,%hi($LC6)
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
	b	$L442
	nop

	.option	pic2
$L451:
	move	$4,$0
$L442:
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
	bc1t	$L444
	nop

	.option	pic0
	b	$L445
	nop

	.option	pic2
$L457:
	lui	$4,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($4)
	nop
	lwc1	$f1,%lo($LC6)($4)
	mtc1	$3,$f2
	nop
	mtc1	$2,$f3
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L458
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.eq.d	$f2,$f0
	nop
	bc1f	$L453
	nop

	move	$4,$0
	.option	pic0
	b	$L445
	nop

	.option	pic2
$L448:
	addiu	$4,$4,-1
	mtc1	$3,$f0
	nop
	mtc1	$2,$f1
	nop
	add.d	$f0,$f0,$f0
	mfc1	$3,$f0
	mfc1	$2,$f1
	.option	pic0
	b	$L447
	nop

	.option	pic2
$L453:
	move	$4,$0
$L447:
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
	bc1t	$L448
	nop

	.option	pic0
	b	$L445
	nop

	.option	pic2
$L458:
	move	$4,$0
$L445:
	sw	$4,0($6)
	beq	$5,$0,$L449
	nop

	sw	$0,12($fp)
	sw	$0,8($fp)
	li	$4,-2147483648			# 0xffffffff80000000
	xor	$4,$2,$4
	sw	$4,8($fp)
	sw	$3,12($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
$L449:
	mtc1	$3,$f0
	nop
	mtc1	$2,$f1
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$25,$0
	move	$24,$0
	.option	pic0
	b	$L460
	nop

	.option	pic2
$L463:
	move	$14,$0
	andi	$15,$5,0x1
	or	$8,$14,$15
	beq	$8,$0,$L461
	nop

	addu	$9,$25,$7
	sltu	$3,$9,$25
	addu	$8,$24,$6
	addu	$8,$3,$8
	move	$25,$9
	move	$24,$8
$L461:
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
$L460:
	or	$8,$4,$5
	bne	$8,$0,$L463
	nop

	move	$3,$25
	move	$2,$24
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$3,33			# 0x21
	li	$2,1			# 0x1
	.option	pic0
	b	$L465
	nop

	.option	pic2
$L467:
	sll	$5,$5,1
	sll	$2,$2,1
$L465:
	sltu	$7,$5,$4
	beq	$7,$0,$L472
	nop

	addiu	$3,$3,-1
	beq	$3,$0,$L473
	nop

	bgez	$5,$L467
	nop

	move	$3,$0
	.option	pic0
	b	$L469
	nop

	.option	pic2
$L470:
	sltu	$7,$4,$5
	bne	$7,$0,$L468
	nop

	subu	$4,$4,$5
	or	$3,$3,$2
$L468:
	srl	$2,$2,1
	srl	$5,$5,1
	.option	pic0
	b	$L469
	nop

	.option	pic2
$L472:
	move	$3,$0
	.option	pic0
	b	$L469
	nop

	.option	pic2
$L473:
	move	$3,$0
$L469:
	bne	$2,$0,$L470
	nop

	bne	$6,$0,$L474
	nop

	move	$2,$3
	.option	pic0
	b	$L471
	nop

	.option	pic2
$L474:
	move	$2,$4
$L471:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	bgez	$4,$L476
	nop

	nor	$4,$0,$4
$L476:
	beq	$4,$0,$L478
	nop

	lw	$25,%call16(__clzsi2)($28)
	sll	$4,$4,8
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$2,-1
	.option	pic0
	b	$L477
	nop

	.option	pic2
$L478:
	li	$2,7			# 0x7
$L477:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
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
	bgez	$4,$L480
	nop

	nor	$2,$0,$4
	nor	$3,$0,$5
	move	$5,$3
	move	$4,$2
$L480:
	or	$2,$4,$5
	beq	$2,$0,$L484
	nop

	lw	$25,%call16(__clzdi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$2,-1
	.option	pic0
	b	$L482
	nop

	.option	pic2
$L484:
	li	$2,63			# 0x3f
$L482:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
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
	b	$L486
	nop

	.option	pic2
$L488:
	andi	$3,$4,0x1
	beq	$3,$0,$L487
	nop

	addu	$2,$2,$5
$L487:
	srl	$4,$4,1
	sll	$5,$5,1
$L486:
	bne	$4,$0,$L488
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	and	$2,$6,$2
	sltu	$7,$4,$5
	bne	$7,$0,$L490
	nop

	addu	$7,$5,$6
	sltu	$7,$7,$4
	beq	$7,$0,$L491
	nop

$L490:
	move	$7,$5
	move	$10,$4
	sll	$3,$3,3
	addu	$3,$3,$5
	.option	pic0
	b	$L492
	nop

	.option	pic2
$L493:
	lw	$9,4($7)
	lw	$8,0($7)
	sw	$9,4($10)
	sw	$8,0($10)
	addiu	$7,$7,8
	addiu	$10,$10,8
$L492:
	bne	$7,$3,$L493
	nop

	.option	pic0
	b	$L494
	nop

	.option	pic2
$L495:
	addu	$3,$5,$2
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
$L494:
	sltu	$3,$2,$6
	bne	$3,$0,$L495
	nop

	.option	pic0
	b	$L489
	nop

	.option	pic2
$L497:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L491:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,$L497
	nop

$L489:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$2,$6,1
	sltu	$3,$4,$5
	bne	$3,$0,$L499
	nop

	addu	$3,$5,$6
	sltu	$3,$3,$4
	beq	$3,$0,$L500
	nop

$L499:
	move	$3,$5
	move	$7,$4
	sll	$2,$2,1
	addu	$2,$2,$5
	.option	pic0
	b	$L501
	nop

	.option	pic2
$L502:
	lh	$8,0($3)
	nop
	sh	$8,0($7)
	addiu	$3,$3,2
	addiu	$7,$7,2
$L501:
	bne	$3,$2,$L502
	nop

	andi	$2,$6,0x1
	beq	$2,$0,$L498
	nop

	addiu	$6,$6,-1
	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	nop
	sb	$2,0($4)
	.option	pic0
	b	$L498
	nop

	.option	pic2
$L504:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L500:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,$L504
	nop

$L498:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	and	$2,$6,$2
	sltu	$7,$4,$5
	bne	$7,$0,$L506
	nop

	addu	$7,$5,$6
	sltu	$7,$7,$4
	beq	$7,$0,$L507
	nop

$L506:
	move	$7,$5
	move	$8,$4
	sll	$3,$3,2
	addu	$3,$3,$5
	.option	pic0
	b	$L508
	nop

	.option	pic2
$L509:
	lw	$9,0($7)
	nop
	sw	$9,0($8)
	addiu	$7,$7,4
	addiu	$8,$8,4
$L508:
	bne	$7,$3,$L509
	nop

	.option	pic0
	b	$L510
	nop

	.option	pic2
$L511:
	addu	$3,$5,$2
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
$L510:
	sltu	$3,$2,$6
	bne	$3,$0,$L511
	nop

	.option	pic0
	b	$L505
	nop

	.option	pic2
$L513:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L507:
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,$L513
	nop

$L505:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	div	$0,$4,$5
	bne	$5,$0,1f
	nop
	break	7
1:
	mfhi	$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	mtc1	$4,$f0
	nop
	cvt.d.w	$f0,$f0
	bgez	$4,$L516
	nop

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L516:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	mtc1	$4,$f0
	nop
	cvt.d.w	$f0,$f0
	bgez	$4,$L518
	nop

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L518:
	cvt.s.d	$f0,$f0
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,32
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
	addiu	$sp,$sp,32
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	divu	$0,$4,$5
	bne	$5,$0,1f
	nop
	break	7
1:
	mfhi	$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L523
	nop

	.option	pic2
$L525:
	li	$3,15			# 0xf
	subu	$3,$3,$2
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,$L524
	nop

	addiu	$2,$2,1
$L523:
	li	$3,16			# 0x10
	bne	$2,$3,$L525
	nop

$L524:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L527
	nop

	.option	pic2
$L529:
	sra	$3,$4,$2
	andi	$3,$3,0x1
	bne	$3,$0,$L528
	nop

	addiu	$2,$2,1
$L527:
	li	$3,16			# 0x10
	bne	$2,$3,$L529
	nop

$L528:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi($LC10)
	lwc1	$f0,%lo($LC10)($2)
	nop
	c.le.s	$f0,$f12
	nop
	bc1f	$L535
	nop

	sub.s	$f12,$f12,$f0
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	li	$3,32768			# 0x8000
	addu	$2,$2,$3
	.option	pic0
	b	$L533
	nop

	.option	pic2
$L535:
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
$L533:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L537
	nop

	.option	pic2
$L539:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beq	$5,$0,$L538
	nop

	addiu	$2,$2,1
$L538:
	addiu	$3,$3,1
$L537:
	li	$5,16			# 0x10
	bne	$3,$5,$L539
	nop

	andi	$2,$2,0x1
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L541
	nop

	.option	pic2
$L543:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	beq	$5,$0,$L542
	nop

	addiu	$2,$2,1
$L542:
	addiu	$3,$3,1
$L541:
	li	$5,16			# 0x10
	bne	$3,$5,$L543
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	b	$L545
	nop

	.option	pic2
$L547:
	andi	$3,$4,0x1
	beq	$3,$0,$L546
	nop

	addu	$2,$2,$5
$L546:
	srl	$4,$4,1
	sll	$5,$5,1
$L545:
	bne	$4,$0,$L547
	nop

	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	beq	$4,$0,$L553
	nop

	move	$2,$0
	.option	pic0
	b	$L550
	nop

	.option	pic2
$L552:
	andi	$3,$5,0x1
	beq	$3,$0,$L551
	nop

	addu	$2,$2,$4
$L551:
	sll	$4,$4,1
	srl	$5,$5,1
$L550:
	bne	$5,$0,$L552
	nop

	.option	pic0
	b	$L549
	nop

	.option	pic2
$L553:
	move	$2,$0
$L549:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$3,33			# 0x21
	li	$2,1			# 0x1
	.option	pic0
	b	$L555
	nop

	.option	pic2
$L557:
	sll	$5,$5,1
	sll	$2,$2,1
$L555:
	sltu	$7,$5,$4
	beq	$7,$0,$L562
	nop

	addiu	$3,$3,-1
	beq	$3,$0,$L563
	nop

	bgez	$5,$L557
	nop

	move	$3,$0
	.option	pic0
	b	$L559
	nop

	.option	pic2
$L560:
	sltu	$7,$4,$5
	bne	$7,$0,$L558
	nop

	subu	$4,$4,$5
	or	$3,$3,$2
$L558:
	srl	$2,$2,1
	srl	$5,$5,1
	.option	pic0
	b	$L559
	nop

	.option	pic2
$L562:
	move	$3,$0
	.option	pic0
	b	$L559
	nop

	.option	pic2
$L563:
	move	$3,$0
$L559:
	bne	$2,$0,$L560
	nop

	bne	$6,$0,$L564
	nop

	move	$2,$3
	.option	pic0
	b	$L561
	nop

	.option	pic2
$L564:
	move	$2,$4
$L561:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	c.lt.s	$f12,$f14
	nop
	bc1t	$L567
	nop

	c.lt.s	$f14,$f12
	nop
	bc1t	$L568
	nop

	move	$2,$0
	.option	pic0
	b	$L566
	nop

	.option	pic2
$L567:
	li	$2,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L566
	nop

	.option	pic2
$L568:
	li	$2,1			# 0x1
$L566:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	c.lt.d	$f12,$f14
	nop
	bc1t	$L571
	nop

	c.lt.d	$f14,$f12
	nop
	bc1t	$L572
	nop

	move	$2,$0
	.option	pic0
	b	$L570
	nop

	.option	pic2
$L571:
	li	$2,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L570
	nop

	.option	pic2
$L572:
	li	$2,1			# 0x1
$L570:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	bgez	$5,$L582
	nop

	subu	$5,$0,$5
	li	$6,1			# 0x1
	.option	pic0
	b	$L576
	nop

	.option	pic2
$L582:
	move	$6,$0
$L576:
	li	$3,33			# 0x21
	move	$2,$0
	.option	pic0
	b	$L577
	nop

	.option	pic2
$L580:
	andi	$7,$5,0x1
	beq	$7,$0,$L578
	nop

	addu	$2,$2,$4
$L578:
	sll	$4,$4,1
	sra	$5,$5,1
$L577:
	beq	$5,$0,$L579
	nop

	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	bne	$3,$0,$L580
	nop

$L579:
	beq	$6,$0,$L581
	nop

	subu	$2,$0,$2
$L581:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	bgez	$4,$L588
	nop

	subu	$4,$0,$4
	li	$16,1			# 0x1
	.option	pic0
	b	$L585
	nop

	.option	pic2
$L588:
	move	$16,$0
$L585:
	bgez	$5,$L586
	nop

	subu	$5,$0,$5
	sltu	$16,$16,1
$L586:
	move	$6,$0
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L587
	nop

	subu	$2,$0,$2
$L587:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	addiu	$sp,$sp,40
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
	bgez	$4,$L593
	nop

	subu	$4,$0,$4
	li	$16,1			# 0x1
	.option	pic0
	b	$L590
	nop

	.option	pic2
$L593:
	move	$16,$0
$L590:
	bgez	$5,$L591
	nop

	subu	$5,$0,$5
$L591:
	li	$6,1			# 0x1
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L592
	nop

	subu	$2,$0,$2
$L592:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	addiu	$sp,$sp,40
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$3,17			# 0x11
	li	$2,1			# 0x1
	.option	pic0
	b	$L595
	nop

	.option	pic2
$L597:
	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$2,$2,1
	andi	$2,$2,0xffff
$L595:
	sltu	$7,$5,$4
	beq	$7,$0,$L602
	nop

	addiu	$3,$3,-1
	beq	$3,$0,$L603
	nop

	sll	$7,$5,16
	sra	$7,$7,16
	bgez	$7,$L597
	nop

	move	$3,$0
	.option	pic0
	b	$L599
	nop

	.option	pic2
$L600:
	sltu	$7,$4,$5
	bne	$7,$0,$L598
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$3,$3,$2
$L598:
	srl	$2,$2,1
	srl	$5,$5,1
	.option	pic0
	b	$L599
	nop

	.option	pic2
$L602:
	move	$3,$0
	.option	pic0
	b	$L599
	nop

	.option	pic2
$L603:
	move	$3,$0
$L599:
	bne	$2,$0,$L600
	nop

	bne	$6,$0,$L604
	nop

	move	$2,$3
	.option	pic0
	b	$L601
	nop

	.option	pic2
$L604:
	move	$2,$4
$L601:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$3,33			# 0x21
	li	$2,1			# 0x1
	.option	pic0
	b	$L606
	nop

	.option	pic2
$L608:
	sll	$5,$5,1
	sll	$2,$2,1
$L606:
	sltu	$7,$5,$4
	beq	$7,$0,$L613
	nop

	addiu	$3,$3,-1
	beq	$3,$0,$L614
	nop

	bgez	$5,$L608
	nop

	move	$3,$0
	.option	pic0
	b	$L610
	nop

	.option	pic2
$L611:
	sltu	$7,$4,$5
	bne	$7,$0,$L609
	nop

	subu	$4,$4,$5
	or	$3,$3,$2
$L609:
	srl	$2,$2,1
	srl	$5,$5,1
	.option	pic0
	b	$L610
	nop

	.option	pic2
$L613:
	move	$3,$0
	.option	pic0
	b	$L610
	nop

	.option	pic2
$L614:
	move	$3,$0
$L610:
	bne	$2,$0,$L611
	nop

	bne	$6,$0,$L615
	nop

	move	$2,$3
	.option	pic0
	b	$L612
	nop

	.option	pic2
$L615:
	move	$2,$4
$L612:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$11,$5
	move	$10,$4
	andi	$2,$6,0x20
	beq	$2,$0,$L617
	nop

	move	$9,$0
	sll	$6,$5,$6
	move	$8,$6
	.option	pic0
	b	$L618
	nop

	.option	pic2
$L617:
	beq	$6,$0,$L620
	nop

	sll	$9,$5,$6
	sll	$10,$4,$6
	subu	$6,$0,$6
	srl	$2,$5,$6
	or	$2,$2,$10
	move	$8,$2
$L618:
	move	$3,$9
	move	$2,$8
	.option	pic0
	b	$L619
	nop

	.option	pic2
$L620:
	move	$3,$5
	move	$2,$4
$L619:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

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
	move	$11,$5
	move	$10,$4
	andi	$2,$6,0x20
	beq	$2,$0,$L622
	nop

	sra	$8,$4,31
	sra	$10,$4,$6
	move	$9,$10
	.option	pic0
	b	$L623
	nop

	.option	pic2
$L622:
	beq	$6,$0,$L625
	nop

	sra	$8,$4,$6
	subu	$3,$0,$6
	sll	$2,$4,$3
	srl	$6,$5,$6
	or	$9,$2,$6
$L623:
	move	$3,$9
	move	$2,$8
	.option	pic0
	b	$L624
	nop

	.option	pic2
$L625:
	move	$3,$5
	move	$2,$4
$L624:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

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
	srl	$5,$19,8
	or	$5,$16,$5
	move	$14,$0
	li	$2,-16777216			# 0xffffffffff000000
	and	$15,$5,$2
	sll	$7,$19,8
	andi	$12,$3,0xff
	move	$2,$5
	sll	$3,$19,24
	andi	$4,$2,0xff00
	move	$16,$7
	and	$6,$16,$24
	move	$16,$3
	or	$24,$16,$10
	or	$25,$21,$11
	or	$2,$24,$8
	or	$3,$25,$9
	or	$8,$2,$14
	or	$9,$3,$15
	or	$2,$8,$12
	move	$3,$9
	or	$8,$2,$4
	move	$9,$3
	or	$2,$8,$6
	move	$3,$9
	move	$sp,$fp
	lw	$fp,28($sp)
	lw	$21,24($sp)
	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	addiu	$sp,$sp,32
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	srl	$6,$4,24
	srl	$5,$4,8
	andi	$5,$5,0xff00
	sll	$3,$4,8
	li	$2,16711680			# 0xff0000
	and	$3,$3,$2
	sll	$2,$4,24
	or	$2,$2,$6
	or	$2,$2,$5
	or	$2,$2,$3
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$2,65536			# 0x10000
	sltu	$2,$4,$2
	beq	$2,$0,$L633
	nop

	li	$2,16			# 0x10
	.option	pic0
	b	$L629
	nop

	.option	pic2
$L633:
	move	$2,$0
$L629:
	li	$3,16			# 0x10
	subu	$3,$3,$2
	srl	$4,$4,$3
	andi	$3,$4,0xff00
	bne	$3,$0,$L634
	nop

	li	$3,8			# 0x8
	.option	pic0
	b	$L630
	nop

	.option	pic2
$L634:
	move	$3,$0
$L630:
	li	$5,8			# 0x8
	subu	$5,$5,$3
	srl	$4,$4,$5
	addu	$2,$2,$3
	andi	$3,$4,0xf0
	bne	$3,$0,$L635
	nop

	li	$3,4			# 0x4
	.option	pic0
	b	$L631
	nop

	.option	pic2
$L635:
	move	$3,$0
$L631:
	li	$5,4			# 0x4
	subu	$5,$5,$3
	srl	$4,$4,$5
	addu	$2,$2,$3
	andi	$3,$4,0xc
	bne	$3,$0,$L636
	nop

	li	$5,2			# 0x2
	.option	pic0
	b	$L632
	nop

	.option	pic2
$L636:
	move	$5,$0
$L632:
	li	$3,2			# 0x2
	subu	$6,$3,$5
	srl	$4,$4,$6
	addu	$2,$2,$5
	andi	$5,$4,0x2
	sltu	$5,$5,1
	subu	$3,$3,$4
	mult	$5,$3
	mflo	$3
	addu	$2,$2,$3
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

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
	move	$fp,$sp
	slt	$2,$4,$6
	bne	$2,$0,$L639
	nop

	slt	$2,$6,$4
	bne	$2,$0,$L640
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L641
	nop

	sltu	$2,$7,$5
	bne	$2,$0,$L642
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L638
	nop

	.option	pic2
$L639:
	move	$2,$0
	.option	pic0
	b	$L638
	nop

	.option	pic2
$L640:
	li	$2,2			# 0x2
	.option	pic0
	b	$L638
	nop

	.option	pic2
$L641:
	move	$2,$0
	.option	pic0
	b	$L638
	nop

	.option	pic2
$L642:
	li	$2,2			# 0x2
$L638:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,32
	jr	$31
	nop

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
	move	$fp,$sp
	andi	$2,$4,0xffff
	bne	$2,$0,$L649
	nop

	li	$2,16			# 0x10
	.option	pic0
	b	$L645
	nop

	.option	pic2
$L649:
	move	$2,$0
$L645:
	srl	$4,$4,$2
	andi	$3,$4,0xff
	bne	$3,$0,$L650
	nop

	li	$3,8			# 0x8
	.option	pic0
	b	$L646
	nop

	.option	pic2
$L650:
	move	$3,$0
$L646:
	srl	$4,$4,$3
	addu	$2,$2,$3
	andi	$3,$4,0xf
	bne	$3,$0,$L651
	nop

	li	$3,4			# 0x4
	.option	pic0
	b	$L647
	nop

	.option	pic2
$L651:
	move	$3,$0
$L647:
	srl	$4,$4,$3
	addu	$2,$2,$3
	andi	$3,$4,0x3
	bne	$3,$0,$L652
	nop

	li	$3,2			# 0x2
	.option	pic0
	b	$L648
	nop

	.option	pic2
$L652:
	move	$3,$0
$L648:
	srl	$4,$4,$3
	andi	$4,$4,0x3
	addu	$2,$2,$3
	nor	$5,$0,$4
	andi	$5,$5,0x1
	srl	$4,$4,1
	li	$3,2			# 0x2
	subu	$3,$3,$4
	subu	$4,$0,$5
	and	$3,$3,$4
	addu	$2,$2,$3
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

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
	move	$11,$5
	move	$10,$4
	andi	$2,$6,0x20
	beq	$2,$0,$L654
	nop

	move	$8,$0
	srl	$9,$4,$6
	.option	pic0
	b	$L655
	nop

	.option	pic2
$L654:
	beq	$6,$0,$L657
	nop

	srl	$8,$4,$6
	subu	$3,$0,$6
	sll	$2,$4,$3
	srl	$6,$5,$6
	or	$9,$2,$6
$L655:
	move	$3,$9
	move	$2,$8
	.option	pic0
	b	$L656
	nop

	.option	pic2
$L657:
	move	$3,$5
	move	$2,$4
$L656:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

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
	mflo	$3
	srl	$2,$3,16
	andi	$3,$3,0xffff
	srl	$4,$4,16
	mult	$4,$9
	mflo	$9
	addu	$2,$2,$9
	sll	$9,$2,16
	addu	$7,$9,$3
	srl	$2,$2,16
	move	$6,$2
	srl	$2,$7,16
	andi	$3,$7,0xffff
	srl	$5,$5,16
	mult	$8,$5
	mflo	$8
	addu	$2,$2,$8
	sll	$8,$2,16
	addu	$7,$8,$3
	srl	$2,$2,16
	addu	$2,$2,$6
	mult	$4,$5
	mflo	$3
	addu	$2,$3,$2
	move	$3,$7
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	move	$6,$2
	move	$5,$3
	mult	$17,$18
	mflo	$3
	nop
	nop
	mult	$19,$16
	mflo	$2
	addu	$3,$3,$2
	addu	$2,$3,$6
	move	$3,$5
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

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
	addiu	$sp,$sp,8
	jr	$31
	nop

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
	addiu	$sp,$sp,8
	jr	$31
	nop

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
	xor	$2,$4,$2
	srl	$3,$2,8
	xor	$2,$2,$3
	srl	$3,$2,4
	xor	$2,$2,$3
	andi	$2,$2,0xf
	li	$3,27030			# 0x6996
	sra	$2,$3,$2
	andi	$2,$2,0x1
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	sll	$6,$2,30
	srl	$5,$3,2
	or	$5,$6,$5
	srl	$4,$2,2
	li	$8,858980352			# 0x33330000
	addiu	$8,$8,13107
	and	$6,$4,$8
	and	$7,$5,$8
	and	$12,$2,$8
	and	$13,$3,$8
	addu	$11,$7,$13
	sltu	$5,$11,$7
	addu	$10,$6,$12
	addu	$10,$5,$10
	sll	$6,$10,28
	srl	$5,$11,4
	or	$5,$6,$5
	srl	$4,$10,4
	addu	$7,$5,$11
	sltu	$3,$7,$5
	addu	$6,$4,$10
	addu	$6,$3,$6
	li	$2,252641280			# 0xf0f0000
	addiu	$2,$2,3855
	and	$8,$6,$2
	and	$9,$7,$2
	addu	$3,$8,$9
	srl	$2,$3,16
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	andi	$2,$2,0x7f
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
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
	addu	$3,$2,$3
	li	$2,252641280			# 0xf0f0000
	addiu	$2,$2,3855
	and	$3,$3,$2
	srl	$2,$3,16
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	andi	$2,$2,0x3f
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

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
$L668:
	andi	$3,$6,0x1
	beq	$3,$0,$L666
	nop

	mul.d	$f0,$f0,$f12
$L666:
	srl	$3,$6,31
	addu	$6,$3,$6
	sra	$6,$6,1
	beq	$6,$0,$L667
	nop

	mul.d	$f12,$f12,$f12
	.option	pic0
	b	$L668
	nop

	.option	pic2
$L667:
	beq	$2,$0,$L669
	nop

	lui	$2,%hi($LC8)
	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	div.d	$f0,$f2,$f0
$L669:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
$L674:
	andi	$3,$5,0x1
	beq	$3,$0,$L672
	nop

	mul.s	$f0,$f0,$f12
$L672:
	srl	$3,$5,31
	addu	$5,$3,$5
	sra	$5,$5,1
	beq	$5,$0,$L673
	nop

	mul.s	$f12,$f12,$f12
	.option	pic0
	b	$L674
	nop

	.option	pic2
$L673:
	beq	$2,$0,$L675
	nop

	lui	$2,%hi($LC11)
	lwc1	$f2,%lo($LC11)($2)
	nop
	div.s	$f0,$f2,$f0
$L675:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sltu	$2,$4,$6
	bne	$2,$0,$L679
	nop

	sltu	$2,$6,$4
	bne	$2,$0,$L680
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L681
	nop

	sltu	$2,$7,$5
	bne	$2,$0,$L682
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L678
	nop

	.option	pic2
$L679:
	move	$2,$0
	.option	pic0
	b	$L678
	nop

	.option	pic2
$L680:
	li	$2,2			# 0x2
	.option	pic0
	b	$L678
	nop

	.option	pic2
$L681:
	move	$2,$0
	.option	pic0
	b	$L678
	nop

	.option	pic2
$L682:
	li	$2,2			# 0x2
$L678:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	addiu	$sp,$sp,32
	jr	$31
	nop

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
