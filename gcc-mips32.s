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

$L23:
	addiu	$6,$6,-1
$L17:
	beq	$6,$0,$L18
	nop

	lbu	$2,0($4)
	nop
	bne	$5,$2,$L23
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L18:
	beq	$6,$0,$L22
	nop

	jr	$31
	move	$2,$4

$L22:
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
	b	$L25
	nop

	.option	pic2
$L30:
	addiu	$4,$4,1
	addiu	$5,$5,1
$L25:
	beq	$6,$0,$L26
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	beq	$3,$2,$L30
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L26:
	beq	$6,$0,$L29
	nop

	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

$L29:
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
	b	$L32
	.option	pic2
	move	$3,$4

$L33:
	addiu	$3,$3,1
	lbu	$7,-1($5)
	nop
	sb	$7,-1($3)
$L32:
	bne	$3,$6,$L33
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
$L35:
	beq	$6,$2,$L39
	addu	$3,$4,$6

	lbu	$3,0($3)
	nop
	beq	$5,$3,$L40
	addiu	$7,$6,-1

	.option	pic0
	b	$L35
	.option	pic2
	move	$6,$7

$L40:
	jr	$31
	addu	$2,$4,$6

$L39:
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
	b	$L42
	.option	pic2
	andi	$5,$5,0x00ff

$L43:
	sb	$5,0($3)
	addiu	$3,$3,1
$L42:
	bne	$3,$6,$L43
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
	b	$L45
	.option	pic2
	move	$2,$4

$L46:
	addiu	$5,$5,1
	addiu	$2,$2,1
$L45:
	lb	$3,0($5)
	nop
	bne	$3,$0,$L46
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
	b	$L48
	.option	pic2
	andi	$5,$5,0x00ff

$L48:
	lb	$3,0($2)
	nop
	beq	$3,$0,$L51
	nop

	lbu	$3,0($2)
	nop
	bne	$5,$3,$L48
	addiu	$2,$2,1

	addiu	$2,$2,-1
$L51:
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
$L54:
	lb	$2,0($4)
	nop
	beq	$5,$2,$L55
	nop

	addiu	$4,$4,1
	lb	$2,-1($4)
	nop
	bne	$2,$0,$L54
	nop

	jr	$31
	nop

$L55:
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
	b	$L58
	nop

	.option	pic2
$L61:
	addiu	$5,$5,1
$L58:
	lb	$3,0($4)
	lb	$2,0($5)
	nop
	bne	$3,$2,$L59
	nop

	bne	$3,$0,$L61
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L59:
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
	b	$L63
	.option	pic2
	move	$2,$4

$L64:
	addiu	$2,$2,1
$L63:
	lb	$5,0($2)
	nop
	bne	$5,$0,$L64
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
	beq	$6,$0,$L70
	addiu	$6,$6,-1

	addu	$2,$4,$6
$L67:
	lbu	$3,0($4)
	nop
	beq	$3,$0,$L68
	nop

	lbu	$3,0($5)
	nop
	beq	$3,$0,$L68
	nop

	beq	$4,$2,$L68
	nop

	lbu	$6,0($4)
	nop
	bne	$6,$3,$L68
	nop

	addiu	$4,$4,1
	.option	pic0
	b	$L67
	.option	pic2
	addiu	$5,$5,1

$L68:
	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

$L70:
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
	b	$L72
	.option	pic2
	addu	$6,$4,$6

$L73:
	lb	$3,1($2)
	nop
	sb	$3,0($5)
	lb	$3,0($2)
	nop
	sb	$3,1($5)
	addiu	$5,$5,2
	addiu	$2,$2,2
$L72:
	subu	$3,$6,$2
	slt	$3,$3,2
	beq	$3,$0,$L73
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
	beq	$4,$2,$L78
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

$L78:
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
	beq	$4,$2,$L88
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

$L88:
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
	bne	$2,$0,$L92
	nop

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,$L93
	nop

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L94
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	jr	$31
	sltu	$2,$4,3

$L92:
	jr	$31
	li	$2,1			# 0x1

$L93:
	jr	$31
	li	$2,1			# 0x1

$L94:
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
	bne	$2,$0,$L103
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,$L99
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,$L100
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$4,$2
	sltu	$2,$2,8185
	bne	$2,$0,$L101
	li	$3,1048576			# 0x100000

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L102
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

$L103:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	xori	$2,$2,0x1

$L99:
	jr	$31
	li	$2,1			# 0x1

$L100:
	jr	$31
	li	$2,1			# 0x1

$L101:
	jr	$31
	li	$2,1			# 0x1

$L102:
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
	bne	$2,$0,$L106
	nop

	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

$L106:
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
	bc1t	$L111
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L112
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L115
	nop

	jr	$31
	sub.d	$f0,$f12,$f14

$L111:
	jr	$31
	mov.d	$f0,$f12

$L112:
	jr	$31
	mov.d	$f0,$f14

$L115:
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
	bc1t	$L119
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L120
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L123
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L119:
	jr	$31
	mov.s	$f0,$f12

$L120:
	jr	$31
	mov.s	$f0,$f14

$L123:
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
	bc1t	$L130
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L131
	mov.d	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L126
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L132
	nop

	jr	$31
	nop

$L126:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L127
	li	$2,1			# 0x1

	move	$2,$0
$L127:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L128
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L128:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L130:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L131:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L132:
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
	bc1t	$L139
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L140
	mov.s	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L135
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L141
	nop

	jr	$31
	nop

