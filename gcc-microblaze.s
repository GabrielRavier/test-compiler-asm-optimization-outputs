	.text
	.align	2
	.globl	memmove
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	lwi	r3,r1,16
	swi	r3,r1,4
	lwi	r3,r1,20
	swi	r3,r1,8
	lwi	r4,r1,8
	lwi	r3,r1,4
	cmpu	r18,r3,r4
	bgei	r18,$L2
	lwi	r4,r1,8
	lwi	r3,r1,24
	addk	r3,r4,r3
	swi	r3,r1,8
	lwi	r4,r1,4
	lwi	r3,r1,24
	addk	r3,r4,r3
	swi	r3,r1,4
	bri	$L3
$L4:
	lwi	r3,r1,8
	addik	r3,r3,-1
	swi	r3,r1,8
	lwi	r3,r1,4
	addik	r3,r3,-1
	swi	r3,r1,4
	lwi	r3,r1,8
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,4
	sbi	r4,r3,0
	lwi	r3,r1,24
	addik	r3,r3,-1
	swi	r3,r1,24
$L3:
	lwi	r3,r1,24
	bnei	r3,$L4
	bri	$L5
$L2:
	lwi	r4,r1,8
	lwi	r3,r1,4
	xor	r3,r4,r3
	beqi	r3,$L5
	bri	$L6
$L7:
	lwi	r4,r1,8
	addik	r3,r4,1
	swi	r3,r1,8
	lwi	r3,r1,4
	addik	r5,r3,1
	swi	r5,r1,4
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,24
	addik	r3,r3,-1
	swi	r3,r1,24
$L6:
	lwi	r3,r1,24
	bnei	r3,$L7
$L5:
	lwi	r3,r1,16
	addik	r1,r1,12
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	swi	r8,r1,28
	lwi	r3,r1,16
	swi	r3,r1,4
	lwi	r3,r1,20
	swi	r3,r1,8
	lwi	r3,r1,24
	andi	r3,r3,0x00ff
	swi	r3,r1,24
	bri	$L11
$L13:
	lwi	r3,r1,28
	addik	r3,r3,-1
	swi	r3,r1,28
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L11:
	lwi	r3,r1,28
	beqi	r3,$L12
	lwi	r3,r1,8
	lbui	r4,r3,0
	lwi	r3,r1,4
	sbi	r4,r3,0
	lwi	r3,r1,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,24
	xor	r3,r3,r4
	bnei	r3,$L13
$L12:
	lwi	r3,r1,28
	beqi	r3,$L14
	lwi	r3,r1,4
	addik	r3,r3,1
	bri	$L15
$L14:
	addk	r3,r0,r0
$L15:
	addik	r1,r1,12
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,12
	swi	r3,r1,4
	lwi	r3,r1,16
	andi	r3,r3,0x00ff
	swi	r3,r1,16
	bri	$L18
$L20:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
	lwi	r3,r1,20
	addik	r3,r3,-1
	swi	r3,r1,20
$L18:
	lwi	r3,r1,20
	beqi	r3,$L19
	lwi	r3,r1,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,16
	xor	r3,r3,r4
	bnei	r3,$L20
$L19:
	lwi	r3,r1,20
	beqi	r3,$L21
	lwi	r3,r1,4
	bri	$L23
$L21:
	addk	r3,r0,r0
$L23:
	addik	r1,r1,8
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	lwi	r3,r1,16
	swi	r3,r1,4
	lwi	r3,r1,20
	swi	r3,r1,8
	bri	$L26
$L28:
	lwi	r3,r1,24
	addik	r3,r3,-1
	swi	r3,r1,24
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L26:
	lwi	r3,r1,24
	beqi	r3,$L27
	lwi	r3,r1,4
	lbui	r4,r3,0
	lwi	r3,r1,8
	lbui	r3,r3,0
	xor	r3,r4,r3
	beqi	r3,$L28
$L27:
	lwi	r3,r1,24
	beqi	r3,$L29
	lwi	r3,r1,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,8
	lbui	r3,r3,0
	rsubk	r3,r3,r4
	bri	$L31
$L29:
	addk	r3,r0,r0
$L31:
	addik	r1,r1,12
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	lwi	r3,r1,16
	swi	r3,r1,4
	lwi	r3,r1,20
	swi	r3,r1,8
	bri	$L34
$L35:
	lwi	r4,r1,8
	addik	r3,r4,1
	swi	r3,r1,8
	lwi	r3,r1,4
	addik	r5,r3,1
	swi	r5,r1,4
	lbui	r4,r4,0
	sbi	r4,r3,0
	lwi	r3,r1,24
	addik	r3,r3,-1
	swi	r3,r1,24
$L34:
	lwi	r3,r1,24
	bnei	r3,$L35
	lwi	r3,r1,16
	addik	r1,r1,12
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,12
	swi	r3,r1,4
	lwi	r3,r1,16
	andi	r3,r3,0x00ff
	swi	r3,r1,16
	bri	$L39
$L41:
	lwi	r4,r1,4
	lwi	r3,r1,20
	addk	r3,r4,r3
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,16
	xor	r3,r3,r4
	bnei	r3,$L39
	lwi	r4,r1,4
	lwi	r3,r1,20
	addk	r3,r4,r3
	bri	$L40
$L39:
	lwi	r3,r1,20
	addik	r4,r3,-1
	swi	r4,r1,20
	bnei	r3,$L41
	addk	r3,r0,r0
$L40:
	addik	r1,r1,8
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L44
$L45:
	lwi	r3,r1,16
	andi	r4,r3,0x00ff
	lwi	r3,r1,4
	sbi	r4,r3,0
	lwi	r3,r1,20
	addik	r3,r3,-1
	swi	r3,r1,20
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L44:
	lwi	r3,r1,20
	bnei	r3,$L45
	lwi	r3,r1,12
	addik	r1,r1,8
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	bri	$L49
$L50:
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L49:
	lwi	r3,r1,8
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,4
	sbi	r4,r3,0
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L50
	lwi	r3,r1,4
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r3,r1,8
	andi	r3,r3,0x00ff
	swi	r3,r1,8
	bri	$L53
$L55:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L53:
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r3,r3
	beqi	r3,$L54
	lwi	r3,r1,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,8
	xor	r3,r3,r4
	bnei	r3,$L55
$L54:
	lwi	r3,r1,4
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	swi	r6,r1,8
$L60:
	lbui	r4,r3,0
	sext8	r4,r4
	addk	r5,r4,r0
	lwi	r4,r1,8
	xor	r4,r4,r5
	bnei	r4,$L58
	bri	$L59
$L58:
	addk	r4,r3,r0
	addik	r3,r4,1
	lbui	r4,r4,0
	sext8	r4,r4
	bnei	r4,$L60
	addk	r3,r0,r0
$L59:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	bri	$L62
$L64:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L62:
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,8
	lbui	r3,r3,0
	sext8	r3,r3
	xor	r3,r4,r3
	bnei	r3,$L63
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L64
$L63:
	lwi	r3,r1,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,8
	lbui	r3,r3,0
	rsubk	r3,r3,r4
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L67
$L68:
	lwi	r3,r1,12
	addik	r3,r3,1
	swi	r3,r1,12
$L67:
	lwi	r3,r1,12
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L68
	lwi	r4,r1,12
	lwi	r3,r1,4
	rsubk	r3,r3,r4
	addik	r1,r1,8
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	lwi	r3,r1,16
	swi	r3,r1,4
	lwi	r3,r1,20
	swi	r3,r1,8
	lwi	r3,r1,24
	addik	r4,r3,-1
	swi	r4,r1,24
	bnei	r3,$L74
	addk	r3,r0,r0
	bri	$L73
$L76:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
	lwi	r3,r1,24
	addik	r3,r3,-1
	swi	r3,r1,24
$L74:
	lwi	r3,r1,4
	lbui	r3,r3,0
	beqi	r3,$L75
	lwi	r3,r1,8
	lbui	r3,r3,0
	beqi	r3,$L75
	lwi	r3,r1,24
	beqi	r3,$L75
	lwi	r3,r1,4
	lbui	r4,r3,0
	lwi	r3,r1,8
	lbui	r3,r3,0
	xor	r3,r4,r3
	beqi	r3,$L76
$L75:
	lwi	r3,r1,4
	lbui	r3,r3,0
	addk	r4,r3,r0
	lwi	r3,r1,8
	lbui	r3,r3,0
	rsubk	r3,r3,r4
$L73:
	addik	r1,r1,12
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	lwi	r3,r1,16
	swi	r3,r1,4
	lwi	r3,r1,20
	swi	r3,r1,8
	bri	$L79
$L80:
	lwi	r3,r1,4
	addik	r3,r3,1
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,8
	sbi	r4,r3,0
	lwi	r3,r1,8
	addik	r3,r3,1
	lwi	r4,r1,4
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,8
	addik	r3,r3,2
	swi	r3,r1,8
	lwi	r3,r1,4
	addik	r3,r3,2
	swi	r3,r1,4
	lwi	r3,r1,24
	addik	r3,r3,-2
	swi	r3,r1,24
$L79:
	lwi	r4,r1,24
	addik	r3,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L80
	nop
	nop
	addik	r1,r1,12
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	ori	r3,r3,32
	addik	r4,r3,-97
	addik	r5,r0,1	# 0x1
	addik	r3,r0,25	# 0x19
	cmpu	r18,r4,r3
	bgei	r18,$L83
	addk	r5,r0,r0
$L83:
	andi	r3,r5,0x00ff
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r4,r1,4
	addik	r5,r0,1	# 0x1
	addik	r3,r0,127	# 0x7f
	cmpu	r18,r4,r3
	bgei	r18,$L86
	addk	r5,r0,r0
$L86:
	andi	r3,r5,0x00ff
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	xori	r3,r3,32
	beqi	r3,$L89
	lwi	r3,r1,4
	xori	r3,r3,9
	bnei	r3,$L90
$L89:
	addik	r3,r0,1	# 0x1
	bri	$L92
$L90:
	addk	r3,r0,r0
$L92:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r4,r1,4
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L94
	lwi	r3,r1,4
	xori	r3,r3,127
	bnei	r3,$L95
$L94:
	addik	r3,r0,1	# 0x1
	bri	$L97
$L95:
	addk	r3,r0,r0
$L97:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-48
	addik	r5,r0,1	# 0x1
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L99
	addk	r5,r0,r0
$L99:
	andi	r3,r5,0x00ff
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-33
	addik	r5,r0,1	# 0x1
	addik	r3,r0,93	# 0x5d
	cmpu	r18,r4,r3
	bgei	r18,$L102
	addk	r5,r0,r0
$L102:
	andi	r3,r5,0x00ff
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-97
	addik	r5,r0,1	# 0x1
	addik	r3,r0,25	# 0x19
	cmpu	r18,r4,r3
	bgei	r18,$L105
	addk	r5,r0,r0
$L105:
	andi	r3,r5,0x00ff
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-32
	addik	r5,r0,1	# 0x1
	addik	r3,r0,94	# 0x5e
	cmpu	r18,r4,r3
	bgei	r18,$L108
	addk	r5,r0,r0
$L108:
	andi	r3,r5,0x00ff
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	xori	r3,r3,32
	beqi	r3,$L111
	lwi	r3,r1,4
	addik	r4,r3,-9
	addik	r3,r0,4	# 0x4
	cmpu	r18,r4,r3
	blti	r18,$L112
$L111:
	addik	r3,r0,1	# 0x1
	bri	$L114
$L112:
	addk	r3,r0,r0
$L114:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-65
	addik	r5,r0,1	# 0x1
	addik	r3,r0,25	# 0x19
	cmpu	r18,r4,r3
	bgei	r18,$L116
	addk	r5,r0,r0
$L116:
	andi	r3,r5,0x00ff
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r4,r1,4
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L119
	lwi	r3,r1,4
	addik	r4,r3,-127
	addik	r3,r0,32	# 0x20
	cmpu	r18,r4,r3
	bgei	r18,$L119
	lwi	r3,r1,4
	addik	r4,r3,-8232
	addik	r3,r0,1	# 0x1
	cmpu	r18,r4,r3
	bgei	r18,$L119
	lwi	r3,r1,4
	addik	r4,r3,-65529
	addik	r3,r0,2	# 0x2
	cmpu	r18,r4,r3
	blti	r18,$L120
$L119:
	addik	r3,r0,1	# 0x1
	bri	$L122
$L120:
	addk	r3,r0,r0
$L122:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-48
	addik	r5,r0,1	# 0x1
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L124
	addk	r5,r0,r0
$L124:
	andi	r3,r5,0x00ff
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r4,r1,4
	addik	r3,r0,254	# 0xfe
	cmpu	r18,r4,r3
	blti	r18,$L127
	lwi	r3,r1,4
	addik	r3,r3,1
	andi	r4,r3,127 #and1
	addik	r5,r0,1	# 0x1
	addik	r3,r0,32	# 0x20
	cmpu	r18,r4,r3
	blti	r18,$L128
	addk	r5,r0,r0
$L128:
	andi	r3,r5,0x00ff
	bri	$L129
$L127:
	lwi	r4,r1,4
	addik	r3,r0,8231	# 0x2027
	cmpu	r18,r4,r3
	bgei	r18,$L130
	lwi	r3,r1,4
	addik	r4,r3,-8234
	addik	r3,r0,47061
	cmpu	r18,r4,r3
	bgei	r18,$L130
	lwi	r3,r1,4
	addik	r4,r3,-57344
	addik	r3,r0,8184	# 0x1ff8
	cmpu	r18,r4,r3
	blti	r18,$L131
$L130:
	addik	r3,r0,1	# 0x1
	bri	$L129
$L131:
	lwi	r3,r1,4
	addik	r4,r3,-65532
	addik	r3,r0,1048579
	cmpu	r18,r4,r3
	blti	r18,$L132
	lwi	r3,r1,4
	andi	r3,r3,65534 #and2
	xori	r3,r3,65534
	bnei	r3,$L133
$L132:
	addk	r3,r0,r0
	bri	$L129
$L133:
	addik	r3,r0,1	# 0x1
$L129:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L135
	lwi	r3,r1,4
	ori	r3,r3,32
	addik	r4,r3,-97
	addik	r3,r0,5	# 0x5
	cmpu	r18,r4,r3
	blti	r18,$L136
$L135:
	addik	r3,r0,1	# 0x1
	bri	$L138
$L136:
	addk	r3,r0,r0
$L138:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	andi	r3,r3,127 #and1
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,32
	lwi	r8,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L153
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L144
$L153:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L154
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L144
$L154:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L155
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__subdf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	bri	$L144
$L155:
	addk	r4,r0,r0
	addk	r5,r0,r0
$L144:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r6,r1,32
	lwi	r5,r1,32
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L169
	lwi	r3,r1,32
	bri	$L160
$L169:
	lwi	r6,r1,36
	lwi	r5,r1,36
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L170
	lwi	r3,r1,36
	bri	$L160
