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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sd	$4,8($17)
	sd	$5,16($17)
	ld	$3,16($17)
	ld	$2,8($17)
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
	jr	$31
	.end	make_ti
	.size	make_ti, .-make_ti
	.align	2
	.globl	make_tu
	.set	mips16
	.set	nomicromips
	.ent	make_tu
	.type	make_tu, @function
make_tu:
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sd	$4,8($17)
	sd	$5,16($17)
	ld	$3,16($17)
	ld	$2,8($17)
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
	jr	$31
	.end	make_tu
	.size	make_tu, .-make_tu
	.align	2
	.globl	memmove
	.set	mips16
	.set	nomicromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	sltu	$5,$2
	bteqz	$L4
	addu	$3,$5,$6
	addu	$6,$2,$6
	b	$L5
$L6:
	addiu	$3,-1
	addiu	$6,-1
	lb	$4,0($3)
	sb	$4,0($6)
$L5:
	cmp	$3,$5
	btnez	$L6
	b	$L7
$L4:
	cmp	$2,$5
	bteqz	$L7
	move	$3,$2
	addu	$6,$2,$6
	b	$L8
$L9:
	lb	$4,0($5)
	sb	$4,0($3)
	addiu	$3,1
	addiu	$5,1
$L8:
	cmp	$3,$6
	btnez	$L9
$L7:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	zeb	$6
	b	$L11
$L13:
	addiu	$7,-1
	addiu	$5,1
	addiu	$4,1
$L11:
	beqz	$7,$L12
	lbu	$2,0($5)
	sb	$2,0($4)
	lbu	$2,0($4)
	xor	$2,$6
	bnez	$2,$L13
$L12:
	beqz	$7,$L15
	addiu	$2,$4,1
	b	$L14
$L15:
	li	$2,0
$L14:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.set	mips16
	.set	nomicromips
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	zeb	$5
	b	$L17
$L19:
	addiu	$4,1
	addiu	$6,-1
$L17:
	beqz	$6,$L18
	lbu	$2,0($4)
	xor	$2,$5
	bnez	$2,$L19
$L18:
	beqz	$6,$L21
	move	$2,$4
	b	$L20
$L21:
	li	$2,0
$L20:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.set	mips16
	.set	nomicromips
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L23
$L25:
	addiu	$6,-1
	addiu	$4,1
	addiu	$5,1
$L23:
	beqz	$6,$L24
	lbu	$2,0($4)
	lbu	$3,0($5)
	xor	$2,$3
	beqz	$2,$L25
$L24:
	beqz	$6,$L27
	lbu	$2,0($4)
	lbu	$3,0($5)
	subu	$2,$2,$3
	b	$L26
$L27:
	li	$2,0
$L26:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.set	mips16
	.set	nomicromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	addu	$6,$2,$6
	b	$L29
$L30:
	lbu	$4,0($5)
	sb	$4,0($3)
	addiu	$3,1
	addiu	$5,1
$L29:
	cmp	$3,$6
	btnez	$L30
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	zeb	$5
	addiu	$6,-1
	b	$L32
$L34:
	addu	$2,$4,$6
	lbu	$2,0($2)
	addiu	$3,$6,-1
	xor	$2,$5
	bnez	$2,$L35
	addu	$2,$4,$6
	b	$L33
$L35:
	move	$6,$3
$L32:
	addiu	$2,$6,1
	bnez	$2,$L34
$L33:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	addu	$6,$2,$6
	move	$3,$2
	b	$L37
$L38:
	sb	$5,0($3)
	addiu	$3,1
$L37:
	cmp	$3,$6
	btnez	$L38
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	b	$L40
$L41:
	addiu	$5,1
	addiu	$2,1
$L40:
	lb	$3,0($5)
	sb	$3,0($2)
	lb	$3,0($2)
	bnez	$3,$L41
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	zeb	$5
	b	$L43
$L45:
	addiu	$2,1
$L43:
	lb	$3,0($2)
	beqz	$3,$L44
	lbu	$3,0($2)
	xor	$3,$5
	bnez	$3,$L45
$L44:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
$L48:
	move	$2,$4
	lb	$3,0($4)
	xor	$3,$5
	beqz	$3,$L47
	addiu	$4,1
	lb	$2,-1($4)
	bnez	$2,$L48
$L47:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L51
$L53:
	addiu	$4,1
	addiu	$5,1
$L51:
	lb	$2,0($4)
	lb	$3,0($5)
	xor	$2,$3
	bnez	$2,$L52
	lb	$2,0($4)
	bnez	$2,$L53
$L52:
	lbu	$2,0($4)
	lbu	$3,0($5)
	subu	$2,$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.set	mips16
	.set	nomicromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	b	$L55
$L56:
	addiu	$2,1
$L55:
	lb	$3,0($2)
	bnez	$3,$L56
	subu	$2,$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.set	mips16
	.set	nomicromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	beqz	$6,$L62
	addiu	$6,-1
	addu	$6,$4,$6
	b	$L59
$L61:
	addiu	$4,1
	addiu	$5,1
$L59:
	lbu	$2,0($4)
	beqz	$2,$L60
	lbu	$2,0($5)
	beqz	$2,$L60
	cmp	$4,$6
	bteqz	$L60
	lbu	$2,0($4)
	lbu	$3,0($5)
	xor	$2,$3
	beqz	$2,$L61
$L60:
	lbu	$2,0($4)
	lbu	$3,0($5)
	subu	$2,$2,$3
	b	$L58
$L62:
	li	$2,0
$L58:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.set	mips16
	.set	nomicromips
	.ent	swab
	.type	swab, @function
swab:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	b	$L64
$L65:
	lb	$3,1($2)
	sb	$3,0($5)
	lb	$3,0($2)
	sb	$3,1($5)
	addiu	$5,2
	addiu	$2,2
$L64:
	addu	$3,$4,$6
	subu	$3,$3,$2
	slt	$3,2
	bteqz	$L65
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,32
	or	$4,$2
	addiu	$4,-97
	sltu	$4,26
	move	$2,$24
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	isalpha
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.set	mips16
	.set	nomicromips
	.ent	isascii
	.type	isascii, @function
isascii:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sltu	$4,128
	move	$2,$24
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	isascii
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.set	mips16
	.set	nomicromips
	.ent	isblank
	.type	isblank, @function
isblank:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	cmpi	$4,32
	bteqz	$L70
	cmpi	$4,9
	btnez	$L71
	li	$2,1
	b	$L69
$L70:
	li	$2,1
	b	$L69
$L71:
	li	$2,0
$L69:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	isblank
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.set	mips16
	.set	nomicromips
	.ent	iscntrl
	.type	iscntrl, @function
iscntrl:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sltu	$4,32
	btnez	$L74
	cmpi	$4,127
	btnez	$L75
	li	$2,1
	b	$L73
$L74:
	li	$2,1
	b	$L73
$L75:
	li	$2,0
$L73:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.set	mips16
	.set	nomicromips
	.ent	isdigit
	.type	isdigit, @function
isdigit:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	addiu	$4,-48
	sltu	$4,10
	move	$2,$24
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	isdigit
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.set	mips16
	.set	nomicromips
	.ent	isgraph
	.type	isgraph, @function
isgraph:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	addiu	$4,-33
	sltu	$4,94
	move	$2,$24
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	isgraph
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.set	mips16
	.set	nomicromips
	.ent	islower
	.type	islower, @function
islower:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	addiu	$4,-97
	sltu	$4,26
	move	$2,$24
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	islower
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.set	mips16
	.set	nomicromips
	.ent	isprint
	.type	isprint, @function
isprint:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	addiu	$4,-32
	sltu	$4,95
	move	$2,$24
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	isprint
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.set	mips16
	.set	nomicromips
	.ent	isspace
	.type	isspace, @function
isspace:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	cmpi	$4,32
	bteqz	$L82
	addiu	$4,-9
	sltu	$4,5
	bteqz	$L83
	li	$2,1
	b	$L81
$L82:
	li	$2,1
	b	$L81
$L83:
	li	$2,0
$L81:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	isspace
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.set	mips16
	.set	nomicromips
	.ent	isupper
	.type	isupper, @function
isupper:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	addiu	$4,-65
	sltu	$4,26
	move	$2,$24
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	isupper
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.set	mips16
	.set	nomicromips
	.ent	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sltu	$4,32
	btnez	$L87
	addiu	$2,$4,-8
	addiu	$2,-119
	sltu	$2,33
	btnez	$L88
	addiu	$2,$4,-8232
	sltu	$2,2
	btnez	$L89
	li	$2,65529
	neg	$2,$2
	addu	$4,$4,$2
	sltu	$4,3
	bteqz	$L90
	li	$2,1
	b	$L86
$L87:
	li	$2,1
	b	$L86
$L88:
	li	$2,1
	b	$L86
$L89:
	li	$2,1
	b	$L86
$L90:
	li	$2,0
$L86:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.set	mips16
	.set	nomicromips
	.ent	iswdigit
	.type	iswdigit, @function
iswdigit:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	addiu	$4,-48
	sltu	$4,10
	move	$2,$24
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	iswdigit
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.set	mips16
	.set	nomicromips
	.ent	iswprint
	.type	iswprint, @function
iswprint:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sltu	$4,255
	bteqz	$L93
	addiu	$4,1
	li	$2,127
	and	$4,$2
	sltu	$4,33
	move	$2,$24
	li	$3,1
	xor	$2,$3
	b	$L94
$L93:
	sltu	$4,8232
	btnez	$L95
	addiu	$3,$4,-8234
	li	$2,47062
	sltu	$3,$2
	btnez	$L96
	li	$2,57344
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$2,8185
	btnez	$L97
	li	$2,65532
	neg	$2,$2
	addu	$2,$4,$2
	lw	$3,$L101
	sltu	$3,$2
	btnez	$L98
	li	$2,65534
	and	$4,$2
	cmp	$4,$2
	bteqz	$L99
	li	$2,1
	b	$L94
$L95:
	li	$2,1
	b	$L94
$L96:
	li	$2,1
	b	$L94
$L97:
	li	$2,1
	b	$L94
$L98:
	li	$2,0
	b	$L94
$L99:
	li	$2,0
$L94:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool_iswprint_100, @object
__pool_iswprint_100:
	.align	2
$L100:
	.word	__gnu_local_gp
$L101:
	.word	1048579
	.type	__pend_iswprint_100, @object
__pend_iswprint_100:
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.set	mips16
	.set	nomicromips
	.ent	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	addiu	$2,$4,-8
	addiu	$2,-40
	sltu	$2,10
	btnez	$L104
	li	$2,32
	or	$4,$2
	addiu	$4,-97
	sltu	$4,6
	bteqz	$L105
	li	$2,1
	b	$L103
$L104:
	li	$2,1
	b	$L103
$L105:
	li	$2,0
$L103:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.set	mips16
	.set	nomicromips
	.ent	toascii
	.type	toascii, @function
