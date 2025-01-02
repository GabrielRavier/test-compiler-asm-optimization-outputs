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
	btnez	$L185
	addiu	$2,$4,-8
	addiu	$2,-119
	sltu	$2,33
	bteqz	$L187
$L185:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L187:
	addiu	$3,$4,-8232
	sltu	$3,2
	btnez	$L186
	li	$5,65529
	neg	$6,$5
	addu	$4,$4,$6
	sltu	$4,3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L186:
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
	btnez	$L197
	sltu	$4,8232
	btnez	$L194
	addiu	$3,$4,-8234
	li	$5,47062
	sltu	$3,$5
	btnez	$L194
	li	$6,57344
	neg	$7,$6
	addu	$2,$4,$7
	sltu	$2,8185
	btnez	$L194
	li	$3,65532
	lw	$7,$L199
	neg	$5,$3
	addu	$6,$4,$5
	sltu	$7,$6
	btnez	$L195
	li	$2,65534
	and	$4,$2
	xor	$4,$2
	sltu	$4,1
	move	$2,$24
	li	$4,1
	.set	noreorder
	.set	nomacro
	jr	$31
	xor	$2,$4
	.set	macro
	.set	reorder

$L194:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L197:
	li	$3,127
	addiu	$4,1
	and	$4,$3
	sltu	$4,33
	move	$2,$24
	li	$5,1
	.set	noreorder
	.set	nomacro
	jr	$31
	xor	$2,$5
	.set	macro
	.set	reorder

$L195:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

	.type	__pool_iswprint_198, @object
__pool_iswprint_198:
	.align	2
$L198:
	.word	__gnu_local_gp
$L199:
	.word	1048579
	.type	__pend_iswprint_198, @object
__pend_iswprint_198:
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
	btnez	$L202
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

$L202:
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
	lw	$2,$L214
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
	bnez	$2,$L207
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
	bnez	$2,$L208
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
	bteqz	$L213
	ld	$2,$L215
$L204:
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

$L213:
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
	b	$L204
$L207:
	move	$2,$16
	b	$L204
$L208:
	ld	$2,72($sp)
	b	$L204
	.type	__pool_fdim_214, @object
__pool_fdim_214:
	.align	2
$L214:
	.word	__gnu_local_gp
	.align	3
$L215:
	.word	0
	.word	0
	.type	__pend_fdim_214, @object
__pend_fdim_214:
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
	lw	$2,$L226
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
	bnez	$2,$L219
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
	bnez	$2,$L220
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
	bteqz	$L225
	lw	$2,$L227
$L216:
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

$L225:
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
	b	$L216
$L219:
	move	$2,$16
	b	$L216
$L220:
	lw	$2,72($sp)
	b	$L216
	.type	__pool_fdimf_226, @object
__pool_fdimf_226:
	.align	2
$L226:
	.word	__gnu_local_gp
$L227:
	.word	0
	.type	__pend_fdimf_226, @object
__pend_fdimf_226:
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
	lw	$2,$L241
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
	bnez	$2,$L236
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
	bnez	$2,$L235
	move	$3,$17
	move	$6,$16
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L240
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
	btnez	$L236
	move	$16,$17
$L236:
	move	$2,$16
$L228:
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

$L240:
	bnez	$3,$L236
$L235:
	move	$2,$17
	b	$L228
	.type	__pool_fmax_241, @object
__pool_fmax_241:
	.align	2
$L241:
	.word	__gnu_local_gp
	.type	__pend_fmax_241, @object
__pend_fmax_241:
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
	lw	$2,$L255
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
	bnez	$2,$L250
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
	bnez	$2,$L249
	lw	$6,$L256
	move	$7,$6
	and	$7,$17
	and	$6,$16
	xor	$6,$7
	bnez	$6,$L254
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
	btnez	$L250
	move	$16,$17
$L250:
	move	$2,$16
$L242:
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

$L254:
	bnez	$7,$L250
$L249:
	move	$2,$17
	b	$L242
	.type	__pool_fmaxf_255, @object
__pool_fmaxf_255:
	.align	2
$L255:
	.word	__gnu_local_gp
$L256:
	.word	-2147483648
	.type	__pend_fmaxf_255, @object
__pend_fmaxf_255:
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
	lw	$2,$L270
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
	bnez	$2,$L265
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
	bnez	$2,$L264
	move	$3,$17
	move	$6,$16
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L269
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
	btnez	$L265
	move	$16,$17
$L265:
	move	$2,$16
$L257:
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

$L269:
	bnez	$3,$L265
$L264:
	move	$2,$17
	b	$L257
	.type	__pool_fmaxl_270, @object
__pool_fmaxl_270:
	.align	2
$L270:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_270, @object
__pend_fmaxl_270:
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
	lw	$2,$L284
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
	bnez	$2,$L277
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
	bnez	$2,$L279
	move	$3,$16
	move	$6,$17
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L283
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
	btnez	$L279
	move	$16,$17
$L279:
	move	$2,$16
$L271:
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

$L283:
	bnez	$3,$L279
$L277:
	move	$2,$17
	b	$L271
	.type	__pool_fmin_284, @object
__pool_fmin_284:
	.align	2
$L284:
	.word	__gnu_local_gp
	.type	__pend_fmin_284, @object
__pend_fmin_284:
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
	lw	$2,$L298
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
	bnez	$2,$L291
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
	bnez	$2,$L293
	lw	$6,$L299
	move	$7,$6
	and	$7,$16
	and	$6,$17
	xor	$6,$7
	bnez	$6,$L297
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
	btnez	$L293
	move	$16,$17
$L293:
	move	$2,$16
$L285:
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

$L297:
	bnez	$7,$L293
$L291:
	move	$2,$17
	b	$L285
	.type	__pool_fminf_298, @object
__pool_fminf_298:
	.align	2
$L298:
	.word	__gnu_local_gp
$L299:
	.word	-2147483648
	.type	__pend_fminf_298, @object
__pend_fminf_298:
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
	lw	$2,$L313
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
	bnez	$2,$L306
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
	bnez	$2,$L308
	move	$3,$16
	move	$6,$17
	dsrl	$3,63
	dsrl	$6,63
	xor	$6,$3
	bnez	$6,$L312
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
	btnez	$L308
	move	$16,$17
$L308:
	move	$2,$16
$L300:
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

$L312:
	bnez	$3,$L308
$L306:
	move	$2,$17
	b	$L300
	.type	__pool_fminl_313, @object
__pool_fminl_313:
	.align	2
$L313:
	.word	__gnu_local_gp
	.type	__pend_fminl_313, @object
__pend_fminl_313:
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
	lw	$3,$L319
	beqz	$4,$L315
	lw	$5,$L320
$L316:
	li	$2,63
	and	$2,$4
	addu	$6,$5,$2
	lbu	$7,0($6)
	srl	$4,$4,6
	sb	$7,0($3)
	addiu	$3,1
	bnez	$4,$L316
$L315:
	li	$4,0
	lw	$2,$L319
	.set	noreorder
	.set	nomacro
	jr	$31
	sb	$4,0($3)
	.set	macro
	.set	reorder

	.type	__pool_l64a_319, @object
__pool_l64a_319:
	.align	2
$L319:
	.word	s.0
$L320:
	.word	digits
	.type	__pend_l64a_319, @object
__pend_l64a_319:
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
	lw	$2,$L322
	dsrl	$4,32
	.set	noreorder
	.set	nomacro
	jr	$31
	sd	$4,0($2)
	.set	macro
	.set	reorder

	.type	__pool_srand_322, @object
__pool_srand_322:
	.align	2
$L322:
	.word	seed
	.type	__pend_srand_322, @object
__pend_srand_322:
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
	lw	$3,$L325
	ld	$4,0($3)
	ld	$5,$L326
	dmult	$4,$5
	mflo	$2
	daddiu	$2,1
	sd	$2,0($3)
	dsrl	$2,33
	jr	$31
	.type	__pool_rand_325, @object
__pool_rand_325:
	.align	2
$L325:
	.word	seed
	.align	3
$L326:
	.dword	6364136223846793005
	.type	__pend_rand_325, @object
__pend_rand_325:
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
	beqz	$5,$L333
	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$3,0($4)
	beqz	$3,$L334
	sw	$4,4($3)
$L334:
	jr	$31
$L333:
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
	beqz	$2,$L336
	lw	$3,4($4)
	sw	$3,4($2)
$L336:
	lw	$4,4($4)
	beqz	$4,$L344
	sw	$2,0($4)
$L344:
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
	lw	$2,$L362
	lw	$6,0($4)
	sd	$31,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	move	$28,$2
	sw	$2,32($sp)
	sw	$5,80($sp)
	sw	$7,96($sp)
	sw	$6,44($sp)
	beqz	$6,$L346
	move	$17,$5
	li	$16,0
	b	$L348
$L361:
	lw	$7,44($sp)
	lw	$5,96($sp)
	addiu	$16,1
	cmp	$7,$16
	addu	$17,$17,$5
	bteqz	$L346
$L348:
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
	bnez	$2,$L361
$L345:
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

$L346:
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
	beqz	$7,$L345
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

	.type	__pool_lsearch_362, @object
__pool_lsearch_362:
	.align	2
$L362:
	.word	__gnu_local_gp
	.type	__pend_lsearch_362, @object
__pend_lsearch_362:
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
	beqz	$2,$L364
	move	$17,$5
	li	$16,0
	b	$L366
$L375:
	lw	$5,44($sp)
	lw	$4,96($sp)
	addiu	$16,1
	cmp	$5,$16
	addu	$17,$17,$4
	bteqz	$L364
$L366:
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

	bnez	$2,$L375
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

$L364:
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
	btnez	$L378
	jr	$31
$L378:
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
$L386:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L380
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L380
	cmpi	$3,43
	bteqz	$L381
	cmpi	$3,45
	bteqz	$L382
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L401
	move	$5,$4
	li	$7,0
$L384:
	li	$2,0
$L388:
	sll	$4,$2,2
	addu	$6,$4,$2
	sll	$4,$6,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L388
	bnez	$7,$L402
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L380:
	addiu	$4,1
	b	$L386
$L382:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L391
	li	$7,1
	b	$L384
$L391:
	li	$2,0
$L402:
	jr	$31
