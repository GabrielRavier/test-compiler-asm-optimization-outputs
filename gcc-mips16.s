	.file	1 "mini-libc.c"
	.section .mdebug.abiO64
	.previous
	.section .gcc_compiled_long32
	.previous
	.nan	2008
	.module	fp=64
	.module	oddspreg
	.module	arch=mips64r2
	.module	dspr2
	.module	smartmips
	.module	mips16e2
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
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	move	$2,$4
	bteqz	$L7
	addu	$5,$5,$6
	addu	$3,$4,$6
	beqz	$6,$L53
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
	bteqz	$L53
	beqz	$6,$L53
	addiu	$3,$6,-1
	sltu	$3,8
	btnez	$L10
	move	$7,$5
	or	$7,$4
	li	$4,7
	and	$7,$4
	bnez	$7,$L10
	addiu	$3,$5,1
	subu	$7,$2,$3
	sltu	$7,7
	btnez	$L10
	addiu	$sp,-8
	sd	$16,0($sp)
	srl	$16,$6,3
	sll	$7,$16,3
	move	$3,$2
	addu	$4,$5,$7
$L11:
	ld	$16,0($5)
	addiu	$5,8
	cmp	$4,$5
	sd	$16,0($3)
	addiu	$3,8
	btnez	$L11
	addu	$5,$2,$7
	subu	$3,$6,$7
	xor	$7,$6
	beqz	$7,$L8
	lb	$6,0($4)
	cmpi	$3,1
	sb	$6,0($5)
	bteqz	$L8
	lb	$7,1($4)
	cmpi	$3,2
	sb	$7,1($5)
	bteqz	$L8
	lb	$16,2($4)
	cmpi	$3,3
	sb	$16,2($5)
	bteqz	$L8
	lb	$6,3($4)
	cmpi	$3,4
	sb	$6,3($5)
	bteqz	$L8
	lb	$7,4($4)
	cmpi	$3,5
	sb	$7,4($5)
	bteqz	$L8
	lb	$16,5($4)
	cmpi	$3,6
	sb	$16,5($5)
	bteqz	$L8
	lb	$4,6($4)
	sb	$4,6($5)
$L8:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L10:
	move	$3,$2
	addu	$6,$6,$2
$L14:
	lb	$7,0($5)
	addiu	$3,1
	sb	$7,-1($3)
	cmp	$6,$3
	addiu	$5,1
	btnez	$L14
$L53:
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
	bnez	$7,$L56
	b	$L58
$L59:
	addiu	$7,-1
	addiu	$5,1
	addiu	$4,1
	beqz	$7,$L58
$L56:
	lbu	$3,0($5)
	sb	$3,0($4)
	xor	$3,$6
	bnez	$3,$L59
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$2,$4,1
	.set	macro
	.set	reorder

$L58:
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
	bnez	$6,$L67
	b	$L74
$L69:
	addiu	$6,-1
	addiu	$4,1
	beqz	$6,$L70
$L67:
	lbu	$3,0($4)
	xor	$3,$5
	bnez	$3,$L69
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L70:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L74:
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
	beqz	$6,$L80
$L89:
	lbu	$2,0($4)
	lbu	$3,0($5)
	cmp	$2,$3
	btnez	$L88
	addiu	$6,-1
	addiu	$4,1
	addiu	$5,1
	bnez	$6,$L89
$L80:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L88:
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
	lw	$2,$L96
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	beqz	$6,$L91
	move	$7,$28
	lw	$2,%call16(memcpy)($7)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L91:
	ld	$7,40($sp)
	move	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool_memcpy_96, @object
__pool_memcpy_96:
	.align	2
$L96:
	.word	__gnu_local_gp
	.type	__pend_memcpy_96, @object
__pend_memcpy_96:
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
$L98:
	cmp	$6,$4
	bteqz	$L101
	move	$2,$6
	lbu	$3,0($2)
	addiu	$6,-1
	xor	$3,$5
	bnez	$3,$L98
	jr	$31
$L101:
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
	lw	$2,$L107
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	beqz	$6,$L105
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
$L105:
	ld	$7,40($sp)
	move	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool_memset_107, @object
__pool_memset_107:
	.align	2
$L107:
	.word	__gnu_local_gp
	.type	__pend_memset_107, @object
__pend_memset_107:
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
	beqz	$3,$L115
$L110:
	lb	$4,1($5)
	addiu	$5,1
	addiu	$2,1
	sb	$4,0($2)
	bnez	$4,$L110
$L115:
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
	bnez	$3,$L117
	jr	$31
$L119:
	lb	$3,1($2)
	addiu	$2,1
	beqz	$3,$L124
$L117:
	zeb	$3
	xor	$3,$5
	bnez	$3,$L119
$L124:
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
	b	$L128
$L131:
	addiu	$2,1
	beqz	$3,$L130
$L128:
	lb	$3,0($2)
	cmp	$3,$5
	btnez	$L131
	jr	$31
$L130:
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
	b	$L142
$L133:
	beqz	$3,$L134
	addiu	$4,1
	addiu	$5,1
$L142:
	lb	$3,0($4)
	lb	$2,0($5)
	cmp	$3,$2
	bteqz	$L133
	zeb	$3
$L134:
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
	beqz	$2,$L146
	move	$5,$4
$L145:
	lb	$3,1($5)
	addiu	$5,1
	bnez	$3,$L145
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$5,$4
	.set	macro
	.set	reorder

$L146:
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
	beqz	$6,$L156
	lbu	$2,0($4)
	beqz	$2,$L158
	lbu	$3,0($5)
	addiu	$6,-1
	addu	$6,$4,$6
	beqz	$3,$L151
$L160:
	cmp	$4,$6
	bteqz	$L151
	cmp	$3,$2
	btnez	$L151
	lbu	$2,1($4)
	addiu	$4,1
	addiu	$7,$5,1
	beqz	$2,$L159
	move	$5,$7
	lbu	$3,0($5)
	bnez	$3,$L160
$L151:
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L156:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L159:
	lbu	$3,1($5)
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$3
	.set	macro
	.set	reorder

$L158:
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
	btnez	$L165
	srl	$2,$6,1
	sll	$3,$2,1
	addu	$6,$4,$3
$L163:
	lbu	$7,1($4)
	lbu	$2,0($4)
	addiu	$4,2
	cmp	$4,$6
	sb	$7,0($5)
	sb	$2,1($5)
	addiu	$5,2
	btnez	$L163
$L165:
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
	bteqz	$L170
	li	$2,9
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L170:
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
	btnez	$L173
	li	$2,127
	xor	$4,$2
	sltu	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L173:
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
	bteqz	$L180
	addiu	$4,-9
	sltu	$4,5
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L180:
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
	btnez	$L185
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

$L185:
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
	lw	$2,$L197
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
	bnez	$2,$L190
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
	bnez	$2,$L191
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
	bteqz	$L196
	ld	$2,$L198
$L187:
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

$L196:
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
	b	$L187
$L190:
	move	$2,$16
	b	$L187
$L191:
	ld	$2,72($sp)
	b	$L187
	.type	__pool_fdim_197, @object
__pool_fdim_197:
	.align	2
$L197:
	.word	__gnu_local_gp
	.align	3
$L198:
	.word	0
	.word	0
	.type	__pend_fdim_197, @object
__pend_fdim_197:
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
	lw	$2,$L209
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
	bnez	$2,$L202
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
	bnez	$2,$L203
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
	bteqz	$L208
	lw	$2,$L210
$L199:
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

$L208:
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
	b	$L199
$L202:
	move	$2,$16
	b	$L199
$L203:
	lw	$2,72($sp)
	b	$L199
	.type	__pool_fdimf_209, @object
__pool_fdimf_209:
	.align	2
$L209:
	.word	__gnu_local_gp
$L210:
	.word	0
	.type	__pend_fdimf_209, @object
__pend_fdimf_209:
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
	lw	$2,$L224
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
	bnez	$2,$L219
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
	bnez	$2,$L218
	move	$3,$17
	move	$6,$16
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L223
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
	btnez	$L219
	move	$16,$17
$L219:
	move	$2,$16
$L211:
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

$L223:
	bnez	$3,$L219
$L218:
	move	$2,$17
	b	$L211
	.type	__pool_fmax_224, @object
__pool_fmax_224:
	.align	2
$L224:
	.word	__gnu_local_gp
	.type	__pend_fmax_224, @object
__pend_fmax_224:
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
	lw	$2,$L238
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
	bnez	$2,$L233
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
	bnez	$2,$L232
	lw	$6,$L239
	move	$7,$6
	and	$7,$17
	and	$6,$16
	xor	$6,$7
	bnez	$6,$L237
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
	btnez	$L233
	move	$16,$17
$L233:
	move	$2,$16
$L225:
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

$L237:
	bnez	$7,$L233
$L232:
	move	$2,$17
	b	$L225
	.type	__pool_fmaxf_238, @object
__pool_fmaxf_238:
	.align	2
$L238:
	.word	__gnu_local_gp
$L239:
	.word	-2147483648
	.type	__pend_fmaxf_238, @object
__pend_fmaxf_238:
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
	lw	$2,$L253
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
	bnez	$2,$L248
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
	bnez	$2,$L247
	move	$3,$17
	move	$6,$16
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L252
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
	btnez	$L248
	move	$16,$17
$L248:
	move	$2,$16
$L240:
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

$L252:
	bnez	$3,$L248
$L247:
	move	$2,$17
	b	$L240
	.type	__pool_fmaxl_253, @object
__pool_fmaxl_253:
	.align	2
$L253:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_253, @object
__pend_fmaxl_253:
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
	lw	$2,$L267
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
	bnez	$2,$L260
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
	bnez	$2,$L262
	move	$3,$16
	move	$6,$17
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L266
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
	btnez	$L262
	move	$16,$17
$L262:
	move	$2,$16
$L254:
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

$L266:
	bnez	$3,$L262
$L260:
	move	$2,$17
	b	$L254
	.type	__pool_fmin_267, @object
__pool_fmin_267:
	.align	2
$L267:
	.word	__gnu_local_gp
	.type	__pend_fmin_267, @object
__pend_fmin_267:
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
	lw	$2,$L281
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
	bnez	$2,$L274
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
	bnez	$2,$L276
	lw	$6,$L282
	move	$7,$6
	and	$7,$16
	and	$6,$17
	xor	$6,$7
	bnez	$6,$L280
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
	btnez	$L276
	move	$16,$17
$L276:
	move	$2,$16
$L268:
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

$L280:
	bnez	$7,$L276
$L274:
	move	$2,$17
	b	$L268
	.type	__pool_fminf_281, @object
__pool_fminf_281:
	.align	2
$L281:
	.word	__gnu_local_gp
$L282:
	.word	-2147483648
	.type	__pend_fminf_281, @object
