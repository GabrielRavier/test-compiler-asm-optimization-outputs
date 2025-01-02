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
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L185
	li	$3,1			# 0x1

	move	$3,$0
$L185:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f14,$f0
	nop
	bc1t	$L186
	li	$2,1			# 0x1

	move	$2,$0
$L186:
	andi	$3,$3,0x00ff
	andi	$2,$2,0x00ff
	beq	$3,$2,$L184
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L193
	nop

	mov.d	$f0,$f12
$L194:
	jr	$31
	nop

$L184:
	c.le.d	$f14,$f12
	nop
	bc1t	$L194
	mov.d	$f0,$f12

$L193:
	jr	$31
	mov.d	$f0,$f14

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
	mtc1	$0,$f0
	nop
	c.lt.s	$f12,$f0
	nop
	bc1t	$L206
	li	$3,1			# 0x1

	move	$3,$0
	mtc1	$0,$f0
	nop
$L206:
	c.lt.s	$f14,$f0
	nop
	bc1t	$L198
	li	$2,1			# 0x1

	move	$2,$0
$L198:
	andi	$3,$3,0x00ff
	andi	$2,$2,0x00ff
	beq	$3,$2,$L196
	nop

	mtc1	$0,$f0
	nop
	c.lt.s	$f12,$f0
	nop
	bc1t	$L205
	nop

	mov.s	$f0,$f12
$L207:
	jr	$31
	nop

$L196:
	c.le.s	$f14,$f12
	nop
	bc1t	$L207
	mov.s	$f0,$f12

$L205:
	jr	$31
	mov.s	$f0,$f14

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
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L210
	li	$3,1			# 0x1

	move	$3,$0
$L210:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f14,$f0
	nop
	bc1t	$L211
	li	$2,1			# 0x1

	move	$2,$0
$L211:
	andi	$3,$3,0x00ff
	andi	$2,$2,0x00ff
	beq	$3,$2,$L209
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L218
	nop

	mov.d	$f0,$f12
$L219:
	jr	$31
	nop

$L209:
	c.le.d	$f14,$f12
	nop
	bc1t	$L219
	mov.d	$f0,$f12

$L218:
	jr	$31
	mov.d	$f0,$f14

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
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L222
	li	$3,1			# 0x1

	move	$3,$0
$L222:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f14,$f0
	nop
	bc1t	$L223
	li	$2,1			# 0x1

	move	$2,$0
$L223:
	andi	$3,$3,0x00ff
	andi	$2,$2,0x00ff
	beq	$3,$2,$L221
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L230
	nop

	mov.d	$f0,$f14
$L231:
	jr	$31
	nop

$L221:
	c.le.d	$f12,$f14
	nop
	bc1t	$L231
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

$L230:
	jr	$31
	mov.d	$f0,$f12

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
	mtc1	$0,$f0
	nop
	c.lt.s	$f12,$f0
	nop
	bc1t	$L243
	li	$3,1			# 0x1

	move	$3,$0
	mtc1	$0,$f0
	nop
$L243:
	c.lt.s	$f14,$f0
	nop
	bc1t	$L235
	li	$2,1			# 0x1

	move	$2,$0
$L235:
	andi	$3,$3,0x00ff
	andi	$2,$2,0x00ff
	beq	$3,$2,$L233
	nop

	mtc1	$0,$f0
	nop
	c.lt.s	$f12,$f0
	nop
	bc1t	$L242
	nop

	mov.s	$f0,$f14
$L244:
	jr	$31
	nop

$L233:
	c.le.s	$f12,$f14
	nop
	bc1t	$L244
	mov.s	$f0,$f12

	jr	$31
	mov.s	$f0,$f14

$L242:
	jr	$31
	mov.s	$f0,$f12

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
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L247
	li	$3,1			# 0x1

	move	$3,$0
$L247:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f14,$f0
	nop
	bc1t	$L248
	li	$2,1			# 0x1

	move	$2,$0
$L248:
	andi	$3,$3,0x00ff
	andi	$2,$2,0x00ff
	beq	$3,$2,$L246
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L255
	nop

	mov.d	$f0,$f14
$L256:
	jr	$31
	nop

$L246:
	c.le.d	$f12,$f14
	nop
	bc1t	$L256
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

$L255:
	jr	$31
	mov.d	$f0,$f12

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
	beq	$4,$0,$L258
	move	$5,$2

	lui	$6,%hi(digits)
	addiu	$6,$6,%lo(digits)
$L259:
	andi	$3,$4,0x3f
	addu	$3,$6,$3
	lbu	$3,0($3)
	srl	$4,$4,6
	sb	$3,0($5)
	bne	$4,$0,$L259
	addiu	$5,$5,1

$L258:
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
	beq	$5,$0,$L270
	nop

	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L271
	nop

	sw	$4,4($2)
$L271:
	jr	$31
	nop

$L270:
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
	beq	$2,$0,$L273
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L273:
	lw	$3,4($4)
	nop
	beq	$3,$0,$L281
	nop

	sw	$2,0($3)
$L281:
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
	beq	$19,$0,$L283
	move	$18,$7

	move	$16,$5
	.option	pic0
	b	$L285
	.option	pic2
	move	$17,$0

$L298:
	beq	$19,$17,$L283
	addu	$16,$16,$18

$L285:
	move	$5,$16
	move	$25,$22
	jalr	$25
	move	$4,$20

	move	$21,$16
	lw	$28,16($sp)
	bne	$2,$0,$L298
	addiu	$17,$17,1

$L282:
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

$L283:
	mult	$18,$19
	addiu	$19,$19,1
	sw	$19,0($23)
	mflo	$21
	beq	$18,$0,$L282
	addu	$21,$fp,$21

	lw	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$21

	.option	pic0
	b	$L282
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
	beq	$20,$0,$L300
	sw	$16,24($sp)

	move	$18,$4
	move	$19,$7
	move	$16,$5
	.option	pic0
	b	$L302
	.option	pic2
	move	$17,$0

$L311:
	beq	$20,$17,$L300
	addu	$16,$16,$19

$L302:
	move	$5,$16
	move	$25,$21
	jalr	$25
	move	$4,$18

	move	$22,$16
	bne	$2,$0,$L311
	addiu	$17,$17,1

$L299:
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

$L300:
	.option	pic0
	b	$L299
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
	bltz	$4,$L314
	move	$2,$4

	jr	$31
	nop

$L314:
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
$L324:
	lb	$5,0($4)
	nop
	addiu	$2,$5,-9
	beq	$5,$3,$L318
	sltu	$2,$2,5

	bne	$2,$0,$L318
	nop

	li	$2,43			# 0x2b
	beq	$5,$2,$L319
	li	$2,45			# 0x2d

	bne	$5,$2,$L335
	addiu	$6,$5,-48

	lb	$5,1($4)
	nop
	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,$L329
	addiu	$4,$4,1

	li	$8,1			# 0x1
$L322:
	move	$2,$0
$L326:
	sll	$3,$2,2
	lb	$5,1($4)
	addu	$3,$3,$2
	sll	$3,$3,1
	move	$7,$6
	subu	$2,$3,$6
	addiu	$6,$5,-48
	sltu	$5,$6,10
	bne	$5,$0,$L326
	addiu	$4,$4,1

	bne	$8,$0,$L336
	nop

	jr	$31
	subu	$2,$7,$3

$L318:
	.option	pic0
	b	$L324
	.option	pic2
	addiu	$4,$4,1

$L335:
	sltu	$2,$6,10
	bne	$2,$0,$L322
	move	$8,$0

$L334:
	jr	$31
	move	$2,$0

$L329:
	move	$2,$0
$L336:
	jr	$31
	nop

