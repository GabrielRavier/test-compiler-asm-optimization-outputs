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
	sltu	$5,$4
	move	$2,$4
	bteqz	$L7
	addu	$5,$5,$6
	addu	$3,$4,$6
	beqz	$6,$L17
$L9:
	addiu	$3,-1
	lb	$4,-1($5)
	cmp	$2,$3
	addiu	$5,-1
	sb	$4,0($3)
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
	addiu	$3,1
	sb	$4,-1($3)
	cmp	$3,$6
	addiu	$5,1
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
	bnez	$7,$L20
	b	$L21
$L22:
	addiu	$7,-1
	addiu	$5,1
	addiu	$4,1
	beqz	$7,$L21
$L20:
	lbu	$3,0($5)
	sb	$3,0($4)
	xor	$3,$6
	bnez	$3,$L22
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,$4,1
	.set	macro
	.set	reorder

$L21:
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
	bnez	$6,$L30
	b	$L34
$L32:
	addiu	$6,-1
	addiu	$4,1
	beqz	$6,$L33
$L30:
	lbu	$3,0($4)
	xor	$3,$5
	bnez	$3,$L32
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L33:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L34:
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
	beqz	$6,$L40
$L45:
	lbu	$2,0($4)
	lbu	$3,0($5)
	cmp	$2,$3
	btnez	$L44
	addiu	$6,-1
	addiu	$4,1
	addiu	$5,1
	bnez	$6,$L45
$L40:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L44:
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
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	beqz	$6,$L52
	lw	$2,$L55
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
	sd	$31,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L52:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_memcpy_55, @object
__pool_memcpy_55:
	.align	2
$L55:
	.word	__gnu_local_gp
	.type	__pend_memcpy_55, @object
__pend_memcpy_55:
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
	addiu	$6,-1
	addu	$6,$4,$6
	zeb	$5
	addiu	$4,-1
$L57:
	cmp	$6,$4
	bteqz	$L60
	move	$2,$6
	lbu	$3,0($2)
	addiu	$6,-1
	xor	$3,$5
	bnez	$3,$L57
	jr	$31
$L60:
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
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	beqz	$6,$L67
	lw	$2,$L70
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(memset)($2)
	zeb	$5
	sd	$31,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L67:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_memset_70, @object
__pool_memset_70:
	.align	2
$L70:
	.word	__gnu_local_gp
	.type	__pend_memset_70, @object
__pend_memset_70:
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
	lb	$3,0($5)
	move	$2,$4
	sb	$3,0($4)
	beqz	$3,$L77
$L73:
	lb	$3,1($5)
	addiu	$5,1
	addiu	$2,1
	sb	$3,0($2)
	bnez	$3,$L73
$L77:
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
	lb	$3,0($4)
	move	$2,$4
	zeb	$5
	bnez	$3,$L79
	jr	$31
$L81:
	lb	$3,1($2)
	addiu	$2,1
	beqz	$3,$L84
$L79:
	zeb	$3
	xor	$3,$5
	bnez	$3,$L81
$L84:
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
	b	$L88
$L90:
	addiu	$2,1
	beqz	$3,$L89
$L88:
	lb	$3,0($2)
	cmp	$3,$5
	btnez	$L90
	jr	$31
$L89:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	b	$L97
$L92:
	beqz	$3,$L93
	addiu	$4,1
	addiu	$5,1
$L97:
	lb	$3,0($4)
	lb	$2,0($5)
	cmp	$3,$2
	bteqz	$L92
	zeb	$3
$L93:
	zeb	$2
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
	beqz	$2,$L101
	move	$2,$4
$L100:
	lb	$3,1($2)
	addiu	$2,1
	bnez	$3,$L100
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$4
	.set	macro
	.set	reorder

$L101:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	beqz	$6,$L110
	lbu	$2,0($4)
	beqz	$2,$L112
	lbu	$3,0($5)
	addiu	$6,-1
	addu	$6,$4,$6
	beqz	$3,$L105
$L114:
	cmp	$6,$4
	bteqz	$L105
	cmp	$3,$2
	btnez	$L105
	lbu	$2,1($4)
	addiu	$4,1
	addiu	$3,$5,1
	beqz	$2,$L113
	move	$5,$3
	lbu	$3,0($5)
	bnez	$3,$L114
