	.text
	.align	2
	.globl	memmove
	.ent	memmove
	.type	memmove, @function
memmove:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmpu	r18,r5,r6
	bgeid	r18,$L2
	addk	r3,r5,r0
	beqi	r7,$L3
	addik	r6,r6,-1
	addik	r4,r5,-1
$L4:
	lbu	r5,r7,r6
	sb	r5,r7,r4
	addik	r7,r7,-1
	bnei	r7,$L4
$L3:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L2:
	xor	r4,r5,r6
	beqi	r4,$L3
	beqi	r7,$L3
	addk	r4,r0,r0
$L5:
	lbu	r5,r4,r6
	sb	r5,r4,r3
	addik	r4,r4,1
	xor	r5,r7,r4
	bnei	r5,$L5
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	bneid	r8,$L16
	andi	r7,r7,0x00ff
	brid	$L25
	addk	r3,r0,r0
$L19:
	beqid	r8,$L18
	addik	r5,r5,1
$L16:
	lbui	r4,r6,0
	addik	r8,r8,-1
	sbi	r4,r5,0
	xor	r4,r4,r7
	bneid	r4,$L19
	addik	r6,r6,1
	rtsd	r15,8 
	
	addik	r3,r5,1
$L18:
	addk	r3,r0,r0
$L25:
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
	bneid	r7,$L27
	andi	r6,r6,0x00ff
	brid	$L32
	addk	r3,r7,r0
$L29:
	beqid	r7,$L30
	addik	r5,r5,1
$L27:
	lbui	r4,r5,0
	xor	r4,r4,r6
	bneid	r4,$L29
	addik	r7,r7,-1
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L30:
	addk	r3,r7,r0
$L32:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	beqi	r7,$L38
$L44:
	lbui	r4,r5,0
	lbui	r3,r6,0
	addik	r7,r7,-1
	xor	r8,r4,r3
	bneid	r8,$L43
	addik	r5,r5,1
	bneid	r7,$L44
	addik	r6,r6,1
$L38:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L43:
	rtsd	r15,8 
	
	rsubk	r3,r3,r4
	.end	memcmp
$Lfe4:
	.size	memcmp,$Lfe4-memcmp
	.align	2
	.globl	memcpy
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r19,r1,28
	swi	r15,r1,0
	beqid	r7,$L46
	addk	r19,r5,r0
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L46:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	addik	r7,r7,-1
	addk	r7,r5,r7
	andi	r6,r6,0x00ff
	brid	$L52
	addik	r5,r5,-1
$L54:
	lbui	r4,r3,0
	xor	r4,r4,r6
	beqid	r4,$L51
	addik	r7,r7,-1
$L52:
	xor	r4,r7,r5
	bneid	r4,$L54
	addk	r3,r7,r0
	addk	r3,r4,r0
$L51:
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
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r19,r1,28
	swi	r15,r1,0
	beqid	r7,$L58
	addk	r19,r5,r0
	brlid	r15,memset
	
	andi	r6,r6,0x00ff
$L58:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	addk	r3,r5,r0
	lbui	r4,r6,0
	sext8	r5,r4
	beqid	r5,$L61
	sbi	r4,r3,0
$L62:
	lbui	r4,r6,1
	addik	r3,r3,1
	addik	r6,r6,1
	sext8	r5,r4
	bneid	r5,$L62
	sbi	r4,r3,0
$L61:
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
	lbui	r4,r5,0
	addk	r3,r5,r0
	sext8	r4,r4
	bneid	r4,$L68
	andi	r6,r6,0x00ff
	bri	$L67
$L70:
	lbui	r4,r3,1
	sext8	r4,r4
	beqid	r4,$L67
	addik	r3,r3,1
$L68:
	andi	r4,r4,0x00ff
	xor	r4,r4,r6
	bnei	r4,$L70
$L67:
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
	brid	$L76
	addk	r3,r5,r0
$L79:
	beqid	r4,$L78
	addik	r3,r3,1
$L76:
	lbui	r4,r3,0
	sext8	r4,r4
	xor	r5,r4,r6
	bnei	r5,$L79
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L78:
	rtsd	r15,8 
	
	addk	r3,r4,r0
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
	lbui	r4,r6,0
	lbui	r8,r5,0
	addik	r7,r0,1	# 0x1
	sext8	r4,r4
	sext8	r3,r8
	xor	r9,r3,r4
	bneid	r9,$L87
	addik	r6,r6,-1
$L81:
	beqid	r3,$L88
	andi	r4,r4,0x00ff
	lbu	r8,r7,r5
	addik	r7,r7,1
	lbu	r4,r7,r6
	sext8	r3,r8
	sext8	r4,r4
	xor	r9,r3,r4
	beqi	r9,$L81
$L87:
	andi	r3,r8,0x00ff
	andi	r4,r4,0x00ff
$L88:
	rtsd	r15,8 
	
	rsubk	r3,r4,r3
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
	lbui	r3,r5,0
	sext8	r3,r3
	beqi	r3,$L89
	addk	r3,r5,r0
$L91:
	lbui	r4,r3,1
	bneid	r4,$L91
	addik	r3,r3,1
	rsubk	r3,r5,r3
$L89:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	beqid	r7,$L101
	addk	r8,r6,r0
	lbui	r9,r5,0
	addik	r7,r7,-1
	bneid	r9,$L98
	addk	r11,r6,r7
	brid	$L108
	lbui	r3,r6,0
$L110:
	addk	r4,r0,r7
	srl	r4,r7
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	beqi	r4,$L97
	lbui	r9,r5,0
	beqid	r9,$L109
	addik	r3,r8,1
	addk	r8,r3,r0
$L98:
	lbui	r3,r8,0
	xor	r6,r8,r11
	rsubk	r7,r6,r0
	xor	r4,r3,r9
	rsubk	r10,r3,r0
	addik	r4,r4,-1
	and	r4,r4,r10
	addik	r5,r5,1
	bltid	r4,$L110
	or	r7,r7,r6
$L97:
	rsubk	r3,r3,r9
$L94:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L101:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L109:
	lbui	r3,r8,1
	brid	$L94
	rsubk	r3,r3,r9
$L108:
	brid	$L94
	rsubk	r3,r3,r9
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
	addik	r3,r0,1	# 0x1
	cmp	r18,r7,r3
	bgeid	r18,$L111
	andi	r7,r7,-2 #and1
	addk	r4,r5,r7
$L113:
	lbui	r3,r5,1
	addik	r5,r5,2
	addik	r6,r6,2
	sbi	r3,r6,-2
	lbui	r3,r5,-2
	sbi	r3,r6,-1
	xor	r3,r5,r4
	bnei	r3,$L113
$L111:
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
	addik	r4,r0,25	# 0x19
	addik	r5,r5,-97
	cmpu	r18,r5,r4
	bgeid	r18,$L116
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L116:
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
	addik	r4,r0,127	# 0x7f
	cmpu	r18,r5,r4
	bgeid	r18,$L118
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L118:
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
	xori	r6,r5,32
	xori	r5,r5,9
	rsubk	r4,r6,r0
	rsubk	r3,r5,r0
	or	r4,r4,r6
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
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r5,r3
	bgeid	r18,$L121
	addik	r6,r0,1	# 0x1
	addk	r6,r0,r0
$L121:
	xori	r5,r5,127
	rsubk	r4,r5,r0
	or	r4,r4,r5
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
	or	r3,r3,r6
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r4,r0,9	# 0x9
	addik	r5,r5,-48
	cmpu	r18,r5,r4
	bgeid	r18,$L123
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L123:
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
	addik	r4,r0,93	# 0x5d
	addik	r5,r5,-33
	cmpu	r18,r5,r4
	bgeid	r18,$L125
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L125:
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
	addik	r4,r0,25	# 0x19
	addik	r5,r5,-97
	cmpu	r18,r5,r4
	bgeid	r18,$L127
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L127:
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
	addik	r4,r0,94	# 0x5e
	addik	r5,r5,-32
	cmpu	r18,r5,r4
	bgeid	r18,$L129
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L129:
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
	addik	r3,r0,4	# 0x4
	addik	r4,r5,-9
	cmpu	r18,r4,r3
	bgeid	r18,$L131
	addik	r6,r0,1	# 0x1
	addk	r6,r0,r0
$L131:
	xori	r5,r5,32
	rsubk	r4,r5,r0
	or	r4,r4,r5
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
	or	r3,r3,r6
	rtsd	r15,8 
	
	andi	r3,r3,1 #and1
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
	addik	r4,r0,25	# 0x19
	addik	r5,r5,-65
	cmpu	r18,r5,r4
	bgeid	r18,$L133
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L133:
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
	addik	r3,r0,32	# 0x20
	addik	r4,r5,-127
	cmpu	r18,r4,r3
	bgei	r18,$L139
	addik	r3,r0,31	# 0x1f
	cmpu	r18,r5,r3
	bgeid	r18,$L139
	addik	r4,r0,1	# 0x1
	addik	r6,r5,-8232
	cmpu	r18,r6,r4
	bgeid	r18,$L134
	addk	r3,r4,r0
	addik	r5,r5,-65529
	addik	r6,r0,2	# 0x2
	cmpu	r18,r5,r6
	blti	r18,$L143
$L134:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L139:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L143:
	rtsd	r15,8 
	
	addk	r3,r0,r0
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
	addik	r4,r0,9	# 0x9
	addik	r5,r5,-48
	cmpu	r18,r5,r4
	bgeid	r18,$L145
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L145:
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
	addik	r3,r0,254	# 0xfe
	cmpu	r18,r5,r3
	bgeid	r18,$L157
	addik	r4,r5,-8234
	addik	r3,r0,47061
	cmpu	r18,r4,r3
	bltid	r18,$L158
	addik	r3,r0,8231	# 0x2027
	addik	r3,r0,1	# 0x1
$L146:
$L159:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L158:
	cmpu	r18,r5,r3
	bgeid	r18,$L159
	addik	r3,r0,1	# 0x1
	addik	r4,r5,-57344
	addik	r3,r0,8184	# 0x1ff8
	cmpu	r18,r4,r3
	bgeid	r18,$L159
	addik	r3,r0,1	# 0x1
	addik	r3,r0,1048579
	addik	r4,r5,-65532
	cmpu	r18,r4,r3
	blti	r18,$L154
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
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L157:
	addik	r5,r5,1
	andi	r5,r5,127 #and1
	addik	r4,r0,32	# 0x20
	cmpu	r18,r5,r4
	bltid	r18,$L146
	addik	r3,r0,1	# 0x1
$L154:
	rtsd	r15,8 
	
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
	addik	r4,r0,9	# 0x9
	addik	r6,r5,-48
	cmpu	r18,r6,r4
	bgeid	r18,$L160
	addik	r3,r0,1	# 0x1
	ori	r5,r5,32
	addik	r5,r5,-97
	addik	r4,r0,5	# 0x5
	cmpu	r18,r5,r4
	blti	r18,$L164
$L160:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L164:
	rtsd	r15,8 
	
	addk	r3,r0,r0
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
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r15,r1,0
	addk	r22,r5,r0
	brlid	r15,__unorddf2
	
	addk	r23,r6,r0
	bneid	r3,$L166
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L170
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L173
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r24,r0
	brlid	r15,__subdf3
	
	addk	r8,r25,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
$L166:
	addk	r3,r22,r0
$L175:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L173:
	addk	r22,r0,r0
	addk	r23,r0,r0
	brid	$L175
	addk	r3,r22,r0
$L170:
	addk	r22,r24,r0
	brid	$L166
	addk	r23,r25,r0
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
	swi	r22,r1,32
	addk	r22,r6,r0
	addk	r6,r5,r0
	swi	r19,r1,28
	swi	r15,r1,0
	addk	r19,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L179
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L180
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__gtsf2
	nop		# Unfilled delay slot

	bgtid	r3,$L185
	addk	r3,r0,r0
	lwi	r15,r1,0
$L186:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L185:
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L179:
	addk	r3,r19,r0
	brid	$L186
	lwi	r15,r1,0