$L381:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L384
$L401:
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
$L408:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L404
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L404
	cmpi	$3,43
	bteqz	$L405
	cmpi	$3,45
	bteqz	$L406
	addiu	$3,-48
	sltu	$3,10
	move	$5,$4
	bteqz	$L426
$L425:
	li	$7,0
$L409:
	li	$2,0
$L412:
	sll	$4,$2,2
	addu	$6,$4,$2
	sll	$4,$6,1
	addiu	$5,1
	move	$6,$3
	subu	$2,$4,$3
	lb	$3,0($5)
	addiu	$3,-48
	sltu	$3,10
	btnez	$L412
	bnez	$7,$L427
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$6,$4
	.set	macro
	.set	reorder

$L404:
	addiu	$4,1
	b	$L408
$L406:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,1
	btnez	$L409
$L426:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L405:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	btnez	$L425
	li	$2,0
$L427:
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
$L435:
	lb	$3,0($4)
	cmpi	$3,32
	bteqz	$L429
	addiu	$2,$3,-8
	addiu	$2,-1
	sltu	$2,5
	btnez	$L429
	cmpi	$3,43
	bteqz	$L430
	cmpi	$3,45
	bteqz	$L431
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L450
	move	$5,$4
	li	$7,0
$L433:
	li	$2,0
$L437:
	dsll	$4,$2,2
	daddu	$6,$4,$2
	addiu	$5,1
	dsll	$4,$6,1
	move	$6,$3
	lb	$3,0($5)
	dsubu	$2,$4,$6
	addiu	$3,-48
	sltu	$3,10
	btnez	$L437
	bnez	$7,$L451
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$6,$4
	.set	macro
	.set	reorder

$L429:
	addiu	$4,1
	b	$L435
$L431:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	bteqz	$L440
	li	$7,1
	b	$L433
$L440:
	li	$2,0
$L451:
	jr	$31
$L430:
	lb	$3,1($4)
	addiu	$5,$4,1
	addiu	$3,-48
	sltu	$3,10
	li	$7,0
	btnez	$L433
$L450:
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
	beqz	$6,$L453
	move	$16,$6
$L456:
	lw	$2,96($sp)
	srl	$17,$16,1
	mult	$17,$2
	lw	$5,80($sp)
	mflo	$4
	lw	$7,108($sp)
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
	btnez	$L457
	beqz	$2,$L452
	lw	$2,40($sp)
	lw	$3,96($sp)
	addiu	$16,-1
	addu	$4,$2,$3
	subu	$16,$16,$17
	sw	$4,80($sp)
	bnez	$16,$L456
$L453:
	li	$17,0
	sw	$17,40($sp)
$L452:
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

$L457:
	move	$16,$17
	bnez	$16,$L456
	b	$L453
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
	beqz	$6,$L471
$L479:
	lw	$4,96($sp)
	sra	$2,$17,1
	mult	$2,$4
	lw	$5,80($sp)
	mflo	$16
	sw	$2,40($sp)
	lw	$2,108($sp)
	lw	$6,116($sp)
	lw	$4,72($sp)
	addu	$16,$5,$16
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	beqz	$2,$L466
	slt	$2,1
	btnez	$L469
	lw	$7,96($sp)
	addiu	$17,-1
	addu	$3,$16,$7
	sra	$17,$17,1
	sw	$3,80($sp)
	bnez	$17,$L479
$L471:
	li	$16,0
$L466:
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

$L469:
	lw	$6,40($sp)
	beqz	$6,$L471
	move	$17,$6
	b	$L479
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
	btnez	$L485
	jr	$31
$L485:
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
	btnez	$L489
	jr	$31
$L489:
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
	btnez	$L493
	jr	$31
$L493:
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
	beqz	$3,$L503
$L496:
	xor	$3,$5
	beqz	$3,$L504
	lw	$3,4($4)
	addiu	$4,4
	bnez	$3,$L496
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L504:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L503:
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
	b	$L514
$L515:
	beqz	$2,$L507
	addiu	$4,4
	addiu	$5,4
$L514:
	lw	$2,0($4)
	lw	$3,0($5)
	cmp	$2,$3
	bteqz	$L515
$L507:
	slt	$2,$3
	btnez	$L510
	slt	$3,$2
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L510:
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
$L517:
	lw	$6,0($5)
	addiu	$3,4
	sw	$6,-4($3)
	addiu	$5,4
	bnez	$6,$L517
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
	beqz	$2,$L522
	move	$5,$4
$L521:
	lw	$3,4($5)
	addiu	$5,4
	bnez	$3,$L521
	subu	$4,$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$4,2
	.set	macro
	.set	reorder

$L522:
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
	beqz	$6,$L530
$L536:
	lw	$3,0($4)
	lw	$2,0($5)
	xor	$2,$3
	bnez	$2,$L527
	beqz	$3,$L527
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L536
$L530:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L527:
	lw	$4,0($4)
	lw	$5,0($5)
	slt	$4,$5
	btnez	$L537
	slt	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L537:
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
	bnez	$6,$L539
	b	$L546
$L541:
	addiu	$6,-1
	addiu	$4,4
	beqz	$6,$L542
$L539:
	lw	$3,0($4)
	xor	$3,$5
	bnez	$3,$L541
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L542:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L546:
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
	beqz	$6,$L553
$L562:
	lw	$3,0($4)
	lw	$2,0($5)
	cmp	$3,$2
	btnez	$L561
	addiu	$6,-1
	addiu	$4,4
	addiu	$5,4
	bnez	$6,$L562
$L553:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L561:
	slt	$3,$2
	btnez	$L563
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L563:
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
	lw	$2,$L570
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	beqz	$6,$L565
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
$L565:
	ld	$7,40($sp)
	move	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool_wmemcpy_570, @object
__pool_wmemcpy_570:
	.align	2
$L570:
	.word	__gnu_local_gp
	.type	__pend_wmemcpy_570, @object
__pend_wmemcpy_570:
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
	bteqz	$L604
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	subu	$17,$2,$5
	sll	$16,$6,2
	sltu	$17,$16
	move	$7,$4
	addiu	$3,$6,-1
	move	$4,$5
	btnez	$L573
	beqz	$6,$L588
	sltu	$3,9
	btnez	$L598
	move	$16,$5
	or	$16,$2
	li	$17,7
	and	$16,$17
	bnez	$16,$L598
	addiu	$16,$5,4
	xor	$16,$2
	beqz	$16,$L598
	srl	$16,$6,1
	li	$3,0
$L581:
	ld	$17,0($4)
	addiu	$3,1
	cmp	$3,$16
	sd	$17,0($7)
	addiu	$4,8
	addiu	$7,8
	btnez	$L581
	li	$7,1
	and	$7,$6
	beqz	$7,$L588
	li	$4,2
	neg	$16,$4
	and	$6,$16
	sll	$6,$6,2
	addu	$5,$5,$6
	lw	$3,0($5)
	addu	$17,$2,$6
	sw	$3,0($17)
$L588:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L598:
	lw	$16,0($4)
	addiu	$3,-1
	addiu	$6,$3,1
	sw	$16,0($7)
	addiu	$4,4
	addiu	$7,4
	beqz	$6,$L588
	lw	$16,0($4)
	addiu	$3,-1
	addiu	$6,$3,1
	sw	$16,0($7)
	addiu	$4,4
	addiu	$7,4
	bnez	$6,$L598
	b	$L588
$L573:
	beqz	$6,$L588
	sll	$7,$3,2
$L576:
	addu	$4,$5,$7
	addu	$17,$2,$7
	lw	$3,0($4)
	addiu	$7,-4
	addiu	$16,$7,4
	sw	$3,0($17)
	bnez	$16,$L576
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L604:
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
	beqz	$6,$L606
	addiu	$4,$6,-1
	srl	$3,$2,2
	li	$7,1
	sltu	$4,6
	and	$3,$7
	btnez	$L611
	beqz	$3,$L612
	addiu	$16,$2,4
	move	$8,$16
	sw	$5,0($2)
	addiu	$4,$6,-2
$L608:
	dsll	$7,$5,32
	subu	$6,$6,$3
	dsrl	$7,32
	dsll	$16,$5,32
	sll	$3,$3,2
	or	$16,$7
	srl	$17,$6,1
	addu	$3,$2,$3
	li	$7,0
$L609:
	addiu	$7,1
	cmp	$7,$17
	sd	$16,0($3)
	addiu	$3,8
	btnez	$L609
	li	$17,1
	and	$17,$6
	beqz	$17,$L606
	li	$16,2
	neg	$3,$16
	and	$6,$3
	subu	$4,$4,$6
	move	$7,$8
	sll	$6,$6,2
	addu	$6,$7,$6
$L607:
	sw	$5,0($6)
	beqz	$4,$L606
	cmpi	$4,1
	sw	$5,4($6)
	bteqz	$L606
	cmpi	$4,2
	sw	$5,8($6)
	bteqz	$L606
	cmpi	$4,3
	sw	$5,12($6)
	bteqz	$L606
	cmpi	$4,4
	sw	$5,16($6)
	bteqz	$L606
	sw	$5,20($6)
$L606:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L612:
	move	$8,$2
	b	$L608
$L611:
	move	$6,$2
	b	$L607
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
	bteqz	$L637
	addu	$7,$4,$6
	addu	$5,$5,$6
	beqz	$6,$L683
$L639:
	addiu	$7,-1
	lb	$6,0($7)
	cmp	$4,$7
	addiu	$5,-1
	sb	$6,0($5)
	btnez	$L639
	jr	$31
$L637:
	cmp	$4,$5
	bteqz	$L683
	beqz	$6,$L683
	addiu	$2,$6,-1
	sltu	$2,8
	btnez	$L640
	move	$7,$5
	or	$7,$4
	li	$3,7
	and	$7,$3
	bnez	$7,$L640
	addiu	$2,$4,1
	subu	$7,$5,$2
	sltu	$7,7
	btnez	$L640
	addiu	$sp,-8
	sd	$16,0($sp)
	srl	$16,$6,3
	sll	$7,$16,3
	move	$2,$5
	addu	$3,$4,$7
