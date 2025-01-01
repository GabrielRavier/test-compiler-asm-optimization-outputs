	.text
	.align	2
	.globl	memmove
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	cmpu	r18,r5,r6
	bgeid	r18,$L2
	addk	r3,r5,r0
	addk	r6,r6,r7
	addk	r5,r5,r7
	brid	$L3
	addk	r4,r7,r0
$L4:
	addik	r9,r9,-1
	rsubk	r8,r7,r5
	addik	r8,r8,-1
	lbu	r9,r4,r9
	sb	r9,r4,r8
	addik	r4,r4,-1
$L3:
	bneid	r4,$L4
	rsubk	r9,r7,r6
	brid	$L9
	addk	r1,r19,r0
$L2:
	xor	r4,r5,r6
	bnei	r4,$L8
	brid	$L9
	addk	r1,r19,r0
$L7:
	lbu	r5,r4,r6
	sb	r5,r4,r3
	brid	$L6
	addik	r4,r4,1
$L8:
	addk	r4,r0,r0
$L6:
	xor	r5,r4,r7
	bnei	r5,$L7
	addk	r1,r19,r0
$L9:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	memmove
$Lfe1:
	.size	memmove,$Lfe1-memmove
	.align	2
	.globl	memccpy
	.ent	memccpy
	.type	memccpy, @function
memccpy:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L11
	andi	r7,r7,0x00ff
$L16:
	addik	r6,r6,1
	addik	r5,r5,1
$L11:
	beqi	r8,$L12
	lbui	r4,r6,0
	sbi	r4,r5,0
	xor	r4,r7,r4
	bneid	r4,$L16
	addik	r8,r8,-1
	addik	r8,r8,1
$L12:
	bneid	r8,$L14
	addik	r3,r5,1
	addk	r3,r0,r0
$L14:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	memccpy
$Lfe2:
	.size	memccpy,$Lfe2-memccpy
	.align	2
	.globl	memchr
	.ent	memchr
	.type	memchr, @function
memchr:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L18
	andi	r6,r6,0x00ff
$L23:
	addik	r7,r7,-1
$L18:
	beqi	r7,$L19
	lbui	r4,r5,0
	xor	r4,r6,r4
	bneid	r4,$L23
	addik	r5,r5,1
	addik	r5,r5,-1
$L19:
	bneid	r7,$L21
	addk	r3,r5,r0
	addk	r3,r0,r0
$L21:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	memchr
$Lfe3:
	.size	memchr,$Lfe3-memchr
	.align	2
	.globl	memcmp
	.ent	memcmp
	.type	memcmp, @function
memcmp:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	brid	$L25
	addk	r19,r1,r0
$L30:
	addik	r5,r5,1
	addik	r6,r6,1
$L25:
	beqi	r7,$L26
	lbui	r3,r5,0
	lbui	r4,r6,0
	xor	r3,r3,r4
	beqid	r3,$L30
	addik	r7,r7,-1
	addik	r7,r7,1
$L26:
	beqi	r7,$L29
	lbui	r3,r5,0
	lbui	r4,r6,0
	brid	$L28
	rsubk	r3,r4,r3
$L29:
	addk	r3,r0,r0
$L28:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	memcmp
$Lfe4:
	.size	memcmp,$Lfe4-memcmp
	.align	2
	.globl	memcpy
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	brid	$L32
	addk	r4,r0,r0
$L33:
	lbu	r5,r4,r6
	sb	r5,r4,r3
	addik	r4,r4,1
$L32:
	xor	r8,r4,r7
	bnei	r8,$L33
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	memcpy
$Lfe5:
	.size	memcpy,$Lfe5-memcpy
	.align	2
	.globl	memrchr
	.ent	memrchr
	.type	memrchr, @function
memrchr:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	andi	r6,r6,0x00ff
	brid	$L35
	addik	r7,r7,-1
$L37:
	lbu	r4,r7,r5
	xor	r4,r6,r4
	bneid	r4,$L38
	addik	r8,r7,-1
	brid	$L36
	addk	r3,r5,r7
$L38:
	addk	r7,r8,r0
$L35:
	xori	r4,r7,-1
	bneid	r4,$L37
	addk	r3,r0,r0
$L36:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	memrchr
$Lfe6:
	.size	memrchr,$Lfe6-memrchr
	.align	2
	.globl	memset
	.ent	memset
	.type	memset, @function
memset:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	addk	r7,r5,r7
	brid	$L40
	addk	r4,r5,r0
$L41:
	sbi	r6,r4,0
	addik	r4,r4,1
$L40:
	xor	r8,r4,r7
	bnei	r8,$L41
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	brid	$L43
	addk	r3,r5,r0
$L44:
	addik	r6,r6,1
	addik	r3,r3,1
$L43:
	lbui	r4,r6,0
	sbi	r4,r3,0
	sext8	r4,r4
	bnei	r4,$L44
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addk	r3,r5,r0
	brid	$L46
	andi	r6,r6,0x00ff
$L46:
	lbui	r4,r3,0
	beqid	r4,$L47
	xor	r4,r6,r4
	bneid	r4,$L46
	addik	r3,r3,1
	addik	r3,r3,-1
$L47:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
$L51:
	lbui	r4,r5,0
	sext8	r4,r4
	xor	r4,r6,r4
	beqid	r4,$L52
	addk	r3,r5,r0
	addik	r5,r5,1
	lbui	r3,r5,-1
	bnei	r3,$L51
	brid	$L53
	addk	r1,r19,r0
$L52:
	addk	r1,r19,r0
$L53:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	brid	$L55
	addk	r19,r1,r0
$L59:
	addik	r6,r6,1
$L55:
	lbui	r4,r5,0
	lbui	r3,r6,0
	xor	r3,r3,r4
	sext8	r3,r3
	bnei	r3,$L58
	bneid	r4,$L59
	addik	r5,r5,1
	addik	r5,r5,-1
	lbui	r4,r5,0
$L58:
	lbui	r3,r6,0
	rsubk	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	strcmp
$Lfe11:
	.size	strcmp,$Lfe11-strcmp
	.align	2
	.globl	strlen
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L61
	addk	r3,r5,r0
$L62:
	addik	r3,r3,1
$L61:
	lbui	r6,r3,0
	bnei	r6,$L62
	rsubk	r3,r5,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	strlen
$Lfe12:
	.size	strlen,$Lfe12-strlen
	.align	2
	.globl	strncmp
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	beqid	r7,$L68
	addk	r19,r1,r0
	brid	$L65
	addk	r4,r5,r0
$L70:
	addik	r6,r6,1
$L65:
	lbui	r3,r4,0
	beqi	r3,$L69
	lbui	r8,r6,0
	addik	r3,r7,-1
	addk	r3,r3,r5
	rsubk	r9,r4,r3
	rsubk	r3,r3,r4
	or	r3,r3,r9
	rsubk	r8,r8,r0
	and	r3,r8,r3
	bgei	r3,$L66
	lbui	r3,r4,0
	lbui	r8,r6,0
	xor	r3,r3,r8
	beqid	r3,$L70
	addik	r4,r4,1
	addik	r4,r4,-1
$L66:
	lbui	r3,r4,0
$L69:
	lbui	r4,r6,0
	brid	$L64
	rsubk	r3,r4,r3
$L68:
	addk	r3,r0,r0
$L64:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	strncmp
$Lfe13:
	.size	strncmp,$Lfe13-strncmp
	.align	2
	.globl	swab
	.ent	swab
	.type	swab, @function
swab:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L72
	addk	r3,r5,r0
$L73:
	lbui	r4,r3,1
	sbi	r4,r6,0
	lbui	r4,r3,0
	sbi	r4,r6,1
	addik	r6,r6,2
	addik	r3,r3,2
$L72:
	addk	r4,r5,r7
	rsubk	r4,r3,r4
	addik	r8,r0,1	# 0x1
	cmp	r18,r4,r8
	blti	r18,$L73
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	ori	r5,r5,32
	addik	r5,r5,-97
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgeid	r18,$L75
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L75:
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r4,r0,127	# 0x7f
	cmpu	r18,r5,r4
	bgeid	r18,$L77
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L77:
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r4,r0,31	# 0x1f
	cmpu	r18,r5,r4
	bgeid	r18,$L80
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L80:
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
	or	r3,r3,r5
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r5,r5,-48
	addik	r4,r0,9	# 0x9
	cmpu	r18,r5,r4
	bgeid	r18,$L82
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L82:
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r5,r5,-33
	addik	r4,r0,93	# 0x5d
	cmpu	r18,r5,r4
	bgeid	r18,$L84
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L84:
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r5,r5,-97
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgeid	r18,$L86
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L86:
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r5,r5,-32
	addik	r4,r0,94	# 0x5e
	cmpu	r18,r5,r4
	bgeid	r18,$L88
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L88:
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	bgeid	r18,$L90
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L90:
	andi	r4,r4,0x00ff
	or	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r5,r5,-65
	addik	r4,r0,25	# 0x19
	cmpu	r18,r5,r4
	bgeid	r18,$L92
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L92:
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r4,r0,31	# 0x1f
	cmpu	r18,r5,r4
	bgeid	r18,$L94
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L94:
	andi	r3,r3,0x00ff
	addik	r7,r5,-127
	addik	r6,r0,32	# 0x20
	cmpu	r18,r7,r6
	bgeid	r18,$L95
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L95:
	andi	r4,r4,0x00ff
	or	r3,r3,r4
	bneid	r3,$L100
	addik	r3,r0,1	# 0x1
	addik	r4,r5,-8232
	cmpu	r18,r4,r3
	bgei	r18,$L100
	addik	r5,r5,-65529
	addik	r3,r0,2	# 0x2
	cmpu	r18,r5,r3
	bltid	r18,$L99
	addik	r3,r0,1	# 0x1
	brid	$L101
	addk	r1,r19,r0
	brid	$L96
	addik	r3,r0,1	# 0x1
$L99:
	addk	r3,r0,r0
$L96:
$L100:
	addk	r1,r19,r0
$L101:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r5,r5,-48
	addik	r4,r0,9	# 0x9
	cmpu	r18,r5,r4
	bgeid	r18,$L103
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L103:
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r3,r0,254	# 0xfe
	cmpu	r18,r5,r3
	bltid	r18,$L105
	addk	r19,r1,r0
	addik	r5,r5,1
	andi	r5,r5,127 #and1
	addik	r4,r0,32	# 0x20
	cmpu	r18,r5,r4
	bltid	r18,$L106
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L106:
	brid	$L107
	andi	r3,r3,0x00ff
$L105:
	addik	r4,r0,8231	# 0x2027
	cmpu	r18,r5,r4
	bgeid	r18,$L108
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L108:
	andi	r3,r3,0x00ff
	addik	r7,r5,-8234
	addik	r6,r0,47061
	cmpu	r18,r7,r6
	bgeid	r18,$L109
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L109:
	andi	r4,r4,0x00ff
	or	r3,r3,r4
	bneid	r3,$L114
	addik	r3,r0,1	# 0x1
	addik	r4,r5,-57344
	addik	r3,r0,8184	# 0x1ff8
	cmpu	r18,r4,r3
	bgeid	r18,$L114
	addik	r3,r0,1	# 0x1
	addik	r4,r5,-65532
	addik	r3,r0,1048579
	cmpu	r18,r4,r3
	blti	r18,$L112
	andi	r5,r5,65534 #and2
	xori	r5,r5,65534
	beqid	r5,$L113
	addik	r3,r0,1	# 0x1
	brid	$L115
	addk	r1,r19,r0
	brid	$L107
	addik	r3,r0,1	# 0x1
$L112:
	brid	$L107
	addk	r3,r0,r0
$L113:
	addk	r3,r0,r0
$L107:
$L114:
	addk	r1,r19,r0
$L115:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r4,r5,-48
	addik	r3,r0,9	# 0x9
	cmpu	r18,r4,r3
	bgeid	r18,$L118
	addk	r19,r1,r0
	ori	r5,r5,32
	addik	r5,r5,-97
	addik	r3,r0,5	# 0x5
	cmpu	r18,r5,r3
	bltid	r18,$L119
	addik	r3,r0,1	# 0x1
	brid	$L120
	addk	r1,r19,r0
