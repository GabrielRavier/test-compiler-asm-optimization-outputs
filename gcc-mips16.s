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
	beqz	$6,$L19
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
	bteqz	$L19
	beqz	$6,$L19
	move	$3,$4
	addu	$6,$4,$6
$L10:
	lb	$4,0($5)
	addiu	$3,1
	sb	$4,-1($3)
	cmp	$3,$6
	addiu	$5,1
	btnez	$L10
$L19:
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
	bnez	$7,$L22
	b	$L24
$L25:
	addiu	$7,-1
	addiu	$5,1
	addiu	$4,1
	beqz	$7,$L24
$L22:
	lbu	$3,0($5)
	sb	$3,0($4)
	xor	$3,$6
	bnez	$3,$L25
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,$4,1
	.set	macro
	.set	reorder

$L24:
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
	bnez	$6,$L32
	b	$L37
$L34:
	addiu	$6,-1
	addiu	$4,1
	beqz	$6,$L35
$L32:
	lbu	$3,0($4)
	xor	$3,$5
	bnez	$3,$L34
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L35:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L37:
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
	beqz	$6,$L43
$L49:
	lbu	$2,0($4)
	lbu	$3,0($5)
	cmp	$2,$3
	btnez	$L48
	addiu	$6,-1
	addiu	$4,1
	addiu	$5,1
	bnez	$6,$L49
$L43:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L48:
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
	beqz	$6,$L56
	lw	$2,$L59
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

$L56:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_memcpy_59, @object
__pool_memcpy_59:
	.align	2
$L59:
	.word	__gnu_local_gp
	.type	__pend_memcpy_59, @object
__pend_memcpy_59:
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
$L61:
	cmp	$6,$4
	bteqz	$L64
	move	$2,$6
	lbu	$3,0($2)
	addiu	$6,-1
	xor	$3,$5
	bnez	$3,$L61
	jr	$31
$L64:
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
	beqz	$6,$L70
	lw	$2,$L73
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

$L70:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_memset_73, @object
__pool_memset_73:
	.align	2
$L73:
	.word	__gnu_local_gp
	.type	__pend_memset_73, @object
__pend_memset_73:
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
	beqz	$3,$L81
$L76:
	lb	$3,1($5)
	addiu	$5,1
	addiu	$2,1
	sb	$3,0($2)
	bnez	$3,$L76
$L81:
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
	bnez	$3,$L83
	jr	$31
$L85:
	lb	$3,1($2)
	addiu	$2,1
	beqz	$3,$L89
$L83:
	zeb	$3
	xor	$3,$5
	bnez	$3,$L85
$L89:
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
	b	$L93
$L96:
	addiu	$2,1
	beqz	$3,$L95
$L93:
	lb	$3,0($2)
	cmp	$3,$5
	btnez	$L96
	jr	$31
$L95:
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
	b	$L105
$L98:
	beqz	$3,$L99
	addiu	$4,1
	addiu	$5,1
$L105:
	lb	$3,0($4)
	lb	$2,0($5)
	cmp	$3,$2
	bteqz	$L98
	zeb	$3
$L99:
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
	beqz	$2,$L109
	move	$2,$4
$L108:
	lb	$3,1($2)
	addiu	$2,1
	bnez	$3,$L108
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$4
	.set	macro
	.set	reorder

$L109:
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
	beqz	$6,$L119
	lbu	$2,0($4)
	beqz	$2,$L121
	lbu	$3,0($5)
	addiu	$6,-1
	addu	$6,$4,$6
	beqz	$3,$L114
$L123:
	cmp	$4,$6
	bteqz	$L114
	cmp	$3,$2
	btnez	$L114
	lbu	$2,1($4)
	addiu	$4,1
	addiu	$3,$5,1
	beqz	$2,$L122
	move	$5,$3
	lbu	$3,0($5)
	bnez	$3,$L123