$L641:
	ld	$16,0($4)
	addiu	$4,8
	cmp	$3,$4
	sd	$16,0($2)
	addiu	$2,8
	btnez	$L641
	addu	$5,$5,$7
	subu	$2,$6,$7
	xor	$7,$6
	beqz	$7,$L636
	lb	$4,0($3)
	cmpi	$2,1
	sb	$4,0($5)
	bteqz	$L636
	lb	$6,1($3)
	cmpi	$2,2
	sb	$6,1($5)
	bteqz	$L636
	lb	$7,2($3)
	cmpi	$2,3
	sb	$7,2($5)
	bteqz	$L636
	lb	$16,3($3)
	cmpi	$2,4
	sb	$16,3($5)
	bteqz	$L636
	lb	$4,4($3)
	cmpi	$2,5
	sb	$4,4($5)
	bteqz	$L636
	lb	$6,5($3)
	cmpi	$2,6
	sb	$6,5($5)
	bteqz	$L636
	lb	$3,6($3)
	sb	$3,6($5)
$L636:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L640:
	addu	$7,$4,$6
$L644:
	lb	$2,0($4)
	addiu	$4,1
	cmp	$7,$4
	sb	$2,0($5)
	addiu	$5,1
	btnez	$L644
$L683:
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
	lw	$7,$L698
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

	.type	__pool_bswap_32_698, @object
__pool_bswap_32_698:
	.align	2
$L698:
	.word	16711680
	.type	__pend_bswap_32_698, @object
__pend_bswap_32_698:
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
	ld	$5,$L701
	ld	$7,$L702
	or	$3,$6
	dsrl	$2,24
	move	$6,$4
	and	$2,$5
	dsrl	$6,8
	ld	$5,$L703
	and	$6,$7
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$7,$L704
	or	$3,$6
	or	$3,$2
	dsll	$6,$4,24
	dsll	$2,$4,40
	ld	$4,$L705
	and	$6,$7
	or	$3,$6
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool_bswap_64_701, @object
__pool_bswap_64_701:
	.align	3
$L701:
	.dword	16711680
$L702:
	.dword	4278190080
$L703:
	.dword	1095216660480
$L704:
	.dword	280375465082880
$L705:
	.dword	71776119061217280
	.type	__pend_bswap_64_701, @object
__pend_bswap_64_701:
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
	b	$L709
$L712:
	cmpi	$2,32
	bteqz	$L711
$L709:
	move	$3,$4
	srl	$3,$2
	li	$5,1
	and	$3,$5
	addiu	$2,1
	beqz	$3,$L712
	jr	$31
$L711:
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
	beqz	$4,$L716
	li	$2,1
	and	$2,$4
	bnez	$2,$L719
	li	$2,1
$L715:
	sra	$4,$4,1
	li	$3,1
	and	$3,$4
	addiu	$2,1
	beqz	$3,$L715
	jr	$31
$L716:
	li	$2,0
$L719:
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
	lw	$2,$L726
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	lw	$5,$L727
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
	btnez	$L724
	lw	$7,%call16(__mips16_gtsf2)($17)
	lw	$5,$L728
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

$L724:
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

	.type	__pool_gl_isinff_726, @object
__pool_gl_isinff_726:
	.align	2
$L726:
	.word	__gnu_local_gp
$L727:
	.word	-8388609
$L728:
	.word	2139095039
	.type	__pend_gl_isinff_726, @object
__pend_gl_isinff_726:
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
	lw	$2,$L734
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L735
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
	btnez	$L732
	lw	$7,%call16(__mips16_gtdf2)($17)
	ld	$5,$L736
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

$L732:
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

	.type	__pool_gl_isinfd_734, @object
__pool_gl_isinfd_734:
	.align	2
$L734:
	.word	__gnu_local_gp
	.align	3
$L735:
	.word	-1048577
	.word	-1
$L736:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_734, @object
__pend_gl_isinfd_734:
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
	lw	$2,$L742
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	ld	$5,$L743
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
	btnez	$L740
	lw	$7,%call16(__mips16_gtdf2)($17)
	ld	$5,$L744
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

$L740:
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

	.type	__pool_gl_isinfl_742, @object
__pool_gl_isinfl_742:
	.align	2
$L742:
	.word	__gnu_local_gp
	.align	3
$L743:
	.word	-1048577
	.word	-1
$L744:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_742, @object
__pend_gl_isinfl_742:
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
	lw	$2,$L747
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

	.type	__pool__Qp_itoq_747, @object
__pool__Qp_itoq_747:
	.align	2
$L747:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_747, @object
__pend__Qp_itoq_747:
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
	lw	$2,$L766
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
	bnez	$2,$L749
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
	beqz	$2,$L749
	slt	$16,0
	btnez	$L764
	lw	$5,$L767
$L751:
	li	$4,1
	and	$4,$16
	beqz	$4,$L752
$L753:
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
$L752:
	srl	$6,$16,31
	addu	$16,$6,$16
	sra	$16,$16,1
	beqz	$16,$L749
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
	bnez	$7,$L753
$L765:
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
	bnez	$7,$L753
	b	$L765
$L749:
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

$L764:
	lw	$5,$L768
	b	$L751
	.type	__pool_ldexpf_766, @object
__pool_ldexpf_766:
	.align	2
$L766:
	.word	__gnu_local_gp
$L767:
	.word	1073741824
$L768:
	.word	1056964608
	.type	__pend_ldexpf_766, @object
__pend_ldexpf_766:
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
	lw	$2,$L787
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
	bnez	$2,$L770
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
	beqz	$2,$L770
	slt	$16,0
	btnez	$L785
	ld	$5,$L788
$L772:
	li	$4,1
	and	$4,$16
	beqz	$4,$L773
$L774:
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
$L773:
	srl	$6,$16,31
	addu	$16,$6,$16
	sra	$16,$16,1
	beqz	$16,$L770
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
	bnez	$7,$L774
$L786:
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
	bnez	$7,$L774
	b	$L786
$L770:
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

$L785:
	ld	$5,$L789
	b	$L772
	.type	__pool_ldexp_787, @object
__pool_ldexp_787:
	.align	2
$L787:
	.word	__gnu_local_gp
	.align	3
$L788:
	.word	1073741824
	.word	0
$L789:
	.word	1071644672
	.word	0
	.type	__pend_ldexp_787, @object
__pend_ldexp_787:
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
	lw	$2,$L808
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
	bnez	$2,$L791
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
	beqz	$2,$L791
	slt	$16,0
	btnez	$L806
	ld	$5,$L809
$L793:
	li	$4,1
	and	$4,$16
	beqz	$4,$L794
$L795:
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
$L794:
	srl	$6,$16,31
	addu	$16,$6,$16
	sra	$16,$16,1
	beqz	$16,$L791
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
	bnez	$7,$L795
$L807:
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
	bnez	$7,$L795
	b	$L807
$L791:
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

$L806:
	ld	$5,$L810
	b	$L793
	.type	__pool_ldexpl_808, @object
__pool_ldexpl_808:
	.align	2
$L808:
	.word	__gnu_local_gp
	.align	3
$L809:
	.word	1073741824
	.word	0
$L810:
	.word	1071644672
	.word	0
	.type	__pend_ldexpl_808, @object
__pend_ldexpl_808:
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
	beqz	$6,$L845
	addiu	$3,$6,-1
	sltu	$3,7
	btnez	$L813
	move	$7,$4
	or	$7,$5
	li	$4,7
	and	$7,$4
	bnez	$7,$L813
	addiu	$sp,-16
	sd	$16,0($sp)
	srl	$16,$6,3
	sll	$4,$16,3
	sd	$17,8($sp)
	move	$3,$2
	addu	$16,$5,$4
$L814:
	ld	$7,0($5)
	ld	$17,0($3)
	addiu	$5,8
	xor	$7,$17
	cmp	$16,$5
	sd	$7,0($3)
	addiu	$3,8
	btnez	$L814
	addu	$3,$2,$4
	subu	$5,$6,$4
	xor	$4,$6
	beqz	$4,$L812
	lbu	$4,0($3)
	lbu	$6,0($16)
	cmpi	$5,1
	xor	$4,$6
	sb	$4,0($3)
	bteqz	$L812
	lbu	$17,1($3)
	lbu	$7,1($16)
	cmpi	$5,2
	xor	$7,$17
	sb	$7,1($3)
	bteqz	$L812
	lbu	$6,2($3)
	lbu	$4,2($16)
	cmpi	$5,3
	xor	$4,$6
	sb	$4,2($3)
	bteqz	$L812
	lbu	$17,3($3)
	lbu	$7,3($16)
	cmpi	$5,4
	xor	$7,$17
	sb	$7,3($3)
	bteqz	$L812
	lbu	$6,4($3)
	lbu	$4,4($16)
	cmpi	$5,5
	xor	$4,$6
	sb	$4,4($3)
	bteqz	$L812
	lbu	$17,5($3)
	lbu	$7,5($16)
	cmpi	$5,6
	xor	$7,$17
	sb	$7,5($3)
	bteqz	$L812
	lbu	$5,6($3)
	lbu	$16,6($16)
	xor	$16,$5
	sb	$16,6($3)
$L812:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L813:
	move	$3,$2
	addu	$6,$5,$6
$L816:
	lbu	$7,0($5)
	lbu	$4,0($3)
	addiu	$5,1
	xor	$7,$4
	cmp	$6,$5
	sb	$7,0($3)
	addiu	$3,1
	btnez	$L816
	jr	$31
$L845:
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
	beqz	$3,$L854
	move	$3,$4
$L849:
	lb	$7,1($3)
	addiu	$3,1
	bnez	$7,$L849
$L862:
	beqz	$6,$L851
$L864:
	lb	$7,0($5)
	sb	$7,0($3)
	beqz	$7,$L865
	addiu	$6,-1
	addiu	$5,1
	addiu	$3,1
	bnez	$6,$L864
$L851:
	li	$4,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sb	$4,0($3)
	.set	macro
	.set	reorder

$L865:
	jr	$31
$L854:
	move	$3,$4
	b	$L862
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
	beqz	$5,$L876
$L867:
	addu	$3,$4,$2
	lb	$6,0($3)
	bnez	$6,$L875
$L876:
	jr	$31
$L875:
	addiu	$2,1
	cmp	$5,$2
	btnez	$L867
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
	beqz	$7,$L886
$L878:
	move	$6,$5
$L881:
	lb	$3,0($6)
	beqz	$3,$L887
	xor	$3,$7
	addiu	$6,1
	bnez	$3,$L881
	jr	$31
