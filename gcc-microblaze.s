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
	lbu	r9,r7,r6
	sb	r9,r7,r4
	addik	r7,r7,-1
	bnei	r7,$L4
$L3:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L2:
	xor	r4,r5,r6
	beqi	r4,$L3
	beqid	r7,$L3
	addik	r8,r7,-1
	addik	r5,r0,6	# 0x6
	cmpu	r18,r8,r5
	bgeid	r18,$L13
	or	r9,r6,r3
	andi	r10,r9,3 #and1
	bneid	r10,$L13
	addik	r11,r6,1
	rsubk	r12,r11,r3
	addik	r4,r0,2	# 0x2
	cmpu	r18,r12,r4
	bgeid	r18,$L35
	addk	r12,r0,r0
	andi	r9,r7,-4 #and1
	addk	r5,r0,r0
$L7:
	lw	r8,r5,r6
	sw	r8,r5,r3
	addik	r5,r5,4
	xor	r10,r5,r9
	bneid	r10,$L7
	xor	r11,r7,r9
	addk	r12,r6,r9
	addk	r8,r3,r9
	beqid	r11,$L3
	rsubk	r7,r9,r7
	lbu	r6,r9,r6
	xori	r4,r7,1
	beqid	r4,$L3
	sb	r6,r9,r3
	lbui	r9,r12,1
	xori	r5,r7,2
	beqid	r5,$L3
	sbi	r9,r8,1
	lbui	r10,r12,2
	rtsd	r15,8 
	
	sbi	r10,r8,2
$L13:
	addk	r12,r0,r0
$L35:
	lbu	r11,r12,r6
	sb	r11,r12,r3
	addik	r12,r12,1
	xor	r8,r7,r12
	bnei	r8,$L35
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
	bneid	r8,$L38
	andi	r7,r7,0x00ff
	brid	$L48
	addk	r3,r0,r0
$L41:
	beqid	r8,$L40
	addik	r5,r5,1
$L38:
	lbui	r4,r6,0
	addik	r8,r8,-1
	addik	r6,r6,1
	xor	r3,r4,r7
	bneid	r3,$L41
	sbi	r4,r5,0
	rtsd	r15,8 
	
	addik	r3,r5,1
$L40:
	addk	r3,r0,r0
$L48:
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
	bneid	r7,$L50
	andi	r6,r6,0x00ff
	brid	$L57
	addk	r3,r7,r0
$L52:
	beqid	r7,$L53
	addik	r5,r5,1
$L50:
	lbui	r4,r5,0
	xor	r3,r4,r6
	bneid	r3,$L52
	addik	r7,r7,-1
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L53:
	addk	r3,r7,r0
$L57:
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
	beqi	r7,$L63
$L72:
	lbui	r4,r5,0
	lbui	r3,r6,0
	addik	r7,r7,-1
	xor	r8,r4,r3
	bneid	r8,$L71
	addik	r5,r5,1
	bneid	r7,$L72
	addik	r6,r6,1
$L63:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L71:
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
	beqid	r7,$L74
	addk	r19,r5,r0
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L74:
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
	addk	r9,r5,r7
	andi	r6,r6,0x00ff
	brid	$L80
	addik	r5,r5,-1
$L82:
	lbui	r8,r3,0
	xor	r10,r8,r6
	beqid	r10,$L79
	addik	r9,r9,-1
$L80:
	xor	r4,r9,r5
	bneid	r4,$L82
	addk	r3,r9,r0
	addk	r3,r4,r0
$L79:
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
	beqid	r7,$L86
	addk	r19,r5,r0
	brlid	r15,memset
	
	andi	r6,r6,0x00ff
$L86:
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
	beqid	r5,$L89
	sbi	r4,r3,0
$L90:
	lbui	r7,r6,1
	addik	r3,r3,1
	addik	r6,r6,1
	sext8	r8,r7
	bneid	r8,$L90
	sbi	r7,r3,0
$L89:
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
	sext8	r9,r4
	bneid	r9,$L96
	andi	r6,r6,0x00ff
	bri	$L95
$L98:
	lbui	r8,r3,1
	sext8	r9,r8
	beqid	r9,$L95
	addik	r3,r3,1
$L96:
	andi	r5,r9,0x00ff
	xor	r7,r5,r6
	bnei	r7,$L98
$L95:
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
	brid	$L105
	addk	r3,r5,r0
$L108:
	beqid	r7,$L107
	addik	r3,r3,1
$L105:
	lbui	r4,r3,0
	sext8	r7,r4
	xor	r5,r7,r6
	bnei	r5,$L108
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L107:
	rtsd	r15,8 
	
	addk	r3,r7,r0
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
	sext8	r11,r4
	sext8	r3,r8
	xor	r9,r3,r11
	bneid	r9,$L118
	addik	r6,r6,-1
$L110:
	beqi	r3,$L111
	lbu	r8,r7,r5
	addik	r7,r7,1
	lbu	r10,r7,r6
	sext8	r3,r8
	sext8	r11,r10
	xor	r12,r3,r11
	beqi	r12,$L110
$L118:
	andi	r3,r8,0x00ff
$L111:
	andi	r5,r11,0x00ff
	rtsd	r15,8 
	
	rsubk	r3,r5,r3
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
	beqid	r3,$L119
	addk	r6,r5,r0
$L121:
	lbui	r4,r6,1
	bneid	r4,$L121
	addik	r6,r6,1
	rsubk	r3,r5,r6
$L119:
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
	beqid	r7,$L131
	addk	r8,r6,r0
	lbui	r9,r5,0
	addik	r7,r7,-1
	bneid	r9,$L128
	addk	r11,r6,r7
	brid	$L140
	lbui	r3,r6,0
$L142:
	addk	r10,r0,r6
	srl	r10,r6
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
	beqi	r10,$L127
	lbui	r9,r5,0
	beqid	r9,$L141
	addik	r3,r8,1
	addk	r8,r3,r0
$L128:
	lbui	r3,r8,0
	xor	r6,r8,r11
	rsubk	r7,r6,r0
	xor	r4,r3,r9
	rsubk	r10,r3,r0
	addik	r12,r4,-1
	and	r4,r12,r10
	addik	r5,r5,1
	bltid	r4,$L142
	or	r6,r7,r6
$L127:
	rsubk	r3,r3,r9
$L124:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L131:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L141:
	lbui	r3,r8,1
	brid	$L124
	rsubk	r3,r3,r9
$L140:
	brid	$L124
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
	bgeid	r18,$L143
	andi	r7,r7,-2 #and1
	addk	r4,r5,r7
$L145:
	lbui	r8,r5,1
	lbui	r9,r5,0
	addik	r5,r5,2
	sbi	r8,r6,0
	sbi	r9,r6,1
	xor	r10,r5,r4
	bneid	r10,$L145
	addik	r6,r6,2
$L143:
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
	addik	r6,r5,-97
	cmpu	r18,r6,r4
	bgeid	r18,$L148
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L148:
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
	bgeid	r18,$L150
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L150:
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
	or	r7,r4,r6
	or	r8,r3,r5
	and	r9,r8,r7
	xori	r4,r9,-1
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
	bgeid	r18,$L153
	addik	r6,r0,1	# 0x1
	addk	r6,r0,r0
$L153:
	xori	r5,r5,127
	rsubk	r4,r5,r0
	or	r7,r4,r5
	xori	r8,r7,-1
	addk	r9,r0,r8
	srl	r9,r8
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
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	or	r10,r9,r6
	rtsd	r15,8 
	
	andi	r3,r10,1 #and1
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
	bgeid	r18,$L155
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L155:
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
	bgeid	r18,$L157
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L157:
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
	bgeid	r18,$L159
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L159:
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
	bgeid	r18,$L161
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L161:
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
	bgeid	r18,$L163
	addik	r6,r0,1	# 0x1
	addk	r6,r0,r0
$L163:
	xori	r5,r5,32
	rsubk	r7,r5,r0
	or	r8,r7,r5
	xori	r9,r8,-1
	addk	r10,r0,r9
	srl	r10,r9
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
	or	r11,r10,r6
	rtsd	r15,8 
	
	andi	r3,r11,1 #and1
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
	bgeid	r18,$L165
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L165:
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
	bgeid	r18,$L171
	addik	r6,r0,31	# 0x1f
	cmpu	r18,r5,r6
	bgeid	r18,$L171
	addik	r7,r0,1	# 0x1
	addik	r8,r5,-8232
	cmpu	r18,r8,r7
	bgeid	r18,$L166
	addk	r3,r7,r0
	addik	r5,r5,-65529
	addik	r9,r0,2	# 0x2
	cmpu	r18,r5,r9
	blti	r18,$L175
$L166:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L171:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L175:
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
	bgeid	r18,$L177
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L177:
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
	bgeid	r18,$L189
	addik	r4,r5,-8234
	addik	r6,r0,47061
	cmpu	r18,r4,r6
	bltid	r18,$L190
	addik	r7,r0,8231	# 0x2027
	addik	r3,r0,1	# 0x1
$L178:
$L191:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L190:
	cmpu	r18,r5,r7
	bgeid	r18,$L191
	addik	r3,r0,1	# 0x1
	addik	r8,r5,-57344
	addik	r9,r0,8184	# 0x1ff8
	cmpu	r18,r8,r9
	bgei	r18,$L191
	addik	r10,r0,1048579
	addik	r11,r5,-65532
	cmpu	r18,r11,r10
	blti	r18,$L186
	andi	r5,r5,65534 #and2
	xori	r12,r5,65534
	rsubk	r6,r12,r0
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
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L189:
	addik	r3,r5,1
	andi	r7,r3,127 #and1
	addik	r4,r0,32	# 0x20
	cmpu	r18,r7,r4
	bltid	r18,$L178
	addik	r3,r0,1	# 0x1
$L186:
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
	bgeid	r18,$L192
	addik	r3,r0,1	# 0x1
	ori	r5,r5,32
	addik	r7,r5,-97
	addik	r8,r0,5	# 0x5
	cmpu	r18,r7,r8
	blti	r18,$L196
$L192:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L196:
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
	bneid	r3,$L198
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bneid	r3,$L202
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L205
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r24,r0
	brlid	r15,__subdf3
	
	addk	r8,r25,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
$L198:
	addk	r3,r22,r0
$L207:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L205:
	addk	r22,r0,r0
	addk	r23,r0,r0
	brid	$L207
	addk	r3,r22,r0
$L202:
	addk	r22,r24,r0
	brid	$L198
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

	bnei	r3,$L211
	addk	r6,r22,r0
	addk	r5,r22,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L212
	fcmp.gt	r3,r22,r19
	bneid	r3,$L217
	lwi	r15,r1,0
	addk	r3,r0,r0
$L218:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L217:
	frsub	r3,r22,r19
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L211:
	addk	r3,r19,r0
	brid	$L218
	lwi	r15,r1,0
$L212:
	addk	r3,r22,r0
	brid	$L218
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
	bneid	r3,$L219
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bnei	r3,$L226
	andi	r5,r24,-2147483648 #and2
	andi	r6,r22,-2147483648 #and2
	xor	r7,r5,r6
	beqid	r7,$L221
	addk	r8,r23,r0
	beqi	r5,$L226
$L219:
	addk	r3,r22,r0
$L231:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L221:
	addk	r7,r22,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bltid	r3,$L231
	addk	r3,r22,r0
$L226:
	addk	r22,r24,r0
	brid	$L219
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

	bnei	r3,$L237
	addk	r6,r19,r0
	addk	r5,r19,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L238
	andi	r5,r22,-2147483648 #and2
	andi	r6,r19,-2147483648 #and2
	xor	r7,r5,r6
	beqid	r7,$L234
	addk	r3,r19,r0
	beqid	r5,$L238
	lwi	r15,r1,0
$L242:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L234:
	fcmp.lt	r8,r19,r22
	addk	r3,r22,r0
	beqid	r8,$L242
	lwi	r15,r1,0
$L237:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L238:
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
	bneid	r3,$L243
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__unorddf2
	
	addk	r6,r23,r0
	bnei	r3,$L250
	andi	r5,r24,-2147483648 #and2
	andi	r6,r22,-2147483648 #and2
	xor	r7,r5,r6
	beqid	r7,$L245
	addk	r8,r23,r0
	beqi	r5,$L250
$L243:
	addk	r3,r22,r0
$L255:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L245:
	addk	r7,r22,r0
	addk	r5,r24,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	bltid	r3,$L255
	addk	r3,r22,r0
$L250:
	addk	r22,r24,r0
	brid	$L243
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
	bneid	r3,$L262
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bnei	r3,$L256
	andi	r5,r22,-2147483648 #and2
	andi	r6,r24,-2147483648 #and2
	xor	r7,r5,r6
	beqid	r7,$L258
	addk	r8,r25,r0
	beqi	r5,$L262
$L256:
	addk	r3,r22,r0
$L268:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L258:
	addk	r7,r24,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bltid	r3,$L268
	addk	r3,r22,r0
$L262:
	addk	r22,r24,r0
	brid	$L256
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
	swi	r19,r1,28
	addk	r19,r6,r0
	addk	r6,r5,r0
	swi	r22,r1,32
	swi	r15,r1,0
	addk	r22,r5,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L274
	addk	r6,r19,r0
	addk	r5,r19,r0
	brlid	r15,__unordsf2
	nop		# Unfilled delay slot

	bnei	r3,$L275
	andi	r5,r22,-2147483648 #and2
	andi	r6,r19,-2147483648 #and2
	xor	r7,r5,r6
	beqid	r7,$L271
	addk	r3,r19,r0
	addk	r3,r22,r0
	beqid	r5,$L274
	lwi	r15,r1,0
