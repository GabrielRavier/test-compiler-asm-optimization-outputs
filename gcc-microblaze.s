	.text
	.align	2
	.globl	memmove
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmpu	r18,r5,r6
	bgeid	r18,$L11
	addk	r3,r5,r0
	addik	r6,r6,-1
	brid	$L2
	addik	r4,r5,-1
$L4:
	lbu	r5,r7,r6
	sb	r5,r7,r4
	addik	r7,r7,-1
$L2:
	bnei	r7,$L4
$L5:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L11:
	xor	r5,r5,r6
	bneid	r5,$L6
	addk	r4,r0,r0
	bri	$L5
$L7:
	lbu	r5,r4,r6
	sb	r5,r4,r3
	addik	r4,r4,1
$L6:
	xor	r5,r4,r7
	bnei	r5,$L7
	bri	$L5
	.end	memmove
$Lfe1:
	.size	memmove,$Lfe1-memmove
	.align	2
	.globl	memccpy
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L13
	andi	r7,r7,0x00ff
$L19:
	addik	r6,r6,1
	addik	r5,r5,1
$L13:
	beqid	r8,$L18
	addk	r3,r0,r0
	lbui	r3,r6,0
	sbi	r3,r5,0
	xor	r3,r7,r3
	bneid	r3,$L19
	addik	r8,r8,-1
	addik	r8,r8,1
	beqid	r8,$L16
	addk	r3,r0,r0
	addik	r3,r5,1
$L16:
$L18:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L21
	andi	r6,r6,0x00ff
$L28:
	addik	r7,r7,-1
$L21:
	beqid	r7,$L27
	addk	r3,r5,r0
	lbui	r4,r5,0
	xor	r4,r6,r4
	bneid	r4,$L28
	addik	r5,r5,1
	addik	r5,r5,-1
	beqid	r7,$L26
	addk	r3,r5,r0
$L24:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L26:
$L27:
	brid	$L24
	addk	r3,r0,r0
	.end	memchr
$Lfe3:
	.size	memchr,$Lfe3-memchr
	.align	2
	.globl	memcmp
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	bri	$L30
$L36:
	addik	r5,r5,1
	addik	r6,r6,1
$L30:
	beqid	r7,$L35
	addk	r3,r0,r0
	lbui	r3,r5,0
	lbui	r4,r6,0
	xor	r3,r3,r4
	beqid	r3,$L36
	addik	r7,r7,-1
	addik	r7,r7,1
	beqid	r7,$L33
	addk	r3,r0,r0
	lbui	r3,r5,0
	lbui	r4,r6,0
	rsubk	r3,r4,r3
$L33:
$L35:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	brid	$L38
	addk	r4,r0,r0
$L39:
	lbu	r5,r4,r6
	sb	r5,r4,r3
	addik	r4,r4,1
$L38:
	xor	r8,r4,r7
	bnei	r8,$L39
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	andi	r6,r6,0x00ff
	addik	r7,r7,-1
$L41:
	xori	r4,r7,-1
	beqid	r4,$L45
	addk	r3,r0,r0
	lbu	r4,r7,r5
	xor	r4,r6,r4
	beqid	r4,$L46
	addik	r8,r7,-1
	brid	$L41
	addk	r7,r8,r0
$L46:
	addk	r3,r5,r7
$L45:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	addk	r7,r5,r7
	addk	r4,r5,r0
	brid	$L48
	andi	r6,r6,0x00ff
$L49:
	sbi	r6,r4,0
	addik	r4,r4,1
$L48:
	xor	r8,r4,r7
	bnei	r8,$L49
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
	brid	$L51
	addk	r3,r5,r0
$L52:
	addik	r6,r6,1
	addik	r3,r3,1
$L51:
	lbui	r4,r6,0
	sbi	r4,r3,0
	sext8	r4,r4
	bnei	r4,$L52
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
	addk	r3,r5,r0
	brid	$L54
	andi	r6,r6,0x00ff
$L54:
	lbui	r4,r3,0
	beqid	r4,$L55
	xor	r4,r6,r4
	bneid	r4,$L54
	addik	r3,r3,1
	addik	r3,r3,-1
$L55:
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
$L59:
	lbui	r4,r5,0
	sext8	r4,r4
	xor	r4,r6,r4
	beqid	r4,$L60
	addk	r3,r5,r0
	addik	r5,r5,1
	lbui	r3,r5,-1
	bnei	r3,$L59
$L60:
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
	brid	$L66
	lbui	r4,r5,0
$L67:
	addik	r6,r6,1
	lbui	r4,r5,0
$L66:
	lbui	r3,r6,0
	xor	r3,r3,r4
	sext8	r3,r3
	bnei	r3,$L64
	bneid	r4,$L67
	addik	r5,r5,1
	addik	r5,r5,-1
$L64:
	lbui	r4,r5,0
	lbui	r3,r6,0
	rtsd	r15,8 
	
	rsubk	r3,r3,r4
	.end	strcmp
$Lfe11:
	.size	strcmp,$Lfe11-strcmp
	.align	2
	.globl	strlen
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L69
	addk	r3,r5,r0
$L70:
	addik	r3,r3,1
$L69:
	lbui	r6,r3,0
	bnei	r6,$L70
	rtsd	r15,8 
	
	rsubk	r3,r5,r3
	.end	strlen
$Lfe12:
	.size	strlen,$Lfe12-strlen
	.align	2
	.globl	strncmp
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	beqid	r7,$L76
	addik	r7,r7,-1
	addk	r3,r5,r0
	addk	r8,r7,r5
$L73:
	lbui	r4,r3,0
	beqid	r4,$L74
	rsubk	r7,r3,r8
	lbui	r4,r6,0
	rsubk	r5,r8,r3
	or	r5,r5,r7
	rsubk	r4,r4,r0
	and	r4,r4,r5
	bgei	r4,$L74
	lbui	r4,r3,0
	lbui	r5,r6,0
	xor	r4,r4,r5
	bnei	r4,$L74
	addik	r3,r3,1
	brid	$L73
	addik	r6,r6,1
$L74:
	lbui	r3,r3,0
	lbui	r4,r6,0
	rsubk	r3,r4,r3
$L72:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L76:
	brid	$L72
	addk	r3,r0,r0
	.end	strncmp
$Lfe13:
	.size	strncmp,$Lfe13-strncmp
	.align	2
	.globl	swab
	.ent	swab
	.type	swab, @function
swab:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	addk	r7,r5,r7
	brid	$L78
	addik	r5,r0,1	# 0x1
$L79:
	lbui	r4,r3,1
	sbi	r4,r6,0
	lbui	r4,r3,0
	sbi	r4,r6,1
	addik	r6,r6,2
	addik	r3,r3,2
$L78:
	rsubk	r4,r3,r7
	cmp	r18,r4,r5
	blti	r18,$L79
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
	ori	r5,r5,32
	addik	r5,r5,-97
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgeid	r18,$L81
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L81:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r4,r0,127	# 0x7f
	cmpu	r18,r5,r4
	bgeid	r18,$L83
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L83:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	xori	r3,r5,32
	rsubk	r4,r3,r0
	or	r4,r4,r3
	xori	r5,r5,9
	rsubk	r3,r5,r0
	or	r3,r3,r5
	and	r3,r3,r4
	xori	r3,r3,-1
	addk	r4,r3,r0
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
	addik	r4,r0,31	# 0x1f
	cmpu	r18,r5,r4
	bgeid	r18,$L86
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L86:
	andi	r3,r3,0x00ff
	xori	r5,r5,127
	rsubk	r4,r5,r0
	or	r4,r4,r5
	xori	r4,r4,-1
	addk	r5,r0,r4
	srl	r5,r4
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	rtsd	r15,8 
	
	or	r3,r3,r5
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
	addik	r5,r5,-48
	addik	r4,r0,9	# 0x9
	cmpu	r18,r5,r4
	bgeid	r18,$L88
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L88:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r5,r5,-33
	addik	r4,r0,93	# 0x5d
	cmpu	r18,r5,r4
	bgeid	r18,$L90
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L90:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r5,r5,-97
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgeid	r18,$L92
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L92:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r5,r5,-32
	addik	r4,r0,94	# 0x5e
	cmpu	r18,r5,r4
	bgeid	r18,$L94
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L94:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	xori	r3,r5,32
	rsubk	r4,r3,r0
	or	r4,r4,r3
	xori	r4,r4,-1
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
	addik	r5,r5,-9
	addik	r6,r0,4	# 0x4
	cmpu	r18,r5,r6
	bgeid	r18,$L96
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L96:
	andi	r4,r4,0x00ff
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	addik	r5,r5,-65
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgeid	r18,$L98
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L98:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r4,r0,31	# 0x1f
	cmpu	r18,r5,r4
	bgeid	r18,$L100
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L100:
	andi	r3,r3,0x00ff
	addik	r7,r5,-127
	addik	r6,r0,32	# 0x20
	cmpu	r18,r7,r6
	bgeid	r18,$L101
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L101:
	andi	r4,r4,0x00ff
	or	r4,r3,r4
	bneid	r4,$L102
	addik	r3,r0,1	# 0x1
	addik	r6,r5,-8232
	cmpu	r18,r6,r3
	bgeid	r18,$L102
	addik	r4,r0,2	# 0x2
	addik	r5,r5,-65529
	cmpu	r18,r5,r4
	bgeid	r18,$L106
	andi	r3,r3,0x00ff
	addk	r3,r0,r0
	andi	r3,r3,0x00ff
$L102:
$L106:
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
	addik	r5,r5,-48
	addik	r4,r0,9	# 0x9
	cmpu	r18,r5,r4
	bgeid	r18,$L108
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L108:
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r3,r0,254	# 0xfe
	cmpu	r18,r5,r3
	bgeid	r18,$L118
	addik	r4,r0,8231	# 0x2027
	cmpu	r18,r5,r4
	bgeid	r18,$L113
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L113:
	andi	r3,r3,0x00ff
	addik	r7,r5,-8234
	addik	r6,r0,47061
	cmpu	r18,r7,r6
	bgeid	r18,$L114
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L114:
	andi	r4,r4,0x00ff
	or	r3,r3,r4
	bneid	r3,$L119
	addik	r3,r0,1	# 0x1
	addik	r4,r5,-57344
	addik	r3,r0,8184	# 0x1ff8
	cmpu	r18,r4,r3
	bgeid	r18,$L119
	addik	r3,r0,1	# 0x1
	addik	r4,r5,-65532
	addik	r3,r0,1048579
	cmpu	r18,r4,r3
	blti	r18,$L117
	andi	r5,r5,65534 #and2
	xori	r5,r5,65534
	rsubk	r5,r5,r0
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
	bri	$L112
$L118:
	addik	r5,r5,1
	andi	r5,r5,127 #and1
	addik	r4,r0,32	# 0x20
	cmpu	r18,r5,r4
	bltid	r18,$L111
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L111:
	andi	r3,r3,0x00ff
