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
	bteqz	$L4
	addu	$3,$5,$6
	addu	$6,$4,$6
	b	$L5
$L6:
	addiu	$3,-1
	addiu	$6,-1
	lb	$7,0($3)
	sb	$7,0($6)
$L5:
	cmp	$3,$5
	btnez	$L6
	jr	$31
$L4:
	cmp	$4,$5
	bteqz	$L10
	move	$3,$4
	addu	$6,$4,$6
	b	$L8
$L9:
	lb	$4,0($5)
	sb	$4,0($3)
	addiu	$3,1
	addiu	$5,1
$L8:
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
	b	$L13
$L15:
	addiu	$7,-1
	addiu	$5,1
	addiu	$4,1
$L13:
	beqz	$7,$L14
	lbu	$3,0($5)
	sb	$3,0($4)
	xor	$3,$6
	bnez	$3,$L15
$L14:
	beqz	$7,$L17
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,$4,1
	.set	macro
	.set	reorder

$L17:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	b	$L19
$L21:
	addiu	$4,1
	addiu	$6,-1
$L19:
	beqz	$6,$L20
	lbu	$3,0($4)
	xor	$3,$5
	bnez	$3,$L21
$L20:
	beqz	$6,$L23
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L23:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	b	$L25
$L27:
	addiu	$6,-1
	addiu	$4,1
	addiu	$5,1
$L25:
	beqz	$6,$L26
	lbu	$2,0($4)
	lbu	$3,0($5)
	xor	$2,$3
	beqz	$2,$L27
