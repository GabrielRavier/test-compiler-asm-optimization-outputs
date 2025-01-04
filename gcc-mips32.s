	.file	1 "mini-libc.c"
	.section .mdebug.abi32
	.previous
	.nan	2008
	.module	fp=32
	.module	oddspreg
	.module	arch=mips1
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

	addu	$15,$5,$6
	beq	$6,$0,$L33
	addu	$14,$4,$6

$L4:
	lb	$13,-1($15)
	addiu	$14,$14,-1
	addiu	$15,$15,-1
	bne	$2,$14,$L4
	sb	$13,0($14)

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
	addiu	$4,$6,-1

	sltu	$7,$4,7
	bne	$7,$0,$L5
	addiu	$12,$5,1

	or	$8,$5,$2
	andi	$9,$8,0x3
	bne	$9,$0,$L5
	subu	$10,$2,$12

	sltu	$11,$10,3
	bne	$11,$0,$L5
	move	$24,$2

	srl	$12,$6,2
	sll	$13,$12,2
	addu	$14,$5,$13
$L6:
	lw	$15,0($5)
	addiu	$5,$5,4
	sw	$15,0($24)
	bne	$14,$5,$L6
	addiu	$24,$24,4

	addu	$25,$2,$13
	beq	$6,$13,$L33
	subu	$3,$6,$13

	lb	$6,0($14)
	li	$5,1			# 0x1
	beq	$3,$5,$L33
	sb	$6,0($25)

	lb	$4,1($14)
	li	$7,2			# 0x2
	beq	$3,$7,$L33
	sb	$4,1($25)

	lb	$8,2($14)
	jr	$31
	sb	$8,2($25)

$L5:
	addu	$9,$2,$6
	.option	pic0
	b	$L9
	.option	pic2
	move	$11,$2

$L31:
	addiu	$12,$12,1
$L9:
	lb	$10,-1($12)
	addiu	$11,$11,1
	bne	$11,$9,$L31
	sb	$10,-1($11)

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
	bne	$6,$0,$L47
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

$L49:
	beq	$6,$0,$L50
	addiu	$4,$4,1

$L47:
	lbu	$2,0($4)
	nop
	bne	$2,$5,$L49
	addiu	$6,$6,-1

	jr	$31
	move	$2,$4

$L50:
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
	b	$L68
	nop

	.option	pic2
$L70:
	lbu	$2,0($4)
	lbu	$3,0($5)
	nop
	bne	$2,$3,$L69
	addiu	$6,$6,-1

	addiu	$4,$4,1
	addiu	$5,$5,1
$L68:
	bne	$6,$0,$L70
	move	$2,$0

	jr	$31
	nop

$L69:
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
	beq	$6,$0,$L72
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

$L72:
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
	addu	$7,$4,$6
	andi	$5,$5,0x00ff
	.option	pic0
	b	$L78
	.option	pic2
	addiu	$4,$4,-1

$L80:
	lbu	$3,0($2)
	nop
	beq	$3,$5,$L81
	addiu	$7,$7,-1

$L78:
	bne	$7,$4,$L80
	move	$2,$7

	move	$2,$0
$L81:
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
	beq	$6,$0,$L85
	move	$16,$4

	lw	$25,%call16(memset)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	andi	$5,$5,0x00ff

$L85:
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
	beq	$3,$0,$L94
	sb	$3,0($4)

$L89:
	lb	$4,1($5)
	addiu	$2,$2,1
	addiu	$5,$5,1
	bne	$4,$0,$L89
	sb	$4,0($2)

$L94:
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
	lb	$4,0($4)
	nop
	bne	$4,$0,$L96
	andi	$5,$5,0x00ff

$L104:
	jr	$31
	nop

$L98:
	lb	$4,1($2)
	nop
	beq	$4,$0,$L104
	addiu	$2,$2,1

$L96:
	andi	$3,$4,0x00ff
	bne	$3,$5,$L98
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
	b	$L107
	.option	pic2
	move	$2,$4

$L110:
	beq	$3,$0,$L109
	addiu	$2,$2,1

$L107:
	lb	$3,0($2)
	nop
	bne	$3,$5,$L110
	nop

	jr	$31
	nop

$L109:
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
$L114:
	lb	$3,0($4)
	lb	$2,0($5)
	nop
	bne	$3,$2,$L121
	addiu	$4,$4,1

	bne	$3,$0,$L114
	addiu	$5,$5,1

$L113:
	andi	$4,$2,0x00ff
	jr	$31
	subu	$2,$3,$4

$L121:
	.option	pic0
	b	$L113
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
	beq	$2,$0,$L125
	move	$5,$4

$L124:
	lb	$3,1($5)
	nop
	bne	$3,$0,$L124
	addiu	$5,$5,1

	jr	$31
	subu	$2,$5,$4

$L125:
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
	beq	$6,$0,$L135
	nop

	lbu	$2,0($4)
	nop
	beq	$2,$0,$L137
	addiu	$6,$6,-1

	.option	pic0
	b	$L131
	.option	pic2
	addu	$8,$4,$6

$L139:
	beq	$4,$8,$L130
	nop

	bne	$3,$2,$L130
	addiu	$4,$4,1

	lbu	$2,0($4)
	nop
	beq	$2,$0,$L138
	nop

	move	$5,$7
$L131:
	lbu	$3,0($5)
	nop
	bne	$3,$0,$L139
	addiu	$7,$5,1

$L130:
	jr	$31
	subu	$2,$2,$3

$L135:
	jr	$31
	move	$2,$0

$L138:
	lbu	$3,1($5)
	jr	$31
	subu	$2,$2,$3

$L137:
	lbu	$3,0($5)
	.option	pic0
	b	$L130
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
	bne	$2,$0,$L144
	srl	$3,$6,1

	sll	$6,$3,1
	addu	$7,$4,$6
$L142:
	lbu	$8,1($4)
	lbu	$9,0($4)
	addiu	$4,$4,2
	sb	$8,0($5)
	sb	$9,1($5)
	bne	$4,$7,$L142
	addiu	$5,$5,2

$L144:
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
	addiu	$3,$2,-97
	jr	$31
	sltu	$2,$3,26

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
	beq	$4,$2,$L149
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

$L149:
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
	bne	$2,$0,$L152
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

$L152:
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
	beq	$4,$2,$L159
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

$L159:
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
	bne	$2,$0,$L164
	addiu	$3,$4,-127

	sltu	$5,$3,33
	beq	$5,$0,$L166
	addiu	$6,$4,-8232

$L164:
	jr	$31
	li	$2,1			# 0x1

$L166:
	sltu	$7,$6,2
	bne	$7,$0,$L165
	li	$8,-65536			# 0xffffffffffff0000

	addiu	$9,$8,7
	addu	$4,$4,$9
	jr	$31
	sltu	$2,$4,3

$L165:
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
	bne	$2,$0,$L175
	sltu	$3,$4,8232

	bne	$3,$0,$L173
	addiu	$5,$4,-8234

	li	$6,47062			# 0xb7d6
	sltu	$7,$5,$6
	bne	$7,$0,$L173
	li	$8,-65536			# 0xffffffffffff0000

	addiu	$9,$8,8192
	addu	$10,$4,$9
	sltu	$11,$10,8185
	bne	$11,$0,$L173
	addiu	$12,$8,4

	li	$13,1048576			# 0x100000
	addu	$14,$4,$12
	addiu	$15,$13,4
	sltu	$24,$14,$15
	beq	$24,$0,$L174
	andi	$4,$4,0xfffe

	xori	$25,$4,0xfffe
	jr	$31
	sltu	$2,$0,$25

$L173:
	jr	$31
	li	$2,1			# 0x1

$L175:
	addiu	$2,$4,1
	andi	$3,$2,0x7f
	sltu	$5,$3,33
	jr	$31
	xori	$2,$5,0x1

$L174:
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
	sltu	$3,$2,10
	bne	$3,$0,$L178
	ori	$4,$4,0x20

	addiu	$5,$4,-97
	jr	$31
	sltu	$2,$5,6

$L178:
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
	bc1t	$L183
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L184
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L187
	nop

	jr	$31
	sub.d	$f0,$f12,$f14

$L187:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	jr	$31
	nop

$L183:
	jr	$31
	mov.d	$f0,$f12

$L184:
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
	bc1t	$L191
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L192
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L195
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L195:
	mtc1	$0,$f0
	jr	$31
	nop

$L191:
	jr	$31
	mov.s	$f0,$f12