$L112:
$L119:
	rtsd	r15,8 
	nop		# Unfilled delay slot

	brid	$L112
	addik	r3,r0,1	# 0x1
$L117:
	brid	$L112
	addk	r3,r0,r0
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
	addik	r6,r5,-48
	addik	r4,r0,9	# 0x9
	cmpu	r18,r6,r4
	bgeid	r18,$L121
	addik	r3,r0,1	# 0x1
	ori	r5,r5,32
	addik	r5,r5,-97
	addik	r4,r0,5	# 0x5
	cmpu	r18,r5,r4
	bgeid	r18,$L124
	andi	r3,r3,0x00ff
	addk	r3,r0,r0
	andi	r3,r3,0x00ff
$L121:
$L124:
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
	rtsd	r15,8 
	
	andi	r3,r5,127 #and1
	.end	toascii
$Lfe29:
	.size	toascii,$Lfe29-toascii
	.align	2
	.globl	fdim
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L127
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L130
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L133
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__subdf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
$L127:
	addk	r3,r22,r0
$L135:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L130:
	addk	r22,r24,r0
	brid	$L127
	addk	r23,r25,r0
$L133:
	addk	r22,r0,r0
	addk	r23,r0,r0
	brid	$L135
	addk	r3,r22,r0
	.end	fdim
$Lfe30:
	.size	fdim,$Lfe30-fdim
	.align	2
	.globl	fdimf
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L139
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L140
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bleid	r3,$L146
	addk	r3,r0,r0
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

$L137:
$L146:
	lwi	r15,r1,0
$L145:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L139:
	addk	r3,r19,r0
	brid	$L145
	lwi	r15,r1,0
$L140:
	addk	r3,r22,r0
	brid	$L145
	lwi	r15,r1,0
	.end	fdimf
$Lfe31:
	.size	fdimf,$Lfe31-fdimf
	.align	2
	.globl	fmax
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L153
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L148
	xor	r3,r24,r22
	bgeid	r3,$L149
	addk	r7,r24,r0
	bgeid	r22,$L157
	addk	r3,r22,r0
	addk	r22,r24,r0
	addk	r23,r25,r0
$L148:
	addk	r3,r22,r0
$L157:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L149:
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bgeid	r3,$L157
	addk	r3,r22,r0
	addk	r22,r24,r0
	brid	$L148
	addk	r23,r25,r0
$L153:
	addk	r22,r24,r0
	brid	$L148
	addk	r23,r25,r0
	.end	fmax
$Lfe32:
	.size	fmax,$Lfe32-fmax
	.align	2
	.globl	fmaxf
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L164
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L165
	xor	r3,r22,r19
	bgei	r3,$L160
	addk	r3,r19,r0
	bgeid	r19,$L159
	lwi	r15,r1,0
	addk	r3,r22,r0
	brid	$L169
	lwi	r19,r1,28
$L160:
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L163
	addk	r19,r22,r0
$L163:
	addk	r3,r19,r0
$L159:
	lwi	r15,r1,0
$L168:
	lwi	r19,r1,28
$L169:
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L164:
	addk	r3,r22,r0
	brid	$L168
	lwi	r15,r1,0
$L165:
	addk	r3,r19,r0
	brid	$L168
	lwi	r15,r1,0
	.end	fmaxf
$Lfe33:
	.size	fmaxf,$Lfe33-fmaxf
	.align	2
	.globl	fmaxl
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L176
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L171
	xor	r3,r24,r22
	bgeid	r3,$L172
	addk	r7,r24,r0
	bgeid	r22,$L180
	addk	r3,r22,r0
	addk	r22,r24,r0
	addk	r23,r25,r0
$L171:
	addk	r3,r22,r0
$L180:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L172:
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bgeid	r3,$L180
	addk	r3,r22,r0
	addk	r22,r24,r0
	brid	$L171
	addk	r23,r25,r0
$L176:
	addk	r22,r24,r0
	brid	$L171
	addk	r23,r25,r0
	.end	fmaxl
$Lfe34:
	.size	fmaxl,$Lfe34-fmaxl
	.align	2
	.globl	fmin
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L182
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L188
	xor	r3,r22,r24
	bgeid	r3,$L183
	addk	r7,r22,r0
	bgeid	r24,$L191
	addk	r3,r22,r0
	addk	r22,r24,r0
	addk	r23,r25,r0
$L182:
	addk	r3,r22,r0
$L191:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L183:
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bgeid	r3,$L191
	addk	r3,r22,r0
	addk	r22,r24,r0
	brid	$L182
	addk	r23,r25,r0
$L188:
	addk	r22,r24,r0
	brid	$L182
	addk	r23,r25,r0
	.end	fmin
$Lfe35:
	.size	fmin,$Lfe35-fmin
	.align	2
	.globl	fminf
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r22,r5,r0
	addk	r19,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L198
	addk	r6,r19,r0
	addk	r5,r19,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L199
	xor	r3,r19,r22
	bgei	r3,$L194
	addk	r3,r19,r0
	bgeid	r22,$L193
	lwi	r15,r1,0
	addk	r3,r22,r0
	brid	$L203
	lwi	r19,r1,28
$L194:
	addk	r6,r19,r0
	addk	r5,r22,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgei	r3,$L197
	addk	r19,r22,r0
$L197:
	addk	r3,r19,r0
$L193:
	lwi	r15,r1,0
$L202:
	lwi	r19,r1,28
$L203:
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L198:
	addk	r3,r19,r0
	brid	$L202
	lwi	r15,r1,0
$L199:
	addk	r3,r22,r0
	brid	$L202
	lwi	r15,r1,0
	.end	fminf
$Lfe36:
	.size	fminf,$Lfe36-fminf
	.align	2
	.globl	fminl
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L205
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L211
	xor	r3,r22,r24
	bgeid	r3,$L206
	addk	r7,r22,r0
	bgeid	r24,$L214
	addk	r3,r22,r0
	addk	r22,r24,r0
	addk	r23,r25,r0
$L205:
	addk	r3,r22,r0
$L214:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L206:
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bgeid	r3,$L214
	addk	r3,r22,r0
	addk	r22,r24,r0
	brid	$L205
	addk	r23,r25,r0
$L211:
	addk	r22,r24,r0
	brid	$L205
	addk	r23,r25,r0
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r3,r0,s.0
	addik	r6,r0,digits
	bri	$L216
$L217:
	lbu	r4,r4,r6
	sbi	r4,r3,0
	addik	r3,r3,1
	addk	r4,r5,r0
	addk	r5,r0,r4
	srl	r5,r4
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
$L216:
	bneid	r5,$L217
	andi	r4,r5,63 #and1
	sbi	r0,r3,0
	addik	r3,r0,s.0
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
	addik	r5,r5,-1
	swi	r0,r0,seed
	swi	r5,r0,seed+4
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28
	swi	r15,r1,0
	addik	r7,r0,0x5851f42d
	addik	r8,r0,0x4c957f2d #li => la
	lwi	r5,r0,seed
	lwi	r6,r0,seed+4
	brlid	r15,__muldi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addik	r6,r0,0x00000000
	addik	r7,r0,0x00000001 #li => la
	add	r5,r5,r7
	addc	r4,r4,r6
	swi	r4,r0,seed
	swi	r5,r0,seed+4
	srl	r3,r4
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	rand
$Lfe40:
	.size	rand,$Lfe40-rand
	.align	2
	.globl	insque
	.ent	insque
	.type	insque, @function
insque:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	beqi	r6,$L224
	lwi	r3,r6,0
	swi	r3,r5,0
	swi	r6,r5,4
	swi	r5,r6,0
	lwi	r3,r5,0
	beqi	r3,$L221
	swi	r5,r3,4
$L221:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L224:
	swi	r0,r5,4
	brid	$L221
	swi	r0,r5,0
	.end	insque
$Lfe41:
	.size	insque,$Lfe41-insque
	.align	2
	.globl	remque
	.ent	remque
	.type	remque, @function
remque:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lwi	r3,r5,0
	beqi	r3,$L226
	lwi	r4,r5,4
	swi	r4,r3,4
$L226:
	lwi	r3,r5,4
	beqi	r3,$L225
	lwi	r4,r5,0
	swi	r4,r3,0
$L225:
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
	.frame	r1,60,r15		# vars= 0, regs= 8, args= 24
	.mask	0x1fc88000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r28,r1,56
	addk	r24,r5,r0
	addk	r27,r6,r0
	addk	r28,r7,r0
	addk	r23,r8,r0
	addk	r25,r9,r0
	lwi	r26,r7,0
	addk	r22,r6,r0
	brid	$L229
	addk	r19,r0,r0
$L230:
	addik	r19,r19,1
$L229:
	xor	r4,r19,r26
	beqid	r4,$L234
	addk	r6,r22,r0
	brald	r15,r25
	
	addk	r5,r24,r0
	bneid	r3,$L230
	addk	r22,r22,r23
	addk	r6,r23,r0
	brlid	r15,__mulsi3
	
	addk	r5,r19,r0
	brid	$L231
	addk	r3,r27,r3
$L234:
	addik	r3,r26,1
	swi	r3,r28,0
	addk	r6,r26,r0
	brlid	r15,__mulsi3
	
	addk	r5,r23,r0
	addk	r7,r23,r0
	addk	r6,r24,r0
	brlid	r15,memcpy
	
	addk	r5,r27,r3
$L231:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	rtsd	r15,8 
	
	addik	r1,r1,60
	.end	lsearch
$Lfe43:
	.size	lsearch,$Lfe43-lsearch
	.align	2
	.globl	lfind
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	r1,56,r15		# vars= 0, regs= 7, args= 24
	.mask	0x0fc88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	addk	r25,r5,r0
	addk	r27,r6,r0
	addk	r23,r8,r0
	addk	r24,r9,r0
	lwi	r26,r7,0
	addk	r22,r6,r0
	brid	$L236
	addk	r19,r0,r0
$L237:
	addik	r19,r19,1
$L236:
	xor	r4,r19,r26
	beqid	r4,$L241
	addk	r6,r22,r0
	brald	r15,r24
	
	addk	r5,r25,r0
	bneid	r3,$L237
	addk	r22,r22,r23
	addk	r6,r23,r0
	brlid	r15,__mulsi3
	
	addk	r5,r19,r0
	brid	$L238
	addk	r3,r27,r3
$L241:
	addk	r3,r0,r0
$L238:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
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
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	xor	r5,r3,r5
	rtsd	r15,8 
	
	rsubk	r3,r3,r5
	.end	abs
$Lfe45:
	.size	abs,$Lfe45-abs
	.align	2
	.globl	atoi
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	brid	$L244
	addk	r19,r5,r0
$L245:
	addik	r19,r19,1
$L244:
	lbui	r5,r19,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L245
	lbui	r3,r19,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L251
	xori	r3,r3,45
	bneid	r3,$L247
	addk	r6,r0,r0
	addik	r6,r0,1	# 0x1
