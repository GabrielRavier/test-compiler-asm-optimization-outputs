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
	.option	pic0
	b	$L34
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L36:
	lbu	$3,0($3)
	nop
	bne	$5,$3,$L37
	addiu	$7,$6,-1

	jr	$31
	addu	$2,$4,$6

$L37:
	move	$6,$7
$L34:
	bne	$6,$2,$L36
	addu	$3,$4,$6

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
	b	$L39
	.option	pic2
	andi	$5,$5,0x00ff

$L40:
	sb	$5,0($3)
	addiu	$3,$3,1
$L39:
	bne	$3,$6,$L40
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
	b	$L42
	.option	pic2
	move	$2,$4

$L43:
	addiu	$5,$5,1
	addiu	$2,$2,1
$L42:
	lb	$3,0($5)
	nop
	bne	$3,$0,$L43
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
	b	$L45
	.option	pic2
	andi	$5,$5,0x00ff

$L45:
	lb	$3,0($2)
	nop
	beq	$3,$0,$L48
	nop

	lbu	$3,0($2)
	nop
	bne	$5,$3,$L45
	addiu	$2,$2,1

	addiu	$2,$2,-1
$L48:
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
$L51:
	lb	$2,0($4)
	nop
	beq	$5,$2,$L52
	nop

	addiu	$4,$4,1
	lb	$2,-1($4)
	nop
	bne	$2,$0,$L51
	nop

	jr	$31
	nop

$L52:
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
	b	$L55
	nop

	.option	pic2
$L58:
	addiu	$5,$5,1
$L55:
	lb	$3,0($4)
	lb	$2,0($5)
	nop
	bne	$3,$2,$L56
	nop

	bne	$3,$0,$L58
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L56:
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
	b	$L60
	.option	pic2
	move	$2,$4

$L61:
	addiu	$2,$2,1
$L60:
	lb	$5,0($2)
	nop
	bne	$5,$0,$L61
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
	beq	$6,$0,$L67
	addiu	$6,$6,-1

	.option	pic0
	b	$L64
	.option	pic2
	addu	$2,$4,$6

$L68:
	addiu	$5,$5,1
$L64:
	lbu	$3,0($4)
	nop
	beq	$3,$0,$L65
	nop

	lbu	$3,0($5)
	nop
	beq	$3,$0,$L65
	nop

	beq	$4,$2,$L65
	nop

	lbu	$6,0($4)
	nop
	beq	$6,$3,$L68
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L65:
	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

$L67:
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
	b	$L70
	.option	pic2
	addu	$6,$4,$6

$L71:
	lb	$3,1($2)
	nop
	sb	$3,0($5)
	lb	$3,0($2)
	nop
	sb	$3,1($5)
	addiu	$5,$5,2
	addiu	$2,$2,2
$L70:
	subu	$3,$6,$2
	slt	$3,$3,2
	beq	$3,$0,$L71
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
	beq	$4,$2,$L76
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

$L76:
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
	bne	$2,$0,$L80
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

$L80:
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
	bne	$2,$0,$L93
	nop

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,$L94
	nop

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L95
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	jr	$31
	sltu	$2,$4,3

$L93:
	jr	$31
	li	$2,1			# 0x1

$L94:
	jr	$31
	li	$2,1			# 0x1

$L95:
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
	beq	$2,$0,$L99
	addiu	$2,$4,1

	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	xori	$2,$2,0x1

$L99:
	sltu	$2,$4,8232
	bne	$2,$0,$L101
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,$L102
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$4,$2
	sltu	$2,$2,8185
	bne	$2,$0,$L103
	li	$3,1048576			# 0x100000

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L104
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

$L101:
	jr	$31
	li	$2,1			# 0x1

$L102:
	jr	$31
	li	$2,1			# 0x1

$L103:
	jr	$31
	li	$2,1			# 0x1

$L104:
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
	bne	$2,$0,$L108
	nop

	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

$L108:
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
	bc1t	$L114
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L115
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L118
	nop

	jr	$31
	sub.d	$f0,$f12,$f14

$L114:
	jr	$31
	mov.d	$f0,$f12

$L115:
	jr	$31
	mov.d	$f0,$f14

$L118:
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
	bc1t	$L122
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L123
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L126
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L122:
	jr	$31
	mov.s	$f0,$f12

$L123:
	jr	$31
	mov.s	$f0,$f14

$L126:
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
	bc1t	$L131
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L132
	mov.d	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L129
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L133
	nop

	jr	$31
	nop

$L129:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L136
	nop

	jr	$31
	mov.d	$f0,$f2

$L131:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L132:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L133:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L136:
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
	bc1t	$L141
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L142
	mov.s	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L139
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L143
	nop

	jr	$31
	nop

$L139:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L147
	nop

	jr	$31
	mov.s	$f0,$f2

$L141:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L142:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L143:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L147:
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
	bc1t	$L153
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L154
	mov.d	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L151
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L155
	nop

	jr	$31
	nop

$L151:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L158
	nop

	jr	$31
	mov.d	$f0,$f2

$L153:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L154:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L155:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L158:
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
	bc1t	$L163
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L164
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L161
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L165
	nop

	jr	$31
	mov.d	$f0,$f12

$L161:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L168
	nop

	jr	$31
	nop