$L319:
	lb	$5,1($4)
	move	$8,$0
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,$L322
	addiu	$4,$4,1

	.option	pic0
	b	$L334
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
$L342:
	lb	$5,0($4)
	nop
	addiu	$2,$5,-9
	beq	$5,$3,$L338
	sltu	$2,$2,5

	bne	$2,$0,$L338
	nop

	li	$2,43			# 0x2b
	beq	$5,$2,$L339
	li	$2,45			# 0x2d

	beq	$5,$2,$L340
	li	$8,1			# 0x1

	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,$L354
	nop

$L350:
	move	$8,$0
$L343:
	move	$2,$0
$L346:
	sll	$3,$2,2
	lb	$5,1($4)
	addu	$3,$3,$2
	sll	$3,$3,1
	move	$7,$6
	subu	$2,$3,$6
	addiu	$6,$5,-48
	sltu	$5,$6,10
	bne	$5,$0,$L346
	addiu	$4,$4,1

	bne	$8,$0,$L355
	nop

	jr	$31
	subu	$2,$7,$3

$L338:
	.option	pic0
	b	$L342
	.option	pic2
	addiu	$4,$4,1

$L340:
	lb	$5,1($4)
	nop
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,$L343
	addiu	$4,$4,1

$L354:
	jr	$31
	move	$2,$0

$L339:
	lb	$5,1($4)
	nop
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,$L350
	addiu	$4,$4,1

	move	$2,$0
$L355:
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
$L363:
	lb	$2,0($4)
	nop
	addiu	$3,$2,-9
	beq	$2,$5,$L357
	sltu	$3,$3,5

	bne	$3,$0,$L357
	nop

	li	$3,43			# 0x2b
	beq	$2,$3,$L358
	li	$3,45			# 0x2d

	bne	$2,$3,$L374
	addiu	$7,$2,-48

	lb	$2,1($4)
	nop
	addiu	$7,$2,-48
	sltu	$2,$7,10
	beq	$2,$0,$L368
	addiu	$4,$4,1

	li	$12,1			# 0x1
$L361:
	move	$2,$0
	move	$3,$0
$L365:
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
	bne	$9,$0,$L365
	subu	$2,$2,$10

	bne	$12,$0,$L376
	subu	$8,$8,$5

	subu	$3,$11,$6
	sltu	$11,$11,$3
	jr	$31
	subu	$2,$8,$11

$L357:
	.option	pic0
	b	$L363
	.option	pic2
	addiu	$4,$4,1

$L374:
	sltu	$2,$7,10
	bne	$2,$0,$L361
	move	$12,$0

	move	$2,$0
$L375:
	jr	$31
	move	$3,$0

$L368:
	move	$2,$0
	move	$3,$0
$L376:
	jr	$31
	nop

$L358:
	lb	$2,1($4)
	move	$12,$0
	addiu	$7,$2,-48
	sltu	$2,$7,10
	bne	$2,$0,$L361
	addiu	$4,$4,1

	.option	pic0
	b	$L375
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
	beq	$6,$0,$L378
	sw	$16,24($sp)

	move	$16,$6
	move	$20,$4
	move	$19,$5
	.option	pic0
	b	$L381
	.option	pic2
	move	$18,$7

$L391:
	beq	$2,$0,$L377
	subu	$16,$16,$22

	beq	$16,$0,$L378
	addu	$19,$17,$18

$L381:
	srl	$22,$16,1
$L392:
	mult	$22,$18
	move	$4,$20
	move	$25,$21
	addiu	$16,$16,-1
	mflo	$17
	addu	$17,$19,$17
	jalr	$25
	move	$5,$17

	bgez	$2,$L391
	nop

	move	$16,$22
	bne	$16,$0,$L392
	srl	$22,$16,1

$L378:
	move	$17,$0
$L377:
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
	beq	$6,$0,$L398
	move	$17,$7

$L394:
	sra	$23,$16,1
$L407:
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

	beq	$2,$0,$L393
	nop

	blez	$2,$L396
	nop

	bne	$16,$0,$L394
	addu	$18,$22,$17

$L398:
	move	$22,$0
$L393:
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

$L396:
	beq	$23,$0,$L398
	move	$16,$23

	.option	pic0
	b	$L407
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
	bltz	$4,$L412
	move	$3,$5

	jr	$31
	nop

$L412:
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
	bltz	$4,$L419
	move	$2,$4

	jr	$31
	nop

$L419:
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
	bltz	$4,$L426
	move	$3,$5

	jr	$31
	nop

$L426:
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
	bne	$2,$0,$L432
	nop

	jr	$31
	nop

$L434:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L435
	addiu	$4,$4,4

$L432:
	bne	$5,$2,$L434
	move	$2,$4

	jr	$31
	nop

$L435:
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
$L440:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L439
	addiu	$4,$4,4

	bne	$2,$0,$L440
	addiu	$5,$5,4

$L439:
	slt	$4,$2,$3
	bne	$4,$0,$L442
	nop

	jr	$31
	slt	$2,$3,$2

$L442:
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
$L445:
	lw	$6,0($5)
	addiu	$3,$3,4
	addiu	$5,$5,4
	bne	$6,$0,$L445
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
	beq	$2,$0,$L450
	nop

	move	$2,$4
$L449:
	lw	$3,4($2)
	nop
	bne	$3,$0,$L449
	addiu	$2,$2,4

	subu	$2,$2,$4
	jr	$31
	sra	$2,$2,2

$L450:
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
	b	$L461
	nop

	.option	pic2
$L462:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L465
	addiu	$6,$6,-1

	beq	$2,$0,$L464
	addiu	$4,$4,4

	addiu	$5,$5,4
$L461:
	bne	$6,$0,$L462
	move	$2,$0

	jr	$31
	nop

$L465:
	lw	$3,0($5)
	nop
$L464:
	slt	$4,$2,$3
	bne	$4,$0,$L463
	nop

	jr	$31
	slt	$2,$3,$2

$L463:
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
	bne	$6,$0,$L467
	move	$2,$0

	.option	pic0
	b	$L473
	nop

	.option	pic2
$L469:
	beq	$6,$0,$L470
	addiu	$4,$4,4

$L467:
	lw	$2,0($4)
	nop
	bne	$2,$5,$L469
	addiu	$6,$6,-1

	jr	$31
	move	$2,$4

$L470:
	jr	$31
	move	$2,$0

$L473:
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
	b	$L484
	nop

	.option	pic2
$L486:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L485
	addiu	$6,$6,-1

	addiu	$4,$4,4
	addiu	$5,$5,4
$L484:
	bne	$6,$0,$L486
	move	$2,$0

	jr	$31
	nop

$L485:
	slt	$4,$2,$3
	bne	$4,$0,$L487
	nop

	jr	$31
	slt	$2,$3,$2

$L487:
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
	beq	$6,$0,$L489
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sll	$6,$6,2

$L489:
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
	beq	$4,$5,$L511
	move	$2,$4

	sll	$3,$6,2
	subu	$4,$4,$5
	sltu	$4,$4,$3
	beq	$4,$0,$L508
	addiu	$3,$6,-1

	beq	$6,$0,$L511
	sll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
$L499:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	addiu	$3,$3,-4
	bne	$3,$7,$L499
	sw	$6,0($4)

$L511:
	jr	$31
	nop

$L508:
	move	$7,$2
	beq	$6,$0,$L511
	li	$8,-1			# 0xffffffffffffffff

$L497:
	lw	$4,0($5)
	addiu	$3,$3,-1
	addiu	$7,$7,4
	addiu	$5,$5,4
	bne	$3,$8,$L497
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
	beq	$6,$0,$L519
	addiu	$3,$6,-1

	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
$L514:
	addiu	$3,$3,-1
	addiu	$6,$6,4
	bne	$3,$7,$L514
	sw	$5,-4($6)

$L519:
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
	beq	$2,$0,$L521
	addu	$2,$4,$6

	beq	$6,$0,$L553
	addu	$5,$5,$6

$L523:
	lb	$3,-1($2)
	addiu	$2,$2,-1
	addiu	$5,$5,-1
	bne	$4,$2,$L523
	sb	$3,0($5)