__pend_fminf_281:
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
	lw	$2,$L296
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
	bnez	$2,$L289
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
	bnez	$2,$L291
	move	$3,$16
	move	$6,$17
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L295
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
	btnez	$L291
	move	$16,$17
$L291:
	move	$2,$16
$L283:
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

$L295:
	bnez	$3,$L291
$L289:
	move	$2,$17
	b	$L283
	.type	__pool_fminl_296, @object
__pool_fminl_296:
	.align	2
$L296:
	.word	__gnu_local_gp
	.type	__pend_fminl_296, @object
__pend_fminl_296:
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
	lw	$3,$L302
	beqz	$4,$L298
	lw	$5,$L303
$L299:
	li	$2,63
	and	$2,$4
	addu	$6,$5,$2
	lbu	$7,0($6)
	srl	$4,$4,6
	sb	$7,0($3)
	addiu	$3,1
	bnez	$4,$L299
$L298:
	li	$4,0
	lw	$2,$L302
	.set	noreorder
	.set	nomacro
	jr	$31
	sb	$4,0($3)
	.set	macro
	.set	reorder

	.type	__pool_l64a_302, @object
__pool_l64a_302:
	.align	2
$L302:
	.word	s.0
$L303:
	.word	digits
	.type	__pend_l64a_302, @object
__pend_l64a_302:
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
	lw	$2,$L305
	dsrl	$4,32
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.type	__pool_srand_305, @object
__pool_srand_305:
	.align	2
$L305:
	.word	seed
	.type	__pend_srand_305, @object
__pend_srand_305:
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
	lw	$3,$L308
	ld	$4,0($3)
	ld	$5,$L309
	dmult	$4,$5
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_308, @object
__pool_rand_308:
	.align	2
$L308:
	.word	seed
	.align	3
$L309:
	.dword	6364136223846793005
	.type	__pend_rand_308, @object
__pend_rand_308:
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
	beqz	$5,$L316
	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$3,0($4)
	beqz	$3,$L317
	sw	$4,4($3)
$L317:
	jr	$31
$L316:
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
	beqz	$2,$L319
	lw	$3,4($4)
	sw	$3,4($2)
$L319:
	lw	$4,4($4)
	beqz	$4,$L327
	sw	$2,0($4)
$L327:
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
	lw	$2,$L345
	lw	$6,0($4)
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	move	$28,$2
	sw	$2,32($sp)
	sw	$5,80($sp)
	sw	$7,96($sp)
	sw	$6,44($sp)
	beqz	$6,$L329
	move	$17,$5
	li	$16,0
	b	$L331
$L344:
	lw	$7,44($sp)
	lw	$5,96($sp)
	addiu	$16,1
	cmp	$7,$16
	addu	$17,$17,$5
	bteqz	$L329
$L331:
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
	bnez	$2,$L344
$L328:
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

$L329:
	lw	$3,44($sp)
	lw	$16,96($sp)
	lw	$5,80($sp)
	mult	$16,$3
	lw	$4,88($sp)
	mflo	$2
	lw	$7,96($sp)
	addiu	$6,$3,1
	addu	$17,$5,$2
	sw	$6,0($4)
	sw	$17,40($sp)
	beqz	$7,$L328
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

	.type	__pool_lsearch_345, @object
__pool_lsearch_345:
	.align	2
$L345:
	.word	__gnu_local_gp
	.type	__pend_lsearch_345, @object
__pend_lsearch_345:
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
	beqz	$2,$L347
	move	$17,$5
	li	$16,0
	b	$L349
$L358:
	lw	$5,44($sp)
	lw	$4,96($sp)
	addiu	$16,1
	cmp	$5,$16
	addu	$17,$17,$4
	bteqz	$L347
$L349:
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

	bnez	$2,$L358
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

$L347:
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
	btnez	$L361
	jr	$31
$L361:
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
$L369:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L363
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L363
	cmpi	$3,43
	bteqz	$L364
	cmpi	$3,45
	bteqz	$L365
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L384
	move	$5,$4
	li	$7,0
$L367:
	li	$2,0
$L371:
	sll	$4,$2,2
	addu	$6,$4,$2
	sll	$4,$6,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L371
	bnez	$7,$L385
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L363:
	addiu	$4,1
	b	$L369
$L365:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L374
	li	$7,1
	b	$L367
$L374:
	li	$2,0
$L385:
	jr	$31
$L364:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L367
$L384:
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
$L391:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L387
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L387
	cmpi	$3,43
	bteqz	$L388
	cmpi	$3,45
	bteqz	$L389
	addiu	$3,-48
	sltu	$3,10
	move	$5,$4
	bteqz	$L409
$L408:
	li	$7,0
$L392:
	li	$2,0
$L395:
	sll	$4,$2,2
	addu	$6,$4,$2
	sll	$4,$6,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L395
	bnez	$7,$L410
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L387:
	addiu	$4,1
	b	$L391
$L389:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,1
	btnez	$L392
$L409:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L388:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	btnez	$L408
	li	$2,0
$L410:
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
$L418:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L412
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L412
	cmpi	$3,43
	bteqz	$L413
	cmpi	$3,45
	bteqz	$L414
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L433
	move	$5,$4
	li	$7,0
$L416:
	li	$2,0
$L420:
	dsll	$4,$2,2
	daddu	$6,$4,$2
	addiu	$5,1
	dsll	$4,$6,1
	move	$6,$3
	lb	$3,0($5)
	dsubu	$2,$4,$6
	addiu	$3,-48
	sltu	$3,10
	btnez	$L420
	bnez	$7,$L434
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$6,$4
	.set	macro
	.set	reorder

$L412:
	addiu	$4,1
	b	$L418
$L414:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L423
	li	$7,1
	b	$L416
$L423:
	li	$2,0
$L434:
	jr	$31
$L413:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L416
$L433:
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
	beqz	$6,$L436
	move	$16,$6
$L439:
	lw	$2,96($sp)
	srl	$17,$16,1
	mult	$17,$2
	lw	$5,80($sp)
	mflo	$4
	lw	$7,104($sp)
	addu	$6,$5,$4
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
	btnez	$L440
	beqz	$2,$L435
	lw	$2,40($sp)
	lw	$3,96($sp)
	addiu	$16,-1
	addu	$4,$2,$3
	subu	$16,$16,$17
	sw	$4,80($sp)
	bnez	$16,$L439
$L436:
	li	$17,0
	sw	$17,40($sp)
$L435:
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

$L440:
	move	$16,$17
	bnez	$16,$L439
	b	$L436
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
	beqz	$6,$L454
$L462:
	lw	$4,96($sp)
	sra	$2,$17,1
	mult	$2,$4
	lw	$5,80($sp)
	mflo	$16
	sw	$2,40($sp)
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

	beqz	$2,$L449
	slt	$2,1
	btnez	$L452
	lw	$7,96($sp)
	addiu	$17,-1
	addu	$3,$16,$7
	sra	$17,$17,1
	sw	$3,80($sp)
	bnez	$17,$L462
$L454:
	li	$16,0
$L449:
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

$L452:
	lw	$6,40($sp)
	beqz	$6,$L454
	move	$17,$6
	b	$L462
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
	btnez	$L468
	jr	$31
$L468:
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
	btnez	$L472
	jr	$31
$L472:
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
	btnez	$L476
	jr	$31
$L476:
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
	beqz	$3,$L486
$L479:
	xor	$3,$5
	beqz	$3,$L487
	lw	$3,4($4)
	addiu	$4,4
	bnez	$3,$L479
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L487:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L486:
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
	b	$L497
$L498:
	beqz	$2,$L490
	addiu	$4,4
	addiu	$5,4
$L497:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	bteqz	$L498
$L490:
	slt	$2,$3
	btnez	$L493
	slt	$3,$2
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L493:
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
$L500:
	lw	$6,0($5)
	addiu	$3,4
	sw	$6,-4($3)
	addiu	$5,4
	bnez	$6,$L500
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
	beqz	$2,$L505
	move	$5,$4
$L504:
	lw	$3,4($5)
	addiu	$5,4
	bnez	$3,$L504
	subu	$4,$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$4,2
	.set	macro
	.set	reorder

$L505:
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
	beqz	$6,$L513
$L519:
	lw	$3,0($4)
	lw	$2,0($5)
	xor	$2,$3
	bnez	$2,$L510
	beqz	$3,$L510
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L519
$L513:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L510:
	lw	$4,0($4)
	lw	$5,0($5)
	slt	$4,$5
	btnez	$L520
	slt	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L520:
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
	bnez	$6,$L522
	b	$L529
$L524:
	addiu	$6,-1
	addiu	$4,4
	beqz	$6,$L525
$L522:
	lw	$3,0($4)
	xor	$3,$5
	bnez	$3,$L524
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L525:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L529:
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
	beqz	$6,$L536
$L545:
	lw	$3,0($4)
	lw	$2,0($5)
	cmp	$3,$2
	btnez	$L544
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L545
$L536:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L544:
	slt	$3,$2
	btnez	$L546
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L546:
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
	lw	$2,$L553
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	beqz	$6,$L548
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
$L548:
	ld	$7,40($sp)
	move	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool_wmemcpy_553, @object
__pool_wmemcpy_553:
	.align	2
$L553:
	.word	__gnu_local_gp
	.type	__pend_wmemcpy_553, @object
__pend_wmemcpy_553:
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
	bteqz	$L587
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	subu	$17,$2,$5
	sll	$16,$6,2
	sltu	$17,$16
	move	$7,$4
	addiu	$3,$6,-1
	move	$4,$5
	btnez	$L556
	beqz	$6,$L571
	sltu	$3,9
	btnez	$L581
	move	$16,$5
	or	$16,$2
	li	$17,7
	and	$16,$17
	bnez	$16,$L581
	addiu	$16,$5,4
	xor	$16,$2
	beqz	$16,$L581
	srl	$16,$6,1
	li	$3,0
$L564:
	ld	$17,0($4)
	addiu	$3,1
	cmp	$3,$16
	sd	$17,0($7)
	addiu	$4,8
	addiu	$7,8
	btnez	$L564
	li	$7,1
	and	$7,$6
	beqz	$7,$L571
	li	$4,2
	neg	$16,$4
	and	$6,$16
	sll	$6,$6,2
	addu	$5,$5,$6
	lw	$3,0($5)
	addu	$17,$2,$6
	sw	$3,0($17)
$L571:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L581:
	lw	$16,0($4)
	addiu	$3,-1
	addiu	$6,$3,1
	sw	$16,0($7)
	addiu	$4,4
	addiu	$7,4
	beqz	$6,$L571
	lw	$16,0($4)
	addiu	$3,-1
	addiu	$6,$3,1
	sw	$16,0($7)
	addiu	$4,4
	addiu	$7,4
	bnez	$6,$L581
	b	$L571