$L180:
	addk	r3,r22,r0
	brid	$L186
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
	swi	r22,r1,28
	swi	r23,r1,32
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r15,r1,0
	addk	r24,r5,r0
	brlid	r15,__unorddf2
	
	addk	r25,r6,r0
	bneid	r3,$L187
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bnei	r3,$L194
	andi	r4,r24,-2147483648 #and2
	andi	r3,r22,-2147483648 #and2
	xor	r3,r4,r3
	beqid	r3,$L189
	addk	r7,r22,r0
	beqi	r4,$L194
$L187:
	addk	r3,r22,r0
$L199:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L189:
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bltid	r3,$L199
	addk	r3,r22,r0
$L194:
	addk	r22,r24,r0
	brid	$L187
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
	swi	r19,r1,28
	addk	r19,r6,r0
	addk	r6,r5,r0
	swi	r22,r1,32
	swi	r15,r1,0
	addk	r22,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L206
	addk	r6,r19,r0
	addk	r5,r19,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L207
	andi	r4,r22,-2147483648 #and2
	andi	r3,r19,-2147483648 #and2
	xor	r3,r4,r3
	bnei	r3,$L212
	addk	r6,r19,r0
	addk	r5,r22,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	blti	r3,$L206
	addk	r19,r22,r0
$L206:
	addk	r3,r19,r0
	lwi	r15,r1,0
$L213:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L212:
	addk	r3,r19,r0
	bneid	r4,$L213
	lwi	r15,r1,0
$L207:
	addk	r3,r22,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
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
	swi	r22,r1,28
	swi	r23,r1,32
	addk	r22,r7,r0
	addk	r23,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	swi	r24,r1,36
	swi	r25,r1,40
	swi	r15,r1,0
	addk	r24,r5,r0
	brlid	r15,__unorddf2
	
	addk	r25,r6,r0
	bneid	r3,$L214
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bnei	r3,$L221
	andi	r4,r24,-2147483648 #and2
	andi	r3,r22,-2147483648 #and2
	xor	r3,r4,r3
	beqid	r3,$L216
	addk	r7,r22,r0
	beqi	r4,$L221
$L214:
	addk	r3,r22,r0
$L226:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L216:
	addk	r8,r23,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bltid	r3,$L226
	addk	r3,r22,r0
$L221:
	addk	r22,r24,r0
	brid	$L214
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
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r15,r1,0
	addk	r22,r5,r0
	brlid	r15,__unorddf2
	
	addk	r23,r6,r0
	bneid	r3,$L233
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L239
	addk	r3,r22,r0
	andi	r4,r22,-2147483648 #and2
	andi	r3,r24,-2147483648 #and2
	xor	r3,r4,r3
	beqid	r3,$L229
	addk	r7,r24,r0
	beqi	r4,$L233
$L227:
	addk	r3,r22,r0
$L239:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L229:
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bltid	r3,$L239
	addk	r3,r22,r0
$L233:
	addk	r22,r24,r0
	brid	$L227
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
	swi	r22,r1,32
	addk	r22,r6,r0
	addk	r6,r5,r0
	swi	r19,r1,28
	swi	r15,r1,0
	addk	r19,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L246
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L247
	andi	r4,r19,-2147483648 #and2
	andi	r3,r22,-2147483648 #and2
	xor	r3,r4,r3
	bnei	r3,$L252
	addk	r6,r22,r0
	addk	r5,r19,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	blti	r3,$L247
	addk	r19,r22,r0
$L247:
	addk	r3,r19,r0
	lwi	r15,r1,0
$L253:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L252:
	addk	r3,r19,r0
	bneid	r4,$L253
	lwi	r15,r1,0
$L246:
	addk	r3,r22,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
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
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r7,r5,r0
	addk	r8,r6,r0
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r15,r1,0
	addk	r22,r5,r0
	brlid	r15,__unorddf2
	
	addk	r23,r6,r0
	bneid	r3,$L260
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L266
	addk	r3,r22,r0
	andi	r4,r22,-2147483648 #and2
	andi	r3,r24,-2147483648 #and2
	xor	r3,r4,r3
	beqid	r3,$L256
	addk	r7,r24,r0
	beqi	r4,$L260
$L254:
	addk	r3,r22,r0
$L266:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L256:
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bltid	r3,$L266
	addk	r3,r22,r0
$L260:
	addk	r22,r24,r0
	brid	$L254
	addk	r23,r25,r0
	.end	fminl
$Lfe37:
	.size	fminl,$Lfe37-fminl
	.align	2
	.globl	l64a
	.ent	l64a
	.type	l64a, @function
l64a:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r3,r0,s.0
	beqid	r5,$L268
	andi	r4,r5,63 #and1
	addik	r6,r0,digits
$L272:
	lbu	r4,r4,r6
	addik	r3,r3,1
	sbi	r4,r3,-1
	addk	r4,r5,r0
	addk	r5,r0,r4
	srl	r5,r4
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	bneid	r5,$L272
	andi	r4,r5,63 #and1
$L268:
	sbi	r0,r3,0
	addik	r3,r0,s.0
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	l64a
$Lfe38:
	.size	l64a,$Lfe38-l64a
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
	lwi	r5,r0,seed
	lwi	r6,r0,seed+4
	addik	r1,r1,-28
	addik	r7,r0,0x5851f42d
	addik	r8,r0,0x4c957f2d #li => la
	swi	r15,r1,0
	brlid	r15,__muldi3
	nop		# Unfilled delay slot

	addk	r5,r4,r0
	addk	r4,r3,r0
	addik	r6,r0,0x00000000
	addik	r7,r0,0x00000001 #li => la
	lwi	r15,r1,0
	add	r5,r5,r7
	addc	r4,r4,r6
	srl	r3,r4
	swi	r4,r0,seed
	swi	r5,r0,seed+4
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
	beqi	r6,$L282
	lwi	r3,r6,0
	swi	r6,r5,4
	swi	r3,r5,0
	swi	r5,r6,0
	lwi	r3,r5,0
	beqi	r3,$L276
	swi	r5,r3,4
$L276:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L282:
	swi	r6,r5,4
	rtsd	r15,8 
	
	swi	r6,r5,0
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
	beqi	r3,$L284
	lwi	r4,r5,4
	swi	r4,r3,4
$L284:
	lwi	r4,r5,4
	beqi	r4,$L283
	swi	r3,r4,0
$L283:
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
	.frame	r1,64,r15		# vars= 0, regs= 9, args= 24
	.mask	0x3fc88000
	addik	r1,r1,-64
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r27,r1,52
	swi	r28,r1,56
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r26,r1,48
	swi	r29,r1,60
	lwi	r23,r7,0
	addk	r28,r7,r0
	addk	r25,r5,r0
	addk	r27,r6,r0
	beqid	r23,$L293
	addk	r24,r8,r0
	addk	r29,r9,r0
	addk	r19,r6,r0
	brid	$L295
	addk	r22,r0,r0
$L308:
	beqid	r4,$L293
	addk	r19,r19,r24
$L295:
	addk	r6,r19,r0
	addk	r5,r25,r0
	addik	r22,r22,1
	brald	r15,r29
	
	addk	r26,r19,r0
	bneid	r3,$L308
	xor	r4,r23,r22
$L292:
	addk	r3,r26,r0
$L309:
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
$L293:
	addk	r6,r23,r0
	addk	r5,r24,r0
	addik	r23,r23,1
	brlid	r15,__mulsi3
	
	swi	r23,r28,0
	beqid	r24,$L292
	addk	r26,r27,r3
	addk	r7,r24,r0
	addk	r6,r25,r0
	brlid	r15,memmove
	
	addk	r5,r26,r0
	brid	$L309
	addk	r3,r26,r0
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
	swi	r26,r1,48
	lwi	r26,r7,0
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	beqid	r26,$L311
	swi	r27,r1,52
	addk	r23,r5,r0
	addk	r25,r8,r0
	addk	r24,r9,r0
	addk	r19,r6,r0
	brid	$L313
	addk	r22,r0,r0
$L322:
	beqid	r4,$L311
	addk	r19,r19,r25
$L313:
	addk	r6,r19,r0
	addk	r5,r23,r0
	addik	r22,r22,1
	brald	r15,r24
	
	addk	r27,r19,r0
	bneid	r3,$L322
	xor	r4,r26,r22
$L310:
	addk	r3,r27,r0
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
$L311:
	brid	$L310
	addk	r27,r0,r0
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lbui	r3,r5,0
	addik	r4,r0,4	# 0x4
	sext8	r6,r3
	addik	r7,r6,-9
	cmpu	r18,r7,r4
	bgeid	r18,$L346
	addik	r7,r0,4	# 0x4
	xori	r3,r3,32
	andi	r3,r3,0x00ff
	addik	r3,r3,-1
	bgei	r3,$L325
$L346:
	lbui	r6,r5,1
	addik	r5,r5,1
	xori	r3,r6,32
	sext8	r6,r6
	andi	r3,r3,0x00ff
	addik	r4,r6,-9
	cmpu	r18,r4,r7
	bgeid	r18,$L346
	addik	r3,r3,-1
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
	bnei	r4,$L346
$L325:
	xori	r3,r6,43
	beqid	r3,$L330
	addik	r4,r0,9	# 0x9
	xori	r3,r6,45
	bneid	r3,$L350
	addik	r7,r6,-48
	lbui	r6,r5,1
	addik	r4,r0,9	# 0x9
	sext8	r6,r6
	addik	r7,r6,-48
	cmpu	r18,r7,r4
	bltid	r18,$L324
	addik	r5,r5,1
	addik	r10,r0,1	# 0x1
$L333:
	addk	r3,r0,r0
	addik	r9,r0,9	# 0x9
$L336:
	lbui	r6,r5,1
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r3
	sext8	r6,r6
	sext8	r8,r7
	addk	r4,r4,r4
	addik	r7,r6,-48
	addik	r5,r5,1
	cmpu	r18,r7,r9
	bgeid	r18,$L336
	rsubk	r3,r8,r4
	bnei	r10,$L324
	rsubk	r3,r4,r8
$L324:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L350:
	addik	r3,r0,9	# 0x9
	cmpu	r18,r7,r3
	bgeid	r18,$L333
	addk	r10,r0,r0
	rtsd	r15,8 
	
	addk	r3,r10,r0
$L330:
	lbui	r6,r5,1
	addk	r10,r3,r0
	sext8	r6,r6
	addik	r7,r6,-48
	cmpu	r18,r7,r4
	bgeid	r18,$L333
	addik	r5,r5,1
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lbui	r3,r5,0
	addik	r4,r0,4	# 0x4
	sext8	r6,r3
	addik	r7,r6,-9
	cmpu	r18,r7,r4
	bgeid	r18,$L372
	addik	r7,r0,4	# 0x4
	xori	r3,r3,32
	andi	r3,r3,0x00ff
	addik	r3,r3,-1
	bgei	r3,$L352
$L372:
	lbui	r6,r5,1
	addik	r5,r5,1
	xori	r3,r6,32
	sext8	r6,r6
	andi	r3,r3,0x00ff
	addik	r4,r6,-9
	cmpu	r18,r4,r7
	bgeid	r18,$L372
	addik	r3,r3,-1
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
	bnei	r4,$L372
$L352:
	xori	r3,r6,43
	beqid	r3,$L357
	addik	r4,r0,9	# 0x9
	xori	r3,r6,45
	bneid	r3,$L358
	addik	r7,r6,-48
	lbui	r6,r5,1
	addik	r4,r0,9	# 0x9
	addik	r5,r5,1
	sext8	r6,r6
	addik	r7,r6,-48
	cmpu	r18,r7,r4
	bltid	r18,$L351
	addik	r10,r0,1	# 0x1
$L359:
	addk	r3,r0,r0
	addik	r9,r0,9	# 0x9
$L362:
	lbui	r6,r5,1
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r3
	sext8	r6,r6
	sext8	r8,r7
	addk	r4,r4,r4
	addik	r7,r6,-48
	addik	r5,r5,1
	cmpu	r18,r7,r9
	bgeid	r18,$L362
	rsubk	r3,r8,r4
	bnei	r10,$L351
	rsubk	r3,r4,r8
