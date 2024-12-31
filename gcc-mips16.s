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
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sw	$4,24($sp)
	sw	$5,32($sp)
	sw	$6,40($sp)
	lw	$3,32($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L8
	lw	$3,32($sp)
	lw	$2,40($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,24($sp)
	lw	$2,40($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	b	$L9
$L10:
	lw	$2,16($sp)
	addiu	$2,-1
	sw	$2,16($sp)
	lw	$2,8($sp)
	addiu	$2,-1
	sw	$2,8($sp)
	lw	$2,16($sp)
	lb	$3,0($2)
	lw	$2,8($sp)
	sb	$3,0($2)
	lw	$2,40($sp)
	addiu	$2,-1
	sw	$2,40($sp)
$L9:
	lw	$2,40($sp)
	bnez	$2,$L10
	b	$L11
$L8:
	lw	$3,32($sp)
	lw	$2,24($sp)
	xor	$2,$3
	beqz	$2,$L11
	lw	$2,24($sp)
	sw	$2,12($sp)
	b	$L12
$L13:
	lw	$3,32($sp)
	addiu	$2,$3,1
	sw	$2,32($sp)
	lw	$2,12($sp)
	addiu	$4,$2,1
	sw	$4,12($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,40($sp)
	addiu	$2,-1
	sw	$2,40($sp)
$L12:
	lw	$2,40($sp)
	bnez	$2,$L13
$L11:
	lw	$2,24($sp)
	addiu	$sp,24
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
	lw	$2,32($sp)
	zeb	$2
	sw	$2,8($sp)
	b	$L17
$L19:
	lw	$2,40($sp)
	addiu	$2,-1
	sw	$2,40($sp)
	lw	$2,24($sp)
	addiu	$2,1
	sw	$2,24($sp)
	lw	$2,16($sp)
	addiu	$2,1
	sw	$2,16($sp)
$L17:
	lw	$2,40($sp)
	beqz	$2,$L18
	lw	$2,24($sp)
	lbu	$3,0($2)
	lw	$2,16($sp)
	sb	$3,0($2)
	lw	$2,16($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,8($sp)
	xor	$2,$3
	bnez	$2,$L19
$L18:
	lw	$2,40($sp)
	beqz	$2,$L20
	lw	$2,16($sp)
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
	lw	$2,24($sp)
	zeb	$2
	sw	$2,8($sp)
	b	$L24
$L26:
	lw	$2,16($sp)
	addiu	$2,1
	sw	$2,16($sp)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L24:
	lw	$2,32($sp)
	beqz	$2,$L25
	lw	$2,16($sp)
	lbu	$2,0($2)
	lw	$3,8($sp)
	xor	$2,$3
	bnez	$2,$L26
$L25:
	lw	$2,32($sp)
	beqz	$2,$L27
	lw	$2,16($sp)
	b	$L29
$L27:
	li	$2,0
$L29:
	.set	noreorder
	nop
	.set	reorder
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sw	$4,0($sp)
	sw	$5,8($sp)
	sw	$6,16($sp)
	b	$L32
$L34:
	lw	$2,16($sp)
	addiu	$2,-1
	sw	$2,16($sp)
	lw	$2,0($sp)
	addiu	$2,1
	sw	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L32:
	lw	$2,16($sp)
	beqz	$2,$L33
	lw	$2,0($sp)
	lbu	$3,0($2)
	lw	$2,8($sp)
	lbu	$2,0($2)
	xor	$2,$3
	beqz	$2,$L34
$L33:
	lw	$2,16($sp)
	beqz	$2,$L35
	lw	$2,0($sp)
	lbu	$3,0($2)
	lw	$2,8($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
	b	$L37
$L35:
	li	$2,0
$L37:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L39
$L40:
	lw	$3,24($sp)
	addiu	$2,$3,1
	sw	$2,24($sp)
	lw	$2,8($sp)
	addiu	$4,$2,1
	sw	$4,8($sp)
	lbu	$3,0($3)
	sb	$3,0($2)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L39:
	lw	$2,32($sp)
	bnez	$2,$L40
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
	lw	$2,24($sp)
	zeb	$2
	sw	$2,8($sp)
	b	$L44
$L46:
	lw	$3,16($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	lw	$3,8($sp)
	xor	$2,$3
	bnez	$2,$L44
	lw	$3,16($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	b	$L45
$L44:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L46
	li	$2,0
$L45:
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
	b	$L49
$L50:
	lw	$2,8($sp)
	lw	$3,24($sp)
	sb	$3,0($2)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L49:
	lw	$2,32($sp)
	bnez	$2,$L50
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
	b	$L54
$L55:
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
	lw	$2,0($sp)
	addiu	$2,1
	sw	$2,0($sp)
$L54:
	lw	$2,8($sp)
	lb	$3,0($2)
	lw	$2,0($sp)
	sb	$3,0($2)
	lw	$2,0($sp)
	lb	$2,0($2)
	bnez	$2,$L55
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	lw	$2,24($sp)
	zeb	$2
	sw	$2,8($sp)
	b	$L58
$L60:
	lw	$2,16($sp)
	addiu	$2,1
	sw	$2,16($sp)
$L58:
	lw	$2,16($sp)
	lb	$2,0($2)
	beqz	$2,$L59
	lw	$2,16($sp)
	lbu	$2,0($2)
	lw	$3,8($sp)
	xor	$2,$3
	bnez	$2,$L60
$L59:
	lw	$2,16($sp)
	addiu	$sp,16
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
	lw	$4,8($sp)
	xor	$3,$4
	beqz	$3,$L67
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	bnez	$3,$L66
	li	$2,0
	jr	$31
$L67:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L69
$L71:
	lw	$2,0($sp)
	addiu	$2,1
	sw	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L69:
	lw	$2,0($sp)
	lb	$3,0($2)
	lw	$2,8($sp)
	lb	$2,0($2)
	xor	$2,$3
	bnez	$2,$L70
	lw	$2,0($sp)
	lb	$2,0($2)
	bnez	$2,$L71
$L70:
	lw	$2,0($sp)
	lbu	$3,0($2)
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
	b	$L74
$L75:
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L74:
	lw	$2,8($sp)
	lb	$2,0($2)
	bnez	$2,$L75
	lw	$3,8($sp)
	lw	$2,16($sp)
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
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,8($sp)
	bnez	$2,$L81
	li	$2,0
	b	$L80
$L83:
	lw	$2,16($sp)
	addiu	$2,1
	sw	$2,16($sp)
	lw	$2,24($sp)
	addiu	$2,1
	sw	$2,24($sp)
	lw	$2,8($sp)
	addiu	$2,-1
	sw	$2,8($sp)
$L81:
	lw	$2,16($sp)
	lbu	$2,0($2)
	beqz	$2,$L82
	lw	$2,24($sp)
	lbu	$2,0($2)
	beqz	$2,$L82
	lw	$2,8($sp)
	beqz	$2,$L82
	lw	$2,16($sp)
	lbu	$3,0($2)
	lw	$2,24($sp)
	lbu	$2,0($2)
	xor	$2,$3
	beqz	$2,$L83
$L82:
	lw	$2,16($sp)
	lbu	$3,0($2)
	lw	$2,24($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
$L80:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sw	$4,0($sp)
	sw	$5,8($sp)
	sw	$6,16($sp)
	b	$L86
$L87:
	lw	$2,0($sp)
	lb	$3,1($2)
	lw	$2,8($sp)
	sb	$3,0($2)
	lw	$2,8($sp)
	addiu	$2,1
	lw	$3,0($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,8($sp)
	addiu	$2,2
	sw	$2,8($sp)
	lw	$2,0($sp)
	addiu	$2,2
	sw	$2,0($sp)
	lw	$2,16($sp)
	addiu	$2,-2
	sw	$2,16($sp)
$L86:
	lw	$2,16($sp)
	slt	$2,2
	move	$2,$24
	beqz	$2,$L87
	.set	noreorder
	nop
	.set	reorder
	.set	noreorder
	nop
	.set	reorder
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
	b	$L96
$L94:
	li	$2,0
$L96:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L101
$L99:
	li	$2,0
$L101:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L114
$L112:
	li	$2,0
$L114:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L121
$L119:
	li	$2,0
$L121:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L138
$L136:
	li	$2,0
$L138:
	.set	noreorder
	nop
	.set	reorder
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sw	$4,0($sp)
	sw	$5,8($sp)
	lw	$2,8($sp)
	bnez	$2,$L315
	lw	$2,0($sp)
	li	$3,0
	sw	$3,4($2)
	lw	$2,0($sp)
	lw	$3,4($2)
	lw	$2,0($sp)
	sw	$3,0($2)
	jr	$31
$L315:
	lw	$2,8($sp)
	lw	$3,0($2)
	lw	$2,0($sp)
	sw	$3,0($2)
	lw	$2,0($sp)
	lw	$3,8($sp)
	sw	$3,4($2)
	lw	$2,8($sp)
	lw	$3,0($sp)
	sw	$3,0($2)
	lw	$2,0($sp)
	lw	$2,0($2)
	beqz	$2,$L314
	lw	$2,0($sp)
	lw	$2,0($2)
	lw	$3,0($sp)
	sw	$3,4($2)
$L314:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sw	$4,0($sp)
	lw	$2,0($sp)
	lw	$2,0($2)
	beqz	$2,$L318
	lw	$2,0($sp)
	lw	$2,0($2)
	lw	$3,0($sp)
	lw	$3,4($3)
	sw	$3,4($2)
$L318:
	lw	$2,0($sp)
	lw	$2,4($2)
	beqz	$2,$L320
	lw	$2,0($sp)
	lw	$2,4($2)
	lw	$3,0($sp)
	lw	$3,0($3)
	sw	$3,0($2)
$L320:
	.set	noreorder
	nop
	.set	reorder
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
	addiu	$2,$16,-1
	sw	$2,44($sp)
	lw	$2,88($sp)
	lw	$2,0($2)
	sw	$2,48($sp)
	li	$2,0
	sw	$2,40($sp)
	b	$L322
$L325:
	lw	$2,40($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$4,$3,$2
	lw	$3,72($sp)
	lw	$2,108($sp)
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$2
	bnez	$2,$L323
	lw	$2,40($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	b	$L324
$L323:
	lw	$2,40($sp)
	addiu	$2,1
	sw	$2,40($sp)
$L322:
	lw	$3,40($sp)
	lw	$2,48($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L325
	lw	$2,48($sp)
	addiu	$3,$2,1
	lw	$2,88($sp)
	sw	$3,0($2)
	lw	$2,48($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	lw	$4,96($sp)
	lw	$3,72($sp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	memcpy
	.option	pic2
$L324:
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
	addiu	$2,$16,-1
	sw	$2,44($sp)
	lw	$2,88($sp)
	lw	$2,0($2)
	sw	$2,48($sp)
	li	$2,0
	sw	$2,40($sp)
	b	$L328
$L331:
	lw	$2,40($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$4,$3,$2
	lw	$3,72($sp)
	lw	$2,108($sp)
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$2
	bnez	$2,$L329
	lw	$2,40($sp)
	mult	$16,$2
	mflo	$2
	lw	$3,80($sp)
	addu	$2,$3,$2
	b	$L330
$L329:
	lw	$2,40($sp)
	addiu	$2,1
	sw	$2,40($sp)
$L328:
	lw	$3,40($sp)
	lw	$2,48($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L331
	li	$2,0
$L330:
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
	beqz	$3,$L334
	neg	$2,$2
$L334:
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
	b	$L337
$L338:
	lw	$2,56($sp)
	addiu	$2,1
	sw	$2,56($sp)
$L337:
	lw	$2,56($sp)
	lb	$2,0($2)
	move	$4,$2
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L338
	lw	$2,56($sp)
	lb	$2,0($2)
	cmpi	$2,43
	move	$3,$24
	beqz	$3,$L339
	li	$3,45
	xor	$2,$3
	bnez	$2,$L341
	li	$2,1
	sw	$2,44($sp)
$L339:
	lw	$2,56($sp)
	addiu	$2,1
	sw	$2,56($sp)
	b	$L341
$L342:
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
$L341:
	lw	$2,56($sp)
	lb	$2,0($2)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	bnez	$2,$L342
	lw	$2,44($sp)
	bnez	$2,$L343
	lw	$2,40($sp)
	neg	$2,$2
	b	$L345
$L343:
	lw	$2,40($sp)
$L345:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L348
$L349:
	lw	$2,56($sp)
	addiu	$2,1
	sw	$2,56($sp)
$L348:
	lw	$2,56($sp)
	lb	$2,0($2)
	move	$4,$2
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L349
	lw	$2,56($sp)
	lb	$2,0($2)
	cmpi	$2,43
	move	$3,$24
	beqz	$3,$L350
	li	$3,45
	xor	$2,$3
	bnez	$2,$L352
	li	$2,1
	sw	$2,44($sp)
$L350:
	lw	$2,56($sp)
	addiu	$2,1
	sw	$2,56($sp)
	b	$L352
$L353:
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
$L352:
	lw	$2,56($sp)
	lb	$2,0($2)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	bnez	$2,$L353
	lw	$2,44($sp)
	bnez	$2,$L354
	lw	$2,40($sp)
	neg	$2,$2
	b	$L356
$L354:
	lw	$2,40($sp)
$L356:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L359
$L360:
	lw	$2,64($sp)
	addiu	$2,1
	sw	$2,64($sp)
$L359:
	lw	$2,64($sp)
	lb	$2,0($2)
	move	$4,$2
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L360
	lw	$2,64($sp)
	lb	$2,0($2)
	cmpi	$2,43
	move	$3,$24
	beqz	$3,$L361
	li	$3,45
	xor	$2,$3
	bnez	$2,$L363
	li	$2,1
	sw	$2,48($sp)
$L361:
	lw	$2,64($sp)
	addiu	$2,1
	sw	$2,64($sp)
	b	$L363
$L364:
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
$L363:
	lw	$2,64($sp)
	lb	$2,0($2)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	bnez	$2,$L364
	lw	$2,48($sp)
	bnez	$2,$L365
	li	$3,0
	ld	$2,40($sp)
	dsubu	$2,$3,$2
	b	$L367
$L365:
	ld	$2,40($sp)
$L367:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L370
$L375:
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
	beqz	$2,$L371
	lw	$2,72($sp)
	srl	$2,$2,1
	sw	$2,72($sp)
	b	$L370
$L371:
	lw	$2,44($sp)
	slt	$2,1
	move	$2,$24
	bnez	$2,$L373
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
	b	$L370
$L373:
	lw	$2,40($sp)
	b	$L374
$L370:
	lw	$2,72($sp)
	bnez	$2,$L375
	li	$2,0
$L374:
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
	lw	$2,80($sp)
	sw	$2,40($sp)
	b	$L378
$L382:
	lw	$2,40($sp)
	sra	$3,$2,1
	lw	$2,88($sp)
	mult	$3,$2
	mflo	$2
	lw	$3,72($sp)
	addu	$2,$3,$2
	sw	$2,44($sp)
	lw	$5,108($sp)
	lw	$4,44($sp)
	lw	$3,64($sp)
	lw	$2,100($sp)
	move	$6,$5
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$2
	sw	$2,48($sp)
	lw	$2,48($sp)
	bnez	$2,$L379
	lw	$2,44($sp)
	b	$L380
$L379:
	lw	$2,48($sp)
	slt	$2,1
	move	$2,$24
	bnez	$2,$L381
	lw	$3,44($sp)
	lw	$2,88($sp)
	addu	$2,$3,$2
	sw	$2,72($sp)
	lw	$2,40($sp)
	addiu	$2,-1
	sw	$2,40($sp)
$L381:
	lw	$2,40($sp)
	sra	$2,$2,1
	sw	$2,40($sp)
$L378:
	lw	$2,40($sp)
	bnez	$2,$L382
	li	$2,0
$L380:
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
	beqz	$3,$L388
	li	$3,0
	dsubu	$2,$3,$2
$L388:
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
	beqz	$3,$L394
	neg	$2,$2
$L394:
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
	beqz	$3,$L400
	li	$3,0
	dsubu	$2,$3,$2
$L400:
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
	b	$L406
$L408:
	lw	$2,0($sp)
	addiu	$2,4
	sw	$2,0($sp)
$L406:
	lw	$2,0($sp)
	lw	$2,0($2)
	beqz	$2,$L407
	lw	$2,0($sp)
	lw	$2,0($2)
	lw	$3,8($sp)
	xor	$2,$3
	bnez	$2,$L408
$L407:
	lw	$2,0($sp)
	lw	$2,0($2)
	beqz	$2,$L409
	lw	$2,0($sp)
	b	$L411
$L409:
	li	$2,0
$L411:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L413
$L415:
	lw	$2,0($sp)
	addiu	$2,4
	sw	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,4
	sw	$2,8($sp)
$L413:
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	xor	$2,$3
	bnez	$2,$L414
	lw	$2,0($sp)
	lw	$2,0($2)
	beqz	$2,$L414
	lw	$2,8($sp)
	lw	$2,0($2)
	bnez	$2,$L415
$L414:
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$3,$2
	move	$2,$24
	bnez	$2,$L416
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3
	move	$2,$24
	zeb	$2
	b	$L418
$L416:
	li	$2,1
	neg	$2,$2
$L418:
	.set	noreorder
	nop
	.set	reorder
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
$L420:
	lw	$3,24($sp)
	addiu	$2,$3,4
	sw	$2,24($sp)
	lw	$2,8($sp)
	addiu	$4,$2,4
	sw	$4,8($sp)
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($2)
	bnez	$2,$L420
	lw	$2,16($sp)
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
	b	$L424
$L425:
	lw	$2,8($sp)
	addiu	$2,4
	sw	$2,8($sp)
$L424:
	lw	$2,8($sp)
	lw	$2,0($2)
	bnez	$2,$L425
	lw	$3,8($sp)
	lw	$2,16($sp)
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
	b	$L429
$L431:
	lw	$2,16($sp)
	addiu	$2,-1
	sw	$2,16($sp)
	lw	$2,0($sp)
	addiu	$2,4
	sw	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,4
	sw	$2,8($sp)
$L429:
	lw	$2,16($sp)
	beqz	$2,$L430
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	xor	$2,$3
	bnez	$2,$L430
	lw	$2,0($sp)
	lw	$2,0($2)
	beqz	$2,$L430
	lw	$2,8($sp)
	lw	$2,0($2)
	bnez	$2,$L431
$L430:
	lw	$2,16($sp)
	beqz	$2,$L432
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$3,$2
	move	$2,$24
	bnez	$2,$L433
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3
	move	$2,$24
	zeb	$2
	b	$L436
$L433:
	li	$2,1
	neg	$2,$2
	b	$L436
$L432:
	li	$2,0
$L436:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L438
$L440:
	lw	$2,16($sp)
	addiu	$2,-1
	sw	$2,16($sp)
	lw	$2,0($sp)
	addiu	$2,4
	sw	$2,0($sp)
$L438:
	lw	$2,16($sp)
	beqz	$2,$L439
	lw	$2,0($sp)
	lw	$2,0($2)
	lw	$3,8($sp)
	xor	$2,$3
	bnez	$2,$L440
$L439:
	lw	$2,16($sp)
	beqz	$2,$L441
	lw	$2,0($sp)
	b	$L443
$L441:
	li	$2,0
$L443:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L445
$L447:
	lw	$2,16($sp)
	addiu	$2,-1
	sw	$2,16($sp)
	lw	$2,0($sp)
	addiu	$2,4
	sw	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,4
	sw	$2,8($sp)
$L445:
	lw	$2,16($sp)
	beqz	$2,$L446
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	xor	$2,$3
	beqz	$2,$L447
$L446:
	lw	$2,16($sp)
	beqz	$2,$L448
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$3,$2
	move	$2,$24
	bnez	$2,$L449
	lw	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3
	move	$2,$24
	zeb	$2
	b	$L452
$L449:
	li	$2,1
	neg	$2,$2
	b	$L452
$L448:
	li	$2,0
$L452:
	.set	noreorder
	nop
	.set	reorder
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
	b	$L454
$L455:
	lw	$3,24($sp)
	addiu	$2,$3,4
	sw	$2,24($sp)
	lw	$2,8($sp)
	addiu	$4,$2,4
	sw	$4,8($sp)
	lw	$3,0($3)
	sw	$3,0($2)
$L454:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L455
	lw	$2,16($sp)
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
	lw	$3,16($sp)
	lw	$2,24($sp)
	xor	$2,$3
	bnez	$2,$L459
	lw	$2,16($sp)
	b	$L460
$L459:
	lw	$3,16($sp)
	lw	$2,24($sp)
	subu	$3,$3,$2
	lw	$2,32($sp)
	sll	$2,$2,2
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L461
	b	$L462
$L463:
	lw	$2,32($sp)
	sll	$2,$2,2
	lw	$3,16($sp)
	addu	$2,$3,$2
	lw	$3,32($sp)
	sll	$3,$3,2
	lw	$4,24($sp)
	addu	$3,$4,$3
	lw	$3,0($3)
	sw	$3,0($2)
$L462:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L463
	b	$L464
$L461:
	lw	$2,16($sp)
	sw	$2,8($sp)
	b	$L465
$L466:
	lw	$3,24($sp)
	addiu	$2,$3,4
	sw	$2,24($sp)
	lw	$2,8($sp)
	addiu	$4,$2,4
	sw	$4,8($sp)
	lw	$3,0($3)
	sw	$3,0($2)
$L465:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L466
$L464:
	lw	$2,16($sp)
$L460:
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
	b	$L469
$L470:
	lw	$2,8($sp)
	addiu	$3,$2,4
	sw	$3,8($sp)
	lw	$3,24($sp)
	sw	$3,0($2)
$L469:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L470
	lw	$2,16($sp)
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
	lw	$3,16($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L474
	lw	$3,16($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$3,24($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	sw	$2,12($sp)
	b	$L475
$L476:
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
$L475:
	lw	$2,32($sp)
	bnez	$2,$L476
	b	$L480
$L474:
	lw	$3,16($sp)
	lw	$2,24($sp)
	xor	$2,$3
	beqz	$2,$L480
	b	$L478
$L479:
	lw	$3,16($sp)
	addiu	$2,$3,1
	sw	$2,16($sp)
	lw	$2,24($sp)
	addiu	$4,$2,1
	sw	$4,24($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L478:
	lw	$2,32($sp)
	bnez	$2,$L479
$L480:
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
	lw	$2,8($sp)
	sll	$2,$2,8
	move	$3,$sp
	lhu	$3,16($3)
	and	$2,$3
	srl	$3,$2,8
	lw	$4,8($sp)
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
	b	$L512
$L515:
	lw	$2,16($sp)
	lw	$3,8($sp)
	srl	$2,$3
	li	$3,1
	and	$2,$3
	beqz	$2,$L513
	lw	$2,8($sp)
	addiu	$2,1
	b	$L514
$L513:
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L512:
	lw	$2,8($sp)
	sltu	$2,32
	move	$2,$24
	bnez	$2,$L515
	li	$2,0
$L514:
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
	addiu	$sp,-8
	sd	$16,0($sp)
	bnez	$4,$L518
	li	$16,0
	b	$L519
$L518:
	move	$2,$4
	li	$16,1
	b	$L520
$L521:
	sra	$2,$2,1
	addiu	$16,1
$L520:
	li	$3,1
	and	$3,$2
	beqz	$3,$L521
	.set	noreorder
	nop
	.set	reorder
$L519:
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
	lw	$2,$L531
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,56($sp)
	lw	$2,%call16(__mips16_ltsf2)($16)
	lw	$5,$L532
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L524
	lw	$2,%call16(__mips16_gtsf2)($16)
	lw	$5,$L533
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L529
$L524:
	li	$2,1
	b	$L528
$L529:
	li	$2,0
$L528:
	.set	noreorder
	nop
	.set	reorder
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_gl_isinff_531, @object
__pool_gl_isinff_531:
	.align	2
$L531:
	.word	__gnu_local_gp
$L532:
	.word	-8388609
$L533:
	.word	2139095039
	.type	__pend_gl_isinff_531, @object
__pend_gl_isinff_531:
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
	lw	$2,$L542
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L543
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L535
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L544
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L540
$L535:
	li	$2,1
	b	$L539
$L540:
	li	$2,0
$L539:
	.set	noreorder
	nop
	.set	reorder
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_gl_isinfd_542, @object
__pool_gl_isinfd_542:
	.align	2
$L542:
	.word	__gnu_local_gp
	.align	3
$L543:
	.word	-1048577
	.word	-1
$L544:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_542, @object
__pend_gl_isinfd_542:
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
	lw	$2,$L553
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L554
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L546
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L555
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L551
$L546:
	li	$2,1
	b	$L550
$L551:
	li	$2,0
$L550:
	.set	noreorder
	nop
	.set	reorder
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_gl_isinfl_553, @object
__pool_gl_isinfl_553:
	.align	2
$L553:
	.word	__gnu_local_gp
	.align	3
$L554:
	.word	-1048577
	.word	-1
$L555:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_553, @object
__pend_gl_isinfl_553:
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
	lw	$2,$L558
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
	.type	__pool__Qp_itoq_558, @object
__pool__Qp_itoq_558:
	.align	2
$L558:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_558, @object
__pend__Qp_itoq_558:
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
	lw	$2,$L571
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
	bnez	$2,$L560
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
	beqz	$2,$L560
	lw	$2,72($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L562
	lw	$2,$L572
	b	$L563
$L562:
	lw	$2,$L573
$L563:
	sw	$2,40($sp)
$L566:
	lw	$3,72($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L564
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,40($sp)
	lw	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sw	$2,64($sp)
$L564:
	lw	$2,72($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,72($sp)
	lw	$2,72($sp)
	beqz	$2,$L569
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,40($sp)
	lw	$4,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
	b	$L566
$L569:
	.set	noreorder
	nop
	.set	reorder
$L560:
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
	.type	__pool_ldexpf_571, @object
__pool_ldexpf_571:
	.align	2
$L571:
	.word	__gnu_local_gp
$L572:
	.word	1056964608
$L573:
	.word	1073741824
	.type	__pend_ldexpf_571, @object
__pend_ldexpf_571:
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
	lw	$2,$L586
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
	bnez	$2,$L575
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
	beqz	$2,$L575
	lw	$2,72($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L577
	ld	$2,$L587
	b	$L578
$L577:
	ld	$2,$L588
$L578:
	sd	$2,40($sp)
$L581:
	lw	$3,72($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L579
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,40($sp)
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,64($sp)
$L579:
	lw	$2,72($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,72($sp)
	lw	$2,72($sp)
	beqz	$2,$L584
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,40($sp)
	ld	$4,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
	b	$L581
$L584:
	.set	noreorder
	nop
	.set	reorder
$L575:
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
	.type	__pool_ldexp_586, @object
__pool_ldexp_586:
	.align	2
$L586:
	.word	__gnu_local_gp
	.align	3
$L587:
	.word	1071644672
	.word	0
$L588:
	.word	1073741824
	.word	0
	.type	__pend_ldexp_586, @object
__pend_ldexp_586:
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
	lw	$2,$L601
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
	bnez	$2,$L590
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
	beqz	$2,$L590
	lw	$2,72($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L592
	ld	$2,$L602
	b	$L593
$L592:
	ld	$2,$L603
$L593:
	sd	$2,40($sp)
$L596:
	lw	$3,72($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L594
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,40($sp)
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,64($sp)
$L594:
	lw	$2,72($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,72($sp)
	lw	$2,72($sp)
	beqz	$2,$L599
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,40($sp)
	ld	$4,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
	b	$L596
$L599:
	.set	noreorder
	nop
	.set	reorder
$L590:
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
	.type	__pool_ldexpl_601, @object
__pool_ldexpl_601:
	.align	2
$L601:
	.word	__gnu_local_gp
	.align	3
$L602:
	.word	1071644672
	.word	0
$L603:
	.word	1073741824
	.word	0
	.type	__pend_ldexpl_601, @object
__pend_ldexpl_601:
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
	lw	$2,16($sp)
	sw	$2,8($sp)
	b	$L605
$L606:
	lw	$2,24($sp)
	addiu	$3,$2,1
	sw	$3,24($sp)
	lb	$4,0($2)
	lw	$2,8($sp)
	addiu	$3,$2,1
	sw	$3,8($sp)
	lb	$3,0($2)
	xor	$3,$4
	sb	$3,0($2)
	lw	$2,32($sp)
	addiu	$2,-1
	sw	$2,32($sp)
$L605:
	lw	$2,32($sp)
	bnez	$2,$L606
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
	b	$L610
$L612:
	lw	$2,64($sp)
	addiu	$2,1
	sw	$2,64($sp)
	lw	$2,40($sp)
	addiu	$2,1
	sw	$2,40($sp)
	lw	$2,72($sp)
	addiu	$2,-1
	sw	$2,72($sp)
$L610:
	lw	$2,72($sp)
	beqz	$2,$L611
	lw	$2,64($sp)
	lb	$3,0($2)
	lw	$2,40($sp)
	sb	$3,0($2)
	lw	$2,40($sp)
	lb	$2,0($2)
	bnez	$2,$L612
$L611:
	lw	$2,72($sp)
	bnez	$2,$L613
	lw	$2,40($sp)
	li	$3,0
	sb	$3,0($2)
$L613:
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
	b	$L617
$L622:
	.set	noreorder
	nop
	.set	reorder
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L617:
	lw	$3,8($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L618
	lw	$3,16($sp)
	lw	$2,8($sp)
	addu	$2,$3,$2
	lb	$2,0($2)
	bnez	$2,$L622
$L618:
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
	b	$L625
$L629:
	lw	$2,24($sp)
	sw	$2,8($sp)
	b	$L626
$L628:
	lw	$2,8($sp)
	addiu	$3,$2,1
	sw	$3,8($sp)
	lb	$3,0($2)
	lw	$2,16($sp)
	lb	$2,0($2)
	xor	$2,$3
	bnez	$2,$L626
	lw	$2,16($sp)
	b	$L627
$L626:
	lw	$2,8($sp)
	lb	$2,0($2)
	bnez	$2,$L628
	lw	$2,16($sp)
	addiu	$2,1
	sw	$2,16($sp)
$L625:
	lw	$2,16($sp)
	lb	$2,0($2)
	bnez	$2,$L629
	li	$2,0
$L627:
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
$L633:
	lb	$3,0($2)
	lw	$4,24($sp)
	xor	$3,$4
	bnez	$3,$L632
	sw	$2,8($sp)
$L632:
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	bnez	$3,$L633
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
	lw	$2,64($sp)
	move	$4,$2
	.option	pic0
	jal	strlen
	.option	pic2
	sw	$2,40($sp)
	lw	$2,40($sp)
	bnez	$2,$L639
	lw	$2,56($sp)
	b	$L638
$L641:
	lw	$4,40($sp)
	lw	$3,64($sp)
	lw	$2,44($sp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	strncmp
	.option	pic2
	bnez	$2,$L640
	lw	$2,44($sp)
	b	$L638
$L640:
	lw	$2,44($sp)
	addiu	$2,1
	sw	$2,56($sp)
$L639:
	lw	$2,64($sp)
	lb	$3,0($2)
	lw	$2,56($sp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	strchr
	.option	pic2
	sw	$2,44($sp)
	lw	$2,44($sp)
	bnez	$2,$L641
	li	$2,0
$L638:
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
	lw	$2,$L654
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,56($sp)
	sd	$5,64($sp)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L655
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L644
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L655
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	beqz	$2,$L646
$L644:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L655
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L647
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L655
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L647
$L646:
	ld	$3,56($sp)
	ld	$2,$L656
	xor	$2,$3
	b	$L650
$L647:
	ld	$2,56($sp)
$L650:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool_copysign_654, @object
__pool_copysign_654:
	.align	2
$L654:
	.word	__gnu_local_gp
	.align	3
$L655:
	.word	0
	.word	0
$L656:
	.dword	-9223372036854775808
	.type	__pend_copysign_654, @object
__pend_copysign_654:
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
	sw	$2,40($sp)
	lw	$2,80($sp)
	bnez	$2,$L658
	lw	$2,56($sp)
	b	$L659
$L658:
	lw	$3,64($sp)
	lw	$2,80($sp)
	sltu	$3,$2
	move	$2,$24
	zeb	$2
	beqz	$2,$L661
	li	$2,0
	b	$L659
$L663:
	lw	$2,56($sp)
	lb	$3,0($2)
	lw	$2,72($sp)
	lb	$2,0($2)
	xor	$2,$3
	bnez	$2,$L662
	lw	$2,56($sp)
	addiu	$3,$2,1
	lw	$2,80($sp)
	addiu	$4,$2,-1
	lw	$2,72($sp)
	addiu	$2,1
	move	$6,$4
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	memcmp
	.option	pic2
	bnez	$2,$L662
	lw	$2,56($sp)
	b	$L659
$L662:
	lw	$2,56($sp)
	addiu	$2,1
	sw	$2,56($sp)
$L661:
	lw	$3,56($sp)
	lw	$2,40($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L663
	li	$2,0
$L659:
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
	lw	$2,$L688
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
	ld	$5,$L689
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L669
	ld	$3,64($sp)
	ld	$2,$L690
	xor	$2,$3
	sd	$2,64($sp)
	li	$2,1
	sw	$2,40($sp)
$L669:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L691
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L686
	b	$L673
$L674:
	lw	$2,44($sp)
	addiu	$2,1
	sw	$2,44($sp)
	lw	$2,%call16(__mips16_divdf3)($16)
	ld	$5,$L692
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,64($sp)
$L673:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L691
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L674
	b	$L675
$L686:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L693
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L675
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L689
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	beqz	$2,$L675
	b	$L678
$L679:
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
$L678:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L693
	ld	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L679
$L675:
	lw	$2,72($sp)
	lw	$3,44($sp)
	sw	$3,0($2)
	lw	$2,40($sp)
	beqz	$2,$L680
	ld	$3,64($sp)
	ld	$2,$L690
	xor	$2,$3
	sd	$2,64($sp)
$L680:
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
	.type	__pool_frexp_688, @object
__pool_frexp_688:
	.align	2
$L688:
	.word	__gnu_local_gp
	.align	3
$L689:
	.word	0
	.word	0
$L690:
	.dword	-9223372036854775808
$L691:
	.word	1072693248
	.word	0
$L692:
	.word	1073741824
	.word	0
$L693:
	.word	1071644672
	.word	0
	.type	__pend_frexp_688, @object
__pend_frexp_688:
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
	b	$L695
$L697:
	ld	$3,16($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L696
	ld	$3,8($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,8($sp)
$L696:
	ld	$2,32($sp)
	dsll	$2,$2,1
	sd	$2,32($sp)
	ld	$2,16($sp)
	dsrl	$2,1
	sd	$2,16($sp)
$L695:
	ld	$2,16($sp)
	bnez	$2,$L697
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
	b	$L701
$L703:
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
	lw	$2,8($sp)
	sll	$2,$2,1
	sw	$2,8($sp)
$L701:
	lw	$3,24($sp)
	lw	$2,16($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L704
	lw	$2,8($sp)
	beqz	$2,$L704
	lw	$2,24($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L703
	b	$L704
$L706:
	lw	$3,16($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L705
	lw	$3,16($sp)
	lw	$2,24($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,12($sp)
	lw	$2,8($sp)
	or	$2,$3
	sw	$2,12($sp)
$L705:
	lw	$2,8($sp)
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,24($sp)
	srl	$2,$2,1
	sw	$2,24($sp)
$L704:
	lw	$2,8($sp)
	bnez	$2,$L706
	ld	$2,32($sp)
	beqz	$2,$L707
	lw	$2,16($sp)
	b	$L708
$L707:
	lw	$2,12($sp)
$L708:
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
	lw	$2,$L715
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
	beqz	$2,$L711
	move	$2,$sp
	lbu	$2,56($2)
	not	$2,$2
	move	$4,$sp
	sb	$2,56($4)
$L711:
	move	$2,$sp
	lb	$2,56($2)
	bnez	$2,$L712
	li	$2,7
	b	$L713
$L712:
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
$L713:
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool___clrsbqi2_715, @object
__pool___clrsbqi2_715:
	.align	2
$L715:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_715, @object
__pend___clrsbqi2_715:
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
	lw	$2,$L721
	move	$28,$2
	sw	$2,32($sp)
	move	$3,$28
	sd	$4,56($sp)
	ld	$2,56($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L717
	ld	$2,56($sp)
	not	$2,$2
	sd	$2,56($sp)
$L717:
	ld	$2,56($sp)
	bnez	$2,$L718
	li	$2,63
	b	$L719
$L718:
	lw	$2,%call16(__clzdi2)($3)
	ld	$4,56($sp)
	move	$25,$2
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
	lw	$2,40($sp)
	addiu	$2,-1
$L719:
	ld	$7,48($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool___clrsbdi2_721, @object
__pool___clrsbdi2_721:
	.align	2
$L721:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_721, @object
__pend___clrsbdi2_721:
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
	b	$L723
$L725:
	lw	$3,16($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L724
	lw	$3,8($sp)
	lw	$2,24($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
$L724:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
$L723:
	lw	$2,16($sp)
	bnez	$2,$L725
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
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sw	$4,24($sp)
	sw	$5,32($sp)
	sw	$6,40($sp)
	lw	$2,40($sp)
	srl	$2,$2,3
	sw	$2,16($sp)
	lw	$3,40($sp)
	li	$2,8
	neg	$2,$2
	and	$2,$3
	sw	$2,12($sp)
	lw	$3,24($sp)
	lw	$2,32($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L729
	lw	$3,32($sp)
	lw	$2,40($sp)
	addu	$2,$3,$2
	lw	$3,24($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L736
$L729:
	li	$2,0
	sw	$2,8($sp)
	b	$L731
$L732:
	lw	$2,8($sp)
	sll	$2,$2,3
	lw	$3,24($sp)
	addu	$2,$3,$2
	lw	$3,8($sp)
	sll	$3,$3,3
	lw	$4,32($sp)
	addu	$3,$4,$3
	ld	$3,0($3)
	sd	$3,0($2)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L731:
	lw	$3,8($sp)
	lw	$2,16($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L732
	b	$L733
$L734:
	lw	$3,24($sp)
	lw	$2,12($sp)
	addu	$2,$3,$2
	lw	$4,32($sp)
	lw	$3,12($sp)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,12($sp)
	addiu	$2,1
	sw	$2,12($sp)
$L733:
	lw	$3,40($sp)
	lw	$2,12($sp)
	sltu	$2,$3
	move	$2,$24
	bnez	$2,$L734
	b	$L735
$L737:
	lw	$3,24($sp)
	lw	$2,40($sp)
	addu	$2,$3,$2
	lw	$4,32($sp)
	lw	$3,40($sp)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
$L736:
	lw	$2,40($sp)
	addiu	$3,$2,-1
	sw	$3,40($sp)
	bnez	$2,$L737
	.set	noreorder
	nop
	.set	reorder
$L735:
	.set	noreorder
	nop
	.set	reorder
	addiu	$sp,24
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
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-16
	sw	$4,16($sp)
	sw	$5,24($sp)
	sw	$6,32($sp)
	lw	$2,32($sp)
	srl	$2,$2,1
	sw	$2,12($sp)
	lw	$3,16($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L740
	lw	$3,24($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	lw	$3,16($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L746
$L740:
	li	$2,0
	sw	$2,8($sp)
	b	$L742
$L743:
	lw	$2,8($sp)
	sll	$2,$2,1
	lw	$3,16($sp)
	addu	$2,$3,$2
	lw	$3,8($sp)
	sll	$3,$3,1
	lw	$4,24($sp)
	addu	$3,$4,$3
	lh	$3,0($3)
	sh	$3,0($2)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L742:
	lw	$3,8($sp)
	lw	$2,12($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L743
	lw	$3,32($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L745
	lw	$2,32($sp)
	addiu	$2,-1
	lw	$3,16($sp)
	addu	$2,$3,$2
	lw	$4,24($sp)
	lw	$3,32($sp)
	addu	$3,$4,$3
	lb	$3,-1($3)
	sb	$3,0($2)
	b	$L745
$L747:
	lw	$3,16($sp)
	lw	$2,32($sp)
	addu	$2,$3,$2
	lw	$4,24($sp)
	lw	$3,32($sp)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
$L746:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bnez	$2,$L747
	.set	noreorder
	nop
	.set	reorder
$L745:
	.set	noreorder
	nop
	.set	reorder
	addiu	$sp,16
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
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sw	$4,24($sp)
	sw	$5,32($sp)
	sw	$6,40($sp)
	lw	$2,40($sp)
	srl	$2,$2,2
	sw	$2,16($sp)
	lw	$3,40($sp)
	li	$2,4
	neg	$2,$2
	and	$2,$3
	sw	$2,12($sp)
	lw	$3,24($sp)
	lw	$2,32($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L750
	lw	$3,32($sp)
	lw	$2,40($sp)
	addu	$2,$3,$2
	lw	$3,24($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L757
$L750:
	li	$2,0
	sw	$2,8($sp)
	b	$L752
$L753:
	lw	$2,8($sp)
	sll	$2,$2,2
	lw	$3,24($sp)
	addu	$2,$3,$2
	lw	$3,8($sp)
	sll	$3,$3,2
	lw	$4,32($sp)
	addu	$3,$4,$3
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L752:
	lw	$3,8($sp)
	lw	$2,16($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L753
	b	$L754
$L755:
	lw	$3,24($sp)
	lw	$2,12($sp)
	addu	$2,$3,$2
	lw	$4,32($sp)
	lw	$3,12($sp)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,12($sp)
	addiu	$2,1
	sw	$2,12($sp)
$L754:
	lw	$3,40($sp)
	lw	$2,12($sp)
	sltu	$2,$3
	move	$2,$24
	bnez	$2,$L755
	b	$L756
$L758:
	lw	$3,24($sp)
	lw	$2,40($sp)
	addu	$2,$3,$2
	lw	$4,32($sp)
	lw	$3,40($sp)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
$L757:
	lw	$2,40($sp)
	addiu	$3,$2,-1
	sw	$3,40($sp)
	bnez	$2,$L758
	.set	noreorder
	nop
	.set	reorder
$L756:
	.set	noreorder
	nop
	.set	reorder
	addiu	$sp,24
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
	lw	$2,$L765
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
	.type	__pool___uitod_765, @object
__pool___uitod_765:
	.align	2
$L765:
	.word	__gnu_local_gp
	.type	__pend___uitod_765, @object
__pend___uitod_765:
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
	lw	$2,$L769
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
	.type	__pool___uitof_769, @object
__pool___uitof_769:
	.align	2
$L769:
	.word	__gnu_local_gp
	.type	__pend___uitof_769, @object
__pend___uitof_769:
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
	lw	$2,$L773
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
	.type	__pool___ulltod_773, @object
__pool___ulltod_773:
	.align	2
$L773:
	.word	__gnu_local_gp
	.type	__pend___ulltod_773, @object
__pend___ulltod_773:
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
	lw	$2,$L777
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
	.type	__pool___ulltof_777, @object
__pool___ulltof_777:
	.align	2
$L777:
	.word	__gnu_local_gp
	.type	__pend___ulltof_777, @object
__pend___ulltof_777:
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
	b	$L781
$L784:
	li	$3,15
	lw	$2,8($sp)
	subu	$3,$3,$2
	move	$2,$sp
	lhu	$2,16($2)
	sra	$2,$3
	li	$3,1
	and	$2,$3
	bnez	$2,$L786
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L781:
	lw	$2,8($sp)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L784
	b	$L783
$L786:
	.set	noreorder
	nop
	.set	reorder
$L783:
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
	b	$L789
$L792:
	move	$2,$sp
	lhu	$2,16($2)
	lw	$3,8($sp)
	sra	$2,$3
	li	$3,1
	and	$2,$3
	bnez	$2,$L794
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L789:
	lw	$2,8($sp)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L792
	b	$L791
$L794:
	.set	noreorder
	nop
	.set	reorder
$L791:
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
	lw	$2,$L803
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,56($sp)
	lw	$2,%call16(__mips16_gesf2)($16)
	lw	$5,$L804
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L801
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L804
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
	b	$L799
$L801:
	lw	$2,%call16(__mips16_fix_truncsfsi)($16)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
$L799:
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool___fixunssfsi_803, @object
__pool___fixunssfsi_803:
	.align	2
$L803:
	.word	__gnu_local_gp
$L804:
	.word	1191182336
	.type	__pend___fixunssfsi_803, @object
__pend___fixunssfsi_803:
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
	b	$L806
$L808:
	move	$2,$sp
	lhu	$2,16($2)
	lw	$3,8($sp)
	sra	$2,$3
	li	$3,1
	and	$2,$3
	beqz	$2,$L807
	lw	$2,12($sp)
	addiu	$2,1
	sw	$2,12($sp)
$L807:
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L806:
	lw	$2,8($sp)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L808
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
	b	$L812
$L814:
	move	$2,$sp
	lhu	$2,16($2)
	lw	$3,8($sp)
	sra	$2,$3
	li	$3,1
	and	$2,$3
	beqz	$2,$L813
	lw	$2,12($sp)
	addiu	$2,1
	sw	$2,12($sp)
$L813:
	lw	$2,8($sp)
	addiu	$2,1
	sw	$2,8($sp)
$L812:
	lw	$2,8($sp)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L814
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
	b	$L818
$L820:
	lw	$3,16($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L819
	lw	$3,8($sp)
	lw	$2,24($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
$L819:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
$L818:
	lw	$2,16($sp)
	bnez	$2,$L820
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
	bnez	$2,$L826
	li	$2,0
	b	$L825
$L828:
	lw	$3,24($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L827
	lw	$3,8($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
$L827:
	lw	$2,16($sp)
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,24($sp)
	srl	$2,$2,1
	sw	$2,24($sp)
$L826:
	lw	$2,24($sp)
	bnez	$2,$L828
	lw	$2,8($sp)
$L825:
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
	b	$L831
$L833:
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
	lw	$2,8($sp)
	sll	$2,$2,1
	sw	$2,8($sp)
$L831:
	lw	$3,24($sp)
	lw	$2,16($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L834
	lw	$2,8($sp)
	beqz	$2,$L834
	lw	$2,24($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L833
	b	$L834
$L836:
	lw	$3,16($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L835
	lw	$3,16($sp)
	lw	$2,24($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,12($sp)
	lw	$2,8($sp)
	or	$2,$3
	sw	$2,12($sp)
$L835:
	lw	$2,8($sp)
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,24($sp)
	srl	$2,$2,1
	sw	$2,24($sp)
$L834:
	lw	$2,8($sp)
	bnez	$2,$L836
	lw	$2,32($sp)
	beqz	$2,$L837
	lw	$2,16($sp)
	b	$L838
$L837:
	lw	$2,12($sp)
$L838:
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
	lw	$2,$L851
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
	beqz	$2,$L848
	li	$2,1
	neg	$2,$2
	b	$L843
$L848:
	lw	$2,%call16(__mips16_gtsf2)($16)
	lw	$5,64($sp)
	lw	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L849
	li	$2,1
	b	$L843
$L849:
	li	$2,0
$L843:
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool___mspabi_cmpf_851, @object
__pool___mspabi_cmpf_851:
	.align	2
$L851:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_851, @object
__pend___mspabi_cmpf_851:
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
	lw	$2,$L863
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
	beqz	$2,$L860
	li	$2,1
	neg	$2,$2
	b	$L855
$L860:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,64($sp)
	ld	$4,56($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L861
	li	$2,1
	b	$L855
$L861:
	li	$2,0
$L855:
	ld	$7,48($sp)
	ld	$16,40($sp)
	addiu	$sp,56
	jr	$7
	.type	__pool___mspabi_cmpd_863, @object
__pool___mspabi_cmpd_863:
	.align	2
$L863:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_863, @object
__pend___mspabi_cmpd_863:
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
	beqz	$2,$L869
	lw	$2,32($sp)
	neg	$2,$2
	sw	$2,32($sp)
	li	$2,1
	sw	$2,12($sp)
$L869:
	li	$2,0
	move	$3,$sp
	sb	$2,8($3)
	b	$L870
$L873:
	lw	$3,32($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L871
	lw	$3,16($sp)
	lw	$2,24($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
$L871:
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
	lw	$2,32($sp)
	sra	$2,$2,1
	sw	$2,32($sp)
	move	$2,$sp
	lbu	$2,8($2)
	addiu	$2,1
	zeb	$2
	move	$3,$sp
	sb	$2,8($3)
$L870:
	lw	$2,32($sp)
	beqz	$2,$L872
	move	$2,$sp
	lbu	$2,8($2)
	sltu	$2,32
	move	$2,$24
	bnez	$2,$L873
$L872:
	lw	$2,12($sp)
	beqz	$2,$L874
	lw	$2,16($sp)
	neg	$2,$2
	b	$L876
$L874:
	lw	$2,16($sp)
$L876:
	.set	noreorder
	nop
	.set	reorder
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
	beqz	$2,$L879
	lw	$2,56($sp)
	neg	$2,$2
	sw	$2,56($sp)
	lw	$2,40($sp)
	sltu	$2,1
	move	$2,$24
	zeb	$2
	sw	$2,40($sp)
$L879:
	lw	$2,64($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L880
	lw	$2,64($sp)
	neg	$2,$2
	sw	$2,64($sp)
	lw	$2,40($sp)
	sltu	$2,1
	move	$2,$24
	zeb	$2
	sw	$2,40($sp)
$L880:
	lw	$3,64($sp)
	lw	$2,56($sp)
	li	$6,0
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__udivmodsi4
	.option	pic2
	sw	$2,44($sp)
	lw	$2,40($sp)
	beqz	$2,$L881
	lw	$2,44($sp)
	neg	$2,$2
	sw	$2,44($sp)
$L881:
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
	beqz	$2,$L885
	lw	$2,56($sp)
	neg	$2,$2
	sw	$2,56($sp)
	li	$2,1
	sw	$2,40($sp)
$L885:
	lw	$2,64($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L886
	lw	$2,64($sp)
	neg	$2,$2
	sw	$2,64($sp)
$L886:
	lw	$3,64($sp)
	lw	$2,56($sp)
	li	$6,1
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__udivmodsi4
	.option	pic2
	sw	$2,44($sp)
	lw	$2,40($sp)
	beqz	$2,$L887
	lw	$2,44($sp)
	neg	$2,$2
	sw	$2,44($sp)
$L887:
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
	b	$L891
$L893:
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
$L891:
	move	$2,$sp
	lhu	$3,24($2)
	move	$2,$sp
	lhu	$2,16($2)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L894
	move	$2,$sp
	lhu	$2,8($2)
	beqz	$2,$L894
	move	$2,$sp
	lh	$2,24($2)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L893
	b	$L894
$L896:
	move	$2,$sp
	lhu	$3,16($2)
	move	$2,$sp
	lhu	$2,24($2)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L895
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
$L895:
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
$L894:
	move	$2,$sp
	lhu	$2,8($2)
	bnez	$2,$L896
	lw	$2,32($sp)
	beqz	$2,$L897
	move	$2,$sp
	lhu	$2,16($2)
	b	$L898
$L897:
	move	$2,$sp
	lhu	$2,10($2)
$L898:
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
	b	$L901
$L903:
	lw	$2,24($sp)
	sll	$2,$2,1
	sw	$2,24($sp)
	lw	$2,8($sp)
	sll	$2,$2,1
	sw	$2,8($sp)
$L901:
	lw	$3,24($sp)
	lw	$2,16($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L904
	lw	$2,8($sp)
	beqz	$2,$L904
	lw	$2,24($sp)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L903
	b	$L904
$L906:
	lw	$3,16($sp)
	lw	$2,24($sp)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L905
	lw	$3,16($sp)
	lw	$2,24($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,12($sp)
	lw	$2,8($sp)
	or	$2,$3
	sw	$2,12($sp)
$L905:
	lw	$2,8($sp)
	srl	$2,$2,1
	sw	$2,8($sp)
	lw	$2,24($sp)
	srl	$2,$2,1
	sw	$2,24($sp)
$L904:
	lw	$2,8($sp)
	bnez	$2,$L906
	lw	$2,32($sp)
	beqz	$2,$L907
	lw	$2,16($sp)
	b	$L908
$L907:
	lw	$2,12($sp)
$L908:
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
	beqz	$2,$L911
	li	$2,0
	sw	$2,28($sp)
	lw	$2,20($sp)
	lw	$4,40($sp)
	lw	$3,8($sp)
	subu	$3,$4,$3
	sll	$2,$3
	sw	$2,24($sp)
	b	$L912
$L911:
	lw	$2,40($sp)
	bnez	$2,$L913
	ld	$2,32($sp)
	b	$L915
$L913:
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
$L912:
	ld	$2,24($sp)
$L915:
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
	beqz	$2,$L918
	li	$2,0
	sd	$2,40($sp)
	ld	$2,24($sp)
	lw	$4,64($sp)
	lw	$3,8($sp)
	subu	$3,$4,$3
	dsll	$2,$3
	sd	$2,32($sp)
	b	$L919
$L918:
	lw	$2,64($sp)
	bnez	$2,$L920
	move	$2,$sp
	ld	$3,56($2)
	ld	$2,48($2)
	b	$L922
$L920:
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
$L919:
	move	$2,$sp
	ld	$3,40($2)
	ld	$2,32($2)
$L922:
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
	beqz	$2,$L925
	lw	$2,16($sp)
	lw	$3,8($sp)
	addiu	$3,-1
	sra	$2,$3
	sw	$2,24($sp)
	lw	$2,16($sp)
	lw	$4,40($sp)
	lw	$3,8($sp)
	subu	$3,$4,$3
	sra	$2,$3
	sw	$2,28($sp)
	b	$L926
$L925:
	lw	$2,40($sp)
	bnez	$2,$L927
	ld	$2,32($sp)
	b	$L929
$L927:
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
$L926:
	ld	$2,24($sp)
$L929:
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
	beqz	$2,$L932
	ld	$2,16($sp)
	lw	$3,8($sp)
	addiu	$3,-1
	dsra	$2,$3
	sd	$2,32($sp)
	ld	$2,16($sp)
	lw	$4,64($sp)
	lw	$3,8($sp)
	subu	$3,$4,$3
	dsra	$2,$3
	sd	$2,40($sp)
	b	$L933
$L932:
	lw	$2,64($sp)
	bnez	$2,$L934
	move	$2,$sp
	ld	$3,56($2)
	ld	$2,48($2)
	b	$L936
$L934:
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
$L933:
	move	$2,$sp
	ld	$3,40($2)
	ld	$2,32($2)
$L936:
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
	li	$4,65280
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsrl	$2,24
	ld	$4,$L942
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsrl	$2,8
	ld	$4,$L943
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsll	$2,$2,8
	ld	$4,$L944
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsll	$2,$2,24
	ld	$4,$L945
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsll	$2,$2,40
	ld	$4,$L946
	and	$2,$4
	or	$3,$2
	ld	$2,0($sp)
	dsll	$2,$2,56
	or	$2,$3
	jr	$31
	.type	__pool___bswapdi2_941, @object
__pool___bswapdi2_941:
	.align	2
$L941:
	.word	__gnu_local_gp
	.align	3
$L942:
	.dword	16711680
$L943:
	.dword	4278190080
$L944:
	.dword	1095216660480
$L945:
	.dword	280375465082880
$L946:
	.dword	71776119061217280
	.type	__pend___bswapdi2_941, @object
__pend___bswapdi2_941:
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
	srl	$2,$2,8
	li	$4,65280
	and	$2,$4
	or	$3,$2
	lw	$2,0($sp)
	sll	$2,$2,8
	lw	$4,$L951
	and	$2,$4
	or	$3,$2
	lw	$2,0($sp)
	sll	$2,$2,24
	or	$2,$3
	jr	$31
	.type	__pool___bswapsi2_950, @object
__pool___bswapsi2_950:
	.align	2
$L950:
	.word	__gnu_local_gp
$L951:
	.word	16711680
	.type	__pend___bswapsi2_950, @object
__pend___bswapsi2_950:
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.set	mips16
	.set	nomicromips
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	$sp,64,$31		# vars= 56, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-64
	sw	$4,64($sp)
	lw	$2,64($sp)
	sw	$2,8($sp)
	lw	$3,8($sp)
	lw	$2,$L964
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L953
	li	$2,16
	b	$L954
$L953:
	li	$2,0
$L954:
	sw	$2,12($sp)
	li	$3,16
	lw	$2,12($sp)
	subu	$3,$3,$2
	lw	$2,8($sp)
	srl	$2,$3
	sw	$2,16($sp)
	lw	$2,12($sp)
	sw	$2,20($sp)
	lw	$3,16($sp)
	li	$2,65280
	and	$2,$3
	bnez	$2,$L955
	li	$2,8
	b	$L956
$L955:
	li	$2,0
$L956:
	sw	$2,24($sp)
	li	$3,8
	lw	$2,24($sp)
	subu	$3,$3,$2
	lw	$2,16($sp)
	srl	$2,$3
	sw	$2,28($sp)
	lw	$3,20($sp)
	lw	$2,24($sp)
	addu	$2,$3,$2
	sw	$2,32($sp)
	lw	$3,28($sp)
	li	$2,240
	and	$2,$3
	bnez	$2,$L957
	li	$2,4
	b	$L958
$L957:
	li	$2,0
$L958:
	sw	$2,36($sp)
	li	$3,4
	lw	$2,36($sp)
	subu	$3,$3,$2
	lw	$2,28($sp)
	srl	$2,$3
	sw	$2,40($sp)
	lw	$3,32($sp)
	lw	$2,36($sp)
	addu	$2,$3,$2
	sw	$2,44($sp)
	lw	$3,40($sp)
	li	$2,12
	and	$2,$3
	bnez	$2,$L959
	li	$2,2
	b	$L960
$L959:
	li	$2,0
$L960:
	sw	$2,48($sp)
	li	$3,2
	lw	$2,48($sp)
	subu	$3,$3,$2
	lw	$2,40($sp)
	srl	$2,$3
	sw	$2,52($sp)
	lw	$3,44($sp)
	lw	$2,48($sp)
	addu	$2,$3,$2
	sw	$2,56($sp)
	lw	$3,52($sp)
	li	$2,2
	and	$2,$3
	sltu	$2,1
	move	$2,$24
	move	$4,$2
	li	$3,2
	lw	$2,52($sp)
	subu	$2,$3,$2
	mult	$4,$2
	mflo	$3
	lw	$2,56($sp)
	addu	$2,$3,$2
	addiu	$sp,64
	jr	$31
	.type	__pool___clzsi2_963, @object
__pool___clzsi2_963:
	.align	2
$L963:
	.word	__gnu_local_gp
$L964:
	.word	65536
	.type	__pend___clzsi2_963, @object
__pend___clzsi2_963:
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
	lw	$2,$L968
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
	neg	$2,$2
	sd	$2,40($sp)
	ld	$3,48($sp)
	ld	$2,40($sp)
	not	$2,$2
	and	$3,$2
	ld	$4,56($sp)
	ld	$2,40($sp)
	and	$2,$4
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
	.type	__pool___clzti2_968, @object
__pool___clzti2_968:
	.align	2
$L968:
	.word	__gnu_local_gp
	.type	__pend___clzti2_968, @object
__pend___clzti2_968:
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
	beqz	$2,$L970
	li	$2,0
	b	$L975
$L970:
	lw	$3,8($sp)
	lw	$2,16($sp)
	slt	$2,$3
	move	$2,$24
	beqz	$2,$L972
	li	$2,2
	b	$L975
$L972:
	lw	$3,12($sp)
	lw	$2,20($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L973
	li	$2,0
	b	$L975
$L973:
	lw	$3,12($sp)
	lw	$2,20($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L974
	li	$2,2
	b	$L975
$L974:
	li	$2,1
$L975:
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
	beqz	$2,$L981
	li	$2,0
	b	$L986
$L981:
	ld	$3,8($sp)
	ld	$2,24($sp)
	slt	$2,$3
	move	$2,$24
	beqz	$2,$L983
	li	$2,2
	b	$L986
$L983:
	ld	$3,16($sp)
	ld	$2,32($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L984
	li	$2,0
	b	$L986
$L984:
	ld	$3,16($sp)
	ld	$2,32($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L985
	li	$2,2
	b	$L986
$L985:
	li	$2,1
$L986:
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
	.frame	$sp,64,$31		# vars= 56, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-64
	sw	$4,64($sp)
	lw	$2,64($sp)
	sw	$2,8($sp)
	lw	$3,8($sp)
	li	$2,65535
	and	$2,$3
	bnez	$2,$L989
	li	$2,16
	b	$L990
$L989:
	li	$2,0
$L990:
	sw	$2,12($sp)
	lw	$2,8($sp)
	lw	$3,12($sp)
	srl	$2,$3
	sw	$2,16($sp)
	lw	$2,12($sp)
	sw	$2,20($sp)
	lw	$3,16($sp)
	li	$2,255
	and	$2,$3
	bnez	$2,$L991
	li	$2,8
	b	$L992
$L991:
	li	$2,0
$L992:
	sw	$2,24($sp)
	lw	$2,16($sp)
	lw	$3,24($sp)
	srl	$2,$3
	sw	$2,28($sp)
	lw	$3,20($sp)
	lw	$2,24($sp)
	addu	$2,$3,$2
	sw	$2,32($sp)
	lw	$3,28($sp)
	li	$2,15
	and	$2,$3
	bnez	$2,$L993
	li	$2,4
	b	$L994
$L993:
	li	$2,0
$L994:
	sw	$2,36($sp)
	lw	$2,28($sp)
	lw	$3,36($sp)
	srl	$2,$3
	sw	$2,40($sp)
	lw	$3,32($sp)
	lw	$2,36($sp)
	addu	$2,$3,$2
	sw	$2,44($sp)
	lw	$3,40($sp)
	li	$2,3
	and	$2,$3
	bnez	$2,$L995
	li	$2,2
	b	$L996
$L995:
	li	$2,0
$L996:
	sw	$2,48($sp)
	lw	$2,40($sp)
	lw	$3,48($sp)
	srl	$2,$3
	sw	$2,52($sp)
	lw	$3,52($sp)
	li	$2,3
	and	$2,$3
	sw	$2,56($sp)
	lw	$3,44($sp)
	lw	$2,48($sp)
	addu	$2,$3,$2
	sw	$2,60($sp)
	lw	$2,56($sp)
	srl	$2,$2,1
	li	$3,2
	subu	$2,$3,$2
	lw	$3,56($sp)
	not	$4,$3
	li	$3,1
	and	$3,$4
	neg	$3,$3
	and	$3,$2
	lw	$2,60($sp)
	addu	$2,$3,$2
	addiu	$sp,64
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
	lw	$2,$L1002
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
	neg	$2,$2
	sd	$2,40($sp)
	ld	$3,48($sp)
	ld	$2,40($sp)
	and	$3,$2
	ld	$4,56($sp)
	ld	$2,40($sp)
	not	$2,$2
	and	$2,$4
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
	.type	__pool___ctzti2_1002, @object
__pool___ctzti2_1002:
	.align	2
$L1002:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_1002, @object
__pend___ctzti2_1002:
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
	lw	$2,$L1009
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
	bnez	$2,$L1004
	ld	$2,40($sp)
	bnez	$2,$L1005
	li	$2,0
	b	$L1007
$L1005:
	ld	$3,40($sp)
	lw	$2,%call16(__ctzdi2)($6)
	move	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	addiu	$2,65
	b	$L1007
$L1004:
	lw	$2,%call16(__ctzdi2)($6)
	ld	$4,48($sp)
	move	$25,$2
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	addiu	$2,1
$L1007:
	ld	$7,56($sp)
	addiu	$sp,64
	jr	$7
	.type	__pool___ffsti2_1009, @object
__pool___ffsti2_1009:
	.align	2
$L1009:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_1009, @object
__pend___ffsti2_1009:
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
	beqz	$2,$L1011
	li	$2,0
	sw	$2,24($sp)
	lw	$2,16($sp)
	lw	$4,40($sp)
	lw	$3,8($sp)
	subu	$3,$4,$3
	srl	$2,$3
	sw	$2,28($sp)
	b	$L1012
$L1011:
	lw	$2,40($sp)
	bnez	$2,$L1013
	ld	$2,32($sp)
	b	$L1015
$L1013:
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
$L1012:
	ld	$2,24($sp)
$L1015:
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
	beqz	$2,$L1018
	li	$2,0
	sd	$2,32($sp)
	ld	$2,16($sp)
	lw	$4,64($sp)
	lw	$3,8($sp)
	subu	$3,$4,$3
	dsrl	$2,$3
	sd	$2,40($sp)
	b	$L1019
$L1018:
	lw	$2,64($sp)
	bnez	$2,$L1020
	move	$2,$sp
	ld	$3,56($2)
	ld	$2,48($2)
	b	$L1022
$L1020:
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
$L1019:
	move	$2,$sp
	ld	$3,40($2)
	ld	$2,32($2)
$L1022:
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
	.frame	$sp,40,$31		# vars= 32, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-40
	sw	$4,40($sp)
	sw	$5,48($sp)
	li	$2,16
	sw	$2,8($sp)
	li	$2,1
	neg	$2,$2
	lw	$3,8($sp)
	srl	$2,$3
	sw	$2,12($sp)
	lw	$3,40($sp)
	lw	$2,12($sp)
	and	$3,$2
	lw	$4,48($sp)
	lw	$2,12($sp)
	and	$2,$4
	mult	$3,$2
	mflo	$2
	sw	$2,36($sp)
	lw	$2,36($sp)
	lw	$3,8($sp)
	srl	$2,$3
	sw	$2,16($sp)
	lw	$2,36($sp)
	lw	$3,12($sp)
	and	$2,$3
	sw	$2,36($sp)
	lw	$3,40($sp)
	lw	$2,8($sp)
	srl	$3,$2
	lw	$4,48($sp)
	lw	$2,12($sp)
	and	$2,$4
	mult	$3,$2
	mflo	$2
	lw	$3,16($sp)
	addu	$2,$3,$2
	sw	$2,20($sp)
	lw	$3,36($sp)
	lw	$4,20($sp)
	lw	$2,12($sp)
	and	$2,$4
	lw	$4,8($sp)
	sll	$2,$4
	addu	$2,$3,$2
	sw	$2,36($sp)
	lw	$2,20($sp)
	lw	$3,8($sp)
	srl	$2,$3
	sw	$2,32($sp)
	lw	$2,36($sp)
	lw	$3,8($sp)
	srl	$2,$3
	sw	$2,24($sp)
	lw	$2,36($sp)
	lw	$3,12($sp)
	and	$2,$3
	sw	$2,36($sp)
	lw	$3,48($sp)
	lw	$2,8($sp)
	srl	$3,$2
	lw	$4,40($sp)
	lw	$2,12($sp)
	and	$2,$4
	mult	$3,$2
	mflo	$2
	lw	$3,24($sp)
	addu	$2,$3,$2
	sw	$2,28($sp)
	lw	$3,36($sp)
	lw	$4,28($sp)
	lw	$2,12($sp)
	and	$2,$4
	lw	$4,8($sp)
	sll	$2,$4
	addu	$2,$3,$2
	sw	$2,36($sp)
	lw	$3,32($sp)
	lw	$2,28($sp)
	lw	$4,8($sp)
	srl	$2,$4
	addu	$2,$3,$2
	sw	$2,32($sp)
	lw	$3,32($sp)
	lw	$4,40($sp)
	lw	$2,8($sp)
	srl	$4,$2
	lw	$2,48($sp)
	lw	$5,8($sp)
	srl	$2,$5
	mult	$4,$2
	mflo	$2
	addu	$2,$3,$2
	sw	$2,32($sp)
	ld	$2,32($sp)
	addiu	$sp,40
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
	lw	$3,52($sp)
	lw	$2,44($sp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__muldsi3
	.option	pic2
	sd	$2,56($sp)
	lw	$3,56($sp)
	lw	$4,40($sp)
	lw	$2,52($sp)
	mult	$4,$2
	mflo	$4
	lw	$5,44($sp)
	lw	$2,48($sp)
	mult	$5,$2
	mflo	$2
	addu	$2,$4,$2
	addu	$2,$3,$2
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
	.frame	$sp,72,$31		# vars= 64, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-72
	sd	$4,72($sp)
	sd	$5,80($sp)
	li	$2,32
	sw	$2,8($sp)
	li	$2,1
	neg	$2,$2
	lw	$3,8($sp)
	dsrl	$2,$3
	sd	$2,16($sp)
	ld	$3,72($sp)
	ld	$2,16($sp)
	and	$3,$2
	ld	$4,80($sp)
	ld	$2,16($sp)
	and	$2,$4
	dmult	$3,$2
	mflo	$2
	sd	$2,64($sp)
	ld	$2,64($sp)
	lw	$3,8($sp)
	dsrl	$2,$3
	sd	$2,24($sp)
	ld	$2,64($sp)
	ld	$3,16($sp)
	and	$2,$3
	sd	$2,64($sp)
	ld	$3,72($sp)
	lw	$2,8($sp)
	dsrl	$3,$2
	ld	$4,80($sp)
	ld	$2,16($sp)
	and	$2,$4
	dmult	$3,$2
	mflo	$2
	ld	$3,24($sp)
	daddu	$2,$3,$2
	sd	$2,32($sp)
	ld	$3,64($sp)
	ld	$4,32($sp)
	ld	$2,16($sp)
	and	$2,$4
	lw	$4,8($sp)
	dsll	$2,$4
	daddu	$2,$3,$2
	sd	$2,64($sp)
	ld	$2,32($sp)
	lw	$3,8($sp)
	dsrl	$2,$3
	sd	$2,56($sp)
	ld	$2,64($sp)
	lw	$3,8($sp)
	dsrl	$2,$3
	sd	$2,40($sp)
	ld	$2,64($sp)
	ld	$3,16($sp)
	and	$2,$3
	sd	$2,64($sp)
	ld	$3,80($sp)
	lw	$2,8($sp)
	dsrl	$3,$2
	ld	$4,72($sp)
	ld	$2,16($sp)
	and	$2,$4
	dmult	$3,$2
	mflo	$2
	ld	$3,40($sp)
	daddu	$2,$3,$2
	sd	$2,48($sp)
	ld	$3,64($sp)
	ld	$4,48($sp)
	ld	$2,16($sp)
	and	$2,$4
	lw	$4,8($sp)
	dsll	$2,$4
	daddu	$2,$3,$2
	sd	$2,64($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	lw	$4,8($sp)
	dsrl	$2,$4
	daddu	$2,$3,$2
	sd	$2,56($sp)
	ld	$3,56($sp)
	ld	$4,72($sp)
	lw	$2,8($sp)
	dsrl	$4,$2
	ld	$2,80($sp)
	lw	$5,8($sp)
	dsrl	$2,$5
	dmult	$4,$2
	mflo	$2
	daddu	$2,$3,$2
	sd	$2,56($sp)
	move	$2,$sp
	ld	$3,64($2)
	ld	$2,56($2)
	addiu	$sp,72
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
	ld	$3,64($sp)
	ld	$2,48($sp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__mulddi3
	.option	pic2
	move	$4,$sp
	sd	$3,80($4)
	sd	$2,72($4)
	ld	$3,72($sp)
	ld	$4,40($sp)
	ld	$2,64($sp)
	dmult	$4,$2
	mflo	$4
	ld	$5,48($sp)
	ld	$2,56($sp)
	dmult	$5,$2
	mflo	$2
	daddu	$2,$4,$2
	daddu	$2,$3,$2
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$sp
	sd	$5,8($2)
	sd	$4,0($2)
	ld	$5,0($sp)
	ld	$7,8($sp)
	li	$6,0
	li	$4,0
	dsubu	$3,$4,$7
	sltu	$4,$3
	move	$2,$24
	dsll	$4,$2,32
	dsrl	$4,32
	dsubu	$2,$6,$5
	dsubu	$2,$2,$4
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
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$4,32($sp)
	ld	$2,32($sp)
	sd	$2,24($sp)
	lw	$3,24($sp)
	lw	$2,28($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,12($sp)
	lw	$2,12($sp)
	srl	$2,$2,8
	lw	$3,12($sp)
	xor	$2,$3
	sw	$2,16($sp)
	lw	$2,16($sp)
	srl	$2,$2,4
	lw	$3,16($sp)
	xor	$2,$3
	sw	$2,20($sp)
	lw	$3,20($sp)
	li	$2,15
	and	$2,$3
	li	$3,27030
	sra	$3,$2
	li	$2,1
	and	$2,$3
	addiu	$sp,32
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
	.frame	$sp,48,$31		# vars= 40, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-48
	move	$2,$sp
	sd	$5,56($2)
	sd	$4,48($2)
	move	$2,$sp
	ld	$3,56($2)
	ld	$2,48($2)
	move	$4,$sp
	sd	$3,32($4)
	sd	$2,24($4)
	ld	$3,24($sp)
	ld	$2,32($sp)
	xor	$2,$3
	sd	$2,40($sp)
	lw	$3,40($sp)
	lw	$2,44($sp)
	xor	$2,$3
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,12($sp)
	lw	$2,12($sp)
	srl	$2,$2,8
	lw	$3,12($sp)
	xor	$2,$3
	sw	$2,16($sp)
	lw	$2,16($sp)
	srl	$2,$2,4
	lw	$3,16($sp)
	xor	$2,$3
	sw	$2,20($sp)
	lw	$3,20($sp)
	li	$2,15
	and	$2,$3
	li	$3,27030
	sra	$3,$2
	li	$2,1
	and	$2,$3
	addiu	$sp,48
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
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-24
	sw	$4,24($sp)
	lw	$2,24($sp)
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,8($sp)
	xor	$2,$3
	sw	$2,12($sp)
	lw	$2,12($sp)
	srl	$2,$2,8
	lw	$3,12($sp)
	xor	$2,$3
	sw	$2,16($sp)
	lw	$2,16($sp)
	srl	$2,$2,4
	lw	$3,16($sp)
	xor	$2,$3
	sw	$2,20($sp)
	lw	$3,20($sp)
	li	$2,15
	and	$2,$3
	li	$3,27030
	sra	$3,$2
	li	$2,1
	and	$2,$3
	addiu	$sp,24
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
	.frame	$sp,48,$31		# vars= 40, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$4,48($sp)
	ld	$2,48($sp)
	sd	$2,8($sp)
	ld	$2,8($sp)
	dsrl	$2,1
	move	$3,$2
	ld	$2,$L1053
	and	$2,$3
	ld	$3,8($sp)
	dsubu	$2,$3,$2
	sd	$2,16($sp)
	ld	$2,16($sp)
	dsrl	$2,2
	move	$3,$2
	ld	$2,$L1054
	and	$3,$2
	ld	$4,16($sp)
	ld	$2,$L1054
	and	$2,$4
	daddu	$2,$3,$2
	sd	$2,24($sp)
	ld	$2,24($sp)
	dsrl	$2,4
	move	$3,$2
	ld	$2,24($sp)
	daddu	$3,$3,$2
	ld	$2,$L1055
	and	$2,$3
	sd	$2,32($sp)
	ld	$2,32($sp)
	sll	$3,$2,0
	ld	$2,32($sp)
	dsrl	$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,40($sp)
	lw	$2,40($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,40($sp)
	addu	$2,$3,$2
	sw	$2,44($sp)
	lw	$2,44($sp)
	srl	$3,$2,8
	lw	$2,44($sp)
	addu	$3,$3,$2
	li	$2,127
	and	$2,$3
	addiu	$sp,48
	jr	$31
	.type	__pool___popcountdi2_1052, @object
__pool___popcountdi2_1052:
	.align	2
$L1052:
	.word	__gnu_local_gp
	.align	3
$L1053:
	.dword	6148914691236517205
$L1054:
	.dword	3689348814741910323
$L1055:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_1052, @object
__pend___popcountdi2_1052:
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.set	mips16
	.set	nomicromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$sp,32,$31		# vars= 24, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-32
	sw	$4,32($sp)
	lw	$2,32($sp)
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$3,$2,1
	lw	$2,$L1060
	and	$2,$3
	lw	$3,8($sp)
	subu	$2,$3,$2
	sw	$2,12($sp)
	lw	$2,12($sp)
	srl	$3,$2,2
	lw	$2,$L1061
	and	$3,$2
	lw	$4,12($sp)
	lw	$2,$L1061
	and	$2,$4
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,16($sp)
	srl	$3,$2,4
	lw	$2,16($sp)
	addu	$3,$3,$2
	lw	$2,$L1062
	and	$2,$3
	sw	$2,20($sp)
	lw	$2,20($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,20($sp)
	addu	$2,$3,$2
	sw	$2,24($sp)
	lw	$2,24($sp)
	srl	$3,$2,8
	lw	$2,24($sp)
	addu	$3,$3,$2
	li	$2,63
	and	$2,$3
	addiu	$sp,32
	jr	$31
	.type	__pool___popcountsi2_1059, @object
__pool___popcountsi2_1059:
	.align	2
$L1059:
	.word	__gnu_local_gp
$L1060:
	.word	1431655765
$L1061:
	.word	858993459
$L1062:
	.word	252645135
	.type	__pend___popcountsi2_1059, @object
__pend___popcountsi2_1059:
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.set	mips16
	.set	nomicromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$sp,88,$31		# vars= 80, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,-88
	move	$2,$sp
	sd	$5,96($2)
	sd	$4,88($2)
	move	$2,$sp
	ld	$3,96($2)
	ld	$2,88($2)
	move	$4,$sp
	sd	$3,16($4)
	sd	$2,8($4)
	ld	$2,8($sp)
	dsll	$3,$2,63
	ld	$2,16($sp)
	dsrl	$2,1
	or	$2,$3
	ld	$3,8($sp)
	dsrl	$3,1
	move	$4,$3
	ld	$3,$L1067
	and	$4,$3
	move	$5,$4
	ld	$3,$L1067
	and	$2,$3
	move	$7,$2
	ld	$6,8($sp)
	ld	$4,16($sp)
	dsubu	$3,$4,$7
	sltu	$4,$3
	move	$2,$24
	dsll	$4,$2,32
	dsrl	$4,32
	dsubu	$2,$6,$5
	dsubu	$2,$2,$4
	sd	$2,24($sp)
	sd	$3,32($sp)
	ld	$2,24($sp)
	dsll	$3,$2,62
	ld	$2,32($sp)
	dsrl	$2,2
	or	$2,$3
	ld	$3,24($sp)
	dsrl	$3,2
	move	$4,$3
	ld	$3,$L1068
	and	$4,$3
	move	$6,$4
	ld	$3,$L1068
	and	$2,$3
	move	$4,$2
	ld	$3,24($sp)
	ld	$2,$L1068
	and	$3,$2
	move	$5,$3
	ld	$3,32($sp)
	ld	$2,$L1068
	and	$3,$2
	move	$7,$3
	daddu	$3,$4,$7
	sltu	$3,$4
	move	$2,$24
	dsll	$4,$2,32
	dsrl	$4,32
	daddu	$2,$6,$5
	daddu	$2,$4,$2
	sd	$2,40($sp)
	sd	$3,48($sp)
	ld	$2,40($sp)
	dsll	$3,$2,60
	ld	$2,48($sp)
	dsrl	$2,4
	or	$2,$3
	ld	$3,40($sp)
	dsrl	$3,4
	move	$6,$3
	ld	$5,40($sp)
	ld	$7,48($sp)
	daddu	$4,$2,$7
	sltu	$4,$2
	move	$2,$24
	dsll	$2,$2,32
	dsrl	$2,32
	daddu	$3,$6,$5
	daddu	$2,$2,$3
	move	$3,$2
	move	$5,$3
	move	$3,$4
	ld	$2,$L1069
	and	$2,$5
	sd	$2,56($sp)
	ld	$2,$L1069
	and	$2,$3
	sd	$2,64($sp)
	ld	$2,64($sp)
	ld	$3,56($sp)
	dsrl	$3,0
	daddu	$2,$2,$3
	sd	$2,72($sp)
	ld	$2,72($sp)
	sll	$3,$2,0
	ld	$2,72($sp)
	dsrl	$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,80($sp)
	lw	$2,80($sp)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,80($sp)
	addu	$2,$3,$2
	sw	$2,84($sp)
	lw	$2,84($sp)
	srl	$3,$2,8
	lw	$2,84($sp)
	addu	$3,$3,$2
	li	$2,255
	and	$2,$3
	addiu	$sp,88
	jr	$31
	.type	__pool___popcountti2_1066, @object
__pool___popcountti2_1066:
	.align	2
$L1066:
	.word	__gnu_local_gp
	.align	3
$L1067:
	.dword	6148914691236517205
$L1068:
	.dword	3689348814741910323
$L1069:
	.dword	1085102592571150095
	.type	__pend___popcountti2_1066, @object
__pend___popcountti2_1066:
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
	lw	$2,$L1081
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sd	$4,72($sp)
	sw	$5,80($sp)
	lw	$2,80($sp)
	srl	$2,$2,31
	zeb	$2
	sw	$2,48($sp)
	ld	$2,$L1082
	sd	$2,40($sp)
$L1074:
	lw	$3,80($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L1071
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,72($sp)
	ld	$4,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,40($sp)
$L1071:
	lw	$2,80($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,80($sp)
	lw	$2,80($sp)
	beqz	$2,$L1079
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,72($sp)
	ld	$4,72($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sd	$2,72($sp)
	b	$L1074
$L1079:
	.set	noreorder
	nop
	.set	reorder
	lw	$2,48($sp)
	beqz	$2,$L1075
	lw	$2,%call16(__mips16_divdf3)($16)
	ld	$5,40($sp)
	ld	$4,$L1082
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	b	$L1077
$L1075:
	ld	$2,40($sp)
$L1077:
	.set	noreorder
	nop
	.set	reorder
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,64($sp)
	ld	$16,56($sp)
	addiu	$sp,72
	jr	$7
	.type	__pool___powidf2_1081, @object
__pool___powidf2_1081:
	.align	2
$L1081:
	.word	__gnu_local_gp
	.align	3
$L1082:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_1081, @object
__pend___powidf2_1081:
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
	lw	$2,$L1094
	move	$28,$2
	sw	$2,32($sp)
	move	$16,$28
	sw	$4,64($sp)
	sw	$5,72($sp)
	lw	$2,72($sp)
	srl	$2,$2,31
	zeb	$2
	sw	$2,44($sp)
	lw	$2,$L1095
	sw	$2,40($sp)
$L1087:
	lw	$3,72($sp)
	li	$2,1
	and	$2,$3
	beqz	$2,$L1084
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,64($sp)
	lw	$4,40($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sw	$2,40($sp)
$L1084:
	lw	$2,72($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,72($sp)
	lw	$2,72($sp)
	beqz	$2,$L1092
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,64($sp)
	lw	$4,64($sp)
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	sw	$2,64($sp)
	b	$L1087
$L1092:
	.set	noreorder
	nop
	.set	reorder
	lw	$2,44($sp)
	beqz	$2,$L1088
	lw	$2,%call16(__mips16_divsf3)($16)
	lw	$5,40($sp)
	lw	$4,$L1095
	jalr	$2
	lw	$6,32($sp)
	move	$28,$6
	b	$L1090
$L1088:
	lw	$2,40($sp)
$L1090:
	.set	noreorder
	nop
	.set	reorder
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,32($sp)
	move	$28,$6
	ld	$7,56($sp)
	ld	$16,48($sp)
	addiu	$sp,64
	jr	$7
	.type	__pool___powisf2_1094, @object
__pool___powisf2_1094:
	.align	2
$L1094:
	.word	__gnu_local_gp
$L1095:
	.word	1065353216
	.type	__pend___powisf2_1094, @object
__pend___powisf2_1094:
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
	beqz	$2,$L1097
	li	$2,0
	b	$L1102
$L1097:
	lw	$3,8($sp)
	lw	$2,16($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L1099
	li	$2,2
	b	$L1102
$L1099:
	lw	$3,12($sp)
	lw	$2,20($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L1100
	li	$2,0
	b	$L1102
$L1100:
	lw	$3,12($sp)
	lw	$2,20($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L1101
	li	$2,2
	b	$L1102
$L1101:
	li	$2,1
$L1102:
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
	ld	$3,56($sp)
	ld	$2,48($sp)
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
	beqz	$2,$L1108
	li	$2,0
	b	$L1113
$L1108:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L1110
	li	$2,2
	b	$L1113
$L1110:
	ld	$3,16($sp)
	ld	$2,32($sp)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L1111
	li	$2,0
	b	$L1113
$L1111:
	ld	$3,16($sp)
	ld	$2,32($sp)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L1112
	li	$2,2
	b	$L1113
$L1112:
	li	$2,1
$L1113:
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