$L118:
	brid	$L117
	addik	r3,r0,1	# 0x1
$L119:
	addk	r3,r0,r0
$L117:
	addk	r1,r19,r0
$L120:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	andi	r3,r5,127 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	toascii
$Lfe29:
	.size	toascii,$Lfe29-toascii
	.align	2
	.globl	fdim
	.ent	fdim
	.type	fdim, @function
fdim:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L123
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L126
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L129
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__subdf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	brid	$L123
	addk	r23,r4,r0
$L126:
	addk	r22,r24,r0
	brid	$L123
	addk	r23,r25,r0
$L129:
	addk	r22,r0,r0
	addk	r23,r0,r0
$L123:
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	fdim
$Lfe30:
	.size	fdim,$Lfe30-fdim
	.align	2
	.globl	fdimf
	.ent	fdimf
	.type	fdimf, @function
fdimf:
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	
	addk	r19,r1,r0
	bnei	r3,$L133
	addk	r6,r23,r0
	addk	r5,r23,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L134
	addk	r6,r23,r0
	addk	r5,r22,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	blei	r3,$L137
	addk	r6,r23,r0
	addk	r5,r22,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	brid	$L138
	lwi	r15,r1,0
$L133:
	addk	r3,r22,r0
	brid	$L138
	lwi	r15,r1,0
$L134:
	addk	r3,r23,r0
	brid	$L138
	lwi	r15,r1,0
$L137:
	addk	r3,r0,r0
	lwi	r15,r1,0
$L138:
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
	.end	fdimf
$Lfe31:
	.size	fdimf,$Lfe31-fdimf
	.align	2
	.globl	fmax
	.ent	fmax
	.type	fmax, @function
fmax:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L140
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L144
	xor	r3,r24,r22
	bgeid	r3,$L141
	addk	r7,r24,r0
	bgeid	r22,$L145
	addk	r3,r24,r0
	brid	$L150
	addk	r4,r25,r0
$L141:
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bgeid	r3,$L148
	addk	r3,r24,r0
	brid	$L150
	addk	r4,r25,r0
$L144:
	addk	r24,r22,r0
	brid	$L140
	addk	r25,r23,r0
$L145:
	addk	r24,r22,r0
	brid	$L140
	addk	r25,r23,r0
$L148:
	addk	r24,r22,r0
	addk	r25,r23,r0
$L140:
	addk	r3,r24,r0
	addk	r4,r25,r0
$L150:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	fmax
$Lfe32:
	.size	fmax,$Lfe32-fmax
	.align	2
	.globl	fmaxf
	.ent	fmaxf
	.type	fmaxf, @function
fmaxf:
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	
	addk	r19,r1,r0
	bnei	r3,$L155
	addk	r6,r23,r0
	addk	r5,r23,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L156
	xor	r3,r23,r22
	bgei	r3,$L153
	bgeid	r22,$L157
	addk	r3,r22,r0
	addk	r3,r23,r0
	brid	$L161
	lwi	r15,r1,0
$L153:
	addk	r6,r23,r0
	addk	r5,r22,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgeid	r3,$L160
	lwi	r15,r1,0
	addk	r3,r23,r0
	brid	$L162
	addk	r1,r19,r0
$L155:
	addk	r3,r23,r0
	brid	$L161
	lwi	r15,r1,0
$L156:
	addk	r3,r22,r0
	brid	$L161
	lwi	r15,r1,0
$L157:
	brid	$L161
	lwi	r15,r1,0
$L160:
	addk	r3,r22,r0
$L161:
	addk	r1,r19,r0
$L162:
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
	.end	fmaxf
$Lfe33:
	.size	fmaxf,$Lfe33-fmaxf
	.align	2
	.globl	fmaxl
	.ent	fmaxl
	.type	fmaxl, @function
fmaxl:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L164
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L168
	xor	r3,r24,r22
	bgeid	r3,$L165
	addk	r7,r24,r0
	bgeid	r22,$L169
	addk	r3,r24,r0
	brid	$L174
	addk	r4,r25,r0
$L165:
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bgeid	r3,$L172
	addk	r3,r24,r0
	brid	$L174
	addk	r4,r25,r0
$L168:
	addk	r24,r22,r0
	brid	$L164
	addk	r25,r23,r0
$L169:
	addk	r24,r22,r0
	brid	$L164
	addk	r25,r23,r0
$L172:
	addk	r24,r22,r0
	addk	r25,r23,r0
$L164:
	addk	r3,r24,r0
	addk	r4,r25,r0
$L174:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	fmaxl
$Lfe34:
	.size	fmaxl,$Lfe34-fmaxl
	.align	2
	.globl	fmin
	.ent	fmin
	.type	fmin, @function
fmin:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L176
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L180
	xor	r3,r22,r24
	bgeid	r3,$L177
	addk	r7,r22,r0
	bgeid	r24,$L185
	addk	r3,r22,r0
	addk	r22,r24,r0
	brid	$L176
	addk	r23,r25,r0
$L177:
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bgeid	r3,$L185
	addk	r3,r22,r0
	addk	r22,r24,r0
	brid	$L176
	addk	r23,r25,r0
$L180:
	addk	r22,r24,r0
	addk	r23,r25,r0
$L176:
	addk	r3,r22,r0
$L185:
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	fmin
$Lfe35:
	.size	fmin,$Lfe35-fmin
	.align	2
	.globl	fminf
	.ent	fminf
	.type	fminf, @function
fminf:
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r23,r5,r0
	addk	r22,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	
	addk	r19,r1,r0
	bnei	r3,$L190
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L191
	xor	r3,r22,r23
	bgei	r3,$L188
	bgeid	r23,$L192
	addk	r3,r23,r0
	brid	$L196
	lwi	r15,r1,0
$L188:
	addk	r6,r22,r0
	addk	r5,r23,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bgeid	r3,$L195
	lwi	r15,r1,0
	addk	r3,r23,r0
	brid	$L197
	addk	r1,r19,r0
$L190:
	addk	r3,r22,r0
	brid	$L196
	lwi	r15,r1,0
$L191:
	addk	r3,r23,r0
	brid	$L196
	lwi	r15,r1,0
$L192:
	addk	r3,r22,r0
	brid	$L196
	lwi	r15,r1,0
$L195:
	addk	r3,r22,r0
$L196:
	addk	r1,r19,r0
$L197:
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
	.end	fminf
$Lfe36:
	.size	fminf,$Lfe36-fminf
	.align	2
	.globl	fminl
	.ent	fminl
	.type	fminl, @function
fminl:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L199
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bneid	r3,$L203
	xor	r3,r22,r24
	bgeid	r3,$L200
	addk	r7,r22,r0
	bgeid	r24,$L208
	addk	r3,r22,r0
	addk	r22,r24,r0
	brid	$L199
	addk	r23,r25,r0
$L200:
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bgeid	r3,$L208
	addk	r3,r22,r0
	addk	r22,r24,r0
	brid	$L199
	addk	r23,r25,r0
$L203:
	addk	r22,r24,r0
	addk	r23,r25,r0
$L199:
	addk	r3,r22,r0
$L208:
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
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
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addik	r3,r0,s.0
	brid	$L210
	addk	r19,r1,r0
$L211:
	lbui	r4,r4,digits
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
$L210:
	bneid	r5,$L211
	andi	r4,r5,63 #and1
	sbi	r0,r3,0
	addik	r3,r0,s.0
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addik	r5,r5,-1
	addk	r4,r0,r0
	swi	r4,r0,seed
	swi	r5,r0,seed+4
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	srand
$Lfe39:
	.size	srand,$Lfe39-srand
	.align	2
	.globl	rand
	.ent	rand
	.type	rand, @function
rand:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addik	r7,r0,0x5851f42d
	addik	r8,r0,0x4c957f2d #li => la
	lwi	r5,r0,seed
	lwi	r6,r0,seed+4
	brlid	r15,__muldi3
	
	addk	r19,r1,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	addik	r6,r0,0x00000000
	addik	r7,r0,0x00000001 #li => la
	add	r5,r5,r7
	addc	r4,r4,r6
	swi	r4,r0,seed
	swi	r5,r0,seed+4
	srl	r7,r4
	addk	r3,r7,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	rand
$Lfe40:
	.size	rand,$Lfe40-rand
	.align	2
	.globl	insque
	.ent	insque
	.type	insque, @function
insque:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	bneid	r6,$L215
	addk	r19,r1,r0
	swi	r0,r5,4
	brid	$L214
	swi	r0,r5,0
$L215:
	lwi	r3,r6,0
	swi	r3,r5,0
	swi	r6,r5,4
	swi	r5,r6,0
	lwi	r3,r5,0
	beqi	r3,$L214
	swi	r5,r3,4
$L214:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	insque
$Lfe41:
	.size	insque,$Lfe41-insque
	.align	2
	.globl	remque
	.ent	remque
	.type	remque, @function
remque:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	lwi	r3,r5,0
	beqid	r3,$L218
	addk	r19,r1,r0
	lwi	r4,r5,4
	swi	r4,r3,4
$L218:
	lwi	r3,r5,4
	beqi	r3,$L217
	lwi	r4,r5,0
	swi	r4,r3,0
$L217:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	remque
$Lfe42:
	.size	remque,$Lfe42-remque
	.align	2
	.globl	lsearch
	.ent	lsearch
	.type	lsearch, @function
lsearch:
	.frame	r19,64,r15		# vars= 0, regs= 9, args= 24
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
	addk	r19,r1,r0
	addk	r25,r5,r0
	addk	r27,r6,r0
	addk	r28,r7,r0
	addk	r24,r8,r0
	addk	r26,r9,r0
	lwi	r29,r7,0
	addk	r23,r6,r0
	brid	$L221
	addk	r22,r0,r0
$L224:
	brald	r15,r26
	
	addk	r5,r25,r0
	bneid	r3,$L222
	addk	r23,r23,r24
	addk	r6,r24,r0
	brlid	r15,__mulsi3
	
	addk	r5,r22,r0
	brid	$L223
	addk	r3,r27,r3
$L222:
	addik	r22,r22,1
$L221:
	xor	r4,r22,r29
	bneid	r4,$L224
	addk	r6,r23,r0
	addik	r3,r29,1
	swi	r3,r28,0
	addk	r6,r29,r0
	brlid	r15,__mulsi3
	
	addk	r5,r24,r0
	addk	r7,r24,r0
	addk	r6,r25,r0
	brlid	r15,memcpy
	
	addk	r5,r27,r3
$L223:
	lwi	r15,r1,0
	addk	r1,r19,r0
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
	.end	lsearch
$Lfe43:
	.size	lsearch,$Lfe43-lsearch
	.align	2
	.globl	lfind
	.ent	lfind
	.type	lfind, @function
lfind:
	.frame	r19,60,r15		# vars= 0, regs= 8, args= 24
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
	addk	r19,r1,r0
	addk	r26,r5,r0
	addk	r28,r6,r0
	addk	r24,r8,r0
	addk	r25,r9,r0
	lwi	r27,r7,0
	addk	r23,r6,r0
	brid	$L226
	addk	r22,r0,r0
$L229:
	brald	r15,r25
	
	addk	r5,r26,r0
	bneid	r3,$L227
	addk	r23,r23,r24
	addk	r6,r24,r0
	brlid	r15,__mulsi3
	
	addk	r5,r22,r0
	brid	$L228
	addk	r3,r28,r3
$L227:
	addik	r22,r22,1
$L226:
	xor	r4,r22,r27
	bneid	r4,$L229
	addk	r6,r23,r0
	addk	r3,r0,r0
$L228:
	lwi	r15,r1,0
	addk	r1,r19,r0
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
	rsubk	r3,r3,r5
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	abs
$Lfe45:
	.size	abs,$Lfe45-abs
	.align	2
	.globl	atoi
	.ent	atoi
	.type	atoi, @function
atoi:
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	brid	$L232
	addk	r22,r5,r0
$L233:
	addik	r22,r22,1
$L232:
	lbui	r5,r22,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L233
	lbui	r3,r22,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L239
	addk	r6,r0,r0
	xori	r3,r3,45
	bnei	r3,$L240
	addik	r6,r0,1	# 0x1
