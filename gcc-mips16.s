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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	b	$L336
$L338:
	addiu	$4,1
$L336:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L338
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	move	$2,$24
	bnez	$2,$L338
	cmpi	$3,43
	bteqz	$L345
	cmpi	$3,45
	btnez	$L346
	li	$6,1
$L339:
	addiu	$4,1
$L340:
	lb	$3,0($4)
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L342
$L341:
	sll	$5,$2,2
	addu	$5,$5,$2
	sll	$5,$5,1
	addiu	$4,1
	seb	$3
	subu	$2,$5,$3
	lb	$3,0($4)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L341
$L342:
	bnez	$6,$L348
	neg	$2,$2
$L348:
	jr	$31
$L345:
	li	$6,0
	b	$L339
$L346:
	li	$6,0
	b	$L340
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
	b	$L350
$L352:
	addiu	$4,1
$L350:
	lb	$2,0($4)
	cmpi	$2,32
	bteqz	$L352
	addiu	$3,$2,-8
	addiu	$3,-1
	sltu	$3,5
	move	$6,$24
	bnez	$6,$L352
	cmpi	$2,43
	bteqz	$L353
	cmpi	$2,45
	btnez	$L354
	li	$6,1
$L353:
	addiu	$4,1
$L354:
	lb	$3,0($4)
	addiu	$3,-48
	sltu	$3,10
	li	$2,0
	bteqz	$L356
$L355:
	dsll	$5,$2,2
	daddu	$5,$5,$2
	dsll	$5,$5,1
	addiu	$4,1
	seb	$3
	dsubu	$2,$5,$3
	lb	$3,0($4)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L355
$L356:
	bnez	$6,$L364
	li	$3,0
	dsubu	$2,$3,$2
$L364:
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
	beqz	$6,$L366
	move	$16,$6
	b	$L369
$L370:
	move	$16,$17
$L367:
	beqz	$16,$L366
$L369:
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
	btnez	$L370
	slt	$2,1
	btnez	$L365
	lw	$2,40($sp)
	lw	$3,96($sp)
	addu	$2,$2,$3
	sw	$2,80($sp)
	addiu	$16,-1
	subu	$16,$16,$17
	b	$L367
$L366:
	li	$2,0
	sw	$2,40($sp)
$L365:
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
	beqz	$6,$L376
	move	$16,$6
	b	$L379
$L378:
	move	$16,$7
	beqz	$7,$L376
$L379:
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

	beqz	$2,$L375
	slt	$2,1
	lw	$7,40($sp)
	btnez	$L378
	lw	$2,96($sp)
	addu	$2,$17,$2
	sw	$2,80($sp)
	addiu	$16,-1
	sra	$7,$16,1
	b	$L378
$L376:
	li	$17,0
$L375:
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
	btnez	$L390
$L389:
	jr	$31
$L390:
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
	btnez	$L394
$L393:
	jr	$31
$L394:
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
	btnez	$L398
$L397:
	jr	$31
$L398:
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
	b	$L408
$L403:
	addiu	$4,4
$L408:
	lw	$3,0($4)
	beqz	$3,$L406
	cmp	$5,$3
	btnez	$L403
	move	$2,$4
	beqz	$3,$L406
$L400:
	jr	$31
$L406:
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
	b	$L418
$L412:
	addiu	$4,4
	addiu	$5,4
$L418:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	btnez	$L411
	beqz	$2,$L411
	bnez	$3,$L412
$L411:
	slt	$2,$3
	btnez	$L414
	slt	$3,$2
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L414:
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
$L420:
	lw	$6,0($5)
	sw	$6,0($3)
	addiu	$3,4
	addiu	$5,4
	bnez	$6,$L420
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
	beqz	$2,$L424
	move	$2,$4
$L423:
	addiu	$2,4
	lw	$3,0($2)
	bnez	$3,$L423
$L422:
	subu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$2,2
	.set	macro
	.set	reorder

$L424:
	move	$2,$4
	b	$L422
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
$L437:
	beqz	$6,$L430
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	btnez	$L427
	beqz	$2,$L427
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	b	$L437
$L427:
	beqz	$6,$L430
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$2
	btnez	$L431
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L430:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L431:
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
	b	$L446
$L441:
	addiu	$6,-1
	addiu	$4,4
$L446:
	beqz	$6,$L444
	lw	$2,0($4)
	cmp	$2,$5
	btnez	$L441
	move	$2,$4
	beqz	$6,$L444
$L438:
	jr	$31
$L444:
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
	b	$L459
$L450:
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
$L459:
	beqz	$6,$L452
	lw	$3,0($4)
	lw	$2,0($5)
	cmp	$3,$2
	bteqz	$L450
	beqz	$6,$L452
	slt	$3,$2
	btnez	$L453
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L452:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L453:
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
	beqz	$6,$L466
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L469
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

$L466:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_wmemcpy_469, @object
__pool_wmemcpy_469:
	.align	2
$L469:
	.word	__gnu_local_gp
	.type	__pend_wmemcpy_469, @object