$L556:
	beqz	$6,$L571
	sll	$7,$3,2
$L559:
	addu	$4,$5,$7
	addu	$17,$2,$7
	lw	$3,0($4)
	addiu	$7,-4
	addiu	$16,$7,4
	sw	$3,0($17)
	bnez	$16,$L559
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L587:
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
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	move	$2,$4
	sd	$17,8($sp)
	sd	$16,0($sp)
	beqz	$6,$L589
	addiu	$4,$6,-1
	srl	$3,$2,2
	li	$7,1
	sltu	$4,6
	and	$3,$7
	btnez	$L594
	beqz	$3,$L595
	addiu	$16,$2,4
	move	$8,$16
	sw	$5,0($2)
	addiu	$4,$6,-2
$L591:
	dsll	$16,$5,32
	subu	$6,$6,$3
	dsll	$7,$5,32
	dsrl	$16,32
	sll	$3,$3,2
	or	$16,$7
	srl	$17,$6,1
	addu	$3,$2,$3
	li	$7,0
$L592:
	addiu	$7,1
	cmp	$7,$17
	sd	$16,0($3)
	addiu	$3,8
	btnez	$L592
	li	$17,1
	and	$17,$6
	beqz	$17,$L589
	li	$16,2
	neg	$3,$16
	and	$6,$3
	subu	$4,$4,$6
	move	$7,$8
	sll	$6,$6,2
	addu	$6,$7,$6
$L590:
	sw	$5,0($6)
	beqz	$4,$L589
	cmpi	$4,1
	sw	$5,4($6)
	bteqz	$L589
	cmpi	$4,2
	sw	$5,8($6)
	bteqz	$L589
	cmpi	$4,3
	sw	$5,12($6)
	bteqz	$L589
	cmpi	$4,4
	sw	$5,16($6)
	bteqz	$L589
	sw	$5,20($6)
$L589:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L595:
	move	$8,$2
	b	$L591
$L594:
	move	$6,$2
	b	$L590
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.set	mips16
	.set	nomicromips
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	sltu	$4,$5
	bteqz	$L620
	addu	$7,$4,$6
	addu	$5,$5,$6
	beqz	$6,$L666
$L622:
	addiu	$7,-1
	lb	$6,0($7)
	cmp	$4,$7
	addiu	$5,-1
	sb	$6,0($5)
	btnez	$L622
	jr	$31
$L620:
	cmp	$4,$5
	bteqz	$L666
	beqz	$6,$L666
	addiu	$2,$6,-1
	sltu	$2,8
	btnez	$L623
	move	$7,$5
	or	$7,$4
	li	$3,7
	and	$7,$3
	bnez	$7,$L623
	addiu	$2,$4,1
	subu	$7,$5,$2
	sltu	$7,7
	btnez	$L623
	addiu	$sp,-8
	sd	$16,0($sp)
	srl	$16,$6,3
	sll	$7,$16,3
	move	$2,$5
	addu	$3,$4,$7
$L624:
	ld	$16,0($4)
	addiu	$4,8
	cmp	$3,$4
	sd	$16,0($2)
	addiu	$2,8
	btnez	$L624
	addu	$5,$5,$7
	subu	$2,$6,$7
	xor	$7,$6
	beqz	$7,$L619
	lb	$4,0($3)
	cmpi	$2,1
	sb	$4,0($5)
	bteqz	$L619
	lb	$6,1($3)
	cmpi	$2,2
	sb	$6,1($5)
	bteqz	$L619
	lb	$7,2($3)
	cmpi	$2,3
	sb	$7,2($5)
	bteqz	$L619
	lb	$16,3($3)
	cmpi	$2,4
	sb	$16,3($5)
	bteqz	$L619
	lb	$4,4($3)
	cmpi	$2,5
	sb	$4,4($5)
	bteqz	$L619
	lb	$6,5($3)
	cmpi	$2,6
	sb	$6,5($5)
	bteqz	$L619
	lb	$3,6($3)
	sb	$3,6($5)
$L619:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L623:
	addu	$7,$4,$6
$L627:
	lb	$2,0($4)
	addiu	$4,1
	cmp	$7,$4
	sb	$2,0($5)
	addiu	$5,1
	btnez	$L627
$L666:
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
	lw	$7,$L681
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

	.type	__pool_bswap_32_681, @object
__pool_bswap_32_681:
	.align	2
$L681:
	.word	16711680
	.type	__pend_bswap_32_681, @object
__pend_bswap_32_681:
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
	ld	$5,$L684
	ld	$7,$L685
	or	$3,$6
	dsrl	$2,24
	move	$6,$4
	and	$2,$5
	dsrl	$6,8
	ld	$5,$L686
	and	$6,$7
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$7,$L687
	or	$3,$6
	or	$3,$2
	dsll	$6,$4,24
	dsll	$2,$4,40
	ld	$4,$L688
	and	$6,$7
	or	$3,$6
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_684, @object
__pool_bswap_64_684:
	.align	3
$L684:
	.dword	16711680
$L685:
	.dword	4278190080
$L686:
	.dword	1095216660480
$L687:
	.dword	280375465082880
$L688:
	.dword	71776119061217280
	.type	__pend_bswap_64_684, @object
__pend_bswap_64_684:
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
	b	$L692
$L695:
	cmpi	$2,32
	bteqz	$L694
$L692:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	addiu	$2,1
	beqz	$3,$L695
	jr	$31
$L694:
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
	beqz	$4,$L699
	li	$2,1
	and	$2,$4
	bnez	$2,$L702
	li	$2,1
$L698:
	sra	$4,$4,1
	li	$3,1
	and	$3,$4
	addiu	$2,1
	beqz	$3,$L698
	jr	$31
$L699:
	li	$2,0
$L702:
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
	lw	$2,$L709
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$5,$L710
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
	btnez	$L707
	lw	$7,%call16(__mips16_gtsf2)($17)
	lw	$5,$L711
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

$L707:
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

	.type	__pool_gl_isinff_709, @object
__pool_gl_isinff_709:
	.align	2
$L709:
	.word	__gnu_local_gp
$L710:
	.word	-8388609
$L711:
	.word	2139095039
	.type	__pend_gl_isinff_709, @object
__pend_gl_isinff_709:
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
	lw	$2,$L717
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L718
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
	btnez	$L715
	lw	$7,%call16(__mips16_gtdf2)($17)
	ld	$5,$L719
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

$L715:
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

	.type	__pool_gl_isinfd_717, @object
__pool_gl_isinfd_717:
	.align	2
$L717:
	.word	__gnu_local_gp
	.align	3
$L718:
	.word	-1
	.word	-1048577
$L719:
	.word	-1
	.word	2146435071
	.type	__pend_gl_isinfd_717, @object
__pend_gl_isinfd_717:
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
	lw	$2,$L725
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L726
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
	btnez	$L723
	lw	$7,%call16(__mips16_gtdf2)($17)
	ld	$5,$L727
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

$L723:
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

	.type	__pool_gl_isinfl_725, @object
__pool_gl_isinfl_725:
	.align	2
$L725:
	.word	__gnu_local_gp
	.align	3
$L726:
	.word	-1
	.word	-1048577
$L727:
	.word	-1
	.word	2146435071
	.type	__pend_gl_isinfl_725, @object
__pend_gl_isinfl_725:
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
	lw	$2,$L730
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

	.type	__pool__Qp_itoq_730, @object
__pool__Qp_itoq_730:
	.align	2
$L730:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_730, @object
__pend__Qp_itoq_730:
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
	lw	$2,$L749
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
	bnez	$2,$L732
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
	beqz	$2,$L732
	slt	$16,0
	btnez	$L747
	lw	$5,$L750
$L734:
	li	$4,1
	and	$4,$16
	beqz	$4,$L735
$L736:
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
$L735:
	srl	$6,$16,31
	addu	$16,$6,$16
	sra	$16,$16,1
	beqz	$16,$L732
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
	bnez	$7,$L736
$L748:
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
	bnez	$7,$L736
	b	$L748
$L732:
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

$L747:
	lw	$5,$L751
	b	$L734
	.type	__pool_ldexpf_749, @object
__pool_ldexpf_749:
	.align	2
$L749:
	.word	__gnu_local_gp
$L750:
	.word	1073741824
$L751:
	.word	1056964608
	.type	__pend_ldexpf_749, @object
__pend_ldexpf_749:
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
	lw	$2,$L770
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
	bnez	$2,$L753
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
	beqz	$2,$L753
	slt	$16,0
	btnez	$L768
	ld	$5,$L771
$L755:
	li	$4,1
	and	$4,$16
	beqz	$4,$L756
$L757:
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
$L756:
	srl	$6,$16,31
	addu	$16,$6,$16
	sra	$16,$16,1
	beqz	$16,$L753
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
	bnez	$7,$L757
$L769:
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
	bnez	$7,$L757
	b	$L769
$L753:
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

$L768:
	ld	$5,$L772
	b	$L755
	.type	__pool_ldexp_770, @object
__pool_ldexp_770:
	.align	2
$L770:
	.word	__gnu_local_gp
	.align	3
$L771:
	.word	0
	.word	1073741824
$L772:
	.word	0
	.word	1071644672
	.type	__pend_ldexp_770, @object
__pend_ldexp_770:
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
	lw	$2,$L791
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
	bnez	$2,$L774
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
	beqz	$2,$L774
	slt	$16,0
	btnez	$L789
	ld	$5,$L792
$L776:
	li	$4,1
	and	$4,$16
	beqz	$4,$L777
$L778:
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
$L777:
	srl	$6,$16,31
	addu	$16,$6,$16
	sra	$16,$16,1
	beqz	$16,$L774
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
	bnez	$7,$L778
$L790:
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
	bnez	$7,$L778
	b	$L790
$L774:
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

$L789:
	ld	$5,$L793
	b	$L776
	.type	__pool_ldexpl_791, @object
__pool_ldexpl_791:
	.align	2
$L791:
	.word	__gnu_local_gp
	.align	3
$L792:
	.word	0
	.word	1073741824
$L793:
	.word	0
	.word	1071644672
	.type	__pend_ldexpl_791, @object
__pend_ldexpl_791:
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.set	mips16
	.set	nomicromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	move	$2,$4
	beqz	$6,$L828
	addiu	$3,$6,-1
	sltu	$3,7
	btnez	$L796
	move	$7,$4
	or	$7,$5
	li	$4,7
	and	$7,$4
	bnez	$7,$L796
	addiu	$sp,-16
	sd	$16,0($sp)
	srl	$16,$6,3
	sll	$4,$16,3
	sd	$17,8($sp)
	move	$3,$2
	addu	$16,$5,$4