$L114:
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L119:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L122:
	lbu	$3,1($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L121:
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
	btnez	$L128
	srl	$2,$6,1
	sll	$2,$2,1
	addu	$2,$4,$2
$L126:
	lbu	$3,1($4)
	addiu	$4,2
	sb	$3,0($5)
	lbu	$3,-2($4)
	cmp	$4,$2
	sb	$3,1($5)
	addiu	$5,2
	btnez	$L126
$L128:
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
	bteqz	$L133
	li	$2,9
	xor	$4,$2
	sltu	$4,1
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
	btnez	$L136
	li	$2,127
	xor	$4,$2
	sltu	$4,1
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
	bteqz	$L143
	addiu	$4,-9
	sltu	$4,5
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L143:
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
	btnez	$L148
	addiu	$2,$4,-8
	addiu	$2,-119
	sltu	$2,33
	bteqz	$L150
$L148:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L150:
	addiu	$2,$4,-8232
	sltu	$2,2
	btnez	$L149
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

$L149:
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
	btnez	$L160
	sltu	$4,8232
	btnez	$L157
	addiu	$3,$4,-8234
	li	$2,47062
	sltu	$3,$2
	btnez	$L157
	li	$2,57344
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$2,8185
	btnez	$L157
	li	$2,65532
	lw	$3,$L162
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$3,$2
	btnez	$L158
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

$L157:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L160:
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

$L158:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.type	__pool_iswprint_161, @object
__pool_iswprint_161:
	.align	2
$L161:
	.word	__gnu_local_gp
$L162:
	.word	1048579
	.type	__pend_iswprint_161, @object
__pend_iswprint_161:
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
	btnez	$L165
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

$L165:
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
	lw	$2,$L177
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
	bnez	$2,$L170
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
	bnez	$2,$L171
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
	bteqz	$L176
	ld	$2,$L178
$L167:
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

$L176:
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
	b	$L167
$L170:
	move	$2,$16
	b	$L167
$L171:
	ld	$2,72($sp)
	b	$L167
	.type	__pool_fdim_177, @object
__pool_fdim_177:
	.align	2
$L177:
	.word	__gnu_local_gp
	.align	3
$L178:
	.word	0
	.word	0
	.type	__pend_fdim_177, @object
__pend_fdim_177:
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
	lw	$2,$L189
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
	bnez	$2,$L182
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
	bnez	$2,$L183
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
	bteqz	$L188
	lw	$2,$L190
$L179:
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

$L188:
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
	b	$L179
$L182:
	move	$2,$16
	b	$L179
$L183:
	lw	$2,72($sp)
	b	$L179
	.type	__pool_fdimf_189, @object
__pool_fdimf_189:
	.align	2
$L189:
	.word	__gnu_local_gp
$L190:
	.word	0
	.type	__pend_fdimf_189, @object
__pend_fdimf_189:
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
	lw	$2,$L204
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
	bnez	$2,$L199
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
	bnez	$2,$L198
	move	$2,$17
	dsrl	$2,63
	move	$3,$2
	move	$2,$16
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L203
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
	btnez	$L199
	move	$16,$17
$L199:
	move	$2,$16
$L191:
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

$L203:
	bnez	$3,$L199
$L198:
	move	$2,$17
	b	$L191
	.type	__pool_fmax_204, @object
__pool_fmax_204:
	.align	2
$L204:
	.word	__gnu_local_gp
	.type	__pend_fmax_204, @object
__pend_fmax_204:
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
	lw	$2,$L218
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
	bnez	$2,$L213
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
	bnez	$2,$L212
	lw	$2,$L219
	move	$3,$2
	and	$3,$17
	and	$2,$16
	xor	$2,$3
	bnez	$2,$L217
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
	btnez	$L213
	move	$16,$17
$L213:
	move	$2,$16
$L205:
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

$L217:
	bnez	$3,$L213
$L212:
	move	$2,$17
	b	$L205
	.type	__pool_fmaxf_218, @object
__pool_fmaxf_218:
	.align	2
$L218:
	.word	__gnu_local_gp
$L219:
	.word	-2147483648
	.type	__pend_fmaxf_218, @object
__pend_fmaxf_218:
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
	lw	$2,$L233
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
	bnez	$2,$L228
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
	bnez	$2,$L227
	move	$2,$17
	dsrl	$2,63
	move	$3,$2
	move	$2,$16
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L232
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
	btnez	$L228
	move	$16,$17
$L228:
	move	$2,$16
$L220:
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

$L232:
	bnez	$3,$L228
$L227:
	move	$2,$17
	b	$L220
	.type	__pool_fmaxl_233, @object
__pool_fmaxl_233:
	.align	2
$L233:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_233, @object
__pend_fmaxl_233:
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
	lw	$2,$L247
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
	bnez	$2,$L240
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
	bnez	$2,$L242
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	move	$2,$17
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L246
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
	btnez	$L242
	move	$16,$17
$L242:
	move	$2,$16
$L234:
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

$L246:
	bnez	$3,$L242
$L240:
	move	$2,$17
	b	$L234
	.type	__pool_fmin_247, @object
__pool_fmin_247:
	.align	2
$L247:
	.word	__gnu_local_gp
	.type	__pend_fmin_247, @object
__pend_fmin_247:
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
	lw	$2,$L261
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
	bnez	$2,$L254
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
	bnez	$2,$L256
	lw	$2,$L262
	move	$3,$2
	and	$3,$16
	and	$2,$17
	xor	$2,$3
	bnez	$2,$L260
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
	btnez	$L256
	move	$16,$17
$L256:
	move	$2,$16
$L248:
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

$L260:
	bnez	$3,$L256
$L254:
	move	$2,$17
	b	$L248
	.type	__pool_fminf_261, @object
__pool_fminf_261:
	.align	2
$L261:
	.word	__gnu_local_gp
$L262:
	.word	-2147483648
	.type	__pend_fminf_261, @object
__pend_fminf_261:
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
	lw	$2,$L276
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
	bnez	$2,$L269
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
	bnez	$2,$L271
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	move	$2,$17
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L275
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
	btnez	$L271
	move	$16,$17
$L271:
	move	$2,$16
$L263:
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

$L275:
	bnez	$3,$L271
$L269:
	move	$2,$17
	b	$L263
	.type	__pool_fminl_276, @object
__pool_fminl_276:
	.align	2
$L276:
	.word	__gnu_local_gp
	.type	__pend_fminl_276, @object
__pend_fminl_276:
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
	lw	$3,$L282
	beqz	$4,$L278
	lw	$5,$L283
$L279:
	li	$2,63
	and	$2,$4
	addu	$2,$5,$2
	lbu	$2,0($2)
	srl	$4,$4,6
	sb	$2,0($3)
	addiu	$3,1
	bnez	$4,$L279
$L278:
	li	$2,0
	sb	$2,0($3)
	lw	$2,$L282
	jr	$31
	.type	__pool_l64a_282, @object
__pool_l64a_282:
	.align	2
$L282:
	.word	s.0
$L283:
	.word	digits
	.type	__pend_l64a_282, @object
__pend_l64a_282:
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
	lw	$2,$L285
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.type	__pool_srand_285, @object
__pool_srand_285:
	.align	2
$L285:
	.word	seed
	.type	__pend_srand_285, @object
__pend_srand_285:
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
	lw	$3,$L288
	ld	$2,$L289
	ld	$4,0($3)
	dmult	$4,$2
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_288, @object
__pool_rand_288:
	.align	2
$L288:
	.word	seed
	.align	3
$L289:
	.dword	6364136223846793005
	.type	__pend_rand_288, @object
__pend_rand_288:
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
	beqz	$5,$L296
	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$2,0($4)
	beqz	$2,$L297
	sw	$4,4($2)
$L297:
	jr	$31
$L296:
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
	beqz	$2,$L299
	lw	$3,4($4)
	sw	$3,4($2)
$L299:
	lw	$3,4($4)
	beqz	$3,$L307
	sw	$2,0($3)
$L307:
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
	lw	$2,$L325
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
	beqz	$2,$L309
	move	$17,$5
	li	$16,0
	b	$L311
$L324:
	lw	$2,96($sp)
	addiu	$16,1
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
	bteqz	$L309
$L311:
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
	bnez	$2,$L324
$L308:
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

$L309:
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
	beqz	$3,$L308
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

	.type	__pool_lsearch_325, @object
__pool_lsearch_325:
	.align	2
$L325:
	.word	__gnu_local_gp
	.type	__pend_lsearch_325, @object
__pend_lsearch_325:
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
	beqz	$2,$L327
	move	$17,$5
	li	$16,0
	b	$L329
$L338:
	lw	$2,96($sp)
	addiu	$16,1
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
	bteqz	$L327
$L329:
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

	bnez	$2,$L338
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

$L327:
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
	btnez	$L341
	jr	$31
$L341:
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
$L349:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L343
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L343
	cmpi	$3,43
	bteqz	$L344
	cmpi	$3,45
	bteqz	$L345
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L362
	move	$5,$4
	li	$7,0
$L347:
	li	$2,0
$L351:
	sll	$4,$2,2
	addu	$4,$4,$2
	sll	$4,$4,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L351
	bnez	$7,$L363
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L343:
	addiu	$4,1
	b	$L349
$L345:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L354
	li	$7,1
	b	$L347
$L354:
	li	$2,0
$L363:
	jr	$31
$L344:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L347
$L362:
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
$L369:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L365
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L365
	cmpi	$3,43
	bteqz	$L366
	cmpi	$3,45
	bteqz	$L367
	addiu	$3,-48
	sltu	$3,10
	move	$5,$4
	bteqz	$L385
$L384:
	li	$7,0
$L370:
	li	$2,0
$L373:
	sll	$4,$2,2
	addu	$4,$4,$2
	sll	$4,$4,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L373
	bnez	$7,$L386
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L365:
	addiu	$4,1
	b	$L369
$L367:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,1
	btnez	$L370
$L385:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L366:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	btnez	$L384
	li	$2,0
$L386:
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
$L394:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L388
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L388
	cmpi	$3,43
	bteqz	$L389
	cmpi	$3,45
	bteqz	$L390
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L407
	move	$5,$4
	li	$7,0
$L392:
	li	$2,0
$L396:
	addiu	$5,1
	move	$6,$3
	lb	$3,0($5)
	dsll	$4,$2,2
	daddu	$4,$4,$2
	addiu	$3,-48
	dsll	$4,$4,1
	sltu	$3,10
	dsubu	$2,$4,$6
	btnez	$L396
	bnez	$7,$L408
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$6,$4
	.set	macro
	.set	reorder

$L388:
	addiu	$4,1
	b	$L394
$L390:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L399
	li	$7,1
	b	$L392
$L399:
	li	$2,0
$L408:
	jr	$31
$L389:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L392
$L407:
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
	beqz	$6,$L410
	move	$16,$6
$L413:
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
	btnez	$L414
	beqz	$2,$L409
	lw	$2,40($sp)
	lw	$3,96($sp)
	addiu	$16,-1
	addu	$2,$2,$3
	subu	$16,$16,$17
	sw	$2,80($sp)
	bnez	$16,$L413
$L410:
	li	$2,0
	sw	$2,40($sp)
$L409:
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

$L414:
	move	$16,$17
	bnez	$16,$L413
	b	$L410
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
	beqz	$6,$L428
$L424:
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

	beqz	$2,$L423
	slt	$2,1
	btnez	$L426
	lw	$2,96($sp)
	addiu	$17,-1
	addu	$2,$16,$2
	sra	$17,$17,1
	sw	$2,80($sp)
	bnez	$17,$L424
$L428:
	li	$16,0
$L423:
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

$L426:
	lw	$2,40($sp)
	beqz	$2,$L428
	move	$17,$2
	b	$L424
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
	btnez	$L440
	jr	$31
$L440:
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
	btnez	$L444
	jr	$31
$L444:
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
	btnez	$L448
	jr	$31
$L448:
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
	beqz	$3,$L456
$L451:
	xor	$3,$5
	beqz	$3,$L457
	lw	$3,4($4)
	addiu	$4,4
	bnez	$3,$L451
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L457:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L456:
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
	b	$L465
$L466:
	beqz	$2,$L460
	addiu	$4,4
	addiu	$5,4
$L465:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	bteqz	$L466
$L460:
	slt	$2,$3
	btnez	$L463
	slt	$3,$2
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L463:
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
$L468:
	lw	$6,0($5)
	addiu	$3,4
	sw	$6,-4($3)
	addiu	$5,4
	bnez	$6,$L468
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
	beqz	$2,$L473
	move	$2,$4
$L472:
	lw	$3,4($2)
	addiu	$2,4
	bnez	$3,$L472
	subu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$2,2
	.set	macro
	.set	reorder

$L473:
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
	beqz	$6,$L481
$L485:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	btnez	$L478
	beqz	$2,$L478
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L485
$L481:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L478:
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$2
	btnez	$L486
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L486:
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
	bnez	$6,$L488
	b	$L493
$L490:
	addiu	$6,-1
	addiu	$4,4
	beqz	$6,$L491
$L488:
	lw	$2,0($4)
	cmp	$2,$5
	btnez	$L490
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L491:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L493:
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
	beqz	$6,$L500
$L506:
	lw	$3,0($4)
	lw	$2,0($5)
	cmp	$3,$2
	btnez	$L505
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L506
$L500:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L505:
	slt	$3,$2
	btnez	$L507
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L507:
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
	beqz	$6,$L514
	lw	$2,$L517
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

$L514:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_wmemcpy_517, @object
__pool_wmemcpy_517:
	.align	2
$L517:
	.word	__gnu_local_gp
	.type	__pend_wmemcpy_517, @object
__pend_wmemcpy_517:
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
	bteqz	$L536
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	subu	$17,$4,$5
	move	$16,$4
	sll	$4,$6,2
	sltu	$17,$4
	move	$7,$5
	addiu	$3,$6,-1
	bteqz	$L535
	beqz	$6,$L525
	sll	$3,$3,2
$L523:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	addiu	$3,-4
	sw	$6,0($4)
	addiu	$4,$3,4
	bnez	$4,$L523
$L525:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L535:
	beqz	$6,$L525
$L521:
	lw	$4,0($7)
	addiu	$3,-1
	sw	$4,0($16)
	addiu	$4,$3,1
	addiu	$16,4
	addiu	$7,4
	bnez	$4,$L521
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L536:
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
	beqz	$6,$L544
	move	$6,$4
$L539:
	addiu	$3,-1
	addiu	$7,$3,1
	sw	$5,0($6)
	addiu	$6,4
	bnez	$7,$L539
$L544:
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
	bteqz	$L546
	addu	$2,$4,$6
	addu	$5,$5,$6
	beqz	$6,$L558
$L548:
	addiu	$2,-1
	lb	$3,0($2)
	cmp	$4,$2
	addiu	$5,-1
	sb	$3,0($5)
	btnez	$L548
	jr	$31
$L546:
	cmp	$4,$5
	bteqz	$L558
	beqz	$6,$L558
	addu	$6,$4,$6
$L549:
	lb	$2,0($4)
	addiu	$4,1
	cmp	$4,$6
	sb	$2,0($5)
	addiu	$5,1
	btnez	$L549
$L558:
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
	lw	$3,$L573
	sll	$4,$4,8
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_bswap_32_573, @object
__pool_bswap_32_573:
	.align	2
$L573:
	.word	16711680
	.type	__pend_bswap_32_573, @object
__pend_bswap_32_573:
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
	ld	$5,$L576
	move	$2,$4
	dsrl	$2,24
	and	$2,$5
	or	$3,$2
	ld	$5,$L577
	move	$2,$4
	dsrl	$2,8
	and	$2,$5
	ld	$5,$L578
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$5,$L579
	or	$3,$2
	dsll	$2,$4,24
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L580
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_576, @object
__pool_bswap_64_576:
	.align	3
$L576:
	.dword	16711680
$L577:
	.dword	4278190080
$L578:
	.dword	1095216660480
$L579:
	.dword	280375465082880
$L580:
	.dword	71776119061217280
	.type	__pend_bswap_64_576, @object
__pend_bswap_64_576:
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
	b	$L584
$L587:
	cmpi	$2,32
	bteqz	$L586
$L584:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	addiu	$2,1
	beqz	$3,$L587
	jr	$31
$L586:
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
	beqz	$4,$L591
	li	$2,1
	and	$2,$4
	bnez	$2,$L594
	li	$2,1
$L590:
	sra	$4,$4,1
	li	$3,1
	and	$3,$4
	addiu	$2,1
	beqz	$3,$L590
	jr	$31
$L591:
	li	$2,0
$L594:
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
	lw	$2,$L601
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$5,$L602
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
	btnez	$L599
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$5,$L603
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

$L599:
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

	.type	__pool_gl_isinff_601, @object
__pool_gl_isinff_601:
	.align	2
$L601:
	.word	__gnu_local_gp
$L602:
	.word	-8388609
$L603:
	.word	2139095039
	.type	__pend_gl_isinff_601, @object
__pend_gl_isinff_601:
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
	lw	$2,$L609
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L610
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
	btnez	$L607
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L611
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

$L607:
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

	.type	__pool_gl_isinfd_609, @object
__pool_gl_isinfd_609:
	.align	2
$L609:
	.word	__gnu_local_gp
	.align	3
$L610:
	.word	-1048577
	.word	-1
$L611:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_609, @object
__pend_gl_isinfd_609:
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
	lw	$2,$L617
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L618
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
	btnez	$L615
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L619
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

$L615:
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

	.type	__pool_gl_isinfl_617, @object
__pool_gl_isinfl_617:
	.align	2
$L617:
	.word	__gnu_local_gp
	.align	3
$L618:
	.word	-1048577
	.word	-1
$L619:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_617, @object
__pend_gl_isinfl_617:
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
	lw	$2,$L622
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

	.type	__pool__Qp_itoq_622, @object
__pool__Qp_itoq_622:
	.align	2
$L622:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_622, @object
__pend__Qp_itoq_622:
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
	lw	$2,$L641
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
	bnez	$2,$L624
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
	beqz	$2,$L624
	slt	$16,0
	btnez	$L639
	lw	$5,$L642
$L626:
	li	$2,1
	and	$2,$16
	beqz	$2,$L627
$L628:
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
$L627:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L624
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
	bnez	$2,$L628
$L640:
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
	bnez	$2,$L628
	b	$L640
$L624:
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

$L639:
	lw	$5,$L643
	b	$L626
	.type	__pool_ldexpf_641, @object
__pool_ldexpf_641:
	.align	2
$L641:
	.word	__gnu_local_gp
$L642:
	.word	1073741824
$L643:
	.word	1056964608
	.type	__pend_ldexpf_641, @object
__pend_ldexpf_641:
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
	lw	$2,$L662
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
	bnez	$2,$L645
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
	beqz	$2,$L645
	slt	$16,0
	btnez	$L660
	ld	$5,$L663
$L647:
	li	$2,1
	and	$2,$16
	beqz	$2,$L648
$L649:
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
$L648:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L645
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
	bnez	$2,$L649
$L661:
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
	bnez	$2,$L649
	b	$L661
$L645:
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

$L660:
	ld	$5,$L664
	b	$L647
	.type	__pool_ldexp_662, @object
__pool_ldexp_662:
	.align	2
$L662:
	.word	__gnu_local_gp
	.align	3
$L663:
	.word	1073741824
	.word	0
$L664:
	.word	1071644672
	.word	0
	.type	__pend_ldexp_662, @object
__pend_ldexp_662:
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
	lw	$2,$L683
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
	bnez	$2,$L666
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
	beqz	$2,$L666
	slt	$16,0
	btnez	$L681
	ld	$5,$L684
$L668:
	li	$2,1
	and	$2,$16
	beqz	$2,$L669
$L670:
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
$L669:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L666
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
	bnez	$2,$L670
$L682:
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
	bnez	$2,$L670
	b	$L682
$L666:
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

$L681:
	ld	$5,$L685
	b	$L668
	.type	__pool_ldexpl_683, @object
__pool_ldexpl_683:
	.align	2
$L683:
	.word	__gnu_local_gp
	.align	3
$L684:
	.word	1073741824
	.word	0
$L685:
	.word	1071644672
	.word	0
	.type	__pend_ldexpl_683, @object
__pend_ldexpl_683:
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
	beqz	$6,$L697
	addiu	$sp,-8
	move	$3,$4
	sd	$16,0($sp)
	addu	$16,$5,$6
$L688:
	lbu	$7,0($3)
	lbu	$6,0($5)
	addiu	$5,1
	xor	$7,$6
	cmp	$5,$16
	sb	$7,0($3)
	addiu	$3,1
	btnez	$L688
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L697:
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
	beqz	$3,$L705
	move	$3,$4
$L700:
	lb	$7,1($3)
	addiu	$3,1
	bnez	$7,$L700
$L711:
	beqz	$6,$L702
$L713:
	lb	$7,0($5)
	sb	$7,0($3)
	beqz	$7,$L714
	addiu	$6,-1
	addiu	$5,1
	addiu	$3,1
	bnez	$6,$L713
$L702:
	li	$4,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sb	$4,0($3)
	.set	macro
	.set	reorder

$L714:
	jr	$31
$L705:
	move	$3,$4
	b	$L711
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
	beqz	$5,$L724
$L716:
	addu	$3,$4,$2
	lb	$3,0($3)
	bnez	$3,$L723
	jr	$31
$L723:
	addiu	$2,1
	cmp	$5,$2
	btnez	$L716
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$5
	.set	macro
	.set	reorder

$L724:
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
	beqz	$7,$L733
$L727:
	move	$6,$5
$L730:
	lb	$3,0($6)
	beqz	$3,$L734
	xor	$3,$7
	addiu	$6,1
	bnez	$3,$L730
	jr	$31
$L734:
	lb	$7,1($2)
	addiu	$2,1
	bnez	$7,$L727
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L733:
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
$L737:
	lb	$3,0($4)
	cmp	$5,$3
	bteqz	$L739
	addiu	$4,1
	bnez	$3,$L737
	jr	$31
$L739:
	move	$2,$4
	addiu	$4,1
	bnez	$3,$L737
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
	beqz	$17,$L751
	move	$8,$5
$L742:
	lb	$3,1($5)
	addiu	$5,1
	bnez	$3,$L742
	move	$2,$8
	subu	$5,$5,$2
	bnez	$5,$L748
	b	$L751
$L762:
	addiu	$4,1
	beqz	$3,$L761
$L748:
	lb	$3,0($4)
	cmp	$3,$17
	btnez	$L762
	addiu	$16,$5,-1
	zeb	$3
	addu	$16,$4,$16
	move	$2,$8
	move	$7,$4
$L744:
	lbu	$6,0($2)
	beqz	$6,$L745
	cmp	$7,$16
	bteqz	$L745
	xor	$6,$3
	bnez	$6,$L745
	lbu	$3,1($7)
	addiu	$7,1
	addiu	$2,1
	bnez	$3,$L744
$L745:
	lbu	$2,0($2)
	xor	$2,$3
	beqz	$2,$L751
	addiu	$4,1
	b	$L748
$L761:
	ld	$17,8($sp)
	ld	$16,0($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L751:
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
	lw	$2,$L775
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L776
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
	btnez	$L774
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L776
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L767
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L776
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L766
$L767:
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

$L774:
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L776
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L767
$L766:
	ld	$2,$L777
	xor	$16,$2
	b	$L767
	.type	__pool_copysign_775, @object
__pool_copysign_775:
	.align	2
$L775:
	.word	__gnu_local_gp
	.align	3
$L776:
	.word	0
	.word	0
$L777:
	.dword	-9223372036854775808
	.type	__pend_copysign_775, @object
__pend_copysign_775:
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
	beqz	$7,$L799
	sltu	$5,$7
	btnez	$L786
	addiu	$sp,-16
	subu	$5,$5,$7
	sd	$17,8($sp)
	addu	$17,$4,$5
	sltu	$17,$4
	sd	$16,0($sp)
	btnez	$L789
	lb	$3,0($6)
	move	$9,$6
	move	$8,$3
	addiu	$6,$7,-1
$L784:
	lb	$3,0($2)
	move	$4,$8
	xor	$3,$4
	addiu	$7,$2,1
	beqz	$3,$L798
	move	$2,$7
$L780:
	sltu	$17,$2
	bteqz	$L784
$L789:
	li	$2,0
$L778:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L798:
	move	$3,$9
	addiu	$3,1
	move	$10,$3
	move	$4,$3
	beqz	$6,$L778
$L783:
	move	$5,$7
	b	$L781
$L782:
	addiu	$5,1
	addu	$3,$7,$6
	xor	$3,$5
	addiu	$4,1
	beqz	$3,$L778
$L781:
	lbu	$3,0($5)
	lbu	$16,0($4)
	xor	$3,$16
	beqz	$3,$L782
	sltu	$17,$7
	btnez	$L789
	lb	$3,0($7)
	move	$4,$8
	xor	$3,$4
	addiu	$2,$7,1
	bnez	$3,$L780
	move	$3,$7
	move	$4,$10
	move	$7,$2
	move	$2,$3
	b	$L783
$L799:
	jr	$31
$L786:
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
	lw	$2,$L806
	move	$28,$2
	sd	$16,40($sp)
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$16,$6
	beqz	$6,$L801
	move	$2,$28
	lw	$2,%call16(memmove)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L801:
	ld	$7,48($sp)
	addu	$2,$4,$16
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_806, @object
__pool_mempcpy_806:
	.align	2
$L806:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_806, @object
__pend_mempcpy_806:
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
	lw	$2,$L833
	addiu	$sp,-80
	move	$28,$2
	sd	$16,56($sp)
	move	$16,$28
	sw	$2,32($sp)
	sw	$5,88($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L834
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
	btnez	$L830
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L835
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L831
	li	$2,0
	sw	$2,48($sp)
$L810:
	li	$2,0
	sw	$2,40($sp)
$L816:
	lw	$2,40($sp)
	ld	$5,$L836
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
	ld	$5,$L835
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
	bteqz	$L816
$L817:
	lw	$2,88($sp)
	lw	$3,40($sp)
	sw	$3,0($2)
	lw	$2,48($sp)
	beqz	$2,$L823
	ld	$2,$L837
	xor	$2,$17
$L807:
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

$L831:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L836
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L813
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L834
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L822
$L813:
	lw	$3,88($sp)
	li	$2,0
	sw	$2,0($3)
	move	$2,$17
	b	$L807
$L830:
	ld	$2,$L837
	ld	$5,$L838
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
	bteqz	$L832
	li	$2,1
	ld	$17,40($sp)
	sw	$2,48($sp)
	b	$L810
$L823:
	move	$2,$17
	b	$L807
$L832:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L839
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L813
	li	$2,1
	sw	$2,48($sp)
$L811:
	li	$2,0
	ld	$17,40($sp)
	sw	$2,40($sp)
$L818:
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
	ld	$5,$L836
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
	btnez	$L818
	b	$L817
$L822:
	li	$2,0
	sd	$17,40($sp)
	sw	$2,48($sp)
	b	$L811
	.type	__pool_frexp_833, @object
__pool_frexp_833:
	.align	2
$L833:
	.word	__gnu_local_gp
	.align	3
$L834:
	.word	0
	.word	0
$L835:
	.word	1072693248
	.word	0
$L836:
	.word	1071644672
	.word	0
$L837:
	.dword	-9223372036854775808
$L838:
	.word	-1074790400
	.word	0
$L839:
	.word	-1075838976
	.word	0
	.type	__pend_frexp_833, @object
__pend_frexp_833:
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
	beqz	$4,$L845
$L842:
	dsll	$3,$4,63
	dsra	$3,63
	and	$3,$5
	dsrl	$4,1
	daddu	$2,$2,$3
	dsll	$5,$5,1
	bnez	$4,$L842
	jr	$31
$L845:
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
	bteqz	$L849
	li	$2,32
	li	$3,1
$L848:
	slt	$5,0
	btnez	$L849
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L850
	addiu	$2,-1
	bnez	$2,$L848
	bnez	$6,$L863
$L864:
	jr	$31
$L850:
	beqz	$3,$L857
$L849:
	li	$2,0
$L854:
	sltu	$4,$5
	btnez	$L853
	subu	$4,$4,$5
	or	$2,$3
$L853:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L854
	beqz	$6,$L864
$L863:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L857:
	li	$2,0
	beqz	$6,$L864
	b	$L863
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
	bteqz	$L867
	addiu	$sp,-48
	lw	$2,$L872
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

$L867:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

	.type	__pool___clrsbqi2_872, @object
__pool___clrsbqi2_872:
	.align	2
$L872:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_872, @object
__pend___clrsbqi2_872:
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
	beqz	$4,$L875
	lw	$2,$L880
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

$L875:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,63
	.set	macro
	.set	reorder

	.type	__pool___clrsbdi2_880, @object
__pool___clrsbdi2_880:
	.align	2
$L880:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_880, @object
__pend___clrsbdi2_880:
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
	beqz	$4,$L886
$L883:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	sll	$5,$5,1
	bnez	$4,$L883
	jr	$31
$L886:
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
	btnez	$L892
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L902
$L892:
	beqz	$7,$L891
	sll	$7,$7,3
	move	$2,$5
	move	$3,$4
	addu	$7,$7,$5
$L895:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$7
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L895
$L891:
	sltu	$16,$6
	bteqz	$L888
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L896:
	lb	$3,0($2)
	addiu	$2,1
	cmp	$2,$5
	sb	$3,0($4)
	addiu	$4,1
	btnez	$L896
$L888:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L902:
	addiu	$2,$6,-1
	beqz	$6,$L888
$L893:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L893
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
	btnez	$L907
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L919
$L907:
	beqz	$16,$L906
	sll	$16,$16,1
	move	$2,$5
	move	$3,$4
	addu	$16,$16,$5
$L910:
	lh	$7,0($2)
	addiu	$2,2
	cmp	$2,$16
	sh	$7,0($3)
	addiu	$3,2
	btnez	$L910
$L906:
	li	$2,1
	and	$2,$6
	beqz	$2,$L903
	addu	$5,$5,$6
	lb	$2,-1($5)
	addu	$4,$4,$6
	sb	$2,-1($4)
$L903:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L919:
	addiu	$2,$6,-1
	beqz	$6,$L903
$L908:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L908
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
	btnez	$L924
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L934
$L924:
	beqz	$7,$L923
	sll	$7,$7,2
	move	$2,$5
	move	$3,$4
	addu	$7,$7,$5
$L927:
	lw	$17,0($2)
	addiu	$2,4
	cmp	$2,$7
	sw	$17,0($3)
	addiu	$3,4
	btnez	$L927
$L923:
	sltu	$16,$6
	bteqz	$L920
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L928:
	lb	$3,0($2)
	addiu	$2,1
	cmp	$2,$5
	sb	$3,0($4)
	addiu	$4,1
	btnez	$L928
$L920:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L934:
	addiu	$2,$6,-1
	beqz	$6,$L920
$L925:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L925
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
	lw	$2,$L938
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

	.type	__pool___uitod_938, @object
__pool___uitod_938:
	.align	2
$L938:
	.word	__gnu_local_gp
	.type	__pend___uitod_938, @object
__pend___uitod_938:
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
	lw	$2,$L941
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

	.type	__pool___uitof_941, @object
__pool___uitof_941:
	.align	2
$L941:
	.word	__gnu_local_gp
	.type	__pend___uitof_941, @object
__pend___uitof_941:
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
	lw	$2,$L944
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

	.type	__pool___ulltod_944, @object
__pool___ulltod_944:
	.align	2
$L944:
	.word	__gnu_local_gp
	.type	__pend___ulltod_944, @object
__pend___ulltod_944:
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
	lw	$2,$L947
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

	.type	__pool___ulltof_947, @object
__pool___ulltof_947:
	.align	2
$L947:
	.word	__gnu_local_gp
	.type	__pend___ulltof_947, @object
__pend___ulltof_947:
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
	bnez	$2,$L952
	sra	$2,$3,6
	bnez	$2,$L969
	sra	$2,$3,5
	bnez	$2,$L953
	sra	$2,$3,4
	bnez	$2,$L954
	sra	$2,$3,3
	bnez	$2,$L955
	sra	$2,$3,2
	bnez	$2,$L956
	sra	$2,$3,1
	bnez	$2,$L957
	bnez	$3,$L958
	sra	$2,$4,7
	bnez	$2,$L959
	sra	$2,$4,6
	bnez	$2,$L960
	sra	$2,$4,5
	bnez	$2,$L961
	sra	$2,$4,4
	bnez	$2,$L962
	sra	$2,$4,3
	bnez	$2,$L963
	sra	$2,$4,2
	bnez	$2,$L964
	sra	$2,$4,1
	bnez	$2,$L965
	li	$2,16
	bnez	$4,$L968
$L969:
	jr	$31
$L952:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L963:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L968:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L953:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L954:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L955:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L956:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L957:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L958:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L959:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L960:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L961:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L962:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L964:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L965:
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
	bnez	$2,$L973
	li	$2,2
	and	$2,$4
	bnez	$2,$L974
	li	$2,4
	and	$2,$4
	bnez	$2,$L975
	li	$2,8
	and	$2,$4
	bnez	$2,$L976
	li	$2,16
	and	$2,$4
	bnez	$2,$L977
	li	$2,32
	and	$2,$4
	bnez	$2,$L978
	li	$2,64
	and	$2,$4
	bnez	$2,$L979
	li	$2,128
	and	$2,$4
	bnez	$2,$L980
	li	$2,255
	addiu	$2,1
	and	$2,$4
	bnez	$2,$L981
	li	$2,512
	and	$2,$4
	bnez	$2,$L982
	li	$2,1024
	and	$2,$4
	bnez	$2,$L983
	li	$2,2048
	and	$2,$4
	bnez	$2,$L984
	li	$2,4096
	and	$2,$4
	bnez	$2,$L985
	li	$2,8192
	and	$2,$4
	bnez	$2,$L986
	li	$2,16384
	and	$2,$4
	bnez	$2,$L987
	srl	$4,$4,8
	srl	$4,$4,7
	li	$2,16
	bnez	$4,$L990
	jr	$31
$L973:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L974:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L985:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L990:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L975:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L976:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L977:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L978:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L979:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L980:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L981:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L982:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L983:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L984:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L986:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L987:
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
	lw	$2,$L999
	addiu	$sp,-64
	move	$28,$2
	sd	$16,40($sp)
	move	$16,$28
	sw	$2,32($sp)
	lw	$5,$L1000
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
	bteqz	$L998
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

$L998:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L1000
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

	.type	__pool___fixunssfsi_999, @object
__pool___fixunssfsi_999:
	.align	2
$L999:
	.word	__gnu_local_gp
$L1000:
	.word	1191182336
	.type	__pend___fixunssfsi_999, @object
__pend___fixunssfsi_999:
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
	beqz	$4,$L1008
$L1005:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	sll	$5,$5,1
	bnez	$4,$L1005
	jr	$31
$L1008:
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
	beqz	$4,$L1016
	beqz	$5,$L1016
$L1012:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	srl	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L1012
	jr	$31
$L1016:
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
	bteqz	$L1020
	li	$2,32
	li	$3,1
$L1019:
	slt	$5,0
	btnez	$L1020
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1021
	addiu	$2,-1
	bnez	$2,$L1019
	bnez	$6,$L1034
$L1035:
	jr	$31
$L1021:
	beqz	$3,$L1028
$L1020:
	li	$2,0
$L1025:
	sltu	$4,$5
	btnez	$L1024
	subu	$4,$4,$5
	or	$2,$3
$L1024:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1025
	beqz	$6,$L1035
$L1034:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L1028:
	li	$2,0
	beqz	$6,$L1035
	b	$L1034
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
	lw	$2,$L1041
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
	btnez	$L1039
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

$L1039:
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

	.type	__pool___mspabi_cmpf_1041, @object
__pool___mspabi_cmpf_1041:
	.align	2
$L1041:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_1041, @object
__pend___mspabi_cmpf_1041:
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
	lw	$2,$L1047
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
	btnez	$L1045
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

$L1045:
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

	.type	__pool___mspabi_cmpd_1047, @object
__pool___mspabi_cmpd_1047:
	.align	2
$L1047:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_1047, @object
__pend___mspabi_cmpd_1047:
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
	btnez	$L1064
	beqz	$5,$L1056
	li	$7,0
$L1052:
	li	$6,32
	li	$2,0
	b	$L1055
$L1065:
	addiu	$6,-1
	zeb	$6
	beqz	$6,$L1054
$L1055:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	sra	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L1065
$L1054:
	beqz	$7,$L1066
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1056:
	li	$2,0
$L1066:
	jr	$31
$L1064:
	neg	$5,$5
	li	$7,1
	b	$L1052
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
	btnez	$L1085
	li	$2,1
	li	$7,0
$L1068:
	slt	$5,0
	bteqz	$L1069
	neg	$5,$5
	move	$7,$2
$L1069:
	sltu	$5,$4
	move	$6,$4
	li	$3,1
	bteqz	$L1071
	li	$2,32
	li	$3,1
	b	$L1070
$L1073:
	addiu	$2,-1
	beqz	$2,$L1074
$L1070:
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	btnez	$L1073
$L1074:
	li	$2,0
	beqz	$3,$L1072
$L1071:
	li	$2,0
$L1076:
	sltu	$6,$5
	btnez	$L1075
	subu	$6,$6,$5
	or	$2,$3
$L1075:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1076
$L1072:
	beqz	$7,$L1086
	neg	$2,$2
$L1086:
	jr	$31
$L1085:
	neg	$4,$4
	li	$2,0
	li	$7,1
	b	$L1068
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
	btnez	$L1105
	li	$7,0
$L1088:
	slt	$5,0
	move	$2,$4
	bteqz	$L1089
	neg	$5,$5
$L1089:
	sltu	$5,$4
	li	$3,1
	bteqz	$L1096
	li	$6,32
	li	$3,1
	b	$L1090
$L1093:
	addiu	$6,-1
	beqz	$6,$L1094
$L1090:
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	btnez	$L1093
$L1094:
	beqz	$3,$L1106
$L1096:
	sltu	$2,$5
	btnez	$L1095
	subu	$2,$2,$5
$L1095:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1096
$L1092:
	beqz	$7,$L1107
	neg	$2,$2
$L1107:
	jr	$31
$L1105:
	neg	$4,$4
	li	$7,1
	b	$L1088
$L1106:
	move	$2,$4
	b	$L1092
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
	bteqz	$L1228
	srl	$3,$5,8
	srl	$3,$3,7
	bnez	$3,$L1111
	sll	$3,$5,1
	zeh	$3
	addiu	$sp,-16
	sltu	$3,$4
	sd	$17,8($sp)
	sd	$16,0($sp)
	bteqz	$L1112
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1113
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$2
	bteqz	$L1114
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1115
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$2
	bteqz	$L1116
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1117
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$2
	bteqz	$L1118
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1119
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1120
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1121
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$2
	bteqz	$L1122
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1123
	sll	$3,$5,7
	zeh	$3
	sltu	$3,$2
	bteqz	$L1124
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1125
	sll	$5,$5,8
	move	$3,$5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1126
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1127
	sll	$3,$5,1
	zeh	$3
	sltu	$3,$2
	bteqz	$L1128
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1129
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$2
	bteqz	$L1130
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1131
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$2
	bteqz	$L1132
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1133
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$2
	bteqz	$L1134
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1135
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1136
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1137
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$2
	bteqz	$L1138
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1139
	sll	$4,$5,7
	zeh	$4
	sltu	$4,$2
	bteqz	$L1140
	bnez	$4,$L1229
$L1141:
	bnez	$6,$L1180
	move	$2,$4
$L1180:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1128:
	sltu	$2,$3
	btnez	$L1174
	subu	$2,$2,$3
	li	$7,512
	zeh	$2
	move	$4,$7
$L1143:
	srl	$16,$7,2
	srl	$5,$3,2
	beqz	$16,$L1141
	sltu	$2,$5
	btnez	$L1144
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1144:
	srl	$16,$7,3
	srl	$5,$3,3
	beqz	$16,$L1141
	sltu	$2,$5
	btnez	$L1145
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1145:
	srl	$16,$7,4
	srl	$5,$3,4
	beqz	$16,$L1141
	sltu	$2,$5
	btnez	$L1146
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1146:
	srl	$16,$7,5
	srl	$5,$3,5
	beqz	$16,$L1141
	sltu	$2,$5
	btnez	$L1147
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1147:
	srl	$16,$7,6
	srl	$5,$3,6
	beqz	$16,$L1141
	sltu	$2,$5
	btnez	$L1148
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1148:
	srl	$16,$7,7
	srl	$5,$3,7
	beqz	$16,$L1141
	sltu	$2,$5
	btnez	$L1149
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1149:
	srl	$16,$7,8
	srl	$5,$3,8
	beqz	$16,$L1141
	sltu	$2,$5
	btnez	$L1150
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1150:
	srl	$17,$16,1
	srl	$3,$5,1
	beqz	$17,$L1141
	sltu	$2,$3
	btnez	$L1151
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1151:
	srl	$17,$16,2
	srl	$3,$5,2
	beqz	$17,$L1141
	sltu	$2,$3
	btnez	$L1152
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1152:
	srl	$17,$16,3
	srl	$3,$5,3
	beqz	$17,$L1141
	sltu	$2,$3
	btnez	$L1153
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1153:
	srl	$17,$16,4
	srl	$3,$5,4
	beqz	$17,$L1141
	sltu	$2,$3
	btnez	$L1154
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1154:
	srl	$17,$16,5
	srl	$3,$5,5
	beqz	$17,$L1141
	sltu	$2,$3
	btnez	$L1155
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1155:
	srl	$16,$16,6
	srl	$3,$5,6
	beqz	$16,$L1141
	sltu	$2,$3
	btnez	$L1156
	subu	$2,$2,$3
	zeh	$2
	or	$4,$16
$L1156:
	cmpi	$7,16384
	srl	$5,$5,7
	bteqz	$L1141
	sltu	$2,$5
	btnez	$L1164
	subu	$2,$2,$5
	li	$3,1
	zeh	$2
	or	$4,$3
	b	$L1141
$L1229:
	li	$3,32768
	addiu	$2,-32768
	li	$5,16384
	zeh	$2
	move	$16,$5
	move	$7,$3
	move	$4,$3
$L1161:
	sltu	$2,$5
	btnez	$L1143
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
	b	$L1143
$L1164:
	li	$2,0
	b	$L1141
$L1228:
	xor	$5,$4
	beqz	$5,$L1162
	li	$4,0
$L1223:
	bnez	$6,$L1230
	move	$2,$4
$L1230:
	jr	$31
$L1111:
	subu	$2,$4,$5
	zeh	$2
	li	$4,1
	b	$L1223
$L1112:
	sltu	$4,$3
	btnez	$L1166
	subu	$2,$4,$3
	zeh	$2
	li	$7,2
	li	$4,2
	b	$L1143
$L1113:
	li	$4,32767
	subu	$2,$2,$3
	and	$5,$4
	zeh	$2
	li	$16,1
	li	$7,2
	li	$4,2
	b	$L1161
$L1114:
	sltu	$2,$3
	btnez	$L1167
	subu	$2,$2,$3
	zeh	$2
	li	$7,4
	li	$4,4
	b	$L1143
$L1115:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,2
	li	$7,4
	li	$4,4
	b	$L1161
$L1116:
	sltu	$2,$3
	btnez	$L1168
	subu	$2,$2,$3
	zeh	$2
	li	$7,8
	li	$4,8
	b	$L1143
$L1117:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,4
	li	$7,8
	li	$4,8
	b	$L1161
$L1118:
	sltu	$2,$3
	btnez	$L1169
	subu	$2,$2,$3
	zeh	$2
	li	$7,16
	li	$4,16
	b	$L1143
$L1119:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,8
	li	$7,16
	li	$4,16
	b	$L1161
$L1120:
	sltu	$2,$3
	btnez	$L1170
	subu	$2,$2,$3
	zeh	$2
	li	$7,32
	li	$4,32
	b	$L1143
$L1121:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,16
	li	$7,32
	li	$4,32
	b	$L1161
$L1122:
	sltu	$2,$3
	btnez	$L1171
	subu	$2,$2,$3
	zeh	$2
	li	$7,64
	li	$4,64
	b	$L1143
$L1123:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,32
	li	$7,64
	li	$4,64
	b	$L1161
$L1124:
	sltu	$2,$3
	btnez	$L1172
	subu	$2,$2,$3
	zeh	$2
	li	$7,128
	li	$4,128
	b	$L1143
$L1125:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,64
	li	$7,128
	li	$4,128
	b	$L1161
$L1127:
	li	$7,255
	subu	$2,$2,$3
	addiu	$7,1
	zeh	$2
	srl	$5,$3,1
	li	$16,128
	move	$4,$7
	b	$L1161
$L1162:
	li	$4,1
	li	$2,0
	b	$L1223
$L1129:
	subu	$2,$2,$3
	li	$16,255
	li	$7,512
	zeh	$2
	srl	$5,$3,1
	addiu	$16,1
	move	$4,$7
	b	$L1161
$L1166:
	li	$7,2
$L1160:
	srl	$16,$7,1
	srl	$5,$3,1
	li	$4,0
	b	$L1161
$L1131:
	subu	$2,$2,$3
	li	$7,1024
	zeh	$2
	srl	$5,$3,1
	li	$16,512
	move	$4,$7
	b	$L1161
$L1167:
	li	$7,4
	b	$L1160
$L1133:
	subu	$2,$2,$3
	li	$7,2048
	zeh	$2
	srl	$5,$3,1
	li	$16,1024
	move	$4,$7
	b	$L1161
$L1168:
	li	$7,8
	b	$L1160
$L1135:
	subu	$2,$2,$3
	li	$7,4096
	zeh	$2
	srl	$5,$3,1
	li	$16,2048
	move	$4,$7
	b	$L1161
$L1137:
	subu	$2,$2,$3
	li	$7,8192
	zeh	$2
	srl	$5,$3,1
	li	$16,4096
	move	$4,$7
	b	$L1161
$L1169:
	li	$7,16
	b	$L1160
$L1139:
	subu	$2,$2,$3
	li	$7,16384
	zeh	$2
	srl	$5,$3,1
	li	$16,8192
	move	$4,$7
	b	$L1161
$L1170:
	li	$7,32
	b	$L1160
$L1171:
	li	$7,64
	b	$L1160
$L1140:
	srl	$3,$2,8
	srl	$3,$3,7
	bnez	$3,$L1165
	li	$3,32768
	move	$7,$3
	b	$L1160
$L1172:
	li	$7,128
	b	$L1160
$L1126:
	sltu	$2,$3
	btnez	$L1173
	li	$7,255
	subu	$2,$2,$3
	addiu	$7,1
	zeh	$2
	move	$4,$7
	b	$L1143
$L1165:
	li	$3,32768
	move	$7,$3
	move	$4,$3
	li	$2,0
	b	$L1143
$L1173:
	li	$7,255
	addiu	$7,1
	b	$L1160
$L1136:
	sltu	$2,$3
	btnez	$L1178
	subu	$2,$2,$3
	li	$7,8192
	zeh	$2
	move	$4,$7
	b	$L1143
$L1130:
	sltu	$2,$3
	btnez	$L1175
	subu	$2,$2,$3
	li	$7,1024
	zeh	$2
	move	$4,$7
	b	$L1143
$L1178:
	li	$7,8192
	b	$L1160
$L1175:
	li	$7,1024
	b	$L1160
$L1174:
	li	$7,512
	b	$L1160
$L1134:
	sltu	$2,$3
	btnez	$L1177
	subu	$2,$2,$3
	li	$7,4096
	zeh	$2
	move	$4,$7
	b	$L1143
$L1132:
	sltu	$2,$3
	btnez	$L1176
	subu	$2,$2,$3
	li	$7,2048
	zeh	$2
	move	$4,$7
	b	$L1143
$L1138:
	sltu	$2,$3
	btnez	$L1179
	subu	$2,$2,$3
	li	$7,16384
	zeh	$2
	move	$4,$7
	b	$L1143
$L1177:
	li	$7,4096
	b	$L1160
$L1176:
	li	$7,2048
	b	$L1160
$L1179:
	li	$7,16384
	b	$L1160
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
	bteqz	$L1233
	li	$2,32
	li	$3,1
$L1232:
	slt	$5,0
	btnez	$L1233
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1234
	addiu	$2,-1
	bnez	$2,$L1232
	bnez	$6,$L1247
$L1248:
	jr	$31
$L1234:
	beqz	$3,$L1241
$L1233:
	li	$2,0
$L1238:
	sltu	$4,$5
	btnez	$L1237
	subu	$4,$4,$5
	or	$2,$3
$L1237:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1238
	beqz	$6,$L1248
$L1247:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L1241:
	li	$2,0
	beqz	$6,$L1248
	b	$L1247
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
	beqz	$2,$L1250
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

$L1250:
	beqz	$5,$L1253
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

$L1253:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_1255, @object
__pool___ashldi3_1255:
	.align	2
$L1255:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_1255, @object
__pend___ashldi3_1255:
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
	beqz	$3,$L1257
	move	$2,$5
	dsll	$2,$6
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1257:
	beqz	$6,$L1260
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

$L1260:
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
	beqz	$2,$L1263
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

$L1263:
	move	$2,$4
	beqz	$5,$L1269
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

$L1269:
	jr	$31
	.type	__pool___ashrdi3_1268, @object
__pool___ashrdi3_1268:
	.align	2
$L1268:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_1268, @object
__pend___ashrdi3_1268:
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
	beqz	$2,$L1271
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

$L1271:
	move	$2,$4
	beqz	$6,$L1274
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

$L1274:
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
	ld	$5,$L1278
	move	$2,$4
	dsrl	$2,24
	and	$2,$5
	or	$3,$2
	ld	$5,$L1279
	move	$2,$4
	dsrl	$2,8
	and	$2,$5
	ld	$5,$L1280
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$5,$L1281
	or	$3,$2
	dsll	$2,$4,24
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L1282
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_1278, @object
__pool___bswapdi2_1278:
	.align	3
$L1278:
	.dword	16711680
$L1279:
	.dword	4278190080
$L1280:
	.dword	1095216660480
$L1281:
	.dword	280375465082880
$L1282:
	.dword	71776119061217280
	.type	__pend___bswapdi2_1278, @object
__pend___bswapdi2_1278:
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
	lw	$3,$L1285
	sll	$4,$4,8
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___bswapsi2_1285, @object
__pool___bswapsi2_1285:
	.align	2
$L1285:
	.word	16711680
	.type	__pend___bswapsi2_1285, @object
__pend___bswapsi2_1285:
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
	lw	$2,$L1290
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
	beqz	$3,$L1287
	subu	$2,$2,$4
	addu	$5,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

$L1287:
	addu	$5,$5,$6
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_1290, @object
__pool___clzsi2_1290:
	.align	2
$L1290:
	.word	65536
	.type	__pend___clzsi2_1290, @object
__pend___clzsi2_1290:
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
	lw	$2,$L1295
	sd	$16,40($sp)
	move	$16,$24
	move	$28,$2
	sw	$2,32($sp)
	addiu	$2,$16,-1
	sd	$31,48($sp)
	and	$2,$4
	beqz	$16,$L1292
	move	$4,$5
$L1293:
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

$L1292:
	li	$4,0
	b	$L1293
	.type	__pool___clzti2_1295, @object
__pool___clzti2_1295:
	.align	2
$L1295:
	.word	__gnu_local_gp
	.type	__pend___clzti2_1295, @object
__pend___clzti2_1295:
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
	btnez	$L1300
	slt	$6,$7
	btnez	$L1299
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1300
	sltu	$5,$4
	btnez	$L1301
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1300:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1299:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1301:
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
	btnez	$L1304
	slt	$6,$7
	btnez	$L1305
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1306
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1304:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1306:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1305:
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
	btnez	$L1311
	slt	$6,$4
	btnez	$L1310
	sltu	$5,$7
	btnez	$L1311
	sltu	$7,$5
	btnez	$L1312
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1311:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1310:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1312:
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
	lw	$2,$L1318
	sltu	$5,1
	move	$28,$2
	sd	$16,40($sp)
	sw	$2,32($sp)
	sd	$31,48($sp)
	move	$2,$5
	move	$16,$24
	beqz	$5,$L1316
	li	$4,0
$L1316:
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

	.type	__pool___ctzti2_1318, @object
__pool___ctzti2_1318:
	.align	2
$L1318:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_1318, @object
__pend___ctzti2_1318:
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
	lw	$2,$L1325
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	sd	$31,40($sp)
	move	$2,$28
	bnez	$5,$L1320
	bnez	$4,$L1324
	ld	$7,40($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L1320:
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

$L1324:
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

	.type	__pool___ffsti2_1325, @object
__pool___ffsti2_1325:
	.align	2
$L1325:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_1325, @object
__pend___ffsti2_1325:
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
	beqz	$2,$L1327
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

$L1327:
	move	$2,$4
	beqz	$5,$L1333
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

$L1333:
	jr	$31
	.type	__pool___lshrdi3_1332, @object
__pool___lshrdi3_1332:
	.align	2
$L1332:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_1332, @object
__pend___lshrdi3_1332:
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
	beqz	$2,$L1335
	dsrl	$4,$6
	li	$2,0
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1335:
	move	$2,$4
	beqz	$6,$L1338
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

$L1338:
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
	ld	$3,$L1355
	move	$2,$4
	dsrl	$2,1
	and	$2,$3
	dsubu	$4,$4,$2
	ld	$3,$L1356
	move	$2,$4
	dsrl	$2,2
	and	$4,$3
	and	$2,$3
	daddu	$2,$2,$4
	move	$3,$2
	dsrl	$3,4
	daddu	$3,$3,$2
	ld	$2,$L1357
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

	.type	__pool___popcountdi2_1355, @object
__pool___popcountdi2_1355:
	.align	3
$L1355:
	.dword	6148914691236517205
$L1356:
	.dword	3689348814741910323
$L1357:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1355, @object
__pend___popcountdi2_1355:
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
	lw	$3,$L1360
	srl	$2,$4,1
	and	$2,$3
	subu	$4,$4,$2
	lw	$2,$L1361
	srl	$3,$4,2
	and	$3,$2
	and	$4,$2
	addu	$3,$3,$4
	srl	$2,$3,4
	addu	$2,$2,$3
	lw	$3,$L1362
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

	.type	__pool___popcountsi2_1360, @object
__pool___popcountsi2_1360:
	.align	2
$L1360:
	.word	1431655765
$L1361:
	.word	858993459
$L1362:
	.word	252645135
	.type	__pend___popcountsi2_1360, @object
__pend___popcountsi2_1360:
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
	ld	$6,$L1365
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
	ld	$6,$L1366
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
	ld	$4,$L1367
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

	.type	__pool___popcountti2_1365, @object
__pool___popcountti2_1365:
	.align	3
$L1365:
	.dword	6148914691236517205
$L1366:
	.dword	3689348814741910323
$L1367:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1365, @object
__pend___popcountti2_1365:
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
	lw	$2,$L1376
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
	beqz	$2,$L1374
	ld	$2,$L1377
	move	$16,$3
	sd	$2,40($sp)
$L1371:
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
$L1369:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1370
$L1372:
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
	bnez	$2,$L1371
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	b	$L1372
$L1370:
	lw	$2,80($sp)
	slt	$2,0
	bteqz	$L1368
	lw	$17,%call16(__mips16_divdf3)($17)
	ld	$4,$L1377
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sd	$2,40($sp)
	move	$28,$6
$L1368:
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

$L1374:
	ld	$2,$L1377
	lw	$16,80($sp)
	sd	$2,40($sp)
	b	$L1369
	.type	__pool___powidf2_1376, @object
__pool___powidf2_1376:
	.align	2
$L1376:
	.word	__gnu_local_gp
	.align	3
$L1377:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_1376, @object
__pend___powidf2_1376:
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
	lw	$2,$L1386
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
	beqz	$2,$L1384
	lw	$2,$L1387
	move	$16,$3
	sw	$2,40($sp)
$L1381:
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
$L1379:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1380
$L1382:
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
	bnez	$2,$L1381
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	b	$L1382
$L1380:
	lw	$2,80($sp)
	slt	$2,0
	bteqz	$L1378
	lw	$17,%call16(__mips16_divsf3)($17)
	lw	$4,$L1387
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sw	$2,40($sp)
	move	$28,$6
$L1378:
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

$L1384:
	lw	$2,$L1387
	lw	$16,80($sp)
	sw	$2,40($sp)
	b	$L1379
	.type	__pool___powisf2_1386, @object
__pool___powisf2_1386:
	.align	2
$L1386:
	.word	__gnu_local_gp
$L1387:
	.word	1065353216
	.type	__pend___powisf2_1386, @object
__pend___powisf2_1386:
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
	btnez	$L1392
	sltu	$2,$3
	btnez	$L1391
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1392
	sltu	$5,$4
	btnez	$L1393
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1392:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1391:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1393:
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
	btnez	$L1396
	sltu	$2,$3
	btnez	$L1397
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1398
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1396:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1398:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1397:
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
	btnez	$L1403
	sltu	$6,$4
	btnez	$L1402
	sltu	$5,$7
	btnez	$L1403
	sltu	$7,$5
	btnez	$L1404
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1403:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1402:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1404:
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