$L192:
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
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	swc1	$f14,8($sp)
	swc1	$f15,12($sp)
	bc1t	$L207
	mov.d	$f0,$f14

	c.un.d	$f14,$f14
	nop
	bc1t	$L203
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,4($sp)
	lw	$3,12($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beq	$5,$6,$L198
	nop

	bne	$5,$0,$L207
	nop

$L203:
	jr	$31
	mov.d	$f0,$f12

$L198:
	c.lt.d	$f12,$f14
	nop
	bc1f	$L207
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

$L207:
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
	bc1t	$L219
	mov.s	$f0,$f14

	c.un.s	$f14,$f14
	nop
	bc1t	$L215
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	lw	$3,4($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beq	$5,$6,$L210
	nop

	bne	$5,$0,$L219
	nop

$L215:
	jr	$31
	mov.s	$f0,$f12

$L210:
	c.lt.s	$f12,$f14
	nop
	bc1f	$L219
	mov.s	$f0,$f12

	jr	$31
	mov.s	$f0,$f14

$L219:
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
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	swc1	$f14,8($sp)
	swc1	$f15,12($sp)
	bc1t	$L231
	mov.d	$f0,$f14

	c.un.d	$f14,$f14
	nop
	bc1t	$L227
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,4($sp)
	lw	$3,12($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beq	$5,$6,$L222
	nop

	bne	$5,$0,$L231
	nop

$L227:
	jr	$31
	mov.d	$f0,$f12

$L222:
	c.lt.d	$f12,$f14
	nop
	bc1f	$L231
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

$L231:
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
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	swc1	$f14,8($sp)
	swc1	$f15,12($sp)
	bc1t	$L244
	mov.d	$f0,$f14

	c.un.d	$f14,$f14
	nop
	bc1t	$L239
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,4($sp)
	lw	$3,12($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beq	$5,$6,$L234
	nop

	bnel	$5,$0,$L244
	mov.d	$f0,$f12

$L244:
	jr	$31
	nop

$L234:
	c.lt.d	$f12,$f14
	nop
	bc1t	$L244
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

	jr	$31
	nop

$L239:
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
	bc1t	$L257
	mov.s	$f0,$f14

	c.un.s	$f14,$f14
	nop
	bc1t	$L252
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,0($sp)
	lw	$3,4($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beq	$5,$6,$L247
	nop

	bnel	$5,$0,$L257
	mov.s	$f0,$f12

$L257:
	jr	$31
	nop

$L247:
	c.lt.s	$f12,$f14
	nop
	bc1t	$L257
	mov.s	$f0,$f12

	jr	$31
	mov.s	$f0,$f14

	jr	$31
	nop

$L252:
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
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	swc1	$f14,8($sp)
	swc1	$f15,12($sp)
	bc1t	$L270
	mov.d	$f0,$f14

	c.un.d	$f14,$f14
	nop
	bc1t	$L265
	li	$4,-2147483648			# 0xffffffff80000000

	lw	$2,4($sp)
	lw	$3,12($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beq	$5,$6,$L260
	nop

	bnel	$5,$0,$L270
	mov.d	$f0,$f12

$L270:
	jr	$31
	nop

$L260:
	c.lt.d	$f12,$f14
	nop
	bc1t	$L270
	mov.d	$f0,$f12

	jr	$31
	mov.d	$f0,$f14

	jr	$31
	nop

$L265:
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
	beq	$4,$0,$L274
	addiu	$2,$2,%lo(s.0)

	lui	$6,%hi(digits)
	move	$5,$2
	addiu	$7,$6,%lo(digits)
$L273:
	andi	$3,$4,0x3f
	addu	$8,$7,$3
	lbu	$9,0($8)
	srl	$4,$4,6
	sb	$9,0($5)
	bne	$4,$0,$L273
	addiu	$5,$5,1

	jr	$31
	sb	$0,0($5)

$L274:
	move	$5,$2
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
	sw	$4,%lo(seed)($2)
	jr	$31
	sw	$0,%lo(seed+4)($2)

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
	lui	$5,%hi(seed)
	lw	$2,%lo(seed)($5)
	li	$6,1284833280			# 0x4c950000
	addiu	$3,$6,32557
	multu	$ac0,$2,$3
	lw	$4,%lo(seed+4)($5)
	li	$7,1481703424			# 0x58510000
	ori	$10,$7,0xf42d
	gsmultu	$12,$2,$10
	gsmultu	$11,$4,$3
	addu	$13,$11,$12
	addiu	$sp,$sp,-16
	sw	$2,8($sp)
	addiu	$sp,$sp,16
	mflo	$8
	addiu	$14,$8,1
	sltu	$24,$14,$8
	mfhi	$9
	addu	$15,$13,$9
	addu	$25,$24,$15
	srl	$2,$25,1
	sw	$14,%lo(seed)($5)
	jr	$31
	sw	$25,%lo(seed+4)($5)

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
	beql	$5,$0,$L285
	sw	$0,4($4)

	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$3,0($4)
	nop
	bnel	$3,$0,$L287
	sw	$4,4($3)

$L287:
	jr	$31
	nop

$L285:
	sw	$0,0($4)
	jr	$31
	nop

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
	beq	$2,$0,$L289
	nop

	lw	$3,4($4)
	nop
	sw	$3,4($2)
$L289:
	lw	$4,4($4)
	nop
	bnel	$4,$0,$L297
	sw	$2,0($4)

$L297:
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
	beq	$19,$0,$L299
	move	$18,$7

	move	$16,$5
	.option	pic0
	b	$L301
	.option	pic2
	move	$17,$0

$L314:
	beq	$19,$17,$L299
	addu	$16,$16,$18

$L301:
	move	$5,$16
	move	$25,$22
	jalr	$25
	move	$4,$20

	move	$21,$16
	lw	$28,16($sp)
	bne	$2,$0,$L314
	addiu	$17,$17,1

$L298:
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

$L299:
	addiu	$2,$19,1
	gsmultu	$3,$18,$19
	sw	$2,0($23)
	beq	$18,$0,$L298
	addu	$21,$fp,$3

	lw	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$21

	.option	pic0
	b	$L298
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
	beq	$20,$0,$L316
	sw	$16,24($sp)

	move	$18,$4
	move	$19,$7
	move	$16,$5
	.option	pic0
	b	$L318
	.option	pic2
	move	$17,$0

$L327:
	beq	$20,$17,$L316
	addu	$16,$16,$19

$L318:
	move	$5,$16
	move	$25,$21
	jalr	$25
	move	$4,$18

	move	$22,$16
	bne	$2,$0,$L327
	addiu	$17,$17,1

$L315:
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

$L316:
	.option	pic0
	b	$L315
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
	bltz	$4,$L330
	move	$2,$4

	jr	$31
	nop

$L330:
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
$L340:
	lb	$5,0($4)
	nop
	addiu	$2,$5,-9
	beq	$5,$3,$L334
	sltu	$6,$2,5

	bnel	$6,$0,$L340
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,$L335
	li	$10,45			# 0x2d

	bne	$5,$10,$L353
	addiu	$13,$5,-48

	lb	$11,1($4)
	nop
	addiu	$13,$11,-48
	sltu	$12,$13,10
	beq	$12,$0,$L345
	addiu	$4,$4,1

	li	$15,1			# 0x1
$L338:
	move	$2,$0
$L342:
	sll	$24,$2,2
	lb	$5,1($4)
	addu	$25,$24,$2
	sll	$3,$25,1
	move	$6,$13
	subu	$2,$3,$13
	addiu	$13,$5,-48
	sltu	$7,$13,10
	bne	$7,$0,$L342
	addiu	$4,$4,1

	bne	$15,$0,$L354
	nop

	jr	$31
	subu	$2,$6,$3

$L334:
	.option	pic0
	b	$L340
	.option	pic2
	addiu	$4,$4,1

$L353:
	sltu	$14,$13,10
	bne	$14,$0,$L338
	move	$15,$0

$L352:
	jr	$31
	move	$2,$0

$L345:
	move	$2,$0
$L354:
	jr	$31
	nop

$L335:
	lb	$8,1($4)
	move	$15,$0
	addiu	$13,$8,-48
	sltu	$9,$13,10
	bne	$9,$0,$L338
	addiu	$4,$4,1

	.option	pic0
	b	$L352
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
$L360:
	lb	$5,0($4)
	nop
	addiu	$2,$5,-9
	beq	$5,$3,$L356
	sltu	$6,$2,5

	bnel	$6,$0,$L360
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,$L357
	li	$10,45			# 0x2d

	beq	$5,$10,$L358
	li	$15,1			# 0x1

	addiu	$13,$5,-48
	sltu	$14,$13,10
	beq	$14,$0,$L374
	nop

$L368:
	move	$15,$0
$L361:
	move	$2,$0
$L364:
	sll	$24,$2,2
	lb	$5,1($4)
	addu	$25,$24,$2
	sll	$3,$25,1
	move	$6,$13
	subu	$2,$3,$13
	addiu	$13,$5,-48
	sltu	$7,$13,10
	bne	$7,$0,$L364
	addiu	$4,$4,1

	bne	$15,$0,$L375
	nop

	jr	$31
	subu	$2,$6,$3

$L356:
	.option	pic0
	b	$L360
	.option	pic2
	addiu	$4,$4,1

$L358:
	lb	$11,1($4)
	nop
	addiu	$13,$11,-48
	sltu	$12,$13,10
	bne	$12,$0,$L361
	addiu	$4,$4,1

$L374:
	jr	$31
	move	$2,$0

$L357:
	lb	$8,1($4)
	nop
	addiu	$13,$8,-48
	sltu	$9,$13,10
	bne	$9,$0,$L368
	addiu	$4,$4,1

	move	$2,$0
$L375:
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
	li	$3,32			# 0x20
$L383:
	lb	$5,0($4)
	nop
	addiu	$2,$5,-9
	beq	$5,$3,$L377
	sltu	$6,$2,5

	bnel	$6,$0,$L383
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,$L378
	li	$10,45			# 0x2d

	bne	$5,$10,$L395
	addiu	$13,$5,-48

	lb	$11,1($4)
	nop
	addiu	$13,$11,-48
	sltu	$12,$13,10
	beq	$12,$0,$L388
	addiu	$4,$4,1

	li	$15,1			# 0x1
$L381:
	move	$2,$0
	move	$24,$0
$L385:
	sll	$25,$2,2
	srl	$3,$2,30
	sll	$5,$24,2
	addu	$2,$25,$2
	or	$6,$3,$5
	addu	$7,$6,$24
	sltu	$8,$2,$25
	lb	$10,1($4)
	addu	$9,$8,$7
	sll	$12,$2,1
	srl	$11,$2,31
	sll	$14,$9,1
	subu	$2,$12,$13
	sra	$25,$13,31
	or	$3,$11,$14
	move	$5,$13
	addiu	$13,$10,-48
	sltu	$24,$12,$2
	subu	$7,$3,$25
	sltu	$6,$13,10
	addiu	$4,$4,1
	bne	$6,$0,$L385
	subu	$24,$7,$24

	bne	$15,$0,$L376
	subu	$13,$25,$3

	subu	$2,$5,$12
	sltu	$4,$5,$2
	subu	$24,$13,$4
$L376:
	jr	$31
	move	$3,$24

$L377:
	.option	pic0
	b	$L383
	.option	pic2
	addiu	$4,$4,1

$L395:
	sltu	$14,$13,10
	bne	$14,$0,$L381
	move	$15,$0

$L388:
	move	$2,$0
	move	$24,$0
$L396:
	jr	$31
	move	$3,$24

$L378:
	lb	$8,1($4)
	move	$15,$0
	addiu	$13,$8,-48
	sltu	$9,$13,10
	bne	$9,$0,$L381
	addiu	$4,$4,1

	move	$2,$0
	.option	pic0
	b	$L396
	.option	pic2
	move	$24,$0

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
	beq	$6,$0,$L398
	sw	$16,24($sp)

	move	$16,$6
	move	$20,$4
	move	$18,$5
	.option	pic0
	b	$L401
	.option	pic2
	move	$19,$7

$L411:
	beq	$2,$0,$L397
	subu	$16,$16,$22

	beq	$16,$0,$L398
	addu	$18,$17,$19

$L401:
	srl	$22,$16,1
$L412:
	gsmultu	$17,$22,$19
	addu	$17,$18,$17
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$20

	bgez	$2,$L411
	addiu	$16,$16,-1

	move	$16,$22
	bne	$16,$0,$L412
	srl	$22,$16,1

$L398:
	move	$17,$0
$L397:
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
	lw	$20,80($sp)
	lw	$21,84($sp)
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	move	$16,$6
	move	$19,$4
	move	$17,$5
	beq	$6,$0,$L418
	move	$18,$7

$L426:
	sra	$23,$16,1
$L429:
	gsmultu	$22,$23,$18
	addu	$22,$17,$22
	move	$6,$21
	move	$5,$22
	move	$25,$20
	jalr	$25
	move	$4,$19

	addiu	$16,$16,-1
	beq	$2,$0,$L413
	sra	$16,$16,1

	blez	$2,$L416
	nop

	bne	$16,$0,$L426
	addu	$17,$22,$18

$L418:
	move	$22,$0
$L413:
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

$L416:
	beq	$23,$0,$L418
	move	$16,$23

	.option	pic0
	b	$L429
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
	move	$3,$5
	bltz	$5,$L434
	move	$2,$4

	jr	$31
	nop

$L434:
	sltu	$3,$0,$4
	subu	$5,$0,$5
	subu	$2,$0,$4
	jr	$31
	subu	$3,$5,$3

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
	lw	$6,56($sp)
	lw	$7,60($sp)
	lw	$25,%call16(__moddi3)($28)
	move	$4,$18
	move	$5,$17
	sw	$2,0($16)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$3,4($16)

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
	bltz	$4,$L441
	move	$2,$4

	jr	$31
	nop

$L441:
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
	move	$3,$5
	bltz	$5,$L448
	move	$2,$4

	jr	$31
	nop

$L448:
	sltu	$3,$0,$4
	subu	$5,$0,$5
	subu	$2,$0,$4
	jr	$31
	subu	$3,$5,$3

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
	lw	$6,56($sp)
	lw	$7,60($sp)
	lw	$25,%call16(__moddi3)($28)
	move	$4,$18
	move	$5,$17
	sw	$2,0($16)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$3,4($16)

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
	bne	$2,$0,$L454
	nop

	jr	$31
	nop

$L456:
	lw	$2,4($4)
	nop
	beq	$2,$0,$L457
	addiu	$4,$4,4

$L454:
	bne	$5,$2,$L456
	move	$2,$4

	jr	$31
	nop

$L457:
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
$L464:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L463
	addiu	$4,$4,4

	bne	$2,$0,$L464
	addiu	$5,$5,4

$L463:
	slt	$4,$2,$3
	bne	$4,$0,$L466
	nop

	jr	$31
	slt	$2,$3,$2

$L466:
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
$L471:
	lw	$6,0($5)
	addiu	$3,$3,4
	addiu	$5,$5,4
	bne	$6,$0,$L471
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
	beq	$2,$0,$L476
	move	$5,$4

$L475:
	lw	$3,4($5)
	nop
	bne	$3,$0,$L475
	addiu	$5,$5,4

	subu	$4,$5,$4
	jr	$31
	sra	$2,$4,2

$L476:
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
	b	$L489
	nop

	.option	pic2
$L490:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L481
	addiu	$6,$6,-1

	beq	$2,$0,$L481
	nop

	addiu	$4,$4,4
	addiu	$5,$5,4
$L489:
	bne	$6,$0,$L490
	move	$2,$0

	jr	$31
	nop

$L481:
	lw	$6,0($4)
	lw	$5,0($5)
	nop
	slt	$4,$6,$5
	bne	$4,$0,$L491
	nop

	jr	$31
	slt	$2,$5,$6

$L491:
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
	bne	$6,$0,$L493
	move	$2,$0

	.option	pic0
	b	$L501
	nop

	.option	pic2
$L495:
	beq	$6,$0,$L496
	addiu	$4,$4,4

$L493:
	lw	$2,0($4)
	nop
	bne	$2,$5,$L495
	addiu	$6,$6,-1

	jr	$31
	move	$2,$4

$L496:
	jr	$31
	move	$2,$0

$L501:
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
	b	$L515
	nop

	.option	pic2
$L517:
	lw	$2,0($4)
	lw	$3,0($5)
	nop
	bne	$2,$3,$L516
	addiu	$6,$6,-1

	addiu	$4,$4,4
	addiu	$5,$5,4
$L515:
	bne	$6,$0,$L517
	move	$2,$0

	jr	$31
	nop

$L516:
	slt	$4,$2,$3
	bne	$4,$0,$L518
	nop

	jr	$31
	slt	$2,$3,$2

$L518:
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
	beq	$6,$0,$L520
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sll	$6,$6,2

$L520:
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
	beq	$4,$5,$L542
	move	$2,$4

	subu	$4,$4,$5
	sll	$3,$6,2
	sltu	$7,$4,$3
	beq	$7,$0,$L540
	addiu	$9,$6,-1

	beq	$6,$0,$L542
	sll	$14,$9,2

	li	$11,-4			# 0xfffffffffffffffc
$L530:
	lwx	$12,$14($5)
	addu	$13,$2,$14
	addiu	$14,$14,-4
	bne	$14,$11,$L530
	sw	$12,0($13)

$L542:
	jr	$31
	nop

$L540:
	move	$10,$2
	beq	$6,$0,$L542
	li	$8,-1			# 0xffffffffffffffff

$L528:
	lw	$6,0($5)
	addiu	$9,$9,-1
	addiu	$10,$10,4
	addiu	$5,$5,4
	bne	$9,$8,$L528
	sw	$6,-4($10)

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
	beq	$6,$0,$L550
	addiu	$3,$6,-1

	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
$L545:
	addiu	$3,$3,-1
	addiu	$6,$6,4
	bne	$3,$7,$L545
	sw	$5,-4($6)

$L550:
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
	beq	$2,$0,$L552
	addu	$11,$4,$6

	beq	$6,$0,$L584
	addu	$13,$5,$6

$L554:
	lb	$10,-1($11)
	addiu	$11,$11,-1
	addiu	$13,$13,-1
	bne	$4,$11,$L554
	sb	$10,0($13)

$L584:
	jr	$31
	nop

$L552:
	bne	$4,$5,$L580
	nop

	jr	$31
	nop

$L580:
	beq	$6,$0,$L584
	addiu	$3,$6,-1

	sltu	$7,$3,7
	bne	$7,$0,$L582
	addiu	$12,$4,1

	or	$8,$5,$4
	andi	$9,$8,0x3
	bne	$9,$0,$L582
	subu	$10,$5,$12

	sltu	$11,$10,3
	bne	$11,$0,$L555
	move	$24,$5

	srl	$12,$6,2
	sll	$13,$12,2
	addu	$14,$4,$13
$L556:
	lw	$15,0($4)
	addiu	$4,$4,4
	sw	$15,0($24)
	bne	$14,$4,$L556
	addiu	$24,$24,4

	addu	$5,$5,$13
	beq	$6,$13,$L584
	subu	$25,$6,$13

	lb	$4,0($14)
	li	$6,1			# 0x1
	beq	$25,$6,$L584
	sb	$4,0($5)

	lb	$2,1($14)
	li	$3,2			# 0x2
	beq	$25,$3,$L584
	sb	$2,1($5)

	lb	$7,2($14)
	jr	$31
	sb	$7,2($5)

$L555:
$L582:
	.option	pic0
	b	$L559
	.option	pic2
	addu	$8,$4,$6

$L581:
	addiu	$12,$12,1
$L559:
	lb	$9,-1($12)
	addiu	$5,$5,1
	bne	$12,$8,$L581
	sb	$9,-1($5)

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
	beq	$2,$0,$L586
	nor	$7,$0,$6

	sll	$10,$4,$6
	subu	$6,$0,$6
	andi	$12,$6,0x20
	move	$11,$0
	beq	$12,$0,$L588
	andi	$13,$6,0x3f

$L590:
	srl	$25,$5,$13
	move	$5,$0
	or	$3,$5,$10
	jr	$31
	or	$2,$25,$11

$L586:
	sll	$9,$5,$6
	srl	$3,$4,1
	sll	$11,$4,$6
	subu	$6,$0,$6
	srl	$8,$3,$7
	andi	$12,$6,0x20
	or	$10,$8,$9
	bne	$12,$0,$L590
	andi	$13,$6,0x3f

$L588:
	sll	$14,$5,1
	nor	$15,$0,$13
	sll	$24,$14,$15
	srl	$4,$4,$13
	or	$25,$24,$4
	srl	$5,$5,$13
	or	$3,$5,$10
	jr	$31
	or	$2,$25,$11

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
	beq	$2,$0,$L592
	nor	$3,$0,$6

	srl	$10,$5,$6
	subu	$6,$0,$6
	andi	$12,$6,0x20
	move	$11,$0
	beq	$12,$0,$L594
	andi	$13,$6,0x3f

$L596:
	sll	$25,$4,$13
	move	$4,$0
	or	$3,$25,$11
	jr	$31
	or	$2,$4,$10

$L592:
	srl	$9,$4,$6
	sll	$7,$5,1
	srl	$11,$5,$6
	subu	$6,$0,$6
	sll	$8,$7,$3
	andi	$12,$6,0x20
	or	$10,$8,$9
	bne	$12,$0,$L596
	andi	$13,$6,0x3f

$L594:
	srl	$14,$4,1
	nor	$15,$0,$13
	srl	$24,$14,$15
	sll	$5,$5,$13
	or	$25,$24,$5
	sll	$4,$4,$13
	or	$3,$25,$11
	jr	$31
	or	$2,$4,$10

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
	subu	$5,$0,$5
	jr	$31
	ror	$2,$4,$5

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
	jr	$31
	ror	$2,$4,$5

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
	subu	$5,$0,$5
	jr	$31
	ror	$2,$4,$5

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
	jr	$31
	ror	$2,$4,$5

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
	andi	$3,$2,0xf
	sll	$6,$4,$5
	srl	$4,$4,$3
	or	$7,$6,$4
	jr	$31
	andi	$2,$7,0xffff

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
	andi	$3,$2,0xf
	srl	$6,$4,$5
	sll	$4,$4,$3
	or	$7,$6,$4
	jr	$31
	andi	$2,$7,0xffff

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
	andi	$3,$2,0x7
	sll	$6,$4,$5
	srl	$4,$4,$3
	or	$7,$6,$4
	jr	$31
	andi	$2,$7,0x00ff

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
	andi	$3,$2,0x7
	srl	$6,$4,$5
	sll	$4,$4,$3
	or	$7,$6,$4
	jr	$31
	andi	$2,$7,0x00ff

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
	or	$3,$2,$4
	jr	$31
	andi	$2,$3,0xffff

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
	srl	$5,$4,24
	srl	$3,$4,8
	or	$6,$2,$5
	andi	$7,$3,0xff00
	sll	$4,$4,8
	li	$8,16711680			# 0xff0000
	or	$9,$6,$7
	and	$10,$4,$8
	jr	$31
	or	$2,$9,$10

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
	sll	$6,$5,8
	srl	$2,$4,24
	or	$11,$6,$2
	srl	$8,$5,8
	sll	$3,$4,24
	srl	$7,$4,8
	andi	$10,$11,0xff
	li	$9,16711680			# 0xff0000
	srl	$12,$5,24
	andi	$13,$8,0xff00
	or	$14,$3,$10
	and	$25,$11,$9
	sll	$4,$4,8
	andi	$15,$7,0xff00
	or	$24,$12,$13
	or	$6,$14,$15
	and	$11,$4,$9
	or	$2,$24,$25
	sll	$5,$5,24
	or	$3,$6,$11
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
	b	$L611
	.option	pic2
	li	$5,32			# 0x20

$L614:
	beq	$2,$5,$L613
	nop

$L611:
	srl	$3,$4,$2
	andi	$6,$3,0x1
	beq	$6,$0,$L614
	addiu	$2,$2,1

	jr	$31
	nop

$L613:
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
	beq	$4,$0,$L622
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,$L621
	nop

	li	$2,1			# 0x1
$L617:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,$L617
	addiu	$2,$2,1

$L622:
	jr	$31
	nop

$L621:
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
	bc1t	$L626
	lui	$3,%hi($LC1)

	lwc1	$f1,%lo($LC1)($3)
	nop
	c.lt.s	$f1,$f12
	nop
	bc1f	$L628
	li	$2,1			# 0x1

	jr	$31
	nop

$L626:
	jr	$31
	li	$2,1			# 0x1

$L628:
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
	lwc1	$f0,%lo($LC2)($2)
	nop
	lwc1	$f1,%lo($LC2+4)($2)
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L632
	lui	$3,%hi($LC3)

	lwc1	$f2,%lo($LC3)($3)
	nop
	lwc1	$f3,%lo($LC3+4)($3)
	nop
	c.lt.d	$f2,$f12
	nop
	bc1f	$L634
	li	$2,1			# 0x1

	jr	$31
	nop

$L632:
	jr	$31
	li	$2,1			# 0x1

$L634:
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
	lwc1	$f0,%lo($LC2)($2)
	nop
	lwc1	$f1,%lo($LC2+4)($2)
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L638
	lui	$3,%hi($LC3)

	lwc1	$f2,%lo($LC3)($3)
	nop
	lwc1	$f3,%lo($LC3+4)($3)
	nop
	c.lt.d	$f2,$f12
	nop
	bc1f	$L640
	li	$2,1			# 0x1

	jr	$31
	nop

$L638:
	jr	$31
	li	$2,1			# 0x1

$L640:
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
	cvt.d.w	$f2,$f0
	swc1	$f2,0($4)
	jr	$31
	swc1	$f3,4($4)

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
	bc1t	$L661
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$f1,$f12
	nop
	bc1t	$L661
	nop

	bltz	$5,$L656
	lui	$2,%hi($LC4)

	lwc1	$f2,%lo($LC4)($2)
	andi	$4,$5,0x1
$L659:
	beq	$4,$0,$L660
	srl	$6,$5,31

$L646:
	mul.s	$f0,$f0,$f2
	srl	$6,$5,31
$L660:
	addu	$5,$6,$5
	sra	$5,$5,1
	beq	$5,$0,$L661
	srl	$7,$5,31

	andi	$8,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$8,$0,$L646
	addu	$2,$7,$5

	sra	$5,$2,1
$L658:
	srl	$7,$5,31
	andi	$8,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$8,$0,$L646
	addu	$2,$7,$5

	.option	pic0
	b	$L658
	.option	pic2
	sra	$5,$2,1

$L661:
	jr	$31
	nop

$L656:
	lui	$3,%hi($LC5)
	lwc1	$f2,%lo($LC5)($3)
	.option	pic0
	b	$L659
	.option	pic2
	andi	$4,$5,0x1

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
	bc1t	$L681
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f2,$f12
	nop
	bc1t	$L681
	nop

	bltz	$6,$L676
	lui	$2,%hi($LC6)

	lwc1	$f4,%lo($LC6)($2)
	nop
	lwc1	$f5,%lo($LC6+4)($2)
	andi	$4,$6,0x1
$L679:
	beq	$4,$0,$L680
	srl	$5,$6,31

$L666:
	mul.d	$f0,$f0,$f4
	srl	$5,$6,31
$L680:
	addu	$6,$5,$6
	sra	$6,$6,1
	beq	$6,$0,$L681
	srl	$7,$6,31

	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L666
	addu	$2,$7,$6

	sra	$6,$2,1
$L678:
	srl	$7,$6,31
	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L666
	addu	$2,$7,$6

	.option	pic0
	b	$L678
	.option	pic2
	sra	$6,$2,1

$L681:
	jr	$31
	nop

$L676:
	lui	$3,%hi($LC7)
	lwc1	$f4,%lo($LC7)($3)
	nop
	lwc1	$f5,%lo($LC7+4)($3)
	.option	pic0
	b	$L679
	.option	pic2
	andi	$4,$6,0x1

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
	bc1t	$L701
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L701
	nop

	bltz	$6,$L696
	lui	$2,%hi($LC6)

	lwc1	$f4,%lo($LC6)($2)
	nop
	lwc1	$f5,%lo($LC6+4)($2)
	andi	$4,$6,0x1
$L699:
	beq	$4,$0,$L700
	srl	$5,$6,31

$L686:
	mul.d	$f0,$f0,$f4
	srl	$5,$6,31
$L700:
	addu	$6,$5,$6
	sra	$6,$6,1
	beq	$6,$0,$L701
	srl	$7,$6,31

	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L686
	addu	$2,$7,$6

	sra	$6,$2,1
$L698:
	srl	$7,$6,31
	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L686
	addu	$2,$7,$6

	.option	pic0
	b	$L698
	.option	pic2
	sra	$6,$2,1

$L701:
	jr	$31
	nop

$L696:
	lui	$3,%hi($LC7)
	lwc1	$f4,%lo($LC7)($3)
	nop
	lwc1	$f5,%lo($LC7+4)($3)
	.option	pic0
	b	$L699
	.option	pic2
	andi	$4,$6,0x1

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
	beq	$6,$0,$L714
	move	$2,$4

	addiu	$3,$6,-1
	sltu	$4,$3,4
	bne	$4,$0,$L704
	or	$7,$2,$5

	andi	$8,$7,0x3
	bne	$8,$0,$L704
	srl	$9,$6,2

	sll	$10,$9,2
	move	$15,$2
	addu	$11,$5,$10
$L705:
	lw	$12,0($15)
	lw	$13,0($5)
	addiu	$5,$5,4
	xor	$14,$13,$12
	sw	$14,0($15)
	bne	$11,$5,$L705
	addiu	$15,$15,4

	addu	$24,$2,$10
	beq	$6,$10,$L714
	subu	$5,$6,$10

	lbu	$25,0($24)
	lbu	$3,0($11)
	li	$6,1			# 0x1
	xor	$4,$25,$3
	beq	$5,$6,$L714
	sb	$4,0($24)

	lbu	$7,1($24)
	lbu	$8,1($11)
	li	$9,2			# 0x2
	xor	$10,$8,$7
	beq	$5,$9,$L714
	sb	$10,1($24)

	lbu	$12,2($24)
	lbu	$11,2($11)
	nop
	xor	$13,$11,$12
	jr	$31
	sb	$13,2($24)

$L704:
	addu	$14,$5,$6
	move	$3,$2
$L707:
	lbu	$15,0($3)
	lbu	$24,0($5)
	addiu	$3,$3,1
	xor	$25,$24,$15
	addiu	$5,$5,1
	bne	$14,$5,$L707
	sb	$25,-1($3)

$L714:
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
	beq	$3,$0,$L722
	move	$2,$4

	move	$8,$4
$L717:
	lb	$7,1($8)
	nop
	bne	$7,$0,$L717
	addiu	$8,$8,1

	beq	$6,$0,$L719
	nop

$L732:
	lb	$4,0($5)
	addiu	$6,$6,-1
	beq	$4,$0,$L733
	sb	$4,0($8)

	addiu	$5,$5,1
	addiu	$8,$8,1
$L730:
	bne	$6,$0,$L732
	nop

$L719:
	jr	$31
	sb	$0,0($8)

$L733:
	jr	$31
	nop

$L722:
	.option	pic0
	b	$L730
	.option	pic2
	move	$8,$4

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
	beq	$5,$0,$L744
	move	$2,$0

$L735:
	lbux	$3,$2($4)
	nop
	bnel	$3,$0,$L737
	addiu	$2,$2,1

$L744:
	jr	$31
	nop

$L737:
	bne	$5,$2,$L735
	nop

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
	beq	$7,$0,$L754
	move	$2,$4

$L746:
	.option	pic0
	b	$L749
	.option	pic2
	move	$3,$5

$L748:
	beq	$6,$7,$L755
	nop

$L749:
	lb	$6,0($3)
	nop
	bne	$6,$0,$L748
	addiu	$3,$3,1

	lb	$7,1($2)
	nop
	bne	$7,$0,$L746
	addiu	$2,$2,1

	move	$2,$0
$L755:
	jr	$31
	nop

$L754:
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
	move	$6,$0
$L759:
	lb	$3,0($4)
	nop
	beq	$3,$5,$L758
	move	$2,$4

	move	$2,$6
$L758:
	move	$6,$2
	bne	$3,$0,$L759
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
	beq	$8,$0,$L771
	nop

	move	$2,$5
$L763:
	lb	$3,1($2)
	nop
	bne	$3,$0,$L763
	addiu	$2,$2,1

	beq	$2,$5,$L771
	subu	$10,$2,$5

	andi	$11,$8,0x00ff
	.option	pic0
	b	$L781
	.option	pic2
	addiu	$13,$10,-1

$L783:
	beq	$2,$0,$L785
	addiu	$4,$4,1

$L781:
	lb	$2,0($4)
	nop
	bne	$2,$8,$L783
	move	$6,$11

	addu	$9,$4,$13
	move	$14,$5
	.option	pic0
	b	$L765
	.option	pic2
	move	$12,$4

$L784:
	beq	$12,$9,$L766
	nop

	bne	$7,$6,$L766
	addiu	$12,$12,1

	lbu	$6,0($12)
	nop
	beq	$6,$0,$L766
	addiu	$14,$14,1

$L765:
	lbu	$7,0($14)
	nop
	bne	$7,$0,$L784
	nop

$L766:
	lbu	$15,0($14)
	nop
	beq	$15,$6,$L772
	nop

	.option	pic0
	b	$L781
	.option	pic2
	addiu	$4,$4,1

$L785:
	jr	$31
	nop

$L771:
	jr	$31
	move	$2,$4

$L772:
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
	bc1t	$L796
	mov.d	$f0,$f12

	c.lt.d	$f2,$f12
	nop
	bc1f	$L797
	nop

	c.lt.d	$f14,$f2
	nop
	bc1t	$L789
	nop

$L797:
	jr	$31
	nop

$L796:
	c.lt.d	$f2,$f14
	nop
	bc1f	$L797
	nop

$L789:
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
	beq	$7,$0,$L814
	move	$2,$4

	sltu	$3,$5,$7
	bne	$3,$0,$L807
	subu	$5,$5,$7

	addu	$9,$4,$5
	sltu	$4,$9,$4
	bne	$4,$0,$L807
	addiu	$7,$7,-1

	lb	$12,0($6)
	.option	pic0
	b	$L804
	.option	pic2
	addiu	$6,$6,1

$L808:
	move	$2,$3
$L800:
	sltu	$10,$9,$2
	bne	$10,$0,$L807
	nop

$L804:
	lb	$8,0($2)
	nop
	bne	$8,$12,$L808
	addiu	$3,$2,1

	beq	$7,$0,$L814
	move	$25,$6

$L803:
	move	$15,$3
	.option	pic0
	b	$L801
	.option	pic2
	addu	$5,$3,$7

$L802:
	beq	$15,$5,$L814
	addiu	$25,$25,1

$L801:
	lbu	$13,0($15)
	lbu	$14,0($25)
	nop
	beq	$13,$14,$L802
	addiu	$15,$15,1

	sltu	$2,$9,$3
	bnel	$2,$0,$L814
	move	$2,$0

	lb	$11,0($3)
	nop
	bne	$11,$12,$L800
	addiu	$2,$3,1

	move	$24,$3
	move	$25,$6
	move	$3,$2
	.option	pic0
	b	$L803
	.option	pic2
	move	$2,$24

$L814:
	jr	$31
	nop

$L807:
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
	beq	$6,$0,$L816
	move	$17,$4

	lw	$25,%call16(memmove)($28)
	nop
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

$L816:
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
	bc1t	$L844
	mov.d	$f0,$f12

	lui	$2,%hi($LC10)
	lwc1	$f4,%lo($LC10)($2)
	nop
	lwc1	$f5,%lo($LC10+4)($2)
	nop
	c.le.d	$f4,$f12
	nop
	bc1f	$L845
	move	$3,$0

$L824:
	lui	$9,%hi($LC7)
	lwc1	$f16,%lo($LC7)($9)
	lwc1	$f18,%lo($LC10)($2)
	lwc1	$f17,%lo($LC7+4)($9)
	lwc1	$f19,%lo($LC10+4)($2)
	move	$8,$0
$L830:
	mul.d	$f0,$f0,$f16
	c.le.d	$f18,$f0
	nop
	bc1t	$L830
	addiu	$8,$8,1

$L831:
	beq	$3,$0,$L847
	sw	$8,0($6)

	neg.d	$f0,$f0
$L847:
	jr	$31
	nop

$L845:
	lui	$4,%hi($LC7)
	lwc1	$f6,%lo($LC7)($4)
	nop
	lwc1	$f7,%lo($LC7+4)($4)
	nop
	c.lt.d	$f12,$f6
	nop
	bc1f	$L827
	nop

	c.eq.d	$f12,$f2
	nop
	bc1f	$L836
	mov.d	$f8,$f12

$L827:
	jr	$31
	sw	$0,0($6)

$L844:
	lui	$5,%hi($LC8)
	lwc1	$f10,%lo($LC8)($5)
	nop
	lwc1	$f11,%lo($LC8+4)($5)
	nop
	c.le.d	$f12,$f10
	nop
	bc1f	$L846
	neg.d	$f8,$f12

	mov.d	$f0,$f8
	li	$3,1			# 0x1
	.option	pic0
	b	$L824
	.option	pic2
	lui	$2,%hi($LC10)

$L846:
	lui	$7,%hi($LC9)
	lwc1	$f12,%lo($LC9)($7)
	nop
	lwc1	$f13,%lo($LC9+4)($7)
	nop
	c.lt.d	$f12,$f0
	nop
	bc1f	$L827
	li	$3,1			# 0x1

	lui	$4,%hi($LC7)
$L825:
	lwc1	$f14,%lo($LC7)($4)
	mov.d	$f0,$f8
	lwc1	$f15,%lo($LC7+4)($4)
	move	$8,$0
$L832:
	add.d	$f0,$f0,$f0
	c.lt.d	$f0,$f14
	nop
	bc1t	$L832
	addiu	$8,$8,-1

	.option	pic0
	b	$L831
	nop

	.option	pic2
$L836:
	.option	pic0
	b	$L825
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
	beq	$2,$0,$L852
	move	$25,$0

	move	$2,$0
$L851:
	andi	$8,$4,0x1
	subu	$3,$0,$8
	and	$11,$3,$6
	sll	$10,$5,31
	subu	$12,$0,$8
	srl	$4,$4,1
	and	$13,$12,$7
	addu	$14,$2,$11
	or	$4,$10,$4
	srl	$5,$5,1
	sltu	$15,$14,$2
	srl	$3,$6,31
	addu	$9,$25,$13
	sll	$7,$7,1
	or	$24,$4,$5
	move	$2,$14
	addu	$25,$15,$9
	or	$7,$3,$7
	bne	$24,$0,$L851
	sll	$6,$6,1

	jr	$31
	move	$3,$25

$L852:
	move	$2,$0
	jr	$31
	move	$3,$25

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
	beq	$2,$0,$L878
	li	$2,32			# 0x20

	.option	pic0
	b	$L855
	.option	pic2
	li	$12,1			# 0x1

$L859:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L857
	sll	$12,$12,1

	beq	$2,$0,$L858
	nop

$L855:
	bgez	$5,$L859
	addiu	$2,$2,-1

	.option	pic0
	b	$L865
	.option	pic2
	move	$2,$0

$L879:
	srl	$12,$12,1
	or	$2,$2,$11
	beq	$12,$0,$L858
	srl	$5,$5,1

$L865:
	sltu	$10,$4,$5
	subu	$9,$4,$5
	bne	$10,$0,$L862
	xori	$8,$10,0x1

	move	$4,$9
$L862:
	bne	$8,$0,$L879
	move	$11,$12

	move	$11,$0
	srl	$12,$12,1
	or	$2,$2,$11
	bne	$12,$0,$L865
	srl	$5,$5,1

$L858:
	bne	$6,$0,$L880
	nop

	jr	$31
	nop

$L857:
	bne	$12,$0,$L865
	move	$2,$0

	.option	pic0
	b	$L858
	nop

	.option	pic2
$L880:
	jr	$31
	move	$2,$4

$L878:
	sltu	$3,$4,$5
	xori	$2,$3,0x1
	bne	$3,$0,$L858
	subu	$5,$4,$5

	.option	pic0
	b	$L858
	.option	pic2
	move	$4,$5

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
	beq	$4,$2,$L883
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

$L883:
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
	sra	$6,$5,31
	move	$2,$4
	move	$3,$5
	xor	$4,$4,$6
	beq	$2,$6,$L897
	xor	$5,$5,$6

	lui	$28,%hi(__gnu_local_gp)
$L898:
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

$L897:
	bne	$3,$2,$L898
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
	beq	$4,$0,$L905
	move	$2,$0

$L901:
	andi	$3,$4,0x1
	subu	$6,$0,$3
	and	$7,$6,$5
	srl	$4,$4,1
	addu	$2,$2,$7
	bne	$4,$0,$L901
	sll	$5,$5,1

$L905:
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
	bne	$2,$0,$L910
	and	$12,$6,$10

	addu	$3,$5,$6
	sltu	$8,$3,$4
	beq	$8,$0,$L940
	addiu	$14,$6,-1

$L910:
	beq	$7,$0,$L941
	sll	$15,$7,3

	move	$2,$5
	move	$7,$4
	addu	$24,$15,$5
$L913:
	lw	$25,0($2)
	lw	$10,4($2)
	addiu	$2,$2,8
	sw	$25,0($7)
	sw	$10,4($7)
	bne	$2,$24,$L913
	addiu	$7,$7,8

	sltu	$3,$12,$6
	beq	$3,$0,$L943
	subu	$11,$6,$12

	addiu	$8,$11,-1
	sltu	$9,$8,7
	bne	$9,$0,$L939
	addiu	$13,$12,1

	addu	$3,$4,$12
	addu	$14,$5,$13
	subu	$15,$3,$14
	sltu	$24,$15,3
	bne	$24,$0,$L915
	addu	$2,$5,$12

	or	$25,$2,$3
	andi	$10,$25,0x3
	bne	$10,$0,$L915
	srl	$7,$11,2

	sll	$9,$7,2
	addu	$8,$2,$9
$L916:
	lw	$13,0($2)
	addiu	$2,$2,4
	sw	$13,0($3)
	bne	$2,$8,$L916
	addiu	$3,$3,4

	beq	$11,$9,$L943
	addu	$12,$12,$9

	addu	$2,$5,$12
	lb	$11,0($2)
	addiu	$14,$12,1
	addu	$15,$4,$12
	sltu	$3,$14,$6
	beq	$3,$0,$L943
	sb	$11,0($15)

	addu	$24,$5,$14
	lb	$25,0($24)
	addiu	$10,$12,2
	addu	$7,$4,$14
	sltu	$6,$10,$6
	beq	$6,$0,$L943
	sb	$25,0($7)

	addu	$5,$5,$10
	lb	$9,0($5)
	addu	$4,$4,$10
	jr	$31
	sb	$9,0($4)

$L940:
	beq	$6,$0,$L943
	li	$9,-1			# 0xffffffffffffffff

$L911:
	addu	$6,$5,$14
	lb	$11,0($6)
	addu	$13,$4,$14
	addiu	$14,$14,-1
	bne	$14,$9,$L911
	sb	$11,0($13)

$L943:
	jr	$31
	nop

$L941:
	beq	$6,$0,$L942
	nop

$L939:
	addu	$3,$4,$12
	addu	$2,$5,$12
$L915:
	addu	$8,$5,$6
$L918:
	lb	$13,0($2)
	addiu	$2,$2,1
	sb	$13,0($3)
	bne	$2,$8,$L918
	addiu	$3,$3,1

$L942:
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
	bne	$2,$0,$L948
	srl	$9,$6,1

	addu	$3,$5,$6
	sltu	$7,$3,$4
	beq	$7,$0,$L971
	addiu	$12,$6,-1

$L948:
	beq	$9,$0,$L947
	addiu	$13,$9,-1

	sltu	$14,$13,9
	bne	$14,$0,$L951
	or	$15,$5,$4

	andi	$24,$15,0x3
	bne	$24,$0,$L951
	addiu	$25,$5,2

	beq	$4,$25,$L951
	move	$2,$5

	srl	$10,$6,2
	sll	$11,$10,2
	move	$3,$4
	addu	$8,$5,$11
$L952:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L952
	addiu	$3,$3,4

	sll	$12,$10,1
	beq	$9,$12,$L947
	addu	$13,$4,$11

	lhx	$9,$11($5)
	nop
	sh	$9,0($13)
$L947:
	andi	$11,$6,0x1
	beq	$11,$0,$L974
	addu	$5,$5,$6

$L973:
	lb	$8,-1($5)
	addu	$4,$4,$6
	jr	$31
	sb	$8,-1($4)

$L971:
	beq	$6,$0,$L974
	li	$8,-1			# 0xffffffffffffffff

$L949:
	addu	$6,$5,$12
	lb	$10,0($6)
	addu	$11,$4,$12
	addiu	$12,$12,-1
	bne	$12,$8,$L949
	sb	$10,0($11)

$L974:
	jr	$31
	nop

$L951:
	sll	$14,$9,1
	move	$25,$5
	move	$10,$4
	addu	$15,$14,$5
$L954:
	lh	$24,0($25)
	addiu	$25,$25,2
	sh	$24,0($10)
	bne	$15,$25,$L954
	addiu	$10,$10,2

	andi	$11,$6,0x1
	beq	$11,$0,$L974
	addu	$5,$5,$6

	.option	pic0
	b	$L973
	nop

	.option	pic2
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
	bne	$2,$0,$L979
	and	$12,$6,$9

	addu	$3,$5,$6
	sltu	$7,$3,$4
	beq	$7,$0,$L1009
	addiu	$14,$6,-1

$L979:
	beq	$8,$0,$L1010
	sll	$15,$8,2

	move	$9,$5
	move	$2,$4
	addu	$24,$15,$5
$L982:
	lw	$25,0($9)
	addiu	$9,$9,4
	sw	$25,0($2)
	bne	$9,$24,$L982
	addiu	$2,$2,4

	sltu	$8,$12,$6
	beq	$8,$0,$L1012
	subu	$11,$6,$12

	addiu	$3,$11,-1
	sltu	$7,$3,7
	bne	$7,$0,$L1008
	addiu	$10,$12,1

	addu	$3,$4,$12
	addu	$13,$5,$10
	subu	$14,$3,$13
	sltu	$15,$14,3
	bne	$15,$0,$L984
	addu	$2,$5,$12

	or	$24,$2,$3
	andi	$25,$24,0x3
	bne	$25,$0,$L984
	srl	$9,$11,2

	sll	$10,$9,2
	addu	$8,$2,$10
$L985:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L985
	addiu	$3,$3,4

	beq	$11,$10,$L1012
	addu	$12,$12,$10

	addu	$2,$5,$12
	lb	$11,0($2)
	addiu	$13,$12,1
	addu	$14,$4,$12
	sltu	$3,$13,$6
	beq	$3,$0,$L1012
	sb	$11,0($14)

	addu	$15,$5,$13
	lb	$24,0($15)
	addiu	$25,$12,2
	addu	$9,$4,$13
	sltu	$6,$25,$6
	beq	$6,$0,$L1012
	sb	$24,0($9)

	addu	$5,$5,$25
	lb	$10,0($5)
	addu	$4,$4,$25
	jr	$31
	sb	$10,0($4)

$L1009:
	beq	$6,$0,$L1012
	li	$10,-1			# 0xffffffffffffffff

$L980:
	addu	$6,$5,$14
	lb	$11,0($6)
	addu	$13,$4,$14
	addiu	$14,$14,-1
	bne	$14,$10,$L980
	sb	$11,0($13)

$L1012:
	jr	$31
	nop

$L1010:
	beq	$6,$0,$L1011
	nop

$L1008:
	addu	$3,$4,$12
	addu	$2,$5,$12
$L984:
	addu	$8,$5,$6
$L987:
	lb	$7,0($2)
	addiu	$2,$2,1
	sb	$7,0($3)
	bne	$2,$8,$L987
	addiu	$3,$3,1

$L1011:
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
	gsmod	$2,$4,$5
	break	7
1:
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
	bltz	$4,$L1017
	cvt.d.w	$f0,$f0

	jr	$31
	nop

$L1017:
	lui	$2,%hi($LC11)
	lwc1	$f2,%lo($LC11)($2)
	nop
	lwc1	$f3,%lo($LC11+4)($2)
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
	bgez	$4,$L1021
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC11)
	lwc1	$f2,%lo($LC11)($2)
	nop
	lwc1	$f3,%lo($LC11+4)($2)
	nop
	add.d	$f0,$f0,$f2
$L1021:
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
	gsmodu	$2,$4,$5
	break	7
1:
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
	bne	$2,$0,$L1031
	nop

	sra	$2,$4,14
	bne	$2,$0,$L1048
	sra	$3,$4,13

	bne	$3,$0,$L1032
	sra	$5,$4,12

	bne	$5,$0,$L1033
	sra	$6,$4,11

	bne	$6,$0,$L1034
	sra	$7,$4,10

	bne	$7,$0,$L1035
	sra	$8,$4,9

	bne	$8,$0,$L1036
	nop

	sra	$2,$4,8
	bne	$2,$0,$L1037
	sra	$3,$4,7

	bne	$3,$0,$L1038
	sra	$5,$4,6

	bne	$5,$0,$L1039
	sra	$6,$4,5

	bne	$6,$0,$L1040
	sra	$7,$4,4

	bne	$7,$0,$L1041
	nop

	sra	$2,$4,3
	bne	$2,$0,$L1042
	sra	$3,$4,2

	bne	$3,$0,$L1043
	sra	$5,$4,1

	bne	$5,$0,$L1044
	nop

	bne	$4,$0,$L1047
	li	$2,16			# 0x10

$L1048:
	jr	$31
	nop

$L1031:
	jr	$31
	move	$2,$0

$L1042:
	jr	$31
	li	$2,12			# 0xc

$L1047:
	jr	$31
	li	$2,15			# 0xf

$L1032:
	jr	$31
	li	$2,2			# 0x2

$L1033:
	jr	$31
	li	$2,3			# 0x3

$L1034:
	jr	$31
	li	$2,4			# 0x4

$L1035:
	jr	$31
	li	$2,5			# 0x5

$L1036:
	jr	$31
	li	$2,6			# 0x6

$L1037:
	jr	$31
	li	$2,7			# 0x7

$L1038:
	jr	$31
	li	$2,8			# 0x8

$L1039:
	jr	$31
	li	$2,9			# 0x9

$L1040:
	jr	$31
	li	$2,10			# 0xa

$L1041:
	jr	$31
	li	$2,11			# 0xb

$L1043:
	jr	$31
	li	$2,13			# 0xd

$L1044:
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
	bne	$2,$0,$L1052
	andi	$3,$4,0x2

	bne	$3,$0,$L1053
	andi	$5,$4,0x4

	bne	$5,$0,$L1054
	andi	$6,$4,0x8

	bne	$6,$0,$L1055
	andi	$7,$4,0x10

	bne	$7,$0,$L1056
	andi	$8,$4,0x20

	bne	$8,$0,$L1057
	andi	$9,$4,0x40

	bne	$9,$0,$L1058
	andi	$10,$4,0x80

	bne	$10,$0,$L1059
	andi	$11,$4,0x100

	bne	$11,$0,$L1060
	andi	$12,$4,0x200

	bne	$12,$0,$L1061
	andi	$13,$4,0x400

	bne	$13,$0,$L1062
	andi	$14,$4,0x800

	bne	$14,$0,$L1063
	andi	$15,$4,0x1000

	bne	$15,$0,$L1064
	andi	$24,$4,0x2000

	bne	$24,$0,$L1065
	andi	$25,$4,0x4000

	bne	$25,$0,$L1066
	sra	$4,$4,15

	bne	$4,$0,$L1069
	li	$2,16			# 0x10

	jr	$31
	nop

$L1052:
	jr	$31
	move	$2,$0

$L1053:
	jr	$31
	li	$2,1			# 0x1

$L1064:
	jr	$31
	li	$2,12			# 0xc

$L1069:
	jr	$31
	li	$2,15			# 0xf

$L1054:
	jr	$31
	li	$2,2			# 0x2

$L1055:
	jr	$31
	li	$2,3			# 0x3

$L1056:
	jr	$31
	li	$2,4			# 0x4

$L1057:
	jr	$31
	li	$2,5			# 0x5

$L1058:
	jr	$31
	li	$2,6			# 0x6

$L1059:
	jr	$31
	li	$2,7			# 0x7

$L1060:
	jr	$31
	li	$2,8			# 0x8

$L1061:
	jr	$31
	li	$2,9			# 0x9

$L1062:
	jr	$31
	li	$2,10			# 0xa

$L1063:
	jr	$31
	li	$2,11			# 0xb

$L1065:
	jr	$31
	li	$2,13			# 0xd

$L1066:
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
	bc1tl	$L1077
	sub.s	$f12,$f12,$f0

	.set	macro
	trunc.w.s $f1,$f12,$3
	.set	nomacro
	mfc1	$2,$f1
	jr	$31
	nop

$L1077:
	li	$3,32768			# 0x8000
	.set	macro
	trunc.w.s $f2,$f12,$4
	.set	nomacro
	mfc1	$4,$f2
	jr	$31
	addu	$2,$4,$3

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
	andi	$6,$2,0x1
	andi	$5,$4,0x1
	sra	$3,$4,2
	addu	$7,$6,$5
	andi	$8,$3,0x1
	sra	$6,$4,3
	addu	$9,$7,$8
	andi	$10,$6,0x1
	sra	$5,$4,4
	addu	$11,$9,$10
	andi	$12,$5,0x1
	sra	$3,$4,5
	addu	$13,$11,$12
	andi	$14,$3,0x1
	sra	$7,$4,6
	addu	$15,$13,$14
	andi	$24,$7,0x1
	sra	$6,$4,7
	addu	$25,$15,$24
	andi	$2,$6,0x1
	sra	$5,$4,8
	addu	$8,$25,$2
	andi	$9,$5,0x1
	sra	$10,$4,9
	addu	$11,$8,$9
	andi	$12,$10,0x1
	sra	$3,$4,10
	addu	$13,$11,$12
	andi	$14,$3,0x1
	sra	$7,$4,11
	addu	$15,$13,$14
	sra	$6,$4,12
	andi	$24,$7,0x1
	andi	$2,$6,0x1
	sra	$5,$4,13
	addu	$25,$15,$24
	addu	$8,$25,$2
	sra	$10,$4,14
	andi	$9,$5,0x1
	addu	$11,$8,$9
	andi	$12,$10,0x1
	addu	$3,$11,$12
	sra	$4,$4,15
	addu	$13,$3,$4
	jr	$31
	andi	$2,$13,0x1

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
	andi	$6,$3,0x1
	andi	$5,$4,0x1
	sra	$2,$4,2
	addu	$7,$6,$5
	andi	$8,$2,0x1
	sra	$6,$4,3
	addu	$9,$7,$8
	andi	$10,$6,0x1
	sra	$5,$4,4
	addu	$11,$9,$10
	andi	$12,$5,0x1
	sra	$2,$4,5
	addu	$13,$11,$12
	andi	$14,$2,0x1
	sra	$7,$4,6
	addu	$15,$13,$14
	andi	$24,$7,0x1
	sra	$6,$4,7
	addu	$25,$15,$24
	andi	$3,$6,0x1
	sra	$5,$4,8
	addu	$8,$25,$3
	andi	$9,$5,0x1
	sra	$10,$4,9
	addu	$11,$8,$9
	andi	$12,$10,0x1
	sra	$2,$4,10
	addu	$13,$11,$12
	andi	$14,$2,0x1
	sra	$7,$4,11
	addu	$15,$13,$14
	sra	$6,$4,12
	andi	$24,$7,0x1
	sra	$5,$4,13
	addu	$25,$15,$24
	andi	$3,$6,0x1
	sra	$10,$4,14
	addu	$8,$25,$3
	andi	$9,$5,0x1
	addu	$11,$8,$9
	andi	$12,$10,0x1
	addu	$13,$11,$12
	sra	$4,$4,15
	jr	$31
	addu	$2,$13,$4

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
	beq	$4,$0,$L1086
	move	$2,$0

$L1082:
	andi	$3,$4,0x1
	subu	$6,$0,$3
	and	$7,$6,$5
	srl	$4,$4,1
	addu	$2,$2,$7
	bne	$4,$0,$L1082
	sll	$5,$5,1

$L1086:
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
	beq	$4,$0,$L1094
	move	$2,$0

	beq	$5,$0,$L1093
	nop

$L1089:
	andi	$3,$5,0x1
	subu	$6,$0,$3
	and	$7,$6,$4
	srl	$5,$5,1
	addu	$2,$2,$7
	bne	$5,$0,$L1089
	sll	$4,$4,1

$L1094:
	jr	$31
	nop

$L1093:
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
	beq	$2,$0,$L1119
	li	$2,32			# 0x20

	.option	pic0
	b	$L1096
	.option	pic2
	li	$12,1			# 0x1

$L1100:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1098
	sll	$12,$12,1

	beq	$2,$0,$L1099
	nop

$L1096:
	bgez	$5,$L1100
	addiu	$2,$2,-1

	.option	pic0
	b	$L1106
	.option	pic2
	move	$2,$0

$L1120:
	srl	$12,$12,1
	or	$2,$2,$11
	beq	$12,$0,$L1099
	srl	$5,$5,1

$L1106:
	sltu	$10,$4,$5
	subu	$9,$4,$5
	bne	$10,$0,$L1103
	xori	$8,$10,0x1

	move	$4,$9
$L1103:
	bne	$8,$0,$L1120
	move	$11,$12

	move	$11,$0
	srl	$12,$12,1
	or	$2,$2,$11
	bne	$12,$0,$L1106
	srl	$5,$5,1

$L1099:
	bne	$6,$0,$L1121
	nop

	jr	$31
	nop

$L1098:
	bne	$12,$0,$L1106
	move	$2,$0

	.option	pic0
	b	$L1099
	nop

	.option	pic2
$L1121:
	jr	$31
	move	$2,$4

$L1119:
	sltu	$3,$4,$5
	xori	$2,$3,0x1
	bne	$3,$0,$L1099
	subu	$5,$4,$5

	.option	pic0
	b	$L1099
	.option	pic2
	move	$4,$5

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
	bc1t	$L1125
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L1126
	li	$2,1			# 0x1

	jr	$31
	nop

$L1126:
	jr	$31
	move	$2,$0

$L1125:
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
	bc1t	$L1132
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L1133
	li	$2,1			# 0x1

	jr	$31
	nop

$L1133:
	jr	$31
	move	$2,$0

$L1132:
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
	mult	$ac0,$4,$5
	mflo	$2
	mfhi	$3
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
	multu	$ac0,$4,$5
	mflo	$2
	mfhi	$3
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
	bltzl	$5,$L1152
	subu	$5,$0,$5

	beq	$5,$0,$L1144
	move	$7,$0

$L1140:
	li	$10,32			# 0x20
	.option	pic0
	b	$L1143
	.option	pic2
	move	$2,$0

$L1153:
	beq	$10,$0,$L1142
	nop

$L1143:
	andi	$3,$5,0x1
	subu	$8,$0,$3
	and	$9,$8,$4
	addiu	$6,$10,-1
	sra	$5,$5,1
	andi	$10,$6,0x00ff
	addu	$2,$2,$9
	bne	$5,$0,$L1153
	sll	$4,$4,1

$L1142:
	beq	$7,$0,$L1154
	nop

	jr	$31
	subu	$2,$0,$2

$L1144:
	move	$2,$0
$L1154:
	jr	$31
	nop

$L1152:
	.option	pic0
	b	$L1140
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
	bltzl	$4,$L1183
	subu	$4,$0,$4

	li	$2,1			# 0x1
	move	$9,$0
$L1156:
	bgez	$5,$L1186
	sltu	$7,$5,$4

	subu	$5,$0,$5
	move	$9,$2
	sltu	$7,$5,$4
$L1186:
	move	$6,$4
	beq	$7,$0,$L1184
	move	$14,$5

	li	$10,32			# 0x20
	.option	pic0
	b	$L1158
	.option	pic2
	li	$5,1			# 0x1

$L1162:
	beq	$10,$0,$L1163
	nop

$L1158:
	sll	$14,$14,1
	sltu	$8,$14,$4
	addiu	$10,$10,-1
	bne	$8,$0,$L1162
	sll	$5,$5,1

$L1163:
	bne	$5,$0,$L1160
	move	$2,$0

	.option	pic0
	b	$L1161
	nop

	.option	pic2
$L1185:
	srl	$5,$5,1
	or	$2,$2,$13
	beq	$5,$0,$L1161
	srl	$14,$14,1

$L1160:
	sltu	$4,$6,$14
	subu	$11,$6,$14
	bne	$4,$0,$L1165
	xori	$12,$4,0x1

	move	$6,$11
$L1165:
	bne	$12,$0,$L1185
	move	$13,$5

	move	$13,$0
	srl	$5,$5,1
	or	$2,$2,$13
	bne	$5,$0,$L1160
	srl	$14,$14,1

$L1161:
	beq	$9,$0,$L1187
	nop

	jr	$31
	subu	$2,$0,$2

$L1187:
	jr	$31
	nop

$L1183:
	move	$2,$0
	.option	pic0
	b	$L1156
	.option	pic2
	li	$9,1			# 0x1

$L1184:
	sltu	$3,$4,$5
	.option	pic0
	b	$L1161
	.option	pic2
	xori	$2,$3,0x1

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
	bltzl	$4,$L1216
	subu	$4,$0,$4

	move	$8,$0
$L1189:
	bgez	$5,$L1190
	move	$2,$4

	subu	$5,$0,$5
$L1190:
	sltu	$6,$5,$4
	beq	$6,$0,$L1217
	move	$11,$5

	li	$9,32			# 0x20
	.option	pic0
	b	$L1191
	.option	pic2
	li	$5,1			# 0x1

$L1195:
	beq	$9,$0,$L1196
	nop

$L1191:
	sll	$11,$11,1
	sltu	$7,$11,$4
	addiu	$9,$9,-1
	bne	$7,$0,$L1195
	sll	$5,$5,1

$L1196:
	beql	$5,$0,$L1194
	move	$2,$4

$L1193:
	sltu	$4,$2,$11
	bne	$4,$0,$L1198
	subu	$10,$2,$11

	move	$2,$10
$L1198:
	srl	$5,$5,1
	bne	$5,$0,$L1193
	srl	$11,$11,1

$L1194:
	beq	$8,$0,$L1218
	nop

	jr	$31
	subu	$2,$0,$2

$L1218:
	jr	$31
	nop

$L1216:
	.option	pic0
	b	$L1189
	.option	pic2
	li	$8,1			# 0x1

$L1217:
	sltu	$3,$4,$5
	beq	$3,$0,$L1194
	subu	$2,$4,$5

	.option	pic0
	b	$L1194
	.option	pic2
	move	$2,$4

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
	beq	$2,$0,$L1368
	sll	$9,$5,16

	sra	$10,$9,16
	bltz	$10,$L1224
	sll	$12,$5,1

	andi	$3,$12,0xffff
	sltu	$13,$3,$4
	beq	$13,$0,$L1296
	sll	$14,$3,16

	sra	$15,$14,16
	bltz	$15,$L1297
	sll	$24,$5,2

	andi	$3,$24,0xffff
	sltu	$25,$3,$4
	beq	$25,$0,$L1298
	sll	$2,$3,16

	sra	$7,$2,16
	bltzl	$7,$L1226
	li	$25,4			# 0x4

	sll	$3,$5,3
	andi	$3,$3,0xffff
	sltu	$8,$3,$4
	beql	$8,$0,$L1225
	li	$25,8			# 0x8

	sll	$9,$3,16
	sra	$10,$9,16
	bltzl	$10,$L1226
	li	$25,8			# 0x8

	sll	$11,$5,4
	andi	$3,$11,0xffff
	sltu	$12,$3,$4
	beql	$12,$0,$L1225
	li	$25,16			# 0x10

	sll	$13,$3,16
	sra	$14,$13,16
	bltz	$14,$L1303
	sll	$15,$5,5

	andi	$3,$15,0xffff
	sltu	$24,$3,$4
	beq	$24,$0,$L1225
	li	$25,32			# 0x20

	sll	$25,$3,16
	sra	$2,$25,16
	bltzl	$2,$L1226
	li	$25,32			# 0x20

	sll	$7,$5,6
	andi	$3,$7,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,$L1306
	sll	$9,$3,16

	sra	$10,$9,16
	bltzl	$10,$L1226
	li	$25,64			# 0x40

	sll	$3,$5,7
	andi	$3,$3,0xffff
	sltu	$11,$3,$4
	beql	$11,$0,$L1225
	li	$25,128			# 0x80

	sll	$12,$3,16
	sra	$13,$12,16
	bltz	$13,$L1309
	sll	$14,$5,8

	andi	$3,$14,0xffff
	sltu	$15,$3,$4
	beq	$15,$0,$L1310
	sll	$24,$3,16

	sra	$25,$24,16
	bltz	$25,$L1311
	sll	$2,$5,9

	andi	$3,$2,0xffff
	sltu	$7,$3,$4
	beql	$7,$0,$L1312
	li	$25,512			# 0x200

	sll	$8,$3,16
	sra	$9,$8,16
	bltz	$9,$L1313
	sll	$10,$5,10

	andi	$3,$10,0xffff
	sltu	$11,$3,$4
	beq	$11,$0,$L1314
	sll	$12,$3,16

	sra	$13,$12,16
	bltzl	$13,$L1226
	li	$25,1024			# 0x400

	sll	$3,$5,11
	andi	$3,$3,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,$L1316
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,$L1226
	li	$25,2048			# 0x800

	sll	$25,$5,12
	andi	$3,$25,0xffff
	sltu	$2,$3,$4
	beq	$2,$0,$L1318
	sll	$7,$3,16

	sra	$8,$7,16
	bltz	$8,$L1319
	sll	$9,$5,13

	andi	$3,$9,0xffff
	sltu	$10,$3,$4
	beq	$10,$0,$L1320
	sll	$11,$3,16

	sra	$12,$11,16
	bltz	$12,$L1321
	sll	$13,$5,14

	andi	$3,$13,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,$L1322
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,$L1323
	sll	$5,$5,15

	andi	$11,$5,0xffff
	sltu	$3,$11,$4
	beql	$3,$0,$L1324
	li	$3,32768			# 0x8000

	bne	$11,$0,$L1369
	move	$2,$4

$L1227:
	bne	$6,$0,$L1370
	nop

	jr	$31
	move	$2,$11

$L1370:
	jr	$31
	nop

$L1312:
$L1225:
	subu	$2,$4,$3
	sltu	$7,$4,$3
	beq	$7,$0,$L1288
	andi	$8,$2,0xffff

	move	$8,$4
$L1288:
	bne	$7,$0,$L1294
	andi	$4,$8,0xffff

$L1367:
	andi	$12,$25,0xffff
$L1295:
	srl	$14,$3,1
	subu	$15,$4,$14
	sltu	$24,$4,$14
	srl	$13,$25,1
	bne	$24,$0,$L1229
	andi	$5,$15,0xffff

	move	$4,$5
$L1229:
	bne	$24,$0,$L1230
	andi	$2,$4,0xffff

	move	$7,$13
$L1231:
	or	$8,$12,$7
	srl	$4,$25,2
	andi	$11,$8,0xffff
	beq	$4,$0,$L1227
	srl	$10,$3,2

	subu	$9,$2,$10
	sltu	$12,$2,$10
	andi	$14,$9,0xffff
	beq	$12,$0,$L1233
	xori	$13,$12,0x1

	move	$14,$2
$L1233:
	bne	$13,$0,$L1235
	andi	$2,$14,0xffff

	move	$4,$0
$L1235:
	or	$11,$11,$4
	srl	$7,$25,3
	andi	$11,$11,0xffff
	beq	$7,$0,$L1227
	srl	$15,$3,3

	subu	$24,$2,$15
	sltu	$5,$2,$15
	andi	$10,$24,0xffff
	beq	$5,$0,$L1237
	xori	$8,$5,0x1

	move	$10,$2
$L1237:
	bne	$8,$0,$L1239
	andi	$2,$10,0xffff

	move	$7,$0
$L1239:
	or	$9,$11,$7
	srl	$4,$25,4
	andi	$11,$9,0xffff
	beq	$4,$0,$L1227
	srl	$12,$3,4

	subu	$13,$2,$12
	sltu	$14,$2,$12
	andi	$24,$13,0xffff
	beq	$14,$0,$L1241
	xori	$15,$14,0x1

	move	$24,$2
$L1241:
	bne	$15,$0,$L1243
	andi	$2,$24,0xffff

	move	$4,$0
$L1243:
	or	$11,$11,$4
	srl	$7,$25,5
	andi	$11,$11,0xffff
	beq	$7,$0,$L1227
	srl	$5,$3,5

	subu	$8,$2,$5
	sltu	$12,$2,$5
	andi	$9,$8,0xffff
	beq	$12,$0,$L1245
	xori	$10,$12,0x1

	move	$9,$2
$L1245:
	bne	$10,$0,$L1247
	andi	$2,$9,0xffff

	move	$7,$0
$L1247:
	or	$13,$11,$7
	srl	$4,$25,6
	andi	$11,$13,0xffff
	beq	$4,$0,$L1227
	srl	$14,$3,6

	subu	$15,$2,$14
	sltu	$24,$2,$14
	andi	$8,$15,0xffff
	beq	$24,$0,$L1249
	xori	$5,$24,0x1

	move	$8,$2
$L1249:
	bne	$5,$0,$L1251
	andi	$2,$8,0xffff

	move	$4,$0
$L1251:
	or	$11,$11,$4
	srl	$7,$25,7
	andi	$11,$11,0xffff
	beq	$7,$0,$L1227
	srl	$12,$3,7

	subu	$10,$2,$12
	sltu	$13,$2,$12
	andi	$9,$10,0xffff
	beq	$13,$0,$L1253
	xori	$14,$13,0x1

	move	$9,$2
$L1253:
	bne	$14,$0,$L1255
	andi	$2,$9,0xffff

	move	$7,$0
$L1255:
	or	$15,$11,$7
	srl	$4,$25,8
	andi	$11,$15,0xffff
	beq	$4,$0,$L1227
	srl	$24,$3,8

	subu	$5,$2,$24
	sltu	$8,$2,$24
	andi	$10,$5,0xffff
	beq	$8,$0,$L1257
	xori	$12,$8,0x1

	move	$10,$2
$L1257:
	bne	$12,$0,$L1259
	andi	$2,$10,0xffff

	move	$4,$0
$L1259:
	or	$11,$11,$4
	srl	$7,$25,9
	andi	$11,$11,0xffff
	beq	$7,$0,$L1227
	srl	$13,$3,9

	subu	$14,$2,$13
	sltu	$15,$2,$13
	andi	$9,$14,0xffff
	beq	$15,$0,$L1261
	xori	$24,$15,0x1

	move	$9,$2
$L1261:
	bne	$24,$0,$L1263
	andi	$2,$9,0xffff

	move	$7,$0
$L1263:
	or	$5,$11,$7
	srl	$4,$25,10
	andi	$11,$5,0xffff
	beq	$4,$0,$L1227
	srl	$8,$3,10

	subu	$12,$2,$8
	sltu	$13,$2,$8
	andi	$14,$12,0xffff
	beq	$13,$0,$L1265
	xori	$10,$13,0x1

	move	$14,$2
$L1265:
	bne	$10,$0,$L1267
	andi	$2,$14,0xffff

	move	$4,$0
$L1267:
	or	$11,$11,$4
	srl	$7,$25,11
	andi	$11,$11,0xffff
	beq	$7,$0,$L1227
	srl	$15,$3,11

	subu	$24,$2,$15
	sltu	$5,$2,$15
	andi	$9,$24,0xffff
	beq	$5,$0,$L1269
	xori	$8,$5,0x1

	move	$9,$2
$L1269:
	bne	$8,$0,$L1271
	andi	$2,$9,0xffff

	move	$7,$0
$L1271:
	or	$12,$11,$7
	srl	$4,$25,12
	andi	$11,$12,0xffff
	beq	$4,$0,$L1227
	srl	$13,$3,12

	subu	$10,$2,$13
	sltu	$14,$2,$13
	andi	$24,$10,0xffff
	beq	$14,$0,$L1273
	xori	$15,$14,0x1

	move	$24,$2
$L1273:
	bne	$15,$0,$L1275
	andi	$2,$24,0xffff

	move	$4,$0
$L1275:
	or	$11,$11,$4
	srl	$7,$25,13
	andi	$11,$11,0xffff
	beq	$7,$0,$L1227
	srl	$5,$3,13

	subu	$8,$2,$5
	sltu	$12,$2,$5
	andi	$9,$8,0xffff
	beq	$12,$0,$L1277
	xori	$13,$12,0x1

	move	$9,$2
$L1277:
	bne	$13,$0,$L1279
	andi	$2,$9,0xffff

	move	$7,$0
$L1279:
	or	$10,$11,$7
	srl	$4,$25,14
	andi	$11,$10,0xffff
	beq	$4,$0,$L1227
	srl	$14,$3,14

	subu	$15,$2,$14
	sltu	$24,$2,$14
	andi	$8,$15,0xffff
	beq	$24,$0,$L1281
	xori	$5,$24,0x1

	move	$8,$2
$L1281:
	bne	$5,$0,$L1283
	andi	$2,$8,0xffff

	move	$4,$0
$L1283:
	or	$11,$11,$4
	li	$12,16384			# 0x4000
	andi	$11,$11,0xffff
	beq	$25,$12,$L1227
	srl	$3,$3,15

	subu	$25,$2,$3
	sltu	$13,$2,$3
	andi	$7,$25,0xffff
	beq	$13,$0,$L1285
	xori	$9,$13,0x1

	move	$7,$2
$L1285:
	andi	$2,$7,0xffff
	.option	pic0
	b	$L1227
	.option	pic2
	or	$11,$9,$11

$L1297:
	li	$25,2			# 0x2
$L1226:
	subu	$9,$4,$3
	sltu	$10,$4,$3
	bne	$10,$0,$L1293
	andi	$11,$9,0xffff

	move	$4,$11
$L1293:
	beq	$10,$0,$L1367
	andi	$4,$4,0xffff

$L1294:
	.option	pic0
	b	$L1295
	.option	pic2
	move	$12,$0

$L1230:
	.option	pic0
	b	$L1231
	.option	pic2
	move	$7,$0

$L1368:
	subu	$3,$4,$5
	andi	$8,$3,0xffff
	beq	$5,$4,$L1222
	xor	$7,$5,$4

	move	$8,$4
$L1222:
	andi	$2,$8,0xffff
	.option	pic0
	b	$L1227
	.option	pic2
	sltu	$11,$7,1

$L1296:
	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,2			# 0x2

$L1298:
	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,4			# 0x4

	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,8			# 0x8

	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,16			# 0x10

$L1303:
	.option	pic0
	b	$L1226
	.option	pic2
	li	$25,16			# 0x10

	.option	pic0
	b	$L1226
	.option	pic2
	li	$25,32			# 0x20

$L1306:
	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,64			# 0x40

	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,128			# 0x80

$L1309:
	.option	pic0
	b	$L1226
	.option	pic2
	li	$25,128			# 0x80

$L1310:
	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,256			# 0x100

$L1311:
	.option	pic0
	b	$L1226
	.option	pic2
	li	$25,256			# 0x100

$L1313:
	.option	pic0
	b	$L1226
	.option	pic2
	li	$25,512			# 0x200

$L1314:
	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,1024			# 0x400

$L1316:
	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,2048			# 0x800

	.option	pic0
	b	$L1226
	.option	pic2
	li	$25,2048			# 0x800

$L1319:
	.option	pic0
	b	$L1226
	.option	pic2
	li	$25,4096			# 0x1000

$L1318:
	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,4096			# 0x1000

$L1321:
	.option	pic0
	b	$L1226
	.option	pic2
	li	$25,8192			# 0x2000

$L1320:
	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,8192			# 0x2000

$L1323:
	.option	pic0
	b	$L1226
	.option	pic2
	li	$25,16384			# 0x4000

$L1322:
	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,16384			# 0x4000

$L1369:
	li	$25,32768			# 0x8000
	.option	pic0
	b	$L1226
	.option	pic2
	li	$3,32768			# 0x8000

$L1324:
	.option	pic0
	b	$L1225
	.option	pic2
	li	$25,32768			# 0x8000

$L1224:
	subu	$5,$4,$5
	andi	$2,$5,0xffff
	.option	pic0
	b	$L1227
	.option	pic2
	li	$11,1			# 0x1

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
	beq	$2,$0,$L1395
	li	$2,32			# 0x20

	.option	pic0
	b	$L1372
	.option	pic2
	li	$12,1			# 0x1

$L1376:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1374
	sll	$12,$12,1

	beq	$2,$0,$L1375
	nop

$L1372:
	bgez	$5,$L1376
	addiu	$2,$2,-1

	.option	pic0
	b	$L1382
	.option	pic2
	move	$2,$0

$L1396:
	srl	$12,$12,1
	or	$2,$2,$11
	beq	$12,$0,$L1375
	srl	$5,$5,1

$L1382:
	sltu	$10,$4,$5
	subu	$9,$4,$5
	bne	$10,$0,$L1379
	xori	$8,$10,0x1

	move	$4,$9
$L1379:
	bne	$8,$0,$L1396
	move	$11,$12

	move	$11,$0
	srl	$12,$12,1
	or	$2,$2,$11
	bne	$12,$0,$L1382
	srl	$5,$5,1

$L1375:
	bne	$6,$0,$L1397
	nop

	jr	$31
	nop

$L1374:
	bne	$12,$0,$L1382
	move	$2,$0

	.option	pic0
	b	$L1375
	nop

	.option	pic2
$L1397:
	jr	$31
	move	$2,$4

$L1395:
	sltu	$3,$4,$5
	xori	$2,$3,0x1
	bne	$3,$0,$L1375
	subu	$5,$4,$5

	.option	pic0
	b	$L1375
	.option	pic2
	move	$4,$5

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
	beq	$2,$0,$L1399
	nop

	addiu	$6,$6,-32
	sll	$5,$4,$6
	move	$4,$0
	move	$2,$4
$L1403:
	jr	$31
	move	$3,$5

$L1399:
	beql	$6,$0,$L1403
	move	$2,$4

	li	$3,32			# 0x20
	subu	$7,$3,$6
	srl	$8,$4,$7
	sll	$5,$5,$6
	sll	$4,$4,$6
	or	$5,$8,$5
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
	beq	$2,$0,$L1405
	sra	$3,$5,31

	addiu	$6,$6,-32
	jr	$31
	sra	$2,$5,$6

$L1405:
	beq	$6,$0,$L1408
	li	$7,32			# 0x20

	subu	$3,$7,$6
	sll	$8,$5,$3
	srl	$4,$4,$6
	sra	$3,$5,$6
	jr	$31
	or	$2,$8,$4

$L1408:
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
	sll	$6,$5,8
	srl	$2,$4,24
	or	$11,$6,$2
	srl	$8,$5,8
	sll	$3,$4,24
	srl	$7,$4,8
	andi	$10,$11,0xff
	li	$9,16711680			# 0xff0000
	srl	$12,$5,24
	andi	$13,$8,0xff00
	or	$14,$3,$10
	and	$25,$11,$9
	sll	$4,$4,8
	andi	$15,$7,0xff00
	or	$24,$12,$13
	or	$6,$14,$15
	and	$11,$4,$9
	or	$2,$24,$25
	sll	$5,$5,24
	or	$3,$6,$11
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
	srl	$2,$4,24
	sll	$5,$4,24
	srl	$3,$4,8
	or	$6,$2,$5
	andi	$7,$3,0xff00
	sll	$4,$4,8
	li	$8,16711680			# 0xff0000
	or	$9,$6,$7
	and	$10,$4,$8
	jr	$31
	or	$2,$9,$10

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
	sltu	$2,$4,$7
	sll	$9,$2,4
	li	$3,16			# 0x10
	subu	$5,$3,$9
	srl	$4,$4,$5
	andi	$6,$4,0xff00
	sltu	$8,$6,1
	sll	$10,$8,3
	li	$11,8			# 0x8
	subu	$12,$11,$10
	srl	$13,$4,$12
	andi	$14,$13,0xf0
	sltu	$15,$14,1
	sll	$24,$15,2
	li	$25,4			# 0x4
	subu	$7,$25,$24
	srl	$3,$13,$7
	andi	$2,$3,0xc
	sltu	$5,$2,1
	sll	$4,$5,1
	li	$11,2			# 0x2
	subu	$6,$11,$4
	srl	$12,$3,$6
	srl	$8,$12,1
	addu	$9,$10,$9
	andi	$10,$8,0x1
	bne	$10,$0,$L1412
	addu	$13,$24,$9

	subu	$14,$11,$12
	addu	$15,$4,$13
	jr	$31
	addu	$2,$14,$15

$L1412:
	move	$14,$0
	addu	$15,$4,$13
	jr	$31
	addu	$2,$14,$15

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
	slt	$2,$5,$7
	bne	$2,$0,$L1418
	slt	$5,$7,$5

	bne	$5,$0,$L1417
	sltu	$3,$4,$6

	bne	$3,$0,$L1418
	sltu	$4,$6,$4

	bne	$4,$0,$L1419
	nop

	jr	$31
	li	$2,1			# 0x1

$L1418:
	jr	$31
	move	$2,$0

$L1417:
	jr	$31
	li	$2,2			# 0x2

$L1419:
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
	slt	$2,$5,$7
	bne	$2,$0,$L1422
	slt	$5,$7,$5

	bne	$5,$0,$L1423
	sltu	$3,$4,$6

	bne	$3,$0,$L1424
	nop

	jr	$31
	sltu	$2,$6,$4

$L1422:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1424:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1423:
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
	sltu	$2,$7,1
	sll	$8,$2,4
	srl	$3,$4,$8
	andi	$6,$3,0xff
	sltu	$4,$6,1
	sll	$9,$4,3
	srl	$10,$3,$9
	andi	$5,$10,0xf
	sltu	$11,$5,1
	sll	$12,$11,2
	srl	$13,$10,$12
	andi	$14,$13,0x3
	sltu	$15,$14,1
	sll	$24,$15,1
	srl	$25,$13,$24
	andi	$7,$25,0x3
	nor	$2,$0,$7
	andi	$6,$2,0x1
	addu	$8,$9,$8
	srl	$3,$7,1
	li	$4,2			# 0x2
	addu	$9,$12,$8
	subu	$10,$4,$3
	subu	$5,$0,$6
	and	$11,$5,$10
	addu	$12,$24,$9
	jr	$31
	addu	$2,$11,$12

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
	beq	$2,$0,$L1427
	nop

	addiu	$6,$6,-32
	srl	$2,$5,$6
	move	$5,$0
	jr	$31
	move	$3,$5

$L1427:
	beql	$6,$0,$L1430
	move	$2,$4

	li	$3,32			# 0x20
	subu	$7,$3,$6
	sll	$8,$5,$7
	srl	$4,$4,$6
	srl	$5,$5,$6
	or	$2,$8,$4
	jr	$31
	move	$3,$5

$L1430:
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
	andi	$6,$4,0xffff
	andi	$3,$5,0xffff
	gsmultu	$2,$6,$3
	srl	$4,$4,16
	srl	$7,$2,16
	gsmultu	$8,$3,$4
	addu	$9,$8,$7
	srl	$5,$5,16
	andi	$10,$9,0xffff
	gsmultu	$12,$6,$5
	srl	$11,$9,16
	addu	$13,$12,$10
	srl	$14,$13,16
	andi	$25,$2,0xffff
	sll	$6,$13,16
	gsmultu	$15,$4,$5
	addu	$24,$11,$15
	addu	$3,$24,$14
	jr	$31
	addu	$2,$25,$6

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
	andi	$8,$4,0xffff
	andi	$3,$6,0xffff
	srl	$9,$4,16
	gsmultu	$2,$8,$3
	srl	$10,$2,16
	gsmultu	$11,$3,$9
	addu	$12,$11,$10
	srl	$13,$6,16
	andi	$14,$12,0xffff
	gsmultu	$24,$8,$13
	srl	$15,$12,16
	addu	$25,$24,$14
	gsmultu	$3,$9,$13
	srl	$8,$25,16
	addu	$9,$15,$3
	addu	$10,$9,$8
	sll	$11,$25,16
	gsmultu	$4,$4,$7
	andi	$2,$2,0xffff
	addu	$7,$4,$10
	gsmultu	$6,$6,$5
	addu	$2,$2,$11
	jr	$31
	addu	$3,$7,$6

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
	sltu	$2,$0,$4
	subu	$5,$0,$5
	subu	$3,$5,$2
	jr	$31
	subu	$2,$0,$4

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
	xor	$5,$5,$4
	srl	$3,$5,16
	xor	$4,$3,$5
	srl	$2,$4,8
	xor	$6,$2,$4
	srl	$7,$6,4
	xor	$8,$7,$6
	andi	$9,$8,0xf
	li	$10,27030			# 0x6996
	sra	$11,$10,$9
	jr	$31
	andi	$2,$11,0x1

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
	xor	$3,$2,$4
	srl	$4,$3,8
	xor	$5,$4,$3
	srl	$6,$5,4
	xor	$7,$6,$5
	andi	$8,$7,0xf
	li	$9,27030			# 0x6996
	sra	$10,$9,$8
	jr	$31
	andi	$2,$10,0x1

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
	sll	$2,$5,31
	srl	$6,$4,1
	li	$3,1431633920			# 0x55550000
	addiu	$7,$3,21845
	or	$8,$2,$6
	and	$10,$8,$7
	srl	$9,$5,1
	subu	$11,$4,$10
	and	$12,$9,$7
	sltu	$4,$4,$11
	subu	$5,$5,$12
	subu	$13,$5,$4
	sll	$14,$13,30
	srl	$15,$11,2
	li	$24,858980352			# 0x33330000
	addiu	$25,$24,13107
	or	$2,$14,$15
	and	$3,$2,$25
	and	$7,$11,$25
	srl	$6,$13,2
	addu	$8,$3,$7
	and	$9,$6,$25
	and	$10,$13,$25
	sltu	$11,$8,$3
	addu	$12,$9,$10
	addu	$4,$11,$12
	sll	$13,$4,28
	srl	$5,$8,4
	or	$14,$13,$5
	addu	$15,$14,$8
	srl	$24,$4,4
	addu	$2,$24,$4
	sltu	$25,$15,$14
	li	$3,252641280			# 0xf0f0000
	addiu	$6,$3,3855
	addu	$7,$25,$2
	and	$8,$15,$6
	and	$9,$7,$6
	addu	$10,$9,$8
	srl	$11,$10,16
	addu	$12,$11,$10
	srl	$4,$12,8
	addu	$13,$4,$12
	jr	$31
	andi	$2,$13,0x7f

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
	addiu	$5,$3,21845
	and	$6,$2,$5
	subu	$4,$4,$6
	li	$7,858980352			# 0x33330000
	addiu	$8,$7,13107
	srl	$9,$4,2
	and	$10,$9,$8
	and	$11,$4,$8
	addu	$12,$10,$11
	srl	$13,$12,4
	li	$14,252641280			# 0xf0f0000
	addu	$15,$13,$12
	addiu	$24,$14,3855
	and	$25,$15,$24
	srl	$3,$25,16
	addu	$5,$3,$25
	srl	$2,$5,8
	addu	$6,$2,$5
	jr	$31
	andi	$2,$6,0x3f

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
	lwc1	$f0,%lo($LC10)($5)
	andi	$2,$6,0x1
	lwc1	$f1,%lo($LC10+4)($5)
	beq	$2,$0,$L1439
	move	$2,$6

$L1441:
	mul.d	$f0,$f0,$f12
$L1439:
	srl	$3,$2,31
	addu	$4,$3,$2
	sra	$2,$4,1
	beq	$2,$0,$L1440
	srl	$7,$2,31

	andi	$8,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$8,$0,$L1441
	addu	$3,$7,$2

	sra	$2,$3,1
$L1448:
	srl	$7,$2,31
	andi	$8,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$8,$0,$L1441
	addu	$3,$7,$2

	.option	pic0
	b	$L1448
	.option	pic2
	sra	$2,$3,1

$L1440:
	bltz	$6,$L1447
	nop

	jr	$31
	nop

$L1447:
	lwc1	$f2,%lo($LC10)($5)
	nop
	lwc1	$f3,%lo($LC10+4)($5)
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
	beq	$2,$0,$L1450
	move	$2,$5

$L1452:
	mul.s	$f0,$f0,$f12
$L1450:
	srl	$3,$2,31
	addu	$4,$3,$2
	sra	$2,$4,1
	beq	$2,$0,$L1451
	srl	$7,$2,31

	andi	$8,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$8,$0,$L1452
	addu	$3,$7,$2

	sra	$2,$3,1
$L1459:
	srl	$7,$2,31
	andi	$8,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$8,$0,$L1452
	addu	$3,$7,$2

	.option	pic0
	b	$L1459
	.option	pic2
	sra	$2,$3,1

$L1451:
	bltz	$5,$L1458
	nop

	jr	$31
	nop

$L1458:
	lwc1	$f1,%lo($LC13)($6)
	jr	$31
	div.s	$f0,$f1,$f0

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
	sltu	$2,$5,$7
	bne	$2,$0,$L1464
	sltu	$5,$7,$5

	bne	$5,$0,$L1463
	sltu	$3,$4,$6

	bne	$3,$0,$L1464
	sltu	$4,$6,$4

	bne	$4,$0,$L1465
	nop

	jr	$31
	li	$2,1			# 0x1

$L1464:
	jr	$31
	move	$2,$0

$L1463:
	jr	$31
	li	$2,2			# 0x2

$L1465:
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
	sltu	$2,$5,$7
	bne	$2,$0,$L1468
	sltu	$5,$7,$5

	bne	$5,$0,$L1469
	sltu	$3,$4,$6

	bne	$3,$0,$L1470
	nop

	jr	$31
	sltu	$2,$6,$4

$L1468:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1470:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1469:
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
	.word	-1
	.word	-1048577
	.align	3
$LC3:
	.word	-1
	.word	2146435071
	$LC4 = $LC6+4
	.section	.rodata.cst4
	.align	2
$LC5:
	.word	1056964608
	.section	.rodata.cst8
	.align	3
$LC6:
	.word	0
	.word	1073741824
	.align	3
$LC7:
	.word	0
	.word	1071644672
	.align	3
$LC8:
	.word	0
	.word	-1074790400
	.align	3
$LC9:
	.word	0
	.word	-1075838976
	.align	3
$LC10:
	.word	0
	.word	1072693248
	.align	3
$LC11:
	.word	0
	.word	1106247680
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
