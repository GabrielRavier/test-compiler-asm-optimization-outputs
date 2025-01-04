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
	addk	r10,r6,r7
	brid	$L140
	lbui	r3,r6,0
$L142:
	beqi	r6,$L127
	lbui	r9,r5,0
	beqid	r9,$L141
	addik	r3,r8,1
	addk	r8,r3,r0
$L128:
	lbui	r3,r8,0
	xor	r11,r8,r10
	rsubk	r6,r11,r0
	xor	r4,r3,r9
	or	r12,r6,r11
	rsubk	r7,r3,r0
	addik	r11,r4,-1
	and	r4,r11,r7
	bsrli	r6,r12,31
	bltid	r4,$L142
	addik	r5,r5,1
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
	rsubk	r3,r5,r0
	rsubk	r4,r6,r0
	or	r8,r3,r5
	or	r7,r4,r6
	and	r9,r8,r7
	xori	r10,r9,-1
	rtsd	r15,8 
	
	bsrli	r3,r10,31
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
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L153:
	xori	r5,r5,127
	rsubk	r6,r5,r0
	or	r7,r6,r5
	xori	r8,r7,-1
	bsrli	r9,r8,31
	or	r10,r9,r4
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
	addik	r6,r5,-9
	cmpu	r18,r6,r3
	bgeid	r18,$L163
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L163:
	xori	r5,r5,32
	rsubk	r7,r5,r0
	or	r8,r7,r5
	xori	r9,r8,-1
	bsrli	r10,r9,31
	or	r11,r10,r4
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
	rsubk	r3,r12,r0
	rtsd	r15,8 
	
	bsrli	r3,r3,31
$L189:
	addik	r6,r5,1
	andi	r7,r6,127 #and1
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
	bsrli	r5,r5,6
	sbi	r7,r3,0
	bneid	r5,$L295
	addik	r3,r3,1
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
	bsrai	r3,r5,31
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
	addik	r6,r0,4	# 0x4
	sext8	r4,r3
	addik	r7,r4,-9
	cmpu	r18,r7,r6
	bgeid	r18,$L375
	addik	r11,r0,4	# 0x4
	xori	r8,r3,32
	andi	r9,r8,0x00ff
	addik	r10,r9,-1
	bgeid	r10,$L379
	xori	r8,r4,43
$L375:
	lbui	r4,r5,1
	addik	r5,r5,1
	xori	r12,r4,32
	andi	r6,r12,0x00ff
	sext8	r4,r4
	addik	r3,r6,-1
	addik	r8,r4,-9
	cmpu	r18,r8,r11
	bgeid	r18,$L375
	bsrli	r7,r3,31
	bneid	r7,$L375
	xori	r8,r4,43
$L379:
	beqid	r8,$L355
	addik	r10,r0,9	# 0x9
	xori	r8,r4,45
	bneid	r8,$L378
	addk	r11,r0,r0
	lbui	r11,r5,1
	addik	r6,r0,9	# 0x9
	sext8	r3,r11
	addik	r4,r3,-48
	cmpu	r18,r4,r6
	bltid	r18,$L349
	addik	r5,r5,1
	addik	r11,r0,1	# 0x1
$L358:
	addk	r8,r0,r0
	addik	r10,r0,9	# 0x9
$L361:
	lbui	r12,r5,1
	bslli	r6,r8,2
	sext8	r9,r4
	addk	r8,r6,r8
	sext8	r4,r12
	addk	r3,r8,r8
	addik	r4,r4,-48
	addik	r5,r5,1
	cmpu	r18,r4,r10
	bgeid	r18,$L361
	rsubk	r8,r9,r3
	bnei	r11,$L349
	rsubk	r8,r3,r9
$L349:
	rtsd	r15,8 
	
	addk	r3,r8,r0
$L378:
	addik	r4,r4,-48
	addik	r7,r0,9	# 0x9
	cmpu	r18,r4,r7
	bgeid	r18,$L358
	addk	r8,r11,r0
	bri	$L349
$L355:
	lbui	r9,r5,1
	addk	r11,r8,r0
	sext8	r12,r9
	addik	r4,r12,-48
	cmpu	r18,r4,r10
	bgeid	r18,$L358
	addik	r5,r5,1
	bri	$L349
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
	addik	r6,r0,4	# 0x4
	sext8	r4,r3
	addik	r7,r4,-9
	cmpu	r18,r7,r6
	bgeid	r18,$L404
	addik	r11,r0,4	# 0x4
	xori	r8,r3,32
	andi	r9,r8,0x00ff
	addik	r10,r9,-1
	bgeid	r10,$L406
	xori	r9,r4,43
$L404:
	lbui	r4,r5,1
	addik	r5,r5,1
	xori	r12,r4,32
	andi	r6,r12,0x00ff
	sext8	r4,r4
	addik	r3,r6,-1
	addik	r8,r4,-9
	cmpu	r18,r8,r11
	bgeid	r18,$L404
	bsrli	r7,r3,31
	bneid	r7,$L404
	xori	r9,r4,43
$L406:
	beqid	r9,$L386
	xori	r8,r4,45
	bneid	r8,$L387
	addik	r12,r4,-48
	lbui	r6,r5,1
	addik	r3,r0,9	# 0x9
	addik	r5,r5,1
	sext8	r4,r6
	addik	r12,r4,-48
	cmpu	r18,r12,r3
	bltid	r18,$L380
	addik	r11,r0,1	# 0x1
$L388:
	addk	r8,r0,r0
	addik	r10,r0,9	# 0x9
$L391:
	lbui	r4,r5,1
	bslli	r6,r8,2
	sext8	r9,r12
	addk	r8,r6,r8
	sext8	r12,r4
	addk	r3,r8,r8
	addik	r12,r12,-48
	addik	r5,r5,1
	cmpu	r18,r12,r10
	bgeid	r18,$L391
	rsubk	r8,r9,r3
	bnei	r11,$L380
	rsubk	r8,r3,r9
$L380:
	rtsd	r15,8 
	
	addk	r3,r8,r0
$L387:
	addk	r11,r0,r0
	addik	r7,r0,9	# 0x9
	cmpu	r18,r12,r7
	bgeid	r18,$L388
	addk	r8,r11,r0
	bri	$L380
$L386:
	lbui	r10,r5,1
	addik	r11,r0,9	# 0x9
	sext8	r12,r10
	addik	r12,r12,-48
	cmpu	r18,r12,r11
	bltid	r18,$L394
	addik	r5,r5,1
	brid	$L388
	addk	r11,r9,r0
$L394:
	brid	$L380
	addk	r8,r9,r0
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
	sext8	r3,r4
	addik	r9,r3,-9
	cmpu	r18,r9,r8
	bgeid	r18,$L433
	addik	r11,r0,4	# 0x4
	xori	r6,r4,32
	andi	r7,r6,0x00ff
	addik	r10,r7,-1
	bgeid	r10,$L438
	xori	r9,r3,43
$L433:
	lbui	r3,r5,1
	addik	r5,r5,1
	xori	r12,r3,32
	andi	r19,r12,0x00ff
	sext8	r3,r3
	addik	r22,r19,-1
	addik	r8,r3,-9
	cmpu	r18,r8,r11
	bgeid	r18,$L433
	bsrli	r4,r22,31
	bneid	r4,$L433
	xori	r9,r3,43
$L438:
	beqid	r9,$L413
	xori	r11,r3,45
	bneid	r11,$L437
	addik	r3,r3,-48
	lbui	r12,r5,1
	addik	r22,r5,1
	addik	r19,r0,9	# 0x9
	sext8	r5,r12
	addik	r3,r5,-48
	cmpu	r18,r3,r19
	bltid	r18,$L422
	addik	r19,r0,1	# 0x1
$L416:
	addik	r8,r0,0x00000000
	addik	r9,r0,0x00000000 #li => la
	addik	r12,r0,9	# 0x9
$L419:
	bsrli	r7,r9,30
	bslli	r6,r8,2
	or	r6,r7,r6
	bslli	r7,r9,2
	lbui	r10,r22,1
	add	r5,r7,r9
	addc	r4,r6,r8
	addk	r8,r5,r5
	bsrli	r7,r5,31
	addk	r5,r8,r0
	sext8	r11,r10
	addk	r9,r4,r4
	sext8	r6,r3
	or	r4,r7,r9
	addik	r3,r11,-48
	addk	r11,r0,r6
	add	r10,r11,r11
	addc	r10,r0,r0
	beqi	r10,.+8
	addi	r10,r0,0xffffffff
	rsub	r9,r11,r5
	rsubc	r8,r10,r4
	cmpu	r18,r3,r12
	bgeid	r18,$L419
	addik	r22,r22,1
	bneid	r19,$L439
	addk	r3,r8,r0
	rsub	r9,r5,r11
	rsubc	r8,r4,r10
	addk	r3,r8,r0
$L439:
	addk	r4,r9,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	rtsd	r15,8 
	
	addik	r1,r1,12
$L437:
	addik	r4,r0,9	# 0x9
	addk	r22,r5,r0
	cmpu	r18,r3,r4
	bgeid	r18,$L416
	addk	r19,r0,r0
$L422:
	addik	r8,r0,0x00000000
	addik	r9,r0,0x00000000 #li => la
	addk	r3,r8,r0
	addk	r4,r9,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	rtsd	r15,8 
	
	addik	r1,r1,12
$L413:
	lbui	r6,r5,1
	addik	r7,r0,9	# 0x9
	addk	r19,r9,r0
	sext8	r10,r6
	addik	r3,r10,-48
	cmpu	r18,r3,r7
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
	bsrai	r5,r5,31
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
	bsrai	r3,r5,31
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
	bsrai	r5,r5,31
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
	bsrai	r3,r5,2
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
	lwi	r8,r6,0
	addik	r7,r7,-1
	rsubk	r4,r9,r0
	xor	r3,r9,r8
	rsubk	r11,r3,r0
	or	r10,r4,r9
	or	r9,r11,r3
	bltid	r9,$L517
	bsrli	r12,r10,31
	beqi	r12,$L517
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
	brlid	r15,memcpy
	
	bslli	r7,r7,2
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
	bslli	r5,r7,2
	rsubk	r8,r6,r3
	cmpu	r18,r5,r8
	bgeid	r18,$L584
	addik	r9,r7,-1
	beqi	r7,$L577
	bslli	r4,r9,2
$L574:
	lw	r12,r4,r6
	sw	r12,r4,r3
	addik	r4,r4,-4
	xori	r5,r4,-4
	bnei	r5,$L574
$L577:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L584:
	beqid	r7,$L577
	addk	r11,r0,r0
$L572:
	lw	r7,r11,r6
	addik	r9,r9,-1
	xori	r10,r9,-1
	sw	r7,r11,r3
	bneid	r10,$L572
	addik	r11,r11,4
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
	xori	r4,r7,-1
	bsll	r12,r6,r7
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	addk	r9,r0,r0
	beqid	r3,$L630
	andi	r10,r7,63 #and1
