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
	c.un.d	$f12,$f12
	nop
	bc1t	$L174
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L175
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L178
	nop

	jr	$31
	sub.d	$f0,$f12,$f14

$L178:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	jr	$31
	nop

$L174:
	jr	$31
	mov.d	$f0,$f12

$L175:
	jr	$31
	mov.d	$f0,$f14

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
	c.un.s	$f12,$f12
	nop
	bc1t	$L182
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L183
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L186
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L186:
	mtc1	$0,$f0
	jr	$31
	nop

$L182:
	jr	$31
	mov.s	$f0,$f12

$L183:
	jr	$31
	mov.s	$f0,$f14

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
	c.un.d	$f12,$f12
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	swc1	$f15,8($sp)
	bc1t	$L198
	mov.d	$f0,$f14

	c.un.d	$f14,$f14
	nop
	bc1t	$L194
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	lw	$3,8($sp)
	and	$2,$2,$4
	and	$3,$3,$4
	beq	$2,$3,$L189
	nop

	bne	$2,$0,$L198
	nop

$L194:
	jr	$31
	mov.d	$f0,$f12

$L189:
	c.lt.d	$f12,$f14
	nop
	bc1f	$L198
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

$L198:
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
	c.un.s	$f12,$f12
	swc1	$f12,0($sp)
	swc1	$f14,4($sp)
	bc1t	$L210
	mov.s	$f0,$f14

	c.un.s	$f14,$f14
	nop
	bc1t	$L206
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	lw	$3,4($sp)
	and	$2,$2,$4
	and	$3,$3,$4
	beq	$2,$3,$L201
	nop

	bne	$2,$0,$L210
	nop

$L206:
	jr	$31
	mov.s	$f0,$f12

$L201:
	c.lt.s	$f12,$f14
	nop
	bc1f	$L210
	mov.s	$f0,$f12

	jr	$31
	mov.s	$f0,$f14

$L210:
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
	c.un.d	$f12,$f12
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	swc1	$f15,8($sp)
	bc1t	$L222
	mov.d	$f0,$f14

	c.un.d	$f14,$f14
	nop
	bc1t	$L218
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	lw	$3,8($sp)
	and	$2,$2,$4
	and	$3,$3,$4
	beq	$2,$3,$L213
	nop

	bne	$2,$0,$L222
	nop

$L218:
	jr	$31
	mov.d	$f0,$f12

$L213:
	c.lt.d	$f12,$f14
	nop
	bc1f	$L222
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

$L222:
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
	c.un.d	$f12,$f12
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	swc1	$f15,8($sp)
	bc1t	$L235
	mov.d	$f0,$f14

	c.un.d	$f14,$f14
	nop
	bc1t	$L230
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	lw	$3,8($sp)
	and	$2,$2,$4
	and	$3,$3,$4
	beq	$2,$3,$L225
	nop

	bne	$2,$0,$L231
	nop

$L235:
	jr	$31
	nop

$L225:
	c.lt.d	$f12,$f14
	nop
	bc1t	$L235
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

$L231:
	jr	$31
	mov.d	$f0,$f12

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
	c.un.s	$f12,$f12
	swc1	$f12,0($sp)
	swc1	$f14,4($sp)
	bc1t	$L248
	mov.s	$f0,$f14

	c.un.s	$f14,$f14
	nop
	bc1t	$L243
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	lw	$3,4($sp)
	and	$2,$2,$4
	and	$3,$3,$4
	beq	$2,$3,$L238
	nop

	bne	$2,$0,$L244
	nop

$L248:
	jr	$31
	nop

$L238:
	c.lt.s	$f12,$f14
	nop
	bc1t	$L248
	mov.s	$f0,$f12

	jr	$31
	mov.s	$f0,$f14

$L244:
	jr	$31
	mov.s	$f0,$f12

$L243:
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
	c.un.d	$f12,$f12
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	swc1	$f15,8($sp)
	bc1t	$L261
	mov.d	$f0,$f14

	c.un.d	$f14,$f14
	nop
	bc1t	$L256
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	lw	$3,8($sp)
	and	$2,$2,$4
	and	$3,$3,$4
	beq	$2,$3,$L251
	nop

	bne	$2,$0,$L257
	nop

$L261:
	jr	$31
	nop

$L251:
	c.lt.d	$f12,$f14
	nop
	bc1t	$L261
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

$L257:
	jr	$31
	mov.d	$f0,$f12

$L256:
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
	beq	$4,$0,$L263
	move	$5,$2

	lui	$6,%hi(digits)
	addiu	$6,$6,%lo(digits)
$L264:
	andi	$3,$4,0x3f
	addu	$3,$6,$3
	lbu	$3,0($3)
	srl	$4,$4,6
	sb	$3,0($5)
	bne	$4,$0,$L264
	addiu	$5,$5,1

$L263:
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
	beq	$5,$0,$L275
	nop

	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L276
	nop

	sw	$4,4($2)
$L276:
	jr	$31
	nop

$L275:
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
	beq	$2,$0,$L278
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L278:
	lw	$3,4($4)
	nop
	beq	$3,$0,$L286
	nop

	sw	$2,0($3)
$L286:
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
	beq	$19,$0,$L288
	move	$18,$7

	move	$16,$5
	.option	pic0
	b	$L290
	.option	pic2
	move	$17,$0

$L303:
	beq	$19,$17,$L288
	addu	$16,$16,$18

$L290:
	move	$5,$16
	move	$25,$22
	jalr	$25
	move	$4,$20

	move	$21,$16
	lw	$28,16($sp)
	bne	$2,$0,$L303
	addiu	$17,$17,1

$L287:
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

$L288:
	mult	$18,$19
	addiu	$19,$19,1
	sw	$19,0($23)
	mflo	$21
	beq	$18,$0,$L287
	addu	$21,$fp,$21

	lw	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$21

	.option	pic0
	b	$L287
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
	beq	$20,$0,$L305
	sw	$16,24($sp)

	move	$18,$4
	move	$19,$7
	move	$16,$5
	.option	pic0
	b	$L307
	.option	pic2
	move	$17,$0

$L316:
	beq	$20,$17,$L305
	addu	$16,$16,$19

$L307:
	move	$5,$16
	move	$25,$21
	jalr	$25
	move	$4,$18

	move	$22,$16
	bne	$2,$0,$L316
	addiu	$17,$17,1

$L304:
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

$L305:
	.option	pic0
	b	$L304
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
	bltz	$4,$L319
	move	$2,$4

	jr	$31
	nop

$L319:
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
$L329:
	lb	$5,0($4)
	nop
	addiu	$2,$5,-9
	beq	$5,$3,$L323
	sltu	$2,$2,5

	bne	$2,$0,$L323
	nop

	li	$2,43			# 0x2b
	beq	$5,$2,$L324
	li	$2,45			# 0x2d

	bne	$5,$2,$L340
	addiu	$6,$5,-48

	lb	$5,1($4)
	nop
	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,$L334
	addiu	$4,$4,1

	li	$8,1			# 0x1
$L327:
	move	$2,$0
$L331:
	sll	$3,$2,2
	lb	$5,1($4)
	addu	$3,$3,$2
	sll	$3,$3,1
	move	$7,$6
	subu	$2,$3,$6
	addiu	$6,$5,-48
	sltu	$5,$6,10
	bne	$5,$0,$L331
	addiu	$4,$4,1

	bne	$8,$0,$L341
	nop

	jr	$31
	subu	$2,$7,$3

$L323:
	.option	pic0
	b	$L329
	.option	pic2
	addiu	$4,$4,1

$L340:
	sltu	$2,$6,10
	bne	$2,$0,$L327
	move	$8,$0

$L339:
	jr	$31
	move	$2,$0

$L334:
	move	$2,$0
$L341:
	jr	$31
	nop

$L324:
	lb	$5,1($4)
	move	$8,$0
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,$L327
	addiu	$4,$4,1

	.option	pic0
	b	$L339
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
$L347:
	lb	$5,0($4)
	nop
	addiu	$2,$5,-9
	beq	$5,$3,$L343
	sltu	$2,$2,5

	bne	$2,$0,$L343
	nop

	li	$2,43			# 0x2b
	beq	$5,$2,$L344
	li	$2,45			# 0x2d

	beq	$5,$2,$L345
	li	$8,1			# 0x1

	addiu	$6,$5,-48
	sltu	$2,$6,10
	beq	$2,$0,$L359
	nop

$L355:
	move	$8,$0
$L348:
	move	$2,$0