$L239:
	addik	r22,r22,1
$L240:
	brid	$L236
	addk	r3,r0,r0
$L237:
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r3,r4,r3
	addk	r4,r3,r3
	lbui	r3,r22,-1
	sext8	r3,r3
	addik	r3,r3,-48
	rsubk	r3,r3,r4
$L236:
	lbui	r4,r22,0
	sext8	r4,r4
	addik	r4,r4,-48
	addik	r5,r0,9	# 0x9
	cmpu	r18,r4,r5
	bgeid	r18,$L237
	addik	r22,r22,1
	bneid	r6,$L242
	lwi	r15,r1,0
	rsubk	r3,r3,r0
$L242:
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	atoi
$Lfe46:
	.size	atoi,$Lfe46-atoi
	.align	2
	.globl	atol
	.ent	atol
	.type	atol, @function
atol:
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	brid	$L244
	addk	r22,r5,r0
$L245:
	addik	r22,r22,1
$L244:
	lbui	r5,r22,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L245
	lbui	r3,r22,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L251
	addk	r6,r0,r0
	xori	r3,r3,45
	bnei	r3,$L252
	addik	r6,r0,1	# 0x1
$L251:
	addik	r22,r22,1
$L252:
	brid	$L248
	addk	r3,r0,r0
$L249:
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r3,r4,r3
	addk	r4,r3,r3
	lbui	r3,r22,-1
	sext8	r3,r3
	addik	r3,r3,-48
	rsubk	r3,r3,r4
$L248:
	lbui	r4,r22,0
	sext8	r4,r4
	addik	r4,r4,-48
	addik	r5,r0,9	# 0x9
	cmpu	r18,r4,r5
	bgeid	r18,$L249
	addik	r22,r22,1
	bneid	r6,$L254
	lwi	r15,r1,0
	rsubk	r3,r3,r0
$L254:
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	atol
$Lfe47:
	.size	atol,$Lfe47-atol
	.align	2
	.globl	atoll
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	r19,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x07c88000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	addk	r19,r1,r0
	brid	$L256
	addk	r26,r5,r0
$L257:
	addik	r26,r26,1
$L256:
	lbui	r5,r26,0
	brlid	r15,isspace
	
	sext8	r5,r5
	bnei	r3,$L257
	lbui	r3,r26,0
	sext8	r3,r3
	xori	r4,r3,43
	beqid	r4,$L263
	addk	r8,r0,r0
	xori	r3,r3,45
	bnei	r3,$L264
	addik	r8,r0,1	# 0x1
$L263:
	addik	r26,r26,1
$L264:
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	brid	$L266
	lbui	r3,r26,0
$L261:
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
	add	r5,r23,r5
	addc	r4,r22,r4
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
	lbui	r6,r26,-1
	sext8	r6,r6
	addik	r6,r6,-48
	addk	r7,r0,r6
	add	r6,r7,r7
	addc	r6,r0,r0
	beqi	r6,.+8
	addi	r6,r0,0xffffffff
	rsub	r5,r7,r25
	rsubc	r4,r6,r24
	lbui	r3,r26,0
$L266:
	sext8	r3,r3
	addik	r3,r3,-48
	addik	r6,r0,9	# 0x9
	cmpu	r18,r3,r6
	bgeid	r18,$L261
	addik	r26,r26,1
	bneid	r8,$L267
	addk	r3,r4,r0
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
	addk	r3,r4,r0
$L267:
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	rtsd	r15,8 
	
	addik	r1,r1,52
	.end	atoll
$Lfe48:
	.size	atoll,$Lfe48-atoll
	.align	2
	.globl	bsearch
	.ent	bsearch
	.type	bsearch, @function
bsearch:
	.frame	r19,56,r15		# vars= 0, regs= 7, args= 24
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
	addk	r19,r1,r0
	addk	r27,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r24,r8,r0
	brid	$L269
	addk	r26,r9,r0
$L273:
	brlid	r15,__mulsi3
	
	srl	r5,r22
	addk	r23,r25,r3
	addk	r6,r23,r0
	brald	r15,r26
	
	addk	r5,r27,r0
	bgei	r3,$L270
	brid	$L269
	srl	r22,r22
$L270:
	bleid	r3,$L274
	addk	r25,r23,r24
	srl	r3,r22
	addik	r22,r22,-1
	rsubk	r22,r3,r22
$L269:
	bneid	r22,$L273
	addk	r6,r24,r0
	brid	$L272
	addk	r3,r0,r0
$L274:
	addk	r3,r23,r0
$L272:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
	.end	bsearch
$Lfe49:
	.size	bsearch,$Lfe49-bsearch
	.align	2
	.globl	bsearch_r
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	r19,60,r15		# vars= 0, regs= 8, args= 24
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
	addk	r19,r1,r0
	addk	r28,r5,r0
	addk	r25,r8,r0
	addk	r27,r9,r0
	addk	r26,r10,r0
	addk	r22,r7,r0
	brid	$L276
	addk	r24,r6,r0
$L279:
	brlid	r15,__mulsi3
	
	sra	r5,r22
	addk	r23,r24,r3
	addk	r7,r26,r0
	addk	r6,r23,r0
	brald	r15,r27
	
	addk	r5,r28,r0
	beqi	r3,$L280
	blei	r3,$L278
	addk	r24,r23,r25
	addik	r22,r22,-1
$L278:
	sra	r22,r22
$L276:
	bneid	r22,$L279
	addk	r6,r25,r0
	brid	$L277
	addk	r3,r0,r0
$L280:
	addk	r3,r23,r0
$L277:
	lwi	r15,r1,0
	addk	r1,r19,r0
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
	.end	bsearch_r
$Lfe50:
	.size	bsearch_r,$Lfe50-bsearch_r
	.align	2
	.globl	div
	.ent	div
	.type	div, @function
div:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r6,r7,r0
	brlid	r15,__divsi3
	
	addk	r5,r23,r0
	addk	r25,r3,r0
	addk	r6,r24,r0
	brlid	r15,__modsi3
	
	addk	r5,r23,r0
	swi	r25,r22,0
	swi	r3,r22,4
	addk	r3,r22,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
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
	addk	r8,r5,r0
	addk	r9,r6,r0
	addk	r5,r0,r8
	sra	r5,r8
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
	xor	r6,r5,r8
	xor	r7,r5,r9
	addk	r8,r6,r0
	addk	r9,r7,r0
	rsub	r7,r5,r9
	rsubc	r6,r4,r8
	addk	r3,r6,r0
	addk	r4,r7,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	imaxabs
$Lfe52:
	.size	imaxabs,$Lfe52-imaxabs
	.align	2
	.globl	imaxdiv
	.ent	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.frame	r19,60,r15		# vars= 0, regs= 8, args= 24
	.mask	0x3f488000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r26,r1,44
	swi	r27,r1,48
	swi	r28,r1,52
	swi	r29,r1,56
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r24,r6,r0
	addk	r25,r7,r0
	addk	r26,r8,r0
	addk	r27,r9,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	addk	r5,r6,r0
	brlid	r15,__divdi3
	
	addk	r6,r25,r0
	addk	r28,r3,r0
	addk	r29,r4,r0
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r24,r0
	brlid	r15,__moddi3
	
	addk	r6,r25,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r28,r22,0
	swi	r29,r22,4
	swi	r4,r22,8
	swi	r5,r22,12
	addk	r3,r22,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	lwi	r26,r1,44
	lwi	r27,r1,48
	lwi	r28,r1,52
	lwi	r29,r1,56
	rtsd	r15,8 
	
	addik	r1,r1,60
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
	rsubk	r3,r3,r5
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	labs
$Lfe54:
	.size	labs,$Lfe54-labs
	.align	2
	.globl	ldiv
	.ent	ldiv
	.type	ldiv, @function
ldiv:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	addk	r6,r7,r0
	brlid	r15,__divsi3
	
	addk	r5,r23,r0
	addk	r25,r3,r0
	addk	r6,r24,r0
	brlid	r15,__modsi3
	
	addk	r5,r23,r0
	swi	r25,r22,0
	swi	r3,r22,4
	addk	r3,r22,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
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
	addk	r8,r5,r0
	addk	r9,r6,r0
	addk	r5,r0,r8
	sra	r5,r8
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
	xor	r6,r5,r8
	xor	r7,r5,r9
	addk	r8,r6,r0
	addk	r9,r7,r0
	rsub	r7,r5,r9
	rsubc	r6,r4,r8
	addk	r3,r6,r0
	addk	r4,r7,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	llabs
$Lfe56:
	.size	llabs,$Lfe56-llabs
	.align	2
	.globl	lldiv
	.ent	lldiv
	.type	lldiv, @function
lldiv:
	.frame	r19,60,r15		# vars= 0, regs= 8, args= 24
	.mask	0x3f488000
	addik	r1,r1,-60
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r26,r1,44
	swi	r27,r1,48
	swi	r28,r1,52
	swi	r29,r1,56
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r24,r6,r0
	addk	r25,r7,r0
	addk	r26,r8,r0
	addk	r27,r9,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	addk	r5,r6,r0
	brlid	r15,__divdi3
	
	addk	r6,r25,r0
	addk	r28,r3,r0
	addk	r29,r4,r0
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r24,r0
	brlid	r15,__moddi3
	
	addk	r6,r25,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r28,r22,0
	swi	r29,r22,4
	swi	r4,r22,8
	swi	r5,r22,12
	addk	r3,r22,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	lwi	r26,r1,44
	lwi	r27,r1,48
	lwi	r28,r1,52
	lwi	r29,r1,56
	rtsd	r15,8 
	
	addik	r1,r1,60
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
	brid	$L289
	addk	r19,r1,r0
$L289:
	lwi	r3,r5,0
	beqid	r3,$L290
	xor	r3,r6,r3
	bneid	r3,$L289
	addik	r5,r5,4
	addik	r5,r5,-4
$L290:
	lwi	r3,r5,0
	bneid	r3,$L292
	addk	r3,r5,r0
	addk	r3,r0,r0
$L292:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	brid	$L295
	addk	r19,r1,r0
$L301:
	addik	r6,r6,4
$L295:
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	bnei	r3,$L296
	lwi	r3,r5,0
	beqi	r3,$L296
	bneid	r4,$L301
	addik	r5,r5,4
	addik	r5,r5,-4
$L296:
	lwi	r4,r5,0
	lwi	r3,r6,0
	cmp	r18,r3,r4
	bltid	r18,$L300
	addk	r5,r4,r0
	addk	r4,r3,r0
	cmp	r18,r5,r4
	bltid	r18,$L299
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L299:
	brid	$L298
	andi	r3,r3,0x00ff
$L300:
	addik	r3,r0,-1	# 0xffffffffffffffff
$L298:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	wcscmp
$Lfe59:
	.size	wcscmp,$Lfe59-wcscmp
	.align	2
	.globl	wcscpy
	.ent	wcscpy
	.type	wcscpy, @function
wcscpy:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	addk	r4,r0,r0
$L303:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,4
	addik	r5,r3,-4
	lw	r5,r4,r5
	bnei	r5,$L303
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	wcscpy
$Lfe60:
	.size	wcscpy,$Lfe60-wcscpy
	.align	2
	.globl	wcslen
	.ent	wcslen
	.type	wcslen, @function
wcslen:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L305
	addk	r3,r5,r0
$L306:
	addik	r3,r3,4
$L305:
	lwi	r4,r3,0
	bnei	r4,$L306
	rsubk	r3,r5,r3
	addk	r4,r3,r0
	addk	r3,r0,r4
	sra	r3,r4
	sra	r3,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	brid	$L308
	addk	r19,r1,r0
$L315:
	addik	r5,r5,4
	addik	r6,r6,4
$L308:
	beqid	r7,$L316
	addk	r3,r0,r0
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	bnei	r3,$L309
	lwi	r3,r5,0
	beqi	r3,$L309
	bneid	r4,$L315
	addik	r7,r7,-1
	addik	r7,r7,1
$L309:
	beqid	r7,$L316
	addk	r3,r0,r0
	lwi	r4,r5,0
	lwi	r3,r6,0
	cmp	r18,r3,r4
	blti	r18,$L314
	addk	r5,r4,r0
	addk	r4,r3,r0
	cmp	r18,r5,r4
	bltid	r18,$L312
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L312:
	brid	$L311
	andi	r3,r3,0x00ff