$L135:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1t	$L136
	li	$2,1			# 0x1

	move	$2,$0
$L136:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L137
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L137:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L139:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L140:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L141:
	lwc1	$f0,0($sp)
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
	bc1t	$L148
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L149
	mov.d	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L144
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L150
	nop

	jr	$31
	nop

$L144:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L145
	li	$2,1			# 0x1

	move	$2,$0
$L145:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L146
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L146:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L148:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L149:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L150:
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
	bc1t	$L157
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L158
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L153
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L159
	nop

	jr	$31
	mov.d	$f0,$f12

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
	bc1t	$L154
	li	$2,1			# 0x1

	move	$2,$0
$L154:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L155
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L155:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L157:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L158:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L159:
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
	bc1t	$L166
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L167
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,4($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L162
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L168
	nop

	jr	$31
	mov.s	$f0,$f12

$L162:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1t	$L163
	li	$2,1			# 0x1

	move	$2,$0
$L163:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L164
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L164:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L166:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L167:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L168:
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
	bc1t	$L175
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L176
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L171
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L177
	nop

	jr	$31
	mov.d	$f0,$f12

$L171:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L172
	li	$2,1			# 0x1

	move	$2,$0
$L172:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L173
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L173:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L175:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L176:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L177:
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
	b	$L179
	.option	pic2
	addiu	$5,$5,%lo(digits)

$L180:
	andi	$2,$4,0x3f
	addu	$2,$2,$5
	lb	$2,0($2)
	nop
	sb	$2,0($3)
	addiu	$3,$3,1
	srl	$4,$4,6
$L179:
	bne	$4,$0,$L180
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
	beq	$5,$0,$L186
	nop

	lw	$2,0($5)
	nop
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L187
	nop

	sw	$4,4($2)
$L187:
	jr	$31
	nop

$L186:
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
	beq	$2,$0,$L189
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L189:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L191
	nop

	lw	$3,0($4)
	nop
	sw	$3,0($2)
$L191:
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
	b	$L193
	.option	pic2
	move	$16,$0

$L194:
	addiu	$16,$16,1
$L193:
	beq	$16,$20,$L198
	move	$5,$17

	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	lw	$28,16($sp)
	bne	$2,$0,$L194
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L195
	.option	pic2
	addu	$2,$22,$2

$L198:
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
$L195:
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
	b	$L200
	.option	pic2
	move	$16,$0

$L201:
	addiu	$16,$16,1
$L200:
	beq	$16,$20,$L205
	move	$5,$17

	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	bne	$2,$0,$L201
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L202
	.option	pic2
	addu	$2,$22,$2

$L205:
	move	$2,$0
$L202:
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
	bltz	$4,$L208
	move	$2,$4

$L207:
	jr	$31
	nop

$L208:
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
	b	$L210
	.option	pic2
	move	$16,$4

$L211:
	addiu	$16,$16,1
$L210:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L211
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L217
	li	$3,45			# 0x2d

	bne	$2,$3,$L218
	nop

	li	$4,1			# 0x1
$L212:
	addiu	$16,$16,1
$L213:
	.option	pic0
	b	$L214
	.option	pic2
	move	$2,$0

$L217:
	.option	pic0
	b	$L212
	.option	pic2
	move	$4,$0

$L218:
	.option	pic0
	b	$L213
	.option	pic2
	move	$4,$0

$L215:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L214:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L215
	addiu	$16,$16,1

	bne	$4,$0,$L216
	nop

	subu	$2,$0,$2
$L216:
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

	li	$4,1			# 0x1
$L224:
	addiu	$16,$16,1
$L225:
	.option	pic0
	b	$L226
	.option	pic2
	move	$2,$0

$L229:
	.option	pic0
	b	$L224
	.option	pic2
	move	$4,$0

$L230:
	.option	pic0
	b	$L225
	.option	pic2
	move	$4,$0

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
	b	$L234
	.option	pic2
	move	$16,$4

$L235:
	addiu	$16,$16,1
$L234:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L235
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L236
	move	$6,$0

	li	$3,45			# 0x2d
	bne	$2,$3,$L237
	nop

	li	$6,1			# 0x1
$L236:
	addiu	$16,$16,1
$L237:
	move	$2,$0
	.option	pic0
	b	$L238
	.option	pic2
	move	$3,$0

	.option	pic0
	b	$L237
	.option	pic2
	move	$6,$0

$L239:
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
$L238:
	lb	$4,0($16)
	nop
	addiu	$4,$4,-48
	sltu	$4,$4,10
	bne	$4,$0,$L239
	srl	$5,$3,30

	bne	$6,$0,$L240
	sltu	$4,$0,$3

	subu	$2,$0,$2
	subu	$2,$2,$4
	subu	$3,$0,$3
$L240:
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
	b	$L246
	.option	pic2
	move	$18,$7

$L254:
	srl	$16,$16,1
$L246:
	beq	$16,$0,$L253
	srl	$2,$16,1

	mult	$2,$18
	mflo	$17
	addu	$17,$19,$17
	move	$5,$17
	move	$4,$20
	move	$25,$21
	jalr	$25
	nop

	bltz	$2,$L254
	nop

	blez	$2,$L251
	addu	$19,$17,$18

	srl	$2,$16,1
	addiu	$16,$16,-1
	.option	pic0
	b	$L246
	.option	pic2
	subu	$16,$16,$2

$L253:
	move	$2,$0
$L249:
	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,56

$L251:
	.option	pic0
	b	$L249
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
	b	$L256
	.option	pic2
	move	$18,$5

$L258:
	sra	$16,$16,1
$L256:
	beq	$16,$0,$L262
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

	beq	$2,$0,$L260
	nop

	blez	$2,$L258
	nop

	addu	$18,$17,$19
	.option	pic0
	b	$L258
	.option	pic2
	addiu	$16,$16,-1

$L262:
	move	$2,$0
$L257:
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

$L260:
	.option	pic0
	b	$L257
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
	bltz	$4,$L267
	move	$3,$5

$L265:
	jr	$31
	nop

$L267:
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
	bltz	$4,$L272
	move	$2,$4

$L271:
	jr	$31
	nop

$L272:
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
	bltz	$4,$L277
	move	$3,$5

$L275:
	jr	$31
	nop

$L277:
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
$L281:
	lw	$2,0($4)
	nop
	beq	$2,$0,$L286
	nop

	bne	$5,$2,$L281
	addiu	$4,$4,4

	addiu	$4,$4,-4
	lw	$2,0($4)
	nop
$L286:
	beq	$2,$0,$L287
	nop

	move	$2,$4
$L287:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.option	pic0
	b	$L289
	nop

	.option	pic2
$L294:
	addiu	$5,$5,4
$L289:
	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L290
	nop

	beq	$3,$0,$L290
	nop

	bne	$2,$0,$L294
	addiu	$4,$4,4

	addiu	$4,$4,-4
$L290:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L293
	nop

	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

$L293:
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
$L296:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$6,-4($5)
	nop
	bne	$6,$0,$L296
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
	b	$L299
	.option	pic2
	move	$2,$4

$L300:
	addiu	$2,$2,4
$L299:
	lw	$3,0($2)
	nop
	bne	$3,$0,$L300
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
$L302:
	beq	$6,$0,$L303
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L303
	nop

	beq	$3,$0,$L303
	nop

	beq	$2,$0,$L303
	nop

	addiu	$6,$6,-1
	addiu	$4,$4,4
	.option	pic0
	b	$L302
	.option	pic2
	addiu	$5,$5,4

$L303:
	beq	$6,$0,$L306
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L307
	nop

	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

$L306:
	jr	$31
	move	$2,$0

$L307:
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
	b	$L309
	nop

	.option	pic2
$L315:
	addiu	$4,$4,4
$L309:
	beq	$6,$0,$L310
	nop

	lw	$2,0($4)
	nop
	bne	$5,$2,$L315
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L310:
	beq	$6,$0,$L314
	nop

	jr	$31
	move	$2,$4

$L314:
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
	b	$L317
	nop

	.option	pic2
$L323:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L317:
	beq	$6,$0,$L318
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	beq	$3,$2,$L323
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L318:
	beq	$6,$0,$L321
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L322
	nop

	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

$L321:
	jr	$31
	move	$2,$0

$L322:
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
	b	$L325
	.option	pic2
	li	$8,-1			# 0xffffffffffffffff

$L326:
	addiu	$3,$3,4
	lw	$7,-4($5)
	nop
	sw	$7,-4($3)
$L325:
	addiu	$6,$6,-1
	bne	$6,$8,$L326
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
	beq	$4,$5,$L335
	move	$2,$4

	subu	$3,$4,$5
	sll	$4,$6,2
	sltu	$3,$3,$4
	beq	$3,$0,$L333
	nop

	addu	$3,$5,$4
	addu	$6,$2,$4
	.option	pic0
	b	$L330
	.option	pic2
	addiu	$5,$5,-4

$L331:
	lw	$4,0($3)
	nop
	sw	$4,0($6)
$L330:
	addiu	$3,$3,-4
	bne	$3,$5,$L331
	addiu	$6,$6,-4

$L335:
	jr	$31
	nop

$L332:
	addiu	$3,$3,4
	lw	$4,-4($5)
	nop
	sw	$4,-4($3)
$L329:
	addiu	$6,$6,-1
	bne	$6,$7,$L332
	addiu	$5,$5,4

	jr	$31
	nop

$L333:
	move	$3,$2
	.option	pic0
	b	$L329
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
	b	$L337
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L338:
	sw	$5,-4($3)
$L337:
	addiu	$6,$6,-1
	bne	$6,$7,$L338
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
	beq	$2,$0,$L340
	addu	$2,$4,$6

	.option	pic0
	b	$L341
	.option	pic2
	addu	$5,$5,$6

$L342:
	addiu	$5,$5,-1
	lb	$3,0($2)
	nop
	sb	$3,0($5)
$L341:
	bne	$2,$4,$L342
	addiu	$2,$2,-1

$L347:
	jr	$31
	nop

$L340:
	beq	$4,$5,$L347
	addu	$6,$5,$6

	.option	pic0
	b	$L344
	.option	pic2
	move	$2,$4

$L345:
	addiu	$5,$5,1
	lb	$3,-1($2)
	nop
	sb	$3,-1($5)
$L344:
	bne	$5,$6,$L345
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
	beq	$2,$0,$L349
	srl	$3,$5,1

	sll	$2,$5,$6
	move	$7,$0
$L350:
	subu	$3,$0,$6
	andi	$3,$3,0x20
	beq	$3,$0,$L351
	nop

	subu	$6,$0,$6
	srl	$5,$4,$6
	move	$4,$0
$L352:
	or	$5,$5,$7
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L349:
	nor	$2,$0,$6
	srl	$3,$3,$2
	sll	$2,$4,$6
	or	$2,$3,$2
	.option	pic0
	b	$L350
	.option	pic2
	sll	$7,$5,$6

$L351:
	sll	$3,$4,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$8,$0,$6
	sll	$3,$3,$8
	srl	$5,$5,$6
	or	$5,$3,$5
	.option	pic0
	b	$L352
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
	beq	$2,$0,$L354
	sll	$2,$4,1

	srl	$7,$4,$6
	move	$2,$0
$L355:
	subu	$3,$0,$6
	andi	$3,$3,0x20
	beq	$3,$0,$L356
	nop

	subu	$6,$0,$6
	sll	$4,$5,$6
	move	$5,$0
$L357:
	or	$5,$5,$7
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L354:
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$7,$5,$6
	or	$7,$2,$7
	.option	pic0
	b	$L355
	.option	pic2
	srl	$2,$4,$6

$L356:
	srl	$3,$5,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$8,$0,$6
	srl	$3,$3,$8
	sll	$4,$4,$6
	or	$4,$3,$4
	.option	pic0
	b	$L357
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
$L370:
	beq	$2,$5,$L374
	srl	$3,$4,$2

	andi	$3,$3,0x1
	bne	$3,$0,$L375
	nop

	.option	pic0
	b	$L370
	.option	pic2
	addiu	$2,$2,1

$L375:
	jr	$31
	addiu	$2,$2,1

$L374:
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
	beq	$4,$0,$L380
	nop

	.option	pic0
	b	$L378
	.option	pic2
	li	$2,1			# 0x1

$L379:
	addiu	$2,$2,1
$L378:
	andi	$3,$4,0x1
	beq	$3,$0,$L379
	sra	$4,$4,1

	jr	$31
	nop

$L380:
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
	bc1t	$L384
	lui	$3,%hi($LC1)

	lwc1	$f0,%lo($LC1)($3)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1t	$L383
	li	$2,1			# 0x1

	move	$2,$0
$L383:
	jr	$31
	andi	$2,$2,0x00ff

$L384:
	jr	$31
	li	$2,1			# 0x1

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
	bc1t	$L389
	lui	$3,%hi($LC3)

	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1t	$L388
	li	$2,1			# 0x1

	move	$2,$0
$L388:
	jr	$31
	andi	$2,$2,0x00ff

$L389:
	jr	$31
	li	$2,1			# 0x1

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
	bc1t	$L394
	lui	$3,%hi($LC3)

	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1t	$L393
	li	$2,1			# 0x1

	move	$2,$0
$L393:
	jr	$31
	andi	$2,$2,0x00ff

$L394:
	jr	$31
	li	$2,1			# 0x1

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
	bc1t	$L407
	mov.s	$f0,$f12

	add.s	$f2,$f12,$f12
	c.eq.s	$f12,$f2
	nop
	bc1t	$L407
	nop

	bltz	$5,$L404
	nop

	lui	$2,%hi($LC4)
	lwc1	$f2,%lo($LC4)($2)
	.option	pic0
	b	$L405
	.option	pic2
	andi	$2,$5,0x1

$L404:
	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5)($2)
	.option	pic0
	b	$L405
	.option	pic2
	andi	$2,$5,0x1

