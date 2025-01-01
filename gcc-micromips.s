	.file	1 "mini-libc.c"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.module	arch=mips64r2
	.abicalls
	.text
	.align	2
	.align	3
	.globl	make_ti
	.set	nomips16
	.set	micromips
	.ent	make_ti
	.type	make_ti, @function
make_ti:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	make_ti
	.size	make_ti, .-make_ti
	.align	2
	.align	3
	.globl	make_tu
	.set	nomips16
	.set	micromips
	.ent	make_tu
	.type	make_tu, @function
make_tu:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	make_tu
	.size	make_tu, .-make_tu
	.align	2
	.align	3
	.globl	memmove
	.set	nomips16
	.set	micromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$5,$4
	beqz	$3,.L6
	move	$2,$4

	daddu	$5,$5,$6
	beqz	$6,.L14
	daddu	$3,$4,$6

.L8:
	daddiu	$5,$5,-1
	daddiu	$3,$3,-1
	lb	$4,0($5)
	bne	$2,$3,.L8
	sb	$4,0($3)

.L14:
	jrc	$31
.L6:
	beq	$4,$5,.L13
	nop

	beqz	$6,.L14
	daddu	$6,$4,$6

	move	$3,$4
.L9:
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	lb	$4,-1($5)
	bne	$6,$3,.L9
	sb	$4,-1($3)

.L13:
	jrc	$31
	.set	macro
	.set	reorder
	.end	memmove
	.size	memmove, .-memmove
	.align	2
	.align	3
	.globl	memccpy
	.set	nomips16
	.set	micromips
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$7,.L17
	andi	$6,$6,0x00ff

.L16:
	lbu	$2,0($5)
	beq	$2,$6,.L17
	sb	$2,0($4)

	daddiu	$7,$7,-1
	daddiu	$5,$5,1
	bnez	$7,.L16
	daddiu	$4,$4,1

.L17:
	beqzc	$7,.L20
	jr	$31
	daddiu	$2,$4,1

.L20:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.align	3
	.globl	memchr
	.set	nomips16
	.set	micromips
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$6,.L26
	move	$2,$4

	andi	$5,$5,0x00ff
.L25:
	lbu	$2,0($4)
	beq	$2,$5,.L33
	nop

	daddiu	$6,$6,-1
	bnez	$6,.L25
	daddiu	$4,$4,1

	b	.L26
	move	$2,$4

.L33:
	move	$2,$4
.L26:
	jr	$31
	movz	$2,$0,$6

	.set	macro
	.set	reorder
	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.align	3
	.globl	memcmp
	.set	nomips16
	.set	micromips
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqzc	$6,.L36
.L35:
	lbu	$3,0($4)
	lbu	$2,0($5)
	bne	$3,$2,.L36
	nop

	daddiu	$6,$6,-1
	daddiu	$4,$4,1
	bnez	$6,.L35
	daddiu	$5,$5,1

.L36:
	beqzc	$6,.L39
	lbu	$2,0($4)
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

.L39:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.align	3
	.globl	memcpy
	.set	nomips16
	.set	micromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(memcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(memcpy)))
	beqz	$6,.L43
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalrs	$25
	nop

.L43:
	move	$2,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.align	3
	.globl	memrchr
	.set	nomips16
	.set	micromips
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$6,$6,-1
	daddu	$6,$4,$6
	daddiu	$4,$4,-1
	andi	$5,$5,0x00ff
.L46:
	beq	$6,$4,.L52
	move	$2,$0

	move	$2,$6
	lbu	$3,0($2)
	bne	$3,$5,.L46
	daddiu	$6,$6,-1

.L52:
	jrc	$31
.L45:
	jrc	$31
	.set	macro
	.set	reorder
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
	.align	3
	.globl	memset
	.set	nomips16
	.set	micromips
	.ent	memset
	.type	memset, @function
memset:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$6,.L58
	move	$2,$4

	daddu	$6,$4,$6
	move	$3,$4
.L55:
	sb	$5,0($3)
	daddiu	$3,$3,1
	bne	$6,$3,.L55
	nop

.L58:
	jrc	$31
	.set	macro
	.set	reorder
	.end	memset
	.size	memset, .-memset
	.align	2
	.align	3
	.globl	stpcpy
	.set	nomips16
	.set	micromips
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
	beqz	$3,.L64
	sb	$3,0($4)

.L61:
	daddiu	$5,$5,1
	daddiu	$2,$2,1
	lb	$3,0($5)
	bnez	$3,.L61
	sb	$3,0($2)

.L64:
	jrc	$31
	.set	macro
	.set	reorder
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
	.align	3
	.globl	strchrnul
	.set	nomips16
	.set	micromips
	.ent	strchrnul
	.type	strchrnul, @function
strchrnul:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$3,0($4)
	beqz	$3,.L73
	andi	$5,$5,0x00ff

	andi	$3,$3,0x00ff
.L75:
	beq	$3,$5,.L74
	nop

	daddiu	$4,$4,1
	lb	$3,0($4)
	bnez	$3,.L75
	andi	$3,$3,0x00ff

	jr	$31
	move	$2,$4

.L73:
	jr	$31
	move	$2,$4

.L74:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
	.align	3
	.globl	strchr
	.set	nomips16
	.set	micromips
	.ent	strchr
	.type	strchr, @function
strchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
.L78:
	lb	$3,0($2)
	beq	$3,$5,.L81
	nop

	bnez	$3,.L78
	daddiu	$2,$2,1

	move	$2,$0
.L81:
	jrc	$31
	.set	macro
	.set	reorder
	.end	strchr
	.size	strchr, .-strchr
	.align	2
	.align	3
	.globl	strcmp
	.set	nomips16
	.set	micromips
	.ent	strcmp
	.type	strcmp, @function
strcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$2,0($4)
	lb	$3,0($5)
	bne	$2,$3,.L84
	nop

.L83:
	beqz	$2,.L88
	andi	$2,$2,0x00ff

	daddiu	$4,$4,1
	daddiu	$5,$5,1
	lb	$2,0($4)
	lb	$3,0($5)
	beq	$2,$3,.L83
	nop

.L84:
	andi	$2,$2,0x00ff
.L88:
	andi	$3,$3,0x00ff
	jr	$31
	subu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
	.align	3
	.globl	strlen
	.set	nomips16
	.set	micromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$2,0($4)
	beqz	$2,.L95
	move	$2,$4

.L91:
	daddiu	$2,$2,1
	lb	$5,0($2)
	bnezc	$5,.L91
.L90:
.L95:
	jr	$31
	dsubu	$2,$2,$4

	.set	macro
	.set	reorder
	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.align	3
	.globl	strncmp
	.set	nomips16
	.set	micromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqzc	$6,.L101
	lbu	$2,0($4)
	beqzc	$2,.L98
	daddiu	$6,$6,-1
	daddu	$6,$4,$6
.L99:
	lbu	$3,0($5)
	beqzc	$3,.L98
	beq	$4,$6,.L98
	nop

	bne	$3,$2,.L98
	nop

	daddiu	$4,$4,1
	lbu	$2,0($4)
	bnez	$2,.L99
	daddiu	$5,$5,1

.L98:
	lbu	$3,0($5)
	jr	$31
	subu	$2,$2,$3

.L101:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.align	3
	.globl	swab
	.set	nomips16
	.set	micromips
	.ent	swab
	.type	swab, @function
swab:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$6,2
	bnez	$2,.L108
	li	$2,-2			# 0xfffffffffffffffe

	and	$6,$6,$2
	daddu	$3,$4,$6
.L105:
	lbu	$2,1($4)
	sb	$2,0($5)
	lbu	$2,0($4)
	sb	$2,1($5)
	daddiu	$4,$4,2
	bne	$4,$3,.L105
	daddiu	$5,$5,2

.L108:
	jrc	$31
	.set	macro
	.set	reorder
	.end	swab
	.size	swab, .-swab
	.align	2
	.align	3
	.globl	isalpha
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	isascii
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	isblank
	.set	nomips16
	.set	micromips
	.ent	isblank
	.type	isblank, @function
isblank:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,32			# 0x20
	beq	$4,$2,.L115
	xori	$4,$4,0x9

	jr	$31
	sltu	$2,$4,1

.L115:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isblank
	.size	isblank, .-isblank
	.align	2
	.align	3
	.globl	iscntrl
	.set	nomips16
	.set	micromips
	.ent	iscntrl
	.type	iscntrl, @function
iscntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,32
	bnez	$2,.L119
	xori	$4,$4,0x7f

	jr	$31
	sltu	$2,$4,1

.L119:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
	.align	3
	.globl	isdigit
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	isgraph
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	islower
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	isprint
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	isspace
	.set	nomips16
	.set	micromips
	.ent	isspace
	.type	isspace, @function
isspace:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,32			# 0x20
	beq	$4,$2,.L131
	addiu	$4,$4,-9

	jr	$31
	sltu	$2,$4,5

.L131:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	isspace
	.size	isspace, .-isspace
	.align	2
	.align	3
	.globl	isupper
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	iswcntrl
	.set	nomips16
	.set	micromips
	.ent	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,32
	bnezc	$2,.L137
	addiu	$2,$4,-127
	sltu	$2,$2,33
	bnezc	$2,.L138
	addiu	$2,$4,-8232
	sltu	$2,$2,2
	bnezc	$2,.L139
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,7
	addu	$4,$4,$2
	jr	$31
	sltu	$2,$4,3

.L137:
	jr	$31
	li	$2,1			# 0x1

.L138:
	jr	$31
	li	$2,1			# 0x1

.L139:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
	.align	3
	.globl	iswdigit
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	iswprint
	.set	nomips16
	.set	micromips
	.ent	iswprint
	.type	iswprint, @function
iswprint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,255
	bnez	$2,.L151
	addiu	$2,$4,1

	sltu	$2,$4,8232
	bnez	$2,.L146
	li	$3,47062			# 0xb7d6

	addiu	$2,$4,-8234
	sltu	$2,$2,$3
	bnezc	$2,.L147
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,8192
	addu	$2,$4,$2
	sltu	$2,$2,8185
	bnez	$2,.L148
	li	$3,1048576			# 0x100000

	li	$2,-65536			# 0xffffffffffff0000
	addiu	$2,$2,4
	addu	$2,$4,$2
	addiu	$3,$3,4
	sltu	$2,$2,$3
	beqzc	$2,.L149
	andi	$2,$4,0xfffe
	xori	$2,$2,0xfffe
	jr	$31
	sltu	$2,$0,$2

.L151:
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	jr	$31
	sltu	$2,$2,1

.L146:
	jr	$31
	li	$2,1			# 0x1

.L147:
	jr	$31
	li	$2,1			# 0x1

.L148:
	jr	$31
	li	$2,1			# 0x1

.L149:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
	.align	3
	.globl	iswxdigit
	.set	nomips16
	.set	micromips
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
	bnezc	$2,.L154
	ori	$2,$4,0x20
	addiu	$2,$2,-97
	jr	$31
	sltu	$2,$2,6

.L154:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
	.align	3
	.globl	toascii
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	fdim
	.set	nomips16
	.set	micromips
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L161
	c.un.d	$fcc1,$f13,$f13

	bc1t	$fcc1,.L162
	nop

	c.lt.d	$fcc2,$f13,$f12
	bc1f	$fcc2,.L165
	nop

	jr	$31
	sub.d	$f0,$f12,$f13

.L161:
	jr	$31
	mov.d	$f0,$f12

.L162:
	jr	$31
	mov.d	$f0,$f13

.L165:
	jr	$31
	dmtc1	$0,$f0

	.set	macro
	.set	reorder
	.end	fdim
	.size	fdim, .-fdim
	.align	2
	.align	3
	.globl	fdimf
	.set	nomips16
	.set	micromips
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L170
	c.un.s	$fcc1,$f13,$f13

	bc1t	$fcc1,.L171
	nop

	c.lt.s	$fcc2,$f13,$f12
	bc1f	$fcc2,.L174
	nop

	jr	$31
	sub.s	$f0,$f12,$f13

.L170:
	jr	$31
	mov.s	$f0,$f12

.L171:
	jr	$31
	mov.s	$f0,$f13