$L279:
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L271:
	fcmp.lt	r8,r19,r22
	beqid	r8,$L279
	lwi	r15,r1,0
$L275:
	addk	r3,r22,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
$L274:
	addk	r3,r19,r0
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
	bneid	r3,$L286
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__unorddf2
	
	addk	r6,r25,r0
	bnei	r3,$L280
	andi	r5,r22,-2147483648 #and2
	andi	r6,r24,-2147483648 #and2
	xor	r7,r5,r6
	beqid	r7,$L282
	addk	r8,r25,r0
	beqi	r5,$L286
$L280:
	addk	r3,r22,r0
$L292:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L282:
	addk	r7,r24,r0
	addk	r5,r22,r0
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bltid	r3,$L292
	addk	r3,r22,r0
$L286:
	addk	r22,r24,r0
	brid	$L280
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
	beqi	r5,$L294
	addik	r6,r0,digits
$L295:
	andi	r4,r5,63 #and1
	lbu	r7,r4,r6
	addk	r8,r5,r0
	addik	r3,r3,1
	addk	r5,r0,r8
	srl	r5,r8
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	bneid	r5,$L295
	sbi	r7,r3,-1
$L294:
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
	beqi	r6,$L307
	lwi	r3,r6,0
	swi	r6,r5,4
	swi	r3,r5,0
	swi	r5,r6,0
	lwi	r4,r5,0
	beqi	r4,$L301
	swi	r5,r4,4
$L301:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L307:
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
	beqi	r3,$L309
	lwi	r4,r5,4
	swi	r4,r3,4
$L309:
	lwi	r5,r5,4
	beqi	r5,$L308
	swi	r3,r5,0
$L308:
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
	beqid	r23,$L318
	addk	r24,r8,r0
	addk	r29,r9,r0
	addk	r19,r6,r0
	brid	$L320
	addk	r22,r0,r0
$L333:
	beqid	r4,$L318
	addk	r19,r19,r24
$L320:
	addk	r6,r19,r0
	addk	r5,r25,r0
	addik	r22,r22,1
	brald	r15,r29
	
	addk	r26,r19,r0
	bneid	r3,$L333
	xor	r4,r23,r22
$L317:
	addk	r3,r26,r0
$L334:
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
$L318:
	addk	r6,r23,r0
	addk	r5,r24,r0
	addik	r3,r23,1
	brlid	r15,__mulsi3
	
	swi	r3,r28,0
	beqid	r24,$L317
	addk	r26,r27,r3
	addk	r7,r24,r0
	addk	r6,r25,r0
	brlid	r15,memmove
	
	addk	r5,r26,r0
	brid	$L334
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
	beqid	r26,$L336
	swi	r27,r1,52
	addk	r23,r5,r0
	addk	r25,r8,r0
	addk	r24,r9,r0
	addk	r19,r6,r0
	brid	$L338
	addk	r22,r0,r0
$L347:
	beqid	r4,$L336
	addk	r19,r19,r25
$L338:
	addk	r6,r19,r0
	addk	r5,r23,r0
	addik	r22,r22,1
	brald	r15,r24
	
	addk	r27,r19,r0
	bneid	r3,$L347
	xor	r4,r26,r22
$L335:
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
$L336:
	brid	$L335
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
	bgeid	r18,$L375
	addik	r11,r0,4	# 0x4
	xori	r8,r3,32
	andi	r9,r8,0x00ff
	addik	r10,r9,-1
	bgeid	r10,$L379
	xori	r3,r6,43
$L375:
	lbui	r6,r5,1
	addik	r5,r5,1
	xori	r12,r6,32
	sext8	r6,r6
	andi	r3,r12,0x00ff
	addik	r4,r6,-9
	cmpu	r18,r4,r11
	bgeid	r18,$L375
	addik	r7,r3,-1
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
	bneid	r8,$L375
	xori	r3,r6,43
$L379:
	beqid	r3,$L355
	addk	r10,r3,r0
	xori	r3,r6,45
	bneid	r3,$L378
	addik	r12,r6,-48
	lbui	r10,r5,1
	addik	r4,r0,9	# 0x9
	sext8	r6,r10
	addik	r12,r6,-48
	cmpu	r18,r12,r4
	bltid	r18,$L349
	addik	r5,r5,1
	addik	r10,r0,1	# 0x1
$L358:
	addk	r3,r0,r0
	addik	r9,r0,9	# 0x9
$L361:
	lbui	r7,r5,1
	addk	r8,r3,r3
	addk	r11,r8,r8
	addk	r4,r11,r3
	sext8	r6,r7
	addk	r8,r4,r4
	sext8	r7,r12
	addik	r12,r6,-48
	addik	r5,r5,1
	cmpu	r18,r12,r9
	bgeid	r18,$L361
	rsubk	r3,r7,r8
	bnei	r10,$L349
	rsubk	r3,r8,r7
$L349:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L378:
	addik	r3,r0,9	# 0x9
	cmpu	r18,r12,r3
	bgeid	r18,$L358
	addk	r10,r0,r0
	rtsd	r15,8 
	
	addk	r3,r10,r0
$L355:
	lbui	r9,r5,1
	addik	r11,r0,9	# 0x9
	sext8	r12,r9
	addik	r12,r12,-48
	cmpu	r18,r12,r11
	bgeid	r18,$L358
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
	bgeid	r18,$L404
	addik	r11,r0,4	# 0x4
	xori	r8,r3,32
	andi	r9,r8,0x00ff
	addik	r10,r9,-1
	bgeid	r10,$L406
	xori	r3,r6,43
$L404:
	lbui	r6,r5,1
	addik	r5,r5,1
	xori	r12,r6,32
	sext8	r6,r6
	andi	r3,r12,0x00ff
	addik	r4,r6,-9
	cmpu	r18,r4,r11
	bgeid	r18,$L404
	addik	r7,r3,-1
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
	bneid	r8,$L404
	xori	r3,r6,43
$L406:
	beqid	r3,$L386
	addik	r10,r0,9	# 0x9
	xori	r3,r6,45
	bneid	r3,$L387
	addik	r11,r6,-48
	lbui	r12,r5,1
	addik	r4,r0,9	# 0x9
	addik	r5,r5,1
	sext8	r6,r12
	addik	r11,r6,-48
	cmpu	r18,r11,r4
	bltid	r18,$L380
	addik	r10,r0,1	# 0x1
$L388:
	addk	r3,r0,r0
	addik	r9,r0,9	# 0x9
$L391:
	lbui	r7,r5,1
	addk	r8,r3,r3
	addk	r12,r8,r8
	addk	r4,r12,r3
	sext8	r6,r7
	addk	r8,r4,r4
	sext8	r7,r11
	addik	r11,r6,-48
	addik	r5,r5,1
	cmpu	r18,r11,r9
	bgeid	r18,$L391
	rsubk	r3,r7,r8
	bnei	r10,$L380
	rsubk	r3,r8,r7
$L380:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L387:
	addik	r3,r0,9	# 0x9
	cmpu	r18,r11,r3
	bgeid	r18,$L388
	addk	r10,r0,r0
	rtsd	r15,8 
	
	addk	r3,r10,r0
$L386:
	lbui	r9,r5,1
	sext8	r11,r9
	addik	r11,r11,-48
	cmpu	r18,r11,r10
	bltid	r18,$L380
	addik	r5,r5,1
	brid	$L388
	addk	r10,r3,r0
	.end	atol
$Lfe47:
	.size	atol,$Lfe47-atol
	.align	2
	.globl	atoll
	.ent	atoll
	.type	atoll, @function
atoll:
	.frame	r1,12,r15		# vars= 0, regs= 2, args= 0
	.mask	0x00480000
	addik	r1,r1,-12
	swi	r19,r1,4
	swi	r22,r1,8
	lbui	r4,r5,0
	addik	r8,r0,4	# 0x4
	sext8	r19,r4
	addik	r9,r19,-9
	cmpu	r18,r9,r8
	bgeid	r18,$L433
	addik	r11,r0,4	# 0x4
	xori	r6,r4,32
	andi	r7,r6,0x00ff
	addik	r10,r7,-1
	bgeid	r10,$L438
	xori	r6,r19,43
$L433:
	lbui	r3,r5,1
	addik	r5,r5,1
	xori	r12,r3,32
	sext8	r19,r3
	andi	r22,r12,0x00ff
	addik	r8,r19,-9
	cmpu	r18,r8,r11
	bgeid	r18,$L433
	addik	r4,r22,-1
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
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	bneid	r9,$L433
	xori	r6,r19,43
$L438:
	beqid	r6,$L413
	xori	r3,r19,45
	bneid	r3,$L437
	addik	r3,r19,-48
	lbui	r12,r5,1
	addik	r22,r5,1
	addik	r19,r0,9	# 0x9
	sext8	r5,r12
	addik	r3,r5,-48
	cmpu	r18,r3,r19
	bltid	r18,$L422
	addik	r19,r0,1	# 0x1
$L416:
	addik	r10,r0,0x00000000
	addik	r11,r0,0x00000000 #li => la
	addik	r12,r0,9	# 0x9
$L419:
	addk	r4,r0,r11
	srl	r4,r11
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	addk	r9,r0,r10
	addk	r9,r10,r10
	addk	r9,r9,r9
	addk	r7,r0,r11
	addk	r7,r11,r11
	addk	r7,r7,r7
	or	r6,r4,r9
	add	r5,r7,r11
	addc	r4,r6,r10
	lbui	r7,r22,1
	addk	r10,r5,r5
	addk	r11,r0,r5
	srl	r11,r5
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
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	addk	r5,r10,r0
	addk	r6,r4,r4
	sext8	r9,r7
	or	r4,r11,r6
	sext8	r8,r3
	addik	r3,r9,-48
	addk	r7,r0,r8
	add	r6,r7,r7
	addc	r6,r0,r0
	beqi	r6,.+8
	addi	r6,r0,0xffffffff
	rsub	r11,r7,r5
	rsubc	r10,r6,r4
	cmpu	r18,r3,r12
	bgeid	r18,$L419
	addik	r22,r22,1
	bneid	r19,$L439
	addk	r3,r10,r0
	rsub	r11,r5,r7
	rsubc	r10,r4,r6
	addk	r3,r10,r0
$L439:
	addk	r4,r11,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	rtsd	r15,8 
	
	addik	r1,r1,12
$L437:
	addik	r8,r0,9	# 0x9
	addk	r22,r5,r0
	cmpu	r18,r3,r8
	bgeid	r18,$L416
	addk	r19,r0,r0
$L422:
	addik	r10,r0,0x00000000
	addik	r11,r0,0x00000000 #li => la
	addk	r3,r10,r0
	addk	r4,r11,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	rtsd	r15,8 
	
	addik	r1,r1,12
$L413:
	lbui	r7,r5,1
	addik	r10,r0,9	# 0x9
	addk	r19,r6,r0
	sext8	r11,r7
	addik	r3,r11,-48
	cmpu	r18,r3,r10
	bgeid	r18,$L416
	addik	r22,r5,1
	bri	$L422
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
	beqid	r7,$L441
	swi	r27,r1,52
	addk	r19,r7,r0
	addk	r26,r5,r0
	addk	r24,r6,r0
	addk	r25,r8,r0
	addk	r27,r9,r0
$L444:
	srl	r23,r19
$L455:
	addk	r6,r25,r0
	addk	r5,r23,r0
	addik	r19,r19,-1
	brlid	r15,__mulsi3
	
	rsubk	r19,r23,r19
	addk	r22,r24,r3
	addk	r5,r26,r0
	brald	r15,r27
	
	addk	r6,r22,r0
	blti	r3,$L445
	beqid	r3,$L454
	addk	r3,r22,r0
	bneid	r19,$L444
	addk	r24,r22,r25
$L441:
	addk	r22,r0,r0
$L440:
	addk	r3,r22,r0
$L454:
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
$L445:
	addk	r19,r23,r0
	bneid	r19,$L455
	srl	r23,r19
	brid	$L440
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
	addk	r25,r5,r0
	addk	r23,r6,r0
	addk	r24,r8,r0
	addk	r26,r9,r0
	beqid	r7,$L461
	addk	r27,r10,r0
$L469:
	sra	r28,r19
$L472:
	addk	r6,r24,r0
	addk	r5,r28,r0
	addik	r19,r19,-1
	brlid	r15,__mulsi3
	
	sra	r19,r19
	addk	r22,r23,r3
	addk	r7,r27,r0
	addk	r5,r25,r0
	brald	r15,r26
	
	addk	r6,r22,r0
	beqi	r3,$L456
	blei	r3,$L459
	bneid	r19,$L469
	addk	r23,r22,r24
$L461:
	addk	r22,r0,r0
$L456:
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
$L459:
	beqid	r28,$L461
	addk	r19,r28,r0
	brid	$L472
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
	addk	r4,r5,r0
	xor	r8,r5,r3
	xor	r9,r6,r5
	rsub	r7,r5,r9
	rsubc	r6,r4,r8
	addk	r3,r6,r0
	rtsd	r15,8 
	
	addk	r4,r7,r0
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
	addk	r4,r5,r0
	xor	r8,r5,r3
	xor	r9,r6,r5
	rsub	r7,r5,r9
	rsubc	r6,r4,r8
	addk	r3,r6,r0
	rtsd	r15,8 
	
	addk	r4,r7,r0
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
	lwi	r3,r5,0
	bneid	r3,$L492
	xor	r4,r6,r3
	bri	$L484
