	.text
	.align	2
	.globl	memmove
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	lwi	r3,r19,20
	swi	r3,r19,4
	lwi	r3,r19,24
	swi	r3,r19,8
	lwi	r4,r19,8
	lwi	r3,r19,4
	cmpu	r18,r3,r4
	bgei	r18,$L2
	lwi	r4,r19,8
	lwi	r3,r19,28
	addk	r3,r4,r3
	swi	r3,r19,8
	lwi	r4,r19,4
	lwi	r3,r19,28
	addk	r3,r4,r3
	swi	r3,r19,4
	bri	$L3
$L4:
	lwi	r3,r19,8
	addik	r3,r3,-1
	swi	r3,r19,8
	lwi	r3,r19,4
	addik	r3,r3,-1
	swi	r3,r19,4
	lwi	r3,r19,8
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r19,4
	sbi	r4,r3,0
	lwi	r3,r19,28
	addik	r3,r3,-1
	swi	r3,r19,28
$L3:
	lwi	r3,r19,28
	bnei	r3,$L4
	bri	$L5
$L2:
	lwi	r4,r19,8
	lwi	r3,r19,4
	xor	r3,r4,r3
	beqi	r3,$L5
	bri	$L6
$L7:
	lwi	r4,r19,8
	addik	r3,r4,1
	swi	r3,r19,8
	lwi	r3,r19,4
	addik	r5,r3,1
	swi	r5,r19,4
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r19,28
	addik	r3,r3,-1
	swi	r3,r19,28
$L6:
	lwi	r3,r19,28
	bnei	r3,$L7
$L5:
	lwi	r3,r19,20
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memmove
$Lfe1:
	.size	memmove,$Lfe1-memmove
	.align	2
	.globl	memccpy
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	swi	r8,r19,32
	lwi	r3,r19,20
	swi	r3,r19,4
	lwi	r3,r19,24
	swi	r3,r19,8
	lwi	r3,r19,28
	andi	r3,r3,0x00ff
	swi	r3,r19,28
	bri	$L10
$L12:
	lwi	r3,r19,32
	addik	r3,r3,-1
	swi	r3,r19,32
	lwi	r3,r19,8
	addik	r3,r3,1
	swi	r3,r19,8
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
$L10:
	lwi	r3,r19,32
	beqi	r3,$L11
	lwi	r3,r19,8
	lbui	r4,r3,0
	lwi	r3,r19,4
	sbi	r4,r3,0
	lwi	r3,r19,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r19,28
	xor	r3,r3,r4
	bnei	r3,$L12
$L11:
	lwi	r3,r19,32
	beqi	r3,$L13
	lwi	r3,r19,4
	addik	r3,r3,1
	bri	$L14
$L13:
	addk	r3,r0,r0
$L14:
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memccpy
$Lfe2:
	.size	memccpy,$Lfe2-memccpy
	.align	2
	.globl	memchr
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	swi	r7,r19,24
	lwi	r3,r19,16
	swi	r3,r19,4
	lwi	r3,r19,20
	andi	r3,r3,0x00ff
	swi	r3,r19,20
	bri	$L16
$L18:
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
	lwi	r3,r19,24
	addik	r3,r3,-1
	swi	r3,r19,24
$L16:
	lwi	r3,r19,24
	beqi	r3,$L17
	lwi	r3,r19,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r19,20
	xor	r3,r3,r4
	bnei	r3,$L18
$L17:
	lwi	r3,r19,24
	beqi	r3,$L19
	lwi	r3,r19,4
	bri	$L21
$L19:
	addk	r3,r0,r0
$L21:
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memchr
$Lfe3:
	.size	memchr,$Lfe3-memchr
	.align	2
	.globl	memcmp
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	lwi	r3,r19,20
	swi	r3,r19,4
	lwi	r3,r19,24
	swi	r3,r19,8
	bri	$L23
$L25:
	lwi	r3,r19,28
	addik	r3,r3,-1
	swi	r3,r19,28
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
	lwi	r3,r19,8
	addik	r3,r3,1
	swi	r3,r19,8
$L23:
	lwi	r3,r19,28
	beqi	r3,$L24
	lwi	r3,r19,4
	lbui	r4,r3,0
	lwi	r3,r19,8
	lbui	r3,r3,0
	xor	r3,r4,r3
	beqi	r3,$L25
$L24:
	lwi	r3,r19,28
	beqi	r3,$L26
	lwi	r3,r19,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r19,8
	lbui	r3,r3,0
	rsubk	r3,r3,r4
	bri	$L28
$L26:
	addk	r3,r0,r0
$L28:
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memcmp
$Lfe4:
	.size	memcmp,$Lfe4-memcmp
	.align	2
	.globl	memcpy
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	lwi	r3,r19,20
	swi	r3,r19,4
	lwi	r3,r19,24
	swi	r3,r19,8
	bri	$L30
$L31:
	lwi	r4,r19,8
	addik	r3,r4,1
	swi	r3,r19,8
	lwi	r3,r19,4
	addik	r5,r3,1
	swi	r5,r19,4
	lbui	r4,r4,0
	sbi	r4,r3,0
	lwi	r3,r19,28
	addik	r3,r3,-1
	swi	r3,r19,28
$L30:
	lwi	r3,r19,28
	bnei	r3,$L31
	lwi	r3,r19,20
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memcpy
$Lfe5:
	.size	memcpy,$Lfe5-memcpy
	.align	2
	.globl	memrchr
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	swi	r7,r19,24
	lwi	r3,r19,16
	swi	r3,r19,4
	lwi	r3,r19,20
	andi	r3,r3,0x00ff
	swi	r3,r19,20
	bri	$L34
$L36:
	lwi	r4,r19,4
	lwi	r3,r19,24
	addk	r3,r4,r3
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r19,20
	xor	r3,r3,r4
	bnei	r3,$L34
	lwi	r4,r19,4
	lwi	r3,r19,24
	addk	r3,r4,r3
	bri	$L35
$L34:
	lwi	r3,r19,24
	addik	r4,r3,-1
	swi	r4,r19,24
	bnei	r3,$L36
	addk	r3,r0,r0
$L35:
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memrchr
$Lfe6:
	.size	memrchr,$Lfe6-memrchr
	.align	2
	.globl	memset
	.ent	memset
	.type	memset, @function
memset:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	swi	r7,r19,24
	lwi	r3,r19,16
	swi	r3,r19,4
	bri	$L38
$L39:
	lwi	r3,r19,20
	andi	r4,r3,0x00ff
	lwi	r3,r19,4
	sbi	r4,r3,0
	lwi	r3,r19,24
	addik	r3,r3,-1
	swi	r3,r19,24
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
$L38:
	lwi	r3,r19,24
	bnei	r3,$L39
	lwi	r3,r19,16
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memset
$Lfe7:
	.size	memset,$Lfe7-memset
	.align	2
	.globl	stpcpy
	.ent	stpcpy
	.type	stpcpy, @function
stpcpy:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	bri	$L42
$L43:
	lwi	r3,r19,16
	addik	r3,r3,1
	swi	r3,r19,16
	lwi	r3,r19,12
	addik	r3,r3,1
	swi	r3,r19,12
$L42:
	lwi	r3,r19,16
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r19,12
	sbi	r4,r3,0
	lwi	r3,r19,12
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L43
	lwi	r3,r19,12
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	stpcpy
$Lfe8:
	.size	stpcpy,$Lfe8-stpcpy
	.align	2
	.globl	strchrnul
	.ent	strchrnul
	.type	strchrnul, @function
strchrnul:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	lwi	r3,r19,16
	andi	r3,r3,0x00ff
	swi	r3,r19,16
	bri	$L46
$L48:
	lwi	r3,r19,12
	addik	r3,r3,1
	swi	r3,r19,12
$L46:
	lwi	r3,r19,12
	lbui	r3,r3,0
	sext8	r3,r3
	beqi	r3,$L47
	lwi	r3,r19,12
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r19,16
	xor	r3,r3,r4
	bnei	r3,$L48
$L47:
	lwi	r3,r19,12
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strchrnul
$Lfe9:
	.size	strchrnul,$Lfe9-strchrnul
	.align	2
	.globl	strchr
	.ent	strchr
	.type	strchr, @function
strchr:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	swi	r6,r19,16
$L53:
	lbui	r4,r3,0
	sext8	r4,r4
	addk	r5,r4,r0
	lwi	r4,r19,16
	xor	r4,r4,r5
	bnei	r4,$L51
	bri	$L52
$L51:
	addk	r4,r3,r0
	addik	r3,r4,1
	lbui	r4,r4,0
	sext8	r4,r4
	bnei	r4,$L53
	addk	r3,r0,r0
$L52:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strchr
$Lfe10:
	.size	strchr,$Lfe10-strchr
	.align	2
	.globl	strcmp
	.ent	strcmp
	.type	strcmp, @function
strcmp:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	bri	$L55
$L57:
	lwi	r3,r19,12
	addik	r3,r3,1
	swi	r3,r19,12
	lwi	r3,r19,16
	addik	r3,r3,1
	swi	r3,r19,16
$L55:
	lwi	r3,r19,12
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r19,16
	lbui	r3,r3,0
	sext8	r3,r3
	xor	r3,r4,r3
	bnei	r3,$L56
	lwi	r3,r19,12
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L57
$L56:
	lwi	r3,r19,12
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r19,16
	lbui	r3,r3,0
	rsubk	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strcmp
$Lfe11:
	.size	strcmp,$Lfe11-strcmp
	.align	2
	.globl	strlen
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	lwi	r3,r19,16
	swi	r3,r19,4
	bri	$L60
$L61:
	lwi	r3,r19,16
	addik	r3,r3,1
	swi	r3,r19,16
$L60:
	lwi	r3,r19,16
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L61
	lwi	r4,r19,16
	lwi	r3,r19,4
	rsubk	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strlen
$Lfe12:
	.size	strlen,$Lfe12-strlen
	.align	2
	.globl	strncmp
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	lwi	r3,r19,20
	swi	r3,r19,4
	lwi	r3,r19,24
	swi	r3,r19,8
	lwi	r3,r19,28
	addik	r4,r3,-1
	swi	r4,r19,28
	bnei	r3,$L66
	addk	r3,r0,r0
	bri	$L65
$L68:
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
	lwi	r3,r19,8
	addik	r3,r3,1
	swi	r3,r19,8
	lwi	r3,r19,28
	addik	r3,r3,-1
	swi	r3,r19,28
$L66:
	lwi	r3,r19,4
	lbui	r3,r3,0
	beqi	r3,$L67
	lwi	r3,r19,8
	lbui	r3,r3,0
	beqi	r3,$L67
	lwi	r3,r19,28
	beqi	r3,$L67
	lwi	r3,r19,4
	lbui	r4,r3,0
	lwi	r3,r19,8
	lbui	r3,r3,0
	xor	r3,r4,r3
	beqi	r3,$L68
$L67:
	lwi	r3,r19,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r19,8
	lbui	r3,r3,0
	rsubk	r3,r3,r4
$L65:
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strncmp
$Lfe13:
	.size	strncmp,$Lfe13-strncmp
	.align	2
	.globl	swab
	.ent	swab
	.type	swab, @function
swab:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	lwi	r3,r19,20
	swi	r3,r19,4
	lwi	r3,r19,24
	swi	r3,r19,8
	bri	$L70
$L71:
	lwi	r3,r19,4
	addik	r3,r3,1
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r19,8
	sbi	r4,r3,0
	lwi	r3,r19,8
	addik	r3,r3,1
	lwi	r4,r19,4
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r19,8
	addik	r3,r3,2
	swi	r3,r19,8
	lwi	r3,r19,4
	addik	r3,r3,2
	swi	r3,r19,4
	lwi	r3,r19,28
	addik	r3,r3,-2
	swi	r3,r19,28
$L70:
	lwi	r4,r19,28
	addik	r3,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L71
	nop
	nop
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	swab
$Lfe14:
	.size	swab,$Lfe14-swab
	.align	2
	.globl	isalpha
	.ent	isalpha
	.type	isalpha, @function
isalpha:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	ori	r3,r3,32
	addik	r4,r3,-97
	addik	r5,r0,1	# 0x1
	addik	r3,r0,25	# 0x19
	cmpu	r18,r4,r3
	bgei	r18,$L73
	addk	r5,r0,r0
$L73:
	andi	r3,r5,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isalpha
$Lfe15:
	.size	isalpha,$Lfe15-isalpha
	.align	2
	.globl	isascii
	.ent	isascii
	.type	isascii, @function
isascii:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r4,r19,12
	addik	r5,r0,1	# 0x1
	addik	r3,r0,127	# 0x7f
	cmpu	r18,r4,r3
	bgei	r18,$L76
	addk	r5,r0,r0
$L76:
	andi	r3,r5,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isascii
$Lfe16:
	.size	isascii,$Lfe16-isascii
	.align	2
	.globl	isblank
	.ent	isblank
	.type	isblank, @function
isblank:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	xori	r3,r3,32
	beqi	r3,$L79
	lwi	r3,r19,12
	xori	r3,r3,9
	bnei	r3,$L80
$L79:
	addik	r3,r0,1	# 0x1
	bri	$L82
$L80:
	addk	r3,r0,r0
$L82:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isblank
$Lfe17:
	.size	isblank,$Lfe17-isblank
	.align	2
	.globl	iscntrl
	.ent	iscntrl
	.type	iscntrl, @function
iscntrl:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r4,r19,12
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L84
	lwi	r3,r19,12
	xori	r3,r3,127
	bnei	r3,$L85
$L84:
	addik	r3,r0,1	# 0x1
	bri	$L87
$L85:
	addk	r3,r0,r0
$L87:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	iscntrl
$Lfe18:
	.size	iscntrl,$Lfe18-iscntrl
	.align	2
	.globl	isdigit
	.ent	isdigit
	.type	isdigit, @function
isdigit:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	addik	r4,r3,-48
	addik	r5,r0,1	# 0x1
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L89
	addk	r5,r0,r0
$L89:
	andi	r3,r5,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isdigit
$Lfe19:
	.size	isdigit,$Lfe19-isdigit
	.align	2
	.globl	isgraph
	.ent	isgraph
	.type	isgraph, @function
isgraph:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	addik	r4,r3,-33
	addik	r5,r0,1	# 0x1
	addik	r3,r0,93	# 0x5d
	cmpu	r18,r4,r3
	bgei	r18,$L92
	addk	r5,r0,r0
$L92:
	andi	r3,r5,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isgraph
$Lfe20:
	.size	isgraph,$Lfe20-isgraph
	.align	2
	.globl	islower
	.ent	islower
	.type	islower, @function
islower:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	addik	r4,r3,-97
	addik	r5,r0,1	# 0x1
	addik	r3,r0,25	# 0x19
	cmpu	r18,r4,r3
	bgei	r18,$L95
	addk	r5,r0,r0
$L95:
	andi	r3,r5,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	islower
$Lfe21:
	.size	islower,$Lfe21-islower
	.align	2
	.globl	isprint
	.ent	isprint
	.type	isprint, @function
isprint:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	addik	r4,r3,-32
	addik	r5,r0,1	# 0x1
	addik	r3,r0,94	# 0x5e
	cmpu	r18,r4,r3
	bgei	r18,$L98
	addk	r5,r0,r0
$L98:
	andi	r3,r5,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isprint
$Lfe22:
	.size	isprint,$Lfe22-isprint
	.align	2
	.globl	isspace
	.ent	isspace
	.type	isspace, @function
isspace:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	xori	r3,r3,32
	beqi	r3,$L101
	lwi	r3,r19,12
	addik	r4,r3,-9
	addik	r3,r0,4	# 0x4
	cmpu	r18,r4,r3
	blti	r18,$L102
$L101:
	addik	r3,r0,1	# 0x1
	bri	$L104
$L102:
	addk	r3,r0,r0
$L104:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isspace
$Lfe23:
	.size	isspace,$Lfe23-isspace
	.align	2
	.globl	isupper
	.ent	isupper
	.type	isupper, @function
isupper:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	addik	r4,r3,-65
	addik	r5,r0,1	# 0x1
	addik	r3,r0,25	# 0x19
	cmpu	r18,r4,r3
	bgei	r18,$L106
	addk	r5,r0,r0
$L106:
	andi	r3,r5,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	isupper
$Lfe24:
	.size	isupper,$Lfe24-isupper
	.align	2
	.globl	iswcntrl
	.ent	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r4,r19,12
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L109
	lwi	r3,r19,12
	addik	r4,r3,-127
	addik	r3,r0,32	# 0x20
	cmpu	r18,r4,r3
	bgei	r18,$L109
	lwi	r3,r19,12
	addik	r4,r3,-8232
	addik	r3,r0,1	# 0x1
	cmpu	r18,r4,r3
	bgei	r18,$L109
	lwi	r3,r19,12
	addik	r4,r3,-65529
	addik	r3,r0,2	# 0x2
	cmpu	r18,r4,r3
	blti	r18,$L110
$L109:
	addik	r3,r0,1	# 0x1
	bri	$L112
$L110:
	addk	r3,r0,r0
$L112:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	iswcntrl
$Lfe25:
	.size	iswcntrl,$Lfe25-iswcntrl
	.align	2
	.globl	iswdigit
	.ent	iswdigit
	.type	iswdigit, @function
iswdigit:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	addik	r4,r3,-48
	addik	r5,r0,1	# 0x1
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L114
	addk	r5,r0,r0
$L114:
	andi	r3,r5,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	iswdigit
$Lfe26:
	.size	iswdigit,$Lfe26-iswdigit
	.align	2
	.globl	iswprint
	.ent	iswprint
	.type	iswprint, @function
iswprint:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r4,r19,12
	addik	r3,r0,254	# 0xfe
	cmpu	r18,r4,r3
	blti	r18,$L117
	lwi	r3,r19,12
	addik	r3,r3,1
	andi	r4,r3,127 #and1
	addik	r5,r0,1	# 0x1
	addik	r3,r0,32	# 0x20
	cmpu	r18,r4,r3
	blti	r18,$L118
	addk	r5,r0,r0
$L118:
	andi	r3,r5,0x00ff
	bri	$L119
$L117:
	lwi	r4,r19,12
	addik	r3,r0,8231	# 0x2027
	cmpu	r18,r4,r3
	bgei	r18,$L120
	lwi	r3,r19,12
	addik	r4,r3,-8234
	addik	r3,r0,47061
	cmpu	r18,r4,r3
	bgei	r18,$L120
	lwi	r3,r19,12
	addik	r4,r3,-57344
	addik	r3,r0,8184	# 0x1ff8
	cmpu	r18,r4,r3
	blti	r18,$L121
$L120:
	addik	r3,r0,1	# 0x1
	bri	$L119
$L121:
	lwi	r3,r19,12
	addik	r4,r3,-65532
	addik	r3,r0,1048579
	cmpu	r18,r4,r3
	blti	r18,$L122
	lwi	r3,r19,12
	andi	r3,r3,65534 #and2
	xori	r3,r3,65534
	bnei	r3,$L123
$L122:
	addk	r3,r0,r0
	bri	$L119
$L123:
	addik	r3,r0,1	# 0x1
$L119:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	iswprint
$Lfe27:
	.size	iswprint,$Lfe27-iswprint
	.align	2
	.globl	iswxdigit
	.ent	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L125
	lwi	r3,r19,12
	ori	r3,r3,32
	addik	r4,r3,-97
	addik	r3,r0,5	# 0x5
	cmpu	r18,r4,r3
	blti	r18,$L126