.L174:
	jr	$31
	mtc1	$0,$f0

	.set	macro
	.set	reorder
	.end	fdimf
	.size	fdimf, .-fdimf
	.align	2
	.align	3
	.globl	fmax
	.set	nomips16
	.set	micromips
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L179
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L180
	ld	$2,0($sp)

	dsrl	$2,$2,63
	ld	$3,8($sp)
	dext	$3,$3,63,1
	beq	$2,$3,.L178
	ldc1	$f0,0($sp)

	mov.d	$f0,$f12
	movn.d	$f0,$f13,$2
.L176:
	jr	$31
	daddiu	$sp,$sp,16

.L178:
	ldc1	$f1,8($sp)
	c.lt.d	$fcc2,$f0,$f1
	b	.L176
	movt.d	$f0,$f1,$fcc2

.L179:
	b	.L176
	ldc1	$f0,8($sp)

.L180:
	b	.L176
	ldc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fmax
	.size	fmax, .-fmax
	.align	2
	.align	3
	.globl	fmaxf
	.set	nomips16
	.set	micromips
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L186
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L187
	lw	$2,0($sp)

	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,4($sp)
	and	$3,$3,$4
	beq	$2,$3,.L185
	move	$5,$2

	mov.s	$f0,$f12
	movn.s	$f0,$f13,$5
.L183:
	jr	$31
	daddiu	$sp,$sp,16

.L185:
	lwc1	$f0,0($sp)
	lwc1	$f1,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	b	.L183
	movt.s	$f0,$f1,$fcc2

.L186:
	b	.L183
	lwc1	$f0,4($sp)

.L187:
	b	.L183
	lwc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
	.align	3
	.globl	fmaxl
	.set	nomips16
	.set	micromips
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	$sp,112,$31		# vars= 32, regs= 10/0, args= 0, gp= 0
	.mask	0xd07f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$28,88($sp)
	sd	$22,80($sp)
	sd	$21,72($sp)
	sd	$20,64($sp)
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	dmfc1	$7,$f13
	dmfc1	$6,$f12
	move	$8,$6
	move	$22,$6
	move	$21,$7
	dmfc1	$7,$f15
	dmfc1	$6,$f14
	move	$fp,$6
	move	$20,$7
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$21,$f15
	dmtc1	$8,$f14
	dmtc1	$21,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$8,$f12

	bnez	$2,.L196
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$20,$f15
	dmtc1	$fp,$f14
	dmtc1	$20,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$fp,$f12

	bnez	$2,.L197
	dext	$3,$fp,63,1

	dsrl	$2,$22,63
	beq	$2,$3,.L192
	ld	$25,%call16(__lttf2)($28)

	bnez	$2,.L190
	move	$2,$20

	move	$fp,$22
	move	$2,$21
.L190:
	dmtc1	$fp,$f0
	dmtc1	$2,$f2
	ld	$31,104($sp)
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$22,80($sp)
	ld	$21,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	ld	$17,40($sp)
	ld	$16,32($sp)
	jraddiusp	112
.L192:
	sd	$fp,0($sp)
	sd	$20,8($sp)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	sd	$22,16($sp)
	sd	$21,24($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bgez	$2,.L193
	nop

	b	.L190
	move	$2,$20

.L193:
	move	$fp,$22
	b	.L190
	move	$2,$21

.L196:
	b	.L190
	move	$2,$20

.L197:
	move	$fp,$22
	b	.L190
	move	$2,$21

	.set	macro
	.set	reorder
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
	.align	3
	.globl	fmin
	.set	nomips16
	.set	micromips
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L203
	sdc1	$f13,8($sp)

	c.un.d	$fcc1,$f13,$f13
	bc1t	$fcc1,.L204
	mov.d	$f0,$f13

	ld	$2,0($sp)
	dsrl	$2,$2,63
	ld	$3,8($sp)
	dext	$3,$3,63,1
	beq	$2,$3,.L202
	ldc1	$f1,8($sp)

	movn.d	$f0,$f12,$2
.L200:
	jr	$31
	daddiu	$sp,$sp,16

.L202:
	ldc1	$f0,0($sp)
	c.lt.d	$fcc2,$f0,$f1
	b	.L200
	movf.d	$f0,$f1,$fcc2

.L203:
	b	.L200
	ldc1	$f0,8($sp)

.L204:
	b	.L200
	ldc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fmin
	.size	fmin, .-fmin
	.align	2
	.align	3
	.globl	fminf
	.set	nomips16
	.set	micromips
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L210
	swc1	$f13,4($sp)

	c.un.s	$fcc1,$f13,$f13
	bc1t	$fcc1,.L211
	mov.s	$f0,$f13

	lw	$2,0($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$2,$2,$4
	lw	$3,4($sp)
	and	$3,$3,$4
	beq	$2,$3,.L209
	move	$5,$2

	movn.s	$f0,$f12,$5
.L207:
	jr	$31
	daddiu	$sp,$sp,16

.L209:
	lwc1	$f0,0($sp)
	lwc1	$f1,4($sp)
	c.lt.s	$fcc2,$f0,$f1
	b	.L207
	movf.s	$f0,$f1,$fcc2

.L210:
	b	.L207
	lwc1	$f0,4($sp)

.L211:
	b	.L207
	lwc1	$f0,0($sp)

	.set	macro
	.set	reorder
	.end	fminf
	.size	fminf, .-fminf
	.align	2
	.align	3
	.globl	fminl
	.set	nomips16
	.set	micromips
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	$sp,112,$31		# vars= 32, regs= 10/0, args= 0, gp= 0
	.mask	0xd07f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$28,88($sp)
	sd	$22,80($sp)
	sd	$21,72($sp)
	sd	$20,64($sp)
	sd	$19,56($sp)
	sd	$18,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	dmfc1	$7,$f13
	dmfc1	$6,$f12
	move	$fp,$6
	move	$20,$7
	dmfc1	$7,$f15
	dmfc1	$6,$f14
	move	$22,$6
	move	$21,$7
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$20,$f15
	dmtc1	$fp,$f14
	dmtc1	$20,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$fp,$f12

	bnez	$2,.L220
	ld	$25,%call16(__unordtf2)($28)

	dmtc1	$21,$f15
	dmtc1	$22,$f14
	dmtc1	$21,$f13
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$22,$f12

	bnez	$2,.L221
	dext	$3,$22,63,1

	dsrl	$2,$fp,63
	beq	$2,$3,.L216
	ld	$25,%call16(__lttf2)($28)

	bnez	$2,.L214
	move	$2,$20

	move	$fp,$22
	move	$2,$21
.L214:
	dmtc1	$fp,$f0
	dmtc1	$2,$f2
	ld	$31,104($sp)
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$22,80($sp)
	ld	$21,72($sp)
	ld	$20,64($sp)
	ld	$19,56($sp)
	ld	$18,48($sp)
	ld	$17,40($sp)
	ld	$16,32($sp)
	jraddiusp	112
.L216:
	sd	$22,0($sp)
	sd	$21,8($sp)
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	sd	$fp,16($sp)
	sd	$20,24($sp)
	ldc1	$f13,24($sp)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f12,16($sp)

	bgez	$2,.L217
	nop

	b	.L214
	move	$2,$20

.L217:
	move	$fp,$22
	b	.L214
	move	$2,$21

.L220:
	move	$fp,$22
	b	.L214
	move	$2,$21

.L221:
	b	.L214
	move	$2,$20

	.set	macro
	.set	reorder
	.end	fminl
	.size	fminl, .-fminl
	.align	2
	.align	3
	.globl	l64a
	.set	nomips16
	.set	micromips
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$6,%hi(%neg(%gp_rel(l64a)))
	daddu	$6,$6,$25
	sll	$4,$4,0
	beqz	$4,.L227
	daddiu	$6,$6,%lo(%neg(%gp_rel(l64a)))

	move	$2,$4
	ld	$4,%got_page(s.0)($6)
	daddiu	$4,$4,%got_ofst(s.0)
	ld	$5,%got_page(digits)($6)
	daddiu	$5,$5,%got_ofst(digits)
.L226:
	andi	$3,$2,0x3f
	daddu	$3,$3,$5
	lbu	$3,0($3)
	sb	$3,0($4)
	dext	$2,$2,6,26
	bnez	$2,.L226
	daddiu	$4,$4,1

.L225:
	sb	$0,0($4)
	ld	$2,%got_page(s.0)($6)
	jr	$31
	daddiu	$2,$2,%got_ofst(s.0)

.L227:
	ld	$4,%got_page(s.0)($6)
	b	.L225
	daddiu	$4,$4,%got_ofst(s.0)

	.set	macro
	.set	reorder
	.end	l64a
	.size	l64a, .-l64a
	.align	2
	.align	3
	.globl	srand
	.set	nomips16
	.set	micromips
	.ent	srand
	.type	srand, @function
srand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(%neg(%gp_rel(srand)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(srand)))
	addiu	$4,$4,-1
	dext	$4,$4,0,32
	ld	$2,%got_page(seed)($3)
	jr	$31
	sd	$4,%got_ofst(seed)($2)

	.set	macro
	.set	reorder
	.end	srand
	.size	srand, .-srand
	.align	2
	.align	3
	.globl	rand
	.set	nomips16
	.set	micromips
	.ent	rand
	.type	rand, @function
rand:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$5,%hi(%neg(%gp_rel(rand)))
	daddu	$5,$5,$25
	daddiu	$5,$5,%lo(%neg(%gp_rel(rand)))
	ld	$3,%got_page(seed)($5)
	ld	$4,%got_ofst(seed)($3)
	li	$2,1481703424			# 0x58510000
	ori	$2,$2,0xf42d
	dsll	$2,$2,16
	ori	$2,$2,0x4c95
	dsll	$2,$2,16
	daddiu	$2,$2,32557
	dmult	$4,$2
	mflo	$2
	daddiu	$2,$2,1
	sd	$2,%got_ofst(seed)($3)
	jr	$31
	dsrl	$2,$2,33

	.set	macro
	.set	reorder
	.end	rand
	.size	rand, .-rand
	.align	2
	.align	3
	.globl	insque
	.set	nomips16
	.set	micromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqzc	$5,.L238
	ld	$2,0($5)
	sd	$2,0($4)
	sd	$5,8($4)
	sd	$4,0($5)
	ld	$2,0($4)
	beqzc	$2,.L239
	sd	$4,8($2)
.L239:
	jrc	$31
.L238:
	sd	$0,8($4)
	jr	$31
	sd	$0,0($4)

	.set	macro
	.set	reorder
	.end	insque
	.size	insque, .-insque
	.align	2
	.align	3
	.globl	remque
	.set	nomips16
	.set	micromips
	.ent	remque
	.type	remque, @function
remque:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($4)
	beqzc	$2,.L241
	ld	$3,8($4)
	sd	$3,8($2)
.L241:
	ld	$2,8($4)
	beqzc	$2,.L244
	ld	$3,0($4)
	sd	$3,0($2)
.L244:
	jrc	$31
	.set	macro
	.set	reorder
	.end	remque
	.size	remque, .-remque
	.align	2
	.align	3
	.globl	lsearch
	.set	nomips16
	.set	micromips
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$28,72($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	move	$19,$4
	move	$fp,$5
	move	$23,$6
	ld	$22,0($6)
	beqz	$22,.L246
	move	$18,$7

	move	$20,$8
	move	$16,$5
	move	$17,$0
.L248:
	move	$21,$16
	move	$5,$16
	move	$25,$20
	jalr	$25
	move	$4,$19

	beqz	$2,.L245
	daddiu	$17,$17,1

	bne	$22,$17,.L248
	daddu	$16,$16,$18

.L246:
	daddiu	$2,$22,1
	sd	$2,0($23)
	dmult	$18,$22
	mflo	$4
	move	$6,$18
	move	$5,$19
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$fp,$4

	move	$21,$2
.L245:
	move	$2,$21
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	96
	.set	macro
	.set	reorder
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.align	3
	.globl	lfind
	.set	nomips16
	.set	micromips
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	ld	$21,0($6)
	beqz	$21,.L252
	move	$18,$4

	move	$20,$7
	move	$19,$8
	move	$16,$5
	move	$17,$0
.L254:
	move	$22,$16
	move	$5,$16
	move	$25,$19
	jalr	$25
	move	$4,$18

	beqz	$2,.L251
	daddiu	$17,$17,1

	bne	$21,$17,.L254
	daddu	$16,$16,$20

.L252:
	move	$22,$0
.L251:
	move	$2,$22
	ld	$31,72($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	lfind
	.size	lfind, .-lfind
	.align	2
	.align	3
	.globl	abs
	.set	nomips16
	.set	micromips
	.ent	abs
	.type	abs, @function
abs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L261
	nop

	jr	$31
	move	$2,$4

.L261:
	jr	$31
	subu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	abs
	.size	abs, .-abs
	.align	2
	.align	3
	.globl	atoi
	.set	nomips16
	.set	micromips
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(atoi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoi)))
	move	$16,$4
	b	.L263
	ld	$18,%got_disp(isspace)($28)

.L264:
	daddiu	$16,$16,1
.L263:
	lb	$17,0($16)
	move	$25,$18
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	move	$4,$17

	bnez	$2,.L264
	li	$3,43			# 0x2b

	beq	$17,$3,.L270
	li	$3,45			# 0x2d

	bne	$17,$3,.L266
	move	$5,$2

	li	$5,1			# 0x1
.L265:
	daddiu	$16,$16,1
.L266:
	lb	$3,0($16)
	addiu	$4,$3,-48
	sltu	$4,$4,10
	beqz	$4,.L268
	sll	$4,$2,2

.L275:
	addu	$4,$4,$2
	sll	$4,$4,1
	daddiu	$16,$16,1
	addiu	$3,$3,-48
	seb	$3,$3
	subu	$2,$4,$3
	lb	$3,0($16)
	addiu	$4,$3,-48
	sltu	$4,$4,10
	bnez	$4,.L275
	sll	$4,$2,2

.L268:
	bnez	$5,.L276
	ld	$31,40($sp)

	subu	$2,$0,$2
.L276:
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
.L270:
	b	.L265
	move	$5,$2

	.set	macro
	.set	reorder
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.align	3
	.globl	atol
	.set	nomips16
	.set	micromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(atol)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atol)))
	move	$16,$4
	b	.L278
	ld	$18,%got_disp(isspace)($28)