$L797:
	ld	$7,0($5)
	ld	$17,0($3)
	addiu	$5,8
	xor	$7,$17
	cmp	$16,$5
	sd	$7,0($3)
	addiu	$3,8
	btnez	$L797
	addu	$3,$2,$4
	subu	$5,$6,$4
	xor	$4,$6
	beqz	$4,$L795
	lbu	$4,0($3)
	lbu	$6,0($16)
	cmpi	$5,1
	xor	$4,$6
	sb	$4,0($3)
	bteqz	$L795
	lbu	$17,1($3)
	lbu	$7,1($16)
	cmpi	$5,2
	xor	$7,$17
	sb	$7,1($3)
	bteqz	$L795
	lbu	$6,2($3)
	lbu	$4,2($16)
	cmpi	$5,3
	xor	$4,$6
	sb	$4,2($3)
	bteqz	$L795
	lbu	$17,3($3)
	lbu	$7,3($16)
	cmpi	$5,4
	xor	$7,$17
	sb	$7,3($3)
	bteqz	$L795
	lbu	$6,4($3)
	lbu	$4,4($16)
	cmpi	$5,5
	xor	$4,$6
	sb	$4,4($3)
	bteqz	$L795
	lbu	$17,5($3)
	lbu	$7,5($16)
	cmpi	$5,6
	xor	$7,$17
	sb	$7,5($3)
	bteqz	$L795
	lbu	$5,6($3)
	lbu	$16,6($16)
	xor	$16,$5
	sb	$16,6($3)
$L795:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L796:
	move	$3,$2
	addu	$6,$5,$6
$L799:
	lbu	$7,0($5)
	lbu	$4,0($3)
	addiu	$5,1
	xor	$7,$4
	cmp	$6,$5
	sb	$7,0($3)
	addiu	$3,1
	btnez	$L799
	jr	$31
$L828:
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
	beqz	$3,$L837
	move	$3,$4
$L832:
	lb	$7,1($3)
	addiu	$3,1
	bnez	$7,$L832
$L845:
	beqz	$6,$L834
$L847:
	lb	$7,0($5)
	sb	$7,0($3)
	beqz	$7,$L848
	addiu	$6,-1
	addiu	$5,1
	addiu	$3,1
	bnez	$6,$L847
$L834:
	li	$4,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sb	$4,0($3)
	.set	macro
	.set	reorder

$L848:
	jr	$31
$L837:
	move	$3,$4
	b	$L845
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
	beqz	$5,$L859
$L850:
	addu	$3,$4,$2
	lb	$6,0($3)
	bnez	$6,$L858
$L859:
	jr	$31
$L858:
	addiu	$2,1
	cmp	$5,$2
	btnez	$L850
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
	beqz	$7,$L869
$L861:
	move	$6,$5
$L864:
	lb	$3,0($6)
	beqz	$3,$L870
	xor	$3,$7
	addiu	$6,1
	bnez	$3,$L864
	jr	$31
$L870:
	lb	$7,1($2)
	addiu	$2,1
	bnez	$7,$L861
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L869:
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
	b	$L874
$L877:
	move	$2,$4
	move	$6,$2
	addiu	$4,1
	beqz	$3,$L878
$L874:
	lb	$3,0($4)
	cmp	$3,$5
	bteqz	$L877
	move	$2,$6
	move	$6,$2
	addiu	$4,1
	bnez	$3,$L874
$L878:
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
	beqz	$17,$L890
	move	$8,$5
$L881:
	lb	$3,1($5)
	addiu	$5,1
	bnez	$3,$L881
	move	$2,$8
	subu	$5,$5,$2
	bnez	$5,$L899
	b	$L890
$L904:
	addiu	$4,1
	beqz	$3,$L903
$L899:
	lb	$3,0($4)
	cmp	$3,$17
	btnez	$L904
	addiu	$16,$5,-1
	zeb	$3
	addu	$16,$4,$16
	move	$2,$8
	move	$7,$4
$L883:
	lbu	$6,0($2)
	beqz	$6,$L884
	cmp	$7,$16
	bteqz	$L884
	xor	$6,$3
	bnez	$6,$L884
	lbu	$3,1($7)
	addiu	$7,1
	addiu	$2,1
	bnez	$3,$L883
$L884:
	lbu	$6,0($2)
	xor	$6,$3
	beqz	$6,$L890
	addiu	$4,1
	b	$L899
