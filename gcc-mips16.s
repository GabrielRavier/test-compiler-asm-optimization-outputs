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
	bteqz	$L7
	addu	$5,$5,$6
	addu	$3,$4,$6
	beqz	$6,$L17
$L9:
	addiu	$5,-1
	addiu	$3,-1
	lb	$4,0($5)
	sb	$4,0($3)
	cmp	$2,$3
	btnez	$L9
	jr	$31
$L7:
	cmp	$4,$5
	bteqz	$L17
	beqz	$6,$L17
	move	$3,$4
	addu	$6,$4,$6
$L10:
	lb	$4,0($5)
	sb	$4,0($3)
	addiu	$3,1
	addiu	$5,1
	cmp	$3,$6
	btnez	$L10
$L17:
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
	beqz	$7,$L24
$L20:
	lbu	$3,0($5)
	sb	$3,0($4)
	xor	$3,$6
	beqz	$3,$L30
	addiu	$7,-1
	addiu	$5,1
	addiu	$4,1
	bnez	$7,$L20
$L24:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L30:
	beqz	$7,$L24
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
	beqz	$6,$L37
$L32:
	lbu	$3,0($4)
	xor	$3,$5
	beqz	$3,$L39
	addiu	$4,1
	addiu	$6,-1
	bnez	$6,$L32
$L37:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L39:
	move	$2,$4
	beqz	$6,$L37
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	b	$L51
$L43:
	addiu	$6,-1
	addiu	$4,1
	addiu	$5,1
$L51:
	beqz	$6,$L45
	lbu	$2,0($4)
	lbu	$3,0($5)
	cmp	$2,$3
	bteqz	$L43
	beqz	$6,$L45
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L45:
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
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	beqz	$6,$L58
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L61
	move	$28,$2
	sw	$2,32($sp)
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
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L58:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_memcpy_61, @object
__pool_memcpy_61:
	.align	2
$L61:
	.word	__gnu_local_gp
	.type	__pend_memcpy_61, @object
__pend_memcpy_61:
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
$L63:
	cmp	$6,$4
	bteqz	$L66
	move	$2,$6
	addiu	$6,-1
	lbu	$3,0($2)
	xor	$3,$5
	bnez	$3,$L63
	jr	$31
$L66:
	li	$2,0
$L62:
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
	beqz	$6,$L73
	addu	$6,$4,$6
	move	$3,$4
$L69:
	sb	$5,0($3)
	addiu	$3,1
	cmp	$6,$3
	btnez	$L69
$L73:
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
	beqz	$3,$L80
$L76:
	addiu	$5,1
	addiu	$2,1
	lb	$3,0($5)
	sb	$3,0($2)
	bnez	$3,$L76
$L80:
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
	lb	$3,0($4)
	beqz	$3,$L88
$L82:
	zeb	$3
	xor	$3,$5
	beqz	$3,$L88
	addiu	$2,1
	lb	$3,0($2)
	bnez	$3,$L82
	jr	$31
$L88:
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
	move	$2,$4
$L92:
	lb	$3,0($2)
	cmp	$3,$5
	bteqz	$L93
	addiu	$2,1
	bnez	$3,$L92
	li	$2,0
$L93:
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
	b	$L98
$L97:
	addiu	$4,1
	addiu	$5,1
$L98:
	lb	$2,0($4)
	lb	$3,0($5)
	cmp	$2,$3
	btnez	$L96
	bnez	$2,$L97
$L96:
	zeb	$2
	zeb	$3
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
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
	beqz	$2,$L102
	move	$2,$4
$L101:
	addiu	$2,1
	lb	$5,0($2)
	bnez	$5,$L101
$L100:
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$4
	.set	macro
	.set	reorder

$L102:
	move	$2,$4
	b	$L100
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
	beqz	$6,$L108
	lbu	$2,0($4)
	beqz	$2,$L105
	addiu	$6,-1
	addu	$6,$4,$6
$L106:
	lbu	$3,0($5)
	beqz	$3,$L105
	cmp	$4,$6
	bteqz	$L105
	xor	$3,$2
	bnez	$3,$L105
	addiu	$4,1
	addiu	$5,1
	lbu	$2,0($4)
	bnez	$2,$L106