$L125:
	addik	r3,r0,1	# 0x1
	bri	$L128
$L126:
	addk	r3,r0,r0
$L128:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	iswxdigit
$Lfe28:
	.size	iswxdigit,$Lfe28-iswxdigit
	.align	2
	.globl	toascii
	.ent	toascii
	.type	toascii, @function
toascii:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	andi	r3,r3,127 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	toascii
$Lfe29:
	.size	toascii,$Lfe29-toascii
	.align	2
	.globl	fdim
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	swi	r7,r19,44
	swi	r8,r19,48
	lwi	r7,r19,36
	lwi	r8,r19,40
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L143
	lwi	r4,r19,36
	lwi	r5,r19,40
	bri	$L134
$L143:
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L144
	lwi	r4,r19,44
	lwi	r5,r19,48
	bri	$L134
$L144:
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L145
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__subdf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	bri	$L134
$L145:
	addk	r4,r0,r0
	addk	r5,r0,r0
$L134:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fdim
$Lfe30:
	.size	fdim,$Lfe30-fdim
	.align	2
	.globl	fdimf
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r6,r19,36
	lwi	r5,r19,36
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L158
	lwi	r3,r19,36
	bri	$L149
$L158:
	lwi	r6,r19,40
	lwi	r5,r19,40
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L159
	lwi	r3,r19,40
	bri	$L149
$L159:
	lwi	r6,r19,40
	lwi	r5,r19,36
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L160
	lwi	r6,r19,40
	lwi	r5,r19,36
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	bri	$L149
$L160:
	addk	r3,r0,r0
$L149:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fdimf
$Lfe31:
	.size	fdimf,$Lfe31-fdimf
	.align	2
	.globl	fmax
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	swi	r7,r19,44
	swi	r8,r19,48
	lwi	r7,r19,36
	lwi	r8,r19,40
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L176
	lwi	r4,r19,44
	lwi	r5,r19,48
	bri	$L164
$L176:
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L177
	lwi	r4,r19,36
	lwi	r5,r19,40
	bri	$L164
$L177:
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r19,44
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L167
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L168
	lwi	r4,r19,44
	lwi	r5,r19,48
	bri	$L164
$L168:
	lwi	r4,r19,36
	lwi	r5,r19,40
	bri	$L164
$L167:
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L178
	lwi	r4,r19,44
	lwi	r5,r19,48
	bri	$L164
$L178:
	lwi	r4,r19,36
	lwi	r5,r19,40
$L164:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fmax
$Lfe32:
	.size	fmax,$Lfe32-fmax
	.align	2
	.globl	fmaxf
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r6,r19,36
	lwi	r5,r19,36
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L194
	lwi	r3,r19,40
	bri	$L182
$L194:
	lwi	r6,r19,40
	lwi	r5,r19,40
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L195
	lwi	r3,r19,36
	bri	$L182
$L195:
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r19,40
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L185
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L186
	lwi	r3,r19,40
	bri	$L182
$L186:
	lwi	r3,r19,36
	bri	$L182
$L185:
	lwi	r6,r19,40
	lwi	r5,r19,36
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L196
	lwi	r3,r19,40
	bri	$L182
$L196:
	lwi	r3,r19,36
$L182:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fmaxf
$Lfe33:
	.size	fmaxf,$Lfe33-fmaxf
	.align	2
	.globl	fmaxl
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	swi	r7,r19,44
	swi	r8,r19,48
	lwi	r7,r19,36
	lwi	r8,r19,40
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L212
	lwi	r4,r19,44
	lwi	r5,r19,48
	bri	$L200
$L212:
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L213
	lwi	r4,r19,36
	lwi	r5,r19,40
	bri	$L200
$L213:
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r19,44
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L203
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L204
	lwi	r4,r19,44
	lwi	r5,r19,48
	bri	$L200
$L204:
	lwi	r4,r19,36
	lwi	r5,r19,40
	bri	$L200
$L203:
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L214
	lwi	r4,r19,44
	lwi	r5,r19,48
	bri	$L200
$L214:
	lwi	r4,r19,36
	lwi	r5,r19,40
$L200:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fmaxl
$Lfe34:
	.size	fmaxl,$Lfe34-fmaxl
	.align	2
	.globl	fmin
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	swi	r7,r19,44
	swi	r8,r19,48
	lwi	r7,r19,36
	lwi	r8,r19,40
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L230
	lwi	r4,r19,44
	lwi	r5,r19,48
	bri	$L218
$L230:
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L231
	lwi	r4,r19,36
	lwi	r5,r19,40
	bri	$L218
$L231:
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r19,44
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L221
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L222
	lwi	r4,r19,36
	lwi	r5,r19,40
	bri	$L218
$L222:
	lwi	r4,r19,44
	lwi	r5,r19,48
	bri	$L218
$L221:
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L232
	lwi	r4,r19,36
	lwi	r5,r19,40
	bri	$L218
$L232:
	lwi	r4,r19,44
	lwi	r5,r19,48
$L218:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fmin
$Lfe35:
	.size	fmin,$Lfe35-fmin
	.align	2
	.globl	fminf
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r6,r19,36
	lwi	r5,r19,36
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L248
	lwi	r3,r19,40
	bri	$L236
$L248:
	lwi	r6,r19,40
	lwi	r5,r19,40
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L249
	lwi	r3,r19,36
	bri	$L236
$L249:
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r19,40
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L239
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L240
	lwi	r3,r19,36
	bri	$L236
$L240:
	lwi	r3,r19,40
	bri	$L236
$L239:
	lwi	r6,r19,40
	lwi	r5,r19,36
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L250
	lwi	r3,r19,36
	bri	$L236
$L250:
	lwi	r3,r19,40
$L236:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fminf
$Lfe36:
	.size	fminf,$Lfe36-fminf
	.align	2
	.globl	fminl
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	swi	r7,r19,44
	swi	r8,r19,48
	lwi	r7,r19,36
	lwi	r8,r19,40
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L266
	lwi	r4,r19,44
	lwi	r5,r19,48
	bri	$L254
$L266:
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L267
	lwi	r4,r19,36
	lwi	r5,r19,40
	bri	$L254
$L267:
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r19,44
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L257
	lwi	r3,r19,36
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L258
	lwi	r4,r19,36
	lwi	r5,r19,40
	bri	$L254
$L258:
	lwi	r4,r19,44
	lwi	r5,r19,48
	bri	$L254
$L257:
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L268
	lwi	r4,r19,36
	lwi	r5,r19,40
	bri	$L254
$L268:
	lwi	r4,r19,44
	lwi	r5,r19,48
$L254:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	fminl
$Lfe37:
	.size	fminl,$Lfe37-fminl
	.rodata
	.align	2
	.type	digits,@object
	.size	digits,65
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.text
	.align	2
	.globl	l64a
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	lwi	r3,r19,20
	swi	r3,r19,8
	addik	r3,r0,s.0
	swi	r3,r19,4
	bri	$L270
$L271:
	lwi	r3,r19,8
	andi	r3,r3,63 #and1
	lbui	r3,r3,digits
	sext8	r4,r3
	lwi	r3,r19,4
	sbi	r4,r3,0
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
	lwi	r4,r19,8
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	swi	r3,r19,8
$L270:
	lwi	r3,r19,8
	bnei	r3,$L271
	lwi	r3,r19,4
	sbi	r0,r3,0
	addik	r3,r0,s.0
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	l64a
$Lfe38:
	.size	l64a,$Lfe38-l64a
	.bss
	.lcomm	seed,8,4
	.type	seed, @object
	.text
	.align	2
	.globl	srand
	.ent	srand
	.type	srand, @function
srand:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	addik	r3,r3,-1
	addk	r7,r3,r0
	addk	r6,r0,r0
	swi	r6,r0,seed
	swi	r7,r0,seed+4
	nop
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	srand
$Lfe39:
	.size	srand,$Lfe39-srand
	.align	2
	.globl	rand
	.ent	rand
	.type	rand, @function
rand:
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r19,r1,r0
	lwi	r4,r0,seed
	lwi	r5,r0,seed+4
	addik	r7,r0,0x5851f42d
	addik	r8,r0,0x4c957f2d #li => la
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__muldi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r6,r4,r0
	addk	r7,r5,r0
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000001 #li => la
	add	r5,r7,r5
	addc	r4,r6,r4
	swi	r4,r0,seed
	swi	r5,r0,seed+4
	lwi	r4,r0,seed
	lwi	r5,r0,seed+4
	srl	r23,r4
	addk	r22,r0,r0
	addk	r3,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rand
$Lfe40:
	.size	rand,$Lfe40-rand
	.align	2
	.globl	insque
	.ent	insque
	.type	insque, @function
insque:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	lwi	r3,r19,20
	swi	r3,r19,4
	lwi	r3,r19,24
	swi	r3,r19,8
	lwi	r3,r19,8
	bnei	r3,$L277
	lwi	r3,r19,4
	swi	r0,r3,4
	lwi	r3,r19,4
	lwi	r4,r3,4
	lwi	r3,r19,4
	swi	r4,r3,0
	bri	$L276
$L277:
	lwi	r3,r19,8
	lwi	r4,r3,0
	lwi	r3,r19,4
	swi	r4,r3,0
	lwi	r3,r19,4
	lwi	r4,r19,8
	swi	r4,r3,4
	lwi	r3,r19,8
	lwi	r4,r19,4
	swi	r4,r3,0
	lwi	r3,r19,4
	lwi	r3,r3,0
	beqi	r3,$L276
	lwi	r3,r19,4
	lwi	r3,r3,0
	lwi	r4,r19,4
	swi	r4,r3,4
$L276:
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	insque
$Lfe41:
	.size	insque,$Lfe41-insque
	.align	2
	.globl	remque
	.ent	remque
	.type	remque, @function
remque:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	lwi	r3,r19,16
	swi	r3,r19,4
	lwi	r3,r19,4
	lwi	r3,r3,0
	beqi	r3,$L280
	lwi	r3,r19,4
	lwi	r3,r3,0
	lwi	r4,r19,4
	lwi	r4,r4,4
	swi	r4,r3,4
$L280:
	lwi	r3,r19,4
	lwi	r3,r3,4
	beqi	r3,$L282
	lwi	r3,r19,4
	lwi	r3,r3,4
	lwi	r4,r19,4
	lwi	r4,r4,0
	swi	r4,r3,0
$L282:
	nop
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	remque
$Lfe42:
	.size	remque,$Lfe42-remque
	.align	2
	.globl	lsearch
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	r19,60,r15		# vars= 16, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,44
	swi	r22,r1,48
	swi	r23,r1,52
	swi	r24,r1,56
	addk	r19,r1,r0
	swi	r5,r19,64
	swi	r6,r19,68
	swi	r7,r19,72
	swi	r8,r19,76
	swi	r9,r19,80
	lwi	r24,r19,76
	addk	r3,r24,r0
	addik	r3,r3,-1
	swi	r3,r19,32
	addk	r11,r24,r0
	addk	r10,r0,r0
	addk	r3,r0,r11
	srl	r3,r11
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r22,r0,r10
	addk	r22,r10,r10
	addk	r22,r22,r22
	addk	r22,r22,r22
	or	r22,r3,r22
	addk	r23,r0,r11
	addk	r23,r11,r11
	addk	r23,r23,r23
	addk	r23,r23,r23
	lwi	r3,r19,68
	swi	r3,r19,36
	lwi	r3,r19,72
	lwi	r3,r3,0
	swi	r3,r19,40
	swi	r0,r19,28
	bri	$L284
$L287:
	lwi	r6,r19,28
	addk	r5,r24,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,36
	addk	r4,r3,r4
	lwi	r3,r19,80
	addk	r6,r4,r0
	lwi	r5,r19,64
	brald	r15,r3
	nop		# Unfilled delay slot

	bnei	r3,$L285
	lwi	r6,r19,28
	addk	r5,r24,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,36
	addk	r3,r3,r4
	bri	$L286
$L285:
	lwi	r3,r19,28
	addik	r3,r3,1
	swi	r3,r19,28
$L284:
	lwi	r4,r19,28
	lwi	r3,r19,40
	cmpu	r18,r3,r4
	blti	r18,$L287
	lwi	r3,r19,40
	addik	r4,r3,1
	lwi	r3,r19,72
	swi	r4,r3,0
	lwi	r6,r19,40
	addk	r5,r24,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,36
	addk	r3,r3,r4
	lwi	r7,r19,76
	lwi	r6,r19,64
	addk	r5,r3,r0
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L286:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,44
	lwi	r22,r1,48
	lwi	r23,r1,52
	lwi	r24,r1,56
	addik	r1,r1,60
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	lsearch
$Lfe43:
	.size	lsearch,$Lfe43-lsearch
	.align	2
	.globl	lfind
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	r19,60,r15		# vars= 16, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,44
	swi	r22,r1,48
	swi	r23,r1,52
	swi	r24,r1,56
	addk	r19,r1,r0
	swi	r5,r19,64
	swi	r6,r19,68
	swi	r7,r19,72
	swi	r8,r19,76
	swi	r9,r19,80
	lwi	r24,r19,76
	addk	r3,r24,r0
	addik	r3,r3,-1
	swi	r3,r19,32
	addk	r11,r24,r0
	addk	r10,r0,r0
	addk	r3,r0,r11
	srl	r3,r11
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r22,r0,r10
	addk	r22,r10,r10
	addk	r22,r22,r22
	addk	r22,r22,r22
	or	r22,r3,r22
	addk	r23,r0,r11
	addk	r23,r11,r11
	addk	r23,r23,r23
	addk	r23,r23,r23
	lwi	r3,r19,68
	swi	r3,r19,36
	lwi	r3,r19,72
	lwi	r3,r3,0
	swi	r3,r19,40
	swi	r0,r19,28
	bri	$L289
$L292:
	lwi	r6,r19,28
	addk	r5,r24,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,36
	addk	r4,r3,r4
	lwi	r3,r19,80
	addk	r6,r4,r0
	lwi	r5,r19,64
	brald	r15,r3
	nop		# Unfilled delay slot

	bnei	r3,$L290
	lwi	r6,r19,28
	addk	r5,r24,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,36
	addk	r3,r3,r4
	bri	$L291
$L290:
	lwi	r3,r19,28
	addik	r3,r3,1
	swi	r3,r19,28
$L289:
	lwi	r4,r19,28
	lwi	r3,r19,40
	cmpu	r18,r3,r4
	blti	r18,$L292
	addk	r3,r0,r0
$L291:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,44
	lwi	r22,r1,48
	lwi	r23,r1,52
	lwi	r24,r1,56
	addik	r1,r1,60
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	lfind
$Lfe44:
	.size	lfind,$Lfe44-lfind
	.align	2
	.globl	abs
	.ent	abs
	.type	abs, @function
abs:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	addk	r4,r0,r3
	sra	r4,r3
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	lwi	r3,r19,12
	xor	r3,r4,r3
	rsubk	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	abs
$Lfe45:
	.size	abs,$Lfe45-abs
	.align	2
	.globl	atoi
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	r19,40,r15		# vars= 8, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r0,r19,28
	swi	r0,r19,32
	bri	$L296
$L297:
	lwi	r3,r19,44
	addik	r3,r3,1
	swi	r3,r19,44
$L296:
	lwi	r3,r19,44
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r5,r3,r0
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L297
	lwi	r3,r19,44
	lbui	r3,r3,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L298
	xori	r3,r3,45
	bnei	r3,$L300
	addik	r3,r0,1	# 0x1
	swi	r3,r19,32
$L298:
	lwi	r3,r19,44
	addik	r3,r3,1
	swi	r3,r19,44
	bri	$L300
$L301:
	lwi	r4,r19,28
	addk	r3,r4,r0
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r19,44
	addik	r4,r3,1
	swi	r4,r19,44
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r3,r3,-48
	rsubk	r3,r3,r5
	swi	r3,r19,28
$L300:
	lwi	r3,r19,44
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L301
	lwi	r3,r19,32
	bnei	r3,$L302
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	bri	$L304
$L302:
	lwi	r3,r19,28
$L304:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	atoi
$Lfe46:
	.size	atoi,$Lfe46-atoi
	.align	2
	.globl	atol
	.ent	atol
	.type	atol, @function
atol:
	.frame	r19,40,r15		# vars= 8, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r0,r19,28
	swi	r0,r19,32
	bri	$L306
$L307:
	lwi	r3,r19,44
	addik	r3,r3,1
	swi	r3,r19,44
$L306:
	lwi	r3,r19,44
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r5,r3,r0
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L307
	lwi	r3,r19,44
	lbui	r3,r3,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L308
	xori	r3,r3,45
	bnei	r3,$L310
	addik	r3,r0,1	# 0x1
	swi	r3,r19,32
$L308:
	lwi	r3,r19,44
	addik	r3,r3,1
	swi	r3,r19,44
	bri	$L310
$L311:
	lwi	r4,r19,28
	addk	r3,r4,r0
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r19,44
	addik	r4,r3,1
	swi	r4,r19,44
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r3,r3,-48
	rsubk	r3,r3,r5
	swi	r3,r19,28
$L310:
	lwi	r3,r19,44
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L311
	lwi	r3,r19,32
	bnei	r3,$L312
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	bri	$L314
$L312:
	lwi	r3,r19,28
$L314:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	atol
$Lfe47:
	.size	atol,$Lfe47-atol
	.align	2
	.globl	atoll
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	r19,60,r15		# vars= 12, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,40
	swi	r22,r1,44
	swi	r23,r1,48
	swi	r24,r1,52
	swi	r25,r1,56
	addk	r19,r1,r0
	swi	r5,r19,64
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	swi	r4,r19,28
	swi	r5,r19,32
	swi	r0,r19,36
	bri	$L316
$L317:
	lwi	r3,r19,64
	addik	r3,r3,1
	swi	r3,r19,64
$L316:
	lwi	r3,r19,64
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r5,r3,r0
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L317
	lwi	r3,r19,64
	lbui	r3,r3,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L318
	xori	r3,r3,45
	bnei	r3,$L320
	addik	r3,r0,1	# 0x1
	swi	r3,r19,36
$L318:
	lwi	r3,r19,64
	addik	r3,r3,1
	swi	r3,r19,64
	bri	$L320
$L321:
	lwi	r6,r19,28
	lwi	r7,r19,32
	addk	r4,r6,r0
	addk	r5,r7,r0
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r22,r0,r4
	addk	r22,r4,r4
	addk	r22,r22,r22
	or	r22,r3,r22
	addk	r23,r0,r5
	addk	r23,r5,r5
	addk	r23,r23,r23
	add	r5,r23,r7
	addc	r4,r22,r6
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r24,r4,r4
	or	r24,r3,r24
	addk	r25,r5,r5
	addk	r4,r24,r0
	addk	r5,r25,r0
	addk	r8,r4,r0
	addk	r9,r5,r0
	lwi	r3,r19,64
	addik	r4,r3,1
	swi	r4,r19,64
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r3,r3,-48
	addk	r7,r0,r3
	add	r6,r7,r7
	addc	r6,r0,r0
	beqi	r6,.+8
	addi	r6,r0,0xffffffff
	rsub	r5,r7,r9
	rsubc	r4,r6,r8
	swi	r4,r19,28
	swi	r5,r19,32
