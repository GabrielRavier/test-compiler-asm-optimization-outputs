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

	addu	$3,$5,$6
	.option	pic0
	b	$L3
	.option	pic2
	addu	$6,$4,$6

$L4:
	addiu	$6,$6,-1
	lb	$7,0($3)
	nop
	sb	$7,0($6)
$L3:
	bne	$3,$5,$L4
	addiu	$3,$3,-1

$L9:
	jr	$31
	nop

$L2:
	beq	$4,$5,$L9
	addu	$7,$4,$6

	move	$3,$5
	.option	pic0
	b	$L6
	.option	pic2
	move	$6,$4

$L7:
	addiu	$6,$6,1
	lb	$4,-1($3)
	nop
	sb	$4,-1($6)
$L6:
	bne	$6,$7,$L7
	addiu	$3,$3,1

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
	.option	pic0
	b	$L11
	.option	pic2
	andi	$6,$6,0x00ff

$L13:
	addiu	$7,$7,-1
	addiu	$5,$5,1
	addiu	$4,$4,1
$L11:
	beq	$7,$0,$L12
	nop

	lbu	$2,0($5)
	nop
	bne	$6,$2,$L13
	sb	$2,0($4)

$L12:
	beq	$7,$0,$L15
	nop

	jr	$31
	addiu	$2,$4,1

$L15:
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
	.option	pic0
	b	$L17
	.option	pic2
	andi	$5,$5,0x00ff

$L22:
	addiu	$6,$6,-1
$L17:
	beq	$6,$0,$L18
	nop

	lbu	$2,0($4)
	nop
	bne	$5,$2,$L22
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L18:
	beq	$6,$0,$L21
	nop

	jr	$31
	move	$2,$4

$L21:
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
	b	$L24
	nop

	.option	pic2
$L29:
	addiu	$4,$4,1
	addiu	$5,$5,1
$L24:
	beq	$6,$0,$L25
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	beq	$3,$2,$L29
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L25:
	beq	$6,$0,$L28
	nop

	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

$L28:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	addu	$6,$4,$6
	.option	pic0
	b	$L31
	.option	pic2
	move	$3,$4

$L32:
	addiu	$3,$3,1
	lbu	$7,-1($5)
	nop
	sb	$7,-1($3)
$L31:
	bne	$3,$6,$L32
	addiu	$5,$5,1

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0x00ff
	addiu	$6,$6,-1
	li	$2,-1			# 0xffffffffffffffff
$L34:
	beq	$6,$2,$L38
	addu	$3,$4,$6

	lbu	$3,0($3)
	nop
	beq	$5,$3,$L39
	addiu	$7,$6,-1

	.option	pic0
	b	$L34
	.option	pic2
	move	$6,$7

$L39:
	jr	$31
	addu	$2,$4,$6

$L38:
	jr	$31
	move	$2,$0

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
	move	$2,$4
	addu	$6,$4,$6
	move	$3,$4
	.option	pic0
	b	$L41
	.option	pic2
	andi	$5,$5,0x00ff

$L42:
	sb	$5,0($3)
	addiu	$3,$3,1
$L41:
	bne	$3,$6,$L42
	nop

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
	.option	pic0
	b	$L44
	.option	pic2
	move	$2,$4

$L45:
	addiu	$5,$5,1
	addiu	$2,$2,1
$L44:
	lb	$3,0($5)
	nop
	bne	$3,$0,$L45
	sb	$3,0($2)

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
	move	$2,$4
	.option	pic0
	b	$L47
	.option	pic2
	andi	$5,$5,0x00ff

$L47:
	lb	$3,0($2)
	nop
	beq	$3,$0,$L50
	nop

	lbu	$3,0($2)
	nop
	bne	$5,$3,$L47
	addiu	$2,$2,1

	addiu	$2,$2,-1
$L50:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$L53:
	lb	$2,0($4)
	nop
	beq	$5,$2,$L54
	nop

	addiu	$4,$4,1
	lb	$2,-1($4)
	nop
	bne	$2,$0,$L53
	nop

	jr	$31
	nop

$L54:
	jr	$31
	move	$2,$4

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
	b	$L57
	nop

	.option	pic2
$L60:
	addiu	$5,$5,1
$L57:
	lb	$3,0($4)
	lb	$2,0($5)
	nop
	bne	$3,$2,$L58
	nop

	bne	$3,$0,$L60
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L58:
	lbu	$3,0($4)
	lbu	$2,0($5)
	jr	$31
	subu	$2,$3,$2

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
	.option	pic0
	b	$L62
	.option	pic2
	move	$2,$4

$L63:
	addiu	$2,$2,1
$L62:
	lb	$5,0($2)
	nop
	bne	$5,$0,$L63
	nop

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
	beq	$6,$0,$L69
	addiu	$6,$6,-1

	addu	$2,$4,$6
$L66:
	lbu	$3,0($4)
	nop
	beq	$3,$0,$L67
	nop

	lbu	$3,0($5)
	nop
	beq	$3,$0,$L67
	nop

	beq	$4,$2,$L67
	nop

	lbu	$6,0($4)
	nop
	bne	$6,$3,$L67
	nop

	addiu	$4,$4,1
	.option	pic0
	b	$L66
	.option	pic2
	addiu	$5,$5,1

$L67:
	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

$L69:
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
	move	$2,$4
	.option	pic0
	b	$L71
	.option	pic2
	addu	$6,$4,$6

$L72:
	lb	$3,1($2)
	nop
	sb	$3,0($5)
	lb	$3,0($2)
	nop
	sb	$3,1($5)
	addiu	$5,$5,2
	addiu	$2,$2,2
$L71:
	subu	$3,$6,$2
	slt	$3,$3,2
	beq	$3,$0,$L72
	nop

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
	beq	$4,$2,$L77
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

$L77:
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
	bne	$2,$0,$L81
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

$L81:
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
	beq	$4,$2,$L89
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

$L89:
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
	bne	$2,$0,$L94
	nop

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,$L95
	nop

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L96
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	jr	$31
	sltu	$2,$4,3

$L94:
	jr	$31
	li	$2,1			# 0x1

$L95:
	jr	$31
	li	$2,1			# 0x1

$L96:
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
	bne	$2,$0,$L107
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,$L102
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,$L103
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$4,$2
	sltu	$2,$2,8185
	bne	$2,$0,$L104
	li	$3,1048576			# 0x100000

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L105
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

$L107:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	xori	$2,$2,0x1

$L102:
	jr	$31
	li	$2,1			# 0x1

$L103:
	jr	$31
	li	$2,1			# 0x1

$L104:
	jr	$31
	li	$2,1			# 0x1

$L105:
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
	bne	$2,$0,$L110
	nop

	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

$L110:
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
	bc1t	$L116
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L117
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L120
	nop

	jr	$31
	sub.d	$f0,$f12,$f14

$L116:
	jr	$31
	mov.d	$f0,$f12

$L117:
	jr	$31
	mov.d	$f0,$f14