$L887:
	lb	$7,1($2)
	addiu	$2,1
	bnez	$7,$L878
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L886:
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
	b	$L891
$L894:
	move	$2,$4
	move	$6,$2
	addiu	$4,1
	beqz	$3,$L895
$L891:
	lb	$3,0($4)
	cmp	$3,$5
	bteqz	$L894
	move	$2,$6
	move	$6,$2
	addiu	$4,1
	bnez	$3,$L891
$L895:
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
	beqz	$17,$L907
	move	$8,$5
$L898:
	lb	$3,1($5)
	addiu	$5,1
	bnez	$3,$L898
	move	$2,$8
	subu	$5,$5,$2
	bnez	$5,$L916
	b	$L907
$L921:
	addiu	$4,1
	beqz	$3,$L920
$L916:
	lb	$3,0($4)
	cmp	$3,$17
	btnez	$L921
	addiu	$16,$5,-1
	zeb	$3
	addu	$16,$4,$16
	move	$2,$8
	move	$7,$4
$L900:
	lbu	$6,0($2)
	beqz	$6,$L901
	cmp	$7,$16
	bteqz	$L901
	xor	$6,$3
	bnez	$6,$L901
	lbu	$3,1($7)
	addiu	$7,1
	addiu	$2,1
	bnez	$3,$L900
$L901:
	lbu	$6,0($2)
	xor	$6,$3
	beqz	$6,$L907
	addiu	$4,1
	b	$L916
