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
	beq	$4,$2,$L87
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

$L87:
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
	bne	$2,$0,$L91
	nop

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,$L92
	nop

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L93
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	jr	$31
	sltu	$2,$4,3

$L91:
	jr	$31
	li	$2,1			# 0x1

$L92:
	jr	$31
	li	$2,1			# 0x1

$L93:
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
	bne	$2,$0,$L102
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,$L98
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,$L99
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$4,$2
	sltu	$2,$2,8185
	bne	$2,$0,$L100
	li	$3,1048576			# 0x100000

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L101
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

$L102:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	xori	$2,$2,0x1

$L98:
	jr	$31
	li	$2,1			# 0x1

$L99:
	jr	$31
	li	$2,1			# 0x1

$L100:
	jr	$31
	li	$2,1			# 0x1

$L101:
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
	bne	$2,$0,$L105
	nop

	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

$L105:
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
	bc1t	$L110
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L111
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L114
	nop

	jr	$31
	sub.d	$f0,$f12,$f14

$L110:
	jr	$31
	mov.d	$f0,$f12

$L111:
	jr	$31
	mov.d	$f0,$f14

$L114:
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
	bc1t	$L118
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L119
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L122
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L118:
	jr	$31
	mov.s	$f0,$f12

$L119:
	jr	$31
	mov.s	$f0,$f14

$L122:
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
	bc1t	$L129
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L130
	mov.d	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L125
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L131
	nop

	jr	$31
	nop

$L125:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L126
	li	$2,1			# 0x1

	move	$2,$0
