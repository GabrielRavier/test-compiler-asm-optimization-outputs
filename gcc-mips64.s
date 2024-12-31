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
	ld	$3,0($sp)
	ld	$2,8($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	ld	$3,0($sp)
	ld	$2,8($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$3,8($sp)
	ld	$2,0($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L8
	nop

	ld	$3,8($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,8($sp)
	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	b	.L9
	nop

.L10:
	ld	$2,8($sp)
	daddiu	$2,$2,-1
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,-1
	sd	$2,0($sp)
	ld	$2,8($sp)
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L9:
	ld	$2,32($sp)
	bne	$2,$0,.L10
	nop

	b	.L11
	nop

.L8:
	ld	$3,8($sp)
	ld	$2,0($sp)
	beq	$3,$2,.L11
	nop

	b	.L12
	nop

.L13:
	ld	$3,8($sp)
	daddiu	$2,$3,1
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$4,$2,1
	sd	$4,0($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L12:
	ld	$2,32($sp)
	bne	$2,$0,.L13
	nop

.L11:
	ld	$2,16($sp)
	daddiu	$sp,$sp,48
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
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	lw	$2,32($sp)
	andi	$2,$2,0x00ff
	sw	$2,32($sp)
	b	.L17
	nop

.L19:
	ld	$2,40($sp)
	daddiu	$2,$2,-1
	sd	$2,40($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L17:
	ld	$2,40($sp)
	beq	$2,$0,.L18
	nop

	ld	$2,8($sp)
	lbu	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,32($sp)
	bne	$2,$3,.L19
	nop

.L18:
	ld	$2,40($sp)
	beq	$2,$0,.L20
	nop

	ld	$2,0($sp)
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
	ld	$2,16($sp)
	sd	$2,0($sp)
	lw	$2,24($sp)
	andi	$2,$2,0x00ff
	sw	$2,24($sp)
	b	.L24
	nop

.L26:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L24:
	ld	$2,32($sp)
	beq	$2,$0,.L25
	nop

	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,24($sp)
	bne	$2,$3,.L26
	nop

.L25:
	ld	$2,32($sp)
	beq	$2,$0,.L27
	nop

	ld	$2,0($sp)
	b	.L29
	nop

.L27:
	move	$2,$0
.L29:
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
	ld	$2,24($sp)
	sd	$2,8($sp)
	b	.L32
	nop

.L34:
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
.L32:
	ld	$2,32($sp)
	beq	$2,$0,.L33
	nop

	ld	$2,0($sp)
	lbu	$2,0($2)
	ld	$3,8($sp)
	lbu	$3,0($3)
	beq	$2,$3,.L34
	nop

.L33:
	ld	$2,32($sp)
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
	daddiu	$sp,$sp,48
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
	ld	$2,24($sp)
	sd	$2,8($sp)
	b	.L40
	nop

.L41:
	ld	$3,8($sp)
	daddiu	$2,$3,1
	sd	$2,8($sp)
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
	ld	$2,16($sp)
	sd	$2,0($sp)
	lw	$2,24($sp)
	andi	$2,$2,0x00ff
	sw	$2,24($sp)
	b	.L45
	nop

.L47:
	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,24($sp)
	bne	$2,$3,.L45
	nop

	ld	$3,0($sp)
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
	lw	$2,24($sp)
	andi	$3,$2,0x00ff
	ld	$2,0($sp)
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
	lw	$2,8($sp)
	andi	$2,$2,0x00ff
	sw	$2,8($sp)
	b	.L60
	nop

.L62:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L60:
	ld	$2,0($sp)
	lb	$2,0($2)
	beq	$2,$0,.L61
	nop

	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,8($sp)
	bne	$2,$3,.L62
	nop

.L61:
	ld	$2,0($sp)
	daddiu	$sp,$sp,16
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
	bne	$3,$4,.L66
	nop

	b	.L67
	nop

.L66:
	move	$3,$2
	daddiu	$2,$3,1
	lb	$3,0($3)
	bne	$3,$0,.L68
	nop

	move	$2,$0
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
	b	.L71
	nop

.L73:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
.L71:
	ld	$2,0($sp)
	lb	$2,0($2)
	ld	$3,8($sp)
	lb	$3,0($3)
	bne	$2,$3,.L72
	nop

	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L73
	nop

.L72:
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
	b	.L77
	nop

.L78:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L77:
	ld	$2,16($sp)
	lb	$2,0($2)
	bne	$2,$0,.L78
	nop

	ld	$3,16($sp)
	ld	$2,0($sp)
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
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L84
	nop

	move	$2,$0
	b	.L83
	nop

.L86:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,1
	sd	$2,8($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L84:
	ld	$2,0($sp)
	lbu	$2,0($2)
	beq	$2,$0,.L85
	nop

	ld	$2,8($sp)
	lbu	$2,0($2)
	beq	$2,$0,.L85
	nop

	ld	$2,32($sp)
	beq	$2,$0,.L85
	nop

	ld	$2,0($sp)
	lbu	$2,0($2)
	ld	$3,8($sp)
	lbu	$3,0($3)
	beq	$2,$3,.L86
	nop

.L85:
	ld	$2,0($sp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($sp)
	lbu	$2,0($2)
	subu	$2,$3,$2
.L83:
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
	ld	$2,24($sp)
	sd	$2,8($sp)
	b	.L89
	nop

.L90:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	lb	$3,0($2)
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
	ld	$2,32($sp)
	daddiu	$2,$2,-2
	sd	$2,32($sp)
.L89:
	ld	$2,32($sp)
	slt	$2,$2,2
	beq	$2,$0,.L90
	nop

	nop
	nop
	daddiu	$sp,$sp,48
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
	andi	$2,$2,0x00ff
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
	andi	$2,$2,0x00ff
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
	beq	$2,$3,.L99
	nop

	lw	$2,0($sp)
	li	$3,9			# 0x9
	bne	$2,$3,.L100
	nop

.L99:
	li	$2,1			# 0x1
	b	.L101
	nop

.L100:
	move	$2,$0
.L101:
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
	bne	$2,$0,.L105
	nop

	lw	$2,0($sp)
	li	$3,127			# 0x7f
	bne	$2,$3,.L106
	nop

.L105:
	li	$2,1			# 0x1
	b	.L107
	nop

.L106:
	move	$2,$0
.L107:
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
	andi	$2,$2,0x00ff
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
	andi	$2,$2,0x00ff
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
	andi	$2,$2,0x00ff
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
	andi	$2,$2,0x00ff
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
	beq	$2,$3,.L123
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-9
	sltu	$2,$2,5
	beq	$2,$0,.L124
	nop

.L123:
	li	$2,1			# 0x1
	b	.L125
	nop

.L124:
	move	$2,$0
.L125:
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
	andi	$2,$2,0x00ff
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
	bne	$2,$0,.L132
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-127
	sltu	$2,$2,33
	bne	$2,$0,.L132
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-8232
	sltu	$2,$2,2
	bne	$2,$0,.L132
	nop

	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7
	addu	$2,$3,$2
	sltu	$2,$2,3
	beq	$2,$0,.L133
	nop

.L132:
	li	$2,1			# 0x1
	b	.L134
	nop

.L133:
	move	$2,$0
.L134:
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
	andi	$2,$2,0x00ff
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
	beq	$2,$0,.L141
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	b	.L142
	nop

.L141:
	lw	$2,0($sp)
	sltu	$2,$2,8232
	bne	$2,$0,.L143
	nop

	lw	$2,0($sp)
	addiu	$2,$2,-8234
	li	$3,47062			# 0xb7d6
	sltu	$2,$2,$3
	bne	$2,$0,.L143
	nop

	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x2000
	addu	$2,$3,$2
	sltu	$2,$2,8185
	beq	$2,$0,.L144
	nop

.L143:
	li	$2,1			# 0x1
	b	.L142
	nop

.L144:
	lw	$3,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x4
	addu	$2,$3,$2
	move	$3,$2
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x4
	sltu	$2,$3,$2
	beq	$2,$0,.L145
	nop

	lw	$2,0($sp)
	andi	$2,$2,0xfffe
	li	$3,65534			# 0xfffe
	bne	$2,$3,.L146
	nop

.L145:
	move	$2,$0
	b	.L142
	nop

.L146:
	li	$2,1			# 0x1
.L142:
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
	bne	$2,$0,.L149
	nop

	lw	$2,0($sp)
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,6
	beq	$2,$0,.L150
	nop

.L149:
	li	$2,1			# 0x1
	b	.L151
	nop

.L150:
	move	$2,$0
.L151:
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
	bc1f	.L158
	nop

	ldc1	$f0,0($sp)
	b	.L159
	nop

.L158:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L160
	nop

	ldc1	$f0,8($sp)
	b	.L159
	nop

.L160:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f0,$f1
	nop
	bc1f	.L165
	nop

	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	sub.d	$f0,$f1,$f0
	b	.L159
	nop

.L165:
	dmtc1	$0,$f0
.L159:
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
	bc1f	.L168
	nop

	lwc1	$f0,0($sp)
	b	.L169
	nop

.L168:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L170
	nop

	lwc1	$f0,4($sp)
	b	.L169
	nop

.L170:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f0,$f1
	nop
	bc1f	.L175
	nop

	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	sub.s	$f0,$f1,$f0
	b	.L169
	nop

.L175:
	mtc1	$0,$f0
.L169:
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
	bc1f	.L178
	nop

	ldc1	$f0,8($sp)
	b	.L179
	nop

.L178:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L180
	nop

	ldc1	$f0,0($sp)
	b	.L179
	nop

.L180:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,8($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L181
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L182
	nop

	ldc1	$f0,8($sp)
	b	.L179
	nop

.L182:
	ldc1	$f0,0($sp)
	b	.L179
	nop

.L181:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L188
	nop

	ldc1	$f0,8($sp)
	b	.L179
	nop

.L188:
	ldc1	$f0,0($sp)
.L179:
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
	bc1f	.L191
	nop

	lwc1	$f0,4($sp)
	b	.L192
	nop

.L191:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L193
	nop

	lwc1	$f0,0($sp)
	b	.L192
	nop

.L193:
	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	lw	$3,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	beq	$2,$3,.L194
	nop

	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,.L195
	nop

	lwc1	$f0,4($sp)
	b	.L192
	nop

.L195:
	lwc1	$f0,0($sp)
	b	.L192
	nop

.L194:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f1,$f0
	nop
	bc1f	.L201
	nop

	lwc1	$f0,4($sp)
	b	.L192
	nop

.L201:
	lwc1	$f0,0($sp)
.L192:
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

	beq	$2,$0,.L218
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L206
	nop

.L218:
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	mflo	$25
	jalr	$25
	nop

	beq	$2,$0,.L219
	nop

	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L206
	nop

.L219:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,16($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L209
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L210
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L206
	nop

.L210:
	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L206
	nop

.L209:
	ld	$2,%call16(__lttf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	bgez	$2,.L220
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L206
	nop

.L220:
	ld	$3,0($sp)
	ld	$2,8($sp)
.L206:
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
	bc1f	.L223
	nop

	ldc1	$f0,8($sp)
	b	.L224
	nop

.L223:
	ldc1	$f1,8($sp)
	ldc1	$f0,8($sp)
	c.un.d	$f1,$f0
	nop
	bc1f	.L225
	nop

	ldc1	$f0,0($sp)
	b	.L224
	nop

.L225:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,8($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L226
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L227
	nop

	ldc1	$f0,0($sp)
	b	.L224
	nop

.L227:
	ldc1	$f0,8($sp)
	b	.L224
	nop

.L226:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L233
	nop

	ldc1	$f0,0($sp)
	b	.L224
	nop

.L233:
	ldc1	$f0,8($sp)
.L224:
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
	bc1f	.L236
	nop

	lwc1	$f0,4($sp)
	b	.L237
	nop

.L236:
	lwc1	$f1,4($sp)
	lwc1	$f0,4($sp)
	c.un.s	$f1,$f0
	nop
	bc1f	.L238
	nop

	lwc1	$f0,0($sp)
	b	.L237
	nop

.L238:
	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	lw	$3,4($sp)
	li	$4,-2147483648			# 0xffffffff80000000
	and	$3,$3,$4
	beq	$2,$3,.L239
	nop

	lw	$2,0($sp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$2,$2,$3
	beq	$2,$0,.L240
	nop

	lwc1	$f0,0($sp)
	b	.L237
	nop

.L240:
	lwc1	$f0,4($sp)
	b	.L237
	nop

.L239:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f1,$f0
	nop
	bc1f	.L246
	nop

	lwc1	$f0,0($sp)
	b	.L237
	nop

.L246:
	lwc1	$f0,4($sp)
.L237:
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

	beq	$2,$0,.L263
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L251
	nop

.L263:
	ld	$2,%call16(__unordtf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,24($sp)
	ldc1	$f12,16($sp)
	mflo	$25
	jalr	$25
	nop

	beq	$2,$0,.L264
	nop

	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L251
	nop

.L264:
	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,16($sp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L254
	nop

	ld	$2,0($sp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beq	$2,$0,.L255
	nop

	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L251
	nop

.L255:
	ld	$3,16($sp)
	ld	$2,24($sp)
	b	.L251
	nop

.L254:
	ld	$2,%call16(__lttf2)($28)
	mtlo	$2
	ldc1	$f15,24($sp)
	ldc1	$f14,16($sp)
	ldc1	$f13,8($sp)
	ldc1	$f12,0($sp)
	mflo	$25
	jalr	$25
	nop

	bgez	$2,.L265
	nop

	ld	$3,0($sp)
	ld	$2,8($sp)
	b	.L251
	nop

.L265:
	ld	$3,16($sp)
	ld	$2,24($sp)
.L251:
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
	b	.L268
	nop

.L269:
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
.L268:
	lw	$2,8($sp)
	bne	$2,$0,.L269
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
	ld	$2,8($sp)
	bne	$2,$0,.L278
	nop

	ld	$2,0($sp)
	sd	$0,8($2)
	ld	$2,0($sp)
	ld	$3,8($2)
	ld	$2,0($sp)
	sd	$3,0($2)
	b	.L277
	nop

.L278:
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
	beq	$2,$0,.L277
	nop

	ld	$2,0($sp)
	ld	$2,0($2)
	ld	$3,0($sp)
	sd	$3,8($2)
.L277:
	daddiu	$sp,$sp,32
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,0($sp)
	ld	$2,0($2)
	beq	$2,$0,.L282
	nop

	ld	$2,0($sp)
	ld	$2,0($2)
	ld	$3,0($sp)
	ld	$3,8($3)
	sd	$3,8($2)
.L282:
	ld	$2,0($sp)
	ld	$2,8($2)
	beq	$2,$0,.L284
	nop

	ld	$2,0($sp)
	ld	$2,8($2)
	ld	$3,0($sp)
	ld	$3,0($3)
	sd	$3,0($2)
.L284:
	nop
	daddiu	$sp,$sp,32
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
	move	$2,$16
	daddiu	$2,$16,-1
	sd	$2,8($sp)
	ld	$2,40($sp)
	sd	$2,16($sp)
	ld	$2,48($sp)
	ld	$2,0($2)
	sd	$2,24($sp)
	sd	$0,0($sp)
	b	.L287
	nop

.L290:
	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	ld	$3,64($sp)
	mtlo	$3
	move	$5,$2
	ld	$4,32($sp)
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L288
	nop

	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	b	.L289
	nop

.L288:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L287:
	ld	$3,0($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L290
	nop

	ld	$2,24($sp)
	daddiu	$3,$2,1
	ld	$2,48($sp)
	sd	$3,0($2)
	ld	$2,24($sp)
	dmult	$16,$2
	ld	$2,16($sp)
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

.L289:
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
	move	$2,$16
	daddiu	$2,$16,-1
	sd	$2,8($sp)
	ld	$2,40($sp)
	sd	$2,16($sp)
	ld	$2,48($sp)
	ld	$2,0($2)
	sd	$2,24($sp)
	sd	$0,0($sp)
	b	.L293
	nop

.L296:
	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	ld	$3,64($sp)
	mtlo	$3
	move	$5,$2
	ld	$4,32($sp)
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L294
	nop

	ld	$2,0($sp)
	dmult	$16,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	b	.L295
	nop

.L294:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L293:
	ld	$3,0($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L296
	nop

	move	$2,$0
.L295:
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
	b	.L302
	nop

.L303:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L302:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L303
	nop

	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L304
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L306
	nop

	li	$2,1			# 0x1
	sw	$2,4($sp)
.L304:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L306
	nop

.L307:
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
.L306:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L307
	nop

	lw	$2,4($sp)
	bne	$2,$0,.L308
	nop

	lw	$2,0($sp)
	subu	$2,$0,$2
	b	.L309
	nop

.L308:
	lw	$2,0($sp)
.L309:
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
	b	.L313
	nop

.L314:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L313:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L314
	nop

	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L315
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L317
	nop

	li	$2,1			# 0x1
	sw	$2,8($sp)
.L315:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L317
	nop

.L318:
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
.L317:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L318
	nop

	lw	$2,8($sp)
	bne	$2,$0,.L319
	nop

	ld	$2,0($sp)
	dsubu	$2,$0,$2
	b	.L321
	nop

.L319:
	ld	$2,0($sp)
.L321:
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
	b	.L324
	nop

.L325:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L324:
	ld	$2,16($sp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L325
	nop

	ld	$2,16($sp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L326
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L328
	nop

	li	$2,1			# 0x1
	sw	$2,8($sp)
.L326:
	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
	b	.L328
	nop

.L329:
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
.L328:
	ld	$2,16($sp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L329
	nop

	lw	$2,8($sp)
	bne	$2,$0,.L330
	nop

	ld	$2,0($sp)
	dsubu	$2,$0,$2
	b	.L332
	nop

.L330:
	ld	$2,0($sp)
.L332:
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
	b	.L335
	nop

.L340:
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
	bgez	$2,.L336
	nop

	ld	$2,32($sp)
	dsrl	$2,$2,1
	sd	$2,32($sp)
	b	.L335
	nop

.L336:
	lw	$2,8($sp)
	blez	$2,.L338
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
	b	.L335
	nop

.L338:
	ld	$2,0($sp)
	b	.L339
	nop

.L335:
	ld	$2,32($sp)
	bne	$2,$0,.L340
	nop

	move	$2,$0
.L339:
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
	ld	$2,40($sp)
	sd	$2,0($sp)
	ld	$2,48($sp)
	sw	$2,8($sp)
	b	.L343
	nop

.L347:
	lw	$2,8($sp)
	sra	$2,$2,1
	move	$3,$2
	ld	$2,56($sp)
	dmult	$3,$2
	ld	$2,0($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,16($sp)
	ld	$2,64($sp)
	mtlo	$2
	ld	$6,72($sp)
	ld	$5,16($sp)
	ld	$4,32($sp)
	mflo	$25
	jalr	$25
	nop

	sw	$2,24($sp)
	lw	$2,24($sp)
	bne	$2,$0,.L344
	nop

	ld	$2,16($sp)
	b	.L345
	nop

.L344:
	lw	$2,24($sp)
	blez	$2,.L346
	nop

	ld	$3,16($sp)
	ld	$2,56($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	lw	$2,8($sp)
	addiu	$2,$2,-1
	sw	$2,8($sp)
.L346:
	lw	$2,8($sp)
	sra	$2,$2,1
	sw	$2,8($sp)
.L343:
	lw	$2,8($sp)
	bne	$2,$0,.L347
	nop

	move	$2,$0
.L345:
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
	b	.L371
	nop

.L373:
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
.L371:
	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L372
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	bne	$2,$3,.L373
	nop

.L372:
	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L374
	nop

	ld	$2,0($sp)
	b	.L376
	nop

.L374:
	move	$2,$0
.L376:
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
	b	.L379
	nop

.L381:
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L379:
	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	bne	$2,$3,.L380
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L380
	nop

	ld	$2,8($sp)
	lw	$2,0($2)
	bne	$2,$0,.L381
	nop

.L380:
	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bne	$2,$0,.L382
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L383
	nop

.L382:
	li	$2,-1			# 0xffffffffffffffff
.L383:
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
	nop
.L387:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($2)
	bne	$2,$0,.L387
	nop

	ld	$2,0($sp)
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
	b	.L391
	nop

.L392:
	ld	$2,16($sp)
	daddiu	$2,$2,4
	sd	$2,16($sp)
.L391:
	ld	$2,16($sp)
	lw	$2,0($2)
	bne	$2,$0,.L392
	nop

	ld	$3,16($sp)
	ld	$2,0($sp)
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
	b	.L396
	nop

.L398:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L396:
	ld	$2,16($sp)
	beq	$2,$0,.L397
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	bne	$2,$3,.L397
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	beq	$2,$0,.L397
	nop

	ld	$2,8($sp)
	lw	$2,0($2)
	bne	$2,$0,.L398
	nop

.L397:
	ld	$2,16($sp)
	beq	$2,$0,.L399
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bne	$2,$0,.L400
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L402
	nop

.L400:
	li	$2,-1			# 0xffffffffffffffff
	b	.L402
	nop

.L399:
	move	$2,$0
.L402:
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
	b	.L406
	nop

.L408:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
.L406:
	ld	$2,16($sp)
	beq	$2,$0,.L407
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	lw	$2,8($sp)
	bne	$2,$3,.L408
	nop

.L407:
	ld	$2,16($sp)
	beq	$2,$0,.L409
	nop

	ld	$2,0($sp)
	b	.L411
	nop

.L409:
	move	$2,$0
.L411:
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
	b	.L414
	nop

.L416:
	ld	$2,16($sp)
	daddiu	$2,$2,-1
	sd	$2,16($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,4
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$2,$2,4
	sd	$2,8($sp)
.L414:
	ld	$2,16($sp)
	beq	$2,$0,.L415
	nop

	ld	$2,0($sp)
	lw	$2,0($2)
	ld	$3,8($sp)
	lw	$3,0($3)
	beq	$2,$3,.L416
	nop

.L415:
	ld	$2,16($sp)
	beq	$2,$0,.L417
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bne	$2,$0,.L418
	nop

	ld	$2,0($sp)
	lw	$3,0($2)
	ld	$2,8($sp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L420
	nop

.L418:
	li	$2,-1			# 0xffffffffffffffff
	b	.L420
	nop

.L417:
	move	$2,$0
.L420:
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
	b	.L424
	nop

.L425:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
.L424:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L425
	nop

	ld	$2,0($sp)
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
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	bne	$3,$2,.L429
	nop

	ld	$2,16($sp)
	b	.L430
	nop

.L429:
	ld	$3,16($sp)
	ld	$2,24($sp)
	dsubu	$3,$3,$2
	ld	$2,32($sp)
	dsll	$2,$2,2
	sltu	$2,$3,$2
	beq	$2,$0,.L435
	nop

	b	.L432
	nop

.L433:
	ld	$2,32($sp)
	dsll	$2,$2,2
	ld	$3,24($sp)
	daddu	$3,$3,$2
	ld	$2,32($sp)
	dsll	$2,$2,2
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
.L432:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L433
	nop

	b	.L434
	nop

.L436:
	ld	$3,24($sp)
	daddiu	$2,$3,4
	sd	$2,24($sp)
	ld	$2,16($sp)
	daddiu	$4,$2,4
	sd	$4,16($sp)
	lw	$3,0($3)
	sw	$3,0($2)
.L435:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L436
	nop

.L434:
	ld	$2,0($sp)
.L430:
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
	b	.L439
	nop

.L440:
	ld	$2,16($sp)
	daddiu	$3,$2,4
	sd	$3,16($sp)
	lw	$3,24($sp)
	sw	$3,0($2)
.L439:
	ld	$2,32($sp)
	daddiu	$3,$2,-1
	sd	$3,32($sp)
	bne	$2,$0,.L440
	nop

	ld	$2,0($sp)
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
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$2,24($sp)
	sd	$2,8($sp)
	ld	$3,0($sp)
	ld	$2,8($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L444
	nop

	ld	$3,0($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
	ld	$3,8($sp)
	ld	$2,32($sp)
	daddu	$2,$3,$2
	sd	$2,8($sp)
	b	.L445
	nop

.L446:
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
.L445:
	ld	$2,32($sp)
	bne	$2,$0,.L446
	nop

	b	.L450
	nop

.L444:
	ld	$3,0($sp)
	ld	$2,8($sp)
	beq	$3,$2,.L450
	nop

	b	.L448
	nop

.L449:
	ld	$3,0($sp)
	daddiu	$2,$3,1
	sd	$2,0($sp)
	ld	$2,8($sp)
	daddiu	$4,$2,1
	sd	$4,8($sp)
	lb	$3,0($3)
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L448:
	ld	$2,32($sp)
	bne	$2,$0,.L449
	nop

.L450:
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
	lw	$2,8($sp)
	li	$4,64			# 0x40
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
	lw	$2,8($sp)
	li	$4,64			# 0x40
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
	lhu	$3,16($sp)
	ld	$2,0($sp)
	dsll	$2,$2,8
	and	$2,$3,$2
	dsrl	$2,$2,8
	sll	$2,$2,0
	andi	$3,$2,0xffff
	lhu	$2,6($sp)
	lhu	$4,16($sp)
	and	$2,$4,$2
	andi	$2,$2,0xffff
	sll	$2,$2,8
	andi	$2,$2,0xffff
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
	lwu	$3,16($sp)
	ld	$2,0($sp)
	dsll	$2,$2,24
	and	$2,$3,$2
	dsrl	$2,$2,24
	sll	$2,$2,0
	move	$3,$2
	lwu	$4,16($sp)
	ld	$2,0($sp)
	dsll	$2,$2,16
	and	$2,$4,$2
	dsrl	$2,$2,8
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
	lw	$2,4($sp)
	lw	$4,16($sp)
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
	b	.L492
	nop

.L495:
	lw	$3,16($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L493
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	b	.L494
	nop

.L493:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L492:
	lw	$2,0($sp)
	sltu	$2,$2,32
	bne	$2,$0,.L495
	nop

	move	$2,$0
.L494:
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
	bne	$4,$0,.L498
	nop

	move	$2,$0
	b	.L499
	nop

.L498:
	move	$2,$4
	li	$16,1			# 0x1
	b	.L500
	nop

.L501:
	sra	$2,$2,1
	addiu	$3,$16,1
	move	$16,$3
.L500:
	andi	$3,$2,0x1
	beq	$3,$0,.L501
	nop

	move	$2,$16
.L499:
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
	bc1t	.L504
	nop

	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$f0,$f1
	nop
	bc1f	.L509
	nop

.L504:
	li	$2,1			# 0x1
	b	.L507
	nop

.L509:
	move	$2,$0
.L507:
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
	bc1t	.L512
	nop

	ldc1	$f1,0($sp)
	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$f0,$f1
	nop
	bc1f	.L517
	nop

.L512:
	li	$2,1			# 0x1
	b	.L515
	nop

.L517:
	move	$2,$0
.L515:
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

	bltz	$2,.L520
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

	blez	$2,.L525
	nop

.L520:
	li	$2,1			# 0x1
	b	.L523
	nop

.L525:
	move	$2,$0
.L523:
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
	bc1t	.L530
	nop

	lwc1	$f0,16($sp)
	add.s	$f0,$f0,$f0
	lwc1	$f1,16($sp)
	c.eq.s	$f1,$f0
	nop
	bc1t	.L530
	nop

	lw	$2,20($sp)
	bgez	$2,.L531
	nop

	ld	$2,%got_page(.LC6)($4)
	lwc1	$f0,%got_ofst(.LC6)($2)
	b	.L532
	nop

.L531:
	ld	$2,%got_page(.LC7)($4)
	lwc1	$f0,%got_ofst(.LC7)($2)
.L532:
	swc1	$f0,0($sp)
.L535:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L533
	nop

	lwc1	$f1,16($sp)
	lwc1	$f0,0($sp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,16($sp)
.L533:
	lw	$2,20($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	beq	$2,$0,.L537
	nop

	lwc1	$f0,0($sp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,0($sp)
	b	.L535
	nop

.L537:
	nop
.L530:
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
	bc1t	.L540
	nop

	ldc1	$f0,16($sp)
	add.d	$f0,$f0,$f0
	ldc1	$f1,16($sp)
	c.eq.d	$f1,$f0
	nop
	bc1t	.L540
	nop

	lw	$2,24($sp)
	bgez	$2,.L541
	nop

	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	b	.L542
	nop

.L541:
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
.L542:
	sdc1	$f0,0($sp)
.L545:
	lw	$2,24($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L543
	nop

	ldc1	$f1,16($sp)
	ldc1	$f0,0($sp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,16($sp)
.L543:
	lw	$2,24($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	beq	$2,$0,.L547
	nop

	ldc1	$f0,0($sp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,0($sp)
	b	.L545
	nop

.L547:
	nop
.L540:
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

	bne	$2,$0,.L550
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

	beq	$2,$0,.L550
	nop

	lw	$2,32($sp)
	bgez	$2,.L552
	nop

	ld	$2,%got_page(.LC10)($28)
	ld	$3,%got_ofst(.LC10+8)($2)
	ld	$2,%got_ofst(.LC10)($2)
	b	.L553
	nop

.L552:
	ld	$2,%got_page(.LC11)($28)
	ld	$3,%got_ofst(.LC11+8)($2)
	ld	$2,%got_ofst(.LC11)($2)
.L553:
	sd	$3,8($sp)
	sd	$2,0($sp)
.L556:
	lw	$2,32($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L554
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
.L554:
	lw	$2,32($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,32($sp)
	lw	$2,32($sp)
	beq	$2,$0,.L559
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
	b	.L556
	nop

.L559:
	nop
.L550:
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
	ld	$2,24($sp)
	sd	$2,0($sp)
	ld	$2,16($sp)
	sd	$2,8($sp)
	b	.L562
	nop

.L563:
	ld	$2,0($sp)
	daddiu	$3,$2,1
	sd	$3,0($sp)
	lb	$4,0($2)
	ld	$2,8($sp)
	daddiu	$3,$2,1
	sd	$3,8($sp)
	lb	$3,0($2)
	xor	$3,$4,$3
	dsll	$3,$3,56
	dsra	$3,$3,56
	sb	$3,0($2)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L562:
	ld	$2,32($sp)
	bne	$2,$0,.L563
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
	b	.L567
	nop

.L569:
	ld	$2,24($sp)
	daddiu	$2,$2,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
	ld	$2,32($sp)
	daddiu	$2,$2,-1
	sd	$2,32($sp)
.L567:
	ld	$2,32($sp)
	beq	$2,$0,.L568
	nop

	ld	$2,24($sp)
	lb	$3,0($2)
	ld	$2,0($sp)
	sb	$3,0($2)
	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L569
	nop

.L568:
	ld	$2,32($sp)
	bne	$2,$0,.L570
	nop

	ld	$2,0($sp)
	sb	$0,0($2)
.L570:
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
	b	.L574
	nop

.L579:
	nop
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L574:
	ld	$3,0($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L575
	nop

	ld	$3,16($sp)
	ld	$2,0($sp)
	daddu	$2,$3,$2
	lb	$2,0($2)
	bne	$2,$0,.L579
	nop

.L575:
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
	b	.L582
	nop

.L586:
	ld	$2,24($sp)
	sd	$2,0($sp)
	b	.L583
	nop

.L585:
	ld	$2,0($sp)
	daddiu	$3,$2,1
	sd	$3,0($sp)
	lb	$2,0($2)
	ld	$3,16($sp)
	lb	$3,0($3)
	bne	$2,$3,.L583
	nop

	ld	$2,16($sp)
	b	.L584
	nop

.L583:
	ld	$2,0($sp)
	lb	$2,0($2)
	bne	$2,$0,.L585
	nop

	ld	$2,16($sp)
	daddiu	$2,$2,1
	sd	$2,16($sp)
.L582:
	ld	$2,16($sp)
	lb	$2,0($2)
	bne	$2,$0,.L586
	nop

	move	$2,$0
.L584:
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
.L590:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,16($sp)
	bne	$3,$4,.L589
	nop

	sd	$2,0($sp)
.L589:
	move	$3,$2
	daddiu	$2,$3,1
	lb	$3,0($3)
	bne	$3,$0,.L590
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
	ld	$2,16($sp)
	sd	$2,0($sp)
	ld	$4,24($sp)
	ld	$2,%got_disp(strlen)($28)
	mtlo	$2
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	nop

	sd	$2,8($sp)
	ld	$2,8($sp)
	bne	$2,$0,.L596
	nop

	ld	$2,16($sp)
	b	.L595
	nop

.L598:
	ld	$6,8($sp)
	ld	$5,24($sp)
	ld	$4,0($sp)
	ld	$2,%got_disp(strncmp)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L597
	nop

	ld	$2,0($sp)
	b	.L595
	nop

.L597:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L596:
	ld	$2,24($sp)
	lb	$2,0($2)
	move	$5,$2
	ld	$4,0($sp)
	ld	$2,%got_disp(strchr)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	sd	$2,0($sp)
	ld	$2,0($sp)
	bne	$2,$0,.L598
	nop

	move	$2,$0
.L595:
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
	bc1f	.L601
	nop

	ldc1	$f0,8($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f1,$f0
	nop
	bc1t	.L603
	nop

.L601:
	ldc1	$f0,0($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f1,$f0
	nop
	bc1f	.L604
	nop

	ldc1	$f0,8($sp)
	dmtc1	$0,$f1
	nop
	c.lt.d	$f0,$f1
	nop
	bc1f	.L604
	nop

.L603:
	ld	$3,0($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	b	.L607
	nop

.L604:
	ld	$2,0($sp)
.L607:
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
	sd	$2,8($sp)
	ld	$2,40($sp)
	bne	$2,$0,.L612
	nop

	ld	$2,16($sp)
	b	.L613
	nop

.L612:
	ld	$3,24($sp)
	ld	$2,40($sp)
	sltu	$2,$3,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,.L614
	nop

	move	$2,$0
	b	.L613
	nop

.L614:
	ld	$2,16($sp)
	sd	$2,0($sp)
	b	.L615
	nop

.L617:
	ld	$2,0($sp)
	lb	$2,0($2)
	ld	$3,32($sp)
	lb	$3,0($3)
	bne	$2,$3,.L616
	nop

	ld	$2,0($sp)
	daddiu	$3,$2,1
	ld	$2,32($sp)
	daddiu	$4,$2,1
	ld	$2,40($sp)
	daddiu	$2,$2,-1
	move	$6,$2
	move	$5,$4
	move	$4,$3
	ld	$2,%got_disp(memcmp)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	bne	$2,$0,.L616
	nop

	ld	$2,0($sp)
	b	.L613
	nop

.L616:
	ld	$2,0($sp)
	daddiu	$2,$2,1
	sd	$2,0($sp)
.L615:
	ld	$3,0($sp)
	ld	$2,8($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L617
	nop

	move	$2,$0
.L613:
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
	bc1f	.L623
	nop

	ld	$3,16($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	sd	$2,16($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
.L623:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$f0,$f1
	nop
	bc1f	.L638
	nop

	b	.L627
	nop

.L628:
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
	div.d	$f0,$f1,$f0
	sdc1	$f0,16($sp)
.L627:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$f0,$f1
	nop
	bc1t	.L628
	nop

	b	.L629
	nop

.L638:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$f1,$f0
	nop
	bc1f	.L629
	nop

	ldc1	$f0,16($sp)
	dmtc1	$0,$f1
	nop
	c.eq.d	$f0,$f1
	nop
	bc1t	.L629
	nop

	b	.L631
	nop

.L632:
	lw	$2,4($sp)
	addiu	$2,$2,-1
	sw	$2,4($sp)
	ldc1	$f0,16($sp)
	add.d	$f0,$f0,$f0
	sdc1	$f0,16($sp)
.L631:
	ldc1	$f1,16($sp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$f1,$f0
	nop
	bc1t	.L632
	nop

.L629:
	ld	$2,24($sp)
	lw	$3,4($sp)
	sw	$3,0($2)
	lw	$2,0($sp)
	beq	$2,$0,.L633
	nop

	ld	$3,16($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$3,$2
	sd	$2,16($sp)
.L633:
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
	b	.L641
	nop

.L643:
	ld	$2,8($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L642
	nop

	ld	$3,0($sp)
	ld	$2,24($sp)
	daddu	$2,$3,$2
	sd	$2,0($sp)
.L642:
	ld	$2,24($sp)
	dsll	$2,$2,1
	sd	$2,24($sp)
	ld	$2,8($sp)
	dsrl	$2,$2,1
	sd	$2,8($sp)
.L641:
	ld	$2,8($sp)
	bne	$2,$0,.L643
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
	b	.L647
	nop

.L649:
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,0($sp)
	sll	$2,$2,1
	sw	$2,0($sp)
.L647:
	lw	$3,20($sp)
	lw	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L650
	nop

	lw	$2,0($sp)
	beq	$2,$0,.L650
	nop

	lw	$2,20($sp)
	bgez	$2,.L649
	nop

	b	.L650
	nop

.L652:
	lw	$3,16($sp)
	lw	$2,20($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L651
	nop

	lw	$3,16($sp)
	lw	$2,20($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	or	$2,$3,$2
	sw	$2,4($sp)
.L651:
	lw	$2,0($sp)
	srl	$2,$2,1
	sw	$2,0($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L650:
	lw	$2,0($sp)
	bne	$2,$0,.L652
	nop

	ld	$2,24($sp)
	beq	$2,$0,.L653
	nop

	lw	$2,16($sp)
	b	.L654
	nop

.L653:
	lw	$2,4($sp)
.L654:
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
	bgez	$2,.L657
	nop

	lbu	$2,16($sp)
	nor	$2,$0,$2
	sb	$2,16($sp)
.L657:
	lb	$2,16($sp)
	bne	$2,$0,.L658
	nop

	li	$2,7			# 0x7
	b	.L659
	nop

.L658:
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
.L659:
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
	bgez	$2,.L662
	nop

	ld	$2,16($sp)
	nor	$2,$0,$2
	sd	$2,16($sp)
.L662:
	ld	$2,16($sp)
	bne	$2,$0,.L663
	nop

	li	$2,63			# 0x3f
	b	.L664
	nop

.L663:
	ld	$2,16($sp)
	ld	$3,%call16(__clzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	sw	$2,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-1
.L664:
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
	b	.L667
	nop

.L669:
	lw	$2,16($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L668
	nop

	lw	$3,0($sp)
	lw	$2,20($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L668:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
.L667:
	lw	$2,16($sp)
	bne	$2,$0,.L669
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
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$4,32($sp)
	sd	$5,40($sp)
	move	$2,$6
	sll	$2,$6,0
	sw	$2,48($sp)
	lw	$2,48($sp)
	srl	$2,$2,3
	sw	$2,8($sp)
	lw	$2,48($sp)
	li	$3,-8			# 0xfffffffffffffff8
	and	$2,$2,$3
	sw	$2,4($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	ld	$2,40($sp)
	sd	$2,24($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L673
	nop

	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$2,$3,$2
	ld	$3,16($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L680
	nop

.L673:
	sw	$0,0($sp)
	b	.L675
	nop

.L676:
	lwu	$2,0($sp)
	dsll	$2,$2,3
	ld	$3,40($sp)
	daddu	$3,$3,$2
	lwu	$2,0($sp)
	dsll	$2,$2,3
	ld	$4,32($sp)
	daddu	$2,$4,$2
	ld	$3,0($3)
	sd	$3,0($2)
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L675:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L676
	nop

	b	.L677
	nop

.L678:
	lwu	$2,4($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,4($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L677:
	lw	$3,48($sp)
	lw	$2,4($sp)
	sltu	$2,$2,$3
	bne	$2,$0,.L678
	nop

	b	.L679
	nop

.L681:
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L680:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bne	$2,$0,.L681
	nop

	nop
.L679:
	nop
	daddiu	$sp,$sp,64
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
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$4,32($sp)
	sd	$5,40($sp)
	move	$2,$6
	sll	$2,$6,0
	sw	$2,48($sp)
	lw	$2,48($sp)
	srl	$2,$2,1
	sw	$2,4($sp)
	ld	$2,32($sp)
	sd	$2,8($sp)
	ld	$2,40($sp)
	sd	$2,16($sp)
	ld	$3,8($sp)
	ld	$2,16($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L684
	nop

	lwu	$2,48($sp)
	ld	$3,16($sp)
	daddu	$2,$3,$2
	ld	$3,8($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L690
	nop

.L684:
	sw	$0,0($sp)
	b	.L686
	nop

.L687:
	lwu	$2,0($sp)
	dsll	$2,$2,1
	ld	$3,40($sp)
	daddu	$3,$3,$2
	lwu	$2,0($sp)
	dsll	$2,$2,1
	ld	$4,32($sp)
	daddu	$2,$4,$2
	lh	$3,0($3)
	sh	$3,0($2)
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L686:
	lw	$3,0($sp)
	lw	$2,4($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L687
	nop

	lw	$2,48($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L689
	nop

	lw	$2,48($sp)
	addiu	$2,$2,-1
	dsll	$2,$2,32
	dsrl	$2,$2,32
	ld	$3,16($sp)
	daddu	$3,$3,$2
	lw	$2,48($sp)
	addiu	$2,$2,-1
	dsll	$2,$2,32
	dsrl	$2,$2,32
	ld	$4,8($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	b	.L689
	nop

.L691:
	lwu	$2,48($sp)
	ld	$3,16($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,8($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L690:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bne	$2,$0,.L691
	nop

	nop
.L689:
	nop
	daddiu	$sp,$sp,64
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
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$4,32($sp)
	sd	$5,40($sp)
	move	$2,$6
	sll	$2,$6,0
	sw	$2,48($sp)
	lw	$2,48($sp)
	srl	$2,$2,2
	sw	$2,8($sp)
	lw	$2,48($sp)
	li	$3,-4			# 0xfffffffffffffffc
	and	$2,$2,$3
	sw	$2,4($sp)
	ld	$2,32($sp)
	sd	$2,16($sp)
	ld	$2,40($sp)
	sd	$2,24($sp)
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L694
	nop

	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$2,$3,$2
	ld	$3,16($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L701
	nop

.L694:
	sw	$0,0($sp)
	b	.L696
	nop

.L697:
	lwu	$2,0($sp)
	dsll	$2,$2,2
	ld	$3,40($sp)
	daddu	$3,$3,$2
	lwu	$2,0($sp)
	dsll	$2,$2,2
	ld	$4,32($sp)
	daddu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L696:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L697
	nop

	b	.L698
	nop

.L699:
	lwu	$2,4($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,4($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L698:
	lw	$3,48($sp)
	lw	$2,4($sp)
	sltu	$2,$2,$3
	bne	$2,$0,.L699
	nop

	b	.L700
	nop

.L702:
	lwu	$2,48($sp)
	ld	$3,24($sp)
	daddu	$3,$3,$2
	lwu	$2,48($sp)
	ld	$4,16($sp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L701:
	lw	$2,48($sp)
	addiu	$3,$2,-1
	sw	$3,48($sp)
	bne	$2,$0,.L702
	nop

	nop
.L700:
	nop
	daddiu	$sp,$sp,64
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
	bltz	$2,.L715
	nop

	ld	$2,0($sp)
	dmtc1	$2,$f0
	nop
	cvt.d.l	$f0,$f0
	b	.L716
	nop

.L715:
	ld	$2,0($sp)
	andi	$2,$2,0x1
	ld	$3,0($sp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	nop
	cvt.d.l	$f0,$f0
	add.d	$f0,$f0,$f0
.L716:
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
	bltz	$2,.L720
	nop

	ld	$2,0($sp)
	dmtc1	$2,$f0
	nop
	cvt.s.l	$f0,$f0
	b	.L721
	nop

.L720:
	ld	$2,0($sp)
	andi	$2,$2,0x1
	ld	$3,0($sp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	nop
	cvt.s.l	$f0,$f0
	add.s	$f0,$f0,$f0
.L721:
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
	b	.L727
	nop

.L730:
	lhu	$2,16($sp)
	li	$4,15			# 0xf
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sra	$2,$2,$3
	andi	$2,$2,0x1
	bne	$2,$0,.L732
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L727:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L730
	nop

	b	.L729
	nop

.L732:
	nop
.L729:
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
	b	.L735
	nop

.L738:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bne	$2,$0,.L740
	nop

	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L735:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L738
	nop

	b	.L737
	nop

.L740:
	nop
.L737:
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
	bc1f	.L747
	nop

	lwc1	$f1,0($sp)
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	sub.s	$f0,$f1,$f0
	trunc.l.s $f0,$f0
	dmfc1	$3,$f0
	li	$2,32768			# 0x8000
	daddu	$2,$3,$2
	b	.L745
	nop

.L747:
	lwc1	$f0,0($sp)
	trunc.l.s $f0,$f0
	dmfc1	$2,$f0
.L745:
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
	b	.L750
	nop

.L752:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L751
	nop

	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L751:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L750:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L752
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
	b	.L756
	nop

.L758:
	lhu	$2,16($sp)
	move	$3,$2
	lw	$2,0($sp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L757
	nop

	lw	$2,4($sp)
	addiu	$2,$2,1
	sw	$2,4($sp)
.L757:
	lw	$2,0($sp)
	addiu	$2,$2,1
	sw	$2,0($sp)
.L756:
	lw	$2,0($sp)
	slt	$2,$2,16
	bne	$2,$0,.L758
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
	b	.L762
	nop

.L764:
	lw	$2,16($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L763
	nop

	lw	$3,0($sp)
	lw	$2,20($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L763:
	lw	$2,16($sp)
	srl	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
.L762:
	lw	$2,16($sp)
	bne	$2,$0,.L764
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
	bne	$2,$0,.L770
	nop

	move	$2,$0
	b	.L769
	nop

.L772:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L771
	nop

	lw	$3,0($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
.L771:
	lw	$2,16($sp)
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L770:
	lw	$2,20($sp)
	bne	$2,$0,.L772
	nop

	lw	$2,0($sp)
.L769:
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
	b	.L775
	nop

.L777:
	lw	$2,20($sp)
	sll	$2,$2,1
	sw	$2,20($sp)
	lw	$2,0($sp)
	sll	$2,$2,1
	sw	$2,0($sp)
.L775:
	lw	$3,20($sp)
	lw	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L778
	nop

	lw	$2,0($sp)
	beq	$2,$0,.L778
	nop

	lw	$2,20($sp)
	bgez	$2,.L777
	nop

	b	.L778
	nop

.L780:
	lw	$3,16($sp)
	lw	$2,20($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L779
	nop

	lw	$3,16($sp)
	lw	$2,20($sp)
	subu	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	or	$2,$3,$2
	sw	$2,4($sp)
.L779:
	lw	$2,0($sp)
	srl	$2,$2,1
	sw	$2,0($sp)
	lw	$2,20($sp)
	srl	$2,$2,1
	sw	$2,20($sp)
.L778:
	lw	$2,0($sp)
	bne	$2,$0,.L780
	nop

	lw	$2,24($sp)
	beq	$2,$0,.L781
	nop

	lw	$2,16($sp)
	b	.L782
	nop

.L781:
	lw	$2,4($sp)
.L782:
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
	bc1f	.L792
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L787
	nop

.L792:
	lwc1	$f1,0($sp)
	lwc1	$f0,4($sp)
	c.lt.s	$f0,$f1
	nop
	bc1f	.L793
	nop

	li	$2,1			# 0x1
	b	.L787
	nop

.L793:
	move	$2,$0
.L787:
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
	bc1f	.L803
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L798
	nop

.L803:
	ldc1	$f1,0($sp)
	ldc1	$f0,8($sp)
	c.lt.d	$f0,$f1
	nop
	bc1f	.L804
	nop

	li	$2,1			# 0x1
	b	.L798
	nop

.L804:
	move	$2,$0
.L798:
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
	bgez	$2,.L813
	nop

	lw	$2,20($sp)
	subu	$2,$0,$2
	sw	$2,20($sp)
	li	$2,1			# 0x1
	sw	$2,4($sp)
.L813:
	sb	$0,0($sp)
	b	.L814
	nop

.L817:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L815
	nop

	lw	$3,8($sp)
	lw	$2,16($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
.L815:
	lw	$2,16($sp)
	sll	$2,$2,1
	sw	$2,16($sp)
	lw	$2,20($sp)
	sra	$2,$2,1
	sw	$2,20($sp)
	lb	$2,0($sp)
	andi	$2,$2,0x00ff
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,0($sp)
.L814:
	lw	$2,20($sp)
	beq	$2,$0,.L816
	nop

	lbu	$2,0($sp)
	sltu	$2,$2,32
	bne	$2,$0,.L817
	nop

.L816:
	lw	$2,4($sp)
	beq	$2,$0,.L818
	nop

	lw	$2,8($sp)
	subu	$2,$0,$2
	b	.L819
	nop

.L818:
	lw	$2,8($sp)
.L819:
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
	bgez	$2,.L823
	nop

	ld	$2,16($sp)
	dsubu	$2,$0,$2
	sd	$2,16($sp)
	lw	$2,0($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
.L823:
	ld	$2,24($sp)
	bgez	$2,.L824
	nop

	ld	$2,24($sp)
	dsubu	$2,$0,$2
	sd	$2,24($sp)
	lw	$2,0($sp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($sp)
.L824:
	lw	$2,20($sp)
	lw	$3,28($sp)
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
	beq	$2,$0,.L825
	nop

	ld	$2,8($sp)
	dsubu	$2,$0,$2
	sd	$2,8($sp)
.L825:
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
	bgez	$2,.L829
	nop

	ld	$2,16($sp)
	dsubu	$2,$0,$2
	sd	$2,16($sp)
	li	$2,1			# 0x1
	sw	$2,0($sp)
.L829:
	ld	$2,24($sp)
	bgez	$2,.L830
	nop

	ld	$2,24($sp)
	dsubu	$2,$0,$2
	sd	$2,24($sp)
.L830:
	lw	$2,20($sp)
	lw	$3,28($sp)
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
	beq	$2,$0,.L831
	nop

	ld	$2,8($sp)
	dsubu	$2,$0,$2
	sd	$2,8($sp)
.L831:
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
	b	.L835
	nop

.L837:
	lhu	$2,18($sp)
	sll	$2,$2,1
	sh	$2,18($sp)
	lhu	$2,0($sp)
	sll	$2,$2,1
	sh	$2,0($sp)
.L835:
	lhu	$3,18($sp)
	lhu	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L838
	nop

	lhu	$2,0($sp)
	beq	$2,$0,.L838
	nop

	lh	$2,18($sp)
	bgez	$2,.L837
	nop

	b	.L838
	nop

.L840:
	lhu	$3,16($sp)
	lhu	$2,18($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L839
	nop

	lhu	$3,16($sp)
	lhu	$2,18($sp)
	subu	$2,$3,$2
	sh	$2,16($sp)
	lhu	$3,2($sp)
	lhu	$2,0($sp)
	or	$2,$3,$2
	sh	$2,2($sp)
.L839:
	lhu	$2,0($sp)
	srl	$2,$2,1
	sh	$2,0($sp)
	lhu	$2,18($sp)
	srl	$2,$2,1
	sh	$2,18($sp)
.L838:
	lhu	$2,0($sp)
	bne	$2,$0,.L840
	nop

	lw	$2,20($sp)
	beq	$2,$0,.L841
	nop

	lhu	$2,16($sp)
	b	.L842
	nop

.L841:
	lhu	$2,2($sp)
.L842:
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
	b	.L845
	nop

.L847:
	ld	$2,24($sp)
	dsll	$2,$2,1
	sd	$2,24($sp)
	ld	$2,0($sp)
	dsll	$2,$2,1
	sd	$2,0($sp)
.L845:
	ld	$3,24($sp)
	ld	$2,16($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L848
	nop

	ld	$2,0($sp)
	beq	$2,$0,.L848
	nop

	ld	$3,24($sp)
	li	$2,1			# 0x1
	dsll	$2,$2,31
	and	$2,$3,$2
	beq	$2,$0,.L847
	nop

	b	.L848
	nop

.L850:
	ld	$3,16($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	bne	$2,$0,.L849
	nop

	ld	$3,16($sp)
	ld	$2,24($sp)
	dsubu	$2,$3,$2
	sd	$2,16($sp)
	ld	$3,8($sp)
	ld	$2,0($sp)
	or	$2,$3,$2
	sd	$2,8($sp)
.L849:
	ld	$2,0($sp)
	dsrl	$2,$2,1
	sd	$2,0($sp)
	ld	$2,24($sp)
	dsrl	$2,$2,1
	sd	$2,24($sp)
.L848:
	ld	$2,0($sp)
	bne	$2,$0,.L850
	nop

	lw	$2,32($sp)
	beq	$2,$0,.L851
	nop

	ld	$2,16($sp)
	b	.L852
	nop

.L851:
	ld	$2,8($sp)
.L852:
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
	beq	$2,$0,.L855
	nop

	sw	$0,20($sp)
	lw	$2,12($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sll	$2,$2,$3
	sw	$2,16($sp)
	b	.L856
	nop

.L855:
	lw	$2,40($sp)
	bne	$2,$0,.L857
	nop

	ld	$2,32($sp)
	b	.L859
	nop

.L857:
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
.L856:
	ld	$2,16($sp)
.L859:
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
	beq	$2,$0,.L862
	nop

	sd	$0,40($sp)
	ld	$2,24($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsll	$2,$2,$3
	sd	$2,32($sp)
	b	.L863
	nop

.L862:
	lw	$2,64($sp)
	bne	$2,$0,.L864
	nop

	ld	$3,48($sp)
	ld	$2,56($sp)
	b	.L866
	nop

.L864:
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
.L863:
	ld	$3,32($sp)
	ld	$2,40($sp)
.L866:
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	beq	$2,$0,.L869
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
	b	.L870
	nop

.L869:
	lw	$2,40($sp)
	bne	$2,$0,.L871
	nop

	ld	$2,32($sp)
	b	.L873
	nop

.L871:
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
.L870:
	ld	$2,16($sp)
.L873:
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
	beq	$2,$0,.L876
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
	b	.L877
	nop

.L876:
	lw	$2,64($sp)
	bne	$2,$0,.L878
	nop

	ld	$3,48($sp)
	ld	$2,56($sp)
	b	.L880
	nop

.L878:
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
.L877:
	ld	$3,32($sp)
	ld	$2,40($sp)
.L880:
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	dsrl	$4,$2,8
	li	$2,255			# 0xff
	dsll	$2,$2,24
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,8
	li	$2,255			# 0xff
	dsll	$2,$2,32
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,24
	li	$2,255			# 0xff
	dsll	$2,$2,40
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($sp)
	dsll	$4,$2,40
	li	$2,255			# 0xff
	dsll	$2,$2,48
	and	$2,$4,$2
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$4,0
	sw	$2,16($sp)
	lw	$2,16($sp)
	sw	$2,0($sp)
	lw	$2,0($sp)
	li	$3,65536			# 0x10000
	sltu	$2,$2,$3
	beq	$2,$0,.L889
	nop

	li	$2,16			# 0x10
	b	.L890
	nop

.L889:
	move	$2,$0
.L890:
	sw	$2,4($sp)
	li	$3,16			# 0x10
	lw	$2,4($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($sp)
	srl	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,4($sp)
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xff00
	bne	$2,$0,.L891
	nop

	li	$2,8			# 0x8
	b	.L892
	nop

.L891:
	move	$2,$0
.L892:
	sw	$2,4($sp)
	li	$3,8			# 0x8
	lw	$2,4($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($sp)
	srl	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xf0
	bne	$2,$0,.L893
	nop

	li	$2,4			# 0x4
	b	.L894
	nop

.L893:
	move	$2,$0
.L894:
	sw	$2,4($sp)
	li	$3,4			# 0x4
	lw	$2,4($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($sp)
	srl	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xc
	bne	$2,$0,.L895
	nop

	li	$2,2			# 0x2
	b	.L896
	nop

.L895:
	move	$2,$0
.L896:
	sw	$2,4($sp)
	li	$3,2			# 0x2
	lw	$2,4($sp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($sp)
	srl	$2,$2,$3
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0x2
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	move	$4,$2
	li	$3,2			# 0x2
	lw	$2,0($sp)
	subu	$2,$3,$2
	mult	$4,$2
	mflo	$2
	lw	$3,8($sp)
	addu	$2,$3,$2
	daddiu	$sp,$sp,32
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
	andi	$2,$2,0x00ff
	subu	$2,$0,$2
	sd	$2,0($sp)
	ld	$3,16($sp)
	ld	$2,0($sp)
	nor	$2,$0,$2
	and	$2,$3,$2
	move	$4,$2
	ld	$3,24($sp)
	ld	$2,0($sp)
	and	$2,$3,$2
	or	$2,$4,$2
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
	beq	$2,$0,.L903
	nop

	move	$2,$0
	b	.L908
	nop

.L903:
	lw	$3,0($sp)
	lw	$2,8($sp)
	slt	$2,$2,$3
	beq	$2,$0,.L905
	nop

	li	$2,2			# 0x2
	b	.L908
	nop

.L905:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L906
	nop

	move	$2,$0
	b	.L908
	nop

.L906:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L907
	nop

	li	$2,2			# 0x2
	b	.L908
	nop

.L907:
	li	$2,1			# 0x1
.L908:
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
	beq	$2,$0,.L914
	nop

	move	$2,$0
	b	.L919
	nop

.L914:
	ld	$3,0($sp)
	ld	$2,16($sp)
	slt	$2,$2,$3
	beq	$2,$0,.L916
	nop

	li	$2,2			# 0x2
	b	.L919
	nop

.L916:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L917
	nop

	move	$2,$0
	b	.L919
	nop

.L917:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L918
	nop

	li	$2,2			# 0x2
	b	.L919
	nop

.L918:
	li	$2,1			# 0x1
.L919:
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$2,$4
	sll	$2,$4,0
	sw	$2,16($sp)
	lw	$2,16($sp)
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xffff
	bne	$2,$0,.L922
	nop

	li	$2,16			# 0x10
	b	.L923
	nop

.L922:
	move	$2,$0
.L923:
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,4($sp)
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xff
	bne	$2,$0,.L924
	nop

	li	$2,8			# 0x8
	b	.L925
	nop

.L924:
	move	$2,$0
.L925:
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0xf
	bne	$2,$0,.L926
	nop

	li	$2,4			# 0x4
	b	.L927
	nop

.L926:
	move	$2,$0
.L927:
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	andi	$2,$2,0x3
	bne	$2,$0,.L928
	nop

	li	$2,2			# 0x2
	b	.L929
	nop

.L928:
	move	$2,$0
.L929:
	sw	$2,4($sp)
	lw	$3,0($sp)
	lw	$2,4($sp)
	srl	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	andi	$2,$2,0x3
	sw	$2,0($sp)
	lw	$2,4($sp)
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,0($sp)
	nor	$2,$0,$2
	andi	$2,$2,0x1
	move	$3,$2
	lw	$2,0($sp)
	srl	$2,$2,1
	li	$4,2			# 0x2
	subu	$2,$4,$2
	subu	$3,$0,$3
	and	$2,$3,$2
	lw	$3,8($sp)
	addu	$2,$3,$2
	daddiu	$sp,$sp,32
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
	andi	$2,$2,0x00ff
	subu	$2,$0,$2
	sd	$2,0($sp)
	ld	$3,16($sp)
	ld	$2,0($sp)
	and	$2,$3,$2
	move	$4,$2
	ld	$3,24($sp)
	ld	$2,0($sp)
	nor	$2,$0,$2
	and	$2,$3,$2
	or	$2,$4,$2
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
	bne	$2,$0,.L936
	nop

	ld	$2,0($sp)
	bne	$2,$0,.L937
	nop

	move	$2,$0
	b	.L939
	nop

.L937:
	ld	$2,0($sp)
	ld	$3,%call16(__ctzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	addiu	$2,$2,65
	b	.L939
	nop

.L936:
	ld	$2,8($sp)
	ld	$3,%call16(__ctzdi2)($28)
	mtlo	$3
	move	$4,$2
	mflo	$25
	jalr	$25
	nop

	addiu	$2,$2,1
.L939:
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
	beq	$2,$0,.L942
	nop

	sw	$0,16($sp)
	lw	$2,8($sp)
	lw	$4,40($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	srl	$2,$2,$3
	sw	$2,20($sp)
	b	.L943
	nop

.L942:
	lw	$2,40($sp)
	bne	$2,$0,.L944
	nop

	ld	$2,32($sp)
	b	.L946
	nop

.L944:
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
.L943:
	ld	$2,16($sp)
.L946:
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
	beq	$2,$0,.L949
	nop

	sd	$0,32($sp)
	ld	$2,16($sp)
	lw	$4,64($sp)
	lw	$3,0($sp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsrl	$2,$2,$3
	sd	$2,40($sp)
	b	.L950
	nop

.L949:
	lw	$2,64($sp)
	bne	$2,$0,.L951
	nop

	ld	$3,48($sp)
	ld	$2,56($sp)
	b	.L953
	nop

.L951:
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
.L950:
	ld	$3,32($sp)
	ld	$2,40($sp)
.L953:
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	sw	$2,20($sp)
	lw	$3,20($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	lw	$3,4($sp)
	and	$2,$3,$2
	sw	$2,20($sp)
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
	sw	$2,8($sp)
	lw	$3,20($sp)
	lw	$4,8($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	move	$4,$2
	lw	$2,0($sp)
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,20($sp)
	lw	$3,8($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	sw	$2,16($sp)
	lw	$3,20($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,20($sp)
	lw	$3,4($sp)
	and	$2,$3,$2
	sw	$2,20($sp)
	lw	$3,36($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	move	$3,$2
	lw	$4,32($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$3,20($sp)
	lw	$4,8($sp)
	lw	$2,4($sp)
	and	$2,$4,$2
	move	$4,$2
	lw	$2,0($sp)
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,20($sp)
	lw	$2,16($sp)
	move	$4,$2
	lw	$3,8($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	addu	$2,$4,$2
	sw	$2,16($sp)
	lw	$2,16($sp)
	move	$5,$2
	lw	$3,32($sp)
	lw	$2,0($sp)
	srl	$2,$3,$2
	move	$3,$2
	lw	$4,36($sp)
	lw	$2,0($sp)
	srl	$2,$4,$2
	mult	$3,$2
	mflo	$2
	addu	$2,$5,$2
	sw	$2,16($sp)
	ld	$2,16($sp)
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
	lw	$2,4($sp)
	lw	$3,12($sp)
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__muldsi3)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	sd	$2,16($sp)
	lw	$2,16($sp)
	move	$4,$2
	lw	$2,0($sp)
	move	$3,$2
	lw	$2,12($sp)
	mult	$3,$2
	mflo	$3
	lw	$2,4($sp)
	lw	$5,8($sp)
	mult	$2,$5
	mflo	$2
	addu	$2,$3,$2
	addu	$2,$4,$2
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
	.frame	$sp,64,$31		# vars= 64, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$4,48($sp)
	sd	$5,56($sp)
	li	$2,32			# 0x20
	sw	$2,0($sp)
	li	$3,-1			# 0xffffffffffffffff
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,8($sp)
	ld	$3,48($sp)
	ld	$2,8($sp)
	and	$3,$3,$2
	ld	$4,56($sp)
	ld	$2,8($sp)
	and	$2,$4,$2
	dmult	$3,$2
	mflo	$2
	sd	$2,40($sp)
	ld	$3,40($sp)
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,16($sp)
	ld	$3,40($sp)
	ld	$2,8($sp)
	and	$2,$3,$2
	sd	$2,40($sp)
	ld	$3,48($sp)
	lw	$2,0($sp)
	dsrl	$3,$3,$2
	ld	$4,56($sp)
	ld	$2,8($sp)
	and	$2,$4,$2
	dmult	$3,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,16($sp)
	ld	$3,40($sp)
	ld	$4,16($sp)
	ld	$2,8($sp)
	and	$4,$4,$2
	lw	$2,0($sp)
	dsll	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,40($sp)
	ld	$3,16($sp)
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,32($sp)
	ld	$3,40($sp)
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	sd	$2,16($sp)
	ld	$3,40($sp)
	ld	$2,8($sp)
	and	$2,$3,$2
	sd	$2,40($sp)
	ld	$3,56($sp)
	lw	$2,0($sp)
	dsrl	$3,$3,$2
	ld	$4,48($sp)
	ld	$2,8($sp)
	and	$2,$4,$2
	dmult	$3,$2
	ld	$2,16($sp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,16($sp)
	ld	$3,40($sp)
	ld	$4,16($sp)
	ld	$2,8($sp)
	and	$4,$4,$2
	lw	$2,0($sp)
	dsll	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,40($sp)
	ld	$2,32($sp)
	move	$4,$2
	ld	$3,16($sp)
	lw	$2,0($sp)
	dsrl	$2,$3,$2
	daddu	$2,$4,$2
	sd	$2,32($sp)
	ld	$2,32($sp)
	move	$5,$2
	ld	$3,48($sp)
	lw	$2,0($sp)
	dsrl	$3,$3,$2
	ld	$4,56($sp)
	lw	$2,0($sp)
	dsrl	$2,$4,$2
	dmult	$3,$2
	mflo	$2
	daddu	$2,$5,$2
	sd	$2,32($sp)
	ld	$3,32($sp)
	ld	$2,40($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
	daddiu	$sp,$sp,64
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
	ld	$2,8($sp)
	ld	$3,24($sp)
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__mulddi3)($28)
	mtlo	$2
	mflo	$25
	jalr	$25
	nop

	sd	$3,40($sp)
	sd	$2,32($sp)
	ld	$2,32($sp)
	move	$4,$2
	ld	$2,0($sp)
	move	$3,$2
	ld	$2,24($sp)
	dmult	$3,$2
	mflo	$2
	ld	$3,8($sp)
	ld	$5,16($sp)
	dmult	$3,$5
	mflo	$3
	daddu	$2,$2,$3
	daddu	$2,$4,$2
	sd	$2,32($sp)
	ld	$3,32($sp)
	ld	$2,40($sp)
	move	$4,$3
	move	$3,$2
	move	$2,$4
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	ld	$2,16($sp)
	sd	$2,8($sp)
	lw	$2,8($sp)
	move	$3,$2
	lw	$2,12($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,8
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,4
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
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
	ld	$2,16($sp)
	move	$3,$2
	ld	$2,24($sp)
	xor	$2,$3,$2
	sd	$2,32($sp)
	lw	$2,32($sp)
	move	$3,$2
	lw	$2,36($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,8
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,4
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
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
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,8
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,4
	lw	$3,0($sp)
	xor	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
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
	.frame	$sp,32,$31		# vars= 32, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$4,16($sp)
	ld	$2,16($sp)
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
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsrl	$3,$2,2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$3,$3,$2
	ld	$4,0($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,0($sp)
	ld	$2,0($sp)
	dsrl	$3,$2,4
	ld	$2,0($sp)
	daddu	$3,$3,$2
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sd	$2,0($sp)
	lw	$3,4($sp)
	ld	$2,0($sp)
	dsrl	$2,$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,16
	lw	$3,8($sp)
	addu	$2,$3,$2
	sw	$2,8($sp)
	lw	$2,8($sp)
	srl	$2,$2,8
	lw	$3,8($sp)
	addu	$2,$3,$2
	andi	$2,$2,0x7f
	daddiu	$sp,$sp,32
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
	srl	$2,$2,1
	move	$3,$2
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	and	$2,$3,$2
	lw	$3,0($sp)
	subu	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,2
	move	$3,$2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$2,$3,$2
	move	$3,$2
	lw	$4,0($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,4
	lw	$3,0($sp)
	addu	$2,$3,$2
	move	$3,$2
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,16
	lw	$3,0($sp)
	addu	$2,$3,$2
	sw	$2,0($sp)
	lw	$2,0($sp)
	srl	$2,$2,8
	lw	$3,0($sp)
	addu	$2,$3,$2
	andi	$2,$2,0x3f
	daddiu	$sp,$sp,32
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
	.frame	$sp,48,$31		# vars= 48, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$5,40($sp)
	sd	$4,32($sp)
	ld	$3,40($sp)
	ld	$2,32($sp)
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
	sd	$2,0($sp)
	sd	$3,8($sp)
	ld	$2,0($sp)
	dsll	$3,$2,62
	ld	$2,8($sp)
	dsrl	$2,$2,2
	or	$2,$3,$2
	ld	$3,0($sp)
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
	ld	$3,0($sp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$5,$3,$2
	ld	$3,8($sp)
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
	sd	$2,0($sp)
	sd	$3,8($sp)
	ld	$2,0($sp)
	dsll	$3,$2,60
	ld	$2,8($sp)
	dsrl	$2,$2,4
	or	$2,$3,$2
	ld	$3,0($sp)
	dsrl	$6,$3,4
	ld	$5,0($sp)
	ld	$7,8($sp)
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
	sd	$2,0($sp)
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sd	$2,8($sp)
	ld	$2,8($sp)
	ld	$3,0($sp)
	dsrl	$3,$3,0
	daddu	$2,$2,$3
	sd	$2,16($sp)
	lw	$3,20($sp)
	ld	$2,16($sp)
	dsrl	$2,$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,24($sp)
	lw	$2,24($sp)
	srl	$2,$2,16
	lw	$3,24($sp)
	addu	$2,$3,$2
	sw	$2,24($sp)
	lw	$2,24($sp)
	srl	$2,$2,8
	lw	$3,24($sp)
	addu	$2,$3,$2
	andi	$2,$2,0xff
	daddiu	$sp,$sp,48
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
.L995:
	lw	$2,24($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L992
	nop

	ldc1	$f1,0($sp)
	ldc1	$f0,16($sp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,0($sp)
.L992:
	lw	$2,24($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($sp)
	lw	$2,24($sp)
	beq	$2,$0,.L1000
	nop

	ldc1	$f0,16($sp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,16($sp)
	b	.L995
	nop

.L1000:
	nop
	lw	$2,8($sp)
	beq	$2,$0,.L996
	nop

	ldc1	$f0,0($sp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
	b	.L998
	nop

.L996:
	ldc1	$f0,0($sp)
.L998:
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
.L1006:
	lw	$2,20($sp)
	andi	$2,$2,0x1
	beq	$2,$0,.L1003
	nop

	lwc1	$f1,0($sp)
	lwc1	$f0,16($sp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,0($sp)
.L1003:
	lw	$2,20($sp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($sp)
	lw	$2,20($sp)
	beq	$2,$0,.L1011
	nop

	lwc1	$f0,16($sp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,16($sp)
	b	.L1006
	nop

.L1011:
	nop
	lw	$2,4($sp)
	beq	$2,$0,.L1007
	nop

	lwc1	$f0,0($sp)
	ld	$2,%got_page(.LC14)($4)
	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
	b	.L1009
	nop

.L1007:
	lwc1	$f0,0($sp)
.L1009:
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
	beq	$2,$0,.L1014
	nop

	move	$2,$0
	b	.L1019
	nop

.L1014:
	lw	$3,0($sp)
	lw	$2,8($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L1016
	nop

	li	$2,2			# 0x2
	b	.L1019
	nop

.L1016:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L1017
	nop

	move	$2,$0
	b	.L1019
	nop

.L1017:
	lw	$3,4($sp)
	lw	$2,12($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L1018
	nop

	li	$2,2			# 0x2
	b	.L1019
	nop

.L1018:
	li	$2,1			# 0x1
.L1019:
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
	ld	$2,0($sp)
	ld	$3,8($sp)
	move	$5,$3
	move	$4,$2
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
	beq	$2,$0,.L1025
	nop

	move	$2,$0
	b	.L1030
	nop

.L1025:
	ld	$3,0($sp)
	ld	$2,16($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L1027
	nop

	li	$2,2			# 0x2
	b	.L1030
	nop

.L1027:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$3,$2
	beq	$2,$0,.L1028
	nop

	move	$2,$0
	b	.L1030
	nop

.L1028:
	ld	$3,8($sp)
	ld	$2,24($sp)
	sltu	$2,$2,$3
	beq	$2,$0,.L1029
	nop

	li	$2,2			# 0x2
	b	.L1030
	nop

.L1029:
	li	$2,1			# 0x1
.L1030:
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