$L351:
	sll	$3,$2,2
	lb	$5,1($4)
	addu	$3,$3,$2
	sll	$3,$3,1
	move	$7,$6
	subu	$2,$3,$6
	addiu	$6,$5,-48
	sltu	$5,$6,10
	bne	$5,$0,$L351
	addiu	$4,$4,1

	bne	$8,$0,$L360
	nop

	jr	$31
	subu	$2,$7,$3

$L343:
	.option	pic0
	b	$L347
	.option	pic2
	addiu	$4,$4,1

$L345:
	lb	$5,1($4)
	nop
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,$L348
	addiu	$4,$4,1

$L359:
	jr	$31
	move	$2,$0

$L344:
	lb	$5,1($4)
	nop
	addiu	$6,$5,-48
	sltu	$2,$6,10
	bne	$2,$0,$L355
	addiu	$4,$4,1

	move	$2,$0
$L360:
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
$L368:
	lb	$2,0($4)
	nop
	addiu	$3,$2,-9
	beq	$2,$5,$L362
	sltu	$3,$3,5

	bne	$3,$0,$L362
	nop

	li	$3,43			# 0x2b
	beq	$2,$3,$L363
	li	$3,45			# 0x2d

	bne	$2,$3,$L379
	addiu	$7,$2,-48

	lb	$2,1($4)
	nop
	addiu	$7,$2,-48
	sltu	$2,$7,10
	beq	$2,$0,$L373
	addiu	$4,$4,1

	li	$12,1			# 0x1
$L366:
	move	$2,$0
	move	$3,$0
$L370:
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
	bne	$9,$0,$L370
	subu	$2,$2,$10

	bne	$12,$0,$L381
	subu	$8,$8,$5

	subu	$3,$11,$6
	sltu	$11,$11,$3
	jr	$31
	subu	$2,$8,$11

$L362:
	.option	pic0
	b	$L368
	.option	pic2
	addiu	$4,$4,1

$L379:
	sltu	$2,$7,10
	bne	$2,$0,$L366
	move	$12,$0

	move	$2,$0
$L380:
	jr	$31
	move	$3,$0

$L373:
	move	$2,$0
	move	$3,$0
$L381:
	jr	$31
	nop

$L363:
	lb	$2,1($4)
	move	$12,$0
	addiu	$7,$2,-48
	sltu	$2,$7,10
	bne	$2,$0,$L366
	addiu	$4,$4,1

	.option	pic0
	b	$L380
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
	beq	$6,$0,$L383
	sw	$16,24($sp)

	move	$16,$6
	move	$20,$4
	move	$19,$5
	.option	pic0
	b	$L386
	.option	pic2
	move	$18,$7

$L396:
	beq	$2,$0,$L382
	subu	$16,$16,$22

	beq	$16,$0,$L383
	addu	$19,$17,$18

$L386:
	srl	$22,$16,1
$L397:
	mult	$22,$18
	move	$4,$20
	move	$25,$21
	addiu	$16,$16,-1
	mflo	$17
	addu	$17,$19,$17
	jalr	$25
	move	$5,$17

	bgez	$2,$L396
	nop

	move	$16,$22
	bne	$16,$0,$L397
	srl	$22,$16,1

$L383:
	move	$17,$0
$L382:
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
	beq	$6,$0,$L403
	move	$17,$7

$L399:
	sra	$23,$16,1
$L412:
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

	beq	$2,$0,$L398
	nop

	blez	$2,$L401
	nop

	bne	$16,$0,$L399
	addu	$18,$22,$17

$L403:
	move	$22,$0
$L398:
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

$L401:
	beq	$23,$0,$L403
	move	$16,$23

	.option	pic0
	b	$L412
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
	bltz	$4,$L417
	move	$3,$5

	jr	$31
	nop

$L417:
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
	bltz	$4,$L424
	move	$2,$4

	jr	$31
	nop

$L424:
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
	bltz	$4,$L431
	move	$3,$5

	jr	$31
	nop

$L431:
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
	bne	$2,$0,$L437
	nop

	jr	$31
	nop

$L439:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L440
	addiu	$4,$4,4

$L437:
	bne	$5,$2,$L439
	move	$2,$4

	jr	$31
	nop

$L440:
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
$L445:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L444
	addiu	$4,$4,4

	bne	$2,$0,$L445
	addiu	$5,$5,4

$L444:
	slt	$4,$2,$3
	bne	$4,$0,$L447
	nop

	jr	$31
	slt	$2,$3,$2

$L447:
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
$L450:
	lw	$6,0($5)
	addiu	$3,$3,4
	addiu	$5,$5,4
	bne	$6,$0,$L450
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
	beq	$2,$0,$L455
	nop

	move	$2,$4
$L454:
	lw	$3,4($2)
	nop
	bne	$3,$0,$L454
	addiu	$2,$2,4

	subu	$2,$2,$4
	jr	$31
	sra	$2,$2,2

$L455:
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
	b	$L466
	nop

	.option	pic2
$L467:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L470
	addiu	$6,$6,-1

	beq	$2,$0,$L469
	addiu	$4,$4,4

	addiu	$5,$5,4
$L466:
	bne	$6,$0,$L467
	move	$2,$0

	jr	$31
	nop

$L470:
	lw	$3,0($5)
	nop
$L469:
	slt	$4,$2,$3
	bne	$4,$0,$L468
	nop

	jr	$31
	slt	$2,$3,$2

$L468:
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
	bne	$6,$0,$L472
	move	$2,$0

	.option	pic0
	b	$L478
	nop

	.option	pic2
$L474:
	beq	$6,$0,$L475
	addiu	$4,$4,4

$L472:
	lw	$2,0($4)
	nop
	bne	$2,$5,$L474
	addiu	$6,$6,-1

	jr	$31
	move	$2,$4

$L475:
	jr	$31
	move	$2,$0

$L478:
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
	b	$L489
	nop

	.option	pic2
$L491:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L490
	addiu	$6,$6,-1

	addiu	$4,$4,4
	addiu	$5,$5,4
$L489:
	bne	$6,$0,$L491
	move	$2,$0

	jr	$31
	nop

$L490:
	slt	$4,$2,$3
	bne	$4,$0,$L492
	nop

	jr	$31
	slt	$2,$3,$2

$L492:
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
	beq	$6,$0,$L494
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sll	$6,$6,2

$L494:
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
	beq	$4,$5,$L516
	move	$2,$4

	sll	$3,$6,2
	subu	$4,$4,$5
	sltu	$4,$4,$3
	beq	$4,$0,$L513
	addiu	$3,$6,-1

	beq	$6,$0,$L516
	sll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
$L504:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	addiu	$3,$3,-4
	bne	$3,$7,$L504
	sw	$6,0($4)

$L516:
	jr	$31
	nop

$L513:
	move	$7,$2
	beq	$6,$0,$L516
	li	$8,-1			# 0xffffffffffffffff

$L502:
	lw	$4,0($5)
	addiu	$3,$3,-1
	addiu	$7,$7,4
	addiu	$5,$5,4
	bne	$3,$8,$L502
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
	beq	$6,$0,$L524
	addiu	$3,$6,-1

	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
$L519:
	addiu	$3,$3,-1
	addiu	$6,$6,4
	bne	$3,$7,$L519
	sw	$5,-4($6)

$L524:
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
	beq	$2,$0,$L526
	addu	$2,$4,$6

	beq	$6,$0,$L558
	addu	$5,$5,$6

$L528:
	lb	$3,-1($2)
	addiu	$2,$2,-1
	addiu	$5,$5,-1
	bne	$4,$2,$L528
	sb	$3,0($5)

$L558:
	jr	$31
	nop

$L526:
	bne	$4,$5,$L554
	nop

	jr	$31
	nop

$L554:
	beq	$6,$0,$L558
	addiu	$2,$6,-1

	sltu	$2,$2,7
	bne	$2,$0,$L556
	addiu	$2,$4,1

	or	$2,$5,$4
	andi	$2,$2,0x3
	bne	$2,$0,$L552
	addiu	$2,$4,1

	subu	$3,$5,$2
	sltu	$3,$3,3
	bne	$3,$0,$L529
	srl	$8,$6,2

	sll	$8,$8,2
	move	$2,$5
	addu	$7,$4,$8
$L530:
	lw	$3,0($4)
	addiu	$4,$4,4
	sw	$3,0($2)
	bne	$7,$4,$L530
	addiu	$2,$2,4

	addu	$5,$5,$8
	beq	$6,$8,$L558
	subu	$2,$6,$8

	lb	$4,0($7)
	li	$3,1			# 0x1
	beq	$2,$3,$L558
	sb	$4,0($5)

	lb	$4,1($7)
	li	$3,2			# 0x2
	beq	$2,$3,$L558
	sb	$4,1($5)

	lb	$2,2($7)
	jr	$31
	sb	$2,2($5)