$L120:
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
	bc1t	$L124
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L125
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L128
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L124:
	jr	$31
	mov.s	$f0,$f12

$L125:
	jr	$31
	mov.s	$f0,$f14

$L128:
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
	bc1t	$L133
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L134
	mov.d	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L131
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L135
	nop

	jr	$31
	nop

$L131:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L138
	nop

	jr	$31
	mov.d	$f0,$f2

$L133:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L134:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L135:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L138:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
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
	bc1t	$L143
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L144
	mov.s	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L141
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L145
	nop

	jr	$31
	nop

$L141:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L149
	nop

	jr	$31
	mov.s	$f0,$f2

$L143:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L144:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L145:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L149:
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
	bc1t	$L155
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L156
	mov.d	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L153
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L157
	nop

	jr	$31
	nop

$L153:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L160
	nop

	jr	$31
	mov.d	$f0,$f2

$L155:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L156:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L157:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L160:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
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
	bc1t	$L165
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L166
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L163
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L167
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
	bc1f	$L170
	nop

	jr	$31
	nop

$L165:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L166:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L167:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L170:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
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
	bc1t	$L175
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L176
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,4($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L173
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L177
	nop

	jr	$31
	mov.s	$f0,$f12

$L173:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L180
	nop

	jr	$31
	nop

$L175:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L176:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L177:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L180:
	lwc1	$f0,4($sp)
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
	bc1t	$L185
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L186
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L183
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L187
	nop

	jr	$31
	mov.d	$f0,$f12

$L183:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L190
	nop

	jr	$31
	nop

$L185:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L186:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L187:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L190:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(s.0)
	addiu	$3,$3,%lo(s.0)
	lui	$5,%hi(digits)
	.option	pic0
	b	$L192
	.option	pic2
	addiu	$5,$5,%lo(digits)

$L193:
	andi	$2,$4,0x3f
	addu	$2,$2,$5
	lb	$2,0($2)
	nop
	sb	$2,0($3)
	addiu	$3,$3,1
	srl	$4,$4,6
$L192:
	bne	$4,$0,$L193
	lui	$2,%hi(s.0)

	sb	$0,0($3)
	jr	$31
	addiu	$2,$2,%lo(s.0)

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$4,$4,-1
	lui	$2,%hi(seed)
	sw	$0,%lo(seed)($2)
	jr	$31
	sw	$4,%lo(seed+4)($2)

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(seed)
	lw	$3,%lo(seed)($4)
	lw	$6,%lo(seed+4)($4)
	li	$2,1284833280			# 0x4c950000
	addiu	$2,$2,32557
	mult	$3,$2
	mflo	$3
	li	$5,1481703424			# 0x58510000
	ori	$5,$5,0xf42d
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
	jr	$31
	srl	$2,$2,1

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
	beq	$5,$0,$L199
	nop

	lw	$2,0($5)
	nop
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L200
	nop

	sw	$4,4($2)
$L200:
	jr	$31
	nop

$L199:
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
	beq	$2,$0,$L202
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L202:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L204
	nop

	lw	$3,0($4)
	nop
	sw	$3,0($2)
$L204:
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
	.frame	$sp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$19,$4
	move	$22,$5
	move	$23,$6
	move	$18,$7
	lw	$21,80($sp)
	lw	$20,0($6)
	move	$17,$5
	.option	pic0
	b	$L206
	.option	pic2
	move	$16,$0

$L207:
	addiu	$16,$16,1
$L206:
	beq	$16,$20,$L211
	move	$5,$17

	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	lw	$28,16($sp)
	bne	$2,$0,$L207
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L208
	.option	pic2
	addu	$2,$22,$2

$L211:
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

	lw	$28,16($sp)
$L208:
	lw	$31,60($sp)
	lw	$23,56($sp)
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
	move	$19,$4
	move	$22,$5
	move	$18,$7
	lw	$21,72($sp)
	lw	$20,0($6)
	move	$17,$5
	.option	pic0
	b	$L213
	.option	pic2
	move	$16,$0

$L214:
	addiu	$16,$16,1
$L213:
	beq	$16,$20,$L218
	move	$5,$17

	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	bne	$2,$0,$L214
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L215
	.option	pic2
	addu	$2,$22,$2

$L218:
	move	$2,$0
$L215:
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
	bltz	$4,$L221
	move	$2,$4

$L220:
	jr	$31
	nop

$L221:
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
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$16,24($sp)
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

	li	$4,1			# 0x1
$L225:
	addiu	$16,$16,1
$L226:
	.option	pic0
	b	$L227
	.option	pic2
	move	$2,$0

$L230:
	.option	pic0
	b	$L225
	.option	pic2
	move	$4,$0

$L231:
	.option	pic0
	b	$L226
	.option	pic2
	move	$4,$0

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
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$16,24($sp)
	.option	pic0
	b	$L235
	.option	pic2
	move	$16,$4

$L236:
	addiu	$16,$16,1
$L235:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L236
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L242
	li	$3,45			# 0x2d

	bne	$2,$3,$L243
	nop

	li	$4,1			# 0x1
$L237:
	addiu	$16,$16,1
$L238:
	.option	pic0
	b	$L239
	.option	pic2
	move	$2,$0

$L242:
	.option	pic0
	b	$L237
	.option	pic2
	move	$4,$0

$L243:
	.option	pic0
	b	$L238
	.option	pic2
	move	$4,$0

$L240:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L239:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L240
	addiu	$16,$16,1

	bne	$4,$0,$L241
	nop

	subu	$2,$0,$2
$L241:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$16,24($sp)
	.option	pic0
	b	$L247
	.option	pic2
	move	$16,$4

$L248:
	addiu	$16,$16,1
$L247:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L248
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L249
	move	$6,$0

	li	$3,45			# 0x2d
	bne	$2,$3,$L250
	nop

	li	$6,1			# 0x1
$L249:
	addiu	$16,$16,1
$L250:
	move	$2,$0
	.option	pic0
	b	$L251
	.option	pic2
	move	$3,$0

	.option	pic0
	b	$L250
	.option	pic2
	move	$6,$0

$L252:
	sll	$4,$2,2
	or	$4,$5,$4
	sll	$5,$3,2
	addu	$3,$5,$3
	sltu	$5,$3,$5
	addu	$4,$4,$2
	addu	$5,$5,$4
	srl	$2,$3,31
	sll	$5,$5,1
	or	$5,$2,$5
	sll	$2,$3,1
	addiu	$16,$16,1
	lb	$3,-1($16)
	nop
	addiu	$3,$3,-48
	sra	$4,$3,31
	subu	$3,$2,$3
	sltu	$2,$2,$3
	subu	$5,$5,$4
	subu	$2,$5,$2
$L251:
	lb	$4,0($16)
	nop
	addiu	$4,$4,-48
	sltu	$4,$4,10
	bne	$4,$0,$L252
	srl	$5,$3,30

	bne	$6,$0,$L253
	sltu	$4,$0,$3

	subu	$2,$0,$2
	subu	$2,$2,$4
	subu	$3,$0,$3
$L253:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	move	$20,$4
	move	$19,$5
	move	$16,$6
	lw	$21,72($sp)
	.option	pic0
	b	$L259
	.option	pic2
	move	$18,$7

$L267:
	srl	$16,$16,1
$L259:
	beq	$16,$0,$L266
	srl	$2,$16,1

	mult	$2,$18
	mflo	$17
	addu	$17,$19,$17
	move	$5,$17
	move	$4,$20
	move	$25,$21
	jalr	$25
	nop

	bltz	$2,$L267
	nop

	blez	$2,$L264
	addu	$19,$17,$18

	srl	$2,$16,1
	addiu	$16,$16,-1
	.option	pic0
	b	$L259
	.option	pic2
	subu	$16,$16,$2

$L266:
	move	$2,$0
$L262:
	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,56

$L264:
	.option	pic0
	b	$L262
	.option	pic2
	move	$2,$17

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
	move	$20,$4
	move	$19,$7
	lw	$22,72($sp)
	lw	$21,76($sp)
	move	$16,$6
	.option	pic0
	b	$L269
	.option	pic2
	move	$18,$5

$L271:
	sra	$16,$16,1
$L269:
	beq	$16,$0,$L275
	sra	$2,$16,1

	mult	$2,$19
	mflo	$17
	addu	$17,$18,$17
	move	$6,$21
	move	$5,$17
	move	$4,$20
	move	$25,$22
	jalr	$25
	nop

	beq	$2,$0,$L273
	nop

	blez	$2,$L271
	nop

	addu	$18,$17,$19
	.option	pic0
	b	$L271
	.option	pic2
	addiu	$16,$16,-1

$L275:
	move	$2,$0
$L270:
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

$L273:
	.option	pic0
	b	$L270
	.option	pic2
	move	$2,$17

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
	bltz	$4,$L280
	move	$3,$5

$L278:
	jr	$31
	nop

$L280:
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
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
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
	lw	$7,68($sp)
	lw	$6,64($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$3
	move	$20,$2
	lw	$25,%call16(__moddi3)($28)
	lw	$7,68($sp)
	lw	$6,64($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$20,0($16)
	sw	$19,4($16)
	sw	$3,12($16)
	sw	$2,8($16)
	move	$2,$16
	lw	$31,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

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
	bltz	$4,$L285
	move	$2,$4

$L284:
	jr	$31
	nop

$L285:
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
	bltz	$4,$L290
	move	$3,$5

$L288:
	jr	$31
	nop

$L290:
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
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
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
	lw	$7,68($sp)
	lw	$6,64($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$3
	move	$20,$2
	lw	$25,%call16(__moddi3)($28)
	lw	$7,68($sp)
	lw	$6,64($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$20,0($16)
	sw	$19,4($16)
	sw	$3,12($16)
	sw	$2,8($16)
	move	$2,$16
	lw	$31,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

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
$L294:
	lw	$2,0($4)
	nop
	beq	$2,$0,$L299
	nop

	bne	$5,$2,$L294
	addiu	$4,$4,4

	addiu	$4,$4,-4
	lw	$2,0($4)
	nop
$L299:
	beq	$2,$0,$L298
	nop

	jr	$31
	move	$2,$4

$L298:
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
	b	$L301
	nop

	.option	pic2
$L306:
	addiu	$5,$5,4
$L301:
	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L302
	nop

	beq	$3,$0,$L302
	nop

	bne	$2,$0,$L306
	addiu	$4,$4,4

	addiu	$4,$4,-4
$L302:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L305
	nop

	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

$L305:
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
$L308:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$6,-4($5)
	nop
	bne	$6,$0,$L308
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
	.option	pic0
	b	$L311
	.option	pic2
	move	$2,$4

$L312:
	addiu	$2,$2,4
$L311:
	lw	$3,0($2)
	nop
	bne	$3,$0,$L312
	nop

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
$L314:
	beq	$6,$0,$L315
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L315
	nop

	beq	$3,$0,$L315
	nop

	beq	$2,$0,$L315
	nop

	addiu	$6,$6,-1
	addiu	$4,$4,4
	.option	pic0
	b	$L314
	.option	pic2
	addiu	$5,$5,4

$L315:
	beq	$6,$0,$L318
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L319
	nop

	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

$L318:
	jr	$31
	move	$2,$0

$L319:
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
	b	$L321
	nop

	.option	pic2
$L326:
	addiu	$4,$4,4
$L321:
	beq	$6,$0,$L322
	nop

	lw	$2,0($4)
	nop
	bne	$5,$2,$L326
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L322:
	beq	$6,$0,$L325
	nop

	jr	$31
	move	$2,$4

$L325:
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
	b	$L328
	nop

	.option	pic2
$L334:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L328:
	beq	$6,$0,$L329
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	beq	$3,$2,$L334
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L329:
	beq	$6,$0,$L332
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L333
	nop

	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

$L332:
	jr	$31
	move	$2,$0

$L333:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	move	$3,$4
	.option	pic0
	b	$L336
	.option	pic2
	li	$8,-1			# 0xffffffffffffffff

$L337:
	addiu	$3,$3,4
	lw	$7,-4($5)
	nop
	sw	$7,-4($3)
$L336:
	addiu	$6,$6,-1
	bne	$6,$8,$L337
	addiu	$5,$5,4

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L346
	move	$2,$4

	subu	$3,$4,$5
	sll	$4,$6,2
	sltu	$3,$3,$4
	beq	$3,$0,$L344
	nop

	addu	$5,$5,$4
	addu	$3,$2,$4
	.option	pic0
	b	$L341
	.option	pic2
	addiu	$6,$2,-4

$L342:
	lw	$4,0($5)
	nop
	sw	$4,0($3)
$L341:
	addiu	$3,$3,-4
	bne	$3,$6,$L342
	addiu	$5,$5,-4

$L346:
	jr	$31
	nop

$L343:
	addiu	$3,$3,4
	lw	$4,-4($5)
	nop
	sw	$4,-4($3)
$L340:
	addiu	$6,$6,-1
	bne	$6,$7,$L343
	addiu	$5,$5,4

	jr	$31
	nop

$L344:
	move	$3,$2
	.option	pic0
	b	$L340
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

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
	move	$3,$4
	.option	pic0
	b	$L348
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L349:
	sw	$5,-4($3)
$L348:
	addiu	$6,$6,-1
	bne	$6,$7,$L349
	addiu	$3,$3,4

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
	beq	$2,$0,$L351
	addu	$2,$4,$6

	.option	pic0
	b	$L352
	.option	pic2
	addu	$5,$5,$6

$L353:
	addiu	$5,$5,-1
	lb	$3,0($2)
	nop
	sb	$3,0($5)
$L352:
	bne	$2,$4,$L353
	addiu	$2,$2,-1

$L358:
	jr	$31
	nop

$L351:
	beq	$4,$5,$L358
	addu	$6,$5,$6

	.option	pic0
	b	$L355
	.option	pic2
	move	$2,$4

$L356:
	addiu	$5,$5,1
	lb	$3,-1($2)
	nop
	sb	$3,-1($5)
$L355:
	bne	$5,$6,$L356
	addiu	$2,$2,1

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
	beq	$2,$0,$L360
	srl	$3,$5,1

	sll	$2,$5,$6
	move	$7,$0
$L361:
	subu	$3,$0,$6
	andi	$3,$3,0x20
	beq	$3,$0,$L362
	nop

	subu	$6,$0,$6
	srl	$5,$4,$6
	move	$4,$0
$L363:
	or	$5,$5,$7
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L360:
	nor	$2,$0,$6
	srl	$3,$3,$2
	sll	$2,$4,$6
	or	$2,$3,$2
	.option	pic0
	b	$L361
	.option	pic2
	sll	$7,$5,$6

$L362:
	sll	$3,$4,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$8,$0,$6
	sll	$3,$3,$8
	srl	$5,$5,$6
	or	$5,$3,$5
	.option	pic0
	b	$L363
	.option	pic2
	srl	$4,$4,$6

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
	beq	$2,$0,$L365
	sll	$2,$4,1

	srl	$7,$4,$6
	move	$2,$0
$L366:
	subu	$3,$0,$6
	andi	$3,$3,0x20
	beq	$3,$0,$L367
	nop

	subu	$6,$0,$6
	sll	$4,$5,$6
	move	$5,$0
$L368:
	or	$5,$5,$7
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L365:
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$7,$5,$6
	or	$7,$2,$7
	.option	pic0
	b	$L366
	.option	pic2
	srl	$2,$4,$6

$L367:
	srl	$3,$5,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$8,$0,$6
	srl	$3,$3,$8
	sll	$4,$4,$6
	or	$4,$3,$4
	.option	pic0
	b	$L368
	.option	pic2
	sll	$5,$5,$6

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
	sll	$3,$4,$5
	li	$2,16			# 0x10
	subu	$2,$2,$5
	srl	$4,$4,$2
	or	$2,$4,$3
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
	srl	$3,$4,$5
	li	$2,16			# 0x10
	subu	$2,$2,$5
	sll	$4,$4,$2
	or	$2,$4,$3
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
	sll	$3,$4,$5
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	or	$2,$4,$3
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
	srl	$3,$4,$5
	li	$2,8			# 0x8
	subu	$2,$2,$5
	sll	$4,$4,$2
	or	$2,$4,$3
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
	andi	$4,$4,0x00ff
	sll	$4,$4,8
	jr	$31
	or	$2,$2,$4

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
	srl	$3,$4,24
	srl	$2,$4,8
	andi	$2,$2,0xff00
	or	$2,$2,$3
	andi	$3,$4,0xff00
	sll	$3,$3,8
	or	$2,$2,$3
	sll	$4,$4,24
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
	srl	$2,$4,24
	li	$6,16711680			# 0xff0000
	and	$3,$4,$6
	srl	$3,$3,8
	or	$3,$3,$2
	andi	$2,$4,0xff00
	sll	$2,$2,8
	or	$3,$3,$2
	sll	$4,$4,24
	srl	$2,$5,24
	and	$6,$5,$6
	srl	$6,$6,8
	or	$2,$2,$6
	or	$3,$3,$4
	andi	$4,$5,0xff00
	sll	$4,$4,8
	or	$2,$2,$4
	sll	$5,$5,24
	jr	$31
	or	$2,$2,$5

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
$L381:
	beq	$2,$5,$L385
	srl	$3,$4,$2

	andi	$3,$3,0x1
	bne	$3,$0,$L386
	nop

	.option	pic0
	b	$L381
	.option	pic2
	addiu	$2,$2,1

$L386:
	jr	$31
	addiu	$2,$2,1

$L385:
	jr	$31
	move	$2,$0

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
	beq	$4,$0,$L391
	nop

	.option	pic0
	b	$L389
	.option	pic2
	li	$2,1			# 0x1

$L390:
	addiu	$2,$2,1
$L389:
	andi	$3,$4,0x1
	beq	$3,$0,$L390
	sra	$4,$4,1

	jr	$31
	nop

$L391:
	jr	$31
	move	$2,$0

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
	bc1t	$L395
	nop

	lui	$2,%hi($LC1)
	lwc1	$f0,%lo($LC1)($2)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1f	$L398
	nop

	jr	$31
	li	$2,1			# 0x1

$L395:
	jr	$31
	li	$2,1			# 0x1

$L398:
	jr	$31
	move	$2,$0

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
	bc1t	$L403
	nop

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L406
	nop

	jr	$31
	li	$2,1			# 0x1

$L403:
	jr	$31
	li	$2,1			# 0x1

$L406:
	jr	$31
	move	$2,$0

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
	bc1t	$L411
	nop

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L414
	nop

	jr	$31
	li	$2,1			# 0x1

$L411:
	jr	$31
	li	$2,1			# 0x1

$L414:
	jr	$31
	move	$2,$0

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
	bc1t	$L427
	mov.s	$f0,$f12

	add.s	$f2,$f12,$f12
	c.eq.s	$f12,$f2
	nop
	bc1t	$L427
	nop

	bltz	$5,$L424
	nop

	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5)($2)
	.option	pic0
	b	$L425
	.option	pic2
	andi	$2,$5,0x1

$L424:
	lui	$2,%hi($LC4)
	lwc1	$f2,%lo($LC4)($2)
	.option	pic0
	b	$L425
	.option	pic2
	andi	$2,$5,0x1

$L426:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L427
	andi	$2,$5,0x1

	mul.s	$f2,$f2,$f2
$L425:
	beq	$2,$0,$L426
	srl	$2,$5,31

	.option	pic0
	b	$L426
	.option	pic2
	mul.s	$f0,$f0,$f2

$L427:
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
	bc1t	$L438
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L438
	nop

	bltz	$6,$L435
	nop

	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L436
	.option	pic2
	andi	$2,$6,0x1

$L435:
	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L436
	.option	pic2
	andi	$2,$6,0x1

$L437:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L438
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L436:
	beq	$2,$0,$L437
	srl	$2,$6,31

	.option	pic0
	b	$L437
	.option	pic2
	mul.d	$f0,$f0,$f2

$L438:
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
	bc1t	$L449
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L449
	nop

	bltz	$6,$L446
	nop

	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L447
	.option	pic2
	andi	$2,$6,0x1

$L446:
	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L447
	.option	pic2
	andi	$2,$6,0x1

$L448:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L449
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L447:
	beq	$2,$0,$L448
	srl	$2,$6,31

	.option	pic0
	b	$L448
	.option	pic2
	mul.d	$f0,$f0,$f2

$L449:
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
	move	$2,$4
	addu	$6,$4,$6
	.option	pic0
	b	$L451
	.option	pic2
	move	$3,$4

$L452:
	lb	$8,-1($5)
	addiu	$3,$3,1
	lb	$7,-1($3)
	nop
	xor	$7,$7,$8
	sb	$7,-1($3)
$L451:
	bne	$3,$6,$L452
	addiu	$5,$5,1

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
	.option	pic0
	b	$L454
	.option	pic2
	addu	$2,$18,$2

$L456:
	addiu	$17,$17,1
	addiu	$2,$2,1
	addiu	$16,$16,-1
$L454:
	beq	$16,$0,$L455
	nop

	lb	$3,0($17)
	nop
	bne	$3,$0,$L456
	sb	$3,0($2)

$L455:
	bne	$16,$0,$L457
	nop

	sb	$0,0($2)
$L457:
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
	move	$2,$0
$L460:
	beq	$2,$5,$L463
	addu	$3,$4,$2

	lb	$3,0($3)
	nop
	bne	$3,$0,$L462
	nop

$L463:
	jr	$31
	nop

$L462:
	.option	pic0
	b	$L460
	.option	pic2
	addiu	$2,$2,1

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
$L465:
	lb	$2,0($4)
	nop
	beq	$2,$0,$L473
	move	$3,$5

$L468:
	lb	$6,0($3)
	nop
	beq	$6,$0,$L472
	addiu	$3,$3,1

	lb	$7,-1($3)
	lb	$6,0($4)
	nop
	bne	$7,$6,$L468
	nop

	jr	$31
	move	$2,$4

$L472:
	.option	pic0
	b	$L465
	.option	pic2
	addiu	$4,$4,1

$L473:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.option	pic0
	b	$L476
	.option	pic2
	move	$2,$0

$L475:
	addiu	$4,$4,1
	lb	$3,-1($4)
	nop
	beq	$3,$0,$L480
	nop

$L476:
	lb	$3,0($4)
	nop
	bne	$5,$3,$L475
	nop

	.option	pic0
	b	$L475
	.option	pic2
	move	$2,$4

$L480:
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
	beq	$2,$0,$L485
	move	$18,$2

	lb	$19,0($17)
	nop
$L483:
	move	$5,$19
	move	$4,$16
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	beq	$2,$0,$L488
	move	$16,$2

	move	$6,$18
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	beq	$2,$0,$L489
	move	$2,$16

	.option	pic0
	b	$L483
	.option	pic2
	addiu	$16,$16,1

$L488:
	.option	pic0
	b	$L482
	.option	pic2
	move	$2,$0

$L485:
	move	$2,$16
$L482:
$L489:
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
	bc1t	$L504
	swc1	$f13,16($sp)

$L491:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L501
	nop

	c.lt.d	$f14,$f0
	nop
	bc1t	$L505
	li	$2,-2147483648			# 0xffffffff80000000

	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
$L494:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	addiu	$sp,$sp,16

$L504:
	c.lt.d	$f0,$f14
	nop
	bc1f	$L491
	li	$2,-2147483648			# 0xffffffff80000000

$L505:
	lw	$3,16($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	.option	pic0
	b	$L494
	.option	pic2
	sw	$2,12($sp)

$L501:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	swc1	$f0,12($sp)
	.option	pic0
	b	$L494
	.option	pic2
	swc1	$f1,8($sp)

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
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$16,$4
	subu	$18,$5,$7
	beq	$7,$0,$L511
	addu	$18,$4,$18

	sltu	$5,$5,$7
	bne	$5,$0,$L512
	move	$17,$6

	addiu	$20,$6,1
	.option	pic0
	b	$L508
	.option	pic2
	addiu	$19,$7,-1

$L509:
	addiu	$16,$16,1
$L508:
	sltu	$2,$18,$16
	bne	$2,$0,$L515
	move	$2,$0

	lb	$3,0($16)
	lb	$2,0($17)
	nop
	bne	$3,$2,$L509
	move	$6,$19

	move	$5,$20
	addiu	$4,$16,1
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	bne	$2,$0,$L508
	addiu	$16,$16,1

	addiu	$16,$16,-1
	move	$2,$16
$L515:
$L507:
	lw	$31,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

$L511:
	.option	pic0
	b	$L507
	.option	pic2
	move	$2,$4

$L512:
	.option	pic0
	b	$L507
	.option	pic2
	move	$2,$0

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
	bc1t	$L539
	swc1	$f13,16($sp)

	move	$3,$0
$L519:
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
	bc1f	$L540
	lui	$4,%hi($LC8)

	lwc1	$f0,%lo($LC8+4)($4)
	nop
	lwc1	$f1,%lo($LC8)($4)
	lui	$4,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($4)
	nop
	lwc1	$f3,%lo($LC6)($4)
	.option	pic0
	b	$L521
	.option	pic2
	move	$2,$0

$L539:
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
	b	$L519
	.option	pic2
	li	$3,1			# 0x1

$L523:
	addiu	$2,$2,1
	lwc1	$f4,20($sp)
	nop
	lwc1	$f5,16($sp)
	nop
	mul.d	$f4,$f4,$f2
	swc1	$f4,20($sp)
	swc1	$f5,16($sp)
$L521:
	lwc1	$f4,20($sp)
	nop
	lwc1	$f5,16($sp)
	nop
	c.le.d	$f0,$f4
	nop
	bc1t	$L523
	nop

$L524:
	beq	$3,$0,$L528
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
$L528:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

$L540:
	lui	$2,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($2)
	nop
	lwc1	$f1,%lo($LC6)($2)
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L537
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.eq.d	$f2,$f0
	nop
	bc1f	$L532
	lui	$4,%hi($LC6)

	.option	pic0
	b	$L524
	.option	pic2
	move	$2,$0

$L527:
	addiu	$2,$2,-1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	add.d	$f2,$f2,$f2
	swc1	$f2,20($sp)
	swc1	$f3,16($sp)
$L526:
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L527
	nop

	.option	pic0
	b	$L524
	nop

	.option	pic2
$L532:
	lwc1	$f0,%lo($LC6+4)($4)
	nop
	lwc1	$f1,%lo($LC6)($4)
	.option	pic0
	b	$L526
	.option	pic2
	move	$2,$0

$L537:
	.option	pic0
	b	$L524
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
	move	$2,$0
	.option	pic0
	b	$L542
	.option	pic2
	move	$8,$0

$L543:
	srl	$3,$7,31
$L547:
	sll	$6,$6,1
	or	$6,$3,$6
	sll	$7,$7,1
	sll	$3,$4,31
	srl	$5,$5,1
	or	$5,$3,$5
	srl	$4,$4,1
$L542:
	or	$3,$4,$5
	beq	$3,$0,$L546
	nop

	andi	$3,$5,0x1
	beq	$3,$0,$L547
	srl	$3,$7,31

	addu	$3,$8,$7
	sltu	$8,$3,$8
	addu	$2,$2,$6
	addu	$2,$8,$2
	.option	pic0
	b	$L543
	.option	pic2
	move	$8,$3

$L546:
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
	li	$7,33			# 0x21
	.option	pic0
	b	$L549
	.option	pic2
	li	$3,1			# 0x1

$L553:
	sll	$5,$5,1
	sll	$3,$3,1
$L549:
	sltu	$2,$5,$4
	beq	$2,$0,$L559
	addiu	$7,$7,-1

	beq	$7,$0,$L557
	nop

	bgez	$5,$L553
	move	$2,$0

	.option	pic0
	b	$L551
	nop

	.option	pic2
$L559:
	.option	pic0
	b	$L551
	.option	pic2
	move	$2,$0

$L557:
	.option	pic0
	b	$L551
	.option	pic2
	move	$2,$0

$L554:
	srl	$3,$3,1
	srl	$5,$5,1
$L551:
	beq	$3,$0,$L560
	sltu	$7,$4,$5

	bne	$7,$0,$L554
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L554
	.option	pic2
	or	$2,$2,$3

$L560:
	bne	$6,$0,$L561
	nop

$L556:
	jr	$31
	nop

$L561:
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
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	bltz	$4,$L567
	.cprestore	16

$L563:
	beq	$4,$0,$L565
	sll	$4,$4,8

	lw	$25,%call16(__clzsi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
$L564:
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L567:
	.option	pic0
	b	$L563
	.option	pic2
	nor	$4,$0,$4

$L565:
	.option	pic0
	b	$L564
	.option	pic2
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
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	bltz	$4,$L575
	.cprestore	16

$L569:
	or	$2,$4,$5
	beq	$2,$0,$L576
	li	$2,63			# 0x3f

	lw	$25,%call16(__clzdi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
$L571:
$L576:
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L575:
	nor	$4,$0,$4
	.option	pic0
	b	$L569
	.option	pic2
	nor	$5,$0,$5

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
	.option	pic0
	b	$L578
	.option	pic2
	move	$2,$0

$L579:
	srl	$4,$4,1
	sll	$5,$5,1
$L578:
	beq	$4,$0,$L582
	andi	$3,$4,0x1

	beq	$3,$0,$L579
	nop

	.option	pic0
	b	$L579
	.option	pic2
	addu	$2,$2,$5

$L582:
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
	srl	$10,$6,3
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$3,$4,$5
	bne	$3,$0,$L584
	and	$2,$6,$2

	addu	$3,$5,$6
	sltu	$3,$3,$4
	bne	$3,$0,$L594
	move	$3,$5

	.option	pic0
	b	$L585
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L584:
	move	$3,$5
$L594:
	move	$7,$4
	sll	$10,$10,3
	.option	pic0
	b	$L586
	.option	pic2
	addu	$10,$10,$5

$L587:
	lw	$9,4($3)
	lw	$8,0($3)
	sw	$9,4($7)
	sw	$8,0($7)
	addiu	$3,$3,8
	addiu	$7,$7,8
$L586:
	bne	$3,$10,$L587
	nop

	.option	pic0
	b	$L593
	.option	pic2
	sltu	$3,$2,$6

$L589:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L593:
	bne	$3,$0,$L589
	addu	$3,$5,$2

	jr	$31
	nop

$L591:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L585:
	addiu	$6,$6,-1
	bne	$6,$7,$L591
	addu	$2,$5,$6

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
	bne	$2,$0,$L596
	srl	$8,$6,1

	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L603
	move	$2,$5

	.option	pic0
	b	$L597
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L596:
	move	$2,$5
$L603:
	move	$3,$4
	sll	$8,$8,1
	.option	pic0
	b	$L598
	.option	pic2
	addu	$8,$8,$5

$L599:
	lh	$7,0($2)
	nop
	sh	$7,0($3)
	addiu	$2,$2,2
	addiu	$3,$3,2
$L598:
	bne	$2,$8,$L599
	nop

	andi	$2,$6,0x1
	beq	$2,$0,$L604
	addiu	$6,$6,-1

	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	jr	$31
	sb	$2,0($4)

$L601:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L597:
	addiu	$6,$6,-1
	bne	$6,$7,$L601
	addu	$2,$5,$6

$L604:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$9,$6,2
	li	$2,-4			# 0xfffffffffffffffc
	sltu	$3,$4,$5
	bne	$3,$0,$L606
	and	$2,$6,$2

	addu	$3,$5,$6
	sltu	$3,$3,$4
	bne	$3,$0,$L616
	move	$3,$5

	.option	pic0
	b	$L607
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L606:
	move	$3,$5
$L616:
	move	$7,$4
	sll	$9,$9,2
	.option	pic0
	b	$L608
	.option	pic2
	addu	$9,$9,$5

$L609:
	lw	$8,0($3)
	nop
	sw	$8,0($7)
	addiu	$3,$3,4
	addiu	$7,$7,4
$L608:
	bne	$3,$9,$L609
	nop

	.option	pic0
	b	$L615
	.option	pic2
	sltu	$3,$2,$6

$L611:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L615:
	bne	$3,$0,$L611
	addu	$3,$5,$2

	jr	$31
	nop

$L613:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L607:
	addiu	$6,$6,-1
	bne	$6,$7,$L613
	addu	$2,$5,$6

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
	bltz	$4,$L621
	cvt.d.w	$f0,$f0

$L619:
	jr	$31
	nop

$L621:
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
	bltz	$4,$L625
	cvt.d.w	$f0,$f0

$L623:
	jr	$31
	cvt.s.d	$f0,$f0

$L625:
	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	.option	pic0
	b	$L623
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
	li	$5,16			# 0x10
	li	$6,15			# 0xf
$L632:
	beq	$2,$5,$L635
	subu	$3,$6,$2

	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,$L635
	nop

	.option	pic0
	b	$L632
	.option	pic2
	addiu	$2,$2,1

$L635:
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
$L637:
	beq	$2,$5,$L640
	sra	$3,$4,$2

	andi	$3,$3,0x1
	bne	$3,$0,$L640
	nop

	.option	pic0
	b	$L637
	.option	pic2
	addiu	$2,$2,1

$L640:
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
	bc1t	$L648
	nop

	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	jr	$31
	nop

$L648:
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
	.option	pic0
	b	$L650
	.option	pic2
	li	$6,16			# 0x10

$L651:
	addiu	$3,$3,1
$L650:
	beq	$3,$6,$L653
	sra	$5,$4,$3

	andi	$5,$5,0x1
	beq	$5,$0,$L651
	nop

	.option	pic0
	b	$L651
	.option	pic2
	addiu	$2,$2,1

$L653:
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
	.option	pic0
	b	$L655
	.option	pic2
	li	$6,16			# 0x10

$L656:
	addiu	$3,$3,1
$L655:
	beq	$3,$6,$L659
	sra	$5,$4,$3

	andi	$5,$5,0x1
	beq	$5,$0,$L656
	nop

	.option	pic0
	b	$L656
	.option	pic2
	addiu	$2,$2,1

$L659:
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
	.option	pic0
	b	$L661
	.option	pic2
	move	$2,$0

$L662:
	srl	$4,$4,1
	sll	$5,$5,1
$L661:
	beq	$4,$0,$L665
	andi	$3,$4,0x1

	beq	$3,$0,$L662
	nop

	.option	pic0
	b	$L662
	.option	pic2
	addu	$2,$2,$5

$L665:
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
	beq	$4,$0,$L671
	nop

	.option	pic0
	b	$L668
	.option	pic2
	move	$2,$0

$L669:
	sll	$4,$4,1
	srl	$5,$5,1
$L668:
	beq	$5,$0,$L673
	andi	$3,$5,0x1

	beq	$3,$0,$L669
	nop

	.option	pic0
	b	$L669
	.option	pic2
	addu	$2,$2,$4

$L673:
	jr	$31
	nop

$L671:
	jr	$31
	move	$2,$0

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
	li	$7,33			# 0x21
	.option	pic0
	b	$L675
	.option	pic2
	li	$3,1			# 0x1

$L679:
	sll	$5,$5,1
	sll	$3,$3,1
$L675:
	sltu	$2,$5,$4
	beq	$2,$0,$L685
	addiu	$7,$7,-1

	beq	$7,$0,$L683
	nop

	bgez	$5,$L679
	move	$2,$0

	.option	pic0
	b	$L677
	nop

	.option	pic2
$L685:
	.option	pic0
	b	$L677
	.option	pic2
	move	$2,$0

$L683:
	.option	pic0
	b	$L677
	.option	pic2
	move	$2,$0

$L680:
	srl	$3,$3,1
	srl	$5,$5,1
$L677:
	beq	$3,$0,$L686
	sltu	$7,$4,$5

	bne	$7,$0,$L680
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L680
	.option	pic2
	or	$2,$2,$3

$L686:
	bne	$6,$0,$L687
	nop

$L682:
	jr	$31
	nop

$L687:
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
	bc1t	$L690
	nop

	c.lt.s	$f14,$f12
	nop
	bc1t	$L691
	nop

	jr	$31
	move	$2,$0

$L690:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L691:
	jr	$31
	li	$2,1			# 0x1

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
	bc1t	$L694
	nop

	c.lt.d	$f14,$f12
	nop
	bc1t	$L695
	nop

	jr	$31
	move	$2,$0

$L694:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L695:
	jr	$31
	li	$2,1			# 0x1

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
	sra	$3,$4,31
	sra	$2,$5,31
	mult	$3,$5
	mflo	$6
	nop
	nop
	mult	$2,$4
	mflo	$2
	addu	$6,$6,$2
	nop
	multu	$4,$5
	mflo	$3
	mfhi	$2
	jr	$31
	addu	$2,$6,$2

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
	bltz	$5,$L707
	nop

	move	$7,$0
$L699:
	li	$3,33			# 0x21
	.option	pic0
	b	$L700
	.option	pic2
	move	$2,$0

$L707:
	subu	$5,$0,$5
	.option	pic0
	b	$L699
	.option	pic2
	li	$7,1			# 0x1

$L701:
	sll	$4,$4,1
	sra	$5,$5,1
$L700:
	beq	$5,$0,$L702
	addiu	$3,$3,-1

	andi	$3,$3,0x00ff
	beq	$3,$0,$L702
	andi	$6,$5,0x1

	beq	$6,$0,$L701
	nop

	.option	pic0
	b	$L701
	.option	pic2
	addu	$2,$2,$4

$L702:
	beq	$7,$0,$L708
	nop

	subu	$2,$0,$2
$L708:
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
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	bltz	$4,$L715
	sw	$16,24($sp)

	move	$16,$0
$L710:
	bltz	$5,$L716
	nop

$L711:
	move	$6,$0
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L712
	nop

	subu	$2,$0,$2
$L712:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

$L715:
	subu	$4,$0,$4
	.option	pic0
	b	$L710
	.option	pic2
	li	$16,1			# 0x1

$L716:
	subu	$5,$0,$5
	.option	pic0
	b	$L711
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
	bltz	$4,$L723
	sw	$16,24($sp)

	move	$16,$0
$L718:
	bltz	$5,$L724
	nop

$L719:
	li	$6,1			# 0x1
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L720
	nop

	subu	$2,$0,$2
$L720:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

$L723:
	subu	$4,$0,$4
	.option	pic0
	b	$L718
	.option	pic2
	li	$16,1			# 0x1

$L724:
	.option	pic0
	b	$L719
	.option	pic2
	subu	$5,$0,$5

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
	li	$2,17			# 0x11
	li	$3,1			# 0x1
$L726:
	sltu	$7,$5,$4
	beq	$7,$0,$L736
	nop

	addiu	$2,$2,-1
	beq	$2,$0,$L734
	sll	$7,$5,16

	sra	$7,$7,16
	bltz	$7,$L737
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	.option	pic0
	b	$L726
	.option	pic2
	andi	$3,$3,0xffff

$L736:
	.option	pic0
	b	$L728
	.option	pic2
	move	$2,$0

$L734:
	.option	pic0
	b	$L728
	.option	pic2
	move	$2,$0

$L737:
	.option	pic0
	b	$L728
	.option	pic2
	move	$2,$0

$L731:
	srl	$3,$3,1
	srl	$5,$5,1
$L728:
	beq	$3,$0,$L738
	sltu	$7,$4,$5

	bne	$7,$0,$L731
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	.option	pic0
	b	$L731
	.option	pic2
	or	$2,$2,$3

$L738:
	bne	$6,$0,$L739
	nop

$L733:
	jr	$31
	nop

$L739:
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
	li	$7,33			# 0x21
	.option	pic0
	b	$L741
	.option	pic2
	li	$3,1			# 0x1

$L745:
	sll	$5,$5,1
	sll	$3,$3,1
$L741:
	sltu	$2,$5,$4
	beq	$2,$0,$L751
	addiu	$7,$7,-1

	beq	$7,$0,$L749
	nop

	bgez	$5,$L745
	move	$2,$0

	.option	pic0
	b	$L743
	nop

	.option	pic2
$L751:
	.option	pic0
	b	$L743
	.option	pic2
	move	$2,$0

$L749:
	.option	pic0
	b	$L743
	.option	pic2
	move	$2,$0

$L746:
	srl	$3,$3,1
	srl	$5,$5,1
$L743:
	beq	$3,$0,$L752
	sltu	$7,$4,$5

	bne	$7,$0,$L746
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L746
	.option	pic2
	or	$2,$2,$3

$L752:
	bne	$6,$0,$L753
	nop

$L748:
	jr	$31
	nop

$L753:
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
	beq	$2,$0,$L755
	move	$3,$0

	jr	$31
	sll	$2,$5,$6

$L755:
	beq	$6,$0,$L758
	nop

	sll	$3,$5,$6
	sll	$2,$4,$6
	subu	$6,$0,$6
	srl	$5,$5,$6
	jr	$31
	or	$2,$5,$2

$L758:
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
	beq	$2,$0,$L760
	sra	$2,$4,31

	sra	$5,$4,$6
$L762:
	jr	$31
	move	$3,$5

$L760:
	beq	$6,$0,$L763
	nop

	sra	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L762
	.option	pic2
	or	$5,$4,$5

$L763:
	.option	pic0
	b	$L762
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
	srl	$8,$4,8
	andi	$8,$8,0xff00
	sll	$2,$4,8
	srl	$6,$5,24
	or	$6,$2,$6
	li	$9,16711680			# 0xff0000
	and	$7,$6,$9
	sll	$4,$4,24
	srl	$6,$5,8
	or	$6,$4,$6
	li	$2,-16777216			# 0xffffffffff000000
	and	$6,$6,$2
	sll	$2,$5,8
	srl	$10,$5,24
	srl	$4,$5,8
	sll	$5,$5,24
	andi	$4,$4,0xff00
	and	$2,$2,$9
	or	$3,$3,$8
	or	$3,$3,$7
	or	$3,$3,$6
	or	$5,$5,$10
	or	$5,$5,$4
	jr	$31
	or	$2,$5,$2

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
	srl	$5,$4,24
	srl	$3,$4,8
	andi	$3,$3,0xff00
	sll	$2,$4,8
	li	$6,16711680			# 0xff0000
	and	$2,$2,$6
	sll	$4,$4,24
	or	$4,$4,$5
	or	$4,$4,$3
	jr	$31
	or	$2,$4,$2

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
	li	$2,65536			# 0x10000
	sltu	$2,$4,$2
	beq	$2,$0,$L767
	move	$3,$0

	li	$3,16			# 0x10
$L767:
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	bne	$2,$0,$L768
	move	$5,$0

	li	$5,8			# 0x8
$L768:
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xf0
	bne	$2,$0,$L773
	addu	$3,$3,$5

	li	$5,4			# 0x4
$L769:
	li	$2,4			# 0x4
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xc
	bne	$2,$0,$L774
	addu	$3,$3,$5

	li	$5,2			# 0x2
$L770:
	li	$2,2			# 0x2
	subu	$6,$2,$5
	srl	$4,$4,$6
	addu	$3,$3,$5
	andi	$5,$4,0x2
	sltu	$5,$5,1
	subu	$2,$2,$4
	mult	$5,$2
	mflo	$2
	jr	$31
	addu	$2,$3,$2

	.option	pic0
	b	$L768
	.option	pic2
	move	$5,$0

$L773:
	.option	pic0
	b	$L769
	.option	pic2
	move	$5,$0

$L774:
	.option	pic0
	b	$L770
	.option	pic2
	move	$5,$0

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
	bne	$2,$0,$L777
	slt	$4,$6,$4

	bne	$4,$0,$L778
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L779
	sltu	$5,$7,$5

	bne	$5,$0,$L780
	nop

	jr	$31
	li	$2,1			# 0x1

$L777:
	jr	$31
	move	$2,$0

$L778:
	jr	$31
	li	$2,2			# 0x2

$L779:
	jr	$31
	move	$2,$0

$L780:
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
	andi	$2,$4,0xffff
	bne	$2,$0,$L784
	move	$3,$0

	li	$3,16			# 0x10
$L784:
	srl	$4,$4,$3
	andi	$2,$4,0xff
	bne	$2,$0,$L785
	move	$2,$0

	li	$2,8			# 0x8
$L785:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0xf
	bne	$2,$0,$L786
	move	$2,$0

	li	$2,4			# 0x4
$L786:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	bne	$2,$0,$L791
	nop

	li	$2,2			# 0x2
$L787:
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
	jr	$31
	addu	$2,$3,$2

	.option	pic0
	b	$L785
	.option	pic2
	move	$2,$0

$L791:
	.option	pic0
	b	$L787
	.option	pic2
	move	$2,$0

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
	beq	$2,$0,$L793
	move	$2,$0

	srl	$5,$4,$6
$L795:
	jr	$31
	move	$3,$5

$L793:
	beq	$6,$0,$L796
	nop

	srl	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L795
	.option	pic2
	or	$5,$4,$5

$L796:
	.option	pic0
	b	$L795
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
	andi	$6,$4,0xffff
	andi	$7,$5,0xffff
	mult	$6,$7
	mflo	$3
	srl	$2,$3,16
	srl	$4,$4,16
	mult	$4,$7
	mflo	$7
	addu	$2,$2,$7
	srl	$7,$2,16
	andi	$2,$2,0xffff
	andi	$3,$3,0xffff
	srl	$5,$5,16
	mult	$6,$5
	mflo	$6
	addu	$2,$2,$6
	sll	$6,$2,16
	addu	$6,$6,$3
	srl	$2,$2,16
	addu	$7,$2,$7
	mult	$4,$5
	mflo	$2
	addu	$2,$2,$7
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
	mult	$18,$16
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
	subu	$4,$0,$4
	jr	$31
	subu	$2,$4,$5

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
	xor	$5,$5,$4
	srl	$2,$5,16
	xor	$5,$5,$2
	srl	$2,$5,8
	xor	$5,$5,$2
	srl	$2,$5,4
	xor	$5,$5,$2
	andi	$5,$5,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$5
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
	xor	$4,$2,$4
	srl	$2,$4,8
	xor	$4,$4,$2
	srl	$2,$4,4
	xor	$4,$4,$2
	andi	$4,$4,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$4
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
	addu	$3,$3,$2
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
	lui	$2,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($2)
	nop
	lwc1	$f1,%lo($LC8)($2)
	.option	pic0
	b	$L808
	.option	pic2
	srl	$3,$6,31

$L812:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L807
	nop

	mul.d	$f12,$f12,$f12
$L808:
	andi	$2,$6,0x1
	beq	$2,$0,$L812
	srl	$2,$6,31

	.option	pic0
	b	$L812
	.option	pic2
	mul.d	$f0,$f0,$f12

$L807:
	beq	$3,$0,$L813
	lui	$2,%hi($LC8)

	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	div.d	$f0,$f2,$f0
$L813:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi($LC11)
	lwc1	$f0,%lo($LC11)($2)
	.option	pic0
	b	$L817
	.option	pic2
	srl	$3,$5,31

$L821:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L816
	nop

	mul.s	$f12,$f12,$f12
$L817:
	andi	$2,$5,0x1
	beq	$2,$0,$L821
	srl	$2,$5,31

	.option	pic0
	b	$L821
	.option	pic2
	mul.s	$f0,$f0,$f12

$L816:
	beq	$3,$0,$L822
	lui	$2,%hi($LC11)

	lwc1	$f2,%lo($LC11)($2)
	nop
	div.s	$f0,$f2,$f0
$L822:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$6
	bne	$2,$0,$L825
	sltu	$4,$6,$4

	bne	$4,$0,$L826
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L827
	sltu	$5,$7,$5

	bne	$5,$0,$L828
	nop

	jr	$31
	li	$2,1			# 0x1

$L825:
	jr	$31
	move	$2,$0

$L826:
	jr	$31
	li	$2,2			# 0x2

$L827:
	jr	$31
	move	$2,$0

$L828:
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
