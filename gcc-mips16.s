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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sd	$4,32($17)
	sd	$5,40($17)
	ld	$2,32($17)
	sd	$2,8($17)
	ld	$2,40($17)
	sd	$2,16($17)
	ld	$3,16($17)
	ld	$2,8($17)
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sd	$4,32($17)
	sd	$5,40($17)
	ld	$2,32($17)
	sd	$2,8($17)
	ld	$2,40($17)
	sd	$2,16($17)
	ld	$3,16($17)
	ld	$2,8($17)
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,32($17)
	sw	$2,12($17)
	lw	$3,12($17)
	lw	$2,8($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L6
	lw	$3,12($17)
	lw	$2,40($17)
	addu	$2,$3,$2
	sw	$2,12($17)
	lw	$3,8($17)
	lw	$2,40($17)
	addu	$2,$3,$2
	sw	$2,8($17)
	b	$L7
$L8:
	lw	$2,12($17)
	addiu	$2,-1
	sw	$2,12($17)
	lw	$2,8($17)
	addiu	$2,-1
	sw	$2,8($17)
	lw	$2,12($17)
	lb	$3,0($2)
	lw	$2,8($17)
	sb	$3,0($2)
	lw	$2,40($17)
	addiu	$2,-1
	sw	$2,40($17)
$L7:
	lw	$2,40($17)
	bnez	$2,$L8
	b	$L9
$L6:
	lw	$3,12($17)
	lw	$2,8($17)
	xor	$2,$3
	beqz	$2,$L9
	b	$L10
$L11:
	lw	$3,12($17)
	addiu	$2,$3,1
	sw	$2,12($17)
	lw	$2,8($17)
	addiu	$4,$2,1
	sw	$4,8($17)
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,40($17)
	addiu	$2,-1
	sw	$2,40($17)
$L10:
	lw	$2,40($17)
	bnez	$2,$L11
$L9:
	lw	$2,24($17)
	move	$sp,$17
	ld	$17,16($sp)
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	sw	$7,48($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,32($17)
	sw	$2,12($17)
	lw	$2,40($17)
	zeb	$2
	sw	$2,40($17)
	b	$L14
$L16:
	lw	$2,48($17)
	addiu	$2,-1
	sw	$2,48($17)
	lw	$2,12($17)
	addiu	$2,1
	sw	$2,12($17)
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L14:
	lw	$2,48($17)
	beqz	$2,$L15
	lw	$2,12($17)
	lbu	$3,0($2)
	lw	$2,8($17)
	sb	$3,0($2)
	lw	$2,8($17)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,40($17)
	xor	$2,$3
	bnez	$2,$L16
$L15:
	lw	$2,48($17)
	beqz	$2,$L17
	lw	$2,8($17)
	addiu	$2,1
	b	$L18
$L17:
	li	$2,0
$L18:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,32($17)
	zeb	$2
	sw	$2,32($17)
	b	$L20
$L22:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
	lw	$2,40($17)
	addiu	$2,-1
	sw	$2,40($17)
$L20:
	lw	$2,40($17)
	beqz	$2,$L21
	lw	$2,8($17)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,32($17)
	xor	$2,$3
	bnez	$2,$L22
$L21:
	lw	$2,40($17)
	beqz	$2,$L23
	lw	$2,8($17)
	b	$L25
$L23:
	li	$2,0
$L25:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,32($17)
	sw	$2,12($17)
	b	$L27
$L29:
	lw	$2,40($17)
	addiu	$2,-1
	sw	$2,40($17)
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
	lw	$2,12($17)
	addiu	$2,1
	sw	$2,12($17)
$L27:
	lw	$2,40($17)
	beqz	$2,$L28
	lw	$2,8($17)
	lbu	$3,0($2)
	lw	$2,12($17)
	lbu	$2,0($2)
	xor	$2,$3
	beqz	$2,$L29
$L28:
	lw	$2,40($17)
	beqz	$2,$L30
	lw	$2,8($17)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,12($17)
	lbu	$2,0($2)
	subu	$2,$3,$2
	b	$L32
$L30:
	li	$2,0
$L32:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,32($17)
	sw	$2,12($17)
	b	$L34
$L35:
	lw	$3,12($17)
	addiu	$2,$3,1
	sw	$2,12($17)
	lw	$2,8($17)
	addiu	$4,$2,1
	sw	$4,8($17)
	lbu	$3,0($3)
	sb	$3,0($2)
	lw	$2,40($17)
	addiu	$2,-1
	sw	$2,40($17)
$L34:
	lw	$2,40($17)
	bnez	$2,$L35
	lw	$2,24($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,32($17)
	zeb	$2
	sw	$2,32($17)
	b	$L38
$L40:
	lw	$3,8($17)
	lw	$2,40($17)
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,32($17)
	xor	$2,$3
	bnez	$2,$L38
	lw	$3,8($17)
	lw	$2,40($17)
	addu	$2,$3,$2
	b	$L39
$L38:
	lw	$2,40($17)
	addiu	$3,$2,-1
	sw	$3,40($17)
	bnez	$2,$L40
	li	$2,0
$L39:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	b	$L42
$L43:
	lw	$2,32($17)
	move	$3,$2
	zeb	$3
	lw	$2,8($17)
	sb	$3,0($2)
	lw	$2,40($17)
	addiu	$2,-1
	sw	$2,40($17)
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L42:
	lw	$2,40($17)
	bnez	$2,$L43
	lw	$2,24($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	b	$L46
$L47:
	lw	$2,16($17)
	addiu	$2,1
	sw	$2,16($17)
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L46:
	lw	$2,16($17)
	lb	$3,0($2)
	lw	$2,8($17)
	sb	$3,0($2)
	lw	$2,8($17)
	lb	$2,0($2)
	bnez	$2,$L47
	lw	$2,8($17)
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	lw	$2,16($17)
	zeb	$2
	sw	$2,16($17)
	b	$L50
$L52:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L50:
	lw	$2,8($17)
	lb	$2,0($2)
	beqz	$2,$L51
	lw	$2,8($17)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,16($17)
	xor	$2,$3
	bnez	$2,$L52
$L51:
	lw	$2,8($17)
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	sw	$5,16($17)
$L57:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,16($17)
	xor	$3,$4
	bnez	$3,$L55
	b	$L56
$L55:
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	bnez	$3,$L57
	li	$2,0
$L56:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	b	$L59
$L61:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
	lw	$2,16($17)
	addiu	$2,1
	sw	$2,16($17)
$L59:
	lw	$2,8($17)
	lb	$3,0($2)
	lw	$2,16($17)
	lb	$2,0($2)
	xor	$2,$3
	bnez	$2,$L60
	lw	$2,8($17)
	lb	$2,0($2)
	bnez	$2,$L61
$L60:
	lw	$2,8($17)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,16($17)
	lbu	$2,0($2)
	subu	$2,$3,$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	lw	$2,24($17)
	sw	$2,8($17)
	b	$L64
$L65:
	lw	$2,24($17)
	addiu	$2,1
	sw	$2,24($17)
$L64:
	lw	$2,24($17)
	lb	$2,0($2)
	bnez	$2,$L65
	lw	$3,24($17)
	lw	$2,8($17)
	subu	$2,$3,$2
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,32($17)
	sw	$2,12($17)
	lw	$2,40($17)
	addiu	$3,$2,-1
	sw	$3,40($17)
	bnez	$2,$L70
	li	$2,0
	b	$L69
$L72:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
	lw	$2,12($17)
	addiu	$2,1
	sw	$2,12($17)
	lw	$2,40($17)
	addiu	$2,-1
	sw	$2,40($17)
$L70:
	lw	$2,8($17)
	lbu	$2,0($2)
	beqz	$2,$L71
	lw	$2,12($17)
	lbu	$2,0($2)
	beqz	$2,$L71
	lw	$2,40($17)
	beqz	$2,$L71
	lw	$2,8($17)
	lbu	$3,0($2)
	lw	$2,12($17)
	lbu	$2,0($2)
	xor	$2,$3
	beqz	$2,$L72
$L71:
	lw	$2,8($17)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,12($17)
	lbu	$2,0($2)
	subu	$2,$3,$2
$L69:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,32($17)
	sw	$2,12($17)
	b	$L74
$L75:
	lw	$2,8($17)
	addiu	$2,1
	lb	$3,0($2)
	lw	$2,12($17)
	sb	$3,0($2)
	lw	$2,12($17)
	addiu	$2,1
	lw	$3,8($17)
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,12($17)
	addiu	$2,2
	sw	$2,12($17)
	lw	$2,8($17)
	addiu	$2,2
	sw	$2,8($17)
	lw	$2,40($17)
	addiu	$2,-2
	sw	$2,40($17)
$L74:
	lw	$2,40($17)
	slt	$2,2
	move	$2,$24
	beqz	$2,$L75
	.set	noreorder
	nop
	.set	reorder
	.set	noreorder
	nop
	.set	reorder
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$3,8($17)
	li	$2,32
	or	$2,$3
	addiu	$2,-97
	sltu	$2,26
	move	$2,$24
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	sltu	$2,128
	move	$2,$24
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	li	$3,32
	xor	$2,$3
	beqz	$2,$L81
	lw	$2,8($17)
	li	$3,9
	xor	$2,$3
	bnez	$2,$L82
$L81:
	li	$2,1
	b	$L84
$L82:
	li	$2,0
$L84:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	sltu	$2,32
	move	$2,$24
	bnez	$2,$L86
	lw	$2,8($17)
	li	$3,127
	xor	$2,$3
	bnez	$2,$L87
$L86:
	li	$2,1
	b	$L89
$L87:
	li	$2,0
$L89:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	addiu	$2,-33
	sltu	$2,94
	move	$2,$24
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	addiu	$2,-97
	sltu	$2,26
	move	$2,$24
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	addiu	$2,-32
	sltu	$2,95
	move	$2,$24
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	li	$3,32
	xor	$2,$3
	beqz	$2,$L99
	lw	$2,8($17)
	addiu	$2,-9
	sltu	$2,5
	move	$2,$24
	beqz	$2,$L100
$L99:
	li	$2,1
	b	$L102
$L100:
	li	$2,0
$L102:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	addiu	$2,-65
	sltu	$2,26
	move	$2,$24
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	sltu	$2,32
	move	$2,$24
	bnez	$2,$L106
	lw	$2,8($17)
	addiu	$2,-127
	sltu	$2,33
	move	$2,$24
	bnez	$2,$L106
	lw	$2,8($17)
	addiu	$2,-8232
	sltu	$2,2
	move	$2,$24
	bnez	$2,$L106
	lw	$3,8($17)
	li	$2,65529
	neg	$2,$2
	addu	$2,$3,$2
	sltu	$2,3
	move	$2,$24
	beqz	$2,$L107
$L106:
	li	$2,1
	b	$L109
$L107:
	li	$2,0
$L109:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	sltu	$2,255
	move	$2,$24
	beqz	$2,$L113
	lw	$2,8($17)
	addiu	$3,$2,1
	li	$2,127
	and	$2,$3
	sltu	$2,33
	move	$2,$24
	li	$3,1
	xor	$2,$3
	zeb	$2
	b	$L114
$L113:
	lw	$2,8($17)
	sltu	$2,8232
	move	$2,$24
	bnez	$2,$L115
	lw	$2,8($17)
	addiu	$3,$2,-8234
	li	$2,47062
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L115
	lw	$3,8($17)
	li	$2,57344
	neg	$2,$2
	addu	$2,$3,$2
	sltu	$2,8185
	move	$2,$24
	beqz	$2,$L116
$L115:
	li	$2,1
	b	$L114
$L116:
	lw	$3,8($17)
	li	$2,65532
	neg	$2,$2
	addu	$3,$3,$2
	lw	$2,$L120
	sltu	$2,$3
	move	$2,$24
	bnez	$2,$L117
	lw	$3,8($17)
	li	$2,65534
	and	$2,$3
	li	$3,65534
	xor	$2,$3
	bnez	$2,$L118
$L117:
	li	$2,0
	b	$L114
$L118:
	li	$2,1
$L114:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool_iswprint_119, @object
__pool_iswprint_119:
	.align	2
$L119:
	.word	__gnu_local_gp
$L120:
	.word	1048579
	.type	__pend_iswprint_119, @object
__pend_iswprint_119:
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.set	mips16
	.set	nomicromips
	.ent	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	bnez	$2,$L122
	lw	$3,8($17)
	li	$2,32
	or	$2,$3
	addiu	$2,-97
	sltu	$2,6
	move	$2,$24
	beqz	$2,$L123
$L122:
	li	$2,1
	b	$L125
$L123:
	li	$2,0
$L125:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$3,8($17)
	li	$2,127
	and	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L143
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,32($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L140
	ld	$2,32($17)
	b	$L131
$L140:
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L141
	ld	$2,40($17)
	b	$L131
$L141:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,40($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L142
	lw	$2,%call16(__mips16_subdf3)($16)
	ld	$5,40($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	b	$L131
$L142:
	ld	$2,$L144
$L131:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fdim_143, @object
__pool_fdim_143:
	.align	2
$L143:
	.word	__gnu_local_gp
	.align	3
$L144:
	.word	0
	.word	0
	.type	__pend_fdim_143, @object
__pend_fdim_143:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L160
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	sw	$5,40($17)
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,32($17)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L157
	lw	$2,32($17)
	b	$L148
$L157:
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,40($17)
	lw	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L158
	lw	$2,40($17)
	b	$L148
$L158:
	lw	$2,%call16(__mips16_gtsf2)($16)
	lw	$5,40($17)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L159
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,40($17)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	b	$L148
$L159:
	lw	$2,$L161
$L148:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fdimf_160, @object
__pool_fdimf_160:
	.align	2
$L160:
	.word	__gnu_local_gp
$L161:
	.word	0
	.type	__pend_fdimf_160, @object
__pend_fdimf_160:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L180
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,32($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L177
	ld	$2,40($17)
	b	$L165
$L177:
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L178
	ld	$2,32($17)
	b	$L165
$L178:
	ld	$2,32($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	move	$4,$2
	ld	$2,40($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L168
	ld	$2,32($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L169
	ld	$2,40($17)
	b	$L165
$L169:
	ld	$2,32($17)
	b	$L165
$L168:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,40($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L179
	ld	$2,40($17)
	b	$L165
$L179:
	ld	$2,32($17)
$L165:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fmax_180, @object
__pool_fmax_180:
	.align	2
$L180:
	.word	__gnu_local_gp
	.type	__pend_fmax_180, @object
__pend_fmax_180:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L199
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	sw	$5,40($17)
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,32($17)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L196
	lw	$2,40($17)
	b	$L184
$L196:
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,40($17)
	lw	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L197
	lw	$2,32($17)
	b	$L184
$L197:
	lw	$3,32($17)
	lw	$2,$L200
	and	$2,$3
	move	$4,$2
	lw	$3,40($17)
	lw	$2,$L200
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L187
	lw	$3,32($17)
	lw	$2,$L200
	and	$2,$3
	beqz	$2,$L188
	lw	$2,40($17)
	b	$L184
$L188:
	lw	$2,32($17)
	b	$L184
$L187:
	lw	$2,%call16(__mips16_ltsf2)($16)
	lw	$5,40($17)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L198
	lw	$2,40($17)
	b	$L184
$L198:
	lw	$2,32($17)
$L184:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fmaxf_199, @object
__pool_fmaxf_199:
	.align	2
$L199:
	.word	__gnu_local_gp
$L200:
	.word	-2147483648
	.type	__pend_fmaxf_199, @object
__pend_fmaxf_199:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L219
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,32($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L216
	ld	$2,40($17)
	b	$L204
$L216:
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L217
	ld	$2,32($17)
	b	$L204
$L217:
	ld	$2,32($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	move	$4,$2
	ld	$2,40($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L207
	ld	$2,32($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L208
	ld	$2,40($17)
	b	$L204
$L208:
	ld	$2,32($17)
	b	$L204
$L207:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,40($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L218
	ld	$2,40($17)
	b	$L204
$L218:
	ld	$2,32($17)
$L204:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fmaxl_219, @object
__pool_fmaxl_219:
	.align	2
$L219:
	.word	__gnu_local_gp
	.type	__pend_fmaxl_219, @object
__pend_fmaxl_219:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L238
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,32($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L235
	ld	$2,40($17)
	b	$L223
$L235:
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L236
	ld	$2,32($17)
	b	$L223
$L236:
	ld	$2,32($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	move	$4,$2
	ld	$2,40($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L226
	ld	$2,32($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L227
	ld	$2,32($17)
	b	$L223
$L227:
	ld	$2,40($17)
	b	$L223
$L226:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,40($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L237
	ld	$2,32($17)
	b	$L223
$L237:
	ld	$2,40($17)
$L223:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fmin_238, @object
__pool_fmin_238:
	.align	2
$L238:
	.word	__gnu_local_gp
	.type	__pend_fmin_238, @object
__pend_fmin_238:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L257
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	sw	$5,40($17)
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,32($17)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L254
	lw	$2,40($17)
	b	$L242
$L254:
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,40($17)
	lw	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L255
	lw	$2,32($17)
	b	$L242
$L255:
	lw	$3,32($17)
	lw	$2,$L258
	and	$2,$3
	move	$4,$2
	lw	$3,40($17)
	lw	$2,$L258
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L245
	lw	$3,32($17)
	lw	$2,$L258
	and	$2,$3
	beqz	$2,$L246
	lw	$2,32($17)
	b	$L242
$L246:
	lw	$2,40($17)
	b	$L242
$L245:
	lw	$2,%call16(__mips16_ltsf2)($16)
	lw	$5,40($17)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L256
	lw	$2,32($17)
	b	$L242
$L256:
	lw	$2,40($17)
$L242:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fminf_257, @object
__pool_fminf_257:
	.align	2
$L257:
	.word	__gnu_local_gp
$L258:
	.word	-2147483648
	.type	__pend_fminf_257, @object
__pend_fminf_257:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L277
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,32($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L274
	ld	$2,40($17)
	b	$L262
$L274:
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L275
	ld	$2,32($17)
	b	$L262
$L275:
	ld	$2,32($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	move	$4,$2
	ld	$2,40($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	xor	$2,$4
	beqz	$2,$L265
	ld	$2,32($17)
	dsrl	$2,63
	move	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L266
	ld	$2,32($17)
	b	$L262
$L266:
	ld	$2,40($17)
	b	$L262
$L265:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,40($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L276
	ld	$2,32($17)
	b	$L262
$L276:
	ld	$2,40($17)
$L262:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_fminl_277, @object
__pool_fminl_277:
	.align	2
$L277:
	.word	__gnu_local_gp
	.type	__pend_fminl_277, @object
__pend_fminl_277:
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	lw	$2,24($17)
	sw	$2,12($17)
	lw	$2,$L282
	sw	$2,8($17)
	b	$L279
$L280:
	lw	$3,12($17)
	li	$2,63
	and	$2,$3
	lw	$3,$L283
	addu	$2,$3,$2
	lb	$3,0($2)
	lw	$2,8($17)
	sb	$3,0($2)
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
	lw	$2,12($17)
	srl	$2,$2,6
	sw	$2,12($17)
$L279:
	lw	$2,12($17)
	bnez	$2,$L280
	lw	$2,8($17)
	li	$3,0
	sb	$3,0($2)
	lw	$2,$L282
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
	jr	$31
	.type	__pool_l64a_282, @object
__pool_l64a_282:
	.align	2
$L282:
	.word	s.0
$L283:
	.word	digits
	.type	__pend_l64a_282, @object
__pend_l64a_282:
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	addiu	$2,-1
	dsll	$3,$2,32
	dsrl	$3,32
	lw	$2,$L285
	sd	$3,0($2)
	.set	noreorder
	nop
	.set	reorder
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool_srand_285, @object
__pool_srand_285:
	.align	2
$L285:
	.word	seed
	.type	__pend_srand_285, @object
__pend_srand_285:
	.end	srand
	.size	srand, .-srand
	.align	2
	.globl	rand
	.set	mips16
	.set	nomicromips
	.ent	rand
	.type	rand, @function
rand:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	lw	$2,$L289
	ld	$3,0($2)
	ld	$2,$L290
	dmult	$3,$2
	mflo	$2
	daddiu	$3,$2,1
	lw	$2,$L289
	sd	$3,0($2)
	lw	$2,$L289
	ld	$2,0($2)
	dsrl	$2,33
	sll	$2,$2,0
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool_rand_288, @object
__pool_rand_288:
	.align	2
$L288:
	.word	__gnu_local_gp
$L289:
	.word	seed
	.align	3
$L290:
	.dword	6364136223846793005
	.type	__pend_rand_288, @object
__pend_rand_288:
	.end	rand
	.size	rand, .-rand
	.align	2
	.globl	insque
	.set	mips16
	.set	nomicromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,32($17)
	sw	$2,12($17)
	lw	$2,12($17)
	bnez	$2,$L292
	lw	$2,8($17)
	li	$3,0
	sw	$3,4($2)
	lw	$2,8($17)
	lw	$3,4($2)
	lw	$2,8($17)
	sw	$3,0($2)
	b	$L291
$L292:
	lw	$2,12($17)
	lw	$3,0($2)
	lw	$2,8($17)
	sw	$3,0($2)
	lw	$2,8($17)
	lw	$3,12($17)
	sw	$3,4($2)
	lw	$2,12($17)
	lw	$3,8($17)
	sw	$3,0($2)
	lw	$2,8($17)
	lw	$2,0($2)
	beqz	$2,$L291
	lw	$2,8($17)
	lw	$2,0($2)
	lw	$3,8($17)
	sw	$3,4($2)
$L291:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,8($17)
	lw	$2,0($2)
	beqz	$2,$L295
	lw	$2,8($17)
	lw	$2,0($2)
	lw	$3,8($17)
	lw	$3,4($3)
	sw	$3,4($2)
$L295:
	lw	$2,8($17)
	lw	$2,4($2)
	beqz	$2,$L297
	lw	$2,8($17)
	lw	$2,4($2)
	lw	$3,8($17)
	lw	$3,0($3)
	sw	$3,0($2)
$L297:
	.set	noreorder
	nop
	.set	reorder
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,48,$31		# vars= 16, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-80
	move	$3,$31
	sd	$3,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	addiu	$17,$sp,32
	sw	$4,48($17)
	sw	$5,56($17)
	sw	$6,64($17)
	sw	$7,72($17)
	lw	$16,72($17)
	move	$2,$16
	addiu	$2,-1
	sw	$2,12($17)
	lw	$2,56($17)
	sw	$2,16($17)
	lw	$2,64($17)
	lw	$2,0($2)
	sw	$2,20($17)
	li	$2,0
	sw	$2,8($17)
	b	$L299
$L302:
	lw	$2,8($17)
	mult	$16,$2
	mflo	$2
	lw	$3,16($17)
	addu	$4,$3,$2
	lw	$3,48($17)
	lw	$2,84($17)
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$2
	bnez	$2,$L300
	lw	$2,8($17)
	mult	$16,$2
	mflo	$2
	lw	$3,16($17)
	addu	$2,$3,$2
	b	$L301
$L300:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L299:
	lw	$3,8($17)
	lw	$2,20($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L302
	lw	$2,20($17)
	addiu	$3,$2,1
	lw	$2,64($17)
	sw	$3,0($2)
	lw	$2,20($17)
	mult	$16,$2
	mflo	$2
	lw	$3,16($17)
	addu	$2,$3,$2
	lw	$4,72($17)
	lw	$3,48($17)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	memcpy
	.option	pic2
$L301:
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	addiu	$sp,48
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
	.frame	$17,48,$31		# vars= 16, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-80
	move	$3,$31
	sd	$3,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	addiu	$17,$sp,32
	sw	$4,48($17)
	sw	$5,56($17)
	sw	$6,64($17)
	sw	$7,72($17)
	lw	$16,72($17)
	move	$2,$16
	addiu	$2,-1
	sw	$2,12($17)
	lw	$2,56($17)
	sw	$2,16($17)
	lw	$2,64($17)
	lw	$2,0($2)
	sw	$2,20($17)
	li	$2,0
	sw	$2,8($17)
	b	$L304
$L307:
	lw	$2,8($17)
	mult	$16,$2
	mflo	$2
	lw	$3,16($17)
	addu	$4,$3,$2
	lw	$3,48($17)
	lw	$2,84($17)
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$2
	bnez	$2,$L305
	lw	$2,8($17)
	mult	$16,$2
	mflo	$2
	lw	$3,16($17)
	addu	$2,$3,$2
	b	$L306
$L305:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L304:
	lw	$3,8($17)
	lw	$2,20($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L307
	li	$2,0
$L306:
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	addiu	$sp,48
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	slt	$2,0
	move	$3,$24
	beqz	$3,$L309
	neg	$2,$2
$L309:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	addiu	$17,$sp,32
	sw	$4,32($17)
	li	$2,0
	sw	$2,8($17)
	li	$2,0
	sw	$2,12($17)
	b	$L312
$L313:
	lw	$2,32($17)
	addiu	$2,1
	sw	$2,32($17)
$L312:
	lw	$2,32($17)
	lb	$2,0($2)
	move	$4,$2
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L313
	lw	$2,32($17)
	lb	$2,0($2)
	move	$3,$2
	cmpi	$3,43
	move	$2,$24
	beqz	$2,$L314
	cmpi	$3,45
	move	$2,$24
	bnez	$2,$L316
	li	$2,1
	sw	$2,12($17)
$L314:
	lw	$2,32($17)
	addiu	$2,1
	sw	$2,32($17)
	b	$L316
$L317:
	lw	$3,8($17)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$4,$2
	lw	$2,32($17)
	addiu	$3,$2,1
	sw	$3,32($17)
	lb	$2,0($2)
	addiu	$2,-48
	subu	$2,$4,$2
	sw	$2,8($17)
$L316:
	lw	$2,32($17)
	lb	$2,0($2)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	bnez	$2,$L317
	lw	$2,12($17)
	bnez	$2,$L318
	lw	$2,8($17)
	neg	$2,$2
	b	$L320
$L318:
	lw	$2,8($17)
$L320:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	addiu	$sp,32
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
	.frame	$17,32,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	addiu	$17,$sp,32
	sw	$4,32($17)
	li	$2,0
	sw	$2,8($17)
	li	$2,0
	sw	$2,12($17)
	b	$L322
$L323:
	lw	$2,32($17)
	addiu	$2,1
	sw	$2,32($17)
$L322:
	lw	$2,32($17)
	lb	$2,0($2)
	move	$4,$2
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L323
	lw	$2,32($17)
	lb	$2,0($2)
	move	$3,$2
	cmpi	$3,43
	move	$2,$24
	beqz	$2,$L324
	cmpi	$3,45
	move	$2,$24
	bnez	$2,$L326
	li	$2,1
	sw	$2,12($17)
$L324:
	lw	$2,32($17)
	addiu	$2,1
	sw	$2,32($17)
	b	$L326
$L327:
	lw	$3,8($17)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$4,$2
	lw	$2,32($17)
	addiu	$3,$2,1
	sw	$3,32($17)
	lb	$2,0($2)
	addiu	$2,-48
	subu	$2,$4,$2
	sw	$2,8($17)
$L326:
	lw	$2,32($17)
	lb	$2,0($2)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	bnez	$2,$L327
	lw	$2,12($17)
	bnez	$2,$L328
	lw	$2,8($17)
	neg	$2,$2
	b	$L330
$L328:
	lw	$2,8($17)
$L330:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	addiu	$sp,32
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
	.frame	$17,40,$31		# vars= 16, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	addiu	$17,$sp,32
	sw	$4,40($17)
	li	$2,0
	sd	$2,8($17)
	li	$2,0
	sw	$2,16($17)
	b	$L332
$L333:
	lw	$2,40($17)
	addiu	$2,1
	sw	$2,40($17)
$L332:
	lw	$2,40($17)
	lb	$2,0($2)
	move	$4,$2
	.option	pic0
	jal	isspace
	.option	pic2
	bnez	$2,$L333
	lw	$2,40($17)
	lb	$2,0($2)
	move	$3,$2
	cmpi	$3,43
	move	$2,$24
	beqz	$2,$L334
	cmpi	$3,45
	move	$2,$24
	bnez	$2,$L336
	li	$2,1
	sw	$2,16($17)
$L334:
	lw	$2,40($17)
	addiu	$2,1
	sw	$2,40($17)
	b	$L336
$L337:
	ld	$3,8($17)
	move	$2,$3
	dsll	$2,$2,2
	daddu	$2,$2,$3
	dsll	$2,$2,1
	move	$4,$2
	lw	$2,40($17)
	addiu	$3,$2,1
	sw	$3,40($17)
	lb	$2,0($2)
	addiu	$2,-48
	dsubu	$2,$4,$2
	sd	$2,8($17)
$L336:
	lw	$2,40($17)
	lb	$2,0($2)
	addiu	$2,-48
	sltu	$2,10
	move	$2,$24
	bnez	$2,$L337
	lw	$2,16($17)
	bnez	$2,$L338
	li	$3,0
	ld	$2,8($17)
	dsubu	$2,$3,$2
	b	$L340
$L338:
	ld	$2,8($17)
$L340:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	addiu	$sp,40
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
	.frame	$17,32,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	addiu	$17,$sp,32
	sw	$4,32($17)
	sw	$5,40($17)
	sw	$6,48($17)
	sw	$7,56($17)
	b	$L342
$L346:
	lw	$2,48($17)
	srl	$3,$2,1
	lw	$2,56($17)
	mult	$3,$2
	mflo	$2
	lw	$3,40($17)
	addu	$2,$3,$2
	sw	$2,8($17)
	lw	$4,8($17)
	lw	$3,32($17)
	lw	$2,68($17)
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$2
	sw	$2,12($17)
	lw	$2,12($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L343
	lw	$2,48($17)
	srl	$2,$2,1
	sw	$2,48($17)
	b	$L342
$L343:
	lw	$2,12($17)
	slt	$2,1
	move	$2,$24
	bnez	$2,$L344
	lw	$3,8($17)
	lw	$2,56($17)
	addu	$2,$3,$2
	sw	$2,40($17)
	lw	$2,48($17)
	srl	$2,$2,1
	lw	$3,48($17)
	subu	$2,$3,$2
	addiu	$2,-1
	sw	$2,48($17)
	b	$L342
$L344:
	lw	$2,8($17)
	b	$L345
$L342:
	lw	$2,48($17)
	bnez	$2,$L346
	li	$2,0
$L345:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	addiu	$sp,32
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
	.frame	$17,40,$31		# vars= 16, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	addiu	$17,$sp,32
	sw	$4,40($17)
	sw	$5,48($17)
	sw	$6,56($17)
	sw	$7,64($17)
	lw	$2,48($17)
	sw	$2,8($17)
	lw	$2,56($17)
	sw	$2,12($17)
	b	$L348
$L352:
	lw	$2,12($17)
	sra	$2,$2,1
	move	$3,$2
	lw	$2,64($17)
	mult	$3,$2
	mflo	$2
	lw	$3,8($17)
	addu	$2,$3,$2
	sw	$2,16($17)
	lw	$5,84($17)
	lw	$4,16($17)
	lw	$3,40($17)
	lw	$2,76($17)
	move	$6,$5
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$2
	sw	$2,20($17)
	lw	$2,20($17)
	bnez	$2,$L349
	lw	$2,16($17)
	b	$L350
$L349:
	lw	$2,20($17)
	slt	$2,1
	move	$2,$24
	bnez	$2,$L351
	lw	$3,16($17)
	lw	$2,64($17)
	addu	$2,$3,$2
	sw	$2,8($17)
	lw	$2,12($17)
	addiu	$2,-1
	sw	$2,12($17)
$L351:
	lw	$2,12($17)
	sra	$2,$2,1
	sw	$2,12($17)
$L348:
	lw	$2,12($17)
	bnez	$2,$L352
	li	$2,0
$L350:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	addiu	$sp,40
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$3,32($17)
	lw	$2,40($17)
	div	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mflo	$2
	move	$4,$2
	lw	$3,32($17)
	lw	$2,40($17)
	div	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,24($17)
	sw	$4,0($2)
	lw	$2,24($17)
	sw	$3,4($2)
	lw	$2,24($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sd	$4,8($17)
	ld	$2,8($17)
	slt	$2,0
	move	$3,$24
	beqz	$3,$L356
	li	$3,0
	dsubu	$2,$3,$2
$L356:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sw	$4,32($17)
	sd	$5,40($17)
	sd	$6,48($17)
	ld	$3,40($17)
	ld	$2,48($17)
	ddiv	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mflo	$2
	move	$4,$2
	ld	$3,40($17)
	ld	$2,48($17)
	ddiv	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,32($17)
	sd	$4,0($2)
	lw	$2,32($17)
	sd	$3,8($2)
	lw	$2,32($17)
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	slt	$2,0
	move	$3,$24
	beqz	$3,$L361
	neg	$2,$2
$L361:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$3,32($17)
	lw	$2,40($17)
	div	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mflo	$2
	move	$4,$2
	lw	$3,32($17)
	lw	$2,40($17)
	div	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,24($17)
	sw	$4,0($2)
	lw	$2,24($17)
	sw	$3,4($2)
	lw	$2,24($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sd	$4,8($17)
	ld	$2,8($17)
	slt	$2,0
	move	$3,$24
	beqz	$3,$L366
	li	$3,0
	dsubu	$2,$3,$2
$L366:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sw	$4,32($17)
	sd	$5,40($17)
	sd	$6,48($17)
	ld	$3,40($17)
	ld	$2,48($17)
	ddiv	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mflo	$2
	move	$4,$2
	ld	$3,40($17)
	ld	$2,48($17)
	ddiv	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	move	$3,$2
	lw	$2,32($17)
	sd	$4,0($2)
	lw	$2,32($17)
	sd	$3,8($2)
	lw	$2,32($17)
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	b	$L371
$L373:
	lw	$2,8($17)
	addiu	$2,4
	sw	$2,8($17)
$L371:
	lw	$2,8($17)
	lw	$2,0($2)
	beqz	$2,$L372
	lw	$2,8($17)
	lw	$2,0($2)
	lw	$3,16($17)
	xor	$2,$3
	bnez	$2,$L373
$L372:
	lw	$2,8($17)
	lw	$2,0($2)
	beqz	$2,$L374
	lw	$2,8($17)
	b	$L376
$L374:
	li	$2,0
$L376:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	b	$L378
$L380:
	lw	$2,8($17)
	addiu	$2,4
	sw	$2,8($17)
	lw	$2,16($17)
	addiu	$2,4
	sw	$2,16($17)
$L378:
	lw	$2,8($17)
	lw	$3,0($2)
	lw	$2,16($17)
	lw	$2,0($2)
	xor	$2,$3
	bnez	$2,$L379
	lw	$2,8($17)
	lw	$2,0($2)
	beqz	$2,$L379
	lw	$2,16($17)
	lw	$2,0($2)
	bnez	$2,$L380
$L379:
	lw	$2,8($17)
	lw	$3,0($2)
	lw	$2,16($17)
	lw	$2,0($2)
	slt	$3,$2
	move	$2,$24
	bnez	$2,$L381
	lw	$2,8($17)
	lw	$3,0($2)
	lw	$2,16($17)
	lw	$2,0($2)
	slt	$2,$3
	move	$2,$24
	zeb	$2
	b	$L383
$L381:
	li	$2,1
	neg	$2,$2
$L383:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	lw	$2,24($17)
	sw	$2,8($17)
	.set	noreorder
	nop
	.set	reorder
$L385:
	lw	$3,32($17)
	addiu	$2,$3,4
	sw	$2,32($17)
	lw	$2,24($17)
	addiu	$4,$2,4
	sw	$4,24($17)
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($2)
	bnez	$2,$L385
	lw	$2,8($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	lw	$2,24($17)
	sw	$2,8($17)
	b	$L388
$L389:
	lw	$2,24($17)
	addiu	$2,4
	sw	$2,24($17)
$L388:
	lw	$2,24($17)
	lw	$2,0($2)
	bnez	$2,$L389
	lw	$3,24($17)
	lw	$2,8($17)
	subu	$2,$3,$2
	sra	$2,$2,2
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	sw	$6,24($17)
	b	$L392
$L394:
	lw	$2,24($17)
	addiu	$2,-1
	sw	$2,24($17)
	lw	$2,8($17)
	addiu	$2,4
	sw	$2,8($17)
	lw	$2,16($17)
	addiu	$2,4
	sw	$2,16($17)
$L392:
	lw	$2,24($17)
	beqz	$2,$L393
	lw	$2,8($17)
	lw	$3,0($2)
	lw	$2,16($17)
	lw	$2,0($2)
	xor	$2,$3
	bnez	$2,$L393
	lw	$2,8($17)
	lw	$2,0($2)
	beqz	$2,$L393
	lw	$2,16($17)
	lw	$2,0($2)
	bnez	$2,$L394
$L393:
	lw	$2,24($17)
	beqz	$2,$L395
	lw	$2,8($17)
	lw	$3,0($2)
	lw	$2,16($17)
	lw	$2,0($2)
	slt	$3,$2
	move	$2,$24
	bnez	$2,$L396
	lw	$2,8($17)
	lw	$3,0($2)
	lw	$2,16($17)
	lw	$2,0($2)
	slt	$2,$3
	move	$2,$24
	zeb	$2
	b	$L399
$L396:
	li	$2,1
	neg	$2,$2
	b	$L399
$L395:
	li	$2,0
$L399:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	sw	$6,24($17)
	b	$L401
$L403:
	lw	$2,24($17)
	addiu	$2,-1
	sw	$2,24($17)
	lw	$2,8($17)
	addiu	$2,4
	sw	$2,8($17)
$L401:
	lw	$2,24($17)
	beqz	$2,$L402
	lw	$2,8($17)
	lw	$2,0($2)
	lw	$3,16($17)
	xor	$2,$3
	bnez	$2,$L403
$L402:
	lw	$2,24($17)
	beqz	$2,$L404
	lw	$2,8($17)
	b	$L406
$L404:
	li	$2,0
$L406:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	sw	$6,24($17)
	b	$L408
$L410:
	lw	$2,24($17)
	addiu	$2,-1
	sw	$2,24($17)
	lw	$2,8($17)
	addiu	$2,4
	sw	$2,8($17)
	lw	$2,16($17)
	addiu	$2,4
	sw	$2,16($17)
$L408:
	lw	$2,24($17)
	beqz	$2,$L409
	lw	$2,8($17)
	lw	$3,0($2)
	lw	$2,16($17)
	lw	$2,0($2)
	xor	$2,$3
	beqz	$2,$L410
$L409:
	lw	$2,24($17)
	beqz	$2,$L411
	lw	$2,8($17)
	lw	$3,0($2)
	lw	$2,16($17)
	lw	$2,0($2)
	slt	$3,$2
	move	$2,$24
	bnez	$2,$L412
	lw	$2,8($17)
	lw	$3,0($2)
	lw	$2,16($17)
	lw	$2,0($2)
	slt	$2,$3
	move	$2,$24
	zeb	$2
	b	$L415
$L412:
	li	$2,1
	neg	$2,$2
	b	$L415
$L411:
	li	$2,0
$L415:
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	b	$L417
$L418:
	lw	$3,32($17)
	addiu	$2,$3,4
	sw	$2,32($17)
	lw	$2,24($17)
	addiu	$4,$2,4
	sw	$4,24($17)
	lw	$3,0($3)
	sw	$3,0($2)
$L417:
	lw	$2,40($17)
	addiu	$3,$2,-1
	sw	$3,40($17)
	bnez	$2,$L418
	lw	$2,8($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$3,24($17)
	lw	$2,32($17)
	xor	$2,$3
	bnez	$2,$L421
	lw	$2,24($17)
	b	$L422
$L421:
	lw	$3,24($17)
	lw	$2,32($17)
	subu	$3,$3,$2
	lw	$2,40($17)
	sll	$2,$2,2
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L427
	b	$L424
$L425:
	lw	$2,40($17)
	sll	$2,$2,2
	lw	$3,32($17)
	addu	$3,$3,$2
	lw	$2,40($17)
	sll	$2,$2,2
	lw	$4,24($17)
	addu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
$L424:
	lw	$2,40($17)
	addiu	$3,$2,-1
	sw	$3,40($17)
	bnez	$2,$L425
	b	$L426
$L428:
	lw	$3,32($17)
	addiu	$2,$3,4
	sw	$2,32($17)
	lw	$2,24($17)
	addiu	$4,$2,4
	sw	$4,24($17)
	lw	$3,0($3)
	sw	$3,0($2)
$L427:
	lw	$2,40($17)
	addiu	$3,$2,-1
	sw	$3,40($17)
	bnez	$2,$L428
$L426:
	lw	$2,8($17)
$L422:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	b	$L430
$L431:
	lw	$2,24($17)
	addiu	$3,$2,4
	sw	$3,24($17)
	lw	$3,32($17)
	sw	$3,0($2)
$L430:
	lw	$2,40($17)
	addiu	$3,$2,-1
	sw	$3,40($17)
	bnez	$2,$L431
	lw	$2,8($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,32($17)
	sw	$2,12($17)
	lw	$3,8($17)
	lw	$2,12($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L434
	lw	$3,8($17)
	lw	$2,40($17)
	addu	$2,$3,$2
	sw	$2,8($17)
	lw	$3,12($17)
	lw	$2,40($17)
	addu	$2,$3,$2
	sw	$2,12($17)
	b	$L435
$L436:
	lw	$2,8($17)
	addiu	$2,-1
	sw	$2,8($17)
	lw	$2,12($17)
	addiu	$2,-1
	sw	$2,12($17)
	lw	$2,8($17)
	lb	$3,0($2)
	lw	$2,12($17)
	sb	$3,0($2)
	lw	$2,40($17)
	addiu	$2,-1
	sw	$2,40($17)
$L435:
	lw	$2,40($17)
	bnez	$2,$L436
	b	$L440
$L434:
	lw	$3,8($17)
	lw	$2,12($17)
	xor	$2,$3
	beqz	$2,$L440
	b	$L438
$L439:
	lw	$3,8($17)
	addiu	$2,$3,1
	sw	$2,8($17)
	lw	$2,12($17)
	addiu	$4,$2,1
	sw	$4,12($17)
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,40($17)
	addiu	$2,-1
	sw	$2,40($17)
$L438:
	lw	$2,40($17)
	bnez	$2,$L439
$L440:
	.set	noreorder
	nop
	.set	reorder
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sd	$4,8($17)
	sw	$5,16($17)
	ld	$3,8($17)
	lw	$2,16($17)
	move	$4,$3
	dsll	$4,$2
	lw	$2,16($17)
	neg	$2,$2
	li	$5,63
	and	$2,$5
	dsrl	$3,$2
	or	$3,$4
	move	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sd	$4,8($17)
	sw	$5,16($17)
	ld	$3,8($17)
	lw	$2,16($17)
	move	$4,$3
	dsrl	$4,$2
	lw	$2,16($17)
	neg	$2,$2
	li	$5,63
	and	$2,$5
	dsll	$3,$2
	or	$3,$4
	move	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	lw	$3,8($17)
	lw	$2,16($17)
	move	$4,$3
	sll	$4,$2
	lw	$2,16($17)
	neg	$2,$2
	li	$5,31
	and	$2,$5
	srl	$3,$2
	or	$3,$4
	move	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	lw	$3,8($17)
	lw	$2,16($17)
	move	$4,$3
	srl	$4,$2
	lw	$2,16($17)
	neg	$2,$2
	li	$5,31
	and	$2,$5
	sll	$3,$2
	or	$3,$4
	move	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	lw	$3,8($17)
	lw	$2,16($17)
	move	$4,$3
	sll	$4,$2
	lw	$2,16($17)
	neg	$2,$2
	li	$5,31
	and	$2,$5
	srl	$3,$2
	or	$3,$4
	move	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	lw	$3,8($17)
	lw	$2,16($17)
	move	$4,$3
	srl	$4,$2
	lw	$2,16($17)
	neg	$2,$2
	li	$5,31
	and	$2,$5
	sll	$3,$2
	or	$3,$4
	move	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	sw	$5,16($17)
	sh	$2,8($17)
	lhu	$2,8($17)
	lw	$3,16($17)
	sll	$2,$3
	move	$3,$2
	zeh	$3
	lhu	$2,8($17)
	li	$5,16
	lw	$4,16($17)
	subu	$4,$5,$4
	srl	$2,$4
	zeh	$2
	or	$2,$3
	zeh	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	sw	$5,16($17)
	sh	$2,8($17)
	lhu	$2,8($17)
	lw	$3,16($17)
	srl	$2,$3
	move	$3,$2
	zeh	$3
	lhu	$2,8($17)
	li	$5,16
	lw	$4,16($17)
	subu	$4,$5,$4
	sll	$2,$4
	zeh	$2
	or	$2,$3
	zeh	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	sw	$5,16($17)
	sb	$2,8($17)
	lbu	$2,8($17)
	lw	$3,16($17)
	sll	$2,$3
	move	$3,$2
	zeb	$3
	lbu	$2,8($17)
	li	$5,8
	lw	$4,16($17)
	subu	$4,$5,$4
	srl	$2,$4
	zeb	$2
	or	$2,$3
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	move	$2,$4
	sw	$5,16($17)
	sb	$2,8($17)
	lbu	$2,8($17)
	lw	$3,16($17)
	srl	$2,$3
	move	$3,$2
	zeb	$3
	lbu	$2,8($17)
	li	$5,8
	lw	$4,16($17)
	subu	$4,$5,$4
	sll	$2,$4
	zeb	$2
	or	$2,$3
	zeb	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	move	$2,$4
	sh	$2,24($17)
	li	$2,255
	sw	$2,8($17)
	lhu	$3,24($17)
	lw	$2,8($17)
	sll	$2,$2,8
	and	$2,$3
	srl	$2,$2,8
	move	$3,$2
	zeh	$3
	lw	$2,8($17)
	move	$4,$2
	zeh	$4
	lhu	$2,24($17)
	and	$2,$4
	zeh	$2
	sll	$2,$2,8
	zeh	$2
	or	$2,$3
	zeh	$2
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	li	$2,255
	sw	$2,8($17)
	lw	$2,8($17)
	sll	$3,$2,24
	lw	$2,24($17)
	and	$2,$3
	srl	$3,$2,24
	lw	$2,8($17)
	sll	$4,$2,8
	sll	$4,$4,8
	lw	$2,24($17)
	and	$2,$4
	srl	$2,$2,8
	or	$3,$2
	lw	$2,8($17)
	sll	$4,$2,8
	lw	$2,24($17)
	and	$2,$4
	sll	$2,$2,8
	or	$3,$2
	lw	$4,24($17)
	lw	$2,8($17)
	and	$2,$4
	sll	$2,$2,24
	or	$2,$3
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sd	$4,24($17)
	li	$2,255
	sd	$2,8($17)
	ld	$2,8($17)
	dsll	$3,$2,56
	ld	$2,24($17)
	and	$2,$3
	dsrl	$2,56
	move	$3,$2
	ld	$2,8($17)
	dsll	$4,$2,48
	ld	$2,24($17)
	and	$2,$4
	dsrl	$2,40
	or	$3,$2
	ld	$2,8($17)
	dsll	$4,$2,40
	ld	$2,24($17)
	and	$2,$4
	dsrl	$2,24
	or	$3,$2
	ld	$2,8($17)
	dsll	$4,$2,32
	ld	$2,24($17)
	and	$2,$4
	dsrl	$2,8
	or	$3,$2
	ld	$2,8($17)
	dsll	$4,$2,24
	ld	$2,24($17)
	and	$2,$4
	dsll	$2,$2,8
	or	$3,$2
	ld	$2,8($17)
	dsll	$4,$2,8
	dsll	$4,$4,8
	ld	$2,24($17)
	and	$2,$4
	dsll	$2,$2,24
	or	$3,$2
	ld	$2,8($17)
	dsll	$4,$2,8
	ld	$2,24($17)
	and	$2,$4
	dsll	$2,$2,40
	or	$3,$2
	ld	$4,24($17)
	ld	$2,8($17)
	and	$2,$4
	dsll	$2,$2,56
	or	$2,$3
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	li	$2,0
	sw	$2,8($17)
	b	$L468
$L471:
	lw	$3,24($17)
	lw	$2,8($17)
	srl	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L469
	lw	$2,8($17)
	addiu	$2,1
	b	$L470
$L469:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L468:
	lw	$2,8($17)
	sltu	$2,32
	move	$2,$24
	bnez	$2,$L471
	li	$2,0
$L470:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	move	$2,$4
	bnez	$2,$L473
	li	$2,0
	b	$L474
$L473:
	li	$16,1
	b	$L475
$L476:
	sra	$2,$2,1
	addiu	$16,1
$L475:
	li	$3,1
	and	$3,$2
	beqz	$3,$L476
	move	$2,$16
$L474:
	move	$sp,$17
	ld	$17,8($sp)
	ld	$16,0($sp)
	addiu	$sp,16
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L484
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	lw	$2,%call16(__mips16_ltsf2)($16)
	lw	$5,$L485
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L478
	lw	$2,%call16(__mips16_gtsf2)($16)
	lw	$5,$L486
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L483
$L478:
	li	$2,1
	b	$L482
$L483:
	li	$2,0
$L482:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_gl_isinff_484, @object
__pool_gl_isinff_484:
	.align	2
$L484:
	.word	__gnu_local_gp
$L485:
	.word	-8388609
$L486:
	.word	2139095039
	.type	__pend_gl_isinff_484, @object
__pend_gl_isinff_484:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L494
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L495
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L488
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L496
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L493
$L488:
	li	$2,1
	b	$L492
$L493:
	li	$2,0
$L492:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_gl_isinfd_494, @object
__pool_gl_isinfd_494:
	.align	2
$L494:
	.word	__gnu_local_gp
	.align	3
$L495:
	.word	-1048577
	.word	-1
$L496:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfd_494, @object
__pend_gl_isinfd_494:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L504
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L505
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L498
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L506
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L503
$L498:
	li	$2,1
	b	$L502
$L503:
	li	$2,0
$L502:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_gl_isinfl_504, @object
__pool_gl_isinfl_504:
	.align	2
$L504:
	.word	__gnu_local_gp
	.align	3
$L505:
	.word	-1048577
	.word	-1
$L506:
	.word	2146435071
	.word	-1
	.type	__pend_gl_isinfl_504, @object
__pend_gl_isinfl_504:
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.set	mips16
	.set	nomicromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L508
	move	$28,$2
	sw	$2,0($17)
	move	$2,$28
	sw	$4,24($17)
	sw	$5,32($17)
	lw	$2,%call16(__mips16_floatsidf)($2)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$3,$2
	lw	$2,24($17)
	sd	$3,0($2)
	.set	noreorder
	nop
	.set	reorder
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
	jr	$7
	.type	__pool__Qp_itoq_508, @object
__pool__Qp_itoq_508:
	.align	2
$L508:
	.word	__gnu_local_gp
	.type	__pend__Qp_itoq_508, @object
__pend__Qp_itoq_508:
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L520
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,40($17)
	sw	$5,48($17)
	lw	$2,%call16(__mips16_unordsf2)($16)
	lw	$5,40($17)
	lw	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L510
	lw	$3,40($17)
	lw	$2,%call16(__mips16_addsf3)($16)
	move	$5,$3
	move	$4,$3
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$3,$2
	lw	$2,%call16(__mips16_nesf2)($16)
	move	$5,$3
	lw	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L510
	lw	$2,48($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L512
	lw	$2,$L521
	b	$L513
$L512:
	lw	$2,$L522
$L513:
	sw	$2,8($17)
$L516:
	lw	$3,48($17)
	li	$2,1
	and	$2,$3
	beqz	$2,$L514
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,8($17)
	lw	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sw	$2,40($17)
$L514:
	lw	$2,48($17)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,48($17)
	lw	$2,48($17)
	beqz	$2,$L519
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,8($17)
	lw	$4,8($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sw	$2,8($17)
	b	$L516
$L519:
	.set	noreorder
	nop
	.set	reorder
$L510:
	lw	$2,40($17)
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool_ldexpf_520, @object
__pool_ldexpf_520:
	.align	2
$L520:
	.word	__gnu_local_gp
$L521:
	.word	1056964608
$L522:
	.word	1073741824
	.type	__pend_ldexpf_520, @object
__pend_ldexpf_520:
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L534
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,40($17)
	sw	$5,48($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L524
	ld	$3,40($17)
	lw	$2,%call16(__mips16_adddf3)($16)
	move	$5,$3
	move	$4,$3
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$3,$2
	lw	$2,%call16(__mips16_nedf2)($16)
	move	$5,$3
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L524
	lw	$2,48($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L526
	ld	$2,$L535
	b	$L527
$L526:
	ld	$2,$L536
$L527:
	sd	$2,8($17)
$L530:
	lw	$3,48($17)
	li	$2,1
	and	$2,$3
	beqz	$2,$L528
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,8($17)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,40($17)
$L528:
	lw	$2,48($17)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,48($17)
	lw	$2,48($17)
	beqz	$2,$L533
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,8($17)
	ld	$4,8($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,8($17)
	b	$L530
$L533:
	.set	noreorder
	nop
	.set	reorder
$L524:
	ld	$2,40($17)
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool_ldexp_534, @object
__pool_ldexp_534:
	.align	2
$L534:
	.word	__gnu_local_gp
	.align	3
$L535:
	.word	1071644672
	.word	0
$L536:
	.word	1073741824
	.word	0
	.type	__pend_ldexp_534, @object
__pend_ldexp_534:
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L548
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,40($17)
	sw	$5,48($17)
	lw	$2,%call16(__mips16_unorddf2)($16)
	ld	$5,40($17)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	bnez	$2,$L538
	ld	$3,40($17)
	lw	$2,%call16(__mips16_adddf3)($16)
	move	$5,$3
	move	$4,$3
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$3,$2
	lw	$2,%call16(__mips16_nedf2)($16)
	move	$5,$3
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L538
	lw	$2,48($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L540
	ld	$2,$L549
	b	$L541
$L540:
	ld	$2,$L550
$L541:
	sd	$2,8($17)
$L544:
	lw	$3,48($17)
	li	$2,1
	and	$2,$3
	beqz	$2,$L542
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,8($17)
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,40($17)
$L542:
	lw	$2,48($17)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,48($17)
	lw	$2,48($17)
	beqz	$2,$L547
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,8($17)
	ld	$4,8($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,8($17)
	b	$L544
$L547:
	.set	noreorder
	nop
	.set	reorder
$L538:
	ld	$2,40($17)
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool_ldexpl_548, @object
__pool_ldexpl_548:
	.align	2
$L548:
	.word	__gnu_local_gp
	.align	3
$L549:
	.word	1071644672
	.word	0
$L550:
	.word	1073741824
	.word	0
	.type	__pend_ldexpl_548, @object
__pend_ldexpl_548:
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.set	mips16
	.set	nomicromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$2,32($17)
	sw	$2,8($17)
	lw	$2,24($17)
	sw	$2,12($17)
	b	$L552
$L553:
	lw	$2,8($17)
	addiu	$3,$2,1
	sw	$3,8($17)
	lb	$4,0($2)
	lw	$2,12($17)
	addiu	$3,$2,1
	sw	$3,12($17)
	lb	$3,0($2)
	xor	$3,$4
	seb	$3
	sb	$3,0($2)
	lw	$2,40($17)
	addiu	$2,-1
	sw	$2,40($17)
$L552:
	lw	$2,40($17)
	bnez	$2,$L553
	lw	$2,24($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,32,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	addiu	$17,$sp,32
	sw	$4,32($17)
	sw	$5,40($17)
	sw	$6,48($17)
	lw	$2,32($17)
	move	$4,$2
	.option	pic0
	jal	strlen
	.option	pic2
	move	$3,$2
	lw	$2,32($17)
	addu	$2,$2,$3
	sw	$2,8($17)
	b	$L556
$L558:
	lw	$2,40($17)
	addiu	$2,1
	sw	$2,40($17)
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
	lw	$2,48($17)
	addiu	$2,-1
	sw	$2,48($17)
$L556:
	lw	$2,48($17)
	beqz	$2,$L557
	lw	$2,40($17)
	lb	$3,0($2)
	lw	$2,8($17)
	sb	$3,0($2)
	lw	$2,8($17)
	lb	$2,0($2)
	bnez	$2,$L558
$L557:
	lw	$2,48($17)
	bnez	$2,$L559
	lw	$2,8($17)
	li	$3,0
	sb	$3,0($2)
$L559:
	lw	$2,32($17)
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	addiu	$sp,32
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	li	$2,0
	sw	$2,8($17)
	b	$L562
$L567:
	.set	noreorder
	nop
	.set	reorder
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L562:
	lw	$3,8($17)
	lw	$2,32($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L563
	lw	$3,24($17)
	lw	$2,8($17)
	addu	$2,$3,$2
	lb	$2,0($2)
	bnez	$2,$L567
$L563:
	lw	$2,8($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	b	$L569
$L573:
	lw	$2,32($17)
	sw	$2,8($17)
	b	$L570
$L572:
	lw	$2,8($17)
	addiu	$3,$2,1
	sw	$3,8($17)
	lb	$3,0($2)
	lw	$2,24($17)
	lb	$2,0($2)
	xor	$2,$3
	bnez	$2,$L570
	lw	$2,24($17)
	b	$L571
$L570:
	lw	$2,8($17)
	lb	$2,0($2)
	bnez	$2,$L572
	lw	$2,24($17)
	addiu	$2,1
	sw	$2,24($17)
$L569:
	lw	$2,24($17)
	lb	$2,0($2)
	bnez	$2,$L573
	li	$2,0
$L571:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	move	$2,$4
	sw	$5,32($17)
	li	$3,0
	sw	$3,8($17)
$L576:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,32($17)
	xor	$3,$4
	bnez	$3,$L575
	sw	$2,8($17)
$L575:
	move	$3,$2
	addiu	$2,$3,1
	lb	$3,0($3)
	bnez	$3,$L576
	lw	$2,8($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,32,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	addiu	$17,$sp,32
	sw	$4,32($17)
	sw	$5,40($17)
	lw	$2,32($17)
	sw	$2,8($17)
	lw	$2,40($17)
	move	$4,$2
	.option	pic0
	jal	strlen
	.option	pic2
	sw	$2,12($17)
	lw	$2,12($17)
	bnez	$2,$L581
	lw	$2,32($17)
	b	$L580
$L583:
	lw	$4,12($17)
	lw	$3,40($17)
	lw	$2,8($17)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	strncmp
	.option	pic2
	bnez	$2,$L582
	lw	$2,8($17)
	b	$L580
$L582:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L581:
	lw	$2,40($17)
	lb	$2,0($2)
	move	$3,$2
	lw	$2,8($17)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	strchr
	.option	pic2
	sw	$2,8($17)
	lw	$2,8($17)
	bnez	$2,$L583
	li	$2,0
$L580:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	addiu	$sp,32
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L594
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L595
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L585
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L595
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	beqz	$2,$L587
$L585:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,$L595
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L588
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L595
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L588
$L587:
	ld	$3,32($17)
	ld	$2,$L596
	xor	$2,$3
	b	$L591
$L588:
	ld	$2,32($17)
$L591:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool_copysign_594, @object
__pool_copysign_594:
	.align	2
$L594:
	.word	__gnu_local_gp
	.align	3
$L595:
	.word	0
	.word	0
$L596:
	.dword	-9223372036854775808
	.type	__pend_copysign_594, @object
__pend_copysign_594:
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	mips16
	.set	nomicromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$17,32,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	addiu	$17,$sp,32
	sw	$4,32($17)
	sw	$5,40($17)
	sw	$6,48($17)
	sw	$7,56($17)
	lw	$3,40($17)
	lw	$2,56($17)
	subu	$2,$3,$2
	lw	$3,32($17)
	addu	$2,$3,$2
	sw	$2,12($17)
	lw	$2,56($17)
	bnez	$2,$L598
	lw	$2,32($17)
	b	$L599
$L598:
	lw	$3,40($17)
	lw	$2,56($17)
	sltu	$3,$2
	move	$2,$24
	zeb	$2
	beqz	$2,$L600
	li	$2,0
	b	$L599
$L600:
	lw	$2,32($17)
	sw	$2,8($17)
	b	$L601
$L603:
	lw	$2,8($17)
	lb	$3,0($2)
	lw	$2,48($17)
	lb	$2,0($2)
	xor	$2,$3
	bnez	$2,$L602
	lw	$2,8($17)
	addiu	$3,$2,1
	lw	$2,48($17)
	addiu	$4,$2,1
	lw	$2,56($17)
	addiu	$2,-1
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	memcmp
	.option	pic2
	bnez	$2,$L602
	lw	$2,8($17)
	b	$L599
$L602:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L601:
	lw	$3,8($17)
	lw	$2,12($17)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L603
	li	$2,0
$L599:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	addiu	$sp,32
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
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	lw	$4,40($17)
	lw	$3,32($17)
	lw	$2,24($17)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	memcpy
	.option	pic2
	move	$3,$2
	lw	$2,40($17)
	addu	$2,$3,$2
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L625
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,40($17)
	sw	$5,48($17)
	li	$2,0
	sw	$2,12($17)
	li	$2,0
	sw	$2,8($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L626
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L607
	ld	$3,40($17)
	ld	$2,$L627
	xor	$2,$3
	sd	$2,40($17)
	li	$2,1
	sw	$2,8($17)
$L607:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L628
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L624
	b	$L611
$L612:
	lw	$2,12($17)
	addiu	$2,1
	sw	$2,12($17)
	lw	$2,%call16(__mips16_divdf3)($16)
	ld	$5,$L629
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,40($17)
$L611:
	lw	$2,%call16(__mips16_gedf2)($16)
	ld	$5,$L628
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L612
	b	$L613
$L624:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L630
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L613
	lw	$2,%call16(__mips16_nedf2)($16)
	ld	$5,$L626
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	beqz	$2,$L613
	b	$L616
$L617:
	lw	$2,12($17)
	addiu	$2,-1
	sw	$2,12($17)
	ld	$3,40($17)
	lw	$2,%call16(__mips16_adddf3)($16)
	move	$5,$3
	move	$4,$3
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,40($17)
$L616:
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,$L630
	ld	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L617
$L613:
	lw	$2,48($17)
	lw	$3,12($17)
	sw	$3,0($2)
	lw	$2,8($17)
	beqz	$2,$L618
	ld	$3,40($17)
	ld	$2,$L627
	xor	$2,$3
	sd	$2,40($17)
$L618:
	ld	$2,40($17)
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool_frexp_625, @object
__pool_frexp_625:
	.align	2
$L625:
	.word	__gnu_local_gp
	.align	3
$L626:
	.word	0
	.word	0
$L627:
	.dword	-9223372036854775808
$L628:
	.word	1072693248
	.word	0
$L629:
	.word	1073741824
	.word	0
$L630:
	.word	1071644672
	.word	0
	.type	__pend_frexp_625, @object
__pend_frexp_625:
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.set	mips16
	.set	nomicromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sd	$4,32($17)
	sd	$5,40($17)
	li	$2,0
	sd	$2,8($17)
	ld	$2,32($17)
	sd	$2,16($17)
	b	$L632
$L634:
	ld	$3,16($17)
	li	$2,1
	and	$2,$3
	beqz	$2,$L633
	ld	$3,8($17)
	ld	$2,40($17)
	daddu	$2,$3,$2
	sd	$2,8($17)
$L633:
	ld	$2,40($17)
	dsll	$2,$2,1
	sd	$2,40($17)
	ld	$2,16($17)
	dsrl	$2,1
	sd	$2,16($17)
$L632:
	ld	$2,16($17)
	bnez	$2,$L634
	ld	$2,8($17)
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sd	$6,40($17)
	li	$2,1
	sw	$2,8($17)
	li	$2,0
	sw	$2,12($17)
	b	$L637
$L639:
	lw	$2,32($17)
	sll	$2,$2,1
	sw	$2,32($17)
	lw	$2,8($17)
	sll	$2,$2,1
	sw	$2,8($17)
$L637:
	lw	$3,32($17)
	lw	$2,24($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L640
	lw	$2,8($17)
	beqz	$2,$L640
	lw	$2,32($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L639
	b	$L640
$L642:
	lw	$3,24($17)
	lw	$2,32($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L641
	lw	$3,24($17)
	lw	$2,32($17)
	subu	$2,$3,$2
	sw	$2,24($17)
	lw	$3,12($17)
	lw	$2,8($17)
	or	$2,$3
	sw	$2,12($17)
$L641:
	lw	$2,8($17)
	srl	$2,$2,1
	sw	$2,8($17)
	lw	$2,32($17)
	srl	$2,$2,1
	sw	$2,32($17)
$L640:
	lw	$2,8($17)
	bnez	$2,$L642
	ld	$2,40($17)
	beqz	$2,$L643
	lw	$2,24($17)
	b	$L644
$L643:
	lw	$2,12($17)
$L644:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,32,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L649
	move	$28,$2
	sw	$2,0($17)
	move	$3,$28
	move	$2,$4
	sb	$2,32($17)
	lb	$2,32($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L646
	lbu	$2,32($17)
	not	$2,$2
	sb	$2,32($17)
$L646:
	lb	$2,32($17)
	bnez	$2,$L647
	li	$2,7
	b	$L648
$L647:
	lb	$2,32($17)
	sll	$2,$2,8
	dsll	$4,$2,32
	dsrl	$4,32
	lw	$2,%call16(__clzdi2)($3)
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	dsll	$2,$2,32
	dsrl	$2,32
	daddiu	$2,-16
	daddiu	$2,-16
	sw	$2,8($17)
	lw	$2,8($17)
	addiu	$2,-1
$L648:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___clrsbqi2_649, @object
__pool___clrsbqi2_649:
	.align	2
$L649:
	.word	__gnu_local_gp
	.type	__pend___clrsbqi2_649, @object
__pend___clrsbqi2_649:
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.set	mips16
	.set	nomicromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$17,32,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L654
	move	$28,$2
	sw	$2,0($17)
	move	$3,$28
	sd	$4,32($17)
	ld	$2,32($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L651
	ld	$2,32($17)
	not	$2,$2
	sd	$2,32($17)
$L651:
	ld	$2,32($17)
	bnez	$2,$L652
	li	$2,63
	b	$L653
$L652:
	ld	$4,32($17)
	lw	$2,%call16(__clzdi2)($3)
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sw	$2,8($17)
	lw	$2,8($17)
	addiu	$2,-1
$L653:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___clrsbdi2_654, @object
__pool___clrsbdi2_654:
	.align	2
$L654:
	.word	__gnu_local_gp
	.type	__pend___clrsbdi2_654, @object
__pend___clrsbdi2_654:
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.set	mips16
	.set	nomicromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	li	$2,0
	sw	$2,8($17)
	b	$L656
$L658:
	lw	$3,24($17)
	li	$2,1
	and	$2,$3
	beqz	$2,$L657
	lw	$3,8($17)
	lw	$2,32($17)
	addu	$2,$3,$2
	sw	$2,8($17)
$L657:
	lw	$2,24($17)
	srl	$2,$2,1
	sw	$2,24($17)
	lw	$2,32($17)
	sll	$2,$2,1
	sw	$2,32($17)
$L656:
	lw	$2,24($17)
	bnez	$2,$L658
	lw	$2,8($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$17,32($sp)
	move	$17,$sp
	sw	$4,40($17)
	sw	$5,48($17)
	sw	$6,56($17)
	lw	$2,56($17)
	srl	$2,$2,3
	sw	$2,16($17)
	lw	$3,56($17)
	li	$2,8
	neg	$2,$2
	and	$2,$3
	sw	$2,12($17)
	lw	$2,40($17)
	sw	$2,20($17)
	lw	$2,48($17)
	sw	$2,24($17)
	lw	$3,20($17)
	lw	$2,24($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L661
	lw	$3,24($17)
	lw	$2,56($17)
	addu	$2,$3,$2
	lw	$3,20($17)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L668
$L661:
	li	$2,0
	sw	$2,8($17)
	b	$L663
$L664:
	lw	$2,8($17)
	sll	$2,$2,3
	lw	$3,48($17)
	addu	$3,$3,$2
	lw	$2,8($17)
	sll	$2,$2,3
	lw	$4,40($17)
	addu	$2,$4,$2
	ld	$3,0($3)
	sd	$3,0($2)
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L663:
	lw	$3,8($17)
	lw	$2,16($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L664
	b	$L665
$L666:
	lw	$3,24($17)
	lw	$2,12($17)
	addu	$3,$3,$2
	lw	$4,20($17)
	lw	$2,12($17)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,12($17)
	addiu	$2,1
	sw	$2,12($17)
$L665:
	lw	$3,56($17)
	lw	$2,12($17)
	sltu	$2,$3
	move	$2,$24
	bnez	$2,$L666
	b	$L667
$L669:
	lw	$3,24($17)
	lw	$2,56($17)
	addu	$3,$3,$2
	lw	$4,20($17)
	lw	$2,56($17)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
$L668:
	lw	$2,56($17)
	addiu	$3,$2,-1
	sw	$3,56($17)
	bnez	$2,$L669
	.set	noreorder
	nop
	.set	reorder
$L667:
	.set	noreorder
	nop
	.set	reorder
	move	$sp,$17
	ld	$17,32($sp)
	addiu	$sp,40
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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sw	$4,32($17)
	sw	$5,40($17)
	sw	$6,48($17)
	lw	$2,48($17)
	srl	$2,$2,1
	sw	$2,12($17)
	lw	$2,32($17)
	sw	$2,16($17)
	lw	$2,40($17)
	sw	$2,20($17)
	lw	$3,16($17)
	lw	$2,20($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L671
	lw	$3,20($17)
	lw	$2,48($17)
	addu	$2,$3,$2
	lw	$3,16($17)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L677
$L671:
	li	$2,0
	sw	$2,8($17)
	b	$L673
$L674:
	lw	$2,8($17)
	sll	$2,$2,1
	lw	$3,40($17)
	addu	$3,$3,$2
	lw	$2,8($17)
	sll	$2,$2,1
	lw	$4,32($17)
	addu	$2,$4,$2
	lh	$3,0($3)
	sh	$3,0($2)
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L673:
	lw	$3,8($17)
	lw	$2,12($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L674
	lw	$3,48($17)
	li	$2,1
	and	$2,$3
	beqz	$2,$L676
	lw	$2,48($17)
	addiu	$2,-1
	lw	$3,20($17)
	addu	$3,$3,$2
	lw	$2,48($17)
	addiu	$2,-1
	lw	$4,16($17)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	b	$L676
$L678:
	lw	$3,20($17)
	lw	$2,48($17)
	addu	$3,$3,$2
	lw	$4,16($17)
	lw	$2,48($17)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
$L677:
	lw	$2,48($17)
	addiu	$3,$2,-1
	sw	$3,48($17)
	bnez	$2,$L678
	.set	noreorder
	nop
	.set	reorder
$L676:
	.set	noreorder
	nop
	.set	reorder
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
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
	.frame	$17,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$17,32($sp)
	move	$17,$sp
	sw	$4,40($17)
	sw	$5,48($17)
	sw	$6,56($17)
	lw	$2,56($17)
	srl	$2,$2,2
	sw	$2,16($17)
	lw	$3,56($17)
	li	$2,4
	neg	$2,$2
	and	$2,$3
	sw	$2,12($17)
	lw	$2,40($17)
	sw	$2,20($17)
	lw	$2,48($17)
	sw	$2,24($17)
	lw	$3,20($17)
	lw	$2,24($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L680
	lw	$3,24($17)
	lw	$2,56($17)
	addu	$2,$3,$2
	lw	$3,20($17)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L687
$L680:
	li	$2,0
	sw	$2,8($17)
	b	$L682
$L683:
	lw	$2,8($17)
	sll	$2,$2,2
	lw	$3,48($17)
	addu	$3,$3,$2
	lw	$2,8($17)
	sll	$2,$2,2
	lw	$4,40($17)
	addu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L682:
	lw	$3,8($17)
	lw	$2,16($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L683
	b	$L684
$L685:
	lw	$3,24($17)
	lw	$2,12($17)
	addu	$3,$3,$2
	lw	$4,20($17)
	lw	$2,12($17)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,12($17)
	addiu	$2,1
	sw	$2,12($17)
$L684:
	lw	$3,56($17)
	lw	$2,12($17)
	sltu	$2,$3
	move	$2,$24
	bnez	$2,$L685
	b	$L686
$L688:
	lw	$3,24($17)
	lw	$2,56($17)
	addu	$3,$3,$2
	lw	$4,20($17)
	lw	$2,56($17)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
$L687:
	lw	$2,56($17)
	addiu	$3,$2,-1
	sw	$3,56($17)
	bnez	$2,$L688
	.set	noreorder
	nop
	.set	reorder
$L686:
	.set	noreorder
	nop
	.set	reorder
	move	$sp,$17
	ld	$17,32($sp)
	addiu	$sp,40
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	lw	$3,8($17)
	lw	$2,16($17)
	div	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L693
	move	$28,$2
	sw	$2,0($17)
	move	$2,$28
	sw	$4,24($17)
	lw	$2,%call16(__mips16_floatunsidf)($2)
	lw	$4,24($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
	jr	$7
	.type	__pool___uitod_693, @object
__pool___uitod_693:
	.align	2
$L693:
	.word	__gnu_local_gp
	.type	__pend___uitod_693, @object
__pend___uitod_693:
	.end	__uitod
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.set	mips16
	.set	nomicromips
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L696
	move	$28,$2
	sw	$2,0($17)
	move	$2,$28
	sw	$4,24($17)
	lw	$2,%call16(__mips16_floatunsisf)($2)
	lw	$4,24($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
	jr	$7
	.type	__pool___uitof_696, @object
__pool___uitof_696:
	.align	2
$L696:
	.word	__gnu_local_gp
	.type	__pend___uitof_696, @object
__pend___uitof_696:
	.end	__uitof
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.set	mips16
	.set	nomicromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80060000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	move	$3,$18
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L699
	move	$28,$2
	sw	$2,0($17)
	move	$2,$28
	sd	$4,32($17)
	lw	$5,%got(__mips16_call_stub_df_0)($2)
	ld	$4,32($17)
	lw	$2,%call16(__floatundidf)($2)
	jalr	$5
	lw	$6,0($17)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$6,16($sp)
	move	$18,$6
	ld	$17,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___ulltod_699, @object
__pool___ulltod_699:
	.align	2
$L699:
	.word	__gnu_local_gp
	.type	__pend___ulltod_699, @object
__pend___ulltod_699:
	.end	__ulltod
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.set	mips16
	.set	nomicromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80060000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	move	$3,$18
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L702
	move	$28,$2
	sw	$2,0($17)
	move	$2,$28
	sd	$4,32($17)
	lw	$5,%got(__mips16_call_stub_sf_0)($2)
	ld	$4,32($17)
	lw	$2,%call16(__floatundisf)($2)
	jalr	$5
	lw	$6,0($17)
	move	$28,$6
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,24($sp)
	ld	$6,16($sp)
	move	$18,$6
	ld	$17,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___ulltof_702, @object
__pool___ulltof_702:
	.align	2
$L702:
	.word	__gnu_local_gp
	.type	__pend___ulltof_702, @object
__pend___ulltof_702:
	.end	__ulltof
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.set	mips16
	.set	nomicromips
	.ent	__umodi
	.type	__umodi, @function
__umodi:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	lw	$3,8($17)
	lw	$2,16($17)
	divu	$0,$3,$2
	bnez	$2,1f
	break	7
1:
	mfhi	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	move	$2,$4
	sh	$2,24($17)
	li	$2,0
	sw	$2,8($17)
	b	$L706
$L709:
	lhu	$3,24($17)
	li	$4,15
	lw	$2,8($17)
	subu	$2,$4,$2
	sra	$3,$2
	li	$2,1
	and	$2,$3
	bnez	$2,$L711
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L706:
	lw	$2,8($17)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L709
	b	$L708
$L711:
	.set	noreorder
	nop
	.set	reorder
$L708:
	lw	$2,8($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	move	$2,$4
	sh	$2,24($17)
	li	$2,0
	sw	$2,8($17)
	b	$L713
$L716:
	lhu	$3,24($17)
	lw	$2,8($17)
	sra	$3,$2
	li	$2,1
	and	$2,$3
	bnez	$2,$L718
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L713:
	lw	$2,8($17)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L716
	b	$L715
$L718:
	.set	noreorder
	nop
	.set	reorder
$L715:
	lw	$2,8($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L725
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	lw	$2,%call16(__mips16_gesf2)($16)
	lw	$5,$L726
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	bnez	$2,$L724
	lw	$2,%call16(__mips16_subsf3)($16)
	lw	$5,$L726
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$3,$2
	lw	$2,%call16(__mips16_fix_truncsfsi)($16)
	move	$4,$3
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$3,$2
	li	$2,32768
	addu	$2,$3,$2
	b	$L722
$L724:
	lw	$2,%call16(__mips16_fix_truncsfsi)($16)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
$L722:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___fixunssfsi_725, @object
__pool___fixunssfsi_725:
	.align	2
$L725:
	.word	__gnu_local_gp
$L726:
	.word	1191182336
	.type	__pend___fixunssfsi_725, @object
__pend___fixunssfsi_725:
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.set	mips16
	.set	nomicromips
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	move	$2,$4
	sh	$2,24($17)
	li	$2,0
	sw	$2,12($17)
	li	$2,0
	sw	$2,8($17)
	b	$L728
$L730:
	lhu	$3,24($17)
	lw	$2,8($17)
	sra	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L729
	lw	$2,12($17)
	addiu	$2,1
	sw	$2,12($17)
$L729:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L728:
	lw	$2,8($17)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L730
	lw	$3,12($17)
	li	$2,1
	and	$2,$3
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	move	$2,$4
	sh	$2,24($17)
	li	$2,0
	sw	$2,12($17)
	li	$2,0
	sw	$2,8($17)
	b	$L733
$L735:
	lhu	$3,24($17)
	lw	$2,8($17)
	sra	$3,$2
	li	$2,1
	and	$2,$3
	beqz	$2,$L734
	lw	$2,12($17)
	addiu	$2,1
	sw	$2,12($17)
$L734:
	lw	$2,8($17)
	addiu	$2,1
	sw	$2,8($17)
$L733:
	lw	$2,8($17)
	slt	$2,16
	move	$2,$24
	bnez	$2,$L735
	lw	$2,12($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	li	$2,0
	sw	$2,8($17)
	b	$L738
$L740:
	lw	$3,24($17)
	li	$2,1
	and	$2,$3
	beqz	$2,$L739
	lw	$3,8($17)
	lw	$2,32($17)
	addu	$2,$3,$2
	sw	$2,8($17)
$L739:
	lw	$2,24($17)
	srl	$2,$2,1
	sw	$2,24($17)
	lw	$2,32($17)
	sll	$2,$2,1
	sw	$2,32($17)
$L738:
	lw	$2,24($17)
	bnez	$2,$L740
	lw	$2,8($17)
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	li	$2,0
	sw	$2,8($17)
	lw	$2,24($17)
	bnez	$2,$L745
	li	$2,0
	b	$L744
$L747:
	lw	$3,32($17)
	li	$2,1
	and	$2,$3
	beqz	$2,$L746
	lw	$3,8($17)
	lw	$2,24($17)
	addu	$2,$3,$2
	sw	$2,8($17)
$L746:
	lw	$2,24($17)
	sll	$2,$2,1
	sw	$2,24($17)
	lw	$2,32($17)
	srl	$2,$2,1
	sw	$2,32($17)
$L745:
	lw	$2,32($17)
	bnez	$2,$L747
	lw	$2,8($17)
$L744:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	li	$2,1
	sw	$2,8($17)
	li	$2,0
	sw	$2,12($17)
	b	$L749
$L751:
	lw	$2,32($17)
	sll	$2,$2,1
	sw	$2,32($17)
	lw	$2,8($17)
	sll	$2,$2,1
	sw	$2,8($17)
$L749:
	lw	$3,32($17)
	lw	$2,24($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L752
	lw	$2,8($17)
	beqz	$2,$L752
	lw	$2,32($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L751
	b	$L752
$L754:
	lw	$3,24($17)
	lw	$2,32($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L753
	lw	$3,24($17)
	lw	$2,32($17)
	subu	$2,$3,$2
	sw	$2,24($17)
	lw	$3,12($17)
	lw	$2,8($17)
	or	$2,$3
	sw	$2,12($17)
$L753:
	lw	$2,8($17)
	srl	$2,$2,1
	sw	$2,8($17)
	lw	$2,32($17)
	srl	$2,$2,1
	sw	$2,32($17)
$L752:
	lw	$2,8($17)
	bnez	$2,$L754
	lw	$2,40($17)
	beqz	$2,$L755
	lw	$2,24($17)
	b	$L756
$L755:
	lw	$2,12($17)
$L756:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L767
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,32($17)
	sw	$5,40($17)
	lw	$2,%call16(__mips16_ltsf2)($16)
	lw	$5,40($17)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L765
	li	$2,1
	neg	$2,$2
	b	$L760
$L765:
	lw	$2,%call16(__mips16_gtsf2)($16)
	lw	$5,40($17)
	lw	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L766
	li	$2,1
	b	$L760
$L766:
	li	$2,0
$L760:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___mspabi_cmpf_767, @object
__pool___mspabi_cmpf_767:
	.align	2
$L767:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpf_767, @object
__pend___mspabi_cmpf_767:
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
	.frame	$17,32,$31		# vars= 0, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	addiu	$17,$sp,32
	lw	$2,$L778
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,32($17)
	sd	$5,40($17)
	lw	$2,%call16(__mips16_ltdf2)($16)
	ld	$5,40($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,0
	move	$2,$24
	beqz	$2,$L776
	li	$2,1
	neg	$2,$2
	b	$L771
$L776:
	lw	$2,%call16(__mips16_gtdf2)($16)
	ld	$5,40($17)
	ld	$4,32($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	slt	$2,1
	move	$2,$24
	bnez	$2,$L777
	li	$2,1
	b	$L771
$L777:
	li	$2,0
$L771:
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	addiu	$sp,32
	jr	$7
	.type	__pool___mspabi_cmpd_778, @object
__pool___mspabi_cmpd_778:
	.align	2
$L778:
	.word	__gnu_local_gp
	.type	__pend___mspabi_cmpd_778, @object
__pend___mspabi_cmpd_778:
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.set	mips16
	.set	nomicromips
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	lw	$3,8($17)
	lw	$2,16($17)
	dmult	$3,$2
	mflo	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	sw	$5,16($17)
	lwu	$3,8($17)
	lwu	$2,16($17)
	dmult	$3,$2
	mflo	$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sw	$4,32($17)
	sw	$5,40($17)
	li	$2,0
	sw	$2,12($17)
	li	$2,0
	sw	$2,16($17)
	lw	$2,40($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L784
	lw	$2,40($17)
	neg	$2,$2
	sw	$2,40($17)
	li	$2,1
	sw	$2,12($17)
$L784:
	li	$2,0
	sb	$2,8($17)
	b	$L785
$L788:
	lw	$3,40($17)
	li	$2,1
	and	$2,$3
	beqz	$2,$L786
	lw	$3,16($17)
	lw	$2,32($17)
	addu	$2,$3,$2
	sw	$2,16($17)
$L786:
	lw	$2,32($17)
	sll	$2,$2,1
	sw	$2,32($17)
	lw	$2,40($17)
	sra	$2,$2,1
	sw	$2,40($17)
	lb	$2,8($17)
	zeb	$2
	addiu	$2,1
	zeb	$2
	sb	$2,8($17)
$L785:
	lw	$2,40($17)
	beqz	$2,$L787
	lbu	$2,8($17)
	sltu	$2,32
	move	$2,$24
	bnez	$2,$L788
$L787:
	lw	$2,12($17)
	beqz	$2,$L789
	lw	$2,16($17)
	neg	$2,$2
	b	$L791
$L789:
	lw	$2,16($17)
$L791:
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
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
	.frame	$17,32,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	addiu	$17,$sp,32
	sw	$4,32($17)
	sw	$5,40($17)
	li	$2,0
	sw	$2,8($17)
	lw	$2,32($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L793
	lw	$2,32($17)
	neg	$2,$2
	sw	$2,32($17)
	lw	$2,8($17)
	sltu	$2,1
	move	$2,$24
	zeb	$2
	sw	$2,8($17)
$L793:
	lw	$2,40($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L794
	lw	$2,40($17)
	neg	$2,$2
	sw	$2,40($17)
	lw	$2,8($17)
	sltu	$2,1
	move	$2,$24
	zeb	$2
	sw	$2,8($17)
$L794:
	lw	$2,32($17)
	lw	$3,40($17)
	li	$6,0
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__udivmodsi4
	.option	pic2
	sw	$2,12($17)
	lw	$2,8($17)
	beqz	$2,$L795
	lw	$2,12($17)
	neg	$2,$2
	sw	$2,12($17)
$L795:
	lw	$2,12($17)
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	addiu	$sp,32
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
	.frame	$17,32,$31		# vars= 8, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-64
	move	$3,$31
	sd	$3,56($sp)
	sd	$17,48($sp)
	addiu	$17,$sp,32
	sw	$4,32($17)
	sw	$5,40($17)
	li	$2,0
	sw	$2,8($17)
	lw	$2,32($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L798
	lw	$2,32($17)
	neg	$2,$2
	sw	$2,32($17)
	li	$2,1
	sw	$2,8($17)
$L798:
	lw	$2,40($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L799
	lw	$2,40($17)
	neg	$2,$2
	sw	$2,40($17)
$L799:
	lw	$2,32($17)
	lw	$3,40($17)
	li	$6,1
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__udivmodsi4
	.option	pic2
	sw	$2,12($17)
	lw	$2,8($17)
	beqz	$2,$L800
	lw	$2,12($17)
	neg	$2,$2
	sw	$2,12($17)
$L800:
	lw	$2,12($17)
	move	$sp,$17
	ld	$7,24($sp)
	ld	$17,16($sp)
	addiu	$sp,32
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	move	$2,$4
	move	$3,$5
	sw	$6,40($17)
	sh	$2,24($17)
	move	$2,$3
	sh	$2,32($17)
	li	$2,1
	sh	$2,8($17)
	li	$2,0
	sh	$2,10($17)
	b	$L803
$L805:
	lhu	$2,32($17)
	sll	$2,$2,1
	sh	$2,32($17)
	lhu	$2,8($17)
	sll	$2,$2,1
	sh	$2,8($17)
$L803:
	lhu	$3,32($17)
	lhu	$2,24($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L806
	lhu	$2,8($17)
	beqz	$2,$L806
	lh	$2,32($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L805
	b	$L806
$L808:
	lhu	$3,24($17)
	lhu	$2,32($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L807
	lhu	$3,24($17)
	lhu	$2,32($17)
	subu	$2,$3,$2
	sh	$2,24($17)
	lhu	$2,10($17)
	lhu	$3,8($17)
	or	$2,$3
	sh	$2,10($17)
$L807:
	lhu	$2,8($17)
	srl	$2,$2,1
	sh	$2,8($17)
	lhu	$2,32($17)
	srl	$2,$2,1
	sh	$2,32($17)
$L806:
	lhu	$2,8($17)
	bnez	$2,$L808
	lw	$2,40($17)
	beqz	$2,$L809
	lhu	$2,24($17)
	b	$L810
$L809:
	lhu	$2,10($17)
$L810:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	sw	$5,32($17)
	sw	$6,40($17)
	li	$2,1
	sw	$2,8($17)
	li	$2,0
	sw	$2,12($17)
	b	$L812
$L814:
	lw	$2,32($17)
	sll	$2,$2,1
	sw	$2,32($17)
	lw	$2,8($17)
	sll	$2,$2,1
	sw	$2,8($17)
$L812:
	lw	$3,32($17)
	lw	$2,24($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L815
	lw	$2,8($17)
	beqz	$2,$L815
	lw	$2,32($17)
	slt	$2,0
	move	$2,$24
	beqz	$2,$L814
	b	$L815
$L817:
	lw	$3,24($17)
	lw	$2,32($17)
	sltu	$3,$2
	move	$2,$24
	bnez	$2,$L816
	lw	$3,24($17)
	lw	$2,32($17)
	subu	$2,$3,$2
	sw	$2,24($17)
	lw	$3,12($17)
	lw	$2,8($17)
	or	$2,$3
	sw	$2,12($17)
$L816:
	lw	$2,8($17)
	srl	$2,$2,1
	sw	$2,8($17)
	lw	$2,32($17)
	srl	$2,$2,1
	sw	$2,32($17)
$L815:
	lw	$2,8($17)
	bnez	$2,$L817
	lw	$2,40($17)
	beqz	$2,$L818
	lw	$2,24($17)
	b	$L819
$L818:
	lw	$2,12($17)
$L819:
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
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
	.frame	$17,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$17,32($sp)
	move	$17,$sp
	sd	$4,40($17)
	sw	$5,48($17)
	li	$2,32
	sw	$2,8($17)
	ld	$2,40($17)
	sd	$2,16($17)
	lw	$3,48($17)
	lw	$2,8($17)
	and	$2,$3
	beqz	$2,$L821
	li	$2,0
	sw	$2,28($17)
	lw	$3,20($17)
	lw	$4,48($17)
	lw	$2,8($17)
	subu	$2,$4,$2
	sll	$3,$2
	move	$2,$3
	sw	$2,24($17)
	b	$L822
$L821:
	lw	$2,48($17)
	bnez	$2,$L823
	ld	$2,40($17)
	b	$L825
$L823:
	lw	$2,20($17)
	lw	$3,48($17)
	sll	$2,$3
	sw	$2,28($17)
	lw	$2,16($17)
	move	$3,$2
	lw	$2,48($17)
	sll	$3,$2
	lw	$2,20($17)
	lw	$5,8($17)
	lw	$4,48($17)
	subu	$4,$5,$4
	srl	$2,$4
	or	$2,$3
	sw	$2,24($17)
$L822:
	ld	$2,24($17)
$L825:
	move	$sp,$17
	ld	$17,32($sp)
	addiu	$sp,40
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
	.frame	$17,56,$31		# vars= 40, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$17,48($sp)
	move	$17,$sp
	sd	$5,64($17)
	sd	$4,56($17)
	sw	$6,72($17)
	li	$2,64
	sw	$2,8($17)
	ld	$3,64($17)
	ld	$2,56($17)
	sd	$3,24($17)
	sd	$2,16($17)
	lw	$3,72($17)
	lw	$2,8($17)
	and	$2,$3
	beqz	$2,$L827
	li	$2,0
	sd	$2,40($17)
	ld	$3,24($17)
	lw	$4,72($17)
	lw	$2,8($17)
	subu	$2,$4,$2
	dsll	$3,$2
	move	$2,$3
	sd	$2,32($17)
	b	$L828
$L827:
	lw	$2,72($17)
	bnez	$2,$L829
	ld	$3,64($17)
	ld	$2,56($17)
	b	$L831
$L829:
	ld	$2,24($17)
	lw	$3,72($17)
	dsll	$2,$3
	sd	$2,40($17)
	ld	$2,16($17)
	move	$3,$2
	lw	$2,72($17)
	dsll	$3,$2
	ld	$2,24($17)
	lw	$5,8($17)
	lw	$4,72($17)
	subu	$4,$5,$4
	dsrl	$2,$4
	or	$2,$3
	sd	$2,32($17)
$L828:
	ld	$3,40($17)
	ld	$2,32($17)
$L831:
	move	$sp,$17
	ld	$17,48($sp)
	addiu	$sp,56
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
	.frame	$17,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$17,32($sp)
	move	$17,$sp
	sd	$4,40($17)
	sw	$5,48($17)
	li	$2,32
	sw	$2,8($17)
	ld	$2,40($17)
	sd	$2,16($17)
	lw	$3,48($17)
	lw	$2,8($17)
	and	$2,$3
	beqz	$2,$L833
	lw	$2,16($17)
	lw	$3,8($17)
	addiu	$3,-1
	sra	$2,$3
	sw	$2,24($17)
	lw	$3,16($17)
	lw	$4,48($17)
	lw	$2,8($17)
	subu	$2,$4,$2
	sra	$3,$2
	move	$2,$3
	sw	$2,28($17)
	b	$L834
$L833:
	lw	$2,48($17)
	bnez	$2,$L835
	ld	$2,40($17)
	b	$L837
$L835:
	lw	$2,16($17)
	lw	$3,48($17)
	sra	$2,$3
	sw	$2,24($17)
	lw	$2,16($17)
	move	$4,$2
	lw	$3,8($17)
	lw	$2,48($17)
	subu	$2,$3,$2
	move	$3,$4
	sll	$3,$2
	lw	$2,20($17)
	lw	$4,48($17)
	srl	$2,$4
	or	$2,$3
	sw	$2,28($17)
$L834:
	ld	$2,24($17)
$L837:
	move	$sp,$17
	ld	$17,32($sp)
	addiu	$sp,40
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
	.frame	$17,56,$31		# vars= 40, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$17,48($sp)
	move	$17,$sp
	sd	$5,64($17)
	sd	$4,56($17)
	sw	$6,72($17)
	li	$2,64
	sw	$2,8($17)
	ld	$3,64($17)
	ld	$2,56($17)
	sd	$3,24($17)
	sd	$2,16($17)
	lw	$3,72($17)
	lw	$2,8($17)
	and	$2,$3
	beqz	$2,$L839
	ld	$2,16($17)
	lw	$3,8($17)
	addiu	$3,-1
	dsra	$2,$3
	sd	$2,32($17)
	ld	$3,16($17)
	lw	$4,72($17)
	lw	$2,8($17)
	subu	$2,$4,$2
	dsra	$3,$2
	move	$2,$3
	sd	$2,40($17)
	b	$L840
$L839:
	lw	$2,72($17)
	bnez	$2,$L841
	ld	$3,64($17)
	ld	$2,56($17)
	b	$L843
$L841:
	ld	$2,16($17)
	lw	$3,72($17)
	dsra	$2,$3
	sd	$2,32($17)
	ld	$2,16($17)
	move	$4,$2
	lw	$3,8($17)
	lw	$2,72($17)
	subu	$2,$3,$2
	move	$3,$4
	dsll	$3,$2
	ld	$2,24($17)
	lw	$4,72($17)
	dsrl	$2,$4
	or	$2,$3
	sd	$2,40($17)
$L840:
	ld	$3,40($17)
	ld	$2,32($17)
$L843:
	move	$sp,$17
	ld	$17,48($sp)
	addiu	$sp,56
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sd	$4,8($17)
	ld	$2,8($17)
	dsrl	$2,56
	move	$3,$2
	ld	$2,8($17)
	dsrl	$2,40
	move	$4,$2
	li	$2,65280
	and	$2,$4
	or	$3,$2
	ld	$2,8($17)
	dsrl	$2,24
	move	$4,$2
	ld	$2,$L847
	and	$2,$4
	or	$3,$2
	ld	$2,8($17)
	dsrl	$2,8
	move	$4,$2
	ld	$2,$L848
	and	$2,$4
	or	$3,$2
	ld	$2,8($17)
	dsll	$4,$2,8
	ld	$2,$L849
	and	$2,$4
	or	$3,$2
	ld	$2,8($17)
	dsll	$4,$2,24
	ld	$2,$L850
	and	$2,$4
	or	$3,$2
	ld	$2,8($17)
	dsll	$4,$2,40
	ld	$2,$L851
	and	$2,$4
	or	$3,$2
	ld	$2,8($17)
	dsll	$2,$2,56
	or	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool___bswapdi2_846, @object
__pool___bswapdi2_846:
	.align	2
$L846:
	.word	__gnu_local_gp
	.align	3
$L847:
	.dword	16711680
$L848:
	.dword	4278190080
$L849:
	.dword	1095216660480
$L850:
	.dword	280375465082880
$L851:
	.dword	71776119061217280
	.type	__pend___bswapdi2_846, @object
__pend___bswapdi2_846:
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.set	mips16
	.set	nomicromips
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sw	$4,8($17)
	lw	$2,8($17)
	srl	$3,$2,24
	lw	$2,8($17)
	srl	$4,$2,8
	li	$2,65280
	and	$2,$4
	or	$3,$2
	lw	$2,8($17)
	sll	$4,$2,8
	lw	$2,$L855
	and	$2,$4
	or	$3,$2
	lw	$2,8($17)
	sll	$2,$2,24
	or	$2,$3
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
	jr	$31
	.type	__pool___bswapsi2_854, @object
__pool___bswapsi2_854:
	.align	2
$L854:
	.word	__gnu_local_gp
$L855:
	.word	16711680
	.type	__pend___bswapsi2_854, @object
__pend___bswapsi2_854:
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.set	mips16
	.set	nomicromips
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sw	$4,32($17)
	lw	$2,32($17)
	sw	$2,8($17)
	lw	$3,8($17)
	lw	$2,$L867
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L857
	li	$2,16
	b	$L858
$L857:
	li	$2,0
$L858:
	sw	$2,12($17)
	li	$3,16
	lw	$2,12($17)
	subu	$3,$3,$2
	lw	$2,8($17)
	srl	$2,$3
	sw	$2,8($17)
	lw	$2,12($17)
	sw	$2,16($17)
	lw	$3,8($17)
	li	$2,65280
	and	$2,$3
	bnez	$2,$L859
	li	$2,8
	b	$L860
$L859:
	li	$2,0
$L860:
	sw	$2,12($17)
	li	$3,8
	lw	$2,12($17)
	subu	$3,$3,$2
	lw	$2,8($17)
	srl	$2,$3
	sw	$2,8($17)
	lw	$2,12($17)
	lw	$3,16($17)
	addu	$2,$3,$2
	sw	$2,16($17)
	lw	$3,8($17)
	li	$2,240
	and	$2,$3
	bnez	$2,$L861
	li	$2,4
	b	$L862
$L861:
	li	$2,0
$L862:
	sw	$2,12($17)
	li	$3,4
	lw	$2,12($17)
	subu	$3,$3,$2
	lw	$2,8($17)
	srl	$2,$3
	sw	$2,8($17)
	lw	$2,12($17)
	lw	$3,16($17)
	addu	$2,$3,$2
	sw	$2,16($17)
	lw	$3,8($17)
	li	$2,12
	and	$2,$3
	bnez	$2,$L863
	li	$2,2
	b	$L864
$L863:
	li	$2,0
$L864:
	sw	$2,12($17)
	li	$3,2
	lw	$2,12($17)
	subu	$3,$3,$2
	lw	$2,8($17)
	srl	$2,$3
	sw	$2,8($17)
	lw	$2,12($17)
	lw	$3,16($17)
	addu	$2,$3,$2
	sw	$2,16($17)
	lw	$3,8($17)
	li	$2,2
	and	$2,$3
	sltu	$2,1
	move	$2,$24
	zeb	$2
	move	$4,$2
	li	$3,2
	lw	$2,8($17)
	subu	$2,$3,$2
	mult	$4,$2
	mflo	$3
	lw	$2,16($17)
	addu	$2,$3,$2
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
	jr	$31
	.type	__pool___clzsi2_866, @object
__pool___clzsi2_866:
	.align	2
$L866:
	.word	__gnu_local_gp
$L867:
	.word	65536
	.type	__pend___clzsi2_866, @object
__pend___clzsi2_866:
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__clzti2
	.set	mips16
	.set	nomicromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$17,48,$31		# vars= 24, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-80
	move	$3,$31
	sd	$3,72($sp)
	sd	$17,64($sp)
	addiu	$17,$sp,32
	lw	$2,$L870
	move	$28,$2
	sw	$2,0($17)
	move	$6,$28
	sd	$5,56($17)
	sd	$4,48($17)
	ld	$3,56($17)
	ld	$2,48($17)
	sd	$3,24($17)
	sd	$2,16($17)
	ld	$2,16($17)
	sltu	$2,1
	move	$2,$24
	zeb	$2
	neg	$2,$2
	sd	$2,8($17)
	ld	$3,16($17)
	ld	$2,8($17)
	not	$2,$2
	and	$2,$3
	move	$4,$2
	ld	$3,24($17)
	ld	$2,8($17)
	and	$2,$3
	move	$3,$4
	or	$3,$2
	lw	$2,%call16(__clzdi2)($6)
	move	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$3,$2
	ld	$2,8($17)
	sll	$4,$2,0
	li	$2,64
	and	$2,$4
	addu	$2,$3,$2
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	addiu	$sp,48
	jr	$7
	.type	__pool___clzti2_870, @object
__pool___clzti2_870:
	.align	2
$L870:
	.word	__gnu_local_gp
	.type	__pend___clzti2_870, @object
__pend___clzti2_870:
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.globl	__cmpdi2
	.set	mips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sd	$4,32($17)
	sd	$5,40($17)
	ld	$2,32($17)
	sd	$2,8($17)
	ld	$2,40($17)
	sd	$2,16($17)
	lw	$3,8($17)
	lw	$2,16($17)
	slt	$3,$2
	move	$2,$24
	beqz	$2,$L872
	li	$2,0
	b	$L877
$L872:
	lw	$3,8($17)
	lw	$2,16($17)
	slt	$2,$3
	move	$2,$24
	beqz	$2,$L874
	li	$2,2
	b	$L877
$L874:
	lw	$3,12($17)
	lw	$2,20($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L875
	li	$2,0
	b	$L877
$L875:
	lw	$3,12($17)
	lw	$2,20($17)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L876
	li	$2,2
	b	$L877
$L876:
	li	$2,1
$L877:
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
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
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	sd	$4,24($17)
	sd	$5,32($17)
	ld	$3,32($17)
	ld	$2,24($17)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__cmpdi2
	.option	pic2
	addiu	$2,-1
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
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
	.frame	$17,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$17,40($sp)
	move	$17,$sp
	sd	$5,56($17)
	sd	$4,48($17)
	sd	$7,72($17)
	sd	$6,64($17)
	ld	$3,56($17)
	ld	$2,48($17)
	sd	$3,16($17)
	sd	$2,8($17)
	ld	$3,72($17)
	ld	$2,64($17)
	sd	$3,32($17)
	sd	$2,24($17)
	ld	$3,8($17)
	ld	$2,24($17)
	slt	$3,$2
	move	$2,$24
	beqz	$2,$L881
	li	$2,0
	b	$L886
$L881:
	ld	$3,8($17)
	ld	$2,24($17)
	slt	$2,$3
	move	$2,$24
	beqz	$2,$L883
	li	$2,2
	b	$L886
$L883:
	ld	$3,16($17)
	ld	$2,32($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L884
	li	$2,0
	b	$L886
$L884:
	ld	$3,16($17)
	ld	$2,32($17)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L885
	li	$2,2
	b	$L886
$L885:
	li	$2,1
$L886:
	move	$sp,$17
	ld	$17,40($sp)
	addiu	$sp,48
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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sw	$4,32($17)
	lw	$2,32($17)
	sw	$2,8($17)
	lw	$3,8($17)
	li	$2,65535
	and	$2,$3
	bnez	$2,$L888
	li	$2,16
	b	$L889
$L888:
	li	$2,0
$L889:
	sw	$2,12($17)
	lw	$2,8($17)
	lw	$3,12($17)
	srl	$2,$3
	sw	$2,8($17)
	lw	$2,12($17)
	sw	$2,16($17)
	lw	$3,8($17)
	li	$2,255
	and	$2,$3
	bnez	$2,$L890
	li	$2,8
	b	$L891
$L890:
	li	$2,0
$L891:
	sw	$2,12($17)
	lw	$2,8($17)
	lw	$3,12($17)
	srl	$2,$3
	sw	$2,8($17)
	lw	$2,12($17)
	lw	$3,16($17)
	addu	$2,$3,$2
	sw	$2,16($17)
	lw	$3,8($17)
	li	$2,15
	and	$2,$3
	bnez	$2,$L892
	li	$2,4
	b	$L893
$L892:
	li	$2,0
$L893:
	sw	$2,12($17)
	lw	$2,8($17)
	lw	$3,12($17)
	srl	$2,$3
	sw	$2,8($17)
	lw	$2,12($17)
	lw	$3,16($17)
	addu	$2,$3,$2
	sw	$2,16($17)
	lw	$3,8($17)
	li	$2,3
	and	$2,$3
	bnez	$2,$L894
	li	$2,2
	b	$L895
$L894:
	li	$2,0
$L895:
	sw	$2,12($17)
	lw	$2,8($17)
	lw	$3,12($17)
	srl	$2,$3
	sw	$2,8($17)
	lw	$3,8($17)
	li	$2,3
	and	$2,$3
	sw	$2,8($17)
	lw	$2,12($17)
	lw	$3,16($17)
	addu	$2,$3,$2
	sw	$2,16($17)
	lw	$2,8($17)
	not	$3,$2
	li	$2,1
	and	$3,$2
	lw	$2,8($17)
	srl	$2,$2,1
	li	$4,2
	subu	$2,$4,$2
	neg	$3,$3
	and	$3,$2
	lw	$2,16($17)
	addu	$2,$3,$2
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
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
	.frame	$17,48,$31		# vars= 24, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-80
	move	$3,$31
	sd	$3,72($sp)
	sd	$17,64($sp)
	addiu	$17,$sp,32
	lw	$2,$L899
	move	$28,$2
	sw	$2,0($17)
	move	$6,$28
	sd	$5,56($17)
	sd	$4,48($17)
	ld	$3,56($17)
	ld	$2,48($17)
	sd	$3,24($17)
	sd	$2,16($17)
	ld	$2,24($17)
	sltu	$2,1
	move	$2,$24
	zeb	$2
	neg	$2,$2
	sd	$2,8($17)
	ld	$3,16($17)
	ld	$2,8($17)
	and	$2,$3
	move	$4,$2
	ld	$3,24($17)
	ld	$2,8($17)
	not	$2,$2
	and	$2,$3
	move	$3,$4
	or	$3,$2
	lw	$2,%call16(__ctzdi2)($6)
	move	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	move	$3,$2
	ld	$2,8($17)
	sll	$4,$2,0
	li	$2,64
	and	$2,$4
	addu	$2,$3,$2
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	addiu	$sp,48
	jr	$7
	.type	__pool___ctzti2_899, @object
__pool___ctzti2_899:
	.align	2
$L899:
	.word	__gnu_local_gp
	.type	__pend___ctzti2_899, @object
__pend___ctzti2_899:
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.set	mips16
	.set	nomicromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$17,40,$31		# vars= 16, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	addiu	$17,$sp,32
	lw	$2,$L905
	move	$28,$2
	sw	$2,0($17)
	move	$6,$28
	sd	$5,48($17)
	sd	$4,40($17)
	ld	$3,48($17)
	ld	$2,40($17)
	sd	$3,16($17)
	sd	$2,8($17)
	ld	$2,16($17)
	bnez	$2,$L901
	ld	$2,8($17)
	bnez	$2,$L902
	li	$2,0
	b	$L904
$L902:
	ld	$2,8($17)
	move	$3,$2
	lw	$2,%call16(__ctzdi2)($6)
	move	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	addiu	$2,65
	b	$L904
$L901:
	ld	$3,16($17)
	lw	$2,%call16(__ctzdi2)($6)
	move	$4,$3
	move	$25,$2
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	addiu	$2,1
$L904:
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool___ffsti2_905, @object
__pool___ffsti2_905:
	.align	2
$L905:
	.word	__gnu_local_gp
	.type	__pend___ffsti2_905, @object
__pend___ffsti2_905:
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.globl	__lshrdi3
	.set	mips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$17,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$17,32($sp)
	move	$17,$sp
	sd	$4,40($17)
	sw	$5,48($17)
	li	$2,32
	sw	$2,8($17)
	ld	$2,40($17)
	sd	$2,16($17)
	lw	$3,48($17)
	lw	$2,8($17)
	and	$2,$3
	beqz	$2,$L907
	li	$2,0
	sw	$2,24($17)
	lw	$2,16($17)
	lw	$4,48($17)
	lw	$3,8($17)
	subu	$3,$4,$3
	srl	$2,$3
	sw	$2,28($17)
	b	$L908
$L907:
	lw	$2,48($17)
	bnez	$2,$L909
	ld	$2,40($17)
	b	$L911
$L909:
	lw	$2,16($17)
	lw	$3,48($17)
	srl	$2,$3
	sw	$2,24($17)
	lw	$3,16($17)
	lw	$4,8($17)
	lw	$2,48($17)
	subu	$2,$4,$2
	sll	$3,$2
	lw	$2,20($17)
	lw	$4,48($17)
	srl	$2,$4
	or	$2,$3
	sw	$2,28($17)
$L908:
	ld	$2,24($17)
$L911:
	move	$sp,$17
	ld	$17,32($sp)
	addiu	$sp,40
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
	.frame	$17,56,$31		# vars= 40, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$17,48($sp)
	move	$17,$sp
	sd	$5,64($17)
	sd	$4,56($17)
	sw	$6,72($17)
	li	$2,64
	sw	$2,8($17)
	ld	$3,64($17)
	ld	$2,56($17)
	sd	$3,24($17)
	sd	$2,16($17)
	lw	$3,72($17)
	lw	$2,8($17)
	and	$2,$3
	beqz	$2,$L913
	li	$2,0
	sd	$2,32($17)
	ld	$2,16($17)
	lw	$4,72($17)
	lw	$3,8($17)
	subu	$3,$4,$3
	dsrl	$2,$3
	sd	$2,40($17)
	b	$L914
$L913:
	lw	$2,72($17)
	bnez	$2,$L915
	ld	$3,64($17)
	ld	$2,56($17)
	b	$L917
$L915:
	ld	$2,16($17)
	lw	$3,72($17)
	dsrl	$2,$3
	sd	$2,32($17)
	ld	$3,16($17)
	lw	$4,8($17)
	lw	$2,72($17)
	subu	$2,$4,$2
	dsll	$3,$2
	ld	$2,24($17)
	lw	$4,72($17)
	dsrl	$2,$4
	or	$2,$3
	sd	$2,40($17)
$L914:
	ld	$3,40($17)
	ld	$2,32($17)
$L917:
	move	$sp,$17
	ld	$17,48($sp)
	addiu	$sp,56
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
	.frame	$17,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-40
	sd	$17,32($sp)
	move	$17,$sp
	sw	$4,40($17)
	sw	$5,48($17)
	li	$2,16
	sw	$2,8($17)
	li	$2,1
	neg	$2,$2
	lw	$3,8($17)
	srl	$2,$3
	sw	$2,12($17)
	lw	$3,40($17)
	lw	$2,12($17)
	and	$3,$2
	lw	$4,48($17)
	lw	$2,12($17)
	and	$2,$4
	mult	$3,$2
	mflo	$2
	sw	$2,28($17)
	lw	$2,28($17)
	lw	$3,8($17)
	srl	$2,$3
	sw	$2,16($17)
	lw	$3,28($17)
	lw	$2,12($17)
	and	$2,$3
	sw	$2,28($17)
	lw	$3,40($17)
	lw	$2,8($17)
	srl	$3,$2
	lw	$4,48($17)
	lw	$2,12($17)
	and	$2,$4
	mult	$3,$2
	mflo	$2
	lw	$3,16($17)
	addu	$2,$3,$2
	sw	$2,16($17)
	lw	$3,28($17)
	lw	$4,16($17)
	lw	$2,12($17)
	and	$2,$4
	lw	$4,8($17)
	sll	$2,$4
	addu	$2,$3,$2
	sw	$2,28($17)
	lw	$3,16($17)
	lw	$2,8($17)
	srl	$3,$2
	move	$2,$3
	sw	$2,24($17)
	lw	$2,28($17)
	lw	$3,8($17)
	srl	$2,$3
	sw	$2,16($17)
	lw	$3,28($17)
	lw	$2,12($17)
	and	$2,$3
	sw	$2,28($17)
	lw	$3,48($17)
	lw	$2,8($17)
	srl	$3,$2
	lw	$4,40($17)
	lw	$2,12($17)
	and	$2,$4
	mult	$3,$2
	mflo	$2
	lw	$3,16($17)
	addu	$2,$3,$2
	sw	$2,16($17)
	lw	$3,28($17)
	lw	$4,16($17)
	lw	$2,12($17)
	and	$2,$4
	lw	$4,8($17)
	sll	$2,$4
	addu	$2,$3,$2
	sw	$2,28($17)
	lw	$2,24($17)
	move	$4,$2
	lw	$2,16($17)
	lw	$3,8($17)
	srl	$2,$3
	addu	$2,$4,$2
	sw	$2,24($17)
	lw	$2,24($17)
	move	$5,$2
	lw	$3,40($17)
	lw	$2,8($17)
	srl	$3,$2
	lw	$2,48($17)
	lw	$4,8($17)
	srl	$2,$4
	mult	$3,$2
	mflo	$2
	addu	$2,$5,$2
	sw	$2,24($17)
	ld	$2,24($17)
	move	$sp,$17
	ld	$17,32($sp)
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
	.frame	$17,48,$31		# vars= 24, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-80
	move	$3,$31
	sd	$3,72($sp)
	sd	$17,64($sp)
	addiu	$17,$sp,32
	sd	$4,48($17)
	sd	$5,56($17)
	ld	$2,48($17)
	sd	$2,8($17)
	ld	$2,56($17)
	sd	$2,16($17)
	lw	$2,12($17)
	lw	$3,20($17)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__muldsi3
	.option	pic2
	sd	$2,24($17)
	lw	$2,24($17)
	move	$4,$2
	lw	$2,8($17)
	move	$3,$2
	lw	$2,20($17)
	mult	$3,$2
	mflo	$3
	lw	$2,12($17)
	lw	$5,16($17)
	mult	$2,$5
	mflo	$2
	addu	$2,$3,$2
	addu	$2,$4,$2
	sw	$2,24($17)
	ld	$2,24($17)
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	addiu	$sp,48
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
	.frame	$17,56,$31		# vars= 40, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	sd	$17,48($sp)
	move	$17,$sp
	sd	$4,56($17)
	sd	$5,64($17)
	li	$2,32
	sw	$2,8($17)
	li	$2,1
	neg	$2,$2
	lw	$3,8($17)
	dsrl	$2,$3
	sd	$2,16($17)
	ld	$3,56($17)
	ld	$2,16($17)
	and	$3,$2
	ld	$4,64($17)
	ld	$2,16($17)
	and	$2,$4
	dmult	$3,$2
	mflo	$2
	sd	$2,40($17)
	ld	$2,40($17)
	lw	$3,8($17)
	dsrl	$2,$3
	sd	$2,24($17)
	ld	$3,40($17)
	ld	$2,16($17)
	and	$2,$3
	sd	$2,40($17)
	ld	$3,56($17)
	lw	$2,8($17)
	dsrl	$3,$2
	ld	$4,64($17)
	ld	$2,16($17)
	and	$2,$4
	dmult	$3,$2
	mflo	$2
	ld	$3,24($17)
	daddu	$2,$3,$2
	sd	$2,24($17)
	ld	$3,40($17)
	ld	$4,24($17)
	ld	$2,16($17)
	and	$2,$4
	lw	$4,8($17)
	dsll	$2,$4
	daddu	$2,$3,$2
	sd	$2,40($17)
	ld	$3,24($17)
	lw	$2,8($17)
	dsrl	$3,$2
	move	$2,$3
	sd	$2,32($17)
	ld	$2,40($17)
	lw	$3,8($17)
	dsrl	$2,$3
	sd	$2,24($17)
	ld	$3,40($17)
	ld	$2,16($17)
	and	$2,$3
	sd	$2,40($17)
	ld	$3,64($17)
	lw	$2,8($17)
	dsrl	$3,$2
	ld	$4,56($17)
	ld	$2,16($17)
	and	$2,$4
	dmult	$3,$2
	mflo	$2
	ld	$3,24($17)
	daddu	$2,$3,$2
	sd	$2,24($17)
	ld	$3,40($17)
	ld	$4,24($17)
	ld	$2,16($17)
	and	$2,$4
	lw	$4,8($17)
	dsll	$2,$4
	daddu	$2,$3,$2
	sd	$2,40($17)
	ld	$2,32($17)
	move	$4,$2
	ld	$2,24($17)
	lw	$3,8($17)
	dsrl	$2,$3
	daddu	$2,$4,$2
	sd	$2,32($17)
	ld	$2,32($17)
	move	$5,$2
	ld	$3,56($17)
	lw	$2,8($17)
	dsrl	$3,$2
	ld	$2,64($17)
	lw	$4,8($17)
	dsrl	$2,$4
	dmult	$3,$2
	mflo	$2
	daddu	$2,$5,$2
	sd	$2,32($17)
	ld	$3,40($17)
	ld	$2,32($17)
	move	$sp,$17
	ld	$17,48($sp)
	addiu	$sp,56
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
	.frame	$17,72,$31		# vars= 48, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-104
	move	$3,$31
	sd	$3,96($sp)
	sd	$17,88($sp)
	addiu	$17,$sp,32
	sd	$5,80($17)
	sd	$4,72($17)
	sd	$7,96($17)
	sd	$6,88($17)
	ld	$3,80($17)
	ld	$2,72($17)
	sd	$3,16($17)
	sd	$2,8($17)
	ld	$3,96($17)
	ld	$2,88($17)
	sd	$3,32($17)
	sd	$2,24($17)
	ld	$2,16($17)
	ld	$3,32($17)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__mulddi3
	.option	pic2
	sd	$3,48($17)
	sd	$2,40($17)
	ld	$2,40($17)
	move	$4,$2
	ld	$2,8($17)
	move	$3,$2
	ld	$2,32($17)
	dmult	$3,$2
	mflo	$3
	ld	$2,16($17)
	ld	$5,24($17)
	dmult	$2,$5
	mflo	$2
	daddu	$2,$3,$2
	daddu	$2,$4,$2
	sd	$2,40($17)
	ld	$3,48($17)
	ld	$2,40($17)
	move	$sp,$17
	ld	$7,64($sp)
	ld	$17,56($sp)
	addiu	$sp,72
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
	.frame	$17,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00020000,0
	.fmask	0x00000000,0
	addiu	$sp,-8
	sd	$17,0($sp)
	move	$17,$sp
	sd	$4,8($17)
	ld	$2,8($17)
	li	$3,0
	dsubu	$2,$3,$2
	move	$sp,$17
	ld	$17,0($sp)
	addiu	$sp,8
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
	.frame	$17,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-16
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$17,$sp
	sd	$5,24($17)
	sd	$4,16($17)
	ld	$7,24($17)
	ld	$6,16($17)
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
	move	$sp,$17
	ld	$17,8($sp)
	ld	$16,0($sp)
	addiu	$sp,16
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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sd	$4,32($17)
	ld	$2,32($17)
	sd	$2,16($17)
	lw	$2,16($17)
	move	$3,$2
	lw	$2,20($17)
	xor	$2,$3
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,8($17)
	xor	$2,$3
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$2,$2,8
	lw	$3,8($17)
	xor	$2,$3
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$2,$2,4
	lw	$3,8($17)
	xor	$2,$3
	sw	$2,8($17)
	lw	$3,8($17)
	li	$2,15
	and	$2,$3
	li	$3,27030
	sra	$3,$2
	li	$2,1
	and	$2,$3
	move	$sp,$17
	ld	$17,24($sp)
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
	.frame	$17,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$17,40($sp)
	move	$17,$sp
	sd	$5,56($17)
	sd	$4,48($17)
	ld	$3,56($17)
	ld	$2,48($17)
	sd	$3,24($17)
	sd	$2,16($17)
	ld	$2,16($17)
	move	$3,$2
	ld	$2,24($17)
	xor	$2,$3
	sd	$2,32($17)
	lw	$2,32($17)
	move	$3,$2
	lw	$2,36($17)
	xor	$2,$3
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,8($17)
	xor	$2,$3
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$2,$2,8
	lw	$3,8($17)
	xor	$2,$3
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$2,$2,4
	lw	$3,8($17)
	xor	$2,$3
	sw	$2,8($17)
	lw	$3,8($17)
	li	$2,15
	and	$2,$3
	li	$3,27030
	sra	$3,$2
	li	$2,1
	and	$2,$3
	move	$sp,$17
	ld	$17,40($sp)
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
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,8($17)
	xor	$2,$3
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$2,$2,8
	lw	$3,8($17)
	xor	$2,$3
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$2,$2,4
	lw	$3,8($17)
	xor	$2,$3
	sw	$2,8($17)
	lw	$3,8($17)
	li	$2,15
	and	$2,$3
	li	$3,27030
	sra	$3,$2
	li	$2,1
	and	$2,$3
	move	$sp,$17
	ld	$17,16($sp)
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
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sd	$4,32($17)
	ld	$2,32($17)
	sd	$2,8($17)
	ld	$2,8($17)
	dsrl	$2,1
	move	$3,$2
	ld	$2,$L939
	and	$2,$3
	ld	$3,8($17)
	dsubu	$2,$3,$2
	sd	$2,8($17)
	ld	$2,8($17)
	dsrl	$2,2
	move	$3,$2
	ld	$2,$L940
	and	$3,$2
	ld	$4,8($17)
	ld	$2,$L940
	and	$2,$4
	daddu	$2,$3,$2
	sd	$2,8($17)
	ld	$2,8($17)
	dsrl	$2,4
	move	$3,$2
	ld	$2,8($17)
	daddu	$3,$3,$2
	ld	$2,$L941
	and	$2,$3
	sd	$2,8($17)
	ld	$2,8($17)
	sll	$3,$2,0
	ld	$2,8($17)
	dsrl	$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,16($17)
	lw	$2,16($17)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,16($17)
	addu	$2,$3,$2
	sw	$2,16($17)
	lw	$2,16($17)
	srl	$3,$2,8
	lw	$2,16($17)
	addu	$2,$3,$2
	move	$3,$2
	li	$2,127
	and	$2,$3
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
	jr	$31
	.type	__pool___popcountdi2_938, @object
__pool___popcountdi2_938:
	.align	2
$L938:
	.word	__gnu_local_gp
	.align	3
$L939:
	.dword	6148914691236517205
$L940:
	.dword	3689348814741910323
$L941:
	.dword	1085102592571150095
	.type	__pend___popcountdi2_938, @object
__pend___popcountdi2_938:
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.set	mips16
	.set	nomicromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$17,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-24
	sd	$17,16($sp)
	move	$17,$sp
	sw	$4,24($17)
	lw	$2,24($17)
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$3,$2,1
	lw	$2,$L945
	and	$2,$3
	lw	$3,8($17)
	subu	$2,$3,$2
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$3,$2,2
	lw	$2,$L946
	and	$3,$2
	lw	$4,8($17)
	lw	$2,$L946
	and	$2,$4
	addu	$2,$3,$2
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$3,$2,4
	lw	$2,8($17)
	addu	$3,$3,$2
	lw	$2,$L947
	and	$2,$3
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,8($17)
	addu	$2,$3,$2
	sw	$2,8($17)
	lw	$2,8($17)
	srl	$3,$2,8
	lw	$2,8($17)
	addu	$2,$3,$2
	move	$3,$2
	li	$2,63
	and	$2,$3
	move	$sp,$17
	ld	$17,16($sp)
	addiu	$sp,24
	jr	$31
	.type	__pool___popcountsi2_944, @object
__pool___popcountsi2_944:
	.align	2
$L944:
	.word	__gnu_local_gp
$L945:
	.word	1431655765
$L946:
	.word	858993459
$L947:
	.word	252645135
	.type	__pend___popcountsi2_944, @object
__pend___popcountsi2_944:
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.set	mips16
	.set	nomicromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$17,136,$31		# vars= 112, regs= 2/0, args= 0, gp= 8
	.mask	0x00030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-136
	sd	$17,128($sp)
	sd	$16,120($sp)
	move	$17,$sp
	sd	$5,144($17)
	sd	$4,136($17)
	ld	$5,144($17)
	ld	$4,136($17)
	sd	$5,16($17)
	sd	$4,8($17)
	ld	$4,8($17)
	dsll	$4,$4,63
	ld	$5,16($17)
	dsrl	$5,1
	move	$7,$5
	move	$5,$7
	or	$4,$5
	move	$7,$4
	ld	$4,8($17)
	dsrl	$4,1
	move	$6,$4
	ld	$4,$L951
	move	$5,$6
	and	$4,$5
	sd	$4,56($17)
	ld	$4,$L951
	move	$5,$7
	and	$5,$4
	sd	$5,64($17)
	ld	$5,16($17)
	ld	$4,8($17)
	ld	$7,16($17)
	ld	$6,8($17)
	move	$9,$7
	move	$8,$6
	move	$16,$9
	ld	$7,64($17)
	ld	$6,56($17)
	move	$11,$7
	move	$10,$6
	move	$6,$11
	dsubu	$5,$16,$6
	move	$7,$9
	move	$6,$8
	move	$9,$7
	move	$8,$6
	move	$6,$9
	sltu	$6,$5
	move	$6,$24
	dsll	$16,$6,32
	dsrl	$16,32
	move	$6,$8
	move	$7,$10
	dsubu	$4,$6,$7
	dsubu	$16,$4,$16
	move	$4,$16
	sd	$5,16($17)
	sd	$4,8($17)
	ld	$4,8($17)
	dsll	$4,$4,62
	ld	$5,16($17)
	dsrl	$5,2
	move	$3,$5
	move	$5,$3
	or	$4,$5
	move	$3,$4
	ld	$4,8($17)
	dsrl	$4,2
	move	$2,$4
	ld	$4,$L952
	move	$7,$3
	move	$6,$2
	move	$5,$6
	and	$5,$4
	sd	$5,72($17)
	ld	$4,$L952
	move	$5,$7
	and	$5,$4
	sd	$5,80($17)
	ld	$5,8($17)
	ld	$4,$L952
	and	$5,$4
	sd	$5,88($17)
	ld	$5,16($17)
	ld	$4,$L952
	and	$5,$4
	sd	$5,96($17)
	ld	$7,96($17)
	ld	$6,88($17)
	move	$9,$7
	move	$8,$6
	move	$6,$9
	ld	$3,80($17)
	ld	$2,72($17)
	move	$11,$3
	move	$10,$2
	move	$7,$11
	daddu	$5,$7,$6
	move	$3,$11
	move	$2,$10
	move	$11,$3
	move	$10,$2
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
	sd	$5,16($17)
	sd	$4,8($17)
	ld	$4,8($17)
	dsll	$4,$4,60
	ld	$5,16($17)
	dsrl	$5,4
	sd	$5,48($17)
	ld	$5,48($17)
	or	$4,$5
	sd	$4,48($17)
	ld	$4,8($17)
	dsrl	$4,4
	sd	$4,40($17)
	ld	$7,16($17)
	ld	$6,8($17)
	ld	$2,48($17)
	daddu	$5,$2,$7
	ld	$2,48($17)
	sltu	$5,$2
	move	$16,$24
	dsll	$16,$16,32
	dsrl	$16,32
	ld	$2,40($17)
	daddu	$4,$2,$6
	daddu	$2,$16,$4
	move	$4,$2
	move	$3,$5
	move	$2,$4
	ld	$4,$L953
	and	$4,$2
	sd	$4,8($17)
	ld	$4,$L953
	move	$2,$3
	and	$2,$4
	sd	$2,16($17)
	ld	$2,16($17)
	ld	$3,8($17)
	dsrl	$3,0
	sd	$3,112($17)
	li	$3,0
	sd	$3,104($17)
	ld	$3,112($17)
	daddu	$2,$2,$3
	sd	$2,24($17)
	ld	$2,24($17)
	sll	$3,$2,0
	ld	$2,24($17)
	dsrl	$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,32($17)
	lw	$2,32($17)
	srl	$2,$2,8
	srl	$2,$2,8
	lw	$3,32($17)
	addu	$2,$3,$2
	sw	$2,32($17)
	lw	$2,32($17)
	srl	$3,$2,8
	lw	$2,32($17)
	addu	$2,$3,$2
	move	$3,$2
	li	$2,255
	and	$2,$3
	move	$sp,$17
	ld	$17,128($sp)
	ld	$16,120($sp)
	addiu	$sp,136
	jr	$31
	.type	__pool___popcountti2_950, @object
__pool___popcountti2_950:
	.align	2
$L950:
	.word	__gnu_local_gp
	.align	3
$L951:
	.dword	6148914691236517205
$L952:
	.dword	3689348814741910323
$L953:
	.dword	1085102592571150095
	.type	__pend___popcountti2_950, @object
__pend___popcountti2_950:
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
	.frame	$17,48,$31		# vars= 16, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-80
	move	$3,$31
	sd	$3,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	addiu	$17,$sp,32
	lw	$2,$L964
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sd	$4,48($17)
	sw	$5,56($17)
	lw	$2,56($17)
	srl	$2,$2,31
	zeb	$2
	sw	$2,16($17)
	ld	$2,$L965
	sd	$2,8($17)
$L958:
	lw	$3,56($17)
	li	$2,1
	and	$2,$3
	beqz	$2,$L955
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,48($17)
	ld	$4,8($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,8($17)
$L955:
	lw	$2,56($17)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,56($17)
	lw	$2,56($17)
	beqz	$2,$L963
	lw	$2,%call16(__mips16_muldf3)($16)
	ld	$5,48($17)
	ld	$4,48($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sd	$2,48($17)
	b	$L958
$L963:
	.set	noreorder
	nop
	.set	reorder
	lw	$2,16($17)
	beqz	$2,$L959
	lw	$2,%call16(__mips16_divdf3)($16)
	ld	$5,8($17)
	ld	$4,$L965
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	b	$L961
$L959:
	ld	$2,8($17)
$L961:
	move	$6,$28
	lw	$6,%got(__mips16_ret_df)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	addiu	$sp,48
	jr	$7
	.type	__pool___powidf2_964, @object
__pool___powidf2_964:
	.align	2
$L964:
	.word	__gnu_local_gp
	.align	3
$L965:
	.word	1072693248
	.word	0
	.type	__pend___powidf2_964, @object
__pend___powidf2_964:
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
	.frame	$17,40,$31		# vars= 8, regs= 3/0, args= 32, gp= 8
	.mask	0x80030000,-8
	.fmask	0x00000000,0
	addiu	$sp,-72
	move	$3,$31
	sd	$3,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	addiu	$17,$sp,32
	lw	$2,$L976
	move	$28,$2
	sw	$2,0($17)
	move	$16,$28
	sw	$4,40($17)
	sw	$5,48($17)
	lw	$2,48($17)
	srl	$2,$2,31
	zeb	$2
	sw	$2,12($17)
	lw	$2,$L977
	sw	$2,8($17)
$L970:
	lw	$3,48($17)
	li	$2,1
	and	$2,$3
	beqz	$2,$L967
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,40($17)
	lw	$4,8($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sw	$2,8($17)
$L967:
	lw	$2,48($17)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,48($17)
	lw	$2,48($17)
	beqz	$2,$L975
	lw	$2,%call16(__mips16_mulsf3)($16)
	lw	$5,40($17)
	lw	$4,40($17)
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	sw	$2,40($17)
	b	$L970
$L975:
	.set	noreorder
	nop
	.set	reorder
	lw	$2,12($17)
	beqz	$2,$L971
	lw	$2,%call16(__mips16_divsf3)($16)
	lw	$5,8($17)
	lw	$4,$L977
	jalr	$2
	lw	$6,0($17)
	move	$28,$6
	b	$L973
$L971:
	lw	$2,8($17)
$L973:
	move	$6,$28
	lw	$6,%got(__mips16_ret_sf)($6)
	jalr	$6
	lw	$6,0($17)
	move	$28,$6
	move	$sp,$17
	ld	$7,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	addiu	$sp,40
	jr	$7
	.type	__pool___powisf2_976, @object
__pool___powisf2_976:
	.align	2
$L976:
	.word	__gnu_local_gp
$L977:
	.word	1065353216
	.type	__pend___powisf2_976, @object
__pend___powisf2_976:
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.set	mips16
	.set	nomicromips
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	$17,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-32
	sd	$17,24($sp)
	move	$17,$sp
	sd	$4,32($17)
	sd	$5,40($17)
	ld	$2,32($17)
	sd	$2,8($17)
	ld	$2,40($17)
	sd	$2,16($17)
	lw	$3,8($17)
	lw	$2,16($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L979
	li	$2,0
	b	$L984
$L979:
	lw	$3,8($17)
	lw	$2,16($17)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L981
	li	$2,2
	b	$L984
$L981:
	lw	$3,12($17)
	lw	$2,20($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L982
	li	$2,0
	b	$L984
$L982:
	lw	$3,12($17)
	lw	$2,20($17)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L983
	li	$2,2
	b	$L984
$L983:
	li	$2,1
$L984:
	move	$sp,$17
	ld	$17,24($sp)
	addiu	$sp,32
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
	.frame	$17,24,$31		# vars= 0, regs= 2/0, args= 32, gp= 8
	.mask	0x80020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-56
	move	$3,$31
	sd	$3,48($sp)
	sd	$17,40($sp)
	addiu	$17,$sp,32
	sd	$4,24($17)
	sd	$5,32($17)
	ld	$2,24($17)
	ld	$3,32($17)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	__ucmpdi2
	.option	pic2
	addiu	$2,-1
	move	$sp,$17
	ld	$7,16($sp)
	ld	$17,8($sp)
	addiu	$sp,24
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
	.frame	$17,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 8
	.mask	0x00020000,-8
	.fmask	0x00000000,0
	addiu	$sp,-48
	sd	$17,40($sp)
	move	$17,$sp
	sd	$5,56($17)
	sd	$4,48($17)
	sd	$7,72($17)
	sd	$6,64($17)
	ld	$3,56($17)
	ld	$2,48($17)
	sd	$3,16($17)
	sd	$2,8($17)
	ld	$3,72($17)
	ld	$2,64($17)
	sd	$3,32($17)
	sd	$2,24($17)
	ld	$3,8($17)
	ld	$2,24($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L988
	li	$2,0
	b	$L993
$L988:
	ld	$3,8($17)
	ld	$2,24($17)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L990
	li	$2,2
	b	$L993
$L990:
	ld	$3,16($17)
	ld	$2,32($17)
	sltu	$3,$2
	move	$2,$24
	beqz	$2,$L991
	li	$2,0
	b	$L993
$L991:
	ld	$3,16($17)
	ld	$2,32($17)
	sltu	$2,$3
	move	$2,$24
	beqz	$2,$L992
	li	$2,2
	b	$L993
$L992:
	li	$2,1
$L993:
	move	$sp,$17
	ld	$17,40($sp)
	addiu	$sp,48
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