__pend_wmemcpy_469:
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
	bteqz	$L482
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$16,$4
	move	$7,$5
	addiu	$3,$6,-1
	subu	$17,$4,$5
	sll	$4,$6,2
	sltu	$17,$4
	btnez	$L472
	beqz	$6,$L471
$L473:
	lw	$4,0($7)
	sw	$4,0($16)
	addiu	$3,-1
	addiu	$16,4
	addiu	$7,4
	addiu	$4,$3,1
	bnez	$4,$L473
	b	$L471
$L472:
	beqz	$6,$L471
	sll	$3,$3,2
$L474:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	sw	$6,0($4)
	addiu	$3,-4
	addiu	$4,$3,4
	bnez	$4,$L474
$L471:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L482:
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
	beqz	$6,$L489
	move	$6,$4
$L485:
	sw	$5,0($6)
	addiu	$3,-1
	addiu	$6,4
	addiu	$7,$3,1
	bnez	$7,$L485
$L489:
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
	bteqz	$L491
	addu	$2,$4,$6
	addu	$5,$5,$6
	beqz	$6,$L501
$L493:
	addiu	$2,-1
	addiu	$5,-1
	lb	$3,0($2)
	sb	$3,0($5)
	cmp	$4,$2
	btnez	$L493
	jr	$31
$L491:
	cmp	$4,$5
	bteqz	$L501
	beqz	$6,$L501
	addu	$6,$4,$6
$L494:
	lb	$2,0($4)
	sb	$2,0($5)
	addiu	$4,1
	addiu	$5,1
	cmp	$4,$6
	btnez	$L494
$L501:
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
	lw	$3,$L516
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_bswap_32_516, @object
__pool_bswap_32_516:
	.align	2
$L516:
	.word	16711680
	.type	__pend_bswap_32_516, @object
__pend_bswap_32_516:
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
	ld	$5,$L519
	and	$2,$5
	or	$3,$2
	move	$2,$4
	dsrl	$2,8
	ld	$5,$L520
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,8
	ld	$5,$L521
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,24
	ld	$5,$L522
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L523
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_519, @object
__pool_bswap_64_519:
	.align	3
$L519:
	.dword	16711680
$L520:
	.dword	4278190080
$L521:
	.dword	1095216660480
$L522:
	.dword	280375465082880
$L523:
	.dword	71776119061217280
	.type	__pend_bswap_64_519, @object
__pend_bswap_64_519:
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
$L527:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	addiu	$2,1
	bnez	$3,$L528
	cmpi	$2,32
	btnez	$L527
	li	$2,0
$L528:
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
	beqz	$4,$L532
	li	$2,1
	and	$2,$4
	bnez	$2,$L534
	li	$2,1
$L531:
	sra	$4,$4,1
	addiu	$2,1
	li	$3,1
	and	$3,$4
	beqz	$3,$L531
	jr	$31
$L532:
	li	$2,0
$L534:
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
	lw	$2,$L541
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltsf2)($17)
	lw	$5,$L542
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L539
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$5,$L543
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
$L536:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L539:
	li	$2,1
	b	$L536
	.type	__pool_gl_isinff_541, @object
__pool_gl_isinff_541:
	.align	2
$L541:
	.word	__gnu_local_gp
$L542:
	.word	-8388609
$L543:
	.word	2139095039
	.type	__pend_gl_isinff_541, @object
__pend_gl_isinff_541:
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
	lw	$2,$L549
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L550
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L547
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L551
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
$L544:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L547:
	li	$2,1
	b	$L544
	.type	__pool_gl_isinfd_549, @object
__pool_gl_isinfd_549:
	.align	2
$L549:
	.word	__gnu_local_gp
	.align	3
$L550:
	.word	-1048577
	.word	-1
$L551:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_549, @object
__pend_gl_isinfd_549:
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
	lw	$2,$L557
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L558
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L555
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L559
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
$L552:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L555:
	li	$2,1
	b	$L552
	.type	__pool_gl_isinfl_557, @object
__pool_gl_isinfl_557:
	.align	2
$L557:
	.word	__gnu_local_gp
	.align	3
$L558:
	.word	-1048577
	.word	-1
$L559:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_557, @object
__pend_gl_isinfl_557:
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
	lw	$2,$L562
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

	.type	__pool__Qp_itoq_562, @object
__pool__Qp_itoq_562:
	.align	2
$L562:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_562, @object
__pend__Qp_itoq_562:
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
	lw	$2,$L579
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
	bnez	$2,$L564
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
	beqz	$2,$L564
	slt	$16,0
	btnez	$L578
	lw	$5,$L580
	b	$L568
$L578:
	lw	$5,$L581
	b	$L568
$L567:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L564
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
$L568:
	li	$2,1
	and	$2,$16
	beqz	$2,$L567
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
	b	$L567
$L564:
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

	.type	__pool_ldexpf_579, @object
__pool_ldexpf_579:
	.align	2
$L579:
	.word	__gnu_local_gp
$L580:
	.word	1073741824
$L581:
	.word	1056964608
	.type	__pend_ldexpf_579, @object
__pend_ldexpf_579:
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
	lw	$2,$L598
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
	bnez	$2,$L583
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
	beqz	$2,$L583
	slt	$16,0
	btnez	$L597
	ld	$5,$L599
	b	$L587