$L320:
	lwi	r3,r19,64
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L321
	lwi	r3,r19,36
	bnei	r3,$L322
	lwi	r4,r19,28
	lwi	r5,r19,32
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
	bri	$L324
$L322:
	lwi	r4,r19,28
	lwi	r5,r19,32
$L324:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,40
	lwi	r22,r1,44
	lwi	r23,r1,48
	lwi	r24,r1,52
	lwi	r25,r1,56
	addik	r1,r1,60
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	atoll
$Lfe48:
	.size	atoll,$Lfe48-atoll
	.align	2
	.globl	bsearch
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	r19,40,r15		# vars= 8, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r6,r19,48
	swi	r7,r19,52
	swi	r8,r19,56
	swi	r9,r19,60
	bri	$L326
$L330:
	lwi	r3,r19,52
	srl	r3,r3
	lwi	r6,r19,56
	addk	r5,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,48
	addk	r3,r3,r4
	swi	r3,r19,28
	lwi	r3,r19,60
	lwi	r6,r19,28
	lwi	r5,r19,44
	brald	r15,r3
	nop		# Unfilled delay slot

	swi	r3,r19,32
	lwi	r3,r19,32
	bgei	r3,$L327
	lwi	r3,r19,52
	srl	r3,r3
	swi	r3,r19,52
	bri	$L326
$L327:
	lwi	r3,r19,32
	blei	r3,$L328
	lwi	r4,r19,28
	lwi	r3,r19,56
	addk	r3,r4,r3
	swi	r3,r19,48
	lwi	r3,r19,52
	srl	r3,r3
	lwi	r4,r19,52
	rsubk	r3,r3,r4
	addik	r3,r3,-1
	swi	r3,r19,52
	bri	$L326
$L328:
	lwi	r3,r19,28
	bri	$L329
$L326:
	lwi	r3,r19,52
	bnei	r3,$L330
	addk	r3,r0,r0
$L329:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bsearch
$Lfe49:
	.size	bsearch,$Lfe49-bsearch
	.align	2
	.globl	bsearch_r
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	r19,48,r15		# vars= 16, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,44
	addk	r19,r1,r0
	swi	r5,r19,52
	swi	r6,r19,56
	swi	r7,r19,60
	swi	r8,r19,64
	swi	r9,r19,68
	swi	r10,r19,72
	lwi	r3,r19,56
	swi	r3,r19,28
	lwi	r3,r19,60
	swi	r3,r19,32
	bri	$L332
$L336:
	lwi	r3,r19,32
	sra	r3,r3
	lwi	r6,r19,64
	addk	r5,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,28
	addk	r3,r3,r4
	swi	r3,r19,36
	lwi	r3,r19,68
	lwi	r7,r19,72
	lwi	r6,r19,36
	lwi	r5,r19,52
	brald	r15,r3
	nop		# Unfilled delay slot

	swi	r3,r19,40
	lwi	r3,r19,40
	bnei	r3,$L333
	lwi	r3,r19,36
	bri	$L334
$L333:
	lwi	r3,r19,40
	blei	r3,$L335
	lwi	r4,r19,36
	lwi	r3,r19,64
	addk	r3,r4,r3
	swi	r3,r19,28
	lwi	r3,r19,32
	addik	r3,r3,-1
	swi	r3,r19,32
$L335:
	lwi	r3,r19,32
	sra	r3,r3
	swi	r3,r19,32
$L332:
	lwi	r3,r19,32
	bnei	r3,$L336
	addk	r3,r0,r0
$L334:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,44
	addik	r1,r1,48
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bsearch_r
$Lfe50:
	.size	bsearch_r,$Lfe50-bsearch_r
	.align	2
	.globl	div
	.ent	div
	.type	div, @function
div:
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	swi	r5,r19,40
	swi	r6,r19,44
	swi	r7,r19,48
	lwi	r6,r19,48
	lwi	r5,r19,44
	brlid	r15,__divsi3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	lwi	r3,r19,44
	lwi	r6,r19,48
	addk	r5,r3,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,40
	swi	r22,r3,0
	lwi	r3,r19,40
	swi	r4,r3,4
	lwi	r3,r19,40
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	div
$Lfe51:
	.size	div,$Lfe51-div
	.align	2
	.globl	imaxabs
	.ent	imaxabs
	.type	imaxabs, @function
imaxabs:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	lwi	r3,r19,12
	addk	r9,r0,r3
	sra	r9,r3
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	lwi	r3,r19,12
	addk	r8,r0,r3
	sra	r8,r3
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	lwi	r3,r19,12
	xor	r10,r3,r8
	lwi	r3,r19,16
	xor	r11,r3,r9
	addk	r4,r10,r0
	addk	r5,r11,r0
	rsub	r11,r9,r5
	rsubc	r10,r8,r4
	addk	r4,r10,r0
	addk	r5,r11,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	imaxabs
$Lfe52:
	.size	imaxabs,$Lfe52-imaxabs
	.align	2
	.globl	imaxdiv
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	r19,56,r15		# vars= 16, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,44
	swi	r22,r1,48
	swi	r23,r1,52
	addk	r19,r1,r0
	swi	r5,r19,60
	swi	r6,r19,64
	swi	r7,r19,68
	swi	r8,r19,72
	swi	r9,r19,76
	lwi	r7,r19,72
	lwi	r8,r19,76
	lwi	r5,r19,64
	lwi	r6,r19,68
	brlid	r15,__divdi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r22,r4,r0
	addk	r23,r5,r0
	lwi	r4,r19,64
	lwi	r5,r19,68
	lwi	r7,r19,72
	lwi	r8,r19,76
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__moddi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	lwi	r3,r19,60
	swi	r22,r3,0
	swi	r23,r3,4
	lwi	r3,r19,60
	swi	r4,r3,8
	swi	r5,r3,12
	lwi	r3,r19,60
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,44
	lwi	r22,r1,48
	lwi	r23,r1,52
	addik	r1,r1,56
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	imaxdiv
$Lfe53:
	.size	imaxdiv,$Lfe53-imaxdiv
	.align	2
	.globl	labs
	.ent	labs
	.type	labs, @function
labs:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	addk	r4,r0,r3
	sra	r4,r3
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	lwi	r3,r19,12
	xor	r3,r4,r3
	rsubk	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	labs
$Lfe54:
	.size	labs,$Lfe54-labs
	.align	2
	.globl	ldiv
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	swi	r5,r19,40
	swi	r6,r19,44
	swi	r7,r19,48
	lwi	r6,r19,48
	lwi	r5,r19,44
	brlid	r15,__divsi3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	lwi	r3,r19,44
	lwi	r6,r19,48
	addk	r5,r3,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,40
	swi	r22,r3,0
	lwi	r3,r19,40
	swi	r4,r3,4
	lwi	r3,r19,40
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	ldiv
$Lfe55:
	.size	ldiv,$Lfe55-ldiv
	.align	2
	.globl	llabs
	.ent	llabs
	.type	llabs, @function
llabs:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	lwi	r3,r19,12
	addk	r9,r0,r3
	sra	r9,r3
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	lwi	r3,r19,12
	addk	r8,r0,r3
	sra	r8,r3
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	lwi	r3,r19,12
	xor	r10,r3,r8
	lwi	r3,r19,16
	xor	r11,r3,r9
	addk	r4,r10,r0
	addk	r5,r11,r0
	rsub	r11,r9,r5
	rsubc	r10,r8,r4
	addk	r4,r10,r0
	addk	r5,r11,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	llabs
$Lfe56:
	.size	llabs,$Lfe56-llabs
	.align	2
	.globl	lldiv
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	r19,56,r15		# vars= 16, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,44
	swi	r22,r1,48
	swi	r23,r1,52
	addk	r19,r1,r0
	swi	r5,r19,60
	swi	r6,r19,64
	swi	r7,r19,68
	swi	r8,r19,72
	swi	r9,r19,76
	lwi	r7,r19,72
	lwi	r8,r19,76
	lwi	r5,r19,64
	lwi	r6,r19,68
	brlid	r15,__divdi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r22,r4,r0
	addk	r23,r5,r0
	lwi	r4,r19,64
	lwi	r5,r19,68
	lwi	r7,r19,72
	lwi	r8,r19,76
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__moddi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	lwi	r3,r19,60
	swi	r22,r3,0
	swi	r23,r3,4
	lwi	r3,r19,60
	swi	r4,r3,8
	swi	r5,r3,12
	lwi	r3,r19,60
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,44
	lwi	r22,r1,48
	lwi	r23,r1,52
	addik	r1,r1,56
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	lldiv
$Lfe57:
	.size	lldiv,$Lfe57-lldiv
	.align	2
	.globl	wcschr
	.ent	wcschr
	.type	wcschr, @function
wcschr:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	bri	$L352
$L354:
	lwi	r3,r19,12
	addik	r3,r3,4
	swi	r3,r19,12
$L352:
	lwi	r3,r19,12
	lwi	r3,r3,0
	beqi	r3,$L353
	lwi	r3,r19,12
	lwi	r3,r3,0
	lwi	r4,r19,16
	xor	r3,r4,r3
	bnei	r3,$L354
$L353:
	lwi	r3,r19,12
	lwi	r3,r3,0
	beqi	r3,$L355
	lwi	r3,r19,12
	bri	$L357
$L355:
	addk	r3,r0,r0
$L357:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wcschr
$Lfe58:
	.size	wcschr,$Lfe58-wcschr
	.align	2
	.globl	wcscmp
	.ent	wcscmp
	.type	wcscmp, @function
wcscmp:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	bri	$L359
$L361:
	lwi	r3,r19,12
	addik	r3,r3,4
	swi	r3,r19,12
	lwi	r3,r19,16
	addik	r3,r3,4
	swi	r3,r19,16
$L359:
	lwi	r3,r19,12
	lwi	r4,r3,0
	lwi	r3,r19,16
	lwi	r3,r3,0
	xor	r3,r4,r3
	bnei	r3,$L360
	lwi	r3,r19,12
	lwi	r3,r3,0
	beqi	r3,$L360
	lwi	r3,r19,16
	lwi	r3,r3,0
	bnei	r3,$L361
$L360:
	lwi	r3,r19,12
	lwi	r4,r3,0
	lwi	r3,r19,16
	lwi	r3,r3,0
	cmp	r18,r3,r4
	blti	r18,$L362
	lwi	r3,r19,12
	lwi	r4,r3,0
	lwi	r3,r19,16
	lwi	r3,r3,0
	addik	r5,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L363
	addk	r5,r0,r0
$L363:
	andi	r3,r5,0x00ff
	bri	$L365
$L362:
	addik	r3,r0,-1	# 0xffffffffffffffff
$L365:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wcscmp
$Lfe59:
	.size	wcscmp,$Lfe59-wcscmp
	.align	2
	.globl	wcscpy
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	lwi	r3,r19,16
	swi	r3,r19,4
	nop
$L367:
	lwi	r4,r19,20
	addik	r3,r4,4
	swi	r3,r19,20
	lwi	r3,r19,16
	addik	r5,r3,4
	swi	r5,r19,16
	lwi	r4,r4,0
	swi	r4,r3,0
	lwi	r3,r3,0
	bnei	r3,$L367
	lwi	r3,r19,4
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wcscpy
$Lfe60:
	.size	wcscpy,$Lfe60-wcscpy
	.align	2
	.globl	wcslen
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	lwi	r3,r19,16
	swi	r3,r19,4
	bri	$L370
$L371:
	lwi	r3,r19,16
	addik	r3,r3,4
	swi	r3,r19,16
$L370:
	lwi	r3,r19,16
	lwi	r3,r3,0
	bnei	r3,$L371
	lwi	r4,r19,16
	lwi	r3,r19,4
	rsubk	r3,r3,r4
	addk	r4,r0,r3
	sra	r4,r3
	sra	r4,r4
	addk	r3,r4,r0
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wcslen
$Lfe61:
	.size	wcslen,$Lfe61-wcslen
	.align	2
	.globl	wcsncmp
	.ent	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	swi	r7,r19,20
	bri	$L374
$L376:
	lwi	r3,r19,20
	addik	r3,r3,-1
	swi	r3,r19,20
	lwi	r3,r19,12
	addik	r3,r3,4
	swi	r3,r19,12
	lwi	r3,r19,16
	addik	r3,r3,4
	swi	r3,r19,16
$L374:
	lwi	r3,r19,20
	beqi	r3,$L375
	lwi	r3,r19,12
	lwi	r4,r3,0
	lwi	r3,r19,16
	lwi	r3,r3,0
	xor	r3,r4,r3
	bnei	r3,$L375
	lwi	r3,r19,12
	lwi	r3,r3,0
	beqi	r3,$L375
	lwi	r3,r19,16
	lwi	r3,r3,0
	bnei	r3,$L376
$L375:
	lwi	r3,r19,20
	beqi	r3,$L377
	lwi	r3,r19,12
	lwi	r4,r3,0
	lwi	r3,r19,16
	lwi	r3,r3,0
	cmp	r18,r3,r4
	blti	r18,$L378
	lwi	r3,r19,12
	lwi	r4,r3,0
	lwi	r3,r19,16
	lwi	r3,r3,0
	addik	r5,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L379
	addk	r5,r0,r0
$L379:
	andi	r3,r5,0x00ff
	bri	$L382
$L378:
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L382
$L377:
	addk	r3,r0,r0
$L382:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wcsncmp
$Lfe62:
	.size	wcsncmp,$Lfe62-wcsncmp
	.align	2
	.globl	wmemchr
	.ent	wmemchr
	.type	wmemchr, @function
wmemchr:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	swi	r7,r19,20
	bri	$L384
$L386:
	lwi	r3,r19,20
	addik	r3,r3,-1
	swi	r3,r19,20
	lwi	r3,r19,12
	addik	r3,r3,4
	swi	r3,r19,12
$L384:
	lwi	r3,r19,20
	beqi	r3,$L385
	lwi	r3,r19,12
	lwi	r3,r3,0
	lwi	r4,r19,16
	xor	r3,r4,r3
	bnei	r3,$L386
$L385:
	lwi	r3,r19,20
	beqi	r3,$L387
	lwi	r3,r19,12
	bri	$L389
$L387:
	addk	r3,r0,r0
$L389:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wmemchr
$Lfe63:
	.size	wmemchr,$Lfe63-wmemchr
	.align	2
	.globl	wmemcmp
	.ent	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	swi	r7,r19,20
	bri	$L391
$L393:
	lwi	r3,r19,20
	addik	r3,r3,-1
	swi	r3,r19,20
	lwi	r3,r19,12
	addik	r3,r3,4
	swi	r3,r19,12
	lwi	r3,r19,16
	addik	r3,r3,4
	swi	r3,r19,16
$L391:
	lwi	r3,r19,20
	beqi	r3,$L392
	lwi	r3,r19,12
	lwi	r4,r3,0
	lwi	r3,r19,16
	lwi	r3,r3,0
	xor	r3,r4,r3
	beqi	r3,$L393
$L392:
	lwi	r3,r19,20
	beqi	r3,$L394
	lwi	r3,r19,12
	lwi	r4,r3,0
	lwi	r3,r19,16
	lwi	r3,r3,0
	cmp	r18,r3,r4
	blti	r18,$L395
	lwi	r3,r19,12
	lwi	r4,r3,0
	lwi	r3,r19,16
	lwi	r3,r3,0
	addik	r5,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L396
	addk	r5,r0,r0
$L396:
	andi	r3,r5,0x00ff
	bri	$L399
$L395:
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L399
$L394:
	addk	r3,r0,r0
$L399:
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wmemcmp
$Lfe64:
	.size	wmemcmp,$Lfe64-wmemcmp
	.align	2
	.globl	wmemcpy
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	swi	r7,r19,24
	lwi	r3,r19,16
	swi	r3,r19,4
	bri	$L401
$L402:
	lwi	r4,r19,20
	addik	r3,r4,4
	swi	r3,r19,20
	lwi	r3,r19,16
	addik	r5,r3,4
	swi	r5,r19,16
	lwi	r4,r4,0
	swi	r4,r3,0
$L401:
	lwi	r3,r19,24
	addik	r4,r3,-1
	swi	r4,r19,24
	bnei	r3,$L402
	lwi	r3,r19,4
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wmemcpy
$Lfe65:
	.size	wmemcpy,$Lfe65-wmemcpy
	.align	2
	.globl	wmemmove
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	swi	r7,r19,24
	lwi	r3,r19,16
	swi	r3,r19,4
	lwi	r4,r19,16
	lwi	r3,r19,20
	xor	r3,r4,r3
	bnei	r3,$L405
	lwi	r3,r19,16
	bri	$L406
$L405:
	lwi	r4,r19,16
	lwi	r3,r19,20
	rsubk	r4,r3,r4
	lwi	r3,r19,24
	addk	r3,r3,r3
	addk	r3,r3,r3
	cmpu	r18,r3,r4
	bgei	r18,$L411
	bri	$L408
$L409:
	lwi	r3,r19,24
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r19,20
	addk	r4,r3,r4
	lwi	r3,r19,24
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r19,16
	addk	r3,r3,r5
	lwi	r4,r4,0
	swi	r4,r3,0
$L408:
	lwi	r3,r19,24
	addik	r4,r3,-1
	swi	r4,r19,24
	bnei	r3,$L409
	bri	$L410
$L412:
	lwi	r4,r19,20
	addik	r3,r4,4
	swi	r3,r19,20
	lwi	r3,r19,16
	addik	r5,r3,4
	swi	r5,r19,16
	lwi	r4,r4,0
	swi	r4,r3,0
$L411:
	lwi	r3,r19,24
	addik	r4,r3,-1
	swi	r4,r19,24
	bnei	r3,$L412
$L410:
	lwi	r3,r19,4
$L406:
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wmemmove
$Lfe66:
	.size	wmemmove,$Lfe66-wmemmove
	.align	2
	.globl	wmemset
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	swi	r7,r19,24
	lwi	r3,r19,16
	swi	r3,r19,4
	bri	$L414
$L415:
	lwi	r3,r19,16
	addik	r4,r3,4
	swi	r4,r19,16
	lwi	r4,r19,20
	swi	r4,r3,0
$L414:
	lwi	r3,r19,24
	addik	r4,r3,-1
	swi	r4,r19,24
	bnei	r3,$L415
	lwi	r3,r19,4
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	wmemset
$Lfe67:
	.size	wmemset,$Lfe67-wmemset
	.align	2
	.globl	bcopy
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	lwi	r3,r19,20
	swi	r3,r19,4
	lwi	r3,r19,24
	swi	r3,r19,8
	lwi	r4,r19,4
	lwi	r3,r19,8
	cmpu	r18,r3,r4
	bgei	r18,$L418
	lwi	r4,r19,4
	lwi	r3,r19,28
	addk	r3,r4,r3
	swi	r3,r19,4
	lwi	r4,r19,8
	lwi	r3,r19,28
	addk	r3,r4,r3
	swi	r3,r19,8
	bri	$L419
$L420:
	lwi	r3,r19,4
	addik	r3,r3,-1
	swi	r3,r19,4
	lwi	r3,r19,8
	addik	r3,r3,-1
	swi	r3,r19,8
	lwi	r3,r19,4
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r19,8
	sbi	r4,r3,0
	lwi	r3,r19,28
	addik	r3,r3,-1
	swi	r3,r19,28
$L419:
	lwi	r3,r19,28
	bnei	r3,$L420
	bri	$L424
$L418:
	lwi	r4,r19,4
	lwi	r3,r19,8
	xor	r3,r4,r3
	beqi	r3,$L424
	bri	$L422