.L279:
	daddiu	$16,$16,1
.L278:
	lb	$17,0($16)
	move	$25,$18
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	move	$4,$17

	bnez	$2,.L279
	li	$3,43			# 0x2b

	beq	$17,$3,.L280
	li	$3,45			# 0x2d

	bne	$17,$3,.L281
	nop

	li	$2,1			# 0x1
.L280:
	daddiu	$16,$16,1
.L281:
	lb	$3,0($16)
	addiu	$4,$3,-48
	sltu	$4,$4,10
	beqz	$4,.L283
	move	$5,$0

	dsll	$4,$5,2
.L289:
	daddu	$4,$4,$5
	dsll	$4,$4,1
	daddiu	$16,$16,1
	addiu	$3,$3,-48
	seb	$3,$3
	dsubu	$5,$4,$3
	lb	$3,0($16)
	addiu	$4,$3,-48
	sltu	$4,$4,10
	bnez	$4,.L289
	dsll	$4,$5,2

.L283:
	bnez	$2,.L290
	move	$2,$5

	dsubu	$5,$0,$5
	move	$2,$5
.L290:
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	atol
	.size	atol, .-atol
	.align	2
	.align	3
	.globl	atoll
	.set	nomips16
	.set	micromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(atoll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoll)))
	move	$16,$4
	b	.L292
	ld	$18,%got_disp(isspace)($28)

.L293:
	daddiu	$16,$16,1
.L292:
	lb	$17,0($16)
	move	$25,$18
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalr	$25
	move	$4,$17

	bnez	$2,.L293
	li	$3,43			# 0x2b

	beq	$17,$3,.L294
	li	$3,45			# 0x2d

	bne	$17,$3,.L295
	nop

	li	$2,1			# 0x1
.L294:
	daddiu	$16,$16,1
.L295:
	lb	$3,0($16)
	addiu	$4,$3,-48
	sltu	$4,$4,10
	beqz	$4,.L297
	move	$5,$0

	dsll	$4,$5,2
.L303:
	daddu	$4,$4,$5
	dsll	$4,$4,1
	daddiu	$16,$16,1
	addiu	$3,$3,-48
	seb	$3,$3
	dsubu	$5,$4,$3
	lb	$3,0($16)
	addiu	$4,$3,-48
	sltu	$4,$4,10
	bnez	$4,.L303
	dsll	$4,$5,2

.L297:
	bnez	$2,.L304
	move	$2,$5

	dsubu	$5,$0,$5
	move	$2,$5
.L304:
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.align	3
	.globl	bsearch
	.set	nomips16
	.set	micromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	beqz	$6,.L306
	sd	$16,8($sp)

	move	$22,$4
	move	$20,$5
	move	$16,$6
	move	$19,$7
	b	.L309
	move	$21,$8

.L310:
	move	$16,$18
.L307:
	beqz	$16,.L305
	move	$17,$0

.L309:
	dsrl	$18,$16,1
	dmult	$18,$19
	mflo	$17
	daddu	$17,$20,$17
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	bltz	$2,.L310
	nop

	blez	$2,.L305
	daddu	$20,$17,$19

	daddiu	$16,$16,-1
	b	.L307
	dsubu	$16,$16,$18

.L306:
	move	$17,$0
.L305:
	move	$2,$17
	ld	$31,72($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.align	3
	.globl	bsearch_r
	.set	nomips16
	.set	micromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sll	$6,$6,0
	beqz	$6,.L314
	sd	$16,8($sp)

	move	$22,$4
	move	$19,$5
	move	$18,$7
	move	$21,$8
	move	$20,$9
	b	.L317
	move	$16,$6

.L316:
	sra	$16,$16,1
	beqz	$16,.L313
	move	$17,$0

.L317:
	sra	$2,$16,1
	dmult	$2,$18
	mflo	$17
	daddu	$17,$19,$17
	move	$6,$20
	move	$5,$17
	move	$25,$21
	jalr	$25
	move	$4,$22

	beqzc	$2,.L313
	blez	$2,.L316
	nop

	daddu	$19,$17,$18
	b	.L316
	addiu	$16,$16,-1

.L314:
	move	$17,$0
.L313:
	move	$2,$17
	ld	$31,72($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.align	3
	.globl	div
	.set	nomips16
	.set	micromips
	.ent	div
	.type	div, @function
div:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	div	$0,$4,$5
	teq	$5,$0,7
	mflo	$3
	div	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	move	$2,$0
	dext	$3,$3,0,32
	dins	$2,$3,32,32
	dext	$4,$4,0,32
	dins	$2,$4,0,32
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	div
	.size	div, .-div
	.align	2
	.align	3
	.globl	imaxabs
	.set	nomips16
	.set	micromips
	.ent	imaxabs
	.type	imaxabs, @function
imaxabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L325
	move	$2,$4

.L323:
	jrc	$31
.L325:
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	imaxabs
	.size	imaxabs, .-imaxabs
	.align	2
	.align	3
	.globl	imaxdiv
	.set	nomips16
	.set	micromips
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	imaxdiv
	.size	imaxdiv, .-imaxdiv
	.align	2
	.align	3
	.globl	labs
	.set	nomips16
	.set	micromips
	.ent	labs
	.type	labs, @function
labs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L331
	move	$2,$4

.L329:
	jrc	$31
.L331:
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	labs
	.size	labs, .-labs
	.align	2
	.align	3
	.globl	ldiv
	.set	nomips16
	.set	micromips
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	ldiv
	.size	ldiv, .-ldiv
	.align	2
	.align	3
	.globl	llabs
	.set	nomips16
	.set	micromips
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L337
	move	$2,$4

.L335:
	jrc	$31
.L337:
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	llabs
	.size	llabs, .-llabs
	.align	2
	.align	3
	.globl	lldiv
	.set	nomips16
	.set	micromips
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	ddiv	$0,$4,$5
	teq	$5,$0,7
	mfhi	$4
	mflo	$2
	move	$3,$4
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	lldiv
	.size	lldiv, .-lldiv
	.align	2
	.align	3
	.globl	wcschr
	.set	nomips16
	.set	micromips
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$3,0($4)
	beqz	$3,.L342
	move	$2,$4

.L341:
	beq	$5,$3,.L348
	nop

	daddiu	$4,$4,4
	lw	$3,0($4)
	bnezc	$3,.L341
	b	.L342
	move	$2,$4

.L348:
	move	$2,$4
.L342:
	jr	$31
	movz	$2,$0,$3

	.set	macro
	.set	reorder
	.end	wcschr
	.size	wcschr, .-wcschr
	.align	2
	.align	3
	.globl	wcscmp
	.set	nomips16
	.set	micromips
	.ent	wcscmp
	.type	wcscmp, @function
wcscmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	lw	$3,0($5)
	bne	$2,$3,.L351
	nop

.L350:
	beqzc	$2,.L351
	beqz	$3,.L351
	daddiu	$4,$4,4

	daddiu	$5,$5,4
	lw	$2,0($4)
	lw	$3,0($5)
	beq	$2,$3,.L350
	nop

.L351:
	slt	$4,$2,$3
	bnezc	$4,.L354
	jr	$31
	slt	$2,$3,$2

.L354:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
	.align	3
	.globl	wcscpy
	.set	nomips16
	.set	micromips
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
.L358:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$6,-4($5)
	bnez	$6,.L358
	sw	$6,-4($3)

	jrc	$31
	.set	macro
	.set	reorder
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
	.align	3
	.globl	wcslen
	.set	nomips16
	.set	micromips
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	beqz	$2,.L362
	move	$2,$4

.L363:
	daddiu	$2,$2,4
	lw	$3,0($2)
	bnezc	$3,.L363
.L362:
	dsubu	$2,$2,$4
	jr	$31
	dsra	$2,$2,2

	.set	macro
	.set	reorder
	.end	wcslen
	.size	wcslen, .-wcslen
	.align	2
	.align	3
	.globl	wcsncmp
	.set	nomips16
	.set	micromips
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqzc	$6,.L369
.L368:
	lw	$2,0($4)
	lw	$3,0($5)
	bne	$3,$2,.L369
	nop

	beqzc	$2,.L369
	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	bnez	$6,.L368
	daddiu	$5,$5,4

.L369:
	beqzc	$6,.L372
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$4,$2,$3
	bnezc	$4,.L373
	jr	$31
	slt	$2,$3,$2

.L372:
	jr	$31
	move	$2,$0

.L373:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
	.align	3
	.globl	wmemchr
	.set	nomips16
	.set	micromips
	.ent	wmemchr
	.type	wmemchr, @function
wmemchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$6,.L378
	move	$2,$4

.L377:
	lw	$2,0($4)
	beq	$2,$5,.L384
	nop

	daddiu	$6,$6,-1
	bnez	$6,.L377
	daddiu	$4,$4,4

	b	.L378
	move	$2,$4

.L384:
	move	$2,$4
.L378:
	jr	$31
	movz	$2,$0,$6

	.set	macro
	.set	reorder
	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
	.align	3
	.globl	wmemcmp
	.set	nomips16
	.set	micromips
	.ent	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqzc	$6,.L387
.L386:
	lw	$3,0($4)
	lw	$2,0($5)
	bne	$3,$2,.L387
	nop

	daddiu	$6,$6,-1
	daddiu	$4,$4,4
	bnez	$6,.L386
	daddiu	$5,$5,4

.L387:
	beqzc	$6,.L390
	lw	$2,0($4)
	lw	$3,0($5)
	slt	$4,$2,$3
	bnezc	$4,.L391
	jr	$31
	slt	$2,$3,$2

.L390:
	jr	$31
	move	$2,$0

.L391:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.align	3
	.globl	wmemcpy
	.set	nomips16
	.set	micromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(wmemcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(wmemcpy)))
	beqz	$6,.L395
	move	$16,$4

	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

.L395:
	move	$2,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.align	3
	.globl	wmemmove
	.set	nomips16
	.set	micromips
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L409
	move	$2,$4

	dsubu	$3,$4,$5
	dsll	$4,$6,2
	sltu	$3,$3,$4
	bnez	$3,.L399
	daddiu	$7,$6,-1

	move	$3,$2
	beqz	$6,.L409
	li	$8,-1			# 0xffffffffffffffff

.L400:
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	lw	$4,-4($5)
	daddiu	$7,$7,-1
	bne	$7,$8,.L400
	sw	$4,-4($3)

.L409:
	jrc	$31
.L399:
	beqz	$6,.L409
	daddiu	$3,$6,-1

	dsll	$3,$3,2
	li	$7,-4			# 0xfffffffffffffffc
.L401:
	daddu	$4,$5,$3
	lw	$6,0($4)
	daddu	$4,$2,$3
	daddiu	$3,$3,-4
	bne	$3,$7,.L401
	sw	$6,0($4)

	jrc	$31
	.set	macro
	.set	reorder
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
	.align	3
	.globl	wmemset
	.set	nomips16
	.set	micromips
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$6,.L415
	move	$2,$4

	daddiu	$3,$6,-1
	move	$6,$4
	li	$7,-1			# 0xffffffffffffffff
.L412:
	daddiu	$6,$6,4
	daddiu	$3,$3,-1
	bne	$3,$7,.L412
	sw	$5,-4($6)

.L415:
	jrc	$31
	.set	macro
	.set	reorder
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.align	3
	.globl	bcopy
	.set	nomips16
	.set	micromips
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$5
	beqz	$2,.L417
	daddu	$2,$4,$6

	beqz	$6,.L425
	daddu	$5,$5,$6

.L419:
	daddiu	$2,$2,-1
	daddiu	$5,$5,-1
	lb	$3,0($2)
	bne	$4,$2,.L419
	sb	$3,0($5)

.L425:
	jrc	$31
.L417:
	beq	$4,$5,.L424
	nop

	beqz	$6,.L425
	daddu	$6,$4,$6

.L420:
	daddiu	$4,$4,1
	daddiu	$5,$5,1
	lb	$2,-1($4)
	bne	$6,$4,.L420
	sb	$2,-1($5)

.L424:
	jrc	$31
	.set	macro
	.set	reorder
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
	.align	3
	.globl	rotl64
	.set	nomips16
	.set	micromips
	.ent	rotl64
	.type	rotl64, @function
rotl64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	subu	$5,$0,$5
	jr	$31
	dror	$2,$4,$5

	.set	macro
	.set	reorder
	.end	rotl64
	.size	rotl64, .-rotl64
	.align	2
	.align	3
	.globl	rotr64
	.set	nomips16
	.set	micromips
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dror	$2,$4,$5

	.set	macro
	.set	reorder
	.end	rotr64
	.size	rotr64, .-rotr64
	.align	2
	.align	3
	.globl	rotl32
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	rotr32
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	rotl_sz
	.set	nomips16
	.set	micromips
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
	dror	$2,$4,$5

	.set	macro
	.set	reorder
	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
	.align	3
	.globl	rotr_sz
	.set	nomips16
	.set	micromips
	.ent	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dror	$2,$4,$5

	.set	macro
	.set	reorder
	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
	.align	3
	.globl	rotl16
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	rotr16
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	rotl8
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	rotr8
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	bswap_16
	.set	nomips16
	.set	micromips
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$2,$4,8,16
	sll	$4,$4,8
	or	$2,$2,$4
	jr	$31
	andi	$2,$2,0xffff

	.set	macro
	.set	reorder
	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.align	3
	.globl	bswap_32
	.set	nomips16
	.set	micromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$3,$4,8
	li	$2,16711680			# 0xff0000
	and	$3,$3,$2
	sll	$5,$4,24
	or	$3,$3,$5
	srl	$5,$4,24
	or	$3,$3,$5
	and	$2,$4,$2
	srl	$2,$2,8
	jr	$31
	or	$2,$2,$3

	.set	macro
	.set	reorder
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.align	3
	.globl	bswap_64
	.set	nomips16
	.set	micromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$2,$4,56
	dsrl	$3,$4,56
	or	$2,$2,$3
	dsrl	$3,$4,40
	andi	$3,$3,0xff00
	or	$2,$2,$3
	dsrl	$3,$4,24
	li	$5,16711680			# 0xff0000
	and	$3,$3,$5
	or	$2,$2,$3
	dsrl	$5,$4,8
	li	$3,255			# 0xff
	dsll	$6,$3,24
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$5,$4,8
	dsll	$6,$3,32
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$5,$4,24
	dsll	$6,$3,40
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$4,$4,40
	dsll	$3,$3,48
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.align	3
	.globl	ffs
	.set	nomips16
	.set	micromips
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
.L459:
	andi	$3,$3,0x1
	bnezc	$3,.L458
	addiu	$2,$2,1
	bne	$2,$5,.L459
	srl	$3,$4,$2

	jr	$31
	move	$2,$0

.L458:
	jr	$31
	addiu	$2,$2,1

	.set	macro
	.set	reorder
	.end	ffs
	.size	ffs, .-ffs
	.align	2
	.align	3
	.globl	libiberty_ffs
	.set	nomips16
	.set	micromips
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$4,.L467
	move	$2,$4

	andi	$2,$4,0x1
	bnezc	$2,.L466
	li	$2,1			# 0x1
.L462:
	sra	$4,$4,1
	andi	$3,$4,0x1
	beqz	$3,.L462
	addiu	$2,$2,1

.L467:
	jrc	$31
.L466:
	jrc	$31
	.set	macro
	.set	reorder
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.align	3
	.globl	gl_isinff
	.set	nomips16
	.set	micromips
	.ent	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(%neg(%gp_rel(gl_isinff)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(gl_isinff)))
	ld	$2,%got_page(.LC0)($4)
	lwc1	$f0,%got_ofst(.LC0)($2)
	c.lt.s	$fcc0,$f12,$f0
	bc1t	$fcc0,.L471
	ld	$3,%got_page(.LC1)($4)

	lwc1	$f0,%got_ofst(.LC1)($3)
	c.lt.s	$fcc1,$f0,$f12
	bc1t	$fcc1,.L473
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

.L471:
	li	$2,1			# 0x1
.L473:
	jrc	$31
	.set	macro
	.set	reorder
	.end	gl_isinff
	.size	gl_isinff, .-gl_isinff
	.align	2
	.align	3
	.globl	gl_isinfd
	.set	nomips16
	.set	micromips
	.ent	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(gl_isinfd)))
	ld	$2,%got_page(.LC2)($4)
	ldc1	$f0,%got_ofst(.LC2)($2)
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L477
	ld	$3,%got_page(.LC3)($4)

	ldc1	$f0,%got_ofst(.LC3)($3)
	c.lt.d	$fcc1,$f0,$f12
	bc1t	$fcc1,.L479
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