$L26:
	beqz	$6,$L29
	lbu	$2,0($4)
	lbu	$3,0($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L29:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	move	$3,$4
	addu	$6,$4,$6
	b	$L31
$L32:
	lbu	$7,0($5)
	sb	$7,0($3)
	addiu	$3,1
	addiu	$5,1
$L31:
	cmp	$3,$6
	btnez	$L32
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
	b	$L34
$L36:
	addu	$3,$4,$6
	lbu	$3,0($3)
	addiu	$7,$6,-1
	xor	$3,$5
	bnez	$3,$L37
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$4,$6
	.set	macro
	.set	reorder

$L37:
	move	$6,$7
$L34:
	addiu	$3,$6,1
	bnez	$3,$L36
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

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
	addu	$6,$4,$6
	move	$3,$4
	b	$L39
$L40:
	sb	$5,0($3)
	addiu	$3,1
$L39:
	cmp	$3,$6
	btnez	$L40
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
	b	$L42
$L43:
	addiu	$5,1
	addiu	$2,1
$L42:
	lb	$3,0($5)
	sb	$3,0($2)
	bnez	$3,$L43
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
	move	$2,$4
	zeb	$5
	b	$L45
$L47:
	addiu	$2,1
$L45:
	lb	$3,0($2)
	beqz	$3,$L48
	lbu	$3,0($2)
	xor	$3,$5
	bnez	$3,$L47
$L48:
	jr	$31
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
$L51:
	lb	$2,0($4)
	xor	$2,$5
	beqz	$2,$L52
	addiu	$4,1
	lb	$2,-1($4)
	bnez	$2,$L51
	jr	$31
$L52:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

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
	b	$L54
$L56:
	addiu	$4,1
	addiu	$5,1
$L54:
	lb	$2,0($4)
	lb	$3,0($5)
	xor	$2,$3
	bnez	$2,$L55
	lb	$2,0($4)
	bnez	$2,$L56
$L55:
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
	move	$2,$4
	b	$L58
$L59:
	addiu	$2,1
$L58:
	lb	$5,0($2)
	bnez	$5,$L59
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$4
	.set	macro
	.set	reorder

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
	beqz	$6,$L65
	addiu	$6,-1
	addu	$3,$4,$6
	b	$L62
$L64:
	addiu	$4,1
	addiu	$5,1
$L62:
	lbu	$2,0($4)
	beqz	$2,$L63
	lbu	$2,0($5)
	beqz	$2,$L63
	cmp	$4,$3
	bteqz	$L63
	lbu	$2,0($4)
	lbu	$6,0($5)
	xor	$2,$6
	beqz	$2,$L64
$L63:
	lbu	$2,0($4)
	lbu	$3,0($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L65:
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
	move	$2,$4
	b	$L67
$L68:
	lb	$3,1($2)
	sb	$3,0($5)
	lb	$3,0($2)
	sb	$3,1($5)
	addiu	$5,2
	addiu	$2,2
$L67:
	addu	$3,$4,$6
	subu	$3,$3,$2
	slt	$3,2
	bteqz	$L68
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
	bteqz	$L73
	li	$2,9
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L73:
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
	btnez	$L77
	li	$2,127
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L77:
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
	bteqz	$L85
	addiu	$4,-9
	sltu	$4,5
	bteqz	$L86
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L85:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L86:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	btnez	$L90
	addiu	$2,$4,-8
	addiu	$2,-119
	sltu	$2,33
	btnez	$L91
	addiu	$2,$4,-8232
	sltu	$2,2
	btnez	$L92
	li	$2,65529
	neg	$2,$2
	addu	$4,$4,$2
	sltu	$4,3
	bteqz	$L93
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L90:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L91:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L92:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L93:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	bteqz	$L96
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

$L96:
	sltu	$4,8232
	btnez	$L98
	addiu	$3,$4,-8234
	li	$2,47062
	sltu	$3,$2
	btnez	$L99
	li	$2,57344
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$2,8185
	btnez	$L100
	li	$2,65532
	neg	$2,$2
	addu	$2,$4,$2
	lw	$3,$L104
	sltu	$3,$2
	btnez	$L101
	li	$2,65534
	and	$4,$2
	cmp	$4,$2
	bteqz	$L102
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L98:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L99:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L100:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L101:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L102:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.type	__pool_iswprint_103, @object
__pool_iswprint_103:
	.align	2
$L103:
	.word	__gnu_local_gp
$L104:
	.word	1048579
	.type	__pend_iswprint_103, @object
__pend_iswprint_103:
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
	btnez	$L107
	li	$2,32
	or	$4,$2
	addiu	$4,-97
	sltu	$4,6
	bteqz	$L108
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L107:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L108:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	lw	$2,$L118
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
	bnez	$2,$L113
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
	bnez	$2,$L114
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
	btnez	$L117
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
	b	$L111
$L113:
	move	$2,$16
	b	$L111
$L114:
	ld	$2,72($sp)
	b	$L111
$L117:
	ld	$2,$L119
$L111:
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

	.type	__pool_fdim_118, @object
__pool_fdim_118:
	.align	2
$L118:
	.word	__gnu_local_gp
	.align	3
$L119:
	.word	0
	.word	0
	.type	__pend_fdim_118, @object
__pend_fdim_118:
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
	lw	$2,$L128
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
	bnez	$2,$L123
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
	bnez	$2,$L124
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
	btnez	$L127
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
	b	$L121
$L123:
	move	$2,$16
	b	$L121
$L124:
	lw	$2,72($sp)
	b	$L121
$L127:
	lw	$2,$L129
$L121:
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

	.type	__pool_fdimf_128, @object
__pool_fdimf_128:
	.align	2
$L128:
	.word	__gnu_local_gp
$L129:
	.word	0
	.type	__pend_fdimf_128, @object
__pend_fdimf_128:
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L140
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
	bnez	$2,$L134
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
	bnez	$2,$L135
	move	$2,$16
	dsrl	$2,63
	ld	$3,72($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L132
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L136
	ld	$2,72($sp)
	b	$L131
$L132:
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L139
	ld	$2,72($sp)
	b	$L131
$L134:
	ld	$2,72($sp)
	b	$L131
$L135:
	move	$2,$16
	b	$L131
$L136:
	move	$2,$16
	b	$L131
$L139:
	move	$2,$16
$L131:
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

	.type	__pool_fmax_140, @object
__pool_fmax_140:
	.align	2
$L140:
	.word	__gnu_local_gp
	.type	__pend_fmax_140, @object
__pend_fmax_140:
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L151
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
	bnez	$2,$L145
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
	bnez	$2,$L146
	lw	$3,72($sp)
	xor	$3,$16
	lw	$2,$L152
	and	$2,$3
	beqz	$2,$L143
	lw	$2,$L152
	and	$2,$16
	beqz	$2,$L147
	lw	$2,72($sp)
	b	$L142
$L143:
	lw	$17,%call16(__mips16_ltsf2)($17)
	lw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L150
	lw	$2,72($sp)
	b	$L142
$L145:
	lw	$2,72($sp)
	b	$L142
$L146:
	move	$2,$16
	b	$L142
$L147:
	move	$2,$16
	b	$L142
$L150:
	move	$2,$16
$L142:
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

	.type	__pool_fmaxf_151, @object
__pool_fmaxf_151:
	.align	2
$L151:
	.word	__gnu_local_gp
$L152:
	.word	-2147483648
	.type	__pend_fmaxf_151, @object
__pend_fmaxf_151:
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L163
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
	bnez	$2,$L157
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
	bnez	$2,$L158
	move	$2,$16
	dsrl	$2,63
	ld	$3,72($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L155
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L159
	ld	$2,72($sp)
	b	$L154
$L155:
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L162
	ld	$2,72($sp)
	b	$L154
$L157:
	ld	$2,72($sp)
	b	$L154
$L158:
	move	$2,$16
	b	$L154
$L159:
	move	$2,$16
	b	$L154
$L162:
	move	$2,$16
$L154:
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

	.type	__pool_fmaxl_163, @object
__pool_fmaxl_163:
	.align	2
$L163:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_163, @object
__pend_fmaxl_163:
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L174
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
	bnez	$2,$L168
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
	bnez	$2,$L169
	move	$2,$16
	dsrl	$2,63
	ld	$3,72($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L166
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L170
	move	$2,$16
	b	$L165
$L166:
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L173
	move	$2,$16
	b	$L165
$L168:
	ld	$2,72($sp)
	b	$L165
$L169:
	move	$2,$16
	b	$L165
$L170:
	ld	$2,72($sp)
	b	$L165
$L173:
	ld	$2,72($sp)
$L165:
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

	.type	__pool_fmin_174, @object
__pool_fmin_174:
	.align	2
$L174:
	.word	__gnu_local_gp
	.type	__pend_fmin_174, @object
__pend_fmin_174:
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L185
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
	bnez	$2,$L179
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
	bnez	$2,$L180
	lw	$3,72($sp)
	xor	$3,$16
	lw	$2,$L186
	and	$2,$3
	beqz	$2,$L177
	lw	$2,$L186
	and	$2,$16
	beqz	$2,$L181
	move	$2,$16
	b	$L176
$L177:
	lw	$17,%call16(__mips16_ltsf2)($17)
	lw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L184
	move	$2,$16
	b	$L176
$L179:
	lw	$2,72($sp)
	b	$L176
$L180:
	move	$2,$16
	b	$L176
$L181:
	lw	$2,72($sp)
	b	$L176
$L184:
	lw	$2,72($sp)
$L176:
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

	.type	__pool_fminf_185, @object
__pool_fminf_185:
	.align	2
$L185:
	.word	__gnu_local_gp
$L186:
	.word	-2147483648
	.type	__pend_fminf_185, @object
__pend_fminf_185:
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L197
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
	bnez	$2,$L191
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
	bnez	$2,$L192
	move	$2,$16
	dsrl	$2,63
	ld	$3,72($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L189
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L193
	move	$2,$16
	b	$L188
$L189:
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L196
	move	$2,$16
	b	$L188
$L191:
	ld	$2,72($sp)
	b	$L188
$L192:
	move	$2,$16
	b	$L188
$L193:
	ld	$2,72($sp)
	b	$L188
$L196:
	ld	$2,72($sp)
$L188:
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

	.type	__pool_fminl_197, @object
__pool_fminl_197:
	.align	2
$L197:
	.word	__gnu_local_gp
	.type	__pend_fminl_197, @object
__pend_fminl_197:
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
	lw	$5,$L201
	b	$L199
$L200:
	li	$3,63
	and	$3,$4
	lw	$2,$L202
	addu	$2,$2,$3
	lb	$2,0($2)
	sb	$2,0($5)
	addiu	$5,1
	srl	$4,$4,6
$L199:
	bnez	$4,$L200
	li	$2,0
	sb	$2,0($5)
	lw	$2,$L201
	jr	$31
	.type	__pool_l64a_201, @object
__pool_l64a_201:
	.align	2
$L201:
	.word	s.0
$L202:
	.word	digits
	.type	__pend_l64a_201, @object
__pend_l64a_201:
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
	lw	$2,$L204
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.type	__pool_srand_204, @object
__pool_srand_204:
	.align	2
$L204:
	.word	seed
	.type	__pend_srand_204, @object
__pend_srand_204:
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
	lw	$3,$L206
	ld	$2,$L207
	ld	$4,0($3)
	dmult	$4,$2
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_206, @object
__pool_rand_206:
	.align	2
$L206:
	.word	seed
	.align	3
$L207:
	.dword	6364136223846793005
	.type	__pend_rand_206, @object
__pend_rand_206:
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
	bnez	$5,$L209
	li	$2,0
	sw	$2,4($4)
	.set	noreorder
	.set	nomacro
	jr	$31
	sw	$2,0($4)
	.set	macro
	.set	reorder

$L209:
	lw	$2,0($5)
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	beqz	$2,$L211
	lw	$2,0($4)
	sw	$4,4($2)
$L211:
	jr	$31
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
	beqz	$2,$L213
	lw	$2,0($4)
	lw	$3,4($4)
	sw	$3,4($2)
$L213:
	lw	$2,4($4)
	beqz	$2,$L215
	lw	$2,4($4)
	lw	$3,0($4)
	sw	$3,0($2)
$L215:
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
	lw	$2,$L221
	move	$28,$2
	sw	$2,32($sp)
	sw	$4,72($sp)
	sw	$5,80($sp)
	sw	$6,88($sp)
	sw	$7,96($sp)
	lw	$2,88($sp)
	lw	$2,0($2)
	sw	$2,40($sp)
	lw	$17,80($sp)
	li	$16,0
	b	$L217
$L220:
	move	$5,$17
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
	lw	$3,96($sp)
	addu	$17,$17,$3
	bnez	$2,$L218
	lw	$2,96($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	b	$L219
$L218:
	addiu	$16,1
$L217:
	lw	$2,40($sp)
	cmp	$16,$2
	btnez	$L220
	lw	$3,40($sp)
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
$L219:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool_lsearch_221, @object
__pool_lsearch_221:
	.align	2
$L221:
	.word	__gnu_local_gp
	.type	__pend_lsearch_221, @object
__pend_lsearch_221:
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
	sw	$5,80($sp)
	sw	$7,96($sp)
	lw	$2,0($6)
	sw	$2,40($sp)
	lw	$17,80($sp)
	li	$16,0
	b	$L223
$L226:
	move	$5,$17
	lw	$2,108($sp)
	move	$25,$2
	lw	$2,108($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$3,96($sp)
	addu	$17,$17,$3
	bnez	$2,$L224
	lw	$2,96($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	b	$L225
$L224:
	addiu	$16,1
$L223:
	lw	$2,40($sp)
	cmp	$16,$2
	btnez	$L226
	li	$2,0
$L225:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

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
	bteqz	$L229
	neg	$2,$4
$L229:
	jr	$31
	.end	abs
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.set	mips16
	.set	nomicromips
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$16,40($sp)
	move	$16,$4
	b	$L231
$L232:
	addiu	$16,1
$L231:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L232
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L238
	cmpi	$2,45
	btnez	$L239
	li	$5,1
	b	$L233
$L238:
	li	$5,0
$L233:
	addiu	$16,1
	b	$L234
$L239:
	li	$5,0
$L234:
	li	$2,0
	b	$L235
$L236:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	subu	$2,$3,$2
	addiu	$16,1
$L235:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L236
	bnez	$5,$L237
	neg	$2,$2
$L237:
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	mips16
	.set	nomicromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$16,40($sp)
	move	$16,$4
	b	$L242
$L243:
	addiu	$16,1
$L242:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L243
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L249
	cmpi	$2,45
	btnez	$L250
	li	$5,1
	b	$L244
$L249:
	li	$5,0
$L244:
	addiu	$16,1
	b	$L245
$L250:
	li	$5,0
$L245:
	li	$2,0
	b	$L246
$L247:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	subu	$2,$3,$2
	addiu	$16,1
$L246:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L247
	bnez	$5,$L248
	neg	$2,$2
$L248:
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.end	atol
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.set	mips16
	.set	nomicromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$16,40($sp)
	move	$16,$4
	b	$L253
$L254:
	addiu	$16,1
$L253:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L254
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L260
	cmpi	$2,45
	btnez	$L261
	li	$5,1
	b	$L255
$L260:
	li	$5,0
$L255:
	addiu	$16,1
	b	$L256
$L261:
	li	$5,0
$L256:
	li	$2,0
	b	$L257
$L258:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	dsubu	$2,$3,$2
	addiu	$16,1
$L257:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L258
	bnez	$5,$L259
	li	$3,0
	dsubu	$2,$3,$2
$L259:
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.set	mips16
	.set	nomicromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	sw	$4,64($sp)
	sw	$5,72($sp)
	move	$16,$6
	sw	$7,88($sp)
	b	$L264
$L268:
	srl	$2,$16,1
	lw	$3,88($sp)
	mult	$2,$3
	mflo	$17
	lw	$2,72($sp)
	addu	$17,$2,$17
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

	slt	$2,0
	bteqz	$L265
	srl	$16,$16,1
	b	$L264
$L265:
	slt	$2,1
	btnez	$L269
	lw	$2,88($sp)
	addu	$2,$17,$2
	sw	$2,72($sp)
	srl	$2,$16,1
	addiu	$16,-1
	subu	$16,$16,$2
$L264:
	bnez	$16,$L268
	li	$2,0
	b	$L267
$L269:
	move	$2,$17
$L267:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
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
	.frame	$sp,72,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	sw	$4,72($sp)
	sw	$7,96($sp)
	move	$16,$6
	sw	$5,40($sp)
	b	$L271
$L274:
	sra	$2,$16,1
	lw	$3,96($sp)
	mult	$2,$3
	mflo	$17
	lw	$2,40($sp)
	addu	$17,$2,$17
	lw	$6,116($sp)
	move	$5,$17
	lw	$2,108($sp)
	move	$25,$2
	lw	$2,108($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,72($sp)
	.set	macro
	.set	reorder

	beqz	$2,$L275
	slt	$2,1
	btnez	$L273
	lw	$2,96($sp)
	addu	$2,$17,$2
	sw	$2,40($sp)
	addiu	$16,-1
$L273:
	sra	$16,$16,1
$L271:
	bnez	$16,$L274
	li	$2,0
	b	$L272
$L275:
	move	$2,$17
$L272:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
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
	bteqz	$L279
	li	$2,0
	dsubu	$2,$2,$4
$L279:
	jr	$31
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
	bteqz	$L283
	neg	$2,$4
$L283:
	jr	$31
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
	bteqz	$L287
	li	$2,0
	dsubu	$2,$2,$4
$L287:
	jr	$31
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
	b	$L290
$L292:
	addiu	$4,4
$L290:
	lw	$2,0($4)
	beqz	$2,$L291
	lw	$2,0($4)
	xor	$2,$5
	bnez	$2,$L292
$L291:
	lw	$2,0($4)
	beqz	$2,$L294
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L294:
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
	b	$L296
$L298:
	addiu	$4,4
	addiu	$5,4
$L296:
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L297
	lw	$2,0($4)
	beqz	$2,$L297
	lw	$2,0($5)
	bnez	$2,$L298
$L297:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L300
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L300:
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
$L302:
	lw	$6,0($5)
	sw	$6,0($3)
	addiu	$3,4
	addiu	$5,4
	bnez	$6,$L302
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
	move	$2,$4
	b	$L304
$L305:
	addiu	$2,4
$L304:
	lw	$3,0($2)
	bnez	$3,$L305
	subu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$2,2
	.set	macro
	.set	reorder

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
	b	$L307
$L309:
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
$L307:
	beqz	$6,$L308
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L308
	lw	$2,0($4)
	beqz	$2,$L308
	lw	$2,0($5)
	bnez	$2,$L309
$L308:
	beqz	$6,$L311
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L312
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L311:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L312:
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
	b	$L314
$L316:
	addiu	$6,-1
	addiu	$4,4
$L314:
	beqz	$6,$L315
	lw	$3,0($4)
	xor	$3,$5
	bnez	$3,$L316
$L315:
	beqz	$6,$L318
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L318:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	b	$L320
$L322:
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
$L320:
	beqz	$6,$L321
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	beqz	$2,$L322
$L321:
	beqz	$6,$L324
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L325
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L324:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L325:
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
	move	$3,$4
	b	$L327
$L328:
	lw	$4,0($5)
	sw	$4,0($3)
	addiu	$3,4
	addiu	$5,4
$L327:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L328
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	cmp	$4,$5
	bteqz	$L336
	subu	$4,$4,$5
	sll	$3,$6,2
	sltu	$4,$3
	btnez	$L331
	move	$3,$2
	b	$L332
$L331:
	sll	$6,$6,2
	addu	$5,$5,$6
	addu	$6,$2,$6
	addiu	$4,$2,-4
	b	$L333
$L334:
	lw	$3,0($5)
	sw	$3,0($6)
$L333:
	addiu	$5,-4
	addiu	$6,-4
	cmp	$6,$4
	btnez	$L334
	jr	$31
$L335:
	lw	$4,0($5)
	sw	$4,0($3)
	addiu	$3,4
	addiu	$5,4
$L332:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L335
$L336:
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
	move	$3,$4
	b	$L339
$L340:
	sw	$5,0($3)
	addiu	$3,4
$L339:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L340
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
	bteqz	$L342
	addu	$2,$4,$6
	addu	$5,$5,$6
	b	$L343
$L344:
	addiu	$2,-1
	addiu	$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
$L343:
	cmp	$2,$4
	btnez	$L344
	jr	$31
$L342:
	cmp	$4,$5
	bteqz	$L348
	move	$2,$5
	addu	$5,$5,$6
	b	$L346
$L347:
	lb	$3,0($4)
	sb	$3,0($2)
	addiu	$4,1
	addiu	$2,1
$L346:
	cmp	$2,$5
	btnez	$L347
$L348:
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
	move	$3,$4
	sll	$3,$5
	li	$2,16
	subu	$2,$2,$5
	srl	$4,$2
	move	$2,$4
	or	$2,$3
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
	move	$3,$4
	srl	$3,$5
	li	$2,16
	subu	$2,$2,$5
	sll	$4,$2
	move	$2,$4
	or	$2,$3
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
	move	$3,$4
	sll	$3,$5
	li	$2,8
	subu	$2,$2,$5
	srl	$4,$2
	move	$2,$4
	or	$2,$3
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
	move	$3,$4
	srl	$3,$5
	li	$2,8
	subu	$2,$2,$5
	sll	$4,$2
	move	$2,$4
	or	$2,$3
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
	zeb	$4
	sll	$4,$4,8
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
	srl	$3,$4,24
	lw	$2,$L362
	and	$2,$4
	srl	$2,$2,8
	or	$2,$3
	li	$3,65280
	and	$3,$4
	sll	$3,$3,8
	or	$2,$3
	sll	$4,$4,24
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_bswap_32_362, @object
__pool_bswap_32_362:
	.align	2
$L362:
	.word	16711680
	.type	__pend_bswap_32_362, @object
__pend_bswap_32_362:
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.set	mips16
	.set	nomicromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$3,$4
	dsrl	$3,56
	ld	$2,$L364
	and	$2,$4
	dsrl	$2,40
	or	$2,$3
	ld	$3,$L365
	and	$3,$4
	dsrl	$3,24
	or	$2,$3
	ld	$3,$L366
	and	$3,$4
	dsrl	$3,8
	or	$2,$3
	ld	$3,$L367
	and	$3,$4
	dsll	$3,$3,8
	or	$2,$3
	ld	$3,$L368
	and	$3,$4
	dsll	$3,$3,24
	or	$2,$3
	li	$3,65280
	and	$3,$4
	dsll	$3,$3,40
	or	$2,$3
	dsll	$4,$4,56
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_364, @object
__pool_bswap_64_364:
	.align	3
$L364:
	.dword	71776119061217280
$L365:
	.dword	280375465082880
$L366:
	.dword	1095216660480
$L367:
	.dword	4278190080
$L368:
	.dword	16711680
	.type	__pend_bswap_64_364, @object
__pend_bswap_64_364:
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
	b	$L370
$L373:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	beqz	$3,$L371
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,1
	.set	macro
	.set	reorder

$L371:
	addiu	$2,1
$L370:
	cmpi	$2,32
	btnez	$L373
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	beqz	$4,$L378
	li	$2,1
	b	$L376
$L377:
	sra	$4,$4,1
	addiu	$2,1
$L376:
	li	$3,1
	and	$3,$4
	beqz	$3,$L377
	jr	$31
$L378:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

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
	lw	$2,$L385
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltsf2)($17)
	lw	$5,$L386
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L382
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$5,$L387
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
	b	$L380
$L382:
	li	$2,1
$L380:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool_gl_isinff_385, @object
__pool_gl_isinff_385:
	.align	2
$L385:
	.word	__gnu_local_gp
$L386:
	.word	-8388609
$L387:
	.word	2139095039
	.type	__pend_gl_isinff_385, @object
__pend_gl_isinff_385:
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
	lw	$2,$L394
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L395
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L391
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L396
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
	b	$L389
$L391:
	li	$2,1
$L389:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool_gl_isinfd_394, @object
__pool_gl_isinfd_394:
	.align	2
$L394:
	.word	__gnu_local_gp
	.align	3
$L395:
	.word	-1048577
	.word	-1
$L396:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_394, @object
__pend_gl_isinfd_394:
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
	lw	$2,$L403
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L404
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L400
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L405
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
	b	$L398
$L400:
	li	$2,1
$L398:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool_gl_isinfl_403, @object
__pool_gl_isinfl_403:
	.align	2
$L403:
	.word	__gnu_local_gp
	.align	3
$L404:
	.word	-1048577
	.word	-1
$L405:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_403, @object
__pend_gl_isinfl_403:
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
	lw	$2,$L407
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

	.type	__pool__Qp_itoq_407, @object
__pool__Qp_itoq_407:
	.align	2
$L407:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_407, @object
__pend__Qp_itoq_407:
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
	lw	$2,$L416
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
	bnez	$2,$L409
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
	move	$5,$2
	.set	noreorder
	.set	nomacro
	jalr	$7
	lw	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L409
	slt	$16,0
	bteqz	$L414
	lw	$2,$L417
	sw	$2,40($sp)
	b	$L413
$L414:
	lw	$2,$L418
	sw	$2,40($sp)
$L413:
	li	$2,1
	and	$2,$16
	beqz	$2,$L412
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
$L412:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L409
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
	b	$L413
$L409:
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

	.type	__pool_ldexpf_416, @object
__pool_ldexpf_416:
	.align	2
$L416:
	.word	__gnu_local_gp
$L417:
	.word	1056964608
$L418:
	.word	1073741824
	.type	__pend_ldexpf_416, @object
__pend_ldexpf_416:
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
	lw	$2,$L427
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
	bnez	$2,$L420
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
	move	$5,$2
	.set	noreorder
	.set	nomacro
	jalr	$7
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L420
	slt	$16,0
	bteqz	$L425
	ld	$2,$L428
	sd	$2,40($sp)
	b	$L424
$L425:
	ld	$2,$L429
	sd	$2,40($sp)
$L424:
	li	$2,1
	and	$2,$16
	beqz	$2,$L423
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
$L423:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L420
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
	b	$L424
$L420:
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

	.type	__pool_ldexp_427, @object
__pool_ldexp_427:
	.align	2
$L427:
	.word	__gnu_local_gp
	.align	3
$L428:
	.word	1071644672
	.word	0
$L429:
	.word	1073741824
	.word	0
	.type	__pend_ldexp_427, @object
__pend_ldexp_427:
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
	lw	$2,$L438
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
	bnez	$2,$L431
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
	move	$5,$2
	.set	noreorder
	.set	nomacro
	jalr	$7
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L431
	slt	$16,0
	bteqz	$L436
	ld	$2,$L439
	sd	$2,40($sp)
	b	$L435
$L436:
	ld	$2,$L440
	sd	$2,40($sp)
$L435:
	li	$2,1
	and	$2,$16
	beqz	$2,$L434
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
$L434:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L431
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
	b	$L435
$L431:
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

	.type	__pool_ldexpl_438, @object
__pool_ldexpl_438:
	.align	2
$L438:
	.word	__gnu_local_gp
	.align	3
$L439:
	.word	1071644672
	.word	0
$L440:
	.word	1073741824
	.word	0
	.type	__pend_ldexpl_438, @object
__pend_ldexpl_438:
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
	addiu	$sp,-8
	sd	$16,0($sp)
	move	$2,$4
	move	$3,$4
	addu	$6,$4,$6
	b	$L442
$L443:
	lb	$16,0($5)
	lb	$7,0($3)
	xor	$7,$16
	sb	$7,0($3)
	addiu	$5,1
	addiu	$3,1
$L442:
	cmp	$3,$6
	btnez	$L443
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	b	$L445
$L447:
	addiu	$17,1
	addiu	$2,1
	addiu	$16,-1
$L445:
	beqz	$16,$L446
	lb	$3,0($17)
	sb	$3,0($2)
	bnez	$3,$L447
$L446:
	bnez	$16,$L448
	li	$3,0
	sb	$3,0($2)
$L448:
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
	b	$L450
$L452:
	addiu	$2,1
$L450:
	cmp	$2,$5
	bteqz	$L453
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L452
$L453:
	jr	$31
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
	b	$L455
$L457:
	lb	$6,0($3)
	lb	$7,0($4)
	addiu	$3,1
	xor	$6,$7
	beqz	$6,$L459
$L458:
	lb	$6,0($3)
	bnez	$6,$L457
	addiu	$4,1
$L455:
	lb	$2,0($4)
	beqz	$2,$L460
	move	$3,$5
	b	$L458
$L459:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L460:
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
$L463:
	lb	$3,0($4)
	xor	$3,$5
	bnez	$3,$L462
	move	$2,$4
$L462:
	addiu	$4,1
	lb	$3,-1($4)
	bnez	$3,$L463
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
	beqz	$2,$L469
	lb	$2,0($17)
	sw	$2,40($sp)
	b	$L467
$L468:
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

	beqz	$2,$L470
	addiu	$16,1
$L467:
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
	bnez	$2,$L468
	li	$2,0
	b	$L466
$L469:
	move	$2,$16
	b	$L466
$L470:
	move	$2,$16
$L466:
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
	lw	$2,$L484
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L485
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L472
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L485
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	bteqz	$L474
$L472:
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L485
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L482
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L485
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L483
$L474:
	ld	$2,$L486
	xor	$2,$16
	b	$L475
$L482:
	move	$2,$16
	b	$L475
$L483:
	move	$2,$16
$L475:
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

	.type	__pool_copysign_484, @object
__pool_copysign_484:
	.align	2
$L484:
	.word	__gnu_local_gp
	.align	3
$L485:
	.word	0
	.word	0
$L486:
	.dword	-9223372036854775808
	.type	__pend_copysign_484, @object
__pend_copysign_484:
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
	move	$17,$6
	sw	$7,96($sp)
	lw	$2,96($sp)
	subu	$2,$5,$2
	addu	$2,$4,$2
	sw	$2,40($sp)
	lw	$2,96($sp)
	beqz	$2,$L492
	sltu	$5,$2
	btnez	$L493
	b	$L489
$L491:
	lb	$2,0($16)
	lb	$3,0($17)
	xor	$2,$3
	bnez	$2,$L490
	lw	$2,96($sp)
	addiu	$6,$2,-1
	addiu	$5,$17,1
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	memcmp
	.option	pic2
	addiu	$4,$16,1
	.set	macro
	.set	reorder

	beqz	$2,$L494
$L490:
	addiu	$16,1
$L489:
	lw	$2,40($sp)
	sltu	$2,$16
	bteqz	$L491
	li	$2,0
	b	$L488
$L492:
	move	$2,$4
	b	$L488
$L493:
	li	$2,0
	b	$L488
$L494:
	move	$2,$16
$L488:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

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
	lw	$2,$L496
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

	.type	__pool_mempcpy_496, @object
__pool_mempcpy_496:
	.align	2
$L496:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_496, @object
__pend_mempcpy_496:
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
	lw	$2,$L517
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,72($sp)
	sw	$5,80($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L518
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L514
	ld	$2,$L519
	ld	$3,72($sp)
	xor	$3,$2
	sd	$3,72($sp)
	li	$2,1
	sw	$2,40($sp)
	b	$L498
$L514:
	li	$2,0
	sw	$2,40($sp)
$L498:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L520
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L509
	b	$L515
$L502:
	addiu	$17,1
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,$L521
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
	b	$L500
$L509:
	li	$17,0
$L500:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L520
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L502
	b	$L503
$L515:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L521
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L516
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L518
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L511
	li	$17,0
	b	$L503
$L506:
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
	b	$L505
$L511:
	li	$17,0
$L505:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L521
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L506
	b	$L503
$L516:
	li	$17,0
$L503:
	lw	$2,80($sp)
	sw	$17,0($2)
	lw	$2,40($sp)
	beqz	$2,$L507
	ld	$2,$L519
	ld	$3,72($sp)
	xor	$3,$2
	sd	$3,72($sp)
$L507:
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

	.type	__pool_frexp_517, @object
__pool_frexp_517:
	.align	2
$L517:
	.word	__gnu_local_gp
	.align	3
$L518:
	.word	0
	.word	0
$L519:
	.dword	-9223372036854775808
$L520:
	.word	1072693248
	.word	0
$L521:
	.word	1071644672
	.word	0
	.type	__pend_frexp_517, @object
__pend_frexp_517:
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
	li	$2,0
	b	$L523
$L525:
	li	$3,1
	and	$3,$4
	beqz	$3,$L524
	daddu	$2,$2,$5
$L524:
	dsll	$5,$5,1
	dsrl	$4,1
$L523:
	bnez	$4,$L525
	jr	$31
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
	li	$7,33
	li	$3,1
	b	$L527
$L531:
	sll	$5,$5,1
	sll	$3,$3,1
$L527:
	sltu	$5,$4
	btnez	$L528
	li	$2,0
	b	$L529
$L535:
	li	$2,0
	b	$L529
$L528:
	addiu	$7,-1
	beqz	$7,$L535
	slt	$5,0
	bteqz	$L531
	li	$2,0
	b	$L529
$L533:
	sltu	$4,$5
	btnez	$L532
	subu	$4,$4,$5
	or	$2,$3
$L532:
	srl	$3,$3,1
	srl	$5,$5,1
$L529:
	bnez	$3,$L533
	beqz	$6,$L537
	move	$2,$4
$L537:
	jr	$31
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
	lw	$2,$L542
	move	$28,$2
	sw	$2,32($sp)
	slt	$4,0
	bteqz	$L539
	not	$4,$4
$L539:
	beqz	$4,$L541
	sll	$4,$4,8
	dsll	$4,$4,32
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
	b	$L540
$L541:
	li	$2,7
$L540:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___clrsbqi2_542, @object
__pool___clrsbqi2_542:
	.align	2
$L542:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_542, @object
__pend___clrsbqi2_542:
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
	lw	$2,$L547
	move	$28,$2
	sw	$2,32($sp)
	slt	$4,0
	bteqz	$L544
	not	$4,$4
$L544:
	beqz	$4,$L546
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
	b	$L545
$L546:
	li	$2,63
$L545:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___clrsbdi2_547, @object
__pool___clrsbdi2_547:
	.align	2
$L547:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_547, @object
__pend___clrsbdi2_547:
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
	li	$2,0
	b	$L549
$L551:
	li	$3,1
	and	$3,$4
	beqz	$3,$L550
	addu	$2,$2,$5
$L550:
	srl	$4,$4,1
	sll	$5,$5,1
$L549:
	bnez	$4,$L551
	jr	$31
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
	srl	$16,$6,3
	li	$2,8
	neg	$2,$2
	and	$2,$6
	sltu	$4,$5
	btnez	$L553
	addu	$3,$5,$6
	sltu	$3,$4
	bteqz	$L554
$L553:
	move	$3,$5
	move	$7,$4
	sll	$16,$16,3
	addu	$16,$16,$5
	b	$L555
$L556:
	ld	$17,0($3)
	sd	$17,0($7)
	addiu	$3,8
	addiu	$7,8
$L555:
	cmp	$3,$16
	btnez	$L556
	b	$L557
$L558:
	addu	$3,$5,$2
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,1
$L557:
	sltu	$2,$6
	btnez	$L558
	b	$L552
$L560:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L554:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L560
$L552:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

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
	btnez	$L562
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L563
$L562:
	move	$2,$5
	move	$3,$4
	sll	$16,$16,1
	addu	$16,$16,$5
	b	$L564
$L565:
	lh	$7,0($2)
	sh	$7,0($3)
	addiu	$2,2
	addiu	$3,2
$L564:
	cmp	$2,$16
	btnez	$L565
	li	$2,1
	and	$2,$6
	beqz	$2,$L561
	addiu	$6,-1
	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	sb	$2,0($4)
	b	$L561
$L567:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L563:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L567
$L561:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	srl	$16,$6,2
	li	$2,4
	neg	$2,$2
	and	$2,$6
	sltu	$4,$5
	btnez	$L569
	addu	$3,$5,$6
	sltu	$3,$4
	bteqz	$L570
$L569:
	move	$3,$5
	move	$7,$4
	sll	$16,$16,2
	addu	$16,$16,$5
	b	$L571
$L572:
	lw	$17,0($3)
	sw	$17,0($7)
	addiu	$3,4
	addiu	$7,4
$L571:
	cmp	$3,$16
	btnez	$L572
	b	$L573
$L574:
	addu	$3,$5,$2
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,1
$L573:
	sltu	$2,$6
	btnez	$L574
	b	$L568
$L576:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L570:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L576
$L568:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

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
	lw	$2,$L579
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

	.type	__pool___uitod_579, @object
__pool___uitod_579:
	.align	2
$L579:
	.word	__gnu_local_gp
	.type	__pend___uitod_579, @object
__pend___uitod_579:
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
	lw	$2,$L581
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

	.type	__pool___uitof_581, @object
__pool___uitof_581:
	.align	2
$L581:
	.word	__gnu_local_gp
	.type	__pend___uitof_581, @object
__pend___uitof_581:
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
	lw	$2,$L583
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

	.type	__pool___ulltod_583, @object
__pool___ulltod_583:
	.align	2
$L583:
	.word	__gnu_local_gp
	.type	__pend___ulltod_583, @object
__pend___ulltod_583:
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
	lw	$2,$L585
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

	.type	__pool___ulltof_585, @object
__pool___ulltof_585:
	.align	2
$L585:
	.word	__gnu_local_gp
	.type	__pend___ulltof_585, @object
__pend___ulltof_585:
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
	b	$L588
$L590:
	li	$5,15
	subu	$5,$5,$2
	move	$3,$4
	sra	$3,$5
	li	$5,1
	and	$3,$5
	bnez	$3,$L591
	addiu	$2,1
$L588:
	cmpi	$2,16
	btnez	$L590
$L591:
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
	b	$L593
$L595:
	move	$3,$4
	sra	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L596
	addiu	$2,1
$L593:
	cmpi	$2,16
	btnez	$L595
$L596:
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
	lw	$2,$L603
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	lw	$2,%call16(__mips16_gesf2)($16)
	lw	$5,$L604
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L602
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L604
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
	b	$L600
$L602:
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L600:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___fixunssfsi_603, @object
__pool___fixunssfsi_603:
	.align	2
$L603:
	.word	__gnu_local_gp
$L604:
	.word	1191182336
	.type	__pend___fixunssfsi_603, @object
__pend___fixunssfsi_603:
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
	b	$L606
$L608:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	beqz	$5,$L607
	addiu	$2,1
$L607:
	addiu	$3,1
$L606:
	cmpi	$3,16
	btnez	$L608
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
	b	$L610
$L612:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	beqz	$5,$L611
	addiu	$2,1
$L611:
	addiu	$3,1
$L610:
	cmpi	$3,16
	btnez	$L612
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
	li	$2,0
	b	$L614
$L616:
	li	$3,1
	and	$3,$4
	beqz	$3,$L615
	addu	$2,$2,$5
$L615:
	srl	$4,$4,1
	sll	$5,$5,1
$L614:
	bnez	$4,$L616
	jr	$31
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
	beqz	$4,$L622
	li	$2,0
	b	$L619
$L621:
	li	$3,1
	and	$3,$5
	beqz	$3,$L620
	addu	$2,$2,$4
$L620:
	sll	$4,$4,1
	srl	$5,$5,1
$L619:
	bnez	$5,$L621
	jr	$31
$L622:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	li	$7,33
	li	$3,1
	b	$L624
$L628:
	sll	$5,$5,1
	sll	$3,$3,1
$L624:
	sltu	$5,$4
	btnez	$L625
	li	$2,0
	b	$L626
$L632:
	li	$2,0
	b	$L626
$L625:
	addiu	$7,-1
	beqz	$7,$L632
	slt	$5,0
	bteqz	$L628
	li	$2,0
	b	$L626
$L630:
	sltu	$4,$5
	btnez	$L629
	subu	$4,$4,$5
	or	$2,$3
$L629:
	srl	$3,$3,1
	srl	$5,$5,1
$L626:
	bnez	$3,$L630
	beqz	$6,$L634
	move	$2,$4
$L634:
	jr	$31
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
	lw	$2,$L639
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
	btnez	$L637
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
	b	$L636
$L637:
	li	$2,1
	neg	$2,$2
$L636:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___mspabi_cmpf_639, @object
__pool___mspabi_cmpf_639:
	.align	2
$L639:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_639, @object
__pend___mspabi_cmpf_639:
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
	lw	$2,$L644
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
	btnez	$L642
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
	b	$L641
$L642:
	li	$2,1
	neg	$2,$2
$L641:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___mspabi_cmpd_644, @object
__pool___mspabi_cmpd_644:
	.align	2
$L644:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_644, @object
__pend___mspabi_cmpd_644:
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
	bteqz	$L654
	neg	$5,$5
	li	$7,1
	b	$L648
$L654:
	li	$7,0
$L648:
	li	$3,33
	li	$2,0
	b	$L649
$L652:
	li	$6,1
	and	$6,$5
	beqz	$6,$L650
	addu	$2,$2,$4
$L650:
	sll	$4,$4,1
	sra	$5,$5,1
$L649:
	beqz	$5,$L651
	addiu	$3,-1
	zeb	$3
	bnez	$3,$L652
$L651:
	beqz	$7,$L656
	neg	$2,$2
$L656:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$16,40($sp)
	slt	$4,0
	bteqz	$L661
	neg	$4,$4
	li	$16,1
	b	$L658
$L661:
	li	$16,0
$L658:
	slt	$5,0
	bteqz	$L659
	neg	$5,$5
	li	$2,1
	xor	$16,$2
$L659:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,0
	.set	macro
	.set	reorder

	beqz	$16,$L660
	neg	$2,$2
$L660:
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.set	mips16
	.set	nomicromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$16,40($sp)
	slt	$4,0
	bteqz	$L666
	neg	$4,$4
	li	$16,1
	b	$L663
$L666:
	li	$16,0
$L663:
	slt	$5,0
	bteqz	$L664
	neg	$5,$5
$L664:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,1
	.set	macro
	.set	reorder

	beqz	$16,$L665
	neg	$2,$2
$L665:
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

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
	li	$2,17
	li	$3,1
	b	$L668
$L672:
	sll	$5,$5,1
	zeh	$5
	sll	$3,$3,1
	zeh	$3
$L668:
	sltu	$5,$4
	btnez	$L669
	li	$2,0
	b	$L670
$L676:
	li	$2,0
	b	$L670
$L669:
	addiu	$2,-1
	beqz	$2,$L676
	move	$7,$5
	seh	$7
	slt	$7,0
	bteqz	$L672
	li	$2,0
	b	$L670
$L674:
	sltu	$4,$5
	btnez	$L673
	subu	$4,$4,$5
	zeh	$4
	or	$2,$3
$L673:
	srl	$3,$3,1
	srl	$5,$5,1
$L670:
	bnez	$3,$L674
	beqz	$6,$L678
	move	$2,$4
$L678:
	jr	$31
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
	li	$7,33
	li	$3,1
	b	$L680
$L684:
	sll	$5,$5,1
	sll	$3,$3,1
$L680:
	sltu	$5,$4
	btnez	$L681
	li	$2,0
	b	$L682
$L688:
	li	$2,0
	b	$L682
$L681:
	addiu	$7,-1
	beqz	$7,$L688
	slt	$5,0
	bteqz	$L684
	li	$2,0
	b	$L682
$L686:
	sltu	$4,$5
	btnez	$L685
	subu	$4,$4,$5
	or	$2,$3
$L685:
	srl	$3,$3,1
	srl	$5,$5,1
$L682:
	bnez	$3,$L686
	beqz	$6,$L690
	move	$2,$4
$L690:
	jr	$31
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
	beqz	$2,$L692
	sll	$4,$4,0
	sll	$4,$5
	dsll	$2,$4,32
	jr	$31
$L692:
	beqz	$5,$L695
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

$L695:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_696, @object
__pool___ashldi3_696:
	.align	2
$L696:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_696, @object
__pend___ashldi3_696:
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
	sd	$5,16($sp)
	sd	$4,8($sp)
	li	$2,64
	and	$2,$6
	beqz	$2,$L698
	li	$2,0
	sd	$2,32($sp)
	ld	$2,16($sp)
	dsll	$2,$6
	sd	$2,24($sp)
	b	$L699
$L698:
	beqz	$6,$L701
	ld	$2,16($sp)
	move	$3,$2
	dsll	$3,$6
	sd	$3,32($sp)
	ld	$3,8($sp)
	dsll	$3,$6
	neg	$6,$6
	dsrl	$2,$6
	or	$2,$3
	sd	$2,24($sp)
$L699:
	ld	$3,32($sp)
	ld	$2,24($sp)
	b	$L700
$L701:
	move	$3,$5
	move	$2,$4
$L700:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

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
	beqz	$2,$L703
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

$L703:
	beqz	$5,$L706
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

$L706:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashrdi3_707, @object
__pool___ashrdi3_707:
	.align	2
$L707:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_707, @object
__pend___ashrdi3_707:
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
	sd	$5,16($sp)
	sd	$4,8($sp)
	li	$2,64
	and	$2,$6
	beqz	$2,$L709
	ld	$2,8($sp)
	move	$3,$2
	dsra	$3,63
	sd	$3,24($sp)
	dsra	$2,$6
	sd	$2,32($sp)
	b	$L710
$L709:
	beqz	$6,$L712
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
$L710:
	ld	$3,32($sp)
	ld	$2,24($sp)
	b	$L711
$L712:
	move	$3,$5
	move	$2,$4
$L711:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

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
	move	$17,$4
	dsrl	$17,40
	li	$2,65280
	and	$17,$2
	move	$16,$4
	dsrl	$16,24
	ld	$2,$L714
	and	$16,$2
	move	$7,$4
	dsrl	$7,8
	ld	$2,$L715
	and	$7,$2
	dsll	$6,$4,8
	ld	$2,$L716
	and	$6,$2
	dsll	$5,$4,24
	ld	$2,$L717
	and	$5,$2
	dsll	$3,$4,40
	ld	$2,$L718
	and	$3,$2
	dsll	$2,$4,56
	move	$4,$8
	or	$2,$4
	or	$2,$17
	or	$2,$16
	or	$2,$7
	or	$2,$6
	or	$2,$5
	or	$2,$3
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_714, @object
__pool___bswapdi2_714:
	.align	3
$L714:
	.dword	16711680
$L715:
	.dword	4278190080
$L716:
	.dword	1095216660480
$L717:
	.dword	280375465082880
$L718:
	.dword	71776119061217280
	.type	__pend___bswapdi2_714, @object
__pend___bswapdi2_714:
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
	srl	$5,$4,24
	srl	$3,$4,8
	li	$2,65280
	and	$3,$2
	sll	$2,$4,8
	lw	$6,$L720
	and	$2,$6
	sll	$4,$4,24
	or	$4,$5
	or	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___bswapsi2_720, @object
__pool___bswapsi2_720:
	.align	2
$L720:
	.word	16711680
	.type	__pend___bswapsi2_720, @object
__pend___bswapsi2_720:
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
	lw	$2,$L730
	sltu	$4,$2
	bteqz	$L726
	li	$2,16
	b	$L722
$L726:
	li	$2,0
$L722:
	li	$3,16
	subu	$3,$3,$2
	srl	$4,$3
	li	$3,65280
	and	$3,$4
	bnez	$3,$L727
	li	$5,8
	b	$L723
$L727:
	li	$5,0
$L723:
	li	$3,8
	subu	$3,$3,$5
	srl	$4,$3
	addu	$2,$2,$5
	li	$3,240
	and	$3,$4
	bnez	$3,$L728
	li	$5,4
	b	$L724
$L728:
	li	$5,0
$L724:
	li	$3,4
	subu	$3,$3,$5
	srl	$4,$3
	addu	$2,$2,$5
	li	$3,12
	and	$3,$4
	bnez	$3,$L729
	li	$5,2
	b	$L725
$L729:
	li	$5,0
$L725:
	li	$3,2
	subu	$6,$3,$5
	srl	$4,$6
	addu	$2,$2,$5
	move	$5,$4
	and	$5,$3
	sltu	$5,1
	move	$5,$24
	subu	$3,$3,$4
	mult	$5,$3
	mflo	$3
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$3
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_730, @object
__pool___clzsi2_730:
	.align	2
$L730:
	.word	65536
	.type	__pend___clzsi2_730, @object
__pend___clzsi2_730:
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
	lw	$2,$L732
	move	$28,$2
	sw	$2,32($sp)
	move	$3,$5
	move	$2,$4
	sd	$5,48($sp)
	sd	$4,40($sp)
	sltu	$4,1
	move	$16,$24
	neg	$16,$16
	not	$4,$16
	and	$4,$2
	and	$3,$16
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	or	$4,$3
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	li	$3,64
	and	$3,$16
	addu	$2,$2,$3
	ld	$7,64($sp)
	ld	$16,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool___clzti2_732, @object
__pool___clzti2_732:
	.align	2
$L732:
	.word	__gnu_local_gp
	.type	__pend___clzti2_732, @object
__pend___clzti2_732:
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
	move	$2,$4
	dsra	$2,32
	move	$3,$5
	dsra	$3,32
	slt	$2,$3
	btnez	$L735
	move	$2,$4
	dsra	$2,32
	move	$3,$5
	dsra	$3,32
	slt	$3,$2
	btnez	$L736
	sll	$3,$4,0
	sll	$2,$5,0
	sltu	$3,$2
	btnez	$L737
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$5,$4
	btnez	$L738
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L735:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L736:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L737:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L738:
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
	sd	$5,16($sp)
	sd	$4,8($sp)
	sd	$7,32($sp)
	sd	$6,24($sp)
	slt	$4,$6
	btnez	$L742
	ld	$2,8($sp)
	ld	$3,24($sp)
	slt	$3,$2
	btnez	$L743
	ld	$2,16($sp)
	ld	$3,32($sp)
	sltu	$2,$3
	btnez	$L744
	sltu	$3,$2
	btnez	$L745
	li	$2,1
	b	$L741
$L742:
	li	$2,0
	b	$L741
$L743:
	li	$2,2
	b	$L741
$L744:
	li	$2,0
	b	$L741
$L745:
	li	$2,2
$L741:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

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
	bnez	$2,$L751
	li	$3,16
	b	$L747
$L751:
	li	$3,0
$L747:
	srl	$4,$3
	move	$2,$4
	zeb	$2
	bnez	$2,$L752
	li	$2,8
	b	$L748
$L752:
	li	$2,0
$L748:
	srl	$4,$2
	addu	$3,$3,$2
	li	$2,15
	and	$2,$4
	bnez	$2,$L753
	li	$2,4
	b	$L749
$L753:
	li	$2,0
$L749:
	srl	$4,$2
	addu	$3,$3,$2
	li	$2,3
	and	$2,$4
	bnez	$2,$L754
	li	$2,2
	b	$L750
$L754:
	li	$2,0
$L750:
	srl	$4,$2
	li	$5,3
	and	$4,$5
	addu	$3,$3,$2
	not	$5,$4
	li	$2,1
	and	$5,$2
	srl	$4,$4,1
	li	$2,2
	subu	$2,$2,$4
	neg	$5,$5
	and	$2,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$3,$2
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
	lw	$2,$L756
	move	$28,$2
	sw	$2,32($sp)
	sd	$5,48($sp)
	sd	$4,40($sp)
	sltu	$5,1
	move	$16,$24
	neg	$16,$16
	and	$4,$16
	not	$3,$16
	and	$3,$5
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
	li	$3,64
	and	$3,$16
	addu	$2,$2,$3
	ld	$7,64($sp)
	ld	$16,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool___ctzti2_756, @object
__pool___ctzti2_756:
	.align	2
$L756:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_756, @object
__pend___ctzti2_756:
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
	lw	$2,$L761
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	sd	$5,48($sp)
	sd	$4,40($sp)
	bnez	$5,$L758
	ld	$3,40($sp)
	beqz	$3,$L760
	lw	$2,%call16(__ctzdi2)($2)
	move	$4,$3
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	addiu	$2,65
	b	$L759
$L758:
	lw	$2,%call16(__ctzdi2)($2)
	ld	$4,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	addiu	$2,1
	b	$L759
$L760:
	li	$2,0
$L759:
	ld	$7,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___ffsti2_761, @object
__pool___ffsti2_761:
	.align	2
$L761:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_761, @object
__pend___ffsti2_761:
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
	beqz	$2,$L763
	dsrl	$4,32
	sll	$4,$4,0
	srl	$4,$5
	dsll	$2,$4,32
	dsrl	$2,32
	jr	$31
$L763:
	beqz	$5,$L766
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

$L766:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___lshrdi3_767, @object
__pool___lshrdi3_767:
	.align	2
$L767:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_767, @object
__pend___lshrdi3_767:
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
	sd	$5,16($sp)
	sd	$4,8($sp)
	li	$2,64
	and	$2,$6
	beqz	$2,$L769
	li	$2,0
	sd	$2,24($sp)
	ld	$2,8($sp)
	dsrl	$2,$6
	sd	$2,32($sp)
	b	$L770
$L769:
	beqz	$6,$L772
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
$L770:
	ld	$3,32($sp)
	ld	$2,24($sp)
	b	$L771
$L772:
	move	$3,$5
	move	$2,$4
$L771:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.globl	__muldsi3
	.set	mips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$16,0($sp)
	li	$2,65535
	move	$16,$4
	and	$16,$2
	and	$2,$5
	mult	$16,$2
	mflo	$7
	srl	$3,$7,8
	srl	$3,$3,8
	srl	$4,$4,8
	srl	$4,$4,8
	mult	$4,$2
	mflo	$2
	addu	$3,$3,$2
	srl	$6,$3,8
	srl	$6,$6,8
	zeh	$3
	zeh	$7
	srl	$5,$5,8
	srl	$5,$5,8
	mult	$16,$5
	mflo	$2
	addu	$3,$3,$2
	sll	$2,$3,8
	sll	$2,$2,8
	addu	$2,$2,$7
	dsll	$2,$2,32
	dsrl	$2,32
	dsll	$6,$6,32
	or	$6,$2
	move	$2,$6
	dsra	$2,32
	srl	$3,$3,8
	srl	$3,$3,8
	addu	$3,$3,$2
	dsll	$3,$3,32
	dsll	$6,$6,32
	dsrl	$6,32
	or	$6,$3
	move	$3,$6
	dsra	$3,32
	mult	$4,$5
	mflo	$2
	addu	$2,$2,$3
	dsll	$2,$2,32
	dsll	$6,$6,32
	dsrl	$6,32
	or	$2,$6
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	dsll	$3,$4,32
	dsrl	$3,32
	dsll	$7,$5,32
	dsrl	$7,32
	dmult	$3,$7
	mflo	$2
	dsrl	$2,32
	mflo	$6
	dsrl	$4,32
	dmult	$4,$7
	mflo	$7
	daddu	$2,$2,$7
	move	$7,$2
	dsrl	$7,32
	dsll	$2,$2,32
	dsrl	$2,32
	dsll	$6,$6,32
	dsrl	$6,32
	dsrl	$5,32
	dmult	$3,$5
	mflo	$3
	daddu	$2,$2,$3
	dsll	$3,$2,32
	daddu	$3,$3,$6
	sd	$3,16($sp)
	dsrl	$2,32
	daddu	$2,$2,$7
	dmult	$4,$5
	mflo	$3
	daddu	$2,$3,$2
	sd	$2,8($sp)
	ld	$3,16($sp)
	ld	$2,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
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

	move	$6,$2
	sd	$3,80($sp)
	ld	$2,88($sp)
	dmult	$2,$17
	mflo	$3
	ld	$2,96($sp)
	dmult	$2,$16
	mflo	$4
	daddu	$3,$3,$4
	daddu	$2,$3,$6
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
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	li	$7,0
	li	$6,0
	dsubu	$3,$7,$5
	sltu	$7,$3
	move	$5,$24
	dsubu	$2,$6,$4
	dsubu	$2,$2,$5
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
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
	srl	$2,$4,8
	srl	$2,$2,8
	xor	$4,$2
	srl	$2,$4,8
	xor	$4,$2
	srl	$2,$4,4
	xor	$4,$2
	li	$2,15
	and	$4,$2
	li	$2,27030
	sra	$2,$4
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
	xor	$4,$5
	move	$2,$4
	dsra	$2,32
	sll	$4,$4,0
	xor	$4,$2
	srl	$2,$4,8
	srl	$2,$2,8
	xor	$4,$2
	srl	$2,$4,8
	xor	$4,$2
	srl	$2,$4,4
	xor	$4,$2
	li	$2,15
	and	$4,$2
	li	$2,27030
	sra	$2,$4
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
	xor	$4,$2
	srl	$2,$4,8
	xor	$4,$2
	srl	$2,$4,4
	xor	$4,$2
	li	$2,15
	and	$4,$2
	li	$2,27030
	sra	$2,$4
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
	ld	$3,$L783
	and	$2,$3
	dsubu	$4,$4,$2
	move	$2,$4
	dsrl	$2,2
	ld	$3,$L784
	and	$2,$3
	and	$4,$3
	daddu	$4,$2,$4
	move	$2,$4
	dsrl	$2,4
	daddu	$4,$2,$4
	ld	$2,$L785
	and	$4,$2
	sll	$2,$4,0
	dsrl	$4,32
	sll	$4,$4,0
	addu	$4,$4,$2
	srl	$2,$4,8
	srl	$2,$2,8
	addu	$4,$4,$2
	srl	$2,$4,8
	addu	$2,$2,$4
	li	$3,127
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___popcountdi2_783, @object
__pool___popcountdi2_783:
	.align	3
$L783:
	.dword	6148914691236517205
$L784:
	.dword	3689348814741910323
$L785:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_783, @object
__pend___popcountdi2_783:
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
	lw	$3,$L787
	and	$2,$3
	subu	$4,$4,$2
	srl	$2,$4,2
	lw	$3,$L788
	and	$2,$3
	and	$4,$3
	addu	$4,$2,$4
	srl	$2,$4,4
	addu	$4,$2,$4
	lw	$2,$L789
	and	$4,$2
	srl	$2,$4,8
	srl	$2,$2,8
	addu	$4,$4,$2
	srl	$2,$4,8
	addu	$2,$2,$4
	li	$3,63
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___popcountsi2_787, @object
__pool___popcountsi2_787:
	.align	2
$L787:
	.word	1431655765
$L788:
	.word	858993459
$L789:
	.word	252645135
	.type	__pend___popcountsi2_787, @object
__pend___popcountsi2_787:
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.set	mips16
	.set	nomicromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$8,$4
	dsll	$6,$4,63
	move	$4,$5
	dsrl	$4,1
	move	$3,$4
	or	$3,$6
	move	$4,$8
	dsrl	$4,1
	ld	$16,$L791
	and	$4,$16
	move	$6,$4
	move	$2,$3
	and	$2,$16
	move	$7,$2
	dsubu	$3,$5,$7
	sltu	$5,$3
	move	$5,$24
	move	$4,$8
	dsubu	$2,$4,$6
	dsubu	$2,$2,$5
	dsll	$6,$2,62
	move	$7,$3
	dsrl	$7,2
	move	$5,$7
	or	$5,$6
	move	$6,$2
	dsrl	$6,2
	ld	$16,$L792
	move	$17,$6
	and	$17,$16
	move	$4,$5
	and	$4,$16
	move	$7,$4
	move	$4,$2
	and	$4,$16
	move	$2,$3
	and	$2,$16
	daddu	$2,$7,$2
	move	$9,$2
	sltu	$2,$7
	move	$5,$24
	daddu	$2,$17,$4
	daddu	$2,$5,$2
	move	$8,$2
	dsll	$4,$2,60
	move	$2,$9
	dsrl	$2,4
	move	$7,$2
	or	$7,$4
	move	$2,$8
	dsrl	$2,4
	move	$6,$2
	move	$2,$9
	daddu	$5,$7,$2
	sltu	$5,$7
	move	$3,$24
	move	$2,$8
	daddu	$4,$6,$2
	daddu	$4,$3,$4
	ld	$2,$L793
	move	$3,$4
	and	$3,$2
	move	$16,$3
	move	$3,$5
	and	$3,$2
	daddu	$3,$16,$3
	sll	$2,$3,0
	dsrl	$3,32
	sll	$3,$3,0
	addu	$3,$3,$2
	srl	$2,$3,8
	srl	$2,$2,8
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	zeb	$2
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.type	__pool___popcountti2_791, @object
__pool___popcountti2_791:
	.align	3
$L791:
	.dword	6148914691236517205
$L792:
	.dword	3689348814741910323
$L793:
	.dword	1085102592571150095
	.type	__pend___popcountti2_791, @object
__pend___popcountti2_791:
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
	.frame	$sp,80,$31		# vars= 16, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-80
	sd	$31,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	lw	$2,$L800
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$4,80($sp)
	move	$16,$5
	srl	$2,$5,31
	sw	$2,48($sp)
	ld	$2,$L801
	sd	$2,40($sp)
$L797:
	li	$2,1
	and	$2,$16
	beqz	$2,$L795
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
$L795:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L796
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$5,80($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,80($sp)
	b	$L797
$L796:
	lw	$2,48($sp)
	beqz	$2,$L799
	lw	$2,%call16(__mips16_divdf3)($17)
	ld	$4,$L801
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	b	$L798
$L799:
	ld	$2,40($sp)
$L798:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,72($sp)
	ld	$17,64($sp)
	ld	$16,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,80
	.set	macro
	.set	reorder

	.type	__pool___powidf2_800, @object
__pool___powidf2_800:
	.align	2
$L800:
	.word	__gnu_local_gp
	.align	3
$L801:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_800, @object
__pend___powidf2_800:
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
	lw	$2,$L808
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sw	$4,72($sp)
	move	$16,$5
	srl	$2,$5,31
	sw	$2,44($sp)
	lw	$2,$L809
	sw	$2,40($sp)
$L805:
	li	$2,1
	and	$2,$16
	beqz	$2,$L803
	lw	$2,%call16(__mips16_mulsf3)($17)
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
$L803:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L804
	lw	$2,%call16(__mips16_mulsf3)($17)
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
	b	$L805
$L804:
	lw	$2,44($sp)
	beqz	$2,$L807
	lw	$2,%call16(__mips16_divsf3)($17)
	lw	$4,$L809
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	b	$L806
$L807:
	lw	$2,40($sp)
$L806:
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

	.type	__pool___powisf2_808, @object
__pool___powisf2_808:
	.align	2
$L808:
	.word	__gnu_local_gp
$L809:
	.word	1065353216
	.type	__pend___powisf2_808, @object
__pend___powisf2_808:
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
	btnez	$L812
	move	$3,$4
	dsrl	$3,32
	sll	$3,$3,0
	move	$2,$5
	dsrl	$2,32
	sll	$2,$2,0
	sltu	$2,$3
	btnez	$L813
	sll	$3,$4,0
	sll	$2,$5,0
	sltu	$3,$2
	btnez	$L814
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$5,$4
	btnez	$L815
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L812:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L813:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L814:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L815:
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
	sd	$5,16($sp)
	sd	$4,8($sp)
	sd	$7,32($sp)
	sd	$6,24($sp)
	sltu	$4,$6
	btnez	$L819
	ld	$2,8($sp)
	ld	$3,24($sp)
	sltu	$3,$2
	btnez	$L820
	ld	$2,16($sp)
	ld	$3,32($sp)
	sltu	$2,$3
	btnez	$L821
	sltu	$3,$2
	btnez	$L822
	li	$2,1
	b	$L818
$L819:
	li	$2,0
	b	$L818
$L820:
	li	$2,2
	b	$L818
$L821:
	li	$2,0
	b	$L818
$L822:
	li	$2,2
$L818:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

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