$L423:
	lwi	r4,r19,4
	addik	r3,r4,1
	swi	r3,r19,4
	lwi	r3,r19,8
	addik	r5,r3,1
	swi	r5,r19,8
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r19,28
	addik	r3,r3,-1
	swi	r3,r19,28
$L422:
	lwi	r3,r19,28
	bnei	r3,$L423
$L424:
	nop
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bcopy
$Lfe68:
	.size	bcopy,$Lfe68-bcopy
	.align	2
	.globl	rotl64
	.ent	rotl64
	.type	rotl64, @function
rotl64:
	.frame	r19,16,r15		# vars= 0, regs= 3, args= 0
	.mask	0x00c80000
	addik	r1,r1,-16
	swi	r19,r1,4
	swi	r22,r1,8
	swi	r23,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	lwi	r4,r19,20
	lwi	r5,r19,24
	lwi	r3,r19,28
	andi	r3,r3,32 #and1
	beqi	r3,$L426
	lwi	r3,r19,28
	andi	r18,r3,31
	addk	r10,r0,r5
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	addk	r11,r0,r0
	bri	$L427
$L426:
	srl	r7,r5
	lwi	r3,r19,28
	xori	r6,r3,-1
	andi	r18,r6,31
	addk	r3,r0,r7
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	lwi	r6,r19,28
	andi	r18,r6,31
	addk	r10,r0,r4
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	or	r10,r3,r10
	lwi	r3,r19,28
	andi	r18,r3,31
	addk	r11,r0,r5
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r11,r11,r11
$L427:
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r3,r3,32 #and1
	beqi	r3,$L428
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r18,r3,31
	addk	r9,r0,r4
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	addk	r8,r0,r0
	bri	$L429
$L428:
	addk	r7,r4,r4
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	xori	r3,r3,-1
	andi	r18,r3,31
	addk	r6,r0,r7
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r18,r3,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	or	r9,r6,r9
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r18,r3,31
	addk	r8,r0,r4
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
$L429:
	or	r22,r8,r10
	or	r23,r9,r11
	addk	r8,r22,r0
	addk	r9,r23,r0
	addk	r4,r8,r0
	addk	r5,r9,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotl64
$Lfe69:
	.size	rotl64,$Lfe69-rotl64
	.align	2
	.globl	rotr64
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	r19,16,r15		# vars= 0, regs= 3, args= 0
	.mask	0x00c80000
	addik	r1,r1,-16
	swi	r19,r1,4
	swi	r22,r1,8
	swi	r23,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	lwi	r4,r19,20
	lwi	r5,r19,24
	lwi	r3,r19,28
	andi	r3,r3,32 #and1
	beqi	r3,$L432
	lwi	r3,r19,28
	andi	r18,r3,31
	addk	r11,r0,r4
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r11,r11
	addk	r10,r0,r0
	bri	$L433
$L432:
	addk	r7,r4,r4
	lwi	r3,r19,28
	xori	r6,r3,-1
	andi	r18,r6,31
	addk	r3,r0,r7
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	lwi	r6,r19,28
	andi	r18,r6,31
	addk	r11,r0,r5
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r11,r11
	or	r11,r3,r11
	lwi	r3,r19,28
	andi	r18,r3,31
	addk	r10,r0,r4
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
$L433:
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r3,r3,32 #and1
	beqi	r3,$L434
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r18,r3,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	addk	r9,r0,r0
	bri	$L435
$L434:
	srl	r7,r5
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	xori	r3,r3,-1
	andi	r18,r3,31
	addk	r6,r0,r7
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r18,r3,31
	addk	r8,r0,r4
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	or	r8,r6,r8
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r18,r3,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
$L435:
	or	r22,r8,r10
	or	r23,r9,r11
	addk	r8,r22,r0
	addk	r9,r23,r0
	addk	r4,r8,r0
	addk	r5,r9,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotr64
$Lfe70:
	.size	rotr64,$Lfe70-rotr64
	.align	2
	.globl	rotl32
	.ent	rotl32
	.type	rotl32, @function
rotl32:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	lwi	r5,r19,12
	lwi	r3,r19,16
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	lwi	r3,r19,16
	rsubk	r3,r3,r0
	andi	r3,r3,31 #and1
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	or	r4,r4,r6
	addk	r3,r4,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotl32
$Lfe71:
	.size	rotl32,$Lfe71-rotl32
	.align	2
	.globl	rotr32
	.ent	rotr32
	.type	rotr32, @function
rotr32:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	lwi	r5,r19,12
	lwi	r3,r19,16
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	lwi	r3,r19,16
	rsubk	r3,r3,r0
	andi	r3,r3,31 #and1
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	or	r4,r4,r6
	addk	r3,r4,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotr32
$Lfe72:
	.size	rotr32,$Lfe72-rotr32
	.align	2
	.globl	rotl_sz
	.ent	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	lwi	r5,r19,12
	lwi	r3,r19,16
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	lwi	r3,r19,16
	rsubk	r3,r3,r0
	andi	r3,r3,31 #and1
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	or	r4,r4,r6
	addk	r3,r4,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotl_sz
$Lfe73:
	.size	rotl_sz,$Lfe73-rotl_sz
	.align	2
	.globl	rotr_sz
	.ent	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	lwi	r5,r19,12
	lwi	r3,r19,16
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	lwi	r3,r19,16
	rsubk	r3,r3,r0
	andi	r3,r3,31 #and1
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	or	r4,r4,r6
	addk	r3,r4,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotr_sz
$Lfe74:
	.size	rotr_sz,$Lfe74-rotr_sz
	.align	2
	.globl	rotl16
	.ent	rotl16
	.type	rotl16, @function
rotl16:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	swi	r6,r19,16
	shi	r3,r19,12
	lhui	r4,r19,12
	lwi	r3,r19,16
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	andi	r4,r5,0xffff
	lhui	r5,r19,12
	lwi	r3,r19,16
	addik	r6,r0,16	# 0x10
	rsubk	r3,r3,r6
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	andi	r3,r6,0xffff
	or	r3,r4,r3
	andi	r3,r3,0xffff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotl16
$Lfe75:
	.size	rotl16,$Lfe75-rotl16
	.align	2
	.globl	rotr16
	.ent	rotr16
	.type	rotr16, @function
rotr16:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	swi	r6,r19,16
	shi	r3,r19,12
	lhui	r4,r19,12
	lwi	r3,r19,16
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	andi	r4,r5,0xffff
	lhui	r5,r19,12
	lwi	r3,r19,16
	addik	r6,r0,16	# 0x10
	rsubk	r3,r3,r6
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	andi	r3,r6,0xffff
	or	r3,r4,r3
	andi	r3,r3,0xffff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotr16
$Lfe76:
	.size	rotr16,$Lfe76-rotr16
	.align	2
	.globl	rotl8
	.ent	rotl8
	.type	rotl8, @function
rotl8:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	swi	r6,r19,16
	sbi	r3,r19,12
	lbui	r4,r19,12
	lwi	r3,r19,16
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	andi	r4,r5,0x00ff
	lbui	r5,r19,12
	lwi	r3,r19,16
	addik	r6,r0,8	# 0x8
	rsubk	r3,r3,r6
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	andi	r3,r6,0x00ff
	or	r3,r4,r3
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotl8
$Lfe77:
	.size	rotl8,$Lfe77-rotl8
	.align	2
	.globl	rotr8
	.ent	rotr8
	.type	rotr8, @function
rotr8:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	swi	r6,r19,16
	sbi	r3,r19,12
	lbui	r4,r19,12
	lwi	r3,r19,16
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	andi	r4,r5,0x00ff
	lbui	r5,r19,12
	lwi	r3,r19,16
	addik	r6,r0,8	# 0x8
	rsubk	r3,r3,r6
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	andi	r3,r6,0x00ff
	or	r3,r4,r3
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	rotr8
$Lfe78:
	.size	rotr8,$Lfe78-rotr8
	.align	2
	.globl	bswap_16
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	addk	r3,r5,r0
	shi	r3,r19,16
	addik	r3,r0,255	# 0xff
	swi	r3,r19,4
	lhui	r4,r19,16
	lwi	r3,r19,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	and	r3,r4,r3
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	andi	r4,r4,0xffff
	lwi	r3,r19,4
	andi	r5,r3,0xffff
	lhui	r3,r19,16
	and	r3,r5,r3
	andi	r3,r3,0xffff
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	addk	r5,r3,r0
	addk	r3,r3,r5
	andi	r3,r3,0xffff
	or	r3,r4,r3
	andi	r3,r3,0xffff
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bswap_16
$Lfe79:
	.size	bswap_16,$Lfe79-bswap_16
	.align	2
	.globl	bswap_32
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	addik	r3,r0,255	# 0xff
	swi	r3,r19,4
	lwi	r3,r19,4
	src	r4,r3
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	andi	r4,r4,-16777216
	lwi	r3,r19,16
	and	r3,r4,r3
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r19,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r19,16
	and	r5,r5,r3
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	or	r4,r4,r3
	lwi	r3,r19,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r19,16
	and	r3,r5,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	or	r4,r4,r3
	lwi	r5,r19,16
	lwi	r3,r19,4
	and	r5,r5,r3
	src	r3,r5
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	or	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bswap_32
$Lfe80:
	.size	bswap_32,$Lfe80-bswap_32
	.align	2
	.globl	bswap_64
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	r19,240,r15		# vars= 192, regs= 11, args= 0
	.mask	0xffc80000
	addik	r1,r1,-240
	swi	r19,r1,196
	swi	r22,r1,200
	swi	r23,r1,204
	swi	r24,r1,208
	swi	r25,r1,212
	swi	r26,r1,216
	swi	r27,r1,220
	swi	r28,r1,224
	swi	r29,r1,228
	swi	r30,r1,232
	swi	r31,r1,236
	addk	r19,r1,r0
	swi	r5,r19,244
	swi	r6,r19,248
	addik	r4,r0,0x00000000
	addik	r5,r0,0x000000ff #li => la
	swi	r4,r19,4
	swi	r5,r19,8
	lwi	r3,r19,8
	src	r8,r3
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	andi	r8,r8,-16777216
	addk	r9,r0,r0
	lwi	r3,r19,244
	and	r22,r3,r8
	lwi	r3,r19,248
	and	r23,r3,r9
	addk	r3,r0,r22
	srl	r3,r22
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	swi	r3,r19,64
	addk	r8,r0,r0
	swi	r8,r19,60
	lwi	r3,r19,8
	addk	r10,r0,r3
	addk	r10,r3,r3
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r11,r0,r0
	lwi	r3,r19,244
	and	r3,r3,r10
	swi	r3,r19,68
	lwi	r3,r19,248
	and	r3,r3,r11
	swi	r3,r19,72
	lwi	r3,r19,68
	addk	r25,r0,r3
	srl	r25,r3
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	addk	r24,r0,r0
	addik	r3,r19,60
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	or	r3,r3,r24
	swi	r3,r19,76
	addk	r3,r5,r0
	or	r3,r3,r25
	swi	r3,r19,80
	lwi	r3,r19,8
	addk	r30,r0,r3
	addk	r30,r3,r3
	addk	r30,r30,r30
	addk	r30,r30,r30
	addk	r30,r30,r30
	addk	r30,r30,r30
	addk	r30,r30,r30
	addk	r30,r30,r30
	addk	r30,r30,r30
	addk	r31,r0,r0
	lwi	r3,r19,244
	and	r28,r3,r30
	lwi	r3,r19,248
	and	r29,r3,r31
	addk	r3,r0,r28
	addk	r3,r28,r28
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r27,r0,r29
	srl	r27,r29
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	srl	r27,r27
	or	r27,r3,r27
	addk	r26,r0,r28
	srl	r26,r28
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	addik	r3,r19,76
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	or	r3,r3,r26
	swi	r3,r19,84
	addk	r3,r5,r0
	or	r3,r3,r27
	swi	r3,r19,88
	lwi	r3,r19,8
	swi	r3,r19,92
	swi	r8,r19,96
	lwi	r3,r19,244
	addik	r4,r19,92
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r6,r4,r0
	and	r3,r3,r6
	swi	r3,r19,100
	lwi	r3,r19,248
	addk	r4,r5,r0
	and	r3,r3,r4
	swi	r3,r19,104
	addik	r3,r19,100
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r6,r4,r0
	src	r3,r6
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	addk	r7,r5,r0
	addk	r6,r0,r7
	srl	r6,r7
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	swi	r6,r19,16
	lwi	r6,r19,16
	or	r3,r3,r6
	swi	r3,r19,16
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	swi	r3,r19,12
	addik	r3,r19,84
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r19,12
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r9,r4,r0
	or	r3,r3,r9
	swi	r3,r19,108
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r19,112
	lwi	r3,r19,8
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r19,4
	src	r5,r3
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	andi	r5,r5,-16777216
	swi	r5,r19,20
	lwi	r3,r19,20
	or	r3,r4,r3
	swi	r3,r19,20
	lwi	r3,r19,8
	src	r4,r3
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	andi	r4,r4,-16777216
	swi	r4,r19,24
	lwi	r3,r19,244
	addik	r4,r19,20
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r6,r4,r0
	and	r3,r3,r6
	swi	r3,r19,116
	lwi	r3,r19,248
	addk	r4,r5,r0
	and	r3,r3,r4
	swi	r3,r19,120
	addik	r3,r19,116
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r6,r5,r0
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r7,r4,r0
	addk	r6,r0,r7
	addk	r6,r7,r7
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	swi	r6,r19,28
	lwi	r6,r19,28
	or	r3,r3,r6
	swi	r3,r19,28
	addk	r4,r5,r0
	addk	r3,r0,r4
	addk	r3,r4,r4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	swi	r3,r19,32
	addik	r3,r19,108
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r19,28
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r9,r4,r0
	or	r3,r3,r9
	swi	r3,r19,124
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r19,128
	lwi	r3,r19,8
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r19,4
	addk	r5,r0,r3
	addk	r5,r3,r3
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	swi	r5,r19,36
	lwi	r3,r19,36
	or	r3,r4,r3
	swi	r3,r19,36
	lwi	r3,r19,8
	addk	r4,r0,r3
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	swi	r4,r19,40
	lwi	r3,r19,244
	addik	r4,r19,36
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r6,r4,r0
	and	r3,r3,r6
	swi	r3,r19,132
	lwi	r3,r19,248
	addk	r4,r5,r0
	and	r3,r3,r4
	swi	r3,r19,136
	addik	r3,r19,132
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r6,r5,r0
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r7,r4,r0
	src	r6,r7
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	andi	r6,r6,-16777216
	swi	r6,r19,44
	lwi	r6,r19,44
	or	r3,r3,r6
	swi	r3,r19,44
	addk	r4,r5,r0
	src	r3,r4
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	swi	r3,r19,48
	addik	r3,r19,124
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r19,44
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r9,r4,r0
	or	r3,r3,r9
	swi	r3,r19,140
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r19,144
	lwi	r4,r19,8
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r19,4
	addk	r5,r0,r4
	addk	r5,r4,r4
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	swi	r5,r19,52
	lwi	r4,r19,52
	or	r3,r3,r4
	swi	r3,r19,52
	lwi	r3,r19,8
	addk	r4,r0,r3
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	swi	r4,r19,56
	lwi	r3,r19,244
	addik	r4,r19,52
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r6,r4,r0
	and	r3,r3,r6
	swi	r3,r19,148
	lwi	r3,r19,248
	addk	r4,r5,r0
	and	r3,r3,r4
	swi	r3,r19,152
	lwi	r4,r19,152
	addk	r3,r0,r4
	addk	r3,r4,r4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	swi	r3,r19,156
	swi	r8,r19,160
	addik	r3,r19,140
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r19,156
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r9,r4,r0
	or	r3,r3,r9
	swi	r3,r19,164
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r19,168
	lwi	r4,r19,244
	lwi	r3,r19,4
	and	r3,r4,r3
	swi	r3,r19,172
	lwi	r4,r19,248
	lwi	r3,r19,8
	and	r3,r4,r3
	swi	r3,r19,176
	lwi	r4,r19,176
	src	r3,r4
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	swi	r3,r19,180
	swi	r8,r19,184
	addik	r3,r19,164
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r19,180
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r8,r4,r0
	or	r3,r3,r8
	swi	r3,r19,188
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r19,192
	addik	r3,r19,188
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,196
	lwi	r22,r1,200
	lwi	r23,r1,204
	lwi	r24,r1,208
	lwi	r25,r1,212
	lwi	r26,r1,216
	lwi	r27,r1,220
	lwi	r28,r1,224
	lwi	r29,r1,228
	lwi	r30,r1,232
	lwi	r31,r1,236
	addik	r1,r1,240
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	bswap_64
$Lfe81:
	.size	bswap_64,$Lfe81-bswap_64
	.align	2
	.globl	ffs
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r0,r19,4
	bri	$L460
$L463:
	lwi	r5,r19,16
	lwi	r4,r19,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r3,r3,1 #and1
	beqi	r3,$L461
	lwi	r3,r19,4
	addik	r3,r3,1
	bri	$L462
$L461:
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
$L460:
	lwi	r4,r19,4
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L463
	addk	r3,r0,r0
$L462:
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	ffs
$Lfe82:
	.size	ffs,$Lfe82-ffs
	.align	2
	.globl	libiberty_ffs
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	r19,12,r15		# vars= 0, regs= 2, args= 0
	.mask	0x00480000
	addik	r1,r1,-12
	swi	r19,r1,4
	swi	r22,r1,8
	addk	r19,r1,r0
	addk	r3,r5,r0
	bnei	r3,$L465
	addk	r3,r0,r0
	bri	$L466
$L465:
	addik	r22,r0,1	# 0x1
	bri	$L467
$L468:
	sra	r3,r3
	addik	r22,r22,1
$L467:
	andi	r4,r3,1 #and1
	beqi	r4,$L468
	addk	r3,r22,r0
$L466:
	addk	r1,r19,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	libiberty_ffs
$Lfe83:
	.size	libiberty_ffs,$Lfe83-libiberty_ffs
	.rodata
	.align	2
$LC0:
	.long	-8388609
	.align	2
$LC1:
	.long	2139095039
	.text
	.align	2
	.globl	gl_isinff
	.ent	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	lwi	r6,r0,$LC0
	lwi	r5,r19,36
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	blti	r3,$L470
	lwi	r6,r0,$LC1
	lwi	r5,r19,36
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L475
$L470:
	addik	r3,r0,1	# 0x1
	bri	$L474
$L475:
	addk	r3,r0,r0
$L474:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	gl_isinff
$Lfe84:
	.size	gl_isinff,$Lfe84-gl_isinff
	.rodata
	.align	2
$LC2:
	.long	-1048577
	.long	-1
	.align	2
$LC3:
	.long	2146435071
	.long	-1
	.text
	.align	2
	.globl	gl_isinfd
	.ent	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r7,r0,$LC2
	lwi	r8,r0,$LC2+4
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L477
	lwi	r7,r0,$LC3
	lwi	r8,r0,$LC3+4
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L482
$L477:
	addik	r3,r0,1	# 0x1
	bri	$L481
$L482:
	addk	r3,r0,r0
$L481:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	gl_isinfd
$Lfe85:
	.size	gl_isinfd,$Lfe85-gl_isinfd
	.rodata
	.align	2
$LC4:
	.long	-1048577
	.long	-1
	.align	2