.L477:
	li	$2,1			# 0x1
.L479:
	jrc	$31
	.set	macro
	.set	reorder
	.end	gl_isinfd
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.align	3
	.globl	gl_isinfl
	.set	nomips16
	.set	micromips
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	dmfc1	$3,$f13
	dmfc1	$2,$f12
	move	$19,$2
	move	$18,$3
	ld	$25,%call16(__lttf2)($28)
	ld	$2,%got_page(.LC4)($28)
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalr	$25
	ldc1	$f14,%got_ofst(.LC4)($2)

	bltz	$2,.L485
	li	$2,1			# 0x1

	ld	$25,%call16(__gttf2)($28)
	ld	$2,%got_page(.LC5)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	ldc1	$f14,%got_ofst(.LC5)($2)
	dmtc1	$18,$f13
	.reloc	1f,R_MICROMIPS_JALR,__gttf2
1:	jalr	$25
	dmtc1	$19,$f12

	slt	$2,$0,$2
.L481:
.L485:
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.align	3
	.globl	_Qp_itoq
	.set	nomips16
	.set	micromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x900d0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_Qp_itoq)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_Qp_itoq)))
	move	$16,$4
	ld	$25,%call16(__extenddftf2)($28)
	dmtc1	$5,$f0
	.reloc	1f,R_MICROMIPS_JALR,__extenddftf2
1:	jalr	$25
	cvt.d.w	$f12,$f0

	sdc1	$f2,8($16)
	sdc1	$f0,0($16)
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	_Qp_itoq
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.align	3
	.globl	ldexpf
	.set	nomips16
	.set	micromips
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.s	$fcc0,$f12,$f12
	bc1t	$fcc0,.L500
	mov.s	$f0,$f12

	add.s	$f1,$f12,$f12
	c.eq.s	$fcc1,$f1,$f12
	bc1t	$fcc1,.L500
	lui	$3,%hi(%neg(%gp_rel(ldexpf)))

	daddu	$3,$3,$25
	bltz	$5,.L498
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexpf)))

	ld	$2,%got_page(.LC6)($3)
	b	.L492
	lwc1	$f1,%got_ofst(.LC6)($2)

.L498:
	ld	$2,%got_page(.LC7)($3)
	b	.L492
	lwc1	$f1,%got_ofst(.LC7)($2)

.L499:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L500
	mul.s	$f1,$f1,$f1
.L492:
	andi	$2,$5,0x1
	beqz	$2,.L499
	srl	$2,$5,31

	b	.L499
	mul.s	$f0,$f0,$f1

.L500:
	jrc	$31
	.set	macro
	.set	reorder
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
	.align	3
	.globl	ldexp
	.set	nomips16
	.set	micromips
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.un.d	$fcc0,$f12,$f12
	bc1t	$fcc0,.L513
	mov.d	$f0,$f12

	add.d	$f1,$f12,$f12
	c.eq.d	$fcc1,$f1,$f12
	bc1t	$fcc1,.L513
	lui	$3,%hi(%neg(%gp_rel(ldexp)))

	daddu	$3,$3,$25
	bltz	$5,.L511
	daddiu	$3,$3,%lo(%neg(%gp_rel(ldexp)))

	ld	$2,%got_page(.LC8)($3)
	b	.L505
	ldc1	$f1,%got_ofst(.LC8)($2)

.L511:
	ld	$2,%got_page(.LC9)($3)
	b	.L505
	ldc1	$f1,%got_ofst(.LC9)($2)

.L512:
	addu	$5,$2,$5
	sra	$5,$5,1
	beqzc	$5,.L513
	mul.d	$f1,$f1,$f1
.L505:
	andi	$2,$5,0x1
	beqz	$2,.L512
	srl	$2,$5,31

	b	.L512
	mul.d	$f0,$f0,$f1

.L513:
	jrc	$31
	.set	macro
	.set	reorder
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
	.align	3
	.globl	ldexpl
	.set	nomips16
	.set	micromips
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	$sp,144,$31		# vars= 48, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	sd	$31,136($sp)
	sd	$fp,128($sp)
	sd	$28,120($sp)
	sd	$23,112($sp)
	sd	$22,104($sp)
	sd	$21,96($sp)
	sd	$20,88($sp)
	sd	$19,80($sp)
	sd	$18,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	dmfc1	$5,$f13
	dmfc1	$4,$f12
	move	$fp,$4
	move	$23,$5
	move	$22,$6
	ld	$25,%call16(__unordtf2)($28)
	dmtc1	$5,$f15
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalr	$25
	dmtc1	$4,$f14

	bnez	$2,.L515
	ld	$25,%call16(__addtf3)($28)

	dmtc1	$23,$f15
	dmtc1	$fp,$f14
	sd	$fp,0($sp)
	sd	$23,8($sp)
	ldc1	$f13,8($sp)
	.reloc	1f,R_MICROMIPS_JALR,__addtf3
1:	jalr	$25
	ldc1	$f12,0($sp)

	ld	$25,%call16(__netf2)($28)
	sd	$fp,16($sp)
	sd	$23,24($sp)
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	sdc1	$f0,32($sp)
	sdc1	$f2,40($sp)
	ldc1	$f13,40($sp)
	.reloc	1f,R_MICROMIPS_JALR,__netf2
1:	jalr	$25
	ldc1	$f12,32($sp)

	beqz	$2,.L524
	dmtc1	$fp,$f0

	bltz	$22,.L523
	ld	$2,%got_page(.LC10)($28)

	ld	$17,%got_ofst(.LC10+8)($2)
	b	.L519
	ld	$16,%got_ofst(.LC10)($2)

.L523:
	ld	$2,%got_page(.LC11)($28)
	ld	$17,%got_ofst(.LC11+8)($2)
	b	.L519
	ld	$16,%got_ofst(.LC11)($2)

.L518:
	srl	$2,$22,31
.L525:
	addu	$2,$2,$22
	sra	$22,$2,1
	beqz	$22,.L515
	ld	$25,%call16(__multf3)($28)

	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$17,$f13
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$16,$f12

	dmfc1	$3,$f0
	dmfc1	$2,$f2
	move	$17,$2
	move	$16,$3