$L170:
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L171
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	bri	$L160
$L171:
	addk	r3,r0,r0
$L160:
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,32
	lwi	r8,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L188
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L176
$L188:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L189
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L176
$L189:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,40
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L179
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L180
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L176
$L180:
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L176
$L179:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L190
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L176
$L190:
	lwi	r4,r1,32
	lwi	r5,r1,36
$L176:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r6,r1,32
	lwi	r5,r1,32
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L207
	lwi	r3,r1,36
	bri	$L195
$L207:
	lwi	r6,r1,36
	lwi	r5,r1,36
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L208
	lwi	r3,r1,32
	bri	$L195
$L208:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,36
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L198
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L199
	lwi	r3,r1,36
	bri	$L195
$L199:
	lwi	r3,r1,32
	bri	$L195
$L198:
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L209
	lwi	r3,r1,36
	bri	$L195
$L209:
	lwi	r3,r1,32
$L195:
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,32
	lwi	r8,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L226
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L214
$L226:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L227
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L214
$L227:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,40
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L217
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L218
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L214
$L218:
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L214
$L217:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L228
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L214
$L228:
	lwi	r4,r1,32
	lwi	r5,r1,36
$L214:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,32
	lwi	r8,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L245
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L233
$L245:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L246
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L233
$L246:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,40
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L236
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L237
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L233
$L237:
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L233
$L236:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L247
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L233
$L247:
	lwi	r4,r1,40
	lwi	r5,r1,44
$L233:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r6,r1,32
	lwi	r5,r1,32
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L264
	lwi	r3,r1,36
	bri	$L252
$L264:
	lwi	r6,r1,36
	lwi	r5,r1,36
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	beqi	r3,$L265
	lwi	r3,r1,32
	bri	$L252
$L265:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,36
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L255
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L256
	lwi	r3,r1,32
	bri	$L252
$L256:
	lwi	r3,r1,36
	bri	$L252
$L255:
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L266
	lwi	r3,r1,32
	bri	$L252
$L266:
	lwi	r3,r1,36
$L252:
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,32
	lwi	r8,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L283
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L271
$L283:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	beqi	r3,$L284
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L271
$L284:
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	addk	r4,r3,r0
	lwi	r3,r1,40
	andi	r3,r3,-2147483648 #and2
	xor	r3,r4,r3
	beqi	r3,$L274
	lwi	r3,r1,32
	andi	r3,r3,-2147483648 #and2
	beqi	r3,$L275
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L271
$L275:
	lwi	r4,r1,40
	lwi	r5,r1,44
	bri	$L271
$L274:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L285
	lwi	r4,r1,32
	lwi	r5,r1,36
	bri	$L271
$L285:
	lwi	r4,r1,40
	lwi	r5,r1,44
$L271:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	lwi	r3,r1,16
	swi	r3,r1,8
	addik	r3,r0,s.0
	swi	r3,r1,4
	bri	$L288
$L289:
	lwi	r3,r1,8
	andi	r3,r3,63 #and1
	lbui	r3,r3,digits
	sext8	r4,r3
	lwi	r3,r1,4
	sbi	r4,r3,0
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
	lwi	r4,r1,8
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	swi	r3,r1,8
$L288:
	lwi	r3,r1,8
	bnei	r3,$L289
	lwi	r3,r1,4
	sbi	r0,r3,0
	addik	r3,r0,s.0
	addik	r1,r1,12
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
	addik	r3,r3,-1
	addk	r7,r3,r0
	addk	r6,r0,r0
	swi	r6,r0,seed
	swi	r7,r0,seed+4
	nop
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
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00c08000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
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
	lwi	r22,r1,28
	lwi	r23,r1,32
	addik	r1,r1,36
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	lwi	r3,r1,16
	swi	r3,r1,4
	lwi	r3,r1,20
	swi	r3,r1,8
	lwi	r3,r1,8
	bnei	r3,$L297
	lwi	r3,r1,4
	swi	r0,r3,4
	lwi	r3,r1,4
	lwi	r4,r3,4
	lwi	r3,r1,4
	swi	r4,r3,0
	bri	$L296
$L297:
	lwi	r3,r1,8
	lwi	r4,r3,0
	lwi	r3,r1,4
	swi	r4,r3,0
	lwi	r3,r1,4
	lwi	r4,r1,8
	swi	r4,r3,4
	lwi	r3,r1,8
	lwi	r4,r1,4
	swi	r4,r3,0
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L296
	lwi	r3,r1,4
	lwi	r3,r3,0
	lwi	r4,r1,4
	swi	r4,r3,4
$L296:
	addik	r1,r1,12
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	lwi	r3,r1,12
	swi	r3,r1,4
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L301
	lwi	r3,r1,4
	lwi	r3,r3,0
	lwi	r4,r1,4
	lwi	r4,r4,4
	swi	r4,r3,4
$L301:
	lwi	r3,r1,4
	lwi	r3,r3,4
	beqi	r3,$L303
	lwi	r3,r1,4
	lwi	r3,r3,4
	lwi	r4,r1,4
	lwi	r4,r4,0
	swi	r4,r3,0
$L303:
	nop
	addik	r1,r1,8
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
	.frame	r1,56,r15		# vars= 16, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,44
	swi	r22,r1,48
	swi	r23,r1,52
	swi	r5,r1,60
	swi	r6,r1,64
	swi	r7,r1,68
	swi	r8,r1,72
	swi	r9,r1,76
	lwi	r19,r1,72
	addk	r3,r19,r0
	addik	r3,r19,-1
	swi	r3,r1,32
	addk	r11,r19,r0
	addk	r10,r0,r0
	addk	r3,r0,r19
	srl	r3,r19
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
	addk	r23,r0,r19
	addk	r23,r19,r19
	addk	r23,r23,r23
	addk	r23,r23,r23
	lwi	r3,r1,64
	swi	r3,r1,36
	lwi	r3,r1,68
	lwi	r3,r3,0
	swi	r3,r1,40
	swi	r0,r1,28
	bri	$L306
$L309:
	lwi	r6,r1,28
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	addk	r4,r3,r4
	lwi	r3,r1,76
	addk	r6,r4,r0
	lwi	r5,r1,60
	brald	r15,r3
	nop		# Unfilled delay slot

	bnei	r3,$L307
	lwi	r6,r1,28
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	addk	r3,r3,r4
	bri	$L308
$L307:
	lwi	r3,r1,28
	addik	r3,r3,1
	swi	r3,r1,28
$L306:
	lwi	r4,r1,28
	lwi	r3,r1,40
	cmpu	r18,r3,r4
	blti	r18,$L309
	lwi	r3,r1,40
	addik	r4,r3,1
	lwi	r3,r1,68
	swi	r4,r3,0
	lwi	r6,r1,40
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	addk	r3,r3,r4
	lwi	r7,r1,72
	lwi	r6,r1,60
	addk	r5,r3,r0
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L308:
	lwi	r15,r1,0
	lwi	r19,r1,44
	lwi	r22,r1,48
	lwi	r23,r1,52
	addik	r1,r1,56
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
	.frame	r1,56,r15		# vars= 16, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,44
	swi	r22,r1,48
	swi	r23,r1,52
	swi	r5,r1,60
	swi	r6,r1,64
	swi	r7,r1,68
	swi	r8,r1,72
	swi	r9,r1,76
	lwi	r19,r1,72
	addk	r3,r19,r0
	addik	r3,r19,-1
	swi	r3,r1,32
	addk	r11,r19,r0
	addk	r10,r0,r0
	addk	r3,r0,r19
	srl	r3,r19
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
	addk	r23,r0,r19
	addk	r23,r19,r19
	addk	r23,r23,r23
	addk	r23,r23,r23
	lwi	r3,r1,64
	swi	r3,r1,36
	lwi	r3,r1,68
	lwi	r3,r3,0
	swi	r3,r1,40
	swi	r0,r1,28
	bri	$L312
$L315:
	lwi	r6,r1,28
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	addk	r4,r3,r4
	lwi	r3,r1,76
	addk	r6,r4,r0
	lwi	r5,r1,60
	brald	r15,r3
	nop		# Unfilled delay slot

	bnei	r3,$L313
	lwi	r6,r1,28
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	addk	r3,r3,r4
	bri	$L314
$L313:
	lwi	r3,r1,28
	addik	r3,r3,1
	swi	r3,r1,28
$L312:
	lwi	r4,r1,28
	lwi	r3,r1,40
	cmpu	r18,r3,r4
	blti	r18,$L315
	addk	r3,r0,r0
$L314:
	lwi	r15,r1,0
	lwi	r19,r1,44
	lwi	r22,r1,48
	lwi	r23,r1,52
	addik	r1,r1,56
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
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
	lwi	r3,r1,4
	xor	r3,r4,r3
	rsubk	r3,r4,r3
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
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r0,r1,28
	swi	r0,r1,32
	bri	$L320
$L321:
	lwi	r3,r1,40
	addik	r3,r3,1
	swi	r3,r1,40
$L320:
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r5,r3,r0
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L321
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L322
	xori	r3,r3,45
	bnei	r3,$L324
	addik	r3,r0,1	# 0x1
	swi	r3,r1,32
$L322:
	lwi	r3,r1,40
	addik	r3,r3,1
	swi	r3,r1,40
	bri	$L324
$L325:
	lwi	r4,r1,28
	addk	r3,r4,r0
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,40
	addik	r4,r3,1
	swi	r4,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r3,r3,-48
	rsubk	r3,r3,r5
	swi	r3,r1,28
$L324:
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L325
	lwi	r3,r1,32
	bnei	r3,$L326
	lwi	r3,r1,28
	rsubk	r3,r3,r0
	bri	$L328
$L326:
	lwi	r3,r1,28
$L328:
	lwi	r15,r1,0
	addik	r1,r1,36
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
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r0,r1,28
	swi	r0,r1,32
	bri	$L331
$L332:
	lwi	r3,r1,40
	addik	r3,r3,1
	swi	r3,r1,40
$L331:
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r5,r3,r0
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L332
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L333
	xori	r3,r3,45
	bnei	r3,$L335
	addik	r3,r0,1	# 0x1
	swi	r3,r1,32
$L333:
	lwi	r3,r1,40
	addik	r3,r3,1
	swi	r3,r1,40
	bri	$L335
$L336:
	lwi	r4,r1,28
	addk	r3,r4,r0
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,40
	addik	r4,r3,1
	swi	r4,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r3,r3,-48
	rsubk	r3,r3,r5
	swi	r3,r1,28
$L335:
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L336
	lwi	r3,r1,32
	bnei	r3,$L337
	lwi	r3,r1,28
	rsubk	r3,r3,r0
	bri	$L339
$L337:
	lwi	r3,r1,28
$L339:
	lwi	r15,r1,0
	addik	r1,r1,36
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
	.frame	r1,56,r15		# vars= 12, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r22,r1,40
	swi	r23,r1,44
	swi	r24,r1,48
	swi	r25,r1,52
	swi	r5,r1,60
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	swi	r4,r1,28
	swi	r5,r1,32
	swi	r0,r1,36
	bri	$L342
$L343:
	lwi	r3,r1,60
	addik	r3,r3,1
	swi	r3,r1,60
$L342:
	lwi	r3,r1,60
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r5,r3,r0
	brlid	r15,isspace
	nop		# Unfilled delay slot

	bnei	r3,$L343
	lwi	r3,r1,60
	lbui	r3,r3,0
	sext8	r3,r3
	xori	r4,r3,43
	beqi	r4,$L344
	xori	r3,r3,45
	bnei	r3,$L346
	addik	r3,r0,1	# 0x1
	swi	r3,r1,36
$L344:
	lwi	r3,r1,60
	addik	r3,r3,1
	swi	r3,r1,60
	bri	$L346
$L347:
	lwi	r6,r1,28
	lwi	r7,r1,32
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
	lwi	r3,r1,60
	addik	r4,r3,1
	swi	r4,r1,60
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
	swi	r4,r1,28
	swi	r5,r1,32
$L346:
	lwi	r3,r1,60
	lbui	r3,r3,0
	sext8	r3,r3
	addik	r4,r3,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgei	r18,$L347
	lwi	r3,r1,36
	bnei	r3,$L348
	lwi	r4,r1,28
	lwi	r5,r1,32
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
	bri	$L350
$L348:
	lwi	r4,r1,28
	lwi	r5,r1,32
$L350:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,40
	lwi	r23,r1,44
	lwi	r24,r1,48
	lwi	r25,r1,52
	addik	r1,r1,56
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
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r7,r1,48
	swi	r8,r1,52
	swi	r9,r1,56
	bri	$L353
$L358:
	lwi	r3,r1,48
	srl	r3,r3
	lwi	r6,r1,52
	addk	r5,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,44
	addk	r3,r3,r4
	swi	r3,r1,28
	lwi	r3,r1,56
	lwi	r6,r1,28
	lwi	r5,r1,40
	brald	r15,r3
	nop		# Unfilled delay slot

	swi	r3,r1,32
	lwi	r3,r1,32
	bgei	r3,$L354
	lwi	r3,r1,48
	srl	r3,r3
	swi	r3,r1,48
	bri	$L353
$L354:
	lwi	r3,r1,32
	blei	r3,$L356
	lwi	r4,r1,28
	lwi	r3,r1,52
	addk	r3,r4,r3
	swi	r3,r1,44
	lwi	r3,r1,48
	srl	r3,r3
	lwi	r4,r1,48
	rsubk	r3,r3,r4
	addik	r3,r3,-1
	swi	r3,r1,48
	bri	$L353
$L356:
	lwi	r3,r1,28
	bri	$L357
$L353:
	lwi	r3,r1,48
	bnei	r3,$L358
	addk	r3,r0,r0
$L357:
	lwi	r15,r1,0
	addik	r1,r1,36
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
	.frame	r1,44,r15		# vars= 16, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r5,r1,48
	swi	r6,r1,52
	swi	r7,r1,56
	swi	r8,r1,60
	swi	r9,r1,64
	swi	r10,r1,68
	lwi	r3,r1,52
	swi	r3,r1,28
	lwi	r3,r1,56
	swi	r3,r1,32
	bri	$L361
$L365:
	lwi	r3,r1,32
	sra	r3,r3
	lwi	r6,r1,60
	addk	r5,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,28
	addk	r3,r3,r4
	swi	r3,r1,36
	lwi	r3,r1,64
	lwi	r7,r1,68
	lwi	r6,r1,36
	lwi	r5,r1,48
	brald	r15,r3
	nop		# Unfilled delay slot

	swi	r3,r1,40
	lwi	r3,r1,40
	bnei	r3,$L362
	lwi	r3,r1,36
	bri	$L363
$L362:
	lwi	r3,r1,40
	blei	r3,$L364
	lwi	r4,r1,36
	lwi	r3,r1,60
	addk	r3,r4,r3
	swi	r3,r1,28
	lwi	r3,r1,32
	addik	r3,r3,-1
	swi	r3,r1,32