$LC5:
	.long	2146435071
	.long	-1
	.text
	.align	2
	.globl	gl_isinfl
	.ent	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r7,r0,$LC4
	lwi	r8,r0,$LC4+4
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L484
	lwi	r7,r0,$LC5
	lwi	r8,r0,$LC5+4
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L489
$L484:
	addik	r3,r0,1	# 0x1
	bri	$L488
$L489:
	addk	r3,r0,r0
$L488:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	gl_isinfl
$Lfe86:
	.size	gl_isinfl,$Lfe86-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r5,r19,40
	brlid	r15,__floatsidf
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	lwi	r3,r19,36
	swi	r4,r3,0
	swi	r5,r3,4
	nop
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	_Qp_itoq
$Lfe87:
	.size	_Qp_itoq,$Lfe87-_Qp_itoq
	.align	2
	.globl	ldexpf
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	r19,36,r15		# vars= 4, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,32
	addk	r19,r1,r0
	swi	r5,r19,40
	swi	r6,r19,44
	lwi	r6,r19,40
	lwi	r5,r19,40
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L492
	lwi	r3,r19,40
	addk	r6,r3,r0
	addk	r5,r3,r0
	brlid	r15,__addsf3
	nop		# Unfilled delay slot

	addk	r6,r3,r0
	lwi	r5,r19,40
	brlid	r15,__nesf2
	nop		# Unfilled delay slot

	beqi	r3,$L492
	lwi	r3,r19,44
	bgei	r3,$L494
	addik	r3,r0,0x3f000000
	bri	$L495
$L494:
	addik	r3,r0,0x40000000
$L495:
	swi	r3,r19,28
$L498:
	lwi	r3,r19,44
	andi	r3,r3,1 #and1
	beqi	r3,$L496
	lwi	r6,r19,28
	lwi	r5,r19,40
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r19,40
$L496:
	lwi	r3,r19,44
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r3
	sra	r3,r3
	swi	r3,r19,44
	lwi	r3,r19,44
	beqi	r3,$L501
	lwi	r6,r19,28
	lwi	r5,r19,28
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r19,28
	bri	$L498
$L501:
	nop
$L492:
	lwi	r3,r19,40
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,32
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	ldexpf
$Lfe88:
	.size	ldexpf,$Lfe88-ldexpf
	.align	2
	.globl	ldexp
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	r19,40,r15		# vars= 8, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r6,r19,48
	swi	r7,r19,52
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L503
	lwi	r4,r19,44
	lwi	r5,r19,48
	addk	r7,r4,r0
	addk	r8,r5,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__adddf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r7,r4,r0
	addk	r8,r5,r0
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	beqi	r3,$L503
	lwi	r3,r19,52
	bgei	r3,$L505
	addik	r4,r0,0x3fe00000 
	addik	r5,r0,0x00000000 #Xfer Lo
	bri	$L506
$L505:
	addik	r4,r0,0x40000000 
	addik	r5,r0,0x00000000 #Xfer Lo
$L506:
	swi	r4,r19,28
	swi	r5,r19,32
$L509:
	lwi	r3,r19,52
	andi	r3,r3,1 #and1
	beqi	r3,$L507
	lwi	r7,r19,28
	lwi	r8,r19,32
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r19,44
	swi	r5,r19,48
$L507:
	lwi	r3,r19,52
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r3
	sra	r3,r3
	swi	r3,r19,52
	lwi	r3,r19,52
	beqi	r3,$L512
	lwi	r7,r19,28
	lwi	r8,r19,32
	lwi	r5,r19,28
	lwi	r6,r19,32
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r19,28
	swi	r5,r19,32
	bri	$L509
$L512:
	nop
$L503:
	lwi	r4,r19,44
	lwi	r5,r19,48
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	ldexp
$Lfe89:
	.size	ldexp,$Lfe89-ldexp
	.align	2
	.globl	ldexpl
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	r19,40,r15		# vars= 8, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r6,r19,48
	swi	r7,r19,52
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L514
	lwi	r4,r19,44
	lwi	r5,r19,48
	addk	r7,r4,r0
	addk	r8,r5,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__adddf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r7,r4,r0
	addk	r8,r5,r0
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	beqi	r3,$L514
	lwi	r3,r19,52
	bgei	r3,$L516
	addik	r4,r0,0x3fe00000 
	addik	r5,r0,0x00000000 #Xfer Lo
	bri	$L517
$L516:
	addik	r4,r0,0x40000000 
	addik	r5,r0,0x00000000 #Xfer Lo
$L517:
	swi	r4,r19,28
	swi	r5,r19,32
$L520:
	lwi	r3,r19,52
	andi	r3,r3,1 #and1
	beqi	r3,$L518
	lwi	r7,r19,28
	lwi	r8,r19,32
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r19,44
	swi	r5,r19,48
$L518:
	lwi	r3,r19,52
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r3
	sra	r3,r3
	swi	r3,r19,52
	lwi	r3,r19,52
	beqi	r3,$L523
	lwi	r7,r19,28
	lwi	r8,r19,32
	lwi	r5,r19,28
	lwi	r6,r19,32
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r19,28
	swi	r5,r19,32
	bri	$L520
$L523:
	nop
$L514:
	lwi	r4,r19,44
	lwi	r5,r19,48
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	ldexpl
$Lfe90:
	.size	ldexpl,$Lfe90-ldexpl
	.align	2
	.globl	memxor
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	lwi	r3,r19,24
	swi	r3,r19,4
	lwi	r3,r19,20
	swi	r3,r19,8
	bri	$L525
$L526:
	lwi	r3,r19,4
	addik	r4,r3,1
	swi	r4,r19,4
	lbui	r3,r3,0
	sext8	r5,r3
	lwi	r3,r19,8
	addik	r4,r3,1
	swi	r4,r19,8
	lbui	r4,r3,0
	sext8	r4,r4
	xor	r4,r5,r4
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r19,28
	addik	r3,r3,-1
	swi	r3,r19,28
$L525:
	lwi	r3,r19,28
	bnei	r3,$L526
	lwi	r3,r19,20
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memxor
$Lfe91:
	.size	memxor,$Lfe91-memxor
	.align	2
	.globl	strncat
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	r19,36,r15		# vars= 4, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,32
	addk	r19,r1,r0
	swi	r5,r19,40
	swi	r6,r19,44
	swi	r7,r19,48
	lwi	r5,r19,40
	brlid	r15,strlen
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,40
	addk	r3,r3,r4
	swi	r3,r19,28
	bri	$L529
$L531:
	lwi	r3,r19,44
	addik	r3,r3,1
	swi	r3,r19,44
	lwi	r3,r19,28
	addik	r3,r3,1
	swi	r3,r19,28
	lwi	r3,r19,48
	addik	r3,r3,-1
	swi	r3,r19,48
$L529:
	lwi	r3,r19,48
	beqi	r3,$L530
	lwi	r3,r19,44
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r19,28
	sbi	r4,r3,0
	lwi	r3,r19,28
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L531
$L530:
	lwi	r3,r19,48
	bnei	r3,$L532
	lwi	r3,r19,28
	sbi	r0,r3,0
$L532:
	lwi	r3,r19,40
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,32
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strncat
$Lfe92:
	.size	strncat,$Lfe92-strncat
	.align	2
	.globl	strnlen
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	swi	r0,r19,4
	bri	$L535
$L540:
	nop
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
$L535:
	lwi	r4,r19,4
	lwi	r3,r19,20
	cmpu	r18,r3,r4
	bgei	r18,$L536
	lwi	r4,r19,16
	lwi	r3,r19,4
	addk	r3,r4,r3
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L540
$L536:
	lwi	r3,r19,4
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strnlen
$Lfe93:
	.size	strnlen,$Lfe93-strnlen
	.align	2
	.globl	strpbrk
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	bri	$L542
$L546:
	lwi	r3,r19,20
	swi	r3,r19,4
	bri	$L543
$L545:
	lwi	r3,r19,4
	addik	r4,r3,1
	swi	r4,r19,4
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r19,16
	lbui	r3,r3,0
	sext8	r3,r3
	xor	r3,r4,r3
	bnei	r3,$L543
	lwi	r3,r19,16
	bri	$L544
$L543:
	lwi	r3,r19,4
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L545
	lwi	r3,r19,16
	addik	r3,r3,1
	swi	r3,r19,16
$L542:
	lwi	r3,r19,16
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L546
	addk	r3,r0,r0
$L544:
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strpbrk
$Lfe94:
	.size	strpbrk,$Lfe94-strpbrk
	.align	2
	.globl	strrchr
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	addk	r3,r5,r0
	swi	r6,r19,20
	swi	r0,r19,4
$L549:
	lbui	r4,r3,0
	sext8	r4,r4
	addk	r5,r4,r0
	lwi	r4,r19,20
	xor	r4,r4,r5
	bnei	r4,$L548
	swi	r3,r19,4
$L548:
	addk	r4,r3,r0
	addik	r3,r4,1
	lbui	r4,r4,0
	sext8	r4,r4
	bnei	r4,$L549
	lwi	r3,r19,4
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strrchr
$Lfe95:
	.size	strrchr,$Lfe95-strrchr
	.align	2
	.globl	strstr
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	r19,40,r15		# vars= 8, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r6,r19,48
	lwi	r3,r19,44
	swi	r3,r19,28
	lwi	r5,r19,48
	brlid	r15,strlen
	nop		# Unfilled delay slot

	swi	r3,r19,32
	lwi	r3,r19,32
	bnei	r3,$L554
	lwi	r3,r19,44
	bri	$L553
$L556:
	lwi	r7,r19,32
	lwi	r6,r19,48
	lwi	r5,r19,28
	brlid	r15,strncmp
	nop		# Unfilled delay slot

	bnei	r3,$L555
	lwi	r3,r19,28
	bri	$L553
$L555:
	lwi	r3,r19,28
	addik	r3,r3,1
	swi	r3,r19,28
$L554:
	lwi	r3,r19,48
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r6,r3,r0
	lwi	r5,r19,28
	brlid	r15,strchr
	nop		# Unfilled delay slot

	swi	r3,r19,28
	lwi	r3,r19,28
	bnei	r3,$L556
	addk	r3,r0,r0
$L553:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	strstr
$Lfe96:
	.size	strstr,$Lfe96-strstr
	.align	2
	.globl	copysign
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r6,r19,48
	swi	r7,r19,52
	swi	r8,r19,56
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L558
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r19,52
	lwi	r6,r19,56
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	bgti	r3,$L560
$L558:
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r19,44
	lwi	r6,r19,48
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L561
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r19,52
	lwi	r6,r19,56
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L561
$L560:
	lwi	r3,r19,44
	xori	r22,r3,-2147483648
	lwi	r23,r19,48
	bri	$L564
$L561:
	lwi	r22,r19,44
	lwi	r23,r19,48
$L564:
	addk	r4,r22,r0
	addk	r5,r23,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	copysign
$Lfe97:
	.size	copysign,$Lfe97-copysign
	.align	2
	.globl	memmem
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	r19,40,r15		# vars= 8, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r6,r19,48
	swi	r7,r19,52
	swi	r8,r19,56
	lwi	r4,r19,48
	lwi	r3,r19,56
	rsubk	r3,r3,r4
	lwi	r4,r19,44
	addk	r3,r4,r3
	swi	r3,r19,32
	lwi	r3,r19,56
	bnei	r3,$L568
	lwi	r3,r19,44
	bri	$L569
$L568:
	addik	r5,r0,1	# 0x1
	lwi	r4,r19,48
	lwi	r3,r19,56
	cmpu	r18,r3,r4
	blti	r18,$L570
	addk	r5,r0,r0
$L570:
	andi	r3,r5,0x00ff
	beqi	r3,$L571
	addk	r3,r0,r0
	bri	$L569
$L571:
	lwi	r3,r19,44
	swi	r3,r19,28
	bri	$L572
$L574:
	lwi	r3,r19,28
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r19,52
	lbui	r3,r3,0
	sext8	r3,r3
	xor	r3,r4,r3
	bnei	r3,$L573
	lwi	r3,r19,28
	addik	r4,r3,1
	lwi	r3,r19,52
	addik	r5,r3,1
	lwi	r3,r19,56
	addik	r3,r3,-1
	addk	r7,r3,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,memcmp
	nop		# Unfilled delay slot

	bnei	r3,$L573
	lwi	r3,r19,28
	bri	$L569
$L573:
	lwi	r3,r19,28
	addik	r3,r3,1
	swi	r3,r19,28
$L572:
	lwi	r4,r19,28
	lwi	r3,r19,32
	cmpu	r18,r4,r3
	bgei	r18,$L574
	addk	r3,r0,r0
$L569:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	memmem
$Lfe98:
	.size	memmem,$Lfe98-memmem
	.align	2
	.globl	mempcpy
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	swi	r7,r19,44
	lwi	r7,r19,44
	lwi	r6,r19,40
	lwi	r5,r19,36
	brlid	r15,memcpy
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,44
	addk	r3,r4,r3
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	mempcpy
$Lfe99:
	.size	mempcpy,$Lfe99-mempcpy
	.align	2
	.globl	frexp
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	r19,56,r15		# vars= 8, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,36
	swi	r22,r1,40
	swi	r23,r1,44
	swi	r24,r1,48
	swi	r25,r1,52
	addk	r19,r1,r0
	swi	r5,r19,60
	swi	r6,r19,64
	swi	r7,r19,68
	swi	r0,r19,32
	swi	r0,r19,28
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r19,60
	lwi	r6,r19,64
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L578
	lwi	r3,r19,60
	xori	r24,r3,-2147483648
	lwi	r25,r19,64
	swi	r24,r19,60
	swi	r25,r19,64
	addik	r3,r0,1	# 0x1
	swi	r3,r19,28
$L578:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r19,60
	lwi	r6,r19,64
	brlid	r15,__gedf2
	nop		# Unfilled delay slot

	blti	r3,$L595
	bri	$L582
$L583:
	lwi	r3,r19,32
	addik	r3,r3,1
	swi	r3,r19,32
	addik	r7,r0,0x40000000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r19,60
	lwi	r6,r19,64
	brlid	r15,__divdf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r19,60
	swi	r5,r19,64
$L582:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r19,60
	lwi	r6,r19,64
	brlid	r15,__gedf2
	nop		# Unfilled delay slot

	bgei	r3,$L583
	bri	$L584
$L595:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r19,60
	lwi	r6,r19,64
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L584
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r19,60
	lwi	r6,r19,64
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	beqi	r3,$L584
	bri	$L587
$L588:
	lwi	r3,r19,32
	addik	r3,r3,-1
	swi	r3,r19,32
	lwi	r4,r19,60
	lwi	r5,r19,64
	addk	r7,r4,r0
	addk	r8,r5,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__adddf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r19,60
	swi	r5,r19,64
$L587:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r19,60
	lwi	r6,r19,64
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L588
$L584:
	lwi	r3,r19,68
	lwi	r4,r19,32
	swi	r4,r3,0
	lwi	r3,r19,28
	beqi	r3,$L589
	lwi	r3,r19,60
	xori	r22,r3,-2147483648
	lwi	r23,r19,64
	swi	r22,r19,60
	swi	r23,r19,64
$L589:
	lwi	r4,r19,60
	lwi	r5,r19,64
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,36
	lwi	r22,r1,40
	lwi	r23,r1,44
	lwi	r24,r1,48
	lwi	r25,r1,52
	addik	r1,r1,56
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	frexp
$Lfe100:
	.size	frexp,$Lfe100-frexp
	.align	2
	.globl	__muldi3
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	r19,40,r15		# vars= 16, regs= 5, args= 0
	.mask	0x03c80000
	addik	r1,r1,-40
	swi	r19,r1,20
	swi	r22,r1,24
	swi	r23,r1,28
	swi	r24,r1,32
	swi	r25,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r6,r19,48
	swi	r7,r19,52
	swi	r8,r19,56
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	swi	r4,r19,4
	swi	r5,r19,8
	lwi	r4,r19,44
	lwi	r5,r19,48
	swi	r4,r19,12
	swi	r5,r19,16
	bri	$L597
$L600:
	lwi	r3,r19,12
	andi	r24,r3,0 #and1
	lwi	r3,r19,16
	andi	r25,r3,1 #and1
	addk	r3,r24,r0
	or	r3,r3,r25
	beqi	r3,$L598
	lwi	r6,r19,4
	lwi	r7,r19,8
	lwi	r4,r19,52
	lwi	r5,r19,56
	add	r5,r7,r5
	addc	r4,r6,r4
	swi	r4,r19,4
	swi	r5,r19,8
$L598:
	lwi	r4,r19,56
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r19,52
	addk	r10,r4,r4
	or	r10,r3,r10
	lwi	r3,r19,56
	addk	r11,r3,r3
	swi	r10,r19,52
	swi	r11,r19,56
	lwi	r4,r19,12
	src	r3,r4
	src	r3,r3
	andi	r3,r3,-2147483648
	lwi	r4,r19,16
	srl	r23,r4
	or	r23,r3,r23
	lwi	r3,r19,12
	srl	r22,r3
	swi	r22,r19,12
	swi	r23,r19,16
$L597:
	lwi	r3,r19,12
	lwi	r4,r19,16
	or	r3,r3,r4
	bnei	r3,$L600
	lwi	r4,r19,4
	lwi	r5,r19,8
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,20
	lwi	r22,r1,24
	lwi	r23,r1,28
	lwi	r24,r1,32
	lwi	r25,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__muldi3
$Lfe101:
	.size	__muldi3,$Lfe101-__muldi3
	.align	2
	.globl	udivmodsi4
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	addik	r3,r0,1	# 0x1
	swi	r3,r19,4
	swi	r0,r19,8
	bri	$L603
$L605:
	lwi	r3,r19,24
	addk	r3,r3,r3
	swi	r3,r19,24
	lwi	r3,r19,4
	addk	r3,r3,r3
	swi	r3,r19,4
$L603:
	lwi	r4,r19,24
	lwi	r3,r19,20
	cmpu	r18,r3,r4
	bgei	r18,$L606
	lwi	r3,r19,4
	beqi	r3,$L606
	lwi	r3,r19,24
	bgei	r3,$L605
	bri	$L606
$L608:
	lwi	r4,r19,20
	lwi	r3,r19,24
	cmpu	r18,r3,r4
	blti	r18,$L607
	lwi	r4,r19,20
	lwi	r3,r19,24
	rsubk	r3,r3,r4
	swi	r3,r19,20
	lwi	r4,r19,8
	lwi	r3,r19,4
	or	r3,r4,r3
	swi	r3,r19,8
$L607:
	lwi	r3,r19,4
	srl	r3,r3
	swi	r3,r19,4
	lwi	r3,r19,24
	srl	r3,r3
	swi	r3,r19,24
$L606:
	lwi	r3,r19,4
	bnei	r3,$L608
	lwi	r3,r19,28
	beqi	r3,$L609
	lwi	r3,r19,20
	bri	$L610
$L609:
	lwi	r3,r19,8
$L610:
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	udivmodsi4
$Lfe102:
	.size	udivmodsi4,$Lfe102-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	r19,36,r15		# vars= 4, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,32
	addk	r19,r1,r0
	addk	r3,r5,r0
	sbi	r3,r19,40
	lbui	r3,r19,40
	sext8	r3,r3
	bgei	r3,$L612
	lbui	r3,r19,40
	xori	r3,r3,-1
	sbi	r3,r19,40