.L519:
	andi	$2,$22,0x1
	beqz	$2,.L525
	srl	$2,$22,31

	ld	$25,%call16(__multf3)($28)
	dmtc1	$17,$f15
	dmtc1	$16,$f14
	dmtc1	$23,$f13
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalr	$25
	dmtc1	$fp,$f12

	dmfc1	$fp,$f0
	b	.L518
	dmfc1	$23,$f2

.L515:
	dmtc1	$fp,$f0
.L524:
	dmtc1	$23,$f2
	ld	$31,136($sp)
	ld	$fp,128($sp)
	ld	$28,120($sp)
	ld	$23,112($sp)
	ld	$22,104($sp)
	ld	$21,96($sp)
	ld	$20,88($sp)
	ld	$19,80($sp)
	ld	$18,72($sp)
	ld	$17,64($sp)
	ld	$16,56($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.set	macro
	.set	reorder
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.align	3
	.globl	memxor
	.set	nomips16
	.set	micromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$6,.L531
	move	$2,$4

	daddu	$6,$5,$6
	move	$3,$4
.L528:
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	lbu	$7,-1($3)
	lbu	$8,-1($5)
	xor	$7,$7,$8
	bne	$6,$5,.L528
	sb	$7,-1($3)

.L531:
	jrc	$31
	.set	macro
	.set	reorder
	.end	memxor
	.size	memxor, .-memxor
	.align	2
	.align	3
	.globl	strncat
	.set	nomips16
	.set	micromips
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(strncat)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strncat)))
	move	$18,$4
	move	$17,$5
	ld	$25,%got_disp(strlen)($28)
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalr	$25
	move	$16,$6

	beqz	$16,.L534
	daddu	$2,$18,$2

.L533:
	lb	$3,0($17)
	beqz	$3,.L534
	sb	$3,0($2)

	daddiu	$17,$17,1
	daddiu	$16,$16,-1
	bnez	$16,.L533
	daddiu	$2,$2,1

.L534:
	bnezc	$16,.L536
	sb	$0,0($2)
.L536:
	move	$2,$18
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.align	3
	.globl	strnlen
	.set	nomips16
	.set	micromips
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqz	$5,.L548
	move	$2,$0

	daddu	$3,$4,$2
.L550:
	lb	$3,0($3)
	bnezc	$3,.L549
.L539:
	jrc	$31
.L548:
	jr	$31
	move	$2,$5

.L549:
	daddiu	$2,$2,1
	bne	$5,$2,.L550
	daddu	$3,$4,$2

	jr	$31
	move	$2,$5

	.set	macro
	.set	reorder
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
	.align	3
	.globl	strpbrk
	.set	nomips16
	.set	micromips
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$7,0($4)
	beqz	$7,.L560
	move	$2,$4

	move	$3,$5
.L555:
	lb	$6,0($3)
	beqzc	$6,.L561
	bne	$6,$7,.L555
	daddiu	$3,$3,1

.L553:
	jrc	$31
.L560:
	jr	$31
	move	$2,$0

.L561:
	daddiu	$2,$2,1
	lb	$7,0($2)
	bnez	$7,.L555
	move	$3,$5

	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.align	3
	.globl	strrchr
	.set	nomips16
	.set	micromips
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L564
	move	$2,$0

.L563:
	beqz	$3,.L569
	daddiu	$4,$4,1

.L564:
	lb	$3,0($4)
	bne	$3,$5,.L563
	nop

	b	.L563
	move	$2,$4

.L569:
	jrc	$31
	.set	macro
	.set	reorder
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
	.align	3
	.globl	strstr
	.set	nomips16
	.set	micromips
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(strstr)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strstr)))
	move	$16,$4
	move	$17,$5
	ld	$25,%got_disp(strlen)($28)
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalr	$25
	move	$4,$5

	beqz	$2,.L570
	move	$18,$2

	lb	$20,0($17)
	ld	$19,%got_disp(strchr)($28)
	ld	$21,%got_disp(strncmp)($28)
.L572:
	move	$5,$20
	move	$25,$19
	.reloc	1f,R_MICROMIPS_JALR,strchr
1:	jalr	$25
	move	$4,$16

	beqz	$2,.L570
	move	$16,$2

	move	$6,$18
	move	$5,$17
	move	$25,$21
	.reloc	1f,R_MICROMIPS_JALR,strncmp
1:	jalr	$25
	move	$4,$16

	beqz	$2,.L576
	move	$2,$16

	b	.L572
	daddiu	$16,$16,1

.L570:
	move	$2,$16
.L576:
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	strstr
	.size	strstr, .-strstr
	.align	2
	.align	3
	.globl	copysign
	.set	nomips16
	.set	micromips
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	dmtc1	$0,$f0
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L587
	sdc1	$f12,0($sp)

	dmtc1	$0,$f0
.L589:
	ldc1	$f1,0($sp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L581
	nop

	c.lt.d	$fcc3,$f13,$f0
	bc1t	$fcc3,.L588
	li	$2,-1			# 0xffffffffffffffff

.L581:
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L587:
	c.lt.d	$fcc1,$f0,$f13
	bc1f	$fcc1,.L589
	dmtc1	$0,$f0

	li	$2,-1			# 0xffffffffffffffff
.L588:
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	b	.L581
	sd	$2,0($sp)

	.set	macro
	.set	reorder
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.align	3
	.globl	memmem
	.set	nomips16
	.set	micromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(memmem)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(memmem)))
	beqz	$7,.L594
	move	$16,$4

	sltu	$2,$5,$7
	bnez	$2,.L595
	dsubu	$5,$5,$7

	daddu	$17,$4,$5
	sltu	$2,$17,$4
	bnez	$2,.L596
	daddiu	$19,$7,-1

	lb	$20,0($6)
	daddiu	$18,$6,1
	b	.L593
	ld	$21,%got_disp(memcmp)($28)

.L592:
	daddiu	$16,$16,1
.L601:
	sltu	$2,$17,$16
	bnez	$2,.L600
	move	$2,$0

.L593:
	lb	$2,0($16)
	bne	$2,$20,.L592
	move	$6,$19

	move	$5,$18
	move	$25,$21
	.reloc	1f,R_MICROMIPS_JALR,memcmp
1:	jalr	$25
	daddiu	$4,$16,1

	bnez	$2,.L601
	daddiu	$16,$16,1

	daddiu	$16,$16,-1
	move	$2,$16
.L600:
.L590:
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	64
.L594:
	b	.L590
	move	$2,$4

.L595:
	b	.L590
	move	$2,$0