$L246:
	addik	r19,r19,1
$L247:
	addk	r4,r0,r0
	brid	$L248
	addik	r5,r0,9	# 0x9
$L251:
	brid	$L246
	addk	r6,r0,r0
$L249:
	addk	r3,r4,r4
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	lbui	r4,r19,-1
	sext8	r4,r4
	addik	r4,r4,-48
	rsubk	r4,r4,r3
$L248:
	lbui	r3,r19,0
	sext8	r3,r3
	addik	r3,r3,-48
	cmpu	r18,r3,r5
	bgeid	r18,$L249
	addik	r19,r19,1
	bneid	r6,$L250
	addk	r3,r4,r0
	rsubk	r3,r4,r0
$L250:
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	atoi
$Lfe46:
	.size	atoi,$Lfe46-atoi
	.align	2
	.globl	atol
	.ent	atol
	.type	atol, @function
atol:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	brid	$L256
	addk	r19,r5,r0
$L257:
	addik	r19,r19,1
$L256:
	lbui	r5,r19,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L257
	lbui	r3,r19,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L263
	xori	r3,r3,45
	bneid	r3,$L259
	addk	r6,r0,r0
	addik	r6,r0,1	# 0x1
$L258:
	addik	r19,r19,1
$L259:
	addk	r4,r0,r0
	brid	$L260
	addik	r5,r0,9	# 0x9
$L263:
	brid	$L258
	addk	r6,r0,r0
$L261:
	addk	r3,r4,r4
	addk	r3,r3,r3
	addk	r3,r3,r4
	addk	r3,r3,r3
	lbui	r4,r19,-1
	sext8	r4,r4
	addik	r4,r4,-48
	rsubk	r4,r4,r3
$L260:
	lbui	r3,r19,0
	sext8	r3,r3
	addik	r3,r3,-48
	cmpu	r18,r3,r5
	bgeid	r18,$L261
	addik	r19,r19,1
	bneid	r6,$L262
	addk	r3,r4,r0
	rsubk	r3,r4,r0
$L262:
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	atol
$Lfe47:
	.size	atol,$Lfe47-atol
	.align	2
	.globl	atoll
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	brid	$L268
	addk	r19,r5,r0
$L269:
	addik	r19,r19,1
$L268:
	lbui	r5,r19,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L269
	lbui	r3,r19,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L275
	xori	r3,r3,45
	bneid	r3,$L271
	addk	r11,r0,r0
	addik	r11,r0,1	# 0x1
$L270:
	addik	r19,r19,1
$L271:
	addik	r8,r0,0x00000000
	addik	r9,r0,0x00000000 #li => la
	brid	$L272
	addik	r10,r0,9	# 0x9
$L275:
	brid	$L270
	addk	r11,r0,r0
$L273:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r22,r0,r8
	addk	r22,r8,r8
	addk	r22,r22,r22
	or	r22,r3,r22
	addk	r23,r0,r9
	addk	r23,r9,r9
	addk	r23,r23,r23
	add	r7,r23,r9
	addc	r6,r22,r8
	addk	r5,r0,r7
	srl	r5,r7
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	addk	r4,r6,r6
	addk	r3,r7,r7
	or	r6,r5,r4
	addk	r7,r3,r0
	lbui	r4,r19,-1
	sext8	r4,r4
	addik	r4,r4,-48
	addk	r5,r0,r4
	add	r4,r5,r5
	addc	r4,r0,r0
	beqi	r4,.+8
	addi	r4,r0,0xffffffff
	rsub	r9,r5,r7
	rsubc	r8,r4,r6
$L272:
	lbui	r3,r19,0
	sext8	r3,r3
	addik	r3,r3,-48
	cmpu	r18,r3,r10
	bgeid	r18,$L273
	addik	r19,r19,1
	addk	r4,r8,r0
	bneid	r11,$L274
	addk	r5,r9,r0
	rsub	r5,r9,r0
	rsubc	r4,r8,r0
$L274:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
	.end	atoll
$Lfe48:
	.size	atoll,$Lfe48-atoll
	.align	2
	.globl	bsearch
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	r1,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x07c88000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	addk	r26,r5,r0
	addk	r24,r6,r0
	addk	r19,r7,r0
	addk	r23,r8,r0
	brid	$L280
	addk	r25,r9,r0
$L288:
	srl	r19,r19
$L280:
	beqid	r19,$L287
	addk	r6,r23,r0
	brlid	r15,__mulsi3
	
	srl	r5,r19
	addk	r22,r24,r3
	addk	r6,r22,r0
	brald	r15,r25
	
	addk	r5,r26,r0
	blti	r3,$L288
	bleid	r3,$L285
	addk	r24,r22,r23
	srl	r3,r19
	addik	r19,r19,-1
	brid	$L280
	rsubk	r19,r3,r19
$L287:
	addk	r3,r0,r0
$L283:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	rtsd	r15,8 
	
	addik	r1,r1,52
$L285:
	brid	$L283
	addk	r3,r22,r0
	.end	bsearch
$Lfe49:
	.size	bsearch,$Lfe49-bsearch
	.align	2
	.globl	bsearch_r
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	r1,56,r15		# vars= 0, regs= 7, args= 24
	.mask	0x0fc88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	addk	r27,r5,r0
	addk	r24,r8,r0
	addk	r26,r9,r0
	addk	r25,r10,r0
	addk	r19,r7,r0
	brid	$L290
	addk	r23,r6,r0
$L292:
	sra	r19,r19
$L290:
	beqid	r19,$L296
	addk	r6,r24,r0
	brlid	r15,__mulsi3
	
	sra	r5,r19
	addk	r22,r23,r3
	addk	r7,r25,r0
	addk	r6,r22,r0
	brald	r15,r26
	
	addk	r5,r27,r0
	beqi	r3,$L294
	blei	r3,$L292
	addk	r23,r22,r24
	brid	$L292
	addik	r19,r19,-1
$L296:
	addk	r3,r0,r0
$L291:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
$L294:
	brid	$L291
	addk	r3,r22,r0
	.end	bsearch_r
$Lfe50:
	.size	bsearch_r,$Lfe50-bsearch_r
	.align	2
	.globl	div
	.ent	div
	.type	div, @function
div:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r23,r7,r0
	addk	r6,r7,r0
	brlid	r15,__divsi3
	
	addk	r5,r22,r0
	addk	r24,r3,r0
	addk	r6,r23,r0
	brlid	r15,__modsi3
	
	addk	r5,r22,r0
	swi	r24,r19,0
	swi	r3,r19,4
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
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
	addk	r3,r5,r0
	addk	r5,r0,r3
	sra	r5,r3
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	addk	r4,r5,r0
	xor	r8,r5,r3
	xor	r9,r6,r5
	addk	r6,r8,r0
	addk	r7,r9,r0
	rsub	r9,r5,r7
	rsubc	r8,r4,r6
	addk	r3,r8,r0
	rtsd	r15,8 
	
	addk	r4,r9,r0
	.end	imaxabs
$Lfe52:
	.size	imaxabs,$Lfe52-imaxabs
	.align	2
	.globl	imaxdiv
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	r1,56,r15		# vars= 0, regs= 7, args= 24
	.mask	0x0fc88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	addk	r19,r5,r0
	addk	r23,r6,r0
	addk	r22,r7,r0
	addk	r25,r8,r0
	addk	r24,r9,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	addk	r5,r6,r0
	brlid	r15,__divdi3
	
	addk	r6,r22,r0
	addk	r27,r3,r0
	addk	r26,r4,r0
	addk	r7,r25,r0
	addk	r8,r24,r0
	addk	r5,r23,r0
	brlid	r15,__moddi3
	
	addk	r6,r22,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r27,r19,0
	swi	r26,r19,4
	swi	r4,r19,8
	swi	r5,r19,12
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
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
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	xor	r5,r3,r5
	rtsd	r15,8 
	
	rsubk	r3,r3,r5
	.end	labs
$Lfe54:
	.size	labs,$Lfe54-labs
	.align	2
	.globl	ldiv
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r23,r7,r0
	addk	r6,r7,r0
	brlid	r15,__divsi3
	
	addk	r5,r22,r0
	addk	r24,r3,r0
	addk	r6,r23,r0
	brlid	r15,__modsi3
	
	addk	r5,r22,r0
	swi	r24,r19,0
	swi	r3,r19,4
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
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
	addk	r3,r5,r0
	addk	r5,r0,r3
	sra	r5,r3
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	sra	r5,r5
	addk	r4,r5,r0
	xor	r8,r5,r3
	xor	r9,r6,r5
	addk	r6,r8,r0
	addk	r7,r9,r0
	rsub	r9,r5,r7
	rsubc	r8,r4,r6
	addk	r3,r8,r0
	rtsd	r15,8 
	
	addk	r4,r9,r0
	.end	llabs
$Lfe56:
	.size	llabs,$Lfe56-llabs
	.align	2
	.globl	lldiv
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	r1,56,r15		# vars= 0, regs= 7, args= 24
	.mask	0x0fc88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	addk	r19,r5,r0
	addk	r23,r6,r0
	addk	r22,r7,r0
	addk	r25,r8,r0
	addk	r24,r9,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	addk	r5,r6,r0
	brlid	r15,__divdi3
	
	addk	r6,r22,r0
	addk	r27,r3,r0
	addk	r26,r4,r0
	addk	r7,r25,r0
	addk	r8,r24,r0
	addk	r5,r23,r0
	brlid	r15,__moddi3
	
	addk	r6,r22,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r27,r19,0
	swi	r26,r19,4
	swi	r4,r19,8
	swi	r5,r19,12
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
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
	brid	$L315
	lwi	r3,r5,0
$L316:
	lwi	r3,r5,0
$L315:
	beqi	r3,$L310
	xor	r3,r6,r3
	bneid	r3,$L316
	addik	r5,r5,4
	addik	r5,r5,-4
$L310:
	lwi	r4,r5,0
	beqid	r4,$L314
	addk	r3,r5,r0
$L312:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L314:
	brid	$L312
	addk	r3,r0,r0
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
	brid	$L324
	lwi	r3,r5,0
$L325:
	addik	r6,r6,4
	lwi	r3,r5,0
$L324:
	lwi	r4,r6,0
	xor	r3,r3,r4
	bnei	r3,$L319
	lwi	r3,r5,0
	beqi	r3,$L319
	bneid	r4,$L325
	addik	r5,r5,4
	addik	r5,r5,-4
$L319:
	lwi	r7,r5,0
	lwi	r4,r6,0
	cmp	r18,r4,r7
	bltid	r18,$L321
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r7,r4
	bltid	r18,$L322
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L322:
	andi	r3,r3,0x00ff
$L321:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	addk	r4,r0,r0
	addik	r5,r5,-4
$L327:
	lw	r7,r4,r6
	sw	r7,r4,r3
	addik	r4,r4,4
	lw	r7,r4,r5
	bnei	r7,$L327
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L330
	addk	r3,r5,r0
