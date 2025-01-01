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
	addu	$3,$5,$6
	addu	$6,$4,$6
	b	$L7
$L8:
	addiu	$3,-1
	addiu	$6,-1
	lb	$7,0($3)
	sb	$7,0($6)
$L7:
	cmp	$3,$5
	btnez	$L8
	jr	$31
$L6:
	cmp	$4,$5
	bteqz	$L12
	move	$3,$4
	addu	$6,$4,$6
	b	$L10
$L11:
	lb	$4,0($5)
	sb	$4,0($3)
	addiu	$3,1
	addiu	$5,1
$L10:
	cmp	$3,$6
	btnez	$L11
$L12:
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
	b	$L15
$L17:
	addiu	$7,-1
	addiu	$5,1
	addiu	$4,1
$L15:
	beqz	$7,$L16
	lbu	$3,0($5)
	sb	$3,0($4)
	xor	$3,$6
	bnez	$3,$L17
$L16:
	beqz	$7,$L19
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,$4,1
	.set	macro
	.set	reorder

$L19:
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
	b	$L21
$L23:
	addiu	$4,1
	addiu	$6,-1
$L21:
	beqz	$6,$L22
	lbu	$3,0($4)
	xor	$3,$5
	bnez	$3,$L23
$L22:
	beqz	$6,$L26
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L26:
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
	b	$L28
$L30:
	addiu	$6,-1
	addiu	$4,1
	addiu	$5,1
$L28:
	beqz	$6,$L29
	lbu	$2,0($4)
	lbu	$3,0($5)
	xor	$2,$3
	beqz	$2,$L30
