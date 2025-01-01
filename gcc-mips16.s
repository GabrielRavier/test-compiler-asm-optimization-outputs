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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,32
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,32
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
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
	b	$L7
$L4:
	cmp	$4,$5
	bteqz	$L7
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
$L7:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	lbu	$3,0($5)
	sb	$3,0($4)
	xor	$3,$6
	bnez	$3,$L13
$L12:
	beqz	$7,$L15
	addiu	$2,$4,1
	b	$L14
$L15:
	li	$2,0
$L14:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	lbu	$3,0($4)
	xor	$3,$5
	bnez	$3,$L19
$L18:
	beqz	$6,$L21
	move	$2,$4
	b	$L20
$L21:
	li	$2,0
$L20:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$4
	addu	$6,$4,$6
	b	$L29
$L30:
	lbu	$7,0($5)
	sb	$7,0($3)
	addiu	$3,1
	addiu	$5,1
$L29:
	cmp	$3,$6
	btnez	$L30
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	addu	$3,$4,$6
	lbu	$3,0($3)
	addiu	$7,$6,-1
	xor	$3,$5
	bnez	$3,$L35
	addu	$2,$4,$6
	b	$L33
$L35:
	move	$6,$7
$L32:
	addiu	$3,$6,1
	bnez	$3,$L34
	li	$2,0
$L33:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	addu	$6,$4,$6
	move	$3,$4
	b	$L37
$L38:
	sb	$5,0($3)
	addiu	$3,1
$L37:
	cmp	$3,$6
	btnez	$L38
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	bnez	$3,$L41
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
$L48:
	lb	$2,0($4)
	xor	$2,$5
	beqz	$2,$L49
	addiu	$4,1
	lb	$2,-1($4)
	bnez	$2,$L48
	b	$L47
$L49:
	move	$2,$4
$L47:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	lbu	$3,0($4)
	lbu	$2,0($5)
	subu	$2,$3,$2
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	lb	$5,0($2)
	bnez	$5,$L56
	subu	$2,$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	beqz	$6,$L62
	addiu	$6,-1
	addu	$3,$4,$6
	b	$L59
$L61:
	addiu	$4,1
	addiu	$5,1
$L59:
	lbu	$2,0($4)
	beqz	$2,$L60
	lbu	$2,0($5)
	beqz	$2,$L60
	cmp	$4,$3
	bteqz	$L60
	lbu	$2,0($4)
	lbu	$6,0($5)
	xor	$2,$6
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	cmpi	$4,32
	bteqz	$L70
	li	$2,9
	xor	$4,$2
	sltu	$4,1
	move	$2,$24
	b	$L69
$L70:
	li	$2,1
$L69:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sltu	$4,32
	btnez	$L74
	li	$2,127
	xor	$4,$2
	sltu	$4,1
	move	$2,$24
	b	$L73
$L74:
	li	$2,1
$L73:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	lw	$3,$L100
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

	.type	__pool_iswprint_100, @object
__pool_iswprint_100:
	.align	2
$L100:
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
	btnez	$L103
	li	$2,32
	or	$4,$2
	addiu	$4,-97
	sltu	$4,6
	bteqz	$L104
	li	$2,1
	b	$L102
$L103:
	li	$2,1
	b	$L102
$L104:
	li	$2,0
$L102:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L114
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L109
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L110
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	btnez	$L113
	lw	$16,%call16(__mips16_subdf3)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$16
	ld	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	b	$L107
$L109:
	ld	$2,32($17)
	b	$L107
$L110:
	ld	$2,40($17)
	b	$L107
$L113:
	ld	$2,$L115
$L107:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_fdim_114, @object
__pool_fdim_114:
	.align	2
$L114:
	.word	__gnu_local_gp
	.align	3
$L115:
	.word	0
	.word	0
	.type	__pend_fdim_114, @object
__pend_fdim_114:
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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L124
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	sw	$5,40($17)
	lw	$2,%call16(__mips16_unordsf2)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L119
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L120
	lw	$2,%call16(__mips16_gtsf2)($16)
	lw	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	btnez	$L123
	lw	$16,%call16(__mips16_subsf3)($16)
	lw	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$16
	lw	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	b	$L117
$L119:
	lw	$2,32($17)
	b	$L117
$L120:
	lw	$2,40($17)
	b	$L117
$L123:
	lw	$2,$L125
$L117:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_fdimf_124, @object
__pool_fdimf_124:
	.align	2
$L124:
	.word	__gnu_local_gp
$L125:
	.word	0
	.type	__pend_fdimf_124, @object
__pend_fdimf_124:
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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L136
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L130
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L131
	ld	$2,32($17)
	dsrl	$2,63
	ld	$3,40($17)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L128
	ld	$2,32($17)
	dsrl	$2,63
	beqz	$2,$L132
	ld	$2,40($17)
	b	$L127
$L128:
	lw	$16,%call16(__mips16_ltdf2)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$16
	ld	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L135
	ld	$2,40($17)
	b	$L127
$L130:
	ld	$2,40($17)
	b	$L127
$L131:
	ld	$2,32($17)
	b	$L127
$L132:
	ld	$2,32($17)
	b	$L127
$L135:
	ld	$2,32($17)
$L127:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_fmax_136, @object
__pool_fmax_136:
	.align	2
$L136:
	.word	__gnu_local_gp
	.type	__pend_fmax_136, @object
__pend_fmax_136:
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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L147
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	sw	$5,40($17)
	lw	$2,%call16(__mips16_unordsf2)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L141
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L142
	lw	$3,40($17)
	lw	$2,32($17)
	xor	$3,$2
	lw	$2,$L148
	and	$2,$3
	beqz	$2,$L139
	lw	$2,$L148
	lw	$3,32($17)
	and	$2,$3
	beqz	$2,$L143
	lw	$2,40($17)
	b	$L138
$L139:
	lw	$16,%call16(__mips16_ltsf2)($16)
	lw	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$16
	lw	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L146
	lw	$2,40($17)
	b	$L138
$L141:
	lw	$2,40($17)
	b	$L138
$L142:
	lw	$2,32($17)
	b	$L138
$L143:
	lw	$2,32($17)
	b	$L138
$L146:
	lw	$2,32($17)
$L138:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_fmaxf_147, @object
__pool_fmaxf_147:
	.align	2
$L147:
	.word	__gnu_local_gp
$L148:
	.word	-2147483648
	.type	__pend_fmaxf_147, @object
__pend_fmaxf_147:
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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L159
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L153
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L154
	ld	$2,32($17)
	dsrl	$2,63
	ld	$3,40($17)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L151
	ld	$2,32($17)
	dsrl	$2,63
	beqz	$2,$L155
	ld	$2,40($17)
	b	$L150
$L151:
	lw	$16,%call16(__mips16_ltdf2)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$16
	ld	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L158
	ld	$2,40($17)
	b	$L150
$L153:
	ld	$2,40($17)
	b	$L150
$L154:
	ld	$2,32($17)
	b	$L150
$L155:
	ld	$2,32($17)
	b	$L150
$L158:
	ld	$2,32($17)
$L150:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_fmaxl_159, @object
__pool_fmaxl_159:
	.align	2
$L159:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_159, @object
__pend_fmaxl_159:
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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L170
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L164
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L165
	ld	$2,32($17)
	dsrl	$2,63
	ld	$3,40($17)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L162
	ld	$2,32($17)
	dsrl	$2,63
	beqz	$2,$L166
	ld	$2,32($17)
	b	$L161
$L162:
	lw	$16,%call16(__mips16_ltdf2)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$16
	ld	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L169
	ld	$2,32($17)
	b	$L161
$L164:
	ld	$2,40($17)
	b	$L161
$L165:
	ld	$2,32($17)
	b	$L161
$L166:
	ld	$2,40($17)
	b	$L161
$L169:
	ld	$2,40($17)
$L161:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_fmin_170, @object
__pool_fmin_170:
	.align	2
$L170:
	.word	__gnu_local_gp
	.type	__pend_fmin_170, @object
__pend_fmin_170:
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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L181
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	sw	$5,40($17)
	lw	$2,%call16(__mips16_unordsf2)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L175
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L176
	lw	$3,40($17)
	lw	$2,32($17)
	xor	$3,$2
	lw	$2,$L182
	and	$2,$3
	beqz	$2,$L173
	lw	$2,$L182
	lw	$3,32($17)
	and	$2,$3
	beqz	$2,$L177
	lw	$2,32($17)
	b	$L172