$L487:
	lwi	r3,r5,4
	beqid	r3,$L484
	addik	r5,r5,4
	xor	r4,r6,r3
$L492:
	bneid	r4,$L487
	addk	r3,r5,r0
$L484:
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
	bneid	r8,$L495
	addik	r6,r6,-4
$L494:
	beqi	r4,$L495
	lw	r4,r3,r5
	addik	r3,r3,4
	lw	r7,r3,r6
	xor	r9,r4,r7
	beqi	r9,$L494
$L495:
	cmp	r18,r7,r4
	bltid	r18,$L493
	addik	r3,r0,-1	# 0xffffffffffffffff
	cmp	r18,r4,r7
	bgeid	r18,$L503
	addik	r3,r0,1	# 0x1
$L493:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L503:
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
$L505:
	lw	r7,r4,r6
	sw	r7,r4,r3
	bneid	r7,$L505
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
	beqi	r3,$L507
	addk	r3,r5,r0
$L509:
	lwi	r4,r3,4
	bneid	r4,$L509
	addik	r3,r3,4
	rsubk	r5,r5,r3
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
$L507:
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
	beqid	r7,$L531
	addk	r3,r7,r0
$L529:
	lwi	r9,r5,0
	lwi	r4,r6,0
	addik	r7,r7,-1
	rsubk	r10,r9,r0
	xor	r3,r9,r4
	rsubk	r8,r3,r0
	or	r11,r8,r3
	bltid	r11,$L517
	or	r12,r10,r9
	addk	r9,r0,r12
	srl	r9,r12
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
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	beqi	r9,$L517
	addik	r5,r5,4
	bneid	r7,$L529
	addik	r6,r6,4
$L520:
	addk	r3,r7,r0
$L512:
$L531:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L517:
	lwi	r5,r5,0
	lwi	r6,r6,0
	cmp	r18,r6,r5
	blti	r18,$L530
	cmp	r18,r5,r6
	bltid	r18,$L520
	addik	r7,r0,1	# 0x1
	addk	r7,r0,r0
	brid	$L512
	addk	r3,r7,r0
$L530:
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
	beqi	r7,$L536
$L543:
	lwi	r4,r5,0
	xor	r3,r4,r6
	beqid	r3,$L542
	addik	r7,r7,-1
	bneid	r7,$L543
	addik	r5,r5,4
$L536:
	rtsd	r15,8 
	
	addk	r3,r7,r0
$L542:
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
	beqid	r7,$L562
	addk	r3,r7,r0
$L560:
	lwi	r4,r5,0
	lwi	r3,r6,0
	addik	r7,r7,-1
	xor	r8,r4,r3
	bneid	r8,$L559
	addik	r5,r5,4
	bneid	r7,$L560
	addik	r6,r6,4
$L551:
	addk	r3,r7,r0
$L544:
$L562:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L559:
	cmp	r18,r3,r4
	blti	r18,$L561
	cmp	r18,r4,r3
	bltid	r18,$L551
	addik	r7,r0,1	# 0x1
	addk	r7,r0,r0
	brid	$L544
	addk	r3,r7,r0
$L561:
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
	beqid	r7,$L564
	addk	r19,r5,r0
	addk	r3,r7,r0
	addk	r7,r0,r3
	addk	r7,r3,r3
	addk	r7,r7,r7
	brlid	r15,memcpy
	nop		# Unfilled delay slot

$L564:
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
	beqid	r4,$L577
	addk	r3,r5,r0
	addk	r5,r7,r7
	rsubk	r8,r6,r3
	addk	r9,r5,r5
	cmpu	r18,r9,r8
	bgeid	r18,$L584
	addik	r10,r7,-1
	beqid	r7,$L577
	addk	r4,r10,r10
	addk	r8,r4,r4
$L574:
	lw	r5,r8,r6
	sw	r5,r8,r3
	addik	r8,r8,-4
	xori	r9,r8,-4
	bnei	r9,$L574
$L577:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L584:
	beqid	r7,$L577
	addk	r12,r0,r0
$L572:
	lw	r7,r12,r6
	addik	r10,r10,-1
	xori	r11,r10,-1
	sw	r7,r12,r3
	bneid	r11,$L572
	addik	r12,r12,4
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
	beqid	r7,$L586
	addik	r4,r7,-1
	addk	r7,r5,r0
$L587:
	addik	r4,r4,-1
	swi	r6,r7,0
	xori	r8,r4,-1
	bneid	r8,$L587
	addik	r7,r7,4
$L586:
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
	bgeid	r18,$L593
	xor	r3,r5,r6
	beqi	r7,$L592
	addik	r4,r5,-1
	addik	r5,r6,-1
$L595:
	lbu	r6,r7,r4
	sb	r6,r7,r5
	addik	r7,r7,-1
	bnei	r7,$L595
$L592:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L593:
	beqi	r3,$L592
	beqid	r7,$L592
	addik	r8,r7,-1
	addik	r4,r0,6	# 0x6
	cmpu	r18,r8,r4
	bgeid	r18,$L604
	or	r9,r6,r5
	andi	r10,r9,3 #and1
	bneid	r10,$L604
	addik	r11,r5,1
	rsubk	r12,r11,r6
	addik	r3,r0,2	# 0x2
	cmpu	r18,r12,r3
	bgeid	r18,$L626
	addk	r11,r0,r0
	andi	r8,r7,-4 #and1
	addk	r9,r0,r0
$L598:
	lw	r4,r9,r5
	sw	r4,r9,r6
	addik	r9,r9,4
	xor	r10,r9,r8
	bneid	r10,$L598
	xor	r11,r7,r8
	addk	r12,r6,r8
	addk	r4,r5,r8
	beqid	r11,$L592
	rsubk	r7,r8,r7
	lbu	r5,r8,r5
	sb	r5,r8,r6
	xori	r6,r7,1
	beqid	r6,$L592
	xori	r8,r7,2
	lbui	r3,r4,1
	beqid	r8,$L592
	sbi	r3,r12,1
	lbui	r9,r4,2
	rtsd	r15,8 
	
	sbi	r9,r12,2
$L604:
	addk	r11,r0,r0
$L626:
	lbu	r10,r11,r5
	sb	r10,r11,r6
	addik	r11,r11,1
	xor	r12,r7,r11
	bnei	r12,$L626
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
	beqid	r3,$L628
	xori	r8,r7,-1
	andi	r18,r7,31
	addk	r11,r0,r6
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r11,r11,r11
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	addk	r12,r0,r0
	beqid	r3,$L630
	andi	r9,r7,63 #and1
$L632:
	addk	r6,r0,r0
	andi	r18,r9,31
	addk	r10,r0,r5
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	or	r3,r6,r11
	rtsd	r15,8 
	
	or	r4,r10,r12
$L628:
	andi	r18,r7,31
	addk	r10,r0,r5
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	srl	r4,r6
	andi	r18,r7,31
	addk	r12,r0,r6
	beqid	r18,.+20
	addk	r12,r12,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r12,r12,r12
	rsubk	r7,r7,r0
	andi	r18,r8,31
	addk	r9,r0,r4
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r3,r7,32 #and1
	or	r11,r9,r10
	bneid	r3,$L632
	andi	r9,r7,63 #and1
$L630:
	addk	r10,r5,r5
	xori	r4,r9,-1
	andi	r18,r4,31
	addk	r8,r0,r10
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	andi	r18,r9,31
	addk	r7,r0,r6
	beqid	r18,.+20
	addk	r7,r7,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r7,r7
	or	r10,r8,r7
	andi	r18,r9,31
	addk	r6,r0,r5
	beqid	r18,.+20
	addk	r6,r6,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r6,r6
	or	r4,r10,r12
	rtsd	r15,8 
	
	or	r3,r6,r11
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
	beqid	r3,$L634
	xori	r8,r7,-1
	andi	r18,r7,31
	addk	r11,r0,r5
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r11,r11
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	addk	r12,r0,r0
	beqid	r3,$L636
	andi	r9,r7,63 #and1
$L638:
	addk	r5,r0,r0
	andi	r18,r9,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	or	r4,r5,r11
	rtsd	r15,8 
	
	or	r3,r3,r12
$L634:
	andi	r18,r7,31
	addk	r10,r0,r6
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	andi	r18,r7,31
	addk	r12,r0,r5
	beqid	r18,.+20
	addk	r12,r12,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r12,r12
	rsubk	r7,r7,r0
	addk	r9,r5,r5
	andi	r3,r7,32 #and1
	andi	r18,r8,31
	addk	r4,r0,r9
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	andi	r9,r7,63 #and1
	bneid	r3,$L638
	or	r11,r4,r10
$L636:
	srl	r4,r6
	xori	r10,r9,-1
	andi	r18,r10,31
	addk	r8,r0,r4
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	andi	r18,r9,31
	addk	r7,r0,r5
	beqid	r18,.+20
	addk	r7,r7,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r7,r7,r7
	or	r3,r8,r7
	andi	r18,r9,31
	addk	r5,r0,r6
	beqid	r18,.+20
	addk	r5,r5,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r5,r5,r5
	or	r3,r3,r12
	rtsd	r15,8 
	
	or	r4,r5,r11
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
	andi	r7,r4,15 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	or	r5,r3,r8
	andi	r3,r5,0xffff
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
	andi	r7,r4,15 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	or	r5,r3,r8
	andi	r3,r5,0xffff
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
	andi	r7,r4,7 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	andi	r18,r7,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	or	r5,r3,r8
	rtsd	r15,8 
	
	andi	r3,r5,0x00ff
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
	andi	r7,r4,7 #and1
	andi	r18,r6,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r18,r7,31
	addk	r8,r0,r5
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r8,r8,r8
	or	r5,r3,r8
	rtsd	r15,8 
	
	andi	r3,r5,0x00ff
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
	addk	r4,r3,r3
	addk	r6,r4,r4
	addk	r7,r6,r6
	addk	r8,r7,r7
	addk	r9,r8,r8
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r0,r5
	srl	r12,r5
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	or	r5,r12,r11
	andi	r3,r5,0xffff
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
	addk	r4,r3,r3
	addk	r6,r4,r4
	addk	r7,r6,r6
	addk	r8,r7,r7
	addk	r9,r8,r8
	addk	r10,r9,r9
	src	r12,r5
	src	r12,r12
	src	r12,r12
	src	r12,r12
	src	r12,r12
	src	r12,r12
	src	r12,r12
	src	r12,r12
	src	r12,r12
	andi	r12,r12,-16777216
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
	addk	r11,r10,r10
	or	r4,r12,r3
	addk	r6,r0,r5
	srl	r6,r5
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	andi	r5,r6,65280 #and2
	or	r7,r4,r5
	andi	r8,r11,16711680 #and2
	rtsd	r15,8 
	
	or	r3,r7,r8
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
	andi	r9,r3,65280 #and2
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
	addk	r8,r0,r5
	addk	r8,r5,r5
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	addk	r8,r8,r8
	or	r10,r4,r9
	andi	r11,r8,16711680 #and2
	addk	r12,r0,r6
	srl	r12,r6
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
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
	andi	r3,r12,65280 #and2
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
	or	r7,r7,r9
	or	r4,r10,r11
	or	r8,r7,r3
	addk	r10,r0,r6
	addk	r10,r6,r6
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	addk	r10,r10,r10
	andi	r11,r10,16711680 #and2
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
	or	r3,r8,r11
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
	brid	$L653
	addk	r3,r0,r0
$L656:
	beqi	r6,$L655
$L653:
	andi	r18,r3,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	addik	r3,r3,1
	andi	r7,r4,1 #and1
	beqid	r7,$L656
	xori	r6,r3,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L655:
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
	beqi	r5,$L660
	andi	r3,r5,1 #and1
	bnei	r3,$L657
	addik	r3,r0,1	# 0x1
$L659:
	sra	r5,r5
	andi	r4,r5,1 #and1
	beqid	r4,$L659
	addik	r3,r3,1
$L657:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L660:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lwi	r4,r0,$LC0
	fcmp.lt	r6,r4,r5
	bneid	r6,$L663
	addik	r3,r0,1	# 0x1
	lwi	r3,r0,$LC1
	fcmp.gt	r3,r3,r5
$L663:
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
	.frame	r1,40,r15		# vars= 0, regs= 3, args= 24
	.mask	0x00c88000
	lwi	r8,r0,$LC2
	lwi	r9,r0,$LC2+4
	addik	r1,r1,-40
	swi	r22,r1,32
	addk	r7,r8,r0
	addk	r8,r9,r0
	swi	r23,r1,36
	addk	r22,r5,r0
	addk	r23,r6,r0
	swi	r15,r1,0
	brlid	r15,__ltdf2
	
	swi	r19,r1,28
	addk	r4,r3,r0
	bltid	r4,$L666
	addik	r3,r0,1	# 0x1
	lwi	r8,r0,$LC3
	lwi	r9,r0,$LC3+4
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	brlid	r15,__gtdf2
	
	addk	r19,r3,r0
	blei	r3,$L671
$L668:
	addk	r3,r19,r0
$L666:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
$L671:
	brid	$L668
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
	lwi	r8,r0,$LC4
	lwi	r9,r0,$LC4+4
	addik	r1,r1,-40
	swi	r22,r1,32
	addk	r7,r8,r0
	addk	r8,r9,r0
	swi	r23,r1,36
	addk	r22,r5,r0
	addk	r23,r6,r0
	swi	r15,r1,0
	brlid	r15,__ltdf2
	
	swi	r19,r1,28
	addk	r4,r3,r0
	bltid	r4,$L672
	addik	r3,r0,1	# 0x1
	lwi	r8,r0,$LC5
	lwi	r9,r0,$LC5+4
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r8,r0
	addk	r8,r9,r0
	brlid	r15,__gtdf2
	
	addk	r19,r3,r0
	blei	r3,$L677