.L596:
	b	.L590
	move	$2,$0

	.set	macro
	.set	reorder
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.align	3
	.globl	mempcpy
	.set	nomips16
	.set	micromips
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(mempcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalr	$25
	move	$16,$6

	daddu	$2,$2,$16
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	mempcpy
	.size	mempcpy, .-mempcpy
	.align	2
	.align	3
	.globl	frexp
	.set	nomips16
	.set	micromips
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lui	$6,%hi(%neg(%gp_rel(frexp)))
	daddu	$6,$6,$25
	daddiu	$6,$6,%lo(%neg(%gp_rel(frexp)))
	dmtc1	$0,$f0
	c.lt.d	$fcc0,$f12,$f0
	bc1t	$fcc0,.L626
	sdc1	$f12,0($sp)

	move	$3,$0
.L605:
	ld	$2,%got_page(.LC12)($6)
	ldc1	$f0,%got_ofst(.LC12)($2)
	ldc1	$f1,0($sp)
	c.le.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L623
	move	$2,$0

	ld	$4,%got_page(.LC9)($6)
	ldc1	$f1,%got_ofst(.LC9)($4)
.L609:
	addiu	$2,$2,1
	ldc1	$f2,0($sp)
	mul.d	$f2,$f2,$f1
	c.le.d	$fcc2,$f0,$f2
	bc1t	$fcc2,.L609
	sdc1	$f2,0($sp)

.L610:
.L627:
	beqz	$3,.L613
	sw	$2,0($5)

	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	sd	$2,0($sp)
.L613:
	ldc1	$f0,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L626:
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	ld	$3,0($sp)
	xor	$2,$3,$2
	sd	$2,0($sp)
	b	.L605
	li	$3,1			# 0x1

.L623:
	ld	$2,%got_page(.LC9)($6)
	ldc1	$f0,%got_ofst(.LC9)($2)
	ldc1	$f1,0($sp)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L624
	dmtc1	$0,$f0

	c.eq.d	$fcc4,$f1,$f0
	bc1t	$fcc4,.L627
	move	$2,$0

	ld	$4,%got_page(.LC9)($6)
	ldc1	$f0,%got_ofst(.LC9)($4)
.L612:
	addiu	$2,$2,-1
	ldc1	$f1,0($sp)
	add.d	$f1,$f1,$f1
	c.lt.d	$fcc5,$f1,$f0
	bc1t	$fcc5,.L612
	sdc1	$f1,0($sp)

	b	.L610
	nop

.L624:
	b	.L610
	move	$2,$0

	.set	macro
	.set	reorder
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.align	3
	.globl	__muldi3
	.set	nomips16
	.set	micromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqzc	$4,.L631
	move	$2,$0
.L630:
	andi	$3,$4,0x1
	dsubu	$3,$0,$3
	and	$3,$3,$5
	daddu	$2,$2,$3
	dsrl	$4,$4,1
	bnez	$4,.L630
	dsll	$5,$5,1

	jrc	$31
.L631:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
	.align	3
	.globl	udivmodsi4
	.set	nomips16
	.set	micromips
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beqz	$2,.L636
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
.L635:
	bltz	$5,.L636
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beqz	$7,.L636
	sll	$3,$3,1

	addiu	$2,$2,-1
	bnezc	$2,.L635
	move	$3,$2
.L636:
	beqzc	$3,.L644
	b	.L640
	move	$2,$0

.L639:
	dext	$3,$3,1,31
	beqz	$3,.L638
	dext	$5,$5,1,31

.L640:
	sltu	$7,$4,$5
	bnezc	$7,.L639
	subu	$4,$4,$5
	b	.L639
	or	$2,$2,$3

.L644:
	move	$2,$3
.L638:
	jr	$31
	movn	$2,$4,$6

	.set	macro
	.set	reorder
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.align	3
	.globl	__clrsbqi2
	.set	nomips16
	.set	micromips
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$3,$4,7
	beq	$3,$4,.L650
	xor	$2,$3,$4

	seb	$2,$2
	sll	$2,$2,8
	clz	$2,$2
	jr	$31
	addiu	$2,$2,-1

.L650:
	jr	$31
	li	$2,7			# 0x7

	.set	macro
	.set	reorder
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.align	3
	.globl	__clrsbdi2
	.set	nomips16
	.set	micromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$3,$4,63
	beq	$4,$3,.L654
	xor	$2,$4,$3

	dclz	$2,$2
	jr	$31
	addiu	$2,$2,-1

.L654:
	jr	$31
	li	$2,63			# 0x3f

	.set	macro
	.set	reorder
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.align	3
	.globl	__mulsi3
	.set	nomips16
	.set	micromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqzc	$4,.L659
	move	$2,$0
.L658:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$3,$2
	dext	$4,$4,1,31
	bnez	$4,.L658
	sll	$5,$5,1

	jrc	$31
.L659:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
	.align	3
	.globl	__cmovd
	.set	nomips16
	.set	micromips
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$9,$6,3,29
	li	$2,-8			# 0xfffffffffffffff8
	sltu	$3,$4,$5
	bnez	$3,.L663
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bnezc	$3,.L663
	beqz	$6,.L677
	addiu	$3,$6,-1

	dext	$3,$3,0,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
.L669:
	lb	$3,0($2)
	sb	$3,0($4)
	move	$3,$2
	daddiu	$2,$2,-1
	bne	$3,$5,.L669
	daddiu	$4,$4,-1

.L677:
	jrc	$31
.L663:
	beqz	$9,.L666
	move	$3,$5

	move	$7,$4
	dsll	$9,$9,3
	daddu	$9,$9,$5
.L667:
	ld	$8,0($3)
	sd	$8,0($7)
	daddiu	$3,$3,8
	bne	$3,$9,.L667
	daddiu	$7,$7,8

.L666:
	sltu	$3,$2,$6
	beqz	$3,.L677
	dext	$2,$2,0,32

	daddu	$3,$5,$2
.L675:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L675
	daddu	$3,$5,$2

	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.align	3
	.globl	__cmovh
	.set	nomips16
	.set	micromips
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$5
	bnez	$2,.L679
	dext	$8,$6,1,31

	dext	$2,$6,0,32
	daddu	$2,$5,$2
	sltu	$2,$2,$4
	bnezc	$2,.L679
	beqz	$6,.L690
	addiu	$2,$6,-1

	dext	$2,$2,0,32
	daddu	$3,$5,$2
	daddu	$2,$4,$2
.L684:
	lb	$4,0($3)
	sb	$4,0($2)
	move	$4,$3
	daddiu	$3,$3,-1
	bne	$4,$5,.L684
	daddiu	$2,$2,-1

.L690:
	jrc	$31
.L679:
	beqz	$8,.L682
	move	$2,$5

	move	$3,$4
	dsll	$8,$8,1
	daddu	$8,$8,$5
.L683:
	lh	$7,0($2)
	sh	$7,0($3)
	daddiu	$2,$2,2
	bne	$2,$8,.L683
	daddiu	$3,$3,2

.L682:
	andi	$2,$6,0x1
	beqz	$2,.L690
	addiu	$6,$6,-1

	dext	$6,$6,0,32
	daddu	$5,$5,$6
	lb	$3,0($5)
	daddu	$2,$4,$6
	jr	$31
	sb	$3,0($2)

	.set	macro
	.set	reorder
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.align	3
	.globl	__cmovw
	.set	nomips16
	.set	micromips
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$9,$6,2,30
	li	$2,-4			# 0xfffffffffffffffc
	sltu	$3,$4,$5
	bnez	$3,.L692
	and	$2,$6,$2

	dext	$3,$6,0,32
	daddu	$3,$5,$3
	sltu	$3,$3,$4
	bnezc	$3,.L692
	beqz	$6,.L706
	addiu	$3,$6,-1

	dext	$3,$3,0,32
	daddu	$2,$5,$3
	daddu	$4,$4,$3
.L698:
	lb	$3,0($2)
	sb	$3,0($4)
	move	$3,$2
	daddiu	$2,$2,-1
	bne	$3,$5,.L698
	daddiu	$4,$4,-1

.L706:
	jrc	$31
.L692:
	beqz	$9,.L695
	move	$3,$5

	move	$7,$4
	dsll	$9,$9,2
	daddu	$9,$9,$5
.L696:
	lw	$8,0($3)
	sw	$8,0($7)
	daddiu	$3,$3,4
	bne	$3,$9,.L696
	daddiu	$7,$7,4

.L695:
	sltu	$3,$2,$6
	beqz	$3,.L706
	dext	$2,$2,0,32

	daddu	$3,$5,$2
.L704:
	lb	$7,0($3)
	daddu	$3,$4,$2
	sb	$7,0($3)
	daddiu	$2,$2,1
	sll	$3,$2,0
	sltu	$3,$3,$6
	bnez	$3,.L704
	daddu	$3,$5,$2

	jrc	$31
	.set	macro
	.set	reorder
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
	.align	3
	.globl	__modi
	.set	nomips16
	.set	micromips
	.ent	__modi
	.type	__modi, @function
__modi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	div	$0,$4,$5
	teq	$5,$0,7
	jr	$31
	mfhi	$2

	.set	macro
	.set	reorder
	.end	__modi
	.size	__modi, .-__modi
	.align	2
	.align	3
	.globl	__uitod
	.set	nomips16
	.set	micromips
	.ent	__uitod
	.type	__uitod, @function
__uitod:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$4,$4,0,32
	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

	.set	macro
	.set	reorder
	.end	__uitod
	.size	__uitod, .-__uitod
	.align	2
	.align	3
	.globl	__uitof
	.set	nomips16
	.set	micromips
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$4,$4,0,32
	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

	.set	macro
	.set	reorder
	.end	__uitof
	.size	__uitof, .-__uitof
	.align	2
	.align	3
	.globl	__ulltod
	.set	nomips16
	.set	micromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L715
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.d.l	$f0,$f0

.L715:
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	jr	$31
	add.d	$f0,$f0,$f0

	.set	macro
	.set	reorder
	.end	__ulltod
	.size	__ulltod, .-__ulltod
	.align	2
	.align	3
	.globl	__ulltof
	.set	nomips16
	.set	micromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$4,.L719
	andi	$2,$4,0x1

	dmtc1	$4,$f0
	jr	$31
	cvt.s.l	$f0,$f0

.L719:
	dsrl	$4,$4,1
	or	$2,$2,$4
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	jr	$31
	add.s	$f0,$f0,$f0

	.set	macro
	.set	reorder
	.end	__ulltof
	.size	__ulltof, .-__ulltof
	.align	2
	.align	3
	.globl	__umodi
	.set	nomips16
	.set	micromips
	.ent	__umodi
	.type	__umodi, @function
__umodi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	divu	$0,$4,$5
	teq	$5,$0,7
	jr	$31
	mfhi	$2

	.set	macro
	.set	reorder
	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.align	3
	.globl	__clzhi2
	.set	nomips16
	.set	micromips
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
.L728:
	sra	$3,$4,$3
	andi	$3,$3,0x1
	bnezc	$3,.L729
	addiu	$2,$2,1
	bne	$2,$6,.L728
	subu	$3,$5,$2

.L729:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
	.align	3
	.globl	__ctzhi2
	.set	nomips16
	.set	micromips
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
.L735:
	andi	$3,$3,0x1
	bnezc	$3,.L736
	addiu	$2,$2,1
	bne	$2,$5,.L735
	sra	$3,$4,$2

.L736:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__ctzhi2
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.align	3
	.globl	__fixunssfsi
	.set	nomips16
	.set	micromips
	.ent	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(%neg(%gp_rel(__fixunssfsi)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__fixunssfsi)))
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	c.le.s	$fcc0,$f0,$f12
	bc1t	$fcc0,.L744
	li	$3,32768			# 0x8000

	trunc.l.s $f0,$f12
	jr	$31
	dmfc1	$2,$f0

.L744:
	sub.s	$f12,$f12,$f0
	trunc.l.s $f0,$f12
	dmfc1	$2,$f0
	jr	$31
	daddu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.align	3
	.globl	__parityhi2
	.set	nomips16
	.set	micromips
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
.L746:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,.L746
	addu	$2,$5,$2

	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.align	3
	.globl	__popcounthi2
	.set	nomips16
	.set	micromips
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
.L750:
	sra	$5,$4,$3
	andi	$5,$5,0x1
	addiu	$3,$3,1
	bne	$3,$6,.L750
	addu	$2,$5,$2

	jrc	$31
	.set	macro
	.set	reorder
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.align	3
	.globl	__mulsi3_iq2000
	.set	nomips16
	.set	micromips
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqzc	$4,.L756
	move	$2,$0
.L755:
	andi	$3,$4,0x1
	subu	$3,$0,$3
	and	$3,$3,$5
	addu	$2,$3,$2
	dext	$4,$4,1,31
	bnez	$4,.L755
	sll	$5,$5,1

	jrc	$31
.L756:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.align	3
	.globl	__mulsi3_lm32
	.set	nomips16
	.set	micromips
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beqzc	$4,.L762
	beqzc	$5,.L763
	move	$2,$0
.L761:
	andi	$3,$5,0x1
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$3,$2
	dext	$5,$5,1,31
	bnez	$5,.L761
	sll	$4,$4,1

	jrc	$31
.L762:
	jr	$31
	move	$2,$4

.L763:
	jr	$31
	move	$2,$5

	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.align	3
	.globl	__udivmodsi4
	.set	nomips16
	.set	micromips
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$5,$4
	beqz	$2,.L768
	li	$3,1			# 0x1

	li	$2,32			# 0x20
	li	$3,1			# 0x1
.L767:
	bltz	$5,.L768
	nop

	sll	$5,$5,1
	sltu	$7,$5,$4
	beqz	$7,.L768
	sll	$3,$3,1

	addiu	$2,$2,-1
	bnezc	$2,.L767
	move	$3,$2
.L768:
	beqzc	$3,.L776
	b	.L772
	move	$2,$0

.L771:
	dext	$3,$3,1,31
	beqz	$3,.L770
	dext	$5,$5,1,31

.L772:
	sltu	$7,$4,$5
	bnezc	$7,.L771
	subu	$4,$4,$5
	b	.L771
	or	$2,$2,$3

.L776:
	move	$2,$3
.L770:
	jr	$31
	movn	$2,$4,$6

	.set	macro
	.set	reorder
	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.align	3
	.globl	__mspabi_cmpf
	.set	nomips16
	.set	micromips
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.s	$fcc0,$f12,$f13
	bc1t	$fcc0,.L783
	nop

	c.lt.s	$fcc1,$f13,$f12
	bc1t	$fcc1,.L785
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

.L783:
	li	$2,-1			# 0xffffffffffffffff
.L785:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mspabi_cmpf
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.align	3
	.globl	__mspabi_cmpd
	.set	nomips16
	.set	micromips
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	c.lt.d	$fcc0,$f12,$f13
	bc1t	$fcc0,.L789
	nop

	c.lt.d	$fcc1,$f13,$f12
	bc1t	$fcc1,.L791
	li	$2,1			# 0x1

	jr	$31
	move	$2,$0

.L789:
	li	$2,-1			# 0xffffffffffffffff
.L791:
	jrc	$31
	.set	macro
	.set	reorder
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.align	3
	.globl	__mspabi_mpysll
	.set	nomips16
	.set	micromips
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmult	$4,$5
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	__mspabi_mpysll
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.align	3
	.globl	__mspabi_mpyull
	.set	nomips16
	.set	micromips
	.ent	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dmult	$4,$5
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.align	3
	.globl	__mulhi3
	.set	nomips16
	.set	micromips
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bltz	$5,.L805
	nop

	move	$7,$0
.L797:
	beqz	$5,.L798
	move	$2,$5

	li	$6,32			# 0x20
	move	$2,$0
	andi	$3,$5,0x1
.L806:
	subu	$3,$0,$3
	and	$3,$3,$4
	addu	$2,$3,$2
	sra	$5,$5,1
	beqz	$5,.L798
	sll	$4,$4,1

	addiu	$6,$6,-1
	andi	$6,$6,0x00ff
	bnez	$6,.L806
	andi	$3,$5,0x1

.L798:
	beqzc	$7,.L807
	subu	$2,$0,$2
.L807:
	jrc	$31
.L805:
	subu	$5,$0,$5
	b	.L797
	li	$7,1			# 0x1

	.set	macro
	.set	reorder
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.align	3
	.globl	__divsi3
	.set	nomips16
	.set	micromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__divsi3)))
	daddu	$28,$28,$25
	bltz	$4,.L814
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))

	move	$16,$0
.L809:
	bltz	$5,.L815
	nop

.L810:
	sll	$5,$5,0
	sll	$4,$4,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	move	$6,$0

	beqz	$16,.L808
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L808:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
.L814:
	dsubu	$4,$0,$4
	b	.L809
	li	$16,1			# 0x1

.L815:
	dsubu	$5,$0,$5
	b	.L810
	xori	$16,$16,0x1

	.set	macro
	.set	reorder
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.align	3
	.globl	__modsi3
	.set	nomips16
	.set	micromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(__modsi3)))
	daddu	$28,$28,$25
	bltz	$4,.L822
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))

	move	$16,$0
.L817:
	bltz	$5,.L823
	move	$2,$5

.L818:
	sll	$5,$2,0
	sll	$4,$4,0
	ld	$25,%got_disp(__udivmodsi4)($28)
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalr	$25
	li	$6,1			# 0x1

	beqz	$16,.L816
	dext	$2,$2,0,32

	dsubu	$2,$0,$2
.L816:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jraddiusp	32
.L822:
	dsubu	$4,$0,$4
	b	.L817
	li	$16,1			# 0x1

.L823:
	b	.L818
	dsubu	$2,$0,$5

	.set	macro
	.set	reorder
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.align	3
	.globl	__udivmodhi4
	.set	nomips16
	.set	micromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$5,$4
	beqz	$3,.L838
	move	$2,$4

	li	$4,16			# 0x10
	li	$3,1			# 0x1
	seh	$7,$5
