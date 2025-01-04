	.file	1 "mini-libc.c"
	.section .mdebug.abiO64
	.previous
	.section .gcc_compiled_long32
	.previous
	.nan	2008
	.module	fp=64
	.module	oddspreg
	.module	arch=mips64r5
	.module	dspr2
	.module	eva
	.module	mcu
	.module	mdmx
	.module	mt
	.module	smartmips
	.module	virt
	.module	xpa
	.module	mips16e2
	.module	crc
	.module	ginv
	.module	loongson-mmi
	.module	loongson-ext2
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
	sd	$4,16($sp)
	sd	$5,8($sp)
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
	sd	$4,16($sp)
	sd	$5,8($sp)
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
	addu	$7,$4,$6
	beqz	$6,$L19
$L9:
	addiu	$7,-1
	lb	$3,-1($5)
	cmp	$2,$7
	addiu	$5,-1
	sb	$3,0($7)
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
	bnez	$6,$L33
	b	$L40
$L35:
	addiu	$6,-1
	addiu	$4,1
	beqz	$6,$L36
$L33:
	lbu	$3,0($4)
	xor	$3,$5
	bnez	$3,$L35
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L36:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L40:
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
	beqz	$6,$L46
$L55:
	lbu	$2,0($4)
	lbu	$3,0($5)
	cmp	$2,$3
	btnez	$L54
	addiu	$6,-1
	addiu	$4,1
	addiu	$5,1
	bnez	$6,$L55
$L46:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L54:
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
	addiu	$sp,-48
	lw	$2,$L62
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	beqz	$6,$L57
	move	$7,$28
	lw	$2,%call16(memcpy)($7)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L57:
	ld	$7,40($sp)
	move	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool_memcpy_62, @object
__pool_memcpy_62:
	.align	2
$L62:
	.word	__gnu_local_gp
	.type	__pend_memcpy_62, @object
__pend_memcpy_62:
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
$L64:
	cmp	$6,$4
	bteqz	$L67
	move	$2,$6
	lbu	$3,0($2)
	addiu	$6,-1
	xor	$3,$5
	bnez	$3,$L64
	jr	$31
$L67:
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
	addiu	$sp,-48
	lw	$2,$L73
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	beqz	$6,$L71
	move	$7,$28
	lw	$2,%call16(memset)($7)
	zeb	$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L71:
	ld	$7,40($sp)
	move	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
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
	lb	$4,1($5)
	addiu	$5,1
	addiu	$2,1
	sb	$4,0($2)
	bnez	$4,$L76
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
	beqz	$3,$L90
$L83:
	zeb	$3
	xor	$3,$5
	bnez	$3,$L85
$L90:
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
	b	$L94
$L97:
	addiu	$2,1
	beqz	$3,$L96
$L94:
	lb	$3,0($2)
	cmp	$3,$5
	btnez	$L97
	jr	$31
$L96:
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
	b	$L108
$L99:
	beqz	$3,$L100
	addiu	$4,1
	addiu	$5,1
$L108:
	lb	$3,0($4)
	lb	$2,0($5)
	cmp	$3,$2
	bteqz	$L99
	zeb	$3
$L100:
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
	beqz	$2,$L112
	move	$5,$4
$L111:
	lb	$3,1($5)
	addiu	$5,1
	bnez	$3,$L111
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$5,$4
	.set	macro
	.set	reorder

$L112:
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
	beqz	$6,$L122
	lbu	$2,0($4)
	beqz	$2,$L124
	lbu	$3,0($5)
	addiu	$6,-1
	addu	$6,$4,$6
	beqz	$3,$L117
$L126:
	cmp	$4,$6
	bteqz	$L117
	cmp	$3,$2
	btnez	$L117
	lbu	$2,1($4)
	addiu	$4,1
	addiu	$7,$5,1
	beqz	$2,$L125
	move	$5,$7
	lbu	$3,0($5)
	bnez	$3,$L126
$L117:
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L122:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L125:
	lbu	$3,1($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L124:
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
	btnez	$L131
	srl	$2,$6,1
	sll	$3,$2,1
	addu	$6,$4,$3
$L129:
	lbu	$7,1($4)
	lbu	$2,0($4)
	addiu	$4,2
	cmp	$4,$6
	sb	$7,0($5)
	sb	$2,1($5)
	addiu	$5,2
	btnez	$L129
$L131:
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
	bteqz	$L136
	li	$2,9
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
	btnez	$L139
	li	$2,127
	xor	$4,$2
	sltu	$4,1
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
	bteqz	$L146
	addiu	$4,-9
	sltu	$4,5
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L146:
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
	btnez	$L151
	li	$3,32
	or	$4,$3
	addiu	$4,-97
	sltu	$4,6
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L151:
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
	lw	$2,$L163
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
	bnez	$2,$L156
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
	bnez	$2,$L157
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
	bteqz	$L162
	ld	$2,$L164
$L153:
	move	$6,$28
	lw	$4,%got(__mips16_ret_df)($6)
	jalr	$4
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
	lw	$7,%call16(__mips16_subdf3)($17)
	ld	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	b	$L153
$L156:
	move	$2,$16
	b	$L153
$L157:
	ld	$2,72($sp)
	b	$L153
	.type	__pool_fdim_163, @object
__pool_fdim_163:
	.align	2
$L163:
	.word	__gnu_local_gp
	.align	3
$L164:
	.word	0
	.word	0
	.type	__pend_fdim_163, @object
__pend_fdim_163:
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
	lw	$2,$L175
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
	bnez	$2,$L168
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
	bnez	$2,$L169
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
	bteqz	$L174
	lw	$2,$L176
$L165:
	move	$6,$28
	lw	$4,%got(__mips16_ret_sf)($6)
	jalr	$4
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L174:
	lw	$7,%call16(__mips16_subsf3)($17)
	lw	$5,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	b	$L165
$L168:
	move	$2,$16
	b	$L165
$L169:
	lw	$2,72($sp)
	b	$L165
	.type	__pool_fdimf_175, @object
__pool_fdimf_175:
	.align	2
$L175:
	.word	__gnu_local_gp
$L176:
	.word	0
	.type	__pend_fdimf_175, @object
__pend_fdimf_175:
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
	lw	$2,$L190
	addiu	$sp,-64
	move	$28,$2
	sd	$16,40($sp)
	move	$16,$5
	move	$5,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_unorddf2)($5)
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
	bnez	$2,$L185
	move	$4,$28
	lw	$2,%call16(__mips16_unorddf2)($4)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L184
	move	$3,$17
	move	$6,$16
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L189
	move	$7,$28
	lw	$2,%call16(__mips16_ltdf2)($7)
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
	btnez	$L185
	move	$16,$17
$L185:
	move	$2,$16
$L177:
	move	$17,$28
	lw	$5,%got(__mips16_ret_df)($17)
	jalr	$5
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L189:
	bnez	$3,$L185
$L184:
	move	$2,$17
	b	$L177
	.type	__pool_fmax_190, @object
__pool_fmax_190:
	.align	2
$L190:
	.word	__gnu_local_gp
	.type	__pend_fmax_190, @object
__pend_fmax_190:
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
	lw	$2,$L204
	addiu	$sp,-64
	move	$28,$2
	sd	$16,40($sp)
	move	$16,$5
	move	$5,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_unordsf2)($5)
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
	move	$4,$28
	lw	$2,%call16(__mips16_unordsf2)($4)
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
	lw	$6,$L205
	move	$7,$6
	and	$7,$17
	and	$6,$16
	xor	$6,$7
	bnez	$6,$L203
	move	$3,$28
	lw	$2,%call16(__mips16_ltsf2)($3)
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
	move	$17,$28
	lw	$5,%got(__mips16_ret_sf)($17)
	jalr	$5
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
	bnez	$7,$L199
$L198:
	move	$2,$17
	b	$L191
	.type	__pool_fmaxf_204, @object
__pool_fmaxf_204:
	.align	2
$L204:
	.word	__gnu_local_gp
$L205:
	.word	-2147483648
	.type	__pend_fmaxf_204, @object
__pend_fmaxf_204:
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
	lw	$2,$L219
	addiu	$sp,-64
	move	$28,$2
	sd	$16,40($sp)
	move	$16,$5
	move	$5,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_unorddf2)($5)
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
	bnez	$2,$L214
	move	$4,$28
	lw	$2,%call16(__mips16_unorddf2)($4)
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L213
	move	$3,$17
	move	$6,$16
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L218
	move	$7,$28
	lw	$2,%call16(__mips16_ltdf2)($7)
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
	btnez	$L214
	move	$16,$17
$L214:
	move	$2,$16
$L206:
	move	$17,$28
	lw	$5,%got(__mips16_ret_df)($17)
	jalr	$5
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L218:
	bnez	$3,$L214
$L213:
	move	$2,$17
	b	$L206
	.type	__pool_fmaxl_219, @object
__pool_fmaxl_219:
	.align	2
$L219:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_219, @object
__pend_fmaxl_219:
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
	lw	$2,$L233
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$5
	move	$5,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_unorddf2)($5)
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
	bnez	$2,$L226
	move	$4,$28
	lw	$2,%call16(__mips16_unorddf2)($4)
	move	$5,$17
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L228
	move	$3,$16
	move	$6,$17
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L232
	move	$7,$28
	lw	$2,%call16(__mips16_ltdf2)($7)
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
	btnez	$L228
	move	$16,$17
$L228:
	move	$2,$16
$L220:
	move	$17,$28
	lw	$5,%got(__mips16_ret_df)($17)
	jalr	$5
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
$L226:
	move	$2,$17
	b	$L220
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
	lw	$2,$L247
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$5
	move	$5,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_unordsf2)($5)
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
	move	$4,$28
	lw	$2,%call16(__mips16_unordsf2)($4)
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
	lw	$6,$L248
	move	$7,$6
	and	$7,$16
	and	$6,$17
	xor	$6,$7
	bnez	$6,$L246
	move	$3,$28
	lw	$2,%call16(__mips16_ltsf2)($3)
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
	move	$17,$28
	lw	$5,%got(__mips16_ret_sf)($17)
	jalr	$5
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
	bnez	$7,$L242
$L240:
	move	$2,$17
	b	$L234
	.type	__pool_fminf_247, @object
__pool_fminf_247:
	.align	2
$L247:
	.word	__gnu_local_gp
$L248:
	.word	-2147483648
	.type	__pend_fminf_247, @object
__pend_fminf_247:
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
	lw	$2,$L262
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$5
	move	$5,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_unorddf2)($5)
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
	bnez	$2,$L255
	move	$4,$28
	lw	$2,%call16(__mips16_unorddf2)($4)
	move	$5,$17
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L257
	move	$3,$16
	move	$6,$17
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L261
	move	$7,$28
	lw	$2,%call16(__mips16_ltdf2)($7)
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
	btnez	$L257
	move	$16,$17
$L257:
	move	$2,$16
$L249:
	move	$17,$28
	lw	$5,%got(__mips16_ret_df)($17)
	jalr	$5
	ld	$7,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L261:
	bnez	$3,$L257
$L255:
	move	$2,$17
	b	$L249
	.type	__pool_fminl_262, @object
__pool_fminl_262:
	.align	2
$L262:
	.word	__gnu_local_gp
	.type	__pend_fminl_262, @object
__pend_fminl_262:
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
	lw	$3,$L268
	beqz	$4,$L264
	lw	$5,$L269
$L265:
	li	$2,63
	and	$2,$4
	addu	$6,$5,$2
	lbu	$7,0($6)
	srl	$4,$4,6
	sb	$7,0($3)
	addiu	$3,1
	bnez	$4,$L265
