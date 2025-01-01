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
	beq	$6,$0,$L9
	addu	$3,$4,$6

$L4:
	addiu	$5,$5,-1
	addiu	$3,$3,-1
	lb	$4,0($5)
	bne	$2,$3,$L4
	sb	$4,0($3)

$L9:
	jr	$31
	nop

$L2:
	beq	$4,$5,$L8
	nop

	beq	$6,$0,$L9
	addu	$6,$4,$6

	move	$3,$4
$L5:
	addiu	$5,$5,1
	addiu	$3,$3,1
	lb	$4,-1($5)
	bne	$6,$3,$L5
	sb	$4,-1($3)

$L8:
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
	beq	$7,$0,$L18
	andi	$6,$6,0x00ff

$L11:
	lbu	$2,0($5)
	nop
	beq	$2,$6,$L19
	sb	$2,0($4)

	addiu	$7,$7,-1
	addiu	$5,$5,1
	bne	$7,$0,$L11
	addiu	$4,$4,1

	jr	$31
	move	$2,$0

$L18:
	jr	$31
	move	$2,$0

$L19:
	jr	$31
	addiu	$2,$4,1

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
	beq	$6,$0,$L26
	andi	$5,$5,0x00ff

$L21:
	lbu	$2,0($4)
	nop
	beq	$2,$5,$L27
	addiu	$6,$6,-1

	bne	$6,$0,$L21
	addiu	$4,$4,1

	jr	$31
	move	$2,$0

$L26:
	jr	$31
	move	$2,$0

$L27:
	jr	$31
	move	$2,$4

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
	beq	$6,$0,$L36
	nop

$L29:
	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	bne	$3,$2,$L37
	addiu	$6,$6,-1

	addiu	$4,$4,1
	bne	$6,$0,$L29
	addiu	$5,$5,1

	jr	$31
	move	$2,$0

$L36:
	jr	$31
	move	$2,$0

$L37:
	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

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
	beq	$6,$0,$L42
	move	$2,$4

	addu	$6,$4,$6
	move	$3,$4
$L40:
	addiu	$5,$5,1
	addiu	$3,$3,1
	lbu	$7,-1($5)
	bne	$6,$3,$L40
	sb	$7,-1($3)

$L42:
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
	addu	$6,$4,$6
	addiu	$4,$4,-1
$L44:
	beq	$6,$4,$L49
	move	$2,$0

	move	$2,$6
	lbu	$3,0($6)
	nop
	bne	$3,$5,$L44
	addiu	$6,$6,-1

$L49:
	jr	$31
	nop

$L43:
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
	beq	$6,$0,$L54
	move	$2,$4

	addu	$6,$4,$6
	move	$3,$4
	andi	$5,$5,0x00ff
$L52:
	sb	$5,0($3)
	addiu	$3,$3,1
	bne	$6,$3,$L52
	nop

$L54:
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
	beq	$3,$0,$L59
	sb	$3,0($4)

$L57:
	addiu	$5,$5,1
	addiu	$2,$2,1
	lb	$3,0($5)
	nop
	bne	$3,$0,$L57
	sb	$3,0($2)

$L59:
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
	beq	$3,$0,$L66
	andi	$5,$5,0x00ff

	andi	$3,$3,0x00ff
$L68:
	beq	$3,$5,$L67
	nop

	addiu	$4,$4,1
	lb	$3,0($4)
	nop
	bne	$3,$0,$L68
	andi	$3,$3,0x00ff

	jr	$31
	move	$2,$4

$L66:
	jr	$31
	move	$2,$4

$L67:
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
$L71:
	lb	$3,0($2)
	nop
	beq	$3,$5,$L73
	nop

	bne	$3,$0,$L71
	addiu	$2,$2,1

	move	$2,$0
$L73:
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
	lb	$2,0($4)
	lb	$3,0($5)
	nop
	bne	$2,$3,$L76
	nop

$L75:
	beq	$2,$0,$L79
	andi	$2,$2,0x00ff

	addiu	$4,$4,1
	addiu	$5,$5,1
	lb	$2,0($4)
	lb	$3,0($5)
	nop
	beq	$2,$3,$L75
	nop

$L76:
	andi	$2,$2,0x00ff
$L79:
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
	beq	$2,$0,$L85
	move	$2,$4

$L82:
	addiu	$2,$2,1
	lb	$5,0($2)
	nop
	bne	$5,$0,$L82
	nop

$L81:
$L85:
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
	beq	$6,$0,$L91
	nop

	lbu	$2,0($4)
	nop
	beq	$2,$0,$L88
	nop

	addiu	$6,$6,-1
	addu	$6,$4,$6
$L89:
	lbu	$3,0($5)
	nop
	beq	$3,$0,$L92
	nop

	beq	$4,$6,$L92
	nop

	bne	$3,$2,$L92
	addiu	$4,$4,1

	lbu	$2,0($4)
	nop
	bne	$2,$0,$L89
	addiu	$5,$5,1

$L88:
	lbu	$3,0($5)
$L92:
	jr	$31
	subu	$2,$2,$3

$L91:
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
	bne	$2,$0,$L97
	li	$2,-2			# 0xfffffffffffffffe

	and	$6,$6,$2
	addu	$3,$4,$6
$L95:
	lb	$2,1($4)
	nop
	sb	$2,0($5)
	lb	$2,0($4)
	nop
	sb	$2,1($5)
	addiu	$4,$4,2
	bne	$4,$3,$L95
	addiu	$5,$5,2

$L97:
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
	beq	$4,$2,$L102
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

$L102:
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
	bne	$2,$0,$L105
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

$L105:
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
	beq	$4,$2,$L112
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

$L112:
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
	bne	$2,$0,$L116
	nop

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,$L117
	nop

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L118
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	jr	$31
	sltu	$2,$4,3

$L116:
	jr	$31
	li	$2,1			# 0x1

$L117:
	jr	$31
	li	$2,1			# 0x1

$L118:
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
	bne	$2,$0,$L127
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,$L123
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,$L124
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$4,$2
	sltu	$2,$2,8185
	bne	$2,$0,$L125
	li	$3,1048576			# 0x100000

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L126
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

$L127:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	xori	$2,$2,0x1

$L123:
	jr	$31
	li	$2,1			# 0x1

$L124:
	jr	$31
	li	$2,1			# 0x1

