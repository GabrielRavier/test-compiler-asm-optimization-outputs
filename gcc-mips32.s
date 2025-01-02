	.file	1 "mini-libc.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.module	arch=mips1
	.abicalls
	.text
	.align	2
	.globl	memmove
	.set	nomips16
	.set	nomicromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$5,$4
	beq	$3,$0,$L2
	move	$2,$4

	addu	$5,$5,$6
	beq	$6,$0,$L33
	addu	$3,$4,$6

$L4:
	lb	$4,-1($5)
	addiu	$3,$3,-1
	addiu	$5,$5,-1
	bne	$2,$3,$L4
	sb	$4,0($3)

$L33:
	jr	$31
	nop

$L2:
	bne	$4,$5,$L30
	nop

	jr	$31
	nop

$L30:
	beq	$6,$0,$L33
	addiu	$3,$6,-1

	sltu	$3,$3,7
	bne	$3,$0,$L5
	addiu	$4,$5,1

	or	$3,$5,$2
	andi	$3,$3,0x3
	bne	$3,$0,$L5
	nop

	subu	$3,$2,$4
	sltu	$3,$3,3
	bne	$3,$0,$L5
	srl	$8,$6,2

	sll	$8,$8,2
	move	$3,$2
	addu	$7,$5,$8
$L6:
	lw	$4,0($5)
	addiu	$5,$5,4
	sw	$4,0($3)
	bne	$7,$5,$L6
	addiu	$3,$3,4

	addu	$3,$2,$8
	beq	$6,$8,$L33
	subu	$4,$6,$8

	lb	$6,0($7)
	li	$5,1			# 0x1
	beq	$4,$5,$L33
	sb	$6,0($3)

	lb	$6,1($7)
	li	$5,2			# 0x2
	beq	$4,$5,$L33
	sb	$6,1($3)

	lb	$4,2($7)
	jr	$31
	sb	$4,2($3)

$L5:
	addu	$6,$2,$6
	.option	pic0
	b	$L9
	.option	pic2
	move	$3,$2

$L31:
	addiu	$4,$4,1
$L9:
	lb	$5,-1($4)
	addiu	$3,$3,1
	bne	$3,$6,$L31
	sb	$5,-1($3)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memmove
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.set	nomips16
	.set	nomicromips
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$7,$0,$L35
	andi	$6,$6,0x00ff

	jr	$31
	move	$2,$0

$L38:
	addiu	$5,$5,1
	beq	$7,$0,$L37
	addiu	$4,$4,1

$L35:
	lbu	$2,0($5)
	addiu	$7,$7,-1
	bne	$2,$6,$L38
	sb	$2,0($4)

	jr	$31
	addiu	$2,$4,1

$L37:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.set	nomips16
	.set	nomicromips
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$6,$0,$L46
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

$L48:
	beq	$6,$0,$L49
	addiu	$4,$4,1

$L46:
	lbu	$2,0($4)
	nop
	bne	$2,$5,$L48
	addiu	$6,$6,-1

	jr	$31
	move	$2,$4

$L49:
	jr	$31
	move	$2,$0

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.set	nomips16
	.set	nomicromips
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.option	pic0
	b	$L62
	nop

	.option	pic2
$L64:
	lbu	$2,0($4)
	lbu	$3,0($5)
	nop
	bne	$2,$3,$L63
	addiu	$6,$6,-1

	addiu	$4,$4,1
	addiu	$5,$5,1
$L62:
	bne	$6,$0,$L64
	move	$2,$0

	jr	$31
	nop

$L63:
	jr	$31
	subu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.set	nomips16
	.set	nomicromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,24($sp)
	sw	$31,28($sp)
	.cprestore	16
	beq	$6,$0,$L66
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

$L66:
	lw	$31,28($sp)
	move	$2,$16
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.set	nomips16
	.set	nomicromips
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$6,$6,-1
	addu	$6,$4,$6
	andi	$5,$5,0x00ff
	.option	pic0
	b	$L72
	.option	pic2
	addiu	$4,$4,-1

$L74:
	lbu	$3,0($2)
	nop
	beq	$3,$5,$L75
	addiu	$6,$6,-1

$L72:
	bne	$6,$4,$L74
	move	$2,$6

	move	$2,$0
$L75:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.set	nomips16
	.set	nomicromips
	.ent	memset
	.type	memset, @function
memset:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,24($sp)
	sw	$31,28($sp)
	.cprestore	16
	beq	$6,$0,$L79
	move	$16,$4

	lw	$25,%call16(memset)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	andi	$5,$5,0x00ff

$L79:
	lw	$31,28($sp)
	move	$2,$16
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	memset
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.set	nomips16
	.set	nomicromips
	.ent	stpcpy
	.type	stpcpy, @function
stpcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$3,0($5)
	move	$2,$4
	beq	$3,$0,$L88
	sb	$3,0($4)

$L83:
	lb	$3,1($5)
	addiu	$2,$2,1
	addiu	$5,$5,1
	bne	$3,$0,$L83
	sb	$3,0($2)

$L88:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.set	nomips16
	.set	nomicromips
	.ent	strchrnul
	.type	strchrnul, @function
strchrnul:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$3,0($4)
	move	$2,$4
	bne	$3,$0,$L90
	andi	$5,$5,0x00ff

$L97:
	jr	$31
	nop

$L92:
	lb	$3,1($2)
	nop
	beq	$3,$0,$L97
	addiu	$2,$2,1

$L90:
	andi	$3,$3,0x00ff
	bne	$3,$5,$L92
	nop

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.set	nomips16
	.set	nomicromips
	.ent	strchr
	.type	strchr, @function
strchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.option	pic0
	b	$L100
	.option	pic2
	move	$2,$4

$L103:
	beq	$3,$0,$L102
	addiu	$2,$2,1

$L100:
	lb	$3,0($2)
	nop
	bne	$3,$5,$L103
	nop

	jr	$31
	nop

$L102:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strchr
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.set	nomips16
	.set	nomicromips
	.ent	strcmp
	.type	strcmp, @function
strcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$L107:
	lb	$3,0($4)
	lb	$2,0($5)
	nop
	bne	$3,$2,$L112
	nop

	addiu	$4,$4,1
	bne	$3,$0,$L107
	addiu	$5,$5,1

$L106:
	andi	$2,$2,0x00ff
	jr	$31
	subu	$2,$3,$2

$L112:
	.option	pic0
	b	$L106
	.option	pic2
	andi	$3,$3,0x00ff

	.set	macro
	.set	reorder
	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.set	nomips16
	.set	nomicromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$2,0($4)
	nop
	beq	$2,$0,$L116
	nop

	move	$2,$4
$L115:
	lb	$3,1($2)
	nop
	bne	$3,$0,$L115
	addiu	$2,$2,1

	jr	$31
	subu	$2,$2,$4

$L116:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.set	nomips16
	.set	nomicromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L126
	nop

	lbu	$2,0($4)
	nop
	beq	$2,$0,$L128
	addiu	$6,$6,-1

	.option	pic0
	b	$L122
	.option	pic2
	addu	$6,$4,$6

$L130:
	beq	$4,$6,$L121
	nop

	bne	$3,$2,$L121
	addiu	$4,$4,1

	lbu	$2,0($4)
	nop
	beq	$2,$0,$L129
	nop

	move	$5,$7
$L122:
	lbu	$3,0($5)
	nop
	bne	$3,$0,$L130
	addiu	$7,$5,1

$L121:
	jr	$31
	subu	$2,$2,$3

$L126:
	jr	$31
	move	$2,$0

$L129:
	lbu	$3,1($5)
	jr	$31
	subu	$2,$2,$3

$L128:
	lbu	$3,0($5)
	.option	pic0
	b	$L121
	nop

	.option	pic2
	.set	macro
	.set	reorder
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.set	nomips16
	.set	nomicromips
	.ent	swab
	.type	swab, @function
swab:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$6,2
	bne	$2,$0,$L135
	srl	$2,$6,1

	sll	$2,$2,1
	addu	$2,$4,$2
$L133:
	lbu	$6,1($4)
	lbu	$3,0($4)
	addiu	$4,$4,2
	sb	$6,0($5)
	sb	$3,1($5)
	bne	$4,$2,$L133
	addiu	$5,$5,2

$L135:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	swab
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.set	nomips16
	.set	nomicromips
	.ent	isalpha
	.type	isalpha, @function
isalpha:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,26

	.set	macro
	.set	reorder
	.end	isalpha
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.set	nomips16
	.set	nomicromips
	.ent	isascii
	.type	isascii, @function
isascii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sltu	$2,$4,128

	.set	macro
	.set	reorder
	.end	isascii
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.set	nomips16
	.set	nomicromips
	.ent	isblank
	.type	isblank, @function
isblank:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,32			# 0x20
	beq	$4,$2,$L140
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

$L140:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isblank
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.set	nomips16
	.set	nomicromips
	.ent	iscntrl
	.type	iscntrl, @function
iscntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,32
	bne	$2,$0,$L143
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

$L143:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.set	nomips16
	.set	nomicromips
	.ent	isdigit
	.type	isdigit, @function
isdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-48
	jr	$31
	sltu	$2,$2,10

	.set	macro
	.set	reorder
	.end	isdigit
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.set	nomips16
	.set	nomicromips
	.ent	isgraph
	.type	isgraph, @function
isgraph:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-33
	jr	$31
	sltu	$2,$2,94

	.set	macro
	.set	reorder
	.end	isgraph
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.set	nomips16
	.set	nomicromips
	.ent	islower
	.type	islower, @function
islower:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-97
	jr	$31
	sltu	$2,$2,26

	.set	macro
	.set	reorder
	.end	islower
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.set	nomips16
	.set	nomicromips
	.ent	isprint
	.type	isprint, @function
isprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-32
	jr	$31
	sltu	$2,$2,95

	.set	macro
	.set	reorder
	.end	isprint
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.set	nomips16
	.set	nomicromips
	.ent	isspace
	.type	isspace, @function
isspace:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,32			# 0x20
	beq	$4,$2,$L150
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

$L150:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isspace
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.set	nomips16
	.set	nomicromips
	.ent	isupper
	.type	isupper, @function
isupper:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-65
	jr	$31
	sltu	$2,$2,26

	.set	macro
	.set	reorder
	.end	isupper
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.set	nomips16
	.set	nomicromips
	.ent	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,32
	bne	$2,$0,$L155
	nop

	addiu	$2,$4,-127
	sltu	$2,$2,33
	beq	$2,$0,$L157
	nop

$L155:
	jr	$31
	li	$2,1			# 0x1

$L157:
	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L156
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	jr	$31
	sltu	$2,$4,3

$L156:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.set	nomips16
	.set	nomicromips
	.ent	iswdigit
	.type	iswdigit, @function
iswdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-48
	jr	$31
	sltu	$2,$2,10

	.set	macro
	.set	reorder
	.end	iswdigit
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.set	nomips16
	.set	nomicromips
	.ent	iswprint
	.type	iswprint, @function
iswprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,255
	bne	$2,$0,$L166
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,$L164
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,$L164
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$3,$2,8192
	addu	$3,$4,$3
	sltu	$3,$3,8185
	bne	$3,$0,$L164
	li	$3,1048576			# 0x100000

	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L165
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

$L164:
	jr	$31
	li	$2,1			# 0x1

$L166:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	xori	$2,$2,0x1

$L165:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.set	nomips16
	.set	nomicromips
	.ent	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-48
	sltu	$2,$2,10
	bne	$2,$0,$L169
	nop

	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

$L169:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.set	nomips16
	.set	nomicromips
	.ent	toascii
	.type	toascii, @function
toascii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	andi	$2,$4,0x7f

	.set	macro
	.set	reorder
	.end	toascii
	.size	toascii, .-toascii
	.align	2
	.globl	fdim
	.set	nomips16
	.set	nomicromips
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.d	$f14,$f12
	nop
	bc1f	$L176
	nop

	jr	$31
	sub.d	$f0,$f12,$f14