$L264:
	li	$4,0
	lw	$2,$L268
	.set	noreorder
	.set	nomacro
	jr	$31
	sb	$4,0($3)
	.set	macro
	.set	reorder

	.type	__pool_l64a_268, @object
__pool_l64a_268:
	.align	2
$L268:
	.word	s.0
$L269:
	.word	digits
	.type	__pend_l64a_268, @object
__pend_l64a_268:
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
	lw	$2,$L271
	dsrl	$4,32
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.type	__pool_srand_271, @object
__pool_srand_271:
	.align	2
$L271:
	.word	seed
	.type	__pend_srand_271, @object
__pend_srand_271:
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
	lw	$3,$L274
	ld	$4,0($3)
	ld	$5,$L275
	gsdmultu	$2,$4,$5
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_274, @object
__pool_rand_274:
	.align	2
$L274:
	.word	seed
	.align	3
$L275:
	.dword	6364136223846793005
	.type	__pend_rand_274, @object
__pend_rand_274:
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
	beqz	$5,$L282
	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$3,0($4)
	beqz	$3,$L283
	sw	$4,4($3)
$L283:
	jr	$31
$L282:
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
	beqz	$2,$L285
	lw	$3,4($4)
	sw	$3,4($2)
$L285:
	lw	$4,4($4)
	beqz	$4,$L293
	sw	$2,0($4)
$L293:
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
	sw	$6,88($sp)
	sw	$4,72($sp)
	lw	$4,88($sp)
	lw	$2,$L311
	lw	$6,0($4)
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	move	$28,$2
	sw	$2,32($sp)
	sw	$5,80($sp)
	sw	$7,96($sp)
	sw	$6,44($sp)
	beqz	$6,$L295
	move	$17,$5
	li	$16,0
	b	$L297
$L310:
	lw	$7,44($sp)
	lw	$5,96($sp)
	addiu	$16,1
	cmp	$7,$16
	addu	$17,$17,$5
	bteqz	$L295
$L297:
	lw	$2,104($sp)
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
$L294:
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

$L295:
	lw	$3,44($sp)
	lw	$5,80($sp)
	lw	$4,88($sp)
	lw	$7,96($sp)
	lw	$16,96($sp)
	addiu	$6,$3,1
	gsmultu	$2,$16,$3
	addu	$17,$5,$2
	sw	$6,0($4)
	sw	$17,40($sp)
	beqz	$7,$L294
	move	$3,$28
	lw	$16,%call16(memmove)($3)
	lw	$5,72($sp)
	move	$6,$7
	move	$4,$17
	.set	noreorder
	.set	nomacro
	jalr	$16
	move	$25,$16
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
$L324:
	lw	$5,44($sp)
	lw	$4,96($sp)
	addiu	$16,1
	cmp	$5,$16
	addu	$17,$17,$4
	bteqz	$L313
$L315:
	lw	$2,104($sp)
	lw	$4,72($sp)
	move	$5,$17
	move	$25,$2
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$17,40($sp)
	.set	macro
	.set	reorder

	bnez	$2,$L324
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
	li	$6,0
	sw	$6,40($sp)
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
	btnez	$L327
	jr	$31
$L327:
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
$L335:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L329
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L329
	cmpi	$3,43
	bteqz	$L330
	cmpi	$3,45
	bteqz	$L331
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L350
	move	$5,$4
	li	$7,0
$L333:
	li	$2,0
$L337:
	sll	$4,$2,2
	addu	$6,$4,$2
	sll	$4,$6,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L337
	bnez	$7,$L351
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L329:
	addiu	$4,1
	b	$L335
$L331:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L340
	li	$7,1
	b	$L333
$L340:
	li	$2,0
$L351:
	jr	$31
$L330:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L333
$L350:
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
$L357:
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
	move	$5,$4
	bteqz	$L375
$L374:
	li	$7,0
$L358:
	li	$2,0
$L361:
	sll	$4,$2,2
	addu	$6,$4,$2
	sll	$4,$6,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L361
	bnez	$7,$L376
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L353:
	addiu	$4,1
	b	$L357
$L355:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,1
	btnez	$L358
$L375:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L354:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	btnez	$L374
	li	$2,0
$L376:
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
$L384:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L378
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L378
	cmpi	$3,43
	bteqz	$L379
	cmpi	$3,45
	bteqz	$L380
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L399
	move	$5,$4
	li	$7,0
$L382:
	li	$2,0
$L386:
	dsll	$4,$2,2
	daddu	$6,$4,$2
	addiu	$5,1
	dsll	$4,$6,1
	move	$6,$3
	lb	$3,0($5)
	dsubu	$2,$4,$6
	addiu	$3,-48
	sltu	$3,10
	btnez	$L386
	bnez	$7,$L400
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$6,$4
	.set	macro
	.set	reorder

$L378:
	addiu	$4,1
	b	$L384
$L380:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L389
	li	$7,1
	b	$L382
$L389:
	li	$2,0
$L400:
	jr	$31
$L379:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L382
$L399:
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
	beqz	$6,$L402
	move	$16,$6
$L405:
	lw	$5,80($sp)
	lw	$2,96($sp)
	srl	$17,$16,1
	gsmultu	$4,$17,$2
	addu	$6,$5,$4
	lw	$7,104($sp)
	sw	$6,40($sp)
	lw	$5,40($sp)
	lw	$4,72($sp)
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$25,$7
	.set	macro
	.set	reorder

	slt	$2,0
	btnez	$L406
	beqz	$2,$L401
	lw	$2,40($sp)
	lw	$3,96($sp)
	addiu	$16,-1
	addu	$4,$2,$3
	subu	$16,$16,$17
	sw	$4,80($sp)
	bnez	$16,$L405
$L402:
	li	$17,0
	sw	$17,40($sp)
$L401:
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

$L406:
	move	$16,$17
	bnez	$16,$L405
	b	$L402
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
	beqz	$6,$L420
$L428:
	lw	$5,80($sp)
	sra	$2,$17,1
	lw	$4,96($sp)
	sw	$2,40($sp)
	gsmultu	$16,$2,$4
	lw	$2,104($sp)
	lw	$6,112($sp)
	lw	$4,72($sp)
	addu	$16,$5,$16
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	beqz	$2,$L415
	slt	$2,1
	btnez	$L418
	lw	$7,96($sp)
	addiu	$17,-1
	addu	$3,$16,$7
	sra	$17,$17,1
	sw	$3,80($sp)
	bnez	$17,$L428
$L420:
	li	$16,0
$L415:
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

$L418:
	lw	$6,40($sp)
	beqz	$6,$L420
	move	$17,$6
	b	$L428
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
	btnez	$L434
	jr	$31
$L434:
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
	btnez	$L438
	jr	$31
$L438:
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
	btnez	$L442
	jr	$31
$L442:
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
	beqz	$3,$L452
$L445:
	xor	$3,$5
	beqz	$3,$L453
	lw	$3,4($4)
	addiu	$4,4
	bnez	$3,$L445
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L453:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L452:
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
	b	$L463
$L464:
	beqz	$2,$L456
	addiu	$4,4
	addiu	$5,4
$L463:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	bteqz	$L464
$L456:
	slt	$2,$3
	btnez	$L459
	slt	$3,$2
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L459:
	li	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$4
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
$L466:
	lw	$6,0($5)
	addiu	$3,4
	sw	$6,-4($3)
	addiu	$5,4
	bnez	$6,$L466
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
	beqz	$2,$L471
	move	$5,$4
$L470:
	lw	$3,4($5)
	addiu	$5,4
	bnez	$3,$L470
	subu	$4,$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$4,2
	.set	macro
	.set	reorder

$L471:
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
	beqz	$6,$L479
$L485:
	lw	$3,0($4)
	lw	$2,0($5)
	xor	$2,$3
	bnez	$2,$L476
	beqz	$3,$L476
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L485
$L479:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L476:
	lw	$4,0($4)
	lw	$5,0($5)
	slt	$4,$5
	btnez	$L486
	slt	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L486:
	li	$6,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$6
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
	b	$L495
$L490:
	addiu	$6,-1
	addiu	$4,4
	beqz	$6,$L491
$L488:
	lw	$3,0($4)
	xor	$3,$5
	bnez	$3,$L490
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

$L495:
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
	beqz	$6,$L502
$L511:
	lw	$3,0($4)
	lw	$2,0($5)
	cmp	$3,$2
	btnez	$L510
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L511
$L502:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L510:
	slt	$3,$2
	btnez	$L512
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L512:
	li	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$4
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
	addiu	$sp,-48
	lw	$2,$L519
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	beqz	$6,$L514
	move	$7,$28
	lw	$2,%call16(memcpy)($7)
	sll	$6,$6,2
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L514:
	ld	$7,40($sp)
	move	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool_wmemcpy_519, @object
__pool_wmemcpy_519:
	.align	2
$L519:
	.word	__gnu_local_gp
	.type	__pend_wmemcpy_519, @object
__pend_wmemcpy_519:
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
	bteqz	$L539
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	subu	$17,$4,$5
	move	$16,$4
	sll	$4,$6,2
	sltu	$17,$4
	move	$7,$5
	addiu	$3,$6,-1
	bteqz	$L538
	beqz	$6,$L527
	sll	$16,$3,2
$L525:
	addu	$7,$5,$16
	addu	$17,$2,$16
	lw	$3,0($7)
	addiu	$16,-4
	addiu	$4,$16,4
	sw	$3,0($17)
	bnez	$4,$L525
$L527:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L538:
	beqz	$6,$L527
$L523:
	lw	$5,0($7)
	addiu	$3,-1
	addiu	$6,$3,1
	sw	$5,0($16)
	addiu	$7,4
	addiu	$16,4
	bnez	$6,$L523
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L539:
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
	beqz	$6,$L547
	move	$6,$4
$L542:
	addiu	$3,-1
	addiu	$7,$3,1
	sw	$5,0($6)
	addiu	$6,4
	bnez	$7,$L542
$L547:
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
	bteqz	$L549
	addu	$7,$4,$6
	addu	$5,$5,$6
	beqz	$6,$L561
$L551:
	addiu	$7,-1
	lb	$3,0($7)
	cmp	$4,$7
	addiu	$5,-1
	sb	$3,0($5)
	btnez	$L551
	jr	$31
$L549:
	cmp	$4,$5
	bteqz	$L561
	beqz	$6,$L561
	addu	$6,$4,$6
$L552:
	lb	$2,0($4)
	addiu	$4,1
	cmp	$4,$6
	sb	$2,0($5)
	addiu	$5,1
	btnez	$L552
$L561:
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
	li	$3,63
	neg	$5,$5
	and	$5,$3
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
	li	$3,63
	neg	$5,$5
	and	$5,$3
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
	li	$3,31
	neg	$5,$5
	and	$5,$3
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
	li	$3,31
	neg	$5,$5
	and	$5,$3
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
	li	$3,31
	neg	$5,$5
	and	$5,$3
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
	li	$3,31
	neg	$5,$5
	and	$5,$3
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
	lw	$7,$L576
	sll	$2,$4,24
	srl	$6,$4,8
	li	$5,65280
	or	$2,$3
	and	$6,$5
	sll	$4,$4,8
	or	$2,$6
	and	$4,$7
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool_bswap_32_576, @object
__pool_bswap_32_576:
	.align	2
$L576:
	.word	16711680
	.type	__pend_bswap_32_576, @object
__pend_bswap_32_576:
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
	move	$5,$4
	move	$6,$4
	dsll	$3,$4,56
	dsrl	$5,56
	li	$7,65280
	dsrl	$6,40
	and	$6,$7
	or	$3,$5
	move	$2,$4
	ld	$5,$L579
	ld	$7,$L580
	or	$3,$6
	dsrl	$2,24
	move	$6,$4
	and	$2,$5
	dsrl	$6,8
	ld	$5,$L581
	and	$6,$7
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$7,$L582
	or	$3,$6
	or	$3,$2
	dsll	$6,$4,24
	dsll	$2,$4,40
	ld	$4,$L583
	and	$6,$7
	or	$3,$6
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_579, @object
__pool_bswap_64_579:
	.align	3
