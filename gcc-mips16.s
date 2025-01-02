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
	move	$3,$5
	or	$3,$4
	li	$4,7
	and	$3,$4
	bnez	$3,$L10
	addiu	$3,$5,1
	subu	$3,$2,$3
	sltu	$3,7
	btnez	$L10
	srl	$7,$6,3
	addiu	$sp,-8
	sll	$7,$7,3
	move	$3,$2
	sd	$16,0($sp)
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
	lb	$6,1($4)
	cmpi	$3,2
	sb	$6,1($5)
	bteqz	$L8
	lb	$6,2($4)
	cmpi	$3,3
	sb	$6,2($5)
	bteqz	$L8
	lb	$6,3($4)
	cmpi	$3,4
	sb	$6,3($5)
	bteqz	$L8
	lb	$6,4($4)
	cmpi	$3,5
	sb	$6,4($5)
	bteqz	$L8
	lb	$6,5($4)
	cmpi	$3,6
	sb	$6,5($5)
	bteqz	$L8
	lb	$3,6($4)
	sb	$3,6($5)
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
	lb	$4,0($5)
	addiu	$3,1
	sb	$4,-1($3)
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
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
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
	move	$2,$28
	lw	$2,%call16(memset)($2)
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
	lb	$3,1($5)
	addiu	$5,1
	addiu	$2,1
	sb	$3,0($2)
	bnez	$3,$L110
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
	move	$2,$4
$L145:
	lb	$3,1($2)
	addiu	$2,1
	bnez	$3,$L145
	.set	noreorder
	.set	nomacro
	jr	$31
	subu	$2,$2,$4
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
	addiu	$3,$5,1
	beqz	$2,$L159
	move	$5,$3
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
	sll	$2,$2,1
	addu	$2,$4,$2
$L163:
	lbu	$3,1($4)
	addiu	$4,2
	sb	$3,0($5)
	lbu	$3,-2($4)
	cmp	$4,$2
	sb	$3,1($5)
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
	addiu	$2,$4,-8232
	sltu	$2,2
	btnez	$L186
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
	li	$2,47062
	sltu	$3,$2
	btnez	$L194
	li	$2,57344
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$2,8185
	btnez	$L194
	li	$2,65532
	lw	$3,$L199
	neg	$2,$2
	addu	$2,$4,$2
	sltu	$3,$2
	btnez	$L195
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

$L194:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L197:
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

$L213:
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

$L225:
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
	bnez	$2,$L236
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
	bnez	$2,$L235
	move	$2,$17
	dsrl	$2,63
	move	$3,$2
	move	$2,$16
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L240
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
	btnez	$L236
	move	$16,$17
$L236:
	move	$2,$16
$L228:
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
	bnez	$2,$L250
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
	bnez	$2,$L249
	lw	$2,$L256
	move	$3,$2
	and	$3,$17
	and	$2,$16
	xor	$2,$3
	bnez	$2,$L254
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
	btnez	$L250
	move	$16,$17
$L250:
	move	$2,$16
$L242:
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

$L254:
	bnez	$3,$L250
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
	bnez	$2,$L265
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
	bnez	$2,$L264
	move	$2,$17
	dsrl	$2,63
	move	$3,$2
	move	$2,$16
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L269
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
	btnez	$L265
	move	$16,$17
$L265:
	move	$2,$16
$L257:
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
	bnez	$2,$L277
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
	bnez	$2,$L279
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	move	$2,$17
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L283
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
	btnez	$L279
	move	$16,$17
$L279:
	move	$2,$16
$L271:
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
	bnez	$2,$L291
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
	bnez	$2,$L293
	lw	$2,$L299
	move	$3,$2
	and	$3,$16
	and	$2,$17
	xor	$2,$3
	bnez	$2,$L297
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
	btnez	$L293
	move	$16,$17
$L293:
	move	$2,$16
$L285:
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

$L297:
	bnez	$3,$L293
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
	bnez	$2,$L306
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
	bnez	$2,$L308
	move	$2,$16
	dsrl	$2,63
	move	$3,$2
	move	$2,$17
	dsrl	$2,63
	xor	$2,$3
	bnez	$2,$L312
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
	btnez	$L308
	move	$16,$17
$L308:
	move	$2,$16
$L300:
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
	addu	$2,$5,$2
	lbu	$2,0($2)
	srl	$4,$4,6
	sb	$2,0($3)
	addiu	$3,1
	bnez	$4,$L316
$L315:
	li	$2,0
	sb	$2,0($3)
	lw	$2,$L319
	jr	$31
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
	ld	$2,$L326
	ld	$4,0($3)
	dmult	$4,$2
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
	lw	$2,0($4)
	beqz	$2,$L334
	sw	$4,4($2)
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
	lw	$3,4($4)
	beqz	$3,$L344
	sw	$2,0($3)
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
	lw	$2,$L362
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
	beqz	$2,$L346
	move	$17,$5
	li	$16,0
	b	$L348
$L361:
	lw	$2,96($sp)
	addiu	$16,1
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
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
	beqz	$3,$L345
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
	lw	$2,96($sp)
	addiu	$16,1
	addu	$17,$17,$2
	lw	$2,44($sp)
	cmp	$2,$16
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
	addu	$4,$4,$2
	sll	$4,$4,1
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
	addu	$4,$4,$2
	sll	$4,$4,1
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
	addiu	$5,1
	move	$6,$3
	lb	$3,0($5)
	dsll	$4,$2,2
	daddu	$4,$4,$2
	addiu	$3,-48
	dsll	$4,$4,1
	sltu	$3,10
	dsubu	$2,$4,$6
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
	btnez	$L457
	beqz	$2,$L452
	lw	$2,40($sp)
	lw	$3,96($sp)
	addiu	$16,-1
	addu	$2,$2,$3
	subu	$16,$16,$17
	sw	$2,80($sp)
	bnez	$16,$L456
$L453:
	li	$2,0
	sw	$2,40($sp)
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

	beqz	$2,$L466
	slt	$2,1
	btnez	$L469
	lw	$2,96($sp)
	addiu	$17,-1
	addu	$2,$16,$2
	sra	$17,$17,1
	sw	$2,80($sp)
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
	lw	$2,40($sp)
	beqz	$2,$L471
	move	$17,$2
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
	move	$2,$4
$L521:
	lw	$3,4($2)
	addiu	$2,4
	bnez	$3,$L521
	subu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	sra	$2,$2,2
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
	lw	$3,0($4)
	lw	$2,0($5)
	slt	$3,$2
	btnez	$L537
	slt	$2,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L537:
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
	addiu	$sp,-48
	lw	$2,$L570
	move	$28,$2
	sd	$31,40($sp)
	sw	$2,32($sp)
	beqz	$6,$L565
	move	$2,$28
	lw	$2,%call16(memcpy)($2)
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
	li	$3,1
	and	$3,$6
	beqz	$3,$L588
	li	$3,2
	neg	$3,$3
	and	$6,$3
	sll	$6,$6,2
	addu	$5,$5,$6
	lw	$3,0($5)
	addu	$6,$2,$6
	sw	$3,0($6)
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
	lw	$5,0($4)
	addiu	$3,-1
	sw	$5,0($7)
	addiu	$5,$3,1
	addiu	$7,4
	addiu	$4,4
	beqz	$5,$L588
	lw	$5,0($4)
	addiu	$3,-1
	sw	$5,0($7)
	addiu	$5,$3,1
	addiu	$7,4
	addiu	$4,4
	bnez	$5,$L598
	b	$L588