$L314:
	addik	r3,r0,-1	# 0xffffffffffffffff
$L311:
$L316:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	brid	$L318
	addk	r19,r1,r0
$L323:
	addik	r5,r5,4
$L318:
	beqi	r7,$L319
	lwi	r4,r5,0
	xor	r4,r6,r4
	bneid	r4,$L323
	addik	r7,r7,-1
	addik	r7,r7,1
$L319:
	bneid	r7,$L321
	addk	r3,r5,r0
	addk	r3,r0,r0
$L321:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	brid	$L325
	addk	r19,r1,r0
$L332:
	addik	r5,r5,4
	addik	r6,r6,4
$L325:
	beqid	r7,$L333
	addk	r3,r0,r0
	lwi	r3,r5,0
	lwi	r4,r6,0
	xor	r3,r3,r4
	beqid	r3,$L332
	addik	r7,r7,-1
	addik	r7,r7,1
	beqid	r7,$L333
	addk	r3,r0,r0
	lwi	r4,r5,0
	lwi	r3,r6,0
	cmp	r18,r3,r4
	blti	r18,$L331
	addk	r5,r4,r0
	addk	r4,r3,r0
	cmp	r18,r5,r4
	bltid	r18,$L329
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L329:
	brid	$L328
	andi	r3,r3,0x00ff
$L331:
	addik	r3,r0,-1	# 0xffffffffffffffff
$L328:
$L333:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	wmemcmp
$Lfe64:
	.size	wmemcmp,$Lfe64-wmemcmp
	.align	2
	.globl	wmemcpy
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	brid	$L335
	addk	r4,r0,r0
$L336:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,4
$L335:
	addik	r7,r7,-1
	xori	r8,r7,-1
	bnei	r8,$L336
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	wmemcpy
$Lfe65:
	.size	wmemcpy,$Lfe65-wmemcpy
	.align	2
	.globl	wmemmove
	.ent	wmemmove
	.type	wmemmove, @function
wmemmove:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	xor	r4,r5,r6
	beqid	r4,$L338
	addk	r3,r5,r0
	rsubk	r5,r6,r5
	addk	r4,r7,r7
	addk	r4,r4,r4
	cmpu	r18,r4,r5
	bgeid	r18,$L343
	addik	r4,r4,-4
	brid	$L346
	xori	r5,r4,-4
$L341:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,-4
	xori	r5,r4,-4
$L346:
	bnei	r5,$L341
	brid	$L345
	addk	r1,r19,r0
$L342:
	lw	r5,r4,r6
	sw	r5,r4,r3
	brid	$L339
	addik	r4,r4,4
$L343:
	addk	r4,r0,r0
$L339:
	addik	r7,r7,-1
	xori	r5,r7,-1
	bnei	r5,$L342
$L338:
	addk	r1,r19,r0
$L345:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	wmemmove
$Lfe66:
	.size	wmemmove,$Lfe66-wmemmove
	.align	2
	.globl	wmemset
	.ent	wmemset
	.type	wmemset, @function
wmemset:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	brid	$L348
	addk	r4,r5,r0
$L349:
	addik	r4,r4,4
	swi	r6,r4,-4
$L348:
	addik	r7,r7,-1
	xori	r8,r7,-1
	bnei	r8,$L349
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	wmemset
$Lfe67:
	.size	wmemset,$Lfe67-wmemset
	.align	2
	.globl	bcopy
	.ent	bcopy
	.type	bcopy, @function
bcopy:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	cmpu	r18,r6,r5
	bgeid	r18,$L351
	addk	r19,r1,r0
	addk	r5,r5,r7
	addk	r6,r6,r7
	brid	$L352
	addk	r3,r7,r0
$L353:
	addik	r8,r8,-1
	rsubk	r4,r7,r6
	addik	r4,r4,-1
	lbu	r8,r3,r8
	sb	r8,r3,r4
	addik	r3,r3,-1
$L352:
	bneid	r3,$L353
	rsubk	r8,r7,r5
	brid	$L358
	addk	r1,r19,r0
$L351:
	xor	r3,r5,r6
	bnei	r3,$L357
	brid	$L358
	addk	r1,r19,r0
$L356:
	lbu	r4,r3,r5
	sb	r4,r3,r6
	brid	$L355
	addik	r3,r3,1
$L357:
	addk	r3,r0,r0
$L355:
	xor	r4,r3,r7
	bnei	r4,$L356
	addk	r1,r19,r0
$L358:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	bcopy
$Lfe68:
	.size	bcopy,$Lfe68-bcopy
	.align	2
	.globl	rotl64
	.ent	rotl64
	.type	rotl64, @function
rotl64:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r4,r5,r0
	andi	r3,r7,32 #and1
	beqid	r3,$L360
	addk	r5,r6,r0
	andi	r18,r7,31
	addk	r8,r0,r6
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	brid	$L361
	addk	r9,r0,r0
$L360:
	srl	r8,r6
	xori	r6,r7,-1
	andi	r18,r6,31
	addk	r3,r0,r8
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
	addk	r8,r0,r4
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	or	r8,r3,r8
	andi	r18,r7,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
$L361:
	rsubk	r3,r7,r0
	andi	r3,r3,32 #and1
	beqid	r3,$L362
	addk	r10,r0,r0
	rsubk	r7,r7,r0
	andi	r18,r7,31
	addk	r11,r0,r4
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r11,r11
	brid	$L364
	or	r4,r10,r8
$L362:
	addk	r10,r4,r4
	rsubk	r7,r7,r0
	andi	r7,r7,63 #and1
	xori	r6,r7,-1
	andi	r18,r6,31
	addk	r3,r0,r10
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r11,r0,r5
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r11,r11
	or	r11,r3,r11
	andi	r18,r7,31
	addk	r10,r0,r4
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	or	r4,r10,r8
$L364:
	or	r5,r11,r9
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	rotl64
$Lfe69:
	.size	rotl64,$Lfe69-rotl64
	.align	2
	.globl	rotr64
	.ent	rotr64
	.type	rotr64, @function
rotr64:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r4,r5,r0
	andi	r3,r7,32 #and1
	beqid	r3,$L366
	addk	r5,r6,r0
	andi	r18,r7,31
	addk	r9,r0,r4
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	brid	$L367
	addk	r8,r0,r0
$L366:
	addk	r8,r4,r4
	xori	r6,r7,-1
	andi	r18,r6,31
	addk	r3,r0,r8
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	or	r9,r3,r9
	andi	r18,r7,31
	addk	r8,r0,r4
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
$L367:
	rsubk	r3,r7,r0
	andi	r3,r3,32 #and1
	beqid	r3,$L368
	addk	r11,r0,r0
	rsubk	r7,r7,r0
	andi	r18,r7,31
	addk	r10,r0,r5
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	brid	$L370
	or	r4,r10,r8
$L368:
	srl	r10,r5
	rsubk	r7,r7,r0
	andi	r7,r7,63 #and1
	xori	r6,r7,-1
	andi	r18,r6,31
	addk	r3,r0,r10
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
	addk	r10,r0,r4
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	or	r10,r3,r10
	andi	r18,r7,31
	addk	r11,r0,r5
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r11,r11,r11
	or	r4,r10,r8
$L370:
	or	r5,r11,r9
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	or	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	or	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	or	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	or	r3,r4,r3
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	andi	r3,r3,0x00ff
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	rotr8
$Lfe78:
	.size	rotr8,$Lfe78-rotr8
	.align	2
	.globl	bswap_16
	.ent	bswap_16
	.type	bswap_16, @function
bswap_16:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
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
	or	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	bswap_16
$Lfe79:
	.size	bswap_16,$Lfe79-bswap_16
	.align	2
	.globl	bswap_32
	.ent	bswap_32
	.type	bswap_32, @function
bswap_32:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
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
	or	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	bswap_32
$Lfe80:
	.size	bswap_32,$Lfe80-bswap_32
	.align	2
	.globl	bswap_64
	.ent	bswap_64
	.type	bswap_64, @function
bswap_64:
	.frame	r19,24,r15		# vars= 0, regs= 5, args= 0
	.mask	0x03c80000
	addik	r1,r1,-24
	swi	r19,r1,4
	swi	r22,r1,8
	swi	r23,r1,12
	swi	r24,r1,16
	swi	r25,r1,20
	addk	r19,r1,r0
	addk	r7,r6,r0
	addk	r6,r5,r0
	andi	r4,r5,-16777216 #and2
	addk	r5,r0,r0
	addk	r9,r0,r4
	srl	r9,r4
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	andi	r22,r6,16711680 #and2
	addk	r11,r0,r22
	srl	r11,r22
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	or	r23,r11,r9
	andi	r10,r6,65280 #and2
	addk	r9,r0,r10
	addk	r9,r10,r10
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r8,r0,r10
	srl	r8,r10
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
	or	r10,r5,r8
	or	r11,r23,r9
	andi	r22,r6,255 #and1
	src	r9,r22
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	andi	r9,r9,-16777216
	addk	r8,r0,r22
	srl	r8,r22
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	or	r24,r10,r8
	or	r25,r11,r9
	andi	r11,r7,-16777216 #and2
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
	addk	r8,r0,r5
	addk	r8,r5,r5
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	or	r8,r3,r8
	addk	r9,r0,r11
	addk	r9,r11,r11
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	or	r22,r24,r8
	or	r23,r25,r9
	andi	r11,r7,16711680 #and2
	addk	r3,r0,r11
	srl	r3,r11
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	src	r8,r5
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	src	r8,r8
	andi	r8,r8,-16777216
	or	r8,r3,r8
	src	r9,r11
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	src	r9,r9
	andi	r9,r9,-16777216
	or	r10,r22,r8
	or	r11,r23,r9
	andi	r9,r7,65280 #and2
	addk	r22,r0,r9
	addk	r22,r9,r9
	addk	r22,r22,r22
	addk	r22,r22,r22
	addk	r22,r22,r22
	addk	r22,r22,r22
	addk	r22,r22,r22
	addk	r22,r22,r22
	addk	r22,r22,r22
	or	r8,r10,r22
	addk	r9,r11,r0
	andi	r11,r7,255 #and1
	src	r6,r11
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	andi	r6,r6,-16777216
	or	r4,r8,r6
	addk	r3,r4,r0
	addk	r4,r9,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	lwi	r24,r1,16
	lwi	r25,r1,20
	rtsd	r15,8 
	
	addik	r1,r1,24
	.end	bswap_64
$Lfe81:
	.size	bswap_64,$Lfe81-bswap_64
	.align	2
	.globl	ffs
	.ent	ffs
	.type	ffs, @function
ffs:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L383
	addk	r3,r0,r0
$L386:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r4,r4,1 #and1
	beqid	r4,$L383
	addik	r3,r3,1
	addik	r3,r3,-1
	brid	$L385
	addik	r3,r3,1
$L383:
	xori	r4,r3,32
	bnei	r4,$L386
	addk	r3,r0,r0
$L385:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	ffs
$Lfe82:
	.size	ffs,$Lfe82-ffs
	.align	2
	.globl	libiberty_ffs
	.ent	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	beqid	r5,$L391
	addk	r19,r1,r0
	brid	$L389
	addik	r3,r0,1	# 0x1
$L390:
	sra	r5,r5
	addik	r3,r3,1
$L389:
	andi	r4,r5,1 #and1
	beqi	r4,$L390
	brid	$L392
	addk	r1,r19,r0
$L391:
	addk	r3,r0,r0
	addk	r1,r19,r0
