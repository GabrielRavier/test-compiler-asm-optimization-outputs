	.file	1 "mini-libc.c"
	.section .mdebug.abi32
	.previous
	.nan	2008
	.module	fp=32
	.module	oddspreg
	.module	arch=mips4
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
$L57:
	beq	$6,$0,$L59
	addiu	$6,$6,-1

	lbu	$2,0($4)
	addiu	$4,$4,1
	lbu	$3,0($5)
	beq	$2,$3,$L57
	addiu	$5,$5,1

	jr	$31
	subu	$2,$2,$3

$L59:
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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,24($sp)
	move	$16,$4
	sw	$31,28($sp)
	beq	$6,$0,$L67
	.cprestore	16

	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

$L67:
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
	andi	$5,$5,0x00ff
	addu	$7,$4,$6
	.option	pic0
	b	$L73
	.option	pic2
	addiu	$4,$4,-1

$L75:
	lbu	$3,0($2)
	beq	$3,$5,$L76
	addiu	$7,$7,-1

$L73:
	bne	$7,$4,$L75
	move	$2,$7

	move	$2,$0
$L76:
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
	move	$16,$4
	sw	$31,28($sp)
	beq	$6,$0,$L80
	.cprestore	16

	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	andi	$5,$5,0x00ff

$L80:
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
	beq	$3,$0,$L89
	sb	$3,0($4)

$L84:
	lb	$4,1($5)
	addiu	$2,$2,1
	addiu	$5,$5,1
	bne	$4,$0,$L84
	sb	$4,0($2)

$L89:
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
	bne	$4,$0,$L91
	andi	$5,$5,0x00ff

$L99:
	jr	$31
	nop

$L93:
	beq	$4,$0,$L99
	addiu	$2,$2,1

$L91:
	andi	$3,$4,0x00ff
	bnel	$3,$5,$L93
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
	b	$L102
	.option	pic2
	move	$2,$4

$L105:
	beq	$3,$0,$L104
	addiu	$2,$2,1

$L102:
	lb	$3,0($2)
	bne	$3,$5,$L105
	nop

	jr	$31
	nop

$L104:
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
$L109:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,$L116
	addiu	$4,$4,1

	bne	$3,$0,$L109
	addiu	$5,$5,1

$L108:
	andi	$4,$2,0x00ff
	jr	$31
	subu	$2,$3,$4

$L116:
	.option	pic0
	b	$L108
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
	beq	$2,$0,$L120
	move	$5,$4

$L119:
	lb	$3,1($5)
	bne	$3,$0,$L119
	addiu	$5,$5,1

	jr	$31
	subu	$2,$5,$4

$L120:
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
	beq	$6,$0,$L130
	nop

	lbu	$2,0($4)
	beq	$2,$0,$L132
	addiu	$6,$6,-1

	.option	pic0
	b	$L126
	.option	pic2
	addu	$8,$4,$6

$L134:
	beq	$4,$8,$L125
	nop

	bne	$3,$2,$L125
	addiu	$4,$4,1

	lbu	$2,0($4)
	beql	$2,$0,$L133
	lbu	$3,1($5)

	move	$5,$7
$L126:
	lbu	$3,0($5)
	bne	$3,$0,$L134
	addiu	$7,$5,1

$L125:
	jr	$31
	subu	$2,$2,$3

$L130:
	jr	$31
	move	$2,$0

$L133:
	jr	$31
	subu	$2,$2,$3

$L132:
	.option	pic0
	b	$L125
	.option	pic2
	lbu	$3,0($5)

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
	bne	$2,$0,$L139
	srl	$3,$6,1

	sll	$6,$3,1
	addu	$7,$4,$6
$L137:
	lbu	$8,1($4)
	addiu	$4,$4,2
	addiu	$5,$5,2
	lbu	$9,-2($4)
	sb	$8,-2($5)
	bne	$4,$7,$L137
	sb	$9,-1($5)

$L139:
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
	beq	$4,$2,$L144
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

$L144:
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
	bne	$2,$0,$L147
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

$L147:
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
	beq	$4,$2,$L154
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

$L154:
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
	bne	$2,$0,$L159
	addiu	$3,$4,-127

	sltu	$5,$3,33
	beq	$5,$0,$L161
	addiu	$6,$4,-8232

$L159:
	jr	$31
	li	$2,1			# 0x1

$L161:
	sltu	$7,$6,2
	bne	$7,$0,$L160
	li	$8,-65536			# 0xffffffffffff0000

	addiu	$9,$8,7
	addu	$4,$4,$9
	jr	$31
	sltu	$2,$4,3

$L160:
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
	bne	$2,$0,$L170
	sltu	$3,$4,8232

	bne	$3,$0,$L168
	addiu	$5,$4,-8234

	li	$6,47062			# 0xb7d6
	sltu	$7,$5,$6
	bne	$7,$0,$L168
	li	$8,-65536			# 0xffffffffffff0000

	addiu	$9,$8,8192
	addu	$10,$4,$9
	sltu	$11,$10,8185
	bne	$11,$0,$L168
	addiu	$12,$8,4

	li	$13,1048576			# 0x100000
	addu	$14,$4,$12
	addiu	$15,$13,4
	sltu	$24,$14,$15
	beq	$24,$0,$L169
	andi	$4,$4,0xfffe

	xori	$25,$4,0xfffe
	jr	$31
	sltu	$2,$0,$25

$L168:
	jr	$31
	li	$2,1			# 0x1

$L170:
	addiu	$2,$4,1
	andi	$3,$2,0x7f
	sltu	$5,$3,33
	jr	$31
	xori	$2,$5,0x1

$L169:
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
	bne	$3,$0,$L173
	ori	$4,$4,0x20

	addiu	$5,$4,-97
	jr	$31
	sltu	$2,$5,6

$L173:
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
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,$L178
	c.un.d	$fcc1,$f14,$f14

	bc1t	$fcc1,$L179
	nop

	c.lt.d	$fcc2,$f14,$f12
	bc1fl	$fcc2,$L182
	mtc1	$0,$f0

	jr	$31
	sub.d	$f0,$f12,$f14

$L182:
	jr	$31
	mtc1	$0,$f1

$L178:
	jr	$31
	mov.d	$f0,$f12

$L179:
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
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,$L186
	c.un.s	$fcc1,$f14,$f14

	bc1t	$fcc1,$L187
	nop

	c.lt.s	$fcc2,$f14,$f12
	bc1f	$fcc2,$L190
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L190:
	jr	$31
	mtc1	$0,$f0

$L186:
	jr	$31
	mov.s	$f0,$f12

