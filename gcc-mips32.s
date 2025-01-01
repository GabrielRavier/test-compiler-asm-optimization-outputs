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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$5,$4
	beq	$3,$0,$L2
	move	$2,$4

	addu	$5,$5,$6
	beq	$6,$0,$L10
	addu	$3,$4,$6

$L4:
	addiu	$5,$5,-1
	addiu	$3,$3,-1
	lb	$4,0($5)
	bne	$2,$3,$L4
	sb	$4,0($3)

$L10:
	jr	$31
	nop

$L2:
	beq	$4,$5,$L9
	nop

	beq	$6,$0,$L10
	addu	$6,$4,$6

	move	$3,$4
$L5:
	addiu	$5,$5,1
	addiu	$3,$3,1
	lb	$4,-1($5)
	bne	$6,$3,$L5
	sb	$4,-1($3)

$L9:
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
	beq	$7,$0,$L13
	andi	$6,$6,0x00ff

$L12:
	lbu	$2,0($5)
	nop
	beq	$2,$6,$L13
	sb	$2,0($4)

	addiu	$7,$7,-1
	addiu	$5,$5,1
	bne	$7,$0,$L12
	addiu	$4,$4,1

$L13:
	beq	$7,$0,$L16
	nop

	jr	$31
	addiu	$2,$4,1

$L16:
	jr	$31
	move	$2,$0

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
	beq	$6,$0,$L23
	andi	$5,$5,0x00ff

$L19:
	lbu	$2,0($4)
	nop
	beq	$2,$5,$L23
	nop

	addiu	$6,$6,-1
	bne	$6,$0,$L19
	addiu	$4,$4,1

$L23:
	beq	$6,$0,$L25
	move	$2,$4

$L18:
	jr	$31
	nop

$L25:
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
	.option	pic0
	b	$L33
	nop

	.option	pic2
$L34:
	addiu	$4,$4,1
	addiu	$5,$5,1
$L33:
	beq	$6,$0,$L28
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	beq	$3,$2,$L34
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L28:
	beq	$6,$0,$L31
	nop

	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

$L31:
	jr	$31
	move	$2,$0

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
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	beq	$6,$0,$L36
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L36:
	move	$2,$16
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	andi	$5,$5,0x00ff
	addiu	$6,$6,-1
	addu	$6,$4,$6
	addiu	$4,$4,-1
$L39:
	beq	$6,$4,$L44
	move	$2,$0

	move	$2,$6
	lbu	$3,0($2)
	nop
	bne	$3,$5,$L39
	addiu	$6,$6,-1

$L44:
	jr	$31
	nop

$L38:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L49
	move	$2,$4

	addu	$6,$4,$6
	move	$3,$4
$L47:
	sb	$5,0($3)
	addiu	$3,$3,1
	bne	$6,$3,$L47
	nop

$L49:
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
	move	$2,$4
	lb	$3,0($5)
	nop
	beq	$3,$0,$L54
	sb	$3,0($4)

$L52:
	addiu	$5,$5,1
	addiu	$2,$2,1
	lb	$3,0($5)
	nop
	bne	$3,$0,$L52
	sb	$3,0($2)

$L54:
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
	lb	$3,0($4)
	nop
	beq	$3,$0,$L61
	andi	$5,$5,0x00ff

	andi	$3,$3,0x00ff
$L62:
	beq	$3,$5,$L61
	nop

	addiu	$4,$4,1
	lb	$3,0($4)
	nop
	bne	$3,$0,$L62
	andi	$3,$3,0x00ff

	jr	$31
	move	$2,$4

$L61:
	jr	$31
	move	$2,$4

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
	move	$2,$4
$L65:
	lb	$3,0($2)
	nop
	beq	$3,$5,$L67
	nop

	bne	$3,$0,$L65
	addiu	$2,$2,1

	move	$2,$0
$L67:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.option	pic0
	b	$L73
	nop

	.option	pic2
$L74:
	addiu	$5,$5,1
$L73:
	lb	$2,0($4)
	lb	$3,0($5)
	nop
	bne	$2,$3,$L70
	nop

	bne	$2,$0,$L74
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L70:
	andi	$2,$2,0x00ff
	andi	$3,$3,0x00ff
	jr	$31
	subu	$2,$2,$3

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
	lb	$2,0($4)
	nop
	beq	$2,$0,$L80
	move	$2,$4

$L77:
	addiu	$2,$2,1
	lb	$5,0($2)
	nop
	bne	$5,$0,$L77
	nop

$L76:
$L80:
	jr	$31
	subu	$2,$2,$4

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
	beq	$6,$0,$L86
	nop

	lbu	$2,0($4)
	nop
	beq	$2,$0,$L83
	nop

	addiu	$6,$6,-1
	addu	$6,$4,$6
$L84:
	lbu	$3,0($5)
	nop
	beq	$3,$0,$L87
	nop

	beq	$4,$6,$L87
	nop

	bne	$3,$2,$L87
	addiu	$4,$4,1

	lbu	$2,0($4)
	nop
	bne	$2,$0,$L84
	addiu	$5,$5,1

$L83:
	lbu	$3,0($5)
$L87:
	jr	$31
	subu	$2,$2,$3

$L86:
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
	slt	$2,$6,2
	bne	$2,$0,$L92
	li	$2,-2			# 0xfffffffffffffffe

	and	$6,$6,$2
	addu	$3,$4,$6
$L90:
	lbu	$2,1($4)
	nop
	sb	$2,0($5)
	lbu	$2,0($4)
	nop
	sb	$2,1($5)
	addiu	$4,$4,2
	bne	$4,$3,$L90
	addiu	$5,$5,2

$L92:
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
	beq	$4,$2,$L97
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

$L97:
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
	sltu	$2,$4,32
	bne	$2,$0,$L100
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

$L100:
	jr	$31
	li	$2,1			# 0x1

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
	beq	$4,$2,$L107
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

$L107:
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
	sltu	$2,$4,32
	bne	$2,$0,$L112
	nop

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,$L112
	nop

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L113
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	jr	$31
	sltu	$2,$4,3

$L112:
	jr	$31
	li	$2,1			# 0x1

$L113:
	jr	$31
	li	$2,1			# 0x1

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
	bne	$2,$0,$L122
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,$L120
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,$L120
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$3,$2,8192
	addu	$3,$4,$3
	sltu	$3,$3,8185
	bne	$3,$0,$L120
	li	$3,1048576			# 0x100000

	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L121
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

$L122:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	xori	$2,$2,0x1

$L120:
	jr	$31
	li	$2,1			# 0x1

$L121:
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
	addiu	$2,$4,-48
	sltu	$2,$2,10
	bne	$2,$0,$L125
	nop

	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

$L125:
	jr	$31
	li	$2,1			# 0x1

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
	bc1t	$L130
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L131
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L134
	nop

	jr	$31
	sub.d	$f0,$f12,$f14

$L130:
	jr	$31
	mov.d	$f0,$f12

$L131:
	jr	$31
	mov.d	$f0,$f14

$L134:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
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
	bc1t	$L138
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L139
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L142
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L138:
	jr	$31
	mov.s	$f0,$f12

$L139:
	jr	$31
	mov.s	$f0,$f14

$L142:
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
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L149
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L150
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	nop
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L145
	nop

	bne	$2,$0,$L151
	nop

	jr	$31
	mov.d	$f0,$f12

$L145:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L148
	li	$2,1			# 0x1

	move	$2,$0
$L148:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L150
	nop