$L406:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L407
	andi	$2,$5,0x1

	mul.s	$f2,$f2,$f2
$L405:
	beq	$2,$0,$L406
	srl	$2,$5,31

	.option	pic0
	b	$L406
	.option	pic2
	mul.s	$f0,$f0,$f2

$L407:
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
	bc1t	$L418
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L418
	nop

	bltz	$6,$L415
	nop

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L416
	.option	pic2
	andi	$2,$6,0x1

$L415:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L416
	.option	pic2
	andi	$2,$6,0x1

$L417:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L418
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L416:
	beq	$2,$0,$L417
	srl	$2,$6,31

	.option	pic0
	b	$L417
	.option	pic2
	mul.d	$f0,$f0,$f2

$L418:
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
	bc1t	$L429
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L429
	nop

	bltz	$6,$L426
	nop

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L427
	.option	pic2
	andi	$2,$6,0x1

$L426:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L427
	.option	pic2
	andi	$2,$6,0x1

$L428:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L429
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L427:
	beq	$2,$0,$L428
	srl	$2,$6,31

	.option	pic0
	b	$L428
	.option	pic2
	mul.d	$f0,$f0,$f2

$L429:
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
	b	$L431
	.option	pic2
	move	$3,$4

$L432:
	lb	$8,-1($5)
	addiu	$3,$3,1
	lb	$7,-1($3)
	nop
	xor	$7,$7,$8
	sb	$7,-1($3)