$L351:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L358:
	addik	r3,r0,9	# 0x9
	cmpu	r18,r7,r3
	bgeid	r18,$L359
	addk	r10,r0,r0
	rtsd	r15,8 
	
	addk	r3,r10,r0
$L357:
	lbui	r6,r5,1
	sext8	r6,r6
	addik	r7,r6,-48
	cmpu	r18,r7,r4
	bltid	r18,$L351
	addik	r5,r5,1
	brid	$L359
	addk	r10,r3,r0
	.end	atol
$Lfe47:
	.size	atol,$Lfe47-atol
	.align	2
	.globl	atoll
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	r1,16,r15		# vars= 0, regs= 3, args= 0
	.mask	0x00c80000
	addik	r1,r1,-16
	swi	r19,r1,4
	swi	r22,r1,8
	swi	r23,r1,12
	lbui	r4,r5,0
	addik	r8,r0,4	# 0x4
	sext8	r3,r4
	addik	r9,r3,-9
	cmpu	r18,r9,r8
	bgeid	r18,$L397
	addik	r9,r0,4	# 0x4
	xori	r4,r4,32
	andi	r4,r4,0x00ff
	addik	r4,r4,-1
	bgei	r4,$L376
$L397:
	lbui	r3,r5,1
	addik	r5,r5,1
	xori	r4,r3,32
	sext8	r3,r3
	andi	r4,r4,0x00ff
	addik	r8,r3,-9
	cmpu	r18,r8,r9
	bgeid	r18,$L397
	addik	r4,r4,-1
	addk	r8,r0,r4
	srl	r8,r4
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
	bnei	r8,$L397
$L376:
	xori	r4,r3,43
	beqid	r4,$L381
	addik	r10,r0,9	# 0x9
	xori	r4,r3,45
	bneid	r4,$L402
	addik	r8,r3,-48
	lbui	r3,r5,1
	addik	r4,r0,9	# 0x9
	sext8	r3,r3
	addik	r8,r3,-48
	cmpu	r18,r8,r4
	bltid	r18,$L390
	addik	r9,r5,1
	addik	r19,r0,1	# 0x1
$L384:
	addik	r10,r0,0x00000000
	addik	r11,r0,0x00000000 #li => la
	addik	r12,r0,9	# 0x9
$L387:
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
	srl	r3,r3
	addk	r6,r0,r10
	addk	r6,r10,r10
	addk	r6,r6,r6
	or	r6,r3,r6
	addk	r7,r0,r11
	addk	r7,r11,r11
	addk	r7,r7,r7
	lbui	r3,r9,1
	add	r23,r7,r11
	addc	r22,r6,r10
	addk	r4,r23,r23
	addk	r10,r0,r23
	srl	r10,r23
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	addk	r23,r4,r0
	addk	r5,r22,r22
	sext8	r3,r3
	or	r22,r10,r5
	sext8	r4,r8
	addik	r8,r3,-48
	addk	r5,r0,r4
	add	r4,r5,r5
	addc	r4,r0,r0
	beqi	r4,.+8
	addi	r4,r0,0xffffffff
	rsub	r11,r5,r23
	rsubc	r10,r4,r22
	cmpu	r18,r8,r12
	bgeid	r18,$L387
	addik	r9,r9,1
	bneid	r19,$L403
	addk	r3,r10,r0
	rsub	r11,r23,r5
	rsubc	r10,r22,r4
	addk	r3,r10,r0
$L403:
	addk	r4,r11,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L402:
	addik	r3,r0,9	# 0x9
	addk	r9,r5,r0
	cmpu	r18,r8,r3
	bgeid	r18,$L384
	addk	r19,r0,r0
$L390:
	addik	r10,r0,0x00000000
	addik	r11,r0,0x00000000 #li => la
	addk	r3,r10,r0
	addk	r4,r11,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L381:
	lbui	r3,r5,1
	addk	r19,r4,r0
	sext8	r3,r3
	addik	r8,r3,-48
	cmpu	r18,r8,r10
	bgeid	r18,$L384
	addik	r9,r5,1
	bri	$L390
	.end	atoll
$Lfe48:
	.size	atoll,$Lfe48-atoll
	.align	2
	.globl	bsearch
	.ent	bsearch
	.type	bsearch, @function
bsearch:
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
	beqid	r7,$L405
	swi	r27,r1,52
	addk	r19,r7,r0
	addk	r27,r5,r0
	addk	r25,r6,r0
	addk	r24,r8,r0
	addk	r26,r9,r0
$L408:
	srl	r23,r19
$L419:
	addk	r6,r24,r0
	addk	r5,r23,r0
	addik	r19,r19,-1
	brlid	r15,__mulsi3
	
	rsubk	r19,r23,r19
	addk	r22,r25,r3
	addk	r5,r27,r0
	brald	r15,r26
	
	addk	r6,r22,r0
	blti	r3,$L409
	beqid	r3,$L418
	addk	r3,r22,r0
	bneid	r19,$L408
	addk	r25,r22,r24
$L405:
	addk	r22,r0,r0
$L404:
	addk	r3,r22,r0
$L418:
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
$L409:
	addk	r19,r23,r0
	bneid	r19,$L419
	srl	r23,r19
	brid	$L404
	addk	r22,r0,r0
	.end	bsearch
$Lfe49:
	.size	bsearch,$Lfe49-bsearch
	.align	2
	.globl	bsearch_r
	.ent	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.frame	r1,60,r15		# vars= 0, regs= 8, args= 24
	.mask	0x1fc88000
	addik	r1,r1,-60
	swi	r19,r1,28
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r15,r1,0
	swi	r22,r1,32
	swi	r28,r1,56
	addk	r19,r7,r0
	addk	r27,r5,r0
	addk	r24,r6,r0
	addk	r23,r8,r0
	addk	r26,r9,r0
	beqid	r7,$L425
	addk	r25,r10,r0
$L421:
	sra	r28,r19
$L434:
	addk	r6,r23,r0
	addk	r5,r28,r0
	addik	r19,r19,-1
	brlid	r15,__mulsi3
	
	sra	r19,r19
	addk	r22,r24,r3
	addk	r7,r25,r0
	addk	r5,r27,r0
	brald	r15,r26
	
	addk	r6,r22,r0
	beqi	r3,$L420
	blei	r3,$L423
	bneid	r19,$L421
	addk	r24,r22,r23
$L425:
	addk	r22,r0,r0
$L420:
	addk	r3,r22,r0
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
$L423:
	beqid	r28,$L425
	addk	r19,r28,r0
	brid	$L434
	sra	r28,r19
	.end	bsearch_r
$Lfe50:
	.size	bsearch_r,$Lfe50-bsearch_r
	.align	2
	.globl	div
	.ent	div
	.type	div, @function
div:
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r5,r6,r0
	addk	r6,r7,r0
	swi	r23,r1,36
	swi	r15,r1,0
	brlid	r15,__divsi3
	
	addk	r23,r7,r0
	addk	r6,r23,r0
	addk	r5,r22,r0
	brlid	r15,__modsi3
	
	swi	r3,r19,0
	addk	r4,r3,r0
	addk	r3,r19,r0
	swi	r4,r19,4
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
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
	xor	r8,r5,r3
	xor	r9,r6,r5
	addk	r4,r5,r0
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
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r22,r1,32
	addk	r22,r7,r0
	swi	r19,r1,28
	swi	r23,r1,36
	swi	r25,r1,44
	addk	r19,r5,r0
	addk	r23,r6,r0
	addk	r25,r8,r0
	addk	r7,r8,r0
	addk	r5,r6,r0
	addk	r8,r9,r0
	addk	r6,r22,r0
	swi	r24,r1,40
	swi	r15,r1,0
	brlid	r15,__divdi3
	
	addk	r24,r9,r0
	addk	r10,r3,r0
	addk	r11,r4,r0
	addk	r7,r25,r0
	addk	r8,r24,r0
	addk	r5,r23,r0
	swi	r10,r19,0
	swi	r11,r19,4
	brlid	r15,__moddi3
	
	addk	r6,r22,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r19,r0
	swi	r4,r19,8
	swi	r5,r19,12
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
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
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-40
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r5,r6,r0
	addk	r6,r7,r0
	swi	r23,r1,36
	swi	r15,r1,0
	brlid	r15,__divsi3
	
	addk	r23,r7,r0
	addk	r6,r23,r0
	addk	r5,r22,r0
	brlid	r15,__modsi3
	
	swi	r3,r19,0
	addk	r4,r3,r0
	addk	r3,r19,r0
	swi	r4,r19,4
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
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
	xor	r8,r5,r3
	xor	r9,r6,r5
	addk	r4,r5,r0
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
	.frame	r1,48,r15		# vars= 0, regs= 5, args= 24
	.mask	0x03c88000
	addik	r1,r1,-48
	swi	r22,r1,32
	addk	r22,r7,r0
	swi	r19,r1,28
	swi	r23,r1,36
	swi	r25,r1,44
	addk	r19,r5,r0
	addk	r23,r6,r0
	addk	r25,r8,r0
	addk	r7,r8,r0
	addk	r5,r6,r0
	addk	r8,r9,r0
	addk	r6,r22,r0
	swi	r24,r1,40
	swi	r15,r1,0
	brlid	r15,__divdi3
	
	addk	r24,r9,r0
	addk	r10,r3,r0
	addk	r11,r4,r0
	addk	r7,r25,r0
	addk	r8,r24,r0
	addk	r5,r23,r0
	swi	r10,r19,0
	swi	r11,r19,4
	brlid	r15,__moddi3
	
	addk	r6,r22,r0
	addk	r5,r4,r0
	addk	r4,r3,r0
	addk	r3,r19,r0
	swi	r4,r19,8
	swi	r5,r19,12
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
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
	lwi	r4,r5,0
	bneid	r4,$L447
	addk	r3,r4,r0
	bri	$L452
$L449:
	lwi	r4,r5,4
	beqid	r4,$L450
	addik	r5,r5,4
$L447:
	xor	r4,r6,r4
	bnei	r4,$L449
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L450:
	addk	r3,r4,r0
$L452:
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
	lwi	r7,r6,0
	lwi	r4,r5,0
	addik	r3,r0,4	# 0x4
	xor	r8,r4,r7
	bneid	r8,$L455
	addik	r6,r6,-4
$L454:
	beqi	r4,$L455
	lw	r4,r3,r5
	addik	r3,r3,4
	lw	r7,r3,r6
	xor	r8,r4,r7
	beqi	r8,$L454
$L455:
	cmp	r18,r7,r4
	bltid	r18,$L453
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r4,r7
	bgeid	r18,$L462
	addik	r3,r0,1	# 0x1
$L453:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L462:
	rtsd	r15,8 
	
	addk	r3,r0,r0
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
$L464:
	lw	r7,r4,r6
	sw	r7,r4,r3
	bneid	r7,$L464
	addik	r4,r4,4
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
	lwi	r3,r5,0
	beqi	r3,$L466
	addk	r3,r5,r0
$L468:
	lwi	r4,r3,4
	bneid	r4,$L468
	addik	r3,r3,4
	rsubk	r4,r5,r3
	addk	r3,r0,r4
	sra	r3,r4
	sra	r3,r3
$L466:
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
	beqid	r7,$L488
	addk	r3,r7,r0
$L486:
	lwi	r9,r5,0
	lwi	r4,r6,0
	addik	r7,r7,-1
	rsubk	r10,r9,r0
	xor	r4,r9,r4
	rsubk	r8,r4,r0
	or	r4,r8,r4
	bltid	r4,$L476
	or	r10,r10,r9
	addk	r3,r0,r10
	srl	r3,r10
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	beqi	r3,$L476
	addik	r5,r5,4
	bneid	r7,$L486
	addik	r6,r6,4
$L479:
	addk	r3,r7,r0