$L176:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fdim
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.set	nomips16
	.set	nomicromips
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.s	$f14,$f12
	nop
	bc1f	$L182
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L182:
	mtc1	$0,$f0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fdimf
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.set	nomips16
	.set	nomicromips
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f13,0($sp)
	swc1	$f15,8($sp)
	lw	$2,0($sp)
	lw	$3,8($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	and	$3,$3,$4
	swc1	$f12,4($sp)
	beq	$2,$3,$L184
	swc1	$f14,12($sp)

	beq	$2,$0,$L189
	nop

	jr	$31
	mov.d	$f0,$f14

$L184:
	c.lt.d	$f12,$f14
	nop
	bc1f	$L192
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

$L189:
	mov.d	$f0,$f12
$L192:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fmax
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.set	nomips16
	.set	nomicromips
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,0($sp)
	swc1	$f14,4($sp)
	lw	$2,0($sp)
	lw	$3,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	and	$3,$3,$4
	beq	$2,$3,$L194
	nop

	beq	$2,$0,$L199
	nop

	jr	$31
	mov.s	$f0,$f14

$L194:
	c.lt.s	$f12,$f14
	nop
	bc1f	$L202
	mov.s	$f0,$f12

	jr	$31
	mov.s	$f0,$f14

$L199:
	mov.s	$f0,$f12
$L202:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.set	nomips16
	.set	nomicromips
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f13,0($sp)
	swc1	$f15,8($sp)
	lw	$2,0($sp)
	lw	$3,8($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	and	$3,$3,$4
	swc1	$f12,4($sp)
	beq	$2,$3,$L204
	swc1	$f14,12($sp)

	beq	$2,$0,$L209
	nop

	jr	$31
	mov.d	$f0,$f14

$L204:
	c.lt.d	$f12,$f14
	nop
	bc1f	$L212
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

$L209:
	mov.d	$f0,$f12
$L212:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.set	nomips16
	.set	nomicromips
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f13,0($sp)
	swc1	$f15,8($sp)
	lw	$2,0($sp)
	lw	$3,8($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	and	$3,$3,$4
	swc1	$f12,4($sp)
	beq	$2,$3,$L214
	swc1	$f14,12($sp)

	beq	$2,$0,$L219
	nop

	jr	$31
	mov.d	$f0,$f12

$L214:
	c.lt.d	$f12,$f14
	nop
	bc1f	$L222
	mov.d	$f0,$f12

	jr	$31
	nop

$L222:
	jr	$31
	mov.d	$f0,$f14

$L219:
	jr	$31
	mov.d	$f0,$f14

	.set	macro
	.set	reorder
	.end	fmin
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.set	nomips16
	.set	nomicromips
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f12,0($sp)
	swc1	$f14,4($sp)
	lw	$2,0($sp)
	lw	$3,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	and	$3,$3,$4
	beq	$2,$3,$L226
	nop

	beq	$2,$0,$L231
	nop

	jr	$31
	mov.s	$f0,$f12

$L226:
	c.lt.s	$f12,$f14
	nop
	bc1f	$L234
	mov.s	$f0,$f12

	jr	$31
	nop

$L234:
	jr	$31
	mov.s	$f0,$f14

$L231:
	jr	$31
	mov.s	$f0,$f14

	.set	macro
	.set	reorder
	.end	fminf
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.set	nomips16
	.set	nomicromips
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	swc1	$f13,0($sp)
	swc1	$f15,8($sp)
	lw	$2,0($sp)
	lw	$3,8($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	and	$3,$3,$4
	swc1	$f12,4($sp)
	beq	$2,$3,$L238
	swc1	$f14,12($sp)

	beq	$2,$0,$L243
	nop

	jr	$31
	mov.d	$f0,$f12

$L238:
	c.lt.d	$f12,$f14
	nop
	bc1f	$L246
	mov.d	$f0,$f12

	jr	$31
	nop

$L246:
	jr	$31
	mov.d	$f0,$f14

$L243:
	jr	$31
	mov.d	$f0,$f14

	.set	macro
	.set	reorder
	.end	fminl
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.set	nomips16
	.set	nomicromips
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(s.0)
	addiu	$2,$2,%lo(s.0)
	beq	$4,$0,$L250
	move	$5,$2

	lui	$6,%hi(digits)
	addiu	$6,$6,%lo(digits)
$L251:
	andi	$3,$4,0x3f
	addu	$3,$6,$3
	lbu	$3,0($3)
	srl	$4,$4,6
	sb	$3,0($5)
	bne	$4,$0,$L251
	addiu	$5,$5,1

$L250:
	jr	$31
	sb	$0,0($5)

	.set	macro
	.set	reorder
	.end	l64a
	.size	l64a, .-l64a
	.align	2
	.globl	srand
	.set	nomips16
	.set	nomicromips
	.ent	srand
	.type	srand, @function
srand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(seed)
	addiu	$4,$4,-1
	sw	$4,%lo(seed+4)($2)
	jr	$31
	sw	$0,%lo(seed)($2)

	.set	macro
	.set	reorder
	.end	srand
	.size	srand, .-srand
	.align	2
	.globl	rand
	.set	nomips16
	.set	nomicromips
	.ent	rand
	.type	rand, @function
rand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(seed)
	lw	$8,%lo(seed+4)($4)
	li	$2,1284833280			# 0x4c950000
	addiu	$2,$2,32557
	multu	$8,$2
	lw	$3,%lo(seed)($4)
	mflo	$7
	addiu	$5,$7,1
	sw	$5,%lo(seed+4)($4)
	mfhi	$6
	nop
	nop
	mult	$3,$2
	sltu	$2,$5,$7
	li	$5,1481703424			# 0x58510000
	ori	$5,$5,0xf42d
	mflo	$3
	nop
	nop
	mult	$8,$5
	mflo	$5
	addu	$3,$3,$5
	addu	$3,$3,$6
	addu	$2,$2,$3
	sw	$2,%lo(seed)($4)
	jr	$31
	srl	$2,$2,1

	.set	macro
	.set	reorder
	.end	rand
	.size	rand, .-rand
	.align	2
	.globl	insque
	.set	nomips16
	.set	nomicromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L262
	nop

	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L263
	nop

	sw	$4,4($2)
$L263:
	jr	$31
	nop

$L262:
	sw	$0,4($4)
	jr	$31
	sw	$0,0($4)

	.set	macro
	.set	reorder
	.end	insque
	.size	insque, .-insque
	.align	2
	.globl	remque
	.set	nomips16
	.set	nomicromips
	.ent	remque
	.type	remque, @function
remque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	nop
	beq	$2,$0,$L265
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L265:
	lw	$3,4($4)
	nop
	beq	$3,$0,$L273
	nop

	sw	$2,0($3)
$L273:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	remque
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.set	nomips16
	.set	nomicromips
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	$sp,64,$31		# vars= 0, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	lui	$28,%hi(__gnu_local_gp)
	sw	$19,36($sp)
	lw	$19,0($6)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$20,40($sp)
	sw	$18,32($sp)
	lw	$22,80($sp)
	sw	$31,60($sp)
	sw	$21,44($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	.cprestore	16
	move	$23,$6
	move	$20,$4
	move	$fp,$5
	beq	$19,$0,$L275
	move	$18,$7

	move	$16,$5
	.option	pic0
	b	$L277
	.option	pic2
	move	$17,$0

$L290:
	beq	$19,$17,$L275
	addu	$16,$16,$18

$L277:
	move	$5,$16
	move	$25,$22
	jalr	$25
	move	$4,$20

	move	$21,$16
	lw	$28,16($sp)
	bne	$2,$0,$L290
	addiu	$17,$17,1

$L274:
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	move	$2,$21
	lw	$21,44($sp)
	jr	$31
	addiu	$sp,$sp,64

$L275:
	mult	$18,$19
	addiu	$19,$19,1
	sw	$19,0($23)
	mflo	$21
	beq	$18,$0,$L274
	addu	$21,$fp,$21

	lw	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$21

	.option	pic0
	b	$L274
	nop

	.option	pic2
	.set	macro
	.set	reorder
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.set	nomips16
	.set	nomicromips
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$20,40($sp)
	lw	$20,0($6)
	sw	$21,44($sp)
	sw	$31,52($sp)
	lw	$21,72($sp)
	sw	$22,48($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	beq	$20,$0,$L292
	sw	$16,24($sp)

	move	$18,$4
	move	$19,$7
	move	$16,$5
	.option	pic0
	b	$L294
	.option	pic2
	move	$17,$0

$L303:
	beq	$20,$17,$L292
	addu	$16,$16,$19

$L294:
	move	$5,$16
	move	$25,$21
	jalr	$25
	move	$4,$18

	move	$22,$16
	bne	$2,$0,$L303
	addiu	$17,$17,1

$L291:
	lw	$31,52($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	move	$2,$22
	lw	$22,48($sp)
	jr	$31
	addiu	$sp,$sp,56

$L292:
	.option	pic0
	b	$L291
	.option	pic2
	move	$22,$0

	.set	macro
	.set	reorder
	.end	lfind
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.set	nomips16
	.set	nomicromips
	.ent	abs
	.type	abs, @function
abs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,$L306
	move	$2,$4

	jr	$31
	nop

$L306:
	jr	$31
	subu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	abs
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.set	nomips16
	.set	nomicromips
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,32			# 0x20
$L316:
	lb	$5,0($4)
	nop
	addiu	$2,$5,-9
	beq	$5,$3,$L310
	sltu	$2,$2,5

	bne	$2,$0,$L310
	nop

	li	$2,43			# 0x2b
	beq	$5,$2,$L311
	li	$2,45			# 0x2d

	bne	$5,$2,$L327
	addiu	$6,$5,-48

	lb	$5,1($4)
	nop
	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,$L321
	addiu	$4,$4,1

	li	$8,1			# 0x1
$L314:
	move	$2,$0
$L318:
	sll	$3,$2,2
	lb	$5,1($4)
	addu	$3,$3,$2
	sll	$3,$3,1
	move	$7,$6
	subu	$2,$3,$6
	addiu	$6,$5,-48
	sltu	$5,$6,10
	bne	$5,$0,$L318
	addiu	$4,$4,1

	bne	$8,$0,$L328
	nop

	jr	$31
	subu	$2,$7,$3

$L310:
	.option	pic0
	b	$L316
	.option	pic2
	addiu	$4,$4,1

$L327:
	sltu	$2,$6,10
	bne	$2,$0,$L314
	move	$8,$0

$L326:
	jr	$31
	move	$2,$0

$L321:
	move	$2,$0
$L328:
	jr	$31
	nop

$L311:
	lb	$5,1($4)
	move	$8,$0
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,$L314
	addiu	$4,$4,1

	.option	pic0
	b	$L326
	nop

	.option	pic2
	.set	macro
	.set	reorder
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	nomips16
	.set	nomicromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,32			# 0x20
$L334:
	lb	$5,0($4)
	nop
	addiu	$2,$5,-9
	beq	$5,$3,$L330
	sltu	$2,$2,5

	bne	$2,$0,$L330
	nop

	li	$2,43			# 0x2b
	beq	$5,$2,$L331
	li	$2,45			# 0x2d

	beq	$5,$2,$L332
	li	$8,1			# 0x1

	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,$L346
	nop

$L342:
	move	$8,$0
$L335:
	move	$2,$0
$L338:
	sll	$3,$2,2
	lb	$5,1($4)
	addu	$3,$3,$2
	sll	$3,$3,1
	move	$7,$6
	subu	$2,$3,$6
	addiu	$6,$5,-48
	sltu	$5,$6,10
	bne	$5,$0,$L338
	addiu	$4,$4,1

	bne	$8,$0,$L347
	nop

	jr	$31
	subu	$2,$7,$3

$L330:
	.option	pic0
	b	$L334
	.option	pic2
	addiu	$4,$4,1

$L332:
	lb	$5,1($4)
	nop
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,$L335
	addiu	$4,$4,1

$L346:
	jr	$31
	move	$2,$0

$L331:
	lb	$5,1($4)
	nop
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,$L342
	addiu	$4,$4,1

	move	$2,$0
$L347:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	atol
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.set	nomips16
	.set	nomicromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$5,32			# 0x20
$L355:
	lb	$2,0($4)
	nop
	addiu	$3,$2,-9
	beq	$2,$5,$L349
	sltu	$3,$3,5

	bne	$3,$0,$L349
	nop

	li	$3,43			# 0x2b
	beq	$2,$3,$L350
	li	$3,45			# 0x2d

	bne	$2,$3,$L366
	addiu	$7,$2,-48

	lb	$2,1($4)
	nop
	addiu	$7,$2,-48
	sltu	$2,$7,10
	beq	$2,$0,$L360
	addiu	$4,$4,1

	li	$12,1			# 0x1
$L353:
	move	$2,$0
	move	$3,$0
$L357:
	srl	$8,$3,30
	sll	$5,$3,2
	sll	$6,$2,2
	addu	$3,$5,$3
	or	$6,$8,$6
	addu	$6,$6,$2
	sltu	$5,$3,$5
	lb	$2,1($4)
	addu	$5,$5,$6
	srl	$9,$3,31
	sll	$6,$3,1
	sll	$5,$5,1
	subu	$3,$6,$7
	sra	$8,$7,31
	or	$5,$9,$5
	move	$11,$7
	addiu	$7,$2,-48
	sltu	$10,$6,$3
	subu	$2,$5,$8
	sltu	$9,$7,10
	addiu	$4,$4,1
	bne	$9,$0,$L357
	subu	$2,$2,$10

	bne	$12,$0,$L368
	subu	$8,$8,$5

	subu	$3,$11,$6
	sltu	$11,$11,$3
	jr	$31
	subu	$2,$8,$11

$L349:
	.option	pic0
	b	$L355
	.option	pic2
	addiu	$4,$4,1

$L366:
	sltu	$2,$7,10
	bne	$2,$0,$L353
	move	$12,$0

	move	$2,$0
$L367:
	jr	$31
	move	$3,$0

$L360:
	move	$2,$0
	move	$3,$0
$L368:
	jr	$31
	nop

$L350:
	lb	$2,1($4)
	move	$12,$0
	addiu	$7,$2,-48
	sltu	$2,$7,10
	bne	$2,$0,$L353
	addiu	$4,$4,1

	.option	pic0
	b	$L367
	.option	pic2
	move	$2,$0

	.set	macro
	.set	reorder
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.set	nomips16
	.set	nomicromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$21,44($sp)
	sw	$31,52($sp)
	lw	$21,72($sp)
	sw	$22,48($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	beq	$6,$0,$L370
	sw	$16,24($sp)

	move	$16,$6
	move	$20,$4
	move	$19,$5
	.option	pic0
	b	$L373
	.option	pic2
	move	$18,$7

$L383:
	beq	$2,$0,$L369
	subu	$16,$16,$22

	beq	$16,$0,$L370
	addu	$19,$17,$18

$L373:
	srl	$22,$16,1
$L384:
	mult	$22,$18
	move	$4,$20
	move	$25,$21
	addiu	$16,$16,-1
	mflo	$17
	addu	$17,$19,$17
	jalr	$25
	move	$5,$17

	bgez	$2,$L383
	nop

	move	$16,$22
	bne	$16,$0,$L384
	srl	$22,$16,1

$L370:
	move	$17,$0
$L369:
	lw	$31,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$16,24($sp)
	move	$2,$17
	lw	$17,28($sp)
	jr	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.set	nomips16
	.set	nomicromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	$sp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lw	$21,80($sp)
	lw	$20,84($sp)
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	move	$16,$6
	move	$19,$4
	move	$18,$5
	beq	$6,$0,$L390
	move	$17,$7

$L386:
	sra	$23,$16,1
$L399:
	mult	$23,$17
	move	$6,$20
	move	$4,$19
	move	$25,$21
	addiu	$16,$16,-1
	sra	$16,$16,1
	mflo	$22
	addu	$22,$18,$22
	jalr	$25
	move	$5,$22

	beq	$2,$0,$L385
	nop

	blez	$2,$L388
	nop

	bne	$16,$0,$L386
	addu	$18,$22,$17

$L390:
	move	$22,$0
$L385:
	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	move	$2,$22
	lw	$22,52($sp)
	jr	$31
	addiu	$sp,$sp,64

$L388:
	beq	$23,$0,$L390
	move	$16,$23

	.option	pic0
	b	$L399
	.option	pic2
	sra	$23,$16,1

	.set	macro
	.set	reorder
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.set	nomips16
	.set	nomicromips
	.ent	div
	.type	div, @function
div:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$6,$0,1f
	div	$0,$5,$6
	break	7
1:
	move	$2,$4
	mfhi	$5
	sw	$5,4($4)
	mflo	$3
	jr	$31
	sw	$3,0($4)

	.set	macro
	.set	reorder
	.end	div
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.set	nomips16
	.set	nomicromips
	.ent	imaxabs
	.type	imaxabs, @function
imaxabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	bltz	$4,$L404
	move	$3,$5

	jr	$31
	nop

$L404:
	sltu	$2,$0,$5
	subu	$4,$0,$4
	subu	$2,$4,$2
	jr	$31
	subu	$3,$0,$5

	.set	macro
	.set	reorder
	.end	imaxabs
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.set	nomips16
	.set	nomicromips
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$25,%call16(__divdi3)($28)
	sw	$18,32($sp)
	sw	$17,28($sp)
	move	$18,$6
	move	$17,$7
	lw	$6,56($sp)
	lw	$7,60($sp)
	sw	$31,36($sp)
	sw	$16,24($sp)
	.cprestore	16
	move	$16,$4
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	move	$4,$18

	lw	$28,16($sp)
	lw	$7,60($sp)
	lw	$6,56($sp)
	lw	$25,%call16(__moddi3)($28)
	move	$4,$18
	move	$5,$17
	sw	$3,4($16)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$2,0($16)

	lw	$31,36($sp)
	sw	$2,8($16)
	lw	$18,32($sp)
	lw	$17,28($sp)
	sw	$3,12($16)
	move	$2,$16
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	imaxdiv
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.set	nomips16
	.set	nomicromips
	.ent	labs
	.type	labs, @function
labs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,$L411
	move	$2,$4

	jr	$31
	nop

$L411:
	jr	$31
	subu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	labs
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.set	nomips16
	.set	nomicromips
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$6,$0,1f
	div	$0,$5,$6
	break	7
1:
	move	$2,$4
	mfhi	$5
	sw	$5,4($4)
	mflo	$3
	jr	$31
	sw	$3,0($4)

	.set	macro
	.set	reorder
	.end	ldiv
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.set	nomips16
	.set	nomicromips
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	bltz	$4,$L418
	move	$3,$5

	jr	$31
	nop

$L418:
	sltu	$2,$0,$5
	subu	$4,$0,$4
	subu	$2,$4,$2
	jr	$31
	subu	$3,$0,$5

	.set	macro
	.set	reorder
	.end	llabs
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.set	nomips16
	.set	nomicromips
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$25,%call16(__divdi3)($28)
	sw	$18,32($sp)
	sw	$17,28($sp)
	move	$18,$6
	move	$17,$7
	lw	$6,56($sp)
	lw	$7,60($sp)
	sw	$31,36($sp)
	sw	$16,24($sp)
	.cprestore	16
	move	$16,$4
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	move	$4,$18

	lw	$28,16($sp)
	lw	$7,60($sp)
	lw	$6,56($sp)
	lw	$25,%call16(__moddi3)($28)
	move	$4,$18
	move	$5,$17
	sw	$3,4($16)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$2,0($16)

	lw	$31,36($sp)
	sw	$2,8($16)
	lw	$18,32($sp)
	lw	$17,28($sp)
	sw	$3,12($16)
	move	$2,$16
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	lldiv
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.set	nomips16
	.set	nomicromips
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	nop
	bne	$2,$0,$L424
	nop

	jr	$31
	nop

$L426:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L427
	addiu	$4,$4,4

$L424:
	bne	$5,$2,$L426
	move	$2,$4

	jr	$31
	nop

$L427:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	wcschr
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.set	nomips16
	.set	nomicromips
	.ent	wcscmp
	.type	wcscmp, @function
wcscmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$L432:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L431
	addiu	$4,$4,4

	bne	$2,$0,$L432
	addiu	$5,$5,4

$L431:
	slt	$4,$2,$3
	bne	$4,$0,$L434
	nop

	jr	$31
	slt	$2,$3,$2

$L434:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.set	nomips16
	.set	nomicromips
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	move	$3,$4
$L437:
	lw	$6,0($5)
	addiu	$3,$3,4
	addiu	$5,$5,4
	bne	$6,$0,$L437
	sw	$6,-4($3)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.set	nomips16
	.set	nomicromips
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	nop
	beq	$2,$0,$L442
	nop

	move	$2,$4
$L441:
	lw	$3,4($2)
	nop
	bne	$3,$0,$L441
	addiu	$2,$2,4

	subu	$2,$2,$4
	jr	$31
	sra	$2,$2,2

$L442:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	wcslen
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.set	nomips16
	.set	nomicromips
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.option	pic0
	b	$L453
	nop

	.option	pic2
$L454:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L457
	addiu	$6,$6,-1

	beq	$2,$0,$L456
	addiu	$4,$4,4

	addiu	$5,$5,4
$L453:
	bne	$6,$0,$L454
	move	$2,$0

	jr	$31
	nop

$L457:
	lw	$3,0($5)
	nop
$L456:
	slt	$4,$2,$3
	bne	$4,$0,$L455
	nop

	jr	$31
	slt	$2,$3,$2

$L455:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.set	nomips16
	.set	nomicromips
	.ent	wmemchr
	.type	wmemchr, @function
wmemchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$6,$0,$L459
	move	$2,$0

	.option	pic0
	b	$L465
	nop

	.option	pic2
$L461:
	beq	$6,$0,$L462
	addiu	$4,$4,4

$L459:
	lw	$2,0($4)
	nop
	bne	$2,$5,$L461
	addiu	$6,$6,-1

	jr	$31
	move	$2,$4

$L462:
	jr	$31
	move	$2,$0

$L465:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.set	nomips16
	.set	nomicromips
	.ent	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.option	pic0
	b	$L476
	nop

	.option	pic2
$L478:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L477
	addiu	$6,$6,-1

	addiu	$4,$4,4
	addiu	$5,$5,4
$L476:
	bne	$6,$0,$L478
	move	$2,$0

	jr	$31
	nop

$L477:
	slt	$4,$2,$3
	bne	$4,$0,$L479
	nop

	jr	$31
	slt	$2,$3,$2

$L479:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.set	nomips16
	.set	nomicromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,24($sp)
	sw	$31,28($sp)
	.cprestore	16
	beq	$6,$0,$L481
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sll	$6,$6,2

$L481:
	lw	$31,28($sp)
	move	$2,$16
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.set	nomips16
	.set	nomicromips
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L503
	move	$2,$4

	sll	$3,$6,2
	subu	$4,$4,$5
	sltu	$4,$4,$3
	beq	$4,$0,$L500
	addiu	$3,$6,-1

	beq	$6,$0,$L503
	sll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
$L491:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	addiu	$3,$3,-4
	bne	$3,$7,$L491
	sw	$6,0($4)

$L503:
	jr	$31
	nop

$L500:
	move	$7,$2
	beq	$6,$0,$L503
	li	$8,-1			# 0xffffffffffffffff

$L489:
	lw	$4,0($5)
	addiu	$3,$3,-1
	addiu	$7,$7,4
	addiu	$5,$5,4
	bne	$3,$8,$L489
	sw	$4,-4($7)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.set	nomips16
	.set	nomicromips
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	beq	$6,$0,$L511
	addiu	$3,$6,-1

	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
$L506:
	addiu	$3,$3,-1
	addiu	$6,$6,4
	bne	$3,$7,$L506
	sw	$5,-4($6)

$L511:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.set	nomips16
	.set	nomicromips
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$5
	beq	$2,$0,$L513
	addu	$2,$4,$6

	beq	$6,$0,$L545
	addu	$5,$5,$6

$L515:
	lb	$3,-1($2)
	addiu	$2,$2,-1
	addiu	$5,$5,-1
	bne	$4,$2,$L515
	sb	$3,0($5)

$L545:
	jr	$31
	nop

$L513:
	bne	$4,$5,$L541
	nop

	jr	$31
	nop

$L541:
	beq	$6,$0,$L545
	addiu	$2,$6,-1

	sltu	$2,$2,7
	bne	$2,$0,$L543
	addiu	$2,$4,1

	or	$2,$5,$4
	andi	$2,$2,0x3
	bne	$2,$0,$L539
	addiu	$2,$4,1

	subu	$3,$5,$2
	sltu	$3,$3,3
	bne	$3,$0,$L516
	srl	$8,$6,2

	sll	$8,$8,2
	move	$2,$5
	addu	$7,$4,$8
$L517:
	lw	$3,0($4)
	addiu	$4,$4,4
	sw	$3,0($2)
	bne	$7,$4,$L517
	addiu	$2,$2,4

	addu	$5,$5,$8
	beq	$6,$8,$L545
	subu	$2,$6,$8

	lb	$4,0($7)
	li	$3,1			# 0x1
	beq	$2,$3,$L545
	sb	$4,0($5)

	lb	$4,1($7)
	li	$3,2			# 0x2
	beq	$2,$3,$L545
	sb	$4,1($5)

	lb	$2,2($7)
	jr	$31
	sb	$2,2($5)

$L539:
$L516:
$L543:
	.option	pic0
	b	$L520
	.option	pic2
	addu	$4,$4,$6

$L542:
	addiu	$2,$2,1
$L520:
	lb	$3,-1($2)
	addiu	$5,$5,1
	bne	$2,$4,$L542
	sb	$3,-1($5)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.set	nomips16
	.set	nomicromips
	.ent	rotl64
	.type	rotl64, @function
rotl64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x20
	beq	$2,$0,$L547
	nor	$2,$0,$6

	sll	$2,$5,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	move	$3,$0
	beq	$7,$0,$L549
	andi	$6,$6,0x3f

$L551:
	srl	$5,$4,$6
	or	$5,$5,$3
	move	$4,$0
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L547:
	srl	$3,$5,1
	srl	$3,$3,$2
	sll	$2,$4,$6
	or	$2,$3,$2
	sll	$3,$5,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	bne	$7,$0,$L551
	andi	$6,$6,0x3f

$L549:
	sll	$7,$4,1
	nor	$8,$0,$6
	sll	$7,$7,$8
	srl	$5,$5,$6
	or	$5,$7,$5
	srl	$4,$4,$6
	or	$5,$5,$3
	or	$2,$4,$2
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	rotl64
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.set	nomips16
	.set	nomicromips
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x20
	beq	$2,$0,$L553
	nor	$3,$0,$6

	srl	$3,$4,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	move	$2,$0
	beq	$7,$0,$L555
	andi	$6,$6,0x3f

$L557:
	sll	$4,$5,$6
	move	$5,$0
	or	$5,$5,$3
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L553:
	sll	$2,$4,1
	sll	$2,$2,$3
	srl	$3,$5,$6
	or	$3,$2,$3
	srl	$2,$4,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	bne	$7,$0,$L557
	andi	$6,$6,0x3f

$L555:
	srl	$7,$5,1
	nor	$8,$0,$6
	srl	$7,$7,$8
	sll	$4,$4,$6
	sll	$5,$5,$6
	or	$4,$7,$4
	or	$5,$5,$3
	or	$2,$4,$2
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	rotr64
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.set	nomips16
	.set	nomicromips
	.ent	rotl32
	.type	rotl32, @function
rotl32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	subu	$2,$0,$5
	srl	$2,$4,$2
	sll	$5,$4,$5
	jr	$31
	or	$2,$2,$5

	.set	macro
	.set	reorder
	.end	rotl32
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.set	nomips16
	.set	nomicromips
	.ent	rotr32
	.type	rotr32, @function
rotr32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	subu	$2,$0,$5
	sll	$2,$4,$2
	srl	$5,$4,$5
	jr	$31
	or	$2,$2,$5

	.set	macro
	.set	reorder
	.end	rotr32
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.set	nomips16
	.set	nomicromips
	.ent	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	subu	$2,$0,$5
	srl	$2,$4,$2
	sll	$5,$4,$5
	jr	$31
	or	$2,$2,$5

	.set	macro
	.set	reorder
	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.set	nomips16
	.set	nomicromips
	.ent	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	subu	$2,$0,$5
	sll	$2,$4,$2
	srl	$5,$4,$5
	jr	$31
	or	$2,$2,$5

	.set	macro
	.set	reorder
	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.set	nomips16
	.set	nomicromips
	.ent	rotl16
	.type	rotl16, @function
rotl16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0xf
	subu	$2,$0,$5
	andi	$2,$2,0xf
	sll	$5,$4,$5
	srl	$4,$4,$2
	or	$2,$5,$4
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.set	nomips16
	.set	nomicromips
	.ent	rotr16
	.type	rotr16, @function
rotr16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0xf
	subu	$2,$0,$5
	andi	$2,$2,0xf
	srl	$5,$4,$5
	sll	$4,$4,$2
	or	$2,$5,$4
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.set	nomips16
	.set	nomicromips
	.ent	rotl8
	.type	rotl8, @function
rotl8:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0x7
	subu	$2,$0,$5
	andi	$2,$2,0x7
	sll	$5,$4,$5
	srl	$4,$4,$2
	or	$2,$5,$4
	jr	$31
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.set	nomips16
	.set	nomicromips
	.ent	rotr8
	.type	rotr8, @function
rotr8:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$5,$5,0x7
	subu	$2,$0,$5
	andi	$2,$2,0x7
	srl	$5,$4,$5
	sll	$4,$4,$2
	or	$2,$5,$4
	jr	$31
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.set	nomips16
	.set	nomicromips
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,8
	sll	$4,$4,8
	or	$2,$2,$4
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.set	nomips16
	.set	nomicromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$5,$4,24
	sll	$2,$4,24
	srl	$3,$4,8
	or	$2,$2,$5
	andi	$3,$3,0xff00
	or	$2,$2,$3
	sll	$4,$4,8
	li	$3,16711680			# 0xff0000
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.set	nomips16
	.set	nomicromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$2,$4,8
	srl	$7,$4,8
	srl	$6,$5,24
	li	$8,16711680			# 0xff0000
	srl	$3,$4,24
	andi	$7,$7,0xff00
	or	$6,$2,$6
	and	$6,$6,$8
	srl	$9,$5,24
	sll	$2,$5,24
	or	$3,$3,$7
	srl	$7,$5,8
	or	$3,$3,$6
	or	$2,$2,$9
	andi	$6,$7,0xff00
	sll	$5,$5,8
	sll	$4,$4,24
	or	$2,$2,$6
	and	$5,$5,$8
	or	$3,$3,$4
	jr	$31
	or	$2,$2,$5

	.set	macro
	.set	reorder
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.set	nomips16
	.set	nomicromips
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	.option	pic0
	b	$L572
	.option	pic2
	li	$5,32			# 0x20

$L575:
	beq	$2,$5,$L574
	nop

$L572:
	srl	$3,$4,$2
	andi	$3,$3,0x1
	beq	$3,$0,$L575
	addiu	$2,$2,1

	jr	$31
	nop

$L574:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	ffs
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.set	nomips16
	.set	nomicromips
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L583
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,$L582
	nop

	li	$2,1			# 0x1
$L578:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,$L578
	addiu	$2,$2,1

$L583:
	jr	$31
	nop

$L582:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.set	nomips16
	.set	nomicromips
	.ent	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	gl_isinff
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.set	nomips16
	.set	nomicromips
	.ent	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	gl_isinfd
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.set	nomips16
	.set	nomicromips
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.set	nomips16
	.set	nomicromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mtc1	$5,$f0
	nop
	cvt.d.w	$f0,$f0
	swc1	$f0,4($4)
	jr	$31
	swc1	$f1,0($4)

	.set	macro
	.set	reorder
	.end	_Qp_itoq
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.set	nomips16
	.set	nomicromips
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	add.s	$f2,$f12,$f12
	c.eq.s	$f2,$f12
	nop
	bc1t	$L607
	mov.s	$f0,$f12

	bltz	$5,$L602
	lui	$2,%hi($LC1)

	lui	$2,%hi($LC0)
	lwc1	$f2,%lo($LC0)($2)
	andi	$2,$5,0x1
$L605:
	beq	$2,$0,$L606
	srl	$2,$5,31

$L592:
	mul.s	$f0,$f0,$f2
	srl	$2,$5,31
$L606:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L607
	srl	$2,$5,31

	andi	$3,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$3,$0,$L592
	addu	$2,$2,$5

	sra	$5,$2,1
$L604:
	srl	$2,$5,31
	andi	$3,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$3,$0,$L592
	addu	$2,$2,$5

	.option	pic0
	b	$L604
	.option	pic2
	sra	$5,$2,1

$L607:
	jr	$31
	nop

$L602:
	lwc1	$f2,%lo($LC1)($2)
	.option	pic0
	b	$L605
	.option	pic2
	andi	$2,$5,0x1

	.set	macro
	.set	reorder
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.set	nomips16
	.set	nomicromips
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	add.d	$f2,$f12,$f12
	c.eq.d	$f2,$f12
	nop
	bc1t	$L627
	mov.d	$f0,$f12

	bltz	$6,$L622
	lui	$2,%hi($LC3)

	lui	$2,%hi($LC2)
	lwc1	$f2,%lo($LC2+4)($2)
	nop
	lwc1	$f3,%lo($LC2)($2)
	andi	$2,$6,0x1
$L625:
	beq	$2,$0,$L626
	srl	$2,$6,31

$L612:
	mul.d	$f0,$f0,$f2
	srl	$2,$6,31
$L626:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L627
	srl	$2,$6,31

	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L612
	addu	$2,$2,$6

	sra	$6,$2,1
$L624:
	srl	$2,$6,31
	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L612
	addu	$2,$2,$6

	.option	pic0
	b	$L624
	.option	pic2
	sra	$6,$2,1

$L627:
	jr	$31
	nop

$L622:
	lwc1	$f2,%lo($LC3+4)($2)
	nop
	lwc1	$f3,%lo($LC3)($2)
	.option	pic0
	b	$L625
	.option	pic2
	andi	$2,$6,0x1

	.set	macro
	.set	reorder
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	.set	nomips16
	.set	nomicromips
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L647
	mov.d	$f0,$f12

	bltz	$6,$L642
	lui	$2,%hi($LC3)

	lui	$2,%hi($LC2)
	lwc1	$f2,%lo($LC2+4)($2)
	nop
	lwc1	$f3,%lo($LC2)($2)
	andi	$2,$6,0x1
$L645:
	beq	$2,$0,$L646
	srl	$2,$6,31

$L632:
	mul.d	$f0,$f0,$f2
	srl	$2,$6,31
$L646:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L647
	srl	$2,$6,31

	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L632
	addu	$2,$2,$6

	sra	$6,$2,1
$L644:
	srl	$2,$6,31
	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L632
	addu	$2,$2,$6

	.option	pic0
	b	$L644
	.option	pic2
	sra	$6,$2,1

$L647:
	jr	$31
	nop

$L642:
	lwc1	$f2,%lo($LC3+4)($2)
	nop
	lwc1	$f3,%lo($LC3)($2)
	.option	pic0
	b	$L645
	.option	pic2
	andi	$2,$6,0x1

	.set	macro
	.set	reorder
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.set	nomips16
	.set	nomicromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L660
	move	$2,$4

	addiu	$3,$6,-1
	sltu	$3,$3,4
	bne	$3,$0,$L650
	or	$3,$4,$5

	andi	$3,$3,0x3
	bne	$3,$0,$L650
	srl	$4,$6,2

	sll	$4,$4,2
	move	$3,$2
	addu	$9,$5,$4
$L651:
	lw	$8,0($3)
	lw	$7,0($5)
	addiu	$5,$5,4
	xor	$7,$7,$8
	sw	$7,0($3)
	bne	$9,$5,$L651
	addiu	$3,$3,4

	addu	$3,$2,$4
	beq	$6,$4,$L660
	subu	$5,$6,$4

	lbu	$4,0($3)
	lbu	$7,0($9)
	li	$6,1			# 0x1
	xor	$4,$4,$7
	beq	$5,$6,$L660
	sb	$4,0($3)

	lbu	$7,1($3)
	lbu	$4,1($9)
	li	$6,2			# 0x2
	xor	$4,$4,$7
	beq	$5,$6,$L660
	sb	$4,1($3)

	lbu	$5,2($3)
	lbu	$4,2($9)
	nop
	xor	$4,$4,$5
	jr	$31
	sb	$4,2($3)

$L650:
	addu	$6,$5,$6
	move	$3,$2
$L653:
	lbu	$4,0($3)
	lbu	$7,0($5)
	addiu	$3,$3,1
	xor	$7,$7,$4
	addiu	$5,$5,1
	bne	$6,$5,$L653
	sb	$7,-1($3)

$L660:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memxor
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.set	nomips16
	.set	nomicromips
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$3,0($4)
	nop
	beq	$3,$0,$L668
	move	$2,$4

	move	$3,$4
$L663:
	lb	$7,1($3)
	nop
	bne	$7,$0,$L663
	addiu	$3,$3,1

	beq	$6,$0,$L665
	nop

$L676:
	lb	$7,0($5)
	addiu	$6,$6,-1
	beq	$7,$0,$L677
	sb	$7,0($3)

	addiu	$5,$5,1
	addiu	$3,$3,1
$L674:
	bne	$6,$0,$L676
	nop

$L665:
	jr	$31
	sb	$0,0($3)

$L677:
	jr	$31
	nop

$L668:
	.option	pic0
	b	$L674
	.option	pic2
	move	$3,$4

	.set	macro
	.set	reorder
	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.set	nomips16
	.set	nomicromips
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L689
	move	$2,$0

	addu	$3,$4,$2
$L687:
	lb	$3,0($3)
	nop
	bne	$3,$0,$L681
	nop

$L689:
	jr	$31
	nop

$L681:
	addiu	$2,$2,1
	bne	$5,$2,$L687
	addu	$3,$4,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.set	nomips16
	.set	nomicromips
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$7,0($4)
	nop
	beq	$7,$0,$L697
	move	$2,$4

$L691:
	.option	pic0
	b	$L694
	.option	pic2
	move	$3,$5

$L693:
	beq	$6,$7,$L698
	nop

$L694:
	lb	$6,0($3)
	nop
	bne	$6,$0,$L693
	addiu	$3,$3,1

	lb	$7,1($2)
	nop
	bne	$7,$0,$L691
	addiu	$2,$2,1

	move	$2,$0
$L698:
	jr	$31
	nop

$L697:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.set	nomips16
	.set	nomicromips
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
$L701:
	lb	$3,0($4)
	nop
	bne	$5,$3,$L700
	nop

	move	$2,$4
$L700:
	bne	$3,$0,$L701
	addiu	$4,$4,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.set	nomips16
	.set	nomicromips
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$8,0($5)
	nop
	beq	$8,$0,$L713
	nop

	move	$2,$5
$L705:
	lb	$3,1($2)
	nop
	bne	$3,$0,$L705
	addiu	$2,$2,1

	beq	$2,$5,$L713
	subu	$10,$2,$5

	andi	$11,$8,0x00ff
	.option	pic0
	b	$L711
	.option	pic2
	addiu	$10,$10,-1

$L724:
	beq	$2,$0,$L726
	addiu	$4,$4,1

$L711:
	lb	$2,0($4)
	nop
	bne	$2,$8,$L724
	move	$6,$11

	addu	$9,$4,$10
	move	$2,$5
	.option	pic0
	b	$L707
	.option	pic2
	move	$3,$4

$L725:
	beq	$3,$9,$L708
	nop

	bne	$7,$6,$L708
	addiu	$3,$3,1

	lbu	$6,0($3)
	nop
	beq	$6,$0,$L708
	addiu	$2,$2,1

$L707:
	lbu	$7,0($2)
	nop
	bne	$7,$0,$L725
	nop

$L708:
	lbu	$2,0($2)
	nop
	beq	$2,$6,$L714
	nop

	.option	pic0
	b	$L711
	.option	pic2
	addiu	$4,$4,1

$L726:
	jr	$31
	nop

$L713:
	jr	$31
	move	$2,$4

$L714:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	strstr
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.set	nomips16
	.set	nomicromips
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f12,$f2
	nop
	bc1t	$L737
	mov.d	$f0,$f12

	c.lt.d	$f2,$f12
	nop
	bc1f	$L738
	nop

	c.lt.d	$f14,$f2
	nop
	bc1t	$L730
	nop

$L738:
	jr	$31
	nop

$L737:
	c.lt.d	$f2,$f14
	nop
	bc1f	$L738
	nop

$L730:
	jr	$31
	neg.d	$f0,$f0

	.set	macro
	.set	reorder
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	nomips16
	.set	nomicromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$7,$0,$L755
	move	$2,$4

	sltu	$3,$5,$7
	bne	$3,$0,$L748
	subu	$5,$5,$7

	addu	$9,$4,$5
	sltu	$3,$9,$4
	bne	$3,$0,$L748
	addiu	$7,$7,-1

	lb	$12,0($6)
	.option	pic0
	b	$L745
	.option	pic2
	addiu	$6,$6,1

$L749:
	move	$2,$10
$L741:
	sltu	$3,$9,$2
	bne	$3,$0,$L748
	nop

$L745:
	lb	$3,0($2)
	nop
	bne	$3,$12,$L749
	addiu	$10,$2,1

	beq	$7,$0,$L755
	move	$4,$6

$L744:
	move	$3,$10
	.option	pic0
	b	$L742
	.option	pic2
	addu	$11,$10,$7

$L743:
	beq	$3,$11,$L755
	addiu	$4,$4,1

$L742:
	lbu	$8,0($3)
	lbu	$5,0($4)
	nop
	beq	$8,$5,$L743
	addiu	$3,$3,1

	sltu	$2,$9,$10
	bne	$2,$0,$L750
	nop

	lb	$3,0($10)
	nop
	bne	$3,$12,$L741
	addiu	$2,$10,1

	move	$3,$10
	move	$4,$6
	move	$10,$2
	.option	pic0
	b	$L744
	.option	pic2
	move	$2,$3

$L750:
	move	$2,$0
$L755:
	jr	$31
	nop

$L748:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.set	nomips16
	.set	nomicromips
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	sw	$31,36($sp)
	.cprestore	16
	move	$16,$6
	beq	$6,$0,$L757
	move	$17,$4

	lw	$25,%call16(memmove)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

$L757:
	lw	$31,36($sp)
	addu	$2,$17,$16
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	mempcpy
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.set	nomips16
	.set	nomicromips
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mtc1	$0,$f2
	nop
	mtc1	$0,$f3
	nop
	c.lt.d	$f12,$f2
	nop
	bc1t	$L785
	mov.d	$f0,$f12

	lui	$2,%hi($LC6)
	lwc1	$f4,%lo($LC6+4)($2)
	nop
	lwc1	$f5,%lo($LC6)($2)
	nop
	c.le.d	$f4,$f12
	nop
	bc1f	$L786
	move	$3,$0

$L765:
	lui	$2,%hi($LC3)
	lwc1	$f6,%lo($LC3+4)($2)
	nop
	lwc1	$f7,%lo($LC3)($2)
	lui	$2,%hi($LC2)
	lwc1	$f4,%lo($LC2+4)($2)
	nop
	lwc1	$f5,%lo($LC2)($2)
	move	$2,$0
$L771:
	c.le.d	$f4,$f0
	addiu	$2,$2,1
	bc1t	$L771
	mul.d	$f0,$f0,$f6

$L772:
	beq	$3,$0,$L788
	sw	$2,0($6)

	neg.d	$f0,$f0
$L788:
	jr	$31
	nop

$L786:
	lui	$2,%hi($LC3)
	lwc1	$f4,%lo($LC3+4)($2)
	nop
	lwc1	$f5,%lo($LC3)($2)
	nop
	c.lt.d	$f12,$f4
	nop
	bc1f	$L768
	nop

	c.eq.d	$f12,$f2
	nop
	bc1f	$L777
	mov.d	$f6,$f12

$L768:
	jr	$31
	sw	$0,0($6)

$L785:
	lui	$2,%hi($LC4)
	lwc1	$f2,%lo($LC4+4)($2)
	nop
	lwc1	$f3,%lo($LC4)($2)
	nop
	c.le.d	$f12,$f2
	nop
	bc1f	$L787
	neg.d	$f6,$f12

	mov.d	$f0,$f6
	.option	pic0
	b	$L765
	.option	pic2
	li	$3,1			# 0x1

$L787:
	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5+4)($2)
	nop
	lwc1	$f3,%lo($LC5)($2)
	nop
	c.lt.d	$f2,$f12
	nop
	bc1f	$L768
	li	$3,1			# 0x1

$L766:
	lui	$2,%hi($LC7)
	lwc1	$f4,%lo($LC7+4)($2)
	mov.d	$f0,$f6
	lwc1	$f5,%lo($LC7)($2)
	move	$2,$0
$L773:
	c.lt.d	$f0,$f4
	addiu	$2,$2,-1
	bc1t	$L773
	add.d	$f0,$f0,$f0

	.option	pic0
	b	$L772
	nop

	.option	pic2
$L777:
	.option	pic0
	b	$L766
	.option	pic2
	move	$3,$0

	.set	macro
	.set	reorder
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.set	nomips16
	.set	nomicromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	or	$2,$5,$4
	beq	$2,$0,$L793
	move	$9,$0

	move	$2,$0
$L792:
	andi	$8,$5,0x1
	subu	$3,$0,$8
	sll	$10,$4,31
	and	$3,$3,$7
	subu	$8,$0,$8
	srl	$5,$5,1
	and	$8,$8,$6
	addu	$3,$9,$3
	or	$5,$10,$5
	srl	$4,$4,1
	sltu	$9,$3,$9
	srl	$10,$7,31
	addu	$2,$2,$8
	sll	$6,$6,1
	or	$8,$4,$5
	addu	$2,$9,$2
	or	$6,$10,$6
	move	$9,$3
	bne	$8,$0,$L792
	sll	$7,$7,1

	jr	$31
	move	$3,$9

$L793:
	move	$2,$0
	jr	$31
	move	$3,$9

	.set	macro
	.set	reorder
	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.set	nomips16
	.set	nomicromips
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beq	$2,$0,$L797
	li	$3,1			# 0x1

	.option	pic0
	b	$L796
	.option	pic2
	li	$2,32			# 0x20

$L800:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L798
	sll	$3,$3,1

	beq	$2,$0,$L799
	nop

$L796:
	bgez	$5,$L800
	addiu	$2,$2,-1

$L797:
	move	$2,$0
$L802:
	sltu	$7,$4,$5
	bne	$7,$0,$L801
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L801:
	srl	$3,$3,1
	bne	$3,$0,$L802
	srl	$5,$5,1

$L799:
	bne	$6,$0,$L811
	nop

	jr	$31
	nop

$L798:
	bne	$3,$0,$L797
	move	$2,$0

	.option	pic0
	b	$L799
	nop

	.option	pic2
$L811:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.set	nomips16
	.set	nomicromips
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$2,$4,7
	beq	$4,$2,$L814
	xor	$3,$4,$2

	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$sp,$sp,-32
	lw	$25,%call16(__clzsi2)($28)
	sw	$31,28($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	sll	$4,$3,8

	lw	$31,28($sp)
	addiu	$2,$2,-1
	jr	$31
	addiu	$sp,$sp,32

$L814:
	jr	$31
	li	$2,7			# 0x7

	.set	macro
	.set	reorder
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.set	nomips16
	.set	nomicromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$6,$4,31
	move	$2,$4
	move	$3,$5
	xor	$4,$4,$6
	beq	$2,$6,$L828
	xor	$5,$5,$6

	lui	$28,%hi(__gnu_local_gp)
$L829:
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$sp,$sp,-32
	lw	$25,%call16(__clzdi2)($28)
	sw	$31,28($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$31,28($sp)
	addiu	$2,$2,-1
	jr	$31
	addiu	$sp,$sp,32

$L828:
	bne	$3,$2,$L829
	lui	$28,%hi(__gnu_local_gp)

	jr	$31
	li	$2,63			# 0x3f

	.set	macro
	.set	reorder
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L836
	move	$2,$0

$L832:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	bne	$4,$0,$L832
	sll	$5,$5,1

$L836:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.set	nomips16
	.set	nomicromips
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,-8			# 0xfffffffffffffff8
	sltu	$2,$4,$5
	srl	$7,$6,3
	bne	$2,$0,$L841
	and	$10,$6,$10

	addu	$2,$5,$6
	sltu	$2,$2,$4
	beq	$2,$0,$L868
	addiu	$2,$6,-1

$L841:
	beq	$7,$0,$L869
	sll	$7,$7,3

	move	$2,$5
	move	$3,$4
	addu	$7,$7,$5
$L844:
	lw	$9,4($2)
	lw	$8,0($2)
	addiu	$2,$2,8
	sw	$9,4($3)
	sw	$8,0($3)
	bne	$2,$7,$L844
	addiu	$3,$3,8

	sltu	$2,$10,$6
	beq	$2,$0,$L872
	subu	$11,$6,$10

	addiu	$2,$11,-1
	sltu	$2,$2,7
	bne	$2,$0,$L867
	addiu	$7,$10,1

	addu	$3,$4,$10
	addu	$7,$5,$7
	subu	$7,$3,$7
	sltu	$7,$7,3
	bne	$7,$0,$L846
	addu	$2,$5,$10

	or	$7,$2,$3
	andi	$7,$7,0x3
	bne	$7,$0,$L846
	srl	$9,$11,2

	sll	$9,$9,2
	addu	$8,$2,$9
$L847:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L847
	addiu	$3,$3,4

	beq	$11,$9,$L872
	addu	$10,$10,$9

	addu	$2,$5,$10
	lb	$8,0($2)
	addiu	$2,$10,1
	addu	$7,$4,$10
	sltu	$3,$2,$6
	beq	$3,$0,$L872
	sb	$8,0($7)

	addu	$3,$5,$2
	lb	$3,0($3)
	addiu	$10,$10,2
	addu	$2,$4,$2
	sltu	$6,$10,$6
	beq	$6,$0,$L872
	sb	$3,0($2)

	addu	$5,$5,$10
	lb	$2,0($5)
	addu	$4,$4,$10
	jr	$31
	sb	$2,0($4)

$L868:
	beq	$6,$0,$L872
	li	$7,-1			# 0xffffffffffffffff

$L842:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L842
	sb	$6,0($3)

$L872:
	jr	$31
	nop

$L869:
	beq	$6,$0,$L871
	nop

$L867:
	addu	$3,$4,$10
	addu	$2,$5,$10
$L846:
	addu	$6,$5,$6
$L849:
	lb	$4,0($2)
	addiu	$2,$2,1
	sb	$4,0($3)
	bne	$2,$6,$L849
	addiu	$3,$3,1

	jr	$31
	nop

$L871:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.set	nomips16
	.set	nomicromips
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$5
	bne	$2,$0,$L877
	srl	$9,$6,1

	addu	$2,$5,$6
	sltu	$2,$2,$4
	beq	$2,$0,$L899
	addiu	$2,$6,-1

$L877:
	beq	$9,$0,$L876
	addiu	$2,$9,-1

	sltu	$2,$2,9
	bne	$2,$0,$L880
	or	$2,$5,$4

	andi	$2,$2,0x3
	bne	$2,$0,$L880
	addiu	$2,$5,2

	beq	$4,$2,$L880
	srl	$10,$6,2

	sll	$11,$10,2
	move	$2,$5
	move	$3,$4
	addu	$8,$5,$11
$L881:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L881
	addiu	$3,$3,4

	sll	$10,$10,1
	beq	$9,$10,$L876
	addu	$2,$5,$11

	lh	$2,0($2)
	addu	$11,$4,$11
	sh	$2,0($11)
$L876:
	andi	$2,$6,0x1
	beq	$2,$0,$L904
	addu	$5,$5,$6

$L902:
	lb	$2,-1($5)
	addu	$4,$4,$6
	jr	$31
	sb	$2,-1($4)

$L899:
	beq	$6,$0,$L904
	li	$7,-1			# 0xffffffffffffffff

$L878:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L878
	sb	$6,0($3)

$L904:
	jr	$31
	nop

$L880:
	sll	$9,$9,1
	move	$2,$5
	move	$3,$4
	addu	$9,$9,$5
$L883:
	lh	$7,0($2)
	addiu	$2,$2,2
	sh	$7,0($3)
	bne	$9,$2,$L883
	addiu	$3,$3,2

	andi	$2,$6,0x1
	bne	$2,$0,$L902
	addu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.set	nomips16
	.set	nomicromips
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$9,-4			# 0xfffffffffffffffc
	sltu	$2,$4,$5
	srl	$8,$6,2
	bne	$2,$0,$L909
	and	$9,$6,$9

	addu	$2,$5,$6
	sltu	$2,$2,$4
	beq	$2,$0,$L936
	addiu	$2,$6,-1

$L909:
	beq	$8,$0,$L937
	sll	$8,$8,2

	move	$2,$5
	move	$3,$4
	addu	$8,$8,$5
$L912:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L912
	addiu	$3,$3,4

	sltu	$2,$9,$6
	beq	$2,$0,$L940
	subu	$11,$6,$9

	addiu	$2,$11,-1
	sltu	$2,$2,7
	bne	$2,$0,$L935
	addiu	$7,$9,1

	addu	$3,$4,$9
	addu	$7,$5,$7
	subu	$7,$3,$7
	sltu	$7,$7,3
	bne	$7,$0,$L914
	addu	$2,$5,$9

	or	$7,$2,$3
	andi	$7,$7,0x3
	bne	$7,$0,$L914
	srl	$10,$11,2

	sll	$10,$10,2
	addu	$8,$2,$10
$L915:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L915
	addiu	$3,$3,4

	beq	$11,$10,$L940
	addu	$9,$9,$10

	addu	$2,$5,$9
	lb	$8,0($2)
	addiu	$2,$9,1
	addu	$7,$4,$9
	sltu	$3,$2,$6
	beq	$3,$0,$L940
	sb	$8,0($7)

	addu	$3,$5,$2
	lb	$3,0($3)
	addiu	$9,$9,2
	addu	$2,$4,$2
	sltu	$6,$9,$6
	beq	$6,$0,$L940
	sb	$3,0($2)

	addu	$5,$5,$9
	lb	$2,0($5)
	addu	$4,$4,$9
	jr	$31
	sb	$2,0($4)

$L936:
	beq	$6,$0,$L940
	li	$7,-1			# 0xffffffffffffffff

$L910:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L910
	sb	$6,0($3)

$L940:
	jr	$31
	nop

$L937:
	beq	$6,$0,$L939
	nop

$L935:
	addu	$3,$4,$9
	addu	$2,$5,$9
$L914:
	addu	$6,$5,$6
$L917:
	lb	$4,0($2)
	addiu	$2,$2,1
	sb	$4,0($3)
	bne	$2,$6,$L917
	addiu	$3,$3,1

	jr	$31
	nop

$L939:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.set	nomips16
	.set	nomicromips
	.ent	__modi
	.type	__modi, @function
__modi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$5,$0,1f
	div	$0,$4,$5
	break	7
1:
	mfhi	$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__modi
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.set	nomips16
	.set	nomicromips
	.ent	__uitod
	.type	__uitod, @function
__uitod:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mtc1	$4,$f0
	bltz	$4,$L945
	cvt.d.w	$f0,$f0

	jr	$31
	nop

$L945:
	lui	$2,%hi($LC8)
	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	jr	$31
	add.d	$f0,$f0,$f2

	.set	macro
	.set	reorder
	.end	__uitod
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.set	nomips16
	.set	nomicromips
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mtc1	$4,$f0
	bgez	$4,$L949
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC8)
	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	add.d	$f0,$f0,$f2
$L949:
	jr	$31
	cvt.s.d	$f0,$f0

	.set	macro
	.set	reorder
	.end	__uitof
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.set	nomips16
	.set	nomicromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$sp,$sp,-32
	lw	$25,%call16(__floatundidf)($28)
	sw	$31,28($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	nop

	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	__ulltod
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.set	nomips16
	.set	nomicromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$sp,$sp,-32
	lw	$25,%call16(__floatundisf)($28)
	sw	$31,28($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__floatundisf
1:	jalr	$25
	nop

	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	__ulltof
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.set	nomips16
	.set	nomicromips
	.ent	__umodi
	.type	__umodi, @function
__umodi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$5,$0,1f
	divu	$0,$4,$5
	break	7
1:
	mfhi	$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.set	nomips16
	.set	nomicromips
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$2,$4,15
	bne	$2,$0,$L959
	nop

	sra	$2,$4,14
	bne	$2,$0,$L976
	nop

	sra	$2,$4,13
	bne	$2,$0,$L960
	nop

	sra	$2,$4,12
	bne	$2,$0,$L961
	nop

	sra	$2,$4,11
	bne	$2,$0,$L962
	nop

	sra	$2,$4,10
	bne	$2,$0,$L963
	nop

	sra	$2,$4,9
	bne	$2,$0,$L964
	nop

	sra	$2,$4,8
	bne	$2,$0,$L965
	nop

	sra	$2,$4,7
	bne	$2,$0,$L966
	nop

	sra	$2,$4,6
	bne	$2,$0,$L967
	nop

	sra	$2,$4,5
	bne	$2,$0,$L968
	nop

	sra	$2,$4,4
	bne	$2,$0,$L969
	nop

	sra	$2,$4,3
	bne	$2,$0,$L970
	nop

	sra	$2,$4,2
	bne	$2,$0,$L971
	nop

	sra	$2,$4,1
	bne	$2,$0,$L972
	nop

	bne	$4,$0,$L975
	li	$2,16			# 0x10

$L976:
	jr	$31
	nop

$L959:
	jr	$31
	move	$2,$0

$L970:
	jr	$31
	li	$2,12			# 0xc

$L975:
	jr	$31
	li	$2,15			# 0xf

$L960:
	jr	$31
	li	$2,2			# 0x2

$L961:
	jr	$31
	li	$2,3			# 0x3

$L962:
	jr	$31
	li	$2,4			# 0x4

$L963:
	jr	$31
	li	$2,5			# 0x5

$L964:
	jr	$31
	li	$2,6			# 0x6

$L965:
	jr	$31
	li	$2,7			# 0x7

$L966:
	jr	$31
	li	$2,8			# 0x8

$L967:
	jr	$31
	li	$2,9			# 0x9

$L968:
	jr	$31
	li	$2,10			# 0xa

$L969:
	jr	$31
	li	$2,11			# 0xb

$L971:
	jr	$31
	li	$2,13			# 0xd

$L972:
	jr	$31
	li	$2,14			# 0xe

	.set	macro
	.set	reorder
	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$4,0x1
	bne	$2,$0,$L980
	nop

	andi	$2,$4,0x2
	bne	$2,$0,$L981
	nop

	andi	$2,$4,0x4
	bne	$2,$0,$L982
	nop

	andi	$2,$4,0x8
	bne	$2,$0,$L983
	nop

	andi	$2,$4,0x10
	bne	$2,$0,$L984
	nop

	andi	$2,$4,0x20
	bne	$2,$0,$L985
	nop

	andi	$2,$4,0x40
	bne	$2,$0,$L986
	nop

	andi	$2,$4,0x80
	bne	$2,$0,$L987
	nop

	andi	$2,$4,0x100
	bne	$2,$0,$L988
	nop

	andi	$2,$4,0x200
	bne	$2,$0,$L989
	nop

	andi	$2,$4,0x400
	bne	$2,$0,$L990
	nop

	andi	$2,$4,0x800
	bne	$2,$0,$L991
	nop

	andi	$2,$4,0x1000
	bne	$2,$0,$L992
	nop

	andi	$2,$4,0x2000
	bne	$2,$0,$L993
	nop

	andi	$2,$4,0x4000
	bne	$2,$0,$L994
	sra	$4,$4,15

	bne	$4,$0,$L997
	li	$2,16			# 0x10

	jr	$31
	nop

$L980:
	jr	$31
	move	$2,$0

$L981:
	jr	$31
	li	$2,1			# 0x1

$L992:
	jr	$31
	li	$2,12			# 0xc

$L997:
	jr	$31
	li	$2,15			# 0xf

$L982:
	jr	$31
	li	$2,2			# 0x2

$L983:
	jr	$31
	li	$2,3			# 0x3

$L984:
	jr	$31
	li	$2,4			# 0x4

$L985:
	jr	$31
	li	$2,5			# 0x5

$L986:
	jr	$31
	li	$2,6			# 0x6

$L987:
	jr	$31
	li	$2,7			# 0x7

$L988:
	jr	$31
	li	$2,8			# 0x8

$L989:
	jr	$31
	li	$2,9			# 0x9

$L990:
	jr	$31
	li	$2,10			# 0xa

$L991:
	jr	$31
	li	$2,11			# 0xb

$L993:
	jr	$31
	li	$2,13			# 0xd

$L994:
	jr	$31
	li	$2,14			# 0xe

	.set	macro
	.set	reorder
	.end	__ctzhi2
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.set	nomips16
	.set	nomicromips
	.ent	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi($LC9)
	lwc1	$f0,%lo($LC9)($2)
	nop
	c.le.s	$f0,$f12
	nop
	bc1t	$L1005
	nop

	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	jr	$31
	nop

$L1005:
	sub.s	$f12,$f12,$f0
	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	li	$3,32768			# 0x8000
	jr	$31
	addu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.set	nomips16
	.set	nomicromips
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$2,$4,1
	andi	$5,$4,0x1
	sra	$3,$4,2
	andi	$2,$2,0x1
	addu	$2,$2,$5
	andi	$3,$3,0x1
	sra	$5,$4,3
	addu	$2,$2,$3
	andi	$5,$5,0x1
	sra	$3,$4,4
	addu	$2,$2,$5
	andi	$3,$3,0x1
	sra	$5,$4,5
	addu	$2,$2,$3
	andi	$5,$5,0x1
	sra	$3,$4,6
	addu	$2,$2,$5
	andi	$3,$3,0x1
	sra	$5,$4,7
	addu	$2,$2,$3
	andi	$5,$5,0x1
	sra	$3,$4,8
	addu	$2,$2,$5
	andi	$3,$3,0x1
	sra	$5,$4,9
	addu	$2,$2,$3
	andi	$5,$5,0x1
	sra	$3,$4,10
	addu	$2,$2,$5
	andi	$3,$3,0x1
	sra	$5,$4,11
	addu	$2,$2,$3
	andi	$5,$5,0x1
	sra	$3,$4,12
	addu	$2,$2,$5
	andi	$3,$3,0x1
	sra	$5,$4,13
	addu	$2,$2,$3
	andi	$5,$5,0x1
	sra	$3,$4,14
	addu	$2,$2,$5
	andi	$3,$3,0x1
	addu	$2,$2,$3
	sra	$4,$4,15
	addu	$2,$2,$4
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$3,$4,1
	andi	$5,$4,0x1
	sra	$2,$4,2
	andi	$3,$3,0x1
	addu	$3,$3,$5
	andi	$2,$2,0x1
	sra	$5,$4,3
	addu	$3,$3,$2
	andi	$5,$5,0x1
	sra	$2,$4,4
	addu	$3,$3,$5
	andi	$2,$2,0x1
	sra	$5,$4,5
	addu	$3,$3,$2
	andi	$5,$5,0x1
	sra	$2,$4,6
	addu	$3,$3,$5
	andi	$2,$2,0x1
	sra	$5,$4,7
	addu	$3,$3,$2
	andi	$5,$5,0x1
	sra	$2,$4,8
	addu	$3,$3,$5
	andi	$2,$2,0x1
	sra	$5,$4,9
	addu	$3,$3,$2
	andi	$5,$5,0x1
	sra	$2,$4,10
	addu	$3,$3,$5
	andi	$2,$2,0x1
	sra	$5,$4,11
	addu	$3,$3,$2
	andi	$5,$5,0x1
	sra	$2,$4,12
	addu	$3,$3,$5
	andi	$2,$2,0x1
	sra	$5,$4,13
	addu	$3,$3,$2
	andi	$5,$5,0x1
	sra	$2,$4,14
	addu	$3,$3,$5
	andi	$2,$2,0x1
	addu	$3,$3,$2
	sra	$2,$4,15
	jr	$31
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L1014
	move	$2,$0

$L1010:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	bne	$4,$0,$L1010
	sll	$5,$5,1

$L1014:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.set	nomips16
	.set	nomicromips
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L1022
	move	$2,$0

	beq	$5,$0,$L1021
	nop

$L1017:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	srl	$5,$5,1
	addu	$2,$2,$3
	bne	$5,$0,$L1017
	sll	$4,$4,1

$L1022:
	jr	$31
	nop

$L1021:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beq	$2,$0,$L1025
	li	$3,1			# 0x1

	.option	pic0
	b	$L1024
	.option	pic2
	li	$2,32			# 0x20

$L1028:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1026
	sll	$3,$3,1

	beq	$2,$0,$L1027
	nop

$L1024:
	bgez	$5,$L1028
	addiu	$2,$2,-1

$L1025:
	move	$2,$0
$L1030:
	sltu	$7,$4,$5
	bne	$7,$0,$L1029
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L1029:
	srl	$3,$3,1
	bne	$3,$0,$L1030
	srl	$5,$5,1

$L1027:
	bne	$6,$0,$L1039
	nop

	jr	$31
	nop

$L1026:
	bne	$3,$0,$L1025
	move	$2,$0

	.option	pic0
	b	$L1027
	nop

	.option	pic2
$L1039:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.s	$f12,$f14
	nop
	bc1t	$L1043
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L1044
	li	$2,1			# 0x1

	jr	$31
	nop

$L1044:
	jr	$31
	move	$2,$0

$L1043:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	__mspabi_cmpf
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.d	$f12,$f14
	nop
	bc1t	$L1050
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L1051
	li	$2,1			# 0x1

	jr	$31
	nop

$L1051:
	jr	$31
	move	$2,$0

$L1050:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mult	$4,$5
	mflo	$3
	mfhi	$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mspabi_mpysll
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.set	nomips16
	.set	nomicromips
	.ent	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	multu	$4,$5
	mflo	$3
	mfhi	$2
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$5,$L1070
	nop

	beq	$5,$0,$L1062
	move	$7,$0

$L1058:
	li	$6,32			# 0x20
	.option	pic0
	b	$L1061
	.option	pic2
	move	$2,$0

$L1071:
	beq	$6,$0,$L1060
	nop

$L1061:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addiu	$6,$6,-1
	sra	$5,$5,1
	andi	$6,$6,0x00ff
	addu	$2,$2,$3
	bne	$5,$0,$L1071
	sll	$4,$4,1

$L1060:
	beq	$7,$0,$L1072
	nop

	jr	$31
	subu	$2,$0,$2

$L1062:
	move	$2,$0
$L1072:
	jr	$31
	nop

$L1070:
	subu	$5,$0,$5
	.option	pic0
	b	$L1058
	.option	pic2
	li	$7,1			# 0x1

	.set	macro
	.set	reorder
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.set	nomips16
	.set	nomicromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,$L1091
	move	$2,$0

	li	$2,1			# 0x1
	move	$8,$0
$L1074:
	bgez	$5,$L1075
	nop

	subu	$5,$0,$5
	move	$8,$2
$L1075:
	sltu	$2,$5,$4
	move	$7,$4
	beq	$2,$0,$L1077
	li	$3,1			# 0x1

	.option	pic0
	b	$L1076
	.option	pic2
	li	$2,32			# 0x20

$L1079:
	beq	$2,$0,$L1080
	nop

$L1076:
	sll	$5,$5,1
	sltu	$6,$5,$4
	addiu	$2,$2,-1
	bne	$6,$0,$L1079
	sll	$3,$3,1

$L1080:
	beq	$3,$0,$L1078
	move	$2,$0

$L1077:
	move	$2,$0
$L1082:
	sltu	$4,$7,$5
	bne	$4,$0,$L1081
	nop

	subu	$7,$7,$5
	or	$2,$2,$3
$L1081:
	srl	$3,$3,1
	bne	$3,$0,$L1082
	srl	$5,$5,1

$L1078:
	beq	$8,$0,$L1092
	nop

	subu	$2,$0,$2
$L1092:
	jr	$31
	nop

$L1091:
	subu	$4,$0,$4
	.option	pic0
	b	$L1074
	.option	pic2
	li	$8,1			# 0x1

	.set	macro
	.set	reorder
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.set	nomips16
	.set	nomicromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,$L1111
	nop

	move	$8,$0
$L1094:
	bgez	$5,$L1095
	move	$2,$4

	subu	$5,$0,$5
$L1095:
	sltu	$3,$5,$4
	beq	$3,$0,$L1112
	nop

	li	$6,32			# 0x20
	.option	pic0
	b	$L1096
	.option	pic2
	li	$3,1			# 0x1

$L1099:
	beq	$6,$0,$L1100
	nop

$L1096:
	sll	$5,$5,1
	sltu	$7,$5,$4
	addiu	$6,$6,-1
	bne	$7,$0,$L1099
	sll	$3,$3,1

$L1100:
	beq	$3,$0,$L1113
	nop

$L1102:
	sltu	$4,$2,$5
	bne	$4,$0,$L1101
	srl	$3,$3,1

	subu	$2,$2,$5
$L1101:
	bne	$3,$0,$L1102
	srl	$5,$5,1

$L1098:
	beq	$8,$0,$L1114
	nop

	subu	$2,$0,$2
$L1114:
	jr	$31
	nop

$L1111:
	subu	$4,$0,$4
	.option	pic0
	b	$L1094
	.option	pic2
	li	$8,1			# 0x1

$L1113:
	.option	pic0
	b	$L1098
	.option	pic2
	move	$2,$4

$L1112:
	.option	pic0
	b	$L1102
	.option	pic2
	li	$3,1			# 0x1

	.set	macro
	.set	reorder
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$5,$4
	beq	$3,$0,$L1229
	move	$2,$4

	sll	$3,$5,16
	sra	$3,$3,16
	bltz	$3,$L1118
	sll	$3,$5,1

	andi	$3,$3,0xffff
	sltu	$4,$3,$4
	beq	$4,$0,$L1119
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1120
	li	$9,1			# 0x1

	sll	$3,$5,2
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1121
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1122
	li	$9,2			# 0x2

	sll	$3,$5,3
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1123
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1124
	li	$9,4			# 0x4

	sll	$3,$5,4
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1125
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1126
	li	$9,8			# 0x8

	sll	$3,$5,5
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1127
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1128
	li	$9,16			# 0x10

	sll	$3,$5,6
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1129
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1130
	li	$9,32			# 0x20

	sll	$3,$5,7
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1131
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1132
	li	$9,64			# 0x40

	sll	$3,$5,8
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1133
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1134
	li	$9,128			# 0x80

	sll	$3,$5,9
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1135
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1136
	li	$9,256			# 0x100

	sll	$3,$5,10
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1137
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1138
	li	$9,512			# 0x200

	sll	$3,$5,11
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1139
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1140
	li	$9,1024			# 0x400

	sll	$3,$5,12
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1141
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1142
	li	$9,2048			# 0x800

	sll	$3,$5,13
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1143
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1144
	li	$9,4096			# 0x1000

	sll	$3,$5,14
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1145
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1146
	li	$9,8192			# 0x2000

	sll	$5,$5,15
	andi	$7,$5,0xffff
	sltu	$3,$7,$2
	beq	$3,$0,$L1147
	nop

	bne	$7,$0,$L1230
	li	$5,16384			# 0x4000

$L1148:
	bne	$6,$0,$L1231
	nop

	jr	$31
	move	$2,$7

$L1231:
	jr	$31
	nop

$L1135:
	sltu	$4,$2,$3
	bne	$4,$0,$L1167
	li	$8,512			# 0x200

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$7,512			# 0x200
$L1150:
	srl	$5,$8,2
	beq	$5,$0,$L1148
	srl	$4,$3,2

	sltu	$9,$2,$4
	bne	$9,$0,$L1151
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1151:
	srl	$5,$8,3
	beq	$5,$0,$L1148
	srl	$4,$3,3

	sltu	$9,$2,$4
	bne	$9,$0,$L1152
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1152:
	srl	$5,$8,4
	beq	$5,$0,$L1148
	srl	$4,$3,4

	sltu	$9,$2,$4
	bne	$9,$0,$L1153
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1153:
	srl	$5,$8,5
	beq	$5,$0,$L1148
	srl	$4,$3,5

	sltu	$9,$2,$4
	bne	$9,$0,$L1154
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1154:
	srl	$5,$8,6
	beq	$5,$0,$L1148
	srl	$4,$3,6

	sltu	$9,$2,$4
	bne	$9,$0,$L1155
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1155:
	srl	$5,$8,7
	beq	$5,$0,$L1148
	srl	$4,$3,7

	sltu	$9,$2,$4
	bne	$9,$0,$L1156
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1156:
	srl	$5,$8,8
	beq	$5,$0,$L1148
	srl	$4,$3,8

	sltu	$9,$2,$4
	bne	$9,$0,$L1157
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1157:
	srl	$5,$8,9
	beq	$5,$0,$L1148
	srl	$4,$3,9

	sltu	$9,$2,$4
	bne	$9,$0,$L1158
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1158:
	srl	$5,$8,10
	beq	$5,$0,$L1148
	srl	$4,$3,10

	sltu	$9,$2,$4
	bne	$9,$0,$L1159
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1159:
	srl	$5,$8,11
	beq	$5,$0,$L1148
	srl	$4,$3,11

	sltu	$9,$2,$4
	bne	$9,$0,$L1160
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1160:
	srl	$5,$8,12
	beq	$5,$0,$L1148
	srl	$4,$3,12

	sltu	$9,$2,$4
	bne	$9,$0,$L1161
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1161:
	srl	$5,$8,13
	beq	$5,$0,$L1148
	srl	$4,$3,13

	sltu	$9,$2,$4
	bne	$9,$0,$L1162
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1162:
	srl	$5,$8,14
	beq	$5,$0,$L1148
	srl	$4,$3,14

	sltu	$9,$2,$4
	bne	$9,$0,$L1163
	subu	$4,$2,$4

	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1163:
	li	$4,16384			# 0x4000
	beq	$8,$4,$L1148
	srl	$3,$3,15

	sltu	$4,$2,$3
	bne	$4,$0,$L1171
	subu	$3,$2,$3

	andi	$2,$3,0xffff
	.option	pic0
	b	$L1148
	.option	pic2
	ori	$7,$7,0x1

$L1171:
	.option	pic0
	b	$L1148
	.option	pic2
	move	$2,$0

$L1229:
	beq	$5,$4,$L1169
	nop

	.option	pic0
	b	$L1148
	.option	pic2
	move	$7,$0

$L1118:
	subu	$2,$4,$5
	andi	$2,$2,0xffff
	.option	pic0
	b	$L1148
	.option	pic2
	li	$7,1			# 0x1

$L1119:
	sltu	$4,$2,$3
	bne	$4,$0,$L1173
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,2			# 0x2
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,2			# 0x2

$L1120:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	andi	$5,$5,0x7fff
	li	$8,2			# 0x2
	li	$7,2			# 0x2
$L1168:
	sltu	$4,$2,$5
	bne	$4,$0,$L1150
	subu	$5,$2,$5

	andi	$2,$5,0xffff
	.option	pic0
	b	$L1150
	.option	pic2
	or	$7,$7,$9

$L1121:
	sltu	$4,$2,$3
	bne	$4,$0,$L1174
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,4			# 0x4
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,4			# 0x4

$L1122:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,4			# 0x4
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,4			# 0x4

$L1123:
	sltu	$4,$2,$3
	bne	$4,$0,$L1175
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,8			# 0x8
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,8			# 0x8

$L1124:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,8			# 0x8
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,8			# 0x8

$L1125:
	sltu	$4,$2,$3
	bne	$4,$0,$L1176
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,16			# 0x10
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,16			# 0x10

$L1126:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,16			# 0x10
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,16			# 0x10

$L1127:
	sltu	$4,$2,$3
	bne	$4,$0,$L1177
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,32			# 0x20
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,32			# 0x20

$L1128:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,32			# 0x20
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,32			# 0x20

$L1129:
	sltu	$4,$2,$3
	bne	$4,$0,$L1178
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,64			# 0x40
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,64			# 0x40

$L1130:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,64			# 0x40
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,64			# 0x40

$L1131:
	sltu	$4,$2,$3
	bne	$4,$0,$L1179
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,128			# 0x80
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,128			# 0x80

$L1132:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,128			# 0x80
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,128			# 0x80

$L1134:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,256			# 0x100
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,256			# 0x100

$L1136:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,512			# 0x200
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,512			# 0x200

$L1169:
	li	$7,1			# 0x1
	.option	pic0
	b	$L1148
	.option	pic2
	move	$2,$0

$L1173:
	li	$8,2			# 0x2
$L1167:
	srl	$9,$8,1
	srl	$5,$3,1
	.option	pic0
	b	$L1168
	.option	pic2
	move	$7,$0

$L1138:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,1024			# 0x400
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,1024			# 0x400

$L1140:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,2048			# 0x800
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,2048			# 0x800

$L1174:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,4			# 0x4

$L1175:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,8			# 0x8

$L1142:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,4096			# 0x1000
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,4096			# 0x1000

$L1144:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,8192			# 0x2000
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,8192			# 0x2000

$L1176:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,16			# 0x10

$L1177:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,32			# 0x20

$L1146:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,16384			# 0x4000
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,16384			# 0x4000

$L1147:
	sll	$3,$2,16
	sra	$3,$3,16
	bltz	$3,$L1172
	nop

	li	$3,32768			# 0x8000
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,32768			# 0x8000

$L1178:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,64			# 0x40

$L1230:
	addiu	$2,$2,-32768
	andi	$2,$2,0xffff
	li	$9,16384			# 0x4000
	li	$3,32768			# 0x8000
	li	$8,32768			# 0x8000
	.option	pic0
	b	$L1168
	.option	pic2
	li	$7,32768			# 0x8000

$L1179:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,128			# 0x80

$L1133:
	sltu	$4,$2,$3
	bne	$4,$0,$L1180
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,256			# 0x100
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,256			# 0x100

$L1172:
	li	$3,32768			# 0x8000
	li	$8,32768			# 0x8000
	li	$7,32768			# 0x8000
	.option	pic0
	b	$L1150
	.option	pic2
	move	$2,$0

$L1180:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,256			# 0x100

$L1137:
	sltu	$4,$2,$3
	bne	$4,$0,$L1182
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,1024			# 0x400
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,1024			# 0x400

$L1145:
	sltu	$4,$2,$3
	bne	$4,$0,$L1186
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,16384			# 0x4000
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,16384			# 0x4000

$L1182:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,1024			# 0x400

$L1186:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,16384			# 0x4000

$L1143:
	sltu	$4,$2,$3
	bne	$4,$0,$L1185
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,8192			# 0x2000
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,8192			# 0x2000

$L1141:
	sltu	$4,$2,$3
	bne	$4,$0,$L1184
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,4096			# 0x1000
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,4096			# 0x1000

$L1139:
	sltu	$4,$2,$3
	bne	$4,$0,$L1183
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,2048			# 0x800
	.option	pic0
	b	$L1150
	.option	pic2
	li	$7,2048			# 0x800

$L1185:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,8192			# 0x2000

$L1184:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,4096			# 0x1000

$L1183:
	.option	pic0
	b	$L1167
	.option	pic2
	li	$8,2048			# 0x800

	.set	macro
	.set	reorder
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.set	nomips16
	.set	nomicromips
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beq	$2,$0,$L1234
	li	$3,1			# 0x1

	.option	pic0
	b	$L1233
	.option	pic2
	li	$2,32			# 0x20

$L1237:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1235
	sll	$3,$3,1

	beq	$2,$0,$L1236
	nop

$L1233:
	bgez	$5,$L1237
	addiu	$2,$2,-1

$L1234:
	move	$2,$0
$L1239:
	sltu	$7,$4,$5
	bne	$7,$0,$L1238
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L1238:
	srl	$3,$3,1
	bne	$3,$0,$L1239
	srl	$5,$5,1

$L1236:
	bne	$6,$0,$L1248
	nop

	jr	$31
	nop

$L1235:
	bne	$3,$0,$L1234
	move	$2,$0

	.option	pic0
	b	$L1236
	nop

	.option	pic2
$L1248:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.set	nomips16
	.set	nomicromips
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x20
	beq	$2,$0,$L1250
	sll	$2,$5,$6

	move	$5,$0
	jr	$31
	move	$3,$5

$L1250:
	beq	$6,$0,$L1253
	nop

	subu	$3,$0,$6
	srl	$3,$5,$3
	sll	$2,$4,$6
	sll	$5,$5,$6
	or	$2,$3,$2
	jr	$31
	move	$3,$5

$L1253:
	move	$2,$4
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x20
	beq	$2,$0,$L1255
	sra	$2,$4,31

	sra	$5,$4,$6
	jr	$31
	move	$3,$5

$L1255:
	beq	$6,$0,$L1258
	nop

	subu	$3,$0,$6
	sll	$3,$4,$3
	srl	$5,$5,$6
	or	$5,$3,$5
	sra	$2,$4,$6
	jr	$31
	move	$3,$5

$L1258:
	move	$2,$4
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.set	nomips16
	.set	nomicromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$2,$4,8
	srl	$7,$4,8
	srl	$6,$5,24
	li	$8,16711680			# 0xff0000
	srl	$3,$4,24
	andi	$7,$7,0xff00
	or	$6,$2,$6
	and	$6,$6,$8
	srl	$9,$5,24
	sll	$2,$5,24
	or	$3,$3,$7
	srl	$7,$5,8
	or	$3,$3,$6
	or	$2,$2,$9
	andi	$6,$7,0xff00
	sll	$5,$5,8
	sll	$4,$4,24
	or	$2,$2,$6
	and	$5,$5,$8
	or	$3,$3,$4
	jr	$31
	or	$2,$2,$5

	.set	macro
	.set	reorder
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.set	nomips16
	.set	nomicromips
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$5,$4,24
	srl	$2,$4,24
	srl	$3,$4,8
	or	$2,$2,$5
	andi	$3,$3,0xff00
	or	$2,$2,$3
	sll	$4,$4,8
	li	$3,16711680			# 0xff0000
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.set	nomips16
	.set	nomicromips
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$7,65536			# 0x10000
	sltu	$7,$4,$7
	sll	$7,$7,4
	li	$2,16			# 0x10
	subu	$2,$2,$7
	srl	$3,$4,$2
	andi	$6,$3,0xff00
	sltu	$6,$6,1
	sll	$6,$6,3
	li	$2,8			# 0x8
	subu	$2,$2,$6
	srl	$3,$3,$2
	andi	$5,$3,0xf0
	sltu	$5,$5,1
	sll	$5,$5,2
	li	$2,4			# 0x4
	subu	$2,$2,$5
	srl	$3,$3,$2
	andi	$4,$3,0xc
	sltu	$4,$4,1
	sll	$4,$4,1
	li	$2,2			# 0x2
	subu	$8,$2,$4
	srl	$3,$3,$8
	srl	$8,$3,1
	addu	$6,$6,$7
	andi	$7,$8,0x1
	bne	$7,$0,$L1262
	addu	$5,$5,$6

	subu	$2,$2,$3
	addu	$4,$4,$5
	jr	$31
	addu	$2,$2,$4

$L1262:
	addu	$4,$4,$5
	move	$2,$0
	jr	$31
	addu	$2,$2,$4

	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.set	nomips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$4,$6
	bne	$2,$0,$L1268
	slt	$4,$6,$4

	bne	$4,$0,$L1267
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1268
	sltu	$5,$7,$5

	bne	$5,$0,$L1269
	nop

	jr	$31
	li	$2,1			# 0x1

$L1268:
	jr	$31
	move	$2,$0

$L1267:
	jr	$31
	li	$2,2			# 0x2

$L1269:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.set	nomips16
	.set	nomicromips
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$4,$6
	bne	$2,$0,$L1272
	slt	$4,$6,$4

	bne	$4,$0,$L1273
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1274
	nop

	jr	$31
	sltu	$2,$7,$5

$L1272:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1274:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1273:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$7,$4,0xffff
	sltu	$7,$7,1
	sll	$7,$7,4
	srl	$3,$4,$7
	andi	$6,$3,0xff
	sltu	$6,$6,1
	sll	$6,$6,3
	srl	$3,$3,$6
	andi	$5,$3,0xf
	sltu	$5,$5,1
	sll	$5,$5,2
	srl	$3,$3,$5
	andi	$4,$3,0x3
	sltu	$4,$4,1
	sll	$4,$4,1
	srl	$3,$3,$4
	andi	$3,$3,0x3
	addu	$6,$6,$7
	nor	$2,$0,$3
	addu	$5,$5,$6
	andi	$2,$2,0x1
	li	$6,2			# 0x2
	srl	$3,$3,1
	subu	$3,$6,$3
	subu	$2,$0,$2
	and	$2,$2,$3
	addu	$4,$4,$5
	jr	$31
	addu	$2,$2,$4

	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x20
	beq	$2,$0,$L1277
	nop

	srl	$5,$4,$6
	move	$4,$0
$L1280:
	move	$2,$4
	jr	$31
	move	$3,$5

$L1277:
	beq	$6,$0,$L1280
	nop

	subu	$2,$0,$6
	sll	$2,$4,$2
	srl	$5,$5,$6
	or	$5,$2,$5
	srl	$4,$4,$6
	move	$2,$4
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.set	nomips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$7,$4,0xffff
	andi	$3,$5,0xffff
	mult	$7,$3
	srl	$4,$4,16
	srl	$5,$5,16
	mflo	$6
	srl	$8,$6,16
	andi	$6,$6,0xffff
	mult	$3,$4
	mflo	$3
	addu	$3,$3,$8
	nop
	mult	$7,$5
	andi	$7,$3,0xffff
	srl	$3,$3,16
	mflo	$2
	addu	$2,$2,$7
	nop
	mult	$4,$5
	sll	$4,$2,16
	addu	$4,$6,$4
	srl	$2,$2,16
	mflo	$5
	addu	$3,$3,$5
	addu	$2,$3,$2
	jr	$31
	move	$3,$4

	.set	macro
	.set	reorder
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.set	nomips16
	.set	nomicromips
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$8,$5,0xffff
	andi	$2,$7,0xffff
	mult	$8,$2
	srl	$10,$5,16
	srl	$9,$7,16
	mflo	$3
	srl	$11,$3,16
	andi	$3,$3,0xffff
	mult	$2,$10
	mflo	$2
	addu	$2,$2,$11
	andi	$11,$2,0xffff
	mult	$8,$9
	srl	$2,$2,16
	mflo	$8
	addu	$8,$8,$11
	nop
	mult	$10,$9
	srl	$9,$8,16
	sll	$8,$8,16
	addu	$8,$3,$8
	mflo	$10
	addu	$2,$2,$10
	addu	$3,$2,$9
	mult	$5,$6
	mflo	$5
	addu	$5,$5,$3
	move	$3,$8
	mult	$7,$4
	mflo	$2
	jr	$31
	addu	$2,$5,$2

	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__negdi2
	.set	nomips16
	.set	nomicromips
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$0,$5
	subu	$4,$0,$4
	subu	$5,$0,$5
	subu	$2,$4,$2
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__paritydi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	xor	$4,$4,$5
	srl	$3,$4,16
	xor	$3,$3,$4
	srl	$2,$3,8
	xor	$2,$2,$3
	srl	$3,$2,4
	xor	$3,$3,$2
	andi	$3,$3,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,16
	xor	$2,$2,$4
	srl	$4,$2,8
	xor	$4,$4,$2
	srl	$3,$4,4
	xor	$3,$3,$4
	andi	$3,$3,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$6,$4,31
	srl	$2,$5,1
	li	$3,1431633920			# 0x55550000
	addiu	$3,$3,21845
	or	$2,$6,$2
	and	$2,$2,$3
	srl	$6,$4,1
	subu	$2,$5,$2
	and	$3,$6,$3
	sltu	$5,$5,$2
	subu	$4,$4,$3
	subu	$4,$4,$5
	sll	$6,$4,30
	srl	$3,$2,2
	li	$5,858980352			# 0x33330000
	addiu	$5,$5,13107
	or	$3,$6,$3
	and	$3,$3,$5
	srl	$6,$4,2
	and	$2,$2,$5
	addu	$2,$3,$2
	and	$6,$6,$5
	and	$4,$4,$5
	sltu	$3,$2,$3
	addu	$4,$6,$4
	addu	$4,$3,$4
	sll	$5,$4,28
	srl	$3,$2,4
	or	$3,$5,$3
	addu	$2,$3,$2
	srl	$5,$4,4
	addu	$5,$5,$4
	sltu	$3,$2,$3
	li	$4,252641280			# 0xf0f0000
	addiu	$4,$4,3855
	addu	$3,$3,$5
	and	$2,$2,$4
	and	$3,$3,$4
	addu	$3,$3,$2
	srl	$2,$3,16
	addu	$3,$2,$3
	srl	$2,$3,8
	addu	$2,$2,$3
	jr	$31
	andi	$2,$2,0x7f

	.set	macro
	.set	reorder
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,1431633920			# 0x55550000
	srl	$2,$4,1
	addiu	$3,$3,21845
	and	$2,$2,$3
	subu	$4,$4,$2
	li	$2,858980352			# 0x33330000
	addiu	$2,$2,13107
	srl	$3,$4,2
	and	$3,$3,$2
	and	$4,$4,$2
	addu	$3,$3,$4
	srl	$2,$3,4
	addu	$2,$2,$3
	li	$3,252641280			# 0xf0f0000
	addiu	$3,$3,3855
	and	$2,$2,$3
	srl	$3,$2,16
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	jr	$31
	andi	$2,$2,0x3f

	.set	macro
	.set	reorder
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__powidf2
	.set	nomips16
	.set	nomicromips
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$5,%hi($LC6)
	lwc1	$f0,%lo($LC6+4)($5)
	andi	$2,$6,0x1
	lwc1	$f1,%lo($LC6)($5)
	beq	$2,$0,$L1289
	move	$2,$6

$L1291:
	mul.d	$f0,$f0,$f12
$L1289:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L1290
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$4,$0,$L1291
	addu	$3,$3,$2

	sra	$2,$3,1
$L1298:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$4,$0,$L1291
	addu	$3,$3,$2

	.option	pic0
	b	$L1298
	.option	pic2
	sra	$2,$3,1

$L1290:
	bltz	$6,$L1297
	nop

	jr	$31
	nop

$L1297:
	lwc1	$f2,%lo($LC6+4)($5)
	nop
	lwc1	$f3,%lo($LC6)($5)
	jr	$31
	div.d	$f0,$f2,$f0

	.set	macro
	.set	reorder
	.end	__powidf2
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.set	nomips16
	.set	nomicromips
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$6,%hi($LC10)
	andi	$2,$5,0x1
	lwc1	$f0,%lo($LC10)($6)
	beq	$2,$0,$L1300
	move	$2,$5

$L1302:
	mul.s	$f0,$f0,$f12
$L1300:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L1301
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$4,$0,$L1302
	addu	$3,$3,$2

	sra	$2,$3,1
$L1309:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$4,$0,$L1302
	addu	$3,$3,$2

	.option	pic0
	b	$L1309
	.option	pic2
	sra	$2,$3,1

$L1301:
	bltz	$5,$L1308
	nop

	jr	$31
	nop

$L1308:
	lwc1	$f2,%lo($LC10)($6)
	jr	$31
	div.s	$f0,$f2,$f0

	.set	macro
	.set	reorder
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.set	nomips16
	.set	nomicromips
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$6
	bne	$2,$0,$L1314
	sltu	$4,$6,$4

	bne	$4,$0,$L1313
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1314
	sltu	$5,$7,$5

	bne	$5,$0,$L1315
	nop

	jr	$31
	li	$2,1			# 0x1

$L1314:
	jr	$31
	move	$2,$0

$L1313:
	jr	$31
	li	$2,2			# 0x2

$L1315:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.set	nomips16
	.set	nomicromips
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$6
	bne	$2,$0,$L1318
	sltu	$4,$6,$4

	bne	$4,$0,$L1319
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1320
	nop

	jr	$31
	sltu	$2,$7,$5

$L1318:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1320:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1319:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.local	seed
	.comm	seed,8,8
	.rdata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr"
	.ascii	"stuvwxyz\000"
	$LC0 = $LC2
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
$LC1:
	.word	1056964608
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
$LC2:
	.word	1073741824
	.word	0
	.align	3
$LC3:
	.word	1071644672
	.word	0
	.align	3
$LC4:
	.word	-1074790400
	.word	0
	.align	3
$LC5:
	.word	-1075838976
	.word	0
	.align	3
$LC6:
	.word	1072693248
	.word	0
	.align	3
$LC7:
	.word	1070596096
	.word	0
	.align	3
$LC8:
	.word	1106247680
	.word	0
	.section	.rodata.cst4
	.align	2
$LC9:
	.word	1191182336
	.align	2
$LC10:
	.word	1065353216
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