$L331:
	addik	r3,r3,4
$L330:
	lwi	r4,r3,0
	bnei	r4,$L331
	rsubk	r3,r5,r3
	addk	r4,r3,r0
	addk	r3,r0,r4
	sra	r3,r4
	sra	r3,r3
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
$L333:
	beqid	r7,$L340
	addk	r3,r0,r0
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	bnei	r3,$L334
	lwi	r3,r5,0
	beqi	r3,$L334
	beqi	r4,$L334
	addik	r7,r7,-1
	addik	r5,r5,4
	brid	$L333
	addik	r6,r6,4
$L334:
	beqid	r7,$L336
	addk	r3,r0,r0
	lwi	r7,r5,0
	lwi	r4,r6,0
	cmp	r18,r4,r7
	bltid	r18,$L336
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r7,r4
	bltid	r18,$L337
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L337:
	andi	r3,r3,0x00ff
$L336:
$L340:
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
	bri	$L342
$L349:
	addik	r5,r5,4
$L342:
	beqid	r7,$L348
	addk	r3,r5,r0
	lwi	r4,r5,0
	xor	r4,r6,r4
	bneid	r4,$L349
	addik	r7,r7,-1
	addik	r7,r7,1
	beqi	r7,$L347
$L345:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L347:
$L348:
	brid	$L345
	addk	r3,r0,r0
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
	bri	$L351
$L359:
	addik	r5,r5,4
	addik	r6,r6,4
$L351:
	beqid	r7,$L358
	addk	r3,r0,r0
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	beqid	r3,$L359
	addik	r7,r7,-1
	addik	r7,r7,1
	beqid	r7,$L354
	addk	r3,r0,r0
	lwi	r7,r5,0
	lwi	r4,r6,0
	cmp	r18,r4,r7
	bltid	r18,$L354
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r7,r4
	bltid	r18,$L355
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L355:
	andi	r3,r3,0x00ff
$L354:
$L358:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	brid	$L361
	addk	r4,r0,r0
$L362:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,4
$L361:
	addik	r7,r7,-1
	xori	r8,r7,-1
	bnei	r8,$L362
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	xor	r4,r5,r6
	beqid	r4,$L364
	addk	r3,r5,r0
	rsubk	r5,r6,r5
	addk	r4,r7,r7
	addk	r4,r4,r4
	cmpu	r18,r4,r5
	blti	r18,$L366
	brid	$L365
	addk	r4,r0,r0
$L367:
	lw	r5,r4,r6
	sw	r5,r4,r3
$L366:
	addik	r4,r4,-4
	xori	r5,r4,-4
	bnei	r5,$L367
$L364:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L368:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,4
$L365:
	addik	r7,r7,-1
	xori	r5,r7,-1
	bnei	r5,$L368
	bri	$L364
	.end	wmemmove
$Lfe66:
	.size	wmemmove,$Lfe66-wmemmove
	.align	2
	.globl	wmemset
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	brid	$L371
	addk	r4,r5,r0
$L372:
	addik	r4,r4,4
	swi	r6,r4,-4
$L371:
	addik	r7,r7,-1
	xori	r8,r7,-1
	bnei	r8,$L372
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmpu	r18,r6,r5
	bgeid	r18,$L383
	xor	r4,r5,r6
	addik	r5,r5,-1
	brid	$L374
	addik	r6,r6,-1
$L376:
	lbu	r3,r7,r5
	sb	r3,r7,r6
	addik	r7,r7,-1
$L374:
	bnei	r7,$L376
$L373:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L383:
	bneid	r4,$L378
	addk	r3,r0,r0
	bri	$L373
$L379:
	lbu	r4,r3,r5
	sb	r4,r3,r6
	addik	r3,r3,1
$L378:
	xor	r4,r3,r7
	bnei	r4,$L379
	bri	$L373
	.end	bcopy
$Lfe68:
	.size	bcopy,$Lfe68-bcopy
	.align	2
	.globl	rotl64
	.ent	rotl64
	.type	rotl64, @function
rotl64:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	andi	r3,r7,32 #and1
	beqid	r3,$L385
	srl	r3,r6
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addk	r9,r0,r0
$L386:
	rsubk	r8,r7,r0
	andi	r8,r8,32 #and1
	beqid	r8,$L387
	addk	r10,r5,r5
	rsubk	r7,r7,r0
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addk	r6,r0,r0
$L388:
	or	r3,r6,r3
	rtsd	r15,8 
	
	or	r4,r4,r9
$L385:
	xori	r8,r7,-1
	andi	r18,r8,31
	addk	r4,r0,r3
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r9,r0,r6
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
	brid	$L386
	or	r3,r4,r3
$L387:
	rsubk	r7,r7,r0
	andi	r7,r7,63 #and1
	xori	r4,r7,-1
	andi	r18,r4,31
	addk	r8,r0,r10
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r18,r7,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	brid	$L388
	or	r4,r8,r4
	.end	rotl64
$Lfe69:
	.size	rotl64,$Lfe69-rotl64
	.align	2
	.globl	rotr64
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	andi	r3,r7,32 #and1
	beqid	r3,$L390
	addk	r3,r5,r5
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addk	r9,r0,r0
$L391:
	rsubk	r8,r7,r0
	andi	r8,r8,32 #and1
	beqid	r8,$L392
	srl	r10,r6
	rsubk	r7,r7,r0
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addk	r5,r0,r0
$L393:
	or	r3,r3,r9
	rtsd	r15,8 
	
	or	r4,r5,r4
$L390:
	xori	r4,r7,-1
	andi	r18,r4,31
	addk	r8,r0,r3
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r18,r7,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	brid	$L391
	or	r4,r8,r4
$L392:
	rsubk	r7,r7,r0
	andi	r7,r7,63 #and1
	xori	r3,r7,-1
	andi	r18,r3,31
	addk	r8,r0,r10
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r5,r0,r6
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	brid	$L393
	or	r3,r8,r3
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
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	rsubk	r6,r6,r0
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	addik	r3,r0,16	# 0x10
	rsubk	r6,r6,r3
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r3,r4
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
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addik	r3,r0,16	# 0x10
	rsubk	r6,r6,r3
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r3,r3,r4
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
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	addik	r3,r0,8	# 0x8
	rsubk	r6,r6,r3
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r3,r3,r4
	rtsd	r15,8 
	
	andi	r3,r3,0x00ff
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
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addik	r3,r0,8	# 0x8
	rsubk	r6,r6,r3
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r3,r3,r4
	rtsd	r15,8 
	
	andi	r3,r3,0x00ff
	.end	rotr8
$Lfe78:
	.size	rotr8,$Lfe78-rotr8
	.align	2
	.globl	bswap_16
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r4,r5,0x00ff
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	rtsd	r15,8 
	
	or	r3,r3,r4
	.end	bswap_16
$Lfe79:
	.size	bswap_16,$Lfe79-bswap_16
	.align	2
	.globl	bswap_32
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r4,r0,r5
	srl	r4,r5
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	andi	r6,r5,16711680 #and2
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	or	r3,r3,r4
	andi	r4,r5,65280 #and2
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	or	r3,r3,r4
	src	r4,r5
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	src	r4,r4
	andi	r4,r4,-16777216
	rtsd	r15,8 
	
	or	r3,r3,r4
	.end	bswap_32
$Lfe80:
	.size	bswap_32,$Lfe80-bswap_32
	.align	2
	.globl	bswap_64
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
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
	andi	r7,r5,16711680 #and2
	addk	r4,r0,r7
	srl	r4,r7
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	or	r4,r4,r3
	andi	r7,r5,65280 #and2
	addk	r3,r0,r7
	addk	r3,r7,r7
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	or	r4,r4,r3
	src	r7,r5
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	andi	r7,r7,-16777216
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
	andi	r8,r6,16711680 #and2
	addk	r5,r0,r8
	srl	r5,r8
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	or	r3,r3,r5
	andi	r8,r6,65280 #and2
	addk	r5,r0,r8
	addk	r5,r8,r8
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	or	r3,r3,r5
	src	r5,r6
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	src	r5,r5
	andi	r5,r5,-16777216
	or	r3,r3,r5
	rtsd	r15,8 
	
	or	r4,r4,r7
	.end	bswap_64
$Lfe81:
	.size	bswap_64,$Lfe81-bswap_64
	.align	2
	.globl	ffs
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r0
$L406:
	xori	r4,r3,32
	beqi	r4,$L410
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r4,r4,1 #and1
	bnei	r4,$L411
	brid	$L406
	addik	r3,r3,1
$L411:
	addik	r3,r3,1
$L408:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L410:
	brid	$L408
	addk	r3,r0,r0
	.end	ffs
$Lfe82:
	.size	ffs,$Lfe82-ffs
	.align	2
	.globl	libiberty_ffs
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	beqi	r5,$L416
	brid	$L414
	addik	r3,r0,1	# 0x1
$L415:
	sra	r5,r5
	addik	r3,r3,1
$L414:
	andi	r4,r5,1 #and1
	beqi	r4,$L415
$L413:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L416:
	brid	$L413
	addk	r3,r0,r0
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
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r22,r5,r0
	lwi	r6,r0,$LC0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	bltid	r4,$L418
	addik	r3,r0,1	# 0x1
	lwi	r6,r0,$LC1
	addk	r5,r22,r0
	brlid	r15,__gtsf2
	
	addik	r19,r0,1	# 0x1
	blei	r3,$L422
$L419:
	andi	r3,r19,0x00ff
$L418:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L422:
	brid	$L419
	addk	r19,r0,r0
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
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r22,r5,r0
	lwi	r7,r0,$LC2
	lwi	r8,r0,$LC2+4
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	addk	r4,r3,r0
	bltid	r4,$L424
	addik	r3,r0,1	# 0x1
	addik	r19,r0,1	# 0x1
	lwi	r7,r0,$LC3
	lwi	r8,r0,$LC3+4
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	blei	r3,$L428
$L425:
	andi	r3,r19,0x00ff
$L424:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
$L428:
	brid	$L425
	addk	r19,r0,r0
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
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r22,r5,r0
	lwi	r7,r0,$LC4
	lwi	r8,r0,$LC4+4
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	addk	r4,r3,r0
	bltid	r4,$L430
	addik	r3,r0,1	# 0x1
	addik	r19,r0,1	# 0x1
	lwi	r7,r0,$LC5
	lwi	r8,r0,$LC5+4
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	blei	r3,$L434
$L431:
	andi	r3,r19,0x00ff
$L430:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
$L434:
	brid	$L431
	addk	r19,r0,r0
	.end	gl_isinfl
