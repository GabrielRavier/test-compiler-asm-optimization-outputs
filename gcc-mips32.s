	.file	1 "mini-libc.c"
	.section .mdebug.abi32
	.previous
	.nan	2008
	.module	fp=32
	.module	oddspreg
	.module	arch=mips3
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
	beq	$6,$0,$L31
	addu	$14,$4,$6

$L4:
	lb	$13,-1($15)
	addiu	$14,$14,-1
	addiu	$15,$15,-1
	bne	$2,$14,$L4
	sb	$13,0($14)

$L31:
	jr	$31
	nop

$L2:
	bne	$4,$5,$L29
	nop

	jr	$31
	nop

$L29:
	beq	$6,$0,$L31
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
	addiu	$24,$24,4
	bne	$14,$5,$L6
	sw	$15,-4($24)

	addu	$25,$2,$13
	beq	$6,$13,$L31
	subu	$3,$6,$13

	lb	$6,0($14)
	li	$5,1			# 0x1
	beq	$3,$5,$L31
	sb	$6,0($25)

	lb	$4,1($14)
	li	$7,2			# 0x2
	beq	$3,$7,$L31
	sb	$4,1($25)

	lb	$8,2($14)
	jr	$31
	sb	$8,2($25)

$L5:
	addu	$9,$2,$6
	move	$11,$2
$L9:
	lb	$10,-1($12)
	addiu	$11,$11,1
	addiu	$12,$12,1
	bne	$11,$9,$L9
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
	bne	$7,$0,$L33
	andi	$6,$6,0x00ff

	jr	$31
	move	$2,$0

$L36:
	beq	$7,$0,$L35
	addiu	$4,$4,1

$L33:
	lbu	$2,0($5)
	addiu	$7,$7,-1
	addiu	$5,$5,1
	bne	$2,$6,$L36
	sb	$2,0($4)

	jr	$31
	addiu	$2,$4,1

$L35:
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
	bne	$6,$0,$L45
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

$L47:
	beq	$6,$0,$L48
	addiu	$4,$4,1

$L45:
	lbu	$2,0($4)
	bne	$2,$5,$L47
	addiu	$6,$6,-1

	jr	$31
	move	$2,$4

$L48:
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
	b	$L66
	nop

	.option	pic2
$L68:
	lbu	$3,0($5)
	addiu	$6,$6,-1
	bne	$2,$3,$L67
	addiu	$4,$4,1

	addiu	$5,$5,1
$L66:
	bnel	$6,$0,$L68
	lbu	$2,0($4)

	jr	$31
	move	$2,$0

$L67:
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
	beq	$6,$0,$L70
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

$L70:
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
	b	$L76
	.option	pic2
	addiu	$4,$4,-1

$L78:
	lbu	$3,0($2)
	beq	$3,$5,$L79
	addiu	$7,$7,-1

$L76:
	bne	$7,$4,$L78
	move	$2,$7

	move	$2,$0
$L79:
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
	beq	$6,$0,$L83
	move	$16,$4

	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	andi	$5,$5,0x00ff

$L83:
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
	beq	$3,$0,$L92
	sb	$3,0($4)

$L87:
	lb	$4,1($5)
	addiu	$2,$2,1
	addiu	$5,$5,1
	bne	$4,$0,$L87
	sb	$4,0($2)

$L92:
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
	bne	$4,$0,$L94
	andi	$5,$5,0x00ff

$L102:
	jr	$31
	nop

$L96:
	beq	$4,$0,$L102
	addiu	$2,$2,1

$L94:
	andi	$3,$4,0x00ff
	bnel	$3,$5,$L96
	lb	$4,1($2)

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
	b	$L105
	.option	pic2
	move	$2,$4

$L108:
	beq	$3,$0,$L107
	addiu	$2,$2,1

$L105:
	lb	$3,0($2)
	bne	$3,$5,$L108
	nop

	jr	$31
	nop

$L107:
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
$L112:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,$L119
	addiu	$4,$4,1

	bne	$3,$0,$L112
	addiu	$5,$5,1

$L111:
	andi	$4,$2,0x00ff
	jr	$31
	subu	$2,$3,$4

$L119:
	.option	pic0
	b	$L111
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
	beq	$2,$0,$L123
	move	$5,$4

$L122:
	lb	$3,1($5)
	bne	$3,$0,$L122
	addiu	$5,$5,1

	jr	$31
	subu	$2,$5,$4

$L123:
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
	beq	$6,$0,$L133
	addiu	$6,$6,-1

	lbu	$2,0($4)
	bne	$2,$0,$L129
	addu	$8,$4,$6

	.option	pic0
	b	$L128
	.option	pic2
	lbu	$3,0($5)

$L140:
	beq	$4,$8,$L128
	nop

	bne	$3,$2,$L128
	addiu	$4,$4,1

	lbu	$2,0($4)
	beql	$2,$0,$L139
	lbu	$3,1($5)

	move	$5,$7
$L129:
	lbu	$3,0($5)
	bne	$3,$0,$L140
	addiu	$7,$5,1

$L128:
	jr	$31
	subu	$2,$2,$3

$L133:
	jr	$31
	move	$2,$0

$L139:
	jr	$31
	subu	$2,$2,$3

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
	bne	$2,$0,$L145
	srl	$3,$6,1

	sll	$6,$3,1
	addu	$7,$4,$6
$L143:
	lbu	$8,1($4)
	lbu	$9,0($4)
	addiu	$4,$4,2
	sb	$8,0($5)
	sb	$9,1($5)
	bne	$4,$7,$L143
	addiu	$5,$5,2

$L145:
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
	beq	$4,$2,$L150
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

$L150:
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
	sltu	$3,$4,32
	bne	$3,$0,$L154
	li	$2,1			# 0x1

	xori	$4,$4,0x7f
	sltu	$2,$4,1
$L154:
	jr	$31
	nop

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
	beq	$4,$2,$L161
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

$L161:
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
	sltu	$3,$4,32
	bne	$3,$0,$L169
	li	$2,1			# 0x1

	addiu	$5,$4,-127
	sltu	$6,$5,33
	beq	$6,$0,$L168
	addiu	$7,$4,-8232

$L169:
	jr	$31
	nop

$L168:
	sltu	$8,$7,2
	bne	$8,$0,$L169
	nop

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$9,$2,7
	addu	$4,$4,$9
	jr	$31
	sltu	$2,$4,3

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
	bne	$2,$0,$L178
	sltu	$3,$4,8232

	bne	$3,$0,$L176
	addiu	$5,$4,-8234

	li	$6,47062			# 0xb7d6
	sltu	$7,$5,$6
	bne	$7,$0,$L176
	li	$8,-65536			# 0xffffffffffff0000

	addiu	$9,$8,8192
	addu	$10,$4,$9
	sltu	$11,$10,8185
	bne	$11,$0,$L176
	addiu	$12,$8,4

	li	$13,1048576			# 0x100000
	addu	$14,$4,$12
	addiu	$15,$13,4
	sltu	$24,$14,$15
	beq	$24,$0,$L177
	andi	$4,$4,0xfffe

	xori	$25,$4,0xfffe
	jr	$31
	sltu	$2,$0,$25

$L176:
	jr	$31
	li	$2,1			# 0x1

$L178:
	addiu	$2,$4,1
	andi	$3,$2,0x7f
	sltu	$5,$3,33
	jr	$31
	xori	$2,$5,0x1

$L177:
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
	addiu	$3,$4,-48
	sltu	$5,$3,10
	bne	$5,$0,$L182
	li	$2,1			# 0x1

	ori	$4,$4,0x20
	addiu	$2,$4,-97
	sltu	$2,$2,6
$L182:
	jr	$31
	nop

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
	bc1t	$L187
	nop

	c.un.d	$f14,$f14
	nop
	bc1t	$L188
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L191
	nop

	jr	$31
	sub.d	$f0,$f12,$f14

$L191:
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	jr	$31
	nop

$L187:
	jr	$31
	mov.d	$f0,$f12

$L188:
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
	bc1t	$L195
	nop

	c.un.s	$f14,$f14
	nop
	bc1t	$L196
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L199
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L199:
	mtc1	$0,$f0
	jr	$31
	nop

$L195:
	jr	$31
	mov.s	$f0,$f12

$L196:
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
	mfc1	$2,$f12
	mfc1	$3,$f13
	mtc1	$2,$f0
	sdc1	$f14,8($sp)
	mtc1	$3,$f1
	nop
	c.un.d	$f0,$f0
	nop
	bc1t	$L214
	mov.d	$f0,$f14

	c.un.d	$f14,$f14
	nop
	bc1t	$L207
	lw	$5,12($sp)

	li	$6,-2147483648			# 0xffffffff80000000
	and	$7,$3,$6
	and	$8,$5,$6
	bne	$7,$8,$L212
	nop

	mtc1	$2,$f2
	nop
	mtc1	$3,$f3
	nop
	c.lt.d	$f2,$f14
	nop
	bc1t	$L213
	nop

$L211:
	mtc1	$2,$f0
	nop
	mtc1	$3,$f1
$L214:
	jr	$31
	nop

$L212:
	beq	$7,$0,$L211
	nop

	jr	$31
	nop

$L207:
	mtc1	$2,$f0
	nop
	mtc1	$3,$f1
