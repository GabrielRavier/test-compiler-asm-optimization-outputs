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
	beq	$6,$0,$L16
	addu	$3,$4,$6

$L4:
	addiu	$5,$5,-1
	addiu	$3,$3,-1
	lb	$4,0($5)
	bne	$2,$3,$L4
	sb	$4,0($3)

$L16:
	jr	$31
	nop

$L2:
	beq	$4,$5,$L15
	nop

	beq	$6,$0,$L16
	addu	$6,$4,$6

	move	$3,$4
$L5:
	addiu	$5,$5,1
	addiu	$3,$3,1
	lb	$4,-1($5)
	bne	$6,$3,$L5
	sb	$4,-1($3)

$L15:
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
	beq	$7,$0,$L22
	andi	$6,$6,0x00ff

$L18:
	lbu	$2,0($5)
	nop
	beq	$2,$6,$L29
	sb	$2,0($4)

	addiu	$7,$7,-1
	addiu	$5,$5,1
	bne	$7,$0,$L18
	addiu	$4,$4,1

$L22:
	jr	$31
	move	$2,$0

$L29:
	beq	$7,$0,$L22
	nop

	jr	$31
	addiu	$2,$4,1

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
	beq	$6,$0,$L36
	andi	$5,$5,0x00ff

$L31:
	lbu	$2,0($4)
	nop
	beq	$2,$5,$L39
	nop

	addiu	$6,$6,-1
	bne	$6,$0,$L31
	addiu	$4,$4,1

$L36:
	jr	$31
	move	$2,$0

$L39:
	beq	$6,$0,$L36
	move	$2,$4

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
	b	$L52
	nop

	.option	pic2
$L53:
	addiu	$4,$4,1
	addiu	$5,$5,1
$L52:
	beq	$6,$0,$L45
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	beq	$3,$2,$L53
	addiu	$6,$6,-1

	addiu	$6,$6,1
	beq	$6,$0,$L45
	nop

	move	$2,$3
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

$L45:
	jr	$31
	move	$2,$0

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
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	beq	$6,$0,$L55
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L55:
	move	$2,$16
	lw	$31,28($sp)
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
	andi	$5,$5,0x00ff
	addiu	$6,$6,-1
	addu	$6,$4,$6
	addiu	$4,$4,-1
$L61:
	beq	$6,$4,$L66
	move	$2,$0

	move	$2,$6
	lbu	$3,0($2)
	nop
	bne	$3,$5,$L61
	addiu	$6,$6,-1

$L66:
	jr	$31
	nop

$L60:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L74
	move	$2,$4

	addu	$6,$4,$6
	move	$3,$4
$L69:
	sb	$5,0($3)
	addiu	$3,$3,1
	bne	$6,$3,$L69
	nop

$L74:
	jr	$31
	nop

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
	move	$2,$4
	lb	$3,0($5)
	nop
	beq	$3,$0,$L82
	sb	$3,0($4)

$L77:
	addiu	$5,$5,1
	addiu	$2,$2,1
	lb	$3,0($5)
	nop
	bne	$3,$0,$L77
	sb	$3,0($2)

$L82:
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
	move	$2,$4
	lb	$3,0($4)
	nop
	beq	$3,$0,$L93
	andi	$5,$5,0x00ff

	andi	$3,$3,0x00ff
$L91:
	beq	$3,$5,$L92
	nop

	addiu	$2,$2,1
	lb	$3,0($2)
	nop
	bne	$3,$0,$L91
	andi	$3,$3,0x00ff

$L93:
	jr	$31
	nop

$L92:
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
	move	$2,$4
$L96:
	lb	$3,0($2)
	nop
	beq	$3,$5,$L98
	nop

	bne	$3,$0,$L96
	addiu	$2,$2,1

	move	$2,$0
$L98:
	jr	$31
	nop

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
	.option	pic0
	b	$L104
	nop

	.option	pic2
$L105:
	addiu	$5,$5,1
$L104:
	lb	$2,0($4)
	lb	$3,0($5)
	nop
	bne	$2,$3,$L101
	nop

	bne	$2,$0,$L105
	addiu	$4,$4,1

	addiu	$4,$4,-1
$L101:
	andi	$2,$2,0x00ff
	andi	$3,$3,0x00ff
	jr	$31
	subu	$2,$2,$3

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
	beq	$2,$0,$L111
	move	$2,$4

$L108:
	addiu	$2,$2,1
	lb	$5,0($2)
	nop
	bne	$5,$0,$L108
	nop

$L107:
$L111:
	jr	$31
	subu	$2,$2,$4

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
	beq	$6,$0,$L117
	nop

	lbu	$2,0($4)
	nop
	beq	$2,$0,$L114
	nop

	addiu	$6,$6,-1
	addu	$6,$4,$6
$L115:
	lbu	$3,0($5)
	nop
	beq	$3,$0,$L127
	nop

	beq	$4,$6,$L127
	nop

	bne	$3,$2,$L127
	addiu	$4,$4,1

	lbu	$2,0($4)
	nop
	bne	$2,$0,$L115
	addiu	$5,$5,1

$L114:
	lbu	$3,0($5)
$L127:
	jr	$31
	subu	$2,$2,$3

$L117:
	jr	$31
	move	$2,$0

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
	bne	$2,$0,$L132
	li	$2,-2			# 0xfffffffffffffffe

	and	$6,$6,$2
	addu	$3,$4,$6
$L130:
	lbu	$2,1($4)
	nop
	sb	$2,0($5)
	lbu	$2,0($4)
	nop
	sb	$2,1($5)
	addiu	$4,$4,2
	bne	$4,$3,$L130
	addiu	$5,$5,2

$L132:
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
	beq	$4,$2,$L137
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

$L137:
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
	bne	$2,$0,$L140
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

$L140:
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
	beq	$4,$2,$L147
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

$L147:
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
	bne	$2,$0,$L152
	nop

	addiu	$2,$4,-127
	sltu	$2,$2,33
	bne	$2,$0,$L152
	nop

	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bne	$2,$0,$L153
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	jr	$31
	sltu	$2,$4,3

$L152:
	jr	$31
	li	$2,1			# 0x1

$L153:
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
	bne	$2,$0,$L162
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bne	$2,$0,$L160
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bne	$2,$0,$L160
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$3,$2,8192
	addu	$3,$4,$3
	sltu	$3,$3,8185
	bne	$3,$0,$L160
	li	$3,1048576			# 0x100000

	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beq	$2,$0,$L161
	nop

	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

$L162:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	xori	$2,$2,0x1

$L160:
	jr	$31
	li	$2,1			# 0x1

$L161:
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
	bne	$2,$0,$L165
	nop

	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

$L165:
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
	bc1t	$L170
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L171
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L174
	nop

	jr	$31
	sub.d	$f0,$f12,$f14

$L170:
	jr	$31
	mov.d	$f0,$f12

$L171:
	jr	$31
	mov.d	$f0,$f14

$L174:
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
	c.un.s	$f12,$f12
	nop
	bc1t	$L178
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L179
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L182
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L178:
	jr	$31
	mov.s	$f0,$f12

$L179:
	jr	$31
	mov.s	$f0,$f14

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
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L189
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L190
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	nop
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L185
	nop

	bne	$2,$0,$L191
	nop

	jr	$31
	mov.d	$f0,$f12

$L185:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L194
	nop

