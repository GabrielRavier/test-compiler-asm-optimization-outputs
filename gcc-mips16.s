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
	b	$L22
$L23:
	addiu	$7,-1
	addiu	$5,1
	addiu	$4,1
	beqz	$7,$L22
$L20:
	lbu	$3,0($5)
	sb	$3,0($4)
	xor	$3,$6
	bnez	$3,$L23
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,$4,1
	.set	macro
	.set	reorder

$L22:
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
	bnez	$6,$L29
	b	$L33
$L31:
	addiu	$6,-1
	addiu	$4,1
	beqz	$6,$L32
$L29:
	lbu	$3,0($4)
	xor	$3,$5
	bnez	$3,$L31
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L32:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L33:
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
	beqz	$6,$L39
$L44:
	lbu	$2,0($4)
	lbu	$3,0($5)
	cmp	$2,$3
	btnez	$L43
	addiu	$6,-1
	addiu	$4,1
	addiu	$5,1
	bnez	$6,$L44
$L39:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L43:
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
	beqz	$6,$L51
	lw	$2,$L54
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

$L51:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_memcpy_54, @object
__pool_memcpy_54:
	.align	2
$L54:
	.word	__gnu_local_gp
	.type	__pend_memcpy_54, @object
__pend_memcpy_54:
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
$L56:
	cmp	$6,$4
	bteqz	$L59
	move	$2,$6
	lbu	$3,0($2)
	addiu	$6,-1
	xor	$3,$5
	bnez	$3,$L56
	jr	$31
$L59:
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
	beqz	$6,$L65
	lw	$2,$L68
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

$L65:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_memset_68, @object
__pool_memset_68:
	.align	2
$L68:
	.word	__gnu_local_gp
	.type	__pend_memset_68, @object
__pend_memset_68:
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
	beqz	$3,$L75
$L71:
	lb	$3,1($5)
	addiu	$5,1
	addiu	$2,1
	sb	$3,0($2)
	bnez	$3,$L71
$L75:
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
	bnez	$3,$L77
	jr	$31
$L79:
	lb	$3,1($2)
	addiu	$2,1
	beqz	$3,$L82
$L77:
	zeb	$3
	xor	$3,$5
	bnez	$3,$L79
$L82:
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
	b	$L86
$L88:
	addiu	$2,1
	beqz	$3,$L87
$L86:
	lb	$3,0($2)
	cmp	$3,$5
	btnez	$L88
	jr	$31
$L87:
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
	b	$L95
$L90:
	beqz	$3,$L91
	addiu	$4,1
	addiu	$5,1
$L95:
	lb	$3,0($4)
	lb	$2,0($5)
	cmp	$3,$2
	bteqz	$L90
	zeb	$3
$L91:
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
	beqz	$2,$L99
	move	$2,$4
$L98:
	lb	$3,1($2)
	addiu	$2,1
	bnez	$3,$L98
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$4
	.set	macro
	.set	reorder

$L99:
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
	beqz	$6,$L108
	lbu	$2,0($4)
	beqz	$2,$L110
	lbu	$3,0($5)
	addiu	$6,-1
	addu	$6,$4,$6
	beqz	$3,$L103
$L112:
	cmp	$6,$4
	bteqz	$L103
	cmp	$3,$2
	btnez	$L103
	lbu	$2,1($4)
	addiu	$4,1
	addiu	$3,$5,1
	beqz	$2,$L111
	move	$5,$3
	lbu	$3,0($5)
	bnez	$3,$L112
$L103:
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