$L552:
$L529:
$L556:
	.option	pic0
	b	$L533
	.option	pic2
	addu	$4,$4,$6

$L555:
	addiu	$2,$2,1
$L533:
	lb	$3,-1($2)
	addiu	$5,$5,1
	bne	$2,$4,$L555
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
	beq	$2,$0,$L560
	nor	$2,$0,$6

	sll	$2,$5,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	move	$3,$0
	beq	$7,$0,$L562
	andi	$6,$6,0x3f

$L564:
	srl	$5,$4,$6
	or	$5,$5,$3
	move	$4,$0
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L560:
	srl	$3,$5,1
	srl	$3,$3,$2
	sll	$2,$4,$6
	or	$2,$3,$2
	sll	$3,$5,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	bne	$7,$0,$L564
	andi	$6,$6,0x3f

$L562:
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
	beq	$2,$0,$L566
	nor	$3,$0,$6

	srl	$3,$4,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	move	$2,$0
	beq	$7,$0,$L568
	andi	$6,$6,0x3f

$L570:
	sll	$4,$5,$6
	move	$5,$0
	or	$5,$5,$3
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L566:
	sll	$2,$4,1
	sll	$2,$2,$3
	srl	$3,$5,$6
	or	$3,$2,$3
	srl	$2,$4,$6
	subu	$6,$0,$6
	andi	$7,$6,0x20
	bne	$7,$0,$L570
	andi	$6,$6,0x3f

$L568:
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
	b	$L585
	.option	pic2
	li	$5,32			# 0x20

$L588:
	beq	$2,$5,$L587
	nop

$L585:
	srl	$3,$4,$2
	andi	$3,$3,0x1
	beq	$3,$0,$L588
	addiu	$2,$2,1

	jr	$31
	nop

$L587:
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
	beq	$4,$0,$L596
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,$L595
	nop

	li	$2,1			# 0x1
$L591:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,$L591
	addiu	$2,$2,1

$L596:
	jr	$31
	nop

$L595:
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
	lui	$2,%hi($LC0)
	lwc1	$f0,%lo($LC0)($2)
	nop
	c.lt.s	$f12,$f0
	nop
	bc1t	$L603
	li	$2,1			# 0x1

	lui	$3,%hi($LC1)
	lwc1	$f0,%lo($LC1)($3)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1f	$L602
	nop

$L603:
	jr	$31
	nop

$L602:
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
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L610
	li	$2,1			# 0x1

	lui	$3,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L609
	nop

$L610:
	jr	$31
	nop

$L609:
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
	lui	$2,%hi($LC2)
	lwc1	$f0,%lo($LC2+4)($2)
	nop
	lwc1	$f1,%lo($LC2)($2)
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L617
	li	$2,1			# 0x1

	lui	$3,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1f	$L616
	nop

$L617:
	jr	$31
	nop

$L616:
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
	c.un.s	$f12,$f12
	nop
	bc1t	$L640
	mov.s	$f0,$f12

	add.s	$f2,$f12,$f12
	c.eq.s	$f2,$f12
	nop
	bc1t	$L640
	nop

	bltz	$5,$L635
	lui	$2,%hi($LC5)

	lui	$2,%hi($LC4)
	lwc1	$f2,%lo($LC4)($2)
	andi	$2,$5,0x1
$L638:
	beq	$2,$0,$L639
	srl	$2,$5,31

$L624:
	mul.s	$f0,$f0,$f2
	srl	$2,$5,31
$L639:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L640
	srl	$2,$5,31

	andi	$3,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$3,$0,$L624
	addu	$2,$2,$5

	sra	$5,$2,1
$L637:
	srl	$2,$5,31
	andi	$3,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$3,$0,$L624
	addu	$2,$2,$5

	.option	pic0
	b	$L637
	.option	pic2
	sra	$5,$2,1

$L640:
	jr	$31
	nop

$L635:
	lwc1	$f2,%lo($LC5)($2)
	.option	pic0
	b	$L638
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
	c.un.d	$f12,$f12
	nop
	bc1t	$L662
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f2,$f12
	nop
	bc1t	$L662
	nop

	bltz	$6,$L657
	lui	$2,%hi($LC7)

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	andi	$2,$6,0x1
$L660:
	beq	$2,$0,$L661
	srl	$2,$6,31

$L646:
	mul.d	$f0,$f0,$f2
	srl	$2,$6,31
$L661:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L662
	srl	$2,$6,31

	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L646
	addu	$2,$2,$6

	sra	$6,$2,1
$L659:
	srl	$2,$6,31
	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L646
	addu	$2,$2,$6

	.option	pic0
	b	$L659
	.option	pic2
	sra	$6,$2,1

$L662:
	jr	$31
	nop

$L657:
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L660
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
	c.un.d	$f12,$f12
	nop
	bc1t	$L684
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L684
	nop

	bltz	$6,$L679
	lui	$2,%hi($LC7)

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	andi	$2,$6,0x1
$L682:
	beq	$2,$0,$L683
	srl	$2,$6,31

$L668:
	mul.d	$f0,$f0,$f2
	srl	$2,$6,31
$L683:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L684
	srl	$2,$6,31

	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L668
	addu	$2,$2,$6

	sra	$6,$2,1
$L681:
	srl	$2,$6,31
	andi	$3,$6,0x1
	mul.d	$f2,$f2,$f2
	bne	$3,$0,$L668
	addu	$2,$2,$6

	.option	pic0
	b	$L681
	.option	pic2
	sra	$6,$2,1

$L684:
	jr	$31
	nop

$L679:
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L682
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
	beq	$6,$0,$L697
	move	$2,$4

	addiu	$3,$6,-1
	sltu	$3,$3,4
	bne	$3,$0,$L687
	or	$3,$4,$5

	andi	$3,$3,0x3
	bne	$3,$0,$L687
	srl	$4,$6,2

	sll	$4,$4,2
	move	$3,$2
	addu	$9,$5,$4
$L688:
	lw	$8,0($3)
	lw	$7,0($5)
	addiu	$5,$5,4
	xor	$7,$7,$8
	sw	$7,0($3)
	bne	$9,$5,$L688
	addiu	$3,$3,4

	addu	$3,$2,$4
	beq	$6,$4,$L697
	subu	$5,$6,$4

	lbu	$4,0($3)
	lbu	$7,0($9)
	li	$6,1			# 0x1
	xor	$4,$4,$7
	beq	$5,$6,$L697
	sb	$4,0($3)

	lbu	$7,1($3)
	lbu	$4,1($9)
	li	$6,2			# 0x2
	xor	$4,$4,$7
	beq	$5,$6,$L697
	sb	$4,1($3)

	lbu	$5,2($3)
	lbu	$4,2($9)
	nop
	xor	$4,$4,$5
	jr	$31
	sb	$4,2($3)

$L687:
	addu	$6,$5,$6
	move	$3,$2
$L690:
	lbu	$4,0($3)
	lbu	$7,0($5)
	addiu	$3,$3,1
	xor	$7,$7,$4
	addiu	$5,$5,1
	bne	$6,$5,$L690
	sb	$7,-1($3)

$L697:
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
	beq	$3,$0,$L705
	move	$2,$4

	move	$3,$4
$L700:
	lb	$7,1($3)
	nop
	bne	$7,$0,$L700
	addiu	$3,$3,1

	beq	$6,$0,$L702
	nop

$L713:
	lb	$7,0($5)
	addiu	$6,$6,-1
	beq	$7,$0,$L714
	sb	$7,0($3)

	addiu	$5,$5,1
	addiu	$3,$3,1
$L711:
	bne	$6,$0,$L713
	nop

$L702:
	jr	$31
	sb	$0,0($3)

$L714:
	jr	$31
	nop

$L705:
	.option	pic0
	b	$L711
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
	beq	$5,$0,$L726
	move	$2,$0

	addu	$3,$4,$2
$L724:
	lb	$3,0($3)
	nop
	bne	$3,$0,$L718
	nop

$L726:
	jr	$31
	nop

$L718:
	addiu	$2,$2,1
	bne	$5,$2,$L724
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
	beq	$7,$0,$L734
	move	$2,$4

$L728:
	.option	pic0
	b	$L731
	.option	pic2
	move	$3,$5

$L730:
	beq	$6,$7,$L735
	nop