$L674:
	addk	r3,r19,r0
$L672:
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	rtsd	r15,8 
	
	addik	r1,r1,40
$L677:
	brid	$L674
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

	bnei	r3,$L681
	fadd	r3,r22,r22
	fcmp.eq	r4,r22,r3
	bnei	r4,$L681
	addik	r7,r0,0x40000000
	bgeid	r19,$L694
	andi	r5,r19,1 #and1
	addik	r7,r0,0x3f000000
$L694:
	beqi	r5,$L683
$L684:
	fmul	r22,r22,r7
$L683:
	addk	r6,r0,r19
	srl	r6,r19
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
	srl	r6,r6
	srl	r6,r6
	addk	r19,r6,r19
	sra	r19,r19
	beqi	r19,$L681
$L685:
	addk	r8,r0,r19
	srl	r8,r19
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	andi	r9,r19,1 #and1
	fmul	r7,r7,r7
	bneid	r9,$L684
	addk	r10,r8,r19
	brid	$L685
	sra	r19,r10
$L681:
	addk	r3,r22,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	rtsd	r15,8 
	
	addik	r1,r1,36
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
	bneid	r3,$L696
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r24,r0
	brlid	r15,__adddf3
	
	addk	r6,r25,r0
	addk	r6,r4,r0
	addk	r5,r3,r0
	addk	r7,r24,r0
	brlid	r15,__nedf2
	
	addk	r8,r25,r0
	beqid	r3,$L713
	addk	r3,r24,r0
	blti	r19,$L711
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	andi	r3,r19,1 #and1
$L712:
	beqi	r3,$L699
$L700:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L699:
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
	addk	r7,r4,r19
	sra	r19,r7
	beqid	r19,$L713
	addk	r3,r24,r0
$L701:
	addk	r8,r23,r0
	addk	r7,r22,r0
	addk	r5,r22,r0
	brlid	r15,__muldf3
	
	addk	r6,r23,r0
	andi	r8,r19,1 #and1
	addk	r9,r0,r19
	srl	r9,r19
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
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	addk	r22,r3,r0
	addk	r23,r4,r0
	bneid	r8,$L700
	addk	r10,r9,r19
	brid	$L701
	sra	r19,r10
$L696:
	addk	r3,r24,r0
$L713:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L711:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L712
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
	bneid	r3,$L715
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
	beqid	r3,$L732
	addk	r3,r24,r0
	blti	r19,$L730
	addik	r22,r0,0x40000000 
	addik	r23,r0,0x00000000 #Xfer Lo
	andi	r3,r19,1 #and1
$L731:
	beqi	r3,$L718
$L719:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L718:
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
	addk	r5,r4,r19
	sra	r19,r5
	beqid	r19,$L732
	addk	r3,r24,r0
$L720:
	addk	r6,r23,r0
	addk	r7,r22,r0
	addk	r8,r23,r0
	brlid	r15,__muldf3
	
	addk	r5,r22,r0
	andi	r6,r19,1 #and1
	addk	r9,r0,r19
	srl	r9,r19
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
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	addk	r22,r3,r0
	addk	r23,r4,r0
	bneid	r6,$L719
	addk	r10,r9,r19
	brid	$L720
	sra	r19,r10
$L715:
	addk	r3,r24,r0
$L732:
	addk	r4,r25,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L730:
	addik	r22,r0,0x3fe00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	brid	$L731
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
	beqid	r7,$L734
	addk	r3,r5,r0
	addik	r5,r7,-1
	addik	r4,r0,3	# 0x3
	cmpu	r18,r5,r4
	bgeid	r18,$L741
	or	r8,r3,r6
	andi	r4,r8,3 #and1
	bneid	r4,$L741
	andi	r9,r7,-4 #and1
$L736:
	lw	r10,r4,r3
	lw	r11,r4,r6
	xor	r12,r11,r10
	sw	r12,r4,r3
	addik	r4,r4,4
	xor	r5,r4,r9
	bneid	r5,$L736
	xor	r11,r7,r9
	addk	r8,r3,r9
	addk	r10,r6,r9
	beqid	r11,$L734
	rsubk	r7,r9,r7
	lbu	r12,r9,r3
	lbu	r6,r9,r6
	xori	r4,r7,1
	xor	r5,r12,r6
	beqid	r4,$L734
	sb	r5,r9,r3
	lbui	r9,r8,1
	lbui	r11,r10,1
	xori	r7,r7,2
	xor	r12,r11,r9
	beqid	r7,$L734
	sbi	r12,r8,1
	lbui	r6,r8,2
	lbui	r10,r10,2
	xor	r4,r10,r6
	sbi	r4,r8,2
$L734:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L741:
	addk	r11,r0,r0
$L753:
	lbu	r8,r11,r3
	lbu	r5,r11,r6
	xor	r9,r5,r8
	sb	r9,r11,r3
	addik	r11,r11,1
	xor	r12,r7,r11
	bnei	r12,$L753
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
	beqid	r4,$L761
	addk	r3,r5,r0
	addk	r10,r5,r0
$L756:
	lbui	r8,r10,1
	bneid	r8,$L756
	addik	r10,r10,1
$L769:
	beqi	r7,$L758
$L770:
	lbui	r5,r6,0
	addik	r7,r7,-1
	addik	r6,r6,1
	sext8	r9,r5
	beqid	r9,$L760
	sbi	r5,r10,0
	bneid	r7,$L770
	addik	r10,r10,1
$L758:
	sbi	r0,r10,0
$L760:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L761:
	brid	$L769
	addk	r10,r5,r0
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
	beqid	r6,$L771
	addk	r3,r0,r0
$L772:
	lbu	r4,r3,r5
	bnei	r4,$L780
$L771:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L780:
	addik	r3,r3,1
	xor	r7,r6,r3
	bnei	r7,$L772
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
	sext8	r11,r9
	beqid	r11,$L786
	addk	r3,r5,r0
$L782:
	brid	$L785
	addk	r7,r6,r0
$L784:
	beqi	r8,$L783
$L785:
	lbui	r4,r7,0
	addik	r7,r7,1
	sext8	r5,r4
	bneid	r5,$L784
	xor	r8,r5,r11
	lbui	r10,r3,1
	sext8	r11,r10
	bneid	r11,$L782
	addik	r3,r3,1
$L786:
	addk	r3,r11,r0
$L783:
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
	addk	r11,r0,r0
$L793:
	lbui	r4,r5,0
	sext8	r9,r4
	xor	r8,r9,r6
	rsubk	r7,r8,r0
	or	r10,r7,r8
	bltid	r10,$L792
	addk	r3,r11,r0
	addk	r3,r5,r0
$L792:
	addk	r11,r3,r0
	bneid	r9,$L793
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
	beqid	r10,$L808
	addk	r3,r6,r0
$L798:
	lbui	r4,r3,1
	bneid	r4,$L798
	addik	r3,r3,1
	rsubk	r7,r6,r3
	beqid	r7,$L808
	addik	r11,r6,-1
	brid	$L817
	addk	r11,r11,r7
$L818:
	beqid	r3,$L796
	addik	r5,r5,1
$L817:
	lbui	r8,r5,0
	sext8	r3,r8
	xor	r9,r3,r10
	bneid	r9,$L818
	addk	r9,r6,r0
	addk	r12,r5,r0
	brid	$L800
	andi	r7,r8,0x00ff
$L819:
	xor	r4,r8,r7
	rsubk	r3,r8,r0
	addik	r8,r4,-1
	and	r4,r8,r3
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
	beqi	r3,$L801
	lbui	r7,r12,0
	beqid	r7,$L801
	addik	r9,r9,1
$L800:
	xor	r3,r9,r11
	rsubk	r4,r3,r0
	or	r3,r4,r3
	lbui	r8,r9,0
	bltid	r3,$L819
	addik	r12,r12,1
$L801:
	lbui	r12,r9,0
	xor	r8,r12,r7
	beqid	r8,$L820
	addk	r3,r5,r0
	brid	$L817
	addik	r5,r5,1
$L808:
	addk	r3,r5,r0
$L796:
$L820:
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
	bltid	r3,$L832
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L825
	addk	r5,r24,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	blti	r3,$L824
$L825:
	addk	r3,r22,r0
$L833:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L832:
	addk	r5,r24,r0
	brlid	r15,__gtdf2
	
	addk	r6,r25,r0
	blei	r3,$L825
$L824:
	addik	r22,r22,-2147483648
	brid	$L833
	addk	r3,r22,r0
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
	beqid	r8,$L857
	addk	r3,r5,r0
	cmpu	r18,r8,r6
	blti	r18,$L843
	rsubk	r6,r8,r6
	addk	r10,r5,r6
	cmpu	r18,r5,r10
	blti	r18,$L843
	lbui	r12,r7,0
	addik	r1,r1,-8
	swi	r19,r1,4
	sext8	r12,r12
	brid	$L840
	xori	r19,r8,1
$L844:
	addk	r3,r11,r0
$L836:
	cmpu	r18,r3,r10
	blti	r18,$L845
$L840:
	lbui	r4,r3,0
	sext8	r5,r4
	xor	r9,r5,r12
	bneid	r9,$L844
	addik	r11,r3,1
	beqi	r19,$L834
$L839:
	brid	$L837
	addik	r4,r0,1	# 0x1
$L838:
	beqi	r9,$L834
$L837:
	lbu	r5,r4,r3
	lbu	r6,r4,r7
	addik	r4,r4,1
	xor	r5,r5,r6
	beqid	r5,$L838
	xor	r9,r4,r8
	cmpu	r18,r11,r10
	blti	r18,$L845
	lbui	r6,r11,0
	sext8	r4,r6
	xor	r9,r12,r4
	bneid	r9,$L836
	addik	r3,r11,1
	addk	r5,r11,r0
	addk	r11,r3,r0
	brid	$L839
	addk	r3,r5,r0
$L845:
	addk	r3,r0,r0
$L834:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L843:
	rtsd	r15, 8
	
	addk	r3,r0,r0
$L857:
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
	beqid	r7,$L859
	addk	r22,r5,r0
	brlid	r15,memmove
	nop		# Unfilled delay slot

$L859:
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
	bltid	r3,$L888
	addk	r5,r22,r0
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r6,r23,r0
	brlid	r15,__gedf2
	
	addk	r29,r0,r0
	bltid	r3,$L889
	addk	r5,r22,r0
$L867:
	addik	r26,r0,0x3fe00000 
	addik	r27,r0,0x00000000 #Xfer Lo
	addik	r24,r0,0x3ff00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addk	r19,r0,r0
$L873:
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
	bgeid	r3,$L873
	addk	r4,r22,r0
	swi	r19,r28,0
	beqid	r29,$L864
	addk	r5,r23,r0
$L891:
	addik	r4,r22,-2147483648
$L864:
	addk	r3,r4,r0
$L892:
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
$L889:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bgeid	r3,$L893
	addk	r4,r22,r0
	addk	r5,r22,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__nedf2
	
	addk	r6,r23,r0
	bneid	r3,$L879
	addk	r26,r22,r0
	addk	r4,r22,r0
$L893:
	addk	r5,r23,r0
	brid	$L864
	swi	r0,r28,0
$L888:
	addik	r7,r0,0xbff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r6,r23,r0
	addik	r26,r22,-2147483648
	brlid	r15,__ledf2
	
	addk	r27,r23,r0
	bgtid	r3,$L890
	addik	r29,r0,1	# 0x1
	brid	$L867
	addk	r22,r26,r0
$L890:
	addik	r7,r0,0xbfe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L893
	addk	r4,r22,r0
	addik	r29,r0,1	# 0x1
$L868:
	addik	r24,r0,0x3fe00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addk	r22,r26,r0
	addk	r23,r27,r0
	addk	r19,r0,r0
	addk	r7,r22,r0
$L894:
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
	bltid	r3,$L894
	addk	r7,r22,r0
	swi	r19,r28,0
	addk	r4,r22,r0
	bneid	r29,$L891
	addk	r5,r23,r0
	brid	$L892
	addk	r3,r4,r0
$L879:
	brid	$L868
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
	beqid	r3,$L895
	swi	r27,r1,24
$L898:
	addk	r10,r0,r0
	andi	r11,r6,1 #and1
	srl	r6,r6
	rsub	r27,r11,r0
	rsubc	r26,r10,r0
	src	r4,r5
	src	r4,r4
	andi	r4,r4,-2147483648
	srl	r5,r5
	or	r6,r4,r6
	and	r22,r26,r7
	and	r23,r27,r8
	addk	r7,r7,r7
	or	r9,r5,r6
	addk	r10,r0,r8
	srl	r10,r8
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
	add	r25,r25,r23
	addc	r24,r24,r22
	or	r7,r10,r7
	bneid	r9,$L898
	addk	r8,r8,r8
$L895:
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
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	cmpu	r18,r5,r6
	bgeid	r18,$L940
	addik	r4,r0,1	# 0x1
$L903:
	bltid	r6,$L950
	addk	r3,r0,r0
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L905
	or	r9,r3,r4
	blti	r9,$L903
$L905:
	beqi	r4,$L923
	addk	r3,r0,r0
$L950:
	addik	r1,r1,-8
	addk	r12,r3,r0
	swi	r19,r1,4
	addk	r19,r3,r0
	addik	r11,r0,1	# 0x1