$L392:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r22,r5,r0
	lwi	r6,r0,$LC0
	brlid	r15,__ltsf2
	
	addk	r19,r1,r0
	bltid	r3,$L400
	addik	r3,r0,1	# 0x1
	lwi	r6,r0,$LC1
	addk	r5,r22,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bgtid	r3,$L394
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L394:
$L400:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
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
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r19,r1,r0
	addk	r22,r5,r0
	lwi	r7,r0,$LC2
	lwi	r8,r0,$LC2+4
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bltid	r3,$L408
	addik	r3,r0,1	# 0x1
	lwi	r7,r0,$LC3
	lwi	r8,r0,$LC3+4
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bgtid	r3,$L402
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L402:
$L408:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
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
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r19,r1,r0
	addk	r22,r5,r0
	lwi	r7,r0,$LC4
	lwi	r8,r0,$LC4+4
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bltid	r3,$L416
	addik	r3,r0,1	# 0x1
	lwi	r7,r0,$LC5
	lwi	r8,r0,$LC5+4
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bgtid	r3,$L410
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L410:
$L416:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
	.end	gl_isinfl
$Lfe86:
	.size	gl_isinfl,$Lfe86-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.ent	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	addk	r22,r5,r0
	brlid	r15,__floatsidf
	
	addk	r5,r6,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	swi	r4,r22,0
	swi	r5,r22,4
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	_Qp_itoq
$Lfe87:
	.size	_Qp_itoq,$Lfe87-_Qp_itoq
	.align	2
	.globl	ldexpf
	.ent	ldexpf
	.type	ldexpf, @function
ldexpf:
	.frame	r19,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r24,r5,r0
	addk	r22,r6,r0
	addk	r6,r5,r0
	brlid	r15,__unordsf2
	
	addk	r19,r1,r0
	bnei	r3,$L419
	addk	r6,r24,r0
	addk	r5,r24,r0
	brlid	r15,__addsf3
	nop		# Unfilled delay slot

	addk	r6,r3,r0
	addk	r5,r24,r0
	brlid	r15,__nesf2
	nop		# Unfilled delay slot

	beqi	r3,$L419
	bgeid	r22,$L424
	andi	r3,r22,1 #and1
	addik	r23,r0,0x3f000000
	bri	$L426
$L424:
	addik	r23,r0,0x40000000
$L426:
	beqi	r3,$L422
	addk	r6,r23,r0
	addk	r5,r24,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r24,r3,r0
$L422:
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
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r22,r3,r22
	sra	r22,r22
	beqi	r22,$L419
	addk	r6,r23,r0
	addk	r5,r23,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r23,r3,r0
	brid	$L426
	andi	r3,r22,1 #and1
$L419:
	addk	r3,r24,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
	.end	ldexpf
$Lfe88:
	.size	ldexpf,$Lfe88-ldexpf
	.align	2
	.globl	ldexp
	.ent	ldexp
	.type	ldexp, @function
ldexp:
	.frame	r19,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x0f488000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r26,r1,44
	swi	r27,r1,48
	addk	r19,r1,r0
	addk	r26,r5,r0
	addk	r27,r6,r0
	addk	r22,r7,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L428
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r26,r0
	brlid	r15,__adddf3
	
	addk	r6,r27,r0
	addk	r7,r3,r0
	addk	r8,r4,r0
	addk	r5,r26,r0
	brlid	r15,__nedf2
	
	addk	r6,r27,r0
	beqid	r3,$L436
	addk	r3,r26,r0
	bgeid	r22,$L433
	andi	r3,r22,1 #and1
	addik	r24,r0,0x3fe00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	bri	$L435
$L433:
	addik	r24,r0,0x40000000 
	addik	r25,r0,0x00000000 #Xfer Lo
$L432:
	andi	r3,r22,1 #and1
$L435:
	beqid	r3,$L431
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r26,r0
	brlid	r15,__muldf3
	
	addk	r6,r27,r0
	addk	r26,r3,r0
	addk	r27,r4,r0
$L431:
	addk	r4,r0,r22
	srl	r4,r22
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r4,r4,r22
	sra	r22,r4
	beqid	r22,$L428
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	brid	$L432
	addk	r25,r4,r0
$L428:
	addk	r3,r26,r0
$L436:
	addk	r4,r27,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	lwi	r26,r1,44
	lwi	r27,r1,48
	rtsd	r15,8 
	
	addik	r1,r1,52
	.end	ldexp
$Lfe89:
	.size	ldexp,$Lfe89-ldexp
	.align	2
	.globl	ldexpl
	.ent	ldexpl
	.type	ldexpl, @function
ldexpl:
	.frame	r19,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x0f488000
	addik	r1,r1,-52
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r26,r1,44
	swi	r27,r1,48
	addk	r19,r1,r0
	addk	r26,r5,r0
	addk	r27,r6,r0
	addk	r22,r7,r0
	addk	r7,r5,r0
	brlid	r15,__unorddf2
	
	addk	r8,r6,r0
	bneid	r3,$L438
	addk	r7,r26,r0
	addk	r8,r27,r0
	addk	r5,r26,r0
	brlid	r15,__adddf3
	
	addk	r6,r27,r0
	addk	r7,r3,r0
	addk	r8,r4,r0
	addk	r5,r26,r0
	brlid	r15,__nedf2
	
	addk	r6,r27,r0
	beqid	r3,$L446
	addk	r3,r26,r0
	bgeid	r22,$L443
	andi	r3,r22,1 #and1
	addik	r24,r0,0x3fe00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	bri	$L445
$L443:
	addik	r24,r0,0x40000000 
	addik	r25,r0,0x00000000 #Xfer Lo
$L442:
	andi	r3,r22,1 #and1
$L445:
	beqid	r3,$L441
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r26,r0
	brlid	r15,__muldf3
	
	addk	r6,r27,r0
	addk	r26,r3,r0
	addk	r27,r4,r0
$L441:
	addk	r4,r0,r22
	srl	r4,r22
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r4,r4,r22
	sra	r22,r4
	beqid	r22,$L438
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	brid	$L442
	addk	r25,r4,r0
$L438:
	addk	r3,r26,r0
$L446:
	addk	r4,r27,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	lwi	r26,r1,44
	lwi	r27,r1,48
	rtsd	r15,8 
	
	addik	r1,r1,52
	.end	ldexpl
$Lfe90:
	.size	ldexpl,$Lfe90-ldexpl
	.align	2
	.globl	memxor
	.ent	memxor
	.type	memxor, @function
memxor:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r5,r0
	brid	$L448
	addk	r4,r0,r0
$L449:
	lbu	r5,r4,r6
	lbu	r8,r4,r3
	xor	r8,r8,r5
	sb	r8,r4,r3
	addik	r4,r4,1
$L448:
	xor	r5,r4,r7
	bnei	r5,$L449
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	memxor
$Lfe91:
	.size	memxor,$Lfe91-memxor
	.align	2
	.globl	strncat
	.ent	strncat
	.type	strncat, @function
strncat:
	.frame	r19,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x01c88000
	addik	r1,r1,-44
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	addk	r19,r1,r0
	addk	r24,r5,r0
	addk	r23,r6,r0
	brlid	r15,strlen
	
	addk	r22,r7,r0
	brid	$L451
	addk	r3,r24,r3
$L453:
	addik	r3,r3,1
	addik	r22,r22,-1
$L451:
	beqi	r22,$L452
	lbui	r4,r23,0
	sbi	r4,r3,0
	sext8	r4,r4
	bneid	r4,$L453
	addik	r23,r23,1
$L452:
	bnei	r22,$L454
	sbi	r0,r3,0
$L454:
	addk	r3,r24,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
	.end	strncat
$Lfe92:
	.size	strncat,$Lfe92-strncat
	.align	2
	.globl	strnlen
	.ent	strnlen
	.type	strnlen, @function
strnlen:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L456
	addk	r3,r0,r0
$L458:
	addik	r3,r3,1
$L456:
	xor	r4,r3,r6
	beqi	r4,$L457
	lbu	r4,r3,r5
	bnei	r4,$L458
$L457:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	strnlen
$Lfe93:
	.size	strnlen,$Lfe93-strnlen
	.align	2
	.globl	strpbrk
	.ent	strpbrk
	.type	strpbrk, @function
strpbrk:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	brid	$L460
	addk	r19,r1,r0
$L462:
	lbui	r8,r7,-1
	lbui	r4,r5,0
	xor	r4,r4,r8
	sext8	r4,r4
	bneid	r4,$L463
	addk	r3,r5,r0
	brid	$L464
	addk	r1,r19,r0
$L465:
	addk	r7,r6,r0
$L463:
	lbui	r4,r7,0
	bneid	r4,$L462
	addik	r7,r7,1
	addik	r7,r7,-1
	addik	r5,r5,1
$L460:
	lbui	r3,r5,0
	bnei	r3,$L465
	addk	r1,r19,r0
$L464:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	strpbrk
$Lfe94:
	.size	strpbrk,$Lfe94-strpbrk
	.align	2
	.globl	strrchr
	.ent	strrchr
	.type	strrchr, @function
strrchr:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
$L469:
	lbui	r4,r5,0
	sext8	r4,r4
	xor	r4,r6,r4
	bnei	r4,$L468
	addk	r3,r5,r0
$L468:
	addik	r5,r5,1
	lbui	r4,r5,-1
	bnei	r4,$L469
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	strrchr
$Lfe95:
	.size	strrchr,$Lfe95-strrchr
	.align	2
	.globl	strstr
	.ent	strstr
	.type	strstr, @function
strstr:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	brlid	r15,strlen
	
	addk	r5,r6,r0
	beqid	r3,$L475
	addk	r24,r3,r0
	lbui	r25,r23,0
	brid	$L473
	sext8	r25,r25
$L474:
	addk	r7,r24,r0
	addk	r6,r23,r0
	brlid	r15,strncmp
	
	addk	r5,r22,r0
	beqid	r3,$L476
	addk	r3,r22,r0
	addik	r22,r22,1
$L473:
	addk	r6,r25,r0
	brlid	r15,strchr
	
	addk	r5,r22,r0
	bneid	r3,$L474
	addk	r22,r3,r0
	brid	$L472
	addk	r3,r0,r0
$L475:
	addk	r3,r22,r0
$L476:
$L472:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	strstr
$Lfe96:
	.size	strstr,$Lfe96-strstr
	.align	2
	.globl	copysign
	.ent	copysign
	.type	copysign, @function
copysign:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bgeid	r3,$L478
	addk	r5,r24,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__gtdf2
	
	addk	r6,r25,r0
	bgti	r3,$L480
$L478:
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L488
	addk	r4,r22,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bgei	r3,$L489
$L480:
	addik	r4,r22,-2147483648
	brid	$L481
	addk	r5,r23,r0
$L488:
	brid	$L481
	addk	r5,r23,r0
$L489:
	addk	r4,r22,r0
	addk	r5,r23,r0
$L481:
	addk	r3,r4,r0
	addk	r4,r5,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	copysign
$Lfe97:
	.size	copysign,$Lfe97-copysign
	.align	2
	.globl	memmem
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r7,r0
	addk	r25,r8,r0
	rsubk	r24,r8,r6
	beqid	r8,$L496
	addk	r24,r5,r24
	cmpu	r18,r8,r6
	bltid	r18,$L492
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L492:
	andi	r3,r3,0x00ff
	bneid	r3,$L499
	addk	r3,r0,r0
	bri	$L493
$L495:
	lbui	r3,r22,0
	lbui	r4,r23,0
	xor	r4,r4,r3
	sext8	r4,r4
	bneid	r4,$L494
	addik	r7,r25,-1
	addik	r6,r23,1
	brlid	r15,memcmp
	
	addik	r5,r22,1
	beqid	r3,$L498
	addk	r3,r22,r0
$L494:
	addik	r22,r22,1
$L493:
	cmpu	r18,r22,r24
	bgeid	r18,$L495
	addk	r3,r0,r0
	brid	$L500
	lwi	r15,r1,0
$L496:
	addk	r3,r5,r0
$L498:
$L491:
$L499:
	lwi	r15,r1,0
$L500:
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	memmem
$Lfe98:
	.size	memmem,$Lfe98-memmem
	.align	2
	.globl	mempcpy
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r1,r0
	brlid	r15,memcpy
	
	addk	r22,r7,r0
	addk	r3,r3,r22
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	mempcpy
$Lfe99:
	.size	mempcpy,$Lfe99-mempcpy
	.align	2
	.globl	frexp
	.ent	frexp
	.type	frexp, @function
frexp:
	.frame	r19,56,r15		# vars= 0, regs= 7, args= 24
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
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r25,r7,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bgeid	r3,$L518
	addik	r26,r0,1	# 0x1
	addik	r4,r22,-2147483648
	brid	$L503
	addk	r22,r4,r0