$L553:
	jr	$31
	nop

$L521:
	bne	$4,$5,$L549
	nop

	jr	$31
	nop

$L549:
	beq	$6,$0,$L553
	addiu	$2,$6,-1

	sltu	$2,$2,7
	bne	$2,$0,$L551
	addiu	$2,$4,1

	or	$2,$5,$4
	andi	$2,$2,0x3
	bne	$2,$0,$L547
	addiu	$2,$4,1

	subu	$3,$5,$2
	sltu	$3,$3,3
	bne	$3,$0,$L524
	srl	$8,$6,2

	sll	$8,$8,2
	move	$2,$5
	addu	$7,$4,$8
$L525:
	lw	$3,0($4)
	addiu	$4,$4,4
	sw	$3,0($2)
	bne	$7,$4,$L525
	addiu	$2,$2,4

	addu	$5,$5,$8
	beq	$6,$8,$L553
	subu	$2,$6,$8

	lb	$4,0($7)
	li	$3,1			# 0x1
	beq	$2,$3,$L553
	sb	$4,0($5)

	lb	$4,1($7)
	li	$3,2			# 0x2
	beq	$2,$3,$L553
	sb	$4,1($5)

	lb	$2,2($7)
	jr	$31
	sb	$2,2($5)

$L547:
$L524:
$L551:
	.option	pic0
	b	$L528
	.option	pic2
	addu	$4,$4,$6

$L550:
	addiu	$2,$2,1
$L528:
	lb	$3,-1($2)
	addiu	$5,$5,1
	bne	$2,$4,$L550
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
	beq	$2,$0,$L555
	nor	$2,$0,$6

	sll	$2,$5,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	move	$3,$0
	beq	$7,$0,$L557
	andi	$6,$6,0x3f

$L559:
	srl	$5,$4,$6
	or	$5,$5,$3
	move	$4,$0
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L555:
	srl	$3,$5,1
	srl	$3,$3,$2
	sll	$2,$4,$6
	or	$2,$3,$2
	sll	$3,$5,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	bne	$7,$0,$L559
	andi	$6,$6,0x3f

$L557:
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
	beq	$2,$0,$L561
	nor	$3,$0,$6

	srl	$3,$4,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	move	$2,$0
	beq	$7,$0,$L563
	andi	$6,$6,0x3f

$L565:
	sll	$4,$5,$6
	move	$5,$0
	or	$5,$5,$3
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L561:
	sll	$2,$4,1
	sll	$2,$2,$3
	srl	$3,$5,$6
	or	$3,$2,$3
	srl	$2,$4,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	bne	$7,$0,$L565
	andi	$6,$6,0x3f

$L563:
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
	b	$L580
	.option	pic2
	li	$5,32			# 0x20

$L583:
	beq	$2,$5,$L582
	nop

$L580:
	srl	$3,$4,$2
	andi	$3,$3,0x1
	beq	$3,$0,$L583
	addiu	$2,$2,1

	jr	$31
	nop

$L582:
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
	beq	$4,$0,$L591
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,$L590
	nop

	li	$2,1			# 0x1
$L586:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,$L586
	addiu	$2,$2,1

$L591:
	jr	$31
	nop

$L590:
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
	bc1t	$L615
	mov.s	$f0,$f12

	bltz	$5,$L610
	lui	$2,%hi($LC1)

	lui	$2,%hi($LC0)
	lwc1	$f2,%lo($LC0)($2)
	andi	$2,$5,0x1
$L613:
	beq	$2,$0,$L614
	srl	$2,$5,31

$L600:
	mul.s	$f0,$f0,$f2
	srl	$2,$5,31
$L614:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L615
	srl	$2,$5,31

	andi	$3,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$3,$0,$L600
	addu	$2,$2,$5

	sra	$5,$2,1
$L612:
	srl	$2,$5,31
	andi	$3,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$3,$0,$L600
	addu	$2,$2,$5

	.option	pic0
	b	$L612
	.option	pic2
	sra	$5,$2,1

$L615:
	jr	$31
	nop

$L610:
	lwc1	$f2,%lo($LC1)($2)
	.option	pic0
	b	$L613
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
	bc1t	$L635
	mov.d	$f0,$f12

	bltz	$6,$L630
	lui	$2,%hi($LC3)

	lui	$2,%hi($LC2)
	lwc1	$f2,%lo($LC2+4)($2)
	nop
	lwc1	$f3,%lo($LC2)($2)
	andi	$2,$6,0x1
$L633:
	beq	$2,$0,$L634
	srl	$2,$6,31

$L620:
	mul.d	$f0,$f0,$f2
	srl	$2,$6,31
$L634:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L635
	srl	$2,$6,31

	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L620
	addu	$2,$2,$6

	sra	$6,$2,1
$L632:
	srl	$2,$6,31
	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L620
	addu	$2,$2,$6

	.option	pic0
	b	$L632
	.option	pic2
	sra	$6,$2,1

$L635:
	jr	$31
	nop

$L630:
	lwc1	$f2,%lo($LC3+4)($2)
	nop
	lwc1	$f3,%lo($LC3)($2)
	.option	pic0
	b	$L633
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
	add.d	$f0,$f12,$f12
	c.eq.d	$f12,$f0
	nop
	bc1t	$L652
	nop

	bltz	$6,$L648
	lui	$2,%hi($LC3)

	lui	$2,%hi($LC2)
	lwc1	$f2,%lo($LC2+4)($2)
	nop
	lwc1	$f3,%lo($LC2)($2)
	andi	$2,$6,0x1
$L651:
	beq	$2,$0,$L639
	mov.d	$f0,$f12

$L640:
	mul.d	$f0,$f0,$f2
$L639:
	srl	$2,$6,31
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L652
	srl	$2,$6,31

	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L640
	addu	$2,$2,$6

	sra	$6,$2,1
$L650:
	srl	$2,$6,31
	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L640
	addu	$2,$2,$6

	.option	pic0
	b	$L650
	.option	pic2
	sra	$6,$2,1

$L652:
	jr	$31
	nop

$L648:
	lwc1	$f2,%lo($LC3+4)($2)
	nop
	lwc1	$f3,%lo($LC3)($2)
	.option	pic0
	b	$L651
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
	beq	$6,$0,$L665
	move	$2,$4

	addiu	$3,$6,-1
	sltu	$3,$3,4
	bne	$3,$0,$L655
	or	$3,$4,$5

	andi	$3,$3,0x3
	bne	$3,$0,$L655
	srl	$4,$6,2

	sll	$4,$4,2
	move	$3,$2
	addu	$9,$5,$4
$L656:
	lw	$8,0($3)
	lw	$7,0($5)
	addiu	$5,$5,4
	xor	$7,$7,$8
	sw	$7,0($3)
	bne	$9,$5,$L656
	addiu	$3,$3,4

	addu	$3,$2,$4
	beq	$6,$4,$L665
	subu	$5,$6,$4

	lbu	$4,0($3)
	lbu	$7,0($9)
	li	$6,1			# 0x1
	xor	$4,$4,$7
	beq	$5,$6,$L665
	sb	$4,0($3)

	lbu	$7,1($3)
	lbu	$4,1($9)
	li	$6,2			# 0x2
	xor	$4,$4,$7
	beq	$5,$6,$L665
	sb	$4,1($3)

	lbu	$5,2($3)
	lbu	$4,2($9)
	nop
	xor	$4,$4,$5
	jr	$31
	sb	$4,2($3)

$L655:
	addu	$6,$5,$6
	move	$3,$2
$L658:
	lbu	$4,0($3)
	lbu	$7,0($5)
	addiu	$3,$3,1
	xor	$7,$7,$4
	addiu	$5,$5,1
	bne	$6,$5,$L658
	sb	$7,-1($3)

$L665:
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
	beq	$3,$0,$L673
	move	$2,$4

	move	$3,$4