$L364:
	lwi	r3,r1,32
	sra	r3,r3
	swi	r3,r1,32
$L361:
	lwi	r3,r1,32
	bnei	r3,$L365
	addk	r3,r0,r0
$L363:
	lwi	r15,r1,0
	addik	r1,r1,44
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
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r5,r1,36
	swi	r6,r1,40
	swi	r7,r1,44
	lwi	r6,r1,44
	lwi	r5,r1,40
	brlid	r15,__divsi3
	nop		# Unfilled delay slot

	addk	r19,r3,r0
	lwi	r3,r1,40
	lwi	r6,r1,44
	addk	r5,r3,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	swi	r19,r3,0
	lwi	r3,r1,36
	swi	r4,r3,4
	lwi	r3,r1,36
	lwi	r15,r1,0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r3,r1,4
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
	lwi	r3,r1,4
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
	lwi	r3,r1,4
	xor	r10,r3,r8
	lwi	r3,r1,8
	xor	r11,r3,r9
	addk	r4,r10,r0
	addk	r5,r11,r0
	rsub	r11,r9,r5
	rsubc	r10,r8,r4
	addk	r4,r10,r0
	addk	r5,r11,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
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
	.frame	r1,52,r15		# vars= 16, regs= 2, args= 24
	.mask	0x00c08000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r22,r1,44
	swi	r23,r1,48
	swi	r5,r1,56
	swi	r6,r1,60
	swi	r7,r1,64
	swi	r8,r1,68
	swi	r9,r1,72
	lwi	r7,r1,68
	lwi	r8,r1,72
	lwi	r5,r1,60
	lwi	r6,r1,64
	brlid	r15,__divdi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r22,r4,r0
	addk	r23,r5,r0
	lwi	r4,r1,60
	lwi	r5,r1,64
	lwi	r7,r1,68
	lwi	r8,r1,72
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__moddi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	lwi	r3,r1,56
	swi	r22,r3,0
	swi	r23,r3,4
	lwi	r3,r1,56
	swi	r4,r3,8
	swi	r5,r3,12
	lwi	r3,r1,56
	lwi	r15,r1,0
	lwi	r22,r1,44
	lwi	r23,r1,48
	addik	r1,r1,52
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
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
	lwi	r3,r1,4
	xor	r3,r4,r3
	rsubk	r3,r4,r3
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
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r5,r1,36
	swi	r6,r1,40
	swi	r7,r1,44
	lwi	r6,r1,44
	lwi	r5,r1,40
	brlid	r15,__divsi3
	nop		# Unfilled delay slot

	addk	r19,r3,r0
	lwi	r3,r1,40
	lwi	r6,r1,44
	addk	r5,r3,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	swi	r19,r3,0
	lwi	r3,r1,36
	swi	r4,r3,4
	lwi	r3,r1,36
	lwi	r15,r1,0
	lwi	r19,r1,28
	addik	r1,r1,32
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r3,r1,4
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
	lwi	r3,r1,4
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
	lwi	r3,r1,4
	xor	r10,r3,r8
	lwi	r3,r1,8
	xor	r11,r3,r9
	addk	r4,r10,r0
	addk	r5,r11,r0
	rsub	r11,r9,r5
	rsubc	r10,r8,r4
	addk	r4,r10,r0
	addk	r5,r11,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
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
	.frame	r1,52,r15		# vars= 16, regs= 2, args= 24
	.mask	0x00c08000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r22,r1,44
	swi	r23,r1,48
	swi	r5,r1,56
	swi	r6,r1,60
	swi	r7,r1,64
	swi	r8,r1,68
	swi	r9,r1,72
	lwi	r7,r1,68
	lwi	r8,r1,72
	lwi	r5,r1,60
	lwi	r6,r1,64
	brlid	r15,__divdi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r22,r4,r0
	addk	r23,r5,r0
	lwi	r4,r1,60
	lwi	r5,r1,64
	lwi	r7,r1,68
	lwi	r8,r1,72
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__moddi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	lwi	r3,r1,56
	swi	r22,r3,0
	swi	r23,r3,4
	lwi	r3,r1,56
	swi	r4,r3,8
	swi	r5,r3,12
	lwi	r3,r1,56
	lwi	r15,r1,0
	lwi	r22,r1,44
	lwi	r23,r1,48
	addik	r1,r1,52
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	bri	$L386
$L388:
	lwi	r3,r1,4
	addik	r3,r3,4
	swi	r3,r1,4
$L386:
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L387
	lwi	r3,r1,4
	lwi	r3,r3,0
	lwi	r4,r1,8
	xor	r3,r4,r3
	bnei	r3,$L388
$L387:
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L389
	lwi	r3,r1,4
	bri	$L391
$L389:
	addk	r3,r0,r0
$L391:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	bri	$L393
$L395:
	lwi	r3,r1,4
	addik	r3,r3,4
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,4
	swi	r3,r1,8
$L393:
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	xor	r3,r4,r3
	bnei	r3,$L394
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L394
	lwi	r3,r1,8
	lwi	r3,r3,0
	bnei	r3,$L395
$L394:
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	cmp	r18,r3,r4
	blti	r18,$L396
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	addik	r5,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L397
	addk	r5,r0,r0
$L397:
	andi	r3,r5,0x00ff
	bri	$L399
$L396:
	addik	r3,r0,-1	# 0xffffffffffffffff
$L399:
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	lwi	r3,r1,12
	swi	r3,r1,4
	nop
$L401:
	lwi	r4,r1,16
	addik	r3,r4,4
	swi	r3,r1,16
	lwi	r3,r1,12
	addik	r5,r3,4
	swi	r5,r1,12
	lwi	r4,r4,0
	swi	r4,r3,0
	lwi	r3,r3,0
	bnei	r3,$L401
	lwi	r3,r1,4
	addik	r1,r1,8
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L405
$L406:
	lwi	r3,r1,12
	addik	r3,r3,4
	swi	r3,r1,12
$L405:
	lwi	r3,r1,12
	lwi	r3,r3,0
	bnei	r3,$L406
	lwi	r4,r1,12
	lwi	r3,r1,4
	rsubk	r3,r3,r4
	addk	r4,r0,r3
	sra	r4,r3
	sra	r4,r4
	addk	r3,r4,r0
	addik	r1,r1,8
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	swi	r7,r1,12
	bri	$L410
$L412:
	lwi	r3,r1,12
	addik	r3,r3,-1
	swi	r3,r1,12
	lwi	r3,r1,4
	addik	r3,r3,4
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,4
	swi	r3,r1,8
$L410:
	lwi	r3,r1,12
	beqi	r3,$L411
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	xor	r3,r4,r3
	bnei	r3,$L411
	lwi	r3,r1,4
	lwi	r3,r3,0
	beqi	r3,$L411
	lwi	r3,r1,8
	lwi	r3,r3,0
	bnei	r3,$L412
$L411:
	lwi	r3,r1,12
	beqi	r3,$L413
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	cmp	r18,r3,r4
	blti	r18,$L414
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	addik	r5,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L415
	addk	r5,r0,r0
$L415:
	andi	r3,r5,0x00ff
	bri	$L418
$L414:
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L418
$L413:
	addk	r3,r0,r0
$L418:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	swi	r7,r1,12
	bri	$L420
$L422:
	lwi	r3,r1,12
	addik	r3,r3,-1
	swi	r3,r1,12
	lwi	r3,r1,4
	addik	r3,r3,4
	swi	r3,r1,4
$L420:
	lwi	r3,r1,12
	beqi	r3,$L421
	lwi	r3,r1,4
	lwi	r3,r3,0
	lwi	r4,r1,8
	xor	r3,r4,r3
	bnei	r3,$L422
$L421:
	lwi	r3,r1,12
	beqi	r3,$L423
	lwi	r3,r1,4
	bri	$L425
$L423:
	addk	r3,r0,r0
$L425:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	swi	r7,r1,12
	bri	$L427
$L429:
	lwi	r3,r1,12
	addik	r3,r3,-1
	swi	r3,r1,12
	lwi	r3,r1,4
	addik	r3,r3,4
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,4
	swi	r3,r1,8
$L427:
	lwi	r3,r1,12
	beqi	r3,$L428
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	xor	r3,r4,r3
	beqi	r3,$L429
$L428:
	lwi	r3,r1,12
	beqi	r3,$L430
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	cmp	r18,r3,r4
	blti	r18,$L431
	lwi	r3,r1,4
	lwi	r4,r3,0
	lwi	r3,r1,8
	lwi	r3,r3,0
	addik	r5,r0,1	# 0x1
	cmp	r18,r4,r3
	blti	r18,$L432
	addk	r5,r0,r0
$L432:
	andi	r3,r5,0x00ff
	bri	$L435
$L431:
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L435
$L430:
	addk	r3,r0,r0
$L435:
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L437
$L438:
	lwi	r4,r1,16
	addik	r3,r4,4
	swi	r3,r1,16
	lwi	r3,r1,12
	addik	r5,r3,4
	swi	r5,r1,12
	lwi	r4,r4,0
	swi	r4,r3,0
$L437:
	lwi	r3,r1,20
	addik	r4,r3,-1
	swi	r4,r1,20
	bnei	r3,$L438
	lwi	r3,r1,4
	addik	r1,r1,8
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,12
	swi	r3,r1,4
	lwi	r4,r1,12
	lwi	r3,r1,16
	xor	r3,r4,r3
	bnei	r3,$L442
	lwi	r3,r1,12
	bri	$L443
$L442:
	lwi	r4,r1,12
	lwi	r3,r1,16
	rsubk	r4,r3,r4
	lwi	r3,r1,20
	addk	r3,r3,r3
	addk	r3,r3,r3
	cmpu	r18,r3,r4
	bgei	r18,$L448
	bri	$L445
$L446:
	lwi	r3,r1,20
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r1,16
	addk	r4,r3,r4
	lwi	r3,r1,20
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,12
	addk	r3,r3,r5
	lwi	r4,r4,0
	swi	r4,r3,0
$L445:
	lwi	r3,r1,20
	addik	r4,r3,-1
	swi	r4,r1,20
	bnei	r3,$L446
	bri	$L447
$L449:
	lwi	r4,r1,16
	addik	r3,r4,4
	swi	r3,r1,16
	lwi	r3,r1,12
	addik	r5,r3,4
	swi	r5,r1,12
	lwi	r4,r4,0
	swi	r4,r3,0
$L448:
	lwi	r3,r1,20
	addik	r4,r3,-1
	swi	r4,r1,20
	bnei	r3,$L449
$L447:
	lwi	r3,r1,4
$L443:
	addik	r1,r1,8
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r7,r1,20
	lwi	r3,r1,12
	swi	r3,r1,4
	bri	$L452
$L453:
	lwi	r3,r1,12
	addik	r4,r3,4
	swi	r4,r1,12
	lwi	r4,r1,16
	swi	r4,r3,0
$L452:
	lwi	r3,r1,20
	addik	r4,r3,-1
	swi	r4,r1,20
	bnei	r3,$L453
	lwi	r3,r1,4
	addik	r1,r1,8
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	lwi	r3,r1,16
	swi	r3,r1,4
	lwi	r3,r1,20
	swi	r3,r1,8
	lwi	r4,r1,4
	lwi	r3,r1,8
	cmpu	r18,r3,r4
	bgei	r18,$L457
	lwi	r4,r1,4
	lwi	r3,r1,24
	addk	r3,r4,r3
	swi	r3,r1,4
	lwi	r4,r1,8
	lwi	r3,r1,24
	addk	r3,r4,r3
	swi	r3,r1,8
	bri	$L458
$L459:
	lwi	r3,r1,4
	addik	r3,r3,-1
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r3,r3,-1
	swi	r3,r1,8
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,8
	sbi	r4,r3,0
	lwi	r3,r1,24
	addik	r3,r3,-1
	swi	r3,r1,24
$L458:
	lwi	r3,r1,24
	bnei	r3,$L459
	bri	$L463
$L457:
	lwi	r4,r1,4
	lwi	r3,r1,8
	xor	r3,r4,r3
	beqi	r3,$L463
	bri	$L461
$L462:
	lwi	r4,r1,4
	addik	r3,r4,1
	swi	r3,r1,4
	lwi	r3,r1,8
	addik	r5,r3,1
	swi	r5,r1,8
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,24
	addik	r3,r3,-1
	swi	r3,r1,24
$L461:
	lwi	r3,r1,24
	bnei	r3,$L462
$L463:
	nop
	addik	r1,r1,12
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
	.frame	r1,12,r15		# vars= 0, regs= 2, args= 0
	.mask	0x00c00000
	addik	r1,r1,-12
	swi	r22,r1,4
	swi	r23,r1,8
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	lwi	r4,r1,16
	lwi	r5,r1,20
	lwi	r3,r1,24
	andi	r3,r3,32 #and1
	beqi	r3,$L466
	lwi	r3,r1,24
	andi	r18,r3,31
	addk	r10,r0,r5
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	addk	r11,r0,r0
	bri	$L467
$L466:
	srl	r7,r5
	lwi	r3,r1,24
	xori	r6,r3,-1
	andi	r18,r6,31
	addk	r3,r0,r7
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	lwi	r6,r1,24
	andi	r18,r6,31
	addk	r10,r0,r4
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	or	r10,r3,r10
	lwi	r3,r1,24
	andi	r18,r3,31
	addk	r11,r0,r5
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r11,r11,r11
$L467:
	lwi	r3,r1,24
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r3,r3,32 #and1
	beqi	r3,$L468
	lwi	r3,r1,24
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
	bri	$L469
$L468:
	addk	r7,r4,r4
	lwi	r3,r1,24
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
	lwi	r3,r1,24
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
	lwi	r3,r1,24
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r18,r3,31
	addk	r8,r0,r4
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
$L469:
	or	r22,r8,r10
	or	r23,r9,r11
	addk	r8,r22,r0
	addk	r9,r23,r0
	addk	r4,r8,r0
	addk	r5,r9,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r22,r1,4
	lwi	r23,r1,8
	addik	r1,r1,12
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
	.frame	r1,12,r15		# vars= 0, regs= 2, args= 0
	.mask	0x00c00000
	addik	r1,r1,-12
	swi	r22,r1,4
	swi	r23,r1,8
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	lwi	r4,r1,16
	lwi	r5,r1,20
	lwi	r3,r1,24
	andi	r3,r3,32 #and1
	beqi	r3,$L473
	lwi	r3,r1,24
	andi	r18,r3,31
	addk	r11,r0,r4
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r11,r11
	addk	r10,r0,r0
	bri	$L474
$L473:
	addk	r7,r4,r4
	lwi	r3,r1,24
	xori	r6,r3,-1
	andi	r18,r6,31
	addk	r3,r0,r7
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	lwi	r6,r1,24
	andi	r18,r6,31
	addk	r11,r0,r5
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r11,r11
	or	r11,r3,r11
	lwi	r3,r1,24
	andi	r18,r3,31
	addk	r10,r0,r4
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
$L474:
	lwi	r3,r1,24
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r3,r3,32 #and1
	beqi	r3,$L475
	lwi	r3,r1,24
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
	bri	$L476
