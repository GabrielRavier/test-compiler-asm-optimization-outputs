	.file	1 "mini-libc.c"
	.section .mdebug.abiO64
	.previous
	.section .gcc_compiled_long32
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.module	arch=mips64r2
	.abicalls
	.text
	.align	2
	.globl	make_ti
	.set	mips16
	.set	nomicromips
	.ent	make_ti
	.type	make_ti, @function
make_ti:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$4,8($sp)
	sd	$5,16($sp)
	ld	$3,16($sp)
	ld	$2,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

	.end	make_ti
	.size	make_ti, .-make_ti
	.align	2
	.globl	make_tu
	.set	mips16
	.set	nomicromips
	.ent	make_tu
	.type	make_tu, @function
make_tu:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$4,8($sp)
	sd	$5,16($sp)
	ld	$3,16($sp)
	ld	$2,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

	.end	make_tu
	.size	make_tu, .-make_tu
	.align	2
	.globl	memmove
	.set	mips16
	.set	nomicromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	sltu	$5,$4
	bteqz	$L6
	addu	$5,$5,$6
	addu	$3,$4,$6
	beqz	$6,$L10
$L8:
	addiu	$5,-1
	addiu	$3,-1
	lb	$4,0($5)
	sb	$4,0($3)
	cmp	$2,$3
	btnez	$L8
	jr	$31
$L6:
	cmp	$4,$5
	bteqz	$L10
	beqz	$6,$L10
	move	$3,$4
	addu	$6,$4,$6
$L9:
	lb	$4,0($5)
	sb	$4,0($3)
	addiu	$3,1
	addiu	$5,1
	cmp	$3,$6
	btnez	$L9
$L10:
	jr	$31
	.end	memmove
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.set	mips16
	.set	nomicromips
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	zeb	$6
	beqz	$7,$L19
$L13:
	lbu	$3,0($5)
	sb	$3,0($4)
	xor	$3,$6
	beqz	$3,$L20
	addiu	$7,-1
	addiu	$5,1
	addiu	$4,1
	bnez	$7,$L13
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L19:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L20:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,$4,1
	.set	macro
	.set	reorder

	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.set	mips16
	.set	nomicromips
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	zeb	$5
	beqz	$6,$L26