$L189:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L190:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L191:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
$L194:
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
	c.un.s	$f12,$f12
	nop
	bc1t	$L202
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L203
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	nop
	and	$2,$2,$4
	lw	$3,4($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L198
	nop

	bne	$2,$0,$L204
	nop

	jr	$31
	mov.s	$f0,$f12

$L198:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1f	$L207
	nop

$L202:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L203:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L204:
	lwc1	$f0,4($sp)
$L207:
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
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L215
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L216
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	nop
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L211
	nop

	bne	$2,$0,$L217
	nop

	jr	$31
	mov.d	$f0,$f12

$L211:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L220
	nop

$L215:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L216:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L217:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
$L220:
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
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L228
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L229
	mov.d	$f0,$f14

	lw	$2,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L224
	nop

	bne	$2,$0,$L230
	nop

	jr	$31
	nop

$L224:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L229
	nop

	jr	$31
	mov.d	$f0,$f2

$L228:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L229:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L230:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

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
	c.un.s	$f12,$f12
	nop
	bc1t	$L239
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L240
	mov.s	$f0,$f14

	lw	$2,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,4($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L235
	nop

	bne	$2,$0,$L241
	nop

	jr	$31
	nop

$L235:
	lwc1	$f0,0($sp)
	lwc1	$f2,4($sp)
	nop
	c.lt.s	$f0,$f2
	nop
	bc1t	$L244
	nop

	jr	$31
	mov.s	$f0,$f2

$L239:
	lwc1	$f0,4($sp)
	jr	$31
	nop

$L240:
	lwc1	$f0,0($sp)
	jr	$31
	nop

$L241:
	lwc1	$f0,0($sp)
$L244:
	jr	$31
	nop

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
	swc1	$f12,4($sp)
	swc1	$f13,0($sp)
	swc1	$f14,12($sp)
	c.un.d	$f12,$f12
	nop
	bc1t	$L252
	swc1	$f15,8($sp)

	c.un.d	$f14,$f14
	nop
	bc1t	$L253
	mov.d	$f0,$f14

	lw	$2,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,8($sp)
	nop
	and	$3,$3,$4
	beq	$2,$3,$L248
	nop

	bne	$2,$0,$L254
	nop

	jr	$31
	nop

$L248:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	lwc1	$f2,12($sp)
	nop
	lwc1	$f3,8($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1t	$L253
	nop

	jr	$31
	mov.d	$f0,$f2

$L252:
	lwc1	$f0,12($sp)
	nop
	lwc1	$f1,8($sp)
	jr	$31
	nop

$L253:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

$L254:
	lwc1	$f0,4($sp)
	nop
	lwc1	$f1,0($sp)
	jr	$31
	nop

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
	nop
	sb	$3,0($5)
	srl	$4,$4,6
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	lui	$4,%hi(seed)
	lw	$3,%lo(seed)($4)
	li	$2,1284833280			# 0x4c950000
	addiu	$2,$2,32557
	mult	$3,$2
	mflo	$3
	lw	$5,%lo(seed+4)($4)
	nop
	sw	$5,8($sp)
	li	$5,1481703424			# 0x58510000
	ori	$5,$5,0xf42d
	lw	$6,8($sp)
	nop
	mult	$6,$5
	mflo	$5
	addu	$3,$3,$5
	nop
	multu	$6,$2
	mflo	$7
	mfhi	$6
	addu	$3,$3,$6
	addiu	$5,$7,1
	sltu	$2,$5,$7
	addu	$2,$2,$3
	sw	$2,%lo(seed)($4)
	sw	$5,%lo(seed+4)($4)
	srl	$2,$2,1
	jr	$31
	addiu	$sp,$sp,16

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
	beq	$5,$0,$L271
	nop

	lw	$2,0($5)
	nop
	sw	$2,0($4)
	sw	$5,4($4)
	sw	$4,0($5)
	lw	$2,0($4)
	nop
	beq	$2,$0,$L272
	nop

	sw	$4,4($2)
$L272:
	jr	$31
	nop

$L271:
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
	beq	$2,$0,$L274
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L274:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L282
	nop

	lw	$3,0($4)
	nop
	sw	$3,0($2)
$L282:
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
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$19,$4
	move	$fp,$5
	move	$23,$6
	lw	$22,80($sp)
	lw	$21,0($6)
	nop
	beq	$21,$0,$L284
	move	$18,$7

	move	$16,$5
	move	$17,$0
$L286:
	move	$5,$16
	move	$4,$19
	move	$25,$22
	jalr	$25
	nop

	lw	$28,16($sp)
	beq	$2,$0,$L283
	move	$20,$16

	addiu	$17,$17,1
	bne	$21,$17,$L286
	addu	$16,$16,$18

$L284:
	addiu	$2,$21,1
	sw	$2,0($23)
	mult	$18,$21
	mflo	$20
	beq	$18,$0,$L283
	addu	$20,$fp,$20

	move	$6,$18
	move	$5,$19
	move	$4,$20
	lw	$25,%call16(memmove)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L283:
	move	$2,$20
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,64

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
	sw	$31,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lw	$22,72($sp)
	lw	$20,0($6)
	nop
	beq	$20,$0,$L300
	move	$18,$4

	move	$19,$7
	move	$16,$5
	move	$17,$0
$L302:
	move	$5,$16
	move	$4,$18
	move	$25,$22
	jalr	$25
	nop

	beq	$2,$0,$L299
	move	$21,$16

	addiu	$17,$17,1
	bne	$20,$17,$L302
	addu	$16,$16,$19

$L300:
	move	$21,$0
$L299:
	move	$2,$21
	lw	$31,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,56

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
	bltz	$4,$L313
	move	$2,$4

$L312:
	jr	$31
	nop

$L313:
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
	.option	pic0
	b	$L315
	.option	pic2
	li	$5,32			# 0x20

$L317:
	addiu	$4,$4,1
$L315:
	lb	$3,0($4)
	nop
	beq	$3,$5,$L317
	addiu	$2,$3,-9

	sltu	$2,$2,5
	bne	$2,$0,$L317
	nop

	li	$5,43			# 0x2b
	beq	$3,$5,$L324
	li	$5,45			# 0x2d

	bne	$3,$5,$L329
	move	$6,$0

	li	$6,1			# 0x1
$L318:
	addiu	$4,$4,1
$L319:
	lb	$3,0($4)
	nop
$L329:
	addiu	$3,$3,-48
	sltu	$5,$3,10
	beq	$5,$0,$L321
	sll	$5,$2,2

$L328:
	addu	$5,$5,$2
	sll	$5,$5,1
	addiu	$4,$4,1
	sll	$3,$3,24
	sra	$3,$3,24
	subu	$2,$5,$3
	lb	$3,0($4)
	nop
	addiu	$3,$3,-48
	sltu	$5,$3,10
	bne	$5,$0,$L328
	sll	$5,$2,2

$L321:
	bne	$6,$0,$L330
	nop

	subu	$2,$0,$2
$L330:
	jr	$31
	nop

$L324:
	.option	pic0
	b	$L318
	.option	pic2
	move	$6,$0

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
	.option	pic0
	j	atoi
	nop

	.option	pic2
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
	.option	pic0
	b	$L333
	.option	pic2
	li	$3,32			# 0x20

$L335:
	addiu	$4,$4,1
$L333:
	lb	$2,0($4)
	nop
	beq	$2,$3,$L335
	addiu	$8,$2,-9

	sltu	$8,$8,5
	bne	$8,$0,$L335
	nop

	li	$3,43			# 0x2b
	beq	$2,$3,$L336
	li	$3,45			# 0x2d

	bne	$2,$3,$L337
	nop

	li	$8,1			# 0x1
$L336:
	addiu	$4,$4,1
$L337:
	lb	$6,0($4)
	nop
	addiu	$6,$6,-48
	sltu	$2,$6,10
	beq	$2,$0,$L344
	move	$2,$0

	move	$5,$0
	srl	$3,$5,30
$L345:
	sll	$7,$2,2
	or	$7,$3,$7
	sll	$3,$5,2
	addu	$5,$3,$5
	sltu	$3,$5,$3
	addu	$7,$7,$2
	addu	$3,$3,$7
	srl	$2,$5,31
	sll	$3,$3,1
	or	$3,$2,$3
	sll	$2,$5,1
	addiu	$4,$4,1
	sll	$6,$6,24
	sra	$6,$6,24
	sra	$7,$6,31
	subu	$5,$2,$6
	sltu	$2,$2,$5
	subu	$3,$3,$7
	subu	$2,$3,$2
	lb	$6,0($4)
	nop
	addiu	$6,$6,-48
	sltu	$3,$6,10
	bne	$3,$0,$L345
	srl	$3,$5,30

$L339:
	bne	$8,$0,$L332
	nop

	sltu	$3,$0,$5
	subu	$2,$0,$2
	subu	$2,$2,$3
	subu	$5,$0,$5
$L332:
	jr	$31
	move	$3,$5

$L344:
	.option	pic0
	b	$L339
	.option	pic2
	move	$5,$0

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
	sw	$31,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lw	$21,72($sp)
	beq	$6,$0,$L347
	move	$20,$4

	move	$19,$5
	move	$16,$6
	.option	pic0
	b	$L350
	.option	pic2
	move	$18,$7

$L351:
	move	$16,$22
$L348:
	beq	$16,$0,$L346
	move	$17,$0

$L350:
	srl	$22,$16,1
	mult	$22,$18
	mflo	$17
	addu	$17,$19,$17
	move	$5,$17
	move	$4,$20
	move	$25,$21
	jalr	$25
	nop

	bltz	$2,$L351
	nop

	blez	$2,$L346
	addu	$19,$17,$18

	addiu	$16,$16,-1
	.option	pic0
	b	$L348
	.option	pic2
	subu	$16,$16,$22

$L347:
	move	$17,$0
$L346:
	move	$2,$17
	lw	$31,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
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
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lw	$21,80($sp)
	lw	$20,84($sp)
	beq	$6,$0,$L358
	move	$19,$4

	move	$18,$5
	move	$17,$7
	.option	pic0
	b	$L361
	.option	pic2
	move	$16,$6

$L360:
	beq	$23,$0,$L358
	move	$16,$23

$L361:
	sra	$23,$16,1
	mult	$23,$17
	mflo	$22
	addu	$22,$18,$22
	move	$6,$20
	move	$5,$22
	move	$4,$19
	move	$25,$21
	jalr	$25
	nop

	beq	$2,$0,$L357
	nop

	blez	$2,$L360
	nop

	addu	$18,$22,$17
	addiu	$16,$16,-1
	.option	pic0
	b	$L360
	.option	pic2
	sra	$23,$16,1

$L358:
	move	$22,$0
$L357:
	move	$2,$22
	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

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
	move	$2,$4
	bne	$6,$0,1f
	div	$0,$5,$6
	break	7
1:
	mfhi	$5
	mflo	$3
	sw	$3,0($4)
	jr	$31
	sw	$5,4($4)

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
	bltz	$4,$L374
	move	$3,$5

$L372:
	jr	$31
	nop

$L374:
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
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$16,$4
	move	$18,$6
	move	$17,$7
	lw	$25,%call16(__divdi3)($28)
	lw	$7,60($sp)
	lw	$6,56($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$3,4($16)
	sw	$2,0($16)
	lw	$25,%call16(__moddi3)($28)
	lw	$7,60($sp)
	lw	$6,56($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$3,12($16)
	sw	$2,8($16)
	move	$2,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
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
	bltz	$4,$L379
	move	$2,$4

$L378:
	jr	$31
	nop

$L379:
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
	move	$2,$4
	bne	$6,$0,1f
	div	$0,$5,$6
	break	7
1:
	mfhi	$5
	mflo	$3
	sw	$3,0($4)
	jr	$31
	sw	$5,4($4)

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
	bltz	$4,$L384
	move	$3,$5

$L382:
	jr	$31
	nop

$L384:
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
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$16,$4
	move	$18,$6
	move	$17,$7
	lw	$25,%call16(__divdi3)($28)
	lw	$7,60($sp)
	lw	$6,56($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$3,4($16)
	sw	$2,0($16)
	lw	$25,%call16(__moddi3)($28)
	lw	$7,60($sp)
	lw	$6,56($sp)
	move	$4,$18
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sw	$3,12($16)
	sw	$2,8($16)
	move	$2,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
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
$L396:
	lw	$3,0($4)
	nop
	beq	$3,$0,$L393
	nop

	bne	$5,$3,$L396
	addiu	$4,$4,4

	addiu	$4,$4,-4
	beq	$3,$0,$L393
	move	$2,$4

$L387:
	jr	$31
	nop

$L393:
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
	.option	pic0
	b	$L407
	nop

	.option	pic2
$L400:
	addiu	$5,$5,4
$L407:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L399
	nop

	beq	$2,$0,$L399
	nop

	bne	$3,$0,$L400
	addiu	$4,$4,4

$L399:
	slt	$4,$2,$3
	bne	$4,$0,$L402
	nop

	jr	$31
	slt	$2,$3,$2

$L402:
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
$L409:
	addiu	$5,$5,4
	addiu	$3,$3,4
	lw	$6,-4($5)
	nop
	bne	$6,$0,$L409
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
	beq	$2,$0,$L412
	move	$2,$4

$L413:
	addiu	$2,$2,4
	lw	$3,0($2)
	nop
	bne	$3,$0,$L413
	nop

$L412:
	subu	$2,$2,$4
	jr	$31
	sra	$2,$2,2

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
$L429:
	beq	$6,$0,$L421
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L418
	nop

	beq	$2,$0,$L418
	nop

	addiu	$6,$6,-1
	addiu	$4,$4,4
	.option	pic0
	b	$L429
	.option	pic2
	addiu	$5,$5,4

$L418:
	beq	$6,$0,$L421
	nop

	lw	$2,0($4)
	lw	$3,0($5)
	nop
	slt	$4,$2,$3
	bne	$4,$0,$L422
	nop

	jr	$31
	slt	$2,$3,$2

$L421:
	jr	$31
	move	$2,$0

$L422:
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
	.option	pic0
	b	$L439
	nop

	.option	pic2
$L440:
	addiu	$4,$4,4
$L439:
	beq	$6,$0,$L436
	nop

	lw	$2,0($4)
	nop
	bne	$2,$5,$L440
	addiu	$6,$6,-1

	addiu	$6,$6,1
	beq	$6,$0,$L436
	move	$2,$4

$L430:
	jr	$31
	nop

$L436:
	jr	$31
	move	$2,$0

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
	b	$L454
	nop

	.option	pic2
$L455:
	addiu	$4,$4,4
	addiu	$5,$5,4
$L454:
	beq	$6,$0,$L446
	nop

	lw	$3,0($4)
	lw	$2,0($5)
	nop
	beq	$3,$2,$L455
	addiu	$6,$6,-1

	addiu	$6,$6,1
	beq	$6,$0,$L446
	nop

	move	$2,$3
	lw	$3,0($5)
	nop
	slt	$4,$2,$3
	bne	$4,$0,$L447
	nop

	jr	$31
	slt	$2,$3,$2

$L446:
	jr	$31
	move	$2,$0

$L447:
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
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	beq	$6,$0,$L457
	move	$16,$4

	sll	$6,$6,2
	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L457:
	move	$2,$16
	lw	$31,28($sp)
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
	beq	$4,$5,$L476
	move	$2,$4

	subu	$4,$4,$5
	sll	$7,$6,2
	sltu	$4,$4,$7
	bne	$4,$0,$L464
	addiu	$3,$6,-1

	move	$7,$2
	beq	$6,$0,$L476
	li	$8,-1			# 0xffffffffffffffff

$L465:
	addiu	$5,$5,4
	addiu	$7,$7,4
	lw	$4,-4($5)
	addiu	$3,$3,-1
	bne	$3,$8,$L465
	sw	$4,-4($7)

$L476:
	jr	$31
	nop

$L464:
	beq	$6,$0,$L476
	sll	$3,$3,2

	li	$7,-4			# 0xfffffffffffffffc
$L466:
	addu	$4,$5,$3
	lw	$6,0($4)
	addu	$4,$2,$3
	addiu	$3,$3,-4
	bne	$3,$7,$L466
	sw	$6,0($4)

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
	beq	$6,$0,$L484
	addiu	$3,$6,-1

	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
$L479:
	addiu	$6,$6,4
	addiu	$3,$3,-1
	bne	$3,$7,$L479
	sw	$5,-4($6)

$L484:
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
	beq	$2,$0,$L486
	addu	$2,$4,$6

	beq	$6,$0,$L499
	addu	$5,$5,$6

$L488:
	addiu	$2,$2,-1
	addiu	$5,$5,-1
	lb	$3,0($2)
	bne	$4,$2,$L488
	sb	$3,0($5)

$L499:
	jr	$31
	nop

$L486:
	beq	$4,$5,$L498
	nop

	beq	$6,$0,$L499
	addu	$6,$4,$6

$L489:
	addiu	$4,$4,1
	addiu	$5,$5,1
	lb	$2,-1($4)
	bne	$6,$4,$L489
	sb	$2,-1($5)

$L498:
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
	beq	$2,$0,$L501
	srl	$3,$5,1

	sll	$2,$5,$6
	move	$7,$0
$L502:
	subu	$6,$0,$6
	andi	$3,$6,0x3f
	andi	$6,$6,0x20
	beq	$6,$0,$L503
	sll	$6,$4,1

	srl	$5,$4,$3
	move	$4,$0
$L504:
	or	$5,$5,$7
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L501:
	nor	$2,$0,$6
	srl	$3,$3,$2
	sll	$2,$4,$6
	or	$2,$3,$2
	.option	pic0
	b	$L502
	.option	pic2
	sll	$7,$5,$6

$L503:
	nor	$8,$0,$3
	sll	$6,$6,$8
	srl	$5,$5,$3
	or	$5,$6,$5
	.option	pic0
	b	$L504
	.option	pic2
	srl	$4,$4,$3

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
	beq	$2,$0,$L506
	sll	$2,$4,1

	srl	$3,$4,$6
	move	$2,$0
$L507:
	subu	$6,$0,$6
	andi	$7,$6,0x3f
	andi	$6,$6,0x20
	beq	$6,$0,$L508
	srl	$6,$5,1

	sll	$4,$5,$7
	move	$5,$0
$L509:
	or	$5,$5,$3
	or	$2,$4,$2
	jr	$31
	move	$3,$5

$L506:
	nor	$3,$0,$6
	sll	$2,$2,$3
	srl	$3,$5,$6
	or	$3,$2,$3
	.option	pic0
	b	$L507
	.option	pic2
	srl	$2,$4,$6

$L508:
	nor	$8,$0,$7
	srl	$6,$6,$8
	sll	$4,$4,$7
	or	$4,$6,$4
	.option	pic0
	b	$L509
	.option	pic2
	sll	$5,$5,$7

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
	sll	$2,$4,$5
	subu	$5,$0,$5
	srl	$4,$4,$5
	jr	$31
	or	$2,$4,$2

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
	srl	$2,$4,$5
	subu	$5,$0,$5
	sll	$4,$4,$5
	jr	$31
	or	$2,$4,$2

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
	sll	$2,$4,$5
	subu	$5,$0,$5
	srl	$4,$4,$5
	jr	$31
	or	$2,$4,$2

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
	srl	$2,$4,$5
	subu	$5,$0,$5
	sll	$4,$4,$5
	jr	$31
	or	$2,$4,$2

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
	sll	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0xf
	srl	$4,$4,$5
	or	$2,$2,$4
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
	srl	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0xf
	sll	$4,$4,$5
	or	$2,$2,$4
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
	sll	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0x7
	srl	$4,$4,$5
	or	$2,$2,$4
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
	srl	$2,$4,$5
	subu	$5,$0,$5
	andi	$5,$5,0x7
	sll	$4,$4,$5
	or	$2,$2,$4
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
	sll	$2,$4,24
	srl	$3,$4,24
	or	$2,$2,$3
	srl	$3,$4,8
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
	sll	$2,$5,24
	srl	$3,$4,24
	srl	$6,$4,8
	andi	$6,$6,0xff00
	or	$3,$3,$6
	sll	$7,$4,8
	srl	$6,$5,24
	or	$6,$7,$6
	li	$7,16711680			# 0xff0000
	and	$6,$6,$7
	or	$3,$3,$6
	sll	$4,$4,24
	or	$3,$3,$4
	sll	$6,$5,8
	srl	$4,$5,24
	or	$4,$2,$4
	srl	$5,$5,8
	andi	$5,$5,0xff00
	or	$4,$4,$5
	and	$2,$6,$7
	jr	$31
	or	$2,$4,$2

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
	li	$5,32			# 0x20
	srl	$3,$4,$2
$L526:
	andi	$3,$3,0x1
	bne	$3,$0,$L527
	addiu	$2,$2,1

	bne	$2,$5,$L526
	srl	$3,$4,$2

	move	$2,$0
$L527:
	jr	$31
	nop

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
	beq	$4,$0,$L535
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,$L534
	nop

	li	$2,1			# 0x1
$L530:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,$L530
	addiu	$2,$2,1

$L535:
	jr	$31
	nop

$L534:
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
	bc1t	$L541
	li	$2,1			# 0x1

	lui	$3,%hi($LC1)
	lwc1	$f0,%lo($LC1)($3)
	nop
	c.lt.s	$f0,$f12
	nop
	bc1t	$L541
	nop

	jr	$31
	move	$2,$0

$L541:
	jr	$31
	nop

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
	bc1t	$L547
	li	$2,1			# 0x1

	lui	$3,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1t	$L547
	nop

	jr	$31
	move	$2,$0

$L547:
	jr	$31
	nop

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
	bc1t	$L553
	li	$2,1			# 0x1

	lui	$3,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($3)
	nop
	lwc1	$f1,%lo($LC3)($3)
	nop
	c.lt.d	$f0,$f12
	nop
	bc1t	$L553
	nop

	jr	$31
	move	$2,$0

$L553:
	jr	$31
	nop

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
	bc1t	$L571
	mov.s	$f0,$f12

	add.s	$f2,$f12,$f12
	c.eq.s	$f2,$f12
	nop
	bc1t	$L571
	nop

	bltz	$5,$L568
	nop

	lui	$2,%hi($LC4)
	lwc1	$f2,%lo($LC4)($2)
	.option	pic0
	b	$L569
	.option	pic2
	andi	$2,$5,0x1

$L568:
	lui	$2,%hi($LC5)
	lwc1	$f2,%lo($LC5)($2)
	.option	pic0
	b	$L569
	.option	pic2
	andi	$2,$5,0x1

$L570:
	addu	$5,$2,$5
	sra	$5,$5,1
	beq	$5,$0,$L571
	andi	$2,$5,0x1

	mul.s	$f2,$f2,$f2
$L569:
	beq	$2,$0,$L570
	srl	$2,$5,31

	.option	pic0
	b	$L570
	.option	pic2
	mul.s	$f0,$f0,$f2

$L571:
	jr	$31
	nop

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
	bc1t	$L588
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f2,$f12
	nop
	bc1t	$L588
	nop

	bltz	$6,$L585
	nop

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L586
	.option	pic2
	andi	$2,$6,0x1

$L585:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L586
	.option	pic2
	andi	$2,$6,0x1

$L587:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L588
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L586:
	beq	$2,$0,$L587
	srl	$2,$6,31

	.option	pic0
	b	$L587
	.option	pic2
	mul.d	$f0,$f0,$f2

$L588:
	jr	$31
	nop

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
	bc1t	$L605
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L605
	nop

	bltz	$6,$L602
	nop

	lui	$2,%hi($LC6)
	lwc1	$f2,%lo($LC6+4)($2)
	nop
	lwc1	$f3,%lo($LC6)($2)
	.option	pic0
	b	$L603
	.option	pic2
	andi	$2,$6,0x1

$L602:
	lui	$2,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($2)
	nop
	lwc1	$f3,%lo($LC7)($2)
	.option	pic0
	b	$L603
	.option	pic2
	andi	$2,$6,0x1

$L604:
	addu	$6,$2,$6
	sra	$6,$6,1
	beq	$6,$0,$L605
	andi	$2,$6,0x1

	mul.d	$f2,$f2,$f2
$L603:
	beq	$2,$0,$L604
	srl	$2,$6,31

	.option	pic0
	b	$L604
	.option	pic2
	mul.d	$f0,$f0,$f2

$L605:
	jr	$31
	nop

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
	beq	$6,$0,$L613
	move	$2,$4

	addu	$6,$5,$6
	move	$3,$4
$L608:
	addiu	$5,$5,1
	addiu	$3,$3,1
	lbu	$7,-1($3)
	lbu	$8,-1($5)
	nop
	xor	$7,$7,$8
	bne	$6,$5,$L608
	sb	$7,-1($3)

$L613:
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
	beq	$3,$0,$L621
	move	$2,$4

	move	$3,$4
$L616:
	addiu	$3,$3,1
	lb	$7,0($3)
	nop
	bne	$7,$0,$L616
	nop

	.option	pic0
	b	$L628
	nop

	.option	pic2
$L621:
	.option	pic0
	b	$L628
	.option	pic2
	move	$3,$4

$L619:
	addiu	$5,$5,1
	addiu	$3,$3,1
	addiu	$6,$6,-1
$L628:
	beq	$6,$0,$L623
	nop

	lb	$7,0($5)
	nop
	bne	$7,$0,$L619
	sb	$7,0($3)

	bne	$6,$0,$L629
	nop

$L623:
	sb	$0,0($3)
$L629:
	jr	$31
	nop

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
	beq	$5,$0,$L640
	move	$2,$0

	addu	$3,$4,$2
$L638:
	lb	$3,0($3)
	nop
	bne	$3,$0,$L633
	nop

$L630:
$L640:
	jr	$31
	nop

$L633:
	addiu	$2,$2,1
	bne	$5,$2,$L638
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
	beq	$7,$0,$L648
	move	$2,$4

	move	$3,$5
$L645:
	lb	$6,0($3)
	nop
	beq	$6,$0,$L649
	nop

	bne	$6,$7,$L645
	addiu	$3,$3,1

$L643:
	jr	$31
	nop

$L648:
	jr	$31
	move	$2,$0

$L649:
	addiu	$2,$2,1
	lb	$7,0($2)
	nop
	bne	$7,$0,$L645
	move	$3,$5

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
	.option	pic0
	b	$L652
	.option	pic2
	move	$2,$0

$L651:
	beq	$3,$0,$L656
	addiu	$4,$4,1

$L652:
	lb	$3,0($4)
	nop
	bne	$3,$5,$L651
	nop

	.option	pic0
	b	$L651
	.option	pic2
	move	$2,$4

$L656:
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
	move	$2,$4
	lb	$8,0($5)
	nop
	beq	$8,$0,$L658
	move	$3,$5

$L659:
	addiu	$3,$3,1
	lb	$4,0($3)
	nop
	bne	$4,$0,$L659
	nop

$L658:
	beq	$3,$5,$L681
	subu	$10,$3,$5

	.option	pic0
	b	$L666
	.option	pic2
	addiu	$10,$10,-1

$L669:
	.option	pic0
	b	$L662
	.option	pic2
	move	$6,$5

$L665:
	beq	$2,$0,$L681
	nop

	lbu	$4,0($2)
	nop
	beq	$4,$0,$L669
	move	$3,$2

	addu	$9,$2,$10
	move	$6,$5
$L663:
	lbu	$7,0($6)
	nop
	beq	$7,$0,$L662
	nop

	beq	$3,$9,$L662
	nop

	bne	$7,$4,$L662
	addiu	$3,$3,1

	lbu	$4,0($3)
	nop
	bne	$4,$0,$L663
	addiu	$6,$6,1

$L662:
	lbu	$3,0($6)
	nop
	beq	$3,$4,$L681
	nop

	addiu	$2,$2,1
$L666:
	lb	$3,0($2)
	nop
	beq	$3,$8,$L665
	nop

	bne	$3,$0,$L666
	addiu	$2,$2,1

	jr	$31
	move	$2,$0

$L681:
	jr	$31
	nop

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
	addiu	$sp,$sp,-16
	swc1	$f12,20($sp)
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L692
	swc1	$f13,16($sp)

$L683:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f0,$f2
	nop
	bc1f	$L686
	nop

	c.lt.d	$f14,$f0
	nop
	bc1t	$L693
	li	$2,-2147483648			# 0xffffffff80000000

$L686:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

$L692:
	c.lt.d	$f0,$f14
	nop
	bc1f	$L683
	li	$2,-2147483648			# 0xffffffff80000000

$L693:
	lw	$3,16($sp)
	nop
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
	.option	pic0
	b	$L686
	.option	pic2
	swc1	$f1,16($sp)

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
	beq	$7,$0,$L702
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L703
	subu	$5,$5,$7

	addu	$11,$4,$5
	sltu	$2,$11,$4
	bne	$2,$0,$L719
	move	$2,$0

	lb	$12,0($6)
	.option	pic0
	b	$L701
	nop

	.option	pic2
$L717:
	beq	$3,$0,$L718
	nop

	beq	$10,$9,$L718
	nop

$L696:
	sltu	$2,$11,$4
	bne	$2,$0,$L703
	nop

$L701:
	lb	$3,0($4)
	move	$2,$4
	bne	$3,$12,$L696
	addiu	$4,$4,1

	addiu	$3,$7,-1
	beq	$3,$0,$L719
	addiu	$5,$6,1

	move	$8,$4
$L697:
	lbu	$10,0($8)
	lbu	$9,0($5)
	nop
	bne	$10,$9,$L717
	addiu	$8,$8,1

	addiu	$3,$3,-1
	bne	$3,$0,$L697
	addiu	$5,$5,1

$L719:
	jr	$31
	nop

$L702:
	jr	$31
	move	$2,$4

$L703:
	jr	$31
	move	$2,$0

$L718:
	jr	$31
	nop

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
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$17,$4
	beq	$6,$0,$L721
	move	$16,$6

	lw	$25,%call16(memmove)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L721:
	addu	$2,$17,$16
	lw	$31,36($sp)
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
	addiu	$sp,$sp,-16
	swc1	$f12,20($sp)
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L751
	swc1	$f13,16($sp)

	move	$5,$0
$L727:
	lui	$3,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($3)
	nop
	lwc1	$f1,%lo($LC8)($3)
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.le.d	$f0,$f2
	nop
	bc1f	$L748
	move	$2,$0

	lui	$4,%hi($LC7)
	lwc1	$f2,%lo($LC7+4)($4)
	nop
	lwc1	$f3,%lo($LC7)($4)
$L731:
	addiu	$2,$2,1
	lwc1	$f4,20($sp)
	nop
	lwc1	$f5,16($sp)
	nop
	mul.d	$f4,$f4,$f2
	swc1	$f4,20($sp)
	c.le.d	$f0,$f4
	nop
	bc1t	$L731
	swc1	$f5,16($sp)

$L732:
	beq	$5,$0,$L735
	sw	$2,0($6)

	li	$2,-2147483648			# 0xffffffff80000000
	lw	$3,16($sp)
	nop
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
$L735:
	lwc1	$f0,20($sp)
	nop
	lwc1	$f1,16($sp)
	jr	$31
	addiu	$sp,$sp,16

$L751:
	li	$2,-2147483648			# 0xffffffff80000000
	lw	$3,16($sp)
	nop
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
	.option	pic0
	b	$L727
	.option	pic2
	li	$5,1			# 0x1

$L748:
	lui	$4,%hi($LC7)
	lwc1	$f0,%lo($LC7+4)($4)
	nop
	lwc1	$f1,%lo($LC7)($4)
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	c.lt.d	$f2,$f0
	nop
	bc1f	$L749
	nop

	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.eq.d	$f2,$f0
	nop
	bc1t	$L732
	move	$2,$0

	lwc1	$f0,%lo($LC7+4)($4)
	nop
	lwc1	$f1,%lo($LC7)($4)
$L734:
	addiu	$2,$2,-1
	lwc1	$f2,20($sp)
	nop
	lwc1	$f3,16($sp)
	nop
	add.d	$f2,$f2,$f2
	swc1	$f2,20($sp)
	c.lt.d	$f2,$f0
	nop
	bc1t	$L734
	swc1	$f3,16($sp)

	.option	pic0
	b	$L732
	nop

	.option	pic2
$L749:
	.option	pic0
	b	$L732
	.option	pic2
	move	$2,$0

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
	move	$9,$4
	move	$3,$5
	or	$5,$5,$4
	move	$2,$0
	beq	$5,$0,$L752
	move	$8,$0

$L755:
	andi	$5,$3,0x1
	subu	$4,$0,$5
	and	$5,$4,$6
	and	$4,$4,$7
	addu	$4,$8,$4
	sltu	$8,$4,$8
	addu	$2,$2,$5
	addu	$2,$8,$2
	move	$8,$4
	srl	$4,$7,31
	sll	$6,$6,1
	or	$6,$4,$6
	sll	$4,$9,31
	srl	$3,$3,1
	or	$3,$4,$3
	srl	$9,$9,1
	or	$4,$9,$3
	bne	$4,$0,$L755
	sll	$7,$7,1

$L752:
	jr	$31
	move	$3,$8

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
	beq	$2,$0,$L774
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
$L759:
	bltz	$5,$L760
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L760
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,$L759
	nop

$L768:
	move	$2,$0
$L762:
	bne	$6,$0,$L775
	nop

$L758:
	jr	$31
	nop

$L760:
	beq	$3,$0,$L768
	nop

$L774:
	.option	pic0
	b	$L764
	.option	pic2
	move	$2,$0

$L763:
	srl	$3,$3,1
	beq	$3,$0,$L762
	srl	$5,$5,1

$L764:
	sltu	$7,$4,$5
	bne	$7,$0,$L763
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L763
	.option	pic2
	or	$2,$2,$3

$L775:
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
	beq	$4,$2,$L778
	xor	$3,$4,$2

	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$25,%call16(__clzsi2)($28)
	sll	$4,$3,8
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L778:
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
	move	$2,$4
	move	$3,$5
	sra	$6,$4,31
	xor	$4,$4,$6
	beq	$2,$6,$L792
	xor	$5,$5,$6

$L787:
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$25,%call16(__clzdi2)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addiu	$2,$2,-1
	lw	$31,28($sp)
	nop
	jr	$31
	addiu	$sp,$sp,32

$L792:
	bne	$3,$2,$L787
	li	$2,63			# 0x3f

	jr	$31
	nop

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
	beq	$4,$0,$L799
	move	$2,$0

$L795:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	bne	$4,$0,$L795
	sll	$5,$5,1

$L799:
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
	srl	$7,$6,3
	li	$10,-8			# 0xfffffffffffffff8
	sltu	$2,$4,$5
	bne	$2,$0,$L801
	and	$10,$6,$10

	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L801
	addiu	$2,$6,-1

	beq	$6,$0,$L816
	li	$7,-1			# 0xffffffffffffffff

$L802:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L802
	sb	$6,0($3)

$L816:
	jr	$31
	nop

$L801:
	beq	$7,$0,$L804
	move	$2,$5

	move	$3,$4
	sll	$7,$7,3
	addu	$7,$7,$5
$L805:
	lw	$9,4($2)
	lw	$8,0($2)
	sw	$9,4($3)
	sw	$8,0($3)
	addiu	$2,$2,8
	bne	$2,$7,$L805
	addiu	$3,$3,8

$L804:
	sltu	$2,$10,$6
	beq	$2,$0,$L816
	addu	$2,$5,$10

	addu	$4,$4,$10
	addu	$5,$5,$6
$L806:
	lb	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$2,$5,$L806
	addiu	$4,$4,1

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
	bne	$2,$0,$L818
	srl	$8,$6,1

	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L818
	addiu	$2,$6,-1

	beq	$6,$0,$L834
	li	$7,-1			# 0xffffffffffffffff

$L819:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L819
	sb	$6,0($3)

$L834:
	jr	$31
	nop

$L818:
	beq	$8,$0,$L821
	move	$2,$5

	move	$3,$4
	sll	$8,$8,1
	addu	$8,$8,$5
$L822:
	lh	$7,0($2)
	nop
	sh	$7,0($3)
	addiu	$2,$2,2
	bne	$2,$8,$L822
	addiu	$3,$3,2

$L821:
	andi	$2,$6,0x1
	beq	$2,$0,$L834
	addu	$5,$5,$6

	lb	$2,-1($5)
	addu	$4,$4,$6
	jr	$31
	sb	$2,-1($4)

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
	srl	$8,$6,2
	li	$9,-4			# 0xfffffffffffffffc
	sltu	$2,$4,$5
	bne	$2,$0,$L836
	and	$9,$6,$9

	addu	$2,$5,$6
	sltu	$2,$2,$4
	bne	$2,$0,$L836
	addiu	$2,$6,-1

	beq	$6,$0,$L851
	li	$7,-1			# 0xffffffffffffffff

$L837:
	addu	$3,$5,$2
	lb	$6,0($3)
	addu	$3,$4,$2
	addiu	$2,$2,-1
	bne	$2,$7,$L837
	sb	$6,0($3)

$L851:
	jr	$31
	nop

$L836:
	beq	$8,$0,$L839
	move	$2,$5

	move	$3,$4
	sll	$8,$8,2
	addu	$8,$8,$5
$L840:
	lw	$7,0($2)
	nop
	sw	$7,0($3)
	addiu	$2,$2,4
	bne	$2,$8,$L840
	addiu	$3,$3,4

$L839:
	sltu	$2,$9,$6
	beq	$2,$0,$L851
	addu	$2,$5,$9

	addu	$4,$4,$9
	addu	$5,$5,$6
$L841:
	lb	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$2,$5,$L841
	addiu	$4,$4,1

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
	bltz	$4,$L856
	cvt.d.w	$f0,$f0

$L854:
	jr	$31
	nop

$L856:
	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
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
	bltz	$4,$L860
	cvt.d.w	$f0,$f0

$L858:
	jr	$31
	cvt.s.d	$f0,$f0

$L860:
	lui	$2,%hi($LC9)
	lwc1	$f2,%lo($LC9+4)($2)
	nop
	lwc1	$f3,%lo($LC9)($2)
	.option	pic0
	b	$L858
	.option	pic2
	add.d	$f0,$f0,$f2

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
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$25,%call16(__floatundidf)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	nop

	lw	$28,16($sp)
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
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$25,%call16(__floatundisf)($28)
	nop
	.reloc	1f,R_MIPS_JALR,__floatundisf
1:	jalr	$25
	nop

	lw	$28,16($sp)
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
	move	$2,$0
	li	$5,15			# 0xf
	li	$6,16			# 0x10
	subu	$3,$5,$2
$L870:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bne	$3,$0,$L871
	nop

	addiu	$2,$2,1
	bne	$2,$6,$L870
	subu	$3,$5,$2

$L871:
	jr	$31
	nop

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
	move	$2,$0
	li	$5,16			# 0x10
	sra	$3,$4,$2
$L876:
	andi	$3,$3,0x1
	bne	$3,$0,$L877
	nop

	addiu	$2,$2,1
	bne	$2,$5,$L876
	sra	$3,$4,$2

$L877:
	jr	$31
	nop

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
	lui	$2,%hi($LC10)
	lwc1	$f0,%lo($LC10)($2)
	nop
	c.le.s	$f0,$f12
	nop
	bc1t	$L885
	nop

	.set	macro
	trunc.w.s $f0,$f12,$3
	.set	nomacro
	mfc1	$2,$f0
	jr	$31
	nop

$L885:
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
	move	$2,$0
	move	$3,$0
	li	$6,16			# 0x10
$L887:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,$L887
	addu	$2,$2,$5

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
	move	$2,$0
	move	$3,$0
	li	$6,16			# 0x10
$L890:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,$L890
	addu	$2,$2,$5

	jr	$31
	nop

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
	beq	$4,$0,$L898
	move	$2,$0

$L894:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$2,$3
	srl	$4,$4,1
	bne	$4,$0,$L894
	sll	$5,$5,1

$L898:
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
	beq	$4,$0,$L906
	move	$2,$0

	beq	$5,$0,$L905
	nop

$L901:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$2,$3
	srl	$5,$5,1
	bne	$5,$0,$L901
	sll	$4,$4,1

$L906:
	jr	$31
	nop

$L905:
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
	beq	$2,$0,$L923
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
$L908:
	bltz	$5,$L909
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L909
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,$L908
	nop

$L917:
	move	$2,$0
$L911:
	bne	$6,$0,$L924
	nop

$L907:
	jr	$31
	nop

$L909:
	beq	$3,$0,$L917
	nop

$L923:
	.option	pic0
	b	$L913
	.option	pic2
	move	$2,$0

$L912:
	srl	$3,$3,1
	beq	$3,$0,$L911
	srl	$5,$5,1

$L913:
	sltu	$7,$4,$5
	bne	$7,$0,$L912
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L912
	.option	pic2
	or	$2,$2,$3

$L924:
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
	bc1t	$L928
	nop

	c.lt.s	$f14,$f12
	nop
	bc1t	$L929
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

$L928:
	li	$2,-1			# 0xffffffffffffffff
$L929:
	jr	$31
	nop

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
	bc1t	$L933
	nop

	c.lt.d	$f14,$f12
	nop
	bc1t	$L934
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

$L933:
	li	$2,-1			# 0xffffffffffffffff
$L934:
	jr	$31
	nop

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
	bltz	$5,$L951
	nop

	move	$7,$0
$L938:
	beq	$5,$0,$L939
	move	$2,$0

	li	$6,32			# 0x20
	andi	$3,$5,0x1
$L952:
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$2,$3
	sra	$5,$5,1
	beq	$5,$0,$L939
	sll	$4,$4,1

	addiu	$6,$6,-1
	andi	$6,$6,0x00ff
	bne	$6,$0,$L952
	andi	$3,$5,0x1

$L939:
	beq	$7,$0,$L953
	nop

	subu	$2,$0,$2
$L953:
	jr	$31
	nop

$L951:
	subu	$5,$0,$5
	.option	pic0
	b	$L938
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
	bltz	$4,$L974
	nop

	move	$8,$0
$L955:
	bltz	$5,$L975
	nop

$L956:
	sltu	$2,$5,$4
	beq	$2,$0,$L964
	move	$7,$4

	li	$3,32			# 0x20
	li	$2,1			# 0x1
$L958:
	sll	$5,$5,1
	sltu	$6,$5,$4
	beq	$6,$0,$L957
	sll	$2,$2,1

	addiu	$3,$3,-1
	bne	$3,$0,$L958
	nop

$L965:
	move	$4,$0
$L959:
	beq	$8,$0,$L977
	move	$2,$4

	subu	$2,$0,$4
$L977:
	jr	$31
	nop

$L974:
	subu	$4,$0,$4
	.option	pic0
	b	$L955
	.option	pic2
	li	$8,1			# 0x1

$L975:
	subu	$5,$0,$5
	.option	pic0
	b	$L956
	.option	pic2
	xori	$8,$8,0x1

$L964:
	.option	pic0
	b	$L973
	.option	pic2
	li	$2,1			# 0x1

$L957:
	beq	$2,$0,$L965
	nop

$L973:
	.option	pic0
	b	$L961
	.option	pic2
	move	$4,$0

$L976:
	or	$4,$4,$2
$L960:
	srl	$2,$2,1
	beq	$2,$0,$L959
	srl	$5,$5,1

$L961:
	sltu	$3,$7,$5
	bne	$3,$0,$L960
	nop

	.option	pic0
	b	$L976
	.option	pic2
	subu	$7,$7,$5

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
	bltz	$4,$L999
	nop

	move	$8,$0
$L979:
	move	$6,$4
	bltz	$5,$L1000
	move	$2,$5

$L980:
	sltu	$3,$2,$4
	beq	$3,$0,$L988
	li	$5,32			# 0x20

	li	$3,1			# 0x1
$L982:
	sll	$2,$2,1
	sltu	$7,$2,$4
	beq	$7,$0,$L998
	sll	$3,$3,1

	addiu	$5,$5,-1
	bne	$5,$0,$L982
	nop

$L983:
	beq	$8,$0,$L1002
	move	$2,$6

	subu	$2,$0,$6
$L1002:
	jr	$31
	nop

$L999:
	subu	$4,$0,$4
	.option	pic0
	b	$L979
	.option	pic2
	li	$8,1			# 0x1

$L1000:
	.option	pic0
	b	$L980
	.option	pic2
	subu	$2,$0,$5

$L988:
	.option	pic0
	b	$L993
	.option	pic2
	li	$3,1			# 0x1

$L1001:
$L984:
	srl	$3,$3,1
	srl	$2,$2,1
$L998:
	beq	$3,$0,$L983
	nop

$L993:
	sltu	$4,$6,$2
	bne	$4,$0,$L984
	nop

	.option	pic0
	b	$L1001
	.option	pic2
	subu	$6,$6,$2

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
	sltu	$2,$5,$4
	beq	$2,$0,$L1019
	li	$3,1			# 0x1

	li	$2,16			# 0x10
	li	$3,1			# 0x1
	sll	$7,$5,16
$L1021:
	sra	$7,$7,16
	bltz	$7,$L1005
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1005
	andi	$3,$3,0xffff

	addiu	$2,$2,-1
	bne	$2,$0,$L1021
	sll	$7,$5,16

$L1013:
	move	$2,$0
$L1007:
	bne	$6,$0,$L1020
	nop

$L1010:
	jr	$31
	nop

$L1005:
	beq	$3,$0,$L1013
	nop

$L1019:
	.option	pic0
	b	$L1009
	.option	pic2
	move	$2,$0

$L1008:
	srl	$3,$3,1
	beq	$3,$0,$L1007
	srl	$5,$5,1

$L1009:
	sltu	$7,$4,$5
	bne	$7,$0,$L1008
	nop

	subu	$4,$4,$5
	andi	$4,$4,0xffff
	or	$2,$3,$2
	.option	pic0
	b	$L1008
	.option	pic2
	andi	$2,$2,0xffff

$L1020:
	jr	$31
	move	$2,$4

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
	beq	$2,$0,$L1038
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
$L1023:
	bltz	$5,$L1024
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1024
	sll	$3,$3,1

	addiu	$2,$2,-1
	bne	$2,$0,$L1023
	nop

$L1032:
	move	$2,$0
$L1026:
	bne	$6,$0,$L1039
	nop

$L1022:
	jr	$31
	nop

$L1024:
	beq	$3,$0,$L1032
	nop

$L1038:
	.option	pic0
	b	$L1028
	.option	pic2
	move	$2,$0

$L1027:
	srl	$3,$3,1
	beq	$3,$0,$L1026
	srl	$5,$5,1

$L1028:
	sltu	$7,$4,$5
	bne	$7,$0,$L1027
	nop

	subu	$4,$4,$5
	.option	pic0
	b	$L1027
	.option	pic2
	or	$2,$2,$3

$L1039:
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
	beq	$2,$0,$L1041
	sll	$2,$5,$6

	jr	$31
	move	$3,$0

$L1041:
	beq	$6,$0,$L1044
	nop

	sll	$3,$5,$6
	subu	$2,$0,$6
	srl	$5,$5,$2
	sll	$2,$4,$6
	jr	$31
	or	$2,$5,$2

$L1044:
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
	beq	$2,$0,$L1046
	sra	$2,$4,31

	sra	$5,$4,$6
$L1048:
	jr	$31
	move	$3,$5

$L1046:
	beq	$6,$0,$L1049
	nop

	sra	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L1048
	.option	pic2
	or	$5,$4,$5

$L1049:
	.option	pic0
	b	$L1048
	.option	pic2
	move	$2,$4

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
	srl	$3,$4,24
	sll	$2,$5,24
	srl	$6,$4,8
	andi	$6,$6,0xff00
	or	$3,$3,$6
	sll	$7,$4,8
	srl	$6,$5,24
	or	$6,$7,$6
	li	$7,16711680			# 0xff0000
	and	$6,$6,$7
	or	$3,$3,$6
	sll	$4,$4,24
	or	$3,$3,$4
	sll	$6,$5,8
	srl	$4,$5,24
	or	$4,$2,$4
	srl	$5,$5,8
	andi	$5,$5,0xff00
	or	$4,$4,$5
	and	$2,$6,$7
	jr	$31
	or	$2,$4,$2

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
	srl	$2,$4,24
	sll	$3,$4,24
	or	$2,$2,$3
	srl	$3,$4,8
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
	li	$5,65536			# 0x10000
	sltu	$5,$4,$5
	sll	$5,$5,4
	li	$2,16			# 0x10
	subu	$2,$2,$5
	srl	$3,$4,$2
	andi	$2,$3,0xff00
	sltu	$2,$2,1
	sll	$2,$2,3
	li	$4,8			# 0x8
	subu	$4,$4,$2
	srl	$3,$3,$4
	addu	$4,$2,$5
	andi	$2,$3,0xf0
	sltu	$2,$2,1
	sll	$2,$2,2
	li	$5,4			# 0x4
	subu	$5,$5,$2
	srl	$3,$3,$5
	addu	$5,$2,$4
	andi	$4,$3,0xc
	sltu	$4,$4,1
	sll	$4,$4,1
	li	$2,2			# 0x2
	subu	$6,$2,$4
	srl	$3,$3,$6
	srl	$6,$3,1
	andi	$6,$6,0x1
	bne	$6,$0,$L1053
	nop

	subu	$2,$2,$3
$L1054:
	addu	$4,$4,$5
	jr	$31
	addu	$2,$2,$4

$L1053:
	.option	pic0
	b	$L1054
	.option	pic2
	move	$2,$0

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
	bne	$2,$0,$L1059
	slt	$4,$6,$4

	bne	$4,$0,$L1058
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1059
	sltu	$5,$7,$5

	bne	$5,$0,$L1060
	nop

	jr	$31
	li	$2,1			# 0x1

$L1058:
	jr	$31
	li	$2,2			# 0x2

$L1059:
	jr	$31
	move	$2,$0

$L1060:
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
	bne	$2,$0,$L1065
	slt	$4,$6,$4

	bne	$4,$0,$L1067
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bne	$2,$0,$L1065
	sltu	$5,$7,$5

	bne	$5,$0,$L1066
	nop

	.option	pic0
	b	$L1062
	.option	pic2
	li	$2,1			# 0x1

$L1065:
	move	$2,$0
$L1062:
$L1067:
	jr	$31
	addiu	$2,$2,-1

$L1066:
	.option	pic0
	b	$L1062
	.option	pic2
	li	$2,2			# 0x2

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
	andi	$5,$4,0xffff
	sltu	$5,$5,1
	sll	$5,$5,4
	srl	$3,$4,$5
	andi	$2,$3,0xff
	sltu	$2,$2,1
	sll	$2,$2,3
	srl	$3,$3,$2
	addu	$4,$2,$5
	andi	$2,$3,0xf
	sltu	$2,$2,1
	sll	$2,$2,2
	srl	$3,$3,$2
	addu	$5,$2,$4
	andi	$4,$3,0x3
	sltu	$4,$4,1
	sll	$4,$4,1
	srl	$3,$3,$4
	andi	$3,$3,0x3
	nor	$2,$0,$3
	andi	$2,$2,0x1
	srl	$3,$3,1
	li	$6,2			# 0x2
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
	beq	$2,$0,$L1070
	move	$2,$0

	srl	$5,$4,$6
$L1072:
	jr	$31
	move	$3,$5

$L1070:
	beq	$6,$0,$L1073
	nop

	srl	$2,$4,$6
	subu	$3,$0,$6
	sll	$4,$4,$3
	srl	$5,$5,$6
	.option	pic0
	b	$L1072
	.option	pic2
	or	$5,$4,$5

$L1073:
	.option	pic0
	b	$L1072
	.option	pic2
	move	$2,$4

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
	andi	$2,$4,0xffff
	andi	$3,$5,0xffff
	mult	$2,$3
	mflo	$6
	srl	$7,$6,16
	srl	$4,$4,16
	mult	$3,$4
	mflo	$3
	addu	$3,$3,$7
	andi	$7,$3,0xffff
	srl	$5,$5,16
	mult	$2,$5
	mflo	$2
	addu	$2,$2,$7
	andi	$6,$6,0xffff
	sll	$7,$2,16
	addu	$6,$6,$7
	srl	$3,$3,16
	mult	$4,$5
	mflo	$4
	addu	$3,$3,$4
	srl	$2,$2,16
	addu	$2,$3,$2
	jr	$31
	move	$3,$6

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
	mflo	$3
	srl	$9,$3,16
	srl	$11,$5,16
	mult	$2,$11
	mflo	$2
	addu	$2,$2,$9
	andi	$12,$2,0xffff
	srl	$10,$7,16
	mult	$8,$10
	mflo	$9
	addu	$9,$9,$12
	andi	$3,$3,0xffff
	sll	$8,$9,16
	addu	$8,$3,$8
	srl	$3,$2,16
	mult	$11,$10
	mflo	$2
	addu	$3,$3,$2
	srl	$9,$9,16
	addu	$3,$3,$9
	mult	$5,$6
	mflo	$2
	addu	$3,$2,$3
	nop
	mult	$7,$4
	mflo	$2
	addu	$2,$3,$2
	jr	$31
	move	$3,$8

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
	subu	$3,$0,$5
	sltu	$5,$0,$5
	subu	$2,$0,$4
	jr	$31
	subu	$2,$2,$5

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
	sll	$3,$4,31
	srl	$2,$5,1
	or	$2,$3,$2
	srl	$6,$4,1
	li	$3,1431633920			# 0x55550000
	addiu	$3,$3,21845
	and	$6,$6,$3
	and	$2,$2,$3
	subu	$2,$5,$2
	sltu	$5,$5,$2
	subu	$4,$4,$6
	subu	$4,$4,$5
	sll	$5,$4,30
	srl	$3,$2,2
	or	$3,$5,$3
	srl	$6,$4,2
	li	$5,858980352			# 0x33330000
	addiu	$5,$5,13107
	and	$6,$6,$5
	and	$3,$3,$5
	and	$4,$4,$5
	and	$2,$2,$5
	addu	$2,$3,$2
	sltu	$3,$2,$3
	addu	$4,$6,$4
	addu	$4,$3,$4
	sll	$5,$4,28
	srl	$3,$2,4
	or	$3,$5,$3
	srl	$5,$4,4
	addu	$2,$3,$2
	sltu	$3,$2,$3
	addu	$4,$5,$4
	addu	$3,$3,$4
	li	$4,252641280			# 0xf0f0000
	addiu	$4,$4,3855
	and	$3,$3,$4
	and	$2,$2,$4
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
	srl	$2,$4,1
	li	$3,1431633920			# 0x55550000
	addiu	$3,$3,21845
	and	$2,$2,$3
	subu	$4,$4,$2
	srl	$3,$4,2
	li	$2,858980352			# 0x33330000
	addiu	$2,$2,13107
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
	lui	$4,%hi($LC8)
	lwc1	$f0,%lo($LC8+4)($4)
	nop
	lwc1	$f1,%lo($LC8)($4)
	.option	pic0
	b	$L1084
	.option	pic2
	move	$2,$6

$L1091:
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L1083
	nop

	mul.d	$f12,$f12,$f12
$L1084:
	andi	$3,$2,0x1
	beq	$3,$0,$L1091
	srl	$3,$2,31

	.option	pic0
	b	$L1091
	.option	pic2
	mul.d	$f0,$f0,$f12

$L1083:
	bltz	$6,$L1090
	nop

$L1081:
	jr	$31
	nop

$L1090:
	lwc1	$f2,%lo($LC8+4)($4)
	nop
	lwc1	$f3,%lo($LC8)($4)
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
	lui	$4,%hi($LC11)
	lwc1	$f0,%lo($LC11)($4)
	.option	pic0
	b	$L1095
	.option	pic2
	move	$2,$5

$L1102:
	addu	$2,$3,$2
	sra	$2,$2,1
	beq	$2,$0,$L1094
	nop

	mul.s	$f12,$f12,$f12
$L1095:
	andi	$3,$2,0x1
	beq	$3,$0,$L1102
	srl	$3,$2,31

	.option	pic0
	b	$L1102
	.option	pic2
	mul.s	$f0,$f0,$f12

$L1094:
	bltz	$5,$L1101
	nop

$L1092:
	jr	$31
	nop

$L1101:
	lwc1	$f2,%lo($LC11)($4)
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
	bne	$2,$0,$L1107
	sltu	$4,$6,$4

	bne	$4,$0,$L1106
	nop

	sltu	$2,$5,$7
	bne	$2,$0,$L1107
	sltu	$5,$7,$5

	bne	$5,$0,$L1108
	nop

	jr	$31
	li	$2,1			# 0x1

$L1106:
	jr	$31
	li	$2,2			# 0x2

$L1107:
	jr	$31
	move	$2,$0

$L1108:
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
	bne	$2,$0,$L1113
	sltu	$4,$6,$4

	bne	$4,$0,$L1115
	li	$2,2			# 0x2

	sltu	$2,$5,$7
	bne	$2,$0,$L1113
	sltu	$5,$7,$5

	bne	$5,$0,$L1114
	nop

	.option	pic0
	b	$L1110
	.option	pic2
	li	$2,1			# 0x1

$L1113:
	move	$2,$0
$L1110:
$L1115:
	jr	$31
	addiu	$2,$2,-1

$L1114:
	.option	pic0
	b	$L1110
	.option	pic2
	li	$2,2			# 0x2

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
	.word	1072693248
	.word	0
	.align	3
$LC9:
	.word	1106247680
	.word	0
	.section	.rodata.cst4
	.align	2
$LC10:
	.word	1191182336
	.align	2
$LC11:
	.word	1065353216
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