$L731:
	lb	$6,0($3)
	nop
	bne	$6,$0,$L730
	addiu	$3,$3,1

	lb	$7,1($2)
	nop
	bne	$7,$0,$L728
	addiu	$2,$2,1

	move	$2,$0
$L735:
	jr	$31
	nop

$L734:
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
$L738:
	lb	$3,0($4)
	nop
	bne	$5,$3,$L737
	nop

	move	$2,$4
$L737:
	bne	$3,$0,$L738
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
	beq	$8,$0,$L750
	nop

	move	$2,$5
$L742:
	lb	$3,1($2)
	nop
	bne	$3,$0,$L742
	addiu	$2,$2,1

	beq	$2,$5,$L750
	subu	$10,$2,$5

	andi	$11,$8,0x00ff
	.option	pic0
	b	$L748
	.option	pic2
	addiu	$10,$10,-1

$L761:
	beq	$2,$0,$L763
	addiu	$4,$4,1

$L748:
	lb	$2,0($4)
	nop
	bne	$2,$8,$L761
	move	$6,$11

	addu	$9,$4,$10
	move	$2,$5
	.option	pic0
	b	$L744
	.option	pic2
	move	$3,$4

$L762:
	beq	$3,$9,$L745
	nop

	bne	$7,$6,$L745
	addiu	$3,$3,1

	lbu	$6,0($3)
	nop
	beq	$6,$0,$L745
	addiu	$2,$2,1

$L744:
	lbu	$7,0($2)
	nop
	bne	$7,$0,$L762
	nop

$L745:
	lbu	$2,0($2)
	nop
	beq	$2,$6,$L751
	nop

	.option	pic0
	b	$L748
	.option	pic2
	addiu	$4,$4,1

$L763:
	jr	$31
	nop

$L750:
	jr	$31
	move	$2,$4

$L751:
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mtc1	$0,$f0
	addiu	$sp,$sp,-16
	mtc1	$0,$f1
	swc1	$f12,20($sp)
	c.lt.d	$f12,$f0
	nop
	bc1t	$L775
	swc1	$f13,16($sp)

	c.lt.d	$f0,$f12
	nop
	bc1f	$L768
	nop

	c.lt.d	$f14,$f0
	nop
	bc1t	$L767
	nop

$L768:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

$L775:
	c.lt.d	$f0,$f14
	nop
	bc1f	$L768
	nop