$L187:
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
	c.un.d	$fcc0,$f12,$f12
	mov.d	$f0,$f14
	sdc1	$f12,0($sp)
	bc1t	$fcc0,$L198
	sdc1	$f14,8($sp)

	c.un.d	$fcc1,$f14,$f14
	bc1t	$fcc1,$L195
	lw	$2,4($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	lw	$3,12($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beql	$5,$6,$L193
	mov.d	$f0,$f12

	beq	$5,$0,$L195
	nop

$L198:
	jr	$31
	nop

$L193:
	c.lt.d	$fcc2,$f12,$f14
	jr	$31
	movt.d	$f0,$f14,$fcc2

$L195:
	jr	$31
	mov.d	$f0,$f12

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
	c.un.s	$fcc0,$f12,$f12
	mov.s	$f0,$f14
	swc1	$f12,0($sp)
	bc1t	$fcc0,$L205
	swc1	$f14,4($sp)

	c.un.s	$fcc1,$f14,$f14
	bc1t	$fcc1,$L203
	lw	$2,0($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	lw	$3,4($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beq	$5,$6,$L201
	mov.s	$f0,$f12

	jr	$31
	movn.s	$f0,$f14,$5

$L201:
	c.lt.s	$fcc2,$f12,$f14
	jr	$31
	movt.s	$f0,$f14,$fcc2

$L205:
	jr	$31
	nop

$L203:
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
	c.un.d	$fcc0,$f12,$f12
	mov.d	$f0,$f14
	sdc1	$f12,0($sp)
	bc1t	$fcc0,$L213
	sdc1	$f14,8($sp)

	c.un.d	$fcc1,$f14,$f14
	bc1t	$fcc1,$L210
	lw	$2,4($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	lw	$3,12($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beql	$5,$6,$L208
	mov.d	$f0,$f12

	beq	$5,$0,$L210
	nop

$L213:
	jr	$31
	nop

$L208:
	c.lt.d	$fcc2,$f12,$f14
	jr	$31
	movt.d	$f0,$f14,$fcc2

$L210:
	jr	$31
	mov.d	$f0,$f12

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
	c.un.d	$fcc0,$f12,$f12
	mov.d	$f0,$f14
	sdc1	$f12,0($sp)
	bc1t	$fcc0,$L221
	sdc1	$f14,8($sp)

	c.un.d	$fcc1,$f14,$f14
	bc1t	$fcc1,$L218
	lw	$2,4($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	lw	$3,12($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beq	$5,$6,$L216
	ldc1	$f2,0($sp)

	bne	$5,$0,$L219
	nop

$L221:
	jr	$31
	nop

$L216:
	c.lt.d	$fcc2,$f12,$f14
	jr	$31
	movt.d	$f0,$f2,$fcc2

$L219:
	jr	$31
	mov.d	$f0,$f12

$L218:
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
	c.un.s	$fcc0,$f12,$f12
	mov.s	$f0,$f14
	swc1	$f12,0($sp)
	bc1t	$fcc0,$L228
	swc1	$f14,4($sp)

	c.un.s	$fcc1,$f14,$f14
	bc1t	$fcc1,$L226
	lw	$2,0($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	lw	$3,4($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beq	$5,$6,$L224
	lwc1	$f1,0($sp)

	jr	$31
	movn.s	$f0,$f12,$5

$L224:
	c.lt.s	$fcc2,$f12,$f14
	jr	$31
	movt.s	$f0,$f1,$fcc2

$L228:
	jr	$31
	nop

$L226:
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
	c.un.d	$fcc0,$f12,$f12
	mov.d	$f0,$f14
	sdc1	$f12,0($sp)
	bc1t	$fcc0,$L236
	sdc1	$f14,8($sp)

	c.un.d	$fcc1,$f14,$f14
	bc1t	$fcc1,$L233
	lw	$2,4($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	lw	$3,12($sp)
	and	$5,$2,$4
	and	$6,$3,$4
	beq	$5,$6,$L231
	ldc1	$f2,0($sp)

	bne	$5,$0,$L234
	nop

$L236:
	jr	$31
	nop

$L231:
	c.lt.d	$fcc2,$f12,$f14
	jr	$31
	movt.d	$f0,$f2,$fcc2

$L234:
	jr	$31
	mov.d	$f0,$f12

$L233:
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
	beq	$4,$0,$L240
	lui	$2,%hi(s.0)

	lui	$6,%hi(digits)
	addiu	$2,$2,%lo(s.0)
	addiu	$7,$6,%lo(digits)
	move	$5,$2
$L239:
	andi	$3,$4,0x3f
	addiu	$5,$5,1
	addu	$8,$7,$3
	lbu	$9,0($8)
	srl	$4,$4,6
	bne	$4,$0,$L239
	sb	$9,-1($5)

	jr	$31
	sb	$0,0($5)

$L240:
	addiu	$2,$2,%lo(s.0)
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
	sw	$0,%lo(seed+4)($2)
	jr	$31
	sw	$4,%lo(seed)($2)

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
	li	$6,1284833280			# 0x4c950000
	lw	$2,%lo(seed)($5)
	addiu	$3,$6,32557
	li	$7,1481703424			# 0x58510000
	lw	$4,%lo(seed+4)($5)
	ori	$10,$7,0xf42d
	addiu	$sp,$sp,-16
	multu	$ac0,$2,$3
	gsmultu	$12,$2,$10
	sw	$2,8($sp)
	addiu	$sp,$sp,16
	gsmultu	$11,$4,$3
	addu	$13,$11,$12
	mflo	$8
	mfhi	$9
	addiu	$14,$8,1
	addu	$15,$13,$9
	sltu	$24,$14,$8
	sw	$14,%lo(seed)($5)
	addu	$25,$24,$15
	srl	$2,$25,1
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
	beql	$5,$0,$L251
	sw	$0,4($4)

	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$3,0($4)
	bnel	$3,$0,$L253
	sw	$4,4($3)

$L253:
	jr	$31
	nop

$L251:
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
	beql	$2,$0,$L264
	lw	$4,4($4)

	lw	$3,4($4)
	sw	$3,4($2)
	lw	$4,4($4)
$L264:
	bnel	$4,$0,$L263
	sw	$2,0($4)

$L263:
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
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$19,0($6)
	sw	$fp,56($sp)
	move	$fp,$5
	sw	$23,52($sp)
	move	$23,$6
	sw	$22,48($sp)
	sw	$20,40($sp)
	move	$20,$4
	sw	$18,32($sp)
	move	$18,$7
	lw	$22,80($sp)
	sw	$31,60($sp)
	sw	$21,44($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	beq	$19,$0,$L266
	.cprestore	16

	move	$16,$5
	.option	pic0
	b	$L268
	.option	pic2
	move	$17,$0

$L281:
	beq	$19,$17,$L282
	addiu	$2,$19,1

$L268:
	move	$5,$16
	addiu	$17,$17,1
	move	$25,$22
	jalr	$25
	move	$4,$20

	move	$21,$16
	lw	$28,16($sp)
	bne	$2,$0,$L281
	addu	$16,$16,$18

$L265:
	lw	$31,60($sp)
	move	$2,$21
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

$L266:
	addiu	$2,$19,1
$L282:
	gsmultu	$3,$18,$19
	addu	$21,$fp,$3
	beq	$18,$0,$L265
	sw	$2,0($23)

	lw	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$21

	lw	$31,60($sp)
	move	$2,$21
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
	sw	$20,40($sp)
	lw	$20,0($6)
	sw	$21,44($sp)
	sw	$31,52($sp)
	lw	$21,72($sp)
	sw	$22,48($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	beq	$20,$0,$L284
	sw	$16,24($sp)

	move	$18,$4
	move	$17,$0
	move	$19,$7
	.option	pic0
	b	$L286
	.option	pic2
	move	$16,$5

$L295:
	beq	$20,$17,$L296
	lw	$31,52($sp)

$L286:
	move	$5,$16
	addiu	$17,$17,1
	move	$25,$21
	jalr	$25
	move	$4,$18

	move	$22,$16
	bne	$2,$0,$L295
	addu	$16,$16,$19

	lw	$31,52($sp)
	move	$2,$22
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,56

$L284:
	lw	$31,52($sp)
$L296:
	move	$22,$0
	lw	$21,44($sp)
	move	$2,$22
	lw	$22,48($sp)
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
	bltz	$4,$L299
	move	$2,$4

	jr	$31
	nop

$L299:
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
$L309:
	lb	$5,0($4)
	beq	$5,$3,$L303
	addiu	$2,$5,-9

	sltu	$6,$2,5
	bnel	$6,$0,$L309
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,$L304
	li	$8,45			# 0x2d

	bne	$5,$8,$L322
	addiu	$13,$5,-48

	lb	$11,1($4)
	addiu	$13,$11,-48
	sltu	$12,$13,10
	beq	$12,$0,$L314
	addiu	$4,$4,1

	li	$15,1			# 0x1
$L307:
	move	$2,$0
$L311:
	sll	$24,$2,2
	lb	$25,1($4)
	move	$5,$13
	addu	$3,$24,$2
	sll	$6,$3,1
	subu	$2,$6,$13
	addiu	$13,$25,-48
	sltu	$7,$13,10
	bne	$7,$0,$L311
	addiu	$4,$4,1

	bne	$15,$0,$L323
	nop

	jr	$31
	subu	$2,$5,$6

$L303:
	.option	pic0
	b	$L309
	.option	pic2
	addiu	$4,$4,1

$L322:
	sltu	$14,$13,10
	bne	$14,$0,$L307
	move	$15,$0

$L321:
	jr	$31
	move	$2,$0

$L314:
	move	$2,$0
$L323:
	jr	$31
	nop

$L304:
	lb	$9,1($4)
	move	$15,$0
	addiu	$13,$9,-48
	sltu	$10,$13,10
	bne	$10,$0,$L307
	addiu	$4,$4,1

	.option	pic0
	b	$L321
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
$L329:
	lb	$5,0($4)
	beq	$5,$3,$L325
	addiu	$2,$5,-9

	sltu	$6,$2,5
	bnel	$6,$0,$L329
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,$L326
	li	$10,45			# 0x2d

	beql	$5,$10,$L327
	lb	$11,1($4)

	addiu	$13,$5,-48
	sltu	$14,$13,10
	beq	$14,$0,$L343
	nop

$L337:
	move	$15,$0
$L330:
	move	$2,$0
$L333:
	sll	$24,$2,2
	lb	$25,1($4)
	move	$5,$13
	addu	$3,$24,$2
	sll	$6,$3,1
	subu	$2,$6,$13
	addiu	$13,$25,-48
	sltu	$7,$13,10
	bne	$7,$0,$L333
	addiu	$4,$4,1

	bne	$15,$0,$L344
	nop

	jr	$31
	subu	$2,$5,$6

$L325:
	.option	pic0
	b	$L329
	.option	pic2
	addiu	$4,$4,1

$L327:
	li	$15,1			# 0x1
	addiu	$13,$11,-48
	sltu	$12,$13,10
	bne	$12,$0,$L330
	addiu	$4,$4,1

$L343:
	jr	$31
	move	$2,$0

$L326:
	lb	$8,1($4)
	addiu	$13,$8,-48
	sltu	$9,$13,10
	bne	$9,$0,$L337
	addiu	$4,$4,1

	move	$2,$0
$L344:
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
$L352:
	lb	$6,0($4)
	beq	$6,$3,$L346
	addiu	$2,$6,-9

	sltu	$5,$2,5
	bnel	$5,$0,$L352
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$6,$7,$L347
	li	$10,45			# 0x2d

	bne	$6,$10,$L364
	addiu	$13,$6,-48

	lb	$11,1($4)
	addiu	$13,$11,-48
	sltu	$12,$13,10
	beq	$12,$0,$L357
	addiu	$4,$4,1

	li	$15,1			# 0x1
$L350:
	move	$2,$0
	move	$24,$0
$L354:
	sll	$25,$2,2
	lb	$11,1($4)
	addiu	$4,$4,1
	srl	$3,$2,30
	addu	$2,$25,$2
	sll	$6,$24,2
	sltu	$12,$2,$25
	or	$5,$3,$6
	move	$6,$13
	addu	$9,$5,$24
	addu	$14,$12,$9
	sll	$8,$2,1
	srl	$7,$2,31
	subu	$2,$8,$13
	sll	$24,$14,1
	sltu	$25,$8,$2
	sra	$10,$13,31
	or	$3,$7,$24
	addiu	$13,$11,-48
	subu	$5,$3,$10
	sltu	$11,$13,10
	bne	$11,$0,$L354
	subu	$24,$5,$25

	bne	$15,$0,$L345
	subu	$4,$10,$3

	subu	$2,$6,$8
	sltu	$13,$6,$2
	subu	$24,$4,$13
$L345:
	jr	$31
	move	$3,$24

$L346:
	.option	pic0
	b	$L352
	.option	pic2
	addiu	$4,$4,1

$L364:
	sltu	$14,$13,10
	bne	$14,$0,$L350
	move	$15,$0

$L357:
	move	$2,$0
	move	$24,$0
$L365:
	jr	$31
	move	$3,$24

$L347:
	lb	$8,1($4)
	move	$15,$0
	addiu	$13,$8,-48
	sltu	$9,$13,10
	bne	$9,$0,$L350
	addiu	$4,$4,1

	move	$2,$0
	.option	pic0
	b	$L365
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
	beq	$6,$0,$L367
	sw	$16,24($sp)

	move	$16,$6
	move	$20,$4
	move	$18,$5
	.option	pic0
	b	$L370
	.option	pic2
	move	$19,$7

$L380:
	beq	$2,$0,$L381
	lw	$31,52($sp)

	beq	$16,$0,$L367
	addu	$18,$17,$19

$L370:
	srl	$22,$16,1
$L382:
	move	$4,$20
	addiu	$16,$16,-1
	gsmultu	$17,$22,$19
	addu	$17,$18,$17
	move	$25,$21
	subu	$16,$16,$22
	jalr	$25
	move	$5,$17

	bgez	$2,$L380
	nop

	move	$16,$22
	bne	$16,$0,$L382
	srl	$22,$16,1

$L367:
	move	$17,$0
	lw	$31,52($sp)
$L381:
	move	$2,$17
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
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	move	$19,$4
	sw	$18,36($sp)
	move	$18,$7
	sw	$17,32($sp)
	move	$17,$5
	sw	$16,28($sp)
	move	$16,$6
	lw	$20,80($sp)
	lw	$21,84($sp)
	sw	$31,60($sp)
	sw	$23,56($sp)
	beq	$6,$0,$L388
	sw	$22,52($sp)

$L396:
	sra	$23,$16,1
$L400:
	move	$6,$21
	addiu	$16,$16,-1
	gsmultu	$22,$23,$18
	addu	$22,$17,$22
	move	$4,$19
	move	$5,$22
	move	$25,$20
	jalr	$25
	sra	$16,$16,1

	beq	$2,$0,$L399
	lw	$31,60($sp)

	blez	$2,$L386
	nop

	bne	$16,$0,$L396
	addu	$17,$22,$18

$L388:
	move	$22,$0
	lw	$31,60($sp)
$L399:
	move	$2,$22
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

$L386:
	beq	$23,$0,$L388
	move	$16,$23

	.option	pic0
	b	$L400
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
	div	$0,$5,$6
	teq	$6,$0,7
	move	$2,$4
	mflo	$3
	mfhi	$5
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
	move	$3,$5
	bltz	$5,$L405
	move	$2,$4

	jr	$31
	nop

$L405:
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
	sw	$18,32($sp)
	move	$18,$6
	sw	$17,28($sp)
	move	$17,$7
	lw	$25,%call16(__divdi3)($28)
	move	$5,$17
	lw	$6,56($sp)
	lw	$7,60($sp)
	sw	$16,24($sp)
	move	$16,$4
	sw	$31,36($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	move	$4,$18

	move	$4,$18
	lw	$28,16($sp)
	move	$5,$17
	lw	$6,56($sp)
	lw	$25,%call16(__moddi3)($28)
	lw	$7,60($sp)
	sw	$2,0($16)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$3,4($16)

	lw	$31,36($sp)
	move	$4,$2
	lw	$18,32($sp)
	move	$2,$16
	lw	$17,28($sp)
	sw	$4,8($16)
	sw	$3,12($16)
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
	bltz	$4,$L412
	move	$2,$4

	jr	$31
	nop

$L412:
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
	div	$0,$5,$6
	teq	$6,$0,7
	move	$2,$4
	mflo	$3
	mfhi	$5
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
	move	$3,$5
	bltz	$5,$L419
	move	$2,$4

	jr	$31
	nop

$L419:
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
	sw	$18,32($sp)
	move	$18,$6
	sw	$17,28($sp)
	move	$17,$7
	lw	$25,%call16(__divdi3)($28)
	move	$5,$17
	lw	$6,56($sp)
	lw	$7,60($sp)
	sw	$16,24($sp)
	move	$16,$4
	sw	$31,36($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	move	$4,$18

	move	$4,$18
	lw	$28,16($sp)
	move	$5,$17
	lw	$6,56($sp)
	lw	$25,%call16(__moddi3)($28)
	lw	$7,60($sp)
	sw	$2,0($16)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$3,4($16)

	lw	$31,36($sp)
	move	$4,$2
	lw	$18,32($sp)
	move	$2,$16
	lw	$17,28($sp)
	sw	$4,8($16)
	sw	$3,12($16)
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
	bne	$2,$0,$L425
	nop

	jr	$31
	nop

$L427:
	beq	$2,$0,$L428
	addiu	$4,$4,4

$L425:
	bnel	$5,$2,$L427
	lw	$2,4($4)

	jr	$31
	move	$2,$4

$L428:
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
$L435:
	lw	$2,0($4)
	lw	$3,0($5)
	bne	$2,$3,$L434
	addiu	$4,$4,4

	bne	$2,$0,$L435
	addiu	$5,$5,4

$L434:
	slt	$4,$2,$3
	bne	$4,$0,$L437
	nop

	jr	$31
	slt	$2,$3,$2

$L437:
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
$L442:
	lw	$6,0($5)
	addiu	$3,$3,4
	addiu	$5,$5,4
	bne	$6,$0,$L442
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
	beq	$2,$0,$L447
	move	$5,$4

$L446:
	lw	$3,4($5)
	bne	$3,$0,$L446
	addiu	$5,$5,4

	subu	$4,$5,$4
	jr	$31
	sra	$2,$4,2

$L447:
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
	b	$L460
	nop

	.option	pic2
$L461:
	lw	$3,0($5)
	bne	$2,$3,$L452
	addiu	$6,$6,-1

	beql	$2,$0,$L463
	lw	$6,0($4)

	addiu	$4,$4,4
	addiu	$5,$5,4
$L460:
	bnel	$6,$0,$L461
	lw	$2,0($4)

	jr	$31
	move	$2,$0

$L452:
	lw	$6,0($4)
$L463:
	lw	$5,0($5)
	slt	$4,$6,$5
	bne	$4,$0,$L462
	nop

	jr	$31
	slt	$2,$5,$6

$L462:
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
	bnel	$6,$0,$L473
	lw	$2,0($4)

	jr	$31
	move	$2,$0

$L467:
	beq	$6,$0,$L468
	addiu	$4,$4,4

	lw	$2,0($4)
$L473:
	bne	$2,$5,$L467
	addiu	$6,$6,-1

	jr	$31
	move	$2,$4

$L468:
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
$L478:
	beq	$6,$0,$L481
	addiu	$6,$6,-1

	lw	$2,0($4)
	addiu	$4,$4,4
	lw	$3,0($5)
	beq	$2,$3,$L478
	addiu	$5,$5,4

	slt	$4,$2,$3
	bne	$4,$0,$L488
	nop

	jr	$31
	slt	$2,$3,$2

$L481:
	jr	$31
	move	$2,$0

$L488:
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
	move	$16,$4
	sw	$31,28($sp)
	beq	$6,$0,$L490
	.cprestore	16

	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sll	$6,$6,2

$L490:
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
	beq	$4,$5,$L512
	move	$2,$4

	subu	$4,$4,$5
	sll	$7,$6,2
	sltu	$8,$4,$7
	beq	$8,$0,$L510
	addiu	$3,$6,-1

	beq	$6,$0,$L512
	sll	$14,$3,2

	li	$11,-4			# 0xfffffffffffffffc
$L500:
	lwx	$12,$14($5)
	addu	$13,$2,$14
	addiu	$14,$14,-4
	bne	$14,$11,$L500
	sw	$12,0($13)

$L512:
	jr	$31
	nop

$L510:
	move	$10,$2
	beq	$6,$0,$L512
	li	$9,-1			# 0xffffffffffffffff

$L498:
	lw	$6,0($5)
	addiu	$3,$3,-1
	addiu	$10,$10,4
	addiu	$5,$5,4
	bne	$3,$9,$L498
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
	beq	$6,$0,$L520
	addiu	$3,$6,-1

	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
$L515:
	addiu	$3,$3,-1
	addiu	$6,$6,4
	bne	$3,$7,$L515
	sw	$5,-4($6)

$L520:
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
	beq	$2,$0,$L522
	addu	$11,$4,$6

	beq	$6,$0,$L554
	addu	$13,$5,$6

$L524:
	lb	$10,-1($11)
	addiu	$11,$11,-1
	addiu	$13,$13,-1
	bne	$4,$11,$L524
	sb	$10,0($13)

$L554:
	jr	$31
	nop

$L522:
	bne	$4,$5,$L550
	nop

	jr	$31
	nop

$L550:
	beq	$6,$0,$L554
	addiu	$3,$6,-1

	sltu	$7,$3,7
	bne	$7,$0,$L552
	addiu	$12,$4,1

	or	$8,$5,$4
	andi	$9,$8,0x3
	bne	$9,$0,$L552
	subu	$10,$5,$12

	sltu	$11,$10,3
	bne	$11,$0,$L525
	move	$24,$5

	srl	$12,$6,2
	sll	$13,$12,2
	addu	$14,$4,$13
$L526:
	lw	$15,0($4)
	addiu	$4,$4,4
	addiu	$24,$24,4
	bne	$14,$4,$L526
	sw	$15,-4($24)

	addu	$5,$5,$13
	beq	$6,$13,$L554
	subu	$25,$6,$13

	lb	$4,0($14)
	li	$6,1			# 0x1
	beq	$25,$6,$L554
	sb	$4,0($5)

	lb	$2,1($14)
	li	$3,2			# 0x2
	beq	$25,$3,$L554
	sb	$2,1($5)

	lb	$7,2($14)
	jr	$31
	sb	$7,2($5)

$L525:
$L552:
	.option	pic0
	b	$L529
	.option	pic2
	addu	$8,$4,$6

$L551:
	addiu	$12,$12,1
$L529:
	lb	$9,-1($12)
	addiu	$5,$5,1
	bne	$12,$8,$L551
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
	subu	$7,$0,$6
	nor	$2,$0,$6
	andi	$8,$7,0x3f
	andi	$9,$6,0x20
	srl	$3,$4,1
	nor	$10,$0,$8
	sll	$13,$5,1
	andi	$14,$7,0x20
	sll	$11,$5,$6
	srl	$12,$3,$2
	sll	$6,$4,$6
	or	$15,$12,$11
	srl	$5,$5,$8
	sll	$24,$13,$10
	move	$25,$5
	srl	$4,$4,$8
	or	$7,$24,$4
	movn	$15,$6,$9
	movn	$25,$0,$14
	movn	$6,$0,$9
	or	$3,$25,$15
	movn	$7,$5,$14
	jr	$31
	or	$2,$7,$6

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
	subu	$8,$0,$6
	nor	$12,$0,$6
	andi	$7,$8,0x3f
	andi	$10,$6,0x20
	srl	$3,$4,1
	nor	$11,$0,$7
	sll	$2,$5,1
	andi	$13,$8,0x20
	srl	$9,$5,$6
	sll	$14,$4,$7
	move	$25,$9
	srl	$24,$3,$11
	srl	$4,$4,$6
	move	$6,$14
	sll	$5,$5,$7
	sll	$15,$2,$12
	or	$8,$24,$5
	or	$2,$15,$4
	movn	$25,$0,$10
	movn	$6,$0,$13
	movn	$8,$14,$13
	movn	$2,$9,$10
	or	$3,$8,$25
	jr	$31
	or	$2,$6,$2

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
	andi	$6,$2,0xf
	sll	$3,$4,$5
	srl	$4,$4,$6
	or	$7,$3,$4
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
	andi	$6,$2,0xf
	srl	$3,$4,$5
	sll	$4,$4,$6
	or	$7,$3,$4
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
	andi	$6,$2,0x7
	sll	$3,$4,$5
	srl	$4,$4,$6
	or	$7,$3,$4
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
	andi	$6,$2,0x7
	srl	$3,$4,$5
	sll	$4,$4,$6
	or	$7,$3,$4
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
	li	$5,16711680			# 0xff0000
	srl	$6,$4,24
	srl	$3,$4,8
	or	$7,$2,$6
	sll	$4,$4,8
	andi	$8,$3,0xff00
	and	$9,$4,$5
	or	$10,$7,$8
	jr	$31
	or	$2,$10,$9

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
	li	$9,16711680			# 0xff0000
	srl	$2,$4,24
	or	$11,$6,$2
	srl	$8,$5,8
	andi	$10,$11,0xff
	sll	$3,$4,24
	andi	$13,$8,0xff00
	srl	$7,$4,8
	or	$24,$3,$10
	srl	$12,$5,24
	and	$25,$11,$9
	sll	$4,$4,8
	andi	$14,$7,0xff00
	or	$15,$12,$13
	and	$9,$4,$9
	sll	$5,$5,24
	or	$6,$24,$14
	or	$2,$15,$25
	or	$3,$6,$9
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
	b	$L571
	.option	pic2
	li	$5,32			# 0x20

$L574:
	beq	$2,$5,$L573
	nop

$L571:
	srl	$3,$4,$2
	andi	$6,$3,0x1
	beq	$6,$0,$L574
	addiu	$2,$2,1

	jr	$31
	nop

$L573:
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
	beq	$4,$0,$L582
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,$L581
	nop

	li	$2,1			# 0x1
$L577:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,$L577
	addiu	$2,$2,1

$L582:
	jr	$31
	nop

$L581:
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
	c.lt.s	$fcc0,$f12,$f0
	bc1t	$fcc0,$L586
	lui	$3,%hi($LC1)

	lwc1	$f1,%lo($LC1)($3)
	c.lt.s	$fcc1,$f1,$f12
	bc1f	$fcc1,$L588
	li	$2,1			# 0x1

	jr	$31
	nop

$L586:
	jr	$31
	li	$2,1			# 0x1

$L588:
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
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,$L592
	lui	$3,%hi($LC3)

	ldc1	$f2,%lo($LC3)($3)
	c.lt.d	$fcc1,$f2,$f12
	bc1f	$fcc1,$L594
	li	$2,1			# 0x1

	jr	$31
	nop

$L592:
	jr	$31
	li	$2,1			# 0x1

$L594:
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
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,$L598
	lui	$3,%hi($LC3)

	ldc1	$f2,%lo($LC3)($3)
	c.lt.d	$fcc1,$f2,$f12
	bc1f	$fcc1,$L600
	li	$2,1			# 0x1

	jr	$31
	nop

$L598:
	jr	$31
	li	$2,1			# 0x1

$L600:
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
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,$L620
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f1,$f12
	bc1t	$fcc1,$L620
	nop

	bltz	$5,$L616
	lui	$2,%hi($LC4)

	lwc1	$f2,%lo($LC4)($2)
$L604:
	andi	$4,$5,0x1
	beq	$4,$0,$L619
	srl	$6,$5,31

$L606:
	mul.s	$f0,$f0,$f2
	srl	$6,$5,31
$L619:
	addu	$5,$6,$5
	sra	$5,$5,1
	beq	$5,$0,$L620
	srl	$7,$5,31

	andi	$8,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$8,$0,$L606
	addu	$2,$7,$5

	sra	$5,$2,1
$L618:
	mul.s	$f2,$f2,$f2
	srl	$7,$5,31
	andi	$8,$5,0x1
	bne	$8,$0,$L606
	addu	$2,$7,$5

	.option	pic0
	b	$L618
	.option	pic2
	sra	$5,$2,1

$L620:
	jr	$31
	nop

$L616:
	lui	$3,%hi($LC5)
	.option	pic0
	b	$L604
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
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,$L639
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$fcc1,$f2,$f12
	bc1t	$fcc1,$L639
	nop

	bltz	$6,$L635
	lui	$2,%hi($LC6)

	ldc1	$f4,%lo($LC6)($2)
$L623:
	andi	$4,$6,0x1
	beq	$4,$0,$L638
	srl	$5,$6,31

$L625:
	mul.d	$f0,$f0,$f4
	srl	$5,$6,31
$L638:
	addu	$6,$5,$6
	sra	$6,$6,1
	beq	$6,$0,$L639
	srl	$7,$6,31

	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L625
	addu	$2,$7,$6

	sra	$6,$2,1
$L637:
	mul.d	$f4,$f4,$f4
	srl	$7,$6,31
	andi	$8,$6,0x1
	bne	$8,$0,$L625
	addu	$2,$7,$6

	.option	pic0
	b	$L637
	.option	pic2
	sra	$6,$2,1

$L639:
	jr	$31
	nop

$L635:
	lui	$3,%hi($LC7)
	.option	pic0
	b	$L623
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
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,$L658
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$fcc1,$f12,$f2
	bc1t	$fcc1,$L658
	nop

	bltz	$6,$L654
	lui	$2,%hi($LC6)

	ldc1	$f4,%lo($LC6)($2)
$L642:
	andi	$4,$6,0x1
	beq	$4,$0,$L657
	srl	$5,$6,31

$L644:
	mul.d	$f0,$f0,$f4
	srl	$5,$6,31
$L657:
	addu	$6,$5,$6
	sra	$6,$6,1
	beq	$6,$0,$L658
	srl	$7,$6,31

	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L644
	addu	$2,$7,$6

	sra	$6,$2,1
$L656:
	mul.d	$f4,$f4,$f4
	srl	$7,$6,31
	andi	$8,$6,0x1
	bne	$8,$0,$L644
	addu	$2,$7,$6

	.option	pic0
	b	$L656
	.option	pic2
	sra	$6,$2,1

$L658:
	jr	$31
	nop

$L654:
	lui	$3,%hi($LC7)
	.option	pic0
	b	$L642
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
	beq	$6,$0,$L671
	move	$2,$4

	addiu	$3,$6,-1
	sltu	$4,$3,4
	bne	$4,$0,$L661
	or	$7,$2,$5

	andi	$8,$7,0x3
	bne	$8,$0,$L661
	srl	$9,$6,2

	move	$14,$2
	sll	$10,$9,2
	addu	$11,$5,$10
$L662:
	lw	$12,0($14)
	addiu	$5,$5,4
	addiu	$14,$14,4
	lw	$13,-4($5)
	xor	$15,$13,$12
	bne	$11,$5,$L662
	sw	$15,-4($14)

	addu	$24,$2,$10
	beq	$6,$10,$L671
	subu	$5,$6,$10

	lbu	$25,0($24)
	li	$6,1			# 0x1
	lbu	$3,0($11)
	xor	$4,$25,$3
	beq	$5,$6,$L671
	sb	$4,0($24)

	lbu	$7,1($24)
	li	$9,2			# 0x2
	lbu	$8,1($11)
	xor	$10,$8,$7
	beq	$5,$9,$L671
	sb	$10,1($24)

	lbu	$12,2($24)
	lbu	$11,2($11)
	xor	$13,$11,$12
	jr	$31
	sb	$13,2($24)

$L661:
	addu	$14,$5,$6
	move	$25,$2
$L664:
	lbu	$15,0($25)
	addiu	$5,$5,1
	addiu	$25,$25,1
	lbu	$24,-1($5)
	xor	$3,$24,$15
	bne	$14,$5,$L664
	sb	$3,-1($25)

$L671:
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
	beq	$3,$0,$L679
	move	$2,$4

	move	$8,$4
$L674:
	lb	$7,1($8)
	bne	$7,$0,$L674
	addiu	$8,$8,1

	beq	$6,$0,$L676
	nop

	lb	$4,0($5)
$L689:
	addiu	$8,$8,1
	addiu	$6,$6,-1
	addiu	$5,$5,1
	beq	$4,$0,$L690
	sb	$4,-1($8)

$L677:
	bnel	$6,$0,$L689
	lb	$4,0($5)

$L676:
	jr	$31
	sb	$0,0($8)

$L690:
	jr	$31
	nop

$L679:
	.option	pic0
	b	$L677
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
	beq	$5,$0,$L702
	move	$2,$0

	lbux	$3,$2($4)
$L700:
	bnel	$3,$0,$L694
	addiu	$2,$2,1

$L702:
	jr	$31
	nop

$L694:
	bnel	$5,$2,$L700
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
	beq	$7,$0,$L712
	move	$2,$4

$L704:
	.option	pic0
	b	$L707
	.option	pic2
	move	$3,$5

$L706:
	beq	$6,$7,$L713
	nop

$L707:
	lb	$6,0($3)
	bne	$6,$0,$L706
	addiu	$3,$3,1

	lb	$7,1($2)
	bne	$7,$0,$L704
	addiu	$2,$2,1

	move	$2,$0
$L713:
	jr	$31
	nop

$L712:
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
$L715:
	lb	$3,0($4)
	xor	$6,$3,$5
	movz	$2,$4,$6
	bne	$3,$0,$L715
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
	beq	$8,$0,$L727
	nop

	move	$2,$5
$L719:
	lb	$3,1($2)
	bne	$3,$0,$L719
	addiu	$2,$2,1

	beq	$2,$5,$L727
	subu	$10,$2,$5

	andi	$11,$8,0x00ff
	.option	pic0
	b	$L737
	.option	pic2
	addiu	$13,$10,-1

$L739:
	beq	$2,$0,$L742
	addiu	$4,$4,1

$L737:
	lb	$2,0($4)
	bne	$2,$8,$L739
	move	$6,$11

	addu	$9,$4,$13
	move	$14,$5
	.option	pic0
	b	$L721
	.option	pic2
	move	$12,$4

$L740:
	beql	$12,$9,$L741
	lbu	$15,0($14)

	bne	$7,$6,$L722
	addiu	$12,$12,1

	lbu	$6,0($12)
	beq	$6,$0,$L722
	addiu	$14,$14,1

$L721:
	lbu	$7,0($14)
	bne	$7,$0,$L740
	nop

$L722:
	lbu	$15,0($14)
$L741:
	beq	$15,$6,$L728
	nop

	.option	pic0
	b	$L737
	.option	pic2
	addiu	$4,$4,1

$L742:
	jr	$31
	nop

$L727:
	jr	$31
	move	$2,$4

$L728:
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
	mtc1	$0,$f3
	c.lt.d	$fcc0,$f12,$f2
	bc1t	$fcc0,$L753
	mov.d	$f0,$f12

	c.lt.d	$fcc2,$f2,$f12
	bc1f	$fcc2,$L754
	nop

	c.lt.d	$fcc3,$f14,$f2
	bc1t	$fcc3,$L746
	nop

$L754:
	jr	$31
	nop

$L753:
	c.lt.d	$fcc1,$f2,$f14
	bc1f	$fcc1,$L754
	nop

$L746:
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
	beq	$7,$0,$L771
	move	$2,$4

	sltu	$3,$5,$7
	bne	$3,$0,$L764
	subu	$5,$5,$7

	addu	$9,$4,$5
	sltu	$4,$9,$4
	bne	$4,$0,$L764
	addiu	$7,$7,-1

	lb	$12,0($6)
	.option	pic0
	b	$L761
	.option	pic2
	addiu	$6,$6,1

$L765:
	move	$2,$3
$L757:
	sltu	$10,$9,$2
	bne	$10,$0,$L764
	nop

$L761:
	lb	$8,0($2)
	bne	$8,$12,$L765
	addiu	$3,$2,1

	beq	$7,$0,$L771
	move	$25,$6

$L760:
	move	$15,$3
	.option	pic0
	b	$L758
	.option	pic2
	addu	$5,$3,$7

$L759:
	beq	$15,$5,$L771
	nop

$L758:
	lbu	$13,0($15)
	addiu	$25,$25,1
	lbu	$14,-1($25)
	beq	$13,$14,$L759
	addiu	$15,$15,1

	sltu	$2,$9,$3
	bnel	$2,$0,$L771
	move	$2,$0

	lb	$11,0($3)
	bne	$11,$12,$L757
	addiu	$2,$3,1

	move	$24,$3
	move	$25,$6
	move	$3,$2
	.option	pic0
	b	$L760
	.option	pic2
	move	$2,$24

$L771:
	jr	$31
	nop

$L764:
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
	move	$17,$4
	sw	$16,28($sp)
	move	$16,$6
	sw	$31,36($sp)
	beq	$6,$0,$L773
	.cprestore	16

	lw	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

$L773:
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
	mtc1	$0,$f1
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,$L801
	lui	$2,%hi($LC10)

	ldc1	$f2,%lo($LC10)($2)
	c.le.d	$fcc3,$f2,$f12
	bc1f	$fcc3,$L802
	move	$3,$0

$L781:
	lui	$9,%hi($LC7)
	ldc1	$f16,%lo($LC10)($2)
	move	$8,$0
	ldc1	$f18,%lo($LC7)($9)
$L787:
	mul.d	$f12,$f12,$f18
	c.le.d	$fcc6,$f16,$f12
	bc1t	$fcc6,$L787
	addiu	$8,$8,1

$L788:
	beq	$3,$0,$L794
	sw	$8,0($6)

	jr	$31
	neg.d	$f0,$f12

$L802:
	lui	$4,%hi($LC7)
	ldc1	$f4,%lo($LC7)($4)
	c.lt.d	$fcc4,$f12,$f4
	bc1fl	$fcc4,$L804
	mov.d	$f0,$f12

	c.eq.d	$fcc5,$f12,$f0
	bc1f	$fcc5,$L793
	mov.d	$f6,$f12

	mov.d	$f0,$f12
$L804:
	jr	$31
	sw	$0,0($6)

$L801:
	lui	$5,%hi($LC8)
	ldc1	$f8,%lo($LC8)($5)
	c.le.d	$fcc1,$f12,$f8
	bc1f	$fcc1,$L803
	neg.d	$f6,$f12

	mov.d	$f12,$f6
	li	$3,1			# 0x1
	.option	pic0
	b	$L781
	.option	pic2
	lui	$2,%hi($LC10)

$L794:
	jr	$31
	mov.d	$f0,$f12

$L803:
	lui	$7,%hi($LC9)
	ldc1	$f10,%lo($LC9)($7)
	c.lt.d	$fcc2,$f10,$f12
	bc1f	$fcc2,$L804
	mov.d	$f0,$f12

	li	$3,1			# 0x1
	lui	$4,%hi($LC7)
$L782:
	ldc1	$f14,%lo($LC7)($4)
	mov.d	$f12,$f6
	move	$8,$0
$L789:
	add.d	$f12,$f12,$f12
	c.lt.d	$fcc7,$f12,$f14
	bc1t	$fcc7,$L789
	addiu	$8,$8,-1

	.option	pic0
	b	$L788
	nop

	.option	pic2
$L793:
	.option	pic0
	b	$L782
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
	beq	$2,$0,$L809
	move	$9,$0

	move	$2,$0
$L808:
	andi	$8,$4,0x1
	subu	$3,$0,$8
	sll	$10,$5,31
	and	$13,$3,$6
	srl	$4,$4,1
	and	$14,$3,$7
	addu	$24,$2,$13
	or	$4,$10,$4
	srl	$5,$5,1
	sltu	$8,$24,$2
	move	$2,$24
	srl	$12,$6,31
	addu	$9,$9,$14
	sll	$7,$7,1
	or	$15,$4,$5
	or	$7,$12,$7
	addu	$9,$8,$9
	bne	$15,$0,$L808
	sll	$6,$6,1

	jr	$31
	move	$3,$9

$L809:
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
	beq	$2,$0,$L831
	li	$12,1			# 0x1

	.option	pic0
	b	$L812
	.option	pic2
	li	$2,32			# 0x20

$L816:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L814
	sll	$12,$12,1

	beq	$2,$0,$L815
	nop

$L812:
	bgez	$5,$L816
	addiu	$2,$2,-1

	move	$2,$0
$L818:
	sltu	$8,$4,$5
	move	$11,$12
	subu	$9,$4,$5
	xori	$10,$8,0x1
	movz	$11,$0,$10
	srl	$12,$12,1
	or	$2,$2,$11
	movn	$4,$9,$10
	bne	$12,$0,$L818
	srl	$5,$5,1

$L815:
	jr	$31
	movn	$2,$4,$6

$L814:
	bne	$12,$0,$L818
	move	$2,$0

	.option	pic0
	b	$L815
	nop

	.option	pic2
$L831:
	sltu	$3,$4,$5
	subu	$5,$4,$5
	xori	$2,$3,0x1
	.option	pic0
	b	$L815
	.option	pic2
	movn	$4,$5,$2

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
	beq	$4,$2,$L834
	xor	$3,$4,$2

	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,28($sp)
	lw	$25,%call16(__clzsi2)($28)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__clzsi2
1:	jalr	$25
	sll	$4,$3,8

	lw	$31,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	addiu	$2,$2,-1

$L834:
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
	beq	$2,$6,$L848
	xor	$5,$5,$6

	lui	$28,%hi(__gnu_local_gp)
$L849:
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,28($sp)
	lw	$25,%call16(__clzdi2)($28)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__clzdi2
1:	jalr	$25
	nop

	lw	$31,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	addiu	$2,$2,-1

$L848:
	bne	$3,$2,$L849
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
	beq	$4,$0,$L856
	move	$2,$0

$L852:
	andi	$3,$4,0x1
	subu	$6,$0,$3
	and	$7,$6,$5
	srl	$4,$4,1
	addu	$2,$2,$7
	bne	$4,$0,$L852
	sll	$5,$5,1

$L856:
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
	bne	$2,$0,$L861
	and	$12,$6,$10

	addu	$3,$5,$6
	sltu	$8,$3,$4
	beq	$8,$0,$L891
	addiu	$13,$6,-1

$L861:
	beq	$7,$0,$L892
	sll	$15,$7,3

	move	$2,$5
	move	$7,$4
	addu	$24,$15,$5
$L864:
	lw	$25,0($2)
	addiu	$7,$7,8
	addiu	$2,$2,8
	lw	$10,-4($2)
	sw	$25,-8($7)
	bne	$2,$24,$L864
	sw	$10,-4($7)

	sltu	$3,$12,$6
	beq	$3,$0,$L894
	subu	$11,$6,$12

	addiu	$8,$11,-1
	sltu	$9,$8,7
	bne	$9,$0,$L890
	addiu	$13,$12,1

	addu	$3,$4,$12
	addu	$14,$5,$13
	subu	$15,$3,$14
	sltu	$24,$15,3
	bne	$24,$0,$L866
	addu	$2,$5,$12

	or	$25,$2,$3
	andi	$10,$25,0x3
	bne	$10,$0,$L866
	srl	$7,$11,2

	sll	$9,$7,2
	addu	$8,$2,$9
$L867:
	lw	$13,0($2)
	addiu	$2,$2,4
	addiu	$3,$3,4
	bne	$2,$8,$L867
	sw	$13,-4($3)

	beq	$11,$9,$L894
	addu	$12,$12,$9

	addu	$3,$5,$12
	addiu	$2,$12,1
	lb	$14,0($3)
	addu	$11,$4,$12
	sltu	$15,$2,$6
	beq	$15,$0,$L894
	sb	$14,0($11)

	addu	$24,$5,$2
	addiu	$25,$12,2
	lb	$7,0($24)
	addu	$10,$4,$2
	sltu	$6,$25,$6
	beq	$6,$0,$L894
	sb	$7,0($10)

	addu	$5,$5,$25
	addu	$4,$4,$25
	lb	$9,0($5)
	jr	$31
	sb	$9,0($4)

$L891:
	beq	$6,$0,$L894
	li	$9,-1			# 0xffffffffffffffff

$L862:
	addu	$6,$5,$13
	addu	$11,$4,$13
	lb	$14,0($6)
	addiu	$13,$13,-1
	bne	$13,$9,$L862
	sb	$14,0($11)

$L894:
	jr	$31
	nop

$L892:
	beq	$6,$0,$L893
	nop

$L890:
	addu	$3,$4,$12
	addu	$2,$5,$12
$L866:
	addu	$8,$5,$6
$L869:
	lb	$13,0($2)
	addiu	$2,$2,1
	addiu	$3,$3,1
	bne	$2,$8,$L869
	sb	$13,-1($3)

$L893:
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
	bne	$2,$0,$L899
	srl	$9,$6,1

	addu	$3,$5,$6
	sltu	$7,$3,$4
	beq	$7,$0,$L922
	addiu	$11,$6,-1

$L899:
	beq	$9,$0,$L898
	addiu	$13,$9,-1

	sltu	$14,$13,9
	bne	$14,$0,$L902
	or	$15,$5,$4

	andi	$24,$15,0x3
	bne	$24,$0,$L902
	addiu	$25,$5,2

	beq	$4,$25,$L902
	srl	$10,$6,2

	move	$2,$5
	sll	$11,$10,2
	move	$3,$4
	addu	$8,$5,$11
$L903:
	lw	$7,0($2)
	addiu	$2,$2,4
	addiu	$3,$3,4
	bne	$2,$8,$L903
	sw	$7,-4($3)

	sll	$12,$10,1
	beq	$9,$12,$L898
	addu	$13,$4,$11

	lhx	$9,$11($5)
	sh	$9,0($13)
$L898:
	andi	$11,$6,0x1
	beq	$11,$0,$L925
	addu	$5,$5,$6

	addu	$4,$4,$6
$L926:
	lb	$8,-1($5)
	jr	$31
	sb	$8,-1($4)

$L922:
	beq	$6,$0,$L925
	li	$8,-1			# 0xffffffffffffffff

$L900:
	addu	$6,$5,$11
	addu	$10,$4,$11
	lb	$12,0($6)
	addiu	$11,$11,-1
	bne	$11,$8,$L900
	sb	$12,0($10)

$L925:
	jr	$31
	nop

$L902:
	sll	$14,$9,1
	move	$25,$5
	move	$10,$4
	addu	$15,$14,$5
$L905:
	lh	$24,0($25)
	addiu	$25,$25,2
	addiu	$10,$10,2
	bne	$15,$25,$L905
	sh	$24,-2($10)

	andi	$11,$6,0x1
	beq	$11,$0,$L925
	addu	$5,$5,$6

	.option	pic0
	b	$L926
	.option	pic2
	addu	$4,$4,$6

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
	bne	$2,$0,$L931
	and	$12,$6,$9

	addu	$3,$5,$6
	sltu	$7,$3,$4
	beq	$7,$0,$L961
	addiu	$13,$6,-1

$L931:
	beq	$8,$0,$L962
	sll	$15,$8,2

	move	$9,$5
	move	$2,$4
	addu	$24,$15,$5
$L934:
	lw	$25,0($9)
	addiu	$9,$9,4
	addiu	$2,$2,4
	bne	$9,$24,$L934
	sw	$25,-4($2)

	sltu	$8,$12,$6
	beq	$8,$0,$L964
	subu	$11,$6,$12

	addiu	$3,$11,-1
	sltu	$7,$3,7
	bne	$7,$0,$L960
	addiu	$10,$12,1

	addu	$3,$4,$12
	addu	$13,$5,$10
	subu	$14,$3,$13
	sltu	$15,$14,3
	bne	$15,$0,$L936
	addu	$2,$5,$12

	or	$24,$2,$3
	andi	$25,$24,0x3
	bne	$25,$0,$L936
	srl	$9,$11,2

	sll	$10,$9,2
	addu	$8,$2,$10
$L937:
	lw	$7,0($2)
	addiu	$2,$2,4
	addiu	$3,$3,4
	bne	$2,$8,$L937
	sw	$7,-4($3)

	beq	$11,$10,$L964
	addu	$12,$12,$10

	addu	$11,$5,$12
	addiu	$2,$12,1
	lb	$14,0($11)
	addu	$13,$4,$12
	sltu	$3,$2,$6
	beq	$3,$0,$L964
	sb	$14,0($13)

	addu	$15,$5,$2
	addiu	$24,$12,2
	lb	$9,0($15)
	addu	$25,$4,$2
	sltu	$6,$24,$6
	beq	$6,$0,$L964
	sb	$9,0($25)

	addu	$5,$5,$24
	addu	$4,$4,$24
	lb	$10,0($5)
	jr	$31
	sb	$10,0($4)

$L961:
	beq	$6,$0,$L964
	li	$10,-1			# 0xffffffffffffffff

$L932:
	addu	$6,$5,$13
	addu	$11,$4,$13
	lb	$14,0($6)
	addiu	$13,$13,-1
	bne	$13,$10,$L932
	sb	$14,0($11)

$L964:
	jr	$31
	nop

$L962:
	beq	$6,$0,$L963
	nop

$L960:
	addu	$3,$4,$12
	addu	$2,$5,$12
$L936:
	addu	$8,$5,$6
$L939:
	lb	$7,0($2)
	addiu	$2,$2,1
	addiu	$3,$3,1
	bne	$2,$8,$L939
	sb	$7,-1($3)

$L963:
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
	bltz	$4,$L969
	cvt.d.w	$f0,$f0

	jr	$31
	nop

$L969:
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
	bgez	$4,$L973
	cvt.d.w	$f0,$f0

	lui	$2,%hi($LC11)
	ldc1	$f2,%lo($LC11)($2)
	add.d	$f0,$f0,$f2
$L973:
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
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,28($sp)
	lw	$25,%call16(__floatundidf)($28)
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
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,28($sp)
	lw	$25,%call16(__floatundisf)($28)
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
	bne	$2,$0,$L983
	nop

	sra	$2,$4,14
	bne	$2,$0,$L1000
	sra	$3,$4,13

	bne	$3,$0,$L984
	sra	$5,$4,12

	bne	$5,$0,$L985
	sra	$6,$4,11

	bne	$6,$0,$L986
	sra	$7,$4,10

	bne	$7,$0,$L987
	sra	$8,$4,9

	bne	$8,$0,$L988
	nop

	sra	$2,$4,8
	bne	$2,$0,$L989
	sra	$3,$4,7

	bne	$3,$0,$L990
	sra	$5,$4,6

	bne	$5,$0,$L991
	sra	$6,$4,5

	bne	$6,$0,$L992
	sra	$7,$4,4

	bne	$7,$0,$L993
	nop

	sra	$2,$4,3
	bne	$2,$0,$L994
	sra	$3,$4,2

	bne	$3,$0,$L995
	sra	$5,$4,1

	bne	$5,$0,$L996
	nop

	bne	$4,$0,$L999
	li	$2,16			# 0x10

$L1000:
	jr	$31
	nop

$L983:
	jr	$31
	move	$2,$0

$L994:
	jr	$31
	li	$2,12			# 0xc

$L999:
	jr	$31
	li	$2,15			# 0xf

$L984:
	jr	$31
	li	$2,2			# 0x2

$L985:
	jr	$31
	li	$2,3			# 0x3

$L986:
	jr	$31
	li	$2,4			# 0x4

$L987:
	jr	$31
	li	$2,5			# 0x5

$L988:
	jr	$31
	li	$2,6			# 0x6

$L989:
	jr	$31
	li	$2,7			# 0x7

$L990:
	jr	$31
	li	$2,8			# 0x8

$L991:
	jr	$31
	li	$2,9			# 0x9

$L992:
	jr	$31
	li	$2,10			# 0xa

$L993:
	jr	$31
	li	$2,11			# 0xb

$L995:
	jr	$31
	li	$2,13			# 0xd

$L996:
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
	bne	$2,$0,$L1004
	andi	$3,$4,0x2

	bne	$3,$0,$L1005
	andi	$5,$4,0x4

	bne	$5,$0,$L1006
	andi	$6,$4,0x8

	bne	$6,$0,$L1007
	andi	$7,$4,0x10

	bne	$7,$0,$L1008
	andi	$8,$4,0x20

	bne	$8,$0,$L1009
	andi	$9,$4,0x40

	bne	$9,$0,$L1010
	andi	$10,$4,0x80

	bne	$10,$0,$L1011
	andi	$11,$4,0x100

	bne	$11,$0,$L1012
	andi	$12,$4,0x200

	bne	$12,$0,$L1013
	andi	$13,$4,0x400

	bne	$13,$0,$L1014
	andi	$14,$4,0x800

	bne	$14,$0,$L1015
	andi	$15,$4,0x1000

	bne	$15,$0,$L1016
	andi	$24,$4,0x2000

	bne	$24,$0,$L1017
	andi	$25,$4,0x4000

	bne	$25,$0,$L1018
	sra	$4,$4,15

	bne	$4,$0,$L1021
	li	$2,16			# 0x10

	jr	$31
	nop

$L1004:
	jr	$31
	move	$2,$0

$L1005:
	jr	$31
	li	$2,1			# 0x1

$L1016:
	jr	$31
	li	$2,12			# 0xc

$L1021:
	jr	$31
	li	$2,15			# 0xf

$L1006:
	jr	$31
	li	$2,2			# 0x2

$L1007:
	jr	$31
	li	$2,3			# 0x3

$L1008:
	jr	$31
	li	$2,4			# 0x4

$L1009:
	jr	$31
	li	$2,5			# 0x5

$L1010:
	jr	$31
	li	$2,6			# 0x6

$L1011:
	jr	$31
	li	$2,7			# 0x7

$L1012:
	jr	$31
	li	$2,8			# 0x8

$L1013:
	jr	$31
	li	$2,9			# 0x9

$L1014:
	jr	$31
	li	$2,10			# 0xa

$L1015:
	jr	$31
	li	$2,11			# 0xb

$L1017:
	jr	$31
	li	$2,13			# 0xd

$L1018:
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
	c.le.s	$fcc0,$f0,$f12
	bc1tl	$fcc0,$L1029
	sub.s	$f12,$f12,$f0

	trunc.w.s $f1,$f12
	jr	$31
	mfc1	$2,$f1

$L1029:
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
	andi	$5,$4,0x1
	sra	$3,$4,2
	andi	$6,$2,0x1
	addu	$11,$6,$5
	andi	$9,$3,0x1
	sra	$8,$4,3
	addu	$13,$11,$9
	andi	$10,$8,0x1
	sra	$7,$4,4
	addu	$24,$13,$10
	andi	$12,$7,0x1
	sra	$3,$4,5
	addu	$2,$24,$12
	sra	$5,$4,6
	andi	$14,$3,0x1
	andi	$15,$5,0x1
	addu	$12,$2,$14
	sra	$6,$4,7
	addu	$14,$12,$15
	sra	$8,$4,8
	andi	$25,$6,0x1
	sra	$9,$4,9
	andi	$10,$8,0x1
	addu	$25,$14,$25
	andi	$11,$9,0x1
	addu	$2,$25,$10
	sra	$7,$4,10
	addu	$11,$2,$11
	sra	$3,$4,11
	andi	$13,$7,0x1
	sra	$5,$4,12
	andi	$15,$3,0x1
	addu	$7,$11,$13
	andi	$6,$5,0x1
	sra	$24,$4,13
	addu	$12,$7,$15
	sra	$9,$4,14
	andi	$8,$24,0x1
	addu	$13,$12,$6
	andi	$10,$9,0x1
	addu	$3,$13,$8
	sra	$4,$4,15
	addu	$5,$3,$10
	addu	$14,$5,$4
	jr	$31
	andi	$2,$14,0x1

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
	sra	$2,$4,1
	andi	$5,$4,0x1
	sra	$3,$4,2
	andi	$6,$2,0x1
	addu	$11,$6,$5
	andi	$9,$3,0x1
	sra	$8,$4,3
	addu	$13,$11,$9
	andi	$10,$8,0x1
	sra	$7,$4,4
	addu	$24,$13,$10
	andi	$12,$7,0x1
	sra	$3,$4,5
	addu	$2,$24,$12
	sra	$5,$4,6
	andi	$14,$3,0x1
	andi	$15,$5,0x1
	addu	$12,$2,$14
	sra	$6,$4,7
	addu	$14,$12,$15
	sra	$8,$4,8
	andi	$25,$6,0x1
	sra	$9,$4,9
	andi	$10,$8,0x1
	addu	$25,$14,$25
	andi	$11,$9,0x1
	addu	$2,$25,$10
	sra	$7,$4,10
	addu	$11,$2,$11
	sra	$3,$4,11
	andi	$13,$7,0x1
	sra	$5,$4,12
	andi	$15,$3,0x1
	addu	$7,$11,$13
	andi	$6,$5,0x1
	sra	$24,$4,13
	addu	$12,$7,$15
	sra	$9,$4,14
	andi	$8,$24,0x1
	addu	$13,$12,$6
	andi	$10,$9,0x1
	addu	$3,$13,$8
	sra	$4,$4,15
	addu	$5,$3,$10
	jr	$31
	addu	$2,$5,$4

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
	beq	$4,$0,$L1038
	move	$2,$0

$L1034:
	andi	$3,$4,0x1
	subu	$6,$0,$3
	and	$7,$6,$5
	srl	$4,$4,1
	addu	$2,$2,$7
	bne	$4,$0,$L1034
	sll	$5,$5,1

$L1038:
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
	beq	$4,$0,$L1046
	move	$2,$0

	beq	$5,$0,$L1045
	nop

$L1041:
	andi	$3,$5,0x1
	subu	$6,$0,$3
	and	$7,$6,$4
	srl	$5,$5,1
	addu	$2,$2,$7
	bne	$5,$0,$L1041
	sll	$4,$4,1

$L1046:
	jr	$31
	nop

$L1045:
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
	beq	$2,$0,$L1067
	li	$12,1			# 0x1

	.option	pic0
	b	$L1048
	.option	pic2
	li	$2,32			# 0x20

$L1052:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1050
	sll	$12,$12,1

	beq	$2,$0,$L1051
	nop

$L1048:
	bgez	$5,$L1052
	addiu	$2,$2,-1

	move	$2,$0
$L1054:
	sltu	$8,$4,$5
	move	$11,$12
	subu	$9,$4,$5
	xori	$10,$8,0x1
	movz	$11,$0,$10
	srl	$12,$12,1
	or	$2,$2,$11
	movn	$4,$9,$10
	bne	$12,$0,$L1054
	srl	$5,$5,1

$L1051:
	jr	$31
	movn	$2,$4,$6

$L1050:
	bne	$12,$0,$L1054
	move	$2,$0

	.option	pic0
	b	$L1051
	nop

	.option	pic2
$L1067:
	sltu	$3,$4,$5
	subu	$5,$4,$5
	movz	$4,$5,$3
	.option	pic0
	b	$L1051
	.option	pic2
	xori	$2,$3,0x1

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
	c.lt.s	$fcc0,$f12,$f14
	bc1t	$fcc0,$L1071
	nop

	c.lt.s	$fcc1,$f14,$f12
	bc1f	$fcc1,$L1072
	li	$2,1			# 0x1

	jr	$31
	nop

$L1072:
	jr	$31
	move	$2,$0

$L1071:
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
	c.lt.d	$fcc0,$f12,$f14
	bc1t	$fcc0,$L1078
	nop

	c.lt.d	$fcc1,$f14,$f12
	bc1f	$fcc1,$L1079
	li	$2,1			# 0x1

	jr	$31
	nop

$L1079:
	jr	$31
	move	$2,$0

$L1078:
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
	bltzl	$5,$L1098
	subu	$5,$0,$5

	beq	$5,$0,$L1090
	move	$7,$0

$L1086:
	li	$9,32			# 0x20
	.option	pic0
	b	$L1089
	.option	pic2
	move	$2,$0

$L1099:
	beq	$9,$0,$L1088
	nop

$L1089:
	andi	$3,$5,0x1
	addiu	$6,$9,-1
	subu	$8,$0,$3
	andi	$9,$6,0x00ff
	and	$10,$8,$4
	sra	$5,$5,1
	addu	$2,$2,$10
	bne	$5,$0,$L1099
	sll	$4,$4,1

$L1088:
	beq	$7,$0,$L1100
	nop

	jr	$31
	subu	$2,$0,$2

$L1090:
	move	$2,$0
$L1100:
	jr	$31
	nop

$L1098:
	.option	pic0
	b	$L1086
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
	bltzl	$4,$L1125
	subu	$4,$0,$4

	li	$2,1			# 0x1
	move	$9,$0
$L1102:
	bgez	$5,$L1127
	sltu	$7,$5,$4

	subu	$5,$0,$5
	move	$9,$2
	sltu	$7,$5,$4
$L1127:
	move	$6,$4
	beq	$7,$0,$L1126
	move	$14,$5

	li	$8,32			# 0x20
	.option	pic0
	b	$L1104
	.option	pic2
	li	$5,1			# 0x1

$L1108:
	beq	$8,$0,$L1109
	nop

$L1104:
	sll	$14,$14,1
	addiu	$8,$8,-1
	sltu	$10,$14,$4
	bne	$10,$0,$L1108
	sll	$5,$5,1

$L1109:
	beq	$5,$0,$L1107
	move	$2,$0

$L1106:
	sltu	$4,$6,$14
	move	$13,$5
	subu	$11,$6,$14
	xori	$12,$4,0x1
	movz	$13,$0,$12
	srl	$5,$5,1
	or	$2,$2,$13
	movn	$6,$11,$12
	bne	$5,$0,$L1106
	srl	$14,$14,1

$L1107:
	beq	$9,$0,$L1128
	nop

	jr	$31
	subu	$2,$0,$2

$L1128:
	jr	$31
	nop

$L1125:
	move	$2,$0
	.option	pic0
	b	$L1102
	.option	pic2
	li	$9,1			# 0x1

$L1126:
	sltu	$3,$4,$5
	.option	pic0
	b	$L1107
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
	bltzl	$4,$L1152
	subu	$4,$0,$4

	move	$8,$0
$L1130:
	bgez	$5,$L1131
	move	$2,$4

	subu	$5,$0,$5
$L1131:
	sltu	$6,$5,$4
	beq	$6,$0,$L1153
	move	$3,$5

	li	$9,32			# 0x20
	.option	pic0
	b	$L1132
	.option	pic2
	li	$11,1			# 0x1

$L1136:
	beq	$9,$0,$L1137
	nop

$L1132:
	sll	$3,$3,1
	addiu	$9,$9,-1
	sltu	$7,$3,$4
	bne	$7,$0,$L1136
	sll	$11,$11,1

$L1137:
	beql	$11,$0,$L1135
	move	$2,$4

$L1134:
	subu	$4,$2,$3
	sltu	$10,$2,$3
	srl	$11,$11,1
	movz	$2,$4,$10
	bne	$11,$0,$L1134
	srl	$3,$3,1

$L1135:
	beq	$8,$0,$L1155
	nop

	jr	$31
	subu	$2,$0,$2

$L1155:
	jr	$31
	nop

$L1152:
	.option	pic0
	b	$L1130
	.option	pic2
	li	$8,1			# 0x1

$L1153:
	subu	$2,$4,$5
	sltu	$5,$4,$5
	.option	pic0
	b	$L1135
	.option	pic2
	movn	$2,$4,$5

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
	beq	$2,$0,$L1238
	sll	$8,$5,16

	sra	$9,$8,16
	bltz	$9,$L1159
	sll	$10,$5,1

	andi	$3,$10,0xffff
	sltu	$11,$3,$4
	beq	$11,$0,$L1166
	sll	$12,$3,16

	sra	$13,$12,16
	bltz	$13,$L1166
	sll	$14,$5,2

	andi	$3,$14,0xffff
	sltu	$15,$3,$4
	beq	$15,$0,$L1168
	sll	$24,$3,16

	sra	$25,$24,16
	bltz	$25,$L1168
	sll	$2,$5,3

	andi	$3,$2,0xffff
	sltu	$7,$3,$4
	beq	$7,$0,$L1170
	sll	$8,$3,16

	sra	$9,$8,16
	bltzl	$9,$L1161
	li	$15,8			# 0x8

	sll	$3,$5,4
	andi	$3,$3,0xffff
	sltu	$10,$3,$4
	beq	$10,$0,$L1172
	sll	$11,$3,16

	sra	$12,$11,16
	bltz	$12,$L1172
	sll	$13,$5,5

	andi	$3,$13,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,$L1161
	li	$15,32			# 0x20

	sll	$15,$3,16
	sra	$24,$15,16
	bltz	$24,$L1174
	sll	$25,$5,6

	andi	$3,$25,0xffff
	sltu	$2,$3,$4
	beq	$2,$0,$L1176
	sll	$7,$3,16

	sra	$8,$7,16
	bltz	$8,$L1176
	sll	$9,$5,7

	andi	$3,$9,0xffff
	sltu	$10,$3,$4
	beq	$10,$0,$L1178
	sll	$11,$3,16

	sra	$12,$11,16
	bltzl	$12,$L1161
	li	$15,128			# 0x80

	sll	$3,$5,8
	andi	$3,$3,0xffff
	sltu	$13,$3,$4
	beq	$13,$0,$L1180
	sll	$14,$3,16

	sra	$15,$14,16
	bltz	$15,$L1180
	sll	$24,$5,9

	andi	$3,$24,0xffff
	sltu	$25,$3,$4
	beq	$25,$0,$L1182
	sll	$2,$3,16

	sra	$7,$2,16
	bltz	$7,$L1182
	sll	$8,$5,10

	andi	$3,$8,0xffff
	sltu	$9,$3,$4
	beq	$9,$0,$L1184
	sll	$10,$3,16

	sra	$11,$10,16
	bltz	$11,$L1184
	sll	$12,$5,11

	andi	$3,$12,0xffff
	sltu	$13,$3,$4
	beq	$13,$0,$L1186
	sll	$14,$3,16

	sra	$15,$14,16
	bltzl	$15,$L1161
	li	$15,2048			# 0x800

	sll	$3,$5,12
	andi	$3,$3,0xffff
	sltu	$24,$3,$4
	beq	$24,$0,$L1188
	sll	$25,$3,16

	sra	$2,$25,16
	bltz	$2,$L1188
	sll	$7,$5,13

	andi	$3,$7,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,$L1190
	sll	$9,$3,16

	sra	$10,$9,16
	bltz	$10,$L1190
	sll	$11,$5,14

	andi	$3,$11,0xffff
	sltu	$12,$3,$4
	beq	$12,$0,$L1192
	sll	$13,$3,16

	sra	$14,$13,16
	bltz	$14,$L1192
	sll	$5,$5,15

	andi	$5,$5,0xffff
	sltu	$24,$5,$4
	beql	$24,$0,$L1193
	li	$3,32768			# 0x8000

	bne	$5,$0,$L1239
	move	$2,$4

$L1162:
	jr	$31
	movz	$2,$5,$6

$L1166:
	li	$15,2			# 0x2
$L1161:
	sltu	$25,$4,$3
	subu	$2,$4,$3
	move	$10,$15
	andi	$2,$2,0xffff
	xori	$9,$25,0x1
	movz	$2,$4,$9
	srl	$8,$3,1
	sltu	$11,$2,$8
	subu	$12,$2,$8
	srl	$7,$15,1
	xori	$5,$11,0x1
	movn	$10,$0,$25
	andi	$14,$12,0xffff
	movn	$7,$0,$11
	srl	$13,$15,2
	movn	$2,$14,$5
	or	$5,$10,$7
	beq	$13,$0,$L1162
	srl	$4,$3,2

	sltu	$24,$2,$4
	subu	$25,$2,$4
	xori	$9,$24,0x1
	andi	$10,$25,0xffff
	movz	$13,$0,$9
	srl	$7,$15,3
	or	$5,$5,$13
	srl	$8,$3,3
	beq	$7,$0,$L1162
	movn	$2,$10,$9

	sltu	$11,$2,$8
	subu	$12,$2,$8
	xori	$14,$11,0x1
	andi	$24,$12,0xffff
	movz	$7,$0,$14
	srl	$13,$15,4
	or	$5,$5,$7
	srl	$4,$3,4
	beq	$13,$0,$L1162
	movn	$2,$24,$14

	sltu	$25,$2,$4
	subu	$7,$2,$4
	xori	$9,$25,0x1
	andi	$10,$7,0xffff
	movz	$13,$0,$9
	srl	$11,$15,5
	or	$5,$5,$13
	srl	$8,$3,5
	beq	$11,$0,$L1162
	movn	$2,$10,$9

	sltu	$12,$2,$8
	subu	$13,$2,$8
	xori	$24,$12,0x1
	andi	$25,$13,0xffff
	movz	$11,$0,$24
	srl	$14,$15,6
	or	$5,$5,$11
	srl	$4,$3,6
	beq	$14,$0,$L1162
	movn	$2,$25,$24

	sltu	$7,$2,$4
	subu	$10,$2,$4
	xori	$9,$7,0x1
	andi	$12,$10,0xffff
	movz	$14,$0,$9
	srl	$11,$15,7
	or	$5,$5,$14
	srl	$8,$3,7
	beq	$11,$0,$L1162
	movn	$2,$12,$9

	sltu	$13,$2,$8
	subu	$14,$2,$8
	xori	$25,$13,0x1
	andi	$7,$14,0xffff
	movz	$11,$0,$25
	srl	$24,$15,8
	or	$5,$5,$11
	srl	$4,$3,8
	beq	$24,$0,$L1162
	movn	$2,$7,$25

	sltu	$10,$2,$4
	subu	$12,$2,$4
	xori	$9,$10,0x1
	andi	$13,$12,0xffff
	movz	$24,$0,$9
	srl	$11,$15,9
	or	$5,$5,$24
	srl	$8,$3,9
	beq	$11,$0,$L1162
	movn	$2,$13,$9

	sltu	$14,$2,$8
	subu	$24,$2,$8
	xori	$7,$14,0x1
	andi	$10,$24,0xffff
	movz	$11,$0,$7
	srl	$25,$15,10
	or	$5,$5,$11
	srl	$4,$3,10
	beq	$25,$0,$L1162
	movn	$2,$10,$7

	sltu	$12,$2,$4
	subu	$13,$2,$4
	xori	$9,$12,0x1
	andi	$14,$13,0xffff
	movz	$25,$0,$9
	srl	$11,$15,11
	or	$5,$5,$25
	srl	$8,$3,11
	beq	$11,$0,$L1162
	movn	$2,$14,$9

	sltu	$24,$2,$8
	subu	$25,$2,$8
	xori	$10,$24,0x1
	andi	$12,$25,0xffff
	movz	$11,$0,$10
	srl	$7,$15,12
	or	$5,$5,$11
	srl	$4,$3,12
	beq	$7,$0,$L1162
	movn	$2,$12,$10

	sltu	$13,$2,$4
	subu	$14,$2,$4
	xori	$9,$13,0x1
	andi	$24,$14,0xffff
	movz	$7,$0,$9
	srl	$11,$15,13
	or	$5,$5,$7
	srl	$8,$3,13
	beq	$11,$0,$L1162
	movn	$2,$24,$9

	sltu	$25,$2,$8
	subu	$7,$2,$8
	xori	$12,$25,0x1
	andi	$13,$7,0xffff
	movz	$11,$0,$12
	srl	$10,$15,14
	or	$5,$5,$11
	srl	$4,$3,14
	beq	$10,$0,$L1162
	movn	$2,$13,$12

	sltu	$14,$2,$4
	subu	$11,$2,$4
	xori	$8,$14,0x1
	andi	$24,$11,0xffff
	movz	$10,$0,$8
	li	$9,16384			# 0x4000
	srl	$3,$3,15
	or	$5,$5,$10
	beq	$15,$9,$L1162
	movn	$2,$24,$8

	subu	$15,$2,$3
	sltu	$25,$2,$3
	xori	$7,$25,0x1
	andi	$10,$15,0xffff
	movn	$2,$10,$7
	or	$5,$7,$5
	jr	$31
	movz	$2,$5,$6

$L1168:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,4			# 0x4

$L1170:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,8			# 0x8

$L1172:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,16			# 0x10

$L1182:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,512			# 0x200

$L1174:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,32			# 0x20

$L1176:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,64			# 0x40

$L1178:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,128			# 0x80

$L1180:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,256			# 0x100

$L1238:
	subu	$7,$4,$5
	xor	$3,$5,$4
	andi	$2,$7,0xffff
	sltu	$5,$3,1
	.option	pic0
	b	$L1162
	.option	pic2
	movn	$2,$4,$3

$L1184:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,1024			# 0x400

$L1186:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,2048			# 0x800

$L1188:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,4096			# 0x1000

$L1190:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,8192			# 0x2000

$L1192:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,16384			# 0x4000

$L1239:
	li	$15,32768			# 0x8000
	.option	pic0
	b	$L1161
	.option	pic2
	li	$3,32768			# 0x8000

$L1193:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$15,32768			# 0x8000

$L1159:
	subu	$4,$4,$5
	li	$5,1			# 0x1
	.option	pic0
	b	$L1162
	.option	pic2
	andi	$2,$4,0xffff

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
	beq	$2,$0,$L1260
	li	$12,1			# 0x1

	.option	pic0
	b	$L1241
	.option	pic2
	li	$2,32			# 0x20

$L1245:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L1243
	sll	$12,$12,1

	beq	$2,$0,$L1244
	nop

$L1241:
	bgez	$5,$L1245
	addiu	$2,$2,-1

	move	$2,$0
$L1247:
	sltu	$8,$4,$5
	move	$11,$12
	subu	$9,$4,$5
	xori	$10,$8,0x1
	movz	$11,$0,$10
	srl	$12,$12,1
	or	$2,$2,$11
	movn	$4,$9,$10
	bne	$12,$0,$L1247
	srl	$5,$5,1

$L1244:
	jr	$31
	movn	$2,$4,$6

$L1243:
	bne	$12,$0,$L1247
	move	$2,$0

	.option	pic0
	b	$L1244
	nop

	.option	pic2
$L1260:
	sltu	$3,$4,$5
	subu	$5,$4,$5
	movz	$4,$5,$3
	.option	pic0
	b	$L1244
	.option	pic2
	xori	$2,$3,0x1

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
	beq	$2,$0,$L1262
	addiu	$7,$6,-32

	move	$2,$0
	sll	$5,$4,$7
	jr	$31
	move	$3,$5

$L1262:
	beql	$6,$0,$L1265
	move	$2,$4

	li	$3,32			# 0x20
	sll	$2,$4,$6
	sll	$5,$5,$6
	subu	$6,$3,$6
	srl	$4,$4,$6
	or	$5,$4,$5
	jr	$31
	move	$3,$5

$L1265:
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
	beq	$2,$0,$L1267
	sra	$3,$5,31

	addiu	$6,$6,-32
	jr	$31
	sra	$2,$5,$6

$L1267:
	beq	$6,$0,$L1270
	li	$7,32			# 0x20

	srl	$8,$4,$6
	subu	$4,$7,$6
	sra	$3,$5,$6
	sll	$5,$5,$4
	jr	$31
	or	$2,$5,$8

$L1270:
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
	li	$9,16711680			# 0xff0000
	srl	$2,$4,24
	or	$11,$6,$2
	srl	$8,$5,8
	andi	$10,$11,0xff
	sll	$3,$4,24
	andi	$13,$8,0xff00
	srl	$7,$4,8
	or	$24,$3,$10
	srl	$12,$5,24
	and	$25,$11,$9
	sll	$4,$4,8
	andi	$14,$7,0xff00
	or	$15,$12,$13
	and	$9,$4,$9
	sll	$5,$5,24
	or	$6,$24,$14
	or	$2,$15,$25
	or	$3,$6,$9
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
	li	$5,16711680			# 0xff0000
	sll	$6,$4,24
	srl	$3,$4,8
	or	$7,$2,$6
	sll	$4,$4,8
	andi	$8,$3,0xff00
	and	$9,$4,$5
	or	$10,$7,$8
	jr	$31
	or	$2,$10,$9

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
	li	$2,65536			# 0x10000
	li	$3,16			# 0x10
	sltu	$8,$4,$2
	li	$5,8			# 0x8
	sll	$9,$8,4
	li	$7,4			# 0x4
	subu	$10,$3,$9
	li	$6,2			# 0x2
	srl	$11,$4,$10
	andi	$4,$11,0xff00
	sltu	$12,$4,1
	sll	$13,$12,3
	subu	$14,$5,$13
	addu	$15,$13,$9
	srl	$24,$11,$14
	andi	$25,$24,0xf0
	sltu	$2,$25,1
	sll	$3,$2,2
	subu	$5,$7,$3
	addu	$7,$3,$15
	srl	$8,$24,$5
	andi	$9,$8,0xc
	sltu	$10,$9,1
	sll	$11,$10,1
	subu	$4,$6,$11
	addu	$12,$11,$7
	srl	$13,$8,$4
	subu	$6,$6,$13
	andi	$14,$13,0x2
	movn	$6,$0,$14
	jr	$31
	addu	$2,$6,$12

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
	bne	$2,$0,$L1278
	slt	$5,$7,$5

	bne	$5,$0,$L1277
	sltu	$3,$4,$6

	bne	$3,$0,$L1278
	sltu	$4,$6,$4

	bne	$4,$0,$L1279
	nop

	jr	$31
	li	$2,1			# 0x1

$L1278:
	jr	$31
	move	$2,$0

$L1277:
	jr	$31
	li	$2,2			# 0x2

$L1279:
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
	bne	$2,$0,$L1282
	slt	$5,$7,$5

	bne	$5,$0,$L1283
	sltu	$3,$4,$6

	bne	$3,$0,$L1284
	nop

	jr	$31
	sltu	$2,$6,$4

$L1282:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1284:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1283:
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
	andi	$5,$4,0xffff
	li	$6,2			# 0x2
	sltu	$2,$5,1
	sll	$7,$2,4
	srl	$3,$4,$7
	andi	$4,$3,0xff
	sltu	$8,$4,1
	sll	$9,$8,3
	srl	$10,$3,$9
	addu	$11,$9,$7
	andi	$12,$10,0xf
	sltu	$13,$12,1
	sll	$14,$13,2
	srl	$15,$10,$14
	addu	$24,$14,$11
	andi	$25,$15,0x3
	sltu	$5,$25,1
	sll	$2,$5,1
	srl	$7,$15,$2
	addu	$8,$2,$24
	andi	$3,$7,0x3
	nor	$4,$0,$3
	srl	$9,$3,1
	andi	$10,$4,0x1
	subu	$6,$6,$9
	subu	$11,$0,$10
	and	$12,$11,$6
	jr	$31
	addu	$2,$12,$8

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
	beq	$2,$0,$L1287
	move	$3,$0

	addiu	$6,$6,-32
	jr	$31
	srl	$2,$5,$6

$L1287:
	beq	$6,$0,$L1290
	li	$7,32			# 0x20

	srl	$8,$4,$6
	subu	$4,$7,$6
	srl	$3,$5,$6
	sll	$5,$5,$4
	jr	$31
	or	$2,$5,$8

$L1290:
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
	andi	$6,$4,0xffff
	andi	$3,$5,0xffff
	gsmultu	$2,$6,$3
	srl	$4,$4,16
	andi	$12,$2,0xffff
	srl	$7,$2,16
	gsmultu	$8,$3,$4
	addu	$10,$8,$7
	srl	$5,$5,16
	andi	$13,$10,0xffff
	gsmultu	$9,$6,$5
	srl	$14,$10,16
	addu	$15,$9,$13
	gsmultu	$11,$4,$5
	srl	$25,$15,16
	addu	$24,$14,$11
	sll	$6,$15,16
	addu	$3,$24,$25
	jr	$31
	addu	$2,$12,$6

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
	gsmultu	$2,$8,$3
	srl	$9,$4,16
	gsmultu	$4,$4,$7
	andi	$24,$2,0xffff
	srl	$11,$2,16
	gsmultu	$12,$3,$9
	addu	$14,$12,$11
	srl	$10,$6,16
	andi	$7,$14,0xffff
	gsmultu	$6,$6,$5
	gsmultu	$13,$8,$10
	srl	$25,$14,16
	addu	$8,$13,$7
	gsmultu	$15,$9,$10
	srl	$5,$8,16
	addu	$3,$25,$15
	addu	$10,$3,$5
	sll	$9,$8,16
	addu	$11,$4,$10
	addu	$2,$24,$9
	jr	$31
	addu	$3,$11,$6

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
	sltu	$3,$0,$4
	subu	$5,$0,$5
	subu	$2,$0,$4
	jr	$31
	subu	$3,$5,$3

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
	li	$2,27030			# 0x6996
	srl	$3,$5,16
	xor	$6,$3,$5
	srl	$4,$6,8
	xor	$7,$4,$6
	srl	$8,$7,4
	xor	$9,$8,$7
	andi	$10,$9,0xf
	sra	$11,$2,$10
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
	srl	$3,$4,16
	li	$2,27030			# 0x6996
	xor	$5,$3,$4
	srl	$4,$5,8
	xor	$6,$4,$5
	srl	$7,$6,4
	xor	$8,$7,$6
	andi	$9,$8,0xf
	sra	$10,$2,$9
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
	li	$7,1431633920			# 0x55550000
	srl	$9,$4,1
	addiu	$10,$7,21845
	or	$12,$2,$9
	li	$3,858980352			# 0x33330000
	and	$15,$12,$10
	addiu	$11,$3,13107
	srl	$8,$5,1
	subu	$24,$4,$15
	and	$13,$8,$10
	sltu	$4,$4,$24
	subu	$5,$5,$13
	li	$6,252641280			# 0xf0f0000
	subu	$3,$5,$4
	and	$10,$24,$11
	srl	$25,$24,2
	and	$9,$3,$11
	sll	$2,$3,30
	addiu	$14,$6,3855
	or	$8,$2,$25
	srl	$7,$3,2
	and	$6,$7,$11
	and	$11,$8,$11
	addu	$13,$11,$10
	addu	$12,$6,$9
	sltu	$15,$13,$11
	addu	$4,$15,$12
	srl	$24,$13,4
	sll	$25,$4,28
	or	$10,$25,$24
	addu	$2,$10,$13
	srl	$5,$4,4
	sltu	$3,$2,$10
	addu	$7,$5,$4
	and	$9,$2,$14
	addu	$8,$3,$7
	and	$14,$8,$14
	addu	$6,$14,$9
	srl	$11,$6,16
	addu	$12,$11,$6
	srl	$13,$12,8
	addu	$15,$13,$12
	jr	$31
	andi	$2,$15,0x7f

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
	li	$5,1431633920			# 0x55550000
	li	$2,858980352			# 0x33330000
	addiu	$6,$5,21845
	addiu	$7,$2,13107
	srl	$9,$4,1
	li	$3,252641280			# 0xf0f0000
	and	$10,$9,$6
	addiu	$8,$3,3855
	subu	$4,$4,$10
	srl	$11,$4,2
	and	$12,$4,$7
	and	$13,$11,$7
	addu	$14,$13,$12
	srl	$15,$14,4
	addu	$24,$15,$14
	and	$25,$24,$8
	srl	$5,$25,16
	addu	$3,$5,$25
	srl	$2,$3,8
	addu	$6,$2,$3
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
	andi	$2,$6,0x1
	beq	$2,$0,$L1304
	lui	$5,%hi($LC10)

	ldc1	$f0,%lo($LC10)($5)
	move	$2,$6
$L1301:
	mul.d	$f0,$f0,$f12
$L1299:
	srl	$3,$2,31
	addu	$4,$3,$2
	sra	$2,$4,1
	beq	$2,$0,$L1300
	srl	$7,$2,31

	andi	$8,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$8,$0,$L1301
	addu	$3,$7,$2

	sra	$2,$3,1
$L1308:
	mul.d	$f12,$f12,$f12
	srl	$7,$2,31
	andi	$8,$2,0x1
	bne	$8,$0,$L1301
	addu	$3,$7,$2

	.option	pic0
	b	$L1308
	.option	pic2
	sra	$2,$3,1

$L1300:
	bltz	$6,$L1307
	ldc1	$f2,%lo($LC10)($5)

	jr	$31
	nop

$L1304:
	ldc1	$f0,%lo($LC10)($5)
	.option	pic0
	b	$L1299
	.option	pic2
	move	$2,$6

$L1307:
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
	andi	$2,$5,0x1
	beq	$2,$0,$L1315
	lui	$6,%hi($LC13)

	lwc1	$f0,%lo($LC13)($6)
	move	$2,$5
$L1312:
	mul.s	$f0,$f0,$f12
$L1310:
	srl	$3,$2,31
	addu	$4,$3,$2
	sra	$2,$4,1
	beq	$2,$0,$L1311
	srl	$7,$2,31

	andi	$8,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$8,$0,$L1312
	addu	$3,$7,$2

	sra	$2,$3,1
$L1319:
	mul.s	$f12,$f12,$f12
	srl	$7,$2,31
	andi	$8,$2,0x1
	bne	$8,$0,$L1312
	addu	$3,$7,$2

	.option	pic0
	b	$L1319
	.option	pic2
	sra	$2,$3,1

$L1311:
	bltz	$5,$L1318
	lwc1	$f1,%lo($LC13)($6)

	jr	$31
	nop

$L1315:
	lwc1	$f0,%lo($LC13)($6)
	.option	pic0
	b	$L1310
	.option	pic2
	move	$2,$5

$L1318:
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
	bne	$2,$0,$L1324
	sltu	$5,$7,$5

	bne	$5,$0,$L1323
	sltu	$3,$4,$6

	bne	$3,$0,$L1324
	sltu	$4,$6,$4

	bne	$4,$0,$L1325
	nop

	jr	$31
	li	$2,1			# 0x1

$L1324:
	jr	$31
	move	$2,$0

$L1323:
	jr	$31
	li	$2,2			# 0x2

$L1325:
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
	bne	$2,$0,$L1328
	sltu	$5,$7,$5

	bne	$5,$0,$L1329
	sltu	$3,$4,$6

	bne	$3,$0,$L1330
	nop

	jr	$31
	sltu	$2,$6,$4

$L1328:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1330:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1329:
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