$Lfe86:
	.size	gl_isinfl,$Lfe86-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r5,r0
	brlid	r15,__floatsidf
	
	addk	r5,r6,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r19,0
	swi	r5,r19,4
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	_Qp_itoq
$Lfe87:
	.size	_Qp_itoq,$Lfe87-_Qp_itoq
	.align	2
	.globl	ldexpf
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r23,r5,r0
	addk	r19,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L438
	addk	r6,r23,r0
	addk	r5,r23,r0
	brlid	r15,__addsf3
	nop		# Unfilled delay slot

	addk	r6,r3,r0
	addk	r5,r23,r0
	brlid	r15,__nesf2
	nop		# Unfilled delay slot

	beqi	r3,$L438
	addik	r22,r0,0x40000000
	bgeid	r19,$L442
	andi	r3,r19,1 #and1
	addik	r22,r0,0x3f000000
	bri	$L446
$L441:
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
	srl	r3,r3
	srl	r3,r3
	addk	r19,r3,r19
	sra	r19,r19
	beqi	r19,$L438
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
$L442:
	andi	r3,r19,1 #and1
$L446:
	beqi	r3,$L441
	addk	r6,r22,r0
	addk	r5,r23,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r23,r3,r0
	bri	$L441
$L438:
	addk	r3,r23,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
	.end	ldexpf
$Lfe88:
	.size	ldexpf,$Lfe88-ldexpf
	.align	2
	.globl	ldexp
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r19,r7,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L448
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__adddf3
	
	addk	r6,r25,r0
	addk	r7,r3,r0
	addk	r8,r4,r0
	addk	r5,r24,r0
	brlid	r15,__nedf2
	
	addk	r6,r25,r0
	beqid	r3,$L458
	addk	r3,r24,r0
	blti	r19,$L456
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L457
	andi	r3,r19,1 #and1
$L456:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L457
	andi	r3,r19,1 #and1
$L451:
	addk	r4,r0,r19
	srl	r4,r19
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r4,r4,r19
	sra	r19,r4
	beqid	r19,$L448
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	andi	r3,r19,1 #and1
$L457:
	beqid	r3,$L451
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	brid	$L451
	addk	r25,r4,r0
$L448:
	addk	r3,r24,r0
$L458:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	ldexp
$Lfe89:
	.size	ldexp,$Lfe89-ldexp
	.align	2
	.globl	ldexpl
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r19,r7,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L460
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__adddf3
	
	addk	r6,r25,r0
	addk	r7,r3,r0
	addk	r8,r4,r0
	addk	r5,r24,r0
	brlid	r15,__nedf2
	
	addk	r6,r25,r0
	beqid	r3,$L470
	addk	r3,r24,r0
	blti	r19,$L468
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L469
	andi	r3,r19,1 #and1
$L468:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L469
	andi	r3,r19,1 #and1
$L463:
	addk	r4,r0,r19
	srl	r4,r19
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r4,r4,r19
	sra	r19,r4
	beqid	r19,$L460
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	andi	r3,r19,1 #and1
$L469:
	beqid	r3,$L463
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	brid	$L463
	addk	r25,r4,r0
$L460:
	addk	r3,r24,r0
$L470:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	ldexpl
$Lfe90:
	.size	ldexpl,$Lfe90-ldexpl
	.align	2
	.globl	memxor
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	brid	$L472
	addk	r4,r0,r0
$L473:
	lbu	r5,r4,r6
	lbu	r8,r4,r3
	xor	r8,r8,r5
	sb	r8,r4,r3
	addik	r4,r4,1
$L472:
	xor	r5,r4,r7
	bnei	r5,$L473
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
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r23,r5,r0
	addk	r22,r6,r0
	brlid	r15,strlen
	
	addk	r19,r7,r0
	brid	$L475
	addk	r3,r23,r3
$L477:
	addik	r3,r3,1
	addik	r19,r19,-1
$L475:
	beqi	r19,$L476
	lbui	r4,r22,0
	sbi	r4,r3,0
	sext8	r4,r4
	bneid	r4,$L477
	addik	r22,r22,1
$L476:
	bnei	r19,$L478
	sbi	r0,r3,0
$L478:
	addk	r3,r23,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
	.end	strncat
$Lfe92:
	.size	strncat,$Lfe92-strncat
	.align	2
	.globl	strnlen
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r0
$L481:
	xor	r4,r3,r6
	beqi	r4,$L482
	lbu	r4,r3,r5
	bnei	r4,$L483
$L482:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L483:
	brid	$L481
	addik	r3,r3,1
	.end	strnlen
$Lfe93:
	.size	strnlen,$Lfe93-strnlen
	.align	2
	.globl	strpbrk
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
$L485:
	lbui	r3,r5,0
	beqi	r3,$L486
	addk	r7,r6,r0
$L488:
	lbui	r4,r7,0
	beqid	r4,$L491
	addik	r7,r7,1
	lbui	r8,r7,-1
	lbui	r4,r5,0
	xor	r4,r4,r8
	sext8	r4,r4
	bnei	r4,$L488
	addk	r3,r5,r0
$L486:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L491:
	brid	$L485
	addik	r5,r5,1
	.end	strpbrk
$Lfe94:
	.size	strpbrk,$Lfe94-strpbrk
	.align	2
	.globl	strrchr
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L494
	addk	r3,r0,r0
$L493:
	addik	r5,r5,1
	lbui	r4,r5,-1
	beqi	r4,$L497
$L494:
	lbui	r4,r5,0
	sext8	r4,r4
	xor	r4,r6,r4
	bnei	r4,$L493
	brid	$L493
	addk	r3,r5,r0
$L497:
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
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r19,r5,r0
	addk	r22,r6,r0
	brlid	r15,strlen
	
	addk	r5,r6,r0
	beqid	r3,$L502
	addk	r23,r3,r0
	lbui	r24,r22,0
	sext8	r24,r24
$L500:
	addk	r6,r24,r0
	brlid	r15,strchr
	
	addk	r5,r19,r0
	beqid	r3,$L505
	addk	r19,r3,r0
	addk	r7,r23,r0
	addk	r6,r22,r0
	brlid	r15,strncmp
	
	addk	r5,r19,r0
	beqid	r3,$L506
	addk	r3,r19,r0
	brid	$L500
	addik	r19,r19,1
$L505:
	brid	$L499
	addk	r3,r0,r0
$L502:
	addk	r3,r19,r0
$L499:
$L506:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
	.end	strstr
$Lfe96:
	.size	strstr,$Lfe96-strstr
	.align	2
	.globl	copysign
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r22,r5,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bltid	r3,$L521
	addk	r5,r24,r0
$L508:
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L518
	addk	r4,r22,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	blti	r3,$L510
	addk	r4,r22,r0
	addk	r5,r23,r0
$L511:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L521:
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__gtdf2
	
	addk	r6,r25,r0
	blei	r3,$L508
$L510:
	addik	r4,r22,-2147483648
	brid	$L511
	addk	r5,r23,r0
$L518:
	brid	$L511
	addk	r5,r23,r0
	.end	copysign
$Lfe97:
	.size	copysign,$Lfe97-copysign
	.align	2
	.globl	memmem
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r5,r0
	rsubk	r23,r8,r6
	beqid	r8,$L528
	addk	r23,r5,r23
	addk	r22,r7,r0
	cmpu	r18,r8,r6
	bltid	r18,$L524
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L524:
	andi	r3,r3,0x00ff
	bneid	r3,$L529
	addik	r25,r22,1
	brid	$L525
	addik	r24,r8,-1
$L526:
	addik	r19,r19,1
$L525:
	cmpu	r18,r19,r23
	bltid	r18,$L532
	addk	r3,r0,r0
	lbui	r3,r19,0
	lbui	r4,r22,0
	xor	r4,r4,r3
	sext8	r4,r4
	bneid	r4,$L526
	addk	r7,r24,r0
	addk	r6,r25,r0
	brlid	r15,memcmp
	
	addik	r5,r19,1
	bneid	r3,$L525
	addik	r19,r19,1
	addik	r19,r19,-1
	addk	r3,r19,r0
$L532:
$L523:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L528:
	brid	$L523
	addk	r3,r5,r0
$L529:
	brid	$L523
	addk	r3,r0,r0
	.end	memmem
$Lfe98:
	.size	memmem,$Lfe98-memmem
	.align	2
	.globl	mempcpy
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	brlid	r15,memcpy
	
	addk	r19,r7,r0
	addk	r3,r3,r19
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	mempcpy
$Lfe99:
	.size	mempcpy,$Lfe99-mempcpy
	.align	2
	.globl	frexp
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	r1,64,r15		# vars= 0, regs= 9, args= 24
	.mask	0x3fc88000
	addik	r1,r1,-64
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r28,r1,56
	swi	r29,r1,60
	addk	r22,r5,r0
	addk	r28,r7,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bltid	r3,$L555
	addk	r29,r0,r0
$L536:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__gedf2
	
	addk	r6,r23,r0
	bltid	r3,$L553
	addk	r19,r0,r0
	addik	r24,r0,0x3ff00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addik	r26,r0,0x3fe00000 
	addik	r27,r0,0x00000000 #Xfer Lo
	brid	$L556
	addk	r7,r24,r0
$L555:
	addik	r4,r22,-2147483648
	addk	r22,r4,r0
	brid	$L536
	addik	r29,r0,1	# 0x1
$L540:
	addik	r19,r19,1
	addk	r8,r27,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	addk	r7,r24,r0
$L556:
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gedf2
	
	addk	r6,r23,r0
	bgeid	r3,$L540
	addk	r7,r26,r0
$L541:
	beqid	r29,$L546
	swi	r19,r28,0
	addik	r4,r22,-2147483648
	addk	r22,r4,r0
$L546:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	lwi	r29,r1,60
	rtsd	r15,8 
	
	addik	r1,r1,64
$L553:
	addik	r19,r0,1	# 0x1
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r22,r0
	brlid	r15,__nedf2
	
	addk	r6,r23,r0
	bneid	r3,$L557
	andi	r19,r19,0x00ff
	addk	r19,r0,r0
	andi	r19,r19,0x00ff
$L557:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
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
	and	r4,r4,r19
	bnei	r4,$L549
	brid	$L541
	addk	r19,r0,r0
$L545:
	addik	r19,r19,-1
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__adddf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
$L544:
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bltid	r3,$L545
	addk	r7,r22,r0
	bri	$L541
$L549:
	addik	r24,r0,0x3fe00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	brid	$L544
	addk	r19,r0,r0
	.end	frexp
$Lfe100:
	.size	frexp,$Lfe100-frexp
	.align	2
	.globl	__muldi3
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	r1,28,r15		# vars= 0, regs= 6, args= 0
	.mask	0x0fc00000
	addik	r1,r1,-28
	swi	r22,r1,4
	swi	r23,r1,8
	swi	r24,r1,12
	swi	r25,r1,16
	swi	r26,r1,20
	swi	r27,r1,24
	addik	r24,r0,0x00000000
	addik	r25,r0,0x00000000 #li => la
	brid	$L559
	addk	r4,r0,r0