$L471:
$L488:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L476:
	lwi	r4,r5,0
	lwi	r3,r6,0
	cmp	r18,r3,r4
	blti	r18,$L487
	cmp	r18,r4,r3
	bltid	r18,$L479
	addik	r7,r0,1	# 0x1
	addk	r7,r0,r0
	brid	$L471
	addk	r3,r7,r0
$L487:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
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
	beqi	r7,$L493
$L498:
	lwi	r4,r5,0
	xor	r4,r4,r6
	beqid	r4,$L497
	addik	r7,r7,-1
	bneid	r7,$L498
	addik	r5,r5,4
$L493:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L497:
	rtsd	r15,8 
	
	addk	r3,r5,r0
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
	beqid	r7,$L514
	addk	r3,r7,r0
$L512:
	lwi	r4,r5,0
	lwi	r3,r6,0
	addik	r7,r7,-1
	xor	r8,r4,r3
	bneid	r8,$L511
	addik	r5,r5,4
	bneid	r7,$L512
	addik	r6,r6,4
$L506:
	addk	r3,r7,r0
$L499:
$L514:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L511:
	cmp	r18,r3,r4
	blti	r18,$L513
	cmp	r18,r4,r3
	bltid	r18,$L506
	addik	r7,r0,1	# 0x1
	addk	r7,r0,r0
	brid	$L499
	addk	r3,r7,r0
$L513:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
	.end	wmemcmp
$Lfe64:
	.size	wmemcmp,$Lfe64-wmemcmp
	.align	2
	.globl	wmemcpy
	.ent	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
	swi	r19,r1,28
	swi	r15,r1,0
	beqid	r7,$L516
	addk	r19,r5,r0
	addk	r3,r7,r0
	addk	r7,r0,r3
	addk	r7,r3,r3
	addk	r7,r7,r7
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L516:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	beqid	r4,$L529
	addk	r3,r5,r0
	addk	r4,r7,r7
	rsubk	r8,r6,r5
	addk	r5,r4,r4
	cmpu	r18,r5,r8
	bgeid	r18,$L535
	addik	r4,r7,-1
	beqi	r7,$L529
	addk	r4,r4,r4
	addk	r4,r4,r4
$L526:
	lw	r5,r4,r6
	sw	r5,r4,r3
	addik	r4,r4,-4
	xori	r5,r4,-4
	bnei	r5,$L526
$L529:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L535:
	beqid	r7,$L529
	addk	r8,r0,r0
$L524:
	lw	r5,r8,r6
	addik	r4,r4,-1
	sw	r5,r8,r3
	xori	r5,r4,-1
	bneid	r5,$L524
	addik	r8,r8,4
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r0
	beqid	r7,$L537
	addik	r4,r7,-1
	addk	r7,r5,r0
$L538:
	addik	r4,r4,-1
	swi	r6,r7,0
	xori	r8,r4,-1
	bneid	r8,$L538
	addik	r7,r7,4
$L537:
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
	bgeid	r18,$L544
	xor	r3,r5,r6
	beqi	r7,$L543
	addik	r5,r5,-1
	addik	r6,r6,-1
$L546:
	lbu	r3,r7,r5
	sb	r3,r7,r6
	addik	r7,r7,-1
	bnei	r7,$L546
$L543:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L544:
	beqi	r3,$L543
	beqid	r7,$L543
	addk	r3,r0,r0
$L547:
	lbu	r4,r3,r5
	sb	r4,r3,r6
	addik	r3,r3,1
	xor	r4,r7,r3
	bnei	r4,$L547
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	andi	r3,r7,32 #and1
	beqid	r3,$L557
	xori	r8,r7,-1
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	rsubk	r7,r7,r0
	andi	r4,r7,32 #and1
	addk	r8,r0,r0
	beqid	r4,$L559
	andi	r7,r7,63 #and1
$L561:
	addk	r6,r0,r0
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	or	r3,r6,r3
	rtsd	r15,8 
	
	or	r4,r4,r8
$L557:
	srl	r3,r6
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
	addk	r8,r0,r6
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	rsubk	r7,r7,r0
	or	r3,r4,r3
	andi	r4,r7,32 #and1
	bneid	r4,$L561
	andi	r7,r7,63 #and1
$L559:
	xori	r4,r7,-1
	addk	r10,r5,r5
	andi	r18,r4,31
	addk	r9,r0,r10
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	or	r4,r9,r4
	andi	r18,r7,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	or	r4,r4,r8
	rtsd	r15,8 
	
	or	r3,r6,r3
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
	beqid	r3,$L563
	xori	r4,r7,-1
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	addk	r8,r0,r0
	beqid	r3,$L565
	andi	r7,r7,63 #and1
$L567:
	addk	r5,r0,r0
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r4,r5,r4
	rtsd	r15,8 
	
	or	r3,r3,r8
$L563:
	addk	r3,r5,r5
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
	or	r4,r8,r4
	andi	r18,r7,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	bneid	r3,$L567
	andi	r7,r7,63 #and1
$L565:
	xori	r3,r7,-1
	srl	r10,r6
	andi	r18,r3,31
	addk	r9,r0,r10
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r3,r9,r3
	andi	r18,r7,31
	addk	r5,r0,r6
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	or	r3,r3,r8
	rtsd	r15,8 
	
	or	r4,r5,r4
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
	rsubk	r7,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
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
	rsubk	r7,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
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
	rsubk	r7,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
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
	rsubk	r7,r6,r0
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
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
	andi	r6,r6,15 #and1
	rsubk	r4,r6,r0
	andi	r4,r4,15 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	or	r3,r3,r6
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
	andi	r6,r6,15 #and1
	rsubk	r4,r6,r0
	andi	r4,r4,15 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	or	r3,r3,r6
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
	andi	r6,r6,7 #and1
	rsubk	r4,r6,r0
	andi	r4,r4,7 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	or	r3,r3,r6
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
	andi	r6,r6,7 #and1
	rsubk	r4,r6,r0
	andi	r4,r4,7 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r4,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r6,r6,r6
	or	r3,r3,r6
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
	addk	r3,r5,r5
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r4,r0,r5
	srl	r4,r5
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	or	r3,r4,r3
	andi	r3,r3,0xffff
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r5
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
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
	addk	r6,r0,r5
	srl	r6,r5
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	or	r4,r4,r7
	andi	r5,r6,65280 #and2
	addk	r3,r3,r3
	or	r4,r4,r5
	andi	r3,r3,16711680 #and2
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	andi	r3,r3,65280 #and2
	addk	r9,r0,r6
	srl	r9,r6
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
	src	r7,r6
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	andi	r7,r7,-16777216
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
	or	r7,r7,r9
	or	r4,r4,r3
	addk	r8,r0,r5
	addk	r8,r5,r5
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r8,r8,16711680 #and2
	andi	r3,r3,65280 #and2
	or	r7,r7,r3
	or	r4,r4,r8
	addk	r3,r0,r6
	addk	r3,r6,r6
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	andi	r3,r3,16711680 #and2
	src	r6,r5
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	andi	r6,r6,-16777216
	or	r3,r7,r3
	rtsd	r15,8 
	
	or	r4,r4,r6
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
	brid	$L582
	addk	r3,r0,r0
$L585:
	beqi	r6,$L584
$L582:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addik	r3,r3,1
	andi	r4,r4,1 #and1
	beqid	r4,$L585
	xori	r6,r3,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L584:
	rtsd	r15,8 
	
	addk	r3,r6,r0
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
	beqi	r5,$L589
	andi	r3,r5,1 #and1
	bnei	r3,$L586
	addik	r3,r0,1	# 0x1
$L588:
	sra	r5,r5
	andi	r4,r5,1 #and1
	beqid	r4,$L588
	addik	r3,r3,1
$L586:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L589:
	rtsd	r15,8 
	
	addk	r3,r5,r0
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
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	lwi	r6,r0,$LC0
	addik	r1,r1,-32
	swi	r19,r1,28
	swi	r15,r1,0
	addk	r19,r5,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	addk	r4,r3,r0
	bltid	r4,$L592
	addik	r3,r0,1	# 0x1
	addk	r5,r19,r0
	lwi	r6,r0,$LC1
	brlid	r15,__gtsf2
	
	addk	r19,r3,r0
	blei	r3,$L597
$L594:
	addk	r3,r19,r0
$L592:
	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
$L597:
	brid	$L594
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
	lwi	r7,r0,$LC2
	lwi	r8,r0,$LC2+4
	addik	r1,r1,-40
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r22,r5,r0
	addk	r23,r6,r0
	swi	r15,r1,0
	brlid	r15,__ltdf2
	
	swi	r19,r1,28
	addk	r4,r3,r0
	bltid	r4,$L598
	addik	r3,r0,1	# 0x1
	addk	r5,r22,r0
	addk	r6,r23,r0
	lwi	r7,r0,$LC3
	lwi	r8,r0,$LC3+4
	brlid	r15,__gtdf2
	
	addk	r19,r3,r0
	blei	r3,$L603
$L600:
	addk	r3,r19,r0
$L598:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
$L603:
	brid	$L600
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
	lwi	r7,r0,$LC4
	lwi	r8,r0,$LC4+4
	addik	r1,r1,-40
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r22,r5,r0
	addk	r23,r6,r0
	swi	r15,r1,0
	brlid	r15,__ltdf2
	
	swi	r19,r1,28
	addk	r4,r3,r0
	bltid	r4,$L604
	addik	r3,r0,1	# 0x1
	addk	r5,r22,r0
	addk	r6,r23,r0
	lwi	r7,r0,$LC5
	lwi	r8,r0,$LC5+4
	brlid	r15,__gtdf2
	
	addk	r19,r3,r0
	blei	r3,$L609
$L606:
	addk	r3,r19,r0
$L604:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
$L609:
	brid	$L606
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
	swi	r19,r1,28
	addk	r19,r5,r0
	swi	r15,r1,0
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
	.frame	r1,40,r15		# vars= 4, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-40
	swi	r19,r1,32
	addk	r19,r6,r0
	addk	r6,r5,r0
	swi	r22,r1,36
	swi	r15,r1,0
	addk	r22,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L613
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__addsf3
	nop		# Unfilled delay slot

	addk	r6,r22,r0
	addk	r5,r3,r0
	brlid	r15,__nesf2
	nop		# Unfilled delay slot

	beqi	r3,$L613
	addik	r6,r0,0x40000000
	bgeid	r19,$L628
	andi	r3,r19,1 #and1
	addik	r6,r0,0x3f000000
$L628:
	beqi	r3,$L616
$L617:
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	
	swi	r6,r1,28
	addk	r22,r3,r0
	lwi	r6,r1,28
$L616:
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
	beqi	r19,$L613
$L618:
	addk	r5,r6,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	andi	r4,r19,1 #and1
	addk	r5,r0,r19
	srl	r5,r19
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
	addk	r6,r3,r0
	bneid	r4,$L617
	addk	r5,r5,r19
	brid	$L618
	sra	r19,r5
$L613:
	addk	r3,r22,r0
	lwi	r15,r1,0
	lwi	r19,r1,32
	lwi	r22,r1,36
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
	swi	r19,r1,28
	addk	r8,r6,r0
	addk	r19,r7,r0
	addk	r7,r5,r0
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r15,r1,0
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r24,r5,r0
	brlid	r15,__unorddf2
	
	addk	r25,r6,r0
	bneid	r3,$L630
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__adddf3
	
	addk	r6,r25,r0
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r6,r4,r0
	brlid	r15,__nedf2
	
	addk	r5,r3,r0
	beqid	r3,$L647
	addk	r3,r24,r0
	blti	r19,$L645
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	andi	r3,r19,1 #and1
$L646:
	beqi	r3,$L633
$L634:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L633:
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
	addk	r3,r3,r19
	sra	r19,r3
	beqid	r19,$L647
	addk	r3,r24,r0
$L635:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	andi	r3,r19,1 #and1
	addk	r23,r4,r0
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
	bneid	r3,$L634
	addk	r4,r4,r19
	brid	$L635
	sra	r19,r4
$L630:
	addk	r3,r24,r0