$L916:
	rsubk	r9,r6,r5
	cmpu	r18,r6,r5
	bgeid	r18,$L910
	andi	r8,r11,0x00ff
	andi	r8,r19,0x00ff
$L910:
	cmpu	r18,r6,r5
	bgeid	r18,$L951
	addk	r10,r12,r0
	addk	r9,r5,r0
$L951:
	addk	r5,r9,r0
	beqid	r8,$L915
	srl	r6,r6
	addk	r10,r4,r0
$L915:
	srl	r4,r4
	bneid	r4,$L916
	or	r3,r3,r10
	beqid	r7,$L952
	lwi	r19,r1,4
	addk	r3,r5,r0
$L952:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L923:
	bneid	r7,$L946
	addk	r3,r4,r0
$L953:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L940:
	cmpu	r18,r6,r5
	bltid	r18,$L947
	rsubk	r8,r6,r5
$L918:
	cmpu	r18,r6,r5
	bltid	r18,$L948
	andi	r3,r4,0x00ff
	addk	r5,r8,r0
$L949:
	beqi	r7,$L953
$L946:
	rtsd	r15, 8
	
	addk	r3,r5,r0
$L948:
	addk	r8,r5,r0
	brid	$L949
	addk	r5,r8,r0
$L947:
	brid	$L918
	addk	r4,r0,r0
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
	beqi	r4,$L956
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
$L956:
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
	beqid	r5,$L970
	xor	r6,r6,r3
$L965:
	addik	r1,r1,-28
	swi	r15,r1,0
	brlid	r15,__clzdi2
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r3,r3,-1
	rtsd	r15,8 
	
	addik	r1,r1,28
$L970:
	bneid	r6,$L965
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
	beqi	r5,$L974
	addk	r3,r0,r0
$L973:
	andi	r4,r5,1 #and1
	rsubk	r7,r4,r0
	and	r8,r7,r6
	srl	r5,r5
	addk	r3,r3,r8
	bneid	r5,$L973
	addk	r6,r6,r6
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L974:
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
	.frame	r1,16,r15		# vars= 0, regs= 3, args= 0
	.mask	0x00c80000
	addk	r3,r0,r7
	srl	r3,r7
	srl	r3,r3
	srl	r3,r3
	cmpu	r18,r6,r5
	bltid	r18,$L977
	andi	r10,r7,-8 #and1
	addk	r4,r6,r7
	cmpu	r18,r5,r4
	bgei	r18,$L1014
$L977:
	beqid	r3,$L980
	addk	r4,r6,r0
	addik	r1,r1,-16
	swi	r19,r1,4
	addk	r19,r3,r3
	swi	r22,r1,8
	addk	r22,r19,r19
	addk	r8,r5,r0
	swi	r23,r1,12
	addk	r23,r22,r22
	addk	r9,r23,r6
$L981:
	lwi	r22,r4,0
	lwi	r23,r4,4
	addik	r4,r4,8
	xor	r3,r4,r9
	swi	r22,r8,0
	swi	r23,r8,4
	bneid	r3,$L981
	addik	r8,r8,8
	cmpu	r18,r7,r10
	bgeid	r18,$L976
	rsubk	r12,r10,r7
	addik	r11,r12,-1
	addik	r19,r0,6	# 0x6
	cmpu	r18,r11,r19
	bgeid	r18,$L1015
	addk	r23,r5,r10
	addik	r4,r10,1
	addk	r22,r6,r4
	rsubk	r8,r22,r23
	addik	r11,r0,2	# 0x2
	cmpu	r18,r8,r11
	bgeid	r18,$L1006
	addk	r9,r6,r10
	or	r19,r9,r23
	andi	r22,r19,3 #and1
	bneid	r22,$L1006
	andi	r8,r12,-4 #and1
$L985:
	lw	r4,r3,r9
	sw	r4,r3,r23
	addik	r3,r3,4
	xor	r11,r3,r8
	bnei	r11,$L985
	xor	r12,r12,r8
	beqid	r12,$L976
	addk	r10,r10,r8
	lbu	r23,r10,r6
	addik	r9,r10,1
	cmpu	r18,r7,r9
	bgeid	r18,$L976
	sb	r23,r10,r5
	lbu	r19,r9,r6
	addik	r22,r10,2
	cmpu	r18,r7,r22
	bgeid	r18,$L976
	sb	r19,r9,r5
	lbu	r6,r22,r6
	sb	r6,r22,r5
$L976:
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L1016:
	addik	r4,r4,1
$L1006:
	lbu	r8,r10,r6
	xor	r3,r7,r4
	sb	r8,r10,r5
	bneid	r3,$L1016
	addk	r10,r4,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L1014:
	beqid	r7,$L1019
	addik	r8,r7,-1
$L978:
	lbu	r7,r8,r6
	sb	r7,r8,r5
	addik	r8,r8,-1
	xori	r9,r8,-1
	bnei	r9,$L978
$L1019:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L980:
	bneid	r7,$L1009
	addik	r3,r10,1
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1017:
	addik	r3,r3,1
$L1009:
	lbu	r11,r10,r6
	xor	r12,r7,r3
	sb	r11,r10,r5
	bneid	r12,$L1017
	addk	r10,r3,r0
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1015:
	brid	$L1006
	addik	r4,r10,1
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
	bltid	r18,$L1021
	srl	r8,r7
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	bgei	r18,$L1048
$L1021:
	beqid	r8,$L1024
	addik	r11,r0,8	# 0x8
	addik	r10,r8,-1
	cmpu	r18,r10,r11
	bgeid	r18,$L1025
	or	r12,r6,r5
	andi	r3,r12,3 #and1
	bneid	r3,$L1025
	addik	r4,r6,2
	xor	r9,r5,r4
	rsubk	r10,r9,r0
	or	r11,r10,r9
	bgeid	r11,$L1025
	addk	r3,r0,r0
	addk	r12,r0,r7
	srl	r12,r7
	srl	r12,r12
	addk	r9,r12,r12
	addk	r10,r9,r9
$L1026:
	lw	r4,r3,r6
	sw	r4,r3,r5
	addik	r3,r3,4
	xor	r11,r3,r10
	bnei	r11,$L1026
	xor	r8,r8,r9
	beqid	r8,$L1024
	addk	r12,r9,r9
	lhu	r9,r12,r6
	sh	r9,r12,r5
$L1024:
	andi	r8,r7,1 #and1
	beqid	r8,$L1020
	addik	r7,r7,-1
	lbu	r6,r7,r6
$L1051:
	sb	r6,r7,r5
$L1020:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1048:
	beqid	r7,$L1020
	addik	r9,r7,-1
$L1022:
	lbu	r4,r9,r6
	sb	r4,r9,r5
	addik	r9,r9,-1
	xori	r7,r9,-1
	bnei	r7,$L1022
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1025:
	addk	r10,r8,r8
	addk	r3,r0,r0
$L1028:
	lhu	r4,r3,r6
	sh	r4,r3,r5
	addik	r3,r3,2
	xor	r11,r10,r3
	bneid	r11,$L1028
	andi	r8,r7,1 #and1
	beqid	r8,$L1020
	addik	r7,r7,-1
	brid	$L1051
	lbu	r6,r7,r6
	.end	__cmovh
$Lfe107:
	.size	__cmovh,$Lfe107-__cmovh
	.align	2
	.globl	__cmovw
	.ent	__cmovw
	.type	__cmovw, @function
__cmovw:
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addk	r8,r0,r7
	srl	r8,r7
	srl	r8,r8
	cmpu	r18,r6,r5
	bltid	r18,$L1053
	andi	r9,r7,-4 #and1
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	bgei	r18,$L1089
$L1053:
	beqid	r8,$L1056
	addk	r10,r8,r8
	addk	r11,r10,r10
	addk	r8,r0,r0
$L1057:
	lw	r12,r8,r6
	sw	r12,r8,r5
	addik	r8,r8,4
	xor	r3,r8,r11
	bnei	r3,$L1057
	cmpu	r18,r7,r9
	bgei	r18,$L1093
	rsubk	r12,r9,r7
	addik	r10,r12,-1
	addik	r4,r0,6	# 0x6
	cmpu	r18,r10,r4
	bgeid	r18,$L1090
	addik	r4,r9,1
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r10,r5,r9
	addk	r19,r6,r4
	rsubk	r8,r19,r10
	addik	r19,r0,2	# 0x2
	cmpu	r18,r8,r19
	bgeid	r18,$L1082
	addk	r11,r6,r9
	or	r8,r11,r10
	andi	r19,r8,3 #and1
	bneid	r19,$L1082
	andi	r8,r12,-4 #and1
$L1061:
	lw	r4,r3,r11
	sw	r4,r3,r10
	addik	r3,r3,4
	xor	r19,r8,r3
	bnei	r19,$L1061
	xor	r12,r8,r12
	beqid	r12,$L1052
	addk	r9,r8,r9
	lbu	r10,r9,r6
	addik	r11,r9,1
	cmpu	r18,r7,r11
	bgeid	r18,$L1052
	sb	r10,r9,r5
	lbu	r8,r11,r6
	addik	r4,r9,2
	cmpu	r18,r7,r4
	bgeid	r18,$L1052
	sb	r8,r11,r5
	lbu	r6,r4,r6
	sb	r6,r4,r5
$L1052:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1091:
	addik	r4,r4,1
$L1082:
	lbu	r3,r9,r6
	xor	r19,r7,r4
	sb	r3,r9,r5
	bneid	r19,$L1091
	addk	r9,r4,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1089:
	beqid	r7,$L1094
	addik	r9,r7,-1
$L1054:
	lbu	r4,r9,r6
	sb	r4,r9,r5
	addik	r9,r9,-1
	xori	r7,r9,-1
	bnei	r7,$L1054
$L1094:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1056:
	beqid	r7,$L1094
	addik	r8,r9,1
$L1085:
	lbu	r3,r9,r6
	xor	r11,r7,r8
	sb	r3,r9,r5
	beqid	r11,$L1094
	addk	r9,r8,r0
	brid	$L1085
	addik	r8,r8,1
$L1090:
	brid	$L1085
	addik	r8,r9,1
$L1093:
	rtsd	r15, 8
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
	bnei	r3,$L1110
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
	bnei	r3,$L1107
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
	bnei	r4,$L1111
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	bnei	r6,$L1112
	addk	r7,r0,r5
	sra	r7,r5
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	sra	r7,r7
	bnei	r7,$L1113
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	bnei	r8,$L1114
	addk	r9,r0,r5
	sra	r9,r5
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	sra	r9,r9
	bnei	r9,$L1115
	addk	r10,r0,r5
	sra	r10,r5
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	bnei	r10,$L1116
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	bnei	r11,$L1117
	addk	r12,r0,r5
	sra	r12,r5
	sra	r12,r12
	sra	r12,r12
	sra	r12,r12
	sra	r12,r12
	sra	r12,r12
	bnei	r12,$L1118
	addk	r3,r0,r5
	sra	r3,r5
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	sra	r3,r3
	bnei	r3,$L1119
	addk	r4,r0,r5
	sra	r4,r5
	sra	r4,r4
	sra	r4,r4
	sra	r4,r4
	bnei	r4,$L1120
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	bnei	r6,$L1121
	addk	r7,r0,r5
	sra	r7,r5
	sra	r7,r7
	bneid	r7,$L1122
	sra	r8,r5
	bnei	r8,$L1123
	bneid	r5,$L1126
	addik	r3,r0,16	# 0x10
$L1107:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1110:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1121:
	rtsd	r15,8 
	
	addik	r3,r0,12	# 0xc
$L1126:
	rtsd	r15,8 
	
	addik	r3,r0,15	# 0xf
$L1111:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
$L1112:
	rtsd	r15,8 
	
	addik	r3,r0,3	# 0x3
$L1113:
	rtsd	r15,8 
	
	addik	r3,r0,4	# 0x4
$L1114:
	rtsd	r15,8 
	
	addik	r3,r0,5	# 0x5
$L1115:
	rtsd	r15,8 
	
	addik	r3,r0,6	# 0x6
$L1116:
	rtsd	r15,8 
	
	addik	r3,r0,7	# 0x7
$L1117:
	rtsd	r15,8 
	
	addik	r3,r0,8	# 0x8
$L1118:
	rtsd	r15,8 
	
	addik	r3,r0,9	# 0x9
$L1119:
	rtsd	r15,8 
	
	addik	r3,r0,10	# 0xa
$L1120:
	rtsd	r15,8 
	
	addik	r3,r0,11	# 0xb
$L1122:
	rtsd	r15,8 
	
	addik	r3,r0,13	# 0xd
$L1123:
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
	bneid	r3,$L1130
	andi	r4,r5,2 #and1
	bneid	r4,$L1131
	andi	r6,r5,4 #and1
	bneid	r6,$L1132
	andi	r7,r5,8 #and1
	bneid	r7,$L1133
	andi	r8,r5,16 #and1
	bneid	r8,$L1134
	andi	r9,r5,32 #and1
	bneid	r9,$L1135
	andi	r10,r5,64 #and1
	bneid	r10,$L1136
	andi	r11,r5,128 #and1
	bneid	r11,$L1137
	andi	r12,r5,256 #and1
	bnei	r12,$L1138
	andi	r3,r5,512 #and1
	bneid	r3,$L1139
	andi	r4,r5,1024 #and1
	bneid	r4,$L1140
	andi	r6,r5,2048 #and1
	bneid	r6,$L1141
	andi	r7,r5,4096 #and1
	bneid	r7,$L1142
	andi	r8,r5,8192 #and1
	bneid	r8,$L1143
	andi	r9,r5,16384 #and1
	bnei	r9,$L1144
	addk	r10,r0,r5
	sra	r10,r5
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	sra	r10,r10
	bneid	r10,$L1147
	addik	r3,r0,16	# 0x10
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1130:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1131:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1142:
	rtsd	r15,8 
	
	addik	r3,r0,12	# 0xc