$L632:
	bsrl	r7,r5,r10
	addk	r5,r0,r0
	or	r3,r5,r12
	rtsd	r15,8 
	
	or	r4,r7,r9
$L628:
	srl	r8,r6
	bsrl	r10,r8,r4
	bsll	r11,r5,r7
	bsll	r9,r6,r7
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	or	r12,r10,r11
	bneid	r3,$L632
	andi	r10,r7,63 #and1
$L630:
	addk	r8,r5,r5
	xori	r4,r10,-1
	bsll	r11,r8,r4
	bsrl	r6,r6,r10
	bsrl	r5,r5,r10
	or	r7,r11,r6
	or	r3,r5,r12
	rtsd	r15,8 
	
	or	r4,r7,r9
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
	bsrl	r12,r5,r7
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	addk	r9,r0,r0
	beqid	r3,$L636
	andi	r4,r7,63 #and1
$L638:
	bsll	r7,r6,r4
	addk	r6,r0,r0
	or	r3,r7,r9
	rtsd	r15,8 
	
	or	r4,r6,r12
$L634:
	addk	r4,r5,r5
	bsll	r10,r4,r8
	bsrl	r11,r6,r7
	bsrl	r9,r5,r7
	rsubk	r7,r7,r0
	andi	r3,r7,32 #and1
	or	r12,r10,r11
	bneid	r3,$L638
	andi	r4,r7,63 #and1
$L636:
	srl	r8,r6
	xori	r10,r4,-1
	bsll	r5,r5,r4
	bsrl	r11,r8,r10
	bsll	r6,r6,r4
	or	r7,r11,r5
	or	r3,r7,r9
	rtsd	r15,8 
	
	or	r4,r6,r12
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
	rsubk	r3,r6,r0
	bsrl	r4,r5,r3
	bsll	r6,r5,r6
	rtsd	r15,8 
	
	or	r3,r4,r6
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
	rsubk	r3,r6,r0
	bsll	r4,r5,r3
	bsrl	r6,r5,r6
	rtsd	r15,8 
	
	or	r3,r4,r6
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
	rsubk	r3,r6,r0
	bsrl	r4,r5,r3
	bsll	r6,r5,r6
	rtsd	r15,8 
	
	or	r3,r4,r6
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
	rsubk	r3,r6,r0
	bsll	r4,r5,r3
	bsrl	r6,r5,r6
	rtsd	r15,8 
	
	or	r3,r4,r6
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
	rsubk	r3,r6,r0
	andi	r4,r3,15 #and1
	bsll	r7,r5,r6
	bsrl	r5,r5,r4
	or	r8,r7,r5
	andi	r3,r8,0xffff
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
	rsubk	r3,r6,r0
	andi	r4,r3,15 #and1
	bsrl	r7,r5,r6
	bsll	r5,r5,r4
	or	r8,r7,r5
	andi	r3,r8,0xffff
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
	rsubk	r3,r6,r0
	andi	r4,r3,7 #and1
	bsll	r7,r5,r6
	bsrl	r5,r5,r4
	or	r8,r7,r5
	rtsd	r15,8 
	
	andi	r3,r8,0x00ff
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
	rsubk	r3,r6,r0
	andi	r4,r3,7 #and1
	bsrl	r7,r5,r6
	bsll	r5,r5,r4
	or	r8,r7,r5
	rtsd	r15,8 
	
	andi	r3,r8,0x00ff
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
	bsrli	r3,r5,8
	bslli	r5,r5,8
	or	r4,r3,r5
	andi	r3,r4,0xffff
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
	bslli	r3,r5,24
	bsrli	r6,r5,24
	bsrli	r4,r5,8
	bslli	r5,r5,8
	or	r7,r3,r6
	andi	r8,r4,65280 #and2
	or	r9,r7,r8
	andi	r10,r5,16711680 #and2
	rtsd	r15,8 
	
	or	r3,r9,r10
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
	bsrli	r9,r5,8
	bsrli	r4,r5,24
	bslli	r8,r5,8
	bsrli	r7,r6,8
	bsrli	r10,r6,24
	bslli	r3,r6,24
	bslli	r6,r6,8
	bslli	r5,r5,24
	andi	r11,r9,65280 #and2
	or	r3,r3,r10
	andi	r9,r8,16711680 #and2
	or	r12,r4,r11
	andi	r8,r7,65280 #and2
	or	r4,r12,r9
	or	r7,r3,r8
	andi	r10,r6,16711680 #and2
	or	r3,r7,r10
	rtsd	r15,8 
	
	or	r4,r4,r5
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
	bsrl	r4,r5,r3
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
	addik	r8,r0,0x40000000
	bgeid	r19,$L696
	andi	r5,r19,1 #and1
	addik	r8,r0,0x3f000000
$L696:
	beqid	r5,$L697
	bsrli	r6,r19,31
$L684:
	fmul	r22,r22,r8
	bsrli	r6,r19,31
$L697:
	addk	r19,r6,r19
	sra	r19,r19
	beqid	r19,$L681
	bsrli	r9,r19,31
	fmul	r8,r8,r8
	andi	r7,r19,1 #and1
	bneid	r7,$L684
	addk	r10,r9,r19
	sra	r19,r10
$L695:
	bsrli	r9,r19,31
	fmul	r8,r8,r8
	andi	r7,r19,1 #and1
	bneid	r7,$L684
	addk	r10,r9,r19
	brid	$L695
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
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r15,r1,0
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r22,r5,r0
	brlid	r15,__unorddf2
	
	addk	r23,r6,r0
	bneid	r3,$L699
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__adddf3
	
	addk	r6,r23,r0
	addk	r6,r4,r0
	addk	r5,r3,r0
	addk	r7,r22,r0
	brlid	r15,__nedf2
	
	addk	r8,r23,r0
	beqid	r3,$L716
	addk	r3,r22,r0
	blti	r19,$L714
	addik	r24,r0,0x40000000 
	addik	r25,r0,0x00000000 #Xfer Lo
	andi	r3,r19,1 #and1
$L715:
	beqid	r3,$L717
	bsrli	r4,r19,31
$L703:
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r24,r0
	brlid	r15,__muldf3
	
	addk	r8,r25,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	bsrli	r4,r19,31
$L717:
	addk	r7,r4,r19
	sra	r19,r7
	beqid	r19,$L716
	addk	r3,r22,r0
$L704:
	addk	r8,r25,r0
	addk	r7,r24,r0
	addk	r5,r24,r0
	brlid	r15,__muldf3
	
	addk	r6,r25,r0
	bsrli	r8,r19,31
	andi	r9,r19,1 #and1
	addk	r24,r3,r0
	addk	r25,r4,r0
	bneid	r9,$L703
	addk	r10,r8,r19
	brid	$L704
	sra	r19,r10
$L699:
	addk	r3,r22,r0
$L716:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L714:
	addik	r24,r0,0x3fe00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	brid	$L715
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
	swi	r22,r1,32
	swi	r23,r1,36
	swi	r15,r1,0
	swi	r24,r1,40
	swi	r25,r1,44
	addk	r22,r5,r0
	brlid	r15,__unorddf2
	
	addk	r23,r6,r0
	bneid	r3,$L719
	addk	r7,r22,r0
	addk	r8,r23,r0
	addk	r5,r22,r0
	brlid	r15,__adddf3
	
	addk	r6,r23,r0
	addk	r7,r3,r0
	addk	r8,r4,r0
	addk	r5,r22,r0
	brlid	r15,__nedf2
	
	addk	r6,r23,r0
	beqid	r3,$L736
	addk	r3,r22,r0
	blti	r19,$L734
	addik	r24,r0,0x40000000 
	addik	r25,r0,0x00000000 #Xfer Lo
	andi	r3,r19,1 #and1
$L735:
	beqid	r3,$L737
	bsrli	r4,r19,31
$L723:
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r24,r0
	brlid	r15,__muldf3
	
	addk	r8,r25,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	bsrli	r4,r19,31
$L737:
	addk	r5,r4,r19
	sra	r19,r5
	beqid	r19,$L736
	addk	r3,r22,r0
$L724:
	addk	r6,r25,r0
	addk	r7,r24,r0
	addk	r8,r25,r0
	brlid	r15,__muldf3
	
	addk	r5,r24,r0
	bsrli	r6,r19,31
	andi	r9,r19,1 #and1
	addk	r24,r3,r0
	addk	r25,r4,r0
	bneid	r9,$L723
	addk	r10,r6,r19
	brid	$L724
	sra	r19,r10
$L719:
	addk	r3,r22,r0
$L736:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L734:
	addik	r24,r0,0x3fe00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	brid	$L735
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
	beqid	r7,$L739
	addk	r3,r5,r0
	addik	r5,r7,-1
	addik	r4,r0,3	# 0x3
	cmpu	r18,r5,r4
	bgeid	r18,$L746
	or	r8,r3,r6
	andi	r4,r8,3 #and1
	bneid	r4,$L746
	andi	r9,r7,-4 #and1
$L741:
	lw	r10,r4,r3
	lw	r11,r4,r6
	xor	r12,r11,r10
	sw	r12,r4,r3
	addik	r4,r4,4
	xor	r5,r4,r9
	bneid	r5,$L741
	xor	r11,r7,r9
	addk	r8,r3,r9
	addk	r10,r6,r9
	beqid	r11,$L739
	rsubk	r7,r9,r7
	lbu	r12,r9,r3
	lbu	r6,r9,r6
	xori	r4,r7,1
	xor	r5,r12,r6
	beqid	r4,$L739
	sb	r5,r9,r3
	lbui	r9,r8,1
	lbui	r11,r10,1
	xori	r7,r7,2
	xor	r12,r11,r9
	beqid	r7,$L739
	sbi	r12,r8,1
	lbui	r6,r8,2
	lbui	r10,r10,2
	xor	r4,r10,r6
	sbi	r4,r8,2
$L739:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L746:
	addk	r11,r0,r0
$L758:
	lbu	r8,r11,r3
	lbu	r5,r11,r6
	xor	r9,r5,r8
	sb	r9,r11,r3
	addik	r11,r11,1
	xor	r12,r7,r11
	bnei	r12,$L758
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
	beqid	r4,$L766
	addk	r3,r5,r0
	addk	r10,r5,r0
$L761:
	lbui	r8,r10,1
	bneid	r8,$L761
	addik	r10,r10,1
$L774:
	beqi	r7,$L763
$L775:
	lbui	r5,r6,0
	addik	r7,r7,-1
	addik	r6,r6,1
	sext8	r9,r5
	beqid	r9,$L765
	sbi	r5,r10,0
	bneid	r7,$L775
	addik	r10,r10,1