$L573:
	beqz	$6,$L588
	sll	$3,$3,2
$L576:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	addiu	$3,-4
	sw	$6,0($4)
	addiu	$4,$3,4
	bnez	$4,$L576
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
	addiu	$4,$2,4
	move	$8,$4
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
	li	$3,1
	and	$3,$6
	beqz	$3,$L606
	li	$3,2
	neg	$3,$3
	and	$6,$3
	subu	$4,$4,$6
	move	$3,$8
	sll	$6,$6,2
	addu	$6,$3,$6
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
	addu	$2,$4,$6
	addu	$5,$5,$6
	beqz	$6,$L683
$L639:
	addiu	$2,-1
	lb	$3,0($2)
	cmp	$4,$2
	addiu	$5,-1
	sb	$3,0($5)
	btnez	$L639
	jr	$31
$L637:
	cmp	$4,$5
	bteqz	$L683
	beqz	$6,$L683
	addiu	$2,$6,-1
	sltu	$2,8
	btnez	$L640
	move	$2,$5
	or	$2,$4
	li	$3,7
	and	$2,$3
	bnez	$2,$L640
	addiu	$2,$4,1
	subu	$2,$5,$2
	sltu	$2,7
	btnez	$L640
	srl	$7,$6,3
	addiu	$sp,-8
	sll	$7,$7,3
	move	$2,$5
	sd	$16,0($sp)
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
	lb	$4,1($3)
	cmpi	$2,2
	sb	$4,1($5)
	bteqz	$L636
	lb	$4,2($3)
	cmpi	$2,3
	sb	$4,2($5)
	bteqz	$L636
	lb	$4,3($3)
	cmpi	$2,4
	sb	$4,3($5)
	bteqz	$L636
	lb	$4,4($3)
	cmpi	$2,5
	sb	$4,4($5)
	bteqz	$L636
	lb	$4,5($3)
	cmpi	$2,6
	sb	$4,5($5)
	bteqz	$L636
	lb	$2,6($3)
	sb	$2,6($5)
$L636:
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,8
	.set	macro
	.set	reorder

$L640:
	addu	$6,$4,$6
$L644:
	lb	$2,0($4)
	addiu	$4,1
	cmp	$6,$4
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
	sll	$2,$4,24
	or	$2,$3
	li	$5,65280
	srl	$3,$4,8
	and	$3,$5
	or	$2,$3
	lw	$3,$L698
	sll	$4,$4,8
	and	$4,$3
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
	move	$2,$4
	dsll	$3,$4,56
	dsrl	$2,56
	or	$3,$2
	move	$2,$4
	li	$5,65280
	dsrl	$2,40
	and	$2,$5
	or	$3,$2
	ld	$5,$L701
	move	$2,$4
	dsrl	$2,24
	and	$2,$5
	or	$3,$2
	ld	$5,$L702
	move	$2,$4
	dsrl	$2,8
	and	$2,$5
	ld	$5,$L703
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$5,$L704
	or	$3,$2
	dsll	$2,$4,24
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L705
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
	lw	$17,%call16(__mips16_gtsf2)($17)
	lw	$5,$L728
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
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L736
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
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L744
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
	li	$2,1
	and	$2,$16
	beqz	$2,$L752
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
	srl	$2,$16,31
	addu	$16,$2,$16
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
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L753
$L765:
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
	bnez	$2,$L753
	b	$L765
$L749:
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
	li	$2,1
	and	$2,$16
	beqz	$2,$L773
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
	srl	$2,$16,31
	addu	$16,$2,$16
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
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L774
$L786:
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
	bnez	$2,$L774
	b	$L786
$L770:
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
	li	$2,1
	and	$2,$16
	beqz	$2,$L794
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
	srl	$2,$16,31
	addu	$16,$2,$16
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
	move	$5,$2
	li	$2,1
	and	$2,$16
	move	$28,$6
	bnez	$2,$L795
$L807:
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
	bnez	$2,$L795
	b	$L807
$L791:
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
	move	$3,$4
	or	$3,$5
	li	$4,7
	and	$3,$4
	bnez	$3,$L813
	srl	$4,$6,3
	addiu	$sp,-16
	sll	$4,$4,3
	move	$3,$2
	sd	$16,0($sp)
	sd	$17,8($sp)
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
	lbu	$6,1($3)
	lbu	$4,1($16)
	cmpi	$5,2
	xor	$4,$6
	sb	$4,1($3)
	bteqz	$L812
	lbu	$6,2($3)
	lbu	$4,2($16)
	cmpi	$5,3
	xor	$4,$6
	sb	$4,2($3)
	bteqz	$L812
	lbu	$6,3($3)
	lbu	$4,3($16)
	cmpi	$5,4
	xor	$4,$6
	sb	$4,3($3)
	bteqz	$L812
	lbu	$6,4($3)
	lbu	$4,4($16)
	cmpi	$5,5
	xor	$4,$6
	sb	$4,4($3)
	bteqz	$L812
	lbu	$6,5($3)
	lbu	$4,5($16)
	cmpi	$5,6
	xor	$4,$6
	sb	$4,5($3)
	bteqz	$L812
	lbu	$5,6($3)
	lbu	$4,6($16)
	xor	$4,$5
	sb	$4,6($3)
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
	lb	$3,0($3)
	bnez	$3,$L875
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
	li	$2,0
$L890:
	lb	$3,0($4)
	cmp	$5,$3
	bteqz	$L892
	addiu	$4,1
	bnez	$3,$L890
	jr	$31
$L892:
	move	$2,$4
	addiu	$4,1
	bnez	$3,$L890
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
	beqz	$17,$L904
	move	$8,$5
$L895:
	lb	$3,1($5)
	addiu	$5,1
	bnez	$3,$L895
	move	$2,$8
	subu	$5,$5,$2
	bnez	$5,$L913
	b	$L904
$L918:
	addiu	$4,1
	beqz	$3,$L917
$L913:
	lb	$3,0($4)
	cmp	$3,$17
	btnez	$L918
	addiu	$16,$5,-1
	zeb	$3
	addu	$16,$4,$16
	move	$2,$8
	move	$7,$4
$L897:
	lbu	$6,0($2)
	beqz	$6,$L898
	cmp	$7,$16
	bteqz	$L898
	xor	$6,$3
	bnez	$6,$L898
	lbu	$3,1($7)
	addiu	$7,1
	addiu	$2,1
	bnez	$3,$L897
$L898:
	lbu	$2,0($2)
	xor	$2,$3
	beqz	$2,$L904
	addiu	$4,1
	b	$L913