.L839:
	bltz	$7,.L826
	nop

	sll	$5,$5,1
	andi	$5,$5,0xffff
	sll	$3,$3,1
	sltu	$7,$5,$2
	beqz	$7,.L826
	andi	$3,$3,0xffff

	addiu	$4,$4,-1
	bnez	$4,.L839
	seh	$7,$5

	move	$3,$0
.L826:
	beqz	$3,.L834
	move	$4,$0

	b	.L840
	sltu	$7,$2,$5

.L838:
	b	.L826
	li	$3,1			# 0x1

.L829:
	dsrl	$3,$3,1
	beqz	$3,.L828
	dsrl	$5,$5,1

	sltu	$7,$2,$5
.L840:
	bnezc	$7,.L829
	subu	$2,$2,$5
	andi	$2,$2,0xffff
	or	$4,$4,$3
	b	.L829
	andi	$4,$4,0xffff

.L834:
	move	$4,$3
.L828:
	jr	$31
	movz	$2,$4,$6

	.set	macro
	.set	reorder
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.align	3
	.globl	__udivmodsi4_libgcc
	.set	nomips16
	.set	micromips
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$5,$4
	beqz	$3,.L855
	move	$2,$4

	li	$4,64			# 0x40
	li	$3,1			# 0x1
	li	$9,1			# 0x1
	dsll	$9,$9,31
.L842:
	and	$7,$5,$9
	bnezc	$7,.L843
	dsll	$5,$5,1
	sltu	$8,$5,$2
	beqz	$8,.L843
	dsll	$3,$3,1

	addiu	$4,$4,-1
	bnezc	$4,.L842
	move	$3,$7
.L843:
	beqz	$3,.L851
	move	$7,$0

	b	.L856
	sltu	$4,$2,$5

.L855:
	b	.L843
	li	$3,1			# 0x1

.L846:
	dsrl	$3,$3,1
	beqz	$3,.L845
	dsrl	$5,$5,1

	sltu	$4,$2,$5
.L856:
	bnezc	$4,.L846
	dsubu	$2,$2,$5
	b	.L846
	or	$7,$7,$3

.L851:
	move	$7,$3
.L845:
	jr	$31
	movz	$2,$7,$6

	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.align	3
	.globl	__ashldi3
	.set	nomips16
	.set	micromips
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beqz	$2,.L858
	move	$3,$0

	sll	$4,$4,0
	sll	$5,$4,$5
.L859:
	move	$2,$0
	dins	$2,$3,0,32
	jr	$31
	dins	$2,$5,32,32

.L858:
	beqz	$5,.L861
	subu	$6,$0,$5

	sll	$2,$4,0
	sll	$3,$2,$5
	srl	$2,$2,$6
	dsra	$4,$4,32
	sll	$5,$4,$5
	b	.L859
	or	$5,$5,$2

.L861:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.align	3
	.globl	__ashlti3
	.set	nomips16
	.set	micromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beqz	$2,.L864
	dsll	$2,$5,$6

	jr	$31
	move	$3,$0

.L864:
	beqzc	$6,.L867
	dsll	$3,$5,$6
	subu	$2,$0,$6
	dsrl	$5,$5,$2
	dsll	$2,$4,$6
	jr	$31
	or	$2,$2,$5

.L867:
	move	$2,$4
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
	.align	3
	.globl	__ashrdi3
	.set	nomips16
	.set	micromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beqzc	$2,.L870
	dsra	$4,$4,32
	sra	$3,$4,31
	sra	$5,$4,$5
.L871:
	move	$2,$0
	dins	$2,$3,32,32
	jr	$31
	dins	$2,$5,0,32

.L870:
	beqz	$5,.L873
	subu	$6,$0,$5

	dsra	$2,$4,32
	sra	$3,$2,$5
	sll	$2,$2,$6
	sll	$4,$4,0
	srl	$5,$4,$5
	b	.L871
	or	$5,$5,$2

.L873:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.align	3
	.globl	__ashrti3
	.set	nomips16
	.set	micromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beqz	$2,.L876
	dsra	$2,$4,63

	dsra	$5,$4,$6
.L878:
	jr	$31
	move	$3,$5

.L876:
	beqzc	$6,.L879
	dsra	$2,$4,$6
	subu	$3,$0,$6
	dsll	$4,$4,$3
	dsrl	$5,$5,$6
	b	.L878
	or	$5,$5,$4

.L879:
	b	.L878
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
	.align	3
	.globl	__bswapdi2
	.set	nomips16
	.set	micromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsrl	$2,$4,56
	dsll	$3,$4,56
	or	$2,$2,$3
	dsrl	$3,$4,40
	andi	$3,$3,0xff00
	or	$2,$2,$3
	dsrl	$3,$4,24
	li	$5,16711680			# 0xff0000
	and	$3,$3,$5
	or	$2,$2,$3
	dsrl	$5,$4,8
	li	$3,255			# 0xff
	dsll	$6,$3,24
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$5,$4,8
	dsll	$6,$3,32
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$5,$4,24
	dsll	$6,$3,40
	and	$5,$5,$6
	or	$2,$2,$5
	dsll	$4,$4,40
	dsll	$3,$3,48
	and	$4,$4,$3
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.align	3
	.globl	__bswapsi2
	.set	nomips16
	.set	micromips
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
	.align	3
	.globl	__clzsi2
	.set	nomips16
	.set	micromips
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
	dsll	$5,$5,4
	li	$2,16			# 0x10
	subu	$2,$2,$5
	srl	$3,$4,$2
	andi	$2,$3,0xff00
	sltu	$2,$2,1
	dsll	$2,$2,3
	li	$4,8			# 0x8
	subu	$4,$4,$2
	srl	$3,$3,$4
	daddu	$4,$2,$5
	andi	$2,$3,0xf0
	sltu	$2,$2,1
	dsll	$2,$2,2
	li	$5,4			# 0x4
	subu	$5,$5,$2
	srl	$3,$3,$5
	daddu	$5,$2,$4
	andi	$4,$3,0xc
	sltu	$4,$4,1
	dsll	$4,$4,1
	li	$2,2			# 0x2
	subu	$6,$2,$4
	srl	$3,$3,$6
	subu	$2,$2,$3
	andi	$3,$3,0x2
	movn	$2,$0,$3
	addu	$4,$4,$5
	jr	$31
	addu	$2,$2,$4

	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.align	3
	.globl	__clzti2
	.set	nomips16
	.set	micromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,1
	addiu	$3,$2,-1
	and	$3,$3,$4
	movn	$5,$0,$4
	or	$3,$3,$5
	dclz	$3,$3
	dsll	$2,$2,6
	jr	$31
	daddu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.align	3
	.globl	__cmpdi2
	.set	nomips16
	.set	micromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	dsra	$3,$5,32
	slt	$6,$2,$3
	bnezc	$6,.L891
	slt	$2,$3,$2
	bnez	$2,.L892
	sll	$4,$4,0

	move	$2,$4
	sll	$5,$5,0
	sltu	$4,$4,$5
	bnezc	$4,.L893
	sltu	$2,$5,$2
	bnezc	$2,.L894
	jr	$31
	li	$2,1			# 0x1

.L891:
	jr	$31
	move	$2,$0

.L892:
	jr	$31
	li	$2,2			# 0x2

.L893:
	jr	$31
	move	$2,$0

.L894:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.align	3
	.globl	__aeabi_lcmp
	.set	nomips16
	.set	micromips
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__aeabi_lcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_lcmp)))
	ld	$25,%got_disp(__cmpdi2)($28)
	.reloc	1f,R_MICROMIPS_JALR,__cmpdi2
1:	jalrs	$25
	nop

	addiu	$2,$2,-1
	ld	$31,8($sp)
	ld	$28,0($sp)
	jraddiusp	16
	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.align	3
	.globl	__cmpti2
	.set	nomips16
	.set	micromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	slt	$2,$4,$6
	bnez	$2,.L900
	slt	$4,$6,$4

	bnezc	$4,.L901
	sltu	$2,$5,$7
	bnez	$2,.L902
	sltu	$5,$7,$5

	bnezc	$5,.L903
	jr	$31
	li	$2,1			# 0x1

.L900:
	jr	$31
	move	$2,$0

.L901:
	jr	$31
	li	$2,2			# 0x2

.L902:
	jr	$31
	move	$2,$0

.L903:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
	.align	3
	.globl	__ctzsi2
	.set	nomips16
	.set	micromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$4,0xffff
	sltu	$2,$2,1
	dsll	$5,$2,4
	sll	$2,$2,4
	srl	$3,$4,$2
	andi	$2,$3,0xff
	sltu	$2,$2,1
	dsll	$4,$2,3
	sll	$2,$2,3
	srl	$3,$3,$2
	daddu	$4,$4,$5
	andi	$2,$3,0xf
	sltu	$2,$2,1
	dsll	$6,$2,2
	sll	$2,$2,2
	srl	$3,$3,$2
	daddu	$6,$6,$4
	andi	$4,$3,0x3
	sltu	$4,$4,1
	dsll	$5,$4,1
	sll	$4,$4,1
	srl	$3,$3,$4
	andi	$3,$3,0x3
	nor	$2,$0,$3
	andi	$2,$2,0x1
	srl	$3,$3,1
	li	$4,2			# 0x2
	subu	$4,$4,$3
	subu	$3,$0,$2
	and	$3,$3,$4
	addu	$2,$5,$6
	jr	$31
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.align	3
	.globl	__ctzti2
	.set	nomips16
	.set	micromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$6,$5,1
	movn	$4,$0,$5
	addiu	$3,$6,-1
	and	$5,$3,$5
	or	$4,$4,$5
	dsubu	$2,$0,$4
	and	$4,$4,$2
	dclz	$4,$4
	li	$2,63			# 0x3f
	subu	$2,$2,$4
	sll	$6,$6,6
	jr	$31
	addu	$2,$6,$2

	.set	macro
	.set	reorder
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.align	3
	.globl	__ffsti2
	.set	nomips16
	.set	micromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bnez	$5,.L910
	dsubu	$2,$0,$5

	beqzc	$4,.L912
	dsubu	$2,$0,$4
	and	$4,$4,$2
	dclz	$4,$4
	li	$2,63			# 0x3f
	subu	$2,$2,$4
	jr	$31
	addiu	$2,$2,65

.L910:
	and	$5,$5,$2
	dclz	$5,$5
	li	$2,63			# 0x3f
	subu	$2,$2,$5
	jr	$31
	addiu	$2,$2,1

.L912:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.align	3
	.globl	__lshrdi3
	.set	nomips16
	.set	micromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$5,0x20
	beqz	$2,.L915
	move	$3,$0

	dsra	$4,$4,32
	srl	$5,$4,$5
.L916:
	move	$2,$0
	dins	$2,$3,32,32
	jr	$31
	dins	$2,$5,0,32

.L915:
	beqz	$5,.L918
	subu	$6,$0,$5

	dsra	$2,$4,32
	srl	$3,$2,$5
	sll	$2,$2,$6
	sll	$4,$4,0
	srl	$5,$4,$5
	b	.L916
	or	$5,$5,$2

.L918:
	jr	$31
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.align	3
	.globl	__lshrti3
	.set	nomips16
	.set	micromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$6,0x40
	beqz	$2,.L921
	move	$2,$0

	dsrl	$5,$4,$6
.L923:
	jr	$31
	move	$3,$5

.L921:
	beqzc	$6,.L924
	dsrl	$2,$4,$6
	subu	$3,$0,$6
	dsll	$4,$4,$3
	dsrl	$5,$5,$6
	b	.L923
	or	$5,$5,$4