$L763:
	sbi	r0,r10,0
$L765:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L766:
	brid	$L774
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
	beqid	r6,$L776
	addk	r3,r0,r0
$L777:
	lbu	r4,r3,r5
	bnei	r4,$L785
$L776:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L785:
	addik	r3,r3,1
	xor	r7,r6,r3
	bnei	r7,$L777
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
	beqid	r11,$L791
	addk	r3,r5,r0
$L787:
	brid	$L790
	addk	r7,r6,r0
$L789:
	beqi	r8,$L788
$L790:
	lbui	r4,r7,0
	addik	r7,r7,1
	sext8	r5,r4
	bneid	r5,$L789
	xor	r8,r5,r11
	lbui	r10,r3,1
	sext8	r11,r10
	bneid	r11,$L787
	addik	r3,r3,1
$L791:
	addk	r3,r11,r0
$L788:
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
$L798:
	lbui	r4,r5,0
	sext8	r9,r4
	xor	r8,r9,r6
	rsubk	r7,r8,r0
	or	r10,r7,r8
	bltid	r10,$L797
	addk	r3,r11,r0
	addk	r3,r5,r0
$L797:
	addk	r11,r3,r0
	bneid	r9,$L798
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
	beqid	r10,$L813
	addk	r3,r6,r0
$L803:
	lbui	r4,r3,1
	bneid	r4,$L803
	addik	r3,r3,1
	rsubk	r7,r6,r3
	beqid	r7,$L813
	addik	r11,r6,-1
	brid	$L822
	addk	r11,r11,r7
$L823:
	beqid	r3,$L801
	addik	r5,r5,1
$L822:
	lbui	r8,r5,0
	sext8	r3,r8
	xor	r9,r3,r10
	bneid	r9,$L823
	addk	r9,r6,r0
	addk	r12,r5,r0
	brid	$L805
	andi	r7,r8,0x00ff
$L824:
	xor	r4,r8,r7
	rsubk	r3,r8,r0
	addik	r8,r4,-1
	and	r4,r8,r3
	bsrli	r3,r4,31
	beqi	r3,$L806
	lbui	r7,r12,0
	beqid	r7,$L806
	addik	r9,r9,1
$L805:
	xor	r3,r9,r11
	rsubk	r4,r3,r0
	or	r3,r4,r3
	lbui	r8,r9,0
	bltid	r3,$L824
	addik	r12,r12,1
$L806:
	lbui	r12,r9,0
	xor	r8,r12,r7
	beqid	r8,$L825
	addk	r3,r5,r0
	brid	$L822
	addik	r5,r5,1
$L813:
	addk	r3,r5,r0
$L801:
$L825:
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
	bltid	r3,$L837
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L830
	addk	r5,r24,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__ltdf2
	
	addk	r6,r25,r0
	blti	r3,$L829
$L830:
	addk	r3,r22,r0
$L838:
	addk	r4,r23,r0
	lwi	r15,r1,0
	lwi	r22,r1,28
	lwi	r23,r1,32
	lwi	r24,r1,36
	lwi	r25,r1,40
	rtsd	r15,8 
	
	addik	r1,r1,44
$L837:
	addk	r5,r24,r0
	brlid	r15,__gtdf2
	
	addk	r6,r25,r0
	blei	r3,$L830
$L829:
	addik	r22,r22,-2147483648
	brid	$L838
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
	beqid	r8,$L862
	addk	r3,r5,r0
	cmpu	r18,r8,r6
	blti	r18,$L848
	rsubk	r6,r8,r6
	addk	r10,r5,r6
	cmpu	r18,r5,r10
	blti	r18,$L848
	lbui	r12,r7,0
	addik	r1,r1,-8
	swi	r19,r1,4
	sext8	r12,r12
	brid	$L845
	xori	r19,r8,1
$L849:
	addk	r3,r11,r0
$L841:
	cmpu	r18,r3,r10
	blti	r18,$L850
$L845:
	lbui	r4,r3,0
	sext8	r5,r4
	xor	r9,r5,r12
	bneid	r9,$L849
	addik	r11,r3,1
	beqi	r19,$L839
$L844:
	brid	$L842
	addik	r4,r0,1	# 0x1
$L843:
	beqi	r9,$L839
$L842:
	lbu	r5,r4,r3
	lbu	r6,r4,r7
	addik	r4,r4,1
	xor	r5,r5,r6
	beqid	r5,$L843
	xor	r9,r4,r8
	cmpu	r18,r11,r10
	blti	r18,$L850
	lbui	r6,r11,0
	sext8	r4,r6
	xor	r9,r12,r4
	bneid	r9,$L841
	addik	r3,r11,1
	addk	r5,r11,r0
	addk	r11,r3,r0
	brid	$L844
	addk	r3,r5,r0
$L850:
	addk	r3,r0,r0
$L839:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L848:
	rtsd	r15, 8
	
	addk	r3,r0,r0
$L862:
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
	beqid	r7,$L864
	addk	r22,r5,r0
	brlid	r15,memmove
	nop		# Unfilled delay slot

$L864:
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
	bltid	r3,$L893
	addk	r5,r22,r0
	addik	r7,r0,0x3ff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r6,r23,r0
	brlid	r15,__gedf2
	
	addk	r29,r0,r0
	bltid	r3,$L894
	addk	r5,r22,r0
$L872:
	addik	r26,r0,0x3fe00000 
	addik	r27,r0,0x00000000 #Xfer Lo
	addik	r24,r0,0x3ff00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addk	r19,r0,r0
$L878:
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
	bgeid	r3,$L878
	addk	r4,r22,r0
	swi	r19,r28,0
	beqid	r29,$L869
	addk	r5,r23,r0
$L896:
	addik	r4,r22,-2147483648
$L869:
	addk	r3,r4,r0
$L897:
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
$L894:
	addik	r7,r0,0x3fe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	brlid	r15,__ltdf2
	
	addk	r6,r23,r0
	bgeid	r3,$L898
	addk	r4,r22,r0
	addk	r5,r22,r0
	addk	r7,r0,r0
	addk	r8,r0,r0
	brlid	r15,__nedf2
	
	addk	r6,r23,r0
	bneid	r3,$L884
	addk	r26,r22,r0
	addk	r4,r22,r0
$L898:
	addk	r5,r23,r0
	brid	$L869
	swi	r0,r28,0
$L893:
	addik	r7,r0,0xbff00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r6,r23,r0
	addik	r26,r22,-2147483648
	brlid	r15,__ledf2
	
	addk	r27,r23,r0
	bgtid	r3,$L895
	addik	r29,r0,1	# 0x1
	brid	$L872
	addk	r22,r26,r0
$L895:
	addik	r7,r0,0xbfe00000 
	addik	r8,r0,0x00000000 #Xfer Lo
	addk	r5,r22,r0
	brlid	r15,__gtdf2
	
	addk	r6,r23,r0
	bleid	r3,$L898
	addk	r4,r22,r0
	addik	r29,r0,1	# 0x1
$L873:
	addik	r24,r0,0x3fe00000 
	addik	r25,r0,0x00000000 #Xfer Lo
	addk	r22,r26,r0
	addk	r23,r27,r0
	addk	r19,r0,r0
	addk	r7,r22,r0
$L899:
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
	bltid	r3,$L899
	addk	r7,r22,r0
	swi	r19,r28,0
	addk	r4,r22,r0
	bneid	r29,$L896
	addk	r5,r23,r0
	brid	$L897
	addk	r3,r4,r0
$L884:
	brid	$L873
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
	beqid	r3,$L900
	swi	r27,r1,24
$L903:
	bslli	r9,r5,31
	bsrli	r4,r8,31
	addk	r10,r0,r0
	andi	r11,r6,1 #and1
	srl	r6,r6
	rsub	r27,r11,r0
	rsubc	r26,r10,r0
	srl	r5,r5
	or	r6,r9,r6
	and	r22,r26,r7
	and	r23,r27,r8
	addk	r7,r7,r7
	or	r10,r5,r6
	add	r25,r25,r23
	addc	r24,r24,r22
	or	r7,r4,r7
	bneid	r10,$L903
	addk	r8,r8,r8
$L900:
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
	bgeid	r18,$L945
	addik	r4,r0,1	# 0x1
$L908:
	bltid	r6,$L955
	addk	r3,r0,r0
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L910
	or	r9,r3,r4
	blti	r9,$L908
$L910:
	beqi	r4,$L928
	addk	r3,r0,r0
$L955:
	addik	r1,r1,-8
	addk	r12,r3,r0
	swi	r19,r1,4
	addk	r19,r3,r0
	addik	r11,r0,1	# 0x1
$L921:
	rsubk	r9,r6,r5
	cmpu	r18,r6,r5
	bgeid	r18,$L915
	andi	r8,r11,0x00ff
	andi	r8,r19,0x00ff
$L915:
	cmpu	r18,r6,r5
	bgeid	r18,$L956
	addk	r10,r12,r0
	addk	r9,r5,r0
$L956:
	addk	r5,r9,r0
	beqid	r8,$L920
	srl	r6,r6
	addk	r10,r4,r0
$L920:
	srl	r4,r4
	bneid	r4,$L921
	or	r3,r3,r10
	beqid	r7,$L957
	lwi	r19,r1,4
	addk	r3,r5,r0
$L957:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L928:
	bneid	r7,$L951
	addk	r3,r4,r0
$L958:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L945:
	cmpu	r18,r6,r5
	bltid	r18,$L952
	rsubk	r8,r6,r5
$L923:
	cmpu	r18,r6,r5
	bltid	r18,$L953
	andi	r3,r4,0x00ff
	addk	r5,r8,r0
$L954:
	beqi	r7,$L958
$L951:
	rtsd	r15, 8
	
	addk	r3,r5,r0
$L953:
	addk	r8,r5,r0
	brid	$L954
	addk	r5,r8,r0
$L952:
	brid	$L923
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
	bsrai	r3,r5,31
	xor	r4,r3,r5
	beqi	r4,$L961
	addik	r1,r1,-28
	swi	r15,r1,0
	brlid	r15,__clzsi2
	
	bslli	r5,r4,8
	lwi	r15,r1,0
	addik	r3,r3,-1
	rtsd	r15,8 
	
	addik	r1,r1,28
$L961:
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
	bsrai	r3,r5,31
	xor	r5,r5,r3
	beqid	r5,$L975
	xor	r6,r6,r3
$L970:
	addik	r1,r1,-28
	swi	r15,r1,0
	brlid	r15,__clzdi2
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	addik	r3,r3,-1
	rtsd	r15,8 
	
	addik	r1,r1,28
$L975:
	bneid	r6,$L970
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
	beqi	r5,$L979
	addk	r3,r0,r0