toascii:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,127
	and	$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L115
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	move	$5,$4
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L110
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L111
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,40($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	btnez	$L114
	lw	$16,%call16(__mips16_subdf3)($16)
	ld	$5,40($17)
	ld	$4,32($17)
	jalr	$16
	lw	$6,0($17)
	move	$28,$6
	b	$L108
$L110:
	ld	$2,32($17)
	b	$L108
$L111:
	ld	$2,40($17)
	b	$L108
$L114:
	ld	$2,$L116
$L108:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fdim_115, @object
__pool_fdim_115:
	.align	2
$L115:
	.word	__gnu_local_gp
	.align	3
$L116:
	.word	0
	.word	0
	.type	__pend_fdim_115, @object
__pend_fdim_115:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L125
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	sw	$5,40($17)
	lw	$2,%call16(__mips16_unordsf2)($16)
	move	$5,$4
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L120
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L121
	lw	$2,%call16(__mips16_gtsf2)($16)
	lw	$5,40($17)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	btnez	$L124
	lw	$16,%call16(__mips16_subsf3)($16)
	lw	$5,40($17)
	lw	$4,32($17)
	jalr	$16
	lw	$6,0($17)
	move	$28,$6
	b	$L118
$L120:
	lw	$2,32($17)
	b	$L118
$L121:
	lw	$2,40($17)
	b	$L118
$L124:
	lw	$2,$L126
$L118:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fdimf_125, @object
__pool_fdimf_125:
	.align	2
$L125:
	.word	__gnu_local_gp
$L126:
	.word	0
	.type	__pend_fdimf_125, @object
__pend_fdimf_125:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L137
	move	$28,$2
	sw	$2,0($17)
	move	$16,$4
	sd	$5,40($17)
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	move	$5,$16
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L131
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	ld	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L128
	move	$2,$16
	dsrl	$2,63
	ld	$3,40($17)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L129
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L128
	ld	$16,40($17)
	b	$L128
$L129:
	move	$2,$28
	lw	$2,%call16(__mips16_ltdf2)($2)
	ld	$5,40($17)
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L128
	ld	$16,40($17)
	b	$L128
$L131:
	ld	$16,40($17)
$L128:
	move	$2,$16
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fmax_137, @object
__pool_fmax_137:
	.align	2
$L137:
	.word	__gnu_local_gp
	.type	__pend_fmax_137, @object
__pend_fmax_137:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L148
	move	$28,$2
	sw	$2,0($17)
	move	$16,$4
	sw	$5,40($17)
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	move	$5,$16
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L142
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	lw	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L139
	lw	$2,$L149
	move	$3,$2
	and	$3,$16
	lw	$4,40($17)
	and	$2,$4
	xor	$2,$3
	beqz	$2,$L140
	lw	$2,$L149
	and	$2,$16
	beqz	$2,$L139
	lw	$16,40($17)
	b	$L139
$L140:
	move	$2,$28
	lw	$2,%call16(__mips16_ltsf2)($2)
	lw	$5,40($17)
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L139
	lw	$16,40($17)
	b	$L139
$L142:
	lw	$16,40($17)
$L139:
	move	$2,$16
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fmaxf_148, @object
__pool_fmaxf_148:
	.align	2
$L148:
	.word	__gnu_local_gp
$L149:
	.word	-2147483648
	.type	__pend_fmaxf_148, @object
__pend_fmaxf_148:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L160
	move	$28,$2
	sw	$2,0($17)
	move	$16,$4
	sd	$5,40($17)
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	move	$5,$16
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L154
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	ld	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L151
	move	$2,$16
	dsrl	$2,63
	ld	$3,40($17)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L152
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L151
	ld	$16,40($17)
	b	$L151
$L152:
	move	$2,$28
	lw	$2,%call16(__mips16_ltdf2)($2)
	ld	$5,40($17)
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L151
	ld	$16,40($17)
	b	$L151
$L154:
	ld	$16,40($17)
$L151:
	move	$2,$16
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fmaxl_160, @object
__pool_fmaxl_160:
	.align	2
$L160:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_160, @object
__pend_fmaxl_160:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L171
	move	$28,$2
	sw	$2,0($17)
	move	$16,$4
	sd	$5,40($17)
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	move	$5,$16
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L165
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	ld	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L162
	move	$2,$16
	dsrl	$2,63
	ld	$3,40($17)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L163
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L167
	b	$L162
$L163:
	move	$2,$28
	lw	$2,%call16(__mips16_ltdf2)($2)
	ld	$5,40($17)
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L170
	b	$L162
$L165:
	ld	$16,40($17)
	b	$L162
$L167:
	ld	$16,40($17)
	b	$L162
$L170:
	ld	$16,40($17)
$L162:
	move	$2,$16
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fmin_171, @object
__pool_fmin_171:
	.align	2
$L171:
	.word	__gnu_local_gp
	.type	__pend_fmin_171, @object
__pend_fmin_171:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L182
	move	$28,$2
	sw	$2,0($17)
	move	$16,$4
	sw	$5,40($17)
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	move	$5,$16
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L176
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	lw	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L173
	lw	$2,$L183
	move	$3,$2
	and	$3,$16
	lw	$4,40($17)
	and	$2,$4
	xor	$2,$3
	beqz	$2,$L174
	lw	$2,$L183
	and	$2,$16
	beqz	$2,$L178
	b	$L173
$L174:
	move	$2,$28
	lw	$2,%call16(__mips16_ltsf2)($2)
	lw	$5,40($17)
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L181
	b	$L173
$L176:
	lw	$16,40($17)
	b	$L173
$L178:
	lw	$16,40($17)
	b	$L173
$L181:
	lw	$16,40($17)
$L173:
	move	$2,$16
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fminf_182, @object
__pool_fminf_182:
	.align	2
$L182:
	.word	__gnu_local_gp
$L183:
	.word	-2147483648
	.type	__pend_fminf_182, @object
__pend_fminf_182:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L194
	move	$28,$2
	sw	$2,0($17)
	move	$16,$4
	sd	$5,40($17)
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	move	$5,$16
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L188
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	ld	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L185
	move	$2,$16
	dsrl	$2,63
	ld	$3,40($17)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L186
	move	$2,$16
	dsrl	$2,63
	beqz	$2,$L190
	b	$L185
$L186:
	move	$2,$28
	lw	$2,%call16(__mips16_ltdf2)($2)
	ld	$5,40($17)
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L193
	b	$L185
$L188:
	ld	$16,40($17)
	b	$L185
$L190:
	ld	$16,40($17)
	b	$L185
$L193:
	ld	$16,40($17)
$L185:
	move	$2,$16
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fminl_194, @object
__pool_fminl_194:
	.align	2
$L194:
	.word	__gnu_local_gp
	.type	__pend_fminl_194, @object
__pend_fminl_194:
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	lw	$2,$L198
	b	$L196
$L197:
	li	$5,63
	and	$5,$4
	lw	$3,$L199
	addu	$3,$3,$5
	lb	$3,0($3)
	sb	$3,0($2)
	addiu	$2,1
	srl	$4,$4,6
$L196:
	bnez	$4,$L197
	li	$3,0
	sb	$3,0($2)
	lw	$2,$L198
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool_l64a_198, @object
__pool_l64a_198:
	.align	2
$L198:
	.word	s.0
$L199:
	.word	digits
	.type	__pend_l64a_198, @object
__pend_l64a_198:
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	addiu	$4,-1
	dsll	$4,$4,32
	dsrl	$4,32
	lw	$2,$L201
	sd	$4,0($2)
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool_srand_201, @object
__pool_srand_201:
	.align	2
$L201:
	.word	seed
	.type	__pend_srand_201, @object
__pend_srand_201:
	.end	srand
	.size	srand, .-srand
	.align	2
	.globl	rand
	.set	mips16
	.set	nomicromips
	.ent	rand
	.type	rand, @function
rand:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	lw	$3,$L204
	ld	$2,$L205
	ld	$4,0($3)
	dmult	$4,$2
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	sll	$2,$2,0
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool_rand_203, @object
__pool_rand_203:
	.align	2
$L203:
	.word	__gnu_local_gp
$L204:
	.word	seed
	.align	3
$L205:
	.dword	6364136223846793005
	.type	__pend_rand_203, @object
__pend_rand_203:
	.end	rand
	.size	rand, .-rand
	.align	2
	.globl	insque
	.set	mips16
	.set	nomicromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	bnez	$5,$L207
	li	$2,0
	sw	$2,4($4)
	sw	$2,0($4)
	b	$L206
$L207:
	lw	$2,0($5)
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	beqz	$2,$L206
	lw	$2,0($4)
	sw	$4,4($2)
$L206:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	lw	$2,0($4)
	beqz	$2,$L210
	lw	$2,0($4)
	lw	$3,4($4)
	sw	$3,4($2)
$L210:
	lw	$2,4($4)
	beqz	$2,$L209
	lw	$2,4($4)
	lw	$3,0($4)
	sw	$3,0($2)
$L209:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L217
	move	$28,$2
	sw	$2,0($17)
	sw	$4,40($17)
	sw	$5,48($17)
	sw	$6,56($17)
	sw	$7,64($17)
	lw	$2,56($17)
	lw	$2,0($2)
	sw	$2,12($17)
	lw	$2,48($17)
	sw	$2,8($17)
	li	$16,0
	b	$L213
$L216:
	lw	$5,8($17)
	lw	$4,40($17)
	lw	$2,76($17)
	move	$25,$2
	lw	$2,76($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	lw	$3,8($17)
	lw	$4,64($17)
	addu	$3,$3,$4
	sw	$3,8($17)
	bnez	$2,$L214
	lw	$2,64($17)
	mult	$16,$2
	mflo	$2
	lw	$3,48($17)
	addu	$2,$3,$2
	b	$L215
$L214:
	addiu	$16,1
$L213:
	lw	$3,12($17)
	cmp	$16,$3
	btnez	$L216
	addiu	$2,$3,1
	lw	$4,56($17)
	sw	$2,0($4)
	lw	$2,64($17)
	mult	$2,$3
	mflo	$4
	lw	$2,48($17)
	addu	$4,$2,$4
	lw	$6,64($17)
	lw	$5,40($17)
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
$L215:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool_lsearch_217, @object
__pool_lsearch_217:
	.align	2
$L217:
	.word	__gnu_local_gp
	.type	__pend_lsearch_217, @object
__pend_lsearch_217:
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.set	mips16
	.set	nomicromips
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	sw	$4,40($17)
	sw	$5,48($17)
	sw	$7,64($17)
	lw	$2,0($6)
	sw	$2,12($17)
	lw	$2,48($17)
	sw	$2,8($17)
	li	$16,0
	b	$L219
$L222:
	lw	$5,8($17)
	lw	$4,40($17)
	lw	$2,76($17)
	move	$25,$2
	lw	$2,76($17)
	jalr	$2
	lw	$3,8($17)
	lw	$4,64($17)
	addu	$3,$3,$4
	sw	$3,8($17)
	bnez	$2,$L220
	lw	$2,64($17)
	mult	$16,$2
	mflo	$2
	lw	$3,48($17)
	addu	$2,$3,$2
	b	$L221
$L220:
	addiu	$16,1
$L219:
	lw	$2,12($17)
	cmp	$16,$2
	btnez	$L222
	li	$2,0
$L221:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.end	lfind
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.set	mips16
	.set	nomicromips
	.ent	abs
	.type	abs, @function
abs:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	slt	$2,0
	bteqz	$L224
	neg	$2,$2
$L224:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	move	$16,$4
	b	$L226
$L227:
	addiu	$16,1
$L226:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L227
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L233
	cmpi	$2,45
	btnez	$L234
	li	$4,1
	b	$L228
$L233:
	li	$4,0
$L228:
	addiu	$16,1
	b	$L229
$L234:
	li	$4,0
$L229:
	li	$2,0
	b	$L230
$L231:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$2,$3,1
	lb	$3,0($16)
	addiu	$3,-48
	subu	$2,$2,$3
	addiu	$16,1
$L230:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L231
	bnez	$4,$L232
	neg	$2,$2
$L232:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	mips16
	.set	nomicromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	move	$16,$4
	b	$L237
$L238:
	addiu	$16,1
$L237:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L238
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L244
	cmpi	$2,45
	btnez	$L245
	li	$4,1
	b	$L239
$L244:
	li	$4,0
$L239:
	addiu	$16,1
	b	$L240
$L245:
	li	$4,0
$L240:
	li	$2,0
	b	$L241
$L242:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$2,$3,1
	lb	$3,0($16)
	addiu	$3,-48
	subu	$2,$2,$3
	addiu	$16,1
$L241:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L242
	bnez	$4,$L243
	neg	$2,$2
$L243:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.end	atol
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.set	mips16
	.set	nomicromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	move	$16,$4
	b	$L248
$L249:
	addiu	$16,1
$L248:
	lb	$4,0($16)
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L249
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L255
	cmpi	$2,45
	btnez	$L256
	li	$4,1
	b	$L250
$L255:
	li	$4,0
$L250:
	addiu	$16,1
	b	$L251
$L256:
	li	$4,0
$L251:
	li	$2,0
	b	$L252
$L253:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$2,$3,1
	lb	$3,0($16)
	addiu	$3,-48
	dsubu	$2,$2,$3
	addiu	$16,1
$L252:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L253
	bnez	$4,$L254
	li	$3,0
	dsubu	$2,$3,$2
$L254:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.set	mips16
	.set	nomicromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	sw	$4,40($17)
	sw	$5,48($17)
	move	$16,$6
	sw	$7,64($17)
	b	$L259
$L263:
	srl	$2,$16,1
	lw	$3,64($17)
	mult	$2,$3
	mflo	$2
	lw	$3,48($17)
	addu	$2,$3,$2
	sw	$2,8($17)
	move	$5,$2
	lw	$4,40($17)
	lw	$2,76($17)
	move	$25,$2
	lw	$2,76($17)
	jalr	$2
	slt	$2,0
	bteqz	$L260
	srl	$16,$16,1
	b	$L259
$L260:
	slt	$2,1
	btnez	$L264
	lw	$2,8($17)
	lw	$3,64($17)
	addu	$2,$2,$3
	sw	$2,48($17)
	srl	$2,$16,1
	addiu	$16,-1
	subu	$16,$16,$2
$L259:
	bnez	$16,$L263
	li	$2,0
	b	$L262
$L264:
	lw	$2,8($17)
$L262:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.set	mips16
	.set	nomicromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	sw	$4,40($17)
	sw	$7,64($17)
	move	$16,$6
	sw	$5,12($17)
	b	$L266
$L269:
	sra	$2,$16,1
	lw	$3,64($17)
	mult	$2,$3
	mflo	$2
	lw	$3,12($17)
	addu	$2,$3,$2
	lw	$6,84($17)
	sw	$2,8($17)
	lw	$5,8($17)
	lw	$4,40($17)
	lw	$3,76($17)
	move	$25,$3
	lw	$3,76($17)
	jalr	$3
	beqz	$2,$L270
	slt	$2,1
	btnez	$L268
	lw	$2,8($17)
	lw	$3,64($17)
	addu	$2,$2,$3
	sw	$2,12($17)
	addiu	$16,-1
$L268:
	sra	$16,$16,1
$L266:
	bnez	$16,$L269
	li	$2,0
	b	$L267
$L270:
	lw	$2,8($17)
$L267:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.set	mips16
	.set	nomicromips
	.ent	div
	.type	div, @function
div:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	div	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	mfhi	$3
	mflo	$4
	div	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	sw	$4,0($2)
	sw	$3,4($2)
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	div
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.set	mips16
	.set	nomicromips
	.ent	imaxabs
	.type	imaxabs, @function
imaxabs:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	slt	$2,0
	bteqz	$L273
	li	$3,0
	dsubu	$2,$3,$2
$L273:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	ddiv	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	mfhi	$3
	mflo	$4
	ddiv	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	sd	$4,0($2)
	sd	$3,8($2)
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	imaxdiv
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.set	mips16
	.set	nomicromips
	.ent	labs
	.type	labs, @function
labs:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	slt	$2,0
	bteqz	$L276
	neg	$2,$2
$L276:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	div	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	mfhi	$3
	mflo	$4
	div	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	sw	$4,0($2)
	sw	$3,4($2)
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	ldiv
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.set	mips16
	.set	nomicromips
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	slt	$2,0
	bteqz	$L279
	li	$3,0
	dsubu	$2,$3,$2
$L279:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	ddiv	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	mfhi	$3
	mflo	$4
	ddiv	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	sd	$4,0($2)
	sd	$3,8($2)
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	lldiv
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.set	mips16
	.set	nomicromips
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L282
$L284:
	addiu	$4,4
$L282:
	lw	$2,0($4)
	beqz	$2,$L283
	lw	$2,0($4)
	xor	$2,$5
	bnez	$2,$L284
$L283:
	lw	$2,0($4)
	beqz	$2,$L286
	move	$2,$4
	b	$L285
$L286:
	li	$2,0
$L285:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L288
$L290:
	addiu	$4,4
	addiu	$5,4
$L288:
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L289
	lw	$2,0($4)
	beqz	$2,$L289
	lw	$2,0($5)
	bnez	$2,$L290
$L289:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L292
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	move	$2,$24
	b	$L291
$L292:
	li	$2,1
	neg	$2,$2
$L291:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.set	mips16
	.set	nomicromips
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
$L294:
	lw	$4,0($5)
	sw	$4,0($3)
	addiu	$3,4
	addiu	$5,4
	bnez	$4,$L294
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	b	$L296
$L297:
	addiu	$2,4
$L296:
	lw	$3,0($2)
	bnez	$3,$L297
	subu	$2,$2,$4
	sra	$2,$2,2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	wcslen
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.set	mips16
	.set	nomicromips
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L299
$L301:
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
$L299:
	beqz	$6,$L300
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L300
	lw	$2,0($4)
	beqz	$2,$L300
	lw	$2,0($5)
	bnez	$2,$L301
$L300:
	beqz	$6,$L303
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L304
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	move	$2,$24
	b	$L302
$L303:
	li	$2,0
	b	$L302
$L304:
	li	$2,1
	neg	$2,$2
$L302:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.set	mips16
	.set	nomicromips
	.ent	wmemchr
	.type	wmemchr, @function
wmemchr:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L306
$L308:
	addiu	$6,-1
	addiu	$4,4
$L306:
	beqz	$6,$L307
	lw	$2,0($4)
	xor	$2,$5
	bnez	$2,$L308
$L307:
	beqz	$6,$L310
	move	$2,$4
	b	$L309
$L310:
	li	$2,0
$L309:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.set	mips16
	.set	nomicromips
	.ent	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L312
$L314:
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
$L312:
	beqz	$6,$L313
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	beqz	$2,$L314
$L313:
	beqz	$6,$L316
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L317
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	move	$2,$24
	b	$L315
$L316:
	li	$2,0
	b	$L315
$L317:
	li	$2,1
	neg	$2,$2
$L315:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.set	mips16
	.set	nomicromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	b	$L319
$L320:
	lw	$4,0($5)
	sw	$4,0($3)
	addiu	$3,4
	addiu	$5,4
$L319:
	addiu	$6,-1
	addiu	$4,$6,1
	bnez	$4,$L320
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	cmp	$2,$5
	bteqz	$L322
	subu	$4,$2,$5
	sll	$3,$6,2
	sltu	$4,$3
	btnez	$L323
	move	$3,$2
	b	$L324
$L323:
	sll	$6,$6,2
	addu	$5,$5,$6
	addu	$6,$2,$6
	addiu	$3,$2,-4
	b	$L325
$L326:
	lw	$4,0($5)
	sw	$4,0($6)
$L325:
	addiu	$5,-4
	addiu	$6,-4
	cmp	$6,$3
	btnez	$L326
	b	$L322
$L327:
	lw	$4,0($5)
	sw	$4,0($3)
	addiu	$3,4
	addiu	$5,4
$L324:
	addiu	$6,-1
	addiu	$4,$6,1
	bnez	$4,$L327
$L322:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	b	$L329
$L330:
	sw	$5,0($3)
	addiu	$3,4
$L329:
	addiu	$6,-1
	addiu	$4,$6,1
	bnez	$4,$L330
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sltu	$4,$5
	bteqz	$L332
	addu	$2,$4,$6
	addu	$5,$5,$6
	b	$L333
$L334:
	addiu	$2,-1
	addiu	$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
$L333:
	cmp	$2,$4
	btnez	$L334
	b	$L331
$L332:
	cmp	$4,$5
	bteqz	$L331
	addu	$6,$5,$6
	b	$L336
$L337:
	lb	$2,0($4)
	sb	$2,0($5)
	addiu	$4,1
	addiu	$5,1
$L336:
	cmp	$5,$6
	btnez	$L337
$L331:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	dsll	$3,$5
	neg	$5,$5
	dsrl	$2,$5
	or	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	rotl64
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.set	mips16
	.set	nomicromips
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	dsrl	$3,$5
	neg	$5,$5
	dsll	$2,$5
	or	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	rotr64
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.set	mips16
	.set	nomicromips
	.ent	rotl32
	.type	rotl32, @function
rotl32:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	sll	$3,$5
	neg	$5,$5
	srl	$2,$5
	or	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	rotl32
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.set	mips16
	.set	nomicromips
	.ent	rotr32
	.type	rotr32, @function
rotr32:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	srl	$3,$5
	neg	$5,$5
	sll	$2,$5
	or	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	rotr32
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.set	mips16
	.set	nomicromips
	.ent	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	sll	$3,$5
	neg	$5,$5
	srl	$2,$5
	or	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.set	mips16
	.set	nomicromips
	.ent	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	srl	$3,$5
	neg	$5,$5
	sll	$2,$5
	or	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.set	mips16
	.set	nomicromips
	.ent	rotl16
	.type	rotl16, @function
rotl16:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$6,$4
	sll	$6,$5
	li	$3,16
	subu	$3,$3,$5
	move	$2,$4
	srl	$2,$3
	or	$2,$6
	zeh	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.set	mips16
	.set	nomicromips
	.ent	rotr16
	.type	rotr16, @function
rotr16:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$6,$4
	srl	$6,$5
	li	$3,16
	subu	$3,$3,$5
	move	$2,$4
	sll	$2,$3
	or	$2,$6
	zeh	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.set	mips16
	.set	nomicromips
	.ent	rotl8
	.type	rotl8, @function
rotl8:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$6,$4
	sll	$6,$5
	li	$3,8
	subu	$3,$3,$5
	move	$2,$4
	srl	$2,$3
	or	$2,$6
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.set	mips16
	.set	nomicromips
	.ent	rotr8
	.type	rotr8, @function
rotr8:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$6,$4
	srl	$6,$5
	li	$3,8
	subu	$3,$3,$5
	move	$2,$4
	sll	$2,$3
	or	$2,$6
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.set	mips16
	.set	nomicromips
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	srl	$2,$4,8
	zeb	$4
	sll	$4,$4,8
	or	$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.set	mips16
	.set	nomicromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	srl	$3,$4,24
	lw	$2,$L351
	and	$2,$4
	srl	$2,$2,8
	or	$2,$3
	li	$3,65280
	and	$3,$4
	sll	$3,$3,8
	or	$2,$3
	sll	$4,$4,24
	or	$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool_bswap_32_350, @object
__pool_bswap_32_350:
	.align	2
$L350:
	.word	__gnu_local_gp
$L351:
	.word	16711680
	.type	__pend_bswap_32_350, @object
__pend_bswap_32_350:
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.set	mips16
	.set	nomicromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$3,$4
	dsrl	$3,56
	ld	$2,$L354
	and	$2,$4
	dsrl	$2,40
	or	$2,$3
	ld	$3,$L355
	and	$3,$4
	dsrl	$3,24
	or	$2,$3
	ld	$3,$L356
	and	$3,$4
	dsrl	$3,8
	or	$2,$3
	ld	$3,$L357
	and	$3,$4
	dsll	$3,$3,8
	or	$2,$3
	ld	$3,$L358
	and	$3,$4
	dsll	$3,$3,24
	or	$2,$3
	li	$3,65280
	and	$3,$4
	dsll	$3,$3,40
	or	$2,$3
	dsll	$4,$4,56
	or	$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool_bswap_64_353, @object
__pool_bswap_64_353:
	.align	2
$L353:
	.word	__gnu_local_gp
	.align	3
$L354:
	.dword	71776119061217280
$L355:
	.dword	280375465082880
$L356:
	.dword	1095216660480
$L357:
	.dword	4278190080
$L358:
	.dword	16711680
	.type	__pend_bswap_64_353, @object
__pend_bswap_64_353:
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.set	mips16
	.set	nomicromips
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	b	$L360
$L363:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	beqz	$3,$L361
	addiu	$2,1
	b	$L362
$L361:
	addiu	$2,1
$L360:
	cmpi	$2,32
	btnez	$L363
	li	$2,0
$L362:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	ffs
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.set	mips16
	.set	nomicromips
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	beqz	$4,$L368
	li	$2,1
	b	$L366
$L367:
	sra	$4,$4,1
	addiu	$2,1
$L366:
	li	$3,1
	and	$3,$4
	beqz	$3,$L367
	b	$L365
$L368:
	li	$2,0
$L365:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L376
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	lw	$2,%call16(__mips16_ltsf2)($16)
	lw	$5,$L377
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L372
	lw	$16,%call16(__mips16_gtsf2)($16)
	lw	$5,$L378
	lw	$4,32($17)
	jalr	$16
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	btnez	$L375
	li	$2,1
	b	$L370
$L372:
	li	$2,1
	b	$L370
$L375:
	li	$2,0
$L370:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_gl_isinff_376, @object
__pool_gl_isinff_376:
	.align	2
$L376:
	.word	__gnu_local_gp
$L377:
	.word	-8388609
$L378:
	.word	2139095039
	.type	__pend_gl_isinff_376, @object
__pend_gl_isinff_376:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L386
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L387
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L382
	lw	$16,%call16(__mips16_gtdf2)($16)
	ld	$5,$L388
	ld	$4,32($17)
	jalr	$16
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	btnez	$L385
	li	$2,1
	b	$L380
$L382:
	li	$2,1
	b	$L380
$L385:
	li	$2,0
$L380:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_gl_isinfd_386, @object
__pool_gl_isinfd_386:
	.align	2
$L386:
	.word	__gnu_local_gp
	.align	3
$L387:
	.word	-1048577
	.word	-1
$L388:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_386, @object
__pend_gl_isinfd_386:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L396
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L397
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L392
	lw	$16,%call16(__mips16_gtdf2)($16)
	ld	$5,$L398
	ld	$4,32($17)
	jalr	$16
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	btnez	$L395
	li	$2,1
	b	$L390
$L392:
	li	$2,1
	b	$L390
$L395:
	li	$2,0
$L390:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_gl_isinfl_396, @object
__pool_gl_isinfl_396:
	.align	2
$L396:
	.word	__gnu_local_gp
	.align	3
$L397:
	.word	-1048577
	.word	-1
$L398:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_396, @object
__pend_gl_isinfl_396:
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.set	mips16
	.set	nomicromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L400
	move	$28,$2
	sw	$2,0($17)
	move	$16,$4
	move	$4,$5
	move	$2,$28
	lw	$2,%call16(__mips16_floatsidf)($2)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,0($16)
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool__Qp_itoq_400, @object
__pool__Qp_itoq_400:
	.align	2
$L400:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_400, @object
__pend__Qp_itoq_400:
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L409
	move	$28,$2
	sw	$2,0($17)
	sw	$4,40($17)
	move	$16,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	move	$5,$4
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L402
	move	$2,$28
	lw	$2,%call16(__mips16_addsf3)($2)
	lw	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$5,$2
	move	$2,$28
	lw	$2,%call16(__mips16_nesf2)($2)
	lw	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L402
	slt	$16,0
	bteqz	$L407
	lw	$2,$L410
	sw	$2,8($17)
	b	$L406
$L407:
	lw	$2,$L411
	sw	$2,8($17)
$L406:
	li	$2,1
	and	$2,$16
	beqz	$2,$L405
	move	$2,$28
	lw	$2,%call16(__mips16_mulsf3)($2)
	lw	$5,8($17)
	lw	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sw	$2,40($17)
$L405:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L402
	move	$2,$28
	lw	$2,%call16(__mips16_mulsf3)($2)
	lw	$4,8($17)
	move	$5,$4
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sw	$2,8($17)
	b	$L406
$L402:
	lw	$2,40($17)
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool_ldexpf_409, @object
__pool_ldexpf_409:
	.align	2
$L409:
	.word	__gnu_local_gp
$L410:
	.word	1056964608
$L411:
	.word	1073741824
	.type	__pend_ldexpf_409, @object
__pend_ldexpf_409:
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L420
	move	$28,$2
	sw	$2,0($17)
	sd	$4,40($17)
	move	$16,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	move	$5,$4
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L413
	move	$2,$28
	lw	$2,%call16(__mips16_adddf3)($2)
	ld	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$5,$2
	move	$2,$28
	lw	$2,%call16(__mips16_nedf2)($2)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L413
	slt	$16,0
	bteqz	$L418
	ld	$2,$L421
	sd	$2,8($17)
	b	$L417
$L418:
	ld	$2,$L422
	sd	$2,8($17)
$L417:
	li	$2,1
	and	$2,$16
	beqz	$2,$L416
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$5,8($17)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,40($17)
$L416:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L413
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$4,8($17)
	move	$5,$4
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,8($17)
	b	$L417
$L413:
	ld	$2,40($17)
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool_ldexp_420, @object
__pool_ldexp_420:
	.align	2
$L420:
	.word	__gnu_local_gp
	.align	3
$L421:
	.word	1071644672
	.word	0
$L422:
	.word	1073741824
	.word	0
	.type	__pend_ldexp_420, @object
__pend_ldexp_420:
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L431
	move	$28,$2
	sw	$2,0($17)
	sd	$4,40($17)
	move	$16,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	move	$5,$4
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L424
	move	$2,$28
	lw	$2,%call16(__mips16_adddf3)($2)
	ld	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$5,$2
	move	$2,$28
	lw	$2,%call16(__mips16_nedf2)($2)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L424
	slt	$16,0
	bteqz	$L429
	ld	$2,$L432
	sd	$2,8($17)
	b	$L428
$L429:
	ld	$2,$L433
	sd	$2,8($17)
$L428:
	li	$2,1
	and	$2,$16
	beqz	$2,$L427
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$5,8($17)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,40($17)
$L427:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L424
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$4,8($17)
	move	$5,$4
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,8($17)
	b	$L428
$L424:
	ld	$2,40($17)
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool_ldexpl_431, @object
__pool_ldexpl_431:
	.align	2
$L431:
	.word	__gnu_local_gp
	.align	3
$L432:
	.word	1071644672
	.word	0
$L433:
	.word	1073741824
	.word	0
	.type	__pend_ldexpl_431, @object
__pend_ldexpl_431:
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.set	mips16
	.set	nomicromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	addu	$6,$2,$6
	b	$L435
$L436:
	lb	$7,0($5)
	lb	$4,0($3)
	xor	$4,$7
	sb	$4,0($3)
	addiu	$5,1
	addiu	$3,1
$L435:
	cmp	$3,$6
	btnez	$L436
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	sw	$4,32($17)
	sw	$5,40($17)
	move	$16,$6
	.option	pic0
	jal	strlen
	.option	pic2
	lw	$3,32($17)
	addu	$2,$3,$2
	b	$L438
$L440:
	lw	$3,40($17)
	addiu	$3,1
	sw	$3,40($17)
	addiu	$2,1
	addiu	$16,-1
$L438:
	beqz	$16,$L439
	lw	$3,40($17)
	lb	$3,0($3)
	sb	$3,0($2)
	lb	$3,0($2)
	bnez	$3,$L440
$L439:
	bnez	$16,$L441
	li	$3,0
	sb	$3,0($2)
$L441:
	lw	$2,32($17)
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.set	mips16
	.set	nomicromips
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	b	$L443
$L445:
	addiu	$2,1
$L443:
	cmp	$2,$5
	bteqz	$L444
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L445
$L444:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L447
$L449:
	lb	$3,0($2)
	lb	$6,0($4)
	addiu	$2,1
	xor	$3,$6
	beqz	$3,$L451
$L450:
	lb	$3,0($2)
	bnez	$3,$L449
	addiu	$4,1
$L447:
	lb	$2,0($4)
	beqz	$2,$L452
	move	$2,$5
	b	$L450
$L451:
	move	$2,$4
	b	$L448
$L452:
	li	$2,0
$L448:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.set	mips16
	.set	nomicromips
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
$L455:
	move	$6,$4
	lb	$3,0($4)
	xor	$3,$5
	bnez	$3,$L454
	move	$2,$6
$L454:
	addiu	$4,1
	lb	$3,-1($4)
	bnez	$3,$L455
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	move	$16,$4
	sw	$5,48($17)
	lw	$4,48($17)
	.option	pic0
	jal	strlen
	.option	pic2
	sw	$2,12($17)
	beqz	$2,$L458
	lw	$2,48($17)
	lb	$2,0($2)
	sw	$2,8($17)
	b	$L459
$L460:
	lw	$6,12($17)
	lw	$5,48($17)
	move	$4,$16
	.option	pic0
	jal	strncmp
	.option	pic2
	beqz	$2,$L458
	addiu	$16,1
$L459:
	lw	$5,8($17)
	move	$4,$16
	.option	pic0
	jal	strchr
	.option	pic2
	move	$16,$2
	bnez	$16,$L460
$L458:
	move	$2,$16
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L476
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L477
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L464
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L477
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	bteqz	$L466
$L464:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L477
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	btnez	$L474
	lw	$16,%call16(__mips16_ltdf2)($16)
	ld	$5,$L477
	ld	$4,40($17)
	jalr	$16
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L475
$L466:
	ld	$2,$L478
	ld	$3,32($17)
	xor	$2,$3
	b	$L467
$L474:
	ld	$2,32($17)
	b	$L467
$L475:
	ld	$2,32($17)
$L467:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_copysign_476, @object
__pool_copysign_476:
	.align	2
$L476:
	.word	__gnu_local_gp
	.align	3
$L477:
	.word	0
	.word	0
$L478:
	.dword	-9223372036854775808
	.type	__pend_copysign_476, @object
__pend_copysign_476:
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	mips16
	.set	nomicromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	move	$16,$4
	sw	$6,56($17)
	sw	$7,64($17)
	lw	$2,64($17)
	subu	$2,$5,$2
	addu	$2,$16,$2
	sw	$2,8($17)
	lw	$2,64($17)
	beqz	$2,$L484
	sltu	$5,$2
	btnez	$L485
	b	$L481
$L483:
	lb	$2,0($16)
	lw	$3,56($17)
	lb	$3,0($3)
	xor	$2,$3
	bnez	$2,$L482
	addiu	$4,$16,1
	lw	$2,64($17)
	addiu	$6,$2,-1
	lw	$2,56($17)
	addiu	$5,$2,1
	.option	pic0
	jal	memcmp
	.option	pic2
	beqz	$2,$L486
$L482:
	addiu	$16,1
$L481:
	lw	$2,8($17)
	sltu	$2,$16
	bteqz	$L483
	li	$2,0
	b	$L480
$L484:
	move	$2,$16
	b	$L480
$L485:
	li	$2,0
	b	$L480
$L486:
	move	$2,$16
$L480:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.set	mips16
	.set	nomicromips
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L488
	move	$28,$2
	sw	$2,0($17)
	move	$16,$6
	move	$6,$16
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	addu	$2,$2,$16
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_mempcpy_488, @object
__pool_mempcpy_488:
	.align	2
$L488:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_488, @object
__pend_mempcpy_488:
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L509
	move	$28,$2
	sw	$2,0($17)
	move	$16,$4
	sw	$5,48($17)
	move	$2,$28
	lw	$2,%call16(__mips16_ltdf2)($2)
	ld	$5,$L510
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L506
	ld	$2,$L511
	xor	$16,$2
	li	$2,1
	sw	$2,12($17)
	b	$L490
$L506:
	li	$2,0
	sw	$2,12($17)
$L490:
	move	$2,$28
	lw	$2,%call16(__mips16_gedf2)($2)
	ld	$5,$L512
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L501
	b	$L507
$L494:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$5,$L513
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$16,$2
	b	$L492
$L501:
	li	$2,0
	sw	$2,8($17)
$L492:
	move	$2,$28
	lw	$2,%call16(__mips16_gedf2)($2)
	ld	$5,$L512
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L494
	b	$L495
$L507:
	move	$2,$28
	lw	$2,%call16(__mips16_ltdf2)($2)
	ld	$5,$L513
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L508
	move	$2,$28
	lw	$2,%call16(__mips16_nedf2)($2)
	ld	$5,$L510
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L503
	li	$2,0
	sw	$2,8($17)
	b	$L495
$L498:
	lw	$2,8($17)
	addiu	$2,-1
	sw	$2,8($17)
	move	$2,$28
	lw	$2,%call16(__mips16_adddf3)($2)
	move	$5,$16
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$16,$2
	b	$L497
$L503:
	li	$2,0
	sw	$2,8($17)
$L497:
	move	$2,$28
	lw	$2,%call16(__mips16_ltdf2)($2)
	ld	$5,$L513
	move	$4,$16
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L498
	b	$L495
$L508:
	li	$2,0
	sw	$2,8($17)
$L495:
	lw	$2,48($17)
	lw	$3,8($17)
	sw	$3,0($2)
	lw	$2,12($17)
	beqz	$2,$L499
	ld	$2,$L511
	xor	$16,$2
$L499:
	move	$2,$16
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool_frexp_509, @object
__pool_frexp_509:
	.align	2
$L509:
	.word	__gnu_local_gp
	.align	3
$L510:
	.word	0
	.word	0
$L511:
	.dword	-9223372036854775808
$L512:
	.word	1072693248
	.word	0
$L513:
	.word	1071644672
	.word	0
	.type	__pend_frexp_509, @object
__pend_frexp_509:
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.set	mips16
	.set	nomicromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	b	$L515
$L517:
	li	$3,1
	and	$3,$4
	beqz	$3,$L516
	daddu	$2,$2,$5
$L516:
	dsll	$5,$5,1
	dsrl	$4,1
$L515:
	bnez	$4,$L517
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$3,33
	li	$2,1
	b	$L519
$L521:
	sll	$5,$5,1
	sll	$2,$2,1
$L519:
	sltu	$5,$4
	bteqz	$L526
	addiu	$3,-1
	beqz	$3,$L527
	slt	$5,0
	bteqz	$L521
	li	$3,0
	b	$L523
$L524:
	sltu	$4,$5
	btnez	$L522
	subu	$4,$4,$5
	or	$3,$2
$L522:
	srl	$2,$2,1
	srl	$5,$5,1
	b	$L523
$L526:
	li	$3,0
	b	$L523
$L527:
	li	$3,0
$L523:
	bnez	$2,$L524
	bnez	$6,$L528
	move	$2,$3
	b	$L525
$L528:
	move	$2,$4
$L525:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L533
	move	$28,$2
	sw	$2,0($17)
	slt	$4,0
	bteqz	$L530
	not	$4,$4
$L530:
	beqz	$4,$L532
	sll	$4,$4,8
	dsll	$4,$4,32
	dsrl	$4,32
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	addiu	$2,-33
	b	$L531
$L532:
	li	$2,7
$L531:
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
	jr	$7
	.type	__pool___clrsbqi2_533, @object
__pool___clrsbqi2_533:
	.align	2
$L533:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_533, @object
__pend___clrsbqi2_533:
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.set	mips16
	.set	nomicromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L538
	move	$28,$2
	sw	$2,0($17)
	slt	$4,0
	bteqz	$L535
	not	$4,$4
$L535:
	beqz	$4,$L537
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	addiu	$2,-1
	b	$L536
$L537:
	li	$2,63
$L536:
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
	jr	$7
	.type	__pool___clrsbdi2_538, @object
__pool___clrsbdi2_538:
	.align	2
$L538:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_538, @object
__pend___clrsbdi2_538:
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.set	mips16
	.set	nomicromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	b	$L540
$L542:
	li	$3,1
	and	$3,$4
	beqz	$3,$L541
	addu	$2,$2,$5
$L541:
	srl	$4,$4,1
	sll	$5,$5,1
$L540:
	bnez	$4,$L542
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	srl	$3,$6,3
	li	$2,8
	neg	$2,$2
	and	$2,$6
	sltu	$4,$5
	btnez	$L544
	addu	$7,$5,$6
	sltu	$7,$4
	bteqz	$L545
$L544:
	move	$7,$5
	move	$16,$4
	sll	$3,$3,3
	addu	$3,$3,$5
	move	$8,$3
	b	$L546
$L547:
	ld	$3,0($7)
	sd	$3,0($16)
	addiu	$7,8
	addiu	$16,8
$L546:
	move	$3,$8
	cmp	$7,$3
	btnez	$L547
	b	$L548
$L549:
	addu	$3,$5,$2
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,1
$L548:
	sltu	$2,$6
	btnez	$L549
	b	$L543
$L551:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L545:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L551
$L543:
	move	$sp,$17
	ld	$17,8($sp)
	ld	$16,0($sp)
	addiu	$sp,16
	jr	$31
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.set	mips16
	.set	nomicromips
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	srl	$2,$6,1
	sltu	$4,$5
	btnez	$L553
	addu	$3,$5,$6
	sltu	$3,$4
	bteqz	$L554
$L553:
	move	$3,$5
	move	$7,$4
	sll	$2,$2,1
	addu	$2,$2,$5
	b	$L555
$L556:
	lh	$16,0($3)
	sh	$16,0($7)
	addiu	$3,2
	addiu	$7,2
$L555:
	cmp	$3,$2
	btnez	$L556
	li	$2,1
	and	$2,$6
	beqz	$2,$L552
	addiu	$6,-1
	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	sb	$2,0($4)
	b	$L552
$L558:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L554:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L558
$L552:
	move	$sp,$17
	ld	$17,8($sp)
	ld	$16,0($sp)
	addiu	$sp,16
	jr	$31
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.set	mips16
	.set	nomicromips
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	srl	$3,$6,2
	li	$2,4
	neg	$2,$2
	and	$2,$6
	sltu	$4,$5
	btnez	$L560
	addu	$7,$5,$6
	sltu	$7,$4
	bteqz	$L561
$L560:
	move	$7,$5
	move	$16,$4
	sll	$3,$3,2
	addu	$3,$3,$5
	move	$8,$3
	b	$L562
$L563:
	lw	$3,0($7)
	sw	$3,0($16)
	addiu	$7,4
	addiu	$16,4
$L562:
	move	$3,$8
	cmp	$7,$3
	btnez	$L563
	b	$L564
$L565:
	addu	$3,$5,$2
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,1
$L564:
	sltu	$2,$6
	btnez	$L565
	b	$L559
$L567:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L561:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L567
$L559:
	move	$sp,$17
	ld	$17,8($sp)
	ld	$16,0($sp)
	addiu	$sp,16
	jr	$31
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.set	mips16
	.set	nomicromips
	.ent	__modi
	.type	__modi, @function
__modi:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	div	$0,$4,$5
	bnez	$5,1f
	break	7
1:
	mfhi	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__modi
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.set	mips16
	.set	nomicromips
	.ent	__uitod
	.type	__uitod, @function
__uitod:
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L570
	move	$28,$2
	sw	$2,0($17)
	move	$2,$28
	lw	$2,%call16(__mips16_floatunsidf)($2)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
	jr	$7
	.type	__pool___uitod_570, @object
__pool___uitod_570:
	.align	2
$L570:
	.word	__gnu_local_gp
	.type	__pend___uitod_570, @object
__pend___uitod_570:
	.end	__uitod
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.set	mips16
	.set	nomicromips
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L572
	move	$28,$2
	sw	$2,0($17)
	move	$2,$28
	lw	$2,%call16(__mips16_floatunsisf)($2)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
	jr	$7
	.type	__pool___uitof_572, @object
__pool___uitof_572:
	.align	2
$L572:
	.word	__gnu_local_gp
	.type	__pend___uitof_572, @object
__pend___uitof_572:
	.end	__uitof
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.set	mips16
	.set	nomicromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80060000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	move	$3,$18
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L574
	move	$28,$2
	sw	$2,0($17)
	move	$2,$28
	lw	$5,%got(__mips16_call_stub_df_0)($2)
	lw	$2,%call16(__floatundidf)($2)
	jalr	$5
	lw	$6,0($17)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$6,16($sp)
	move	$18,$6
	ld	$17,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___ulltod_574, @object
__pool___ulltod_574:
	.align	2
$L574:
	.word	__gnu_local_gp
	.type	__pend___ulltod_574, @object
__pend___ulltod_574:
	.end	__ulltod
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.set	mips16
	.set	nomicromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80060000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	move	$3,$18
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L576
	move	$28,$2
	sw	$2,0($17)
	move	$2,$28
	lw	$5,%got(__mips16_call_stub_sf_0)($2)
	lw	$2,%call16(__floatundisf)($2)
	jalr	$5
	lw	$6,0($17)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$6,16($sp)
	move	$18,$6
	ld	$17,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___ulltof_576, @object
__pool___ulltof_576:
	.align	2
$L576:
	.word	__gnu_local_gp
	.type	__pend___ulltof_576, @object
__pend___ulltof_576:
	.end	__ulltof
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.set	mips16
	.set	nomicromips
	.ent	__umodi
	.type	__umodi, @function
__umodi:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	divu	$0,$4,$5
	bnez	$5,1f
	break	7
1:
	mfhi	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.set	mips16
	.set	nomicromips
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	b	$L579
$L581:
	li	$5,15
	subu	$5,$5,$2
	move	$3,$4
	sra	$3,$5
	li	$5,1
	and	$3,$5
	bnez	$3,$L580
	addiu	$2,1
$L579:
	cmpi	$2,16
	btnez	$L581
$L580:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	b	$L583
$L585:
	move	$3,$4
	sra	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L584
	addiu	$2,1
$L583:
	cmpi	$2,16
	btnez	$L585
$L584:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L592
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	lw	$2,%call16(__mips16_gesf2)($16)
	lw	$5,$L593
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L591
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L593
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$4,$2
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	jalr	$16
	lw	$6,0($17)
	move	$28,$6
	li	$3,32768
	addu	$2,$2,$3
	b	$L589
$L591:
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	lw	$4,32($17)
	jalr	$16
	lw	$6,0($17)
	move	$28,$6
$L589:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___fixunssfsi_592, @object
__pool___fixunssfsi_592:
	.align	2
$L592:
	.word	__gnu_local_gp
$L593:
	.word	1191182336
	.type	__pend___fixunssfsi_592, @object
__pend___fixunssfsi_592:
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.set	mips16
	.set	nomicromips
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	li	$3,0
	b	$L595
$L597:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	beqz	$5,$L596
	addiu	$2,1
$L596:
	addiu	$3,1
$L595:
	cmpi	$3,16
	btnez	$L597
	li	$3,1
	and	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.set	mips16
	.set	nomicromips
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	li	$3,0
	b	$L599
$L601:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	beqz	$5,$L600
	addiu	$2,1
$L600:
	addiu	$3,1
$L599:
	cmpi	$3,16
	btnez	$L601
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	b	$L603
$L605:
	li	$3,1
	and	$3,$4
	beqz	$3,$L604
	addu	$2,$2,$5
$L604:
	srl	$4,$4,1
	sll	$5,$5,1
$L603:
	bnez	$4,$L605
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	beqz	$4,$L611
	li	$2,0
	b	$L608
$L610:
	li	$3,1
	and	$3,$5
	beqz	$3,$L609
	addu	$2,$2,$4
$L609:
	sll	$4,$4,1
	srl	$5,$5,1
$L608:
	bnez	$5,$L610
	b	$L607
$L611:
	li	$2,0
$L607:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.set	mips16
	.set	nomicromips
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$3,33
	li	$2,1
	b	$L613
$L615:
	sll	$5,$5,1
	sll	$2,$2,1
$L613:
	sltu	$5,$4
	bteqz	$L620
	addiu	$3,-1
	beqz	$3,$L621
	slt	$5,0
	bteqz	$L615
	li	$3,0
	b	$L617
$L618:
	sltu	$4,$5
	btnez	$L616
	subu	$4,$4,$5
	or	$3,$2
$L616:
	srl	$2,$2,1
	srl	$5,$5,1
	b	$L617
$L620:
	li	$3,0
	b	$L617
$L621:
	li	$3,0
$L617:
	bnez	$2,$L618
	bnez	$6,$L622
	move	$2,$3
	b	$L619
$L622:
	move	$2,$4
$L619:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L627
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	sw	$5,40($17)
	lw	$2,%call16(__mips16_ltsf2)($16)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L625
	lw	$16,%call16(__mips16_gtsf2)($16)
	lw	$5,40($17)
	lw	$4,32($17)
	jalr	$16
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	bteqz	$L626
	li	$2,0
	b	$L624
$L625:
	li	$2,1
	neg	$2,$2
	b	$L624
$L626:
	li	$2,1
$L624:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___mspabi_cmpf_627, @object
__pool___mspabi_cmpf_627:
	.align	2
$L627:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_627, @object
__pend___mspabi_cmpf_627:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L632
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L630
	lw	$16,%call16(__mips16_gtdf2)($16)
	ld	$5,40($17)
	ld	$4,32($17)
	jalr	$16
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	bteqz	$L631
	li	$2,0
	b	$L629
$L630:
	li	$2,1
	neg	$2,$2
	b	$L629
$L631:
	li	$2,1
$L629:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___mspabi_cmpd_632, @object
__pool___mspabi_cmpd_632:
	.align	2
$L632:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_632, @object
__pend___mspabi_cmpd_632:
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.set	mips16
	.set	nomicromips
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	dmult	$4,$5
	mflo	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__mspabi_mpysll
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.set	mips16
	.set	nomicromips
	.ent	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	dsll	$4,$4,32
	dsrl	$4,32
	dsll	$5,$5,32
	dsrl	$5,32
	dmult	$4,$5
	mflo	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.set	mips16
	.set	nomicromips
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	slt	$5,0
	bteqz	$L642
	neg	$5,$5
	li	$7,1
	b	$L636
$L642:
	li	$7,0
$L636:
	li	$3,33
	li	$2,0
	b	$L637
$L640:
	li	$6,1
	and	$6,$5
	beqz	$6,$L638
	addu	$2,$2,$4
$L638:
	sll	$4,$4,1
	sra	$5,$5,1
$L637:
	beqz	$5,$L639
	addiu	$3,-1
	zeb	$3
	bnez	$3,$L640
$L639:
	beqz	$7,$L641
	neg	$2,$2
$L641:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	slt	$4,0
	bteqz	$L648
	neg	$4,$4
	li	$16,1
	b	$L645
$L648:
	li	$16,0
$L645:
	slt	$5,0
	bteqz	$L646
	neg	$5,$5
	sltu	$16,1
	move	$16,$24
$L646:
	li	$6,0
	.option	pic0
	jal	__udivmodsi4
	.option	pic2
	beqz	$16,$L647
	neg	$2,$2
$L647:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.set	mips16
	.set	nomicromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	slt	$4,0
	bteqz	$L653
	neg	$4,$4
	li	$16,1
	b	$L650
$L653:
	li	$16,0
$L650:
	slt	$5,0
	bteqz	$L651
	neg	$5,$5
$L651:
	li	$6,1
	.option	pic0
	jal	__udivmodsi4
	.option	pic2
	beqz	$16,$L652
	neg	$2,$2
$L652:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.set	mips16
	.set	nomicromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$3,17
	li	$2,1
	b	$L655
$L657:
	sll	$5,$5,1
	zeh	$5
	sll	$2,$2,1
	zeh	$2
$L655:
	sltu	$5,$4
	bteqz	$L662
	addiu	$3,-1
	beqz	$3,$L663
	move	$7,$5
	seh	$7
	slt	$7,0
	bteqz	$L657
	li	$3,0
	b	$L659
$L660:
	sltu	$4,$5
	btnez	$L658
	subu	$4,$4,$5
	zeh	$4
	or	$3,$2
$L658:
	srl	$2,$2,1
	srl	$5,$5,1
	b	$L659
$L662:
	li	$3,0
	b	$L659
$L663:
	li	$3,0
$L659:
	bnez	$2,$L660
	bnez	$6,$L664
	move	$2,$3
	b	$L661
$L664:
	move	$2,$4
$L661:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$3,33
	li	$2,1
	b	$L666
$L668:
	sll	$5,$5,1
	sll	$2,$2,1
$L666:
	sltu	$5,$4
	bteqz	$L673
	addiu	$3,-1
	beqz	$3,$L674
	slt	$5,0
	bteqz	$L668
	li	$3,0
	b	$L670
$L671:
	sltu	$4,$5
	btnez	$L669
	subu	$4,$4,$5
	or	$3,$2
$L669:
	srl	$2,$2,1
	srl	$5,$5,1
	b	$L670
$L673:
	li	$3,0
	b	$L670
$L674:
	li	$3,0
$L670:
	bnez	$2,$L671
	bnez	$6,$L675
	move	$2,$3
	b	$L672
$L675:
	move	$2,$4
$L672:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	li	$4,32
	and	$4,$5
	beqz	$4,$L677
	sll	$3,$3,0
	sll	$3,$5
	dsll	$2,$3,32
	b	$L679
$L677:
	beqz	$5,$L679
	sll	$4,$3,0
	move	$6,$4
	sll	$6,$5
	dsll	$2,$6,32
	dsrl	$2,32
	dsra	$3,32
	sll	$3,$3,0
	sll	$3,$5
	neg	$5,$5
	srl	$4,$5
	or	$4,$3
	dsll	$4,$4,32
	or	$2,$4
$L679:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool___ashldi3_681, @object
__pool___ashldi3_681:
	.align	2
$L681:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_681, @object
__pend___ashldi3_681:
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashlti3
	.set	mips16
	.set	nomicromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$17,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$17,40($sp)
	move	$17,$sp
	sd	$5,16($17)
	sd	$4,8($17)
	li	$2,64
	and	$2,$6
	beqz	$2,$L683
	li	$2,0
	sd	$2,32($17)
	ld	$2,16($17)
	dsll	$2,$6
	sd	$2,24($17)
	b	$L684
$L683:
	beqz	$6,$L686
	ld	$2,16($17)
	move	$3,$2
	dsll	$3,$6
	sd	$3,32($17)
	ld	$3,8($17)
	dsll	$3,$6
	neg	$6,$6
	dsrl	$2,$6
	or	$2,$3
	sd	$2,24($17)
$L684:
	ld	$3,32($17)
	ld	$2,24($17)
	b	$L685
$L686:
	move	$3,$5
	move	$2,$4
$L685:
	move	$sp,$17
	ld	$17,40($sp)
	addiu	$sp,48
	jr	$31
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
	.globl	__ashrdi3
	.set	mips16
	.set	nomicromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	li	$4,32
	and	$4,$5
	beqz	$4,$L688
	dsra	$3,32
	sll	$3,$3,0
	sra	$4,$3,31
	dsll	$2,$4,32
	sra	$3,$5
	dsll	$3,$3,32
	dsrl	$3,32
	or	$2,$3
	b	$L690
$L688:
	beqz	$5,$L690
	move	$4,$3
	dsra	$4,32
	sll	$4,$4,0
	move	$6,$4
	sra	$6,$5
	dsll	$2,$6,32
	neg	$6,$5
	sll	$4,$6
	sll	$3,$3,0
	srl	$3,$5
	or	$4,$3
	dsll	$4,$4,32
	dsrl	$4,32
	or	$2,$4
$L690:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool___ashrdi3_692, @object
__pool___ashrdi3_692:
	.align	2
$L692:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_692, @object
__pend___ashrdi3_692:
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__ashrti3
	.set	mips16
	.set	nomicromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$17,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$17,40($sp)
	move	$17,$sp
	sd	$5,16($17)
	sd	$4,8($17)
	li	$2,64
	and	$2,$6
	beqz	$2,$L694
	ld	$2,8($17)
	move	$3,$2
	dsra	$3,63
	sd	$3,24($17)
	dsra	$2,$6
	sd	$2,32($17)
	b	$L695
$L694:
	beqz	$6,$L697
	ld	$2,8($17)
	move	$3,$2
	dsra	$3,$6
	sd	$3,24($17)
	neg	$3,$6
	dsll	$2,$3
	ld	$3,16($17)
	dsrl	$3,$6
	or	$2,$3
	sd	$2,32($17)
$L695:
	ld	$3,32($17)
	ld	$2,24($17)
	b	$L696
$L697:
	move	$3,$5
	move	$2,$4
$L696:
	move	$sp,$17
	ld	$17,40($sp)
	addiu	$sp,48
	jr	$31
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
	.globl	__bswapdi2
	.set	mips16
	.set	nomicromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	move	$2,$4
	dsrl	$2,56
	move	$9,$2
	move	$3,$4
	dsrl	$3,40
	li	$2,65280
	and	$3,$2
	move	$8,$3
	move	$16,$4
	dsrl	$16,24
	ld	$2,$L700
	and	$16,$2
	move	$7,$4
	dsrl	$7,8
	ld	$2,$L701
	and	$7,$2
	dsll	$6,$4,8
	ld	$2,$L702
	and	$6,$2
	dsll	$5,$4,24
	ld	$2,$L703
	and	$5,$2
	dsll	$3,$4,40
	ld	$2,$L704
	and	$3,$2
	dsll	$2,$4,56
	move	$4,$9
	or	$2,$4
	move	$4,$8
	or	$2,$4
	or	$2,$16
	or	$2,$7
	or	$2,$6
	or	$2,$5
	or	$2,$3
	move	$sp,$17
	ld	$17,8($sp)
	ld	$16,0($sp)
	addiu	$sp,16
	jr	$31
	.type	__pool___bswapdi2_699, @object
__pool___bswapdi2_699:
	.align	2
$L699:
	.word	__gnu_local_gp
	.align	3
$L700:
	.dword	16711680
$L701:
	.dword	4278190080
$L702:
	.dword	1095216660480
$L703:
	.dword	280375465082880
$L704:
	.dword	71776119061217280
	.type	__pend___bswapdi2_699, @object
__pend___bswapdi2_699:
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.set	mips16
	.set	nomicromips
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	srl	$6,$4,24
	srl	$5,$4,8
	li	$2,65280
	and	$5,$2
	sll	$3,$4,8
	lw	$2,$L707
	and	$3,$2
	sll	$2,$4,24
	or	$2,$6
	or	$2,$5
	or	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool___bswapsi2_706, @object
__pool___bswapsi2_706:
	.align	2
$L706:
	.word	__gnu_local_gp
$L707:
	.word	16711680
	.type	__pend___bswapsi2_706, @object
__pend___bswapsi2_706:
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.set	mips16
	.set	nomicromips
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	lw	$2,$L718
	sltu	$4,$2
	bteqz	$L713
	li	$2,16
	b	$L709
$L713:
	li	$2,0
$L709:
	li	$3,16
	subu	$3,$3,$2
	srl	$4,$3
	li	$3,65280
	and	$3,$4
	bnez	$3,$L714
	li	$3,8
	b	$L710
$L714:
	li	$3,0
$L710:
	li	$5,8
	subu	$5,$5,$3
	srl	$4,$5
	addu	$2,$2,$3
	li	$3,240
	and	$3,$4
	bnez	$3,$L715
	li	$3,4
	b	$L711
$L715:
	li	$3,0
$L711:
	li	$5,4
	subu	$5,$5,$3
	srl	$4,$5
	addu	$2,$2,$3
	li	$3,12
	and	$3,$4
	bnez	$3,$L716
	li	$5,2
	b	$L712
$L716:
	li	$5,0
$L712:
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
	addu	$2,$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool___clzsi2_717, @object
__pool___clzsi2_717:
	.align	2
$L717:
	.word	__gnu_local_gp
$L718:
	.word	65536
	.type	__pend___clzsi2_717, @object
__pend___clzsi2_717:
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__clzti2
	.set	mips16
	.set	nomicromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$17,48,$31		# vars= 16, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-80
	move	$3,$31
	sd	$3,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	addiu	$17,$sp,32
	lw	$2,$L720
	move	$28,$2
	sw	$2,0($17)
	sd	$5,16($17)
	sd	$4,8($17)
	ld	$2,8($17)
	sltu	$2,1
	move	$16,$24
	neg	$16,$16
	not	$4,$16
	and	$4,$2
	ld	$3,16($17)
	and	$3,$16
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	or	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	li	$3,64
	and	$3,$16
	addu	$2,$2,$3
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	addiu	$sp,48
	jr	$7
	.type	__pool___clzti2_720, @object
__pool___clzti2_720:
	.align	2
$L720:
	.word	__gnu_local_gp
	.type	__pend___clzti2_720, @object
__pend___clzti2_720:
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.globl	__cmpdi2
	.set	mips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	dsra	$2,32
	move	$3,$5
	dsra	$3,32
	sll	$2,$2,0
	slt	$2,$3
	btnez	$L723
	move	$2,$4
	dsra	$2,32
	sll	$2,$2,0
	move	$3,$5
	dsra	$3,32
	slt	$3,$2
	btnez	$L724
	sll	$2,$4,0
	sll	$3,$5,0
	sltu	$2,$3
	btnez	$L725
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$5,$4
	btnez	$L726
	li	$2,1
	b	$L722
$L723:
	li	$2,0
	b	$L722
$L724:
	li	$2,2
	b	$L722
$L725:
	li	$2,0
	b	$L722
$L726:
	li	$2,2
$L722:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.set	mips16
	.set	nomicromips
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	.option	pic0
	jal	__cmpdi2
	.option	pic2
	addiu	$2,-1
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
	jr	$7
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__cmpti2
	.set	mips16
	.set	nomicromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$17,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$17,40($sp)
	move	$17,$sp
	sd	$5,16($17)
	sd	$4,8($17)
	sd	$7,32($17)
	sd	$6,24($17)
	ld	$2,8($17)
	ld	$3,24($17)
	slt	$2,$3
	btnez	$L730
	slt	$3,$2
	btnez	$L731
	ld	$2,16($17)
	ld	$3,32($17)
	sltu	$2,$3
	btnez	$L732
	sltu	$3,$2
	btnez	$L733
	li	$2,1
	b	$L729
$L730:
	li	$2,0
	b	$L729
$L731:
	li	$2,2
	b	$L729
$L732:
	li	$2,0
	b	$L729
$L733:
	li	$2,2
$L729:
	move	$sp,$17
	ld	$17,40($sp)
	addiu	$sp,48
	jr	$31
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
	.globl	__ctzsi2
	.set	mips16
	.set	nomicromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	zeh	$2
	bnez	$2,$L739
	li	$2,16
	b	$L735
$L739:
	li	$2,0
$L735:
	srl	$4,$2
	move	$3,$4
	zeb	$3
	bnez	$3,$L740
	li	$3,8
	b	$L736
$L740:
	li	$3,0
$L736:
	srl	$4,$3
	addu	$2,$2,$3
	li	$3,15
	and	$3,$4
	bnez	$3,$L741
	li	$3,4
	b	$L737
$L741:
	li	$3,0
$L737:
	srl	$4,$3
	addu	$2,$2,$3
	li	$3,3
	and	$3,$4
	bnez	$3,$L742
	li	$3,2
	b	$L738
$L742:
	li	$3,0
$L738:
	srl	$4,$3
	li	$5,3
	and	$4,$5
	addu	$2,$2,$3
	not	$5,$4
	li	$3,1
	and	$5,$3
	srl	$4,$4,1
	li	$3,2
	subu	$3,$3,$4
	neg	$5,$5
	and	$3,$5
	addu	$2,$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__ctzti2
	.set	mips16
	.set	nomicromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$17,48,$31		# vars= 16, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-80
	move	$3,$31
	sd	$3,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	addiu	$17,$sp,32
	lw	$2,$L744
	move	$28,$2
	sw	$2,0($17)
	sd	$5,16($17)
	sd	$4,8($17)
	ld	$2,16($17)
	sltu	$2,1
	move	$16,$24
	neg	$16,$16
	ld	$3,8($17)
	and	$3,$16
	not	$4,$16
	and	$4,$2
	move	$2,$28
	lw	$2,%call16(__ctzdi2)($2)
	or	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	li	$3,64
	and	$3,$16
	addu	$2,$2,$3
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	addiu	$sp,48
	jr	$7
	.type	__pool___ctzti2_744, @object
__pool___ctzti2_744:
	.align	2
$L744:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_744, @object
__pend___ctzti2_744:
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.set	mips16
	.set	nomicromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$17,40,$31		# vars= 16, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	addiu	$17,$sp,32
	lw	$2,$L749
	move	$28,$2
	sw	$2,0($17)
	move	$2,$28
	sd	$5,16($17)
	sd	$4,8($17)
	ld	$3,16($17)
	bnez	$3,$L746
	ld	$3,8($17)
	beqz	$3,$L748
	lw	$2,%call16(__ctzdi2)($2)
	move	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	addiu	$2,65
	b	$L747
$L746:
	lw	$2,%call16(__ctzdi2)($2)
	ld	$4,16($17)
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	addiu	$2,1
	b	$L747
$L748:
	li	$2,0
$L747:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool___ffsti2_749, @object
__pool___ffsti2_749:
	.align	2
$L749:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_749, @object
__pend___ffsti2_749:
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.globl	__lshrdi3
	.set	mips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$2
	li	$4,32
	and	$4,$5
	beqz	$4,$L751
	dsrl	$3,32
	sll	$3,$3,0
	srl	$3,$5
	dsll	$2,$3,32
	dsrl	$2,32
	b	$L753
$L751:
	beqz	$5,$L753
	move	$4,$3
	dsrl	$4,32
	sll	$4,$4,0
	move	$6,$4
	srl	$6,$5
	dsll	$2,$6,32
	neg	$6,$5
	sll	$4,$6
	sll	$3,$3,0
	srl	$3,$5
	or	$4,$3
	dsll	$4,$4,32
	dsrl	$4,32
	or	$2,$4
$L753:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool___lshrdi3_755, @object
__pool___lshrdi3_755:
	.align	2
$L755:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_755, @object
__pend___lshrdi3_755:
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__lshrti3
	.set	mips16
	.set	nomicromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$17,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$17,40($sp)
	move	$17,$sp
	sd	$5,16($17)
	sd	$4,8($17)
	li	$2,64
	and	$2,$6
	beqz	$2,$L757
	li	$2,0
	sd	$2,24($17)
	ld	$2,8($17)
	dsrl	$2,$6
	sd	$2,32($17)
	b	$L758
$L757:
	beqz	$6,$L760
	ld	$2,8($17)
	move	$3,$2
	dsrl	$3,$6
	sd	$3,24($17)
	neg	$3,$6
	dsll	$2,$3
	ld	$3,16($17)
	dsrl	$3,$6
	or	$2,$3
	sd	$2,32($17)
$L758:
	ld	$3,32($17)
	ld	$2,24($17)
	b	$L759
$L760:
	move	$3,$5
	move	$2,$4
$L759:
	move	$sp,$17
	ld	$17,40($sp)
	addiu	$sp,48
	jr	$31
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.globl	__muldsi3
	.set	mips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	move	$10,$5
	li	$2,65535
	move	$8,$2
	move	$16,$8
	and	$16,$4
	move	$3,$10
	and	$2,$3
	move	$9,$2
	mult	$16,$2
	mflo	$3
	ld	$7,$L763
	dsll	$2,$3,32
	dsrl	$2,32
	sll	$6,$2,0
	srl	$3,$6,8
	srl	$3,$3,8
	move	$5,$8
	and	$6,$5
	dsll	$6,$6,32
	dsrl	$6,32
	and	$2,$7
	or	$2,$6
	srl	$4,$4,8
	srl	$6,$4,8
	move	$4,$9
	mult	$6,$4
	mflo	$4
	addu	$3,$3,$4
	sll	$4,$2,0
	move	$9,$4
	sll	$4,$3,8
	sll	$4,$4,8
	move	$5,$9
	addu	$4,$4,$5
	dsll	$4,$4,32
	dsrl	$4,32
	and	$2,$7
	or	$2,$4
	srl	$3,$3,8
	srl	$3,$3,8
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,32
	or	$2,$3
	sll	$4,$2,0
	srl	$3,$4,8
	srl	$3,$3,8
	move	$5,$8
	and	$4,$5
	dsll	$4,$4,32
	dsrl	$4,32
	and	$2,$7
	or	$2,$4
	move	$4,$10
	srl	$5,$4,8
	srl	$5,$5,8
	mult	$16,$5
	mflo	$4
	addu	$3,$3,$4
	sll	$16,$2,0
	sll	$4,$3,8
	sll	$4,$4,8
	addu	$4,$4,$16
	dsll	$4,$4,32
	dsrl	$4,32
	and	$2,$7
	or	$2,$4
	move	$4,$2
	dsra	$4,32
	srl	$3,$3,8
	srl	$3,$3,8
	addu	$3,$3,$4
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,32
	or	$2,$3
	move	$4,$2
	dsra	$4,32
	mult	$6,$5
	mflo	$3
	addu	$3,$3,$4
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,32
	or	$2,$3
	move	$sp,$17
	ld	$17,8($sp)
	ld	$16,0($sp)
	addiu	$sp,16
	jr	$31
	.type	__pool___muldsi3_762, @object
__pool___muldsi3_762:
	.align	2
$L762:
	.word	__gnu_local_gp
	.align	3
$L763:
	.dword	-4294967296
	.type	__pend___muldsi3_762, @object
__pend___muldsi3_762:
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.set	mips16
	.set	nomicromips
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	move	$16,$4
	sd	$5,48($17)
	sw	$16,8($17)
	move	$2,$5
	sw	$2,12($17)
	sll	$5,$2,0
	sll	$4,$16,0
	.option	pic0
	jal	__muldsi3
	.option	pic2
	move	$5,$2
	dsra	$5,32
	dsra	$16,32
	lw	$3,12($17)
	mult	$3,$16
	mflo	$3
	ld	$4,48($17)
	dsra	$4,32
	lw	$6,8($17)
	mult	$6,$4
	mflo	$4
	addu	$3,$3,$4
	addu	$3,$3,$5
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,32
	or	$2,$3
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__mulddi3
	.set	mips16
	.set	nomicromips
	.ent	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.frame	$17,40,$31		# vars= 16, regs= 2/0, args= 0, gp= 8
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$17,32($sp)
	sd	$16,24($sp)
	move	$17,$sp
	dsll	$16,$4,32
	dsrl	$16,32
	dsll	$3,$5,32
	dsrl	$3,32
	dmult	$16,$3
	mflo	$2
	sd	$2,16($17)
	dsrl	$2,32
	mflo	$6
	dsll	$6,$6,32
	dsrl	$6,32
	sd	$6,16($17)
	dsrl	$4,32
	dmult	$4,$3
	mflo	$3
	daddu	$2,$2,$3
	dsll	$3,$2,32
	daddu	$3,$3,$6
	sd	$3,16($17)
	dsrl	$2,32
	move	$7,$2
	sd	$7,8($17)
	move	$2,$3
	dsrl	$2,32
	dsll	$3,$3,32
	dsrl	$3,32
	sd	$3,16($17)
	dsrl	$5,32
	dmult	$16,$5
	mflo	$6
	daddu	$2,$2,$6
	dsll	$6,$2,32
	daddu	$3,$6,$3
	sd	$3,16($17)
	dsrl	$2,32
	daddu	$2,$2,$7
	sd	$2,8($17)
	dmult	$4,$5
	mflo	$3
	daddu	$2,$3,$2
	sd	$2,8($17)
	ld	$3,16($17)
	ld	$2,8($17)
	move	$sp,$17
	ld	$17,32($sp)
	ld	$16,24($sp)
	addiu	$sp,40
	jr	$31
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.globl	__multi3
	.set	mips16
	.set	nomicromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$17,72,$31		# vars= 48, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-104
	move	$3,$31
	sd	$3,96($sp)
	sd	$17,88($sp)
	addiu	$17,$sp,32
	sd	$5,16($17)
	sd	$4,8($17)
	sd	$7,32($17)
	sd	$6,24($17)
	ld	$5,32($17)
	ld	$4,16($17)
	.option	pic0
	jal	__mulddi3
	.option	pic2
	sd	$3,48($17)
	sd	$2,40($17)
	ld	$2,8($17)
	ld	$3,32($17)
	dmult	$2,$3
	mflo	$2
	ld	$3,24($17)
	ld	$4,16($17)
	dmult	$3,$4
	mflo	$3
	daddu	$2,$2,$3
	ld	$3,40($17)
	daddu	$2,$2,$3
	sd	$2,40($17)
	ld	$3,48($17)
	ld	$2,40($17)
	move	$sp,$17
	ld	$7,64($sp)
	ld	$17,56($sp)
	addiu	$sp,72
	jr	$7
	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
	.globl	__negdi2
	.set	mips16
	.set	nomicromips
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	dsubu	$2,$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__negti2
	.set	mips16
	.set	nomicromips
	.ent	__negti2
	.type	__negti2, @function
__negti2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$9,$5
	move	$8,$4
	li	$7,0
	li	$6,0
	move	$4,$9
	dsubu	$3,$7,$4
	sltu	$7,$3
	move	$5,$24
	move	$4,$8
	dsubu	$2,$6,$4
	dsubu	$2,$2,$5
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
	.globl	__paritydi2
	.set	mips16
	.set	nomicromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
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
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__parityti2
	.set	mips16
	.set	nomicromips
	.ent	__parityti2
	.type	__parityti2, @function
__parityti2:
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sd	$5,16($17)
	sd	$4,8($17)
	ld	$2,8($17)
	ld	$3,16($17)
	xor	$2,$3
	move	$3,$2
	dsra	$3,32
	sll	$2,$2,0
	xor	$2,$3
	srl	$3,$2,8
	srl	$3,$3,8
	xor	$2,$3
	srl	$3,$2,8
	xor	$2,$3
	srl	$3,$2,4
	xor	$2,$3
	li	$3,15
	and	$2,$3
	li	$3,27030
	sra	$3,$2
	li	$2,1
	and	$2,$3
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
	jr	$31
	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.globl	__paritysi2
	.set	mips16
	.set	nomicromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	srl	$2,$4,8
	srl	$2,$2,8
	xor	$2,$4
	srl	$3,$2,8
	xor	$2,$3
	srl	$3,$2,4
	xor	$2,$3
	li	$3,15
	and	$2,$3
	li	$3,27030
	sra	$3,$2
	li	$2,1
	and	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.set	mips16
	.set	nomicromips
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$3,$4
	dsrl	$3,1
	ld	$2,$L774
	and	$3,$2
	dsubu	$3,$4,$3
	move	$2,$3
	dsrl	$2,2
	ld	$4,$L775
	and	$2,$4
	and	$3,$4
	daddu	$3,$2,$3
	move	$2,$3
	dsrl	$2,4
	daddu	$3,$2,$3
	ld	$2,$L776
	and	$3,$2
	sll	$2,$3,0
	dsrl	$3,32
	sll	$3,$3,0
	addu	$3,$3,$2
	srl	$2,$3,8
	srl	$2,$2,8
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	li	$3,127
	and	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool___popcountdi2_773, @object
__pool___popcountdi2_773:
	.align	2
$L773:
	.word	__gnu_local_gp
	.align	3
$L774:
	.dword	6148914691236517205
$L775:
	.dword	3689348814741910323
$L776:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_773, @object
__pend___popcountdi2_773:
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.set	mips16
	.set	nomicromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	srl	$3,$4,1
	lw	$2,$L779
	and	$3,$2
	subu	$3,$4,$3
	srl	$2,$3,2
	lw	$4,$L780
	and	$2,$4
	and	$3,$4
	addu	$3,$2,$3
	srl	$2,$3,4
	addu	$3,$2,$3
	lw	$2,$L781
	and	$3,$2
	srl	$2,$3,8
	srl	$2,$2,8
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	li	$3,63
	and	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool___popcountsi2_778, @object
__pool___popcountsi2_778:
	.align	2
$L778:
	.word	__gnu_local_gp
$L779:
	.word	1431655765
$L780:
	.word	858993459
$L781:
	.word	252645135
	.type	__pend___popcountsi2_778, @object
__pend___popcountsi2_778:
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.set	mips16
	.set	nomicromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	move	$11,$5
	move	$10,$4
	move	$2,$10
	dsll	$6,$2,63
	li	$3,0
	li	$2,0
	move	$4,$11
	dsrl	$4,1
	move	$3,$4
	or	$3,$6
	move	$4,$10
	dsrl	$4,1
	move	$2,$4
	ld	$16,$L784
	li	$7,0
	li	$6,0
	and	$4,$16
	move	$6,$4
	move	$2,$3
	and	$2,$16
	move	$7,$2
	move	$2,$11
	dsubu	$2,$2,$7
	move	$9,$2
	move	$3,$11
	sltu	$3,$2
	move	$5,$24
	move	$2,$10
	dsubu	$2,$2,$6
	move	$8,$2
	dsubu	$2,$2,$5
	move	$8,$2
	dsll	$6,$2,62
	li	$5,0
	li	$4,0
	move	$7,$9
	dsrl	$7,2
	move	$5,$7
	or	$5,$6
	move	$6,$8
	dsrl	$6,2
	move	$4,$6
	ld	$16,$L785
	li	$7,0
	li	$6,0
	move	$2,$4
	and	$2,$16
	move	$6,$2
	move	$2,$5
	and	$2,$16
	move	$7,$2
	li	$3,0
	li	$2,0
	move	$13,$3
	move	$12,$2
	move	$2,$8
	and	$2,$16
	move	$12,$2
	move	$2,$9
	and	$2,$16
	move	$13,$2
	daddu	$2,$7,$2
	move	$11,$2
	sltu	$2,$7
	move	$5,$24
	move	$2,$12
	daddu	$2,$6,$2
	move	$10,$2
	daddu	$2,$5,$2
	move	$10,$2
	move	$7,$11
	move	$6,$10
	dsll	$16,$2,60
	li	$5,0
	li	$4,0
	move	$2,$11
	dsrl	$2,4
	move	$5,$2
	or	$5,$16
	move	$2,$10
	dsrl	$2,4
	move	$4,$2
	move	$2,$11
	daddu	$2,$5,$2
	move	$9,$2
	sltu	$2,$5
	move	$3,$24
	move	$2,$10
	daddu	$2,$4,$2
	move	$8,$2
	daddu	$2,$3,$2
	move	$8,$2
	ld	$2,$L786
	move	$3,$8
	and	$3,$2
	move	$6,$3
	move	$3,$9
	and	$3,$2
	move	$7,$3
	li	$3,0
	li	$2,0
	move	$3,$6
	li	$2,0
	daddu	$3,$3,$7
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
	move	$sp,$17
	ld	$17,8($sp)
	ld	$16,0($sp)
	addiu	$sp,16
	jr	$31
	.type	__pool___popcountti2_783, @object
__pool___popcountti2_783:
	.align	2
$L783:
	.word	__gnu_local_gp
	.align	3
$L784:
	.dword	6148914691236517205
$L785:
	.dword	3689348814741910323
$L786:
	.dword	1085102592571150095
	.type	__pend___popcountti2_783, @object
__pend___popcountti2_783:
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
	.frame	$17,48,$31		# vars= 16, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-80
	move	$3,$31
	sd	$3,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	addiu	$17,$sp,32
	lw	$2,$L793
	move	$28,$2
	sw	$2,0($17)
	sd	$4,48($17)
	move	$16,$5
	srl	$2,$16,31
	sw	$2,16($17)
	ld	$2,$L794
	sd	$2,8($17)
$L790:
	li	$2,1
	and	$2,$16
	beqz	$2,$L788
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$5,48($17)
	ld	$4,8($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,8($17)
$L788:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L789
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$5,48($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,48($17)
	b	$L790
$L789:
	lw	$2,16($17)
	beqz	$2,$L792
	move	$2,$28
	lw	$2,%call16(__mips16_divdf3)($2)
	ld	$5,8($17)
	ld	$4,$L794
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	b	$L791
$L792:
	ld	$2,8($17)
$L791:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	addiu	$sp,48
	jr	$7
	.type	__pool___powidf2_793, @object
__pool___powidf2_793:
	.align	2
$L793:
	.word	__gnu_local_gp
	.align	3
$L794:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_793, @object
__pend___powidf2_793:
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L801
	move	$28,$2
	sw	$2,0($17)
	sw	$4,40($17)
	move	$16,$5
	srl	$2,$16,31
	sw	$2,12($17)
	lw	$2,$L802
	sw	$2,8($17)
$L798:
	li	$2,1
	and	$2,$16
	beqz	$2,$L796
	move	$2,$28
	lw	$2,%call16(__mips16_mulsf3)($2)
	lw	$5,40($17)
	lw	$4,8($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sw	$2,8($17)
$L796:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L797
	move	$2,$28
	lw	$2,%call16(__mips16_mulsf3)($2)
	lw	$5,40($17)
	move	$4,$5
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sw	$2,40($17)
	b	$L798
$L797:
	lw	$2,12($17)
	beqz	$2,$L800
	move	$2,$28
	lw	$2,%call16(__mips16_divsf3)($2)
	lw	$5,8($17)
	lw	$4,$L802
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	b	$L799
$L800:
	lw	$2,8($17)
$L799:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool___powisf2_801, @object
__pool___powisf2_801:
	.align	2
$L801:
	.word	__gnu_local_gp
$L802:
	.word	1065353216
	.type	__pend___powisf2_801, @object
__pend___powisf2_801:
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.set	mips16
	.set	nomicromips
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$3,$4
	dsrl	$3,32
	sll	$3,$3,0
	move	$2,$5
	dsrl	$2,32
	sll	$2,$2,0
	sltu	$3,$2
	btnez	$L805
	move	$3,$4
	dsrl	$3,32
	sll	$3,$3,0
	move	$2,$5
	dsrl	$2,32
	sll	$2,$2,0
	sltu	$2,$3
	btnez	$L806
	sll	$2,$4,0
	sll	$3,$5,0
	sltu	$2,$3
	btnez	$L807
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$5,$4
	btnez	$L808
	li	$2,1
	b	$L804
$L805:
	li	$2,0
	b	$L804
$L806:
	li	$2,2
	b	$L804
$L807:
	li	$2,0
	b	$L804
$L808:
	li	$2,2
$L804:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.set	mips16
	.set	nomicromips
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	.option	pic0
	jal	__ucmpdi2
	.option	pic2
	addiu	$2,-1
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
	jr	$7
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.globl	__ucmpti2
	.set	mips16
	.set	nomicromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$17,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$17,40($sp)
	move	$17,$sp
	sd	$5,16($17)
	sd	$4,8($17)
	sd	$7,32($17)
	sd	$6,24($17)
	ld	$2,8($17)
	ld	$3,24($17)
	sltu	$2,$3
	btnez	$L812
	sltu	$3,$2
	btnez	$L813
	ld	$2,16($17)
	ld	$3,32($17)
	sltu	$2,$3
	btnez	$L814
	sltu	$3,$2
	btnez	$L815
	li	$2,1
	b	$L811
$L812:
	li	$2,0
	b	$L811
$L813:
	li	$2,2
	b	$L811
$L814:
	li	$2,0
	b	$L811
$L815:
	li	$2,2
$L811:
	move	$sp,$17
	ld	$17,40($sp)
	addiu	$sp,48
	jr	$31
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