$L1147:
	rtsd	r15,8 
	
	addik	r3,r0,15	# 0xf
$L1132:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
$L1133:
	rtsd	r15,8 
	
	addik	r3,r0,3	# 0x3
$L1134:
	rtsd	r15,8 
	
	addik	r3,r0,4	# 0x4
$L1135:
	rtsd	r15,8 
	
	addik	r3,r0,5	# 0x5
$L1136:
	rtsd	r15,8 
	
	addik	r3,r0,6	# 0x6
$L1137:
	rtsd	r15,8 
	
	addik	r3,r0,7	# 0x7
$L1138:
	rtsd	r15,8 
	
	addik	r3,r0,8	# 0x8
$L1139:
	rtsd	r15,8 
	
	addik	r3,r0,9	# 0x9
$L1140:
	rtsd	r15,8 
	
	addik	r3,r0,10	# 0xa
$L1141:
	rtsd	r15,8 
	
	addik	r3,r0,11	# 0xb
$L1143:
	rtsd	r15,8 
	
	addik	r3,r0,13	# 0xd
$L1144:
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
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r4,r0,0x47000000
	addik	r1,r1,-28
	fcmp.ge	r6,r4,r5
	bneid	r6,$L1155
	swi	r15,r1,0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
$L1155:
	brlid	r15,__fixsfsi
	
	frsub	r5,r4,r5
	lwi	r15,r1,0
	addik	r3,r3,32768
	rtsd	r15,8 
	
	addik	r1,r1,28
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
	andi	r6,r3,1 #and1
	andi	r4,r5,1 #and1
	addk	r7,r6,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
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
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
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
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	addk	r5,r10,r11
	rtsd	r15,8 
	
	andi	r3,r5,1 #and1
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
	andi	r6,r3,1 #and1
	andi	r4,r5,1 #and1
	addk	r7,r6,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	sra	r8,r8
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
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
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	andi	r12,r11,1 #and1
	addk	r3,r10,r12
	addk	r6,r0,r5
	sra	r6,r5
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	sra	r6,r6
	andi	r4,r6,1 #and1
	addk	r7,r3,r4
	addk	r8,r0,r5
	sra	r8,r5
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
	andi	r9,r8,1 #and1
	addk	r10,r7,r9
	addk	r11,r0,r5
	sra	r11,r5
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	sra	r11,r11
	rtsd	r15,8 
	
	addk	r3,r10,r11
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
	beqi	r5,$L1161
	addk	r3,r0,r0
$L1160:
	andi	r4,r5,1 #and1
	rsubk	r7,r4,r0
	and	r8,r7,r6
	srl	r5,r5
	addk	r3,r3,r8
	bneid	r5,$L1160
	addk	r6,r6,r6
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1161:
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
	beqi	r5,$L1166
	beqi	r6,$L1167
	addk	r3,r0,r0
$L1165:
	andi	r4,r6,1 #and1
	rsubk	r7,r4,r0
	and	r8,r7,r5
	srl	r6,r6
	addk	r3,r3,r8
	bneid	r6,$L1165
	addk	r5,r5,r5
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1166:
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L1167:
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
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	cmpu	r18,r5,r6
	bgeid	r18,$L1207
	addik	r4,r0,1	# 0x1
$L1170:
	bltid	r6,$L1217
	addk	r3,r0,r0
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L1172
	or	r9,r3,r4
	blti	r9,$L1170
$L1172:
	beqi	r4,$L1190
	addk	r3,r0,r0
$L1217:
	addik	r1,r1,-8
	addk	r12,r3,r0
	swi	r19,r1,4
	addk	r19,r3,r0
	addik	r11,r0,1	# 0x1
$L1183:
	rsubk	r9,r6,r5
	cmpu	r18,r6,r5
	bgeid	r18,$L1177
	andi	r8,r11,0x00ff
	andi	r8,r19,0x00ff
$L1177:
	cmpu	r18,r6,r5
	bgeid	r18,$L1218
	addk	r10,r12,r0
	addk	r9,r5,r0
$L1218:
	addk	r5,r9,r0
	beqid	r8,$L1182
	srl	r6,r6
	addk	r10,r4,r0
$L1182:
	srl	r4,r4
	bneid	r4,$L1183
	or	r3,r3,r10
	beqid	r7,$L1219
	lwi	r19,r1,4
	addk	r3,r5,r0
$L1219:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1190:
	bneid	r7,$L1213
	addk	r3,r4,r0
$L1220:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1207:
	cmpu	r18,r6,r5
	bltid	r18,$L1214
	rsubk	r8,r6,r5
$L1185:
	cmpu	r18,r6,r5
	bltid	r18,$L1215
	andi	r3,r4,0x00ff
	addk	r5,r8,r0
$L1216:
	beqi	r7,$L1220
$L1213:
	rtsd	r15, 8
	
	addk	r3,r5,r0
$L1215:
	addk	r8,r5,r0
	brid	$L1216
	addk	r5,r8,r0
$L1214:
	brid	$L1185
	addk	r4,r0,r0
	.end	__udivmodsi4
$Lfe122:
	.size	__udivmodsi4,$Lfe122-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.ent	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	fcmp.lt	r3,r6,r5
	bnei	r3,$L1223
	rtsd	r15,8 
	
	fcmp.gt	r3,r6,r5
$L1223:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
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
	bltid	r3,$L1227
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__gtdf2
	
	addik	r19,r0,1	# 0x1
	blei	r3,$L1229
$L1226:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L1229:
	brid	$L1226
	addk	r19,r0,r0
$L1227:
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
	blti	r6,$L1244
	beqid	r6,$L1239
	addk	r10,r0,r0
$L1236:
	addik	r8,r0,1	# 0x1
	addk	r3,r0,r0
$L1238:
	andi	r7,r6,1 #and1
	sra	r6,r6
	xori	r4,r8,32
	rsubk	r9,r6,r0
	rsubk	r11,r7,r0
	or	r12,r9,r6
	rsubk	r4,r4,r0
	and	r7,r11,r5
	and	r9,r4,r12
	addik	r8,r8,1
	addk	r3,r3,r7
	addk	r5,r5,r5
	addk	r11,r0,r9
	srl	r11,r9
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
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	bneid	r11,$L1238
	andi	r8,r8,0x00ff
	beqi	r10,$L1234
	rsubk	r3,r3,r0
$L1234:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1244:
	rsubk	r6,r6,r0
	brid	$L1236
	addik	r10,r0,1	# 0x1
$L1239:
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
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
	bltid	r5,$L1286
	swi	r19,r1,4
	addik	r3,r0,1	# 0x1
	addk	r19,r0,r0
$L1246:
	bgeid	r6,$L1289
	addk	r8,r5,r0
	addk	r19,r3,r0
	rsubk	r6,r6,r0
$L1289:
	addk	r7,r6,r0
	cmpu	r18,r5,r6
	bgeid	r18,$L1283
	addik	r4,r0,1	# 0x1
$L1248:
	addk	r4,r4,r4
	rsubk	r6,r4,r0
	addk	r7,r7,r7
	cmpu	r18,r5,r7
	bltid	r18,$L1287
	or	r9,r6,r4
	beqid	r4,$L1285
	addk	r3,r0,r0
$L1288:
	addk	r11,r3,r0
	addk	r12,r3,r0
	addik	r10,r0,1	# 0x1
$L1250:
	rsubk	r6,r7,r8
	cmpu	r18,r7,r8
	bgeid	r18,$L1255
	andi	r5,r10,0x00ff
	andi	r5,r12,0x00ff
$L1255:
	cmpu	r18,r7,r8
	bgeid	r18,$L1290
	addk	r9,r11,r0
	addk	r6,r8,r0
$L1290:
	addk	r8,r6,r0
	beqid	r5,$L1260
	srl	r7,r7
	addk	r9,r4,r0
$L1260:
	srl	r4,r4
	bneid	r4,$L1250
	or	r3,r3,r9
$L1251:
	beqid	r19,$L1291
	lwi	r19,r1,4
	rsubk	r3,r3,r0
$L1291:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1287:
	addk	r10,r0,r9
	srl	r10,r9
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
	bnei	r10,$L1248
	bneid	r4,$L1288
	addk	r3,r0,r0
$L1285:
	brid	$L1251
	addk	r3,r0,r0
$L1286:
	rsubk	r5,r5,r0
	addk	r3,r0,r0
	brid	$L1246
	addik	r19,r0,1	# 0x1
$L1283:
	cmpu	r18,r6,r5
	bgeid	r18,$L1251
	addk	r3,r4,r0
	brid	$L1251
	addk	r3,r0,r0
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
	bgeid	r5,$L1293
	addk	r9,r0,r0
	rsubk	r5,r5,r0
	addik	r9,r0,1	# 0x1
$L1293:
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
	rsubk	r11,r3,r6
	addik	r4,r0,1	# 0x1
	cmpu	r18,r5,r11
	bgeid	r18,$L1328
	addk	r3,r5,r0
$L1294:
	addk	r4,r4,r4
	rsubk	r7,r4,r0
	addk	r11,r11,r11
	cmpu	r18,r5,r11
	bltid	r18,$L1331
	or	r10,r7,r4
	beqi	r4,$L1330
$L1296:
	srl	r4,r4
	cmpu	r18,r11,r3
	bgeid	r18,$L1303
	rsubk	r5,r11,r3
	addk	r5,r3,r0
$L1303:
	addk	r3,r5,r0
	bneid	r4,$L1296
	srl	r11,r11
$L1297:
	beqi	r9,$L1292
	rsubk	r3,r3,r0
$L1292:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1331:
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	bnei	r8,$L1294
	bnei	r4,$L1296
$L1330:
	brid	$L1297
	addk	r3,r5,r0
$L1328:
	cmpu	r18,r11,r5
	bgeid	r18,$L1297
	rsubk	r3,r11,r5
	brid	$L1297
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
	bgeid	r18,$L1554
	addik	r9,r0,1	# 0x1
$L1333:
	addk	r11,r6,r6
	sext16	r3,r6
	andi	r4,r11,0xffff
	bltid	r3,$L1555
	addk	r12,r9,r9
	andi	r8,r12,0xffff
	cmpu	r18,r5,r4
	blti	r18,$L1556
	beqi	r8,$L1445
	cmpu	r18,r4,r5
	bltid	r18,$L1557
	rsubk	r3,r4,r5
	andi	r3,r3,0xffff
	cmpu	r18,r4,r5
	bltid	r18,$L1558
	addk	r10,r8,r0
$L1346:
	andi	r12,r9,32767 #and1
	andi	r11,r6,32767 #and1
	addk	r9,r8,r0
	addk	r6,r4,r0
	andi	r10,r10,0xffff
$L1443:
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1348
	addik	r8,r0,1	# 0x1
	addk	r8,r0,r0
$L1348:
	cmpu	r18,r11,r3
	bgei	r18,$L1351
	addk	r5,r3,r0
$L1351:
	andi	r3,r5,0xffff
	beqid	r8,$L1353
	addik	r11,r0,0	# 0
	addk	r11,r12,r0
$L1353:
	or	r12,r10,r11
	addk	r10,r0,r9
	srl	r10,r9
	srl	r10,r10
	andi	r5,r10,0xffff
	andi	r8,r12,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	beqid	r5,$L1341
	rsubk	r4,r11,r3
	andi	r10,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1354
	addik	r12,r0,1	# 0x1
	addk	r12,r0,r0
$L1354:
	cmpu	r18,r11,r3
	bgei	r18,$L1357
	addk	r10,r3,r0
$L1357:
	andi	r3,r10,0xffff
	beqid	r12,$L1359
	addik	r11,r0,0	# 0
	addk	r11,r5,r0
$L1359:
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	or	r8,r8,r11
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	beqid	r12,$L1341
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1360
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1360:
	cmpu	r18,r11,r3
	bgei	r18,$L1363
	addk	r5,r3,r0
$L1363:
	andi	r3,r5,0xffff
	beqid	r10,$L1365
	addik	r5,r0,0	# 0
	addk	r5,r12,r0
$L1365:
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	or	r8,r8,r5
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r5,$L1341
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1366
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1366:
	cmpu	r18,r11,r3
	bgei	r18,$L1369
	addk	r12,r3,r0
$L1369:
	andi	r3,r12,0xffff
	beqid	r10,$L1371
	addik	r11,r0,0	# 0
	addk	r11,r5,r0
$L1371:
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	or	r8,r8,r11
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r12,$L1341
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1372
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1372:
	cmpu	r18,r11,r3
	bgei	r18,$L1375
	addk	r5,r3,r0
$L1375:
	andi	r3,r5,0xffff
	beqid	r10,$L1377
	addik	r5,r0,0	# 0
	addk	r5,r12,r0
$L1377:
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	or	r8,r8,r5
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r5,$L1341
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1378
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1378:
	cmpu	r18,r11,r3
	bgei	r18,$L1381
	addk	r12,r3,r0
$L1381:
	andi	r3,r12,0xffff
	beqid	r10,$L1383
	addik	r11,r0,0	# 0
	addk	r11,r5,r0