$L105:
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L110:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L113:
	lbu	$3,1($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L112:
	lbu	$3,0($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
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
	btnez	$L118
	li	$2,2
	neg	$2,$2
	and	$6,$2
	addu	$6,$4,$6
$L117:
	lbu	$2,1($4)
	addiu	$4,2
	sb	$2,0($5)
	lbu	$2,-2($4)
	cmp	$4,$6
	sb	$2,1($5)
	addiu	$5,2
	btnez	$L117
$L118:
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
	bteqz	$L123
	li	$2,9
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L123:
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
	btnez	$L126
	li	$2,127
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
	bteqz	$L133
	addiu	$4,-9
	sltu	$4,5
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L133:
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
	btnez	$L138
	addiu	$2,$4,-8
	addiu	$2,-119
	sltu	$2,33
	bteqz	$L140
$L138:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L140:
	addiu	$2,$4,-8232
	sltu	$2,2
	btnez	$L139
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

$L139:
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
	btnez	$L150
	sltu	$4,8232
	btnez	$L147
	addiu	$3,$4,-8234
	li	$2,47062
	sltu	$3,$2
	btnez	$L147
	li	$2,57344
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$2,8185
	btnez	$L147
	li	$2,65532
	lw	$3,$L152
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$3,$2
	btnez	$L148
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

$L147:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L150:
	li	$2,127
	addiu	$4,1
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

$L148:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.type	__pool_iswprint_151, @object
__pool_iswprint_151:
	.align	2
$L151:
	.word	__gnu_local_gp
$L152:
	.word	1048579
	.type	__pend_iswprint_151, @object
__pend_iswprint_151:
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
	btnez	$L155
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

$L155:
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
	lw	$2,$L167
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_unorddf2)($17)
	sd	$5,72($sp)
	move	$5,$4
	sd	$16,40($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L160
	ld	$5,72($sp)
	lw	$2,%call16(__mips16_unorddf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L161
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	bteqz	$L166
	ld	$2,$L168
$L157:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L166:
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
	b	$L157
$L160:
	move	$2,$16
	b	$L157
$L161:
	ld	$2,72($sp)
	b	$L157
	.type	__pool_fdim_167, @object
__pool_fdim_167:
	.align	2
$L167:
	.word	__gnu_local_gp
	.align	3
$L168:
	.word	0
	.word	0
	.type	__pend_fdim_167, @object
__pend_fdim_167:
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
	lw	$2,$L179
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_unordsf2)($17)
	sw	$5,72($sp)
	move	$5,$4
	sd	$16,40($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L172
	lw	$5,72($sp)
	lw	$2,%call16(__mips16_unordsf2)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L173
	lw	$2,%call16(__mips16_gtsf2)($17)
	lw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	bteqz	$L178
	lw	$2,$L180
$L169:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L178:
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
	b	$L169
$L172:
	move	$2,$16
	b	$L169
$L173:
	lw	$2,72($sp)
	b	$L169
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
	lw	$2,$L194
	addiu	$sp,-64
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	sd	$16,40($sp)
	move	$16,$5
	move	$5,$4
	sd	$17,48($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
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
	bnez	$2,$L193
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
	slt	$2,0
	move	$28,$6
	btnez	$L189
	move	$16,$17
$L189:
	move	$2,$16
$L181:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L193:
	bnez	$3,$L189
$L188:
	move	$2,$17
	b	$L181
	.type	__pool_fmax_194, @object
__pool_fmax_194:
	.align	2
$L194:
	.word	__gnu_local_gp
	.type	__pend_fmax_194, @object
__pend_fmax_194:
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
	lw	$2,$L208
	addiu	$sp,-64
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	sd	$16,40($sp)
	move	$16,$5
	move	$5,$4
	sd	$17,48($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L203
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
	bnez	$2,$L202
	lw	$2,$L209
	move	$3,$2
	and	$3,$17
	and	$2,$16
	xor	$2,$3
	bnez	$2,$L207
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
	slt	$2,0
	move	$28,$6
	btnez	$L203
	move	$16,$17
$L203:
	move	$2,$16
$L195:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L207:
	bnez	$3,$L203
$L202:
	move	$2,$17
	b	$L195
	.type	__pool_fmaxf_208, @object
__pool_fmaxf_208:
	.align	2
$L208:
	.word	__gnu_local_gp
$L209:
	.word	-2147483648
	.type	__pend_fmaxf_208, @object
__pend_fmaxf_208:
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
	lw	$2,$L223
	addiu	$sp,-64
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	sd	$16,40($sp)
	move	$16,$5
	move	$5,$4
	sd	$17,48($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L218
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
	bnez	$2,$L217
	move	$2,$17
	dsrl	$2,63
	move	$3,$2
	move	$2,$16
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L222
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
	slt	$2,0
	move	$28,$6
	btnez	$L218
	move	$16,$17
$L218:
	move	$2,$16
$L210:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L222:
	bnez	$3,$L218
$L217:
	move	$2,$17
	b	$L210
	.type	__pool_fmaxl_223, @object
__pool_fmaxl_223:
	.align	2
$L223:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_223, @object
__pend_fmaxl_223:
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
	lw	$2,$L237
	addiu	$sp,-64
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	sd	$17,48($sp)
	move	$17,$5
	move	$5,$4
	sd	$16,40($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L230
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
	bnez	$2,$L232
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	move	$2,$17
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L236
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
	slt	$2,0
	move	$28,$6
	btnez	$L232
	move	$16,$17
$L232:
	move	$2,$16
$L224:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L236:
	bnez	$3,$L232
$L230:
	move	$2,$17
	b	$L224
	.type	__pool_fmin_237, @object
__pool_fmin_237:
	.align	2
$L237:
	.word	__gnu_local_gp
	.type	__pend_fmin_237, @object
__pend_fmin_237:
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
	lw	$2,$L251
	addiu	$sp,-64
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_unordsf2)($2)
	sd	$17,48($sp)
	move	$17,$5
	move	$5,$4
	sd	$16,40($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L244
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
	bnez	$2,$L246
	lw	$2,$L252
	move	$3,$2
	and	$3,$16
	and	$2,$17
	xor	$2,$3
	bnez	$2,$L250
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
	slt	$2,0
	move	$28,$6
	btnez	$L246
	move	$16,$17
$L246:
	move	$2,$16
$L238:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L250:
	bnez	$3,$L246
$L244:
	move	$2,$17
	b	$L238
	.type	__pool_fminf_251, @object
__pool_fminf_251:
	.align	2
$L251:
	.word	__gnu_local_gp
$L252:
	.word	-2147483648
	.type	__pend_fminf_251, @object
__pend_fminf_251:
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
	lw	$2,$L266
	addiu	$sp,-64
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_unorddf2)($2)
	sd	$17,48($sp)
	move	$17,$5
	move	$5,$4
	sd	$16,40($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L259
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
	bnez	$2,$L261
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	move	$2,$17
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L265
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
	slt	$2,0
	move	$28,$6
	btnez	$L261
	move	$16,$17
$L261:
	move	$2,$16
$L253:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L265:
	bnez	$3,$L261
$L259:
	move	$2,$17
	b	$L253
	.type	__pool_fminl_266, @object
__pool_fminl_266:
	.align	2
$L266:
	.word	__gnu_local_gp
	.type	__pend_fminl_266, @object
__pend_fminl_266:
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
	lw	$3,$L271
	beqz	$4,$L268
	lw	$5,$L272
$L269:
	li	$2,63
	and	$2,$4
	addu	$2,$5,$2
	lbu	$2,0($2)
	srl	$4,$4,6
	sb	$2,0($3)
	addiu	$3,1
	bnez	$4,$L269
$L268:
	li	$2,0
	sb	$2,0($3)
	lw	$2,$L271
	jr	$31
	.type	__pool_l64a_271, @object
__pool_l64a_271:
	.align	2
$L271:
	.word	s.0
$L272:
	.word	digits
	.type	__pend_l64a_271, @object
__pend_l64a_271:
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
	lw	$2,$L274
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.type	__pool_srand_274, @object
__pool_srand_274:
	.align	2
$L274:
	.word	seed
	.type	__pend_srand_274, @object
__pend_srand_274:
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
	lw	$3,$L277
	ld	$2,$L278
	ld	$4,0($3)
	dmult	$4,$2
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_277, @object
__pool_rand_277:
	.align	2
$L277:
	.word	seed
	.align	3
$L278:
	.dword	6364136223846793005
	.type	__pend_rand_277, @object
__pend_rand_277:
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
	beqz	$5,$L285
	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$2,0($4)
	beqz	$2,$L286
	sw	$4,4($2)
$L286:
	jr	$31
$L285:
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
	beqz	$2,$L288
	lw	$3,4($4)
	sw	$3,4($2)
$L288:
	lw	$3,4($4)
	beqz	$3,$L296
	sw	$2,0($3)
$L296:
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
	lw	$2,$L313
	sw	$6,88($sp)
	move	$28,$2
	sw	$2,32($sp)
	lw	$2,88($sp)
	sd	$31,64($sp)
	lw	$2,0($2)
	sd	$17,56($sp)
	sd	$16,48($sp)
	sw	$4,72($sp)
	sw	$5,80($sp)
	sw	$7,96($sp)
	sw	$2,44($sp)
	beqz	$2,$L298
	lw	$17,80($sp)
	li	$16,0
	b	$L300
$L312:
	lw	$2,96($sp)
	addiu	$16,1
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
	bteqz	$L298
$L300:
	lw	$2,108($sp)
	lw	$4,72($sp)
	move	$5,$17
	move	$25,$2
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$17,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L312
$L297:
	ld	$7,64($sp)
	lw	$2,40($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L298:
	lw	$3,44($sp)
	lw	$4,88($sp)
	addiu	$2,$3,1
	sw	$2,0($4)
	lw	$2,96($sp)
	mult	$2,$3
	lw	$3,80($sp)
	mflo	$2
	addu	$2,$3,$2
	lw	$3,96($sp)
	sw	$2,40($sp)
	beqz	$3,$L297
	move	$4,$2
	move	$2,$28
	lw	$2,%call16(memmove)($2)
	lw	$5,72($sp)
	move	$6,$3
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	lw	$2,40($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

	.type	__pool_lsearch_313, @object
__pool_lsearch_313:
	.align	2
$L313:
	.word	__gnu_local_gp
	.type	__pend_lsearch_313, @object
__pend_lsearch_313:
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
	lw	$2,0($6)
	addiu	$sp,-72
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	sw	$4,72($sp)
	sw	$7,96($sp)
	sw	$2,44($sp)
	beqz	$2,$L315
	move	$17,$5
	li	$16,0
	b	$L317
$L325:
	lw	$2,96($sp)
	addiu	$16,1
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
	bteqz	$L315
$L317:
	lw	$2,108($sp)
	lw	$4,72($sp)
	move	$5,$17
	move	$25,$2
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$17,40($sp)
	.set	macro
	.set	reorder

	bnez	$2,$L325
$L314:
	ld	$7,64($sp)
	lw	$2,40($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L315:
	li	$2,0
	sw	$2,40($sp)
	b	$L314
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
	slt	$4,0
	move	$2,$4
	btnez	$L328
	jr	$31
$L328:
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
$L336:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L330
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L330
	cmpi	$3,43
	bteqz	$L331
	cmpi	$3,45
	bteqz	$L332
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L348
	move	$5,$4
	li	$7,0
$L334:
	li	$2,0
$L338:
	sll	$4,$2,2
	addu	$4,$4,$2
	sll	$4,$4,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L338
	bnez	$7,$L349
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L330:
	addiu	$4,1
	b	$L336
$L332:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L341
	li	$7,1
	b	$L334
$L341:
	li	$2,0
$L349:
	jr	$31
$L331:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L334
$L348:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
$L359:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L353
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L353
	cmpi	$3,43
	bteqz	$L354
	cmpi	$3,45
	bteqz	$L355
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L371
	move	$5,$4
	li	$7,0
$L357:
	li	$2,0
$L361:
	addiu	$5,1
	move	$6,$3
	lb	$3,0($5)
	dsll	$4,$2,2
	daddu	$4,$4,$2
	addiu	$3,-48
	dsll	$4,$4,1
	sltu	$3,10
	dsubu	$2,$4,$6
	btnez	$L361
	bnez	$7,$L372
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$6,$4
	.set	macro
	.set	reorder

$L353:
	addiu	$4,1
	b	$L359
$L355:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L364
	li	$7,1
	b	$L357
$L364:
	li	$2,0
$L372:
	jr	$31
$L354:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L357
$L371:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	beqz	$6,$L374
	move	$16,$6
$L377:
	lw	$2,96($sp)
	srl	$17,$16,1
	mult	$17,$2
	lw	$3,80($sp)
	mflo	$2
	lw	$4,72($sp)
	addu	$2,$3,$2
	sw	$2,40($sp)
	lw	$3,108($sp)
	lw	$5,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$3
	move	$25,$3
	.set	macro
	.set	reorder

	slt	$2,0
	btnez	$L378
	slt	$2,1
	btnez	$L373
	lw	$2,40($sp)
	lw	$3,96($sp)
	addiu	$16,-1
	addu	$2,$2,$3
	subu	$16,$16,$17
	sw	$2,80($sp)
	bnez	$16,$L377
$L374:
	li	$2,0
	sw	$2,40($sp)
$L373:
	ld	$7,64($sp)
	lw	$2,40($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L378:
	move	$16,$17
	bnez	$16,$L377
	b	$L374
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
	beqz	$6,$L384
	move	$17,$6
$L387:
	lw	$3,96($sp)
	sra	$2,$17,1
	mult	$2,$3
	sw	$2,40($sp)
	mflo	$16
	lw	$2,80($sp)
	lw	$6,116($sp)
	addu	$16,$2,$16
	lw	$2,108($sp)
	lw	$4,72($sp)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	beqz	$2,$L383
	slt	$2,1
	btnez	$L388
	lw	$2,96($sp)
	addiu	$17,-1
	addu	$2,$16,$2
	sra	$17,$17,1
	sw	$2,80($sp)
	bnez	$17,$L387
$L384:
	li	$16,0
$L383:
	ld	$7,64($sp)
	ld	$17,56($sp)
	move	$2,$16
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L388:
	lw	$17,40($sp)
	bnez	$17,$L387
	b	$L384
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
	div	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	move	$2,$4
	mfhi	$3
	mflo	$4
	sw	$3,4($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sw	$4,0($2)
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
	slt	$4,0
	move	$2,$4
	btnez	$L399
	jr	$31
$L399:
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
	ddiv	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	move	$2,$4
	mfhi	$3
	mflo	$4
	sd	$3,8($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
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
	slt	$4,0
	move	$2,$4
	btnez	$L403
	jr	$31
$L403:
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
	div	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	move	$2,$4
	mfhi	$3
	mflo	$4
	sw	$3,4($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sw	$4,0($2)
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
	slt	$4,0
	move	$2,$4
	btnez	$L407
	jr	$31
$L407:
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
	ddiv	$0,$5,$6
	bnez	$6,1f
	break	7
1:
	move	$2,$4
	mfhi	$3
	mflo	$4
	sd	$3,8($2)
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
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
	lw	$3,0($4)
	beqz	$3,$L414
$L410:
	xor	$3,$5
	beqz	$3,$L415
	lw	$3,4($4)
	addiu	$4,4
	bnez	$3,$L410
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L415:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L414:
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
	b	$L425
$L426:
	beqz	$2,$L418
	beqz	$3,$L418
	addiu	$4,4
	addiu	$5,4
$L425:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	bteqz	$L426
$L418:
	slt	$2,$3
	btnez	$L421
	slt	$3,$2
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L421:
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
$L428:
	lw	$6,0($5)
	addiu	$3,4
	sw	$6,-4($3)
	addiu	$5,4
	bnez	$6,$L428
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
	beqz	$2,$L432
	move	$2,$4
$L431:
	lw	$3,4($2)
	addiu	$2,4
	bnez	$3,$L431
	subu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$2,2
	.set	macro
	.set	reorder

$L432:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	beqz	$6,$L439
$L442:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	btnez	$L436
	beqz	$2,$L436
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L442
$L439:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L436:
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$2
	btnez	$L443
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L443:
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
	bnez	$6,$L445
	b	$L449
$L447:
	addiu	$6,-1
	addiu	$4,4
	beqz	$6,$L448
$L445:
	lw	$2,0($4)
	cmp	$2,$5
	btnez	$L447
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L448:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L449:
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
	beqz	$6,$L456
$L461:
	lw	$3,0($4)
	lw	$2,0($5)
	cmp	$3,$2
	btnez	$L460
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L461
$L456:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L460:
	slt	$3,$2
	btnez	$L462
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L462:
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
	beqz	$6,$L469
	lw	$2,$L472
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
	sll	$6,$6,2
	sd	$31,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L469:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_wmemcpy_472, @object
__pool_wmemcpy_472:
	.align	2
$L472:
	.word	__gnu_local_gp
	.type	__pend_wmemcpy_472, @object
__pend_wmemcpy_472:
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
	cmp	$4,$5
	move	$2,$4
	bteqz	$L486
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	subu	$17,$4,$5
	move	$16,$4
	sll	$4,$6,2
	sltu	$17,$4
	move	$7,$5
	addiu	$3,$6,-1
	bteqz	$L485
	beqz	$6,$L474
	sll	$3,$3,2
$L477:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	addiu	$3,-4
	sw	$6,0($4)
	addiu	$4,$3,4
	bnez	$4,$L477
$L474:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L485:
	beqz	$6,$L474
$L476:
	lw	$4,0($7)
	addiu	$3,-1
	sw	$4,0($16)
	addiu	$4,$3,1
	addiu	$16,4
	addiu	$7,4
	bnez	$4,$L476
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L486:
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
	beqz	$6,$L493
	move	$6,$4
$L489:
	addiu	$3,-1
	addiu	$7,$3,1
	sw	$5,0($6)
	addiu	$6,4
	bnez	$7,$L489
$L493:
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
	bteqz	$L495
	addu	$2,$4,$6
	addu	$5,$5,$6
	beqz	$6,$L505
$L497:
	addiu	$2,-1
	lb	$3,0($2)
	cmp	$4,$2
	addiu	$5,-1
	sb	$3,0($5)
	btnez	$L497
	jr	$31
$L495:
	cmp	$4,$5
	bteqz	$L505
	beqz	$6,$L505
	addu	$6,$4,$6
$L498:
	lb	$2,0($4)
	addiu	$4,1
	cmp	$4,$6
	sb	$2,0($5)
	addiu	$5,1
	btnez	$L498
$L505:
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
	srl	$3,$4,24
	sll	$2,$4,24
	or	$2,$3
	li	$5,65280
	srl	$3,$4,8
	and	$3,$5
	or	$2,$3
	lw	$3,$L520
	sll	$4,$4,8
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_bswap_32_520, @object
__pool_bswap_32_520:
	.align	2
$L520:
	.word	16711680
	.type	__pend_bswap_32_520, @object
__pend_bswap_32_520:
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
	move	$2,$4
	dsll	$3,$4,56
	dsrl	$2,56
	or	$3,$2
	move	$2,$4
	li	$5,65280
	dsrl	$2,40
	and	$2,$5
	or	$3,$2
	ld	$5,$L523
	move	$2,$4
	dsrl	$2,24
	and	$2,$5
	or	$3,$2
	ld	$5,$L524
	move	$2,$4
	dsrl	$2,8
	and	$2,$5
	ld	$5,$L525
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$5,$L526
	or	$3,$2
	dsll	$2,$4,24
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L527
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_523, @object
__pool_bswap_64_523:
	.align	3
$L523:
	.dword	16711680
$L524:
	.dword	4278190080
$L525:
	.dword	1095216660480
$L526:
	.dword	280375465082880
$L527:
	.dword	71776119061217280
	.type	__pend_bswap_64_523, @object
__pend_bswap_64_523:
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
	b	$L531
$L533:
	cmpi	$2,32
	bteqz	$L532
$L531:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	addiu	$2,1
	beqz	$3,$L533
	jr	$31
$L532:
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
	beqz	$4,$L537
	li	$2,1
	and	$2,$4
	bnez	$2,$L539
	li	$2,1
$L536:
	sra	$4,$4,1
	li	$3,1
	and	$3,$4
	addiu	$2,1
	beqz	$3,$L536
	jr	$31
$L537:
	li	$2,0
$L539:
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
	lw	$2,$L546
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$5,$L547
	lw	$2,%call16(__mips16_ltsf2)($17)
	sd	$16,40($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L544
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$5,$L548
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L544:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool_gl_isinff_546, @object
__pool_gl_isinff_546:
	.align	2
$L546:
	.word	__gnu_local_gp
$L547:
	.word	-8388609
$L548:
	.word	2139095039
	.type	__pend_gl_isinff_546, @object
__pend_gl_isinff_546:
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
	lw	$2,$L554
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L555
	lw	$2,%call16(__mips16_ltdf2)($17)
	sd	$16,40($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L552
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L556
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L552:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool_gl_isinfd_554, @object
__pool_gl_isinfd_554:
	.align	2
$L554:
	.word	__gnu_local_gp
	.align	3
$L555:
	.word	-1048577
	.word	-1
$L556:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_554, @object
__pend_gl_isinfd_554:
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
	lw	$2,$L562
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L563
	lw	$2,%call16(__mips16_ltdf2)($17)
	sd	$16,40($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L560
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L564
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$4,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L560:
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool_gl_isinfl_562, @object
__pool_gl_isinfl_562:
	.align	2
$L562:
	.word	__gnu_local_gp
	.align	3
$L563:
	.word	-1048577
	.word	-1
$L564:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_562, @object
__pend_gl_isinfl_562:
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
	lw	$2,$L567
	addiu	$sp,-56
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_floatsidf)($2)
	sd	$16,40($sp)
	move	$16,$4
	sd	$31,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	ld	$7,48($sp)
	sd	$2,0($16)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool__Qp_itoq_567, @object
__pool__Qp_itoq_567:
	.align	2
$L567:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_567, @object
__pend__Qp_itoq_567:
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
	lw	$2,$L586
	addiu	$sp,-72
	move	$28,$2
	sd	$17,56($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_unordsf2)($17)
	sd	$16,48($sp)
	move	$16,$5
	move	$5,$4
	sd	$31,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L569
	lw	$5,72($sp)
	lw	$2,%call16(__mips16_addsf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	lw	$5,72($sp)
	lw	$7,%call16(__mips16_nesf2)($17)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$4,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L569
	slt	$16,0
	btnez	$L584
	lw	$5,$L587
$L571:
	li	$2,1
	and	$2,$16
	beqz	$2,$L572
$L573:
	lw	$2,%call16(__mips16_mulsf3)($17)
	lw	$4,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	lw	$5,40($sp)
	move	$28,$6
	sw	$2,72($sp)
$L572:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L569
	lw	$2,%call16(__mips16_mulsf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L573
$L585:
	srl	$2,$16,31
	addu	$16,$2,$16
	lw	$2,%call16(__mips16_mulsf3)($17)
	move	$4,$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	sra	$16,$16,1
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L573
	b	$L585
$L569:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	lw	$2,72($sp)
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L584:
	lw	$5,$L588
	b	$L571
	.type	__pool_ldexpf_586, @object
__pool_ldexpf_586:
	.align	2
$L586:
	.word	__gnu_local_gp
$L587:
	.word	1073741824
$L588:
	.word	1056964608
	.type	__pend_ldexpf_586, @object
__pend_ldexpf_586:
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
	lw	$2,$L607
	addiu	$sp,-72
	move	$28,$2
	sd	$17,56($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_unorddf2)($17)
	sd	$16,48($sp)
	move	$16,$5
	move	$5,$4
	sd	$31,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L590
	ld	$5,72($sp)
	lw	$2,%call16(__mips16_adddf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	ld	$5,72($sp)
	lw	$7,%call16(__mips16_nedf2)($17)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$4,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L590
	slt	$16,0
	btnez	$L605
	ld	$5,$L608
$L592:
	li	$2,1
	and	$2,$16
	beqz	$2,$L593
$L594:
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$4,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	ld	$5,40($sp)
	move	$28,$6
	sd	$2,72($sp)
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
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L594
$L606:
	srl	$2,$16,31
	addu	$16,$2,$16
	lw	$2,%call16(__mips16_muldf3)($17)
	move	$4,$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	sra	$16,$16,1
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L594
	b	$L606
$L590:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,72($sp)
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L605:
	ld	$5,$L609
	b	$L592
	.type	__pool_ldexp_607, @object
__pool_ldexp_607:
	.align	2
$L607:
	.word	__gnu_local_gp
	.align	3
$L608:
	.word	1073741824
	.word	0
$L609:
	.word	1071644672
	.word	0
	.type	__pend_ldexp_607, @object
__pend_ldexp_607:
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
	lw	$2,$L628
	addiu	$sp,-72
	move	$28,$2
	sd	$17,56($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_unorddf2)($17)
	sd	$16,48($sp)
	move	$16,$5
	move	$5,$4
	sd	$31,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L611
	ld	$5,72($sp)
	lw	$2,%call16(__mips16_adddf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	ld	$4,72($sp)
	lw	$7,%call16(__mips16_nedf2)($17)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$5,$2
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L611
	slt	$16,0
	btnez	$L626
	ld	$5,$L629
$L613:
	li	$2,1
	and	$2,$16
	beqz	$2,$L614
$L615:
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$4,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	ld	$5,40($sp)
	move	$28,$6
	sd	$2,72($sp)
$L614:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L611
	lw	$2,%call16(__mips16_muldf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L615
$L627:
	srl	$2,$16,31
	addu	$16,$2,$16
	lw	$2,%call16(__mips16_muldf3)($17)
	move	$4,$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	sra	$16,$16,1
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L615
	b	$L627
$L611:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,72($sp)
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L626:
	ld	$5,$L630
	b	$L613
	.type	__pool_ldexpl_628, @object
__pool_ldexpl_628:
	.align	2
$L628:
	.word	__gnu_local_gp
	.align	3
$L629:
	.word	1073741824
	.word	0
$L630:
	.word	1071644672
	.word	0
	.type	__pend_ldexpl_628, @object
__pend_ldexpl_628:
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
	beqz	$6,$L641
	addiu	$sp,-8
	move	$3,$4
	sd	$16,0($sp)
	addu	$16,$5,$6
$L633:
	lbu	$7,0($3)
	lbu	$6,0($5)
	addiu	$5,1
	xor	$7,$6
	cmp	$5,$16
	sb	$7,0($3)
	addiu	$3,1
	btnez	$L633
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L641:
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
	lb	$3,0($4)
	move	$2,$4
	beqz	$3,$L649
	move	$3,$4
$L644:
	lb	$7,1($3)
	addiu	$3,1
	bnez	$7,$L644
$L653:
	beqz	$6,$L646
$L655:
	lb	$7,0($5)
	sb	$7,0($3)
	beqz	$7,$L656
	addiu	$6,-1
	addiu	$5,1
	addiu	$3,1
	bnez	$6,$L655
$L646:
	li	$4,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sb	$4,0($3)
	.set	macro
	.set	reorder

$L656:
	jr	$31
$L649:
	move	$3,$4
	b	$L653
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
	beqz	$5,$L665
$L658:
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L664
	jr	$31
$L664:
	addiu	$2,1
	cmp	$5,$2
	btnez	$L658
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$5
	.set	macro
	.set	reorder

$L665:
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
	lb	$7,0($4)
	move	$2,$4
	beqz	$7,$L673
$L668:
	move	$6,$5
$L671:
	lb	$3,0($6)
	beqz	$3,$L674
	xor	$3,$7
	addiu	$6,1
	bnez	$3,$L671
	jr	$31
$L674:
	lb	$7,1($2)
	addiu	$2,1
	bnez	$7,$L668
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L673:
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
$L677:
	lb	$3,0($4)
	cmp	$5,$3
	bteqz	$L678
	addiu	$4,1
	bnez	$3,$L677
	jr	$31
$L678:
	move	$2,$4
	addiu	$4,1
	bnez	$3,$L677
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
	lb	$16,0($5)
	beqz	$16,$L690
	move	$8,$5
$L681:
	lb	$3,1($5)
	addiu	$5,1
	bnez	$3,$L681
	move	$2,$8
	subu	$5,$5,$2
	bnez	$5,$L687
	b	$L690
$L699:
	addiu	$4,1
	beqz	$3,$L698
$L687:
	lb	$3,0($4)
	cmp	$3,$16
	btnez	$L699
	addiu	$17,$5,-1
	zeb	$3
	addu	$17,$4,$17
	move	$7,$8
	move	$6,$4
$L683:
	lbu	$2,0($7)
	beqz	$2,$L684
	cmp	$17,$6
	bteqz	$L684
	xor	$2,$3
	bnez	$2,$L684
	lbu	$3,1($6)
	addiu	$6,1
	addiu	$7,1
	bnez	$3,$L683
$L684:
	lbu	$2,0($7)
	xor	$2,$3
	beqz	$2,$L690
	addiu	$4,1
	b	$L687
$L698:
	ld	$17,8($sp)
	ld	$16,0($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L690:
	ld	$17,8($sp)
	ld	$16,0($sp)
	move	$2,$4
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
	lw	$2,$L712
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L713
	sd	$16,40($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L711
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L713
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L704
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L713
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L703
$L704:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	move	$2,$16
	.set	macro
	.set	reorder

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
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L713
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L704
$L703:
	ld	$2,$L714
	xor	$16,$2
	b	$L704
	.type	__pool_copysign_712, @object
__pool_copysign_712:
	.align	2
$L712:
	.word	__gnu_local_gp
	.align	3
$L713:
	.word	0
	.word	0
$L714:
	.dword	-9223372036854775808
	.type	__pend_copysign_712, @object
__pend_copysign_712:
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
	beqz	$7,$L721
	sltu	$5,$7
	btnez	$L723
	subu	$5,$5,$7
	move	$10,$7
	addu	$7,$4,$5
	sltu	$7,$4
	btnez	$L723
	lb	$2,0($6)
	move	$9,$6
	move	$8,$2
	move	$2,$10
	addu	$6,$4,$2
	b	$L726
$L734:
	sltu	$7,$4
	addiu	$6,1
	btnez	$L733
$L726:
	lb	$3,0($4)
	move	$5,$8
	xor	$3,$5
	move	$2,$4
	addiu	$4,1
	bnez	$3,$L734
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
$L727:
	move	$3,$9
	addiu	$16,$3,1
	move	$3,$10
	cmpi	$3,1
	bteqz	$L715
	move	$5,$4
	b	$L718
$L719:
	addiu	$5,1
	cmp	$5,$6
	addiu	$16,1
	bteqz	$L715
$L718:
	lbu	$3,0($5)
	lbu	$17,0($16)
	xor	$3,$17
	beqz	$3,$L719
	sltu	$7,$4
	addiu	$6,1
	btnez	$L735
$L720:
	lb	$3,0($4)
	move	$5,$8
	xor	$3,$5
	move	$2,$4
	addiu	$4,1
	beqz	$3,$L727
	sltu	$7,$4
	addiu	$6,1
	bteqz	$L720
$L735:
	li	$2,0
$L715:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L721:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L733:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L723:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
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
	lw	$2,$L742
	move	$28,$2
	sd	$16,40($sp)
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$16,$6
	beqz	$6,$L737
	move	$2,$28
	lw	$2,%call16(memmove)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L737:
	ld	$7,48($sp)
	addu	$2,$4,$16
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_742, @object
__pool_mempcpy_742:
	.align	2
$L742:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_742, @object
__pend_mempcpy_742:
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
	.frame	$sp,80,$31		# vars= 16, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L767
	addiu	$sp,-80
	move	$28,$2
	sd	$16,56($sp)
	move	$16,$28
	sw	$2,32($sp)
	sw	$5,88($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L768
	sd	$17,64($sp)
	sd	$31,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L764
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L769
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L765
	li	$2,0
	sw	$2,48($sp)
$L746:
	li	$2,0
	sw	$2,40($sp)
$L752:
	lw	$2,40($sp)
	ld	$5,$L770
	addiu	$2,1
	sw	$2,40($sp)
	lw	$2,%call16(__mips16_muldf3)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$17,$2
	ld	$5,$L769
	lw	$2,%call16(__mips16_gedf2)($16)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L752
$L753:
	lw	$2,88($sp)
	lw	$3,40($sp)
	sw	$3,0($2)
	lw	$2,48($sp)
	beqz	$2,$L759
	ld	$2,$L771
	xor	$2,$17
$L743:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,72($sp)
	ld	$17,64($sp)
	ld	$16,56($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,80
	.set	macro
	.set	reorder

$L765:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L770
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L749
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L768
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L758
$L749:
	lw	$3,88($sp)
	li	$2,0
	sw	$2,0($3)
	move	$2,$17
	b	$L743
$L764:
	ld	$2,$L771
	ld	$5,$L772
	xor	$2,$17
	sd	$2,40($sp)
	lw	$2,%call16(__mips16_ledf2)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	bteqz	$L766
	li	$2,1
	ld	$17,40($sp)
	sw	$2,48($sp)
	b	$L746
$L759:
	move	$2,$17
	b	$L743
$L766:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L773
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L749
	li	$2,1
	sw	$2,48($sp)
$L747:
	li	$2,0
	ld	$17,40($sp)
	sw	$2,40($sp)
$L754:
	lw	$2,40($sp)
	move	$5,$17
	addiu	$2,-1
	sw	$2,40($sp)
	lw	$2,%call16(__mips16_adddf3)($16)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$17,$2
	ld	$5,$L770
	lw	$2,%call16(__mips16_ltdf2)($16)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L754
	b	$L753
$L758:
	li	$2,0
	sd	$17,40($sp)
	sw	$2,48($sp)
	b	$L747
	.type	__pool_frexp_767, @object
__pool_frexp_767:
	.align	2
$L767:
	.word	__gnu_local_gp
	.align	3
$L768:
	.word	0
	.word	0
$L769:
	.word	1072693248
	.word	0
$L770:
	.word	1071644672
	.word	0
$L771:
	.dword	-9223372036854775808
$L772:
	.word	-1074790400
	.word	0
$L773:
	.word	-1075838976
	.word	0
	.type	__pend_frexp_767, @object
__pend_frexp_767:
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
	beqz	$4,$L778
$L776:
	dsll	$3,$4,63
	dsra	$3,63
	and	$3,$5
	dsrl	$4,1
	daddu	$2,$2,$3
	dsll	$5,$5,1
	bnez	$4,$L776
	jr	$31
$L778:
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
	bteqz	$L782
	li	$2,32
	li	$3,1
$L781:
	slt	$5,0
	btnez	$L782
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L794
	addiu	$2,-1
	bnez	$2,$L781
$L784:
	bnez	$6,$L795
$L796:
	jr	$31
$L794:
	li	$2,0
	beqz	$3,$L784
$L782:
	li	$2,0
$L787:
	sltu	$4,$5
	btnez	$L786
	subu	$4,$4,$5
	or	$2,$3
$L786:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L787
	beqz	$6,$L796
$L795:
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
	bteqz	$L799
	addiu	$sp,-48
	lw	$2,$L804
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$24
	sll	$2,$2,8
	dsll	$4,$2,32
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	dsrl	$4,32
	sd	$31,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	addiu	$2,-33
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
	li	$2,7
	.set	macro
	.set	reorder

	.type	__pool___clrsbqi2_804, @object
__pool___clrsbqi2_804:
	.align	2
$L804:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_804, @object
__pend___clrsbqi2_804:
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
	beqz	$4,$L807
	lw	$2,$L812
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__clzdi2)($2)
	sd	$31,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	addiu	$2,-1
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L807:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,63
	.set	macro
	.set	reorder

	.type	__pool___clrsbdi2_812, @object
__pool___clrsbdi2_812:
	.align	2
$L812:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_812, @object
__pend___clrsbdi2_812:
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
	beqz	$4,$L817
$L815:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	sll	$5,$5,1
	bnez	$4,$L815
	jr	$31
$L817:
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
	sd	$16,0($sp)
	li	$16,8
	neg	$16,$16
	sltu	$4,$5
	sd	$17,8($sp)
	srl	$7,$6,3
	and	$16,$6
	btnez	$L820
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L830
$L820:
	beqz	$7,$L823
	sll	$7,$7,3
	move	$2,$5
	move	$3,$4
	addu	$7,$7,$5
$L824:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$7
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L824
$L823:
	sltu	$16,$6
	bteqz	$L819
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L825:
	lb	$3,0($2)
	addiu	$2,1
	cmp	$2,$5
	sb	$3,0($4)
	addiu	$4,1
	btnez	$L825
$L819:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L830:
	addiu	$2,$6,-1
	beqz	$6,$L819
$L821:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L821
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
	sltu	$4,$5
	sd	$16,0($sp)
	srl	$16,$6,1
	btnez	$L832
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L844
$L832:
	beqz	$16,$L835
	sll	$16,$16,1
	move	$2,$5
	move	$3,$4
	addu	$16,$16,$5
$L836:
	lh	$7,0($2)
	addiu	$2,2
	cmp	$2,$16
	sh	$7,0($3)
	addiu	$3,2
	btnez	$L836
$L835:
	li	$2,1
	and	$2,$6
	beqz	$2,$L831
	addu	$5,$5,$6
	lb	$2,-1($5)
	addu	$4,$4,$6
	sb	$2,-1($4)
$L831:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L844:
	addiu	$2,$6,-1
	beqz	$6,$L831
$L833:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L833
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
	sd	$16,0($sp)
	li	$16,4
	neg	$16,$16
	sltu	$4,$5
	sd	$17,8($sp)
	srl	$7,$6,2
	and	$16,$6
	btnez	$L846
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L856
$L846:
	beqz	$7,$L849
	sll	$7,$7,2
	move	$2,$5
	move	$3,$4
	addu	$7,$7,$5
$L850:
	lw	$17,0($2)
	addiu	$2,4
	cmp	$2,$7
	sw	$17,0($3)
	addiu	$3,4
	btnez	$L850
$L849:
	sltu	$16,$6
	bteqz	$L845
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L851:
	lb	$3,0($2)
	addiu	$2,1
	cmp	$2,$5
	sb	$3,0($4)
	addiu	$4,1
	btnez	$L851
$L845:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L856:
	addiu	$2,$6,-1
	beqz	$6,$L845
$L847:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L847
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
	lw	$2,$L860
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_floatunsidf)($2)
	sd	$31,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___uitod_860, @object
__pool___uitod_860:
	.align	2
$L860:
	.word	__gnu_local_gp
	.type	__pend___uitod_860, @object
__pend___uitod_860:
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
	lw	$2,$L863
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$2,%call16(__mips16_floatunsisf)($2)
	sd	$31,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___uitof_863, @object
__pool___uitof_863:
	.align	2
$L863:
	.word	__gnu_local_gp
	.type	__pend___uitof_863, @object
__pend___uitof_863:
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
	lw	$2,$L866
	addiu	$sp,-56
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$5,%got(__mips16_call_stub_df_0)($2)
	lw	$2,%call16(__floatundidf)($2)
	move	$3,$18
	sd	$31,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$5
	sd	$3,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	ld	$7,48($sp)
	ld	$6,40($sp)
	addiu	$sp,56
	.set	noreorder
	.set	nomacro
	jr	$7
	move	$18,$6
	.set	macro
	.set	reorder

	.type	__pool___ulltod_866, @object
__pool___ulltod_866:
	.align	2
$L866:
	.word	__gnu_local_gp
	.type	__pend___ulltod_866, @object
__pend___ulltod_866:
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
	lw	$2,$L869
	addiu	$sp,-56
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	lw	$5,%got(__mips16_call_stub_sf_0)($2)
	lw	$2,%call16(__floatundisf)($2)
	move	$3,$18
	sd	$31,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$5
	sd	$3,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	ld	$7,48($sp)
	ld	$6,40($sp)
	addiu	$sp,56
	.set	noreorder
	.set	nomacro
	jr	$7
	move	$18,$6
	.set	macro
	.set	reorder

	.type	__pool___ulltof_869, @object
__pool___ulltof_869:
	.align	2
$L869:
	.word	__gnu_local_gp
	.type	__pend___ulltof_869, @object
__pend___ulltof_869:
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
$L873:
	li	$5,15
	subu	$5,$5,$2
	move	$3,$4
	sra	$3,$5
	li	$5,1
	and	$3,$5
	bnez	$3,$L874
	addiu	$2,1
	cmpi	$2,16
	btnez	$L873
$L874:
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
$L877:
	move	$3,$4
	sra	$3,$2
	li	$5,1
	and	$3,$5
	bnez	$3,$L878
	addiu	$2,1
	cmpi	$2,16
	btnez	$L877
$L878:
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
	lw	$2,$L887
	addiu	$sp,-64
	move	$28,$2
	sd	$16,40($sp)
	move	$16,$28
	sw	$2,32($sp)
	lw	$5,$L888
	lw	$2,%call16(__mips16_gesf2)($16)
	sd	$17,48($sp)
	sd	$31,56($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$17,$4
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L886
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$17
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L886:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L888
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	lw	$16,%call16(__mips16_fix_truncsfsi)($16)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$4,$2
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	li	$3,32768
	ld	$17,48($sp)
	ld	$16,40($sp)
	addu	$2,$2,$3
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___fixunssfsi_887, @object
__pool___fixunssfsi_887:
	.align	2
$L887:
	.word	__gnu_local_gp
$L888:
	.word	1191182336
	.type	__pend___fixunssfsi_887, @object
__pend___fixunssfsi_887:
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
$L890:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	addiu	$3,1
	and	$5,$6
	cmpi	$3,16
	addu	$2,$2,$5
	btnez	$L890
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
$L892:
	move	$5,$4
	sra	$5,$3
	li	$6,1
	addiu	$3,1
	and	$5,$6
	cmpi	$3,16
	addu	$2,$2,$5
	btnez	$L892
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
	beqz	$4,$L897
$L895:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	sll	$5,$5,1
	bnez	$4,$L895
	jr	$31
$L897:
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
	beqz	$4,$L904
	beqz	$5,$L904
$L901:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	srl	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L901
	jr	$31
$L904:
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
	bteqz	$L908
	li	$2,32
	li	$3,1
$L907:
	slt	$5,0
	btnez	$L908
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L920
	addiu	$2,-1
	bnez	$2,$L907
$L910:
	bnez	$6,$L921
$L922:
	jr	$31
$L920:
	li	$2,0
	beqz	$3,$L910
$L908:
	li	$2,0
$L913:
	sltu	$4,$5
	btnez	$L912
	subu	$4,$4,$5
	or	$2,$3
$L912:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L913
	beqz	$6,$L922
$L921:
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
	lw	$2,$L928
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_ltsf2)($17)
	sd	$16,40($sp)
	sd	$31,56($sp)
	sw	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L926
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$5,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L926:
	ld	$7,56($sp)
	li	$2,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	neg	$2,$2
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___mspabi_cmpf_928, @object
__pool___mspabi_cmpf_928:
	.align	2
$L928:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_928, @object
__pend___mspabi_cmpf_928:
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
	lw	$2,$L934
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	sd	$16,40($sp)
	sd	$31,56($sp)
	sd	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$16,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L932
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$17
	move	$5,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$2,$24
	sltu	$2,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L932:
	ld	$7,56($sp)
	li	$2,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	neg	$2,$2
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___mspabi_cmpd_934, @object
__pool___mspabi_cmpd_934:
	.align	2
$L934:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_934, @object
__pend___mspabi_cmpd_934:
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
	btnez	$L950
	beqz	$5,$L943
	li	$7,0
$L939:
	li	$6,32
	li	$2,0
	b	$L942
$L951:
	addiu	$6,-1
	zeb	$6
	beqz	$6,$L941
$L942:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	sra	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L951
$L941:
	beqz	$7,$L952
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L943:
	li	$2,0
$L952:
	jr	$31
$L950:
	neg	$5,$5
	li	$7,1
	b	$L939
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
	btnez	$L972
	li	$7,0
$L954:
	slt	$5,0
	bteqz	$L955
	li	$2,1
	neg	$5,$5
	xor	$7,$2
$L955:
	sltu	$5,$4
	move	$6,$4
	li	$3,1
	bteqz	$L957
	li	$2,32
	li	$3,1
	b	$L956
$L960:
	addiu	$2,-1
	beqz	$2,$L959
$L956:
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	btnez	$L960
$L959:
	li	$2,0
	beqz	$3,$L958
$L957:
	li	$2,0
$L962:
	sltu	$6,$5
	btnez	$L961
	subu	$6,$6,$5
	or	$2,$3
$L961:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L962
$L958:
	beqz	$7,$L973
	neg	$2,$2
$L973:
	jr	$31
$L972:
	neg	$4,$4
	li	$7,1
	b	$L954
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
$L975:
	slt	$5,0
	move	$2,$4
	bteqz	$L976
	neg	$5,$5
$L976:
	sltu	$5,$4
	li	$3,1
	bteqz	$L983
	li	$6,32
	li	$3,1
	b	$L977
$L981:
	addiu	$6,-1
	beqz	$6,$L980
$L977:
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	btnez	$L981
$L980:
	beqz	$3,$L994
$L983:
	sltu	$2,$5
	btnez	$L982
	subu	$2,$2,$5
$L982:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L983
$L979:
	beqz	$7,$L995
	neg	$2,$2
$L995:
	jr	$31
$L993:
	neg	$4,$4
	li	$7,1
	b	$L975
$L994:
	move	$2,$4
	b	$L979
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
	bteqz	$L998
	li	$2,16
	li	$3,1
$L997:
	move	$7,$5
	seh	$7
	slt	$7,0
	btnez	$L998
	sll	$5,$5,1
	zeh	$5
	sll	$3,$3,1
	sltu	$5,$4
	zeh	$3
	bteqz	$L1008
	addiu	$2,-1
	bnez	$2,$L997
$L1006:
	li	$2,0
	bnez	$6,$L1009
$L1010:
	jr	$31
$L1008:
	beqz	$3,$L1006
$L998:
	li	$2,0
$L1003:
	sltu	$4,$5
	btnez	$L1002
	subu	$4,$4,$5
	or	$2,$3
	zeh	$4
	zeh	$2
$L1002:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1003
	beqz	$6,$L1010
$L1009:
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
	bteqz	$L1013
	li	$2,32
	li	$3,1
$L1012:
	slt	$5,0
	btnez	$L1013
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1014
	addiu	$2,-1
	bnez	$2,$L1012
	bnez	$6,$L1026
$L1027:
	jr	$31
$L1014:
	beqz	$3,$L1021
$L1013:
	li	$2,0
$L1018:
	sltu	$4,$5
	btnez	$L1017
	subu	$4,$4,$5
	or	$2,$3
$L1017:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1018
	beqz	$6,$L1027
$L1026:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L1021:
	li	$2,0
	beqz	$6,$L1027
	b	$L1026
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
	beqz	$2,$L1029
	sll	$2,$4,0
	li	$6,0
	sll	$2,$5
	dsll	$6,$6,32
	dsrl	$6,32
	dsll	$2,$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1029:
	beqz	$5,$L1032
	sll	$2,$4,0
	move	$6,$2
	subu	$3,$3,$5
	dsra	$4,32
	sll	$6,$5
	srl	$2,$3
	sll	$4,$5
	or	$2,$4
	dsll	$6,$6,32
	dsrl	$6,32
	dsll	$2,$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1032:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_1034, @object
__pool___ashldi3_1034:
	.align	2
$L1034:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_1034, @object
__pend___ashldi3_1034:
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
	li	$2,64
	move	$3,$6
	and	$3,$2
	addiu	$sp,-24
	beqz	$3,$L1036
	move	$2,$5
	dsll	$2,$6
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1036:
	beqz	$6,$L1039
	subu	$2,$2,$6
	move	$3,$5
	dsrl	$5,$2
	move	$2,$4
	dsll	$2,$6
	dsll	$3,$6
	or	$2,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1039:
	move	$2,$4
	move	$3,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
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
	li	$3,32
	move	$2,$5
	and	$2,$3
	beqz	$2,$L1042
	move	$2,$4
	dsra	$2,32
	dsra	$4,63
	sra	$2,$5
	move	$6,$4
	dsll	$2,$2,32
	dsll	$6,$6,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1042:
	move	$2,$4
	beqz	$5,$L1048
	dsra	$2,32
	subu	$3,$3,$5
	sll	$4,$4,0
	move	$6,$2
	srl	$4,$5
	sll	$2,$3
	or	$2,$4
	sra	$6,$5
	dsll	$2,$2,32
	dsll	$6,$6,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1048:
	jr	$31
	.type	__pool___ashrdi3_1047, @object
__pool___ashrdi3_1047:
	.align	2
$L1047:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_1047, @object
__pend___ashrdi3_1047:
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
	li	$3,64
	move	$2,$6
	and	$2,$3
	addiu	$sp,-24
	beqz	$2,$L1050
	move	$2,$4
	dsra	$4,$6
	dsra	$2,63
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1050:
	move	$2,$4
	beqz	$6,$L1053
	subu	$3,$3,$6
	dsll	$4,$3
	dsrl	$5,$6
	or	$4,$5
	dsra	$2,$6
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1053:
	move	$4,$5
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$3,$4
	dsll	$2,$4,56
	dsrl	$3,56
	or	$3,$2
	move	$2,$4
	li	$5,65280
	dsrl	$2,40
	and	$2,$5
	or	$3,$2
	ld	$5,$L1057
	move	$2,$4
	dsrl	$2,24
	and	$2,$5
	or	$3,$2
	ld	$5,$L1058
	move	$2,$4
	dsrl	$2,8
	and	$2,$5
	ld	$5,$L1059
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$5,$L1060
	or	$3,$2
	dsll	$2,$4,24
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L1061
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_1057, @object
__pool___bswapdi2_1057:
	.align	3
$L1057:
	.dword	16711680
$L1058:
	.dword	4278190080
$L1059:
	.dword	1095216660480
$L1060:
	.dword	280375465082880
$L1061:
	.dword	71776119061217280
	.type	__pend___bswapdi2_1057, @object
__pend___bswapdi2_1057:
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
	sll	$3,$4,24
	srl	$2,$4,24
	or	$2,$3
	li	$5,65280
	srl	$3,$4,8
	and	$3,$5
	or	$2,$3
	lw	$3,$L1064
	sll	$4,$4,8
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___bswapsi2_1064, @object
__pool___bswapsi2_1064:
	.align	2
$L1064:
	.word	16711680
	.type	__pend___bswapsi2_1064, @object
__pend___bswapsi2_1064:
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
	lw	$2,$L1069
	li	$5,8
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
	li	$7,1
	srl	$3,$4,1
	and	$3,$7
	li	$7,1
	xor	$3,$7
	zeb	$3
	beqz	$3,$L1066
	subu	$2,$2,$4
	addu	$5,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

$L1066:
	addu	$5,$5,$6
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_1069, @object
__pool___clzsi2_1069:
	.align	2
$L1069:
	.word	65536
	.type	__pend___clzsi2_1069, @object
__pend___clzsi2_1069:
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
	sltu	$4,1
	lw	$2,$L1074
	sd	$16,40($sp)
	move	$16,$24
	move	$28,$2
	sw	$2,32($sp)
	addiu	$2,$16,-1
	sd	$31,48($sp)
	and	$2,$4
	beqz	$16,$L1071
	move	$4,$5
$L1072:
	move	$5,$28
	lw	$5,%call16(__clzdi2)($5)
	or	$4,$2
	move	$25,$5
	.set	noreorder
	.set	nomacro
	jalr	$5
	sll	$16,$16,6
	.set	macro
	.set	reorder

	ld	$7,48($sp)
	addu	$2,$16,$2
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

$L1071:
	li	$4,0
	b	$L1072
	.type	__pool___clzti2_1074, @object
__pool___clzti2_1074:
	.align	2
$L1074:
	.word	__gnu_local_gp
	.type	__pend___clzti2_1074, @object
__pend___clzti2_1074:
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
	move	$3,$5
	dsra	$2,32
	dsra	$3,32
	slt	$2,$3
	sll	$7,$2,0
	sll	$6,$3,0
	btnez	$L1079
	slt	$6,$7
	btnez	$L1078
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1079
	sltu	$5,$4
	btnez	$L1080
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1079:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1078:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1080:
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
	move	$3,$5
	dsra	$2,32
	dsra	$3,32
	slt	$2,$3
	sll	$7,$2,0
	sll	$6,$3,0
	btnez	$L1083
	slt	$6,$7
	btnez	$L1084
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1085
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1083:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1085:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1084:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	slt	$4,$6
	btnez	$L1090
	slt	$6,$4
	btnez	$L1089
	sltu	$5,$7
	btnez	$L1090
	sltu	$7,$5
	btnez	$L1091
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1090:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1089:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1091:
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
	lw	$2,$L1097
	sltu	$5,1
	move	$28,$2
	sd	$16,40($sp)
	sw	$2,32($sp)
	sd	$31,48($sp)
	move	$2,$5
	move	$16,$24
	beqz	$5,$L1095
	li	$4,0
$L1095:
	addiu	$5,$16,-1
	and	$5,$2
	move	$2,$28
	lw	$2,%call16(__ctzdi2)($2)
	or	$4,$5
	move	$25,$2
	.set	noreorder
	.set	nomacro
	jalr	$2
	sll	$16,$16,6
	.set	macro
	.set	reorder

	ld	$7,48($sp)
	addu	$2,$16,$2
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool___ctzti2_1097, @object
__pool___ctzti2_1097:
	.align	2
$L1097:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_1097, @object
__pend___ctzti2_1097:
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
	lw	$2,$L1104
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	sd	$31,40($sp)
	move	$2,$28
	bnez	$5,$L1099
	bnez	$4,$L1103
	ld	$7,40($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L1099:
	lw	$2,%call16(__ctzdi2)($2)
	move	$4,$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	addiu	$2,1
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L1103:
	lw	$2,%call16(__ctzdi2)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,40($sp)
	addiu	$2,65
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___ffsti2_1104, @object
__pool___ffsti2_1104:
	.align	2
$L1104:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_1104, @object
__pend___ffsti2_1104:
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
	beqz	$2,$L1106
	dsrl	$4,32
	sll	$2,$4,0
	srl	$2,$5
	li	$6,0
	dsll	$2,$2,32
	dsll	$6,$6,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1106:
	move	$2,$4
	beqz	$5,$L1112
	dsrl	$2,32
	sll	$2,$2,0
	subu	$3,$3,$5
	sll	$4,$4,0
	move	$6,$2
	srl	$4,$5
	sll	$2,$3
	or	$2,$4
	srl	$6,$5
	dsll	$2,$2,32
	dsll	$6,$6,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$6
	.set	macro
	.set	reorder

$L1112:
	jr	$31
	.type	__pool___lshrdi3_1111, @object
__pool___lshrdi3_1111:
	.align	2
$L1111:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_1111, @object
__pend___lshrdi3_1111:
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
	li	$3,64
	move	$2,$6
	and	$2,$3
	addiu	$sp,-24
	beqz	$2,$L1114
	dsrl	$4,$6
	li	$2,0
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1114:
	move	$2,$4
	beqz	$6,$L1117
	subu	$3,$3,$6
	dsll	$4,$3
	dsrl	$5,$6
	or	$4,$5
	dsrl	$2,$6
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1117:
	move	$4,$5
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
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
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	li	$7,65535
	move	$2,$5
	sd	$17,8($sp)
	move	$17,$4
	and	$17,$7
	and	$2,$7
	mult	$17,$2
	srl	$4,$4,8
	srl	$4,$4,8
	mflo	$6
	mult	$2,$4
	sd	$16,0($sp)
	mflo	$3
	srl	$16,$6,8
	srl	$16,$16,8
	srl	$5,$5,8
	srl	$5,$5,8
	addu	$3,$3,$16
	mult	$17,$5
	sll	$16,$3,8
	and	$6,$7
	sll	$16,$16,8
	addu	$2,$6,$16
	mflo	$6
	srl	$16,$16,8
	mult	$4,$5
	srl	$16,$16,8
	addu	$6,$6,$16
	mflo	$4
	and	$2,$7
	srl	$3,$3,8
	sll	$7,$6,8
	sll	$7,$7,8
	srl	$3,$3,8
	srl	$6,$6,8
	addu	$2,$2,$7
	addu	$3,$3,$4
	srl	$6,$6,8
	addu	$3,$3,$6
	dsll	$2,$2,32
	dsll	$3,$3,32
	dsrl	$2,32
	ld	$17,8($sp)
	ld	$16,0($sp)
	or	$2,$3
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
	sll	$7,$5,0
	sd	$16,0($sp)
	sll	$16,$4,0
	sd	$17,8($sp)
	move	$2,$16
	li	$17,65535
	move	$3,$7
	and	$2,$17
	and	$3,$17
	mult	$2,$3
	move	$12,$4
	srl	$4,$16,8
	srl	$4,$4,8
	move	$11,$2
	mflo	$2
	mult	$3,$4
	srl	$6,$2,8
	mflo	$3
	srl	$6,$6,8
	addu	$6,$3,$6
	sll	$3,$6,8
	sll	$3,$3,8
	and	$2,$17
	move	$8,$3
	addu	$3,$2,$3
	move	$2,$8
	srl	$2,$2,8
	srl	$2,$2,8
	move	$8,$2
	srl	$2,$7,8
	srl	$2,$2,8
	move	$9,$2
	move	$10,$4
	move	$2,$11
	move	$4,$9
	mult	$2,$4
	move	$4,$8
	mflo	$2
	and	$3,$17
	addu	$2,$2,$4
	sll	$17,$2,8
	sll	$17,$17,8
	move	$4,$10
	addu	$3,$3,$17
	move	$17,$9
	mult	$4,$17
	srl	$6,$6,8
	mflo	$17
	srl	$6,$6,8
	srl	$2,$2,8
	addu	$6,$6,$17
	srl	$2,$2,8
	dsra	$5,32
	mult	$16,$5
	addu	$6,$6,$2
	move	$4,$12
	dsll	$3,$3,32
	dsll	$6,$6,32
	dsra	$4,32
	dsrl	$3,32
	or	$3,$6
	mflo	$2
	mult	$7,$4
	move	$5,$3
	mflo	$4
	dsra	$5,32
	addu	$2,$2,$5
	addu	$2,$2,$4
	dsll	$3,$3,32
	dsrl	$3,32
	dsll	$2,$2,32
	ld	$17,8($sp)
	ld	$16,0($sp)
	or	$2,$3
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
	sll	$7,$4,0
	sll	$3,$5,0
	multu	$7,$3
	dsrl	$4,32
	mflo	$6
	sll	$4,$4,0
	mfhi	$2
	dsll	$6,$6,32
	multu	$3,$4
	dsll	$2,$2,32
	dsrl	$6,32
	or	$6,$2
	dsrl	$5,32
	mflo	$2
	sll	$5,$5,0
	mfhi	$3
	dsll	$2,$2,32
	multu	$7,$5
	dsll	$3,$3,32
	dsrl	$2,32
	addiu	$sp,-32
	mfhi	$7
	or	$2,$3
	mflo	$3
	multu	$4,$5
	sd	$16,24($sp)
	move	$16,$6
	mflo	$4
	dsrl	$16,32
	mfhi	$5
	daddu	$2,$2,$16
	dsll	$3,$3,32
	dsll	$16,$2,32
	dsll	$7,$7,32
	dsrl	$3,32
	dsll	$4,$4,32
	dsrl	$16,32
	or	$3,$7
	dsll	$5,$5,32
	dsrl	$4,32
	daddu	$3,$3,$16
	or	$4,$5
	dsll	$6,$6,32
	dsrl	$2,32
	dsll	$7,$3,32
	daddu	$2,$2,$4
	dsrl	$3,32
	dsrl	$6,32
	daddu	$2,$2,$3
	daddu	$6,$6,$7
	sd	$6,16($sp)
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
	sll	$2,$5,0
	sll	$3,$7,0
	multu	$2,$3
	addiu	$sp,-40
	sd	$16,24($sp)
	mflo	$16
	move	$9,$2
	mfhi	$2
	dsll	$16,$16,32
	dsll	$2,$2,32
	dsrl	$16,32
	or	$16,$2
	move	$2,$5
	dsrl	$2,32
	sll	$2,$2,0
	multu	$3,$2
	move	$8,$2
	mflo	$2
	mfhi	$3
	dsll	$2,$2,32
	sd	$17,32($sp)
	dsll	$3,$3,32
	move	$17,$16
	dsrl	$2,32
	dsrl	$17,32
	or	$2,$3
	daddu	$2,$2,$17
	dsll	$3,$2,32
	move	$17,$7
	dsrl	$3,32
	dsrl	$17,32
	move	$10,$3
	sll	$17,$17,0
	move	$3,$9
	multu	$3,$17
	move	$11,$4
	mflo	$3
	mfhi	$4
	dsll	$3,$3,32
	dsll	$4,$4,32
	dsrl	$3,32
	or	$3,$4
	move	$4,$10
	daddu	$3,$3,$4
	dsll	$16,$16,32
	dsll	$4,$3,32
	dsrl	$16,32
	daddu	$16,$16,$4
	move	$4,$8
	multu	$4,$17
	sd	$16,16($sp)
	mfhi	$17
	mflo	$16
	dmult	$5,$6
	dsll	$16,$16,32
	dsll	$17,$17,32
	dsrl	$16,32
	or	$16,$17
	dsrl	$2,32
	daddu	$2,$2,$16
	dsrl	$3,32
	daddu	$2,$2,$3
	mflo	$3
	ld	$17,32($sp)
	daddu	$2,$3,$2
	move	$3,$11
	dmult	$7,$3
	ld	$16,24($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,8($sp)
	ld	$3,16($sp)
	ld	$2,8($sp)
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
	ld	$3,$L1134
	move	$2,$4
	dsrl	$2,1
	and	$2,$3
	dsubu	$4,$4,$2
	ld	$3,$L1135
	move	$2,$4
	dsrl	$2,2
	and	$4,$3
	and	$2,$3
	daddu	$2,$2,$4
	move	$3,$2
	dsrl	$3,4
	daddu	$3,$3,$2
	ld	$2,$L1136
	and	$3,$2
	move	$2,$3
	dsrl	$2,32
	sll	$3,$3,0
	sll	$2,$2,0
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

	.type	__pool___popcountdi2_1134, @object
__pool___popcountdi2_1134:
	.align	3
$L1134:
	.dword	6148914691236517205
$L1135:
	.dword	3689348814741910323
$L1136:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1134, @object
__pend___popcountdi2_1134:
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
	lw	$3,$L1139
	srl	$2,$4,1
	and	$2,$3
	subu	$4,$4,$2
	lw	$2,$L1140
	srl	$3,$4,2
	and	$3,$2
	and	$4,$2
	addu	$3,$3,$4
	srl	$2,$3,4
	addu	$2,$2,$3
	lw	$3,$L1141
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

	.type	__pool___popcountsi2_1139, @object
__pool___popcountsi2_1139:
	.align	2
$L1139:
	.word	1431655765
$L1140:
	.word	858993459
$L1141:
	.word	252645135
	.type	__pend___popcountsi2_1139, @object
__pend___popcountsi2_1139:
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
	move	$3,$5
	ld	$6,$L1144
	dsll	$2,$4,63
	dsrl	$3,1
	or	$2,$3
	and	$2,$6
	move	$3,$4
	dsubu	$2,$5,$2
	dsrl	$3,1
	and	$3,$6
	sltu	$5,$2
	move	$5,$24
	dsubu	$4,$4,$3
	dsubu	$4,$4,$5
	move	$5,$2
	ld	$6,$L1145
	dsll	$3,$4,62
	dsrl	$5,2
	or	$3,$5
	and	$3,$6
	move	$5,$4
	and	$2,$6
	daddu	$2,$3,$2
	dsrl	$5,2
	and	$5,$6
	sltu	$2,$3
	and	$4,$6
	move	$3,$24
	daddu	$4,$5,$4
	daddu	$4,$3,$4
	move	$5,$2
	dsll	$3,$4,60
	dsrl	$5,4
	or	$3,$5
	daddu	$2,$3,$2
	move	$5,$4
	sltu	$2,$3
	dsrl	$5,4
	daddu	$5,$5,$4
	move	$3,$24
	ld	$4,$L1146
	daddu	$3,$3,$5
	and	$2,$4
	and	$3,$4
	daddu	$3,$3,$2
	move	$2,$3
	dsrl	$2,32
	sll	$3,$3,0
	sll	$2,$2,0
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

	.type	__pool___popcountti2_1144, @object
__pool___popcountti2_1144:
	.align	3
$L1144:
	.dword	6148914691236517205
$L1145:
	.dword	3689348814741910323
$L1146:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1144, @object
__pend___popcountti2_1144:
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
	sw	$5,80($sp)
	lw	$2,$L1155
	lw	$3,80($sp)
	move	$28,$2
	sw	$2,32($sp)
	li	$2,1
	and	$2,$3
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	move	$17,$28
	move	$8,$4
	beqz	$2,$L1153
	ld	$2,$L1156
	lw	$16,80($sp)
	sd	$2,40($sp)
$L1150:
	lw	$2,%call16(__mips16_muldf3)($17)
	ld	$4,40($sp)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$5,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sd	$2,40($sp)
	ld	$2,72($sp)
	move	$28,$6
	move	$8,$2
$L1148:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1149
$L1151:
	lw	$2,%call16(__mips16_muldf3)($17)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$8
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$8,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L1150
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	b	$L1151
$L1149:
	lw	$2,80($sp)
	slt	$2,0
	bteqz	$L1147
	lw	$17,%call16(__mips16_divdf3)($17)
	ld	$4,$L1156
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sd	$2,40($sp)
	move	$28,$6
$L1147:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	ld	$2,40($sp)
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L1153:
	ld	$2,$L1156
	lw	$16,80($sp)
	sd	$2,40($sp)
	b	$L1148
	.type	__pool___powidf2_1155, @object
__pool___powidf2_1155:
	.align	2
$L1155:
	.word	__gnu_local_gp
	.align	3
$L1156:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_1155, @object
__pend___powidf2_1155:
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
	sw	$5,80($sp)
	lw	$2,$L1165
	lw	$3,80($sp)
	move	$28,$2
	sw	$2,32($sp)
	li	$2,1
	and	$2,$3
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	move	$17,$28
	move	$8,$4
	beqz	$2,$L1163
	lw	$2,$L1166
	lw	$16,80($sp)
	sw	$2,40($sp)
$L1160:
	lw	$2,%call16(__mips16_mulsf3)($17)
	lw	$4,40($sp)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$5,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sw	$2,40($sp)
	lw	$2,72($sp)
	move	$28,$6
	move	$8,$2
$L1158:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1159
$L1161:
	lw	$2,%call16(__mips16_mulsf3)($17)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$8
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$8,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L1160
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	b	$L1161
$L1159:
	lw	$2,80($sp)
	slt	$2,0
	bteqz	$L1157
	lw	$17,%call16(__mips16_divsf3)($17)
	lw	$4,$L1166
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sw	$2,40($sp)
	move	$28,$6
$L1157:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	.set	noreorder
	.set	nomacro
	jalr	$6
	lw	$2,40($sp)
	.set	macro
	.set	reorder

	ld	$7,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,72
	.set	macro
	.set	reorder

$L1163:
	lw	$2,$L1166
	lw	$16,80($sp)
	sw	$2,40($sp)
	b	$L1158
	.type	__pool___powisf2_1165, @object
__pool___powisf2_1165:
	.align	2
$L1165:
	.word	__gnu_local_gp
$L1166:
	.word	1065353216
	.type	__pend___powisf2_1165, @object
__pend___powisf2_1165:
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
	move	$2,$5
	dsrl	$3,32
	dsrl	$2,32
	sll	$3,$3,0
	sll	$2,$2,0
	sltu	$3,$2
	btnez	$L1171
	sltu	$2,$3
	btnez	$L1170
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1171
	sltu	$5,$4
	btnez	$L1172
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1171:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1170:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1172:
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
	move	$2,$5
	dsrl	$3,32
	dsrl	$2,32
	sll	$3,$3,0
	sll	$2,$2,0
	sltu	$3,$2
	btnez	$L1175
	sltu	$2,$3
	btnez	$L1176
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1177
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1175:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1177:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1176:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,$6
	btnez	$L1182
	sltu	$6,$4
	btnez	$L1181
	sltu	$5,$7
	btnez	$L1182
	sltu	$7,$5
	btnez	$L1183
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1182:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1181:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1183:
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
	.globl	__mips16_ledf2
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