$L917:
	ld	$17,8($sp)
	ld	$16,0($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L904:
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
	lw	$2,$L931
	addiu	$sp,-64
	move	$28,$2
	sd	$17,48($sp)
	move	$17,$28
	sw	$2,32($sp)
	sd	$5,72($sp)
	lw	$2,%call16(__mips16_ltdf2)($17)
	ld	$5,$L932
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
	btnez	$L930
	lw	$2,%call16(__mips16_gtdf2)($17)
	ld	$5,$L932
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L923
	lw	$17,%call16(__mips16_ltdf2)($17)
	ld	$5,$L932
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L922
$L923:
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

$L930:
	lw	$17,%call16(__mips16_gtdf2)($17)
	ld	$5,$L932
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$4,72($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L923
$L922:
	ld	$2,$L933
	xor	$16,$2
	b	$L923
	.type	__pool_copysign_931, @object
__pool_copysign_931:
	.align	2
$L931:
	.word	__gnu_local_gp
	.align	3
$L932:
	.word	0
	.word	0
$L933:
	.dword	-9223372036854775808
	.type	__pend_copysign_931, @object
__pend_copysign_931:
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
	beqz	$7,$L955
	sltu	$5,$7
	btnez	$L942
	addiu	$sp,-16
	subu	$5,$5,$7
	sd	$17,8($sp)
	addu	$17,$4,$5
	sltu	$17,$4
	sd	$16,0($sp)
	btnez	$L945
	lb	$3,0($6)
	move	$9,$6
	move	$8,$3
	addiu	$6,$7,-1
$L940:
	lb	$3,0($2)
	move	$4,$8
	xor	$3,$4
	addiu	$7,$2,1
	beqz	$3,$L954
	move	$2,$7
$L936:
	sltu	$17,$2
	bteqz	$L940
$L945:
	li	$2,0
$L934:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L954:
	move	$3,$9
	addiu	$3,1
	move	$10,$3
	move	$4,$3
	beqz	$6,$L934
$L939:
	move	$5,$7
	b	$L937
$L938:
	addiu	$5,1
	addu	$3,$7,$6
	xor	$3,$5
	addiu	$4,1
	beqz	$3,$L934
$L937:
	lbu	$3,0($5)
	lbu	$16,0($4)
	xor	$3,$16
	beqz	$3,$L938
	sltu	$17,$7
	btnez	$L945
	lb	$3,0($7)
	move	$4,$8
	xor	$3,$4
	addiu	$2,$7,1
	bnez	$3,$L936
	move	$3,$7
	move	$4,$10
	move	$7,$2
	move	$2,$3
	b	$L939
$L955:
	jr	$31
$L942:
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
	lw	$2,$L962
	move	$28,$2
	sd	$16,40($sp)
	sd	$31,48($sp)
	sw	$2,32($sp)
	move	$16,$6
	beqz	$6,$L957
	move	$2,$28
	lw	$2,%call16(memmove)($2)
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$25,$2
	.set	macro
	.set	reorder

	move	$4,$2
$L957:
	ld	$7,48($sp)
	addu	$2,$4,$16
	ld	$16,40($sp)
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,56
	.set	macro
	.set	reorder

	.type	__pool_mempcpy_962, @object
__pool_mempcpy_962:
	.align	2
$L962:
	.word	__gnu_local_gp
	.type	__pend_mempcpy_962, @object
__pend_mempcpy_962:
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
	lw	$2,$L989
	addiu	$sp,-80
	move	$28,$2
	sd	$16,56($sp)
	move	$16,$28
	sw	$2,32($sp)
	sw	$5,88($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L990
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
	btnez	$L986
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L991
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	btnez	$L987
	li	$2,0
	sw	$2,48($sp)
$L966:
	li	$2,0
	sw	$2,40($sp)
$L972:
	lw	$2,40($sp)
	ld	$5,$L992
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
	ld	$5,$L991
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
	bteqz	$L972
$L973:
	lw	$2,88($sp)
	lw	$3,40($sp)
	sw	$3,0($2)
	lw	$2,48($sp)
	beqz	$2,$L979
	ld	$2,$L993
	xor	$2,$17
$L963:
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

$L987:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L992
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,0
	move	$28,$6
	bteqz	$L969
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L990
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L978
$L969:
	lw	$3,88($sp)
	li	$2,0
	sw	$2,0($3)
	move	$2,$17
	b	$L963
$L986:
	ld	$2,$L993
	ld	$5,$L994
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
	bteqz	$L988
	li	$2,1
	ld	$17,40($sp)
	sw	$2,48($sp)
	b	$L966
$L979:
	move	$2,$17
	b	$L963
$L988:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L995
	.set	noreorder
	.set	nomacro
	jalr	$2
	move	$4,$17
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	slt	$2,1
	move	$28,$6
	btnez	$L969
	li	$2,1
	sw	$2,48($sp)
$L967:
	li	$2,0
	ld	$17,40($sp)
	sw	$2,40($sp)
$L974:
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
	ld	$5,$L992
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
	btnez	$L974
	b	$L973
$L978:
	li	$2,0
	sd	$17,40($sp)
	sw	$2,48($sp)
	b	$L967
	.type	__pool_frexp_989, @object
__pool_frexp_989:
	.align	2
$L989:
	.word	__gnu_local_gp
	.align	3
$L990:
	.word	0
	.word	0
$L991:
	.word	1072693248
	.word	0
$L992:
	.word	1071644672
	.word	0
$L993:
	.dword	-9223372036854775808
$L994:
	.word	-1074790400
	.word	0
$L995:
	.word	-1075838976
	.word	0
	.type	__pend_frexp_989, @object
__pend_frexp_989:
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
	beqz	$4,$L1001
$L998:
	dsll	$3,$4,63
	dsra	$3,63
	and	$3,$5
	dsrl	$4,1
	daddu	$2,$2,$3
	dsll	$5,$5,1
	bnez	$4,$L998
	jr	$31
$L1001:
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
	bteqz	$L1005
	li	$2,32
	li	$3,1
$L1004:
	slt	$5,0
	btnez	$L1005
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1006
	addiu	$2,-1
	bnez	$2,$L1004
	bnez	$6,$L1019
$L1020:
	jr	$31
$L1006:
	beqz	$3,$L1013
$L1005:
	li	$2,0
$L1010:
	sltu	$4,$5
	btnez	$L1009
	subu	$4,$4,$5
	or	$2,$3
$L1009:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1010
	beqz	$6,$L1020
$L1019:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L1013:
	li	$2,0
	beqz	$6,$L1020
	b	$L1019
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
	addiu	$sp,-48
	lw	$2,$L1025
	move	$28,$2
	sw	$2,32($sp)
	sra	$2,$4,31
	cmp	$2,$4
	sd	$31,40($sp)
	bteqz	$L1023
	move	$2,$24
	move	$3,$28
	sll	$2,$2,8
	dsll	$4,$2,32
	lw	$2,%call16(__clzdi2)($3)
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
	addiu	$sp,-48
	lw	$2,$L1030
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$4
	dsra	$2,63
	xor	$4,$2
	sd	$31,40($sp)
	beqz	$4,$L1028
	move	$3,$28
	lw	$2,%call16(__clzdi2)($3)
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
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
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
	sll	$16,$16,3
	move	$2,$5
	move	$3,$4
	addu	$16,$16,$5
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
	addu	$16,$5,$16
	subu	$16,$3,$16
	sltu	$16,7
	btnez	$L1047
	move	$16,$2
	or	$16,$3
	li	$17,7
	and	$16,$17
	bnez	$16,$L1047
	move	$16,$9
	srl	$16,$16,3
	sll	$16,$16,3
	move	$8,$16
	addu	$16,$2,$16
$L1048:
	ld	$17,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$17,0($3)
	addiu	$3,8
	btnez	$L1048
	move	$2,$8
	move	$17,$9
	xor	$17,$2
	addu	$7,$7,$2
	beqz	$17,$L1038
	addu	$2,$5,$7
	lb	$3,0($2)
	addu	$2,$4,$7
	sb	$3,0($2)
	addiu	$2,$7,1
	sltu	$2,$6
	bteqz	$L1038
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,2
	sltu	$2,$6
	bteqz	$L1038
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,3
	sltu	$2,$6
	bteqz	$L1038
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,4
	sltu	$2,$6
	bteqz	$L1038
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,5
	sltu	$2,$6
	bteqz	$L1038
	addu	$3,$5,$2
	lb	$3,0($3)
	addiu	$7,6
	addu	$2,$4,$2
	sltu	$7,$6
	sb	$3,0($2)
	bteqz	$L1038
	addu	$5,$5,$7
	lb	$2,0($5)
	addu	$4,$4,$7
	sb	$2,0($4)
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
	addiu	$2,$6,-1
	beqz	$6,$L1038
$L1043:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L1043
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
	addu	$6,$5,$6
$L1050:
	lb	$4,0($2)
	addiu	$2,1
	cmp	$6,$2
	sb	$4,0($3)
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
	move	$2,$5
	or	$2,$4
	li	$3,7
	and	$2,$3
	bnez	$2,$L1081
	addiu	$2,$5,2
	subu	$2,$4,$2
	sltu	$2,5
	btnez	$L1081
	srl	$2,$6,3
	move	$9,$2
	move	$7,$9
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
	addiu	$3,$17,1
	sltu	$3,$16
	bteqz	$L1077
	addu	$7,$5,$2
	addu	$3,$4,$2
	lh	$7,2($7)
	addiu	$2,$17,2
	sltu	$2,$16
	sh	$7,2($3)
	bteqz	$L1077
	move	$2,$8
	addu	$3,$5,$2
	lh	$3,4($3)
	addu	$2,$4,$2
	sh	$3,4($2)
$L1077:
	li	$2,1
	and	$2,$6
	beqz	$2,$L1074
$L1103:
	addu	$5,$5,$6
	lb	$2,-1($5)
	addu	$4,$4,$6
	sb	$2,-1($4)
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
	addiu	$2,$6,-1
	beqz	$6,$L1074
$L1079:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L1079
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
	move	$2,$5
	move	$3,$4
	addu	$16,$16,$5
$L1084:
	lh	$7,0($2)
	addiu	$2,2
	cmp	$2,$16
	sh	$7,0($3)
	addiu	$3,2
	btnez	$L1084
	li	$2,1
	and	$2,$6
	beqz	$2,$L1074
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
	neg	$7,$7
	addiu	$sp,-16
	and	$7,$6
	sltu	$4,$5
	move	$10,$7
	sd	$17,8($sp)
	sd	$16,0($sp)
	srl	$17,$6,2
	btnez	$L1109
	addu	$2,$5,$6
	sltu	$2,$4
	bteqz	$L1143
$L1109:
	beqz	$17,$L1144
	addiu	$2,$17,-1
	sltu	$2,9
	btnez	$L1111
	move	$2,$4
	or	$2,$5
	li	$3,7
	and	$2,$3
	bnez	$2,$L1111
	addiu	$2,$5,4
	xor	$2,$4
	beqz	$2,$L1111
	srl	$2,$6,3
	move	$8,$2
	move	$7,$8
	sll	$7,$7,3
	move	$2,$5
	move	$3,$4
	move	$9,$7
	addu	$16,$5,$7
$L1112:
	ld	$7,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$7,0($3)
	addiu	$3,8
	btnez	$L1112
	move	$2,$8
	sll	$2,$2,1
	xor	$2,$17
	beqz	$2,$L1115
	move	$2,$9
	addu	$2,$5,$2
	lw	$3,0($2)
	move	$2,$9
	addu	$2,$4,$2
	sw	$3,0($2)
$L1115:
	move	$2,$10
	sltu	$2,$6
	bteqz	$L1104
	subu	$17,$6,$2
	addiu	$2,$17,-1
	sltu	$2,8
	move	$2,$10
	addu	$3,$4,$2
	addu	$2,$5,$2
	btnez	$L1107
	move	$7,$10
	addiu	$16,$7,1
	addu	$16,$5,$16
	subu	$16,$3,$16
	sltu	$16,7
	btnez	$L1107
	move	$16,$2
	or	$16,$3
	li	$7,7
	and	$16,$7
	bnez	$16,$L1107
	srl	$16,$17,3
	sll	$7,$16,3
	move	$8,$7
	addu	$16,$2,$7
$L1116:
	ld	$7,0($2)
	addiu	$2,8
	cmp	$2,$16
	sd	$7,0($3)
	addiu	$3,8
	btnez	$L1116
	move	$2,$8
	move	$3,$10
	xor	$17,$2
	addu	$7,$3,$2
	beqz	$17,$L1104
	addu	$2,$5,$7
	lb	$3,0($2)
	addu	$2,$4,$7
	sb	$3,0($2)
	addiu	$2,$7,1
	sltu	$2,$6
	bteqz	$L1104
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,2
	sltu	$2,$6
	bteqz	$L1104
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,3
	sltu	$2,$6
	bteqz	$L1104
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,4
	sltu	$2,$6
	bteqz	$L1104
	addu	$3,$5,$2
	lb	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	addiu	$2,$7,5
	sltu	$2,$6
	bteqz	$L1104
	addu	$3,$5,$2
	lb	$3,0($3)
	addiu	$7,6
	addu	$2,$4,$2
	sltu	$7,$6
	sb	$3,0($2)
	bteqz	$L1104
	addu	$5,$5,$7
	lb	$2,0($5)
	addu	$4,$4,$7
	sb	$2,0($4)
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
	addiu	$2,$6,-1
	beqz	$6,$L1104
$L1110:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,-1
	sb	$6,0($3)
	addiu	$3,$2,1
	bnez	$3,$L1110
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
	move	$2,$5
	move	$3,$4
	addu	$17,$17,$5
$L1114:
	lw	$7,0($2)
	addiu	$2,4
	cmp	$2,$17
	sw	$7,0($3)
	addiu	$3,4
	btnez	$L1114
	b	$L1115
$L1144:
	beqz	$6,$L1104
	move	$2,$10
	addu	$3,$4,$2
	addu	$2,$5,$2
$L1107:
	addu	$6,$5,$6
$L1118:
	lb	$4,0($2)
	addiu	$2,1
	cmp	$6,$2
	sb	$4,0($3)
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
	lw	$2,$L1154
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
	lw	$2,$L1157
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
	sra	$2,$3,5
	bnez	$2,$L1163
	sra	$2,$3,4
	bnez	$2,$L1164
	sra	$2,$3,3
	bnez	$2,$L1165
	sra	$2,$3,2
	bnez	$2,$L1166
	sra	$2,$3,1
	bnez	$2,$L1167
	bnez	$3,$L1168
	sra	$2,$4,7
	bnez	$2,$L1169
	sra	$2,$4,6
	bnez	$2,$L1170
	sra	$2,$4,5
	bnez	$2,$L1171
	sra	$2,$4,4
	bnez	$2,$L1172
	sra	$2,$4,3
	bnez	$2,$L1173
	sra	$2,$4,2
	bnez	$2,$L1174
	sra	$2,$4,1
	bnez	$2,$L1175
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
	li	$2,2
	and	$2,$4
	bnez	$2,$L1184
	li	$2,4
	and	$2,$4
	bnez	$2,$L1185
	li	$2,8
	and	$2,$4
	bnez	$2,$L1186
	li	$2,16
	and	$2,$4
	bnez	$2,$L1187
	li	$2,32
	and	$2,$4
	bnez	$2,$L1188
	li	$2,64
	and	$2,$4
	bnez	$2,$L1189
	li	$2,128
	and	$2,$4
	bnez	$2,$L1190
	li	$2,255
	addiu	$2,1
	and	$2,$4
	bnez	$2,$L1191
	li	$2,512
	and	$2,$4
	bnez	$2,$L1192
	li	$2,1024
	and	$2,$4
	bnez	$2,$L1193
	li	$2,2048
	and	$2,$4
	bnez	$2,$L1194
	li	$2,4096
	and	$2,$4
	bnez	$2,$L1195
	li	$2,8192
	and	$2,$4
	bnez	$2,$L1196
	li	$2,16384
	and	$2,$4
	bnez	$2,$L1197
	srl	$4,$4,8
	srl	$4,$4,7
	li	$2,16
	bnez	$4,$L1200
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
	beqz	$4,$L1218
$L1215:
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
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
	neg	$3,$3
	and	$3,$4
	srl	$5,$5,1
	addu	$2,$2,$3
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sltu	$5,$4
	li	$3,1
	bteqz	$L1230
	li	$2,32
	li	$3,1
$L1229:
	slt	$5,0
	btnez	$L1230
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1231
	addiu	$2,-1
	bnez	$2,$L1229
	bnez	$6,$L1244
$L1245:
	jr	$31
$L1231:
	beqz	$3,$L1238
$L1230:
	li	$2,0
$L1235:
	sltu	$4,$5
	btnez	$L1234
	subu	$4,$4,$5
	or	$2,$3
$L1234:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1235
	beqz	$6,$L1245
$L1244:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L1238:
	li	$2,0
	beqz	$6,$L1245
	b	$L1244
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
	lw	$2,$L1251
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
	btnez	$L1249
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

$L1249:
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

	.type	__pool___mspabi_cmpf_1251, @object
__pool___mspabi_cmpf_1251:
	.align	2
$L1251:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_1251, @object
__pend___mspabi_cmpf_1251:
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
	lw	$2,$L1257
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
	btnez	$L1255
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

$L1255:
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

	.type	__pool___mspabi_cmpd_1257, @object
__pool___mspabi_cmpd_1257:
	.align	2
$L1257:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_1257, @object
__pend___mspabi_cmpd_1257:
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
	btnez	$L1274
	beqz	$5,$L1266
	li	$7,0
$L1262:
	li	$6,32
	li	$2,0
	b	$L1265
$L1275:
	addiu	$6,-1
	zeb	$6
	beqz	$6,$L1264
$L1265:
	li	$3,1
	and	$3,$5
	neg	$3,$3
	and	$3,$4
	sra	$5,$5,1
	addu	$2,$2,$3
	sll	$4,$4,1
	bnez	$5,$L1275
$L1264:
	beqz	$7,$L1276
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1266:
	li	$2,0
$L1276:
	jr	$31
$L1274:
	neg	$5,$5
	li	$7,1
	b	$L1262
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
	btnez	$L1295
	li	$2,1
	li	$7,0
$L1278:
	slt	$5,0
	bteqz	$L1279
	neg	$5,$5
	move	$7,$2
$L1279:
	sltu	$5,$4
	move	$6,$4
	li	$3,1
	bteqz	$L1281
	li	$2,32
	li	$3,1
	b	$L1280
$L1283:
	addiu	$2,-1
	beqz	$2,$L1284
$L1280:
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	btnez	$L1283
$L1284:
	li	$2,0
	beqz	$3,$L1282
$L1281:
	li	$2,0
$L1286:
	sltu	$6,$5
	btnez	$L1285
	subu	$6,$6,$5
	or	$2,$3
$L1285:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1286
$L1282:
	beqz	$7,$L1296
	neg	$2,$2
$L1296:
	jr	$31
$L1295:
	neg	$4,$4
	li	$2,0
	li	$7,1
	b	$L1278
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
	btnez	$L1316
	li	$7,0
$L1298:
	slt	$5,0
	move	$2,$4
	bteqz	$L1299
	neg	$5,$5
$L1299:
	sltu	$5,$4
	li	$3,1
	bteqz	$L1315
	li	$6,32
	li	$3,1
	b	$L1300
$L1303:
	addiu	$6,-1
	beqz	$6,$L1304
$L1300:
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	btnez	$L1303
$L1304:
	beqz	$3,$L1317
$L1315:
	sltu	$2,$5
	btnez	$L1305
	subu	$2,$2,$5
$L1305:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1315
$L1302:
	beqz	$7,$L1318
	neg	$2,$2
$L1318:
	jr	$31
$L1316:
	neg	$4,$4
	li	$7,1
	b	$L1298
$L1317:
	move	$2,$4
	b	$L1302
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
	bteqz	$L1440
	srl	$3,$5,8
	srl	$3,$3,7
	bnez	$3,$L1322
	sll	$3,$5,1
	zeh	$3
	addiu	$sp,-16
	sltu	$3,$4
	sd	$17,8($sp)
	sd	$16,0($sp)
	bteqz	$L1323
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1324
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$2
	bteqz	$L1325
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1326
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$2
	bteqz	$L1327
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1328
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$2
	bteqz	$L1329
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1330
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1331
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1332
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$2
	bteqz	$L1333
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1334
	sll	$3,$5,7
	zeh	$3
	sltu	$3,$2
	bteqz	$L1335
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1336
	sll	$5,$5,8
	move	$3,$5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1337
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1338
	sll	$3,$5,1
	zeh	$3
	sltu	$3,$2
	bteqz	$L1339
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1340
	sll	$3,$5,2
	zeh	$3
	sltu	$3,$2
	bteqz	$L1341
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1342
	sll	$3,$5,3
	zeh	$3
	sltu	$3,$2
	bteqz	$L1343
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1344
	sll	$3,$5,4
	zeh	$3
	sltu	$3,$2
	bteqz	$L1345
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1346
	sll	$3,$5,5
	zeh	$3
	sltu	$3,$2
	bteqz	$L1347
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1348
	sll	$3,$5,6
	zeh	$3
	sltu	$3,$2
	bteqz	$L1349
	srl	$4,$3,8
	srl	$4,$4,7
	bnez	$4,$L1350
	sll	$4,$5,7
	zeh	$4
	sltu	$4,$2
	bteqz	$L1351
	bnez	$4,$L1441
$L1352:
	bnez	$6,$L1391
	move	$2,$4
$L1391:
	ld	$17,8($sp)
	ld	$16,0($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,16
	.set	macro
	.set	reorder

$L1339:
	sltu	$2,$3
	btnez	$L1385
	subu	$2,$2,$3
	li	$7,512
	zeh	$2
	move	$4,$7
$L1354:
	srl	$16,$7,2
	srl	$5,$3,2
	beqz	$16,$L1352
	sltu	$2,$5
	btnez	$L1355
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1355:
	srl	$16,$7,3
	srl	$5,$3,3
	beqz	$16,$L1352
	sltu	$2,$5
	btnez	$L1356
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1356:
	srl	$16,$7,4
	srl	$5,$3,4
	beqz	$16,$L1352
	sltu	$2,$5
	btnez	$L1357
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1357:
	srl	$16,$7,5
	srl	$5,$3,5
	beqz	$16,$L1352
	sltu	$2,$5
	btnez	$L1358
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1358:
	srl	$16,$7,6
	srl	$5,$3,6
	beqz	$16,$L1352
	sltu	$2,$5
	btnez	$L1359
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1359:
	srl	$16,$7,7
	srl	$5,$3,7
	beqz	$16,$L1352
	sltu	$2,$5
	btnez	$L1360
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1360:
	srl	$16,$7,8
	srl	$5,$3,8
	beqz	$16,$L1352
	sltu	$2,$5
	btnez	$L1361
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
$L1361:
	srl	$17,$16,1
	srl	$3,$5,1
	beqz	$17,$L1352
	sltu	$2,$3
	btnez	$L1362
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1362:
	srl	$17,$16,2
	srl	$3,$5,2
	beqz	$17,$L1352
	sltu	$2,$3
	btnez	$L1363
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1363:
	srl	$17,$16,3
	srl	$3,$5,3
	beqz	$17,$L1352
	sltu	$2,$3
	btnez	$L1364
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1364:
	srl	$17,$16,4
	srl	$3,$5,4
	beqz	$17,$L1352
	sltu	$2,$3
	btnez	$L1365
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1365:
	srl	$17,$16,5
	srl	$3,$5,5
	beqz	$17,$L1352
	sltu	$2,$3
	btnez	$L1366
	subu	$2,$2,$3
	zeh	$2
	or	$4,$17
$L1366:
	srl	$16,$16,6
	srl	$3,$5,6
	beqz	$16,$L1352
	sltu	$2,$3
	btnez	$L1367
	subu	$2,$2,$3
	zeh	$2
	or	$4,$16
$L1367:
	cmpi	$7,16384
	srl	$5,$5,7
	bteqz	$L1352
	sltu	$2,$5
	btnez	$L1375
	subu	$2,$2,$5
	li	$3,1
	zeh	$2
	or	$4,$3
	b	$L1352
$L1441:
	li	$3,32768
	addiu	$2,-32768
	li	$5,16384
	zeh	$2
	move	$16,$5
	move	$7,$3
	move	$4,$3
$L1372:
	sltu	$2,$5
	btnez	$L1354
	subu	$2,$2,$5
	zeh	$2
	or	$4,$16
	b	$L1354
$L1375:
	li	$2,0
	b	$L1352
$L1440:
	xor	$5,$4
	beqz	$5,$L1373
	li	$4,0
$L1435:
	bnez	$6,$L1442
	move	$2,$4
$L1442:
	jr	$31
$L1322:
	subu	$2,$4,$5
	zeh	$2
	li	$4,1
	b	$L1435
$L1323:
	sltu	$4,$3
	btnez	$L1377
	subu	$2,$4,$3
	zeh	$2
	li	$7,2
	li	$4,2
	b	$L1354
$L1324:
	li	$4,32767
	subu	$2,$2,$3
	and	$5,$4
	zeh	$2
	li	$16,1
	li	$7,2
	li	$4,2
	b	$L1372
$L1325:
	sltu	$2,$3
	btnez	$L1378
	subu	$2,$2,$3
	zeh	$2
	li	$7,4
	li	$4,4
	b	$L1354
$L1326:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,2
	li	$7,4
	li	$4,4
	b	$L1372
$L1327:
	sltu	$2,$3
	btnez	$L1379
	subu	$2,$2,$3
	zeh	$2
	li	$7,8
	li	$4,8
	b	$L1354
$L1328:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,4
	li	$7,8
	li	$4,8
	b	$L1372
$L1329:
	sltu	$2,$3
	btnez	$L1380
	subu	$2,$2,$3
	zeh	$2
	li	$7,16
	li	$4,16
	b	$L1354
$L1330:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,8
	li	$7,16
	li	$4,16
	b	$L1372
$L1331:
	sltu	$2,$3
	btnez	$L1381
	subu	$2,$2,$3
	zeh	$2
	li	$7,32
	li	$4,32
	b	$L1354
$L1332:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,16
	li	$7,32
	li	$4,32
	b	$L1372
$L1333:
	sltu	$2,$3
	btnez	$L1382
	subu	$2,$2,$3
	zeh	$2
	li	$7,64
	li	$4,64
	b	$L1354
$L1334:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,32
	li	$7,64
	li	$4,64
	b	$L1372
$L1335:
	sltu	$2,$3
	btnez	$L1383
	subu	$2,$2,$3
	zeh	$2
	li	$7,128
	li	$4,128
	b	$L1354
$L1336:
	subu	$2,$2,$3
	zeh	$2
	srl	$5,$3,1
	li	$16,64
	li	$7,128
	li	$4,128
	b	$L1372
$L1338:
	li	$7,255
	subu	$2,$2,$3
	addiu	$7,1
	zeh	$2
	srl	$5,$3,1
	li	$16,128
	move	$4,$7
	b	$L1372
$L1373:
	li	$4,1
	li	$2,0
	b	$L1435
$L1340:
	subu	$2,$2,$3
	li	$16,255
	li	$7,512
	zeh	$2
	srl	$5,$3,1
	addiu	$16,1
	move	$4,$7
	b	$L1372
$L1377:
	li	$7,2
$L1371:
	srl	$16,$7,1
	srl	$5,$3,1
	li	$4,0
	b	$L1372
$L1342:
	subu	$2,$2,$3
	li	$7,1024
	zeh	$2
	srl	$5,$3,1
	li	$16,512
	move	$4,$7
	b	$L1372
$L1378:
	li	$7,4
	b	$L1371
$L1344:
	subu	$2,$2,$3
	li	$7,2048
	zeh	$2
	srl	$5,$3,1
	li	$16,1024
	move	$4,$7
	b	$L1372
$L1379:
	li	$7,8
	b	$L1371
$L1346:
	subu	$2,$2,$3
	li	$7,4096
	zeh	$2
	srl	$5,$3,1
	li	$16,2048
	move	$4,$7
	b	$L1372
$L1348:
	subu	$2,$2,$3
	li	$7,8192
	zeh	$2
	srl	$5,$3,1
	li	$16,4096
	move	$4,$7
	b	$L1372
$L1380:
	li	$7,16
	b	$L1371
$L1350:
	subu	$2,$2,$3
	li	$7,16384
	zeh	$2
	srl	$5,$3,1
	li	$16,8192
	move	$4,$7
	b	$L1372
$L1381:
	li	$7,32
	b	$L1371
$L1382:
	li	$7,64
	b	$L1371
$L1351:
	srl	$3,$2,8
	srl	$3,$3,7
	bnez	$3,$L1376
	li	$3,32768
	move	$7,$3
	b	$L1371
$L1383:
	li	$7,128
	b	$L1371
$L1337:
	sltu	$2,$3
	btnez	$L1384
	li	$7,255
	subu	$2,$2,$3
	addiu	$7,1
	zeh	$2
	move	$4,$7
	b	$L1354
$L1376:
	li	$3,32768
	move	$7,$3
	move	$4,$3
	li	$2,0
	b	$L1354
$L1384:
	li	$7,255
	addiu	$7,1
	b	$L1371
$L1347:
	sltu	$2,$3
	btnez	$L1389
	subu	$2,$2,$3
	li	$7,8192
	zeh	$2
	move	$4,$7
	b	$L1354
$L1341:
	sltu	$2,$3
	btnez	$L1386
	subu	$2,$2,$3
	li	$7,1024
	zeh	$2
	move	$4,$7
	b	$L1354
$L1389:
	li	$7,8192
	b	$L1371
$L1386:
	li	$7,1024
	b	$L1371
$L1385:
	li	$7,512
	b	$L1371
$L1345:
	sltu	$2,$3
	btnez	$L1388
	subu	$2,$2,$3
	li	$7,4096
	zeh	$2
	move	$4,$7
	b	$L1354
$L1343:
	sltu	$2,$3
	btnez	$L1387
	subu	$2,$2,$3
	li	$7,2048
	zeh	$2
	move	$4,$7
	b	$L1354
$L1349:
	sltu	$2,$3
	btnez	$L1390
	subu	$2,$2,$3
	li	$7,16384
	zeh	$2
	move	$4,$7
	b	$L1354
$L1388:
	li	$7,4096
	b	$L1371
$L1387:
	li	$7,2048
	b	$L1371
$L1390:
	li	$7,16384
	b	$L1371
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
	bteqz	$L1445
	li	$2,32
	li	$3,1
$L1444:
	slt	$5,0
	btnez	$L1445
	sll	$5,$5,1
	sltu	$5,$4
	sll	$3,$3,1
	bteqz	$L1446
	addiu	$2,-1
	bnez	$2,$L1444
	bnez	$6,$L1459
$L1460:
	jr	$31
$L1446:
	beqz	$3,$L1453
$L1445:
	li	$2,0
$L1450:
	sltu	$4,$5
	btnez	$L1449
	subu	$4,$4,$5
	or	$2,$3
$L1449:
	srl	$3,$3,1
	srl	$5,$5,1
	bnez	$3,$L1450
	beqz	$6,$L1460
$L1459:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

$L1453:
	li	$2,0
	beqz	$6,$L1460
	b	$L1459
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
	beqz	$2,$L1462
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

$L1462:
	beqz	$5,$L1465
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

$L1465:
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___ashldi3_1467, @object
__pool___ashldi3_1467:
	.align	2
$L1467:
	.word	__gnu_local_gp
	.type	__pend___ashldi3_1467, @object
__pend___ashldi3_1467:
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
	beqz	$3,$L1469
	move	$2,$5
	dsll	$2,$6
	li	$3,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1469:
	beqz	$6,$L1472
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

$L1472:
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
	beqz	$2,$L1475
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

$L1475:
	move	$2,$4
	beqz	$5,$L1481
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

$L1481:
	jr	$31
	.type	__pool___ashrdi3_1480, @object
__pool___ashrdi3_1480:
	.align	2
$L1480:
	.word	__gnu_local_gp
	.type	__pend___ashrdi3_1480, @object
__pend___ashrdi3_1480:
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
	beqz	$2,$L1483
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

$L1483:
	move	$2,$4
	beqz	$6,$L1486
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

$L1486:
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
	ld	$5,$L1490
	move	$2,$4
	dsrl	$2,24
	and	$2,$5
	or	$3,$2
	ld	$5,$L1491
	move	$2,$4
	dsrl	$2,8
	and	$2,$5
	ld	$5,$L1492
	or	$3,$2
	dsll	$2,$4,8
	and	$2,$5
	ld	$5,$L1493
	or	$3,$2
	dsll	$2,$4,24
	and	$2,$5
	or	$3,$2
	dsll	$2,$4,40
	ld	$4,$L1494
	and	$2,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$3
	.set	macro
	.set	reorder

	.type	__pool___bswapdi2_1490, @object
__pool___bswapdi2_1490:
	.align	3
$L1490:
	.dword	16711680
$L1491:
	.dword	4278190080
$L1492:
	.dword	1095216660480
$L1493:
	.dword	280375465082880
$L1494:
	.dword	71776119061217280
	.type	__pend___bswapdi2_1490, @object
__pend___bswapdi2_1490:
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
	lw	$3,$L1497
	sll	$4,$4,8
	and	$4,$3
	.set	noreorder
	.set	nomacro
	jr	$31
	or	$2,$4
	.set	macro
	.set	reorder

	.type	__pool___bswapsi2_1497, @object
__pool___bswapsi2_1497:
	.align	2
$L1497:
	.word	16711680
	.type	__pend___bswapsi2_1497, @object
__pend___bswapsi2_1497:
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
	lw	$2,$L1502
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
	beqz	$3,$L1499
	subu	$2,$2,$4
	addu	$5,$5,$6
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

$L1499:
	addu	$5,$5,$6
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$31
	addu	$2,$2,$5
	.set	macro
	.set	reorder

	.type	__pool___clzsi2_1502, @object
__pool___clzsi2_1502:
	.align	2
$L1502:
	.word	65536
	.type	__pend___clzsi2_1502, @object
__pend___clzsi2_1502:
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
	lw	$2,$L1507
	sd	$16,40($sp)
	move	$16,$24
	move	$28,$2
	sw	$2,32($sp)
	addiu	$2,$16,-1
	sd	$31,48($sp)
	move	$3,$28
	and	$2,$4
	beqz	$16,$L1504
	move	$4,$5
$L1505:
	lw	$5,%call16(__clzdi2)($3)
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

$L1504:
	li	$4,0
	b	$L1505
	.type	__pool___clzti2_1507, @object
__pool___clzti2_1507:
	.align	2
$L1507:
	.word	__gnu_local_gp
	.type	__pend___clzti2_1507, @object
__pend___clzti2_1507:
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
	btnez	$L1512
	slt	$6,$7
	btnez	$L1511
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1512
	sltu	$5,$4
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
	btnez	$L1516
	slt	$6,$7
	btnez	$L1517
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1518
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1516:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1518:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1517:
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
	btnez	$L1523
	slt	$6,$4
	btnez	$L1522
	sltu	$5,$7
	btnez	$L1523
	sltu	$7,$5
	btnez	$L1524
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1523:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1522:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1524:
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
	lw	$2,$L1530
	addiu	$sp,-56
	move	$28,$2
	sltu	$5,1
	move	$3,$28
	sd	$16,40($sp)
	sw	$2,32($sp)
	sd	$31,48($sp)
	move	$2,$5
	move	$16,$24
	beqz	$5,$L1528
	li	$4,0
$L1528:
	addiu	$5,$16,-1
	and	$5,$2
	lw	$2,%call16(__ctzdi2)($3)
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

	.type	__pool___ctzti2_1530, @object
__pool___ctzti2_1530:
	.align	2
$L1530:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_1530, @object
__pend___ctzti2_1530:
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
	lw	$2,$L1537
	addiu	$sp,-48
	move	$28,$2
	sw	$2,32($sp)
	sd	$31,40($sp)
	move	$2,$28
	bnez	$5,$L1532
	bnez	$4,$L1536
	ld	$7,40($sp)
	li	$2,0
	.set	noreorder
	.set	nomacro
	jr	$7
	addiu	$sp,48
	.set	macro
	.set	reorder

$L1532:
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

$L1536:
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

	.type	__pool___ffsti2_1537, @object
__pool___ffsti2_1537:
	.align	2
$L1537:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_1537, @object
__pend___ffsti2_1537:
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
	beqz	$2,$L1539
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

$L1539:
	move	$2,$4
	beqz	$5,$L1545
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

$L1545:
	jr	$31
	.type	__pool___lshrdi3_1544, @object
__pool___lshrdi3_1544:
	.align	2
$L1544:
	.word	__gnu_local_gp
	.type	__pend___lshrdi3_1544, @object
__pend___lshrdi3_1544:
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
	beqz	$2,$L1547
	dsrl	$4,$6
	li	$2,0
	move	$3,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,24
	.set	macro
	.set	reorder

$L1547:
	move	$2,$4
	beqz	$6,$L1550
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

$L1550:
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
	ld	$3,$L1567
	move	$2,$4
	dsrl	$2,1
	and	$2,$3
	dsubu	$4,$4,$2
	ld	$3,$L1568
	move	$2,$4
	dsrl	$2,2
	and	$4,$3
	and	$2,$3
	daddu	$2,$2,$4
	move	$3,$2
	dsrl	$3,4
	daddu	$3,$3,$2
	ld	$2,$L1569
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

	.type	__pool___popcountdi2_1567, @object
__pool___popcountdi2_1567:
	.align	3
$L1567:
	.dword	6148914691236517205
$L1568:
	.dword	3689348814741910323
$L1569:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1567, @object
__pend___popcountdi2_1567:
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
	lw	$3,$L1572
	srl	$2,$4,1
	and	$2,$3
	subu	$4,$4,$2
	lw	$2,$L1573
	srl	$3,$4,2
	and	$3,$2
	and	$4,$2
	addu	$3,$3,$4
	srl	$2,$3,4
	addu	$2,$2,$3
	lw	$3,$L1574
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

	.type	__pool___popcountsi2_1572, @object
__pool___popcountsi2_1572:
	.align	2
$L1572:
	.word	1431655765
$L1573:
	.word	858993459
$L1574:
	.word	252645135
	.type	__pend___popcountsi2_1572, @object
__pend___popcountsi2_1572:
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
	ld	$6,$L1577
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
	ld	$6,$L1578
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
	ld	$4,$L1579
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

	.type	__pool___popcountti2_1577, @object
__pool___popcountti2_1577:
	.align	3
$L1577:
	.dword	6148914691236517205
$L1578:
	.dword	3689348814741910323
$L1579:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1577, @object
__pend___popcountti2_1577:
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
	lw	$2,$L1588
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
	beqz	$2,$L1586
	ld	$2,$L1589
	move	$16,$3
	sd	$2,40($sp)
$L1583:
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
$L1581:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1582
$L1584:
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
	bnez	$2,$L1583
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	b	$L1584
$L1582:
	lw	$2,80($sp)
	slt	$2,0
	bteqz	$L1580
	lw	$17,%call16(__mips16_divdf3)($17)
	ld	$4,$L1589
	.set	noreorder
	.set	nomacro
	jalr	$17
	ld	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sd	$2,40($sp)
	move	$28,$6
$L1580:
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

$L1586:
	ld	$2,$L1589
	lw	$16,80($sp)
	sd	$2,40($sp)
	b	$L1581
	.type	__pool___powidf2_1588, @object
__pool___powidf2_1588:
	.align	2
$L1588:
	.word	__gnu_local_gp
	.align	3
$L1589:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_1588, @object
__pend___powidf2_1588:
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
	lw	$2,$L1598
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
	beqz	$2,$L1596
	lw	$2,$L1599
	move	$16,$3
	sw	$2,40($sp)
$L1593:
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
$L1591:
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	beqz	$16,$L1592
$L1594:
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
	bnez	$2,$L1593
	srl	$2,$16,31
	addu	$16,$2,$16
	sra	$16,$16,1
	b	$L1594
$L1592:
	lw	$2,80($sp)
	slt	$2,0
	bteqz	$L1590
	lw	$17,%call16(__mips16_divsf3)($17)
	lw	$4,$L1599
	.set	noreorder
	.set	nomacro
	jalr	$17
	lw	$5,40($sp)
	.set	macro
	.set	reorder

	lw	$6,32($sp)
	sw	$2,40($sp)
	move	$28,$6
$L1590:
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

$L1596:
	lw	$2,$L1599
	lw	$16,80($sp)
	sw	$2,40($sp)
	b	$L1591
	.type	__pool___powisf2_1598, @object
__pool___powisf2_1598:
	.align	2
$L1598:
	.word	__gnu_local_gp
$L1599:
	.word	1065353216
	.type	__pend___powisf2_1598, @object
__pend___powisf2_1598:
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
	btnez	$L1604
	sltu	$2,$3
	btnez	$L1603
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1604
	sltu	$5,$4
	btnez	$L1605
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1604:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1603:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1605:
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
	btnez	$L1608
	sltu	$2,$3
	btnez	$L1609
	sll	$4,$4,0
	sll	$5,$5,0
	sltu	$4,$5
	btnez	$L1610
	sltu	$5,$4
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$24
	.set	macro
	.set	reorder

$L1608:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1610:
	li	$2,1
	.set	noreorder
	.set	nomacro
	jr	$31
	neg	$2,$2
	.set	macro
	.set	reorder

$L1609:
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
	btnez	$L1615
	sltu	$6,$4
	btnez	$L1614
	sltu	$5,$7
	btnez	$L1615
	sltu	$7,$5
	btnez	$L1616
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	macro
	.set	reorder

$L1615:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,0
	.set	macro
	.set	reorder

$L1614:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	macro
	.set	reorder

$L1616:
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