$L978:
	andi	r4,r5,1 #and1
	rsubk	r7,r4,r0
	and	r8,r7,r6
	srl	r5,r5
	addk	r3,r3,r8
	bneid	r5,$L978
	addk	r6,r6,r6
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L979:
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
	bsrli	r9,r7,3
	cmpu	r18,r6,r5
	bltid	r18,$L982
	andi	r10,r7,-8 #and1
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	bgei	r18,$L1019
$L982:
	beqid	r9,$L985
	addk	r4,r6,r0
	addik	r1,r1,-16
	swi	r19,r1,4
	bslli	r19,r9,3
	addk	r8,r5,r0
	swi	r22,r1,8
	swi	r23,r1,12
	addk	r11,r19,r6
$L986:
	lwi	r22,r4,0
	lwi	r23,r4,4
	addik	r4,r4,8
	xor	r3,r4,r11
	swi	r22,r8,0
	swi	r23,r8,4
	bneid	r3,$L986
	addik	r8,r8,8
	cmpu	r18,r7,r10
	bgeid	r18,$L981
	rsubk	r23,r10,r7
	addik	r12,r23,-1
	addik	r9,r0,6	# 0x6
	cmpu	r18,r12,r9
	bgeid	r18,$L1020
	addk	r22,r5,r10
	addik	r4,r10,1
	addk	r19,r6,r4
	rsubk	r8,r19,r22
	addik	r12,r0,2	# 0x2
	cmpu	r18,r8,r12
	bgeid	r18,$L1011
	addk	r11,r6,r10
	or	r9,r11,r22
	andi	r19,r9,3 #and1
	bneid	r19,$L1011
	andi	r8,r23,-4 #and1
$L990:
	lw	r4,r3,r11
	sw	r4,r3,r22
	addik	r3,r3,4
	xor	r12,r8,r3
	bnei	r12,$L990
	xor	r23,r8,r23
	beqid	r23,$L981
	addk	r10,r8,r10
	lbu	r22,r10,r6
	addik	r11,r10,1
	cmpu	r18,r7,r11
	bgeid	r18,$L981
	sb	r22,r10,r5
	lbu	r9,r11,r6
	addik	r19,r10,2
	cmpu	r18,r7,r19
	bgeid	r18,$L981
	sb	r9,r11,r5
	lbu	r6,r19,r6
	sb	r6,r19,r5
$L981:
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L1021:
	addik	r4,r4,1
$L1011:
	lbu	r8,r10,r6
	xor	r3,r7,r4
	sb	r8,r10,r5
	bneid	r3,$L1021
	addk	r10,r4,r0
	lwi	r19,r1,4
	lwi	r22,r1,8
	lwi	r23,r1,12
	rtsd	r15,8 
	
	addik	r1,r1,16
$L1019:
	beqid	r7,$L1024
	addik	r8,r7,-1
$L983:
	lbu	r4,r8,r6
	sb	r4,r8,r5
	addik	r8,r8,-1
	xori	r7,r8,-1
	bnei	r7,$L983
$L1024:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L985:
	bneid	r7,$L1014
	addik	r9,r10,1
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1022:
	addik	r9,r9,1
$L1014:
	lbu	r11,r10,r6
	xor	r12,r7,r9
	sb	r11,r10,r5
	bneid	r12,$L1022
	addk	r10,r9,r0
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1020:
	brid	$L1011
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
	bltid	r18,$L1026
	srl	r8,r7
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	bgei	r18,$L1053
$L1026:
	beqid	r8,$L1029
	addik	r10,r8,-1
	addik	r11,r0,8	# 0x8
	cmpu	r18,r10,r11
	bgeid	r18,$L1030
	or	r12,r6,r5
	andi	r3,r12,3 #and1
	bneid	r3,$L1030
	addik	r4,r6,2
	xor	r9,r5,r4
	rsubk	r10,r9,r0
	or	r11,r10,r9
	bgeid	r11,$L1030
	bsrli	r12,r7,2
	andi	r9,r7,-4 #and1
	addk	r3,r0,r0
$L1031:
	lw	r4,r3,r6
	sw	r4,r3,r5
	addik	r3,r3,4
	xor	r10,r3,r9
	bneid	r10,$L1031
	addk	r11,r12,r12
	xor	r8,r8,r11
	beqid	r8,$L1029
	addk	r12,r11,r11
	lhu	r9,r12,r6
	sh	r9,r12,r5
$L1029:
	andi	r8,r7,1 #and1
	beqid	r8,$L1025
	addik	r7,r7,-1
	lbu	r6,r7,r6
$L1056:
	sb	r6,r7,r5
$L1025:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1053:
	beqid	r7,$L1025
	addik	r9,r7,-1
$L1027:
	lbu	r4,r9,r6
	sb	r4,r9,r5
	addik	r9,r9,-1
	xori	r7,r9,-1
	bnei	r7,$L1027
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1030:
	addk	r10,r8,r8
	addk	r3,r0,r0
$L1033:
	lhu	r4,r3,r6
	sh	r4,r3,r5
	addik	r3,r3,2
	xor	r11,r10,r3
	bneid	r11,$L1033
	andi	r8,r7,1 #and1
	beqid	r8,$L1025
	addik	r7,r7,-1
	brid	$L1056
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
	bsrli	r8,r7,2
	cmpu	r18,r6,r5
	bltid	r18,$L1058
	andi	r9,r7,-4 #and1
	addk	r3,r6,r7
	cmpu	r18,r5,r3
	bgei	r18,$L1094
$L1058:
	beqid	r8,$L1061
	bslli	r10,r8,2
	addk	r12,r0,r0
$L1062:
	lw	r11,r12,r6
	sw	r11,r12,r5
	addik	r12,r12,4
	xor	r3,r12,r10
	bnei	r3,$L1062
	cmpu	r18,r7,r9
	bgei	r18,$L1098
	rsubk	r12,r9,r7
	addik	r8,r12,-1
	addik	r4,r0,6	# 0x6
	cmpu	r18,r8,r4
	bgeid	r18,$L1095
	addik	r4,r9,1
	addik	r1,r1,-8
	swi	r19,r1,4
	addk	r10,r5,r9
	addk	r19,r6,r4
	rsubk	r8,r19,r10
	addik	r19,r0,2	# 0x2
	cmpu	r18,r8,r19
	bgeid	r18,$L1087
	addk	r11,r6,r9
	or	r8,r11,r10
	andi	r19,r8,3 #and1
	bneid	r19,$L1087
	andi	r8,r12,-4 #and1
$L1066:
	lw	r4,r3,r11
	sw	r4,r3,r10
	addik	r3,r3,4
	xor	r19,r8,r3
	bnei	r19,$L1066
	xor	r12,r8,r12
	beqid	r12,$L1057
	addk	r9,r8,r9
	lbu	r10,r9,r6
	addik	r11,r9,1
	cmpu	r18,r7,r11
	bgeid	r18,$L1057
	sb	r10,r9,r5
	lbu	r8,r11,r6
	addik	r4,r9,2
	cmpu	r18,r7,r4
	bgeid	r18,$L1057
	sb	r8,r11,r5
	lbu	r6,r4,r6
	sb	r6,r4,r5
$L1057:
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1096:
	addik	r4,r4,1
$L1087:
	lbu	r3,r9,r6
	xor	r19,r7,r4
	sb	r3,r9,r5
	bneid	r19,$L1096
	addk	r9,r4,r0
	lwi	r19,r1,4
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1094:
	beqid	r7,$L1099
	addik	r9,r7,-1
$L1059:
	lbu	r4,r9,r6
	sb	r4,r9,r5
	addik	r9,r9,-1
	xori	r7,r9,-1
	bnei	r7,$L1059
$L1099:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1061:
	beqid	r7,$L1099
	addik	r11,r9,1
$L1090:
	lbu	r3,r9,r6
	xor	r10,r7,r11
	sb	r3,r9,r5
	beqid	r10,$L1099
	addk	r9,r11,r0
	brid	$L1090
	addik	r11,r11,1
$L1095:
	brid	$L1090
	addik	r11,r9,1
$L1098:
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
	bsrai	r3,r5,15
	bnei	r3,$L1115
	bsrai	r3,r5,14
	bneid	r3,$L1112
	bsrai	r4,r5,13
	bneid	r4,$L1116
	bsrai	r6,r5,12
	bneid	r6,$L1117
	bsrai	r7,r5,11
	bneid	r7,$L1118
	bsrai	r8,r5,10
	bneid	r8,$L1119
	bsrai	r9,r5,9
	bneid	r9,$L1120
	bsrai	r10,r5,8
	bneid	r10,$L1121
	bsrai	r11,r5,7
	bneid	r11,$L1122
	bsrai	r12,r5,6
	bnei	r12,$L1123
	bsrai	r3,r5,5
	bneid	r3,$L1124
	bsrai	r4,r5,4
	bneid	r4,$L1125
	bsrai	r6,r5,3
	bneid	r6,$L1126
	bsrai	r7,r5,2
	bneid	r7,$L1127
	sra	r8,r5
	bnei	r8,$L1128
	bneid	r5,$L1131
	addik	r3,r0,16	# 0x10
$L1112:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1115:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1126:
	rtsd	r15,8 
	
	addik	r3,r0,12	# 0xc
$L1131:
	rtsd	r15,8 
	
	addik	r3,r0,15	# 0xf
$L1116:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
$L1117:
	rtsd	r15,8 
	
	addik	r3,r0,3	# 0x3
$L1118:
	rtsd	r15,8 
	
	addik	r3,r0,4	# 0x4
$L1119:
	rtsd	r15,8 
	
	addik	r3,r0,5	# 0x5
$L1120:
	rtsd	r15,8 
	
	addik	r3,r0,6	# 0x6
$L1121:
	rtsd	r15,8 
	
	addik	r3,r0,7	# 0x7
$L1122:
	rtsd	r15,8 
	
	addik	r3,r0,8	# 0x8
$L1123:
	rtsd	r15,8 
	
	addik	r3,r0,9	# 0x9
$L1124:
	rtsd	r15,8 
	
	addik	r3,r0,10	# 0xa
$L1125:
	rtsd	r15,8 
	
	addik	r3,r0,11	# 0xb
$L1127:
	rtsd	r15,8 
	
	addik	r3,r0,13	# 0xd