$L1383:
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	or	r8,r8,r11
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r12,$L1341
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1559
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1560
$L1387:
	andi	r3,r5,0xffff
	bneid	r10,$L1561
	addik	r5,r0,0	# 0
$L1389:
	or	r8,r8,r5
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	beqid	r5,$L1341
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1562
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1563
$L1393:
	andi	r3,r12,0xffff
	bneid	r10,$L1564
	addik	r11,r0,0	# 0
$L1395:
	or	r8,r8,r11
	addk	r5,r0,r9
	srl	r5,r9
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
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
	beqid	r12,$L1341
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1565
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1566
$L1399:
	andi	r3,r5,0xffff
	bneid	r10,$L1567
	addik	r5,r0,0	# 0
$L1401:
	or	r8,r8,r5
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
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
	beqid	r5,$L1341
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1568
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1569
$L1405:
	andi	r3,r12,0xffff
	bneid	r10,$L1570
	addik	r11,r0,0	# 0
$L1407:
	or	r8,r8,r11
	addk	r5,r0,r9
	srl	r5,r9
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
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
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
	beqid	r12,$L1341
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1571
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1572
$L1411:
	andi	r3,r5,0xffff
	bneid	r10,$L1573
	addik	r5,r0,0	# 0
$L1413:
	or	r8,r8,r5
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
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
	beqid	r5,$L1341
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1574
	addik	r10,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1575
$L1417:
	andi	r3,r12,0xffff
	bneid	r10,$L1576
	addik	r11,r0,0	# 0
$L1419:
	or	r8,r8,r11
	addk	r5,r0,r9
	srl	r5,r9
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
	andi	r12,r5,0xffff
	andi	r8,r8,0xffff
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
	beqid	r12,$L1341
	rsubk	r4,r11,r3
	andi	r5,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1420
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1420:
	cmpu	r18,r11,r3
	bgei	r18,$L1423
	addk	r5,r3,r0
$L1423:
	andi	r3,r5,0xffff
	beqid	r10,$L1425
	addik	r5,r0,0	# 0
	addk	r5,r12,r0
$L1425:
	addk	r12,r0,r9
	srl	r12,r9
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	or	r8,r8,r5
	andi	r5,r12,0xffff
	andi	r8,r8,0xffff
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
	beqid	r5,$L1341
	rsubk	r4,r11,r3
	andi	r12,r4,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1426
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1426:
	cmpu	r18,r11,r3
	bgei	r18,$L1429
	addk	r12,r3,r0
$L1429:
	andi	r3,r12,0xffff
	beqid	r10,$L1431
	addik	r11,r0,0	# 0
	addk	r11,r5,r0
$L1431:
	addk	r5,r0,r9
	srl	r5,r9
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
	or	r8,r8,r11
	andi	r4,r5,0xffff
	andi	r8,r8,0xffff
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
	beqid	r4,$L1341
	rsubk	r6,r9,r3
	andi	r12,r6,0xffff
	cmpu	r18,r9,r3
	bgeid	r18,$L1432
	addik	r10,r0,1	# 0x1
	addk	r10,r0,r0
$L1432:
	cmpu	r18,r9,r3
	bgei	r18,$L1435
	addk	r12,r3,r0
$L1435:
	andi	r3,r12,0xffff
	or	r8,r10,r8
$L1341:
	bnei	r7,$L1446
	addk	r3,r8,r0
$L1446:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1556:
	addk	r9,r8,r0
	bneid	r8,$L1333
	addk	r6,r4,r0
$L1445:
	brid	$L1341
	addk	r3,r5,r0
$L1555:
	cmpu	r18,r6,r5
	bgeid	r18,$L1439
	rsubk	r8,r6,r5
	addk	r8,r5,r0
$L1439:
	andi	r10,r9,0xffff
	andi	r3,r8,0xffff
	cmpu	r18,r6,r5
	bgeid	r18,$L1585
	srl	r5,r9
	addk	r10,r0,r0
$L1585:
	andi	r12,r5,0xffff
	addk	r8,r10,r0
	bneid	r12,$L1443
	srl	r11,r6
	bri	$L1341
$L1561:
	brid	$L1389
	addk	r5,r12,r0
$L1560:
	addk	r5,r3,r0
$L1578:
	andi	r3,r5,0xffff
	beqid	r10,$L1389
	addik	r5,r0,0	# 0
	brid	$L1389
	addk	r5,r12,r0
$L1559:
	cmpu	r18,r11,r3
	bgeid	r18,$L1387
	addk	r10,r0,r0
	brid	$L1578
	addk	r5,r3,r0
$L1558:
	brid	$L1346
	addik	r10,r0,0	# 0
$L1557:
	addk	r3,r5,r0
	andi	r3,r3,0xffff
	cmpu	r18,r4,r5
	bgeid	r18,$L1346
	addk	r10,r8,r0
	brid	$L1346
	addik	r10,r0,0	# 0
$L1562:
	cmpu	r18,r11,r3
	bgeid	r18,$L1393
	addk	r10,r0,r0
	brid	$L1579
	addk	r12,r3,r0
$L1564:
	brid	$L1395
	addk	r11,r5,r0
$L1563:
	addk	r12,r3,r0
$L1579:
	andi	r3,r12,0xffff
	beqid	r10,$L1395
	addik	r11,r0,0	# 0
	brid	$L1395
	addk	r11,r5,r0
$L1567:
	brid	$L1401
	addk	r5,r12,r0
$L1566:
	addk	r5,r3,r0
$L1580:
	andi	r3,r5,0xffff
	beqid	r10,$L1401
	addik	r5,r0,0	# 0
	brid	$L1401
	addk	r5,r12,r0
$L1565:
	cmpu	r18,r11,r3
	bgeid	r18,$L1399
	addk	r10,r0,r0
	brid	$L1580
	addk	r5,r3,r0
$L1568:
	cmpu	r18,r11,r3
	bgeid	r18,$L1405
	addk	r10,r0,r0
	brid	$L1581
	addk	r12,r3,r0
$L1570:
	brid	$L1407
	addk	r11,r5,r0
$L1569:
	addk	r12,r3,r0
$L1581:
	andi	r3,r12,0xffff
	beqid	r10,$L1407
	addik	r11,r0,0	# 0
	brid	$L1407
	addk	r11,r5,r0
$L1572:
	addk	r5,r3,r0
$L1582:
	andi	r3,r5,0xffff
	beqid	r10,$L1413
	addik	r5,r0,0	# 0
	brid	$L1413
	addk	r5,r12,r0
$L1571:
	cmpu	r18,r11,r3
	bgeid	r18,$L1411
	addk	r10,r0,r0
	brid	$L1582
	addk	r5,r3,r0
$L1573:
	brid	$L1413
	addk	r5,r12,r0
$L1574:
	cmpu	r18,r11,r3
	bgeid	r18,$L1417
	addk	r10,r0,r0
	brid	$L1583
	addk	r12,r3,r0
$L1576:
	brid	$L1419
	addk	r11,r5,r0
$L1575:
	addk	r12,r3,r0
$L1583:
	andi	r3,r12,0xffff
	beqid	r10,$L1419
	addik	r11,r0,0	# 0
	brid	$L1419
	addk	r11,r5,r0
$L1554:
	xor	r8,r6,r5
	rsubk	r4,r6,r5
	addik	r10,r8,-1
	andi	r3,r5,0xffff
	andi	r9,r4,0xffff
	bltid	r10,$L1577
	xor	r5,r6,r5
	addik	r6,r5,-1
$L1584:
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	bri	$L1341
$L1577:
	andi	r3,r9,0xffff
	brid	$L1584
	addik	r6,r5,-1
	.end	__udivmodhi4
$Lfe130:
	.size	__udivmodhi4,$Lfe130-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.ent	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.frame	r1,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	cmpu	r18,r5,r6
	bgeid	r18,$L1624
	addik	r4,r0,1	# 0x1
$L1587:
	bltid	r6,$L1634
	addk	r3,r0,r0
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L1589
	or	r9,r3,r4
	blti	r9,$L1587
$L1589:
	beqi	r4,$L1607
	addk	r3,r0,r0
$L1634:
	addik	r1,r1,-8
	addk	r12,r3,r0
	swi	r19,r1,4
	addk	r19,r3,r0
	addik	r11,r0,1	# 0x1
$L1600:
	rsubk	r9,r6,r5
	cmpu	r18,r6,r5
	bgeid	r18,$L1594
	andi	r8,r11,0x00ff
	andi	r8,r19,0x00ff
$L1594:
	cmpu	r18,r6,r5
	bgeid	r18,$L1635
	addk	r10,r12,r0
	addk	r9,r5,r0
$L1635:
	addk	r5,r9,r0
	beqid	r8,$L1599
	srl	r6,r6
	addk	r10,r4,r0
$L1599:
	srl	r4,r4
	bneid	r4,$L1600
	or	r3,r3,r10
	beqid	r7,$L1636
	lwi	r19,r1,4
	addk	r3,r5,r0
$L1636:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1607:
	bneid	r7,$L1630
	addk	r3,r4,r0
$L1637:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1624:
	cmpu	r18,r6,r5
	bltid	r18,$L1631
	rsubk	r8,r6,r5
$L1602:
	cmpu	r18,r6,r5
	bltid	r18,$L1632
	andi	r3,r4,0x00ff
	addk	r5,r8,r0
$L1633:
	beqi	r7,$L1637
$L1630:
	rtsd	r15, 8
	
	addk	r3,r5,r0
$L1632:
	addk	r8,r5,r0
	brid	$L1633
	addk	r5,r8,r0
$L1631:
	brid	$L1602
	addk	r4,r0,r0
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
	beqi	r3,$L1639
	andi	r18,r7,31
	addk	r3,r0,r6
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r3,r3,r3
	rtsd	r15,8 
	
	addk	r4,r0,r0
$L1639:
	beqi	r7,$L1642
	addik	r4,r0,32	# 0x20
	rsubk	r8,r7,r4
	andi	r18,r8,31
	addk	r9,r0,r6
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r18,r7,31
	addk	r10,r0,r5
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r10,r10,r10
	andi	r18,r7,31
	addk	r4,r0,r6
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r4,r4,r4
	rtsd	r15,8 
	
	or	r3,r9,r10
$L1642:
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
	beqi	r3,$L1644
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

$L1644:
	beqid	r7,$L1647
	addk	r3,r5,r0
	addik	r4,r0,32	# 0x20
	rsubk	r8,r7,r4
	andi	r18,r8,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
	andi	r18,r7,31
	addk	r10,r0,r6
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r3,r3
	rtsd	r15,8 
	
	or	r4,r9,r10
$L1647:
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
	andi	r8,r3,65280 #and2
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
	addk	r9,r5,r5
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	or	r10,r4,r8
	andi	r12,r9,16711680 #and2
	addk	r11,r0,r6
	srl	r11,r6
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	andi	r3,r11,65280 #and2
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
	or	r7,r7,r8
	or	r4,r10,r12
	addk	r9,r0,r6
	addk	r9,r6,r6
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	addk	r9,r9,r9
	or	r10,r7,r3
	andi	r11,r9,16711680 #and2
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
	or	r3,r10,r11
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
	addk	r4,r3,r3
	addk	r6,r4,r4
	addk	r7,r6,r6
	addk	r8,r7,r7
	addk	r9,r8,r8
	addk	r10,r9,r9
	addk	r12,r0,r5
	srl	r12,r5
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
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
	addk	r11,r10,r10
	or	r4,r12,r3
	addk	r6,r0,r5
	srl	r6,r5
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	srl	r6,r6
	andi	r5,r6,65280 #and2
	or	r7,r4,r5
	andi	r8,r11,16711680 #and2
	rtsd	r15,8 
	
	or	r3,r7,r8
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
	bgeid	r18,$L1651
	addik	r3,r0,1	# 0x1
	addk	r3,r0,r0
$L1651:
	addk	r6,r3,r3
	addk	r7,r6,r6
	addk	r8,r7,r7
	addk	r11,r8,r8
	addik	r9,r0,16	# 0x10
	rsubk	r10,r11,r9
	andi	r18,r10,31
	addk	r12,r0,r5
	beqid	r18,.+20
	addk	r12,r12,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r12,r12
	andi	r5,r12,65280 #and2
	rsubk	r4,r5,r0
	or	r3,r4,r5
	xori	r7,r3,-1
	addk	r6,r0,r7
	srl	r6,r7
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
	addik	r8,r0,8	# 0x8
	andi	r4,r6,8 #and1
	rsubk	r9,r4,r8
	andi	r18,r9,31
	addk	r10,r0,r12
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	andi	r12,r10,240 #and1
	rsubk	r5,r12,r0
	or	r3,r5,r12
	xori	r7,r3,-1
	addk	r6,r0,r7
	srl	r6,r7
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
	addik	r8,r0,4	# 0x4
	andi	r12,r6,4 #and1
	rsubk	r9,r12,r8
	andi	r18,r9,31
	addk	r3,r0,r10
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	andi	r10,r3,12 #and1
	rsubk	r5,r10,r0
	or	r7,r5,r10
	xori	r6,r7,-1
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
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	addik	r10,r0,2	# 0x2
	addk	r5,r8,r8
	rsubk	r7,r5,r10
	andi	r18,r7,31
	addk	r9,r0,r3
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	srl	r3,r9
	andi	r8,r3,1 #and1
	addk	r11,r4,r11
	xori	r4,r8,1
	addk	r12,r12,r11
	beqid	r4,$L1653
	addk	r6,r0,r0
	rsubk	r6,r9,r10