$L29:
	beqz	$6,$L32
	lbu	$2,0($4)
	lbu	$3,0($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L32:
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
	b	$L34
$L35:
	lbu	$7,0($5)
	sb	$7,0($3)
	addiu	$3,1
	addiu	$5,1
$L34:
	cmp	$3,$6
	btnez	$L35
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
$L37:
	addiu	$3,$6,1
	beqz	$3,$L41
	addu	$3,$4,$6
	lbu	$3,0($3)
	addiu	$7,$6,-1
	xor	$3,$5
	beqz	$3,$L42
	move	$6,$7
	b	$L37
$L42:
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$4,$6
	.set	macro
	.set	reorder

$L41:
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
	b	$L44
$L45:
	sb	$5,0($3)
	addiu	$3,1
$L44:
	cmp	$3,$6
	btnez	$L45
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
	b	$L47
$L48:
	addiu	$5,1
	addiu	$2,1
$L47:
	lb	$3,0($5)
	sb	$3,0($2)
	bnez	$3,$L48
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
	b	$L50
$L52:
	addiu	$2,1
$L50:
	lb	$3,0($2)
	beqz	$3,$L53
	lbu	$3,0($2)
	xor	$3,$5
	bnez	$3,$L52
$L53:
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
$L56:
	lb	$2,0($4)
	xor	$2,$5
	beqz	$2,$L57
	addiu	$4,1
	lb	$2,-1($4)
	bnez	$2,$L56
	jr	$31
$L57:
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
	b	$L59
$L61:
	addiu	$4,1
	addiu	$5,1
$L59:
	lb	$2,0($4)
	lb	$3,0($5)
	xor	$2,$3
	bnez	$2,$L60
	lb	$2,0($4)
	bnez	$2,$L61
$L60:
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
	b	$L63
$L64:
	addiu	$2,1
$L63:
	lb	$5,0($2)
	bnez	$5,$L64
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
	beqz	$6,$L70
	addiu	$6,-1
	addu	$3,$4,$6
$L67:
	lbu	$2,0($4)
	beqz	$2,$L68
	lbu	$2,0($5)
	beqz	$2,$L68
	cmp	$4,$3
	bteqz	$L68
	lbu	$2,0($4)
	lbu	$6,0($5)
	xor	$2,$6
	bnez	$2,$L68
	addiu	$4,1
	addiu	$5,1
	b	$L67
$L68:
	lbu	$2,0($4)
	lbu	$3,0($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L70:
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
	b	$L72
$L73:
	lb	$3,1($2)
	sb	$3,0($5)
	lb	$3,0($2)
	sb	$3,1($5)
	addiu	$5,2
	addiu	$2,2
$L72:
	addu	$3,$4,$6
	subu	$3,$3,$2
	slt	$3,2
	bteqz	$L73
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
	bteqz	$L78
	li	$2,9
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L78:
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
	btnez	$L81
	li	$2,127
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L81:
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
	bteqz	$L88
	addiu	$4,-9
	sltu	$4,5
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
	btnez	$L92
	addiu	$2,$4,-8
	addiu	$2,-119
	sltu	$2,33
	btnez	$L93
	addiu	$2,$4,-8232
	sltu	$2,2
	btnez	$L94
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
	li	$2,1
	.set	macro
	.set	reorder

$L94:
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
	btnez	$L104
	sltu	$4,8232
	btnez	$L99
	addiu	$3,$4,-8234
	li	$2,47062
	sltu	$3,$2
	btnez	$L100
	li	$2,57344
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$2,8185
	btnez	$L101
	li	$2,65532
	neg	$2,$2
	addu	$2,$4,$2
	lw	$3,$L106
	sltu	$3,$2
	btnez	$L102
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

$L104:
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
	li	$2,1
	.set	macro
	.set	reorder

$L102:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.type	__pool_iswprint_105, @object
__pool_iswprint_105:
	.align	2
$L105:
	.word	__gnu_local_gp
$L106:
	.word	1048579
	.type	__pend_iswprint_105, @object
__pend_iswprint_105:
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
	btnez	$L109
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

$L109:
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
	lw	$2,$L120
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
	bnez	$2,$L114
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
	bnez	$2,$L115
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
	btnez	$L118
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
$L112:
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

$L114:
	move	$2,$16
	b	$L112
$L115:
	ld	$2,72($sp)
	b	$L112
$L118:
	ld	$2,$L121
	b	$L112
	.type	__pool_fdim_120, @object
__pool_fdim_120:
	.align	2
$L120:
	.word	__gnu_local_gp
	.align	3
$L121:
	.word	0
	.word	0
	.type	__pend_fdim_120, @object
__pend_fdim_120:
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
	lw	$2,$L131
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
	bnez	$2,$L125
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
	bnez	$2,$L126
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
	btnez	$L129
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
$L123:
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

$L125:
	move	$2,$16
	b	$L123
$L126:
	lw	$2,72($sp)
	b	$L123
$L129:
	lw	$2,$L132
	b	$L123
	.type	__pool_fdimf_131, @object
__pool_fdimf_131:
	.align	2
$L131:
	.word	__gnu_local_gp
$L132:
	.word	0
	.type	__pend_fdimf_131, @object
__pend_fdimf_131:
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
	lw	$2,$L143
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
	bnez	$2,$L139
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
	bnez	$2,$L140
	move	$2,$16
	dsrl	$2,63
	ld	$3,80($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L135
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L141
	ld	$2,80($sp)
	b	$L134
$L135:
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
	btnez	$L136
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L136:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L138
	ld	$16,80($sp)
$L138:
	move	$2,$16
$L134:
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

$L139:
	ld	$2,80($sp)
	b	$L134
$L140:
	move	$2,$16
	b	$L134
$L141:
	move	$2,$16
	b	$L134
	.type	__pool_fmax_143, @object
__pool_fmax_143:
	.align	2
$L143:
	.word	__gnu_local_gp
	.type	__pend_fmax_143, @object
__pend_fmax_143:
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
	lw	$2,$L154
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
	bnez	$2,$L150
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
	bnez	$2,$L151
	lw	$3,80($sp)
	xor	$3,$16
	lw	$2,$L155
	and	$2,$3
	beqz	$2,$L146
	lw	$2,$L155
	and	$2,$16
	beqz	$2,$L152
	lw	$2,80($sp)
	b	$L145
$L146:
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
	btnez	$L147
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L147:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L149
	lw	$16,80($sp)
$L149:
	move	$2,$16
$L145:
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

$L150:
	lw	$2,80($sp)
	b	$L145
$L151:
	move	$2,$16
	b	$L145
$L152:
	move	$2,$16
	b	$L145
	.type	__pool_fmaxf_154, @object
__pool_fmaxf_154:
	.align	2
$L154:
	.word	__gnu_local_gp
$L155:
	.word	-2147483648
	.type	__pend_fmaxf_154, @object
__pend_fmaxf_154:
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
	lw	$2,$L166
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
	bnez	$2,$L162
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
	bnez	$2,$L163
	move	$2,$16
	dsrl	$2,63
	ld	$3,80($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L158
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L164
	ld	$2,80($sp)
	b	$L157
$L158:
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
	btnez	$L159
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L159:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L161
	ld	$16,80($sp)
$L161:
	move	$2,$16
$L157:
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

$L162:
	ld	$2,80($sp)
	b	$L157
$L163:
	move	$2,$16
	b	$L157
$L164:
	move	$2,$16
	b	$L157
	.type	__pool_fmaxl_166, @object
__pool_fmaxl_166:
	.align	2
$L166:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_166, @object
__pend_fmaxl_166:
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
	lw	$2,$L177
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
	bnez	$2,$L173
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
	bnez	$2,$L174
	move	$2,$16
	dsrl	$2,63
	ld	$3,80($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L169
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L175
	move	$2,$16
$L168:
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

$L169:
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
	btnez	$L170
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L170:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L171
	move	$2,$16
	b	$L168
$L171:
	ld	$2,80($sp)
	b	$L168
$L173:
	ld	$2,80($sp)
	b	$L168
$L174:
	move	$2,$16
	b	$L168
$L175:
	ld	$2,80($sp)
	b	$L168
	.type	__pool_fmin_177, @object
__pool_fmin_177:
	.align	2
$L177:
	.word	__gnu_local_gp
	.type	__pend_fmin_177, @object
__pend_fmin_177:
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
	lw	$2,$L188
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
	bnez	$2,$L184
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
	bnez	$2,$L185
	lw	$3,80($sp)
	xor	$3,$16
	lw	$2,$L189
	and	$2,$3
	beqz	$2,$L180
	lw	$2,$L189
	and	$2,$16
	beqz	$2,$L186
	move	$2,$16
$L179:
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

$L180:
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
	btnez	$L181
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L181:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L182
	move	$2,$16
	b	$L179
$L182:
	lw	$2,80($sp)
	b	$L179
$L184:
	lw	$2,80($sp)
	b	$L179
$L185:
	move	$2,$16
	b	$L179
$L186:
	lw	$2,80($sp)
	b	$L179
	.type	__pool_fminf_188, @object
__pool_fminf_188:
	.align	2
$L188:
	.word	__gnu_local_gp
$L189:
	.word	-2147483648
	.type	__pend_fminf_188, @object
__pend_fminf_188:
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
	lw	$2,$L200
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
	bnez	$2,$L196
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
	bnez	$2,$L197
	move	$2,$16
	dsrl	$2,63
	ld	$3,80($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L192
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L198
	move	$2,$16
$L191:
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

$L192:
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
	btnez	$L193
	li	$2,0
	move	$3,$sp
	sb	$2,40($3)
$L193:
	move	$2,$sp
	lbu	$2,40($2)
	zeb	$2
	beqz	$2,$L194
	move	$2,$16
	b	$L191
$L194:
	ld	$2,80($sp)
	b	$L191
$L196:
	ld	$2,80($sp)
	b	$L191
$L197:
	move	$2,$16
	b	$L191
$L198:
	ld	$2,80($sp)
	b	$L191
	.type	__pool_fminl_200, @object
__pool_fminl_200:
	.align	2
$L200:
	.word	__gnu_local_gp
	.type	__pend_fminl_200, @object
__pend_fminl_200:
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
	lw	$5,$L204
	b	$L202
$L203:
	li	$3,63
	and	$3,$4
	lw	$2,$L205
	addu	$2,$2,$3
	lb	$2,0($2)
	sb	$2,0($5)
	addiu	$5,1
	srl	$4,$4,6
$L202:
	bnez	$4,$L203
	li	$2,0
	sb	$2,0($5)
	lw	$2,$L204
	jr	$31
	.type	__pool_l64a_204, @object
__pool_l64a_204:
	.align	2
$L204:
	.word	s.0
$L205:
	.word	digits
	.type	__pend_l64a_204, @object
__pend_l64a_204:
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
	lw	$2,$L207
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.type	__pool_srand_207, @object
__pool_srand_207:
	.align	2
$L207:
	.word	seed
	.type	__pend_srand_207, @object
__pend_srand_207:
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
	lw	$3,$L210
	ld	$2,$L211
	ld	$4,0($3)
	dmult	$4,$2
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_210, @object
__pool_rand_210:
	.align	2
$L210:
	.word	seed
	.align	3
$L211:
	.dword	6364136223846793005
	.type	__pend_rand_210, @object
__pend_rand_210:
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
	beqz	$5,$L215
	lw	$2,0($5)
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	beqz	$2,$L216
	lw	$2,0($4)
	sw	$4,4($2)
$L216:
	jr	$31
$L215:
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
	beqz	$2,$L218
	lw	$2,0($4)
	lw	$3,4($4)
	sw	$3,4($2)
$L218:
	lw	$2,4($4)
	beqz	$2,$L220
	lw	$2,4($4)
	lw	$3,0($4)
	sw	$3,0($2)
$L220:
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
	lw	$2,$L228
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
	b	$L222
$L223:
	addiu	$16,1
$L222:
	lw	$2,40($sp)
	cmp	$16,$2
	bteqz	$L227
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
	bnez	$2,$L223
	lw	$2,96($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	b	$L224
$L227:
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
$L224:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool_lsearch_228, @object
__pool_lsearch_228:
	.align	2
$L228:
	.word	__gnu_local_gp
	.type	__pend_lsearch_228, @object
__pend_lsearch_228:
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
	b	$L230
$L231:
	addiu	$16,1
$L230:
	lw	$2,40($sp)
	cmp	$16,$2
	bteqz	$L235
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
	bnez	$2,$L231
	lw	$2,96($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	b	$L232
$L235:
	li	$2,0
$L232:
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
	btnez	$L238
$L237:
	jr	$31
$L238:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$16,40($sp)
	move	$16,$4
	b	$L240
$L241:
	addiu	$16,1
$L240:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L241
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L247
	cmpi	$2,45
	btnez	$L248
	li	$5,1
$L242:
	addiu	$16,1
$L243:
	li	$2,0
	b	$L244
$L247:
	li	$5,0
	b	$L242
$L248:
	li	$5,0
	b	$L243
$L245:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	subu	$2,$3,$2
	addiu	$16,1
$L244:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L245
	bnez	$5,$L246
	neg	$2,$2
$L246:
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
	b	$L252
$L253:
	addiu	$16,1
$L252:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L253
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L259
	cmpi	$2,45
	btnez	$L260
	li	$5,1
$L254:
	addiu	$16,1
$L255:
	li	$2,0
	b	$L256
$L259:
	li	$5,0
	b	$L254
$L260:
	li	$5,0
	b	$L255
$L257:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	subu	$2,$3,$2
	addiu	$16,1
$L256:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L257
	bnez	$5,$L258
	neg	$2,$2
$L258:
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
	b	$L264
$L265:
	addiu	$16,1
$L264:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L265
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L271
	cmpi	$2,45
	btnez	$L272
	li	$5,1
$L266:
	addiu	$16,1
$L267:
	li	$2,0
	b	$L268
$L271:
	li	$5,0
	b	$L266
$L272:
	li	$5,0
	b	$L267
$L269:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	dsubu	$2,$3,$2
	addiu	$16,1
$L268:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L269
	bnez	$5,$L270
	li	$3,0
	dsubu	$2,$3,$2
$L270:
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
	b	$L276
$L284:
	srl	$16,$16,1
$L276:
	beqz	$16,$L283
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
	btnez	$L284
	slt	$2,1
	btnez	$L281
	lw	$2,88($sp)
	addu	$2,$17,$2
	sw	$2,72($sp)
	srl	$2,$16,1
	addiu	$16,-1
	subu	$16,$16,$2
	b	$L276
$L283:
	li	$2,0
$L279:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L281:
	move	$2,$17
	b	$L279
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
	b	$L286
$L288:
	sra	$16,$16,1
$L286:
	beqz	$16,$L292
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

	beqz	$2,$L290
	slt	$2,1
	btnez	$L288
	lw	$2,96($sp)
	addu	$2,$17,$2
	sw	$2,40($sp)
	addiu	$16,-1
	b	$L288
$L292:
	li	$2,0
$L287:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L290:
	move	$2,$17
	b	$L287
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
	btnez	$L296
$L295:
	jr	$31
$L296:
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
	btnez	$L300
$L299:
	jr	$31
$L300:
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
	btnez	$L304
$L303:
	jr	$31
$L304:
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
	b	$L307
$L309:
	addiu	$4,4
$L307:
	lw	$2,0($4)
	beqz	$2,$L308
	lw	$2,0($4)
	xor	$2,$5
	bnez	$2,$L309
$L308:
	lw	$2,0($4)
	beqz	$2,$L312
	move	$2,$4
$L312:
	jr	$31
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
	b	$L314
$L316:
	addiu	$4,4
	addiu	$5,4
$L314:
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L315
	lw	$2,0($4)
	beqz	$2,$L315
	lw	$2,0($5)
	bnez	$2,$L316
$L315:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L318
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L318:
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
$L320:
	lw	$6,0($5)
	sw	$6,0($3)
	addiu	$3,4
	addiu	$5,4
	bnez	$6,$L320
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
	b	$L322
$L323:
	addiu	$2,4
$L322:
	lw	$3,0($2)
	bnez	$3,$L323
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
$L325:
	beqz	$6,$L326
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L326
	lw	$2,0($4)
	beqz	$2,$L326
	lw	$2,0($5)
	beqz	$2,$L326
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	b	$L325
$L326:
	beqz	$6,$L329
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L330
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L329:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L330:
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
	b	$L332
$L334:
	addiu	$6,-1
	addiu	$4,4
$L332:
	beqz	$6,$L333
	lw	$3,0($4)
	xor	$3,$5
	bnez	$3,$L334
$L333:
	beqz	$6,$L337
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L337:
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
	b	$L339
$L341:
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
$L339:
	beqz	$6,$L340
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	beqz	$2,$L341
$L340:
	beqz	$6,$L343
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L344
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L343:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L344:
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
	b	$L346
$L347:
	lw	$4,0($5)
	sw	$4,0($3)
	addiu	$3,4
	addiu	$5,4
$L346:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L347
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
	bteqz	$L355
	subu	$4,$4,$5
	sll	$3,$6,2
	sltu	$4,$3
	btnez	$L350
	move	$3,$2
	b	$L351
$L350:
	sll	$6,$6,2
	addu	$3,$5,$6
	addu	$6,$2,$6
	addiu	$5,-4
	b	$L352
$L353:
	lw	$4,0($3)
	sw	$4,0($6)
$L352:
	addiu	$3,-4
	addiu	$6,-4
	cmp	$3,$5
	btnez	$L353
	jr	$31
$L354:
	lw	$4,0($5)
	sw	$4,0($3)
	addiu	$3,4
	addiu	$5,4
$L351:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L354
$L355:
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
	b	$L358
$L359:
	sw	$5,0($3)
	addiu	$3,4
$L358:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L359
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
	bteqz	$L361
	addu	$2,$4,$6
	addu	$5,$5,$6
	b	$L362
$L363:
	addiu	$2,-1
	addiu	$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
$L362:
	cmp	$2,$4
	btnez	$L363
	jr	$31
$L361:
	cmp	$4,$5
	bteqz	$L367
	move	$2,$5
	addu	$5,$5,$6
	b	$L365
$L366:
	lb	$3,0($4)
	sb	$3,0($2)
	addiu	$4,1
	addiu	$2,1
$L365:
	cmp	$2,$5
	btnez	$L366
$L367:
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
	lw	$2,$L382
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

	.type	__pool_bswap_32_382, @object
__pool_bswap_32_382:
	.align	2
$L382:
	.word	16711680
	.type	__pend_bswap_32_382, @object
__pend_bswap_32_382:
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
	ld	$2,$L385
	and	$2,$4
	dsrl	$2,40
	or	$2,$3
	ld	$3,$L386
	and	$3,$4
	dsrl	$3,24
	or	$2,$3
	ld	$3,$L387
	and	$3,$4
	dsrl	$3,8
	or	$2,$3
	ld	$3,$L388
	and	$3,$4
	dsll	$3,$3,8
	or	$2,$3
	ld	$3,$L389
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

	.type	__pool_bswap_64_385, @object
__pool_bswap_64_385:
	.align	3
$L385:
	.dword	71776119061217280
$L386:
	.dword	280375465082880
$L387:
	.dword	1095216660480
$L388:
	.dword	4278190080
$L389:
	.dword	16711680
	.type	__pend_bswap_64_385, @object
__pend_bswap_64_385:
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
$L391:
	cmpi	$2,32
	bteqz	$L395
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L396
	addiu	$2,1
	b	$L391
$L396:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,1
	.set	macro
	.set	reorder

$L395:
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
	beqz	$4,$L401
	li	$2,1
	b	$L399
$L400:
	sra	$4,$4,1
	addiu	$2,1
$L399:
	li	$3,1
	and	$3,$4
	beqz	$3,$L400
	jr	$31
$L401:
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
	lw	$2,$L407
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltsf2)($17)
	lw	$5,$L408
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L405
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$5,$L409
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
$L403:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L405:
	li	$2,1
	b	$L403
	.type	__pool_gl_isinff_407, @object
__pool_gl_isinff_407:
	.align	2
$L407:
	.word	__gnu_local_gp
$L408:
	.word	-8388609
$L409:
	.word	2139095039
	.type	__pend_gl_isinff_407, @object
__pend_gl_isinff_407:
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
	lw	$2,$L415
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L416
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L413
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L417
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
$L411:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L413:
	li	$2,1
	b	$L411
	.type	__pool_gl_isinfd_415, @object
__pool_gl_isinfd_415:
	.align	2
$L415:
	.word	__gnu_local_gp
	.align	3
$L416:
	.word	-1048577
	.word	-1
$L417:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_415, @object
__pend_gl_isinfd_415:
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
	lw	$2,$L423
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L424
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L421
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L425
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
$L419:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L421:
	li	$2,1
	b	$L419
	.type	__pool_gl_isinfl_423, @object
__pool_gl_isinfl_423:
	.align	2
$L423:
	.word	__gnu_local_gp
	.align	3
$L424:
	.word	-1048577
	.word	-1
$L425:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_423, @object
__pend_gl_isinfl_423:
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
	lw	$2,$L428
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

	.type	__pool__Qp_itoq_428, @object
__pool__Qp_itoq_428:
	.align	2
$L428:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_428, @object
__pend__Qp_itoq_428:
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
	lw	$2,$L439
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
	bnez	$2,$L430
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
	beqz	$2,$L430
	slt	$16,0
	btnez	$L438
	lw	$2,$L440
	sw	$2,40($sp)
	b	$L434
$L438:
	lw	$2,$L441
	sw	$2,40($sp)
	b	$L434
$L433:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L430
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
$L434:
	li	$2,1
	and	$2,$16
	beqz	$2,$L433
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
	b	$L433
$L430:
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

	.type	__pool_ldexpf_439, @object
__pool_ldexpf_439:
	.align	2
$L439:
	.word	__gnu_local_gp
$L440:
	.word	1073741824
$L441:
	.word	1056964608
	.type	__pend_ldexpf_439, @object
__pend_ldexpf_439:
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
	lw	$2,$L452
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
	bnez	$2,$L443
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
	beqz	$2,$L443
	slt	$16,0
	btnez	$L451
	ld	$2,$L453
	sd	$2,40($sp)
	b	$L447
$L451:
	ld	$2,$L454
	sd	$2,40($sp)
	b	$L447
$L446:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L443
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
$L447:
	li	$2,1
	and	$2,$16
	beqz	$2,$L446
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
	b	$L446
$L443:
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

	.type	__pool_ldexp_452, @object
__pool_ldexp_452:
	.align	2
$L452:
	.word	__gnu_local_gp
	.align	3
$L453:
	.word	1073741824
	.word	0
$L454:
	.word	1071644672
	.word	0
	.type	__pend_ldexp_452, @object
__pend_ldexp_452:
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
	lw	$2,$L465
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
	bnez	$2,$L456
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
	beqz	$2,$L456
	slt	$16,0
	btnez	$L464
	ld	$2,$L466
	sd	$2,40($sp)
	b	$L460
$L464:
	ld	$2,$L467
	sd	$2,40($sp)
	b	$L460
$L459:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L456
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
$L460:
	li	$2,1
	and	$2,$16
	beqz	$2,$L459
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
	b	$L459
$L456:
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

	.type	__pool_ldexpl_465, @object
__pool_ldexpl_465:
	.align	2
$L465:
	.word	__gnu_local_gp
	.align	3
$L466:
	.word	1073741824
	.word	0
$L467:
	.word	1071644672
	.word	0
	.type	__pend_ldexpl_465, @object
__pend_ldexpl_465:
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
	move	$3,$4
	addu	$6,$4,$6
	cmp	$4,$6
	bteqz	$L476
	addiu	$sp,-8
	sd	$16,0($sp)
$L470:
	lb	$16,0($5)
	lb	$7,0($3)
	xor	$7,$16
	sb	$7,0($3)
	addiu	$5,1
	addiu	$3,1
	cmp	$3,$6
	btnez	$L470
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L476:
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
	b	$L478
$L480:
	addiu	$17,1
	addiu	$2,1
	addiu	$16,-1
$L478:
	beqz	$16,$L479
	lb	$3,0($17)
	sb	$3,0($2)
	bnez	$3,$L480
$L479:
	bnez	$16,$L481
	li	$3,0
	sb	$3,0($2)
$L481:
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
$L484:
	cmp	$2,$5
	bteqz	$L487
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L486
$L487:
	jr	$31
$L486:
	addiu	$2,1
	b	$L484
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
$L489:
	lb	$2,0($4)
	beqz	$2,$L494
	move	$3,$5
$L492:
	lb	$6,0($3)
	beqz	$6,$L495
	lb	$6,0($3)
	lb	$7,0($4)
	addiu	$3,1
	xor	$6,$7
	bnez	$6,$L492
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L495:
	addiu	$4,1
	b	$L489
$L494:
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
	b	$L498
$L497:
	addiu	$4,1
	lb	$3,-1($4)
	beqz	$3,$L501
$L498:
	lb	$3,0($4)
	xor	$3,$5
	bnez	$3,$L497
	move	$2,$4
	b	$L497
$L501:
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
	beqz	$2,$L506
	lb	$2,0($17)
	sw	$2,40($sp)
$L504:
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
	beqz	$2,$L509
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

	beqz	$2,$L507
	addiu	$16,1
	b	$L504
$L509:
	li	$2,0
	b	$L503
$L506:
	move	$2,$16
$L503:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L507:
	move	$2,$16
	b	$L503
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
	lw	$2,$L525
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L526
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L524
$L511:
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L526
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L521
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L526
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L513
	move	$2,$16
$L514:
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

$L524:
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L526
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L511
$L513:
	ld	$2,$L527
	xor	$2,$16
	b	$L514
$L521:
	move	$2,$16
	b	$L514
	.type	__pool_copysign_525, @object
__pool_copysign_525:
	.align	2
$L525:
	.word	__gnu_local_gp
	.align	3
$L526:
	.word	0
	.word	0
$L527:
	.dword	-9223372036854775808
	.type	__pend_copysign_525, @object
__pend_copysign_525:
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
	sw	$7,96($sp)
	lw	$2,96($sp)
	subu	$2,$5,$2
	addu	$2,$4,$2
	sw	$2,40($sp)
	lw	$2,96($sp)
	beqz	$2,$L533
	move	$17,$6
	sltu	$5,$2
	bteqz	$L530
	li	$2,0
	b	$L529
$L531:
	addiu	$16,1
$L530:
	lw	$2,40($sp)
	sltu	$2,$16
	btnez	$L537
	lb	$2,0($16)
	lb	$3,0($17)
	xor	$2,$3
	bnez	$2,$L531
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

	bnez	$2,$L531
	move	$2,$16
	b	$L529
$L537:
	li	$2,0
$L529:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L533:
	move	$2,$4
	b	$L529
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
	lw	$2,$L540
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

	.type	__pool_mempcpy_540, @object
__pool_mempcpy_540:
	.align	2
$L540:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_540, @object
__pend_mempcpy_540:
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
	lw	$2,$L564
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,72($sp)
	sw	$5,80($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L565
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L562
	li	$2,0
	sw	$2,40($sp)
$L542:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L566
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L563
	li	$17,0
	b	$L544
$L562:
	ld	$2,$L567
	ld	$3,72($sp)
	xor	$3,$2
	sd	$3,72($sp)
	li	$2,1
	sw	$2,40($sp)
	b	$L542
$L546:
	addiu	$17,1
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,$L568
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
$L544:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L566
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L546
$L547:
	lw	$2,80($sp)
	sw	$17,0($2)
	lw	$2,40($sp)
	beqz	$2,$L551
	ld	$2,$L567
	ld	$3,72($sp)
	xor	$3,$2
	sd	$3,72($sp)
$L551:
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

$L563:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L568
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L560
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L565
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L555
	li	$17,0
	b	$L547
$L550:
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
$L549:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L568
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L550
	b	$L547
$L555:
	li	$17,0
	b	$L549
$L560:
	li	$17,0
	b	$L547
	.type	__pool_frexp_564, @object
__pool_frexp_564:
	.align	2
$L564:
	.word	__gnu_local_gp
	.align	3
$L565:
	.word	0
	.word	0
$L566:
	.word	1072693248
	.word	0
$L567:
	.dword	-9223372036854775808
$L568:
	.word	1071644672
	.word	0
	.type	__pend_frexp_564, @object
__pend_frexp_564:
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
	b	$L570
$L571:
	li	$6,1
	and	$6,$4
	li	$3,0
	dsubu	$3,$3,$6
	and	$3,$5
	dsrl	$4,1
	daddu	$2,$2,$3
	dsll	$5,$5,1
$L570:
	bnez	$4,$L571
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
	b	$L573
$L577:
	sll	$5,$5,1
	sll	$3,$3,1
$L573:
	sltu	$5,$4
	bteqz	$L583
	addiu	$7,-1
	beqz	$7,$L581
	slt	$5,0
	bteqz	$L577
	li	$2,0
	b	$L575
$L583:
	li	$2,0
	b	$L575
$L581:
	li	$2,0
	b	$L575
$L578:
	srl	$3,$3,1
	srl	$5,$5,1
$L575:
	beqz	$3,$L584
	sltu	$4,$5
	btnez	$L578
	subu	$4,$4,$5
	or	$2,$3
	b	$L578
$L584:
	bnez	$6,$L585
$L580:
	jr	$31
$L585:
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
	lw	$2,$L590
	move	$28,$2
	sw	$2,32($sp)
	sra	$2,$4,31
	xor	$4,$2
	beqz	$4,$L588
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
$L587:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L588:
	li	$2,7
	b	$L587
	.type	__pool___clrsbqi2_590, @object
__pool___clrsbqi2_590:
	.align	2
$L590:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_590, @object
__pend___clrsbqi2_590:
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
	lw	$2,$L595
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$4
	dsra	$2,63
	xor	$4,$2
	beqz	$4,$L593
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
$L592:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L593:
	li	$2,63
	b	$L592
	.type	__pool___clrsbdi2_595, @object
__pool___clrsbdi2_595:
	.align	2
$L595:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_595, @object
__pend___clrsbdi2_595:
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
	b	$L597
$L598:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	sll	$5,$5,1
$L597:
	bnez	$4,$L598
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
	bteqz	$L600
$L602:
	move	$3,$5
	move	$7,$4
	sll	$16,$16,3
	addu	$16,$16,$5
	b	$L601
$L600:
	addu	$3,$5,$6
	sltu	$3,$4
	btnez	$L602
	b	$L603
$L604:
	ld	$17,0($3)
	sd	$17,0($7)
	addiu	$3,8
	addiu	$7,8
$L601:
	cmp	$3,$16
	btnez	$L604
	b	$L605
$L606:
	addu	$3,$5,$2
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,1
$L605:
	sltu	$2,$6
	btnez	$L606
$L599:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L608:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L603:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L608
	b	$L599
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
	bteqz	$L611
$L613:
	move	$2,$5
	move	$3,$4
	sll	$16,$16,1
	addu	$16,$16,$5
	b	$L612
$L611:
	addu	$2,$5,$6
	sltu	$2,$4
	btnez	$L613
	b	$L614
$L615:
	lh	$7,0($2)
	sh	$7,0($3)
	addiu	$2,2
	addiu	$3,2
$L612:
	cmp	$2,$16
	btnez	$L615
	li	$2,1
	and	$2,$6
	beqz	$2,$L610
	addiu	$6,-1
	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	sb	$2,0($4)
$L610:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L617:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L614:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L617
	b	$L610
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
	bteqz	$L620
$L622:
	move	$3,$5
	move	$7,$4
	sll	$16,$16,2
	addu	$16,$16,$5
	b	$L621
$L620:
	addu	$3,$5,$6
	sltu	$3,$4
	btnez	$L622
	b	$L623
$L624:
	lw	$17,0($3)
	sw	$17,0($7)
	addiu	$3,4
	addiu	$7,4
$L621:
	cmp	$3,$16
	btnez	$L624
	b	$L625
$L626:
	addu	$3,$5,$2
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,1
$L625:
	sltu	$2,$6
	btnez	$L626
$L619:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L628:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L623:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L628
	b	$L619
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
	lw	$2,$L633
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

	.type	__pool___uitod_633, @object
__pool___uitod_633:
	.align	2
$L633:
	.word	__gnu_local_gp
	.type	__pend___uitod_633, @object
__pend___uitod_633:
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
	lw	$2,$L636
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

	.type	__pool___uitof_636, @object
__pool___uitof_636:
	.align	2
$L636:
	.word	__gnu_local_gp
	.type	__pend___uitof_636, @object
__pend___uitof_636:
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
	lw	$2,$L639
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

	.type	__pool___ulltod_639, @object
__pool___ulltod_639:
	.align	2
$L639:
	.word	__gnu_local_gp
	.type	__pend___ulltod_639, @object
__pend___ulltod_639:
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
	lw	$2,$L642
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

	.type	__pool___ulltof_642, @object
__pool___ulltof_642:
	.align	2
$L642:
	.word	__gnu_local_gp
	.type	__pend___ulltof_642, @object
__pend___ulltof_642:
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
$L645:
	cmpi	$2,16
	bteqz	$L648
	li	$5,15
	subu	$5,$5,$2
	move	$3,$4
	sra	$3,$5
	li	$5,1
	and	$3,$5
	bnez	$3,$L648
	addiu	$2,1
	b	$L645
$L648:
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
$L650:
	cmpi	$2,16
	bteqz	$L653
	move	$3,$4
	sra	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L653
	addiu	$2,1
	b	$L650
$L653:
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
	lw	$2,$L662
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	lw	$2,%call16(__mips16_gesf2)($16)
	lw	$5,$L663
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L661
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L657:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L661:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L663
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
	b	$L657
	.type	__pool___fixunssfsi_662, @object
__pool___fixunssfsi_662:
	.align	2
$L662:
	.word	__gnu_local_gp
$L663:
	.word	1191182336
	.type	__pend___fixunssfsi_662, @object
__pend___fixunssfsi_662:
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
	b	$L665
$L666:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	addiu	$3,1
	addu	$2,$5,$2
$L665:
	cmpi	$3,16
	btnez	$L666
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
	b	$L668
$L669:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	addiu	$3,1
	addu	$2,$5,$2
$L668:
	cmpi	$3,16
	btnez	$L669
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
	b	$L671
$L672:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$3,$2
	sll	$5,$5,1
$L671:
	bnez	$4,$L672
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
	beqz	$4,$L677
	li	$2,0
	b	$L675
$L676:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	srl	$5,$5,1
	addu	$2,$3,$2
	sll	$4,$4,1
$L675:
	bnez	$5,$L676
	jr	$31
$L677:
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
	b	$L679
$L683:
	sll	$5,$5,1
	sll	$3,$3,1
$L679:
	sltu	$5,$4
	bteqz	$L689
	addiu	$7,-1
	beqz	$7,$L687
	slt	$5,0
	bteqz	$L683
	li	$2,0
	b	$L681
$L689:
	li	$2,0
	b	$L681
$L687:
	li	$2,0
	b	$L681
$L684:
	srl	$3,$3,1
	srl	$5,$5,1
$L681:
	beqz	$3,$L690
	sltu	$4,$5
	btnez	$L684
	subu	$4,$4,$5
	or	$2,$3
	b	$L684
$L690:
	bnez	$6,$L691
$L686:
	jr	$31
$L691:
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
	lw	$2,$L697
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
	btnez	$L695
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
$L693:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L695:
	li	$2,1
	neg	$2,$2
	b	$L693
	.type	__pool___mspabi_cmpf_697, @object
__pool___mspabi_cmpf_697:
	.align	2
$L697:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_697, @object
__pend___mspabi_cmpf_697:
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
	lw	$2,$L703
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
	btnez	$L701
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
$L699:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L701:
	li	$2,1
	neg	$2,$2
	b	$L699
	.type	__pool___mspabi_cmpd_703, @object
__pool___mspabi_cmpd_703:
	.align	2
$L703:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_703, @object
__pend___mspabi_cmpd_703:
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
	btnez	$L714
	li	$7,0
$L707:
	li	$6,33
	li	$2,0
	b	$L708
$L714:
	neg	$5,$5
	li	$7,1
	b	$L707
$L710:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	sra	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
$L708:
	beqz	$5,$L709
	addiu	$6,-1
	zeb	$6
	bnez	$6,$L710
$L709:
	beqz	$7,$L715
	neg	$2,$2
$L715:
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
	btnez	$L722
	li	$16,0
$L717:
	slt	$5,0
	btnez	$L723
$L718:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,0
	.set	macro
	.set	reorder

	beqz	$16,$L719
	neg	$2,$2
$L719:
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

$L722:
	neg	$4,$4
	li	$16,1
	b	$L717
$L723:
	neg	$5,$5
	li	$2,1
	xor	$16,$2
	b	$L718
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
	move	$2,$5
	slt	$4,0
	btnez	$L730
	li	$16,0
$L725:
	move	$5,$2
	slt	$2,0
	btnez	$L731
$L726:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,1
	.set	macro
	.set	reorder

	beqz	$16,$L727
	neg	$2,$2
$L727:
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

$L730:
	neg	$4,$4
	li	$16,1
	b	$L725
$L731:
	neg	$5,$2
	b	$L726
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
$L733:
	sltu	$5,$4
	bteqz	$L743
	addiu	$2,-1
	beqz	$2,$L741
	move	$7,$5
	seh	$7
	slt	$7,0
	btnez	$L744
	sll	$5,$5,1
	zeh	$5
	sll	$3,$3,1
	zeh	$3
	b	$L733
$L743:
	li	$2,0
	b	$L735
$L741:
	li	$2,0
	b	$L735
$L744:
	li	$2,0
	b	$L735
$L738:
	srl	$3,$3,1
	srl	$5,$5,1
$L735:
	beqz	$3,$L745
	sltu	$4,$5
	btnez	$L738
	subu	$4,$4,$5
	zeh	$4
	or	$2,$3
	b	$L738
$L745:
	bnez	$6,$L746
$L740:
	jr	$31
$L746:
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
	li	$7,33
	li	$3,1
	b	$L748
$L752:
	sll	$5,$5,1
	sll	$3,$3,1
$L748:
	sltu	$5,$4
	bteqz	$L758
	addiu	$7,-1
	beqz	$7,$L756
	slt	$5,0
	bteqz	$L752
	li	$2,0
	b	$L750
$L758:
	li	$2,0
	b	$L750
$L756:
	li	$2,0
	b	$L750
$L753:
	srl	$3,$3,1
	srl	$5,$5,1
$L750:
	beqz	$3,$L759
	sltu	$4,$5
	btnez	$L753
	subu	$4,$4,$5
	or	$2,$3
	b	$L753
$L759:
	bnez	$6,$L760
$L755:
	jr	$31
$L760:
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
	beqz	$2,$L762
	sll	$4,$4,0
	sll	$4,$5
	dsll	$2,$4,32
	jr	$31
$L762:
	beqz	$5,$L765
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

$L765:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_767, @object
__pool___ashldi3_767:
	.align	2
$L767:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_767, @object
__pend___ashldi3_767:
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
	beqz	$2,$L769
	li	$2,0
	sd	$2,32($sp)
	move	$2,$5
	dsll	$2,$6
	sd	$2,24($sp)
$L770:
	ld	$2,24($sp)
	ld	$5,32($sp)
$L771:
	move	$3,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L769:
	beqz	$6,$L772
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
	b	$L770
$L772:
	move	$2,$4
	b	$L771
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
	beqz	$2,$L775
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

$L775:
	beqz	$5,$L778
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

$L778:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashrdi3_780, @object
__pool___ashrdi3_780:
	.align	2
$L780:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_780, @object
__pend___ashrdi3_780:
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
	beqz	$2,$L782
	move	$2,$4
	move	$3,$4
	dsra	$3,63
	sd	$3,24($sp)
	dsra	$2,$6
	sd	$2,32($sp)
$L783:
	ld	$2,24($sp)
	ld	$5,32($sp)
$L784:
	move	$3,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L782:
	beqz	$6,$L785
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
	b	$L783
$L785:
	move	$2,$4
	b	$L784
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
	ld	$2,$L789
	and	$16,$2
	move	$7,$4
	dsrl	$7,8
	ld	$2,$L790
	and	$7,$2
	dsll	$6,$4,8
	ld	$2,$L791
	and	$6,$2
	dsll	$5,$4,24
	ld	$2,$L792
	and	$5,$2
	dsll	$3,$4,40
	ld	$2,$L793
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

	.type	__pool___bswapdi2_789, @object
__pool___bswapdi2_789:
	.align	3
$L789:
	.dword	16711680
$L790:
	.dword	4278190080
$L791:
	.dword	1095216660480
$L792:
	.dword	280375465082880
$L793:
	.dword	71776119061217280
	.type	__pend___bswapdi2_789, @object
__pend___bswapdi2_789:
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
	lw	$6,$L796
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

	.type	__pool___bswapsi2_796, @object
__pool___bswapsi2_796:
	.align	2
$L796:
	.word	16711680
	.type	__pend___bswapsi2_796, @object
__pend___bswapsi2_796:
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
	lw	$2,$L799
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
	addu	$3,$3,$2
	li	$2,240
	and	$2,$4
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,2
	li	$5,4
	subu	$5,$5,$2
	srl	$4,$5
	addu	$3,$3,$2
	li	$2,12
	and	$2,$4
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,1
	li	$5,2
	subu	$6,$5,$2
	srl	$4,$6
	addu	$3,$3,$2
	move	$2,$4
	and	$2,$5
	sltu	$2,1
	move	$2,$24
	subu	$5,$5,$4
	neg	$2,$2
	and	$2,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$3,$2
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_799, @object
__pool___clzsi2_799:
	.align	2
$L799:
	.word	65536
	.type	__pend___clzsi2_799, @object
__pend___clzsi2_799:
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
	lw	$2,$L802
	move	$28,$2
	sw	$2,32($sp)
	move	$6,$4
	sd	$4,40($sp)
	sd	$5,48($sp)
	sltu	$4,1
	move	$16,$24
	neg	$16,$16
	move	$4,$16
	not	$3,$4
	and	$3,$6
	and	$4,$5
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
	and	$16,$3
	addu	$2,$2,$16
	ld	$7,64($sp)
	ld	$16,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool___clzti2_802, @object
__pool___clzti2_802:
	.align	2
$L802:
	.word	__gnu_local_gp
	.type	__pend___clzti2_802, @object
__pend___clzti2_802:
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
	btnez	$L805
	move	$2,$4
	dsra	$2,32
	move	$3,$5
	dsra	$3,32
	slt	$3,$2
	btnez	$L806
	sll	$3,$4,0
	sll	$2,$5,0
	sltu	$3,$2
	btnez	$L807
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$5,$4
	btnez	$L808
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L805:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L806:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L807:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L808:
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
	btnez	$L813
	slt	$6,$4
	btnez	$L814
	sltu	$5,$7
	btnez	$L815
	sltu	$7,$5
	btnez	$L816
	li	$2,1
	b	$L812
$L813:
	li	$2,0
$L812:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L814:
	li	$2,2
	b	$L812
$L815:
	li	$2,0
	b	$L812
$L816:
	li	$2,2
	b	$L812
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
	addu	$3,$3,$2
	li	$2,15
	and	$2,$4
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,2
	srl	$4,$2
	addu	$3,$3,$2
	li	$5,3
	move	$2,$4
	and	$2,$5
	sltu	$2,1
	move	$2,$24
	sll	$2,$2,1
	srl	$4,$2
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
	lw	$2,$L821
	move	$28,$2
	sw	$2,32($sp)
	sd	$4,40($sp)
	sd	$5,48($sp)
	sltu	$5,1
	move	$16,$24
	neg	$16,$16
	move	$2,$16
	and	$4,$2
	not	$2,$2
	and	$2,$5
	move	$5,$28
	lw	$5,%call16(__ctzdi2)($5)
	or	$4,$2
	.set	noreorder
	.set	nomacro
	jalr	$5
	move	$25,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	li	$3,64
	and	$16,$3
	addu	$2,$2,$16
	ld	$7,64($sp)
	ld	$16,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool___ctzti2_821, @object
__pool___ctzti2_821:
	.align	2
$L821:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_821, @object
__pend___ctzti2_821:
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
	lw	$2,$L827
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	sd	$4,40($sp)
	sd	$5,48($sp)
	bnez	$5,$L823
	beqz	$4,$L825
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
	b	$L824
$L823:
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
$L824:
	ld	$7,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L825:
	li	$2,0
	b	$L824
	.type	__pool___ffsti2_827, @object
__pool___ffsti2_827:
	.align	2
$L827:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_827, @object
__pend___ffsti2_827:
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
	beqz	$2,$L829
	dsrl	$4,32
	sll	$4,$4,0
	srl	$4,$5
	dsll	$2,$4,32
	dsrl	$2,32
	jr	$31
$L829:
	beqz	$5,$L832
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

$L832:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___lshrdi3_834, @object
__pool___lshrdi3_834:
	.align	2
$L834:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_834, @object
__pend___lshrdi3_834:
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
	beqz	$2,$L836
	li	$2,0
	sd	$2,24($sp)
	move	$2,$4
	dsrl	$2,$6
	sd	$2,32($sp)
$L837:
	ld	$2,24($sp)
	ld	$5,32($sp)
$L838:
	move	$3,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L836:
	beqz	$6,$L839
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
	b	$L837
$L839:
	move	$2,$4
	b	$L838
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

	sd	$3,80($sp)
	ld	$3,88($sp)
	dmult	$3,$17
	mflo	$3
	ld	$4,96($sp)
	dmult	$4,$16
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
	xor	$5,$4
	move	$2,$5
	dsra	$2,32
	sll	$5,$5,0
	xor	$5,$2
	srl	$2,$5,8
	srl	$2,$2,8
	xor	$5,$2
	srl	$2,$5,8
	xor	$5,$2
	srl	$2,$5,4
	xor	$5,$2
	li	$2,15
	and	$5,$2
	li	$2,27030
	sra	$2,$5
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
	ld	$3,$L857
	and	$2,$3
	dsubu	$4,$4,$2
	move	$2,$4
	dsrl	$2,2
	ld	$3,$L858
	and	$2,$3
	and	$4,$3
	daddu	$4,$2,$4
	move	$2,$4
	dsrl	$2,4
	daddu	$4,$2,$4
	ld	$2,$L859
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

	.type	__pool___popcountdi2_857, @object
__pool___popcountdi2_857:
	.align	3
$L857:
	.dword	6148914691236517205
$L858:
	.dword	3689348814741910323
$L859:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_857, @object
__pend___popcountdi2_857:
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
	lw	$3,$L862
	and	$2,$3
	subu	$4,$4,$2
	srl	$2,$4,2
	lw	$3,$L863
	and	$2,$3
	and	$4,$3
	addu	$4,$2,$4
	srl	$2,$4,4
	addu	$4,$2,$4
	lw	$2,$L864
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

	.type	__pool___popcountsi2_862, @object
__pool___popcountsi2_862:
	.align	2
$L862:
	.word	1431655765
$L863:
	.word	858993459
$L864:
	.word	252645135
	.type	__pend___popcountsi2_862, @object
__pend___popcountsi2_862:
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
	ld	$6,$L867
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
	ld	$6,$L868
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
	ld	$4,$L869
	and	$3,$4
	and	$2,$4
	daddu	$3,$3,$2
	sll	$2,$3,0
	dsrl	$3,32
	sll	$3,$3,0
	addu	$3,$3,$2
	srl	$2,$3,8
	srl	$2,$2,8
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	zeb	$2
	.set	macro
	.set	reorder

	.type	__pool___popcountti2_867, @object
__pool___popcountti2_867:
	.align	3
$L867:
	.dword	6148914691236517205
$L868:
	.dword	3689348814741910323
$L869:
	.dword	1085102592571150095
	.type	__pend___popcountti2_867, @object
__pend___popcountti2_867:
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
	lw	$2,$L877
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$4,80($sp)
	move	$16,$5
	srl	$2,$5,31
	sw	$2,48($sp)
	ld	$2,$L878
	sd	$2,40($sp)
	b	$L873
$L871:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L872
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
$L873:
	li	$2,1
	and	$2,$16
	beqz	$2,$L871
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
	b	$L871
$L872:
	lw	$2,48($sp)
	beqz	$2,$L875
	lw	$2,%call16(__mips16_divdf3)($17)
	ld	$4,$L878
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L874:
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

$L875:
	ld	$2,40($sp)
	b	$L874
	.type	__pool___powidf2_877, @object
__pool___powidf2_877:
	.align	2
$L877:
	.word	__gnu_local_gp
	.align	3
$L878:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_877, @object
__pend___powidf2_877:
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
	lw	$2,$L886
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sw	$4,72($sp)
	move	$16,$5
	srl	$2,$5,31
	sw	$2,44($sp)
	lw	$2,$L887
	sw	$2,40($sp)
	b	$L882
$L880:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L881
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
$L882:
	li	$2,1
	and	$2,$16
	beqz	$2,$L880
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
	b	$L880
$L881:
	lw	$2,44($sp)
	beqz	$2,$L884
	lw	$2,%call16(__mips16_divsf3)($17)
	lw	$4,$L887
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L883:
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

$L884:
	lw	$2,40($sp)
	b	$L883
	.type	__pool___powisf2_886, @object
__pool___powisf2_886:
	.align	2
$L886:
	.word	__gnu_local_gp
$L887:
	.word	1065353216
	.type	__pend___powisf2_886, @object
__pend___powisf2_886:
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
	btnez	$L890
	move	$3,$4
	dsrl	$3,32
	sll	$3,$3,0
	move	$2,$5
	dsrl	$2,32
	sll	$2,$2,0
	sltu	$2,$3
	btnez	$L891
	sll	$3,$4,0
	sll	$2,$5,0
	sltu	$3,$2
	btnez	$L892
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$5,$4
	btnez	$L893
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L890:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L891:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L892:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L893:
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
	btnez	$L898
	sltu	$6,$4
	btnez	$L899
	sltu	$5,$7
	btnez	$L900
	sltu	$7,$5
	btnez	$L901
	li	$2,1
	b	$L897
$L898:
	li	$2,0
$L897:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L899:
	li	$2,2
	b	$L897
$L900:
	li	$2,0
	b	$L897
$L901:
	li	$2,2
	b	$L897
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