$L475:
	srl	r7,r5
	lwi	r3,r1,24
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
	lwi	r3,r1,24
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
	lwi	r3,r1,24
	rsubk	r3,r3,r0
	andi	r3,r3,63 #and1
	andi	r18,r3,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
$L476:
	or	r22,r8,r10
	or	r23,r9,r11
	addk	r8,r22,r0
	addk	r9,r23,r0
	addk	r4,r8,r0
	addk	r5,r9,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r22,r1,4
	lwi	r23,r1,8
	addik	r1,r1,12
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r5,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	lwi	r3,r1,8
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r5,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	lwi	r3,r1,8
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r5,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	lwi	r3,r1,8
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r5,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	lwi	r3,r1,8
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	swi	r6,r1,8
	shi	r3,r1,4
	lhui	r4,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	andi	r4,r5,0xffff
	lhui	r5,r1,4
	lwi	r3,r1,8
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	swi	r6,r1,8
	shi	r3,r1,4
	lhui	r4,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	andi	r4,r5,0xffff
	lhui	r5,r1,4
	lwi	r3,r1,8
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	swi	r6,r1,8
	sbi	r3,r1,4
	lbui	r4,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	andi	r4,r5,0x00ff
	lbui	r5,r1,4
	lwi	r3,r1,8
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	swi	r6,r1,8
	sbi	r3,r1,4
	lbui	r4,r1,4
	lwi	r3,r1,8
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	andi	r4,r5,0x00ff
	lbui	r5,r1,4
	lwi	r3,r1,8
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	addk	r3,r5,r0
	shi	r3,r1,12
	addik	r3,r0,255	# 0xff
	swi	r3,r1,4
	lhui	r4,r1,12
	lwi	r3,r1,4
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
	lwi	r3,r1,4
	andi	r5,r3,0xffff
	lhui	r3,r1,12
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
	addik	r1,r1,8
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	addik	r3,r0,255	# 0xff
	swi	r3,r1,4
	lwi	r3,r1,4
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
	lwi	r3,r1,12
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
	lwi	r3,r1,4
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
	lwi	r3,r1,12
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
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,12
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
	lwi	r5,r1,12
	lwi	r3,r1,4
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
	addik	r1,r1,8
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
	.frame	r1,236,r15		# vars= 192, regs= 10, args= 0
	.mask	0xffc00000
	addik	r1,r1,-236
	swi	r22,r1,196
	swi	r23,r1,200
	swi	r24,r1,204
	swi	r25,r1,208
	swi	r26,r1,212
	swi	r27,r1,216
	swi	r28,r1,220
	swi	r29,r1,224
	swi	r30,r1,228
	swi	r31,r1,232
	swi	r5,r1,240
	swi	r6,r1,244
	addik	r4,r0,0x00000000
	addik	r5,r0,0x000000ff #li => la
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r3,r1,8
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
	lwi	r3,r1,240
	and	r22,r3,r8
	lwi	r3,r1,244
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
	swi	r3,r1,64
	addk	r8,r0,r0
	swi	r8,r1,60
	lwi	r3,r1,8
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
	lwi	r3,r1,240
	and	r3,r3,r10
	swi	r3,r1,68
	lwi	r3,r1,244
	and	r3,r3,r11
	swi	r3,r1,72
	lwi	r3,r1,68
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
	addik	r3,r1,60
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	or	r3,r3,r24
	swi	r3,r1,76
	addk	r3,r5,r0
	or	r3,r3,r25
	swi	r3,r1,80
	lwi	r3,r1,8
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
	lwi	r3,r1,240
	and	r28,r3,r30
	lwi	r3,r1,244
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
	addik	r3,r1,76
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	or	r3,r3,r26
	swi	r3,r1,84
	addk	r3,r5,r0
	or	r3,r3,r27
	swi	r3,r1,88
	lwi	r3,r1,8
	swi	r3,r1,92
	swi	r8,r1,96
	lwi	r3,r1,240
	addik	r4,r1,92
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r6,r4,r0
	and	r3,r3,r6
	swi	r3,r1,100
	lwi	r3,r1,244
	addk	r4,r5,r0
	and	r3,r3,r4
	swi	r3,r1,104
	addik	r3,r1,100
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
	swi	r6,r1,16
	lwi	r6,r1,16
	or	r3,r3,r6
	swi	r3,r1,16
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	swi	r3,r1,12
	addik	r3,r1,84
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r1,12
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r9,r4,r0
	or	r3,r3,r9
	swi	r3,r1,108
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r1,112
	lwi	r3,r1,8
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r1,4
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
	swi	r5,r1,20
	lwi	r3,r1,20
	or	r3,r4,r3
	swi	r3,r1,20
	lwi	r3,r1,8
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
	swi	r4,r1,24
	lwi	r3,r1,240
	addik	r4,r1,20
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r6,r4,r0
	and	r3,r3,r6
	swi	r3,r1,116
	lwi	r3,r1,244
	addk	r4,r5,r0
	and	r3,r3,r4
	swi	r3,r1,120
	addik	r3,r1,116
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
	swi	r6,r1,28
	lwi	r6,r1,28
	or	r3,r3,r6
	swi	r3,r1,28
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
	swi	r3,r1,32
	addik	r3,r1,108
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r1,28
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r9,r4,r0
	or	r3,r3,r9
	swi	r3,r1,124
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r1,128
	lwi	r3,r1,8
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
	lwi	r3,r1,4
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
	swi	r5,r1,36
	lwi	r3,r1,36
	or	r3,r4,r3
	swi	r3,r1,36
	lwi	r3,r1,8
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
	swi	r4,r1,40
	lwi	r3,r1,240
	addik	r4,r1,36
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r6,r4,r0
	and	r3,r3,r6
	swi	r3,r1,132
	lwi	r3,r1,244
	addk	r4,r5,r0
	and	r3,r3,r4
	swi	r3,r1,136
	addik	r3,r1,132
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
	swi	r6,r1,44
	lwi	r6,r1,44
	or	r3,r3,r6
	swi	r3,r1,44
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
	swi	r3,r1,48
	addik	r3,r1,124
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r1,44
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r9,r4,r0
	or	r3,r3,r9
	swi	r3,r1,140
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r1,144
	lwi	r4,r1,8
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
	lwi	r4,r1,4
	addk	r5,r0,r4
	addk	r5,r4,r4
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	swi	r5,r1,52
	lwi	r4,r1,52
	or	r3,r3,r4
	swi	r3,r1,52
	lwi	r3,r1,8
	addk	r4,r0,r3
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	swi	r4,r1,56
	lwi	r3,r1,240
	addik	r4,r1,52
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r6,r4,r0
	and	r3,r3,r6
	swi	r3,r1,148
	lwi	r3,r1,244
	addk	r4,r5,r0
	and	r3,r3,r4
	swi	r3,r1,152
	lwi	r4,r1,152
	addk	r3,r0,r4
	addk	r3,r4,r4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	swi	r3,r1,156
	swi	r8,r1,160
	addik	r3,r1,140
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r1,156
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r9,r4,r0
	or	r3,r3,r9
	swi	r3,r1,164
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r1,168
	lwi	r4,r1,240
	lwi	r3,r1,4
	and	r3,r4,r3
	swi	r3,r1,172
	lwi	r4,r1,244
	lwi	r3,r1,8
	and	r3,r4,r3
	swi	r3,r1,176
	lwi	r4,r1,176
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
	swi	r3,r1,180
	swi	r8,r1,184
	addik	r3,r1,164
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r1,180
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r8,r4,r0
	or	r3,r3,r8
	swi	r3,r1,188
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r1,192
	addik	r3,r1,188
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r22,r1,196
	lwi	r23,r1,200
	lwi	r24,r1,204
	lwi	r25,r1,208
	lwi	r26,r1,212
	lwi	r27,r1,216
	lwi	r28,r1,220
	lwi	r29,r1,224
	lwi	r30,r1,228
	lwi	r31,r1,232
	addik	r1,r1,236
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r0,r1,4
	bri	$L505
$L508:
	lwi	r5,r1,12
	lwi	r4,r1,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r3,r3,1 #and1
	beqi	r3,$L506
	lwi	r3,r1,4
	addik	r3,r3,1
	bri	$L507
$L506:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L505:
	lwi	r4,r1,4
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L508
	addk	r3,r0,r0
$L507:
	addik	r1,r1,8
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
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	bnei	r5,$L511
	addk	r3,r0,r0
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L511:
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r3,r5,r0
	addik	r19,r0,1	# 0x1
	bri	$L513
$L514:
	sra	r3,r3
	addik	r19,r19,1
$L513:
	andi	r4,r3,1 #and1
	beqi	r4,$L514
	addk	r3,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	lwi	r6,r0,$LC0
	lwi	r5,r1,32
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	blti	r3,$L519
	lwi	r6,r0,$LC1
	lwi	r5,r1,32
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L524
$L519:
	addik	r3,r0,1	# 0x1
	bri	$L523
$L524:
	addk	r3,r0,r0
$L523:
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r7,r0,$LC2
	lwi	r8,r0,$LC2+4
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L527
	lwi	r7,r0,$LC3
	lwi	r8,r0,$LC3+4
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L532
$L527:
	addik	r3,r0,1	# 0x1
	bri	$L531
$L532:
	addk	r3,r0,r0
$L531:
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r7,r0,$LC4
	lwi	r8,r0,$LC4+4
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L535
	lwi	r7,r0,$LC5
	lwi	r8,r0,$LC5+4
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L540
$L535:
	addik	r3,r0,1	# 0x1
	bri	$L539
$L540:
	addk	r3,r0,r0
$L539:
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r5,r1,36
	brlid	r15,__floatsidf
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	lwi	r3,r1,32
	swi	r4,r3,0
	swi	r5,r3,4
	nop
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,32,r15		# vars= 4, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r5,r1,36
	swi	r6,r1,40
	lwi	r6,r1,36
	lwi	r5,r1,36
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L545
	lwi	r3,r1,36
	addk	r6,r3,r0
	addk	r5,r3,r0
	brlid	r15,__addsf3
	nop		# Unfilled delay slot

	addk	r6,r3,r0
	lwi	r5,r1,36
	brlid	r15,__nesf2
	nop		# Unfilled delay slot

	beqi	r3,$L545
	lwi	r3,r1,40
	bgei	r3,$L547
	addik	r3,r0,0x3f000000
	bri	$L548
$L547:
	addik	r3,r0,0x40000000
$L548:
	swi	r3,r1,28
$L551:
	lwi	r3,r1,40
	andi	r3,r3,1 #and1
	beqi	r3,$L549
	lwi	r6,r1,28
	lwi	r5,r1,36
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r1,36
$L549:
	lwi	r3,r1,40
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
	swi	r3,r1,40
	lwi	r3,r1,40
	beqi	r3,$L554
	lwi	r6,r1,28
	lwi	r5,r1,28
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r1,28
	bri	$L551
$L554:
	nop
$L545:
	lwi	r3,r1,36
	lwi	r15,r1,0
	addik	r1,r1,32
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
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r7,r1,48
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L557
	lwi	r4,r1,40
	lwi	r5,r1,44
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
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	beqi	r3,$L557
	lwi	r3,r1,48
	bgei	r3,$L559
	addik	r4,r0,0x3fe00000 
	addik	r5,r0,0x00000000 #Xfer Lo
	bri	$L560
$L559:
	addik	r4,r0,0x40000000 
	addik	r5,r0,0x00000000 #Xfer Lo
$L560:
	swi	r4,r1,28
	swi	r5,r1,32
$L563:
	lwi	r3,r1,48
	andi	r3,r3,1 #and1
	beqi	r3,$L561
	lwi	r7,r1,28
	lwi	r8,r1,32
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,40
	swi	r5,r1,44
$L561:
	lwi	r3,r1,48
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
	swi	r3,r1,48
	lwi	r3,r1,48
	beqi	r3,$L566
	lwi	r7,r1,28
	lwi	r8,r1,32
	lwi	r5,r1,28
	lwi	r6,r1,32
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,28
	swi	r5,r1,32
	bri	$L563
$L566:
	nop
$L557:
	lwi	r4,r1,40
	lwi	r5,r1,44
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,36
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
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r7,r1,48
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__unorddf2
	nop		# Unfilled delay slot

	bnei	r3,$L569
	lwi	r4,r1,40
	lwi	r5,r1,44
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
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	beqi	r3,$L569
	lwi	r3,r1,48
	bgei	r3,$L571
	addik	r4,r0,0x3fe00000 
	addik	r5,r0,0x00000000 #Xfer Lo
	bri	$L572
$L571:
	addik	r4,r0,0x40000000 
	addik	r5,r0,0x00000000 #Xfer Lo
$L572:
	swi	r4,r1,28
	swi	r5,r1,32
$L575:
	lwi	r3,r1,48
	andi	r3,r3,1 #and1
	beqi	r3,$L573
	lwi	r7,r1,28
	lwi	r8,r1,32
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,40
	swi	r5,r1,44
$L573:
	lwi	r3,r1,48
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
	swi	r3,r1,48
	lwi	r3,r1,48
	beqi	r3,$L578
	lwi	r7,r1,28
	lwi	r8,r1,32
	lwi	r5,r1,28
	lwi	r6,r1,32
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,28
	swi	r5,r1,32
	bri	$L575
$L578:
	nop
$L569:
	lwi	r4,r1,40
	lwi	r5,r1,44
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,36
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	lwi	r3,r1,20
	swi	r3,r1,4
	lwi	r3,r1,16
	swi	r3,r1,8
	bri	$L581
$L582:
	lwi	r3,r1,4
	addik	r4,r3,1
	swi	r4,r1,4
	lbui	r3,r3,0
	sext8	r5,r3
	lwi	r3,r1,8
	addik	r4,r3,1
	swi	r4,r1,8
	lbui	r4,r3,0
	sext8	r4,r4
	xor	r4,r5,r4
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,24
	addik	r3,r3,-1
	swi	r3,r1,24
$L581:
	lwi	r3,r1,24
	bnei	r3,$L582
	lwi	r3,r1,16
	addik	r1,r1,12
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
	.frame	r1,32,r15		# vars= 4, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r5,r1,36
	swi	r6,r1,40
	swi	r7,r1,44
	lwi	r5,r1,36
	brlid	r15,strlen
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	addk	r3,r3,r4
	swi	r3,r1,28
	bri	$L586
$L588:
	lwi	r3,r1,40
	addik	r3,r3,1
	swi	r3,r1,40
	lwi	r3,r1,28
	addik	r3,r3,1
	swi	r3,r1,28
	lwi	r3,r1,44
	addik	r3,r3,-1
	swi	r3,r1,44
