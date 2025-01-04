	.file	1 "mini-libc.c"
	.section .mdebug.abi32
	.previous
	.nan	2008
	.module	fp=32
	.module	oddspreg
	.module	arch=mips64r2
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

	addu	$14,$5,$6
	beq	$6,$0,$L34
	addu	$13,$4,$6

$L4:
	lb	$11,-1($14)
	addiu	$13,$13,-1
	addiu	$14,$14,-1
	bne	$2,$13,$L4
	sb	$11,0($13)

$L34:
	jr	$31
	nop

$L2:
	bne	$4,$5,$L30
	nop

	jr	$31
	nop

$L30:
	beq	$6,$0,$L34
	addiu	$4,$6,-1

	sltu	$7,$4,7
	bne	$7,$0,$L5
	addiu	$12,$5,1

	or	$8,$5,$2
	andi	$9,$8,0x3
	bnel	$9,$0,$L33
	addu	$8,$2,$6

	subu	$10,$2,$12
	sltu	$11,$10,3
	bne	$11,$0,$L5
	move	$15,$2

	move	$12,$6
	ins	$12,$0,0,2
	addu	$13,$5,$12
$L6:
	lw	$14,0($5)
	addiu	$5,$5,4
	sw	$14,0($15)
	bne	$13,$5,$L6
	addiu	$15,$15,4

	addu	$24,$2,$12
	beq	$6,$12,$L34
	subu	$25,$6,$12

	lb	$6,0($13)
	li	$5,1			# 0x1
	beq	$25,$5,$L34
	sb	$6,0($24)

	lb	$3,1($13)
	li	$4,2			# 0x2
	beq	$25,$4,$L34
	sb	$3,1($24)

	lb	$7,2($13)
	jr	$31
	sb	$7,2($24)

$L5:
	addu	$8,$2,$6
$L33:
	.option	pic0
	b	$L9
	.option	pic2
	move	$10,$2

$L31:
	addiu	$12,$12,1
$L9:
	lb	$9,-1($12)
	addiu	$10,$10,1
	bne	$10,$8,$L31
	sb	$9,-1($10)

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
	bne	$7,$0,$L36
	andi	$6,$6,0x00ff

	jr	$31
	move	$2,$0

$L39:
	addiu	$5,$5,1
	beq	$7,$0,$L38
	addiu	$4,$4,1

$L36:
	lbu	$2,0($5)
	addiu	$7,$7,-1
	bne	$2,$6,$L39
	sb	$2,0($4)

	jr	$31
	addiu	$2,$4,1

$L38:
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
	bne	$6,$0,$L48
	andi	$5,$5,0x00ff

	jr	$31
	move	$2,$0

$L50:
	beq	$6,$0,$L51
	addiu	$4,$4,1

$L48:
	lbu	$2,0($4)
	bne	$2,$5,$L50
	addiu	$6,$6,-1

	jr	$31
	move	$2,$4

$L51:
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
	b	$L69
	nop

	.option	pic2
$L71:
	lbu	$3,0($5)
	bne	$2,$3,$L70
	addiu	$6,$6,-1

	addiu	$4,$4,1
	addiu	$5,$5,1
$L69:
	bnel	$6,$0,$L71
	lbu	$2,0($4)

	jr	$31
	move	$2,$0

$L70:
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
	beq	$6,$0,$L73
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

$L73:
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
	b	$L79
	.option	pic2
	addiu	$4,$4,-1

$L81:
	lbu	$3,0($2)
	beq	$3,$5,$L82
	addiu	$7,$7,-1

$L79:
	bne	$7,$4,$L81
	move	$2,$7

	move	$2,$0
$L82:
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
	beq	$6,$0,$L86
	move	$16,$4

	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	andi	$5,$5,0x00ff

$L86:
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
	beq	$3,$0,$L95
	sb	$3,0($4)

$L90:
	lb	$4,1($5)
	addiu	$2,$2,1
	addiu	$5,$5,1
	bne	$4,$0,$L90
	sb	$4,0($2)

$L95:
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
	bne	$4,$0,$L97
	andi	$5,$5,0x00ff

$L105:
	jr	$31
	nop

$L99:
	beq	$4,$0,$L105
	addiu	$2,$2,1

$L97:
	andi	$3,$4,0x00ff
	bnel	$3,$5,$L99
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
	b	$L108
	.option	pic2
	move	$2,$4

$L111:
	beq	$3,$0,$L110
	addiu	$2,$2,1

$L108:
	lb	$3,0($2)
	bne	$3,$5,$L111
	nop

	jr	$31
	nop

$L110:
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
$L115:
	lb	$3,0($4)
	lb	$2,0($5)
	bne	$3,$2,$L122
	addiu	$4,$4,1

	bne	$3,$0,$L115
	addiu	$5,$5,1

$L114:
	andi	$4,$2,0x00ff
	jr	$31
	subu	$2,$3,$4

$L122:
	.option	pic0
	b	$L114
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
	beq	$2,$0,$L126
	move	$5,$4

$L125:
	lb	$3,1($5)
	bne	$3,$0,$L125
	addiu	$5,$5,1

	jr	$31
	subu	$2,$5,$4

$L126:
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
	beq	$6,$0,$L136
	nop

	lbu	$2,0($4)
	beq	$2,$0,$L138
	addiu	$6,$6,-1

	.option	pic0
	b	$L132
	.option	pic2
	addu	$8,$4,$6

$L140:
	beq	$4,$8,$L131
	nop

	bne	$3,$2,$L131
	addiu	$4,$4,1

	lbu	$2,0($4)
	beql	$2,$0,$L139
	lbu	$3,1($5)

	move	$5,$7
$L132:
	lbu	$3,0($5)
	bne	$3,$0,$L140
	addiu	$7,$5,1

$L131:
	jr	$31
	subu	$2,$2,$3

$L136:
	jr	$31
	move	$2,$0

$L139:
	jr	$31
	subu	$2,$2,$3

$L138:
	.option	pic0
	b	$L131
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
	bne	$2,$0,$L145
	ins	$6,$0,0,1

	addu	$6,$4,$6
$L143:
	lbu	$3,1($4)
	lbu	$7,0($4)
	addiu	$4,$4,2
	sb	$3,0($5)
	sb	$7,1($5)
	bne	$4,$6,$L143
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
	sltu	$2,$4,32
	bne	$2,$0,$L153
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

$L153:
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
	beq	$4,$2,$L160
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

$L160:
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
	bne	$2,$0,$L165
	addiu	$3,$4,-127

	sltu	$5,$3,33
	beq	$5,$0,$L167
	addiu	$6,$4,-8232

$L165:
	jr	$31
	li	$2,1			# 0x1

$L167:
	sltu	$7,$6,2
	bne	$7,$0,$L166
	li	$8,-65536			# 0xffffffffffff0000

	addiu	$9,$8,7
	addu	$4,$4,$9
	jr	$31
	sltu	$2,$4,3

$L166:
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
	bne	$2,$0,$L176
	sltu	$3,$4,8232

	bne	$3,$0,$L174
	addiu	$5,$4,-8234

	li	$6,47062			# 0xb7d6
	sltu	$7,$5,$6
	bne	$7,$0,$L174
	li	$8,-65536			# 0xffffffffffff0000

	addiu	$9,$8,8192
	addu	$10,$4,$9
	sltu	$11,$10,8185
	bne	$11,$0,$L174
	addiu	$12,$8,4

	li	$13,1048576			# 0x100000
	addu	$14,$4,$12
	addiu	$15,$13,4
	sltu	$24,$14,$15
	beq	$24,$0,$L175
	andi	$4,$4,0xfffe

	xori	$25,$4,0xfffe
	jr	$31
	sltu	$2,$0,$25

$L174:
	jr	$31
	li	$2,1			# 0x1

$L176:
	addiu	$2,$4,1
	andi	$3,$2,0x7f
	sltu	$5,$3,33
	jr	$31
	xori	$2,$5,0x1

$L175:
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
	bne	$3,$0,$L179
	ori	$4,$4,0x20

	addiu	$5,$4,-97
	jr	$31
	sltu	$2,$5,6

$L179:
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
	bc1t	$fcc0,$L184
	c.un.d	$fcc1,$f14,$f14

	bc1t	$fcc1,$L185
	nop

	c.lt.d	$fcc2,$f14,$f12
	bc1fl	$fcc2,$L188
	mtc1	$0,$f0

	jr	$31
	sub.d	$f0,$f12,$f14

$L188:
	jr	$31
	mtc1	$0,$f1

$L184:
	jr	$31
	mov.d	$f0,$f12

$L185:
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
	bc1t	$fcc0,$L192
	c.un.s	$fcc1,$f14,$f14

	bc1t	$fcc1,$L193
	nop

	c.lt.s	$fcc2,$f14,$f12
	bc1f	$fcc2,$L196
	nop

	jr	$31
	sub.s	$f0,$f12,$f14

$L196:
	jr	$31
	mtc1	$0,$f0

$L192:
	jr	$31
	mov.s	$f0,$f12