$L518:
	addk	r26,r0,r0
$L503:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__gedf2
	
	addk	r6,r23,r0
	bgeid	r3,$L515
	addik	r24,r0,1	# 0x1
	brid	$L519
	addk	r5,r22,r0
$L507:
	addik	r24,r24,1
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	brid	$L505
	addk	r23,r4,r0
$L515:
	addk	r24,r0,r0
$L505:
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__gedf2
	
	addk	r6,r23,r0
	bgeid	r3,$L507
	addk	r5,r22,r0
	brid	$L520
	swi	r24,r25,0
$L519:
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__nedf2
	
	addk	r6,r23,r0
	bneid	r3,$L521
	andi	r24,r24,0x00ff
	addk	r24,r0,r0
	andi	r24,r24,0x00ff
$L521:
	addik	r27,r0,1	# 0x1
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	blti	r3,$L510
	addk	r27,r0,r0
$L510:
	and	r24,r24,r27
	bnei	r24,$L516
	brid	$L520
	swi	r24,r25,0
$L512:
	addik	r24,r24,-1
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__adddf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	brid	$L511
	addk	r23,r4,r0
$L516:
	addk	r24,r0,r0
$L511:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bltid	r3,$L512
	addk	r7,r22,r0
	swi	r24,r25,0
$L520:
	beqid	r26,$L522
	addk	r3,r22,r0
	addik	r4,r22,-2147483648
	addk	r22,r4,r0
	addk	r3,r22,r0
$L522:
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
	.end	frexp
$Lfe100:
	.size	frexp,$Lfe100-frexp
	.align	2
	.globl	__muldi3
	.ent	__muldi3
	.type	__muldi3, @function
__muldi3:
	.frame	r19,24,r15		# vars= 0, regs= 5, args= 0
	.mask	0x03c80000
	addik	r1,r1,-24
	swi	r19,r1,4
	swi	r22,r1,8
	swi	r23,r1,12
	swi	r24,r1,16
	swi	r25,r1,20
	addk	r4,r5,r0
	addk	r5,r6,r0
	addk	r6,r7,r0
	addk	r7,r8,r0
	addik	r8,r0,0x00000000
	addik	r9,r0,0x00000000 #li => la
	brid	$L524
	addk	r19,r1,r0
$L527:
	andi	r25,r5,1 #and1
	or	r3,r24,r25
	beqi	r3,$L525
	add	r9,r9,r7
	addc	r8,r8,r6
$L525:
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
	addk	r10,r6,r6
	or	r10,r3,r10
	addk	r11,r7,r7
	addk	r6,r10,r0
	addk	r7,r11,r0
	src	r3,r4
	src	r3,r3
	andi	r3,r3,-2147483648
	srl	r23,r5
	or	r23,r3,r23
	srl	r22,r4
	addk	r4,r22,r0
	addk	r5,r23,r0
$L524:
	or	r3,r4,r5
	bneid	r3,$L527
	addk	r24,r0,r0
	addk	r3,r8,r0
	addk	r4,r9,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	lwi	r24,r1,16
	lwi	r25,r1,20
	rtsd	r15,8 
	
	addik	r1,r1,24
	.end	__muldi3
$Lfe101:
	.size	__muldi3,$Lfe101-__muldi3
	.align	2
	.globl	udivmodsi4
	.ent	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L529
	addik	r4,r0,1	# 0x1
$L532:
	addk	r6,r6,r6
	addk	r4,r4,r4
$L529:
	cmpu	r18,r5,r6
	bltid	r18,$L530
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L530:
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
	beqi	r8,$L537
	bgei	r6,$L532
	brid	$L534
	addk	r3,r0,r0
$L535:
	cmpu	r18,r6,r5
	blti	r18,$L533
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L533:
	srl	r4,r4
	brid	$L534
	srl	r6,r6
$L537:
	addk	r3,r0,r0
$L534:
	bnei	r4,$L535
	beqi	r7,$L536
	addk	r3,r5,r0
$L536:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	udivmodsi4
$Lfe102:
	.size	udivmodsi4,$Lfe102-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.ent	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	bgeid	r5,$L540
	addk	r19,r1,r0
	xori	r5,r5,-1
$L540:
	beqid	r5,$L542
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	brlid	r15,__clzsi2
	
	addk	r5,r5,r5
	brid	$L541
	addik	r3,r3,-1
$L542:
	addik	r3,r0,7	# 0x7
$L541:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	__clrsbqi2
$Lfe103:
	.size	__clrsbqi2,$Lfe103-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.ent	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r19,r1,r0
	addk	r4,r5,r0
	bgeid	r4,$L544
	addk	r5,r6,r0
	xori	r6,r4,-1
	xori	r7,r5,-1
	addk	r4,r6,r0
	addk	r5,r7,r0
$L544:
	or	r3,r4,r5
	beqid	r3,$L548
	addk	r6,r5,r0
	brlid	r15,__clzdi2
	
	addk	r5,r4,r0
	brid	$L546
	addik	r3,r3,-1
$L548:
	addik	r3,r0,63	# 0x3f
$L546:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	__clrsbdi2
$Lfe104:
	.size	__clrsbdi2,$Lfe104-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.ent	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L550
	addk	r3,r0,r0
$L552:
	beqi	r4,$L551
	addk	r3,r3,r6
$L551:
	srl	r5,r5
	addk	r6,r6,r6
$L550:
	bneid	r5,$L552
	andi	r4,r5,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__mulsi3
$Lfe105:
	.size	__mulsi3,$Lfe105-__mulsi3
	.align	2
	.globl	__cmovd
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	r19,16,r15		# vars= 0, regs= 3, args= 0
	.mask	0x00c80000
	addik	r1,r1,-16
	swi	r19,r1,4
	swi	r22,r1,8
	swi	r23,r1,12
	addk	r19,r1,r0
	addk	r11,r0,r7
	srl	r11,r7
	srl	r11,r11
	srl	r11,r11
	cmpu	r18,r6,r5
	bgeid	r18,$L554
	andi	r3,r7,-8 #and1
	addk	r9,r6,r0
$L565:
	addk	r8,r5,r0
	brid	$L555
	addk	r4,r0,r0
$L554:
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	bltid	r18,$L565
	addk	r9,r6,r0
	brid	$L563
	addik	r7,r7,-1
$L558:
	lwi	r22,r9,0
	lwi	r23,r9,4
	swi	r22,r8,0
	swi	r23,r8,4
	addik	r4,r4,1
	addik	r9,r9,8
	addik	r8,r8,8
$L555:
	xor	r10,r4,r11
	bnei	r10,$L558
	bri	$L559
$L560:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
$L559:
	cmpu	r18,r7,r3
	blti	r18,$L560
	brid	$L564
	addk	r1,r19,r0
$L562:
	lbu	r3,r7,r6
	sb	r3,r7,r5
	addik	r7,r7,-1
$L563:
	xori	r3,r7,-1
	bnei	r3,$L562
	addk	r1,r19,r0
$L564:
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
	.end	__cmovd
$Lfe106:
	.size	__cmovd,$Lfe106-__cmovd
	.align	2
	.globl	__cmovh
	.ent	__cmovh
	.type	__cmovh, @function
__cmovh:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	cmpu	r18,r6,r5
	bgeid	r18,$L567
	srl	r8,r7
$L569:
	addk	r8,r8,r8
	brid	$L568
	addk	r3,r0,r0
$L567:
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	blti	r18,$L569
	brid	$L574
	addik	r7,r7,-1
$L571:
	lhu	r4,r3,r6
	sh	r4,r3,r5
	addik	r3,r3,2
$L568:
	xor	r4,r3,r8
	bnei	r4,$L571
	andi	r3,r7,1 #and1
	beqi	r3,$L566
	addik	r7,r7,-1
	lbu	r3,r7,r6
	brid	$L566
	sb	r3,r7,r5
$L573:
	lbu	r3,r7,r6
	sb	r3,r7,r5
	addik	r7,r7,-1
$L574:
	xori	r3,r7,-1
	bnei	r3,$L573
$L566:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__cmovh
$Lfe107:
	.size	__cmovh,$Lfe107-__cmovh
	.align	2
	.globl	__cmovw
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r9,r0,r7
	srl	r9,r7
	srl	r9,r9
	cmpu	r18,r6,r5
	bgeid	r18,$L576
	andi	r3,r7,-4 #and1
$L578:
	addk	r9,r9,r9
	addk	r9,r9,r9
	brid	$L577
	addk	r4,r0,r0
$L576:
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	blti	r18,$L578
	brid	$L585
	addik	r7,r7,-1
$L580:
	lw	r8,r4,r6
	sw	r8,r4,r5
	addik	r4,r4,4
$L577:
	xor	r8,r4,r9
	bnei	r8,$L580
	bri	$L581
$L582:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
$L581:
	cmpu	r18,r7,r3
	blti	r18,$L582
	brid	$L586
	addk	r1,r19,r0
$L584:
	lbu	r3,r7,r6
	sb	r3,r7,r5
	addik	r7,r7,-1
$L585:
	xori	r3,r7,-1
	bnei	r3,$L584
	addk	r1,r19,r0
$L586:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	brlid	r15,__modsi3
	
	addk	r19,r1,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	brlid	r15,__floatunsidf
	
	addk	r19,r1,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	brlid	r15,__floatunsisf
	
	addk	r19,r1,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	brlid	r15,__floatundidf
	
	addk	r19,r1,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	brlid	r15,__floatundisf
	
	addk	r19,r1,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	brlid	r15,__umodsi3
	
	addk	r19,r1,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	__umodi
$Lfe114:
	.size	__umodi,$Lfe114-__umodi
	.align	2
	.globl	__clzhi2
	.ent	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L594
	addk	r3,r0,r0
$L596:
	rsubk	r6,r3,r4
	andi	r18,r6,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	andi	r4,r4,1 #and1
	bnei	r4,$L595
	addik	r3,r3,1
$L594:
	xori	r4,r3,16
	bneid	r4,$L596
	addik	r4,r0,15	# 0xf
$L595:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__clzhi2
$Lfe115:
	.size	__clzhi2,$Lfe115-__clzhi2
	.align	2
	.globl	__ctzhi2
	.ent	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L598
	addk	r3,r0,r0
$L600:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	andi	r4,r4,1 #and1
	bnei	r4,$L599
	addik	r3,r3,1
$L598:
	xori	r4,r3,16
	bnei	r4,$L600
$L599:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__ctzhi2
$Lfe116:
	.size	__ctzhi2,$Lfe116-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.ent	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r22,r5,r0
	addik	r6,r0,0x47000000
	brlid	r15,__gesf2
	
	addk	r19,r1,r0
	blti	r3,$L606
	addik	r6,r0,0x47000000
	addk	r5,r22,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	addik	r3,r3,32768
	brid	$L607
	lwi	r15,r1,0
$L606:
	addk	r5,r22,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	lwi	r15,r1,0
$L607:
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	__fixunssfsi
$Lfe117:
	.size	__fixunssfsi,$Lfe117-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.ent	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
	brid	$L609
	addk	r4,r3,r0
$L611:
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r6,r6
	andi	r6,r6,1 #and1
	beqi	r6,$L610
	addik	r3,r3,1
$L610:
	addik	r4,r4,1
$L609:
	xori	r6,r4,16
	bnei	r6,$L611
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__parityhi2
$Lfe118:
	.size	__parityhi2,$Lfe118-__parityhi2
	.align	2
	.globl	__popcounthi2
	.ent	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r3,r0,r0
	brid	$L613
	addk	r4,r3,r0
$L615:
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r6,r6
	andi	r6,r6,1 #and1
	beqi	r6,$L614
	addik	r3,r3,1
$L614:
	addik	r4,r4,1
$L613:
	xori	r6,r4,16
	bnei	r6,$L615
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__popcounthi2
$Lfe119:
	.size	__popcounthi2,$Lfe119-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.ent	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L617
	addk	r3,r0,r0
$L619:
	beqi	r4,$L618
	addk	r3,r3,r6
$L618:
	srl	r5,r5
	addk	r6,r6,r6