$L1653:
	addk	r5,r5,r12
	rtsd	r15,8 
	
	addk	r3,r6,r5
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
	blti	r18,$L1659
	cmp	r18,r5,r7
	blti	r18,$L1660
	cmpu	r18,r8,r6
	blti	r18,$L1659
	cmpu	r18,r6,r8
	blti	r18,$L1660
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1659:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1660:
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
	blti	r18,$L1666
	cmp	r18,r5,r7
	blti	r18,$L1665
	cmpu	r18,r8,r6
	blti	r18,$L1666
	cmpu	r18,r6,r8
	bgeid	r18,$L1667
	addik	r3,r0,1	# 0x1
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1666:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
$L1667:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1665:
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
	or	r6,r3,r4
	xori	r7,r6,-1
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
	andi	r10,r8,16 #and1
	andi	r18,r10,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r5,r9,255 #and1
	rsubk	r11,r5,r0
	or	r12,r11,r5
	xori	r4,r12,-1
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
	andi	r7,r3,8 #and1
	andi	r18,r7,31
	addk	r8,r0,r9
	beqid	r18,.+20
	addk	r8,r8,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r8,r8
	andi	r6,r8,15 #and1
	rsubk	r9,r6,r0
	or	r5,r9,r6
	xori	r11,r5,-1
	addk	r12,r0,r11
	srl	r12,r11
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	srl	r12,r12
	andi	r6,r12,4 #and1
	andi	r18,r6,31
	addk	r9,r0,r8
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r9,r9
	andi	r4,r9,3 #and1
	rsubk	r3,r4,r0
	or	r8,r3,r4
	xori	r11,r8,-1
	addk	r5,r0,r11
	srl	r5,r11
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
	addk	r12,r5,r5
	andi	r18,r12,31
	addk	r4,r0,r9
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	andi	r9,r4,3 #and1
	xori	r3,r9,-1
	addk	r10,r7,r10
	andi	r8,r3,1 #and1
	srl	r11,r9
	addik	r7,r0,2	# 0x2
	addk	r6,r6,r10
	rsubk	r5,r11,r7
	rsubk	r4,r8,r0
	and	r9,r4,r5
	addk	r12,r12,r6
	rtsd	r15,8 
	
	addk	r3,r9,r12
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
	beqi	r3,$L1670
	andi	r18,r7,31
	addk	r4,r0,r5
	beqid	r18,.+20
	addk	r4,r4,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r4,r4
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1670:
	beqid	r7,$L1673
	addk	r3,r5,r0
	addik	r4,r0,32	# 0x20
	rsubk	r8,r7,r4
	andi	r18,r8,31
	addk	r9,r0,r5
	beqid	r18,.+20
	addk	r9,r9,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	addk	r9,r9,r9
	andi	r18,r7,31
	addk	r10,r0,r6
	beqid	r18,.+20
	addk	r10,r10,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r10,r10
	andi	r18,r7,31
	addk	r3,r0,r5
	beqid	r18,.+20
	addk	r3,r3,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	srl	r3,r3
	rtsd	r15,8 
	
	or	r4,r9,r10
$L1673:
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
	addk	r19,r0,r22
	srl	r19,r22
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
	addk	r22,r3,r27
	addk	r4,r22,r22
	addk	r3,r4,r4
	addk	r6,r3,r3
	addk	r7,r6,r6
	addk	r8,r7,r7
	addk	r9,r8,r8
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r11,r11
	addk	r5,r26,r0
	addk	r26,r12,r12
	addk	r25,r26,r26
	addk	r27,r25,r25
	addk	r4,r27,r27
	addk	r6,r19,r0
	addk	r3,r4,r4
	addk	r7,r3,r3
	addk	r8,r7,r7
	andi	r23,r23,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r25,r23,r8
	addk	r6,r19,r0
	addk	r26,r0,r25
	srl	r26,r25
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
	addk	r19,r3,r26
	addk	r5,r24,r0
	addk	r24,r19,r19
	addk	r9,r24,r24
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r11,r11
	addk	r27,r12,r12
	addk	r4,r27,r27
	addk	r3,r4,r4
	addk	r7,r3,r3
	addk	r23,r7,r7
	addk	r8,r23,r23
	addk	r26,r8,r8
	addk	r24,r26,r26
	addk	r9,r24,r24
	addk	r10,r9,r9
	addk	r11,r10,r10
	andi	r25,r25,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r27,r25,r11
	addk	r23,r0,r22
	srl	r23,r22
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
	addk	r22,r23,r3
	addk	r4,r27,r0
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
	lwi	r15,r1,0
	addk	r3,r22,r5
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
	.frame	r1,68,r15		# vars= 0, regs= 10, args= 24
	.mask	0x7fc88000
	addik	r1,r1,-68
	swi	r26,r1,48
	swi	r28,r1,56
	andi	r26,r8,65535 #and2
	andi	r28,r6,65535 #and2
	swi	r22,r1,32
	swi	r23,r1,36
	addk	r22,r6,r0
	addk	r23,r5,r0
	addk	r6,r26,r0
	addk	r5,r28,r0
	swi	r15,r1,0
	swi	r19,r1,28
	swi	r24,r1,40
	swi	r25,r1,44
	swi	r27,r1,52
	swi	r29,r1,60
	swi	r30,r1,64
	addk	r19,r8,r0
	brlid	r15,__mulsi3
	
	addk	r24,r7,r0
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
	
	addk	r29,r3,r0
	addk	r26,r3,r27
	addk	r6,r26,r26
	addk	r3,r6,r6
	addk	r7,r3,r3
	addk	r8,r7,r7
	addk	r9,r8,r8
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r11,r11
	addk	r30,r12,r12
	addk	r5,r28,r0
	addk	r28,r30,r30
	andi	r4,r29,65535 #and2
	addk	r29,r28,r28
	addk	r27,r29,r29
	addk	r6,r27,r27
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
	addk	r3,r6,r6
	addk	r6,r29,r0
	addk	r7,r3,r3
	addk	r8,r7,r7
	brlid	r15,__mulsi3
	
	addk	r28,r4,r8
	addk	r30,r0,r28
	srl	r30,r28
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
	addk	r5,r25,r0
	addk	r25,r0,r26
	srl	r25,r26
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
	addk	r26,r30,r30
	addk	r9,r26,r26
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r11,r11
	addk	r27,r12,r12
	addk	r3,r27,r27
	addk	r7,r3,r3
	addk	r8,r7,r7
	andi	r4,r28,65535 #and2
	addk	r28,r8,r8
	addk	r6,r29,r0
	addk	r29,r28,r28
	addk	r26,r29,r29
	addk	r9,r26,r26
	addk	r10,r9,r9
	addk	r11,r10,r10
	addk	r12,r11,r11
	brlid	r15,__mulsi3
	
	addk	r27,r4,r12
	addk	r6,r24,r0
	addk	r5,r22,r0
	addk	r24,r0,r30
	srl	r24,r30
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
	
	addk	r22,r25,r3
	addk	r6,r23,r0
	addk	r5,r19,r0
	addk	r30,r22,r24
	brlid	r15,__mulsi3
	
	addk	r23,r3,r30
	addk	r4,r27,r0
	addk	r3,r23,r3
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
	xor	r6,r4,r5
	addk	r3,r0,r6
	srl	r3,r6
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	xor	r8,r3,r6
	addk	r9,r0,r8
	srl	r9,r8
	srl	r9,r9
	srl	r9,r9
	srl	r9,r9
	xor	r10,r9,r8
	addik	r7,r0,27030	# 0x6996
	andi	r11,r10,15 #and1
	andi	r18,r11,31
	addk	r12,r0,r7
	beqid	r18,.+20
	addk	r12,r12,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r12,r12
	rtsd	r15,8 
	
	andi	r3,r12,1 #and1
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
	xor	r4,r3,r5
	addk	r5,r0,r4
	srl	r5,r4
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	xor	r7,r5,r4
	addk	r8,r0,r7
	srl	r8,r7
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	xor	r9,r8,r7
	addik	r6,r0,27030	# 0x6996
	andi	r10,r9,15 #and1
	andi	r18,r10,31
	addk	r11,r0,r6
	beqid	r18,.+20
	addk	r11,r11,r0
	addik	r18,r18,-1
	bneid	r18,.-4
	sra	r11,r11
	rtsd	r15,8 
	
	andi	r3,r11,1 #and1
	.end	__paritysi2
$Lfe145:
	.size	__paritysi2,$Lfe145-__paritysi2
	.align	2
	.globl	__popcountdi2
	.ent	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.frame	r1,12,r15		# vars= 0, regs= 2, args= 0
	.mask	0x00c00000
	addk	r8,r5,r0
	addk	r9,r6,r0
	addik	r1,r1,-12
	srl	r3,r6
	srl	r6,r5
	swi	r22,r1,4
	swi	r23,r1,8
	andi	r22,r6,1431655765 #and2
	andi	r23,r3,1431655765 #and2
	rsub	r7,r23,r9
	rsubc	r6,r22,r8
	addk	r8,r0,r7
	srl	r8,r7
	srl	r8,r8
	andi	r10,r6,858993459 #and2
	andi	r5,r8,858993459 #and2
	andi	r11,r7,858993459 #and2
	addk	r4,r0,r6
	srl	r4,r6
	srl	r4,r4
	andi	r4,r4,858993459 #and2
	add	r11,r5,r11
	addc	r10,r4,r10
	src	r7,r10
	src	r7,r7
	src	r7,r7
	src	r7,r7
	src	r7,r7
	andi	r7,r7,-268435456
	addk	r5,r0,r11
	srl	r5,r11
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	or	r5,r7,r5
	addk	r4,r0,r10
	srl	r4,r10
	srl	r4,r4
	srl	r4,r4
	srl	r4,r4
	add	r5,r5,r11
	addc	r4,r4,r10
	andi	r9,r4,252645135 #and2
	andi	r12,r5,252645135 #and2
	addk	r22,r9,r12
	addk	r23,r0,r22
	srl	r23,r22
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
	addk	r10,r23,r22
	lwi	r22,r1,4
	lwi	r23,r1,8
	addk	r11,r0,r10
	srl	r11,r10
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	srl	r11,r11
	addk	r3,r11,r10
	andi	r3,r3,127 #and1
	rtsd	r15,8 
	
	addik	r1,r1,12
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
	andi	r4,r3,1431655765 #and2
	rsubk	r5,r4,r5
	andi	r6,r5,858993459 #and2
	addk	r7,r0,r5
	srl	r7,r5
	srl	r7,r7
	andi	r8,r7,858993459 #and2
	addk	r9,r8,r6
	addk	r10,r0,r9
	srl	r10,r9
	srl	r10,r10
	srl	r10,r10
	srl	r10,r10
	addk	r11,r10,r9
	andi	r12,r11,252645135 #and2
	addk	r3,r0,r12
	srl	r3,r12
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	srl	r3,r3
	addk	r4,r3,r12
	addk	r5,r0,r4
	srl	r5,r4
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	srl	r5,r5
	addk	r6,r5,r4
	rtsd	r15,8 
	
	andi	r3,r6,63 #and1
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
	beqid	r3,$L1685
	addk	r19,r7,r0
$L1687:
	addk	r5,r24,r0
	addk	r6,r25,r0
	addk	r7,r22,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
$L1685:
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
	addk	r19,r4,r19
	sra	r19,r19
	beqi	r19,$L1686
$L1688:
	addk	r7,r22,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__muldf3
	
	addk	r8,r23,r0
	andi	r5,r19,1 #and1
	addk	r6,r0,r19
	srl	r6,r19
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
	srl	r6,r6
	srl	r6,r6
	addk	r22,r3,r0
	addk	r23,r4,r0
	bneid	r5,$L1687
	addk	r7,r6,r19
	brid	$L1688
	sra	r19,r7
$L1686:
	bgeid	r26,$L1692
	addk	r3,r24,r0
	addk	r7,r24,r0
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	
	addk	r8,r25,r0
	addk	r24,r3,r0
	addk	r25,r4,r0
	addk	r3,r24,r0
$L1692:
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
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	andi	r3,r6,1 #and1
	beqid	r3,$L1699
	addk	r11,r6,r0
	addik	r3,r0,0x3f800000
$L1696:
	fmul	r3,r3,r5
$L1694:
	addk	r7,r0,r11
	srl	r7,r11
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
	addk	r4,r7,r11
	sra	r11,r4
	beqi	r11,$L1695
$L1697:
	addk	r8,r0,r11
	srl	r8,r11
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	srl	r8,r8
	andi	r9,r11,1 #and1
	fmul	r5,r5,r5
	bneid	r9,$L1696
	addk	r10,r8,r11
	brid	$L1697
	sra	r11,r10
$L1695:
	blti	r6,$L1700
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1699:
	addik	r3,r0,0x3f800000
	bri	$L1694
$L1700:
	addik	r5,r0,0x3f800000
	rtsd	r15,8 
	
	fdiv	r3,r3,r5
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
	blti	r18,$L1705
	cmpu	r18,r5,r7
	blti	r18,$L1706
	cmpu	r18,r8,r6
	blti	r18,$L1705
	cmpu	r18,r6,r8
	blti	r18,$L1706
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1705:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1706:
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
	blti	r18,$L1712
	cmpu	r18,r5,r7
	blti	r18,$L1711
	cmpu	r18,r8,r6
	blti	r18,$L1712
	cmpu	r18,r6,r8
	bgeid	r18,$L1713
	addik	r3,r0,1	# 0x1
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1712:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
$L1713:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1711:
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