$L193:
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
	bc1t	$fcc0,$L204
	sdc1	$f14,8($sp)

	c.un.d	$fcc1,$f14,$f14
	bc1t	$fcc1,$L201
	lw	$2,4($sp)

	lw	$3,12($sp)
	ins	$2,$0,0,31
	ins	$3,$0,0,31
	beql	$2,$3,$L199
	c.lt.d	$fcc2,$f12,$f14

	beq	$2,$0,$L201
	nop

$L204:
	jr	$31
	nop

$L199:
	mov.d	$f0,$f12
	jr	$31
	movt.d	$f0,$f14,$fcc2

$L201:
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
	bc1t	$fcc0,$L211
	swc1	$f14,4($sp)

	c.un.s	$fcc1,$f14,$f14
	bc1t	$fcc1,$L209
	lw	$2,0($sp)

	lw	$3,4($sp)
	ins	$2,$0,0,31
	ins	$3,$0,0,31
	beq	$2,$3,$L207
	mov.s	$f0,$f12

	jr	$31
	movn.s	$f0,$f14,$2

$L207:
	c.lt.s	$fcc2,$f12,$f14
	jr	$31
	movt.s	$f0,$f14,$fcc2

$L211:
	jr	$31
	nop

$L209:
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
	bc1t	$fcc0,$L219
	sdc1	$f14,8($sp)

	c.un.d	$fcc1,$f14,$f14
	bc1t	$fcc1,$L216
	lw	$2,4($sp)

	lw	$3,12($sp)
	ins	$2,$0,0,31
	ins	$3,$0,0,31
	beql	$2,$3,$L214
	c.lt.d	$fcc2,$f12,$f14

	beq	$2,$0,$L216
	nop

$L219:
	jr	$31
	nop

$L214:
	mov.d	$f0,$f12
	jr	$31
	movt.d	$f0,$f14,$fcc2

$L216:
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
	bc1t	$fcc0,$L227
	sdc1	$f14,8($sp)

	c.un.d	$fcc1,$f14,$f14
	bc1t	$fcc1,$L224
	lw	$2,4($sp)

	lw	$3,12($sp)
	ins	$2,$0,0,31
	ins	$3,$0,0,31
	beql	$2,$3,$L222
	c.lt.d	$fcc2,$f12,$f14

	bne	$2,$0,$L225
	nop

$L227:
	jr	$31
	nop

$L222:
	ldc1	$f2,0($sp)
	jr	$31
	movt.d	$f0,$f2,$fcc2

$L225:
	jr	$31
	mov.d	$f0,$f12

$L224:
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
	bc1t	$fcc0,$L234
	swc1	$f14,4($sp)

	c.un.s	$fcc1,$f14,$f14
	bc1t	$fcc1,$L232
	lw	$2,0($sp)

	lw	$3,4($sp)
	ins	$2,$0,0,31
	ins	$3,$0,0,31
	beql	$2,$3,$L230
	c.lt.s	$fcc2,$f12,$f14

	jr	$31
	movn.s	$f0,$f12,$2

$L230:
	lwc1	$f1,0($sp)
	jr	$31
	movt.s	$f0,$f1,$fcc2

$L234:
	jr	$31
	nop

$L232:
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
	bc1t	$fcc0,$L242
	sdc1	$f14,8($sp)

	c.un.d	$fcc1,$f14,$f14
	bc1t	$fcc1,$L239
	lw	$2,4($sp)

	lw	$3,12($sp)
	ins	$2,$0,0,31
	ins	$3,$0,0,31
	beql	$2,$3,$L237
	c.lt.d	$fcc2,$f12,$f14

	bne	$2,$0,$L240
	nop

$L242:
	jr	$31
	nop

$L237:
	ldc1	$f2,0($sp)
	jr	$31
	movt.d	$f0,$f2,$fcc2

$L240:
	jr	$31
	mov.d	$f0,$f12

$L239:
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
	beq	$4,$0,$L246
	addiu	$2,$2,%lo(s.0)

	lui	$6,%hi(digits)
	move	$5,$2
	addiu	$7,$6,%lo(digits)
$L245:
	andi	$3,$4,0x3f
	addu	$8,$7,$3
	lbu	$9,0($8)
	srl	$4,$4,6
	sb	$9,0($5)
	bne	$4,$0,$L245
	addiu	$5,$5,1

	jr	$31
	sb	$0,0($5)

$L246:
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
	addiu	$sp,$sp,-16
	lw	$3,%lo(seed+4)($5)
	sw	$2,8($sp)
	lw	$10,8($sp)
	li	$6,1284833280			# 0x4c950000
	sw	$3,12($sp)
	addiu	$7,$6,32557
	multu	$ac0,$10,$7
	lw	$13,12($sp)
	mflo	$8
	mfhi	$9
	mul	$14,$13,$7
	li	$4,1481703424			# 0x58510000
	addiu	$24,$8,1
	ori	$11,$4,0xf42d
	gsmultu	$12,$10,$11
	addu	$15,$14,$12
	sltu	$2,$24,$8
	addu	$25,$15,$9
	addu	$6,$2,$25
	srl	$2,$6,1
	sw	$24,%lo(seed)($5)
	sw	$6,%lo(seed+4)($5)
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
	beql	$5,$0,$L257
	sw	$0,4($4)

	lw	$2,0($5)
	sw	$5,4($4)
	sw	$2,0($4)
	sw	$4,0($5)
	lw	$3,0($4)
	bnel	$3,$0,$L259
	sw	$4,4($3)

$L259:
	jr	$31
	nop

$L257:
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
	beql	$2,$0,$L270
	lw	$4,4($4)

	lw	$3,4($4)
	sw	$3,4($2)
	lw	$4,4($4)
$L270:
	bnel	$4,$0,$L269
	sw	$2,0($4)