$L586:
	lwi	r3,r1,44
	beqi	r3,$L587
	lwi	r3,r1,40
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,28
	sbi	r4,r3,0
	lwi	r3,r1,28
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L588
$L587:
	lwi	r3,r1,44
	bnei	r3,$L589
	lwi	r3,r1,28
	sbi	r0,r3,0
$L589:
	lwi	r3,r1,36
	lwi	r15,r1,0
	addik	r1,r1,32
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r0,r1,4
	bri	$L593
$L598:
	nop
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L593:
	lwi	r4,r1,4
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L594
	lwi	r4,r1,12
	lwi	r3,r1,4
	addk	r3,r4,r3
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L598
$L594:
	lwi	r3,r1,4
	addik	r1,r1,8
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	bri	$L601
$L605:
	lwi	r3,r1,16
	swi	r3,r1,4
	bri	$L602
$L604:
	lwi	r3,r1,4
	addik	r4,r3,1
	swi	r4,r1,4
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,12
	lbui	r3,r3,0
	sext8	r3,r3
	xor	r3,r4,r3
	bnei	r3,$L602
	lwi	r3,r1,12
	bri	$L603
$L602:
	lwi	r3,r1,4
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L604
	lwi	r3,r1,12
	addik	r3,r3,1
	swi	r3,r1,12
$L601:
	lwi	r3,r1,12
	lbui	r3,r3,0
	sext8	r3,r3
	bnei	r3,$L605
	addk	r3,r0,r0
$L603:
	addik	r1,r1,8
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	addk	r3,r5,r0
	swi	r6,r1,16
	swi	r0,r1,4
$L609:
	lbui	r4,r3,0
	sext8	r4,r4
	addk	r5,r4,r0
	lwi	r4,r1,16
	xor	r4,r4,r5
	bnei	r4,$L608
	swi	r3,r1,4
$L608:
	addk	r4,r3,r0
	addik	r3,r4,1
	lbui	r4,r4,0
	sext8	r4,r4
	bnei	r4,$L609
	lwi	r3,r1,4
	addik	r1,r1,8
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
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	lwi	r3,r1,40
	swi	r3,r1,28
	lwi	r5,r1,44
	brlid	r15,strlen
	nop		# Unfilled delay slot

	swi	r3,r1,32
	lwi	r3,r1,32
	bnei	r3,$L615
	lwi	r3,r1,40
	bri	$L614
$L617:
	lwi	r7,r1,32
	lwi	r6,r1,44
	lwi	r5,r1,28
	brlid	r15,strncmp
	nop		# Unfilled delay slot

	bnei	r3,$L616
	lwi	r3,r1,28
	bri	$L614
$L616:
	lwi	r3,r1,28
	addik	r3,r3,1
	swi	r3,r1,28
$L615:
	lwi	r3,r1,44
	lbui	r3,r3,0
	sext8	r3,r3
	addk	r6,r3,r0
	lwi	r5,r1,28
	brlid	r15,strchr
	nop		# Unfilled delay slot

	swi	r3,r1,28
	lwi	r3,r1,28
	bnei	r3,$L617
	addk	r3,r0,r0
$L614:
	lwi	r15,r1,0
	addik	r1,r1,36
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
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00c08000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r7,r1,48
	swi	r8,r1,52
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L620
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,48
	lwi	r6,r1,52
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	bgti	r3,$L622
$L620:
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,40
	lwi	r6,r1,44
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L623
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,48
	lwi	r6,r1,52
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L623
$L622:
	lwi	r3,r1,40
	xori	r22,r3,-2147483648
	lwi	r23,r1,44
	bri	$L626
$L623:
	lwi	r22,r1,40
	lwi	r23,r1,44
$L626:
	addk	r4,r22,r0
	addk	r5,r23,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	addik	r1,r1,36
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
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r7,r1,48
	swi	r8,r1,52
	lwi	r4,r1,44
	lwi	r3,r1,52
	rsubk	r3,r3,r4
	lwi	r4,r1,40
	addk	r3,r4,r3
	swi	r3,r1,32
	lwi	r3,r1,52
	bnei	r3,$L631
	lwi	r3,r1,40
	bri	$L632
$L631:
	addik	r5,r0,1	# 0x1
	lwi	r4,r1,44
	lwi	r3,r1,52
	cmpu	r18,r3,r4
	blti	r18,$L633
	addk	r5,r0,r0
$L633:
	andi	r3,r5,0x00ff
	beqi	r3,$L634
	addk	r3,r0,r0
	bri	$L632
$L634:
	lwi	r3,r1,40
	swi	r3,r1,28
	bri	$L635
$L637:
	lwi	r3,r1,28
	lbui	r3,r3,0
	sext8	r4,r3
	lwi	r3,r1,48
	lbui	r3,r3,0
	sext8	r3,r3
	xor	r3,r4,r3
	bnei	r3,$L636
	lwi	r3,r1,28
	addik	r4,r3,1
	lwi	r3,r1,48
	addik	r5,r3,1
	lwi	r3,r1,52
	addik	r3,r3,-1
	addk	r7,r3,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,memcmp
	nop		# Unfilled delay slot

	bnei	r3,$L636
	lwi	r3,r1,28
	bri	$L632
$L636:
	lwi	r3,r1,28
	addik	r3,r3,1
	swi	r3,r1,28
$L635:
	lwi	r4,r1,28
	lwi	r3,r1,32
	cmpu	r18,r4,r3
	bgei	r18,$L637
	addk	r3,r0,r0
$L632:
	lwi	r15,r1,0
	addik	r1,r1,36
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	lwi	r7,r1,40
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,memcpy
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,40
	addk	r3,r4,r3
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,52,r15		# vars= 8, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r22,r1,36
	swi	r23,r1,40
	swi	r24,r1,44
	swi	r25,r1,48
	swi	r5,r1,56
	swi	r6,r1,60
	swi	r7,r1,64
	swi	r0,r1,32
	swi	r0,r1,28
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L643
	lwi	r3,r1,56
	xori	r24,r3,-2147483648
	lwi	r25,r1,60
	swi	r24,r1,56
	swi	r25,r1,60
	addik	r3,r0,1	# 0x1
	swi	r3,r1,28
$L643:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__gedf2
	nop		# Unfilled delay slot

	blti	r3,$L660
	bri	$L647
$L648:
	lwi	r3,r1,32
	addik	r3,r3,1
	swi	r3,r1,32
	addik	r7,r0,0x40000000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__divdf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,56
	swi	r5,r1,60
$L647:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__gedf2
	nop		# Unfilled delay slot

	bgei	r3,$L648
	bri	$L649
$L660:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L649
	addk	r7,r0,r0
	addk	r8,r0,r0
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__nedf2
	nop		# Unfilled delay slot

	beqi	r3,$L649
	bri	$L652
$L653:
	lwi	r3,r1,32
	addik	r3,r3,-1
	swi	r3,r1,32
	lwi	r4,r1,56
	lwi	r5,r1,60
	addk	r7,r4,r0
	addk	r8,r5,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__adddf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,56
	swi	r5,r1,60
$L652:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	lwi	r5,r1,56
	lwi	r6,r1,60
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	blti	r3,$L653
$L649:
	lwi	r3,r1,64
	lwi	r4,r1,32
	swi	r4,r3,0
	lwi	r3,r1,28
	beqi	r3,$L654
	lwi	r3,r1,56
	xori	r22,r3,-2147483648
	lwi	r23,r1,60
	swi	r22,r1,56
	swi	r23,r1,60
$L654:
	lwi	r4,r1,56
	lwi	r5,r1,60
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,36
	lwi	r23,r1,40
	lwi	r24,r1,44
	lwi	r25,r1,48
	addik	r1,r1,52
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
	.frame	r1,36,r15		# vars= 16, regs= 4, args= 0
	.mask	0x03c00000
	addik	r1,r1,-36
	swi	r22,r1,20
	swi	r23,r1,24
	swi	r24,r1,28
	swi	r25,r1,32
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r7,r1,48
	swi	r8,r1,52
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r4,r1,40
	lwi	r5,r1,44
	swi	r4,r1,12
	swi	r5,r1,16
	bri	$L663
$L666:
	lwi	r3,r1,12
	andi	r24,r3,0 #and1
	lwi	r3,r1,16
	andi	r25,r3,1 #and1
	addk	r3,r24,r0
	or	r3,r3,r25
	beqi	r3,$L664
	lwi	r6,r1,4
	lwi	r7,r1,8
	lwi	r4,r1,48
	lwi	r5,r1,52
	add	r5,r7,r5
	addc	r4,r6,r4
	swi	r4,r1,4
	swi	r5,r1,8
$L664:
	lwi	r4,r1,52
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
	lwi	r4,r1,48
	addk	r10,r4,r4
	or	r10,r3,r10
	lwi	r3,r1,52
	addk	r11,r3,r3
	swi	r10,r1,48
	swi	r11,r1,52
	lwi	r4,r1,12
	src	r3,r4
	src	r3,r3
	andi	r3,r3,-2147483648
	lwi	r4,r1,16
	srl	r23,r4
	or	r23,r3,r23
	lwi	r3,r1,12
	srl	r22,r3
	swi	r22,r1,12
	swi	r23,r1,16
$L663:
	lwi	r3,r1,12
	lwi	r4,r1,16
	or	r3,r3,r4
	bnei	r3,$L666
	lwi	r4,r1,4
	lwi	r5,r1,8
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r22,r1,20
	lwi	r23,r1,24
	lwi	r24,r1,28
	lwi	r25,r1,32
	addik	r1,r1,36
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	addik	r3,r0,1	# 0x1
	swi	r3,r1,4
	swi	r0,r1,8
	bri	$L670
$L672:
	lwi	r3,r1,20
	addk	r3,r3,r3
	swi	r3,r1,20
	lwi	r3,r1,4
	addk	r3,r3,r3
	swi	r3,r1,4
$L670:
	lwi	r4,r1,20
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L673
	lwi	r3,r1,4
	beqi	r3,$L673
	lwi	r3,r1,20
	bgei	r3,$L672
	bri	$L673
$L675:
	lwi	r4,r1,16
	lwi	r3,r1,20
	cmpu	r18,r3,r4
	blti	r18,$L674
	lwi	r4,r1,16
	lwi	r3,r1,20
	rsubk	r3,r3,r4
	swi	r3,r1,16
	lwi	r4,r1,8
	lwi	r3,r1,4
	or	r3,r4,r3
	swi	r3,r1,8
$L674:
	lwi	r3,r1,4
	srl	r3,r3
	swi	r3,r1,4
	lwi	r3,r1,20
	srl	r3,r3
	swi	r3,r1,20
$L673:
	lwi	r3,r1,4
	bnei	r3,$L675
	lwi	r3,r1,24
	beqi	r3,$L676
	lwi	r3,r1,16
	bri	$L677
$L676:
	lwi	r3,r1,8
$L677:
	addik	r1,r1,12
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
	.frame	r1,32,r15		# vars= 4, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-32
	swi	r15,r1,0
	addk	r3,r5,r0
	sbi	r5,r1,36
	lbui	r3,r1,36
	sext8	r3,r3
	bgei	r3,$L680
	lbui	r3,r1,36
	xori	r3,r3,-1
	sbi	r3,r1,36
$L680:
	lbui	r3,r1,36
	sext8	r3,r3
	bnei	r3,$L681
	addik	r3,r0,7	# 0x7
	bri	$L682
$L681:
	lbui	r3,r1,36
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

	swi	r3,r1,28
	lwi	r3,r1,28
	addik	r3,r3,-1
$L682:
	lwi	r15,r1,0
	addik	r1,r1,32
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
	.frame	r1,32,r15		# vars= 4, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r5,r1,36
	swi	r6,r1,40
	lwi	r3,r1,36
	bgei	r3,$L685
	lwi	r3,r1,36
	xori	r8,r3,-1
	lwi	r3,r1,40
	xori	r9,r3,-1
	swi	r8,r1,36
	swi	r9,r1,40
$L685:
	lwi	r3,r1,36
	lwi	r4,r1,40
	or	r3,r3,r4
	bnei	r3,$L687
	addik	r3,r0,63	# 0x3f
	bri	$L688
$L687:
	lwi	r4,r1,36
	lwi	r5,r1,40
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__clzdi2
	nop		# Unfilled delay slot

	swi	r3,r1,28
	lwi	r3,r1,28
	addik	r3,r3,-1
$L688:
	lwi	r15,r1,0
	addik	r1,r1,32
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r0,r1,4
	bri	$L691
$L693:
	lwi	r3,r1,12
	andi	r3,r3,1 #and1
	beqi	r3,$L692
	lwi	r4,r1,4
	lwi	r3,r1,16
	addk	r3,r4,r3
	swi	r3,r1,4
$L692:
	lwi	r3,r1,12
	srl	r3,r3
	swi	r3,r1,12
	lwi	r3,r1,16
	addk	r3,r3,r3
	swi	r3,r1,16
$L691:
	lwi	r3,r1,12
	bnei	r3,$L693
	lwi	r3,r1,4
	addik	r1,r1,8
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
	.frame	r1,24,r15		# vars= 20, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-24
	swi	r5,r1,28
	swi	r6,r1,32
	swi	r7,r1,36
	lwi	r4,r1,36
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	swi	r3,r1,12
	lwi	r3,r1,36
	andi	r3,r3,-8 #and1
	swi	r3,r1,8
	lwi	r3,r1,28
	swi	r3,r1,16
	lwi	r3,r1,32
	swi	r3,r1,20
	lwi	r4,r1,16
	lwi	r3,r1,20
	cmpu	r18,r3,r4
	blti	r18,$L697
	lwi	r4,r1,20
	lwi	r3,r1,36
	addk	r3,r4,r3
	lwi	r4,r1,16
	cmpu	r18,r4,r3
	bgei	r18,$L704
$L697:
	swi	r0,r1,4
	bri	$L699
$L700:
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r1,32
	addk	r4,r3,r4
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,28
	addk	r3,r3,r5
	lwi	r5,r4,4
	lwi	r4,r4,0
	swi	r4,r3,0
	swi	r5,r3,4
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L699:
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmpu	r18,r3,r4
	blti	r18,$L700
	bri	$L701
$L702:
	lwi	r4,r1,20
	lwi	r3,r1,8
	addk	r4,r4,r3
	lwi	r5,r1,16
	lwi	r3,r1,8
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L701:
	lwi	r4,r1,36
	lwi	r3,r1,8
	cmpu	r18,r4,r3
	blti	r18,$L702
	bri	$L703
$L705:
	lwi	r4,r1,20
	lwi	r3,r1,36
	addk	r4,r4,r3
	lwi	r5,r1,16
	lwi	r3,r1,36
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
$L704:
	lwi	r3,r1,36
	addik	r4,r3,-1
	swi	r4,r1,36
	bnei	r3,$L705
	nop