$L1128:
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
	bneid	r3,$L1135
	andi	r4,r5,2 #and1
	bneid	r4,$L1136
	andi	r6,r5,4 #and1
	bneid	r6,$L1137
	andi	r7,r5,8 #and1
	bneid	r7,$L1138
	andi	r8,r5,16 #and1
	bneid	r8,$L1139
	andi	r9,r5,32 #and1
	bneid	r9,$L1140
	andi	r10,r5,64 #and1
	bneid	r10,$L1141
	andi	r11,r5,128 #and1
	bneid	r11,$L1142
	andi	r12,r5,256 #and1
	bnei	r12,$L1143
	andi	r3,r5,512 #and1
	bneid	r3,$L1144
	andi	r4,r5,1024 #and1
	bneid	r4,$L1145
	andi	r6,r5,2048 #and1
	bneid	r6,$L1146
	andi	r7,r5,4096 #and1
	bneid	r7,$L1147
	andi	r8,r5,8192 #and1
	bneid	r8,$L1148
	andi	r9,r5,16384 #and1
	bneid	r9,$L1149
	bsrai	r5,r5,15
	bneid	r5,$L1152
	addik	r3,r0,16	# 0x10
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1135:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1136:
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1147:
	rtsd	r15,8 
	
	addik	r3,r0,12	# 0xc
$L1152:
	rtsd	r15,8 
	
	addik	r3,r0,15	# 0xf
$L1137:
	rtsd	r15,8 
	
	addik	r3,r0,2	# 0x2
$L1138:
	rtsd	r15,8 
	
	addik	r3,r0,3	# 0x3
$L1139:
	rtsd	r15,8 
	
	addik	r3,r0,4	# 0x4
$L1140:
	rtsd	r15,8 
	
	addik	r3,r0,5	# 0x5
$L1141:
	rtsd	r15,8 
	
	addik	r3,r0,6	# 0x6
$L1142:
	rtsd	r15,8 
	
	addik	r3,r0,7	# 0x7
$L1143:
	rtsd	r15,8 
	
	addik	r3,r0,8	# 0x8
$L1144:
	rtsd	r15,8 
	
	addik	r3,r0,9	# 0x9
$L1145:
	rtsd	r15,8 
	
	addik	r3,r0,10	# 0xa
$L1146:
	rtsd	r15,8 
	
	addik	r3,r0,11	# 0xb
$L1148:
	rtsd	r15,8 
	
	addik	r3,r0,13	# 0xd
$L1149:
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
	bneid	r6,$L1160
	swi	r15,r1,0
	brlid	r15,__fixsfsi
	nop		# Unfilled delay slot

	lwi	r15,r1,0
	rtsd	r15,8 
	
	addik	r1,r1,28
$L1160:
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
	bsrai	r4,r5,2
	bsrai	r8,r5,3
	bsrai	r7,r5,4
	bsrai	r12,r5,5
	sra	r3,r5
	andi	r9,r3,1 #and1
	andi	r6,r5,1 #and1
	addk	r10,r9,r6
	andi	r11,r4,1 #and1
	addk	r3,r10,r11
	andi	r8,r8,1 #and1
	addk	r9,r3,r8
	bsrai	r4,r5,6
	bsrai	r10,r5,7
	andi	r6,r7,1 #and1
	addk	r11,r9,r6
	andi	r12,r12,1 #and1
	addk	r3,r11,r12
	bsrai	r7,r5,8
	bsrai	r9,r5,9
	andi	r8,r4,1 #and1
	addk	r6,r3,r8
	andi	r10,r10,1 #and1
	addk	r11,r6,r10
	andi	r12,r7,1 #and1
	bsrai	r4,r5,10
	bsrai	r8,r5,11
	bsrai	r7,r5,12
	bsrai	r6,r5,13
	addk	r3,r11,r12
	andi	r9,r9,1 #and1
	addk	r10,r3,r9
	andi	r4,r4,1 #and1
	addk	r11,r10,r4
	andi	r12,r8,1 #and1
	addk	r3,r11,r12
	bsrai	r8,r5,14
	bsrai	r5,r5,15
	andi	r9,r7,1 #and1
	addk	r7,r3,r9
	andi	r10,r6,1 #and1
	addk	r6,r7,r10
	andi	r4,r8,1 #and1
	addk	r11,r6,r4
	addk	r12,r11,r5
	rtsd	r15,8 
	
	andi	r3,r12,1 #and1
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
	bsrai	r4,r5,2
	bsrai	r8,r5,3
	bsrai	r7,r5,4
	bsrai	r12,r5,5
	sra	r3,r5
	andi	r9,r3,1 #and1
	andi	r6,r5,1 #and1
	addk	r10,r9,r6
	andi	r11,r4,1 #and1
	addk	r3,r10,r11
	andi	r8,r8,1 #and1
	addk	r9,r3,r8
	bsrai	r4,r5,6
	bsrai	r10,r5,7
	andi	r6,r7,1 #and1
	addk	r11,r9,r6
	andi	r12,r12,1 #and1
	addk	r3,r11,r12
	bsrai	r7,r5,8
	bsrai	r9,r5,9
	andi	r8,r4,1 #and1
	addk	r6,r3,r8
	andi	r10,r10,1 #and1
	addk	r11,r6,r10
	andi	r12,r7,1 #and1
	bsrai	r4,r5,10
	bsrai	r8,r5,11
	bsrai	r7,r5,12
	bsrai	r6,r5,13
	addk	r3,r11,r12
	andi	r9,r9,1 #and1
	addk	r10,r3,r9
	andi	r4,r4,1 #and1
	addk	r11,r10,r4
	andi	r12,r8,1 #and1
	addk	r3,r11,r12
	bsrai	r8,r5,14
	bsrai	r5,r5,15
	andi	r9,r7,1 #and1
	addk	r7,r3,r9
	andi	r10,r6,1 #and1
	addk	r6,r7,r10
	andi	r4,r8,1 #and1
	addk	r11,r6,r4
	rtsd	r15,8 
	
	addk	r3,r11,r5
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
	beqi	r5,$L1166
	addk	r3,r0,r0
$L1165:
	andi	r4,r5,1 #and1
	rsubk	r7,r4,r0
	and	r8,r7,r6
	srl	r5,r5
	addk	r3,r3,r8
	bneid	r5,$L1165
	addk	r6,r6,r6
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1166:
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
	beqi	r5,$L1171
	beqi	r6,$L1172
	addk	r3,r0,r0
$L1170:
	andi	r4,r6,1 #and1
	rsubk	r7,r4,r0
	and	r8,r7,r5
	srl	r6,r6
	addk	r3,r3,r8
	bneid	r6,$L1170
	addk	r5,r5,r5
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1171:
	rtsd	r15,8 
	
	addk	r3,r5,r0
$L1172:
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
	bgeid	r18,$L1212
	addik	r4,r0,1	# 0x1
$L1175:
	bltid	r6,$L1222
	addk	r3,r0,r0
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L1177
	or	r9,r3,r4
	blti	r9,$L1175
$L1177:
	beqi	r4,$L1195
	addk	r3,r0,r0
$L1222:
	addik	r1,r1,-8
	addk	r12,r3,r0
	swi	r19,r1,4
	addk	r19,r3,r0
	addik	r11,r0,1	# 0x1
$L1188:
	rsubk	r9,r6,r5
	cmpu	r18,r6,r5
	bgeid	r18,$L1182
	andi	r8,r11,0x00ff
	andi	r8,r19,0x00ff
$L1182:
	cmpu	r18,r6,r5
	bgeid	r18,$L1223
	addk	r10,r12,r0
	addk	r9,r5,r0
$L1223:
	addk	r5,r9,r0
	beqid	r8,$L1187
	srl	r6,r6
	addk	r10,r4,r0
$L1187:
	srl	r4,r4
	bneid	r4,$L1188
	or	r3,r3,r10
	beqid	r7,$L1224
	lwi	r19,r1,4
	addk	r3,r5,r0
$L1224:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1195:
	bneid	r7,$L1218
	addk	r3,r4,r0
$L1225:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1212:
	cmpu	r18,r6,r5
	bltid	r18,$L1219
	rsubk	r8,r6,r5
$L1190:
	cmpu	r18,r6,r5
	bltid	r18,$L1220
	andi	r3,r4,0x00ff
	addk	r5,r8,r0
$L1221:
	beqi	r7,$L1225
$L1218:
	rtsd	r15, 8
	
	addk	r3,r5,r0
$L1220:
	addk	r8,r5,r0
	brid	$L1221
	addk	r5,r8,r0
$L1219:
	brid	$L1190
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
	bnei	r3,$L1228
	rtsd	r15,8 
	
	fcmp.gt	r3,r6,r5
$L1228:
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
	bltid	r3,$L1232
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r5,r22,r0
	addk	r6,r23,r0
	brlid	r15,__gtdf2
	
	addik	r19,r0,1	# 0x1
	blei	r3,$L1234
$L1231:
	addk	r3,r19,r0
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	rtsd	r15,8 
	
	addik	r1,r1,48
$L1234:
	brid	$L1231
	addk	r19,r0,r0
$L1232:
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
	blti	r6,$L1249
	beqid	r6,$L1244
	addk	r10,r0,r0
$L1241:
	addik	r8,r0,1	# 0x1
	addk	r3,r0,r0
$L1243:
	andi	r7,r6,1 #and1
	sra	r6,r6
	xori	r4,r8,32
	rsubk	r9,r6,r0
	or	r11,r9,r6
	rsubk	r12,r4,r0
	and	r4,r12,r11
	rsubk	r7,r7,r0
	bsrli	r9,r4,31
	and	r11,r7,r5
	addik	r8,r8,1
	addk	r3,r3,r11
	addk	r5,r5,r5
	bneid	r9,$L1243
	andi	r8,r8,0x00ff
	beqi	r10,$L1239
	rsubk	r3,r3,r0
$L1239:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1249:
	rsubk	r6,r6,r0
	brid	$L1241
	addik	r10,r0,1	# 0x1
$L1244:
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
	bltid	r5,$L1291
	swi	r19,r1,4
	addik	r3,r0,1	# 0x1
	addk	r19,r0,r0
$L1251:
	bgeid	r6,$L1294
	addk	r8,r5,r0
	addk	r19,r3,r0
	rsubk	r6,r6,r0
$L1294:
	addk	r7,r6,r0
	cmpu	r18,r5,r6
	bgeid	r18,$L1288
	addik	r4,r0,1	# 0x1
$L1253:
	addk	r4,r4,r4
	rsubk	r6,r4,r0
	or	r9,r6,r4
	addk	r7,r7,r7
	cmpu	r18,r5,r7
	bltid	r18,$L1292
	bsrli	r10,r9,31
	beqid	r4,$L1290
	addk	r3,r0,r0
$L1293:
	addk	r11,r3,r0
	addk	r12,r3,r0
	addik	r10,r0,1	# 0x1
$L1255:
	rsubk	r6,r7,r8
	cmpu	r18,r7,r8
	bgeid	r18,$L1260
	andi	r5,r10,0x00ff
	andi	r5,r12,0x00ff
$L1260:
	cmpu	r18,r7,r8
	bgeid	r18,$L1295
	addk	r9,r11,r0
	addk	r6,r8,r0
$L1295:
	addk	r8,r6,r0
	beqid	r5,$L1265
	srl	r7,r7
	addk	r9,r4,r0
