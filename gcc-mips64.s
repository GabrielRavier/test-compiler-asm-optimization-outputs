	.file	1 "mini-libc.c"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.module	arch=mips3
	.abicalls
	.text
	.align	2
	.globl	make_ti
	.set	nomips16
	.set	nomicromips
	.ent	make_ti
	.type	make_ti, @function
make_ti:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$3,8($sp)
	ld	$2,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	make_ti
	.size	make_ti, .-make_ti
	.align	2
	.globl	make_tu
	.set	nomips16
	.set	nomicromips
	.ent	make_tu
	.type	make_tu, @function
make_tu:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$3,8($sp)
	ld	$2,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	make_tu
	.size	make_tu, .-make_tu
	.align	2
	.globl	memmove
	.set	nomips16
	.set	nomicromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$4,32($sp)
	sd	$5,40($sp)
	sd	$6,48($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L8
	nop

	ld	$3,40($sp)
	ld	$2,48($sp)
	daddu	$2,$3,$2
	sd	$2,16($sp)
	ld	$3,32($sp)
	ld	$2,48($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	b	.L9
	nop

.L10:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,-1
	sd	$2,0($sp)
	ld	$2,16($sp)
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,48($sp)
	daddiu	$2,$2,-1
	sd	$2,48($sp)
.L9:
	ld	$2,48($sp)
	bne	$2,$0,.L10
	nop

	b	.L11
	nop

.L8:
	ld	$3,40($sp)
	ld	$2,32($sp)
	beq	$3,$2,.L11
	nop

	ld	$2,32($sp)
	sd	$2,8($sp)
	b	.L12
	nop

.L13:
	ld	$3,40($sp)
	daddiu	$2,$3,1
	sd	$2,40($sp)
	ld	$2,8($sp)
	daddiu	$4,$2,1
	sd	$4,8($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	ld	$2,48($sp)
	daddiu	$2,$2,-1
	sd	$2,48($sp)
.L12:
	ld	$2,48($sp)
	bne	$2,$0,.L13
	nop

.L11:
	ld	$2,32($sp)
	daddiu	$sp,$sp,64
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	move	$2,$6
	sd	$7,40($sp)
	sll	$2,$6,0
	sw	$2,32($sp)
	lw	$2,32($sp)
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
	b	.L17
	nop

.L19:
	ld	$2,40($sp)
	daddiu	$2,$2,-1
	sd	$2,40($sp)
	ld	$2,24($sp)
	daddiu	$2,$2,1
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L17:
	ld	$2,40($sp)
	beq	$2,$0,.L18
	nop

	ld	$2,24($sp)
	lbu	$3,0($2)
	ld	$2,16($sp)
	sb	$3,0($2)
	ld	$2,16($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,0($sp)
	bne	$2,$3,.L19
	nop

.L18:
	ld	$2,40($sp)
	beq	$2,$0,.L20
	nop

	ld	$2,16($sp)
	daddiu	$2,$2,1
	b	.L21
	nop

.L20:
	move	$2,$0
.L21:
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	move	$2,$5
	sd	$6,32($sp)
	sll	$2,$5,0
	sw	$2,24($sp)
	lw	$2,24($sp)
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
	b	.L24
	nop

.L26:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L24:
	ld	$2,32($sp)
	beq	$2,$0,.L25
	nop

	ld	$2,16($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,0($sp)
	bne	$2,$3,.L26
	nop

.L25:
	ld	$2,32($sp)
	beq	$2,$0,.L27
	nop

	ld	$2,16($sp)
	b	.L29
	nop

.L27:
	move	$2,$0
.L29:
	nop
	daddiu	$sp,$sp,48
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,0($sp)
	sd	$5,8($sp)
	sd	$6,16($sp)
	b	.L32
	nop

.L34:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
.L32:
	ld	$2,16($sp)
	beq	$2,$0,.L33
	nop

	ld	$2,0($sp)
	lbu	$2,0($2)
	ld	$3,8($sp)
	lbu	$3,0($3)
	beq	$2,$3,.L34
	nop

.L33:
	ld	$2,16($sp)
	beq	$2,$0,.L35
	nop

	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
	b	.L36
	nop

.L35:
	move	$2,$0
.L36:
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L40
	nop

.L41:
	ld	$3,24($sp)
	daddiu	$2,$3,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	daddiu	$4,$2,1
	sd	$4,0($sp)
	lbu	$3,0($3)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L40:
	ld	$2,32($sp)
	bne	$2,$0,.L41
	nop

	ld	$2,16($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	move	$2,$5
	sd	$6,32($sp)
	sll	$2,$5,0
	sw	$2,24($sp)
	lw	$2,24($sp)
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
	b	.L45
	nop

.L47:
	ld	$3,16($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,0($sp)
	bne	$2,$3,.L45
	nop

	ld	$3,16($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	b	.L46
	nop

.L45:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L47
	nop

	move	$2,$0
.L46:
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	move	$2,$5
	sd	$6,32($sp)
	sll	$2,$5,0
	sw	$2,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L50
	nop

.L51:
	ld	$2,0($sp)
	lw	$3,24($sp)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L50:
	ld	$2,32($sp)
	bne	$2,$0,.L51
	nop

	ld	$2,16($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	sd	$5,8($sp)
	b	.L55
	nop

.L56:
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L55:
	ld	$2,8($sp)
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L56
	nop

	ld	$2,0($sp)
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	move	$2,$5
	sll	$2,$5,0
	sw	$2,24($sp)
	lw	$2,24($sp)
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
	b	.L60
	nop

.L62:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L60:
	ld	$2,16($sp)
	lb	$2,0($2)
	beq	$2,$0,.L61
	nop

	ld	$2,16($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,0($sp)
	bne	$2,$3,.L62
	nop

.L61:
	ld	$2,16($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	move	$3,$5
	sll	$3,$3,0
	sw	$3,0($sp)
.L68:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,0($sp)
	beq	$3,$4,.L69
	nop

	move	$3,$2
	daddiu	$2,$3,1
	lb	$3,0($3)
	bne	$3,$0,.L68
	nop

	move	$2,$0
	b	.L67
	nop

.L69:
	nop
.L67:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	sd	$5,8($sp)
	b	.L72
	nop

.L74:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
.L72:
	ld	$2,0($sp)
	lb	$2,0($2)
	ld	$3,8($sp)
	lb	$3,0($3)
	bne	$2,$3,.L73
	nop

	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L74
	nop

.L73:
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L78
	nop

.L79:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L78:
	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L79
	nop

	ld	$3,0($sp)
	ld	$2,16($sp)
	dsubu	$2,$3,$2
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,0($sp)
	bne	$2,$0,.L85
	nop

	move	$2,$0
	b	.L84
	nop

.L87:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	ld	$2,24($sp)
	daddiu	$2,$2,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,-1
	sd	$2,0($sp)
.L85:
	ld	$2,16($sp)
	lbu	$2,0($2)
	beq	$2,$0,.L86
	nop

	ld	$2,24($sp)
	lbu	$2,0($2)
	beq	$2,$0,.L86
	nop

	ld	$2,0($sp)
	beq	$2,$0,.L86
	nop

	ld	$2,16($sp)
	lbu	$2,0($2)
	ld	$3,24($sp)
	lbu	$3,0($3)
	beq	$2,$3,.L87
	nop

.L86:
	ld	$2,16($sp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,24($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
.L84:
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,0($sp)
	sd	$5,8($sp)
	sd	$6,16($sp)
	b	.L90
	nop

.L91:
	ld	$2,0($sp)
	lb	$3,1($2)
	ld	$2,8($sp)
	sb	$3,0($2)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	ld	$3,0($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	ld	$2,8($sp)
	daddiu	$2,$2,2
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,2
	sd	$2,0($sp)
	ld	$2,16($sp)
	daddiu	$2,$2,-2
	sd	$2,16($sp)
.L90:
	ld	$2,16($sp)
	slt	$2,$2,2
	beq	$2,$0,.L91
	nop

	nop
	nop
	daddiu	$sp,$sp,32
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,26
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sltu	$2,$2,128
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	li	$3,32			# 0x20
	beq	$2,$3,.L100
	nop

	lw	$2,0($sp)
	li	$3,9			# 0x9
	bne	$2,$3,.L101
	nop

.L100:
	li	$2,1			# 0x1
	b	.L102
	nop

.L101:
	move	$2,$0
.L102:
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sltu	$2,$2,32
	bne	$2,$0,.L106
	nop

	lw	$2,0($sp)
	li	$3,127			# 0x7f
	bne	$2,$3,.L107
	nop

.L106:
	li	$2,1			# 0x1
	b	.L108
	nop

.L107:
	move	$2,$0
.L108:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-33
	sltu	$2,$2,94
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-97
	sltu	$2,$2,26
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-32
	sltu	$2,$2,95
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	li	$3,32			# 0x20
	beq	$2,$3,.L124
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-9
	sltu	$2,$2,5
	beq	$2,$0,.L125
	nop

.L124:
	li	$2,1			# 0x1
	b	.L126
	nop

.L125:
	move	$2,$0
.L126:
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-65
	sltu	$2,$2,26
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sltu	$2,$2,32
	bne	$2,$0,.L133
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-127
	sltu	$2,$2,33
	bne	$2,$0,.L133
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-8232
	sltu	$2,$2,2
	bne	$2,$0,.L133
	nop

	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7
	addu	$2,$3,$2
	sltu	$2,$2,3
	beq	$2,$0,.L134
	nop

.L133:
	li	$2,1			# 0x1
	b	.L135
	nop

.L134:
	move	$2,$0
.L135:
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sltu	$2,$2,255
	beq	$2,$0,.L142
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	xori	$2,$2,0x1
	b	.L143
	nop

.L142:
	lw	$2,0($sp)
	sltu	$2,$2,8232
	bne	$2,$0,.L144
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-8234
	li	$3,47062			# 0xb7d6
	sltu	$2,$2,$3
	bne	$2,$0,.L144
	nop

	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x2000
	addu	$2,$3,$2
	sltu	$2,$2,8185
	beq	$2,$0,.L145
	nop

.L144:
	li	$2,1			# 0x1
	b	.L143
	nop

.L145:
	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x4
	addu	$2,$3,$2
	move	$3,$2
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x4
	sltu	$2,$3,$2
	beq	$2,$0,.L146
	nop

	lw	$2,0($sp)
	andi	$2,$2,0xfffe
	li	$3,65534			# 0xfffe
	bne	$2,$3,.L147
	nop

.L146:
	move	$2,$0
	b	.L143
	nop

.L147:
	li	$2,1			# 0x1
.L143:
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$4,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L150
	nop

	lw	$2,0($sp)
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,6
	beq	$2,$0,.L151
	nop

.L150:
	li	$2,1			# 0x1
	b	.L152
	nop

.L151:
	move	$2,$0
.L152:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0x7f
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	sdc1	$f13,8($sp)
	ldc1	$f1,0($sp)
	ldc1	$f0,0($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L159
	nop

	ldc1	$f0,0($sp)
	b	.L160
	nop

.L159:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L161
	nop

	ldc1	$f0,8($sp)
	b	.L160
	nop

.L161:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f0,$f1
	nop
	bc1f	.L166
	nop

	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	sub.d	$f0,$f1,$f0
	b	.L160
	nop

.L166:
	dmtc1	$0,$f0
.L160:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	lwc1	$f1,0($sp)
	lwc1	$f0,0($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L169
	nop

	lwc1	$f0,0($sp)
	b	.L170
	nop

.L169:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L171
	nop

	lwc1	$f0,4($sp)
	b	.L170
	nop

.L171:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f0,$f1
	nop
	bc1f	.L176
	nop

	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	sub.s	$f0,$f1,$f0
	b	.L170
	nop

.L176:
	mtc1	$0,$f0
.L170:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	sdc1	$f13,8($sp)
	ldc1	$f1,0($sp)
	ldc1	$f0,0($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L179
	nop

	ldc1	$f0,8($sp)
	b	.L180
	nop

.L179:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L181
	nop

	ldc1	$f0,0($sp)
	b	.L180
	nop

.L181:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,8($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L182
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L183
	nop

	ldc1	$f0,8($sp)
	b	.L180
	nop

.L183:
	ldc1	$f0,0($sp)
	b	.L180
	nop

.L182:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L189
	nop

	ldc1	$f0,8($sp)
	b	.L180
	nop

.L189:
	ldc1	$f0,0($sp)
.L180:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	lwc1	$f1,0($sp)
	lwc1	$f0,0($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L192
	nop

	lwc1	$f0,4($sp)
	b	.L193
	nop

.L192:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L194
	nop

	lwc1	$f0,0($sp)
	b	.L193
	nop

.L194:
	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	lw	$3,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	beq	$2,$3,.L195
	nop

	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,.L196
	nop

	lwc1	$f0,4($sp)
	b	.L193
	nop

.L196:
	lwc1	$f0,0($sp)
	b	.L193
	nop

.L195:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f1,$f0
	nop
	bc1f	.L202
	nop

	lwc1	$f0,4($sp)
	b	.L193
	nop

.L202:
	lwc1	$f0,0($sp)
.L193:
	daddiu	$sp,$sp,16
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	sdc1	$f13,8($sp)
	sdc1	$f12,0($sp)
	sdc1	$f15,24($sp)
	sdc1	$f14,16($sp)
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	beq	$2,$0,.L219
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L207
	nop

.L219:
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	mflo	$25
	jalr	$25
	nop

	beq	$2,$0,.L220
	nop

	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L207
	nop

.L220:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,16($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L210
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L211
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L207
	nop

.L211:
	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L207
	nop

.L210:
	ld	$2,%call16(__lttf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	bgez	$2,.L221
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L207
	nop

.L221:
	ld	$3,0($sp)
	ld	$2,8($sp)
.L207:
	dmtc1	$3,$f0
	dmtc1	$2,$f2
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	sdc1	$f13,8($sp)
	ldc1	$f1,0($sp)
	ldc1	$f0,0($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L224
	nop

	ldc1	$f0,8($sp)
	b	.L225
	nop

.L224:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L226
	nop

	ldc1	$f0,0($sp)
	b	.L225
	nop

.L226:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,8($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L227
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L228
	nop

	ldc1	$f0,0($sp)
	b	.L225
	nop

.L228:
	ldc1	$f0,8($sp)
	b	.L225
	nop

.L227:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L234
	nop

	ldc1	$f0,0($sp)
	b	.L225
	nop

.L234:
	ldc1	$f0,8($sp)
.L225:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	lwc1	$f1,0($sp)
	lwc1	$f0,0($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L237
	nop

	lwc1	$f0,4($sp)
	b	.L238
	nop

.L237:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L239
	nop

	lwc1	$f0,0($sp)
	b	.L238
	nop

.L239:
	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	lw	$3,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	beq	$2,$3,.L240
	nop

	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,.L241
	nop

	lwc1	$f0,0($sp)
	b	.L238
	nop

.L241:
	lwc1	$f0,4($sp)
	b	.L238
	nop

.L240:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f1,$f0
	nop
	bc1f	.L247
	nop

	lwc1	$f0,0($sp)
	b	.L238
	nop

.L247:
	lwc1	$f0,4($sp)
.L238:
	daddiu	$sp,$sp,16
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	sdc1	$f13,8($sp)
	sdc1	$f12,0($sp)
	sdc1	$f15,24($sp)
	sdc1	$f14,16($sp)
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	beq	$2,$0,.L264
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L252
	nop

.L264:
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	mflo	$25
	jalr	$25
	nop

	beq	$2,$0,.L265
	nop

	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L252
	nop

.L265:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,16($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L255
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L256
	nop

	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L252
	nop

.L256:
	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L252
	nop

.L255:
	ld	$2,%call16(__lttf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	bgez	$2,.L266
	nop

	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L252
	nop

.L266:
	ld	$3,16($sp)
	ld	$2,24($sp)
.L252:
	dmtc1	$3,$f0
	dmtc1	$2,$f2
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
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
	.set	nomips16
	.set	nomicromips
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$5,%hi(%neg(%gp_rel(l64a)))
	daddu	$5,$5,$25
	daddiu	$5,$5,%lo(%neg(%gp_rel(l64a)))
	sd	$4,16($sp)
	ld	$2,16($sp)
	sw	$2,8($sp)
	ld	$2,%got_page(s.0)($5)
	daddiu	$2,$2,%got_ofst(s.0)
	sd	$2,0($sp)
	b	.L269
	nop

.L270:
	lw	$2,8($sp)
	andi	$2,$2,0x3f
	move	$3,$2
	ld	$2,%got_page(digits)($5)
	dsll	$3,$3,32
	dsrl	$3,$3,32
	daddiu	$2,$2,%got_ofst(digits)
	daddu	$2,$3,$2
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	lw	$2,8($sp)
	srl	$2,$2,6
	sw	$2,8($sp)
.L269:
	lw	$2,8($sp)
	bne	$2,$0,.L270
	nop

	ld	$2,0($sp)
	sb	$0,0($2)
	ld	$2,%got_page(s.0)($5)
	daddiu	$2,$2,%got_ofst(s.0)
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	l64a
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
	.globl	srand
	.set	nomips16
	.set	nomicromips
	.ent	srand
	.type	srand, @function
srand:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lui	$5,%hi(%neg(%gp_rel(srand)))
	daddu	$5,$5,$25
	daddiu	$5,$5,%lo(%neg(%gp_rel(srand)))
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
	dsll	$3,$2,32
	dsrl	$3,$3,32
	ld	$2,%got_page(seed)($5)
	sd	$3,%got_ofst(seed)($2)
	nop
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	lui	$4,%hi(%neg(%gp_rel(rand)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(rand)))
	ld	$2,%got_page(seed)($4)
	ld	$3,%got_ofst(seed)($2)
	li	$2,1481703424			# 0x58510000
	ori	$2,$2,0xf42d
	dsll	$2,$2,16
	ori	$2,$2,0x4c95
	dsll	$2,$2,16
	ori	$2,$2,0x7f2d
	dmult	$3,$2
	mflo	$2
	daddiu	$3,$2,1
	ld	$2,%got_page(seed)($4)
	sd	$3,%got_ofst(seed)($2)
	ld	$2,%got_page(seed)($4)
	ld	$2,%got_ofst(seed)($2)
	dsrl	$2,$2,33
	sll	$2,$2,0
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	sd	$5,8($sp)
	ld	$2,8($sp)
	bne	$2,$0,.L279
	nop

	ld	$2,0($sp)
	sd	$0,8($2)
	ld	$2,0($sp)
	ld	$3,8($2)
	ld	$2,0($sp)
	sd	$3,0($2)
	b	.L278
	nop

.L279:
	ld	$2,8($sp)
	ld	$3,0($2)
	ld	$2,0($sp)
	sd	$3,0($2)
	ld	$2,0($sp)
	ld	$3,8($sp)
	sd	$3,8($2)
	ld	$2,8($sp)
	ld	$3,0($sp)
	sd	$3,0($2)
	ld	$2,0($sp)
	ld	$2,0($2)
	beq	$2,$0,.L278
	nop

	ld	$2,0($sp)
	ld	$2,0($2)
	ld	$3,0($sp)
	sd	$3,8($2)
.L278:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	ld	$2,0($2)
	beq	$2,$0,.L283
	nop

	ld	$2,0($sp)
	ld	$2,0($2)
	ld	$3,0($sp)
	ld	$3,8($3)
	sd	$3,8($2)
.L283:
	ld	$2,0($sp)
	ld	$2,8($2)
	beq	$2,$0,.L285
	nop

	ld	$2,0($sp)
	ld	$2,8($2)
	ld	$3,0($sp)
	ld	$3,0($3)
	sd	$3,0($2)
.L285:
	nop
	daddiu	$sp,$sp,16
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
	.frame	$sp,112,$31		# vars= 80, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$16,88($sp)
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	sd	$4,32($sp)
	sd	$5,40($sp)
	sd	$6,48($sp)
	sd	$7,56($sp)
	sd	$8,64($sp)
	ld	$16,56($sp)
	daddiu	$2,$16,-1
	sd	$2,8($sp)
	ld	$2,48($sp)
	ld	$2,0($2)
	sd	$2,16($sp)
	sd	$0,0($sp)
	b	.L288
	nop

.L291:
	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,40($sp)
	mflo	$3
	daddu	$2,$2,$3
	ld	$3,64($sp)
	mtlo	$3
	move	$5,$2
	ld	$4,32($sp)
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L289
	nop

	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,40($sp)
	mflo	$3
	daddu	$2,$2,$3
	b	.L290
	nop

.L289:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L288:
	ld	$3,0($sp)
	ld	$2,16($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L291
	nop

	ld	$2,16($sp)
	daddiu	$3,$2,1
	ld	$2,48($sp)
	sd	$3,0($2)
	ld	$2,16($sp)
	dmult	$16,$2
	ld	$2,40($sp)
	mflo	$3
	daddu	$2,$2,$3
	ld	$6,56($sp)
	ld	$5,32($sp)
	move	$4,$2
	ld	$2,%got_disp(memcpy)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

.L290:
	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$16,88($sp)
	daddiu	$sp,$sp,112
	jr	$31
	nop

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
	.frame	$sp,112,$31		# vars= 80, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$16,88($sp)
	sd	$4,32($sp)
	sd	$5,40($sp)
	sd	$6,48($sp)
	sd	$7,56($sp)
	sd	$8,64($sp)
	ld	$16,56($sp)
	daddiu	$2,$16,-1
	sd	$2,8($sp)
	ld	$2,48($sp)
	ld	$2,0($2)
	sd	$2,16($sp)
	sd	$0,0($sp)
	b	.L294
	nop

.L297:
	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,40($sp)
	mflo	$3
	daddu	$2,$2,$3
	ld	$3,64($sp)
	mtlo	$3
	move	$5,$2
	ld	$4,32($sp)
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L295
	nop

	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,40($sp)
	mflo	$3
	daddu	$2,$2,$3
	b	.L296
	nop

.L295:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L294:
	ld	$3,0($sp)
	ld	$2,16($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L297
	nop

	move	$2,$0
.L296:
	ld	$31,104($sp)
	ld	$16,88($sp)
	daddiu	$sp,$sp,112
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	sra	$2,$2,31
	lw	$3,0($sp)
	xor	$3,$2,$3
	subu	$2,$3,$2
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(atoi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoi)))
	sd	$4,16($sp)
	sw	$0,0($sp)
	sw	$0,4($sp)
	b	.L303
	nop

.L304:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L303:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L304
	nop

	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L305
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L307
	nop

	li	$2,1			# 0x1
	sw	$2,4($sp)
.L305:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L307
	nop

.L308:
	lw	$3,0($sp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	ld	$2,16($sp)
	daddiu	$4,$2,1
	sd	$4,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	subu	$2,$3,$2
	sw	$2,0($sp)
.L307:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L308
	nop

	lw	$2,4($sp)
	bne	$2,$0,.L309
	nop

	lw	$2,0($sp)
	subu	$2,$0,$2
	b	.L310
	nop

.L309:
	lw	$2,0($sp)
.L310:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(atol)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atol)))
	sd	$4,16($sp)
	sd	$0,0($sp)
	sw	$0,8($sp)
	b	.L314
	nop

.L315:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L314:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L315
	nop

	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L316
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L318
	nop

	li	$2,1			# 0x1
	sw	$2,8($sp)
.L316:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L318
	nop

.L319:
	ld	$3,0($sp)
	move	$2,$3
	dsll	$2,$2,2
	daddu	$2,$2,$3
	dsll	$2,$2,1
	move	$4,$2
	ld	$2,16($sp)
	daddiu	$3,$2,1
	sd	$3,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	dsubu	$2,$4,$2
	sd	$2,0($sp)
.L318:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L319
	nop

	lw	$2,8($sp)
	bne	$2,$0,.L320
	nop

	ld	$2,0($sp)
	dsubu	$2,$0,$2
	b	.L322
	nop

.L320:
	ld	$2,0($sp)
.L322:
	nop
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(atoll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoll)))
	sd	$4,16($sp)
	sd	$0,0($sp)
	sw	$0,8($sp)
	b	.L325
	nop

.L326:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L325:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L326
	nop

	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L327
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L329
	nop

	li	$2,1			# 0x1
	sw	$2,8($sp)
.L327:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L329
	nop

.L330:
	ld	$3,0($sp)
	move	$2,$3
	dsll	$2,$2,2
	daddu	$2,$2,$3
	dsll	$2,$2,1
	move	$4,$2
	ld	$2,16($sp)
	daddiu	$3,$2,1
	sd	$3,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	dsubu	$2,$4,$2
	sd	$2,0($sp)
.L329:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L330
	nop

	lw	$2,8($sp)
	bne	$2,$0,.L331
	nop

	ld	$2,0($sp)
	dsubu	$2,$0,$2
	b	.L333
	nop

.L331:
	ld	$2,0($sp)
.L333:
	nop
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,80,$31		# vars= 64, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	sd	$7,40($sp)
	sd	$8,48($sp)
	b	.L336
	nop

.L341:
	ld	$2,32($sp)
	dsrl	$3,$2,1
	ld	$2,40($sp)
	dmult	$3,$2
	ld	$2,24($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,0($sp)
	ld	$2,48($sp)
	mtlo	$2
	ld	$5,0($sp)
	ld	$4,16($sp)
	mflo	$25
	jalr	$25
	nop

	sw	$2,8($sp)
	lw	$2,8($sp)
	bgez	$2,.L337
	nop

	ld	$2,32($sp)
	dsrl	$2,$2,1
	sd	$2,32($sp)
	b	.L336
	nop

.L337:
	lw	$2,8($sp)
	blez	$2,.L339
	nop

	ld	$3,0($sp)
	ld	$2,40($sp)
	daddu	$2,$3,$2
	sd	$2,24($sp)
	ld	$2,32($sp)
	dsrl	$2,$2,1
	ld	$3,32($sp)
	dsubu	$2,$3,$2
	daddiu	$2,$2,-1
	sd	$2,32($sp)
	b	.L336
	nop

.L339:
	ld	$2,0($sp)
	b	.L340
	nop

.L336:
	ld	$2,32($sp)
	bne	$2,$0,.L341
	nop

	move	$2,$0
.L340:
	ld	$31,72($sp)
	daddiu	$sp,$sp,80
	jr	$31
	nop

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
	.frame	$sp,96,$31		# vars= 80, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$4,32($sp)
	sd	$5,40($sp)
	sd	$6,48($sp)
	sd	$7,56($sp)
	sd	$8,64($sp)
	sd	$9,72($sp)
	ld	$2,48($sp)
	sw	$2,0($sp)
	b	.L344
	nop

.L348:
	lw	$2,0($sp)
	sra	$2,$2,1
	move	$3,$2
	ld	$2,56($sp)
	dmult	$3,$2
	ld	$2,40($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,8($sp)
	ld	$2,64($sp)
	mtlo	$2
	ld	$6,72($sp)
	ld	$5,8($sp)
	ld	$4,32($sp)
	mflo	$25
	jalr	$25
	nop

	sw	$2,16($sp)
	lw	$2,16($sp)
	bne	$2,$0,.L345
	nop

	ld	$2,8($sp)
	b	.L346
	nop

.L345:
	lw	$2,16($sp)
	blez	$2,.L347
	nop

	ld	$3,8($sp)
	ld	$2,56($sp)
	daddu	$2,$3,$2
	sd	$2,40($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
	sw	$2,0($sp)
.L347:
	lw	$2,0($sp)
	sra	$2,$2,1
	sw	$2,0($sp)
.L344:
	lw	$2,0($sp)
	bne	$2,$0,.L348
	nop

	move	$2,$0
.L346:
	ld	$31,88($sp)
	daddiu	$sp,$sp,96
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,16($sp)
	sll	$2,$2,0
	sw	$2,20($sp)
	lw	$3,16($sp)
	lw	$2,20($sp)
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$3
	lw	$4,16($sp)
	lw	$2,20($sp)
	div	$0,$4,$2
	teq	$2,$0,7
	mfhi	$2
	sw	$3,0($sp)
	sw	$2,4($sp)
	move	$2,$0
	lwu	$3,0($sp)
	dsll	$3,$3,32
	dsll	$2,$2,32
	dsrl	$2,$2,32
	or	$2,$2,$3
	lwu	$3,4($sp)
	dsll	$3,$3,32
	dsrl	$3,$3,32
	li	$4,-1			# 0xffffffffffffffff
	dsll	$4,$4,32
	and	$2,$2,$4
	or	$2,$2,$3
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	dsra	$3,$2,63
	ld	$2,0($sp)
	xor	$2,$3,$2
	dsubu	$2,$2,$3
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	sd	$5,40($sp)
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$4
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	sd	$4,0($sp)
	sd	$2,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	dsra	$3,$2,63
	ld	$2,0($sp)
	xor	$2,$3,$2
	dsubu	$2,$2,$3
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	sd	$5,40($sp)
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$4
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	sd	$4,0($sp)
	sd	$2,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	dsra	$3,$2,63
	ld	$2,0($sp)
	xor	$2,$3,$2
	dsubu	$2,$2,$3
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	sd	$5,40($sp)
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$4
	ld	$3,32($sp)
	ld	$2,40($sp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	sd	$4,0($sp)
	sd	$2,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$5,0
	sw	$2,8($sp)
	b	.L372
	nop

.L374:
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
.L372:
	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L373
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	bne	$2,$3,.L374
	nop

.L373:
	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L375
	nop

	ld	$2,0($sp)
	b	.L377
	nop

.L375:
	move	$2,$0
.L377:
	nop
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	sd	$5,8($sp)
	b	.L380
	nop

.L382:
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L380:
	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	bne	$2,$3,.L381
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L381
	nop

	ld	$2,8($sp)
	lw	$2,0($2)
	bne	$2,$0,.L382
	nop

.L381:
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bne	$2,$0,.L383
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L384
	nop

.L383:
	li	$2,-1			# 0xffffffffffffffff
.L384:
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
.L388:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,0($sp)
	daddiu	$4,$2,4
	sd	$4,0($sp)
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($2)
	bne	$2,$0,.L388
	nop

	ld	$2,16($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L392
	nop

.L393:
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
.L392:
	ld	$2,0($sp)
	lw	$2,0($2)
	bne	$2,$0,.L393
	nop

	ld	$3,0($sp)
	ld	$2,16($sp)
	dsubu	$2,$3,$2
	dsra	$2,$2,2
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,0($sp)
	sd	$5,8($sp)
	sd	$6,16($sp)
	b	.L397
	nop

.L399:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L397:
	ld	$2,16($sp)
	beq	$2,$0,.L398
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	bne	$2,$3,.L398
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L398
	nop

	ld	$2,8($sp)
	lw	$2,0($2)
	bne	$2,$0,.L399
	nop

.L398:
	ld	$2,16($sp)
	beq	$2,$0,.L400
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bne	$2,$0,.L401
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L403
	nop

.L401:
	li	$2,-1			# 0xffffffffffffffff
	b	.L403
	nop

.L400:
	move	$2,$0
.L403:
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,0($sp)
	move	$2,$5
	sd	$6,16($sp)
	sll	$2,$5,0
	sw	$2,8($sp)
	b	.L407
	nop

.L409:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
.L407:
	ld	$2,16($sp)
	beq	$2,$0,.L408
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	bne	$2,$3,.L409
	nop

.L408:
	ld	$2,16($sp)
	beq	$2,$0,.L410
	nop

	ld	$2,0($sp)
	b	.L412
	nop

.L410:
	move	$2,$0
.L412:
	nop
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,0($sp)
	sd	$5,8($sp)
	sd	$6,16($sp)
	b	.L415
	nop

.L417:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L415:
	ld	$2,16($sp)
	beq	$2,$0,.L416
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	beq	$2,$3,.L417
	nop

.L416:
	ld	$2,16($sp)
	beq	$2,$0,.L418
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bne	$2,$0,.L419
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L421
	nop

.L419:
	li	$2,-1			# 0xffffffffffffffff
	b	.L421
	nop

.L418:
	move	$2,$0
.L421:
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L425
	nop

.L426:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,0($sp)
	daddiu	$4,$2,4
	sd	$4,0($sp)
	lw	$3,0($3)
	sw	$3,0($2)
.L425:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L426
	nop

	ld	$2,16($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	bne	$3,$2,.L430
	nop

	ld	$2,16($sp)
	b	.L431
	nop

.L430:
	ld	$3,16($sp)
	ld	$2,24($sp)
	dsubu	$3,$3,$2
	ld	$2,32($sp)
	dsll	$2,$2,2
	sltu	$2,$3,$2
	beq	$2,$0,.L432
	nop

	b	.L433
	nop

.L434:
	ld	$2,32($sp)
	dsll	$2,$2,2
	ld	$3,16($sp)
	daddu	$2,$3,$2
	ld	$3,32($sp)
	dsll	$3,$3,2
	ld	$4,24($sp)
	daddu	$3,$4,$3
	lw	$3,0($3)
	sw	$3,0($2)
.L433:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L434
	nop

	b	.L435
	nop

.L432:
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L436
	nop

.L437:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,0($sp)
	daddiu	$4,$2,4
	sd	$4,0($sp)
	lw	$3,0($3)
	sw	$3,0($2)
.L436:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L437
	nop

.L435:
	ld	$2,16($sp)
.L431:
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	move	$2,$5
	sd	$6,32($sp)
	sll	$2,$5,0
	sw	$2,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L440
	nop

.L441:
	ld	$2,0($sp)
	daddiu	$3,$2,4
	sd	$3,0($sp)
	lw	$3,24($sp)
	sw	$3,0($2)
.L440:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L441
	nop

	ld	$2,16($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L445
	nop

	ld	$3,16($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	ld	$3,24($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,8($sp)
	b	.L446
	nop

.L447:
	ld	$2,0($sp)
	daddiu	$2,$2,-1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,-1
	sd	$2,8($sp)
	ld	$2,0($sp)
	lb	$3,0($2)
	ld	$2,8($sp)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L446:
	ld	$2,32($sp)
	bne	$2,$0,.L447
	nop

	b	.L451
	nop

.L445:
	ld	$3,16($sp)
	ld	$2,24($sp)
	beq	$3,$2,.L451
	nop

	b	.L449
	nop

.L450:
	ld	$3,16($sp)
	daddiu	$2,$3,1
	sd	$2,16($sp)
	ld	$2,24($sp)
	daddiu	$4,$2,1
	sd	$4,24($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L449:
	ld	$2,32($sp)
	bne	$2,$0,.L450
	nop

.L451:
	nop
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	ld	$3,0($sp)
	lw	$2,8($sp)
	dsll	$4,$3,$2
	lw	$2,8($sp)
	subu	$2,$0,$2
	andi	$2,$2,0x3f
	dsrl	$2,$3,$2
	or	$2,$2,$4
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	ld	$3,0($sp)
	lw	$2,8($sp)
	dsrl	$4,$3,$2
	lw	$2,8($sp)
	subu	$2,$0,$2
	andi	$2,$2,0x3f
	dsll	$2,$3,$2
	or	$2,$2,$4
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	sll	$4,$3,$2
	lw	$2,4($sp)
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	srl	$2,$3,$2
	or	$2,$4,$2
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$4,$3,$2
	lw	$2,4($sp)
	subu	$2,$0,$2
	andi	$2,$2,0x1f
	sll	$2,$3,$2
	or	$2,$4,$2
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	ld	$3,0($sp)
	lw	$2,8($sp)
	dsll	$3,$3,$2
	li	$4,64			# 0x40
	lw	$2,8($sp)
	subu	$2,$4,$2
	sll	$4,$2,0
	ld	$2,0($sp)
	dsrl	$2,$2,$4
	or	$2,$3,$2
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	ld	$3,0($sp)
	lw	$2,8($sp)
	dsrl	$3,$3,$2
	li	$4,64			# 0x40
	lw	$2,8($sp)
	subu	$2,$4,$2
	sll	$4,$2,0
	ld	$2,0($sp)
	dsll	$2,$2,$4
	or	$2,$3,$2
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sh	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lhu	$2,0($sp)
	move	$3,$2
	lw	$2,4($sp)
	sll	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,0($sp)
	li	$5,16			# 0x10
	lw	$4,4($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	srl	$2,$2,$4
	andi	$2,$2,0xffff
	or	$2,$3,$2
	andi	$2,$2,0xffff
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sh	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lhu	$2,0($sp)
	move	$3,$2
	lw	$2,4($sp)
	srl	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,0($sp)
	li	$5,16			# 0x10
	lw	$4,4($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	sll	$2,$2,$4
	andi	$2,$2,0xffff
	or	$2,$3,$2
	andi	$2,$2,0xffff
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sb	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lbu	$2,0($sp)
	move	$3,$2
	lw	$2,4($sp)
	sll	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,0($sp)
	li	$5,8			# 0x8
	lw	$4,4($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	srl	$2,$2,$4
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sb	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lbu	$2,0($sp)
	move	$3,$2
	lw	$2,4($sp)
	srl	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,0($sp)
	li	$5,8			# 0x8
	lw	$4,4($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	sll	$2,$2,$4
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	andi	$2,$2,0x00ff
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sh	$2,16($sp)
	li	$2,255			# 0xff
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsll	$2,$2,8
	lhu	$3,16($sp)
	and	$2,$3,$2
	dsrl	$3,$2,8
	lhu	$4,16($sp)
	lhu	$2,6($sp)
	and	$2,$4,$2
	andi	$2,$2,0xffff
	sll	$2,$2,8
	andi	$2,$2,0xffff
	sll	$3,$3,0
	or	$2,$3,$2
	andi	$2,$2,0xffff
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($sp)
	li	$2,255			# 0xff
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsll	$2,$2,24
	lwu	$3,16($sp)
	and	$2,$3,$2
	dsrl	$3,$2,24
	ld	$2,0($sp)
	dsll	$2,$2,16
	lwu	$4,16($sp)
	and	$2,$4,$2
	dsrl	$2,$2,8
	sll	$3,$3,0
	sll	$2,$2,0
	or	$2,$3,$2
	move	$3,$2
	lw	$2,4($sp)
	sll	$2,$2,8
	lw	$4,16($sp)
	and	$2,$4,$2
	sll	$2,$2,8
	or	$2,$3,$2
	move	$3,$2
	lw	$4,16($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	sll	$2,$2,24
	or	$2,$3,$2
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	li	$2,255			# 0xff
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsll	$3,$2,56
	ld	$2,16($sp)
	and	$2,$3,$2
	dsrl	$3,$2,56
	ld	$2,0($sp)
	dsll	$4,$2,48
	ld	$2,16($sp)
	and	$2,$4,$2
	dsrl	$2,$2,40
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,40
	ld	$2,16($sp)
	and	$2,$4,$2
	dsrl	$2,$2,24
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,32
	ld	$2,16($sp)
	and	$2,$4,$2
	dsrl	$2,$2,8
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,24
	ld	$2,16($sp)
	and	$2,$4,$2
	dsll	$2,$2,8
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,16
	ld	$2,16($sp)
	and	$2,$4,$2
	dsll	$2,$2,24
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,8
	ld	$2,16($sp)
	and	$2,$4,$2
	dsll	$2,$2,40
	or	$3,$3,$2
	ld	$4,16($sp)
	ld	$2,0($sp)
	and	$2,$4,$2
	dsll	$2,$2,56
	or	$2,$3,$2
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$4,0
	sw	$2,16($sp)
	sw	$0,0($sp)
	b	.L493
	nop

.L496:
	lw	$3,16($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L494
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	b	.L495
	nop

.L494:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L493:
	lw	$2,0($sp)
	sltu	$2,$2,32
	bne	$2,$0,.L496
	nop

	move	$2,$0
.L495:
	daddiu	$sp,$sp,32
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
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$16,8($sp)
	bne	$4,$0,.L499
	nop

	move	$16,$0
	b	.L500
	nop

.L499:
	move	$2,$4
	li	$16,1			# 0x1
	b	.L501
	nop

.L502:
	sra	$2,$2,1
	addiu	$3,$16,1
	move	$16,$3
.L501:
	andi	$3,$2,0x1
	beq	$3,$0,.L502
	nop

	nop
.L500:
	move	$2,$16
	ld	$16,8($sp)
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lui	$3,%hi(%neg(%gp_rel(gl_isinff)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinff)))
	swc1	$f12,0($sp)
	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC0)($3)
	lwc1	$f0,%got_ofst(.LC0)($2)
	c.lt.s	$f1,$f0
	nop
	bc1t	.L505
	nop

	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$f0,$f1
	nop
	bc1f	.L510
	nop

.L505:
	li	$2,1			# 0x1
	b	.L508
	nop

.L510:
	move	$2,$0
.L508:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lui	$3,%hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinfd)))
	sdc1	$f12,0($sp)
	ldc1	$f1,0($sp)
	ld	$2,%got_page(.LC2)($3)
	ldc1	$f0,%got_ofst(.LC2)($2)
	c.lt.d	$f1,$f0
	nop
	bc1t	.L513
	nop

	ldc1	$f1,0($sp)
	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$f0,$f1
	nop
	bc1f	.L518
	nop

.L513:
	li	$2,1			# 0x1
	b	.L516
	nop

.L518:
	move	$2,$0
.L516:
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	sdc1	$f13,8($sp)
	sdc1	$f12,0($sp)
	ld	$2,%got_page(.LC4)($28)
	ld	$3,%call16(__lttf2)($28)
	mtlo	$3
	ldc1	$f15,%got_ofst(.LC4+8)($2)
	ldc1	$f14,%got_ofst(.LC4)($2)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	move	$25,$3
	.reloc	1f,R_MIPS_JALR,__lttf2
1:	jalr	$25
	nop

	bltz	$2,.L521
	nop

	ld	$2,%got_page(.LC5)($28)
	ld	$3,%call16(__gttf2)($28)
	mtlo	$3
	ldc1	$f15,%got_ofst(.LC5+8)($2)
	ldc1	$f14,%got_ofst(.LC5)($2)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	blez	$2,.L526
	nop

.L521:
	li	$2,1			# 0x1
	b	.L524
	nop

.L526:
	move	$2,$0
.L524:
	ld	$31,24($sp)
	ld	$28,16($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,48,$31		# vars= 16, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$17,24($sp)
	sd	$16,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_Qp_itoq)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_Qp_itoq)))
	sd	$4,0($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($sp)
	lw	$2,8($sp)
	mtc1	$2,$f0
	nop
	cvt.d.w	$f0,$f0
	ld	$2,%call16(__extenddftf2)($28)
	mtlo	$2
	mov.d	$f12,$f0
	mflo	$25
	jalr	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$2,$f2
	move	$3,$4
	move	$4,$3
	move	$3,$2
	ld	$2,0($sp)
	move	$16,$4
	move	$17,$3
	sd	$17,8($2)
	sd	$16,0($2)
	nop
	nop
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$4,%hi(%neg(%gp_rel(ldexpf)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexpf)))
	swc1	$f12,16($sp)
	move	$2,$5
	sll	$2,$5,0
	sw	$2,20($sp)
	lwc1	$f1,16($sp)
	lwc1	$f0,16($sp)
	c.un.s	$f1,$f0
	nop
	bc1t	.L531
	nop

	lwc1	$f0,16($sp)
	add.s	$f0,$f0,$f0
	lwc1	$f1,16($sp)
	c.eq.s	$f1,$f0
	nop
	bc1t	.L531
	nop

	lw	$2,20($sp)
	bgez	$2,.L532
	nop

	ld	$2,%got_page(.LC6)($4)
	lwc1	$f0,%got_ofst(.LC6)($2)
	b	.L533
	nop

.L532:
	ld	$2,%got_page(.LC7)($4)
	lwc1	$f0,%got_ofst(.LC7)($2)
.L533:
	swc1	$f0,0($sp)
.L536:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L534
	nop

	lwc1	$f1,16($sp)
	lwc1	$f0,0($sp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,16($sp)
.L534:
	lw	$2,20($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	beq	$2,$0,.L538
	nop

	lwc1	$f0,0($sp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,0($sp)
	b	.L536
	nop

.L538:
	nop
.L531:
	lwc1	$f0,16($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$4,%hi(%neg(%gp_rel(ldexp)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexp)))
	sdc1	$f12,16($sp)
	move	$2,$5
	sll	$2,$5,0
	sw	$2,24($sp)
	ldc1	$f1,16($sp)
	ldc1	$f0,16($sp)
	c.un.d	$f1,$f0
	nop
	bc1t	.L541
	nop

	ldc1	$f0,16($sp)
	add.d	$f0,$f0,$f0
	ldc1	$f1,16($sp)
	c.eq.d	$f1,$f0
	nop
	bc1t	.L541
	nop

	lw	$2,24($sp)
	bgez	$2,.L542
	nop

	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	b	.L543
	nop

.L542:
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
.L543:
	sdc1	$f0,0($sp)
.L546:
	lw	$2,24($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L544
	nop

	ldc1	$f1,16($sp)
	ldc1	$f0,0($sp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,16($sp)
.L544:
	lw	$2,24($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	beq	$2,$0,.L548
	nop

	ldc1	$f0,0($sp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,0($sp)
	b	.L546
	nop

.L548:
	nop
.L541:
	ldc1	$f0,16($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,112,$31		# vars= 48, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$21,88($sp)
	sd	$20,80($sp)
	sd	$19,72($sp)
	sd	$18,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	sdc1	$f13,24($sp)
	sdc1	$f12,16($sp)
	move	$2,$6
	sll	$2,$6,0
	sw	$2,32($sp)
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__unordtf2
1:	jalr	$25
	nop

	bne	$2,$0,.L551
	nop

	ld	$3,24($sp)
	ld	$2,16($sp)
	ld	$4,%call16(__addtf3)($28)
	mtlo	$4
	dmtc1	$3,$f15
	nop
	dmtc1	$2,$f14
	dmtc1	$3,$f13
	nop
	dmtc1	$2,$f12
	mflo	$25
	jalr	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$2,$f2
	move	$3,$4
	ld	$4,%call16(__netf2)($28)
	mtlo	$4
	move	$20,$3
	move	$21,$2
	dmtc1	$21,$f15
	nop
	dmtc1	$20,$f14
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	mflo	$25
	jalr	$25
	nop

	beq	$2,$0,.L551
	nop

	lw	$2,32($sp)
	bgez	$2,.L553
	nop

	ld	$2,%got_page(.LC10)($28)
	ld	$3,%got_ofst(.LC10+8)($2)
	ld	$2,%got_ofst(.LC10)($2)
	b	.L554
	nop

.L553:
	ld	$2,%got_page(.LC11)($28)
	ld	$3,%got_ofst(.LC11+8)($2)
	ld	$2,%got_ofst(.LC11)($2)
.L554:
	sd	$3,8($sp)
	sd	$2,0($sp)
.L557:
	lw	$2,32($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L555
	nop

	ld	$2,%call16(__multf3)($28)
	mtlo	$2
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	mflo	$25
	jalr	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$2,$f2
	move	$3,$4
	move	$18,$3
	move	$19,$2
	sd	$19,24($sp)
	sd	$18,16($sp)
.L555:
	lw	$2,32($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,32($sp)
	lw	$2,32($sp)
	beq	$2,$0,.L560
	nop

	ld	$2,%call16(__multf3)($28)
	mtlo	$2
	ldc1	$f15,8($sp)
	ldc1	$f14,0($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$2,$f2
	move	$3,$4
	move	$16,$3
	move	$17,$2
	sd	$17,8($sp)
	sd	$16,0($sp)
	b	.L557
	nop

.L560:
	nop
.L551:
	ld	$3,16($sp)
	ld	$2,24($sp)
	dmtc1	$3,$f0
	dmtc1	$2,$f2
	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$21,88($sp)
	ld	$20,80($sp)
	ld	$19,72($sp)
	ld	$18,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	daddiu	$sp,$sp,112
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L563
	nop

.L564:
	ld	$2,24($sp)
	daddiu	$3,$2,1
	sd	$3,24($sp)
	lb	$4,0($2)
	ld	$2,0($sp)
	daddiu	$3,$2,1
	sd	$3,0($sp)
	lb	$3,0($2)
	xor	$3,$4,$3
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L563:
	ld	$2,32($sp)
	bne	$2,$0,.L564
	nop

	ld	$2,16($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(strncat)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strncat)))
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	ld	$4,16($sp)
	ld	$2,%got_disp(strlen)($28)
	mtlo	$2
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	nop

	move	$3,$2
	ld	$2,16($sp)
	daddu	$2,$2,$3
	sd	$2,0($sp)
	b	.L568
	nop

.L570:
	ld	$2,24($sp)
	daddiu	$2,$2,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L568:
	ld	$2,32($sp)
	beq	$2,$0,.L569
	nop

	ld	$2,24($sp)
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L570
	nop

.L569:
	ld	$2,32($sp)
	bne	$2,$0,.L571
	nop

	ld	$2,0($sp)
	sb	$0,0($2)
.L571:
	ld	$2,16($sp)
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddiu	$sp,$sp,64
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$0,0($sp)
	b	.L575
	nop

.L580:
	nop
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L575:
	ld	$3,0($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L576
	nop

	ld	$3,16($sp)
	ld	$2,0($sp)
	daddu	$2,$3,$2
	lb	$2,0($2)
	bne	$2,$0,.L580
	nop

.L576:
	ld	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	b	.L583
	nop

.L587:
	ld	$2,24($sp)
	sd	$2,0($sp)
	b	.L584
	nop

.L586:
	ld	$2,0($sp)
	daddiu	$3,$2,1
	sd	$3,0($sp)
	lb	$2,0($2)
	ld	$3,16($sp)
	lb	$3,0($3)
	bne	$2,$3,.L584
	nop

	ld	$2,16($sp)
	b	.L585
	nop

.L584:
	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L586
	nop

	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L583:
	ld	$2,16($sp)
	lb	$2,0($2)
	bne	$2,$0,.L587
	nop

	move	$2,$0
.L585:
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	move	$3,$5
	sll	$3,$3,0
	sw	$3,16($sp)
	sd	$0,0($sp)
.L591:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,16($sp)
	bne	$3,$4,.L590
	nop

	sd	$2,0($sp)
.L590:
	move	$3,$2
	daddiu	$2,$3,1
	lb	$3,0($3)
	bne	$3,$0,.L591
	nop

	ld	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(strstr)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strstr)))
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$4,24($sp)
	ld	$2,%got_disp(strlen)($28)
	mtlo	$2
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	nop

	sd	$2,0($sp)
	ld	$2,0($sp)
	bne	$2,$0,.L597
	nop

	ld	$2,16($sp)
	b	.L596
	nop

.L599:
	ld	$6,0($sp)
	ld	$5,24($sp)
	ld	$4,8($sp)
	ld	$2,%got_disp(strncmp)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L598
	nop

	ld	$2,8($sp)
	b	.L596
	nop

.L598:
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L597:
	ld	$2,24($sp)
	lb	$2,0($2)
	move	$5,$2
	ld	$4,16($sp)
	ld	$2,%got_disp(strchr)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	sd	$2,8($sp)
	ld	$2,8($sp)
	bne	$2,$0,.L599
	nop

	move	$2,$0
.L596:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	sdc1	$f13,8($sp)
	ldc1	$f0,0($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L602
	nop

	ldc1	$f0,8($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f1,$f0
	nop
	bc1t	.L604
	nop

.L602:
	ldc1	$f0,0($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f1,$f0
	nop
	bc1f	.L605
	nop

	ldc1	$f0,8($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L605
	nop

.L604:
	ld	$3,0($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	b	.L608
	nop

.L605:
	ld	$2,0($sp)
.L608:
	dmtc1	$2,$f0
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(memmem)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(memmem)))
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$6,32($sp)
	sd	$7,40($sp)
	ld	$3,24($sp)
	ld	$2,40($sp)
	dsubu	$2,$3,$2
	ld	$3,16($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	ld	$2,40($sp)
	bne	$2,$0,.L613
	nop

	ld	$2,16($sp)
	b	.L614
	nop

.L613:
	ld	$3,24($sp)
	ld	$2,40($sp)
	sltu	$2,$3,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,.L616
	nop

	move	$2,$0
	b	.L614
	nop

.L618:
	ld	$2,16($sp)
	lb	$2,0($2)
	ld	$3,32($sp)
	lb	$3,0($3)
	bne	$2,$3,.L617
	nop

	ld	$2,16($sp)
	daddiu	$3,$2,1
	ld	$2,40($sp)
	daddiu	$4,$2,-1
	ld	$2,32($sp)
	daddiu	$2,$2,1
	move	$6,$4
	move	$5,$2
	move	$4,$3
	ld	$2,%got_disp(memcmp)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L617
	nop

	ld	$2,16($sp)
	b	.L614
	nop

.L617:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L616:
	ld	$3,16($sp)
	ld	$2,0($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L618
	nop

	move	$2,$0
.L614:
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddiu	$sp,$sp,64
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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(mempcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	sd	$4,0($sp)
	sd	$5,8($sp)
	sd	$6,16($sp)
	ld	$6,16($sp)
	ld	$5,8($sp)
	ld	$4,0($sp)
	ld	$2,%got_disp(memcpy)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	move	$3,$2
	ld	$2,16($sp)
	daddu	$2,$3,$2
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$4,%hi(%neg(%gp_rel(frexp)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(frexp)))
	sdc1	$f12,16($sp)
	sd	$5,24($sp)
	sw	$0,4($sp)
	sw	$0,0($sp)
	ldc1	$f0,16($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L624
	nop

	ld	$3,16($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	sd	$2,16($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
.L624:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$f0,$f1
	nop
	bc1f	.L639
	nop

	b	.L628
	nop

.L629:
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
	div.d	$f0,$f1,$f0
	sdc1	$f0,16($sp)
.L628:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$f0,$f1
	nop
	bc1t	.L629
	nop

	b	.L630
	nop

.L639:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L630
	nop

	ldc1	$f0,16($sp)
	dmtc1	$0,$f1
	nop
	c.eq.d	$f0,$f1
	nop
	bc1t	.L630
	nop

	b	.L632
	nop

.L633:
	lw	$2,4($sp)
	addiu	$2,$2,-1
	sw	$2,4($sp)
	ldc1	$f0,16($sp)
	add.d	$f0,$f0,$f0
	sdc1	$f0,16($sp)
.L632:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$f1,$f0
	nop
	bc1t	.L633
	nop

.L630:
	ld	$2,24($sp)
	lw	$3,4($sp)
	sw	$3,0($2)
	lw	$2,0($sp)
	beq	$2,$0,.L634
	nop

	ld	$3,16($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	sd	$2,16($sp)
.L634:
	ldc1	$f0,16($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	sd	$0,0($sp)
	ld	$2,16($sp)
	sd	$2,8($sp)
	b	.L642
	nop

.L644:
	ld	$2,8($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L643
	nop

	ld	$3,0($sp)
	ld	$2,24($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
.L643:
	ld	$2,24($sp)
	dsll	$2,$2,1
	sd	$2,24($sp)
	ld	$2,8($sp)
	dsrl	$2,$2,1
	sd	$2,8($sp)
.L642:
	ld	$2,8($sp)
	bne	$2,$0,.L644
	nop

	ld	$2,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sd	$6,24($sp)
	sll	$3,$4,0
	sw	$3,16($sp)
	sll	$2,$5,0
	sw	$2,20($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
	sw	$0,4($sp)
	b	.L648
	nop

.L650:
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,0($sp)
	sll	$2,$2,1
	sw	$2,0($sp)
.L648:
	lw	$3,20($sp)
	lw	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L651
	nop

	lw	$2,0($sp)
	beq	$2,$0,.L651
	nop

	lw	$2,20($sp)
	bgez	$2,.L650
	nop

	b	.L651
	nop

.L653:
	lw	$3,16($sp)
	lw	$2,20($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L652
	nop

	lw	$3,16($sp)
	lw	$2,20($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	or	$2,$3,$2
	sw	$2,4($sp)
.L652:
	lw	$2,0($sp)
	srl	$2,$2,1
	sw	$2,0($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L651:
	lw	$2,0($sp)
	bne	$2,$0,.L653
	nop

	ld	$2,24($sp)
	beq	$2,$0,.L654
	nop

	lw	$2,16($sp)
	b	.L655
	nop

.L654:
	lw	$2,4($sp)
.L655:
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbqi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbqi2)))
	move	$2,$4
	sll	$2,$4,0
	sb	$2,16($sp)
	lb	$2,16($sp)
	bgez	$2,.L658
	nop

	lbu	$2,16($sp)
	nor	$2,$0,$2
	sb	$2,16($sp)
.L658:
	lb	$2,16($sp)
	bne	$2,$0,.L659
	nop

	li	$2,7			# 0x7
	b	.L660
	nop

.L659:
	lb	$2,16($sp)
	sll	$2,$2,8
	dsll	$2,$2,32
	dsrl	$2,$2,32
	ld	$3,%call16(__clzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	dsll	$2,$2,32
	dsrl	$2,$2,32
	daddiu	$2,$2,-32
	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
.L660:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(__clrsbdi2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clrsbdi2)))
	sd	$4,16($sp)
	ld	$2,16($sp)
	bgez	$2,.L663
	nop

	ld	$2,16($sp)
	nor	$2,$0,$2
	sd	$2,16($sp)
.L663:
	ld	$2,16($sp)
	bne	$2,$0,.L664
	nop

	li	$2,63			# 0x3f
	b	.L665
	nop

.L664:
	ld	$2,%call16(__clzdi2)($28)
	mtlo	$2
	ld	$4,16($sp)
	mflo	$25
	jalr	$25
	nop

	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
.L665:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sll	$3,$4,0
	sw	$3,16($sp)
	sll	$2,$5,0
	sw	$2,20($sp)
	sw	$0,0($sp)
	b	.L668
	nop

.L670:
	lw	$2,16($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L669
	nop

	lw	$3,0($sp)
	lw	$2,20($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L669:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
.L668:
	lw	$2,16($sp)
	bne	$2,$0,.L670
	nop

	lw	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	move	$2,$6
	sll	$2,$6,0
	sw	$2,32($sp)
	lw	$2,32($sp)
	srl	$2,$2,3
	sw	$2,8($sp)
	lw	$2,32($sp)
	li	$3,-8			# 0xfffffffffffffff8
	and	$2,$2,$3
	sw	$2,4($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L674
	nop

	lwu	$2,32($sp)
	ld	$3,24($sp)
	daddu	$2,$3,$2
	ld	$3,16($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L681
	nop

.L674:
	sw	$0,0($sp)
	b	.L676
	nop

.L677:
	lwu	$2,0($sp)
	dsll	$2,$2,3
	ld	$3,16($sp)
	daddu	$2,$3,$2
	lwu	$3,0($sp)
	dsll	$3,$3,3
	ld	$4,24($sp)
	daddu	$3,$4,$3
	ld	$3,0($3)
	sd	$3,0($2)
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L676:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L677
	nop

	b	.L678
	nop

.L679:
	lwu	$2,4($sp)
	ld	$3,16($sp)
	daddu	$2,$3,$2
	lwu	$3,4($sp)
	ld	$4,24($sp)
	daddu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L678:
	lw	$3,32($sp)
	lw	$2,4($sp)
	sltu	$2,$2,$3
	bne	$2,$0,.L679
	nop

	b	.L680
	nop

.L682:
	lwu	$2,32($sp)
	ld	$3,16($sp)
	daddu	$2,$3,$2
	lwu	$3,32($sp)
	ld	$4,24($sp)
	daddu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
.L681:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bne	$2,$0,.L682
	nop

	nop
.L680:
	nop
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	move	$2,$6
	sll	$2,$6,0
	sw	$2,32($sp)
	lw	$2,32($sp)
	srl	$2,$2,1
	sw	$2,4($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L685
	nop

	lwu	$2,32($sp)
	ld	$3,24($sp)
	daddu	$2,$3,$2
	ld	$3,16($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L691
	nop

.L685:
	sw	$0,0($sp)
	b	.L687
	nop

.L688:
	lwu	$2,0($sp)
	dsll	$2,$2,1
	ld	$3,16($sp)
	daddu	$2,$3,$2
	lwu	$3,0($sp)
	dsll	$3,$3,1
	ld	$4,24($sp)
	daddu	$3,$4,$3
	lh	$3,0($3)
	sh	$3,0($2)
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L687:
	lw	$3,0($sp)
	lw	$2,4($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L688
	nop

	lw	$2,32($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L690
	nop

	lw	$2,32($sp)
	addiu	$2,$2,-1
	dsll	$3,$2,32
	dsrl	$3,$3,32
	lw	$2,32($sp)
	addiu	$2,$2,-1
	dsll	$2,$2,32
	dsrl	$2,$2,32
	ld	$4,16($sp)
	daddu	$2,$4,$2
	ld	$4,24($sp)
	daddu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	b	.L690
	nop

.L692:
	lwu	$2,32($sp)
	ld	$3,16($sp)
	daddu	$2,$3,$2
	lwu	$3,32($sp)
	ld	$4,24($sp)
	daddu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
.L691:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bne	$2,$0,.L692
	nop

	nop
.L690:
	nop
	daddiu	$sp,$sp,48
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	move	$2,$6
	sll	$2,$6,0
	sw	$2,32($sp)
	lw	$2,32($sp)
	srl	$2,$2,2
	sw	$2,8($sp)
	lw	$2,32($sp)
	li	$3,-4			# 0xfffffffffffffffc
	and	$2,$2,$3
	sw	$2,4($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L695
	nop

	lwu	$2,32($sp)
	ld	$3,24($sp)
	daddu	$2,$3,$2
	ld	$3,16($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L702
	nop

.L695:
	sw	$0,0($sp)
	b	.L697
	nop

.L698:
	lwu	$2,0($sp)
	dsll	$2,$2,2
	ld	$3,16($sp)
	daddu	$2,$3,$2
	lwu	$3,0($sp)
	dsll	$3,$3,2
	ld	$4,24($sp)
	daddu	$3,$4,$3
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L697:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L698
	nop

	b	.L699
	nop

.L700:
	lwu	$2,4($sp)
	ld	$3,16($sp)
	daddu	$2,$3,$2
	lwu	$3,4($sp)
	ld	$4,24($sp)
	daddu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L699:
	lw	$3,32($sp)
	lw	$2,4($sp)
	sltu	$2,$2,$3
	bne	$2,$0,.L700
	nop

	b	.L701
	nop

.L703:
	lwu	$2,32($sp)
	ld	$3,16($sp)
	daddu	$2,$3,$2
	lwu	$3,32($sp)
	ld	$4,24($sp)
	daddu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
.L702:
	lw	$2,32($sp)
	addiu	$3,$2,-1
	sw	$3,32($sp)
	bne	$2,$0,.L703
	nop

	nop
.L701:
	nop
	daddiu	$sp,$sp,48
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lwu	$2,0($sp)
	dmtc1	$2,$f0
	nop
	cvt.d.l	$f0,$f0
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lwu	$2,0($sp)
	dmtc1	$2,$f0
	nop
	cvt.s.l	$f0,$f0
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	bltz	$2,.L716
	nop

	ld	$2,0($sp)
	dmtc1	$2,$f0
	nop
	cvt.d.l	$f0,$f0
	b	.L717
	nop

.L716:
	ld	$2,0($sp)
	andi	$2,$2,0x1
	ld	$3,0($sp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	nop
	cvt.d.l	$f0,$f0
	add.d	$f0,$f0,$f0
.L717:
	nop
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	bltz	$2,.L721
	nop

	ld	$2,0($sp)
	dmtc1	$2,$f0
	nop
	cvt.s.l	$f0,$f0
	b	.L722
	nop

.L721:
	ld	$2,0($sp)
	andi	$2,$2,0x1
	ld	$3,0($sp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	nop
	cvt.s.l	$f0,$f0
	add.s	$f0,$f0,$f0
.L722:
	nop
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($sp)
	sll	$2,$2,0
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	divu	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$4,0
	sh	$2,16($sp)
	sw	$0,0($sp)
	b	.L728
	nop

.L731:
	li	$3,15			# 0xf
	lw	$2,0($sp)
	subu	$2,$3,$2
	move	$3,$2
	lhu	$2,16($sp)
	sll	$3,$3,0
	sra	$2,$2,$3
	andi	$2,$2,0x1
	bne	$2,$0,.L733
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L728:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L731
	nop

	b	.L730
	nop

.L733:
	nop
.L730:
	lw	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$4,0
	sh	$2,16($sp)
	sw	$0,0($sp)
	b	.L736
	nop

.L739:
	lhu	$3,16($sp)
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bne	$2,$0,.L741
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L736:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L739
	nop

	b	.L738
	nop

.L741:
	nop
.L738:
	lw	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lui	$4,%hi(%neg(%gp_rel(__fixunssfsi)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__fixunssfsi)))
	swc1	$f12,0($sp)
	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	c.le.s	$f0,$f1
	nop
	bc1f	.L748
	nop

	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	sub.s	$f0,$f1,$f0
	trunc.l.s $f0,$f0
	dmfc1	$3,$f0
	li	$2,32768			# 0x8000
	daddu	$2,$3,$2
	b	.L746
	nop

.L748:
	lwc1	$f0,0($sp)
	trunc.l.s $f0,$f0
	dmfc1	$2,$f0
.L746:
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$4,0
	sh	$2,16($sp)
	sw	$0,4($sp)
	sw	$0,0($sp)
	b	.L751
	nop

.L753:
	lhu	$3,16($sp)
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L752
	nop

	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L752:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L751:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L753
	nop

	lw	$2,4($sp)
	andi	$2,$2,0x1
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$4,0
	sh	$2,16($sp)
	sw	$0,4($sp)
	sw	$0,0($sp)
	b	.L757
	nop

.L759:
	lhu	$3,16($sp)
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L758
	nop

	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L758:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L757:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L759
	nop

	lw	$2,4($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sll	$3,$4,0
	sw	$3,16($sp)
	sll	$2,$5,0
	sw	$2,20($sp)
	sw	$0,0($sp)
	b	.L763
	nop

.L765:
	lw	$2,16($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L764
	nop

	lw	$3,0($sp)
	lw	$2,20($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L764:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
.L763:
	lw	$2,16($sp)
	bne	$2,$0,.L765
	nop

	lw	$2,0($sp)
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sll	$3,$4,0
	sw	$3,16($sp)
	sll	$2,$5,0
	sw	$2,20($sp)
	sw	$0,0($sp)
	lw	$2,16($sp)
	bne	$2,$0,.L771
	nop

	move	$2,$0
	b	.L770
	nop

.L773:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L772
	nop

	lw	$3,0($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L772:
	lw	$2,16($sp)
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L771:
	lw	$2,20($sp)
	bne	$2,$0,.L773
	nop

	lw	$2,0($sp)
.L770:
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$5
	move	$2,$6
	sll	$4,$4,0
	sw	$4,16($sp)
	sll	$3,$5,0
	sw	$3,20($sp)
	sll	$2,$6,0
	sw	$2,24($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
	sw	$0,4($sp)
	b	.L776
	nop

.L778:
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,0($sp)
	sll	$2,$2,1
	sw	$2,0($sp)
.L776:
	lw	$3,20($sp)
	lw	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L779
	nop

	lw	$2,0($sp)
	beq	$2,$0,.L779
	nop

	lw	$2,20($sp)
	bgez	$2,.L778
	nop

	b	.L779
	nop

.L781:
	lw	$3,16($sp)
	lw	$2,20($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L780
	nop

	lw	$3,16($sp)
	lw	$2,20($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	or	$2,$3,$2
	sw	$2,4($sp)
.L780:
	lw	$2,0($sp)
	srl	$2,$2,1
	sw	$2,0($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L779:
	lw	$2,0($sp)
	bne	$2,$0,.L781
	nop

	lw	$2,24($sp)
	beq	$2,$0,.L782
	nop

	lw	$2,16($sp)
	b	.L783
	nop

.L782:
	lw	$2,4($sp)
.L783:
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	swc1	$f12,0($sp)
	swc1	$f13,4($sp)
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f1,$f0
	nop
	bc1f	.L793
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L788
	nop

.L793:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f0,$f1
	nop
	bc1f	.L794
	nop

	li	$2,1			# 0x1
	b	.L788
	nop

.L794:
	move	$2,$0
.L788:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sdc1	$f12,0($sp)
	sdc1	$f13,8($sp)
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L804
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L799
	nop

.L804:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f0,$f1
	nop
	bc1f	.L805
	nop

	li	$2,1			# 0x1
	b	.L799
	nop

.L805:
	move	$2,$0
.L799:
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	sd	$5,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	dmult	$3,$2
	mflo	$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	sd	$5,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	dmult	$3,$2
	mflo	$2
	daddiu	$sp,$sp,16
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$4
	move	$2,$5
	sll	$3,$4,0
	sw	$3,16($sp)
	sll	$2,$5,0
	sw	$2,20($sp)
	sw	$0,4($sp)
	sw	$0,8($sp)
	lw	$2,20($sp)
	bgez	$2,.L814
	nop

	lw	$2,20($sp)
	subu	$2,$0,$2
	sw	$2,20($sp)
	li	$2,1			# 0x1
	sw	$2,4($sp)
.L814:
	sb	$0,0($sp)
	b	.L815
	nop

.L818:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L816
	nop

	lw	$3,8($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
.L816:
	lw	$2,16($sp)
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sra	$2,$2,1
	sw	$2,20($sp)
	lbu	$2,0($sp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,0($sp)
.L815:
	lw	$2,20($sp)
	beq	$2,$0,.L817
	nop

	lbu	$2,0($sp)
	sltu	$2,$2,32
	bne	$2,$0,.L818
	nop

.L817:
	lw	$2,4($sp)
	beq	$2,$0,.L819
	nop

	lw	$2,8($sp)
	subu	$2,$0,$2
	b	.L820
	nop

.L819:
	lw	$2,8($sp)
.L820:
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(__divsi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))
	sd	$4,16($sp)
	sd	$5,24($sp)
	sw	$0,0($sp)
	ld	$2,16($sp)
	bgez	$2,.L824
	nop

	ld	$2,16($sp)
	dsubu	$2,$0,$2
	sd	$2,16($sp)
	lw	$2,0($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
.L824:
	ld	$2,24($sp)
	bgez	$2,.L825
	nop

	ld	$2,24($sp)
	dsubu	$2,$0,$2
	sd	$2,24($sp)
	lw	$2,0($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
.L825:
	lw	$3,28($sp)
	lw	$2,20($sp)
	move	$6,$0
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__udivmodsi4)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	dsll	$2,$2,32
	dsrl	$2,$2,32
	sd	$2,8($sp)
	lw	$2,0($sp)
	beq	$2,$0,.L826
	nop

	ld	$2,8($sp)
	dsubu	$2,$0,$2
	sd	$2,8($sp)
.L826:
	ld	$2,8($sp)
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(__modsi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))
	sd	$4,16($sp)
	sd	$5,24($sp)
	sw	$0,0($sp)
	ld	$2,16($sp)
	bgez	$2,.L830
	nop

	ld	$2,16($sp)
	dsubu	$2,$0,$2
	sd	$2,16($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
.L830:
	ld	$2,24($sp)
	bgez	$2,.L831
	nop

	ld	$2,24($sp)
	dsubu	$2,$0,$2
	sd	$2,24($sp)
.L831:
	lw	$3,28($sp)
	lw	$2,20($sp)
	li	$6,1			# 0x1
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__udivmodsi4)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	dsll	$2,$2,32
	dsrl	$2,$2,32
	sd	$2,8($sp)
	lw	$2,0($sp)
	beq	$2,$0,.L832
	nop

	ld	$2,8($sp)
	dsubu	$2,$0,$2
	sd	$2,8($sp)
.L832:
	ld	$2,8($sp)
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$5
	move	$2,$6
	sll	$4,$4,0
	sh	$4,16($sp)
	sll	$3,$5,0
	sh	$3,18($sp)
	sll	$2,$6,0
	sw	$2,20($sp)
	li	$2,1			# 0x1
	sh	$2,0($sp)
	sh	$0,2($sp)
	b	.L836
	nop

.L838:
	lhu	$2,18($sp)
	sll	$2,$2,1
	sh	$2,18($sp)
	lhu	$2,0($sp)
	sll	$2,$2,1
	sh	$2,0($sp)
.L836:
	lhu	$3,18($sp)
	lhu	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L839
	nop

	lhu	$2,0($sp)
	beq	$2,$0,.L839
	nop

	lh	$2,18($sp)
	bgez	$2,.L838
	nop

	b	.L839
	nop

.L841:
	lhu	$3,16($sp)
	lhu	$2,18($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L840
	nop

	lhu	$3,16($sp)
	lhu	$2,18($sp)
	subu	$2,$3,$2
	sh	$2,16($sp)
	lhu	$3,2($sp)
	lhu	$2,0($sp)
	or	$2,$3,$2
	sh	$2,2($sp)
.L840:
	lhu	$2,0($sp)
	srl	$2,$2,1
	sh	$2,0($sp)
	lhu	$2,18($sp)
	srl	$2,$2,1
	sh	$2,18($sp)
.L839:
	lhu	$2,0($sp)
	bne	$2,$0,.L841
	nop

	lw	$2,20($sp)
	beq	$2,$0,.L842
	nop

	lhu	$2,16($sp)
	b	.L843
	nop

.L842:
	lhu	$2,2($sp)
.L843:
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,16($sp)
	sd	$5,24($sp)
	move	$2,$6
	sll	$2,$6,0
	sw	$2,32($sp)
	li	$2,1			# 0x1
	sd	$2,0($sp)
	sd	$0,8($sp)
	b	.L846
	nop

.L848:
	ld	$2,24($sp)
	dsll	$2,$2,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	dsll	$2,$2,1
	sd	$2,0($sp)
.L846:
	ld	$3,24($sp)
	ld	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L849
	nop

	ld	$2,0($sp)
	beq	$2,$0,.L849
	nop

	ld	$3,24($sp)
	li	$2,1			# 0x1
	dsll	$2,$2,31
	and	$2,$3,$2
	beq	$2,$0,.L848
	nop

	b	.L849
	nop

.L851:
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L850
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	dsubu	$2,$3,$2
	sd	$2,16($sp)
	ld	$3,8($sp)
	ld	$2,0($sp)
	or	$2,$3,$2
	sd	$2,8($sp)
.L850:
	ld	$2,0($sp)
	dsrl	$2,$2,1
	sd	$2,0($sp)
	ld	$2,24($sp)
	dsrl	$2,$2,1
	sd	$2,24($sp)
.L849:
	ld	$2,0($sp)
	bne	$2,$0,.L851
	nop

	lw	$2,32($sp)
	beq	$2,$0,.L852
	nop

	ld	$2,16($sp)
	b	.L853
	nop

.L852:
	ld	$2,8($sp)
.L853:
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	move	$2,$5
	sll	$2,$5,0
	sw	$2,40($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	ld	$2,32($sp)
	sd	$2,8($sp)
	lw	$3,40($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L856
	nop

	sw	$0,20($sp)
	lw	$2,12($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sll	$2,$2,$3
	sw	$2,16($sp)
	b	.L857
	nop

.L856:
	lw	$2,40($sp)
	bne	$2,$0,.L858
	nop

	ld	$2,32($sp)
	b	.L860
	nop

.L858:
	lw	$3,12($sp)
	lw	$2,40($sp)
	sll	$2,$3,$2
	sw	$2,20($sp)
	lw	$2,8($sp)
	move	$3,$2
	lw	$2,40($sp)
	sll	$2,$3,$2
	move	$3,$2
	lw	$2,12($sp)
	lw	$5,0($sp)
	lw	$4,40($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	srl	$2,$2,$4
	or	$2,$3,$2
	sw	$2,16($sp)
.L857:
	ld	$2,16($sp)
.L860:
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashlti3
	.set	nomips16
	.set	nomicromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$sp,80,$31		# vars= 80, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$5,56($sp)
	sd	$4,48($sp)
	move	$2,$6
	sll	$2,$6,0
	sw	$2,64($sp)
	li	$2,64			# 0x40
	sw	$2,0($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	lw	$3,64($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L863
	nop

	sd	$0,40($sp)
	ld	$2,24($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsll	$2,$2,$3
	sd	$2,32($sp)
	b	.L864
	nop

.L863:
	lw	$2,64($sp)
	bne	$2,$0,.L865
	nop

	ld	$3,56($sp)
	ld	$2,48($sp)
	b	.L867
	nop

.L865:
	ld	$3,24($sp)
	lw	$2,64($sp)
	dsll	$2,$3,$2
	sd	$2,40($sp)
	ld	$2,16($sp)
	move	$3,$2
	lw	$2,64($sp)
	dsll	$3,$3,$2
	ld	$2,24($sp)
	lw	$5,0($sp)
	lw	$4,64($sp)
	subu	$4,$5,$4
	sll	$4,$4,0
	dsrl	$2,$2,$4
	or	$2,$3,$2
	sd	$2,32($sp)
.L864:
	ld	$3,40($sp)
	ld	$2,32($sp)
.L867:
	daddiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
	.globl	__ashrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	move	$2,$5
	sll	$2,$5,0
	sw	$2,40($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	ld	$2,32($sp)
	sd	$2,8($sp)
	lw	$3,40($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L870
	nop

	lw	$2,8($sp)
	lw	$3,0($sp)
	addiu	$3,$3,-1
	sll	$3,$3,0
	sra	$2,$2,$3
	sw	$2,16($sp)
	lw	$2,8($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sra	$2,$2,$3
	sw	$2,20($sp)
	b	.L871
	nop

.L870:
	lw	$2,40($sp)
	bne	$2,$0,.L872
	nop

	ld	$2,32($sp)
	b	.L874
	nop

.L872:
	lw	$3,8($sp)
	lw	$2,40($sp)
	sra	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,8($sp)
	move	$4,$2
	lw	$3,0($sp)
	lw	$2,40($sp)
	subu	$2,$3,$2
	sll	$2,$2,0
	sll	$2,$4,$2
	move	$3,$2
	lw	$4,12($sp)
	lw	$2,40($sp)
	srl	$2,$4,$2
	or	$2,$3,$2
	sw	$2,20($sp)
.L871:
	ld	$2,16($sp)
.L874:
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__ashrti3
	.set	nomips16
	.set	nomicromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$sp,80,$31		# vars= 80, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$5,56($sp)
	sd	$4,48($sp)
	move	$2,$6
	sll	$2,$6,0
	sw	$2,64($sp)
	li	$2,64			# 0x40
	sw	$2,0($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	lw	$3,64($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L877
	nop

	ld	$2,16($sp)
	lw	$3,0($sp)
	addiu	$3,$3,-1
	sll	$3,$3,0
	dsra	$2,$2,$3
	sd	$2,32($sp)
	ld	$2,16($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsra	$2,$2,$3
	sd	$2,40($sp)
	b	.L878
	nop

.L877:
	lw	$2,64($sp)
	bne	$2,$0,.L879
	nop

	ld	$3,56($sp)
	ld	$2,48($sp)
	b	.L881
	nop

.L879:
	ld	$3,16($sp)
	lw	$2,64($sp)
	dsra	$2,$3,$2
	sd	$2,32($sp)
	ld	$2,16($sp)
	move	$4,$2
	lw	$3,0($sp)
	lw	$2,64($sp)
	subu	$2,$3,$2
	sll	$2,$2,0
	dsll	$3,$4,$2
	ld	$4,24($sp)
	lw	$2,64($sp)
	dsrl	$2,$4,$2
	or	$2,$3,$2
	sd	$2,40($sp)
.L878:
	ld	$3,40($sp)
	ld	$2,32($sp)
.L881:
	daddiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
	.globl	__bswapdi2
	.set	nomips16
	.set	nomicromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	dsrl	$3,$2,56
	ld	$2,0($sp)
	dsrl	$2,$2,40
	andi	$2,$2,0xff00
	or	$3,$3,$2
	ld	$2,0($sp)
	dsrl	$2,$2,24
	li	$4,16711680			# 0xff0000
	and	$2,$2,$4
	or	$3,$3,$2
	ld	$2,0($sp)
	dsrl	$2,$2,8
	li	$4,255			# 0xff
	dsll	$4,$4,24
	and	$2,$2,$4
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$2,$2,8
	li	$4,255			# 0xff
	dsll	$4,$4,32
	and	$2,$2,$4
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$2,$2,24
	li	$4,255			# 0xff
	dsll	$4,$4,40
	and	$2,$2,$4
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$2,$2,40
	li	$4,255			# 0xff
	dsll	$4,$4,48
	and	$2,$2,$4
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$2,$2,56
	or	$2,$3,$2
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,24
	move	$3,$2
	lw	$2,0($sp)
	srl	$2,$2,8
	andi	$2,$2,0xff00
	or	$2,$3,$2
	move	$3,$2
	lw	$2,0($sp)
	sll	$2,$2,8
	li	$4,16711680			# 0xff0000
	and	$2,$2,$4
	or	$2,$3,$2
	move	$3,$2
	lw	$2,0($sp)
	sll	$2,$2,24
	or	$2,$3,$2
	daddiu	$sp,$sp,16
	jr	$31
	nop

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
	.frame	$sp,80,$31		# vars= 80, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	move	$2,$4
	sll	$2,$4,0
	sw	$2,64($sp)
	lw	$2,64($sp)
	sw	$2,0($sp)
	lw	$2,0($sp)
	li	$3,65536			# 0x10000
	sltu	$2,$2,$3
	beq	$2,$0,.L890
	nop

	li	$2,16			# 0x10
	b	.L891
	nop

.L890:
	move	$2,$0
.L891:
	sw	$2,4($sp)
	li	$3,16			# 0x10
	lw	$2,4($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($sp)
	srl	$2,$2,$3
	sw	$2,8($sp)
	lw	$2,4($sp)
	sw	$2,12($sp)
	lw	$2,8($sp)
	andi	$2,$2,0xff00
	bne	$2,$0,.L892
	nop

	li	$2,8			# 0x8
	b	.L893
	nop

.L892:
	move	$2,$0
.L893:
	sw	$2,16($sp)
	li	$3,8			# 0x8
	lw	$2,16($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,8($sp)
	srl	$2,$2,$3
	sw	$2,20($sp)
	lw	$3,12($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,24($sp)
	lw	$2,20($sp)
	andi	$2,$2,0xf0
	bne	$2,$0,.L894
	nop

	li	$2,4			# 0x4
	b	.L895
	nop

.L894:
	move	$2,$0
.L895:
	sw	$2,28($sp)
	li	$3,4			# 0x4
	lw	$2,28($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,20($sp)
	srl	$2,$2,$3
	sw	$2,32($sp)
	lw	$3,24($sp)
	lw	$2,28($sp)
	addu	$2,$3,$2
	sw	$2,36($sp)
	lw	$2,32($sp)
	andi	$2,$2,0xc
	bne	$2,$0,.L896
	nop

	li	$2,2			# 0x2
	b	.L897
	nop

.L896:
	move	$2,$0
.L897:
	sw	$2,40($sp)
	li	$3,2			# 0x2
	lw	$2,40($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,32($sp)
	srl	$2,$2,$3
	sw	$2,44($sp)
	lw	$3,36($sp)
	lw	$2,40($sp)
	addu	$2,$3,$2
	sw	$2,48($sp)
	lw	$2,44($sp)
	andi	$2,$2,0x2
	sltu	$2,$2,1
	move	$3,$2
	li	$4,2			# 0x2
	lw	$2,44($sp)
	subu	$2,$4,$2
	mult	$3,$2
	mflo	$2
	lw	$3,48($sp)
	addu	$2,$3,$2
	daddiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__clzti2
	.set	nomips16
	.set	nomicromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(__clzti2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__clzti2)))
	sd	$5,40($sp)
	sd	$4,32($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$2,16($sp)
	sltu	$2,$2,1
	subu	$2,$0,$2
	sd	$2,0($sp)
	ld	$3,16($sp)
	ld	$2,0($sp)
	nor	$2,$0,$2
	and	$3,$3,$2
	ld	$4,24($sp)
	ld	$2,0($sp)
	and	$2,$4,$2
	or	$2,$3,$2
	ld	$3,%call16(__clzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	move	$3,$2
	lw	$2,4($sp)
	andi	$2,$2,0x40
	addu	$2,$3,$2
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.globl	__cmpdi2
	.set	nomips16
	.set	nomicromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	lw	$3,0($sp)
	lw	$2,8($sp)
	slt	$2,$3,$2
	beq	$2,$0,.L904
	nop

	move	$2,$0
	b	.L909
	nop

.L904:
	lw	$3,0($sp)
	lw	$2,8($sp)
	slt	$2,$2,$3
	beq	$2,$0,.L906
	nop

	li	$2,2			# 0x2
	b	.L909
	nop

.L906:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L907
	nop

	move	$2,$0
	b	.L909
	nop

.L907:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L908
	nop

	li	$2,2			# 0x2
	b	.L909
	nop

.L908:
	li	$2,1			# 0x1
.L909:
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(__aeabi_lcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_lcmp)))
	sd	$4,0($sp)
	sd	$5,8($sp)
	ld	$5,8($sp)
	ld	$4,0($sp)
	ld	$2,%got_disp(__cmpdi2)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	addiu	$2,$2,-1
	ld	$31,24($sp)
	ld	$28,16($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__cmpti2
	.set	nomips16
	.set	nomicromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$5,40($sp)
	sd	$4,32($sp)
	sd	$7,56($sp)
	sd	$6,48($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	sd	$3,8($sp)
	sd	$2,0($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$3,0($sp)
	ld	$2,16($sp)
	slt	$2,$3,$2
	beq	$2,$0,.L915
	nop

	move	$2,$0
	b	.L920
	nop

.L915:
	ld	$3,0($sp)
	ld	$2,16($sp)
	slt	$2,$2,$3
	beq	$2,$0,.L917
	nop

	li	$2,2			# 0x2
	b	.L920
	nop

.L917:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L918
	nop

	move	$2,$0
	b	.L920
	nop

.L918:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L919
	nop

	li	$2,2			# 0x2
	b	.L920
	nop

.L919:
	li	$2,1			# 0x1
.L920:
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
	.globl	__ctzsi2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$sp,80,$31		# vars= 80, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	move	$2,$4
	sll	$2,$4,0
	sw	$2,64($sp)
	lw	$2,64($sp)
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xffff
	bne	$2,$0,.L923
	nop

	li	$2,16			# 0x10
	b	.L924
	nop

.L923:
	move	$2,$0
.L924:
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,4($sp)
	sw	$2,12($sp)
	lw	$2,8($sp)
	andi	$2,$2,0xff
	bne	$2,$0,.L925
	nop

	li	$2,8			# 0x8
	b	.L926
	nop

.L925:
	move	$2,$0
.L926:
	sw	$2,16($sp)
	lw	$3,8($sp)
	lw	$2,16($sp)
	srl	$2,$3,$2
	sw	$2,20($sp)
	lw	$3,12($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,24($sp)
	lw	$2,20($sp)
	andi	$2,$2,0xf
	bne	$2,$0,.L927
	nop

	li	$2,4			# 0x4
	b	.L928
	nop

.L927:
	move	$2,$0
.L928:
	sw	$2,28($sp)
	lw	$3,20($sp)
	lw	$2,28($sp)
	srl	$2,$3,$2
	sw	$2,32($sp)
	lw	$3,24($sp)
	lw	$2,28($sp)
	addu	$2,$3,$2
	sw	$2,36($sp)
	lw	$2,32($sp)
	andi	$2,$2,0x3
	bne	$2,$0,.L929
	nop

	li	$2,2			# 0x2
	b	.L930
	nop

.L929:
	move	$2,$0
.L930:
	sw	$2,40($sp)
	lw	$3,32($sp)
	lw	$2,40($sp)
	srl	$2,$3,$2
	sw	$2,44($sp)
	lw	$2,44($sp)
	andi	$2,$2,0x3
	sw	$2,48($sp)
	lw	$3,36($sp)
	lw	$2,40($sp)
	addu	$2,$3,$2
	sw	$2,52($sp)
	lw	$2,48($sp)
	srl	$2,$2,1
	li	$3,2			# 0x2
	subu	$2,$3,$2
	lw	$3,48($sp)
	nor	$3,$0,$3
	andi	$3,$3,0x1
	subu	$3,$0,$3
	and	$2,$3,$2
	lw	$3,52($sp)
	addu	$2,$3,$2
	daddiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__ctzti2
	.set	nomips16
	.set	nomicromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(__ctzti2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ctzti2)))
	sd	$5,40($sp)
	sd	$4,32($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$2,24($sp)
	sltu	$2,$2,1
	subu	$2,$0,$2
	sd	$2,0($sp)
	ld	$3,16($sp)
	ld	$2,0($sp)
	and	$3,$3,$2
	ld	$4,24($sp)
	ld	$2,0($sp)
	nor	$2,$0,$2
	and	$2,$4,$2
	or	$2,$3,$2
	ld	$3,%call16(__ctzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	move	$3,$2
	lw	$2,4($sp)
	andi	$2,$2,0x40
	addu	$2,$3,$2
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.set	nomips16
	.set	nomicromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$sp,48,$31		# vars= 32, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(__ffsti2)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__ffsti2)))
	sd	$5,24($sp)
	sd	$4,16($sp)
	ld	$3,24($sp)
	ld	$2,16($sp)
	sd	$3,8($sp)
	sd	$2,0($sp)
	ld	$2,8($sp)
	bne	$2,$0,.L937
	nop

	ld	$2,0($sp)
	bne	$2,$0,.L938
	nop

	move	$2,$0
	b	.L940
	nop

.L938:
	ld	$2,0($sp)
	ld	$3,%call16(__ctzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	addiu	$2,$2,65
	b	.L940
	nop

.L937:
	ld	$2,8($sp)
	ld	$3,%call16(__ctzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	addiu	$2,$2,1
.L940:
	ld	$31,40($sp)
	ld	$28,32($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.globl	__lshrdi3
	.set	nomips16
	.set	nomicromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	move	$2,$5
	sll	$2,$5,0
	sw	$2,40($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	ld	$2,32($sp)
	sd	$2,8($sp)
	lw	$3,40($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L943
	nop

	sw	$0,16($sp)
	lw	$2,8($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	srl	$2,$2,$3
	sw	$2,20($sp)
	b	.L944
	nop

.L943:
	lw	$2,40($sp)
	bne	$2,$0,.L945
	nop

	ld	$2,32($sp)
	b	.L947
	nop

.L945:
	lw	$3,8($sp)
	lw	$2,40($sp)
	srl	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,8($sp)
	lw	$4,0($sp)
	lw	$3,40($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sll	$2,$2,$3
	move	$3,$2
	lw	$4,12($sp)
	lw	$2,40($sp)
	srl	$2,$4,$2
	or	$2,$3,$2
	sw	$2,20($sp)
.L944:
	ld	$2,16($sp)
.L947:
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__lshrti3
	.set	nomips16
	.set	nomicromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$sp,80,$31		# vars= 80, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$5,56($sp)
	sd	$4,48($sp)
	move	$2,$6
	sll	$2,$6,0
	sw	$2,64($sp)
	li	$2,64			# 0x40
	sw	$2,0($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	lw	$3,64($sp)
	lw	$2,0($sp)
	and	$2,$3,$2
	beq	$2,$0,.L950
	nop

	sd	$0,32($sp)
	ld	$2,16($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsrl	$2,$2,$3
	sd	$2,40($sp)
	b	.L951
	nop

.L950:
	lw	$2,64($sp)
	bne	$2,$0,.L952
	nop

	ld	$3,56($sp)
	ld	$2,48($sp)
	b	.L954
	nop

.L952:
	ld	$3,16($sp)
	lw	$2,64($sp)
	dsrl	$2,$3,$2
	sd	$2,32($sp)
	ld	$2,16($sp)
	lw	$4,0($sp)
	lw	$3,64($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsll	$3,$2,$3
	ld	$4,24($sp)
	lw	$2,64($sp)
	dsrl	$2,$4,$2
	or	$2,$3,$2
	sd	$2,40($sp)
.L951:
	ld	$3,40($sp)
	ld	$2,32($sp)
.L954:
	daddiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.globl	__muldsi3
	.set	nomips16
	.set	nomicromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,32($sp)
	sll	$2,$2,0
	sw	$2,36($sp)
	li	$2,16			# 0x10
	sw	$2,0($sp)
	li	$3,-1			# 0xffffffffffffffff
	lw	$2,0($sp)
	srl	$2,$3,$2
	sw	$2,4($sp)
	lw	$3,32($sp)
	lw	$2,4($sp)
	and	$2,$3,$2
	move	$3,$2
	lw	$4,36($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	sw	$2,28($sp)
	lw	$3,28($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,28($sp)
	lw	$3,4($sp)
	and	$2,$3,$2
	sw	$2,28($sp)
	lw	$3,32($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	move	$3,$2
	lw	$4,36($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,12($sp)
	lw	$3,28($sp)
	lw	$4,12($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	move	$4,$2
	lw	$2,0($sp)
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,28($sp)
	lw	$3,12($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	sw	$2,24($sp)
	lw	$3,28($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,28($sp)
	lw	$3,4($sp)
	and	$2,$3,$2
	sw	$2,28($sp)
	lw	$3,36($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	move	$3,$2
	lw	$4,32($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	lw	$3,16($sp)
	addu	$2,$3,$2
	sw	$2,20($sp)
	lw	$3,28($sp)
	lw	$4,20($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	move	$4,$2
	lw	$2,0($sp)
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,28($sp)
	lw	$3,24($sp)
	lw	$4,20($sp)
	lw	$2,0($sp)
	srl	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,24($sp)
	lw	$3,24($sp)
	lw	$4,32($sp)
	lw	$2,0($sp)
	srl	$2,$4,$2
	move	$4,$2
	lw	$5,36($sp)
	lw	$2,0($sp)
	srl	$2,$5,$2
	mult	$4,$2
	mflo	$2
	addu	$2,$3,$2
	sw	$2,24($sp)
	ld	$2,24($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

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
	.frame	$sp,64,$31		# vars= 48, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(__muldi3_compiler_rt)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__muldi3_compiler_rt)))
	sd	$4,32($sp)
	sd	$5,40($sp)
	ld	$2,32($sp)
	sd	$2,0($sp)
	ld	$2,40($sp)
	sd	$2,8($sp)
	lw	$3,12($sp)
	lw	$2,4($sp)
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__muldsi3)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	sd	$2,16($sp)
	lw	$3,16($sp)
	lw	$4,0($sp)
	lw	$2,12($sp)
	mult	$4,$2
	mflo	$4
	lw	$5,4($sp)
	lw	$2,8($sp)
	mult	$5,$2
	mflo	$2
	addu	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,16($sp)
	ld	$2,16($sp)
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__mulddi3
	.set	nomips16
	.set	nomicromips
	.ent	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.frame	$sp,80,$31		# vars= 80, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$4,64($sp)
	sd	$5,72($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	li	$3,-1			# 0xffffffffffffffff
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,8($sp)
	ld	$3,64($sp)
	ld	$2,8($sp)
	and	$3,$3,$2
	ld	$4,72($sp)
	ld	$2,8($sp)
	and	$2,$4,$2
	dmult	$3,$2
	mflo	$2
	sd	$2,56($sp)
	ld	$3,56($sp)
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,16($sp)
	ld	$2,56($sp)
	ld	$3,8($sp)
	and	$2,$3,$2
	sd	$2,56($sp)
	ld	$3,64($sp)
	lw	$2,0($sp)
	dsrl	$3,$3,$2
	ld	$4,72($sp)
	ld	$2,8($sp)
	and	$2,$4,$2
	dmult	$3,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,24($sp)
	ld	$3,56($sp)
	ld	$4,24($sp)
	ld	$2,8($sp)
	and	$4,$4,$2
	lw	$2,0($sp)
	dsll	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,56($sp)
	ld	$3,24($sp)
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,48($sp)
	ld	$3,56($sp)
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,32($sp)
	ld	$2,56($sp)
	ld	$3,8($sp)
	and	$2,$3,$2
	sd	$2,56($sp)
	ld	$3,72($sp)
	lw	$2,0($sp)
	dsrl	$3,$3,$2
	ld	$4,64($sp)
	ld	$2,8($sp)
	and	$2,$4,$2
	dmult	$3,$2
	ld	$2,32($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,40($sp)
	ld	$3,56($sp)
	ld	$4,40($sp)
	ld	$2,8($sp)
	and	$4,$4,$2
	lw	$2,0($sp)
	dsll	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,56($sp)
	ld	$3,48($sp)
	ld	$4,40($sp)
	lw	$2,0($sp)
	dsrl	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,48($sp)
	ld	$2,48($sp)
	ld	$4,64($sp)
	lw	$3,0($sp)
	dsrl	$4,$4,$3
	ld	$5,72($sp)
	lw	$3,0($sp)
	dsrl	$3,$5,$3
	dmult	$4,$3
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,48($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	daddiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.globl	__multi3
	.set	nomips16
	.set	nomicromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$sp,96,$31		# vars= 80, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$28,80($sp)
	lui	$28,%hi(%neg(%gp_rel(__multi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__multi3)))
	sd	$5,56($sp)
	sd	$4,48($sp)
	sd	$7,72($sp)
	sd	$6,64($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,8($sp)
	sd	$2,0($sp)
	ld	$3,72($sp)
	ld	$2,64($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$5,24($sp)
	ld	$4,8($sp)
	ld	$2,%got_disp(__mulddi3)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	sd	$3,40($sp)
	sd	$2,32($sp)
	ld	$3,32($sp)
	ld	$4,0($sp)
	ld	$2,24($sp)
	dmult	$4,$2
	mflo	$2
	ld	$5,8($sp)
	ld	$4,16($sp)
	dmult	$5,$4
	mflo	$4
	daddu	$2,$2,$4
	daddu	$2,$3,$2
	sd	$2,32($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	ld	$31,88($sp)
	ld	$28,80($sp)
	daddiu	$sp,$sp,96
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
	.globl	__negdi2
	.set	nomips16
	.set	nomicromips
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$4,0($sp)
	ld	$2,0($sp)
	dsubu	$2,$0,$2
	daddiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__negti2
	.set	nomips16
	.set	nomicromips
	.ent	__negti2
	.type	__negti2, @function
__negti2:
	.frame	$sp,16,$31		# vars= 16, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$5,8($sp)
	sd	$4,0($sp)
	ld	$5,0($sp)
	ld	$6,8($sp)
	move	$7,$0
	move	$4,$0
	dsubu	$3,$4,$6
	sltu	$2,$4,$3
	dsll	$4,$2,32
	dsrl	$4,$4,32
	dsubu	$2,$7,$5
	dsubu	$2,$2,$4
	daddiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
	.globl	__paritydi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$4,32($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	lw	$3,16($sp)
	lw	$2,20($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,4($sp)
	lw	$2,4($sp)
	srl	$2,$2,8
	lw	$3,4($sp)
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,4
	lw	$3,8($sp)
	xor	$2,$3,$2
	sw	$2,12($sp)
	lw	$2,12($sp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__parityti2
	.set	nomips16
	.set	nomicromips
	.ent	__parityti2
	.type	__parityti2, @function
__parityti2:
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$5,56($sp)
	sd	$4,48($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	xor	$2,$3,$2
	sd	$2,32($sp)
	lw	$3,32($sp)
	lw	$2,36($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,4($sp)
	lw	$2,4($sp)
	srl	$2,$2,8
	lw	$3,4($sp)
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,4
	lw	$3,8($sp)
	xor	$2,$3,$2
	sw	$2,12($sp)
	lw	$2,12($sp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.globl	__paritysi2
	.set	nomips16
	.set	nomicromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($sp)
	lw	$2,16($sp)
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,4($sp)
	lw	$2,4($sp)
	srl	$2,$2,8
	lw	$3,4($sp)
	xor	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,4
	lw	$3,8($sp)
	xor	$2,$3,$2
	sw	$2,12($sp)
	lw	$2,12($sp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$4,48($sp)
	ld	$2,48($sp)
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsrl	$3,$2,1
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	ori	$2,$2,0x5555
	and	$2,$3,$2
	ld	$3,0($sp)
	dsubu	$2,$3,$2
	sd	$2,8($sp)
	ld	$2,8($sp)
	dsrl	$3,$2,2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$3,$3,$2
	ld	$4,8($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,16($sp)
	ld	$2,16($sp)
	dsrl	$3,$2,4
	ld	$2,16($sp)
	daddu	$3,$3,$2
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sd	$2,24($sp)
	lw	$3,28($sp)
	ld	$2,24($sp)
	dsrl	$2,$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,32($sp)
	lw	$2,32($sp)
	srl	$2,$2,16
	lw	$3,32($sp)
	addu	$2,$3,$2
	sw	$2,36($sp)
	lw	$2,36($sp)
	srl	$2,$2,8
	lw	$3,36($sp)
	addu	$2,$3,$2
	andi	$2,$2,0x7f
	daddiu	$sp,$sp,64
	jr	$31
	nop

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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$2,$4
	sll	$2,$2,0
	sw	$2,32($sp)
	lw	$2,32($sp)
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,1
	move	$3,$2
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	and	$2,$3,$2
	lw	$3,0($sp)
	subu	$2,$3,$2
	sw	$2,4($sp)
	lw	$2,4($sp)
	srl	$2,$2,2
	move	$3,$2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$2,$3,$2
	move	$3,$2
	lw	$4,4($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,4
	lw	$3,8($sp)
	addu	$2,$3,$2
	move	$3,$2
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sw	$2,12($sp)
	lw	$2,12($sp)
	srl	$2,$2,16
	lw	$3,12($sp)
	addu	$2,$3,$2
	sw	$2,16($sp)
	lw	$2,16($sp)
	srl	$2,$2,8
	lw	$3,16($sp)
	addu	$2,$3,$2
	andi	$2,$2,0x3f
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.set	nomips16
	.set	nomicromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$sp,96,$31		# vars= 96, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$5,88($sp)
	sd	$4,80($sp)
	ld	$3,88($sp)
	ld	$2,80($sp)
	sd	$3,8($sp)
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsll	$3,$2,63
	ld	$2,8($sp)
	dsrl	$2,$2,1
	or	$2,$3,$2
	ld	$3,0($sp)
	dsrl	$4,$3,1
	li	$3,1431633920			# 0x55550000
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	ori	$3,$3,0x5555
	and	$5,$4,$3
	li	$3,1431633920			# 0x55550000
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	ori	$3,$3,0x5555
	dsll	$3,$3,16
	ori	$3,$3,0x5555
	and	$7,$2,$3
	ld	$6,0($sp)
	ld	$4,8($sp)
	dsubu	$3,$4,$7
	sltu	$2,$4,$3
	dsll	$4,$2,32
	dsrl	$4,$4,32
	dsubu	$2,$6,$5
	dsubu	$2,$2,$4
	sd	$2,16($sp)
	sd	$3,24($sp)
	ld	$2,16($sp)
	dsll	$3,$2,62
	ld	$2,24($sp)
	dsrl	$2,$2,2
	or	$2,$3,$2
	ld	$3,16($sp)
	dsrl	$4,$3,2
	li	$3,858980352			# 0x33330000
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	ori	$3,$3,0x3333
	and	$6,$4,$3
	li	$3,858980352			# 0x33330000
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	ori	$3,$3,0x3333
	dsll	$3,$3,16
	ori	$3,$3,0x3333
	and	$4,$2,$3
	ld	$3,16($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$5,$3,$2
	ld	$3,24($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$7,$3,$2
	daddu	$3,$4,$7
	sltu	$2,$3,$4
	dsll	$4,$2,32
	dsrl	$4,$4,32
	daddu	$2,$6,$5
	daddu	$2,$4,$2
	sd	$2,32($sp)
	sd	$3,40($sp)
	ld	$2,32($sp)
	dsll	$3,$2,60
	ld	$2,40($sp)
	dsrl	$2,$2,4
	or	$2,$3,$2
	ld	$3,32($sp)
	dsrl	$6,$3,4
	ld	$5,32($sp)
	ld	$7,40($sp)
	daddu	$4,$2,$7
	sltu	$2,$4,$2
	dsll	$2,$2,32
	dsrl	$2,$2,32
	daddu	$3,$6,$5
	daddu	$2,$2,$3
	move	$3,$2
	move	$5,$3
	move	$3,$4
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	and	$2,$5,$2
	sd	$2,48($sp)
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sd	$2,56($sp)
	ld	$2,56($sp)
	ld	$3,48($sp)
	dsrl	$3,$3,0
	daddu	$2,$2,$3
	sd	$2,64($sp)
	lw	$3,68($sp)
	ld	$2,64($sp)
	dsrl	$2,$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,72($sp)
	lw	$2,72($sp)
	srl	$2,$2,16
	lw	$3,72($sp)
	addu	$2,$3,$2
	sw	$2,76($sp)
	lw	$2,76($sp)
	srl	$2,$2,8
	lw	$3,76($sp)
	addu	$2,$3,$2
	andi	$2,$2,0xff
	daddiu	$sp,$sp,96
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__popcountti2
	.size	__popcountti2, .-__popcountti2
	.align	2
	.globl	__powidf2
	.set	nomips16
	.set	nomicromips
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$4,%hi(%neg(%gp_rel(__powidf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powidf2)))
	sdc1	$f12,16($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,24($sp)
	lw	$2,24($sp)
	srl	$2,$2,31
	andi	$2,$2,0x00ff
	sw	$2,8($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	sdc1	$f0,0($sp)
.L996:
	lw	$2,24($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L993
	nop

	ldc1	$f1,0($sp)
	ldc1	$f0,16($sp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,0($sp)
.L993:
	lw	$2,24($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	beq	$2,$0,.L1001
	nop

	ldc1	$f0,16($sp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,16($sp)
	b	.L996
	nop

.L1001:
	nop
	lw	$2,8($sp)
	beq	$2,$0,.L997
	nop

	ldc1	$f0,0($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
	b	.L999
	nop

.L997:
	ldc1	$f0,0($sp)
.L999:
	nop
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lui	$4,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powisf2)))
	swc1	$f12,16($sp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,20($sp)
	lw	$2,20($sp)
	srl	$2,$2,31
	andi	$2,$2,0x00ff
	sw	$2,4($sp)
	ld	$2,%got_page(.LC14)($4)
	lwc1	$f0,%got_ofst(.LC14)($2)
	swc1	$f0,0($sp)
.L1007:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L1004
	nop

	lwc1	$f1,0($sp)
	lwc1	$f0,16($sp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,0($sp)
.L1004:
	lw	$2,20($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	beq	$2,$0,.L1012
	nop

	lwc1	$f0,16($sp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,16($sp)
	b	.L1007
	nop

.L1012:
	nop
	lw	$2,4($sp)
	beq	$2,$0,.L1008
	nop

	lwc1	$f0,0($sp)
	ld	$2,%got_page(.LC14)($4)
	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
	b	.L1010
	nop

.L1008:
	lwc1	$f0,0($sp)
.L1010:
	nop
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	sd	$5,24($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L1015
	nop

	move	$2,$0
	b	.L1020
	nop

.L1015:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L1017
	nop

	li	$2,2			# 0x2
	b	.L1020
	nop

.L1017:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L1018
	nop

	move	$2,$0
	b	.L1020
	nop

.L1018:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L1019
	nop

	li	$2,2			# 0x2
	b	.L1020
	nop

.L1019:
	li	$2,1			# 0x1
.L1020:
	daddiu	$sp,$sp,32
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(__aeabi_ulcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_ulcmp)))
	sd	$4,0($sp)
	sd	$5,8($sp)
	ld	$5,8($sp)
	ld	$4,0($sp)
	ld	$2,%got_disp(__ucmpdi2)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	addiu	$2,$2,-1
	ld	$31,24($sp)
	ld	$28,16($sp)
	daddiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.globl	__ucmpti2
	.set	nomips16
	.set	nomicromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$5,40($sp)
	sd	$4,32($sp)
	sd	$7,56($sp)
	sd	$6,48($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
	sd	$3,8($sp)
	sd	$2,0($sp)
	ld	$3,56($sp)
	ld	$2,48($sp)
	sd	$3,24($sp)
	sd	$2,16($sp)
	ld	$3,0($sp)
	ld	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L1026
	nop

	move	$2,$0
	b	.L1031
	nop

.L1026:
	ld	$3,0($sp)
	ld	$2,16($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L1028
	nop

	li	$2,2			# 0x2
	b	.L1031
	nop

.L1028:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L1029
	nop

	move	$2,$0
	b	.L1031
	nop

.L1029:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L1030
	nop

	li	$2,2			# 0x2
	b	.L1031
	nop

.L1030:
	li	$2,1			# 0x1
.L1031:
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	__ucmpti2
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
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
	.section	.rodata.cst4
	.align	2
.LC6:
	.word	1056964608
	.align	2
.LC7:
	.word	1073741824
	.section	.rodata.cst8
	.align	3
.LC8:
	.word	1071644672
	.word	0
	.align	3
.LC9:
	.word	1073741824
	.word	0
	.section	.rodata.cst16
	.align	4
.LC10:
	.word	1073610752
	.word	0
	.word	0
	.word	0
	.align	4
.LC11:
	.word	1073741824
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
	.globl	__ctzdi2
	.globl	__clzdi2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