$L213:
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
	mfc1	$2,$f12
	mov.s	$f0,$f14
	bc1t	$L229
	swc1	$f14,4($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L222
	lw	$4,4($sp)

	li	$5,-2147483648			# 0xffffffff80000000
	and	$6,$2,$5
	and	$7,$4,$5
	bne	$6,$7,$L227
	nop

	c.lt.s	$f12,$f14
	nop
	bc1t	$L228
	nop

$L226:
	mtc1	$2,$f0
$L229:
	jr	$31
	nop

$L227:
	beq	$6,$0,$L226
	nop

	jr	$31
	nop

$L228:
	jr	$31
	nop

$L222:
	jr	$31
	mov.s	$f0,$f12

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
	mfc1	$2,$f12
	mfc1	$3,$f13
	mtc1	$2,$f0
	sdc1	$f14,8($sp)
	mtc1	$3,$f1
	nop
	c.un.d	$f0,$f0
	nop
	bc1t	$L244
	mov.d	$f0,$f14

	c.un.d	$f14,$f14
	nop
	bc1t	$L237
	lw	$5,12($sp)

	li	$6,-2147483648			# 0xffffffff80000000
	and	$7,$3,$6
	and	$8,$5,$6
	bne	$7,$8,$L242
	nop

	mtc1	$2,$f2
	nop
	mtc1	$3,$f3
	nop
	c.lt.d	$f2,$f14
	nop
	bc1t	$L243
	nop

$L241:
	mtc1	$2,$f0
	nop
	mtc1	$3,$f1
$L244:
	jr	$31
	nop

$L242:
	beq	$7,$0,$L241
	nop

	jr	$31
	nop

$L237:
	mtc1	$2,$f0
	nop
	mtc1	$3,$f1
$L243:
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
	mfc1	$2,$f14
	c.un.d	$f12,$f12
	mfc1	$3,$f15
	mtc1	$2,$f0
	nop
	mtc1	$3,$f1
	bc1t	$L259
	sdc1	$f12,0($sp)

	c.un.d	$f0,$f0
	nop
	bc1t	$L252
	lw	$4,4($sp)

	li	$6,-2147483648			# 0xffffffff80000000
	and	$8,$3,$6
	and	$7,$4,$6
	bne	$7,$8,$L257
	mov.d	$f0,$f12

	mtc1	$2,$f2
	nop
	mtc1	$3,$f3
	nop
	c.lt.d	$f12,$f2
	nop
	bc1t	$L258
	nop

$L256:
	mtc1	$2,$f0
	nop
	mtc1	$3,$f1
$L259:
	jr	$31
	nop

$L257:
	beq	$7,$0,$L256
	nop

	jr	$31
	nop

$L258:
	jr	$31
	nop

$L252:
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
	mfc1	$2,$f14
	mov.s	$f0,$f14
	bc1t	$L274
	swc1	$f12,0($sp)

	c.un.s	$f14,$f14
	nop
	bc1t	$L267
	lw	$3,0($sp)

	li	$5,-2147483648			# 0xffffffff80000000
	and	$7,$2,$5
	and	$6,$3,$5
	bne	$6,$7,$L272
	mov.s	$f0,$f12

	c.lt.s	$f12,$f14
	nop
	bc1t	$L273
	nop

$L271:
	mtc1	$2,$f0
$L274:
	jr	$31
	nop

$L272:
	beq	$6,$0,$L271
	nop

	jr	$31
	nop

$L273:
	jr	$31
	nop

$L267:
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
	mfc1	$2,$f14
	c.un.d	$f12,$f12
	mfc1	$3,$f15
	mtc1	$2,$f0
	nop
	mtc1	$3,$f1
	bc1t	$L289
	sdc1	$f12,0($sp)

	c.un.d	$f0,$f0
	nop
	bc1t	$L282
	lw	$4,4($sp)

	li	$6,-2147483648			# 0xffffffff80000000
	and	$8,$3,$6
	and	$7,$4,$6
	bne	$7,$8,$L287
	mov.d	$f0,$f12

	mtc1	$2,$f2
	nop
	mtc1	$3,$f3
	nop
	c.lt.d	$f12,$f2
	nop
	bc1t	$L288
	nop

$L286:
	mtc1	$2,$f0
	nop
	mtc1	$3,$f1
$L289:
	jr	$31
	nop

$L287:
	beq	$7,$0,$L286
	nop

	jr	$31
	nop

$L288:
	jr	$31
	nop

$L282:
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
	beq	$4,$0,$L293
	addiu	$2,$2,%lo(s.0)

	lui	$6,%hi(digits)
	move	$5,$2
	addiu	$7,$6,%lo(digits)
$L292:
	andi	$3,$4,0x3f
	addu	$8,$7,$3
	lbu	$9,0($8)
	srl	$4,$4,6
	addiu	$5,$5,1
	bne	$4,$0,$L292
	sb	$9,-1($5)

	jr	$31
	sb	$0,0($5)

$L293:
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
	addiu	$8,$6,32557
	multu	$ac0,$2,$8
	addiu	$sp,$sp,-16
	sw	$2,8($sp)
	lw	$12,8($sp)
	lw	$4,%lo(seed+4)($5)
	li	$7,1481703424			# 0x58510000
	ori	$10,$7,0xf42d
	gsmultu	$11,$4,$8
	gsmultu	$13,$12,$10
	addu	$14,$11,$13
	mflo	$9
	addiu	$15,$9,1
	sltu	$25,$15,$9
	mfhi	$3
	addu	$24,$14,$3
	addu	$2,$25,$24
	sw	$2,%lo(seed+4)($5)
	srl	$2,$2,1
	sw	$15,%lo(seed)($5)
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
	beql	$5,$0,$L304
	sw	$0,4($4)

	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$3,0($4)
	bnel	$3,$0,$L306
	sw	$4,4($3)

$L306:
	jr	$31
	nop

$L304:
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
	beql	$2,$0,$L317
	lw	$4,4($4)

	lw	$3,4($4)
	sw	$3,4($2)
	lw	$4,4($4)
$L317:
	bnel	$4,$0,$L316
	sw	$2,0($4)

$L316:
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
	sw	$19,36($sp)
	lw	$19,0($6)
	lui	$28,%hi(__gnu_local_gp)
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
	beq	$19,$0,$L319
	move	$18,$7

	move	$16,$5
	.option	pic0
	b	$L321
	.option	pic2
	move	$17,$0

$L334:
	beq	$19,$17,$L319
	addu	$16,$16,$18

$L321:
	move	$5,$16
	move	$25,$22
	jalr	$25
	move	$4,$20

	move	$21,$16
	lw	$28,16($sp)
	bne	$2,$0,$L334
	addiu	$17,$17,1

$L318:
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

$L319:
	addiu	$2,$19,1
	gsmultu	$3,$18,$19
	sw	$2,0($23)
	beq	$18,$0,$L318
	addu	$21,$fp,$3

	lw	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$21

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
	beq	$20,$0,$L336
	sw	$16,24($sp)

	move	$18,$4
	move	$19,$7
	move	$16,$5
	.option	pic0
	b	$L338
	.option	pic2
	move	$17,$0

$L347:
	beq	$20,$17,$L336
	addu	$16,$16,$19

$L338:
	move	$5,$16
	move	$25,$21
	jalr	$25
	move	$4,$18

	move	$22,$16
	bne	$2,$0,$L347
	addiu	$17,$17,1

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

$L336:
	lw	$31,52($sp)
	move	$22,$0
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
	sra	$2,$4,31
	xor	$4,$2,$4
	jr	$31
	subu	$2,$4,$2

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
$L356:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,$L350
	sltu	$6,$2,5

	bnel	$6,$0,$L356
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,$L351
	li	$8,45			# 0x2d

	bne	$5,$8,$L369
	addiu	$13,$5,-48

	lb	$11,1($4)
	addiu	$13,$11,-48
	sltu	$12,$13,10
	beq	$12,$0,$L361
	addiu	$4,$4,1

	li	$15,1			# 0x1
$L354:
	move	$2,$0
$L358:
	lb	$25,1($4)
	sll	$24,$2,2
	addu	$3,$24,$2
	sll	$5,$3,1
	move	$6,$13
	subu	$2,$5,$13
	addiu	$13,$25,-48
	sltu	$7,$13,10
	bne	$7,$0,$L358
	addiu	$4,$4,1

	bne	$15,$0,$L370
	nop

	jr	$31
	subu	$2,$6,$5

$L350:
	.option	pic0
	b	$L356
	.option	pic2
	addiu	$4,$4,1

$L369:
	sltu	$14,$13,10
	bne	$14,$0,$L354
	move	$15,$0

$L368:
	jr	$31
	move	$2,$0

$L361:
	move	$2,$0
$L370:
	jr	$31
	nop

$L351:
	lb	$9,1($4)
	move	$15,$0
	addiu	$13,$9,-48
	sltu	$10,$13,10
	bne	$10,$0,$L354
	addiu	$4,$4,1

	.option	pic0
	b	$L368
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
$L376:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,$L372
	sltu	$6,$2,5

	bnel	$6,$0,$L376
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,$L373
	li	$10,45			# 0x2d

	beql	$5,$10,$L374
	lb	$11,1($4)

	addiu	$13,$5,-48
	sltu	$14,$13,10
	beq	$14,$0,$L390
	move	$15,$0

$L377:
	move	$2,$0
$L380:
	lb	$25,1($4)
	sll	$24,$2,2
	addu	$3,$24,$2
	sll	$5,$3,1
	move	$6,$13
	subu	$2,$5,$13
	addiu	$13,$25,-48
	sltu	$7,$13,10
	bne	$7,$0,$L380
	addiu	$4,$4,1

	bne	$15,$0,$L391
	nop

	jr	$31
	subu	$2,$6,$5

$L372:
	.option	pic0
	b	$L376
	.option	pic2
	addiu	$4,$4,1

$L374:
	li	$15,1			# 0x1
	addiu	$13,$11,-48
	sltu	$12,$13,10
	bne	$12,$0,$L377
	addiu	$4,$4,1

$L390:
	jr	$31
	move	$2,$0

$L383:
	move	$2,$0
$L391:
	jr	$31
	nop

$L373:
	lb	$8,1($4)
	addiu	$13,$8,-48
	sltu	$9,$13,10
	beq	$9,$0,$L383
	addiu	$4,$4,1

	.option	pic0
	b	$L377
	.option	pic2
	move	$15,$0

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
$L399:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,$L393
	sltu	$6,$2,5

	bnel	$6,$0,$L399
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,$L394
	li	$10,45			# 0x2d

	bne	$5,$10,$L411
	addiu	$13,$5,-48

	lb	$11,1($4)
	addiu	$13,$11,-48
	sltu	$12,$13,10
	beq	$12,$0,$L404
	addiu	$4,$4,1

	li	$15,1			# 0x1
$L397:
	move	$2,$0
	move	$24,$0
$L401:
	sll	$25,$2,2
	srl	$3,$2,30
	sll	$5,$24,2
	addu	$2,$25,$2
	or	$6,$3,$5
	addu	$8,$6,$24
	sltu	$9,$2,$25
	lb	$7,1($4)
	addu	$10,$9,$8
	sll	$12,$2,1
	srl	$11,$2,31
	sll	$14,$10,1
	subu	$2,$12,$13
	sra	$25,$13,31
	or	$3,$11,$14
	move	$5,$13
	addiu	$13,$7,-48
	sltu	$24,$12,$2
	subu	$8,$3,$25
	sltu	$6,$13,10
	addiu	$4,$4,1
	bne	$6,$0,$L401
	subu	$24,$8,$24

	bne	$15,$0,$L392
	subu	$13,$25,$3

	subu	$2,$5,$12
	sltu	$4,$5,$2
	subu	$24,$13,$4
$L392:
	jr	$31
	move	$3,$24

$L393:
	.option	pic0
	b	$L399
	.option	pic2
	addiu	$4,$4,1

$L411:
	sltu	$14,$13,10
	bne	$14,$0,$L397
	move	$15,$0

$L404:
	move	$2,$0
	move	$24,$0
$L412:
	jr	$31
	move	$3,$24

$L394:
	lb	$8,1($4)
	move	$15,$0
	addiu	$13,$8,-48
	sltu	$9,$13,10
	bne	$9,$0,$L397
	addiu	$4,$4,1

	move	$2,$0
	.option	pic0
	b	$L412
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
	sw	$22,48($sp)
	sw	$31,52($sp)
	lw	$22,72($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	beq	$6,$0,$L414
	sw	$16,24($sp)

	move	$16,$6
	move	$21,$4
	move	$19,$5
	.option	pic0
	b	$L417
	.option	pic2
	move	$20,$7

$L427:
	beq	$2,$0,$L413
	subu	$16,$16,$18

	beq	$16,$0,$L414
	addu	$19,$17,$20

$L417:
	srl	$18,$16,1
$L428:
	gsmultu	$17,$18,$20
	addu	$17,$19,$17
	move	$5,$17
	move	$25,$22
	jalr	$25
	move	$4,$21

	bgez	$2,$L427
	addiu	$16,$16,-1

	move	$16,$18
	bne	$16,$0,$L428
	srl	$18,$16,1

$L414:
	move	$17,$0
$L413:
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
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$16,28($sp)
	lw	$22,80($sp)
	lw	$23,84($sp)
	sw	$31,60($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	move	$16,$6
	move	$21,$4
	move	$19,$5
	beq	$6,$0,$L434
	move	$20,$7

$L442:
	sra	$18,$16,1
$L445:
	gsmultu	$17,$18,$20
	addu	$17,$19,$17
	move	$6,$23
	move	$5,$17
	move	$25,$22
	jalr	$25
	move	$4,$21

	addiu	$16,$16,-1
	beq	$2,$0,$L429
	sra	$16,$16,1

	blez	$2,$L432
	nop

	bne	$16,$0,$L442
	addu	$19,$17,$20

$L434:
	move	$17,$0
$L429:
	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$16,28($sp)
	move	$2,$17
	lw	$17,32($sp)
	jr	$31
	addiu	$sp,$sp,64

$L432:
	beq	$18,$0,$L434
	move	$16,$18

	.option	pic0
	b	$L445
	.option	pic2
	sra	$18,$16,1

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
	div	$0,$5,$6
	teq	$6,$0,7
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
	sra	$3,$5,31
	xor	$4,$3,$4
	subu	$2,$4,$3
	xor	$5,$3,$5
	sltu	$6,$4,$2
	subu	$7,$5,$3
	jr	$31
	subu	$3,$7,$6

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
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	lw	$19,68($sp)
	lw	$18,64($sp)
	lw	$25,%call16(__divdi3)($28)
	sw	$20,40($sp)
	sw	$17,28($sp)
	move	$20,$6
	move	$17,$7
	sw	$31,44($sp)
	sw	$16,24($sp)
	.cprestore	16
	move	$16,$4
	move	$6,$18
	move	$7,$19
	move	$4,$20
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	move	$5,$17

	lw	$28,16($sp)
	move	$6,$18
	move	$7,$19
	lw	$25,%call16(__moddi3)($28)
	move	$4,$20
	move	$5,$17
	sw	$2,0($16)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$3,4($16)

	lw	$31,44($sp)
	sw	$2,8($16)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	sw	$3,12($16)
	move	$2,$16
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

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
	sra	$2,$4,31
	xor	$4,$2,$4
	jr	$31
	subu	$2,$4,$2

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
	div	$0,$5,$6
	teq	$6,$0,7
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
	sra	$3,$5,31
	xor	$4,$3,$4
	subu	$2,$4,$3
	xor	$5,$3,$5
	sltu	$6,$4,$2
	subu	$7,$5,$3
	jr	$31
	subu	$3,$7,$6

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
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	lw	$19,68($sp)
	lw	$18,64($sp)
	lw	$25,%call16(__divdi3)($28)
	sw	$20,40($sp)
	sw	$17,28($sp)
	move	$20,$6
	move	$17,$7
	sw	$31,44($sp)
	sw	$16,24($sp)
	.cprestore	16
	move	$16,$4
	move	$6,$18
	move	$7,$19
	move	$4,$20
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	move	$5,$17

	lw	$28,16($sp)
	move	$6,$18
	move	$7,$19
	lw	$25,%call16(__moddi3)($28)
	move	$4,$20
	move	$5,$17
	sw	$2,0($16)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$3,4($16)

	lw	$31,44($sp)
	sw	$2,8($16)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	sw	$3,12($16)
	move	$2,$16
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

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
	bne	$2,$0,$L456
	nop

	jr	$31
	nop

$L458:
	beq	$2,$0,$L459
	addiu	$4,$4,4

$L456:
	bnel	$5,$2,$L458
	lw	$2,4($4)

	jr	$31
	move	$2,$4

$L459:
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
$L466:
	lw	$3,0($4)
	lw	$6,0($5)
	bne	$3,$6,$L465
	addiu	$4,$4,4

	bne	$3,$0,$L466
	addiu	$5,$5,4

$L465:
	slt	$4,$3,$6
	bne	$4,$0,$L472
	li	$2,-1			# 0xffffffffffffffff

	slt	$2,$6,$3
$L472:
	jr	$31
	nop

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
$L474:
	lw	$6,0($5)
	addiu	$3,$3,4
	addiu	$5,$5,4
	bne	$6,$0,$L474
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
	beq	$2,$0,$L479
	move	$5,$4

$L478:
	lw	$3,4($5)
	bne	$3,$0,$L478
	addiu	$5,$5,4

	subu	$4,$5,$4
	jr	$31
	sra	$2,$4,2

$L479:
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
	b	$L492
	nop

	.option	pic2
$L493:
	lw	$3,0($5)
	bne	$2,$3,$L484
	addiu	$6,$6,-1

	beql	$2,$0,$L495
	lw	$6,0($4)

	addiu	$4,$4,4
	addiu	$5,$5,4
$L492:
	bnel	$6,$0,$L493
	lw	$2,0($4)

	jr	$31
	move	$2,$0

$L484:
	lw	$6,0($4)
$L495:
	lw	$5,0($5)
	slt	$4,$6,$5
	bne	$4,$0,$L494
	slt	$2,$5,$6

	jr	$31
	nop

$L494:
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
	bnel	$6,$0,$L507
	lw	$2,0($4)

	jr	$31
	move	$2,$0

$L501:
	beq	$6,$0,$L502
	addiu	$4,$4,4

	lw	$2,0($4)
$L507:
	bne	$2,$5,$L501
	addiu	$6,$6,-1

	jr	$31
	move	$2,$4

$L502:
	jr	$31
	move	$2,$0

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
	b	$L522
	nop

	.option	pic2
$L524:
	lw	$3,0($5)
	addiu	$6,$6,-1
	bne	$2,$3,$L523
	addiu	$4,$4,4

	addiu	$5,$5,4
$L522:
	bnel	$6,$0,$L524
	lw	$2,0($4)

	jr	$31
	move	$2,$0

$L523:
	slt	$4,$2,$3
	bne	$4,$0,$L525
	slt	$2,$3,$2

	jr	$31
	nop

$L525:
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
	beq	$6,$0,$L529
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sll	$6,$6,2

$L529:
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
	beq	$4,$5,$L551
	move	$2,$4

	subu	$4,$4,$5
	sll	$3,$6,2
	sltu	$7,$4,$3
	beq	$7,$0,$L549
	addiu	$9,$6,-1

	beq	$6,$0,$L551
	sll	$14,$9,2

	li	$11,-4			# 0xfffffffffffffffc
$L539:
	lwx	$12,$14($5)
	addu	$13,$2,$14
	addiu	$14,$14,-4
	bne	$14,$11,$L539
	sw	$12,0($13)

$L551:
	jr	$31
	nop

$L549:
	move	$10,$2
	beq	$6,$0,$L551
	li	$8,-1			# 0xffffffffffffffff

$L537:
	lw	$6,0($5)
	addiu	$9,$9,-1
	addiu	$10,$10,4
	addiu	$5,$5,4
	bne	$9,$8,$L537
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
	beq	$6,$0,$L559
	addiu	$3,$6,-1

	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
$L554:
	addiu	$3,$3,-1
	addiu	$6,$6,4
	bne	$3,$7,$L554
	sw	$5,-4($6)

$L559:
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
	beq	$2,$0,$L561
	addu	$11,$4,$6

	beq	$6,$0,$L593
	addu	$13,$5,$6

$L563:
	lb	$10,-1($11)
	addiu	$11,$11,-1
	addiu	$13,$13,-1
	bne	$4,$11,$L563
	sb	$10,0($13)

$L593:
	jr	$31
	nop

$L561:
	bne	$4,$5,$L589
	nop

	jr	$31
	nop

$L589:
	beq	$6,$0,$L593
	addiu	$3,$6,-1

	sltu	$7,$3,7
	bne	$7,$0,$L591
	addiu	$12,$4,1

	or	$8,$5,$4
	andi	$9,$8,0x3
	bne	$9,$0,$L591
	subu	$10,$5,$12

	sltu	$11,$10,3
	bne	$11,$0,$L564
	move	$24,$5

	srl	$12,$6,2
	sll	$13,$12,2
	addu	$14,$4,$13
$L565:
	lw	$15,0($4)
	addiu	$4,$4,4
	addiu	$24,$24,4
	bne	$14,$4,$L565
	sw	$15,-4($24)

	addu	$5,$5,$13
	beq	$6,$13,$L593
	subu	$25,$6,$13

	lb	$4,0($14)
	li	$6,1			# 0x1
	beq	$25,$6,$L593
	sb	$4,0($5)

	lb	$2,1($14)
	li	$3,2			# 0x2
	beq	$25,$3,$L593
	sb	$2,1($5)

	lb	$7,2($14)
	jr	$31
	sb	$7,2($5)

$L564:
$L591:
	.option	pic0
	b	$L568
	.option	pic2
	addu	$8,$4,$6

$L590:
	addiu	$12,$12,1
$L568:
	lb	$9,-1($12)
	addiu	$5,$5,1
	bne	$12,$8,$L590
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
	beq	$2,$0,$L595
	nor	$7,$0,$6

	sll	$10,$4,$6
	subu	$6,$0,$6
	andi	$12,$6,0x20
	move	$11,$0
	beq	$12,$0,$L597
	andi	$13,$6,0x3f

$L599:
	srl	$25,$5,$13
	move	$5,$0
	or	$3,$5,$10
	jr	$31
	or	$2,$25,$11

$L595:
	sll	$9,$5,$6
	srl	$3,$4,1
	sll	$11,$4,$6
	subu	$6,$0,$6
	srl	$8,$3,$7
	andi	$12,$6,0x20
	or	$10,$8,$9
	bne	$12,$0,$L599
	andi	$13,$6,0x3f

$L597:
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
	beq	$2,$0,$L601
	nor	$3,$0,$6

	srl	$10,$5,$6
	subu	$6,$0,$6
	andi	$12,$6,0x20
	move	$11,$0
	beq	$12,$0,$L603
	andi	$13,$6,0x3f

$L605:
	sll	$25,$4,$13
	move	$4,$0
	or	$3,$25,$11
	jr	$31
	or	$2,$4,$10

$L601:
	srl	$9,$4,$6
	sll	$7,$5,1
	srl	$11,$5,$6
	subu	$6,$0,$6
	sll	$8,$7,$3
	andi	$12,$6,0x20
	or	$10,$8,$9
	bne	$12,$0,$L605
	andi	$13,$6,0x3f

$L603:
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
	subu	$2,$0,$5
	jr	$31
	ror	$2,$4,$2

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
	subu	$2,$0,$5
	jr	$31
	ror	$2,$4,$2

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
	b	$L620
	.option	pic2
	li	$5,32			# 0x20

$L623:
	beq	$2,$5,$L622
	nop

$L620:
	srl	$3,$4,$2
	andi	$6,$3,0x1
	beq	$6,$0,$L623
	addiu	$2,$2,1

	jr	$31
	nop

$L622:
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
	beq	$4,$0,$L631
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,$L630
	nop

	li	$2,1			# 0x1
$L626:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,$L626
	addiu	$2,$2,1

$L631:
	jr	$31
	nop

$L630:
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
	c.lt.s	$f12,$f0
	nop
	bc1t	$L638
	li	$2,1			# 0x1

	lui	$3,%hi($LC1)
	lwc1	$f1,%lo($LC1)($3)
	c.lt.s	$f1,$f12
	nop
	bc1f	$L637
	nop

$L638:
	jr	$31
	nop

$L637:
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
	ldc1	$f0,%lo($LC2)($2)
	c.lt.d	$f12,$f0
	nop
	bc1t	$L645
	li	$2,1			# 0x1

	lui	$3,%hi($LC3)
	ldc1	$f2,%lo($LC3)($3)
	c.lt.d	$f2,$f12
	nop
	bc1f	$L644
	nop

$L645:
	jr	$31
	nop

$L644:
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
	ldc1	$f0,%lo($LC2)($2)
	c.lt.d	$f12,$f0
	nop
	bc1t	$L652
	li	$2,1			# 0x1

	lui	$3,%hi($LC3)
	ldc1	$f2,%lo($LC3)($3)
	c.lt.d	$f2,$f12
	nop
	bc1f	$L651
	nop

$L652:
	jr	$31
	nop

$L651:
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
	jr	$31
	sdc1	$f2,0($4)

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
	bc1t	$L672
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$f1,$f12
	nop
	bc1t	$L672
	nop

	bltz	$5,$L668
	lui	$2,%hi($LC4)

	lwc1	$f2,%lo($LC4)($2)
$L656:
	andi	$4,$5,0x1
	beq	$4,$0,$L671
	srl	$6,$5,31

$L658:
	mul.s	$f0,$f0,$f2
	srl	$6,$5,31
$L671:
	addu	$5,$6,$5
	sra	$5,$5,1
	beq	$5,$0,$L672
	srl	$7,$5,31

	andi	$8,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$8,$0,$L658
	addu	$2,$7,$5

	sra	$5,$2,1
$L670:
	srl	$7,$5,31
	andi	$8,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$8,$0,$L658
	addu	$2,$7,$5

	.option	pic0
	b	$L670
	.option	pic2
	sra	$5,$2,1

$L672:
	jr	$31
	nop

$L668:
	lui	$3,%hi($LC5)
	.option	pic0
	b	$L656
	.option	pic2
	lwc1	$f2,%lo($LC5)($3)

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
	bc1t	$L691
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f2,$f12
	nop
	bc1t	$L691
	nop

	bltz	$6,$L687
	lui	$2,%hi($LC6)

	ldc1	$f4,%lo($LC6)($2)
$L675:
	andi	$4,$6,0x1
	beq	$4,$0,$L690
	srl	$5,$6,31

$L677:
	mul.d	$f0,$f0,$f4
	srl	$5,$6,31
$L690:
	addu	$6,$5,$6
	sra	$6,$6,1
	beq	$6,$0,$L691
	srl	$7,$6,31

	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L677
	addu	$2,$7,$6

	sra	$6,$2,1
$L689:
	srl	$7,$6,31
	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L677
	addu	$2,$7,$6

	.option	pic0
	b	$L689
	.option	pic2
	sra	$6,$2,1

$L691:
	jr	$31
	nop

$L687:
	lui	$3,%hi($LC7)
	.option	pic0
	b	$L675
	.option	pic2
	ldc1	$f4,%lo($LC7)($3)

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
	bc1t	$L710
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$f12,$f2
	nop
	bc1t	$L710
	nop

	bltz	$6,$L706
	lui	$2,%hi($LC6)

	ldc1	$f4,%lo($LC6)($2)
$L694:
	andi	$4,$6,0x1
	beq	$4,$0,$L709
	srl	$5,$6,31

$L696:
	mul.d	$f0,$f0,$f4
	srl	$5,$6,31
$L709:
	addu	$6,$5,$6
	sra	$6,$6,1
	beq	$6,$0,$L710
	srl	$7,$6,31

	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L696
	addu	$2,$7,$6

	sra	$6,$2,1
$L708:
	srl	$7,$6,31
	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L696
	addu	$2,$7,$6

	.option	pic0
	b	$L708
	.option	pic2
	sra	$6,$2,1

$L710:
	jr	$31
	nop

$L706:
	lui	$3,%hi($LC7)
	.option	pic0
	b	$L694
	.option	pic2
	ldc1	$f4,%lo($LC7)($3)

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
	beq	$6,$0,$L723
	move	$2,$4

	addiu	$3,$6,-1
	sltu	$4,$3,4
	bne	$4,$0,$L713
	or	$7,$2,$5

	andi	$8,$7,0x3
	bne	$8,$0,$L713
	srl	$9,$6,2

	sll	$10,$9,2
	move	$14,$2
	addu	$11,$5,$10
$L714:
	lw	$12,0($14)
	lw	$13,0($5)
	addiu	$14,$14,4
	addiu	$5,$5,4
	xor	$15,$13,$12
	bne	$11,$5,$L714
	sw	$15,-4($14)

	addu	$24,$2,$10
	beq	$6,$10,$L723
	subu	$5,$6,$10

	lbu	$25,0($24)
	lbu	$3,0($11)
	li	$6,1			# 0x1
	xor	$4,$25,$3
	beq	$5,$6,$L723
	sb	$4,0($24)

	lbu	$7,1($24)
	lbu	$8,1($11)
	li	$9,2			# 0x2
	xor	$10,$8,$7
	beq	$5,$9,$L723
	sb	$10,1($24)

	lbu	$12,2($24)
	lbu	$11,2($11)
	xor	$13,$11,$12
	jr	$31
	sb	$13,2($24)

$L713:
	addu	$14,$5,$6
	move	$25,$2
$L716:
	lbu	$15,0($25)
	lbu	$24,0($5)
	addiu	$25,$25,1
	addiu	$5,$5,1
	xor	$3,$24,$15
	bne	$14,$5,$L716
	sb	$3,-1($25)

$L723:
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
	beq	$3,$0,$L731
	move	$2,$4

	move	$8,$4
$L726:
	lb	$7,1($8)
	bne	$7,$0,$L726
	addiu	$8,$8,1

	beq	$6,$0,$L728
	nop

	lb	$4,0($5)
$L742:
	addiu	$6,$6,-1
	addiu	$5,$5,1
	beq	$4,$0,$L743
	sb	$4,0($8)

	addiu	$8,$8,1
$L739:
	bnel	$6,$0,$L742
	lb	$4,0($5)

$L728:
	jr	$31
	sb	$0,0($8)

$L743:
	jr	$31
	nop

$L731:
	.option	pic0
	b	$L739
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
	beq	$5,$0,$L755
	move	$2,$0

	lbux	$3,$2($4)
$L753:
	bnel	$3,$0,$L747
	addiu	$2,$2,1

$L755:
	jr	$31
	nop

$L747:
	bnel	$5,$2,$L753
	lbux	$3,$2($4)

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
	beq	$7,$0,$L765
	move	$2,$4

$L757:
	.option	pic0
	b	$L760
	.option	pic2
	move	$3,$5

$L759:
	beq	$6,$7,$L766
	nop

$L760:
	lb	$6,0($3)
	bne	$6,$0,$L759
	addiu	$3,$3,1

	lb	$7,1($2)
	bne	$7,$0,$L757
	addiu	$2,$2,1

	move	$2,$0
$L766:
	jr	$31
	nop

$L765:
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
$L770:
	lb	$3,0($4)
	bne	$3,$5,$L769
	move	$2,$6

	move	$2,$4
$L769:
	move	$6,$2
	bne	$3,$0,$L770
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
	beq	$8,$0,$L783
	nop

	move	$2,$5
$L775:
	lb	$3,1($2)
	bne	$3,$0,$L775
	addiu	$2,$2,1

	beq	$2,$5,$L783
	subu	$10,$2,$5

	andi	$11,$8,0x00ff
	.option	pic0
	b	$L793
	.option	pic2
	addiu	$13,$10,-1

$L795:
	beq	$2,$0,$L798
	addiu	$4,$4,1

$L793:
	lb	$2,0($4)
	bne	$2,$8,$L795
	move	$6,$11

	addu	$9,$4,$13
	move	$14,$5
	.option	pic0
	b	$L777
	.option	pic2
	move	$12,$4

$L796:
	beql	$12,$9,$L797
	lbu	$15,0($14)

	bne	$7,$6,$L778
	addiu	$12,$12,1

	lbu	$6,0($12)
	beq	$6,$0,$L778
	addiu	$14,$14,1

$L777:
	lbu	$7,0($14)
	bne	$7,$0,$L796
	nop

$L778:
	lbu	$15,0($14)
$L797:
	beq	$15,$6,$L784
	nop

	.option	pic0
	b	$L793
	.option	pic2
	addiu	$4,$4,1

$L798:
	jr	$31
	nop

$L783:
	jr	$31
	move	$2,$4

$L784:
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
	bc1t	$L809
	mov.d	$f0,$f12

	c.lt.d	$f2,$f12
	nop
	bc1f	$L810
	nop

	c.lt.d	$f14,$f2
	nop
	bc1t	$L802
	nop

$L810:
	jr	$31
	nop

$L809:
	c.lt.d	$f2,$f14
	nop
	bc1f	$L810
	nop

$L802:
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
	beq	$7,$0,$L827
	move	$2,$4

	sltu	$3,$5,$7
	bne	$3,$0,$L820
	subu	$5,$5,$7

	addu	$9,$4,$5
	sltu	$4,$9,$4
	bne	$4,$0,$L820
	addiu	$7,$7,-1

	lb	$12,0($6)
	.option	pic0
	b	$L817
	.option	pic2
	addiu	$6,$6,1

$L821:
	move	$2,$3
$L813:
	sltu	$10,$9,$2
	bne	$10,$0,$L820
	nop

$L817:
	lb	$8,0($2)
	bne	$8,$12,$L821
	addiu	$3,$2,1

	beq	$7,$0,$L827
	move	$25,$6

$L816:
	move	$15,$3
	.option	pic0
	b	$L814
	.option	pic2
	addu	$5,$3,$7

$L815:
	beq	$15,$5,$L827
	nop

$L814:
	lbu	$13,0($15)
	lbu	$14,0($25)
	addiu	$15,$15,1
	beq	$13,$14,$L815
	addiu	$25,$25,1

	sltu	$2,$9,$3
	bnel	$2,$0,$L827
	move	$2,$0

	lb	$11,0($3)
	bne	$11,$12,$L813
	addiu	$2,$3,1

	move	$24,$3
	move	$25,$6
	move	$3,$2
	.option	pic0
	b	$L816
	.option	pic2
	move	$2,$24

$L827:
	jr	$31
	nop

$L820:
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
	beq	$6,$0,$L829
	move	$17,$4

	lw	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

$L829:
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
	mtc1	$0,$f0
	nop
	mtc1	$0,$f1
	nop
	c.lt.d	$f12,$f0
	nop
	bc1t	$L858
	lui	$8,%hi($LC10)

	ldc1	$f2,%lo($LC10)($8)
	c.le.d	$f2,$f12
	nop
	bc1f	$L859
	move	$7,$0

$L837:
	lui	$9,%hi($LC7)
	ldc1	$f16,%lo($LC7)($9)
	ldc1	$f18,%lo($LC10)($8)
	move	$5,$0
$L843:
	mul.d	$f12,$f12,$f16
	c.le.d	$f18,$f12
	nop
	bc1t	$L843
	addiu	$5,$5,1

	mov.d	$f0,$f12
	beq	$7,$0,$L863
	sw	$5,0($6)

$L861:
	jr	$31
	neg.d	$f0,$f12

$L859:
	lui	$2,%hi($LC7)
	ldc1	$f4,%lo($LC7)($2)
	c.lt.d	$f12,$f4
	nop
	bc1fl	$L862
	mov.d	$f0,$f12

	c.eq.d	$f12,$f0
	nop
	bc1f	$L838
	mov.d	$f6,$f12

	mov.d	$f0,$f12
$L862:
	jr	$31
	sw	$0,0($6)

$L858:
	lui	$3,%hi($LC8)
	ldc1	$f8,%lo($LC8)($3)
	c.le.d	$f12,$f8
	nop
	bc1f	$L860
	neg.d	$f6,$f12

	mov.d	$f12,$f6
	li	$7,1			# 0x1
	.option	pic0
	b	$L837
	.option	pic2
	lui	$8,%hi($LC10)

$L860:
	lui	$4,%hi($LC9)
	ldc1	$f10,%lo($LC9)($4)
	c.lt.d	$f10,$f12
	nop
	bc1f	$L862
	mov.d	$f0,$f12

	li	$7,1			# 0x1
	lui	$2,%hi($LC7)
$L838:
	ldc1	$f14,%lo($LC7)($2)
	mov.d	$f12,$f6
	move	$5,$0
$L845:
	add.d	$f12,$f12,$f12
	c.lt.d	$f12,$f14
	nop
	bc1t	$L845
	addiu	$5,$5,-1

	mov.d	$f0,$f12
	bne	$7,$0,$L861
	sw	$5,0($6)

$L863:
	jr	$31
	nop

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
	beq	$2,$0,$L868
	move	$9,$0

	move	$2,$0
$L867:
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
	srl	$24,$6,31
	addu	$9,$9,$13
	sll	$7,$7,1
	or	$25,$4,$5
	move	$2,$14
	addu	$9,$15,$9
	or	$7,$24,$7
	bne	$25,$0,$L867
	sll	$6,$6,1

	jr	$31
	move	$3,$9

$L868:
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
	sltu	$7,$5,$4
	li	$2,32			# 0x20
	bne	$7,$0,$L871
	li	$14,1			# 0x1

	.option	pic0
	b	$L897
	.option	pic2
	sltu	$3,$4,$5

$L875:
	sll	$5,$5,1
	sltu	$8,$5,$4
	beq	$8,$0,$L873
	sll	$14,$14,1

	beq	$2,$0,$L874
	nop

$L871:
	bgez	$5,$L875
	addiu	$2,$2,-1

	move	$2,$0
$L881:
	sltu	$10,$4,$5
	xori	$11,$10,0x1
	subu	$12,$0,$11
	and	$13,$14,$12
	subu	$9,$4,$5
	bne	$10,$0,$L878
	srl	$14,$14,1

	move	$4,$9
$L878:
	or	$2,$2,$13
	bne	$14,$0,$L881
	srl	$5,$5,1

$L874:
	bne	$6,$0,$L898
	nop

	jr	$31
	nop

$L873:
	bne	$14,$0,$L881
	move	$2,$0

	.option	pic0
	b	$L874
	nop

	.option	pic2
$L898:
	jr	$31
	move	$2,$4

$L897:
	xori	$2,$3,0x1
	bne	$3,$0,$L874
	subu	$5,$4,$5

	.option	pic0
	b	$L874
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
	beq	$4,$2,$L901
	xor	$3,$4,$2

	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$25,%call16(__clzsi2)($28)
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	sll	$4,$3,8

	lw	$31,28($sp)
	addiu	$2,$2,-1
	jr	$31
	addiu	$sp,$sp,32

$L901:
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
	beq	$2,$6,$L915
	xor	$5,$5,$6

	lui	$28,%hi(__gnu_local_gp)
$L916:
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$25,%call16(__clzdi2)($28)
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$31,28($sp)
	addiu	$2,$2,-1
	jr	$31
	addiu	$sp,$sp,32

$L915:
	bne	$3,$2,$L916
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
	beq	$4,$0,$L923
	move	$2,$0

$L919:
	andi	$3,$4,0x1
	subu	$6,$0,$3
	and	$7,$6,$5
	srl	$4,$4,1
	addu	$2,$2,$7
	bne	$4,$0,$L919
	sll	$5,$5,1

$L923:
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
	bne	$2,$0,$L928
	and	$12,$6,$10

	addu	$3,$5,$6
	sltu	$8,$3,$4
	beq	$8,$0,$L957
	addiu	$14,$6,-1

$L928:
	beq	$7,$0,$L958
	sll	$15,$7,3

	move	$2,$5
	move	$7,$4
	addu	$24,$15,$5
$L931:
	lw	$25,0($2)
	lw	$10,4($2)
	addiu	$2,$2,8
	addiu	$7,$7,8
	sw	$25,-8($7)
	bne	$2,$24,$L931
	sw	$10,-4($7)

	sltu	$3,$12,$6
	beq	$3,$0,$L962
	subu	$11,$6,$12

	addiu	$8,$11,-1
	sltu	$9,$8,7
	bne	$9,$0,$L959
	addiu	$13,$12,1

	addu	$3,$4,$12
	addu	$14,$5,$13
	subu	$15,$3,$14
	sltu	$24,$15,3
	bne	$24,$0,$L933
	addu	$2,$5,$12

	or	$25,$2,$3
	andi	$10,$25,0x3
	bne	$10,$0,$L933
	srl	$7,$11,2

	sll	$9,$7,2
	addu	$8,$2,$9
$L934:
	lw	$13,0($2)
	addiu	$2,$2,4
	addiu	$3,$3,4
	bne	$2,$8,$L934
	sw	$13,-4($3)

	beq	$11,$9,$L962
	addu	$12,$12,$9

	addu	$2,$5,$12
	lb	$11,0($2)
	addiu	$14,$12,1
	addu	$15,$4,$12
	sltu	$3,$14,$6
	beq	$3,$0,$L962
	sb	$11,0($15)

	addu	$24,$5,$14
	lb	$25,0($24)
	addiu	$10,$12,2
	addu	$7,$4,$14
	sltu	$6,$10,$6
	beq	$6,$0,$L962
	sb	$25,0($7)

	addu	$5,$5,$10
	lb	$9,0($5)
	addu	$4,$4,$10
	jr	$31
	sb	$9,0($4)

$L957:
	beq	$6,$0,$L962
	li	$9,-1			# 0xffffffffffffffff

$L929:
	addu	$6,$5,$14
	lb	$11,0($6)
	addu	$13,$4,$14
	addiu	$14,$14,-1
	bne	$14,$9,$L929
	sb	$11,0($13)

$L962:
	jr	$31
	nop

$L958:
	addu	$3,$4,$12
	beq	$6,$0,$L962
	addu	$2,$5,$12

$L933:
	addu	$8,$5,$6
$L936:
	lb	$13,0($2)
	addiu	$2,$2,1
	addiu	$3,$3,1
	bne	$2,$8,$L936
	sb	$13,-1($3)

	jr	$31
	nop

$L959:
	addu	$3,$4,$12
	.option	pic0
	b	$L933
	.option	pic2
	addu	$2,$5,$12

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
	bne	$2,$0,$L967
	srl	$9,$6,1

	addu	$3,$5,$6
	sltu	$7,$3,$4
	beq	$7,$0,$L990
	addiu	$12,$6,-1

$L967:
	beq	$9,$0,$L966
	addiu	$13,$9,-1

	sltu	$14,$13,9
	bne	$14,$0,$L970
	or	$15,$5,$4

	andi	$24,$15,0x3
	bne	$24,$0,$L970
	addiu	$25,$5,2

	beq	$4,$25,$L970
	srl	$10,$6,2

	sll	$11,$10,2
	move	$2,$5
	move	$3,$4
	addu	$8,$5,$11
$L971:
	lw	$7,0($2)
	addiu	$2,$2,4
	addiu	$3,$3,4
	bne	$2,$8,$L971
	sw	$7,-4($3)

	sll	$12,$10,1
	beq	$9,$12,$L966
	addu	$13,$4,$11

	lhx	$9,$11($5)
	sh	$9,0($13)
$L966:
	andi	$11,$6,0x1
	beq	$11,$0,$L993
	addu	$5,$5,$6

	lb	$8,-1($5)
$L994:
	addu	$4,$4,$6
	jr	$31
	sb	$8,-1($4)

$L990:
	beq	$6,$0,$L993
	li	$8,-1			# 0xffffffffffffffff

$L968:
	addu	$6,$5,$12
	lb	$10,0($6)
	addu	$11,$4,$12
	addiu	$12,$12,-1
	bne	$12,$8,$L968
	sb	$10,0($11)

$L993:
	jr	$31
	nop

$L970:
	sll	$14,$9,1
	move	$25,$5
	move	$10,$4
	addu	$15,$14,$5
$L973:
	lh	$24,0($25)
	addiu	$25,$25,2
	addiu	$10,$10,2
	bne	$15,$25,$L973
	sh	$24,-2($10)

	andi	$11,$6,0x1
	beq	$11,$0,$L993
	addu	$5,$5,$6

	.option	pic0
	b	$L994
	.option	pic2
	lb	$8,-1($5)

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
	bne	$2,$0,$L999
	and	$12,$6,$9

	addu	$3,$5,$6
	sltu	$7,$3,$4
	beq	$7,$0,$L1028
	addiu	$14,$6,-1

$L999:
	beq	$8,$0,$L1029
	sll	$15,$8,2

	move	$9,$5
	move	$2,$4
	addu	$24,$15,$5
$L1002:
	lw	$25,0($9)
	addiu	$9,$9,4
	addiu	$2,$2,4
	bne	$9,$24,$L1002
	sw	$25,-4($2)

	sltu	$8,$12,$6
	beq	$8,$0,$L1033
	subu	$11,$6,$12

	addiu	$3,$11,-1
	sltu	$7,$3,7
	bne	$7,$0,$L1030
	addiu	$10,$12,1

	addu	$3,$4,$12
	addu	$13,$5,$10
	subu	$14,$3,$13
	sltu	$15,$14,3
	bne	$15,$0,$L1004
	addu	$2,$5,$12

	or	$24,$2,$3
	andi	$25,$24,0x3
	bne	$25,$0,$L1004
	srl	$9,$11,2

	sll	$10,$9,2
	addu	$8,$2,$10
$L1005:
	lw	$7,0($2)
	addiu	$2,$2,4
	addiu	$3,$3,4
	bne	$2,$8,$L1005
	sw	$7,-4($3)

	beq	$11,$10,$L1033
	addu	$12,$12,$10

	addu	$2,$5,$12
	lb	$11,0($2)
	addiu	$13,$12,1
	addu	$14,$4,$12
	sltu	$3,$13,$6
	beq	$3,$0,$L1033
	sb	$11,0($14)

	addu	$15,$5,$13
	lb	$24,0($15)
	addiu	$25,$12,2
	addu	$9,$4,$13
	sltu	$6,$25,$6
	beq	$6,$0,$L1033
	sb	$24,0($9)

	addu	$5,$5,$25
	lb	$10,0($5)
	addu	$4,$4,$25
	jr	$31
	sb	$10,0($4)

$L1028:
	beq	$6,$0,$L1033
	li	$10,-1			# 0xffffffffffffffff

$L1000:
	addu	$6,$5,$14
	lb	$11,0($6)
	addu	$13,$4,$14
	addiu	$14,$14,-1
	bne	$14,$10,$L1000
	sb	$11,0($13)

$L1033:
	jr	$31
	nop

$L1029:
	addu	$3,$4,$12
	beq	$6,$0,$L1033
	addu	$2,$5,$12

$L1004:
	addu	$8,$5,$6
$L1007:
	lb	$7,0($2)
	addiu	$2,$2,1
	addiu	$3,$3,1
	bne	$2,$8,$L1007
	sb	$7,-1($3)

	jr	$31
	nop

$L1030:
	addu	$3,$4,$12
	.option	pic0
	b	$L1004
	.option	pic2
	addu	$2,$5,$12

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
	gsmod	$2,$4,$5
	teq	$5,$0,7
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
	bltz	$4,$L1038
	cvt.d.w	$f0,$f0

	jr	$31
	nop

$L1038:
	lui	$2,%hi($LC11)
	ldc1	$f2,%lo($LC11)($2)
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
	bgez	$4,$L1042
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC11)
	ldc1	$f2,%lo($LC11)($2)
	add.d	$f0,$f0,$f2
$L1042:
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
	lw	$25,%call16(__floatundidf)($28)
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	nop

	lw	$31,28($sp)
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
	lw	$25,%call16(__floatundisf)($28)
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__floatundisf
1:	jalr	$25
	nop

	lw	$31,28($sp)
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
	gsmodu	$2,$4,$5
	teq	$5,$0,7
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
	bne	$2,$0,$L1052
	nop

	sra	$2,$4,14
	bne	$2,$0,$L1067
	sra	$3,$4,13

	bne	$3,$0,$L1053
	sra	$5,$4,12

	bne	$5,$0,$L1054
	sra	$6,$4,11

	bne	$6,$0,$L1055
	sra	$7,$4,10

	bne	$7,$0,$L1056
	sra	$8,$4,9

	bne	$8,$0,$L1057
	nop

	sra	$2,$4,8
	bne	$2,$0,$L1058
	sra	$3,$4,7

	bne	$3,$0,$L1059
	sra	$5,$4,6

	bne	$5,$0,$L1060
	sra	$6,$4,5

	bne	$6,$0,$L1061
	sra	$7,$4,4

	bne	$7,$0,$L1062
	nop

	sra	$2,$4,3
	bne	$2,$0,$L1063
	sra	$3,$4,2

	bne	$3,$0,$L1064
	sra	$5,$4,1

	bne	$5,$0,$L1065
	sltu	$4,$4,1

	jr	$31
	addiu	$2,$4,15

$L1065:
	li	$2,14			# 0xe
$L1067:
	jr	$31
	nop

$L1052:
	jr	$31
	move	$2,$0

$L1063:
	jr	$31
	li	$2,12			# 0xc

$L1053:
	jr	$31
	li	$2,2			# 0x2

$L1054:
	jr	$31
	li	$2,3			# 0x3

$L1055:
	jr	$31
	li	$2,4			# 0x4

$L1056:
	jr	$31
	li	$2,5			# 0x5

$L1057:
	jr	$31
	li	$2,6			# 0x6

$L1058:
	jr	$31
	li	$2,7			# 0x7

$L1059:
	jr	$31
	li	$2,8			# 0x8

$L1060:
	jr	$31
	li	$2,9			# 0x9

$L1061:
	jr	$31
	li	$2,10			# 0xa

$L1062:
	jr	$31
	li	$2,11			# 0xb

$L1064:
	jr	$31
	li	$2,13			# 0xd

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
	bne	$2,$0,$L1071
	andi	$3,$4,0x2

	bne	$3,$0,$L1072
	andi	$5,$4,0x4

	bne	$5,$0,$L1073
	andi	$6,$4,0x8

	bne	$6,$0,$L1074
	andi	$7,$4,0x10

	bne	$7,$0,$L1075
	andi	$8,$4,0x20

	bne	$8,$0,$L1076
	andi	$9,$4,0x40

	bne	$9,$0,$L1077
	andi	$10,$4,0x80

	bne	$10,$0,$L1078
	andi	$11,$4,0x100

	bne	$11,$0,$L1079
	andi	$12,$4,0x200

	bne	$12,$0,$L1080
	andi	$13,$4,0x400

	bne	$13,$0,$L1081
	andi	$14,$4,0x800

	bne	$14,$0,$L1082
	andi	$15,$4,0x1000

	bne	$15,$0,$L1083
	andi	$24,$4,0x2000

	bne	$24,$0,$L1084
	andi	$25,$4,0x4000

	bne	$25,$0,$L1085
	sra	$4,$4,15

	sltu	$2,$4,1
	jr	$31
	addiu	$2,$2,15

$L1071:
	jr	$31
	move	$2,$0

$L1072:
	jr	$31
	li	$2,1			# 0x1

$L1083:
	jr	$31
	li	$2,12			# 0xc

$L1073:
	jr	$31
	li	$2,2			# 0x2

$L1074:
	jr	$31
	li	$2,3			# 0x3

$L1075:
	jr	$31
	li	$2,4			# 0x4

$L1076:
	jr	$31
	li	$2,5			# 0x5

$L1077:
	jr	$31
	li	$2,6			# 0x6

$L1078:
	jr	$31
	li	$2,7			# 0x7

$L1079:
	jr	$31
	li	$2,8			# 0x8

$L1080:
	jr	$31
	li	$2,9			# 0x9

$L1081:
	jr	$31
	li	$2,10			# 0xa

$L1082:
	jr	$31
	li	$2,11			# 0xb

$L1084:
	jr	$31
	li	$2,13			# 0xd

$L1085:
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
	c.le.s	$f0,$f12
	nop
	bc1tl	$L1094
	sub.s	$f12,$f12,$f0

	trunc.w.s $f1,$f12
	mfc1	$2,$f1
	jr	$31
	nop

$L1094:
	li	$3,32768			# 0x8000
	trunc.w.s $f2,$f12
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
	beq	$4,$0,$L1103
	move	$2,$0

$L1099:
	andi	$3,$4,0x1
	subu	$6,$0,$3
	and	$7,$6,$5
	srl	$4,$4,1
	addu	$2,$2,$7
	bne	$4,$0,$L1099
	sll	$5,$5,1

$L1103:
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
	beq	$4,$0,$L1111
	move	$2,$0

	beq	$5,$0,$L1110
	nop

$L1106:
	andi	$3,$5,0x1
	subu	$6,$0,$3
	and	$7,$6,$4
	srl	$5,$5,1
	addu	$2,$2,$7
	bne	$5,$0,$L1106
	sll	$4,$4,1

$L1111:
	jr	$31
	nop

$L1110:
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
	sltu	$7,$5,$4
	li	$2,32			# 0x20
	bne	$7,$0,$L1113
	li	$14,1			# 0x1

	.option	pic0
	b	$L1139
	.option	pic2
	sltu	$3,$4,$5

$L1117:
	sll	$5,$5,1
	sltu	$8,$5,$4
	beq	$8,$0,$L1115
	sll	$14,$14,1

	beq	$2,$0,$L1116
	nop

$L1113:
	bgez	$5,$L1117
	addiu	$2,$2,-1

	move	$2,$0
$L1123:
	sltu	$10,$4,$5
	xori	$11,$10,0x1
	subu	$12,$0,$11
	and	$13,$14,$12
	subu	$9,$4,$5
	bne	$10,$0,$L1120
	srl	$14,$14,1

	move	$4,$9
$L1120:
	or	$2,$2,$13
	bne	$14,$0,$L1123
	srl	$5,$5,1

$L1116:
	bne	$6,$0,$L1140
	nop

	jr	$31
	nop

$L1115:
	bne	$14,$0,$L1123
	move	$2,$0

	.option	pic0
	b	$L1116
	nop

	.option	pic2
$L1140:
	jr	$31
	move	$2,$4

$L1139:
	xori	$2,$3,0x1
	bne	$3,$0,$L1116
	subu	$5,$4,$5

	.option	pic0
	b	$L1116
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
	bc1t	$L1144
	nop

	c.lt.s	$f14,$f12
	nop
	bc1f	$L1145
	li	$2,1			# 0x1

	jr	$31
	nop

$L1145:
	jr	$31
	move	$2,$0

$L1144:
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
	bc1t	$L1151
	nop

	c.lt.d	$f14,$f12
	nop
	bc1f	$L1152
	li	$2,1			# 0x1

	jr	$31
	nop

$L1152:
	jr	$31
	move	$2,$0

$L1151:
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
	bltzl	$5,$L1171
	subu	$5,$0,$5

	beq	$5,$0,$L1163
	move	$7,$0

$L1159:
	li	$10,32			# 0x20
	.option	pic0
	b	$L1162
	.option	pic2
	move	$2,$0

$L1172:
	beq	$10,$0,$L1161
	nop

$L1162:
	andi	$3,$5,0x1
	subu	$8,$0,$3
	and	$9,$8,$4
	addiu	$6,$10,-1
	sra	$5,$5,1
	andi	$10,$6,0x00ff
	addu	$2,$2,$9
	bne	$5,$0,$L1172
	sll	$4,$4,1

$L1161:
	beq	$7,$0,$L1173
	nop

	jr	$31
	subu	$2,$0,$2

$L1163:
	move	$2,$0
$L1173:
	jr	$31
	nop

$L1171:
	.option	pic0
	b	$L1159
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
	bltzl	$4,$L1205
	subu	$4,$0,$4

	li	$2,1			# 0x1
	move	$9,$0
$L1175:
	bgez	$5,$L1206
	sltu	$8,$5,$4

	subu	$5,$0,$5
	move	$9,$2
	sltu	$8,$5,$4
$L1206:
	move	$7,$4
	move	$3,$5
	li	$10,32			# 0x20
	bne	$8,$0,$L1177
	li	$6,1			# 0x1

	.option	pic0
	b	$L1203
	.option	pic2
	sltu	$4,$4,$5

$L1181:
	beq	$10,$0,$L1182
	nop

$L1177:
	sll	$3,$3,1
	sltu	$5,$3,$4
	addiu	$10,$10,-1
	bne	$5,$0,$L1181
	sll	$6,$6,1

$L1182:
	beq	$6,$0,$L1180
	move	$2,$0

$L1179:
	sltu	$11,$7,$3
	xori	$13,$11,0x1
	subu	$14,$0,$13
	and	$15,$6,$14
	subu	$12,$7,$3
	bne	$11,$0,$L1184
	srl	$6,$6,1

	move	$7,$12
$L1184:
	or	$2,$2,$15
	bne	$6,$0,$L1179
	srl	$3,$3,1

$L1180:
	beq	$9,$0,$L1207
	nop

	jr	$31
	subu	$2,$0,$2

$L1207:
	jr	$31
	nop

$L1205:
	move	$2,$0
	.option	pic0
	b	$L1175
	.option	pic2
	li	$9,1			# 0x1

$L1203:
	.option	pic0
	b	$L1180
	.option	pic2
	xori	$2,$4,0x1

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
	bgez	$4,$L1209
	move	$8,$0

	subu	$4,$0,$4
	li	$8,1			# 0x1
$L1209:
	sra	$3,$5,31
	xor	$5,$3,$5
	subu	$14,$5,$3
	sltu	$7,$14,$4
	move	$2,$4
	li	$11,32			# 0x20
	bne	$7,$0,$L1210
	li	$12,1			# 0x1

	.option	pic0
	b	$L1236
	.option	pic2
	sltu	$6,$4,$14

$L1214:
	beq	$11,$0,$L1215
	nop

$L1210:
	sll	$14,$14,1
	sltu	$10,$14,$4
	addiu	$11,$11,-1
	bne	$10,$0,$L1214
	sll	$12,$12,1

$L1215:
	beql	$12,$0,$L1213
	move	$2,$4

$L1212:
	sltu	$4,$2,$14
	srl	$12,$12,1
	bne	$4,$0,$L1217
	subu	$13,$2,$14

	move	$2,$13
$L1217:
	bne	$12,$0,$L1212
	srl	$14,$14,1

$L1213:
	beq	$8,$0,$L1239
	nop

	jr	$31
	subu	$2,$0,$2

$L1239:
	jr	$31
	nop

$L1236:
	bne	$6,$0,$L1213
	subu	$9,$4,$14

	.option	pic0
	b	$L1213
	.option	pic2
	move	$2,$9

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
	beq	$2,$0,$L1424
	sll	$9,$5,16

	sra	$10,$9,16
	bltz	$10,$L1245
	sll	$12,$5,1

	andi	$3,$12,0xffff
	sltu	$13,$3,$4
	beq	$13,$0,$L1318
	sll	$14,$3,16

	sra	$15,$14,16
	bltz	$15,$L1318
	sll	$24,$5,2

	andi	$3,$24,0xffff
	sltu	$25,$3,$4
	beq	$25,$0,$L1320
	sll	$8,$3,16

	sra	$7,$8,16
	bltzl	$7,$L1247
	li	$25,4			# 0x4

	sll	$3,$5,3
	andi	$3,$3,0xffff
	sltu	$2,$3,$4
	beql	$2,$0,$L1247
	li	$25,8			# 0x8

	sll	$9,$3,16
	sra	$10,$9,16
	bltz	$10,$L1322
	sll	$11,$5,4

	andi	$3,$11,0xffff
	sltu	$12,$3,$4
	beq	$12,$0,$L1324
	sll	$13,$3,16

	sra	$14,$13,16
	bltz	$14,$L1324
	sll	$15,$5,5

	andi	$3,$15,0xffff
	sltu	$24,$3,$4
	beq	$24,$0,$L1247
	li	$25,32			# 0x20

	sll	$25,$3,16
	sra	$8,$25,16
	bltz	$8,$L1326
	sll	$7,$5,6

	andi	$3,$7,0xffff
	sltu	$2,$3,$4
	beql	$2,$0,$L1247
	li	$25,64			# 0x40

	sll	$9,$3,16
	sra	$10,$9,16
	bltzl	$10,$L1247
	li	$25,64			# 0x40

	sll	$3,$5,7
	andi	$3,$3,0xffff
	sltu	$11,$3,$4
	beql	$11,$0,$L1247
	li	$25,128			# 0x80

	sll	$12,$3,16
	sra	$13,$12,16
	bltzl	$13,$L1247
	li	$25,128			# 0x80

	sll	$14,$5,8
	andi	$3,$14,0xffff
	sltu	$15,$3,$4
	beq	$15,$0,$L1332
	sll	$24,$3,16

	sra	$25,$24,16
	bltz	$25,$L1332
	sll	$8,$5,9

	andi	$3,$8,0xffff
	sltu	$7,$3,$4
	beq	$7,$0,$L1334
	sll	$2,$3,16

	sra	$9,$2,16
	bltz	$9,$L1334
	sll	$10,$5,10

	andi	$3,$10,0xffff
	sltu	$11,$3,$4
	beq	$11,$0,$L1336
	sll	$12,$3,16

	sra	$13,$12,16
	bltzl	$13,$L1247
	li	$25,1024			# 0x400

	sll	$3,$5,11
	andi	$3,$3,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,$L1338
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,$L1247
	li	$25,2048			# 0x800

	sll	$25,$5,12
	andi	$3,$25,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,$L1340
	sll	$7,$3,16

	sra	$2,$7,16
	bltzl	$2,$L1247
	li	$25,4096			# 0x1000

	sll	$9,$5,13
	andi	$3,$9,0xffff
	sltu	$10,$3,$4
	beq	$10,$0,$L1342
	sll	$11,$3,16

	sra	$12,$11,16
	bltz	$12,$L1342
	sll	$13,$5,14

	andi	$3,$13,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,$L1344
	sll	$15,$3,16

	sra	$24,$15,16
	bltz	$24,$L1344
	sll	$5,$5,15

	andi	$11,$5,0xffff
	sltu	$8,$11,$4
	beq	$8,$0,$L1345
	move	$2,$4

	li	$25,32768			# 0x8000
	bne	$11,$0,$L1247
	li	$3,32768			# 0x8000

$L1248:
	bne	$6,$0,$L1439
	nop

	jr	$31
	move	$2,$11

$L1439:
	jr	$31
	nop

$L1318:
	li	$25,2			# 0x2
$L1247:
	subu	$2,$4,$3
	sltu	$7,$4,$3
	bne	$7,$0,$L1314
	andi	$9,$2,0xffff

	move	$4,$9
$L1314:
	andi	$4,$4,0xffff
	bne	$7,$0,$L1316
	move	$10,$0

	andi	$10,$25,0xffff
$L1316:
	srl	$12,$3,1
	subu	$13,$4,$12
	sltu	$14,$4,$12
	srl	$11,$25,1
	bne	$14,$0,$L1250
	andi	$15,$13,0xffff

	move	$4,$15
$L1250:
	andi	$2,$4,0xffff
	bne	$14,$0,$L1252
	move	$9,$0

	move	$9,$11
$L1252:
	or	$24,$10,$9
	srl	$5,$25,2
	andi	$11,$24,0xffff
	beq	$5,$0,$L1248
	srl	$8,$3,2

	subu	$7,$2,$8
	sltu	$4,$2,$8
	andi	$12,$7,0xffff
	bne	$4,$0,$L1254
	xori	$10,$4,0x1

	move	$2,$12
$L1254:
	andi	$2,$2,0xffff
	beq	$10,$0,$L1256
	move	$9,$0

	move	$9,$5
$L1256:
	or	$11,$11,$9
	srl	$13,$25,3
	andi	$11,$11,0xffff
	beq	$13,$0,$L1248
	srl	$14,$3,3

	subu	$15,$2,$14
	sltu	$24,$2,$14
	andi	$5,$15,0xffff
	bne	$24,$0,$L1258
	xori	$8,$24,0x1

	move	$2,$5
$L1258:
	andi	$2,$2,0xffff
	beq	$8,$0,$L1260
	move	$9,$0

	move	$9,$13
$L1260:
	or	$7,$11,$9
	srl	$12,$25,4
	andi	$11,$7,0xffff
	beq	$12,$0,$L1248
	srl	$4,$3,4

	subu	$10,$2,$4
	sltu	$13,$2,$4
	andi	$14,$10,0xffff
	bne	$13,$0,$L1262
	xori	$15,$13,0x1

	move	$2,$14
$L1262:
	andi	$2,$2,0xffff
	beq	$15,$0,$L1264
	move	$9,$0

	move	$9,$12
$L1264:
	or	$11,$11,$9
	srl	$24,$25,5
	andi	$11,$11,0xffff
	beq	$24,$0,$L1248
	srl	$5,$3,5

	subu	$8,$2,$5
	sltu	$12,$2,$5
	andi	$7,$8,0xffff
	bne	$12,$0,$L1266
	xori	$10,$12,0x1

	move	$2,$7
$L1266:
	andi	$2,$2,0xffff
	beq	$10,$0,$L1268
	move	$9,$0

	move	$9,$24
$L1268:
	or	$4,$11,$9
	srl	$13,$25,6
	andi	$11,$4,0xffff
	beq	$13,$0,$L1248
	srl	$14,$3,6

	subu	$15,$2,$14
	sltu	$24,$2,$14
	andi	$5,$15,0xffff
	bne	$24,$0,$L1270
	xori	$8,$24,0x1

	move	$2,$5
$L1270:
	andi	$2,$2,0xffff
	beq	$8,$0,$L1272
	move	$9,$0

	move	$9,$13
$L1272:
	or	$11,$11,$9
	srl	$12,$25,7
	andi	$11,$11,0xffff
	beq	$12,$0,$L1248
	srl	$10,$3,7

	subu	$7,$2,$10
	sltu	$4,$2,$10
	andi	$13,$7,0xffff
	beq	$4,$0,$L1425
	xori	$14,$4,0x1

	andi	$2,$2,0xffff
	bne	$14,$0,$L1426
	move	$9,$0

$L1276:
	or	$15,$11,$9
	srl	$24,$25,8
	andi	$11,$15,0xffff
	beq	$24,$0,$L1248
	srl	$5,$3,8

	subu	$8,$2,$5
	sltu	$12,$2,$5
	andi	$7,$8,0xffff
	beq	$12,$0,$L1427
	xori	$10,$12,0x1

	andi	$2,$2,0xffff
	bne	$10,$0,$L1428
	move	$9,$0

$L1280:
	or	$11,$11,$9
	srl	$13,$25,9
	andi	$11,$11,0xffff
	beq	$13,$0,$L1248
	srl	$4,$3,9

	subu	$14,$2,$4
	sltu	$15,$2,$4
	andi	$24,$14,0xffff
	beq	$15,$0,$L1429
	xori	$5,$15,0x1

	andi	$2,$2,0xffff
	bne	$5,$0,$L1430
	move	$9,$0

$L1284:
	or	$8,$11,$9
	srl	$12,$25,10
	andi	$11,$8,0xffff
	beq	$12,$0,$L1248
	srl	$10,$3,10

	subu	$7,$2,$10
	sltu	$13,$2,$10
	andi	$4,$7,0xffff
	beq	$13,$0,$L1431
	xori	$14,$13,0x1

	andi	$2,$2,0xffff
	bne	$14,$0,$L1432
	move	$9,$0

$L1288:
	or	$11,$11,$9
	srl	$15,$25,11
	andi	$11,$11,0xffff
	beq	$15,$0,$L1248
	srl	$24,$3,11

	subu	$5,$2,$24
	sltu	$8,$2,$24
	andi	$12,$5,0xffff
	beq	$8,$0,$L1433
	xori	$10,$8,0x1

	andi	$2,$2,0xffff
	bne	$10,$0,$L1434
	move	$9,$0

$L1292:
	or	$7,$11,$9
	srl	$13,$25,12
	andi	$11,$7,0xffff
	beq	$13,$0,$L1248
	srl	$4,$3,12

	subu	$14,$2,$4
	sltu	$15,$2,$4
	andi	$24,$14,0xffff
	beq	$15,$0,$L1435
	xori	$5,$15,0x1

	andi	$2,$2,0xffff
	bne	$5,$0,$L1436
	move	$9,$0

$L1296:
	or	$11,$11,$9
	srl	$8,$25,13
	andi	$11,$11,0xffff
	beq	$8,$0,$L1248
	srl	$12,$3,13

$L1437:
	subu	$10,$2,$12
	sltu	$13,$2,$12
	andi	$7,$10,0xffff
	bne	$13,$0,$L1298
	xori	$14,$13,0x1

	move	$2,$7
$L1298:
	andi	$2,$2,0xffff
	beq	$14,$0,$L1300
	move	$9,$0

	move	$9,$8
$L1300:
	or	$4,$11,$9
	srl	$15,$25,14
	andi	$11,$4,0xffff
	beq	$15,$0,$L1248
	srl	$24,$3,14

	subu	$5,$2,$24
	sltu	$8,$2,$24
	andi	$12,$5,0xffff
	bne	$8,$0,$L1302
	xori	$10,$8,0x1

	move	$2,$12
$L1302:
	andi	$2,$2,0xffff
	beq	$10,$0,$L1304
	move	$9,$0

	move	$9,$15
$L1304:
	or	$11,$11,$9
	li	$13,16384			# 0x4000
	andi	$11,$11,0xffff
	beq	$25,$13,$L1248
	srl	$3,$3,15

	subu	$25,$2,$3
	sltu	$14,$2,$3
	andi	$4,$25,0xffff
	bne	$14,$0,$L1306
	xori	$7,$14,0x1

	move	$2,$4
$L1306:
	andi	$2,$2,0xffff
	.option	pic0
	b	$L1248
	.option	pic2
	or	$11,$7,$11

$L1426:
	.option	pic0
	b	$L1276
	.option	pic2
	move	$9,$12

$L1425:
	move	$2,$13
	andi	$2,$2,0xffff
	beq	$14,$0,$L1276
	move	$9,$0

	.option	pic0
	b	$L1276
	.option	pic2
	move	$9,$12

$L1428:
	.option	pic0
	b	$L1280
	.option	pic2
	move	$9,$24

$L1427:
	move	$2,$7
	andi	$2,$2,0xffff
	beq	$10,$0,$L1280
	move	$9,$0

	.option	pic0
	b	$L1280
	.option	pic2
	move	$9,$24

$L1430:
	.option	pic0
	b	$L1284
	.option	pic2
	move	$9,$13

$L1429:
	move	$2,$24
	andi	$2,$2,0xffff
	beq	$5,$0,$L1284
	move	$9,$0

	.option	pic0
	b	$L1284
	.option	pic2
	move	$9,$13

$L1432:
	.option	pic0
	b	$L1288
	.option	pic2
	move	$9,$12

$L1431:
	move	$2,$4
	andi	$2,$2,0xffff
	beq	$14,$0,$L1288
	move	$9,$0

	.option	pic0
	b	$L1288
	.option	pic2
	move	$9,$12

$L1434:
	.option	pic0
	b	$L1292
	.option	pic2
	move	$9,$15

$L1433:
	move	$2,$12
	andi	$2,$2,0xffff
	beq	$10,$0,$L1292
	move	$9,$0

	.option	pic0
	b	$L1292
	.option	pic2
	move	$9,$15

$L1436:
	move	$9,$13
$L1438:
	or	$11,$11,$9
	srl	$8,$25,13
	andi	$11,$11,0xffff
	bne	$8,$0,$L1437
	srl	$12,$3,13

	.option	pic0
	b	$L1248
	nop

	.option	pic2
$L1435:
	move	$2,$24
	andi	$2,$2,0xffff
	beq	$5,$0,$L1296
	move	$9,$0

	.option	pic0
	b	$L1438
	.option	pic2
	move	$9,$13

$L1320:
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,4			# 0x4

$L1322:
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,8			# 0x8

$L1324:
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,16			# 0x10

$L1334:
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,512			# 0x200

$L1326:
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,32			# 0x20

	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,128			# 0x80

$L1332:
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,256			# 0x100

$L1424:
	subu	$3,$4,$5
	andi	$8,$3,0xffff
	xor	$7,$5,$4
	bne	$5,$4,$L1243
	move	$2,$4

	move	$2,$8
$L1243:
	andi	$2,$2,0xffff
	.option	pic0
	b	$L1248
	.option	pic2
	sltu	$11,$7,1

$L1336:
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,1024			# 0x400

$L1338:
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,2048			# 0x800

$L1340:
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,4096			# 0x1000

$L1342:
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,8192			# 0x2000

$L1344:
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,16384			# 0x4000

$L1345:
	li	$3,32768			# 0x8000
	.option	pic0
	b	$L1247
	.option	pic2
	li	$25,32768			# 0x8000

$L1245:
	subu	$5,$4,$5
	andi	$2,$5,0xffff
	.option	pic0
	b	$L1248
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
	sltu	$7,$5,$4
	li	$2,32			# 0x20
	bne	$7,$0,$L1441
	li	$14,1			# 0x1

	.option	pic0
	b	$L1467
	.option	pic2
	sltu	$3,$4,$5

$L1445:
	sll	$5,$5,1
	sltu	$8,$5,$4
	beq	$8,$0,$L1443
	sll	$14,$14,1

	beq	$2,$0,$L1444
	nop

$L1441:
	bgez	$5,$L1445
	addiu	$2,$2,-1

	move	$2,$0
$L1451:
	sltu	$10,$4,$5
	xori	$11,$10,0x1
	subu	$12,$0,$11
	and	$13,$14,$12
	subu	$9,$4,$5
	bne	$10,$0,$L1448
	srl	$14,$14,1

	move	$4,$9
$L1448:
	or	$2,$2,$13
	bne	$14,$0,$L1451
	srl	$5,$5,1

$L1444:
	bne	$6,$0,$L1468
	nop

	jr	$31
	nop

$L1443:
	bne	$14,$0,$L1451
	move	$2,$0

	.option	pic0
	b	$L1444
	nop

	.option	pic2
$L1468:
	jr	$31
	move	$2,$4

$L1467:
	xori	$2,$3,0x1
	bne	$3,$0,$L1444
	subu	$5,$4,$5

	.option	pic0
	b	$L1444
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
	beq	$2,$0,$L1470
	nop

	addiu	$6,$6,-32
	sll	$5,$4,$6
	move	$4,$0
	move	$2,$4
$L1474:
	jr	$31
	move	$3,$5

$L1470:
	beql	$6,$0,$L1474
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
	beq	$2,$0,$L1476
	sra	$3,$5,31

	addiu	$6,$6,-32
	jr	$31
	sra	$2,$5,$6

$L1476:
	beql	$6,$0,$L1479
	move	$2,$4

	li	$3,32			# 0x20
	subu	$7,$3,$6
	sll	$8,$5,$7
	srl	$4,$4,$6
	sra	$3,$5,$6
	jr	$31
	or	$2,$8,$4

$L1479:
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
	li	$6,65536			# 0x10000
	sltu	$2,$4,$6
	sll	$9,$2,4
	li	$3,16			# 0x10
	subu	$5,$3,$9
	srl	$4,$4,$5
	andi	$7,$4,0xff00
	sltu	$8,$7,1
	sll	$10,$8,3
	li	$11,8			# 0x8
	subu	$12,$11,$10
	srl	$13,$4,$12
	andi	$14,$13,0xf0
	sltu	$15,$14,1
	sll	$24,$15,2
	li	$25,4			# 0x4
	subu	$6,$25,$24
	srl	$2,$13,$6
	andi	$3,$2,0xc
	sltu	$5,$3,1
	sll	$11,$5,1
	li	$8,2			# 0x2
	subu	$4,$8,$11
	srl	$12,$2,$4
	srl	$7,$12,1
	addu	$9,$10,$9
	andi	$10,$7,0x1
	addu	$13,$24,$9
	bne	$10,$0,$L1484
	move	$14,$0

	subu	$14,$8,$12
$L1484:
	addu	$15,$11,$13
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
	bne	$2,$0,$L1488
	slt	$5,$7,$5

	bne	$5,$0,$L1489
	sltu	$3,$4,$6

	bne	$3,$0,$L1490
	sltu	$4,$6,$4

	jr	$31
	addiu	$2,$4,1

$L1488:
	jr	$31
	move	$2,$0

$L1490:
	jr	$31
	move	$2,$0

$L1489:
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
	bne	$2,$0,$L1494
	slt	$5,$7,$5

	bne	$5,$0,$L1495
	sltu	$3,$4,$6

	bne	$3,$0,$L1496
	nop

	jr	$31
	sltu	$2,$6,$4

$L1494:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1496:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1495:
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
	beq	$2,$0,$L1499
	nop

	addiu	$6,$6,-32
	srl	$2,$5,$6
	move	$5,$0
	jr	$31
	move	$3,$5

$L1499:
	beql	$6,$0,$L1502
	move	$2,$4

	li	$3,32			# 0x20
	subu	$7,$3,$6
	sll	$8,$5,$7
	srl	$4,$4,$6
	srl	$5,$5,$6
	or	$2,$8,$4
	jr	$31
	move	$3,$5

$L1502:
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
	xor	$4,$5,$4
	srl	$5,$4,16
	xor	$3,$5,$4
	srl	$2,$3,8
	xor	$6,$2,$3
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
	xor	$4,$2,$4
	srl	$3,$4,8
	xor	$5,$3,$4
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
	andi	$2,$6,0x1
	beq	$2,$0,$L1516
	ldc1	$f0,%lo($LC10)($5)

	move	$2,$6
$L1513:
	mul.d	$f0,$f0,$f12
$L1511:
	srl	$3,$2,31
	addu	$4,$3,$2
	sra	$2,$4,1
	beq	$2,$0,$L1512
	srl	$7,$2,31

	andi	$8,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$8,$0,$L1513
	addu	$3,$7,$2

	sra	$2,$3,1
$L1520:
	srl	$7,$2,31
	andi	$8,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$8,$0,$L1513
	addu	$3,$7,$2

	.option	pic0
	b	$L1520
	.option	pic2
	sra	$2,$3,1

$L1512:
	bltz	$6,$L1519
	ldc1	$f2,%lo($LC10)($5)

	jr	$31
	nop

$L1516:
	.option	pic0
	b	$L1511
	.option	pic2
	move	$2,$6

$L1519:
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
	beq	$2,$0,$L1527
	lwc1	$f0,%lo($LC13)($6)

	move	$2,$5
$L1524:
	mul.s	$f0,$f0,$f12
$L1522:
	srl	$3,$2,31
	addu	$4,$3,$2
	sra	$2,$4,1
	beq	$2,$0,$L1523
	srl	$7,$2,31

	andi	$8,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$8,$0,$L1524
	addu	$3,$7,$2

	sra	$2,$3,1
$L1531:
	srl	$7,$2,31
	andi	$8,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$8,$0,$L1524
	addu	$3,$7,$2

	.option	pic0
	b	$L1531
	.option	pic2
	sra	$2,$3,1

$L1523:
	bltz	$5,$L1530
	lwc1	$f1,%lo($LC13)($6)

	jr	$31
	nop

$L1527:
	.option	pic0
	b	$L1522
	.option	pic2
	move	$2,$5

$L1530:
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
	bne	$2,$0,$L1534
	sltu	$5,$7,$5

	bne	$5,$0,$L1535
	sltu	$3,$4,$6

	bne	$3,$0,$L1536
	sltu	$4,$6,$4

	jr	$31
	addiu	$2,$4,1

$L1534:
	jr	$31
	move	$2,$0

$L1536:
	jr	$31
	move	$2,$0

$L1535:
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
	bne	$2,$0,$L1540
	sltu	$5,$7,$5

	bne	$5,$0,$L1541
	sltu	$3,$4,$6

	bne	$3,$0,$L1542
	nop

	jr	$31
	sltu	$2,$6,$4

$L1540:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1542:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1541:
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