$L597:
	ld	$5,$L600
	b	$L587
$L586:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L583
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
$L587:
	li	$2,1
	and	$2,$16
	beqz	$2,$L586
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
	b	$L586
$L583:
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

	.type	__pool_ldexp_598, @object
__pool_ldexp_598:
	.align	2
$L598:
	.word	__gnu_local_gp
	.align	3
$L599:
	.word	1073741824
	.word	0
$L600:
	.word	1071644672
	.word	0
	.type	__pend_ldexp_598, @object
__pend_ldexp_598:
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
	lw	$2,$L617
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
	bnez	$2,$L602
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
	beqz	$2,$L602
	slt	$16,0
	btnez	$L616
	ld	$5,$L618
	b	$L606
$L616:
	ld	$5,$L619
	b	$L606
$L605:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L602
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
$L606:
	li	$2,1
	and	$2,$16
	beqz	$2,$L605
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
	b	$L605
$L602:
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

	.type	__pool_ldexpl_617, @object
__pool_ldexpl_617:
	.align	2
$L617:
	.word	__gnu_local_gp
	.align	3
$L618:
	.word	1073741824
	.word	0
$L619:
	.word	1071644672
	.word	0
	.type	__pend_ldexpl_617, @object
__pend_ldexpl_617:
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
	beqz	$6,$L630
	addiu	$sp,-8
	sd	$16,0($sp)
	move	$3,$4
	addu	$16,$5,$6
$L622:
	lbu	$7,0($3)
	lbu	$6,0($5)
	xor	$7,$6
	sb	$7,0($3)
	addiu	$5,1
	addiu	$3,1
	cmp	$5,$16
	btnez	$L622
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L630:
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
	beqz	$3,$L638
	move	$3,$4
$L633:
	addiu	$3,1
	lb	$7,0($3)
	bnez	$7,$L633
	b	$L643
$L638:
	move	$3,$4
	b	$L643
$L636:
	addiu	$5,1
	addiu	$3,1
	addiu	$6,-1
$L643:
	beqz	$6,$L640
	lb	$7,0($5)
	sb	$7,0($3)
	bnez	$7,$L636
	bnez	$6,$L644
$L640:
	sb	$6,0($3)
$L644:
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
	beqz	$5,$L653
$L646:
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L652
$L645:
	jr	$31
$L653:
	jr	$31
$L652:
	addiu	$2,1
	cmp	$5,$2
	btnez	$L646
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
	beqz	$7,$L661
$L656:
	move	$6,$5
$L659:
	lb	$3,0($6)
	beqz	$3,$L662
	addiu	$6,1
	xor	$3,$7
	bnez	$3,$L659
$L657:
	jr	$31
$L661:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L662:
	addiu	$2,1
	lb	$7,0($2)
	bnez	$7,$L656
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
	b	$L665
$L664:
	addiu	$4,1
	beqz	$3,$L668
$L665:
	lb	$3,0($4)
	cmp	$3,$5
	btnez	$L664
	move	$2,$4
	b	$L664
$L668:
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
	beqz	$16,$L670
$L671:
	addiu	$5,1
	lb	$4,0($5)
	bnez	$4,$L671
$L670:
	move	$3,$8
	subu	$5,$5,$3
	bnez	$5,$L678
	b	$L672
$L681:
	move	$7,$8
	b	$L674
$L677:
	beqz	$2,$L672
	addiu	$17,$5,-1
	lbu	$6,0($2)
	beqz	$6,$L681
	addu	$17,$2,$17
	move	$7,$8
	move	$4,$2
$L675:
	lbu	$3,0($7)
	beqz	$3,$L674
	cmp	$4,$17
	bteqz	$L674
	xor	$3,$6
	bnez	$3,$L674
	addiu	$4,1
	addiu	$7,1
	lbu	$6,0($4)
	bnez	$6,$L675
$L674:
	lbu	$3,0($7)
	xor	$3,$6
	beqz	$3,$L672
	addiu	$2,1
$L678:
	lb	$3,0($2)
	cmp	$3,$16
	bteqz	$L677
	addiu	$2,1
	bnez	$3,$L678
	li	$2,0
$L672:
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
	lw	$2,$L703
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L704
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L702
$L693:
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L704
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L696
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L704
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L695
$L696:
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

$L702:
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L704
	.set	noreorder
	.set	nomacro
	jalr	$2
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	btnez	$L693
$L695:
	ld	$2,$L705
	xor	$16,$2
	b	$L696
	.type	__pool_copysign_703, @object
__pool_copysign_703:
	.align	2
$L703:
	.word	__gnu_local_gp
	.align	3
$L704:
	.word	0
	.word	0
$L705:
	.dword	-9223372036854775808
	.type	__pend_copysign_703, @object
__pend_copysign_703:
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
	beqz	$7,$L714
	sltu	$5,$7
	btnez	$L735
	move	$8,$6
	subu	$5,$5,$7
	addu	$6,$4,$5
	sltu	$6,$4
	btnez	$L735
	move	$9,$7
	move	$3,$8
	lb	$3,0($3)
	move	$10,$3