$L647:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L645:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L646
	andi	r3,r19,1 #and1
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
	swi	r19,r1,28
	addk	r8,r6,r0
	addk	r19,r7,r0
	addk	r7,r5,r0
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r15,r1,0
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r24,r5,r0
	brlid	r15,__unorddf2
	
	addk	r25,r6,r0
	bneid	r3,$L649
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__adddf3
	
	addk	r6,r25,r0
	addk	r8,r3,r0
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r8,r0
	brlid	r15,__nedf2
	
	addk	r8,r4,r0
	beqid	r3,$L666
	addk	r3,r24,r0
	blti	r19,$L664
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	andi	r3,r19,1 #and1
$L665:
	beqi	r3,$L652
$L653:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L652:
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
	addk	r3,r3,r19
	sra	r19,r3
	beqid	r19,$L666
	addk	r3,r24,r0
$L654:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r22,r3,r0
	andi	r3,r19,1 #and1
	addk	r23,r4,r0
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
	bneid	r3,$L653
	addk	r4,r4,r19
	brid	$L654
	sra	r19,r4
$L649:
	addk	r3,r24,r0
$L666:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L664:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L665
	andi	r3,r19,1 #and1
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
	beqid	r7,$L668
	addk	r3,r5,r0
	addk	r4,r0,r0
$L669:
	lbu	r8,r4,r3
	lbu	r5,r4,r6
	xor	r8,r8,r5
	sb	r8,r4,r3
	addik	r4,r4,1
	xor	r5,r7,r4
	bnei	r5,$L669
$L668:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lbui	r4,r5,0
	beqid	r4,$L681
	addk	r3,r5,r0
	addk	r4,r5,r0
$L676:
	lbui	r8,r4,1
	bneid	r8,$L676
	addik	r4,r4,1
$L687:
	beqi	r7,$L678
$L688:
	lbui	r8,r6,0
	addik	r7,r7,-1
	sbi	r8,r4,0
	sext8	r8,r8
	beqid	r8,$L680
	addik	r6,r6,1
	bneid	r7,$L688
	addik	r4,r4,1
$L678:
	sbi	r0,r4,0
$L680:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L681:
	brid	$L687
	addk	r4,r5,r0
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
	beqid	r6,$L689
	addk	r3,r0,r0
$L690:
	lbu	r4,r3,r5
	bnei	r4,$L696
$L689:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L696:
	addik	r3,r3,1
	xor	r4,r6,r3
	bnei	r4,$L690
	rtsd	r15,8 
	
	addk	r3,r6,r0
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
	lbui	r9,r5,0
	sext8	r9,r9
	beqid	r9,$L702
	addk	r3,r5,r0
$L698:
	brid	$L701
	addk	r7,r6,r0
$L700:
	beqi	r8,$L699
$L701:
	lbui	r4,r7,0
	addik	r7,r7,1
	sext8	r4,r4
	bneid	r4,$L700
	xor	r8,r4,r9
	lbui	r9,r3,1
	sext8	r9,r9
	bneid	r9,$L698
	addik	r3,r3,1
$L702:
	addk	r3,r9,r0
$L699:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r0,r0
$L706:
	lbui	r4,r5,0
	sext8	r4,r4
	xor	r7,r6,r4
	bnei	r7,$L705
	addk	r3,r5,r0
$L705:
	bneid	r4,$L706
	addik	r5,r5,1
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lbui	r10,r6,0
	sext8	r10,r10
	beqid	r10,$L720
	addk	r3,r6,r0
$L710:
	lbui	r4,r3,1
	bneid	r4,$L710
	addik	r3,r3,1
	rsubk	r3,r6,r3
	beqid	r3,$L720
	addik	r11,r6,-1
	brid	$L717
	addk	r11,r11,r3
$L729:
	beqid	r3,$L708
	addik	r5,r5,1
$L717:
	lbui	r7,r5,0
	sext8	r3,r7
	xor	r4,r3,r10
	bneid	r4,$L729
	addk	r9,r6,r0
	addk	r3,r5,r0
	brid	$L712
	andi	r7,r7,0x00ff
$L730:
	xor	r4,r8,r7
	addik	r4,r4,-1
	rsubk	r8,r8,r0
	and	r4,r4,r8
	addk	r8,r0,r4
	srl	r8,r4
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
	beqi	r8,$L713
	lbui	r7,r3,0
	beqid	r7,$L713
	addik	r9,r9,1
$L712:
	xor	r8,r9,r11
	rsubk	r4,r8,r0
	or	r4,r4,r8
	addik	r3,r3,1
	bltid	r4,$L730
	lbui	r8,r9,0
$L713:
	lbui	r3,r9,0
	xor	r3,r3,r7
	beqid	r3,$L731
	addk	r3,r5,r0
	brid	$L717
	addik	r5,r5,1
$L720:
	addk	r3,r5,r0
$L708:
$L731:
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
	.frame	r1,44,r15		# vars= 0, regs= 4, args= 24
	.mask	0x03c08000
	addik	r1,r1,-44
	swi	r22,r1,28
	swi	r23,r1,32
	swi	r24,r1,36
	swi	r25,r1,40
	addk	r24,r7,r0
	addk	r25,r8,r0
	addk	r22,r5,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	swi	r15,r1,0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	bltid	r3,$L743
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L736
	addk	r5,r24,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	blti	r3,$L735
$L736:
	addk	r3,r22,r0
$L744:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L743:
	addk	r5,r24,r0
	brlid	r15,__gtdf2
	
	addk	r6,r25,r0
	bleid	r3,$L744
	addk	r3,r22,r0
$L735:
	addik	r4,r22,-2147483648
	brid	$L736
	addk	r22,r4,r0
	.end	copysign
$Lfe97:
	.size	copysign,$Lfe97-copysign
	.align	2
	.globl	memmem
	.ent	memmem
	.type	memmem, @function
memmem:
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	beqid	r8,$L766
	addk	r3,r5,r0
	cmpu	r18,r8,r6
	blti	r18,$L754
	rsubk	r6,r8,r6
	addk	r10,r5,r6
	cmpu	r18,r5,r10
	blti	r18,$L754
	lbui	r12,r7,0
	addik	r1,r1,-8
	swi	r19,r1,4
	sext8	r12,r12
	brid	$L751
	xori	r19,r8,1
$L755:
	addk	r3,r11,r0
$L747:
	cmpu	r18,r3,r10
	blti	r18,$L756
$L751:
	lbui	r4,r3,0
	sext8	r4,r4
	xor	r4,r4,r12
	bneid	r4,$L755
	addik	r11,r3,1
	beqi	r19,$L745
$L750:
	brid	$L748
	addik	r4,r0,1	# 0x1
$L749:
	beqi	r9,$L745
$L748:
	lbu	r5,r4,r3
	lbu	r6,r4,r7
	addik	r4,r4,1
	xor	r5,r5,r6
	beqid	r5,$L749
	xor	r9,r4,r8
	cmpu	r18,r11,r10
	blti	r18,$L756
	lbui	r4,r11,0
	sext8	r4,r4
	xor	r4,r12,r4
	bneid	r4,$L747
	addik	r3,r11,1
	addk	r4,r11,r0
	addk	r11,r3,r0
	brid	$L750
	addk	r3,r4,r0
$L756:
	addk	r3,r0,r0
$L745:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L754:
	rtsd	r15, 8
	
	addk	r3,r0,r0
$L766:
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	memmem
$Lfe98:
	.size	memmem,$Lfe98-memmem
	.align	2
	.globl	mempcpy
	.ent	mempcpy
	.type	mempcpy, @function
mempcpy:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r15,r1,0
	addk	r19,r7,r0
	beqid	r7,$L768
	addk	r22,r5,r0
	brlid	r15,memmove
	nop		# Unfilled delay slot

$L768:
	addk	r3,r22,r19
	lwi	r15,r1,0
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
	.frame	r1,64,r15		# vars= 0, regs= 9, args= 24
	.mask	0x3fc88000
	addik	r1,r1,-64
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r28,r1,56
	swi	r15,r1,0
	addk	r28,r7,r0
	swi	r19,r1,28
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r29,r1,60
	addk	r22,r5,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r23,r6,r0
	bltid	r3,$L797
	addk	r5,r22,r0
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r6,r23,r0
	brlid	r15,__gedf2
	
	addk	r29,r0,r0
	bltid	r3,$L798
	addk	r5,r22,r0
$L776:
	addik	r26,r0,0x3fe00000 
	addik	r27,r0,0x00000000 #Xfer Lo
	addik	r24,r0,0x3ff00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addk	r19,r0,r0
$L782:
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r26,r0
	addk	r8,r27,r0
	brlid	r15,__muldf3
	
	addik	r19,r19,1
	addk	r22,r3,r0
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r4,r0
	brlid	r15,__gedf2
	
	addk	r23,r4,r0
	bgeid	r3,$L782
	addk	r4,r22,r0
	swi	r19,r28,0
	beqid	r29,$L773
	addk	r5,r23,r0
$L800:
	addik	r4,r22,-2147483648
$L773:
	addk	r3,r4,r0
$L801:
	lwi	r15,r1,0
	addk	r4,r5,r0
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
$L798:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bgeid	r3,$L802
	addk	r4,r22,r0
	addk	r5,r22,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__nedf2
	
	addk	r6,r23,r0
	bneid	r3,$L788
	addk	r26,r22,r0
	addk	r4,r22,r0
$L802:
	addk	r5,r23,r0
	brid	$L773
	swi	r0,r28,0
$L797:
	addik	r7,r0,0xbff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r6,r23,r0
	addik	r26,r22,-2147483648
	brlid	r15,__ledf2
	
	addk	r27,r23,r0
	bgtid	r3,$L799
	addik	r29,r0,1	# 0x1
	brid	$L776
	addk	r22,r26,r0
$L799:
	addik	r7,r0,0xbfe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L802
	addk	r4,r22,r0
	addik	r29,r0,1	# 0x1
$L777:
	addik	r24,r0,0x3fe00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addk	r22,r26,r0
	addk	r23,r27,r0
	addk	r19,r0,r0
	addk	r7,r22,r0
$L803:
	addk	r8,r23,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__adddf3
	
	addik	r19,r19,-1
	addk	r22,r3,r0
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r4,r0
	brlid	r15,__ltdf2
	
	addk	r23,r4,r0
	bltid	r3,$L803
	addk	r7,r22,r0
	swi	r19,r28,0
	addk	r4,r22,r0
	bneid	r29,$L800
	addk	r5,r23,r0
	brid	$L801
	addk	r3,r4,r0
$L788:
	brid	$L777
	addk	r27,r23,r0
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
	swi	r24,r1,12
	swi	r25,r1,16
	swi	r22,r1,4
	swi	r23,r1,8
	swi	r26,r1,20
	or	r3,r6,r5
	addik	r24,r0,0x00000000
	addik	r25,r0,0x00000000 #li => la
	beqid	r3,$L804
	swi	r27,r1,24
$L807:
	andi	r11,r6,1 #and1
	addk	r10,r0,r0
	srl	r6,r6
	src	r3,r5
	src	r3,r3
	andi	r3,r3,-2147483648
	rsub	r27,r11,r0
	rsubc	r26,r10,r0
	srl	r5,r5
	or	r6,r3,r6
	and	r22,r26,r7
	and	r23,r27,r8
	addk	r7,r7,r7
	or	r3,r5,r6
	addk	r4,r0,r8
	srl	r4,r8
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	add	r25,r25,r23
	addc	r24,r24,r22
	or	r7,r4,r7
	bneid	r3,$L807
	addk	r8,r8,r8
$L804:
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
	cmpu	r18,r5,r6
	bgeid	r18,$L813
	addik	r4,r0,1	# 0x1
$L812:
	blti	r6,$L813
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L814
	or	r3,r3,r4
	blti	r3,$L812
$L814:
	beqi	r4,$L822
$L813:
	addk	r3,r0,r0
$L819:
	cmpu	r18,r6,r5
	blti	r18,$L818
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L818:
	srl	r4,r4
	bneid	r4,$L819
	srl	r6,r6
	bnei	r7,$L832