$L1265:
	srl	r4,r4
	bneid	r4,$L1255
	or	r3,r3,r9
$L1256:
	beqid	r19,$L1296
	lwi	r19,r1,4
	rsubk	r3,r3,r0
$L1296:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1292:
	bnei	r10,$L1253
	bneid	r4,$L1293
	addk	r3,r0,r0
$L1290:
	brid	$L1256
	addk	r3,r0,r0
$L1291:
	rsubk	r5,r5,r0
	addk	r3,r0,r0
	brid	$L1251
	addik	r19,r0,1	# 0x1
$L1288:
	cmpu	r18,r6,r5
	bgeid	r18,$L1256
	addk	r3,r4,r0
	brid	$L1256
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
	bgeid	r5,$L1298
	addk	r8,r0,r0
	rsubk	r5,r5,r0
	addik	r8,r0,1	# 0x1
$L1298:
	bsrai	r4,r6,31
	xor	r6,r4,r6
	rsubk	r12,r4,r6
	addk	r3,r5,r0
	cmpu	r18,r5,r12
	bgeid	r18,$L1333
	addik	r11,r0,1	# 0x1
$L1299:
	addk	r11,r11,r11
	rsubk	r7,r11,r0
	or	r9,r7,r11
	addk	r12,r12,r12
	cmpu	r18,r5,r12
	bltid	r18,$L1336
	bsrli	r10,r9,31
	beqi	r11,$L1335
$L1301:
	srl	r11,r11
	cmpu	r18,r12,r3
	bgeid	r18,$L1308
	rsubk	r5,r12,r3
	addk	r5,r3,r0
$L1308:
	addk	r3,r5,r0
	bneid	r11,$L1301
	srl	r12,r12
$L1302:
	beqi	r8,$L1297
	rsubk	r3,r3,r0
$L1297:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1336:
	bnei	r10,$L1299
	bnei	r11,$L1301
$L1335:
	brid	$L1302
	addk	r3,r5,r0
$L1333:
	cmpu	r18,r12,r5
	bgeid	r18,$L1302
	rsubk	r3,r12,r5
	brid	$L1302
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
	bgeid	r18,$L1559
	addik	r9,r0,1	# 0x1
$L1338:
	addk	r11,r6,r6
	sext16	r3,r6
	andi	r4,r11,0xffff
	bltid	r3,$L1560
	addk	r12,r9,r9
	andi	r8,r12,0xffff
	cmpu	r18,r5,r4
	blti	r18,$L1561
	beqi	r8,$L1450
	cmpu	r18,r4,r5
	bltid	r18,$L1562
	rsubk	r3,r4,r5
	andi	r3,r3,0xffff
	cmpu	r18,r4,r5
	bltid	r18,$L1563
	addk	r10,r8,r0
$L1351:
	andi	r12,r9,32767 #and1
	addk	r9,r8,r0
	andi	r11,r6,32767 #and1
	addk	r6,r4,r0
	andi	r4,r10,0xffff
$L1448:
	rsubk	r5,r11,r3
	andi	r10,r5,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1353
	addik	r8,r0,1	# 0x1
	addk	r8,r0,r0
$L1353:
	cmpu	r18,r11,r3
	bgei	r18,$L1356
	addk	r10,r3,r0
$L1356:
	andi	r3,r10,0xffff
	beqid	r8,$L1358
	addik	r11,r0,0	# 0
	addk	r11,r12,r0
$L1358:
	bsrli	r12,r9,2
	or	r4,r4,r11
	andi	r5,r12,0xffff
	andi	r8,r4,0xffff
	beqid	r5,$L1346
	bsrli	r12,r6,2
	rsubk	r10,r12,r3
	andi	r4,r10,0xffff
	cmpu	r18,r12,r3
	bgeid	r18,$L1359
	addik	r11,r0,1	# 0x1
	addk	r11,r0,r0
$L1359:
	cmpu	r18,r12,r3
	bgeid	r18,$L1362
	andi	r11,r11,0x00ff
	addk	r4,r3,r0
$L1362:
	andi	r3,r4,0xffff
	beqid	r11,$L1364
	addik	r12,r0,0	# 0
	addk	r12,r5,r0
$L1364:
	bsrli	r5,r9,3
	or	r8,r8,r12
	andi	r4,r5,0xffff
	andi	r8,r8,0xffff
	beqid	r4,$L1346
	bsrli	r11,r6,3
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1365
	addik	r12,r0,1	# 0x1
	addk	r12,r0,r0
$L1365:
	cmpu	r18,r11,r3
	bgei	r18,$L1368
	addk	r5,r3,r0
$L1368:
	andi	r3,r5,0xffff
	beqid	r12,$L1370
	addik	r11,r0,0	# 0
	addk	r11,r4,r0
$L1370:
	bsrli	r4,r9,4
	or	r8,r8,r11
	andi	r12,r4,0xffff
	andi	r8,r8,0xffff
	beqid	r12,$L1346
	bsrli	r11,r6,4
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1371
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L1371:
	cmpu	r18,r11,r3
	bgei	r18,$L1374
	addk	r5,r3,r0
$L1374:
	andi	r3,r5,0xffff
	beqid	r4,$L1376
	addik	r11,r0,0	# 0
	addk	r11,r12,r0
$L1376:
	bsrli	r12,r9,5
	or	r8,r8,r11
	andi	r4,r12,0xffff
	andi	r8,r8,0xffff
	beqid	r4,$L1346
	bsrli	r11,r6,5
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1377
	addik	r12,r0,1	# 0x1
	addk	r12,r0,r0
$L1377:
	cmpu	r18,r11,r3
	bgei	r18,$L1380
	addk	r5,r3,r0
$L1380:
	andi	r3,r5,0xffff
	beqid	r12,$L1382
	addik	r11,r0,0	# 0
	addk	r11,r4,r0
$L1382:
	bsrli	r4,r9,6
	or	r8,r8,r11
	andi	r12,r4,0xffff
	andi	r8,r8,0xffff
	beqid	r12,$L1346
	bsrli	r11,r6,6
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1383
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L1383:
	cmpu	r18,r11,r3
	bgei	r18,$L1386
	addk	r5,r3,r0
$L1386:
	andi	r3,r5,0xffff
	beqid	r4,$L1388
	addik	r11,r0,0	# 0
	addk	r11,r12,r0
$L1388:
	bsrli	r12,r9,7
	or	r8,r8,r11
	andi	r4,r12,0xffff
	andi	r8,r8,0xffff
	beqid	r4,$L1346
	bsrli	r11,r6,7
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1564
	addik	r12,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1565
$L1392:
	andi	r3,r5,0xffff
	bneid	r12,$L1566
	addik	r11,r0,0	# 0
$L1394:
	bsrli	r4,r9,8
	or	r8,r8,r11
	andi	r12,r4,0xffff
	andi	r8,r8,0xffff
	beqid	r12,$L1346
	bsrli	r11,r6,8
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1567
	addik	r4,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1568
$L1398:
	andi	r3,r5,0xffff
	bneid	r4,$L1569
	addik	r11,r0,0	# 0
$L1400:
	bsrli	r12,r9,9
	or	r8,r8,r11
	andi	r4,r12,0xffff
	andi	r8,r8,0xffff
	beqid	r4,$L1346
	bsrli	r11,r6,9
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1570
	addik	r12,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1571
$L1404:
	andi	r3,r5,0xffff
	bneid	r12,$L1572
	addik	r11,r0,0	# 0
$L1406:
	bsrli	r4,r9,10
	or	r8,r8,r11
	andi	r12,r4,0xffff
	andi	r8,r8,0xffff
	beqid	r12,$L1346
	bsrli	r11,r6,10
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1573
	addik	r4,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1574
$L1410:
	andi	r3,r5,0xffff
	bneid	r4,$L1575
	addik	r11,r0,0	# 0
$L1412:
	bsrli	r12,r9,11
	or	r8,r8,r11
	andi	r4,r12,0xffff
	andi	r8,r8,0xffff
	beqid	r4,$L1346
	bsrli	r11,r6,11
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1576
	addik	r12,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1577
$L1416:
	andi	r3,r5,0xffff
	bneid	r12,$L1578
	addik	r11,r0,0	# 0
$L1418:
	bsrli	r4,r9,12
	or	r8,r8,r11
	andi	r12,r4,0xffff
	andi	r8,r8,0xffff
	beqid	r12,$L1346
	bsrli	r11,r6,12
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bltid	r18,$L1579
	addik	r4,r0,1	# 0x1
	cmpu	r18,r11,r3
	blti	r18,$L1580
$L1422:
	andi	r3,r5,0xffff
	bneid	r4,$L1581
	addik	r11,r0,0	# 0
$L1424:
	bsrli	r12,r9,13
	or	r8,r8,r11
	andi	r4,r12,0xffff
	andi	r8,r8,0xffff
	beqid	r4,$L1346
	bsrli	r11,r6,13
$L1582:
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1425
	addik	r12,r0,1	# 0x1
	addk	r12,r0,r0
$L1425:
	cmpu	r18,r11,r3
	bgei	r18,$L1428
	addk	r5,r3,r0
$L1428:
	andi	r3,r5,0xffff
	beqid	r12,$L1430
	addik	r11,r0,0	# 0
	addk	r11,r4,r0
$L1430:
	bsrli	r4,r9,14
	or	r8,r8,r11
	andi	r12,r4,0xffff
	andi	r8,r8,0xffff
	beqid	r12,$L1346
	bsrli	r11,r6,14
	rsubk	r10,r11,r3
	andi	r5,r10,0xffff
	cmpu	r18,r11,r3
	bgeid	r18,$L1431
	addik	r4,r0,1	# 0x1
	addk	r4,r0,r0
$L1431:
	cmpu	r18,r11,r3
	bgei	r18,$L1434
	addk	r5,r3,r0
$L1434:
	andi	r3,r5,0xffff
	beqid	r4,$L1436
	addik	r11,r0,0	# 0
	addk	r11,r12,r0
$L1436:
	bsrli	r9,r9,15
	or	r8,r8,r11
	andi	r12,r9,0xffff
	andi	r8,r8,0xffff
	beqid	r12,$L1346
	bsrli	r6,r6,15
	rsubk	r10,r6,r3
	andi	r4,r10,0xffff
	cmpu	r18,r6,r3
	bgeid	r18,$L1437
	addik	r5,r0,1	# 0x1
	addk	r5,r0,r0
$L1437:
	cmpu	r18,r6,r3
	bgei	r18,$L1440
	addk	r4,r3,r0
$L1440:
	andi	r3,r4,0xffff
	or	r8,r5,r8
$L1346:
	bnei	r7,$L1451
	addk	r3,r8,r0
$L1451:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1561:
	addk	r9,r8,r0
	bneid	r8,$L1338
	addk	r6,r4,r0
