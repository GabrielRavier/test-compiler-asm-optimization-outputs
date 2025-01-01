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
$L34:
	addiu	$3,$6,1
	beqz	$3,$L38
	addu	$3,$4,$6
	lbu	$3,0($3)
	addiu	$7,$6,-1
	xor	$3,$5
	beqz	$3,$L39
	move	$6,$7
	b	$L34
$L39:
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$4,$6
	.set	macro
	.set	reorder

$L38:
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
	b	$L41
$L42:
	sb	$5,0($3)
	addiu	$3,1
$L41:
	cmp	$3,$6
	btnez	$L42
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
	b	$L44
$L45:
	addiu	$5,1
	addiu	$2,1
$L44:
	lb	$3,0($5)
	sb	$3,0($2)
	bnez	$3,$L45
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
	b	$L47
$L49:
	addiu	$2,1
$L47:
	lb	$3,0($2)
	beqz	$3,$L50
	lbu	$3,0($2)
	xor	$3,$5
	bnez	$3,$L49
$L50:
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
$L53:
	lb	$2,0($4)
	xor	$2,$5
	beqz	$2,$L54
	addiu	$4,1
	lb	$2,-1($4)
	bnez	$2,$L53
	jr	$31
$L54:
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
	b	$L56
$L58:
	addiu	$4,1
	addiu	$5,1
$L56:
	lb	$2,0($4)
	lb	$3,0($5)
	xor	$2,$3
	bnez	$2,$L57
	lb	$2,0($4)
	bnez	$2,$L58
$L57:
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
	b	$L60
$L61:
	addiu	$2,1
$L60:
	lb	$5,0($2)
	bnez	$5,$L61
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
	beqz	$6,$L67
	addiu	$6,-1
	addu	$3,$4,$6
$L64:
	lbu	$2,0($4)
	beqz	$2,$L65
	lbu	$2,0($5)
	beqz	$2,$L65
	cmp	$4,$3
	bteqz	$L65
	lbu	$2,0($4)
	lbu	$6,0($5)
	xor	$2,$6
	bnez	$2,$L65
	addiu	$4,1
	addiu	$5,1
	b	$L64