$L579:
	.dword	16711680
$L580:
	.dword	4278190080
$L581:
	.dword	1095216660480
$L582:
	.dword	280375465082880
$L583:
	.dword	71776119061217280
	.type	__pend_bswap_64_579, @object
__pend_bswap_64_579:
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
	b	$L587
$L590:
	cmpi	$2,32
	bteqz	$L589
$L587:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	addiu	$2,1
	beqz	$3,$L590
	jr	$31
$L589:
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
	beqz	$4,$L594
	li	$2,1
	and	$2,$4
	bnez	$2,$L597
	li	$2,1
$L593:
	sra	$4,$4,1
	li	$3,1
	and	$3,$4
	addiu	$2,1
	beqz	$3,$L593
	jr	$31
$L594:
	li	$2,0
$L597:
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
	lw	$2,$L604
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$5,$L605
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
	btnez	$L602
	lw	$7,%call16(__mips16_gtsf2)($17)
	lw	$5,$L606
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$4,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$4,$24
	sltu	$4,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L602:
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

	.type	__pool_gl_isinff_604, @object
__pool_gl_isinff_604:
	.align	2
$L604:
	.word	__gnu_local_gp
$L605:
	.word	-8388609
$L606:
	.word	2139095039
	.type	__pend_gl_isinff_604, @object
__pend_gl_isinff_604:
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
	lw	$2,$L612
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L613
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
	btnez	$L610
	lw	$7,%call16(__mips16_gtdf2)($17)
	ld	$5,$L614
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$4,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$4,$24
	sltu	$4,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L610:
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

	.type	__pool_gl_isinfd_612, @object
__pool_gl_isinfd_612:
	.align	2
$L612:
	.word	__gnu_local_gp
	.align	3
$L613:
	.word	-1
	.word	-1048577
$L614:
	.word	-1
	.word	2146435071
	.type	__pend_gl_isinfd_612, @object
__pend_gl_isinfd_612:
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
	lw	$2,$L620
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L621
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
	btnez	$L618
	lw	$7,%call16(__mips16_gtdf2)($17)
	ld	$5,$L622
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$4,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$4,$24
	sltu	$4,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L618:
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

	.type	__pool_gl_isinfl_620, @object
__pool_gl_isinfl_620:
	.align	2
$L620:
	.word	__gnu_local_gp
	.align	3
$L621:
	.word	-1
	.word	-1048577
$L622:
	.word	-1
	.word	2146435071
	.type	__pend_gl_isinfl_620, @object
__pend_gl_isinfl_620:
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
	lw	$2,$L625
	move	$28,$2
	addiu	$sp,-56
	move	$6,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_floatsidf)($6)
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

	.type	__pool__Qp_itoq_625, @object
__pool__Qp_itoq_625:
	.align	2
$L625:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_625, @object
__pend__Qp_itoq_625:
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
	lw	$2,$L644
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
	bnez	$2,$L627
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
	beqz	$2,$L627
	slt	$16,0
	btnez	$L642
	lw	$5,$L645
$L629:
	li	$4,1
	and	$4,$16
	beqz	$4,$L630