$L617:
	bneid	r5,$L619
	andi	r4,r5,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__mulsi3_iq2000
$Lfe120:
	.size	__mulsi3_iq2000,$Lfe120-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.ent	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	beqid	r5,$L625
	addk	r19,r1,r0
	brid	$L622
	addk	r3,r0,r0
$L624:
	beqi	r4,$L623
	addk	r3,r3,r5
$L623:
	addk	r5,r5,r5
	srl	r6,r6
$L622:
	bneid	r6,$L624
	andi	r4,r6,1 #and1
	brid	$L626
	addk	r1,r19,r0
$L625:
	addk	r3,r0,r0
	addk	r1,r19,r0
$L626:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__mulsi3_lm32
$Lfe121:
	.size	__mulsi3_lm32,$Lfe121-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.ent	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L628
	addik	r4,r0,1	# 0x1
$L631:
	addk	r6,r6,r6
	addk	r4,r4,r4
$L628:
	cmpu	r18,r5,r6
	bltid	r18,$L629
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L629:
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
	beqi	r8,$L636
	bgei	r6,$L631
	brid	$L633
	addk	r3,r0,r0
$L634:
	cmpu	r18,r6,r5
	blti	r18,$L632
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L632:
	srl	r4,r4
	brid	$L633
	srl	r6,r6
$L636:
	addk	r3,r0,r0
$L633:
	bnei	r4,$L634
	beqi	r7,$L635
	addk	r3,r5,r0
$L635:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__udivmodsi4
$Lfe122:
	.size	__udivmodsi4,$Lfe122-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	r19,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r22,r5,r0
	addk	r23,r6,r0
	brlid	r15,__ltsf2
	
	addk	r19,r1,r0
	bltid	r3,$L642
	addik	r3,r0,-1	# 0xffffffffffffffff
	addk	r6,r23,r0
	addk	r5,r22,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bleid	r3,$L639
	addk	r3,r0,r0
	addik	r3,r0,1	# 0x1
$L639:
$L642:
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
	.end	__mspabi_cmpf
$Lfe123:
	.size	__mspabi_cmpf,$Lfe123-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.ent	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	brlid	r15,__ltdf2
	
	addk	r25,r8,r0
	bltid	r3,$L645
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bgtid	r3,$L646
	addk	r3,r0,r0
	brid	$L647
	lwi	r15,r1,0
$L645:
	brid	$L644
	addik	r3,r0,-1	# 0xffffffffffffffff
$L646:
	addik	r3,r0,1	# 0x1
$L644:
	lwi	r15,r1,0
$L647:
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
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
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	addk	r4,r0,r0
	addk	r7,r4,r0
	addk	r8,r6,r0
	addk	r6,r5,r0
	brlid	r15,__muldi3
	
	addk	r5,r4,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	__mspabi_mpyull
$Lfe126:
	.size	__mspabi_mpyull,$Lfe126-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.ent	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	bgeid	r6,$L657
	addk	r19,r1,r0
	rsubk	r6,r6,r0
	brid	$L651
	addik	r11,r0,1	# 0x1
$L657:
	addk	r11,r0,r0
$L651:
	addk	r3,r0,r0
	brid	$L652
	addk	r4,r3,r0
$L655:
	andi	r7,r6,1 #and1
	beqi	r7,$L653
	addk	r3,r3,r5
$L653:
	addk	r5,r5,r5
	sra	r6,r6
	addik	r4,r4,1
	sext8	r4,r4
$L652:
	rsubk	r8,r6,r0
	or	r8,r8,r6
	addk	r7,r0,r8
	srl	r7,r8
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
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	andi	r8,r4,0x00ff
	addik	r10,r0,31	# 0x1f
	cmpu	r18,r8,r10
	bgeid	r18,$L654
	addik	r9,r0,1	# 0x1
	addk	r9,r0,r0
$L654:
	and	r7,r7,r9
	bnei	r7,$L655
	beqi	r11,$L656
	rsubk	r3,r3,r0
$L656:
	addk	r1,r19,r0
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
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	bgeid	r5,$L663
	addk	r19,r1,r0
	rsubk	r5,r5,r0
	brid	$L660
	addik	r22,r0,1	# 0x1
$L663:
	addk	r22,r0,r0
$L660:
	bgei	r6,$L661
	rsubk	r6,r6,r0
	xori	r22,r22,1
$L661:
	brlid	r15,__udivmodsi4
	
	addk	r7,r0,r0
	beqid	r22,$L664
	lwi	r15,r1,0
	rsubk	r3,r3,r0
$L664:
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	__divsi3
$Lfe128:
	.size	__divsi3,$Lfe128-__divsi3
	.align	2
	.globl	__modsi3
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	bgeid	r5,$L669
	addk	r19,r1,r0
	rsubk	r5,r5,r0
	brid	$L666
	addik	r22,r0,1	# 0x1
$L669:
	addk	r22,r0,r0
$L666:
	bgei	r6,$L667
	rsubk	r6,r6,r0
$L667:
	brlid	r15,__udivmodsi4
	
	addik	r7,r0,1	# 0x1
	beqid	r22,$L670
	lwi	r15,r1,0
	rsubk	r3,r3,r0
$L670:
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	__modsi3
$Lfe129:
	.size	__modsi3,$Lfe129-__modsi3
	.align	2
	.globl	__udivmodhi4
	.ent	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L672
	addik	r4,r0,1	# 0x1
$L675:
	addk	r6,r6,r6
	andi	r6,r6,0xffff
	addk	r4,r4,r4
	andi	r4,r4,0xffff
$L672:
	cmpu	r18,r5,r6
	bltid	r18,$L673
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L673:
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
	beqid	r8,$L680
	sext16	r3,r6
	bgei	r3,$L675
	brid	$L677
	addk	r3,r0,r0
$L678:
	cmpu	r18,r6,r5
	blti	r18,$L676
	rsubk	r5,r6,r5
	andi	r5,r5,0xffff
	or	r3,r3,r4
$L676:
	srl	r4,r4
	brid	$L677
	srl	r6,r6
$L680:
	addk	r3,r0,r0
$L677:
	bnei	r4,$L678
	beqi	r7,$L679
	addk	r3,r5,r0
$L679:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__udivmodhi4
$Lfe130:
	.size	__udivmodhi4,$Lfe130-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	brid	$L683
	addik	r4,r0,1	# 0x1
$L686:
	addk	r6,r6,r6
	addk	r4,r4,r4
$L683:
	cmpu	r18,r5,r6
	bltid	r18,$L684
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L684:
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
	beqi	r8,$L691
	bgei	r6,$L686
	brid	$L688
	addk	r3,r0,r0
$L689:
	cmpu	r18,r6,r5
	blti	r18,$L687
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L687:
	srl	r4,r4
	brid	$L688
	srl	r6,r6
$L691:
	addk	r3,r0,r0
$L688:
	bnei	r4,$L689
	beqi	r7,$L690
	addk	r3,r5,r0
$L690:
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__udivmodsi4_libgcc
$Lfe131:
	.size	__udivmodsi4_libgcc,$Lfe131-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.ent	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r8,r5,r0
	andi	r3,r7,32 #and1
	beqid	r3,$L694
	addk	r9,r6,r0
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	brid	$L698
	addk	r3,r4,r0
$L694:
	beqi	r7,$L697
	andi	r18,r7,31
	addk	r5,r0,r6
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	andi	r18,r7,31
	addk	r3,r0,r8
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	addik	r6,r0,32	# 0x20
	rsubk	r7,r7,r6
	andi	r18,r7,31
	addk	r6,r0,r9
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	brid	$L696
	or	r4,r6,r3
$L697:
	addk	r4,r5,r0
	addk	r5,r6,r0
$L696:
	addk	r3,r4,r0
$L698:
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__ashldi3
$Lfe132:
	.size	__ashldi3,$Lfe132-__ashldi3
	.align	2
	.globl	__ashrdi3
	.ent	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r8,r5,r0
	andi	r3,r7,32 #and1
	beqid	r3,$L700
	addk	r9,r6,r0
	addk	r4,r0,r5
	sra	r4,r5
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
	andi	r18,r7,31
	addk	r5,r0,r8
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r5,r5
	brid	$L704
	addk	r3,r4,r0
$L700:
	beqid	r7,$L703
	addik	r3,r0,32	# 0x20
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r4,r4
	rsubk	r3,r7,r3
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	andi	r18,r7,31
	addk	r3,r0,r9
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	brid	$L702
	or	r5,r6,r3
$L703:
	addk	r4,r5,r0
	addk	r5,r6,r0
$L702:
	addk	r3,r4,r0
$L704:
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__ashrdi3
$Lfe133:
	.size	__ashrdi3,$Lfe133-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.ent	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.frame	r19,56,r15		# vars= 8, regs= 11, args= 0
	.mask	0xffc80000
	addik	r1,r1,-56
	swi	r19,r1,12
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
	addk	r19,r1,r0
	addk	r28,r5,r0
	addk	r29,r6,r0
	addk	r5,r0,r28
	srl	r5,r28
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
	addk	r4,r0,r0
	addk	r7,r0,r28
	srl	r7,r28
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	addk	r24,r4,r0
	andi	r25,r7,65280 #and2
	addk	r12,r0,r28
	addk	r12,r28,r28
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r12,r12,r12
	addk	r7,r0,r6
	srl	r7,r6
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
	or	r7,r12,r7
	andi	r23,r7,16711680 #and2
	src	r3,r28
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-16777216
	addk	r7,r0,r6
	srl	r7,r6
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	srl	r7,r7
	or	r7,r3,r7
	andi	r11,r7,-16777216 #and2
	addk	r6,r0,r29
	srl	r6,r29
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	or	r6,r6,r12
	swi	r6,r19,4
	addk	r6,r0,r29
	addk	r6,r29,r29
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	addk	r6,r6,r6
	swi	r6,r19,8
	lwi	r6,r19,4
	andi	r26,r6,255 #and1
	addk	r8,r0,r29
	srl	r8,r29
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	or	r6,r8,r3
	src	r7,r29
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	andi	r7,r7,-16777216
	andi	r28,r6,65280 #and2
	lwi	r30,r19,8
	andi	r8,r30,16711680 #and2
	or	r4,r7,r4
	or	r5,r5,r25
	or	r6,r4,r24
	or	r7,r5,r23
	or	r4,r6,r24
	or	r5,r7,r11
	or	r6,r4,r26
	or	r4,r6,r28
	or	r6,r4,r8
	addk	r3,r6,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,12
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
	rtsd	r15,8 
	
	addik	r1,r1,56
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
	or	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__bswapsi2
$Lfe135:
	.size	__bswapsi2,$Lfe135-__bswapsi2
	.align	2
	.globl	__clzsi2
	.ent	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.frame	r19,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	addik	r3,r0,65535
	cmpu	r18,r5,r3
	bltid	r18,$L712
	addk	r19,r1,r0
	brid	$L708
	addik	r22,r0,16	# 0x10
$L712:
	addk	r22,r0,r0
$L708:
	addik	r3,r0,16	# 0x10
	rsubk	r3,r22,r3
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	andi	r3,r6,65280 #and2
	beqid	r3,$L709
	addik	r3,r0,8	# 0x8
	addk	r3,r0,r0
$L709:
	addik	r4,r0,8	# 0x8
	rsubk	r4,r3,r4
	addk	r5,r6,r0
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	addk	r22,r22,r3
	andi	r3,r6,240 #and1
	beqid	r3,$L710
	addik	r3,r0,4	# 0x4
	addk	r3,r0,r0
$L710:
	addik	r4,r0,4	# 0x4
	rsubk	r4,r3,r4
	addk	r5,r6,r0
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	addk	r22,r22,r3
	andi	r3,r6,12 #and1
	beqid	r3,$L711
	addik	r3,r0,2	# 0x2
	addk	r3,r0,r0
$L711:
	addik	r5,r0,2	# 0x2
	rsubk	r4,r3,r5
	addk	r7,r6,r0
	andi	r18,r4,31
	addk	r6,r0,r7
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	addk	r22,r22,r3
	and	r4,r6,r5
	rsubk	r3,r4,r0
	or	r3,r3,r4
	xori	r3,r3,-1
	rsubk	r6,r6,r5
	addk	r5,r0,r3
	srl	r5,r3
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
	brlid	r15,__mulsi3
	nop		# Unfilled delay slot

	addk	r3,r22,r3
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
	.end	__clzsi2