$L767:
	lw	$3,16($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	nop
	swc1	$f0,20($sp)
	swc1	$f1,16($sp)
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

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
	beq	$7,$0,$L792
	move	$2,$4

	sltu	$3,$5,$7
	bne	$3,$0,$L785
	subu	$5,$5,$7

	addu	$9,$4,$5
	sltu	$3,$9,$4
	bne	$3,$0,$L785
	addiu	$7,$7,-1

	lb	$12,0($6)
	.option	pic0
	b	$L782
	.option	pic2
	addiu	$6,$6,1

$L786:
	move	$2,$10
$L778:
	sltu	$3,$9,$2
	bne	$3,$0,$L785
	nop

$L782:
	lb	$3,0($2)
	nop
	bne	$3,$12,$L786
	addiu	$10,$2,1

	beq	$7,$0,$L792
	move	$4,$6

$L781:
	move	$3,$10
	.option	pic0
	b	$L779
	.option	pic2
	addu	$11,$10,$7

$L780:
	beq	$3,$11,$L792
	addiu	$4,$4,1

$L779:
	lbu	$8,0($3)
	lbu	$5,0($4)
	nop
	beq	$8,$5,$L780
	addiu	$3,$3,1

	sltu	$2,$9,$10
	bne	$2,$0,$L787
	nop

	lb	$3,0($10)
	nop
	bne	$3,$12,$L778
	addiu	$2,$10,1

	move	$3,$10
	move	$4,$6
	move	$10,$2
	.option	pic0
	b	$L781
	.option	pic2
	move	$2,$3

$L787:
	move	$2,$0
$L792:
	jr	$31
	nop

$L785:
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
	beq	$6,$0,$L794
	move	$17,$4

	lw	$25,%call16(memmove)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

$L794:
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mtc1	$0,$f0
	addiu	$sp,$sp,-16
	mtc1	$0,$f1
	swc1	$f12,20($sp)
	c.lt.d	$f12,$f0
	swc1	$f13,16($sp)
	bc1t	$L822
	lui	$2,%hi($LC10)

	lwc1	$f2,%lo($LC10+4)($2)
	nop
	lwc1	$f3,%lo($LC10)($2)
	nop
	c.le.d	$f2,$f12
	nop
	bc1f	$L823
	move	$4,$0

$L802:
	lui	$3,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($3)
	lwc1	$f0,%lo($LC10+4)($2)
	lwc1	$f3,%lo($LC7)($3)
	lwc1	$f1,%lo($LC10)($2)
	move	$2,$0
$L808:
	lwc1	$f4,20($sp)
	addiu	$2,$2,1
	lwc1	$f5,16($sp)
	nop
	mul.d	$f4,$f4,$f2
	c.le.d	$f0,$f4
	swc1	$f4,20($sp)
	bc1t	$L808
	swc1	$f5,16($sp)

$L809:
	beq	$4,$0,$L815
	sw	$2,0($6)

	lw	$3,16($sp)
	li	$2,-2147483648			# 0xffffffff80000000
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	nop
	sw	$2,12($sp)
$L799:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	addiu	$sp,$sp,16

$L823:
	lui	$3,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($3)
	nop
	lwc1	$f3,%lo($LC7)($3)
	nop
	c.lt.d	$f12,$f2
	nop
	bc1f	$L805
	nop

	c.eq.d	$f12,$f0
	nop
	bc1f	$L814
	nop

$L805:
	lwc1	$f0,20($sp)
	sw	$0,0($6)
	lwc1	$f1,16($sp)
	nop
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	addiu	$sp,$sp,16

$L822:
	lui	$2,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($2)
	lw	$3,16($sp)
	lwc1	$f1,%lo($LC8)($2)
	li	$2,-2147483648			# 0xffffffff80000000
	xor	$2,$3,$2
	sw	$2,8($sp)
	c.le.d	$f12,$f0
	lw	$2,20($sp)
	bc1f	$L824
	sw	$2,12($sp)

	lwc1	$f0,12($sp)
	li	$4,1			# 0x1
	lwc1	$f1,8($sp)
	lui	$2,%hi($LC10)
	swc1	$f0,20($sp)
	.option	pic0
	b	$L802
	.option	pic2
	swc1	$f1,16($sp)

$L815:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	nop
	swc1	$f0,12($sp)
	swc1	$f1,8($sp)
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	addiu	$sp,$sp,16

$L824:
	lui	$2,%hi($LC9)
	lwc1	$f0,%lo($LC9+4)($2)
	nop
	lwc1	$f1,%lo($LC9)($2)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1t	$L812
	li	$4,1			# 0x1

	sw	$0,0($6)
	swc1	$f12,12($sp)
	.option	pic0
	b	$L799
	.option	pic2
	swc1	$f13,8($sp)

$L812:
	lui	$3,%hi($LC7)
$L803:
	lwc1	$f2,12($sp)
	lwc1	$f0,%lo($LC7+4)($3)
	lwc1	$f3,8($sp)
	lwc1	$f1,%lo($LC7)($3)
	swc1	$f2,20($sp)
	swc1	$f3,16($sp)
	move	$2,$0
$L810:
	lwc1	$f2,20($sp)
	addiu	$2,$2,-1
	lwc1	$f3,16($sp)
	nop
	add.d	$f2,$f2,$f2
	c.lt.d	$f2,$f0
	swc1	$f2,20($sp)
	bc1t	$L810
	swc1	$f3,16($sp)

	.option	pic0
	b	$L809
	nop

	.option	pic2
$L814:
	swc1	$f12,12($sp)
	swc1	$f13,8($sp)
	.option	pic0
	b	$L803
	.option	pic2
	move	$4,$0

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
	beq	$2,$0,$L829
	move	$9,$0

	move	$2,$0
$L828:
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
	bne	$8,$0,$L828
	sll	$7,$7,1

	jr	$31
	move	$3,$9

$L829:
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
	beq	$2,$0,$L833
	li	$3,1			# 0x1

	.option	pic0
	b	$L832
	.option	pic2
	li	$2,32			# 0x20

$L836:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L834
	sll	$3,$3,1

	beq	$2,$0,$L835
	nop

$L832:
	bgez	$5,$L836
	addiu	$2,$2,-1

$L833:
	move	$2,$0
$L838:
	sltu	$7,$4,$5
	bne	$7,$0,$L837
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L837:
	srl	$3,$3,1
	bne	$3,$0,$L838
	srl	$5,$5,1

$L835:
	bne	$6,$0,$L847
	nop

	jr	$31
	nop

$L834:
	bne	$3,$0,$L833
	move	$2,$0

	.option	pic0
	b	$L835
	nop

	.option	pic2
$L847:
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
	beq	$4,$2,$L850
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

$L850:
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
	beq	$2,$6,$L864
	xor	$5,$5,$6

	lui	$28,%hi(__gnu_local_gp)
$L865:
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

$L864:
	bne	$3,$2,$L865
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
	beq	$4,$0,$L872
	move	$2,$0

$L868:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	bne	$4,$0,$L868
	sll	$5,$5,1

$L872:
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
	bne	$2,$0,$L877
	and	$10,$6,$10

	addu	$2,$5,$6
	sltu	$2,$2,$4
	beq	$2,$0,$L904
	addiu	$2,$6,-1

$L877:
	beq	$7,$0,$L905
	sll	$7,$7,3

	move	$2,$5
	move	$3,$4
	addu	$7,$7,$5
$L880:
	lw	$9,4($2)
	lw	$8,0($2)
	addiu	$2,$2,8
	sw	$9,4($3)
	sw	$8,0($3)
	bne	$2,$7,$L880
	addiu	$3,$3,8

	sltu	$2,$10,$6
	beq	$2,$0,$L908
	subu	$11,$6,$10

	addiu	$2,$11,-1
	sltu	$2,$2,7
	bne	$2,$0,$L903
	addiu	$7,$10,1

	addu	$3,$4,$10
	addu	$7,$5,$7
	subu	$7,$3,$7
	sltu	$7,$7,3
	bne	$7,$0,$L882
	addu	$2,$5,$10

	or	$7,$2,$3
	andi	$7,$7,0x3
	bne	$7,$0,$L882
	srl	$9,$11,2

	sll	$9,$9,2
	addu	$8,$2,$9
$L883:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L883
	addiu	$3,$3,4

	beq	$11,$9,$L908
	addu	$10,$10,$9

	addu	$2,$5,$10
	lb	$8,0($2)
	addiu	$2,$10,1
	addu	$7,$4,$10
	sltu	$3,$2,$6
	beq	$3,$0,$L908
	sb	$8,0($7)

	addu	$3,$5,$2
	lb	$3,0($3)
	addiu	$10,$10,2
	addu	$2,$4,$2
	sltu	$6,$10,$6
	beq	$6,$0,$L908
	sb	$3,0($2)

	addu	$5,$5,$10
	lb	$2,0($5)
	addu	$4,$4,$10
	jr	$31
	sb	$2,0($4)

$L904:
	beq	$6,$0,$L908
	li	$7,-1			# 0xffffffffffffffff

$L878:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L878
	sb	$6,0($3)

$L908:
	jr	$31
	nop

$L905:
	beq	$6,$0,$L907
	nop

$L903:
	addu	$3,$4,$10
	addu	$2,$5,$10
$L882:
	addu	$6,$5,$6
$L885:
	lb	$4,0($2)
	addiu	$2,$2,1
	sb	$4,0($3)
	bne	$2,$6,$L885
	addiu	$3,$3,1

	jr	$31
	nop

$L907:
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
	bne	$2,$0,$L913
	srl	$9,$6,1

	addu	$2,$5,$6
	sltu	$2,$2,$4
	beq	$2,$0,$L935
	addiu	$2,$6,-1

$L913:
	beq	$9,$0,$L912
	addiu	$2,$9,-1

	sltu	$2,$2,9
	bne	$2,$0,$L916
	or	$2,$5,$4

	andi	$2,$2,0x3
	bne	$2,$0,$L916
	addiu	$2,$5,2

	beq	$4,$2,$L916
	srl	$10,$6,2

	sll	$11,$10,2
	move	$2,$5
	move	$3,$4
	addu	$8,$5,$11
$L917:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L917
	addiu	$3,$3,4

	sll	$10,$10,1
	beq	$9,$10,$L912
	addu	$2,$5,$11

	lh	$2,0($2)
	addu	$11,$4,$11
	sh	$2,0($11)
$L912:
	andi	$2,$6,0x1
	beq	$2,$0,$L940
	addu	$5,$5,$6

$L938:
	lb	$2,-1($5)
	addu	$4,$4,$6
	jr	$31
	sb	$2,-1($4)

$L935:
	beq	$6,$0,$L940
	li	$7,-1			# 0xffffffffffffffff

$L914:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L914
	sb	$6,0($3)

$L940:
	jr	$31
	nop

$L916:
	sll	$9,$9,1
	move	$2,$5
	move	$3,$4
	addu	$9,$9,$5
$L919:
	lh	$7,0($2)
	addiu	$2,$2,2
	sh	$7,0($3)
	bne	$9,$2,$L919
	addiu	$3,$3,2

	andi	$2,$6,0x1
	bne	$2,$0,$L938
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
	bne	$2,$0,$L945
	and	$9,$6,$9

	addu	$2,$5,$6
	sltu	$2,$2,$4
	beq	$2,$0,$L972
	addiu	$2,$6,-1

$L945:
	beq	$8,$0,$L973
	sll	$8,$8,2

	move	$2,$5
	move	$3,$4
	addu	$8,$8,$5
$L948:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L948
	addiu	$3,$3,4

	sltu	$2,$9,$6
	beq	$2,$0,$L976
	subu	$11,$6,$9

	addiu	$2,$11,-1
	sltu	$2,$2,7
	bne	$2,$0,$L971
	addiu	$7,$9,1

	addu	$3,$4,$9
	addu	$7,$5,$7
	subu	$7,$3,$7
	sltu	$7,$7,3
	bne	$7,$0,$L950
	addu	$2,$5,$9

	or	$7,$2,$3
	andi	$7,$7,0x3
	bne	$7,$0,$L950
	srl	$10,$11,2

	sll	$10,$10,2
	addu	$8,$2,$10
$L951:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L951
	addiu	$3,$3,4

	beq	$11,$10,$L976
	addu	$9,$9,$10

	addu	$2,$5,$9
	lb	$8,0($2)
	addiu	$2,$9,1
	addu	$7,$4,$9
	sltu	$3,$2,$6
	beq	$3,$0,$L976
	sb	$8,0($7)

	addu	$3,$5,$2
	lb	$3,0($3)
	addiu	$9,$9,2
	addu	$2,$4,$2
	sltu	$6,$9,$6
	beq	$6,$0,$L976
	sb	$3,0($2)

	addu	$5,$5,$9
	lb	$2,0($5)
	addu	$4,$4,$9
	jr	$31
	sb	$2,0($4)

$L972:
	beq	$6,$0,$L976
	li	$7,-1			# 0xffffffffffffffff

$L946:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L946
	sb	$6,0($3)

$L976:
	jr	$31
	nop

$L973:
	beq	$6,$0,$L975
	nop

$L971:
	addu	$3,$4,$9
	addu	$2,$5,$9
$L950:
	addu	$6,$5,$6
$L953:
	lb	$4,0($2)
	addiu	$2,$2,1
	sb	$4,0($3)
	bne	$2,$6,$L953
	addiu	$3,$3,1

	jr	$31
	nop

$L975:
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
	bltz	$4,$L981
	cvt.d.w	$f0,$f0

	jr	$31
	nop

$L981:
	lui	$2,%hi($LC11)
	lwc1	$f2,%lo($LC11+4)($2)
	nop
	lwc1	$f3,%lo($LC11)($2)
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
	bgez	$4,$L985
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC11)
	lwc1	$f2,%lo($LC11+4)($2)
	nop
	lwc1	$f3,%lo($LC11)($2)
	nop
	add.d	$f0,$f0,$f2
$L985:
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
	bne	$2,$0,$L995
	nop

	sra	$2,$4,14
	bne	$2,$0,$L1012
	nop

	sra	$2,$4,13
	bne	$2,$0,$L996
	nop

	sra	$2,$4,12
	bne	$2,$0,$L997
	nop

	sra	$2,$4,11
	bne	$2,$0,$L998
	nop

	sra	$2,$4,10
	bne	$2,$0,$L999
	nop

	sra	$2,$4,9
	bne	$2,$0,$L1000
	nop

	sra	$2,$4,8
	bne	$2,$0,$L1001
	nop

	sra	$2,$4,7
	bne	$2,$0,$L1002
	nop

	sra	$2,$4,6
	bne	$2,$0,$L1003
	nop

	sra	$2,$4,5
	bne	$2,$0,$L1004
	nop

	sra	$2,$4,4
	bne	$2,$0,$L1005
	nop

	sra	$2,$4,3
	bne	$2,$0,$L1006
	nop

	sra	$2,$4,2
	bne	$2,$0,$L1007
	nop

	sra	$2,$4,1
	bne	$2,$0,$L1008
	nop

	bne	$4,$0,$L1011
	li	$2,16			# 0x10