$L1450:
	brid	$L1346
	addk	r3,r5,r0
$L1560:
	cmpu	r18,r6,r5
	bgeid	r18,$L1444
	rsubk	r8,r6,r5
	addk	r8,r5,r0
$L1444:
	andi	r4,r9,0xffff
	andi	r3,r8,0xffff
	cmpu	r18,r6,r5
	bgeid	r18,$L1592
	srl	r10,r9
	addk	r4,r0,r0
$L1592:
	andi	r12,r10,0xffff
	addk	r8,r4,r0
	bneid	r12,$L1448
	srl	r11,r6
	bri	$L1346
$L1566:
	brid	$L1394
	addk	r11,r4,r0
$L1565:
	addk	r5,r3,r0
$L1584:
	andi	r3,r5,0xffff
	beqid	r12,$L1394
	addik	r11,r0,0	# 0
	brid	$L1394
	addk	r11,r4,r0
$L1564:
	cmpu	r18,r11,r3
	bgeid	r18,$L1392
	addk	r12,r0,r0
	brid	$L1584
	addk	r5,r3,r0
$L1563:
	brid	$L1351
	addik	r10,r0,0	# 0
$L1562:
	addk	r3,r5,r0
	andi	r3,r3,0xffff
	cmpu	r18,r4,r5
	bgeid	r18,$L1351
	addk	r10,r8,r0
	brid	$L1351
	addik	r10,r0,0	# 0
$L1567:
	cmpu	r18,r11,r3
	bgeid	r18,$L1398
	addk	r4,r0,r0
	brid	$L1585
	addk	r5,r3,r0
$L1569:
	brid	$L1400
	addk	r11,r12,r0
$L1568:
	addk	r5,r3,r0
$L1585:
	andi	r3,r5,0xffff
	beqid	r4,$L1400
	addik	r11,r0,0	# 0
	brid	$L1400
	addk	r11,r12,r0
$L1572:
	brid	$L1406
	addk	r11,r4,r0
$L1571:
	addk	r5,r3,r0
$L1586:
	andi	r3,r5,0xffff
	beqid	r12,$L1406
	addik	r11,r0,0	# 0
	brid	$L1406
	addk	r11,r4,r0
$L1570:
	cmpu	r18,r11,r3
	bgeid	r18,$L1404
	addk	r12,r0,r0
	brid	$L1586
	addk	r5,r3,r0
$L1573:
	cmpu	r18,r11,r3
	bgeid	r18,$L1410
	addk	r4,r0,r0
	brid	$L1587
	addk	r5,r3,r0
$L1575:
	brid	$L1412
	addk	r11,r12,r0
$L1574:
	addk	r5,r3,r0
$L1587:
	andi	r3,r5,0xffff
	beqid	r4,$L1412
	addik	r11,r0,0	# 0
	brid	$L1412
	addk	r11,r12,r0
$L1577:
	addk	r5,r3,r0
$L1588:
	andi	r3,r5,0xffff
	beqid	r12,$L1418
	addik	r11,r0,0	# 0
	brid	$L1418
	addk	r11,r4,r0
$L1576:
	cmpu	r18,r11,r3
	bgeid	r18,$L1416
	addk	r12,r0,r0
	brid	$L1588
	addk	r5,r3,r0
$L1578:
	brid	$L1418
	addk	r11,r4,r0
$L1579:
	cmpu	r18,r11,r3
	bgeid	r18,$L1422
	addk	r4,r0,r0
	brid	$L1589
	addk	r5,r3,r0
$L1581:
	addk	r11,r12,r0
$L1590:
	bsrli	r12,r9,13
	or	r8,r8,r11
	andi	r4,r12,0xffff
	andi	r8,r8,0xffff
	bneid	r4,$L1582
	bsrli	r11,r6,13
	bri	$L1346
$L1580:
	addk	r5,r3,r0
$L1589:
	andi	r3,r5,0xffff
	beqid	r4,$L1424
	addik	r11,r0,0	# 0
	brid	$L1590
	addk	r11,r12,r0
$L1559:
	xor	r8,r6,r5
	rsubk	r4,r6,r5
	addik	r10,r8,-1
	andi	r3,r5,0xffff
	andi	r9,r4,0xffff
	bltid	r10,$L1583
	xor	r5,r6,r5
	addik	r6,r5,-1
$L1591:
	brid	$L1346
	bsrli	r8,r6,31
$L1583:
	andi	r3,r9,0xffff
	brid	$L1591
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
	bgeid	r18,$L1631
	addik	r4,r0,1	# 0x1
$L1594:
	bltid	r6,$L1641
	addk	r3,r0,r0
	addk	r4,r4,r4
	rsubk	r3,r4,r0
	addk	r6,r6,r6
	cmpu	r18,r5,r6
	bgeid	r18,$L1596
	or	r9,r3,r4
	blti	r9,$L1594
$L1596:
	beqi	r4,$L1614
	addk	r3,r0,r0
$L1641:
	addik	r1,r1,-8
	addk	r12,r3,r0
	swi	r19,r1,4
	addk	r19,r3,r0
	addik	r11,r0,1	# 0x1
$L1607:
	rsubk	r9,r6,r5
	cmpu	r18,r6,r5
	bgeid	r18,$L1601
	andi	r8,r11,0x00ff
	andi	r8,r19,0x00ff
$L1601:
	cmpu	r18,r6,r5
	bgeid	r18,$L1642
	addk	r10,r12,r0
	addk	r9,r5,r0
$L1642:
	addk	r5,r9,r0
	beqid	r8,$L1606
	srl	r6,r6
	addk	r10,r4,r0
$L1606:
	srl	r4,r4
	bneid	r4,$L1607
	or	r3,r3,r10
	beqid	r7,$L1643
	lwi	r19,r1,4
	addk	r3,r5,r0
$L1643:
	rtsd	r15,8 
	
	addik	r1,r1,8
$L1614:
	bneid	r7,$L1637
	addk	r3,r4,r0
$L1644:
	rtsd	r15, 8
	nop		# Unfilled delay slot

$L1631:
	cmpu	r18,r6,r5
	bltid	r18,$L1638
	rsubk	r8,r6,r5
$L1609:
	cmpu	r18,r6,r5
	bltid	r18,$L1639
	andi	r3,r4,0x00ff
	addk	r5,r8,r0
$L1640:
	beqi	r7,$L1644
$L1637:
	rtsd	r15, 8
	
	addk	r3,r5,r0
$L1639:
	addk	r8,r5,r0
	brid	$L1640
	addk	r5,r8,r0
$L1638:
	brid	$L1609
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
	beqid	r3,$L1646
	bsll	r3,r6,r7
	addk	r6,r0,r0
	rtsd	r15,8 
	
	addk	r4,r6,r0
$L1646:
	beqid	r7,$L1649
	addk	r3,r5,r0
	addik	r4,r0,32	# 0x20
	rsubk	r8,r7,r4
	bsrl	r9,r6,r8
	bsll	r5,r5,r7
	bsll	r6,r6,r7
	or	r3,r9,r5
	rtsd	r15,8 
	
	addk	r4,r6,r0
$L1649:
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
	beqid	r3,$L1652
	bsrai	r3,r5,31
	rtsd	r15,8 
	
	bsra	r4,r5,r7
$L1652:
	beqid	r7,$L1655
	bsra	r3,r5,r7
	addik	r4,r0,32	# 0x20
	rsubk	r8,r7,r4
	bsll	r9,r5,r8
	bsrl	r6,r6,r7
	rtsd	r15,8 
	
	or	r4,r9,r6
$L1655:
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
	bsrli	r9,r5,8
	bsrli	r4,r5,24
	bslli	r8,r5,8
	bsrli	r7,r6,8
	bsrli	r10,r6,24
	bslli	r3,r6,24
	bslli	r6,r6,8
	bslli	r5,r5,24
	andi	r11,r9,65280 #and2
	or	r3,r3,r10
	andi	r9,r8,16711680 #and2
	or	r12,r4,r11
	andi	r8,r7,65280 #and2
	or	r4,r12,r9
	or	r7,r3,r8
	andi	r10,r6,16711680 #and2
	or	r3,r7,r10
	rtsd	r15,8 
	
	or	r4,r4,r5
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
	bsrli	r3,r5,24
	bslli	r6,r5,24
	bsrli	r4,r5,8
	bslli	r5,r5,8
	or	r7,r3,r6
	andi	r8,r4,65280 #and2
	or	r9,r7,r8
	andi	r10,r5,16711680 #and2
	rtsd	r15,8 
	
	or	r3,r9,r10
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
	bgeid	r18,$L1659
	addik	r6,r0,1	# 0x1
	addk	r6,r0,r0
$L1659:
	bslli	r7,r6,4
	addik	r4,r0,16	# 0x10
	rsubk	r8,r7,r4
	bsrl	r9,r5,r8
	andi	r5,r9,65280 #and2
	rsubk	r10,r5,r0
	or	r11,r10,r5
	xori	r12,r11,-1
	bsrli	r3,r12,31
	bslli	r6,r3,3
	addik	r4,r0,8	# 0x8
	rsubk	r8,r6,r4
	bsrl	r9,r9,r8
	andi	r10,r9,240 #and1
	rsubk	r5,r10,r0
	or	r11,r5,r10
	xori	r12,r11,-1
	bsrli	r3,r12,31
	bslli	r10,r3,2
	addk	r7,r6,r7
	addik	r6,r0,4	# 0x4
	rsubk	r4,r10,r6
	bsrl	r11,r9,r4
	andi	r9,r11,12 #and1
	addk	r12,r10,r7
	rsubk	r7,r9,r0
	or	r5,r7,r9
	xori	r3,r5,-1
	bsrli	r10,r3,31
	addik	r9,r0,2	# 0x2
	addk	r6,r10,r10
	rsubk	r4,r6,r9
	bsrl	r11,r11,r4
	srl	r7,r11
	andi	r5,r7,1 #and1
	xori	r3,r5,1
	beqid	r3,$L1661
	addk	r8,r0,r0
	rsubk	r8,r11,r9