$L728:
	lb	$3,0($2)
	move	$7,$2
	addiu	$2,1
	move	$4,$10
	xor	$3,$4
	beqz	$3,$L736
	sltu	$6,$2
	bteqz	$L728
$L735:
	li	$7,0
	b	$L732
$L738:
	beqz	$3,$L706
	subu	$17,$17,$4
	beqz	$17,$L706
$L708:
	sltu	$6,$2
	btnez	$L737
	lb	$3,0($2)
	move	$7,$2
	addiu	$2,1
	move	$4,$10
	xor	$3,$4
	bnez	$3,$L708
	move	$3,$8
	addiu	$5,$3,1
	move	$3,$9
	addiu	$3,-1
	beqz	$3,$L706
$L717:
	move	$16,$2
$L709:
	lbu	$17,0($16)
	lbu	$4,0($5)
	cmp	$17,$4
	btnez	$L738
	addiu	$3,-1
	addiu	$16,1
	addiu	$5,1
	bnez	$3,$L709
$L706:
	move	$2,$7
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L737:
	li	$7,0
	b	$L706
$L714:
	move	$7,$4
$L732:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$7
	.set	macro
	.set	reorder

$L736:
	move	$3,$8
	addiu	$5,$3,1
	move	$3,$9
	addiu	$3,-1
	beqz	$3,$L732
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	b	$L717
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
	lw	$2,$L745
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$6
	beqz	$6,$L740
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
$L740:
	addu	$2,$4,$16
	ld	$7,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_745, @object
__pool_mempcpy_745:
	.align	2