$L668:
	lb	$7,1($3)
	nop
	bne	$7,$0,$L668
	addiu	$3,$3,1

	beq	$6,$0,$L670
	nop

$L681:
	lb	$7,0($5)
	addiu	$6,$6,-1
	beq	$7,$0,$L682
	sb	$7,0($3)

	addiu	$5,$5,1
	addiu	$3,$3,1
$L679:
	bne	$6,$0,$L681
	nop

$L670:
	jr	$31
	sb	$0,0($3)

$L682:
	jr	$31
	nop

$L673:
	.option	pic0
	b	$L679
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
	beq	$5,$0,$L694
	move	$2,$0

	addu	$3,$4,$2
$L692:
	lb	$3,0($3)
	nop
	bne	$3,$0,$L686
	nop

$L694:
	jr	$31
	nop

$L686:
	addiu	$2,$2,1
	bne	$5,$2,$L692
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
	beq	$7,$0,$L702
	move	$2,$4

$L696:
	.option	pic0
	b	$L699
	.option	pic2
	move	$3,$5

$L698:
	beq	$6,$7,$L703
	nop

$L699:
	lb	$6,0($3)
	nop
	bne	$6,$0,$L698
	addiu	$3,$3,1

	lb	$7,1($2)
	nop
	bne	$7,$0,$L696
	addiu	$2,$2,1

	move	$2,$0
$L703:
	jr	$31
	nop

$L702:
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
$L706:
	lb	$3,0($4)
	nop
	bne	$5,$3,$L705
	nop

	move	$2,$4
$L705:
	bne	$3,$0,$L706
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
	beq	$8,$0,$L718
	nop

	move	$2,$5
$L710:
	lb	$3,1($2)
	nop
	bne	$3,$0,$L710
	addiu	$2,$2,1

	beq	$2,$5,$L718
	subu	$10,$2,$5

	andi	$11,$8,0x00ff
	.option	pic0
	b	$L716
	.option	pic2
	addiu	$10,$10,-1

$L729:
	beq	$2,$0,$L731
	addiu	$4,$4,1

$L716:
	lb	$2,0($4)
	nop
	bne	$2,$8,$L729
	move	$6,$11

	addu	$9,$4,$10
	move	$2,$5
	.option	pic0
	b	$L712
	.option	pic2
	move	$3,$4

$L730:
	beq	$3,$9,$L713
	nop

	bne	$7,$6,$L713
	addiu	$3,$3,1

	lbu	$6,0($3)
	nop
	beq	$6,$0,$L713
	addiu	$2,$2,1

$L712:
	lbu	$7,0($2)
	nop
	bne	$7,$0,$L730
	nop

$L713:
	lbu	$2,0($2)
	nop
	beq	$2,$6,$L719
	nop

	.option	pic0
	b	$L716
	.option	pic2
	addiu	$4,$4,1

$L731:
	jr	$31
	nop

$L718:
	jr	$31
	move	$2,$4

$L719:
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
	bc1t	$L742
	mov.d	$f0,$f12

	c.lt.d	$f2,$f12
	nop
	bc1f	$L743
	nop

	c.lt.d	$f14,$f2
	nop
	bc1t	$L735
	nop

$L743:
	jr	$31
	nop

$L742:
	c.lt.d	$f2,$f14
	nop
	bc1f	$L743
	nop

$L735:
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
	beq	$7,$0,$L760
	move	$2,$4

	sltu	$3,$5,$7
	bne	$3,$0,$L753
	subu	$5,$5,$7

	addu	$9,$4,$5
	sltu	$3,$9,$4
	bne	$3,$0,$L753
	addiu	$7,$7,-1

	lb	$12,0($6)
	.option	pic0
	b	$L750
	.option	pic2
	addiu	$6,$6,1

$L754:
	move	$2,$10
$L746:
	sltu	$3,$9,$2
	bne	$3,$0,$L753
	nop

$L750:
	lb	$3,0($2)
	nop
	bne	$3,$12,$L754
	addiu	$10,$2,1

	beq	$7,$0,$L760
	move	$4,$6

$L749:
	move	$3,$10
	.option	pic0
	b	$L747
	.option	pic2
	addu	$11,$10,$7

$L748:
	beq	$3,$11,$L760
	addiu	$4,$4,1

$L747:
	lbu	$8,0($3)
	lbu	$5,0($4)
	nop
	beq	$8,$5,$L748
	addiu	$3,$3,1

	sltu	$2,$9,$10
	bne	$2,$0,$L755
	nop

	lb	$3,0($10)
	nop
	bne	$3,$12,$L746
	addiu	$2,$10,1

	move	$3,$10
	move	$4,$6
	move	$10,$2
	.option	pic0
	b	$L749
	.option	pic2
	move	$2,$3

$L755:
	move	$2,$0
$L760:
	jr	$31
	nop

$L753:
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
	beq	$6,$0,$L762
	move	$17,$4

	lw	$25,%call16(memmove)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

$L762:
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
	bc1t	$L792
	mov.d	$f0,$f12

	lui	$2,%hi($LC6)
	lwc1	$f4,%lo($LC6+4)($2)
	nop
	lwc1	$f5,%lo($LC6)($2)
	nop
	c.le.d	$f4,$f12
	nop
	bc1f	$L793
	move	$3,$0

$L770:
	lui	$2,%hi($LC3)
	lwc1	$f6,%lo($LC3+4)($2)
	nop
	lwc1	$f7,%lo($LC3)($2)
	lui	$2,%hi($LC2)
	lwc1	$f4,%lo($LC2+4)($2)
	nop
	lwc1	$f5,%lo($LC2)($2)
	move	$2,$0
$L776:
	c.le.d	$f4,$f0
	addiu	$2,$2,1
	bc1t	$L776
	mul.d	$f0,$f0,$f6

$L777:
	beq	$3,$0,$L795
	sw	$2,0($6)

	neg.d	$f0,$f0
$L795:
	jr	$31
	nop

$L793:
	lui	$2,%hi($LC3)
	lwc1	$f4,%lo($LC3+4)($2)
	nop
	lwc1	$f5,%lo($LC3)($2)
	nop
	c.lt.d	$f12,$f4
	nop
	bc1f	$L789
	nop

	c.eq.d	$f12,$f2
	nop
	bc1f	$L782
	mov.d	$f6,$f12

$L789:
	jr	$31
	sw	$0,0($6)

$L792:
	lui	$2,%hi($LC4)
	lwc1	$f2,%lo($LC4+4)($2)
	nop
	lwc1	$f3,%lo($LC4)($2)
	nop
	c.le.d	$f12,$f2
	nop
	bc1f	$L794
	neg.d	$f6,$f12

	mov.d	$f0,$f6
	.option	pic0
	b	$L770
	.option	pic2
	li	$3,1			# 0x1

$L794:
	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5+4)($2)
	nop
	lwc1	$f3,%lo($LC5)($2)
	nop
	c.lt.d	$f2,$f12
	nop
	bc1f	$L789
	li	$3,1			# 0x1

$L771:
	lui	$2,%hi($LC7)
	lwc1	$f4,%lo($LC7+4)($2)
	mov.d	$f0,$f6
	lwc1	$f5,%lo($LC7)($2)
	move	$2,$0
$L778:
	c.lt.d	$f0,$f4
	addiu	$2,$2,-1
	bc1t	$L778
	add.d	$f0,$f0,$f0

	.option	pic0
	b	$L777
	nop

	.option	pic2
$L782:
	.option	pic0
	b	$L771
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
	beq	$2,$0,$L800
	move	$9,$0

	move	$2,$0
$L799:
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
	bne	$8,$0,$L799
	sll	$7,$7,1

	jr	$31
	move	$3,$9

$L800:
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
	beq	$2,$0,$L804
	li	$3,1			# 0x1

	.option	pic0
	b	$L803
	.option	pic2
	li	$2,32			# 0x20

$L807:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L805
	sll	$3,$3,1

	beq	$2,$0,$L806
	nop