$L560:
	andi	r11,r6,1 #and1
	rsub	r27,r11,r0
	rsubc	r26,r10,r0
	and	r22,r7,r26
	and	r23,r8,r27
	addk	r3,r0,r8
	srl	r3,r8
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r7,r7,r7
	or	r7,r3,r7
	addk	r8,r8,r8
	src	r3,r5
	src	r3,r3
	andi	r3,r3,-2147483648
	srl	r6,r6
	or	r6,r3,r6
	srl	r5,r5
	add	r25,r25,r23
	addc	r24,r24,r22
$L559:
	or	r3,r5,r6
	bneid	r3,$L560
	addk	r10,r4,r0
	addk	r3,r24,r0
	addk	r4,r25,r0
	lwi	r22,r1,4
	lwi	r23,r1,8
	lwi	r24,r1,12
	lwi	r25,r1,16
	lwi	r26,r1,20
	lwi	r27,r1,24
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	__muldi3
$Lfe101:
	.size	__muldi3,$Lfe101-__muldi3
	.align	2
	.globl	udivmodsi4
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r4,r0,1	# 0x1
	addik	r10,r0,1	# 0x1
	brid	$L563
	addk	r11,r0,r0
$L564:
	rsubk	r9,r4,r0
	or	r9,r9,r4
	addk	r8,r0,r9
	srl	r8,r9
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	and	r8,r8,r3
	beqi	r8,$L571
	blti	r6,$L573
	addk	r6,r6,r6
	addk	r4,r4,r4
$L563:
	cmpu	r18,r5,r6
	bltid	r18,$L564
	addk	r3,r10,r0
	brid	$L564
	addk	r3,r11,r0
$L573:
	brid	$L567
	addk	r3,r0,r0
$L571:
	brid	$L567
	addk	r3,r0,r0
$L568:
	srl	r4,r4
	srl	r6,r6
$L567:
	beqi	r4,$L574
	cmpu	r18,r6,r5
	blti	r18,$L568
	rsubk	r5,r6,r5
	brid	$L568
	or	r3,r3,r4
$L574:
	bnei	r7,$L575
$L570:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L575:
	brid	$L570
	addk	r3,r5,r0
	.end	udivmodsi4
$Lfe102:
	.size	udivmodsi4,$Lfe102-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	xor	r5,r3,r5
	beqi	r5,$L578
	addik	r1,r1,-28
	swi	r15,r1,0
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	brlid	r15,__clzsi2
	
	addk	r5,r5,r5
	addik	r3,r3,-1
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
$L578:
	rtsd	r15, 8
	
	addik	r3,r0,7	# 0x7
	.end	__clrsbqi2
$Lfe103:
	.size	__clrsbqi2,$Lfe103-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	xor	r5,r3,r5
	xor	r6,r3,r6
	or	r3,r5,r6
	beqi	r3,$L586
	addik	r1,r1,-28
	swi	r15,r1,0
	brlid	r15,__clzdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
$L586:
	rtsd	r15, 8
	
	addik	r3,r0,63	# 0x3f
	.end	__clrsbdi2
$Lfe104:
	.size	__clrsbdi2,$Lfe104-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L592
	addk	r3,r0,r0
$L593:
	rsubk	r4,r4,r0
	and	r4,r4,r6
	srl	r5,r5
	addk	r6,r6,r6
	addk	r3,r4,r3
$L592:
	bneid	r5,$L593
	andi	r4,r5,1 #and1
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
	.frame	r1,12,r15		# vars= 0, regs= 2, args= 0
	.mask	0x00c00000
	addk	r11,r0,r7
	srl	r11,r7
	srl	r11,r11
	srl	r11,r11
	cmpu	r18,r6,r5
	bltid	r18,$L595
	andi	r3,r7,-8 #and1
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	bgei	r18,$L596
$L595:
	addk	r9,r6,r0
	addk	r4,r0,r0
	xor	r10,r4,r11
	beqid	r10,$L607
	addk	r8,r5,r0
	addik	r1,r1,-12
	swi	r22,r1,4
	swi	r23,r1,8
$L598:
	lwi	r22,r9,0
	lwi	r23,r9,4
	swi	r22,r8,0
	swi	r23,r8,4
	addik	r4,r4,1
	addik	r9,r9,8
	xor	r10,r4,r11
	bneid	r10,$L598
	addik	r8,r8,8
	bri	$L599
$L600:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
$L599:
	cmpu	r18,r7,r3
	bltid	r18,$L600
	lwi	r22,r1,4
	lwi	r23,r1,8
	rtsd	r15,8 
	
	addik	r1,r1,12
$L602:
	lbu	r3,r7,r6
	sb	r3,r7,r5
$L596:
	addik	r7,r7,-1
	xori	r3,r7,-1
	bnei	r3,$L602
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L608:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
$L607:
	cmpu	r18,r7,r3
	blti	r18,$L608
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	__cmovd
$Lfe106:
	.size	__cmovd,$Lfe106-__cmovd
	.align	2
	.globl	__cmovh
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmpu	r18,r6,r5
	bltid	r18,$L613
	srl	r8,r7
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	bgei	r18,$L614
$L613:
	addk	r8,r8,r8
	brid	$L615
	addk	r3,r0,r0
$L616:
	lhu	r4,r3,r6
	sh	r4,r3,r5
	addik	r3,r3,2
$L615:
	xor	r4,r3,r8
	bnei	r4,$L616
	andi	r3,r7,1 #and1
	beqid	r3,$L612
	addik	r7,r7,-1
	lbu	r3,r7,r6
	sb	r3,r7,r5
$L612:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L618:
	lbu	r3,r7,r6
	sb	r3,r7,r5
$L614:
	addik	r7,r7,-1
	xori	r3,r7,-1
	bnei	r3,$L618
	bri	$L612
	.end	__cmovh
$Lfe107:
	.size	__cmovh,$Lfe107-__cmovh
	.align	2
	.globl	__cmovw
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r9,r0,r7
	srl	r9,r7
	srl	r9,r9
	cmpu	r18,r6,r5
	bltid	r18,$L621
	andi	r3,r7,-4 #and1
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	bgei	r18,$L622
$L621:
	addk	r9,r9,r9
	addk	r9,r9,r9
	brid	$L623
	addk	r4,r0,r0
$L624:
	lw	r8,r4,r6
	sw	r8,r4,r5
	addik	r4,r4,4
$L623:
	xor	r8,r4,r9
	bnei	r8,$L624
	bri	$L625
$L626:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
$L625:
	cmpu	r18,r7,r3
	blti	r18,$L626
$L620:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L628:
	lbu	r3,r7,r6
	sb	r3,r7,r5
$L622:
	addik	r7,r7,-1
	xori	r3,r7,-1
	bnei	r3,$L628
	bri	$L620
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
	brlid	r15,__modsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	brlid	r15,__floatunsidf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	brlid	r15,__floatunsisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	brlid	r15,__floatundidf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	brlid	r15,__floatundisf
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	brlid	r15,__umodsi3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	__umodi
$Lfe114:
	.size	__umodi,$Lfe114-__umodi
	.align	2
	.globl	__clzhi2
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r0
$L643:
	xori	r4,r3,16
	beqid	r4,$L644
	addik	r4,r0,15	# 0xf
	rsubk	r6,r3,r4
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	andi	r4,r4,1 #and1
	bnei	r4,$L644
	brid	$L643
	addik	r3,r3,1
$L644:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r0
$L647:
	xori	r4,r3,16
	beqi	r4,$L648
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	andi	r4,r4,1 #and1
	bnei	r4,$L648
	brid	$L647
	addik	r3,r3,1
$L648:
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
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r5,r0
	addik	r6,r0,0x47000000
	brlid	r15,__gesf2
	nop		# Unfilled delay slot

	bgei	r3,$L657
	addk	r5,r19,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	lwi	r15,r1,0
$L658:
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
$L657:
	addik	r6,r0,0x47000000
	addk	r5,r19,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	addik	r3,r3,32768
	brid	$L658
	lwi	r15,r1,0
	.end	__fixunssfsi
$Lfe117:
	.size	__fixunssfsi,$Lfe117-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r0
	brid	$L660
	addk	r4,r3,r0
$L661:
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r6,r6
	andi	r6,r6,1 #and1
	addik	r4,r4,1
	addk	r3,r6,r3
$L660:
	xori	r6,r4,16
	bnei	r6,$L661
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
	.end	__parityhi2
$Lfe118:
	.size	__parityhi2,$Lfe118-__parityhi2
	.align	2
	.globl	__popcounthi2
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r0
	brid	$L663
	addk	r4,r3,r0
$L664:
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r6,r6
	andi	r6,r6,1 #and1
	addik	r4,r4,1
	addk	r3,r6,r3
$L663:
	xori	r6,r4,16
	bnei	r6,$L664
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	brid	$L666
	addk	r3,r0,r0
$L667:
	rsubk	r4,r4,r0
	and	r4,r4,r6
	srl	r5,r5
	addk	r6,r6,r6
	addk	r3,r4,r3
$L666:
	bneid	r5,$L667
	andi	r4,r5,1 #and1
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	beqi	r5,$L672
	brid	$L670
	addk	r3,r0,r0
$L671:
	rsubk	r4,r4,r0
	and	r4,r4,r5
	addk	r5,r5,r5
	srl	r6,r6
	addk	r3,r4,r3
$L670:
	bneid	r6,$L671
	andi	r4,r6,1 #and1
$L669:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L672:
	brid	$L669
	addk	r3,r0,r0
	.end	__mulsi3_lm32
$Lfe121:
	.size	__mulsi3_lm32,$Lfe121-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r4,r0,1	# 0x1
	addik	r10,r0,1	# 0x1
	brid	$L674
	addk	r11,r0,r0
$L675:
	rsubk	r9,r4,r0
	or	r9,r9,r4
	addk	r8,r0,r9
	srl	r8,r9
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	and	r8,r8,r3
	beqi	r8,$L682
	blti	r6,$L684
	addk	r6,r6,r6
	addk	r4,r4,r4
$L674:
	cmpu	r18,r5,r6
	bltid	r18,$L675
	addk	r3,r10,r0
	brid	$L675
	addk	r3,r11,r0
$L684:
	brid	$L678
	addk	r3,r0,r0
$L682:
	brid	$L678
	addk	r3,r0,r0
$L679:
	srl	r4,r4
	srl	r6,r6
$L678:
	beqi	r4,$L685
	cmpu	r18,r6,r5
	blti	r18,$L679
	rsubk	r5,r6,r5
	brid	$L679
	or	r3,r3,r4
$L685:
	bnei	r7,$L686
$L681:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L686:
	brid	$L681
	addk	r3,r5,r0
	.end	__udivmodsi4
$Lfe122:
	.size	__udivmodsi4,$Lfe122-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r5,r0
	addk	r22,r6,r0
	brlid	r15,__ltsf2
	
	swi	r23,r1,36
	bltid	r3,$L693
	addik	r3,r0,-1	# 0xffffffffffffffff
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__gtsf2
	
	addik	r23,r0,1	# 0x1
	blei	r3,$L692