$L163:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L164:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L165:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L168:
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
	bc1t	$L173
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L174
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,4($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L171
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L175
	nop

	jr	$31
	mov.s	$f0,$f12

$L171:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L178
	nop

	jr	$31
	nop

$L173:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L174:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L175:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L178:
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
	bc1t	$L183
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L184
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L181
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L185
	nop

	jr	$31
	mov.d	$f0,$f12

$L181:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L188
	nop

	jr	$31
	nop

$L183:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L184:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L185:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L188:
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
	b	$L190
	.option	pic2
	addiu	$5,$5,%lo(digits)

$L191:
	andi	$2,$4,0x3f
	addu	$2,$2,$5
	lb	$2,0($2)
	nop
	sb	$2,0($3)
	addiu	$3,$3,1
	srl	$4,$4,6
$L190:
	bne	$4,$0,$L191
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
	addiu	$3,$4,-1
	move	$2,$0
	lui	$4,%hi(seed)
	sw	$3,%lo(seed+4)($4)
	jr	$31
	sw	$2,%lo(seed)($4)

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
	jr	$31
	move	$2,$5

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
	bne	$5,$0,$L195
	nop

	sw	$0,4($4)
	jr	$31
	sw	$0,0($4)

$L195:
	lw	$2,0($5)
	nop
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L197
	nop

	sw	$4,4($2)
$L197:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	nop
	beq	$2,$0,$L199
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L199:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L201
	nop

	lw	$3,0($4)
	nop
	sw	$3,0($2)
$L201:
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
	b	$L203
	.option	pic2
	move	$16,$0

$L206:
	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	lw	$28,16($sp)
	bne	$2,$0,$L204
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L205
	.option	pic2
	addu	$2,$22,$2

$L204:
	addiu	$16,$16,1
$L203:
	bne	$16,$20,$L206
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

	lw	$28,16($sp)
$L205:
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
	b	$L208
	.option	pic2
	move	$16,$0

$L211:
	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	bne	$2,$0,$L209
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L210
	.option	pic2
	addu	$2,$22,$2

$L209:
	addiu	$16,$16,1
$L208:
	bne	$16,$20,$L211
	move	$5,$17

	move	$2,$0
$L210:
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
	bgez	$4,$L214
	move	$2,$4

	subu	$2,$0,$4
$L214:
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
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$16,24($sp)
	.option	pic0
	b	$L216
	.option	pic2
	move	$16,$4

$L217:
	addiu	$16,$16,1
$L216:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L217
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L223
	li	$3,45			# 0x2d

	bne	$2,$3,$L224
	nop

	.option	pic0
	b	$L218
	.option	pic2
	li	$4,1			# 0x1

$L223:
	move	$4,$0
$L218:
	.option	pic0
	b	$L219
	.option	pic2
	addiu	$16,$16,1

$L224:
	move	$4,$0
$L219:
	.option	pic0
	b	$L220
	.option	pic2
	move	$2,$0

$L221:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L220:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L221
	addiu	$16,$16,1

	bne	$4,$0,$L222
	nop

	subu	$2,$0,$2
$L222:
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
	b	$L227
	.option	pic2
	move	$16,$4

$L228:
	addiu	$16,$16,1
$L227:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L228
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L234
	li	$3,45			# 0x2d

	bne	$2,$3,$L235
	nop

	.option	pic0
	b	$L229
	.option	pic2
	li	$4,1			# 0x1

$L234:
	move	$4,$0
$L229:
	.option	pic0
	b	$L230
	.option	pic2
	addiu	$16,$16,1

$L235:
	move	$4,$0
$L230:
	.option	pic0
	b	$L231
	.option	pic2
	move	$2,$0

$L232:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L231:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L232
	addiu	$16,$16,1

	bne	$4,$0,$L233
	nop

	subu	$2,$0,$2
$L233:
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
	.option	pic0
	b	$L238
	.option	pic2
	move	$22,$4

$L239:
	addiu	$22,$22,1
$L238:
	lb	$4,0($22)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L239
	li	$3,43			# 0x2b

	lb	$2,0($22)
	nop
	beq	$2,$3,$L245
	li	$3,45			# 0x2d

	bne	$2,$3,$L246
	nop

	.option	pic0
	b	$L240
	.option	pic2
	li	$5,1			# 0x1

$L245:
	move	$5,$0
$L240:
	.option	pic0
	b	$L241
	.option	pic2
	addiu	$22,$22,1

$L246:
	move	$5,$0
$L241:
	move	$9,$0
	.option	pic0
	b	$L242
	.option	pic2
	move	$8,$0

$L243:
	sll	$16,$8,2
	or	$16,$4,$16
	sll	$17,$9,2
	addu	$7,$17,$9
	sltu	$3,$7,$17
	addu	$6,$16,$8
	addu	$6,$3,$6
	srl	$2,$7,31
	sll	$18,$6,1
	or	$18,$2,$18
	sll	$19,$7,1
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
$L242:
	lb	$4,0($22)
	nop
	addiu	$4,$4,-48
	sltu	$4,$4,10
	bne	$4,$0,$L243
	srl	$4,$9,30

	bne	$5,$0,$L247
	subu	$5,$0,$9

	sltu	$3,$0,$5
	subu	$4,$0,$8
	subu	$4,$4,$3
	move	$3,$5
	.option	pic0
	b	$L244
	.option	pic2
	move	$2,$4

$L247:
	move	$3,$9
	move	$2,$8
$L244:
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
	b	$L249
	.option	pic2
	move	$18,$7

$L253:
	srl	$2,$16,1
	mult	$2,$18
	mflo	$17
	addu	$17,$19,$17
	move	$5,$17
	move	$25,$21
	jalr	$25
	nop

	bgez	$2,$L250
	nop

	.option	pic0
	b	$L249
	.option	pic2
	srl	$16,$16,1

$L250:
	blez	$2,$L254
	addu	$19,$17,$18

	srl	$2,$16,1
	addiu	$16,$16,-1
	subu	$16,$16,$2
$L249:
	bne	$16,$0,$L253
	move	$4,$20

	.option	pic0
	b	$L252
	.option	pic2
	move	$2,$0

$L254:
	move	$2,$17
$L252:
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

$L259:
	sra	$2,$16,1
	mult	$2,$19
	mflo	$17
	addu	$17,$18,$17
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
	addiu	$16,$16,-1
$L258:
	sra	$16,$16,1
$L256:
	bne	$16,$0,$L259
	move	$6,$21

	.option	pic0
	b	$L257
	.option	pic2
	move	$2,$0

$L260:
	move	$2,$17
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
	move	$3,$5
	bgez	$4,$L265
	move	$2,$4

	subu	$3,$0,$5
	sltu	$5,$0,$3
	subu	$2,$0,$4
	subu	$2,$2,$5
$L265:
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
	move	$20,$4
	move	$17,$7
	move	$16,$6
	lw	$25,%call16(__divdi3)($28)
	lw	$7,68($sp)
	lw	$6,64($sp)
	move	$5,$17
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$3
	move	$18,$2
	lw	$25,%call16(__moddi3)($28)
	lw	$7,68($sp)
	lw	$6,64($sp)
	move	$5,$17
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$19,4($20)
	sw	$18,0($20)
	sw	$3,12($20)
	sw	$2,8($20)
	move	$2,$20
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
	bgez	$4,$L269
	move	$2,$4

	subu	$2,$0,$4
$L269:
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
	move	$3,$5
	bgez	$4,$L274
	move	$2,$4

	subu	$3,$0,$5
	sltu	$5,$0,$3
	subu	$2,$0,$4
	subu	$2,$2,$5
$L274:
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
	move	$20,$4
	move	$17,$7
	move	$16,$6
	lw	$25,%call16(__divdi3)($28)
	lw	$7,68($sp)
	lw	$6,64($sp)
	move	$5,$17
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$3
	move	$18,$2
	lw	$25,%call16(__moddi3)($28)
	lw	$7,68($sp)
	lw	$6,64($sp)
	move	$5,$17
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$19,4($20)
	sw	$18,0($20)
	sw	$3,12($20)
	sw	$2,8($20)
	move	$2,$20
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
$L277:
	lw	$2,0($4)
	nop
	beq	$2,$0,$L282
	nop

	bne	$5,$2,$L277
	addiu	$4,$4,4

	addiu	$4,$4,-4
	lw	$2,0($4)
	nop
$L282:
	beq	$2,$0,$L281
	nop

	jr	$31
	move	$2,$4

$L281:
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
	b	$L284
	nop

	.option	pic2
$L289:
	addiu	$5,$5,4
$L284:
	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L285
	nop

	beq	$3,$0,$L285
	nop

	bne	$2,$0,$L289
	addiu	$4,$4,4

	addiu	$4,$4,-4
$L285:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L288
	nop

	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

$L288:
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
$L291:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$6,-4($5)
	nop
	bne	$6,$0,$L291
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
	b	$L294
	.option	pic2
	move	$2,$4

$L295:
	addiu	$2,$2,4
$L294:
	lw	$3,0($2)
	nop
	bne	$3,$0,$L295
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
	.option	pic0
	b	$L297
	nop

	.option	pic2
$L303:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L297:
	beq	$6,$0,$L298
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L298
	nop

	beq	$3,$0,$L298
	nop

	bne	$2,$0,$L303
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L298:
	beq	$6,$0,$L301
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L302
	nop

	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

$L301:
	jr	$31
	move	$2,$0

$L302:
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
	b	$L305
	nop

	.option	pic2
$L310:
	addiu	$4,$4,4
$L305:
	beq	$6,$0,$L306
	nop

	lw	$2,0($4)
	nop
	bne	$5,$2,$L310
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L306:
	beq	$6,$0,$L309
	nop

	jr	$31
	move	$2,$4

$L309:
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
	b	$L312
	nop

	.option	pic2
$L318:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L312:
	beq	$6,$0,$L313
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	beq	$3,$2,$L318
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L313:
	beq	$6,$0,$L316
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L317
	nop

	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

$L316:
	jr	$31
	move	$2,$0

$L317:
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
	b	$L320
	.option	pic2
	li	$8,-1			# 0xffffffffffffffff

$L321:
	addiu	$3,$3,4
	lw	$7,-4($5)
	nop
	sw	$7,-4($3)
$L320:
	addiu	$6,$6,-1
	bne	$6,$8,$L321
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
	beq	$4,$5,$L330
	move	$2,$4

	subu	$3,$4,$5
	sll	$4,$6,2
	sltu	$3,$3,$4
	beq	$3,$0,$L328
	li	$7,-1			# 0xffffffffffffffff

	addu	$5,$5,$4
	addu	$3,$2,$4
	.option	pic0
	b	$L325
	.option	pic2
	addiu	$6,$2,-4

$L326:
	lw	$4,0($5)
	nop
	sw	$4,0($3)
$L325:
	addiu	$3,$3,-4
	bne	$3,$6,$L326
	addiu	$5,$5,-4

$L330:
	jr	$31
	nop

$L327:
	addiu	$3,$3,4
	lw	$4,-4($5)
	.option	pic0
	b	$L324
	.option	pic2
	sw	$4,-4($3)

$L328:
	move	$3,$2
$L324:
	addiu	$6,$6,-1
	bne	$6,$7,$L327
	addiu	$5,$5,4

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
	move	$3,$4
	.option	pic0
	b	$L332
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L333:
	sw	$5,-4($3)
$L332:
	addiu	$6,$6,-1
	bne	$6,$7,$L333
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
	beq	$2,$0,$L335
	addu	$2,$4,$6

	.option	pic0
	b	$L336
	.option	pic2
	addu	$5,$5,$6

$L337:
	addiu	$5,$5,-1
	lb	$3,0($2)
	nop
	sb	$3,0($5)
$L336:
	bne	$2,$4,$L337
	addiu	$2,$2,-1

$L342:
	jr	$31
	nop

$L335:
	beq	$4,$5,$L342
	addu	$6,$5,$6

	.option	pic0
	b	$L339
	.option	pic2
	move	$2,$4

$L340:
	addiu	$5,$5,1
	lb	$3,-1($2)
	nop
	sb	$3,-1($5)
$L339:
	bne	$5,$6,$L340
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
	beq	$2,$0,$L344
	srl	$2,$5,1

	sll	$8,$5,$6
	.option	pic0
	b	$L345
	.option	pic2
	move	$9,$0

$L344:
	nor	$3,$0,$6
	srl	$2,$2,$3
	sll	$8,$4,$6
	or	$8,$2,$8
	sll	$9,$5,$6
$L345:
	subu	$2,$0,$6
	andi	$2,$2,0x20
	beq	$2,$0,$L346
	move	$10,$0

	subu	$6,$0,$6
	.option	pic0
	b	$L347
	.option	pic2
	srl	$11,$4,$6

$L346:
	sll	$2,$4,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$11,$5,$6
	or	$11,$2,$11
	srl	$10,$4,$6
$L347:
	or	$2,$10,$8
	jr	$31
	or	$3,$11,$9

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
	beq	$2,$0,$L349
	sll	$2,$4,1

	srl	$9,$4,$6
	.option	pic0
	b	$L350
	.option	pic2
	move	$8,$0

$L349:
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$9,$5,$6
	or	$9,$2,$9
	srl	$8,$4,$6
$L350:
	subu	$2,$0,$6
	andi	$2,$2,0x20
	beq	$2,$0,$L351
	move	$11,$0

	subu	$6,$0,$6
	.option	pic0
	b	$L352
	.option	pic2
	sll	$10,$5,$6

$L351:
	srl	$2,$5,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$3,$0,$6
	srl	$2,$2,$3
	sll	$10,$4,$6
	or	$10,$2,$10
	sll	$11,$5,$6
$L352:
	or	$2,$10,$8
	jr	$31
	or	$3,$11,$9

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
	jr	$31
	move	$3,$9

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
	.option	pic0
	b	$L365
	.option	pic2
	li	$5,32			# 0x20

$L368:
	andi	$3,$3,0x1
	beq	$3,$0,$L365
	addiu	$2,$2,1

	addiu	$2,$2,-1
	jr	$31
	addiu	$2,$2,1

$L365:
	bne	$2,$5,$L368
	srl	$3,$4,$2

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
	beq	$4,$0,$L373
	nop

	.option	pic0
	b	$L371
	.option	pic2
	li	$2,1			# 0x1

$L372:
	addiu	$2,$2,1
$L371:
	andi	$3,$4,0x1
	beq	$3,$0,$L372
	sra	$4,$4,1

	jr	$31
	nop

$L373:
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
	bc1t	$L377
	nop

	lui	$2,%hi($LC1)
	lwc1	$f0,%lo($LC1)($2)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1f	$L380
	nop

	jr	$31
	li	$2,1			# 0x1

$L377:
	jr	$31
	li	$2,1			# 0x1

$L380:
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
	bc1t	$L384
	nop

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L387
	nop

	jr	$31
	li	$2,1			# 0x1

$L384:
	jr	$31
	li	$2,1			# 0x1

$L387:
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
	bc1t	$L391
	nop

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	nop
	lwc1	$f1,%lo($LC3)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L394
	nop

	jr	$31
	li	$2,1			# 0x1

$L391:
	jr	$31
	li	$2,1			# 0x1

$L394:
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
	bc1t	$L404
	mov.s	$f0,$f12

	add.s	$f2,$f12,$f12
	c.eq.s	$f12,$f2
	nop
	bc1t	$L404
	nop

	bgez	$5,$L401
	lui	$2,%hi($LC4)

	lwc1	$f2,%lo($LC4)($2)
	.option	pic0
	b	$L402
	.option	pic2
	andi	$2,$5,0x1

$L401:
	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5)($2)
