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
	.globl	make_ti
	.set	nomips16
	.set	micromips
	.ent	make_ti
	.type	make_ti, @function
make_ti:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	ld	$3,8($fp)
	ld	$2,0($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	make_ti
	.size	make_ti, .-make_ti
	.align	2
	.globl	make_tu
	.set	nomips16
	.set	micromips
	.ent	make_tu
	.type	make_tu, @function
make_tu:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	ld	$3,8($fp)
	ld	$2,0($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	make_tu
	.size	make_tu, .-make_tu
	.align	2
	.globl	memmove
	.set	nomips16
	.set	micromips
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	ld	$3,8($fp)
	ld	$2,0($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L6
	ld	$3,8($fp)
	ld	$2,32($fp)
	daddu	$2,$3,$2
	sd	$2,8($fp)
	ld	$3,0($fp)
	ld	$2,32($fp)
	daddu	$2,$3,$2
	sd	$2,0($fp)
	b	.L7
	nop

.L8:
	ld	$2,8($fp)
	daddiu	$2,$2,-1
	sd	$2,8($fp)
	ld	$2,0($fp)
	daddiu	$2,$2,-1
	sd	$2,0($fp)
	ld	$2,8($fp)
	lb	$3,0($2)
	ld	$2,0($fp)
	sb	$3,0($2)
	ld	$2,32($fp)
	daddiu	$2,$2,-1
	sd	$2,32($fp)
.L7:
	ld	$2,32($fp)
	bnezc	$2,.L8
	b	.L9
	nop

.L6:
	ld	$3,8($fp)
	ld	$2,0($fp)
	beq	$3,$2,.L9
	nop

	b	.L10
	nop

.L11:
	ld	$3,8($fp)
	daddiu	$2,$3,1
	sd	$2,8($fp)
	ld	$2,0($fp)
	daddiu	$4,$2,1
	sd	$4,0($fp)
	lb	$3,0($3)
	sb	$3,0($2)
	ld	$2,32($fp)
	daddiu	$2,$2,-1
	sd	$2,32($fp)
.L10:
	ld	$2,32($fp)
	bnezc	$2,.L11
.L9:
	ld	$2,16($fp)
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	memmove
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.set	nomips16
	.set	micromips
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	move	$2,$6
	sd	$7,40($fp)
	sll	$2,$2,0
	sw	$2,32($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	lw	$2,32($fp)
	andi	$2,$2,0x00ff
	sw	$2,32($fp)
	b	.L14
	nop

.L16:
	ld	$2,40($fp)
	daddiu	$2,$2,-1
	sd	$2,40($fp)
	ld	$2,8($fp)
	daddiu	$2,$2,1
	sd	$2,8($fp)
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
.L14:
	ld	$2,40($fp)
	beqzc	$2,.L15
	ld	$2,8($fp)
	lbu	$3,0($2)
	ld	$2,0($fp)
	sb	$3,0($2)
	ld	$2,0($fp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,32($fp)
	bne	$2,$3,.L16
	nop

.L15:
	ld	$2,40($fp)
	beqzc	$2,.L17
	ld	$2,0($fp)
	daddiu	$2,$2,1
	b	.L18
	nop

.L17:
	move	$2,$0
.L18:
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	memccpy
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.set	nomips16
	.set	micromips
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	move	$2,$5
	sd	$6,32($fp)
	sll	$2,$2,0
	sw	$2,24($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	lw	$2,24($fp)
	andi	$2,$2,0x00ff
	sw	$2,24($fp)
	b	.L20
	nop

.L22:
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
	ld	$2,32($fp)
	daddiu	$2,$2,-1
	sd	$2,32($fp)
.L20:
	ld	$2,32($fp)
	beqzc	$2,.L21
	ld	$2,0($fp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,24($fp)
	bne	$2,$3,.L22
	nop

.L21:
	ld	$2,32($fp)
	beqzc	$2,.L23
	ld	$2,0($fp)
	b	.L25
	nop

.L23:
	move	$2,$0
.L25:
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	memchr
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.set	nomips16
	.set	micromips
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	b	.L27
	nop

.L29:
	ld	$2,32($fp)
	daddiu	$2,$2,-1
	sd	$2,32($fp)
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
	ld	$2,8($fp)
	daddiu	$2,$2,1
	sd	$2,8($fp)
.L27:
	ld	$2,32($fp)
	beqzc	$2,.L28
	ld	$2,0($fp)
	lbu	$2,0($2)
	ld	$3,8($fp)
	lbu	$3,0($3)
	beq	$2,$3,.L29
	nop

.L28:
	ld	$2,32($fp)
	beqzc	$2,.L30
	ld	$2,0($fp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($fp)
	lbu	$2,0($2)
	subu	$2,$3,$2
	b	.L31
	nop

.L30:
	move	$2,$0
.L31:
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	memcmp
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.set	nomips16
	.set	micromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	b	.L34
	nop

.L35:
	ld	$3,8($fp)
	daddiu	$2,$3,1
	sd	$2,8($fp)
	ld	$2,0($fp)
	daddiu	$4,$2,1
	sd	$4,0($fp)
	lbu	$3,0($3)
	sb	$3,0($2)
	ld	$2,32($fp)
	daddiu	$2,$2,-1
	sd	$2,32($fp)
.L34:
	ld	$2,32($fp)
	bnezc	$2,.L35
	ld	$2,16($fp)
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.set	nomips16
	.set	micromips
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	move	$2,$5
	sd	$6,32($fp)
	sll	$2,$2,0
	sw	$2,24($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	lw	$2,24($fp)
	andi	$2,$2,0x00ff
	sw	$2,24($fp)
	b	.L38
	nop

.L40:
	ld	$3,0($fp)
	ld	$2,32($fp)
	daddu	$2,$3,$2
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,24($fp)
	bne	$2,$3,.L38
	nop

	ld	$3,0($fp)
	ld	$2,32($fp)
	daddu	$2,$3,$2
	b	.L39
	nop

.L38:
	ld	$2,32($fp)
	daddiu	$3,$2,-1
	sd	$3,32($fp)
	bnezc	$2,.L40
	move	$2,$0
.L39:
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	memrchr
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.set	nomips16
	.set	micromips
	.ent	memset
	.type	memset, @function
memset:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	move	$2,$5
	sd	$6,32($fp)
	sll	$2,$2,0
	sw	$2,24($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	b	.L42
	nop

.L43:
	lw	$2,24($fp)
	andi	$3,$2,0x00ff
	ld	$2,0($fp)
	sb	$3,0($2)
	ld	$2,32($fp)
	daddiu	$2,$2,-1
	sd	$2,32($fp)
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
.L42:
	ld	$2,32($fp)
	bnezc	$2,.L43
	ld	$2,16($fp)
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	memset
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.set	nomips16
	.set	micromips
	.ent	stpcpy
	.type	stpcpy, @function
stpcpy:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	sd	$5,8($fp)
	b	.L46
	nop

.L47:
	ld	$2,8($fp)
	daddiu	$2,$2,1
	sd	$2,8($fp)
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
.L46:
	ld	$2,8($fp)
	lb	$3,0($2)
	ld	$2,0($fp)
	sb	$3,0($2)
	ld	$2,0($fp)
	lb	$2,0($2)
	bnezc	$2,.L47
	ld	$2,0($fp)
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	stpcpy
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.set	nomips16
	.set	micromips
	.ent	strchrnul
	.type	strchrnul, @function
strchrnul:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($fp)
	lw	$2,8($fp)
	andi	$2,$2,0x00ff
	sw	$2,8($fp)
	b	.L50
	nop

.L52:
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
.L50:
	ld	$2,0($fp)
	lb	$2,0($2)
	beqzc	$2,.L51
	ld	$2,0($fp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,8($fp)
	bne	$2,$3,.L52
	nop

.L51:
	ld	$2,0($fp)
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	strchrnul
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.set	nomips16
	.set	micromips
	.ent	strchr
	.type	strchr, @function
strchr:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	move	$3,$5
	sll	$3,$3,0
	sw	$3,0($fp)
.L57:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,0($fp)
	bne	$3,$4,.L55
	nop

	b	.L56
	nop

.L55:
	move	$3,$2
	daddiu	$2,$3,1
	lb	$3,0($3)
	bnezc	$3,.L57
	move	$2,$0
.L56:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	strchr
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.set	nomips16
	.set	micromips
	.ent	strcmp
	.type	strcmp, @function
strcmp:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	sd	$5,8($fp)
	b	.L59
	nop

.L61:
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
	ld	$2,8($fp)
	daddiu	$2,$2,1
	sd	$2,8($fp)
.L59:
	ld	$2,0($fp)
	lb	$2,0($2)
	ld	$3,8($fp)
	lb	$3,0($3)
	bne	$2,$3,.L60
	nop

	ld	$2,0($fp)
	lb	$2,0($2)
	bnezc	$2,.L61
.L60:
	ld	$2,0($fp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($fp)
	lbu	$2,0($2)
	subu	$2,$3,$2
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	strcmp
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.set	nomips16
	.set	micromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	b	.L64
	nop

.L65:
	ld	$2,16($fp)
	daddiu	$2,$2,1
	sd	$2,16($fp)
.L64:
	ld	$2,16($fp)
	lb	$2,0($2)
	bnezc	$2,.L65
	ld	$3,16($fp)
	ld	$2,0($fp)
	dsubu	$2,$3,$2
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.set	nomips16
	.set	micromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	ld	$2,32($fp)
	daddiu	$3,$2,-1
	sd	$3,32($fp)
	bnezc	$2,.L70
	move	$2,$0
	b	.L69
	nop

.L72:
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
	ld	$2,8($fp)
	daddiu	$2,$2,1
	sd	$2,8($fp)
	ld	$2,32($fp)
	daddiu	$2,$2,-1
	sd	$2,32($fp)
.L70:
	ld	$2,0($fp)
	lbu	$2,0($2)
	beqzc	$2,.L71
	ld	$2,8($fp)
	lbu	$2,0($2)
	beqzc	$2,.L71
	ld	$2,32($fp)
	beqzc	$2,.L71
	ld	$2,0($fp)
	lbu	$2,0($2)
	ld	$3,8($fp)
	lbu	$3,0($3)
	beq	$2,$3,.L72
	nop

.L71:
	ld	$2,0($fp)
	lbu	$2,0($2)
	move	$3,$2
	ld	$2,8($fp)
	lbu	$2,0($2)
	subu	$2,$3,$2
.L69:
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.set	nomips16
	.set	micromips
	.ent	swab
	.type	swab, @function
swab:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	b	.L74
	nop

.L75:
	ld	$2,0($fp)
	daddiu	$2,$2,1
	lb	$3,0($2)
	ld	$2,8($fp)
	sb	$3,0($2)
	ld	$2,8($fp)
	daddiu	$2,$2,1
	ld	$3,0($fp)
	lb	$3,0($3)
	sb	$3,0($2)
	ld	$2,8($fp)
	daddiu	$2,$2,2
	sd	$2,8($fp)
	ld	$2,0($fp)
	daddiu	$2,$2,2
	sd	$2,0($fp)
	ld	$2,32($fp)
	daddiu	$2,$2,-2
	sd	$2,32($fp)
.L74:
	ld	$2,32($fp)
	slt	$2,$2,2
	beqzc	$2,.L75
	nop
	nop
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	swab
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.set	nomips16
	.set	micromips
	.ent	isalpha
	.type	isalpha, @function
isalpha:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	isalpha
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.set	nomips16
	.set	micromips
	.ent	isascii
	.type	isascii, @function
isascii:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	sltu	$2,$2,128
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	isascii
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.set	nomips16
	.set	micromips
	.ent	isblank
	.type	isblank, @function
isblank:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$3,0($fp)
	li	$2,32			# 0x20
	beq	$3,$2,.L81
	nop

	lw	$3,0($fp)
	li	$2,9			# 0x9
	bne	$3,$2,.L82
	nop

.L81:
	li	$2,1			# 0x1
	b	.L83
	nop

.L82:
	move	$2,$0
.L83:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	isblank
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.set	nomips16
	.set	micromips
	.ent	iscntrl
	.type	iscntrl, @function
iscntrl:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	sltu	$2,$2,32
	bnezc	$2,.L86
	lw	$3,0($fp)
	li	$2,127			# 0x7f
	bne	$3,$2,.L87
	nop

.L86:
	li	$2,1			# 0x1
	b	.L88
	nop

.L87:
	move	$2,$0
.L88:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	iscntrl
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.set	nomips16
	.set	micromips
	.ent	isdigit
	.type	isdigit, @function
isdigit:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	isdigit
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.set	nomips16
	.set	micromips
	.ent	isgraph
	.type	isgraph, @function
isgraph:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	addiu	$2,$2,-33
	sltu	$2,$2,94
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	isgraph
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.set	nomips16
	.set	micromips
	.ent	islower
	.type	islower, @function
islower:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	addiu	$2,$2,-97
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	islower
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.set	nomips16
	.set	micromips
	.ent	isprint
	.type	isprint, @function
isprint:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	addiu	$2,$2,-32
	sltu	$2,$2,95
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	isprint
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.set	nomips16
	.set	micromips
	.ent	isspace
	.type	isspace, @function
isspace:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$3,0($fp)
	li	$2,32			# 0x20
	beq	$3,$2,.L99
	nop

	lw	$2,0($fp)
	addiu	$2,$2,-9
	sltu	$2,$2,5
	beqzc	$2,.L100
.L99:
	li	$2,1			# 0x1
	b	.L101
	nop

.L100:
	move	$2,$0
.L101:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	isspace
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.set	nomips16
	.set	micromips
	.ent	isupper
	.type	isupper, @function
isupper:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	addiu	$2,$2,-65
	sltu	$2,$2,26
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	isupper
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.set	nomips16
	.set	micromips
	.ent	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	sltu	$2,$2,32
	bnezc	$2,.L106
	lw	$2,0($fp)
	addiu	$2,$2,-127
	sltu	$2,$2,33
	bnezc	$2,.L106
	lw	$2,0($fp)
	addiu	$2,$2,-8232
	sltu	$2,$2,2
	bnezc	$2,.L106
	lw	$3,0($fp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7
	addu	$2,$3,$2
	sltu	$2,$2,3
	beqzc	$2,.L107
.L106:
	li	$2,1			# 0x1
	b	.L108
	nop

.L107:
	move	$2,$0
.L108:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	iswcntrl
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.set	nomips16
	.set	micromips
	.ent	iswdigit
	.type	iswdigit, @function
iswdigit:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	iswdigit
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.set	nomips16
	.set	micromips
	.ent	iswprint
	.type	iswprint, @function
iswprint:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	sltu	$2,$2,255
	beqzc	$2,.L113
	lw	$2,0($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x7f
	sltu	$2,$2,33
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	b	.L114
	nop

.L113:
	lw	$2,0($fp)
	sltu	$2,$2,8232
	bnezc	$2,.L115
	lw	$2,0($fp)
	addiu	$2,$2,-8234
	move	$3,$2
	li	$2,47062			# 0xb7d6
	sltu	$2,$3,$2
	bnezc	$2,.L115
	lw	$3,0($fp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x2000
	addu	$2,$3,$2
	sltu	$2,$2,8185
	beqzc	$2,.L116
.L115:
	li	$2,1			# 0x1
	b	.L114
	nop

.L116:
	lw	$3,0($fp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x4
	addu	$2,$3,$2
	move	$3,$2
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x4
	sltu	$2,$3,$2
	beqzc	$2,.L117
	lw	$2,0($fp)
	andi	$2,$2,0xfffe
	move	$3,$2
	li	$2,65534			# 0xfffe
	bne	$3,$2,.L118
	nop

.L117:
	move	$2,$0
	b	.L114
	nop

.L118:
	li	$2,1			# 0x1
.L114:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	iswprint
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.set	nomips16
	.set	micromips
	.ent	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnezc	$2,.L120
	lw	$2,0($fp)
	ori	$2,$2,0x20
	addiu	$2,$2,-97
	sltu	$2,$2,6
	beqzc	$2,.L121
.L120:
	li	$2,1			# 0x1
	b	.L122
	nop

.L121:
	move	$2,$0
.L122:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	iswxdigit
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.set	nomips16
	.set	micromips
	.ent	toascii
	.type	toascii, @function
toascii:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	andi	$2,$2,0x7f
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	toascii
	.size	toascii, .-toascii
	.align	2
	.globl	fdim
	.set	nomips16
	.set	micromips
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sdc1	$f12,0($fp)
	sdc1	$f13,8($fp)
	ldc1	$f1,0($fp)
	ldc1	$f0,0($fp)
	c.un.d	$fcc0,$f1,$f0
	bc1f	$fcc0,.L127
	nop

	ldc1	$f0,0($fp)
	b	.L128
	nop

.L127:
	ldc1	$f1,8($fp)
	ldc1	$f0,8($fp)
	c.un.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L129
	nop

	ldc1	$f0,8($fp)
	b	.L128
	nop

.L129:
	ldc1	$f1,0($fp)
	ldc1	$f0,8($fp)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L134
	nop

	ldc1	$f1,0($fp)
	ldc1	$f0,8($fp)
	sub.d	$f0,$f1,$f0
	b	.L128
	nop

.L134:
	dmtc1	$0,$f0
.L128:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	fdim
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.set	nomips16
	.set	micromips
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	swc1	$f12,0($fp)
	swc1	$f13,4($fp)
	lwc1	$f1,0($fp)
	lwc1	$f0,0($fp)
	c.un.s	$fcc0,$f1,$f0
	bc1f	$fcc0,.L136
	nop

	lwc1	$f0,0($fp)
	b	.L137
	nop

.L136:
	lwc1	$f1,4($fp)
	lwc1	$f0,4($fp)
	c.un.s	$fcc1,$f1,$f0
	bc1f	$fcc1,.L138
	nop

	lwc1	$f0,4($fp)
	b	.L137
	nop

.L138:
	lwc1	$f1,0($fp)
	lwc1	$f0,4($fp)
	c.lt.s	$fcc2,$f0,$f1
	bc1f	$fcc2,.L143
	nop

	lwc1	$f1,0($fp)
	lwc1	$f0,4($fp)
	sub.s	$f0,$f1,$f0
	b	.L137
	nop

.L143:
	mtc1	$0,$f0
.L137:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	fdimf
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.set	nomips16
	.set	micromips
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sdc1	$f12,0($fp)
	sdc1	$f13,8($fp)
	ldc1	$f1,0($fp)
	ldc1	$f0,0($fp)
	c.un.d	$fcc0,$f1,$f0
	bc1f	$fcc0,.L145
	nop

	ldc1	$f0,8($fp)
	b	.L146
	nop

.L145:
	ldc1	$f1,8($fp)
	ldc1	$f0,8($fp)
	c.un.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L147
	nop

	ldc1	$f0,0($fp)
	b	.L146
	nop

.L147:
	ld	$2,0($fp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,8($fp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L148
	nop

	ld	$2,0($fp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beqzc	$2,.L149
	ldc1	$f0,8($fp)
	b	.L146
	nop

.L149:
	ldc1	$f0,0($fp)
	b	.L146
	nop

.L148:
	ldc1	$f1,0($fp)
	ldc1	$f0,8($fp)
	c.lt.d	$fcc2,$f1,$f0
	bc1f	$fcc2,.L155
	nop

	ldc1	$f0,8($fp)
	b	.L146
	nop

.L155:
	ldc1	$f0,0($fp)
.L146:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	fmax
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.set	nomips16
	.set	micromips
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	swc1	$f12,0($fp)
	swc1	$f13,4($fp)
	lwc1	$f1,0($fp)
	lwc1	$f0,0($fp)
	c.un.s	$fcc0,$f1,$f0
	bc1f	$fcc0,.L157
	nop

	lwc1	$f0,4($fp)
	b	.L158
	nop

.L157:
	lwc1	$f1,4($fp)
	lwc1	$f0,4($fp)
	c.un.s	$fcc1,$f1,$f0
	bc1f	$fcc1,.L159
	nop

	lwc1	$f0,0($fp)
	b	.L158
	nop

.L159:
	lw	$3,0($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	lw	$4,4($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$3,$4,$3
	beq	$2,$3,.L160
	nop

	lw	$3,0($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beqzc	$2,.L161
	lwc1	$f0,4($fp)
	b	.L158
	nop

.L161:
	lwc1	$f0,0($fp)
	b	.L158
	nop

.L160:
	lwc1	$f1,0($fp)
	lwc1	$f0,4($fp)
	c.lt.s	$fcc2,$f1,$f0
	bc1f	$fcc2,.L167
	nop

	lwc1	$f0,4($fp)
	b	.L158
	nop

.L167:
	lwc1	$f0,0($fp)
.L158:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	fmaxf
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.set	nomips16
	.set	micromips
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	$fp,64,$31		# vars= 32, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(fmaxl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fmaxl)))
	sdc1	$f13,8($fp)
	sdc1	$f12,0($fp)
	sdc1	$f15,24($fp)
	sdc1	$f14,16($fp)
	ld	$2,%call16(__unordtf2)($28)
	ldc1	$f15,8($fp)
	ldc1	$f14,0($fp)
	ldc1	$f13,8($fp)
	ldc1	$f12,0($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	beqzc	$2,.L183
	ld	$3,24($fp)
	ld	$2,16($fp)
	b	.L171
	nop

.L183:
	ld	$2,%call16(__unordtf2)($28)
	ldc1	$f15,24($fp)
	ldc1	$f14,16($fp)
	ldc1	$f13,24($fp)
	ldc1	$f12,16($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	beqzc	$2,.L184
	ld	$3,8($fp)
	ld	$2,0($fp)
	b	.L171
	nop

.L184:
	ld	$2,0($fp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,16($fp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L174
	nop

	ld	$2,0($fp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beqzc	$2,.L175
	ld	$3,24($fp)
	ld	$2,16($fp)
	b	.L171
	nop

.L175:
	ld	$3,8($fp)
	ld	$2,0($fp)
	b	.L171
	nop

.L174:
	ld	$2,%call16(__lttf2)($28)
	ldc1	$f15,24($fp)
	ldc1	$f14,16($fp)
	ldc1	$f13,8($fp)
	ldc1	$f12,0($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalrs	$25
	nop

	bgez	$2,.L185
	nop

	ld	$3,24($fp)
	ld	$2,16($fp)
	b	.L171
	nop

.L185:
	ld	$3,8($fp)
	ld	$2,0($fp)
.L171:
	move	$4,$2
	move	$2,$3
	dmtc1	$4,$f0
	dmtc1	$2,$f2
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	fmaxl
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.set	nomips16
	.set	micromips
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sdc1	$f12,0($fp)
	sdc1	$f13,8($fp)
	ldc1	$f1,0($fp)
	ldc1	$f0,0($fp)
	c.un.d	$fcc0,$f1,$f0
	bc1f	$fcc0,.L187
	nop

	ldc1	$f0,8($fp)
	b	.L188
	nop

.L187:
	ldc1	$f1,8($fp)
	ldc1	$f0,8($fp)
	c.un.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L189
	nop

	ldc1	$f0,0($fp)
	b	.L188
	nop

.L189:
	ld	$2,0($fp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,8($fp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L190
	nop

	ld	$2,0($fp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beqzc	$2,.L191
	ldc1	$f0,0($fp)
	b	.L188
	nop

.L191:
	ldc1	$f0,8($fp)
	b	.L188
	nop

.L190:
	ldc1	$f1,0($fp)
	ldc1	$f0,8($fp)
	c.lt.d	$fcc2,$f1,$f0
	bc1f	$fcc2,.L197
	nop

	ldc1	$f0,0($fp)
	b	.L188
	nop

.L197:
	ldc1	$f0,8($fp)
.L188:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	fmin
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.set	nomips16
	.set	micromips
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	swc1	$f12,0($fp)
	swc1	$f13,4($fp)
	lwc1	$f1,0($fp)
	lwc1	$f0,0($fp)
	c.un.s	$fcc0,$f1,$f0
	bc1f	$fcc0,.L199
	nop

	lwc1	$f0,4($fp)
	b	.L200
	nop

.L199:
	lwc1	$f1,4($fp)
	lwc1	$f0,4($fp)
	c.un.s	$fcc1,$f1,$f0
	bc1f	$fcc1,.L201
	nop

	lwc1	$f0,0($fp)
	b	.L200
	nop

.L201:
	lw	$3,0($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	lw	$4,4($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	and	$3,$4,$3
	beq	$2,$3,.L202
	nop

	lw	$3,0($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$2,$3,$2
	beqzc	$2,.L203
	lwc1	$f0,0($fp)
	b	.L200
	nop

.L203:
	lwc1	$f0,4($fp)
	b	.L200
	nop

.L202:
	lwc1	$f1,0($fp)
	lwc1	$f0,4($fp)
	c.lt.s	$fcc2,$f1,$f0
	bc1f	$fcc2,.L209
	nop

	lwc1	$f0,0($fp)
	b	.L200
	nop

.L209:
	lwc1	$f0,4($fp)
.L200:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	fminf
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.set	nomips16
	.set	micromips
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	$fp,64,$31		# vars= 32, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(fminl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(fminl)))
	sdc1	$f13,8($fp)
	sdc1	$f12,0($fp)
	sdc1	$f15,24($fp)
	sdc1	$f14,16($fp)
	ld	$2,%call16(__unordtf2)($28)
	ldc1	$f15,8($fp)
	ldc1	$f14,0($fp)
	ldc1	$f13,8($fp)
	ldc1	$f12,0($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	beqzc	$2,.L225
	ld	$3,24($fp)
	ld	$2,16($fp)
	b	.L213
	nop

.L225:
	ld	$2,%call16(__unordtf2)($28)
	ldc1	$f15,24($fp)
	ldc1	$f14,16($fp)
	ldc1	$f13,24($fp)
	ldc1	$f12,16($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	beqzc	$2,.L226
	ld	$3,8($fp)
	ld	$2,0($fp)
	b	.L213
	nop

.L226:
	ld	$2,0($fp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	ld	$3,16($fp)
	dsrl	$3,$3,63
	andi	$3,$3,0x1
	beq	$2,$3,.L216
	nop

	ld	$2,0($fp)
	dsrl	$2,$2,63
	andi	$2,$2,0x1
	beqzc	$2,.L217
	ld	$3,8($fp)
	ld	$2,0($fp)
	b	.L213
	nop

.L217:
	ld	$3,24($fp)
	ld	$2,16($fp)
	b	.L213
	nop

.L216:
	ld	$2,%call16(__lttf2)($28)
	ldc1	$f15,24($fp)
	ldc1	$f14,16($fp)
	ldc1	$f13,8($fp)
	ldc1	$f12,0($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalrs	$25
	nop

	bgez	$2,.L227
	nop

	ld	$3,8($fp)
	ld	$2,0($fp)
	b	.L213
	nop

.L227:
	ld	$3,24($fp)
	ld	$2,16($fp)
.L213:
	move	$4,$2
	move	$2,$3
	dmtc1	$4,$f0
	dmtc1	$2,$f2
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	jraddiusp	64
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
	.set	micromips
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	lui	$5,%hi(%neg(%gp_rel(l64a)))
	daddu	$5,$5,$25
	daddiu	$5,$5,%lo(%neg(%gp_rel(l64a)))
	sd	$4,16($fp)
	ld	$2,16($fp)
	sw	$2,8($fp)
	ld	$2,%got_page(s.0)($5)
	daddiu	$2,$2,%got_ofst(s.0)
	sd	$2,0($fp)
	b	.L229
	nop

.L230:
	lw	$2,8($fp)
	andi	$2,$2,0x3f
	move	$3,$2
	ld	$2,%got_page(digits)($5)
	dext	$3,$3,0,32
	daddiu	$2,$2,%got_ofst(digits)
	daddu	$2,$3,$2
	lb	$3,0($2)
	ld	$2,0($fp)
	sb	$3,0($2)
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
	lw	$2,8($fp)
	srl	$2,$2,6
	sw	$2,8($fp)
.L229:
	lw	$2,8($fp)
	bnezc	$2,.L230
	ld	$2,0($fp)
	sb	$0,0($2)
	ld	$2,%got_page(s.0)($5)
	daddiu	$2,$2,%got_ofst(s.0)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	l64a
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
	.globl	srand
	.set	nomips16
	.set	micromips
	.ent	srand
	.type	srand, @function
srand:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	lui	$5,%hi(%neg(%gp_rel(srand)))
	daddu	$5,$5,$25
	daddiu	$5,$5,%lo(%neg(%gp_rel(srand)))
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	addiu	$2,$2,-1
	dext	$3,$2,0,32
	ld	$2,%got_page(seed)($5)
	sd	$3,%got_ofst(seed)($2)
	nop
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	srand
	.size	srand, .-srand
	.align	2
	.globl	rand
	.set	nomips16
	.set	micromips
	.ent	rand
	.type	rand, @function
rand:
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
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
	move	$sp,$fp
	ld	$fp,8($sp)
	jraddiusp	16
	.set	macro
	.set	reorder
	.end	rand
	.size	rand, .-rand
	.align	2
	.globl	insque
	.set	nomips16
	.set	micromips
	.ent	insque
	.type	insque, @function
insque:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	ld	$2,8($fp)
	bnezc	$2,.L236
	ld	$2,0($fp)
	sd	$0,8($2)
	ld	$2,0($fp)
	ld	$3,8($2)
	ld	$2,0($fp)
	sd	$3,0($2)
	b	.L235
	nop

.L236:
	ld	$2,8($fp)
	ld	$3,0($2)
	ld	$2,0($fp)
	sd	$3,0($2)
	ld	$2,0($fp)
	ld	$3,8($fp)
	sd	$3,8($2)
	ld	$2,8($fp)
	ld	$3,0($fp)
	sd	$3,0($2)
	ld	$2,0($fp)
	ld	$2,0($2)
	beqzc	$2,.L235
	ld	$2,0($fp)
	ld	$2,0($2)
	ld	$3,0($fp)
	sd	$3,8($2)
.L235:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	insque
	.size	insque, .-insque
	.align	2
	.globl	remque
	.set	nomips16
	.set	micromips
	.ent	remque
	.type	remque, @function
remque:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,0($fp)
	ld	$2,0($2)
	beqzc	$2,.L239
	ld	$2,0($fp)
	ld	$2,0($2)
	ld	$3,0($fp)
	ld	$3,8($3)
	sd	$3,8($2)
.L239:
	ld	$2,0($fp)
	ld	$2,8($2)
	beqzc	$2,.L241
	ld	$2,0($fp)
	ld	$2,8($2)
	ld	$3,0($fp)
	ld	$3,0($3)
	sd	$3,0($2)
.L241:
	nop
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	remque
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.set	nomips16
	.set	micromips
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	$fp,112,$31		# vars= 80, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$28,88($sp)
	sd	$16,80($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(lsearch)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(lsearch)))
	sd	$4,32($fp)
	sd	$5,40($fp)
	sd	$6,48($fp)
	sd	$7,56($fp)
	sd	$8,64($fp)
	ld	$16,56($fp)
	move	$4,$16
	daddiu	$4,$4,-1
	sd	$4,8($fp)
	move	$11,$16
	move	$10,$0
	dsrl	$4,$11,61
	dsll	$2,$10,3
	or	$2,$2,$4
	dsll	$3,$11,3
	ld	$2,40($fp)
	sd	$2,16($fp)
	ld	$2,48($fp)
	ld	$2,0($2)
	sd	$2,24($fp)
	sd	$0,0($fp)
	b	.L243
	nop

.L246:
	ld	$2,0($fp)
	dmult	$16,$2
	ld	$2,16($fp)
	mflo	$3
	daddu	$3,$2,$3
	ld	$2,64($fp)
	move	$5,$3
	ld	$4,32($fp)
	move	$25,$2
	jalrs	$25
	nop

	bnezc	$2,.L244
	ld	$2,0($fp)
	dmult	$16,$2
	ld	$2,16($fp)
	mflo	$3
	daddu	$2,$2,$3
	b	.L245
	nop

.L244:
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
.L243:
	ld	$3,0($fp)
	ld	$2,24($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L246
	ld	$2,24($fp)
	daddiu	$3,$2,1
	ld	$2,48($fp)
	sd	$3,0($2)
	ld	$2,24($fp)
	dmult	$16,$2
	ld	$2,16($fp)
	mflo	$3
	daddu	$2,$2,$3
	ld	$6,56($fp)
	ld	$5,32($fp)
	move	$4,$2
	ld	$2,%got_disp(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalrs	$25
	nop

.L245:
	move	$sp,$fp
	ld	$31,104($sp)
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$16,80($sp)
	jraddiusp	112
	.set	macro
	.set	reorder
	.end	lsearch
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.set	nomips16
	.set	micromips
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	$fp,112,$31		# vars= 80, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$16,80($sp)
	move	$fp,$sp
	sd	$4,32($fp)
	sd	$5,40($fp)
	sd	$6,48($fp)
	sd	$7,56($fp)
	sd	$8,64($fp)
	ld	$16,56($fp)
	move	$4,$16
	daddiu	$4,$4,-1
	sd	$4,8($fp)
	move	$11,$16
	move	$10,$0
	dsrl	$4,$11,61
	dsll	$2,$10,3
	or	$2,$2,$4
	dsll	$3,$11,3
	ld	$2,40($fp)
	sd	$2,16($fp)
	ld	$2,48($fp)
	ld	$2,0($2)
	sd	$2,24($fp)
	sd	$0,0($fp)
	b	.L248
	nop

.L251:
	ld	$2,0($fp)
	dmult	$16,$2
	ld	$2,16($fp)
	mflo	$3
	daddu	$3,$2,$3
	ld	$2,64($fp)
	move	$5,$3
	ld	$4,32($fp)
	move	$25,$2
	jalrs	$25
	nop

	bnezc	$2,.L249
	ld	$2,0($fp)
	dmult	$16,$2
	ld	$2,16($fp)
	mflo	$3
	daddu	$2,$2,$3
	b	.L250
	nop

.L249:
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
.L248:
	ld	$3,0($fp)
	ld	$2,24($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L251
	move	$2,$0
.L250:
	move	$sp,$fp
	ld	$31,104($sp)
	ld	$fp,96($sp)
	ld	$16,80($sp)
	jraddiusp	112
	.set	macro
	.set	reorder
	.end	lfind
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.set	nomips16
	.set	micromips
	.ent	abs
	.type	abs, @function
abs:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	bgez	$2,.L253
	nop

	subu	$2,$0,$2
.L253:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	abs
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.set	nomips16
	.set	micromips
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	$fp,64,$31		# vars= 32, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(atoi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoi)))
	sd	$4,16($fp)
	sw	$0,0($fp)
	sw	$0,4($fp)
	b	.L256
	nop

.L257:
	ld	$2,16($fp)
	daddiu	$2,$2,1
	sd	$2,16($fp)
.L256:
	ld	$2,16($fp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L257
	ld	$2,16($fp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L258
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L260
	nop

	li	$2,1			# 0x1
	sw	$2,4($fp)
.L258:
	ld	$2,16($fp)
	daddiu	$2,$2,1
	sd	$2,16($fp)
	b	.L260
	nop

.L261:
	lw	$3,0($fp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	ld	$2,16($fp)
	daddiu	$4,$2,1
	sd	$4,16($fp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	subu	$2,$3,$2
	sw	$2,0($fp)
.L260:
	ld	$2,16($fp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnezc	$2,.L261
	lw	$2,4($fp)
	bnezc	$2,.L262
	lw	$2,0($fp)
	subu	$2,$0,$2
	b	.L263
	nop

.L262:
	lw	$2,0($fp)
.L263:
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	atoi
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.set	nomips16
	.set	micromips
	.ent	atol
	.type	atol, @function
atol:
	.frame	$fp,64,$31		# vars= 32, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(atol)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atol)))
	sd	$4,16($fp)
	sd	$0,0($fp)
	sw	$0,8($fp)
	b	.L266
	nop

.L267:
	ld	$2,16($fp)
	daddiu	$2,$2,1
	sd	$2,16($fp)
.L266:
	ld	$2,16($fp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L267
	ld	$2,16($fp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L268
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L270
	nop

	li	$2,1			# 0x1
	sw	$2,8($fp)
.L268:
	ld	$2,16($fp)
	daddiu	$2,$2,1
	sd	$2,16($fp)
	b	.L270
	nop

.L271:
	ld	$3,0($fp)
	move	$2,$3
	dsll	$2,$2,2
	daddu	$2,$2,$3
	dsll	$2,$2,1
	move	$4,$2
	ld	$2,16($fp)
	daddiu	$3,$2,1
	sd	$3,16($fp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	dsubu	$2,$4,$2
	sd	$2,0($fp)
.L270:
	ld	$2,16($fp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnezc	$2,.L271
	lw	$2,8($fp)
	bnezc	$2,.L272
	ld	$2,0($fp)
	dsubu	$2,$0,$2
	b	.L274
	nop

.L272:
	ld	$2,0($fp)
.L274:
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	atol
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.set	nomips16
	.set	micromips
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	$fp,64,$31		# vars= 32, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(atoll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(atoll)))
	sd	$4,16($fp)
	sd	$0,0($fp)
	sw	$0,8($fp)
	b	.L276
	nop

.L277:
	ld	$2,16($fp)
	daddiu	$2,$2,1
	sd	$2,16($fp)
.L276:
	ld	$2,16($fp)
	lb	$2,0($2)
	move	$4,$2
	ld	$2,%got_disp(isspace)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,isspace
1:	jalrs	$25
	nop

	bnezc	$2,.L277
	ld	$2,16($fp)
	lb	$2,0($2)
	li	$3,43			# 0x2b
	beq	$2,$3,.L278
	nop

	li	$3,45			# 0x2d
	bne	$2,$3,.L280
	nop

	li	$2,1			# 0x1
	sw	$2,8($fp)
.L278:
	ld	$2,16($fp)
	daddiu	$2,$2,1
	sd	$2,16($fp)
	b	.L280
	nop

.L281:
	ld	$3,0($fp)
	move	$2,$3
	dsll	$2,$2,2
	daddu	$2,$2,$3
	dsll	$2,$2,1
	move	$4,$2
	ld	$2,16($fp)
	daddiu	$3,$2,1
	sd	$3,16($fp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	dsubu	$2,$4,$2
	sd	$2,0($fp)
.L280:
	ld	$2,16($fp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bnezc	$2,.L281
	lw	$2,8($fp)
	bnezc	$2,.L282
	ld	$2,0($fp)
	dsubu	$2,$0,$2
	b	.L284
	nop

.L282:
	ld	$2,0($fp)
.L284:
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	atoll
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.set	nomips16
	.set	micromips
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	$fp,96,$31		# vars= 64, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$fp,80($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	sd	$7,40($fp)
	sd	$8,48($fp)
	b	.L286
	nop

.L290:
	ld	$2,32($fp)
	dsrl	$3,$2,1
	ld	$2,40($fp)
	dmult	$3,$2
	ld	$2,24($fp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,0($fp)
	ld	$2,48($fp)
	ld	$5,0($fp)
	ld	$4,16($fp)
	move	$25,$2
	jalrs	$25
	nop

	sw	$2,8($fp)
	lw	$2,8($fp)
	bgez	$2,.L287
	nop

	ld	$2,32($fp)
	dsrl	$2,$2,1
	sd	$2,32($fp)
	b	.L286
	nop

.L287:
	lw	$2,8($fp)
	blez	$2,.L288
	nop

	ld	$3,0($fp)
	ld	$2,40($fp)
	daddu	$2,$3,$2
	sd	$2,24($fp)
	ld	$2,32($fp)
	dsrl	$2,$2,1
	ld	$3,32($fp)
	dsubu	$2,$3,$2
	daddiu	$2,$2,-1
	sd	$2,32($fp)
	b	.L286
	nop

.L288:
	ld	$2,0($fp)
	b	.L289
	nop

.L286:
	ld	$2,32($fp)
	bnezc	$2,.L290
	move	$2,$0
.L289:
	move	$sp,$fp
	ld	$31,88($sp)
	ld	$fp,80($sp)
	jraddiusp	96
	.set	macro
	.set	reorder
	.end	bsearch
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.set	nomips16
	.set	micromips
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	$fp,112,$31		# vars= 80, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$fp,96($sp)
	move	$fp,$sp
	sd	$4,32($fp)
	sd	$5,40($fp)
	sd	$6,48($fp)
	sd	$7,56($fp)
	sd	$8,64($fp)
	sd	$9,72($fp)
	ld	$2,40($fp)
	sd	$2,0($fp)
	ld	$2,48($fp)
	sw	$2,8($fp)
	b	.L292
	nop

.L296:
	lw	$2,8($fp)
	sra	$2,$2,1
	move	$3,$2
	ld	$2,56($fp)
	dmult	$3,$2
	ld	$2,0($fp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,16($fp)
	ld	$2,64($fp)
	ld	$6,72($fp)
	ld	$5,16($fp)
	ld	$4,32($fp)
	move	$25,$2
	jalrs	$25
	nop

	sw	$2,24($fp)
	lw	$2,24($fp)
	bnezc	$2,.L293
	ld	$2,16($fp)
	b	.L294
	nop

.L293:
	lw	$2,24($fp)
	blez	$2,.L295
	nop

	ld	$3,16($fp)
	ld	$2,56($fp)
	daddu	$2,$3,$2
	sd	$2,0($fp)
	lw	$2,8($fp)
	addiu	$2,$2,-1
	sw	$2,8($fp)
.L295:
	lw	$2,8($fp)
	sra	$2,$2,1
	sw	$2,8($fp)
.L292:
	lw	$2,8($fp)
	bnezc	$2,.L296
	move	$2,$0
.L294:
	move	$sp,$fp
	ld	$31,104($sp)
	ld	$fp,96($sp)
	jraddiusp	112
	.set	macro
	.set	reorder
	.end	bsearch_r
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.set	nomips16
	.set	micromips
	.ent	div
	.type	div, @function
div:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,16($fp)
	sll	$2,$2,0
	sw	$2,20($fp)
	lw	$3,16($fp)
	lw	$2,20($fp)
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$3
	lw	$4,16($fp)
	lw	$2,20($fp)
	div	$0,$4,$2
	teq	$2,$0,7
	mfhi	$2
	sw	$3,0($fp)
	sw	$2,4($fp)
	move	$2,$0
	lwu	$3,0($fp)
	dins	$2,$3,32,32
	lwu	$3,4($fp)
	dins	$2,$3,0,32
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	div
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.set	nomips16
	.set	micromips
	.ent	imaxabs
	.type	imaxabs, @function
imaxabs:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	ld	$2,0($fp)
	bgez	$2,.L300
	nop

	dsubu	$2,$0,$2
.L300:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	imaxabs
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.set	nomips16
	.set	micromips
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,32($fp)
	sd	$5,40($fp)
	ld	$3,32($fp)
	ld	$2,40($fp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$4
	ld	$3,32($fp)
	ld	$2,40($fp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	sd	$4,0($fp)
	sd	$2,8($fp)
	ld	$3,0($fp)
	ld	$2,8($fp)
	move	$6,$3
	move	$7,$2
	move	$3,$7
	move	$2,$6
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	imaxdiv
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.set	nomips16
	.set	micromips
	.ent	labs
	.type	labs, @function
labs:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	ld	$2,0($fp)
	bgez	$2,.L305
	nop

	dsubu	$2,$0,$2
.L305:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	labs
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.set	nomips16
	.set	micromips
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,32($fp)
	sd	$5,40($fp)
	ld	$3,32($fp)
	ld	$2,40($fp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$4
	ld	$3,32($fp)
	ld	$2,40($fp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	sd	$4,0($fp)
	sd	$2,8($fp)
	ld	$3,0($fp)
	ld	$2,8($fp)
	move	$6,$3
	move	$7,$2
	move	$3,$7
	move	$2,$6
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	ldiv
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.set	nomips16
	.set	micromips
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	ld	$2,0($fp)
	bgez	$2,.L310
	nop

	dsubu	$2,$0,$2
.L310:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	llabs
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.set	nomips16
	.set	micromips
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,32($fp)
	sd	$5,40($fp)
	ld	$3,32($fp)
	ld	$2,40($fp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$4
	ld	$3,32($fp)
	ld	$2,40($fp)
	ddiv	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	sd	$4,0($fp)
	sd	$2,8($fp)
	ld	$3,0($fp)
	ld	$2,8($fp)
	move	$6,$3
	move	$7,$2
	move	$3,$7
	move	$2,$6
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	lldiv
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.set	nomips16
	.set	micromips
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($fp)
	b	.L315
	nop

.L317:
	ld	$2,0($fp)
	daddiu	$2,$2,4
	sd	$2,0($fp)
.L315:
	ld	$2,0($fp)
	lw	$2,0($2)
	beqzc	$2,.L316
	ld	$2,0($fp)
	lw	$3,0($2)
	lw	$2,8($fp)
	bne	$2,$3,.L317
	nop

.L316:
	ld	$2,0($fp)
	lw	$2,0($2)
	beqzc	$2,.L318
	ld	$2,0($fp)
	b	.L320
	nop

.L318:
	move	$2,$0
.L320:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	wcschr
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.set	nomips16
	.set	micromips
	.ent	wcscmp
	.type	wcscmp, @function
wcscmp:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	sd	$5,8($fp)
	b	.L322
	nop

.L324:
	ld	$2,0($fp)
	daddiu	$2,$2,4
	sd	$2,0($fp)
	ld	$2,8($fp)
	daddiu	$2,$2,4
	sd	$2,8($fp)
.L322:
	ld	$2,0($fp)
	lw	$2,0($2)
	ld	$3,8($fp)
	lw	$3,0($3)
	bne	$2,$3,.L323
	nop

	ld	$2,0($fp)
	lw	$2,0($2)
	beqzc	$2,.L323
	ld	$2,8($fp)
	lw	$2,0($2)
	bnezc	$2,.L324
.L323:
	ld	$2,0($fp)
	lw	$3,0($2)
	ld	$2,8($fp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bnezc	$2,.L325
	ld	$2,0($fp)
	lw	$3,0($2)
	ld	$2,8($fp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L326
	nop

.L325:
	li	$2,-1			# 0xffffffffffffffff
.L326:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	wcscmp
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.set	nomips16
	.set	micromips
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	nop
.L329:
	ld	$3,24($fp)
	daddiu	$2,$3,4
	sd	$2,24($fp)
	ld	$2,16($fp)
	daddiu	$4,$2,4
	sd	$4,16($fp)
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($2)
	bnezc	$2,.L329
	ld	$2,0($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	wcscpy
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.set	nomips16
	.set	micromips
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	b	.L332
	nop

.L333:
	ld	$2,16($fp)
	daddiu	$2,$2,4
	sd	$2,16($fp)
.L332:
	ld	$2,16($fp)
	lw	$2,0($2)
	bnezc	$2,.L333
	ld	$3,16($fp)
	ld	$2,0($fp)
	dsubu	$2,$3,$2
	dsra	$2,$2,2
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	wcslen
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.set	nomips16
	.set	micromips
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	sd	$5,8($fp)
	sd	$6,16($fp)
	b	.L336
	nop

.L338:
	ld	$2,16($fp)
	daddiu	$2,$2,-1
	sd	$2,16($fp)
	ld	$2,0($fp)
	daddiu	$2,$2,4
	sd	$2,0($fp)
	ld	$2,8($fp)
	daddiu	$2,$2,4
	sd	$2,8($fp)
.L336:
	ld	$2,16($fp)
	beqzc	$2,.L337
	ld	$2,0($fp)
	lw	$2,0($2)
	ld	$3,8($fp)
	lw	$3,0($3)
	bne	$2,$3,.L337
	nop

	ld	$2,0($fp)
	lw	$2,0($2)
	beqzc	$2,.L337
	ld	$2,8($fp)
	lw	$2,0($2)
	bnezc	$2,.L338
.L337:
	ld	$2,16($fp)
	beqzc	$2,.L339
	ld	$2,0($fp)
	lw	$3,0($2)
	ld	$2,8($fp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bnezc	$2,.L340
	ld	$2,0($fp)
	lw	$3,0($2)
	ld	$2,8($fp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L342
	nop

.L340:
	li	$2,-1			# 0xffffffffffffffff
	b	.L342
	nop

.L339:
	move	$2,$0
.L342:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	wcsncmp
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.set	nomips16
	.set	micromips
	.ent	wmemchr
	.type	wmemchr, @function
wmemchr:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	move	$2,$5
	sd	$6,16($fp)
	sll	$2,$2,0
	sw	$2,8($fp)
	b	.L345
	nop

.L347:
	ld	$2,16($fp)
	daddiu	$2,$2,-1
	sd	$2,16($fp)
	ld	$2,0($fp)
	daddiu	$2,$2,4
	sd	$2,0($fp)
.L345:
	ld	$2,16($fp)
	beqzc	$2,.L346
	ld	$2,0($fp)
	lw	$3,0($2)
	lw	$2,8($fp)
	bne	$2,$3,.L347
	nop

.L346:
	ld	$2,16($fp)
	beqzc	$2,.L348
	ld	$2,0($fp)
	b	.L350
	nop

.L348:
	move	$2,$0
.L350:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	wmemchr
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.set	nomips16
	.set	micromips
	.ent	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	sd	$5,8($fp)
	sd	$6,16($fp)
	b	.L352
	nop

.L354:
	ld	$2,16($fp)
	daddiu	$2,$2,-1
	sd	$2,16($fp)
	ld	$2,0($fp)
	daddiu	$2,$2,4
	sd	$2,0($fp)
	ld	$2,8($fp)
	daddiu	$2,$2,4
	sd	$2,8($fp)
.L352:
	ld	$2,16($fp)
	beqzc	$2,.L353
	ld	$2,0($fp)
	lw	$2,0($2)
	ld	$3,8($fp)
	lw	$3,0($3)
	beq	$2,$3,.L354
	nop

.L353:
	ld	$2,16($fp)
	beqzc	$2,.L355
	ld	$2,0($fp)
	lw	$3,0($2)
	ld	$2,8($fp)
	lw	$2,0($2)
	slt	$2,$3,$2
	bnezc	$2,.L356
	ld	$2,0($fp)
	lw	$3,0($2)
	ld	$2,8($fp)
	lw	$2,0($2)
	slt	$2,$2,$3
	andi	$2,$2,0x00ff
	b	.L358
	nop

.L356:
	li	$2,-1			# 0xffffffffffffffff
	b	.L358
	nop

.L355:
	move	$2,$0
.L358:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	wmemcmp
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.set	nomips16
	.set	micromips
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	b	.L361
	nop

.L362:
	ld	$3,24($fp)
	daddiu	$2,$3,4
	sd	$2,24($fp)
	ld	$2,16($fp)
	daddiu	$4,$2,4
	sd	$4,16($fp)
	lw	$3,0($3)
	sw	$3,0($2)
.L361:
	ld	$2,32($fp)
	daddiu	$3,$2,-1
	sd	$3,32($fp)
	bnezc	$2,.L362
	ld	$2,0($fp)
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	wmemcpy
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.set	nomips16
	.set	micromips
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$3,16($fp)
	ld	$2,24($fp)
	bne	$3,$2,.L365
	nop

	ld	$2,16($fp)
	b	.L366
	nop

.L365:
	ld	$3,16($fp)
	ld	$2,24($fp)
	dsubu	$3,$3,$2
	ld	$2,32($fp)
	dsll	$2,$2,2
	sltu	$2,$3,$2
	beqzc	$2,.L371
	b	.L368
	nop

.L369:
	ld	$2,32($fp)
	dsll	$2,$2,2
	ld	$3,24($fp)
	daddu	$3,$3,$2
	ld	$2,32($fp)
	dsll	$2,$2,2
	ld	$4,16($fp)
	daddu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
.L368:
	ld	$2,32($fp)
	daddiu	$3,$2,-1
	sd	$3,32($fp)
	bnezc	$2,.L369
	b	.L370
	nop

.L372:
	ld	$3,24($fp)
	daddiu	$2,$3,4
	sd	$2,24($fp)
	ld	$2,16($fp)
	daddiu	$4,$2,4
	sd	$4,16($fp)
	lw	$3,0($3)
	sw	$3,0($2)
.L371:
	ld	$2,32($fp)
	daddiu	$3,$2,-1
	sd	$3,32($fp)
	bnezc	$2,.L372
.L370:
	ld	$2,0($fp)
.L366:
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	wmemmove
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.set	nomips16
	.set	micromips
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	move	$2,$5
	sd	$6,32($fp)
	sll	$2,$2,0
	sw	$2,24($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	b	.L374
	nop

.L375:
	ld	$2,16($fp)
	daddiu	$3,$2,4
	sd	$3,16($fp)
	lw	$3,24($fp)
	sw	$3,0($2)
.L374:
	ld	$2,32($fp)
	daddiu	$3,$2,-1
	sd	$3,32($fp)
	bnezc	$2,.L375
	ld	$2,0($fp)
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	wmemset
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.set	nomips16
	.set	micromips
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	ld	$3,0($fp)
	ld	$2,8($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L378
	ld	$3,0($fp)
	ld	$2,32($fp)
	daddu	$2,$3,$2
	sd	$2,0($fp)
	ld	$3,8($fp)
	ld	$2,32($fp)
	daddu	$2,$3,$2
	sd	$2,8($fp)
	b	.L379
	nop

.L380:
	ld	$2,0($fp)
	daddiu	$2,$2,-1
	sd	$2,0($fp)
	ld	$2,8($fp)
	daddiu	$2,$2,-1
	sd	$2,8($fp)
	ld	$2,0($fp)
	lb	$3,0($2)
	ld	$2,8($fp)
	sb	$3,0($2)
	ld	$2,32($fp)
	daddiu	$2,$2,-1
	sd	$2,32($fp)
.L379:
	ld	$2,32($fp)
	bnezc	$2,.L380
	b	.L384
	nop

.L378:
	ld	$3,0($fp)
	ld	$2,8($fp)
	beq	$3,$2,.L384
	nop

	b	.L382
	nop

.L383:
	ld	$3,0($fp)
	daddiu	$2,$3,1
	sd	$2,0($fp)
	ld	$2,8($fp)
	daddiu	$4,$2,1
	sd	$4,8($fp)
	lb	$3,0($3)
	sb	$3,0($2)
	ld	$2,32($fp)
	daddiu	$2,$2,-1
	sd	$2,32($fp)
.L382:
	ld	$2,32($fp)
	bnezc	$2,.L383
.L384:
	nop
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	bcopy
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.set	nomips16
	.set	micromips
	.ent	rotl64
	.type	rotl64, @function
rotl64:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($fp)
	lw	$2,8($fp)
	subu	$2,$0,$2
	ld	$3,0($fp)
	dror	$2,$3,$2
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	rotl64
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.set	nomips16
	.set	micromips
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($fp)
	ld	$3,0($fp)
	lw	$2,8($fp)
	dror	$2,$3,$2
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	rotr64
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.set	nomips16
	.set	micromips
	.ent	rotl32
	.type	rotl32, @function
rotl32:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($fp)
	sll	$2,$2,0
	sw	$2,4($fp)
	lw	$2,4($fp)
	subu	$2,$0,$2
	lw	$3,0($fp)
	ror	$2,$3,$2
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	rotl32
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.set	nomips16
	.set	micromips
	.ent	rotr32
	.type	rotr32, @function
rotr32:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($fp)
	sll	$2,$2,0
	sw	$2,4($fp)
	lw	$3,0($fp)
	lw	$2,4($fp)
	ror	$2,$3,$2
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	rotr32
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.set	nomips16
	.set	micromips
	.ent	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($fp)
	ld	$3,0($fp)
	lw	$2,8($fp)
	dsll	$3,$3,$2
	lw	$2,8($fp)
	li	$4,64			# 0x40
	subu	$2,$4,$2
	sll	$4,$2,0
	ld	$2,0($fp)
	dsrl	$2,$2,$4
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	rotl_sz
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.set	nomips16
	.set	micromips
	.ent	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($fp)
	ld	$3,0($fp)
	lw	$2,8($fp)
	dsrl	$3,$3,$2
	lw	$2,8($fp)
	li	$4,64			# 0x40
	subu	$2,$4,$2
	sll	$4,$2,0
	ld	$2,0($fp)
	dsll	$2,$2,$4
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	rotr_sz
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.set	nomips16
	.set	micromips
	.ent	rotl16
	.type	rotl16, @function
rotl16:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sh	$3,0($fp)
	sll	$2,$2,0
	sw	$2,4($fp)
	lhu	$2,0($fp)
	move	$3,$2
	lw	$2,4($fp)
	sll	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,0($fp)
	li	$5,16			# 0x10
	lw	$4,4($fp)
	subu	$4,$5,$4
	sll	$4,$4,0
	srl	$2,$2,$4
	andi	$2,$2,0xffff
	or	$2,$2,$3
	andi	$2,$2,0xffff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	rotl16
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.set	nomips16
	.set	micromips
	.ent	rotr16
	.type	rotr16, @function
rotr16:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sh	$3,0($fp)
	sll	$2,$2,0
	sw	$2,4($fp)
	lhu	$2,0($fp)
	move	$3,$2
	lw	$2,4($fp)
	srl	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,0($fp)
	li	$5,16			# 0x10
	lw	$4,4($fp)
	subu	$4,$5,$4
	sll	$4,$4,0
	sll	$2,$2,$4
	andi	$2,$2,0xffff
	or	$2,$2,$3
	andi	$2,$2,0xffff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	rotr16
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.set	nomips16
	.set	micromips
	.ent	rotl8
	.type	rotl8, @function
rotl8:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sb	$3,0($fp)
	sll	$2,$2,0
	sw	$2,4($fp)
	lbu	$2,0($fp)
	move	$3,$2
	lw	$2,4($fp)
	sll	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,0($fp)
	li	$5,8			# 0x8
	lw	$4,4($fp)
	subu	$4,$5,$4
	sll	$4,$4,0
	srl	$2,$2,$4
	andi	$2,$2,0x00ff
	or	$2,$2,$3
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	rotl8
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.set	nomips16
	.set	micromips
	.ent	rotr8
	.type	rotr8, @function
rotr8:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sb	$3,0($fp)
	sll	$2,$2,0
	sw	$2,4($fp)
	lbu	$2,0($fp)
	move	$3,$2
	lw	$2,4($fp)
	srl	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,0($fp)
	li	$5,8			# 0x8
	lw	$4,4($fp)
	subu	$4,$5,$4
	sll	$4,$4,0
	sll	$2,$2,$4
	andi	$2,$2,0x00ff
	or	$2,$2,$3
	andi	$2,$2,0x00ff
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	rotr8
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.set	nomips16
	.set	micromips
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sh	$2,16($fp)
	li	$2,255			# 0xff
	sd	$2,0($fp)
	lhu	$3,16($fp)
	ld	$2,0($fp)
	dsll	$2,$2,8
	and	$2,$3,$2
	dsrl	$2,$2,8
	sll	$2,$2,0
	andi	$3,$2,0xffff
	lhu	$2,6($fp)
	lhu	$4,16($fp)
	and	$2,$4,$2
	andi	$2,$2,0xffff
	sll	$2,$2,8
	andi	$2,$2,0xffff
	or	$2,$2,$3
	andi	$2,$2,0xffff
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	bswap_16
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.set	nomips16
	.set	micromips
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($fp)
	li	$2,255			# 0xff
	sd	$2,0($fp)
	lwu	$3,16($fp)
	ld	$2,0($fp)
	dsll	$2,$2,24
	and	$2,$3,$2
	dsrl	$2,$2,24
	sll	$2,$2,0
	move	$3,$2
	lwu	$4,16($fp)
	ld	$2,0($fp)
	dsll	$2,$2,16
	and	$2,$4,$2
	dsrl	$2,$2,8
	sll	$2,$2,0
	or	$2,$2,$3
	move	$3,$2
	lw	$2,4($fp)
	sll	$2,$2,8
	lw	$4,16($fp)
	and	$2,$4,$2
	sll	$2,$2,8
	or	$2,$2,$3
	move	$3,$2
	lw	$2,4($fp)
	lw	$4,16($fp)
	and	$2,$4,$2
	sll	$2,$2,24
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	bswap_32
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.set	nomips16
	.set	micromips
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	li	$2,255			# 0xff
	sd	$2,0($fp)
	ld	$2,0($fp)
	dsll	$3,$2,56
	ld	$2,16($fp)
	and	$2,$3,$2
	dsrl	$3,$2,56
	ld	$2,0($fp)
	dsll	$4,$2,48
	ld	$2,16($fp)
	and	$2,$4,$2
	dsrl	$2,$2,40
	or	$3,$3,$2
	ld	$2,0($fp)
	dsll	$4,$2,40
	ld	$2,16($fp)
	and	$2,$4,$2
	dsrl	$2,$2,24
	or	$3,$3,$2
	ld	$2,0($fp)
	dsll	$4,$2,32
	ld	$2,16($fp)
	and	$2,$4,$2
	dsrl	$2,$2,8
	or	$3,$3,$2
	ld	$2,0($fp)
	dsll	$4,$2,24
	ld	$2,16($fp)
	and	$2,$4,$2
	dsll	$2,$2,8
	or	$3,$3,$2
	ld	$2,0($fp)
	dsll	$4,$2,16
	ld	$2,16($fp)
	and	$2,$4,$2
	dsll	$2,$2,24
	or	$3,$3,$2
	ld	$2,0($fp)
	dsll	$4,$2,8
	ld	$2,16($fp)
	and	$2,$4,$2
	dsll	$2,$2,40
	or	$3,$3,$2
	ld	$4,16($fp)
	ld	$2,0($fp)
	and	$2,$4,$2
	dsll	$2,$2,56
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	bswap_64
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.set	nomips16
	.set	micromips
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($fp)
	sw	$0,0($fp)
	b	.L412
	nop

.L415:
	lw	$3,16($fp)
	lw	$2,0($fp)
	srl	$2,$3,$2
	andi	$2,$2,0x1
	beqzc	$2,.L413
	lw	$2,0($fp)
	addiu	$2,$2,1
	b	.L414
	nop

.L413:
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L412:
	lw	$2,0($fp)
	sltu	$2,$2,32
	bnezc	$2,.L415
	move	$2,$0
.L414:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	ffs
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.set	nomips16
	.set	micromips
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	$fp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x40010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	sd	$16,0($sp)
	move	$fp,$sp
	move	$2,$4
	bnezc	$2,.L417
	move	$2,$0
	b	.L418
	nop

.L417:
	li	$16,1			# 0x1
	b	.L419
	nop

.L420:
	sra	$2,$2,1
	addiu	$3,$16,1
	move	$16,$3
.L419:
	andi	$3,$2,0x1
	beqzc	$3,.L420
	move	$2,$16
.L418:
	move	$sp,$fp
	ld	$fp,8($sp)
	ld	$16,0($sp)
	jraddiusp	16
	.set	macro
	.set	reorder
	.end	libiberty_ffs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.set	nomips16
	.set	micromips
	.ent	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	lui	$3,%hi(%neg(%gp_rel(gl_isinff)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinff)))
	swc1	$f12,0($fp)
	lwc1	$f1,0($fp)
	ld	$2,%got_page(.LC0)($3)
	lwc1	$f0,%got_ofst(.LC0)($2)
	c.lt.s	$fcc0,$f1,$f0
	bc1t	$fcc0,.L422
	nop

	lwc1	$f1,0($fp)
	ld	$2,%got_page(.LC1)($3)
	lwc1	$f0,%got_ofst(.LC1)($2)
	c.lt.s	$fcc1,$f0,$f1
	bc1f	$fcc1,.L427
	nop

.L422:
	li	$2,1			# 0x1
	b	.L425
	nop

.L427:
	move	$2,$0
.L425:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	gl_isinff
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.set	nomips16
	.set	micromips
	.ent	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	lui	$3,%hi(%neg(%gp_rel(gl_isinfd)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(gl_isinfd)))
	sdc1	$f12,0($fp)
	ldc1	$f1,0($fp)
	ld	$2,%got_page(.LC2)($3)
	ldc1	$f0,%got_ofst(.LC2)($2)
	c.lt.d	$fcc0,$f1,$f0
	bc1t	$fcc0,.L429
	nop

	ldc1	$f1,0($fp)
	ld	$2,%got_page(.LC3)($3)
	ldc1	$f0,%got_ofst(.LC3)($2)
	c.lt.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L434
	nop

.L429:
	li	$2,1			# 0x1
	b	.L432
	nop

.L434:
	move	$2,$0
.L432:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	gl_isinfd
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.set	nomips16
	.set	micromips
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.frame	$fp,48,$31		# vars= 16, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$fp,32($sp)
	sd	$28,24($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(gl_isinfl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(gl_isinfl)))
	sdc1	$f13,8($fp)
	sdc1	$f12,0($fp)
	ld	$3,%got_page(.LC4)($28)
	ld	$2,%call16(__lttf2)($28)
	ldc1	$f15,%got_ofst(.LC4+8)($3)
	ldc1	$f14,%got_ofst(.LC4)($3)
	ldc1	$f13,8($fp)
	ldc1	$f12,0($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__lttf2
1:	jalrs	$25
	nop

	bltz	$2,.L436
	nop

	ld	$3,%got_page(.LC5)($28)
	ld	$2,%call16(__gttf2)($28)
	ldc1	$f15,%got_ofst(.LC5+8)($3)
	ldc1	$f14,%got_ofst(.LC5)($3)
	ldc1	$f13,8($fp)
	ldc1	$f12,0($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__gttf2
1:	jalrs	$25
	nop

	blez	$2,.L441
	nop

.L436:
	li	$2,1			# 0x1
	b	.L439
	nop

.L441:
	move	$2,$0
.L439:
	move	$sp,$fp
	ld	$31,40($sp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	gl_isinfl
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.set	nomips16
	.set	micromips
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	$fp,48,$31		# vars= 16, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$fp,32($sp)
	sd	$28,24($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(_Qp_itoq)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_Qp_itoq)))
	sd	$4,0($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,8($fp)
	lw	$2,8($fp)
	mtc1	$2,$f0
	cvt.d.w	$f0,$f0
	ld	$2,%call16(__extenddftf2)($28)
	mov.d	$f12,$f0
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__extenddftf2
1:	jalrs	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$2,$4
	ld	$4,0($fp)
	sd	$3,8($4)
	sd	$2,0($4)
	nop
	move	$sp,$fp
	ld	$31,40($sp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	_Qp_itoq
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.set	nomips16
	.set	micromips
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	lui	$4,%hi(%neg(%gp_rel(ldexpf)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexpf)))
	swc1	$f12,16($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,20($fp)
	lwc1	$f1,16($fp)
	lwc1	$f0,16($fp)
	c.un.s	$fcc0,$f1,$f0
	bc1t	$fcc0,.L444
	nop

	lwc1	$f0,16($fp)
	add.s	$f0,$f0,$f0
	lwc1	$f1,16($fp)
	c.eq.s	$fcc1,$f1,$f0
	bc1t	$fcc1,.L444
	nop

	lw	$2,20($fp)
	bgez	$2,.L445
	nop

	ld	$2,%got_page(.LC6)($4)
	lwc1	$f0,%got_ofst(.LC6)($2)
	b	.L446
	nop

.L445:
	ld	$2,%got_page(.LC7)($4)
	lwc1	$f0,%got_ofst(.LC7)($2)
.L446:
	swc1	$f0,0($fp)
.L449:
	lw	$2,20($fp)
	andi	$2,$2,0x1
	beqzc	$2,.L447
	lwc1	$f1,16($fp)
	lwc1	$f0,0($fp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,16($fp)
.L447:
	lw	$2,20($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($fp)
	lw	$2,20($fp)
	beqzc	$2,.L451
	lwc1	$f0,0($fp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,0($fp)
	b	.L449
	nop

.L451:
	nop
.L444:
	lwc1	$f0,16($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	ldexpf
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.set	nomips16
	.set	micromips
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	lui	$4,%hi(%neg(%gp_rel(ldexp)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(ldexp)))
	sdc1	$f12,16($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,24($fp)
	ldc1	$f1,16($fp)
	ldc1	$f0,16($fp)
	c.un.d	$fcc0,$f1,$f0
	bc1t	$fcc0,.L453
	nop

	ldc1	$f0,16($fp)
	add.d	$f0,$f0,$f0
	ldc1	$f1,16($fp)
	c.eq.d	$fcc1,$f1,$f0
	bc1t	$fcc1,.L453
	nop

	lw	$2,24($fp)
	bgez	$2,.L454
	nop

	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	b	.L455
	nop

.L454:
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
.L455:
	sdc1	$f0,0($fp)
.L458:
	lw	$2,24($fp)
	andi	$2,$2,0x1
	beqzc	$2,.L456
	ldc1	$f1,16($fp)
	ldc1	$f0,0($fp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,16($fp)
.L456:
	lw	$2,24($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($fp)
	lw	$2,24($fp)
	beqzc	$2,.L460
	ldc1	$f0,0($fp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,0($fp)
	b	.L458
	nop

.L460:
	nop
.L453:
	ldc1	$f0,16($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	ldexp
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	.set	nomips16
	.set	micromips
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	$fp,80,$31		# vars= 48, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$fp,64($sp)
	sd	$28,56($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(ldexpl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(ldexpl)))
	sdc1	$f13,24($fp)
	sdc1	$f12,16($fp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,32($fp)
	ld	$2,%call16(__unordtf2)($28)
	ldc1	$f15,24($fp)
	ldc1	$f14,16($fp)
	ldc1	$f13,24($fp)
	ldc1	$f12,16($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__unordtf2
1:	jalrs	$25
	nop

	bnezc	$2,.L462
	ld	$5,24($fp)
	ld	$4,16($fp)
	ld	$2,%call16(__addtf3)($28)
	dmtc1	$5,$f15
	dmtc1	$4,$f14
	dmtc1	$5,$f13
	dmtc1	$4,$f12
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__addtf3
1:	jalrs	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$2,$4
	move	$5,$3
	move	$4,$2
	ld	$2,%call16(__netf2)($28)
	dmtc1	$5,$f15
	dmtc1	$4,$f14
	ldc1	$f13,24($fp)
	ldc1	$f12,16($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__netf2
1:	jalrs	$25
	nop

	beqzc	$2,.L462
	lw	$2,32($fp)
	bgez	$2,.L464
	nop

	ld	$2,%got_page(.LC10)($28)
	ld	$3,%got_ofst(.LC10+8)($2)
	ld	$2,%got_ofst(.LC10)($2)
	b	.L465
	nop

.L464:
	ld	$2,%got_page(.LC11)($28)
	ld	$3,%got_ofst(.LC11+8)($2)
	ld	$2,%got_ofst(.LC11)($2)
.L465:
	sd	$3,8($fp)
	sd	$2,0($fp)
.L468:
	lw	$2,32($fp)
	andi	$2,$2,0x1
	beqzc	$2,.L466
	ld	$2,%call16(__multf3)($28)
	ldc1	$f15,8($fp)
	ldc1	$f14,0($fp)
	ldc1	$f13,24($fp)
	ldc1	$f12,16($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalrs	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$2,$4
	sd	$3,24($fp)
	sd	$2,16($fp)
.L466:
	lw	$2,32($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,32($fp)
	lw	$2,32($fp)
	beqzc	$2,.L471
	ld	$2,%call16(__multf3)($28)
	ldc1	$f15,8($fp)
	ldc1	$f14,0($fp)
	ldc1	$f13,8($fp)
	ldc1	$f12,0($fp)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__multf3
1:	jalrs	$25
	nop

	dmfc1	$4,$f0
	dmfc1	$3,$f2
	move	$2,$4
	sd	$3,8($fp)
	sd	$2,0($fp)
	b	.L468
	nop

.L471:
	nop
.L462:
	ld	$3,24($fp)
	ld	$2,16($fp)
	move	$4,$2
	move	$2,$3
	dmtc1	$4,$f0
	dmtc1	$2,$f2
	move	$sp,$fp
	ld	$31,72($sp)
	ld	$fp,64($sp)
	ld	$28,56($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	ldexpl
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.set	nomips16
	.set	micromips
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	ld	$2,24($fp)
	sd	$2,0($fp)
	ld	$2,16($fp)
	sd	$2,8($fp)
	b	.L473
	nop

.L474:
	ld	$2,0($fp)
	daddiu	$3,$2,1
	sd	$3,0($fp)
	lb	$4,0($2)
	ld	$2,8($fp)
	daddiu	$3,$2,1
	sd	$3,8($fp)
	lb	$3,0($2)
	xor	$3,$3,$4
	seb	$3,$3
	sb	$3,0($2)
	ld	$2,32($fp)
	daddiu	$2,$2,-1
	sd	$2,32($fp)
.L473:
	ld	$2,32($fp)
	bnezc	$2,.L474
	ld	$2,16($fp)
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	memxor
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.set	nomips16
	.set	micromips
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	$fp,80,$31		# vars= 48, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$fp,64($sp)
	sd	$28,56($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(strncat)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strncat)))
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	ld	$4,16($fp)
	ld	$2,%got_disp(strlen)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalrs	$25
	nop

	move	$3,$2
	ld	$2,16($fp)
	daddu	$2,$2,$3
	sd	$2,0($fp)
	b	.L477
	nop

.L479:
	ld	$2,24($fp)
	daddiu	$2,$2,1
	sd	$2,24($fp)
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
	ld	$2,32($fp)
	daddiu	$2,$2,-1
	sd	$2,32($fp)
.L477:
	ld	$2,32($fp)
	beqzc	$2,.L478
	ld	$2,24($fp)
	lb	$3,0($2)
	ld	$2,0($fp)
	sb	$3,0($2)
	ld	$2,0($fp)
	lb	$2,0($2)
	bnezc	$2,.L479
.L478:
	ld	$2,32($fp)
	bnezc	$2,.L480
	ld	$2,0($fp)
	sb	$0,0($2)
.L480:
	ld	$2,16($fp)
	move	$sp,$fp
	ld	$31,72($sp)
	ld	$fp,64($sp)
	ld	$28,56($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	strncat
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.set	nomips16
	.set	micromips
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$0,0($fp)
	b	.L483
	nop

.L488:
	nop
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
.L483:
	ld	$3,0($fp)
	ld	$2,24($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L484
	ld	$3,16($fp)
	ld	$2,0($fp)
	daddu	$2,$3,$2
	lb	$2,0($2)
	bnezc	$2,.L488
.L484:
	ld	$2,0($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	strnlen
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.set	nomips16
	.set	micromips
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	b	.L490
	nop

.L494:
	ld	$2,24($fp)
	sd	$2,0($fp)
	b	.L491
	nop

.L493:
	ld	$2,0($fp)
	daddiu	$3,$2,1
	sd	$3,0($fp)
	lb	$2,0($2)
	ld	$3,16($fp)
	lb	$3,0($3)
	bne	$2,$3,.L491
	nop

	ld	$2,16($fp)
	b	.L492
	nop

.L491:
	ld	$2,0($fp)
	lb	$2,0($2)
	bnezc	$2,.L493
	ld	$2,16($fp)
	daddiu	$2,$2,1
	sd	$2,16($fp)
.L490:
	ld	$2,16($fp)
	lb	$2,0($2)
	bnezc	$2,.L494
	move	$2,$0
.L492:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	strpbrk
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.set	nomips16
	.set	micromips
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	move	$3,$5
	sll	$3,$3,0
	sw	$3,16($fp)
	sd	$0,0($fp)
.L497:
	lb	$3,0($2)
	move	$4,$3
	lw	$3,16($fp)
	bne	$3,$4,.L496
	nop

	sd	$2,0($fp)
.L496:
	move	$3,$2
	daddiu	$2,$3,1
	lb	$3,0($3)
	bnezc	$3,.L497
	ld	$2,0($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	strrchr
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.set	nomips16
	.set	micromips
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	$fp,64,$31		# vars= 32, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(strstr)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(strstr)))
	sd	$4,16($fp)
	sd	$5,24($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$4,24($fp)
	ld	$2,%got_disp(strlen)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,strlen
1:	jalrs	$25
	nop

	sd	$2,8($fp)
	ld	$2,8($fp)
	bnezc	$2,.L502
	ld	$2,16($fp)
	b	.L501
	nop

.L504:
	ld	$6,8($fp)
	ld	$5,24($fp)
	ld	$4,0($fp)
	ld	$2,%got_disp(strncmp)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,strncmp
1:	jalrs	$25
	nop

	bnezc	$2,.L503
	ld	$2,0($fp)
	b	.L501
	nop

.L503:
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
.L502:
	ld	$2,24($fp)
	lb	$2,0($2)
	move	$5,$2
	ld	$4,0($fp)
	ld	$2,%got_disp(strchr)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,strchr
1:	jalrs	$25
	nop

	sd	$2,0($fp)
	ld	$2,0($fp)
	bnezc	$2,.L504
	move	$2,$0
.L501:
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	strstr
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.set	nomips16
	.set	micromips
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sdc1	$f12,0($fp)
	sdc1	$f13,8($fp)
	ldc1	$f0,0($fp)
	dmtc1	$0,$f1
	c.lt.d	$fcc0,$f0,$f1
	bc1f	$fcc0,.L506
	nop

	ldc1	$f0,8($fp)
	dmtc1	$0,$f1
	c.lt.d	$fcc1,$f1,$f0
	bc1t	$fcc1,.L508
	nop

.L506:
	ldc1	$f0,0($fp)
	dmtc1	$0,$f1
	c.lt.d	$fcc2,$f1,$f0
	bc1f	$fcc2,.L509
	nop

	ldc1	$f0,8($fp)
	dmtc1	$0,$f1
	c.lt.d	$fcc3,$f0,$f1
	bc1f	$fcc3,.L509
	nop

.L508:
	ld	$3,0($fp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$2,$3
	b	.L512
	nop

.L509:
	ld	$2,0($fp)
.L512:
	dmtc1	$2,$f0
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	copysign
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.set	nomips16
	.set	micromips
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	$fp,80,$31		# vars= 48, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$fp,64($sp)
	sd	$28,56($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(memmem)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(memmem)))
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$6,32($fp)
	sd	$7,40($fp)
	ld	$3,24($fp)
	ld	$2,40($fp)
	dsubu	$2,$3,$2
	ld	$3,16($fp)
	daddu	$2,$3,$2
	sd	$2,8($fp)
	ld	$2,40($fp)
	bnezc	$2,.L516
	ld	$2,16($fp)
	b	.L517
	nop

.L516:
	ld	$3,24($fp)
	ld	$2,40($fp)
	sltu	$2,$3,$2
	andi	$2,$2,0x00ff
	beqzc	$2,.L518
	move	$2,$0
	b	.L517
	nop

.L518:
	ld	$2,16($fp)
	sd	$2,0($fp)
	b	.L519
	nop

.L521:
	ld	$2,0($fp)
	lb	$2,0($2)
	ld	$3,32($fp)
	lb	$3,0($3)
	bne	$2,$3,.L520
	nop

	ld	$2,0($fp)
	daddiu	$3,$2,1
	ld	$2,32($fp)
	daddiu	$4,$2,1
	ld	$2,40($fp)
	daddiu	$2,$2,-1
	move	$6,$2
	move	$5,$4
	move	$4,$3
	ld	$2,%got_disp(memcmp)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,memcmp
1:	jalrs	$25
	nop

	bnezc	$2,.L520
	ld	$2,0($fp)
	b	.L517
	nop

.L520:
	ld	$2,0($fp)
	daddiu	$2,$2,1
	sd	$2,0($fp)
.L519:
	ld	$3,0($fp)
	ld	$2,8($fp)
	sltu	$2,$2,$3
	beqzc	$2,.L521
	move	$2,$0
.L517:
	move	$sp,$fp
	ld	$31,72($sp)
	ld	$fp,64($sp)
	ld	$28,56($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	memmem
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.set	nomips16
	.set	micromips
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	$fp,64,$31		# vars= 32, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(mempcpy)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(mempcpy)))
	sd	$4,0($fp)
	sd	$5,8($fp)
	sd	$6,16($fp)
	ld	$6,16($fp)
	ld	$5,8($fp)
	ld	$4,0($fp)
	ld	$2,%got_disp(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,memcpy
1:	jalrs	$25
	nop

	move	$3,$2
	ld	$2,16($fp)
	daddu	$2,$3,$2
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	mempcpy
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.set	nomips16
	.set	micromips
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	lui	$4,%hi(%neg(%gp_rel(frexp)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(frexp)))
	sdc1	$f12,16($fp)
	sd	$5,24($fp)
	sw	$0,4($fp)
	sw	$0,0($fp)
	ldc1	$f0,16($fp)
	dmtc1	$0,$f1
	c.lt.d	$fcc0,$f0,$f1
	bc1f	$fcc0,.L525
	nop

	ld	$3,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$2,$3
	sd	$2,16($fp)
	li	$2,1			# 0x1
	sw	$2,0($fp)
.L525:
	ldc1	$f1,16($fp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L540
	nop

	b	.L529
	nop

.L530:
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
	ldc1	$f1,16($fp)
	ld	$2,%got_page(.LC9)($4)
	ldc1	$f0,%got_ofst(.LC9)($2)
	div.d	$f0,$f1,$f0
	sdc1	$f0,16($fp)
.L529:
	ldc1	$f1,16($fp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	c.le.d	$fcc2,$f0,$f1
	bc1t	$fcc2,.L530
	nop

	b	.L531
	nop

.L540:
	ldc1	$f1,16($fp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L531
	nop

	ldc1	$f0,16($fp)
	dmtc1	$0,$f1
	c.eq.d	$fcc4,$f0,$f1
	bc1t	$fcc4,.L531
	nop

	b	.L533
	nop

.L534:
	lw	$2,4($fp)
	addiu	$2,$2,-1
	sw	$2,4($fp)
	ldc1	$f0,16($fp)
	add.d	$f0,$f0,$f0
	sdc1	$f0,16($fp)
.L533:
	ldc1	$f1,16($fp)
	ld	$2,%got_page(.LC8)($4)
	ldc1	$f0,%got_ofst(.LC8)($2)
	c.lt.d	$fcc5,$f1,$f0
	bc1t	$fcc5,.L534
	nop

.L531:
	ld	$2,24($fp)
	lw	$3,4($fp)
	sw	$3,0($2)
	lw	$2,0($fp)
	beqzc	$2,.L535
	ld	$3,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$2,$2,63
	xor	$2,$2,$3
	sd	$2,16($fp)
.L535:
	ldc1	$f0,16($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	frexp
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.set	nomips16
	.set	micromips
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	sd	$0,0($fp)
	ld	$2,16($fp)
	sd	$2,8($fp)
	b	.L542
	nop

.L544:
	ld	$2,8($fp)
	andi	$2,$2,0x1
	beqzc	$2,.L543
	ld	$3,0($fp)
	ld	$2,24($fp)
	daddu	$2,$3,$2
	sd	$2,0($fp)
.L543:
	ld	$2,24($fp)
	dsll	$2,$2,1
	sd	$2,24($fp)
	ld	$2,8($fp)
	dsrl	$2,$2,1
	sd	$2,8($fp)
.L542:
	ld	$2,8($fp)
	bnezc	$2,.L544
	ld	$2,0($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__muldi3
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.set	nomips16
	.set	micromips
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sd	$6,24($fp)
	sll	$3,$3,0
	sw	$3,16($fp)
	sll	$2,$2,0
	sw	$2,20($fp)
	li	$2,1			# 0x1
	sw	$2,0($fp)
	sw	$0,4($fp)
	b	.L547
	nop

.L549:
	lw	$2,20($fp)
	sll	$2,$2,1
	sw	$2,20($fp)
	lw	$2,0($fp)
	sll	$2,$2,1
	sw	$2,0($fp)
.L547:
	lw	$3,20($fp)
	lw	$2,16($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L550
	lw	$2,0($fp)
	beqzc	$2,.L550
	lw	$2,20($fp)
	bgez	$2,.L549
	nop

	b	.L550
	nop

.L552:
	lw	$3,16($fp)
	lw	$2,20($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L551
	lw	$3,16($fp)
	lw	$2,20($fp)
	subu	$2,$3,$2
	sw	$2,16($fp)
	lw	$3,4($fp)
	lw	$2,0($fp)
	or	$2,$2,$3
	sw	$2,4($fp)
.L551:
	lw	$2,0($fp)
	srl	$2,$2,1
	sw	$2,0($fp)
	lw	$2,20($fp)
	srl	$2,$2,1
	sw	$2,20($fp)
.L550:
	lw	$2,0($fp)
	bnezc	$2,.L552
	ld	$2,24($fp)
	beqzc	$2,.L553
	lw	$2,16($fp)
	b	.L554
	nop

.L553:
	lw	$2,4($fp)
.L554:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	udivmodsi4
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.set	nomips16
	.set	micromips
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sb	$2,16($fp)
	lb	$2,16($fp)
	bgez	$2,.L556
	nop

	lbu	$2,16($fp)
	nor	$2,$0,$2
	sb	$2,16($fp)
.L556:
	lb	$2,16($fp)
	bnezc	$2,.L557
	li	$2,7			# 0x7
	b	.L558
	nop

.L557:
	lb	$2,16($fp)
	sll	$2,$2,8
	clz	$2,$2
	sw	$2,0($fp)
	lw	$2,0($fp)
	addiu	$2,$2,-1
.L558:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__clrsbqi2
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.set	nomips16
	.set	micromips
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	ld	$2,16($fp)
	bgez	$2,.L560
	nop

	ld	$2,16($fp)
	nor	$2,$0,$2
	sd	$2,16($fp)
.L560:
	ld	$2,16($fp)
	bnezc	$2,.L561
	li	$2,63			# 0x3f
	b	.L562
	nop

.L561:
	ld	$2,16($fp)
	dclz	$2,$2
	sw	$2,0($fp)
	lw	$2,0($fp)
	addiu	$2,$2,-1
.L562:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__clrsbdi2
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.set	nomips16
	.set	micromips
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,16($fp)
	sll	$2,$2,0
	sw	$2,20($fp)
	sw	$0,0($fp)
	b	.L564
	nop

.L566:
	lw	$2,16($fp)
	andi	$2,$2,0x1
	beqzc	$2,.L565
	lw	$3,0($fp)
	lw	$2,20($fp)
	addu	$2,$3,$2
	sw	$2,0($fp)
.L565:
	lw	$2,16($fp)
	srl	$2,$2,1
	sw	$2,16($fp)
	lw	$2,20($fp)
	sll	$2,$2,1
	sw	$2,20($fp)
.L564:
	lw	$2,16($fp)
	bnezc	$2,.L566
	lw	$2,0($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__mulsi3
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.set	nomips16
	.set	micromips
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	$fp,80,$31		# vars= 64, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$fp,72($sp)
	move	$fp,$sp
	sd	$4,32($fp)
	sd	$5,40($fp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,48($fp)
	lw	$2,48($fp)
	srl	$2,$2,3
	sw	$2,8($fp)
	lw	$3,48($fp)
	li	$2,-8			# 0xfffffffffffffff8
	and	$2,$3,$2
	sw	$2,4($fp)
	ld	$2,32($fp)
	sd	$2,16($fp)
	ld	$2,40($fp)
	sd	$2,24($fp)
	ld	$3,16($fp)
	ld	$2,24($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L569
	lwu	$2,48($fp)
	ld	$3,24($fp)
	daddu	$2,$3,$2
	ld	$3,16($fp)
	sltu	$2,$2,$3
	beqzc	$2,.L576
.L569:
	sw	$0,0($fp)
	b	.L571
	nop

.L572:
	lwu	$2,0($fp)
	dsll	$2,$2,3
	ld	$3,40($fp)
	daddu	$3,$3,$2
	lwu	$2,0($fp)
	dsll	$2,$2,3
	ld	$4,32($fp)
	daddu	$2,$4,$2
	ld	$3,0($3)
	sd	$3,0($2)
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L571:
	lw	$3,0($fp)
	lw	$2,8($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L572
	b	.L573
	nop

.L574:
	lwu	$2,4($fp)
	ld	$3,24($fp)
	daddu	$3,$3,$2
	lwu	$2,4($fp)
	ld	$4,16($fp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
.L573:
	lw	$3,48($fp)
	lw	$2,4($fp)
	sltu	$2,$2,$3
	bnezc	$2,.L574
	b	.L575
	nop

.L577:
	lwu	$2,48($fp)
	ld	$3,24($fp)
	daddu	$3,$3,$2
	lwu	$2,48($fp)
	ld	$4,16($fp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L576:
	lw	$2,48($fp)
	addiu	$3,$2,-1
	sw	$3,48($fp)
	bnezc	$2,.L577
	nop
.L575:
	nop
	move	$sp,$fp
	ld	$fp,72($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	__cmovd
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.set	nomips16
	.set	micromips
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	$fp,80,$31		# vars= 64, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$fp,72($sp)
	move	$fp,$sp
	sd	$4,32($fp)
	sd	$5,40($fp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,48($fp)
	lw	$2,48($fp)
	srl	$2,$2,1
	sw	$2,4($fp)
	ld	$2,32($fp)
	sd	$2,8($fp)
	ld	$2,40($fp)
	sd	$2,16($fp)
	ld	$3,8($fp)
	ld	$2,16($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L579
	lwu	$2,48($fp)
	ld	$3,16($fp)
	daddu	$2,$3,$2
	ld	$3,8($fp)
	sltu	$2,$2,$3
	beqzc	$2,.L585
.L579:
	sw	$0,0($fp)
	b	.L581
	nop

.L582:
	lwu	$2,0($fp)
	dsll	$2,$2,1
	ld	$3,40($fp)
	daddu	$3,$3,$2
	lwu	$2,0($fp)
	dsll	$2,$2,1
	ld	$4,32($fp)
	daddu	$2,$4,$2
	lh	$3,0($3)
	sh	$3,0($2)
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L581:
	lw	$3,0($fp)
	lw	$2,4($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L582
	lw	$2,48($fp)
	andi	$2,$2,0x1
	beqzc	$2,.L584
	lw	$2,48($fp)
	addiu	$2,$2,-1
	dext	$2,$2,0,32
	ld	$3,16($fp)
	daddu	$3,$3,$2
	lw	$2,48($fp)
	addiu	$2,$2,-1
	dext	$2,$2,0,32
	ld	$4,8($fp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	b	.L584
	nop

.L586:
	lwu	$2,48($fp)
	ld	$3,16($fp)
	daddu	$3,$3,$2
	lwu	$2,48($fp)
	ld	$4,8($fp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L585:
	lw	$2,48($fp)
	addiu	$3,$2,-1
	sw	$3,48($fp)
	bnezc	$2,.L586
	nop
.L584:
	nop
	move	$sp,$fp
	ld	$fp,72($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	__cmovh
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.set	nomips16
	.set	micromips
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	$fp,80,$31		# vars= 64, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$fp,72($sp)
	move	$fp,$sp
	sd	$4,32($fp)
	sd	$5,40($fp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,48($fp)
	lw	$2,48($fp)
	srl	$2,$2,2
	sw	$2,8($fp)
	lw	$3,48($fp)
	li	$2,-4			# 0xfffffffffffffffc
	and	$2,$3,$2
	sw	$2,4($fp)
	ld	$2,32($fp)
	sd	$2,16($fp)
	ld	$2,40($fp)
	sd	$2,24($fp)
	ld	$3,16($fp)
	ld	$2,24($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L588
	lwu	$2,48($fp)
	ld	$3,24($fp)
	daddu	$2,$3,$2
	ld	$3,16($fp)
	sltu	$2,$2,$3
	beqzc	$2,.L595
.L588:
	sw	$0,0($fp)
	b	.L590
	nop

.L591:
	lwu	$2,0($fp)
	dsll	$2,$2,2
	ld	$3,40($fp)
	daddu	$3,$3,$2
	lwu	$2,0($fp)
	dsll	$2,$2,2
	ld	$4,32($fp)
	daddu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L590:
	lw	$3,0($fp)
	lw	$2,8($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L591
	b	.L592
	nop

.L593:
	lwu	$2,4($fp)
	ld	$3,24($fp)
	daddu	$3,$3,$2
	lwu	$2,4($fp)
	ld	$4,16($fp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
.L592:
	lw	$3,48($fp)
	lw	$2,4($fp)
	sltu	$2,$2,$3
	bnezc	$2,.L593
	b	.L594
	nop

.L596:
	lwu	$2,48($fp)
	ld	$3,24($fp)
	daddu	$3,$3,$2
	lwu	$2,48($fp)
	ld	$4,16($fp)
	daddu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
.L595:
	lw	$2,48($fp)
	addiu	$3,$2,-1
	sw	$3,48($fp)
	bnezc	$2,.L596
	nop
.L594:
	nop
	move	$sp,$fp
	ld	$fp,72($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	__cmovw
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.set	nomips16
	.set	micromips
	.ent	__modi
	.type	__modi, @function
__modi:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($fp)
	sll	$2,$2,0
	sw	$2,4($fp)
	lw	$3,0($fp)
	lw	$2,4($fp)
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__modi
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.set	nomips16
	.set	micromips
	.ent	__uitod
	.type	__uitod, @function
__uitod:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lwu	$2,0($fp)
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__uitod
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.set	nomips16
	.set	micromips
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lwu	$2,0($fp)
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__uitof
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.set	nomips16
	.set	micromips
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	ld	$2,0($fp)
	bltz	$2,.L605
	nop

	ld	$2,0($fp)
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	b	.L606
	nop

.L605:
	ld	$2,0($fp)
	andi	$2,$2,0x1
	ld	$3,0($fp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	cvt.d.l	$f0,$f0
	add.d	$f0,$f0,$f0
.L606:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__ulltod
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.set	nomips16
	.set	micromips
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	ld	$2,0($fp)
	bltz	$2,.L609
	nop

	ld	$2,0($fp)
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	b	.L610
	nop

.L609:
	ld	$2,0($fp)
	andi	$2,$2,0x1
	ld	$3,0($fp)
	dsrl	$3,$3,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	cvt.s.l	$f0,$f0
	add.s	$f0,$f0,$f0
.L610:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__ulltof
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.set	nomips16
	.set	micromips
	.ent	__umodi
	.type	__umodi, @function
__umodi:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,0($fp)
	sll	$2,$2,0
	sw	$2,4($fp)
	lw	$3,0($fp)
	lw	$2,4($fp)
	divu	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__umodi
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.set	nomips16
	.set	micromips
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sh	$2,16($fp)
	sw	$0,0($fp)
	b	.L614
	nop

.L617:
	lhu	$2,16($fp)
	li	$4,15			# 0xf
	lw	$3,0($fp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sra	$2,$2,$3
	andi	$2,$2,0x1
	bnezc	$2,.L619
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L614:
	lw	$2,0($fp)
	slt	$2,$2,16
	bnezc	$2,.L617
	b	.L616
	nop

.L619:
	nop
.L616:
	lw	$2,0($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__clzhi2
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.set	nomips16
	.set	micromips
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sh	$2,16($fp)
	sw	$0,0($fp)
	b	.L621
	nop

.L624:
	lhu	$2,16($fp)
	move	$3,$2
	lw	$2,0($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	bnezc	$2,.L626
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L621:
	lw	$2,0($fp)
	slt	$2,$2,16
	bnezc	$2,.L624
	b	.L623
	nop

.L626:
	nop
.L623:
	lw	$2,0($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__ctzhi2
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.set	nomips16
	.set	micromips
	.ent	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	lui	$4,%hi(%neg(%gp_rel(__fixunssfsi)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__fixunssfsi)))
	swc1	$f12,0($fp)
	lwc1	$f1,0($fp)
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	c.le.s	$fcc0,$f0,$f1
	bc1f	$fcc0,.L632
	nop

	lwc1	$f1,0($fp)
	ld	$2,%got_page(.LC13)($4)
	lwc1	$f0,%got_ofst(.LC13)($2)
	sub.s	$f0,$f1,$f0
	trunc.l.s $f0,$f0
	dmfc1	$3,$f0
	li	$2,32768			# 0x8000
	daddu	$2,$3,$2
	b	.L630
	nop

.L632:
	lwc1	$f0,0($fp)
	trunc.l.s $f0,$f0
	dmfc1	$2,$f0
.L630:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__fixunssfsi
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.set	nomips16
	.set	micromips
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sh	$2,16($fp)
	sw	$0,4($fp)
	sw	$0,0($fp)
	b	.L634
	nop

.L636:
	lhu	$2,16($fp)
	move	$3,$2
	lw	$2,0($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beqzc	$2,.L635
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
.L635:
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L634:
	lw	$2,0($fp)
	slt	$2,$2,16
	bnezc	$2,.L636
	lw	$2,4($fp)
	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__parityhi2
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.set	nomips16
	.set	micromips
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sh	$2,16($fp)
	sw	$0,4($fp)
	sw	$0,0($fp)
	b	.L639
	nop

.L641:
	lhu	$2,16($fp)
	move	$3,$2
	lw	$2,0($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	beqzc	$2,.L640
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
.L640:
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L639:
	lw	$2,0($fp)
	slt	$2,$2,16
	bnezc	$2,.L641
	lw	$2,4($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__popcounthi2
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.set	nomips16
	.set	micromips
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,16($fp)
	sll	$2,$2,0
	sw	$2,20($fp)
	sw	$0,0($fp)
	b	.L644
	nop

.L646:
	lw	$2,16($fp)
	andi	$2,$2,0x1
	beqzc	$2,.L645
	lw	$3,0($fp)
	lw	$2,20($fp)
	addu	$2,$3,$2
	sw	$2,0($fp)
.L645:
	lw	$2,16($fp)
	srl	$2,$2,1
	sw	$2,16($fp)
	lw	$2,20($fp)
	sll	$2,$2,1
	sw	$2,20($fp)
.L644:
	lw	$2,16($fp)
	bnezc	$2,.L646
	lw	$2,0($fp)
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__mulsi3_iq2000
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.set	nomips16
	.set	micromips
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,16($fp)
	sll	$2,$2,0
	sw	$2,20($fp)
	sw	$0,0($fp)
	lw	$2,16($fp)
	bnezc	$2,.L651
	move	$2,$0
	b	.L650
	nop

.L653:
	lw	$2,20($fp)
	andi	$2,$2,0x1
	beqzc	$2,.L652
	lw	$3,0($fp)
	lw	$2,16($fp)
	addu	$2,$3,$2
	sw	$2,0($fp)
.L652:
	lw	$2,16($fp)
	sll	$2,$2,1
	sw	$2,16($fp)
	lw	$2,20($fp)
	srl	$2,$2,1
	sw	$2,20($fp)
.L651:
	lw	$2,20($fp)
	bnezc	$2,.L653
	lw	$2,0($fp)
.L650:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__mulsi3_lm32
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.set	nomips16
	.set	micromips
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$3,$5
	move	$2,$6
	sll	$4,$4,0
	sw	$4,16($fp)
	sll	$3,$3,0
	sw	$3,20($fp)
	sll	$2,$2,0
	sw	$2,24($fp)
	li	$2,1			# 0x1
	sw	$2,0($fp)
	sw	$0,4($fp)
	b	.L655
	nop

.L657:
	lw	$2,20($fp)
	sll	$2,$2,1
	sw	$2,20($fp)
	lw	$2,0($fp)
	sll	$2,$2,1
	sw	$2,0($fp)
.L655:
	lw	$3,20($fp)
	lw	$2,16($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L658
	lw	$2,0($fp)
	beqzc	$2,.L658
	lw	$2,20($fp)
	bgez	$2,.L657
	nop

	b	.L658
	nop

.L660:
	lw	$3,16($fp)
	lw	$2,20($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L659
	lw	$3,16($fp)
	lw	$2,20($fp)
	subu	$2,$3,$2
	sw	$2,16($fp)
	lw	$3,4($fp)
	lw	$2,0($fp)
	or	$2,$2,$3
	sw	$2,4($fp)
.L659:
	lw	$2,0($fp)
	srl	$2,$2,1
	sw	$2,0($fp)
	lw	$2,20($fp)
	srl	$2,$2,1
	sw	$2,20($fp)
.L658:
	lw	$2,0($fp)
	bnezc	$2,.L660
	lw	$2,24($fp)
	beqzc	$2,.L661
	lw	$2,16($fp)
	b	.L662
	nop

.L661:
	lw	$2,4($fp)
.L662:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__udivmodsi4
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.set	nomips16
	.set	micromips
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	swc1	$f12,0($fp)
	swc1	$f13,4($fp)
	lwc1	$f1,0($fp)
	lwc1	$f0,4($fp)
	c.lt.s	$fcc0,$f1,$f0
	bc1f	$fcc0,.L671
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L666
	nop

.L671:
	lwc1	$f1,0($fp)
	lwc1	$f0,4($fp)
	c.lt.s	$fcc1,$f0,$f1
	bc1f	$fcc1,.L672
	nop

	li	$2,1			# 0x1
	b	.L666
	nop

.L672:
	move	$2,$0
.L666:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__mspabi_cmpf
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.set	nomips16
	.set	micromips
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sdc1	$f12,0($fp)
	sdc1	$f13,8($fp)
	ldc1	$f1,0($fp)
	ldc1	$f0,8($fp)
	c.lt.d	$fcc0,$f1,$f0
	bc1f	$fcc0,.L681
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	.L676
	nop

.L681:
	ldc1	$f1,0($fp)
	ldc1	$f0,8($fp)
	c.lt.d	$fcc1,$f0,$f1
	bc1f	$fcc1,.L682
	nop

	li	$2,1			# 0x1
	b	.L676
	nop

.L682:
	move	$2,$0
.L676:
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__mspabi_cmpd
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.set	nomips16
	.set	micromips
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	sd	$5,8($fp)
	ld	$3,0($fp)
	ld	$2,8($fp)
	dmult	$3,$2
	mflo	$2
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__mspabi_mpysll
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.set	nomips16
	.set	micromips
	.ent	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	sd	$5,8($fp)
	ld	$3,0($fp)
	ld	$2,8($fp)
	dmult	$3,$2
	mflo	$2
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__mspabi_mpyull
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.set	nomips16
	.set	micromips
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,16($fp)
	sll	$2,$2,0
	sw	$2,20($fp)
	sw	$0,4($fp)
	sw	$0,8($fp)
	lw	$2,20($fp)
	bgez	$2,.L688
	nop

	lw	$2,20($fp)
	subu	$2,$0,$2
	sw	$2,20($fp)
	li	$2,1			# 0x1
	sw	$2,4($fp)
.L688:
	sb	$0,0($fp)
	b	.L689
	nop

.L692:
	lw	$2,20($fp)
	andi	$2,$2,0x1
	beqzc	$2,.L690
	lw	$3,8($fp)
	lw	$2,16($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
.L690:
	lw	$2,16($fp)
	sll	$2,$2,1
	sw	$2,16($fp)
	lw	$2,20($fp)
	sra	$2,$2,1
	sw	$2,20($fp)
	lb	$2,0($fp)
	andi	$2,$2,0x00ff
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,0($fp)
.L689:
	lw	$2,20($fp)
	beqzc	$2,.L691
	lbu	$2,0($fp)
	sltu	$2,$2,32
	bnezc	$2,.L692
.L691:
	lw	$2,4($fp)
	beqzc	$2,.L693
	lw	$2,8($fp)
	subu	$2,$0,$2
	b	.L694
	nop

.L693:
	lw	$2,8($fp)
.L694:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__mulhi3
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.set	nomips16
	.set	micromips
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	$fp,64,$31		# vars= 32, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__divsi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__divsi3)))
	sd	$4,16($fp)
	sd	$5,24($fp)
	sw	$0,0($fp)
	ld	$2,16($fp)
	bgez	$2,.L697
	nop

	ld	$2,16($fp)
	dsubu	$2,$0,$2
	sd	$2,16($fp)
	lw	$2,0($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($fp)
.L697:
	ld	$2,24($fp)
	bgez	$2,.L698
	nop

	ld	$2,24($fp)
	dsubu	$2,$0,$2
	sd	$2,24($fp)
	lw	$2,0($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,0($fp)
.L698:
	lw	$2,20($fp)
	lw	$3,28($fp)
	move	$6,$0
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__udivmodsi4)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalrs	$25
	nop

	dext	$2,$2,0,32
	sd	$2,8($fp)
	lw	$2,0($fp)
	beqzc	$2,.L699
	ld	$2,8($fp)
	dsubu	$2,$0,$2
	sd	$2,8($fp)
.L699:
	ld	$2,8($fp)
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__divsi3
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.set	nomips16
	.set	micromips
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	$fp,64,$31		# vars= 32, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__modsi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__modsi3)))
	sd	$4,16($fp)
	sd	$5,24($fp)
	sw	$0,0($fp)
	ld	$2,16($fp)
	bgez	$2,.L702
	nop

	ld	$2,16($fp)
	dsubu	$2,$0,$2
	sd	$2,16($fp)
	li	$2,1			# 0x1
	sw	$2,0($fp)
.L702:
	ld	$2,24($fp)
	bgez	$2,.L703
	nop

	ld	$2,24($fp)
	dsubu	$2,$0,$2
	sd	$2,24($fp)
.L703:
	lw	$2,20($fp)
	lw	$3,28($fp)
	li	$6,1			# 0x1
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__udivmodsi4)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__udivmodsi4
1:	jalrs	$25
	nop

	dext	$2,$2,0,32
	sd	$2,8($fp)
	lw	$2,0($fp)
	beqzc	$2,.L704
	ld	$2,8($fp)
	dsubu	$2,$0,$2
	sd	$2,8($fp)
.L704:
	ld	$2,8($fp)
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__modsi3
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.set	nomips16
	.set	micromips
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$3,$5
	move	$2,$6
	sll	$4,$4,0
	sh	$4,16($fp)
	sll	$3,$3,0
	sh	$3,18($fp)
	sll	$2,$2,0
	sw	$2,20($fp)
	li	$2,1			# 0x1
	sh	$2,0($fp)
	sh	$0,2($fp)
	b	.L707
	nop

.L709:
	lhu	$2,18($fp)
	sll	$2,$2,1
	sh	$2,18($fp)
	lhu	$2,0($fp)
	sll	$2,$2,1
	sh	$2,0($fp)
.L707:
	lhu	$3,18($fp)
	lhu	$2,16($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L710
	lhu	$2,0($fp)
	beqzc	$2,.L710
	lh	$2,18($fp)
	bgez	$2,.L709
	nop

	b	.L710
	nop

.L712:
	lhu	$3,16($fp)
	lhu	$2,18($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L711
	lhu	$3,16($fp)
	lhu	$2,18($fp)
	subu	$2,$3,$2
	sh	$2,16($fp)
	lhu	$3,2($fp)
	lhu	$2,0($fp)
	or	$2,$2,$3
	sh	$2,2($fp)
.L711:
	lhu	$2,0($fp)
	srl	$2,$2,1
	sh	$2,0($fp)
	lhu	$2,18($fp)
	srl	$2,$2,1
	sh	$2,18($fp)
.L710:
	lhu	$2,0($fp)
	bnezc	$2,.L712
	lw	$2,20($fp)
	beqzc	$2,.L713
	lhu	$2,16($fp)
	b	.L714
	nop

.L713:
	lhu	$2,2($fp)
.L714:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__udivmodhi4
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.set	nomips16
	.set	micromips
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,32($fp)
	li	$2,1			# 0x1
	sd	$2,0($fp)
	sd	$0,8($fp)
	b	.L716
	nop

.L718:
	ld	$2,24($fp)
	dsll	$2,$2,1
	sd	$2,24($fp)
	ld	$2,0($fp)
	dsll	$2,$2,1
	sd	$2,0($fp)
.L716:
	ld	$3,24($fp)
	ld	$2,16($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L719
	ld	$2,0($fp)
	beqzc	$2,.L719
	ld	$3,24($fp)
	li	$2,1			# 0x1
	dsll	$2,$2,31
	and	$2,$3,$2
	beqzc	$2,.L718
	b	.L719
	nop

.L721:
	ld	$3,16($fp)
	ld	$2,24($fp)
	sltu	$2,$3,$2
	bnezc	$2,.L720
	ld	$3,16($fp)
	ld	$2,24($fp)
	dsubu	$2,$3,$2
	sd	$2,16($fp)
	ld	$3,8($fp)
	ld	$2,0($fp)
	or	$2,$2,$3
	sd	$2,8($fp)
.L720:
	ld	$2,0($fp)
	dsrl	$2,$2,1
	sd	$2,0($fp)
	ld	$2,24($fp)
	dsrl	$2,$2,1
	sd	$2,24($fp)
.L719:
	ld	$2,0($fp)
	bnezc	$2,.L721
	lw	$2,32($fp)
	beqzc	$2,.L722
	ld	$2,16($fp)
	b	.L723
	nop

.L722:
	ld	$2,8($fp)
.L723:
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__udivmodsi4_libgcc
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.set	nomips16
	.set	micromips
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,32($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,40($fp)
	li	$2,32			# 0x20
	sw	$2,0($fp)
	ld	$2,32($fp)
	sd	$2,8($fp)
	lw	$3,40($fp)
	lw	$2,0($fp)
	and	$2,$3,$2
	beqzc	$2,.L725
	sw	$0,20($fp)
	lw	$2,12($fp)
	lw	$4,40($fp)
	lw	$3,0($fp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sll	$2,$2,$3
	sw	$2,16($fp)
	b	.L726
	nop

.L725:
	lw	$2,40($fp)
	bnezc	$2,.L727
	ld	$2,32($fp)
	b	.L729
	nop

.L727:
	lw	$3,12($fp)
	lw	$2,40($fp)
	sll	$2,$3,$2
	sw	$2,20($fp)
	lw	$2,8($fp)
	move	$3,$2
	lw	$2,40($fp)
	sll	$2,$3,$2
	move	$3,$2
	lw	$2,12($fp)
	lw	$5,0($fp)
	lw	$4,40($fp)
	subu	$4,$5,$4
	sll	$4,$4,0
	srl	$2,$2,$4
	or	$2,$2,$3
	sw	$2,16($fp)
.L726:
	ld	$2,16($fp)
.L729:
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__ashldi3
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashlti3
	.set	nomips16
	.set	micromips
	.ent	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.frame	$fp,96,$31		# vars= 80, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$fp,88($sp)
	move	$fp,$sp
	sd	$5,56($fp)
	sd	$4,48($fp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,64($fp)
	li	$2,64			# 0x40
	sw	$2,0($fp)
	ld	$3,56($fp)
	ld	$2,48($fp)
	sd	$3,24($fp)
	sd	$2,16($fp)
	lw	$3,64($fp)
	lw	$2,0($fp)
	and	$2,$3,$2
	beqzc	$2,.L731
	sd	$0,40($fp)
	ld	$2,24($fp)
	lw	$4,64($fp)
	lw	$3,0($fp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsll	$2,$2,$3
	sd	$2,32($fp)
	b	.L732
	nop

.L731:
	lw	$2,64($fp)
	bnezc	$2,.L733
	ld	$3,56($fp)
	ld	$2,48($fp)
	b	.L735
	nop

.L733:
	ld	$3,24($fp)
	lw	$2,64($fp)
	dsll	$2,$3,$2
	sd	$2,40($fp)
	ld	$2,16($fp)
	move	$3,$2
	lw	$2,64($fp)
	dsll	$3,$3,$2
	ld	$2,24($fp)
	lw	$5,0($fp)
	lw	$4,64($fp)
	subu	$4,$5,$4
	sll	$4,$4,0
	dsrl	$2,$2,$4
	or	$2,$2,$3
	sd	$2,32($fp)
.L732:
	ld	$3,40($fp)
	ld	$2,32($fp)
.L735:
	move	$sp,$fp
	ld	$fp,88($sp)
	jraddiusp	96
	.set	macro
	.set	reorder
	.end	__ashlti3
	.size	__ashlti3, .-__ashlti3
	.align	2
	.globl	__ashrdi3
	.set	nomips16
	.set	micromips
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,32($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,40($fp)
	li	$2,32			# 0x20
	sw	$2,0($fp)
	ld	$2,32($fp)
	sd	$2,8($fp)
	lw	$3,40($fp)
	lw	$2,0($fp)
	and	$2,$3,$2
	beqzc	$2,.L737
	lw	$2,8($fp)
	lw	$3,0($fp)
	addiu	$3,$3,-1
	sll	$3,$3,0
	sra	$2,$2,$3
	sw	$2,16($fp)
	lw	$2,8($fp)
	lw	$4,40($fp)
	lw	$3,0($fp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sra	$2,$2,$3
	sw	$2,20($fp)
	b	.L738
	nop

.L737:
	lw	$2,40($fp)
	bnezc	$2,.L739
	ld	$2,32($fp)
	b	.L741
	nop

.L739:
	lw	$3,8($fp)
	lw	$2,40($fp)
	sra	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,8($fp)
	move	$4,$2
	lw	$3,0($fp)
	lw	$2,40($fp)
	subu	$2,$3,$2
	sll	$2,$2,0
	sll	$2,$4,$2
	move	$3,$2
	lw	$4,12($fp)
	lw	$2,40($fp)
	srl	$2,$4,$2
	or	$2,$2,$3
	sw	$2,20($fp)
.L738:
	ld	$2,16($fp)
.L741:
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__ashrdi3
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__ashrti3
	.set	nomips16
	.set	micromips
	.ent	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.frame	$fp,96,$31		# vars= 80, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$fp,88($sp)
	move	$fp,$sp
	sd	$5,56($fp)
	sd	$4,48($fp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,64($fp)
	li	$2,64			# 0x40
	sw	$2,0($fp)
	ld	$3,56($fp)
	ld	$2,48($fp)
	sd	$3,24($fp)
	sd	$2,16($fp)
	lw	$3,64($fp)
	lw	$2,0($fp)
	and	$2,$3,$2
	beqzc	$2,.L743
	ld	$2,16($fp)
	lw	$3,0($fp)
	addiu	$3,$3,-1
	sll	$3,$3,0
	dsra	$2,$2,$3
	sd	$2,32($fp)
	ld	$2,16($fp)
	lw	$4,64($fp)
	lw	$3,0($fp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsra	$2,$2,$3
	sd	$2,40($fp)
	b	.L744
	nop

.L743:
	lw	$2,64($fp)
	bnezc	$2,.L745
	ld	$3,56($fp)
	ld	$2,48($fp)
	b	.L747
	nop

.L745:
	ld	$3,16($fp)
	lw	$2,64($fp)
	dsra	$2,$3,$2
	sd	$2,32($fp)
	ld	$2,16($fp)
	move	$4,$2
	lw	$3,0($fp)
	lw	$2,64($fp)
	subu	$2,$3,$2
	sll	$2,$2,0
	dsll	$3,$4,$2
	ld	$4,24($fp)
	lw	$2,64($fp)
	dsrl	$2,$4,$2
	or	$2,$2,$3
	sd	$2,40($fp)
.L744:
	ld	$3,40($fp)
	ld	$2,32($fp)
.L747:
	move	$sp,$fp
	ld	$fp,88($sp)
	jraddiusp	96
	.set	macro
	.set	reorder
	.end	__ashrti3
	.size	__ashrti3, .-__ashrti3
	.align	2
	.globl	__bswapdi2
	.set	nomips16
	.set	micromips
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	ld	$2,0($fp)
	dsrl	$3,$2,56
	ld	$2,0($fp)
	dsrl	$2,$2,40
	andi	$2,$2,0xff00
	or	$3,$3,$2
	ld	$2,0($fp)
	dsrl	$4,$2,24
	li	$2,16711680			# 0xff0000
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($fp)
	dsrl	$4,$2,8
	li	$2,255			# 0xff
	dsll	$2,$2,24
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($fp)
	dsll	$4,$2,8
	li	$2,255			# 0xff
	dsll	$2,$2,32
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($fp)
	dsll	$4,$2,24
	li	$2,255			# 0xff
	dsll	$2,$2,40
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($fp)
	dsll	$4,$2,40
	li	$2,255			# 0xff
	dsll	$2,$2,48
	and	$2,$4,$2
	or	$3,$3,$2
	ld	$2,0($fp)
	dsll	$2,$2,56
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__bswapdi2
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.set	nomips16
	.set	micromips
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,24
	move	$3,$2
	lw	$2,0($fp)
	srl	$2,$2,8
	andi	$2,$2,0xff00
	or	$2,$2,$3
	move	$3,$2
	lw	$2,0($fp)
	sll	$2,$2,8
	move	$4,$2
	li	$2,16711680			# 0xff0000
	and	$2,$4,$2
	or	$2,$2,$3
	move	$3,$2
	lw	$2,0($fp)
	sll	$2,$2,24
	or	$2,$2,$3
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__bswapsi2
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.set	nomips16
	.set	micromips
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($fp)
	lw	$2,16($fp)
	sw	$2,0($fp)
	lw	$3,0($fp)
	li	$2,65536			# 0x10000
	sltu	$2,$3,$2
	beqzc	$2,.L753
	li	$2,16			# 0x10
	b	.L754
	nop

.L753:
	move	$2,$0
.L754:
	sw	$2,4($fp)
	li	$3,16			# 0x10
	lw	$2,4($fp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($fp)
	srl	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,4($fp)
	sw	$2,8($fp)
	lw	$2,0($fp)
	andi	$2,$2,0xff00
	bnezc	$2,.L755
	li	$2,8			# 0x8
	b	.L756
	nop

.L755:
	move	$2,$0
.L756:
	sw	$2,4($fp)
	li	$3,8			# 0x8
	lw	$2,4($fp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($fp)
	srl	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,4($fp)
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,0($fp)
	andi	$2,$2,0xf0
	bnezc	$2,.L757
	li	$2,4			# 0x4
	b	.L758
	nop

.L757:
	move	$2,$0
.L758:
	sw	$2,4($fp)
	li	$3,4			# 0x4
	lw	$2,4($fp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($fp)
	srl	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,4($fp)
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,0($fp)
	andi	$2,$2,0xc
	bnezc	$2,.L759
	li	$2,2			# 0x2
	b	.L760
	nop

.L759:
	move	$2,$0
.L760:
	sw	$2,4($fp)
	li	$3,2			# 0x2
	lw	$2,4($fp)
	subu	$2,$3,$2
	sll	$3,$2,0
	lw	$2,0($fp)
	srl	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,4($fp)
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,0($fp)
	andi	$2,$2,0x2
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	move	$4,$2
	li	$3,2			# 0x2
	lw	$2,0($fp)
	subu	$2,$3,$2
	mult	$4,$2
	mflo	$2
	lw	$3,8($fp)
	addu	$2,$3,$2
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__clzsi2
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__clzti2
	.set	nomips16
	.set	micromips
	.ent	__clzti2
	.type	__clzti2, @function
__clzti2:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$5,40($fp)
	sd	$4,32($fp)
	ld	$3,40($fp)
	ld	$2,32($fp)
	sd	$3,24($fp)
	sd	$2,16($fp)
	ld	$2,16($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	subu	$2,$0,$2
	sd	$2,0($fp)
	ld	$3,16($fp)
	ld	$2,0($fp)
	nor	$2,$0,$2
	and	$2,$3,$2
	move	$4,$2
	ld	$3,24($fp)
	ld	$2,0($fp)
	and	$2,$3,$2
	or	$2,$2,$4
	dclz	$2,$2
	sll	$2,$2,0
	move	$3,$2
	lw	$2,4($fp)
	andi	$2,$2,0x40
	addu	$2,$3,$2
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__clzti2
	.size	__clzti2, .-__clzti2
	.align	2
	.globl	__cmpdi2
	.set	nomips16
	.set	micromips
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	lw	$3,0($fp)
	lw	$2,8($fp)
	slt	$2,$3,$2
	beqzc	$2,.L765
	move	$2,$0
	b	.L770
	nop

.L765:
	lw	$3,0($fp)
	lw	$2,8($fp)
	slt	$2,$2,$3
	beqzc	$2,.L767
	li	$2,2			# 0x2
	b	.L770
	nop

.L767:
	lw	$3,4($fp)
	lw	$2,12($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L768
	move	$2,$0
	b	.L770
	nop

.L768:
	lw	$3,4($fp)
	lw	$2,12($fp)
	sltu	$2,$2,$3
	beqzc	$2,.L769
	li	$2,2			# 0x2
	b	.L770
	nop

.L769:
	li	$2,1			# 0x1
.L770:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__cmpdi2
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.set	nomips16
	.set	micromips
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	$fp,48,$31		# vars= 16, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$fp,32($sp)
	sd	$28,24($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__aeabi_lcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_lcmp)))
	sd	$4,0($fp)
	sd	$5,8($fp)
	ld	$5,8($fp)
	ld	$4,0($fp)
	ld	$2,%got_disp(__cmpdi2)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__cmpdi2
1:	jalrs	$25
	nop

	addiu	$2,$2,-1
	move	$sp,$fp
	ld	$31,40($sp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__aeabi_lcmp
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__cmpti2
	.set	nomips16
	.set	micromips
	.ent	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.frame	$fp,80,$31		# vars= 64, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$fp,72($sp)
	move	$fp,$sp
	sd	$5,40($fp)
	sd	$4,32($fp)
	sd	$7,56($fp)
	sd	$6,48($fp)
	ld	$3,40($fp)
	ld	$2,32($fp)
	sd	$3,8($fp)
	sd	$2,0($fp)
	ld	$3,56($fp)
	ld	$2,48($fp)
	sd	$3,24($fp)
	sd	$2,16($fp)
	ld	$3,0($fp)
	ld	$2,16($fp)
	slt	$2,$3,$2
	beqzc	$2,.L774
	move	$2,$0
	b	.L779
	nop

.L774:
	ld	$3,0($fp)
	ld	$2,16($fp)
	slt	$2,$2,$3
	beqzc	$2,.L776
	li	$2,2			# 0x2
	b	.L779
	nop

.L776:
	ld	$3,8($fp)
	ld	$2,24($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L777
	move	$2,$0
	b	.L779
	nop

.L777:
	ld	$3,8($fp)
	ld	$2,24($fp)
	sltu	$2,$2,$3
	beqzc	$2,.L778
	li	$2,2			# 0x2
	b	.L779
	nop

.L778:
	li	$2,1			# 0x1
.L779:
	move	$sp,$fp
	ld	$fp,72($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	__cmpti2
	.size	__cmpti2, .-__cmpti2
	.align	2
	.globl	__ctzsi2
	.set	nomips16
	.set	micromips
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($fp)
	lw	$2,16($fp)
	sw	$2,0($fp)
	lw	$2,0($fp)
	andi	$2,$2,0xffff
	bnezc	$2,.L781
	li	$2,16			# 0x10
	b	.L782
	nop

.L781:
	move	$2,$0
.L782:
	sw	$2,4($fp)
	lw	$3,0($fp)
	lw	$2,4($fp)
	srl	$2,$3,$2
	sw	$2,0($fp)
	lw	$2,4($fp)
	sw	$2,8($fp)
	lw	$2,0($fp)
	andi	$2,$2,0xff
	bnezc	$2,.L783
	li	$2,8			# 0x8
	b	.L784
	nop

.L783:
	move	$2,$0
.L784:
	sw	$2,4($fp)
	lw	$3,0($fp)
	lw	$2,4($fp)
	srl	$2,$3,$2
	sw	$2,0($fp)
	lw	$2,4($fp)
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,0($fp)
	andi	$2,$2,0xf
	bnezc	$2,.L785
	li	$2,4			# 0x4
	b	.L786
	nop

.L785:
	move	$2,$0
.L786:
	sw	$2,4($fp)
	lw	$3,0($fp)
	lw	$2,4($fp)
	srl	$2,$3,$2
	sw	$2,0($fp)
	lw	$2,4($fp)
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,0($fp)
	andi	$2,$2,0x3
	bnezc	$2,.L787
	li	$2,2			# 0x2
	b	.L788
	nop

.L787:
	move	$2,$0
.L788:
	sw	$2,4($fp)
	lw	$3,0($fp)
	lw	$2,4($fp)
	srl	$2,$3,$2
	sw	$2,0($fp)
	lw	$2,0($fp)
	andi	$2,$2,0x3
	sw	$2,0($fp)
	lw	$2,4($fp)
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,0($fp)
	nor	$2,$0,$2
	andi	$2,$2,0x1
	move	$3,$2
	lw	$2,0($fp)
	srl	$2,$2,1
	li	$4,2			# 0x2
	subu	$2,$4,$2
	subu	$3,$0,$3
	and	$2,$3,$2
	lw	$3,8($fp)
	addu	$2,$3,$2
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__ctzsi2
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__ctzti2
	.set	nomips16
	.set	micromips
	.ent	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$5,40($fp)
	sd	$4,32($fp)
	ld	$3,40($fp)
	ld	$2,32($fp)
	sd	$3,24($fp)
	sd	$2,16($fp)
	ld	$2,24($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	subu	$2,$0,$2
	sd	$2,0($fp)
	ld	$3,16($fp)
	ld	$2,0($fp)
	and	$2,$3,$2
	move	$4,$2
	ld	$3,24($fp)
	ld	$2,0($fp)
	nor	$2,$0,$2
	and	$2,$3,$2
	or	$2,$2,$4
	dsubu	$3,$0,$2
	and	$2,$2,$3
	dclz	$2,$2
	li	$3,63			# 0x3f
	dsubu	$2,$3,$2
	sll	$2,$2,0
	move	$3,$2
	lw	$2,4($fp)
	andi	$2,$2,0x40
	addu	$2,$3,$2
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__ctzti2
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.set	nomips16
	.set	micromips
	.ent	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$5,24($fp)
	sd	$4,16($fp)
	ld	$3,24($fp)
	ld	$2,16($fp)
	sd	$3,8($fp)
	sd	$2,0($fp)
	ld	$2,8($fp)
	bnezc	$2,.L793
	ld	$2,0($fp)
	bnezc	$2,.L794
	move	$2,$0
	b	.L796
	nop

.L794:
	ld	$2,0($fp)
	dsubu	$3,$0,$2
	and	$2,$2,$3
	dclz	$2,$2
	li	$3,63			# 0x3f
	dsubu	$2,$3,$2
	sll	$2,$2,0
	addiu	$2,$2,65
	b	.L796
	nop

.L793:
	ld	$2,8($fp)
	dsubu	$3,$0,$2
	and	$2,$2,$3
	dclz	$2,$2
	li	$3,63			# 0x3f
	dsubu	$2,$3,$2
	sll	$2,$2,0
	addiu	$2,$2,1
.L796:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__ffsti2
	.size	__ffsti2, .-__ffsti2
	.align	2
	.globl	__lshrdi3
	.set	nomips16
	.set	micromips
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	sd	$4,32($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,40($fp)
	li	$2,32			# 0x20
	sw	$2,0($fp)
	ld	$2,32($fp)
	sd	$2,8($fp)
	lw	$3,40($fp)
	lw	$2,0($fp)
	and	$2,$3,$2
	beqzc	$2,.L798
	sw	$0,16($fp)
	lw	$2,8($fp)
	lw	$4,40($fp)
	lw	$3,0($fp)
	subu	$3,$4,$3
	sll	$3,$3,0
	srl	$2,$2,$3
	sw	$2,20($fp)
	b	.L799
	nop

.L798:
	lw	$2,40($fp)
	bnezc	$2,.L800
	ld	$2,32($fp)
	b	.L802
	nop

.L800:
	lw	$3,8($fp)
	lw	$2,40($fp)
	srl	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,8($fp)
	lw	$4,0($fp)
	lw	$3,40($fp)
	subu	$3,$4,$3
	sll	$3,$3,0
	sll	$2,$2,$3
	move	$3,$2
	lw	$4,12($fp)
	lw	$2,40($fp)
	srl	$2,$4,$2
	or	$2,$2,$3
	sw	$2,20($fp)
.L799:
	ld	$2,16($fp)
.L802:
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__lshrdi3
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__lshrti3
	.set	nomips16
	.set	micromips
	.ent	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.frame	$fp,96,$31		# vars= 80, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$fp,88($sp)
	move	$fp,$sp
	sd	$5,56($fp)
	sd	$4,48($fp)
	move	$2,$6
	sll	$2,$2,0
	sw	$2,64($fp)
	li	$2,64			# 0x40
	sw	$2,0($fp)
	ld	$3,56($fp)
	ld	$2,48($fp)
	sd	$3,24($fp)
	sd	$2,16($fp)
	lw	$3,64($fp)
	lw	$2,0($fp)
	and	$2,$3,$2
	beqzc	$2,.L804
	sd	$0,32($fp)
	ld	$2,16($fp)
	lw	$4,64($fp)
	lw	$3,0($fp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsrl	$2,$2,$3
	sd	$2,40($fp)
	b	.L805
	nop

.L804:
	lw	$2,64($fp)
	bnezc	$2,.L806
	ld	$3,56($fp)
	ld	$2,48($fp)
	b	.L808
	nop

.L806:
	ld	$3,16($fp)
	lw	$2,64($fp)
	dsrl	$2,$3,$2
	sd	$2,32($fp)
	ld	$2,16($fp)
	lw	$4,0($fp)
	lw	$3,64($fp)
	subu	$3,$4,$3
	sll	$3,$3,0
	dsll	$3,$2,$3
	ld	$4,24($fp)
	lw	$2,64($fp)
	dsrl	$2,$4,$2
	or	$2,$2,$3
	sd	$2,40($fp)
.L805:
	ld	$3,40($fp)
	ld	$2,32($fp)
.L808:
	move	$sp,$fp
	ld	$fp,88($sp)
	jraddiusp	96
	.set	macro
	.set	reorder
	.end	__lshrti3
	.size	__lshrti3, .-__lshrti3
	.align	2
	.globl	__muldsi3
	.set	nomips16
	.set	micromips
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	$fp,64,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$fp,56($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sll	$3,$3,0
	sw	$3,32($fp)
	sll	$2,$2,0
	sw	$2,36($fp)
	li	$2,16			# 0x10
	sw	$2,0($fp)
	li	$3,-1			# 0xffffffffffffffff
	lw	$2,0($fp)
	srl	$2,$3,$2
	sw	$2,4($fp)
	lw	$3,32($fp)
	lw	$2,4($fp)
	and	$2,$3,$2
	move	$3,$2
	lw	$4,36($fp)
	lw	$2,4($fp)
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	sw	$2,20($fp)
	lw	$3,20($fp)
	lw	$2,0($fp)
	srl	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,20($fp)
	lw	$3,4($fp)
	and	$2,$3,$2
	sw	$2,20($fp)
	lw	$3,32($fp)
	lw	$2,0($fp)
	srl	$2,$3,$2
	move	$3,$2
	lw	$4,36($fp)
	lw	$2,4($fp)
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$3,20($fp)
	lw	$4,8($fp)
	lw	$2,4($fp)
	and	$2,$4,$2
	move	$4,$2
	lw	$2,0($fp)
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,20($fp)
	lw	$3,8($fp)
	lw	$2,0($fp)
	srl	$2,$3,$2
	sw	$2,16($fp)
	lw	$3,20($fp)
	lw	$2,0($fp)
	srl	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,20($fp)
	lw	$3,4($fp)
	and	$2,$3,$2
	sw	$2,20($fp)
	lw	$3,36($fp)
	lw	$2,0($fp)
	srl	$2,$3,$2
	move	$3,$2
	lw	$4,32($fp)
	lw	$2,4($fp)
	and	$2,$4,$2
	mult	$3,$2
	mflo	$2
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$3,20($fp)
	lw	$4,8($fp)
	lw	$2,4($fp)
	and	$2,$4,$2
	move	$4,$2
	lw	$2,0($fp)
	sll	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,20($fp)
	lw	$2,16($fp)
	move	$4,$2
	lw	$3,8($fp)
	lw	$2,0($fp)
	srl	$2,$3,$2
	addu	$2,$4,$2
	sw	$2,16($fp)
	lw	$2,16($fp)
	move	$5,$2
	lw	$3,32($fp)
	lw	$2,0($fp)
	srl	$2,$3,$2
	move	$3,$2
	lw	$4,36($fp)
	lw	$2,0($fp)
	srl	$2,$4,$2
	mult	$3,$2
	mflo	$2
	addu	$2,$5,$2
	sw	$2,16($fp)
	ld	$2,16($fp)
	move	$sp,$fp
	ld	$fp,56($sp)
	jraddiusp	64
	.set	macro
	.set	reorder
	.end	__muldsi3
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.set	nomips16
	.set	micromips
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	$fp,80,$31		# vars= 48, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$fp,64($sp)
	sd	$28,56($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__muldi3_compiler_rt)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__muldi3_compiler_rt)))
	sd	$4,32($fp)
	sd	$5,40($fp)
	ld	$2,32($fp)
	sd	$2,0($fp)
	ld	$2,40($fp)
	sd	$2,8($fp)
	lw	$2,4($fp)
	lw	$3,12($fp)
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__muldsi3)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__muldsi3
1:	jalrs	$25
	nop

	sd	$2,16($fp)
	lw	$2,16($fp)
	move	$4,$2
	lw	$2,0($fp)
	move	$3,$2
	lw	$2,12($fp)
	mult	$3,$2
	mflo	$3
	lw	$2,4($fp)
	lw	$5,8($fp)
	mult	$2,$5
	mflo	$2
	addu	$2,$3,$2
	addu	$2,$4,$2
	sw	$2,16($fp)
	ld	$2,16($fp)
	move	$sp,$fp
	ld	$31,72($sp)
	ld	$fp,64($sp)
	ld	$28,56($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	__muldi3_compiler_rt
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__mulddi3
	.set	nomips16
	.set	micromips
	.ent	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.frame	$fp,80,$31		# vars= 64, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$fp,72($sp)
	move	$fp,$sp
	sd	$4,48($fp)
	sd	$5,56($fp)
	li	$2,32			# 0x20
	sw	$2,0($fp)
	li	$3,-1			# 0xffffffffffffffff
	lw	$2,0($fp)
	dsrl	$2,$3,$2
	sd	$2,8($fp)
	ld	$3,48($fp)
	ld	$2,8($fp)
	and	$3,$3,$2
	ld	$4,56($fp)
	ld	$2,8($fp)
	and	$2,$4,$2
	dmult	$3,$2
	mflo	$2
	sd	$2,40($fp)
	ld	$3,40($fp)
	lw	$2,0($fp)
	dsrl	$2,$3,$2
	sd	$2,16($fp)
	ld	$3,40($fp)
	ld	$2,8($fp)
	and	$2,$3,$2
	sd	$2,40($fp)
	ld	$3,48($fp)
	lw	$2,0($fp)
	dsrl	$3,$3,$2
	ld	$4,56($fp)
	ld	$2,8($fp)
	and	$2,$4,$2
	dmult	$3,$2
	ld	$2,16($fp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,16($fp)
	ld	$3,40($fp)
	ld	$4,16($fp)
	ld	$2,8($fp)
	and	$4,$4,$2
	lw	$2,0($fp)
	dsll	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,40($fp)
	ld	$3,16($fp)
	lw	$2,0($fp)
	dsrl	$2,$3,$2
	sd	$2,32($fp)
	ld	$3,40($fp)
	lw	$2,0($fp)
	dsrl	$2,$3,$2
	sd	$2,16($fp)
	ld	$3,40($fp)
	ld	$2,8($fp)
	and	$2,$3,$2
	sd	$2,40($fp)
	ld	$3,56($fp)
	lw	$2,0($fp)
	dsrl	$3,$3,$2
	ld	$4,48($fp)
	ld	$2,8($fp)
	and	$2,$4,$2
	dmult	$3,$2
	ld	$2,16($fp)
	mflo	$3
	daddu	$2,$2,$3
	sd	$2,16($fp)
	ld	$3,40($fp)
	ld	$4,16($fp)
	ld	$2,8($fp)
	and	$4,$4,$2
	lw	$2,0($fp)
	dsll	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,40($fp)
	ld	$2,32($fp)
	move	$4,$2
	ld	$3,16($fp)
	lw	$2,0($fp)
	dsrl	$2,$3,$2
	daddu	$2,$4,$2
	sd	$2,32($fp)
	ld	$2,32($fp)
	move	$5,$2
	ld	$3,48($fp)
	lw	$2,0($fp)
	dsrl	$3,$3,$2
	ld	$4,56($fp)
	lw	$2,0($fp)
	dsrl	$2,$4,$2
	dmult	$3,$2
	mflo	$2
	daddu	$2,$5,$2
	sd	$2,32($fp)
	ld	$3,40($fp)
	ld	$2,32($fp)
	move	$sp,$fp
	ld	$fp,72($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	__mulddi3
	.size	__mulddi3, .-__mulddi3
	.align	2
	.globl	__multi3
	.set	nomips16
	.set	micromips
	.ent	__multi3
	.type	__multi3, @function
__multi3:
	.frame	$fp,112,$31		# vars= 80, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$28,88($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__multi3)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__multi3)))
	sd	$5,56($fp)
	sd	$4,48($fp)
	sd	$7,72($fp)
	sd	$6,64($fp)
	ld	$3,56($fp)
	ld	$2,48($fp)
	sd	$3,8($fp)
	sd	$2,0($fp)
	ld	$3,72($fp)
	ld	$2,64($fp)
	sd	$3,24($fp)
	sd	$2,16($fp)
	ld	$2,8($fp)
	ld	$3,24($fp)
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__mulddi3)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__mulddi3
1:	jalrs	$25
	nop

	sd	$3,40($fp)
	sd	$2,32($fp)
	ld	$2,32($fp)
	move	$4,$2
	ld	$2,0($fp)
	move	$3,$2
	ld	$2,24($fp)
	dmult	$3,$2
	mflo	$2
	ld	$3,8($fp)
	ld	$5,16($fp)
	dmult	$3,$5
	mflo	$3
	daddu	$2,$2,$3
	daddu	$2,$4,$2
	sd	$2,32($fp)
	ld	$3,40($fp)
	ld	$2,32($fp)
	move	$sp,$fp
	ld	$31,104($sp)
	ld	$fp,96($sp)
	ld	$28,88($sp)
	jraddiusp	112
	.set	macro
	.set	reorder
	.end	__multi3
	.size	__multi3, .-__multi3
	.align	2
	.globl	__negdi2
	.set	nomips16
	.set	micromips
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$4,0($fp)
	ld	$2,0($fp)
	dsubu	$2,$0,$2
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__negdi2
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__negti2
	.set	nomips16
	.set	micromips
	.ent	__negti2
	.type	__negti2, @function
__negti2:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$fp,24($sp)
	move	$fp,$sp
	sd	$5,8($fp)
	sd	$4,0($fp)
	ld	$7,8($fp)
	ld	$6,0($fp)
	move	$5,$0
	move	$4,$0
	dsubu	$3,$5,$7
	sltu	$8,$5,$3
	dext	$8,$8,0,32
	dsubu	$2,$4,$6
	dsubu	$4,$2,$8
	move	$2,$4
	move	$sp,$fp
	ld	$fp,24($sp)
	jraddiusp	32
	.set	macro
	.set	reorder
	.end	__negti2
	.size	__negti2, .-__negti2
	.align	2
	.globl	__paritydi2
	.set	nomips16
	.set	micromips
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	ld	$2,16($fp)
	sd	$2,8($fp)
	lw	$2,8($fp)
	move	$3,$2
	lw	$2,12($fp)
	xor	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,16
	lw	$3,0($fp)
	xor	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,8
	lw	$3,0($fp)
	xor	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,4
	lw	$3,0($fp)
	xor	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,0($fp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__paritydi2
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__parityti2
	.set	nomips16
	.set	micromips
	.ent	__parityti2
	.type	__parityti2, @function
__parityti2:
	.frame	$fp,80,$31		# vars= 64, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$fp,72($sp)
	move	$fp,$sp
	sd	$5,56($fp)
	sd	$4,48($fp)
	ld	$3,56($fp)
	ld	$2,48($fp)
	sd	$3,24($fp)
	sd	$2,16($fp)
	ld	$2,16($fp)
	move	$3,$2
	ld	$2,24($fp)
	xor	$2,$2,$3
	sd	$2,32($fp)
	lw	$2,32($fp)
	move	$3,$2
	lw	$2,36($fp)
	xor	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,16
	lw	$3,0($fp)
	xor	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,8
	lw	$3,0($fp)
	xor	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,4
	lw	$3,0($fp)
	xor	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,0($fp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,72($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	__parityti2
	.size	__parityti2, .-__parityti2
	.align	2
	.globl	__paritysi2
	.set	nomips16
	.set	micromips
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($fp)
	lw	$2,16($fp)
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,16
	lw	$3,0($fp)
	xor	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,8
	lw	$3,0($fp)
	xor	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,4
	lw	$3,0($fp)
	xor	$2,$2,$3
	sw	$2,0($fp)
	lw	$2,0($fp)
	andi	$2,$2,0xf
	sll	$3,$2,0
	li	$2,27030			# 0x6996
	sra	$2,$2,$3
	andi	$2,$2,0x1
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__paritysi2
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.set	nomips16
	.set	micromips
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,0($fp)
	dsrl	$3,$2,1
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	ori	$2,$2,0x5555
	dsll	$2,$2,16
	ori	$2,$2,0x5555
	and	$2,$3,$2
	ld	$3,0($fp)
	dsubu	$2,$3,$2
	sd	$2,0($fp)
	ld	$2,0($fp)
	dsrl	$3,$2,2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$3,$3,$2
	ld	$4,0($fp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	dsll	$2,$2,16
	ori	$2,$2,0x3333
	and	$2,$4,$2
	daddu	$2,$3,$2
	sd	$2,0($fp)
	ld	$2,0($fp)
	dsrl	$3,$2,4
	ld	$2,0($fp)
	daddu	$3,$3,$2
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	dsll	$2,$2,16
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sd	$2,0($fp)
	lw	$3,4($fp)
	ld	$2,0($fp)
	dsrl	$2,$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	srl	$2,$2,16
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	srl	$2,$2,8
	lw	$3,8($fp)
	addu	$2,$3,$2
	andi	$2,$2,0x7f
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__popcountdi2
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.set	nomips16
	.set	micromips
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	move	$2,$4
	sll	$2,$2,0
	sw	$2,16($fp)
	lw	$2,16($fp)
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,1
	move	$3,$2
	li	$2,1431633920			# 0x55550000
	ori	$2,$2,0x5555
	and	$2,$3,$2
	lw	$3,0($fp)
	subu	$2,$3,$2
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,2
	move	$3,$2
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$2,$3,$2
	move	$3,$2
	lw	$4,0($fp)
	li	$2,858980352			# 0x33330000
	ori	$2,$2,0x3333
	and	$2,$4,$2
	addu	$2,$3,$2
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,4
	lw	$3,0($fp)
	addu	$2,$3,$2
	move	$3,$2
	li	$2,252641280			# 0xf0f0000
	ori	$2,$2,0xf0f
	and	$2,$3,$2
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,16
	lw	$3,0($fp)
	addu	$2,$3,$2
	sw	$2,0($fp)
	lw	$2,0($fp)
	srl	$2,$2,8
	lw	$3,0($fp)
	addu	$2,$3,$2
	andi	$2,$2,0x3f
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__popcountsi2
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.set	nomips16
	.set	micromips
	.ent	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.frame	$fp,80,$31		# vars= 48, regs= 3/0, args= 0, gp= 0
	.mask	0x50010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$fp,72($sp)
	sd	$16,56($sp)
	move	$fp,$sp
	sd	$5,40($fp)
	sd	$4,32($fp)
	ld	$5,40($fp)
	ld	$4,32($fp)
	sd	$5,8($fp)
	sd	$4,0($fp)
	ld	$4,0($fp)
	dsll	$4,$4,63
	ld	$5,8($fp)
	dsrl	$9,$5,1
	or	$9,$4,$9
	ld	$4,0($fp)
	dsrl	$8,$4,1
	li	$4,1431633920			# 0x55550000
	ori	$4,$4,0x5555
	dsll	$4,$4,16
	ori	$4,$4,0x5555
	dsll	$4,$4,16
	ori	$4,$4,0x5555
	and	$14,$8,$4
	li	$4,1431633920			# 0x55550000
	ori	$4,$4,0x5555
	dsll	$4,$4,16
	ori	$4,$4,0x5555
	dsll	$4,$4,16
	ori	$4,$4,0x5555
	and	$15,$9,$4
	ld	$9,8($fp)
	ld	$8,0($fp)
	dsubu	$5,$9,$15
	sltu	$16,$9,$5
	dext	$16,$16,0,32
	dsubu	$4,$8,$14
	dsubu	$8,$4,$16
	move	$4,$8
	sd	$5,8($fp)
	sd	$4,0($fp)
	ld	$4,0($fp)
	dsll	$4,$4,62
	ld	$5,8($fp)
	dsrl	$7,$5,2
	or	$7,$7,$4
	ld	$4,0($fp)
	dsrl	$6,$4,2
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	and	$10,$6,$4
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	and	$11,$7,$4
	ld	$5,0($fp)
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	and	$12,$5,$4
	ld	$5,8($fp)
	li	$4,858980352			# 0x33330000
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	dsll	$4,$4,16
	ori	$4,$4,0x3333
	and	$13,$5,$4
	daddu	$5,$11,$13
	sltu	$6,$5,$11
	dext	$6,$6,0,32
	daddu	$4,$10,$12
	daddu	$6,$6,$4
	move	$4,$6
	sd	$5,8($fp)
	sd	$4,0($fp)
	ld	$4,0($fp)
	dsll	$4,$4,60
	ld	$5,8($fp)
	dsrl	$3,$5,4
	or	$3,$3,$4
	ld	$4,0($fp)
	dsrl	$2,$4,4
	ld	$7,8($fp)
	ld	$6,0($fp)
	daddu	$5,$3,$7
	sltu	$8,$5,$3
	dext	$8,$8,0,32
	daddu	$4,$2,$6
	daddu	$2,$8,$4
	move	$4,$2
	move	$3,$5
	move	$2,$4
	li	$4,252641280			# 0xf0f0000
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	ori	$4,$4,0xf0f
	and	$4,$2,$4
	sd	$4,0($fp)
	li	$4,252641280			# 0xf0f0000
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	ori	$4,$4,0xf0f
	dsll	$4,$4,16
	ori	$4,$4,0xf0f
	and	$2,$3,$4
	sd	$2,8($fp)
	ld	$2,8($fp)
	ld	$3,0($fp)
	dsrl	$25,$3,0
	move	$24,$0
	move	$3,$25
	daddu	$2,$2,$3
	sd	$2,16($fp)
	lw	$3,20($fp)
	ld	$2,16($fp)
	dsrl	$2,$2,32
	sll	$2,$2,0
	addu	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,24($fp)
	srl	$2,$2,16
	lw	$3,24($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,24($fp)
	srl	$2,$2,8
	lw	$3,24($fp)
	addu	$2,$3,$2
	andi	$2,$2,0xff
	move	$sp,$fp
	ld	$fp,72($sp)
	ld	$16,56($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	__popcountti2
	.size	__popcountti2, .-__popcountti2
	.align	2
	.globl	__powidf2
	.set	nomips16
	.set	micromips
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	lui	$4,%hi(%neg(%gp_rel(__powidf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powidf2)))
	sdc1	$f12,16($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,24($fp)
	lw	$2,24($fp)
	srl	$2,$2,31
	andi	$2,$2,0x00ff
	sw	$2,8($fp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f0,%got_ofst(.LC12)($2)
	sdc1	$f0,0($fp)
.L837:
	lw	$2,24($fp)
	andi	$2,$2,0x1
	beqzc	$2,.L834
	ldc1	$f1,0($fp)
	ldc1	$f0,16($fp)
	mul.d	$f0,$f1,$f0
	sdc1	$f0,0($fp)
.L834:
	lw	$2,24($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,24($fp)
	lw	$2,24($fp)
	beqzc	$2,.L842
	ldc1	$f0,16($fp)
	mul.d	$f0,$f0,$f0
	sdc1	$f0,16($fp)
	b	.L837
	nop

.L842:
	nop
	lw	$2,8($fp)
	beqzc	$2,.L838
	ldc1	$f0,0($fp)
	ld	$2,%got_page(.LC12)($4)
	ldc1	$f1,%got_ofst(.LC12)($2)
	div.d	$f0,$f1,$f0
	b	.L840
	nop

.L838:
	ldc1	$f0,0($fp)
.L840:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__powidf2
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.set	nomips16
	.set	micromips
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	lui	$4,%hi(%neg(%gp_rel(__powisf2)))
	daddu	$4,$4,$25
	daddiu	$4,$4,%lo(%neg(%gp_rel(__powisf2)))
	swc1	$f12,16($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,20($fp)
	lw	$2,20($fp)
	srl	$2,$2,31
	andi	$2,$2,0x00ff
	sw	$2,4($fp)
	ld	$2,%got_page(.LC14)($4)
	lwc1	$f0,%got_ofst(.LC14)($2)
	swc1	$f0,0($fp)
.L847:
	lw	$2,20($fp)
	andi	$2,$2,0x1
	beqzc	$2,.L844
	lwc1	$f1,0($fp)
	lwc1	$f0,16($fp)
	mul.s	$f0,$f1,$f0
	swc1	$f0,0($fp)
.L844:
	lw	$2,20($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,20($fp)
	lw	$2,20($fp)
	beqzc	$2,.L852
	lwc1	$f0,16($fp)
	mul.s	$f0,$f0,$f0
	swc1	$f0,16($fp)
	b	.L847
	nop

.L852:
	nop
	lw	$2,4($fp)
	beqzc	$2,.L848
	lwc1	$f0,0($fp)
	ld	$2,%got_page(.LC14)($4)
	lwc1	$f1,%got_ofst(.LC14)($2)
	div.s	$f0,$f1,$f0
	b	.L850
	nop

.L848:
	lwc1	$f0,0($fp)
.L850:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__powisf2
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.set	nomips16
	.set	micromips
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	ld	$2,16($fp)
	sd	$2,0($fp)
	ld	$2,24($fp)
	sd	$2,8($fp)
	lw	$3,0($fp)
	lw	$2,8($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L854
	move	$2,$0
	b	.L859
	nop

.L854:
	lw	$3,0($fp)
	lw	$2,8($fp)
	sltu	$2,$2,$3
	beqzc	$2,.L856
	li	$2,2			# 0x2
	b	.L859
	nop

.L856:
	lw	$3,4($fp)
	lw	$2,12($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L857
	move	$2,$0
	b	.L859
	nop

.L857:
	lw	$3,4($fp)
	lw	$2,12($fp)
	sltu	$2,$2,$3
	beqzc	$2,.L858
	li	$2,2			# 0x2
	b	.L859
	nop

.L858:
	li	$2,1			# 0x1
.L859:
	move	$sp,$fp
	ld	$fp,40($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__ucmpdi2
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.set	nomips16
	.set	micromips
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	$fp,48,$31		# vars= 16, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$fp,32($sp)
	sd	$28,24($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(__aeabi_ulcmp)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(__aeabi_ulcmp)))
	sd	$4,0($fp)
	sd	$5,8($fp)
	ld	$2,0($fp)
	ld	$3,8($fp)
	move	$5,$3
	move	$4,$2
	ld	$2,%got_disp(__ucmpdi2)($28)
	move	$25,$2
	.reloc	1f,R_MICROMIPS_JALR,__ucmpdi2
1:	jalrs	$25
	nop

	addiu	$2,$2,-1
	move	$sp,$fp
	ld	$31,40($sp)
	ld	$fp,32($sp)
	ld	$28,24($sp)
	jraddiusp	48
	.set	macro
	.set	reorder
	.end	__aeabi_ulcmp
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.globl	__ucmpti2
	.set	nomips16
	.set	micromips
	.ent	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.frame	$fp,80,$31		# vars= 64, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$fp,72($sp)
	move	$fp,$sp
	sd	$5,40($fp)
	sd	$4,32($fp)
	sd	$7,56($fp)
	sd	$6,48($fp)
	ld	$3,40($fp)
	ld	$2,32($fp)
	sd	$3,8($fp)
	sd	$2,0($fp)
	ld	$3,56($fp)
	ld	$2,48($fp)
	sd	$3,24($fp)
	sd	$2,16($fp)
	ld	$3,0($fp)
	ld	$2,16($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L863
	move	$2,$0
	b	.L868
	nop

.L863:
	ld	$3,0($fp)
	ld	$2,16($fp)
	sltu	$2,$2,$3
	beqzc	$2,.L865
	li	$2,2			# 0x2
	b	.L868
	nop

.L865:
	ld	$3,8($fp)
	ld	$2,24($fp)
	sltu	$2,$3,$2
	beqzc	$2,.L866
	move	$2,$0
	b	.L868
	nop

.L866:
	ld	$3,8($fp)
	ld	$2,24($fp)
	sltu	$2,$2,$3
	beqzc	$2,.L867
	li	$2,2			# 0x2
	b	.L868
	nop

.L867:
	li	$2,1			# 0x1
.L868:
	move	$sp,$fp
	ld	$fp,72($sp)
	jraddiusp	80
	.set	macro
	.set	reorder
	.end	__ucmpti2
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.rdata
	.align	2
.LC0:
	.word	-8388609
	.align	2
.LC1:
	.word	2139095039
	.align	3
.LC2:
	.word	-1048577
	.word	-1
	.align	3
.LC3:
	.word	2146435071
	.word	-1
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
	.align	2
.LC6:
	.word	1056964608
	.align	2
.LC7:
	.word	1073741824
	.align	3
.LC8:
	.word	1071644672
	.word	0
	.align	3
.LC9:
	.word	1073741824
	.word	0
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
	.align	3
.LC12:
	.word	1072693248
	.word	0
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