$L431:
	bne	$3,$6,$L432
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
	b	$L434
	.option	pic2
	addu	$2,$18,$2

$L436:
	addiu	$17,$17,1
	addiu	$2,$2,1
	addiu	$16,$16,-1
$L434:
	beq	$16,$0,$L435
	nop

	lb	$3,0($17)
	nop
	bne	$3,$0,$L436
	sb	$3,0($2)

$L435:
	bne	$16,$0,$L437
	nop

	sb	$0,0($2)
$L437:
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
$L440:
	beq	$2,$5,$L443
	addu	$3,$4,$2

	lb	$3,0($3)
	nop
	bne	$3,$0,$L442
	nop

$L443:
	jr	$31
	nop

$L442:
	.option	pic0
	b	$L440
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
$L445:
	lb	$2,0($4)
	nop
	beq	$2,$0,$L453
	move	$3,$5

$L448:
	lb	$6,0($3)
	nop
	beq	$6,$0,$L452
	addiu	$3,$3,1

	lb	$7,-1($3)
	lb	$6,0($4)
	nop
	bne	$7,$6,$L448
	nop

	jr	$31
	move	$2,$4

$L452:
	.option	pic0
	b	$L445
	.option	pic2
	addiu	$4,$4,1

$L453:
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
	b	$L456
	.option	pic2
	move	$2,$0