$L22:
	lbu	$3,0($4)
	xor	$3,$5
	beqz	$3,$L27
	addiu	$4,1
	addiu	$6,-1
	bnez	$6,$L22
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L26:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L27:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.set	mips16
	.set	nomicromips
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$6,$L35
$L29:
	lbu	$2,0($4)
	lbu	$3,0($5)
	xor	$2,$3
	bnez	$2,$L36
	addiu	$6,-1
	addiu	$4,1
	addiu	$5,1
	bnez	$6,$L29
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L35:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L36:
	lbu	$2,0($4)
	lbu	$3,0($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.set	mips16
	.set	nomicromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	beqz	$6,$L40
	move	$3,$4
	addu	$6,$4,$6
$L39:
	lbu	$7,0($5)
	sb	$7,0($3)
	addiu	$3,1
	addiu	$5,1
	cmp	$3,$6
	btnez	$L39
$L40:
	jr	$31
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.set	mips16
	.set	nomicromips
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	zeb	$5
	addiu	$6,-1
	addu	$6,$4,$6
	addiu	$4,-1
$L42:
	cmp	$6,$4
	bteqz	$L45
	move	$2,$6
	lbu	$3,0($6)
	addiu	$6,-1
	xor	$3,$5
	bnez	$3,$L42
	jr	$31
$L45:
	li	$2,0
$L41:
	jr	$31
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.set	mips16
	.set	nomicromips
	.ent	memset
	.type	memset, @function
memset:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	beqz	$6,$L49
	addu	$6,$4,$6
	move	$3,$4
$L48:
	sb	$5,0($3)
	addiu	$3,1
	cmp	$6,$3
	btnez	$L48
$L49:
	jr	$31
	.end	memset
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.set	mips16
	.set	nomicromips
	.ent	stpcpy
	.type	stpcpy, @function
stpcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	lb	$3,0($5)
	sb	$3,0($4)
	beqz	$3,$L53
$L52:
	addiu	$5,1
	addiu	$2,1
	lb	$3,0($5)
	sb	$3,0($2)
	bnez	$3,$L52
$L53:
	jr	$31
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.set	mips16
	.set	nomicromips
	.ent	strchrnul
	.type	strchrnul, @function
strchrnul:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	zeb	$5
	lb	$2,0($4)
	beqz	$2,$L59
$L55:
	lbu	$2,0($4)
	xor	$2,$5
	beqz	$2,$L60
	addiu	$4,1
	lb	$2,0($4)
	bnez	$2,$L55
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L59:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L60:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.set	mips16
	.set	nomicromips
	.ent	strchr
	.type	strchr, @function
strchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
$L63:
	lb	$3,0($2)
	cmp	$3,$5
	bteqz	$L64
	addiu	$2,1
	bnez	$3,$L63
	li	$2,0
$L64:
	jr	$31
	.end	strchr
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.set	mips16
	.set	nomicromips
	.ent	strcmp
	.type	strcmp, @function
strcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lb	$2,0($4)
	lb	$3,0($5)
	xor	$2,$3
	bnez	$2,$L67
$L66:
	lb	$2,0($4)
	beqz	$2,$L67
	addiu	$4,1
	addiu	$5,1
	lb	$2,0($4)
	lb	$3,0($5)
	xor	$2,$3
	beqz	$2,$L66
$L67:
	lbu	$3,0($4)
	lbu	$2,0($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$3,$2
	.set	macro
	.set	reorder

	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.set	mips16
	.set	nomicromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lb	$2,0($4)
	beqz	$2,$L72
	move	$2,$4
$L71:
	addiu	$2,1
	lb	$5,0($2)
	bnez	$5,$L71
$L70:
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$4
	.set	macro
	.set	reorder

$L72:
	move	$2,$4
	b	$L70
	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.set	mips16
	.set	nomicromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$2,$6,-1
	beqz	$6,$L78
	lbu	$3,0($4)
	beqz	$3,$L75
	addu	$6,$4,$2
$L76:
	lbu	$2,0($5)
	beqz	$2,$L75
	cmp	$6,$4
	bteqz	$L79
	lbu	$3,0($4)
	xor	$2,$3
	bnez	$2,$L75
	addiu	$4,1
	addiu	$5,1
	lbu	$2,0($4)
	bnez	$2,$L76
	b	$L75
$L79:
	move	$4,$6
$L75:
	lbu	$2,0($4)
	lbu	$3,0($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L78:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.set	mips16
	.set	nomicromips
	.ent	swab
	.type	swab, @function
swab:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$6,2
	btnez	$L83
	li	$2,2
	neg	$2,$2
	and	$6,$2
	addu	$6,$4,$6
$L82:
	lb	$2,1($4)
	sb	$2,0($5)
	lb	$2,0($4)
	sb	$2,1($5)
	addiu	$5,2
	addiu	$4,2
	cmp	$4,$6
	btnez	$L82
$L83:
	jr	$31
	.end	swab
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.set	mips16
	.set	nomicromips
	.ent	isalpha
	.type	isalpha, @function
isalpha:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,32
	or	$4,$2
	addiu	$4,-97
	sltu	$4,26
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isalpha
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.set	mips16
	.set	nomicromips
	.ent	isascii
	.type	isascii, @function
isascii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,128
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isascii
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.set	mips16
	.set	nomicromips
	.ent	isblank
	.type	isblank, @function
isblank:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	cmpi	$4,32
	bteqz	$L88
	li	$2,9
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L88:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	isblank
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.set	mips16
	.set	nomicromips
	.ent	iscntrl
	.type	iscntrl, @function
iscntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,32
	btnez	$L91
	li	$2,127
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L91:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.set	mips16
	.set	nomicromips
	.ent	isdigit
	.type	isdigit, @function
isdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-48
	sltu	$4,10
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isdigit
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.set	mips16
	.set	nomicromips
	.ent	isgraph
	.type	isgraph, @function
isgraph:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-33
	sltu	$4,94
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isgraph
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.set	mips16
	.set	nomicromips
	.ent	islower
	.type	islower, @function
islower:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-97
	sltu	$4,26
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	islower
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.set	mips16
	.set	nomicromips
	.ent	isprint
	.type	isprint, @function
isprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-32
	sltu	$4,95
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isprint
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.set	mips16
	.set	nomicromips
	.ent	isspace
	.type	isspace, @function
isspace:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	cmpi	$4,32
	bteqz	$L98
	addiu	$4,-9
	sltu	$4,5
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L98:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	isspace
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.set	mips16
	.set	nomicromips
	.ent	isupper
	.type	isupper, @function
isupper:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-65
	sltu	$4,26
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	isupper
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.set	mips16
	.set	nomicromips
	.ent	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,32
	btnez	$L102
	addiu	$2,$4,-8
	addiu	$2,-119
	sltu	$2,33
	btnez	$L103
	addiu	$2,$4,-8232
	sltu	$2,2
	btnez	$L104
	li	$2,65529
	neg	$2,$2
	addu	$4,$4,$2
	sltu	$4,3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L102:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L103:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L104:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.set	mips16
	.set	nomicromips
	.ent	iswdigit
	.type	iswdigit, @function
iswdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-48
	sltu	$4,10
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

	.end	iswdigit
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.set	mips16
	.set	nomicromips
	.ent	iswprint
	.type	iswprint, @function
iswprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,255
	btnez	$L114
	sltu	$4,8232
	btnez	$L109
	addiu	$3,$4,-8234
	li	$2,47062
	sltu	$3,$2
	btnez	$L110
	li	$2,57344
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$2,8185
	btnez	$L111
	li	$2,65532
	neg	$2,$2
	addu	$2,$4,$2
	lw	$3,$L116
	sltu	$3,$2
	btnez	$L112
	li	$2,65534
	and	$4,$2
	xor	$4,$2
	sltu	$4,1
	move	$2,$24
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	xor	$2,$3
	.set	macro
	.set	reorder

$L114:
	addiu	$4,1
	li	$2,127
	and	$4,$2
	sltu	$4,33
	move	$2,$24
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	xor	$2,$3
	.set	macro
	.set	reorder

$L109:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L110:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L111:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L112:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.type	__pool_iswprint_115, @object
__pool_iswprint_115:
	.align	2
$L115:
	.word	__gnu_local_gp
$L116:
	.word	1048579
	.type	__pend_iswprint_115, @object
__pend_iswprint_115:
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.set	mips16
	.set	nomicromips
	.ent	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$2,$4,-8
	addiu	$2,-40
	sltu	$2,10
	btnez	$L119
	li	$2,32
	or	$4,$2
	addiu	$4,-97
	sltu	$4,6
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L119:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.set	mips16
	.set	nomicromips
	.ent	toascii
	.type	toascii, @function
toascii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,127
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$4
	.set	macro
	.set	reorder

	.end	toascii
	.size	toascii, .-toascii
	.align	2
	.globl	fdim
	# Stub function for fdim (double, double)
	.section	.mips16.fn.fdim,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fdim
	.type	__fn_stub_fdim, @function
__fn_stub_fdim:
	.option	pic0
	la	$25,fdim
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fdim
	__fn_local_fdim = fdim
	.text
	.set	mips16
	.set	nomicromips
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L130
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$16,$4
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_unorddf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L124
	lw	$2,%call16(__mips16_unorddf2)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L125
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L128
	lw	$17,%call16(__mips16_subdf3)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L121:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L124:
	move	$2,$16
	b	$L121
$L125:
	ld	$2,72($sp)
	b	$L121
$L128:
	ld	$2,$L131
	b	$L121
	.type	__pool_fdim_130, @object
__pool_fdim_130:
	.align	2
$L130:
	.word	__gnu_local_gp
	.align	3
$L131:
	.word	0
	.word	0
	.type	__pend_fdim_130, @object
__pend_fdim_130:
	.end	fdim
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	# Stub function for fdimf (float, float)
	.section	.mips16.fn.fdimf,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fdimf
	.type	__fn_stub_fdimf, @function
__fn_stub_fdimf:
	.option	pic0
	la	$25,fdimf
	mfc1	$4,$f12
	mfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fdimf
	__fn_local_fdimf = fdimf
	.text
	.set	mips16
	.set	nomicromips
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L141
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$16,$4
	sw	$5,72($sp)
	lw	$2,%call16(__mips16_unordsf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L135
	lw	$2,%call16(__mips16_unordsf2)($17)
	lw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L136
	lw	$2,%call16(__mips16_gtsf2)($17)
	lw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L139
	lw	$17,%call16(__mips16_subsf3)($17)
	lw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L132:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L135:
	move	$2,$16
	b	$L132
$L136:
	lw	$2,72($sp)
	b	$L132
$L139:
	lw	$2,$L142
	b	$L132
	.type	__pool_fdimf_141, @object
__pool_fdimf_141:
	.align	2
$L141:
	.word	__gnu_local_gp
$L142:
	.word	0
	.type	__pend_fdimf_141, @object
__pend_fdimf_141:
	.end	fdimf
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	# Stub function for fmax (double, double)
	.section	.mips16.fn.fmax,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fmax
	.type	__fn_stub_fmax, @function
__fn_stub_fmax:
	.option	pic0
	la	$25,fmax
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fmax
	__fn_local_fmax = fmax
	.text
	.set	mips16
	.set	nomicromips
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L153
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$16,$4
	sd	$5,80($sp)
	lw	$2,%call16(__mips16_unorddf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L149
	lw	$2,%call16(__mips16_unorddf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L150
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	ld	$2,80($sp)
	dsrl	$2,63
	xor	$2,$3
	beqz	$2,$L145
	beqz	$3,$L151
	ld	$2,80($sp)
	b	$L143
$L145:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L146
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L146:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L148
	ld	$16,80($sp)
$L148:
	move	$2,$16
$L143:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L149:
	ld	$2,80($sp)
	b	$L143
$L150:
	move	$2,$16
	b	$L143
$L151:
	move	$2,$16
	b	$L143
	.type	__pool_fmax_153, @object
__pool_fmax_153:
	.align	2
$L153:
	.word	__gnu_local_gp
	.type	__pend_fmax_153, @object
__pend_fmax_153:
	.end	fmax
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	# Stub function for fmaxf (float, float)
	.section	.mips16.fn.fmaxf,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fmaxf
	.type	__fn_stub_fmaxf, @function
__fn_stub_fmaxf:
	.option	pic0
	la	$25,fmaxf
	mfc1	$4,$f12
	mfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fmaxf
	__fn_local_fmaxf = fmaxf
	.text
	.set	mips16
	.set	nomicromips
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L164
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$16,$4
	sw	$5,80($sp)
	lw	$2,%call16(__mips16_unordsf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L160
	lw	$2,%call16(__mips16_unordsf2)($17)
	lw	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L161
	lw	$2,$L165
	move	$3,$2
	and	$3,$16
	lw	$4,80($sp)
	and	$2,$4
	xor	$2,$3
	beqz	$2,$L156
	beqz	$3,$L162
	lw	$2,80($sp)
	b	$L154
$L156:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	lw	$17,%call16(__mips16_ltsf2)($17)
	lw	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L157
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L157:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L159
	lw	$16,80($sp)
$L159:
	move	$2,$16
$L154:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L160:
	lw	$2,80($sp)
	b	$L154
$L161:
	move	$2,$16
	b	$L154
$L162:
	move	$2,$16
	b	$L154
	.type	__pool_fmaxf_164, @object
__pool_fmaxf_164:
	.align	2
$L164:
	.word	__gnu_local_gp
$L165:
	.word	-2147483648
	.type	__pend_fmaxf_164, @object
__pend_fmaxf_164:
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	# Stub function for fmaxl (double, double)
	.section	.mips16.fn.fmaxl,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fmaxl
	.type	__fn_stub_fmaxl, @function
__fn_stub_fmaxl:
	.option	pic0
	la	$25,fmaxl
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fmaxl
	__fn_local_fmaxl = fmaxl
	.text
	.set	mips16
	.set	nomicromips
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L176
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$16,$4
	sd	$5,80($sp)
	lw	$2,%call16(__mips16_unorddf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L172
	lw	$2,%call16(__mips16_unorddf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L173
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	ld	$2,80($sp)
	dsrl	$2,63
	xor	$2,$3
	beqz	$2,$L168
	beqz	$3,$L174
	ld	$2,80($sp)
	b	$L166
$L168:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L169
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L169:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L171
	ld	$16,80($sp)
$L171:
	move	$2,$16
$L166:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L172:
	ld	$2,80($sp)
	b	$L166
$L173:
	move	$2,$16
	b	$L166
$L174:
	move	$2,$16
	b	$L166
	.type	__pool_fmaxl_176, @object
__pool_fmaxl_176:
	.align	2
$L176:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_176, @object
__pend_fmaxl_176:
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	# Stub function for fmin (double, double)
	.section	.mips16.fn.fmin,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fmin
	.type	__fn_stub_fmin, @function
__fn_stub_fmin:
	.option	pic0
	la	$25,fmin
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fmin
	__fn_local_fmin = fmin
	.text
	.set	mips16
	.set	nomicromips
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L187
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$16,$4
	sd	$5,80($sp)
	lw	$2,%call16(__mips16_unorddf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L183
	lw	$2,%call16(__mips16_unorddf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L184
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	ld	$2,80($sp)
	dsrl	$2,63
	xor	$2,$3
	beqz	$2,$L179
	beqz	$3,$L185
	move	$2,$16
$L177:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L179:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L180
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L180:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L181
	move	$2,$16
	b	$L177
$L181:
	ld	$2,80($sp)
	b	$L177
$L183:
	ld	$2,80($sp)
	b	$L177
$L184:
	move	$2,$16
	b	$L177
$L185:
	ld	$2,80($sp)
	b	$L177
	.type	__pool_fmin_187, @object
__pool_fmin_187:
	.align	2
$L187:
	.word	__gnu_local_gp
	.type	__pend_fmin_187, @object
__pend_fmin_187:
	.end	fmin
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	# Stub function for fminf (float, float)
	.section	.mips16.fn.fminf,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fminf
	.type	__fn_stub_fminf, @function
__fn_stub_fminf:
	.option	pic0
	la	$25,fminf
	mfc1	$4,$f12
	mfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fminf
	__fn_local_fminf = fminf
	.text
	.set	mips16
	.set	nomicromips
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L198
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$16,$4
	sw	$5,80($sp)
	lw	$2,%call16(__mips16_unordsf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L194
	lw	$2,%call16(__mips16_unordsf2)($17)
	lw	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L195
	lw	$2,$L199
	move	$3,$2
	and	$3,$16
	lw	$4,80($sp)
	and	$2,$4
	xor	$2,$3
	beqz	$2,$L190
	beqz	$3,$L196
	move	$2,$16
$L188:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L190:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	lw	$17,%call16(__mips16_ltsf2)($17)
	lw	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L191
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L191:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L192
	move	$2,$16
	b	$L188
$L192:
	lw	$2,80($sp)
	b	$L188
$L194:
	lw	$2,80($sp)
	b	$L188
$L195:
	move	$2,$16
	b	$L188
$L196:
	lw	$2,80($sp)
	b	$L188
	.type	__pool_fminf_198, @object
__pool_fminf_198:
	.align	2
$L198:
	.word	__gnu_local_gp
$L199:
	.word	-2147483648
	.type	__pend_fminf_198, @object
__pend_fminf_198:
	.end	fminf
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	# Stub function for fminl (double, double)
	.section	.mips16.fn.fminl,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_fminl
	.type	__fn_stub_fminl, @function
__fn_stub_fminl:
	.option	pic0
	la	$25,fminl
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_fminl
	__fn_local_fminl = fminl
	.text
	.set	mips16
	.set	nomicromips
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L210
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$16,$4
	sd	$5,80($sp)
	lw	$2,%call16(__mips16_unorddf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L206
	lw	$2,%call16(__mips16_unorddf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L207
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	ld	$2,80($sp)
	dsrl	$2,63
	xor	$2,$3
	beqz	$2,$L202
	beqz	$3,$L208
	move	$2,$16
$L200:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L202:
	li	$2,1
	move	$3,$sp
	sb	$2,40($3)
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L203
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L203:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L204
	move	$2,$16
	b	$L200
$L204:
	ld	$2,80($sp)
	b	$L200
$L206:
	ld	$2,80($sp)
	b	$L200
$L207:
	move	$2,$16
	b	$L200
$L208:
	ld	$2,80($sp)
	b	$L200
	.type	__pool_fminl_210, @object
__pool_fminl_210:
	.align	2
$L210:
	.word	__gnu_local_gp
	.type	__pend_fminl_210, @object
__pend_fminl_210:
	.end	fminl
	.size	fminl, .-fminl
	.rdata
	.align	3
	.type	digits, @object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr"
	.ascii	"stuvwxyz\000"
	.text
	.align	2
	.globl	l64a
	.set	mips16
	.set	nomicromips
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$4,$L214
	lw	$5,$L215
$L213:
	li	$3,63
	and	$3,$4
	lw	$2,$L216
	addu	$2,$2,$3
	lb	$2,0($2)
	sb	$2,0($5)
	addiu	$5,1
	srl	$4,$4,6
	bnez	$4,$L213
$L212:
	li	$2,0
	sb	$2,0($5)
	lw	$2,$L215
	jr	$31
$L214:
	lw	$5,$L215
	b	$L212
	.type	__pool_l64a_215, @object
__pool_l64a_215:
	.align	2
$L215:
	.word	s.0
$L216:
	.word	digits
	.type	__pend_l64a_215, @object
__pend_l64a_215:
	.end	l64a
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
	.globl	srand
	.set	mips16
	.set	nomicromips
	.ent	srand
	.type	srand, @function
srand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$4,-1
	dsll	$4,$4,32
	dsrl	$4,32
	lw	$2,$L218
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.type	__pool_srand_218, @object
__pool_srand_218:
	.align	2
$L218:
	.word	seed
	.type	__pend_srand_218, @object
__pend_srand_218:
	.end	srand
	.size	srand, .-srand
	.align	2
	.globl	rand
	.set	mips16
	.set	nomicromips
	.ent	rand
	.type	rand, @function
rand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$3,$L221
	ld	$2,$L222
	ld	$4,0($3)
	dmult	$4,$2
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_221, @object
__pool_rand_221:
	.align	2
$L221:
	.word	seed
	.align	3
$L222:
	.dword	6364136223846793005
	.type	__pend_rand_221, @object
__pend_rand_221:
	.end	rand
	.size	rand, .-rand
	.align	2
	.globl	insque
	.set	mips16
	.set	nomicromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$5,$L226
	lw	$2,0($5)
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	beqz	$2,$L227
	sw	$4,4($2)
$L227:
	jr	$31
$L226:
	li	$2,0
	sw	$2,4($4)
	.set	noreorder
	.set	nomacro
	jr	$31
	sw	$2,0($4)
	.set	macro
	.set	reorder

	.end	insque
	.size	insque, .-insque
	.align	2
	.globl	remque
	.set	mips16
	.set	nomicromips
	.ent	remque
	.type	remque, @function
remque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$2,0($4)
	beqz	$2,$L229
	lw	$3,4($4)
	sw	$3,4($2)
$L229:
	lw	$2,4($4)
	beqz	$2,$L231
	lw	$3,0($4)
	sw	$3,0($2)
$L231:
	jr	$31
	.end	remque
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.set	mips16
	.set	nomicromips
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L237
	move	$28,$2
	sw	$2,32($sp)
	sw	$4,72($sp)
	sw	$5,80($sp)
	sw	$6,88($sp)
	sw	$7,96($sp)
	lw	$2,88($sp)
	lw	$2,0($2)
	sw	$2,44($sp)
	beqz	$2,$L233
	lw	$16,80($sp)
	li	$17,0
$L235:
	sw	$16,40($sp)
	move	$5,$16
	lw	$2,108($sp)
	move	$25,$2
	lw	$2,108($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L232
	addiu	$17,1
	lw	$2,96($sp)
	addu	$16,$16,$2
	lw	$2,44($sp)
	cmp	$2,$17
	btnez	$L235
$L233:
	lw	$3,44($sp)
	addiu	$2,$3,1
	lw	$4,88($sp)
	sw	$2,0($4)
	lw	$2,96($sp)
	mult	$2,$3
	mflo	$4
	lw	$6,96($sp)
	lw	$5,72($sp)
	lw	$2,80($sp)
	addu	$4,$2,$4
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
$L232:
	lw	$2,40($sp)
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool_lsearch_237, @object
__pool_lsearch_237:
	.align	2
$L237:
	.word	__gnu_local_gp
	.type	__pend_lsearch_237, @object
__pend_lsearch_237:
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.set	mips16
	.set	nomicromips
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	sw	$4,72($sp)
	sw	$7,96($sp)
	lw	$2,0($6)
	sw	$2,44($sp)
	beqz	$2,$L241
	move	$16,$5
	li	$17,0
$L240:
	sw	$16,40($sp)
	move	$5,$16
	lw	$2,108($sp)
	move	$25,$2
	lw	$2,108($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,72($sp)
	.set	macro
	.set	reorder

	beqz	$2,$L238
	addiu	$17,1
	lw	$2,96($sp)
	addu	$16,$16,$2
	lw	$2,44($sp)
	cmp	$2,$17
	btnez	$L240
	li	$2,0
	sw	$2,40($sp)
$L238:
	lw	$2,40($sp)
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L241:
	li	$2,0
	sw	$2,40($sp)
	b	$L238
	.end	lfind
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.set	mips16
	.set	nomicromips
	.ent	abs
	.type	abs, @function
abs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	slt	$4,0
	btnez	$L245
$L244:
	jr	$31
$L245:
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$4
	.set	macro
	.set	reorder

	.end	abs
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.set	mips16
	.set	nomicromips
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	move	$16,$4
	b	$L247
$L248:
	addiu	$16,1
$L247:
	lb	$17,0($16)
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	move	$4,$17
	.set	macro
	.set	reorder

	bnez	$2,$L248
	cmpi	$17,43
	bteqz	$L256
	cmpi	$17,45
	btnez	$L250
	li	$5,1
$L249:
	addiu	$4,$16,1
	lb	$3,1($16)
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L251
$L252:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,0($4)
	addiu	$2,-48
	subu	$2,$3,$2
	lb	$3,1($4)
	addiu	$3,-48
	addiu	$4,1
	sltu	$3,10
	btnez	$L252
$L251:
	beqz	$5,$L255
$L246:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L256:
	move	$5,$2
	b	$L249
$L255:
	neg	$2,$2
	b	$L246
$L250:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L255
	move	$5,$2
	move	$4,$16
	b	$L252
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	mips16
	.set	nomicromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	move	$16,$4
	b	$L260
$L261:
	addiu	$16,1
$L260:
	lb	$17,0($16)
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	move	$4,$17
	.set	macro
	.set	reorder

	bnez	$2,$L261
	cmpi	$17,43
	bteqz	$L269
	cmpi	$17,45
	btnez	$L263
	li	$5,1
$L262:
	addiu	$4,$16,1
	lb	$3,1($16)
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L264
$L265:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,0($4)
	addiu	$2,-48
	subu	$2,$3,$2
	lb	$3,1($4)
	addiu	$3,-48
	addiu	$4,1
	sltu	$3,10
	btnez	$L265
$L264:
	beqz	$5,$L268
$L259:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L269:
	move	$5,$2
	b	$L262
$L268:
	neg	$2,$2
	b	$L259
$L263:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L268
	move	$5,$2
	move	$4,$16
	b	$L265
	.end	atol
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.set	mips16
	.set	nomicromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	move	$16,$4
	b	$L273
$L274:
	addiu	$16,1
$L273:
	lb	$17,0($16)
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	move	$4,$17
	.set	macro
	.set	reorder

	bnez	$2,$L274
	cmpi	$17,43
	bteqz	$L275
	cmpi	$17,45
	btnez	$L276
	li	$2,1
$L275:
	addiu	$5,$16,1
	lb	$3,1($16)
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L282
$L280:
	li	$3,0
$L278:
	dsll	$4,$3,2
	daddu	$4,$4,$3
	dsll	$4,$4,1
	lb	$3,0($5)
	addiu	$3,-48
	dsubu	$3,$4,$3
	lb	$4,1($5)
	addiu	$4,-48
	addiu	$5,1
	sltu	$4,10
	btnez	$L278
$L277:
	beqz	$2,$L281
$L272:
	move	$2,$3
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L282:
	li	$3,0
	b	$L277
$L276:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	move	$5,$16
	li	$3,0
	btnez	$L280
$L281:
	li	$2,0
	dsubu	$3,$2,$3
	b	$L272
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.set	mips16
	.set	nomicromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	sw	$4,72($sp)
	sw	$5,80($sp)
	move	$16,$6
	sw	$7,96($sp)
	bnez	$6,$L288
	li	$2,0
	sw	$2,40($sp)
	b	$L285
$L290:
	move	$16,$17
$L287:
	beqz	$16,$L292
$L288:
	srl	$17,$16,1
	lw	$2,96($sp)
	mult	$17,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	sw	$2,40($sp)
	lw	$5,40($sp)
	lw	$3,108($sp)
	move	$25,$3
	lw	$3,108($sp)
	.set	noreorder
	.set	nomacro
	jalr	$3
	lw	$4,72($sp)
	.set	macro
	.set	reorder

	slt	$2,0
	btnez	$L290
	slt	$2,1
	btnez	$L285
	lw	$2,40($sp)
	lw	$3,96($sp)
	addu	$2,$2,$3
	sw	$2,80($sp)
	addiu	$16,-1
	subu	$16,$16,$17
	b	$L287
$L292:
	li	$2,0
	sw	$2,40($sp)
$L285:
	lw	$2,40($sp)
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.set	mips16
	.set	nomicromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	sw	$4,64($sp)
	sw	$5,72($sp)
	sw	$7,88($sp)
	move	$16,$6
	bnez	$6,$L296
	li	$17,0
	b	$L293
$L295:
	sra	$16,$16,1
	beqz	$16,$L299
$L296:
	sra	$2,$16,1
	lw	$3,88($sp)
	mult	$2,$3
	mflo	$17
	lw	$2,72($sp)
	addu	$17,$2,$17
	lw	$6,108($sp)
	move	$5,$17
	lw	$2,100($sp)
	move	$25,$2
	lw	$2,100($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,64($sp)
	.set	macro
	.set	reorder

	beqz	$2,$L293
	slt	$2,1
	btnez	$L295
	lw	$2,88($sp)
	addu	$2,$17,$2
	sw	$2,72($sp)
	addiu	$16,-1
	b	$L295
$L299:
	li	$17,0
$L293:
	move	$2,$17
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.set	mips16
	.set	nomicromips
	.ent	div
	.type	div, @function
div:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	div	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	mfhi	$3
	mflo	$4
	sw	$4,0($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sw	$3,4($2)
	.set	macro
	.set	reorder

	.end	div
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.set	mips16
	.set	nomicromips
	.ent	imaxabs
	.type	imaxabs, @function
imaxabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	slt	$4,0
	btnez	$L303
$L302:
	jr	$31
$L303:
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$2,$4
	.set	macro
	.set	reorder

	.end	imaxabs
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.set	mips16
	.set	nomicromips
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	ddiv	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	mfhi	$3
	mflo	$4
	sd	$4,0($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$3,8($2)
	.set	macro
	.set	reorder

	.end	imaxdiv
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.set	mips16
	.set	nomicromips
	.ent	labs
	.type	labs, @function
labs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	slt	$4,0
	btnez	$L307
$L306:
	jr	$31
$L307:
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$4
	.set	macro
	.set	reorder

	.end	labs
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.set	mips16
	.set	nomicromips
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	div	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	mfhi	$3
	mflo	$4
	sw	$4,0($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sw	$3,4($2)
	.set	macro
	.set	reorder

	.end	ldiv
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.set	mips16
	.set	nomicromips
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	slt	$4,0
	btnez	$L311
$L310:
	jr	$31
$L311:
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$2,$4
	.set	macro
	.set	reorder

	.end	llabs
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.set	mips16
	.set	nomicromips
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	ddiv	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	mfhi	$3
	mflo	$4
	sd	$4,0($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$3,8($2)
	.set	macro
	.set	reorder

	.end	lldiv
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.set	mips16
	.set	nomicromips
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$2,0($4)
	beqz	$2,$L322
$L314:
	lw	$2,0($4)
	xor	$2,$5
	beqz	$2,$L320
	addiu	$4,4
	lw	$2,0($4)
	bnez	$2,$L314
	move	$2,$4
	b	$L316
$L320:
	move	$2,$4
$L316:
	lw	$3,0($2)
	beqz	$3,$L321
$L313:
$L322:
	jr	$31
$L321:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	wcschr
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.set	mips16
	.set	nomicromips
	.ent	wcscmp
	.type	wcscmp, @function
wcscmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L325
$L324:
	lw	$2,0($4)
	beqz	$2,$L325
	lw	$2,0($5)
	beqz	$2,$L325
	addiu	$4,4
	addiu	$5,4
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	beqz	$2,$L324
$L325:
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$2
	btnez	$L328
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L328:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.set	mips16
	.set	nomicromips
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	move	$3,$4
$L330:
	lw	$6,0($5)
	sw	$6,0($3)
	addiu	$3,4
	addiu	$5,4
	bnez	$6,$L330
	jr	$31
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.set	mips16
	.set	nomicromips
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$2,0($4)
	beqz	$2,$L334
	move	$2,$4
$L333:
	addiu	$2,4
	lw	$3,0($2)
	bnez	$3,$L333
$L332:
	subu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$2,2
	.set	macro
	.set	reorder

$L334:
	move	$2,$4
	b	$L332
	.end	wcslen
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.set	mips16
	.set	nomicromips
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$6,$L342
$L336:
	lw	$3,0($4)
	lw	$2,0($5)
	xor	$2,$3
	bnez	$2,$L338
	beqz	$3,$L338
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L336
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L342:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L340:
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L338:
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$2
	bteqz	$L340
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.set	mips16
	.set	nomicromips
	.ent	wmemchr
	.type	wmemchr, @function
wmemchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$6,$L348
$L344:
	lw	$3,0($4)
	xor	$3,$5
	beqz	$3,$L349
	addiu	$6,-1
	addiu	$4,4
	bnez	$6,$L344
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L348:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L349:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.set	mips16
	.set	nomicromips
	.ent	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$6,$L358
$L351:
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L359
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L351
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L358:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L355:
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L359:
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$2
	bteqz	$L355
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.set	mips16
	.set	nomicromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	addiu	$3,$6,-1
	beqz	$6,$L363
	move	$6,$4
$L362:
	lw	$4,0($5)
	sw	$4,0($6)
	addiu	$3,-1
	addiu	$6,4
	addiu	$5,4
	addiu	$7,$3,1
	bnez	$7,$L362
$L363:
	jr	$31
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.set	mips16
	.set	nomicromips
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	move	$2,$4
	cmp	$4,$5
	bteqz	$L373
	addiu	$sp,-8
	sd	$16,0($sp)
	move	$3,$4
	move	$7,$5
	subu	$16,$4,$5
	sll	$4,$6,2
	sltu	$16,$4
	btnez	$L366
	addiu	$5,$6,-1
	beqz	$6,$L365
$L367:
	lw	$4,0($7)
	sw	$4,0($3)
	addiu	$5,-1
	addiu	$3,4
	addiu	$7,4
	addiu	$4,$5,1
	bnez	$4,$L367
	b	$L365
$L366:
	addiu	$3,$6,-1
	beqz	$6,$L365
	sll	$3,$3,2
$L368:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	sw	$6,0($4)
	addiu	$3,-4
	addiu	$4,$3,4
	bnez	$4,$L368
$L365:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L373:
	jr	$31
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.set	mips16
	.set	nomicromips
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	addiu	$3,$6,-1
	beqz	$6,$L377
	move	$6,$4
$L376:
	sw	$5,0($6)
	addiu	$3,-1
	addiu	$6,4
	addiu	$7,$3,1
	bnez	$7,$L376
$L377:
	jr	$31
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.set	mips16
	.set	nomicromips
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,$5
	bteqz	$L379
	addu	$2,$4,$6
	addu	$5,$5,$6
	beqz	$6,$L383
$L381:
	addiu	$2,-1
	addiu	$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
	cmp	$4,$2
	btnez	$L381
	jr	$31
$L379:
	cmp	$4,$5
	bteqz	$L383
	beqz	$6,$L383
	move	$2,$4
	addu	$4,$4,$6
$L382:
	lb	$3,0($2)
	sb	$3,0($5)
	addiu	$2,1
	addiu	$5,1
	cmp	$2,$4
	btnez	$L382
$L383:
	jr	$31
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.set	mips16
	.set	nomicromips
	.ent	rotl64
	.type	rotl64, @function
rotl64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	dsll	$2,$5
	neg	$5,$5
	dsrl	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotl64
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.set	mips16
	.set	nomicromips
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	dsrl	$2,$5
	neg	$5,$5
	dsll	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotr64
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.set	mips16
	.set	nomicromips
	.ent	rotl32
	.type	rotl32, @function
rotl32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	sll	$2,$5
	neg	$5,$5
	srl	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotl32
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.set	mips16
	.set	nomicromips
	.ent	rotr32
	.type	rotr32, @function
rotr32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	srl	$2,$5
	neg	$5,$5
	sll	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotr32
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.set	mips16
	.set	nomicromips
	.ent	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	sll	$2,$5
	neg	$5,$5
	srl	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.set	mips16
	.set	nomicromips
	.ent	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	srl	$2,$5
	neg	$5,$5
	sll	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.set	mips16
	.set	nomicromips
	.ent	rotl16
	.type	rotl16, @function
rotl16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,15
	and	$5,$3
	move	$2,$4
	sll	$2,$5
	neg	$5,$5
	and	$5,$3
	srl	$4,$5
	or	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	zeh	$2
	.set	macro
	.set	reorder

	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.set	mips16
	.set	nomicromips
	.ent	rotr16
	.type	rotr16, @function
rotr16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,15
	and	$5,$3
	move	$2,$4
	srl	$2,$5
	neg	$5,$5
	and	$5,$3
	sll	$4,$5
	or	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	zeh	$2
	.set	macro
	.set	reorder

	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.set	mips16
	.set	nomicromips
	.ent	rotl8
	.type	rotl8, @function
rotl8:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,7
	and	$5,$3
	move	$2,$4
	sll	$2,$5
	neg	$5,$5
	and	$5,$3
	srl	$4,$5
	or	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	zeb	$2
	.set	macro
	.set	reorder

	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.set	mips16
	.set	nomicromips
	.ent	rotr8
	.type	rotr8, @function
rotr8:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,7
	and	$5,$3
	move	$2,$4
	srl	$2,$5
	neg	$5,$5
	and	$5,$3
	sll	$4,$5
	or	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	zeb	$2
	.set	macro
	.set	reorder

	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.set	mips16
	.set	nomicromips
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	srl	$2,$4,8
	sll	$4,$4,8
	zeh	$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.set	mips16
	.set	nomicromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	srl	$5,$4,24
	srl	$3,$4,8
	li	$2,65280
	and	$3,$2
	sll	$2,$4,8
	lw	$6,$L398
	and	$2,$6
	sll	$4,$4,24
	or	$4,$5
	or	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool_bswap_32_398, @object
__pool_bswap_32_398:
	.align	2
$L398:
	.word	16711680
	.type	__pend_bswap_32_398, @object
__pend_bswap_32_398:
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.set	mips16
	.set	nomicromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$2,$4
	dsrl	$2,56
	move	$8,$2
	move	$2,$4
	dsrl	$2,40
	li	$17,65280
	and	$17,$2
	move	$2,$4
	dsrl	$2,24
	ld	$16,$L401
	and	$16,$2
	move	$6,$4
	dsrl	$6,8
	ld	$2,$L402
	and	$6,$2
	dsll	$5,$4,8
	ld	$2,$L403
	and	$5,$2
	dsll	$2,$4,24
	ld	$3,$L404
	and	$3,$2
	dsll	$7,$4,40
	ld	$2,$L405
	and	$7,$2
	dsll	$4,$4,56
	move	$2,$8
	or	$4,$2
	move	$2,$17
	or	$2,$4
	or	$2,$16
	move	$4,$6
	or	$4,$2
	or	$4,$5
	move	$2,$3
	or	$2,$4
	or	$2,$7
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_401, @object
__pool_bswap_64_401:
	.align	3
$L401:
	.dword	16711680
$L402:
	.dword	4278190080
$L403:
	.dword	1095216660480
$L404:
	.dword	280375465082880
$L405:
	.dword	71776119061217280
	.type	__pend_bswap_64_401, @object
__pend_bswap_64_401:
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.set	mips16
	.set	nomicromips
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
$L409:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L410
	addiu	$2,1
	cmpi	$2,32
	btnez	$L409
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L410:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,1
	.set	macro
	.set	reorder

	.end	ffs
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.set	mips16
	.set	nomicromips
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$4,$L414
	li	$2,1
	and	$2,$4
	bnez	$2,$L415
	li	$2,1
$L413:
	sra	$4,$4,1
	addiu	$2,1
	li	$3,1
	and	$3,$4
	beqz	$3,$L413
	jr	$31
$L414:
	move	$2,$4
$L415:
	jr	$31
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	# Stub function for gl_isinff (float)
	.section	.mips16.fn.gl_isinff,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_gl_isinff
	.type	__fn_stub_gl_isinff, @function
__fn_stub_gl_isinff:
	.option	pic0
	la	$25,gl_isinff
	mfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_gl_isinff
	__fn_local_gl_isinff = gl_isinff
	.text
	.set	mips16
	.set	nomicromips
	.ent	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L422
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltsf2)($17)
	lw	$5,$L423
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L420
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$5,$L424
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	move	$2,$24
$L417:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L420:
	li	$2,1
	b	$L417
	.type	__pool_gl_isinff_422, @object
__pool_gl_isinff_422:
	.align	2
$L422:
	.word	__gnu_local_gp
$L423:
	.word	-8388609
$L424:
	.word	2139095039
	.type	__pend_gl_isinff_422, @object
__pend_gl_isinff_422:
	.end	gl_isinff
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	# Stub function for gl_isinfd (double)
	.section	.mips16.fn.gl_isinfd,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_gl_isinfd
	.type	__fn_stub_gl_isinfd, @function
__fn_stub_gl_isinfd:
	.option	pic0
	la	$25,gl_isinfd
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_gl_isinfd
	__fn_local_gl_isinfd = gl_isinfd
	.text
	.set	mips16
	.set	nomicromips
	.ent	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L430
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L431
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L428
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L432
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	move	$2,$24
$L425:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L428:
	li	$2,1
	b	$L425
	.type	__pool_gl_isinfd_430, @object
__pool_gl_isinfd_430:
	.align	2
$L430:
	.word	__gnu_local_gp
	.align	3
$L431:
	.word	-1048577
	.word	-1
$L432:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_430, @object
__pend_gl_isinfd_430:
	.end	gl_isinfd
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	# Stub function for gl_isinfl (double)
	.section	.mips16.fn.gl_isinfl,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_gl_isinfl
	.type	__fn_stub_gl_isinfl, @function
__fn_stub_gl_isinfl:
	.option	pic0
	la	$25,gl_isinfl
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_gl_isinfl
	__fn_local_gl_isinfl = gl_isinfl
	.text
	.set	mips16
	.set	nomicromips
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L438
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L439
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L436
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L440
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	move	$2,$24
$L433:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L436:
	li	$2,1
	b	$L433
	.type	__pool_gl_isinfl_438, @object
__pool_gl_isinfl_438:
	.align	2
$L438:
	.word	__gnu_local_gp
	.align	3
$L439:
	.word	-1048577
	.word	-1
$L440:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_438, @object
__pend_gl_isinfl_438:
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.set	mips16
	.set	nomicromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$16,40($sp)
	lw	$2,$L443
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$4
	move	$2,$28
	lw	$2,%call16(__mips16_floatsidf)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,0($16)
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool__Qp_itoq_443, @object
__pool__Qp_itoq_443:
	.align	2
$L443:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_443, @object
__pend__Qp_itoq_443:
	.end	_Qp_itoq
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	# Stub function for ldexpf (float)
	.section	.mips16.fn.ldexpf,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_ldexpf
	.type	__fn_stub_ldexpf, @function
__fn_stub_ldexpf:
	.option	pic0
	la	$25,ldexpf
	mfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_ldexpf
	__fn_local_ldexpf = ldexpf
	.text
	.set	mips16
	.set	nomicromips
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L454
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sw	$4,72($sp)
	move	$16,$5
	lw	$2,%call16(__mips16_unordsf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L445
	lw	$2,%call16(__mips16_addsf3)($17)
	lw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	lw	$7,%call16(__mips16_nesf2)($17)
	lw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$4,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L445
	slt	$16,0
	btnez	$L453
	lw	$2,$L455
	sw	$2,40($sp)
	b	$L449
$L453:
	lw	$2,$L456
	sw	$2,40($sp)
	b	$L449
$L448:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L445
	lw	$2,%call16(__mips16_mulsf3)($17)
	lw	$4,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
$L449:
	li	$2,1
	and	$2,$16
	beqz	$2,$L448
	lw	$2,%call16(__mips16_mulsf3)($17)
	lw	$5,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sw	$2,72($sp)
	b	$L448
$L445:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	lw	$2,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool_ldexpf_454, @object
__pool_ldexpf_454:
	.align	2
$L454:
	.word	__gnu_local_gp
$L455:
	.word	1073741824
$L456:
	.word	1056964608
	.type	__pend_ldexpf_454, @object
__pend_ldexpf_454:
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	# Stub function for ldexp (double)
	.section	.mips16.fn.ldexp,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_ldexp
	.type	__fn_stub_ldexp, @function
__fn_stub_ldexp:
	.option	pic0
	la	$25,ldexp
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_ldexp
	__fn_local_ldexp = ldexp
	.text
	.set	mips16
	.set	nomicromips
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L467
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$4,72($sp)
	move	$16,$5
	lw	$2,%call16(__mips16_unorddf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L458
	lw	$2,%call16(__mips16_adddf3)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	lw	$7,%call16(__mips16_nedf2)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$4,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L458
	slt	$16,0
	btnez	$L466
	ld	$2,$L468
	sd	$2,40($sp)
	b	$L462
$L466:
	ld	$2,$L469
	sd	$2,40($sp)
	b	$L462
$L461:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L458
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$4,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
$L462:
	li	$2,1
	and	$2,$16
	beqz	$2,$L461
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$5,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
	b	$L461
$L458:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool_ldexp_467, @object
__pool_ldexp_467:
	.align	2
$L467:
	.word	__gnu_local_gp
	.align	3
$L468:
	.word	1073741824
	.word	0
$L469:
	.word	1071644672
	.word	0
	.type	__pend_ldexp_467, @object
__pend_ldexp_467:
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	# Stub function for ldexpl (double)
	.section	.mips16.fn.ldexpl,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_ldexpl
	.type	__fn_stub_ldexpl, @function
__fn_stub_ldexpl:
	.option	pic0
	la	$25,ldexpl
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_ldexpl
	__fn_local_ldexpl = ldexpl
	.text
	.set	mips16
	.set	nomicromips
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L480
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$4,72($sp)
	move	$16,$5
	lw	$2,%call16(__mips16_unorddf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L471
	lw	$2,%call16(__mips16_adddf3)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	lw	$7,%call16(__mips16_nedf2)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$4,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L471
	slt	$16,0
	btnez	$L479
	ld	$2,$L481
	sd	$2,40($sp)
	b	$L475
$L479:
	ld	$2,$L482
	sd	$2,40($sp)
	b	$L475
$L474:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L471
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$4,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
$L475:
	li	$2,1
	and	$2,$16
	beqz	$2,$L474
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$5,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
	b	$L474
$L471:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool_ldexpl_480, @object
__pool_ldexpl_480:
	.align	2
$L480:
	.word	__gnu_local_gp
	.align	3
$L481:
	.word	1073741824
	.word	0
$L482:
	.word	1071644672
	.word	0
	.type	__pend_ldexpl_480, @object
__pend_ldexpl_480:
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.set	mips16
	.set	nomicromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	move	$2,$4
	beqz	$6,$L490
	addiu	$sp,-8
	sd	$16,0($sp)
	move	$7,$5
	move	$3,$4
	addu	$16,$5,$6
$L485:
	lb	$5,0($7)
	lb	$6,0($3)
	xor	$6,$5
	sb	$6,0($3)
	addiu	$7,1
	addiu	$3,1
	cmp	$7,$16
	btnez	$L485
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L490:
	jr	$31
	.end	memxor
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.set	mips16
	.set	nomicromips
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	sw	$4,64($sp)
	move	$17,$5
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	strlen
	.option	pic2
	move	$16,$6
	.set	macro
	.set	reorder

	lw	$3,64($sp)
	addu	$2,$3,$2
	beqz	$16,$L493
$L492:
	lb	$3,0($17)
	sb	$3,0($2)
	beqz	$3,$L495
	addiu	$17,1
	addiu	$2,1
	addiu	$16,-1
	bnez	$16,$L492
$L493:
	li	$3,0
	sb	$3,0($2)
$L495:
	lw	$2,64($sp)
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.set	mips16
	.set	nomicromips
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	beqz	$5,$L503
$L498:
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L504
$L497:
	jr	$31
$L503:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$5
	.set	macro
	.set	reorder

$L504:
	addiu	$2,1
	cmp	$5,$2
	btnez	$L498
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$5
	.set	macro
	.set	reorder

	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.set	mips16
	.set	nomicromips
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	lb	$3,0($4)
	beqz	$3,$L511
$L506:
	move	$6,$5
$L509:
	lb	$7,0($6)
	beqz	$7,$L512
	addiu	$6,1
	lb	$3,0($2)
	xor	$3,$7
	bnez	$3,$L509
$L507:
	jr	$31
$L511:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L512:
	addiu	$2,1
	lb	$3,0($2)
	bnez	$3,$L506
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.set	mips16
	.set	nomicromips
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	b	$L515
$L514:
	addiu	$4,1
	beqz	$3,$L518
$L515:
	lb	$3,0($4)
	cmp	$3,$5
	btnez	$L514
	move	$2,$4
	b	$L514
$L518:
	jr	$31
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.set	mips16
	.set	nomicromips
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	move	$16,$4
	move	$17,$5
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	strlen
	.option	pic2
	move	$4,$5
	.set	macro
	.set	reorder

	sw	$2,44($sp)
	beqz	$2,$L519
	lb	$2,0($17)
	sw	$2,40($sp)
$L521:
	lw	$5,40($sp)
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	strchr
	.option	pic2
	move	$4,$16
	.set	macro
	.set	reorder

	move	$16,$2
	beqz	$2,$L519
	lw	$6,44($sp)
	move	$5,$17
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	strncmp
	.option	pic2
	move	$4,$16
	.set	macro
	.set	reorder

	beqz	$2,$L519
	addiu	$16,1
	b	$L521
$L519:
	move	$2,$16
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.end	strstr
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	# Stub function for copysign (double, double)
	.section	.mips16.fn.copysign,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_copysign
	.type	__fn_stub_copysign, @function
__fn_stub_copysign:
	.option	pic0
	la	$25,copysign
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub_copysign
	__fn_local_copysign = copysign
	.text
	.set	mips16
	.set	nomicromips
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L537
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L538
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L536
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L538
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L529
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L538
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L528
$L529:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	move	$2,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L536:
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L538
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L529
$L528:
	ld	$2,$L539
	xor	$16,$2
	b	$L529
	.type	__pool_copysign_537, @object
__pool_copysign_537:
	.align	2
$L537:
	.word	__gnu_local_gp
	.align	3
$L538:
	.word	0
	.word	0
$L539:
	.dword	-9223372036854775808
	.type	__pend_copysign_537, @object
__pend_copysign_537:
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	mips16
	.set	nomicromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	move	$16,$4
	sw	$6,88($sp)
	sw	$7,96($sp)
	lw	$2,96($sp)
	subu	$17,$5,$2
	addu	$17,$4,$17
	beqz	$2,$L544
	lw	$2,96($sp)
	sltu	$5,$2
	btnez	$L545
	sltu	$17,$4
	btnez	$L546
	lw	$2,88($sp)
	lb	$2,0($2)
	sw	$2,40($sp)
	b	$L543
$L542:
	addiu	$16,1
	sltu	$17,$16
	btnez	$L549
$L543:
	lb	$2,0($16)
	lw	$3,40($sp)
	xor	$2,$3
	bnez	$2,$L542
	lw	$2,96($sp)
	addiu	$6,$2,-1
	lw	$2,88($sp)
	addiu	$5,$2,1
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	memcmp
	.option	pic2
	addiu	$4,$16,1
	.set	macro
	.set	reorder

	bnez	$2,$L542
	move	$2,$16
	b	$L540
$L549:
	li	$2,0
$L540:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L544:
	move	$2,$4
	b	$L540
$L545:
	li	$2,0
	b	$L540
$L546:
	li	$2,0
	b	$L540
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.set	mips16
	.set	nomicromips
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$16,40($sp)
	lw	$2,$L552
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$6
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	addu	$2,$2,$16
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_552, @object
__pool_mempcpy_552:
	.align	2
$L552:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_552, @object
__pend_mempcpy_552:
	.end	mempcpy
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	# Stub function for frexp (double)
	.section	.mips16.fn.frexp,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub_frexp
	.type	__fn_stub_frexp, @function
__fn_stub_frexp:
	.option	pic0
	la	$25,frexp
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub_frexp
	__fn_local_frexp = frexp
	.text
	.set	mips16
	.set	nomicromips
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L577
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,72($sp)
	sw	$5,80($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L578
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L576
	li	$2,0
	sw	$2,40($sp)
$L554:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L579
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L572
	li	$17,0
$L558:
	addiu	$17,1
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,$L580
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L579
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L558
$L559:
	lw	$2,80($sp)
	sw	$17,0($2)
	lw	$2,40($sp)
	beqz	$2,$L563
	ld	$2,$L581
	ld	$3,72($sp)
	xor	$3,$2
	sd	$3,72($sp)
$L563:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L576:
	ld	$2,$L581
	ld	$3,72($sp)
	xor	$3,$2
	sd	$3,72($sp)
	li	$2,1
	sw	$2,40($sp)
	b	$L554
$L572:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L580
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L573
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L578
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L574
	li	$17,0
$L562:
	addiu	$17,-1
	lw	$2,%call16(__mips16_adddf3)($16)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L580
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L562
	b	$L559
$L573:
	li	$17,0
	b	$L559
$L574:
	li	$17,0
	b	$L559
	.type	__pool_frexp_577, @object
__pool_frexp_577:
	.align	2
$L577:
	.word	__gnu_local_gp
	.align	3
$L578:
	.word	0
	.word	0
$L579:
	.word	1072693248
	.word	0
$L580:
	.word	1071644672
	.word	0
$L581:
	.dword	-9223372036854775808
	.type	__pend_frexp_577, @object
__pend_frexp_577:
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.set	mips16
	.set	nomicromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$4,$L585
	li	$2,0
$L584:
	li	$6,1
	and	$6,$4
	li	$3,0
	dsubu	$3,$3,$6
	and	$3,$5
	daddu	$2,$2,$3
	dsll	$5,$5,1
	dsrl	$4,1
	bnez	$4,$L584
	jr	$31
$L585:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.set	mips16
	.set	nomicromips
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	li	$3,1
	bteqz	$L594
	li	$2,32
	li	$3,1
$L587:
	slt	$5,0
	btnez	$L594
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L589
	addiu	$2,-1
	bnez	$2,$L587
$L590:
	bnez	$6,$L598
$L586:
	jr	$31
$L592:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L590
$L593:
	sltu	$4,$5
	btnez	$L592
	subu	$4,$4,$5
	or	$2,$3
	b	$L592
$L589:
	beqz	$3,$L599
$L594:
	li	$2,0
	b	$L593
$L599:
	move	$2,$3
	b	$L590
$L598:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.set	mips16
	.set	nomicromips
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L604
	move	$28,$2
	sw	$2,32($sp)
	sra	$2,$4,31
	cmp	$2,$4
	bteqz	$L602
	move	$2,$24
	sll	$2,$2,8
	dsll	$4,$2,32
	dsrl	$4,32
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	addiu	$2,-33
$L600:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L602:
	li	$2,7
	b	$L600
	.type	__pool___clrsbqi2_604, @object
__pool___clrsbqi2_604:
	.align	2
$L604:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_604, @object
__pend___clrsbqi2_604:
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.set	mips16
	.set	nomicromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L609
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$4
	dsra	$2,63
	xor	$4,$2
	beqz	$4,$L607
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	addiu	$2,-1
$L605:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L607:
	li	$2,63
	b	$L605
	.type	__pool___clrsbdi2_609, @object
__pool___clrsbdi2_609:
	.align	2
$L609:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_609, @object
__pend___clrsbdi2_609:
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.set	mips16
	.set	nomicromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$4,$L613
	li	$2,0
$L612:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	sll	$5,$5,1
	bnez	$4,$L612
	jr	$31
$L613:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.set	mips16
	.set	nomicromips
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	srl	$7,$6,3
	li	$16,8
	neg	$16,$16
	and	$16,$6
	sltu	$4,$5
	bteqz	$L615
$L618:
	beqz	$7,$L617
	move	$2,$5
	move	$3,$4
	sll	$7,$7,3
	addu	$7,$5,$7
$L621:
	ld	$17,0($2)
	sd	$17,0($3)
	addiu	$2,8
	addiu	$3,8
	cmp	$2,$7
	btnez	$L621
$L617:
	sltu	$16,$6
	bteqz	$L614
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L622:
	lb	$3,0($2)
	sb	$3,0($4)
	addiu	$2,1
	addiu	$4,1
	cmp	$2,$5
	btnez	$L622
$L614:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L615:
	addu	$2,$5,$6
	sltu	$2,$4
	btnez	$L618
	addiu	$2,$6,-1
	beqz	$6,$L614
$L619:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	sb	$6,0($3)
	addiu	$2,-1
	addiu	$3,$2,1
	bnez	$3,$L619
	b	$L614
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.set	mips16
	.set	nomicromips
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$16,0($sp)
	srl	$16,$6,1
	sltu	$4,$5
	bteqz	$L625
$L628:
	beqz	$16,$L627
	move	$2,$5
	move	$3,$4
	sll	$16,$16,1
	addu	$16,$5,$16
$L631:
	lh	$7,0($2)
	sh	$7,0($3)
	addiu	$2,2
	addiu	$3,2
	cmp	$2,$16
	btnez	$L631
$L627:
	li	$2,1
	and	$2,$6
	beqz	$2,$L624
	addiu	$6,-1
	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	sb	$2,0($4)
$L624:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L625:
	addu	$2,$5,$6
	sltu	$2,$4
	btnez	$L628
	addiu	$2,$6,-1
	beqz	$6,$L624
$L629:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	sb	$6,0($3)
	addiu	$2,-1
	addiu	$3,$2,1
	bnez	$3,$L629
	b	$L624
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.set	mips16
	.set	nomicromips
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	srl	$7,$6,2
	li	$16,4
	neg	$16,$16
	and	$16,$6
	sltu	$4,$5
	bteqz	$L634
$L637:
	beqz	$7,$L636
	move	$2,$5
	move	$3,$4
	sll	$7,$7,2
	addu	$7,$5,$7
$L640:
	lw	$17,0($2)
	sw	$17,0($3)
	addiu	$2,4
	addiu	$3,4
	cmp	$2,$7
	btnez	$L640
$L636:
	sltu	$16,$6
	bteqz	$L633
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L641:
	lb	$3,0($2)
	sb	$3,0($4)
	addiu	$2,1
	addiu	$4,1
	cmp	$2,$5
	btnez	$L641
$L633:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L634:
	addu	$2,$5,$6
	sltu	$2,$4
	btnez	$L637
	addiu	$2,$6,-1
	beqz	$6,$L633
$L638:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	sb	$6,0($3)
	addiu	$2,-1
	addiu	$3,$2,1
	bnez	$3,$L638
	b	$L633
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.set	mips16
	.set	nomicromips
	.ent	__modi
	.type	__modi, @function
__modi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	div	$0,$4,$5
	bnez	$5,1f
	break	7
1:
	.set	noreorder
	.set	nomacro
	jr	$31
	mfhi	$2
	.set	macro
	.set	reorder

	.end	__modi
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.set	mips16
	.set	nomicromips
	.ent	__uitod
	.type	__uitod, @function
__uitod:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L646
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_floatunsidf)($2)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___uitod_646, @object
__pool___uitod_646:
	.align	2
$L646:
	.word	__gnu_local_gp
	.type	__pend___uitod_646, @object
__pend___uitod_646:
	.end	__uitod
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.set	mips16
	.set	nomicromips
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L649
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_floatunsisf)($2)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___uitof_649, @object
__pool___uitof_649:
	.align	2
$L649:
	.word	__gnu_local_gp
	.type	__pend___uitof_649, @object
__pend___uitof_649:
	.end	__uitof
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.set	mips16
	.set	nomicromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80040000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	move	$3,$18
	sd	$3,40($sp)
	lw	$2,$L652
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$5,%got(__mips16_call_stub_df_0)($2)
	lw	$2,%call16(__floatundidf)($2)
	jalr	$5
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$6,40($sp)
	move	$18,$6
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool___ulltod_652, @object
__pool___ulltod_652:
	.align	2
$L652:
	.word	__gnu_local_gp
	.type	__pend___ulltod_652, @object
__pend___ulltod_652:
	.end	__ulltod
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.set	mips16
	.set	nomicromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80040000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	move	$3,$18
	sd	$3,40($sp)
	lw	$2,$L655
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$5,%got(__mips16_call_stub_sf_0)($2)
	lw	$2,%call16(__floatundisf)($2)
	jalr	$5
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$6,40($sp)
	move	$18,$6
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool___ulltof_655, @object
__pool___ulltof_655:
	.align	2
$L655:
	.word	__gnu_local_gp
	.type	__pend___ulltof_655, @object
__pend___ulltof_655:
	.end	__ulltof
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.set	mips16
	.set	nomicromips
	.ent	__umodi
	.type	__umodi, @function
__umodi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	divu	$0,$4,$5
	bnez	$5,1f
	break	7
1:
	.set	noreorder
	.set	nomacro
	jr	$31
	mfhi	$2
	.set	macro
	.set	reorder

	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.set	mips16
	.set	nomicromips
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
$L659:
	li	$5,15
	subu	$5,$5,$2
	move	$3,$4
	sra	$3,$5
	li	$5,1
	and	$3,$5
	bnez	$3,$L660
	addiu	$2,1
	cmpi	$2,16
	btnez	$L659
$L660:
	jr	$31
	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.set	mips16
	.set	nomicromips
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
$L663:
	move	$3,$4
	sra	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L664
	addiu	$2,1
	cmpi	$2,16
	btnez	$L663
$L664:
	jr	$31
	.end	__ctzhi2
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	# Stub function for __fixunssfsi (float)
	.section	.mips16.fn.__fixunssfsi,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub___fixunssfsi
	.type	__fn_stub___fixunssfsi, @function
__fn_stub___fixunssfsi:
	.option	pic0
	la	$25,__fixunssfsi
	mfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub___fixunssfsi
	__fn_local___fixunssfsi = __fixunssfsi
	.text
	.set	mips16
	.set	nomicromips
	.ent	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L673
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	lw	$2,%call16(__mips16_gesf2)($16)
	lw	$5,$L674
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L672
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L665:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L672:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L674
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	li	$3,32768
	addu	$2,$2,$3
	b	$L665
	.type	__pool___fixunssfsi_673, @object
__pool___fixunssfsi_673:
	.align	2
$L673:
	.word	__gnu_local_gp
$L674:
	.word	1191182336
	.type	__pend___fixunssfsi_673, @object
__pend___fixunssfsi_673:
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.set	mips16
	.set	nomicromips
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	li	$3,0
$L676:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	addu	$2,$2,$5
	addiu	$3,1
	cmpi	$3,16
	btnez	$L676
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.set	mips16
	.set	nomicromips
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	li	$3,0
$L678:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	addu	$2,$2,$5
	addiu	$3,1
	cmpi	$3,16
	btnez	$L678
	jr	$31
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.set	mips16
	.set	nomicromips
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$4,$L682
	li	$2,0
$L681:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	sll	$5,$5,1
	bnez	$4,$L681
	jr	$31
$L682:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.set	mips16
	.set	nomicromips
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$4,$L686
	beqz	$5,$L687
	li	$2,0
$L685:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	addu	$2,$2,$3
	sll	$4,$4,1
	srl	$5,$5,1
	bnez	$5,$L685
	jr	$31
$L686:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L687:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$5
	.set	macro
	.set	reorder

	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.set	mips16
	.set	nomicromips
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	li	$3,1
	bteqz	$L696
	li	$2,32
	li	$3,1
$L689:
	slt	$5,0
	btnez	$L696
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L691
	addiu	$2,-1
	bnez	$2,$L689
$L692:
	bnez	$6,$L700
$L688:
	jr	$31
$L694:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L692
$L695:
	sltu	$4,$5
	btnez	$L694
	subu	$4,$4,$5
	or	$2,$3
	b	$L694
$L691:
	beqz	$3,$L701
$L696:
	li	$2,0
	b	$L695
$L701:
	move	$2,$3
	b	$L692
$L700:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	# Stub function for __mspabi_cmpf (float, float)
	.section	.mips16.fn.__mspabi_cmpf,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub___mspabi_cmpf
	.type	__fn_stub___mspabi_cmpf, @function
__fn_stub___mspabi_cmpf:
	.option	pic0
	la	$25,__mspabi_cmpf
	mfc1	$4,$f12
	mfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub___mspabi_cmpf
	__fn_local___mspabi_cmpf = __mspabi_cmpf
	.text
	.set	mips16
	.set	nomicromips
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L707
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sw	$4,64($sp)
	lw	$2,%call16(__mips16_ltsf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L705
	lw	$17,%call16(__mips16_gtsf2)($17)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$4,64($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	move	$2,$24
$L702:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L705:
	li	$2,1
	neg	$2,$2
	b	$L702
	.type	__pool___mspabi_cmpf_707, @object
__pool___mspabi_cmpf_707:
	.align	2
$L707:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_707, @object
__pend___mspabi_cmpf_707:
	.end	__mspabi_cmpf
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	# Stub function for __mspabi_cmpd (double, double)
	.section	.mips16.fn.__mspabi_cmpd,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub___mspabi_cmpd
	.type	__fn_stub___mspabi_cmpd, @function
__fn_stub___mspabi_cmpd:
	.option	pic0
	la	$25,__mspabi_cmpd
	dmfc1	$4,$f12
	dmfc1	$5,$f13
	jr	$25
	.option	pic2
	.end	__fn_stub___mspabi_cmpd
	__fn_local___mspabi_cmpd = __mspabi_cmpd
	.text
	.set	mips16
	.set	nomicromips
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L713
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$4,64($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L711
	lw	$17,%call16(__mips16_gtdf2)($17)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,64($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	move	$2,$24
$L708:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L711:
	li	$2,1
	neg	$2,$2
	b	$L708
	.type	__pool___mspabi_cmpd_713, @object
__pool___mspabi_cmpd_713:
	.align	2
$L713:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_713, @object
__pend___mspabi_cmpd_713:
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.set	mips16
	.set	nomicromips
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	dmult	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	mflo	$2
	.set	macro
	.set	reorder

	.end	__mspabi_mpysll
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.set	mips16
	.set	nomicromips
	.ent	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	dsll	$4,$4,32
	dsrl	$4,32
	dsll	$5,$5,32
	dsrl	$5,32
	dmult	$4,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	mflo	$2
	.set	macro
	.set	reorder

	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.set	mips16
	.set	nomicromips
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$5,0
	btnez	$L723
	li	$7,0
	beqz	$5,$L724
$L721:
	li	$6,32
	li	$2,0
$L719:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	addu	$2,$2,$3
	sll	$4,$4,1
	sra	$5,$5,1
	beqz	$5,$L718
	addiu	$6,-1
	zeb	$6
	bnez	$6,$L719
$L718:
	beqz	$7,$L725
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L723:
	neg	$5,$5
	li	$7,1
	b	$L721
$L724:
	move	$2,$5
$L725:
	jr	$31
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.set	mips16
	.set	nomicromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$31,40($sp)
	slt	$4,0
	btnez	$L735
	slt	$5,0
	btnez	$L736
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,0
	.set	macro
	.set	reorder

	b	$L726
$L735:
	neg	$4,$4
	slt	$5,0
	btnez	$L737
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,0
	.set	macro
	.set	reorder

$L730:
	neg	$2,$2
$L726:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L736:
	li	$6,0
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	neg	$5,$5
	.set	macro
	.set	reorder

	b	$L730
$L737:
	li	$6,0
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	neg	$5,$5
	.set	macro
	.set	reorder

	b	$L726
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.set	mips16
	.set	nomicromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$31,40($sp)
	slt	$4,0
	btnez	$L744
	slt	$5,0
	btnez	$L745
$L741:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,1
	.set	macro
	.set	reorder

	b	$L738
$L744:
	neg	$4,$4
	slt	$5,0
	btnez	$L746
$L740:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,1
	.set	macro
	.set	reorder

	neg	$2,$2
$L738:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L746:
	neg	$5,$5
	b	$L740
$L745:
	neg	$5,$5
	b	$L741
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.set	mips16
	.set	nomicromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	li	$3,1
	bteqz	$L755
	li	$2,16
	li	$3,1
$L748:
	move	$7,$5
	seh	$7
	slt	$7,0
	btnez	$L755
	sll	$5,$5,1
	zeh	$5
	sll	$3,$3,1
	zeh	$3
	sltu	$5,$4
	bteqz	$L750
	addiu	$2,-1
	bnez	$2,$L748
	li	$2,0
$L751:
	bnez	$6,$L760
$L756:
	jr	$31
$L753:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L751
$L754:
	sltu	$4,$5
	btnez	$L753
	subu	$4,$4,$5
	zeh	$4
	or	$2,$3
	zeh	$2
	b	$L753
$L750:
	move	$2,$3
	beqz	$3,$L751
$L755:
	li	$2,0
	b	$L754
$L760:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.set	mips16
	.set	nomicromips
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	li	$3,1
	bteqz	$L769
	li	$2,32
	li	$3,1
$L762:
	slt	$5,0
	btnez	$L769
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L764
	addiu	$2,-1
	bnez	$2,$L762
$L765:
	bnez	$6,$L773
$L761:
	jr	$31
$L767:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L765
$L768:
	sltu	$4,$5
	btnez	$L767
	subu	$4,$4,$5
	or	$2,$3
	b	$L767
$L764:
	beqz	$3,$L774
$L769:
	li	$2,0
	b	$L768
$L774:
	move	$2,$3
	b	$L765
$L773:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.set	mips16
	.set	nomicromips
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,32
	and	$2,$5
	beqz	$2,$L776
	sll	$4,$4,0
	sll	$4,$5
	dsll	$2,$4,32
	jr	$31
$L776:
	beqz	$5,$L779
	sll	$2,$4,0
	move	$3,$2
	sll	$3,$5
	dsra	$4,32
	sll	$4,$5
	neg	$5,$5
	srl	$2,$5
	or	$2,$4
	dsll	$2,$2,32
	dsll	$3,$3,32
	dsrl	$3,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

$L779:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_781, @object
__pool___ashldi3_781:
	.align	2
$L781:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_781, @object
__pend___ashldi3_781:
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashlti3
	.set	mips16
	.set	nomicromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$sp,40,$31		# vars= 32, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$4,8($sp)
	sd	$5,16($sp)
	li	$2,64
	and	$2,$6
	beqz	$2,$L783
	li	$2,0
	sd	$2,32($sp)
	move	$2,$5
	dsll	$2,$6
	sd	$2,24($sp)
$L784:
	ld	$2,24($sp)
	ld	$5,32($sp)
$L782:
	move	$3,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L783:
	beqz	$6,$L786
	ld	$3,16($sp)
	move	$2,$3
	dsll	$2,$6
	sd	$2,32($sp)
	ld	$2,8($sp)
	dsll	$2,$6
	neg	$6,$6
	dsrl	$3,$6
	or	$2,$3
	sd	$2,24($sp)
	b	$L784
$L786:
	move	$2,$4
	b	$L782
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
	.globl	__ashrdi3
	.set	mips16
	.set	nomicromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,32
	and	$2,$5
	beqz	$2,$L789
	dsra	$4,32
	sll	$4,$4,0
	sra	$2,$4,31
	sra	$4,$5
	dsll	$4,$4,32
	dsrl	$4,32
	dsll	$2,$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

$L789:
	beqz	$5,$L792
	move	$2,$4
	dsra	$2,32
	sll	$2,$2,0
	move	$6,$2
	sra	$6,$5
	neg	$3,$5
	sll	$2,$3
	sll	$4,$4,0
	srl	$4,$5
	or	$2,$4
	dsll	$3,$2,32
	dsrl	$3,32
	dsll	$2,$6,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

$L792:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashrdi3_794, @object
__pool___ashrdi3_794:
	.align	2
$L794:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_794, @object
__pend___ashrdi3_794:
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__ashrti3
	.set	mips16
	.set	nomicromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$sp,40,$31		# vars= 32, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$4,8($sp)
	sd	$5,16($sp)
	li	$2,64
	and	$2,$6
	beqz	$2,$L796
	move	$2,$4
	move	$3,$4
	dsra	$3,63
	sd	$3,24($sp)
	dsra	$2,$6
	sd	$2,32($sp)
$L797:
	ld	$2,24($sp)
	ld	$5,32($sp)
$L795:
	move	$3,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L796:
	beqz	$6,$L799
	ld	$2,8($sp)
	move	$3,$2
	dsra	$3,$6
	sd	$3,24($sp)
	neg	$3,$6
	dsll	$2,$3
	ld	$3,16($sp)
	dsrl	$3,$6
	or	$2,$3
	sd	$2,32($sp)
	b	$L797
$L799:
	move	$2,$4
	b	$L795
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
	.globl	__bswapdi2
	.set	mips16
	.set	nomicromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$2,$4
	dsrl	$2,56
	move	$8,$2
	move	$2,$4
	dsrl	$2,40
	li	$17,65280
	and	$17,$2
	move	$2,$4
	dsrl	$2,24
	ld	$16,$L803
	and	$16,$2
	move	$6,$4
	dsrl	$6,8
	ld	$2,$L804
	and	$6,$2
	dsll	$5,$4,8
	ld	$2,$L805
	and	$5,$2
	dsll	$2,$4,24
	ld	$3,$L806
	and	$3,$2
	dsll	$7,$4,40
	ld	$2,$L807
	and	$7,$2
	dsll	$2,$4,56
	move	$4,$8
	or	$2,$4
	or	$2,$17
	or	$2,$16
	move	$4,$6
	or	$4,$2
	or	$4,$5
	move	$2,$3
	or	$2,$4
	or	$2,$7
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_803, @object
__pool___bswapdi2_803:
	.align	3
$L803:
	.dword	16711680
$L804:
	.dword	4278190080
$L805:
	.dword	1095216660480
$L806:
	.dword	280375465082880
$L807:
	.dword	71776119061217280
	.type	__pend___bswapdi2_803, @object
__pend___bswapdi2_803:
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.set	mips16
	.set	nomicromips
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	srl	$6,$4,24
	srl	$2,$4,8
	li	$3,65280
	and	$3,$2
	sll	$5,$4,8
	lw	$2,$L810
	and	$5,$2
	sll	$2,$4,24
	or	$2,$6
	or	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$5
	.set	macro
	.set	reorder

	.type	__pool___bswapsi2_810, @object
__pool___bswapsi2_810:
	.align	2
$L810:
	.word	16711680
	.type	__pend___bswapsi2_810, @object
__pend___bswapsi2_810:
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.set	mips16
	.set	nomicromips
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$2,$L815
	sltu	$4,$2
	move	$3,$24
	sll	$3,$3,4
	li	$2,16
	subu	$2,$2,$3
	srl	$4,$2
	li	$2,65280
	and	$2,$4
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,3
	li	$5,8
	subu	$5,$5,$2
	srl	$4,$5
	addu	$3,$2,$3
	li	$2,240
	and	$2,$4
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,2
	li	$5,4
	subu	$5,$5,$2
	srl	$4,$5
	addu	$5,$2,$3
	li	$2,12
	and	$2,$4
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,1
	li	$3,2
	subu	$6,$3,$2
	srl	$4,$6
	addu	$2,$2,$5
	move	$5,$4
	and	$5,$3
	subu	$3,$3,$4
	beqz	$5,$L813
	li	$3,0
$L813:
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$3,$2
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_815, @object
__pool___clzsi2_815:
	.align	2
$L815:
	.word	65536
	.type	__pend___clzsi2_815, @object
__pend___clzsi2_815:
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__clzti2
	.set	mips16
	.set	nomicromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$sp,72,$31		# vars= 16, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$16,56($sp)
	lw	$2,$L820
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$4
	move	$6,$5
	sd	$4,40($sp)
	sd	$5,48($sp)
	sltu	$4,1
	move	$16,$24
	addiu	$3,$16,-1
	and	$2,$3
	move	$4,$2
	bnez	$16,$L818
	li	$6,0
$L818:
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	or	$4,$6
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sll	$16,$16,6
	addu	$2,$2,$16
	ld	$7,64($sp)
	ld	$16,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool___clzti2_820, @object
__pool___clzti2_820:
	.align	2
$L820:
	.word	__gnu_local_gp
	.type	__pend___clzti2_820, @object
__pend___clzti2_820:
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.globl	__cmpdi2
	.set	mips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$3,$4
	dsra	$3,32
	sll	$3,$3,0
	move	$2,$5
	dsra	$2,32
	sll	$2,$2,0
	slt	$3,$2
	btnez	$L823
	slt	$2,$3
	btnez	$L824
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L825
	sltu	$5,$4
	btnez	$L826
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L823:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L824:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L825:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L826:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.set	mips16
	.set	nomicromips
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$31,40($sp)
	.option	pic0
	jal	__cmpdi2
	.option	pic2
	addiu	$2,-1
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__cmpti2
	.set	mips16
	.set	nomicromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$sp,40,$31		# vars= 32, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$4,8($sp)
	sd	$5,16($sp)
	sd	$6,24($sp)
	sd	$7,32($sp)
	slt	$4,$6
	btnez	$L831
	slt	$6,$4
	btnez	$L832
	sltu	$5,$7
	btnez	$L833
	sltu	$7,$5
	btnez	$L834
	li	$2,1
	b	$L829
$L831:
	li	$2,0
$L829:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L832:
	li	$2,2
	b	$L829
$L833:
	li	$2,0
	b	$L829
$L834:
	li	$2,2
	b	$L829
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
	.globl	__ctzsi2
	.set	mips16
	.set	nomicromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	zeh	$2
	sltu	$2,1
	move	$3,$24
	sll	$3,$3,4
	srl	$4,$3
	move	$2,$4
	zeb	$2
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,3
	srl	$4,$2
	addu	$3,$2,$3
	li	$2,15
	and	$2,$4
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,2
	srl	$4,$2
	addu	$3,$2,$3
	li	$5,3
	move	$2,$4
	and	$2,$5
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,1
	srl	$4,$2
	and	$4,$5
	addu	$3,$2,$3
	not	$2,$4
	li	$5,1
	and	$2,$5
	srl	$4,$4,1
	li	$5,2
	subu	$4,$5,$4
	neg	$2,$2
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$3
	.set	macro
	.set	reorder

	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__ctzti2
	.set	mips16
	.set	nomicromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$sp,72,$31		# vars= 16, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$16,56($sp)
	lw	$2,$L841
	move	$28,$2
	sw	$2,32($sp)
	move	$3,$5
	sd	$4,40($sp)
	sd	$5,48($sp)
	sltu	$5,1
	move	$16,$24
	bnez	$5,$L838
$L839:
	addiu	$2,$16,-1
	and	$3,$2
	move	$2,$28
	lw	$2,%call16(__ctzdi2)($2)
	or	$4,$3
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sll	$16,$16,6
	addu	$2,$2,$16
	ld	$7,64($sp)
	ld	$16,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L838:
	li	$4,0
	b	$L839
	.type	__pool___ctzti2_841, @object
__pool___ctzti2_841:
	.align	2
$L841:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_841, @object
__pend___ctzti2_841:
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.set	mips16
	.set	nomicromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,64,$31		# vars= 16, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	lw	$2,$L847
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	sd	$4,40($sp)
	sd	$5,48($sp)
	bnez	$5,$L843
	beqz	$4,$L845
	lw	$2,%call16(__ctzdi2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	addiu	$2,65
	b	$L842
$L843:
	lw	$2,%call16(__ctzdi2)($2)
	move	$4,$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	addiu	$2,1
$L842:
	ld	$7,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L845:
	li	$2,0
	b	$L842
	.type	__pool___ffsti2_847, @object
__pool___ffsti2_847:
	.align	2
$L847:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_847, @object
__pend___ffsti2_847:
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.globl	__lshrdi3
	.set	mips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,32
	and	$2,$5
	beqz	$2,$L849
	dsrl	$4,32
	sll	$4,$4,0
	srl	$4,$5
	dsll	$2,$4,32
	dsrl	$2,32
	jr	$31
$L849:
	beqz	$5,$L852
	move	$2,$4
	dsrl	$2,32
	sll	$2,$2,0
	move	$3,$2
	srl	$3,$5
	neg	$6,$5
	sll	$2,$6
	sll	$4,$4,0
	srl	$4,$5
	or	$2,$4
	dsll	$2,$2,32
	dsrl	$2,32
	dsll	$3,$3,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

$L852:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___lshrdi3_854, @object
__pool___lshrdi3_854:
	.align	2
$L854:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_854, @object
__pend___lshrdi3_854:
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__lshrti3
	.set	mips16
	.set	nomicromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$sp,40,$31		# vars= 32, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$4,8($sp)
	sd	$5,16($sp)
	li	$2,64
	and	$2,$6
	beqz	$2,$L856
	li	$2,0
	sd	$2,24($sp)
	move	$2,$4
	dsrl	$2,$6
	sd	$2,32($sp)
$L857:
	ld	$2,24($sp)
	ld	$5,32($sp)
$L855:
	move	$3,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L856:
	beqz	$6,$L859
	ld	$2,8($sp)
	move	$3,$2
	dsrl	$3,$6
	sd	$3,24($sp)
	neg	$3,$6
	dsll	$2,$3
	ld	$3,16($sp)
	dsrl	$3,$6
	or	$2,$3
	sd	$2,32($sp)
	b	$L857
$L859:
	move	$2,$4
	b	$L855
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.globl	__muldsi3
	.set	mips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	li	$17,65535
	move	$2,$4
	and	$2,$17
	move	$8,$2
	move	$2,$5
	and	$2,$17
	move	$3,$8
	mult	$3,$2
	mflo	$3
	srl	$7,$3,8
	srl	$7,$7,8
	and	$3,$17
	srl	$4,$4,8
	srl	$4,$4,8
	mult	$2,$4
	mflo	$6
	addu	$7,$6,$7
	sll	$16,$7,8
	sll	$16,$16,8
	addu	$2,$3,$16
	srl	$7,$7,8
	srl	$7,$7,8
	srl	$16,$16,8
	srl	$16,$16,8
	and	$2,$17
	srl	$5,$5,8
	srl	$5,$5,8
	move	$3,$8
	mult	$3,$5
	mflo	$6
	addu	$6,$6,$16
	sll	$3,$6,8
	sll	$3,$3,8
	addu	$3,$2,$3
	srl	$6,$6,8
	srl	$6,$6,8
	mult	$4,$5
	mflo	$2
	addu	$2,$7,$2
	addu	$6,$6,$2
	dsll	$6,$6,32
	dsll	$2,$3,32
	dsrl	$2,32
	or	$2,$6
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.set	mips16
	.set	nomicromips
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	move	$17,$4
	move	$16,$5
	sw	$4,40($sp)
	sw	$5,44($sp)
	sll	$5,$5,0
	sll	$4,$4,0
	.option	pic0
	jal	__muldsi3
	.option	pic2
	move	$4,$2
	dsra	$4,32
	dsra	$17,32
	lw	$3,44($sp)
	mult	$3,$17
	mflo	$3
	dsra	$16,32
	lw	$5,40($sp)
	mult	$5,$16
	mflo	$5
	addu	$3,$3,$5
	addu	$3,$3,$4
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,32
	or	$2,$3
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__mulddi3
	.set	mips16
	.set	nomicromips
	.ent	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.frame	$sp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$16,24($sp)
	dsll	$16,$4,32
	dsrl	$16,32
	dsll	$3,$5,32
	dsrl	$3,32
	dmult	$16,$3
	mflo	$2
	move	$6,$2
	dsrl	$6,32
	dsrl	$4,32
	dmult	$3,$4
	mflo	$3
	daddu	$6,$3,$6
	move	$7,$6
	dsrl	$7,32
	dsll	$6,$6,32
	dsrl	$6,32
	dsll	$3,$2,32
	dsrl	$3,32
	dsrl	$5,32
	dmult	$16,$5
	mflo	$2
	daddu	$2,$2,$6
	dsll	$6,$2,32
	daddu	$3,$3,$6
	sd	$3,16($sp)
	dsrl	$2,32
	dmult	$4,$5
	mflo	$3
	daddu	$3,$7,$3
	daddu	$2,$2,$3
	sd	$2,8($sp)
	ld	$3,16($sp)
	ld	$2,8($sp)
	ld	$16,24($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,32
	.set	macro
	.set	reorder

	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.globl	__multi3
	.set	mips16
	.set	nomicromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$sp,128,$31		# vars= 64, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-128
	sd	$31,120($sp)
	sd	$17,112($sp)
	sd	$16,104($sp)
	move	$16,$5
	sd	$4,88($sp)
	move	$17,$7
	sd	$6,96($sp)
	move	$5,$7
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__mulddi3
	.option	pic2
	move	$4,$16
	.set	macro
	.set	reorder

	sd	$3,80($sp)
	ld	$3,88($sp)
	dmult	$17,$3
	mflo	$3
	ld	$4,96($sp)
	dmult	$16,$4
	mflo	$4
	daddu	$3,$3,$4
	daddu	$2,$3,$2
	sd	$2,72($sp)
	ld	$3,80($sp)
	ld	$2,72($sp)
	ld	$7,120($sp)
	ld	$17,112($sp)
	ld	$16,104($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,128
	.set	macro
	.set	reorder

	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
	.globl	__negdi2
	.set	mips16
	.set	nomicromips
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$2,$4
	.set	macro
	.set	reorder

	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__negti2
	.set	mips16
	.set	nomicromips
	.ent	__negti2
	.type	__negti2, @function
__negti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,0
	dsubu	$5,$3,$5
	sltu	$3,$5
	move	$2,$24
	dsubu	$3,$3,$4
	dsubu	$2,$3,$2
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$3,$5
	.set	macro
	.set	reorder

	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
	.globl	__paritydi2
	.set	mips16
	.set	nomicromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	dsra	$2,32
	sll	$4,$4,0
	xor	$4,$2
	srl	$3,$4,8
	srl	$3,$3,8
	xor	$3,$4
	srl	$2,$3,8
	xor	$2,$3
	srl	$3,$2,4
	xor	$3,$2
	li	$2,15
	and	$3,$2
	li	$2,27030
	sra	$2,$3
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__parityti2
	.set	mips16
	.set	nomicromips
	.ent	__parityti2
	.type	__parityti2, @function
__parityti2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	xor	$5,$4
	move	$2,$5
	dsra	$2,32
	sll	$5,$5,0
	xor	$5,$2
	srl	$3,$5,8
	srl	$3,$3,8
	xor	$3,$5
	srl	$2,$3,8
	xor	$2,$3
	srl	$3,$2,4
	xor	$3,$2
	li	$2,15
	and	$3,$2
	li	$2,27030
	sra	$2,$3
	li	$3,1
	and	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.globl	__paritysi2
	.set	mips16
	.set	nomicromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	srl	$2,$4,8
	srl	$2,$2,8
	xor	$2,$4
	srl	$4,$2,8
	xor	$4,$2
	srl	$3,$4,4
	xor	$3,$4
	li	$2,15
	and	$3,$2
	li	$2,27030
	sra	$2,$3
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.set	mips16
	.set	nomicromips
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	dsrl	$2,1
	ld	$3,$L877
	and	$2,$3
	dsubu	$4,$4,$2
	move	$2,$4
	dsrl	$2,2
	ld	$3,$L878
	and	$2,$3
	and	$4,$3
	daddu	$2,$2,$4
	move	$3,$2
	dsrl	$3,4
	daddu	$3,$3,$2
	ld	$2,$L879
	and	$3,$2
	sll	$2,$3,0
	dsrl	$3,32
	sll	$3,$3,0
	addu	$2,$2,$3
	srl	$3,$2,8
	srl	$3,$3,8
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	li	$3,127
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___popcountdi2_877, @object
__pool___popcountdi2_877:
	.align	3
$L877:
	.dword	6148914691236517205
$L878:
	.dword	3689348814741910323
$L879:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_877, @object
__pend___popcountdi2_877:
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.set	mips16
	.set	nomicromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	srl	$2,$4,1
	lw	$3,$L882
	and	$2,$3
	subu	$4,$4,$2
	srl	$3,$4,2
	lw	$2,$L883
	and	$3,$2
	and	$4,$2
	addu	$3,$3,$4
	srl	$2,$3,4
	addu	$2,$2,$3
	lw	$3,$L884
	and	$2,$3
	srl	$3,$2,8
	srl	$3,$3,8
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	li	$3,63
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___popcountsi2_882, @object
__pool___popcountsi2_882:
	.align	2
$L882:
	.word	1431655765
$L883:
	.word	858993459
$L884:
	.word	252645135
	.type	__pend___popcountsi2_882, @object
__pend___popcountsi2_882:
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.set	mips16
	.set	nomicromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	dsll	$2,$4,63
	move	$3,$5
	dsrl	$3,1
	or	$2,$3
	move	$3,$4
	dsrl	$3,1
	ld	$6,$L887
	and	$3,$6
	and	$2,$6
	dsubu	$2,$5,$2
	sltu	$5,$2
	move	$5,$24
	dsubu	$4,$4,$3
	dsubu	$4,$4,$5
	dsll	$3,$4,62
	move	$5,$2
	dsrl	$5,2
	or	$3,$5
	move	$5,$4
	dsrl	$5,2
	ld	$6,$L888
	and	$5,$6
	and	$3,$6
	and	$4,$6
	and	$2,$6
	daddu	$2,$3,$2
	sltu	$2,$3
	move	$3,$24
	daddu	$4,$5,$4
	daddu	$4,$3,$4
	dsll	$3,$4,60
	move	$5,$2
	dsrl	$5,4
	or	$3,$5
	move	$5,$4
	dsrl	$5,4
	daddu	$2,$3,$2
	sltu	$2,$3
	move	$3,$24
	daddu	$5,$5,$4
	daddu	$3,$3,$5
	ld	$4,$L889
	and	$3,$4
	and	$2,$4
	daddu	$2,$2,$3
	sll	$3,$2,0
	dsrl	$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	srl	$3,$2,8
	srl	$3,$3,8
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	zeb	$2
	.set	macro
	.set	reorder

	.type	__pool___popcountti2_887, @object
__pool___popcountti2_887:
	.align	3
$L887:
	.dword	6148914691236517205
$L888:
	.dword	3689348814741910323
$L889:
	.dword	1085102592571150095
	.type	__pend___popcountti2_887, @object
__pend___popcountti2_887:
	.end	__popcountti2
	.size	__popcountti2, .-__popcountti2
	.align	2
	.globl	__powidf2
	# Stub function for __powidf2 (double)
	.section	.mips16.fn.__powidf2,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub___powidf2
	.type	__fn_stub___powidf2, @function
__fn_stub___powidf2:
	.option	pic0
	la	$25,__powidf2
	dmfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub___powidf2
	__fn_local___powidf2 = __powidf2
	.text
	.set	mips16
	.set	nomicromips
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L897
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,72($sp)
	sw	$5,80($sp)
	lw	$17,80($sp)
	ld	$2,$L898
	sd	$2,40($sp)
	b	$L893
$L891:
	srl	$2,$17,31
	addu	$17,$2,$17
	sra	$17,$17,1
	beqz	$17,$L892
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
$L893:
	li	$2,1
	and	$2,$17
	beqz	$2,$L891
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
	b	$L891
$L892:
	lw	$2,80($sp)
	slt	$2,0
	btnez	$L896
$L890:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L896:
	lw	$2,%call16(__mips16_divdf3)($16)
	ld	$4,$L898
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
	b	$L890
	.type	__pool___powidf2_897, @object
__pool___powidf2_897:
	.align	2
$L897:
	.word	__gnu_local_gp
	.align	3
$L898:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_897, @object
__pend___powidf2_897:
	.end	__powidf2
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	# Stub function for __powisf2 (float)
	.section	.mips16.fn.__powisf2,"ax",@progbits
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	__fn_stub___powisf2
	.type	__fn_stub___powisf2, @function
__fn_stub___powisf2:
	.option	pic0
	la	$25,__powisf2
	mfc1	$4,$f12
	jr	$25
	.option	pic2
	.end	__fn_stub___powisf2
	__fn_local___powisf2 = __powisf2
	.text
	.set	mips16
	.set	nomicromips
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lw	$2,$L906
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,72($sp)
	sw	$5,80($sp)
	lw	$17,80($sp)
	lw	$2,$L907
	sw	$2,40($sp)
	b	$L902
$L900:
	srl	$2,$17,31
	addu	$17,$2,$17
	sra	$17,$17,1
	beqz	$17,$L901
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sw	$2,72($sp)
$L902:
	li	$2,1
	and	$2,$17
	beqz	$2,$L900
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
	b	$L900
$L901:
	lw	$2,80($sp)
	slt	$2,0
	btnez	$L905
$L899:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	lw	$2,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L905:
	lw	$2,%call16(__mips16_divsf3)($16)
	lw	$4,$L907
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
	b	$L899
	.type	__pool___powisf2_906, @object
__pool___powisf2_906:
	.align	2
$L906:
	.word	__gnu_local_gp
$L907:
	.word	1065353216
	.type	__pend___powisf2_906, @object
__pend___powisf2_906:
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.set	mips16
	.set	nomicromips
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$3,$4
	dsrl	$3,32
	sll	$3,$3,0
	move	$2,$5
	dsrl	$2,32
	sll	$2,$2,0
	sltu	$3,$2
	btnez	$L910
	sltu	$2,$3
	btnez	$L911
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L912
	sltu	$5,$4
	btnez	$L913
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L910:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L911:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L912:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L913:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.set	mips16
	.set	nomicromips
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$31,40($sp)
	.option	pic0
	jal	__ucmpdi2
	.option	pic2
	addiu	$2,-1
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.globl	__ucmpti2
	.set	mips16
	.set	nomicromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$sp,40,$31		# vars= 32, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$4,8($sp)
	sd	$5,16($sp)
	sd	$6,24($sp)
	sd	$7,32($sp)
	sltu	$4,$6
	btnez	$L918
	sltu	$6,$4
	btnez	$L919
	sltu	$5,$7
	btnez	$L920
	sltu	$7,$5
	btnez	$L921
	li	$2,1
	b	$L916
$L918:
	li	$2,0
$L916:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L919:
	li	$2,2
	b	$L916
$L920:
	li	$2,0
	b	$L916
$L921:
	li	$2,2
	b	$L916
	.end	__ucmpti2
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.globl	__mips16_divsf3
	.globl	__mips16_divdf3
	.globl	__ctzdi2
	.globl	__mips16_fix_truncsfsi
	.globl	__mips16_gesf2
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__mips16_floatunsisf
	.globl	__mips16_floatunsidf
	.globl	__clzdi2
	.globl	__mips16_gedf2
	.globl	__mips16_muldf3
	.globl	__mips16_nedf2
	.globl	__mips16_adddf3
	.globl	__mips16_mulsf3
	.globl	__mips16_nesf2
	.globl	__mips16_addsf3
	.globl	__mips16_floatsidf
	.globl	__mips16_ltsf2
	.globl	__mips16_ltdf2
	.globl	__mips16_subsf3
	.globl	__mips16_gtsf2
	.globl	__mips16_unordsf2
	.globl	__mips16_subdf3
	.globl	__mips16_gtdf2
	.globl	__mips16_unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