$L65:
	lbu	$2,0($4)
	lbu	$3,0($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L67:
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
	b	$L69
$L70:
	lb	$3,1($2)
	sb	$3,0($5)
	lb	$3,0($2)
	sb	$3,1($5)
	addiu	$5,2
	addiu	$2,2
$L69:
	addu	$3,$4,$6
	subu	$3,$3,$2
	slt	$3,2
	bteqz	$L70
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
	bteqz	$L75
	li	$2,9
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L75:
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
	btnez	$L79
	li	$2,127
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L79:
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
	bteqz	$L87
	addiu	$4,-9
	sltu	$4,5
	bteqz	$L88
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L87:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L88:
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
	bteqz	$L95
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

$L95:
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
	btnez	$L105
	sltu	$4,8232
	btnez	$L100
	addiu	$3,$4,-8234
	li	$2,47062
	sltu	$3,$2
	btnez	$L101
	li	$2,57344
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$2,8185
	btnez	$L102
	li	$2,65532
	neg	$2,$2
	addu	$2,$4,$2
	lw	$3,$L107
	sltu	$3,$2
	btnez	$L103
	li	$2,65534
	and	$4,$2
	cmp	$4,$2
	bteqz	$L104
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L105:
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
	li	$2,1
	.set	macro
	.set	reorder

$L103:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L104:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.type	__pool_iswprint_106, @object
__pool_iswprint_106:
	.align	2
$L106:
	.word	__gnu_local_gp
$L107:
	.word	1048579
	.type	__pend_iswprint_106, @object
__pend_iswprint_106:
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
	btnez	$L110
	li	$2,32
	or	$4,$2
	addiu	$4,-97
	sltu	$4,6
	bteqz	$L111
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
	lw	$2,$L121
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
	bnez	$2,$L116
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
	bnez	$2,$L117
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
	btnez	$L120
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
$L114:
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

$L116:
	move	$2,$16
	b	$L114
$L117:
	ld	$2,72($sp)
	b	$L114
$L120:
	ld	$2,$L122
	b	$L114
	.type	__pool_fdim_121, @object
__pool_fdim_121:
	.align	2
$L121:
	.word	__gnu_local_gp
	.align	3
$L122:
	.word	0
	.word	0
	.type	__pend_fdim_121, @object
__pend_fdim_121:
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
	bnez	$2,$L126
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
	bnez	$2,$L127
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
	btnez	$L130
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
$L124:
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

$L126:
	move	$2,$16
	b	$L124
$L127:
	lw	$2,72($sp)
	b	$L124
$L130:
	lw	$2,$L132
	b	$L124
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L143
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
	bnez	$2,$L137
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
	bnez	$2,$L138
	move	$2,$16
	dsrl	$2,63
	ld	$3,72($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L135
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L139
	ld	$2,72($sp)
$L134:
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

$L135:
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
	bteqz	$L142
	ld	$2,72($sp)
	b	$L134
$L137:
	ld	$2,72($sp)
	b	$L134
$L138:
	move	$2,$16
	b	$L134
$L139:
	move	$2,$16
	b	$L134
$L142:
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L154
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
	bnez	$2,$L148
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
	bnez	$2,$L149
	lw	$3,72($sp)
	xor	$3,$16
	lw	$2,$L155
	and	$2,$3
	beqz	$2,$L146
	lw	$2,$L155
	and	$2,$16
	beqz	$2,$L150
	lw	$2,72($sp)
$L145:
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

$L146:
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
	bteqz	$L153
	lw	$2,72($sp)
	b	$L145
$L148:
	lw	$2,72($sp)
	b	$L145
$L149:
	move	$2,$16
	b	$L145
$L150:
	move	$2,$16
	b	$L145
$L153:
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L166
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
	bnez	$2,$L160
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
	bnez	$2,$L161
	move	$2,$16
	dsrl	$2,63
	ld	$3,72($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L158
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L162
	ld	$2,72($sp)
$L157:
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

$L158:
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
	bteqz	$L165
	ld	$2,72($sp)
	b	$L157
$L160:
	ld	$2,72($sp)
	b	$L157
$L161:
	move	$2,$16
	b	$L157
$L162:
	move	$2,$16
	b	$L157
$L165:
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L177
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
	bnez	$2,$L171
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
	bnez	$2,$L172
	move	$2,$16
	dsrl	$2,63
	ld	$3,72($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L169
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L173
	move	$2,$16
$L168:
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

$L169:
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
	bteqz	$L176
	move	$2,$16
	b	$L168
$L171:
	ld	$2,72($sp)
	b	$L168
$L172:
	move	$2,$16
	b	$L168
$L173:
	ld	$2,72($sp)
	b	$L168
$L176:
	ld	$2,72($sp)
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L188
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
	bnez	$2,$L182
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
	bnez	$2,$L183
	lw	$3,72($sp)
	xor	$3,$16
	lw	$2,$L189
	and	$2,$3
	beqz	$2,$L180
	lw	$2,$L189
	and	$2,$16
	beqz	$2,$L184
	move	$2,$16
$L179:
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

$L180:
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
	bteqz	$L187
	move	$2,$16
	b	$L179
$L182:
	lw	$2,72($sp)
	b	$L179
$L183:
	move	$2,$16
	b	$L179
$L184:
	lw	$2,72($sp)
	b	$L179
$L187:
	lw	$2,72($sp)
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lw	$2,$L200
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
	bnez	$2,$L194
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
	bnez	$2,$L195
	move	$2,$16
	dsrl	$2,63
	ld	$3,72($sp)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L192
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L196
	move	$2,$16
$L191:
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

$L192:
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
	bteqz	$L199
	move	$2,$16
	b	$L191
$L194:
	ld	$2,72($sp)
	b	$L191
$L195:
	move	$2,$16
	b	$L191
$L196:
	ld	$2,72($sp)
	b	$L191
$L199:
	ld	$2,72($sp)
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
	lw	$3,$L209
	ld	$2,$L210
	ld	$4,0($3)
	dmult	$4,$2
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_209, @object
__pool_rand_209:
	.align	2
$L209:
	.word	seed
	.align	3
$L210:
	.dword	6364136223846793005
	.type	__pend_rand_209, @object
__pend_rand_209:
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
	beqz	$5,$L214
	lw	$2,0($5)
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	beqz	$2,$L215
	lw	$2,0($4)
	sw	$4,4($2)
$L215:
	jr	$31
$L214:
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
	beqz	$2,$L217
	lw	$2,0($4)
	lw	$3,4($4)
	sw	$3,4($2)
$L217:
	lw	$2,4($4)
	beqz	$2,$L219
	lw	$2,4($4)
	lw	$3,0($4)
	sw	$3,0($2)
$L219:
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
	lw	$2,$L226
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
	b	$L221
$L222:
	addiu	$16,1
$L221:
	lw	$2,40($sp)
	cmp	$16,$2
	bteqz	$L225
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
	bnez	$2,$L222
	lw	$2,96($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	b	$L223
$L225:
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
$L223:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool_lsearch_226, @object
__pool_lsearch_226:
	.align	2
$L226:
	.word	__gnu_local_gp
	.type	__pend_lsearch_226, @object
__pend_lsearch_226:
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
	b	$L228
$L229:
	addiu	$16,1
$L228:
	lw	$2,40($sp)
	cmp	$16,$2
	bteqz	$L232
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
	bnez	$2,$L229
	lw	$2,96($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	b	$L230
$L232:
	li	$2,0
$L230:
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
	btnez	$L235
$L234:
	jr	$31
$L235:
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
	b	$L237
$L238:
	addiu	$16,1
$L237:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L238
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L244
	cmpi	$2,45
	btnez	$L245
	li	$5,1
$L239:
	addiu	$16,1
$L240:
	li	$2,0
	b	$L241
$L244:
	li	$5,0
	b	$L239
$L245:
	li	$5,0
	b	$L240
$L242:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	subu	$2,$3,$2
	addiu	$16,1
$L241:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L242
	bnez	$5,$L243
	neg	$2,$2
$L243:
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
	b	$L248
$L249:
	addiu	$16,1
$L248:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L249
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L255
	cmpi	$2,45
	btnez	$L256
	li	$5,1
$L250:
	addiu	$16,1
$L251:
	li	$2,0
	b	$L252
$L255:
	li	$5,0
	b	$L250
$L256:
	li	$5,0
	b	$L251
$L253:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	subu	$2,$3,$2
	addiu	$16,1
$L252:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L253
	bnez	$5,$L254
	neg	$2,$2
$L254:
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
	b	$L259
$L260:
	addiu	$16,1
$L259:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L260
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L266
	cmpi	$2,45
	btnez	$L267
	li	$5,1
$L261:
	addiu	$16,1
$L262:
	li	$2,0
	b	$L263
$L266:
	li	$5,0
	b	$L261
$L267:
	li	$5,0
	b	$L262
$L264:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	dsubu	$2,$3,$2
	addiu	$16,1
$L263:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L264
	bnez	$5,$L265
	li	$3,0
	dsubu	$2,$3,$2
$L265:
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
	b	$L270
$L277:
	srl	$16,$16,1
$L270:
	beqz	$16,$L276
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
	btnez	$L277
	slt	$2,1
	btnez	$L275
	lw	$2,88($sp)
	addu	$2,$17,$2
	sw	$2,72($sp)
	srl	$2,$16,1
	addiu	$16,-1
	subu	$16,$16,$2
	b	$L270
$L276:
	li	$2,0
$L273:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L275:
	move	$2,$17
	b	$L273
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
	b	$L279
$L281:
	sra	$16,$16,1
$L279:
	beqz	$16,$L284
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

	beqz	$2,$L283
	slt	$2,1
	btnez	$L281
	lw	$2,96($sp)
	addu	$2,$17,$2
	sw	$2,40($sp)
	addiu	$16,-1
	b	$L281
$L284:
	li	$2,0
$L280:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L283:
	move	$2,$17
	b	$L280
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
	btnez	$L288
$L287:
	jr	$31
$L288:
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
	btnez	$L292
$L291:
	jr	$31
$L292:
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
	b	$L299
$L301:
	addiu	$4,4
$L299:
	lw	$2,0($4)
	beqz	$2,$L300
	lw	$2,0($4)
	xor	$2,$5
	bnez	$2,$L301
$L300:
	lw	$2,0($4)
	beqz	$2,$L303
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L303:
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
	b	$L305
$L307:
	addiu	$4,4
	addiu	$5,4
$L305:
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L306
	lw	$2,0($4)
	beqz	$2,$L306
	lw	$2,0($5)
	bnez	$2,$L307
$L306:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L309
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L309:
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
$L311:
	lw	$6,0($5)
	sw	$6,0($3)
	addiu	$3,4
	addiu	$5,4
	bnez	$6,$L311
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
	b	$L313
$L314:
	addiu	$2,4
$L313:
	lw	$3,0($2)
	bnez	$3,$L314
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
$L316:
	beqz	$6,$L317
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L317
	lw	$2,0($4)
	beqz	$2,$L317
	lw	$2,0($5)
	beqz	$2,$L317
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	b	$L316
$L317:
	beqz	$6,$L320
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L321
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L320:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L321:
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
	b	$L323
$L325:
	addiu	$6,-1
	addiu	$4,4
$L323:
	beqz	$6,$L324
	lw	$3,0($4)
	xor	$3,$5
	bnez	$3,$L325
$L324:
	beqz	$6,$L327
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L327:
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
	b	$L329
$L331:
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
$L329:
	beqz	$6,$L330
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	beqz	$2,$L331
$L330:
	beqz	$6,$L333
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L334
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L333:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L334:
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
	b	$L336
$L337:
	lw	$4,0($5)
	sw	$4,0($3)
	addiu	$3,4
	addiu	$5,4
$L336:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L337
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
	bteqz	$L345
	subu	$4,$4,$5
	sll	$3,$6,2
	sltu	$4,$3
	btnez	$L340
	move	$3,$2
	b	$L341
$L340:
	sll	$6,$6,2
	addu	$5,$5,$6
	addu	$6,$2,$6
	addiu	$4,$2,-4
	b	$L342
$L343:
	lw	$3,0($5)
	sw	$3,0($6)
$L342:
	addiu	$5,-4
	addiu	$6,-4
	cmp	$6,$4
	btnez	$L343
	jr	$31
$L344:
	lw	$4,0($5)
	sw	$4,0($3)
	addiu	$3,4
	addiu	$5,4
$L341:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L344
$L345:
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
	b	$L348
$L349:
	sw	$5,0($3)
	addiu	$3,4
$L348:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L349
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
	bteqz	$L351
	addu	$2,$4,$6
	addu	$5,$5,$6
	b	$L352
$L353:
	addiu	$2,-1
	addiu	$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
$L352:
	cmp	$2,$4
	btnez	$L353
	jr	$31
$L351:
	cmp	$4,$5
	bteqz	$L357
	move	$2,$5
	addu	$5,$5,$6
	b	$L355
$L356:
	lb	$3,0($4)
	sb	$3,0($2)
	addiu	$4,1
	addiu	$2,1
$L355:
	cmp	$2,$5
	btnez	$L356
$L357:
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
	lw	$2,$L371
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

	.type	__pool_bswap_32_371, @object
__pool_bswap_32_371:
	.align	2
$L371:
	.word	16711680
	.type	__pend_bswap_32_371, @object
__pend_bswap_32_371:
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
	ld	$2,$L373
	and	$2,$4
	dsrl	$2,40
	or	$2,$3
	ld	$3,$L374
	and	$3,$4
	dsrl	$3,24
	or	$2,$3
	ld	$3,$L375
	and	$3,$4
	dsrl	$3,8
	or	$2,$3
	ld	$3,$L376
	and	$3,$4
	dsll	$3,$3,8
	or	$2,$3
	ld	$3,$L377
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

	.type	__pool_bswap_64_373, @object
__pool_bswap_64_373:
	.align	3
$L373:
	.dword	71776119061217280
$L374:
	.dword	280375465082880
$L375:
	.dword	1095216660480
$L376:
	.dword	4278190080
$L377:
	.dword	16711680
	.type	__pend_bswap_64_373, @object
__pend_bswap_64_373:
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
$L379:
	cmpi	$2,32
	bteqz	$L383
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L384
	addiu	$2,1
	b	$L379
$L384:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,1
	.set	macro
	.set	reorder

$L383:
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
	beqz	$4,$L389
	li	$2,1
	b	$L387
$L388:
	sra	$4,$4,1
	addiu	$2,1
$L387:
	li	$3,1
	and	$3,$4
	beqz	$3,$L388
	jr	$31
$L389:
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
	lw	$2,$L396
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltsf2)($17)
	lw	$5,$L397
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L393
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$5,$L398
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
$L391:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L393:
	li	$2,1
	b	$L391
	.type	__pool_gl_isinff_396, @object
__pool_gl_isinff_396:
	.align	2
$L396:
	.word	__gnu_local_gp
$L397:
	.word	-8388609
$L398:
	.word	2139095039
	.type	__pend_gl_isinff_396, @object
__pend_gl_isinff_396:
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
	lw	$2,$L405
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L406
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L402
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L407
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
$L400:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L402:
	li	$2,1
	b	$L400
	.type	__pool_gl_isinfd_405, @object
__pool_gl_isinfd_405:
	.align	2
$L405:
	.word	__gnu_local_gp
	.align	3
$L406:
	.word	-1048577
	.word	-1
$L407:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_405, @object
__pend_gl_isinfd_405:
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
	lw	$2,$L414
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L415
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L411
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L416
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
$L409:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L411:
	li	$2,1
	b	$L409
	.type	__pool_gl_isinfl_414, @object
__pool_gl_isinfl_414:
	.align	2
$L414:
	.word	__gnu_local_gp
	.align	3
$L415:
	.word	-1048577
	.word	-1
$L416:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_414, @object
__pend_gl_isinfl_414:
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
	lw	$2,$L418
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

	.type	__pool__Qp_itoq_418, @object
__pool__Qp_itoq_418:
	.align	2
$L418:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_418, @object
__pend__Qp_itoq_418:
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
	lw	$2,$L428
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
	bnez	$2,$L420
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
	beqz	$2,$L420
	slt	$16,0
	btnez	$L427
	lw	$2,$L429
	sw	$2,40($sp)
	b	$L424
$L427:
	lw	$2,$L430
	sw	$2,40($sp)
	b	$L424
$L423:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L420
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
$L424:
	li	$2,1
	and	$2,$16
	beqz	$2,$L423
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
	b	$L423
$L420:
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

	.type	__pool_ldexpf_428, @object
__pool_ldexpf_428:
	.align	2
$L428:
	.word	__gnu_local_gp
$L429:
	.word	1073741824
$L430:
	.word	1056964608
	.type	__pend_ldexpf_428, @object
__pend_ldexpf_428:
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
	lw	$2,$L440
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
	bnez	$2,$L432
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
	beqz	$2,$L432
	slt	$16,0
	btnez	$L439
	ld	$2,$L441
	sd	$2,40($sp)
	b	$L436
$L439:
	ld	$2,$L442
	sd	$2,40($sp)
	b	$L436
$L435:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L432
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
$L436:
	li	$2,1
	and	$2,$16
	beqz	$2,$L435
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
	b	$L435
$L432:
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

	.type	__pool_ldexp_440, @object
__pool_ldexp_440:
	.align	2
$L440:
	.word	__gnu_local_gp
	.align	3
$L441:
	.word	1073741824
	.word	0
$L442:
	.word	1071644672
	.word	0
	.type	__pend_ldexp_440, @object
__pend_ldexp_440:
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
	bnez	$2,$L444
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
	beqz	$2,$L444
	slt	$16,0
	btnez	$L451
	ld	$2,$L453
	sd	$2,40($sp)
	b	$L448
$L451:
	ld	$2,$L454
	sd	$2,40($sp)
	b	$L448
$L447:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L444
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
$L448:
	li	$2,1
	and	$2,$16
	beqz	$2,$L447
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
	b	$L447
$L444:
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

	.type	__pool_ldexpl_452, @object
__pool_ldexpl_452:
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
	.type	__pend_ldexpl_452, @object
__pend_ldexpl_452:
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
	b	$L456
$L457:
	lb	$16,0($5)
	lb	$7,0($3)
	xor	$7,$16
	sb	$7,0($3)
	addiu	$5,1
	addiu	$3,1
$L456:
	cmp	$3,$6
	btnez	$L457
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
	b	$L459
$L461:
	addiu	$17,1
	addiu	$2,1
	addiu	$16,-1
$L459:
	beqz	$16,$L460
	lb	$3,0($17)
	sb	$3,0($2)
	bnez	$3,$L461
$L460:
	bnez	$16,$L462
	li	$3,0
	sb	$3,0($2)
$L462:
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
$L464:
	cmp	$2,$5
	bteqz	$L467
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L466
$L467:
	jr	$31
$L466:
	addiu	$2,1
	b	$L464
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
$L469:
	lb	$2,0($4)
	beqz	$2,$L474
	move	$3,$5
$L472:
	lb	$6,0($3)
	beqz	$6,$L475
	lb	$6,0($3)
	lb	$7,0($4)
	addiu	$3,1
	xor	$6,$7
	bnez	$6,$L472
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L475:
	addiu	$4,1
	b	$L469
$L474:
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
	b	$L478
$L477:
	addiu	$4,1
	lb	$3,-1($4)
	beqz	$3,$L481
$L478:
	lb	$3,0($4)
	xor	$3,$5
	bnez	$3,$L477
	move	$2,$4
	b	$L477
$L481:
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
	beqz	$2,$L486
	lb	$2,0($17)
	sw	$2,40($sp)
$L484:
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
	beqz	$2,$L488
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

	beqz	$2,$L487
	addiu	$16,1
	b	$L484
$L488:
	li	$2,0
	b	$L483
$L486:
	move	$2,$16
$L483:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L487:
	move	$2,$16
	b	$L483
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
	lw	$2,$L503
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L504
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L502
$L490:
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L504
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L500
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L504
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L492
	move	$2,$16
$L493:
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

$L502:
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L504
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L490
$L492:
	ld	$2,$L505
	xor	$2,$16
	b	$L493
$L500:
	move	$2,$16
	b	$L493
	.type	__pool_copysign_503, @object
__pool_copysign_503:
	.align	2
$L503:
	.word	__gnu_local_gp
	.align	3
$L504:
	.word	0
	.word	0
$L505:
	.dword	-9223372036854775808
	.type	__pend_copysign_503, @object
__pend_copysign_503:
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
	beqz	$2,$L511
	sltu	$5,$2
	bteqz	$L508
	li	$2,0
	b	$L507
$L509:
	addiu	$16,1
$L508:
	lw	$2,40($sp)
	sltu	$2,$16
	btnez	$L514
	lb	$2,0($16)
	lb	$3,0($17)
	xor	$2,$3
	bnez	$2,$L509
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

	bnez	$2,$L509
	move	$2,$16
	b	$L507
$L514:
	li	$2,0
$L507:
	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L511:
	move	$2,$4
	b	$L507
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
	lw	$2,$L516
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

	.type	__pool_mempcpy_516, @object
__pool_mempcpy_516:
	.align	2
$L516:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_516, @object
__pend_mempcpy_516:
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
	lw	$2,$L539
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,72($sp)
	sw	$5,80($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L540
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L537
	li	$2,0
	sw	$2,40($sp)
$L518:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L541
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L538
	li	$17,0
	b	$L520
$L537:
	ld	$2,$L542
	ld	$3,72($sp)
	xor	$3,$2
	sd	$3,72($sp)
	li	$2,1
	sw	$2,40($sp)
	b	$L518
$L522:
	addiu	$17,1
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,$L543
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
$L520:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L541
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L522
$L523:
	lw	$2,80($sp)
	sw	$17,0($2)
	lw	$2,40($sp)
	beqz	$2,$L527
	ld	$2,$L542
	ld	$3,72($sp)
	xor	$3,$2
	sd	$3,72($sp)
$L527:
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

$L538:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L543
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L536
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L540
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L531
	li	$17,0
	b	$L523
$L526:
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
$L525:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L543
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L526
	b	$L523
$L531:
	li	$17,0
	b	$L525
$L536:
	li	$17,0
	b	$L523
	.type	__pool_frexp_539, @object
__pool_frexp_539:
	.align	2
$L539:
	.word	__gnu_local_gp
	.align	3
$L540:
	.word	0
	.word	0
$L541:
	.word	1072693248
	.word	0
$L542:
	.dword	-9223372036854775808
$L543:
	.word	1071644672
	.word	0
	.type	__pend_frexp_539, @object
__pend_frexp_539:
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
	b	$L545
$L546:
	dsll	$5,$5,1
	dsrl	$4,1
$L545:
	beqz	$4,$L549
	li	$3,1
	and	$3,$4
	beqz	$3,$L546
	daddu	$2,$2,$5
	b	$L546
$L549:
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
	b	$L551
$L555:
	sll	$5,$5,1
	sll	$3,$3,1
$L551:
	sltu	$5,$4
	bteqz	$L561
	addiu	$7,-1
	beqz	$7,$L559
	slt	$5,0
	bteqz	$L555
	li	$2,0
	b	$L553
$L561:
	li	$2,0
	b	$L553
$L559:
	li	$2,0
	b	$L553
$L556:
	srl	$3,$3,1
	srl	$5,$5,1
$L553:
	beqz	$3,$L562
	sltu	$4,$5
	btnez	$L556
	subu	$4,$4,$5
	or	$2,$3
	b	$L556
$L562:
	bnez	$6,$L563
$L558:
	jr	$31
$L563:
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
	lw	$2,$L569
	move	$28,$2
	sw	$2,32($sp)
	slt	$4,0
	btnez	$L568
$L565:
	beqz	$4,$L567
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
$L566:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L568:
	not	$4,$4
	b	$L565
$L567:
	li	$2,7
	b	$L566
	.type	__pool___clrsbqi2_569, @object
__pool___clrsbqi2_569:
	.align	2
$L569:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_569, @object
__pend___clrsbqi2_569:
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
	lw	$2,$L575
	move	$28,$2
	sw	$2,32($sp)
	slt	$4,0
	btnez	$L574
$L571:
	beqz	$4,$L573
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
$L572:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L574:
	not	$4,$4
	b	$L571
$L573:
	li	$2,63
	b	$L572
	.type	__pool___clrsbdi2_575, @object
__pool___clrsbdi2_575:
	.align	2
$L575:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_575, @object
__pend___clrsbdi2_575:
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
	b	$L577
$L578:
	srl	$4,$4,1
	sll	$5,$5,1
$L577:
	beqz	$4,$L581
	li	$3,1
	and	$3,$4
	beqz	$3,$L578
	addu	$2,$2,$5
	b	$L578
$L581:
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
	btnez	$L583
	addu	$3,$5,$6
	sltu	$3,$4
	bteqz	$L584
$L583:
	move	$3,$5
	move	$7,$4
	sll	$16,$16,3
	addu	$16,$16,$5
	b	$L585
$L586:
	ld	$17,0($3)
	sd	$17,0($7)
	addiu	$3,8
	addiu	$7,8
$L585:
	cmp	$3,$16
	btnez	$L586
	b	$L587
$L588:
	addu	$3,$5,$2
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,1
$L587:
	sltu	$2,$6
	btnez	$L588
$L582:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L590:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L584:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L590
	b	$L582
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
	btnez	$L592
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L593
$L592:
	move	$2,$5
	move	$3,$4
	sll	$16,$16,1
	addu	$16,$16,$5
	b	$L594
$L595:
	lh	$7,0($2)
	sh	$7,0($3)
	addiu	$2,2
	addiu	$3,2
$L594:
	cmp	$2,$16
	btnez	$L595
	li	$2,1
	and	$2,$6
	beqz	$2,$L591
	addiu	$6,-1
	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	sb	$2,0($4)
$L591:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L597:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L593:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L597
	b	$L591
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
	btnez	$L599
	addu	$3,$5,$6
	sltu	$3,$4
	bteqz	$L600
$L599:
	move	$3,$5
	move	$7,$4
	sll	$16,$16,2
	addu	$16,$16,$5
	b	$L601
$L602:
	lw	$17,0($3)
	sw	$17,0($7)
	addiu	$3,4
	addiu	$7,4
$L601:
	cmp	$3,$16
	btnez	$L602
	b	$L603
$L604:
	addu	$3,$5,$2
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,1
$L603:
	sltu	$2,$6
	btnez	$L604
$L598:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L606:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L600:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L606
	b	$L598
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
	lw	$2,$L609
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

	.type	__pool___uitod_609, @object
__pool___uitod_609:
	.align	2
$L609:
	.word	__gnu_local_gp
	.type	__pend___uitod_609, @object
__pend___uitod_609:
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
	lw	$2,$L611
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

	.type	__pool___uitof_611, @object
__pool___uitof_611:
	.align	2
$L611:
	.word	__gnu_local_gp
	.type	__pend___uitof_611, @object
__pend___uitof_611:
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
	lw	$2,$L613
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

	.type	__pool___ulltod_613, @object
__pool___ulltod_613:
	.align	2
$L613:
	.word	__gnu_local_gp
	.type	__pend___ulltod_613, @object
__pend___ulltod_613:
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
	lw	$2,$L615
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

	.type	__pool___ulltof_615, @object
__pool___ulltof_615:
	.align	2
$L615:
	.word	__gnu_local_gp
	.type	__pend___ulltof_615, @object
__pend___ulltof_615:
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
$L618:
	cmpi	$2,16
	bteqz	$L621
	li	$5,15
	subu	$5,$5,$2
	move	$3,$4
	sra	$3,$5
	li	$5,1
	and	$3,$5
	bnez	$3,$L621
	addiu	$2,1
	b	$L618
$L621:
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
$L623:
	cmpi	$2,16
	bteqz	$L626
	move	$3,$4
	sra	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L626
	addiu	$2,1
	b	$L623
$L626:
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
	lw	$2,$L634
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	lw	$2,%call16(__mips16_gesf2)($16)
	lw	$5,$L635
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L633
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L630:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L633:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L635
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
	b	$L630
	.type	__pool___fixunssfsi_634, @object
__pool___fixunssfsi_634:
	.align	2
$L634:
	.word	__gnu_local_gp
$L635:
	.word	1191182336
	.type	__pend___fixunssfsi_634, @object
__pend___fixunssfsi_634:
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
	b	$L637
$L638:
	addiu	$3,1
$L637:
	cmpi	$3,16
	bteqz	$L640
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	beqz	$5,$L638
	addiu	$2,1
	b	$L638
$L640:
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
	b	$L642
$L643:
	addiu	$3,1
$L642:
	cmpi	$3,16
	bteqz	$L646
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	beqz	$5,$L643
	addiu	$2,1
	b	$L643
$L646:
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
	b	$L648
$L649:
	srl	$4,$4,1
	sll	$5,$5,1
$L648:
	beqz	$4,$L652
	li	$3,1
	and	$3,$4
	beqz	$3,$L649
	addu	$2,$2,$5
	b	$L649
$L652:
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
	beqz	$4,$L658
	li	$2,0
	b	$L655
$L656:
	sll	$4,$4,1
	srl	$5,$5,1
$L655:
	beqz	$5,$L660
	li	$3,1
	and	$3,$5
	beqz	$3,$L656
	addu	$2,$2,$4
	b	$L656
$L660:
	jr	$31
$L658:
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
	b	$L662
$L666:
	sll	$5,$5,1
	sll	$3,$3,1
$L662:
	sltu	$5,$4
	bteqz	$L672
	addiu	$7,-1
	beqz	$7,$L670
	slt	$5,0
	bteqz	$L666
	li	$2,0
	b	$L664
$L672:
	li	$2,0
	b	$L664
$L670:
	li	$2,0
	b	$L664
$L667:
	srl	$3,$3,1
	srl	$5,$5,1
$L664:
	beqz	$3,$L673
	sltu	$4,$5
	btnez	$L667
	subu	$4,$4,$5
	or	$2,$3
	b	$L667
$L673:
	bnez	$6,$L674
$L669:
	jr	$31
$L674:
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
	lw	$2,$L679
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
	btnez	$L677
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
$L676:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L677:
	li	$2,1
	neg	$2,$2
	b	$L676
	.type	__pool___mspabi_cmpf_679, @object
__pool___mspabi_cmpf_679:
	.align	2
$L679:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_679, @object
__pend___mspabi_cmpf_679:
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
	lw	$2,$L684
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
	btnez	$L682
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
$L681:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L682:
	li	$2,1
	neg	$2,$2
	b	$L681
	.type	__pool___mspabi_cmpd_684, @object
__pool___mspabi_cmpd_684:
	.align	2
$L684:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_684, @object
__pend___mspabi_cmpd_684:
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
	btnez	$L696
	li	$7,0
$L688:
	li	$3,33
	li	$2,0
	b	$L689
$L696:
	neg	$5,$5
	li	$7,1
	b	$L688
$L690:
	sll	$4,$4,1
	sra	$5,$5,1
$L689:
	beqz	$5,$L691
	addiu	$3,-1
	zeb	$3
	beqz	$3,$L691
	li	$6,1
	and	$6,$5
	beqz	$6,$L690
	addu	$2,$2,$4
	b	$L690
$L691:
	beqz	$7,$L697
	neg	$2,$2
$L697:
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
	btnez	$L703
	li	$16,0
$L699:
	slt	$5,0
	btnez	$L704
$L700:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,0
	.set	macro
	.set	reorder

	beqz	$16,$L701
	neg	$2,$2
$L701:
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

$L703:
	neg	$4,$4
	li	$16,1
	b	$L699
$L704:
	neg	$5,$5
	li	$2,1
	xor	$16,$2
	b	$L700
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
	btnez	$L710
	li	$16,0
$L706:
	slt	$5,0
	btnez	$L711
$L707:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,1
	.set	macro
	.set	reorder

	beqz	$16,$L708
	neg	$2,$2
$L708:
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

$L710:
	neg	$4,$4
	li	$16,1
	b	$L706
$L711:
	neg	$5,$5
	b	$L707
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
$L713:
	sltu	$5,$4
	bteqz	$L723
	addiu	$2,-1
	beqz	$2,$L721
	move	$7,$5
	seh	$7
	slt	$7,0
	btnez	$L724
	sll	$5,$5,1
	zeh	$5
	sll	$3,$3,1
	zeh	$3
	b	$L713
$L723:
	li	$2,0
	b	$L715
$L721:
	li	$2,0
	b	$L715
$L724:
	li	$2,0
	b	$L715
$L718:
	srl	$3,$3,1
	srl	$5,$5,1
$L715:
	beqz	$3,$L725
	sltu	$4,$5
	btnez	$L718
	subu	$4,$4,$5
	zeh	$4
	or	$2,$3
	b	$L718
$L725:
	bnez	$6,$L726
$L720:
	jr	$31
$L726:
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
	b	$L728
$L732:
	sll	$5,$5,1
	sll	$3,$3,1
$L728:
	sltu	$5,$4
	bteqz	$L738
	addiu	$7,-1
	beqz	$7,$L736
	slt	$5,0
	bteqz	$L732
	li	$2,0
	b	$L730
$L738:
	li	$2,0
	b	$L730
$L736:
	li	$2,0
	b	$L730
$L733:
	srl	$3,$3,1
	srl	$5,$5,1
$L730:
	beqz	$3,$L739
	sltu	$4,$5
	btnez	$L733
	subu	$4,$4,$5
	or	$2,$3
	b	$L733
$L739:
	bnez	$6,$L740
$L735:
	jr	$31
$L740:
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
	beqz	$2,$L742
	sll	$4,$4,0
	sll	$4,$5
	dsll	$2,$4,32
	jr	$31
$L742:
	beqz	$5,$L745
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

$L745:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_746, @object
__pool___ashldi3_746:
	.align	2
$L746:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_746, @object
__pend___ashldi3_746:
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
	beqz	$2,$L748
	li	$2,0
	sd	$2,32($sp)
	ld	$2,16($sp)
	dsll	$2,$6
	sd	$2,24($sp)
$L749:
	ld	$3,32($sp)
	ld	$2,24($sp)
$L750:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L748:
	beqz	$6,$L751
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
	b	$L749
$L751:
	move	$3,$5
	move	$2,$4
	b	$L750
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
	beqz	$2,$L753
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

$L753:
	beqz	$5,$L756
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

$L756:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashrdi3_757, @object
__pool___ashrdi3_757:
	.align	2
$L757:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_757, @object
__pend___ashrdi3_757:
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
	beqz	$2,$L759
	ld	$2,8($sp)
	move	$3,$2
	dsra	$3,63
	sd	$3,24($sp)
	dsra	$2,$6
	sd	$2,32($sp)
$L760:
	ld	$3,32($sp)
	ld	$2,24($sp)
$L761:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L759:
	beqz	$6,$L762
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
	b	$L760
$L762:
	move	$3,$5
	move	$2,$4
	b	$L761
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
	ld	$2,$L764
	and	$16,$2
	move	$7,$4
	dsrl	$7,8
	ld	$2,$L765
	and	$7,$2
	dsll	$6,$4,8
	ld	$2,$L766
	and	$6,$2
	dsll	$5,$4,24
	ld	$2,$L767
	and	$5,$2
	dsll	$3,$4,40
	ld	$2,$L768
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

	.type	__pool___bswapdi2_764, @object
__pool___bswapdi2_764:
	.align	3
$L764:
	.dword	16711680
$L765:
	.dword	4278190080
$L766:
	.dword	1095216660480
$L767:
	.dword	280375465082880
$L768:
	.dword	71776119061217280
	.type	__pend___bswapdi2_764, @object
__pend___bswapdi2_764:
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
	lw	$6,$L770
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

	.type	__pool___bswapsi2_770, @object
__pool___bswapsi2_770:
	.align	2
$L770:
	.word	16711680
	.type	__pend___bswapsi2_770, @object
__pend___bswapsi2_770:
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
	lw	$2,$L780
	sltu	$4,$2
	bteqz	$L776
	li	$2,16
$L772:
	li	$3,16
	subu	$3,$3,$2
	srl	$4,$3
	li	$3,65280
	and	$3,$4
	bnez	$3,$L777
	li	$5,8
$L773:
	li	$3,8
	subu	$3,$3,$5
	srl	$4,$3
	addu	$2,$2,$5
	li	$3,240
	and	$3,$4
	bnez	$3,$L778
	li	$5,4
$L774:
	li	$3,4
	subu	$3,$3,$5
	srl	$4,$3
	addu	$2,$2,$5
	li	$3,12
	and	$3,$4
	bnez	$3,$L779
	li	$5,2
$L775:
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

$L776:
	li	$2,0
	b	$L772
$L777:
	li	$5,0
	b	$L773
$L778:
	li	$5,0
	b	$L774
$L779:
	li	$5,0
	b	$L775
	.type	__pool___clzsi2_780, @object
__pool___clzsi2_780:
	.align	2
$L780:
	.word	65536
	.type	__pend___clzsi2_780, @object
__pend___clzsi2_780:
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
	lw	$2,$L782
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

	.type	__pool___clzti2_782, @object
__pool___clzti2_782:
	.align	2
$L782:
	.word	__gnu_local_gp
	.type	__pend___clzti2_782, @object
__pend___clzti2_782:
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
	btnez	$L785
	move	$2,$4
	dsra	$2,32
	move	$3,$5
	dsra	$3,32
	slt	$3,$2
	btnez	$L786
	sll	$3,$4,0
	sll	$2,$5,0
	sltu	$3,$2
	btnez	$L787
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$5,$4
	btnez	$L788
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L785:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L786:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L787:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L788:
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
	btnez	$L792
	ld	$2,8($sp)
	ld	$3,24($sp)
	slt	$3,$2
	btnez	$L793
	ld	$2,16($sp)
	ld	$3,32($sp)
	sltu	$2,$3
	btnez	$L794
	sltu	$3,$2
	btnez	$L795
	li	$2,1
	b	$L791
$L792:
	li	$2,0
$L791:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L793:
	li	$2,2
	b	$L791
$L794:
	li	$2,0
	b	$L791
$L795:
	li	$2,2
	b	$L791
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
	bnez	$2,$L801
	li	$3,16
$L797:
	srl	$4,$3
	move	$2,$4
	zeb	$2
	bnez	$2,$L802
	li	$2,8
$L798:
	srl	$4,$2
	addu	$3,$3,$2
	li	$2,15
	and	$2,$4
	bnez	$2,$L803
	li	$2,4
$L799:
	srl	$4,$2
	addu	$3,$3,$2
	li	$2,3
	and	$2,$4
	bnez	$2,$L804
	li	$2,2
$L800:
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

$L801:
	li	$3,0
	b	$L797
$L802:
	li	$2,0
	b	$L798
$L803:
	li	$2,0
	b	$L799
$L804:
	li	$2,0
	b	$L800
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
	lw	$2,$L806
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

	.type	__pool___ctzti2_806, @object
__pool___ctzti2_806:
	.align	2
$L806:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_806, @object
__pend___ctzti2_806:
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
	lw	$2,$L811
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	sd	$5,48($sp)
	sd	$4,40($sp)
	bnez	$5,$L808
	ld	$3,40($sp)
	beqz	$3,$L810
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
	b	$L809
$L808:
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
$L809:
	ld	$7,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L810:
	li	$2,0
	b	$L809
	.type	__pool___ffsti2_811, @object
__pool___ffsti2_811:
	.align	2
$L811:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_811, @object
__pend___ffsti2_811:
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
	beqz	$2,$L813
	dsrl	$4,32
	sll	$4,$4,0
	srl	$4,$5
	dsll	$2,$4,32
	dsrl	$2,32
	jr	$31
$L813:
	beqz	$5,$L816
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

$L816:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___lshrdi3_817, @object
__pool___lshrdi3_817:
	.align	2
$L817:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_817, @object
__pend___lshrdi3_817:
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
	beqz	$2,$L819
	li	$2,0
	sd	$2,24($sp)
	ld	$2,8($sp)
	dsrl	$2,$6
	sd	$2,32($sp)
$L820:
	ld	$3,32($sp)
	ld	$2,24($sp)
$L821:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L819:
	beqz	$6,$L822
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
	b	$L820
$L822:
	move	$3,$5
	move	$2,$4
	b	$L821
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
	ld	$3,$L833
	and	$2,$3
	dsubu	$4,$4,$2
	move	$2,$4
	dsrl	$2,2
	ld	$3,$L834
	and	$2,$3
	and	$4,$3
	daddu	$4,$2,$4
	move	$2,$4
	dsrl	$2,4
	daddu	$4,$2,$4
	ld	$2,$L835
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

	.type	__pool___popcountdi2_833, @object
__pool___popcountdi2_833:
	.align	3
$L833:
	.dword	6148914691236517205
$L834:
	.dword	3689348814741910323
$L835:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_833, @object
__pend___popcountdi2_833:
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
	lw	$3,$L837
	and	$2,$3
	subu	$4,$4,$2
	srl	$2,$4,2
	lw	$3,$L838
	and	$2,$3
	and	$4,$3
	addu	$4,$2,$4
	srl	$2,$4,4
	addu	$4,$2,$4
	lw	$2,$L839
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

	.type	__pool___popcountsi2_837, @object
__pool___popcountsi2_837:
	.align	2
$L837:
	.word	1431655765
$L838:
	.word	858993459
$L839:
	.word	252645135
	.type	__pend___popcountsi2_837, @object
__pend___popcountsi2_837:
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
	ld	$16,$L841
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
	ld	$16,$L842
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
	ld	$2,$L843
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

	.type	__pool___popcountti2_841, @object
__pool___popcountti2_841:
	.align	3
$L841:
	.dword	6148914691236517205
$L842:
	.dword	3689348814741910323
$L843:
	.dword	1085102592571150095
	.type	__pend___popcountti2_841, @object
__pend___popcountti2_841:
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
	lw	$2,$L850
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$4,80($sp)
	move	$16,$5
	srl	$2,$5,31
	sw	$2,48($sp)
	ld	$2,$L851
	sd	$2,40($sp)
	b	$L847
$L845:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L846
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
$L847:
	li	$2,1
	and	$2,$16
	beqz	$2,$L845
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
	b	$L845
$L846:
	lw	$2,48($sp)
	beqz	$2,$L849
	lw	$2,%call16(__mips16_divdf3)($17)
	ld	$4,$L851
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L848:
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

$L849:
	ld	$2,40($sp)
	b	$L848
	.type	__pool___powidf2_850, @object
__pool___powidf2_850:
	.align	2
$L850:
	.word	__gnu_local_gp
	.align	3
$L851:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_850, @object
__pend___powidf2_850:
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
	lw	$2,$L858
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sw	$4,72($sp)
	move	$16,$5
	srl	$2,$5,31
	sw	$2,44($sp)
	lw	$2,$L859
	sw	$2,40($sp)
	b	$L855
$L853:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L854
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
$L855:
	li	$2,1
	and	$2,$16
	beqz	$2,$L853
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
	b	$L853
$L854:
	lw	$2,44($sp)
	beqz	$2,$L857
	lw	$2,%call16(__mips16_divsf3)($17)
	lw	$4,$L859
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L856:
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

$L857:
	lw	$2,40($sp)
	b	$L856
	.type	__pool___powisf2_858, @object
__pool___powisf2_858:
	.align	2
$L858:
	.word	__gnu_local_gp
$L859:
	.word	1065353216
	.type	__pend___powisf2_858, @object
__pend___powisf2_858:
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
	btnez	$L862
	move	$3,$4
	dsrl	$3,32
	sll	$3,$3,0
	move	$2,$5
	dsrl	$2,32
	sll	$2,$2,0
	sltu	$2,$3
	btnez	$L863
	sll	$3,$4,0
	sll	$2,$5,0
	sltu	$3,$2
	btnez	$L864
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$5,$4
	btnez	$L865
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L862:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L863:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L864:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L865:
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
	btnez	$L869
	ld	$2,8($sp)
	ld	$3,24($sp)
	sltu	$3,$2
	btnez	$L870
	ld	$2,16($sp)
	ld	$3,32($sp)
	sltu	$2,$3
	btnez	$L871
	sltu	$3,$2
	btnez	$L872
	li	$2,1
	b	$L868
$L869:
	li	$2,0
$L868:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
	.set	macro
	.set	reorder

$L870:
	li	$2,2
	b	$L868
$L871:
	li	$2,0
	b	$L868
$L872:
	li	$2,2
	b	$L868
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