$L703:
	nop
	addik	r1,r1,24
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
	.frame	r1,20,r15		# vars= 16, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-20
	swi	r5,r1,24
	swi	r6,r1,28
	swi	r7,r1,32
	lwi	r3,r1,32
	srl	r3,r3
	swi	r3,r1,8
	lwi	r3,r1,24
	swi	r3,r1,12
	lwi	r3,r1,28
	swi	r3,r1,16
	lwi	r4,r1,12
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	blti	r18,$L708
	lwi	r4,r1,16
	lwi	r3,r1,32
	addk	r3,r4,r3
	lwi	r4,r1,12
	cmpu	r18,r4,r3
	bgei	r18,$L714
$L708:
	swi	r0,r1,4
	bri	$L710
$L711:
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r1,28
	addk	r4,r3,r4
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,24
	addk	r3,r3,r5
	lhui	r4,r4,0
	sext16	r4,r4
	shi	r4,r3,0
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L710:
	lwi	r4,r1,4
	lwi	r3,r1,8
	cmpu	r18,r3,r4
	blti	r18,$L711
	lwi	r3,r1,32
	andi	r3,r3,1 #and1
	beqi	r3,$L713
	lwi	r3,r1,32
	addik	r3,r3,-1
	lwi	r4,r1,16
	addk	r4,r4,r3
	lwi	r3,r1,32
	addik	r3,r3,-1
	lwi	r5,r1,12
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	bri	$L713
$L715:
	lwi	r4,r1,16
	lwi	r3,r1,32
	addk	r4,r4,r3
	lwi	r5,r1,12
	lwi	r3,r1,32
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
$L714:
	lwi	r3,r1,32
	addik	r4,r3,-1
	swi	r4,r1,32
	bnei	r3,$L715
	nop
$L713:
	nop
	addik	r1,r1,20
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
	.frame	r1,24,r15		# vars= 20, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-24
	swi	r5,r1,28
	swi	r6,r1,32
	swi	r7,r1,36
	lwi	r4,r1,36
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	swi	r3,r1,12
	lwi	r3,r1,36
	andi	r3,r3,-4 #and1
	swi	r3,r1,8
	lwi	r3,r1,28
	swi	r3,r1,16
	lwi	r3,r1,32
	swi	r3,r1,20
	lwi	r4,r1,16
	lwi	r3,r1,20
	cmpu	r18,r3,r4
	blti	r18,$L718
	lwi	r4,r1,20
	lwi	r3,r1,36
	addk	r3,r4,r3
	lwi	r4,r1,16
	cmpu	r18,r4,r3
	bgei	r18,$L725
$L718:
	swi	r0,r1,4
	bri	$L720
$L721:
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r3,r0
	lwi	r3,r1,32
	addk	r4,r3,r4
	lwi	r3,r1,4
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r5,r3,r0
	lwi	r3,r1,28
	addk	r3,r3,r5
	lwi	r4,r4,0
	swi	r4,r3,0
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L720:
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmpu	r18,r3,r4
	blti	r18,$L721
	bri	$L722
$L723:
	lwi	r4,r1,20
	lwi	r3,r1,8
	addk	r4,r4,r3
	lwi	r5,r1,16
	lwi	r3,r1,8
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L722:
	lwi	r4,r1,36
	lwi	r3,r1,8
	cmpu	r18,r4,r3
	blti	r18,$L723
	bri	$L724
$L726:
	lwi	r4,r1,20
	lwi	r3,r1,36
	addk	r4,r4,r3
	lwi	r5,r1,16
	lwi	r3,r1,36
	addk	r3,r5,r3
	lbui	r4,r4,0
	sext8	r4,r4
	sbi	r4,r3,0
$L725:
	lwi	r3,r1,36
	addik	r4,r3,-1
	swi	r4,r1,36
	bnei	r3,$L726
	nop
$L724:
	nop
	addik	r1,r1,24
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r3,r1,32
	lwi	r6,r1,36
	addk	r5,r3,r0
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	lwi	r5,r1,32
	brlid	r15,__floatunsidf
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	lwi	r5,r1,32
	brlid	r15,__floatunsisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__floatundidf
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__floatundisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r3,r1,32
	lwi	r6,r1,36
	addk	r5,r3,r0
	brlid	r15,__umodsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	addk	r3,r5,r0
	shi	r5,r1,12
	swi	r0,r1,4
	bri	$L747
$L750:
	lhui	r5,r1,12
	lwi	r3,r1,4
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
	bnei	r3,$L752
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L747:
	lwi	r4,r1,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L750
	bri	$L749
$L752:
	nop
$L749:
	lwi	r3,r1,4
	addik	r1,r1,8
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	addk	r3,r5,r0
	shi	r5,r1,12
	swi	r0,r1,4
	bri	$L755
$L758:
	lhui	r5,r1,12
	lwi	r4,r1,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	bnei	r3,$L760
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L755:
	lwi	r4,r1,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L758
	bri	$L757
$L760:
	nop
$L757:
	lwi	r3,r1,4
	addik	r1,r1,8
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	addik	r6,r0,0x47000000
	lwi	r5,r1,32
	brlid	r15,__gesf2
	nop		# Unfilled delay slot

	blti	r3,$L767
	addik	r6,r0,0x47000000
	lwi	r5,r1,32
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	addik	r3,r3,32768
	bri	$L765
$L767:
	lwi	r5,r1,32
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

$L765:
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	addk	r3,r5,r0
	shi	r5,r1,16
	swi	r0,r1,8
	swi	r0,r1,4
	bri	$L770
$L772:
	lhui	r5,r1,16
	lwi	r4,r1,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	beqi	r3,$L771
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L771:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L770:
	lwi	r4,r1,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L772
	lwi	r3,r1,8
	andi	r3,r3,1 #and1
	addik	r1,r1,12
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	addk	r3,r5,r0
	shi	r5,r1,16
	swi	r0,r1,8
	swi	r0,r1,4
	bri	$L776
$L778:
	lhui	r5,r1,16
	lwi	r4,r1,4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	andi	r3,r3,1 #and1
	beqi	r3,$L777
	lwi	r3,r1,8
	addik	r3,r3,1
	swi	r3,r1,8
$L777:
	lwi	r3,r1,4
	addik	r3,r3,1
	swi	r3,r1,4
$L776:
	lwi	r4,r1,4
	addik	r3,r0,15	# 0xf
	cmp	r18,r4,r3
	bgei	r18,$L778
	lwi	r3,r1,8
	addik	r1,r1,12
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r0,r1,4
	bri	$L782
$L784:
	lwi	r3,r1,12
	andi	r3,r3,1 #and1
	beqi	r3,$L783
	lwi	r4,r1,4
	lwi	r3,r1,16
	addk	r3,r4,r3
	swi	r3,r1,4
$L783:
	lwi	r3,r1,12
	srl	r3,r3
	swi	r3,r1,12
	lwi	r3,r1,16
	addk	r3,r3,r3
	swi	r3,r1,16
$L782:
	lwi	r3,r1,12
	bnei	r3,$L784
	lwi	r3,r1,4
	addik	r1,r1,8
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	swi	r6,r1,16
	swi	r0,r1,4
	lwi	r3,r1,12
	bnei	r3,$L790
	addk	r3,r0,r0
	bri	$L789
$L792:
	lwi	r3,r1,16
	andi	r3,r3,1 #and1
	beqi	r3,$L791
	lwi	r4,r1,4
	lwi	r3,r1,12
	addk	r3,r4,r3
	swi	r3,r1,4
$L791:
	lwi	r3,r1,12
	addk	r3,r3,r3
	swi	r3,r1,12
	lwi	r3,r1,16
	srl	r3,r3
	swi	r3,r1,16
$L790:
	lwi	r3,r1,16
	bnei	r3,$L792
	lwi	r3,r1,4
$L789:
	addik	r1,r1,8
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	addik	r3,r0,1	# 0x1
	swi	r3,r1,4
	swi	r0,r1,8
	bri	$L795
$L797:
	lwi	r3,r1,20
	addk	r3,r3,r3
	swi	r3,r1,20
	lwi	r3,r1,4
	addk	r3,r3,r3
	swi	r3,r1,4
$L795:
	lwi	r4,r1,20
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L798
	lwi	r3,r1,4
	beqi	r3,$L798
	lwi	r3,r1,20
	bgei	r3,$L797
	bri	$L798
$L800:
	lwi	r4,r1,16
	lwi	r3,r1,20
	cmpu	r18,r3,r4
	blti	r18,$L799
	lwi	r4,r1,16
	lwi	r3,r1,20
	rsubk	r3,r3,r4
	swi	r3,r1,16
	lwi	r4,r1,8
	lwi	r3,r1,4
	or	r3,r4,r3
	swi	r3,r1,8
$L799:
	lwi	r3,r1,4
	srl	r3,r3
	swi	r3,r1,4
	lwi	r3,r1,20
	srl	r3,r3
	swi	r3,r1,20
$L798:
	lwi	r3,r1,4
	bnei	r3,$L800
	lwi	r3,r1,24
	beqi	r3,$L801
	lwi	r3,r1,16
	bri	$L802
$L801:
	lwi	r3,r1,8
$L802:
	addik	r1,r1,12
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L812
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L807
$L812:
	lwi	r6,r1,36
	lwi	r5,r1,32
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L813
	addik	r3,r0,1	# 0x1
	bri	$L807
$L813:
	addk	r3,r0,r0
$L807:
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__ltdf2
	nop		# Unfilled delay slot

	bgei	r3,$L823
	addik	r3,r0,-1	# 0xffffffffffffffff
	bri	$L818
$L823:
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__gtdf2
	nop		# Unfilled delay slot

	blei	r3,$L824
	addik	r3,r0,1	# 0x1
	bri	$L818
$L824:
	addk	r3,r0,r0
$L818:
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r5,r1,32
	add	r4,r5,r5
	addc	r4,r0,r0
	beqi	r4,.+8
	addi	r4,r0,0xffffffff
	lwi	r7,r1,36
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
	addik	r1,r1,28
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	lwi	r3,r1,32
	addk	r11,r3,r0
	addk	r10,r0,r0
	lwi	r3,r1,36
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
	addik	r1,r1,28
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
	.frame	r1,16,r15		# vars= 12, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-16
	swi	r5,r1,20
	swi	r6,r1,24
	swi	r0,r1,8
	swi	r0,r1,12
	lwi	r3,r1,24
	bgei	r3,$L833
	lwi	r3,r1,24
	rsubk	r3,r3,r0
	swi	r3,r1,24
	addik	r3,r0,1	# 0x1
	swi	r3,r1,8
$L833:
	sbi	r0,r1,4
	bri	$L834
$L837:
	lwi	r3,r1,24
	andi	r3,r3,1 #and1
	beqi	r3,$L835
	lwi	r4,r1,12
	lwi	r3,r1,20
	addk	r3,r4,r3
	swi	r3,r1,12
$L835:
	lwi	r3,r1,20
	addk	r3,r3,r3
	swi	r3,r1,20
	lwi	r3,r1,24
	sra	r3,r3
	swi	r3,r1,24
	lbui	r3,r1,4
	sext8	r3,r3
	andi	r3,r3,0x00ff
	addik	r3,r3,1
	andi	r3,r3,0x00ff
	sbi	r3,r1,4
$L834:
	lwi	r3,r1,24
	beqi	r3,$L836
	lbui	r4,r1,4
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r4,r3
	bgei	r18,$L837
$L836:
	lwi	r3,r1,8
	beqi	r3,$L838
	lwi	r3,r1,12
	rsubk	r3,r3,r0
	bri	$L840
$L838:
	lwi	r3,r1,12
$L840:
	addik	r1,r1,16
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
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r0,r1,28
	lwi	r3,r1,40
	bgei	r3,$L843
	lwi	r3,r1,40
	rsubk	r3,r3,r0
	swi	r3,r1,40
	lwi	r3,r1,28
	rsubk	r4,r3,r0
	lwi	r3,r1,28
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
	swi	r3,r1,28
$L843:
	lwi	r3,r1,44
	bgei	r3,$L844
	lwi	r3,r1,44
	rsubk	r3,r3,r0
	swi	r3,r1,44
	lwi	r3,r1,28
	rsubk	r4,r3,r0
	lwi	r3,r1,28
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
	swi	r3,r1,28
$L844:
	lwi	r3,r1,40
	lwi	r4,r1,44
	addk	r7,r0,r0
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__udivmodsi4
	nop		# Unfilled delay slot

	swi	r3,r1,32
	lwi	r3,r1,28
	beqi	r3,$L845
	lwi	r3,r1,32
	rsubk	r3,r3,r0
	swi	r3,r1,32
$L845:
	lwi	r3,r1,32
	lwi	r15,r1,0
	addik	r1,r1,36
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
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	swi	r0,r1,28
	lwi	r3,r1,40
	bgei	r3,$L849
	lwi	r3,r1,40
	rsubk	r3,r3,r0
	swi	r3,r1,40
	addik	r3,r0,1	# 0x1
	swi	r3,r1,28
$L849:
	lwi	r3,r1,44
	bgei	r3,$L850
	lwi	r3,r1,44
	rsubk	r3,r3,r0
	swi	r3,r1,44
$L850:
	lwi	r3,r1,40
	lwi	r4,r1,44
	addik	r7,r0,1	# 0x1
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__udivmodsi4
	nop		# Unfilled delay slot

	swi	r3,r1,32
	lwi	r3,r1,28
	beqi	r3,$L851
	lwi	r3,r1,32
	rsubk	r3,r3,r0
	swi	r3,r1,32
$L851:
	lwi	r3,r1,32
	lwi	r15,r1,0
	addik	r1,r1,36
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	addk	r3,r5,r0
	addk	r4,r6,r0
	swi	r7,r1,20
	shi	r5,r1,12
	addk	r3,r6,r0
	shi	r6,r1,16
	addik	r3,r0,1	# 0x1
	shi	r3,r1,4
	shi	r0,r1,6
	bri	$L855
$L857:
	lhui	r3,r1,16
	addk	r4,r3,r0
	addk	r3,r3,r4
	shi	r3,r1,16
	lhui	r3,r1,4
	addk	r4,r3,r0
	addk	r3,r3,r4
	shi	r3,r1,4
$L855:
	lhui	r4,r1,16
	lhui	r3,r1,12
	cmpu	r18,r3,r4
	bgei	r18,$L858
	lhui	r3,r1,4
	beqi	r3,$L858
	lhui	r3,r1,16
	sext16	r3,r3
	bgei	r3,$L857
	bri	$L858
$L860:
	lhui	r4,r1,12
	lhui	r3,r1,16
	cmpu	r18,r3,r4
	blti	r18,$L859
	lhui	r4,r1,12
	lhui	r3,r1,16
	rsubk	r3,r3,r4
	shi	r3,r1,12
	lhui	r4,r1,6
	lhui	r3,r1,4
	or	r3,r4,r3
	shi	r3,r1,6