$L920:
	ld	$17,8($sp)
	ld	$16,0($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L907:
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
	lw	$2,$L934
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L935
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
	btnez	$L933
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L935
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L926
	lw	$7,%call16(__mips16_ltdf2)($17)
	ld	$5,$L935
	.set	noreorder
	.set	nomacro
	jalr	$7
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L925
$L926:
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

$L933:
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L935
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L926
$L925:
	ld	$4,$L936
	xor	$16,$4
	b	$L926
	.type	__pool_copysign_934, @object
__pool_copysign_934:
	.align	2
$L934:
	.word	__gnu_local_gp
	.align	3
$L935:
	.word	0
	.word	0
$L936:
	.dword	-9223372036854775808
	.type	__pend_copysign_934, @object
__pend_copysign_934:
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
	beqz	$7,$L958
	sltu	$5,$7
	btnez	$L945
	addiu	$sp,-16
	subu	$5,$5,$7
	sd	$17,8($sp)
	addu	$17,$4,$5
	sltu	$17,$4
	sd	$16,0($sp)
	btnez	$L948
	lb	$4,0($6)
	move	$9,$6
	move	$8,$4
	addiu	$6,$7,-1
$L943:
	lb	$16,0($2)
	move	$5,$8
	xor	$16,$5
	addiu	$7,$2,1
	beqz	$16,$L957
	move	$2,$7
$L939:
	sltu	$17,$2
	bteqz	$L943
$L948:
	li	$2,0
$L937:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L957:
	move	$3,$9
	addiu	$3,1
	move	$10,$3
	move	$4,$3
	beqz	$6,$L937
$L942:
	move	$5,$7
	b	$L940
$L941:
	addiu	$5,1
	addu	$16,$7,$6
	xor	$16,$5
	addiu	$4,1
	beqz	$16,$L937
$L940:
	lbu	$3,0($5)
	lbu	$16,0($4)
	xor	$3,$16
	beqz	$3,$L941
	sltu	$17,$7
	btnez	$L948
	lb	$5,0($7)
	move	$4,$8
	xor	$5,$4
	addiu	$2,$7,1
	bnez	$5,$L939
	move	$3,$7
	move	$4,$10
	move	$7,$2
	move	$2,$3
	b	$L942
$L958:
	jr	$31
$L945:
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
	lw	$2,$L965
	move	$28,$2
	sd	$16,40($sp)
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$16,$6
	beqz	$6,$L960
	move	$7,$28
	lw	$2,%call16(memmove)($7)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L960:
	ld	$7,48($sp)
	addu	$2,$4,$16
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_965, @object
__pool_mempcpy_965:
	.align	2
$L965:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_965, @object
__pend_mempcpy_965:
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
	lw	$2,$L992
	addiu	$sp,-80
	move	$28,$2
	sd	$16,56($sp)
	move	$16,$28
	sw	$2,32($sp)
	sw	$5,88($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L993
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
	btnez	$L989
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L994
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L990
	li	$5,0
	sw	$5,48($sp)
$L969:
	li	$7,0
	sw	$7,40($sp)
$L975:
	lw	$3,40($sp)
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,$L995
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
	ld	$5,$L994
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
	bteqz	$L975
$L976:
	lw	$16,88($sp)
	lw	$4,40($sp)
	lw	$5,48($sp)
	sw	$4,0($16)
	beqz	$5,$L982
	ld	$2,$L996
	xor	$2,$17
$L966:
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

$L990:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L995
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L972
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L993
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L981
$L972:
	lw	$3,88($sp)
	li	$7,0
	sw	$7,0($3)
	move	$2,$17
	b	$L966
$L989:
	ld	$6,$L996
	lw	$2,%call16(__mips16_ledf2)($16)
	ld	$5,$L997
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
	bteqz	$L991
	li	$6,1
	ld	$17,40($sp)
	sw	$6,48($sp)
	b	$L969
$L982:
	move	$2,$17
	b	$L966
$L991:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L998
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L972
	li	$17,1
	sw	$17,48($sp)
$L970:
	li	$4,0
	ld	$17,40($sp)
	sw	$4,40($sp)
$L977:
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
	ld	$5,$L995
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
	btnez	$L977
	b	$L976
$L981:
	li	$4,0
	sd	$17,40($sp)
	sw	$4,48($sp)
	b	$L970
	.type	__pool_frexp_992, @object
__pool_frexp_992:
	.align	2
$L992:
	.word	__gnu_local_gp
	.align	3
$L993:
	.word	0
	.word	0
$L994:
	.word	1072693248
	.word	0
$L995:
	.word	1071644672
	.word	0
$L996:
	.dword	-9223372036854775808
$L997:
	.word	-1074790400
	.word	0
$L998:
	.word	-1075838976
	.word	0
	.type	__pend_frexp_992, @object
__pend_frexp_992:
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
	beqz	$4,$L1004
$L1001:
	dsll	$3,$4,63
	dsra	$3,63
	and	$3,$5
	dsrl	$4,1
	daddu	$2,$2,$3
	dsll	$5,$5,1
	bnez	$4,$L1001
	jr	$31
$L1004:
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
	bteqz	$L1035
	li	$2,32
	li	$3,1
$L1007:
	slt	$5,0
	btnez	$L1012
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1009
	addiu	$2,-1
	bnez	$2,$L1007
	bnez	$6,$L1036
$L1037:
	jr	$31
$L1009:
	beqz	$3,$L1022
$L1012:
	addiu	$sp,-8
	li	$2,0
	sd	$16,0($sp)
$L1017:
	sltu	$4,$5
	move	$16,$24
	subu	$7,$4,$5
	cmpi	$16,1
	bnez	$16,$L1014
	move	$4,$7
$L1014:
	bteqz	$L1015
	move	$7,$3
$L1016:
	srl	$3,$3,1
	or	$2,$7
	srl	$5,$5,1
	bnez	$3,$L1017
	beqz	$6,$L1006
	move	$2,$4
$L1006:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L1015:
	li	$7,0
	b	$L1016
$L1035:
	sltu	$4,$5
	move	$3,$24
	subu	$2,$4,$5
	cmpi	$3,1
	beqz	$3,$L1020
	move	$2,$4
$L1020:
	move	$4,$2
	move	$2,$24
	beqz	$6,$L1037
	b	$L1036
$L1022:
	li	$2,0
	beqz	$6,$L1037
$L1036:
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
	lw	$2,$L1042
	cmp	$5,$4
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	bteqz	$L1040
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

$L1040:
	ld	$7,40($sp)
	li	$2,7
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___clrsbqi2_1042, @object
__pool___clrsbqi2_1042:
	.align	2
$L1042:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_1042, @object
__pend___clrsbqi2_1042:
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
	lw	$2,$L1047
	xor	$4,$5
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	beqz	$4,$L1045
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

$L1045:
	ld	$7,40($sp)
	li	$2,63
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

	.type	__pool___clrsbdi2_1047, @object
__pool___clrsbdi2_1047:
	.align	2
$L1047:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_1047, @object
__pend___clrsbdi2_1047:
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
	beqz	$4,$L1053
$L1050:
	li	$3,1
	and	$3,$4
	neg	$6,$3
	and	$6,$5
	srl	$4,$4,1
	addu	$2,$2,$6
	sll	$5,$5,1
	bnez	$4,$L1050
	jr	$31
$L1053:
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
	btnez	$L1059
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L1089
$L1059:
	beqz	$16,$L1090
	sll	$17,$16,3
	move	$2,$5
	move	$3,$4
	addu	$16,$17,$5
$L1062:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L1062
	sltu	$7,$6
	bteqz	$L1055
	subu	$2,$6,$7
	move	$9,$2
	addiu	$2,-1
	sltu	$2,8
	addu	$3,$4,$7
	addu	$2,$5,$7
	btnez	$L1064
	addiu	$16,$7,1
	addu	$17,$5,$16
	subu	$16,$3,$17
	sltu	$16,7
	btnez	$L1064
	move	$16,$2
	or	$16,$3
	li	$17,7
	and	$16,$17
	bnez	$16,$L1064
	move	$16,$9
	srl	$17,$16,3
	sll	$16,$17,3
	move	$8,$16
	addu	$16,$2,$16
$L1065:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L1065
	move	$3,$8
	move	$2,$9
	xor	$2,$3
	addu	$7,$7,$3
	beqz	$2,$L1055
	addu	$16,$5,$7
	lb	$17,0($16)
	addiu	$2,$7,1
	addu	$3,$4,$7
	sltu	$2,$6
	sb	$17,0($3)
	bteqz	$L1055
	addu	$16,$5,$2
	addu	$3,$4,$2
	lb	$17,0($16)
	addiu	$2,$7,2
	sltu	$2,$6
	sb	$17,0($3)
	bteqz	$L1055
	addu	$16,$5,$2
	addu	$3,$4,$2
	lb	$17,0($16)
	addiu	$2,$7,3
	sltu	$2,$6
	sb	$17,0($3)
	bteqz	$L1055
	addu	$16,$5,$2
	addu	$3,$4,$2
	lb	$17,0($16)
	addiu	$2,$7,4
	sltu	$2,$6
	sb	$17,0($3)
	bteqz	$L1055
	addu	$16,$5,$2
	addu	$3,$4,$2
	lb	$17,0($16)
	addiu	$2,$7,5
	sltu	$2,$6
	sb	$17,0($3)
	bteqz	$L1055
	addu	$16,$5,$2
	lb	$17,0($16)
	addiu	$7,6
	addu	$3,$4,$2
	sltu	$7,$6
	sb	$17,0($3)
	bteqz	$L1055
	addu	$5,$5,$7
	lb	$6,0($5)
	addu	$4,$4,$7
	sb	$6,0($4)
$L1055:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1089:
	addiu	$17,$6,-1
	beqz	$6,$L1055
$L1060:
	addu	$3,$5,$17
	addu	$16,$4,$17
	lb	$6,0($3)
	addiu	$17,-1
	addiu	$7,$17,1
	sb	$6,0($16)
	bnez	$7,$L1060
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1090:
	beqz	$6,$L1055
	addu	$3,$4,$7
	addu	$2,$5,$7
$L1064:
	addu	$7,$5,$6
$L1067:
	lb	$16,0($2)
	addiu	$2,1
	cmp	$7,$2
	sb	$16,0($3)
	addiu	$3,1
	btnez	$L1067
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
	btnez	$L1095
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L1119
$L1095:
	beqz	$16,$L1094
	addiu	$2,$16,-1
	sltu	$2,7
	btnez	$L1098
	move	$7,$5
	or	$7,$4
	li	$3,7
	and	$7,$3
	bnez	$7,$L1098
	addiu	$17,$5,2
	subu	$2,$4,$17
	sltu	$2,5
	btnez	$L1098
	srl	$7,$6,3
	move	$9,$7
	sll	$7,$7,3
	move	$8,$7
	move	$2,$5
	move	$3,$4
	addu	$7,$5,$7
$L1099:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$7
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L1099
	move	$2,$9
	sll	$17,$2,2
	cmp	$16,$17
	bteqz	$L1094
	move	$2,$8
	addu	$3,$5,$2
	lh	$7,0($3)
	addu	$3,$4,$2
	sh	$7,0($3)
	addiu	$7,$17,1
	sltu	$7,$16
	bteqz	$L1094
	addu	$3,$5,$2
	lh	$7,2($3)
	addiu	$17,2
	addu	$2,$4,$2
	sltu	$17,$16
	sh	$7,2($2)
	bteqz	$L1094
	move	$16,$8
	addu	$3,$5,$16
	lh	$7,4($3)
	addu	$2,$4,$16
	sh	$7,4($2)
$L1094:
	li	$17,1
	and	$17,$6
	beqz	$17,$L1091
$L1120:
	addu	$5,$5,$6
	lb	$3,-1($5)
	addu	$4,$4,$6
	sb	$3,-1($4)
$L1091:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1119:
	addiu	$7,$6,-1
	beqz	$6,$L1091
$L1096:
	addu	$3,$5,$7
	addu	$17,$4,$7
	lb	$6,0($3)
	addiu	$7,-1
	addiu	$16,$7,1
	sb	$6,0($17)
	bnez	$16,$L1096
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1098:
	sll	$16,$16,1
	move	$17,$5
	move	$3,$4
	addu	$2,$16,$5
$L1101:
	lh	$7,0($17)
	addiu	$17,2
	cmp	$17,$2
	sh	$7,0($3)
	addiu	$3,2
	btnez	$L1101
	li	$17,1
	and	$17,$6
	beqz	$17,$L1091
	b	$L1120
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
	btnez	$L1126
	addu	$3,$5,$6
	sltu	$3,$4
	bteqz	$L1160
$L1126:
	beqz	$17,$L1161
	addiu	$3,$17,-1
	sltu	$3,9
	btnez	$L1128
	move	$7,$4
	or	$7,$5
	li	$2,7
	and	$7,$2
	bnez	$7,$L1128
	addiu	$16,$5,4
	xor	$16,$4
	beqz	$16,$L1128
	srl	$3,$6,3
	move	$8,$3
	move	$7,$8
	sll	$16,$7,3
	move	$9,$16
	move	$2,$5
	move	$3,$4
	addu	$16,$5,$16
$L1129:
	ld	$7,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$7,0($3)
	addiu	$3,8
	btnez	$L1129
	move	$2,$8
	sll	$3,$2,1
	xor	$3,$17
	beqz	$3,$L1132
	move	$17,$9
	addu	$16,$5,$17
	lw	$7,0($16)
	addu	$3,$4,$17
	sw	$7,0($3)
$L1132:
	move	$16,$10
	sltu	$16,$6
	bteqz	$L1121
	subu	$17,$6,$16
	addiu	$2,$17,-1
	sltu	$2,8
	addu	$3,$4,$16
	addu	$2,$5,$16
	btnez	$L1124
	addiu	$7,$16,1
	addu	$16,$5,$7
	subu	$7,$3,$16
	sltu	$7,7
	btnez	$L1124
	move	$16,$2
	or	$16,$3
	li	$7,7
	and	$16,$7
	bnez	$16,$L1124
	srl	$16,$17,3
	sll	$7,$16,3
	move	$11,$7
	addu	$16,$2,$7
$L1133:
	ld	$7,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$7,0($3)
	addiu	$3,8
	btnez	$L1133
	move	$2,$11
	move	$3,$10
	xor	$17,$2
	addu	$16,$3,$2
	beqz	$17,$L1121
	addu	$17,$5,$16
	lb	$7,0($17)
	addiu	$17,$16,1
	addu	$2,$4,$16
	sltu	$17,$6
	sb	$7,0($2)
	bteqz	$L1121
	addu	$3,$5,$17
	addu	$2,$4,$17
	lb	$7,0($3)
	addiu	$17,$16,2
	sltu	$17,$6
	sb	$7,0($2)
	bteqz	$L1121
	addu	$3,$5,$17
	addu	$2,$4,$17
	lb	$7,0($3)
	addiu	$17,$16,3
	sltu	$17,$6
	sb	$7,0($2)
	bteqz	$L1121
	addu	$3,$5,$17
	addu	$2,$4,$17
	lb	$7,0($3)
	addiu	$17,$16,4
	sltu	$17,$6
	sb	$7,0($2)
	bteqz	$L1121
	addu	$3,$5,$17
	addu	$2,$4,$17
	lb	$7,0($3)
	addiu	$17,$16,5
	sltu	$17,$6
	sb	$7,0($2)
	bteqz	$L1121
	addu	$3,$5,$17
	lb	$7,0($3)
	addiu	$16,6
	addu	$2,$4,$17
	sltu	$16,$6
	sb	$7,0($2)
	bteqz	$L1121
	addu	$5,$5,$16
	lb	$6,0($5)
	addu	$4,$4,$16
	sb	$6,0($4)
$L1121:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1160:
	addiu	$16,$6,-1
	beqz	$6,$L1121
$L1127:
	addu	$6,$5,$16
	addu	$7,$4,$16
	lb	$17,0($6)
	addiu	$16,-1
	addiu	$2,$16,1
	sb	$17,0($7)
	bnez	$2,$L1127
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1128:
	sll	$17,$17,2
	move	$16,$5
	move	$2,$4
	addu	$3,$17,$5
$L1131:
	lw	$7,0($16)
	addiu	$16,4
	cmp	$16,$3
	sw	$7,0($2)
	addiu	$2,4
	btnez	$L1131
	b	$L1132
$L1161:
	beqz	$6,$L1121
	move	$16,$10
	addu	$3,$4,$16
	addu	$2,$5,$16
$L1124:
	addu	$16,$5,$6
$L1135:
	lb	$17,0($2)
	addiu	$2,1
	cmp	$16,$2
	sb	$17,0($3)
	addiu	$3,1
	btnez	$L1135
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
	lw	$2,$L1165
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

	.type	__pool___uitod_1165, @object
__pool___uitod_1165:
	.align	2
$L1165:
	.word	__gnu_local_gp
	.type	__pend___uitod_1165, @object
__pend___uitod_1165:
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
	lw	$2,$L1168
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

	.type	__pool___uitof_1168, @object
__pool___uitof_1168:
	.align	2
$L1168:
	.word	__gnu_local_gp
	.type	__pend___uitof_1168, @object
__pend___uitof_1168:
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
	lw	$5,$L1171
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

	.type	__pool___ulltod_1171, @object
__pool___ulltod_1171:
	.align	2
$L1171:
	.word	__gnu_local_gp
	.type	__pend___ulltod_1171, @object
__pend___ulltod_1171:
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
	lw	$5,$L1174
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

	.type	__pool___ulltof_1174, @object
__pool___ulltof_1174:
	.align	2
$L1174:
	.word	__gnu_local_gp
	.type	__pend___ulltof_1174, @object
__pend___ulltof_1174:
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
	bnez	$2,$L1179
	sra	$2,$3,6
	bnez	$2,$L1196
	sra	$5,$3,5
	bnez	$5,$L1180
	sra	$6,$3,4
	bnez	$6,$L1181
	sra	$7,$3,3
	bnez	$7,$L1182
	sra	$2,$3,2
	bnez	$2,$L1183
	sra	$5,$3,1
	bnez	$5,$L1184
	bnez	$3,$L1185
	sra	$3,$4,7
	bnez	$3,$L1186
	sra	$6,$4,6
	bnez	$6,$L1187
	sra	$7,$4,5
	bnez	$7,$L1188
	sra	$2,$4,4
	bnez	$2,$L1189
	sra	$5,$4,3
	bnez	$5,$L1190
	sra	$3,$4,2
	bnez	$3,$L1191
	sra	$6,$4,1
	bnez	$6,$L1192
	li	$2,16
	bnez	$4,$L1195
$L1196:
	jr	$31
$L1179:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1190:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L1195:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L1180:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1181:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L1182:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L1183:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L1184:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L1185:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L1186:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L1187:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L1188:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L1189:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L1191:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L1192:
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
	bnez	$2,$L1200
	li	$3,2
	and	$3,$4
	bnez	$3,$L1201
	li	$5,4
	and	$5,$4
	bnez	$5,$L1202
	li	$6,8
	and	$6,$4
	bnez	$6,$L1203
	li	$7,16
	and	$7,$4
	bnez	$7,$L1204
	li	$2,32
	and	$2,$4
	bnez	$2,$L1205
	li	$3,64
	and	$3,$4
	bnez	$3,$L1206
	li	$5,128
	and	$5,$4
	bnez	$5,$L1207
	li	$6,255
	addiu	$6,1
	and	$6,$4
	bnez	$6,$L1208
	li	$7,512
	and	$7,$4
	bnez	$7,$L1209
	li	$2,1024
	and	$2,$4
	bnez	$2,$L1210
	li	$3,2048
	and	$3,$4
	bnez	$3,$L1211
	li	$5,4096
	and	$5,$4
	bnez	$5,$L1212
	li	$6,8192
	and	$6,$4
	bnez	$6,$L1213
	li	$7,16384
	and	$7,$4
	bnez	$7,$L1214
	srl	$4,$4,8
	srl	$3,$4,7
	li	$2,16
	bnez	$3,$L1217
	jr	$31
$L1200:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1201:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1212:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,12
	.set	macro
	.set	reorder

$L1217:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,15
	.set	macro
	.set	reorder

$L1202:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1203:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,3
	.set	macro
	.set	reorder

$L1204:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,4
	.set	macro
	.set	reorder

$L1205:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,5
	.set	macro
	.set	reorder

$L1206:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,6
	.set	macro
	.set	reorder

$L1207:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,7
	.set	macro
	.set	reorder

$L1208:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,8
	.set	macro
	.set	reorder

$L1209:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,9
	.set	macro
	.set	reorder

$L1210:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,10
	.set	macro
	.set	reorder

$L1211:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,11
	.set	macro
	.set	reorder

$L1213:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,13
	.set	macro
	.set	reorder

$L1214:
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
	lw	$2,$L1226
	addiu	$sp,-64
	move	$28,$2
	sd	$16,40($sp)
	move	$16,$28
	sw	$2,32($sp)
	lw	$5,$L1227
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
	bteqz	$L1225
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

$L1225:
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L1227
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

	.type	__pool___fixunssfsi_1226, @object
__pool___fixunssfsi_1226:
	.align	2
$L1226:
	.word	__gnu_local_gp
$L1227:
	.word	1191182336
	.type	__pend___fixunssfsi_1226, @object
__pend___fixunssfsi_1226:
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
	beqz	$4,$L1235
$L1232:
	li	$3,1
	and	$3,$4
	neg	$6,$3
	and	$6,$5
	srl	$4,$4,1
	addu	$2,$2,$6
	sll	$5,$5,1
	bnez	$4,$L1232
	jr	$31
$L1235:
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
	beqz	$4,$L1243
	beqz	$5,$L1243
$L1239:
	li	$3,1
	and	$3,$5
	neg	$6,$3
	and	$6,$4
	srl	$5,$5,1
	addu	$2,$2,$6
	sll	$4,$4,1
	bnez	$5,$L1239
	jr	$31
$L1243:
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
	bteqz	$L1274
	li	$2,32
	li	$3,1
$L1246:
	slt	$5,0
	btnez	$L1251
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1248
	addiu	$2,-1
	bnez	$2,$L1246
	bnez	$6,$L1275
$L1276:
	jr	$31
$L1248:
	beqz	$3,$L1261
$L1251:
	addiu	$sp,-8
	li	$2,0
	sd	$16,0($sp)
$L1256:
	sltu	$4,$5
	move	$16,$24
	subu	$7,$4,$5
	cmpi	$16,1
	bnez	$16,$L1253
	move	$4,$7
$L1253:
	bteqz	$L1254
	move	$7,$3
$L1255:
	srl	$3,$3,1
	or	$2,$7
	srl	$5,$5,1
	bnez	$3,$L1256
	beqz	$6,$L1245
	move	$2,$4
$L1245:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L1254:
	li	$7,0
	b	$L1255
$L1274:
	sltu	$4,$5
	move	$3,$24
	subu	$2,$4,$5
	cmpi	$3,1
	beqz	$3,$L1259
	move	$2,$4
$L1259:
	move	$4,$2
	move	$2,$24
	beqz	$6,$L1276
	b	$L1275
$L1261:
	li	$2,0
	beqz	$6,$L1276
$L1275:
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
	lw	$2,$L1282
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
	btnez	$L1280
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

$L1280:
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

	.type	__pool___mspabi_cmpf_1282, @object
__pool___mspabi_cmpf_1282:
	.align	2
$L1282:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_1282, @object
__pend___mspabi_cmpf_1282:
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
	lw	$2,$L1288
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
	btnez	$L1286
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

$L1286:
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

	.type	__pool___mspabi_cmpd_1288, @object
__pool___mspabi_cmpd_1288:
	.align	2
$L1288:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_1288, @object
__pend___mspabi_cmpd_1288:
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
	btnez	$L1305
	beqz	$5,$L1297
	li	$7,0
$L1293:
	li	$6,32
	li	$2,0
	b	$L1296
$L1306:
	addiu	$6,-1
	zeb	$6
	beqz	$6,$L1295
$L1296:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	sra	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L1306
$L1295:
	beqz	$7,$L1307
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1297:
	li	$2,0
$L1307:
	jr	$31
$L1305:
	neg	$5,$5
	li	$7,1
	b	$L1293
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
	btnez	$L1337
	li	$2,1
	li	$16,0
$L1309:
	slt	$5,0
	bteqz	$L1310
	neg	$5,$5
	move	$16,$2
$L1310:
	sltu	$5,$4
	move	$6,$4
	move	$3,$5
	bteqz	$L1338
	li	$7,32
	li	$5,1
	b	$L1311
$L1315:
	addiu	$7,-1
	beqz	$7,$L1316
$L1311:
	sll	$3,$3,1
	sltu	$3,$4
	sll	$5,$5,1
	btnez	$L1315
$L1316:
	li	$2,0
	beqz	$5,$L1314
$L1313:
	sltu	$6,$3
	move	$4,$24
	subu	$7,$6,$3
	cmpi	$4,1
	bnez	$4,$L1318
	move	$6,$7
$L1318:
	bteqz	$L1319
	move	$7,$5
$L1320:
	srl	$5,$5,1
	or	$2,$7
	srl	$3,$3,1
	bnez	$5,$L1313
$L1314:
	beqz	$16,$L1308
	neg	$2,$2
$L1308:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L1319:
	li	$7,0
	b	$L1320
$L1337:
	neg	$4,$4
	li	$2,0
	li	$16,1
	b	$L1309
$L1338:
	sltu	$4,$5
	move	$2,$24
	li	$3,1
	xor	$2,$3
	b	$L1314
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
	btnez	$L1367
	li	$7,0
$L1340:
	slt	$5,0
	move	$2,$4
	bteqz	$L1341
	neg	$5,$5
$L1341:
	sltu	$5,$4
	move	$3,$5
	bteqz	$L1368
	li	$6,32
	li	$5,1
	b	$L1342
$L1346:
	addiu	$6,-1
	beqz	$6,$L1347
$L1342:
	sll	$3,$3,1
	sltu	$3,$4
	sll	$5,$5,1
	btnez	$L1346
$L1347:
	beqz	$5,$L1366
$L1344:
	sltu	$2,$3
	subu	$4,$2,$3
	btnez	$L1349
	move	$2,$4
$L1349:
	srl	$5,$5,1
	srl	$3,$3,1
	bnez	$5,$L1344
$L1345:
	beqz	$7,$L1369
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1369:
	jr	$31
$L1367:
	neg	$4,$4
	li	$7,1
	b	$L1340
$L1368:
	sltu	$4,$5
	subu	$2,$4,$5
	bteqz	$L1345
$L1366:
	move	$2,$4
	b	$L1345
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
	bteqz	$L1530
	srl	$2,$5,8
	srl	$3,$2,7
	bnez	$3,$L1375
	sll	$3,$5,1
	zeh	$3
	addiu	$sp,-16
	sltu	$3,$4
	sd	$17,8($sp)
	sd	$16,0($sp)
	bteqz	$L1448
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1448
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$4
	bteqz	$L1450
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1450
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$4
	bteqz	$L1452
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1452
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$4
	bteqz	$L1454
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1454
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$4
	bteqz	$L1456
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1456
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$4
	bteqz	$L1458
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1458
	sll	$3,$5,7
	zeh	$3
	sltu	$3,$4
	bteqz	$L1460
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1460
	sll	$5,$5,8
	move	$3,$5
	zeh	$3
	sltu	$3,$4
	bteqz	$L1462
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1462
	sll	$3,$5,1
	zeh	$3
	sltu	$3,$4
	bteqz	$L1464
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1464
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$4
	bteqz	$L1466
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1466
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$4
	bteqz	$L1468
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1468
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$4
	bteqz	$L1470
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1470
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$4
	bteqz	$L1472
	srl	$16,$3,8
	srl	$17,$16,7
	bnez	$17,$L1472
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$4
	bteqz	$L1474
	srl	$2,$3,8
	srl	$7,$2,7
	bnez	$7,$L1474
	sll	$7,$5,7
	zeh	$7
	sltu	$7,$4
	bteqz	$L1475
	move	$2,$4
	bnez	$7,$L1531
$L1378:
	bnez	$6,$L1477
	move	$2,$7
$L1477:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1448:
	li	$5,2
$L1377:
	subu	$16,$4,$3
	sltu	$4,$3
	zeh	$16
	btnez	$L1444
	move	$4,$16
$L1444:
	zeh	$4
	btnez	$L1445
	move	$7,$5
$L1446:
	srl	$17,$3,1
	subu	$2,$4,$17
	sltu	$4,$17
	zeh	$7
	srl	$16,$5,1
	zeh	$2
	bteqz	$L1380
	move	$2,$4
$L1380:
	zeh	$2
	bteqz	$L1382
	li	$16,0
$L1382:
	or	$7,$16
	srl	$4,$5,2
	zeh	$7
	srl	$17,$3,2
	beqz	$4,$L1378
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1384
	move	$2,$16
$L1384:
	zeh	$2
	btnez	$L1386
	li	$4,0
$L1386:
	or	$7,$4
	srl	$4,$5,3
	zeh	$7
	srl	$17,$3,3
	beqz	$4,$L1378
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1388
	move	$2,$16
$L1388:
	zeh	$2
	btnez	$L1390
	li	$4,0
$L1390:
	or	$7,$4
	srl	$4,$5,4
	zeh	$7
	srl	$17,$3,4
	beqz	$4,$L1378
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1392
	move	$2,$16
$L1392:
	zeh	$2
	btnez	$L1394
	li	$4,0
$L1394:
	or	$7,$4
	srl	$4,$5,5
	zeh	$7
	srl	$17,$3,5
	beqz	$4,$L1378
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1396
	move	$2,$16
$L1396:
	zeh	$2
	btnez	$L1398
	li	$4,0
$L1398:
	or	$7,$4
	srl	$4,$5,6
	zeh	$7
	srl	$17,$3,6
	beqz	$4,$L1378
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1400
	move	$2,$16
$L1400:
	zeh	$2
	btnez	$L1402
	li	$4,0
$L1402:
	or	$7,$4
	srl	$4,$5,7
	zeh	$7
	srl	$17,$3,7
	beqz	$4,$L1378
	sltu	$2,$17
	subu	$16,$2,$17
	move	$17,$24
	zeh	$16
	cmpi	$17,1
	bnez	$17,$L1404
	move	$2,$16
$L1404:
	zeh	$2
	btnez	$L1406
	li	$4,0
$L1406:
	or	$7,$4
	srl	$4,$5,8
	zeh	$7
	move	$9,$4
	srl	$17,$3,8
	beqz	$4,$L1378
	sltu	$2,$17
	subu	$3,$2,$17
	move	$16,$24
	zeh	$3
	cmpi	$16,1
	bnez	$16,$L1408
	move	$2,$3
$L1408:
	zeh	$2
	btnez	$L1410
	li	$4,0
$L1410:
	move	$3,$9
	or	$7,$4
	srl	$16,$17,1
	srl	$4,$3,1
	zeh	$7
	zeh	$16
	beqz	$4,$L1378
	sltu	$2,$16
	subu	$3,$2,$16
	move	$16,$24
	zeh	$3
	cmpi	$16,1
	bnez	$16,$L1412
	move	$2,$3
$L1412:
	zeh	$2
	btnez	$L1414
	li	$4,0
$L1414:
	move	$3,$9
	or	$7,$4
	srl	$16,$17,2
	srl	$3,$3,2
	zeh	$7
	zeh	$16
	beqz	$3,$L1378
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1416
	move	$2,$4
$L1416:
	zeh	$2
	btnez	$L1418
	li	$3,0
$L1418:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,3
	srl	$3,$4,3
	zeh	$7
	zeh	$16
	beqz	$3,$L1378
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1420
	move	$2,$4
$L1420:
	zeh	$2
	btnez	$L1422
	li	$3,0
$L1422:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,4
	srl	$3,$4,4
	zeh	$7
	zeh	$16
	beqz	$3,$L1378
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1424
	move	$2,$4
$L1424:
	zeh	$2
	btnez	$L1426
	li	$3,0
$L1426:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,5
	srl	$3,$4,5
	zeh	$7
	zeh	$16
	beqz	$3,$L1378
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1428
	move	$2,$4
$L1428:
	zeh	$2
	btnez	$L1430
	li	$3,0
$L1430:
	move	$4,$9
	or	$7,$3
	srl	$16,$17,6
	srl	$3,$4,6
	zeh	$7
	zeh	$16
	beqz	$3,$L1378
	sltu	$2,$16
	subu	$4,$2,$16
	move	$16,$24
	zeh	$4
	cmpi	$16,1
	bnez	$16,$L1432
	move	$2,$4
$L1432:
	zeh	$2
	btnez	$L1434
	li	$3,0
$L1434:
	or	$7,$3
	srl	$17,$17,7
	cmpi	$5,16384
	zeh	$7
	zeh	$17
	bteqz	$L1378
	sltu	$2,$17
	move	$16,$24
	subu	$4,$2,$17
	cmpi	$16,1
	zeh	$4
	move	$5,$24
	bnez	$16,$L1436
	move	$2,$4
$L1436:
	zeh	$2
	or	$7,$5
	b	$L1378
$L1445:
	li	$7,0
	b	$L1446
$L1450:
	li	$5,4
	b	$L1377
$L1452:
	li	$5,8
	b	$L1377
$L1454:
	li	$5,16
	b	$L1377
$L1464:
	li	$5,512
	b	$L1377
$L1531:
	li	$5,32768
	move	$3,$5
	b	$L1377
$L1456:
	li	$5,32
	b	$L1377
$L1458:
	li	$5,64
	b	$L1377
$L1460:
	li	$5,128
	b	$L1377
$L1462:
	li	$5,255
	addiu	$5,1
	b	$L1377
$L1530:
	subu	$2,$4,$5
	xor	$5,$4
	zeh	$2
	beqz	$5,$L1373
	move	$2,$4
$L1373:
	sltu	$5,1
	zeh	$2
	move	$7,$24
$L1522:
	bnez	$6,$L1532
	move	$2,$7
$L1532:
	jr	$31
$L1466:
	li	$5,1024
	b	$L1377
$L1468:
	li	$5,2048
	b	$L1377
$L1470:
	li	$5,4096
	b	$L1377
$L1472:
	li	$5,8192
	b	$L1377
$L1474:
	li	$5,16384
	b	$L1377
$L1475:
	li	$3,32768
	move	$5,$3
	b	$L1377
$L1375:
	subu	$2,$4,$5
	zeh	$2
	li	$7,1
	b	$L1522
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
	bteqz	$L1562
	li	$2,32
	li	$3,1
$L1534:
	slt	$5,0
	btnez	$L1539
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1536
	addiu	$2,-1
	bnez	$2,$L1534
	bnez	$6,$L1563
$L1564:
	jr	$31
$L1536:
	beqz	$3,$L1549
$L1539:
	addiu	$sp,-8
	li	$2,0
	sd	$16,0($sp)
$L1544:
	sltu	$4,$5
	move	$16,$24
	subu	$7,$4,$5
	cmpi	$16,1
	bnez	$16,$L1541
	move	$4,$7
$L1541:
	bteqz	$L1542
	move	$7,$3
$L1543:
	srl	$3,$3,1
	or	$2,$7
	srl	$5,$5,1
	bnez	$3,$L1544
	beqz	$6,$L1533
	move	$2,$4
$L1533:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L1542:
	li	$7,0
	b	$L1543
$L1562:
	sltu	$4,$5
	move	$3,$24
	subu	$2,$4,$5
	cmpi	$3,1
	beqz	$3,$L1547
	move	$2,$4
$L1547:
	move	$4,$2
	move	$2,$24
	beqz	$6,$L1564
	b	$L1563
$L1549:
	li	$2,0
	beqz	$6,$L1564
$L1563:
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
	beqz	$6,$L1566
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

$L1566:
	beqz	$5,$L1569
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

$L1569:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_1571, @object
__pool___ashldi3_1571:
	.align	2
$L1571:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_1571, @object
__pend___ashldi3_1571:
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
	beqz	$3,$L1573
	move	$2,$5
	dsll	$2,$6
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1573:
	beqz	$6,$L1576
	subu	$7,$2,$6
	move	$2,$4
	move	$3,$5
	dsll	$2,$6
	dsrl	$5,$7
	dsll	$3,$6
	or	$2,$5
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1576:
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
	move	$6,$5
	and	$6,$3
	beqz	$6,$L1579
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

$L1579:
	move	$2,$4
	beqz	$5,$L1585
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

$L1585:
	jr	$31
	.type	__pool___ashrdi3_1584, @object
__pool___ashrdi3_1584:
	.align	2
$L1584:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_1584, @object
__pend___ashrdi3_1584:
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
	beqz	$2,$L1587
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

$L1587:
	move	$2,$4
	beqz	$6,$L1590
	subu	$7,$3,$6
	dsll	$4,$7
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

$L1590:
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
	move	$6,$4
	dsll	$5,$4,56
	li	$7,65280
	dsrl	$3,56
	dsrl	$6,40
	and	$6,$7
	or	$3,$5
	move	$2,$4
	ld	$5,$L1594
	ld	$7,$L1595
	or	$3,$6
	dsrl	$2,24
	move	$6,$4
	and	$2,$5
	dsrl	$6,8
	ld	$5,$L1596
	and	$6,$7
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$7,$L1597
	or	$3,$6
	or	$3,$2
	dsll	$6,$4,24
	dsll	$2,$4,40
	ld	$4,$L1598
	and	$6,$7
	or	$3,$6
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_1594, @object
__pool___bswapdi2_1594:
	.align	3
$L1594:
	.dword	16711680
$L1595:
	.dword	4278190080
$L1596:
	.dword	1095216660480
$L1597:
	.dword	280375465082880
$L1598:
	.dword	71776119061217280
	.type	__pend___bswapdi2_1594, @object
__pend___bswapdi2_1594:
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
	lw	$7,$L1601
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

	.type	__pool___bswapsi2_1601, @object
__pool___bswapsi2_1601:
	.align	2
$L1601:
	.word	16711680
	.type	__pend___bswapsi2_1601, @object
__pend___bswapsi2_1601:
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
	lw	$3,$L1606
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
	beqz	$3,$L1603
	subu	$4,$2,$4
	addu	$6,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$4,$6
	.set	macro
	.set	reorder

$L1603:
	li	$4,0
	addu	$6,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$4,$6
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_1606, @object
__pool___clzsi2_1606:
	.align	2
$L1606:
	.word	65536
	.type	__pend___clzsi2_1606, @object
__pend___clzsi2_1606:
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
	lw	$2,$L1611
	sd	$16,40($sp)
	move	$16,$24
	move	$28,$2
	addiu	$7,$16,-1
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$6,$28
	and	$7,$4
	beqz	$16,$L1608
	move	$4,$5
$L1609:
	lw	$5,%call16(__clzdi2)($6)
	or	$4,$7
	.set	noreorder
	.set	nomacro
	jalr	$5
	move	$25,$5
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

$L1608:
	li	$4,0
	b	$L1609
	.type	__pool___clzti2_1611, @object
__pool___clzti2_1611:
	.align	2
$L1611:
	.word	__gnu_local_gp
	.type	__pend___clzti2_1611, @object
__pend___clzti2_1611:
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
	btnez	$L1616
	slt	$6,$7
	btnez	$L1615
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1616
	sltu	$5,$4
	btnez	$L1617
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1616:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1615:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1617:
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
	btnez	$L1620
	slt	$6,$7
	btnez	$L1621
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1622
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1620:
	li	$7,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$7
	.set	macro
	.set	reorder

$L1622:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1621:
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
	btnez	$L1627
	slt	$6,$4
	btnez	$L1626
	sltu	$5,$7
	btnez	$L1627
	sltu	$7,$5
	btnez	$L1628
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1627:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1626:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1628:
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
	lw	$2,$L1634
	addiu	$sp,-56
	move	$28,$2
	sltu	$5,1
	move	$6,$28
	sd	$16,40($sp)
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$7,$5
	move	$16,$24
	beqz	$5,$L1632
	li	$4,0
$L1632:
	lw	$2,%call16(__ctzdi2)($6)
	addiu	$5,$16,-1
	and	$5,$7
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

	.type	__pool___ctzti2_1634, @object
__pool___ctzti2_1634:
	.align	2
$L1634:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_1634, @object
__pend___ctzti2_1634:
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
	lw	$2,$L1641
	addiu	$sp,-48
	move	$28,$2
	move	$6,$28
	sd	$31,40($sp)
	sw	$2,32($sp)
	bnez	$5,$L1636
	bnez	$4,$L1640
	ld	$7,40($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L1636:
	lw	$2,%call16(__ctzdi2)($6)
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

$L1640:
	lw	$2,%call16(__ctzdi2)($6)
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

	.type	__pool___ffsti2_1641, @object
__pool___ffsti2_1641:
	.align	2
$L1641:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_1641, @object
__pend___ffsti2_1641:
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
	beqz	$6,$L1643
	dsrl	$4,32
	sll	$7,$4,0
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

$L1643:
	move	$2,$4
	beqz	$5,$L1649
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

$L1649:
	jr	$31
	.type	__pool___lshrdi3_1648, @object
__pool___lshrdi3_1648:
	.align	2
$L1648:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_1648, @object
__pend___lshrdi3_1648:
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
	beqz	$2,$L1651
	dsrl	$4,$6
	li	$2,0
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1651:
	move	$2,$4
	beqz	$6,$L1654
	subu	$7,$3,$6
	dsll	$4,$7
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

$L1654:
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
	sd	$17,8($sp)
	sd	$3,16($sp)
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
	sll	$2,$5,0
	move	$11,$4
	sd	$17,32($sp)
	sll	$4,$7,0
	move	$17,$5
	multu	$2,$4
	dsrl	$17,32
	move	$9,$2
	sll	$2,$17,0
	sd	$16,24($sp)
	mflo	$3
	mfhi	$16
	multu	$4,$2
	move	$8,$2
	mflo	$4
	mfhi	$17
	dsll	$2,$4,32
	dsll	$16,$16,32
	dsll	$4,$17,32
	dsrl	$2,32
	move	$17,$7
	dsrl	$16,32
	or	$2,$4
	dsrl	$17,32
	sll	$17,$17,0
	move	$4,$9
	daddu	$2,$2,$16
	multu	$4,$17
	dsll	$16,$2,32
	dsrl	$16,32
	move	$10,$16
	mflo	$16
	mfhi	$4
	dsll	$16,$16,32
	dsll	$4,$4,32
	dsrl	$16,32
	or	$16,$4
	move	$4,$10
	daddu	$16,$16,$4
	dsll	$3,$3,32
	dsll	$4,$16,32
	dsrl	$3,32
	daddu	$3,$3,$4
	move	$4,$8
	multu	$4,$17
	sd	$3,16($sp)
	mfhi	$17
	mflo	$3
	dmult	$5,$6
	dsll	$4,$3,32
	dsll	$3,$17,32
	move	$17,$11
	dsrl	$4,32
	or	$4,$3
	dsrl	$2,32
	daddu	$2,$2,$4
	dsrl	$16,32
	mflo	$5
	dmult	$7,$17
	daddu	$16,$2,$16
	daddu	$6,$5,$16
	ld	$3,16($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	mflo	$7
	daddu	$4,$6,$7
	sd	$4,8($sp)
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
	dsubu	$4,$3,$4
	move	$2,$24
	dsubu	$2,$4,$2
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
	xor	$5,$4
	move	$2,$5
	dsra	$2,32
	sll	$5,$5,0
	xor	$5,$2
	srl	$3,$5,8
	srl	$4,$3,8
	xor	$4,$5
	srl	$6,$4,8
	xor	$6,$4
	srl	$7,$6,4
	xor	$7,$6
	li	$2,15
	and	$7,$2
	li	$2,27030
	sra	$2,$7
	li	$5,1
	.set	noreorder
	.set	nomacro
	jr	$31
	and	$2,$5
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
	ld	$3,$L1671
	move	$5,$4
	dsrl	$5,1
	and	$5,$3
	dsubu	$4,$4,$5
	ld	$7,$L1672
	move	$6,$4
	dsrl	$6,2
	and	$6,$7
	and	$4,$7
	daddu	$2,$6,$4
	move	$5,$2
	ld	$4,$L1673
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

	.type	__pool___popcountdi2_1671, @object
__pool___popcountdi2_1671:
	.align	3
$L1671:
	.dword	6148914691236517205
$L1672:
	.dword	3689348814741910323
$L1673:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1671, @object
__pend___popcountdi2_1671:
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
	lw	$3,$L1676
	srl	$5,$4,1
	and	$5,$3
	lw	$7,$L1677
	subu	$4,$4,$5
	srl	$6,$4,2
	and	$6,$7
	and	$4,$7
	addu	$5,$6,$4
	srl	$2,$5,4
	lw	$3,$L1678
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

	.type	__pool___popcountsi2_1676, @object
__pool___popcountsi2_1676:
	.align	2
$L1676:
	.word	1431655765
$L1677:
	.word	858993459
$L1678:
	.word	252645135
	.type	__pend___popcountsi2_1676, @object
__pend___popcountsi2_1676:
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
	ld	$6,$L1681
	dsll	$7,$4,63
	dsrl	$3,1
	or	$7,$3
	and	$7,$6
	move	$3,$4
	dsubu	$2,$5,$7
	dsrl	$3,1
	and	$3,$6
	sltu	$5,$2
	move	$5,$24
	dsubu	$4,$4,$3
	dsubu	$7,$4,$5
	move	$6,$2
	ld	$4,$L1682
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
	ld	$4,$L1683
	move	$3,$24
	daddu	$6,$7,$6
	daddu	$5,$3,$6
	and	$5,$4
	and	$2,$4
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

	.type	__pool___popcountti2_1681, @object
__pool___popcountti2_1681:
	.align	3
$L1681:
	.dword	6148914691236517205
$L1682:
	.dword	3689348814741910323
$L1683:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1681, @object
__pend___popcountti2_1681:
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
	lw	$2,$L1692
	move	$8,$4
	li	$4,1
	move	$28,$2
	and	$4,$5
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	sw	$2,32($sp)
	move	$17,$28
	beqz	$4,$L1690
	ld	$7,$L1693
	move	$16,$5
	sd	$7,40($sp)
$L1687:
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
$L1685:
	srl	$5,$16,31
	addu	$16,$5,$16
	sra	$16,$16,1
	beqz	$16,$L1686
$L1688:
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
	bnez	$7,$L1687
	srl	$6,$16,31
	addu	$3,$6,$16
	sra	$16,$3,1
	b	$L1688
$L1686:
	lw	$4,80($sp)
	slt	$4,0
	bteqz	$L1684
	lw	$17,%call16(__mips16_divdf3)($17)
	ld	$4,$L1693
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sd	$2,40($sp)
	move	$28,$6
$L1684:
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

$L1690:
	ld	$6,$L1693
	lw	$16,80($sp)
	sd	$6,40($sp)
	b	$L1685
	.type	__pool___powidf2_1692, @object
__pool___powidf2_1692:
	.align	2
$L1692:
	.word	__gnu_local_gp
	.align	3
$L1693:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_1692, @object
__pend___powidf2_1692:
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
	lw	$2,$L1702
	move	$8,$4
	li	$4,1
	move	$28,$2
	and	$4,$5
	sd	$17,56($sp)
	sd	$31,64($sp)
	sd	$16,48($sp)
	sw	$2,32($sp)
	move	$17,$28
	beqz	$4,$L1700
	lw	$7,$L1703
	move	$16,$5
	sw	$7,40($sp)
$L1697:
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
$L1695:
	srl	$5,$16,31
	addu	$16,$5,$16
	sra	$16,$16,1
	beqz	$16,$L1696
$L1698:
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
	bnez	$7,$L1697
	srl	$6,$16,31
	addu	$3,$6,$16
	sra	$16,$3,1
	b	$L1698
$L1696:
	lw	$4,80($sp)
	slt	$4,0
	bteqz	$L1694
	lw	$17,%call16(__mips16_divsf3)($17)
	lw	$4,$L1703
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sw	$2,40($sp)
	move	$28,$6
$L1694:
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

$L1700:
	lw	$6,$L1703
	lw	$16,80($sp)
	sw	$6,40($sp)
	b	$L1695
	.type	__pool___powisf2_1702, @object
__pool___powisf2_1702:
	.align	2
$L1702:
	.word	__gnu_local_gp
$L1703:
	.word	1065353216
	.type	__pend___powisf2_1702, @object
__pend___powisf2_1702:
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
	btnez	$L1708
	sltu	$7,$6
	btnez	$L1707
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1708
	sltu	$5,$4
	btnez	$L1709
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1708:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1707:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1709:
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
	btnez	$L1712
	sltu	$7,$6
	btnez	$L1713
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1714
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1712:
	li	$6,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$6
	.set	macro
	.set	reorder

$L1714:
	li	$3,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$3
	.set	macro
	.set	reorder

$L1713:
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
	btnez	$L1719
	sltu	$6,$4
	btnez	$L1718
	sltu	$5,$7
	btnez	$L1719
	sltu	$7,$5
	btnez	$L1720
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1719:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1718:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1720:
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