.L924:
	b	.L923
	move	$2,$4

	.set	macro
	.set	reorder
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.align	3
	.globl	__muldsi3
	.set	nomips16
	.set	micromips
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
	mul	$2,$3,$6
	dext	$7,$2,16,16
	dext	$4,$4,16,16
	mul	$8,$6,$4
	addu	$6,$8,$7
	andi	$7,$6,0xffff
	dext	$5,$5,16,16
	mul	$8,$3,$5
	addu	$3,$8,$7
	andi	$2,$2,0xffff
	sll	$7,$3,16
	addu	$7,$2,$7
	move	$2,$0
	dins	$2,$7,0,32
	srl	$6,$6,16
	mul	$7,$4,$5
	addu	$4,$7,$6
	srl	$3,$3,16
	addu	$4,$4,$3
	jr	$31
	dins	$2,$4,32,32

	.set	macro
	.set	reorder
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.align	3
	.globl	__muldi3_compiler_rt
	.set	nomips16
	.set	micromips
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	$sp,64,$31		# vars= 16, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	sd	$19,40($sp)
	sd	$18,32($sp)
	sd	$17,24($sp)
	sd	$16,16($sp)
	lui	$28,%hi(%neg(%gp_rel(__muldi3_compiler_rt)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__muldi3_compiler_rt)))
	move	$16,$4
	move	$17,$5
	sw	$4,0($sp)
	lw	$19,0($sp)
	sw	$5,4($sp)
	lw	$18,4($sp)
	move	$5,$18
	ld	$25,%got_disp(__muldsi3)($28)
	.reloc	1f,R_MICROMIPS_JALR,__muldsi3
1:	jalr	$25
	move	$4,$19

	dsra	$16,$16,32
	dsra	$17,$17,32
	mult	$17,$19
	madd	$16,$18
	mflo	$16
	dsra	$3,$2,32
	addu	$16,$16,$3
	dins	$2,$16,32,32
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.align	3
	.globl	__mulddi3
	.set	nomips16
	.set	micromips
	.ent	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$2,$4,0,32
	dext	$3,$5,0,32
	dmult	$2,$3
	mflo	$6
	dsrl	$7,$6,32
	dsrl	$4,$4,32
	dmult	$3,$4
	mflo	$3
	daddu	$3,$3,$7
	dext	$7,$3,0,32
	dsrl	$5,$5,32
	dmult	$2,$5
	mflo	$2
	daddu	$2,$2,$7
	dext	$6,$6,0,32
	dsll	$7,$2,32
	daddu	$6,$6,$7
	dsrl	$3,$3,32
	dmult	$4,$5
	mflo	$4
	daddu	$3,$3,$4
	dsrl	$2,$2,32
	daddu	$2,$3,$2
	jr	$31
	move	$3,$6

	.set	macro
	.set	reorder
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.align	3
	.globl	__multi3
	.set	nomips16
	.set	micromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__multi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__multi3)))
	move	$19,$4
	move	$16,$5
	move	$18,$6
	move	$17,$7
	move	$5,$7
	ld	$25,%got_disp(__mulddi3)($28)
	.reloc	1f,R_MICROMIPS_JALR,__mulddi3
1:	jalr	$25
	move	$4,$16

	dmult	$17,$19
	mflo	$4
	dmult	$16,$18
	mflo	$5
	daddu	$4,$4,$5
	daddu	$2,$4,$2
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
	.align	3
	.globl	__negdi2
	.set	nomips16
	.set	micromips
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	dsubu	$2,$0,$4

	.set	macro
	.set	reorder
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.align	3
	.globl	__negti2
	.set	nomips16
	.set	micromips
	.ent	__negti2
	.type	__negti2, @function
__negti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsubu	$3,$0,$5
	sltu	$5,$0,$5
	dsubu	$2,$0,$4
	jr	$31
	dsubu	$2,$2,$5

	.set	macro
	.set	reorder
	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
	.align	3
	.globl	__paritydi2
	.set	nomips16
	.set	micromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	sll	$4,$4,0
	xor	$2,$2,$4
	dext	$3,$2,16,16
	xor	$2,$2,$3
	dext	$3,$2,8,24
	xor	$2,$2,$3
	dext	$3,$2,4,28
	xor	$2,$2,$3
	andi	$2,$2,0xf
	li	$3,27030			# 0x6996
	sra	$2,$3,$2
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.align	3
	.globl	__parityti2
	.set	nomips16
	.set	micromips
	.ent	__parityti2
	.type	__parityti2, @function
__parityti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	xor	$5,$5,$4
	dsra	$2,$5,32
	sll	$5,$5,0
	xor	$2,$2,$5
	dext	$3,$2,16,16
	xor	$2,$2,$3
	dext	$3,$2,8,24
	xor	$2,$2,$3
	dext	$3,$2,4,28
	xor	$2,$2,$3
	andi	$2,$2,0xf
	li	$3,27030			# 0x6996
	sra	$2,$3,$2
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.align	3
	.globl	__paritysi2
	.set	nomips16
	.set	micromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$2,$4,16
	xor	$4,$4,$2
	dext	$2,$4,8,24
	xor	$4,$4,$2
	dext	$2,$4,4,28
	xor	$4,$4,$2
	andi	$4,$4,0xf
	li	$2,27030			# 0x6996
	sra	$2,$2,$4
	jr	$31
	andi	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.align	3
	.globl	__popcountdi2
	.set	nomips16
	.set	micromips
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsrl	$3,$4,1
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	daddiu	$2,$2,21845
	and	$2,$3,$2
	dsubu	$4,$4,$2
	dsrl	$3,$4,2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	daddiu	$2,$2,13107
	and	$3,$3,$2
	and	$4,$4,$2
	daddu	$3,$3,$4
	dsrl	$2,$3,4
	daddu	$3,$2,$3
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	daddiu	$2,$2,3855
	and	$2,$3,$2
	dext	$3,$2,32,32
	sll	$2,$2,0
	addu	$2,$3,$2
	dext	$3,$2,16,16
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	jr	$31
	andi	$2,$2,0x7f

	.set	macro
	.set	reorder
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.align	3
	.globl	__popcountsi2
	.set	nomips16
	.set	micromips
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
	srl	$2,$4,2
	li	$3,858980352			# 0x33330000
	addiu	$3,$3,13107
	and	$2,$2,$3
	and	$4,$4,$3
	addu	$2,$2,$4
	srl	$3,$2,4
	addu	$3,$3,$2
	li	$2,252641280			# 0xf0f0000
	addiu	$2,$2,3855
	and	$3,$3,$2
	dext	$2,$3,16,13
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
	.align	3
	.globl	__popcountti2
	.set	nomips16
	.set	micromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$3,$4,63
	dsrl	$2,$5,1
	or	$2,$2,$3
	dsrl	$6,$4,1
	li	$3,1431633920			# 0x55550000
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	daddiu	$3,$3,21845
	and	$6,$6,$3
	and	$2,$2,$3
	dsubu	$2,$5,$2
	sltu	$5,$5,$2
	dsubu	$4,$4,$6
	dsubu	$4,$4,$5
	dsll	$3,$4,62
	dsrl	$5,$2,2
	or	$5,$5,$3
	dsrl	$6,$4,2
	li	$3,858980352			# 0x33330000
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	daddiu	$3,$3,13107
	and	$6,$6,$3
	and	$5,$5,$3
	and	$4,$4,$3
	and	$2,$2,$3
	daddu	$2,$5,$2
	sltu	$5,$2,$5
	daddu	$3,$6,$4
	daddu	$4,$5,$3
	dsll	$5,$4,60
	dsrl	$3,$2,4
	or	$3,$3,$5
	dsrl	$5,$4,4
	daddu	$2,$3,$2
	sltu	$3,$2,$3
	daddu	$4,$5,$4
	daddu	$3,$3,$4
	li	$4,252641280			# 0xf0f0000
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	daddiu	$4,$4,3855
	and	$3,$3,$4
	and	$2,$2,$4
	daddu	$3,$3,$2
	dext	$2,$3,32,32
	sll	$3,$3,0
	addu	$2,$2,$3
	dext	$3,$2,16,16
	addu	$3,$3,$2
	srl	$2,$3,8
	addu	$2,$2,$3
	jr	$31
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	__popcountti2
	.size	__popcountti2, .-__popcountti2
	.align	2
	.align	3
	.globl	__powidf2
	.set	nomips16
	.set	micromips
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(%neg(%gp_rel(__powidf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powidf2)))
	move	$2,$5
	ld	$3,%got_page(.LC12)($4)
	b	.L953
	ldc1	$f0,%got_ofst(.LC12)($3)

.L957:
	addu	$2,$3,$2
	sra	$2,$2,1
	beqzc	$2,.L952
	mul.d	$f12,$f12,$f12
.L953:
	andi	$3,$2,0x1
	beqz	$3,.L957
	srl	$3,$2,31

	b	.L957
	mul.d	$f0,$f0,$f12

.L952:
	bltz	$5,.L956
	ld	$2,%got_page(.LC12)($4)

.L950:
	jrc	$31
.L956:
	ldc1	$f1,%got_ofst(.LC12)($2)
	jr	$31
	div.d	$f0,$f1,$f0

	.set	macro
	.set	reorder
	.end	__powidf2
	.size	__powidf2, .-__powidf2
	.align	2
	.align	3
	.globl	__powisf2
	.set	nomips16
	.set	micromips
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$4,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powisf2)))
	move	$2,$5
	ld	$3,%got_page(.LC14)($4)
	b	.L961
	lwc1	$f0,%got_ofst(.LC14)($3)

.L965:
	addu	$2,$3,$2
	sra	$2,$2,1
	beqzc	$2,.L960
	mul.s	$f12,$f12,$f12
.L961:
	andi	$3,$2,0x1
	beqz	$3,.L965
	srl	$3,$2,31

	b	.L965
	mul.s	$f0,$f0,$f12

.L960:
	bltz	$5,.L964
	ld	$2,%got_page(.LC14)($4)

.L958:
	jrc	$31
.L964:
	lwc1	$f1,%got_ofst(.LC14)($2)
	jr	$31
	div.s	$f0,$f1,$f0

	.set	macro
	.set	reorder
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.align	3
	.globl	__ucmpdi2
	.set	nomips16
	.set	micromips
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsra	$2,$4,32
	dsra	$3,$5,32
	sltu	$6,$2,$3
	bnezc	$6,.L968
	sltu	$2,$3,$2
	bnez	$2,.L969
	sll	$4,$4,0

	move	$2,$4
	sll	$5,$5,0
	sltu	$4,$4,$5
	bnezc	$4,.L970
	sltu	$2,$5,$2
	bnezc	$2,.L971
	jr	$31
	li	$2,1			# 0x1

.L968:
	jr	$31
	move	$2,$0

.L969:
	jr	$31
	li	$2,2			# 0x2

.L970:
	jr	$31
	move	$2,$0

.L971:
	jr	$31
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.align	3
	.globl	__aeabi_ulcmp
	.set	nomips16
	.set	micromips
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(__aeabi_ulcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_ulcmp)))
	ld	$25,%got_disp(__ucmpdi2)($28)
	.reloc	1f,R_MICROMIPS_JALR,__ucmpdi2
1:	jalrs	$25
	nop

	addiu	$2,$2,-1
	ld	$31,8($sp)
	ld	$28,0($sp)
	jraddiusp	16
	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.align	3
	.globl	__ucmpti2
	.set	nomips16
	.set	micromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,$6
	bnez	$2,.L977
	sltu	$4,$6,$4

	bnezc	$4,.L978
	sltu	$2,$5,$7
	bnez	$2,.L979
	sltu	$5,$7,$5

	bnezc	$5,.L980
	jr	$31
	li	$2,1			# 0x1

.L977:
	jr	$31
	move	$2,$0

.L978:
	jr	$31
	li	$2,2			# 0x2

.L979:
	jr	$31
	move	$2,$0

.L980:
	jr	$31
	li	$2,2			# 0x2

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
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	-8388609
	.align	2
.LC1:
	.word	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC2:
	.word	-1048577
	.word	-1
	.align	3
.LC3:
	.word	2146435071
	.word	-1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC4:
	.word	-65537
	.word	-1
	.word	-1
	.word	-1
	.align	4
.LC5:
	.word	2147418111
	.word	-1
	.word	-1
	.word	-1
	.LC6 = .LC10
	.section	.rodata.cst4
	.align	2
.LC7:
	.word	1056964608
	.LC8 = .LC10
	.section	.rodata.cst8
	.align	3
.LC9:
	.word	1071644672
	.word	0
	.section	.rodata.cst16
	.align	4
.LC10:
	.word	1073741824
	.word	0
	.word	0
	.word	0
	.align	4
.LC11:
	.word	1073610752
	.word	0
	.word	0
	.word	0
	.section	.rodata.cst8
	.align	3
.LC12:
	.word	1072693248
	.word	0
	.section	.rodata.cst4
	.align	2
.LC13:
	.word	1191182336
	.align	2
.LC14:
	.word	1065353216
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