$L689:
	andi	r3,r23,0x00ff
$L688:
$L693:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
$L692:
	brid	$L689
	addk	r23,r0,r0
	.end	__mspabi_cmpf
$Lfe123:
	.size	__mspabi_cmpf,$Lfe123-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	brlid	r15,__ltdf2
	
	addk	r25,r8,r0
	bltid	r3,$L697
	addik	r19,r0,1	# 0x1
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	blei	r3,$L699
$L696:
	andi	r3,r19,0x00ff
$L695:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L699:
	brid	$L696
	addk	r19,r0,r0
$L697:
	brid	$L695
	addik	r3,r0,-1	# 0xffffffffffffffff
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
	addk	r5,r0,r5
	add	r4,r5,r5
	addc	r4,r0,r0
	beqi	r4,.+8
	addi	r4,r0,0xffffffff
	addk	r7,r0,r6
	add	r6,r7,r7
	addc	r6,r0,r0
	beqi	r6,.+8
	addi	r6,r0,0xffffffff
	addk	r8,r7,r0
	addk	r7,r6,r0
	addk	r6,r5,r0
	brlid	r15,__muldi3
	
	addk	r5,r4,r0
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	addk	r3,r5,r0
	addk	r5,r0,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	brlid	r15,__muldi3
	
	addk	r6,r3,r0
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	__mspabi_mpyull
$Lfe126:
	.size	__mspabi_mpyull,$Lfe126-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	bltid	r6,$L713
	addk	r19,r0,r0
$L705:
	addk	r9,r0,r0
	addk	r4,r9,r0
	addik	r11,r0,1	# 0x1
	addik	r10,r0,31	# 0x1f
	brid	$L706
	addk	r12,r0,r0
$L713:
	rsubk	r6,r6,r0
	brid	$L705
	addik	r19,r0,1	# 0x1
$L707:
	and	r3,r3,r8
	beqid	r3,$L714
	addik	r4,r4,1
	andi	r3,r6,1 #and1
	rsubk	r3,r3,r0
	and	r3,r3,r5
	addk	r5,r5,r5
	sra	r6,r6
	sext8	r4,r4
	addk	r9,r9,r3
$L706:
	rsubk	r7,r6,r0
	or	r7,r7,r6
	addk	r3,r0,r7
	srl	r3,r7
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r7,r4,0x00ff
	cmpu	r18,r7,r10
	bgeid	r18,$L707
	addk	r8,r11,r0
	brid	$L707
	addk	r8,r12,r0
$L714:
	beqid	r19,$L709
	addk	r3,r9,r0
	rsubk	r3,r9,r0
$L709:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__mulhi3
$Lfe127:
	.size	__mulhi3,$Lfe127-__mulhi3
	.align	2
	.globl	__divsi3
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	bltid	r5,$L721
	addk	r19,r0,r0
$L716:
	blti	r6,$L722
$L717:
	brlid	r15,__udivmodsi4
	
	addk	r7,r0,r0
	beqid	r19,$L723
	lwi	r15,r1,0
	rsubk	r3,r3,r0
$L723:
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
$L721:
	rsubk	r5,r5,r0
	brid	$L716
	addik	r19,r0,1	# 0x1
$L722:
	rsubk	r6,r6,r0
	brid	$L717
	xori	r19,r19,1
	.end	__divsi3
$Lfe128:
	.size	__divsi3,$Lfe128-__divsi3
	.align	2
	.globl	__modsi3
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	bltid	r5,$L729
	addk	r19,r0,r0
$L725:
	addk	r3,r0,r6
	sra	r3,r6
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	xor	r6,r3,r6
	addik	r7,r0,1	# 0x1
	brlid	r15,__udivmodsi4
	
	rsubk	r6,r3,r6
	beqid	r19,$L730
	lwi	r15,r1,0
	rsubk	r3,r3,r0
$L730:
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
$L729:
	rsubk	r5,r5,r0
	brid	$L725
	addik	r19,r0,1	# 0x1
	.end	__modsi3
$Lfe129:
	.size	__modsi3,$Lfe129-__modsi3
	.align	2
	.globl	__udivmodhi4
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r4,r0,1	# 0x1
	addik	r10,r0,1	# 0x1
	brid	$L732
	addk	r11,r0,r0
$L733:
	rsubk	r9,r4,r0
	addk	r8,r0,r9
	srl	r8,r9
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	and	r8,r8,r3
	beqid	r8,$L736
	addk	r3,r0,r0
	sext16	r3,r6
	blti	r3,$L742
	addk	r6,r6,r6
	andi	r6,r6,0xffff
	addk	r4,r4,r4
	andi	r4,r4,0xffff
$L732:
	cmpu	r18,r5,r6
	bltid	r18,$L733
	addk	r3,r10,r0
	brid	$L733
	addk	r3,r11,r0
$L742:
	brid	$L736
	addk	r3,r0,r0
$L737:
	srl	r4,r4
	srl	r6,r6
$L736:
	beqi	r4,$L743
	cmpu	r18,r6,r5
	blti	r18,$L737
	rsubk	r5,r6,r5
	andi	r5,r5,0xffff
	brid	$L737
	or	r3,r3,r4
$L743:
	bnei	r7,$L744
$L739:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L744:
	brid	$L739
	addk	r3,r5,r0
	.end	__udivmodhi4
$Lfe130:
	.size	__udivmodhi4,$Lfe130-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r4,r0,1	# 0x1
	addik	r10,r0,1	# 0x1
	brid	$L746
	addk	r11,r0,r0
$L747:
	rsubk	r9,r4,r0
	or	r9,r9,r4
	addk	r8,r0,r9
	srl	r8,r9
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	and	r8,r8,r3
	beqi	r8,$L754
	blti	r6,$L756
	addk	r6,r6,r6
	addk	r4,r4,r4
$L746:
	cmpu	r18,r5,r6
	bltid	r18,$L747
	addk	r3,r10,r0
	brid	$L747
	addk	r3,r11,r0
$L756:
	brid	$L750
	addk	r3,r0,r0
$L754:
	brid	$L750
	addk	r3,r0,r0
$L751:
	srl	r4,r4
	srl	r6,r6
$L750:
	beqi	r4,$L757
	cmpu	r18,r6,r5
	blti	r18,$L751
	rsubk	r5,r6,r5
	brid	$L751
	or	r3,r3,r4
$L757:
	bnei	r7,$L758
$L753:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L758:
	brid	$L753
	addk	r3,r5,r0
	.end	__udivmodsi4_libgcc
$Lfe131:
	.size	__udivmodsi4_libgcc,$Lfe131-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	andi	r3,r7,32 #and1
	beqid	r3,$L760
	addk	r4,r0,r0
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
$L762:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L760:
	beqi	r7,$L763
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	andi	r18,r7,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	addik	r3,r0,32	# 0x20
	rsubk	r7,r7,r3
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	brid	$L762
	or	r3,r3,r8
$L763:
	addk	r3,r5,r0
	brid	$L762
	addk	r4,r6,r0
	.end	__ashldi3
$Lfe132:
	.size	__ashldi3,$Lfe132-__ashldi3
	.align	2
	.globl	__ashrdi3
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	andi	r3,r7,32 #and1
	beqi	r3,$L765
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
$L767:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L765:
	beqi	r7,$L768
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	addik	r4,r0,32	# 0x20
	rsubk	r4,r7,r4
	andi	r18,r4,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	brid	$L767
	or	r4,r8,r4
$L768:
	addk	r3,r5,r0
	brid	$L767
	addk	r4,r6,r0
	.end	__ashrdi3
$Lfe133:
	.size	__ashrdi3,$Lfe133-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r4,r0,r5
	srl	r4,r5
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r9,r0,r5
	srl	r9,r5
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	andi	r9,r9,65280 #and2
	addk	r8,r0,r5
	addk	r8,r5,r5
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	andi	r8,r8,16711680 #and2
	src	r10,r5
	src	r10,r10
	src	r10,r10
	src	r10,r10
	src	r10,r10
	src	r10,r10
	src	r10,r10
	src	r10,r10
	src	r10,r10
	andi	r10,r10,-16777216
	addk	r5,r0,r6
	addk	r5,r6,r6
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	addk	r7,r0,r6
	srl	r7,r6
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
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
	andi	r6,r7,65280 #and2
	andi	r5,r5,16711680 #and2
	or	r4,r4,r9
	or	r4,r4,r8
	or	r3,r3,r11
	or	r3,r3,r6
	or	r3,r3,r5
	rtsd	r15,8 
	
	or	r4,r4,r10
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
	addk	r7,r0,r5
	srl	r7,r5
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	addk	r6,r0,r5
	srl	r6,r5
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	andi	r6,r6,65280 #and2
	addk	r3,r5,r5
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	andi	r4,r3,16711680 #and2
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
	or	r3,r3,r7
	or	r3,r3,r6
	rtsd	r15,8 
	
	or	r3,r3,r4
	.end	__bswapsi2
$Lfe135:
	.size	__bswapsi2,$Lfe135-__bswapsi2
	.align	2
	.globl	__clzsi2
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r3,r0,65535
	cmpu	r18,r5,r3
	bgeid	r18,$L772
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L772:
	andi	r4,r4,0x00ff
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addik	r3,r0,16	# 0x10
	rsubk	r3,r4,r3
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	andi	r3,r6,65280 #and2
	rsubk	r5,r3,r0
	or	r5,r5,r3
	xori	r5,r5,-1
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
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addik	r5,r0,8	# 0x8
	rsubk	r5,r3,r5
	addk	r7,r6,r0
	andi	r18,r5,31
	addk	r6,r0,r7
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	addk	r4,r4,r3
	andi	r3,r6,240 #and1
	rsubk	r5,r3,r0
	or	r5,r5,r3
	xori	r5,r5,-1
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
	addk	r3,r3,r3
	addk	r3,r3,r3
	addik	r5,r0,4	# 0x4
	rsubk	r5,r3,r5
	addk	r7,r6,r0
	andi	r18,r5,31
	addk	r6,r0,r7
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	addk	r4,r4,r3
	andi	r3,r6,12 #and1
	rsubk	r5,r3,r0
	or	r5,r5,r3
	xori	r5,r5,-1
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
	addk	r3,r3,r3
	addik	r7,r0,2	# 0x2
	rsubk	r5,r3,r7
	addk	r8,r6,r0
	andi	r18,r5,31
	addk	r6,r0,r8
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	addk	r4,r4,r3
	and	r3,r6,r7
	srl	r3,r3
	rsubk	r6,r6,r7
	addik	r3,r3,-1
	and	r3,r3,r6
	rtsd	r15,8 
	
	addk	r3,r4,r3
	.end	__clzsi2