$L173:
	lw	$16,%call16(__mips16_ltsf2)($16)
	lw	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$16
	lw	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L180
	lw	$2,32($17)
	b	$L172
$L175:
	lw	$2,40($17)
	b	$L172
$L176:
	lw	$2,32($17)
	b	$L172
$L177:
	lw	$2,40($17)
	b	$L172
$L180:
	lw	$2,40($17)
$L172:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_fminf_181, @object
__pool_fminf_181:
	.align	2
$L181:
	.word	__gnu_local_gp
$L182:
	.word	-2147483648
	.type	__pend_fminf_181, @object
__pend_fminf_181:
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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L193
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L187
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L188
	ld	$2,32($17)
	dsrl	$2,63
	ld	$3,40($17)
	dsrl	$3,63
	xor	$2,$3
	beqz	$2,$L185
	ld	$2,32($17)
	dsrl	$2,63
	beqz	$2,$L189
	ld	$2,32($17)
	b	$L184
$L185:
	lw	$16,%call16(__mips16_ltdf2)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$16
	ld	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L192
	ld	$2,32($17)
	b	$L184
$L187:
	ld	$2,40($17)
	b	$L184
$L188:
	ld	$2,32($17)
	b	$L184
$L189:
	ld	$2,40($17)
	b	$L184
$L192:
	ld	$2,40($17)
$L184:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_fminl_193, @object
__pool_fminl_193:
	.align	2
$L193:
	.word	__gnu_local_gp
	.type	__pend_fminl_193, @object
__pend_fminl_193:
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
	lw	$5,$L197
	b	$L195
$L196:
	li	$3,63
	and	$3,$4
	lw	$2,$L198
	addu	$2,$2,$3
	lb	$2,0($2)
	sb	$2,0($5)
	addiu	$5,1
	srl	$4,$4,6
$L195:
	bnez	$4,$L196
	li	$2,0
	sb	$2,0($5)
	lw	$2,$L197
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

	.type	__pool_l64a_197, @object
__pool_l64a_197:
	.align	2
$L197:
	.word	s.0
$L198:
	.word	digits
	.type	__pend_l64a_197, @object
__pend_l64a_197:
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
	lw	$2,$L200
	sd	$4,0($2)
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

	.type	__pool_srand_200, @object
__pool_srand_200:
	.align	2
$L200:
	.word	seed
	.type	__pend_srand_200, @object
__pend_srand_200:
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
	lw	$3,$L202
	ld	$2,$L203
	ld	$4,0($3)
	dmult	$4,$2
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

	.type	__pool_rand_202, @object
__pool_rand_202:
	.align	2
$L202:
	.word	seed
	.align	3
$L203:
	.dword	6364136223846793005
	.type	__pend_rand_202, @object
__pend_rand_202:
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
	bnez	$5,$L205
	li	$2,0
	sw	$2,4($4)
	sw	$2,0($4)
	b	$L204
$L205:
	lw	$2,0($5)
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	beqz	$2,$L204
	lw	$2,0($4)
	sw	$4,4($2)
$L204:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	lw	$2,0($4)
	beqz	$2,$L208
	lw	$2,0($4)
	lw	$3,4($4)
	sw	$3,4($2)
$L208:
	lw	$2,4($4)
	beqz	$2,$L207
	lw	$2,4($4)
	lw	$3,0($4)
	sw	$3,0($2)
$L207:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L215
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
	b	$L211