$L811:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L832:
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L822:
	beqid	r7,$L811
	addk	r3,r4,r0
	bri	$L832
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
	xor	r4,r5,r3
	beqi	r4,$L835
	addik	r1,r1,-28
	swi	r15,r1,0
	addk	r5,r0,r4
	addk	r5,r4,r4
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	addk	r5,r5,r5
	brlid	r15,__clzsi2
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r3,r3,-1
	rtsd	r15,8 
	
	addik	r1,r1,28
$L835:
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
	xor	r5,r5,r3
	beqid	r5,$L849
	xor	r6,r6,r3
$L844:
	addik	r1,r1,-28
	swi	r15,r1,0
	brlid	r15,__clzdi2
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r3,r3,-1
	rtsd	r15,8 
	
	addik	r1,r1,28
$L849:
	bneid	r6,$L844
	addik	r3,r0,63	# 0x3f
	rtsd	r15, 8
	nop		# Unfilled delay slot

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
	beqi	r5,$L853
	addk	r3,r0,r0
$L852:
	andi	r4,r5,1 #and1
	rsubk	r4,r4,r0
	and	r4,r4,r6
	srl	r5,r5
	addk	r3,r3,r4
	bneid	r5,$L852
	addk	r6,r6,r6
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L853:
	rtsd	r15,8 
	
	addk	r3,r5,r0
	.end	__mulsi3
$Lfe105:
	.size	__mulsi3,$Lfe105-__mulsi3
	.align	2
	.globl	__cmovd
	.ent	__cmovd
	.type	__cmovd, @function
__cmovd:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r4,r0,r7
	srl	r4,r7
	srl	r4,r4
	srl	r4,r4
	cmpu	r18,r6,r5
	bltid	r18,$L856
	andi	r3,r7,-8 #and1
	addk	r8,r6,r7
	cmpu	r18,r5,r8
	bgei	r18,$L869
$L856:
	beqi	r4,$L859
	addk	r9,r4,r4
	addk	r9,r9,r9
	addk	r4,r6,r0
	addk	r8,r5,r0
	addk	r9,r9,r9
	addk	r9,r9,r6
$L860:
	lwi	r10,r4,0
	lwi	r11,r4,4
	addik	r4,r4,8
	addik	r8,r8,8
	swi	r10,r8,-8
	swi	r11,r8,-4
	xor	r10,r9,r4
	bnei	r10,$L860
$L859:
	cmpu	r18,r7,r3
	bgei	r18,$L855
$L861:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
	xor	r4,r7,r3
	bnei	r4,$L861
$L855:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L869:
	beqid	r7,$L855
	addik	r3,r7,-1
$L857:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,-1
	xori	r4,r3,-1
	bnei	r4,$L857
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmpu	r18,r6,r5
	bltid	r18,$L871
	srl	r8,r7
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	bgei	r18,$L886
$L871:
	beqid	r8,$L874
	addk	r3,r0,r0
	addk	r8,r8,r8
$L875:
	lhu	r4,r3,r6
	sh	r4,r3,r5
	addik	r3,r3,2
	xor	r4,r8,r3
	bnei	r4,$L875
$L874:
	andi	r3,r7,1 #and1
	beqid	r3,$L870
	addik	r7,r7,-1
	lbu	r3,r7,r6
	sb	r3,r7,r5
$L870:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L886:
	beqid	r7,$L870
	addik	r3,r7,-1
$L872:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,-1
	xori	r4,r3,-1
	bnei	r4,$L872
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r9,r0,r7
	srl	r9,r7
	srl	r9,r9
	cmpu	r18,r6,r5
	bltid	r18,$L888
	andi	r3,r7,-4 #and1
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	bgei	r18,$L901
$L888:
	beqi	r9,$L891
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r4,r0,r0
$L892:
	lw	r8,r4,r6
	sw	r8,r4,r5
	addik	r4,r4,4
	xor	r8,r9,r4
	bnei	r8,$L892
$L891:
	cmpu	r18,r7,r3
	bgei	r18,$L887
$L893:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,1
	xor	r4,r7,r3
	bnei	r4,$L893
$L887:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L901:
	beqid	r7,$L887
	addik	r3,r7,-1
$L889:
	lbu	r4,r3,r6
	sb	r4,r3,r5
	addik	r3,r3,-1
	xori	r4,r3,-1
	bnei	r4,$L889
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
	bnei	r3,$L917
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
	bnei	r3,$L914
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
	bnei	r3,$L918
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
	bnei	r3,$L919
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
	bnei	r3,$L920
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
	bnei	r3,$L921
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
	bnei	r3,$L922
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L923
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L924
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L925
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L926
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L927
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L928
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	bnei	r3,$L929
	sra	r3,r5
	bnei	r3,$L930
	bneid	r5,$L933
	addik	r3,r0,16	# 0x10
$L914:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L917:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L928:
	rtsd	r15,8 
	
	addik	r3,r0,12	# 0xc
$L933:
	rtsd	r15,8 
	
	addik	r3,r0,15	# 0xf
$L918:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
$L919:
	rtsd	r15,8 
	
	addik	r3,r0,3	# 0x3
$L920:
	rtsd	r15,8 
	
	addik	r3,r0,4	# 0x4
$L921:
	rtsd	r15,8 
	
	addik	r3,r0,5	# 0x5
$L922:
	rtsd	r15,8 
	
	addik	r3,r0,6	# 0x6
$L923:
	rtsd	r15,8 
	
	addik	r3,r0,7	# 0x7
$L924:
	rtsd	r15,8 
	
	addik	r3,r0,8	# 0x8
$L925:
	rtsd	r15,8 
	
	addik	r3,r0,9	# 0x9
$L926:
	rtsd	r15,8 
	
	addik	r3,r0,10	# 0xa
$L927:
	rtsd	r15,8 
	
	addik	r3,r0,11	# 0xb
$L929:
	rtsd	r15,8 
	
	addik	r3,r0,13	# 0xd
$L930:
	rtsd	r15,8 
	
	addik	r3,r0,14	# 0xe
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
	andi	r3,r5,1 #and1
	bnei	r3,$L937
	andi	r3,r5,2 #and1
	bnei	r3,$L938
	andi	r3,r5,4 #and1
	bnei	r3,$L939
	andi	r3,r5,8 #and1
	bnei	r3,$L940
	andi	r3,r5,16 #and1
	bnei	r3,$L941
	andi	r3,r5,32 #and1
	bnei	r3,$L942
	andi	r3,r5,64 #and1
	bnei	r3,$L943
	andi	r3,r5,128 #and1
	bnei	r3,$L944
	andi	r3,r5,256 #and1
	bnei	r3,$L945
	andi	r3,r5,512 #and1
	bnei	r3,$L946
	andi	r3,r5,1024 #and1
	bnei	r3,$L947
	andi	r3,r5,2048 #and1
	bnei	r3,$L948
	andi	r3,r5,4096 #and1
	bnei	r3,$L949
	andi	r3,r5,8192 #and1
	bnei	r3,$L950
	andi	r3,r5,16384 #and1
	bnei	r3,$L951
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
	bneid	r4,$L954
	addik	r3,r0,16	# 0x10
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L937:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L938:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L949:
	rtsd	r15,8 
	
	addik	r3,r0,12	# 0xc
$L954:
	rtsd	r15,8 
	
	addik	r3,r0,15	# 0xf
$L939:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
$L940:
	rtsd	r15,8 
	
	addik	r3,r0,3	# 0x3
$L941:
	rtsd	r15,8 
	
	addik	r3,r0,4	# 0x4
$L942:
	rtsd	r15,8 
	
	addik	r3,r0,5	# 0x5
$L943:
	rtsd	r15,8 
	
	addik	r3,r0,6	# 0x6
$L944:
	rtsd	r15,8 
	
	addik	r3,r0,7	# 0x7
$L945:
	rtsd	r15,8 
	
	addik	r3,r0,8	# 0x8
$L946:
	rtsd	r15,8 
	
	addik	r3,r0,9	# 0x9
$L947:
	rtsd	r15,8 
	
	addik	r3,r0,10	# 0xa
$L948:
	rtsd	r15,8 
	
	addik	r3,r0,11	# 0xb
$L950:
	rtsd	r15,8 
	
	addik	r3,r0,13	# 0xd
$L951:
	rtsd	r15,8 
	
	addik	r3,r0,14	# 0xe
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
	addik	r6,r0,0x47000000
	addik	r1,r1,-32
	swi	r19,r1,28
	swi	r15,r1,0
	addk	r19,r5,r0
	brlid	r15,__gesf2
	nop		# Unfilled delay slot

	bgei	r3,$L962
	addk	r5,r19,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	lwi	r19,r1,28
	rtsd	r15,8 
	
	addik	r1,r1,32
$L962:
	addik	r6,r0,0x47000000
	addk	r5,r19,r0
	brlid	r15,__subsf3
	nop		# Unfilled delay slot

	addk	r5,r3,r0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	lwi	r19,r1,28
	addik	r3,r3,32768
	rtsd	r15,8 
	
	addik	r1,r1,32
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
	sra	r3,r5
	andi	r4,r5,1 #and1
	andi	r3,r3,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	addk	r3,r3,r4
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
	sra	r3,r5
	andi	r4,r5,1 #and1
	andi	r3,r3,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	andi	r4,r4,1 #and1
	addk	r3,r3,r4
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
	rtsd	r15,8 
	
	addk	r3,r3,r4
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
	beqi	r5,$L968
	addk	r3,r0,r0
$L967:
	andi	r4,r5,1 #and1
	rsubk	r4,r4,r0
	and	r4,r4,r6
	srl	r5,r5
	addk	r3,r3,r4
	bneid	r5,$L967
	addk	r6,r6,r6
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L968:
	rtsd	r15,8 
	
	addk	r3,r5,r0
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
	beqi	r5,$L973
	beqi	r6,$L974
	addk	r3,r0,r0
$L972:
	andi	r4,r6,1 #and1
	rsubk	r4,r4,r0
	and	r4,r4,r5
	srl	r6,r6
	addk	r3,r3,r4
	bneid	r6,$L972
	addk	r5,r5,r5
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L973:
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L974:
	rtsd	r15,8 
	
	addk	r3,r6,r0
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
	cmpu	r18,r5,r6
	bgeid	r18,$L978
	addik	r4,r0,1	# 0x1
$L977:
	blti	r6,$L978
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L979
	or	r3,r3,r4
	blti	r3,$L977
$L979:
	beqi	r4,$L987
$L978:
	addk	r3,r0,r0
$L984:
	cmpu	r18,r6,r5
	blti	r18,$L983
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L983:
	srl	r4,r4
	bneid	r4,$L984
	srl	r6,r6
	bnei	r7,$L997
$L976:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L997:
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L987:
	beqid	r7,$L976
	addk	r3,r4,r0
	bri	$L997
	.end	__udivmodsi4
$Lfe122:
	.size	__udivmodsi4,$Lfe122-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r15,r1,0
	addk	r19,r5,r0
	addk	r22,r6,r0
	brlid	r15,__ltsf2
	nop		# Unfilled delay slot

	bltid	r3,$L1001
	lwi	r15,r1,0
	addk	r5,r19,r0
	addk	r6,r22,r0
	brlid	r15,__gtsf2
	
	addik	r19,r0,1	# 0x1
	blei	r3,$L1003
$L1000:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L1003:
	brid	$L1000
	addk	r19,r0,r0
$L1001:
	lwi	r19,r1,28
	lwi	r22,r1,32
	addik	r3,r0,-1	# 0xffffffffffffffff
	rtsd	r15,8 
	
	addik	r1,r1,36
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
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r15,r1,0
	swi	r19,r1,28
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r24,r7,r0
	brlid	r15,__ltdf2
	
	addk	r25,r8,r0
	bltid	r3,$L1007
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__gtdf2
	
	addik	r19,r0,1	# 0x1
	blei	r3,$L1009
$L1006:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L1009:
	brid	$L1006
	addk	r19,r0,r0