$L612:
	lbui	r3,r19,40
	sext8	r3,r3
	bnei	r3,$L613
	addik	r3,r0,7	# 0x7
	bri	$L614
$L613:
	lbui	r3,r19,40
	sext8	r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	brlid	r15,__clzsi2
	nop		# Unfilled delay slot

	swi	r3,r19,28
	lwi	r3,r19,28
	addik	r3,r3,-1
$L614:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,32
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__clrsbqi2
$Lfe103:
	.size	__clrsbqi2,$Lfe103-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	r19,36,r15		# vars= 4, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,32
	addk	r19,r1,r0
	swi	r5,r19,40
	swi	r6,r19,44
	lwi	r3,r19,40
	bgei	r3,$L616
	lwi	r3,r19,40
	xori	r8,r3,-1
	lwi	r3,r19,44
	xori	r9,r3,-1
	swi	r8,r19,40
	swi	r9,r19,44
$L616:
	lwi	r3,r19,40
	lwi	r4,r19,44
	or	r3,r3,r4
	bnei	r3,$L618
	addik	r3,r0,63	# 0x3f
	bri	$L619
$L618:
	lwi	r4,r19,40
	lwi	r5,r19,44
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__clzdi2
	nop		# Unfilled delay slot

	swi	r3,r19,28
	lwi	r3,r19,28
	addik	r3,r3,-1
$L619:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,32
	addik	r1,r1,36
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__clrsbdi2
$Lfe104:
	.size	__clrsbdi2,$Lfe104-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	swi	r0,r19,4
	bri	$L621
$L623:
	lwi	r3,r19,16
	andi	r3,r3,1 #and1
	beqi	r3,$L622
	lwi	r4,r19,4
	lwi	r3,r19,20
	addk	r3,r4,r3
	swi	r3,r19,4
$L622:
	lwi	r3,r19,16
	srl	r3,r3
	swi	r3,r19,16
	lwi	r3,r19,20
	addk	r3,r3,r3
	swi	r3,r19,20
$L621:
	lwi	r3,r19,16
	bnei	r3,$L623
	lwi	r3,r19,4
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mulsi3
$Lfe105:
	.size	__mulsi3,$Lfe105-__mulsi3
	.align	2
	.globl	__cmovd
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	r19,28,r15		# vars= 20, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-28
	swi	r19,r1,24
	addk	r19,r1,r0
	swi	r5,r19,32
	swi	r6,r19,36
	swi	r7,r19,40
	lwi	r4,r19,40
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	swi	r3,r19,12
	lwi	r3,r19,40
	andi	r3,r3,-8 #and1
	swi	r3,r19,8
	lwi	r3,r19,32
	swi	r3,r19,16
	lwi	r3,r19,36
	swi	r3,r19,20
	lwi	r4,r19,16
	lwi	r3,r19,20
	cmpu	r18,r3,r4
	blti	r18,$L626
	lwi	r4,r19,20
	lwi	r3,r19,40
	addk	r3,r4,r3
	lwi	r4,r19,16
	cmpu	r18,r4,r3
	bgei	r18,$L633
$L626:
	swi	r0,r19,4
	bri	$L628
$L629:
	lwi	r3,r19,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r19,36
	addk	r4,r3,r4
	lwi	r3,r19,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r19,32
	addk	r3,r3,r5
	lwi	r5,r4,4
	lwi	r4,r4,0
	swi	r4,r3,0
	swi	r5,r3,4
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
$L628:
	lwi	r4,r19,4
	lwi	r3,r19,12
	cmpu	r18,r3,r4
	blti	r18,$L629
	bri	$L630
$L631:
	lwi	r4,r19,20
	lwi	r3,r19,8
	addk	r4,r4,r3
	lwi	r5,r19,16
	lwi	r3,r19,8
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r19,8
	addik	r3,r3,1
	swi	r3,r19,8
$L630:
	lwi	r4,r19,40
	lwi	r3,r19,8
	cmpu	r18,r4,r3
	blti	r18,$L631
	bri	$L632
$L634:
	lwi	r4,r19,20
	lwi	r3,r19,40
	addk	r4,r4,r3
	lwi	r5,r19,16
	lwi	r3,r19,40
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
$L633:
	lwi	r3,r19,40
	addik	r4,r3,-1
	swi	r4,r19,40
	bnei	r3,$L634
	nop
$L632:
	nop
	addk	r1,r19,r0
	lwi	r19,r1,24
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__cmovd
$Lfe106:
	.size	__cmovd,$Lfe106-__cmovd
	.align	2
	.globl	__cmovh
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	r19,24,r15		# vars= 16, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-24
	swi	r19,r1,20
	addk	r19,r1,r0
	swi	r5,r19,28
	swi	r6,r19,32
	swi	r7,r19,36
	lwi	r3,r19,36
	srl	r3,r3
	swi	r3,r19,8
	lwi	r3,r19,28
	swi	r3,r19,12
	lwi	r3,r19,32
	swi	r3,r19,16
	lwi	r4,r19,12
	lwi	r3,r19,16
	cmpu	r18,r3,r4
	blti	r18,$L636
	lwi	r4,r19,16
	lwi	r3,r19,36
	addk	r3,r4,r3
	lwi	r4,r19,12
	cmpu	r18,r4,r3
	bgei	r18,$L642
$L636:
	swi	r0,r19,4
	bri	$L638
$L639:
	lwi	r3,r19,4
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r19,32
	addk	r4,r3,r4
	lwi	r3,r19,4
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r19,28
	addk	r3,r3,r5
	lhui	r4,r4,0
	sext16	r4,r4
	shi	r4,r3,0
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
$L638:
	lwi	r4,r19,4
	lwi	r3,r19,8
	cmpu	r18,r3,r4
	blti	r18,$L639
	lwi	r3,r19,36
	andi	r3,r3,1 #and1
	beqi	r3,$L641
	lwi	r3,r19,36
	addik	r3,r3,-1
	lwi	r4,r19,16
	addk	r4,r4,r3
	lwi	r3,r19,36
	addik	r3,r3,-1
	lwi	r5,r19,12
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	bri	$L641
$L643:
	lwi	r4,r19,16
	lwi	r3,r19,36
	addk	r4,r4,r3
	lwi	r5,r19,12
	lwi	r3,r19,36
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
$L642:
	lwi	r3,r19,36
	addik	r4,r3,-1
	swi	r4,r19,36
	bnei	r3,$L643
	nop
$L641:
	nop
	addk	r1,r19,r0
	lwi	r19,r1,20
	addik	r1,r1,24
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__cmovh
$Lfe107:
	.size	__cmovh,$Lfe107-__cmovh
	.align	2
	.globl	__cmovw
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	r19,28,r15		# vars= 20, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-28
	swi	r19,r1,24
	addk	r19,r1,r0
	swi	r5,r19,32
	swi	r6,r19,36
	swi	r7,r19,40
	lwi	r4,r19,40
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	swi	r3,r19,12
	lwi	r3,r19,40
	andi	r3,r3,-4 #and1
	swi	r3,r19,8
	lwi	r3,r19,32
	swi	r3,r19,16
	lwi	r3,r19,36
	swi	r3,r19,20
	lwi	r4,r19,16
	lwi	r3,r19,20
	cmpu	r18,r3,r4
	blti	r18,$L645
	lwi	r4,r19,20
	lwi	r3,r19,40
	addk	r3,r4,r3
	lwi	r4,r19,16
	cmpu	r18,r4,r3
	bgei	r18,$L652
$L645:
	swi	r0,r19,4
	bri	$L647
$L648:
	lwi	r3,r19,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r19,36
	addk	r4,r3,r4
	lwi	r3,r19,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r19,32
	addk	r3,r3,r5
	lwi	r4,r4,0
	swi	r4,r3,0
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
$L647:
	lwi	r4,r19,4
	lwi	r3,r19,12
	cmpu	r18,r3,r4
	blti	r18,$L648
	bri	$L649
$L650:
	lwi	r4,r19,20
	lwi	r3,r19,8
	addk	r4,r4,r3
	lwi	r5,r19,16
	lwi	r3,r19,8
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r19,8
	addik	r3,r3,1
	swi	r3,r19,8
$L649:
	lwi	r4,r19,40
	lwi	r3,r19,8
	cmpu	r18,r4,r3
	blti	r18,$L650
	bri	$L651
$L653:
	lwi	r4,r19,20
	lwi	r3,r19,40
	addk	r4,r4,r3
	lwi	r5,r19,16
	lwi	r3,r19,40
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
$L652:
	lwi	r3,r19,40
	addik	r4,r3,-1
	swi	r4,r19,40
	bnei	r3,$L653
	nop
$L651:
	nop
	addk	r1,r19,r0
	lwi	r19,r1,24
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__cmovw
$Lfe108:
	.size	__cmovw,$Lfe108-__cmovw
	.align	2
	.globl	__modi
	.ent	__modi
	.type	__modi, @function
__modi:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r3,r19,36
	lwi	r6,r19,40
	addk	r5,r3,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__modi
$Lfe109:
	.size	__modi,$Lfe109-__modi
	.align	2
	.globl	__uitod
	.ent	__uitod
	.type	__uitod, @function
__uitod:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	lwi	r5,r19,36
	brlid	r15,__floatunsidf
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__uitod
$Lfe110:
	.size	__uitod,$Lfe110-__uitod
	.align	2
	.globl	__uitof
	.ent	__uitof
	.type	__uitof, @function
__uitof:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	lwi	r5,r19,36
	brlid	r15,__floatunsisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__uitof
$Lfe111:
	.size	__uitof,$Lfe111-__uitof
	.align	2
	.globl	__ulltod
	.ent	__ulltod
	.type	__ulltod, @function
__ulltod:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__floatundidf
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ulltod
$Lfe112:
	.size	__ulltod,$Lfe112-__ulltod
	.align	2
	.globl	__ulltof
	.ent	__ulltof
	.type	__ulltof, @function
__ulltof:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__floatundisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ulltof
$Lfe113:
	.size	__ulltof,$Lfe113-__ulltof
	.align	2
	.globl	__umodi
	.ent	__umodi
	.type	__umodi, @function
__umodi:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r3,r19,36
	lwi	r6,r19,40
	addk	r5,r3,r0
	brlid	r15,__umodsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__umodi
$Lfe114:
	.size	__umodi,$Lfe114-__umodi
	.align	2
	.globl	__clzhi2
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	addk	r3,r5,r0
	shi	r3,r19,16
	swi	r0,r19,4
	bri	$L667
$L670:
	lhui	r5,r19,16
	lwi	r3,r19,4
	addik	r4,r0,15	# 0xf
	rsubk	r4,r3,r4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	bnei	r3,$L672
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
$L667:
	lwi	r4,r19,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L670
	bri	$L669
$L672:
	nop
$L669:
	lwi	r3,r19,4
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__clzhi2
$Lfe115:
	.size	__clzhi2,$Lfe115-__clzhi2
	.align	2
	.globl	__ctzhi2
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	addk	r3,r5,r0
	shi	r3,r19,16
	swi	r0,r19,4
	bri	$L674
$L677:
	lhui	r5,r19,16
	lwi	r4,r19,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	bnei	r3,$L679
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
$L674:
	lwi	r4,r19,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L677
	bri	$L676
$L679:
	nop
$L676:
	lwi	r3,r19,4
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ctzhi2
$Lfe116:
	.size	__ctzhi2,$Lfe116-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.ent	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	addik	r6,r0,0x47000000
	lwi	r5,r19,36
	brlid	r15,__gesf2
	nop		# Unfilled delay slot

	blti	r3,$L685
	addik	r6,r0,0x47000000
	lwi	r5,r19,36
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	addik	r3,r3,32768
	bri	$L683
$L685:
	lwi	r5,r19,36
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

$L683:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__fixunssfsi
$Lfe117:
	.size	__fixunssfsi,$Lfe117-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	addk	r3,r5,r0
	shi	r3,r19,20
	swi	r0,r19,8
	swi	r0,r19,4
	bri	$L687
$L689:
	lhui	r5,r19,20
	lwi	r4,r19,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	beqi	r3,$L688
	lwi	r3,r19,8
	addik	r3,r3,1
	swi	r3,r19,8
$L688:
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
$L687:
	lwi	r4,r19,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L689
	lwi	r3,r19,8
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__parityhi2
$Lfe118:
	.size	__parityhi2,$Lfe118-__parityhi2
	.align	2
	.globl	__popcounthi2
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	addk	r3,r5,r0
	shi	r3,r19,20
	swi	r0,r19,8
	swi	r0,r19,4
	bri	$L692
$L694:
	lhui	r5,r19,20
	lwi	r4,r19,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	beqi	r3,$L693
	lwi	r3,r19,8
	addik	r3,r3,1
	swi	r3,r19,8
$L693:
	lwi	r3,r19,4
	addik	r3,r3,1
	swi	r3,r19,4
$L692:
	lwi	r4,r19,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L694
	lwi	r3,r19,8
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__popcounthi2
$Lfe119:
	.size	__popcounthi2,$Lfe119-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	swi	r0,r19,4
	bri	$L697
$L699:
	lwi	r3,r19,16
	andi	r3,r3,1 #and1
	beqi	r3,$L698
	lwi	r4,r19,4
	lwi	r3,r19,20
	addk	r3,r4,r3
	swi	r3,r19,4
$L698:
	lwi	r3,r19,16
	srl	r3,r3
	swi	r3,r19,16
	lwi	r3,r19,20
	addk	r3,r3,r3
	swi	r3,r19,20
$L697:
	lwi	r3,r19,16
	bnei	r3,$L699
	lwi	r3,r19,4
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mulsi3_iq2000
$Lfe120:
	.size	__mulsi3_iq2000,$Lfe120-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	swi	r6,r19,20
	swi	r0,r19,4
	lwi	r3,r19,16
	bnei	r3,$L704
	addk	r3,r0,r0
	bri	$L703
$L706:
	lwi	r3,r19,20
	andi	r3,r3,1 #and1
	beqi	r3,$L705
	lwi	r4,r19,4
	lwi	r3,r19,16
	addk	r3,r4,r3
	swi	r3,r19,4
$L705:
	lwi	r3,r19,16
	addk	r3,r3,r3
	swi	r3,r19,16
	lwi	r3,r19,20
	srl	r3,r3
	swi	r3,r19,20
$L704:
	lwi	r3,r19,20
	bnei	r3,$L706
	lwi	r3,r19,4
$L703:
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mulsi3_lm32
$Lfe121:
	.size	__mulsi3_lm32,$Lfe121-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	addik	r3,r0,1	# 0x1
	swi	r3,r19,4
	swi	r0,r19,8
	bri	$L708
$L710:
	lwi	r3,r19,24
	addk	r3,r3,r3
	swi	r3,r19,24
	lwi	r3,r19,4
	addk	r3,r3,r3
	swi	r3,r19,4
$L708:
	lwi	r4,r19,24
	lwi	r3,r19,20
	cmpu	r18,r3,r4
	bgei	r18,$L711
	lwi	r3,r19,4
	beqi	r3,$L711
	lwi	r3,r19,24
	bgei	r3,$L710
	bri	$L711
$L713:
	lwi	r4,r19,20
	lwi	r3,r19,24
	cmpu	r18,r3,r4
	blti	r18,$L712
	lwi	r4,r19,20
	lwi	r3,r19,24
	rsubk	r3,r3,r4
	swi	r3,r19,20
	lwi	r4,r19,8
	lwi	r3,r19,4
	or	r3,r4,r3
	swi	r3,r19,8
$L712:
	lwi	r3,r19,4
	srl	r3,r3
	swi	r3,r19,4
	lwi	r3,r19,24
	srl	r3,r3
	swi	r3,r19,24
$L711:
	lwi	r3,r19,4
	bnei	r3,$L713
	lwi	r3,r19,28
	beqi	r3,$L714
	lwi	r3,r19,20
	bri	$L715
$L714:
	lwi	r3,r19,8
$L715:
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__udivmodsi4
$Lfe122:
	.size	__udivmodsi4,$Lfe122-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r6,r19,40
	lwi	r5,r19,36
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L724
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L719
$L724:
	lwi	r6,r19,40
	lwi	r5,r19,36
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L725
	addik	r3,r0,1	# 0x1
	bri	$L719
$L725:
	addk	r3,r0,r0
$L719:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mspabi_cmpf
$Lfe123:
	.size	__mspabi_cmpf,$Lfe123-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	swi	r7,r19,44
	swi	r8,r19,48
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L734
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L729
$L734:
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L735
	addik	r3,r0,1	# 0x1
	bri	$L729
$L735:
	addk	r3,r0,r0
$L729:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mspabi_cmpd
$Lfe124:
	.size	__mspabi_cmpd,$Lfe124-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.ent	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r5,r19,36
	add	r4,r5,r5
	addc	r4,r0,r0
	beqi	r4,.+8
	addi	r4,r0,0xffffffff
	lwi	r7,r19,40
	add	r6,r7,r7
	addc	r6,r0,r0
	beqi	r6,.+8
	addi	r6,r0,0xffffffff
	addk	r8,r7,r0
	addk	r7,r6,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__muldi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mspabi_mpysll
$Lfe125:
	.size	__mspabi_mpysll,$Lfe125-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.ent	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	lwi	r3,r19,36
	addk	r11,r3,r0
	addk	r10,r0,r0
	lwi	r3,r19,40
	addk	r9,r3,r0
	addk	r8,r0,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	addk	r5,r10,r0
	addk	r6,r11,r0
	brlid	r15,__muldi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mspabi_mpyull
$Lfe126:
	.size	__mspabi_mpyull,$Lfe126-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	r19,20,r15		# vars= 12, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-20
	swi	r19,r1,16
	addk	r19,r1,r0
	swi	r5,r19,24
	swi	r6,r19,28
	swi	r0,r19,8
	swi	r0,r19,12
	lwi	r3,r19,28
	bgei	r3,$L741
	lwi	r3,r19,28
	rsubk	r3,r3,r0
	swi	r3,r19,28
	addik	r3,r0,1	# 0x1
	swi	r3,r19,8
$L741:
	sbi	r0,r19,4
	bri	$L742
$L745:
	lwi	r3,r19,28
	andi	r3,r3,1 #and1
	beqi	r3,$L743
	lwi	r4,r19,12
	lwi	r3,r19,24
	addk	r3,r4,r3
	swi	r3,r19,12
$L743:
	lwi	r3,r19,24
	addk	r3,r3,r3
	swi	r3,r19,24
	lwi	r3,r19,28
	sra	r3,r3
	swi	r3,r19,28
	lbui	r3,r19,4
	sext8	r3,r3
	andi	r3,r3,0x00ff
	addik	r3,r3,1
	andi	r3,r3,0x00ff
	sbi	r3,r19,4
$L742:
	lwi	r3,r19,28
	beqi	r3,$L744
	lbui	r4,r19,4
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L745
$L744:
	lwi	r3,r19,8
	beqi	r3,$L746
	lwi	r3,r19,12
	rsubk	r3,r3,r0
	bri	$L748
$L746:
	lwi	r3,r19,12