$L745:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_745, @object
__pend_mempcpy_745:
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
	lw	$2,$L773
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$5,80($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L774
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L772
	li	$2,0
	sw	$2,44($sp)
$L747:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L775
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L768
	li	$2,0
	sw	$2,40($sp)
$L751:
	lw	$2,40($sp)
	addiu	$2,1
	sw	$2,40($sp)
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,$L776
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
	ld	$5,$L775
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L751
$L752:
	lw	$2,80($sp)
	lw	$3,40($sp)
	sw	$3,0($2)
	lw	$2,44($sp)
	beqz	$2,$L756
	ld	$2,$L777
	xor	$17,$2
$L756:
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

$L772:
	ld	$2,$L777
	xor	$17,$2
	li	$2,1
	sw	$2,44($sp)
	b	$L747
$L768:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L776
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L770
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L774
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L770
	li	$2,0
	sw	$2,40($sp)
$L755:
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
	ld	$5,$L776
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	btnez	$L755
	b	$L752
$L770:
	li	$2,0
	sw	$2,40($sp)
	b	$L752
	.type	__pool_frexp_773, @object
__pool_frexp_773:
	.align	2
$L773:
	.word	__gnu_local_gp
	.align	3
$L774:
	.word	0
	.word	0
$L775:
	.word	1072693248
	.word	0
$L776:
	.word	1071644672
	.word	0
$L777:
	.dword	-9223372036854775808
	.type	__pend_frexp_773, @object
__pend_frexp_773:
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
	beqz	$4,$L782
$L780:
	dsll	$3,$4,63
	dsra	$3,63
	and	$3,$5
	daddu	$2,$2,$3
	dsll	$5,$5,1
	dsrl	$4,1
	bnez	$4,$L780
	jr	$31
$L782:
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
	bteqz	$L799
	li	$2,32
	li	$3,1
$L785:
	slt	$5,0
	btnez	$L786
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L786
	addiu	$2,-1
	bnez	$2,$L785
$L794:
	li	$2,0
$L788:
	bnez	$6,$L800
$L784:
	jr	$31
$L786:
	beqz	$3,$L794
$L799:
	li	$2,0
	b	$L790
$L789:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L788
$L790:
	sltu	$4,$5
	btnez	$L789
	subu	$4,$4,$5
	or	$2,$3
	b	$L789
$L800:
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
	bteqz	$L803
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L808
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

$L803:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

	.type	__pool___clrsbqi2_808, @object
__pool___clrsbqi2_808:
	.align	2
$L808:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_808, @object
__pend___clrsbqi2_808:
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
	beqz	$4,$L811
	addiu	$sp,-48
	sd	$31,40($sp)
	lw	$2,$L816
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

$L811:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,63
	.set	macro
	.set	reorder

	.type	__pool___clrsbdi2_816, @object
__pool___clrsbdi2_816:
	.align	2
$L816:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_816, @object
__pend___clrsbdi2_816:
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
	beqz	$4,$L821
$L819:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	sll	$5,$5,1
	bnez	$4,$L819
	jr	$31
$L821:
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
	btnez	$L824
	addu	$2,$5,$6
	sltu	$2,$4
	btnez	$L824
	addiu	$2,$6,-1
	beqz	$6,$L823
$L825:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	sb	$6,0($3)
	addiu	$2,-1
	addiu	$3,$2,1
	bnez	$3,$L825
	b	$L823
$L824:
	beqz	$7,$L827
	move	$2,$5
	move	$3,$4
	sll	$7,$7,3
	addu	$7,$7,$5
$L828:
	ld	$17,0($2)
	sd	$17,0($3)
	addiu	$2,8
	addiu	$3,8
	cmp	$2,$7
	btnez	$L828
$L827:
	sltu	$16,$6
	bteqz	$L823
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L829:
	lb	$3,0($2)
	sb	$3,0($4)
	addiu	$2,1
	addiu	$4,1
	cmp	$2,$5
	btnez	$L829
$L823:
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
	btnez	$L835
	addu	$2,$5,$6
	sltu	$2,$4
	btnez	$L835
	addiu	$2,$6,-1
	beqz	$6,$L834
$L836:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	sb	$6,0($3)
	addiu	$2,-1
	addiu	$3,$2,1
	bnez	$3,$L836
	b	$L834
$L835:
	beqz	$16,$L838
	move	$2,$5
	move	$3,$4
	sll	$16,$16,1
	addu	$16,$16,$5
$L839:
	lh	$7,0($2)
	sh	$7,0($3)
	addiu	$2,2
	addiu	$3,2
	cmp	$2,$16
	btnez	$L839
$L838:
	li	$2,1
	and	$2,$6
	beqz	$2,$L834
	addu	$5,$5,$6
	lb	$2,-1($5)
	addu	$4,$4,$6
	sb	$2,-1($4)
$L834:
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
	btnez	$L848
	addu	$2,$5,$6
	sltu	$2,$4
	btnez	$L848
	addiu	$2,$6,-1
	beqz	$6,$L847
$L849:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	sb	$6,0($3)
	addiu	$2,-1
	addiu	$3,$2,1
	bnez	$3,$L849
	b	$L847
$L848:
	beqz	$7,$L851
	move	$2,$5
	move	$3,$4
	sll	$7,$7,2
	addu	$7,$7,$5
$L852:
	lw	$17,0($2)
	sw	$17,0($3)
	addiu	$2,4
	addiu	$3,4
	cmp	$2,$7
	btnez	$L852
$L851:
	sltu	$16,$6
	bteqz	$L847
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L853:
	lb	$3,0($2)
	sb	$3,0($4)
	addiu	$2,1
	addiu	$4,1
	cmp	$2,$5
	btnez	$L853
$L847:
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
	lw	$2,$L861
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

	.type	__pool___uitod_861, @object
__pool___uitod_861:
	.align	2
$L861:
	.word	__gnu_local_gp
	.type	__pend___uitod_861, @object
__pend___uitod_861:
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
	lw	$2,$L864
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

	.type	__pool___uitof_864, @object
__pool___uitof_864:
	.align	2
$L864:
	.word	__gnu_local_gp
	.type	__pend___uitof_864, @object
__pend___uitof_864:
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
	lw	$2,$L867
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

	.type	__pool___ulltod_867, @object
__pool___ulltod_867:
	.align	2
$L867:
	.word	__gnu_local_gp
	.type	__pend___ulltod_867, @object
__pend___ulltod_867:
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
	lw	$2,$L870
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

	.type	__pool___ulltof_870, @object
__pool___ulltof_870:
	.align	2
$L870:
	.word	__gnu_local_gp
	.type	__pend___ulltof_870, @object
__pend___ulltof_870:
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
$L874:
	li	$5,15
	subu	$5,$5,$2
	move	$3,$4
	sra	$3,$5
	li	$5,1
	and	$3,$5
	bnez	$3,$L875
	addiu	$2,1
	cmpi	$2,16
	btnez	$L874
$L875:
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
$L878:
	move	$3,$4
	sra	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L879
	addiu	$2,1
	cmpi	$2,16
	btnez	$L878
$L879:
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
	lw	$2,$L888
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	lw	$2,%call16(__mips16_gesf2)($16)
	lw	$5,$L889
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	bteqz	$L887
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
$L880:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L887:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L889
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
	b	$L880
	.type	__pool___fixunssfsi_888, @object
__pool___fixunssfsi_888:
	.align	2
$L888:
	.word	__gnu_local_gp
$L889:
	.word	1191182336
	.type	__pend___fixunssfsi_888, @object
__pend___fixunssfsi_888:
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
$L891:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	addu	$2,$2,$5
	addiu	$3,1
	cmpi	$3,16
	btnez	$L891
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
$L893:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	and	$5,$6
	addu	$2,$2,$5
	addiu	$3,1
	cmpi	$3,16
	btnez	$L893
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
	beqz	$4,$L898
$L896:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	sll	$5,$5,1
	bnez	$4,$L896
	jr	$31
$L898:
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
	beqz	$4,$L905
	beqz	$5,$L905
$L902:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	addu	$2,$2,$3
	sll	$4,$4,1
	srl	$5,$5,1
	bnez	$5,$L902
	jr	$31
$L905:
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
	bteqz	$L922
	li	$2,32
	li	$3,1
$L908:
	slt	$5,0
	btnez	$L909
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L909
	addiu	$2,-1
	bnez	$2,$L908
$L917:
	li	$2,0
$L911:
	bnez	$6,$L923
$L907:
	jr	$31
$L909:
	beqz	$3,$L917
$L922:
	li	$2,0
	b	$L913
$L912:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L911
$L913:
	sltu	$4,$5
	btnez	$L912
	subu	$4,$4,$5
	or	$2,$3
	b	$L912
$L923:
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
	lw	$2,$L929
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
	btnez	$L927
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
$L924:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L927:
	li	$2,1
	neg	$2,$2
	b	$L924
	.type	__pool___mspabi_cmpf_929, @object
__pool___mspabi_cmpf_929:
	.align	2
$L929:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_929, @object
__pend___mspabi_cmpf_929:
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
	lw	$2,$L935
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
	btnez	$L933
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
$L930:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L933:
	li	$2,1
	neg	$2,$2
	b	$L930
	.type	__pool___mspabi_cmpd_935, @object
__pool___mspabi_cmpd_935:
	.align	2
$L935:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_935, @object
__pend___mspabi_cmpd_935:
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
	btnez	$L951
	li	$7,0
$L939:
	beqz	$5,$L944
	li	$6,32
	li	$2,0
$L941:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	addu	$2,$2,$3
	sll	$4,$4,1
	sra	$5,$5,1
	beqz	$5,$L940
	addiu	$6,-1
	zeb	$6
	bnez	$6,$L941
$L940:
	beqz	$7,$L952
	neg	$2,$2
$L952:
	jr	$31
$L951:
	neg	$5,$5
	li	$7,1
	b	$L939
$L944:
	li	$2,0
	b	$L940
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
	btnez	$L971
	li	$7,0
$L954:
	slt	$5,0
	btnez	$L972
$L955:
	move	$6,$4
	sltu	$5,$4
	bteqz	$L963
	li	$2,32
	li	$3,1
$L957:
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L956
	addiu	$2,-1
	bnez	$2,$L957
$L964:
	li	$2,0
$L958:
	beqz	$7,$L974
	neg	$2,$2
$L974:
	jr	$31
$L971:
	neg	$4,$4
	li	$7,1
	b	$L954
$L972:
	neg	$5,$5
	li	$2,1
	xor	$7,$2
	b	$L955
$L963:
	li	$3,1
	b	$L970
$L956:
	beqz	$3,$L964
$L970:
	li	$2,0
	b	$L960
$L973:
	subu	$6,$6,$5
	or	$2,$3
$L959:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L958
$L960:
	sltu	$6,$5
	btnez	$L959
	b	$L973
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
	btnez	$L993
	li	$7,0
$L976:
	move	$2,$4
	slt	$5,0
	btnez	$L994
$L977:
	sltu	$5,$4
	bteqz	$L985
	li	$6,32
	li	$3,1
$L979:
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L992
	addiu	$6,-1
	bnez	$6,$L979
$L980:
	beqz	$7,$L996
	neg	$2,$2
$L996:
	jr	$31
$L993:
	neg	$4,$4
	li	$7,1
	b	$L976
$L994:
	neg	$5,$5
	b	$L977
$L985:
	li	$3,1
	b	$L982
$L995:
	subu	$2,$2,$5
$L981:
	srl	$3,$3,1
	srl	$5,$5,1
$L992:
	beqz	$3,$L980
$L982:
	sltu	$2,$5
	btnez	$L981
	b	$L995
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
	bteqz	$L1012
	li	$2,16
	li	$3,1
$L998:
	move	$7,$5
	seh	$7
	slt	$7,0
	btnez	$L999
	sll	$5,$5,1
	zeh	$5
	sll	$3,$3,1
	zeh	$3
	sltu	$5,$4
	bteqz	$L999
	addiu	$2,-1
	bnez	$2,$L998
$L1007:
	li	$2,0
$L1001:
	bnez	$6,$L1013
$L1004:
	jr	$31
$L999:
	beqz	$3,$L1007
$L1012:
	li	$2,0
	b	$L1003
$L1002:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L1001
$L1003:
	sltu	$4,$5
	btnez	$L1002
	subu	$4,$4,$5
	zeh	$4
	or	$2,$3
	zeh	$2
	b	$L1002
$L1013:
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
	bteqz	$L1029
	li	$2,32
	li	$3,1
$L1015:
	slt	$5,0
	btnez	$L1016
	sll	$5,$5,1
	sll	$3,$3,1
	sltu	$5,$4
	bteqz	$L1016
	addiu	$2,-1
	bnez	$2,$L1015
$L1024:
	li	$2,0
$L1018:
	bnez	$6,$L1030
$L1014:
	jr	$31
$L1016:
	beqz	$3,$L1024
$L1029:
	li	$2,0
	b	$L1020
$L1019:
	srl	$3,$3,1
	srl	$5,$5,1
	beqz	$3,$L1018
$L1020:
	sltu	$4,$5
	btnez	$L1019
	subu	$4,$4,$5
	or	$2,$3
	b	$L1019
$L1030:
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
	beqz	$2,$L1032
	sll	$2,$4,0
	sll	$2,$5
	li	$6,0
$L1033:
	dsll	$2,$2,32
	dsll	$6,$6,32
	dsrl	$6,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1032:
	beqz	$5,$L1035
	sll	$2,$4,0
	move	$6,$2
	sll	$6,$5
	subu	$3,$3,$5
	srl	$2,$3
	dsra	$4,32
	sll	$4,$5
	or	$2,$4
	b	$L1033
$L1035:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_1037, @object
__pool___ashldi3_1037:
	.align	2
$L1037:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_1037, @object
__pend___ashldi3_1037:
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
	beqz	$3,$L1039
	move	$2,$5
	dsll	$2,$6
	li	$3,0
$L1038:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1039:
	beqz	$6,$L1042
	move	$3,$5
	dsll	$3,$6
	subu	$2,$2,$6
	dsrl	$5,$2
	move	$2,$4
	dsll	$2,$6
	or	$2,$5
	b	$L1038
$L1042:
	move	$2,$4
	move	$3,$5
	b	$L1038
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
	beqz	$2,$L1045
	move	$2,$4
	dsra	$2,32
	dsra	$4,63
	move	$6,$4
	sra	$2,$5
$L1046:
	dsll	$2,$2,32
	dsrl	$2,32
	dsll	$6,$6,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1045:
	move	$2,$4
	beqz	$5,$L1051
	dsra	$2,32
	move	$6,$2
	sra	$6,$5
	subu	$3,$3,$5
	sll	$2,$3
	sll	$4,$4,0
	srl	$4,$5
	or	$2,$4
	b	$L1046
$L1051:
	jr	$31
	.type	__pool___ashrdi3_1050, @object
__pool___ashrdi3_1050:
	.align	2
$L1050:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_1050, @object
__pend___ashrdi3_1050:
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
	beqz	$2,$L1053
	move	$2,$4
	dsra	$2,63
	dsra	$4,$6
$L1052:
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1053:
	move	$2,$4
	beqz	$6,$L1056
	dsra	$2,$6
	subu	$3,$3,$6
	dsll	$4,$3
	dsrl	$5,$6
	or	$4,$5
	b	$L1052
$L1056:
	move	$4,$5
	b	$L1052
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
	ld	$5,$L1060
	and	$2,$5
	or	$3,$2
	move	$2,$4
	dsrl	$2,8
	ld	$5,$L1061
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,8
	ld	$5,$L1062
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,24
	ld	$5,$L1063
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L1064
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_1060, @object
__pool___bswapdi2_1060:
	.align	3
$L1060:
	.dword	16711680
$L1061:
	.dword	4278190080
$L1062:
	.dword	1095216660480
$L1063:
	.dword	280375465082880
$L1064:
	.dword	71776119061217280
	.type	__pend___bswapdi2_1060, @object
__pend___bswapdi2_1060:
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
	lw	$3,$L1067
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___bswapsi2_1067, @object
__pool___bswapsi2_1067:
	.align	2
$L1067:
	.word	16711680
	.type	__pend___bswapsi2_1067, @object
__pend___bswapsi2_1067:
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
	lw	$2,$L1072
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
	beqz	$3,$L1069
	subu	$2,$2,$4
$L1070:
	addu	$5,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

$L1069:
	li	$2,0
	b	$L1070
	.type	__pool___clzsi2_1072, @object
__pool___clzsi2_1072:
	.align	2
$L1072:
	.word	65536
	.type	__pend___clzsi2_1072, @object
__pend___clzsi2_1072:
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
	lw	$2,$L1077
	move	$28,$2
	sw	$2,32($sp)
	sltu	$4,1
	move	$16,$24
	addiu	$2,$16,-1
	and	$2,$4
	beqz	$16,$L1074
	move	$4,$5
$L1075:
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

$L1074:
	li	$4,0
	b	$L1075
	.type	__pool___clzti2_1077, @object
__pool___clzti2_1077:
	.align	2
$L1077:
	.word	__gnu_local_gp
	.type	__pend___clzti2_1077, @object
__pend___clzti2_1077:
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
	btnez	$L1082
	slt	$6,$7
	btnez	$L1081
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1082
	sltu	$5,$4
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
	btnez	$L1088
	slt	$6,$7
	btnez	$L1089
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1088
	sltu	$5,$4
	btnez	$L1089
	li	$2,1
	b	$L1085
$L1088:
	li	$2,0
$L1085:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,-1
	.set	macro
	.set	reorder

$L1089:
	li	$2,2
	b	$L1085
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
	btnez	$L1094
	slt	$6,$4
	btnez	$L1093
	sltu	$5,$7
	btnez	$L1094
	sltu	$7,$5
	btnez	$L1095
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1093:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1094:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1095:
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
	lw	$2,$L1101
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$5
	sltu	$5,1
	move	$16,$24
	beqz	$5,$L1099
	li	$4,0
$L1099:
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

	.type	__pool___ctzti2_1101, @object
__pool___ctzti2_1101:
	.align	2
$L1101:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_1101, @object
__pend___ctzti2_1101:
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
	lw	$2,$L1107
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	bnez	$5,$L1103
	beqz	$4,$L1105
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
	b	$L1102
$L1103:
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
$L1102:
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L1105:
	li	$2,0
	b	$L1102
	.type	__pool___ffsti2_1107, @object
__pool___ffsti2_1107:
	.align	2
$L1107:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_1107, @object
__pend___ffsti2_1107:
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
	beqz	$2,$L1109
	dsrl	$4,32
	sll	$2,$4,0
	srl	$2,$5
	li	$6,0
$L1110:
	dsll	$2,$2,32
	dsrl	$2,32
	dsll	$6,$6,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1109:
	move	$2,$4
	beqz	$5,$L1115
	dsrl	$2,32
	sll	$2,$2,0
	move	$6,$2
	srl	$6,$5
	subu	$3,$3,$5
	sll	$2,$3
	sll	$4,$4,0
	srl	$4,$5
	or	$2,$4
	b	$L1110
$L1115:
	jr	$31
	.type	__pool___lshrdi3_1114, @object
__pool___lshrdi3_1114:
	.align	2
$L1114:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_1114, @object
__pend___lshrdi3_1114:
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
	beqz	$2,$L1117
	dsrl	$4,$6
	li	$2,0
$L1116:
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1117:
	move	$2,$4
	beqz	$6,$L1120
	dsrl	$2,$6
	subu	$3,$3,$6
	dsll	$4,$3
	dsrl	$5,$6
	or	$4,$5
	b	$L1116
$L1120:
	move	$4,$5
	b	$L1116
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
	ld	$3,$L1137
	and	$2,$3
	dsubu	$4,$4,$2
	move	$2,$4
	dsrl	$2,2
	ld	$3,$L1138
	and	$2,$3
	and	$4,$3
	daddu	$2,$2,$4
	move	$3,$2
	dsrl	$3,4
	daddu	$3,$3,$2
	ld	$2,$L1139
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

	.type	__pool___popcountdi2_1137, @object
__pool___popcountdi2_1137:
	.align	3
$L1137:
	.dword	6148914691236517205
$L1138:
	.dword	3689348814741910323
$L1139:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1137, @object
__pend___popcountdi2_1137:
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
	lw	$3,$L1142
	and	$2,$3
	subu	$4,$4,$2
	srl	$3,$4,2
	lw	$2,$L1143
	and	$3,$2
	and	$4,$2
	addu	$3,$3,$4
	srl	$2,$3,4
	addu	$2,$2,$3
	lw	$3,$L1144
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

	.type	__pool___popcountsi2_1142, @object
__pool___popcountsi2_1142:
	.align	2
$L1142:
	.word	1431655765
$L1143:
	.word	858993459
$L1144:
	.word	252645135
	.type	__pend___popcountsi2_1142, @object
__pend___popcountsi2_1142:
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
	ld	$6,$L1147
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
	ld	$6,$L1148
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
	ld	$4,$L1149
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

	.type	__pool___popcountti2_1147, @object
__pool___popcountti2_1147:
	.align	3
$L1147:
	.dword	6148914691236517205
$L1148:
	.dword	3689348814741910323
$L1149:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1147, @object
__pend___popcountti2_1147:
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
	lw	$2,$L1160
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$8,$4
	sw	$5,80($sp)
	lw	$16,80($sp)
	ld	$2,$L1161
	sd	$2,40($sp)
	b	$L1153
$L1151:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1152
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
$L1153:
	li	$2,1
	and	$2,$16
	beqz	$2,$L1151
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
	b	$L1151
$L1152:
	lw	$2,80($sp)
	slt	$2,0
	btnez	$L1159
$L1150:
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

$L1159:
	lw	$17,%call16(__mips16_divdf3)($17)
	ld	$4,$L1161
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
	b	$L1150
	.type	__pool___powidf2_1160, @object
__pool___powidf2_1160:
	.align	2
$L1160:
	.word	__gnu_local_gp
	.align	3
$L1161:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_1160, @object
__pend___powidf2_1160:
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
	lw	$2,$L1172
	move	$28,$2
	sw	$2,32($sp)
	move	$17,$28
	move	$8,$4
	sw	$5,80($sp)
	lw	$16,80($sp)
	lw	$2,$L1173
	sw	$2,40($sp)
	b	$L1165
$L1163:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1164
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
$L1165:
	li	$2,1
	and	$2,$16
	beqz	$2,$L1163
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
	b	$L1163
$L1164:
	lw	$2,80($sp)
	slt	$2,0
	btnez	$L1171
$L1162:
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

$L1171:
	lw	$17,%call16(__mips16_divsf3)($17)
	lw	$4,$L1173
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
	b	$L1162
	.type	__pool___powisf2_1172, @object
__pool___powisf2_1172:
	.align	2
$L1172:
	.word	__gnu_local_gp
$L1173:
	.word	1065353216
	.type	__pend___powisf2_1172, @object
__pend___powisf2_1172:
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
	btnez	$L1178
	sltu	$2,$3
	btnez	$L1177
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1178
	sltu	$5,$4
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
	btnez	$L1184
	sltu	$2,$3
	btnez	$L1185
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1184
	sltu	$5,$4
	btnez	$L1185
	li	$2,1
	b	$L1181
$L1184:
	li	$2,0
$L1181:
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,-1
	.set	macro
	.set	reorder

$L1185:
	li	$2,2
	b	$L1181
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
	btnez	$L1190
	sltu	$6,$4
	btnez	$L1189
	sltu	$5,$7
	btnez	$L1190
	sltu	$7,$5
	btnez	$L1191
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1189:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1190:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1191:
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