$L859:
	lhui	r3,r1,4
	srl	r3,r3
	shi	r3,r1,4
	lhui	r3,r1,16
	srl	r3,r3
	shi	r3,r1,16
$L858:
	lhui	r3,r1,4
	bnei	r3,$L860
	lwi	r3,r1,20
	beqi	r3,$L861
	lhui	r3,r1,12
	bri	$L862
$L861:
	lhui	r3,r1,6
$L862:
	addik	r1,r1,8
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
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12
	swi	r5,r1,16
	swi	r6,r1,20
	swi	r7,r1,24
	addik	r3,r0,1	# 0x1
	swi	r3,r1,4
	swi	r0,r1,8
	bri	$L865
$L867:
	lwi	r3,r1,20
	addk	r3,r3,r3
	swi	r3,r1,20
	lwi	r3,r1,4
	addk	r3,r3,r3
	swi	r3,r1,4
$L865:
	lwi	r4,r1,20
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L868
	lwi	r3,r1,4
	beqi	r3,$L868
	lwi	r3,r1,20
	bgei	r3,$L867
	bri	$L868
$L870:
	lwi	r4,r1,16
	lwi	r3,r1,20
	cmpu	r18,r3,r4
	blti	r18,$L869
	lwi	r4,r1,16
	lwi	r3,r1,20
	rsubk	r3,r3,r4
	swi	r3,r1,16
	lwi	r4,r1,8
	lwi	r3,r1,4
	or	r3,r4,r3
	swi	r3,r1,8
$L869:
	lwi	r3,r1,4
	srl	r3,r3
	swi	r3,r1,4
	lwi	r3,r1,20
	srl	r3,r3
	swi	r3,r1,20
$L868:
	lwi	r3,r1,4
	bnei	r3,$L870
	lwi	r3,r1,24
	beqi	r3,$L871
	lwi	r3,r1,16
	bri	$L872
$L871:
	lwi	r3,r1,8
$L872:
	addik	r1,r1,12
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
	.frame	r1,24,r15		# vars= 20, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-24
	swi	r5,r1,28
	swi	r6,r1,32
	swi	r7,r1,36
	addik	r3,r0,32	# 0x20
	swi	r3,r1,4
	lwi	r4,r1,28
	lwi	r5,r1,32
	swi	r4,r1,8
	swi	r5,r1,12
	lwi	r4,r1,36
	lwi	r3,r1,4
	and	r3,r4,r3
	beqi	r3,$L875
	swi	r0,r1,20
	lwi	r4,r1,12
	lwi	r5,r1,36
	lwi	r3,r1,4
	rsubk	r3,r3,r5
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	addk	r3,r5,r0
	swi	r3,r1,16
	bri	$L876
$L875:
	lwi	r3,r1,36
	bnei	r3,$L877
	lwi	r4,r1,28
	lwi	r5,r1,32
	bri	$L879
$L877:
	lwi	r5,r1,12
	lwi	r4,r1,36
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	swi	r3,r1,20
	lwi	r3,r1,8
	addk	r5,r3,r0
	lwi	r3,r1,36
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	lwi	r6,r1,12
	lwi	r5,r1,4
	lwi	r3,r1,36
	rsubk	r5,r3,r5
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r4,r3
	swi	r3,r1,16
$L876:
	lwi	r4,r1,16
	lwi	r5,r1,20
$L879:
	addk	r3,r4,r0
	addk	r4,r5,r0
	addik	r1,r1,24
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
	.frame	r1,24,r15		# vars= 20, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-24
	swi	r5,r1,28
	swi	r6,r1,32
	swi	r7,r1,36
	addik	r3,r0,32	# 0x20
	swi	r3,r1,4
	lwi	r4,r1,28
	lwi	r5,r1,32
	swi	r4,r1,8
	swi	r5,r1,12
	lwi	r4,r1,36
	lwi	r3,r1,4
	and	r3,r4,r3
	beqi	r3,$L882
	lwi	r5,r1,8
	lwi	r3,r1,4
	addik	r4,r3,-1
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	swi	r3,r1,16
	lwi	r4,r1,8
	lwi	r5,r1,36
	lwi	r3,r1,4
	rsubk	r3,r3,r5
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r5,r5
	addk	r3,r5,r0
	swi	r3,r1,20
	bri	$L883
$L882:
	lwi	r3,r1,36
	bnei	r3,$L884
	lwi	r4,r1,28
	lwi	r5,r1,32
	bri	$L886
$L884:
	lwi	r5,r1,8
	lwi	r4,r1,36
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	swi	r3,r1,16
	lwi	r3,r1,8
	addk	r5,r3,r0
	lwi	r4,r1,4
	lwi	r3,r1,36
	rsubk	r3,r3,r4
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	lwi	r6,r1,12
	lwi	r5,r1,36
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r4,r3
	swi	r3,r1,20
$L883:
	lwi	r4,r1,16
	lwi	r5,r1,20
$L886:
	addk	r3,r4,r0
	addk	r4,r5,r0
	addik	r1,r1,24
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
	.frame	r1,156,r15		# vars= 112, regs= 10, args= 0
	.mask	0xffc00000
	addik	r1,r1,-156
	swi	r22,r1,116
	swi	r23,r1,120
	swi	r24,r1,124
	swi	r25,r1,128
	swi	r26,r1,132
	swi	r27,r1,136
	swi	r28,r1,140
	swi	r29,r1,144
	swi	r30,r1,148
	swi	r31,r1,152
	swi	r5,r1,160
	swi	r6,r1,164
	lwi	r3,r1,160
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
	lwi	r3,r1,160
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
	swi	r3,r1,12
	or	r3,r25,r11
	swi	r3,r1,16
	lwi	r3,r1,160
	addk	r4,r0,r3
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	lwi	r3,r1,164
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
	lwi	r3,r1,160
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
	addik	r3,r1,12
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	or	r3,r3,r26
	swi	r3,r1,20
	addk	r3,r5,r0
	or	r3,r3,r27
	swi	r3,r1,24
	lwi	r3,r1,160
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
	lwi	r3,r1,164
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
	lwi	r3,r1,160
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
	swi	r3,r1,28
	andi	r3,r29,-16777216 #and2
	swi	r3,r1,32
	addik	r3,r1,20
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r1,28
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r8,r4,r0
	or	r3,r3,r8
	swi	r3,r1,36
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r1,40
	lwi	r3,r1,164
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
	lwi	r3,r1,160
	addk	r5,r0,r3
	addk	r5,r3,r3
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	swi	r5,r1,4
	lwi	r3,r1,4
	or	r3,r4,r3
	swi	r3,r1,4
	lwi	r3,r1,164
	addk	r4,r0,r3
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	swi	r4,r1,8
	addik	r3,r1,4
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	andi	r3,r3,255 #and1
	swi	r3,r1,44
	addk	r3,r5,r0
	andi	r3,r3,0 #and1
	swi	r3,r1,48
	addik	r3,r1,36
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r1,44
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r8,r4,r0
	or	r3,r3,r8
	swi	r3,r1,52
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r1,56
	lwi	r4,r1,164
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,160
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
	lwi	r3,r1,164
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
	swi	r3,r1,60
	andi	r3,r31,0 #and1
	swi	r3,r1,64
	addik	r3,r1,52
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r1,60
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r8,r4,r0
	or	r3,r3,r8
	swi	r3,r1,68
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r1,72
	lwi	r3,r1,164
	addk	r4,r0,r3
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	swi	r4,r1,76
	addk	r8,r0,r0
	swi	r8,r1,80
	addik	r3,r1,76
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	andi	r3,r3,16711680 #and2
	swi	r3,r1,84
	addk	r3,r5,r0
	andi	r3,r3,0 #and1
	swi	r3,r1,88
	addik	r3,r1,68
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r1,84
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r9,r4,r0
	or	r3,r3,r9
	swi	r3,r1,92
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r1,96
	lwi	r3,r1,164
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
	swi	r4,r1,100
	swi	r8,r1,104
	addik	r3,r1,92
	lwi	r6,r3,0
	lwi	r7,r3,4
	addk	r3,r6,r0
	addik	r4,r1,100
	lwi	r5,r4,4
	lwi	r4,r4,0
	addk	r8,r4,r0
	or	r3,r3,r8
	swi	r3,r1,108
	addk	r3,r7,r0
	addk	r4,r5,r0
	or	r3,r3,r4
	swi	r3,r1,112
	addik	r3,r1,108
	lwi	r4,r3,0
	lwi	r5,r3,4
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r22,r1,116
	lwi	r23,r1,120
	lwi	r24,r1,124
	lwi	r25,r1,128
	lwi	r26,r1,132
	lwi	r27,r1,136
	lwi	r28,r1,140
	lwi	r29,r1,144
	lwi	r30,r1,148
	lwi	r31,r1,152
	addik	r1,r1,156
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	lwi	r3,r1,4
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
	lwi	r5,r1,4
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
	lwi	r3,r1,4
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
	lwi	r5,r1,4
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
	.frame	r1,40,r15		# vars= 12, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r5,r1,44
	lwi	r3,r1,44
	swi	r3,r1,28
	lwi	r4,r1,28
	addik	r3,r0,65535
	cmpu	r18,r4,r3
	blti	r18,$L894
	addik	r3,r0,16	# 0x10
	bri	$L895
$L894:
	addk	r3,r0,r0
$L895:
	swi	r3,r1,32
	lwi	r3,r1,32
	addik	r4,r0,16	# 0x10
	rsubk	r4,r3,r4
	lwi	r5,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,28
	lwi	r3,r1,32
	swi	r3,r1,36
	lwi	r3,r1,28
	andi	r3,r3,65280 #and2
	bnei	r3,$L896
	addik	r3,r0,8	# 0x8
	bri	$L897
$L896:
	addk	r3,r0,r0
$L897:
	swi	r3,r1,32
	lwi	r3,r1,32
	addik	r4,r0,8	# 0x8
	rsubk	r4,r3,r4
	lwi	r5,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,28
	lwi	r3,r1,32
	lwi	r4,r1,36
	addk	r3,r4,r3
	swi	r3,r1,36
	lwi	r3,r1,28
	andi	r3,r3,240 #and1
	bnei	r3,$L898
	addik	r3,r0,4	# 0x4
	bri	$L899
$L898:
	addk	r3,r0,r0
$L899:
	swi	r3,r1,32
	lwi	r3,r1,32
	addik	r4,r0,4	# 0x4
	rsubk	r4,r3,r4
	lwi	r5,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,28
	lwi	r3,r1,32
	lwi	r4,r1,36
	addk	r3,r4,r3
	swi	r3,r1,36
	lwi	r3,r1,28
	andi	r3,r3,12 #and1
	bnei	r3,$L900
	addik	r3,r0,2	# 0x2
	bri	$L901
$L900:
	addk	r3,r0,r0
$L901:
	swi	r3,r1,32
	lwi	r3,r1,32
	addik	r6,r0,2	# 0x2
	rsubk	r4,r3,r6
	lwi	r5,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,28
	lwi	r3,r1,32
	lwi	r4,r1,36
	addk	r3,r4,r3
	swi	r3,r1,36
	lwi	r3,r1,28
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
	lwi	r3,r1,28
	rsubk	r3,r3,r6
	addk	r6,r3,r0
	addk	r5,r4,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	addk	r3,r4,r3
	lwi	r15,r1,0
	addik	r1,r1,40
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
	.frame	r1,20,r15		# vars= 16, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-20
	swi	r5,r1,24
	swi	r6,r1,28
	swi	r7,r1,32
	swi	r8,r1,36
	lwi	r4,r1,24
	lwi	r5,r1,28
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r4,r1,32
	lwi	r5,r1,36
	swi	r4,r1,12
	swi	r5,r1,16
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmp	r18,r3,r4
	bgei	r18,$L905
	addk	r3,r0,r0
	bri	$L910
$L905:
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmp	r18,r4,r3
	bgei	r18,$L907
	addik	r3,r0,2	# 0x2
	bri	$L910
$L907:
	lwi	r4,r1,8
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L908
	addk	r3,r0,r0
	bri	$L910
$L908:
	lwi	r4,r1,8
	lwi	r3,r1,16
	cmpu	r18,r4,r3
	bgei	r18,$L909
	addik	r3,r0,2	# 0x2
	bri	$L910
$L909:
	addik	r3,r0,1	# 0x1
$L910:
	addik	r1,r1,20
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r7,r1,40
	lwi	r8,r1,44
	lwi	r5,r1,32
	lwi	r6,r1,36
	brlid	r15,__cmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	addik	r1,r1,28
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
	.frame	r1,16,r15		# vars= 12, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-16
	swi	r5,r1,20
	lwi	r3,r1,20
	swi	r3,r1,4
	lwi	r3,r1,4
	andi	r3,r3,65535 #and2
	bnei	r3,$L916
	addik	r3,r0,16	# 0x10
	bri	$L917
$L916:
	addk	r3,r0,r0
$L917:
	swi	r3,r1,8
	lwi	r5,r1,4
	lwi	r4,r1,8
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,4
	lwi	r3,r1,8
	swi	r3,r1,12
	lwi	r3,r1,4
	andi	r3,r3,255 #and1
	bnei	r3,$L918
	addik	r3,r0,8	# 0x8
	bri	$L919
$L918:
	addk	r3,r0,r0
$L919:
	swi	r3,r1,8
	lwi	r5,r1,4
	lwi	r4,r1,8
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,4
	lwi	r3,r1,8
	lwi	r4,r1,12
	addk	r3,r4,r3
	swi	r3,r1,12
	lwi	r3,r1,4
	andi	r3,r3,15 #and1
	bnei	r3,$L920
	addik	r3,r0,4	# 0x4
	bri	$L921
$L920:
	addk	r3,r0,r0
$L921:
	swi	r3,r1,8
	lwi	r5,r1,4
	lwi	r4,r1,8
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,4
	lwi	r3,r1,8
	lwi	r4,r1,12
	addk	r3,r4,r3
	swi	r3,r1,12
	lwi	r3,r1,4
	andi	r3,r3,3 #and1
	bnei	r3,$L922
	addik	r3,r0,2	# 0x2
	bri	$L923
$L922:
	addk	r3,r0,r0
$L923:
	swi	r3,r1,8
	lwi	r5,r1,4
	lwi	r4,r1,8
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,4
	lwi	r3,r1,4
	andi	r3,r3,3 #and1
	swi	r3,r1,4
	lwi	r3,r1,8
	lwi	r4,r1,12
	addk	r3,r4,r3
	swi	r3,r1,12
	lwi	r3,r1,4
	xori	r3,r3,-1
	andi	r4,r3,1 #and1
	lwi	r3,r1,4
	srl	r3,r3
	addik	r5,r0,2	# 0x2
	rsubk	r3,r3,r5
	rsubk	r4,r4,r0
	and	r4,r4,r3
	lwi	r3,r1,12
	addk	r3,r4,r3
	addik	r1,r1,16
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
	.frame	r1,24,r15		# vars= 20, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-24
	swi	r5,r1,28
	swi	r6,r1,32
	swi	r7,r1,36
	addik	r3,r0,32	# 0x20
	swi	r3,r1,4
	lwi	r4,r1,28
	lwi	r5,r1,32
	swi	r4,r1,8
	swi	r5,r1,12
	lwi	r4,r1,36
	lwi	r3,r1,4
	and	r3,r4,r3
	beqi	r3,$L927
	swi	r0,r1,16
	lwi	r5,r1,8
	lwi	r4,r1,36
	lwi	r3,r1,4
	rsubk	r4,r3,r4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,20
	bri	$L928
