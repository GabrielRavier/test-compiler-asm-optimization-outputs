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
	sd	$4,24($sp)
	sd	$5,32($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	move	$2,$sp
	ld	$3,16($2)
	ld	$2,8($2)
	addiu	$sp,24
	jr	$31
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
	sd	$4,24($sp)
	sd	$5,32($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	move	$2,$sp
	ld	$3,16($2)
	ld	$2,8($2)
	addiu	$sp,24
	jr	$31
	.end	make_tu
	.size	make_tu, .-make_tu
	.align	2
	.globl	memmove
	.set	mips16
	.set	nomicromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,24($sp)
	sw	$2,12($sp)
	lw	$3,12($sp)
	lw	$2,8($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L8
	lw	$3,12($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	sw	$2,12($sp)
	lw	$3,8($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	b	$L9
$L10:
	lw	$2,12($sp)
	addiu	$2,-1
	sw	$2,12($sp)
	lw	$2,8($sp)
	addiu	$2,-1
	sw	$2,8($sp)
	lw	$2,12($sp)
	lb	$3,0($2)
	lw	$2,8($sp)
	sb	$3,0($2)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L9:
	lw	$2,32($sp)
	bnez	$2,$L10
	b	$L11
$L8:
	lw	$3,12($sp)
	lw	$2,8($sp)
	xor	$2,$3
	beqz	$2,$L11
	b	$L12
$L13:
	lw	$3,12($sp)
	addiu	$2,$3,1
	sw	$2,12($sp)
	lw	$2,8($sp)
	addiu	$4,$2,1
	sw	$4,8($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L12:
	lw	$2,32($sp)
	bnez	$2,$L13
$L11:
	lw	$2,16($sp)
	addiu	$sp,16
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	sw	$7,40($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,24($sp)
	sw	$2,12($sp)
	lw	$2,32($sp)
	zeb	$2
	sw	$2,32($sp)
	b	$L17
$L19:
	lw	$2,40($sp)
	addiu	$2,-1
	sw	$2,40($sp)
	lw	$2,12($sp)
	addiu	$2,1
	sw	$2,12($sp)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L17:
	lw	$2,40($sp)
	beqz	$2,$L18
	lw	$2,12($sp)
	lbu	$3,0($2)
	lw	$2,8($sp)
	sb	$3,0($2)
	lw	$2,8($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,32($sp)
	xor	$2,$3
	bnez	$2,$L19
$L18:
	lw	$2,40($sp)
	beqz	$2,$L20
	lw	$2,8($sp)
	addiu	$2,1
	b	$L21
$L20:
	li	$2,0
$L21:
	addiu	$sp,16
	jr	$31
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.set	mips16
	.set	nomicromips
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,24($sp)
	zeb	$2
	sw	$2,24($sp)
	b	$L24
$L26:
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L24:
	lw	$2,32($sp)
	beqz	$2,$L25
	lw	$2,8($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,24($sp)
	xor	$2,$3
	bnez	$2,$L26
$L25:
	lw	$2,32($sp)
	beqz	$2,$L27
	lw	$2,8($sp)
	b	$L29
$L27:
	li	$2,0
$L29:
	addiu	$sp,16
	jr	$31
	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.set	mips16
	.set	nomicromips
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,24($sp)
	sw	$2,12($sp)
	b	$L32
$L34:
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
	lw	$2,12($sp)
	addiu	$2,1
	sw	$2,12($sp)
$L32:
	lw	$2,32($sp)
	beqz	$2,$L33
	lw	$2,8($sp)
	lbu	$3,0($2)
	lw	$2,12($sp)
	lbu	$2,0($2)
	xor	$2,$3
	beqz	$2,$L34
$L33:
	lw	$2,32($sp)
	beqz	$2,$L35
	lw	$2,8($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,12($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
	b	$L37
$L35:
	li	$2,0
$L37:
	addiu	$sp,16
	jr	$31
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.set	mips16
	.set	nomicromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,24($sp)
	sw	$2,12($sp)
	b	$L40
$L41:
	lw	$3,12($sp)
	addiu	$2,$3,1
	sw	$2,12($sp)
	lw	$2,8($sp)
	addiu	$4,$2,1
	sw	$4,8($sp)
	lbu	$3,0($3)
	sb	$3,0($2)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L40:
	lw	$2,32($sp)
	bnez	$2,$L41
	lw	$2,16($sp)
	addiu	$sp,16
	jr	$31
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.set	mips16
	.set	nomicromips
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,24($sp)
	zeb	$2
	sw	$2,24($sp)
	b	$L45
$L47:
	lw	$3,8($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,24($sp)
	xor	$2,$3
	bnez	$2,$L45
	lw	$3,8($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	b	$L46
$L45:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L47
	li	$2,0
$L46:
	addiu	$sp,16
	jr	$31
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.set	mips16
	.set	nomicromips
	.ent	memset
	.type	memset, @function
memset:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	b	$L50
$L51:
	lw	$2,24($sp)
	move	$3,$2
	zeb	$3
	lw	$2,8($sp)
	sb	$3,0($2)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L50:
	lw	$2,32($sp)
	bnez	$2,$L51
	lw	$2,16($sp)
	addiu	$sp,16
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	b	$L55
$L56:
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
	lw	$2,0($sp)
	addiu	$2,1
	sw	$2,0($sp)
$L55:
	lw	$2,8($sp)
	lb	$3,0($2)
	lw	$2,0($sp)
	sb	$3,0($2)
	lw	$2,0($sp)
	lb	$2,0($2)
	bnez	$2,$L56
	lw	$2,0($sp)
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	lw	$2,8($sp)
	zeb	$2
	sw	$2,8($sp)
	b	$L59
$L61:
	lw	$2,0($sp)
	addiu	$2,1
	sw	$2,0($sp)
$L59:
	lw	$2,0($sp)
	lb	$2,0($2)
	beqz	$2,$L60
	lw	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,8($sp)
	xor	$2,$3
	bnez	$2,$L61
$L60:
	lw	$2,0($sp)
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
	sw	$5,8($sp)
$L66:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,8($sp)
	xor	$3,$4
	bnez	$3,$L64
	jr	$31
$L64:
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	bnez	$3,$L66
	li	$2,0
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	b	$L68
$L70:
	lw	$2,0($sp)
	addiu	$2,1
	sw	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L68:
	lw	$2,0($sp)
	lb	$3,0($2)
	lw	$2,8($sp)
	lb	$2,0($2)
	xor	$2,$3
	bnez	$2,$L69
	lw	$2,0($sp)
	lb	$2,0($2)
	bnez	$2,$L70
$L69:
	lw	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,8($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
	jr	$31
	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.set	mips16
	.set	nomicromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	b	$L73
$L74:
	lw	$2,16($sp)
	addiu	$2,1
	sw	$2,16($sp)
$L73:
	lw	$2,16($sp)
	lb	$2,0($2)
	bnez	$2,$L74
	lw	$3,16($sp)
	lw	$2,8($sp)
	subu	$2,$3,$2
	addiu	$sp,16
	jr	$31
	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.set	mips16
	.set	nomicromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,24($sp)
	sw	$2,12($sp)
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L80
	li	$2,0
	b	$L79
$L82:
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
	lw	$2,12($sp)
	addiu	$2,1
	sw	$2,12($sp)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L80:
	lw	$2,8($sp)
	lbu	$2,0($2)
	beqz	$2,$L81
	lw	$2,12($sp)
	lbu	$2,0($2)
	beqz	$2,$L81
	lw	$2,32($sp)
	beqz	$2,$L81
	lw	$2,8($sp)
	lbu	$3,0($2)
	lw	$2,12($sp)
	lbu	$2,0($2)
	xor	$2,$3
	beqz	$2,$L82
$L81:
	lw	$2,8($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,12($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
$L79:
	addiu	$sp,16
	jr	$31
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.set	mips16
	.set	nomicromips
	.ent	swab
	.type	swab, @function
swab:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,24($sp)
	sw	$2,12($sp)
	b	$L85
$L86:
	lw	$2,8($sp)
	addiu	$2,1
	lb	$3,0($2)
	lw	$2,12($sp)
	sb	$3,0($2)
	lw	$2,12($sp)
	addiu	$2,1
	lw	$3,8($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,12($sp)
	addiu	$2,2
	sw	$2,12($sp)
	lw	$2,8($sp)
	addiu	$2,2
	sw	$2,8($sp)
	lw	$2,32($sp)
	addiu	$2,-2
	sw	$2,32($sp)
$L85:
	lw	$2,32($sp)
	slt	$2,2
	move	$2,$24
	beqz	$2,$L86
	.set	noreorder
	nop
	.set	reorder
	.set	noreorder
	nop
	.set	reorder
	addiu	$sp,16
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
	sw	$4,0($sp)
	lw	$3,0($sp)
	li	$2,32
	or	$2,$3
	addiu	$2,-97
	sltu	$2,26
	move	$2,$24
	zeb	$2
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	sltu	$2,128
	move	$2,$24
	zeb	$2
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	li	$3,32
	xor	$2,$3
	beqz	$2,$L93
	lw	$2,0($sp)
	li	$3,9
	xor	$2,$3
	bnez	$2,$L94
$L93:
	li	$2,1
	jr	$31
$L94:
	li	$2,0
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	sltu	$2,32
	move	$2,$24
	bnez	$2,$L98
	lw	$2,0($sp)
	li	$3,127
	xor	$2,$3
	bnez	$2,$L99
$L98:
	li	$2,1
	jr	$31
$L99:
	li	$2,0
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	zeb	$2
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	addiu	$2,-33
	sltu	$2,94
	move	$2,$24
	zeb	$2
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	addiu	$2,-97
	sltu	$2,26
	move	$2,$24
	zeb	$2
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	addiu	$2,-32
	sltu	$2,95
	move	$2,$24
	zeb	$2
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	li	$3,32
	xor	$2,$3
	beqz	$2,$L111
	lw	$2,0($sp)
	addiu	$2,-9
	sltu	$2,5
	move	$2,$24
	beqz	$2,$L112
$L111:
	li	$2,1
	jr	$31
$L112:
	li	$2,0
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	addiu	$2,-65
	sltu	$2,26
	move	$2,$24
	zeb	$2
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	sltu	$2,32
	move	$2,$24
	bnez	$2,$L118
	lw	$2,0($sp)
	addiu	$2,-127
	sltu	$2,33
	move	$2,$24
	bnez	$2,$L118
	lw	$2,0($sp)
	addiu	$2,-8232
	sltu	$2,2
	move	$2,$24
	bnez	$2,$L118
	lw	$3,0($sp)
	li	$2,65529
	neg	$2,$2
	addu	$2,$3,$2
	sltu	$2,3
	move	$2,$24
	beqz	$2,$L119
$L118:
	li	$2,1
	jr	$31
$L119:
	li	$2,0
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	zeb	$2
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	sltu	$2,255
	move	$2,$24
	beqz	$2,$L125
	lw	$2,0($sp)
	addiu	$3,$2,1
	li	$2,127
	and	$2,$3
	sltu	$2,33
	move	$2,$24
	li	$3,1
	xor	$2,$3
	zeb	$2
	jr	$31
$L125:
	lw	$2,0($sp)
	sltu	$2,8232
	move	$2,$24
	bnez	$2,$L127
	lw	$2,0($sp)
	addiu	$3,$2,-8234
	li	$2,47062
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L127
	lw	$3,0($sp)
	li	$2,57344
	neg	$2,$2
	addu	$2,$3,$2
	sltu	$2,8185
	move	$2,$24
	beqz	$2,$L128
$L127:
	li	$2,1
	jr	$31
$L128:
	lw	$3,0($sp)
	li	$2,65532
	neg	$2,$2
	addu	$3,$3,$2
	lw	$2,$L133
	sltu	$2,$3
	move	$2,$24
	bnez	$2,$L129
	lw	$3,0($sp)
	li	$2,65534
	and	$2,$3
	li	$3,65534
	xor	$2,$3
	bnez	$2,$L130
$L129:
	li	$2,0
	jr	$31
$L130:
	li	$2,1
	jr	$31
	.type	__pool_iswprint_132, @object
__pool_iswprint_132:
	.align	2
$L132:
	.word	__gnu_local_gp
$L133:
	.word	1048579
	.type	__pend_iswprint_132, @object
__pend_iswprint_132:
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	bnez	$2,$L135
	lw	$3,0($sp)
	li	$2,32
	or	$2,$3
	addiu	$2,-97
	sltu	$2,6
	move	$2,$24
	beqz	$2,$L136
$L135:
	li	$2,1
	jr	$31
$L136:
	li	$2,0
	jr	$31
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
	sw	$4,0($sp)
	lw	$3,0($sp)
	li	$2,127
	and	$2,$3
	jr	$31
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L157
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	sd	$5,64($sp)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,56($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L153
	ld	$2,56($sp)
	b	$L144
$L153:
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,64($sp)
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L154
	ld	$2,64($sp)
	b	$L144
$L154:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,64($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L155
	lw	$2,%call16(__mips16_subdf3)($16)
	ld	$5,64($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	b	$L144
$L155:
	ld	$2,$L158
$L144:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_fdim_157, @object
__pool_fdim_157:
	.align	2
$L157:
	.word	__gnu_local_gp
	.align	3
$L158:
	.word	0
	.word	0
	.type	__pend_fdim_157, @object
__pend_fdim_157:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L175
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,56($sp)
	sw	$5,64($sp)
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,56($sp)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L171
	lw	$2,56($sp)
	b	$L162
$L171:
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,64($sp)
	lw	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L172
	lw	$2,64($sp)
	b	$L162
$L172:
	lw	$2,%call16(__mips16_gtsf2)($16)
	lw	$5,64($sp)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L173
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,64($sp)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	b	$L162
$L173:
	lw	$2,$L176
$L162:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_fdimf_175, @object
__pool_fdimf_175:
	.align	2
$L175:
	.word	__gnu_local_gp
$L176:
	.word	0
	.type	__pend_fdimf_175, @object
__pend_fdimf_175:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L196
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	sd	$5,64($sp)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,56($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L192
	ld	$2,64($sp)
	b	$L180
$L192:
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,64($sp)
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L193
	ld	$2,56($sp)
	b	$L180
$L193:
	ld	$2,56($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	move	$4,$2
	ld	$2,64($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L183
	ld	$2,56($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L184
	ld	$2,64($sp)
	b	$L180
$L184:
	ld	$2,56($sp)
	b	$L180
$L183:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,64($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L194
	ld	$2,64($sp)
	b	$L180
$L194:
	ld	$2,56($sp)
$L180:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_fmax_196, @object
__pool_fmax_196:
	.align	2
$L196:
	.word	__gnu_local_gp
	.type	__pend_fmax_196, @object
__pend_fmax_196:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L216
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,56($sp)
	sw	$5,64($sp)
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,56($sp)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L212
	lw	$2,64($sp)
	b	$L200
$L212:
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,64($sp)
	lw	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L213
	lw	$2,56($sp)
	b	$L200
$L213:
	lw	$3,56($sp)
	lw	$2,$L217
	and	$2,$3
	move	$4,$2
	lw	$3,64($sp)
	lw	$2,$L217
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L203
	lw	$3,56($sp)
	lw	$2,$L217
	and	$2,$3
	beqz	$2,$L204
	lw	$2,64($sp)
	b	$L200
$L204:
	lw	$2,56($sp)
	b	$L200
$L203:
	lw	$2,%call16(__mips16_ltsf2)($16)
	lw	$5,64($sp)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L214
	lw	$2,64($sp)
	b	$L200
$L214:
	lw	$2,56($sp)
$L200:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_fmaxf_216, @object
__pool_fmaxf_216:
	.align	2
$L216:
	.word	__gnu_local_gp
$L217:
	.word	-2147483648
	.type	__pend_fmaxf_216, @object
__pend_fmaxf_216:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L237
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	sd	$5,64($sp)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,56($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L233
	ld	$2,64($sp)
	b	$L221
$L233:
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,64($sp)
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L234
	ld	$2,56($sp)
	b	$L221
$L234:
	ld	$2,56($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	move	$4,$2
	ld	$2,64($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L224
	ld	$2,56($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L225
	ld	$2,64($sp)
	b	$L221
$L225:
	ld	$2,56($sp)
	b	$L221
$L224:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,64($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L235
	ld	$2,64($sp)
	b	$L221
$L235:
	ld	$2,56($sp)
$L221:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_fmaxl_237, @object
__pool_fmaxl_237:
	.align	2
$L237:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_237, @object
__pend_fmaxl_237:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L257
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	sd	$5,64($sp)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,56($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L253
	ld	$2,64($sp)
	b	$L241
$L253:
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,64($sp)
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L254
	ld	$2,56($sp)
	b	$L241
$L254:
	ld	$2,56($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	move	$4,$2
	ld	$2,64($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L244
	ld	$2,56($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L245
	ld	$2,56($sp)
	b	$L241
$L245:
	ld	$2,64($sp)
	b	$L241
$L244:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,64($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L255
	ld	$2,56($sp)
	b	$L241
$L255:
	ld	$2,64($sp)
$L241:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_fmin_257, @object
__pool_fmin_257:
	.align	2
$L257:
	.word	__gnu_local_gp
	.type	__pend_fmin_257, @object
__pend_fmin_257:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L277
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,56($sp)
	sw	$5,64($sp)
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,56($sp)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L273
	lw	$2,64($sp)
	b	$L261
$L273:
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,64($sp)
	lw	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L274
	lw	$2,56($sp)
	b	$L261
$L274:
	lw	$3,56($sp)
	lw	$2,$L278
	and	$2,$3
	move	$4,$2
	lw	$3,64($sp)
	lw	$2,$L278
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L264
	lw	$3,56($sp)
	lw	$2,$L278
	and	$2,$3
	beqz	$2,$L265
	lw	$2,56($sp)
	b	$L261
$L265:
	lw	$2,64($sp)
	b	$L261
$L264:
	lw	$2,%call16(__mips16_ltsf2)($16)
	lw	$5,64($sp)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L275
	lw	$2,56($sp)
	b	$L261
$L275:
	lw	$2,64($sp)
$L261:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_fminf_277, @object
__pool_fminf_277:
	.align	2
$L277:
	.word	__gnu_local_gp
$L278:
	.word	-2147483648
	.type	__pend_fminf_277, @object
__pend_fminf_277:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L298
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	sd	$5,64($sp)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,56($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L294
	ld	$2,64($sp)
	b	$L282
$L294:
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,64($sp)
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L295
	ld	$2,56($sp)
	b	$L282
$L295:
	ld	$2,56($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	move	$4,$2
	ld	$2,64($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L285
	ld	$2,56($sp)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L286
	ld	$2,56($sp)
	b	$L282
$L286:
	ld	$2,64($sp)
	b	$L282
$L285:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,64($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L296
	ld	$2,56($sp)
	b	$L282
$L296:
	ld	$2,64($sp)
$L282:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_fminl_298, @object
__pool_fminl_298:
	.align	2
$L298:
	.word	__gnu_local_gp
	.type	__pend_fminl_298, @object
__pend_fminl_298:
	.end	fminl
	.size	fminl, .-fminl
	.rdata
	.align	3
	.type	digits, @object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr"
	.ascii	"stuvwxyz\000"
	.text
	.align	2
	.globl	l64a
	.set	mips16
	.set	nomicromips
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	sw	$2,12($sp)
	lw	$2,$L304
	sw	$2,8($sp)
	b	$L300
$L301:
	lw	$3,12($sp)
	li	$2,63
	and	$2,$3
	lw	$3,$L305
	addu	$2,$3,$2
	lb	$3,0($2)
	lw	$2,8($sp)
	sb	$3,0($2)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
	lw	$2,12($sp)
	srl	$2,$2,6
	sw	$2,12($sp)
$L300:
	lw	$2,12($sp)
	bnez	$2,$L301
	lw	$2,8($sp)
	li	$3,0
	sb	$3,0($2)
	lw	$2,$L304
	addiu	$sp,16
	jr	$31
	.type	__pool_l64a_304, @object
__pool_l64a_304:
	.align	2
$L304:
	.word	s.0
$L305:
	.word	digits
	.type	__pend_l64a_304, @object
__pend_l64a_304:
	.end	l64a
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	addiu	$2,-1
	dsll	$3,$2,32
	dsrl	$3,32
	lw	$2,$L307
	sd	$3,0($2)
	.set	noreorder
	nop
	.set	reorder
	jr	$31
	.type	__pool_srand_307, @object
__pool_srand_307:
	.align	2
$L307:
	.word	seed
	.type	__pend_srand_307, @object
__pend_srand_307:
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
	lw	$2,$L312
	ld	$3,0($2)
	ld	$2,$L313
	dmult	$3,$2
	mflo	$2
	daddiu	$3,$2,1
	lw	$2,$L312
	sd	$3,0($2)
	lw	$2,$L312
	ld	$2,0($2)
	dsrl	$2,33
	sll	$2,$2,0
	jr	$31
	.type	__pool_rand_311, @object
__pool_rand_311:
	.align	2
$L311:
	.word	__gnu_local_gp
$L312:
	.word	seed
	.align	3
$L313:
	.dword	6364136223846793005
	.type	__pend_rand_311, @object
__pend_rand_311:
	.end	rand
	.size	rand, .-rand
	.align	2
	.globl	insque
	.set	mips16
	.set	nomicromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,24($sp)
	sw	$2,12($sp)
	lw	$2,12($sp)
	bnez	$2,$L315
	lw	$2,8($sp)
	li	$3,0
	sw	$3,4($2)
	lw	$2,8($sp)
	lw	$3,4($2)
	lw	$2,8($sp)
	sw	$3,0($2)
	b	$L314
$L315:
	lw	$2,12($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	sw	$3,0($2)
	lw	$2,8($sp)
	lw	$3,12($sp)
	sw	$3,4($2)
	lw	$2,12($sp)
	lw	$3,8($sp)
	sw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	beqz	$2,$L314
	lw	$2,8($sp)
	lw	$2,0($2)
	lw	$3,8($sp)
	sw	$3,4($2)
$L314:
	addiu	$sp,16
	jr	$31
	.end	insque
	.size	insque, .-insque
	.align	2
	.globl	remque
	.set	mips16
	.set	nomicromips
	.ent	remque
	.type	remque, @function
remque:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,8($sp)
	lw	$2,0($2)
	beqz	$2,$L319
	lw	$2,8($sp)
	lw	$2,0($2)
	lw	$3,8($sp)
	lw	$3,4($3)
	sw	$3,4($2)
$L319:
	lw	$2,8($sp)
	lw	$2,4($2)
	beqz	$2,$L321
	lw	$2,8($sp)
	lw	$2,4($2)
	lw	$3,8($sp)
	lw	$3,0($3)
	sw	$3,0($2)
$L321:
	.set	noreorder
	nop
	.set	reorder
	addiu	$sp,16
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
	.frame	$sp,72,$31		# vars= 16, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$16,56($sp)
	sw	$4,72($sp)
	sw	$5,80($sp)
	sw	$6,88($sp)
	sw	$7,96($sp)
	lw	$16,96($sp)
	move	$2,$16
	addiu	$2,-1
	sw	$2,44($sp)
	lw	$2,80($sp)
	sw	$2,48($sp)
	lw	$2,88($sp)
	lw	$2,0($2)
	sw	$2,52($sp)
	li	$2,0
	sw	$2,40($sp)
	b	$L324
$L327:
	lw	$2,40($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,48($sp)
	addu	$4,$3,$2
	lw	$3,72($sp)
	lw	$2,108($sp)
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$2
	bnez	$2,$L325
	lw	$2,40($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,48($sp)
	addu	$2,$3,$2
	b	$L326
$L325:
	lw	$2,40($sp)
	addiu	$2,1
	sw	$2,40($sp)
$L324:
	lw	$3,40($sp)
	lw	$2,52($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L327
	lw	$2,52($sp)
	addiu	$3,$2,1
	lw	$2,88($sp)
	sw	$3,0($2)
	lw	$2,52($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,48($sp)
	addu	$2,$3,$2
	lw	$4,96($sp)
	lw	$3,72($sp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	memcpy
	.option	pic2
$L326:
	ld	$7,64($sp)
	ld	$16,56($sp)
	addiu	$sp,72
	jr	$7
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.set	mips16
	.set	nomicromips
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	$sp,72,$31		# vars= 16, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$16,56($sp)
	sw	$4,72($sp)
	sw	$5,80($sp)
	sw	$6,88($sp)
	sw	$7,96($sp)
	lw	$16,96($sp)
	move	$2,$16
	addiu	$2,-1
	sw	$2,44($sp)
	lw	$2,80($sp)
	sw	$2,48($sp)
	lw	$2,88($sp)
	lw	$2,0($2)
	sw	$2,52($sp)
	li	$2,0
	sw	$2,40($sp)
	b	$L330
$L333:
	lw	$2,40($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,48($sp)
	addu	$4,$3,$2
	lw	$3,72($sp)
	lw	$2,108($sp)
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$2
	bnez	$2,$L331
	lw	$2,40($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,48($sp)
	addu	$2,$3,$2
	b	$L332
$L331:
	lw	$2,40($sp)
	addiu	$2,1
	sw	$2,40($sp)
$L330:
	lw	$3,40($sp)
	lw	$2,52($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L333
	li	$2,0
$L332:
	ld	$7,64($sp)
	ld	$16,56($sp)
	addiu	$sp,72
	jr	$7
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	slt	$2,0
	move	$3,$24
	beqz	$3,$L336
	neg	$2,$2
$L336:
	jr	$31
	.end	abs
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.set	mips16
	.set	nomicromips
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	$sp,56,$31		# vars= 8, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sw	$4,56($sp)
	li	$2,0
	sw	$2,40($sp)
	li	$2,0
	sw	$2,44($sp)
	b	$L339
$L340:
	lw	$2,56($sp)
	addiu	$2,1
	sw	$2,56($sp)
$L339:
	lw	$2,56($sp)
	lb	$2,0($2)
	move	$4,$2
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L340
	lw	$2,56($sp)
	lb	$2,0($2)
	move	$3,$2
	cmpi	$3,43
	move	$2,$24
	beqz	$2,$L341
	cmpi	$3,45
	move	$2,$24
	bnez	$2,$L343
	li	$2,1
	sw	$2,44($sp)
$L341:
	lw	$2,56($sp)
	addiu	$2,1
	sw	$2,56($sp)
	b	$L343
$L344:
	lw	$3,40($sp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$4,$2
	lw	$2,56($sp)
	addiu	$3,$2,1
	sw	$3,56($sp)
	lb	$2,0($2)
	addiu	$2,-48
	subu	$2,$4,$2
	sw	$2,40($sp)
$L343:
	lw	$2,56($sp)
	lb	$2,0($2)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	bnez	$2,$L344
	lw	$2,44($sp)
	bnez	$2,$L345
	lw	$2,40($sp)
	neg	$2,$2
	b	$L347
$L345:
	lw	$2,40($sp)
$L347:
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	mips16
	.set	nomicromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$sp,56,$31		# vars= 8, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sw	$4,56($sp)
	li	$2,0
	sw	$2,40($sp)
	li	$2,0
	sw	$2,44($sp)
	b	$L350
$L351:
	lw	$2,56($sp)
	addiu	$2,1
	sw	$2,56($sp)
$L350:
	lw	$2,56($sp)
	lb	$2,0($2)
	move	$4,$2
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L351
	lw	$2,56($sp)
	lb	$2,0($2)
	move	$3,$2
	cmpi	$3,43
	move	$2,$24
	beqz	$2,$L352
	cmpi	$3,45
	move	$2,$24
	bnez	$2,$L354
	li	$2,1
	sw	$2,44($sp)
$L352:
	lw	$2,56($sp)
	addiu	$2,1
	sw	$2,56($sp)
	b	$L354
$L355:
	lw	$3,40($sp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$4,$2
	lw	$2,56($sp)
	addiu	$3,$2,1
	sw	$3,56($sp)
	lb	$2,0($2)
	addiu	$2,-48
	subu	$2,$4,$2
	sw	$2,40($sp)
$L354:
	lw	$2,56($sp)
	lb	$2,0($2)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	bnez	$2,$L355
	lw	$2,44($sp)
	bnez	$2,$L356
	lw	$2,40($sp)
	neg	$2,$2
	b	$L358
$L356:
	lw	$2,40($sp)
$L358:
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
	.end	atol
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.set	mips16
	.set	nomicromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$sp,64,$31		# vars= 16, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sw	$4,64($sp)
	li	$2,0
	sd	$2,40($sp)
	li	$2,0
	sw	$2,48($sp)
	b	$L361
$L362:
	lw	$2,64($sp)
	addiu	$2,1
	sw	$2,64($sp)
$L361:
	lw	$2,64($sp)
	lb	$2,0($2)
	move	$4,$2
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L362
	lw	$2,64($sp)
	lb	$2,0($2)
	move	$3,$2
	cmpi	$3,43
	move	$2,$24
	beqz	$2,$L363
	cmpi	$3,45
	move	$2,$24
	bnez	$2,$L365
	li	$2,1
	sw	$2,48($sp)
$L363:
	lw	$2,64($sp)
	addiu	$2,1
	sw	$2,64($sp)
	b	$L365
$L366:
	ld	$3,40($sp)
	move	$2,$3
	dsll	$2,$2,2
	daddu	$2,$2,$3
	dsll	$2,$2,1
	move	$4,$2
	lw	$2,64($sp)
	addiu	$3,$2,1
	sw	$3,64($sp)
	lb	$2,0($2)
	addiu	$2,-48
	dsubu	$2,$4,$2
	sd	$2,40($sp)
$L365:
	lw	$2,64($sp)
	lb	$2,0($2)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	bnez	$2,$L366
	lw	$2,48($sp)
	bnez	$2,$L367
	li	$3,0
	ld	$2,40($sp)
	dsubu	$2,$3,$2
	b	$L369
$L367:
	ld	$2,40($sp)
$L369:
	ld	$7,56($sp)
	addiu	$sp,64
	jr	$7
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.set	mips16
	.set	nomicromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$sp,56,$31		# vars= 8, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sw	$4,56($sp)
	sw	$5,64($sp)
	sw	$6,72($sp)
	sw	$7,80($sp)
	b	$L372
$L377:
	lw	$2,72($sp)
	srl	$3,$2,1
	lw	$2,80($sp)
	mult	$3,$2
	mflo	$2
	lw	$3,64($sp)
	addu	$2,$3,$2
	sw	$2,40($sp)
	lw	$4,40($sp)
	lw	$3,56($sp)
	lw	$2,92($sp)
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$2
	sw	$2,44($sp)
	lw	$2,44($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L373
	lw	$2,72($sp)
	srl	$2,$2,1
	sw	$2,72($sp)
	b	$L372
$L373:
	lw	$2,44($sp)
	slt	$2,1
	move	$2,$24
	bnez	$2,$L375
	lw	$3,40($sp)
	lw	$2,80($sp)
	addu	$2,$3,$2
	sw	$2,64($sp)
	lw	$2,72($sp)
	srl	$2,$2,1
	lw	$3,72($sp)
	subu	$2,$3,$2
	addiu	$2,-1
	sw	$2,72($sp)
	b	$L372
$L375:
	lw	$2,40($sp)
	b	$L376
$L372:
	lw	$2,72($sp)
	bnez	$2,$L377
	li	$2,0
$L376:
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.set	mips16
	.set	nomicromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	$sp,64,$31		# vars= 16, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sw	$4,64($sp)
	sw	$5,72($sp)
	sw	$6,80($sp)
	sw	$7,88($sp)
	lw	$2,72($sp)
	sw	$2,40($sp)
	lw	$2,80($sp)
	sw	$2,44($sp)
	b	$L380
$L384:
	lw	$2,44($sp)
	sra	$2,$2,1
	move	$3,$2
	lw	$2,88($sp)
	mult	$3,$2
	mflo	$2
	lw	$3,40($sp)
	addu	$2,$3,$2
	sw	$2,48($sp)
	lw	$5,108($sp)
	lw	$4,48($sp)
	lw	$3,64($sp)
	lw	$2,100($sp)
	move	$6,$5
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$2
	sw	$2,52($sp)
	lw	$2,52($sp)
	bnez	$2,$L381
	lw	$2,48($sp)
	b	$L382
$L381:
	lw	$2,52($sp)
	slt	$2,1
	move	$2,$24
	bnez	$2,$L383
	lw	$3,48($sp)
	lw	$2,88($sp)
	addu	$2,$3,$2
	sw	$2,40($sp)
	lw	$2,44($sp)
	addiu	$2,-1
	sw	$2,44($sp)
$L383:
	lw	$2,44($sp)
	sra	$2,$2,1
	sw	$2,44($sp)
$L380:
	lw	$2,44($sp)
	bnez	$2,$L384
	li	$2,0
$L382:
	ld	$7,56($sp)
	addiu	$sp,64
	jr	$7
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.set	mips16
	.set	nomicromips
	.ent	div
	.type	div, @function
div:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$3,24($sp)
	lw	$2,32($sp)
	div	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mflo	$2
	move	$4,$2
	lw	$3,24($sp)
	lw	$2,32($sp)
	div	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,16($sp)
	sw	$4,0($2)
	lw	$2,16($sp)
	sw	$3,4($2)
	lw	$2,16($sp)
	addiu	$sp,16
	jr	$31
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
	sd	$4,0($sp)
	ld	$2,0($sp)
	slt	$2,0
	move	$3,$24
	beqz	$3,$L390
	li	$3,0
	dsubu	$2,$3,$2
$L390:
	jr	$31
	.end	imaxabs
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.set	mips16
	.set	nomicromips
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sw	$4,24($sp)
	sd	$5,32($sp)
	sd	$6,40($sp)
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mflo	$2
	move	$4,$2
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,24($sp)
	sd	$4,0($2)
	lw	$2,24($sp)
	sd	$3,8($2)
	lw	$2,24($sp)
	addiu	$sp,24
	jr	$31
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	slt	$2,0
	move	$3,$24
	beqz	$3,$L396
	neg	$2,$2
$L396:
	jr	$31
	.end	labs
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.set	mips16
	.set	nomicromips
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$3,24($sp)
	lw	$2,32($sp)
	div	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mflo	$2
	move	$4,$2
	lw	$3,24($sp)
	lw	$2,32($sp)
	div	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,16($sp)
	sw	$4,0($2)
	lw	$2,16($sp)
	sw	$3,4($2)
	lw	$2,16($sp)
	addiu	$sp,16
	jr	$31
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
	sd	$4,0($sp)
	ld	$2,0($sp)
	slt	$2,0
	move	$3,$24
	beqz	$3,$L402
	li	$3,0
	dsubu	$2,$3,$2
$L402:
	jr	$31
	.end	llabs
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.set	mips16
	.set	nomicromips
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sw	$4,24($sp)
	sd	$5,32($sp)
	sd	$6,40($sp)
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mflo	$2
	move	$4,$2
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,24($sp)
	sd	$4,0($2)
	lw	$2,24($sp)
	sd	$3,8($2)
	lw	$2,24($sp)
	addiu	$sp,24
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	b	$L408
$L410:
	lw	$2,0($sp)
	addiu	$2,4
	sw	$2,0($sp)
$L408:
	lw	$2,0($sp)
	lw	$2,0($2)
	beqz	$2,$L409
	lw	$2,0($sp)
	lw	$2,0($2)
	lw	$3,8($sp)
	xor	$2,$3
	bnez	$2,$L410
$L409:
	lw	$2,0($sp)
	lw	$2,0($2)
	beqz	$2,$L411
	lw	$2,0($sp)
	jr	$31
$L411:
	li	$2,0
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	b	$L415
$L417:
	lw	$2,0($sp)
	addiu	$2,4
	sw	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,4
	sw	$2,8($sp)
$L415:
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	xor	$2,$3
	bnez	$2,$L416
	lw	$2,0($sp)
	lw	$2,0($2)
	beqz	$2,$L416
	lw	$2,8($sp)
	lw	$2,0($2)
	bnez	$2,$L417
$L416:
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$3,$2
	move	$2,$24
	bnez	$2,$L418
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3
	move	$2,$24
	zeb	$2
	jr	$31
$L418:
	li	$2,1
	neg	$2,$2
	jr	$31
	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.set	mips16
	.set	nomicromips
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	.set	noreorder
	nop
	.set	reorder
$L422:
	lw	$3,24($sp)
	addiu	$2,$3,4
	sw	$2,24($sp)
	lw	$2,16($sp)
	addiu	$4,$2,4
	sw	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($2)
	bnez	$2,$L422
	lw	$2,8($sp)
	addiu	$sp,16
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	b	$L426
$L427:
	lw	$2,16($sp)
	addiu	$2,4
	sw	$2,16($sp)
$L426:
	lw	$2,16($sp)
	lw	$2,0($2)
	bnez	$2,$L427
	lw	$3,16($sp)
	lw	$2,8($sp)
	subu	$2,$3,$2
	sra	$2,$2,2
	addiu	$sp,16
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	sw	$6,16($sp)
	b	$L431
$L433:
	lw	$2,16($sp)
	addiu	$2,-1
	sw	$2,16($sp)
	lw	$2,0($sp)
	addiu	$2,4
	sw	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,4
	sw	$2,8($sp)
$L431:
	lw	$2,16($sp)
	beqz	$2,$L432
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	xor	$2,$3
	bnez	$2,$L432
	lw	$2,0($sp)
	lw	$2,0($2)
	beqz	$2,$L432
	lw	$2,8($sp)
	lw	$2,0($2)
	bnez	$2,$L433
$L432:
	lw	$2,16($sp)
	beqz	$2,$L434
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$3,$2
	move	$2,$24
	bnez	$2,$L435
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3
	move	$2,$24
	zeb	$2
	jr	$31
$L435:
	li	$2,1
	neg	$2,$2
	jr	$31
$L434:
	li	$2,0
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	sw	$6,16($sp)
	b	$L440
$L442:
	lw	$2,16($sp)
	addiu	$2,-1
	sw	$2,16($sp)
	lw	$2,0($sp)
	addiu	$2,4
	sw	$2,0($sp)
$L440:
	lw	$2,16($sp)
	beqz	$2,$L441
	lw	$2,0($sp)
	lw	$2,0($2)
	lw	$3,8($sp)
	xor	$2,$3
	bnez	$2,$L442
$L441:
	lw	$2,16($sp)
	beqz	$2,$L443
	lw	$2,0($sp)
	jr	$31
$L443:
	li	$2,0
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	sw	$6,16($sp)
	b	$L447
$L449:
	lw	$2,16($sp)
	addiu	$2,-1
	sw	$2,16($sp)
	lw	$2,0($sp)
	addiu	$2,4
	sw	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,4
	sw	$2,8($sp)
$L447:
	lw	$2,16($sp)
	beqz	$2,$L448
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	xor	$2,$3
	beqz	$2,$L449
$L448:
	lw	$2,16($sp)
	beqz	$2,$L450
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$3,$2
	move	$2,$24
	bnez	$2,$L451
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3
	move	$2,$24
	zeb	$2
	jr	$31
$L451:
	li	$2,1
	neg	$2,$2
	jr	$31
$L450:
	li	$2,0
	jr	$31
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.set	mips16
	.set	nomicromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	b	$L456
$L457:
	lw	$3,24($sp)
	addiu	$2,$3,4
	sw	$2,24($sp)
	lw	$2,16($sp)
	addiu	$4,$2,4
	sw	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
$L456:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L457
	lw	$2,8($sp)
	addiu	$sp,16
	jr	$31
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.set	mips16
	.set	nomicromips
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$3,16($sp)
	lw	$2,24($sp)
	xor	$2,$3
	bnez	$2,$L461
	lw	$2,16($sp)
	b	$L462
$L461:
	lw	$3,16($sp)
	lw	$2,24($sp)
	subu	$3,$3,$2
	lw	$2,32($sp)
	sll	$2,$2,2
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L467
	b	$L464
$L465:
	lw	$2,32($sp)
	sll	$2,$2,2
	lw	$3,24($sp)
	addu	$3,$3,$2
	lw	$2,32($sp)
	sll	$2,$2,2
	lw	$4,16($sp)
	addu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
$L464:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L465
	b	$L466
$L468:
	lw	$3,24($sp)
	addiu	$2,$3,4
	sw	$2,24($sp)
	lw	$2,16($sp)
	addiu	$4,$2,4
	sw	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
$L467:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L468
$L466:
	lw	$2,8($sp)
$L462:
	addiu	$sp,16
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	b	$L471
$L472:
	lw	$2,16($sp)
	addiu	$3,$2,4
	sw	$3,16($sp)
	lw	$3,24($sp)
	sw	$3,0($2)
$L471:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L472
	lw	$2,8($sp)
	addiu	$sp,16
	jr	$31
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.set	mips16
	.set	nomicromips
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,24($sp)
	sw	$2,12($sp)
	lw	$3,8($sp)
	lw	$2,12($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L476
	lw	$3,8($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$3,12($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	sw	$2,12($sp)
	b	$L477
$L478:
	lw	$2,8($sp)
	addiu	$2,-1
	sw	$2,8($sp)
	lw	$2,12($sp)
	addiu	$2,-1
	sw	$2,12($sp)
	lw	$2,8($sp)
	lb	$3,0($2)
	lw	$2,12($sp)
	sb	$3,0($2)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L477:
	lw	$2,32($sp)
	bnez	$2,$L478
	b	$L482
$L476:
	lw	$3,8($sp)
	lw	$2,12($sp)
	xor	$2,$3
	beqz	$2,$L482
	b	$L480
$L481:
	lw	$3,8($sp)
	addiu	$2,$3,1
	sw	$2,8($sp)
	lw	$2,12($sp)
	addiu	$4,$2,1
	sw	$4,12($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L480:
	lw	$2,32($sp)
	bnez	$2,$L481
$L482:
	.set	noreorder
	nop
	.set	reorder
	addiu	$sp,16
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
	sd	$4,0($sp)
	sw	$5,8($sp)
	ld	$3,0($sp)
	lw	$2,8($sp)
	move	$4,$3
	dsll	$4,$2
	lw	$2,8($sp)
	neg	$2,$2
	li	$5,63
	and	$2,$5
	dsrl	$3,$2
	or	$3,$4
	move	$2,$3
	jr	$31
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
	sd	$4,0($sp)
	sw	$5,8($sp)
	ld	$3,0($sp)
	lw	$2,8($sp)
	move	$4,$3
	dsrl	$4,$2
	lw	$2,8($sp)
	neg	$2,$2
	li	$5,63
	and	$2,$5
	dsll	$3,$2
	or	$3,$4
	move	$2,$3
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	lw	$3,0($sp)
	lw	$2,8($sp)
	move	$4,$3
	sll	$4,$2
	lw	$2,8($sp)
	neg	$2,$2
	li	$5,31
	and	$2,$5
	srl	$3,$2
	or	$3,$4
	move	$2,$3
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	lw	$3,0($sp)
	lw	$2,8($sp)
	move	$4,$3
	srl	$4,$2
	lw	$2,8($sp)
	neg	$2,$2
	li	$5,31
	and	$2,$5
	sll	$3,$2
	or	$3,$4
	move	$2,$3
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	lw	$3,0($sp)
	lw	$2,8($sp)
	move	$4,$3
	sll	$4,$2
	lw	$2,8($sp)
	neg	$2,$2
	li	$5,31
	and	$2,$5
	srl	$3,$2
	or	$3,$4
	move	$2,$3
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	lw	$3,0($sp)
	lw	$2,8($sp)
	move	$4,$3
	srl	$4,$2
	lw	$2,8($sp)
	neg	$2,$2
	li	$5,31
	and	$2,$5
	sll	$3,$2
	or	$3,$4
	move	$2,$3
	jr	$31
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
	move	$2,$4
	sw	$5,8($sp)
	move	$3,$sp
	sh	$2,0($3)
	move	$2,$sp
	lhu	$2,0($2)
	lw	$3,8($sp)
	sll	$2,$3
	move	$3,$2
	zeh	$3
	move	$2,$sp
	lhu	$2,0($2)
	li	$5,16
	lw	$4,8($sp)
	subu	$4,$5,$4
	srl	$2,$4
	zeh	$2
	or	$2,$3
	zeh	$2
	jr	$31
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
	move	$2,$4
	sw	$5,8($sp)
	move	$3,$sp
	sh	$2,0($3)
	move	$2,$sp
	lhu	$2,0($2)
	lw	$3,8($sp)
	srl	$2,$3
	move	$3,$2
	zeh	$3
	move	$2,$sp
	lhu	$2,0($2)
	li	$5,16
	lw	$4,8($sp)
	subu	$4,$5,$4
	sll	$2,$4
	zeh	$2
	or	$2,$3
	zeh	$2
	jr	$31
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
	move	$2,$4
	sw	$5,8($sp)
	move	$3,$sp
	sb	$2,0($3)
	move	$2,$sp
	lbu	$2,0($2)
	lw	$3,8($sp)
	sll	$2,$3
	move	$3,$2
	zeb	$3
	move	$2,$sp
	lbu	$2,0($2)
	li	$5,8
	lw	$4,8($sp)
	subu	$4,$5,$4
	srl	$2,$4
	zeb	$2
	or	$2,$3
	zeb	$2
	jr	$31
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
	move	$2,$4
	sw	$5,8($sp)
	move	$3,$sp
	sb	$2,0($3)
	move	$2,$sp
	lbu	$2,0($2)
	lw	$3,8($sp)
	srl	$2,$3
	move	$3,$2
	zeb	$3
	move	$2,$sp
	lbu	$2,0($2)
	li	$5,8
	lw	$4,8($sp)
	subu	$4,$5,$4
	sll	$2,$4
	zeb	$2
	or	$2,$3
	zeb	$2
	jr	$31
	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.set	mips16
	.set	nomicromips
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	move	$2,$4
	move	$3,$sp
	sh	$2,16($3)
	li	$2,255
	sw	$2,8($sp)
	move	$2,$sp
	lhu	$3,16($2)
	lw	$2,8($sp)
	sll	$2,$2,8
	and	$2,$3
	srl	$2,$2,8
	move	$3,$2
	zeh	$3
	lw	$2,8($sp)
	move	$4,$2
	zeh	$4
	move	$2,$sp
	lhu	$2,16($2)
	and	$2,$4
	zeh	$2
	sll	$2,$2,8
	zeh	$2
	or	$2,$3
	zeh	$2
	addiu	$sp,16
	jr	$31
	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.set	mips16
	.set	nomicromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	li	$2,255
	sw	$2,8($sp)
	lw	$2,8($sp)
	sll	$3,$2,24
	lw	$2,16($sp)
	and	$2,$3
	srl	$3,$2,24
	lw	$2,8($sp)
	sll	$4,$2,8
	sll	$4,$4,8
	lw	$2,16($sp)
	and	$2,$4
	srl	$2,$2,8
	or	$3,$2
	lw	$2,8($sp)
	sll	$4,$2,8
	lw	$2,16($sp)
	and	$2,$4
	sll	$2,$2,8
	or	$3,$2
	lw	$4,16($sp)
	lw	$2,8($sp)
	and	$2,$4
	sll	$2,$2,24
	or	$2,$3
	addiu	$sp,16
	jr	$31
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.set	mips16
	.set	nomicromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$4,16($sp)
	li	$2,255
	sd	$2,8($sp)
	ld	$2,8($sp)
	dsll	$3,$2,56
	ld	$2,16($sp)
	and	$2,$3
	dsrl	$2,56
	move	$3,$2
	ld	$2,8($sp)
	dsll	$4,$2,48
	ld	$2,16($sp)
	and	$2,$4
	dsrl	$2,40
	or	$3,$2
	ld	$2,8($sp)
	dsll	$4,$2,40
	ld	$2,16($sp)
	and	$2,$4
	dsrl	$2,24
	or	$3,$2
	ld	$2,8($sp)
	dsll	$4,$2,32
	ld	$2,16($sp)
	and	$2,$4
	dsrl	$2,8
	or	$3,$2
	ld	$2,8($sp)
	dsll	$4,$2,24
	ld	$2,16($sp)
	and	$2,$4
	dsll	$2,$2,8
	or	$3,$2
	ld	$2,8($sp)
	dsll	$4,$2,8
	dsll	$4,$4,8
	ld	$2,16($sp)
	and	$2,$4
	dsll	$2,$2,24
	or	$3,$2
	ld	$2,8($sp)
	dsll	$4,$2,8
	ld	$2,16($sp)
	and	$2,$4
	dsll	$2,$2,40
	or	$3,$2
	ld	$4,16($sp)
	ld	$2,8($sp)
	and	$2,$4
	dsll	$2,$2,56
	or	$2,$3
	addiu	$sp,16
	jr	$31
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.set	mips16
	.set	nomicromips
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	li	$2,0
	sw	$2,8($sp)
	b	$L514
$L517:
	lw	$3,16($sp)
	lw	$2,8($sp)
	srl	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L515
	lw	$2,8($sp)
	addiu	$2,1
	b	$L516
$L515:
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L514:
	lw	$2,8($sp)
	sltu	$2,32
	move	$2,$24
	bnez	$2,$L517
	li	$2,0
$L516:
	addiu	$sp,16
	jr	$31
	.end	ffs
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.set	mips16
	.set	nomicromips
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	bnez	$4,$L520
	li	$2,0
	jr	$31
$L520:
	addiu	$sp,-8
	sd	$16,0($sp)
	move	$2,$4
	li	$16,1
	b	$L522
$L523:
	sra	$2,$2,1
	addiu	$16,1
$L522:
	li	$3,1
	and	$3,$2
	beqz	$3,$L523
	move	$2,$16
	ld	$16,0($sp)
	addiu	$sp,8
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L535
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,56($sp)
	lw	$2,%call16(__mips16_ltsf2)($16)
	lw	$5,$L536
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L528
	lw	$2,%call16(__mips16_gtsf2)($16)
	lw	$5,$L537
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L533
$L528:
	li	$2,1
	b	$L532
$L533:
	li	$2,0
$L532:
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_gl_isinff_535, @object
__pool_gl_isinff_535:
	.align	2
$L535:
	.word	__gnu_local_gp
$L536:
	.word	-8388609
$L537:
	.word	2139095039
	.type	__pend_gl_isinff_535, @object
__pend_gl_isinff_535:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L546
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L547
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L539
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L548
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L544
$L539:
	li	$2,1
	b	$L543
$L544:
	li	$2,0
$L543:
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_gl_isinfd_546, @object
__pool_gl_isinfd_546:
	.align	2
$L546:
	.word	__gnu_local_gp
	.align	3
$L547:
	.word	-1048577
	.word	-1
$L548:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_546, @object
__pend_gl_isinfd_546:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L557
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L558
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L550
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L559
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L555
$L550:
	li	$2,1
	b	$L554
$L555:
	li	$2,0
$L554:
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_gl_isinfl_557, @object
__pool_gl_isinfl_557:
	.align	2
$L557:
	.word	__gnu_local_gp
	.align	3
$L558:
	.word	-1048577
	.word	-1
$L559:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_557, @object
__pend_gl_isinfl_557:
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.set	mips16
	.set	nomicromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	move	$3,$31
	sd	$3,40($sp)
	lw	$2,$L562
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	sw	$4,48($sp)
	sw	$5,56($sp)
	lw	$2,%call16(__mips16_floatsidf)($2)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$3,$2
	lw	$2,48($sp)
	sd	$3,0($2)
	.set	noreorder
	nop
	.set	reorder
	.set	noreorder
	nop
	.set	reorder
	ld	$7,40($sp)
	addiu	$sp,48
	jr	$7
	.type	__pool__Qp_itoq_562, @object
__pool__Qp_itoq_562:
	.align	2
$L562:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_562, @object
__pend__Qp_itoq_562:
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
	.frame	$sp,64,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$16,48($sp)
	lw	$2,$L575
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,64($sp)
	sw	$5,72($sp)
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,64($sp)
	lw	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L564
	lw	$3,64($sp)
	lw	$2,%call16(__mips16_addsf3)($16)
	move	$5,$3
	move	$4,$3
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$3,$2
	lw	$2,%call16(__mips16_nesf2)($16)
	move	$5,$3
	lw	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L564
	lw	$2,72($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L566
	lw	$2,$L576
	b	$L567
$L566:
	lw	$2,$L577
$L567:
	sw	$2,40($sp)
$L570:
	lw	$3,72($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L568
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,40($sp)
	lw	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sw	$2,64($sp)
$L568:
	lw	$2,72($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,72($sp)
	lw	$2,72($sp)
	beqz	$2,$L573
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,40($sp)
	lw	$4,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
	b	$L570
$L573:
	.set	noreorder
	nop
	.set	reorder
$L564:
	lw	$2,64($sp)
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,56($sp)
	ld	$16,48($sp)
	addiu	$sp,64
	jr	$7
	.type	__pool_ldexpf_575, @object
__pool_ldexpf_575:
	.align	2
$L575:
	.word	__gnu_local_gp
$L576:
	.word	1056964608
$L577:
	.word	1073741824
	.type	__pend_ldexpf_575, @object
__pend_ldexpf_575:
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
	.frame	$sp,64,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$16,48($sp)
	lw	$2,$L590
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,64($sp)
	sw	$5,72($sp)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,64($sp)
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L579
	ld	$3,64($sp)
	lw	$2,%call16(__mips16_adddf3)($16)
	move	$5,$3
	move	$4,$3
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$3,$2
	lw	$2,%call16(__mips16_nedf2)($16)
	move	$5,$3
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L579
	lw	$2,72($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L581
	ld	$2,$L591
	b	$L582
$L581:
	ld	$2,$L592
$L582:
	sd	$2,40($sp)
$L585:
	lw	$3,72($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L583
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,40($sp)
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,64($sp)
$L583:
	lw	$2,72($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,72($sp)
	lw	$2,72($sp)
	beqz	$2,$L588
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,40($sp)
	ld	$4,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
	b	$L585
$L588:
	.set	noreorder
	nop
	.set	reorder
$L579:
	ld	$2,64($sp)
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,56($sp)
	ld	$16,48($sp)
	addiu	$sp,64
	jr	$7
	.type	__pool_ldexp_590, @object
__pool_ldexp_590:
	.align	2
$L590:
	.word	__gnu_local_gp
	.align	3
$L591:
	.word	1071644672
	.word	0
$L592:
	.word	1073741824
	.word	0
	.type	__pend_ldexp_590, @object
__pend_ldexp_590:
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
	.frame	$sp,64,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$16,48($sp)
	lw	$2,$L605
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,64($sp)
	sw	$5,72($sp)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,64($sp)
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	bnez	$2,$L594
	ld	$3,64($sp)
	lw	$2,%call16(__mips16_adddf3)($16)
	move	$5,$3
	move	$4,$3
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$3,$2
	lw	$2,%call16(__mips16_nedf2)($16)
	move	$5,$3
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L594
	lw	$2,72($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L596
	ld	$2,$L606
	b	$L597
$L596:
	ld	$2,$L607
$L597:
	sd	$2,40($sp)
$L600:
	lw	$3,72($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L598
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,40($sp)
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,64($sp)
$L598:
	lw	$2,72($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,72($sp)
	lw	$2,72($sp)
	beqz	$2,$L603
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,40($sp)
	ld	$4,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
	b	$L600
$L603:
	.set	noreorder
	nop
	.set	reorder
$L594:
	ld	$2,64($sp)
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,56($sp)
	ld	$16,48($sp)
	addiu	$sp,64
	jr	$7
	.type	__pool_ldexpl_605, @object
__pool_ldexpl_605:
	.align	2
$L605:
	.word	__gnu_local_gp
	.align	3
$L606:
	.word	1071644672
	.word	0
$L607:
	.word	1073741824
	.word	0
	.type	__pend_ldexpl_605, @object
__pend_ldexpl_605:
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.set	mips16
	.set	nomicromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,24($sp)
	sw	$2,8($sp)
	lw	$2,16($sp)
	sw	$2,12($sp)
	b	$L609
$L610:
	lw	$2,8($sp)
	addiu	$3,$2,1
	sw	$3,8($sp)
	lb	$4,0($2)
	lw	$2,12($sp)
	addiu	$3,$2,1
	sw	$3,12($sp)
	lb	$3,0($2)
	xor	$3,$4
	seb	$3
	sb	$3,0($2)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L609:
	lw	$2,32($sp)
	bnez	$2,$L610
	lw	$2,16($sp)
	addiu	$sp,16
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
	.frame	$sp,56,$31		# vars= 8, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sw	$4,56($sp)
	sw	$5,64($sp)
	sw	$6,72($sp)
	lw	$2,56($sp)
	move	$4,$2
	.option	pic0
	jal	strlen
	.option	pic2
	move	$3,$2
	lw	$2,56($sp)
	addu	$2,$2,$3
	sw	$2,40($sp)
	b	$L614
$L616:
	lw	$2,64($sp)
	addiu	$2,1
	sw	$2,64($sp)
	lw	$2,40($sp)
	addiu	$2,1
	sw	$2,40($sp)
	lw	$2,72($sp)
	addiu	$2,-1
	sw	$2,72($sp)
$L614:
	lw	$2,72($sp)
	beqz	$2,$L615
	lw	$2,64($sp)
	lb	$3,0($2)
	lw	$2,40($sp)
	sb	$3,0($2)
	lw	$2,40($sp)
	lb	$2,0($2)
	bnez	$2,$L616
$L615:
	lw	$2,72($sp)
	bnez	$2,$L617
	lw	$2,40($sp)
	li	$3,0
	sb	$3,0($2)
$L617:
	lw	$2,56($sp)
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.set	mips16
	.set	nomicromips
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	li	$2,0
	sw	$2,8($sp)
	b	$L621
$L626:
	.set	noreorder
	nop
	.set	reorder
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L621:
	lw	$3,8($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L622
	lw	$3,16($sp)
	lw	$2,8($sp)
	addu	$2,$3,$2
	lb	$2,0($2)
	bnez	$2,$L626
$L622:
	lw	$2,8($sp)
	addiu	$sp,16
	jr	$31
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.set	mips16
	.set	nomicromips
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	b	$L629
$L633:
	lw	$2,24($sp)
	sw	$2,8($sp)
	b	$L630
$L632:
	lw	$2,8($sp)
	addiu	$3,$2,1
	sw	$3,8($sp)
	lb	$3,0($2)
	lw	$2,16($sp)
	lb	$2,0($2)
	xor	$2,$3
	bnez	$2,$L630
	lw	$2,16($sp)
	b	$L631
$L630:
	lw	$2,8($sp)
	lb	$2,0($2)
	bnez	$2,$L632
	lw	$2,16($sp)
	addiu	$2,1
	sw	$2,16($sp)
$L629:
	lw	$2,16($sp)
	lb	$2,0($2)
	bnez	$2,$L633
	li	$2,0
$L631:
	addiu	$sp,16
	jr	$31
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.set	mips16
	.set	nomicromips
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	move	$2,$4
	sw	$5,24($sp)
	li	$3,0
	sw	$3,8($sp)
$L637:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,24($sp)
	xor	$3,$4
	bnez	$3,$L636
	sw	$2,8($sp)
$L636:
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	bnez	$3,$L637
	lw	$2,8($sp)
	addiu	$sp,16
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
	.frame	$sp,56,$31		# vars= 8, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sw	$4,56($sp)
	sw	$5,64($sp)
	lw	$2,56($sp)
	sw	$2,40($sp)
	lw	$2,64($sp)
	move	$4,$2
	.option	pic0
	jal	strlen
	.option	pic2
	sw	$2,44($sp)
	lw	$2,44($sp)
	bnez	$2,$L643
	lw	$2,56($sp)
	b	$L642
$L645:
	lw	$4,44($sp)
	lw	$3,64($sp)
	lw	$2,40($sp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	strncmp
	.option	pic2
	bnez	$2,$L644
	lw	$2,40($sp)
	b	$L642
$L644:
	lw	$2,40($sp)
	addiu	$2,1
	sw	$2,40($sp)
$L643:
	lw	$2,64($sp)
	lb	$2,0($2)
	move	$3,$2
	lw	$2,40($sp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	strchr
	.option	pic2
	sw	$2,40($sp)
	lw	$2,40($sp)
	bnez	$2,$L645
	li	$2,0
$L642:
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L658
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	sd	$5,64($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L659
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L648
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L659
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	beqz	$2,$L650
$L648:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L659
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L651
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L659
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L651
$L650:
	ld	$3,56($sp)
	ld	$2,$L660
	xor	$2,$3
	b	$L654
$L651:
	ld	$2,56($sp)
$L654:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_copysign_658, @object
__pool_copysign_658:
	.align	2
$L658:
	.word	__gnu_local_gp
	.align	3
$L659:
	.word	0
	.word	0
$L660:
	.dword	-9223372036854775808
	.type	__pend_copysign_658, @object
__pend_copysign_658:
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	mips16
	.set	nomicromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$sp,56,$31		# vars= 8, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sw	$4,56($sp)
	sw	$5,64($sp)
	sw	$6,72($sp)
	sw	$7,80($sp)
	lw	$3,64($sp)
	lw	$2,80($sp)
	subu	$2,$3,$2
	lw	$3,56($sp)
	addu	$2,$3,$2
	sw	$2,44($sp)
	lw	$2,80($sp)
	bnez	$2,$L662
	lw	$2,56($sp)
	b	$L663
$L662:
	lw	$3,64($sp)
	lw	$2,80($sp)
	sltu	$3,$2
	move	$2,$24
	zeb	$2
	beqz	$2,$L664
	li	$2,0
	b	$L663
$L664:
	lw	$2,56($sp)
	sw	$2,40($sp)
	b	$L665
$L667:
	lw	$2,40($sp)
	lb	$3,0($2)
	lw	$2,72($sp)
	lb	$2,0($2)
	xor	$2,$3
	bnez	$2,$L666
	lw	$2,40($sp)
	addiu	$3,$2,1
	lw	$2,72($sp)
	addiu	$4,$2,1
	lw	$2,80($sp)
	addiu	$2,-1
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	memcmp
	.option	pic2
	bnez	$2,$L666
	lw	$2,40($sp)
	b	$L663
$L666:
	lw	$2,40($sp)
	addiu	$2,1
	sw	$2,40($sp)
$L665:
	lw	$3,40($sp)
	lw	$2,44($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L667
	li	$2,0
$L663:
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.set	mips16
	.set	nomicromips
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	move	$3,$31
	sd	$3,40($sp)
	sw	$4,48($sp)
	sw	$5,56($sp)
	sw	$6,64($sp)
	lw	$4,64($sp)
	lw	$3,56($sp)
	lw	$2,48($sp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	memcpy
	.option	pic2
	move	$3,$2
	lw	$2,64($sp)
	addu	$2,$3,$2
	ld	$7,40($sp)
	addiu	$sp,48
	jr	$7
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
	.frame	$sp,64,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$16,48($sp)
	lw	$2,$L692
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,64($sp)
	sw	$5,72($sp)
	li	$2,0
	sw	$2,44($sp)
	li	$2,0
	sw	$2,40($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L693
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L673
	ld	$3,64($sp)
	ld	$2,$L694
	xor	$2,$3
	sd	$2,64($sp)
	li	$2,1
	sw	$2,40($sp)
$L673:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L695
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L690
	b	$L677
$L678:
	lw	$2,44($sp)
	addiu	$2,1
	sw	$2,44($sp)
	lw	$2,%call16(__mips16_divdf3)($16)
	ld	$5,$L696
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,64($sp)
$L677:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L695
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L678
	b	$L679
$L690:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L697
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L679
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L693
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L679
	b	$L682
$L683:
	lw	$2,44($sp)
	addiu	$2,-1
	sw	$2,44($sp)
	ld	$3,64($sp)
	lw	$2,%call16(__mips16_adddf3)($16)
	move	$5,$3
	move	$4,$3
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,64($sp)
$L682:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L697
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L683
$L679:
	lw	$2,72($sp)
	lw	$3,44($sp)
	sw	$3,0($2)
	lw	$2,40($sp)
	beqz	$2,$L684
	ld	$3,64($sp)
	ld	$2,$L694
	xor	$2,$3
	sd	$2,64($sp)
$L684:
	ld	$2,64($sp)
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,56($sp)
	ld	$16,48($sp)
	addiu	$sp,64
	jr	$7
	.type	__pool_frexp_692, @object
__pool_frexp_692:
	.align	2
$L692:
	.word	__gnu_local_gp
	.align	3
$L693:
	.word	0
	.word	0
$L694:
	.dword	-9223372036854775808
$L695:
	.word	1072693248
	.word	0
$L696:
	.word	1073741824
	.word	0
$L697:
	.word	1071644672
	.word	0
	.type	__pend_frexp_692, @object
__pend_frexp_692:
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.set	mips16
	.set	nomicromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$4,24($sp)
	sd	$5,32($sp)
	li	$2,0
	sd	$2,8($sp)
	ld	$2,24($sp)
	sd	$2,16($sp)
	b	$L699
$L701:
	ld	$3,16($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L700
	ld	$3,8($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,8($sp)
$L700:
	ld	$2,32($sp)
	dsll	$2,$2,1
	sd	$2,32($sp)
	ld	$2,16($sp)
	dsrl	$2,1
	sd	$2,16($sp)
$L699:
	ld	$2,16($sp)
	bnez	$2,$L701
	ld	$2,8($sp)
	addiu	$sp,24
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sd	$6,32($sp)
	li	$2,1
	sw	$2,8($sp)
	li	$2,0
	sw	$2,12($sp)
	b	$L705
$L707:
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
	lw	$2,8($sp)
	sll	$2,$2,1
	sw	$2,8($sp)
$L705:
	lw	$3,24($sp)
	lw	$2,16($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L708
	lw	$2,8($sp)
	beqz	$2,$L708
	lw	$2,24($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L707
	b	$L708
$L710:
	lw	$3,16($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L709
	lw	$3,16($sp)
	lw	$2,24($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,12($sp)
	lw	$2,8($sp)
	or	$2,$3
	sw	$2,12($sp)
$L709:
	lw	$2,8($sp)
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,24($sp)
	srl	$2,$2,1
	sw	$2,24($sp)
$L708:
	lw	$2,8($sp)
	bnez	$2,$L710
	ld	$2,32($sp)
	beqz	$2,$L711
	lw	$2,16($sp)
	b	$L712
$L711:
	lw	$2,12($sp)
$L712:
	addiu	$sp,16
	jr	$31
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.set	mips16
	.set	nomicromips
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	$sp,56,$31		# vars= 8, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	lw	$2,$L719
	move	$28,$2
	sw	$2,32($sp)
	move	$3,$28
	move	$2,$4
	move	$4,$sp
	sb	$2,56($4)
	move	$2,$sp
	lb	$2,56($2)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L715
	move	$2,$sp
	lbu	$2,56($2)
	not	$2,$2
	move	$4,$sp
	sb	$2,56($4)
$L715:
	move	$2,$sp
	lb	$2,56($2)
	bnez	$2,$L716
	li	$2,7
	b	$L717
$L716:
	move	$2,$sp
	lb	$2,56($2)
	sll	$2,$2,8
	dsll	$4,$2,32
	dsrl	$4,32
	lw	$2,%call16(__clzdi2)($3)
	move	$25,$2
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	dsll	$2,$2,32
	dsrl	$2,32
	daddiu	$2,-16
	daddiu	$2,-16
	sw	$2,40($sp)
	lw	$2,40($sp)
	addiu	$2,-1
$L717:
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool___clrsbqi2_719, @object
__pool___clrsbqi2_719:
	.align	2
$L719:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_719, @object
__pend___clrsbqi2_719:
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.set	mips16
	.set	nomicromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$sp,56,$31		# vars= 8, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	lw	$2,$L725
	move	$28,$2
	sw	$2,32($sp)
	move	$3,$28
	sd	$4,56($sp)
	ld	$2,56($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L721
	ld	$2,56($sp)
	not	$2,$2
	sd	$2,56($sp)
$L721:
	ld	$2,56($sp)
	bnez	$2,$L722
	li	$2,63
	b	$L723
$L722:
	ld	$4,56($sp)
	lw	$2,%call16(__clzdi2)($3)
	move	$25,$2
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
	lw	$2,40($sp)
	addiu	$2,-1
$L723:
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool___clrsbdi2_725, @object
__pool___clrsbdi2_725:
	.align	2
$L725:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_725, @object
__pend___clrsbdi2_725:
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.set	mips16
	.set	nomicromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	li	$2,0
	sw	$2,8($sp)
	b	$L727
$L729:
	lw	$3,16($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L728
	lw	$3,8($sp)
	lw	$2,24($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
$L728:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
$L727:
	lw	$2,16($sp)
	bnez	$2,$L729
	lw	$2,8($sp)
	addiu	$sp,16
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
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-32
	sw	$4,32($sp)
	sw	$5,40($sp)
	sw	$6,48($sp)
	lw	$2,48($sp)
	srl	$2,$2,3
	sw	$2,16($sp)
	lw	$3,48($sp)
	li	$2,8
	neg	$2,$2
	and	$2,$3
	sw	$2,12($sp)
	lw	$2,32($sp)
	sw	$2,20($sp)
	lw	$2,40($sp)
	sw	$2,24($sp)
	lw	$3,20($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L733
	lw	$3,24($sp)
	lw	$2,48($sp)
	addu	$2,$3,$2
	lw	$3,20($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L740
$L733:
	li	$2,0
	sw	$2,8($sp)
	b	$L735
$L736:
	lw	$2,8($sp)
	sll	$2,$2,3
	lw	$3,40($sp)
	addu	$3,$3,$2
	lw	$2,8($sp)
	sll	$2,$2,3
	lw	$4,32($sp)
	addu	$2,$4,$2
	ld	$3,0($3)
	sd	$3,0($2)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L735:
	lw	$3,8($sp)
	lw	$2,16($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L736
	b	$L737
$L738:
	lw	$3,24($sp)
	lw	$2,12($sp)
	addu	$3,$3,$2
	lw	$4,20($sp)
	lw	$2,12($sp)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,12($sp)
	addiu	$2,1
	sw	$2,12($sp)
$L737:
	lw	$3,48($sp)
	lw	$2,12($sp)
	sltu	$2,$3
	move	$2,$24
	bnez	$2,$L738
	b	$L739
$L741:
	lw	$3,24($sp)
	lw	$2,48($sp)
	addu	$3,$3,$2
	lw	$4,20($sp)
	lw	$2,48($sp)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
$L740:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bnez	$2,$L741
	.set	noreorder
	nop
	.set	reorder
$L739:
	.set	noreorder
	nop
	.set	reorder
	addiu	$sp,32
	jr	$31
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.set	mips16
	.set	nomicromips
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sw	$4,24($sp)
	sw	$5,32($sp)
	sw	$6,40($sp)
	lw	$2,40($sp)
	srl	$2,$2,1
	sw	$2,12($sp)
	lw	$2,24($sp)
	sw	$2,16($sp)
	lw	$2,32($sp)
	sw	$2,20($sp)
	lw	$3,16($sp)
	lw	$2,20($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L744
	lw	$3,20($sp)
	lw	$2,40($sp)
	addu	$2,$3,$2
	lw	$3,16($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L750
$L744:
	li	$2,0
	sw	$2,8($sp)
	b	$L746
$L747:
	lw	$2,8($sp)
	sll	$2,$2,1
	lw	$3,32($sp)
	addu	$3,$3,$2
	lw	$2,8($sp)
	sll	$2,$2,1
	lw	$4,24($sp)
	addu	$2,$4,$2
	lh	$3,0($3)
	sh	$3,0($2)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L746:
	lw	$3,8($sp)
	lw	$2,12($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L747
	lw	$3,40($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L749
	lw	$2,40($sp)
	addiu	$2,-1
	lw	$3,20($sp)
	addu	$3,$3,$2
	lw	$2,40($sp)
	addiu	$2,-1
	lw	$4,16($sp)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	b	$L749
$L751:
	lw	$3,20($sp)
	lw	$2,40($sp)
	addu	$3,$3,$2
	lw	$4,16($sp)
	lw	$2,40($sp)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
$L750:
	lw	$2,40($sp)
	addiu	$3,$2,-1
	sw	$3,40($sp)
	bnez	$2,$L751
	.set	noreorder
	nop
	.set	reorder
$L749:
	.set	noreorder
	nop
	.set	reorder
	addiu	$sp,24
	jr	$31
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.set	mips16
	.set	nomicromips
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-32
	sw	$4,32($sp)
	sw	$5,40($sp)
	sw	$6,48($sp)
	lw	$2,48($sp)
	srl	$2,$2,2
	sw	$2,16($sp)
	lw	$3,48($sp)
	li	$2,4
	neg	$2,$2
	and	$2,$3
	sw	$2,12($sp)
	lw	$2,32($sp)
	sw	$2,20($sp)
	lw	$2,40($sp)
	sw	$2,24($sp)
	lw	$3,20($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L754
	lw	$3,24($sp)
	lw	$2,48($sp)
	addu	$2,$3,$2
	lw	$3,20($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L761
$L754:
	li	$2,0
	sw	$2,8($sp)
	b	$L756
$L757:
	lw	$2,8($sp)
	sll	$2,$2,2
	lw	$3,40($sp)
	addu	$3,$3,$2
	lw	$2,8($sp)
	sll	$2,$2,2
	lw	$4,32($sp)
	addu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L756:
	lw	$3,8($sp)
	lw	$2,16($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L757
	b	$L758
$L759:
	lw	$3,24($sp)
	lw	$2,12($sp)
	addu	$3,$3,$2
	lw	$4,20($sp)
	lw	$2,12($sp)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,12($sp)
	addiu	$2,1
	sw	$2,12($sp)
$L758:
	lw	$3,48($sp)
	lw	$2,12($sp)
	sltu	$2,$3
	move	$2,$24
	bnez	$2,$L759
	b	$L760
$L762:
	lw	$3,24($sp)
	lw	$2,48($sp)
	addu	$3,$3,$2
	lw	$4,20($sp)
	lw	$2,48($sp)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
$L761:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bnez	$2,$L762
	.set	noreorder
	nop
	.set	reorder
$L760:
	.set	noreorder
	nop
	.set	reorder
	addiu	$sp,32
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	lw	$3,0($sp)
	lw	$2,8($sp)
	div	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	jr	$31
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
	addiu	$sp,-48
	move	$3,$31
	sd	$3,40($sp)
	lw	$2,$L769
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	sw	$4,48($sp)
	lw	$2,%call16(__mips16_floatunsidf)($2)
	lw	$4,48($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,40($sp)
	addiu	$sp,48
	jr	$7
	.type	__pool___uitod_769, @object
__pool___uitod_769:
	.align	2
$L769:
	.word	__gnu_local_gp
	.type	__pend___uitod_769, @object
__pend___uitod_769:
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
	addiu	$sp,-48
	move	$3,$31
	sd	$3,40($sp)
	lw	$2,$L773
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	sw	$4,48($sp)
	lw	$2,%call16(__mips16_floatunsisf)($2)
	lw	$4,48($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,40($sp)
	addiu	$sp,48
	jr	$7
	.type	__pool___uitof_773, @object
__pool___uitof_773:
	.align	2
$L773:
	.word	__gnu_local_gp
	.type	__pend___uitof_773, @object
__pend___uitof_773:
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
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	move	$3,$18
	sd	$3,40($sp)
	lw	$2,$L777
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	sd	$4,56($sp)
	lw	$5,%got(__mips16_call_stub_df_0)($2)
	ld	$4,56($sp)
	lw	$2,%call16(__floatundidf)($2)
	jalr	$5
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$6,40($sp)
	move	$18,$6
	addiu	$sp,56
	jr	$7
	.type	__pool___ulltod_777, @object
__pool___ulltod_777:
	.align	2
$L777:
	.word	__gnu_local_gp
	.type	__pend___ulltod_777, @object
__pend___ulltod_777:
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
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	move	$3,$18
	sd	$3,40($sp)
	lw	$2,$L781
	move	$28,$2
	sw	$2,32($sp)
	move	$2,$28
	sd	$4,56($sp)
	lw	$5,%got(__mips16_call_stub_sf_0)($2)
	ld	$4,56($sp)
	lw	$2,%call16(__floatundisf)($2)
	jalr	$5
	lw	$6,32($sp)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$6,40($sp)
	move	$18,$6
	addiu	$sp,56
	jr	$7
	.type	__pool___ulltof_781, @object
__pool___ulltof_781:
	.align	2
$L781:
	.word	__gnu_local_gp
	.type	__pend___ulltof_781, @object
__pend___ulltof_781:
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	lw	$3,0($sp)
	lw	$2,8($sp)
	divu	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	jr	$31
	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.set	mips16
	.set	nomicromips
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	move	$2,$4
	move	$3,$sp
	sh	$4,16($3)
	li	$2,0
	sw	$2,8($sp)
	b	$L785
$L788:
	move	$2,$sp
	lhu	$3,16($2)
	li	$4,15
	lw	$2,8($sp)
	subu	$2,$4,$2
	sra	$3,$2
	li	$2,1
	and	$2,$3
	bnez	$2,$L790
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L785:
	lw	$2,8($sp)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L788
	b	$L787
$L790:
	.set	noreorder
	nop
	.set	reorder
$L787:
	lw	$2,8($sp)
	addiu	$sp,16
	jr	$31
	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.set	mips16
	.set	nomicromips
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	move	$2,$4
	move	$3,$sp
	sh	$4,16($3)
	li	$2,0
	sw	$2,8($sp)
	b	$L793
$L796:
	move	$2,$sp
	lhu	$3,16($2)
	lw	$2,8($sp)
	sra	$3,$2
	li	$2,1
	and	$2,$3
	bnez	$2,$L798
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L793:
	lw	$2,8($sp)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L796
	b	$L795
$L798:
	.set	noreorder
	nop
	.set	reorder
$L795:
	lw	$2,8($sp)
	addiu	$sp,16
	jr	$31
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L807
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,56($sp)
	lw	$2,%call16(__mips16_gesf2)($16)
	lw	$5,$L808
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L805
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L808
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$3,$2
	lw	$2,%call16(__mips16_fix_truncsfsi)($16)
	move	$4,$3
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$3,$2
	li	$2,32768
	addu	$2,$3,$2
	b	$L803
$L805:
	lw	$2,%call16(__mips16_fix_truncsfsi)($16)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
$L803:
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool___fixunssfsi_807, @object
__pool___fixunssfsi_807:
	.align	2
$L807:
	.word	__gnu_local_gp
$L808:
	.word	1191182336
	.type	__pend___fixunssfsi_807, @object
__pend___fixunssfsi_807:
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.set	mips16
	.set	nomicromips
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	move	$2,$4
	move	$3,$sp
	sh	$4,16($3)
	li	$2,0
	sw	$2,12($sp)
	li	$2,0
	sw	$2,8($sp)
	b	$L810
$L812:
	move	$2,$sp
	lhu	$3,16($2)
	lw	$2,8($sp)
	sra	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L811
	lw	$2,12($sp)
	addiu	$2,1
	sw	$2,12($sp)
$L811:
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L810:
	lw	$2,8($sp)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L812
	lw	$3,12($sp)
	li	$2,1
	and	$2,$3
	addiu	$sp,16
	jr	$31
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.set	mips16
	.set	nomicromips
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	move	$2,$4
	move	$3,$sp
	sh	$4,16($3)
	li	$2,0
	sw	$2,12($sp)
	li	$2,0
	sw	$2,8($sp)
	b	$L816
$L818:
	move	$2,$sp
	lhu	$3,16($2)
	lw	$2,8($sp)
	sra	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L817
	lw	$2,12($sp)
	addiu	$2,1
	sw	$2,12($sp)
$L817:
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L816:
	lw	$2,8($sp)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L818
	lw	$2,12($sp)
	addiu	$sp,16
	jr	$31
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.set	mips16
	.set	nomicromips
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	li	$2,0
	sw	$2,8($sp)
	b	$L822
$L824:
	lw	$3,16($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L823
	lw	$3,8($sp)
	lw	$2,24($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
$L823:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
$L822:
	lw	$2,16($sp)
	bnez	$2,$L824
	lw	$2,8($sp)
	addiu	$sp,16
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	li	$2,0
	sw	$2,8($sp)
	lw	$2,16($sp)
	bnez	$2,$L830
	li	$2,0
	b	$L829
$L832:
	lw	$3,24($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L831
	lw	$3,8($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
$L831:
	lw	$2,16($sp)
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,24($sp)
	srl	$2,$2,1
	sw	$2,24($sp)
$L830:
	lw	$2,24($sp)
	bnez	$2,$L832
	lw	$2,8($sp)
$L829:
	addiu	$sp,16
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	li	$2,1
	sw	$2,8($sp)
	li	$2,0
	sw	$2,12($sp)
	b	$L835
$L837:
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
	lw	$2,8($sp)
	sll	$2,$2,1
	sw	$2,8($sp)
$L835:
	lw	$3,24($sp)
	lw	$2,16($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L838
	lw	$2,8($sp)
	beqz	$2,$L838
	lw	$2,24($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L837
	b	$L838
$L840:
	lw	$3,16($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L839
	lw	$3,16($sp)
	lw	$2,24($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,12($sp)
	lw	$2,8($sp)
	or	$2,$3
	sw	$2,12($sp)
$L839:
	lw	$2,8($sp)
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,24($sp)
	srl	$2,$2,1
	sw	$2,24($sp)
$L838:
	lw	$2,8($sp)
	bnez	$2,$L840
	lw	$2,32($sp)
	beqz	$2,$L841
	lw	$2,16($sp)
	b	$L842
$L841:
	lw	$2,12($sp)
$L842:
	addiu	$sp,16
	jr	$31
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L855
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,56($sp)
	sw	$5,64($sp)
	lw	$2,%call16(__mips16_ltsf2)($16)
	lw	$5,64($sp)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L852
	li	$2,1
	neg	$2,$2
	b	$L847
$L852:
	lw	$2,%call16(__mips16_gtsf2)($16)
	lw	$5,64($sp)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L853
	li	$2,1
	b	$L847
$L853:
	li	$2,0
$L847:
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool___mspabi_cmpf_855, @object
__pool___mspabi_cmpf_855:
	.align	2
$L855:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_855, @object
__pend___mspabi_cmpf_855:
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
	.frame	$sp,56,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$16,40($sp)
	lw	$2,$L867
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	sd	$5,64($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,64($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L864
	li	$2,1
	neg	$2,$2
	b	$L859
$L864:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,64($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L865
	li	$2,1
	b	$L859
$L865:
	li	$2,0
$L859:
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool___mspabi_cmpd_867, @object
__pool___mspabi_cmpd_867:
	.align	2
$L867:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_867, @object
__pend___mspabi_cmpd_867:
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	lw	$3,0($sp)
	lw	$2,8($sp)
	dmult	$3,$2
	mflo	$2
	jr	$31
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
	sw	$4,0($sp)
	sw	$5,8($sp)
	move	$2,$sp
	lwu	$3,0($2)
	addiu	$2,$sp,8
	lwu	$2,0($2)
	dmult	$3,$2
	mflo	$2
	jr	$31
	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.set	mips16
	.set	nomicromips
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sw	$4,24($sp)
	sw	$5,32($sp)
	li	$2,0
	sw	$2,12($sp)
	li	$2,0
	sw	$2,16($sp)
	lw	$2,32($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L873
	lw	$2,32($sp)
	neg	$2,$2
	sw	$2,32($sp)
	li	$2,1
	sw	$2,12($sp)
$L873:
	li	$2,0
	move	$3,$sp
	sb	$2,8($3)
	b	$L874
$L877:
	lw	$3,32($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L875
	lw	$3,16($sp)
	lw	$2,24($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
$L875:
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
	lw	$2,32($sp)
	sra	$2,$2,1
	sw	$2,32($sp)
	move	$2,$sp
	lb	$2,8($2)
	zeb	$2
	addiu	$2,1
	zeb	$2
	move	$3,$sp
	sb	$2,8($3)
$L874:
	lw	$2,32($sp)
	beqz	$2,$L876
	move	$2,$sp
	lbu	$2,8($2)
	sltu	$2,32
	move	$2,$24
	bnez	$2,$L877
$L876:
	lw	$2,12($sp)
	beqz	$2,$L878
	lw	$2,16($sp)
	neg	$2,$2
	b	$L880
$L878:
	lw	$2,16($sp)
$L880:
	addiu	$sp,24
	jr	$31
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.set	mips16
	.set	nomicromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$sp,56,$31		# vars= 8, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sw	$4,56($sp)
	sw	$5,64($sp)
	li	$2,0
	sw	$2,40($sp)
	lw	$2,56($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L883
	lw	$2,56($sp)
	neg	$2,$2
	sw	$2,56($sp)
	lw	$2,40($sp)
	sltu	$2,1
	move	$2,$24
	zeb	$2
	sw	$2,40($sp)
$L883:
	lw	$2,64($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L884
	lw	$2,64($sp)
	neg	$2,$2
	sw	$2,64($sp)
	lw	$2,40($sp)
	sltu	$2,1
	move	$2,$24
	zeb	$2
	sw	$2,40($sp)
$L884:
	lw	$2,56($sp)
	lw	$3,64($sp)
	li	$6,0
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__udivmodsi4
	.option	pic2
	sw	$2,44($sp)
	lw	$2,40($sp)
	beqz	$2,$L885
	lw	$2,44($sp)
	neg	$2,$2
	sw	$2,44($sp)
$L885:
	lw	$2,44($sp)
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.set	mips16
	.set	nomicromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$sp,56,$31		# vars= 8, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sw	$4,56($sp)
	sw	$5,64($sp)
	li	$2,0
	sw	$2,40($sp)
	lw	$2,56($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L889
	lw	$2,56($sp)
	neg	$2,$2
	sw	$2,56($sp)
	li	$2,1
	sw	$2,40($sp)
$L889:
	lw	$2,64($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L890
	lw	$2,64($sp)
	neg	$2,$2
	sw	$2,64($sp)
$L890:
	lw	$2,56($sp)
	lw	$3,64($sp)
	li	$6,1
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__udivmodsi4
	.option	pic2
	sw	$2,44($sp)
	lw	$2,40($sp)
	beqz	$2,$L891
	lw	$2,44($sp)
	neg	$2,$2
	sw	$2,44($sp)
$L891:
	lw	$2,44($sp)
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.set	mips16
	.set	nomicromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	move	$2,$4
	move	$3,$5
	sw	$6,32($sp)
	move	$4,$sp
	sh	$2,16($4)
	move	$2,$5
	move	$3,$sp
	sh	$5,24($3)
	li	$2,1
	sh	$2,8($3)
	li	$2,0
	sh	$2,10($3)
	b	$L895
$L897:
	move	$2,$sp
	lhu	$2,24($2)
	sll	$2,$2,1
	move	$3,$sp
	sh	$2,24($3)
	move	$2,$sp
	lhu	$2,8($2)
	sll	$2,$2,1
	move	$3,$sp
	sh	$2,8($3)
$L895:
	move	$2,$sp
	lhu	$3,24($2)
	move	$2,$sp
	lhu	$2,16($2)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L898
	move	$2,$sp
	lhu	$2,8($2)
	beqz	$2,$L898
	move	$2,$sp
	lh	$2,24($2)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L897
	b	$L898
$L900:
	move	$2,$sp
	lhu	$3,16($2)
	move	$2,$sp
	lhu	$2,24($2)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L899
	move	$2,$sp
	lhu	$3,16($2)
	move	$2,$sp
	lhu	$2,24($2)
	subu	$2,$3,$2
	move	$3,$sp
	sh	$2,16($3)
	move	$2,$sp
	lhu	$2,10($2)
	move	$3,$sp
	lhu	$3,8($3)
	or	$2,$3
	move	$3,$sp
	sh	$2,10($3)
$L899:
	move	$2,$sp
	lhu	$2,8($2)
	srl	$2,$2,1
	move	$3,$sp
	sh	$2,8($3)
	move	$2,$sp
	lhu	$2,24($2)
	srl	$2,$2,1
	move	$3,$sp
	sh	$2,24($3)
$L898:
	move	$2,$sp
	lhu	$2,8($2)
	bnez	$2,$L900
	lw	$2,32($sp)
	beqz	$2,$L901
	move	$2,$sp
	lhu	$2,16($2)
	b	$L902
$L901:
	move	$2,$sp
	lhu	$2,10($2)
$L902:
	addiu	$sp,16
	jr	$31
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.set	mips16
	.set	nomicromips
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	li	$2,1
	sw	$2,8($sp)
	li	$2,0
	sw	$2,12($sp)
	b	$L905
$L907:
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
	lw	$2,8($sp)
	sll	$2,$2,1
	sw	$2,8($sp)
$L905:
	lw	$3,24($sp)
	lw	$2,16($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L908
	lw	$2,8($sp)
	beqz	$2,$L908
	lw	$2,24($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L907
	b	$L908
$L910:
	lw	$3,16($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L909
	lw	$3,16($sp)
	lw	$2,24($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,12($sp)
	lw	$2,8($sp)
	or	$2,$3
	sw	$2,12($sp)
$L909:
	lw	$2,8($sp)
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,24($sp)
	srl	$2,$2,1
	sw	$2,24($sp)
$L908:
	lw	$2,8($sp)
	bnez	$2,$L910
	lw	$2,32($sp)
	beqz	$2,$L911
	lw	$2,16($sp)
	b	$L912
$L911:
	lw	$2,12($sp)
$L912:
	addiu	$sp,16
	jr	$31
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.set	mips16
	.set	nomicromips
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$4,32($sp)
	sw	$5,40($sp)
	li	$2,32
	sw	$2,8($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	lw	$3,40($sp)
	lw	$2,8($sp)
	and	$2,$3
	beqz	$2,$L915
	li	$2,0
	sw	$2,28($sp)
	lw	$3,20($sp)
	lw	$4,40($sp)
	lw	$2,8($sp)
	subu	$2,$4,$2
	sll	$3,$2
	move	$2,$3
	sw	$2,24($sp)
	b	$L916
$L915:
	lw	$2,40($sp)
	bnez	$2,$L917
	ld	$2,32($sp)
	b	$L919
$L917:
	lw	$2,20($sp)
	lw	$3,40($sp)
	sll	$2,$3
	sw	$2,28($sp)
	lw	$2,16($sp)
	move	$3,$2
	lw	$2,40($sp)
	sll	$3,$2
	lw	$2,20($sp)
	lw	$5,8($sp)
	lw	$4,40($sp)
	subu	$4,$5,$4
	srl	$2,$4
	or	$2,$3
	sw	$2,24($sp)
$L916:
	ld	$2,24($sp)
$L919:
	addiu	$sp,32
	jr	$31
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashlti3
	.set	mips16
	.set	nomicromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$sp,48,$31		# vars= 40, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-48
	move	$2,$sp
	sd	$5,56($2)
	sd	$4,48($2)
	sw	$6,64($sp)
	li	$2,64
	sw	$2,8($sp)
	move	$2,$sp
	ld	$3,56($2)
	ld	$2,48($2)
	move	$4,$sp
	sd	$3,24($4)
	sd	$2,16($4)
	lw	$3,64($sp)
	lw	$2,8($sp)
	and	$2,$3
	beqz	$2,$L922
	li	$2,0
	sd	$2,40($sp)
	ld	$3,24($sp)
	lw	$4,64($sp)
	lw	$2,8($sp)
	subu	$2,$4,$2
	dsll	$3,$2
	move	$2,$3
	sd	$2,32($sp)
	b	$L923
$L922:
	lw	$2,64($sp)
	bnez	$2,$L924
	move	$2,$sp
	ld	$3,56($2)
	ld	$2,48($2)
	b	$L926
$L924:
	ld	$2,24($sp)
	lw	$3,64($sp)
	dsll	$2,$3
	sd	$2,40($sp)
	ld	$2,16($sp)
	move	$3,$2
	lw	$2,64($sp)
	dsll	$3,$2
	ld	$2,24($sp)
	lw	$5,8($sp)
	lw	$4,64($sp)
	subu	$4,$5,$4
	dsrl	$2,$4
	or	$2,$3
	sd	$2,32($sp)
$L923:
	move	$2,$sp
	ld	$3,40($2)
	ld	$2,32($2)
$L926:
	addiu	$sp,48
	jr	$31
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
	.globl	__ashrdi3
	.set	mips16
	.set	nomicromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$4,32($sp)
	sw	$5,40($sp)
	li	$2,32
	sw	$2,8($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	lw	$3,40($sp)
	lw	$2,8($sp)
	and	$2,$3
	beqz	$2,$L929
	lw	$2,16($sp)
	lw	$3,8($sp)
	addiu	$3,-1
	sra	$2,$3
	sw	$2,24($sp)
	lw	$3,16($sp)
	lw	$4,40($sp)
	lw	$2,8($sp)
	subu	$2,$4,$2
	sra	$3,$2
	move	$2,$3
	sw	$2,28($sp)
	b	$L930
$L929:
	lw	$2,40($sp)
	bnez	$2,$L931
	ld	$2,32($sp)
	b	$L933
$L931:
	lw	$2,16($sp)
	lw	$3,40($sp)
	sra	$2,$3
	sw	$2,24($sp)
	lw	$2,16($sp)
	move	$4,$2
	lw	$3,8($sp)
	lw	$2,40($sp)
	subu	$2,$3,$2
	move	$3,$4
	sll	$3,$2
	lw	$2,20($sp)
	lw	$4,40($sp)
	srl	$2,$4
	or	$2,$3
	sw	$2,28($sp)
$L930:
	ld	$2,24($sp)
$L933:
	addiu	$sp,32
	jr	$31
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__ashrti3
	.set	mips16
	.set	nomicromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$sp,48,$31		# vars= 40, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-48
	move	$2,$sp
	sd	$5,56($2)
	sd	$4,48($2)
	sw	$6,64($sp)
	li	$2,64
	sw	$2,8($sp)
	move	$2,$sp
	ld	$3,56($2)
	ld	$2,48($2)
	move	$4,$sp
	sd	$3,24($4)
	sd	$2,16($4)
	lw	$3,64($sp)
	lw	$2,8($sp)
	and	$2,$3
	beqz	$2,$L936
	ld	$2,16($sp)
	lw	$3,8($sp)
	addiu	$3,-1
	dsra	$2,$3
	sd	$2,32($sp)
	ld	$3,16($sp)
	lw	$4,64($sp)
	lw	$2,8($sp)
	subu	$2,$4,$2
	dsra	$3,$2
	move	$2,$3
	sd	$2,40($sp)
	b	$L937
$L936:
	lw	$2,64($sp)
	bnez	$2,$L938
	move	$2,$sp
	ld	$3,56($2)
	ld	$2,48($2)
	b	$L940
$L938:
	ld	$2,16($sp)
	lw	$3,64($sp)
	dsra	$2,$3
	sd	$2,32($sp)
	ld	$2,16($sp)
	move	$4,$2
	lw	$3,8($sp)
	lw	$2,64($sp)
	subu	$2,$3,$2
	move	$3,$4
	dsll	$3,$2
	ld	$2,24($sp)
	lw	$4,64($sp)
	dsrl	$2,$4
	or	$2,$3
	sd	$2,40($sp)
$L937:
	move	$2,$sp
	ld	$3,40($2)
	ld	$2,32($2)
$L940:
	addiu	$sp,48
	jr	$31
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
	sd	$4,0($sp)
	ld	$2,0($sp)
	dsrl	$2,56
	move	$3,$2
	ld	$2,0($sp)
	dsrl	$2,40
	move	$4,$2
	li	$2,65280
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsrl	$2,24
	move	$4,$2
	ld	$2,$L946
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsrl	$2,8
	move	$4,$2
	ld	$2,$L947
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,8
	ld	$2,$L948
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,24
	ld	$2,$L949
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,40
	ld	$2,$L950
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsll	$2,$2,56
	or	$2,$3
	jr	$31
	.type	__pool___bswapdi2_945, @object
__pool___bswapdi2_945:
	.align	2
$L945:
	.word	__gnu_local_gp
	.align	3
$L946:
	.dword	16711680
$L947:
	.dword	4278190080
$L948:
	.dword	1095216660480
$L949:
	.dword	280375465082880
$L950:
	.dword	71776119061217280
	.type	__pend___bswapdi2_945, @object
__pend___bswapdi2_945:
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
	sw	$4,0($sp)
	lw	$2,0($sp)
	srl	$3,$2,24
	lw	$2,0($sp)
	srl	$4,$2,8
	li	$2,65280
	and	$2,$4
	or	$3,$2
	lw	$2,0($sp)
	sll	$4,$2,8
	lw	$2,$L955
	and	$2,$4
	or	$3,$2
	lw	$2,0($sp)
	sll	$2,$2,24
	or	$2,$3
	jr	$31
	.type	__pool___bswapsi2_954, @object
__pool___bswapsi2_954:
	.align	2
$L954:
	.word	__gnu_local_gp
$L955:
	.word	16711680
	.type	__pend___bswapsi2_954, @object
__pend___bswapsi2_954:
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.set	mips16
	.set	nomicromips
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sw	$4,24($sp)
	lw	$2,24($sp)
	sw	$2,8($sp)
	lw	$3,8($sp)
	lw	$2,$L968
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L957
	li	$2,16
	b	$L958
$L957:
	li	$2,0
$L958:
	sw	$2,12($sp)
	li	$3,16
	lw	$2,12($sp)
	subu	$3,$3,$2
	lw	$2,8($sp)
	srl	$2,$3
	sw	$2,8($sp)
	lw	$2,12($sp)
	sw	$2,16($sp)
	lw	$3,8($sp)
	li	$2,65280
	and	$2,$3
	bnez	$2,$L959
	li	$2,8
	b	$L960
$L959:
	li	$2,0
$L960:
	sw	$2,12($sp)
	li	$3,8
	lw	$2,12($sp)
	subu	$3,$3,$2
	lw	$2,8($sp)
	srl	$2,$3
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,8($sp)
	li	$2,240
	and	$2,$3
	bnez	$2,$L961
	li	$2,4
	b	$L962
$L961:
	li	$2,0
$L962:
	sw	$2,12($sp)
	li	$3,4
	lw	$2,12($sp)
	subu	$3,$3,$2
	lw	$2,8($sp)
	srl	$2,$3
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,8($sp)
	li	$2,12
	and	$2,$3
	bnez	$2,$L963
	li	$2,2
	b	$L964
$L963:
	li	$2,0
$L964:
	sw	$2,12($sp)
	li	$3,2
	lw	$2,12($sp)
	subu	$3,$3,$2
	lw	$2,8($sp)
	srl	$2,$3
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,8($sp)
	li	$2,2
	and	$2,$3
	sltu	$2,1
	move	$2,$24
	zeb	$2
	move	$4,$2
	li	$3,2
	lw	$2,8($sp)
	subu	$2,$3,$2
	mult	$4,$2
	mflo	$3
	lw	$2,16($sp)
	addu	$2,$3,$2
	addiu	$sp,24
	jr	$31
	.type	__pool___clzsi2_967, @object
__pool___clzsi2_967:
	.align	2
$L967:
	.word	__gnu_local_gp
$L968:
	.word	65536
	.type	__pend___clzsi2_967, @object
__pend___clzsi2_967:
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__clzti2
	.set	mips16
	.set	nomicromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$sp,72,$31		# vars= 24, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	lw	$2,$L972
	move	$28,$2
	sw	$2,32($sp)
	move	$6,$28
	move	$2,$sp
	sd	$5,80($2)
	sd	$4,72($2)
	move	$2,$sp
	ld	$3,80($2)
	ld	$2,72($2)
	move	$4,$sp
	sd	$3,56($4)
	sd	$2,48($4)
	ld	$2,48($sp)
	sltu	$2,1
	move	$2,$24
	zeb	$2
	neg	$2,$2
	sd	$2,40($sp)
	ld	$3,48($sp)
	ld	$2,40($sp)
	not	$2,$2
	and	$2,$3
	move	$4,$2
	ld	$3,56($sp)
	ld	$2,40($sp)
	and	$2,$3
	move	$3,$4
	or	$3,$2
	lw	$2,%call16(__clzdi2)($6)
	move	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$3,$2
	ld	$2,40($sp)
	sll	$4,$2,0
	li	$2,64
	and	$2,$4
	addu	$2,$3,$2
	ld	$7,64($sp)
	addiu	$sp,72
	jr	$7
	.type	__pool___clzti2_972, @object
__pool___clzti2_972:
	.align	2
$L972:
	.word	__gnu_local_gp
	.type	__pend___clzti2_972, @object
__pend___clzti2_972:
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.globl	__cmpdi2
	.set	mips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$4,24($sp)
	sd	$5,32($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	lw	$3,8($sp)
	lw	$2,16($sp)
	slt	$3,$2
	move	$2,$24
	beqz	$2,$L974
	li	$2,0
	b	$L979
$L974:
	lw	$3,8($sp)
	lw	$2,16($sp)
	slt	$2,$3
	move	$2,$24
	beqz	$2,$L976
	li	$2,2
	b	$L979
$L976:
	lw	$3,12($sp)
	lw	$2,20($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L977
	li	$2,0
	b	$L979
$L977:
	lw	$3,12($sp)
	lw	$2,20($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L978
	li	$2,2
	b	$L979
$L978:
	li	$2,1
$L979:
	addiu	$sp,24
	jr	$31
	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.set	mips16
	.set	nomicromips
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	move	$3,$31
	sd	$3,40($sp)
	sd	$4,48($sp)
	sd	$5,56($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__cmpdi2
	.option	pic2
	addiu	$2,-1
	ld	$7,40($sp)
	addiu	$sp,48
	jr	$7
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__cmpti2
	.set	mips16
	.set	nomicromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$sp,40,$31		# vars= 32, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-40
	move	$2,$sp
	sd	$5,48($2)
	sd	$4,40($2)
	sd	$7,64($2)
	sd	$6,56($2)
	ld	$3,48($2)
	ld	$2,40($2)
	move	$4,$sp
	sd	$3,16($4)
	sd	$2,8($4)
	move	$2,$sp
	ld	$3,64($2)
	ld	$2,56($2)
	sd	$3,32($4)
	sd	$2,24($4)
	ld	$3,8($sp)
	ld	$2,24($sp)
	slt	$3,$2
	move	$2,$24
	beqz	$2,$L985
	li	$2,0
	b	$L990
$L985:
	ld	$3,8($sp)
	ld	$2,24($sp)
	slt	$2,$3
	move	$2,$24
	beqz	$2,$L987
	li	$2,2
	b	$L990
$L987:
	ld	$3,16($sp)
	ld	$2,32($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L988
	li	$2,0
	b	$L990
$L988:
	ld	$3,16($sp)
	ld	$2,32($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L989
	li	$2,2
	b	$L990
$L989:
	li	$2,1
$L990:
	addiu	$sp,40
	jr	$31
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
	.globl	__ctzsi2
	.set	mips16
	.set	nomicromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sw	$4,24($sp)
	lw	$2,24($sp)
	sw	$2,8($sp)
	lw	$3,8($sp)
	li	$2,65535
	and	$2,$3
	bnez	$2,$L993
	li	$2,16
	b	$L994
$L993:
	li	$2,0
$L994:
	sw	$2,12($sp)
	lw	$2,8($sp)
	lw	$3,12($sp)
	srl	$2,$3
	sw	$2,8($sp)
	lw	$2,12($sp)
	sw	$2,16($sp)
	lw	$3,8($sp)
	li	$2,255
	and	$2,$3
	bnez	$2,$L995
	li	$2,8
	b	$L996
$L995:
	li	$2,0
$L996:
	sw	$2,12($sp)
	lw	$2,8($sp)
	lw	$3,12($sp)
	srl	$2,$3
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,8($sp)
	li	$2,15
	and	$2,$3
	bnez	$2,$L997
	li	$2,4
	b	$L998
$L997:
	li	$2,0
$L998:
	sw	$2,12($sp)
	lw	$2,8($sp)
	lw	$3,12($sp)
	srl	$2,$3
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,8($sp)
	li	$2,3
	and	$2,$3
	bnez	$2,$L999
	li	$2,2
	b	$L1000
$L999:
	li	$2,0
$L1000:
	sw	$2,12($sp)
	lw	$2,8($sp)
	lw	$3,12($sp)
	srl	$2,$3
	sw	$2,8($sp)
	lw	$3,8($sp)
	li	$2,3
	and	$2,$3
	sw	$2,8($sp)
	lw	$2,12($sp)
	lw	$3,16($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,8($sp)
	not	$3,$2
	li	$2,1
	and	$3,$2
	lw	$2,8($sp)
	srl	$2,$2,1
	li	$4,2
	subu	$2,$4,$2
	neg	$3,$3
	and	$3,$2
	lw	$2,16($sp)
	addu	$2,$3,$2
	addiu	$sp,24
	jr	$31
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__ctzti2
	.set	mips16
	.set	nomicromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$sp,72,$31		# vars= 24, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	lw	$2,$L1006
	move	$28,$2
	sw	$2,32($sp)
	move	$6,$28
	move	$2,$sp
	sd	$5,80($2)
	sd	$4,72($2)
	move	$2,$sp
	ld	$3,80($2)
	ld	$2,72($2)
	move	$4,$sp
	sd	$3,56($4)
	sd	$2,48($4)
	ld	$2,56($sp)
	sltu	$2,1
	move	$2,$24
	zeb	$2
	neg	$2,$2
	sd	$2,40($sp)
	ld	$3,48($sp)
	ld	$2,40($sp)
	and	$2,$3
	move	$4,$2
	ld	$3,56($sp)
	ld	$2,40($sp)
	not	$2,$2
	and	$2,$3
	move	$3,$4
	or	$3,$2
	lw	$2,%call16(__ctzdi2)($6)
	move	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	move	$3,$2
	ld	$2,40($sp)
	sll	$4,$2,0
	li	$2,64
	and	$2,$4
	addu	$2,$3,$2
	ld	$7,64($sp)
	addiu	$sp,72
	jr	$7
	.type	__pool___ctzti2_1006, @object
__pool___ctzti2_1006:
	.align	2
$L1006:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_1006, @object
__pend___ctzti2_1006:
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.set	mips16
	.set	nomicromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,64,$31		# vars= 16, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	lw	$2,$L1013
	move	$28,$2
	sw	$2,32($sp)
	move	$6,$28
	move	$2,$sp
	sd	$5,72($2)
	sd	$4,64($2)
	ld	$3,72($2)
	ld	$2,64($2)
	move	$4,$sp
	sd	$3,48($4)
	sd	$2,40($4)
	ld	$2,48($sp)
	bnez	$2,$L1008
	ld	$2,40($sp)
	bnez	$2,$L1009
	li	$2,0
	b	$L1011
$L1009:
	ld	$2,40($sp)
	move	$3,$2
	lw	$2,%call16(__ctzdi2)($6)
	move	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	addiu	$2,65
	b	$L1011
$L1008:
	ld	$3,48($sp)
	lw	$2,%call16(__ctzdi2)($6)
	move	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	addiu	$2,1
$L1011:
	ld	$7,56($sp)
	addiu	$sp,64
	jr	$7
	.type	__pool___ffsti2_1013, @object
__pool___ffsti2_1013:
	.align	2
$L1013:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_1013, @object
__pend___ffsti2_1013:
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.globl	__lshrdi3
	.set	mips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$4,32($sp)
	sw	$5,40($sp)
	li	$2,32
	sw	$2,8($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	lw	$3,40($sp)
	lw	$2,8($sp)
	and	$2,$3
	beqz	$2,$L1015
	li	$2,0
	sw	$2,24($sp)
	lw	$2,16($sp)
	lw	$4,40($sp)
	lw	$3,8($sp)
	subu	$3,$4,$3
	srl	$2,$3
	sw	$2,28($sp)
	b	$L1016
$L1015:
	lw	$2,40($sp)
	bnez	$2,$L1017
	ld	$2,32($sp)
	b	$L1019
$L1017:
	lw	$2,16($sp)
	lw	$3,40($sp)
	srl	$2,$3
	sw	$2,24($sp)
	lw	$3,16($sp)
	lw	$4,8($sp)
	lw	$2,40($sp)
	subu	$2,$4,$2
	sll	$3,$2
	lw	$2,20($sp)
	lw	$4,40($sp)
	srl	$2,$4
	or	$2,$3
	sw	$2,28($sp)
$L1016:
	ld	$2,24($sp)
$L1019:
	addiu	$sp,32
	jr	$31
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__lshrti3
	.set	mips16
	.set	nomicromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$sp,48,$31		# vars= 40, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-48
	move	$2,$sp
	sd	$5,56($2)
	sd	$4,48($2)
	sw	$6,64($sp)
	li	$2,64
	sw	$2,8($sp)
	move	$2,$sp
	ld	$3,56($2)
	ld	$2,48($2)
	move	$4,$sp
	sd	$3,24($4)
	sd	$2,16($4)
	lw	$3,64($sp)
	lw	$2,8($sp)
	and	$2,$3
	beqz	$2,$L1022
	li	$2,0
	sd	$2,32($sp)
	ld	$2,16($sp)
	lw	$4,64($sp)
	lw	$3,8($sp)
	subu	$3,$4,$3
	dsrl	$2,$3
	sd	$2,40($sp)
	b	$L1023
$L1022:
	lw	$2,64($sp)
	bnez	$2,$L1024
	move	$2,$sp
	ld	$3,56($2)
	ld	$2,48($2)
	b	$L1026
$L1024:
	ld	$2,16($sp)
	lw	$3,64($sp)
	dsrl	$2,$3
	sd	$2,32($sp)
	ld	$3,16($sp)
	lw	$4,8($sp)
	lw	$2,64($sp)
	subu	$2,$4,$2
	dsll	$3,$2
	ld	$2,24($sp)
	lw	$4,64($sp)
	dsrl	$2,$4
	or	$2,$3
	sd	$2,40($sp)
$L1023:
	move	$2,$sp
	ld	$3,40($2)
	ld	$2,32($2)
$L1026:
	addiu	$sp,48
	jr	$31
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.globl	__muldsi3
	.set	mips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-32
	sw	$4,32($sp)
	sw	$5,40($sp)
	li	$2,16
	sw	$2,8($sp)
	li	$2,1
	neg	$2,$2
	lw	$3,8($sp)
	srl	$2,$3
	sw	$2,12($sp)
	lw	$3,32($sp)
	lw	$2,12($sp)
	and	$3,$2
	lw	$4,40($sp)
	lw	$2,12($sp)
	and	$2,$4
	mult	$3,$2
	mflo	$2
	sw	$2,28($sp)
	lw	$2,28($sp)
	lw	$3,8($sp)
	srl	$2,$3
	sw	$2,16($sp)
	lw	$3,28($sp)
	lw	$2,12($sp)
	and	$2,$3
	sw	$2,28($sp)
	lw	$3,32($sp)
	lw	$2,8($sp)
	srl	$3,$2
	lw	$4,40($sp)
	lw	$2,12($sp)
	and	$2,$4
	mult	$3,$2
	mflo	$2
	lw	$3,16($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,28($sp)
	lw	$4,16($sp)
	lw	$2,12($sp)
	and	$2,$4
	lw	$4,8($sp)
	sll	$2,$4
	addu	$2,$3,$2
	sw	$2,28($sp)
	lw	$3,16($sp)
	lw	$2,8($sp)
	srl	$3,$2
	move	$2,$3
	sw	$2,24($sp)
	lw	$2,28($sp)
	lw	$3,8($sp)
	srl	$2,$3
	sw	$2,16($sp)
	lw	$3,28($sp)
	lw	$2,12($sp)
	and	$2,$3
	sw	$2,28($sp)
	lw	$3,40($sp)
	lw	$2,8($sp)
	srl	$3,$2
	lw	$4,32($sp)
	lw	$2,12($sp)
	and	$2,$4
	mult	$3,$2
	mflo	$2
	lw	$3,16($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,28($sp)
	lw	$4,16($sp)
	lw	$2,12($sp)
	and	$2,$4
	lw	$4,8($sp)
	sll	$2,$4
	addu	$2,$3,$2
	sw	$2,28($sp)
	lw	$2,24($sp)
	move	$4,$2
	lw	$2,16($sp)
	lw	$3,8($sp)
	srl	$2,$3
	addu	$2,$4,$2
	sw	$2,24($sp)
	lw	$2,24($sp)
	move	$5,$2
	lw	$3,32($sp)
	lw	$2,8($sp)
	srl	$3,$2
	lw	$2,40($sp)
	lw	$4,8($sp)
	srl	$2,$4
	mult	$3,$2
	mflo	$2
	addu	$2,$5,$2
	sw	$2,24($sp)
	ld	$2,24($sp)
	addiu	$sp,32
	jr	$31
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.set	mips16
	.set	nomicromips
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	$sp,72,$31		# vars= 24, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$4,72($sp)
	sd	$5,80($sp)
	ld	$2,72($sp)
	sd	$2,40($sp)
	ld	$2,80($sp)
	sd	$2,48($sp)
	lw	$2,44($sp)
	lw	$3,52($sp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__muldsi3
	.option	pic2
	sd	$2,56($sp)
	lw	$2,56($sp)
	move	$4,$2
	lw	$2,40($sp)
	move	$3,$2
	lw	$2,52($sp)
	mult	$3,$2
	mflo	$3
	lw	$2,44($sp)
	lw	$5,48($sp)
	mult	$2,$5
	mflo	$2
	addu	$2,$3,$2
	addu	$2,$4,$2
	sw	$2,56($sp)
	ld	$2,56($sp)
	ld	$7,64($sp)
	addiu	$sp,72
	jr	$7
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__mulddi3
	.set	mips16
	.set	nomicromips
	.ent	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.frame	$sp,48,$31		# vars= 40, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$4,48($sp)
	sd	$5,56($sp)
	li	$2,32
	sw	$2,8($sp)
	li	$2,1
	neg	$2,$2
	lw	$3,8($sp)
	dsrl	$2,$3
	sd	$2,16($sp)
	ld	$3,48($sp)
	ld	$2,16($sp)
	and	$3,$2
	ld	$4,56($sp)
	ld	$2,16($sp)
	and	$2,$4
	dmult	$3,$2
	mflo	$2
	sd	$2,40($sp)
	ld	$2,40($sp)
	lw	$3,8($sp)
	dsrl	$2,$3
	sd	$2,24($sp)
	ld	$3,40($sp)
	ld	$2,16($sp)
	and	$2,$3
	sd	$2,40($sp)
	ld	$3,48($sp)
	lw	$2,8($sp)
	dsrl	$3,$2
	ld	$4,56($sp)
	ld	$2,16($sp)
	and	$2,$4
	dmult	$3,$2
	mflo	$2
	ld	$3,24($sp)
	daddu	$2,$3,$2
	sd	$2,24($sp)
	ld	$3,40($sp)
	ld	$4,24($sp)
	ld	$2,16($sp)
	and	$2,$4
	lw	$4,8($sp)
	dsll	$2,$4
	daddu	$2,$3,$2
	sd	$2,40($sp)
	ld	$3,24($sp)
	lw	$2,8($sp)
	dsrl	$3,$2
	move	$2,$3
	sd	$2,32($sp)
	ld	$2,40($sp)
	lw	$3,8($sp)
	dsrl	$2,$3
	sd	$2,24($sp)
	ld	$3,40($sp)
	ld	$2,16($sp)
	and	$2,$3
	sd	$2,40($sp)
	ld	$3,56($sp)
	lw	$2,8($sp)
	dsrl	$3,$2
	ld	$4,48($sp)
	ld	$2,16($sp)
	and	$2,$4
	dmult	$3,$2
	mflo	$2
	ld	$3,24($sp)
	daddu	$2,$3,$2
	sd	$2,24($sp)
	ld	$3,40($sp)
	ld	$4,24($sp)
	ld	$2,16($sp)
	and	$2,$4
	lw	$4,8($sp)
	dsll	$2,$4
	daddu	$2,$3,$2
	sd	$2,40($sp)
	ld	$2,32($sp)
	move	$4,$2
	ld	$2,24($sp)
	lw	$3,8($sp)
	dsrl	$2,$3
	daddu	$2,$4,$2
	sd	$2,32($sp)
	ld	$2,32($sp)
	move	$5,$2
	ld	$3,48($sp)
	lw	$2,8($sp)
	dsrl	$3,$2
	ld	$2,56($sp)
	lw	$4,8($sp)
	dsrl	$2,$4
	dmult	$3,$2
	mflo	$2
	daddu	$2,$5,$2
	sd	$2,32($sp)
	move	$2,$sp
	ld	$3,40($2)
	ld	$2,32($2)
	addiu	$sp,48
	jr	$31
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.globl	__multi3
	.set	mips16
	.set	nomicromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$sp,96,$31		# vars= 48, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-96
	move	$3,$31
	sd	$3,88($sp)
	move	$2,$sp
	sd	$5,104($2)
	sd	$4,96($2)
	move	$2,$sp
	sd	$7,120($2)
	sd	$6,112($2)
	move	$2,$sp
	ld	$3,104($2)
	ld	$2,96($2)
	move	$4,$sp
	sd	$3,48($4)
	sd	$2,40($4)
	move	$2,$sp
	ld	$3,120($2)
	ld	$2,112($2)
	move	$4,$sp
	sd	$3,64($4)
	sd	$2,56($4)
	ld	$2,48($sp)
	ld	$3,64($sp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__mulddi3
	.option	pic2
	move	$4,$sp
	sd	$3,80($4)
	sd	$2,72($4)
	ld	$2,72($sp)
	move	$4,$2
	ld	$2,40($sp)
	move	$3,$2
	ld	$2,64($sp)
	dmult	$3,$2
	mflo	$3
	ld	$2,48($sp)
	ld	$5,56($sp)
	dmult	$2,$5
	mflo	$2
	daddu	$2,$3,$2
	daddu	$2,$4,$2
	sd	$2,72($sp)
	move	$2,$sp
	ld	$3,80($2)
	ld	$2,72($2)
	ld	$7,88($sp)
	addiu	$sp,96
	jr	$7
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
	sd	$4,0($sp)
	ld	$2,0($sp)
	li	$3,0
	dsubu	$2,$3,$2
	jr	$31
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__negti2
	.set	mips16
	.set	nomicromips
	.ent	__negti2
	.type	__negti2, @function
__negti2:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$16,0($sp)
	move	$2,$sp
	sd	$5,16($2)
	sd	$4,8($2)
	move	$2,$sp
	ld	$7,16($2)
	ld	$6,8($2)
	li	$5,0
	li	$4,0
	dsubu	$3,$5,$7
	sltu	$5,$3
	move	$16,$24
	dsll	$16,$16,32
	dsrl	$16,32
	dsubu	$2,$4,$6
	dsubu	$4,$2,$16
	move	$2,$4
	ld	$16,0($sp)
	addiu	$sp,8
	jr	$31
	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
	.globl	__paritydi2
	.set	mips16
	.set	nomicromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$4,24($sp)
	ld	$2,24($sp)
	sd	$2,16($sp)
	lw	$2,16($sp)
	move	$3,$2
	lw	$2,20($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,4
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$3,8($sp)
	li	$2,15
	and	$2,$3
	li	$3,27030
	sra	$3,$2
	li	$2,1
	and	$2,$3
	addiu	$sp,24
	jr	$31
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__parityti2
	.set	mips16
	.set	nomicromips
	.ent	__parityti2
	.type	__parityti2, @function
__parityti2:
	.frame	$sp,40,$31		# vars= 32, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-40
	move	$2,$sp
	sd	$5,48($2)
	sd	$4,40($2)
	move	$2,$sp
	ld	$3,48($2)
	ld	$2,40($2)
	move	$4,$sp
	sd	$3,24($4)
	sd	$2,16($4)
	ld	$2,16($sp)
	move	$3,$2
	ld	$2,24($sp)
	xor	$2,$3
	sd	$2,32($sp)
	lw	$2,32($sp)
	move	$3,$2
	lw	$2,36($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,4
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$3,8($sp)
	li	$2,15
	and	$2,$3
	li	$3,27030
	sra	$3,$2
	li	$2,1
	and	$2,$3
	addiu	$sp,40
	jr	$31
	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.globl	__paritysi2
	.set	mips16
	.set	nomicromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,4
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$3,8($sp)
	li	$2,15
	and	$2,$3
	li	$3,27030
	sra	$3,$2
	li	$2,1
	and	$2,$3
	addiu	$sp,16
	jr	$31
	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.set	mips16
	.set	nomicromips
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$4,24($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$2,8($sp)
	dsrl	$2,1
	move	$3,$2
	ld	$2,$L1058
	and	$2,$3
	ld	$3,8($sp)
	dsubu	$2,$3,$2
	sd	$2,8($sp)
	ld	$2,8($sp)
	dsrl	$2,2
	move	$3,$2
	ld	$2,$L1059
	and	$3,$2
	ld	$4,8($sp)
	ld	$2,$L1059
	and	$2,$4
	daddu	$2,$3,$2
	sd	$2,8($sp)
	ld	$2,8($sp)
	dsrl	$2,4
	move	$3,$2
	ld	$2,8($sp)
	daddu	$3,$3,$2
	ld	$2,$L1060
	and	$2,$3
	sd	$2,8($sp)
	ld	$2,8($sp)
	sll	$3,$2,0
	ld	$2,8($sp)
	dsrl	$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,16($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,16($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,16($sp)
	srl	$3,$2,8
	lw	$2,16($sp)
	addu	$2,$3,$2
	move	$3,$2
	li	$2,127
	and	$2,$3
	addiu	$sp,24
	jr	$31
	.type	__pool___popcountdi2_1057, @object
__pool___popcountdi2_1057:
	.align	2
$L1057:
	.word	__gnu_local_gp
	.align	3
$L1058:
	.dword	6148914691236517205
$L1059:
	.dword	3689348814741910323
$L1060:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1057, @object
__pend___popcountdi2_1057:
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.set	mips16
	.set	nomicromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	lw	$2,16($sp)
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$3,$2,1
	lw	$2,$L1065
	and	$2,$3
	lw	$3,8($sp)
	subu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$3,$2,2
	lw	$2,$L1066
	and	$3,$2
	lw	$4,8($sp)
	lw	$2,$L1066
	and	$2,$4
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$3,$2,4
	lw	$2,8($sp)
	addu	$3,$3,$2
	lw	$2,$L1067
	and	$2,$3
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$3,$2,8
	lw	$2,8($sp)
	addu	$2,$3,$2
	move	$3,$2
	li	$2,63
	and	$2,$3
	addiu	$sp,16
	jr	$31
	.type	__pool___popcountsi2_1064, @object
__pool___popcountsi2_1064:
	.align	2
$L1064:
	.word	__gnu_local_gp
$L1065:
	.word	1431655765
$L1066:
	.word	858993459
$L1067:
	.word	252645135
	.type	__pend___popcountsi2_1064, @object
__pend___popcountsi2_1064:
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.set	mips16
	.set	nomicromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$sp,152,$31		# vars= 128, regs= 2/0, args= 0, gp= 8
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-152
	sd	$17,144($sp)
	sd	$16,136($sp)
	addiu	$6,$sp,96
	sd	$5,64($6)
	sd	$4,56($6)
	addiu	$4,$sp,96
	ld	$5,64($4)
	ld	$4,56($4)
	move	$6,$sp
	sd	$5,16($6)
	sd	$4,8($6)
	ld	$4,8($sp)
	dsll	$4,$4,63
	ld	$5,16($sp)
	dsrl	$5,1
	move	$17,$5
	move	$5,$17
	or	$4,$5
	move	$17,$4
	ld	$4,8($sp)
	dsrl	$4,1
	move	$16,$4
	ld	$4,$L1072
	move	$7,$17
	move	$6,$16
	move	$5,$6
	and	$4,$5
	sd	$4,56($sp)
	ld	$4,$L1072
	move	$5,$7
	and	$5,$4
	sd	$5,64($sp)
	move	$4,$sp
	ld	$5,16($4)
	ld	$4,8($4)
	move	$17,$5
	move	$16,$4
	move	$6,$sp
	sd	$17,128($6)
	sd	$16,120($6)
	ld	$6,128($sp)
	move	$7,$sp
	ld	$17,64($7)
	ld	$16,56($7)
	move	$9,$17
	move	$8,$16
	move	$7,$9
	dsubu	$5,$6,$7
	move	$6,$sp
	ld	$17,128($6)
	ld	$16,120($6)
	move	$6,$17
	sltu	$6,$5
	move	$6,$24
	dsll	$6,$6,32
	dsrl	$6,32
	move	$7,$16
	move	$16,$8
	dsubu	$4,$7,$16
	dsubu	$6,$4,$6
	move	$4,$6
	move	$6,$sp
	sd	$5,16($6)
	sd	$4,8($6)
	ld	$4,8($sp)
	dsll	$4,$4,62
	ld	$5,16($sp)
	dsrl	$5,2
	sd	$5,48($sp)
	ld	$5,48($sp)
	or	$4,$5
	sd	$4,48($sp)
	ld	$4,8($sp)
	dsrl	$4,2
	sd	$4,40($sp)
	ld	$4,$L1073
	move	$5,$sp
	ld	$7,48($5)
	ld	$6,40($5)
	move	$5,$6
	and	$4,$5
	sd	$4,72($sp)
	ld	$4,$L1073
	move	$5,$7
	and	$5,$4
	sd	$5,80($sp)
	ld	$5,8($sp)
	ld	$4,$L1073
	and	$5,$4
	sd	$5,88($sp)
	ld	$5,16($sp)
	ld	$4,$L1073
	and	$5,$4
	sd	$5,96($sp)
	move	$6,$sp
	ld	$7,96($6)
	ld	$6,88($6)
	move	$9,$7
	move	$8,$6
	move	$6,$9
	move	$7,$sp
	ld	$17,80($7)
	ld	$16,72($7)
	move	$7,$17
	daddu	$5,$7,$6
	move	$11,$17
	move	$10,$16
	move	$6,$11
	sltu	$5,$6
	move	$6,$24
	dsll	$16,$6,32
	dsrl	$16,32
	move	$6,$8
	move	$7,$10
	daddu	$4,$7,$6
	daddu	$6,$16,$4
	move	$4,$6
	move	$6,$sp
	sd	$5,16($6)
	sd	$4,8($6)
	ld	$4,8($sp)
	dsll	$4,$4,60
	ld	$5,16($sp)
	dsrl	$5,4
	move	$3,$5
	move	$5,$3
	or	$4,$5
	move	$3,$4
	ld	$4,8($sp)
	dsrl	$4,4
	move	$2,$4
	move	$4,$sp
	ld	$7,16($4)
	ld	$6,8($4)
	daddu	$5,$3,$7
	sltu	$5,$3
	move	$16,$24
	dsll	$16,$16,32
	dsrl	$16,32
	daddu	$4,$2,$6
	daddu	$2,$16,$4
	move	$4,$2
	move	$3,$5
	move	$2,$4
	ld	$4,$L1074
	and	$4,$2
	sd	$4,8($sp)
	ld	$4,$L1074
	move	$2,$3
	and	$2,$4
	sd	$2,16($sp)
	ld	$2,16($sp)
	ld	$3,8($sp)
	dsrl	$3,0
	sd	$3,112($sp)
	li	$3,0
	sd	$3,104($sp)
	ld	$3,112($sp)
	daddu	$2,$2,$3
	sd	$2,24($sp)
	ld	$2,24($sp)
	sll	$3,$2,0
	ld	$2,24($sp)
	dsrl	$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,32($sp)
	lw	$2,32($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,32($sp)
	addu	$2,$3,$2
	sw	$2,32($sp)
	lw	$2,32($sp)
	srl	$3,$2,8
	lw	$2,32($sp)
	addu	$2,$3,$2
	move	$3,$2
	li	$2,255
	and	$2,$3
	ld	$17,144($sp)
	ld	$16,136($sp)
	addiu	$sp,152
	jr	$31
	.type	__pool___popcountti2_1071, @object
__pool___popcountti2_1071:
	.align	2
$L1071:
	.word	__gnu_local_gp
	.align	3
$L1072:
	.dword	6148914691236517205
$L1073:
	.dword	3689348814741910323
$L1074:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1071, @object
__pend___popcountti2_1071:
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
	.frame	$sp,72,$31		# vars= 16, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$16,56($sp)
	lw	$2,$L1086
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,72($sp)
	sw	$5,80($sp)
	lw	$2,80($sp)
	srl	$2,$2,31
	zeb	$2
	sw	$2,48($sp)
	ld	$2,$L1087
	sd	$2,40($sp)
$L1079:
	lw	$3,80($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L1076
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,72($sp)
	ld	$4,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
$L1076:
	lw	$2,80($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,80($sp)
	lw	$2,80($sp)
	beqz	$2,$L1084
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,72($sp)
	ld	$4,72($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
	b	$L1079
$L1084:
	.set	noreorder
	nop
	.set	reorder
	lw	$2,48($sp)
	beqz	$2,$L1080
	lw	$2,%call16(__mips16_divdf3)($16)
	ld	$5,40($sp)
	ld	$4,$L1087
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	b	$L1082
$L1080:
	ld	$2,40($sp)
$L1082:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$16,56($sp)
	addiu	$sp,72
	jr	$7
	.type	__pool___powidf2_1086, @object
__pool___powidf2_1086:
	.align	2
$L1086:
	.word	__gnu_local_gp
	.align	3
$L1087:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_1086, @object
__pend___powidf2_1086:
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
	.frame	$sp,64,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80010000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$16,48($sp)
	lw	$2,$L1099
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,64($sp)
	sw	$5,72($sp)
	lw	$2,72($sp)
	srl	$2,$2,31
	zeb	$2
	sw	$2,44($sp)
	lw	$2,$L1100
	sw	$2,40($sp)
$L1092:
	lw	$3,72($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L1089
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,64($sp)
	lw	$4,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
$L1089:
	lw	$2,72($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,72($sp)
	lw	$2,72($sp)
	beqz	$2,$L1097
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,64($sp)
	lw	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sw	$2,64($sp)
	b	$L1092
$L1097:
	.set	noreorder
	nop
	.set	reorder
	lw	$2,44($sp)
	beqz	$2,$L1093
	lw	$2,%call16(__mips16_divsf3)($16)
	lw	$5,40($sp)
	lw	$4,$L1100
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	b	$L1095
$L1093:
	lw	$2,40($sp)
$L1095:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,56($sp)
	ld	$16,48($sp)
	addiu	$sp,64
	jr	$7
	.type	__pool___powisf2_1099, @object
__pool___powisf2_1099:
	.align	2
$L1099:
	.word	__gnu_local_gp
$L1100:
	.word	1065353216
	.type	__pend___powisf2_1099, @object
__pend___powisf2_1099:
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.set	mips16
	.set	nomicromips
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$4,24($sp)
	sd	$5,32($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	lw	$3,8($sp)
	lw	$2,16($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L1102
	li	$2,0
	b	$L1107
$L1102:
	lw	$3,8($sp)
	lw	$2,16($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L1104
	li	$2,2
	b	$L1107
$L1104:
	lw	$3,12($sp)
	lw	$2,20($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L1105
	li	$2,0
	b	$L1107
$L1105:
	lw	$3,12($sp)
	lw	$2,20($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L1106
	li	$2,2
	b	$L1107
$L1106:
	li	$2,1
$L1107:
	addiu	$sp,24
	jr	$31
	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.set	mips16
	.set	nomicromips
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	$sp,48,$31		# vars= 0, regs= 1/0, args= 32, gp= 8
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	move	$3,$31
	sd	$3,40($sp)
	sd	$4,48($sp)
	sd	$5,56($sp)
	ld	$2,48($sp)
	ld	$3,56($sp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__ucmpdi2
	.option	pic2
	addiu	$2,-1
	ld	$7,40($sp)
	addiu	$sp,48
	jr	$7
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.globl	__ucmpti2
	.set	mips16
	.set	nomicromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$sp,40,$31		# vars= 32, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-40
	move	$2,$sp
	sd	$5,48($2)
	sd	$4,40($2)
	sd	$7,64($2)
	sd	$6,56($2)
	ld	$3,48($2)
	ld	$2,40($2)
	move	$4,$sp
	sd	$3,16($4)
	sd	$2,8($4)
	move	$2,$sp
	ld	$3,64($2)
	ld	$2,56($2)
	sd	$3,32($4)
	sd	$2,24($4)
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L1113
	li	$2,0
	b	$L1118
$L1113:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L1115
	li	$2,2
	b	$L1118
$L1115:
	ld	$3,16($sp)
	ld	$2,32($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L1116
	li	$2,0
	b	$L1118
$L1116:
	ld	$3,16($sp)
	ld	$2,32($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L1117
	li	$2,2
	b	$L1118
$L1117:
	li	$2,1
$L1118:
	addiu	$sp,40
	jr	$31
	.end	__ucmpti2
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.globl	__mips16_divsf3
	.globl	__ctzdi2
	.globl	__mips16_fix_truncsfsi
	.globl	__mips16_gesf2
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__mips16_floatunsisf
	.globl	__mips16_floatunsidf
	.globl	__clzdi2
	.globl	__mips16_divdf3
	.globl	__mips16_gedf2
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