$L125:
	jr	$31
	li	$2,1			# 0x1

$L126:
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
	bne	$2,$0,$L130
	nop

	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

$L130:
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
	bc1t	$L135
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L136
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L139
	nop

	jr	$31
	sub.d	$f0,$f12,$f14

$L135:
	jr	$31
	mov.d	$f0,$f12

$L136:
	jr	$31
	mov.d	$f0,$f14

$L139:
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
	bc1t	$L143
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L144
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L147
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L143:
	jr	$31
	mov.s	$f0,$f12

$L144:
	jr	$31
	mov.s	$f0,$f14

$L147:
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
	bc1t	$L154
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L155
	mov.d	$f0,$f14

	lw	$2,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L150
	nop

	beq	$2,$0,$L156
	nop

	jr	$31
	nop

$L150:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L151
	li	$2,1			# 0x1

	move	$2,$0
$L151:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L152
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L152:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L154:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L155:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L156:
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
	bc1t	$L163
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L164
	mov.s	$f0,$f14

	lw	$2,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,4($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L159
	nop

	beq	$2,$0,$L165
	nop

	jr	$31
	nop

$L159:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1t	$L160
	li	$2,1			# 0x1

	move	$2,$0
$L160:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L161
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L161:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L163:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L164:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L165:
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
	bc1t	$L172
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L173
	mov.d	$f0,$f14

	lw	$2,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L168
	nop

	beq	$2,$0,$L174
	nop

	jr	$31
	nop

$L168:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L169
	li	$2,1			# 0x1

	move	$2,$0
$L169:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L170
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L170:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L172:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L173:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L174:
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
	bc1t	$L181
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L182
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	nop
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L177
	nop

	beq	$2,$0,$L183
	nop

	jr	$31
	mov.d	$f0,$f12

$L177:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L178
	li	$2,1			# 0x1

	move	$2,$0
$L178:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L179
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L179:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L181:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L182:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L183:
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
	bc1t	$L190
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L191
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	nop
	and	$2,$2,$4
	lw	$3,4($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L186
	nop

	beq	$2,$0,$L192
	nop

	jr	$31
	mov.s	$f0,$f12

$L186:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1t	$L187
	li	$2,1			# 0x1

	move	$2,$0
$L187:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L188
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L188:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L190:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L191:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L192:
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
	bc1t	$L199
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L200
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	nop
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L195
	nop

	beq	$2,$0,$L201
	nop

	jr	$31
	mov.d	$f0,$f12

$L195:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L196
	li	$2,1			# 0x1

	move	$2,$0
$L196:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L197
	nop

	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L197:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L199:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L200:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L201:
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
	beq	$4,$0,$L205
	nop

	lui	$3,%hi(s.0)
	addiu	$3,$3,%lo(s.0)
	lui	$5,%hi(digits)
	addiu	$5,$5,%lo(digits)
$L204:
	andi	$2,$4,0x3f
	addu	$2,$2,$5
	lb	$2,0($2)
	nop
	sb	$2,0($3)
	srl	$4,$4,6
	bne	$4,$0,$L204
	addiu	$3,$3,1

$L203:
	sb	$0,0($3)
	lui	$2,%hi(s.0)
	jr	$31
	addiu	$2,$2,%lo(s.0)

$L205:
	lui	$3,%hi(s.0)
	.option	pic0
	b	$L203
	.option	pic2
	addiu	$3,$3,%lo(s.0)

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
	beq	$5,$0,$L212
	nop

	lw	$2,0($5)
	nop
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L213
	nop

	sw	$4,4($2)
$L213:
	jr	$31
	nop

$L212:
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
	beq	$2,$0,$L215
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L215:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L217
	nop

	lw	$3,0($4)
	nop
	sw	$3,0($2)
$L217:
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
	beq	$21,$0,$L219
	move	$18,$7

	move	$16,$5
	move	$17,$0
$L221:
	move	$5,$16
	move	$4,$19
	move	$25,$22
	jalr	$25
	nop

	lw	$28,16($sp)
	beq	$2,$0,$L218
	move	$20,$16

	addiu	$17,$17,1
	bne	$21,$17,$L221
	addu	$16,$16,$18

$L219:
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
$L218:
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
	beq	$20,$0,$L227
	move	$18,$4

	move	$19,$7
	move	$16,$5
	move	$17,$0
$L226:
	move	$5,$16
	move	$4,$18
	move	$25,$22
	jalr	$25
	nop

	beq	$2,$0,$L224
	move	$21,$16

	addiu	$17,$17,1
	bne	$20,$17,$L226
	addu	$16,$16,$19

	move	$21,$0
$L224:
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

$L227:
	.option	pic0
	b	$L224
	.option	pic2
	move	$21,$0

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
	bltz	$4,$L232
	move	$2,$4

$L231:
	jr	$31
	nop

$L232:
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
	b	$L234
	.option	pic2
	move	$16,$4

$L235:
	addiu	$16,$16,1
$L234:
	lb	$17,0($16)
	nop
	move	$4,$17
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L235
	li	$3,43			# 0x2b

	beq	$17,$3,$L241
	li	$3,45			# 0x2d

	bne	$17,$3,$L237
	move	$5,$2

	li	$5,1			# 0x1
$L236:
	addiu	$16,$16,1
$L237:
	lb	$3,0($16)
	nop
	addiu	$4,$3,-48
	sltu	$4,$4,10
	beq	$4,$0,$L239
	sll	$4,$2,2

$L246:
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
	bne	$4,$0,$L246
	sll	$4,$2,2

$L239:
	bne	$5,$0,$L233
	nop

	subu	$2,$0,$2
$L233:
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

$L241:
	.option	pic0
	b	$L236
	.option	pic2
	move	$5,$2

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
	b	$L248
	.option	pic2
	move	$16,$4

$L249:
	addiu	$16,$16,1
$L248:
	lb	$17,0($16)
	nop
	move	$4,$17
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L249
	li	$3,43			# 0x2b

	beq	$17,$3,$L255
	li	$3,45			# 0x2d

	bne	$17,$3,$L251
	move	$5,$2

	li	$5,1			# 0x1
$L250:
	addiu	$16,$16,1
$L251:
	lb	$3,0($16)
	nop
	addiu	$4,$3,-48
	sltu	$4,$4,10
	beq	$4,$0,$L253
	sll	$4,$2,2

$L260:
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
	bne	$4,$0,$L260
	sll	$4,$2,2

$L253:
	bne	$5,$0,$L247
	nop

	subu	$2,$0,$2
$L247:
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

$L255:
	.option	pic0
	b	$L250
	.option	pic2
	move	$5,$2

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
	b	$L262
	.option	pic2
	move	$16,$4

$L263:
	addiu	$16,$16,1
$L262:
	lb	$17,0($16)
	nop
	move	$4,$17
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L263
	li	$3,43			# 0x2b

	beq	$17,$3,$L264
	li	$3,45			# 0x2d

	bne	$17,$3,$L265
	nop

	li	$2,1			# 0x1
$L264:
	addiu	$16,$16,1
$L265:
	lb	$6,0($16)
	nop
	addiu	$3,$6,-48
	sltu	$3,$3,10
	beq	$3,$0,$L272
	move	$4,$0

	move	$5,$0
	srl	$3,$5,30
$L273:
	sll	$7,$4,2
	or	$7,$3,$7
	sll	$3,$5,2
	addu	$5,$3,$5
	sltu	$3,$5,$3
	addu	$7,$7,$4
	addu	$3,$3,$7
	srl	$4,$5,31
	sll	$3,$3,1
	or	$3,$4,$3
	sll	$4,$5,1
	addiu	$16,$16,1
	addiu	$6,$6,-48
	sll	$6,$6,24
	sra	$6,$6,24
	sra	$7,$6,31
	subu	$5,$4,$6
	sltu	$4,$4,$5
	subu	$3,$3,$7
	subu	$4,$3,$4
	lb	$6,0($16)
	nop
	addiu	$3,$6,-48
	sltu	$3,$3,10
	bne	$3,$0,$L273
	srl	$3,$5,30

$L267:
	bne	$2,$0,$L274
	move	$2,$4

	sltu	$2,$0,$5
	subu	$4,$0,$4
	subu	$4,$4,$2
	subu	$5,$0,$5
	move	$2,$4
$L274:
	move	$3,$5
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

$L272:
	.option	pic0
	b	$L267
	.option	pic2
	move	$5,$0

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
	move	$21,$4
	move	$20,$5
	move	$16,$6
	lw	$22,72($sp)
	bne	$6,$0,$L278
	move	$19,$7

	.option	pic0
	b	$L275
	.option	pic2
	move	$17,$0

$L280:
	move	$16,$18
$L277:
	beq	$16,$0,$L283
	move	$17,$0

$L278:
	srl	$18,$16,1
	mult	$18,$19
	mflo	$17
	addu	$17,$20,$17
	move	$5,$17
	move	$4,$21
	move	$25,$22
	jalr	$25
	nop

	bltz	$2,$L280
	nop

	blez	$2,$L275
	addu	$20,$17,$19

	addiu	$16,$16,-1
	.option	pic0
	b	$L277
	.option	pic2
	subu	$16,$16,$18

$L283:
$L275:
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
	move	$20,$4
	move	$19,$5
	move	$18,$7
	lw	$22,72($sp)
	lw	$21,76($sp)
	bne	$6,$0,$L287
	move	$16,$6

	.option	pic0
	b	$L284
	.option	pic2
	move	$17,$0

$L286:
	sra	$16,$16,1
	beq	$16,$0,$L291
	move	$17,$0

$L287:
	sra	$2,$16,1
	mult	$2,$18
	mflo	$17
	addu	$17,$19,$17
	move	$6,$21
	move	$5,$17
	move	$4,$20
	move	$25,$22
	jalr	$25
	nop

	beq	$2,$0,$L284
	nop

	blez	$2,$L286
	nop

	addu	$19,$17,$18
	.option	pic0
	b	$L286
	.option	pic2
	addiu	$16,$16,-1

$L291:
$L284:
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
	bltz	$4,$L296
	move	$3,$5

$L294:
	jr	$31
	nop

$L296:
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
	bltz	$4,$L301
	move	$2,$4

$L300:
	jr	$31
	nop

$L301:
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
	bltz	$4,$L306
	move	$3,$5

$L304:
	jr	$31
	nop

$L306:
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
	lw	$2,0($4)
	nop
	beq	$2,$0,$L317
	nop

$L310:
	beq	$5,$2,$L316
	nop

	addiu	$4,$4,4
	lw	$2,0($4)
	nop
	bne	$2,$0,$L310
	nop

	jr	$31
	move	$2,$0

$L317:
	jr	$31
	nop

$L316:
	jr	$31
	move	$2,$4

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
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L320
	nop

$L319:
	beq	$2,$0,$L320
	nop

	beq	$3,$0,$L320
	addiu	$4,$4,4

	addiu	$5,$5,4
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	beq	$2,$3,$L319
	nop

$L320:
	slt	$4,$2,$3
	bne	$4,$0,$L323
	nop

	jr	$31
	slt	$2,$3,$2

$L323:
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
$L326:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$6,-4($5)
	nop
	bne	$6,$0,$L326
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
	beq	$2,$0,$L329
	move	$2,$4

$L330:
	addiu	$2,$2,4
	lw	$3,0($2)
	nop
	bne	$3,$0,$L330
	nop

$L329:
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
	beq	$6,$0,$L341
	nop

$L334:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L342
	nop

	beq	$2,$0,$L343
	addiu	$6,$6,-1

	addiu	$4,$4,4
	bne	$6,$0,$L334
	addiu	$5,$5,4

	jr	$31
	move	$2,$0

$L341:
	jr	$31
	move	$2,$0

$L338:
	jr	$31
	slt	$2,$3,$2

$L343:
	lw	$3,0($5)
	nop
$L342:
	slt	$4,$2,$3
	beq	$4,$0,$L338
	nop

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
	beq	$6,$0,$L350
	nop

$L345:
	lw	$2,0($4)
	nop
	beq	$2,$5,$L351
	addiu	$6,$6,-1

	bne	$6,$0,$L345
	addiu	$4,$4,4

	jr	$31
	move	$2,$0

$L350:
	jr	$31
	move	$2,$0

$L351:
	jr	$31
	move	$2,$4

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
	beq	$6,$0,$L361
	nop

$L353:
	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L362
	addiu	$6,$6,-1

	addiu	$4,$4,4
	bne	$6,$0,$L353
	addiu	$5,$5,4

	jr	$31
	move	$2,$0

$L361:
	jr	$31
	move	$2,$0

$L357:
	jr	$31
	slt	$2,$3,$2

$L362:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$4,$2,$3
	beq	$4,$0,$L357
	nop

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
	beq	$6,$0,$L367
	addiu	$3,$6,-1

	move	$6,$4
	li	$8,-1			# 0xffffffffffffffff
$L365:
	addiu	$5,$5,4
	addiu	$6,$6,4
	lw	$7,-4($5)
	addiu	$3,$3,-1
	bne	$3,$8,$L365
	sw	$7,-4($6)

$L367:
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
	beq	$4,$5,$L379
	move	$2,$4

	subu	$3,$4,$5
	sll	$4,$6,2
	sltu	$3,$3,$4
	bne	$3,$0,$L370
	addiu	$7,$6,-1

	move	$3,$2
	beq	$6,$0,$L379
	li	$8,-1			# 0xffffffffffffffff

$L371:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$4,-4($5)
	addiu	$7,$7,-1
	bne	$7,$8,$L371
	sw	$4,-4($3)

$L379:
	jr	$31
	nop

$L370:
	beq	$6,$0,$L379
	addiu	$3,$6,-1

	sll	$3,$3,2
	li	$7,-4			# 0xfffffffffffffffc
$L372:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	addiu	$3,$3,-4
	bne	$3,$7,$L372
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
	beq	$6,$0,$L384
	addiu	$3,$6,-1

	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
$L382:
	addiu	$6,$6,4
	addiu	$3,$3,-1
	bne	$3,$7,$L382
	sw	$5,-4($6)

$L384:
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
	beq	$2,$0,$L386
	addu	$2,$4,$6

	beq	$6,$0,$L393
	addu	$5,$5,$6

$L388:
	addiu	$2,$2,-1
	addiu	$5,$5,-1
	lb	$3,0($2)
	bne	$4,$2,$L388
	sb	$3,0($5)

$L393:
	jr	$31
	nop

$L386:
	beq	$4,$5,$L392
	nop

	beq	$6,$0,$L393
	addu	$6,$4,$6

$L389:
	addiu	$4,$4,1
	addiu	$5,$5,1
	lb	$2,-1($4)
	bne	$6,$4,$L389
	sb	$2,-1($5)

$L392:
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
	beq	$2,$0,$L395
	srl	$3,$5,1

	sll	$2,$5,$6
	move	$7,$0
$L396:
	subu	$3,$0,$6
	andi	$3,$3,0x20
	beq	$3,$0,$L397
	nop

	subu	$6,$0,$6
	srl	$5,$4,$6
	move	$4,$0
$L398:
	or	$5,$5,$7
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L395:
	nor	$2,$0,$6
	srl	$3,$3,$2
	sll	$2,$4,$6
	or	$2,$3,$2
	.option	pic0
	b	$L396
	.option	pic2
	sll	$7,$5,$6

$L397:
	sll	$3,$4,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$8,$0,$6
	sll	$3,$3,$8
	srl	$5,$5,$6
	or	$5,$3,$5
	.option	pic0
	b	$L398
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
	beq	$2,$0,$L400
	sll	$2,$4,1

	srl	$7,$4,$6
	move	$2,$0
$L401:
	subu	$3,$0,$6
	andi	$3,$3,0x20
	beq	$3,$0,$L402
	nop

	subu	$6,$0,$6
	sll	$4,$5,$6
	move	$5,$0
$L403:
	or	$5,$5,$7
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L400:
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$7,$5,$6
	or	$7,$2,$7
	.option	pic0
	b	$L401
	.option	pic2
	srl	$2,$4,$6

$L402:
	srl	$3,$5,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$8,$0,$6
	srl	$3,$3,$8
	sll	$4,$4,$6
	or	$4,$3,$4
	.option	pic0
	b	$L403
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
	andi	$4,$4,0xffff
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
	srl	$6,$4,24
	srl	$2,$4,8
	andi	$3,$2,0xff00
	sll	$5,$4,8
	li	$2,16711680			# 0xff0000
	and	$5,$5,$2
	sll	$4,$4,24
	or	$4,$4,$6
	or	$2,$3,$4
	jr	$31
	or	$2,$5,$2

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
	srl	$12,$4,24
	srl	$8,$4,8
	andi	$8,$8,0xff00
	sll	$2,$4,8
	srl	$3,$5,24
	or	$3,$2,$3
	li	$11,16711680			# 0xff0000
	and	$6,$3,$11
	sll	$4,$4,24
	srl	$3,$5,8
	or	$3,$4,$3
	li	$2,-16777216			# 0xffffffffff000000
	and	$3,$3,$2
	sll	$9,$5,8
	srl	$10,$5,24
	srl	$2,$5,8
	sll	$5,$5,24
	andi	$7,$2,0xff00
	and	$9,$9,$11
	or	$4,$8,$12
	or	$4,$6,$4
	or	$3,$3,$4
	or	$2,$10,$5
	or	$2,$7,$2
	jr	$31
	or	$2,$9,$2

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
$L421:
	andi	$3,$3,0x1
	bne	$3,$0,$L420
	nop

	addiu	$2,$2,1
	bne	$2,$5,$L421
	srl	$3,$4,$2

	jr	$31
	move	$2,$0

$L420:
	jr	$31
	addiu	$2,$2,1

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
	beq	$4,$0,$L428
	move	$2,$4

	andi	$2,$4,0x1
	bne	$2,$0,$L427
	nop

	li	$2,1			# 0x1
$L424:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,$L424
	addiu	$2,$2,1

$L428:
	jr	$31
	nop

$L427:
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
	bc1t	$L432
	lui	$3,%hi($LC1)

	lwc1	$f0,%lo($LC1)($3)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1t	$L431
	li	$2,1			# 0x1

	move	$2,$0
$L431:
	jr	$31
	andi	$2,$2,0x00ff

$L432:
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
	bc1t	$L437
	lui	$3,%hi($LC3)

	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1t	$L436
	li	$2,1			# 0x1

	move	$2,$0
$L436:
	jr	$31
	andi	$2,$2,0x00ff

$L437:
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
	bc1t	$L442
	lui	$3,%hi($LC3)

	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1t	$L441
	li	$2,1			# 0x1

	move	$2,$0
$L441:
	jr	$31
	andi	$2,$2,0x00ff

$L442:
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
	bc1t	$L455
	mov.s	$f0,$f12

	add.s	$f2,$f12,$f12
	c.eq.s	$f2,$f12
	nop
	bc1t	$L455
	nop

	bltz	$5,$L452
	nop

	lui	$2,%hi($LC4)
	lwc1	$f2,%lo($LC4)($2)
	.option	pic0
	b	$L453
	.option	pic2
	andi	$2,$5,0x1

$L452:
	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5)($2)
	.option	pic0
	b	$L453
	.option	pic2
	andi	$2,$5,0x1

$L454:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L455
	andi	$2,$5,0x1

	mul.s	$f2,$f2,$f2
$L453:
	beq	$2,$0,$L454
	srl	$2,$5,31

	.option	pic0
	b	$L454
	.option	pic2
	mul.s	$f0,$f0,$f2

$L455:
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
	bc1t	$L466
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f2,$f12
	nop
	bc1t	$L466
	nop

	bltz	$6,$L463
	nop

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L464
	.option	pic2
	andi	$2,$6,0x1

$L463:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L464
	.option	pic2
	andi	$2,$6,0x1

$L465:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L466
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L464:
	beq	$2,$0,$L465
	srl	$2,$6,31

	.option	pic0
	b	$L465
	.option	pic2
	mul.d	$f0,$f0,$f2

$L466:
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
	bc1t	$L477
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f2,$f12
	nop
	bc1t	$L477
	nop

	bltz	$6,$L474
	nop

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L475
	.option	pic2
	andi	$2,$6,0x1

$L474:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L475
	.option	pic2
	andi	$2,$6,0x1

$L476:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L477
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L475:
	beq	$2,$0,$L476
	srl	$2,$6,31

	.option	pic0
	b	$L476
	.option	pic2
	mul.d	$f0,$f0,$f2

$L477:
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
	beq	$6,$0,$L482
	move	$2,$4

	addu	$6,$5,$6
	move	$3,$4
$L480:
	addiu	$5,$5,1
	lb	$8,-1($5)
	addiu	$3,$3,1
	lb	$7,-1($3)
	nop
	xor	$7,$7,$8
	bne	$6,$5,$L480
	sb	$7,-1($3)

$L482:
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
	beq	$16,$0,$L485
	addu	$2,$18,$2

$L484:
	lb	$3,0($17)
	nop
	beq	$3,$0,$L487
	sb	$3,0($2)

	addiu	$17,$17,1
	addiu	$16,$16,-1
	bne	$16,$0,$L484
	addiu	$2,$2,1

$L485:
	sb	$0,0($2)
$L487:
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
	beq	$5,$0,$L497
	move	$2,$0

	addu	$3,$4,$2
$L499:
	lb	$3,0($3)
	nop
	bne	$3,$0,$L498
	nop

$L490:
	jr	$31
	nop

$L497:
	jr	$31
	move	$2,$5

$L498:
	addiu	$2,$2,1
	bne	$5,$2,$L499
	addu	$3,$4,$2

	jr	$31
	move	$2,$5

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
	beq	$7,$0,$L507
	move	$2,$4

	move	$3,$5
$L504:
	lb	$6,0($3)
	nop
	beq	$6,$0,$L508
	nop

	bne	$6,$7,$L504
	addiu	$3,$3,1

$L502:
	jr	$31
	nop

$L507:
	jr	$31
	move	$2,$0

$L508:
	addiu	$2,$2,1
	lb	$7,0($2)
	nop
	bne	$7,$0,$L504
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
	b	$L511
	.option	pic2
	move	$2,$0

$L510:
	beq	$3,$0,$L515
	addiu	$4,$4,1

$L511:
	lb	$3,0($4)
	nop
	bne	$3,$5,$L510
	nop

	.option	pic0
	b	$L510
	.option	pic2
	move	$2,$4

$L515:
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
	beq	$2,$0,$L516
	move	$18,$2

	lb	$19,0($17)
	nop
$L518:
	move	$5,$19
	move	$4,$16
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	beq	$2,$0,$L516
	move	$16,$2

	move	$6,$18
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	beq	$2,$0,$L522
	move	$2,$16

	.option	pic0
	b	$L518
	.option	pic2
	addiu	$16,$16,1

$L516:
	move	$2,$16
$L522:
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
	bc1t	$L534
	swc1	$f13,16($sp)

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L527
	nop

	c.lt.d	$f14,$f0
	nop
	bc1t	$L535
	li	$2,-2147483648			# 0xffffffff80000000

$L527:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

$L534:
	c.lt.d	$f0,$f14
	nop
	bc1f	$L527
	li	$2,-2147483648			# 0xffffffff80000000

$L535:
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
	b	$L527
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
	beq	$7,$0,$L540
	move	$16,$4

	sltu	$2,$5,$7
	bne	$2,$0,$L541
	subu	$5,$5,$7

	addu	$17,$4,$5
	sltu	$2,$17,$4
	bne	$2,$0,$L542
	addiu	$20,$6,1

	lb	$19,0($6)
	.option	pic0
	b	$L539
	.option	pic2
	addiu	$18,$7,-1

$L538:
	addiu	$16,$16,1
$L547:
	sltu	$2,$17,$16
	bne	$2,$0,$L546
	move	$2,$0

$L539:
	lb	$2,0($16)
	nop
	bne	$2,$19,$L538
	move	$6,$18

	move	$5,$20
	addiu	$4,$16,1
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	bne	$2,$0,$L547
	addiu	$16,$16,1

	addiu	$16,$16,-1
	move	$2,$16
$L546:
$L536:
	lw	$31,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

$L540:
	.option	pic0
	b	$L536
	.option	pic2
	move	$2,$4

$L541:
	.option	pic0
	b	$L536
	.option	pic2
	move	$2,$0

$L542:
	.option	pic0
	b	$L536
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
	bc1t	$L572
	swc1	$f13,16($sp)

	move	$3,$0
$L551:
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
	bc1f	$L569
	move	$2,$0

	lui	$4,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($4)
	nop
	lwc1	$f3,%lo($LC7)($4)
$L555:
	addiu	$2,$2,1
	lwc1	$f4,20($sp)
	nop
	lwc1	$f5,16($sp)
	nop
	mul.d	$f4,$f4,$f2
	swc1	$f4,20($sp)
	c.le.d	$f0,$f4
	nop
	bc1t	$L555
	swc1	$f5,16($sp)

$L556:
$L573:
	beq	$3,$0,$L559
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
$L559:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

$L572:
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
	b	$L551
	.option	pic2
	li	$3,1			# 0x1

$L569:
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
	bc1f	$L570
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.eq.d	$f2,$f0
	nop
	bc1t	$L573
	move	$2,$0

	lui	$4,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($4)
	nop
	lwc1	$f1,%lo($LC7)($4)
$L558:
	addiu	$2,$2,-1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	add.d	$f2,$f2,$f2
	swc1	$f2,20($sp)
	c.lt.d	$f2,$f0
	nop
	bc1t	$L558
	swc1	$f3,16($sp)

	.option	pic0
	b	$L556
	nop

	.option	pic2
$L570:
	.option	pic0
	b	$L556
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
	move	$9,$5
	or	$5,$5,$4
	beq	$5,$0,$L578
	move	$8,$4

	move	$2,$0
	move	$5,$0
$L577:
	andi	$4,$9,0x1
	subu	$3,$0,$4
	and	$4,$3,$6
	and	$3,$3,$7
	addu	$3,$5,$3
	sltu	$5,$3,$5
	addu	$2,$2,$4
	addu	$2,$5,$2
	move	$5,$3
	srl	$3,$7,31
	sll	$6,$6,1
	or	$6,$3,$6
	sll	$4,$8,31
	srl	$3,$9,1
	or	$3,$4,$3
	srl	$8,$8,1
	move	$9,$3
	or	$3,$8,$3
	bne	$3,$0,$L577
	sll	$7,$7,1

$L574:
	jr	$31
	move	$3,$5

$L578:
	move	$2,$0
	.option	pic0
	b	$L574
	.option	pic2
	move	$5,$0

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
	beq	$2,$0,$L588
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
$L581:
	bltz	$5,$L588
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L583
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,$L581
	nop

$L584:
	bne	$6,$0,$L593
	nop

$L580:
	jr	$31
	nop

$L586:
	srl	$3,$3,1
	beq	$3,$0,$L584
	srl	$5,$5,1

$L587:
	sltu	$7,$4,$5
	bne	$7,$0,$L586
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L586
	.option	pic2
	or	$2,$2,$3

$L583:
	beq	$3,$0,$L594
	nop

$L588:
	.option	pic0
	b	$L587
	.option	pic2
	move	$2,$0

$L594:
	.option	pic0
	b	$L584
	.option	pic2
	move	$2,$3

$L593:
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
	sra	$2,$4,7
	sll	$3,$2,24
	sra	$3,$3,24
	beq	$4,$3,$L597
	xor	$2,$2,$4

	lw	$25,%call16(__clzsi2)($28)
	sll	$4,$2,8
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
$L595:
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L597:
	.option	pic0
	b	$L595
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
	.cprestore	16
	move	$2,$4
	move	$6,$5
	sra	$3,$4,31
	xor	$4,$4,$3
	beq	$2,$3,$L606
	xor	$5,$5,$3

$L603:
	lw	$25,%call16(__clzdi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
$L599:
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L606:
	bne	$6,$3,$L603
	li	$2,63			# 0x3f

	.option	pic0
	b	$L599
	nop

	.option	pic2
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
	beq	$4,$0,$L610
	nop

	move	$2,$0
$L609:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	bne	$4,$0,$L609
	sll	$5,$5,1

	jr	$31
	nop

$L610:
	jr	$31
	move	$2,$4

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
	beq	$2,$0,$L613
	and	$10,$6,$10

$L616:
	beq	$7,$0,$L615
	move	$2,$5

	move	$3,$4
	sll	$7,$7,3
	addu	$7,$5,$7
$L619:
	lw	$9,4($2)
	lw	$8,0($2)
	sw	$9,4($3)
	sw	$8,0($3)
	addiu	$2,$2,8
	bne	$2,$7,$L619
	addiu	$3,$3,8

$L615:
	sltu	$2,$10,$6
	beq	$2,$0,$L627
	addu	$2,$5,$10

	addu	$4,$4,$10
	addu	$6,$6,$5
$L620:
	lb	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$2,$6,$L620
	addiu	$4,$4,1

$L627:
	jr	$31
	nop

$L613:
	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L616
	addiu	$2,$6,-1

	beq	$6,$0,$L627
	li	$7,-1			# 0xffffffffffffffff

$L617:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L617
	sb	$6,0($3)

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
	beq	$2,$0,$L629
	srl	$8,$6,1

$L632:
	beq	$8,$0,$L631
	move	$2,$5

	move	$3,$4
	sll	$8,$8,1
	addu	$8,$5,$8
$L635:
	lh	$7,0($2)
	nop
	sh	$7,0($3)
	addiu	$2,$2,2
	bne	$2,$8,$L635
	addiu	$3,$3,2

$L631:
	andi	$2,$6,0x1
	beq	$2,$0,$L641
	addiu	$6,$6,-1

	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	jr	$31
	sb	$2,0($4)

$L629:
	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L632
	addiu	$2,$6,-1

	beq	$6,$0,$L641
	li	$7,-1			# 0xffffffffffffffff

$L633:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L633
	sb	$6,0($3)

$L641:
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
	srl	$8,$6,2
	li	$9,-4			# 0xfffffffffffffffc
	sltu	$2,$4,$5
	beq	$2,$0,$L643
	and	$9,$6,$9

$L646:
	beq	$8,$0,$L645
	move	$2,$5

	move	$3,$4
	sll	$8,$8,2
	addu	$8,$5,$8
$L649:
	lw	$7,0($2)
	nop
	sw	$7,0($3)
	addiu	$2,$2,4
	bne	$2,$8,$L649
	addiu	$3,$3,4

$L645:
	sltu	$2,$9,$6
	beq	$2,$0,$L657
	addu	$2,$5,$9

	addu	$4,$4,$9
	addu	$6,$6,$5
$L650:
	lb	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$2,$6,$L650
	addiu	$4,$4,1

$L657:
	jr	$31
	nop

$L643:
	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L646
	addiu	$2,$6,-1

	beq	$6,$0,$L657
	li	$7,-1			# 0xffffffffffffffff

$L647:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L647
	sb	$6,0($3)

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
	bltz	$4,$L662
	cvt.d.w	$f0,$f0

$L659:
	jr	$31
	nop

$L662:
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
	bltz	$4,$L666
	cvt.d.w	$f0,$f0

$L664:
	jr	$31
	cvt.s.d	$f0,$f0

$L666:
	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	.option	pic0
	b	$L664
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
$L676:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,$L677
	nop

	addiu	$2,$2,1
	bne	$2,$6,$L676
	subu	$3,$5,$2

$L677:
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
$L682:
	andi	$3,$3,0x1
	bne	$3,$0,$L683
	nop

	addiu	$2,$2,1
	bne	$2,$5,$L682
	sra	$3,$4,$2

$L683:
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
	bc1t	$L691
	nop

	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	jr	$31
	nop

$L691:
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
$L693:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,$L693
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
$L696:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,$L696
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
	beq	$4,$0,$L701
	nop

	move	$2,$0
$L700:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	bne	$4,$0,$L700
	sll	$5,$5,1

	jr	$31
	nop

$L701:
	jr	$31
	move	$2,$4

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
	beq	$4,$0,$L706
	nop

	beq	$5,$0,$L707
	nop

	move	$2,$0
$L705:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$2,$3
	srl	$5,$5,1
	bne	$5,$0,$L705
	sll	$4,$4,1

	jr	$31
	nop

$L706:
	jr	$31
	move	$2,$4

$L707:
	jr	$31
	move	$2,$5

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
	beq	$2,$0,$L717
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
$L710:
	bltz	$5,$L717
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L712
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,$L710
	nop

$L713:
	bne	$6,$0,$L722
	nop

$L709:
	jr	$31
	nop

$L715:
	srl	$3,$3,1
	beq	$3,$0,$L713
	srl	$5,$5,1

$L716:
	sltu	$7,$4,$5
	bne	$7,$0,$L715
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L715
	.option	pic2
	or	$2,$2,$3

$L712:
	beq	$3,$0,$L723
	nop

$L717:
	.option	pic0
	b	$L716
	.option	pic2
	move	$2,$0

$L723:
	.option	pic0
	b	$L713
	.option	pic2
	move	$2,$3

$L722:
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
	bc1t	$L727
	nop

	c.lt.s	$f14,$f12
	nop
	bc1t	$L726
	li	$2,1			# 0x1

	move	$2,$0
$L726:
	jr	$31
	andi	$2,$2,0x00ff

$L727:
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
	bc1t	$L731
	nop

	c.lt.d	$f14,$f12
	nop
	bc1t	$L730
	li	$2,1			# 0x1

	move	$2,$0
$L730:
	jr	$31
	andi	$2,$2,0x00ff

$L731:
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
	bltz	$5,$L742
	nop

	beq	$5,$0,$L743
	move	$7,$0

$L739:
	li	$6,32			# 0x20
	move	$2,$0
	andi	$3,$5,0x1
$L744:
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$2,$3
	sra	$5,$5,1
	beq	$5,$0,$L736
	sll	$4,$4,1

	addiu	$6,$6,-1
	andi	$6,$6,0x00ff
	bne	$6,$0,$L744
	andi	$3,$5,0x1

$L736:
	beq	$7,$0,$L745
	nop

	jr	$31
	subu	$2,$0,$2

$L742:
	subu	$5,$0,$5
	.option	pic0
	b	$L739
	.option	pic2
	li	$7,1			# 0x1

$L743:
	move	$2,$5
$L745:
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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	bltz	$4,$L755
	sw	$31,28($sp)

	bltz	$5,$L756
	move	$6,$0

	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	.option	pic0
	b	$L746
	nop

	.option	pic2
$L755:
	bltz	$5,$L757
	subu	$4,$0,$4

	move	$6,$0
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	subu	$2,$0,$2
$L746:
$L758:
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L756:
	subu	$5,$0,$5
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	.option	pic0
	b	$L758
	.option	pic2
	subu	$2,$0,$2

$L757:
	move	$6,$0
	subu	$5,$0,$5
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	.option	pic0
	b	$L746
	nop

	.option	pic2
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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	bltz	$4,$L765
	sw	$31,28($sp)

	bltz	$5,$L766
	nop

$L762:
	li	$6,1			# 0x1
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	.option	pic0
	b	$L759
	nop

	.option	pic2
$L765:
	bltz	$5,$L767
	subu	$4,$0,$4

$L761:
	li	$6,1			# 0x1
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	subu	$2,$0,$2
$L759:
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L767:
	.option	pic0
	b	$L761
	.option	pic2
	subu	$5,$0,$5

$L766:
	.option	pic0
	b	$L762
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
	sltu	$2,$5,$4
	beq	$2,$0,$L776
	li	$3,1			# 0x1

	li	$2,16			# 0x10
	li	$3,1			# 0x1
	sll	$7,$5,16
$L783:
	sra	$7,$7,16
	bltz	$7,$L776
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	sltu	$7,$5,$4
	beq	$7,$0,$L771
	andi	$3,$3,0xffff

	addiu	$2,$2,-1
	bne	$2,$0,$L783
	sll	$7,$5,16

	move	$2,$0
$L772:
	bne	$6,$0,$L782
	nop

$L777:
	jr	$31
	nop

$L774:
	srl	$3,$3,1
	beq	$3,$0,$L772
	srl	$5,$5,1

$L775:
	sltu	$7,$4,$5
	bne	$7,$0,$L774
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$2,$3,$2
	.option	pic0
	b	$L774
	.option	pic2
	andi	$2,$2,0xffff

$L771:
	beq	$3,$0,$L772
	move	$2,$3

$L776:
	.option	pic0
	b	$L775
	.option	pic2
	move	$2,$0

$L782:
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
	beq	$2,$0,$L792
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
$L785:
	bltz	$5,$L792
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L787
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,$L785
	nop

$L788:
	bne	$6,$0,$L797
	nop

$L784:
	jr	$31
	nop

$L790:
	srl	$3,$3,1
	beq	$3,$0,$L788
	srl	$5,$5,1

$L791:
	sltu	$7,$4,$5
	bne	$7,$0,$L790
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L790
	.option	pic2
	or	$2,$2,$3

$L787:
	beq	$3,$0,$L798
	nop

$L792:
	.option	pic0
	b	$L791
	.option	pic2
	move	$2,$0

$L798:
	.option	pic0
	b	$L788
	.option	pic2
	move	$2,$3

$L797:
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
	beq	$2,$0,$L800
	sll	$2,$5,$6

	jr	$31
	move	$3,$0

$L800:
	beq	$6,$0,$L803
	nop

	sll	$3,$5,$6
	sll	$2,$4,$6
	subu	$6,$0,$6
	srl	$5,$5,$6
	jr	$31
	or	$2,$2,$5

$L803:
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
	beq	$2,$0,$L805
	sra	$2,$4,31

	sra	$5,$4,$6
$L807:
	jr	$31
	move	$3,$5

$L805:
	beq	$6,$0,$L808
	nop

	sra	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L807
	.option	pic2
	or	$5,$4,$5

$L808:
	.option	pic0
	b	$L807
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
	srl	$12,$4,24
	srl	$8,$4,8
	andi	$8,$8,0xff00
	sll	$2,$4,8
	srl	$3,$5,24
	or	$3,$2,$3
	li	$11,16711680			# 0xff0000
	and	$6,$3,$11
	sll	$4,$4,24
	srl	$3,$5,8
	or	$3,$4,$3
	li	$2,-16777216			# 0xffffffffff000000
	and	$3,$3,$2
	sll	$9,$5,8
	srl	$10,$5,24
	srl	$2,$5,8
	sll	$5,$5,24
	andi	$7,$2,0xff00
	and	$9,$9,$11
	or	$4,$8,$12
	or	$4,$6,$4
	or	$3,$3,$4
	or	$2,$10,$5
	or	$2,$7,$2
	jr	$31
	or	$2,$9,$2

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
	srl	$6,$4,24
	srl	$2,$4,8
	andi	$3,$2,0xff00
	sll	$5,$4,8
	li	$2,16711680			# 0xff0000
	and	$5,$5,$2
	sll	$4,$4,24
	or	$2,$6,$4
	or	$2,$3,$2
	jr	$31
	or	$2,$5,$2

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
	addu	$4,$2,$4
	andi	$2,$3,0xc
	sltu	$2,$2,1
	sll	$2,$2,1
	li	$5,2			# 0x2
	subu	$6,$5,$2
	srl	$3,$3,$6
	addu	$2,$2,$4
	andi	$4,$3,0x2
	beq	$4,$0,$L813
	subu	$5,$5,$3

	move	$5,$0
$L813:
	jr	$31
	addu	$2,$5,$2

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
	bne	$2,$0,$L816
	slt	$6,$6,$4

	bne	$6,$0,$L817
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L818
	sltu	$5,$7,$5

	bne	$5,$0,$L819
	nop

	jr	$31
	li	$2,1			# 0x1

$L816:
	jr	$31
	move	$2,$0

$L817:
	jr	$31
	li	$2,2			# 0x2

$L818:
	jr	$31
	move	$2,$0

$L819:
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
	addu	$4,$2,$4
	andi	$2,$3,0x3
	sltu	$2,$2,1
	sll	$2,$2,1
	srl	$3,$3,$2
	andi	$3,$3,0x3
	addu	$2,$2,$4
	nor	$4,$0,$3
	andi	$4,$4,0x1
	srl	$3,$3,1
	li	$5,2			# 0x2
	subu	$5,$5,$3
	subu	$3,$0,$4
	and	$3,$3,$5
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
	beq	$2,$0,$L824
	move	$2,$0

	srl	$5,$4,$6
$L826:
	jr	$31
	move	$3,$5

$L824:
	beq	$6,$0,$L827
	nop

	srl	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L826
	.option	pic2
	or	$5,$4,$5

$L827:
	.option	pic0
	b	$L826
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
	andi	$6,$5,0xffff
	mult	$2,$6
	mflo	$3
	srl	$7,$3,16
	srl	$4,$4,16
	mult	$6,$4
	mflo	$6
	addu	$6,$6,$7
	srl	$7,$6,16
	andi	$6,$6,0xffff
	andi	$3,$3,0xffff
	srl	$5,$5,16
	mult	$2,$5
	mflo	$2
	addu	$2,$2,$6
	sll	$6,$2,16
	addu	$3,$3,$6
	srl	$2,$2,16
	mult	$4,$5
	mflo	$4
	addu	$7,$7,$4
	jr	$31
	addu	$2,$2,$7

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
	mult	$19,$17
	mflo	$4
	nop
	nop
	mult	$18,$16
	mflo	$5
	addu	$4,$4,$5
	addu	$2,$2,$4
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
	addu	$3,$3,$4
	sll	$5,$3,28
	srl	$4,$2,4
	or	$4,$5,$4
	srl	$5,$3,4
	addu	$2,$4,$2
	sltu	$4,$2,$4
	addu	$3,$5,$3
	addu	$4,$4,$3
	li	$3,252641280			# 0xf0f0000
	addiu	$3,$3,3855
	and	$4,$4,$3
	and	$2,$2,$3
	addu	$2,$2,$4
	srl	$3,$2,16
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
	b	$L839
	.option	pic2
	move	$2,$6

$L843:
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L838
	nop

	mul.d	$f12,$f12,$f12
$L839:
	andi	$3,$2,0x1
	beq	$3,$0,$L843
	srl	$3,$2,31

	.option	pic0
	b	$L843
	.option	pic2
	mul.d	$f0,$f0,$f12

$L838:
	bltz	$6,$L842
	lui	$2,%hi($LC8)

$L836:
	jr	$31
	nop

$L842:
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
	b	$L847
	.option	pic2
	move	$2,$5

$L851:
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L846
	nop

	mul.s	$f12,$f12,$f12
$L847:
	andi	$3,$2,0x1
	beq	$3,$0,$L851
	srl	$3,$2,31

	.option	pic0
	b	$L851
	.option	pic2
	mul.s	$f0,$f0,$f12

$L846:
	bltz	$5,$L850
	lui	$2,%hi($LC11)

$L844:
	jr	$31
	nop

$L850:
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
	bne	$2,$0,$L854
	sltu	$6,$6,$4

	bne	$6,$0,$L855
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L856
	sltu	$5,$7,$5

	bne	$5,$0,$L857
	nop

	jr	$31
	li	$2,1			# 0x1

$L854:
	jr	$31
	move	$2,$0

$L855:
	jr	$31
	li	$2,2			# 0x2

$L856:
	jr	$31
	move	$2,$0

$L857:
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