$L400:
	andi	$2,$5,0x1
$L402:
	beq	$2,$0,$L403
	srl	$2,$5,31

	mul.s	$f0,$f0,$f2
$L403:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L404
	nop

	.option	pic0
	b	$L400
	.option	pic2
	mul.s	$f2,$f2,$f2

$L404:
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
	bc1t	$L413
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L413
	nop

	bgez	$6,$L410
	lui	$2,%hi($LC6)

	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L411
	.option	pic2
	andi	$2,$6,0x1

$L410:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
$L409:
	andi	$2,$6,0x1
$L411:
	beq	$2,$0,$L412
	srl	$2,$6,31

	mul.d	$f0,$f0,$f2
$L412:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L413
	nop

	.option	pic0
	b	$L409
	.option	pic2
	mul.d	$f2,$f2,$f2

$L413:
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
	bc1t	$L422
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L422
	nop

	bgez	$6,$L419
	lui	$2,%hi($LC6)

	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L420
	.option	pic2
	andi	$2,$6,0x1

$L419:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
$L418:
	andi	$2,$6,0x1
$L420:
	beq	$2,$0,$L421
	srl	$2,$6,31

	mul.d	$f0,$f0,$f2
$L421:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L422
	nop

	.option	pic0
	b	$L418
	.option	pic2
	mul.d	$f2,$f2,$f2