$L803:
	bgez	$5,$L807
	addiu	$2,$2,-1

$L804:
	move	$2,$0
$L809:
	sltu	$7,$4,$5
	bne	$7,$0,$L808
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L808:
	srl	$3,$3,1
	bne	$3,$0,$L809
	srl	$5,$5,1

$L806:
	bne	$6,$0,$L818
	nop

	jr	$31
	nop

$L805:
	bne	$3,$0,$L804
	move	$2,$0

	.option	pic0
	b	$L806
	nop

	.option	pic2
$L818:
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
	beq	$4,$2,$L821
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

$L821:
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
	beq	$2,$6,$L835
	xor	$5,$5,$6

	lui	$28,%hi(__gnu_local_gp)
$L836:
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

$L835:
	bne	$3,$2,$L836
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
	beq	$4,$0,$L843
	move	$2,$0

$L839:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	bne	$4,$0,$L839
	sll	$5,$5,1

$L843:
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
	bne	$2,$0,$L848
	and	$10,$6,$10

	addu	$2,$5,$6
	sltu	$2,$2,$4
	beq	$2,$0,$L875
	addiu	$2,$6,-1

$L848:
	beq	$7,$0,$L876
	sll	$7,$7,3

	move	$2,$5
	move	$3,$4
	addu	$7,$7,$5
$L851:
	lw	$9,4($2)
	lw	$8,0($2)
	addiu	$2,$2,8
	sw	$9,4($3)
	sw	$8,0($3)
	bne	$2,$7,$L851
	addiu	$3,$3,8

	sltu	$2,$10,$6
	beq	$2,$0,$L879
	subu	$11,$6,$10

	addiu	$2,$11,-1
	sltu	$2,$2,7
	bne	$2,$0,$L874
	addiu	$7,$10,1

	addu	$3,$4,$10
	addu	$7,$5,$7
	subu	$7,$3,$7
	sltu	$7,$7,3
	bne	$7,$0,$L853
	addu	$2,$5,$10

	or	$7,$2,$3
	andi	$7,$7,0x3
	bne	$7,$0,$L853
	srl	$9,$11,2

	sll	$9,$9,2
	addu	$8,$2,$9
$L854:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L854
	addiu	$3,$3,4

	beq	$11,$9,$L879
	addu	$10,$10,$9

	addu	$2,$5,$10
	lb	$8,0($2)
	addiu	$2,$10,1
	addu	$7,$4,$10
	sltu	$3,$2,$6
	beq	$3,$0,$L879
	sb	$8,0($7)

	addu	$3,$5,$2
	lb	$3,0($3)
	addiu	$10,$10,2
	addu	$2,$4,$2
	sltu	$6,$10,$6
	beq	$6,$0,$L879
	sb	$3,0($2)

	addu	$5,$5,$10
	lb	$2,0($5)
	addu	$4,$4,$10
	jr	$31
	sb	$2,0($4)

$L875:
	beq	$6,$0,$L879
	li	$7,-1			# 0xffffffffffffffff

$L849:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L849
	sb	$6,0($3)

$L879:
	jr	$31
	nop

$L876:
	beq	$6,$0,$L878
	nop

$L874:
	addu	$3,$4,$10
	addu	$2,$5,$10
$L853:
	addu	$6,$5,$6
$L856:
	lb	$4,0($2)
	addiu	$2,$2,1
	sb	$4,0($3)
	bne	$2,$6,$L856
	addiu	$3,$3,1

	jr	$31
	nop

$L878:
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
	bne	$2,$0,$L884
	srl	$9,$6,1

	addu	$2,$5,$6
	sltu	$2,$2,$4
	beq	$2,$0,$L906
	addiu	$2,$6,-1

$L884:
	beq	$9,$0,$L883
	addiu	$2,$9,-1

	sltu	$2,$2,9
	bne	$2,$0,$L887
	or	$2,$5,$4

	andi	$2,$2,0x3
	bne	$2,$0,$L887
	addiu	$2,$5,2

	beq	$4,$2,$L887
	srl	$10,$6,2

	sll	$11,$10,2
	move	$2,$5
	move	$3,$4
	addu	$8,$5,$11
$L888:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L888
	addiu	$3,$3,4

	sll	$10,$10,1
	beq	$9,$10,$L883
	addu	$2,$5,$11

	lh	$2,0($2)
	addu	$11,$4,$11
	sh	$2,0($11)
$L883:
	andi	$2,$6,0x1
	beq	$2,$0,$L911
	addu	$5,$5,$6

$L909:
	lb	$2,-1($5)
	addu	$4,$4,$6
	jr	$31
	sb	$2,-1($4)

$L906:
	beq	$6,$0,$L911
	li	$7,-1			# 0xffffffffffffffff

$L885:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L885
	sb	$6,0($3)

$L911:
	jr	$31
	nop

$L887:
	sll	$9,$9,1
	move	$2,$5
	move	$3,$4
	addu	$9,$9,$5
$L890:
	lh	$7,0($2)
	addiu	$2,$2,2
	sh	$7,0($3)
	bne	$9,$2,$L890
	addiu	$3,$3,2

	andi	$2,$6,0x1
	bne	$2,$0,$L909
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
	bne	$2,$0,$L916
	and	$9,$6,$9

	addu	$2,$5,$6
	sltu	$2,$2,$4
	beq	$2,$0,$L943
	addiu	$2,$6,-1

$L916:
	beq	$8,$0,$L944
	sll	$8,$8,2

	move	$2,$5
	move	$3,$4
	addu	$8,$8,$5
$L919:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L919
	addiu	$3,$3,4

	sltu	$2,$9,$6
	beq	$2,$0,$L947
	subu	$11,$6,$9

	addiu	$2,$11,-1
	sltu	$2,$2,7
	bne	$2,$0,$L942
	addiu	$7,$9,1

	addu	$3,$4,$9
	addu	$7,$5,$7
	subu	$7,$3,$7
	sltu	$7,$7,3
	bne	$7,$0,$L921
	addu	$2,$5,$9

	or	$7,$2,$3
	andi	$7,$7,0x3
	bne	$7,$0,$L921
	srl	$10,$11,2

	sll	$10,$10,2
	addu	$8,$2,$10
$L922:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L922
	addiu	$3,$3,4

	beq	$11,$10,$L947
	addu	$9,$9,$10

	addu	$2,$5,$9
	lb	$8,0($2)
	addiu	$2,$9,1
	addu	$7,$4,$9
	sltu	$3,$2,$6
	beq	$3,$0,$L947
	sb	$8,0($7)

	addu	$3,$5,$2
	lb	$3,0($3)
	addiu	$9,$9,2
	addu	$2,$4,$2
	sltu	$6,$9,$6
	beq	$6,$0,$L947
	sb	$3,0($2)

	addu	$5,$5,$9
	lb	$2,0($5)
	addu	$4,$4,$9
	jr	$31
	sb	$2,0($4)

$L943:
	beq	$6,$0,$L947
	li	$7,-1			# 0xffffffffffffffff

$L917:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L917
	sb	$6,0($3)

$L947:
	jr	$31
	nop

$L944:
	beq	$6,$0,$L946
	nop

$L942:
	addu	$3,$4,$9
	addu	$2,$5,$9
$L921:
	addu	$6,$5,$6
$L924:
	lb	$4,0($2)
	addiu	$2,$2,1
	sb	$4,0($3)
	bne	$2,$6,$L924
	addiu	$3,$3,1

	jr	$31
	nop

$L946:
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
	bltz	$4,$L952
	cvt.d.w	$f0,$f0

	jr	$31
	nop

$L952:
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
	bgez	$4,$L956
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC8)
	lwc1	$f2,%lo($LC8+4)($2)
	nop
	lwc1	$f3,%lo($LC8)($2)
	nop
	add.d	$f0,$f0,$f2