$L748:
	addk	r1,r19,r0
	lwi	r19,r1,16
	addik	r1,r1,20
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__mulhi3
$Lfe127:
	.size	__mulhi3,$Lfe127-__mulhi3
	.align	2
	.globl	__divsi3
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	r19,40,r15		# vars= 8, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r6,r19,48
	swi	r0,r19,28
	lwi	r3,r19,44
	bgei	r3,$L750
	lwi	r3,r19,44
	rsubk	r3,r3,r0
	swi	r3,r19,44
	lwi	r3,r19,28
	rsubk	r4,r3,r0
	lwi	r3,r19,28
	or	r3,r4,r3
	xori	r3,r3,-1
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r0
	andi	r3,r3,0x00ff
	swi	r3,r19,28
$L750:
	lwi	r3,r19,48
	bgei	r3,$L751
	lwi	r3,r19,48
	rsubk	r3,r3,r0
	swi	r3,r19,48
	lwi	r3,r19,28
	rsubk	r4,r3,r0
	lwi	r3,r19,28
	or	r3,r4,r3
	xori	r3,r3,-1
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r0
	andi	r3,r3,0x00ff
	swi	r3,r19,28
$L751:
	lwi	r3,r19,44
	lwi	r4,r19,48
	addk	r7,r0,r0
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__udivmodsi4
	nop		# Unfilled delay slot

	swi	r3,r19,32
	lwi	r3,r19,28
	beqi	r3,$L752
	lwi	r3,r19,32
	rsubk	r3,r3,r0
	swi	r3,r19,32
$L752:
	lwi	r3,r19,32
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__divsi3
$Lfe128:
	.size	__divsi3,$Lfe128-__divsi3
	.align	2
	.globl	__modsi3
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	r19,40,r15		# vars= 8, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r6,r19,48
	swi	r0,r19,28
	lwi	r3,r19,44
	bgei	r3,$L755
	lwi	r3,r19,44
	rsubk	r3,r3,r0
	swi	r3,r19,44
	addik	r3,r0,1	# 0x1
	swi	r3,r19,28
$L755:
	lwi	r3,r19,48
	bgei	r3,$L756
	lwi	r3,r19,48
	rsubk	r3,r3,r0
	swi	r3,r19,48
$L756:
	lwi	r3,r19,44
	lwi	r4,r19,48
	addik	r7,r0,1	# 0x1
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__udivmodsi4
	nop		# Unfilled delay slot

	swi	r3,r19,32
	lwi	r3,r19,28
	beqi	r3,$L757
	lwi	r3,r19,32
	rsubk	r3,r3,r0
	swi	r3,r19,32
$L757:
	lwi	r3,r19,32
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__modsi3
$Lfe129:
	.size	__modsi3,$Lfe129-__modsi3
	.align	2
	.globl	__udivmodhi4
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	addk	r3,r5,r0
	addk	r4,r6,r0
	swi	r7,r19,24
	shi	r3,r19,16
	addk	r3,r4,r0
	shi	r3,r19,20
	addik	r3,r0,1	# 0x1
	shi	r3,r19,4
	shi	r0,r19,6
	bri	$L760
$L762:
	lhui	r3,r19,20
	addk	r4,r3,r0
	addk	r3,r3,r4
	shi	r3,r19,20
	lhui	r3,r19,4
	addk	r4,r3,r0
	addk	r3,r3,r4
	shi	r3,r19,4
$L760:
	lhui	r4,r19,20
	lhui	r3,r19,16
	cmpu	r18,r3,r4
	bgei	r18,$L763
	lhui	r3,r19,4
	beqi	r3,$L763
	lhui	r3,r19,20
	sext16	r3,r3
	bgei	r3,$L762
	bri	$L763
$L765:
	lhui	r4,r19,16
	lhui	r3,r19,20
	cmpu	r18,r3,r4
	blti	r18,$L764
	lhui	r4,r19,16
	lhui	r3,r19,20
	rsubk	r3,r3,r4
	shi	r3,r19,16
	lhui	r4,r19,6
	lhui	r3,r19,4
	or	r3,r4,r3
	shi	r3,r19,6
$L764:
	lhui	r3,r19,4
	srl	r3,r3
	shi	r3,r19,4
	lhui	r3,r19,20
	srl	r3,r3
	shi	r3,r19,20
$L763:
	lhui	r3,r19,4
	bnei	r3,$L765
	lwi	r3,r19,24
	beqi	r3,$L766
	lhui	r3,r19,16
	bri	$L767
$L766:
	lhui	r3,r19,6
$L767:
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__udivmodhi4
$Lfe130:
	.size	__udivmodhi4,$Lfe130-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	r19,16,r15		# vars= 8, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-16
	swi	r19,r1,12
	addk	r19,r1,r0
	swi	r5,r19,20
	swi	r6,r19,24
	swi	r7,r19,28
	addik	r3,r0,1	# 0x1
	swi	r3,r19,4
	swi	r0,r19,8
	bri	$L769
$L771:
	lwi	r3,r19,24
	addk	r3,r3,r3
	swi	r3,r19,24
	lwi	r3,r19,4
	addk	r3,r3,r3
	swi	r3,r19,4
$L769:
	lwi	r4,r19,24
	lwi	r3,r19,20
	cmpu	r18,r3,r4
	bgei	r18,$L772
	lwi	r3,r19,4
	beqi	r3,$L772
	lwi	r3,r19,24
	bgei	r3,$L771
	bri	$L772
$L774:
	lwi	r4,r19,20
	lwi	r3,r19,24
	cmpu	r18,r3,r4
	blti	r18,$L773
	lwi	r4,r19,20
	lwi	r3,r19,24
	rsubk	r3,r3,r4
	swi	r3,r19,20
	lwi	r4,r19,8
	lwi	r3,r19,4
	or	r3,r4,r3
	swi	r3,r19,8
$L773:
	lwi	r3,r19,4
	srl	r3,r3
	swi	r3,r19,4
	lwi	r3,r19,24
	srl	r3,r3
	swi	r3,r19,24
$L772:
	lwi	r3,r19,4
	bnei	r3,$L774
	lwi	r3,r19,28
	beqi	r3,$L775
	lwi	r3,r19,20
	bri	$L776
$L775:
	lwi	r3,r19,8
$L776:
	addk	r1,r19,r0
	lwi	r19,r1,12
	addik	r1,r1,16
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__udivmodsi4_libgcc
$Lfe131:
	.size	__udivmodsi4_libgcc,$Lfe131-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	r19,28,r15		# vars= 20, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-28
	swi	r19,r1,24
	addk	r19,r1,r0
	swi	r5,r19,32
	swi	r6,r19,36
	swi	r7,r19,40
	addik	r3,r0,32	# 0x20
	swi	r3,r19,4
	lwi	r4,r19,32
	lwi	r5,r19,36
	swi	r4,r19,8
	swi	r5,r19,12
	lwi	r4,r19,40
	lwi	r3,r19,4
	and	r3,r4,r3
	beqi	r3,$L778
	swi	r0,r19,20
	lwi	r4,r19,12
	lwi	r5,r19,40
	lwi	r3,r19,4
	rsubk	r3,r3,r5
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	addk	r3,r5,r0
	swi	r3,r19,16
	bri	$L779
$L778:
	lwi	r3,r19,40
	bnei	r3,$L780
	lwi	r4,r19,32
	lwi	r5,r19,36
	bri	$L782
$L780:
	lwi	r5,r19,12
	lwi	r4,r19,40
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	swi	r3,r19,20
	lwi	r3,r19,8
	addk	r5,r3,r0
	lwi	r3,r19,40
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	lwi	r6,r19,12
	lwi	r5,r19,4
	lwi	r3,r19,40
	rsubk	r5,r3,r5
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r4,r3
	swi	r3,r19,16
$L779:
	lwi	r4,r19,16
	lwi	r5,r19,20
$L782:
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,24
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ashldi3
$Lfe132:
	.size	__ashldi3,$Lfe132-__ashldi3
	.align	2
	.globl	__ashrdi3
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	r19,28,r15		# vars= 20, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-28
	swi	r19,r1,24
	addk	r19,r1,r0
	swi	r5,r19,32
	swi	r6,r19,36
	swi	r7,r19,40
	addik	r3,r0,32	# 0x20
	swi	r3,r19,4
	lwi	r4,r19,32
	lwi	r5,r19,36
	swi	r4,r19,8
	swi	r5,r19,12
	lwi	r4,r19,40
	lwi	r3,r19,4
	and	r3,r4,r3
	beqi	r3,$L784
	lwi	r5,r19,8
	lwi	r3,r19,4
	addik	r4,r3,-1
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	swi	r3,r19,16
	lwi	r4,r19,8
	lwi	r5,r19,40
	lwi	r3,r19,4
	rsubk	r3,r3,r5
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r5,r5
	addk	r3,r5,r0
	swi	r3,r19,20
	bri	$L785
$L784:
	lwi	r3,r19,40
	bnei	r3,$L786
	lwi	r4,r19,32
	lwi	r5,r19,36
	bri	$L788
$L786:
	lwi	r5,r19,8
	lwi	r4,r19,40
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	swi	r3,r19,16
	lwi	r3,r19,8
	addk	r5,r3,r0
	lwi	r4,r19,4
	lwi	r3,r19,40
	rsubk	r3,r3,r4
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	lwi	r6,r19,12
	lwi	r5,r19,40
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r4,r3
	swi	r3,r19,20
$L785:
	lwi	r4,r19,16
	lwi	r5,r19,20
$L788:
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,24
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ashrdi3
$Lfe133:
	.size	__ashrdi3,$Lfe133-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	r19,160,r15		# vars= 112, regs= 11, args= 0
	.mask	0xffc80000
	addik	r1,r1,-160
	swi	r19,r1,116
	swi	r22,r1,120
	swi	r23,r1,124
	swi	r24,r1,128
	swi	r25,r1,132
	swi	r26,r1,136
	swi	r27,r1,140
	swi	r28,r1,144
	swi	r29,r1,148
	swi	r30,r1,152
	swi	r31,r1,156
	addk	r19,r1,r0
	swi	r5,r19,164
	swi	r6,r19,168
	lwi	r3,r19,164
	addk	r25,r0,r3
	srl	r25,r3
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	addk	r24,r0,r0
	lwi	r3,r19,164
	addk	r9,r0,r3
	srl	r9,r3
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	addk	r8,r0,r0
	andi	r10,r8,0 #and1
	andi	r11,r9,65280 #and2
	or	r3,r24,r10
	swi	r3,r19,12
	or	r3,r25,r11
	swi	r3,r19,16
	lwi	r3,r19,164
	addk	r4,r0,r3
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	lwi	r3,r19,168
	addk	r23,r0,r3
	srl	r23,r3
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	or	r23,r4,r23
	lwi	r3,r19,164
	addk	r22,r0,r3
	srl	r22,r3
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	andi	r26,r22,0 #and1
	andi	r27,r23,16711680 #and2
	addik	r3,r19,12
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	or	r3,r3,r26
	swi	r3,r19,20
	addk	r3,r5,r0
	or	r3,r3,r27
	swi	r3,r19,24
	lwi	r3,r19,164
	src	r4,r3
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	andi	r4,r4,-16777216
	lwi	r3,r19,168
	addk	r29,r0,r3
	srl	r29,r3
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	or	r29,r4,r29
	lwi	r3,r19,164
	addk	r28,r0,r3
	srl	r28,r3
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	andi	r3,r28,0 #and1
	swi	r3,r19,28
	andi	r3,r29,-16777216 #and2
	swi	r3,r19,32
	addik	r3,r19,20
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r19,28
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r8,r4,r0
	or	r3,r3,r8
	swi	r3,r19,36
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r19,40
	lwi	r3,r19,168
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r19,164
	addk	r5,r0,r3
	addk	r5,r3,r3
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	swi	r5,r19,4
	lwi	r3,r19,4
	or	r3,r4,r3
	swi	r3,r19,4
	lwi	r3,r19,168
	addk	r4,r0,r3
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	swi	r4,r19,8
	addik	r3,r19,4
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	andi	r3,r3,255 #and1
	swi	r3,r19,44
	addk	r3,r5,r0
	andi	r3,r3,0 #and1
	swi	r3,r19,48
	addik	r3,r19,36
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r19,44
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r8,r4,r0
	or	r3,r3,r8
	swi	r3,r19,52
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r19,56
	lwi	r4,r19,168
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r19,164
	src	r30,r4
	src	r30,r30
	src	r30,r30
	src	r30,r30
	src	r30,r30
	src	r30,r30
	src	r30,r30
	src	r30,r30
	src	r30,r30
	andi	r30,r30,-16777216
	or	r30,r3,r30
	lwi	r3,r19,168
	src	r31,r3
	src	r31,r31
	src	r31,r31
	src	r31,r31
	src	r31,r31
	src	r31,r31
	src	r31,r31
	src	r31,r31
	src	r31,r31
	andi	r31,r31,-16777216
	andi	r3,r30,65280 #and2
	swi	r3,r19,60
	andi	r3,r31,0 #and1
	swi	r3,r19,64
	addik	r3,r19,52
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r19,60
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r8,r4,r0
	or	r3,r3,r8
	swi	r3,r19,68
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r19,72
	lwi	r3,r19,168
	addk	r4,r0,r3
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	swi	r4,r19,76
	addk	r8,r0,r0
	swi	r8,r19,80
	addik	r3,r19,76
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	andi	r3,r3,16711680 #and2
	swi	r3,r19,84
	addk	r3,r5,r0
	andi	r3,r3,0 #and1
	swi	r3,r19,88
	addik	r3,r19,68
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r19,84
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r9,r4,r0
	or	r3,r3,r9
	swi	r3,r19,92
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r19,96
	lwi	r3,r19,168
	src	r4,r3
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	andi	r4,r4,-16777216
	swi	r4,r19,100
	swi	r8,r19,104
	addik	r3,r19,92
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r19,100
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r8,r4,r0
	or	r3,r3,r8
	swi	r3,r19,108
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r19,112
	addik	r3,r19,108
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,116
	lwi	r22,r1,120
	lwi	r23,r1,124
	lwi	r24,r1,128
	lwi	r25,r1,132
	lwi	r26,r1,136
	lwi	r27,r1,140
	lwi	r28,r1,144
	lwi	r29,r1,148
	lwi	r30,r1,152
	lwi	r31,r1,156
	addik	r1,r1,160
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__bswapdi2
$Lfe134:
	.size	__bswapdi2,$Lfe134-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.ent	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	lwi	r3,r19,12
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r5,r19,12
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,65280 #and2
	or	r4,r4,r3
	lwi	r3,r19,12
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	andi	r3,r3,16711680 #and2
	or	r4,r4,r3
	lwi	r5,r19,12
	src	r3,r5
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	or	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__bswapsi2
$Lfe135:
	.size	__bswapsi2,$Lfe135-__bswapsi2
	.align	2
	.globl	__clzsi2
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	r19,44,r15		# vars= 12, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,40
	addk	r19,r1,r0
	swi	r5,r19,48
	lwi	r3,r19,48
	swi	r3,r19,28
	lwi	r4,r19,28
	addik	r3,r0,65535
	cmpu	r18,r4,r3
	blti	r18,$L794
	addik	r3,r0,16	# 0x10
	bri	$L795
$L794:
	addk	r3,r0,r0
$L795:
	swi	r3,r19,32
	lwi	r3,r19,32
	addik	r4,r0,16	# 0x10
	rsubk	r4,r3,r4
	lwi	r5,r19,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,28
	lwi	r3,r19,32
	swi	r3,r19,36
	lwi	r3,r19,28
	andi	r3,r3,65280 #and2
	bnei	r3,$L796
	addik	r3,r0,8	# 0x8
	bri	$L797
$L796:
	addk	r3,r0,r0
$L797:
	swi	r3,r19,32
	lwi	r3,r19,32
	addik	r4,r0,8	# 0x8
	rsubk	r4,r3,r4
	lwi	r5,r19,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,28
	lwi	r3,r19,32
	lwi	r4,r19,36
	addk	r3,r4,r3
	swi	r3,r19,36
	lwi	r3,r19,28
	andi	r3,r3,240 #and1
	bnei	r3,$L798
	addik	r3,r0,4	# 0x4
	bri	$L799
$L798:
	addk	r3,r0,r0
$L799:
	swi	r3,r19,32
	lwi	r3,r19,32
	addik	r4,r0,4	# 0x4
	rsubk	r4,r3,r4
	lwi	r5,r19,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,28
	lwi	r3,r19,32
	lwi	r4,r19,36
	addk	r3,r4,r3
	swi	r3,r19,36
	lwi	r3,r19,28
	andi	r3,r3,12 #and1
	bnei	r3,$L800
	addik	r3,r0,2	# 0x2
	bri	$L801
$L800:
	addk	r3,r0,r0
$L801:
	swi	r3,r19,32
	lwi	r3,r19,32
	addik	r6,r0,2	# 0x2
	rsubk	r4,r3,r6
	lwi	r5,r19,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,28
	lwi	r3,r19,32
	lwi	r4,r19,36
	addk	r3,r4,r3
	swi	r3,r19,36
	lwi	r3,r19,28
	andi	r3,r3,2 #and1
	rsubk	r4,r3,r0
	or	r3,r4,r3
	xori	r3,r3,-1
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r0
	andi	r3,r3,0x00ff
	addk	r4,r3,r0
	lwi	r3,r19,28
	rsubk	r3,r3,r6
	addk	r6,r3,r0
	addk	r5,r4,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,36
	addk	r3,r4,r3
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,40
	addik	r1,r1,44
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__clzsi2
$Lfe136:
	.size	__clzsi2,$Lfe136-__clzsi2
	.align	2
	.globl	__cmpdi2
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	r19,24,r15		# vars= 16, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-24
	swi	r19,r1,20
	addk	r19,r1,r0
	swi	r5,r19,28
	swi	r6,r19,32
	swi	r7,r19,36
	swi	r8,r19,40
	lwi	r4,r19,28
	lwi	r5,r19,32
	swi	r4,r19,4
	swi	r5,r19,8
	lwi	r4,r19,36
	lwi	r5,r19,40
	swi	r4,r19,12
	swi	r5,r19,16
	lwi	r4,r19,4
	lwi	r3,r19,12
	cmp	r18,r3,r4
	bgei	r18,$L804
	addk	r3,r0,r0
	bri	$L809
$L804:
	lwi	r4,r19,4
	lwi	r3,r19,12
	cmp	r18,r4,r3
	bgei	r18,$L806
	addik	r3,r0,2	# 0x2
	bri	$L809
$L806:
	lwi	r4,r19,8
	lwi	r3,r19,16
	cmpu	r18,r3,r4
	bgei	r18,$L807
	addk	r3,r0,r0
	bri	$L809
$L807:
	lwi	r4,r19,8
	lwi	r3,r19,16
	cmpu	r18,r4,r3
	bgei	r18,$L808
	addik	r3,r0,2	# 0x2
	bri	$L809
$L808:
	addik	r3,r0,1	# 0x1
$L809:
	addk	r1,r19,r0
	lwi	r19,r1,20
	addik	r1,r1,24
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__cmpdi2
$Lfe137:
	.size	__cmpdi2,$Lfe137-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	swi	r7,r19,44
	swi	r8,r19,48
	lwi	r7,r19,44
	lwi	r8,r19,48
	lwi	r5,r19,36
	lwi	r6,r19,40
	brlid	r15,__cmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__aeabi_lcmp
$Lfe138:
	.size	__aeabi_lcmp,$Lfe138-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	r19,20,r15		# vars= 12, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-20
	swi	r19,r1,16
	addk	r19,r1,r0
	swi	r5,r19,24
	lwi	r3,r19,24
	swi	r3,r19,4
	lwi	r3,r19,4
	andi	r3,r3,65535 #and2
	bnei	r3,$L813
	addik	r3,r0,16	# 0x10
	bri	$L814