$L111:
	lbu	$3,1($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L110:
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
	btnez	$L116
	srl	$2,$6,1
	sll	$2,$2,1
	addu	$2,$4,$2
$L115:
	lbu	$3,1($4)
	addiu	$4,2
	sb	$3,0($5)
	lbu	$3,-2($4)
	cmp	$4,$2
	sb	$3,1($5)
	addiu	$5,2
	btnez	$L115
$L116:
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
	bteqz	$L121
	li	$2,9
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L121:
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
	btnez	$L124
	li	$2,127
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L124:
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
	bteqz	$L131
	addiu	$4,-9
	sltu	$4,5
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L131:
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
	btnez	$L136
	addiu	$2,$4,-8
	addiu	$2,-119
	sltu	$2,33
	bteqz	$L138
$L136:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L138:
	addiu	$2,$4,-8232
	sltu	$2,2
	btnez	$L137
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

$L137:
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
	btnez	$L148
	sltu	$4,8232
	btnez	$L145
	addiu	$3,$4,-8234
	li	$2,47062
	sltu	$3,$2
	btnez	$L145
	li	$2,57344
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$2,8185
	btnez	$L145
	li	$2,65532
	lw	$3,$L150
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$3,$2
	btnez	$L146
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

$L145:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L148:
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

$L146:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.type	__pool_iswprint_149, @object
__pool_iswprint_149:
	.align	2
$L149:
	.word	__gnu_local_gp
$L150:
	.word	1048579
	.type	__pend_iswprint_149, @object
__pend_iswprint_149:
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
	btnez	$L153
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

$L153:
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
	lw	$2,$L165
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
	bnez	$2,$L158
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
	bnez	$2,$L159
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
	bteqz	$L164
	ld	$2,$L166
$L155:
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

$L164:
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
	b	$L155
$L158:
	move	$2,$16
	b	$L155
$L159:
	ld	$2,72($sp)
	b	$L155
	.type	__pool_fdim_165, @object
__pool_fdim_165:
	.align	2
$L165:
	.word	__gnu_local_gp
	.align	3
$L166:
	.word	0
	.word	0
	.type	__pend_fdim_165, @object
__pend_fdim_165:
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
	lw	$2,$L177
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
	bnez	$2,$L170
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
	bnez	$2,$L171
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
	bteqz	$L176
	lw	$2,$L178
$L167:
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

$L176:
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
	b	$L167
$L170:
	move	$2,$16
	b	$L167
$L171:
	lw	$2,72($sp)
	b	$L167
	.type	__pool_fdimf_177, @object
__pool_fdimf_177:
	.align	2
$L177:
	.word	__gnu_local_gp
$L178:
	.word	0
	.type	__pend_fdimf_177, @object
__pend_fdimf_177:
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
	lw	$2,$L192
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
	bnez	$2,$L187
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
	bnez	$2,$L186
	move	$2,$17
	dsrl	$2,63
	move	$3,$2
	move	$2,$16
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L191
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
	btnez	$L187
	move	$16,$17
$L187:
	move	$2,$16
$L179:
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

$L191:
	bnez	$3,$L187
$L186:
	move	$2,$17
	b	$L179
	.type	__pool_fmax_192, @object
__pool_fmax_192:
	.align	2
$L192:
	.word	__gnu_local_gp
	.type	__pend_fmax_192, @object
__pend_fmax_192:
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
	lw	$2,$L206
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
	bnez	$2,$L201
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
	bnez	$2,$L200
	lw	$2,$L207
	move	$3,$2
	and	$3,$17
	and	$2,$16
	xor	$2,$3
	bnez	$2,$L205
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
	btnez	$L201
	move	$16,$17
$L201:
	move	$2,$16
$L193:
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

$L205:
	bnez	$3,$L201
$L200:
	move	$2,$17
	b	$L193
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
	lw	$2,$L221
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
	bnez	$2,$L220
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
	btnez	$L216
	move	$16,$17
$L216:
	move	$2,$16
$L208:
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

$L220:
	bnez	$3,$L216
$L215:
	move	$2,$17
	b	$L208
	.type	__pool_fmaxl_221, @object
__pool_fmaxl_221:
	.align	2
$L221:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_221, @object
__pend_fmaxl_221:
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
	lw	$2,$L235
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
	bnez	$2,$L228
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
	bnez	$2,$L230
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	move	$2,$17
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L234
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
	btnez	$L230
	move	$16,$17
$L230:
	move	$2,$16
$L222:
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

$L234:
	bnez	$3,$L230
$L228:
	move	$2,$17
	b	$L222
	.type	__pool_fmin_235, @object
__pool_fmin_235:
	.align	2
$L235:
	.word	__gnu_local_gp
	.type	__pend_fmin_235, @object
__pend_fmin_235:
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
	lw	$2,$L249
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
	bnez	$2,$L242
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
	bnez	$2,$L244
	lw	$2,$L250
	move	$3,$2
	and	$3,$16
	and	$2,$17
	xor	$2,$3
	bnez	$2,$L248
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
	btnez	$L244
	move	$16,$17
$L244:
	move	$2,$16
$L236:
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

$L248:
	bnez	$3,$L244
$L242:
	move	$2,$17
	b	$L236
	.type	__pool_fminf_249, @object
__pool_fminf_249:
	.align	2
$L249:
	.word	__gnu_local_gp
$L250:
	.word	-2147483648
	.type	__pend_fminf_249, @object
__pend_fminf_249:
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
	lw	$2,$L264
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
	bnez	$2,$L257
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
	bnez	$2,$L259
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	move	$2,$17
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L263
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
	btnez	$L259
	move	$16,$17
$L259:
	move	$2,$16
$L251:
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

$L263:
	bnez	$3,$L259
$L257:
	move	$2,$17
	b	$L251
	.type	__pool_fminl_264, @object
__pool_fminl_264:
	.align	2
$L264:
	.word	__gnu_local_gp
	.type	__pend_fminl_264, @object
__pend_fminl_264:
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
	lw	$3,$L269
	beqz	$4,$L266
	lw	$5,$L270
$L267:
	li	$2,63
	and	$2,$4
	addu	$2,$5,$2
	lbu	$2,0($2)
	srl	$4,$4,6
	sb	$2,0($3)
	addiu	$3,1
	bnez	$4,$L267
$L266:
	li	$2,0
	sb	$2,0($3)
	lw	$2,$L269
	jr	$31
	.type	__pool_l64a_269, @object
__pool_l64a_269:
	.align	2
$L269:
	.word	s.0
$L270:
	.word	digits
	.type	__pend_l64a_269, @object
__pend_l64a_269:
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
	lw	$2,$L272
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.type	__pool_srand_272, @object
__pool_srand_272:
	.align	2
$L272:
	.word	seed
	.type	__pend_srand_272, @object
__pend_srand_272:
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
	lw	$3,$L275
	ld	$2,$L276
	ld	$4,0($3)
	dmult	$4,$2
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_275, @object
__pool_rand_275:
	.align	2
$L275:
	.word	seed
	.align	3
$L276:
	.dword	6364136223846793005
	.type	__pend_rand_275, @object
__pend_rand_275:
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
	beqz	$5,$L283
	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$2,0($4)
	beqz	$2,$L284
	sw	$4,4($2)
$L284:
	jr	$31
$L283:
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
	beqz	$2,$L286
	lw	$3,4($4)
	sw	$3,4($2)
$L286:
	lw	$3,4($4)
	beqz	$3,$L294
	sw	$2,0($3)
$L294:
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
	lw	$2,$L311
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
	beqz	$2,$L296
	move	$17,$5
	li	$16,0
	b	$L298
$L310:
	lw	$2,96($sp)
	addiu	$16,1
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
	bteqz	$L296
$L298:
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
	bnez	$2,$L310
$L295:
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

$L296:
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
	beqz	$3,$L295
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

	.type	__pool_lsearch_311, @object
__pool_lsearch_311:
	.align	2
$L311:
	.word	__gnu_local_gp
	.type	__pend_lsearch_311, @object
__pend_lsearch_311:
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
	beqz	$2,$L313
	move	$17,$5
	li	$16,0
	b	$L315
$L323:
	lw	$2,96($sp)
	addiu	$16,1
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
	bteqz	$L313
$L315:
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

	bnez	$2,$L323
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

$L313:
	ld	$7,64($sp)
	li	$2,0
	sw	$2,40($sp)
	lw	$2,40($sp)
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
	slt	$4,0
	move	$2,$4
	btnez	$L326
	jr	$31
$L326:
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
$L334:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L328
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L328
	cmpi	$3,43
	bteqz	$L329
	cmpi	$3,45
	bteqz	$L330
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L346
	move	$5,$4
	li	$7,0
$L332:
	li	$2,0
$L336:
	sll	$4,$2,2
	addu	$4,$4,$2
	sll	$4,$4,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L336
	bnez	$7,$L347
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L328:
	addiu	$4,1
	b	$L334
$L330:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L339
	li	$7,1
	b	$L332
$L339:
	li	$2,0
$L347:
	jr	$31
$L329:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L332
$L346:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
$L353:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L349
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L349
	cmpi	$3,43
	bteqz	$L350
	cmpi	$3,45
	bteqz	$L351
	addiu	$3,-48
	sltu	$3,10
	move	$5,$4
	bteqz	$L368
$L367:
	li	$7,0
$L354:
	li	$2,0
$L357:
	sll	$4,$2,2
	addu	$4,$4,$2
	sll	$4,$4,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L357
	bnez	$7,$L369
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L349:
	addiu	$4,1
	b	$L353
$L351:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,1
	btnez	$L354
$L368:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L350:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	btnez	$L367
	li	$2,0
$L369:
	jr	$31
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
$L377:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L371
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L371
	cmpi	$3,43
	bteqz	$L372
	cmpi	$3,45
	bteqz	$L373
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L389
	move	$5,$4
	li	$7,0
$L375:
	li	$2,0
$L379:
	addiu	$5,1
	move	$6,$3
	lb	$3,0($5)
	dsll	$4,$2,2
	daddu	$4,$4,$2
	addiu	$3,-48
	dsll	$4,$4,1
	sltu	$3,10
	dsubu	$2,$4,$6
	btnez	$L379
	bnez	$7,$L390
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$6,$4
	.set	macro
	.set	reorder

$L371:
	addiu	$4,1
	b	$L377
$L373:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L382
	li	$7,1
	b	$L375
$L382:
	li	$2,0
$L390:
	jr	$31
$L372:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L375
$L389:
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
	beqz	$6,$L392
	move	$16,$6
$L395:
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
	btnez	$L396
	beqz	$2,$L391
	lw	$2,40($sp)
	lw	$3,96($sp)
	addiu	$16,-1
	addu	$2,$2,$3
	subu	$16,$16,$17
	sw	$2,80($sp)
	bnez	$16,$L395
$L392:
	li	$2,0
	sw	$2,40($sp)
$L391:
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

$L396:
	move	$16,$17
	bnez	$16,$L395
	b	$L392
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
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	sw	$4,72($sp)
	sw	$5,80($sp)
	sw	$7,96($sp)
	move	$17,$6
	beqz	$6,$L408
$L405:
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

	beqz	$2,$L404
	slt	$2,1
	btnez	$L409
	lw	$2,96($sp)
	addiu	$17,-1
	addu	$2,$16,$2
	sra	$17,$17,1
	sw	$2,80($sp)
	bnez	$17,$L405
$L408:
	li	$16,0
$L404:
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

$L409:
	lw	$17,40($sp)
	bnez	$17,$L405
	b	$L408
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
	btnez	$L418
	jr	$31
$L418:
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
	btnez	$L422
	jr	$31
$L422:
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
	btnez	$L426
	jr	$31
$L426:
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
	beqz	$3,$L433
$L429:
	xor	$3,$5
	beqz	$3,$L434
	lw	$3,4($4)
	addiu	$4,4
	bnez	$3,$L429
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L434:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L433:
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
	b	$L441
$L442:
	beqz	$2,$L437
	addiu	$4,4
	addiu	$5,4
$L441:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	bteqz	$L442
$L437:
	slt	$2,$3
	btnez	$L440
	slt	$3,$2
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L440:
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
$L444:
	lw	$6,0($5)
	addiu	$3,4
	sw	$6,-4($3)
	addiu	$5,4
	bnez	$6,$L444
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
	beqz	$2,$L448
	move	$2,$4
$L447:
	lw	$3,4($2)
	addiu	$2,4
	bnez	$3,$L447
	subu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$2,2
	.set	macro
	.set	reorder

$L448:
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
	beqz	$6,$L455
$L458:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	btnez	$L452
	beqz	$2,$L452
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L458
$L455:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L452:
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$2
	btnez	$L459
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L459:
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
	bnez	$6,$L461
	b	$L465
$L463:
	addiu	$6,-1
	addiu	$4,4
	beqz	$6,$L464
$L461:
	lw	$2,0($4)
	cmp	$2,$5
	btnez	$L463
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L464:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L465:
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
	beqz	$6,$L472
$L477:
	lw	$3,0($4)
	lw	$2,0($5)
	cmp	$3,$2
	btnez	$L476
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L477
$L472:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L476:
	slt	$3,$2
	btnez	$L478
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L478:
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
	beqz	$6,$L485
	lw	$2,$L488
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

$L485:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_wmemcpy_488, @object
__pool_wmemcpy_488:
	.align	2
$L488:
	.word	__gnu_local_gp
	.type	__pend_wmemcpy_488, @object
__pend_wmemcpy_488:
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
	bteqz	$L504
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	subu	$17,$4,$5
	move	$16,$4
	sll	$4,$6,2
	sltu	$17,$4
	move	$7,$5
	addiu	$3,$6,-1
	bteqz	$L503
	beqz	$6,$L496
	sll	$3,$3,2
$L494:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	addiu	$3,-4
	sw	$6,0($4)
	addiu	$4,$3,4
	bnez	$4,$L494
$L496:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L503:
	beqz	$6,$L496
$L492:
	lw	$4,0($7)
	addiu	$3,-1
	sw	$4,0($16)
	addiu	$4,$3,1
	addiu	$16,4
	addiu	$7,4
	bnez	$4,$L492
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L504:
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
	beqz	$6,$L511
	move	$6,$4
$L507:
	addiu	$3,-1
	addiu	$7,$3,1
	sw	$5,0($6)
	addiu	$6,4
	bnez	$7,$L507
$L511:
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
	bteqz	$L513
	addu	$2,$4,$6
	addu	$5,$5,$6
	beqz	$6,$L523
$L515:
	addiu	$2,-1
	lb	$3,0($2)
	cmp	$4,$2
	addiu	$5,-1
	sb	$3,0($5)
	btnez	$L515
	jr	$31
$L513:
	cmp	$4,$5
	bteqz	$L523
	beqz	$6,$L523
	addu	$6,$4,$6
$L516:
	lb	$2,0($4)
	addiu	$4,1
	cmp	$4,$6
	sb	$2,0($5)
	addiu	$5,1
	btnez	$L516
$L523:
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
	lw	$3,$L538
	sll	$4,$4,8
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_bswap_32_538, @object
__pool_bswap_32_538:
	.align	2
$L538:
	.word	16711680
	.type	__pend_bswap_32_538, @object
__pend_bswap_32_538:
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
	ld	$5,$L541
	move	$2,$4
	dsrl	$2,24
	and	$2,$5
	or	$3,$2
	ld	$5,$L542
	move	$2,$4
	dsrl	$2,8
	and	$2,$5
	ld	$5,$L543
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$5,$L544
	or	$3,$2
	dsll	$2,$4,24
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L545
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_541, @object
__pool_bswap_64_541:
	.align	3
$L541:
	.dword	16711680
$L542:
	.dword	4278190080
$L543:
	.dword	1095216660480
$L544:
	.dword	280375465082880
$L545:
	.dword	71776119061217280
	.type	__pend_bswap_64_541, @object
__pend_bswap_64_541:
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
	b	$L549
$L551:
	cmpi	$2,32
	bteqz	$L550
$L549:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	addiu	$2,1
	beqz	$3,$L551
	jr	$31
$L550:
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
	beqz	$4,$L555
	li	$2,1
	and	$2,$4
	bnez	$2,$L557
	li	$2,1
$L554:
	sra	$4,$4,1
	li	$3,1
	and	$3,$4
	addiu	$2,1
	beqz	$3,$L554
	jr	$31
$L555:
	li	$2,0
$L557:
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
	lw	$2,$L564
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$5,$L565
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
	btnez	$L562
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$5,$L566
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

$L562:
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

	.type	__pool_gl_isinff_564, @object
__pool_gl_isinff_564:
	.align	2
$L564:
	.word	__gnu_local_gp
$L565:
	.word	-8388609
$L566:
	.word	2139095039
	.type	__pend_gl_isinff_564, @object
__pend_gl_isinff_564:
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
	lw	$2,$L572
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L573
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
	btnez	$L570
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L574
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

$L570:
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

	.type	__pool_gl_isinfd_572, @object
__pool_gl_isinfd_572:
	.align	2
$L572:
	.word	__gnu_local_gp
	.align	3
$L573:
	.word	-1048577
	.word	-1
$L574:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_572, @object
__pend_gl_isinfd_572:
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
	lw	$2,$L580
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L581
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
	btnez	$L578
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L582
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

$L578:
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

	.type	__pool_gl_isinfl_580, @object
__pool_gl_isinfl_580:
	.align	2
$L580:
	.word	__gnu_local_gp
	.align	3
$L581:
	.word	-1048577
	.word	-1
$L582:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_580, @object
__pend_gl_isinfl_580:
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
	lw	$2,$L585
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

	.type	__pool__Qp_itoq_585, @object
__pool__Qp_itoq_585:
	.align	2
$L585:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_585, @object
__pend__Qp_itoq_585:
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
	lw	$2,$L604
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
	bnez	$2,$L587
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
	beqz	$2,$L587
	slt	$16,0
	btnez	$L602
	lw	$5,$L605
$L589:
	li	$2,1
	and	$2,$16
	beqz	$2,$L590
$L591:
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
$L590:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L587
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
	bnez	$2,$L591
$L603:
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
	bnez	$2,$L591
	b	$L603
$L587:
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

$L602:
	lw	$5,$L606
	b	$L589
	.type	__pool_ldexpf_604, @object
__pool_ldexpf_604:
	.align	2
$L604:
	.word	__gnu_local_gp
$L605:
	.word	1073741824
$L606:
	.word	1056964608
	.type	__pend_ldexpf_604, @object
__pend_ldexpf_604:
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
	lw	$2,$L625
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
	bnez	$2,$L608
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
	beqz	$2,$L608
	slt	$16,0
	btnez	$L623
	ld	$5,$L626
$L610:
	li	$2,1
	and	$2,$16
	beqz	$2,$L611
$L612:
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
$L611:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L608
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
	bnez	$2,$L612
$L624:
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
	bnez	$2,$L612
	b	$L624
$L608:
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

$L623:
	ld	$5,$L627
	b	$L610
	.type	__pool_ldexp_625, @object
__pool_ldexp_625:
	.align	2
$L625:
	.word	__gnu_local_gp
	.align	3
$L626:
	.word	1073741824
	.word	0
$L627:
	.word	1071644672
	.word	0
	.type	__pend_ldexp_625, @object
__pend_ldexp_625:
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
	lw	$2,$L646
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
	bnez	$2,$L629
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
	beqz	$2,$L629
	slt	$16,0
	btnez	$L644
	ld	$5,$L647
$L631:
	li	$2,1
	and	$2,$16
	beqz	$2,$L632
$L633:
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
$L632:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L629
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
	bnez	$2,$L633
$L645:
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
	bnez	$2,$L633
	b	$L645
$L629:
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

$L644:
	ld	$5,$L648
	b	$L631
	.type	__pool_ldexpl_646, @object
__pool_ldexpl_646:
	.align	2
$L646:
	.word	__gnu_local_gp
	.align	3
$L647:
	.word	1073741824
	.word	0
$L648:
	.word	1071644672
	.word	0
	.type	__pend_ldexpl_646, @object
__pend_ldexpl_646:
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
	beqz	$6,$L659
	addiu	$sp,-8
	move	$3,$4
	sd	$16,0($sp)
	addu	$16,$5,$6
$L651:
	lbu	$7,0($3)
	lbu	$6,0($5)
	addiu	$5,1
	xor	$7,$6
	cmp	$5,$16
	sb	$7,0($3)
	addiu	$3,1
	btnez	$L651
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L659:
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
	beqz	$3,$L667
	move	$3,$4
$L662:
	lb	$7,1($3)
	addiu	$3,1
	bnez	$7,$L662
$L671:
	beqz	$6,$L664
$L673:
	lb	$7,0($5)
	sb	$7,0($3)
	beqz	$7,$L674
	addiu	$6,-1
	addiu	$5,1
	addiu	$3,1
	bnez	$6,$L673
$L664:
	li	$4,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sb	$4,0($3)
	.set	macro
	.set	reorder

$L674:
	jr	$31
$L667:
	move	$3,$4
	b	$L671
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
	beqz	$5,$L683
$L676:
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L682
	jr	$31
$L682:
	addiu	$2,1
	cmp	$5,$2
	btnez	$L676
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$5
	.set	macro
	.set	reorder

$L683:
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
	beqz	$7,$L691
$L686:
	move	$6,$5
$L689:
	lb	$3,0($6)
	beqz	$3,$L692
	xor	$3,$7
	addiu	$6,1
	bnez	$3,$L689
	jr	$31
$L692:
	lb	$7,1($2)
	addiu	$2,1
	bnez	$7,$L686
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L691:
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
$L695:
	lb	$3,0($4)
	cmp	$5,$3
	bteqz	$L696
	addiu	$4,1
	bnez	$3,$L695
	jr	$31
$L696:
	move	$2,$4
	addiu	$4,1
	bnez	$3,$L695
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
	lb	$17,0($5)
	beqz	$17,$L708
	move	$8,$5
$L699:
	lb	$3,1($5)
	addiu	$5,1
	bnez	$3,$L699
	move	$2,$8
	subu	$5,$5,$2
	bnez	$5,$L705
	b	$L708
$L717:
	addiu	$4,1
	beqz	$3,$L716
$L705:
	lb	$3,0($4)
	cmp	$3,$17
	btnez	$L717
	addiu	$16,$5,-1
	zeb	$3
	addu	$16,$4,$16
	move	$2,$8
	move	$7,$4
$L701:
	lbu	$6,0($2)
	beqz	$6,$L702
	cmp	$7,$16
	bteqz	$L702
	xor	$6,$3
	bnez	$6,$L702
	lbu	$3,1($7)
	addiu	$7,1
	addiu	$2,1
	bnez	$3,$L701
$L702:
	lbu	$2,0($2)
	xor	$2,$3
	beqz	$2,$L708
	addiu	$4,1
	b	$L705
$L716:
	ld	$17,8($sp)
	ld	$16,0($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L708:
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
	lw	$2,$L730
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L731
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
	btnez	$L729
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L731
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L722
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L731
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L721
$L722:
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

$L729:
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L731
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L722
$L721:
	ld	$2,$L732
	xor	$16,$2
	b	$L722
	.type	__pool_copysign_730, @object
__pool_copysign_730:
	.align	2
$L730:
	.word	__gnu_local_gp
	.align	3
$L731:
	.word	0
	.word	0
$L732:
	.dword	-9223372036854775808
	.type	__pend_copysign_730, @object
__pend_copysign_730:
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
	beqz	$7,$L739
	sltu	$5,$7
	btnez	$L741
	subu	$5,$5,$7
	move	$9,$6
	addu	$6,$4,$5
	sltu	$6,$4
	btnez	$L741
	move	$2,$9
	lb	$2,0($2)
	move	$8,$7
	move	$10,$2
	b	$L744
$L751:
	sltu	$6,$4
	btnez	$L750
$L744:
	lb	$3,0($4)
	move	$5,$10
	xor	$3,$5
	move	$2,$4
	addiu	$4,1
	bnez	$3,$L751
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
$L745:
	move	$3,$9
	addiu	$16,$3,1
	move	$3,$8
	addiu	$7,$3,-1
	beqz	$7,$L733
	move	$5,$4
	b	$L736
$L737:
	addiu	$5,1
	addu	$3,$4,$7
	xor	$3,$5
	addiu	$16,1
	beqz	$3,$L733
$L736:
	lbu	$3,0($5)
	lbu	$17,0($16)
	xor	$3,$17
	beqz	$3,$L737
$L735:
	sltu	$6,$4
	btnez	$L752
	lb	$3,0($4)
	move	$5,$10
	xor	$3,$5
	move	$2,$4
	addiu	$4,1
	bnez	$3,$L735
	b	$L745
$L739:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L752:
	li	$2,0
$L733:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L750:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L741:
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
	lw	$2,$L759
	move	$28,$2
	sd	$16,40($sp)
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$16,$6
	beqz	$6,$L754
	move	$2,$28
	lw	$2,%call16(memmove)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L754:
	ld	$7,48($sp)
	addu	$2,$4,$16
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_759, @object
__pool_mempcpy_759:
	.align	2
$L759:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_759, @object
__pend_mempcpy_759:
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
	lw	$2,$L784
	addiu	$sp,-80
	move	$28,$2
	sd	$16,56($sp)
	move	$16,$28
	sw	$2,32($sp)
	sw	$5,88($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L785
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
	btnez	$L781
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L786
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L782
	li	$2,0
	sw	$2,48($sp)
$L763:
	li	$2,0
	sw	$2,40($sp)
$L769:
	lw	$2,40($sp)
	ld	$5,$L787
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
	ld	$5,$L786
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
	bteqz	$L769
$L770:
	lw	$2,88($sp)
	lw	$3,40($sp)
	sw	$3,0($2)
	lw	$2,48($sp)
	beqz	$2,$L776
	ld	$2,$L788
	xor	$2,$17
$L760:
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

$L782:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L787
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L766
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L785
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L775
$L766:
	lw	$3,88($sp)
	li	$2,0
	sw	$2,0($3)
	move	$2,$17
	b	$L760
$L781:
	ld	$2,$L788
	ld	$5,$L789
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
	bteqz	$L783
	li	$2,1
	ld	$17,40($sp)
	sw	$2,48($sp)
	b	$L763
$L776:
	move	$2,$17
	b	$L760
$L783:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L790
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L766
	li	$2,1
	sw	$2,48($sp)
$L764:
	li	$2,0
	ld	$17,40($sp)
	sw	$2,40($sp)
$L771:
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
	ld	$5,$L787
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
	btnez	$L771
	b	$L770
$L775:
	li	$2,0
	sd	$17,40($sp)
	sw	$2,48($sp)
	b	$L764
	.type	__pool_frexp_784, @object
__pool_frexp_784:
	.align	2
$L784:
	.word	__gnu_local_gp
	.align	3
$L785:
	.word	0
	.word	0
$L786:
	.word	1072693248
	.word	0
$L787:
	.word	1071644672
	.word	0
$L788:
	.dword	-9223372036854775808
$L789:
	.word	-1074790400
	.word	0
$L790:
	.word	-1075838976
	.word	0
	.type	__pend_frexp_784, @object
__pend_frexp_784:
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
	beqz	$4,$L795
$L793:
	dsll	$3,$4,63
	dsra	$3,63
	and	$3,$5
	dsrl	$4,1
	daddu	$2,$2,$3
	dsll	$5,$5,1
	bnez	$4,$L793
	jr	$31
$L795:
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
$L798:
	slt	$5,0
	btnez	$L799
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L800
	addiu	$2,-1
	bnez	$2,$L798
	bnez	$6,$L812
$L813:
	jr	$31
$L800:
	beqz	$3,$L807
$L799:
	li	$2,0
$L804:
	sltu	$4,$5
	btnez	$L803
	subu	$4,$4,$5
	or	$2,$3
$L803:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L804
	beqz	$6,$L813
$L812:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L807:
	li	$2,0
	beqz	$6,$L813
	b	$L812
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
	bteqz	$L816
	addiu	$sp,-48
	lw	$2,$L821
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

$L816:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

	.type	__pool___clrsbqi2_821, @object
__pool___clrsbqi2_821:
	.align	2
$L821:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_821, @object
__pend___clrsbqi2_821:
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
	beqz	$4,$L824
	lw	$2,$L829
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

$L824:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,63
	.set	macro
	.set	reorder

	.type	__pool___clrsbdi2_829, @object
__pool___clrsbdi2_829:
	.align	2
$L829:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_829, @object
__pend___clrsbdi2_829:
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
	beqz	$4,$L834
$L832:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	sll	$5,$5,1
	bnez	$4,$L832
	jr	$31
$L834:
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
	btnez	$L840
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L846
$L840:
	beqz	$7,$L839
	sll	$7,$7,3
	move	$2,$5
	move	$3,$4
	addu	$7,$7,$5
$L843:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$7
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L843
$L839:
	sltu	$16,$6
	bteqz	$L836
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L844:
	lb	$3,0($2)
	addiu	$2,1
	cmp	$2,$5
	sb	$3,0($4)
	addiu	$4,1
	btnez	$L844
$L836:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L846:
	addiu	$2,$6,-1
	beqz	$6,$L836
$L841:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L841
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
	btnez	$L851
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L860
$L851:
	beqz	$16,$L850
	sll	$16,$16,1
	move	$2,$5
	move	$3,$4
	addu	$16,$16,$5
$L854:
	lh	$7,0($2)
	addiu	$2,2
	cmp	$2,$16
	sh	$7,0($3)
	addiu	$3,2
	btnez	$L854
$L850:
	li	$2,1
	and	$2,$6
	beqz	$2,$L847
	addu	$5,$5,$6
	lb	$2,-1($5)
	addu	$4,$4,$6
	sb	$2,-1($4)
$L847:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L860:
	addiu	$2,$6,-1
	beqz	$6,$L847
$L852:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L852
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
	btnez	$L865
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L871
$L865:
	beqz	$7,$L864
	sll	$7,$7,2
	move	$2,$5
	move	$3,$4
	addu	$7,$7,$5
$L868:
	lw	$17,0($2)
	addiu	$2,4
	cmp	$2,$7
	sw	$17,0($3)
	addiu	$3,4
	btnez	$L868
$L864:
	sltu	$16,$6
	bteqz	$L861
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L869:
	lb	$3,0($2)
	addiu	$2,1
	cmp	$2,$5
	sb	$3,0($4)
	addiu	$4,1
	btnez	$L869
$L861:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L871:
	addiu	$2,$6,-1
	beqz	$6,$L861
$L866:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L866
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
	lw	$2,$L875
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

	.type	__pool___uitod_875, @object
__pool___uitod_875:
	.align	2
$L875:
	.word	__gnu_local_gp
	.type	__pend___uitod_875, @object
__pend___uitod_875:
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
	lw	$2,$L878
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

	.type	__pool___uitof_878, @object
__pool___uitof_878:
	.align	2
$L878:
	.word	__gnu_local_gp
	.type	__pend___uitof_878, @object
__pend___uitof_878:
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
	lw	$2,$L881
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

	.type	__pool___ulltod_881, @object
__pool___ulltod_881:
	.align	2
$L881:
	.word	__gnu_local_gp
	.type	__pend___ulltod_881, @object
__pend___ulltod_881:
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
	lw	$2,$L884
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

	.type	__pool___ulltof_884, @object
__pool___ulltof_884:
	.align	2
$L884:
	.word	__gnu_local_gp
	.type	__pend___ulltof_884, @object
__pend___ulltof_884:
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
	sra	$3,$4,8
	sra	$2,$3,7
	bnez	$2,$L889
	sra	$2,$3,6
	bnez	$2,$L906
	sra	$2,$3,5
	bnez	$2,$L890
	sra	$2,$3,4
	bnez	$2,$L891
	sra	$2,$3,3
	bnez	$2,$L892
	sra	$2,$3,2
	bnez	$2,$L893
	sra	$2,$3,1
	bnez	$2,$L894
	bnez	$3,$L895
	sra	$2,$4,7
	bnez	$2,$L896
	sra	$2,$4,6
	bnez	$2,$L897
	sra	$2,$4,5
	bnez	$2,$L898
	sra	$2,$4,4
	bnez	$2,$L899
	sra	$2,$4,3
	bnez	$2,$L900
	sra	$2,$4,2
	bnez	$2,$L901
	sra	$2,$4,1
	bnez	$2,$L902
	li	$2,16
	bnez	$4,$L905
$L906:
	jr	$31
$L889:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L900:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L905:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L890:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L891:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L892:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L893:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L894:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L895:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L896:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L897:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L898:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L899:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L901:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L902:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,14
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,1
	and	$2,$4
	bnez	$2,$L910
	li	$2,2
	and	$2,$4
	bnez	$2,$L911
	li	$2,4
	and	$2,$4
	bnez	$2,$L912
	li	$2,8
	and	$2,$4
	bnez	$2,$L913
	li	$2,16
	and	$2,$4
	bnez	$2,$L914
	li	$2,32
	and	$2,$4
	bnez	$2,$L915
	li	$2,64
	and	$2,$4
	bnez	$2,$L916
	li	$2,128
	and	$2,$4
	bnez	$2,$L917
	li	$2,255
	addiu	$2,1
	and	$2,$4
	bnez	$2,$L918
	li	$2,512
	and	$2,$4
	bnez	$2,$L919
	li	$2,1024
	and	$2,$4
	bnez	$2,$L920
	li	$2,2048
	and	$2,$4
	bnez	$2,$L921
	li	$2,4096
	and	$2,$4
	bnez	$2,$L922
	li	$2,8192
	and	$2,$4
	bnez	$2,$L923
	li	$2,16384
	and	$2,$4
	bnez	$2,$L924
	srl	$4,$4,8
	srl	$4,$4,7
	li	$2,16
	bnez	$4,$L927
	jr	$31
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
	li	$2,1
	.set	macro
	.set	reorder

$L922:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L927:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L912:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L913:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L914:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L915:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L916:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L917:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L918:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L919:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L920:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L921:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L923:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L924:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,14
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
	.frame	$sp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	lw	$2,$L936
	addiu	$sp,-64
	move	$28,$2
	sd	$16,40($sp)
	move	$16,$28
	sw	$2,32($sp)
	lw	$5,$L937
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
	bteqz	$L935
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

$L935:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L937
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

	.type	__pool___fixunssfsi_936, @object
__pool___fixunssfsi_936:
	.align	2
$L936:
	.word	__gnu_local_gp
$L937:
	.word	1191182336
	.type	__pend___fixunssfsi_936, @object
__pend___fixunssfsi_936:
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
	li	$5,1
	sra	$3,$4,1
	li	$2,1
	and	$2,$4
	and	$3,$5
	addu	$3,$3,$2
	sra	$2,$4,2
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,3
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,4
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,5
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,6
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,7
	and	$2,$5
	sra	$4,$4,8
	addu	$3,$3,$2
	move	$2,$4
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,1
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,2
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,3
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,4
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,5
	and	$2,$5
	addu	$3,$3,$2
	sra	$2,$4,6
	and	$2,$5
	addu	$2,$3,$2
	sra	$4,$4,7
	addu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$5
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
	li	$2,1
	sra	$3,$4,1
	li	$5,1
	and	$5,$4
	and	$3,$2
	addu	$3,$3,$5
	sra	$5,$4,2
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,3
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,4
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,5
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,6
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,7
	and	$5,$2
	sra	$4,$4,8
	addu	$3,$3,$5
	move	$5,$4
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,1
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,2
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,3
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,4
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,5
	and	$5,$2
	addu	$3,$3,$5
	sra	$5,$4,6
	and	$2,$5
	addu	$2,$3,$2
	sra	$4,$4,7
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$4
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,0
	beqz	$4,$L944
$L942:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	sll	$5,$5,1
	bnez	$4,$L942
	jr	$31
$L944:
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
	beqz	$4,$L951
	beqz	$5,$L951
$L948:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	srl	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L948
	jr	$31
$L951:
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
	bteqz	$L955
	li	$2,32
	li	$3,1
$L954:
	slt	$5,0
	btnez	$L955
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L956
	addiu	$2,-1
	bnez	$2,$L954
	bnez	$6,$L968
$L969:
	jr	$31
$L956:
	beqz	$3,$L963
$L955:
	li	$2,0
$L960:
	sltu	$4,$5
	btnez	$L959
	subu	$4,$4,$5
	or	$2,$3
$L959:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L960
	beqz	$6,$L969
$L968:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L963:
	li	$2,0
	beqz	$6,$L969
	b	$L968
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
	lw	$2,$L975
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
	btnez	$L973
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

$L973:
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

	.type	__pool___mspabi_cmpf_975, @object
__pool___mspabi_cmpf_975:
	.align	2
$L975:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_975, @object
__pend___mspabi_cmpf_975:
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
	lw	$2,$L981
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
	btnez	$L979
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

$L979:
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

	.type	__pool___mspabi_cmpd_981, @object
__pool___mspabi_cmpd_981:
	.align	2
$L981:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_981, @object
__pend___mspabi_cmpd_981:
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
	btnez	$L997
	beqz	$5,$L990
	li	$7,0
$L986:
	li	$6,32
	li	$2,0
	b	$L989
$L998:
	addiu	$6,-1
	zeb	$6
	beqz	$6,$L988
$L989:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	sra	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L998
$L988:
	beqz	$7,$L999
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L990:
	li	$2,0
$L999:
	jr	$31
$L997:
	neg	$5,$5
	li	$7,1
	b	$L986
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
	btnez	$L1016
	li	$7,0
$L1001:
	slt	$5,0
	bteqz	$L1002
	li	$2,1
	neg	$5,$5
	xor	$7,$2
$L1002:
	sltu	$5,$4
	move	$6,$4
	li	$3,1
	bteqz	$L1004
	li	$2,32
	li	$3,1
	b	$L1003
$L1006:
	addiu	$2,-1
	beqz	$2,$L1007
$L1003:
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	btnez	$L1006
$L1007:
	li	$2,0
	beqz	$3,$L1005
$L1004:
	li	$2,0
$L1009:
	sltu	$6,$5
	btnez	$L1008
	subu	$6,$6,$5
	or	$2,$3
$L1008:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1009
$L1005:
	beqz	$7,$L1017
	neg	$2,$2
$L1017:
	jr	$31
$L1016:
	neg	$4,$4
	li	$7,1
	b	$L1001
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
	btnez	$L1034
	li	$7,0
$L1019:
	slt	$5,0
	move	$2,$4
	bteqz	$L1020
	neg	$5,$5
$L1020:
	sltu	$5,$4
	li	$3,1
	bteqz	$L1027
	li	$6,32
	li	$3,1
	b	$L1021
$L1024:
	addiu	$6,-1
	beqz	$6,$L1025
$L1021:
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	btnez	$L1024
$L1025:
	beqz	$3,$L1035
$L1027:
	sltu	$2,$5
	btnez	$L1026
	subu	$2,$2,$5
$L1026:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1027
$L1023:
	beqz	$7,$L1036
	neg	$2,$2
$L1036:
	jr	$31
$L1034:
	neg	$4,$4
	li	$7,1
	b	$L1019
$L1035:
	move	$2,$4
	b	$L1023
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.set	mips16
	.set	nomicromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	sltu	$5,$4
	move	$2,$4
	bteqz	$L1157
	srl	$3,$5,8
	srl	$3,$3,7
	bnez	$3,$L1040
	sll	$3,$5,1
	zeh	$3
	addiu	$sp,-16
	sltu	$3,$4
	sd	$17,8($sp)
	sd	$16,0($sp)
	bteqz	$L1041
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1042
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$2
	bteqz	$L1043
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1044
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$2
	bteqz	$L1045
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1046
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$2
	bteqz	$L1047
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1048
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1049
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1050
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$2
	bteqz	$L1051
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1052
	sll	$3,$5,7
	zeh	$3
	sltu	$3,$2
	bteqz	$L1053
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1054
	sll	$5,$5,8
	move	$3,$5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1055
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1056
	sll	$3,$5,1
	zeh	$3
	sltu	$3,$2
	bteqz	$L1057
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1058
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$2
	bteqz	$L1059
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1060
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$2
	bteqz	$L1061
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1062
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$2
	bteqz	$L1063
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1064
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1065
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1066
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$2
	bteqz	$L1067
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1068
	sll	$4,$5,7
	zeh	$4
	sltu	$4,$2
	bteqz	$L1069
	bnez	$4,$L1158
$L1070:
	bnez	$6,$L1109
	move	$2,$4
$L1109:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1057:
	sltu	$2,$3
	btnez	$L1103
	subu	$2,$2,$3
	li	$7,512
	zeh	$2
	move	$4,$7
$L1072:
	srl	$16,$7,2
	srl	$5,$3,2
	beqz	$16,$L1070
	sltu	$2,$5
	btnez	$L1073
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1073:
	srl	$16,$7,3
	srl	$5,$3,3
	beqz	$16,$L1070
	sltu	$2,$5
	btnez	$L1074
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1074:
	srl	$16,$7,4
	srl	$5,$3,4
	beqz	$16,$L1070
	sltu	$2,$5
	btnez	$L1075
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1075:
	srl	$16,$7,5
	srl	$5,$3,5
	beqz	$16,$L1070
	sltu	$2,$5
	btnez	$L1076
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1076:
	srl	$16,$7,6
	srl	$5,$3,6
	beqz	$16,$L1070
	sltu	$2,$5
	btnez	$L1077
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1077:
	srl	$16,$7,7
	srl	$5,$3,7
	beqz	$16,$L1070
	sltu	$2,$5
	btnez	$L1078
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1078:
	srl	$16,$7,8
	srl	$5,$3,8
	beqz	$16,$L1070
	sltu	$2,$5
	btnez	$L1079
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1079:
	srl	$17,$16,1
	srl	$3,$5,1
	beqz	$17,$L1070
	sltu	$2,$3
	btnez	$L1080
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1080:
	srl	$17,$16,2
	srl	$3,$5,2
	beqz	$17,$L1070
	sltu	$2,$3
	btnez	$L1081
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1081:
	srl	$17,$16,3
	srl	$3,$5,3
	beqz	$17,$L1070
	sltu	$2,$3
	btnez	$L1082
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1082:
	srl	$17,$16,4
	srl	$3,$5,4
	beqz	$17,$L1070
	sltu	$2,$3
	btnez	$L1083
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1083:
	srl	$17,$16,5
	srl	$3,$5,5
	beqz	$17,$L1070
	sltu	$2,$3
	btnez	$L1084
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1084:
	srl	$16,$16,6
	srl	$3,$5,6
	beqz	$16,$L1070
	sltu	$2,$3
	btnez	$L1085
	subu	$2,$2,$3
	zeh	$2
	or	$4,$16
$L1085:
	cmpi	$7,16384
	srl	$5,$5,7
	bteqz	$L1070
	sltu	$2,$5
	btnez	$L1093
	subu	$2,$2,$5
	li	$3,1
	zeh	$2
	or	$4,$3
	b	$L1070
$L1158:
	li	$3,32768
	addiu	$2,-32768
	li	$5,16384
	zeh	$2
	move	$16,$5
	move	$7,$3
	move	$4,$3
$L1090:
	sltu	$2,$5
	btnez	$L1072
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
	b	$L1072
$L1093:
	li	$2,0
	b	$L1070
$L1157:
	xor	$5,$4
	beqz	$5,$L1091
	li	$4,0
$L1152:
	bnez	$6,$L1159
	move	$2,$4
$L1159:
	jr	$31
$L1040:
	subu	$2,$4,$5
	zeh	$2
	li	$4,1
	b	$L1152
$L1041:
	sltu	$4,$3
	btnez	$L1095
	subu	$2,$4,$3
	zeh	$2
	li	$7,2
	li	$4,2
	b	$L1072
$L1042:
	li	$4,32767
	subu	$2,$2,$3
	and	$5,$4
	zeh	$2
	li	$16,1
	li	$7,2
	li	$4,2
	b	$L1090
$L1043:
	sltu	$2,$3
	btnez	$L1096
	subu	$2,$2,$3
	zeh	$2
	li	$7,4
	li	$4,4
	b	$L1072
$L1044:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,2
	li	$7,4
	li	$4,4
	b	$L1090
$L1045:
	sltu	$2,$3
	btnez	$L1097
	subu	$2,$2,$3
	zeh	$2
	li	$7,8
	li	$4,8
	b	$L1072
$L1046:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,4
	li	$7,8
	li	$4,8
	b	$L1090
$L1047:
	sltu	$2,$3
	btnez	$L1098
	subu	$2,$2,$3
	zeh	$2
	li	$7,16
	li	$4,16
	b	$L1072
$L1048:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,8
	li	$7,16
	li	$4,16
	b	$L1090
$L1049:
	sltu	$2,$3
	btnez	$L1099
	subu	$2,$2,$3
	zeh	$2
	li	$7,32
	li	$4,32
	b	$L1072
$L1050:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,16
	li	$7,32
	li	$4,32
	b	$L1090
$L1051:
	sltu	$2,$3
	btnez	$L1100
	subu	$2,$2,$3
	zeh	$2
	li	$7,64
	li	$4,64
	b	$L1072
$L1052:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,32
	li	$7,64
	li	$4,64
	b	$L1090
$L1053:
	sltu	$2,$3
	btnez	$L1101
	subu	$2,$2,$3
	zeh	$2
	li	$7,128
	li	$4,128
	b	$L1072
$L1054:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,64
	li	$7,128
	li	$4,128
	b	$L1090
$L1056:
	li	$7,255
	subu	$2,$2,$3
	addiu	$7,1
	zeh	$2
	srl	$5,$3,1
	li	$16,128
	move	$4,$7
	b	$L1090
$L1091:
	li	$4,1
	li	$2,0
	b	$L1152
$L1058:
	subu	$2,$2,$3
	li	$16,255
	li	$7,512
	zeh	$2
	srl	$5,$3,1
	addiu	$16,1
	move	$4,$7
	b	$L1090
$L1095:
	li	$7,2
$L1089:
	srl	$16,$7,1
	srl	$5,$3,1
	li	$4,0
	b	$L1090
$L1060:
	subu	$2,$2,$3
	li	$7,1024
	zeh	$2
	srl	$5,$3,1
	li	$16,512
	move	$4,$7
	b	$L1090
$L1096:
	li	$7,4
	b	$L1089
$L1062:
	subu	$2,$2,$3
	li	$7,2048
	zeh	$2
	srl	$5,$3,1
	li	$16,1024
	move	$4,$7
	b	$L1090
$L1097:
	li	$7,8
	b	$L1089
$L1064:
	subu	$2,$2,$3
	li	$7,4096
	zeh	$2
	srl	$5,$3,1
	li	$16,2048
	move	$4,$7
	b	$L1090
$L1066:
	subu	$2,$2,$3
	li	$7,8192
	zeh	$2
	srl	$5,$3,1
	li	$16,4096
	move	$4,$7
	b	$L1090
$L1098:
	li	$7,16
	b	$L1089
$L1068:
	subu	$2,$2,$3
	li	$7,16384
	zeh	$2
	srl	$5,$3,1
	li	$16,8192
	move	$4,$7
	b	$L1090
$L1099:
	li	$7,32
	b	$L1089
$L1100:
	li	$7,64
	b	$L1089
$L1069:
	srl	$3,$2,8
	srl	$3,$3,7
	bnez	$3,$L1094
	li	$3,32768
	move	$7,$3
	b	$L1089
$L1101:
	li	$7,128
	b	$L1089
$L1055:
	sltu	$2,$3
	btnez	$L1102
	li	$7,255
	subu	$2,$2,$3
	addiu	$7,1
	zeh	$2
	move	$4,$7
	b	$L1072
$L1094:
	li	$3,32768
	move	$7,$3
	move	$4,$3
	li	$2,0
	b	$L1072
$L1102:
	li	$7,255
	addiu	$7,1
	b	$L1089
$L1065:
	sltu	$2,$3
	btnez	$L1107
	subu	$2,$2,$3
	li	$7,8192
	zeh	$2
	move	$4,$7
	b	$L1072
$L1059:
	sltu	$2,$3
	btnez	$L1104
	subu	$2,$2,$3
	li	$7,1024
	zeh	$2
	move	$4,$7
	b	$L1072
$L1107:
	li	$7,8192
	b	$L1089
$L1104:
	li	$7,1024
	b	$L1089
$L1103:
	li	$7,512
	b	$L1089
$L1063:
	sltu	$2,$3
	btnez	$L1106
	subu	$2,$2,$3
	li	$7,4096
	zeh	$2
	move	$4,$7
	b	$L1072
$L1061:
	sltu	$2,$3
	btnez	$L1105
	subu	$2,$2,$3
	li	$7,2048
	zeh	$2
	move	$4,$7
	b	$L1072
$L1067:
	sltu	$2,$3
	btnez	$L1108
	subu	$2,$2,$3
	li	$7,16384
	zeh	$2
	move	$4,$7
	b	$L1072
$L1106:
	li	$7,4096
	b	$L1089
$L1105:
	li	$7,2048
	b	$L1089
$L1108:
	li	$7,16384
	b	$L1089
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
	bteqz	$L1162
	li	$2,32
	li	$3,1
$L1161:
	slt	$5,0
	btnez	$L1162
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1163
	addiu	$2,-1
	bnez	$2,$L1161
	bnez	$6,$L1175
$L1176:
	jr	$31
$L1163:
	beqz	$3,$L1170
$L1162:
	li	$2,0
$L1167:
	sltu	$4,$5
	btnez	$L1166
	subu	$4,$4,$5
	or	$2,$3
$L1166:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1167
	beqz	$6,$L1176
$L1175:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L1170:
	li	$2,0
	beqz	$6,$L1176
	b	$L1175
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
	beqz	$2,$L1178
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

$L1178:
	beqz	$5,$L1181
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

$L1181:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_1183, @object
__pool___ashldi3_1183:
	.align	2
$L1183:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_1183, @object
__pend___ashldi3_1183:
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
	beqz	$3,$L1185
	move	$2,$5
	dsll	$2,$6
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1185:
	beqz	$6,$L1188
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

$L1188:
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
	beqz	$2,$L1191
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

$L1191:
	move	$2,$4
	beqz	$5,$L1197
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

$L1197:
	jr	$31
	.type	__pool___ashrdi3_1196, @object
__pool___ashrdi3_1196:
	.align	2
$L1196:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_1196, @object
__pend___ashrdi3_1196:
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
	beqz	$2,$L1199
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

$L1199:
	move	$2,$4
	beqz	$6,$L1202
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

$L1202:
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
	ld	$5,$L1206
	move	$2,$4
	dsrl	$2,24
	and	$2,$5
	or	$3,$2
	ld	$5,$L1207
	move	$2,$4
	dsrl	$2,8
	and	$2,$5
	ld	$5,$L1208
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$5,$L1209
	or	$3,$2
	dsll	$2,$4,24
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L1210
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_1206, @object
__pool___bswapdi2_1206:
	.align	3
$L1206:
	.dword	16711680
$L1207:
	.dword	4278190080
$L1208:
	.dword	1095216660480
$L1209:
	.dword	280375465082880
$L1210:
	.dword	71776119061217280
	.type	__pend___bswapdi2_1206, @object
__pend___bswapdi2_1206:
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
	lw	$3,$L1213
	sll	$4,$4,8
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___bswapsi2_1213, @object
__pool___bswapsi2_1213:
	.align	2
$L1213:
	.word	16711680
	.type	__pend___bswapsi2_1213, @object
__pend___bswapsi2_1213:
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
	lw	$2,$L1218
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
	beqz	$3,$L1215
	subu	$2,$2,$4
	addu	$5,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

$L1215:
	addu	$5,$5,$6
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_1218, @object
__pool___clzsi2_1218:
	.align	2
$L1218:
	.word	65536
	.type	__pend___clzsi2_1218, @object
__pend___clzsi2_1218:
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
	lw	$2,$L1223
	sd	$16,40($sp)
	move	$16,$24
	move	$28,$2
	sw	$2,32($sp)
	addiu	$2,$16,-1
	sd	$31,48($sp)
	and	$2,$4
	beqz	$16,$L1220
	move	$4,$5
$L1221:
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

$L1220:
	li	$4,0
	b	$L1221
	.type	__pool___clzti2_1223, @object
__pool___clzti2_1223:
	.align	2
$L1223:
	.word	__gnu_local_gp
	.type	__pend___clzti2_1223, @object
__pend___clzti2_1223:
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
	btnez	$L1228
	slt	$6,$7
	btnez	$L1227
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1228
	sltu	$5,$4
	btnez	$L1229
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1228:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1227:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1229:
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
	btnez	$L1232
	slt	$6,$7
	btnez	$L1233
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1234
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1232:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1234:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1233:
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
	btnez	$L1239
	slt	$6,$4
	btnez	$L1238
	sltu	$5,$7
	btnez	$L1239
	sltu	$7,$5
	btnez	$L1240
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1239:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1238:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1240:
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
	lw	$2,$L1246
	sltu	$5,1
	move	$28,$2
	sd	$16,40($sp)
	sw	$2,32($sp)
	sd	$31,48($sp)
	move	$2,$5
	move	$16,$24
	beqz	$5,$L1244
	li	$4,0
$L1244:
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

	.type	__pool___ctzti2_1246, @object
__pool___ctzti2_1246:
	.align	2
$L1246:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_1246, @object
__pend___ctzti2_1246:
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
	lw	$2,$L1253
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	sd	$31,40($sp)
	move	$2,$28
	bnez	$5,$L1248
	bnez	$4,$L1252
	ld	$7,40($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L1248:
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

$L1252:
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

	.type	__pool___ffsti2_1253, @object
__pool___ffsti2_1253:
	.align	2
$L1253:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_1253, @object
__pend___ffsti2_1253:
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
	beqz	$2,$L1255
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

$L1255:
	move	$2,$4
	beqz	$5,$L1261
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

$L1261:
	jr	$31
	.type	__pool___lshrdi3_1260, @object
__pool___lshrdi3_1260:
	.align	2
$L1260:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_1260, @object
__pend___lshrdi3_1260:
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
	beqz	$2,$L1263
	dsrl	$4,$6
	li	$2,0
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1263:
	move	$2,$4
	beqz	$6,$L1266
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

$L1266:
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
	ld	$3,$L1283
	move	$2,$4
	dsrl	$2,1
	and	$2,$3
	dsubu	$4,$4,$2
	ld	$3,$L1284
	move	$2,$4
	dsrl	$2,2
	and	$4,$3
	and	$2,$3
	daddu	$2,$2,$4
	move	$3,$2
	dsrl	$3,4
	daddu	$3,$3,$2
	ld	$2,$L1285
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

	.type	__pool___popcountdi2_1283, @object
__pool___popcountdi2_1283:
	.align	3
$L1283:
	.dword	6148914691236517205
$L1284:
	.dword	3689348814741910323
$L1285:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1283, @object
__pend___popcountdi2_1283:
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
	lw	$3,$L1288
	srl	$2,$4,1
	and	$2,$3
	subu	$4,$4,$2
	lw	$2,$L1289
	srl	$3,$4,2
	and	$3,$2
	and	$4,$2
	addu	$3,$3,$4
	srl	$2,$3,4
	addu	$2,$2,$3
	lw	$3,$L1290
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

	.type	__pool___popcountsi2_1288, @object
__pool___popcountsi2_1288:
	.align	2
$L1288:
	.word	1431655765
$L1289:
	.word	858993459
$L1290:
	.word	252645135
	.type	__pend___popcountsi2_1288, @object
__pend___popcountsi2_1288:
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
	ld	$6,$L1293
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
	ld	$6,$L1294
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
	ld	$4,$L1295
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

	.type	__pool___popcountti2_1293, @object
__pool___popcountti2_1293:
	.align	3
$L1293:
	.dword	6148914691236517205
$L1294:
	.dword	3689348814741910323
$L1295:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1293, @object
__pend___popcountti2_1293:
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
	lw	$2,$L1304
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
	beqz	$2,$L1302
	ld	$2,$L1305
	move	$16,$3
	sd	$2,40($sp)
$L1299:
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
$L1297:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1298
$L1300:
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
	bnez	$2,$L1299
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	b	$L1300
$L1298:
	lw	$2,80($sp)
	slt	$2,0
	bteqz	$L1296
	lw	$17,%call16(__mips16_divdf3)($17)
	ld	$4,$L1305
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sd	$2,40($sp)
	move	$28,$6
$L1296:
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

$L1302:
	ld	$2,$L1305
	lw	$16,80($sp)
	sd	$2,40($sp)
	b	$L1297
	.type	__pool___powidf2_1304, @object
__pool___powidf2_1304:
	.align	2
$L1304:
	.word	__gnu_local_gp
	.align	3
$L1305:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_1304, @object
__pend___powidf2_1304:
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
	lw	$2,$L1314
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
	beqz	$2,$L1312
	lw	$2,$L1315
	move	$16,$3
	sw	$2,40($sp)
$L1309:
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
$L1307:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1308
$L1310:
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
	bnez	$2,$L1309
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	b	$L1310
$L1308:
	lw	$2,80($sp)
	slt	$2,0
	bteqz	$L1306
	lw	$17,%call16(__mips16_divsf3)($17)
	lw	$4,$L1315
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sw	$2,40($sp)
	move	$28,$6
$L1306:
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

$L1312:
	lw	$2,$L1315
	lw	$16,80($sp)
	sw	$2,40($sp)
	b	$L1307
	.type	__pool___powisf2_1314, @object
__pool___powisf2_1314:
	.align	2
$L1314:
	.word	__gnu_local_gp
$L1315:
	.word	1065353216
	.type	__pend___powisf2_1314, @object
__pend___powisf2_1314:
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
	btnez	$L1320
	sltu	$2,$3
	btnez	$L1319
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1320
	sltu	$5,$4
	btnez	$L1321
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1320:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1319:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1321:
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
	btnez	$L1324
	sltu	$2,$3
	btnez	$L1325
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1326
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1324:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1326:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1325:
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
	btnez	$L1331
	sltu	$6,$4
	btnez	$L1330
	sltu	$5,$7
	btnez	$L1331
	sltu	$7,$5
	btnez	$L1332
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1331:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1330:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1332:
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