$L956:
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
	bne	$2,$0,$L966
	nop

	sra	$2,$4,14
	bne	$2,$0,$L983
	nop

	sra	$2,$4,13
	bne	$2,$0,$L967
	nop

	sra	$2,$4,12
	bne	$2,$0,$L968
	nop

	sra	$2,$4,11
	bne	$2,$0,$L969
	nop

	sra	$2,$4,10
	bne	$2,$0,$L970
	nop

	sra	$2,$4,9
	bne	$2,$0,$L971
	nop

	sra	$2,$4,8
	bne	$2,$0,$L972
	nop

	sra	$2,$4,7
	bne	$2,$0,$L973
	nop

	sra	$2,$4,6
	bne	$2,$0,$L974
	nop

	sra	$2,$4,5
	bne	$2,$0,$L975
	nop

	sra	$2,$4,4
	bne	$2,$0,$L976
	nop

	sra	$2,$4,3
	bne	$2,$0,$L977
	nop

	sra	$2,$4,2
	bne	$2,$0,$L978
	nop

	sra	$2,$4,1
	bne	$2,$0,$L979
	nop

	bne	$4,$0,$L982
	li	$2,16			# 0x10

$L983:
	jr	$31
	nop

$L966:
	jr	$31
	move	$2,$0

$L977:
	jr	$31
	li	$2,12			# 0xc

$L982:
	jr	$31
	li	$2,15			# 0xf

$L967:
	jr	$31
	li	$2,2			# 0x2

$L968:
	jr	$31
	li	$2,3			# 0x3

$L969:
	jr	$31
	li	$2,4			# 0x4

$L970:
	jr	$31
	li	$2,5			# 0x5

$L971:
	jr	$31
	li	$2,6			# 0x6

$L972:
	jr	$31
	li	$2,7			# 0x7

$L973:
	jr	$31
	li	$2,8			# 0x8

$L974:
	jr	$31
	li	$2,9			# 0x9

$L975:
	jr	$31
	li	$2,10			# 0xa

$L976:
	jr	$31
	li	$2,11			# 0xb

$L978:
	jr	$31
	li	$2,13			# 0xd

$L979:
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
	bne	$2,$0,$L987
	nop

	andi	$2,$4,0x2
	bne	$2,$0,$L988
	nop

	andi	$2,$4,0x4
	bne	$2,$0,$L989
	nop

	andi	$2,$4,0x8
	bne	$2,$0,$L990
	nop

	andi	$2,$4,0x10
	bne	$2,$0,$L991
	nop

	andi	$2,$4,0x20
	bne	$2,$0,$L992
	nop

	andi	$2,$4,0x40
	bne	$2,$0,$L993
	nop

	andi	$2,$4,0x80
	bne	$2,$0,$L994
	nop

	andi	$2,$4,0x100
	bne	$2,$0,$L995
	nop

	andi	$2,$4,0x200
	bne	$2,$0,$L996
	nop

	andi	$2,$4,0x400
	bne	$2,$0,$L997
	nop

	andi	$2,$4,0x800
	bne	$2,$0,$L998
	nop

	andi	$2,$4,0x1000
	bne	$2,$0,$L999
	nop

	andi	$2,$4,0x2000
	bne	$2,$0,$L1000
	nop

	andi	$2,$4,0x4000
	bne	$2,$0,$L1001
	sra	$4,$4,15

	bne	$4,$0,$L1004
	li	$2,16			# 0x10

	jr	$31
	nop

$L987:
	jr	$31
	move	$2,$0

$L988:
	jr	$31
	li	$2,1			# 0x1

$L999:
	jr	$31
	li	$2,12			# 0xc

$L1004:
	jr	$31
	li	$2,15			# 0xf

$L989:
	jr	$31
	li	$2,2			# 0x2

$L990:
	jr	$31
	li	$2,3			# 0x3

$L991:
	jr	$31
	li	$2,4			# 0x4

$L992:
	jr	$31
	li	$2,5			# 0x5

$L993:
	jr	$31
	li	$2,6			# 0x6

$L994:
	jr	$31
	li	$2,7			# 0x7

$L995:
	jr	$31
	li	$2,8			# 0x8

$L996:
	jr	$31
	li	$2,9			# 0x9

$L997:
	jr	$31
	li	$2,10			# 0xa

$L998:
	jr	$31
	li	$2,11			# 0xb

$L1000:
	jr	$31
	li	$2,13			# 0xd

$L1001:
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
	bc1t	$L1012
	nop

	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	jr	$31
	nop

$L1012:
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
	beq	$4,$0,$L1021
	move	$2,$0

$L1017:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	bne	$4,$0,$L1017
	sll	$5,$5,1

$L1021:
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
	beq	$4,$0,$L1029
	move	$2,$0

	beq	$5,$0,$L1028
	nop

$L1024:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	srl	$5,$5,1
	addu	$2,$2,$3
	bne	$5,$0,$L1024
	sll	$4,$4,1

$L1029:
	jr	$31
	nop

$L1028:
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
	beq	$2,$0,$L1032
	li	$3,1			# 0x1

	.option	pic0
	b	$L1031
	.option	pic2
	li	$2,32			# 0x20

$L1035:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1033
	sll	$3,$3,1

	beq	$2,$0,$L1034
	nop

$L1031:
	bgez	$5,$L1035
	addiu	$2,$2,-1

$L1032:
	move	$2,$0
$L1037:
	sltu	$7,$4,$5
	bne	$7,$0,$L1036
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L1036:
	srl	$3,$3,1
	bne	$3,$0,$L1037
	srl	$5,$5,1

$L1034:
	bne	$6,$0,$L1046
	nop

	jr	$31
	nop

$L1033:
	bne	$3,$0,$L1032
	move	$2,$0

	.option	pic0
	b	$L1034
	nop

	.option	pic2
$L1046:
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
	bc1t	$L1050
	nop

	c.lt.s	$f14,$f12
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
	bc1t	$L1057
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L1058
	li	$2,1			# 0x1

	jr	$31
	nop

$L1058:
	jr	$31
	move	$2,$0

$L1057:
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
	bltz	$5,$L1077
	nop

	beq	$5,$0,$L1069
	move	$7,$0

$L1065:
	li	$6,32			# 0x20
	.option	pic0
	b	$L1068
	.option	pic2
	move	$2,$0

$L1078:
	beq	$6,$0,$L1067
	nop

$L1068:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addiu	$6,$6,-1
	sra	$5,$5,1
	andi	$6,$6,0x00ff
	addu	$2,$2,$3
	bne	$5,$0,$L1078
	sll	$4,$4,1

$L1067:
	beq	$7,$0,$L1079
	nop

	jr	$31
	subu	$2,$0,$2

$L1069:
	move	$2,$0
$L1079:
	jr	$31
	nop

$L1077:
	subu	$5,$0,$5
	.option	pic0
	b	$L1065
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
	bltz	$4,$L1098
	move	$2,$0

	li	$2,1			# 0x1
	move	$8,$0
$L1081:
	bgez	$5,$L1082
	nop

	subu	$5,$0,$5
	move	$8,$2
$L1082:
	sltu	$2,$5,$4
	move	$7,$4
	beq	$2,$0,$L1084
	li	$3,1			# 0x1

	.option	pic0
	b	$L1083
	.option	pic2
	li	$2,32			# 0x20

$L1086:
	beq	$2,$0,$L1087
	nop

$L1083:
	sll	$5,$5,1
	sltu	$6,$5,$4
	addiu	$2,$2,-1
	bne	$6,$0,$L1086
	sll	$3,$3,1

$L1087:
	beq	$3,$0,$L1085
	move	$2,$0

$L1084:
	move	$2,$0
$L1089:
	sltu	$4,$7,$5
	bne	$4,$0,$L1088
	nop

	subu	$7,$7,$5
	or	$2,$2,$3
$L1088:
	srl	$3,$3,1
	bne	$3,$0,$L1089
	srl	$5,$5,1