$L422:
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
	b	$L424
	.option	pic2
	move	$3,$4

$L425:
	lb	$8,-1($5)
	addiu	$3,$3,1
	lb	$7,-1($3)
	nop
	xor	$7,$7,$8
	sb	$7,-1($3)
$L424:
	bne	$3,$6,$L425
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
	b	$L427
	.option	pic2
	addu	$2,$18,$2

$L429:
	addiu	$17,$17,1
	addiu	$2,$2,1
	addiu	$16,$16,-1
$L427:
	beq	$16,$0,$L428
	nop

	lb	$3,0($17)
	nop
	bne	$3,$0,$L429
	sb	$3,0($2)

$L428:
	bne	$16,$0,$L430
	nop

	sb	$0,0($2)
$L430:
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
	.option	pic0
	b	$L432
	.option	pic2
	move	$2,$0

$L434:
	addiu	$2,$2,1
$L432:
	beq	$2,$5,$L435
	addu	$3,$4,$2

	lb	$3,0($3)
	nop
	bne	$3,$0,$L434
	nop

$L435:
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
	.option	pic0
	b	$L437
	nop

	.option	pic2
$L439:
	lb	$7,-1($3)
	lb	$6,0($4)
	nop
	beq	$7,$6,$L444
	move	$2,$4

$L442:
	lb	$6,0($3)
	nop
	bne	$6,$0,$L439
	addiu	$3,$3,1

	addiu	$3,$3,-1
	addiu	$4,$4,1