$L105:
	lbu	$3,0($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L108:
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
	btnez	$L121
	li	$2,2
	neg	$2,$2
	and	$6,$2
	addu	$6,$4,$6
$L120:
	lbu	$2,1($4)
	sb	$2,0($5)
	lbu	$2,0($4)
	sb	$2,1($5)
	addiu	$5,2
	addiu	$4,2
	cmp	$4,$6
	btnez	$L120
$L121:
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
	bteqz	$L126
	li	$2,9
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L126:
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
	btnez	$L129
	li	$2,127
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L129:
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
	bteqz	$L136
	addiu	$4,-9
	sltu	$4,5
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L136:
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
	btnez	$L141
	addiu	$2,$4,-8
	addiu	$2,-119
	sltu	$2,33
	btnez	$L141
	addiu	$2,$4,-8232
	sltu	$2,2
	btnez	$L142
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

$L141:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L142:
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
	btnez	$L152
	sltu	$4,8232
	btnez	$L149
	addiu	$3,$4,-8234
	li	$2,47062
	sltu	$3,$2
	btnez	$L149
	li	$2,57344
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$2,8185
	btnez	$L149
	li	$2,65532
	neg	$2,$2
	addu	$2,$4,$2
	lw	$3,$L154
	sltu	$3,$2
	btnez	$L150
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

$L152:
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

$L149:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L150:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.type	__pool_iswprint_153, @object
__pool_iswprint_153:
	.align	2
$L153:
	.word	__gnu_local_gp
$L154:
	.word	1048579
	.type	__pend_iswprint_153, @object
__pend_iswprint_153:
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
	btnez	$L157
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

$L157:
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
	lw	$2,$L168
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
	bnez	$2,$L162
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
	bnez	$2,$L163
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
	btnez	$L166
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
$L159:
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

$L162:
	move	$2,$16
	b	$L159
$L163:
	ld	$2,72($sp)
	b	$L159
$L166:
	ld	$2,$L169
	b	$L159
	.type	__pool_fdim_168, @object
__pool_fdim_168:
	.align	2
$L168:
	.word	__gnu_local_gp
	.align	3
$L169:
	.word	0
	.word	0
	.type	__pend_fdim_168, @object
__pend_fdim_168:
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
	lw	$2,$L179
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
	bnez	$2,$L173
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
	bnez	$2,$L174
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
	btnez	$L177
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
$L170:
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

$L173:
	move	$2,$16
	b	$L170
$L174:
	lw	$2,72($sp)
	b	$L170
$L177:
	lw	$2,$L180
	b	$L170
	.type	__pool_fdimf_179, @object
__pool_fdimf_179:
	.align	2
$L179:
	.word	__gnu_local_gp
$L180:
	.word	0
	.type	__pend_fdimf_179, @object
__pend_fdimf_179:
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
	lw	$2,$L193
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$4
	move	$16,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L189
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L188
	move	$2,$17
	dsrl	$2,63
	move	$3,$2
	move	$2,$16
	dsrl	$2,63
	xor	$2,$3
	beqz	$2,$L183
	bnez	$3,$L189
$L188:
	move	$2,$17
	b	$L181
$L183:
	move	$2,$28
	lw	$2,%call16(__mips16_ltdf2)($2)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L189
	move	$16,$17
$L189:
	move	$2,$16
$L181:
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

	.type	__pool_fmax_193, @object
__pool_fmax_193:
	.align	2
$L193:
	.word	__gnu_local_gp
	.type	__pend_fmax_193, @object
__pend_fmax_193:
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
	lw	$2,$L206
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$4
	move	$16,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L202
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L201
	lw	$2,$L207
	move	$3,$2
	and	$3,$17
	and	$2,$16
	xor	$2,$3
	beqz	$2,$L196
	bnez	$3,$L202
$L201:
	move	$2,$17
	b	$L194
$L196:
	move	$2,$28
	lw	$2,%call16(__mips16_ltsf2)($2)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L202
	move	$16,$17
$L202:
	move	$2,$16
$L194:
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

	.type	__pool_fmaxf_206, @object
__pool_fmaxf_206:
	.align	2
$L206:
	.word	__gnu_local_gp
$L207:
	.word	-2147483648
	.type	__pend_fmaxf_206, @object
__pend_fmaxf_206:
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
	lw	$2,$L220
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$4
	move	$16,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L216
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L215
	move	$2,$17
	dsrl	$2,63
	move	$3,$2
	move	$2,$16
	dsrl	$2,63
	xor	$2,$3
	beqz	$2,$L210
	bnez	$3,$L216
$L215:
	move	$2,$17
	b	$L208
$L210:
	move	$2,$28
	lw	$2,%call16(__mips16_ltdf2)($2)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L216
	move	$16,$17
$L216:
	move	$2,$16
$L208:
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

	.type	__pool_fmaxl_220, @object
__pool_fmaxl_220:
	.align	2
$L220:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_220, @object
__pend_fmaxl_220:
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
	lw	$2,$L233
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$4
	move	$17,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L227
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	move	$5,$17
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L229
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	move	$2,$17
	dsrl	$2,63
	xor	$2,$3
	beqz	$2,$L223
	bnez	$3,$L229
$L227:
	move	$2,$17
	b	$L221
$L223:
	move	$2,$28
	lw	$2,%call16(__mips16_ltdf2)($2)
	move	$5,$17
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L229
	move	$16,$17
$L229:
	move	$2,$16
$L221:
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

	.type	__pool_fmin_233, @object
__pool_fmin_233:
	.align	2
$L233:
	.word	__gnu_local_gp
	.type	__pend_fmin_233, @object
__pend_fmin_233:
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
	lw	$2,$L246
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$4
	move	$17,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L240
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	move	$5,$17
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L242
	lw	$2,$L247
	move	$3,$2
	and	$3,$16
	and	$2,$17
	xor	$2,$3
	beqz	$2,$L236
	bnez	$3,$L242
$L240:
	move	$2,$17
	b	$L234
$L236:
	move	$2,$28
	lw	$2,%call16(__mips16_ltsf2)($2)
	move	$5,$17
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L242
	move	$16,$17
$L242:
	move	$2,$16
$L234:
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

	.type	__pool_fminf_246, @object
__pool_fminf_246:
	.align	2
$L246:
	.word	__gnu_local_gp
$L247:
	.word	-2147483648
	.type	__pend_fminf_246, @object
__pend_fminf_246:
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
	lw	$2,$L260
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$4
	move	$17,$5
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L254
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	move	$5,$17
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L256
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	move	$2,$17
	dsrl	$2,63
	xor	$2,$3
	beqz	$2,$L250
	bnez	$3,$L256
$L254:
	move	$2,$17
	b	$L248
$L250:
	move	$2,$28
	lw	$2,%call16(__mips16_ltdf2)($2)
	move	$5,$17
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L256
	move	$16,$17
$L256:
	move	$2,$16
$L248:
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

	.type	__pool_fminl_260, @object
__pool_fminl_260:
	.align	2
$L260:
	.word	__gnu_local_gp
	.type	__pend_fminl_260, @object
__pend_fminl_260:
	.end	fminl
	.size	fminl, .-fminl
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
	lw	$3,$L265
	beqz	$4,$L262
	lw	$5,$L266
$L263:
	li	$2,63
	and	$2,$4
	addu	$2,$5,$2
	lbu	$2,0($2)
	sb	$2,0($3)
	addiu	$3,1
	srl	$4,$4,6
	bnez	$4,$L263
$L262:
	li	$2,0
	sb	$2,0($3)
	lw	$2,$L265
	jr	$31
	.type	__pool_l64a_265, @object
__pool_l64a_265:
	.align	2
$L265:
	.word	s.0
$L266:
	.word	digits
	.type	__pend_l64a_265, @object
__pend_l64a_265:
	.end	l64a
	.size	l64a, .-l64a
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
	lw	$2,$L268
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.type	__pool_srand_268, @object
__pool_srand_268:
	.align	2
$L268:
	.word	seed
	.type	__pend_srand_268, @object
__pend_srand_268:
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
	lw	$3,$L271
	ld	$2,$L272
	ld	$4,0($3)
	dmult	$4,$2
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_271, @object
__pool_rand_271:
	.align	2
$L271:
	.word	seed
	.align	3
$L272:
	.dword	6364136223846793005
	.type	__pend_rand_271, @object
__pend_rand_271:
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
	beqz	$5,$L279
	lw	$2,0($5)
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	beqz	$2,$L280
	sw	$4,4($2)
$L280:
	jr	$31
$L279:
	sw	$5,4($4)
	.set	noreorder
	.set	nomacro
	jr	$31
	sw	$5,0($4)
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
	beqz	$2,$L282
	lw	$3,4($4)
	sw	$3,4($2)
$L282:
	lw	$2,4($4)
	beqz	$2,$L290
	lw	$3,0($4)
	sw	$3,0($2)
$L290:
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
	lw	$2,$L306
	move	$28,$2
	sw	$2,32($sp)
	sw	$4,72($sp)
	sw	$5,80($sp)
	sw	$6,88($sp)
	sw	$7,96($sp)
	lw	$2,88($sp)
	lw	$2,0($2)
	sw	$2,44($sp)
	beqz	$2,$L292
	lw	$17,80($sp)
	li	$16,0
$L294:
	sw	$17,40($sp)
	move	$5,$17
	lw	$4,72($sp)
	lw	$2,108($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L291
	addiu	$16,1
	lw	$2,96($sp)
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
	btnez	$L294
$L292:
	lw	$3,44($sp)
	addiu	$2,$3,1
	lw	$4,88($sp)
	sw	$2,0($4)
	lw	$2,96($sp)
	mult	$2,$3
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	sw	$2,40($sp)
	lw	$3,96($sp)
	beqz	$3,$L291
	move	$6,$3
	lw	$5,72($sp)
	move	$4,$2
	move	$2,$28
	lw	$2,%call16(memmove)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L291:
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

	.type	__pool_lsearch_306, @object
__pool_lsearch_306:
	.align	2
$L306:
	.word	__gnu_local_gp
	.type	__pend_lsearch_306, @object
__pend_lsearch_306:
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
	beqz	$2,$L308
	move	$17,$5
	li	$16,0
$L310:
	sw	$17,40($sp)
	move	$5,$17
	lw	$4,72($sp)
	lw	$2,108($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	beqz	$2,$L307
	addiu	$16,1
	lw	$2,96($sp)
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
	btnez	$L310
$L308:
	li	$2,0
	sw	$2,40($sp)
$L307:
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
	btnez	$L320
$L319:
	jr	$31
$L320:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	b	$L322
$L324:
	addiu	$4,1
$L322:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L324
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	move	$2,$24
	bnez	$2,$L324
	cmpi	$3,43
	bteqz	$L331
	cmpi	$3,45
	btnez	$L332
	li	$6,1
$L325:
	addiu	$4,1
$L326:
	lb	$3,0($4)
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L328
$L327:
	sll	$5,$2,2
	addu	$5,$5,$2
	sll	$5,$5,1
	addiu	$4,1
	seb	$3
	subu	$2,$5,$3
	lb	$3,0($4)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L327
$L328:
	bnez	$6,$L334
	neg	$2,$2
$L334:
	jr	$31
$L331:
	li	$6,0
	b	$L325
$L332:
	li	$6,0
	b	$L326
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	mips16
	.set	nomicromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$31,40($sp)
	.option	pic0
	jal	atoi
	.option	pic2
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	b	$L338
$L340:
	addiu	$4,1
$L338:
	lb	$2,0($4)
	cmpi	$2,32
	bteqz	$L340
	addiu	$3,$2,-8
	addiu	$3,-1
	sltu	$3,5
	move	$6,$24
	bnez	$6,$L340
	cmpi	$2,43
	bteqz	$L341
	cmpi	$2,45
	btnez	$L342
	li	$6,1
$L341:
	addiu	$4,1
$L342:
	lb	$3,0($4)
	addiu	$3,-48
	sltu	$3,10
	li	$2,0
	bteqz	$L344
$L343:
	dsll	$5,$2,2
	daddu	$5,$5,$2
	dsll	$5,$5,1
	addiu	$4,1
	seb	$3
	dsubu	$2,$5,$3
	lb	$3,0($4)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L343
$L344:
	bnez	$6,$L352
	li	$3,0
	dsubu	$2,$3,$2
$L352:
	jr	$31
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
	sw	$7,96($sp)
	beqz	$6,$L354
	move	$16,$6
	b	$L357
$L358:
	move	$16,$17
$L355:
	beqz	$16,$L354
$L357:
	srl	$17,$16,1
	lw	$2,96($sp)
	mult	$17,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	sw	$2,40($sp)
	lw	$5,40($sp)
	lw	$4,72($sp)
	lw	$3,108($sp)
	.set	noreorder
	.set	nomacro
	jalr	$3
	move	$25,$3
	.set	macro
	.set	reorder

	slt	$2,0
	btnez	$L358
	slt	$2,1
	btnez	$L353
	lw	$2,40($sp)
	lw	$3,96($sp)
	addu	$2,$2,$3
	sw	$2,80($sp)
	addiu	$16,-1
	subu	$16,$16,$17
	b	$L355
$L354:
	li	$2,0
	sw	$2,40($sp)
$L353:
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
	beqz	$6,$L364
	move	$16,$6
	b	$L367
$L366:
	move	$16,$7
	beqz	$7,$L364
$L367:
	sra	$7,$16,1
	lw	$2,96($sp)
	mult	$7,$2
	sw	$7,40($sp)
	mflo	$17
	lw	$2,80($sp)
	addu	$17,$2,$17
	lw	$6,116($sp)
	move	$5,$17
	lw	$4,72($sp)
	lw	$2,108($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	beqz	$2,$L363
	slt	$2,1
	lw	$7,40($sp)
	btnez	$L366
	lw	$2,96($sp)
	addu	$2,$17,$2
	sw	$2,80($sp)
	addiu	$16,-1
	sra	$7,$16,1
	b	$L366
$L364:
	li	$17,0
$L363:
	move	$2,$17
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
	btnez	$L378
$L377:
	jr	$31
$L378:
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$3,$4
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
	btnez	$L382
$L381:
	jr	$31
$L382:
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
	btnez	$L386
$L385:
	jr	$31
$L386:
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$3,$4
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
	b	$L396
$L391:
	addiu	$4,4
$L396:
	lw	$3,0($4)
	beqz	$3,$L394
	cmp	$5,$3
	btnez	$L391
	move	$2,$4
	beqz	$3,$L394
$L388:
	jr	$31
$L394:
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
	b	$L406
$L400:
	addiu	$4,4
	addiu	$5,4
$L406:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	btnez	$L399
	beqz	$2,$L399
	bnez	$3,$L400
$L399:
	slt	$2,$3
	btnez	$L402
	slt	$3,$2
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L402:
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
$L408:
	lw	$6,0($5)
	sw	$6,0($3)
	addiu	$3,4
	addiu	$5,4
	bnez	$6,$L408
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
	beqz	$2,$L412
	move	$2,$4
$L411:
	addiu	$2,4
	lw	$3,0($2)
	bnez	$3,$L411
$L410:
	subu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$2,2
	.set	macro
	.set	reorder

$L412:
	move	$2,$4
	b	$L410
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
$L425:
	beqz	$6,$L418
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	btnez	$L415
	beqz	$2,$L415
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	b	$L425
$L415:
	beqz	$6,$L418
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$2
	btnez	$L419
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L418:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L419:
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
	b	$L434
$L429:
	addiu	$6,-1
	addiu	$4,4
$L434:
	beqz	$6,$L432
	lw	$2,0($4)
	cmp	$2,$5
	btnez	$L429
	move	$2,$4
	beqz	$6,$L432
$L426:
	jr	$31
$L432:
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
	b	$L447
$L438:
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
$L447:
	beqz	$6,$L440
	lw	$3,0($4)
	lw	$2,0($5)
	cmp	$3,$2
	bteqz	$L438
	beqz	$6,$L440
	slt	$3,$2
	btnez	$L441
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L440:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L441:
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
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	beqz	$6,$L454
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L457
	move	$28,$2
	sw	$2,32($sp)
	sll	$6,$6,2
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
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L454:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_wmemcpy_457, @object
__pool_wmemcpy_457:
	.align	2
$L457:
	.word	__gnu_local_gp
	.type	__pend_wmemcpy_457, @object
__pend_wmemcpy_457:
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.set	mips16
	.set	nomicromips
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	move	$2,$4
	cmp	$4,$5
	bteqz	$L470
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$16,$4
	move	$7,$5
	addiu	$3,$6,-1
	subu	$17,$4,$5
	sll	$4,$6,2
	sltu	$17,$4
	btnez	$L460
	beqz	$6,$L459
$L461:
	lw	$4,0($7)
	sw	$4,0($16)
	addiu	$3,-1
	addiu	$16,4
	addiu	$7,4
	addiu	$4,$3,1
	bnez	$4,$L461
	b	$L459
$L460:
	beqz	$6,$L459
	sll	$3,$3,2
$L462:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	sw	$6,0($4)
	addiu	$3,-4
	addiu	$4,$3,4
	bnez	$4,$L462
$L459:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L470:
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
	beqz	$6,$L477
	move	$6,$4
$L473:
	sw	$5,0($6)
	addiu	$3,-1
	addiu	$6,4
	addiu	$7,$3,1
	bnez	$7,$L473
$L477:
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
	bteqz	$L479
	addu	$2,$4,$6
	addu	$5,$5,$6
	beqz	$6,$L489
$L481:
	addiu	$2,-1
	addiu	$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
	cmp	$4,$2
	btnez	$L481
	jr	$31
$L479:
	cmp	$4,$5
	bteqz	$L489
	beqz	$6,$L489
	addu	$6,$4,$6
$L482:
	lb	$2,0($4)
	sb	$2,0($5)
	addiu	$4,1
	addiu	$5,1
	cmp	$4,$6
	btnez	$L482
$L489:
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
	or	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	zeh	$2
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
	sll	$2,$4,24
	srl	$3,$4,24
	or	$2,$3
	srl	$3,$4,8
	li	$5,65280
	and	$3,$5
	or	$2,$3
	sll	$4,$4,8
	lw	$3,$L504
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_bswap_32_504, @object
__pool_bswap_32_504:
	.align	2
$L504:
	.word	16711680
	.type	__pend_bswap_32_504, @object
__pend_bswap_32_504:
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
	dsll	$3,$4,56
	move	$2,$4
	dsrl	$2,56
	or	$3,$2
	move	$2,$4
	dsrl	$2,40
	li	$5,65280
	and	$2,$5
	or	$3,$2
	move	$2,$4
	dsrl	$2,24
	ld	$5,$L507
	and	$2,$5
	or	$3,$2
	move	$2,$4
	dsrl	$2,8
	ld	$5,$L508
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,8
	ld	$5,$L509
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,24
	ld	$5,$L510
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L511
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_507, @object
__pool_bswap_64_507:
	.align	3
$L507:
	.dword	16711680
$L508:
	.dword	4278190080
$L509:
	.dword	1095216660480
$L510:
	.dword	280375465082880
$L511:
	.dword	71776119061217280
	.type	__pend_bswap_64_507, @object
__pend_bswap_64_507:
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
$L515:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	addiu	$2,1
	bnez	$3,$L516
	cmpi	$2,32
	btnez	$L515
	li	$2,0
$L516:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	beqz	$4,$L520
	li	$2,1
	and	$2,$4
	bnez	$2,$L522
	li	$2,1
$L519:
	sra	$4,$4,1
	addiu	$2,1
	li	$3,1
	and	$3,$4
	beqz	$3,$L519
	jr	$31
$L520:
	li	$2,0
$L522:
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
	lw	$2,$L529
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltsf2)($17)
	lw	$5,$L530
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L527
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$5,$L531
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
$L524:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L527:
	li	$2,1
	b	$L524
	.type	__pool_gl_isinff_529, @object
__pool_gl_isinff_529:
	.align	2
$L529:
	.word	__gnu_local_gp
$L530:
	.word	-8388609
$L531:
	.word	2139095039
	.type	__pend_gl_isinff_529, @object
__pend_gl_isinff_529:
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
	lw	$2,$L537
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
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
	btnez	$L535
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L539
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
$L532:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L535:
	li	$2,1
	b	$L532
	.type	__pool_gl_isinfd_537, @object
__pool_gl_isinfd_537:
	.align	2
$L537:
	.word	__gnu_local_gp
	.align	3
$L538:
	.word	-1048577
	.word	-1
$L539:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_537, @object
__pend_gl_isinfd_537:
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
	lw	$2,$L545
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L546
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L543
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L547
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
$L540:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L543:
	li	$2,1
	b	$L540
	.type	__pool_gl_isinfl_545, @object
__pool_gl_isinfl_545:
	.align	2
$L545:
	.word	__gnu_local_gp
	.align	3
$L546:
	.word	-1048577
	.word	-1
$L547:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_545, @object
__pend_gl_isinfl_545:
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
	lw	$2,$L550
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

	.type	__pool__Qp_itoq_550, @object
__pool__Qp_itoq_550:
	.align	2
$L550:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_550, @object
__pend__Qp_itoq_550:
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
	lw	$2,$L567
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
	bnez	$2,$L552
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
	beqz	$2,$L552
	slt	$16,0
	btnez	$L566
	lw	$5,$L568
	b	$L556
$L566:
	lw	$5,$L569
	b	$L556
$L555:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L552
	lw	$2,%call16(__mips16_mulsf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$5,$2
$L556:
	li	$2,1
	and	$2,$16
	beqz	$2,$L555
	lw	$2,%call16(__mips16_mulsf3)($17)
	sw	$5,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sw	$2,72($sp)
	lw	$5,40($sp)
	b	$L555
$L552:
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

	.type	__pool_ldexpf_567, @object
__pool_ldexpf_567:
	.align	2
$L567:
	.word	__gnu_local_gp
$L568:
	.word	1073741824
$L569:
	.word	1056964608
	.type	__pend_ldexpf_567, @object
__pend_ldexpf_567:
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
	lw	$2,$L586
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
	bnez	$2,$L571
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
	beqz	$2,$L571
	slt	$16,0
	btnez	$L585
	ld	$5,$L587
	b	$L575
$L585:
	ld	$5,$L588
	b	$L575
$L574:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L571
	lw	$2,%call16(__mips16_muldf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$5,$2
$L575:
	li	$2,1
	and	$2,$16
	beqz	$2,$L574
	lw	$2,%call16(__mips16_muldf3)($17)
	sd	$5,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
	ld	$5,40($sp)
	b	$L574
$L571:
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

	.type	__pool_ldexp_586, @object
__pool_ldexp_586:
	.align	2
$L586:
	.word	__gnu_local_gp
	.align	3
$L587:
	.word	1073741824
	.word	0
$L588:
	.word	1071644672
	.word	0
	.type	__pend_ldexp_586, @object
__pend_ldexp_586:
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
	lw	$2,$L605
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
	bnez	$2,$L590
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
	beqz	$2,$L590
	slt	$16,0
	btnez	$L604
	ld	$5,$L606
	b	$L594
$L604:
	ld	$5,$L607
	b	$L594
$L593:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L590
	lw	$2,%call16(__mips16_muldf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$5,$2
$L594:
	li	$2,1
	and	$2,$16
	beqz	$2,$L593
	lw	$2,%call16(__mips16_muldf3)($17)
	sd	$5,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
	ld	$5,40($sp)
	b	$L593
$L590:
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

	.type	__pool_ldexpl_605, @object
__pool_ldexpl_605:
	.align	2
$L605:
	.word	__gnu_local_gp
	.align	3
$L606:
	.word	1073741824
	.word	0
$L607:
	.word	1071644672
	.word	0
	.type	__pend_ldexpl_605, @object
__pend_ldexpl_605:
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
	beqz	$6,$L618
	addiu	$sp,-8
	sd	$16,0($sp)
	move	$3,$4
	addu	$16,$5,$6
$L610:
	lbu	$7,0($3)
	lbu	$6,0($5)
	xor	$7,$6
	sb	$7,0($3)
	addiu	$5,1
	addiu	$3,1
	cmp	$5,$16
	btnez	$L610
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L618:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	lb	$3,0($4)
	beqz	$3,$L626
	move	$3,$4
$L621:
	addiu	$3,1
	lb	$7,0($3)
	bnez	$7,$L621
	b	$L631
$L626:
	move	$3,$4
	b	$L631
$L624:
	addiu	$5,1
	addiu	$3,1
	addiu	$6,-1
$L631:
	beqz	$6,$L628
	lb	$7,0($5)
	sb	$7,0($3)
	bnez	$7,$L624
	bnez	$6,$L632
$L628:
	sb	$6,0($3)
$L632:
	jr	$31
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
	beqz	$5,$L641
$L634:
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L640
$L633:
	jr	$31
$L641:
	jr	$31
$L640:
	addiu	$2,1
	cmp	$5,$2
	btnez	$L634
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
	lb	$7,0($4)
	beqz	$7,$L649
$L644:
	move	$6,$5
$L647:
	lb	$3,0($6)
	beqz	$3,$L650
	addiu	$6,1
	xor	$3,$7
	bnez	$3,$L647
$L645:
	jr	$31
$L649:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L650:
	addiu	$2,1
	lb	$7,0($2)
	bnez	$7,$L644
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
	b	$L653
$L652:
	addiu	$4,1
	beqz	$3,$L656
$L653:
	lb	$3,0($4)
	cmp	$3,$5
	btnez	$L652
	move	$2,$4
	b	$L652
$L656:
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
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$2,$4
	move	$8,$5
	lb	$16,0($5)
	beqz	$16,$L658
$L659:
	addiu	$5,1
	lb	$4,0($5)
	bnez	$4,$L659
$L658:
	move	$3,$8
	subu	$5,$5,$3
	bnez	$5,$L666
	b	$L660
$L669:
	move	$7,$8
	b	$L662
$L665:
	beqz	$2,$L660
	addiu	$17,$5,-1
	lbu	$6,0($2)
	beqz	$6,$L669
	addu	$17,$2,$17
	move	$7,$8
	move	$4,$2
$L663:
	lbu	$3,0($7)
	beqz	$3,$L662
	cmp	$4,$17
	bteqz	$L662
	xor	$3,$6
	bnez	$3,$L662
	addiu	$4,1
	addiu	$7,1
	lbu	$6,0($4)
	bnez	$6,$L663
$L662:
	lbu	$3,0($7)
	xor	$3,$6
	beqz	$3,$L660
	addiu	$2,1
$L666:
	lb	$3,0($2)
	cmp	$3,$16
	bteqz	$L665
	addiu	$2,1
	bnez	$3,$L666
	li	$2,0
$L660:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
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
	lw	$2,$L691
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L692
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L690
$L681:
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L692
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L684
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L692
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L683
$L684:
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

$L690:
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L692
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L681
$L683:
	ld	$2,$L693
	xor	$16,$2
	b	$L684
	.type	__pool_copysign_691, @object
__pool_copysign_691:
	.align	2
$L691:
	.word	__gnu_local_gp
	.align	3
$L692:
	.word	0
	.word	0
$L693:
	.dword	-9223372036854775808
	.type	__pend_copysign_691, @object
__pend_copysign_691:
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	mips16
	.set	nomicromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	move	$2,$4
	beqz	$7,$L702
	sltu	$5,$7
	btnez	$L723
	move	$8,$6
	subu	$5,$5,$7
	addu	$6,$4,$5
	sltu	$6,$4
	btnez	$L723
	move	$9,$7
	move	$3,$8
	lb	$3,0($3)
	move	$10,$3
$L716:
	lb	$3,0($2)
	move	$7,$2
	addiu	$2,1
	move	$4,$10
	xor	$3,$4
	beqz	$3,$L724
	sltu	$6,$2
	bteqz	$L716
$L723:
	li	$7,0
	b	$L720
$L726:
	beqz	$3,$L694
	subu	$17,$17,$4
	beqz	$17,$L694
$L696:
	sltu	$6,$2
	btnez	$L725
	lb	$3,0($2)
	move	$7,$2
	addiu	$2,1
	move	$4,$10
	xor	$3,$4
	bnez	$3,$L696
	move	$3,$8
	addiu	$5,$3,1
	move	$3,$9
	addiu	$3,-1
	beqz	$3,$L694
$L705:
	move	$16,$2
$L697:
	lbu	$17,0($16)
	lbu	$4,0($5)
	cmp	$17,$4
	btnez	$L726
	addiu	$3,-1
	addiu	$16,1
	addiu	$5,1
	bnez	$3,$L697
$L694:
	move	$2,$7
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L725:
	li	$7,0
	b	$L694
$L702:
	move	$7,$4
$L720:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$7
	.set	macro
	.set	reorder

$L724:
	move	$3,$8
	addiu	$5,$3,1
	move	$3,$9
	addiu	$3,-1
	beqz	$3,$L720
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	b	$L705
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
	lw	$2,$L733
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$6
	beqz	$6,$L728
	move	$2,$28
	lw	$2,%call16(memmove)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$4,$2
$L728:
	addu	$2,$4,$16
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_733, @object
__pool_mempcpy_733:
	.align	2
$L733:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_733, @object
__pend_mempcpy_733:
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
	lw	$2,$L761
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$5,80($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L762
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L760
	li	$2,0
	sw	$2,44($sp)
$L735:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L763
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L756
	li	$2,0
	sw	$2,40($sp)
$L739:
	lw	$2,40($sp)
	addiu	$2,1
	sw	$2,40($sp)
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,$L764
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$17,$2
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L763
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L739
$L740:
	lw	$2,80($sp)
	lw	$3,40($sp)
	sw	$3,0($2)
	lw	$2,44($sp)
	beqz	$2,$L744
	ld	$2,$L765
	xor	$17,$2
$L744:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	move	$2,$17
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

$L760:
	ld	$2,$L765
	xor	$17,$2
	li	$2,1
	sw	$2,44($sp)
	b	$L735
$L756:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L764
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L758
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L762
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L758
	li	$2,0
	sw	$2,40($sp)
$L743:
	lw	$2,40($sp)
	addiu	$2,-1
	sw	$2,40($sp)
	lw	$2,%call16(__mips16_adddf3)($16)
	move	$5,$17
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$17,$2
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L764
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L743
	b	$L740
$L758:
	li	$2,0
	sw	$2,40($sp)
	b	$L740
	.type	__pool_frexp_761, @object
__pool_frexp_761:
	.align	2
$L761:
	.word	__gnu_local_gp
	.align	3
$L762:
	.word	0
	.word	0
$L763:
	.word	1072693248
	.word	0
$L764:
	.word	1071644672
	.word	0
$L765:
	.dword	-9223372036854775808
	.type	__pend_frexp_761, @object
__pend_frexp_761:
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
	beqz	$4,$L770
$L768:
	dsll	$3,$4,63
	dsra	$3,63
	and	$3,$5
	daddu	$2,$2,$3
	dsll	$5,$5,1
	dsrl	$4,1
	bnez	$4,$L768
	jr	$31
$L770:
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
	sltu	$5,$4
	li	$3,1
	bteqz	$L787
	li	$2,32
	li	$3,1
$L773:
	slt	$5,0
	btnez	$L774
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L774
	addiu	$2,-1
	bnez	$2,$L773
$L782:
	li	$2,0
$L776:
	bnez	$6,$L788
$L772:
	jr	$31
$L774:
	beqz	$3,$L782
$L787:
	li	$2,0
	b	$L778
$L777:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L776
$L778:
	sltu	$4,$5
	btnez	$L777
	subu	$4,$4,$5
	or	$2,$3
	b	$L777
$L788:
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
	sra	$2,$4,31
	cmp	$2,$4
	bteqz	$L791
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L796
	move	$28,$2
	sw	$2,32($sp)
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
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L791:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

	.type	__pool___clrsbqi2_796, @object
__pool___clrsbqi2_796:
	.align	2
$L796:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_796, @object
__pend___clrsbqi2_796:
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
	move	$2,$4
	dsra	$2,63
	xor	$4,$2
	beqz	$4,$L799
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L804
	move	$28,$2
	sw	$2,32($sp)
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
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L799:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,63
	.set	macro
	.set	reorder

	.type	__pool___clrsbdi2_804, @object
__pool___clrsbdi2_804:
	.align	2
$L804:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_804, @object
__pend___clrsbdi2_804:
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
	beqz	$4,$L809
$L807:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	sll	$5,$5,1
	bnez	$4,$L807
	jr	$31
$L809:
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
	srl	$7,$6,3
	li	$16,8
	neg	$16,$16
	and	$16,$6
	sltu	$4,$5
	btnez	$L812
	addu	$2,$5,$6
	sltu	$2,$4
	btnez	$L812
	addiu	$2,$6,-1
	beqz	$6,$L811
$L813:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	sb	$6,0($3)
	addiu	$2,-1
	addiu	$3,$2,1
	bnez	$3,$L813
	b	$L811
$L812:
	beqz	$7,$L815
	move	$2,$5
	move	$3,$4
	sll	$7,$7,3
	addu	$7,$7,$5
$L816:
	ld	$17,0($2)
	sd	$17,0($3)
	addiu	$2,8
	addiu	$3,8
	cmp	$2,$7
	btnez	$L816
$L815:
	sltu	$16,$6
	bteqz	$L811
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L817:
	lb	$3,0($2)
	sb	$3,0($4)
	addiu	$2,1
	addiu	$4,1
	cmp	$2,$5
	btnez	$L817
$L811:
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
	btnez	$L823
	addu	$2,$5,$6
	sltu	$2,$4
	btnez	$L823
	addiu	$2,$6,-1
	beqz	$6,$L822
$L824:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	sb	$6,0($3)
	addiu	$2,-1
	addiu	$3,$2,1
	bnez	$3,$L824
	b	$L822
$L823:
	beqz	$16,$L826
	move	$2,$5
	move	$3,$4
	sll	$16,$16,1
	addu	$16,$16,$5
$L827:
	lh	$7,0($2)
	sh	$7,0($3)
	addiu	$2,2
	addiu	$3,2
	cmp	$2,$16
	btnez	$L827
$L826:
	li	$2,1
	and	$2,$6
	beqz	$2,$L822
	addu	$5,$5,$6
	lb	$2,-1($5)
	addu	$4,$4,$6
	sb	$2,-1($4)
$L822:
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
	srl	$7,$6,2
	li	$16,4
	neg	$16,$16
	and	$16,$6
	sltu	$4,$5
	btnez	$L836
	addu	$2,$5,$6
	sltu	$2,$4
	btnez	$L836
	addiu	$2,$6,-1
	beqz	$6,$L835
$L837:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	sb	$6,0($3)
	addiu	$2,-1
	addiu	$3,$2,1
	bnez	$3,$L837
	b	$L835
$L836:
	beqz	$7,$L839
	move	$2,$5
	move	$3,$4
	sll	$7,$7,2
	addu	$7,$7,$5
$L840:
	lw	$17,0($2)
	sw	$17,0($3)
	addiu	$2,4
	addiu	$3,4
	cmp	$2,$7
	btnez	$L840
$L839:
	sltu	$16,$6
	bteqz	$L835
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L841:
	lb	$3,0($2)
	sb	$3,0($4)
	addiu	$2,1
	addiu	$4,1
	cmp	$2,$5
	btnez	$L841
$L835:
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
	lw	$2,$L849
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

	.type	__pool___uitod_849, @object
__pool___uitod_849:
	.align	2
$L849:
	.word	__gnu_local_gp
	.type	__pend___uitod_849, @object
__pend___uitod_849:
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
	lw	$2,$L852
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

	.type	__pool___uitof_852, @object
__pool___uitof_852:
	.align	2
$L852:
	.word	__gnu_local_gp
	.type	__pend___uitof_852, @object
__pend___uitof_852:
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
	lw	$2,$L855
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

	.type	__pool___ulltod_855, @object
__pool___ulltod_855:
	.align	2
$L855:
	.word	__gnu_local_gp
	.type	__pend___ulltod_855, @object
__pend___ulltod_855:
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
	lw	$2,$L858
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

	.type	__pool___ulltof_858, @object
__pool___ulltof_858:
	.align	2
$L858:
	.word	__gnu_local_gp
	.type	__pend___ulltof_858, @object
__pend___ulltof_858:
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
$L862:
	li	$5,15
	subu	$5,$5,$2
	move	$3,$4
	sra	$3,$5
	li	$5,1
	and	$3,$5
	bnez	$3,$L863
	addiu	$2,1
	cmpi	$2,16
	btnez	$L862
$L863:
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
$L866:
	move	$3,$4
	sra	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L867
	addiu	$2,1
	cmpi	$2,16
	btnez	$L866
$L867:
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
	lw	$2,$L876
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	lw	$2,%call16(__mips16_gesf2)($16)
	lw	$5,$L877
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L875
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L868:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L875:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L877
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
	b	$L868
	.type	__pool___fixunssfsi_876, @object
__pool___fixunssfsi_876:
	.align	2
$L876:
	.word	__gnu_local_gp
$L877:
	.word	1191182336
	.type	__pend___fixunssfsi_876, @object
__pend___fixunssfsi_876:
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
$L879:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	addu	$2,$2,$5
	addiu	$3,1
	cmpi	$3,16
	btnez	$L879
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$6
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
$L881:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	addu	$2,$2,$5
	addiu	$3,1
	cmpi	$3,16
	btnez	$L881
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
	beqz	$4,$L886
$L884:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	sll	$5,$5,1
	bnez	$4,$L884
	jr	$31
$L886:
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
	li	$2,0
	beqz	$4,$L893
	beqz	$5,$L893
$L890:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	addu	$2,$2,$3
	sll	$4,$4,1
	srl	$5,$5,1
	bnez	$5,$L890
	jr	$31
$L893:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	li	$3,1
	bteqz	$L910
	li	$2,32
	li	$3,1
$L896:
	slt	$5,0
	btnez	$L897
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L897
	addiu	$2,-1
	bnez	$2,$L896
$L905:
	li	$2,0
$L899:
	bnez	$6,$L911
$L895:
	jr	$31
$L897:
	beqz	$3,$L905
$L910:
	li	$2,0
	b	$L901
$L900:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L899
$L901:
	sltu	$4,$5
	btnez	$L900
	subu	$4,$4,$5
	or	$2,$3
	b	$L900
$L911:
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
	lw	$2,$L917
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
	btnez	$L915
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
$L912:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L915:
	li	$2,1
	neg	$2,$2
	b	$L912
	.type	__pool___mspabi_cmpf_917, @object
__pool___mspabi_cmpf_917:
	.align	2
$L917:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_917, @object
__pend___mspabi_cmpf_917:
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
	lw	$2,$L923
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
	btnez	$L921
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
$L918:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L921:
	li	$2,1
	neg	$2,$2
	b	$L918
	.type	__pool___mspabi_cmpd_923, @object
__pool___mspabi_cmpd_923:
	.align	2
$L923:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_923, @object
__pend___mspabi_cmpd_923:
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
	mult	$4,$5
	mflo	$3
	mfhi	$2
	dsll	$3,$3,32
	dsrl	$3,32
	dsll	$2,$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
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
	multu	$4,$5
	mflo	$3
	mfhi	$2
	dsll	$3,$3,32
	dsrl	$3,32
	dsll	$2,$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
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
	btnez	$L939
	li	$7,0
$L927:
	beqz	$5,$L932
	li	$6,32
	li	$2,0
$L929:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	addu	$2,$2,$3
	sll	$4,$4,1
	sra	$5,$5,1
	beqz	$5,$L928
	addiu	$6,-1
	zeb	$6
	bnez	$6,$L929
$L928:
	beqz	$7,$L940
	neg	$2,$2
$L940:
	jr	$31
$L939:
	neg	$5,$5
	li	$7,1
	b	$L927
$L932:
	li	$2,0
	b	$L928
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.set	mips16
	.set	nomicromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$4,0
	btnez	$L959
	li	$7,0
$L942:
	slt	$5,0
	btnez	$L960
$L943:
	move	$6,$4
	sltu	$5,$4
	bteqz	$L951
	li	$2,32
	li	$3,1
$L945:
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L944
	addiu	$2,-1
	bnez	$2,$L945
$L952:
	li	$2,0
$L946:
	beqz	$7,$L962
	neg	$2,$2
$L962:
	jr	$31
$L959:
	neg	$4,$4
	li	$7,1
	b	$L942
$L960:
	neg	$5,$5
	li	$2,1
	xor	$7,$2
	b	$L943
$L951:
	li	$3,1
	b	$L958
$L944:
	beqz	$3,$L952
$L958:
	li	$2,0
	b	$L948
$L961:
	subu	$6,$6,$5
	or	$2,$3
$L947:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L946
$L948:
	sltu	$6,$5
	btnez	$L947
	b	$L961
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.set	mips16
	.set	nomicromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$4,0
	btnez	$L981
	li	$7,0
$L964:
	move	$2,$4
	slt	$5,0
	btnez	$L982
$L965:
	sltu	$5,$4
	bteqz	$L973
	li	$6,32
	li	$3,1
$L967:
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L980
	addiu	$6,-1
	bnez	$6,$L967
$L968:
	beqz	$7,$L984
	neg	$2,$2
$L984:
	jr	$31
$L981:
	neg	$4,$4
	li	$7,1
	b	$L964
$L982:
	neg	$5,$5
	b	$L965
$L973:
	li	$3,1
	b	$L970
$L983:
	subu	$2,$2,$5
$L969:
	srl	$3,$3,1
	srl	$5,$5,1
$L980:
	beqz	$3,$L968
$L970:
	sltu	$2,$5
	btnez	$L969
	b	$L983
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
	bteqz	$L1000
	li	$2,16
	li	$3,1
$L986:
	move	$7,$5
	seh	$7
	slt	$7,0
	btnez	$L987
	sll	$5,$5,1
	zeh	$5
	sll	$3,$3,1
	zeh	$3
	sltu	$5,$4
	bteqz	$L987
	addiu	$2,-1
	bnez	$2,$L986
$L995:
	li	$2,0
$L989:
	bnez	$6,$L1001
$L992:
	jr	$31
$L987:
	beqz	$3,$L995
$L1000:
	li	$2,0
	b	$L991
$L990:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L989
$L991:
	sltu	$4,$5
	btnez	$L990
	subu	$4,$4,$5
	zeh	$4
	or	$2,$3
	zeh	$2
	b	$L990
$L1001:
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
	bteqz	$L1017
	li	$2,32
	li	$3,1
$L1003:
	slt	$5,0
	btnez	$L1004
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L1004
	addiu	$2,-1
	bnez	$2,$L1003
$L1012:
	li	$2,0
$L1006:
	bnez	$6,$L1018
$L1002:
	jr	$31
$L1004:
	beqz	$3,$L1012
$L1017:
	li	$2,0
	b	$L1008
$L1007:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L1006
$L1008:
	sltu	$4,$5
	btnez	$L1007
	subu	$4,$4,$5
	or	$2,$3
	b	$L1007
$L1018:
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
	li	$3,32
	move	$2,$5
	and	$2,$3
	beqz	$2,$L1020
	sll	$2,$4,0
	sll	$2,$5
	li	$6,0
$L1021:
	dsll	$2,$2,32
	dsll	$6,$6,32
	dsrl	$6,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1020:
	beqz	$5,$L1023
	sll	$2,$4,0
	move	$6,$2
	sll	$6,$5
	subu	$3,$3,$5
	srl	$2,$3
	dsra	$4,32
	sll	$4,$5
	or	$2,$4
	b	$L1021
$L1023:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_1025, @object
__pool___ashldi3_1025:
	.align	2
$L1025:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_1025, @object
__pend___ashldi3_1025:
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashlti3
	.set	mips16
	.set	nomicromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	li	$2,64
	move	$3,$6
	and	$3,$2
	beqz	$3,$L1027
	move	$2,$5
	dsll	$2,$6
	li	$3,0
$L1026:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1027:
	beqz	$6,$L1030
	move	$3,$5
	dsll	$3,$6
	subu	$2,$2,$6
	dsrl	$5,$2
	move	$2,$4
	dsll	$2,$6
	or	$2,$5
	b	$L1026
$L1030:
	move	$2,$4
	move	$3,$5
	b	$L1026
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
	li	$3,32
	move	$2,$5
	and	$2,$3
	beqz	$2,$L1033
	move	$2,$4
	dsra	$2,32
	dsra	$4,63
	move	$6,$4
	sra	$2,$5
$L1034:
	dsll	$2,$2,32
	dsrl	$2,32
	dsll	$6,$6,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1033:
	move	$2,$4
	beqz	$5,$L1039
	dsra	$2,32
	move	$6,$2
	sra	$6,$5
	subu	$3,$3,$5
	sll	$2,$3
	sll	$4,$4,0
	srl	$4,$5
	or	$2,$4
	b	$L1034
$L1039:
	jr	$31
	.type	__pool___ashrdi3_1038, @object
__pool___ashrdi3_1038:
	.align	2
$L1038:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_1038, @object
__pend___ashrdi3_1038:
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__ashrti3
	.set	mips16
	.set	nomicromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	li	$3,64
	move	$2,$6
	and	$2,$3
	beqz	$2,$L1041
	move	$2,$4
	dsra	$2,63
	dsra	$4,$6
$L1040:
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1041:
	move	$2,$4
	beqz	$6,$L1044
	dsra	$2,$6
	subu	$3,$3,$6
	dsll	$4,$3
	dsrl	$5,$6
	or	$4,$5
	b	$L1040
$L1044:
	move	$4,$5
	b	$L1040
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
	.globl	__bswapdi2
	.set	mips16
	.set	nomicromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$3,$4
	dsrl	$3,56
	dsll	$2,$4,56
	or	$3,$2
	move	$2,$4
	dsrl	$2,40
	li	$5,65280
	and	$2,$5
	or	$3,$2
	move	$2,$4
	dsrl	$2,24
	ld	$5,$L1048
	and	$2,$5
	or	$3,$2
	move	$2,$4
	dsrl	$2,8
	ld	$5,$L1049
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,8
	ld	$5,$L1050
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,24
	ld	$5,$L1051
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L1052
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_1048, @object
__pool___bswapdi2_1048:
	.align	3
$L1048:
	.dword	16711680
$L1049:
	.dword	4278190080
$L1050:
	.dword	1095216660480
$L1051:
	.dword	280375465082880
$L1052:
	.dword	71776119061217280
	.type	__pend___bswapdi2_1048, @object
__pend___bswapdi2_1048:
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
	srl	$2,$4,24
	sll	$3,$4,24
	or	$2,$3
	srl	$3,$4,8
	li	$5,65280
	and	$3,$5
	or	$2,$3
	sll	$4,$4,8
	lw	$3,$L1055
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___bswapsi2_1055, @object
__pool___bswapsi2_1055:
	.align	2
$L1055:
	.word	16711680
	.type	__pend___bswapsi2_1055, @object
__pend___bswapsi2_1055:
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
	lw	$2,$L1060
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
	addu	$6,$2,$3
	li	$2,12
	and	$2,$4
	sltu	$2,1
	move	$5,$24
	sll	$5,$5,1
	li	$2,2
	subu	$3,$2,$5
	srl	$4,$3
	srl	$3,$4,1
	li	$7,1
	and	$3,$7
	li	$7,1
	xor	$3,$7
	zeb	$3
	beqz	$3,$L1057
	subu	$2,$2,$4
$L1058:
	addu	$5,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

$L1057:
	li	$2,0
	b	$L1058
	.type	__pool___clzsi2_1060, @object
__pool___clzsi2_1060:
	.align	2
$L1060:
	.word	65536
	.type	__pend___clzsi2_1060, @object
__pend___clzsi2_1060:
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__clzti2
	.set	mips16
	.set	nomicromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$16,40($sp)
	lw	$2,$L1065
	move	$28,$2
	sw	$2,32($sp)
	sltu	$4,1
	move	$16,$24
	addiu	$2,$16,-1
	and	$2,$4
	beqz	$16,$L1062
	move	$4,$5
$L1063:
	move	$5,$28
	lw	$5,%call16(__clzdi2)($5)
	or	$4,$2
	.set	noreorder
	.set	nomacro
	jalr	$5
	move	$25,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sll	$16,$16,6
	addu	$2,$16,$2
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

$L1062:
	li	$4,0
	b	$L1063
	.type	__pool___clzti2_1065, @object
__pool___clzti2_1065:
	.align	2
$L1065:
	.word	__gnu_local_gp
	.type	__pend___clzti2_1065, @object
__pend___clzti2_1065:
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
	sll	$7,$2,0
	move	$3,$5
	dsra	$3,32
	sll	$6,$3,0
	slt	$2,$3
	btnez	$L1070
	slt	$6,$7
	btnez	$L1069
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1070
	sltu	$5,$4
	btnez	$L1071
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1069:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1070:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1071:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	dsra	$2,32
	sll	$7,$2,0
	move	$3,$5
	dsra	$3,32
	sll	$6,$3,0
	slt	$2,$3
	btnez	$L1076
	slt	$6,$7
	btnez	$L1077
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1076
	sltu	$5,$4
	btnez	$L1077
	li	$2,1
	b	$L1073
$L1076:
	li	$2,0
$L1073:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,-1
	.set	macro
	.set	reorder

$L1077:
	li	$2,2
	b	$L1073
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__cmpti2
	.set	mips16
	.set	nomicromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$4,$6
	btnez	$L1082
	slt	$6,$4
	btnez	$L1081
	sltu	$5,$7
	btnez	$L1082
	sltu	$7,$5
	btnez	$L1083
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1081:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1082:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1083:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
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
	addu	$5,$2,$3
	li	$2,3
	move	$3,$4
	and	$3,$2
	sltu	$3,1
	move	$3,$24
	sll	$3,$3,1
	srl	$4,$3
	and	$4,$2
	not	$2,$4
	li	$6,1
	and	$2,$6
	srl	$4,$4,1
	li	$6,2
	subu	$4,$6,$4
	neg	$2,$2
	and	$2,$4
	addu	$3,$3,$5
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$31,48($sp)
	sd	$16,40($sp)
	lw	$2,$L1089
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$5
	sltu	$5,1
	move	$16,$24
	beqz	$5,$L1087
	li	$4,0
$L1087:
	addiu	$5,$16,-1
	and	$5,$2
	move	$2,$28
	lw	$2,%call16(__ctzdi2)($2)
	or	$4,$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sll	$16,$16,6
	addu	$2,$16,$2
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool___ctzti2_1089, @object
__pool___ctzti2_1089:
	.align	2
$L1089:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_1089, @object
__pend___ctzti2_1089:
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.set	mips16
	.set	nomicromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L1095
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	bnez	$5,$L1091
	beqz	$4,$L1093
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
	b	$L1090
$L1091:
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
$L1090:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L1093:
	li	$2,0
	b	$L1090
	.type	__pool___ffsti2_1095, @object
__pool___ffsti2_1095:
	.align	2
$L1095:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_1095, @object
__pend___ffsti2_1095:
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
	li	$3,32
	move	$2,$5
	and	$2,$3
	beqz	$2,$L1097
	dsrl	$4,32
	sll	$2,$4,0
	srl	$2,$5
	li	$6,0
$L1098:
	dsll	$2,$2,32
	dsrl	$2,32
	dsll	$6,$6,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1097:
	move	$2,$4
	beqz	$5,$L1103
	dsrl	$2,32
	sll	$2,$2,0
	move	$6,$2
	srl	$6,$5
	subu	$3,$3,$5
	sll	$2,$3
	sll	$4,$4,0
	srl	$4,$5
	or	$2,$4
	b	$L1098
$L1103:
	jr	$31
	.type	__pool___lshrdi3_1102, @object
__pool___lshrdi3_1102:
	.align	2
$L1102:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_1102, @object
__pend___lshrdi3_1102:
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__lshrti3
	.set	mips16
	.set	nomicromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	li	$3,64
	move	$2,$6
	and	$2,$3
	beqz	$2,$L1105
	dsrl	$4,$6
	li	$2,0
$L1104:
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1105:
	move	$2,$4
	beqz	$6,$L1108
	dsrl	$2,$6
	subu	$3,$3,$6
	dsll	$4,$3
	dsrl	$5,$6
	or	$4,$5
	b	$L1104
$L1108:
	move	$4,$5
	b	$L1104
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
	li	$7,65535
	move	$17,$4
	and	$17,$7
	move	$2,$5
	and	$2,$7
	mult	$17,$2
	mflo	$6
	srl	$16,$6,8
	srl	$16,$16,8
	srl	$4,$4,8
	srl	$4,$4,8
	mult	$2,$4
	mflo	$3
	addu	$3,$3,$16
	and	$6,$7
	sll	$16,$3,8
	sll	$16,$16,8
	addu	$2,$6,$16
	srl	$16,$16,8
	srl	$16,$16,8
	srl	$5,$5,8
	srl	$5,$5,8
	mult	$17,$5
	mflo	$6
	addu	$6,$6,$16
	and	$2,$7
	sll	$7,$6,8
	sll	$7,$7,8
	addu	$2,$2,$7
	srl	$3,$3,8
	srl	$3,$3,8
	mult	$4,$5
	mflo	$4
	addu	$3,$3,$4
	srl	$6,$6,8
	srl	$6,$6,8
	addu	$3,$3,$6
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,32
	or	$2,$3
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
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$12,$4
	sll	$16,$4,0
	sll	$7,$5,0
	li	$17,65535
	move	$2,$16
	and	$2,$17
	move	$11,$2
	move	$3,$7
	and	$3,$17
	mult	$2,$3
	mflo	$2
	srl	$6,$2,8
	srl	$6,$6,8
	srl	$4,$16,8
	srl	$4,$4,8
	move	$10,$4
	mult	$3,$4
	mflo	$3
	addu	$6,$3,$6
	and	$2,$17
	sll	$3,$6,8
	sll	$3,$3,8
	move	$8,$3
	addu	$3,$2,$3
	move	$2,$8
	srl	$2,$2,8
	srl	$2,$2,8
	move	$8,$2
	srl	$2,$7,8
	srl	$2,$2,8
	move	$9,$2
	move	$2,$11
	move	$4,$9
	mult	$2,$4
	mflo	$2
	move	$4,$8
	addu	$2,$2,$4
	and	$3,$17
	sll	$17,$2,8
	sll	$17,$17,8
	addu	$3,$3,$17
	srl	$6,$6,8
	srl	$6,$6,8
	move	$4,$10
	move	$17,$9
	mult	$4,$17
	mflo	$17
	addu	$6,$6,$17
	srl	$2,$2,8
	srl	$2,$2,8
	addu	$6,$6,$2
	dsll	$6,$6,32
	dsll	$3,$3,32
	dsrl	$3,32
	or	$3,$6
	dsra	$5,32
	mult	$16,$5
	mflo	$2
	move	$5,$3
	dsra	$5,32
	addu	$2,$2,$5
	move	$4,$12
	dsra	$4,32
	mult	$7,$4
	mflo	$4
	addu	$2,$2,$4
	dsll	$2,$2,32
	dsll	$3,$3,32
	dsrl	$3,32
	or	$2,$3
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
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
	sll	$7,$4,0
	sll	$3,$5,0
	multu	$7,$3
	mflo	$6
	mfhi	$2
	dsll	$6,$6,32
	dsrl	$6,32
	dsll	$2,$2,32
	or	$6,$2
	move	$16,$6
	dsrl	$16,32
	dsrl	$4,32
	sll	$4,$4,0
	multu	$3,$4
	mflo	$2
	mfhi	$3
	dsll	$2,$2,32
	dsrl	$2,32
	dsll	$3,$3,32
	or	$2,$3
	daddu	$2,$2,$16
	dsll	$16,$2,32
	dsrl	$16,32
	dsrl	$5,32
	sll	$5,$5,0
	multu	$7,$5
	mflo	$3
	mfhi	$7
	dsll	$3,$3,32
	dsrl	$3,32
	dsll	$7,$7,32
	or	$3,$7
	daddu	$3,$3,$16
	dsll	$6,$6,32
	dsrl	$6,32
	dsll	$7,$3,32
	daddu	$6,$6,$7
	sd	$6,16($sp)
	dsrl	$2,32
	multu	$4,$5
	mflo	$4
	mfhi	$5
	dsll	$4,$4,32
	dsrl	$4,32
	dsll	$5,$5,32
	or	$4,$5
	daddu	$2,$2,$4
	dsrl	$3,32
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
	.frame	$sp,40,$31		# vars= 16, regs= 2/0, args= 0, gp= 8
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$17,32($sp)
	sd	$16,24($sp)
	move	$11,$4
	sll	$2,$5,0
	move	$9,$2
	sll	$3,$7,0
	multu	$2,$3
	mflo	$16
	mfhi	$2
	dsll	$16,$16,32
	dsrl	$16,32
	dsll	$2,$2,32
	or	$16,$2
	move	$17,$16
	dsrl	$17,32
	move	$2,$5
	dsrl	$2,32
	sll	$2,$2,0
	move	$8,$2
	multu	$3,$2
	mflo	$2
	mfhi	$3
	dsll	$2,$2,32
	dsrl	$2,32
	dsll	$3,$3,32
	or	$2,$3
	daddu	$2,$2,$17
	dsll	$3,$2,32
	dsrl	$3,32
	move	$10,$3
	move	$17,$7
	dsrl	$17,32
	sll	$17,$17,0
	move	$3,$9
	multu	$3,$17
	mflo	$3
	mfhi	$4
	dsll	$3,$3,32
	dsrl	$3,32
	dsll	$4,$4,32
	or	$3,$4
	move	$4,$10
	daddu	$3,$3,$4
	dsll	$16,$16,32
	dsrl	$16,32
	dsll	$4,$3,32
	daddu	$16,$16,$4
	sd	$16,16($sp)
	dsrl	$2,32
	move	$4,$8
	multu	$4,$17
	mflo	$16
	mfhi	$17
	dsll	$16,$16,32
	dsrl	$16,32
	dsll	$17,$17,32
	or	$16,$17
	daddu	$2,$2,$16
	dsrl	$3,32
	daddu	$2,$2,$3
	dmult	$5,$6
	mflo	$3
	daddu	$2,$3,$2
	move	$3,$11
	dmult	$7,$3
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,8($sp)
	ld	$3,16($sp)
	ld	$2,8($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,40
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
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
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$3
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
	ld	$3,$L1125
	and	$2,$3
	dsubu	$4,$4,$2
	move	$2,$4
	dsrl	$2,2
	ld	$3,$L1126
	and	$2,$3
	and	$4,$3
	daddu	$2,$2,$4
	move	$3,$2
	dsrl	$3,4
	daddu	$3,$3,$2
	ld	$2,$L1127
	and	$3,$2
	move	$2,$3
	dsrl	$2,32
	sll	$2,$2,0
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

	.type	__pool___popcountdi2_1125, @object
__pool___popcountdi2_1125:
	.align	3
$L1125:
	.dword	6148914691236517205
$L1126:
	.dword	3689348814741910323
$L1127:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1125, @object
__pend___popcountdi2_1125:
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
	lw	$3,$L1130
	and	$2,$3
	subu	$4,$4,$2
	srl	$3,$4,2
	lw	$2,$L1131
	and	$3,$2
	and	$4,$2
	addu	$3,$3,$4
	srl	$2,$3,4
	addu	$2,$2,$3
	lw	$3,$L1132
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

	.type	__pool___popcountsi2_1130, @object
__pool___popcountsi2_1130:
	.align	2
$L1130:
	.word	1431655765
$L1131:
	.word	858993459
$L1132:
	.word	252645135
	.type	__pend___popcountsi2_1130, @object
__pend___popcountsi2_1130:
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
	ld	$6,$L1135
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
	ld	$6,$L1136
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
	ld	$4,$L1137
	and	$3,$4
	and	$2,$4
	daddu	$3,$3,$2
	move	$2,$3
	dsrl	$2,32
	sll	$2,$2,0
	sll	$3,$3,0
	addu	$2,$2,$3
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

	.type	__pool___popcountti2_1135, @object
__pool___popcountti2_1135:
	.align	3
$L1135:
	.dword	6148914691236517205
$L1136:
	.dword	3689348814741910323
$L1137:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1135, @object
__pend___popcountti2_1135:
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
	lw	$2,$L1148
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$8,$4
	sw	$5,80($sp)
	lw	$16,80($sp)
	ld	$2,$L1149
	sd	$2,40($sp)
	b	$L1141
$L1139:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1140
	lw	$2,%call16(__mips16_muldf3)($17)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$8
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$8,$2
$L1141:
	li	$2,1
	and	$2,$16
	beqz	$2,$L1139
	lw	$2,%call16(__mips16_muldf3)($17)
	move	$5,$8
	sd	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
	ld	$2,72($sp)
	move	$8,$2
	b	$L1139
$L1140:
	lw	$2,80($sp)
	slt	$2,0
	btnez	$L1147
$L1138:
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

$L1147:
	lw	$17,%call16(__mips16_divdf3)($17)
	ld	$4,$L1149
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
	b	$L1138
	.type	__pool___powidf2_1148, @object
__pool___powidf2_1148:
	.align	2
$L1148:
	.word	__gnu_local_gp
	.align	3
$L1149:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_1148, @object
__pend___powidf2_1148:
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
	lw	$2,$L1160
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$8,$4
	sw	$5,80($sp)
	lw	$16,80($sp)
	lw	$2,$L1161
	sw	$2,40($sp)
	b	$L1153
$L1151:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1152
	lw	$2,%call16(__mips16_mulsf3)($17)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$8
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$8,$2
$L1153:
	li	$2,1
	and	$2,$16
	beqz	$2,$L1151
	lw	$2,%call16(__mips16_mulsf3)($17)
	move	$5,$8
	sw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	lw	$4,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
	lw	$2,72($sp)
	move	$8,$2
	b	$L1151
$L1152:
	lw	$2,80($sp)
	slt	$2,0
	btnez	$L1159
$L1150:
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

$L1159:
	lw	$17,%call16(__mips16_divsf3)($17)
	lw	$4,$L1161
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
	b	$L1150
	.type	__pool___powisf2_1160, @object
__pool___powisf2_1160:
	.align	2
$L1160:
	.word	__gnu_local_gp
$L1161:
	.word	1065353216
	.type	__pend___powisf2_1160, @object
__pend___powisf2_1160:
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
	btnez	$L1166
	sltu	$2,$3
	btnez	$L1165
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1166
	sltu	$5,$4
	btnez	$L1167
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1165:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1166:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1167:
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
	btnez	$L1172
	sltu	$2,$3
	btnez	$L1173
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1172
	sltu	$5,$4
	btnez	$L1173
	li	$2,1
	b	$L1169
$L1172:
	li	$2,0
$L1169:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,-1
	.set	macro
	.set	reorder

$L1173:
	li	$2,2
	b	$L1169
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.globl	__ucmpti2
	.set	mips16
	.set	nomicromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,$6
	btnez	$L1178
	sltu	$6,$4
	btnez	$L1177
	sltu	$5,$7
	btnez	$L1178
	sltu	$7,$5
	btnez	$L1179
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1177:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1178:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1179:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

	.end	__ucmpti2
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.local	seed
	.comm	seed,8,8
	.rdata
	.align	3
	.type	digits, @object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr"
	.ascii	"stuvwxyz\000"
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