$L1085:
	beq	$8,$0,$L1099
	nop

	subu	$2,$0,$2
$L1099:
	jr	$31
	nop

$L1098:
	subu	$4,$0,$4
	.option	pic0
	b	$L1081
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
	bltz	$4,$L1118
	nop

	move	$8,$0
$L1101:
	bgez	$5,$L1102
	move	$2,$4

	subu	$5,$0,$5
$L1102:
	sltu	$3,$5,$4
	beq	$3,$0,$L1119
	nop

	li	$6,32			# 0x20
	.option	pic0
	b	$L1103
	.option	pic2
	li	$3,1			# 0x1

$L1106:
	beq	$6,$0,$L1107
	nop

$L1103:
	sll	$5,$5,1
	sltu	$7,$5,$4
	addiu	$6,$6,-1
	bne	$7,$0,$L1106
	sll	$3,$3,1

$L1107:
	beq	$3,$0,$L1120
	nop

$L1109:
	sltu	$4,$2,$5
	bne	$4,$0,$L1108
	srl	$3,$3,1

	subu	$2,$2,$5
$L1108:
	bne	$3,$0,$L1109
	srl	$5,$5,1

$L1105:
	beq	$8,$0,$L1121
	nop

	subu	$2,$0,$2
$L1121:
	jr	$31
	nop

$L1118:
	subu	$4,$0,$4
	.option	pic0
	b	$L1101
	.option	pic2
	li	$8,1			# 0x1

$L1120:
	.option	pic0
	b	$L1105
	.option	pic2
	move	$2,$4

$L1119:
	.option	pic0
	b	$L1109
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
	beq	$3,$0,$L1236
	move	$2,$4

	sll	$3,$5,16
	sra	$3,$3,16
	bltz	$3,$L1125
	sll	$3,$5,1

	andi	$3,$3,0xffff
	sltu	$4,$3,$4
	beq	$4,$0,$L1126
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1127
	li	$9,1			# 0x1

	sll	$3,$5,2
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1128
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1129
	li	$9,2			# 0x2

	sll	$3,$5,3
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1130
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1131
	li	$9,4			# 0x4

	sll	$3,$5,4
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1132
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1133
	li	$9,8			# 0x8

	sll	$3,$5,5
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1134
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1135
	li	$9,16			# 0x10

	sll	$3,$5,6
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1136
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1137
	li	$9,32			# 0x20

	sll	$3,$5,7
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1138
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1139
	li	$9,64			# 0x40

	sll	$3,$5,8
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1140
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1141
	li	$9,128			# 0x80

	sll	$3,$5,9
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1142
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1143
	li	$9,256			# 0x100

	sll	$3,$5,10
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1144
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1145
	li	$9,512			# 0x200

	sll	$3,$5,11
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1146
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1147
	li	$9,1024			# 0x400

	sll	$3,$5,12
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1148
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1149
	li	$9,2048			# 0x800

	sll	$3,$5,13
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1150
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1151
	li	$9,4096			# 0x1000

	sll	$3,$5,14
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1152
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1153
	li	$9,8192			# 0x2000

	sll	$5,$5,15
	andi	$7,$5,0xffff
	sltu	$3,$7,$2
	beq	$3,$0,$L1154
	nop

	bne	$7,$0,$L1237
	li	$5,16384			# 0x4000

$L1155:
	bne	$6,$0,$L1238
	nop

	jr	$31
	move	$2,$7

$L1238:
	jr	$31
	nop

$L1142:
	sltu	$4,$2,$3
	bne	$4,$0,$L1174
	li	$8,512			# 0x200

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$7,512			# 0x200
$L1157:
	srl	$5,$8,2
	beq	$5,$0,$L1155
	srl	$4,$3,2

	sltu	$9,$2,$4
	bne	$9,$0,$L1158
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1158:
	srl	$5,$8,3
	beq	$5,$0,$L1155
	srl	$4,$3,3

	sltu	$9,$2,$4
	bne	$9,$0,$L1159
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1159:
	srl	$5,$8,4
	beq	$5,$0,$L1155
	srl	$4,$3,4

	sltu	$9,$2,$4
	bne	$9,$0,$L1160
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1160:
	srl	$5,$8,5
	beq	$5,$0,$L1155
	srl	$4,$3,5

	sltu	$9,$2,$4
	bne	$9,$0,$L1161
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1161:
	srl	$5,$8,6
	beq	$5,$0,$L1155
	srl	$4,$3,6

	sltu	$9,$2,$4
	bne	$9,$0,$L1162
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1162:
	srl	$5,$8,7
	beq	$5,$0,$L1155
	srl	$4,$3,7

	sltu	$9,$2,$4
	bne	$9,$0,$L1163
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1163:
	srl	$5,$8,8
	beq	$5,$0,$L1155
	srl	$4,$3,8

	sltu	$9,$2,$4
	bne	$9,$0,$L1164
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1164:
	srl	$5,$8,9
	beq	$5,$0,$L1155
	srl	$4,$3,9

	sltu	$9,$2,$4
	bne	$9,$0,$L1165
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1165:
	srl	$5,$8,10
	beq	$5,$0,$L1155
	srl	$4,$3,10

	sltu	$9,$2,$4
	bne	$9,$0,$L1166
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1166:
	srl	$5,$8,11
	beq	$5,$0,$L1155
	srl	$4,$3,11

	sltu	$9,$2,$4
	bne	$9,$0,$L1167
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1167:
	srl	$5,$8,12
	beq	$5,$0,$L1155
	srl	$4,$3,12

	sltu	$9,$2,$4
	bne	$9,$0,$L1168
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1168:
	srl	$5,$8,13
	beq	$5,$0,$L1155
	srl	$4,$3,13

	sltu	$9,$2,$4
	bne	$9,$0,$L1169
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1169:
	srl	$5,$8,14
	beq	$5,$0,$L1155
	srl	$4,$3,14

	sltu	$9,$2,$4
	bne	$9,$0,$L1170
	subu	$4,$2,$4

	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1170:
	li	$4,16384			# 0x4000
	beq	$8,$4,$L1155
	srl	$3,$3,15

	sltu	$4,$2,$3
	bne	$4,$0,$L1178
	subu	$3,$2,$3

	andi	$2,$3,0xffff
	.option	pic0
	b	$L1155
	.option	pic2
	ori	$7,$7,0x1

$L1178:
	.option	pic0
	b	$L1155
	.option	pic2
	move	$2,$0

$L1236:
	beq	$5,$4,$L1176
	nop

	.option	pic0
	b	$L1155
	.option	pic2
	move	$7,$0

$L1125:
	subu	$2,$4,$5
	andi	$2,$2,0xffff
	.option	pic0
	b	$L1155
	.option	pic2
	li	$7,1			# 0x1

$L1126:
	sltu	$4,$2,$3
	bne	$4,$0,$L1180
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,2			# 0x2
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,2			# 0x2

$L1127:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	andi	$5,$5,0x7fff
	li	$8,2			# 0x2
	li	$7,2			# 0x2
$L1175:
	sltu	$4,$2,$5
	bne	$4,$0,$L1157
	subu	$5,$2,$5

	andi	$2,$5,0xffff
	.option	pic0
	b	$L1157
	.option	pic2
	or	$7,$7,$9

$L1128:
	sltu	$4,$2,$3
	bne	$4,$0,$L1181
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,4			# 0x4
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,4			# 0x4

$L1129:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,4			# 0x4
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,4			# 0x4

$L1130:
	sltu	$4,$2,$3
	bne	$4,$0,$L1182
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,8			# 0x8
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,8			# 0x8

$L1131:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,8			# 0x8
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,8			# 0x8

$L1132:
	sltu	$4,$2,$3
	bne	$4,$0,$L1183
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,16			# 0x10
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,16			# 0x10

$L1133:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,16			# 0x10
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,16			# 0x10

$L1134:
	sltu	$4,$2,$3
	bne	$4,$0,$L1184
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,32			# 0x20
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,32			# 0x20