$L1007:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	addik	r3,r0,-1	# 0xffffffffffffffff
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addk	r9,r0,r6
	add	r8,r9,r9
	addc	r8,r0,r0
	beqi	r8,.+8
	addi	r8,r0,0xffffffff
	addk	r5,r0,r5
	add	r4,r5,r5
	addc	r4,r0,r0
	beqi	r4,.+8
	addi	r4,r0,0xffffffff
	addk	r7,r8,r0
	addk	r6,r5,r0
	addk	r8,r9,r0
	addik	r1,r1,-28
	swi	r15,r1,0
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
	addk	r3,r5,r0
	addk	r7,r0,r0
	addk	r8,r6,r0
	addk	r5,r7,r0
	addik	r1,r1,-28
	swi	r15,r1,0
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	blti	r6,$L1024
	beqid	r6,$L1019
	addk	r10,r0,r0
$L1016:
	addik	r8,r0,1	# 0x1
	addk	r3,r0,r0
$L1018:
	andi	r7,r6,1 #and1
	sra	r6,r6
	xori	r4,r8,32
	rsubk	r9,r6,r0
	rsubk	r7,r7,r0
	or	r9,r9,r6
	rsubk	r4,r4,r0
	and	r7,r7,r5
	and	r4,r4,r9
	addik	r8,r8,1
	addk	r3,r3,r7
	addk	r5,r5,r5
	addk	r7,r0,r4
	srl	r7,r4
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
	bneid	r7,$L1018
	andi	r8,r8,0x00ff
	beqi	r10,$L1014
	rsubk	r3,r3,r0
$L1014:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1024:
	rsubk	r6,r6,r0
	brid	$L1016
	addik	r10,r0,1	# 0x1
$L1019:
	rtsd	r15,8 
	
	addk	r3,r6,r0
	.end	__mulhi3
$Lfe127:
	.size	__mulhi3,$Lfe127-__mulhi3
	.align	2
	.globl	__divsi3
	.ent	__divsi3
	.type	__divsi3, @function
__divsi3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	bltid	r5,$L1048
	addk	r3,r0,r0
	addik	r3,r0,1	# 0x1
	addk	r9,r0,r0
$L1026:
	bgeid	r6,$L1050
	addk	r8,r5,r0
	addk	r9,r3,r0
	rsubk	r6,r6,r0
$L1050:
	cmpu	r18,r5,r6
	bgeid	r18,$L1029
	addik	r4,r0,1	# 0x1
$L1028:
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bltid	r18,$L1049
	or	r3,r3,r4
$L1033:
	beqid	r4,$L1030
	addk	r3,r4,r0
$L1029:
	addk	r3,r0,r0
$L1035:
	cmpu	r18,r6,r8
	blti	r18,$L1034
	rsubk	r8,r6,r8
	or	r3,r3,r4
$L1034:
	srl	r4,r4
	bneid	r4,$L1035
	srl	r6,r6
$L1030:
	beqi	r9,$L1025
	rsubk	r3,r3,r0
$L1025:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1049:
	addk	r7,r0,r3
	srl	r7,r3
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
	bnei	r7,$L1028
	bri	$L1033
$L1048:
	rsubk	r5,r5,r0
	brid	$L1026
	addik	r9,r0,1	# 0x1
	.end	__divsi3
$Lfe128:
	.size	__divsi3,$Lfe128-__divsi3
	.align	2
	.globl	__modsi3
	.ent	__modsi3
	.type	__modsi3, @function
__modsi3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	bgeid	r5,$L1052
	addk	r9,r0,r0
	rsubk	r5,r5,r0
	addik	r9,r0,1	# 0x1
$L1052:
	addk	r4,r0,r6
	sra	r4,r6
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
	xor	r6,r4,r6
	rsubk	r6,r4,r6
	addk	r3,r5,r0
	cmpu	r18,r5,r6
	bgeid	r18,$L1060
	addik	r4,r0,1	# 0x1
$L1053:
	addk	r4,r4,r4
	rsubk	r7,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bltid	r18,$L1073
	or	r7,r7,r4
	beqi	r4,$L1074
$L1060:
	cmpu	r18,r6,r3
	bltid	r18,$L1059
	srl	r4,r4
	rsubk	r3,r6,r3
$L1059:
	bneid	r4,$L1060
	srl	r6,r6
$L1055:
	beqi	r9,$L1051
	rsubk	r3,r3,r0
$L1051:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1073:
	addk	r8,r0,r7
	srl	r8,r7
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
	bnei	r8,$L1053
	bnei	r4,$L1060
$L1074:
	brid	$L1055
	addk	r3,r5,r0
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
	cmpu	r18,r5,r6
	bgeid	r18,$L1132
	addik	r9,r0,1	# 0x1
$L1076:
	addk	r3,r6,r6
	sext16	r8,r6
	andi	r3,r3,0xffff
	bltid	r8,$L1133
	addk	r4,r9,r9
	andi	r4,r4,0xffff
	cmpu	r18,r5,r3
	blti	r18,$L1134
	beqi	r4,$L1106
	cmpu	r18,r3,r5
	blti	r18,$L1083
	rsubk	r5,r3,r5
	andi	r8,r9,32767 #and1
	andi	r10,r6,32767 #and1
	addk	r9,r4,r0
	andi	r5,r5,0xffff
	brid	$L1084
	addk	r6,r3,r0
$L1134:
	addk	r9,r4,r0
	bneid	r4,$L1076
	addk	r6,r3,r0
$L1106:
	addk	r3,r5,r0
$L1082:
	bnei	r7,$L1122
	addk	r3,r4,r0
$L1122:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1133:
	cmpu	r18,r6,r5
	bltid	r18,$L1103
	addk	r4,r0,r0
	addk	r4,r9,r0
	rsubk	r5,r6,r5
	andi	r5,r5,0xffff
$L1103:
	srl	r8,r9
	andi	r8,r8,0xffff
	beqid	r8,$L1106
	srl	r10,r6
$L1084:
	cmpu	r18,r10,r5
	bltid	r18,$L1085
	rsubk	r10,r10,r5
	or	r8,r4,r8
	andi	r5,r10,0xffff
	andi	r4,r8,0xffff
$L1085:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bltid	r18,$L1086
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1086:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bltid	r18,$L1087
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1087:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bltid	r18,$L1088
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1088:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bltid	r18,$L1089
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1089:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bltid	r18,$L1090
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1090:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bgeid	r18,$L1135
	rsubk	r8,r8,r5
$L1091:
	addk	r3,r0,r9
	srl	r3,r9
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bgeid	r18,$L1136
	rsubk	r8,r8,r5
$L1092:
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
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bgeid	r18,$L1137
	rsubk	r8,r8,r5
$L1093:
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
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bgeid	r18,$L1138
	rsubk	r8,r8,r5
$L1094:
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
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
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
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bgeid	r18,$L1139
	rsubk	r8,r8,r5
$L1095:
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
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
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
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bltid	r18,$L1096
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1096:
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
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
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
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bltid	r18,$L1097
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1097:
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
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
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
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bltid	r18,$L1098
	rsubk	r8,r8,r5
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
$L1098:
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
	andi	r3,r3,0xffff
	addk	r8,r0,r6
	srl	r8,r6
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
	beqi	r3,$L1106
	cmpu	r18,r8,r5
	bltid	r18,$L1082
	addk	r3,r0,r0
	rsubk	r8,r8,r5
	ori	r4,r4,1
	andi	r3,r8,0xffff
	andi	r4,r4,0xffff
	bri	$L1082
$L1135:
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
	bri	$L1091
$L1083:
	andi	r8,r9,32767 #and1
	andi	r10,r6,32767 #and1
	addk	r9,r4,r0
	addk	r6,r3,r0
	brid	$L1084
	addk	r4,r0,r0
$L1136:
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
	bri	$L1092
$L1137:
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
	bri	$L1093
$L1138:
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
	bri	$L1094
$L1139:
	or	r3,r4,r3
	andi	r5,r8,0xffff
	andi	r4,r3,0xffff
	bri	$L1095
$L1132:
	xor	r3,r6,r5
	beqid	r3,$L1082
	addk	r4,r9,r0
	addk	r3,r5,r0
	brid	$L1082
	addk	r4,r0,r0
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
	cmpu	r18,r5,r6
	bgeid	r18,$L1142
	addik	r4,r0,1	# 0x1
$L1141:
	blti	r6,$L1142
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L1143
	or	r3,r3,r4
	blti	r3,$L1141
$L1143:
	beqi	r4,$L1151
$L1142:
	addk	r3,r0,r0
$L1148:
	cmpu	r18,r6,r5
	blti	r18,$L1147
	rsubk	r5,r6,r5
	or	r3,r3,r4
$L1147:
	srl	r4,r4
	bneid	r4,$L1148
	srl	r6,r6
	bnei	r7,$L1161
$L1140:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1161:
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L1151:
	beqid	r7,$L1140
	addk	r3,r4,r0
	bri	$L1161
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
	beqi	r3,$L1163
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	rtsd	r15,8 
	
	addk	r4,r0,r0
$L1163:
	beqid	r7,$L1166
	addik	r3,r0,32	# 0x20
	rsubk	r3,r7,r3
	andi	r18,r3,31
	addk	r4,r0,r6
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
	or	r3,r4,r3
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1166:
	addk	r3,r5,r0
	rtsd	r15,8 
	
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
	beqi	r3,$L1168
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
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1168:
	beqid	r7,$L1171
	addik	r3,r0,32	# 0x20
	rsubk	r3,r7,r3
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r4,r4,r3
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1171:
	addk	r3,r5,r0
	rtsd	r15,8 
	
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
	or	r4,r4,r3
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
	src	r7,r6
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	andi	r7,r7,-16777216
	addk	r8,r0,r5
	addk	r8,r5,r5
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	or	r7,r7,r3
	andi	r8,r8,16711680 #and2
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	andi	r3,r3,65280 #and2
	or	r7,r7,r3
	or	r4,r4,r8
	addk	r3,r0,r6
	addk	r3,r6,r6
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	andi	r3,r3,16711680 #and2
	src	r6,r5
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	src	r6,r6
	andi	r6,r6,-16777216
	or	r3,r7,r3
	rtsd	r15,8 
	
	or	r4,r4,r6
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
	addk	r3,r5,r5
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
	addk	r3,r3,r3
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
	addk	r6,r0,r5
	srl	r6,r5
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	or	r4,r4,r7
	andi	r5,r6,65280 #and2
	addk	r3,r3,r3
	or	r4,r4,r5
	andi	r3,r3,16711680 #and2
	rtsd	r15,8 
	
	or	r3,r4,r3
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
	addik	r4,r0,65535
	cmpu	r18,r5,r4
	bgeid	r18,$L1175
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L1175:
	addk	r4,r3,r3
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	addik	r3,r0,16	# 0x10
	rsubk	r3,r4,r3
	andi	r18,r3,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	andi	r5,r8,65280 #and2
	rsubk	r3,r5,r0
	or	r3,r3,r5
	xori	r3,r3,-1
	addk	r6,r0,r3
	srl	r6,r3
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
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	addik	r3,r0,8	# 0x8
	andi	r6,r6,8 #and1
	rsubk	r3,r6,r3
	andi	r18,r3,31
	addk	r7,r0,r8
	beqid	r18,.+20
	addk	r7,r7,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r7,r7
	andi	r3,r7,240 #and1
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
	addik	r5,r0,4	# 0x4
	andi	r3,r3,4 #and1
	rsubk	r5,r3,r5
	andi	r18,r5,31
	addk	r8,r0,r7
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	andi	r5,r8,12 #and1
	rsubk	r7,r5,r0
	or	r7,r7,r5
	xori	r7,r7,-1
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
	addik	r10,r0,2	# 0x2
	addk	r5,r5,r5
	rsubk	r7,r5,r10
	andi	r18,r7,31
	addk	r9,r0,r8
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	srl	r7,r9
	andi	r7,r7,1 #and1
	addk	r6,r6,r4
	xori	r4,r7,1
	addk	r3,r3,r6
	beqid	r4,$L1177
	addk	r6,r0,r0
	rsubk	r6,r9,r10