$Lfe136:
	.size	__clzsi2,$Lfe136-__clzsi2
	.align	2
	.globl	__cmpdi2
	.ent	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r4,r5,r0
	addk	r5,r6,r0
	addk	r6,r7,r0
	cmp	r18,r6,r4
	bltid	r18,$L718
	addk	r19,r1,r0
	cmp	r18,r4,r6
	bltid	r18,$L722
	addik	r3,r0,2	# 0x2
	cmpu	r18,r8,r5
	bltid	r18,$L722
	addk	r3,r0,r0
	cmpu	r18,r5,r8
	bltid	r18,$L721
	addik	r3,r0,1	# 0x1
	brid	$L723
	addk	r1,r19,r0
$L718:
	brid	$L717
	addk	r3,r0,r0
	brid	$L717
	addk	r3,r0,r0
$L721:
	addik	r3,r0,2	# 0x2
$L717:
$L722:
	addk	r1,r19,r0
$L723:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	brlid	r15,__cmpdi2
	
	addk	r19,r1,r0
	addik	r3,r3,-1
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	__aeabi_lcmp
$Lfe138:
	.size	__aeabi_lcmp,$Lfe138-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.ent	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	andi	r3,r5,65535 #and2
	bneid	r3,$L730
	addk	r19,r1,r0
	brid	$L726
	addik	r3,r0,16	# 0x10
$L730:
	addk	r3,r0,r0
$L726:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r5,r4,255 #and1
	beqid	r5,$L727
	addik	r5,r0,8	# 0x8
	addk	r5,r0,r0
$L727:
	addk	r6,r4,r0
	andi	r18,r5,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addk	r3,r3,r5
	andi	r5,r4,15 #and1
	beqid	r5,$L728
	addik	r5,r0,4	# 0x4
	addk	r5,r0,r0
$L728:
	addk	r6,r4,r0
	andi	r18,r5,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addk	r3,r3,r5
	andi	r5,r4,3 #and1
	beqid	r5,$L729
	addik	r5,r0,2	# 0x2
	addk	r5,r0,r0
$L729:
	addk	r6,r4,r0
	andi	r18,r5,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r4,r4,3 #and1
	addk	r3,r3,r5
	xori	r5,r4,-1
	andi	r5,r5,1 #and1
	srl	r4,r4
	addik	r6,r0,2	# 0x2
	rsubk	r4,r4,r6
	rsubk	r5,r5,r0
	and	r4,r4,r5
	addk	r3,r3,r4
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__ctzsi2
$Lfe139:
	.size	__ctzsi2,$Lfe139-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.ent	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r8,r5,r0
	andi	r3,r7,32 #and1
	beqid	r3,$L735
	addk	r9,r6,r0
	addik	r4,r0,0x00000000
	addik	r5,r0,0x00000000 #li => la
	andi	r18,r7,31
	addk	r5,r0,r8
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r5,r5
	brid	$L739
	addk	r3,r4,r0
$L735:
	beqid	r7,$L738
	addik	r3,r0,32	# 0x20
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rsubk	r3,r7,r3
	andi	r18,r3,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	andi	r18,r7,31
	addk	r3,r0,r9
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	brid	$L737
	or	r5,r6,r3
$L738:
	addk	r4,r5,r0
	addk	r5,r6,r0
$L737:
	addk	r3,r4,r0
$L739:
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__lshrdi3
$Lfe140:
	.size	__lshrdi3,$Lfe140-__lshrdi3
	.align	2
	.globl	__muldsi3
	.ent	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.frame	r19,68,r15		# vars= 0, regs= 10, args= 24
	.mask	0x7fc88000
	addik	r1,r1,-68
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
	swi	r30,r1,64
	addk	r19,r1,r0
	addk	r27,r5,r0
	addk	r28,r6,r0
	andi	r29,r5,65535 #and2
	andi	r30,r6,65535 #and2
	addk	r6,r30,r0
	brlid	r15,__mulsi3
	
	addk	r5,r29,r0
	addk	r24,r0,r3
	srl	r24,r3
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
	andi	r26,r3,65535 #and2
	addk	r25,r0,r27
	srl	r25,r27
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
	addk	r6,r30,r0
	brlid	r15,__mulsi3
	
	addk	r5,r25,r0
	addk	r24,r24,r3
	addk	r4,r24,r24
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
	addk	r23,r4,r26
	addk	r22,r0,r24
	srl	r22,r24
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
	addk	r24,r0,r23
	srl	r24,r23
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
	andi	r27,r23,65535 #and2
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
	addk	r6,r26,r0
	brlid	r15,__mulsi3
	
	addk	r5,r29,r0
	addk	r24,r24,r3
	addk	r3,r24,r24
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
	addk	r23,r3,r27
	addk	r3,r0,r24
	srl	r3,r24
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r24,r3,r22
	addk	r6,r26,r0
	brlid	r15,__mulsi3
	
	addk	r5,r25,r0
	addk	r22,r3,r24
	addk	r3,r22,r0
	addk	r4,r23,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	lwi	r29,r1,60
	lwi	r30,r1,64
	rtsd	r15,8 
	
	addik	r1,r1,68
	.end	__muldsi3
$Lfe141:
	.size	__muldsi3,$Lfe141-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	r19,68,r15		# vars= 0, regs= 10, args= 24
	.mask	0xdfc88000
	addik	r1,r1,-68
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r28,r1,56
	swi	r30,r1,60
	swi	r31,r1,64
	addk	r19,r1,r0
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r26,r7,r0
	addk	r27,r8,r0
	addk	r6,r8,r0
	brlid	r15,__muldsi3
	
	addk	r5,r23,r0
	addk	r25,r4,r0
	addk	r28,r3,r0
	addk	r6,r27,r0
	brlid	r15,__mulsi3
	
	addk	r5,r22,r0
	addk	r22,r3,r0
	addk	r6,r23,r0
	brlid	r15,__mulsi3
	
	addk	r5,r26,r0
	addk	r22,r22,r3
	addk	r24,r22,r28
	addk	r3,r24,r0
	addk	r4,r25,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	lwi	r28,r1,56
	lwi	r30,r1,60
	lwi	r31,r1,64
	rtsd	r15,8 
	
	addik	r1,r1,68
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
	addk	r4,r5,r0
	addk	r5,r6,r0
	rsub	r5,r5,r0
	rsubc	r4,r4,r0
	addk	r3,r4,r0
	addk	r4,r5,r0
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__negdi2
$Lfe143:
	.size	__negdi2,$Lfe143-__negdi2
	.align	2
	.globl	__paritydi2
	.ent	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	xor	r4,r6,r5
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
	xor	r4,r4,r3
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r4,r4,r3
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r4,r4,r3
	andi	r4,r4,15 #and1
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
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__paritydi2
$Lfe144:
	.size	__paritydi2,$Lfe144-__paritydi2
	.align	2
	.globl	__paritysi2
	.ent	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
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
	andi	r3,r3,1 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__paritysi2
$Lfe145:
	.size	__paritysi2,$Lfe145-__paritysi2
	.align	2
	.globl	__popcountdi2
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
	addk	r7,r6,r0
	addk	r6,r5,r0
	src	r3,r5
	src	r3,r3
	andi	r3,r3,-2147483648
	srl	r5,r7
	or	r5,r3,r5
	srl	r4,r6
	andi	r8,r4,1431655765 #and2
	andi	r9,r5,1431655765 #and2
	rsub	r5,r9,r7
	rsubc	r4,r8,r6
	src	r3,r4
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-1073741824
	addk	r7,r0,r5
	srl	r7,r5
	srl	r7,r7
	or	r7,r3,r7
	addk	r6,r0,r4
	srl	r6,r4
	srl	r6,r6
	andi	r8,r6,858993459 #and2
	andi	r9,r7,858993459 #and2
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
	andi	r3,r3,127 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__popcountdi2
$Lfe146:
	.size	__popcountdi2,$Lfe146-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.ent	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r19,r1,r0
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
	andi	r3,r3,63 #and1
	addk	r1,r19,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
	.end	__popcountsi2
$Lfe147:
	.size	__popcountsi2,$Lfe147-__popcountsi2
	.align	2
	.globl	__powidf2
	.ent	__powidf2
	.type	__powidf2, @function
__powidf2:
	.frame	r19,56,r15		# vars= 0, regs= 7, args= 24
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
	addk	r19,r1,r0
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r22,r7,r0
	addk	r23,r0,r7
	srl	r23,r7
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
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	srl	r23,r23
	addik	r26,r0,0x3ff00000 
	addik	r27,r0,0x00000000 #Xfer Lo
$L750:
	andi	r3,r22,1 #and1
	beqid	r3,$L748
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r26,r0
	brlid	r15,__muldf3
	
	addk	r6,r27,r0
	addk	r26,r3,r0
	addk	r27,r4,r0
$L748:
	addk	r4,r0,r22
	srl	r4,r22
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r4,r4,r22
	sra	r22,r4
	beqid	r22,$L749
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	addk	r24,r3,r0
	brid	$L750
	addk	r25,r4,r0
$L749:
	beqid	r23,$L753
	addk	r3,r26,r0
	addk	r7,r26,r0
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	
	addk	r8,r27,r0
	addk	r26,r3,r0
	addk	r27,r4,r0
	addk	r3,r26,r0
$L753:
	addk	r4,r27,r0
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	rtsd	r15,8 
	
	addik	r1,r1,56
	.end	__powidf2
$Lfe148:
	.size	__powidf2,$Lfe148-__powidf2
	.align	2
	.globl	__powisf2
	.ent	__powisf2
	.type	__powisf2, @function
__powisf2:
	.frame	r19,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r19,r1,r0
	addk	r23,r5,r0
	addk	r22,r6,r0
	addk	r25,r0,r6
	srl	r25,r6
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
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	srl	r25,r25
	addik	r24,r0,0x3f800000
	andi	r3,r22,1 #and1
$L760:
	beqi	r3,$L755
	addk	r6,r23,r0
	addk	r5,r24,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r24,r3,r0
$L755:
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
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r22,r3,r22
	sra	r22,r22
	beqi	r22,$L756
	addk	r6,r23,r0
	addk	r5,r23,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	addk	r23,r3,r0
	brid	$L760
	andi	r3,r22,1 #and1
$L756:
	beqi	r25,$L759
	addk	r6,r24,r0
	addik	r5,r0,0x3f800000
	brlid	r15,__divsf3
	nop		# Unfilled delay slot

	brid	$L761
	lwi	r15,r1,0
$L759:
	addk	r3,r24,r0
	lwi	r15,r1,0
$L761:
	addk	r1,r19,r0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
	.end	__powisf2
$Lfe149:
	.size	__powisf2,$Lfe149-__powisf2
	.align	2
	.globl	__ucmpdi2
	.ent	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r4,r5,r0
	addk	r5,r6,r0
	addk	r6,r7,r0
	cmpu	r18,r6,r4
	bltid	r18,$L764
	addk	r19,r1,r0
	cmpu	r18,r4,r6
	bltid	r18,$L768
	addik	r3,r0,2	# 0x2
	cmpu	r18,r8,r5
	bltid	r18,$L768
	addk	r3,r0,r0
	cmpu	r18,r5,r8
	bltid	r18,$L767
	addik	r3,r0,1	# 0x1
	brid	$L769
	addk	r1,r19,r0
$L764:
	brid	$L763
	addk	r3,r0,r0
	brid	$L763
	addk	r3,r0,r0
$L767:
	addik	r3,r0,2	# 0x2
$L763:
$L768:
	addk	r1,r19,r0
$L769:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
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
	brlid	r15,__ucmpdi2
	
	addk	r19,r1,r0
	addik	r3,r3,-1
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
	.end	__aeabi_ulcmp
$Lfe151:
	.size	__aeabi_ulcmp,$Lfe151-__aeabi_ulcmp
	.bss
	.lcomm	s.0,7,4
	.type	s.0, @object
	.section	.note.GNU-stack,"",@progbits