$L1012:
	jr	$31
	nop

$L995:
	jr	$31
	move	$2,$0

$L1006:
	jr	$31
	li	$2,12			# 0xc

$L1011:
	jr	$31
	li	$2,15			# 0xf

$L996:
	jr	$31
	li	$2,2			# 0x2

$L997:
	jr	$31
	li	$2,3			# 0x3

$L998:
	jr	$31
	li	$2,4			# 0x4

$L999:
	jr	$31
	li	$2,5			# 0x5

$L1000:
	jr	$31
	li	$2,6			# 0x6

$L1001:
	jr	$31
	li	$2,7			# 0x7

$L1002:
	jr	$31
	li	$2,8			# 0x8

$L1003:
	jr	$31
	li	$2,9			# 0x9

$L1004:
	jr	$31
	li	$2,10			# 0xa

$L1005:
	jr	$31
	li	$2,11			# 0xb

$L1007:
	jr	$31
	li	$2,13			# 0xd

$L1008:
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
	bne	$2,$0,$L1016
	nop

	andi	$2,$4,0x2
	bne	$2,$0,$L1017
	nop

	andi	$2,$4,0x4
	bne	$2,$0,$L1018
	nop

	andi	$2,$4,0x8
	bne	$2,$0,$L1019
	nop

	andi	$2,$4,0x10
	bne	$2,$0,$L1020
	nop

	andi	$2,$4,0x20
	bne	$2,$0,$L1021
	nop

	andi	$2,$4,0x40
	bne	$2,$0,$L1022
	nop

	andi	$2,$4,0x80
	bne	$2,$0,$L1023
	nop

	andi	$2,$4,0x100
	bne	$2,$0,$L1024
	nop

	andi	$2,$4,0x200
	bne	$2,$0,$L1025
	nop

	andi	$2,$4,0x400
	bne	$2,$0,$L1026
	nop

	andi	$2,$4,0x800
	bne	$2,$0,$L1027
	nop

	andi	$2,$4,0x1000
	bne	$2,$0,$L1028
	nop

	andi	$2,$4,0x2000
	bne	$2,$0,$L1029
	nop

	andi	$2,$4,0x4000
	bne	$2,$0,$L1030
	sra	$4,$4,15

	bne	$4,$0,$L1033
	li	$2,16			# 0x10

	jr	$31
	nop

$L1016:
	jr	$31
	move	$2,$0

$L1017:
	jr	$31
	li	$2,1			# 0x1

$L1028:
	jr	$31
	li	$2,12			# 0xc

$L1033:
	jr	$31
	li	$2,15			# 0xf

$L1018:
	jr	$31
	li	$2,2			# 0x2

$L1019:
	jr	$31
	li	$2,3			# 0x3

$L1020:
	jr	$31
	li	$2,4			# 0x4

$L1021:
	jr	$31
	li	$2,5			# 0x5

$L1022:
	jr	$31
	li	$2,6			# 0x6

$L1023:
	jr	$31
	li	$2,7			# 0x7

$L1024:
	jr	$31
	li	$2,8			# 0x8

$L1025:
	jr	$31
	li	$2,9			# 0x9

$L1026:
	jr	$31
	li	$2,10			# 0xa

$L1027:
	jr	$31
	li	$2,11			# 0xb

$L1029:
	jr	$31
	li	$2,13			# 0xd

$L1030:
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
	lui	$2,%hi($LC12)
	lwc1	$f0,%lo($LC12)($2)
	nop
	c.le.s	$f0,$f12
	nop
	bc1t	$L1041
	nop

	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	jr	$31
	nop

$L1041:
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
	beq	$4,$0,$L1050
	move	$2,$0

$L1046:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	srl	$4,$4,1
	addu	$2,$2,$3
	bne	$4,$0,$L1046
	sll	$5,$5,1

$L1050:
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
	beq	$4,$0,$L1058
	move	$2,$0

	beq	$5,$0,$L1057
	nop

$L1053:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	srl	$5,$5,1
	addu	$2,$2,$3
	bne	$5,$0,$L1053
	sll	$4,$4,1

$L1058:
	jr	$31
	nop

$L1057:
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
	beq	$2,$0,$L1061
	li	$3,1			# 0x1

	.option	pic0
	b	$L1060
	.option	pic2
	li	$2,32			# 0x20

$L1064:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1062
	sll	$3,$3,1

	beq	$2,$0,$L1063
	nop

$L1060:
	bgez	$5,$L1064
	addiu	$2,$2,-1

$L1061:
	move	$2,$0
$L1066:
	sltu	$7,$4,$5
	bne	$7,$0,$L1065
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L1065:
	srl	$3,$3,1
	bne	$3,$0,$L1066
	srl	$5,$5,1

$L1063:
	bne	$6,$0,$L1075
	nop

	jr	$31
	nop

$L1062:
	bne	$3,$0,$L1061
	move	$2,$0

	.option	pic0
	b	$L1063
	nop

	.option	pic2
$L1075:
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
	bc1t	$L1079
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L1080
	li	$2,1			# 0x1

	jr	$31
	nop

$L1080:
	jr	$31
	move	$2,$0

$L1079:
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
	bc1t	$L1086
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L1087
	li	$2,1			# 0x1

	jr	$31
	nop

$L1087:
	jr	$31
	move	$2,$0

$L1086:
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
	bltz	$5,$L1106
	nop

	beq	$5,$0,$L1098
	move	$7,$0

$L1094:
	li	$6,32			# 0x20
	.option	pic0
	b	$L1097
	.option	pic2
	move	$2,$0

$L1107:
	beq	$6,$0,$L1096
	nop

$L1097:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addiu	$6,$6,-1
	sra	$5,$5,1
	andi	$6,$6,0x00ff
	addu	$2,$2,$3
	bne	$5,$0,$L1107
	sll	$4,$4,1

$L1096:
	beq	$7,$0,$L1108
	nop

	jr	$31
	subu	$2,$0,$2

$L1098:
	move	$2,$0
$L1108:
	jr	$31
	nop

$L1106:
	subu	$5,$0,$5
	.option	pic0
	b	$L1094
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
	bltz	$4,$L1127
	move	$2,$0

	li	$2,1			# 0x1
	move	$8,$0
$L1110:
	bgez	$5,$L1111
	nop

	subu	$5,$0,$5
	move	$8,$2
$L1111:
	sltu	$2,$5,$4
	move	$7,$4
	beq	$2,$0,$L1113
	li	$3,1			# 0x1

	.option	pic0
	b	$L1112
	.option	pic2
	li	$2,32			# 0x20

$L1115:
	beq	$2,$0,$L1116
	nop

$L1112:
	sll	$5,$5,1
	sltu	$6,$5,$4
	addiu	$2,$2,-1
	bne	$6,$0,$L1115
	sll	$3,$3,1

$L1116:
	beq	$3,$0,$L1114
	move	$2,$0

$L1113:
	move	$2,$0
$L1118:
	sltu	$4,$7,$5
	bne	$4,$0,$L1117
	nop

	subu	$7,$7,$5
	or	$2,$2,$3
$L1117:
	srl	$3,$3,1
	bne	$3,$0,$L1118
	srl	$5,$5,1

$L1114:
	beq	$8,$0,$L1128
	nop

	subu	$2,$0,$2
$L1128:
	jr	$31
	nop

$L1127:
	subu	$4,$0,$4
	.option	pic0
	b	$L1110
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
	bltz	$4,$L1147
	nop

	move	$8,$0
$L1130:
	bgez	$5,$L1131
	move	$2,$4

	subu	$5,$0,$5
$L1131:
	sltu	$3,$5,$4
	beq	$3,$0,$L1148
	nop

	li	$6,32			# 0x20
	.option	pic0
	b	$L1132
	.option	pic2
	li	$3,1			# 0x1

$L1135:
	beq	$6,$0,$L1136
	nop

$L1132:
	sll	$5,$5,1
	sltu	$7,$5,$4
	addiu	$6,$6,-1
	bne	$7,$0,$L1135
	sll	$3,$3,1