$L269:
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
	sw	$20,40($sp)
	lw	$20,0($6)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	lw	$22,80($sp)
	sw	$31,60($sp)
	sw	$21,44($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	.cprestore	16
	move	$23,$6
	move	$19,$4
	move	$fp,$5
	beq	$20,$0,$L272
	move	$18,$7

	move	$16,$5
	.option	pic0
	b	$L274
	.option	pic2
	move	$17,$0

$L287:
	beq	$20,$17,$L272
	addu	$16,$16,$18

$L274:
	move	$5,$16
	move	$4,$19
	move	$25,$22
	jalr	$25
	move	$21,$16

	addiu	$17,$17,1
	bne	$2,$0,$L287
	lw	$28,16($sp)

$L271:
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

$L272:
	mul	$3,$18,$20
	addiu	$2,$20,1
	sw	$2,0($23)
	beq	$18,$0,$L271
	addu	$21,$3,$fp

	lw	$25,%call16(memmove)($28)
	move	$6,$18
	move	$5,$19
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
	beq	$20,$0,$L289
	sw	$16,24($sp)

	move	$18,$4
	move	$19,$7
	move	$16,$5
	.option	pic0
	b	$L291
	.option	pic2
	move	$17,$0

$L300:
	beq	$20,$17,$L289
	addu	$16,$16,$19

$L291:
	move	$5,$16
	move	$4,$18
	move	$25,$21
	jalr	$25
	move	$22,$16

	bne	$2,$0,$L300
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

$L289:
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
	bltz	$4,$L303
	move	$2,$4

	jr	$31
	nop

$L303:
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
$L313:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,$L307
	sltu	$6,$2,5

	bnel	$6,$0,$L313
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,$L308
	li	$10,45			# 0x2d

	bne	$5,$10,$L326
	addiu	$13,$5,-48

	lb	$11,1($4)
	addiu	$13,$11,-48
	sltu	$12,$13,10
	beq	$12,$0,$L318
	addiu	$4,$4,1

	li	$15,1			# 0x1
$L311:
	move	$2,$0
$L315:
	sll	$24,$2,2
	lb	$5,1($4)
	addu	$25,$24,$2
	sll	$3,$25,1
	move	$6,$13
	subu	$2,$3,$13
	addiu	$13,$5,-48
	sltu	$7,$13,10
	bne	$7,$0,$L315
	addiu	$4,$4,1

	bne	$15,$0,$L327
	nop

	jr	$31
	subu	$2,$6,$3

$L307:
	.option	pic0
	b	$L313
	.option	pic2
	addiu	$4,$4,1

$L326:
	sltu	$14,$13,10
	bne	$14,$0,$L311
	move	$15,$0

$L325:
	jr	$31
	move	$2,$0

$L318:
	move	$2,$0
$L327:
	jr	$31
	nop

$L308:
	lb	$8,1($4)
	move	$15,$0
	addiu	$13,$8,-48
	sltu	$9,$13,10
	bne	$9,$0,$L311
	addiu	$4,$4,1

	.option	pic0
	b	$L325
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
$L333:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,$L329
	sltu	$6,$2,5

	bnel	$6,$0,$L333
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,$L330
	li	$10,45			# 0x2d

	beql	$5,$10,$L331
	lb	$11,1($4)

	addiu	$13,$5,-48
	sltu	$14,$13,10
	beq	$14,$0,$L347
	nop

$L341:
	move	$15,$0
$L334:
	move	$2,$0
$L337:
	sll	$24,$2,2
	lb	$5,1($4)
	addu	$25,$24,$2
	sll	$3,$25,1
	move	$6,$13
	subu	$2,$3,$13
	addiu	$13,$5,-48
	sltu	$7,$13,10
	bne	$7,$0,$L337
	addiu	$4,$4,1

	bne	$15,$0,$L348
	nop

	jr	$31
	subu	$2,$6,$3

$L329:
	.option	pic0
	b	$L333
	.option	pic2
	addiu	$4,$4,1

$L331:
	li	$15,1			# 0x1
	addiu	$13,$11,-48
	sltu	$12,$13,10
	bne	$12,$0,$L334
	addiu	$4,$4,1

$L347:
	jr	$31
	move	$2,$0

$L330:
	lb	$8,1($4)
	addiu	$13,$8,-48
	sltu	$9,$13,10
	bne	$9,$0,$L341
	addiu	$4,$4,1

	move	$2,$0
$L348:
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
$L356:
	lb	$5,0($4)
	addiu	$2,$5,-9
	beq	$5,$3,$L350
	sltu	$6,$2,5

	bnel	$6,$0,$L356
	addiu	$4,$4,1

	li	$7,43			# 0x2b
	beq	$5,$7,$L351
	li	$10,45			# 0x2d

	bne	$5,$10,$L368
	addiu	$13,$5,-48

	lb	$11,1($4)
	addiu	$13,$11,-48
	sltu	$12,$13,10
	beq	$12,$0,$L361
	addiu	$4,$4,1

	li	$15,1			# 0x1
$L354:
	move	$2,$0
	move	$24,$0
$L358:
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
	bne	$6,$0,$L358
	subu	$24,$7,$24

	bne	$15,$0,$L349
	subu	$13,$25,$3

	subu	$2,$5,$12
	sltu	$4,$5,$2
	subu	$24,$13,$4
$L349:
	jr	$31
	move	$3,$24

$L350:
	.option	pic0
	b	$L356
	.option	pic2
	addiu	$4,$4,1

$L368:
	sltu	$14,$13,10
	bne	$14,$0,$L354
	move	$15,$0

$L361:
	move	$2,$0
	move	$24,$0
$L369:
	jr	$31
	move	$3,$24

$L351:
	lb	$8,1($4)
	move	$15,$0
	addiu	$13,$8,-48
	sltu	$9,$13,10
	bne	$9,$0,$L354
	addiu	$4,$4,1

	move	$2,$0
	.option	pic0
	b	$L369
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
	beq	$6,$0,$L371
	sw	$16,24($sp)

	move	$16,$6
	move	$20,$4
	move	$18,$5
	.option	pic0
	b	$L374
	.option	pic2
	move	$19,$7

$L384:
	beq	$2,$0,$L370
	subu	$16,$16,$17

	beq	$16,$0,$L371
	addu	$18,$22,$19

$L374:
	srl	$17,$16,1
$L385:
	mul	$2,$17,$19
	move	$4,$20
	move	$25,$21
	addiu	$16,$16,-1
	addu	$22,$2,$18
	jalr	$25
	move	$5,$22

	bgez	$2,$L384
	nop

	move	$16,$17
	bne	$16,$0,$L385
	srl	$17,$16,1

$L371:
	move	$22,$0
$L370:
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
	beq	$6,$0,$L391
	move	$18,$7

$L399:
	sra	$22,$16,1
$L402:
	mul	$2,$22,$18
	move	$6,$21
	move	$4,$19
	move	$25,$20
	addu	$23,$2,$17
	move	$5,$23
	jalr	$25
	addiu	$16,$16,-1

	beq	$2,$0,$L386
	sra	$16,$16,1

	blez	$2,$L389
	nop

	bne	$16,$0,$L399
	addu	$17,$23,$18

$L391:
	move	$23,$0
$L386:
	lw	$31,60($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	move	$2,$23
	lw	$23,56($sp)
	jr	$31
	addiu	$sp,$sp,64

$L389:
	beq	$22,$0,$L391
	move	$16,$22

	.option	pic0
	b	$L402
	.option	pic2
	sra	$22,$16,1

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
	mflo	$3
	sw	$5,4($4)
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
	bltz	$5,$L407
	move	$2,$4

	jr	$31
	nop

$L407:
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
	sw	$16,24($sp)
	move	$18,$6
	move	$16,$4
	move	$17,$7
	move	$5,$7
	move	$4,$6
	lw	$7,60($sp)
	lw	$6,56($sp)
	sw	$31,36($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

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
	bltz	$4,$L414
	move	$2,$4

	jr	$31
	nop

$L414:
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
	mfhi	$5
	mflo	$3
	sw	$5,4($4)
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
	bltz	$5,$L421
	move	$2,$4

	jr	$31
	nop

$L421:
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
	sw	$16,24($sp)
	move	$18,$6
	move	$16,$4
	move	$17,$7
	move	$5,$7
	move	$4,$6
	lw	$7,60($sp)
	lw	$6,56($sp)
	sw	$31,36($sp)
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

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
	bne	$2,$0,$L427
	nop

	jr	$31
	nop

$L429:
	beq	$2,$0,$L430
	addiu	$4,$4,4

$L427:
	bnel	$5,$2,$L429
	lw	$2,4($4)

	jr	$31
	move	$2,$4

$L430:
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
$L437:
	lw	$2,0($4)
	lw	$3,0($5)
	bne	$2,$3,$L436
	addiu	$4,$4,4

	bne	$2,$0,$L437
	addiu	$5,$5,4

$L436:
	slt	$4,$2,$3
	bne	$4,$0,$L439
	nop

	jr	$31
	slt	$2,$3,$2

$L439:
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
$L444:
	lw	$6,0($5)
	addiu	$3,$3,4
	addiu	$5,$5,4
	bne	$6,$0,$L444
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
	beq	$2,$0,$L449
	move	$5,$4

$L448:
	lw	$3,4($5)
	bne	$3,$0,$L448
	addiu	$5,$5,4

	subu	$4,$5,$4
	jr	$31
	sra	$2,$4,2

$L449:
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
	b	$L462
	nop

	.option	pic2
$L463:
	lw	$3,0($5)
	bne	$2,$3,$L454
	addiu	$6,$6,-1

	beql	$2,$0,$L465
	lw	$6,0($4)

	addiu	$4,$4,4
	addiu	$5,$5,4
$L462:
	bnel	$6,$0,$L463
	lw	$2,0($4)

	jr	$31
	move	$2,$0

$L454:
	lw	$6,0($4)
$L465:
	lw	$5,0($5)
	slt	$4,$6,$5
	bne	$4,$0,$L464
	nop

	jr	$31
	slt	$2,$5,$6

$L464:
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
	bnel	$6,$0,$L475
	lw	$2,0($4)

	jr	$31
	move	$2,$0

$L469:
	beq	$6,$0,$L470
	addiu	$4,$4,4

	lw	$2,0($4)
$L475:
	bne	$2,$5,$L469
	addiu	$6,$6,-1

	jr	$31
	move	$2,$4

$L470:
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
	b	$L490
	nop

	.option	pic2
$L492:
	lw	$3,0($5)
	bne	$2,$3,$L491
	addiu	$6,$6,-1

	addiu	$4,$4,4
	addiu	$5,$5,4
$L490:
	bnel	$6,$0,$L492
	lw	$2,0($4)

	jr	$31
	move	$2,$0

$L491:
	slt	$4,$2,$3
	bne	$4,$0,$L493
	nop

	jr	$31
	slt	$2,$3,$2

$L493:
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
	beq	$6,$0,$L495
	move	$16,$4

	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sll	$6,$6,2

$L495:
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
	beq	$4,$5,$L517
	move	$2,$4

	subu	$4,$4,$5
	sll	$3,$6,2
	sltu	$7,$4,$3
	beq	$7,$0,$L515
	addiu	$9,$6,-1

	beq	$6,$0,$L517
	sll	$14,$9,2

	li	$11,-4			# 0xfffffffffffffffc
$L505:
	lwx	$12,$14($5)
	addu	$13,$2,$14
	addiu	$14,$14,-4
	bne	$14,$11,$L505
	sw	$12,0($13)

$L517:
	jr	$31
	nop

$L515:
	move	$10,$2
	beq	$6,$0,$L517
	li	$8,-1			# 0xffffffffffffffff

$L503:
	lw	$6,0($5)
	addiu	$9,$9,-1
	addiu	$10,$10,4
	addiu	$5,$5,4
	bne	$9,$8,$L503
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
	beq	$6,$0,$L525
	addiu	$3,$6,-1

	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
$L520:
	addiu	$3,$3,-1
	addiu	$6,$6,4
	bne	$3,$7,$L520
	sw	$5,-4($6)

$L525:
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
	beq	$2,$0,$L527
	addu	$11,$4,$6

	beq	$6,$0,$L559
	addu	$12,$5,$6

$L529:
	lb	$10,-1($11)
	addiu	$11,$11,-1
	addiu	$12,$12,-1
	bne	$4,$11,$L529
	sb	$10,0($12)

$L559:
	jr	$31
	nop

$L527:
	bne	$4,$5,$L555
	nop

	jr	$31
	nop

$L555:
	beq	$6,$0,$L559
	addiu	$3,$6,-1

	sltu	$7,$3,7
	bne	$7,$0,$L553
	or	$8,$5,$4

	andi	$9,$8,0x3
	bne	$9,$0,$L557
	addiu	$9,$4,1

	subu	$10,$5,$9
	sltu	$11,$10,3
	bne	$11,$0,$L530
	move	$12,$6

	ins	$12,$0,0,2
	move	$15,$5
	addu	$13,$4,$12
$L531:
	lw	$14,0($4)
	addiu	$4,$4,4
	sw	$14,0($15)
	bne	$13,$4,$L531
	addiu	$15,$15,4

	addu	$5,$5,$12
	beq	$6,$12,$L559
	subu	$24,$6,$12

	lb	$4,0($13)
	li	$6,1			# 0x1
	beq	$24,$6,$L559
	sb	$4,0($5)

	lb	$25,1($13)
	li	$2,2			# 0x2
	beq	$24,$2,$L559
	sb	$25,1($5)

	lb	$3,2($13)
	jr	$31
	sb	$3,2($5)

$L553:
	addiu	$9,$4,1
$L530:
$L557:
	.option	pic0
	b	$L534
	.option	pic2
	addu	$7,$4,$6

$L556:
	addiu	$9,$9,1
$L534:
	lb	$8,-1($9)
	addiu	$5,$5,1
	bne	$9,$7,$L556
	sb	$8,-1($5)

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
	andi	$8,$7,0x3f
	srl	$3,$4,1
	nor	$2,$0,$6
	sll	$13,$5,1
	nor	$10,$0,$8
	srl	$12,$3,$2
	sll	$11,$5,$6
	andi	$9,$6,0x20
	srl	$5,$5,$8
	sll	$6,$4,$6
	sll	$24,$13,$10
	srl	$4,$4,$8
	andi	$14,$7,0x20
	or	$15,$12,$11
	or	$25,$24,$4
	move	$7,$5
	movn	$15,$6,$9
	movn	$7,$0,$14
	movn	$6,$0,$9
	movn	$25,$5,$14
	or	$3,$7,$15
	jr	$31
	or	$2,$25,$6

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
	andi	$7,$8,0x3f
	srl	$3,$4,1
	sll	$2,$5,1
	nor	$11,$0,$6
	nor	$9,$0,$7
	sll	$15,$4,$7
	srl	$12,$3,$9
	sll	$10,$5,$7
	sll	$24,$2,$11
	srl	$5,$5,$6
	srl	$4,$4,$6
	andi	$13,$6,0x20
	andi	$14,$8,0x20
	or	$6,$12,$10
	or	$25,$24,$4
	move	$8,$5
	movn	$6,$15,$14
	movn	$8,$0,$13
	movn	$25,$5,$13
	movn	$15,$0,$14
	or	$3,$6,$8
	jr	$31
	or	$2,$15,$25

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
	wsbh	$2,$4
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
	wsbh	$2,$4
	jr	$31
	ror	$2,$2,16

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
	wsbh	$4,$4
	wsbh	$2,$5
	ror	$3,$4,16
	jr	$31
	ror	$2,$2,16

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
	b	$L576
	.option	pic2
	li	$5,32			# 0x20

$L579:
	beq	$2,$5,$L578
	nop

$L576:
	srl	$3,$4,$2
	andi	$6,$3,0x1
	beq	$6,$0,$L579
	addiu	$2,$2,1

	jr	$31
	nop

$L578:
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
	beq	$4,$0,$L587
	move	$2,$0

	andi	$2,$4,0x1
	bne	$2,$0,$L586
	nop

	li	$2,1			# 0x1
$L582:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beq	$3,$0,$L582
	addiu	$2,$2,1

$L587:
	jr	$31
	nop

$L586:
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
	bc1t	$fcc0,$L591
	lui	$3,%hi($LC1)

	lwc1	$f1,%lo($LC1)($3)
	c.lt.s	$fcc1,$f1,$f12
	bc1f	$fcc1,$L593
	li	$2,1			# 0x1

	jr	$31
	nop

$L591:
	jr	$31
	li	$2,1			# 0x1

$L593:
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
	bc1t	$fcc0,$L597
	lui	$3,%hi($LC3)

	ldc1	$f2,%lo($LC3)($3)
	c.lt.d	$fcc1,$f2,$f12
	bc1f	$fcc1,$L599
	li	$2,1			# 0x1

	jr	$31
	nop

$L597:
	jr	$31
	li	$2,1			# 0x1

$L599:
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
	bc1t	$fcc0,$L603
	lui	$3,%hi($LC3)

	ldc1	$f2,%lo($LC3)($3)
	c.lt.d	$fcc1,$f2,$f12
	bc1f	$fcc1,$L605
	li	$2,1			# 0x1

	jr	$31
	nop

$L603:
	jr	$31
	li	$2,1			# 0x1

$L605:
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
	bc1t	$fcc0,$L625
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f1,$f12
	bc1t	$fcc1,$L625
	nop

	bltz	$5,$L621
	lui	$2,%hi($LC4)

	lwc1	$f2,%lo($LC4)($2)
$L609:
	andi	$4,$5,0x1
	beq	$4,$0,$L624
	srl	$6,$5,31

$L611:
	mul.s	$f0,$f0,$f2
	srl	$6,$5,31
$L624:
	addu	$5,$6,$5
	sra	$5,$5,1
	beq	$5,$0,$L625
	srl	$7,$5,31

	andi	$8,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$8,$0,$L611
	addu	$2,$7,$5

	sra	$5,$2,1
$L623:
	srl	$7,$5,31
	andi	$8,$5,0x1
	mul.s	$f2,$f2,$f2
	bne	$8,$0,$L611
	addu	$2,$7,$5

	.option	pic0
	b	$L623
	.option	pic2
	sra	$5,$2,1

$L625:
	jr	$31
	nop

$L621:
	lui	$3,%hi($LC5)
	.option	pic0
	b	$L609
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
	bc1t	$fcc0,$L644
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$fcc1,$f2,$f12
	bc1t	$fcc1,$L644
	nop

	bltz	$6,$L640
	lui	$2,%hi($LC6)

	ldc1	$f4,%lo($LC6)($2)
$L628:
	andi	$4,$6,0x1
	beq	$4,$0,$L643
	srl	$5,$6,31

$L630:
	mul.d	$f0,$f0,$f4
	srl	$5,$6,31
$L643:
	addu	$6,$5,$6
	sra	$6,$6,1
	beq	$6,$0,$L644
	srl	$7,$6,31

	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L630
	addu	$2,$7,$6

	sra	$6,$2,1
$L642:
	srl	$7,$6,31
	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L630
	addu	$2,$7,$6

	.option	pic0
	b	$L642
	.option	pic2
	sra	$6,$2,1

$L644:
	jr	$31
	nop

$L640:
	lui	$3,%hi($LC7)
	.option	pic0
	b	$L628
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
	bc1t	$fcc0,$L663
	mov.d	$f0,$f12

	add.d	$f2,$f12,$f12
	c.eq.d	$fcc1,$f12,$f2
	bc1t	$fcc1,$L663
	nop

	bltz	$6,$L659
	lui	$2,%hi($LC6)

	ldc1	$f4,%lo($LC6)($2)
$L647:
	andi	$4,$6,0x1
	beq	$4,$0,$L662
	srl	$5,$6,31

$L649:
	mul.d	$f0,$f0,$f4
	srl	$5,$6,31
$L662:
	addu	$6,$5,$6
	sra	$6,$6,1
	beq	$6,$0,$L663
	srl	$7,$6,31

	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L649
	addu	$2,$7,$6

	sra	$6,$2,1
$L661:
	srl	$7,$6,31
	andi	$8,$6,0x1
	mul.d	$f4,$f4,$f4
	bne	$8,$0,$L649
	addu	$2,$7,$6

	.option	pic0
	b	$L661
	.option	pic2
	sra	$6,$2,1

$L663:
	jr	$31
	nop

$L659:
	lui	$3,%hi($LC7)
	.option	pic0
	b	$L647
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
	beq	$6,$0,$L676
	move	$2,$4

	addiu	$3,$6,-1
	sltu	$4,$3,4
	bne	$4,$0,$L666
	or	$7,$2,$5

	andi	$8,$7,0x3
	bne	$8,$0,$L666
	move	$10,$6

	ins	$10,$0,0,2
	move	$14,$2
	addu	$9,$5,$10
$L667:
	lw	$11,0($14)
	lw	$12,0($5)
	addiu	$5,$5,4
	xor	$13,$12,$11
	sw	$13,0($14)
	bne	$9,$5,$L667
	addiu	$14,$14,4

	addu	$15,$2,$10
	beq	$6,$10,$L676
	subu	$5,$6,$10

	lbu	$24,0($15)
	lbu	$25,0($9)
	li	$6,1			# 0x1
	xor	$3,$24,$25
	beq	$5,$6,$L676
	sb	$3,0($15)

	lbu	$7,1($15)
	lbu	$4,1($9)
	li	$8,2			# 0x2
	xor	$10,$4,$7
	beq	$5,$8,$L676
	sb	$10,1($15)

	lbu	$11,2($15)
	lbu	$9,2($9)
	xor	$12,$9,$11
	jr	$31
	sb	$12,2($15)

$L666:
	addu	$13,$5,$6
	move	$25,$2
$L669:
	lbu	$14,0($25)
	lbu	$15,0($5)
	addiu	$25,$25,1
	xor	$24,$15,$14
	addiu	$5,$5,1
	bne	$13,$5,$L669
	sb	$24,-1($25)

$L676:
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
	beq	$3,$0,$L684
	move	$2,$4

	move	$8,$4
$L679:
	lb	$7,1($8)
	bne	$7,$0,$L679
	addiu	$8,$8,1

	beq	$6,$0,$L681
	nop

	lb	$4,0($5)
$L695:
	addiu	$6,$6,-1
	beq	$4,$0,$L696
	sb	$4,0($8)

	addiu	$5,$5,1
	addiu	$8,$8,1
$L692:
	bnel	$6,$0,$L695
	lb	$4,0($5)

$L681:
	jr	$31
	sb	$0,0($8)

$L696:
	jr	$31
	nop

$L684:
	.option	pic0
	b	$L692
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
	beq	$5,$0,$L708
	move	$2,$0

	lbux	$3,$2($4)
$L706:
	bnel	$3,$0,$L700
	addiu	$2,$2,1

$L708:
	jr	$31
	nop

$L700:
	bnel	$5,$2,$L706
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
	beq	$7,$0,$L718
	move	$2,$4

$L710:
	.option	pic0
	b	$L713
	.option	pic2
	move	$3,$5

$L712:
	beq	$6,$7,$L719
	nop

$L713:
	lb	$6,0($3)
	bne	$6,$0,$L712
	addiu	$3,$3,1

	lb	$7,1($2)
	bne	$7,$0,$L710
	addiu	$2,$2,1

	move	$2,$0
$L719:
	jr	$31
	nop

$L718:
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
$L721:
	lb	$3,0($4)
	xor	$6,$3,$5
	movz	$2,$4,$6
	bne	$3,$0,$L721
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
	beq	$8,$0,$L733
	nop

	move	$2,$5
$L725:
	lb	$3,1($2)
	bne	$3,$0,$L725
	addiu	$2,$2,1

	beq	$2,$5,$L733
	subu	$10,$2,$5

	andi	$11,$8,0x00ff
	.option	pic0
	b	$L743
	.option	pic2
	addiu	$13,$10,-1

$L745:
	beq	$2,$0,$L748
	addiu	$4,$4,1

$L743:
	lb	$2,0($4)
	bne	$2,$8,$L745
	move	$6,$11

	addu	$9,$4,$13
	move	$14,$5
	.option	pic0
	b	$L727
	.option	pic2
	move	$12,$4

$L746:
	beql	$12,$9,$L747
	lbu	$15,0($14)

	bne	$7,$6,$L728
	addiu	$12,$12,1

	lbu	$6,0($12)
	beq	$6,$0,$L728
	addiu	$14,$14,1

$L727:
	lbu	$7,0($14)
	bne	$7,$0,$L746
	nop

$L728:
	lbu	$15,0($14)
$L747:
	beq	$15,$6,$L734
	nop

	.option	pic0
	b	$L743
	.option	pic2
	addiu	$4,$4,1

$L748:
	jr	$31
	nop

$L733:
	jr	$31
	move	$2,$4

$L734:
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
	bc1t	$fcc0,$L759
	mov.d	$f0,$f12

	c.lt.d	$fcc2,$f2,$f12
	bc1f	$fcc2,$L760
	nop

	c.lt.d	$fcc3,$f14,$f2
	bc1t	$fcc3,$L752
	nop

$L760:
	jr	$31
	nop

$L759:
	c.lt.d	$fcc1,$f2,$f14
	bc1f	$fcc1,$L760
	nop

$L752:
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
	beq	$7,$0,$L777
	move	$2,$4

	sltu	$3,$5,$7
	bne	$3,$0,$L770
	subu	$5,$5,$7

	addu	$9,$4,$5
	sltu	$4,$9,$4
	bne	$4,$0,$L770
	addiu	$7,$7,-1

	lb	$12,0($6)
	.option	pic0
	b	$L767
	.option	pic2
	addiu	$6,$6,1

$L771:
	move	$2,$3
$L763:
	sltu	$10,$9,$2
	bne	$10,$0,$L770
	nop

$L767:
	lb	$8,0($2)
	bne	$8,$12,$L771
	addiu	$3,$2,1

	beq	$7,$0,$L777
	move	$25,$6

$L766:
	move	$15,$3
	.option	pic0
	b	$L764
	.option	pic2
	addu	$5,$3,$7

$L765:
	beq	$15,$5,$L777
	addiu	$25,$25,1

$L764:
	lbu	$13,0($15)
	lbu	$14,0($25)
	beq	$13,$14,$L765
	addiu	$15,$15,1

	sltu	$2,$9,$3
	bnel	$2,$0,$L777
	move	$2,$0

	lb	$11,0($3)
	bne	$11,$12,$L763
	addiu	$2,$3,1

	move	$24,$3
	move	$25,$6
	move	$3,$2
	.option	pic0
	b	$L766
	.option	pic2
	move	$2,$24

$L777:
	jr	$31
	nop

$L770:
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
	beq	$6,$0,$L779
	move	$17,$4

	lw	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	nop

$L779:
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
	mtc1	$0,$f3
	c.lt.d	$fcc0,$f12,$f2
	bc1t	$fcc0,$L807
	mov.d	$f0,$f12

	lui	$2,%hi($LC10)
	ldc1	$f4,%lo($LC10)($2)
	c.le.d	$fcc3,$f4,$f12
	bc1f	$fcc3,$L808
	move	$3,$0

$L787:
	lui	$9,%hi($LC7)
	ldc1	$f16,%lo($LC7)($9)
	ldc1	$f18,%lo($LC10)($2)
	move	$8,$0
$L793:
	mul.d	$f0,$f0,$f16
	c.le.d	$fcc6,$f18,$f0
	bc1t	$fcc6,$L793
	addiu	$8,$8,1

$L794:
	beq	$3,$0,$L810
	sw	$8,0($6)

	neg.d	$f0,$f0
$L810:
	jr	$31
	nop

$L808:
	lui	$4,%hi($LC7)
	ldc1	$f6,%lo($LC7)($4)
	c.lt.d	$fcc4,$f12,$f6
	bc1f	$fcc4,$L790
	c.eq.d	$fcc5,$f12,$f2

	bc1f	$fcc5,$L799
	mov.d	$f8,$f12

$L790:
	jr	$31
	sw	$0,0($6)

$L807:
	lui	$5,%hi($LC8)
	ldc1	$f10,%lo($LC8)($5)
	c.le.d	$fcc1,$f12,$f10
	bc1f	$fcc1,$L809
	neg.d	$f8,$f12

	mov.d	$f0,$f8
	li	$3,1			# 0x1
	.option	pic0
	b	$L787
	.option	pic2
	lui	$2,%hi($LC10)

$L809:
	lui	$7,%hi($LC9)
	ldc1	$f12,%lo($LC9)($7)
	c.lt.d	$fcc2,$f12,$f0
	bc1f	$fcc2,$L790
	li	$3,1			# 0x1

	lui	$4,%hi($LC7)
$L788:
	ldc1	$f14,%lo($LC7)($4)
	mov.d	$f0,$f8
	move	$8,$0
$L795:
	add.d	$f0,$f0,$f0
	c.lt.d	$fcc7,$f0,$f14
	bc1t	$fcc7,$L795
	addiu	$8,$8,-1

	.option	pic0
	b	$L794
	nop

	.option	pic2
$L799:
	.option	pic0
	b	$L788
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
	beq	$2,$0,$L815
	move	$25,$0

	move	$2,$0
$L814:
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
	bne	$24,$0,$L814
	sll	$6,$6,1

	jr	$31
	move	$3,$25

$L815:
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
	beq	$2,$0,$L837
	li	$12,1			# 0x1

	.option	pic0
	b	$L818
	.option	pic2
	li	$2,32			# 0x20

$L822:
	sll	$5,$5,1
	sltu	$7,$5,$4
	beq	$7,$0,$L820
	sll	$12,$12,1

	beq	$2,$0,$L821
	nop

$L818:
	bgez	$5,$L822
	addiu	$2,$2,-1

	move	$2,$0
$L824:
	sltu	$8,$4,$5
	xori	$10,$8,0x1
	move	$11,$12
	subu	$9,$4,$5
	movz	$11,$0,$10
	srl	$12,$12,1
	movn	$4,$9,$10
	or	$2,$2,$11
	bne	$12,$0,$L824
	srl	$5,$5,1

$L821:
	jr	$31
	movn	$2,$4,$6

$L820:
	bne	$12,$0,$L824
	move	$2,$0

	.option	pic0
	b	$L821
	nop

	.option	pic2
$L837:
	sltu	$3,$4,$5
	xori	$2,$3,0x1
	subu	$5,$4,$5
	.option	pic0
	b	$L821
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$3,$4,7
	beq	$4,$3,$L840
	xor	$2,$4,$3

	sll	$4,$2,8
	clz	$5,$4
	jr	$31
	addiu	$2,$5,-1

$L840:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$3,$5,31
	xor	$2,$4,$3
	beq	$4,$3,$L849
	xor	$6,$5,$3

$L847:
	beql	$6,$0,$L844
	clz	$4,$2

	clz	$5,$6
	jr	$31
	addiu	$2,$5,-1

$L844:
	addiu	$5,$4,32
	jr	$31
	addiu	$2,$5,-1

$L849:
	bne	$5,$4,$L847
	nop

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
	move	$10,$6
	sltu	$2,$4,$5
	srl	$7,$6,3
	bne	$2,$0,$L861
	ins	$10,$0,0,3

	addu	$3,$5,$6
	sltu	$8,$3,$4
	beq	$8,$0,$L891
	addiu	$13,$6,-1

$L861:
	beq	$7,$0,$L892
	sll	$14,$7,3

	move	$2,$5
	move	$7,$4
	addu	$15,$14,$5
$L864:
	lw	$24,0($2)
	lw	$25,4($2)
	addiu	$2,$2,8
	sw	$24,0($7)
	sw	$25,4($7)
	bne	$2,$15,$L864
	addiu	$7,$7,8

	sltu	$3,$10,$6
	beq	$3,$0,$L894
	subu	$9,$6,$10

	addiu	$8,$9,-1
	sltu	$11,$8,7
	bne	$11,$0,$L890
	addiu	$12,$10,1

	addu	$3,$4,$10
	addu	$13,$5,$12
	subu	$14,$3,$13
	sltu	$15,$14,3
	bne	$15,$0,$L866
	addu	$2,$5,$10

	or	$24,$2,$3
	andi	$25,$24,0x3
	bne	$25,$0,$L866
	move	$11,$9

	ins	$11,$0,0,2
	addu	$8,$2,$11
$L867:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L867
	addiu	$3,$3,4

	beq	$9,$11,$L894
	addu	$10,$10,$11

	addu	$2,$5,$10
	lb	$9,0($2)
	addiu	$12,$10,1
	addu	$13,$4,$10
	sltu	$3,$12,$6
	beq	$3,$0,$L894
	sb	$9,0($13)

	addu	$14,$5,$12
	lb	$15,0($14)
	addiu	$24,$10,2
	addu	$25,$4,$12
	sltu	$6,$24,$6
	beq	$6,$0,$L894
	sb	$15,0($25)

	addu	$5,$5,$24
	lb	$11,0($5)
	addu	$4,$4,$24
	jr	$31
	sb	$11,0($4)

$L891:
	beq	$6,$0,$L894
	li	$9,-1			# 0xffffffffffffffff

$L862:
	addu	$6,$5,$13
	lb	$11,0($6)
	addu	$12,$4,$13
	addiu	$13,$13,-1
	bne	$13,$9,$L862
	sb	$11,0($12)

$L894:
	jr	$31
	nop

$L892:
	beq	$6,$0,$L893
	nop

$L890:
	addu	$3,$4,$10
	addu	$2,$5,$10
$L866:
	addu	$8,$5,$6
$L869:
	lb	$7,0($2)
	addiu	$2,$2,1
	sb	$7,0($3)
	bne	$2,$8,$L869
	addiu	$3,$3,1

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
	addiu	$12,$6,-1

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
	srl	$11,$6,2

	move	$10,$6
	ins	$10,$0,0,2
	move	$2,$5
	move	$3,$4
	addu	$8,$5,$10
$L903:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L903
	addiu	$3,$3,4

	sll	$12,$11,1
	beq	$9,$12,$L898
	addu	$13,$4,$10

	lhx	$9,$10($5)
	sh	$9,0($13)
$L898:
	andi	$11,$6,0x1
	beq	$11,$0,$L925
	addu	$5,$5,$6

	lb	$8,-1($5)
$L926:
	addu	$4,$4,$6
	jr	$31
	sb	$8,-1($4)

$L922:
	beq	$6,$0,$L925
	li	$8,-1			# 0xffffffffffffffff

$L900:
	addu	$6,$5,$12
	lb	$10,0($6)
	addu	$11,$4,$12
	addiu	$12,$12,-1
	bne	$12,$8,$L900
	sb	$10,0($11)

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
	sh	$24,0($10)
	bne	$15,$25,$L905
	addiu	$10,$10,2

	andi	$11,$6,0x1
	beq	$11,$0,$L925
	addu	$5,$5,$6

	.option	pic0
	b	$L926
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
	move	$9,$6
	sltu	$2,$4,$5
	srl	$8,$6,2
	bne	$2,$0,$L931
	ins	$9,$0,0,2

	addu	$3,$5,$6
	sltu	$7,$3,$4
	beq	$7,$0,$L961
	addiu	$13,$6,-1

$L931:
	beq	$8,$0,$L962
	sll	$14,$8,2

	move	$25,$5
	move	$2,$4
	addu	$15,$14,$5
$L934:
	lw	$24,0($25)
	addiu	$25,$25,4
	sw	$24,0($2)
	bne	$25,$15,$L934
	addiu	$2,$2,4

	sltu	$8,$9,$6
	beq	$8,$0,$L964
	subu	$10,$6,$9

	addiu	$3,$10,-1
	sltu	$7,$3,7
	bne	$7,$0,$L960
	addiu	$11,$9,1

	addu	$3,$4,$9
	addu	$12,$5,$11
	subu	$13,$3,$12
	sltu	$14,$13,3
	bne	$14,$0,$L936
	addu	$2,$5,$9

	or	$15,$2,$3
	andi	$24,$15,0x3
	bne	$24,$0,$L936
	move	$25,$10

	ins	$25,$0,0,2
	addu	$8,$2,$25
$L937:
	lw	$7,0($2)
	addiu	$2,$2,4
	sw	$7,0($3)
	bne	$2,$8,$L937
	addiu	$3,$3,4

	beq	$10,$25,$L964
	addu	$9,$9,$25

	addu	$2,$5,$9
	lb	$10,0($2)
	addiu	$11,$9,1
	addu	$12,$4,$9
	sltu	$3,$11,$6
	beq	$3,$0,$L964
	sb	$10,0($12)

	addu	$13,$5,$11
	lb	$14,0($13)
	addiu	$15,$9,2
	addu	$24,$4,$11
	sltu	$6,$15,$6
	beq	$6,$0,$L964
	sb	$14,0($24)

	addu	$5,$5,$15
	lb	$25,0($5)
	addu	$4,$4,$15
	jr	$31
	sb	$25,0($4)

$L961:
	beq	$6,$0,$L964
	li	$10,-1			# 0xffffffffffffffff

$L932:
	addu	$6,$5,$13
	lb	$11,0($6)
	addu	$12,$4,$13
	addiu	$13,$13,-1
	bne	$13,$10,$L932
	sb	$11,0($12)

$L964:
	jr	$31
	nop

$L962:
	beq	$6,$0,$L963
	nop

$L960:
	addu	$3,$4,$9
	addu	$2,$5,$9
$L936:
	addu	$8,$5,$6
$L939:
	lb	$7,0($2)
	addiu	$2,$2,1
	sb	$7,0($3)
	bne	$2,$8,$L939
	addiu	$3,$3,1

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
	ext	$2,$4,1,1
	andi	$3,$4,0x1
	addu	$5,$2,$3
	ext	$6,$4,2,1
	addu	$7,$5,$6
	ext	$8,$4,3,1
	addu	$9,$7,$8
	ext	$10,$4,4,1
	addu	$11,$9,$10
	ext	$12,$4,5,1
	addu	$13,$11,$12
	ext	$14,$4,6,1
	addu	$15,$13,$14
	ext	$24,$4,7,1
	addu	$25,$15,$24
	ext	$2,$4,8,1
	addu	$5,$25,$2
	ext	$3,$4,9,1
	ext	$7,$4,10,1
	addu	$6,$5,$3
	ext	$9,$4,11,1
	addu	$8,$6,$7
	ext	$11,$4,12,1
	addu	$10,$8,$9
	ext	$13,$4,13,1
	addu	$12,$10,$11
	ext	$15,$4,14,1
	addu	$14,$12,$13
	addu	$24,$14,$15
	sra	$4,$4,15
	addu	$25,$24,$4
	jr	$31
	andi	$2,$25,0x1

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
	ext	$3,$4,1,1
	andi	$2,$4,0x1
	addu	$5,$3,$2
	ext	$6,$4,2,1
	addu	$7,$5,$6
	ext	$8,$4,3,1
	addu	$9,$7,$8
	ext	$10,$4,4,1
	addu	$11,$9,$10
	ext	$12,$4,5,1
	addu	$13,$11,$12
	ext	$14,$4,6,1
	addu	$15,$13,$14
	ext	$24,$4,7,1
	addu	$25,$15,$24
	ext	$3,$4,8,1
	ext	$2,$4,9,1
	addu	$5,$25,$3
	addu	$6,$5,$2
	ext	$7,$4,10,1
	ext	$9,$4,11,1
	addu	$8,$6,$7
	ext	$11,$4,12,1
	addu	$10,$8,$9
	ext	$13,$4,13,1
	addu	$12,$10,$11
	ext	$15,$4,14,1
	addu	$14,$12,$13
	addu	$24,$14,$15
	sra	$4,$4,15
	jr	$31
	addu	$2,$24,$4

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
	xori	$10,$8,0x1
	move	$11,$12
	subu	$9,$4,$5
	movz	$11,$0,$10
	srl	$12,$12,1
	movn	$4,$9,$10
	or	$2,$2,$11
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
	jr	$31
	mfhi	$3

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
	jr	$31
	mfhi	$3

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
	li	$10,32			# 0x20
	.option	pic0
	b	$L1089
	.option	pic2
	move	$2,$0

$L1099:
	beq	$10,$0,$L1088
	nop

$L1089:
	andi	$3,$5,0x1
	subu	$8,$0,$3
	and	$9,$8,$4
	addiu	$6,$10,-1
	sra	$5,$5,1
	andi	$10,$6,0x00ff
	addu	$2,$2,$9
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

	li	$10,32			# 0x20
	.option	pic0
	b	$L1104
	.option	pic2
	li	$5,1			# 0x1

$L1108:
	beq	$10,$0,$L1109
	nop

$L1104:
	sll	$14,$14,1
	sltu	$8,$14,$4
	addiu	$10,$10,-1
	bne	$8,$0,$L1108
	sll	$5,$5,1

$L1109:
	beq	$5,$0,$L1107
	move	$2,$0

$L1106:
	sltu	$4,$6,$14
	xori	$11,$4,0x1
	move	$13,$5
	subu	$12,$6,$14
	movz	$13,$0,$11
	srl	$5,$5,1
	movn	$6,$12,$11
	or	$2,$2,$13
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
	sltu	$7,$3,$4
	addiu	$9,$9,-1
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
	seh	$7,$5

	bltz	$7,$L1159
	sll	$8,$5,1

	andi	$3,$8,0xffff
	sltu	$9,$3,$4
	beq	$9,$0,$L1166
	seh	$10,$3

	bltz	$10,$L1166
	sll	$12,$5,2

	andi	$3,$12,0xffff
	sltu	$13,$3,$4
	beql	$13,$0,$L1161
	li	$13,4			# 0x4

	seh	$14,$3
	bltz	$14,$L1168
	sll	$15,$5,3

	andi	$3,$15,0xffff
	sltu	$24,$3,$4
	beq	$24,$0,$L1170
	seh	$25,$3

	bltz	$25,$L1170
	sll	$2,$5,4

	andi	$3,$2,0xffff
	sltu	$7,$3,$4
	beq	$7,$0,$L1172
	seh	$11,$3

	bltzl	$11,$L1161
	li	$13,16			# 0x10

	sll	$3,$5,5
	andi	$3,$3,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,$L1174
	seh	$9,$3

	bltz	$9,$L1174
	sll	$10,$5,6

	andi	$3,$10,0xffff
	sltu	$12,$3,$4
	beq	$12,$0,$L1161
	li	$13,64			# 0x40

	seh	$13,$3
	bltzl	$13,$L1161
	li	$13,64			# 0x40

	sll	$14,$5,7
	andi	$3,$14,0xffff
	sltu	$15,$3,$4
	beq	$15,$0,$L1178
	seh	$24,$3

	bltz	$24,$L1178
	sll	$25,$5,8

	andi	$3,$25,0xffff
	sltu	$2,$3,$4
	beq	$2,$0,$L1180
	seh	$7,$3

	bltz	$7,$L1180
	sll	$11,$5,9

	andi	$3,$11,0xffff
	sltu	$8,$3,$4
	beq	$8,$0,$L1182
	seh	$9,$3

	bltzl	$9,$L1161
	li	$13,512			# 0x200

	sll	$3,$5,10
	andi	$3,$3,0xffff
	sltu	$10,$3,$4
	beq	$10,$0,$L1184
	seh	$12,$3

	bltz	$12,$L1161
	li	$13,1024			# 0x400

	sll	$13,$5,11
	andi	$3,$13,0xffff
	sltu	$14,$3,$4
	beq	$14,$0,$L1186
	seh	$15,$3

	bltz	$15,$L1186
	sll	$24,$5,12

	andi	$3,$24,0xffff
	sltu	$25,$3,$4
	beq	$25,$0,$L1188
	seh	$2,$3

	bltz	$2,$L1188
	sll	$7,$5,13

	andi	$3,$7,0xffff
	sltu	$11,$3,$4
	beq	$11,$0,$L1190
	seh	$8,$3

	bltz	$8,$L1190
	sll	$9,$5,14

	andi	$3,$9,0xffff
	sltu	$10,$3,$4
	beq	$10,$0,$L1192
	seh	$12,$3

	bltz	$12,$L1192
	sll	$5,$5,15

	andi	$11,$5,0xffff
	sltu	$14,$11,$4
	beql	$14,$0,$L1193
	li	$3,32768			# 0x8000

	bne	$11,$0,$L1239
	move	$2,$4

$L1162:
	jr	$31
	movz	$2,$11,$6

$L1166:
	li	$13,2			# 0x2
$L1161:
	sltu	$15,$4,$3
	subu	$24,$4,$3
	andi	$2,$24,0xffff
	xori	$25,$15,0x1
	movz	$2,$4,$25
	srl	$4,$3,1
	sltu	$8,$2,$4
	subu	$9,$2,$4
	move	$7,$13
	srl	$11,$13,1
	movn	$7,$0,$15
	andi	$12,$9,0xffff
	xori	$10,$8,0x1
	movn	$11,$0,$8
	srl	$5,$13,2
	movn	$2,$12,$10
	or	$11,$7,$11
	beq	$5,$0,$L1162
	srl	$14,$3,2

	sltu	$15,$2,$14
	subu	$24,$2,$14
	xori	$25,$15,0x1
	andi	$7,$24,0xffff
	movz	$5,$0,$25
	srl	$12,$13,3
	movn	$2,$7,$25
	or	$11,$11,$5
	beq	$12,$0,$L1162
	srl	$4,$3,3

	sltu	$8,$2,$4
	subu	$9,$2,$4
	xori	$10,$8,0x1
	andi	$5,$9,0xffff
	movz	$12,$0,$10
	srl	$14,$13,4
	movn	$2,$5,$10
	or	$11,$11,$12
	beq	$14,$0,$L1162
	srl	$15,$3,4

	sltu	$24,$2,$15
	subu	$25,$2,$15
	xori	$7,$24,0x1
	andi	$12,$25,0xffff
	movz	$14,$0,$7
	srl	$10,$13,5
	movn	$2,$12,$7
	or	$11,$11,$14
	beq	$10,$0,$L1162
	srl	$4,$3,5

	sltu	$8,$2,$4
	subu	$9,$2,$4
	xori	$5,$8,0x1
	andi	$14,$9,0xffff
	movz	$10,$0,$5
	srl	$15,$13,6
	movn	$2,$14,$5
	or	$11,$11,$10
	beq	$15,$0,$L1162
	srl	$24,$3,6

	sltu	$25,$2,$24
	subu	$7,$2,$24
	xori	$12,$25,0x1
	andi	$4,$7,0xffff
	movz	$15,$0,$12
	srl	$10,$13,7
	movn	$2,$4,$12
	or	$11,$11,$15
	beq	$10,$0,$L1162
	srl	$9,$3,7

	sltu	$8,$2,$9
	subu	$5,$2,$9
	xori	$14,$8,0x1
	andi	$15,$5,0xffff
	movz	$10,$0,$14
	srl	$24,$13,8
	movn	$2,$15,$14
	or	$11,$11,$10
	beq	$24,$0,$L1162
	srl	$25,$3,8

	sltu	$7,$2,$25
	subu	$12,$2,$25
	xori	$9,$7,0x1
	andi	$4,$12,0xffff
	movz	$24,$0,$9
	srl	$10,$13,9
	movn	$2,$4,$9
	or	$11,$11,$24
	beq	$10,$0,$L1162
	srl	$5,$3,9

	sltu	$8,$2,$5
	subu	$14,$2,$5
	xori	$15,$8,0x1
	andi	$24,$14,0xffff
	movz	$10,$0,$15
	srl	$25,$13,10
	movn	$2,$24,$15
	or	$11,$11,$10
	beq	$25,$0,$L1162
	srl	$7,$3,10

	sltu	$12,$2,$7
	subu	$9,$2,$7
	xori	$5,$12,0x1
	andi	$4,$9,0xffff
	movz	$25,$0,$5
	srl	$10,$13,11
	movn	$2,$4,$5
	or	$11,$11,$25
	beq	$10,$0,$L1162
	srl	$14,$3,11

	sltu	$8,$2,$14
	subu	$15,$2,$14
	xori	$24,$8,0x1
	andi	$25,$15,0xffff
	movz	$10,$0,$24
	srl	$7,$13,12
	movn	$2,$25,$24
	or	$11,$11,$10
	beq	$7,$0,$L1162
	srl	$12,$3,12

	sltu	$9,$2,$12
	subu	$5,$2,$12
	xori	$14,$9,0x1
	andi	$4,$5,0xffff
	movz	$7,$0,$14
	srl	$10,$13,13
	movn	$2,$4,$14
	or	$11,$11,$7
	beq	$10,$0,$L1162
	srl	$15,$3,13

	sltu	$8,$2,$15
	subu	$24,$2,$15
	xori	$25,$8,0x1
	andi	$7,$24,0xffff
	movz	$10,$0,$25
	srl	$12,$13,14
	movn	$2,$7,$25
	or	$11,$11,$10
	beq	$12,$0,$L1162
	srl	$9,$3,14

	sltu	$5,$2,$9
	subu	$14,$2,$9
	xori	$15,$5,0x1
	andi	$4,$14,0xffff
	movz	$12,$0,$15
	li	$10,16384			# 0x4000
	movn	$2,$4,$15
	or	$11,$11,$12
	beq	$13,$10,$L1162
	srl	$3,$3,15

	subu	$13,$2,$3
	sltu	$8,$2,$3
	xori	$24,$8,0x1
	andi	$25,$13,0xffff
	movn	$2,$25,$24
	or	$11,$24,$11
	jr	$31
	movz	$2,$11,$6

$L1168:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,4			# 0x4

$L1170:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,8			# 0x8

$L1172:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,16			# 0x10

$L1182:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,512			# 0x200

$L1174:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,32			# 0x20

$L1178:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,128			# 0x80

$L1180:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,256			# 0x100

$L1238:
	subu	$3,$4,$5
	andi	$2,$3,0xffff
	xor	$5,$5,$4
	movn	$2,$4,$5
	.option	pic0
	b	$L1162
	.option	pic2
	sltu	$11,$5,1

$L1184:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,1024			# 0x400

$L1186:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,2048			# 0x800

$L1188:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,4096			# 0x1000

$L1190:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,8192			# 0x2000

$L1192:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,16384			# 0x4000

$L1239:
	li	$13,32768			# 0x8000
	.option	pic0
	b	$L1161
	.option	pic2
	li	$3,32768			# 0x8000

$L1193:
	.option	pic0
	b	$L1161
	.option	pic2
	li	$13,32768			# 0x8000

$L1159:
	subu	$4,$4,$5
	andi	$2,$4,0xffff
	.option	pic0
	b	$L1162
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
	xori	$10,$8,0x1
	move	$11,$12
	subu	$9,$4,$5
	movz	$11,$0,$10
	srl	$12,$12,1
	movn	$4,$9,$10
	or	$2,$2,$11
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
	nop

	addiu	$6,$6,-32
	sll	$5,$4,$6
	move	$4,$0
	move	$2,$4
$L1266:
	jr	$31
	move	$3,$5

$L1262:
	beql	$6,$0,$L1266
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
	beq	$2,$0,$L1268
	sra	$3,$5,31

	addiu	$6,$6,-32
	jr	$31
	sra	$2,$5,$6

$L1268:
	beq	$6,$0,$L1271
	li	$7,32			# 0x20

	subu	$3,$7,$6
	sll	$8,$5,$3
	srl	$4,$4,$6
	sra	$3,$5,$6
	jr	$31
	or	$2,$8,$4

$L1271:
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
	wsbh	$4,$4
	wsbh	$2,$5
	ror	$3,$4,16
	jr	$31
	ror	$2,$2,16

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
	wsbh	$2,$4
	jr	$31
	ror	$2,$2,16

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
	srl	$8,$3,$6
	addu	$9,$10,$9
	addu	$10,$24,$9
	subu	$12,$11,$8
	andi	$13,$8,0x2
	movn	$12,$0,$13
	addu	$14,$4,$10
	jr	$31
	addu	$2,$12,$14

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
	bne	$2,$0,$L1279
	slt	$5,$7,$5

	bne	$5,$0,$L1278
	sltu	$3,$4,$6

	bne	$3,$0,$L1279
	sltu	$4,$6,$4

	bne	$4,$0,$L1280
	nop

	jr	$31
	li	$2,1			# 0x1

$L1279:
	jr	$31
	move	$2,$0

$L1278:
	jr	$31
	li	$2,2			# 0x2

$L1280:
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
	bne	$2,$0,$L1283
	slt	$5,$7,$5

	bne	$5,$0,$L1284
	sltu	$3,$4,$6

	bne	$3,$0,$L1285
	nop

	jr	$31
	sltu	$2,$6,$4

$L1283:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1285:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1284:
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
	beq	$2,$0,$L1288
	nop

	addiu	$6,$6,-32
	srl	$2,$5,$6
	move	$5,$0
	jr	$31
	move	$3,$5

$L1288:
	beql	$6,$0,$L1291
	move	$2,$4

	li	$3,32			# 0x20
	subu	$7,$3,$6
	sll	$8,$5,$7
	srl	$4,$4,$6
	srl	$5,$5,$6
	or	$2,$8,$4
	jr	$31
	move	$3,$5

$L1291:
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
	andi	$3,$4,0xffff
	andi	$6,$5,0xffff
	srl	$4,$4,16
	mul	$8,$6,$4
	srl	$5,$5,16
	mul	$11,$3,$5
	gsmultu	$2,$3,$6
	mul	$14,$4,$5
	srl	$7,$2,16
	addu	$9,$8,$7
	andi	$10,$9,0xffff
	addu	$12,$11,$10
	srl	$13,$9,16
	addu	$15,$14,$13
	srl	$24,$12,16
	sll	$3,$12,16
	andi	$25,$2,0xffff
	addu	$6,$15,$24
	addu	$2,$25,$3
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
	andi	$8,$6,0xffff
	srl	$9,$4,16
	mul	$11,$8,$9
	andi	$3,$4,0xffff
	srl	$14,$6,16
	mul	$12,$3,$14
	gsmultu	$2,$3,$8
	mul	$3,$9,$14
	srl	$10,$2,16
	addu	$13,$11,$10
	andi	$15,$13,0xffff
	addu	$24,$12,$15
	srl	$25,$13,16
	addu	$9,$3,$25
	srl	$8,$24,16
	addu	$10,$9,$8
	mtlo	$10
	madd	$4,$7
	andi	$4,$2,0xffff
	madd	$6,$5
	sll	$5,$24,16
	mflo	$6
	addu	$2,$4,$5
	jr	$31
	move	$3,$6

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
	andi	$2,$6,0x1
	beq	$2,$0,$L1305
	ldc1	$f0,%lo($LC10)($5)

	move	$2,$6
$L1302:
	mul.d	$f0,$f0,$f12
$L1300:
	srl	$3,$2,31
	addu	$4,$3,$2
	sra	$2,$4,1
	beq	$2,$0,$L1301
	srl	$7,$2,31

	andi	$8,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$8,$0,$L1302
	addu	$3,$7,$2

	sra	$2,$3,1
$L1309:
	srl	$7,$2,31
	andi	$8,$2,0x1
	mul.d	$f12,$f12,$f12
	bne	$8,$0,$L1302
	addu	$3,$7,$2

	.option	pic0
	b	$L1309
	.option	pic2
	sra	$2,$3,1

$L1301:
	bltz	$6,$L1308
	ldc1	$f2,%lo($LC10)($5)

	jr	$31
	nop

$L1305:
	.option	pic0
	b	$L1300
	.option	pic2
	move	$2,$6

$L1308:
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
	beq	$2,$0,$L1316
	lwc1	$f0,%lo($LC13)($6)

	move	$2,$5
$L1313:
	mul.s	$f0,$f0,$f12
$L1311:
	srl	$3,$2,31
	addu	$4,$3,$2
	sra	$2,$4,1
	beq	$2,$0,$L1312
	srl	$7,$2,31

	andi	$8,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$8,$0,$L1313
	addu	$3,$7,$2

	sra	$2,$3,1
$L1320:
	srl	$7,$2,31
	andi	$8,$2,0x1
	mul.s	$f12,$f12,$f12
	bne	$8,$0,$L1313
	addu	$3,$7,$2

	.option	pic0
	b	$L1320
	.option	pic2
	sra	$2,$3,1

$L1312:
	bltz	$5,$L1319
	lwc1	$f1,%lo($LC13)($6)

	jr	$31
	nop

$L1316:
	.option	pic0
	b	$L1311
	.option	pic2
	move	$2,$5

$L1319:
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
	bne	$2,$0,$L1325
	sltu	$5,$7,$5

	bne	$5,$0,$L1324
	sltu	$3,$4,$6

	bne	$3,$0,$L1325
	sltu	$4,$6,$4

	bne	$4,$0,$L1326
	nop

	jr	$31
	li	$2,1			# 0x1

$L1325:
	jr	$31
	move	$2,$0

$L1324:
	jr	$31
	li	$2,2			# 0x2

$L1326:
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
	bne	$2,$0,$L1329
	sltu	$5,$7,$5

	bne	$5,$0,$L1330
	sltu	$3,$4,$6

	bne	$3,$0,$L1331
	nop

	jr	$31
	sltu	$2,$6,$4

$L1329:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1331:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L1330:
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
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