$L437:
	lb	$2,0($4)
	nop
	bne	$2,$0,$L442
	move	$3,$5

$L444:
	jr	$31
	nop

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
	move	$2,$0
$L447:
	lb	$3,0($4)
	nop
	bne	$5,$3,$L446
	nop

	move	$2,$4
$L446:
	addiu	$4,$4,1
	lb	$3,-1($4)
	nop
	bne	$3,$0,$L447
	nop

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
	beq	$2,$0,$L454
	move	$18,$2

	lb	$19,0($17)
	.option	pic0
	b	$L456
	.option	pic2
	move	$5,$19

$L453:
	move	$6,$18
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	beq	$2,$0,$L455
	move	$5,$19

	addiu	$16,$16,1
$L456:
	move	$4,$16
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	bne	$2,$0,$L453
	move	$16,$2

	.option	pic0
	b	$L451
	.option	pic2
	move	$2,$0

$L454:
	.option	pic0
	b	$L451
	.option	pic2
	move	$2,$16

$L455:
	move	$2,$16
$L451:
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
	bc1f	$L458
	swc1	$f13,16($sp)

	c.lt.d	$f0,$f14
	nop
	bc1t	$L470
	li	$2,-2147483648			# 0xffffffff80000000

$L458:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L468
	nop

	c.lt.d	$f14,$f0
	nop
	bc1f	$L469
	li	$2,-2147483648			# 0xffffffff80000000