$L1136:
	beq	$3,$0,$L1149
	nop

$L1138:
	sltu	$4,$2,$5
	bne	$4,$0,$L1137
	srl	$3,$3,1

	subu	$2,$2,$5
$L1137:
	bne	$3,$0,$L1138
	srl	$5,$5,1

$L1134:
	beq	$8,$0,$L1150
	nop

	subu	$2,$0,$2
$L1150:
	jr	$31
	nop

$L1147:
	subu	$4,$0,$4
	.option	pic0
	b	$L1130
	.option	pic2
	li	$8,1			# 0x1

$L1149:
	.option	pic0
	b	$L1134
	.option	pic2
	move	$2,$4

$L1148:
	.option	pic0
	b	$L1138
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
	beq	$3,$0,$L1265
	move	$2,$4

	sll	$3,$5,16
	sra	$3,$3,16
	bltz	$3,$L1154
	sll	$3,$5,1

	andi	$3,$3,0xffff
	sltu	$4,$3,$4
	beq	$4,$0,$L1155
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1156
	li	$9,1			# 0x1

	sll	$3,$5,2
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1157
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1158
	li	$9,2			# 0x2

	sll	$3,$5,3
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1159
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1160
	li	$9,4			# 0x4

	sll	$3,$5,4
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1161
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1162
	li	$9,8			# 0x8

	sll	$3,$5,5
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1163
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1164
	li	$9,16			# 0x10

	sll	$3,$5,6
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1165
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1166
	li	$9,32			# 0x20

	sll	$3,$5,7
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1167
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1168
	li	$9,64			# 0x40

	sll	$3,$5,8
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1169
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1170
	li	$9,128			# 0x80

	sll	$3,$5,9
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1171
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1172
	li	$9,256			# 0x100

	sll	$3,$5,10
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1173
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1174
	li	$9,512			# 0x200

	sll	$3,$5,11
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1175
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1176
	li	$9,1024			# 0x400

	sll	$3,$5,12
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1177
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1178
	li	$9,2048			# 0x800

	sll	$3,$5,13
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1179
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1180
	li	$9,4096			# 0x1000

	sll	$3,$5,14
	andi	$3,$3,0xffff
	sltu	$4,$3,$2
	beq	$4,$0,$L1181
	sll	$4,$3,16

	sra	$4,$4,16
	bltz	$4,$L1182
	li	$9,8192			# 0x2000

	sll	$5,$5,15
	andi	$7,$5,0xffff
	sltu	$3,$7,$2
	beq	$3,$0,$L1183
	nop

	bne	$7,$0,$L1266
	li	$5,16384			# 0x4000

$L1184:
	bne	$6,$0,$L1267
	nop

	jr	$31
	move	$2,$7

$L1267:
	jr	$31
	nop

$L1171:
	sltu	$4,$2,$3
	bne	$4,$0,$L1203
	li	$8,512			# 0x200

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$7,512			# 0x200
$L1186:
	srl	$5,$8,2
	beq	$5,$0,$L1184
	srl	$4,$3,2

	sltu	$9,$2,$4
	bne	$9,$0,$L1187
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1187:
	srl	$5,$8,3
	beq	$5,$0,$L1184
	srl	$4,$3,3

	sltu	$9,$2,$4
	bne	$9,$0,$L1188
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1188:
	srl	$5,$8,4
	beq	$5,$0,$L1184
	srl	$4,$3,4

	sltu	$9,$2,$4
	bne	$9,$0,$L1189
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1189:
	srl	$5,$8,5
	beq	$5,$0,$L1184
	srl	$4,$3,5

	sltu	$9,$2,$4
	bne	$9,$0,$L1190
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1190:
	srl	$5,$8,6
	beq	$5,$0,$L1184
	srl	$4,$3,6

	sltu	$9,$2,$4
	bne	$9,$0,$L1191
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1191:
	srl	$5,$8,7
	beq	$5,$0,$L1184
	srl	$4,$3,7

	sltu	$9,$2,$4
	bne	$9,$0,$L1192
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1192:
	srl	$5,$8,8
	beq	$5,$0,$L1184
	srl	$4,$3,8

	sltu	$9,$2,$4
	bne	$9,$0,$L1193
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1193:
	srl	$5,$8,9
	beq	$5,$0,$L1184
	srl	$4,$3,9

	sltu	$9,$2,$4
	bne	$9,$0,$L1194
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1194:
	srl	$5,$8,10
	beq	$5,$0,$L1184
	srl	$4,$3,10

	sltu	$9,$2,$4
	bne	$9,$0,$L1195
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1195:
	srl	$5,$8,11
	beq	$5,$0,$L1184
	srl	$4,$3,11

	sltu	$9,$2,$4
	bne	$9,$0,$L1196
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1196:
	srl	$5,$8,12
	beq	$5,$0,$L1184
	srl	$4,$3,12

	sltu	$9,$2,$4
	bne	$9,$0,$L1197
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1197:
	srl	$5,$8,13
	beq	$5,$0,$L1184
	srl	$4,$3,13

	sltu	$9,$2,$4
	bne	$9,$0,$L1198
	nop

	subu	$4,$2,$4
	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1198:
	srl	$5,$8,14
	beq	$5,$0,$L1184
	srl	$4,$3,14

	sltu	$9,$2,$4
	bne	$9,$0,$L1199
	subu	$4,$2,$4

	andi	$2,$4,0xffff
	or	$7,$7,$5
$L1199:
	li	$4,16384			# 0x4000
	beq	$8,$4,$L1184
	srl	$3,$3,15

	sltu	$4,$2,$3
	bne	$4,$0,$L1207
	subu	$3,$2,$3

	andi	$2,$3,0xffff
	.option	pic0
	b	$L1184
	.option	pic2
	ori	$7,$7,0x1

$L1207:
	.option	pic0
	b	$L1184
	.option	pic2
	move	$2,$0

$L1265:
	beq	$5,$4,$L1205
	nop

	.option	pic0
	b	$L1184
	.option	pic2
	move	$7,$0

$L1154:
	subu	$2,$4,$5
	andi	$2,$2,0xffff
	.option	pic0
	b	$L1184
	.option	pic2
	li	$7,1			# 0x1

$L1155:
	sltu	$4,$2,$3
	bne	$4,$0,$L1209
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,2			# 0x2
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,2			# 0x2

$L1156:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	andi	$5,$5,0x7fff
	li	$8,2			# 0x2
	li	$7,2			# 0x2
$L1204:
	sltu	$4,$2,$5
	bne	$4,$0,$L1186
	subu	$5,$2,$5

	andi	$2,$5,0xffff
	.option	pic0
	b	$L1186
	.option	pic2
	or	$7,$7,$9

$L1157:
	sltu	$4,$2,$3
	bne	$4,$0,$L1210
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,4			# 0x4
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,4			# 0x4

$L1158:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,4			# 0x4
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,4			# 0x4

$L1159:
	sltu	$4,$2,$3
	bne	$4,$0,$L1211
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,8			# 0x8
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,8			# 0x8

$L1160:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,8			# 0x8
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,8			# 0x8

$L1161:
	sltu	$4,$2,$3
	bne	$4,$0,$L1212
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,16			# 0x10
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,16			# 0x10

$L1162:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,16			# 0x10
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,16			# 0x10

$L1163:
	sltu	$4,$2,$3
	bne	$4,$0,$L1213
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,32			# 0x20
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,32			# 0x20

$L1164:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,32			# 0x20
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,32			# 0x20

$L1165:
	sltu	$4,$2,$3
	bne	$4,$0,$L1214
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,64			# 0x40
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,64			# 0x40

$L1166:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,64			# 0x40
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,64			# 0x40

$L1167:
	sltu	$4,$2,$3
	bne	$4,$0,$L1215
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,128			# 0x80
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,128			# 0x80

$L1168:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,128			# 0x80
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,128			# 0x80

$L1170:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,256			# 0x100
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,256			# 0x100

$L1172:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,512			# 0x200
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,512			# 0x200

$L1205:
	li	$7,1			# 0x1
	.option	pic0
	b	$L1184
	.option	pic2
	move	$2,$0

$L1209:
	li	$8,2			# 0x2
$L1203:
	srl	$9,$8,1
	srl	$5,$3,1
	.option	pic0
	b	$L1204
	.option	pic2
	move	$7,$0

$L1174:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,1024			# 0x400
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,1024			# 0x400

$L1176:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,2048			# 0x800
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,2048			# 0x800