$L1661:
	addk	r12,r6,r12
	rtsd	r15,8 
	
	addk	r3,r8,r12
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
	blti	r18,$L1667
	cmp	r18,r5,r7
	blti	r18,$L1668
	cmpu	r18,r8,r6
	blti	r18,$L1667
	cmpu	r18,r6,r8
	blti	r18,$L1668
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1667:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1668:
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
	blti	r18,$L1674
	cmp	r18,r5,r7
	blti	r18,$L1673
	cmpu	r18,r8,r6
	blti	r18,$L1674
	cmpu	r18,r6,r8
	bgeid	r18,$L1675
	addik	r3,r0,1	# 0x1
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1674:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
$L1675:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1673:
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
	andi	r3,r5,65535 #and2
	rsubk	r6,r3,r0
	or	r4,r6,r3
	xori	r7,r4,-1
	bsrli	r8,r7,31
	bslli	r9,r8,4
	bsrl	r10,r5,r9
	andi	r5,r10,255 #and1
	rsubk	r11,r5,r0
	or	r12,r11,r5
	xori	r3,r12,-1
	bsrli	r6,r3,31
	bslli	r7,r6,3
	bsrl	r4,r10,r7
	addk	r8,r7,r9
	andi	r9,r4,15 #and1
	rsubk	r10,r9,r0
	or	r5,r10,r9
	xori	r11,r5,-1
	bsrli	r12,r11,31
	bslli	r3,r12,2
	bsrl	r7,r4,r3
	andi	r6,r7,3 #and1
	rsubk	r4,r6,r0
	or	r9,r4,r6
	xori	r10,r9,-1
	bsrli	r5,r10,31
	addk	r11,r5,r5
	bsrl	r12,r7,r11
	addk	r8,r3,r8
	andi	r7,r12,3 #and1
	addk	r3,r11,r8
	xori	r8,r7,-1
	andi	r9,r8,1 #and1
	srl	r4,r7
	addik	r6,r0,2	# 0x2
	rsubk	r10,r4,r6
	rsubk	r5,r9,r0
	and	r11,r5,r10
	rtsd	r15,8 
	
	addk	r3,r11,r3
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
	beqid	r3,$L1678
	bsrl	r4,r5,r7
	addk	r5,r0,r0
	addk	r3,r5,r0
$L1680:
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1678:
	beqi	r7,$L1681
	addik	r4,r0,32	# 0x20
	rsubk	r8,r7,r4
	bsll	r9,r5,r8
	bsrl	r6,r6,r7
	bsrl	r5,r5,r7
	or	r4,r9,r6
	brid	$L1680
	addk	r3,r5,r0
$L1681:
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
	.frame	r1,52,r15		# vars= 0, regs= 6, args= 24
	.mask	0x07c88000
	addik	r1,r1,-52
	swi	r19,r1,28
	swi	r23,r1,36
	swi	r25,r1,44
	andi	r19,r6,65535 #and2
	andi	r25,r5,65535 #and2
	addk	r23,r5,r0
	swi	r24,r1,40
	addk	r5,r25,r0
	addk	r24,r6,r0
	addk	r6,r19,r0
	bsrli	r23,r23,16
	bsrli	r24,r24,16
	swi	r15,r1,0
	swi	r22,r1,32
	brlid	r15,__mulsi3
	
	swi	r26,r1,48
	addk	r5,r19,r0
	addk	r6,r23,r0
	bsrli	r26,r3,16
	brlid	r15,__mulsi3
	
	addk	r19,r3,r0
	addk	r22,r3,r26
	bslli	r3,r22,16
	bsrli	r26,r22,16
	addk	r5,r25,r0
	addk	r6,r24,r0
	andi	r4,r19,65535 #and2
	bsrli	r25,r3,16
	brlid	r15,__mulsi3
	
	addk	r19,r4,r3
	addk	r6,r24,r0
	addk	r5,r23,r0
	addk	r23,r3,r25
	bslli	r7,r23,16
	andi	r8,r19,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r24,r8,r7
	addk	r4,r24,r0
	bsrli	r5,r23,16
	addk	r6,r26,r3
	lwi	r15,r1,0
	lwi	r19,r1,28
	lwi	r22,r1,32
	lwi	r23,r1,36
	lwi	r24,r1,40
	lwi	r25,r1,44
	lwi	r26,r1,48
	addk	r3,r6,r5
	rtsd	r15,8 
	
	addik	r1,r1,52
	.end	__muldsi3
$Lfe141:
	.size	__muldsi3,$Lfe141-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.ent	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.frame	r1,64,r15		# vars= 0, regs= 9, args= 24
	.mask	0x3fc88000
	addik	r1,r1,-64
	swi	r19,r1,28
	swi	r22,r1,32
	swi	r25,r1,44
	andi	r19,r8,65535 #and2
	addk	r25,r6,r0
	andi	r22,r6,65535 #and2
	swi	r24,r1,40
	addk	r6,r19,r0
	addk	r24,r5,r0
	addk	r5,r22,r0
	swi	r28,r1,56
	bsrli	r28,r25,16
	swi	r15,r1,0
	swi	r23,r1,36
	swi	r26,r1,48
	swi	r27,r1,52
	swi	r29,r1,60
	addk	r23,r8,r0
	brlid	r15,__mulsi3
	
	addk	r26,r7,r0
	addk	r5,r19,r0
	addk	r6,r28,r0
	addk	r29,r3,r0
	brlid	r15,__mulsi3
	
	bsrli	r27,r3,16
	andi	r4,r29,65535 #and2
	bsrli	r29,r23,16
	addk	r19,r3,r27
	bslli	r3,r19,16
	addk	r5,r22,r0
	addk	r6,r29,r0
	bsrli	r27,r3,16
	brlid	r15,__mulsi3
	
	addk	r22,r4,r3
	addk	r27,r3,r27
	addk	r6,r29,r0
	addk	r5,r28,r0
	bslli	r8,r27,16
	bsrli	r28,r19,16
	andi	r7,r22,65535 #and2
	brlid	r15,__mulsi3
	
	addk	r22,r7,r8
	addk	r6,r26,r0
	addk	r5,r25,r0
	bsrli	r9,r27,16
	addk	r10,r28,r3
	brlid	r15,__mulsi3
	
	addk	r25,r10,r9
	addk	r6,r24,r0
	addk	r5,r23,r0
	brlid	r15,__mulsi3
	
	addk	r24,r3,r25
	addk	r4,r22,r0
	addk	r3,r24,r3
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
	bsrli	r4,r5,16
	xor	r6,r4,r5
	bsrli	r7,r6,8
	xor	r8,r7,r6
	bsrli	r9,r8,4
	xor	r10,r9,r8
	addik	r3,r0,27030	# 0x6996
	andi	r11,r10,15 #and1
	bsra	r12,r3,r11
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
	bsrli	r4,r5,16
	xor	r6,r4,r5
	bsrli	r5,r6,8
	xor	r7,r5,r6
	bsrli	r8,r7,4
	xor	r9,r8,r7
	addik	r3,r0,27030	# 0x6996
	andi	r10,r9,15 #and1
	bsra	r11,r3,r10
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
	bsrli	r9,r7,2
	bsrli	r8,r6,2
	andi	r5,r9,858993459 #and2
	andi	r4,r8,858993459 #and2
	andi	r10,r6,858993459 #and2
	andi	r11,r7,858993459 #and2
	add	r11,r5,r11
	addc	r10,r4,r10
	bslli	r4,r10,28
	bsrli	r5,r11,4
	or	r5,r4,r5
	bsrli	r4,r10,4
	add	r5,r5,r11
	addc	r4,r4,r10
	andi	r7,r4,252645135 #and2
	andi	r12,r5,252645135 #and2
	addk	r22,r7,r12
	bsrli	r23,r22,16
	addk	r10,r23,r22
	bsrli	r11,r10,8
	lwi	r22,r1,4
	lwi	r23,r1,8
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
	bsrli	r6,r5,2
	andi	r7,r5,858993459 #and2
	andi	r8,r6,858993459 #and2
	addk	r9,r8,r7
	bsrli	r10,r9,4
	addk	r11,r10,r9
	andi	r12,r11,252645135 #and2
	bsrli	r3,r12,16
	addk	r4,r3,r12
	bsrli	r5,r4,8
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
	addk	r24,r5,r0
	addk	r25,r6,r0
	addk	r26,r7,r0
	addik	r22,r0,0x3ff00000 
	addik	r23,r0,0x00000000 #Xfer Lo
	beqid	r3,$L1693
	addk	r19,r7,r0
$L1695:
	addk	r5,r22,r0
	addk	r6,r23,r0
	addk	r7,r24,r0
	brlid	r15,__muldf3
	
	addk	r8,r25,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
$L1693:
	bsrli	r4,r19,31
	addk	r5,r4,r19
	sra	r19,r5
	beqi	r19,$L1694
$L1696:
	addk	r7,r24,r0
	addk	r8,r25,r0
	addk	r6,r25,r0
	brlid	r15,__muldf3
	
	addk	r5,r24,r0
	bsrli	r6,r19,31
	andi	r7,r19,1 #and1
	addk	r24,r3,r0
	addk	r25,r4,r0
	bneid	r7,$L1695
	addk	r8,r6,r19
	brid	$L1696
	sra	r19,r8
$L1694:
	bgeid	r26,$L1700
	addk	r3,r22,r0
	addk	r7,r22,r0
	addik	r5,r0,0x3ff00000 
	addik	r6,r0,0x00000000 #Xfer Lo
	brlid	r15,__divdf3
	
	addk	r8,r23,r0
	addk	r22,r3,r0
	addk	r23,r4,r0
	addk	r3,r22,r0
$L1700:
	addk	r4,r23,r0
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
	beqid	r3,$L1707
	addk	r11,r6,r0
	addik	r3,r0,0x3f800000
$L1704:
	fmul	r3,r3,r5
	bsrli	r7,r11,31
$L1711:
	addk	r4,r7,r11
	sra	r11,r4
	beqid	r11,$L1703
	bsrli	r9,r11,31
	fmul	r5,r5,r5
	andi	r8,r11,1 #and1
	bneid	r8,$L1704
	addk	r10,r9,r11
	sra	r11,r10
$L1710:
	bsrli	r9,r11,31
	fmul	r5,r5,r5
	andi	r8,r11,1 #and1
	bneid	r8,$L1704
	addk	r10,r9,r11
	brid	$L1710
	sra	r11,r10
$L1703:
	blti	r6,$L1709
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1707:
	addik	r3,r0,0x3f800000
	brid	$L1711
	bsrli	r7,r11,31
$L1709:
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
	blti	r18,$L1716
	cmpu	r18,r5,r7
	blti	r18,$L1717
	cmpu	r18,r8,r6
	blti	r18,$L1716
	cmpu	r18,r6,r8
	blti	r18,$L1717
	rtsd	r15,8 
	
	addik	r3,r0,1	# 0x1
$L1716:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1717:
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
	blti	r18,$L1723
	cmpu	r18,r5,r7
	blti	r18,$L1722
	cmpu	r18,r8,r6
	blti	r18,$L1723
	cmpu	r18,r6,r8
	bgeid	r18,$L1724
	addik	r3,r0,1	# 0x1
	rtsd	r15,8 
	nop		# Unfilled delay slot

$L1723:
	rtsd	r15,8 
	
	addik	r3,r0,-1	# 0xffffffffffffffff
$L1724:
	rtsd	r15,8 
	
	addk	r3,r0,r0
$L1722:
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