$L470:
	lw	$3,16($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	.option	pic0
	b	$L461
	.option	pic2
	sw	$2,12($sp)

$L468:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	swc1	$f0,12($sp)
	.option	pic0
	b	$L461
	.option	pic2
	swc1	$f1,8($sp)

$L469:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
$L461:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	addiu	$sp,$sp,16

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
	move	$17,$6
	subu	$18,$5,$7
	beq	$7,$0,$L476
	addu	$18,$4,$18

	sltu	$5,$5,$7
	bne	$5,$0,$L477
	addiu	$20,$6,1

	.option	pic0
	b	$L473
	.option	pic2
	addiu	$19,$7,-1

$L475:
	lb	$3,0($16)
	lb	$2,0($17)
	nop
	bne	$3,$2,$L474
	move	$6,$19

	move	$5,$20
	addiu	$4,$16,1
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	beq	$2,$0,$L478
	move	$2,$16

$L474:
	addiu	$16,$16,1
$L473:
	sltu	$2,$18,$16
	beq	$2,$0,$L475
	move	$2,$0

	.option	pic0
	b	$L472
	nop

	.option	pic2
$L476:
	.option	pic0
	b	$L472
	.option	pic2
	move	$2,$4

$L477:
	move	$2,$0
$L478:
$L472:
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
	bc1f	$L497
	swc1	$f13,16($sp)

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
	b	$L481
	.option	pic2
	li	$3,1			# 0x1

$L497:
	move	$3,$0
$L481:
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
	bc1t	$L492
	lui	$4,%hi($LC8)

	.option	pic0
	b	$L498
	.option	pic2
	lui	$2,%hi($LC6)

$L485:
	addiu	$2,$2,1
	lwc1	$f4,20($sp)
	nop
	lwc1	$f5,16($sp)
	nop
	mul.d	$f4,$f4,$f2
	swc1	$f4,20($sp)
	.option	pic0
	b	$L483
	.option	pic2
	swc1	$f5,16($sp)

$L492:
	move	$2,$0
	lwc1	$f0,%lo($LC8+4)($4)
	nop
	lwc1	$f1,%lo($LC8)($4)
	lui	$4,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($4)
	nop
	lwc1	$f3,%lo($LC6)($4)
$L483:
	lwc1	$f4,20($sp)
	nop
	lwc1	$f5,16($sp)
	nop
	c.le.d	$f0,$f4
	nop
	bc1t	$L485
	nop

	.option	pic0
	b	$L500
	.option	pic2
	sw	$2,0($6)

$L498:
	lwc1	$f0,%lo($LC6+4)($2)
	nop
	lwc1	$f1,%lo($LC6)($2)
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L499
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.eq.d	$f2,$f0
	nop
	bc1f	$L494
	lui	$4,%hi($LC6)

	.option	pic0
	b	$L486
	.option	pic2
	move	$2,$0

$L489:
	addiu	$2,$2,-1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	add.d	$f2,$f2,$f2
	swc1	$f2,20($sp)
	.option	pic0
	b	$L488
	.option	pic2
	swc1	$f3,16($sp)

$L494:
	move	$2,$0
	lwc1	$f0,%lo($LC6+4)($4)
	nop
	lwc1	$f1,%lo($LC6)($4)
$L488:
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L489
	nop

	.option	pic0
	b	$L500
	.option	pic2
	sw	$2,0($6)

$L499:
	move	$2,$0
$L486:
	sw	$2,0($6)
$L500:
	beq	$3,$0,$L490
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
$L490:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

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
	move	$25,$0
	.option	pic0
	b	$L502
	.option	pic2
	move	$24,$0

$L505:
	andi	$13,$5,0x1
	or	$14,$12,$13
	beq	$14,$0,$L506
	srl	$14,$7,31

	addu	$15,$25,$7
	sltu	$3,$15,$25
	addu	$14,$24,$6
	addu	$14,$3,$14
	move	$25,$15
	move	$24,$14
	srl	$14,$7,31
$L506:
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
$L502:
	or	$14,$4,$5
	bne	$14,$0,$L505
	move	$12,$0

	move	$3,$25
	jr	$31
	move	$2,$24

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
	b	$L508
	.option	pic2
	li	$3,1			# 0x1

$L512:
	sll	$5,$5,1
	sll	$3,$3,1
$L508:
	sltu	$2,$5,$4
	bne	$2,$0,$L509
	addiu	$7,$7,-1

	addiu	$7,$7,1
	.option	pic0
	b	$L510
	.option	pic2
	move	$2,$0

$L509:
	beq	$7,$0,$L510
	move	$2,$0

	bgez	$5,$L512
	nop

	.option	pic0
	b	$L510
	nop

	.option	pic2
$L514:
	bne	$7,$0,$L513
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L513:
	srl	$3,$3,1
	srl	$5,$5,1
$L510:
	bne	$3,$0,$L514
	sltu	$7,$4,$5

	beq	$6,$0,$L518
	nop

	move	$2,$4
$L518:
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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	bgez	$4,$L520
	.cprestore	16

	nor	$4,$0,$4
$L520:
	beq	$4,$0,$L522
	sll	$4,$4,8

	lw	$25,%call16(__clzsi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	.option	pic0
	b	$L521
	.option	pic2
	addiu	$2,$2,-1

$L522:
	li	$2,7			# 0x7
$L521:
	lw	$31,28($sp)
	nop
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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	bgez	$4,$L524
	.cprestore	16

	nor	$2,$0,$4
	nor	$3,$0,$5
	move	$5,$3
	move	$4,$2
$L524:
	or	$2,$4,$5
	beq	$2,$0,$L528
	nop

	lw	$25,%call16(__clzdi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	.option	pic0
	b	$L526
	.option	pic2
	addiu	$2,$2,-1

$L528:
	li	$2,63			# 0x3f
$L526:
	lw	$31,28($sp)
	nop
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.option	pic0
	b	$L530
	.option	pic2
	move	$2,$0

$L532:
	beq	$3,$0,$L531
	nop

	addu	$2,$2,$5
$L531:
	srl	$4,$4,1
	sll	$5,$5,1
$L530:
	bne	$4,$0,$L532
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
	bne	$3,$0,$L534
	and	$2,$6,$2

	addu	$3,$5,$6
	sltu	$3,$3,$4
	bne	$3,$0,$L544
	move	$3,$5

	.option	pic0
	b	$L535
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L534:
	move	$3,$5
$L544:
	move	$7,$4
	sll	$10,$10,3
	.option	pic0
	b	$L536
	.option	pic2
	addu	$10,$10,$5

$L537:
	lw	$9,4($3)
	lw	$8,0($3)
	sw	$9,4($7)
	sw	$8,0($7)
	addiu	$3,$3,8
	addiu	$7,$7,8
$L536:
	bne	$3,$10,$L537
	nop

	.option	pic0
	b	$L543
	.option	pic2
	sltu	$3,$2,$6

$L539:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L543:
	bne	$3,$0,$L539
	addu	$3,$5,$2

	jr	$31
	nop

$L541:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L535:
	addiu	$6,$6,-1
	bne	$6,$7,$L541
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
	bne	$2,$0,$L546
	srl	$8,$6,1

	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L553
	move	$2,$5

	.option	pic0
	b	$L547
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L546:
	move	$2,$5
$L553:
	move	$3,$4
	sll	$8,$8,1
	.option	pic0
	b	$L548
	.option	pic2
	addu	$8,$8,$5

$L549:
	lh	$7,0($2)
	nop
	sh	$7,0($3)
	addiu	$2,$2,2
	addiu	$3,$3,2
$L548:
	bne	$2,$8,$L549
	nop

	andi	$2,$6,0x1
	beq	$2,$0,$L554
	addiu	$6,$6,-1

	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	jr	$31
	sb	$2,0($4)

$L551:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L547:
	addiu	$6,$6,-1
	bne	$6,$7,$L551
	addu	$2,$5,$6

$L554:
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
	bne	$3,$0,$L556
	and	$2,$6,$2

	addu	$3,$5,$6
	sltu	$3,$3,$4
	bne	$3,$0,$L566
	move	$3,$5

	.option	pic0
	b	$L557
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L556:
	move	$3,$5
$L566:
	move	$7,$4
	sll	$9,$9,2
	.option	pic0
	b	$L558
	.option	pic2
	addu	$9,$9,$5

$L559:
	lw	$8,0($3)
	nop
	sw	$8,0($7)
	addiu	$3,$3,4
	addiu	$7,$7,4
$L558:
	bne	$3,$9,$L559
	nop

	.option	pic0
	b	$L565
	.option	pic2
	sltu	$3,$2,$6

$L561:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L565:
	bne	$3,$0,$L561
	addu	$3,$5,$2

	jr	$31
	nop

$L563:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L557:
	addiu	$6,$6,-1
	bne	$6,$7,$L563
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
	bgez	$4,$L570
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L570:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mtc1	$4,$f0
	bgez	$4,$L572
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	nop
	add.d	$f0,$f0,$f2
$L572:
	jr	$31
	cvt.s.d	$f0,$f0

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
	.option	pic0
	b	$L577
	.option	pic2
	li	$6,15			# 0xf

$L579:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,$L580
	nop

	addiu	$2,$2,1
$L577:
	bne	$2,$5,$L579
	subu	$3,$6,$2

$L580:
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
	.option	pic0
	b	$L582
	.option	pic2
	li	$5,16			# 0x10

$L584:
	andi	$3,$3,0x1
	bne	$3,$0,$L585
	nop

	addiu	$2,$2,1
$L582:
	bne	$2,$5,$L584
	sra	$3,$4,$2

$L585:
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
	bc1f	$L591
	nop

	sub.s	$f12,$f12,$f0
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	li	$3,32768			# 0x8000
	jr	$31
	addu	$2,$2,$3

$L591:
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	move	$3,$0
	.option	pic0
	b	$L593
	.option	pic2
	li	$6,16			# 0x10

$L595:
	andi	$5,$5,0x1
	beq	$5,$0,$L594
	nop

	addiu	$2,$2,1
$L594:
	addiu	$3,$3,1
$L593:
	bne	$3,$6,$L595
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
	b	$L597
	.option	pic2
	li	$6,16			# 0x10

$L599:
	andi	$5,$5,0x1
	beq	$5,$0,$L598
	nop

	addiu	$2,$2,1
$L598:
	addiu	$3,$3,1
$L597:
	bne	$3,$6,$L599
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
	b	$L601
	.option	pic2
	move	$2,$0

$L603:
	beq	$3,$0,$L602
	nop

	addu	$2,$2,$5
$L602:
	srl	$4,$4,1
	sll	$5,$5,1
$L601:
	bne	$4,$0,$L603
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
	beq	$4,$0,$L609
	nop

	.option	pic0
	b	$L606
	.option	pic2
	move	$2,$0

$L608:
	beq	$3,$0,$L607
	nop

	addu	$2,$2,$4
$L607:
	sll	$4,$4,1
	srl	$5,$5,1
$L606:
	bne	$5,$0,$L608
	andi	$3,$5,0x1

	jr	$31
	nop

$L609:
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
	b	$L611
	.option	pic2
	li	$3,1			# 0x1

$L615:
	sll	$5,$5,1
	sll	$3,$3,1
$L611:
	sltu	$2,$5,$4
	bne	$2,$0,$L612
	addiu	$7,$7,-1

	addiu	$7,$7,1
	.option	pic0
	b	$L613
	.option	pic2
	move	$2,$0

$L612:
	beq	$7,$0,$L613
	move	$2,$0

	bgez	$5,$L615
	nop

	.option	pic0
	b	$L613
	nop

	.option	pic2
$L617:
	bne	$7,$0,$L616
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L616:
	srl	$3,$3,1
	srl	$5,$5,1
$L613:
	bne	$3,$0,$L617
	sltu	$7,$4,$5

	beq	$6,$0,$L621
	nop

	move	$2,$4
$L621:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.s	$f12,$f14
	nop
	bc1t	$L624
	nop

	c.lt.s	$f14,$f12
	nop
	bc1t	$L625
	nop

	jr	$31
	move	$2,$0

$L624:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L625:
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
	bc1t	$L628
	nop

	c.lt.d	$f14,$f12
	nop
	bc1t	$L629
	nop

	jr	$31
	move	$2,$0

$L628:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L629:
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
	jr	$31
	addu	$2,$4,$2

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
	bgez	$5,$L639
	nop

	subu	$5,$0,$5
	.option	pic0
	b	$L633
	.option	pic2
	li	$7,1			# 0x1

$L639:
	move	$7,$0
$L633:
	li	$3,33			# 0x21
	.option	pic0
	b	$L634
	.option	pic2
	move	$2,$0

$L637:
	beq	$6,$0,$L635
	nop

	addu	$2,$2,$4
$L635:
	sll	$4,$4,1
	sra	$5,$5,1
$L634:
	beq	$5,$0,$L636
	nop

	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	bne	$3,$0,$L637
	andi	$6,$5,0x1

$L636:
	beq	$7,$0,$L641
	nop

	subu	$2,$0,$2
$L641:
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
	bgez	$4,$L646
	sw	$16,24($sp)

	subu	$4,$0,$4
	.option	pic0
	b	$L643
	.option	pic2
	li	$16,1			# 0x1

$L646:
	move	$16,$0
$L643:
	bgez	$5,$L647
	move	$6,$0

	subu	$5,$0,$5
	xori	$16,$16,0x1
$L647:
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L645
	nop

	subu	$2,$0,$2
$L645:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	bgez	$4,$L652
	sw	$16,24($sp)

	subu	$4,$0,$4
	.option	pic0
	b	$L649
	.option	pic2
	li	$16,1			# 0x1

$L652:
	move	$16,$0
$L649:
	bgez	$5,$L653
	li	$6,1			# 0x1

	subu	$5,$0,$5
$L653:
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L651
	nop

	subu	$2,$0,$2
$L651:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	.option	pic0
	b	$L655
	.option	pic2
	li	$3,1			# 0x1

$L659:
	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	andi	$3,$3,0xffff
$L655:
	sltu	$7,$5,$4
	bne	$7,$0,$L656
	addiu	$2,$2,-1

	addiu	$2,$2,1
	.option	pic0
	b	$L657
	.option	pic2
	move	$2,$0

$L663:
	.option	pic0
	b	$L657
	.option	pic2
	move	$2,$0

$L656:
	beq	$2,$0,$L663
	sll	$7,$5,16

	sra	$7,$7,16
	bgez	$7,$L659
	nop

	.option	pic0
	b	$L657
	.option	pic2
	move	$2,$0

$L661:
	bne	$7,$0,$L660
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$2,$2,$3
$L660:
	srl	$3,$3,1
	srl	$5,$5,1
$L657:
	bne	$3,$0,$L661
	sltu	$7,$4,$5

	beq	$6,$0,$L665
	nop

	move	$2,$4
$L665:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$7,33			# 0x21
	.option	pic0
	b	$L667
	.option	pic2
	li	$3,1			# 0x1

$L671:
	sll	$5,$5,1
	sll	$3,$3,1
$L667:
	sltu	$2,$5,$4
	bne	$2,$0,$L668
	addiu	$7,$7,-1

	addiu	$7,$7,1
	.option	pic0
	b	$L669
	.option	pic2
	move	$2,$0

$L668:
	beq	$7,$0,$L669
	move	$2,$0

	bgez	$5,$L671
	nop

	.option	pic0
	b	$L669
	nop

	.option	pic2
$L673:
	bne	$7,$0,$L672
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L672:
	srl	$3,$3,1
	srl	$5,$5,1
$L669:
	bne	$3,$0,$L673
	sltu	$7,$4,$5

	beq	$6,$0,$L677
	nop

	move	$2,$4
$L677:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x20
	beq	$2,$0,$L679
	move	$3,$0

	jr	$31
	sll	$2,$5,$6

$L679:
	beq	$6,$0,$L682
	nop

	sll	$3,$5,$6
	sll	$4,$4,$6
	subu	$6,$0,$6
	srl	$6,$5,$6
	jr	$31
	or	$2,$6,$4

$L682:
	move	$3,$5
	jr	$31
	move	$2,$4

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
	beq	$2,$0,$L684
	sra	$2,$4,31

	jr	$31
	sra	$3,$4,$6

$L684:
	beq	$6,$0,$L687
	subu	$7,$0,$6

	sra	$2,$4,$6
	sll	$4,$4,$7
	srl	$6,$5,$6
	jr	$31
	or	$3,$4,$6

$L687:
	move	$3,$5
	jr	$31
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
	.frame	$sp,24,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x003f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$21,20($sp)
	sw	$20,16($sp)
	sw	$19,12($sp)
	sw	$18,8($sp)
	sw	$17,4($sp)
	sw	$16,0($sp)
	move	$19,$5
	srl	$21,$4,24
	srl	$3,$4,8
	move	$12,$0
	andi	$13,$3,0xff00
	sll	$9,$4,8
	srl	$3,$5,24
	or	$3,$9,$3
	move	$14,$0
	li	$16,16711680			# 0xff0000
	and	$15,$3,$16
	sll	$8,$4,24
	srl	$5,$5,8
	or	$5,$8,$5
	move	$10,$0
	li	$2,-16777216			# 0xffffffffff000000
	and	$11,$5,$2
	sll	$7,$19,8
	andi	$24,$3,0xff
	sll	$3,$19,24
	andi	$8,$5,0xff00
	and	$6,$7,$16
	or	$4,$3,$12
	or	$5,$21,$13
	or	$2,$4,$14
	or	$3,$5,$15
	or	$4,$2,$10
	or	$5,$3,$11
	or	$2,$4,$24
	move	$3,$5
	or	$4,$2,$8
	or	$2,$4,$6
	lw	$21,20($sp)
	lw	$20,16($sp)
	lw	$19,12($sp)
	lw	$18,8($sp)
	lw	$17,4($sp)
	lw	$16,0($sp)
	jr	$31
	addiu	$sp,$sp,24

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
	bne	$2,$0,$L691
	li	$3,16			# 0x10

	move	$3,$0
$L691:
	li	$2,16			# 0x10
	subu	$2,$2,$3
	srl	$4,$4,$2
	andi	$2,$4,0xff00
	beq	$2,$0,$L692
	li	$5,8			# 0x8

	move	$5,$0
$L692:
	li	$2,8			# 0x8
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xf0
	bne	$2,$0,$L697
	addu	$3,$3,$5

	.option	pic0
	b	$L693
	.option	pic2
	li	$5,4			# 0x4

$L697:
	move	$5,$0
$L693:
	li	$2,4			# 0x4
	subu	$2,$2,$5
	srl	$4,$4,$2
	andi	$2,$4,0xc
	bne	$2,$0,$L698
	addu	$3,$3,$5

	.option	pic0
	b	$L694
	.option	pic2
	li	$5,2			# 0x2

$L698:
	move	$5,$0
$L694:
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
	bne	$2,$0,$L701
	nop

	slt	$2,$6,$4
	bne	$2,$0,$L702
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L703
	nop

	sltu	$2,$7,$5
	bne	$2,$0,$L704
	nop

	jr	$31
	li	$2,1			# 0x1

$L701:
	jr	$31
	move	$2,$0

$L702:
	jr	$31
	li	$2,2			# 0x2

$L703:
	jr	$31
	move	$2,$0

$L704:
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
	beq	$2,$0,$L707
	li	$3,16			# 0x10

	move	$3,$0
$L707:
	srl	$4,$4,$3
	andi	$2,$4,0xff
	beq	$2,$0,$L708
	li	$2,8			# 0x8

	move	$2,$0
$L708:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0xf
	beq	$2,$0,$L709
	li	$2,4			# 0x4

	move	$2,$0
$L709:
	srl	$4,$4,$2
	addu	$3,$3,$2
	andi	$2,$4,0x3
	bne	$2,$0,$L714
	nop

	.option	pic0
	b	$L710
	.option	pic2
	li	$2,2			# 0x2

$L714:
	move	$2,$0
$L710:
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
	beq	$2,$0,$L716
	move	$2,$0

	jr	$31
	srl	$3,$4,$6

$L716:
	beq	$6,$0,$L719
	subu	$7,$0,$6

	srl	$2,$4,$6
	sll	$4,$4,$7
	srl	$6,$5,$6
	jr	$31
	or	$3,$4,$6

$L719:
	move	$3,$5
	jr	$31
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
	jr	$31
	move	$2,$6

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
	sltu	$5,$0,$3
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
	srl	$3,$6,31
	lui	$2,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($2)
	nop
	lwc1	$f1,%lo($LC8)($2)
$L730:
	andi	$2,$6,0x1
	beq	$2,$0,$L733
	srl	$2,$6,31

	mul.d	$f0,$f0,$f12
$L733:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L729
	nop

	.option	pic0
	b	$L730
	.option	pic2
	mul.d	$f12,$f12,$f12

$L729:
	beq	$3,$0,$L734
	lui	$2,%hi($LC8)

	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	div.d	$f0,$f2,$f0
$L734:
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
	srl	$3,$5,31
	lui	$2,%hi($LC11)
	lwc1	$f0,%lo($LC11)($2)
$L738:
	andi	$2,$5,0x1
	beq	$2,$0,$L741
	srl	$2,$5,31

	mul.s	$f0,$f0,$f12
$L741:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L737
	nop

	.option	pic0
	b	$L738
	.option	pic2
	mul.s	$f12,$f12,$f12

$L737:
	beq	$3,$0,$L742
	lui	$2,%hi($LC11)

	lwc1	$f2,%lo($LC11)($2)
	nop
	div.s	$f0,$f2,$f0
$L742:
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
	bne	$2,$0,$L745
	nop

	sltu	$2,$6,$4
	bne	$2,$0,$L746
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L747
	nop

	sltu	$2,$7,$5
	bne	$2,$0,$L748
	nop

	jr	$31
	li	$2,1			# 0x1

$L745:
	jr	$31
	move	$2,$0

$L746:
	jr	$31
	li	$2,2			# 0x2

$L747:
	jr	$31
	move	$2,$0

$L748:
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