$L813:
	addk	r3,r0,r0
$L814:
	swi	r3,r19,8
	lwi	r5,r19,4
	lwi	r4,r19,8
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,4
	lwi	r3,r19,8
	swi	r3,r19,12
	lwi	r3,r19,4
	andi	r3,r3,255 #and1
	bnei	r3,$L815
	addik	r3,r0,8	# 0x8
	bri	$L816
$L815:
	addk	r3,r0,r0
$L816:
	swi	r3,r19,8
	lwi	r5,r19,4
	lwi	r4,r19,8
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,4
	lwi	r3,r19,8
	lwi	r4,r19,12
	addk	r3,r4,r3
	swi	r3,r19,12
	lwi	r3,r19,4
	andi	r3,r3,15 #and1
	bnei	r3,$L817
	addik	r3,r0,4	# 0x4
	bri	$L818
$L817:
	addk	r3,r0,r0
$L818:
	swi	r3,r19,8
	lwi	r5,r19,4
	lwi	r4,r19,8
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,4
	lwi	r3,r19,8
	lwi	r4,r19,12
	addk	r3,r4,r3
	swi	r3,r19,12
	lwi	r3,r19,4
	andi	r3,r3,3 #and1
	bnei	r3,$L819
	addik	r3,r0,2	# 0x2
	bri	$L820
$L819:
	addk	r3,r0,r0
$L820:
	swi	r3,r19,8
	lwi	r5,r19,4
	lwi	r4,r19,8
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,4
	lwi	r3,r19,4
	andi	r3,r3,3 #and1
	swi	r3,r19,4
	lwi	r3,r19,8
	lwi	r4,r19,12
	addk	r3,r4,r3
	swi	r3,r19,12
	lwi	r3,r19,4
	xori	r3,r3,-1
	andi	r4,r3,1 #and1
	lwi	r3,r19,4
	srl	r3,r3
	addik	r5,r0,2	# 0x2
	rsubk	r3,r3,r5
	rsubk	r4,r4,r0
	and	r4,r4,r3
	lwi	r3,r19,12
	addk	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,16
	addik	r1,r1,20
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ctzsi2
$Lfe139:
	.size	__ctzsi2,$Lfe139-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	r19,28,r15		# vars= 20, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-28
	swi	r19,r1,24
	addk	r19,r1,r0
	swi	r5,r19,32
	swi	r6,r19,36
	swi	r7,r19,40
	addik	r3,r0,32	# 0x20
	swi	r3,r19,4
	lwi	r4,r19,32
	lwi	r5,r19,36
	swi	r4,r19,8
	swi	r5,r19,12
	lwi	r4,r19,40
	lwi	r3,r19,4
	and	r3,r4,r3
	beqi	r3,$L823
	swi	r0,r19,16
	lwi	r5,r19,8
	lwi	r4,r19,40
	lwi	r3,r19,4
	rsubk	r4,r3,r4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,20
	bri	$L824
$L823:
	lwi	r3,r19,40
	bnei	r3,$L825
	lwi	r4,r19,32
	lwi	r5,r19,36
	bri	$L827
$L825:
	lwi	r5,r19,8
	lwi	r4,r19,40
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,16
	lwi	r5,r19,8
	lwi	r4,r19,4
	lwi	r3,r19,40
	rsubk	r3,r3,r4
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	lwi	r6,r19,12
	lwi	r5,r19,40
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r4,r3
	swi	r3,r19,20
$L824:
	lwi	r4,r19,16
	lwi	r5,r19,20
$L827:
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,24
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__lshrdi3
$Lfe140:
	.size	__lshrdi3,$Lfe140-__lshrdi3
	.align	2
	.globl	__muldsi3
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	r19,56,r15		# vars= 20, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,48
	swi	r22,r1,52
	addk	r19,r1,r0
	swi	r5,r19,60
	swi	r6,r19,64
	addik	r3,r0,16	# 0x10
	swi	r3,r19,28
	addik	r5,r0,-1	# 0xffffffffffffffff
	lwi	r4,r19,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,32
	lwi	r4,r19,60
	lwi	r3,r19,32
	and	r5,r4,r3
	lwi	r4,r19,64
	lwi	r3,r19,32
	and	r3,r4,r3
	addk	r6,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	swi	r3,r19,44
	lwi	r5,r19,44
	lwi	r4,r19,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,36
	lwi	r4,r19,44
	lwi	r3,r19,32
	and	r3,r4,r3
	swi	r3,r19,44
	lwi	r4,r19,60
	lwi	r3,r19,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	lwi	r4,r19,64
	lwi	r3,r19,32
	and	r3,r4,r3
	addk	r6,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,36
	addk	r3,r3,r4
	swi	r3,r19,36
	lwi	r4,r19,44
	lwi	r5,r19,36
	lwi	r3,r19,32
	and	r6,r5,r3
	lwi	r5,r19,28
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addk	r3,r4,r3
	swi	r3,r19,44
	lwi	r4,r19,36
	lwi	r3,r19,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	addk	r3,r5,r0
	swi	r3,r19,40
	lwi	r5,r19,44
	lwi	r4,r19,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r19,36
	lwi	r4,r19,44
	lwi	r3,r19,32
	and	r3,r4,r3
	swi	r3,r19,44
	lwi	r4,r19,64
	lwi	r3,r19,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	lwi	r4,r19,60
	lwi	r3,r19,32
	and	r3,r4,r3
	addk	r6,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r19,36
	addk	r3,r3,r4
	swi	r3,r19,36
	lwi	r4,r19,44
	lwi	r5,r19,36
	lwi	r3,r19,32
	and	r6,r5,r3
	lwi	r5,r19,28
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addk	r3,r4,r3
	swi	r3,r19,44
	lwi	r3,r19,40
	addk	r6,r3,r0
	lwi	r5,r19,36
	lwi	r4,r19,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	addk	r3,r6,r3
	swi	r3,r19,40
	lwi	r3,r19,40
	addk	r22,r3,r0
	lwi	r4,r19,60
	lwi	r3,r19,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	lwi	r4,r19,64
	lwi	r3,r19,28
	andi	r18,r3,31
	addk	r6,r0,r4
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r22,r3
	swi	r3,r19,40
	lwi	r4,r19,40
	lwi	r5,r19,44
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,48
	lwi	r22,r1,52
	addik	r1,r1,56
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__muldsi3
$Lfe141:
	.size	__muldsi3,$Lfe141-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	r19,64,r15		# vars= 24, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-64
	swi	r15,r1,0
	swi	r19,r1,52
	swi	r22,r1,56
	swi	r23,r1,60
	addk	r19,r1,r0
	swi	r5,r19,68
	swi	r6,r19,72
	swi	r7,r19,76
	swi	r8,r19,80
	lwi	r4,r19,68
	lwi	r5,r19,72
	swi	r4,r19,28
	swi	r5,r19,32
	lwi	r4,r19,76
	lwi	r5,r19,80
	swi	r4,r19,36
	swi	r5,r19,40
	lwi	r3,r19,32
	lwi	r4,r19,40
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__muldsi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r19,44
	swi	r5,r19,48
	lwi	r3,r19,44
	addk	r22,r3,r0
	lwi	r3,r19,28
	addk	r4,r3,r0
	lwi	r3,r19,40
	addk	r6,r3,r0
	addk	r5,r4,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r23,r3,r0
	lwi	r3,r19,32
	lwi	r4,r19,36
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r23,r3
	addk	r3,r22,r3
	swi	r3,r19,44
	lwi	r4,r19,44
	lwi	r5,r19,48
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,52
	lwi	r22,r1,56
	lwi	r23,r1,60
	addik	r1,r1,64
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__muldi3_compiler_rt
$Lfe142:
	.size	__muldi3_compiler_rt,$Lfe142-__muldi3_compiler_rt
	.align	2
	.globl	__negdi2
	.ent	__negdi2
	.type	__negdi2, @function
__negdi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	swi	r5,r19,12
	swi	r6,r19,16
	lwi	r4,r19,12
	lwi	r5,r19,16
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__negdi2
$Lfe143:
	.size	__negdi2,$Lfe143-__negdi2
	.align	2
	.globl	__paritydi2
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	r19,20,r15		# vars= 12, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-20
	swi	r19,r1,16
	addk	r19,r1,r0
	swi	r5,r19,24
	swi	r6,r19,28
	lwi	r4,r19,24
	lwi	r5,r19,28
	swi	r4,r19,8
	swi	r5,r19,12
	lwi	r3,r19,8
	addk	r4,r3,r0
	lwi	r3,r19,12
	xor	r3,r4,r3
	swi	r3,r19,4
	lwi	r4,r19,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r19,4
	xor	r3,r4,r3
	swi	r3,r19,4
	lwi	r4,r19,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r19,4
	xor	r3,r4,r3
	swi	r3,r19,4
	lwi	r4,r19,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r19,4
	xor	r3,r4,r3
	swi	r3,r19,4
	lwi	r3,r19,4
	andi	r4,r3,15 #and1
	addik	r5,r0,27030	# 0x6996
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,16
	addik	r1,r1,20
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__paritydi2
$Lfe144:
	.size	__paritydi2,$Lfe144-__paritydi2
	.align	2
	.globl	__paritysi2
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	lwi	r3,r19,16
	swi	r3,r19,4
	lwi	r4,r19,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r19,4
	xor	r3,r4,r3
	swi	r3,r19,4
	lwi	r4,r19,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r19,4
	xor	r3,r4,r3
	swi	r3,r19,4
	lwi	r4,r19,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r19,4
	xor	r3,r4,r3
	swi	r3,r19,4
	lwi	r3,r19,4
	andi	r4,r3,15 #and1
	addik	r5,r0,27030	# 0x6996
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__paritysi2
$Lfe145:
	.size	__paritysi2,$Lfe145-__paritysi2
	.align	2
	.globl	__popcountdi2
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	r19,60,r15		# vars= 12, regs= 11, args= 0
	.mask	0xffc80000
	addik	r1,r1,-60
	swi	r19,r1,16
	swi	r22,r1,20
	swi	r23,r1,24
	swi	r24,r1,28
	swi	r25,r1,32
	swi	r26,r1,36
	swi	r27,r1,40
	swi	r28,r1,44
	swi	r29,r1,48
	swi	r30,r1,52
	swi	r31,r1,56
	addk	r19,r1,r0
	swi	r5,r19,64
	swi	r6,r19,68
	lwi	r4,r19,64
	lwi	r5,r19,68
	swi	r4,r19,4
	swi	r5,r19,8
	lwi	r4,r19,4
	src	r3,r4
	src	r3,r3
	andi	r3,r3,-2147483648
	lwi	r4,r19,8
	srl	r11,r4
	or	r11,r3,r11
	lwi	r3,r19,4
	srl	r10,r3
	andi	r28,r10,1431655765 #and2
	andi	r29,r11,1431655765 #and2
	lwi	r6,r19,4
	lwi	r7,r19,8
	rsub	r5,r29,r7
	rsubc	r4,r28,r6
	swi	r4,r19,4
	swi	r5,r19,8
	lwi	r4,r19,4
	src	r3,r4
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-1073741824
	lwi	r4,r19,8
	addk	r9,r0,r4
	srl	r9,r4
	srl	r9,r9
	or	r9,r3,r9
	lwi	r3,r19,4
	addk	r8,r0,r3
	srl	r8,r3
	srl	r8,r8
	andi	r26,r8,858993459 #and2
	andi	r27,r9,858993459 #and2
	lwi	r3,r19,4
	andi	r24,r3,858993459 #and2
	lwi	r3,r19,8
	andi	r25,r3,858993459 #and2
	add	r5,r27,r25
	addc	r4,r26,r24
	swi	r4,r19,4
	swi	r5,r19,8
	lwi	r4,r19,4
	src	r3,r4
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-268435456
	lwi	r4,r19,8
	addk	r23,r0,r4
	srl	r23,r4
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	or	r23,r3,r23
	lwi	r3,r19,4
	addk	r22,r0,r3
	srl	r22,r3
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	lwi	r4,r19,4
	lwi	r5,r19,8
	add	r5,r23,r5
	addc	r4,r22,r4
	andi	r3,r4,252645135 #and2
	swi	r3,r19,4
	andi	r3,r5,252645135 #and2
	swi	r3,r19,8
	lwi	r3,r19,8
	lwi	r4,r19,4
	addk	r31,r4,r0
	addk	r30,r0,r0
	addk	r4,r31,r0
	addk	r3,r3,r4
	swi	r3,r19,12
	lwi	r4,r19,12
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r19,12
	addk	r3,r4,r3
	swi	r3,r19,12
	lwi	r3,r19,12
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r19,12
	addk	r3,r4,r3
	andi	r3,r3,127 #and1
	addk	r1,r19,r0
	lwi	r19,r1,16
	lwi	r22,r1,20
	lwi	r23,r1,24
	lwi	r24,r1,28
	lwi	r25,r1,32
	lwi	r26,r1,36
	lwi	r27,r1,40
	lwi	r28,r1,44
	lwi	r29,r1,48
	lwi	r30,r1,52
	lwi	r31,r1,56
	addik	r1,r1,60
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__popcountdi2
$Lfe146:
	.size	__popcountdi2,$Lfe146-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	r19,12,r15		# vars= 4, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-12
	swi	r19,r1,8
	addk	r19,r1,r0
	swi	r5,r19,16
	lwi	r3,r19,16
	swi	r3,r19,4
	lwi	r3,r19,4
	srl	r3,r3
	andi	r3,r3,1431655765 #and2
	lwi	r4,r19,4
	rsubk	r3,r3,r4
	swi	r3,r19,4
	lwi	r4,r19,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	andi	r4,r3,858993459 #and2
	lwi	r3,r19,4
	andi	r3,r3,858993459 #and2
	addk	r3,r4,r3
	swi	r3,r19,4
	lwi	r3,r19,4
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r19,4
	addk	r3,r4,r3
	andi	r3,r3,252645135 #and2
	swi	r3,r19,4
	lwi	r4,r19,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r19,4
	addk	r3,r4,r3
	swi	r3,r19,4
	lwi	r3,r19,4
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r19,4
	addk	r3,r4,r3
	andi	r3,r3,63 #and1
	addk	r1,r19,r0
	lwi	r19,r1,8
	addik	r1,r1,12
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__popcountsi2
$Lfe147:
	.size	__popcountsi2,$Lfe147-__popcountsi2
	.align	2
	.globl	__powidf2
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	r19,44,r15		# vars= 12, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,40
	addk	r19,r1,r0
	swi	r5,r19,48
	swi	r6,r19,52
	swi	r7,r19,56
	lwi	r3,r19,56
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	andi	r3,r4,0x00ff
	swi	r3,r19,36
	addik	r4,r0,0x3ff00000 
	addik	r5,r0,0x00000000 #Xfer Lo
	swi	r4,r19,28
	swi	r5,r19,32
$L846:
	lwi	r3,r19,56
	andi	r3,r3,1 #and1
	beqi	r3,$L843
	lwi	r7,r19,48
	lwi	r8,r19,52
	lwi	r5,r19,28
	lwi	r6,r19,32
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r19,28
	swi	r5,r19,32
$L843:
	lwi	r3,r19,56
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r3
	sra	r3,r3
	swi	r3,r19,56
	lwi	r3,r19,56
	beqi	r3,$L851
	lwi	r7,r19,48
	lwi	r8,r19,52
	lwi	r5,r19,48
	lwi	r6,r19,52
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r19,48
	swi	r5,r19,52
	bri	$L846
$L851:
	nop
	lwi	r3,r19,36
	beqi	r3,$L847
	lwi	r7,r19,28
	lwi	r8,r19,32
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	bri	$L849
$L847:
	lwi	r4,r19,28
	lwi	r5,r19,32
$L849:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,40
	addik	r1,r1,44
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__powidf2
$Lfe148:
	.size	__powidf2,$Lfe148-__powidf2
	.align	2
	.globl	__powisf2
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	r19,40,r15		# vars= 8, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,36
	addk	r19,r1,r0
	swi	r5,r19,44
	swi	r6,r19,48
	lwi	r3,r19,48
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	andi	r3,r4,0x00ff
	swi	r3,r19,32
	addik	r3,r0,0x3f800000
	swi	r3,r19,28
$L856:
	lwi	r3,r19,48
	andi	r3,r3,1 #and1
	beqi	r3,$L853
	lwi	r6,r19,44
	lwi	r5,r19,28
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r19,28
$L853:
	lwi	r3,r19,48
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r3,r4,r3
	sra	r3,r3
	swi	r3,r19,48
	lwi	r3,r19,48
	beqi	r3,$L861
	lwi	r6,r19,44
	lwi	r5,r19,44
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r19,44
	bri	$L856
$L861:
	nop
	lwi	r3,r19,32
	beqi	r3,$L857
	lwi	r6,r19,28
	addik	r5,r0,0x3f800000
	brlid	r15,__divsf3
	nop		# Unfilled delay slot

	bri	$L859
$L857:
	lwi	r3,r19,28
$L859:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,36
	addik	r1,r1,40
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__powisf2
$Lfe149:
	.size	__powisf2,$Lfe149-__powisf2
	.align	2
	.globl	__ucmpdi2
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	r19,24,r15		# vars= 16, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-24
	swi	r19,r1,20
	addk	r19,r1,r0
	swi	r5,r19,28
	swi	r6,r19,32
	swi	r7,r19,36
	swi	r8,r19,40
	lwi	r4,r19,28
	lwi	r5,r19,32
	swi	r4,r19,4
	swi	r5,r19,8
	lwi	r4,r19,36
	lwi	r5,r19,40
	swi	r4,r19,12
	swi	r5,r19,16
	lwi	r4,r19,4
	lwi	r3,r19,12
	cmpu	r18,r3,r4
	bgei	r18,$L863
	addk	r3,r0,r0
	bri	$L868
$L863:
	lwi	r4,r19,4
	lwi	r3,r19,12
	cmpu	r18,r4,r3
	bgei	r18,$L865
	addik	r3,r0,2	# 0x2
	bri	$L868
$L865:
	lwi	r4,r19,8
	lwi	r3,r19,16
	cmpu	r18,r3,r4
	bgei	r18,$L866
	addk	r3,r0,r0
	bri	$L868
$L866:
	lwi	r4,r19,8
	lwi	r3,r19,16
	cmpu	r18,r4,r3
	bgei	r18,$L867
	addik	r3,r0,2	# 0x2
	bri	$L868
$L867:
	addik	r3,r0,1	# 0x1
$L868:
	addk	r1,r19,r0
	lwi	r19,r1,20
	addik	r1,r1,24
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__ucmpdi2
$Lfe150:
	.size	__ucmpdi2,$Lfe150-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	swi	r5,r19,36
	swi	r6,r19,40
	swi	r7,r19,44
	swi	r8,r19,48
	lwi	r4,r19,36
	lwi	r5,r19,40
	lwi	r6,r19,44
	lwi	r7,r19,48
	addk	r8,r7,r0
	addk	r7,r6,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__ucmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__aeabi_ulcmp
$Lfe151:
	.size	__aeabi_ulcmp,$Lfe151-__aeabi_ulcmp
	.bss
	.lcomm	s.0,7,4
	.type	s.0, @object
	.section	.note.GNU-stack,"",@progbits