$L126:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L127
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L127:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L129:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L130:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L131:
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
	bc1t	$L138
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L139
	mov.s	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,4($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L134
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L140
	nop

	jr	$31
	nop

$L134:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1t	$L135
	li	$2,1			# 0x1

	move	$2,$0
$L135:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L136
	nop

	lwc1	$f0,4($sp)
	jr	$31
	nop

$L136:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L138:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L139:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L140:
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
	bc1t	$L147
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L148
	mov.d	$f0,$f14

	lw	$3,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L143
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L149
	nop

	jr	$31
	nop

$L143:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L144
	li	$2,1			# 0x1

	move	$2,$0
$L144:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L145
	nop

	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L145:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L147:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L148:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L149:
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
	bc1t	$L156
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L157
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L152
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L158
	nop

	jr	$31
	mov.d	$f0,$f12

$L152:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L153
	li	$2,1			# 0x1

	move	$2,$0
$L153:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L154
	nop

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

$L156:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L157:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L158:
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
	bc1t	$L165
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L166
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,4($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L161
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L167
	nop

	jr	$31
	mov.s	$f0,$f12

$L161:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1t	$L162
	li	$2,1			# 0x1

	move	$2,$0
$L162:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L163
	nop

	lwc1	$f0,0($sp)
	jr	$31
	nop

$L163:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L165:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L166:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L167:
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
	bc1t	$L174
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L175
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$3,0($sp)
	nop
	and	$3,$3,$4
	lw	$2,8($sp)
	nop
	and	$2,$2,$4
	beq	$3,$2,$L170
	nop

	lw	$2,0($sp)
	nop
	bgez	$2,$L176
	nop

	jr	$31
	mov.d	$f0,$f12

$L170:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L171
	li	$2,1			# 0x1

	move	$2,$0
$L171:
	andi	$2,$2,0x00ff
	beq	$2,$0,$L172
	nop

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

$L174:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L175:
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
	b	$L178
	.option	pic2
	addiu	$5,$5,%lo(digits)

$L179:
	andi	$2,$4,0x3f
	addu	$2,$2,$5
	lb	$2,0($2)
	nop
	sb	$2,0($3)
	addiu	$3,$3,1
	srl	$4,$4,6
$L178:
	bne	$4,$0,$L179
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
	beq	$5,$0,$L185
	nop

	lw	$2,0($5)
	nop
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L186
	nop

	sw	$4,4($2)
$L186:
	jr	$31
	nop

$L185:
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
	beq	$2,$0,$L188
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L188:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L190
	nop

	lw	$3,0($4)
	nop
	sw	$3,0($2)
$L190:
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
	b	$L192
	.option	pic2
	move	$16,$0

$L193:
	addiu	$16,$16,1
$L192:
	beq	$16,$20,$L197
	move	$5,$17

	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	lw	$28,16($sp)
	bne	$2,$0,$L193
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L194
	.option	pic2
	addu	$2,$22,$2

$L197:
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
$L194:
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
	b	$L199
	.option	pic2
	move	$16,$0

$L200:
	addiu	$16,$16,1
$L199:
	beq	$16,$20,$L204
	move	$5,$17

	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	bne	$2,$0,$L200
	addu	$17,$17,$18

	mult	$16,$18
	mflo	$2
	.option	pic0
	b	$L201
	.option	pic2
	addu	$2,$22,$2

$L204:
	move	$2,$0
$L201:
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
	bltz	$4,$L207
	move	$2,$4

$L206:
	jr	$31
	nop

$L207:
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
	b	$L209
	.option	pic2
	move	$16,$4

$L210:
	addiu	$16,$16,1
$L209:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L210
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L216
	li	$3,45			# 0x2d

	bne	$2,$3,$L217
	nop

	li	$4,1			# 0x1
$L211:
	addiu	$16,$16,1
$L212:
	.option	pic0
	b	$L213
	.option	pic2
	move	$2,$0

$L216:
	.option	pic0
	b	$L211
	.option	pic2
	move	$4,$0

$L217:
	.option	pic0
	b	$L212
	.option	pic2
	move	$4,$0

$L214:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L213:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L214
	addiu	$16,$16,1

	bne	$4,$0,$L215
	nop

	subu	$2,$0,$2
$L215:
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
	b	$L221
	.option	pic2
	move	$16,$4

$L222:
	addiu	$16,$16,1
$L221:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L222
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L228
	li	$3,45			# 0x2d

	bne	$2,$3,$L229
	nop

	li	$4,1			# 0x1
$L223:
	addiu	$16,$16,1
$L224:
	.option	pic0
	b	$L225
	.option	pic2
	move	$2,$0

$L228:
	.option	pic0
	b	$L223
	.option	pic2
	move	$4,$0

$L229:
	.option	pic0
	b	$L224
	.option	pic2
	move	$4,$0

$L226:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,-1($16)
	nop
	addiu	$2,$2,-48
	subu	$2,$3,$2
$L225:
	lb	$3,0($16)
	nop
	addiu	$3,$3,-48
	sltu	$3,$3,10
	bne	$3,$0,$L226
	addiu	$16,$16,1

	bne	$4,$0,$L227
	nop

	subu	$2,$0,$2
$L227:
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
	b	$L233
	.option	pic2
	move	$16,$4

$L234:
	addiu	$16,$16,1
$L233:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	nop

	.option	pic2
	bne	$2,$0,$L234
	li	$3,43			# 0x2b

	lb	$2,0($16)
	nop
	beq	$2,$3,$L235
	move	$6,$0

	li	$3,45			# 0x2d
	bne	$2,$3,$L236
	nop

	li	$6,1			# 0x1
$L235:
	addiu	$16,$16,1
$L236:
	move	$2,$0
	.option	pic0
	b	$L237
	.option	pic2
	move	$3,$0

	.option	pic0
	b	$L236
	.option	pic2
	move	$6,$0

$L238:
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
$L237:
	lb	$4,0($16)
	nop
	addiu	$4,$4,-48
	sltu	$4,$4,10
	bne	$4,$0,$L238
	srl	$5,$3,30

	bne	$6,$0,$L239
	sltu	$4,$0,$3

	subu	$2,$0,$2
	subu	$2,$2,$4
	subu	$3,$0,$3
$L239:
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
	b	$L245
	.option	pic2
	move	$18,$7

$L253:
	srl	$16,$16,1
$L245:
	beq	$16,$0,$L252
	srl	$2,$16,1

	mult	$2,$18
	mflo	$17
	addu	$17,$19,$17
	move	$5,$17
	move	$4,$20
	move	$25,$21
	jalr	$25
	nop

	bltz	$2,$L253
	nop

	blez	$2,$L250
	addu	$19,$17,$18

	srl	$2,$16,1
	addiu	$16,$16,-1
	.option	pic0
	b	$L245
	.option	pic2
	subu	$16,$16,$2

$L252:
	move	$2,$0
$L248:
	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,56

$L250:
	.option	pic0
	b	$L248
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
	b	$L255
	.option	pic2
	move	$18,$5

$L257:
	sra	$16,$16,1
$L255:
	beq	$16,$0,$L261
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

	beq	$2,$0,$L259
	nop

	blez	$2,$L257
	nop

	addu	$18,$17,$19
	.option	pic0
	b	$L257
	.option	pic2
	addiu	$16,$16,-1

$L261:
	move	$2,$0
$L256:
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

$L259:
	.option	pic0
	b	$L256
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
	bltz	$4,$L266
	move	$3,$5

$L264:
	jr	$31
	nop

$L266:
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
	bltz	$4,$L271
	move	$2,$4

$L270:
	jr	$31
	nop

$L271:
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
	bltz	$4,$L276
	move	$3,$5

$L274:
	jr	$31
	nop

$L276:
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
$L280:
	lw	$2,0($4)
	nop
	beq	$2,$0,$L285
	nop

	bne	$5,$2,$L280
	addiu	$4,$4,4

	addiu	$4,$4,-4
	lw	$2,0($4)
	nop
$L285:
	beq	$2,$0,$L284
	nop

	jr	$31
	move	$2,$4

$L284:
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
	b	$L287
	nop

	.option	pic2
$L292:
	addiu	$5,$5,4
$L287:
	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L288
	nop

	beq	$3,$0,$L288
	nop

	bne	$2,$0,$L292
	addiu	$4,$4,4

	addiu	$4,$4,-4
$L288:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L291
	nop

	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

$L291:
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
$L294:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$6,-4($5)
	nop
	bne	$6,$0,$L294
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
	b	$L297
	.option	pic2
	move	$2,$4

$L298:
	addiu	$2,$2,4
$L297:
	lw	$3,0($2)
	nop
	bne	$3,$0,$L298
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
$L300:
	beq	$6,$0,$L301
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	bne	$3,$2,$L301
	nop

	beq	$3,$0,$L301
	nop

	beq	$2,$0,$L301
	nop

	addiu	$6,$6,-1
	addiu	$4,$4,4
	.option	pic0
	b	$L300
	.option	pic2
	addiu	$5,$5,4

$L301:
	beq	$6,$0,$L304
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$2,$2,$3
	bne	$2,$0,$L305
	nop

	lw	$2,0($4)
	jr	$31
	slt	$2,$3,$2

$L304:
	jr	$31
	move	$2,$0

$L305:
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
	b	$L307
	nop

	.option	pic2
$L312:
	addiu	$4,$4,4
$L307:
	beq	$6,$0,$L308
	nop

	lw	$2,0($4)
	nop
	bne	$5,$2,$L312
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L308:
	beq	$6,$0,$L311
	nop

	jr	$31
	move	$2,$4

$L311:
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
	b	$L314
	nop

	.option	pic2
$L320:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L314:
	beq	$6,$0,$L315
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	beq	$3,$2,$L320
	addiu	$6,$6,-1

	addiu	$6,$6,1
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
	b	$L322
	.option	pic2
	li	$8,-1			# 0xffffffffffffffff

$L323:
	addiu	$3,$3,4
	lw	$7,-4($5)
	nop
	sw	$7,-4($3)
$L322:
	addiu	$6,$6,-1
	bne	$6,$8,$L323
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
	beq	$4,$5,$L332
	move	$2,$4

	subu	$3,$4,$5
	sll	$4,$6,2
	sltu	$3,$3,$4
	beq	$3,$0,$L330
	nop

	addu	$5,$5,$4
	addu	$3,$2,$4
	.option	pic0
	b	$L327
	.option	pic2
	addiu	$6,$2,-4

$L328:
	lw	$4,0($5)
	nop
	sw	$4,0($3)
$L327:
	addiu	$3,$3,-4
	bne	$3,$6,$L328
	addiu	$5,$5,-4

$L332:
	jr	$31
	nop

$L329:
	addiu	$3,$3,4
	lw	$4,-4($5)
	nop
	sw	$4,-4($3)
$L326:
	addiu	$6,$6,-1
	bne	$6,$7,$L329
	addiu	$5,$5,4

	jr	$31
	nop

$L330:
	move	$3,$2
	.option	pic0
	b	$L326
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
	b	$L334
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L335:
	sw	$5,-4($3)
$L334:
	addiu	$6,$6,-1
	bne	$6,$7,$L335
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
	beq	$2,$0,$L337
	addu	$2,$4,$6

	.option	pic0
	b	$L338
	.option	pic2
	addu	$5,$5,$6

$L339:
	addiu	$5,$5,-1
	lb	$3,0($2)
	nop
	sb	$3,0($5)
$L338:
	bne	$2,$4,$L339
	addiu	$2,$2,-1

$L344:
	jr	$31
	nop

$L337:
	beq	$4,$5,$L344
	addu	$6,$5,$6

	.option	pic0
	b	$L341
	.option	pic2
	move	$2,$4

$L342:
	addiu	$5,$5,1
	lb	$3,-1($2)
	nop
	sb	$3,-1($5)
$L341:
	bne	$5,$6,$L342
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
	beq	$2,$0,$L346
	srl	$3,$5,1

	sll	$2,$5,$6
	move	$7,$0
$L347:
	subu	$3,$0,$6
	andi	$3,$3,0x20
	beq	$3,$0,$L348
	nop

	subu	$6,$0,$6
	srl	$5,$4,$6
	move	$4,$0
$L349:
	or	$5,$5,$7
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L346:
	nor	$2,$0,$6
	srl	$3,$3,$2
	sll	$2,$4,$6
	or	$2,$3,$2
	.option	pic0
	b	$L347
	.option	pic2
	sll	$7,$5,$6

$L348:
	sll	$3,$4,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$8,$0,$6
	sll	$3,$3,$8
	srl	$5,$5,$6
	or	$5,$3,$5
	.option	pic0
	b	$L349
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
	beq	$2,$0,$L351
	sll	$2,$4,1

	srl	$7,$4,$6
	move	$2,$0
$L352:
	subu	$3,$0,$6
	andi	$3,$3,0x20
	beq	$3,$0,$L353
	nop

	subu	$6,$0,$6
	sll	$4,$5,$6
	move	$5,$0
$L354:
	or	$5,$5,$7
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L351:
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$7,$5,$6
	or	$7,$2,$7
	.option	pic0
	b	$L352
	.option	pic2
	srl	$2,$4,$6

$L353:
	srl	$3,$5,1
	subu	$6,$0,$6
	andi	$6,$6,0x3f
	nor	$8,$0,$6
	srl	$3,$3,$8
	sll	$4,$4,$6
	or	$4,$3,$4
	.option	pic0
	b	$L354
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
$L367:
	beq	$2,$5,$L371
	srl	$3,$4,$2

	andi	$3,$3,0x1
	bne	$3,$0,$L372
	nop

	.option	pic0
	b	$L367
	.option	pic2
	addiu	$2,$2,1

$L372:
	jr	$31
	addiu	$2,$2,1

$L371:
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
	beq	$4,$0,$L377
	nop

	.option	pic0
	b	$L375
	.option	pic2
	li	$2,1			# 0x1

$L376:
	addiu	$2,$2,1
$L375:
	andi	$3,$4,0x1
	beq	$3,$0,$L376
	sra	$4,$4,1

	jr	$31
	nop

$L377:
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
	bc1t	$L381
	lui	$3,%hi($LC1)

	lwc1	$f0,%lo($LC1)($3)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1t	$L380
	li	$2,1			# 0x1

	move	$2,$0
$L380:
	jr	$31
	andi	$2,$2,0x00ff

$L381:
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
	bc1t	$L386
	lui	$3,%hi($LC3)

	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1t	$L385
	li	$2,1			# 0x1

	move	$2,$0
$L385:
	jr	$31
	andi	$2,$2,0x00ff

$L386:
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
	bc1t	$L391
	lui	$3,%hi($LC3)

	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1t	$L390
	li	$2,1			# 0x1

	move	$2,$0
$L390:
	jr	$31
	andi	$2,$2,0x00ff

$L391:
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
	bc1t	$L404
	mov.s	$f0,$f12

	add.s	$f2,$f12,$f12
	c.eq.s	$f12,$f2
	nop
	bc1t	$L404
	nop

	bltz	$5,$L401
	nop

	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5)($2)
	.option	pic0
	b	$L402
	.option	pic2
	andi	$2,$5,0x1

$L401:
	lui	$2,%hi($LC4)
	lwc1	$f2,%lo($LC4)($2)
	.option	pic0
	b	$L402
	.option	pic2
	andi	$2,$5,0x1

$L403:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L404
	andi	$2,$5,0x1

	mul.s	$f2,$f2,$f2
$L402:
	beq	$2,$0,$L403
	srl	$2,$5,31

	.option	pic0
	b	$L403
	.option	pic2
	mul.s	$f0,$f0,$f2

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
	bc1t	$L415
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L415
	nop

	bltz	$6,$L412
	nop

	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L413
	.option	pic2
	andi	$2,$6,0x1

$L412:
	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L413
	.option	pic2
	andi	$2,$6,0x1

$L414:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L415
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L413:
	beq	$2,$0,$L414
	srl	$2,$6,31

	.option	pic0
	b	$L414
	.option	pic2
	mul.d	$f0,$f0,$f2

$L415:
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
	bc1t	$L426
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L426
	nop

	bltz	$6,$L423
	nop

	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L424
	.option	pic2
	andi	$2,$6,0x1

$L423:
	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L424
	.option	pic2
	andi	$2,$6,0x1

$L425:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L426
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L424:
	beq	$2,$0,$L425
	srl	$2,$6,31

	.option	pic0
	b	$L425
	.option	pic2
	mul.d	$f0,$f0,$f2

$L426:
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
	b	$L428
	.option	pic2
	move	$3,$4

$L429:
	lb	$8,-1($5)
	addiu	$3,$3,1
	lb	$7,-1($3)
	nop
	xor	$7,$7,$8
	sb	$7,-1($3)
$L428:
	bne	$3,$6,$L429
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
	b	$L431
	.option	pic2
	addu	$2,$18,$2

$L433:
	addiu	$17,$17,1
	addiu	$2,$2,1
	addiu	$16,$16,-1
$L431:
	beq	$16,$0,$L432
	nop

	lb	$3,0($17)
	nop
	bne	$3,$0,$L433
	sb	$3,0($2)

$L432:
	bne	$16,$0,$L434
	nop

	sb	$0,0($2)
$L434:
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
$L437:
	beq	$2,$5,$L440
	addu	$3,$4,$2

	lb	$3,0($3)
	nop
	bne	$3,$0,$L439
	nop

$L440:
	jr	$31
	nop

$L439:
	.option	pic0
	b	$L437
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
$L442:
	lb	$2,0($4)
	nop
	beq	$2,$0,$L450
	move	$3,$5

$L445:
	lb	$6,0($3)
	nop
	beq	$6,$0,$L449
	addiu	$3,$3,1

	lb	$7,-1($3)
	lb	$6,0($4)
	nop
	bne	$7,$6,$L445
	nop

	jr	$31
	move	$2,$4

$L449:
	.option	pic0
	b	$L442
	.option	pic2
	addiu	$4,$4,1

$L450:
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
	b	$L453
	.option	pic2
	move	$2,$0

$L452:
	addiu	$4,$4,1
	lb	$3,-1($4)
	nop
	beq	$3,$0,$L457
	nop

$L453:
	lb	$3,0($4)
	nop
	bne	$5,$3,$L452
	nop

	.option	pic0
	b	$L452
	.option	pic2
	move	$2,$4

$L457:
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
	beq	$2,$0,$L462
	move	$18,$2

	lb	$19,0($17)
	nop
$L460:
	move	$5,$19
	move	$4,$16
	.option	pic0
	jal	strchr
	nop

	.option	pic2
	beq	$2,$0,$L465
	move	$16,$2

	move	$6,$18
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	strncmp
	nop

	.option	pic2
	beq	$2,$0,$L466
	move	$2,$16

	.option	pic0
	b	$L460
	.option	pic2
	addiu	$16,$16,1

$L465:
	.option	pic0
	b	$L459
	.option	pic2
	move	$2,$0

$L462:
	move	$2,$16
$L459:
$L466:
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
	bc1t	$L481
	swc1	$f13,16($sp)

$L468:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L478
	nop

	c.lt.d	$f14,$f0
	nop
	bc1t	$L482
	li	$2,-2147483648			# 0xffffffff80000000

	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
$L471:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	addiu	$sp,$sp,16

$L481:
	c.lt.d	$f0,$f14
	nop
	bc1f	$L468
	li	$2,-2147483648			# 0xffffffff80000000

$L482:
	lw	$3,16($sp)
	nop
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	.option	pic0
	b	$L471
	.option	pic2
	sw	$2,12($sp)

$L478:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	swc1	$f0,12($sp)
	.option	pic0
	b	$L471
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
	beq	$7,$0,$L488
	addu	$18,$4,$18

	sltu	$5,$5,$7
	bne	$5,$0,$L489
	move	$17,$6

	addiu	$20,$6,1
	.option	pic0
	b	$L485
	.option	pic2
	addiu	$19,$7,-1

$L486:
	addiu	$16,$16,1
$L485:
	sltu	$2,$18,$16
	bne	$2,$0,$L492
	move	$2,$0

	lb	$3,0($16)
	lb	$2,0($17)
	nop
	bne	$3,$2,$L486
	move	$6,$19

	move	$5,$20
	addiu	$4,$16,1
	.option	pic0
	jal	memcmp
	nop

	.option	pic2
	bne	$2,$0,$L485
	addiu	$16,$16,1

	addiu	$16,$16,-1
	move	$2,$16
$L492:
$L484:
	lw	$31,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

$L488:
	.option	pic0
	b	$L484
	.option	pic2
	move	$2,$4

$L489:
	.option	pic0
	b	$L484
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
	bc1t	$L516
	swc1	$f13,16($sp)

	move	$3,$0
$L496:
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
	bc1f	$L517
	lui	$4,%hi($LC8)

	lwc1	$f0,%lo($LC8+4)($4)
	nop
	lwc1	$f1,%lo($LC8)($4)
	lui	$4,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($4)
	nop
	lwc1	$f3,%lo($LC6)($4)
	.option	pic0
	b	$L498
	.option	pic2
	move	$2,$0

$L516:
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
	b	$L496
	.option	pic2
	li	$3,1			# 0x1

$L500:
	addiu	$2,$2,1
	lwc1	$f4,20($sp)
	nop
	lwc1	$f5,16($sp)
	nop
	mul.d	$f4,$f4,$f2
	swc1	$f4,20($sp)
	swc1	$f5,16($sp)
$L498:
	lwc1	$f4,20($sp)
	nop
	lwc1	$f5,16($sp)
	nop
	c.le.d	$f0,$f4
	nop
	bc1t	$L500
	nop

$L501:
	beq	$3,$0,$L505
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
$L505:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

$L517:
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
	bc1f	$L514
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.eq.d	$f2,$f0
	nop
	bc1f	$L509
	lui	$4,%hi($LC6)

	.option	pic0
	b	$L501
	.option	pic2
	move	$2,$0

$L504:
	addiu	$2,$2,-1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	add.d	$f2,$f2,$f2
	swc1	$f2,20($sp)
	swc1	$f3,16($sp)
$L503:
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1t	$L504
	nop

	.option	pic0
	b	$L501
	nop

	.option	pic2
$L509:
	lwc1	$f0,%lo($LC6+4)($4)
	nop
	lwc1	$f1,%lo($LC6)($4)
	.option	pic0
	b	$L503
	.option	pic2
	move	$2,$0

$L514:
	.option	pic0
	b	$L501
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
	b	$L519
	.option	pic2
	move	$3,$0

$L520:
	mult	$6,$8
	mflo	$10
	nop
	nop
	multu	$7,$8
	mflo	$13
	mfhi	$12
	addu	$12,$10,$12
	addu	$9,$3,$13
	sltu	$3,$9,$3
	addu	$2,$2,$12
	srl	$8,$7,31
	sll	$6,$6,1
	or	$6,$8,$6
	sll	$7,$7,1
	sll	$8,$4,31
	srl	$5,$5,1
	or	$5,$8,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	move	$3,$9
$L519:
	or	$8,$4,$5
	bne	$8,$0,$L520
	andi	$8,$5,0x1

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$7,33			# 0x21
	.option	pic0
	b	$L522
	.option	pic2
	li	$3,1			# 0x1

$L526:
	sll	$5,$5,1
	sll	$3,$3,1
$L522:
	sltu	$2,$5,$4
	beq	$2,$0,$L532
	addiu	$7,$7,-1

	beq	$7,$0,$L530
	nop

	bgez	$5,$L526
	move	$2,$0

	.option	pic0
	b	$L524
	nop

	.option	pic2
$L532:
	.option	pic0
	b	$L524
	.option	pic2
	move	$2,$0

$L530:
	.option	pic0
	b	$L524
	.option	pic2
	move	$2,$0

$L527:
	srl	$3,$3,1
	srl	$5,$5,1
$L524:
	beq	$3,$0,$L533
	sltu	$7,$4,$5

	bne	$7,$0,$L527
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L527
	.option	pic2
	or	$2,$2,$3

$L533:
	bne	$6,$0,$L534
	nop

$L529:
	jr	$31
	nop

$L534:
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
	beq	$2,$4,$L537
	xor	$3,$2,$4

	lw	$25,%call16(__clzsi2)($28)
	sll	$4,$3,8
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
$L536:
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L537:
	.option	pic0
	b	$L536
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
	beq	$2,$0,$L542
	.cprestore	16

	lw	$25,%call16(__clzdi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
$L540:
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L542:
	.option	pic0
	b	$L540
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
	b	$L545
	.option	pic2
	move	$2,$0

$L546:
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	sll	$5,$5,1
$L545:
	bne	$4,$0,$L546
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
	bne	$3,$0,$L548
	and	$2,$6,$2

	addu	$3,$5,$6
	sltu	$3,$3,$4
	bne	$3,$0,$L558
	move	$3,$5

	.option	pic0
	b	$L549
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L548:
	move	$3,$5
$L558:
	move	$7,$4
	sll	$10,$10,3
	.option	pic0
	b	$L550
	.option	pic2
	addu	$10,$10,$5

$L551:
	lw	$9,4($3)
	lw	$8,0($3)
	sw	$9,4($7)
	sw	$8,0($7)
	addiu	$3,$3,8
	addiu	$7,$7,8
$L550:
	bne	$3,$10,$L551
	nop

	.option	pic0
	b	$L557
	.option	pic2
	sltu	$3,$2,$6

$L553:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L557:
	bne	$3,$0,$L553
	addu	$3,$5,$2

	jr	$31
	nop

$L555:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L549:
	addiu	$6,$6,-1
	bne	$6,$7,$L555
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
	bne	$2,$0,$L560
	srl	$8,$6,1

	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L567
	move	$2,$5

	.option	pic0
	b	$L561
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L560:
	move	$2,$5
$L567:
	move	$3,$4
	sll	$8,$8,1
	.option	pic0
	b	$L562
	.option	pic2
	addu	$8,$8,$5

$L563:
	lh	$7,0($2)
	nop
	sh	$7,0($3)
	addiu	$2,$2,2
	addiu	$3,$3,2
$L562:
	bne	$2,$8,$L563
	nop

	andi	$2,$6,0x1
	beq	$2,$0,$L568
	addiu	$6,$6,-1

	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	jr	$31
	sb	$2,0($4)

$L565:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L561:
	addiu	$6,$6,-1
	bne	$6,$7,$L565
	addu	$2,$5,$6

$L568:
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
	bne	$3,$0,$L570
	and	$2,$6,$2

	addu	$3,$5,$6
	sltu	$3,$3,$4
	bne	$3,$0,$L580
	move	$3,$5

	.option	pic0
	b	$L571
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

$L570:
	move	$3,$5
$L580:
	move	$7,$4
	sll	$9,$9,2
	.option	pic0
	b	$L572
	.option	pic2
	addu	$9,$9,$5

$L573:
	lw	$8,0($3)
	nop
	sw	$8,0($7)
	addiu	$3,$3,4
	addiu	$7,$7,4
$L572:
	bne	$3,$9,$L573
	nop

	.option	pic0
	b	$L579
	.option	pic2
	sltu	$3,$2,$6

$L575:
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,$2,1
	sltu	$3,$2,$6
$L579:
	bne	$3,$0,$L575
	addu	$3,$5,$2

	jr	$31
	nop

$L577:
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L571:
	addiu	$6,$6,-1
	bne	$6,$7,$L577
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
	bltz	$4,$L585
	cvt.d.w	$f0,$f0

$L583:
	jr	$31
	nop

$L585:
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
	bltz	$4,$L589
	cvt.d.w	$f0,$f0

$L587:
	jr	$31
	cvt.s.d	$f0,$f0

$L589:
	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	.option	pic0
	b	$L587
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
$L596:
	beq	$2,$5,$L599
	subu	$3,$6,$2

	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,$L599
	nop

	.option	pic0
	b	$L596
	.option	pic2
	addiu	$2,$2,1

$L599:
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
$L601:
	beq	$2,$5,$L604
	sra	$3,$4,$2

	andi	$3,$3,0x1
	bne	$3,$0,$L604
	nop

	.option	pic0
	b	$L601
	.option	pic2
	addiu	$2,$2,1

$L604:
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
	bc1t	$L612
	nop

	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	jr	$31
	nop

$L612:
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
	b	$L614
	.option	pic2
	li	$6,16			# 0x10

$L615:
	andi	$5,$5,0x1
	addiu	$3,$3,1
	addu	$2,$5,$2
$L614:
	bne	$3,$6,$L615
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
	b	$L620
	.option	pic2
	move	$2,$0

$L621:
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	sll	$5,$5,1
$L620:
	bne	$4,$0,$L621
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
	beq	$4,$0,$L626
	nop

	.option	pic0
	b	$L624
	.option	pic2
	move	$2,$0

$L625:
	subu	$3,$0,$3
	and	$3,$3,$4
	srl	$5,$5,1
	addu	$2,$3,$2
	sll	$4,$4,1
$L624:
	bne	$5,$0,$L625
	andi	$3,$5,0x1

	jr	$31
	nop

$L626:
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
	b	$L628
	.option	pic2
	li	$3,1			# 0x1

$L632:
	sll	$5,$5,1
	sll	$3,$3,1
$L628:
	sltu	$2,$5,$4
	beq	$2,$0,$L638
	addiu	$7,$7,-1

	beq	$7,$0,$L636
	nop

	bgez	$5,$L632
	move	$2,$0

	.option	pic0
	b	$L630
	nop

	.option	pic2
$L638:
	.option	pic0
	b	$L630
	.option	pic2
	move	$2,$0

$L636:
	.option	pic0
	b	$L630
	.option	pic2
	move	$2,$0

$L633:
	srl	$3,$3,1
	srl	$5,$5,1
$L630:
	beq	$3,$0,$L639
	sltu	$7,$4,$5

	bne	$7,$0,$L633
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L633
	.option	pic2
	or	$2,$2,$3

$L639:
	bne	$6,$0,$L640
	nop

$L635:
	jr	$31
	nop

$L640:
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
	bc1t	$L644
	nop

	c.lt.s	$f14,$f12
	nop
	bc1t	$L643
	li	$2,1			# 0x1

	move	$2,$0
$L643:
	jr	$31
	andi	$2,$2,0x00ff

$L644:
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
	bc1t	$L648
	nop

	c.lt.d	$f14,$f12
	nop
	bc1t	$L647
	li	$2,1			# 0x1

	move	$2,$0
$L647:
	jr	$31
	andi	$2,$2,0x00ff

$L648:
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
	bltz	$5,$L659
	nop

	move	$7,$0
$L652:
	li	$6,33			# 0x21
	.option	pic0
	b	$L653
	.option	pic2
	move	$2,$0

$L659:
	subu	$5,$0,$5
	.option	pic0
	b	$L652
	.option	pic2
	li	$7,1			# 0x1

$L655:
	subu	$3,$0,$3
	and	$3,$3,$4
	sra	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
$L653:
	beq	$5,$0,$L654
	nop

	addiu	$6,$6,-1
	andi	$6,$6,0x00ff
	bne	$6,$0,$L655
	andi	$3,$5,0x1

$L654:
	beq	$7,$0,$L660
	nop

	subu	$2,$0,$2
$L660:
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
	bltz	$4,$L667
	sw	$16,24($sp)

	move	$16,$0
$L662:
	bltz	$5,$L668
	nop

$L663:
	move	$6,$0
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L664
	nop

	subu	$2,$0,$2
$L664:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

$L667:
	subu	$4,$0,$4
	.option	pic0
	b	$L662
	.option	pic2
	li	$16,1			# 0x1

$L668:
	subu	$5,$0,$5
	.option	pic0
	b	$L663
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
	bltz	$4,$L675
	move	$2,$5

	move	$16,$0
$L670:
	bltz	$2,$L676
	move	$5,$2

$L671:
	li	$6,1			# 0x1
	.option	pic0
	jal	__udivmodsi4
	nop

	.option	pic2
	beq	$16,$0,$L672
	nop

	subu	$2,$0,$2
$L672:
	lw	$31,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

$L675:
	subu	$4,$0,$4
	.option	pic0
	b	$L670
	.option	pic2
	li	$16,1			# 0x1

$L676:
	.option	pic0
	b	$L671
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
$L678:
	sltu	$7,$5,$4
	beq	$7,$0,$L688
	nop

	addiu	$2,$2,-1
	beq	$2,$0,$L686
	sll	$7,$5,16

	sra	$7,$7,16
	bltz	$7,$L689
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	.option	pic0
	b	$L678
	.option	pic2
	andi	$3,$3,0xffff

$L688:
	.option	pic0
	b	$L680
	.option	pic2
	move	$2,$0

$L686:
	.option	pic0
	b	$L680
	.option	pic2
	move	$2,$0

$L689:
	.option	pic0
	b	$L680
	.option	pic2
	move	$2,$0

$L683:
	srl	$3,$3,1
	srl	$5,$5,1
$L680:
	beq	$3,$0,$L690
	sltu	$7,$4,$5

	bne	$7,$0,$L683
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	.option	pic0
	b	$L683
	.option	pic2
	or	$2,$2,$3

$L690:
	bne	$6,$0,$L691
	nop

$L685:
	jr	$31
	nop

$L691:
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
	b	$L693
	.option	pic2
	li	$3,1			# 0x1

$L697:
	sll	$5,$5,1
	sll	$3,$3,1
$L693:
	sltu	$2,$5,$4
	beq	$2,$0,$L703
	addiu	$7,$7,-1

	beq	$7,$0,$L701
	nop

	bgez	$5,$L697
	move	$2,$0

	.option	pic0
	b	$L695
	nop

	.option	pic2
$L703:
	.option	pic0
	b	$L695
	.option	pic2
	move	$2,$0

$L701:
	.option	pic0
	b	$L695
	.option	pic2
	move	$2,$0

$L698:
	srl	$3,$3,1
	srl	$5,$5,1
$L695:
	beq	$3,$0,$L704
	sltu	$7,$4,$5

	bne	$7,$0,$L698
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L698
	.option	pic2
	or	$2,$2,$3

$L704:
	bne	$6,$0,$L705
	nop

$L700:
	jr	$31
	nop

$L705:
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
	beq	$2,$0,$L707
	move	$3,$0

	jr	$31
	sll	$2,$5,$6

$L707:
	beq	$6,$0,$L710
	nop

	sll	$3,$5,$6
	sll	$2,$4,$6
	subu	$6,$0,$6
	srl	$5,$5,$6
	jr	$31
	or	$2,$5,$2

$L710:
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
	beq	$2,$0,$L712
	sra	$2,$4,31

	sra	$5,$4,$6
$L714:
	jr	$31
	move	$3,$5

$L712:
	beq	$6,$0,$L715
	nop

	sra	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L714
	.option	pic2
	or	$5,$4,$5

$L715:
	.option	pic0
	b	$L714
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
	mult	$2,$5
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
	bne	$2,$0,$L721
	slt	$4,$6,$4

	bne	$4,$0,$L722
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L723
	sltu	$5,$7,$5

	bne	$5,$0,$L724
	nop

	jr	$31
	li	$2,1			# 0x1

$L721:
	jr	$31
	move	$2,$0

$L722:
	jr	$31
	li	$2,2			# 0x2

$L723:
	jr	$31
	move	$2,$0

$L724:
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
	beq	$2,$0,$L729
	move	$2,$0

	srl	$5,$4,$6
$L731:
	jr	$31
	move	$3,$5

$L729:
	beq	$6,$0,$L732
	nop

	srl	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L731
	.option	pic2
	or	$5,$4,$5

$L732:
	.option	pic0
	b	$L731
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
	b	$L744
	.option	pic2
	srl	$3,$6,31

$L748:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L743
	nop

	mul.d	$f12,$f12,$f12
$L744:
	andi	$2,$6,0x1
	beq	$2,$0,$L748
	srl	$2,$6,31

	.option	pic0
	b	$L748
	.option	pic2
	mul.d	$f0,$f0,$f12

$L743:
	beq	$3,$0,$L749
	lui	$2,%hi($LC8)

	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	div.d	$f0,$f2,$f0
$L749:
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
	b	$L753
	.option	pic2
	srl	$3,$5,31

$L757:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L752
	nop

	mul.s	$f12,$f12,$f12
$L753:
	andi	$2,$5,0x1
	beq	$2,$0,$L757
	srl	$2,$5,31

	.option	pic0
	b	$L757
	.option	pic2
	mul.s	$f0,$f0,$f12

$L752:
	beq	$3,$0,$L758
	lui	$2,%hi($LC11)

	lwc1	$f2,%lo($LC11)($2)
	nop
	div.s	$f0,$f2,$f0
$L758:
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
	bne	$2,$0,$L761
	sltu	$4,$6,$4

	bne	$4,$0,$L762
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L763
	sltu	$5,$7,$5

	bne	$5,$0,$L764
	nop

	jr	$31
	li	$2,1			# 0x1

$L761:
	jr	$31
	move	$2,$0

$L762:
	jr	$31
	li	$2,2			# 0x2

$L763:
	jr	$31
	move	$2,$0

$L764:
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