$L631:
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
$L630:
	srl	$6,$16,31
	addu	$16,$6,$16
	sra	$16,$16,1
	beqz	$16,$L627
	lw	$2,%call16(__mips16_mulsf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	li	$7,1
	and	$7,$16
	move	$28,$6
	move	$5,$2
	bnez	$7,$L631
$L643:
	srl	$3,$16,31
	addu	$4,$3,$16
	lw	$2,%call16(__mips16_mulsf3)($17)
	sra	$16,$4,1
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	li	$7,1
	and	$7,$16
	move	$28,$6
	move	$5,$2
	bnez	$7,$L631
	b	$L643
$L627:
	move	$5,$28
	lw	$17,%got(__mips16_ret_sf)($5)
	.set	noreorder
	.set	nomacro
	jalr	$17
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

$L642:
	lw	$5,$L646
	b	$L629
	.type	__pool_ldexpf_644, @object
__pool_ldexpf_644:
	.align	2
$L644:
	.word	__gnu_local_gp
$L645:
	.word	1073741824
$L646:
	.word	1056964608
	.type	__pend_ldexpf_644, @object
__pend_ldexpf_644:
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
	lw	$2,$L665
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
	bnez	$2,$L648
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
	beqz	$2,$L648
	slt	$16,0
	btnez	$L663
	ld	$5,$L666
$L650:
	li	$4,1
	and	$4,$16
	beqz	$4,$L651
$L652:
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
$L651:
	srl	$6,$16,31
	addu	$16,$6,$16
	sra	$16,$16,1
	beqz	$16,$L648
	lw	$2,%call16(__mips16_muldf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	li	$7,1
	and	$7,$16
	move	$28,$6
	move	$5,$2
	bnez	$7,$L652
$L664:
	srl	$3,$16,31
	addu	$4,$3,$16
	lw	$2,%call16(__mips16_muldf3)($17)
	sra	$16,$4,1
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	li	$7,1
	and	$7,$16
	move	$28,$6
	move	$5,$2
	bnez	$7,$L652
	b	$L664
$L648:
	move	$5,$28
	lw	$17,%got(__mips16_ret_df)($5)
	.set	noreorder
	.set	nomacro
	jalr	$17
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

$L663:
	ld	$5,$L667
	b	$L650
	.type	__pool_ldexp_665, @object
__pool_ldexp_665:
	.align	2
$L665:
	.word	__gnu_local_gp
	.align	3
$L666:
	.word	0
	.word	1073741824
$L667:
	.word	0
	.word	1071644672
	.type	__pend_ldexp_665, @object
__pend_ldexp_665:
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
	lw	$2,$L686
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
	bnez	$2,$L669
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
	beqz	$2,$L669
	slt	$16,0
	btnez	$L684
	ld	$5,$L687
$L671:
	li	$4,1
	and	$4,$16
	beqz	$4,$L672
$L673:
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
$L672:
	srl	$6,$16,31
	addu	$16,$6,$16
	sra	$16,$16,1
	beqz	$16,$L669
	lw	$2,%call16(__mips16_muldf3)($17)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	li	$7,1
	and	$7,$16
	move	$28,$6
	move	$5,$2
	bnez	$7,$L673
$L685:
	srl	$3,$16,31
	addu	$4,$3,$16
	lw	$2,%call16(__mips16_muldf3)($17)
	sra	$16,$4,1
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$5
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	li	$7,1
	and	$7,$16
	move	$28,$6
	move	$5,$2
	bnez	$7,$L673
	b	$L685
$L669:
	move	$5,$28
	lw	$17,%got(__mips16_ret_df)($5)
	.set	noreorder
	.set	nomacro
	jalr	$17
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

$L684:
	ld	$5,$L688
	b	$L671
	.type	__pool_ldexpl_686, @object
__pool_ldexpl_686:
	.align	2
$L686:
	.word	__gnu_local_gp
	.align	3
$L687:
	.word	0
	.word	1073741824
$L688:
	.word	0
	.word	1071644672
	.type	__pend_ldexpl_686, @object
__pend_ldexpl_686:
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
	beqz	$6,$L700
	addiu	$sp,-8
	move	$3,$4
	sd	$16,0($sp)
	addu	$16,$5,$6
$L691:
	lbu	$7,0($3)
	lbu	$6,0($5)
	addiu	$5,1
	xor	$7,$6
	cmp	$5,$16
	sb	$7,0($3)
	addiu	$3,1
	btnez	$L691
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L700:
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
	beqz	$3,$L708
	move	$3,$4
$L703:
	lb	$7,1($3)
	addiu	$3,1
	bnez	$7,$L703
$L716:
	beqz	$6,$L705
$L718:
	lb	$7,0($5)
	sb	$7,0($3)
	beqz	$7,$L719
	addiu	$6,-1
	addiu	$5,1
	addiu	$3,1
	bnez	$6,$L718
$L705:
	li	$4,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sb	$4,0($3)
	.set	macro
	.set	reorder

$L719:
	jr	$31
$L708:
	move	$3,$4
	b	$L716
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
	beqz	$5,$L730
$L721:
	addu	$3,$4,$2
	lb	$6,0($3)
	bnez	$6,$L729
$L730:
	jr	$31
$L729:
	addiu	$2,1
	cmp	$5,$2
	btnez	$L721
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
	lb	$7,0($4)
	move	$2,$4
	beqz	$7,$L740
$L732:
	move	$6,$5
$L735:
	lb	$3,0($6)
	beqz	$3,$L741
	xor	$3,$7
	addiu	$6,1
	bnez	$3,$L735
	jr	$31
$L741:
	lb	$7,1($2)
	addiu	$2,1
	bnez	$7,$L732
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L740:
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
	li	$6,0
	b	$L745
$L748:
	move	$2,$4
	move	$6,$2
	addiu	$4,1
	beqz	$3,$L749
$L745:
	lb	$3,0($4)
	cmp	$3,$5
	bteqz	$L748
	move	$2,$6
	move	$6,$2
	addiu	$4,1
	bnez	$3,$L745
$L749:
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
	beqz	$17,$L761
	move	$8,$5
$L752:
	lb	$3,1($5)
	addiu	$5,1
	bnez	$3,$L752
	move	$2,$8
	subu	$5,$5,$2
	bnez	$5,$L770
	b	$L761
$L775:
	addiu	$4,1
	beqz	$3,$L774
$L770:
	lb	$3,0($4)
	cmp	$3,$17
	btnez	$L775
	addiu	$16,$5,-1
	zeb	$3
	addu	$16,$4,$16
	move	$2,$8
	move	$7,$4
$L754:
	lbu	$6,0($2)
	beqz	$6,$L755
	cmp	$7,$16
	bteqz	$L755
	xor	$6,$3
	bnez	$6,$L755
	lbu	$3,1($7)
	addiu	$7,1
	addiu	$2,1
	bnez	$3,$L754
$L755:
	lbu	$6,0($2)
	xor	$6,$3
	beqz	$6,$L761
	addiu	$4,1
	b	$L770
$L774:
	ld	$17,8($sp)
	ld	$16,0($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L761:
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
	lw	$2,$L788
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L789
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
	btnez	$L787
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L789
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L780
	lw	$7,%call16(__mips16_ltdf2)($17)
	ld	$5,$L789
	.set	noreorder
	.set	nomacro
	jalr	$7
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L779
$L780:
	move	$6,$28
	lw	$5,%got(__mips16_ret_df)($6)
	.set	noreorder
	.set	nomacro
	jalr	$5
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

$L787:
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L789
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L780
$L779:
	ld	$4,$L790
	xor	$16,$4
	b	$L780
	.type	__pool_copysign_788, @object
__pool_copysign_788:
	.align	2
$L788:
	.word	__gnu_local_gp
	.align	3
$L789:
	.word	0
	.word	0
$L790:
	.dword	-9223372036854775808
	.type	__pend_copysign_788, @object
__pend_copysign_788:
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
	beqz	$7,$L812
	sltu	$5,$7
	btnez	$L799
	addiu	$sp,-16
	subu	$5,$5,$7
	sd	$17,8($sp)
	addu	$17,$4,$5
	sltu	$17,$4
	sd	$16,0($sp)
	btnez	$L802
	lb	$4,0($6)
	move	$9,$6
	move	$8,$4
	addiu	$6,$7,-1
$L797:
	lb	$16,0($2)
	move	$5,$8
	xor	$16,$5
	addiu	$7,$2,1
	beqz	$16,$L811
	move	$2,$7
$L793:
	sltu	$17,$2
	bteqz	$L797
$L802:
	li	$2,0
$L791:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L811:
	move	$3,$9
	addiu	$3,1
	move	$10,$3
	move	$4,$3
	beqz	$6,$L791
$L796:
	move	$5,$7
	b	$L794
$L795:
	addiu	$5,1
	addu	$16,$7,$6
	xor	$16,$5
	addiu	$4,1
	beqz	$16,$L791
$L794:
	lbu	$3,0($5)
	lbu	$16,0($4)
	xor	$3,$16
	beqz	$3,$L795
	sltu	$17,$7
	btnez	$L802
	lb	$5,0($7)
	move	$4,$8
	xor	$5,$4
	addiu	$2,$7,1
	bnez	$5,$L793
	move	$3,$7
	move	$4,$10
	move	$7,$2
	move	$2,$3
	b	$L796
$L812:
	jr	$31
$L799:
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
	lw	$2,$L819
	move	$28,$2
	sd	$16,40($sp)
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$16,$6
	beqz	$6,$L814
	move	$7,$28
	lw	$2,%call16(memmove)($7)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L814:
	ld	$7,48($sp)
	addu	$2,$4,$16
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_819, @object
__pool_mempcpy_819:
	.align	2
$L819:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_819, @object
__pend_mempcpy_819:
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
	lw	$2,$L846
	addiu	$sp,-80
	move	$28,$2
	sd	$16,56($sp)
	move	$16,$28
	sw	$2,32($sp)
	sw	$5,88($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L847
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
	btnez	$L843
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L848
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L844
	li	$5,0
	sw	$5,48($sp)
$L823:
	li	$7,0
	sw	$7,40($sp)
$L829:
	lw	$3,40($sp)
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,$L849
	addiu	$3,1
	move	$4,$17
	.set	noreorder
	.set	nomacro
	jalr	$2
	sw	$3,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$17,$2
	ld	$5,$L848
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
	bteqz	$L829
$L830:
	lw	$16,88($sp)
	lw	$4,40($sp)
	lw	$5,48($sp)
	sw	$4,0($16)
	beqz	$5,$L836
	ld	$2,$L850
	xor	$2,$17
$L820:
	move	$17,$28
	lw	$6,%got(__mips16_ret_df)($17)
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

$L844:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L849
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L826
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L847
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L835
$L826:
	lw	$3,88($sp)
	li	$7,0
	sw	$7,0($3)
	move	$2,$17
	b	$L820
$L843:
	ld	$6,$L850
	lw	$2,%call16(__mips16_ledf2)($16)
	ld	$5,$L851
	xor	$6,$17
	move	$4,$17
	.set	noreorder
	.set	nomacro
	jalr	$2
	sd	$6,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	bteqz	$L845
	li	$6,1
	ld	$17,40($sp)
	sw	$6,48($sp)
	b	$L823
$L836:
	move	$2,$17
	b	$L820
$L845:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L852
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L826
	li	$17,1
	sw	$17,48($sp)
$L824:
	li	$4,0
	ld	$17,40($sp)
	sw	$4,40($sp)
$L831:
	lw	$5,40($sp)
	lw	$2,%call16(__mips16_adddf3)($16)
	addiu	$5,-1
	move	$4,$17
	sw	$5,40($sp)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$5,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$17,$2
	ld	$5,$L849
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
	btnez	$L831
	b	$L830
$L835:
	li	$4,0
	sd	$17,40($sp)
	sw	$4,48($sp)
	b	$L824
	.type	__pool_frexp_846, @object
__pool_frexp_846:
	.align	2
$L846:
	.word	__gnu_local_gp
	.align	3
$L847:
	.word	0
	.word	0
$L848:
	.word	0
	.word	1072693248
$L849:
	.word	0
	.word	1071644672
$L850:
	.dword	-9223372036854775808
$L851:
	.word	0
	.word	-1074790400
$L852:
	.word	0
	.word	-1075838976
	.type	__pend_frexp_846, @object
__pend_frexp_846:
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
	beqz	$4,$L858
$L855:
	dsll	$3,$4,63
	dsra	$3,63
	and	$3,$5
	dsrl	$4,1
	daddu	$2,$2,$3
	dsll	$5,$5,1
	bnez	$4,$L855
	jr	$31
$L858:
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
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	bteqz	$L889
	li	$2,32
	li	$3,1
$L861:
	slt	$5,0
	btnez	$L866
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L863
	addiu	$2,-1
	bnez	$2,$L861
	bnez	$6,$L890
$L891:
	jr	$31
$L863:
	beqz	$3,$L876
$L866:
	addiu	$sp,-8
	li	$2,0
	sd	$16,0($sp)
$L871:
	sltu	$4,$5
	move	$16,$24
	subu	$7,$4,$5
	cmpi	$16,1
	bnez	$16,$L868
	move	$4,$7
$L868:
	bteqz	$L869
	move	$7,$3
$L870:
	srl	$3,$3,1
	or	$2,$7
	srl	$5,$5,1
	bnez	$3,$L871
	beqz	$6,$L860
	move	$2,$4
$L860:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L869:
	li	$7,0
	b	$L870
$L889:
	sltu	$4,$5
	move	$3,$24
	subu	$2,$4,$5
	cmpi	$3,1
	beqz	$3,$L874
	move	$2,$4
$L874:
	move	$4,$2
	move	$2,$24
	beqz	$6,$L891
	b	$L890
$L876:
	li	$2,0
	beqz	$6,$L891
$L890:
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
	sra	$5,$4,31
	addiu	$sp,-48
	lw	$2,$L896
	cmp	$5,$4
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	bteqz	$L894
	move	$4,$24
	move	$6,$28
	lw	$2,%call16(__clzdi2)($6)
	sll	$7,$4,8
	dsll	$4,$7,32
	dsrl	$4,32
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

$L894:
	ld	$7,40($sp)
	li	$2,7
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___clrsbqi2_896, @object
__pool___clrsbqi2_896:
	.align	2
$L896:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_896, @object
__pend___clrsbqi2_896:
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
	move	$5,$4
	dsra	$5,63
	addiu	$sp,-48
	lw	$2,$L901
	xor	$4,$5
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	beqz	$4,$L899
	move	$6,$28
	lw	$2,%call16(__clzdi2)($6)
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

$L899:
	ld	$7,40($sp)
	li	$2,63
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___clrsbdi2_901, @object
__pool___clrsbdi2_901:
	.align	2
$L901:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_901, @object
__pend___clrsbdi2_901:
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
	beqz	$4,$L907
$L904:
	li	$3,1
	and	$3,$4
	neg	$6,$3
	and	$6,$5
	srl	$4,$4,1
	addu	$2,$2,$6
	sll	$5,$5,1
	bnez	$4,$L904
	jr	$31
$L907:
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
	btnez	$L913
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L924
$L913:
	beqz	$7,$L912
	sll	$17,$7,3
	move	$2,$5
	move	$3,$4
	addu	$7,$17,$5
$L916:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$7
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L916
$L912:
	sltu	$16,$6
	bteqz	$L909
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L917:
	lb	$6,0($2)
	addiu	$2,1
	cmp	$2,$5
	sb	$6,0($4)
	addiu	$4,1
	btnez	$L917
$L909:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L924:
	addiu	$17,$6,-1
	beqz	$6,$L909
$L914:
	addu	$3,$5,$17
	addu	$7,$4,$17
	lb	$6,0($3)
	addiu	$17,-1
	addiu	$16,$17,1
	sb	$6,0($7)
	bnez	$16,$L914
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
	btnez	$L929
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L942
$L929:
	beqz	$16,$L928
	sll	$7,$16,1
	move	$2,$5
	move	$3,$4
	addu	$16,$7,$5
$L932:
	lh	$7,0($2)
	addiu	$2,2
	cmp	$2,$16
	sh	$7,0($3)
	addiu	$3,2
	btnez	$L932
$L928:
	li	$2,1
	and	$2,$6
	beqz	$2,$L925
	addu	$5,$5,$6
	lb	$3,-1($5)
	addu	$4,$4,$6
	sb	$3,-1($4)
$L925:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L942:
	addiu	$7,$6,-1
	beqz	$6,$L925
$L930:
	addu	$3,$5,$7
	addu	$16,$4,$7
	lb	$6,0($3)
	addiu	$7,-1
	addiu	$2,$7,1
	sb	$6,0($16)
	bnez	$2,$L930
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
	btnez	$L947
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L958
$L947:
	beqz	$7,$L946
	sll	$17,$7,2
	move	$2,$5
	move	$3,$4
	addu	$7,$17,$5
$L950:
	lw	$17,0($2)
	addiu	$2,4
	cmp	$2,$7
	sw	$17,0($3)
	addiu	$3,4
	btnez	$L950
$L946:
	sltu	$16,$6
	bteqz	$L943
	addu	$2,$5,$16
	addu	$4,$4,$16
	addu	$5,$5,$6
$L951:
	lb	$6,0($2)
	addiu	$2,1
	cmp	$2,$5
	sb	$6,0($4)
	addiu	$4,1
	btnez	$L951
$L943:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L958:
	addiu	$17,$6,-1
	beqz	$6,$L943
$L948:
	addu	$3,$5,$17
	addu	$7,$4,$17
	lb	$6,0($3)
	addiu	$17,-1
	addiu	$16,$17,1
	sb	$6,0($7)
	bnez	$16,$L948
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
	gsmod	$2,$4,$5
	bnez	$5,1f
	break	7
1:
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
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	lw	$2,$L962
	move	$28,$2
	addiu	$sp,-48
	move	$5,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_floatunsidf)($5)
	sd	$31,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$4,%got(__mips16_ret_df)($6)
	jalr	$4
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___uitod_962, @object
__pool___uitod_962:
	.align	2
$L962:
	.word	__gnu_local_gp
	.type	__pend___uitod_962, @object
__pend___uitod_962:
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
	lw	$2,$L965
	move	$28,$2
	addiu	$sp,-48
	move	$5,$28
	sw	$2,32($sp)
	lw	$2,%call16(__mips16_floatunsisf)($5)
	sd	$31,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$4,%got(__mips16_ret_sf)($6)
	jalr	$4
	ld	$7,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___uitof_965, @object
__pool___uitof_965:
	.align	2
$L965:
	.word	__gnu_local_gp
	.type	__pend___uitof_965, @object
__pend___uitof_965:
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
	lw	$5,$L968
	move	$28,$5
	addiu	$sp,-56
	move	$2,$18
	move	$6,$28
	lw	$7,%got(__mips16_call_stub_df_0)($6)
	sd	$2,40($sp)
	lw	$2,%call16(__floatundidf)($6)
	sd	$31,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$7
	sw	$5,32($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$4,$28
	lw	$5,%got(__mips16_ret_df)($4)
	jalr	$5
	ld	$7,48($sp)
	ld	$6,40($sp)
	addiu	$sp,56
	.set	noreorder
	.set	nomacro
	jr	$7
	move	$18,$6
	.set	macro
	.set	reorder

	.type	__pool___ulltod_968, @object
__pool___ulltod_968:
	.align	2
$L968:
	.word	__gnu_local_gp
	.type	__pend___ulltod_968, @object
__pend___ulltod_968:
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
	lw	$5,$L971
	move	$28,$5
	addiu	$sp,-56
	move	$2,$18
	move	$6,$28
	lw	$7,%got(__mips16_call_stub_sf_0)($6)
	sd	$2,40($sp)
	lw	$2,%call16(__floatundisf)($6)
	sd	$31,48($sp)
	.set	noreorder
	.set	nomacro
	jalr	$7
	sw	$5,32($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	move	$4,$28
	lw	$5,%got(__mips16_ret_sf)($4)
	jalr	$5
	ld	$7,48($sp)
	ld	$6,40($sp)
	addiu	$sp,56
	.set	noreorder
	.set	nomacro
	jr	$7
	move	$18,$6
	.set	macro
	.set	reorder

	.type	__pool___ulltof_971, @object
__pool___ulltof_971:
	.align	2
$L971:
	.word	__gnu_local_gp
	.type	__pend___ulltof_971, @object
__pend___ulltof_971:
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
	gsmodu	$2,$4,$5
	bnez	$5,1f
	break	7
1:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sra	$3,$4,8
	sra	$2,$3,7
	bnez	$2,$L976
	sra	$2,$3,6
	bnez	$2,$L993
	sra	$5,$3,5
	bnez	$5,$L977
	sra	$6,$3,4
	bnez	$6,$L978
	sra	$7,$3,3
	bnez	$7,$L979
	sra	$2,$3,2
	bnez	$2,$L980
	sra	$5,$3,1
	bnez	$5,$L981
	bnez	$3,$L982
	sra	$3,$4,7
	bnez	$3,$L983
	sra	$6,$4,6
	bnez	$6,$L984
	sra	$7,$4,5
	bnez	$7,$L985
	sra	$2,$4,4
	bnez	$2,$L986
	sra	$5,$4,3
	bnez	$5,$L987
	sra	$3,$4,2
	bnez	$3,$L988
	sra	$6,$4,1
	bnez	$6,$L989
	li	$2,16
	bnez	$4,$L992
$L993:
	jr	$31
$L976:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L987:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L992:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L977:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L978:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L979:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L980:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L981:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L982:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L983:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L984:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L985:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L986:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L988:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L989:
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
	bnez	$2,$L997
	li	$3,2
	and	$3,$4
	bnez	$3,$L998
	li	$5,4
	and	$5,$4
	bnez	$5,$L999
	li	$6,8
	and	$6,$4
	bnez	$6,$L1000
	li	$7,16
	and	$7,$4
	bnez	$7,$L1001
	li	$2,32
	and	$2,$4
	bnez	$2,$L1002
	li	$3,64
	and	$3,$4
	bnez	$3,$L1003
	li	$5,128
	and	$5,$4
	bnez	$5,$L1004
	li	$6,255
	addiu	$6,1
	and	$6,$4
	bnez	$6,$L1005
	li	$7,512
	and	$7,$4
	bnez	$7,$L1006
	li	$2,1024
	and	$2,$4
	bnez	$2,$L1007
	li	$3,2048
	and	$3,$4
	bnez	$3,$L1008
	li	$5,4096
	and	$5,$4
	bnez	$5,$L1009
	li	$6,8192
	and	$6,$4
	bnez	$6,$L1010
	li	$7,16384
	and	$7,$4
	bnez	$7,$L1011
	srl	$4,$4,8
	srl	$3,$4,7
	li	$2,16
	bnez	$3,$L1014
	jr	$31
$L997:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L998:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1009:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L1014:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L999:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1000:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L1001:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L1002:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L1003:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L1004:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L1005:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L1006:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L1007:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L1008:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L1010:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L1011:
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
	lw	$2,$L1023
	addiu	$sp,-64
	move	$28,$2
	sd	$16,40($sp)
	move	$16,$28
	sw	$2,32($sp)
	lw	$5,$L1024
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
	bteqz	$L1022
	lw	$5,%call16(__mips16_fix_truncsfsi)($16)
	.set	noreorder
	.set	nomacro
	jalr	$5
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

$L1022:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L1024
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	lw	$7,%call16(__mips16_fix_truncsfsi)($16)
	move	$28,$6
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$4,$2
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	li	$4,32768
	ld	$17,48($sp)
	ld	$16,40($sp)
	addu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___fixunssfsi_1023, @object
__pool___fixunssfsi_1023:
	.align	2
$L1023:
	.word	__gnu_local_gp
$L1024:
	.word	1191182336
	.type	__pend___fixunssfsi_1023, @object
__pend___fixunssfsi_1023:
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
	and	$3,$5
	and	$2,$4
	sra	$7,$4,2
	addu	$6,$3,$2
	and	$7,$5
	sra	$2,$4,3
	addu	$3,$6,$7
	and	$2,$5
	sra	$7,$4,4
	addu	$6,$3,$2
	and	$7,$5
	sra	$2,$4,5
	addu	$3,$6,$7
	and	$2,$5
	sra	$7,$4,6
	addu	$6,$3,$2
	and	$7,$5
	sra	$2,$4,7
	sra	$4,$4,8
	addu	$3,$6,$7
	and	$2,$5
	move	$7,$4
	addu	$6,$3,$2
	and	$7,$5
	sra	$2,$4,1
	addu	$3,$6,$7
	and	$2,$5
	sra	$7,$4,2
	addu	$6,$3,$2
	and	$7,$5
	sra	$2,$4,3
	addu	$3,$6,$7
	and	$2,$5
	sra	$7,$4,4
	addu	$6,$3,$2
	and	$7,$5
	sra	$2,$4,5
	addu	$3,$6,$7
	and	$2,$5
	sra	$7,$4,6
	addu	$6,$3,$2
	and	$7,$5
	addu	$3,$6,$7
	sra	$4,$4,7
	addu	$2,$3,$4
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
	and	$3,$2
	and	$5,$4
	sra	$7,$4,2
	addu	$6,$3,$5
	and	$7,$2
	sra	$5,$4,3
	addu	$3,$6,$7
	and	$5,$2
	sra	$7,$4,4
	addu	$6,$3,$5
	and	$7,$2
	sra	$5,$4,5
	addu	$3,$6,$7
	and	$5,$2
	sra	$7,$4,6
	addu	$6,$3,$5
	and	$7,$2
	sra	$5,$4,7
	sra	$4,$4,8
	addu	$3,$6,$7
	and	$5,$2
	move	$7,$4
	addu	$6,$3,$5
	and	$7,$2
	sra	$5,$4,1
	addu	$3,$6,$7
	and	$5,$2
	sra	$7,$4,2
	addu	$6,$3,$5
	and	$7,$2
	sra	$5,$4,3
	addu	$3,$6,$7
	and	$5,$2
	sra	$7,$4,4
	addu	$6,$3,$5
	and	$7,$2
	sra	$5,$4,5
	addu	$3,$6,$7
	and	$5,$2
	sra	$7,$4,6
	addu	$6,$3,$5
	and	$2,$7
	addu	$2,$6,$2
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
	beqz	$4,$L1032
$L1029:
	li	$3,1
	and	$3,$4
	neg	$6,$3
	and	$6,$5
	srl	$4,$4,1
	addu	$2,$2,$6
	sll	$5,$5,1
	bnez	$4,$L1029
	jr	$31
$L1032:
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
	beqz	$4,$L1040
	beqz	$5,$L1040
$L1036:
	li	$3,1
	and	$3,$5
	neg	$6,$3
	and	$6,$4
	srl	$5,$5,1
	addu	$2,$2,$6
	sll	$4,$4,1
	bnez	$5,$L1036
	jr	$31
$L1040:
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
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	bteqz	$L1071
	li	$2,32
	li	$3,1
$L1043:
	slt	$5,0
	btnez	$L1048
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1045
	addiu	$2,-1
	bnez	$2,$L1043
	bnez	$6,$L1072
$L1073:
	jr	$31
$L1045:
	beqz	$3,$L1058
$L1048:
	addiu	$sp,-8
	li	$2,0
	sd	$16,0($sp)
$L1053:
	sltu	$4,$5
	move	$16,$24
	subu	$7,$4,$5
	cmpi	$16,1
	bnez	$16,$L1050
	move	$4,$7
$L1050:
	bteqz	$L1051
	move	$7,$3
$L1052:
	srl	$3,$3,1
	or	$2,$7
	srl	$5,$5,1
	bnez	$3,$L1053
	beqz	$6,$L1042
	move	$2,$4
$L1042:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L1051:
	li	$7,0
	b	$L1052
$L1071:
	sltu	$4,$5
	move	$3,$24
	subu	$2,$4,$5
	cmpi	$3,1
	beqz	$3,$L1056
	move	$2,$4
$L1056:
	move	$4,$2
	move	$2,$24
	beqz	$6,$L1073
	b	$L1072
$L1058:
	li	$2,0
	beqz	$6,$L1073
$L1072:
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
	lw	$2,$L1079
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
	btnez	$L1077
	lw	$7,%call16(__mips16_gtsf2)($17)
	lw	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$5,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$4,$24
	sltu	$4,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L1077:
	ld	$7,56($sp)
	li	$5,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	neg	$2,$5
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___mspabi_cmpf_1079, @object
__pool___mspabi_cmpf_1079:
	.align	2
$L1079:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_1079, @object
__pend___mspabi_cmpf_1079:
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
	lw	$2,$L1085
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
	btnez	$L1083
	lw	$7,%call16(__mips16_gtdf2)($17)
	ld	$4,64($sp)
	.set	noreorder
	.set	nomacro
	jalr	$7
	move	$5,$16
	.set	macro
	.set	reorder

	ld	$7,56($sp)
	slt	$2,1
	move	$4,$24
	sltu	$4,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	move	$2,$24
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

$L1083:
	ld	$7,56($sp)
	li	$5,1
	ld	$17,48($sp)
	ld	$16,40($sp)
	neg	$2,$5
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,64
	.set	macro
	.set	reorder

	.type	__pool___mspabi_cmpd_1085, @object
__pool___mspabi_cmpd_1085:
	.align	2
$L1085:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_1085, @object
__pend___mspabi_cmpd_1085:
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
	mflo	$4
	mfhi	$2
	dsll	$3,$4,32
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
	mflo	$4
	mfhi	$2
	dsll	$3,$4,32
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
	btnez	$L1102
	beqz	$5,$L1094
	li	$7,0
$L1090:
	li	$6,32
	li	$2,0
	b	$L1093
$L1103:
	addiu	$6,-1
	zeb	$6
	beqz	$6,$L1092
$L1093:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	sra	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L1103
$L1092:
	beqz	$7,$L1104
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1094:
	li	$2,0
$L1104:
	jr	$31
$L1102:
	neg	$5,$5
	li	$7,1
	b	$L1090
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.set	mips16
	.set	nomicromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	slt	$4,0
	sd	$16,0($sp)
	btnez	$L1134
	li	$2,1
	li	$16,0
$L1106:
	slt	$5,0
	bteqz	$L1107
	neg	$5,$5
	move	$16,$2
$L1107:
	sltu	$5,$4
	move	$6,$4
	move	$3,$5
	bteqz	$L1135
	li	$7,32
	li	$5,1
	b	$L1108
$L1112:
	addiu	$7,-1
	beqz	$7,$L1113
$L1108:
	sll	$3,$3,1
	sltu	$3,$4
	sll	$5,$5,1
	btnez	$L1112
$L1113:
	li	$2,0
	beqz	$5,$L1111
$L1110:
	sltu	$6,$3
	move	$4,$24
	subu	$7,$6,$3
	cmpi	$4,1
	bnez	$4,$L1115
	move	$6,$7
$L1115:
	bteqz	$L1116
	move	$7,$5
$L1117:
	srl	$5,$5,1
	or	$2,$7
	srl	$3,$3,1
	bnez	$5,$L1110
$L1111:
	beqz	$16,$L1105
	neg	$2,$2
$L1105:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L1116:
	li	$7,0
	b	$L1117
$L1134:
	neg	$4,$4
	li	$2,0
	li	$16,1
	b	$L1106
$L1135:
	sltu	$4,$5
	move	$2,$24
	li	$3,1
	xor	$2,$3
	b	$L1111
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
	btnez	$L1164
	li	$7,0
$L1137:
	slt	$5,0
	move	$2,$4
	bteqz	$L1138
	neg	$5,$5
$L1138:
	sltu	$5,$4
	move	$3,$5
	bteqz	$L1165
	li	$6,32
	li	$5,1
	b	$L1139
$L1143:
	addiu	$6,-1
	beqz	$6,$L1144
$L1139:
	sll	$3,$3,1
	sltu	$3,$4
	sll	$5,$5,1
	btnez	$L1143
$L1144:
	beqz	$5,$L1163
$L1141:
	sltu	$2,$3
	subu	$4,$2,$3
	btnez	$L1146
	move	$2,$4
$L1146:
	srl	$5,$5,1
	srl	$3,$3,1
	bnez	$5,$L1141
$L1142:
	beqz	$7,$L1166
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1166:
	jr	$31
$L1164:
	neg	$4,$4
	li	$7,1
	b	$L1137
$L1165:
	sltu	$4,$5
	subu	$2,$4,$5
	bteqz	$L1142
$L1163:
	move	$2,$4
	b	$L1142
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
	bteqz	$L1327
	srl	$2,$5,8
	srl	$3,$2,7
	bnez	$3,$L1172
	sll	$3,$5,1
	zeh	$3
	addiu	$sp,-16
	sltu	$3,$4
	sd	$17,8($sp)
	sd	$16,0($sp)
	bteqz	$L1245
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1245
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$4
	bteqz	$L1247
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1247
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$4
	bteqz	$L1249
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1249
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$4
	bteqz	$L1251
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1251
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$4
	bteqz	$L1253
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1253
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$4
	bteqz	$L1255
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1255
	sll	$3,$5,7
	zeh	$3
	sltu	$3,$4
	bteqz	$L1257
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1257
	sll	$5,$5,8
	move	$3,$5
	zeh	$3
	sltu	$3,$4
	bteqz	$L1259
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1259
	sll	$3,$5,1
	zeh	$3
	sltu	$3,$4
	bteqz	$L1261
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1261
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$4
	bteqz	$L1263
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1263
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$4
	bteqz	$L1265
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1265
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$4
	bteqz	$L1267
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1267
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$4
	bteqz	$L1269
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1269
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$4
	bteqz	$L1271
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1271
	sll	$7,$5,7
	zeh	$7
	sltu	$7,$4
	bteqz	$L1272
	move	$2,$4
	bnez	$7,$L1328
$L1175:
	bnez	$6,$L1274
	move	$2,$7
$L1274:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1245:
	li	$5,2
$L1174:
	subu	$16,$4,$3
	sltu	$4,$3
	zeh	$16
	btnez	$L1241
	move	$4,$16
$L1241:
	zeh	$4
	btnez	$L1242
	move	$7,$5
$L1243:
	srl	$17,$3,1
	subu	$2,$4,$17
	sltu	$4,$17
	zeh	$7
	srl	$16,$5,1
	zeh	$2
	bteqz	$L1177
	move	$2,$4
$L1177:
	zeh	$2
	bteqz	$L1179
	li	$16,0
$L1179:
	or	$7,$16
	srl	$4,$5,2
	zeh	$7
	srl	$17,$3,2
	beqz	$4,$L1175
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1181
	move	$2,$16
$L1181:
	zeh	$2
	btnez	$L1183
	li	$4,0
$L1183:
	or	$7,$4
	srl	$4,$5,3
	zeh	$7
	srl	$17,$3,3
	beqz	$4,$L1175
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1185
	move	$2,$16
$L1185:
	zeh	$2
	btnez	$L1187
	li	$4,0
$L1187:
	or	$7,$4
	srl	$4,$5,4
	zeh	$7
	srl	$17,$3,4
	beqz	$4,$L1175
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1189
	move	$2,$16
$L1189:
	zeh	$2
	btnez	$L1191
	li	$4,0
$L1191:
	or	$7,$4
	srl	$4,$5,5
	zeh	$7
	srl	$17,$3,5
	beqz	$4,$L1175
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1193
	move	$2,$16
$L1193:
	zeh	$2
	btnez	$L1195
	li	$4,0
$L1195:
	or	$7,$4
	srl	$4,$5,6
	zeh	$7
	srl	$17,$3,6
	beqz	$4,$L1175
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1197
	move	$2,$16
$L1197:
	zeh	$2
	btnez	$L1199
	li	$4,0
$L1199:
	or	$7,$4
	srl	$4,$5,7
	zeh	$7
	srl	$17,$3,7
	beqz	$4,$L1175
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1201
	move	$2,$16
$L1201:
	zeh	$2
	btnez	$L1203
	li	$4,0
$L1203:
	or	$7,$4
	srl	$4,$5,8
	zeh	$7
	move	$9,$4
	srl	$17,$3,8
	beqz	$4,$L1175
	sltu	$2,$17
	subu	$3,$2,$17
	move	$16,$24
	zeh	$3
	cmpi	$16,1
	bnez	$16,$L1205
	move	$2,$3
$L1205:
	zeh	$2
	btnez	$L1207
	li	$4,0
$L1207:
	move	$3,$9
	or	$7,$4
	srl	$16,$17,1
	srl	$4,$3,1
	zeh	$7
	zeh	$16
	beqz	$4,$L1175
	sltu	$2,$16
	subu	$3,$2,$16
	move	$16,$24
	zeh	$3
	cmpi	$16,1
	bnez	$16,$L1209
	move	$2,$3
$L1209:
	zeh	$2
	btnez	$L1211
	li	$4,0
$L1211:
	move	$3,$9
	or	$7,$4
	srl	$16,$17,2
	srl	$3,$3,2
	zeh	$7
	zeh	$16
	beqz	$3,$L1175
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1213
	move	$2,$4
$L1213:
	zeh	$2
	btnez	$L1215
	li	$3,0
$L1215:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,3
	srl	$3,$4,3
	zeh	$7
	zeh	$16
	beqz	$3,$L1175
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1217
	move	$2,$4
$L1217:
	zeh	$2
	btnez	$L1219
	li	$3,0
$L1219:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,4
	srl	$3,$4,4
	zeh	$7
	zeh	$16
	beqz	$3,$L1175
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1221
	move	$2,$4
$L1221:
	zeh	$2
	btnez	$L1223
	li	$3,0
$L1223:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,5
	srl	$3,$4,5
	zeh	$7
	zeh	$16
	beqz	$3,$L1175
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1225
	move	$2,$4
$L1225:
	zeh	$2
	btnez	$L1227
	li	$3,0
$L1227:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,6
	srl	$3,$4,6
	zeh	$7
	zeh	$16
	beqz	$3,$L1175
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1229
	move	$2,$4
$L1229:
	zeh	$2
	btnez	$L1231
	li	$3,0
$L1231:
	or	$7,$3
	srl	$17,$17,7
	cmpi	$5,16384
	zeh	$7
	zeh	$17
	bteqz	$L1175
	sltu	$2,$17
	move	$16,$24
	subu	$4,$2,$17
	cmpi	$16,1
	zeh	$4
	move	$5,$24
	bnez	$16,$L1233
	move	$2,$4
$L1233:
	zeh	$2
	or	$7,$5
	b	$L1175
$L1242:
	li	$7,0
	b	$L1243
$L1247:
	li	$5,4
	b	$L1174
$L1249:
	li	$5,8
	b	$L1174
$L1251:
	li	$5,16
	b	$L1174
$L1261:
	li	$5,512
	b	$L1174
$L1328:
	li	$5,32768
	move	$3,$5
	b	$L1174
$L1253:
	li	$5,32
	b	$L1174
$L1255:
	li	$5,64
	b	$L1174
$L1257:
	li	$5,128
	b	$L1174
$L1259:
	li	$5,255
	addiu	$5,1
	b	$L1174
$L1327:
	subu	$2,$4,$5
	xor	$5,$4
	zeh	$2
	beqz	$5,$L1170
	move	$2,$4
$L1170:
	sltu	$5,1
	zeh	$2
	move	$7,$24
$L1319:
	bnez	$6,$L1329
	move	$2,$7
$L1329:
	jr	$31
$L1263:
	li	$5,1024
	b	$L1174
$L1265:
	li	$5,2048
	b	$L1174
$L1267:
	li	$5,4096
	b	$L1174
$L1269:
	li	$5,8192
	b	$L1174
$L1271:
	li	$5,16384
	b	$L1174
$L1272:
	li	$3,32768
	move	$5,$3
	b	$L1174
$L1172:
	subu	$2,$4,$5
	zeh	$2
	li	$7,1
	b	$L1319
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.set	mips16
	.set	nomicromips
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	bteqz	$L1359
	li	$2,32
	li	$3,1
$L1331:
	slt	$5,0
	btnez	$L1336
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1333
	addiu	$2,-1
	bnez	$2,$L1331
	bnez	$6,$L1360
$L1361:
	jr	$31
$L1333:
	beqz	$3,$L1346
$L1336:
	addiu	$sp,-8
	li	$2,0
	sd	$16,0($sp)
$L1341:
	sltu	$4,$5
	move	$16,$24
	subu	$7,$4,$5
	cmpi	$16,1
	bnez	$16,$L1338
	move	$4,$7
$L1338:
	bteqz	$L1339
	move	$7,$3
$L1340:
	srl	$3,$3,1
	or	$2,$7
	srl	$5,$5,1
	bnez	$3,$L1341
	beqz	$6,$L1330
	move	$2,$4
$L1330:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L1339:
	li	$7,0
	b	$L1340
$L1359:
	sltu	$4,$5
	move	$3,$24
	subu	$2,$4,$5
	cmpi	$3,1
	beqz	$3,$L1344
	move	$2,$4
$L1344:
	move	$4,$2
	move	$2,$24
	beqz	$6,$L1361
	b	$L1360
$L1346:
	li	$2,0
	beqz	$6,$L1361
$L1360:
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
	move	$6,$5
	and	$6,$3
	beqz	$6,$L1363
	sll	$7,$4,0
	addiu	$5,-32
	li	$6,0
	sll	$7,$5
	dsll	$4,$6,32
	dsll	$2,$7,32
	dsrl	$4,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

$L1363:
	beqz	$5,$L1366
	sll	$7,$4,0
	subu	$2,$3,$5
	move	$6,$7
	dsra	$4,32
	sll	$4,$5
	sll	$6,$5
	srl	$7,$2
	or	$7,$4
	dsll	$4,$6,32
	dsll	$2,$7,32
	dsrl	$4,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

$L1366:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_1368, @object
__pool___ashldi3_1368:
	.align	2
$L1368:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_1368, @object
__pend___ashldi3_1368:
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
	li	$3,64
	move	$2,$6
	and	$2,$3
	addiu	$sp,-24
	beqz	$2,$L1370
	addiu	$6,-64
	dsll	$4,$6
	li	$2,0
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1370:
	move	$2,$4
	beqz	$6,$L1373
	subu	$7,$3,$6
	dsrl	$4,$7
	dsll	$5,$6
	or	$4,$5
	dsll	$2,$6
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1373:
	move	$4,$5
	move	$3,$4
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
	move	$6,$5
	and	$6,$3
	beqz	$6,$L1376
	move	$2,$4
	addiu	$5,-32
	dsra	$2,32
	dsra	$4,63
	sra	$2,$5
	move	$7,$4
	dsll	$2,$2,32
	dsll	$5,$7,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$5
	.set	macro
	.set	reorder

$L1376:
	move	$2,$4
	beqz	$5,$L1382
	subu	$3,$3,$5
	dsra	$2,32
	sll	$4,$4,0
	srl	$4,$5
	move	$7,$2
	sll	$2,$3
	or	$2,$4
	sra	$7,$5
	dsll	$2,$2,32
	dsll	$5,$7,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$5
	.set	macro
	.set	reorder

$L1382:
	jr	$31
	.type	__pool___ashrdi3_1381, @object
__pool___ashrdi3_1381:
	.align	2
$L1381:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_1381, @object
__pend___ashrdi3_1381:
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
	li	$2,64
	move	$3,$6
	and	$3,$2
	addiu	$sp,-24
	beqz	$3,$L1384
	move	$3,$5
	addiu	$6,-64
	move	$2,$5
	dsra	$3,63
	dsra	$2,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1384:
	beqz	$6,$L1387
	subu	$7,$2,$6
	move	$2,$4
	move	$3,$5
	dsrl	$2,$6
	dsll	$5,$7
	dsra	$3,$6
	or	$2,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1387:
	move	$2,$4
	move	$3,$5
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
	move	$6,$4
	dsll	$5,$4,56
	li	$7,65280
	dsrl	$3,56
	dsrl	$6,40
	and	$6,$7
	or	$3,$5
	move	$2,$4
	ld	$5,$L1391
	ld	$7,$L1392
	or	$3,$6
	dsrl	$2,24
	move	$6,$4
	and	$2,$5
	dsrl	$6,8
	ld	$5,$L1393
	and	$6,$7
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$7,$L1394
	or	$3,$6
	or	$3,$2
	dsll	$6,$4,24
	dsll	$2,$4,40
	ld	$4,$L1395
	and	$6,$7
	or	$3,$6
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_1391, @object
__pool___bswapdi2_1391:
	.align	3
$L1391:
	.dword	16711680
$L1392:
	.dword	4278190080
$L1393:
	.dword	1095216660480
$L1394:
	.dword	280375465082880
$L1395:
	.dword	71776119061217280
	.type	__pend___bswapdi2_1391, @object
__pend___bswapdi2_1391:
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
	lw	$7,$L1398
	srl	$2,$4,24
	srl	$6,$4,8
	li	$5,65280
	or	$2,$3
	and	$6,$5
	sll	$4,$4,8
	or	$2,$6
	and	$4,$7
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___bswapsi2_1398, @object
__pool___bswapsi2_1398:
	.align	2
$L1398:
	.word	16711680
	.type	__pend___bswapsi2_1398, @object
__pend___bswapsi2_1398:
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
	lw	$3,$L1403
	li	$7,16
	sltu	$4,$3
	move	$5,$24
	sll	$6,$5,4
	subu	$2,$7,$6
	srl	$4,$2
	li	$3,65280
	and	$3,$4
	sltu	$3,1
	move	$5,$24
	sll	$7,$5,3
	li	$2,8
	subu	$3,$2,$7
	srl	$4,$3
	li	$5,240
	and	$5,$4
	sltu	$5,1
	addu	$6,$7,$6
	move	$7,$24
	sll	$2,$7,2
	li	$3,4
	subu	$5,$3,$2
	srl	$4,$5
	li	$7,12
	and	$7,$4
	sltu	$7,1
	addu	$6,$2,$6
	move	$2,$24
	sll	$5,$2,1
	li	$2,2
	subu	$3,$2,$5
	srl	$4,$3
	li	$7,1
	srl	$3,$4,1
	and	$3,$7
	li	$7,1
	xor	$3,$7
	zeb	$3
	beqz	$3,$L1400
	subu	$4,$2,$4
	addu	$6,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$4,$6
	.set	macro
	.set	reorder

$L1400:
	li	$4,0
	addu	$6,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$4,$6
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_1403, @object
__pool___clzsi2_1403:
	.align	2
$L1403:
	.word	65536
	.type	__pend___clzsi2_1403, @object
__pend___clzsi2_1403:
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
	sltu	$5,1
	lw	$2,$L1408
	sd	$16,40($sp)
	move	$16,$24
	move	$7,$5
	move	$28,$2
	addiu	$5,$16,-1
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$6,$28
	and	$5,$7
	bnez	$16,$L1406
	li	$4,0
$L1406:
	lw	$2,%call16(__clzdi2)($6)
	or	$4,$5
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	ld	$7,48($sp)
	sll	$4,$16,6
	addu	$2,$4,$2
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool___clzti2_1408, @object
__pool___clzti2_1408:
	.align	2
$L1408:
	.word	__gnu_local_gp
	.type	__pend___clzti2_1408, @object
__pend___clzti2_1408:
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
	btnez	$L1413
	slt	$6,$7
	btnez	$L1412
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1413
	sltu	$5,$4
	btnez	$L1414
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1413:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1412:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1414:
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
	btnez	$L1417
	slt	$6,$7
	btnez	$L1418
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1419
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1417:
	li	$7,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$7
	.set	macro
	.set	reorder

$L1419:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1418:
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
	slt	$5,$7
	btnez	$L1424
	slt	$7,$5
	btnez	$L1423
	sltu	$4,$6
	btnez	$L1424
	sltu	$6,$4
	btnez	$L1425
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1424:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1423:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1425:
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
	sll	$5,$3,4
	srl	$4,$5
	move	$6,$4
	zeb	$6
	sltu	$6,1
	move	$7,$24
	sll	$2,$7,3
	addu	$3,$2,$5
	srl	$4,$2
	li	$5,15
	and	$5,$4
	sltu	$5,1
	move	$6,$24
	sll	$7,$6,2
	srl	$4,$7
	addu	$5,$7,$3
	li	$2,3
	move	$3,$4
	and	$3,$2
	sltu	$3,1
	move	$6,$24
	sll	$7,$6,1
	srl	$4,$7
	and	$4,$2
	not	$2,$4
	li	$3,1
	and	$2,$3
	srl	$4,$4,1
	li	$6,2
	subu	$3,$6,$4
	neg	$2,$2
	and	$2,$3
	addu	$5,$7,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$4,1
	move	$6,$4
	move	$3,$5
	move	$2,$24
	beqz	$4,$L1429
	li	$3,0
$L1429:
	addiu	$4,$2,-1
	and	$4,$6
	or	$3,$4
	dctz	$5,$3
	sll	$7,$5,0
	sll	$6,$2,6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$6,$7
	.set	macro
	.set	reorder

	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.set	mips16
	.set	nomicromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	bnez	$4,$L1431
	bnez	$5,$L1434
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1431:
	dctz	$2,$4
	sll	$2,$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,1
	.set	macro
	.set	reorder

$L1434:
	dctz	$5,$5
	sll	$3,$5,0
	addiu	$2,$3,7
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,58
	.set	macro
	.set	reorder

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
	move	$6,$5
	and	$6,$3
	beqz	$6,$L1436
	dsrl	$4,32
	sll	$7,$4,0
	addiu	$5,-32
	srl	$7,$5
	li	$6,0
	dsll	$2,$7,32
	dsll	$5,$6,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$5
	.set	macro
	.set	reorder

$L1436:
	move	$2,$4
	beqz	$5,$L1442
	dsrl	$2,32
	sll	$7,$2,0
	sll	$4,$4,0
	subu	$2,$3,$5
	srl	$4,$5
	move	$6,$7
	sll	$7,$2
	or	$7,$4
	srl	$6,$5
	dsll	$2,$7,32
	dsll	$5,$6,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$5
	.set	macro
	.set	reorder

$L1442:
	jr	$31
	.type	__pool___lshrdi3_1441, @object
__pool___lshrdi3_1441:
	.align	2
$L1441:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_1441, @object
__pend___lshrdi3_1441:
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
	li	$2,64
	move	$3,$6
	and	$3,$2
	addiu	$sp,-24
	beqz	$3,$L1444
	addiu	$6,-64
	move	$2,$5
	dsrl	$2,$6
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1444:
	beqz	$6,$L1447
	subu	$7,$2,$6
	move	$2,$4
	move	$3,$5
	dsrl	$2,$6
	dsll	$5,$7
	dsrl	$3,$6
	or	$2,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1447:
	move	$2,$4
	move	$3,$5
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
	move	$7,$4
	move	$3,$5
	sd	$16,0($sp)
	li	$16,65535
	sd	$17,8($sp)
	and	$7,$16
	and	$3,$16
	gsmultu	$6,$7,$3
	srl	$17,$6,8
	srl	$2,$17,8
	srl	$4,$4,8
	srl	$4,$4,8
	gsmultu	$3,$3,$4
	addu	$3,$3,$2
	sll	$17,$3,8
	and	$6,$16
	sll	$17,$17,8
	addu	$2,$6,$17
	srl	$6,$17,8
	srl	$17,$6,8
	srl	$5,$5,8
	srl	$5,$5,8
	gsmultu	$7,$7,$5
	addu	$6,$7,$17
	and	$2,$16
	srl	$3,$3,8
	sll	$16,$6,8
	sll	$17,$16,8
	srl	$7,$3,8
	srl	$6,$6,8
	srl	$16,$6,8
	addu	$2,$2,$17
	gsmultu	$4,$4,$5
	addu	$5,$7,$4
	addu	$17,$5,$16
	dsll	$2,$2,32
	dsll	$3,$17,32
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
	li	$3,65535
	sll	$7,$4,0
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$3
	sll	$16,$5,0
	move	$6,$3
	move	$9,$3
	and	$17,$7
	and	$6,$16
	gsmultu	$2,$17,$6
	srl	$3,$2,8
	srl	$3,$3,8
	move	$10,$3
	srl	$3,$7,8
	srl	$3,$3,8
	move	$8,$3
	gsmultu	$6,$6,$3
	move	$3,$10
	addu	$6,$6,$3
	move	$3,$9
	and	$2,$3
	sll	$3,$6,8
	sll	$3,$3,8
	move	$11,$3
	addu	$3,$2,$3
	move	$2,$11
	srl	$2,$2,8
	srl	$2,$2,8
	move	$12,$2
	srl	$2,$16,8
	srl	$2,$2,8
	move	$13,$2
	gsmultu	$2,$17,$2
	move	$17,$12
	addu	$2,$2,$17
	move	$17,$9
	and	$3,$17
	sll	$17,$2,8
	sll	$17,$17,8
	addu	$3,$3,$17
	srl	$6,$6,8
	move	$14,$3
	srl	$2,$2,8
	srl	$6,$6,8
	move	$3,$13
	move	$17,$8
	gsmultu	$17,$17,$3
	srl	$3,$2,8
	addu	$6,$6,$17
	move	$2,$14
	addu	$17,$6,$3
	dsll	$3,$2,32
	dsll	$6,$17,32
	dsrl	$3,32
	or	$3,$6
	dsra	$5,32
	gsmultu	$7,$7,$5
	move	$5,$3
	dsra	$5,32
	addu	$17,$7,$5
	dsll	$6,$3,32
	dsra	$4,32
	gsmultu	$4,$16,$4
	addu	$16,$17,$4
	dsll	$2,$16,32
	dsrl	$6,32
	ld	$17,8($sp)
	ld	$16,0($sp)
	or	$2,$6
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
	.frame	$sp,40,$31		# vars= 16, regs= 2/0, args= 0, gp= 8
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-40
	sll	$2,$5,0
	sd	$16,24($sp)
	sll	$16,$4,0
	multu	$16,$2
	dsrl	$4,32
	sll	$4,$4,0
	mfhi	$3
	mflo	$6
	multu	$2,$4
	dsrl	$5,32
	mflo	$2
	sll	$5,$5,0
	mfhi	$7
	multu	$16,$5
	sd	$17,32($sp)
	dsll	$17,$3,32
	dsll	$3,$2,32
	mflo	$16
	dsll	$2,$7,32
	dsrl	$3,32
	mfhi	$7
	dsrl	$17,32
	or	$3,$2
	multu	$4,$5
	daddu	$2,$3,$17
	dsll	$3,$16,32
	dsll	$17,$2,32
	dsll	$16,$7,32
	dsrl	$3,32
	or	$3,$16
	mflo	$4
	dsrl	$17,32
	daddu	$17,$3,$17
	mfhi	$5
	dsll	$6,$6,32
	dsll	$7,$17,32
	dsrl	$6,32
	dsll	$16,$4,32
	daddu	$3,$6,$7
	dsrl	$16,32
	dsll	$6,$5,32
	or	$16,$6
	dsrl	$2,32
	daddu	$2,$2,$16
	dsrl	$17,32
	daddu	$17,$2,$17
	sd	$3,8($sp)
	sd	$17,16($sp)
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
	sll	$2,$4,0
	move	$11,$5
	sd	$17,32($sp)
	sll	$5,$6,0
	move	$17,$4
	multu	$2,$5
	dsrl	$17,32
	move	$9,$2
	sll	$2,$17,0
	sd	$16,24($sp)
	mflo	$3
	mfhi	$16
	multu	$5,$2
	move	$8,$2
	mflo	$5
	mfhi	$17
	dsll	$2,$5,32
	dsll	$16,$16,32
	dsll	$5,$17,32
	dsrl	$2,32
	move	$17,$6
	dsrl	$16,32
	or	$2,$5
	dsrl	$17,32
	sll	$17,$17,0
	move	$5,$9
	daddu	$2,$2,$16
	multu	$5,$17
	dsll	$16,$2,32
	dsrl	$16,32
	move	$10,$16
	mflo	$16
	mfhi	$5
	dsll	$16,$16,32
	dsll	$5,$5,32
	dsrl	$16,32
	or	$16,$5
	move	$5,$10
	daddu	$16,$16,$5
	dsll	$3,$3,32
	dsll	$5,$16,32
	dsrl	$3,32
	daddu	$3,$3,$5
	move	$5,$8
	multu	$5,$17
	sd	$3,8($sp)
	mflo	$3
	mfhi	$17
	dsll	$5,$3,32
	dsrl	$5,32
	dsll	$3,$17,32
	or	$5,$3
	dsrl	$2,32
	daddu	$2,$2,$5
	dsrl	$16,32
	daddu	$16,$2,$16
	gsdmultu	$4,$4,$7
	daddu	$7,$4,$16
	move	$17,$11
	gsdmultu	$6,$6,$17
	daddu	$5,$7,$6
	sd	$5,16($sp)
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
	dsubu	$2,$3,$4
	sltu	$3,$2
	move	$4,$24
	dsubu	$5,$3,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$3,$5,$4
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
	srl	$5,$3,8
	xor	$5,$4
	srl	$6,$5,8
	xor	$6,$5
	srl	$7,$6,4
	xor	$7,$6
	li	$2,15
	and	$7,$2
	li	$2,27030
	sra	$2,$7
	li	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$4
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
	xor	$4,$5
	move	$2,$4
	dsra	$2,32
	sll	$4,$4,0
	xor	$4,$2
	srl	$3,$4,8
	srl	$5,$3,8
	xor	$5,$4
	srl	$6,$5,8
	xor	$6,$5
	srl	$7,$6,4
	xor	$7,$6
	li	$2,15
	and	$7,$2
	li	$2,27030
	sra	$2,$7
	li	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$4
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
	srl	$3,$2,8
	xor	$3,$4
	srl	$4,$3,8
	xor	$4,$3
	srl	$5,$4,4
	xor	$5,$4
	li	$6,15
	and	$5,$6
	li	$2,27030
	sra	$2,$5
	li	$7,1
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$7
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
	ld	$3,$L1464
	move	$5,$4
	dsrl	$5,1
	and	$5,$3
	dsubu	$4,$4,$5
	ld	$7,$L1465
	move	$6,$4
	dsrl	$6,2
	and	$6,$7
	and	$4,$7
	daddu	$2,$6,$4
	move	$5,$2
	ld	$4,$L1466
	dsrl	$5,4
	daddu	$3,$5,$2
	and	$3,$4
	move	$6,$3
	dsrl	$6,32
	sll	$7,$6,0
	sll	$2,$3,0
	addu	$5,$7,$2
	srl	$3,$5,8
	srl	$4,$3,8
	addu	$6,$4,$5
	srl	$7,$6,8
	addu	$2,$7,$6
	li	$5,127
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$5
	.set	macro
	.set	reorder

	.type	__pool___popcountdi2_1464, @object
__pool___popcountdi2_1464:
	.align	3
$L1464:
	.dword	6148914691236517205
$L1465:
	.dword	3689348814741910323
$L1466:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1464, @object
__pend___popcountdi2_1464:
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
	lw	$3,$L1469
	srl	$5,$4,1
	and	$5,$3
	lw	$7,$L1470
	subu	$4,$4,$5
	srl	$6,$4,2
	and	$6,$7
	and	$4,$7
	addu	$5,$6,$4
	srl	$2,$5,4
	lw	$3,$L1471
	addu	$4,$2,$5
	and	$4,$3
	srl	$6,$4,8
	srl	$7,$6,8
	addu	$5,$7,$4
	srl	$2,$5,8
	addu	$2,$2,$5
	li	$4,63
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___popcountsi2_1469, @object
__pool___popcountsi2_1469:
	.align	2
$L1469:
	.word	1431655765
$L1470:
	.word	858993459
$L1471:
	.word	252645135
	.type	__pend___popcountsi2_1469, @object
__pend___popcountsi2_1469:
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
	move	$3,$4
	ld	$6,$L1474
	dsll	$7,$5,63
	dsrl	$3,1
	or	$7,$3
	and	$7,$6
	move	$3,$5
	dsubu	$2,$4,$7
	dsrl	$3,1
	and	$3,$6
	sltu	$4,$2
	move	$4,$24
	dsubu	$5,$5,$3
	dsubu	$7,$5,$4
	move	$6,$2
	ld	$4,$L1475
	dsll	$3,$7,62
	dsrl	$6,2
	or	$3,$6
	and	$3,$4
	move	$5,$7
	and	$2,$4
	daddu	$2,$3,$2
	dsrl	$5,2
	and	$5,$4
	sltu	$2,$3
	and	$7,$4
	move	$3,$24
	daddu	$7,$5,$7
	daddu	$6,$3,$7
	move	$5,$2
	dsll	$4,$6,60
	dsrl	$5,4
	or	$4,$5
	daddu	$2,$4,$2
	move	$7,$6
	sltu	$2,$4
	dsrl	$7,4
	ld	$4,$L1476
	move	$3,$24
	daddu	$6,$7,$6
	daddu	$5,$3,$6
	and	$2,$4
	and	$5,$4
	daddu	$7,$5,$2
	move	$2,$7
	dsrl	$2,32
	sll	$6,$2,0
	sll	$3,$7,0
	addu	$5,$6,$3
	srl	$4,$5,8
	srl	$7,$4,8
	addu	$6,$7,$5
	srl	$2,$6,8
	addu	$2,$2,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	zeb	$2
	.set	macro
	.set	reorder

	.type	__pool___popcountti2_1474, @object
__pool___popcountti2_1474:
	.align	3
$L1474:
	.dword	6148914691236517205
$L1475:
	.dword	3689348814741910323
$L1476:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1474, @object
__pend___popcountti2_1474:
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
	lw	$5,80($sp)
	lw	$2,$L1485
	move	$8,$4
	li	$4,1
	move	$28,$2
	and	$4,$5
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	sw	$2,32($sp)
	move	$17,$28
	beqz	$4,$L1483
	ld	$7,$L1486
	move	$16,$5
	sd	$7,40($sp)
$L1480:
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
	ld	$4,72($sp)
	move	$28,$6
	sd	$2,40($sp)
	move	$8,$4
$L1478:
	srl	$5,$16,31
	addu	$16,$5,$16
	sra	$16,$16,1
	beqz	$16,$L1479
$L1481:
	lw	$2,%call16(__mips16_muldf3)($17)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$8
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	li	$7,1
	and	$7,$16
	move	$28,$6
	move	$8,$2
	bnez	$7,$L1480
	srl	$6,$16,31
	addu	$3,$6,$16
	sra	$16,$3,1
	b	$L1481
$L1479:
	lw	$4,80($sp)
	slt	$4,0
	bteqz	$L1477
	lw	$17,%call16(__mips16_divdf3)($17)
	ld	$4,$L1486
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sd	$2,40($sp)
	move	$28,$6
$L1477:
	move	$5,$28
	lw	$7,%got(__mips16_ret_df)($5)
	.set	noreorder
	.set	nomacro
	jalr	$7
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

$L1483:
	ld	$6,$L1486
	lw	$16,80($sp)
	sd	$6,40($sp)
	b	$L1478
	.type	__pool___powidf2_1485, @object
__pool___powidf2_1485:
	.align	2
$L1485:
	.word	__gnu_local_gp
	.align	3
$L1486:
	.word	0
	.word	1072693248
	.type	__pend___powidf2_1485, @object
__pend___powidf2_1485:
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
	lw	$5,80($sp)
	lw	$2,$L1495
	move	$8,$4
	li	$4,1
	move	$28,$2
	and	$4,$5
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	sw	$2,32($sp)
	move	$17,$28
	beqz	$4,$L1493
	lw	$7,$L1496
	move	$16,$5
	sw	$7,40($sp)
$L1490:
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
	lw	$4,72($sp)
	move	$28,$6
	sw	$2,40($sp)
	move	$8,$4
$L1488:
	srl	$5,$16,31
	addu	$16,$5,$16
	sra	$16,$16,1
	beqz	$16,$L1489
$L1491:
	lw	$2,%call16(__mips16_mulsf3)($17)
	move	$5,$8
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$8
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	li	$7,1
	and	$7,$16
	move	$28,$6
	move	$8,$2
	bnez	$7,$L1490
	srl	$6,$16,31
	addu	$3,$6,$16
	sra	$16,$3,1
	b	$L1491
$L1489:
	lw	$4,80($sp)
	slt	$4,0
	bteqz	$L1487
	lw	$17,%call16(__mips16_divsf3)($17)
	lw	$4,$L1496
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sw	$2,40($sp)
	move	$28,$6
$L1487:
	move	$5,$28
	lw	$7,%got(__mips16_ret_sf)($5)
	.set	noreorder
	.set	nomacro
	jalr	$7
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

$L1493:
	lw	$6,$L1496
	lw	$16,80($sp)
	sw	$6,40($sp)
	b	$L1488
	.type	__pool___powisf2_1495, @object
__pool___powisf2_1495:
	.align	2
$L1495:
	.word	__gnu_local_gp
$L1496:
	.word	1065353216
	.type	__pend___powisf2_1495, @object
__pend___powisf2_1495:
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
	sll	$6,$3,0
	sll	$7,$2,0
	sltu	$6,$7
	btnez	$L1501
	sltu	$7,$6
	btnez	$L1500
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1501
	sltu	$5,$4
	btnez	$L1502
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1501:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1500:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1502:
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
	sll	$6,$3,0
	sll	$7,$2,0
	sltu	$6,$7
	btnez	$L1505
	sltu	$7,$6
	btnez	$L1506
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1507
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1505:
	li	$6,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$6
	.set	macro
	.set	reorder

$L1507:
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$3
	.set	macro
	.set	reorder

$L1506:
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
	sltu	$5,$7
	btnez	$L1512
	sltu	$7,$5
	btnez	$L1511
	sltu	$4,$6
	btnez	$L1512
	sltu	$6,$4
	btnez	$L1513
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1512:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1511:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1513:
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