$Lfe136:
	.size	__clzsi2,$Lfe136-__clzsi2
	.align	2
	.globl	__cmpdi2
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmp	r18,r7,r5
	bltid	r18,$L775
	addk	r3,r0,r0
	cmp	r18,r5,r7
	bltid	r18,$L779
	addik	r3,r0,2	# 0x2
	cmpu	r18,r8,r6
	bltid	r18,$L779
	addk	r3,r0,r0
	cmpu	r18,r6,r8
	blti	r18,$L778
	addik	r3,r0,1	# 0x1
$L775:
$L774:
$L779:
	rtsd	r15,8 
	nop		# Unfilled delay slot

	brid	$L774
	addk	r3,r0,r0
$L778:
	brid	$L774
	addik	r3,r0,2	# 0x2
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
	brlid	r15,__cmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	__aeabi_lcmp
$Lfe138:
	.size	__aeabi_lcmp,$Lfe138-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	andi	r4,r5,65535 #and2
	rsubk	r3,r4,r0
	or	r3,r3,r4
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
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	andi	r18,r4,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r5,r3,255 #and1
	rsubk	r6,r5,r0
	or	r6,r6,r5
	xori	r6,r6,-1
	addk	r5,r0,r6
	srl	r5,r6
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r6,r3,r0
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	addk	r4,r4,r5
	andi	r5,r3,15 #and1
	rsubk	r6,r5,r0
	or	r6,r6,r5
	xori	r6,r6,-1
	addk	r5,r0,r6
	srl	r5,r6
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r6,r3,r0
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	addk	r4,r4,r5
	andi	r5,r3,3 #and1
	rsubk	r6,r5,r0
	or	r6,r6,r5
	xori	r6,r6,-1
	addk	r5,r0,r6
	srl	r5,r6
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	addk	r5,r5,r5
	addk	r6,r3,r0
	andi	r18,r5,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r3,r3,3 #and1
	addk	r4,r4,r5
	xori	r5,r3,-1
	andi	r5,r5,1 #and1
	srl	r3,r3
	addik	r6,r0,2	# 0x2
	rsubk	r3,r3,r6
	rsubk	r5,r5,r0
	and	r3,r3,r5
	rtsd	r15,8 
	
	addk	r3,r4,r3
	.end	__ctzsi2
$Lfe139:
	.size	__ctzsi2,$Lfe139-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	andi	r3,r7,32 #and1
	beqid	r3,$L784
	addk	r3,r0,r0
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
$L786:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L784:
	beqi	r7,$L787
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	addik	r4,r0,32	# 0x20
	rsubk	r4,r7,r4
	andi	r18,r4,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	brid	$L786
	or	r4,r8,r4
$L787:
	addk	r3,r5,r0
	brid	$L786
	addk	r4,r6,r0
	.end	__lshrdi3
$Lfe140:
	.size	__lshrdi3,$Lfe140-__lshrdi3
	.align	2
	.globl	__muldsi3
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	r1,56,r15		# vars= 0, regs= 7, args= 24
	.mask	0x0fc88000
	addik	r1,r1,-56
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	addk	r26,r5,r0
	addk	r22,r6,r0
	andi	r24,r5,65535 #and2
	andi	r27,r6,65535 #and2
	addk	r6,r27,r0
	brlid	r15,__mulsi3
	
	addk	r5,r24,r0
	addk	r19,r0,r3
	srl	r19,r3
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	andi	r25,r3,65535 #and2
	addk	r23,r0,r26
	srl	r23,r26
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
	addk	r6,r27,r0
	brlid	r15,__mulsi3
	
	addk	r5,r23,r0
	addk	r19,r19,r3
	addk	r3,r19,r19
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
	addk	r3,r3,r25
	addk	r26,r0,r19
	srl	r26,r19
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
	addk	r19,r0,r3
	srl	r19,r3
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	srl	r19,r19
	andi	r25,r3,65535 #and2
	addk	r27,r0,r22
	srl	r27,r22
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
	addk	r6,r27,r0
	brlid	r15,__mulsi3
	
	addk	r5,r24,r0
	addk	r19,r19,r3
	addk	r4,r19,r19
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
	addk	r25,r4,r25
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
	addk	r26,r3,r26
	addk	r6,r27,r0
	brlid	r15,__mulsi3
	
	addk	r5,r23,r0
	addk	r3,r3,r26
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
	.end	__muldsi3
$Lfe141:
	.size	__muldsi3,$Lfe141-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	r1,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x07c88000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	addk	r26,r5,r0
	addk	r23,r6,r0
	addk	r25,r7,r0
	addk	r22,r8,r0
	addk	r6,r8,r0
	brlid	r15,__muldsi3
	
	addk	r5,r23,r0
	addk	r24,r4,r0
	addk	r19,r3,r0
	addk	r6,r22,r0
	brlid	r15,__mulsi3
	
	addk	r5,r26,r0
	addk	r22,r3,r0
	addk	r6,r23,r0
	brlid	r15,__mulsi3
	
	addk	r5,r25,r0
	addk	r3,r22,r3
	addk	r3,r3,r19
	addk	r4,r24,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	rtsd	r15,8 
	
	addik	r1,r1,52
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
	addk	r4,r5,r0
	addk	r5,r6,r0
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
	addk	r3,r4,r0
	rtsd	r15,8 
	
	addk	r4,r5,r0
	.end	__negdi2
$Lfe143:
	.size	__negdi2,$Lfe143-__negdi2
	.align	2
	.globl	__paritydi2
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	xor	r6,r6,r5
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
	xor	r6,r6,r3
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r6,r6,r3
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r6,r6,r3
	andi	r6,r6,15 #and1
	addik	r4,r0,27030	# 0x6996
	andi	r18,r6,31
	addk	r3,r0,r4
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
	.end	__paritydi2
$Lfe144:
	.size	__paritydi2,$Lfe144-__paritydi2
	.align	2
	.globl	__paritysi2
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
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
	xor	r5,r3,r5
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r5,r5,r3
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r5,r5,r3
	andi	r5,r5,15 #and1
	addik	r4,r0,27030	# 0x6996
	andi	r18,r5,31
	addk	r3,r0,r4
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
	.end	__paritysi2
$Lfe145:
	.size	__paritysi2,$Lfe145-__paritysi2
	.align	2
	.globl	__popcountdi2
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r8,r5,r0
	addk	r9,r6,r0
	srl	r3,r6
	srl	r4,r5
	andi	r6,r4,1431655765 #and2
	andi	r7,r3,1431655765 #and2
	rsub	r5,r7,r9
	rsubc	r4,r6,r8
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	addk	r6,r0,r4
	srl	r6,r4
	srl	r6,r6
	andi	r8,r6,858993459 #and2
	andi	r9,r3,858993459 #and2
	andi	r6,r4,858993459 #and2
	andi	r7,r5,858993459 #and2
	add	r5,r9,r7
	addc	r4,r8,r6
	src	r3,r4
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-268435456
	addk	r7,r0,r5
	srl	r7,r5
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	or	r7,r3,r7
	addk	r6,r0,r4
	srl	r6,r4
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	add	r7,r7,r5
	addc	r6,r6,r4
	andi	r4,r6,252645135 #and2
	andi	r5,r7,252645135 #and2
	addk	r4,r4,r5
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
	addk	r4,r4,r3
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r3,r3,r4
	rtsd	r15,8 
	
	andi	r3,r3,127 #and1
	.end	__popcountdi2
$Lfe146:
	.size	__popcountdi2,$Lfe146-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	srl	r3,r5
	andi	r3,r3,1431655765 #and2
	rsubk	r5,r3,r5
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	andi	r3,r3,858993459 #and2
	andi	r5,r5,858993459 #and2
	addk	r5,r3,r5
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r5,r3,r5
	andi	r5,r5,252645135 #and2
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
	addk	r5,r5,r3
	addk	r3,r0,r5
	srl	r3,r5
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r3,r3,r5
	rtsd	r15,8 
	
	andi	r3,r3,63 #and1
	.end	__popcountsi2
$Lfe147:
	.size	__popcountsi2,$Lfe147-__popcountsi2
	.align	2
	.globl	__powidf2
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	r1,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x07c88000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r26,r0,r7
	srl	r26,r7
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
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	srl	r26,r26
	addik	r24,r0,0x3ff00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	brid	$L800
	addk	r19,r7,r0
$L798:
	addk	r4,r0,r19
	srl	r4,r19
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r4,r4,r19
	sra	r19,r4
	beqid	r19,$L799
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
$L800:
	andi	r3,r19,1 #and1
	beqid	r3,$L798
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	brid	$L798
	addk	r25,r4,r0
$L799:
	addk	r4,r24,r0
	beqid	r26,$L801
	addk	r5,r25,r0
	addk	r7,r24,r0
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	
	addk	r8,r25,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
$L801:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	rtsd	r15,8 
	
	addik	r1,r1,52
	.end	__powidf2
$Lfe148:
	.size	__powidf2,$Lfe148-__powidf2
	.align	2
	.globl	__powisf2
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r22,r5,r0
	addk	r24,r0,r6
	srl	r24,r6
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	srl	r24,r24
	addik	r23,r0,0x3f800000
	brid	$L807
	addk	r19,r6,r0
$L805:
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
	srl	r3,r3
	srl	r3,r3
	addk	r19,r3,r19
	sra	r19,r19
	beqi	r19,$L806
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
$L807:
	andi	r3,r19,1 #and1
	beqi	r3,$L805
	addk	r6,r22,r0
	addk	r5,r23,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r23,r3,r0
	bri	$L805
$L806:
	addk	r3,r23,r0
	beqid	r24,$L811
	lwi	r15,r1,0
	addk	r6,r23,r0
	addik	r5,r0,0x3f800000
	brlid	r15,__divsf3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
$L811:
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
	.end	__powisf2
$Lfe149:
	.size	__powisf2,$Lfe149-__powisf2
	.align	2
	.globl	__ucmpdi2
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmpu	r18,r7,r5
	bltid	r18,$L814
	addk	r3,r0,r0
	cmpu	r18,r5,r7
	bltid	r18,$L818
	addik	r3,r0,2	# 0x2
	cmpu	r18,r8,r6
	bltid	r18,$L818
	addk	r3,r0,r0
	cmpu	r18,r6,r8
	blti	r18,$L817
	addik	r3,r0,1	# 0x1
$L814:
$L813:
$L818:
	rtsd	r15,8 
	nop		# Unfilled delay slot

	brid	$L813
	addk	r3,r0,r0
$L817:
	brid	$L813
	addik	r3,r0,2	# 0x2
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
	brlid	r15,__ucmpdi2
	nop		# Unfilled delay slot

	addik	r3,r3,-1
	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
	.end	__aeabi_ulcmp
$Lfe151:
	.size	__aeabi_ulcmp,$Lfe151-__aeabi_ulcmp
	.bss
	.lcomm	s.0,7,4
	.type	s.0, @object
	.section	.note.GNU-stack,"",@progbits