$L455:
	addiu	$4,$4,1
	lb	$3,-1($4)
	nop
	beq	$3,$0,$L460
	nop

$L456:
	lb	$3,0($4)
	nop
	bne	$5,$3,$L455
	nop

	.option	pic0
	b	$L455
	.option	pic2
	move	$2,$4

$L460:
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
	beq	$2,$0,$L465
	move	$18,$2

	lb	$19,0($17)
	nop
$L463:
	move	$5,$19
	move	$4,$16
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	beq	$2,$0,$L468
	move	$16,$2

	move	$6,$18
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	beq	$2,$0,$L469
	move	$2,$16

	.option	pic0
	b	$L463
	.option	pic2
	addiu	$16,$16,1

$L468:
	.option	pic0
	b	$L462
	.option	pic2
	move	$2,$0

$L465:
	move	$2,$16
$L462:
$L469:
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
	bc1t	$L484
	swc1	$f13,16($sp)

$L471:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L481
	nop

	c.lt.d	$f14,$f0
	nop
	bc1t	$L485
	li	$2,-2147483648			# 0xffffffff80000000

	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
$L474:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	addiu	$sp,$sp,16

$L484:
	c.lt.d	$f0,$f14
	nop
	bc1f	$L471
	li	$2,-2147483648			# 0xffffffff80000000