$L1135:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,32			# 0x20
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,32			# 0x20

$L1136:
	sltu	$4,$2,$3
	bne	$4,$0,$L1185
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,64			# 0x40
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,64			# 0x40

$L1137:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,64			# 0x40
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,64			# 0x40

$L1138:
	sltu	$4,$2,$3
	bne	$4,$0,$L1186
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,128			# 0x80
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,128			# 0x80

$L1139:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,128			# 0x80
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,128			# 0x80

$L1141:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,256			# 0x100
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,256			# 0x100

$L1143:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,512			# 0x200
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,512			# 0x200

$L1176:
	li	$7,1			# 0x1
	.option	pic0
	b	$L1155
	.option	pic2
	move	$2,$0

$L1180:
	li	$8,2			# 0x2
$L1174:
	srl	$9,$8,1
	srl	$5,$3,1
	.option	pic0
	b	$L1175
	.option	pic2
	move	$7,$0

$L1145:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,1024			# 0x400
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,1024			# 0x400

$L1147:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,2048			# 0x800
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,2048			# 0x800

$L1181:
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,4			# 0x4

$L1182:
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,8			# 0x8

$L1149:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,4096			# 0x1000
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,4096			# 0x1000

$L1151:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,8192			# 0x2000
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,8192			# 0x2000

$L1183:
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,16			# 0x10

$L1184:
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,32			# 0x20

$L1153:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,16384			# 0x4000
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,16384			# 0x4000

$L1154:
	sll	$3,$2,16
	sra	$3,$3,16
	bltz	$3,$L1179
	nop

	li	$3,32768			# 0x8000
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,32768			# 0x8000

$L1185:
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,64			# 0x40

$L1237:
	addiu	$2,$2,-32768
	andi	$2,$2,0xffff
	li	$9,16384			# 0x4000
	li	$3,32768			# 0x8000
	li	$8,32768			# 0x8000
	.option	pic0
	b	$L1175
	.option	pic2
	li	$7,32768			# 0x8000

$L1186:
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,128			# 0x80

$L1140:
	sltu	$4,$2,$3
	bne	$4,$0,$L1187
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,256			# 0x100
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,256			# 0x100

$L1179:
	li	$3,32768			# 0x8000
	li	$8,32768			# 0x8000
	li	$7,32768			# 0x8000
	.option	pic0
	b	$L1157
	.option	pic2
	move	$2,$0

$L1187:
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,256			# 0x100

$L1144:
	sltu	$4,$2,$3
	bne	$4,$0,$L1189
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,1024			# 0x400
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,1024			# 0x400

$L1152:
	sltu	$4,$2,$3
	bne	$4,$0,$L1193
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,16384			# 0x4000
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,16384			# 0x4000

$L1189:
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,1024			# 0x400

$L1193:
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,16384			# 0x4000

$L1150:
	sltu	$4,$2,$3
	bne	$4,$0,$L1192
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,8192			# 0x2000
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,8192			# 0x2000

$L1148:
	sltu	$4,$2,$3
	bne	$4,$0,$L1191
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,4096			# 0x1000
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,4096			# 0x1000

$L1146:
	sltu	$4,$2,$3
	bne	$4,$0,$L1190
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,2048			# 0x800
	.option	pic0
	b	$L1157
	.option	pic2
	li	$7,2048			# 0x800

$L1192:
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,8192			# 0x2000

$L1191:
	.option	pic0
	b	$L1174
	.option	pic2
	li	$8,4096			# 0x1000

$L1190:
	.option	pic0
	b	$L1174
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
	beq	$2,$0,$L1241
	li	$3,1			# 0x1

	.option	pic0
	b	$L1240
	.option	pic2
	li	$2,32			# 0x20

$L1244:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1242
	sll	$3,$3,1

	beq	$2,$0,$L1243
	nop

$L1240:
	bgez	$5,$L1244
	addiu	$2,$2,-1

$L1241:
	move	$2,$0
$L1246:
	sltu	$7,$4,$5
	bne	$7,$0,$L1245
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L1245:
	srl	$3,$3,1
	bne	$3,$0,$L1246
	srl	$5,$5,1

$L1243:
	bne	$6,$0,$L1255
	nop

	jr	$31
	nop

$L1242:
	bne	$3,$0,$L1241
	move	$2,$0

	.option	pic0
	b	$L1243
	nop

	.option	pic2
$L1255:
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
	beq	$2,$0,$L1257
	sll	$2,$5,$6

	move	$5,$0
	jr	$31
	move	$3,$5

$L1257:
	beq	$6,$0,$L1260
	nop

	subu	$3,$0,$6
	srl	$3,$5,$3
	sll	$2,$4,$6
	sll	$5,$5,$6
	or	$2,$3,$2
	jr	$31
	move	$3,$5

$L1260:
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
	beq	$2,$0,$L1262
	sra	$2,$4,31

	sra	$5,$4,$6
	jr	$31
	move	$3,$5

$L1262:
	beq	$6,$0,$L1265
	nop

	subu	$3,$0,$6
	sll	$3,$4,$3
	srl	$5,$5,$6
	or	$5,$3,$5
	sra	$2,$4,$6
	jr	$31
	move	$3,$5

$L1265:
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
	bne	$7,$0,$L1269
	addu	$5,$5,$6

	subu	$2,$2,$3
	addu	$4,$4,$5
	jr	$31
	addu	$2,$2,$4

$L1269:
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
	bne	$2,$0,$L1275
	slt	$4,$6,$4

	bne	$4,$0,$L1274
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1275
	sltu	$5,$7,$5

	bne	$5,$0,$L1276
	nop

	jr	$31
	li	$2,1			# 0x1

$L1275:
	jr	$31
	move	$2,$0

$L1274:
	jr	$31
	li	$2,2			# 0x2

$L1276:
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
	bne	$2,$0,$L1279
	slt	$4,$6,$4

	bne	$4,$0,$L1280
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1281
	nop

	jr	$31
	sltu	$2,$7,$5

$L1279:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1281:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1280:
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
	beq	$2,$0,$L1284
	nop

	srl	$5,$4,$6
	move	$4,$0
$L1287:
	move	$2,$4
	jr	$31
	move	$3,$5

$L1284:
	beq	$6,$0,$L1287
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
	beq	$2,$0,$L1296
	move	$2,$6

$L1298:
	mul.d	$f0,$f0,$f12
$L1296:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L1297
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$4,$0,$L1298
	addu	$3,$3,$2

	sra	$2,$3,1
$L1305:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$4,$0,$L1298
	addu	$3,$3,$2

	.option	pic0
	b	$L1305
	.option	pic2
	sra	$2,$3,1

$L1297:
	bltz	$6,$L1304
	nop

	jr	$31
	nop

$L1304:
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
	beq	$2,$0,$L1307
	move	$2,$5

$L1309:
	mul.s	$f0,$f0,$f12
$L1307:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L1308
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$4,$0,$L1309
	addu	$3,$3,$2

	sra	$2,$3,1
$L1316:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$4,$0,$L1309
	addu	$3,$3,$2

	.option	pic0
	b	$L1316
	.option	pic2
	sra	$2,$3,1

$L1308:
	bltz	$5,$L1315
	nop

	jr	$31
	nop

$L1315:
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
	bne	$2,$0,$L1321
	sltu	$4,$6,$4

	bne	$4,$0,$L1320
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1321
	sltu	$5,$7,$5

	bne	$5,$0,$L1322
	nop

	jr	$31
	li	$2,1			# 0x1

$L1321:
	jr	$31
	move	$2,$0

$L1320:
	jr	$31
	li	$2,2			# 0x2

$L1322:
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
	bne	$2,$0,$L1325
	sltu	$4,$6,$4

	bne	$4,$0,$L1326
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1327
	nop

	jr	$31
	sltu	$2,$7,$5

$L1325:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1327:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1326:
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