$L1177:
	addk	r3,r5,r3
	rtsd	r15,8 
	
	addk	r3,r6,r3
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
	blti	r18,$L1183
	cmp	r18,r5,r7
	blti	r18,$L1184
	cmpu	r18,r8,r6
	blti	r18,$L1183
	cmpu	r18,r6,r8
	blti	r18,$L1184
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1183:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1184:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
	.end	__cmpdi2
$Lfe137:
	.size	__cmpdi2,$Lfe137-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.ent	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmp	r18,r7,r5
	blti	r18,$L1190
	cmp	r18,r5,r7
	blti	r18,$L1189
	cmpu	r18,r8,r6
	blti	r18,$L1190
	cmpu	r18,r6,r8
	bgeid	r18,$L1191
	addik	r3,r0,1	# 0x1
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1190:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
$L1191:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1189:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
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
	addk	r8,r0,r3
	srl	r8,r3
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
	andi	r8,r8,16 #and1
	andi	r18,r8,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	andi	r4,r6,255 #and1
	rsubk	r3,r4,r0
	or	r3,r3,r4
	xori	r3,r3,-1
	addk	r7,r0,r3
	srl	r7,r3
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
	andi	r7,r7,8 #and1
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r5,r4,15 #and1
	rsubk	r3,r5,r0
	or	r3,r3,r5
	xori	r3,r3,-1
	addk	r6,r0,r3
	srl	r6,r3
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
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	andi	r6,r6,4 #and1
	andi	r18,r6,31
	addk	r9,r0,r4
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r4,r9,3 #and1
	rsubk	r3,r4,r0
	or	r3,r3,r4
	xori	r3,r3,-1
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
	addk	r5,r5,r5
	andi	r18,r5,31
	addk	r4,r0,r9
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r4,r4,3 #and1
	addk	r7,r7,r8
	xori	r3,r4,-1
	addk	r6,r6,r7
	andi	r3,r3,1 #and1
	addik	r7,r0,2	# 0x2
	srl	r4,r4
	rsubk	r4,r4,r7
	rsubk	r3,r3,r0
	and	r3,r3,r4
	addk	r5,r5,r6
	rtsd	r15,8 
	
	addk	r3,r3,r5
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
	beqi	r3,$L1194
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1194:
	beqid	r7,$L1197
	addik	r3,r0,32	# 0x20
	rsubk	r3,r7,r3
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	or	r4,r4,r3
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1197:
	addk	r3,r5,r0
	rtsd	r15,8 
	
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
	swi	r25,r1,44
	swi	r26,r1,48
	andi	r25,r6,65535 #and2
	andi	r26,r5,65535 #and2
	swi	r19,r1,28
	swi	r22,r1,32
	addk	r19,r5,r0
	addk	r22,r6,r0
	addk	r5,r26,r0
	addk	r6,r25,r0
	swi	r15,r1,0
	swi	r23,r1,36
	swi	r24,r1,40
	brlid	r15,__mulsi3
	
	swi	r27,r1,52
	addk	r24,r0,r19
	srl	r24,r19
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
	addk	r5,r25,r0
	addk	r6,r24,r0
	addk	r27,r0,r3
	srl	r27,r3
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
	brlid	r15,__mulsi3
	
	addk	r23,r3,r0
	addk	r27,r3,r27
	addk	r4,r27,r27
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
	addk	r25,r0,r22
	srl	r25,r22
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
	addk	r5,r26,r0
	addk	r6,r25,r0
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	andi	r23,r23,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r23,r23,r4
	addk	r26,r0,r23
	srl	r26,r23
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
	addk	r26,r3,r26
	addk	r7,r26,r26
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r6,r25,r0
	addk	r5,r24,r0
	addk	r7,r7,r7
	addk	r7,r7,r7
	addk	r7,r7,r7
	andi	r23,r23,65535 #and2
	addk	r24,r0,r27
	srl	r24,r27
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
	brlid	r15,__mulsi3
	
	addk	r23,r23,r7
	addk	r4,r23,r0
	addk	r5,r0,r26
	srl	r5,r26
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
	addk	r3,r24,r3
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	lwi	r27,r1,52
	addk	r3,r3,r5
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
	.frame	r1,68,r15		# vars= 0, regs= 10, args= 24
	.mask	0x7fc88000
	addik	r1,r1,-68
	swi	r26,r1,48
	swi	r27,r1,52
	andi	r26,r6,65535 #and2
	andi	r27,r8,65535 #and2
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r22,r6,r0
	addk	r23,r5,r0
	addk	r6,r27,r0
	addk	r5,r26,r0
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r28,r1,56
	swi	r29,r1,60
	swi	r30,r1,64
	addk	r19,r8,r0
	brlid	r15,__mulsi3
	
	addk	r24,r7,r0
	addk	r28,r0,r22
	srl	r28,r22
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	addk	r5,r27,r0
	addk	r6,r28,r0
	addk	r27,r0,r3
	srl	r27,r3
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
	brlid	r15,__mulsi3
	
	addk	r25,r3,r0
	addk	r27,r3,r27
	addk	r4,r27,r27
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
	addk	r29,r0,r19
	srl	r29,r19
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	srl	r29,r29
	addk	r5,r26,r0
	addk	r6,r29,r0
	addk	r4,r4,r4
	addk	r4,r4,r4
	addk	r4,r4,r4
	andi	r25,r25,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r25,r25,r4
	addk	r30,r0,r25
	srl	r30,r25
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	srl	r30,r30
	addk	r30,r3,r30
	addk	r9,r30,r30
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r6,r29,r0
	addk	r5,r28,r0
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	andi	r25,r25,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r25,r25,r9
	addk	r6,r24,r0
	addk	r5,r22,r0
	addk	r28,r0,r27
	srl	r28,r27
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	srl	r28,r28
	addk	r22,r28,r3
	addk	r3,r0,r30
	srl	r3,r30
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	brlid	r15,__mulsi3
	
	addk	r22,r22,r3
	addk	r6,r23,r0
	addk	r5,r19,r0
	brlid	r15,__mulsi3
	
	addk	r22,r3,r22
	addk	r4,r25,r0
	addk	r3,r22,r3
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
	lwi	r30,r1,64
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
	xor	r5,r5,r6
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
	xor	r4,r4,r5
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r3,r3,r4
	addk	r4,r0,r3
	srl	r4,r3
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
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
	xor	r3,r3,r5
	addk	r5,r0,r3
	srl	r5,r3
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	xor	r5,r5,r3
	addk	r4,r0,r5
	srl	r4,r5
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	xor	r4,r4,r5
	andi	r4,r4,15 #and1
	addik	r5,r0,27030	# 0x6996
	andi	r18,r4,31
	addk	r3,r0,r5
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
	.frame	r1,20,r15		# vars= 0, regs= 4, args= 0
	.mask	0x03c00000
	addk	r11,r6,r0
	addk	r10,r5,r0
	addik	r1,r1,-20
	srl	r6,r5
	srl	r3,r11
	swi	r24,r1,12
	swi	r25,r1,16
	andi	r24,r6,1431655765 #and2
	andi	r25,r3,1431655765 #and2
	rsub	r7,r25,r11
	rsubc	r6,r24,r10
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	swi	r22,r1,4
	swi	r23,r1,8
	andi	r22,r6,858993459 #and2
	andi	r23,r7,858993459 #and2
	andi	r8,r3,858993459 #and2
	addk	r3,r0,r7
	srl	r3,r7
	srl	r3,r3
	andi	r9,r3,858993459 #and2
	add	r9,r9,r23
	addc	r8,r8,r22
	src	r3,r8
	src	r3,r3
	src	r3,r3
	src	r3,r3
	src	r3,r3
	andi	r3,r3,-268435456
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	or	r5,r3,r5
	addk	r4,r0,r8
	srl	r4,r8
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	add	r5,r5,r9
	addc	r4,r4,r8
	andi	r3,r4,252645135 #and2
	andi	r4,r5,252645135 #and2
	addk	r3,r3,r4
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
	lwi	r22,r1,4
	addk	r4,r4,r3
	lwi	r23,r1,8
	lwi	r24,r1,12
	lwi	r25,r1,16
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
	rtsd	r15,8 
	
	addik	r1,r1,20
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
	andi	r3,r5,858993459 #and2
	addk	r4,r0,r5
	srl	r4,r5
	srl	r4,r4
	andi	r4,r4,858993459 #and2
	addk	r4,r4,r3
	addk	r3,r0,r4
	srl	r3,r4
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r3,r3,r4
	andi	r3,r3,252645135 #and2
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
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r26,r1,48
	swi	r15,r1,0
	andi	r3,r7,1 #and1
	addk	r22,r5,r0
	addk	r23,r6,r0
	addk	r26,r7,r0
	addik	r24,r0,0x3ff00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	beqid	r3,$L1209
	addk	r19,r7,r0
$L1211:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L1209:
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
	beqi	r19,$L1210
$L1212:
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	addk	r23,r4,r0
	andi	r4,r19,1 #and1
	addk	r22,r3,r0
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
	bneid	r4,$L1211
	addk	r3,r3,r19
	brid	$L1212
	sra	r19,r3
$L1210:
	bgeid	r26,$L1216
	addk	r3,r24,r0
	addk	r7,r24,r0
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	
	addk	r8,r25,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
	addk	r3,r24,r0
$L1216:
	addk	r4,r25,r0
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
	.frame	r1,44,r15		# vars= 4, regs= 3, args= 24
	.mask	0x00c88000
	addik	r1,r1,-44
	swi	r23,r1,40
	addk	r23,r6,r0
	swi	r19,r1,32
	swi	r22,r1,36
	swi	r15,r1,0
	andi	r3,r23,1 #and1
	addk	r6,r5,r0
	addik	r22,r0,0x3f800000
	beqid	r3,$L1218
	addk	r19,r23,r0
$L1220:
	addk	r5,r22,r0
	brlid	r15,__mulsf3
	
	swi	r6,r1,28
	addk	r22,r3,r0
	lwi	r6,r1,28
$L1218:
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
	beqi	r19,$L1219
$L1221:
	addk	r5,r6,r0
	brlid	r15,__mulsf3
	nop		# Unfilled delay slot

	andi	r4,r19,1 #and1
	addk	r7,r0,r19
	srl	r7,r19
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
	addk	r6,r3,r0
	bneid	r4,$L1220
	addk	r7,r7,r19
	brid	$L1221
	sra	r19,r7
$L1219:
	bgei	r23,$L1217
	addk	r6,r22,r0
	addik	r5,r0,0x3f800000
	brlid	r15,__divsf3
	nop		# Unfilled delay slot

	addk	r22,r3,r0
$L1217:
	addk	r3,r22,r0
	lwi	r15,r1,0
	lwi	r19,r1,32
	lwi	r22,r1,36
	lwi	r23,r1,40
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
	blti	r18,$L1229
	cmpu	r18,r5,r7
	blti	r18,$L1230
	cmpu	r18,r8,r6
	blti	r18,$L1229
	cmpu	r18,r6,r8
	blti	r18,$L1230
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1229:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1230:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
	.end	__ucmpdi2
$Lfe150:
	.size	__ucmpdi2,$Lfe150-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.ent	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	cmpu	r18,r7,r5
	blti	r18,$L1236
	cmpu	r18,r5,r7
	blti	r18,$L1235
	cmpu	r18,r8,r6
	blti	r18,$L1236
	cmpu	r18,r6,r8
	bgeid	r18,$L1237
	addik	r3,r0,1	# 0x1
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1236:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
$L1237:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1235:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
	.end	__aeabi_ulcmp
$Lfe151:
	.size	__aeabi_ulcmp,$Lfe151-__aeabi_ulcmp
	.bss
	.lcomm	s.0,7,4
	.type	s.0, @object
	.lcomm	seed,8,4
	.type	seed, @object
	.rodata
	.align	2
	.type	digits,@object
	.size	digits,65
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.section	.note.GNU-stack,"",@progbits