$L214:
	lw	$5,8($17)
	lw	$2,76($17)
	move	$25,$2
	lw	$2,76($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	lw	$3,8($17)
	lw	$4,64($17)
	addu	$3,$3,$4
	sw	$3,8($17)
	bnez	$2,$L212
	lw	$2,64($17)
	mult	$16,$2
	mflo	$2
	lw	$3,48($17)
	addu	$2,$3,$2
	b	$L213
$L212:
	addiu	$16,1
$L211:
	lw	$2,12($17)
	cmp	$16,$2
	btnez	$L214
	lw	$3,12($17)
	addiu	$2,$3,1
	lw	$4,56($17)
	sw	$2,0($4)
	lw	$2,64($17)
	mult	$2,$3
	mflo	$4
	lw	$6,64($17)
	lw	$5,40($17)
	lw	$2,48($17)
	addu	$4,$2,$4
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
$L213:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
	.set	macro
	.set	reorder

	.type	__pool_lsearch_215, @object
__pool_lsearch_215:
	.align	2
$L215:
	.word	__gnu_local_gp
	.type	__pend_lsearch_215, @object
__pend_lsearch_215:
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
	sd	$31,64($sp)
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
	b	$L217
$L220:
	lw	$5,8($17)
	lw	$2,76($17)
	move	$25,$2
	lw	$2,76($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,40($17)
	.set	macro
	.set	reorder

	lw	$3,8($17)
	lw	$4,64($17)
	addu	$3,$3,$4
	sw	$3,8($17)
	bnez	$2,$L218
	lw	$2,64($17)
	mult	$16,$2
	mflo	$2
	lw	$3,48($17)
	addu	$2,$3,$2
	b	$L219
$L218:
	addiu	$16,1
$L217:
	lw	$2,12($17)
	cmp	$16,$2
	btnez	$L220
	li	$2,0
$L219:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	slt	$4,0
	bteqz	$L222
	neg	$2,$4
$L222:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	move	$16,$4
	b	$L224
$L225:
	addiu	$16,1
$L224:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L225
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L231
	cmpi	$2,45
	btnez	$L232
	li	$5,1
	b	$L226
$L231:
	li	$5,0
$L226:
	addiu	$16,1
	b	$L227
$L232:
	li	$5,0
$L227:
	li	$2,0
	b	$L228
$L229:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	subu	$2,$3,$2
	addiu	$16,1
$L228:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L229
	bnez	$5,$L230
	neg	$2,$2
$L230:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	move	$16,$4
	b	$L235
$L236:
	addiu	$16,1
$L235:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L236
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L242
	cmpi	$2,45
	btnez	$L243
	li	$5,1
	b	$L237
$L242:
	li	$5,0
$L237:
	addiu	$16,1
	b	$L238
$L243:
	li	$5,0
$L238:
	li	$2,0
	b	$L239
$L240:
	sll	$3,$2,2
	addu	$3,$3,$2
	sll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	subu	$2,$3,$2
	addiu	$16,1
$L239:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L240
	bnez	$5,$L241
	neg	$2,$2
$L241:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	move	$16,$4
	b	$L246
$L247:
	addiu	$16,1
$L246:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	isspace
	.option	pic2
	lb	$4,0($16)
	.set	macro
	.set	reorder

	bnez	$2,$L247
	lb	$2,0($16)
	cmpi	$2,43
	bteqz	$L253
	cmpi	$2,45
	btnez	$L254
	li	$5,1
	b	$L248
$L253:
	li	$5,0
$L248:
	addiu	$16,1
	b	$L249
$L254:
	li	$5,0
$L249:
	li	$2,0
	b	$L250
$L251:
	dsll	$3,$2,2
	daddu	$3,$3,$2
	dsll	$3,$3,1
	lb	$2,0($16)
	addiu	$2,-48
	dsubu	$2,$3,$2
	addiu	$16,1
$L250:
	lb	$3,0($16)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L251
	bnez	$5,$L252
	li	$3,0
	dsubu	$2,$3,$2
$L252:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	sw	$4,40($17)
	sw	$5,48($17)
	move	$16,$6
	sw	$7,64($17)
	b	$L257
$L261:
	srl	$2,$16,1
	lw	$3,64($17)
	mult	$2,$3
	mflo	$2
	lw	$3,48($17)
	addu	$2,$3,$2
	sw	$2,8($17)
	move	$5,$2
	lw	$2,76($17)
	move	$25,$2
	lw	$2,76($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,40($17)
	.set	macro
	.set	reorder

	slt	$2,0
	bteqz	$L258
	srl	$16,$16,1
	b	$L257
$L258:
	slt	$2,1
	btnez	$L262
	lw	$2,8($17)
	lw	$3,64($17)
	addu	$2,$2,$3
	sw	$2,48($17)
	srl	$2,$16,1
	addiu	$16,-1
	subu	$16,$16,$2
$L257:
	bnez	$16,$L261
	li	$2,0
	b	$L260
$L262:
	lw	$2,8($17)
$L260:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	sw	$4,40($17)
	sw	$7,64($17)
	move	$16,$6
	sw	$5,12($17)
	b	$L264
$L267:
	sra	$2,$16,1
	lw	$3,64($17)
	mult	$2,$3
	mflo	$2
	lw	$3,12($17)
	addu	$2,$3,$2
	lw	$6,84($17)
	sw	$2,8($17)
	lw	$5,8($17)
	lw	$3,76($17)
	move	$25,$3
	lw	$3,76($17)
	.set	noreorder
	.set	nomacro
	jalr	$3
	lw	$4,40($17)
	.set	macro
	.set	reorder

	beqz	$2,$L268
	slt	$2,1
	btnez	$L266
	lw	$2,8($17)
	lw	$3,64($17)
	addu	$2,$2,$3
	sw	$2,12($17)
	addiu	$16,-1
$L266:
	sra	$16,$16,1
$L264:
	bnez	$16,$L267
	li	$2,0
	b	$L265
$L268:
	lw	$2,8($17)
$L265:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
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
	sw	$4,0($2)
	sw	$3,4($2)
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	slt	$4,0
	bteqz	$L271
	li	$2,0
	dsubu	$2,$2,$4
$L271:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	sd	$4,0($2)
	sd	$3,8($2)
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	slt	$4,0
	bteqz	$L274
	neg	$2,$4
$L274:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	sw	$4,0($2)
	sw	$3,4($2)
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	slt	$4,0
	bteqz	$L277
	li	$2,0
	dsubu	$2,$2,$4
$L277:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	sd	$4,0($2)
	sd	$3,8($2)
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L280
$L282:
	addiu	$4,4
$L280:
	lw	$2,0($4)
	beqz	$2,$L281
	lw	$2,0($4)
	xor	$2,$5
	bnez	$2,$L282
$L281:
	lw	$2,0($4)
	beqz	$2,$L284
	move	$2,$4
	b	$L283
$L284:
	li	$2,0
$L283:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L286
$L288:
	addiu	$4,4
	addiu	$5,4
$L286:
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L287
	lw	$2,0($4)
	beqz	$2,$L287
	lw	$2,0($5)
	bnez	$2,$L288
$L287:
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L290
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	move	$2,$24
	b	$L289
$L290:
	li	$2,1
	neg	$2,$2
$L289:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$4
$L292:
	lw	$6,0($5)
	sw	$6,0($3)
	addiu	$3,4
	addiu	$5,4
	bnez	$6,$L292
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	b	$L294
$L295:
	addiu	$2,4
$L294:
	lw	$3,0($2)
	bnez	$3,$L295
	subu	$2,$2,$4
	sra	$2,$2,2
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L297
$L299:
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
$L297:
	beqz	$6,$L298
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	bnez	$2,$L298
	lw	$2,0($4)
	beqz	$2,$L298
	lw	$2,0($5)
	bnez	$2,$L299
$L298:
	beqz	$6,$L301
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L302
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	move	$2,$24
	b	$L300
$L301:
	li	$2,0
	b	$L300
$L302:
	li	$2,1
	neg	$2,$2
$L300:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L304
$L306:
	addiu	$6,-1
	addiu	$4,4
$L304:
	beqz	$6,$L305
	lw	$3,0($4)
	xor	$3,$5
	bnez	$3,$L306
$L305:
	beqz	$6,$L308
	move	$2,$4
	b	$L307
$L308:
	li	$2,0
$L307:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L310
$L312:
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
$L310:
	beqz	$6,$L311
	lw	$2,0($4)
	lw	$3,0($5)
	xor	$2,$3
	beqz	$2,$L312
$L311:
	beqz	$6,$L314
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$2,$3
	btnez	$L315
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$2,$3
	move	$2,$24
	b	$L313
$L314:
	li	$2,0
	b	$L313
$L315:
	li	$2,1
	neg	$2,$2
$L313:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$4
	b	$L317
$L318:
	lw	$4,0($5)
	sw	$4,0($3)
	addiu	$3,4
	addiu	$5,4
$L317:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L318
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	cmp	$4,$5
	bteqz	$L320
	subu	$4,$4,$5
	sll	$3,$6,2
	sltu	$4,$3
	btnez	$L321
	move	$3,$2
	b	$L322
$L321:
	sll	$6,$6,2
	addu	$5,$5,$6
	addu	$6,$2,$6
	addiu	$4,$2,-4
	b	$L323
$L324:
	lw	$3,0($5)
	sw	$3,0($6)
$L323:
	addiu	$5,-4
	addiu	$6,-4
	cmp	$6,$4
	btnez	$L324
	b	$L320
$L325:
	lw	$4,0($5)
	sw	$4,0($3)
	addiu	$3,4
	addiu	$5,4
$L322:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L325
$L320:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	move	$3,$4
	b	$L327
$L328:
	sw	$5,0($3)
	addiu	$3,4
$L327:
	addiu	$6,-1
	addiu	$7,$6,1
	bnez	$7,$L328
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	bteqz	$L330
	addu	$2,$4,$6
	addu	$5,$5,$6
	b	$L331
$L332:
	addiu	$2,-1
	addiu	$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
$L331:
	cmp	$2,$4
	btnez	$L332
	b	$L329
$L330:
	cmp	$4,$5
	bteqz	$L329
	move	$2,$5
	addu	$5,$5,$6
	b	$L334
$L335:
	lb	$3,0($4)
	sb	$3,0($2)
	addiu	$4,1
	addiu	$2,1
$L334:
	cmp	$2,$5
	btnez	$L335
$L329:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	dsll	$2,$5
	neg	$5,$5
	dsrl	$4,$5
	or	$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	dsrl	$2,$5
	neg	$5,$5
	dsll	$4,$5
	or	$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	sll	$2,$5
	neg	$5,$5
	srl	$4,$5
	or	$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	srl	$2,$5
	neg	$5,$5
	sll	$4,$5
	or	$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	sll	$2,$5
	neg	$5,$5
	srl	$4,$5
	or	$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	srl	$2,$5
	neg	$5,$5
	sll	$4,$5
	or	$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$3,$4
	sll	$3,$5
	li	$2,16
	subu	$2,$2,$5
	srl	$4,$2
	move	$2,$4
	or	$2,$3
	zeh	$2
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$3,$4
	srl	$3,$5
	li	$2,16
	subu	$2,$2,$5
	sll	$4,$2
	move	$2,$4
	or	$2,$3
	zeh	$2
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$3,$4
	sll	$3,$5
	li	$2,8
	subu	$2,$2,$5
	srl	$4,$2
	move	$2,$4
	or	$2,$3
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$3,$4
	srl	$3,$5
	li	$2,8
	subu	$2,$2,$5
	sll	$4,$2
	move	$2,$4
	or	$2,$3
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	srl	$3,$4,24
	lw	$2,$L348
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

	.type	__pool_bswap_32_348, @object
__pool_bswap_32_348:
	.align	2
$L348:
	.word	16711680
	.type	__pend_bswap_32_348, @object
__pend_bswap_32_348:
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
	ld	$2,$L350
	and	$2,$4
	dsrl	$2,40
	or	$2,$3
	ld	$3,$L351
	and	$3,$4
	dsrl	$3,24
	or	$2,$3
	ld	$3,$L352
	and	$3,$4
	dsrl	$3,8
	or	$2,$3
	ld	$3,$L353
	and	$3,$4
	dsll	$3,$3,8
	or	$2,$3
	ld	$3,$L354
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_350, @object
__pool_bswap_64_350:
	.align	3
$L350:
	.dword	71776119061217280
$L351:
	.dword	280375465082880
$L352:
	.dword	1095216660480
$L353:
	.dword	4278190080
$L354:
	.dword	16711680
	.type	__pend_bswap_64_350, @object
__pend_bswap_64_350:
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
	b	$L356
$L359:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	beqz	$3,$L357
	addiu	$2,1
	b	$L358
$L357:
	addiu	$2,1
$L356:
	cmpi	$2,32
	btnez	$L359
	li	$2,0
$L358:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	beqz	$4,$L364
	li	$2,1
	b	$L362
$L363:
	sra	$4,$4,1
	addiu	$2,1
$L362:
	li	$3,1
	and	$3,$4
	beqz	$3,$L363
	b	$L361
$L364:
	li	$2,0
$L361:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L371
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	lw	$2,%call16(__mips16_ltsf2)($16)
	lw	$5,$L372
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L368
	lw	$16,%call16(__mips16_gtsf2)($16)
	lw	$5,$L373
	.set	noreorder
	.set	nomacro
	jalr	$16
	lw	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	move	$2,$24
	b	$L366
$L368:
	li	$2,1
$L366:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_gl_isinff_371, @object
__pool_gl_isinff_371:
	.align	2
$L371:
	.word	__gnu_local_gp
$L372:
	.word	-8388609
$L373:
	.word	2139095039
	.type	__pend_gl_isinff_371, @object
__pend_gl_isinff_371:
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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L380
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L381
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L377
	lw	$16,%call16(__mips16_gtdf2)($16)
	ld	$5,$L382
	.set	noreorder
	.set	nomacro
	jalr	$16
	ld	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	move	$2,$24
	b	$L375
$L377:
	li	$2,1
$L375:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_gl_isinfd_380, @object
__pool_gl_isinfd_380:
	.align	2
$L380:
	.word	__gnu_local_gp
	.align	3
$L381:
	.word	-1048577
	.word	-1
$L382:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_380, @object
__pend_gl_isinfd_380:
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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L389
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L390
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L386
	lw	$16,%call16(__mips16_gtdf2)($16)
	ld	$5,$L391
	.set	noreorder
	.set	nomacro
	jalr	$16
	ld	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	move	$2,$24
	b	$L384
$L386:
	li	$2,1
$L384:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_gl_isinfl_389, @object
__pool_gl_isinfl_389:
	.align	2
$L389:
	.word	__gnu_local_gp
	.align	3
$L390:
	.word	-1048577
	.word	-1
$L391:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_389, @object
__pend_gl_isinfl_389:
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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L393
	move	$28,$2
	sw	$2,0($17)
	move	$16,$4
	move	$2,$28
	lw	$2,%call16(__mips16_floatsidf)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sd	$2,0($16)
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool__Qp_itoq_393, @object
__pool__Qp_itoq_393:
	.align	2
$L393:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_393, @object
__pend__Qp_itoq_393:
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
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L402
	move	$28,$2
	sw	$2,0($17)
	sw	$4,40($17)
	move	$16,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L395
	move	$2,$28
	lw	$2,%call16(__mips16_addsf3)($2)
	lw	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	move	$3,$28
	lw	$7,%call16(__mips16_nesf2)($3)
	move	$5,$2
	.set	noreorder
	.set	nomacro
	jalr	$7
	lw	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L395
	slt	$16,0
	bteqz	$L400
	lw	$2,$L403
	sw	$2,8($17)
	b	$L399
$L400:
	lw	$2,$L404
	sw	$2,8($17)
$L399:
	li	$2,1
	and	$2,$16
	beqz	$2,$L398
	move	$2,$28
	lw	$2,%call16(__mips16_mulsf3)($2)
	lw	$5,8($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sw	$2,40($17)
$L398:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L395
	move	$2,$28
	lw	$2,%call16(__mips16_mulsf3)($2)
	lw	$4,8($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sw	$2,8($17)
	b	$L399
$L395:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	lw	$2,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
	.set	macro
	.set	reorder

	.type	__pool_ldexpf_402, @object
__pool_ldexpf_402:
	.align	2
$L402:
	.word	__gnu_local_gp
$L403:
	.word	1056964608
$L404:
	.word	1073741824
	.type	__pend_ldexpf_402, @object
__pend_ldexpf_402:
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
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L413
	move	$28,$2
	sw	$2,0($17)
	sd	$4,40($17)
	move	$16,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L406
	move	$2,$28
	lw	$2,%call16(__mips16_adddf3)($2)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	move	$3,$28
	lw	$7,%call16(__mips16_nedf2)($3)
	move	$5,$2
	.set	noreorder
	.set	nomacro
	jalr	$7
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L406
	slt	$16,0
	bteqz	$L411
	ld	$2,$L414
	sd	$2,8($17)
	b	$L410
$L411:
	ld	$2,$L415
	sd	$2,8($17)
$L410:
	li	$2,1
	and	$2,$16
	beqz	$2,$L409
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$5,8($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sd	$2,40($17)
$L409:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L406
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$4,8($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sd	$2,8($17)
	b	$L410
$L406:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
	.set	macro
	.set	reorder

	.type	__pool_ldexp_413, @object
__pool_ldexp_413:
	.align	2
$L413:
	.word	__gnu_local_gp
	.align	3
$L414:
	.word	1071644672
	.word	0
$L415:
	.word	1073741824
	.word	0
	.type	__pend_ldexp_413, @object
__pend_ldexp_413:
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
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L424
	move	$28,$2
	sw	$2,0($17)
	sd	$4,40($17)
	move	$16,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L417
	move	$2,$28
	lw	$2,%call16(__mips16_adddf3)($2)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	move	$3,$28
	lw	$7,%call16(__mips16_nedf2)($3)
	move	$5,$2
	.set	noreorder
	.set	nomacro
	jalr	$7
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L417
	slt	$16,0
	bteqz	$L422
	ld	$2,$L425
	sd	$2,8($17)
	b	$L421
$L422:
	ld	$2,$L426
	sd	$2,8($17)
$L421:
	li	$2,1
	and	$2,$16
	beqz	$2,$L420
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$5,8($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sd	$2,40($17)
$L420:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L417
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$4,8($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sd	$2,8($17)
	b	$L421
$L417:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
	.set	macro
	.set	reorder

	.type	__pool_ldexpl_424, @object
__pool_ldexpl_424:
	.align	2
$L424:
	.word	__gnu_local_gp
	.align	3
$L425:
	.word	1071644672
	.word	0
$L426:
	.word	1073741824
	.word	0
	.type	__pend_ldexpl_424, @object
__pend_ldexpl_424:
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.set	mips16
	.set	nomicromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$4
	addu	$6,$4,$6
	b	$L428
$L429:
	lb	$16,0($5)
	lb	$7,0($3)
	xor	$7,$16
	sb	$7,0($3)
	addiu	$5,1
	addiu	$3,1
$L428:
	cmp	$3,$6
	btnez	$L429
	move	$sp,$17
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	sw	$4,32($17)
	move	$16,$5
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	strlen
	.option	pic2
	sw	$6,48($17)
	.set	macro
	.set	reorder

	lw	$3,32($17)
	addu	$2,$3,$2
	b	$L431
$L433:
	addiu	$16,1
	addiu	$2,1
	lw	$3,48($17)
	addiu	$3,-1
	sw	$3,48($17)
$L431:
	lw	$3,48($17)
	beqz	$3,$L432
	lb	$3,0($16)
	sb	$3,0($2)
	bnez	$3,$L433
$L432:
	lw	$3,48($17)
	bnez	$3,$L434
	sb	$3,0($2)
$L434:
	lw	$2,32($17)
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	b	$L436
$L438:
	addiu	$2,1
$L436:
	cmp	$2,$5
	bteqz	$L437
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L438
$L437:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	b	$L440
$L442:
	lb	$6,0($3)
	lb	$7,0($4)
	addiu	$3,1
	xor	$6,$7
	beqz	$6,$L444
$L443:
	lb	$6,0($3)
	bnez	$6,$L442
	addiu	$4,1
$L440:
	lb	$2,0($4)
	beqz	$2,$L445
	move	$3,$5
	b	$L443
$L444:
	move	$2,$4
	b	$L441
$L445:
	li	$2,0
$L441:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
$L448:
	lb	$3,0($4)
	xor	$3,$5
	bnez	$3,$L447
	move	$2,$4
$L447:
	addiu	$4,1
	lb	$3,-1($4)
	bnez	$3,$L448
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	move	$16,$4
	sw	$5,48($17)
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	strlen
	.option	pic2
	lw	$4,48($17)
	.set	macro
	.set	reorder

	sw	$2,12($17)
	beqz	$2,$L454
	lw	$2,48($17)
	lb	$2,0($2)
	sw	$2,8($17)
	b	$L452
$L453:
	lw	$6,12($17)
	lw	$5,48($17)
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	strncmp
	.option	pic2
	move	$4,$16
	.set	macro
	.set	reorder

	beqz	$2,$L455
	addiu	$16,1
$L452:
	lw	$5,8($17)
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	strchr
	.option	pic2
	move	$4,$16
	.set	macro
	.set	reorder

	move	$16,$2
	bnez	$2,$L453
	li	$2,0
	b	$L451
$L454:
	move	$2,$16
	b	$L451
$L455:
	move	$2,$16
$L451:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L469
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L470
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L457
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L470
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	bteqz	$L459
$L457:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L470
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	btnez	$L467
	lw	$16,%call16(__mips16_ltdf2)($16)
	ld	$5,$L470
	.set	noreorder
	.set	nomacro
	jalr	$16
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L468
$L459:
	ld	$2,$L471
	ld	$3,32($17)
	xor	$2,$3
	b	$L460
$L467:
	ld	$2,32($17)
	b	$L460
$L468:
	ld	$2,32($17)
$L460:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_copysign_469, @object
__pool_copysign_469:
	.align	2
$L469:
	.word	__gnu_local_gp
	.align	3
$L470:
	.word	0
	.word	0
$L471:
	.dword	-9223372036854775808
	.type	__pend_copysign_469, @object
__pend_copysign_469:
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
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	move	$16,$4
	sw	$6,56($17)
	sw	$7,64($17)
	lw	$2,64($17)
	subu	$2,$5,$2
	addu	$2,$4,$2
	sw	$2,8($17)
	lw	$2,64($17)
	beqz	$2,$L477
	sltu	$5,$2
	btnez	$L478
	b	$L474
$L476:
	lb	$2,0($16)
	lw	$3,56($17)
	lb	$3,0($3)
	xor	$2,$3
	bnez	$2,$L475
	lw	$2,64($17)
	addiu	$6,$2,-1
	lw	$2,56($17)
	addiu	$5,$2,1
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	memcmp
	.option	pic2
	addiu	$4,$16,1
	.set	macro
	.set	reorder

	beqz	$2,$L479
$L475:
	addiu	$16,1
$L474:
	lw	$2,8($17)
	sltu	$2,$16
	bteqz	$L476
	li	$2,0
	b	$L473
$L477:
	move	$2,$4
	b	$L473
$L478:
	li	$2,0
	b	$L473
$L479:
	move	$2,$16
$L473:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L481
	move	$28,$2
	sw	$2,0($17)
	move	$16,$6
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	addu	$2,$2,$16
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_481, @object
__pool_mempcpy_481:
	.align	2
$L481:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_481, @object
__pend_mempcpy_481:
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
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L502
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,40($17)
	sw	$5,48($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L503
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L499
	ld	$2,$L504
	ld	$3,40($17)
	xor	$3,$2
	sd	$3,40($17)
	li	$2,1
	sw	$2,12($17)
	b	$L483
$L499:
	li	$2,0
	sw	$2,12($17)
$L483:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L505
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L494
	b	$L500
$L487:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,$L506
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sd	$2,40($17)
	b	$L485
$L494:
	li	$2,0
	sw	$2,8($17)
$L485:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L505
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L487
	b	$L488
$L500:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L506
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	bteqz	$L501
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L503
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L496
	li	$2,0
	sw	$2,8($17)
	b	$L488
$L491:
	lw	$2,8($17)
	addiu	$2,-1
	sw	$2,8($17)
	lw	$2,%call16(__mips16_adddf3)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sd	$2,40($17)
	b	$L490
$L496:
	li	$2,0
	sw	$2,8($17)
$L490:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L506
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L491
	b	$L488
$L501:
	li	$2,0
	sw	$2,8($17)
$L488:
	lw	$2,48($17)
	lw	$3,8($17)
	sw	$3,0($2)
	lw	$2,12($17)
	beqz	$2,$L492
	ld	$2,$L504
	ld	$3,40($17)
	xor	$3,$2
	sd	$3,40($17)
$L492:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
	.set	macro
	.set	reorder

	.type	__pool_frexp_502, @object
__pool_frexp_502:
	.align	2
$L502:
	.word	__gnu_local_gp
	.align	3
$L503:
	.word	0
	.word	0
$L504:
	.dword	-9223372036854775808
$L505:
	.word	1072693248
	.word	0
$L506:
	.word	1071644672
	.word	0
	.type	__pend_frexp_502, @object
__pend_frexp_502:
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
	b	$L508
$L510:
	li	$3,1
	and	$3,$4
	beqz	$3,$L509
	daddu	$2,$2,$5
$L509:
	dsll	$5,$5,1
	dsrl	$4,1
$L508:
	bnez	$4,$L510
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$7,33
	li	$3,1
	b	$L512
$L514:
	sll	$5,$5,1
	sll	$3,$3,1
$L512:
	sltu	$5,$4
	bteqz	$L519
	addiu	$7,-1
	beqz	$7,$L520
	slt	$5,0
	bteqz	$L514
	li	$2,0
	b	$L516
$L517:
	sltu	$4,$5
	btnez	$L515
	subu	$4,$4,$5
	or	$2,$3
$L515:
	srl	$3,$3,1
	srl	$5,$5,1
	b	$L516
$L519:
	li	$2,0
	b	$L516
$L520:
	li	$2,0
$L516:
	bnez	$3,$L517
	beqz	$6,$L518
	move	$2,$4
$L518:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L526
	move	$28,$2
	sw	$2,0($17)
	slt	$4,0
	bteqz	$L523
	not	$4,$4
$L523:
	beqz	$4,$L525
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

	lw	$6,0($17)
	move	$28,$6
	addiu	$2,-33
	b	$L524
$L525:
	li	$2,7
$L524:
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,24
	.set	macro
	.set	reorder

	.type	__pool___clrsbqi2_526, @object
__pool___clrsbqi2_526:
	.align	2
$L526:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_526, @object
__pend___clrsbqi2_526:
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
	sd	$31,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L531
	move	$28,$2
	sw	$2,0($17)
	slt	$4,0
	bteqz	$L528
	not	$4,$4
$L528:
	beqz	$4,$L530
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	addiu	$2,-1
	b	$L529
$L530:
	li	$2,63
$L529:
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,24
	.set	macro
	.set	reorder

	.type	__pool___clrsbdi2_531, @object
__pool___clrsbdi2_531:
	.align	2
$L531:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_531, @object
__pend___clrsbdi2_531:
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
	b	$L533
$L535:
	li	$3,1
	and	$3,$4
	beqz	$3,$L534
	addu	$2,$2,$5
$L534:
	srl	$4,$4,1
	sll	$5,$5,1
$L533:
	bnez	$4,$L535
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	srl	$16,$6,3
	li	$2,8
	neg	$2,$2
	and	$2,$6
	sltu	$4,$5
	btnez	$L537
	addu	$3,$5,$6
	sltu	$3,$4
	bteqz	$L538
$L537:
	move	$3,$5
	move	$7,$4
	sll	$16,$16,3
	addu	$16,$16,$5
	move	$8,$16
	b	$L539
$L540:
	ld	$16,0($3)
	sd	$16,0($7)
	addiu	$3,8
	addiu	$7,8
$L539:
	move	$16,$8
	cmp	$3,$16
	btnez	$L540
	b	$L541
$L542:
	addu	$3,$5,$2
	lb	$7,0($3)
	addu	$3,$4,$2
	sb	$7,0($3)
	addiu	$2,1
$L541:
	sltu	$2,$6
	btnez	$L542
	b	$L536
$L544:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L538:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L544
$L536:
	move	$sp,$17
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
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	srl	$16,$6,1
	sltu	$4,$5
	btnez	$L546
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L547
$L546:
	move	$2,$5
	move	$3,$4
	sll	$16,$16,1
	addu	$16,$16,$5
	b	$L548
$L549:
	lh	$7,0($2)
	sh	$7,0($3)
	addiu	$2,2
	addiu	$3,2
$L548:
	cmp	$2,$16
	btnez	$L549
	li	$2,1
	and	$2,$6
	beqz	$2,$L545
	addiu	$6,-1
	addu	$5,$5,$6
	addu	$4,$4,$6
	lb	$2,0($5)
	sb	$2,0($4)
	b	$L545
$L551:
	addu	$2,$5,$6
	lb	$3,0($2)
	addu	$2,$4,$6
	sb	$3,0($2)
$L547:
	addiu	$6,-1
	addiu	$2,$6,1
	bnez	$2,$L551
$L545:
	move	$sp,$17
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
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
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	srl	$16,$6,2
	li	$2,4
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
	sll	$16,$16,2
	addu	$16,$16,$5
	move	$8,$16
	b	$L555
$L556:
	lw	$16,0($3)
	sw	$16,0($7)
	addiu	$3,4
	addiu	$7,4
$L555:
	move	$16,$8
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
	move	$sp,$17
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L563
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
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,24
	.set	macro
	.set	reorder

	.type	__pool___uitod_563, @object
__pool___uitod_563:
	.align	2
$L563:
	.word	__gnu_local_gp
	.type	__pend___uitod_563, @object
__pend___uitod_563:
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
	sd	$31,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L565
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
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,24
	.set	macro
	.set	reorder

	.type	__pool___uitof_565, @object
__pool___uitof_565:
	.align	2
$L565:
	.word	__gnu_local_gp
	.type	__pend___uitof_565, @object
__pend___uitof_565:
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
	sd	$31,56($sp)
	move	$3,$18
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L567
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
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool___ulltod_567, @object
__pool___ulltod_567:
	.align	2
$L567:
	.word	__gnu_local_gp
	.type	__pend___ulltod_567, @object
__pend___ulltod_567:
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
	sd	$31,56($sp)
	move	$3,$18
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L569
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
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool___ulltof_569, @object
__pool___ulltof_569:
	.align	2
$L569:
	.word	__gnu_local_gp
	.type	__pend___ulltof_569, @object
__pend___ulltof_569:
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	b	$L572
$L574:
	li	$5,15
	subu	$5,$5,$2
	move	$3,$4
	sra	$3,$5
	li	$5,1
	and	$3,$5
	bnez	$3,$L573
	addiu	$2,1
$L572:
	cmpi	$2,16
	btnez	$L574
$L573:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	b	$L576
$L578:
	move	$3,$4
	sra	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L577
	addiu	$2,1
$L576:
	cmpi	$2,16
	btnez	$L578
$L577:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L585
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	lw	$2,%call16(__mips16_gesf2)($16)
	lw	$5,$L586
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L584
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L586
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$2
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	li	$3,32768
	addu	$2,$2,$3
	b	$L582
$L584:
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$16
	lw	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
$L582:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool___fixunssfsi_585, @object
__pool___fixunssfsi_585:
	.align	2
$L585:
	.word	__gnu_local_gp
$L586:
	.word	1191182336
	.type	__pend___fixunssfsi_585, @object
__pend___fixunssfsi_585:
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
	b	$L588
$L590:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	beqz	$5,$L589
	addiu	$2,1
$L589:
	addiu	$3,1
$L588:
	cmpi	$3,16
	btnez	$L590
	li	$3,1
	and	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,0
	li	$3,0
	b	$L592
$L594:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	beqz	$5,$L593
	addiu	$2,1
$L593:
	addiu	$3,1
$L592:
	cmpi	$3,16
	btnez	$L594
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	b	$L596
$L598:
	li	$3,1
	and	$3,$4
	beqz	$3,$L597
	addu	$2,$2,$5
$L597:
	srl	$4,$4,1
	sll	$5,$5,1
$L596:
	bnez	$4,$L598
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	beqz	$4,$L604
	li	$2,0
	b	$L601
$L603:
	li	$3,1
	and	$3,$5
	beqz	$3,$L602
	addu	$2,$2,$4
$L602:
	sll	$4,$4,1
	srl	$5,$5,1
$L601:
	bnez	$5,$L603
	b	$L600
$L604:
	li	$2,0
$L600:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$7,33
	li	$3,1
	b	$L606
$L608:
	sll	$5,$5,1
	sll	$3,$3,1
$L606:
	sltu	$5,$4
	bteqz	$L613
	addiu	$7,-1
	beqz	$7,$L614
	slt	$5,0
	bteqz	$L608
	li	$2,0
	b	$L610
$L611:
	sltu	$4,$5
	btnez	$L609
	subu	$4,$4,$5
	or	$2,$3
$L609:
	srl	$3,$3,1
	srl	$5,$5,1
	b	$L610
$L613:
	li	$2,0
	b	$L610
$L614:
	li	$2,0
$L610:
	bnez	$3,$L611
	beqz	$6,$L612
	move	$2,$4
$L612:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L620
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	lw	$2,%call16(__mips16_ltsf2)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$5,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L618
	lw	$16,%call16(__mips16_gtsf2)($16)
	lw	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$16
	lw	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	move	$2,$24
	b	$L617
$L618:
	li	$2,1
	neg	$2,$2
$L617:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool___mspabi_cmpf_620, @object
__pool___mspabi_cmpf_620:
	.align	2
$L620:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_620, @object
__pend___mspabi_cmpf_620:
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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L625
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$5,40($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	btnez	$L623
	lw	$16,%call16(__mips16_gtdf2)($16)
	ld	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$16
	ld	$4,32($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	move	$2,$24
	b	$L622
$L623:
	li	$2,1
	neg	$2,$2
$L622:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
	.set	macro
	.set	reorder

	.type	__pool___mspabi_cmpd_625, @object
__pool___mspabi_cmpd_625:
	.align	2
$L625:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_625, @object
__pend___mspabi_cmpd_625:
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	slt	$5,0
	bteqz	$L635
	neg	$5,$5
	li	$7,1
	b	$L629
$L635:
	li	$7,0
$L629:
	li	$3,33
	li	$2,0
	b	$L630
$L633:
	li	$6,1
	and	$6,$5
	beqz	$6,$L631
	addu	$2,$2,$4
$L631:
	sll	$4,$4,1
	sra	$5,$5,1
$L630:
	beqz	$5,$L632
	addiu	$3,-1
	zeb	$3
	bnez	$3,$L633
$L632:
	beqz	$7,$L634
	neg	$2,$2
$L634:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	slt	$4,0
	bteqz	$L641
	neg	$4,$4
	li	$16,1
	b	$L638
$L641:
	li	$16,0
$L638:
	slt	$5,0
	bteqz	$L639
	neg	$5,$5
	li	$2,1
	xor	$16,$2
$L639:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,0
	.set	macro
	.set	reorder

	beqz	$16,$L640
	neg	$2,$2
$L640:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	sd	$31,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	slt	$4,0
	bteqz	$L646
	neg	$4,$4
	li	$16,1
	b	$L643
$L646:
	li	$16,0
$L643:
	slt	$5,0
	bteqz	$L644
	neg	$5,$5
$L644:
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__udivmodsi4
	.option	pic2
	li	$6,1
	.set	macro
	.set	reorder

	beqz	$16,$L645
	neg	$2,$2
$L645:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,32
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,17
	li	$3,1
	b	$L648
$L650:
	sll	$5,$5,1
	zeh	$5
	sll	$3,$3,1
	zeh	$3
$L648:
	sltu	$5,$4
	bteqz	$L655
	addiu	$2,-1
	beqz	$2,$L656
	move	$7,$5
	seh	$7
	slt	$7,0
	bteqz	$L650
	li	$2,0
	b	$L652
$L653:
	sltu	$4,$5
	btnez	$L651
	subu	$4,$4,$5
	zeh	$4
	or	$2,$3
$L651:
	srl	$3,$3,1
	srl	$5,$5,1
	b	$L652
$L655:
	li	$2,0
	b	$L652
$L656:
	li	$2,0
$L652:
	bnez	$3,$L653
	beqz	$6,$L654
	move	$2,$4
$L654:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$7,33
	li	$3,1
	b	$L659
$L661:
	sll	$5,$5,1
	sll	$3,$3,1
$L659:
	sltu	$5,$4
	bteqz	$L666
	addiu	$7,-1
	beqz	$7,$L667
	slt	$5,0
	bteqz	$L661
	li	$2,0
	b	$L663
$L664:
	sltu	$4,$5
	btnez	$L662
	subu	$4,$4,$5
	or	$2,$3
$L662:
	srl	$3,$3,1
	srl	$5,$5,1
	b	$L663
$L666:
	li	$2,0
	b	$L663
$L667:
	li	$2,0
$L663:
	bnez	$3,$L664
	beqz	$6,$L665
	move	$2,$4
$L665:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,32
	and	$2,$5
	beqz	$2,$L670
	sll	$4,$4,0
	sll	$4,$5
	dsll	$2,$4,32
	b	$L672
$L670:
	beqz	$5,$L673
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
	or	$2,$3
	b	$L672
$L673:
	move	$2,$4
$L672:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	beqz	$2,$L675
	li	$2,0
	sd	$2,32($17)
	ld	$2,16($17)
	dsll	$2,$6
	sd	$2,24($17)
	b	$L676
$L675:
	beqz	$6,$L678
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
$L676:
	ld	$3,32($17)
	ld	$2,24($17)
	b	$L677
$L678:
	move	$3,$5
	move	$2,$4
$L677:
	move	$sp,$17
	ld	$17,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,48
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$2,32
	and	$2,$5
	beqz	$2,$L680
	dsra	$4,32
	sll	$4,$4,0
	sra	$2,$4,31
	sra	$4,$5
	dsll	$4,$4,32
	dsrl	$4,32
	dsll	$2,$2,32
	or	$2,$4
	b	$L682
$L680:
	beqz	$5,$L683
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
	or	$2,$3
	b	$L682
$L683:
	move	$2,$4
$L682:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	beqz	$2,$L685
	ld	$2,8($17)
	move	$3,$2
	dsra	$3,63
	sd	$3,24($17)
	dsra	$2,$6
	sd	$2,32($17)
	b	$L686
$L685:
	beqz	$6,$L688
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
$L686:
	ld	$3,32($17)
	ld	$2,24($17)
	b	$L687
$L688:
	move	$3,$5
	move	$2,$4
$L687:
	move	$sp,$17
	ld	$17,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,48
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
	ld	$2,$L690
	and	$16,$2
	move	$7,$4
	dsrl	$7,8
	ld	$2,$L691
	and	$7,$2
	dsll	$6,$4,8
	ld	$2,$L692
	and	$6,$2
	dsll	$5,$4,24
	ld	$2,$L693
	and	$5,$2
	dsll	$3,$4,40
	ld	$2,$L694
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_690, @object
__pool___bswapdi2_690:
	.align	3
$L690:
	.dword	16711680
$L691:
	.dword	4278190080
$L692:
	.dword	1095216660480
$L693:
	.dword	280375465082880
$L694:
	.dword	71776119061217280
	.type	__pend___bswapdi2_690, @object
__pend___bswapdi2_690:
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
	srl	$5,$4,24
	srl	$3,$4,8
	li	$2,65280
	and	$3,$2
	sll	$2,$4,8
	lw	$6,$L696
	and	$2,$6
	sll	$4,$4,24
	or	$4,$5
	or	$4,$3
	or	$2,$4
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

	.type	__pool___bswapsi2_696, @object
__pool___bswapsi2_696:
	.align	2
$L696:
	.word	16711680
	.type	__pend___bswapsi2_696, @object
__pend___bswapsi2_696:
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
	lw	$2,$L706
	sltu	$4,$2
	bteqz	$L702
	li	$2,16
	b	$L698
$L702:
	li	$2,0
$L698:
	li	$3,16
	subu	$3,$3,$2
	srl	$4,$3
	li	$3,65280
	and	$3,$4
	bnez	$3,$L703
	li	$5,8
	b	$L699
$L703:
	li	$5,0
$L699:
	li	$3,8
	subu	$3,$3,$5
	srl	$4,$3
	addu	$2,$2,$5
	li	$3,240
	and	$3,$4
	bnez	$3,$L704
	li	$5,4
	b	$L700
$L704:
	li	$5,0
$L700:
	li	$3,4
	subu	$3,$3,$5
	srl	$4,$3
	addu	$2,$2,$5
	li	$3,12
	and	$3,$4
	bnez	$3,$L705
	li	$5,2
	b	$L701
$L705:
	li	$5,0
$L701:
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_706, @object
__pool___clzsi2_706:
	.align	2
$L706:
	.word	65536
	.type	__pend___clzsi2_706, @object
__pend___clzsi2_706:
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
	sd	$31,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	addiu	$17,$sp,32
	lw	$2,$L708
	move	$28,$2
	sw	$2,0($17)
	move	$3,$5
	move	$2,$4
	sd	$5,16($17)
	sd	$4,8($17)
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

	lw	$6,0($17)
	move	$28,$6
	li	$3,64
	and	$3,$16
	addu	$2,$2,$3
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___clzti2_708, @object
__pool___clzti2_708:
	.align	2
$L708:
	.word	__gnu_local_gp
	.type	__pend___clzti2_708, @object
__pend___clzti2_708:
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
	slt	$2,$3
	btnez	$L711
	move	$2,$4
	dsra	$2,32
	move	$3,$5
	dsra	$3,32
	slt	$3,$2
	btnez	$L712
	sll	$3,$4,0
	sll	$2,$5,0
	sltu	$3,$2
	btnez	$L713
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$5,$4
	btnez	$L714
	li	$2,1
	b	$L710
$L711:
	li	$2,0
	b	$L710
$L712:
	li	$2,2
	b	$L710
$L713:
	li	$2,0
	b	$L710
$L714:
	li	$2,2
$L710:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$17,40($sp)
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__cmpdi2
	.option	pic2
	addiu	$17,$sp,32
	.set	macro
	.set	reorder

	addiu	$2,-1
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,24
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
	slt	$4,$6
	btnez	$L718
	ld	$2,8($17)
	ld	$3,24($17)
	slt	$3,$2
	btnez	$L719
	ld	$2,16($17)
	ld	$3,32($17)
	sltu	$2,$3
	btnez	$L720
	sltu	$3,$2
	btnez	$L721
	li	$2,1
	b	$L717
$L718:
	li	$2,0
	b	$L717
$L719:
	li	$2,2
	b	$L717
$L720:
	li	$2,0
	b	$L717
$L721:
	li	$2,2
$L717:
	move	$sp,$17
	ld	$17,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,48
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	zeh	$2
	bnez	$2,$L727
	li	$3,16
	b	$L723
$L727:
	li	$3,0
$L723:
	srl	$4,$3
	move	$2,$4
	zeb	$2
	bnez	$2,$L728
	li	$2,8
	b	$L724
$L728:
	li	$2,0
$L724:
	srl	$4,$2
	addu	$3,$3,$2
	li	$2,15
	and	$2,$4
	bnez	$2,$L729
	li	$2,4
	b	$L725
$L729:
	li	$2,0
$L725:
	srl	$4,$2
	addu	$3,$3,$2
	li	$2,3
	and	$2,$4
	bnez	$2,$L730
	li	$2,2
	b	$L726
$L730:
	li	$2,0
$L726:
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
	addu	$2,$3,$2
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,48,$31		# vars= 16, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-80
	sd	$31,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	addiu	$17,$sp,32
	lw	$2,$L732
	move	$28,$2
	sw	$2,0($17)
	sd	$5,16($17)
	sd	$4,8($17)
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

	lw	$6,0($17)
	move	$28,$6
	li	$3,64
	and	$3,$16
	addu	$2,$2,$3
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___ctzti2_732, @object
__pool___ctzti2_732:
	.align	2
$L732:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_732, @object
__pend___ctzti2_732:
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
	sd	$31,64($sp)
	sd	$17,56($sp)
	addiu	$17,$sp,32
	lw	$2,$L737
	move	$28,$2
	sw	$2,0($17)
	move	$2,$28
	sd	$5,16($17)
	sd	$4,8($17)
	bnez	$5,$L734
	ld	$3,8($17)
	beqz	$3,$L736
	lw	$2,%call16(__ctzdi2)($2)
	move	$4,$3
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	addiu	$2,65
	b	$L735
$L734:
	lw	$2,%call16(__ctzdi2)($2)
	ld	$4,16($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	addiu	$2,1
	b	$L735
$L736:
	li	$2,0
$L735:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
	.set	macro
	.set	reorder

	.type	__pool___ffsti2_737, @object
__pool___ffsti2_737:
	.align	2
$L737:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_737, @object
__pend___ffsti2_737:
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
	li	$2,32
	and	$2,$5
	beqz	$2,$L739
	dsrl	$4,32
	sll	$4,$4,0
	srl	$4,$5
	dsll	$2,$4,32
	dsrl	$2,32
	b	$L741
$L739:
	beqz	$5,$L742
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
	or	$2,$3
	b	$L741
$L742:
	move	$2,$4
$L741:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

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
	beqz	$2,$L744
	li	$2,0
	sd	$2,24($17)
	ld	$2,8($17)
	dsrl	$2,$6
	sd	$2,32($17)
	b	$L745
$L744:
	beqz	$6,$L747
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
$L745:
	ld	$3,32($17)
	ld	$2,24($17)
	b	$L746
$L747:
	move	$3,$5
	move	$2,$4
$L746:
	move	$sp,$17
	ld	$17,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,48
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
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
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
	move	$sp,$17
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	move	$16,$4
	sd	$5,48($17)
	sw	$4,8($17)
	sw	$5,12($17)
	sll	$5,$5,0
	sll	$4,$4,0
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
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
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
	sd	$3,16($17)
	dsrl	$2,32
	daddu	$2,$2,$7
	dmult	$4,$5
	mflo	$3
	daddu	$2,$3,$2
	sd	$2,8($17)
	ld	$3,16($17)
	ld	$2,8($17)
	move	$sp,$17
	ld	$17,24($sp)
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
	.frame	$17,72,$31		# vars= 48, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-104
	sd	$31,96($sp)
	sd	$17,88($sp)
	addiu	$17,$sp,32
	move	$3,$5
	move	$5,$7
	sd	$3,16($17)
	sd	$4,8($17)
	sd	$7,32($17)
	sd	$6,24($17)
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__mulddi3
	.option	pic2
	move	$4,$3
	.set	macro
	.set	reorder

	move	$6,$2
	sd	$3,48($17)
	ld	$2,8($17)
	ld	$3,32($17)
	dmult	$2,$3
	mflo	$3
	ld	$2,24($17)
	ld	$4,16($17)
	dmult	$2,$4
	mflo	$4
	daddu	$3,$3,$4
	daddu	$2,$3,$6
	sd	$2,40($17)
	ld	$3,48($17)
	ld	$2,40($17)
	move	$sp,$17
	ld	$7,64($sp)
	ld	$17,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	li	$7,0
	li	$6,0
	dsubu	$3,$7,$5
	sltu	$7,$3
	move	$5,$24
	dsubu	$2,$6,$4
	dsubu	$2,$2,$5
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
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
	move	$sp,$17
	ld	$17,24($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,32
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	dsrl	$2,1
	ld	$3,$L758
	and	$2,$3
	dsubu	$4,$4,$2
	move	$2,$4
	dsrl	$2,2
	ld	$3,$L759
	and	$2,$3
	and	$4,$3
	daddu	$4,$2,$4
	move	$2,$4
	dsrl	$2,4
	daddu	$4,$2,$4
	ld	$2,$L760
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
	and	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

	.type	__pool___popcountdi2_758, @object
__pool___popcountdi2_758:
	.align	3
$L758:
	.dword	6148914691236517205
$L759:
	.dword	3689348814741910323
$L760:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_758, @object
__pend___popcountdi2_758:
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
	srl	$2,$4,1
	lw	$3,$L762
	and	$2,$3
	subu	$4,$4,$2
	srl	$2,$4,2
	lw	$3,$L763
	and	$2,$3
	and	$4,$3
	addu	$4,$2,$4
	srl	$2,$4,4
	addu	$4,$2,$4
	lw	$2,$L764
	and	$4,$2
	srl	$2,$4,8
	srl	$2,$2,8
	addu	$4,$4,$2
	srl	$2,$4,8
	addu	$2,$2,$4
	li	$3,63
	and	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

	.type	__pool___popcountsi2_762, @object
__pool___popcountsi2_762:
	.align	2
$L762:
	.word	1431655765
$L763:
	.word	858993459
$L764:
	.word	252645135
	.type	__pend___popcountsi2_762, @object
__pend___popcountsi2_762:
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
	move	$10,$4
	dsll	$6,$4,63
	move	$4,$5
	dsrl	$4,1
	move	$3,$4
	or	$3,$6
	move	$4,$10
	dsrl	$4,1
	ld	$16,$L766
	and	$4,$16
	move	$2,$3
	and	$2,$16
	dsubu	$2,$5,$2
	move	$9,$2
	sltu	$5,$2
	move	$5,$24
	move	$2,$10
	dsubu	$2,$2,$4
	dsubu	$2,$2,$5
	move	$8,$2
	dsll	$6,$2,62
	move	$7,$9
	dsrl	$7,2
	move	$5,$7
	or	$5,$6
	move	$6,$2
	dsrl	$6,2
	ld	$16,$L767
	move	$2,$6
	and	$2,$16
	move	$6,$2
	move	$2,$5
	and	$2,$16
	move	$7,$2
	move	$2,$8
	and	$2,$16
	move	$12,$2
	move	$2,$9
	and	$2,$16
	daddu	$2,$7,$2
	move	$11,$2
	sltu	$2,$7
	move	$5,$24
	move	$2,$12
	daddu	$2,$6,$2
	daddu	$2,$5,$2
	move	$10,$2
	move	$3,$11
	dsll	$4,$2,60
	move	$2,$11
	dsrl	$2,4
	move	$7,$2
	or	$7,$4
	move	$2,$10
	dsrl	$2,4
	move	$6,$2
	daddu	$5,$7,$3
	sltu	$5,$7
	move	$3,$24
	move	$2,$10
	daddu	$4,$6,$2
	daddu	$4,$3,$4
	ld	$2,$L768
	move	$3,$4
	and	$3,$2
	move	$8,$3
	move	$3,$5
	and	$3,$2
	move	$9,$3
	move	$3,$8
	move	$4,$9
	daddu	$3,$3,$4
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
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

	.type	__pool___popcountti2_766, @object
__pool___popcountti2_766:
	.align	3
$L766:
	.dword	6148914691236517205
$L767:
	.dword	3689348814741910323
$L768:
	.dword	1085102592571150095
	.type	__pend___popcountti2_766, @object
__pend___popcountti2_766:
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
	sd	$31,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	addiu	$17,$sp,32
	lw	$2,$L775
	move	$28,$2
	sw	$2,0($17)
	sd	$4,48($17)
	move	$16,$5
	srl	$2,$5,31
	sw	$2,16($17)
	ld	$2,$L776
	sd	$2,8($17)
$L772:
	li	$2,1
	and	$2,$16
	beqz	$2,$L770
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$5,48($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,8($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sd	$2,8($17)
$L770:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L771
	move	$2,$28
	lw	$2,%call16(__mips16_muldf3)($2)
	ld	$5,48($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sd	$2,48($17)
	b	$L772
$L771:
	lw	$2,16($17)
	beqz	$2,$L774
	move	$2,$28
	lw	$2,%call16(__mips16_divdf3)($2)
	ld	$4,$L776
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$5,8($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	b	$L773
$L774:
	ld	$2,8($17)
$L773:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___powidf2_775, @object
__pool___powidf2_775:
	.align	2
$L775:
	.word	__gnu_local_gp
	.align	3
$L776:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_775, @object
__pend___powidf2_775:
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
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L783
	move	$28,$2
	sw	$2,0($17)
	sw	$4,40($17)
	move	$16,$5
	srl	$2,$5,31
	sw	$2,12($17)
	lw	$2,$L784
	sw	$2,8($17)
$L780:
	li	$2,1
	and	$2,$16
	beqz	$2,$L778
	move	$2,$28
	lw	$2,%call16(__mips16_mulsf3)($2)
	lw	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,8($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sw	$2,8($17)
$L778:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L779
	move	$2,$28
	lw	$2,%call16(__mips16_mulsf3)($2)
	lw	$5,40($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	sw	$2,40($17)
	b	$L780
$L779:
	lw	$2,12($17)
	beqz	$2,$L782
	move	$2,$28
	lw	$2,%call16(__mips16_divsf3)($2)
	lw	$4,$L784
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$5,8($17)
	.set	macro
	.set	reorder

	lw	$6,0($17)
	move	$28,$6
	b	$L781
$L782:
	lw	$2,8($17)
$L781:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,40
	.set	macro
	.set	reorder

	.type	__pool___powisf2_783, @object
__pool___powisf2_783:
	.align	2
$L783:
	.word	__gnu_local_gp
$L784:
	.word	1065353216
	.type	__pend___powisf2_783, @object
__pend___powisf2_783:
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
	btnez	$L787
	move	$3,$4
	dsrl	$3,32
	sll	$3,$3,0
	move	$2,$5
	dsrl	$2,32
	sll	$2,$2,0
	sltu	$2,$3
	btnez	$L788
	sll	$3,$4,0
	sll	$2,$5,0
	sltu	$3,$2
	btnez	$L789
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$5,$4
	btnez	$L790
	li	$2,1
	b	$L786
$L787:
	li	$2,0
	b	$L786
$L788:
	li	$2,2
	b	$L786
$L789:
	li	$2,0
	b	$L786
$L790:
	li	$2,2
$L786:
	move	$sp,$17
	ld	$17,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$17,40($sp)
	.option	pic0
	.set	noreorder
	.set	nomacro
	jal	__ucmpdi2
	.option	pic2
	addiu	$17,$sp,32
	.set	macro
	.set	reorder

	addiu	$2,-1
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,24
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
	sltu	$4,$6
	btnez	$L794
	ld	$2,8($17)
	ld	$3,24($17)
	sltu	$3,$2
	btnez	$L795
	ld	$2,16($17)
	ld	$3,32($17)
	sltu	$2,$3
	btnez	$L796
	sltu	$3,$2
	btnez	$L797
	li	$2,1
	b	$L793
$L794:
	li	$2,0
	b	$L793
$L795:
	li	$2,2
	b	$L793
$L796:
	li	$2,0
	b	$L793
$L797:
	li	$2,2
$L793:
	move	$sp,$17
	ld	$17,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,48
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