$L903:
	ld	$17,8($sp)
	ld	$16,0($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L890:
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
	lw	$2,$L917
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L918
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
	btnez	$L916
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L918
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L909
	lw	$7,%call16(__mips16_ltdf2)($17)
	ld	$5,$L918
	.set	noreorder
	.set	nomacro
	jalr	$7
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L908
$L909:
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

$L916:
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L918
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L909
$L908:
	ld	$4,$L919
	xor	$16,$4
	b	$L909
	.type	__pool_copysign_917, @object
__pool_copysign_917:
	.align	2
$L917:
	.word	__gnu_local_gp
	.align	3
$L918:
	.word	0
	.word	0
$L919:
	.dword	-9223372036854775808
	.type	__pend_copysign_917, @object
__pend_copysign_917:
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
	beqz	$7,$L941
	sltu	$5,$7
	btnez	$L928
	addiu	$sp,-16
	subu	$5,$5,$7
	sd	$17,8($sp)
	addu	$17,$4,$5
	sltu	$17,$4
	sd	$16,0($sp)
	btnez	$L931
	lb	$4,0($6)
	move	$9,$6
	move	$8,$4
	addiu	$6,$7,-1
$L926:
	lb	$16,0($2)
	move	$5,$8
	xor	$16,$5
	addiu	$7,$2,1
	beqz	$16,$L940
	move	$2,$7
$L922:
	sltu	$17,$2
	bteqz	$L926
$L931:
	li	$2,0
$L920:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L940:
	move	$3,$9
	addiu	$3,1
	move	$10,$3
	move	$4,$3
	beqz	$6,$L920
$L925:
	move	$5,$7
	b	$L923
$L924:
	addiu	$5,1
	addu	$16,$7,$6
	xor	$16,$5
	addiu	$4,1
	beqz	$16,$L920
$L923:
	lbu	$3,0($5)
	lbu	$16,0($4)
	xor	$3,$16
	beqz	$3,$L924
	sltu	$17,$7
	btnez	$L931
	lb	$5,0($7)
	move	$4,$8
	xor	$5,$4
	addiu	$2,$7,1
	bnez	$5,$L922
	move	$3,$7
	move	$4,$10
	move	$7,$2
	move	$2,$3
	b	$L925
$L941:
	jr	$31
$L928:
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
	lw	$2,$L948
	move	$28,$2
	sd	$16,40($sp)
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$16,$6
	beqz	$6,$L943
	move	$7,$28
	lw	$2,%call16(memmove)($7)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L943:
	ld	$7,48($sp)
	addu	$2,$4,$16
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_948, @object
__pool_mempcpy_948:
	.align	2
$L948:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_948, @object
__pend_mempcpy_948:
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
	lw	$2,$L975
	addiu	$sp,-80
	move	$28,$2
	sd	$16,56($sp)
	move	$16,$28
	sw	$2,32($sp)
	sw	$5,88($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L976
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
	btnez	$L972
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L977
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L973
	li	$5,0
	sw	$5,48($sp)
$L952:
	li	$7,0
	sw	$7,40($sp)
$L958:
	lw	$3,40($sp)
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,$L978
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
	ld	$5,$L977
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
	bteqz	$L958
$L959:
	lw	$16,88($sp)
	lw	$4,40($sp)
	lw	$5,48($sp)
	sw	$4,0($16)
	beqz	$5,$L965
	ld	$2,$L979
	xor	$2,$17
$L949:
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

$L973:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L978
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L955
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L976
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L964
$L955:
	lw	$3,88($sp)
	li	$7,0
	sw	$7,0($3)
	move	$2,$17
	b	$L949
$L972:
	ld	$6,$L979
	lw	$2,%call16(__mips16_ledf2)($16)
	ld	$5,$L980
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
	bteqz	$L974
	li	$6,1
	ld	$17,40($sp)
	sw	$6,48($sp)
	b	$L952
$L965:
	move	$2,$17
	b	$L949
$L974:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L981
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L955
	li	$17,1
	sw	$17,48($sp)
$L953:
	li	$4,0
	ld	$17,40($sp)
	sw	$4,40($sp)
$L960:
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
	ld	$5,$L978
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
	btnez	$L960
	b	$L959
$L964:
	li	$4,0
	sd	$17,40($sp)
	sw	$4,48($sp)
	b	$L953
	.type	__pool_frexp_975, @object
__pool_frexp_975:
	.align	2
$L975:
	.word	__gnu_local_gp
	.align	3
$L976:
	.word	0
	.word	0
$L977:
	.word	0
	.word	1072693248
$L978:
	.word	0
	.word	1071644672
$L979:
	.dword	-9223372036854775808
$L980:
	.word	0
	.word	-1074790400
$L981:
	.word	0
	.word	-1075838976
	.type	__pend_frexp_975, @object
__pend_frexp_975:
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
	beqz	$4,$L987
$L984:
	dsll	$3,$4,63
	dsra	$3,63
	and	$3,$5
	dsrl	$4,1
	daddu	$2,$2,$3
	dsll	$5,$5,1
	bnez	$4,$L984
	jr	$31
$L987:
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
	bteqz	$L1018
	li	$2,32
	li	$3,1
$L990:
	slt	$5,0
	btnez	$L995
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L992
	addiu	$2,-1
	bnez	$2,$L990
	bnez	$6,$L1019
$L1020:
	jr	$31
$L992:
	beqz	$3,$L1005
$L995:
	addiu	$sp,-8
	li	$2,0
	sd	$16,0($sp)
$L1000:
	sltu	$4,$5
	move	$16,$24
	subu	$7,$4,$5
	cmpi	$16,1
	bnez	$16,$L997
	move	$4,$7
$L997:
	bteqz	$L998
	move	$7,$3
$L999:
	srl	$3,$3,1
	or	$2,$7
	srl	$5,$5,1
	bnez	$3,$L1000
	beqz	$6,$L989
	move	$2,$4
$L989:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L998:
	li	$7,0
	b	$L999
$L1018:
	sltu	$4,$5
	move	$3,$24
	subu	$2,$4,$5
	cmpi	$3,1
	beqz	$3,$L1003
	move	$2,$4
$L1003:
	move	$4,$2
	move	$2,$24
	beqz	$6,$L1020
	b	$L1019
$L1005:
	li	$2,0
	beqz	$6,$L1020
$L1019:
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
	lw	$2,$L1025
	cmp	$5,$4
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	bteqz	$L1023
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

$L1023:
	ld	$7,40($sp)
	li	$2,7
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___clrsbqi2_1025, @object
__pool___clrsbqi2_1025:
	.align	2
$L1025:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_1025, @object
__pend___clrsbqi2_1025:
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
	lw	$2,$L1030
	xor	$4,$5
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	beqz	$4,$L1028
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

$L1028:
	ld	$7,40($sp)
	li	$2,63
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___clrsbdi2_1030, @object
__pool___clrsbdi2_1030:
	.align	2
$L1030:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_1030, @object
__pend___clrsbdi2_1030:
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
	beqz	$4,$L1036
$L1033:
	li	$3,1
	and	$3,$4
	neg	$6,$3
	and	$6,$5
	srl	$4,$4,1
	addu	$2,$2,$6
	sll	$5,$5,1
	bnez	$4,$L1033
	jr	$31
$L1036:
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
	li	$7,8
	addiu	$sp,-16
	neg	$7,$7
	sltu	$4,$5
	and	$7,$6
	sd	$16,0($sp)
	sd	$17,8($sp)
	srl	$16,$6,3
	btnez	$L1042
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L1072
$L1042:
	beqz	$16,$L1073
	sll	$17,$16,3
	move	$2,$5
	move	$3,$4
	addu	$16,$17,$5
$L1045:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L1045
	sltu	$7,$6
	bteqz	$L1038
	subu	$2,$6,$7
	move	$9,$2
	addiu	$2,-1
	sltu	$2,8
	addu	$3,$4,$7
	addu	$2,$5,$7
	btnez	$L1047
	addiu	$16,$7,1
	addu	$17,$5,$16
	subu	$16,$3,$17
	sltu	$16,7
	btnez	$L1047
	move	$16,$2
	or	$16,$3
	li	$17,7
	and	$16,$17
	bnez	$16,$L1047
	move	$16,$9
	srl	$17,$16,3
	sll	$16,$17,3
	move	$8,$16
	addu	$16,$2,$16
$L1048:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L1048
	move	$3,$8
	move	$2,$9
	xor	$2,$3
	addu	$7,$7,$3
	beqz	$2,$L1038
	addu	$16,$5,$7
	lb	$17,0($16)
	addiu	$2,$7,1
	addu	$3,$4,$7
	sltu	$2,$6
	sb	$17,0($3)
	bteqz	$L1038
	addu	$16,$5,$2
	addu	$3,$4,$2
	lb	$17,0($16)
	addiu	$2,$7,2
	sltu	$2,$6
	sb	$17,0($3)
	bteqz	$L1038
	addu	$16,$5,$2
	addu	$3,$4,$2
	lb	$17,0($16)
	addiu	$2,$7,3
	sltu	$2,$6
	sb	$17,0($3)
	bteqz	$L1038
	addu	$16,$5,$2
	addu	$3,$4,$2
	lb	$17,0($16)
	addiu	$2,$7,4
	sltu	$2,$6
	sb	$17,0($3)
	bteqz	$L1038
	addu	$16,$5,$2
	addu	$3,$4,$2
	lb	$17,0($16)
	addiu	$2,$7,5
	sltu	$2,$6
	sb	$17,0($3)
	bteqz	$L1038
	addu	$16,$5,$2
	lb	$17,0($16)
	addiu	$7,6
	addu	$3,$4,$2
	sltu	$7,$6
	sb	$17,0($3)
	bteqz	$L1038
	addu	$5,$5,$7
	lb	$6,0($5)
	addu	$4,$4,$7
	sb	$6,0($4)
$L1038:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1072:
	addiu	$17,$6,-1
	beqz	$6,$L1038
$L1043:
	addu	$3,$5,$17
	addu	$16,$4,$17
	lb	$6,0($3)
	addiu	$17,-1
	addiu	$7,$17,1
	sb	$6,0($16)
	bnez	$7,$L1043
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1073:
	beqz	$6,$L1038
	addu	$3,$4,$7
	addu	$2,$5,$7
$L1047:
	addu	$7,$5,$6
$L1050:
	lb	$16,0($2)
	addiu	$2,1
	cmp	$7,$2
	sb	$16,0($3)
	addiu	$3,1
	btnez	$L1050
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
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sltu	$4,$5
	sd	$16,0($sp)
	sd	$17,8($sp)
	srl	$16,$6,1
	btnez	$L1078
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L1102
$L1078:
	beqz	$16,$L1077
	addiu	$2,$16,-1
	sltu	$2,7
	btnez	$L1081
	move	$7,$5
	or	$7,$4
	li	$3,7
	and	$7,$3
	bnez	$7,$L1081
	addiu	$17,$5,2
	subu	$2,$4,$17
	sltu	$2,5
	btnez	$L1081
	srl	$7,$6,3
	move	$9,$7
	sll	$7,$7,3
	move	$8,$7
	move	$2,$5
	move	$3,$4
	addu	$7,$5,$7
$L1082:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$7
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L1082
	move	$2,$9
	sll	$17,$2,2
	cmp	$16,$17
	bteqz	$L1077
	move	$2,$8
	addu	$3,$5,$2
	lh	$7,0($3)
	addu	$3,$4,$2
	sh	$7,0($3)
	addiu	$7,$17,1
	sltu	$7,$16
	bteqz	$L1077
	addu	$3,$5,$2
	lh	$7,2($3)
	addiu	$17,2
	addu	$2,$4,$2
	sltu	$17,$16
	sh	$7,2($2)
	bteqz	$L1077
	move	$16,$8
	addu	$3,$5,$16
	lh	$7,4($3)
	addu	$2,$4,$16
	sh	$7,4($2)
$L1077:
	li	$17,1
	and	$17,$6
	beqz	$17,$L1074
$L1103:
	addu	$5,$5,$6
	lb	$3,-1($5)
	addu	$4,$4,$6
	sb	$3,-1($4)
$L1074:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1102:
	addiu	$7,$6,-1
	beqz	$6,$L1074
$L1079:
	addu	$3,$5,$7
	addu	$17,$4,$7
	lb	$6,0($3)
	addiu	$7,-1
	addiu	$16,$7,1
	sb	$6,0($17)
	bnez	$16,$L1079
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1081:
	sll	$16,$16,1
	move	$17,$5
	move	$3,$4
	addu	$2,$16,$5
$L1084:
	lh	$7,0($17)
	addiu	$17,2
	cmp	$17,$2
	sh	$7,0($3)
	addiu	$3,2
	btnez	$L1084
	li	$17,1
	and	$17,$6
	beqz	$17,$L1074
	b	$L1103
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
	li	$7,4
	neg	$2,$7
	addiu	$sp,-16
	and	$2,$6
	sltu	$4,$5
	move	$10,$2
	sd	$17,8($sp)
	sd	$16,0($sp)
	srl	$17,$6,2
	btnez	$L1109
	addu	$3,$5,$6
	sltu	$3,$4
	bteqz	$L1143
$L1109:
	beqz	$17,$L1144
	addiu	$3,$17,-1
	sltu	$3,9
	btnez	$L1111
	move	$7,$4
	or	$7,$5
	li	$2,7
	and	$7,$2
	bnez	$7,$L1111
	addiu	$16,$5,4
	xor	$16,$4
	beqz	$16,$L1111
	srl	$3,$6,3
	move	$8,$3
	move	$7,$8
	sll	$16,$7,3
	move	$9,$16
	move	$2,$5
	move	$3,$4
	addu	$16,$5,$16
$L1112:
	ld	$7,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$7,0($3)
	addiu	$3,8
	btnez	$L1112
	move	$2,$8
	sll	$3,$2,1
	xor	$3,$17
	beqz	$3,$L1115
	move	$17,$9
	addu	$16,$5,$17
	lw	$7,0($16)
	addu	$3,$4,$17
	sw	$7,0($3)
$L1115:
	move	$16,$10
	sltu	$16,$6
	bteqz	$L1104
	subu	$17,$6,$16
	addiu	$2,$17,-1
	sltu	$2,8
	addu	$3,$4,$16
	addu	$2,$5,$16
	btnez	$L1107
	addiu	$7,$16,1
	addu	$16,$5,$7
	subu	$7,$3,$16
	sltu	$7,7
	btnez	$L1107
	move	$16,$2
	or	$16,$3
	li	$7,7
	and	$16,$7
	bnez	$16,$L1107
	srl	$16,$17,3
	sll	$7,$16,3
	move	$11,$7
	addu	$16,$2,$7
$L1116:
	ld	$7,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$7,0($3)
	addiu	$3,8
	btnez	$L1116
	move	$2,$11
	move	$3,$10
	xor	$17,$2
	addu	$16,$3,$2
	beqz	$17,$L1104
	addu	$17,$5,$16
	lb	$7,0($17)
	addiu	$17,$16,1
	addu	$2,$4,$16
	sltu	$17,$6
	sb	$7,0($2)
	bteqz	$L1104
	addu	$3,$5,$17
	addu	$2,$4,$17
	lb	$7,0($3)
	addiu	$17,$16,2
	sltu	$17,$6
	sb	$7,0($2)
	bteqz	$L1104
	addu	$3,$5,$17
	addu	$2,$4,$17
	lb	$7,0($3)
	addiu	$17,$16,3
	sltu	$17,$6
	sb	$7,0($2)
	bteqz	$L1104
	addu	$3,$5,$17
	addu	$2,$4,$17
	lb	$7,0($3)
	addiu	$17,$16,4
	sltu	$17,$6
	sb	$7,0($2)
	bteqz	$L1104
	addu	$3,$5,$17
	addu	$2,$4,$17
	lb	$7,0($3)
	addiu	$17,$16,5
	sltu	$17,$6
	sb	$7,0($2)
	bteqz	$L1104
	addu	$3,$5,$17
	lb	$7,0($3)
	addiu	$16,6
	addu	$2,$4,$17
	sltu	$16,$6
	sb	$7,0($2)
	bteqz	$L1104
	addu	$5,$5,$16
	lb	$6,0($5)
	addu	$4,$4,$16
	sb	$6,0($4)
$L1104:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1143:
	addiu	$16,$6,-1
	beqz	$6,$L1104
$L1110:
	addu	$6,$5,$16
	addu	$7,$4,$16
	lb	$17,0($6)
	addiu	$16,-1
	addiu	$2,$16,1
	sb	$17,0($7)
	bnez	$2,$L1110
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1111:
	sll	$17,$17,2
	move	$16,$5
	move	$2,$4
	addu	$3,$17,$5
$L1114:
	lw	$7,0($16)
	addiu	$16,4
	cmp	$16,$3
	sw	$7,0($2)
	addiu	$2,4
	btnez	$L1114
	b	$L1115
$L1144:
	beqz	$6,$L1104
	move	$16,$10
	addu	$3,$4,$16
	addu	$2,$5,$16
$L1107:
	addu	$16,$5,$6
$L1118:
	lb	$17,0($2)
	addiu	$2,1
	cmp	$16,$2
	sb	$17,0($3)
	addiu	$3,1
	btnez	$L1118
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
	lw	$2,$L1148
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

	.type	__pool___uitod_1148, @object
__pool___uitod_1148:
	.align	2
$L1148:
	.word	__gnu_local_gp
	.type	__pend___uitod_1148, @object
__pend___uitod_1148:
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
	lw	$2,$L1151
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

	.type	__pool___uitof_1151, @object
__pool___uitof_1151:
	.align	2
$L1151:
	.word	__gnu_local_gp
	.type	__pend___uitof_1151, @object
__pend___uitof_1151:
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
	lw	$5,$L1154
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

	.type	__pool___ulltod_1154, @object
__pool___ulltod_1154:
	.align	2
$L1154:
	.word	__gnu_local_gp
	.type	__pend___ulltod_1154, @object
__pend___ulltod_1154:
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
	lw	$5,$L1157
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

	.type	__pool___ulltof_1157, @object
__pool___ulltof_1157:
	.align	2
$L1157:
	.word	__gnu_local_gp
	.type	__pend___ulltof_1157, @object
__pend___ulltof_1157:
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
	bnez	$2,$L1162
	sra	$2,$3,6
	bnez	$2,$L1179
	sra	$5,$3,5
	bnez	$5,$L1163
	sra	$6,$3,4
	bnez	$6,$L1164
	sra	$7,$3,3
	bnez	$7,$L1165
	sra	$2,$3,2
	bnez	$2,$L1166
	sra	$5,$3,1
	bnez	$5,$L1167
	bnez	$3,$L1168
	sra	$3,$4,7
	bnez	$3,$L1169
	sra	$6,$4,6
	bnez	$6,$L1170
	sra	$7,$4,5
	bnez	$7,$L1171
	sra	$2,$4,4
	bnez	$2,$L1172
	sra	$5,$4,3
	bnez	$5,$L1173
	sra	$3,$4,2
	bnez	$3,$L1174
	sra	$6,$4,1
	bnez	$6,$L1175
	li	$2,16
	bnez	$4,$L1178
$L1179:
	jr	$31
$L1162:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1173:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L1178:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L1163:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1164:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L1165:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L1166:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L1167:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L1168:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L1169:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L1170:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L1171:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L1172:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L1174:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L1175:
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
	bnez	$2,$L1183
	li	$3,2
	and	$3,$4
	bnez	$3,$L1184
	li	$5,4
	and	$5,$4
	bnez	$5,$L1185
	li	$6,8
	and	$6,$4
	bnez	$6,$L1186
	li	$7,16
	and	$7,$4
	bnez	$7,$L1187
	li	$2,32
	and	$2,$4
	bnez	$2,$L1188
	li	$3,64
	and	$3,$4
	bnez	$3,$L1189
	li	$5,128
	and	$5,$4
	bnez	$5,$L1190
	li	$6,255
	addiu	$6,1
	and	$6,$4
	bnez	$6,$L1191
	li	$7,512
	and	$7,$4
	bnez	$7,$L1192
	li	$2,1024
	and	$2,$4
	bnez	$2,$L1193
	li	$3,2048
	and	$3,$4
	bnez	$3,$L1194
	li	$5,4096
	and	$5,$4
	bnez	$5,$L1195
	li	$6,8192
	and	$6,$4
	bnez	$6,$L1196
	li	$7,16384
	and	$7,$4
	bnez	$7,$L1197
	srl	$4,$4,8
	srl	$3,$4,7
	li	$2,16
	bnez	$3,$L1200
	jr	$31
$L1183:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1184:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1195:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L1200:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L1185:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1186:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L1187:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L1188:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L1189:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L1190:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L1191:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L1192:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L1193:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L1194:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L1196:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L1197:
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
	lw	$2,$L1209
	addiu	$sp,-64
	move	$28,$2
	sd	$16,40($sp)
	move	$16,$28
	sw	$2,32($sp)
	lw	$5,$L1210
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
	bteqz	$L1208
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

$L1208:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L1210
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

	.type	__pool___fixunssfsi_1209, @object
__pool___fixunssfsi_1209:
	.align	2
$L1209:
	.word	__gnu_local_gp
$L1210:
	.word	1191182336
	.type	__pend___fixunssfsi_1209, @object
__pend___fixunssfsi_1209:
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
	beqz	$4,$L1218
$L1215:
	li	$3,1
	and	$3,$4
	neg	$6,$3
	and	$6,$5
	srl	$4,$4,1
	addu	$2,$2,$6
	sll	$5,$5,1
	bnez	$4,$L1215
	jr	$31
$L1218:
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
	beqz	$4,$L1226
	beqz	$5,$L1226
$L1222:
	li	$3,1
	and	$3,$5
	neg	$6,$3
	and	$6,$4
	srl	$5,$5,1
	addu	$2,$2,$6
	sll	$4,$4,1
	bnez	$5,$L1222
	jr	$31
$L1226:
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
	bteqz	$L1257
	li	$2,32
	li	$3,1
$L1229:
	slt	$5,0
	btnez	$L1234
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1231
	addiu	$2,-1
	bnez	$2,$L1229
	bnez	$6,$L1258
$L1259:
	jr	$31
$L1231:
	beqz	$3,$L1244
$L1234:
	addiu	$sp,-8
	li	$2,0
	sd	$16,0($sp)
$L1239:
	sltu	$4,$5
	move	$16,$24
	subu	$7,$4,$5
	cmpi	$16,1
	bnez	$16,$L1236
	move	$4,$7
$L1236:
	bteqz	$L1237
	move	$7,$3
$L1238:
	srl	$3,$3,1
	or	$2,$7
	srl	$5,$5,1
	bnez	$3,$L1239
	beqz	$6,$L1228
	move	$2,$4
$L1228:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L1237:
	li	$7,0
	b	$L1238
$L1257:
	sltu	$4,$5
	move	$3,$24
	subu	$2,$4,$5
	cmpi	$3,1
	beqz	$3,$L1242
	move	$2,$4
$L1242:
	move	$4,$2
	move	$2,$24
	beqz	$6,$L1259
	b	$L1258
$L1244:
	li	$2,0
	beqz	$6,$L1259
$L1258:
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
	lw	$2,$L1265
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
	btnez	$L1263
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

$L1263:
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

	.type	__pool___mspabi_cmpf_1265, @object
__pool___mspabi_cmpf_1265:
	.align	2
$L1265:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_1265, @object
__pend___mspabi_cmpf_1265:
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
	lw	$2,$L1271
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
	btnez	$L1269
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

$L1269:
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

	.type	__pool___mspabi_cmpd_1271, @object
__pool___mspabi_cmpd_1271:
	.align	2
$L1271:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_1271, @object
__pend___mspabi_cmpd_1271:
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
	btnez	$L1288
	beqz	$5,$L1280
	li	$7,0
$L1276:
	li	$6,32
	li	$2,0
	b	$L1279
$L1289:
	addiu	$6,-1
	zeb	$6
	beqz	$6,$L1278
$L1279:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	sra	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L1289
$L1278:
	beqz	$7,$L1290
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1280:
	li	$2,0
$L1290:
	jr	$31
$L1288:
	neg	$5,$5
	li	$7,1
	b	$L1276
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
	btnez	$L1320
	li	$2,1
	li	$16,0
$L1292:
	slt	$5,0
	bteqz	$L1293
	neg	$5,$5
	move	$16,$2
$L1293:
	sltu	$5,$4
	move	$6,$4
	move	$3,$5
	bteqz	$L1321
	li	$7,32
	li	$5,1
	b	$L1294
$L1298:
	addiu	$7,-1
	beqz	$7,$L1299
$L1294:
	sll	$3,$3,1
	sltu	$3,$4
	sll	$5,$5,1
	btnez	$L1298
$L1299:
	li	$2,0
	beqz	$5,$L1297
$L1296:
	sltu	$6,$3
	move	$4,$24
	subu	$7,$6,$3
	cmpi	$4,1
	bnez	$4,$L1301
	move	$6,$7
$L1301:
	bteqz	$L1302
	move	$7,$5
$L1303:
	srl	$5,$5,1
	or	$2,$7
	srl	$3,$3,1
	bnez	$5,$L1296
$L1297:
	beqz	$16,$L1291
	neg	$2,$2
$L1291:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L1302:
	li	$7,0
	b	$L1303
$L1320:
	neg	$4,$4
	li	$2,0
	li	$16,1
	b	$L1292
$L1321:
	sltu	$4,$5
	move	$2,$24
	li	$3,1
	xor	$2,$3
	b	$L1297
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
	btnez	$L1350
	li	$7,0
$L1323:
	slt	$5,0
	move	$2,$4
	bteqz	$L1324
	neg	$5,$5
$L1324:
	sltu	$5,$4
	move	$3,$5
	bteqz	$L1351
	li	$6,32
	li	$5,1
	b	$L1325
$L1329:
	addiu	$6,-1
	beqz	$6,$L1330
$L1325:
	sll	$3,$3,1
	sltu	$3,$4
	sll	$5,$5,1
	btnez	$L1329
$L1330:
	beqz	$5,$L1349
$L1327:
	sltu	$2,$3
	subu	$4,$2,$3
	btnez	$L1332
	move	$2,$4
$L1332:
	srl	$5,$5,1
	srl	$3,$3,1
	bnez	$5,$L1327
$L1328:
	beqz	$7,$L1352
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1352:
	jr	$31
$L1350:
	neg	$4,$4
	li	$7,1
	b	$L1323
$L1351:
	sltu	$4,$5
	subu	$2,$4,$5
	bteqz	$L1328
$L1349:
	move	$2,$4
	b	$L1328
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
	bteqz	$L1513
	srl	$2,$5,8
	srl	$3,$2,7
	bnez	$3,$L1358
	sll	$3,$5,1
	zeh	$3
	addiu	$sp,-16
	sltu	$3,$4
	sd	$17,8($sp)
	sd	$16,0($sp)
	bteqz	$L1431
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1431
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$4
	bteqz	$L1433
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1433
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$4
	bteqz	$L1435
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1435
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$4
	bteqz	$L1437
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1437
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$4
	bteqz	$L1439
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1439
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$4
	bteqz	$L1441
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1441
	sll	$3,$5,7
	zeh	$3
	sltu	$3,$4
	bteqz	$L1443
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1443
	sll	$5,$5,8
	move	$3,$5
	zeh	$3
	sltu	$3,$4
	bteqz	$L1445
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1445
	sll	$3,$5,1
	zeh	$3
	sltu	$3,$4
	bteqz	$L1447
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1447
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$4
	bteqz	$L1449
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1449
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$4
	bteqz	$L1451
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1451
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$4
	bteqz	$L1453
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1453
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$4
	bteqz	$L1455
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1455
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$4
	bteqz	$L1457
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1457
	sll	$7,$5,7
	zeh	$7
	sltu	$7,$4
	bteqz	$L1458
	move	$2,$4
	bnez	$7,$L1514
$L1361:
	bnez	$6,$L1460
	move	$2,$7
$L1460:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1431:
	li	$5,2
$L1360:
	subu	$16,$4,$3
	sltu	$4,$3
	zeh	$16
	btnez	$L1427
	move	$4,$16
$L1427:
	zeh	$4
	btnez	$L1428
	move	$7,$5
$L1429:
	srl	$17,$3,1
	subu	$2,$4,$17
	sltu	$4,$17
	zeh	$7
	srl	$16,$5,1
	zeh	$2
	bteqz	$L1363
	move	$2,$4
$L1363:
	zeh	$2
	bteqz	$L1365
	li	$16,0
$L1365:
	or	$7,$16
	srl	$4,$5,2
	zeh	$7
	srl	$17,$3,2
	beqz	$4,$L1361
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1367
	move	$2,$16
$L1367:
	zeh	$2
	btnez	$L1369
	li	$4,0
$L1369:
	or	$7,$4
	srl	$4,$5,3
	zeh	$7
	srl	$17,$3,3
	beqz	$4,$L1361
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1371
	move	$2,$16
$L1371:
	zeh	$2
	btnez	$L1373
	li	$4,0
$L1373:
	or	$7,$4
	srl	$4,$5,4
	zeh	$7
	srl	$17,$3,4
	beqz	$4,$L1361
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1375
	move	$2,$16
$L1375:
	zeh	$2
	btnez	$L1377
	li	$4,0
$L1377:
	or	$7,$4
	srl	$4,$5,5
	zeh	$7
	srl	$17,$3,5
	beqz	$4,$L1361
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1379
	move	$2,$16
$L1379:
	zeh	$2
	btnez	$L1381
	li	$4,0
$L1381:
	or	$7,$4
	srl	$4,$5,6
	zeh	$7
	srl	$17,$3,6
	beqz	$4,$L1361
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1383
	move	$2,$16
$L1383:
	zeh	$2
	btnez	$L1385
	li	$4,0
$L1385:
	or	$7,$4
	srl	$4,$5,7
	zeh	$7
	srl	$17,$3,7
	beqz	$4,$L1361
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1387
	move	$2,$16
$L1387:
	zeh	$2
	btnez	$L1389
	li	$4,0
$L1389:
	or	$7,$4
	srl	$4,$5,8
	zeh	$7
	move	$9,$4
	srl	$17,$3,8
	beqz	$4,$L1361
	sltu	$2,$17
	subu	$3,$2,$17
	move	$16,$24
	zeh	$3
	cmpi	$16,1
	bnez	$16,$L1391
	move	$2,$3
$L1391:
	zeh	$2
	btnez	$L1393
	li	$4,0
$L1393:
	move	$3,$9
	or	$7,$4
	srl	$16,$17,1
	srl	$4,$3,1
	zeh	$7
	zeh	$16
	beqz	$4,$L1361
	sltu	$2,$16
	subu	$3,$2,$16
	move	$16,$24
	zeh	$3
	cmpi	$16,1
	bnez	$16,$L1395
	move	$2,$3
$L1395:
	zeh	$2
	btnez	$L1397
	li	$4,0
$L1397:
	move	$3,$9
	or	$7,$4
	srl	$16,$17,2
	srl	$3,$3,2
	zeh	$7
	zeh	$16
	beqz	$3,$L1361
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1399
	move	$2,$4
$L1399:
	zeh	$2
	btnez	$L1401
	li	$3,0
$L1401:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,3
	srl	$3,$4,3
	zeh	$7
	zeh	$16
	beqz	$3,$L1361
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1403
	move	$2,$4
$L1403:
	zeh	$2
	btnez	$L1405
	li	$3,0
$L1405:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,4
	srl	$3,$4,4
	zeh	$7
	zeh	$16
	beqz	$3,$L1361
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1407
	move	$2,$4
$L1407:
	zeh	$2
	btnez	$L1409
	li	$3,0
$L1409:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,5
	srl	$3,$4,5
	zeh	$7
	zeh	$16
	beqz	$3,$L1361
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1411
	move	$2,$4
$L1411:
	zeh	$2
	btnez	$L1413
	li	$3,0
$L1413:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,6
	srl	$3,$4,6
	zeh	$7
	zeh	$16
	beqz	$3,$L1361
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1415
	move	$2,$4
$L1415:
	zeh	$2
	btnez	$L1417
	li	$3,0
$L1417:
	or	$7,$3
	srl	$17,$17,7
	cmpi	$5,16384
	zeh	$7
	zeh	$17
	bteqz	$L1361
	sltu	$2,$17
	move	$16,$24
	subu	$4,$2,$17
	cmpi	$16,1
	zeh	$4
	move	$5,$24
	bnez	$16,$L1419
	move	$2,$4
$L1419:
	zeh	$2
	or	$7,$5
	b	$L1361
$L1428:
	li	$7,0
	b	$L1429
$L1433:
	li	$5,4
	b	$L1360
$L1435:
	li	$5,8
	b	$L1360
$L1437:
	li	$5,16
	b	$L1360
$L1447:
	li	$5,512
	b	$L1360
$L1514:
	li	$5,32768
	move	$3,$5
	b	$L1360
$L1439:
	li	$5,32
	b	$L1360
$L1441:
	li	$5,64
	b	$L1360
$L1443:
	li	$5,128
	b	$L1360
$L1445:
	li	$5,255
	addiu	$5,1
	b	$L1360
$L1513:
	subu	$2,$4,$5
	xor	$5,$4
	zeh	$2
	beqz	$5,$L1356
	move	$2,$4
$L1356:
	sltu	$5,1
	zeh	$2
	move	$7,$24
$L1505:
	bnez	$6,$L1515
	move	$2,$7
$L1515:
	jr	$31
$L1449:
	li	$5,1024
	b	$L1360
$L1451:
	li	$5,2048
	b	$L1360
$L1453:
	li	$5,4096
	b	$L1360
$L1455:
	li	$5,8192
	b	$L1360
$L1457:
	li	$5,16384
	b	$L1360
$L1458:
	li	$3,32768
	move	$5,$3
	b	$L1360
$L1358:
	subu	$2,$4,$5
	zeh	$2
	li	$7,1
	b	$L1505
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
	bteqz	$L1545
	li	$2,32
	li	$3,1
$L1517:
	slt	$5,0
	btnez	$L1522
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1519
	addiu	$2,-1
	bnez	$2,$L1517
	bnez	$6,$L1546
$L1547:
	jr	$31
$L1519:
	beqz	$3,$L1532
$L1522:
	addiu	$sp,-8
	li	$2,0
	sd	$16,0($sp)
$L1527:
	sltu	$4,$5
	move	$16,$24
	subu	$7,$4,$5
	cmpi	$16,1
	bnez	$16,$L1524
	move	$4,$7
$L1524:
	bteqz	$L1525
	move	$7,$3
$L1526:
	srl	$3,$3,1
	or	$2,$7
	srl	$5,$5,1
	bnez	$3,$L1527
	beqz	$6,$L1516
	move	$2,$4
$L1516:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L1525:
	li	$7,0
	b	$L1526
$L1545:
	sltu	$4,$5
	move	$3,$24
	subu	$2,$4,$5
	cmpi	$3,1
	beqz	$3,$L1530
	move	$2,$4
$L1530:
	move	$4,$2
	move	$2,$24
	beqz	$6,$L1547
	b	$L1546
$L1532:
	li	$2,0
	beqz	$6,$L1547
$L1546:
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
	beqz	$6,$L1549
	sll	$7,$4,0
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

$L1549:
	beqz	$5,$L1552
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

$L1552:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_1554, @object
__pool___ashldi3_1554:
	.align	2
$L1554:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_1554, @object
__pend___ashldi3_1554:
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
	beqz	$2,$L1556
	dsll	$4,$6
	li	$2,0
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1556:
	move	$2,$4
	beqz	$6,$L1559
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

$L1559:
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
	beqz	$6,$L1562
	move	$2,$4
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

$L1562:
	move	$2,$4
	beqz	$5,$L1568
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

$L1568:
	jr	$31
	.type	__pool___ashrdi3_1567, @object
__pool___ashrdi3_1567:
	.align	2
$L1567:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_1567, @object
__pend___ashrdi3_1567:
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
	beqz	$3,$L1570
	move	$3,$5
	move	$2,$5
	dsra	$3,63
	dsra	$2,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1570:
	beqz	$6,$L1573
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

$L1573:
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
	ld	$5,$L1577
	ld	$7,$L1578
	or	$3,$6
	dsrl	$2,24
	move	$6,$4
	and	$2,$5
	dsrl	$6,8
	ld	$5,$L1579
	and	$6,$7
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$7,$L1580
	or	$3,$6
	or	$3,$2
	dsll	$6,$4,24
	dsll	$2,$4,40
	ld	$4,$L1581
	and	$6,$7
	or	$3,$6
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_1577, @object
__pool___bswapdi2_1577:
	.align	3
$L1577:
	.dword	16711680
$L1578:
	.dword	4278190080
$L1579:
	.dword	1095216660480
$L1580:
	.dword	280375465082880
$L1581:
	.dword	71776119061217280
	.type	__pend___bswapdi2_1577, @object
__pend___bswapdi2_1577:
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
	lw	$7,$L1584
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

	.type	__pool___bswapsi2_1584, @object
__pool___bswapsi2_1584:
	.align	2
$L1584:
	.word	16711680
	.type	__pend___bswapsi2_1584, @object
__pend___bswapsi2_1584:
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
	lw	$3,$L1589
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
	beqz	$3,$L1586
	subu	$4,$2,$4
	addu	$6,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$4,$6
	.set	macro
	.set	reorder

$L1586:
	li	$4,0
	addu	$6,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$4,$6
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_1589, @object
__pool___clzsi2_1589:
	.align	2
$L1589:
	.word	65536
	.type	__pend___clzsi2_1589, @object
__pend___clzsi2_1589:
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
	lw	$2,$L1594
	sd	$16,40($sp)
	move	$16,$24
	move	$7,$5
	move	$28,$2
	addiu	$5,$16,-1
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$6,$28
	and	$5,$7
	bnez	$16,$L1592
	li	$4,0
$L1592:
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

	.type	__pool___clzti2_1594, @object
__pool___clzti2_1594:
	.align	2
$L1594:
	.word	__gnu_local_gp
	.type	__pend___clzti2_1594, @object
__pend___clzti2_1594:
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
	btnez	$L1599
	slt	$6,$7
	btnez	$L1598
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1599
	sltu	$5,$4
	btnez	$L1600
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1599:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1598:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1600:
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
	btnez	$L1603
	slt	$6,$7
	btnez	$L1604
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1605
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1603:
	li	$7,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$7
	.set	macro
	.set	reorder

$L1605:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1604:
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
	btnez	$L1610
	slt	$7,$5
	btnez	$L1609
	sltu	$4,$6
	btnez	$L1610
	sltu	$6,$4
	btnez	$L1611
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1610:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1609:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1611:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	lw	$2,$L1617
	addiu	$sp,-56
	move	$28,$2
	sltu	$4,1
	move	$6,$28
	sd	$16,40($sp)
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$16,$24
	beqz	$4,$L1615
	li	$5,0
$L1615:
	lw	$2,%call16(__ctzdi2)($6)
	addiu	$7,$16,-1
	and	$4,$7
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

	.type	__pool___ctzti2_1617, @object
__pool___ctzti2_1617:
	.align	2
$L1617:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_1617, @object
__pend___ctzti2_1617:
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
	lw	$2,$L1624
	addiu	$sp,-48
	move	$28,$2
	move	$6,$28
	sd	$31,40($sp)
	sw	$2,32($sp)
	bnez	$4,$L1619
	bnez	$5,$L1623
	ld	$7,40($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L1619:
	lw	$2,%call16(__ctzdi2)($6)
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

$L1623:
	lw	$2,%call16(__ctzdi2)($6)
	move	$4,$5
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

	.type	__pool___ffsti2_1624, @object
__pool___ffsti2_1624:
	.align	2
$L1624:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_1624, @object
__pend___ffsti2_1624:
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
	li	$6,32
	move	$3,$5
	and	$3,$6
	beqz	$3,$L1626
	dsrl	$4,32
	sll	$7,$4,0
	srl	$7,$5
	li	$2,0
	dsll	$5,$2,32
	dsll	$2,$7,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$5
	.set	macro
	.set	reorder

$L1626:
	move	$2,$4
	beqz	$5,$L1632
	dsrl	$2,32
	subu	$6,$6,$5
	sll	$7,$2,0
	sll	$4,$4,0
	srl	$4,$5
	move	$2,$7
	sll	$7,$6
	srl	$2,$5
	or	$7,$4
	dsll	$5,$2,32
	dsll	$2,$7,32
	dsrl	$2,32
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$5
	.set	macro
	.set	reorder

$L1632:
	jr	$31
	.type	__pool___lshrdi3_1631, @object
__pool___lshrdi3_1631:
	.align	2
$L1631:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_1631, @object
__pend___lshrdi3_1631:
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
	beqz	$3,$L1634
	move	$2,$5
	dsrl	$2,$6
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1634:
	beqz	$6,$L1637
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

$L1637:
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
	li	$7,65535
	move	$3,$5
	sd	$17,8($sp)
	move	$17,$4
	and	$17,$7
	and	$3,$7
	mult	$17,$3
	srl	$4,$4,8
	srl	$4,$4,8
	mflo	$6
	mult	$3,$4
	sd	$16,0($sp)
	mflo	$3
	srl	$16,$6,8
	srl	$2,$16,8
	srl	$5,$5,8
	addu	$3,$3,$2
	srl	$5,$5,8
	mult	$17,$5
	sll	$16,$3,8
	and	$6,$7
	sll	$16,$16,8
	mflo	$17
	addu	$2,$6,$16
	srl	$6,$16,8
	mult	$4,$5
	srl	$16,$6,8
	addu	$6,$17,$16
	mflo	$4
	and	$2,$7
	srl	$3,$3,8
	sll	$7,$6,8
	sll	$16,$7,8
	srl	$17,$3,8
	srl	$6,$6,8
	addu	$5,$17,$4
	addu	$2,$2,$16
	srl	$7,$6,8
	addu	$16,$5,$7
	dsll	$2,$2,32
	dsll	$3,$16,32
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
	move	$12,$4
	li	$17,65535
	move	$4,$16
	move	$3,$7
	and	$4,$17
	and	$3,$17
	mult	$4,$3
	move	$11,$4
	srl	$4,$16,8
	srl	$4,$4,8
	mflo	$2
	mult	$3,$4
	srl	$6,$2,8
	mflo	$3
	srl	$6,$6,8
	addu	$6,$3,$6
	move	$10,$4
	sll	$4,$6,8
	sll	$3,$4,8
	and	$2,$17
	move	$8,$3
	addu	$3,$2,$3
	move	$2,$8
	srl	$4,$2,8
	srl	$2,$4,8
	srl	$4,$7,8
	move	$13,$2
	srl	$2,$4,8
	move	$9,$2
	move	$4,$9
	move	$2,$11
	mult	$2,$4
	move	$4,$13
	mflo	$2
	and	$3,$17
	addu	$2,$2,$4
	sll	$17,$2,8
	sll	$4,$17,8
	addu	$3,$3,$4
	move	$17,$9
	move	$4,$10
	mult	$4,$17
	srl	$6,$6,8
	mflo	$4
	srl	$2,$2,8
	srl	$6,$6,8
	srl	$17,$2,8
	addu	$6,$6,$4
	dsra	$5,32
	mult	$16,$5
	addu	$4,$6,$17
	dsll	$3,$3,32
	move	$17,$12
	dsll	$6,$4,32
	dsra	$17,32
	dsrl	$3,32
	mflo	$16
	or	$3,$6
	mult	$7,$17
	move	$5,$3
	mflo	$7
	dsra	$5,32
	addu	$2,$16,$5
	addu	$4,$2,$7
	dsll	$6,$3,32
	dsll	$2,$4,32
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
	mfhi	$17
	mflo	$3
	dmult	$4,$7
	dsll	$5,$3,32
	dsll	$3,$17,32
	move	$17,$11
	dsrl	$5,32
	or	$5,$3
	dsrl	$2,32
	daddu	$2,$2,$5
	dsrl	$16,32
	mflo	$4
	dmult	$6,$17
	daddu	$16,$2,$16
	daddu	$7,$4,$16
	ld	$2,8($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	mflo	$6
	daddu	$5,$7,$6
	sd	$5,16($sp)
	ld	$3,16($sp)
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
	ld	$3,$L1654
	move	$5,$4
	dsrl	$5,1
	and	$5,$3
	dsubu	$4,$4,$5
	ld	$7,$L1655
	move	$6,$4
	dsrl	$6,2
	and	$6,$7
	and	$4,$7
	daddu	$2,$6,$4
	move	$5,$2
	ld	$4,$L1656
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

	.type	__pool___popcountdi2_1654, @object
__pool___popcountdi2_1654:
	.align	3
$L1654:
	.dword	6148914691236517205
$L1655:
	.dword	3689348814741910323
$L1656:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1654, @object
__pend___popcountdi2_1654:
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
	lw	$3,$L1659
	srl	$5,$4,1
	and	$5,$3
	lw	$7,$L1660
	subu	$4,$4,$5
	srl	$6,$4,2
	and	$6,$7
	and	$4,$7
	addu	$5,$6,$4
	srl	$2,$5,4
	lw	$3,$L1661
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

	.type	__pool___popcountsi2_1659, @object
__pool___popcountsi2_1659:
	.align	2
$L1659:
	.word	1431655765
$L1660:
	.word	858993459
$L1661:
	.word	252645135
	.type	__pend___popcountsi2_1659, @object
__pend___popcountsi2_1659:
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
	ld	$6,$L1664
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
	ld	$4,$L1665
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
	ld	$4,$L1666
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

	.type	__pool___popcountti2_1664, @object
__pool___popcountti2_1664:
	.align	3
$L1664:
	.dword	6148914691236517205
$L1665:
	.dword	3689348814741910323
$L1666:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1664, @object
__pend___popcountti2_1664:
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
	lw	$2,$L1675
	move	$8,$4
	li	$4,1
	move	$28,$2
	and	$4,$5
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	sw	$2,32($sp)
	move	$17,$28
	beqz	$4,$L1673
	ld	$7,$L1676
	move	$16,$5
	sd	$7,40($sp)
$L1670:
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
$L1668:
	srl	$5,$16,31
	addu	$16,$5,$16
	sra	$16,$16,1
	beqz	$16,$L1669
$L1671:
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
	bnez	$7,$L1670
	srl	$6,$16,31
	addu	$3,$6,$16
	sra	$16,$3,1
	b	$L1671
$L1669:
	lw	$4,80($sp)
	slt	$4,0
	bteqz	$L1667
	lw	$17,%call16(__mips16_divdf3)($17)
	ld	$4,$L1676
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sd	$2,40($sp)
	move	$28,$6
$L1667:
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

$L1673:
	ld	$6,$L1676
	lw	$16,80($sp)
	sd	$6,40($sp)
	b	$L1668
	.type	__pool___powidf2_1675, @object
__pool___powidf2_1675:
	.align	2
$L1675:
	.word	__gnu_local_gp
	.align	3
$L1676:
	.word	0
	.word	1072693248
	.type	__pend___powidf2_1675, @object
__pend___powidf2_1675:
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
	lw	$2,$L1685
	move	$8,$4
	li	$4,1
	move	$28,$2
	and	$4,$5
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	sw	$2,32($sp)
	move	$17,$28
	beqz	$4,$L1683
	lw	$7,$L1686
	move	$16,$5
	sw	$7,40($sp)
$L1680:
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
$L1678:
	srl	$5,$16,31
	addu	$16,$5,$16
	sra	$16,$16,1
	beqz	$16,$L1679
$L1681:
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
	bnez	$7,$L1680
	srl	$6,$16,31
	addu	$3,$6,$16
	sra	$16,$3,1
	b	$L1681
$L1679:
	lw	$4,80($sp)
	slt	$4,0
	bteqz	$L1677
	lw	$17,%call16(__mips16_divsf3)($17)
	lw	$4,$L1686
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sw	$2,40($sp)
	move	$28,$6
$L1677:
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

$L1683:
	lw	$6,$L1686
	lw	$16,80($sp)
	sw	$6,40($sp)
	b	$L1678
	.type	__pool___powisf2_1685, @object
__pool___powisf2_1685:
	.align	2
$L1685:
	.word	__gnu_local_gp
$L1686:
	.word	1065353216
	.type	__pend___powisf2_1685, @object
__pend___powisf2_1685:
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
	btnez	$L1691
	sltu	$7,$6
	btnez	$L1690
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1691
	sltu	$5,$4
	btnez	$L1692
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1691:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1690:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1692:
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
	btnez	$L1695
	sltu	$7,$6
	btnez	$L1696
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1697
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1695:
	li	$6,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$6
	.set	macro
	.set	reorder

$L1697:
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$3
	.set	macro
	.set	reorder

$L1696:
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
	btnez	$L1702
	sltu	$7,$5
	btnez	$L1701
	sltu	$4,$6
	btnez	$L1702
	sltu	$6,$4
	btnez	$L1703
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1702:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1701:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1703:
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