$L1210:
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,4			# 0x4

$L1211:
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,8			# 0x8

$L1178:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,4096			# 0x1000
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,4096			# 0x1000

$L1180:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,8192			# 0x2000
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,8192			# 0x2000

$L1212:
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,16			# 0x10

$L1213:
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,32			# 0x20

$L1182:
	subu	$2,$2,$3
	andi	$2,$2,0xffff
	srl	$5,$3,1
	li	$8,16384			# 0x4000
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,16384			# 0x4000

$L1183:
	sll	$3,$2,16
	sra	$3,$3,16
	bltz	$3,$L1208
	nop

	li	$3,32768			# 0x8000
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,32768			# 0x8000

$L1214:
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,64			# 0x40

$L1266:
	addiu	$2,$2,-32768
	andi	$2,$2,0xffff
	li	$9,16384			# 0x4000
	li	$3,32768			# 0x8000
	li	$8,32768			# 0x8000
	.option	pic0
	b	$L1204
	.option	pic2
	li	$7,32768			# 0x8000

$L1215:
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,128			# 0x80

$L1169:
	sltu	$4,$2,$3
	bne	$4,$0,$L1216
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,256			# 0x100
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,256			# 0x100

$L1208:
	li	$3,32768			# 0x8000
	li	$8,32768			# 0x8000
	li	$7,32768			# 0x8000
	.option	pic0
	b	$L1186
	.option	pic2
	move	$2,$0

$L1216:
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,256			# 0x100

$L1173:
	sltu	$4,$2,$3
	bne	$4,$0,$L1218
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,1024			# 0x400
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,1024			# 0x400

$L1181:
	sltu	$4,$2,$3
	bne	$4,$0,$L1222
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,16384			# 0x4000
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,16384			# 0x4000

$L1218:
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,1024			# 0x400

$L1222:
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,16384			# 0x4000

$L1179:
	sltu	$4,$2,$3
	bne	$4,$0,$L1221
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,8192			# 0x2000
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,8192			# 0x2000

$L1177:
	sltu	$4,$2,$3
	bne	$4,$0,$L1220
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,4096			# 0x1000
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,4096			# 0x1000

$L1175:
	sltu	$4,$2,$3
	bne	$4,$0,$L1219
	nop

	subu	$2,$2,$3
	andi	$2,$2,0xffff
	li	$8,2048			# 0x800
	.option	pic0
	b	$L1186
	.option	pic2
	li	$7,2048			# 0x800

$L1221:
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,8192			# 0x2000

$L1220:
	.option	pic0
	b	$L1203
	.option	pic2
	li	$8,4096			# 0x1000

$L1219:
	.option	pic0
	b	$L1203
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
	beq	$2,$0,$L1270
	li	$3,1			# 0x1

	.option	pic0
	b	$L1269
	.option	pic2
	li	$2,32			# 0x20

$L1273:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1271
	sll	$3,$3,1

	beq	$2,$0,$L1272
	nop

$L1269:
	bgez	$5,$L1273
	addiu	$2,$2,-1

$L1270:
	move	$2,$0
$L1275:
	sltu	$7,$4,$5
	bne	$7,$0,$L1274
	nop

	subu	$4,$4,$5
	or	$2,$2,$3
$L1274:
	srl	$3,$3,1
	bne	$3,$0,$L1275
	srl	$5,$5,1

$L1272:
	bne	$6,$0,$L1284
	nop

	jr	$31
	nop

$L1271:
	bne	$3,$0,$L1270
	move	$2,$0

	.option	pic0
	b	$L1272
	nop

	.option	pic2
$L1284:
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
	beq	$2,$0,$L1286
	sll	$2,$5,$6

	move	$5,$0
	jr	$31
	move	$3,$5

$L1286:
	beq	$6,$0,$L1289
	nop

	subu	$3,$0,$6
	srl	$3,$5,$3
	sll	$2,$4,$6
	sll	$5,$5,$6
	or	$2,$3,$2
	jr	$31
	move	$3,$5

$L1289:
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
	beq	$2,$0,$L1291
	sra	$2,$4,31

	sra	$5,$4,$6
	jr	$31
	move	$3,$5

$L1291:
	beq	$6,$0,$L1294
	nop

	subu	$3,$0,$6
	sll	$3,$4,$3
	srl	$5,$5,$6
	or	$5,$3,$5
	sra	$2,$4,$6
	jr	$31
	move	$3,$5

$L1294:
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
	bne	$7,$0,$L1298
	addu	$5,$5,$6

	subu	$2,$2,$3
	addu	$4,$4,$5
	jr	$31
	addu	$2,$2,$4

$L1298:
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
	bne	$2,$0,$L1304
	slt	$4,$6,$4

	bne	$4,$0,$L1303
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1304
	sltu	$5,$7,$5

	bne	$5,$0,$L1305
	nop

	jr	$31
	li	$2,1			# 0x1

$L1304:
	jr	$31
	move	$2,$0

$L1303:
	jr	$31
	li	$2,2			# 0x2

$L1305:
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
	bne	$2,$0,$L1308
	slt	$4,$6,$4

	bne	$4,$0,$L1309
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1310
	nop

	jr	$31
	sltu	$2,$7,$5

$L1308:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1310:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1309:
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
	beq	$2,$0,$L1313
	nop

	srl	$5,$4,$6
	move	$4,$0
$L1316:
	move	$2,$4
	jr	$31
	move	$3,$5

$L1313:
	beq	$6,$0,$L1316
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
	lui	$5,%hi($LC10)
	lwc1	$f0,%lo($LC10+4)($5)
	andi	$2,$6,0x1
	lwc1	$f1,%lo($LC10)($5)
	beq	$2,$0,$L1325
	move	$2,$6

$L1327:
	mul.d	$f0,$f0,$f12
$L1325:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L1326
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$4,$0,$L1327
	addu	$3,$3,$2

	sra	$2,$3,1
$L1334:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$4,$0,$L1327
	addu	$3,$3,$2

	.option	pic0
	b	$L1334
	.option	pic2
	sra	$2,$3,1

$L1326:
	bltz	$6,$L1333
	nop

	jr	$31
	nop

$L1333:
	lwc1	$f2,%lo($LC10+4)($5)
	nop
	lwc1	$f3,%lo($LC10)($5)
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
	lui	$6,%hi($LC13)
	andi	$2,$5,0x1
	lwc1	$f0,%lo($LC13)($6)
	beq	$2,$0,$L1336
	move	$2,$5

$L1338:
	mul.s	$f0,$f0,$f12
$L1336:
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L1337
	srl	$3,$2,31

	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$4,$0,$L1338
	addu	$3,$3,$2

	sra	$2,$3,1
$L1345:
	srl	$3,$2,31
	andi	$4,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$4,$0,$L1338
	addu	$3,$3,$2

	.option	pic0
	b	$L1345
	.option	pic2
	sra	$2,$3,1

$L1337:
	bltz	$5,$L1344
	nop

	jr	$31
	nop

$L1344:
	lwc1	$f2,%lo($LC13)($6)
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
	bne	$2,$0,$L1350
	sltu	$4,$6,$4

	bne	$4,$0,$L1349
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1350
	sltu	$5,$7,$5

	bne	$5,$0,$L1351
	nop

	jr	$31
	li	$2,1			# 0x1

$L1350:
	jr	$31
	move	$2,$0

$L1349:
	jr	$31
	li	$2,2			# 0x2

$L1351:
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
	bne	$2,$0,$L1354
	sltu	$4,$6,$4

	bne	$4,$0,$L1355
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1356
	nop

	jr	$31
	sltu	$2,$7,$5

$L1354:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1356:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1355:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
$LC0:
	.word	-8388609
	.align	2
$LC1:
	.word	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
$LC2:
	.word	-1048577
	.word	-1
	.align	3
$LC3:
	.word	2146435071
	.word	-1
	$LC4 = $LC6
	.section	.rodata.cst4
	.align	2
$LC5:
	.word	1056964608
	.section	.rodata.cst8
	.align	3
$LC6:
	.word	1073741824
	.word	0
	.align	3
$LC7:
	.word	1071644672
	.word	0
	.align	3
$LC8:
	.word	-1074790400
	.word	0
	.align	3
$LC9:
	.word	-1075838976
	.word	0
	.align	3
$LC10:
	.word	1072693248
	.word	0
	.align	3
$LC11:
	.word	1106247680
	.word	0
	.section	.rodata.cst4
	.align	2
$LC12:
	.word	1191182336
	.align	2
$LC13:
	.word	1065353216
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