$L927:
	lwi	r3,r1,36
	bnei	r3,$L929
	lwi	r4,r1,28
	lwi	r5,r1,32
	bri	$L931
$L929:
	lwi	r5,r1,8
	lwi	r4,r1,36
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,16
	lwi	r5,r1,8
	lwi	r4,r1,4
	lwi	r3,r1,36
	rsubk	r3,r3,r4
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	lwi	r6,r1,12
	lwi	r5,r1,36
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r4,r3
	swi	r3,r1,20
$L928:
	lwi	r4,r1,16
	lwi	r5,r1,20
$L931:
	addk	r3,r4,r0
	addk	r4,r5,r0
	addik	r1,r1,24
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
	.frame	r1,52,r15		# vars= 20, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,48
	swi	r5,r1,56
	swi	r6,r1,60
	addik	r3,r0,16	# 0x10
	swi	r3,r1,28
	addik	r5,r0,-1	# 0xffffffffffffffff
	lwi	r4,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,32
	lwi	r4,r1,56
	lwi	r3,r1,32
	and	r5,r4,r3
	lwi	r4,r1,60
	lwi	r3,r1,32
	and	r3,r4,r3
	addk	r6,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	swi	r3,r1,44
	lwi	r5,r1,44
	lwi	r4,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,36
	lwi	r4,r1,44
	lwi	r3,r1,32
	and	r3,r4,r3
	swi	r3,r1,44
	lwi	r4,r1,56
	lwi	r3,r1,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	lwi	r4,r1,60
	lwi	r3,r1,32
	and	r3,r4,r3
	addk	r6,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	addk	r3,r3,r4
	swi	r3,r1,36
	lwi	r4,r1,44
	lwi	r5,r1,36
	lwi	r3,r1,32
	and	r6,r5,r3
	lwi	r5,r1,28
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addk	r3,r4,r3
	swi	r3,r1,44
	lwi	r4,r1,36
	lwi	r3,r1,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	addk	r3,r5,r0
	swi	r3,r1,40
	lwi	r5,r1,44
	lwi	r4,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	swi	r3,r1,36
	lwi	r4,r1,44
	lwi	r3,r1,32
	and	r3,r4,r3
	swi	r3,r1,44
	lwi	r4,r1,60
	lwi	r3,r1,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	lwi	r4,r1,56
	lwi	r3,r1,32
	and	r3,r4,r3
	addk	r6,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	lwi	r3,r1,36
	addk	r3,r3,r4
	swi	r3,r1,36
	lwi	r4,r1,44
	lwi	r5,r1,36
	lwi	r3,r1,32
	and	r6,r5,r3
	lwi	r5,r1,28
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addk	r3,r4,r3
	swi	r3,r1,44
	lwi	r3,r1,40
	addk	r6,r3,r0
	lwi	r5,r1,36
	lwi	r4,r1,28
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	addk	r3,r6,r3
	swi	r3,r1,40
	lwi	r3,r1,40
	addk	r19,r3,r0
	lwi	r4,r1,56
	lwi	r3,r1,28
	andi	r18,r3,31
	addk	r5,r0,r4
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	lwi	r4,r1,60
	lwi	r3,r1,28
	andi	r18,r3,31
	addk	r6,r0,r4
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r19,r3
	swi	r3,r1,40
	lwi	r4,r1,40
	lwi	r5,r1,44
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r19,r1,48
	addik	r1,r1,52
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
	.frame	r1,60,r15		# vars= 24, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,52
	swi	r22,r1,56
	swi	r5,r1,64
	swi	r6,r1,68
	swi	r7,r1,72
	swi	r8,r1,76
	lwi	r4,r1,64
	lwi	r5,r1,68
	swi	r4,r1,28
	swi	r5,r1,32
	lwi	r4,r1,72
	lwi	r5,r1,76
	swi	r4,r1,36
	swi	r5,r1,40
	lwi	r3,r1,32
	lwi	r4,r1,40
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__muldsi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,44
	swi	r5,r1,48
	lwi	r3,r1,44
	addk	r19,r3,r0
	lwi	r3,r1,28
	addk	r4,r3,r0
	lwi	r3,r1,40
	addk	r6,r3,r0
	addk	r5,r4,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
	lwi	r3,r1,32
	lwi	r4,r1,36
	addk	r6,r4,r0
	addk	r5,r3,r0
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r22,r3
	addk	r3,r19,r3
	swi	r3,r1,44
	lwi	r4,r1,44
	lwi	r5,r1,48
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r19,r1,52
	lwi	r22,r1,56
	addik	r1,r1,60
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r1,4
	swi	r6,r1,8
	lwi	r4,r1,4
	lwi	r5,r1,8
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
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
	.frame	r1,16,r15		# vars= 12, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-16
	swi	r5,r1,20
	swi	r6,r1,24
	lwi	r4,r1,20
	lwi	r5,r1,24
	swi	r4,r1,8
	swi	r5,r1,12
	lwi	r3,r1,8
	addk	r4,r3,r0
	lwi	r3,r1,12
	xor	r3,r4,r3
	swi	r3,r1,4
	lwi	r4,r1,4
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
	lwi	r4,r1,4
	xor	r3,r4,r3
	swi	r3,r1,4
	lwi	r4,r1,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,4
	xor	r3,r4,r3
	swi	r3,r1,4
	lwi	r4,r1,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,4
	xor	r3,r4,r3
	swi	r3,r1,4
	lwi	r3,r1,4
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
	addik	r1,r1,16
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	lwi	r3,r1,12
	swi	r3,r1,4
	lwi	r4,r1,4
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
	lwi	r4,r1,4
	xor	r3,r4,r3
	swi	r3,r1,4
	lwi	r4,r1,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,4
	xor	r3,r4,r3
	swi	r3,r1,4
	lwi	r4,r1,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	lwi	r4,r1,4
	xor	r3,r4,r3
	swi	r3,r1,4
	lwi	r3,r1,4
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
	addik	r1,r1,8
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
	.frame	r1,56,r15		# vars= 12, regs= 10, args= 0
	.mask	0xffc00000
	addik	r1,r1,-56
	swi	r22,r1,16
	swi	r23,r1,20
	swi	r24,r1,24
	swi	r25,r1,28
	swi	r26,r1,32
	swi	r27,r1,36
	swi	r28,r1,40
	swi	r29,r1,44
	swi	r30,r1,48
	swi	r31,r1,52
	swi	r5,r1,60
	swi	r6,r1,64
	lwi	r4,r1,60
	lwi	r5,r1,64
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r4,r1,4
	src	r3,r4
	src	r3,r3
	andi	r3,r3,-2147483648
	lwi	r4,r1,8
	srl	r11,r4
	or	r11,r3,r11
	lwi	r3,r1,4
	srl	r10,r3
	andi	r28,r10,1431655765 #and2
	andi	r29,r11,1431655765 #and2
	lwi	r6,r1,4
	lwi	r7,r1,8
	rsub	r5,r29,r7
	rsubc	r4,r28,r6
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r4,r1,4
	src	r3,r4
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-1073741824
	lwi	r4,r1,8
	addk	r9,r0,r4
	srl	r9,r4
	srl	r9,r9
	or	r9,r3,r9
	lwi	r3,r1,4
	addk	r8,r0,r3
	srl	r8,r3
	srl	r8,r8
	andi	r26,r8,858993459 #and2
	andi	r27,r9,858993459 #and2
	lwi	r3,r1,4
	andi	r24,r3,858993459 #and2
	lwi	r3,r1,8
	andi	r25,r3,858993459 #and2
	add	r5,r27,r25
	addc	r4,r26,r24
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r4,r1,4
	src	r3,r4
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-268435456
	lwi	r4,r1,8
	addk	r23,r0,r4
	srl	r23,r4
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	or	r23,r3,r23
	lwi	r3,r1,4
	addk	r22,r0,r3
	srl	r22,r3
	srl	r22,r22
	srl	r22,r22
	srl	r22,r22
	lwi	r4,r1,4
	lwi	r5,r1,8
	add	r5,r23,r5
	addc	r4,r22,r4
	andi	r3,r4,252645135 #and2
	swi	r3,r1,4
	andi	r3,r5,252645135 #and2
	swi	r3,r1,8
	lwi	r3,r1,8
	lwi	r4,r1,4
	addk	r31,r4,r0
	addk	r30,r0,r0
	addk	r4,r31,r0
	addk	r3,r3,r4
	swi	r3,r1,12
	lwi	r4,r1,12
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
	lwi	r4,r1,12
	addk	r3,r4,r3
	swi	r3,r1,12
	lwi	r3,r1,12
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r1,12
	addk	r3,r4,r3
	andi	r3,r3,127 #and1
	lwi	r22,r1,16
	lwi	r23,r1,20
	lwi	r24,r1,24
	lwi	r25,r1,28
	lwi	r26,r1,32
	lwi	r27,r1,36
	lwi	r28,r1,40
	lwi	r29,r1,44
	lwi	r30,r1,48
	lwi	r31,r1,52
	addik	r1,r1,56
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
	.frame	r1,8,r15		# vars= 4, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-8
	swi	r5,r1,12
	lwi	r3,r1,12
	swi	r3,r1,4
	lwi	r3,r1,4
	srl	r3,r3
	andi	r3,r3,1431655765 #and2
	lwi	r4,r1,4
	rsubk	r3,r3,r4
	swi	r3,r1,4
	lwi	r4,r1,4
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	andi	r4,r3,858993459 #and2
	lwi	r3,r1,4
	andi	r3,r3,858993459 #and2
	addk	r3,r4,r3
	swi	r3,r1,4
	lwi	r3,r1,4
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r1,4
	addk	r3,r4,r3
	andi	r3,r3,252645135 #and2
	swi	r3,r1,4
	lwi	r4,r1,4
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
	lwi	r4,r1,4
	addk	r3,r4,r3
	swi	r3,r1,4
	lwi	r3,r1,4
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	lwi	r3,r1,4
	addk	r3,r4,r3
	andi	r3,r3,63 #and1
	addik	r1,r1,8
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
	.frame	r1,40,r15		# vars= 12, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r5,r1,44
	swi	r6,r1,48
	swi	r7,r1,52
	lwi	r3,r1,52
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
	swi	r3,r1,36
	addik	r4,r0,0x3ff00000 
	addik	r5,r0,0x00000000 #Xfer Lo
	swi	r4,r1,28
	swi	r5,r1,32
$L957:
	lwi	r3,r1,52
	andi	r3,r3,1 #and1
	beqi	r3,$L954
	lwi	r7,r1,44
	lwi	r8,r1,48
	lwi	r5,r1,28
	lwi	r6,r1,32
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,28
	swi	r5,r1,32
$L954:
	lwi	r3,r1,52
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
	swi	r3,r1,52
	lwi	r3,r1,52
	beqi	r3,$L962
	lwi	r7,r1,44
	lwi	r8,r1,48
	lwi	r5,r1,44
	lwi	r6,r1,48
	brlid	r15,__muldf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r1,44
	swi	r5,r1,48
	bri	$L957
$L962:
	nop
	lwi	r3,r1,36
	beqi	r3,$L958
	lwi	r7,r1,28
	lwi	r8,r1,32
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	bri	$L960
$L958:
	lwi	r4,r1,28
	lwi	r5,r1,32
$L960:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addik	r1,r1,40
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
	.frame	r1,36,r15		# vars= 8, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r5,r1,40
	swi	r6,r1,44
	lwi	r3,r1,44
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
	swi	r3,r1,32
	addik	r3,r0,0x3f800000
	swi	r3,r1,28
$L968:
	lwi	r3,r1,44
	andi	r3,r3,1 #and1
	beqi	r3,$L965
	lwi	r6,r1,40
	lwi	r5,r1,28
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r1,28
$L965:
	lwi	r3,r1,44
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
	swi	r3,r1,44
	lwi	r3,r1,44
	beqi	r3,$L973
	lwi	r6,r1,40
	lwi	r5,r1,40
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	swi	r3,r1,40
	bri	$L968
$L973:
	nop
	lwi	r3,r1,32
	beqi	r3,$L969
	lwi	r6,r1,28
	addik	r5,r0,0x3f800000
	brlid	r15,__divsf3
	nop		# Unfilled delay slot

	bri	$L971
$L969:
	lwi	r3,r1,28
$L971:
	lwi	r15,r1,0
	addik	r1,r1,36
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
	.frame	r1,20,r15		# vars= 16, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-20
	swi	r5,r1,24
	swi	r6,r1,28
	swi	r7,r1,32
	swi	r8,r1,36
	lwi	r4,r1,24
	lwi	r5,r1,28
	swi	r4,r1,4
	swi	r5,r1,8
	lwi	r4,r1,32
	lwi	r5,r1,36
	swi	r4,r1,12
	swi	r5,r1,16
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmpu	r18,r3,r4
	bgei	r18,$L976
	addk	r3,r0,r0
	bri	$L981
$L976:
	lwi	r4,r1,4
	lwi	r3,r1,12
	cmpu	r18,r4,r3
	bgei	r18,$L978
	addik	r3,r0,2	# 0x2
	bri	$L981
$L978:
	lwi	r4,r1,8
	lwi	r3,r1,16
	cmpu	r18,r3,r4
	bgei	r18,$L979
	addk	r3,r0,r0
	bri	$L981
$L979:
	lwi	r4,r1,8
	lwi	r3,r1,16
	cmpu	r18,r4,r3
	bgei	r18,$L980
	addik	r3,r0,2	# 0x2
	bri	$L981
$L980:
	addik	r3,r0,1	# 0x1
$L981:
	addik	r1,r1,20
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	swi	r5,r1,32
	swi	r6,r1,36
	swi	r7,r1,40
	swi	r8,r1,44
	lwi	r4,r1,32
	lwi	r5,r1,36
	lwi	r6,r1,40
	lwi	r7,r1,44
	addk	r8,r7,r0
	addk	r7,r6,r0
	addk	r6,r5,r0
	addk	r5,r4,r0
	brlid	r15,__ucmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	addik	r1,r1,28
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	__aeabi_ulcmp
$Lfe151:
	.size	__aeabi_ulcmp,$Lfe151-__aeabi_ulcmp
	.bss
	.lcomm	s.0,7,4
	.type	s.0, @object
	.section	.note.GNU-stack,"",@progbits