$L485:
	lw	$3,16($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	.option	pic0
	b	$L474
	.option	pic2
	sw	$2,12($sp)

$L481:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	swc1	$f0,12($sp)
	.option	pic0
	b	$L474
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
	beq	$7,$0,$L491
	addu	$18,$4,$18

	sltu	$5,$5,$7
	bne	$5,$0,$L492
	move	$17,$6

	addiu	$20,$6,1
	.option	pic0
	b	$L488
	.option	pic2
	addiu	$19,$7,-1

$L489:
	addiu	$16,$16,1
$L488:
	sltu	$2,$18,$16
	bne	$2,$0,$L495
	move	$2,$0

	lb	$3,0($16)
	lb	$2,0($17)
	nop
	bne	$3,$2,$L489
	move	$6,$19

	move	$5,$20
	addiu	$4,$16,1
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	bne	$2,$0,$L488
	addiu	$16,$16,1

	addiu	$16,$16,-1
	move	$2,$16
$L495:
$L487:
	lw	$31,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

$L491:
	.option	pic0
	b	$L487
	.option	pic2
	move	$2,$4

$L492:
	.option	pic0
	b	$L487
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
	bc1t	$L519
	swc1	$f13,16($sp)

	move	$3,$0
$L499:
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
	bc1f	$L520
	lui	$4,%hi($LC8)

	lwc1	$f0,%lo($LC8+4)($4)
	nop
	lwc1	$f1,%lo($LC8)($4)
	lui	$4,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($4)
	nop
	lwc1	$f3,%lo($LC7)($4)
	.option	pic0
	b	$L501
	.option	pic2
	move	$2,$0

$L519:
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
	b	$L499
	.option	pic2
	li	$3,1			# 0x1

$L503:
	addiu	$2,$2,1
	lwc1	$f4,20($sp)
	nop
	lwc1	$f5,16($sp)
	nop
	mul.d	$f4,$f4,$f2
	swc1	$f4,20($sp)
	swc1	$f5,16($sp)
$L501:
	lwc1	$f4,20($sp)
	nop
	lwc1	$f5,16($sp)
	nop
	c.le.d	$f0,$f4
	nop
	bc1t	$L503
	nop

$L504:
	beq	$3,$0,$L508
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
$L508:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

$L520:
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
	bc1f	$L517
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.eq.d	$f2,$f0
	nop
	bc1f	$L512
	lui	$4,%hi($LC7)

	.option	pic0
	b	$L504
	.option	pic2
	move	$2,$0

$L507:
	addiu	$2,$2,-1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	add.d	$f2,$f2,$f2
	swc1	$f2,20($sp)
	swc1	$f3,16($sp)
$L506:
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L507
	nop

	.option	pic0
	b	$L504
	nop

	.option	pic2
$L512:
	lwc1	$f0,%lo($LC7+4)($4)
	nop
	lwc1	$f1,%lo($LC7)($4)
	.option	pic0
	b	$L506
	.option	pic2
	move	$2,$0

$L517:
	.option	pic0
	b	$L504
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
	b	$L522
	.option	pic2
	move	$9,$0

$L523:
	subu	$3,$0,$8
	and	$8,$6,$3
	and	$3,$7,$3
	addu	$3,$9,$3
	sltu	$9,$3,$9
	addu	$2,$2,$8
	srl	$8,$7,31
	sll	$6,$6,1
	or	$6,$8,$6
	sll	$7,$7,1
	sll	$8,$4,31
	srl	$5,$5,1
	or	$5,$8,$5
	srl	$4,$4,1
	addu	$2,$9,$2
	move	$9,$3
$L522:
	or	$3,$4,$5
	bne	$3,$0,$L523
	andi	$8,$5,0x1

	jr	$31
	move	$3,$9

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
	b	$L525
	.option	pic2
	li	$3,1			# 0x1

$L529:
	sll	$5,$5,1
	sll	$3,$3,1
$L525:
	sltu	$2,$5,$4
	beq	$2,$0,$L535
	addiu	$7,$7,-1

	beq	$7,$0,$L533
	nop

	bgez	$5,$L529
	move	$2,$0

	.option	pic0
	b	$L527
	nop

	.option	pic2
$L535:
	.option	pic0
	b	$L527
	.option	pic2
	move	$2,$0

$L533:
	.option	pic0
	b	$L527
	.option	pic2
	move	$2,$0

$L530:
	srl	$3,$3,1
	srl	$5,$5,1
$L527:
	beq	$3,$0,$L536
	sltu	$7,$4,$5

	bne	$7,$0,$L530
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L530
	.option	pic2
	or	$2,$2,$3

$L536:
	bne	$6,$0,$L537
	nop

$L532:
	jr	$31
	nop

$L537:
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
	.cprestore	16
	sra	$2,$4,31
	beq	$2,$4,$L540
	xor	$3,$2,$4

	lw	$25,%call16(__clzsi2)($28)
	sll	$4,$3,8
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
$L539:
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L540:
	.option	pic0
	b	$L539
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
	sra	$2,$4,31
	xor	$4,$2,$4
	xor	$5,$2,$5
	or	$2,$4,$5
	beq	$2,$0,$L545
	.cprestore	16

	lw	$25,%call16(__clzdi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
$L543:
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L545:
	.option	pic0
	b	$L543
	.option	pic2
	li	$2,63			# 0x3f

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
	b	$L548
	.option	pic2
	move	$2,$0

$L549:
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	sll	$5,$5,1
$L548:
	bne	$4,$0,$L549
	andi	$3,$4,0x1

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
	beq	$3,$0,$L551
	and	$2,$6,$2

	move	$3,$5
$L561:
	move	$7,$4
	sll	$10,$10,3
	.option	pic0
	b	$L552
	.option	pic2
	addu	$10,$10,$5

$L551:
	addu	$3,$5,$6
	sltu	$3,$3,$4
	bne	$3,$0,$L561
	move	$3,$5

	.option	pic0
	b	$L554
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L555:
	lw	$9,4($3)
	lw	$8,0($3)
	sw	$9,4($7)
	sw	$8,0($7)
	addiu	$3,$3,8
	addiu	$7,$7,8
$L552:
	bne	$3,$10,$L555
	nop

	.option	pic0
	b	$L560
	.option	pic2
	sltu	$3,$2,$6

$L557:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L560:
	bne	$3,$0,$L557
	addu	$3,$5,$2

	jr	$31
	nop

$L559:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L554:
	addiu	$6,$6,-1
	bne	$6,$7,$L559
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
	beq	$2,$0,$L563
	srl	$8,$6,1

	move	$2,$5
$L570:
	move	$3,$4
	sll	$8,$8,1
	.option	pic0
	b	$L564
	.option	pic2
	addu	$8,$8,$5

$L563:
	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L570
	move	$2,$5

	.option	pic0
	b	$L566
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L567:
	lh	$7,0($2)
	nop
	sh	$7,0($3)
	addiu	$2,$2,2
	addiu	$3,$3,2
$L564:
	bne	$2,$8,$L567
	nop

	andi	$2,$6,0x1
	beq	$2,$0,$L571
	addiu	$6,$6,-1

	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	jr	$31
	sb	$2,0($4)

$L569:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L566:
	addiu	$6,$6,-1
	bne	$6,$7,$L569
	addu	$2,$5,$6

$L571:
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
	beq	$3,$0,$L573
	and	$2,$6,$2

	move	$3,$5
$L583:
	move	$7,$4
	sll	$9,$9,2
	.option	pic0
	b	$L574
	.option	pic2
	addu	$9,$9,$5

$L573:
	addu	$3,$5,$6
	sltu	$3,$3,$4
	bne	$3,$0,$L583
	move	$3,$5

	.option	pic0
	b	$L576
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L577:
	lw	$8,0($3)
	nop
	sw	$8,0($7)
	addiu	$3,$3,4
	addiu	$7,$7,4
$L574:
	bne	$3,$9,$L577
	nop

	.option	pic0
	b	$L582
	.option	pic2
	sltu	$3,$2,$6

$L579:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L582:
	bne	$3,$0,$L579
	addu	$3,$5,$2

	jr	$31
	nop

$L581:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L576:
	addiu	$6,$6,-1
	bne	$6,$7,$L581
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
	bltz	$4,$L588
	cvt.d.w	$f0,$f0

$L586:
	jr	$31
	nop

$L588:
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
	bltz	$4,$L592
	cvt.d.w	$f0,$f0

$L590:
	jr	$31
	cvt.s.d	$f0,$f0

$L592:
	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	.option	pic0
	b	$L590
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
$L599:
	beq	$2,$5,$L602
	subu	$3,$6,$2

	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,$L602
	nop

	.option	pic0
	b	$L599
	.option	pic2
	addiu	$2,$2,1

$L602:
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
$L604:
	beq	$2,$5,$L607
	sra	$3,$4,$2

	andi	$3,$3,0x1
	bne	$3,$0,$L607
	nop

	.option	pic0
	b	$L604
	.option	pic2
	addiu	$2,$2,1

$L607:
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
	bc1t	$L615
	nop

	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	jr	$31
	nop

$L615:
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
	b	$L617
	.option	pic2
	li	$6,16			# 0x10

$L618:
	andi	$5,$5,0x1
	addiu	$3,$3,1
	addu	$2,$5,$2
$L617:
	bne	$3,$6,$L618
	sra	$5,$4,$3

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
	b	$L620
	.option	pic2
	li	$6,16			# 0x10

$L621:
	andi	$5,$5,0x1
	addiu	$3,$3,1
	addu	$2,$5,$2
$L620:
	bne	$3,$6,$L621
	sra	$5,$4,$3

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
	b	$L623
	.option	pic2
	move	$2,$0

$L624:
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	sll	$5,$5,1
$L623:
	bne	$4,$0,$L624
	andi	$3,$4,0x1

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
	beq	$4,$0,$L629
	nop

	.option	pic0
	b	$L627
	.option	pic2
	move	$2,$0

$L628:
	subu	$3,$0,$3
	and	$3,$3,$4
	srl	$5,$5,1
	addu	$2,$3,$2
	sll	$4,$4,1
$L627:
	bne	$5,$0,$L628
	andi	$3,$5,0x1

	jr	$31
	nop

$L629:
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
	b	$L631
	.option	pic2
	li	$3,1			# 0x1

$L635:
	sll	$5,$5,1
	sll	$3,$3,1
$L631:
	sltu	$2,$5,$4
	beq	$2,$0,$L641
	addiu	$7,$7,-1

	beq	$7,$0,$L639
	nop

	bgez	$5,$L635
	move	$2,$0

	.option	pic0
	b	$L633
	nop

	.option	pic2
$L641:
	.option	pic0
	b	$L633
	.option	pic2
	move	$2,$0

$L639:
	.option	pic0
	b	$L633
	.option	pic2
	move	$2,$0

$L636:
	srl	$3,$3,1
	srl	$5,$5,1
$L633:
	beq	$3,$0,$L642
	sltu	$7,$4,$5

	bne	$7,$0,$L636
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L636
	.option	pic2
	or	$2,$2,$3

$L642:
	bne	$6,$0,$L643
	nop

$L638:
	jr	$31
	nop

$L643:
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
	bc1t	$L647
	nop

	c.lt.s	$f14,$f12
	nop
	bc1t	$L646
	li	$2,1			# 0x1

	move	$2,$0
$L646:
	jr	$31
	andi	$2,$2,0x00ff

$L647:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

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
	bc1t	$L651
	nop

	c.lt.d	$f14,$f12
	nop
	bc1t	$L650
	li	$2,1			# 0x1

	move	$2,$0
$L650:
	jr	$31
	andi	$2,$2,0x00ff

$L651:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

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
	bltz	$5,$L662
	nop

	move	$7,$0
$L655:
	li	$6,33			# 0x21
	.option	pic0
	b	$L656
	.option	pic2
	move	$2,$0

$L662:
	subu	$5,$0,$5
	.option	pic0
	b	$L655
	.option	pic2
	li	$7,1			# 0x1

$L658:
	subu	$3,$0,$3
	and	$3,$3,$4
	sra	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
$L656:
	beq	$5,$0,$L657
	nop

	addiu	$6,$6,-1
	andi	$6,$6,0x00ff
	bne	$6,$0,$L658
	andi	$3,$5,0x1

$L657:
	beq	$7,$0,$L663
	nop

	subu	$2,$0,$2
$L663:
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
	bltz	$4,$L670
	sw	$16,24($sp)

	move	$16,$0
$L665:
	bltz	$5,$L671
	nop

$L666:
	move	$6,$0
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L667
	nop

	subu	$2,$0,$2
$L667:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

$L670:
	subu	$4,$0,$4
	.option	pic0
	b	$L665
	.option	pic2
	li	$16,1			# 0x1

$L671:
	subu	$5,$0,$5
	.option	pic0
	b	$L666
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
	bltz	$4,$L678
	move	$2,$5

	move	$16,$0
$L673:
	bltz	$2,$L679
	move	$5,$2

$L674:
	li	$6,1			# 0x1
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L675
	nop

	subu	$2,$0,$2
$L675:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

$L678:
	subu	$4,$0,$4
	.option	pic0
	b	$L673
	.option	pic2
	li	$16,1			# 0x1

$L679:
	.option	pic0
	b	$L674
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
	li	$2,17			# 0x11
	li	$3,1			# 0x1
$L681:
	sltu	$7,$5,$4
	beq	$7,$0,$L691
	nop

	addiu	$2,$2,-1
	beq	$2,$0,$L689
	sll	$7,$5,16

	sra	$7,$7,16
	bltz	$7,$L692
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	.option	pic0
	b	$L681
	.option	pic2
	andi	$3,$3,0xffff

$L691:
	.option	pic0
	b	$L683
	.option	pic2
	move	$2,$0

$L689:
	.option	pic0
	b	$L683
	.option	pic2
	move	$2,$0

$L692:
	.option	pic0
	b	$L683
	.option	pic2
	move	$2,$0

$L686:
	srl	$3,$3,1
	srl	$5,$5,1
$L683:
	beq	$3,$0,$L693
	sltu	$7,$4,$5

	bne	$7,$0,$L686
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	.option	pic0
	b	$L686
	.option	pic2
	or	$2,$2,$3

$L693:
	bne	$6,$0,$L694
	nop

$L688:
	jr	$31
	nop

$L694:
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
	b	$L696
	.option	pic2
	li	$3,1			# 0x1

$L700:
	sll	$5,$5,1
	sll	$3,$3,1
$L696:
	sltu	$2,$5,$4
	beq	$2,$0,$L706
	addiu	$7,$7,-1

	beq	$7,$0,$L704
	nop

	bgez	$5,$L700
	move	$2,$0

	.option	pic0
	b	$L698
	nop

	.option	pic2
$L706:
	.option	pic0
	b	$L698
	.option	pic2
	move	$2,$0

$L704:
	.option	pic0
	b	$L698
	.option	pic2
	move	$2,$0

$L701:
	srl	$3,$3,1
	srl	$5,$5,1
$L698:
	beq	$3,$0,$L707
	sltu	$7,$4,$5

	bne	$7,$0,$L701
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L701
	.option	pic2
	or	$2,$2,$3

$L707:
	bne	$6,$0,$L708
	nop

$L703:
	jr	$31
	nop

$L708:
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
	beq	$2,$0,$L710
	move	$3,$0

	jr	$31
	sll	$2,$5,$6

$L710:
	beq	$6,$0,$L713
	nop

	sll	$3,$5,$6
	sll	$2,$4,$6
	subu	$6,$0,$6
	srl	$5,$5,$6
	jr	$31
	or	$2,$5,$2

$L713:
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
	beq	$2,$0,$L715
	sra	$2,$4,31

	sra	$5,$4,$6
$L717:
	jr	$31
	move	$3,$5

$L715:
	beq	$6,$0,$L718
	nop

	sra	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L717
	.option	pic2
	or	$5,$4,$5

$L718:
	.option	pic0
	b	$L717
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
	li	$3,65536			# 0x10000
	sltu	$3,$4,$3
	sll	$3,$3,4
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	sltu	$2,$2,1
	sll	$2,$2,3
	li	$5,8			# 0x8
	subu	$5,$5,$2
	srl	$4,$4,$5
	addu	$3,$3,$2
	andi	$2,$4,0xf0
	sltu	$2,$2,1
	sll	$2,$2,2
	li	$5,4			# 0x4
	subu	$5,$5,$2
	srl	$4,$4,$5
	addu	$3,$3,$2
	andi	$2,$4,0xc
	sltu	$2,$2,1
	sll	$2,$2,1
	li	$5,2			# 0x2
	subu	$6,$5,$2
	srl	$4,$4,$6
	addu	$3,$3,$2
	andi	$2,$4,0x2
	sltu	$2,$2,1
	subu	$5,$5,$4
	subu	$2,$0,$2
	and	$2,$2,$5
	jr	$31
	addu	$2,$3,$2

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
	bne	$2,$0,$L724
	slt	$4,$6,$4

	bne	$4,$0,$L725
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L726
	sltu	$5,$7,$5

	bne	$5,$0,$L727
	nop

	jr	$31
	li	$2,1			# 0x1

$L724:
	jr	$31
	move	$2,$0

$L725:
	jr	$31
	li	$2,2			# 0x2

$L726:
	jr	$31
	move	$2,$0

$L727:
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
	andi	$3,$4,0xffff
	sltu	$3,$3,1
	sll	$3,$3,4
	srl	$4,$4,$3
	andi	$2,$4,0xff
	sltu	$2,$2,1
	sll	$2,$2,3
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0xf
	sltu	$2,$2,1
	sll	$2,$2,2
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	sltu	$2,$2,1
	sll	$2,$2,1
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
	beq	$2,$0,$L732
	move	$2,$0

	srl	$5,$4,$6
$L734:
	jr	$31
	move	$3,$5

$L732:
	beq	$6,$0,$L735
	nop

	srl	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L734
	.option	pic2
	or	$5,$4,$5

$L735:
	.option	pic0
	b	$L734
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
	b	$L747
	.option	pic2
	srl	$3,$6,31

$L751:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L746
	nop

	mul.d	$f12,$f12,$f12
$L747:
	andi	$2,$6,0x1
	beq	$2,$0,$L751
	srl	$2,$6,31

	.option	pic0
	b	$L751
	.option	pic2
	mul.d	$f0,$f0,$f12

$L746:
	beq	$3,$0,$L752
	lui	$2,%hi($LC8)

	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	div.d	$f0,$f2,$f0
$L752:
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
	b	$L756
	.option	pic2
	srl	$3,$5,31

$L760:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L755
	nop

	mul.s	$f12,$f12,$f12
$L756:
	andi	$2,$5,0x1
	beq	$2,$0,$L760
	srl	$2,$5,31

	.option	pic0
	b	$L760
	.option	pic2
	mul.s	$f0,$f0,$f12

$L755:
	beq	$3,$0,$L761
	lui	$2,%hi($LC11)

	lwc1	$f2,%lo($LC11)($2)
	nop
	div.s	$f0,$f2,$f0
$L761:
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
	bne	$2,$0,$L764
	sltu	$4,$6,$4

	bne	$4,$0,$L765
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L766
	sltu	$5,$7,$5

	bne	$5,$0,$L767
	nop

	jr	$31
	li	$2,1			# 0x1

$L764:
	jr	$31
	move	$2,$0

$L765:
	jr	$31
	li	$2,2			# 0x2

$L766:
	jr	$31
	move	$2,$0

$L767:
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