$L149:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L150:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L151:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
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
	swc1	$f12,0($sp)
	c.un.s	$f12,$f12
	nop
	bc1t	$L158
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L159
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	nop
	and	$2,$2,$4
	lw	$3,4($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L154
	nop

	bne	$2,$0,$L160
	nop

	jr	$31
	mov.s	$f0,$f12

$L154:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1t	$L157
	li	$2,1			# 0x1

	move	$2,$0
$L157:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L159
	nop

$L158:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L159:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L160:
	lwc1	$f0,4($sp)
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L167
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L168
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	nop
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L163
	nop

	bne	$2,$0,$L169
	nop

	jr	$31
	mov.d	$f0,$f12

$L163:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L166
	li	$2,1			# 0x1

	move	$2,$0
$L166:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L168
	nop

$L167:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L168:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L169:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L176
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L177
	mov.d	$f0,$f14

	lw	$2,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L172
	nop

	bne	$2,$0,$L178
	nop

	jr	$31
	nop

$L172:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L175
	li	$2,1			# 0x1

	move	$2,$0
$L175:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L176
	nop

$L177:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L176:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L178:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,0($sp)
	c.un.s	$f12,$f12
	nop
	bc1t	$L185
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L186
	mov.s	$f0,$f14

	lw	$2,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,4($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L181
	nop

	bne	$2,$0,$L187
	nop

	jr	$31
	nop

$L181:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1t	$L184
	li	$2,1			# 0x1

	move	$2,$0
$L184:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L185
	nop

$L186:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L185:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L187:
	lwc1	$f0,0($sp)
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L194
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L195
	mov.d	$f0,$f14

	lw	$2,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L190
	nop

	bne	$2,$0,$L196
	nop

	jr	$31
	nop

$L190:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L193
	li	$2,1			# 0x1

	move	$2,$0
$L193:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L194
	nop

$L195:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L194:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L196:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fminl
	.size	fminl, .-fminl
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
	lui	$3,%hi(s.0)
	beq	$4,$0,$L198
	addiu	$3,$3,%lo(s.0)

	lui	$5,%hi(digits)
	addiu	$5,$5,%lo(digits)
$L199:
	andi	$2,$4,0x3f
	addu	$2,$2,$5
	lbu	$2,0($2)
	nop
	sb	$2,0($3)
	srl	$4,$4,6
	bne	$4,$0,$L199
	addiu	$3,$3,1

$L198:
	sb	$0,0($3)
	lui	$2,%hi(s.0)
	jr	$31
	addiu	$2,$2,%lo(s.0)

	.set	macro
	.set	reorder
	.end	l64a
	.size	l64a, .-l64a
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
	lui	$2,%hi(seed)
	addiu	$4,$4,-1
	sw	$4,%lo(seed+4)($2)
	jr	$31
	sw	$0,%lo(seed)($2)

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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	lui	$4,%hi(seed)
	lw	$3,%lo(seed)($4)
	li	$2,1284833280			# 0x4c950000
	addiu	$2,$2,32557
	mult	$3,$2
	mflo	$3
	lw	$5,%lo(seed+4)($4)
	nop
	sw	$5,8($sp)
	li	$5,1481703424			# 0x58510000
	ori	$5,$5,0xf42d
	lw	$6,8($sp)
	nop
	mult	$6,$5
	mflo	$5
	addu	$3,$3,$5
	nop
	multu	$6,$2
	mflo	$7
	mfhi	$6
	addu	$3,$3,$6
	addiu	$5,$7,1
	sltu	$2,$5,$7
	addu	$2,$2,$3
	sw	$2,%lo(seed)($4)
	sw	$5,%lo(seed+4)($4)
	srl	$2,$2,1
	jr	$31
	addiu	$sp,$sp,16

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
	beq	$5,$0,$L208
	nop

	lw	$2,0($5)
	nop
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L209
	nop

	sw	$4,4($2)
$L209:
	jr	$31
	nop

$L208:
	sw	$0,4($4)
	jr	$31
	sw	$0,0($4)

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
	lw	$2,0($4)
	nop
	beq	$2,$0,$L211
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L211:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L213
	nop

	lw	$3,0($4)
	nop
	sw	$3,0($2)
$L213:
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
	.frame	$sp,64,$31		# vars= 0, regs= 10/0, args= 16, gp= 8
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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$19,$4
	move	$fp,$5
	move	$23,$6
	lw	$22,80($sp)
	lw	$21,0($6)
	nop
	beq	$21,$0,$L215
	move	$18,$7

	move	$16,$5
	move	$17,$0
$L217:
	move	$5,$16
	move	$4,$19
	move	$25,$22
	jalr	$25
	nop

	lw	$28,16($sp)
	beq	$2,$0,$L214
	move	$20,$16

	addiu	$17,$17,1
	bne	$21,$17,$L217
	addu	$16,$16,$18

$L215:
	addiu	$2,$21,1
	sw	$2,0($23)
	mult	$18,$21
	mflo	$4
	move	$6,$18
	move	$5,$19
	addu	$4,$fp,$4
	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$20,$2
$L214:
	move	$2,$20
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
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lw	$22,72($sp)
	lw	$20,0($6)
	nop
	beq	$20,$0,$L221
	move	$18,$4

	move	$19,$7
	move	$16,$5
	move	$17,$0
$L223:
	move	$5,$16
	move	$4,$18
	move	$25,$22
	jalr	$25
	nop

	beq	$2,$0,$L220
	move	$21,$16

	addiu	$17,$17,1
	bne	$20,$17,$L223
	addu	$16,$16,$19

$L221:
	move	$21,$0
$L220:
	move	$2,$21
	lw	$31,52($sp)
	lw	$22,48($sp)
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,$L228
	move	$2,$4

$L227:
	jr	$31
	nop

$L228:
	jr	$31
	subu	$2,$0,$4

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
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.option	pic0
	b	$L230
	.option	pic2
	move	$16,$4

$L231:
	addiu	$16,$16,1
$L230:
	lb	$17,0($16)
	nop
	move	$4,$17
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L231
	li	$3,43			# 0x2b

	beq	$17,$3,$L237
	li	$3,45			# 0x2d

	bne	$17,$3,$L233
	move	$5,$0

	li	$5,1			# 0x1
$L232:
	addiu	$16,$16,1
$L233:
	lb	$3,0($16)
	nop
	addiu	$4,$3,-48
	sltu	$4,$4,10
	beq	$4,$0,$L235
	sll	$4,$2,2

$L242:
	addu	$4,$4,$2
	sll	$4,$4,1
	addiu	$16,$16,1
	addiu	$3,$3,-48
	sll	$3,$3,24
	sra	$3,$3,24
	subu	$2,$4,$3
	lb	$3,0($16)
	nop
	addiu	$4,$3,-48
	sltu	$4,$4,10
	bne	$4,$0,$L242
	sll	$4,$2,2

$L235:
	bne	$5,$0,$L229
	nop

	subu	$2,$0,$2
$L229:
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

$L237:
	.option	pic0
	b	$L232
	.option	pic2
	move	$5,$0

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
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.option	pic0
	b	$L244
	.option	pic2
	move	$16,$4

$L245:
	addiu	$16,$16,1
$L244:
	lb	$17,0($16)
	nop
	move	$4,$17
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L245
	li	$3,43			# 0x2b

	beq	$17,$3,$L251
	li	$3,45			# 0x2d

	bne	$17,$3,$L247
	move	$5,$0

	li	$5,1			# 0x1
$L246:
	addiu	$16,$16,1
$L247:
	lb	$3,0($16)
	nop
	addiu	$4,$3,-48
	sltu	$4,$4,10
	beq	$4,$0,$L249
	sll	$4,$2,2

$L256:
	addu	$4,$4,$2
	sll	$4,$4,1
	addiu	$16,$16,1
	addiu	$3,$3,-48
	sll	$3,$3,24
	sra	$3,$3,24
	subu	$2,$4,$3
	lb	$3,0($16)
	nop
	addiu	$4,$3,-48
	sltu	$4,$4,10
	bne	$4,$0,$L256
	sll	$4,$2,2

$L249:
	bne	$5,$0,$L243
	nop

	subu	$2,$0,$2
$L243:
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

$L251:
	.option	pic0
	b	$L246
	.option	pic2
	move	$5,$0

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
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.option	pic0
	b	$L258
	.option	pic2
	move	$16,$4

$L259:
	addiu	$16,$16,1
$L258:
	lb	$17,0($16)
	nop
	move	$4,$17
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L259
	li	$3,43			# 0x2b

	beq	$17,$3,$L260
	li	$3,45			# 0x2d

	bne	$17,$3,$L261
	nop

	li	$2,1			# 0x1
$L260:
	addiu	$16,$16,1
$L261:
	lb	$7,0($16)
	nop
	addiu	$3,$7,-48
	move	$6,$0
	sltu	$3,$3,10
	beq	$3,$0,$L263
	move	$5,$0

	srl	$3,$5,30
$L268:
	sll	$4,$6,2
	or	$4,$3,$4
	sll	$3,$5,2
	addu	$5,$3,$5
	sltu	$3,$5,$3
	addu	$4,$4,$6
	addu	$3,$3,$4
	srl	$4,$5,31
	sll	$3,$3,1
	or	$3,$4,$3
	sll	$6,$5,1
	addiu	$16,$16,1
	addiu	$7,$7,-48
	sll	$7,$7,24
	sra	$7,$7,24
	sra	$4,$7,31
	subu	$5,$6,$7
	sltu	$6,$6,$5
	subu	$3,$3,$4
	subu	$6,$3,$6
	lb	$7,0($16)
	nop
	addiu	$3,$7,-48
	sltu	$3,$3,10
	bne	$3,$0,$L268
	srl	$3,$5,30

$L263:
	bne	$2,$0,$L269
	move	$2,$6

	sltu	$2,$0,$5
	subu	$6,$0,$6
	subu	$6,$6,$2
	subu	$5,$0,$5
	move	$2,$6
$L269:
	move	$3,$5
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

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
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lw	$21,72($sp)
	beq	$6,$0,$L271
	move	$20,$4

	move	$19,$5
	move	$16,$6
	.option	pic0
	b	$L274
	.option	pic2
	move	$18,$7

$L275:
	move	$16,$22
$L272:
	beq	$16,$0,$L270
	move	$17,$0

$L274:
	srl	$22,$16,1
	mult	$22,$18
	mflo	$17
	addu	$17,$19,$17
	move	$5,$17
	move	$4,$20
	move	$25,$21
	jalr	$25
	nop

	bltz	$2,$L275
	nop

	blez	$2,$L270
	addu	$19,$17,$18

	addiu	$16,$16,-1
	.option	pic0
	b	$L272
	.option	pic2
	subu	$16,$16,$22

$L271:
	move	$17,$0
$L270:
	move	$2,$17
	lw	$31,52($sp)
	lw	$22,48($sp)
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
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lw	$21,72($sp)
	lw	$20,76($sp)
	beq	$6,$0,$L279
	move	$19,$4

	move	$18,$5
	move	$17,$7
	.option	pic0
	b	$L282
	.option	pic2
	move	$16,$6

$L281:
	sra	$16,$16,1
	beq	$16,$0,$L278
	move	$22,$0

$L282:
	sra	$2,$16,1
	mult	$2,$17
	mflo	$22
	addu	$22,$18,$22
	move	$6,$20
	move	$5,$22
	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	beq	$2,$0,$L278
	nop

	blez	$2,$L281
	nop

	addu	$18,$22,$17
	.option	pic0
	b	$L281
	.option	pic2
	addiu	$16,$16,-1

$L279:
	move	$22,$0
$L278:
	move	$2,$22
	lw	$31,52($sp)
	lw	$22,48($sp)
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
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.set	nomips16
	.set	nomicromips
	.ent	div
	.type	div, @function
div:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	bne	$6,$0,1f
	div	$0,$5,$6
	break	7
1:
	mfhi	$5
	mflo	$3
	sw	$3,0($4)
	jr	$31
	sw	$5,4($4)

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
	move	$2,$4
	bltz	$4,$L289
	move	$3,$5

$L287:
	jr	$31
	nop

$L289:
	sltu	$2,$0,$5
	subu	$4,$0,$4
	subu	$2,$4,$2
	jr	$31
	subu	$3,$0,$5

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
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$16,$4
	move	$18,$6
	move	$17,$7
	lw	$25,%call16(__divdi3)($28)
	lw	$7,60($sp)
	lw	$6,56($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$3,4($16)
	sw	$2,0($16)
	lw	$25,%call16(__moddi3)($28)
	lw	$7,60($sp)
	lw	$6,56($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$3,12($16)
	sw	$2,8($16)
	move	$2,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

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
	bltz	$4,$L294
	move	$2,$4

$L293:
	jr	$31
	nop

$L294:
	jr	$31
	subu	$2,$0,$4

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	bne	$6,$0,1f
	div	$0,$5,$6
	break	7
1:
	mfhi	$5
	mflo	$3
	sw	$3,0($4)
	jr	$31
	sw	$5,4($4)

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
	move	$2,$4
	bltz	$4,$L299
	move	$3,$5

$L297:
	jr	$31
	nop

$L299:
	sltu	$2,$0,$5
	subu	$4,$0,$4
	subu	$2,$4,$2
	jr	$31
	subu	$3,$0,$5

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
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$16,$4
	move	$18,$6
	move	$17,$7
	lw	$25,%call16(__divdi3)($28)
	lw	$7,60($sp)
	lw	$6,56($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$3,4($16)
	sw	$2,0($16)
	lw	$25,%call16(__moddi3)($28)
	lw	$7,60($sp)
	lw	$6,56($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$3,12($16)
	sw	$2,8($16)
	move	$2,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

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
$L310:
	lw	$3,0($4)
	nop
	beq	$3,$0,$L312
	move	$2,$4

	bne	$5,$3,$L310
	addiu	$4,$4,4

	addiu	$4,$4,-4
	beq	$3,$0,$L311
	move	$2,$4

$L302:
	jr	$31
	nop

$L311:
$L312:
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
	.option	pic0
	b	$L320
	nop

	.option	pic2
$L316:
	addiu	$5,$5,4
$L320:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L315
	nop

	beq	$2,$0,$L315
	nop

	bne	$3,$0,$L316
	addiu	$4,$4,4

$L315:
	slt	$4,$2,$3
	bne	$4,$0,$L318
	nop

	jr	$31
	slt	$2,$3,$2

$L318:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

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
$L322:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$6,-4($5)
	nop
	bne	$6,$0,$L322
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
	lw	$2,0($4)
	nop
	beq	$2,$0,$L325
	move	$2,$4

$L326:
	addiu	$2,$2,4
	lw	$3,0($2)
	nop
	bne	$3,$0,$L326
	nop

$L325:
	subu	$2,$2,$4
	jr	$31
	sra	$2,$2,2

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
$L337:
	beq	$6,$0,$L331
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L331
	nop

	beq	$2,$0,$L331
	nop

	addiu	$6,$6,-1
	addiu	$4,$4,4
	.option	pic0
	b	$L337
	.option	pic2
	addiu	$5,$5,4

$L331:
	beq	$6,$0,$L334
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$4,$2,$3
	bne	$4,$0,$L335
	nop

	jr	$31
	slt	$2,$3,$2

$L334:
	jr	$31
	move	$2,$0

$L335:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

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
	.option	pic0
	b	$L346
	nop

	.option	pic2
$L349:
	addiu	$4,$4,4
$L346:
	beq	$6,$0,$L348
	move	$2,$4

	lw	$2,0($4)
	nop
	bne	$2,$5,$L349
	addiu	$6,$6,-1

	addiu	$6,$6,1
	beq	$6,$0,$L347
	move	$2,$4

$L338:
	jr	$31
	nop

$L347:
$L348:
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
	.option	pic0
	b	$L358
	nop

	.option	pic2
$L359:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L358:
	beq	$6,$0,$L352
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	beq	$3,$2,$L359
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L352:
	beq	$6,$0,$L355
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$4,$2,$3
	bne	$4,$0,$L356
	nop

	jr	$31
	slt	$2,$3,$2

$L355:
	jr	$31
	move	$2,$0

$L356:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

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
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	beq	$6,$0,$L361
	move	$16,$4

	sll	$6,$6,2
	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L361:
	move	$2,$16
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	beq	$4,$5,$L374
	move	$2,$4

	subu	$4,$4,$5
	sll	$7,$6,2
	sltu	$4,$4,$7
	bne	$4,$0,$L365
	addiu	$3,$6,-1

	move	$7,$2
	beq	$6,$0,$L374
	li	$8,-1			# 0xffffffffffffffff

$L366:
	addiu	$5,$5,4
	addiu	$7,$7,4
	lw	$4,-4($5)
	addiu	$3,$3,-1
	bne	$3,$8,$L366
	sw	$4,-4($7)

$L374:
	jr	$31
	nop

$L365:
	beq	$6,$0,$L374
	sll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
$L367:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	addiu	$3,$3,-4
	bne	$3,$7,$L367
	sw	$6,0($4)

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	beq	$6,$0,$L379
	addiu	$3,$6,-1

	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
$L377:
	addiu	$6,$6,4
	addiu	$3,$3,-1
	bne	$3,$7,$L377
	sw	$5,-4($6)

$L379:
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
	beq	$2,$0,$L381
	addu	$2,$4,$6

	beq	$6,$0,$L388
	addu	$5,$5,$6

$L383:
	addiu	$2,$2,-1
	addiu	$5,$5,-1
	lb	$3,0($2)
	bne	$4,$2,$L383
	sb	$3,0($5)

$L388:
	jr	$31
	nop

$L381:
	beq	$4,$5,$L387
	nop

	beq	$6,$0,$L388
	addu	$6,$4,$6

$L384:
	addiu	$4,$4,1
	addiu	$5,$5,1
	lb	$2,-1($4)
	bne	$6,$4,$L384
	sb	$2,-1($5)

$L387:
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
	andi	$2,$6,0x20
	beq	$2,$0,$L390
	srl	$3,$5,1

	sll	$2,$5,$6
	move	$7,$0
$L391:
	subu	$6,$0,$6
	andi	$3,$6,0x3f
	andi	$6,$6,0x20
	beq	$6,$0,$L392
	sll	$6,$4,1

	srl	$5,$4,$3
	move	$4,$0
$L393:
	or	$5,$5,$7
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L390:
	nor	$2,$0,$6
	srl	$3,$3,$2
	sll	$2,$4,$6
	or	$2,$3,$2
	.option	pic0
	b	$L391
	.option	pic2
	sll	$7,$5,$6

$L392:
	nor	$8,$0,$3
	sll	$6,$6,$8
	srl	$5,$5,$3
	or	$5,$6,$5
	.option	pic0
	b	$L393
	.option	pic2
	srl	$4,$4,$3

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
	andi	$2,$6,0x20
	beq	$2,$0,$L395
	sll	$2,$4,1

	srl	$3,$4,$6
	move	$2,$0
$L396:
	subu	$6,$0,$6
	andi	$7,$6,0x3f
	andi	$6,$6,0x20
	beq	$6,$0,$L397
	srl	$6,$5,1

	sll	$4,$5,$7
	move	$5,$0
$L398:
	or	$5,$5,$3
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L395:
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$3,$5,$6
	or	$3,$2,$3
	.option	pic0
	b	$L396
	.option	pic2
	srl	$2,$4,$6

$L397:
	nor	$8,$0,$7
	srl	$6,$6,$8
	sll	$4,$4,$7
	or	$4,$6,$4
	.option	pic0
	b	$L398
	.option	pic2
	sll	$5,$5,$7

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
	or	$2,$4,$2

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
	or	$2,$4,$2

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
	sll	$2,$4,$5
	subu	$5,$0,$5
	srl	$4,$4,$5
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
	srl	$2,$4,$5
	subu	$5,$0,$5
	sll	$4,$4,$5
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
	andi	$5,$5,0xf
	sll	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0xf
	srl	$4,$4,$5
	or	$2,$2,$4
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
	andi	$5,$5,0xf
	srl	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0xf
	sll	$4,$4,$5
	or	$2,$2,$4
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
	andi	$5,$5,0x7
	sll	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0x7
	srl	$4,$4,$5
	or	$2,$2,$4
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
	andi	$5,$5,0x7
	srl	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0x7
	sll	$4,$4,$5
	or	$2,$2,$4
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
	srl	$2,$4,8
	sll	$4,$4,8
	or	$2,$2,$4
	jr	$31
	andi	$2,$2,0xffff

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
	sll	$2,$4,24
	srl	$3,$4,24
	or	$2,$2,$3
	srl	$3,$4,8
	andi	$3,$3,0xff00
	or	$2,$2,$3
	sll	$4,$4,8
	li	$3,16711680			# 0xff0000
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

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
	sll	$2,$5,24
	srl	$3,$4,24
	srl	$6,$4,8
	andi	$6,$6,0xff00
	or	$3,$3,$6
	sll	$7,$4,8
	srl	$6,$5,24
	or	$6,$7,$6
	li	$7,16711680			# 0xff0000
	and	$6,$6,$7
	or	$3,$3,$6
	sll	$4,$4,24
	or	$3,$3,$4
	sll	$6,$5,8
	srl	$4,$5,24
	or	$4,$2,$4
	srl	$5,$5,8
	andi	$5,$5,0xff00
	or	$4,$4,$5
	and	$2,$6,$7
	jr	$31
	or	$2,$4,$2

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
	srl	$3,$4,$2
$L415:
	andi	$3,$3,0x1
	bne	$3,$0,$L416
	addiu	$2,$2,1

	bne	$2,$5,$L415
	srl	$3,$4,$2

	move	$2,$0
$L416:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L423
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,$L422
	nop

	li	$2,1			# 0x1
$L419:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,$L419
	addiu	$2,$2,1

$L423:
	jr	$31
	nop

$L422:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi($LC0)
	lwc1	$f0,%lo($LC0)($2)
	nop
	c.lt.s	$f12,$f0
	nop
	bc1t	$L429
	li	$2,1			# 0x1

	lui	$3,%hi($LC1)
	lwc1	$f0,%lo($LC1)($3)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1t	$L429
	nop

	jr	$31
	move	$2,$0

$L429:
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
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L435
	li	$2,1			# 0x1

	lui	$3,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1t	$L435
	nop

	jr	$31
	move	$2,$0

$L435:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L441
	li	$2,1			# 0x1

	lui	$3,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1t	$L441
	nop

	jr	$31
	move	$2,$0

$L441:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mtc1	$5,$f0
	nop
	cvt.d.w	$f0,$f0
	swc1	$f0,4($4)
	jr	$31
	swc1	$f1,0($4)

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
	c.un.s	$f12,$f12
	nop
	bc1t	$L453
	mov.s	$f0,$f12

	add.s	$f2,$f12,$f12
	c.eq.s	$f2,$f12
	nop
	bc1t	$L453
	nop

	bltz	$5,$L450
	nop

	lui	$2,%hi($LC4)
	lwc1	$f2,%lo($LC4)($2)
	.option	pic0
	b	$L451
	.option	pic2
	andi	$2,$5,0x1

$L450:
	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5)($2)
	.option	pic0
	b	$L451
	.option	pic2
	andi	$2,$5,0x1

$L452:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L453
	andi	$2,$5,0x1

	mul.s	$f2,$f2,$f2
$L451:
	beq	$2,$0,$L452
	srl	$2,$5,31

	.option	pic0
	b	$L452
	.option	pic2
	mul.s	$f0,$f0,$f2

$L453:
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
	c.un.d	$f12,$f12
	nop
	bc1t	$L464
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f2,$f12
	nop
	bc1t	$L464
	nop

	bltz	$6,$L461
	nop

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L462
	.option	pic2
	andi	$2,$6,0x1

$L461:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L462
	.option	pic2
	andi	$2,$6,0x1

$L463:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L464
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L462:
	beq	$2,$0,$L463
	srl	$2,$6,31

	.option	pic0
	b	$L463
	.option	pic2
	mul.d	$f0,$f0,$f2

$L464:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.d	$f12,$f12
	nop
	bc1t	$L475
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f2,$f12
	nop
	bc1t	$L475
	nop

	bltz	$6,$L472
	nop

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L473
	.option	pic2
	andi	$2,$6,0x1

$L472:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L473
	.option	pic2
	andi	$2,$6,0x1

$L474:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L475
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L473:
	beq	$2,$0,$L474
	srl	$2,$6,31

	.option	pic0
	b	$L474
	.option	pic2
	mul.d	$f0,$f0,$f2

$L475:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L480
	move	$2,$4

	addu	$6,$5,$6
	move	$3,$4
$L478:
	addiu	$5,$5,1
	addiu	$3,$3,1
	lbu	$7,-1($3)
	lbu	$8,-1($5)
	nop
	xor	$7,$7,$8
	bne	$6,$5,$L478
	sb	$7,-1($3)

$L480:
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
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$18,$4
	move	$17,$5
	move	$16,$6
	.option	pic0
	jal	strlen
	nop

	.option	pic2
	beq	$16,$0,$L483
	addu	$2,$18,$2

$L482:
	lb	$3,0($17)
	nop
	beq	$3,$0,$L483
	sb	$3,0($2)

	addiu	$17,$17,1
	addiu	$16,$16,-1
	bne	$16,$0,$L482
	addiu	$2,$2,1

$L483:
	bne	$16,$0,$L485
	nop

	sb	$0,0($2)
$L485:
	move	$2,$18
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

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
	beq	$5,$0,$L498
	move	$2,$0

	addu	$3,$4,$2
$L496:
	lb	$3,0($3)
	nop
	bne	$3,$0,$L491
	nop

$L488:
$L498:
	jr	$31
	nop

$L491:
	addiu	$2,$2,1
	bne	$5,$2,$L496
	addu	$3,$4,$2

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
	lb	$7,0($4)
	nop
	beq	$7,$0,$L506
	move	$2,$4

	move	$3,$5
$L503:
	lb	$6,0($3)
	nop
	beq	$6,$0,$L507
	nop

	bne	$6,$7,$L503
	addiu	$3,$3,1

$L501:
	jr	$31
	nop

$L506:
	jr	$31
	move	$2,$0

$L507:
	addiu	$2,$2,1
	lb	$7,0($2)
	nop
	bne	$7,$0,$L503
	move	$3,$5

	jr	$31
	move	$2,$0

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
	.option	pic0
	b	$L510
	.option	pic2
	move	$2,$0

$L509:
	beq	$3,$0,$L514
	addiu	$4,$4,1

$L510:
	lb	$3,0($4)
	nop
	bne	$3,$5,$L509
	nop

	.option	pic0
	b	$L509
	.option	pic2
	move	$2,$4

$L514:
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
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$16,$4
	move	$17,$5
	move	$4,$5
	.option	pic0
	jal	strlen
	nop

	.option	pic2
	beq	$2,$0,$L515
	move	$18,$2

	lb	$19,0($17)
	nop
$L517:
	move	$5,$19
	move	$4,$16
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	beq	$2,$0,$L515
	move	$16,$2

	move	$6,$18
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	beq	$2,$0,$L521
	move	$2,$16

	.option	pic0
	b	$L517
	.option	pic2
	addiu	$16,$16,1

$L515:
	move	$2,$16
$L521:
	lw	$31,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	swc1	$f12,20($sp)
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L532
	swc1	$f13,16($sp)

$L523:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L526
	nop

	c.lt.d	$f14,$f0
	nop
	bc1t	$L533
	li	$2,-2147483648			# 0xffffffff80000000

$L526:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

$L532:
	c.lt.d	$f0,$f14
	nop
	bc1f	$L523
	li	$2,-2147483648			# 0xffffffff80000000

$L533:
	lw	$3,16($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	swc1	$f0,20($sp)
	.option	pic0
	b	$L526
	.option	pic2
	swc1	$f1,16($sp)

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
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	beq	$7,$0,$L538
	move	$16,$4

	sltu	$2,$5,$7
	bne	$2,$0,$L540
	subu	$17,$5,$7

	addu	$17,$4,$17
	sltu	$2,$17,$4
	bne	$2,$0,$L540
	addiu	$21,$7,-1

	lb	$19,0($6)
	.option	pic0
	b	$L537
	.option	pic2
	addiu	$20,$6,1

$L536:
	sltu	$2,$17,$16
	bne	$2,$0,$L534
	move	$18,$0

$L537:
	lb	$2,0($16)
	move	$18,$16
	bne	$2,$19,$L536
	addiu	$16,$16,1

	move	$6,$21
	move	$5,$20
	move	$4,$16
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	bne	$2,$0,$L536
	move	$2,$18

	.option	pic0
	b	$L543
	nop

	.option	pic2
$L538:
	.option	pic0
	b	$L534
	.option	pic2
	move	$18,$4

$L540:
	move	$18,$0
$L534:
	move	$2,$18
$L543:
	lw	$31,52($sp)
	lw	$21,48($sp)
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
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$16,$6
	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addu	$2,$2,$16
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	swc1	$f12,20($sp)
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L568
	swc1	$f13,16($sp)

	move	$3,$0
$L547:
	lui	$2,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($2)
	nop
	lwc1	$f1,%lo($LC8)($2)
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.le.d	$f0,$f2
	nop
	bc1f	$L565
	move	$2,$0

	lui	$4,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($4)
	nop
	lwc1	$f3,%lo($LC7)($4)
$L551:
	addiu	$2,$2,1
	lwc1	$f4,20($sp)
	nop
	lwc1	$f5,16($sp)
	nop
	mul.d	$f4,$f4,$f2
	swc1	$f4,20($sp)
	c.le.d	$f0,$f4
	nop
	bc1t	$L551
	swc1	$f5,16($sp)

$L552:
	beq	$3,$0,$L555
	sw	$2,0($6)

	li	$2,-2147483648			# 0xffffffff80000000
	lw	$3,16($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	swc1	$f0,20($sp)
	swc1	$f1,16($sp)
$L555:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

$L568:
	li	$2,-2147483648			# 0xffffffff80000000
	lw	$3,16($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	swc1	$f0,20($sp)
	swc1	$f1,16($sp)
	.option	pic0
	b	$L547
	.option	pic2
	li	$3,1			# 0x1

$L565:
	lui	$2,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($2)
	nop
	lwc1	$f1,%lo($LC7)($2)
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L566
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.eq.d	$f2,$f0
	nop
	bc1t	$L552
	move	$2,$0

	lui	$4,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($4)
	nop
	lwc1	$f1,%lo($LC7)($4)
$L554:
	addiu	$2,$2,-1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	add.d	$f2,$f2,$f2
	swc1	$f2,20($sp)
	c.lt.d	$f2,$f0
	nop
	bc1t	$L554
	swc1	$f3,16($sp)

	.option	pic0
	b	$L552
	nop

	.option	pic2
$L566:
	.option	pic0
	b	$L552
	.option	pic2
	move	$2,$0

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
	move	$9,$4
	move	$3,$5
	or	$5,$5,$4
	move	$2,$0
	beq	$5,$0,$L569
	move	$8,$0

$L572:
	andi	$5,$3,0x1
	subu	$4,$0,$5
	and	$5,$4,$6
	and	$4,$4,$7
	addu	$4,$8,$4
	sltu	$8,$4,$8
	addu	$2,$2,$5
	addu	$2,$8,$2
	move	$8,$4
	srl	$4,$7,31
	sll	$6,$6,1
	or	$6,$4,$6
	sll	$4,$9,31
	srl	$3,$3,1
	or	$3,$4,$3
	srl	$9,$9,1
	or	$4,$9,$3
	bne	$4,$0,$L572
	sll	$7,$7,1

$L569:
	jr	$31
	move	$3,$8

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
	sltu	$2,$5,$4
	beq	$2,$0,$L577
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
$L576:
	bltz	$5,$L577
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L577
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,$L576
	nop

	move	$3,$0
$L577:
	bne	$3,$0,$L581
	move	$2,$0

$L579:
	bne	$6,$0,$L588
	nop

$L575:
	jr	$31
	nop

$L580:
	srl	$3,$3,1
	beq	$3,$0,$L579
	srl	$5,$5,1

$L581:
	sltu	$7,$4,$5
	bne	$7,$0,$L580
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L580
	.option	pic2
	or	$2,$2,$3

$L588:
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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$2,$4,7
	beq	$4,$2,$L591
	xor	$3,$4,$2

	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$25,%call16(__clzsi2)($28)
	sll	$4,$3,8
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L591:
	jr	$31
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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	move	$3,$5
	sra	$6,$4,31
	xor	$4,$4,$6
	beq	$2,$6,$L605
	xor	$5,$5,$6

$L600:
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$25,%call16(__clzdi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L605:
	bne	$3,$2,$L600
	li	$2,63			# 0x3f

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L612
	move	$2,$0

$L608:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	bne	$4,$0,$L608
	sll	$5,$5,1

$L612:
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
	srl	$7,$6,3
	li	$10,-8			# 0xfffffffffffffff8
	sltu	$2,$4,$5
	bne	$2,$0,$L614
	and	$10,$6,$10

	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L614
	addiu	$2,$6,-1

	beq	$6,$0,$L626
	li	$7,-1			# 0xffffffffffffffff

$L615:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L615
	sb	$6,0($3)

$L626:
	jr	$31
	nop

$L614:
	beq	$7,$0,$L617
	move	$2,$5

	move	$3,$4
	sll	$7,$7,3
	addu	$7,$7,$5
$L618:
	lw	$9,4($2)
	lw	$8,0($2)
	sw	$9,4($3)
	sw	$8,0($3)
	addiu	$2,$2,8
	bne	$2,$7,$L618
	addiu	$3,$3,8

$L617:
	sltu	$2,$10,$6
	beq	$2,$0,$L626
	addu	$2,$5,$10

	addu	$4,$4,$10
	addu	$5,$5,$6
$L619:
	lb	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$2,$5,$L619
	addiu	$4,$4,1

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
	bne	$2,$0,$L628
	srl	$8,$6,1

	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L628
	addiu	$2,$6,-1

	beq	$6,$0,$L638
	li	$7,-1			# 0xffffffffffffffff

$L629:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L629
	sb	$6,0($3)

$L638:
	jr	$31
	nop

$L628:
	beq	$8,$0,$L631
	move	$2,$5

	move	$3,$4
	sll	$8,$8,1
	addu	$8,$8,$5
$L632:
	lh	$7,0($2)
	nop
	sh	$7,0($3)
	addiu	$2,$2,2
	bne	$2,$8,$L632
	addiu	$3,$3,2

$L631:
	andi	$2,$6,0x1
	beq	$2,$0,$L638
	addu	$5,$5,$6

	lb	$2,-1($5)
	addu	$4,$4,$6
	jr	$31
	sb	$2,-1($4)

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
	li	$9,-4			# 0xfffffffffffffffc
	sltu	$2,$4,$5
	bne	$2,$0,$L640
	and	$9,$6,$9

	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L640
	addiu	$2,$6,-1

	beq	$6,$0,$L652
	li	$7,-1			# 0xffffffffffffffff

$L641:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L641
	sb	$6,0($3)

$L652:
	jr	$31
	nop

$L640:
	beq	$8,$0,$L643
	move	$2,$5

	move	$3,$4
	sll	$8,$8,2
	addu	$8,$8,$5
$L644:
	lw	$7,0($2)
	nop
	sw	$7,0($3)
	addiu	$2,$2,4
	bne	$2,$8,$L644
	addiu	$3,$3,4

$L643:
	sltu	$2,$9,$6
	beq	$2,$0,$L652
	addu	$2,$5,$9

	addu	$4,$4,$9
	addu	$5,$5,$6
$L645:
	lb	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$2,$5,$L645
	addiu	$4,$4,1

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
	bne	$5,$0,1f
	div	$0,$4,$5
	break	7
1:
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
	mtc1	$4,$f0
	bltz	$4,$L657
	cvt.d.w	$f0,$f0

$L655:
	jr	$31
	nop

$L657:
	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	jr	$31
	add.d	$f0,$f0,$f2

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
	mtc1	$4,$f0
	bltz	$4,$L661
	cvt.d.w	$f0,$f0

$L659:
	jr	$31
	cvt.s.d	$f0,$f0

$L661:
	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	.option	pic0
	b	$L659
	.option	pic2
	add.d	$f0,$f0,$f2

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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$25,%call16(__floatundidf)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$31,28($sp)
	nop
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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$25,%call16(__floatundisf)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__floatundisf
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$31,28($sp)
	nop
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$5,$0,1f
	divu	$0,$4,$5
	break	7
1:
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
	li	$5,15			# 0xf
	li	$6,16			# 0x10
	subu	$3,$5,$2
$L671:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,$L672
	nop

	addiu	$2,$2,1
	bne	$2,$6,$L671
	subu	$3,$5,$2

$L672:
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
	sra	$3,$4,$2
$L677:
	andi	$3,$3,0x1
	bne	$3,$0,$L678
	nop

	addiu	$2,$2,1
	bne	$2,$5,$L677
	sra	$3,$4,$2

$L678:
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
	lui	$2,%hi($LC10)
	lwc1	$f0,%lo($LC10)($2)
	nop
	c.le.s	$f0,$f12
	nop
	bc1t	$L686
	nop

	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	jr	$31
	nop

$L686:
	sub.s	$f12,$f12,$f0
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	li	$3,32768			# 0x8000
	jr	$31
	addu	$2,$2,$3

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
	li	$6,16			# 0x10
$L688:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,$L688
	addu	$2,$2,$5

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
	li	$6,16			# 0x10
$L691:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,$L691
	addu	$2,$2,$5

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
	beq	$4,$0,$L699
	move	$2,$0

$L695:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	bne	$4,$0,$L695
	sll	$5,$5,1

$L699:
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
	beq	$4,$0,$L707
	move	$2,$0

	beq	$5,$0,$L706
	nop

$L702:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$2,$3
	srl	$5,$5,1
	bne	$5,$0,$L702
	sll	$4,$4,1

$L707:
	jr	$31
	nop

$L706:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beq	$2,$0,$L710
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
$L709:
	bltz	$5,$L710
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L710
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,$L709
	nop

	move	$3,$0
$L710:
	bne	$3,$0,$L714
	move	$2,$0

$L712:
	bne	$6,$0,$L721
	nop

$L708:
	jr	$31
	nop

$L713:
	srl	$3,$3,1
	beq	$3,$0,$L712
	srl	$5,$5,1

$L714:
	sltu	$7,$4,$5
	bne	$7,$0,$L713
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L713
	.option	pic2
	or	$2,$2,$3

$L721:
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
	c.lt.s	$f12,$f14
	nop
	bc1t	$L725
	nop

	c.lt.s	$f14,$f12
	nop
	bc1t	$L726
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

$L725:
	li	$2,-1			# 0xffffffffffffffff
$L726:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.d	$f12,$f14
	nop
	bc1t	$L730
	nop

	c.lt.d	$f14,$f12
	nop
	bc1t	$L731
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

$L730:
	li	$2,-1			# 0xffffffffffffffff
$L731:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mult	$4,$5
	mflo	$3
	mfhi	$2
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
	multu	$4,$5
	mflo	$3
	mfhi	$2
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
	bltz	$5,$L742
	nop

	move	$7,$0
$L735:
	beq	$5,$0,$L736
	move	$2,$0

	li	$6,32			# 0x20
	andi	$3,$5,0x1
$L743:
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$2,$3
	sra	$5,$5,1
	beq	$5,$0,$L736
	sll	$4,$4,1

	addiu	$6,$6,-1
	andi	$6,$6,0x00ff
	bne	$6,$0,$L743
	andi	$3,$5,0x1

$L736:
	beq	$7,$0,$L744
	nop

	subu	$2,$0,$2
$L744:
	jr	$31
	nop

$L742:
	subu	$5,$0,$5
	.option	pic0
	b	$L735
	.option	pic2
	li	$7,1			# 0x1

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
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	bltz	$4,$L751
	sw	$16,24($sp)

	move	$16,$0
$L746:
	bltz	$5,$L752
	nop

$L747:
	move	$6,$0
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L745
	nop

	subu	$2,$0,$2
$L745:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

$L751:
	subu	$4,$0,$4
	.option	pic0
	b	$L746
	.option	pic2
	li	$16,1			# 0x1

$L752:
	subu	$5,$0,$5
	.option	pic0
	b	$L747
	.option	pic2
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
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$16,24($sp)
	bltz	$4,$L759
	move	$2,$5

	move	$16,$0
$L754:
	bltz	$2,$L760
	move	$5,$2

$L755:
	li	$6,1			# 0x1
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L753
	nop

	subu	$2,$0,$2
$L753:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

$L759:
	subu	$4,$0,$4
	.option	pic0
	b	$L754
	.option	pic2
	li	$16,1			# 0x1

$L760:
	.option	pic0
	b	$L755
	.option	pic2
	subu	$5,$0,$2

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
	sltu	$2,$5,$4
	beq	$2,$0,$L763
	li	$3,1			# 0x1

	li	$2,16			# 0x10
	li	$3,1			# 0x1
	sll	$7,$5,16
$L775:
	sra	$7,$7,16
	bltz	$7,$L763
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	sltu	$7,$5,$4
	beq	$7,$0,$L763
	andi	$3,$3,0xffff

	addiu	$2,$2,-1
	bne	$2,$0,$L775
	sll	$7,$5,16

	move	$3,$0
$L763:
	bne	$3,$0,$L767
	move	$2,$0

$L765:
	bne	$6,$0,$L774
	nop

$L768:
	jr	$31
	nop

$L766:
	srl	$3,$3,1
	beq	$3,$0,$L765
	srl	$5,$5,1

$L767:
	sltu	$7,$4,$5
	bne	$7,$0,$L766
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$2,$3,$2
	.option	pic0
	b	$L766
	.option	pic2
	andi	$2,$2,0xffff

$L774:
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
	sltu	$2,$5,$4
	beq	$2,$0,$L778
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
$L777:
	bltz	$5,$L778
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L778
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,$L777
	nop

	move	$3,$0
$L778:
	bne	$3,$0,$L782
	move	$2,$0

$L780:
	bne	$6,$0,$L789
	nop

$L776:
	jr	$31
	nop

$L781:
	srl	$3,$3,1
	beq	$3,$0,$L780
	srl	$5,$5,1

$L782:
	sltu	$7,$4,$5
	bne	$7,$0,$L781
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L781
	.option	pic2
	or	$2,$2,$3

$L789:
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
	andi	$2,$6,0x20
	beq	$2,$0,$L791
	sll	$2,$5,$6

	jr	$31
	move	$3,$0

$L791:
	beq	$6,$0,$L794
	nop

	sll	$3,$5,$6
	subu	$2,$0,$6
	srl	$5,$5,$2
	sll	$2,$4,$6
	jr	$31
	or	$2,$5,$2

$L794:
	move	$2,$4
	jr	$31
	move	$3,$5

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x20
	beq	$2,$0,$L796
	sra	$2,$4,31

	sra	$5,$4,$6
$L798:
	jr	$31
	move	$3,$5

$L796:
	beq	$6,$0,$L799
	nop

	sra	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L798
	.option	pic2
	or	$5,$4,$5

$L799:
	.option	pic0
	b	$L798
	.option	pic2
	move	$2,$4

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$3,$4,24
	sll	$2,$5,24
	srl	$6,$4,8
	andi	$6,$6,0xff00
	or	$3,$3,$6
	sll	$7,$4,8
	srl	$6,$5,24
	or	$6,$7,$6
	li	$7,16711680			# 0xff0000
	and	$6,$6,$7
	or	$3,$3,$6
	sll	$4,$4,24
	or	$3,$3,$4
	sll	$6,$5,8
	srl	$4,$5,24
	or	$4,$2,$4
	srl	$5,$5,8
	andi	$5,$5,0xff00
	or	$4,$4,$5
	and	$2,$6,$7
	jr	$31
	or	$2,$4,$2

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
	srl	$2,$4,24
	sll	$3,$4,24
	or	$2,$2,$3
	srl	$3,$4,8
	andi	$3,$3,0xff00
	or	$2,$2,$3
	sll	$4,$4,8
	li	$3,16711680			# 0xff0000
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

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
	li	$5,65536			# 0x10000
	sltu	$5,$4,$5
	sll	$5,$5,4
	li	$2,16			# 0x10
	subu	$2,$2,$5
	srl	$3,$4,$2
	andi	$2,$3,0xff00
	sltu	$2,$2,1
	sll	$2,$2,3
	li	$4,8			# 0x8
	subu	$4,$4,$2
	srl	$3,$3,$4
	addu	$4,$2,$5
	andi	$2,$3,0xf0
	sltu	$2,$2,1
	sll	$2,$2,2
	li	$5,4			# 0x4
	subu	$5,$5,$2
	srl	$3,$3,$5
	addu	$5,$2,$4
	andi	$4,$3,0xc
	sltu	$4,$4,1
	sll	$4,$4,1
	li	$2,2			# 0x2
	subu	$6,$2,$4
	srl	$3,$3,$6
	srl	$6,$3,1
	andi	$6,$6,0x1
	bne	$6,$0,$L803
	nop

	subu	$2,$2,$3
$L804:
	addu	$4,$4,$5
	jr	$31
	addu	$2,$2,$4

$L803:
	.option	pic0
	b	$L804
	.option	pic2
	move	$2,$0

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$4,$6
	bne	$2,$0,$L809
	slt	$4,$6,$4

	bne	$4,$0,$L808
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L809
	sltu	$5,$7,$5

	bne	$5,$0,$L810
	nop

	jr	$31
	li	$2,1			# 0x1

$L808:
	jr	$31
	li	$2,2			# 0x2

$L809:
	jr	$31
	move	$2,$0

$L810:
	jr	$31
	li	$2,2			# 0x2

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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	.option	pic0
	jal	__cmpdi2
	nop

	.option	pic2
	addiu	$2,$2,-1
	lw	$31,28($sp)
	nop
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$4,0xffff
	sltu	$5,$5,1
	sll	$5,$5,4
	srl	$3,$4,$5
	andi	$2,$3,0xff
	sltu	$2,$2,1
	sll	$2,$2,3
	srl	$3,$3,$2
	addu	$4,$2,$5
	andi	$2,$3,0xf
	sltu	$2,$2,1
	sll	$2,$2,2
	srl	$3,$3,$2
	addu	$5,$2,$4
	andi	$4,$3,0x3
	sltu	$4,$4,1
	sll	$4,$4,1
	srl	$3,$3,$4
	andi	$3,$3,0x3
	nor	$2,$0,$3
	andi	$2,$2,0x1
	srl	$3,$3,1
	li	$6,2			# 0x2
	subu	$3,$6,$3
	subu	$2,$0,$2
	and	$2,$2,$3
	addu	$4,$4,$5
	jr	$31
	addu	$2,$2,$4

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x20
	beq	$2,$0,$L815
	move	$2,$0

	srl	$5,$4,$6
$L817:
	jr	$31
	move	$3,$5

$L815:
	beq	$6,$0,$L818
	nop

	srl	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L817
	.option	pic2
	or	$5,$4,$5

$L818:
	.option	pic0
	b	$L817
	.option	pic2
	move	$2,$4

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$4,0xffff
	andi	$3,$5,0xffff
	mult	$2,$3
	mflo	$6
	srl	$7,$6,16
	srl	$4,$4,16
	mult	$3,$4
	mflo	$3
	addu	$3,$3,$7
	andi	$7,$3,0xffff
	srl	$5,$5,16
	mult	$2,$5
	mflo	$2
	addu	$2,$2,$7
	andi	$6,$6,0xffff
	sll	$7,$2,16
	addu	$6,$6,$7
	srl	$3,$3,16
	mult	$4,$5
	mflo	$4
	addu	$3,$3,$4
	srl	$2,$2,16
	addu	$2,$3,$2
	jr	$31
	move	$3,$6

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
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$19,$4
	move	$16,$5
	move	$18,$6
	move	$17,$7
	move	$5,$7
	move	$4,$16
	.option	pic0
	jal	__muldsi3
	nop

	.option	pic2
	mult	$17,$19
	mflo	$4
	nop
	nop
	mult	$16,$18
	mflo	$5
	addu	$4,$4,$5
	addu	$2,$4,$2
	lw	$31,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	subu	$3,$0,$5
	sltu	$5,$0,$5
	subu	$2,$0,$4
	jr	$31
	subu	$2,$2,$5

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	xor	$4,$4,$5
	srl	$3,$4,16
	xor	$3,$3,$4
	srl	$2,$3,8
	xor	$2,$2,$3
	srl	$3,$2,4
	xor	$3,$3,$2
	andi	$3,$3,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	jr	$31
	andi	$2,$2,0x1

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,16
	xor	$2,$2,$4
	srl	$4,$2,8
	xor	$4,$4,$2
	srl	$3,$4,4
	xor	$3,$3,$4
	andi	$3,$3,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
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
	sll	$3,$4,31
	srl	$2,$5,1
	or	$2,$3,$2
	srl	$6,$4,1
	li	$3,1431633920			# 0x55550000
	addiu	$3,$3,21845
	and	$6,$6,$3
	and	$2,$2,$3
	subu	$2,$5,$2
	sltu	$5,$5,$2
	subu	$4,$4,$6
	subu	$4,$4,$5
	sll	$5,$4,30
	srl	$3,$2,2
	or	$3,$5,$3
	srl	$6,$4,2
	li	$5,858980352			# 0x33330000
	addiu	$5,$5,13107
	and	$6,$6,$5
	and	$3,$3,$5
	and	$4,$4,$5
	and	$2,$2,$5
	addu	$2,$3,$2
	sltu	$3,$2,$3
	addu	$4,$6,$4
	addu	$4,$3,$4
	sll	$5,$4,28
	srl	$3,$2,4
	or	$3,$5,$3
	srl	$5,$4,4
	addu	$2,$3,$2
	sltu	$3,$2,$3
	addu	$4,$5,$4
	addu	$3,$3,$4
	li	$4,252641280			# 0xf0f0000
	addiu	$4,$4,3855
	and	$3,$3,$4
	and	$2,$2,$4
	addu	$3,$3,$2
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
	addu	$3,$3,$4
	srl	$2,$3,4
	addu	$2,$2,$3
	li	$3,252641280			# 0xf0f0000
	addiu	$3,$3,3855
	and	$2,$2,$3
	srl	$3,$2,16
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	jr	$31
	andi	$2,$2,0x3f

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($3)
	nop
	lwc1	$f1,%lo($LC8)($3)
	.option	pic0
	b	$L830
	.option	pic2
	move	$2,$6

$L834:
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L829
	nop

	mul.d	$f12,$f12,$f12
$L830:
	andi	$3,$2,0x1
	beq	$3,$0,$L834
	srl	$3,$2,31

	.option	pic0
	b	$L834
	.option	pic2
	mul.d	$f0,$f0,$f12

$L829:
	bltz	$6,$L833
	lui	$2,%hi($LC8)

$L827:
	jr	$31
	nop

$L833:
	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	jr	$31
	div.d	$f0,$f2,$f0

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
	lui	$3,%hi($LC11)
	lwc1	$f0,%lo($LC11)($3)
	.option	pic0
	b	$L838
	.option	pic2
	move	$2,$5

$L842:
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L837
	nop

	mul.s	$f12,$f12,$f12
$L838:
	andi	$3,$2,0x1
	beq	$3,$0,$L842
	srl	$3,$2,31

	.option	pic0
	b	$L842
	.option	pic2
	mul.s	$f0,$f0,$f12

$L837:
	bltz	$5,$L841
	lui	$2,%hi($LC11)

$L835:
	jr	$31
	nop

$L841:
	lwc1	$f2,%lo($LC11)($2)
	jr	$31
	div.s	$f0,$f2,$f0

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
	sltu	$2,$4,$6
	bne	$2,$0,$L847
	sltu	$4,$6,$4

	bne	$4,$0,$L846
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L847
	sltu	$5,$7,$5

	bne	$5,$0,$L848
	nop

	jr	$31
	li	$2,1			# 0x1

$L846:
	jr	$31
	li	$2,2			# 0x2

$L847:
	jr	$31
	move	$2,$0

$L848:
	jr	$31
	li	$2,2			# 0x2

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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	.option	pic0
	jal	__ucmpdi2
	nop

	.option	pic2
	addiu	$2,$2,-1
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.local	seed
	.comm	seed,8,8
	.rdata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr"
	.ascii	"stuvwxyz\000"
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
	$LC4 = $LC6
	.section	.rodata.cst4
	.align	2
$LC5:
	.word	1056964608
	.section	.rodata.cst8
	.align	3
$LC6:
	.word	1073741824
	.word	0
	.align	3
$LC7:
	.word	1071644672
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
