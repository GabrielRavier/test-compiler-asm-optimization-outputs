	.file	"mini-libc.c"
	.section	.text
	.align	2
	.global	memmove
	.type	memmove, @function
memmove:
	mov.n	r2, r4
	bgeu	r5, r4, .L2
	add	r13, r5, r6
	add	r12, r4, r6
	beq	r6, zero, .L35
.L4:
	ldbu	r11, -1(r13)
	addi	r12, r12, -1
	addi	r13, r13, -1
	stb	r11, 0(r12)
	bne	r2, r12, .L4
	ret.n
.L2:
	beq	r4, r5, .L35
	beqz.n	r6, .L35
	subi.n	r3, r6, 1
	cmpltui	r7, r3, 7
	addi.n	r4, r5, 1
	bnez.n	r7, .L5
	or	r4, r5, r2
	andi	r8, r4, 3
	addi.n	r4, r5, 1
	bne	r8, zero, .L5
	sub	r9, r2, r4
	cmpgeui	r10, r9, 3
	beq	r10, zero, .L5
	push.n	{ra, r16}, 0
	andci	r16, r6, 65532
	mov.n	r13, r2
	add	r11, r5, r16
.L6:
	ldw	r12, 0(r5)
	addi.n	r5, r5, 4
	addi	r13, r13, 4
	stw	r12, -4(r13)
	bne	r11, r5, .L6
	add.n	r5, r2, r16
	sub	r14, r6, r16
	beq	r6, r16, .L3
	ldbu	r6, 0(r11)
	cmpeqi	r15, r14, 1
	stb.n	r6, 0(r5)
	bne	r15, zero, .L3
	ldbu	ra, 1(r11)
	cmpeqi	r3, r14, 2
	stb	ra, 1(r5)
	bnez.n	r3, .L3
	ldbu	r7, 2(r11)
	stb.n	r7, 2(r5)
.L3:
	pop.n	{r16, ra}, 0
.L35:
	ret.n
.L5:
	add	r8, r2, r6
	mov.n	r10, r2
.L9:
	ldbu	r9, -1(r4)
	addi	r10, r10, 1
	addi.n	r4, r4, 1
	stb	r9, -1(r10)
	bne	r10, r8, .L9
	ret.n
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
	andi.n	r6, r6, 0xff
	bnez.n	r7, .L40
	br.n	.L42
.L43:
	addi.n	r4, r4, 1
	beqz.n	r7, .L42
.L40:
	ldbu.n	r3, 0(r5)
	subi.n	r7, r7, 1
	addi.n	r5, r5, 1
	stb.n	r3, 0(r4)
	andi.n	r2, r3, 0xff
	bne	r2, r6, .L43
	addi.n	r2, r4, 1
	ret.n
.L42:
	mov.n	r2, zero
	ret.n
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
	andi.n	r5, r5, 0xff
	bnez.n	r6, .L51
	br.n	.L54
.L53:
	addi.n	r4, r4, 1
	beqz.n	r6, .L54
.L51:
	ldbu.n	r2, 0(r4)
	subi.n	r6, r6, 1
	bne	r2, r5, .L53
	mov.n	r2, r4
	ret.n
.L54:
	mov.n	r2, zero
	ret.n
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	beqz.n	r6, .L63
.L72:
	ldbu.n	r2, 0(r4)
	ldbu.n	r3, 0(r5)
	subi.n	r6, r6, 1
	addi.n	r4, r4, 1
	bne	r2, r3, .L71
	addi.n	r5, r5, 1
	bnez.n	r6, .L72
.L63:
	mov.n	r2, zero
	ret.n
.L71:
	sub.n	r2, r2, r3
	ret.n
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
	push.n	{ra, r16}, 0
	mov.n	r16, r4
	beqz.n	r6, .L74
	call	memcpy
.L74:
	mov.n	r2, r16
	pop.n	{r16, ra}, 0
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
	subi.n	r6, r6, 1
	add.n	r7, r4, r6
	andi.n	r5, r5, 0xff
	subi.n	r4, r4, 1
	br.n	.L80
.L82:
	ldbu.n	r3, 0(r2)
	subi.n	r7, r7, 1
	beq	r3, r5, .L79
.L80:
	mov.n	r2, r7
	bne	r7, r4, .L82
	mov.n	r2, zero
.L79:
	ret.n
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
	push.n	{ra, r16}, 0
	mov.n	r16, r4
	beqz.n	r6, .L86
	andi.n	r5, r5, 0xff
	call	memset
.L86:
	mov.n	r2, r16
	pop.n	{r16, ra}, 0
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	ldbu.n	r3, 0(r5)
	mov.n	r2, r4
	stb.n	r3, 0(r4)
	andi.n	r4, r3, 255
	xori	r6, r4, 128
	subi.n	r7, r6, 128
	beqz.n	r7, .L89
.L90:
	ldbu	r8, 1(r5)
	addi.n	r2, r2, 1
	addi.n	r5, r5, 1
	andi	r9, r8, 255
	xori	r10, r9, 128
	addi	r11, r10, -128
	stb	r8, 0(r2)
	bne	r11, zero, .L90
.L89:
	ret.n
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	ldbu	r8, 0(r4)
	mov.n	r2, r4
	andi.n	r5, r5, 0xff
	andi	r4, r8, 255
	xori	r6, r4, 128
	subi.n	r7, r6, 128
	bnez.n	r7, .L96
	ret.n
.L98:
	ldbu	r8, 1(r2)
	addi.n	r2, r2, 1
	andi	r9, r8, 255
	xori	r10, r9, 128
	addi	r11, r10, -128
	beq	r11, zero, .L95
.L96:
	andi	r3, r8, 0xff
	bne	r3, r5, .L98
.L95:
	ret.n
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	mov.n	r2, r4
	br.n	.L105
.L108:
	addi.n	r2, r2, 1
	beqz.n	r3, .L107
.L105:
	ldb	r3, 0(r2)
	bne	r3, r5, .L108
	ret.n
.L107:
	mov.n	r2, zero
	ret.n
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
.L112:
	ldbu.n	r2, 0(r4)
	ldbu.n	r6, 0(r5)
	andi.n	r3, r2, 255
	andi	r9, r6, 255
	xori	r7, r3, 128
	xori	r10, r9, 128
	addi	r8, r7, -128
	addi	r11, r10, -128
	bne	r8, r11, .L119
	addi.n	r4, r4, 1
	addi.n	r5, r5, 1
	bne	r8, zero, .L112
	mov.n	r4, zero
.L111:
	andi.n	r5, r6, 0xff
	sub.n	r2, r4, r5
	ret.n
.L119:
	andi.n	r4, r2, 0xff
	br.n	.L111
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	ldb	r2, 0(r4)
	beqz.n	r2, .L123
	mov.n	r5, r4
.L122:
	ldb	r3, 1(r5)
	addi.n	r5, r5, 1
	bnez.n	r3, .L122
	sub.n	r2, r5, r4
	ret.n
.L123:
	mov.n	r2, zero
	ret.n
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	beqz.n	r6, .L133
	ldbu.n	r2, 0(r4)
	beqz.n	r2, .L135
	subi.n	r6, r6, 1
	add	r8, r4, r6
	br.n	.L129
.L137:
	beq	r4, r8, .L128
	addi.n	r4, r4, 1
	bne	r3, r2, .L128
	ldbu.n	r2, 0(r4)
	beqz.n	r2, .L136
	mov.n	r5, r7
.L129:
	ldbu.n	r3, 0(r5)
	addi.n	r7, r5, 1
	bnez.n	r3, .L137
.L128:
	sub.n	r2, r2, r3
	ret.n
.L133:
	mov.n	r2, zero
	ret.n
.L136:
	ldbu.n	r3, 1(r5)
	sub.n	r2, r2, r3
	ret.n
.L135:
	ldbu.n	r3, 0(r5)
	br.n	.L128
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	cmplti	r2, r6, 2
	bnez.n	r2, .L138
	andci	r6, r6, 65534
	add.n	r7, r4, r6
.L140:
	ldbu.n	r3, 1(r4)
	ldbu	r8, 0(r4)
	addi.n	r4, r4, 2
	stb.n	r3, 0(r5)
	stb	r8, 1(r5)
	addi.n	r5, r5, 2
	bne	r4, r7, .L140
.L138:
	ret.n
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.type	isalpha, @function
isalpha:
	ori	r2, r4, 32
	addi	r3, r2, -97
	cmpltui	r2, r3, 26
	ret.n
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.type	isascii, @function
isascii:
	cmpltui	r2, r4, 128
	ret.n
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.type	isblank, @function
isblank:
	cmpeqi	r2, r4, 32
	bnez.n	r2, .L146
	cmpeqi	r2, r4, 9
	ret.n
.L146:
	movi.n	r2, 1
	ret.n
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpltui	r2, r4, 32
	bnez.n	r2, .L149
	cmpeqi	r2, r4, 127
	ret.n
.L149:
	movi.n	r2, 1
	ret.n
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.type	isdigit, @function
isdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	ret.n
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.type	isgraph, @function
isgraph:
	addi	r2, r4, -33
	cmpltui	r2, r2, 94
	ret.n
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.type	islower, @function
islower:
	addi	r2, r4, -97
	cmpltui	r2, r2, 26
	ret.n
	.size	islower, .-islower
	.align	2
	.global	isprint
	.type	isprint, @function
isprint:
	subi.n	r2, r4, 32
	cmpltui	r2, r2, 95
	ret.n
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.type	isspace, @function
isspace:
	cmpeqi	r2, r4, 32
	bnez.n	r2, .L156
	addi	r4, r4, -9
	cmpltui	r2, r4, 5
	ret.n
.L156:
	movi.n	r2, 1
	ret.n
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.type	isupper, @function
isupper:
	addi	r2, r4, -65
	cmpltui	r2, r2, 26
	ret.n
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmpltui	r2, r4, 32
	bnez.n	r2, .L162
	addi	r3, r4, -127
	cmpltui	r5, r3, 33
	beqz.n	r5, .L163
.L162:
	movi.n	r2, 1
	ret.n
.L163:
	addi	r6, r4, -8232
	cmpltui	r7, r6, 2
	bnez.n	r7, .L162
	movhi	r8, 65535
	addi	r9, r8, 7
	add	r4, r4, r9
	cmpltui	r2, r4, 3
	ret.n
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	ret.n
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.type	iswprint, @function
iswprint:
	cmpgeui	r2, r4, 255
	beqz.n	r2, .L172
	cmpltui	r3, r4, 8232
	bnez.n	r3, .L170
	addi	r5, r4, -8234
	cmpltui	r6, r5, 47062
	bnez.n	r6, .L170
	movhi	r7, 65535
	addi	r8, r7, 8192
	add	r9, r4, r8
	cmpltui	r10, r9, 8185
	bne	r10, zero, .L170
	movhi	r11, 65535
	addi	r12, r11, 4
	movhi	r13, 16
	add	r14, r4, r12
	addi	r15, r13, 3
	bltu	r15, r14, .L171
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret.n
.L170:
	movi.n	r2, 1
	ret.n
.L172:
	addi.n	r3, r4, 1
	andi.n	r5, r3, 127
	cmpgeui	r2, r5, 33
	ret.n
.L171:
	mov.n	r2, zero
	ret.n
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r3, r2, 10
	bnez.n	r3, .L175
	ori	r4, r4, 32
	addi	r5, r4, -97
	cmpltui	r2, r5, 6
	ret.n
.L175:
	movi.n	r2, 1
	ret.n
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.type	toascii, @function
toascii:
	andi.n	r2, r4, 127
	ret.n
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.type	fdim, @function
fdim:
	push.n	{ra, r19, r18, r17, r16}, 0
	mov.n	r16, r6
	mov.n	r17, r7
	mov.n	r6, r4
	mov.n	r7, r5
	mov.n	r18, r4
	mov.n	r19, r5
	call	__unorddf2
	bnez.n	r2, .L180
	mov.n	r6, r16
	mov.n	r7, r17
	mov.n	r4, r16
	mov.n	r5, r17
	call	__unorddf2
	bnez.n	r2, .L181
	custom	0, zero, r18, r19 # fwrx r18
	custom	18, r2, r16, r17 # fcmpgtd r2, r18, r16
	bnez.n	r2, .L186
	mov.n	r4, zero
	mov.n	r5, zero
.L177:
	mov.n	r2, r4
	mov.n	r3, r5
	pop.n	{r16, r17, r18, r19, ra}, 0
.L186:
	custom	0, zero, r18, r19 # fwrx r18
	custom	12, r5, r16, r17 # fsubd r4, r18, r16
	custom	4, r4, zero, zero # frdy r4
	mov.n	r2, r4
	mov.n	r3, r5
	pop.n	{r16, r17, r18, r19, ra}, 0
.L180:
	mov.n	r4, r18
	mov.n	r5, r19
	br.n	.L177
.L181:
	mov.n	r4, r16
	mov.n	r5, r17
	br.n	.L177
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
	push.n	{ra, r17, r16}, 0
	mov.n	r17, r5
	mov.n	r5, r4
	mov.n	r16, r4
	call	__unordsf2
	bnez.n	r2, .L190
	mov.n	r5, r17
	mov.n	r4, r17
	call	__unordsf2
	bnez.n	r2, .L191
	custom	246, r2, r16, r17 # fcmpgts r2, r16, r17
	beqz.n	r2, .L194
	custom	254, r2, r16, r17 # fsubs r2, r16, r17
	pop.n	{r16, r17, ra}, 0
.L194:
	mov.n	r2, zero
	pop.n	{r16, r17, ra}, 0
.L190:
	mov.n	r2, r16
	pop.n	{r16, r17, ra}, 0
.L191:
	mov.n	r2, r17
	pop.n	{r16, r17, ra}, 0
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
	push.n	{ra, r19, r18, r17, r16}, 0
	mov.n	r16, r6
	mov.n	r17, r7
	mov.n	r6, r4
	mov.n	r7, r5
	mov.n	r18, r4
	mov.n	r19, r5
	call	__unorddf2
	bnez.n	r2, .L203
	mov.n	r6, r16
	mov.n	r7, r17
	mov.n	r4, r16
	mov.n	r5, r17
	call	__unorddf2
	bnez.n	r2, .L202
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L198
	bnez.n	r2, .L203
.L202:
	mov.n	r2, r18
	mov.n	r3, r19
	pop.n	{r16, r17, r18, r19, ra}, 0
.L203:
	mov.n	r2, r16
	mov.n	r3, r17
	pop.n	{r16, r17, r18, r19, ra}, 0
.L198:
	custom	0, zero, r18, r19 # fwrx r18
	custom	20, r2, r16, r17 # fcmpltd r2, r18, r16
	beqz.n	r2, .L202
	br.n	.L203
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	push.n	{ra, r17, r16}, 0
	mov.n	r16, r5
	mov.n	r5, r4
	mov.n	r17, r4
	call	__unordsf2
	bnez.n	r2, .L214
	mov.n	r5, r16
	mov.n	r4, r16
	call	__unordsf2
	bnez.n	r2, .L213
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	bne	r2, r3, .L216
	custom	231, r4, r17, r16 # fcmplts r4, r17, r16
	bnez.n	r4, .L214
	mov.n	r16, r17
.L214:
	mov.n	r2, r16
	pop.n	{r16, r17, ra}, 0
.L216:
	bnez.n	r2, .L214
.L213:
	mov.n	r2, r17
	pop.n	{r16, r17, ra}, 0
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	push.n	{ra, r19, r18, r17, r16}, 0
	mov.n	r16, r6
	mov.n	r17, r7
	mov.n	r6, r4
	mov.n	r7, r5
	mov.n	r18, r4
	mov.n	r19, r5
	call	__unorddf2
	bnez.n	r2, .L224
	mov.n	r6, r16
	mov.n	r7, r17
	mov.n	r4, r16
	mov.n	r5, r17
	call	__unorddf2
	bnez.n	r2, .L223
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L219
	bnez.n	r2, .L224
.L223:
	mov.n	r2, r18
	mov.n	r3, r19
	pop.n	{r16, r17, r18, r19, ra}, 0
.L224:
	mov.n	r2, r16
	mov.n	r3, r17
	pop.n	{r16, r17, r18, r19, ra}, 0
.L219:
	custom	0, zero, r18, r19 # fwrx r18
	custom	20, r2, r16, r17 # fcmpltd r2, r18, r16
	beqz.n	r2, .L223
	br.n	.L224
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
	push.n	{ra, r19, r18, r17, r16}, 0
	mov.n	r16, r6
	mov.n	r17, r7
	mov.n	r6, r4
	mov.n	r7, r5
	mov.n	r18, r4
	mov.n	r19, r5
	call	__unorddf2
	bnez.n	r2, .L233
	mov.n	r6, r16
	mov.n	r7, r17
	mov.n	r4, r16
	mov.n	r5, r17
	call	__unorddf2
	bnez.n	r2, .L235
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L230
	bnez.n	r2, .L235
.L233:
	mov.n	r2, r16
	mov.n	r3, r17
	pop.n	{r16, r17, r18, r19, ra}, 0
.L235:
	mov.n	r2, r18
	mov.n	r3, r19
	pop.n	{r16, r17, r18, r19, ra}, 0
.L230:
	custom	0, zero, r18, r19 # fwrx r18
	custom	20, r2, r16, r17 # fcmpltd r2, r18, r16
	beqz.n	r2, .L233
	br.n	.L235
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
	push.n	{ra, r17, r16}, 0
	mov.n	r17, r5
	mov.n	r5, r4
	mov.n	r16, r4
	call	__unordsf2
	bnez.n	r2, .L244
	mov.n	r5, r17
	mov.n	r4, r17
	call	__unordsf2
	bnez.n	r2, .L246
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	bne	r2, r3, .L248
	custom	231, r4, r16, r17 # fcmplts r4, r16, r17
	bnez.n	r4, .L246
	mov.n	r16, r17
.L246:
	mov.n	r2, r16
	pop.n	{r16, r17, ra}, 0
.L248:
	bnez.n	r2, .L246
.L244:
	mov.n	r2, r17
	pop.n	{r16, r17, ra}, 0
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
	push.n	{ra, r19, r18, r17, r16}, 0
	mov.n	r16, r6
	mov.n	r17, r7
	mov.n	r6, r4
	mov.n	r7, r5
	mov.n	r18, r4
	mov.n	r19, r5
	call	__unorddf2
	bnez.n	r2, .L254
	mov.n	r6, r16
	mov.n	r7, r17
	mov.n	r4, r16
	mov.n	r5, r17
	call	__unorddf2
	bnez.n	r2, .L256
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L251
	bnez.n	r2, .L256
.L254:
	mov.n	r2, r16
	mov.n	r3, r17
	pop.n	{r16, r17, r18, r19, ra}, 0
.L256:
	mov.n	r2, r18
	mov.n	r3, r19
	pop.n	{r16, r17, r18, r19, ra}, 0
.L251:
	custom	0, zero, r18, r19 # fwrx r18
	custom	20, r2, r16, r17 # fcmpltd r2, r18, r16
	beqz.n	r2, .L254
	br.n	.L256
	.size	fminl, .-fminl
	.align	2
	.global	l64a
	.type	l64a, @function
l64a:
	addi	r3, gp, %gprel(s.0)
	beqz.n	r4, .L261
.L262:
	andi.n	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add.n	r6, r5, r2
	ldbu	r7, %lo(digits)(r6)
	srli	r4, r4, 6
	addi.n	r3, r3, 1
	stb	r7, -1(r3)
	bnez.n	r4, .L262
.L261:
	stbz.n	zero, 0(r3)
	addi	r2, gp, %gprel(s.0)
	ret.n
	.size	l64a, .-l64a
	.align	2
	.global	srand
	.type	srand, @function
srand:
	subi.n	r4, r4, 1
	stw	r4, %gprel(seed)(gp)
	stw	zero, %gprel(seed+4)(gp)
	ret.n
	.size	srand, .-srand
	.align	2
	.global	rand
	.type	rand, @function
rand:
	ldw	r4, %gprel(seed)(gp)
	ldw	r3, %gprel(seed+4)(gp)
	movhi	r6, 19605
	movhi	r5, 22610
	addi	r7, r6, 32557
	addi	r8, r5, -3027
	mul	r2, r4, r7
	mul	r10, r4, r8
	mul	r9, r3, r7
	mulxuu	r11, r4, r7
	addi	r12, r2, 1
	add	r13, r9, r10
	cmpltu	r15, r12, r2
	add	r14, r13, r11
	add	r4, r15, r14
	srli.n	r2, r4, 1
	stw	r12, %gprel(seed)(gp)
	stw	r4, %gprel(seed+4)(gp)
	ret.n
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
	beqz.n	r5, .L273
	ldw.n	r2, 0(r5)
	stw.n	r5, 4(r4)
	stw.n	r2, 0(r4)
	stw.n	r4, 0(r5)
	ldw.n	r3, 0(r4)
	beqz.n	r3, .L267
	stw.n	r4, 4(r3)
.L267:
	ret.n
.L273:
	stwz.n	zero, 4(r4)
	stwz.n	zero, 0(r4)
	ret.n
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw.n	r2, 0(r4)
	beqz.n	r2, .L275
	ldw.n	r3, 4(r4)
	stw.n	r3, 4(r2)
.L275:
	ldw.n	r4, 4(r4)
	beqz.n	r4, .L274
	stw.n	r2, 0(r4)
.L274:
	ret.n
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
	push.n	{ra, fp, r21, r20, r19, r18, r17, r16}, 8
	ldw.n	r17, 0(r6)
	stwsp.n	r6, 4(sp)
	stwsp.n	r5, 0(sp)
	ldwsp.n	r20, 40(sp)
	mov.n	r18, r4
	mov.n	r16, r7
	beqz.n	r17, .L284
	mov.n	r21, r5
	mov	fp, zero
	br.n	.L286
.L299:
	add	r21, r21, r16
	beq	r17, fp, .L284
.L286:
	mov.n	r5, r21
	mov.n	r4, r18
	callr.n	r20
	mov.n	r19, r21
	addi	fp, fp, 1
	bnez.n	r2, .L299
.L283:
	mov.n	r2, r19
	pop.n	{r16, r17, r18, r19, r20, r21, fp, ra}, 8
.L284:
	ldwsp.n	r2, 4(sp)
	mul	r19, r16, r17
	ldwsp.n	r4, 0(sp)
	addi.n	r3, r17, 1
	stw.n	r3, 0(r2)
	add	r19, r4, r19
	beqz.n	r16, .L283
	mov.n	r6, r16
	mov.n	r5, r18
	mov.n	r4, r19
	call	memmove
	mov.n	r2, r19
	pop.n	{r16, r17, r18, r19, r20, r21, fp, ra}, 8
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
	push.n	{ra, fp, r21, r20, r19, r18, r17, r16}, 0
	ldw	r19, 0(r6)
	ldwsp.n	r20, 32(sp)
	beq	r19, zero, .L301
	mov.n	r18, r4
	mov.n	r21, r7
	mov.n	r16, r5
	mov.n	r17, zero
	br.n	.L303
.L312:
	add	r16, r16, r21
	beq	r19, r17, .L301
.L303:
	mov.n	r5, r16
	mov.n	r4, r18
	callr.n	r20
	mov.n	fp, r16
	addi.n	r17, r17, 1
	bnez.n	r2, .L312
	mov.n	r2, fp
	pop.n	{r16, r17, r18, r19, r20, r21, fp, ra}, 0
.L301:
	mov	fp, zero
	mov.n	r2, fp
	pop.n	{r16, r17, r18, r19, r20, r21, fp, ra}, 0
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	mov.n	r2, r4
	blt	r4, zero, .L315
	ret.n
.L315:
	neg.n	r2, r4
	ret.n
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
	push.n	{ra, r16}, 0
.L323:
	ldb	r3, 0(r4)
	cmpeqi	r5, r3, 32
	bnez.n	r5, .L317
	addi	r2, r3, -9
	cmpltui	r6, r2, 5
	bnez.n	r6, .L317
	cmpeqi	r7, r3, 43
	bnez.n	r7, .L318
	cmpeqi	r9, r3, 45
	beq	r9, zero, .L339
	ldb	r3, 1(r4)
	addi.n	r4, r4, 1
	addi	r10, r3, -48
	cmpgeui	r11, r10, 10
	bne	r11, zero, .L328
	movi.n	r16, 1
.L321:
	mov.n	r2, zero
.L325:
	addi.n	r4, r4, 1
	addi	r13, r3, -48
	ldb	r3, 0(r4)
	muli	r14, r2, 10
	addi	r15, r3, -48
	cmpltui	ra, r15, 10
	sub	r2, r14, r13
	bne	ra, zero, .L325
	bnez.n	r16, .L316
	sub	r2, r13, r14
.L316:
	pop.n	{r16, ra}, 0
.L317:
	addi.n	r4, r4, 1
	br.n	.L323
.L339:
	addi	r12, r3, -48
	cmpltui	r2, r12, 10
	mov.n	r16, zero
	bnez.n	r2, .L321
	pop.n	{r16, ra}, 0
.L318:
	ldb	r3, 1(r4)
	mov.n	r16, zero
	addi.n	r4, r4, 1
	addi	r8, r3, -48
	cmpltui	r2, r8, 10
	bnez.n	r2, .L321
	pop.n	{r16, ra}, 0
.L328:
	mov.n	r2, zero
	pop.n	{r16, ra}, 0
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
	push.n	{ra, r16}, 0
.L345:
	ldb	r3, 0(r4)
	cmpeqi	r5, r3, 32
	bnez.n	r5, .L341
	addi	r2, r3, -9
	cmpltui	r6, r2, 5
	bnez.n	r6, .L341
	cmpeqi	r7, r3, 43
	bnez.n	r7, .L342
	cmpeqi	r10, r3, 45
	bne	r10, zero, .L343
	addi	r12, r3, -48
	cmpltui	r2, r12, 10
	beqz.n	r2, .L340
.L353:
	mov.n	r16, zero
.L346:
	mov.n	r2, zero
.L349:
	addi.n	r4, r4, 1
	addi	r13, r3, -48
	ldb	r3, 0(r4)
	muli	r14, r2, 10
	addi	r15, r3, -48
	cmpltui	ra, r15, 10
	sub	r2, r14, r13
	bne	ra, zero, .L349
	bnez.n	r16, .L340
	sub	r2, r13, r14
.L340:
	pop.n	{r16, ra}, 0
.L341:
	addi.n	r4, r4, 1
	br.n	.L345
.L343:
	ldb	r3, 1(r4)
	movi.n	r16, 1
	addi.n	r4, r4, 1
	addi	r11, r3, -48
	cmpltui	r2, r11, 10
	bnez.n	r2, .L346
	pop.n	{r16, ra}, 0
.L342:
	ldb	r3, 1(r4)
	addi.n	r4, r4, 1
	addi	r8, r3, -48
	cmpgeui	r9, r8, 10
	beq	r9, zero, .L353
	mov.n	r2, zero
	pop.n	{r16, ra}, 0
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
.L370:
	ldb	r5, 0(r4)
	cmpeqi	r3, r5, 32
	bne	r3, zero, .L364
	addi	r2, r5, -9
	cmpltui	r6, r2, 5
	bnez.n	r6, .L364
	cmpeqi	r7, r5, 43
	bne	r7, zero, .L365
	cmpeqi	r9, r5, 45
	beq	r9, zero, .L389
	ldb	r5, 1(r4)
	addi.n	r4, r4, 1
	addi	r10, r5, -48
	cmpgeui	r11, r10, 10
	bne	r11, zero, .L375
	movi	r13, 1
.L368:
	push.n	{ra, r17, r16}, 0
	mov.n	r2, zero
	mov.n	r3, zero
	movi	r14, 10
.L372:
	addi.n	r4, r4, 1
	addi	r16, r5, -48
	muli	r17, r2, 10
	muli	r15, r3, 10
	mulxuu	ra, r2, r14
	ldb	r5, 0(r4)
	srai	r8, r16, 31
	sub.n	r2, r17, r16
	add	r6, r15, ra
	addi	r7, r5, -48
	cmpltu	r9, r17, r2
	sub	r3, r6, r8
	cmpltui	r10, r7, 10
	sub	r3, r3, r9
	bne	r10, zero, .L372
	bne	r13, zero, .L363
	sub.n	r2, r16, r17
	cmpltu	r4, r16, r2
	sub	r5, r8, r6
	sub.n	r3, r5, r4
.L363:
	pop.n	{r16, r17, ra}, 0
.L364:
	addi.n	r4, r4, 1
	br.n	.L370
.L389:
	addi	r12, r5, -48
	cmpltui	r2, r12, 10
	mov	r13, zero
	bnez.n	r2, .L368
.L388:
	mov.n	r3, zero
	ret.n
.L365:
	ldb	r5, 1(r4)
	mov	r13, zero
	addi.n	r4, r4, 1
	addi	r8, r5, -48
	cmpltui	r2, r8, 10
	bnez.n	r2, .L368
	br.n	.L388
.L375:
	mov.n	r2, zero
	br.n	.L388
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.type	bsearch, @function
bsearch:
	push.n	{ra, fp, r21, r20, r19, r18, r17, r16}, 0
	ldwsp.n	r21, 32(sp)
	beqz.n	r6, .L391
	mov.n	r16, r6
	mov.n	r20, r4
	mov.n	r18, r5
	mov.n	r19, r7
.L394:
	srli	fp, r16, 1
	mov.n	r4, r20
	subi.n	r16, r16, 1
	mul	r17, fp, r19
	add	r17, r18, r17
	mov.n	r5, r17
	callr.n	r21
	blt	r2, zero, .L395
	beqz.n	r2, .L390
	sub	r16, r16, fp
	add	r18, r17, r19
	bnez.n	r16, .L394
.L391:
	mov.n	r17, zero
.L390:
	mov.n	r2, r17
	pop.n	{r16, r17, r18, r19, r20, r21, fp, ra}, 0
.L395:
	mov.n	r16, fp
	bnez.n	r16, .L394
	br.n	.L391
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	push.n	{ra, fp, r21, r20, r19, r18, r17, r16}, 0
	ldwsp.n	r20, 32(sp)
	mov.n	r16, r6
	mov.n	r19, r4
	mov.n	r17, r5
	mov.n	r18, r7
	beqz.n	r6, .L409
.L417:
	srai	r21, r16, 1
	ldwsp.n	r6, 36(sp)
	mov.n	r4, r19
	mul	fp, r21, r18
	subi.n	r16, r16, 1
	srai	r16, r16, 1
	add	fp, r17, fp
	mov.n	r5, fp
	callr.n	r20
	beqz.n	r2, .L404
	bge	zero, r2, .L407
	add	r17, fp, r18
	bnez.n	r16, .L417
.L409:
	mov	fp, zero
.L404:
	mov.n	r2, fp
	pop.n	{r16, r17, r18, r19, r20, r21, fp, ra}, 0
.L407:
	beq	r21, zero, .L409
	mov.n	r16, r21
	br.n	.L417
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
	div	r2, r4, r5
	mul	r5, r2, r5
	sub.n	r3, r4, r5
	ret.n
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	mov.n	r3, r5
	mov.n	r2, r4
	blt	r5, zero, .L424
	ret.n
.L424:
	cmpne	r4, r4, zero
	neg.n	r3, r5
	sub.n	r3, r3, r4
	neg.n	r2, r2
	ret.n
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	spdeci.n	4
	push.n	{ra, r20, r19, r18, r17, r16}, 0
	ldwsp.n	r20, 28(sp)
	mov.n	r17, r6
	mov.n	r16, r4
	mov.n	r18, r5
	mov.n	r19, r7
	mov.n	r6, r7
	mov.n	r4, r5
	mov.n	r7, r20
	mov.n	r5, r17
	call	__divdi3
	stw.n	r2, 0(r16)
	stw.n	r3, 4(r16)
	mov.n	r6, r19
	mov.n	r7, r20
	mov.n	r4, r18
	mov.n	r5, r17
	call	__moddi3
	stw.n	r2, 8(r16)
	mov.n	r2, r16
	stw.n	r3, 12(r16)
	ldwm	{r16, r17, r18, r19, r20, ra}, (sp)++, writeback
	spinci.n	4
	ret.n
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
	mov.n	r2, r4
	blt	r4, zero, .L429
	ret.n
.L429:
	neg.n	r2, r4
	ret.n
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
	div	r2, r4, r5
	mul	r5, r2, r5
	sub.n	r3, r4, r5
	ret.n
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
	mov.n	r3, r5
	mov.n	r2, r4
	blt	r5, zero, .L434
	ret.n
.L434:
	cmpne	r4, r4, zero
	neg.n	r3, r5
	sub.n	r3, r3, r4
	neg.n	r2, r2
	ret.n
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
	spdeci.n	4
	push.n	{ra, r20, r19, r18, r17, r16}, 0
	ldwsp.n	r20, 28(sp)
	mov.n	r17, r6
	mov.n	r16, r4
	mov.n	r18, r5
	mov.n	r19, r7
	mov.n	r6, r7
	mov.n	r4, r5
	mov.n	r7, r20
	mov.n	r5, r17
	call	__divdi3
	stw.n	r2, 0(r16)
	stw.n	r3, 4(r16)
	mov.n	r6, r19
	mov.n	r7, r20
	mov.n	r4, r18
	mov.n	r5, r17
	call	__moddi3
	stw.n	r2, 8(r16)
	mov.n	r2, r16
	stw.n	r3, 12(r16)
	ldwm	{r16, r17, r18, r19, r20, ra}, (sp)++, writeback
	spinci.n	4
	ret.n
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
	ldw.n	r2, 0(r4)
	beqz.n	r2, .L445
.L438:
	beq	r5, r2, .L446
	ldw.n	r2, 4(r4)
	addi.n	r4, r4, 4
	bnez.n	r2, .L438
	mov.n	r2, zero
	ret.n
.L446:
	mov.n	r2, r4
	ret.n
.L445:
	ret.n
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
.L450:
	ldw.n	r3, 0(r4)
	ldw.n	r2, 0(r5)
	bne	r3, r2, .L449
	addi.n	r4, r4, 4
	addi.n	r5, r5, 4
	bnez.n	r3, .L450
.L449:
	blt	r3, r2, .L452
	cmplt	r2, r2, r3
	ret.n
.L452:
	movi.n	r2, -1
	ret.n
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov.n	r2, r4
	mov.n	r3, r4
.L457:
	ldw.n	r6, 0(r5)
	addi.n	r3, r3, 4
	addi.n	r5, r5, 4
	stw	r6, -4(r3)
	bnez.n	r6, .L457
	ret.n
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw.n	r2, 0(r4)
	beqz.n	r2, .L462
	mov.n	r5, r4
.L461:
	ldw.n	r3, 4(r5)
	addi.n	r5, r5, 4
	bnez.n	r3, .L461
	sub.n	r4, r5, r4
	srai	r2, r4, 2
	ret.n
.L462:
	mov.n	r2, zero
	ret.n
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beqz.n	r6, .L470
.L476:
	ldw.n	r2, 0(r4)
	ldw.n	r3, 0(r5)
	subi.n	r6, r6, 1
	bne	r2, r3, .L467
	beqz.n	r2, .L467
	addi.n	r4, r4, 4
	addi.n	r5, r5, 4
	bnez.n	r6, .L476
.L470:
	mov.n	r2, zero
	ret.n
.L467:
	ldw.n	r4, 0(r4)
	ldw.n	r5, 0(r5)
	blt	r4, r5, .L477
	cmplt	r2, r5, r4
	ret.n
.L477:
	movi.n	r2, -1
	ret.n
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beqz.n	r6, .L482
.L489:
	ldw.n	r2, 0(r4)
	subi.n	r6, r6, 1
	beq	r2, r5, .L488
	addi.n	r4, r4, 4
	bnez.n	r6, .L489
.L482:
	mov.n	r2, zero
	ret.n
.L488:
	mov.n	r2, r4
	ret.n
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beqz.n	r6, .L496
.L505:
	ldw.n	r3, 0(r4)
	ldw.n	r2, 0(r5)
	subi.n	r6, r6, 1
	addi.n	r4, r4, 4
	bne	r3, r2, .L504
	addi.n	r5, r5, 4
	bnez.n	r6, .L505
.L496:
	mov.n	r2, zero
	ret.n
.L504:
	blt	r3, r2, .L506
	cmplt	r2, r2, r3
	ret.n
.L506:
	movi.n	r2, -1
	ret.n
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	push.n	{ra, r16}, 0
	mov.n	r16, r4
	beqz.n	r6, .L508
	slli.n	r6, r6, 2
	call	memcpy
.L508:
	mov.n	r2, r16
	pop.n	{r16, ra}, 0
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	mov.n	r2, r4
	beq	r4, r5, .L529
	slli.n	r4, r6, 2
	push.n	{ra, r16}, 0
	sub.n	r7, r2, r5
	subi.n	r3, r6, 1
	bgeu	r7, r4, .L532
	beqz.n	r6, .L521
	slli	r9, r3, 2
	add	r13, r5, r9
	add	r12, r2, r9
.L518:
	ldw	r10, 0(r13)
	mov.n	r11, r13
	addi	r12, r12, -4
	stw	r10, 4(r12)
	addi	r13, r13, -4
	bne	r5, r11, .L518
.L521:
	pop.n	{r16, ra}, 0
.L532:
	mov.n	r8, r2
	beqz.n	r6, .L521
.L516:
	ldw.n	r16, 0(r5)
	subi.n	r3, r3, 1
	cmpnei	r6, r3, -1
	stw	r16, 0(r8)
	addi.n	r5, r5, 4
	addi	r8, r8, 4
	bnez.n	r6, .L516
	pop.n	{r16, ra}, 0
.L529:
	ret.n
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov.n	r2, r4
	subi.n	r3, r6, 1
	beqz.n	r6, .L534
	mov.n	r6, r4
.L535:
	subi.n	r3, r3, 1
	stw.n	r5, 0(r6)
	cmpnei	r7, r3, -1
	addi.n	r6, r6, 4
	bnez.n	r7, .L535
.L534:
	ret.n
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L541
	add	r10, r4, r6
	add	r11, r5, r6
	beq	r6, zero, .L574
.L543:
	ldbu	r9, -1(r10)
	addi	r10, r10, -1
	addi	r11, r11, -1
	stb	r9, 0(r11)
	bne	r4, r10, .L543
	ret.n
.L541:
	beq	r4, r5, .L574
	beq	r6, zero, .L574
	subi.n	r2, r6, 1
	cmpltui	r3, r2, 7
	bnez.n	r3, .L577
	or	r7, r5, r4
	andi	r8, r7, 3
	bne	r8, zero, .L577
	addi	r8, r4, 1
	sub	r9, r5, r8
	cmpgeui	r10, r9, 3
	beq	r10, zero, .L544
	push.n	{ra, r16}, 0
	andci	r16, r6, 65532
	mov.n	r13, r5
	add	r11, r4, r16
.L545:
	ldw	r12, 0(r4)
	addi.n	r4, r4, 4
	addi	r13, r13, 4
	stw	r12, -4(r13)
	bne	r11, r4, .L545
	add.n	r5, r5, r16
	sub	r14, r6, r16
	beq	r6, r16, .L540
	ldbu	r4, 0(r11)
	cmpeqi	r6, r14, 1
	stb.n	r4, 0(r5)
	bnez.n	r6, .L540
	ldbu	r15, 1(r11)
	cmpeqi	ra, r14, 2
	stb	r15, 1(r5)
	bne	ra, zero, .L540
	ldbu	r2, 2(r11)
	stb.n	r2, 2(r5)
.L540:
	pop.n	{r16, ra}, 0
.L577:
	addi	r8, r4, 1
.L544:
	add.n	r7, r4, r6
	br.n	.L548
.L578:
	addi	r8, r8, 1
.L548:
	ldbu	r3, -1(r8)
	addi.n	r5, r5, 1
	stb	r3, -1(r5)
	bne	r8, r7, .L578
.L574:
	ret.n
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	subi.n	r3, r6, 32
	blt	r3, zero, .L580
	neg.n	r6, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	sll	r12, r4, r3
	mov	r11, zero
	blt	r14, zero, .L582
.L587:
	srl	r4, r5, r14
	mov.n	r5, zero
	or	r3, r5, r12
	or	r2, r4, r11
	ret.n
.L580:
	srli.n	r7, r4, 1
	movi.n	r2, 31
	sub	r8, r2, r6
	sll	r10, r5, r6
	srl	r9, r7, r8
	sll	r11, r4, r6
	neg.n	r6, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	or	r12, r9, r10
	bge	r14, zero, .L587
.L582:
	slli	r15, r5, 1
	push.n	{ra, r16}, 0
	movi.n	r16, 31
	sub	ra, r16, r13
	sll	r3, r15, ra
	srl	r7, r4, r13
	srl	r8, r5, r13
	or	r2, r3, r7
	or	r2, r2, r11
	or	r3, r8, r12
	pop.n	{r16, ra}, 0
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	subi.n	r2, r6, 32
	blt	r2, zero, .L589
	neg.n	r6, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	srl	r12, r5, r2
	mov	r11, zero
	blt	r14, zero, .L591
.L596:
	sll	r4, r4, r14
	mov.n	r5, zero
	or	r2, r5, r12
	or	r3, r4, r11
	ret.n
.L589:
	slli.n	r7, r5, 1
	movi.n	r3, 31
	sub	r8, r3, r6
	srl	r10, r4, r6
	sll	r9, r7, r8
	srl	r11, r5, r6
	neg.n	r6, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	or	r12, r9, r10
	bge	r14, zero, .L596
.L591:
	srli	r15, r4, 1
	push.n	{ra, r16}, 0
	movi.n	r16, 31
	sub	ra, r16, r13
	srl	r2, r15, ra
	sll	r7, r5, r13
	sll	r3, r4, r13
	or	r8, r2, r7
	or	r2, r3, r12
	or	r3, r8, r11
	pop.n	{r16, ra}, 0
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.type	rotl32, @function
rotl32:
	rol	r2, r4, r5
	ret.n
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.type	rotr32, @function
rotr32:
	ror	r2, r4, r5
	ret.n
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	rol	r2, r4, r5
	ret.n
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	ror	r2, r4, r5
	ret.n
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.type	rotl16, @function
rotl16:
	andi.n	r5, r5, 15
	neg.n	r3, r5
	andi.n	r2, r4, 0xffff
	andi.n	r6, r3, 15
	sll.n	r4, r4, r5
	srl	r7, r2, r6
	or	r2, r4, r7
	ret.n
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
	andi.n	r5, r5, 15
	neg.n	r3, r5
	andi.n	r2, r4, 0xffff
	andi.n	r6, r3, 15
	srl	r7, r2, r5
	sll.n	r4, r4, r6
	or	r2, r7, r4
	ret.n
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
	andi	r5, r5, 7
	neg.n	r3, r5
	andi.n	r2, r4, 0xff
	andi	r6, r3, 7
	sll.n	r4, r4, r5
	srl	r7, r2, r6
	or	r2, r4, r7
	ret.n
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
	andi	r5, r5, 7
	neg.n	r3, r5
	andi.n	r2, r4, 0xff
	andi	r6, r3, 7
	srl	r7, r2, r5
	sll.n	r4, r4, r6
	or	r2, r7, r4
	ret.n
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	slli.n	r2, r4, 8
	extract	r4, r4, 15, 8
	or	r2, r4, r2
	ret.n
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	slli.n	r2, r4, 24
	srli.n	r5, r4, 24
	srli.n	r3, r4, 8
	slli.n	r4, r4, 8
	or	r6, r2, r5
	andi.n	r7, r3, 65280
	or	r8, r6, r7
	andhi	r9, r4, 255
	or	r2, r8, r9
	ret.n
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	push.n	{ra, r17, r16}, 0
	srli.n	r16, r5, 8
	slli.n	r3, r4, 24
	srli.n	r2, r5, 24
	slli.n	r7, r5, 8
	srli.n	r6, r4, 8
	srli.n	r17, r4, 24
	slli.n	r4, r4, 8
	slli.n	r5, r5, 24
	andi	r8, r16, 65280
	or	r9, r2, r8
	or	r11, r3, r17
	andhi	r10, r7, 255
	andi	r12, r6, 65280
	or	r13, r9, r10
	or	r14, r11, r12
	andhi	r15, r4, 255
	or	r2, r13, r5
	or	r3, r14, r15
	pop.n	{r16, r17, ra}, 0
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	mov.n	r2, zero
	br.n	.L612
.L615:
	beqz.n	r5, .L614
.L612:
	srl	r3, r4, r2
	addi.n	r2, r2, 1
	cmpnei	r5, r2, 32
	andi.n	r6, r3, 1
	beqz.n	r6, .L615
	ret.n
.L614:
	mov.n	r2, zero
	ret.n
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beqz.n	r4, .L619
	andi.n	r2, r4, 1
	bnez.n	r2, .L616
	movi.n	r2, 1
.L618:
	srai	r4, r4, 1
	addi.n	r2, r2, 1
	andi.n	r3, r4, 1
	beqz.n	r3, .L618
	ret.n
.L619:
	mov.n	r2, zero
.L616:
	ret.n
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	movhi	r3, 65408
	subi.n	r2, r3, 1
	custom	231, r5, r4, r2 # fcmplts r5, r4, r2
	bnez.n	r5, .L624
	movhi	r6, 32640
	subi.n	r7, r6, 1
	custom	246, r2, r4, r7 # fcmpgts r2, r4, r7
	ret.n
.L624:
	movi.n	r2, 1
	ret.n
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	movhi	r7, 65520
	movi.n	r6, -1
	mov.n	r2, r4
	mov.n	r3, r5
	subi.n	r7, r7, 1
	custom	0, zero, r2, r3 # fwrx r2
	custom	20, r6, r6, r7 # fcmpltd r6, r2, r6
	bnez.n	r6, .L627
	movhi	r5, 32752
	movi.n	r4, -1
	subi.n	r5, r5, 1
	custom	0, zero, r2, r3 # fwrx r2
	custom	18, r2, r4, r5 # fcmpgtd r2, r2, r4
	ret.n
.L627:
	movi.n	r2, 1
	ret.n
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	movhi	r7, 65520
	movi.n	r6, -1
	mov.n	r2, r4
	mov.n	r3, r5
	subi.n	r7, r7, 1
	custom	0, zero, r2, r3 # fwrx r2
	custom	20, r6, r6, r7 # fcmpltd r6, r2, r6
	bnez.n	r6, .L630
	movhi	r5, 32752
	movi.n	r4, -1
	subi.n	r5, r5, 1
	custom	0, zero, r2, r3 # fwrx r2
	custom	18, r2, r4, r5 # fcmpgtd r2, r2, r4
	ret.n
.L630:
	movi.n	r2, 1
	ret.n
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	push.n	{ra, r16}, 0
	mov.n	r16, r4
	mov.n	r4, r5
	call	__floatsidf
	stw.n	r2, 0(r16)
	stw.n	r3, 4(r16)
	pop.n	{r16, ra}, 0
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	push.n	{ra, r17, r16}, 0
	mov.n	r16, r5
	mov.n	r5, r4
	mov.n	r17, r4
	call	__unordsf2
	bnez.n	r2, .L634
	custom	253, r2, r17, r17 # fadds r2, r17, r17
	custom	250, r3, r2, r17 # fcmpeqs r3, r2, r17
	bnez.n	r3, .L634
	blt	r16, zero, .L647
	movhi	r8, 16384
.L635:
	andi.n	r4, r16, 1
	beqz.n	r4, .L636
.L637:
	custom	252, r17, r17, r8 # fmuls r17, r17, r8
.L636:
	movi.n	r5, 2
	div	r16, r16, r5
	beqz.n	r16, .L634
	andi.n	r7, r16, 1
	movi.n	r6, 2
	custom	252, r8, r8, r8 # fmuls r8, r8, r8
	bnez.n	r7, .L637
.L648:
	div	r16, r16, r6
	andi.n	r7, r16, 1
	custom	252, r8, r8, r8 # fmuls r8, r8, r8
	bnez.n	r7, .L637
	br.n	.L648
.L634:
	mov.n	r2, r17
	pop.n	{r16, r17, ra}, 0
.L647:
	movhi	r8, 16128
	br.n	.L635
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
	push.n	{ra, r19, r18, r17, r16}, 8
	mov.n	r7, r5
	mov.n	r18, r6
	mov.n	r6, r4
	mov.n	r16, r4
	mov.n	r17, r5
	call	__unorddf2
	bnez.n	r2, .L650
	custom	0, zero, r16, r17 # fwrx r16
	custom	11, r3, r16, r17 # faddd r2, r16, r16
	custom	4, r2, zero, zero # frdy r2
	custom	0, zero, r2, r3 # fwrx r2
	custom	16, r2, r16, r17 # fcmpeqd r2, r2, r16
	bnez.n	r2, .L650
	mov.n	r6, zero
	blt	r18, zero, .L663
	movhi	r7, 16384
.L651:
	andi	r3, r18, 1
	beqz.n	r3, .L652
.L653:
	mov.n	r4, r16
	mov.n	r5, r17
	stwsp.n	r6, 4(sp)
	stwsp.n	r7, 0(sp)
	call	__muldf3
	ldwsp.n	r6, 4(sp)
	ldwsp.n	r7, 0(sp)
	mov.n	r16, r2
	mov.n	r17, r3
.L652:
	movi.n	r4, 2
	div	r18, r18, r4
	beq	r18, zero, .L650
	movi	r19, 2
.L654:
	mov.n	r5, r7
	mov.n	r4, r6
	call	__muldf3
	andi	r5, r18, 1
	mov.n	r6, r2
	mov.n	r7, r3
	bnez.n	r5, .L653
	div	r18, r18, r19
	br.n	.L654
.L650:
	mov.n	r2, r16
	mov.n	r3, r17
	pop.n	{r16, r17, r18, r19, ra}, 8
.L663:
	movhi	r7, 16352
	br.n	.L651
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	push.n	{ra, r19, r18, r17, r16}, 8
	mov.n	r7, r5
	mov.n	r18, r6
	mov.n	r6, r4
	mov.n	r16, r4
	mov.n	r17, r5
	call	__unorddf2
	bnez.n	r2, .L665
	custom	0, zero, r16, r17 # fwrx r16
	custom	11, r3, r16, r17 # faddd r2, r16, r16
	custom	4, r2, zero, zero # frdy r2
	custom	0, zero, r16, r17 # fwrx r16
	custom	16, r2, r2, r3 # fcmpeqd r2, r16, r2
	bnez.n	r2, .L665
	mov.n	r6, zero
	blt	r18, zero, .L678
	movhi	r7, 16384
.L666:
	andi	r3, r18, 1
	beqz.n	r3, .L667
.L668:
	mov.n	r4, r16
	mov.n	r5, r17
	stwsp.n	r6, 4(sp)
	stwsp.n	r7, 0(sp)
	call	__muldf3
	ldwsp.n	r6, 4(sp)
	ldwsp.n	r7, 0(sp)
	mov.n	r16, r2
	mov.n	r17, r3
.L667:
	movi.n	r4, 2
	div	r18, r18, r4
	beq	r18, zero, .L665
	movi	r19, 2
.L669:
	mov.n	r5, r7
	mov.n	r4, r6
	call	__muldf3
	andi	r5, r18, 1
	mov.n	r6, r2
	mov.n	r7, r3
	bnez.n	r5, .L668
	div	r18, r18, r19
	br.n	.L669
.L665:
	mov.n	r2, r16
	mov.n	r3, r17
	pop.n	{r16, r17, r18, r19, ra}, 8
.L678:
	movhi	r7, 16352
	br.n	.L666
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov.n	r2, r4
	beq	r6, zero, .L698
	subi.n	r3, r6, 1
	cmpltui	r4, r3, 4
	bnez.n	r4, .L681
	or	r7, r2, r5
	andi	r8, r7, 3
	bne	r8, zero, .L681
	andci	r9, r6, 65532
	push.n	{ra, r17, r16}, 0
	mov.n	r11, r2
	add	r17, r5, r9
.L682:
	ldw	r16, 0(r11)
	ldw	r10, 0(r5)
	addi	r11, r11, 4
	addi.n	r5, r5, 4
	xor	r12, r10, r16
	stw	r12, -4(r11)
	bne	r17, r5, .L682
	add	r13, r2, r9
	sub	r5, r6, r9
	beq	r6, r9, .L680
	ldbu	r6, 0(r13)
	ldbu	r14, 0(r17)
	cmpeqi	r15, r5, 1
	xor	ra, r6, r14
	stb	ra, 0(r13)
	bne	r15, zero, .L680
	ldbu	r3, 1(r13)
	ldbu.n	r4, 1(r17)
	cmpeqi	r7, r5, 2
	xor	r8, r4, r3
	stb	r8, 1(r13)
	bnez.n	r7, .L680
	ldbu	r9, 2(r13)
	ldbu.n	r17, 2(r17)
	xor	r16, r17, r9
	stb	r16, 2(r13)
.L680:
	pop.n	{r16, r17, ra}, 0
.L681:
	add	r10, r5, r6
	mov.n	r13, r2
.L684:
	ldbu	r11, 0(r13)
	ldbu	r12, 0(r5)
	addi	r13, r13, 1
	addi.n	r5, r5, 1
	xor	r6, r12, r11
	stb	r6, -1(r13)
	bne	r10, r5, .L684
	ret.n
.L698:
	ret.n
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	ldb	r3, 0(r4)
	mov.n	r2, r4
	beqz.n	r3, .L708
	mov.n	r11, r4
.L703:
	ldb	r7, 1(r11)
	addi	r11, r11, 1
	bnez.n	r7, .L703
.L716:
	beqz.n	r6, .L705
.L718:
	ldbu.n	r4, 0(r5)
	subi.n	r6, r6, 1
	addi.n	r5, r5, 1
	andi	r8, r4, 255
	xori	r9, r8, 128
	stb	r4, 0(r11)
	addi	r10, r9, -128
	beq	r10, zero, .L717
	addi	r11, r11, 1
	bnez.n	r6, .L718
.L705:
	stb	zero, 0(r11)
	ret.n
.L717:
	ret.n
.L708:
	mov.n	r11, r4
	br.n	.L716
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov.n	r2, zero
	beqz.n	r5, .L719
.L720:
	add.n	r3, r4, r2
	ldb	r6, 0(r3)
	bnez.n	r6, .L722
.L719:
	ret.n
.L722:
	addi.n	r2, r2, 1
	bne	r5, r2, .L720
	ret.n
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb	r7, 0(r4)
	mov.n	r2, r4
	beqz.n	r7, .L733
.L729:
	mov.n	r3, r5
	br.n	.L732
.L731:
	beq	r6, r7, .L730
.L732:
	ldb	r6, 0(r3)
	addi.n	r3, r3, 1
	bnez.n	r6, .L731
	ldb	r7, 1(r2)
	addi.n	r2, r2, 1
	bnez.n	r7, .L729
.L733:
	mov.n	r2, zero
.L730:
	ret.n
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov.n	r6, zero
.L740:
	ldb	r3, 0(r4)
	mov.n	r2, r4
	beq	r3, r5, .L739
	mov.n	r2, r6
.L739:
	mov.n	r6, r2
	addi.n	r4, r4, 1
	bnez.n	r3, .L740
	ret.n
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	push.n	{ra, r17, r16}, 0
	ldb	r16, 0(r5)
	beqz.n	r16, .L753
	mov.n	r2, r5
.L744:
	ldb	r3, 1(r2)
	addi.n	r2, r2, 1
	bnez.n	r3, .L744
	sub	r8, r2, r5
	beq	r2, r5, .L753
	addi	r12, r8, -1
	br.n	.L762
.L764:
	addi.n	r4, r4, 1
	beqz.n	r2, .L742
.L762:
	ldbu.n	r7, 0(r4)
	andi.n	r6, r7, 255
	xori	r9, r6, 128
	addi	r2, r9, -128
	bne	r2, r16, .L764
	add	r17, r4, r12
	mov.n	r14, r5
	mov.n	r11, r4
	andi	r13, r7, 0xff
	br.n	.L746
.L765:
	beq	r11, r17, .L747
	addi	r11, r11, 1
	bne	r10, r13, .L747
	ldbu	r13, 0(r11)
	addi	r14, r14, 1
	beq	r13, zero, .L747
.L746:
	ldbu	r10, 0(r14)
	bne	r10, zero, .L765
.L747:
	ldbu	r15, 0(r14)
	beq	r13, r15, .L753
	addi.n	r4, r4, 1
	br.n	.L762
.L753:
	mov.n	r2, r4
.L742:
	pop.n	{r16, r17, ra}, 0
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
	push.n	{ra, r17, r16}, 0
	mov.n	r2, zero
	mov.n	r16, r4
	mov.n	r17, r5
	mov.n	r3, zero
	custom	0, zero, r16, r17 # fwrx r16
	custom	20, r2, r2, r3 # fcmpltd r2, r16, r2
	mov.n	r4, r6
	mov.n	r5, r7
	bnez.n	r2, .L777
	mov.n	r2, zero
	mov.n	r3, zero
	custom	0, zero, r16, r17 # fwrx r16
	custom	18, r3, r2, r3 # fcmpgtd r3, r16, r2
	beqz.n	r3, .L770
	mov.n	r2, zero
	mov.n	r3, zero
	custom	0, zero, r4, r5 # fwrx r4
	custom	20, r4, r2, r3 # fcmpltd r4, r4, r2
	bnez.n	r4, .L769
.L770:
	mov.n	r2, r16
	mov.n	r3, r17
	pop.n	{r16, r17, ra}, 0
.L777:
	mov.n	r2, zero
	mov.n	r3, zero
	custom	0, zero, r4, r5 # fwrx r4
	custom	18, r5, r2, r3 # fcmpgtd r5, r4, r2
	beqz.n	r5, .L770
.L769:
	custom	14, r17, r16, r17 # fnegd r16, r16
	custom	4, r16, zero, zero # frdy r16
	mov.n	r2, r16
	mov.n	r3, r17
	pop.n	{r16, r17, ra}, 0
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	mov.n	r2, r4
	beqz.n	r7, .L795
	bltu	r5, r7, .L786
	sub.n	r5, r5, r7
	push.n	{ra, r17, r16}, 0
	add.n	r17, r4, r5
	bltu	r17, r4, .L789
	ldb	r10, 0(r6)
	subi.n	r7, r7, 1
	addi.n	r6, r6, 1
.L784:
	ldb	r3, 0(r2)
	addi	r8, r2, 1
	beq	r3, r10, .L798
	mov.n	r2, r8
.L780:
	bgeu	r17, r2, .L784
.L789:
	mov.n	r2, zero
.L778:
	pop.n	{r16, r17, ra}, 0
.L798:
	mov.n	r13, r6
	beqz.n	r7, .L778
.L783:
	mov.n	r12, r8
	add	r14, r8, r7
	br.n	.L781
.L782:
	beq	r12, r14, .L778
.L781:
	ldbu	r16, 0(r12)
	ldbu	r11, 0(r13)
	addi	r12, r12, 1
	addi	r13, r13, 1
	beq	r16, r11, .L782
	bltu	r17, r8, .L789
	ldb	r4, 0(r8)
	addi	r2, r8, 1
	bne	r10, r4, .L780
	mov.n	r9, r8
	mov.n	r13, r6
	mov.n	r8, r2
	mov.n	r2, r9
	br.n	.L783
.L795:
	ret.n
.L786:
	mov.n	r2, zero
	ret.n
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	push.n	{ra, r17, r16}, 0
	mov.n	r16, r6
	mov.n	r17, r4
	beqz.n	r6, .L800
	call	memmove
.L800:
	add.n	r2, r17, r16
	pop.n	{r16, r17, ra}, 0
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, @function
frexp:
	push.n	{ra, r20, r19, r18, r17, r16}, 0
	mov.n	r2, zero
	mov.n	r16, r4
	mov.n	r17, r5
	mov.n	r3, zero
	custom	0, zero, r16, r17 # fwrx r16
	custom	20, r2, r2, r3 # fcmpltd r2, r16, r2
	mov.n	r18, r6
	bnez.n	r2, .L828
	mov.n	r2, zero
	movhi	r3, 16368
	custom	0, zero, r16, r17 # fwrx r16
	custom	17, r3, r2, r3 # fcmpged r3, r16, r2
	beqz.n	r3, .L829
	mov	r19, zero
.L808:
	mov	r20, zero
.L814:
	mov.n	r4, r16
	mov.n	r5, r17
	mov.n	r6, zero
	movhi	r7, 16352
	call	__muldf3
	mov.n	r16, r2
	mov.n	r4, zero
	mov.n	r17, r3
	movhi	r5, 16368
	custom	0, zero, r16, r17 # fwrx r16
	custom	17, r9, r4, r5 # fcmpged r9, r16, r4
	addi	r20, r20, 1
	bne	r9, zero, .L814
.L815:
	stw	r20, 0(r18)
	beq	r19, zero, .L821
	custom	14, r5, r16, r17 # fnegd r4, r16
	custom	4, r4, zero, zero # frdy r4
.L805:
	mov.n	r2, r4
	mov.n	r3, r5
	pop.n	{r16, r17, r18, r19, r20, ra}, 0
.L829:
	mov.n	r2, zero
	movhi	r3, 16352
	custom	0, zero, r16, r17 # fwrx r16
	custom	20, r5, r2, r3 # fcmpltd r5, r16, r2
	beqz.n	r5, .L811
	mov.n	r2, zero
	mov.n	r3, zero
	custom	0, zero, r16, r17 # fwrx r16
	custom	21, r6, r2, r3 # fcmpned r6, r16, r2
	bnez.n	r6, .L820
.L811:
	mov.n	r5, r17
	stw	zero, 0(r18)
	mov.n	r2, r4
	mov.n	r3, r5
	pop.n	{r16, r17, r18, r19, r20, ra}, 0
.L828:
	mov.n	r2, zero
	movhi	r3, 49136
	custom	0, zero, r16, r17 # fwrx r16
	custom	19, r7, r2, r3 # fcmpled r7, r16, r2
	custom	14, r5, r16, r17 # fnegd r4, r16
	custom	4, r4, zero, zero # frdy r4
	beqz.n	r7, .L830
	mov.n	r16, r4
	mov.n	r17, r5
	movi	r19, 1
	br.n	.L808
.L821:
	mov.n	r4, r16
	mov.n	r5, r17
	mov.n	r2, r4
	mov.n	r3, r5
	pop.n	{r16, r17, r18, r19, r20, ra}, 0
.L830:
	mov.n	r2, zero
	movhi	r3, 49120
	custom	0, zero, r16, r17 # fwrx r16
	custom	18, r8, r2, r3 # fcmpgtd r8, r16, r2
	bne	r8, zero, .L818
	mov.n	r4, r16
	stwz.n	zero, 0(r6)
	mov.n	r5, r17
	br.n	.L805
.L818:
	movi	r19, 1
.L809:
	mov.n	r16, r4
	mov.n	r17, r5
	mov	r20, zero
.L816:
	mov.n	r2, zero
	custom	0, zero, r16, r17 # fwrx r16
	custom	11, r17, r16, r17 # faddd r16, r16, r16
	custom	4, r16, zero, zero # frdy r16
	movhi	r3, 16352
	custom	0, zero, r16, r17 # fwrx r16
	custom	20, r4, r2, r3 # fcmpltd r4, r16, r2
	addi	r20, r20, -1
	bnez.n	r4, .L816
	br.n	.L815
.L820:
	mov.n	r5, r17
	mov	r19, zero
	br.n	.L809
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	or	r2, r4, r5
	beqz.n	r2, .L835
	push.n	{ra, r17, r16}, 0
	mov.n	r2, zero
	mov.n	r3, zero
.L834:
	andi.n	r16, r4, 1
	mul	r8, r7, r16
	mulxuu	r10, r16, r6
	mul	r11, r16, r6
	slli	r9, r5, 31
	srli.n	r4, r4, 1
	srli.n	r5, r5, 1
	srli.n	r17, r6, 31
	slli.n	r7, r7, 1
	add	r12, r2, r11
	add	r13, r8, r10
	or	r4, r9, r4
	cmpltu	r14, r12, r2
	add	r3, r3, r13
	or	r15, r4, r5
	slli.n	r6, r6, 1
	mov.n	r2, r12
	add	r3, r14, r3
	or	r7, r17, r7
	bne	r15, zero, .L834
	pop.n	{r16, r17, ra}, 0
.L835:
	mov.n	r2, zero
	mov.n	r3, zero
	ret.n
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	bgeu	r5, r4, .L870
	movi.n	r2, 32
	movi	r9, 1
	br.n	.L842
.L846:
	add.n	r5, r5, r5
	add	r9, r9, r9
	bgeu	r5, r4, .L844
	beqz.n	r2, .L866
.L842:
	subi.n	r2, r2, 1
	bge	r5, zero, .L846
.L847:
	push.n	{ra, r16}, 0
	mov.n	r2, zero
.L852:
	sub.n	r16, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L849
	mov.n	r4, r16
.L849:
	beqz.n	r7, .L850
	mov.n	r8, r9
.L851:
	srli	r9, r9, 1
	srli.n	r5, r5, 1
	or	r2, r2, r8
	bne	r9, zero, .L852
	bnez.n	r6, .L871
	pop.n	{r16, ra}, 0
.L850:
	mov	r8, zero
	br.n	.L851
.L844:
	bne	r9, zero, .L847
	mov.n	r2, zero
.L866:
	bnez.n	r6, .L872
.L868:
	ret.n
.L871:
	mov.n	r2, r4
	pop.n	{r16, ra}, 0
.L870:
	sub.n	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L866
	mov.n	r4, r3
	beqz.n	r6, .L868
.L872:
	mov.n	r2, r4
	ret.n
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	andi.n	r3, r4, 255
	xori	r2, r3, 128
	subi.n	r5, r2, 128
	srai	r6, r5, 7
	xor	r4, r6, r4
	beq	r5, r6, .L875
	andi.n	r7, r4, 255
	xori	r8, r7, 128
	addi	r9, r8, -128
	slli	r4, r9, 8
	push.n	{ra}, 0
	call	__clzsi2
	subi.n	r2, r2, 1
	pop.n	{ra}, 0
.L875:
	movi.n	r2, 7
	ret.n
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	srai	r6, r5, 31
	mov.n	r2, r4
	mov.n	r3, r5
	xor.n	r4, r4, r6
	xor.n	r5, r5, r6
	beq	r2, r6, .L889
.L884:
	push.n	{ra}, 0
	call	__clzdi2
	subi.n	r2, r2, 1
	pop.n	{ra}, 0
.L889:
	bne	r3, r2, .L884
	movi.n	r2, 63
	ret.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov.n	r2, zero
	beqz.n	r4, .L893
.L892:
	andi.n	r3, r4, 1
	mul	r6, r3, r5
	srli.n	r4, r4, 1
	add.n	r5, r5, r5
	add.n	r2, r2, r6
	bnez.n	r4, .L892
	ret.n
.L893:
	ret.n
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	push.n	{ra, r17, r16}, 0
	andci	r8, r6, 65528
	srli.n	r17, r6, 3
	bltu	r4, r5, .L896
	add.n	r2, r5, r6
	bgeu	r2, r4, .L926
.L896:
	beq	r17, zero, .L899
	slli	r11, r17, 3
	mov.n	r14, r5
	mov.n	r15, r4
	add	r12, r11, r5
.L900:
	ldw	r16, 0(r14)
	ldw	r13, 4(r14)
	addi	r14, r14, 8
	stw	r16, 0(r15)
	stw	r13, 4(r15)
	addi	r15, r15, 8
	bne	r14, r12, .L900
	bgeu	r8, r6, .L895
	sub	ra, r6, r8
	addi	r17, ra, -1
	cmpltui	r2, r17, 7
	bne	r2, zero, .L925
	addi	r7, r8, 1
	add	r3, r4, r8
	add	r9, r5, r7
	sub	r10, r3, r9
	cmpgeui	r11, r10, 3
	add	r17, r5, r8
	beq	r11, zero, .L902
	or	r12, r17, r3
	andi	r16, r12, 3
	bne	r16, zero, .L902
	andci	r13, ra, 65532
	add	r14, r17, r13
.L903:
	ldw	r15, 0(r17)
	addi.n	r17, r17, 4
	addi.n	r3, r3, 4
	stw	r15, -4(r3)
	bne	r17, r14, .L903
	add	r8, r8, r13
	beq	ra, r13, .L895
	add	r3, r5, r8
	ldbu	ra, 0(r3)
	add	r17, r4, r8
	addi	r2, r8, 1
	stb	ra, 0(r17)
	bgeu	r2, r6, .L895
	add.n	r7, r5, r2
	ldbu	r9, 0(r7)
	add	r10, r4, r2
	addi	r11, r8, 2
	stb	r9, 0(r10)
	bgeu	r11, r6, .L895
	add	r5, r5, r11
	ldbu.n	r6, 0(r5)
	add	r4, r4, r11
	stb.n	r6, 0(r4)
.L895:
	pop.n	{r16, r17, ra}, 0
.L926:
	addi	r9, r6, -1
	beqz.n	r6, .L895
.L897:
	add	r3, r5, r9
	ldbu.n	r6, 0(r3)
	add	r7, r4, r9
	addi	r9, r9, -1
	stb.n	r6, 0(r7)
	cmpnei	r10, r9, -1
	bne	r10, zero, .L897
	pop.n	{r16, r17, ra}, 0
.L899:
	beqz.n	r6, .L895
.L925:
	add	r3, r4, r8
	add	r17, r5, r8
.L902:
	add	r12, r5, r6
.L905:
	ldbu.n	r16, 0(r17)
	addi.n	r17, r17, 1
	addi.n	r3, r3, 1
	stb	r16, -1(r3)
	bne	r17, r12, .L905
	pop.n	{r16, r17, ra}, 0
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bltu	r4, r5, .L928
	add.n	r2, r5, r6
	bgeu	r2, r4, .L961
.L928:
	beq	r8, zero, .L957
	addi	r11, r8, -1
	cmpltui	r12, r11, 9
	bne	r12, zero, .L932
	or	r13, r5, r4
	andi	r14, r13, 3
	bne	r14, zero, .L932
	addi	r15, r5, 2
	beq	r4, r15, .L932
	push.n	{ra, r17, r16}, 0
	srli.n	r17, r6, 2
	andci	r16, r6, 65532
	mov.n	r2, r5
	mov.n	r3, r4
	add	ra, r16, r5
.L933:
	ldw.n	r7, 0(r2)
	addi.n	r2, r2, 4
	addi.n	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, ra, .L933
	add	r9, r17, r17
	beq	r8, r9, .L931
	add	r8, r9, r9
	add	r10, r5, r8
	ldhu	r11, 0(r10)
	add	r12, r4, r8
	sth	r11, 0(r12)
.L931:
	andi	r13, r6, 1
	beq	r13, zero, .L927
	add.n	r5, r5, r6
	ldbu	r14, -1(r5)
	add.n	r4, r4, r6
	stb	r14, -1(r4)
.L927:
	pop.n	{r16, r17, ra}, 0
.L961:
	addi	r9, r6, -1
	beqz.n	r6, .L956
.L929:
	add	r3, r5, r9
	ldbu.n	r6, 0(r3)
	add	r7, r4, r9
	addi	r9, r9, -1
	stb.n	r6, 0(r7)
	cmpnei	r10, r9, -1
	bne	r10, zero, .L929
	ret.n
.L932:
	add	r15, r8, r8
	mov.n	r2, r5
	mov.n	r3, r4
	add	r9, r15, r5
.L935:
	ldhu.n	r7, 0(r2)
	addi.n	r2, r2, 2
	addi.n	r3, r3, 2
	sth	r7, -2(r3)
	bne	r9, r2, .L935
.L957:
	andi	r8, r6, 1
	beq	r8, zero, .L956
	add	r11, r5, r6
	ldbu	r12, -1(r11)
	add	r13, r4, r6
	stb	r12, -1(r13)
.L956:
	ret.n
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	push.n	{ra, r17, r16}, 0
	srli.n	r16, r6, 2
	andci	r17, r6, 65532
	bltu	r4, r5, .L963
	add.n	r2, r5, r6
	bgeu	r2, r4, .L993
.L963:
	beq	r16, zero, .L966
	slli	r10, r16, 2
	mov.n	r13, r5
	mov.n	r14, r4
	add	r11, r10, r5
.L967:
	ldw	r12, 0(r13)
	addi	r13, r13, 4
	addi	r14, r14, 4
	stw	r12, -4(r14)
	bne	r13, r11, .L967
	bgeu	r17, r6, .L962
	sub	r15, r6, r17
	addi	ra, r15, -1
	cmpltui	r16, ra, 7
	bne	r16, zero, .L992
	addi.n	r2, r17, 1
	add.n	r3, r4, r17
	add.n	r7, r5, r2
	sub	r8, r3, r7
	cmpgeui	r9, r8, 3
	add	ra, r5, r17
	beq	r9, zero, .L969
	or	r10, ra, r3
	andi	r11, r10, 3
	bne	r11, zero, .L969
	andci	r12, r15, 65532
	add	r13, ra, r12
.L970:
	ldw	r14, 0(ra)
	addi	ra, ra, 4
	addi.n	r3, r3, 4
	stw	r14, -4(r3)
	bne	ra, r13, .L970
	add	r17, r17, r12
	beq	r15, r12, .L962
	add.n	r3, r5, r17
	ldbu	r15, 0(r3)
	add	ra, r4, r17
	addi.n	r16, r17, 1
	stb	r15, 0(ra)
	bgeu	r16, r6, .L962
	add.n	r2, r5, r16
	ldbu.n	r7, 0(r2)
	add	r8, r4, r16
	addi	r9, r17, 2
	stb	r7, 0(r8)
	bgeu	r9, r6, .L962
	add	r5, r5, r9
	ldbu.n	r6, 0(r5)
	add	r4, r4, r9
	stb.n	r6, 0(r4)
.L962:
	pop.n	{r16, r17, ra}, 0
.L993:
	addi	r8, r6, -1
	beqz.n	r6, .L962
.L964:
	add	r3, r5, r8
	ldbu.n	r6, 0(r3)
	add	r7, r4, r8
	addi	r8, r8, -1
	stb.n	r6, 0(r7)
	cmpnei	r9, r8, -1
	bne	r9, zero, .L964
	pop.n	{r16, r17, ra}, 0
.L966:
	beqz.n	r6, .L962
.L992:
	add.n	r3, r4, r17
	add	ra, r5, r17
.L969:
	add	r10, r5, r6
.L972:
	ldbu	r11, 0(ra)
	addi	ra, ra, 1
	addi.n	r3, r3, 1
	stb	r11, -1(r3)
	bne	ra, r10, .L972
	pop.n	{r16, r17, ra}, 0
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
	div	r2, r4, r5
	mul	r3, r2, r5
	sub.n	r2, r4, r3
	ret.n
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.type	__uitod, @function
__uitod:
	push.n	{ra}, 0
	call	__floatunsidf
	pop.n	{ra}, 0
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.type	__uitof, @function
__uitof:
	custom	243, r2, r4, zero # floatus r2, r4
	ret.n
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	push.n	{ra}, 0
	call	__floatundidf
	pop.n	{ra}, 0
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	push.n	{ra}, 0
	call	__floatundisf
	pop.n	{ra}, 0
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.type	__umodi, @function
__umodi:
	divu	r2, r4, r5
	mul	r3, r2, r5
	sub.n	r2, r4, r3
	ret.n
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	extract	r2, r4, 15, 15
	andi.n	r4, r4, 0xffff
	bnez.n	r2, .L1006
	srai	r2, r4, 14
	bnez.n	r2, .L1003
	srai	r3, r4, 13
	bnez.n	r3, .L1007
	srai	r5, r4, 12
	bnez.n	r5, .L1008
	srai	r6, r4, 11
	bnez.n	r6, .L1009
	srai	r7, r4, 10
	bnez.n	r7, .L1010
	srai	r8, r4, 9
	bne	r8, zero, .L1011
	srai	r9, r4, 8
	bne	r9, zero, .L1012
	srai	r10, r4, 7
	bne	r10, zero, .L1013
	srai	r11, r4, 6
	bne	r11, zero, .L1014
	srai	r12, r4, 5
	bne	r12, zero, .L1015
	srai	r13, r4, 4
	bne	r13, zero, .L1016
	srai	r14, r4, 3
	bne	r14, zero, .L1017
	srai	r15, r4, 2
	bne	r15, zero, .L1018
	srai	r2, r4, 1
	bnez.n	r2, .L1019
	movi.n	r2, 16
	bnez.n	r4, .L1022
.L1003:
	ret.n
.L1006:
	mov.n	r2, zero
	ret.n
.L1017:
	movi.n	r2, 12
	ret.n
.L1022:
	movi.n	r2, 15
	ret.n
.L1007:
	movi.n	r2, 2
	ret.n
.L1008:
	movi.n	r2, 3
	ret.n
.L1009:
	movi.n	r2, 4
	ret.n
.L1010:
	movi.n	r2, 5
	ret.n
.L1011:
	movi.n	r2, 6
	ret.n
.L1012:
	movi.n	r2, 7
	ret.n
.L1013:
	movi.n	r2, 8
	ret.n
.L1014:
	movi.n	r2, 9
	ret.n
.L1015:
	movi.n	r2, 10
	ret.n
.L1016:
	movi.n	r2, 11
	ret.n
.L1018:
	movi.n	r2, 13
	ret.n
.L1019:
	movi.n	r2, 14
	ret.n
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi.n	r2, r4, 1
	bnez.n	r2, .L1026
	andi.n	r3, r4, 2
	bnez.n	r3, .L1027
	andi.n	r5, r4, 4
	bnez.n	r5, .L1028
	andi.n	r6, r4, 8
	bnez.n	r6, .L1029
	andi.n	r7, r4, 16
	bnez.n	r7, .L1030
	andi	r8, r4, 32
	bne	r8, zero, .L1031
	andi	r9, r4, 64
	bne	r9, zero, .L1032
	andi	r10, r4, 128
	bne	r10, zero, .L1033
	andi	r11, r4, 256
	bne	r11, zero, .L1034
	andi	r12, r4, 512
	bne	r12, zero, .L1035
	andi	r13, r4, 1024
	bne	r13, zero, .L1036
	andi	r14, r4, 2048
	bne	r14, zero, .L1037
	andi	r15, r4, 4096
	bne	r15, zero, .L1038
	andi	r2, r4, 8192
	bnez.n	r2, .L1039
	andi	r3, r4, 16384
	bnez.n	r3, .L1040
	extract	r4, r4, 15, 15
	movi.n	r2, 16
	bnez.n	r4, .L1043
	ret.n
.L1026:
	mov.n	r2, zero
	ret.n
.L1027:
	movi.n	r2, 1
	ret.n
.L1038:
	movi.n	r2, 12
	ret.n
.L1043:
	movi.n	r2, 15
	ret.n
.L1028:
	movi.n	r2, 2
	ret.n
.L1029:
	movi.n	r2, 3
	ret.n
.L1030:
	movi.n	r2, 4
	ret.n
.L1031:
	movi.n	r2, 5
	ret.n
.L1032:
	movi.n	r2, 6
	ret.n
.L1033:
	movi.n	r2, 7
	ret.n
.L1034:
	movi.n	r2, 8
	ret.n
.L1035:
	movi.n	r2, 9
	ret.n
.L1036:
	movi.n	r2, 10
	ret.n
.L1037:
	movi.n	r2, 11
	ret.n
.L1039:
	movi.n	r2, 13
	ret.n
.L1040:
	movi.n	r2, 14
	ret.n
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	movhi	r2, 18176
	custom	228, r3, r4, r2 # fcmpges r3, r4, r2
	bnez.n	r3, .L1050
	custom	244, r2, r4, zero # fixsi r2, r4
	ret.n
.L1050:
	movhi	r5, 18176
	custom	254, r4, r4, r5 # fsubs r4, r4, r5
	custom	244, r6, r4, zero # fixsi r6, r4
	movui	r7, 32768
	add.n	r2, r6, r7
	ret.n
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	extract	r2, r4, 1, 1
	andi.n	r3, r4, 1
	add.n	r5, r2, r3
	extract	r6, r4, 2, 2
	add.n	r7, r5, r6
	extract	r8, r4, 3, 3
	add	r9, r7, r8
	extract	r10, r4, 4, 4
	add	r11, r9, r10
	extract	r12, r4, 5, 5
	add	r13, r11, r12
	extract	r14, r4, 6, 6
	add	r15, r13, r14
	extract	r2, r4, 7, 7
	add	r5, r15, r2
	extract	r3, r4, 8, 8
	add.n	r6, r5, r3
	extract	r7, r4, 9, 9
	add	r8, r6, r7
	extract	r9, r4, 10, 10
	extract	r11, r4, 11, 11
	add	r10, r8, r9
	extract	r13, r4, 12, 12
	add	r12, r10, r11
	extract	r15, r4, 13, 13
	add	r14, r12, r13
	add	r2, r14, r15
	extract	r5, r4, 14, 14
	add.n	r3, r2, r5
	extract	r4, r4, 15, 15
	add.n	r6, r3, r4
	andi.n	r2, r6, 1
	ret.n
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	extract	r3, r4, 1, 1
	andi.n	r2, r4, 1
	add.n	r5, r3, r2
	extract	r6, r4, 2, 2
	add.n	r7, r5, r6
	extract	r8, r4, 3, 3
	add	r9, r7, r8
	extract	r10, r4, 4, 4
	add	r11, r9, r10
	extract	r12, r4, 5, 5
	add	r13, r11, r12
	extract	r14, r4, 6, 6
	add	r15, r13, r14
	extract	r3, r4, 7, 7
	add	r5, r15, r3
	extract	r2, r4, 8, 8
	add.n	r6, r5, r2
	extract	r7, r4, 9, 9
	add	r8, r6, r7
	extract	r9, r4, 10, 10
	extract	r11, r4, 11, 11
	add	r10, r8, r9
	extract	r13, r4, 12, 12
	add	r12, r10, r11
	extract	r15, r4, 13, 13
	add	r14, r12, r13
	extract	r5, r4, 14, 14
	add	r3, r14, r15
	add.n	r6, r3, r5
	extract	r4, r4, 15, 15
	add.n	r2, r6, r4
	ret.n
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov.n	r2, zero
	beqz.n	r4, .L1056
.L1055:
	andi.n	r3, r4, 1
	mul	r6, r3, r5
	srli.n	r4, r4, 1
	add.n	r5, r5, r5
	add.n	r2, r2, r6
	bnez.n	r4, .L1055
	ret.n
.L1056:
	ret.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov.n	r2, zero
	beqz.n	r4, .L1061
	beqz.n	r5, .L1062
.L1060:
	andi.n	r3, r5, 1
	mul	r6, r3, r4
	srli.n	r5, r5, 1
	add.n	r4, r4, r4
	add.n	r2, r2, r6
	bnez.n	r5, .L1060
	ret.n
.L1061:
	ret.n
.L1062:
	ret.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	bgeu	r5, r4, .L1093
	movi.n	r2, 32
	movi	r9, 1
	br.n	.L1065
.L1069:
	add.n	r5, r5, r5
	add	r9, r9, r9
	bgeu	r5, r4, .L1067
	beqz.n	r2, .L1089
.L1065:
	subi.n	r2, r2, 1
	bge	r5, zero, .L1069
.L1070:
	push.n	{ra, r16}, 0
	mov.n	r2, zero
.L1075:
	sub.n	r16, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L1072
	mov.n	r4, r16
.L1072:
	beqz.n	r7, .L1073
	mov.n	r8, r9
.L1074:
	srli	r9, r9, 1
	srli.n	r5, r5, 1
	or	r2, r2, r8
	bne	r9, zero, .L1075
	bnez.n	r6, .L1094
	pop.n	{r16, ra}, 0
.L1073:
	mov	r8, zero
	br.n	.L1074
.L1067:
	bne	r9, zero, .L1070
	mov.n	r2, zero
.L1089:
	bnez.n	r6, .L1095
.L1091:
	ret.n
.L1094:
	mov.n	r2, r4
	pop.n	{r16, ra}, 0
.L1093:
	sub.n	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L1089
	mov.n	r4, r3
	beqz.n	r6, .L1091
.L1095:
	mov.n	r2, r4
	ret.n
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	custom	231, r2, r4, r5 # fcmplts r2, r4, r5
	bnez.n	r2, .L1098
	custom	246, r2, r4, r5 # fcmpgts r2, r4, r5
	ret.n
.L1098:
	movi.n	r2, -1
	ret.n
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	push.n	{ra, r17, r16}, 0
	mov.n	r2, r4
	mov.n	r16, r6
	mov.n	r3, r5
	mov.n	r17, r7
	custom	0, zero, r2, r3 # fwrx r2
	custom	20, r4, r16, r17 # fcmpltd r4, r2, r16
	bnez.n	r4, .L1101
	custom	0, zero, r2, r3 # fwrx r2
	custom	18, r2, r16, r17 # fcmpgtd r2, r2, r16
	pop.n	{r16, r17, ra}, 0
.L1101:
	movi.n	r2, -1
	pop.n	{r16, r17, ra}, 0
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	mulxss	r3, r4, r5
	mul	r2, r4, r5
	ret.n
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	mulxuu	r3, r4, r5
	mul	r2, r4, r5
	ret.n
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	push.n	{ra, r16}, 0
	blt	r5, zero, .L1120
	beqz.n	r5, .L1111
	mov.n	r16, zero
.L1107:
	movi.n	r3, 32
	mov.n	r2, zero
	br.n	.L1110
.L1121:
	beqz.n	r7, .L1109
.L1110:
	andi.n	r6, r5, 1
	mul	r8, r6, r4
	srai	r5, r5, 1
	subi.n	r3, r3, 1
	andi.n	r7, r3, 0xff
	add	r2, r2, r8
	add.n	r4, r4, r4
	bnez.n	r5, .L1121
.L1109:
	beqz.n	r16, .L1105
	neg.n	r2, r2
.L1105:
	pop.n	{r16, ra}, 0
.L1120:
	neg.n	r5, r5
	movi.n	r16, 1
	br.n	.L1107
.L1111:
	mov.n	r2, zero
	pop.n	{r16, ra}, 0
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	push.n	{ra, r16}, 0
	blt	r4, zero, .L1151
	movi.n	r2, 1
	mov.n	r16, zero
.L1123:
	bge	r5, zero, .L1124
	neg.n	r5, r5
	mov.n	r16, r2
.L1124:
	mov.n	r6, r4
	mov.n	r3, r5
	bgeu	r5, r4, .L1152
	movi.n	r7, 32
	movi.n	r5, 1
	br.n	.L1125
.L1129:
	beqz.n	r7, .L1130
.L1125:
	add.n	r3, r3, r3
	subi.n	r7, r7, 1
	add.n	r5, r5, r5
	bltu	r3, r4, .L1129
.L1130:
	mov.n	r2, zero
	beqz.n	r5, .L1128
.L1127:
	sub	r8, r6, r3
	cmpgeu	r4, r6, r3
	bltu	r6, r3, .L1132
	mov.n	r6, r8
.L1132:
	beqz.n	r4, .L1133
	mov.n	r9, r5
.L1134:
	srli.n	r5, r5, 1
	srli.n	r3, r3, 1
	or	r2, r2, r9
	bnez.n	r5, .L1127
.L1128:
	beqz.n	r16, .L1122
	neg.n	r2, r2
.L1122:
	pop.n	{r16, ra}, 0
.L1133:
	mov	r9, zero
	br.n	.L1134
.L1151:
	neg.n	r4, r4
	mov.n	r2, zero
	movi.n	r16, 1
	br.n	.L1123
.L1152:
	cmpgeu	r2, r4, r5
	br.n	.L1128
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	blt	r4, zero, .L1181
	mov.n	r7, zero
.L1154:
	mov.n	r2, r4
	bge	r5, zero, .L1155
	neg.n	r5, r5
.L1155:
	mov.n	r3, r5
	bgeu	r5, r4, .L1182
	movi.n	r6, 32
	movi.n	r5, 1
	br.n	.L1156
.L1160:
	beqz.n	r6, .L1161
.L1156:
	add.n	r3, r3, r3
	subi.n	r6, r6, 1
	add.n	r5, r5, r5
	bltu	r3, r4, .L1160
.L1161:
	beqz.n	r5, .L1180
.L1158:
	sub.n	r4, r2, r3
	bltu	r2, r3, .L1163
	mov.n	r2, r4
.L1163:
	srli.n	r5, r5, 1
	srli.n	r3, r3, 1
	bnez.n	r5, .L1158
.L1159:
	beqz.n	r7, .L1153
	neg.n	r2, r2
	ret.n
.L1153:
	ret.n
.L1181:
	neg.n	r4, r4
	movi.n	r7, 1
	br.n	.L1154
.L1182:
	sub.n	r2, r4, r5
	bgeu	r4, r5, .L1159
.L1180:
	mov.n	r2, r4
	br.n	.L1159
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	push.n	{ra, r17, r16}, 0
	andi.n	r3, r5, 0xffff
	andi.n	r16, r4, 0xffff
	bgeu	r3, r16, .L1338
	andi.n	r2, r5, 65535
	xori	r7, r2, 32768
	addi	r8, r7, -32768
	blt	r8, zero, .L1188
	add	r10, r5, r5
	andi	r11, r10, 0xffff
	mov.n	r3, r10
	bgeu	r11, r16, .L1261
	andi	r12, r10, 65535
	xori	r13, r12, 32768
	addi	r14, r13, -32768
	blt	r14, zero, .L1261
	slli	r15, r5, 2
	andi	r17, r15, 0xffff
	mov.n	r3, r15
	bgeu	r17, r16, .L1263
	andi	ra, r15, 65535
	xori	r2, ra, 32768
	addi	r7, r2, -32768
	blt	r7, zero, .L1263
	slli	r8, r5, 3
	andi	r9, r8, 0xffff
	mov.n	r3, r8
	bgeu	r9, r16, .L1265
	andi	r10, r8, 65535
	xori	r11, r10, 32768
	addi	r12, r11, -32768
	blt	r12, zero, .L1265
	slli	r13, r5, 4
	andi	r14, r13, 0xffff
	mov.n	r3, r13
	bgeu	r14, r16, .L1267
	andi	r15, r13, 65535
	xori	r17, r15, 32768
	addi	ra, r17, -32768
	blt	ra, zero, .L1267
	slli	r2, r5, 5
	andi.n	r7, r2, 0xffff
	mov.n	r3, r2
	bgeu	r7, r16, .L1269
	andi	r8, r2, 65535
	xori	r9, r8, 32768
	addi	r10, r9, -32768
	blt	r10, zero, .L1269
	slli	r11, r5, 6
	andi	r12, r11, 0xffff
	mov.n	r3, r11
	bgeu	r12, r16, .L1271
	andi	r13, r11, 65535
	xori	r14, r13, 32768
	addi	r15, r14, -32768
	blt	r15, zero, .L1271
	slli	r17, r5, 7
	andi	ra, r17, 0xffff
	mov.n	r3, r17
	bgeu	ra, r16, .L1273
	andi.n	r2, r17, 65535
	xori	r7, r2, 32768
	addi	r8, r7, -32768
	blt	r8, zero, .L1273
	slli	r9, r5, 8
	andi	r10, r9, 0xffff
	mov.n	r3, r9
	bgeu	r10, r16, .L1275
	andi	r11, r9, 65535
	xori	r12, r11, 32768
	addi	r13, r12, -32768
	blt	r13, zero, .L1275
	slli	r14, r5, 9
	andi	r15, r14, 0xffff
	mov.n	r3, r14
	bgeu	r15, r16, .L1277
	andi	r17, r14, 65535
	xori	ra, r17, 32768
	addi	r2, ra, -32768
	blt	r2, zero, .L1277
	slli	r8, r5, 10
	andi	r7, r8, 0xffff
	mov.n	r3, r8
	bgeu	r7, r16, .L1279
	andi	r9, r8, 65535
	xori	r10, r9, 32768
	addi	r11, r10, -32768
	blt	r11, zero, .L1279
	slli	r12, r5, 11
	andi	r13, r12, 0xffff
	mov.n	r3, r12
	bgeu	r13, r16, .L1281
	andi	r14, r12, 65535
	xori	r15, r14, 32768
	addi	r17, r15, -32768
	blt	r17, zero, .L1281
	slli	ra, r5, 12
	andi	r2, ra, 0xffff
	mov.n	r3, ra
	bgeu	r2, r16, .L1283
	andi	r8, ra, 65535
	xori	r7, r8, 32768
	addi	r9, r7, -32768
	blt	r9, zero, .L1283
	slli	r10, r5, 13
	andi	r11, r10, 0xffff
	mov.n	r3, r10
	bgeu	r11, r16, .L1285
	andi	r12, r10, 65535
	xori	r13, r12, 32768
	addi	r14, r13, -32768
	blt	r14, zero, .L1285
	slli	r15, r5, 14
	andi	r17, r15, 0xffff
	mov.n	r3, r15
	bgeu	r17, r16, .L1287
	andi	ra, r15, 65535
	xori	r2, ra, 32768
	addi	r8, r2, -32768
	blt	r8, zero, .L1287
	slli	r7, r5, 15
	andi.n	r5, r7, 0xffff
	mov.n	r9, r7
	bgeu	r5, r16, .L1288
	mov.n	r2, r4
	bne	r5, zero, .L1339
.L1191:
	bnez.n	r6, .L1183
	mov.n	r2, r9
.L1183:
	pop.n	{r16, r17, ra}, 0
.L1261:
	movi.n	r7, 2
.L1190:
	andi	r10, r3, 0xffff
	sub	r11, r4, r3
	bgeu	r16, r10, .L1257
	mov.n	r11, r4
.L1257:
	bltu	r16, r10, .L1258
	mov.n	r9, r7
.L1259:
	extract	r12, r10, 16, 1
	andi	r13, r11, 0xffff
	andi	r14, r12, 0xffff
	andi.n	r16, r7, 0xffff
	extract	r4, r7, 15, 1
	sub	r15, r11, r12
	bltu	r13, r14, .L1193
	mov.n	r11, r15
.L1193:
	mov.n	r2, r11
	bgeu	r13, r14, .L1195
	mov.n	r4, zero
.L1195:
	srli.n	r17, r16, 2
	or	r3, r4, r9
	srli	ra, r10, 2
	mov.n	r9, r3
	beqz.n	r17, .L1191
	andi	r2, r11, 0xffff
	sub	r8, r11, ra
	cmpgeu	r7, r2, ra
	bltu	r2, ra, .L1197
	mov.n	r11, r8
.L1197:
	mov.n	r2, r11
	bnez.n	r7, .L1199
	mov.n	r17, zero
.L1199:
	srli	r14, r16, 3
	or	r5, r3, r17
	srli	r4, r10, 3
	mov.n	r9, r5
	beq	r14, zero, .L1191
	andi	r12, r11, 0xffff
	sub	r9, r11, r4
	cmpgeu	r13, r12, r4
	bltu	r12, r4, .L1201
	mov.n	r11, r9
.L1201:
	mov.n	r2, r11
	bne	r13, zero, .L1203
	mov	r14, zero
.L1203:
	srli	r7, r16, 4
	or	r15, r5, r14
	srli	r3, r10, 4
	mov.n	r9, r15
	beq	r7, zero, .L1191
	andi	ra, r11, 0xffff
	sub	r2, r11, r3
	cmpgeu	r8, ra, r3
	bltu	ra, r3, .L1205
	mov.n	r11, r2
.L1205:
	mov.n	r2, r11
	bne	r8, zero, .L1207
	mov.n	r7, zero
.L1207:
	srli	r13, r16, 5
	or	r5, r15, r7
	srli	r17, r10, 5
	mov.n	r9, r5
	beq	r13, zero, .L1191
	andi	r4, r11, 0xffff
	sub	r12, r11, r17
	cmpgeu	r9, r4, r17
	bltu	r4, r17, .L1209
	mov.n	r11, r12
.L1209:
	mov.n	r2, r11
	bne	r9, zero, .L1211
	mov	r13, zero
.L1211:
	srli	r7, r16, 6
	or	r14, r5, r13
	srli	r15, r10, 6
	mov.n	r9, r14
	beq	r7, zero, .L1191
	andi	r3, r11, 0xffff
	sub	ra, r11, r15
	cmpgeu	r8, r3, r15
	bltu	r3, r15, .L1213
	mov.n	r11, ra
.L1213:
	mov.n	r2, r11
	bne	r8, zero, .L1215
	mov.n	r7, zero
.L1215:
	srli	r13, r16, 7
	or	r5, r14, r7
	srli	r17, r10, 7
	mov.n	r9, r5
	beq	r13, zero, .L1191
	andi	r2, r11, 0xffff
	sub	r4, r11, r17
	cmpgeu	r12, r2, r17
	bltu	r2, r17, .L1217
	mov.n	r11, r4
.L1217:
	mov.n	r2, r11
	bne	r12, zero, .L1219
	mov	r13, zero
.L1219:
	srli.n	r7, r16, 8
	or	r14, r5, r13
	srli	r15, r10, 8
	mov.n	r9, r14
	beq	r7, zero, .L1191
	andi	r3, r11, 0xffff
	sub	r9, r11, r15
	cmpgeu	ra, r3, r15
	bltu	r3, r15, .L1221
	mov.n	r11, r9
.L1221:
	mov.n	r2, r11
	bne	ra, zero, .L1223
	mov.n	r7, zero
.L1223:
	srli	r8, r16, 9
	or	r5, r14, r7
	srli	r17, r10, 9
	mov.n	r9, r5
	beq	r8, zero, .L1191
	andi	r2, r11, 0xffff
	sub	r4, r11, r17
	cmpgeu	r12, r2, r17
	bltu	r2, r17, .L1225
	mov.n	r11, r4
.L1225:
	mov.n	r2, r11
	bne	r12, zero, .L1227
	mov	r8, zero
.L1227:
	srli	ra, r16, 10
	or	r13, r5, r8
	srli	r14, r10, 10
	mov.n	r9, r13
	beq	ra, zero, .L1191
	andi	r15, r11, 0xffff
	sub	r3, r11, r14
	cmpgeu	r9, r15, r14
	bltu	r15, r14, .L1229
	mov.n	r11, r3
.L1229:
	mov.n	r2, r11
	bne	r9, zero, .L1231
	mov	ra, zero
.L1231:
	srli	r12, r16, 11
	or	r5, r13, ra
	srli	r17, r10, 11
	mov.n	r9, r5
	beq	r12, zero, .L1191
	andi	r2, r11, 0xffff
	sub	r4, r11, r17
	cmpgeu	r7, r2, r17
	bltu	r2, r17, .L1233
	mov.n	r11, r4
.L1233:
	mov.n	r2, r11
	bnez.n	r7, .L1235
	mov	r12, zero
.L1235:
	srli	ra, r16, 12
	or	r13, r5, r12
	srli	r8, r10, 12
	mov.n	r9, r13
	beq	ra, zero, .L1191
	andi	r14, r11, 0xffff
	sub	r15, r11, r8
	cmpgeu	r3, r14, r8
	bltu	r14, r8, .L1237
	mov.n	r11, r15
.L1237:
	mov.n	r2, r11
	bnez.n	r3, .L1239
	mov	ra, zero
.L1239:
	srli	r7, r16, 13
	or	r5, r13, ra
	srli	r17, r10, 13
	mov.n	r9, r5
	beq	r7, zero, .L1191
	andi	r2, r11, 0xffff
	sub	r9, r11, r17
	cmpgeu	r4, r2, r17
	bltu	r2, r17, .L1241
	mov.n	r11, r9
.L1241:
	mov.n	r2, r11
	bnez.n	r4, .L1243
	mov.n	r7, zero
.L1243:
	srli	r3, r16, 14
	or	r12, r5, r7
	srli	r13, r10, 14
	mov.n	r9, r12
	beq	r3, zero, .L1191
	andi	r8, r11, 0xffff
	sub	r14, r11, r13
	cmpgeu	r15, r8, r13
	bltu	r8, r13, .L1245
	mov.n	r11, r14
.L1245:
	mov.n	r2, r11
	bne	r15, zero, .L1247
	mov.n	r3, zero
.L1247:
	or	ra, r12, r3
	cmpeqi	r16, r16, 16384
	srli	r10, r10, 15
	mov.n	r9, ra
	bne	r16, zero, .L1191
	andi	r5, r11, 0xffff
	sub	r17, r11, r10
	cmpgeu	r9, r5, r10
	bltu	r5, r10, .L1249
	mov.n	r11, r17
.L1249:
	mov.n	r2, r11
	or	r9, ra, r9
	br.n	.L1191
.L1258:
	mov	r9, zero
	br.n	.L1259
.L1263:
	movi.n	r7, 4
	br.n	.L1190
.L1265:
	movi.n	r7, 8
	br.n	.L1190
.L1267:
	movi.n	r7, 16
	br.n	.L1190
.L1277:
	movi	r7, 512
	br.n	.L1190
.L1339:
	movi	r7, -32768
	movi	r3, -32768
	br.n	.L1190
.L1269:
	movi.n	r7, 32
	br.n	.L1190
.L1271:
	movi.n	r7, 64
	br.n	.L1190
.L1273:
	movi	r7, 128
	br.n	.L1190
.L1275:
	movi	r7, 256
	br.n	.L1190
.L1338:
	sub.n	r2, r4, r5
	beq	r3, r16, .L1186
	mov.n	r2, r4
.L1186:
	cmpeq	r9, r3, r16
	br.n	.L1191
.L1279:
	movi	r7, 1024
	br.n	.L1190
.L1281:
	movi	r7, 2048
	br.n	.L1190
.L1283:
	movi	r7, 4096
	br.n	.L1190
.L1285:
	movi	r7, 8192
	br.n	.L1190
.L1287:
	movi	r7, 16384
	br.n	.L1190
.L1288:
	movi	r3, -32768
	movi	r7, -32768
	br.n	.L1190
.L1188:
	sub.n	r2, r4, r5
	movi	r9, 1
	br.n	.L1191
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	bgeu	r5, r4, .L1369
	movi.n	r2, 32
	movi	r9, 1
	br.n	.L1341
.L1345:
	add.n	r5, r5, r5
	add	r9, r9, r9
	bgeu	r5, r4, .L1343
	beqz.n	r2, .L1365
.L1341:
	subi.n	r2, r2, 1
	bge	r5, zero, .L1345
.L1346:
	push.n	{ra, r16}, 0
	mov.n	r2, zero
.L1351:
	sub.n	r16, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L1348
	mov.n	r4, r16
.L1348:
	beqz.n	r7, .L1349
	mov.n	r8, r9
.L1350:
	srli	r9, r9, 1
	srli.n	r5, r5, 1
	or	r2, r2, r8
	bne	r9, zero, .L1351
	bnez.n	r6, .L1370
	pop.n	{r16, ra}, 0
.L1349:
	mov	r8, zero
	br.n	.L1350
.L1343:
	bne	r9, zero, .L1346
	mov.n	r2, zero
.L1365:
	bnez.n	r6, .L1371
.L1367:
	ret.n
.L1370:
	mov.n	r2, r4
	pop.n	{r16, ra}, 0
.L1369:
	sub.n	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L1365
	mov.n	r4, r3
	beqz.n	r6, .L1367
.L1371:
	mov.n	r2, r4
	ret.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi.n	r2, r6, 32
	beqz.n	r2, .L1373
	subi.n	r6, r6, 32
	sll	r3, r4, r6
	mov.n	r4, zero
	mov.n	r2, r4
	ret.n
.L1373:
	beqz.n	r6, .L1376
	movi.n	r3, 32
	sub.n	r7, r3, r6
	srl	r8, r4, r7
	sll.n	r5, r5, r6
	sll.n	r4, r4, r6
	or	r3, r8, r5
	mov.n	r2, r4
	ret.n
.L1376:
	mov.n	r2, r4
	mov.n	r3, r5
	ret.n
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi.n	r2, r6, 32
	beqz.n	r2, .L1378
	subi.n	r6, r6, 32
	srai	r3, r5, 31
	sra	r2, r5, r6
	ret.n
.L1378:
	beqz.n	r6, .L1381
	movi.n	r7, 32
	sub.n	r3, r7, r6
	sll	r8, r5, r3
	srl.n	r4, r4, r6
	sra	r3, r5, r6
	or	r2, r8, r4
	ret.n
.L1381:
	mov.n	r2, r4
	mov.n	r3, r5
	ret.n
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	push.n	{ra, r17, r16}, 0
	srli.n	r16, r5, 8
	srli.n	r2, r5, 24
	slli.n	r3, r4, 24
	slli.n	r7, r5, 8
	srli.n	r6, r4, 8
	srli.n	r17, r4, 24
	slli.n	r4, r4, 8
	slli.n	r5, r5, 24
	andi	r8, r16, 65280
	or	r9, r2, r8
	or	r11, r3, r17
	andhi	r10, r7, 255
	andi	r12, r6, 65280
	or	r13, r9, r10
	or	r14, r11, r12
	andhi	r15, r4, 255
	or	r2, r13, r5
	or	r3, r14, r15
	pop.n	{r16, r17, ra}, 0
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	srli.n	r2, r4, 24
	slli.n	r5, r4, 24
	srli.n	r3, r4, 8
	slli.n	r4, r4, 8
	or	r6, r2, r5
	andi.n	r7, r3, 65280
	or	r8, r6, r7
	andhi	r9, r4, 255
	or	r2, r8, r9
	ret.n
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	movui	r5, 65535
	cmpgeu	r2, r5, r4
	slli	r8, r2, 4
	movi.n	r3, 16
	movi.n	r7, 8
	sub	r6, r3, r8
	srl	r9, r4, r6
	movi	r10, 4
	movi	r11, 2
	andi	r4, r9, 65280
	cmpeq	r12, r4, zero
	slli	r13, r12, 3
	sub	r14, r7, r13
	srl	r15, r9, r14
	add	r5, r13, r8
	andi	r2, r15, 240
	cmpeq	r8, r2, zero
	slli	r7, r8, 2
	sub	r3, r10, r7
	srl	r9, r15, r3
	add	r10, r7, r5
	andi	r6, r9, 12
	cmpeq	r4, r6, zero
	add	r12, r4, r4
	sub	r13, r11, r12
	srl	r14, r9, r13
	extract	r15, r14, 1, 1
	xori	r5, r15, 1
	andi.n	r2, r5, 0xff
	beqz.n	r2, .L1386
	sub	r11, r11, r14
	add	r8, r12, r10
	add	r2, r11, r8
	ret.n
.L1386:
	mov	r11, zero
	add	r8, r12, r10
	add	r2, r11, r8
	ret.n
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L1392
	blt	r7, r5, .L1393
	bltu	r4, r6, .L1392
	bltu	r6, r4, .L1393
	movi.n	r2, 1
	ret.n
.L1392:
	mov.n	r2, zero
	ret.n
.L1393:
	movi.n	r2, 2
	ret.n
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	blt	r5, r7, .L1398
	blt	r7, r5, .L1397
	bltu	r4, r6, .L1398
	cmpltu	r2, r6, r4
	ret.n
.L1398:
	movi.n	r2, -1
	ret.n
.L1397:
	movi.n	r2, 1
	ret.n
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	andi.n	r5, r4, 65535
	cmpeq	r2, r5, zero
	slli	r7, r2, 4
	movi.n	r6, 2
	srl	r3, r4, r7
	andi.n	r4, r3, 255
	cmpeq	r8, r4, zero
	slli	r9, r8, 3
	srl	r10, r3, r9
	add	r11, r9, r7
	andi	r12, r10, 15
	cmpeq	r13, r12, zero
	slli	r14, r13, 2
	srl	r15, r10, r14
	add	r5, r14, r11
	andi	r2, r15, 3
	cmpeq	r7, r2, zero
	add.n	r4, r7, r7
	srl	r3, r15, r4
	add	r8, r4, r5
	andi	r9, r3, 3
	srli	r10, r9, 1
	nor	r11, zero, r9
	andi	r12, r11, 1
	sub	r6, r6, r10
	mul	r13, r12, r6
	add	r2, r13, r8
	ret.n
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi.n	r2, r6, 32
	beqz.n	r2, .L1401
	subi.n	r6, r6, 32
	srl	r2, r5, r6
	mov.n	r5, zero
	mov.n	r3, r5
	ret.n
.L1401:
	beqz.n	r6, .L1404
	movi.n	r3, 32
	sub.n	r7, r3, r6
	sll	r8, r5, r7
	srl.n	r4, r4, r6
	srl.n	r5, r5, r6
	or	r2, r8, r4
	mov.n	r3, r5
	ret.n
.L1404:
	mov.n	r2, r4
	mov.n	r3, r5
	ret.n
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	andi.n	r6, r4, 65535
	andi.n	r3, r5, 65535
	mul	r7, r6, r3
	srli.n	r4, r4, 16
	srli.n	r5, r5, 16
	srli.n	r2, r7, 16
	mul	r8, r3, r4
	mul	r9, r6, r5
	mul	r10, r4, r5
	add	r11, r8, r2
	andi	r12, r11, 0xffff
	add	r13, r9, r12
	srli	r14, r11, 16
	slli	r15, r13, 16
	srli	r6, r13, 16
	andi.n	r3, r7, 0xffff
	add	r7, r14, r10
	add	r2, r3, r15
	add.n	r3, r7, r6
	ret.n
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	push.n	{ra, r17, r16}, 0
	andi.n	r2, r4, 65535
	andi.n	r16, r6, 65535
	mul	r3, r2, r16
	srli.n	r17, r4, 16
	srli	r8, r6, 16
	srli	r9, r3, 16
	mul	r10, r16, r17
	mul	r11, r2, r8
	mul	r12, r17, r8
	add	r13, r10, r9
	andi	r14, r13, 0xffff
	add	r15, r11, r14
	srli	ra, r13, 16
	srli	r17, r15, 16
	mul	r4, r4, r7
	mul	r6, r6, r5
	slli	r7, r15, 16
	add	r5, ra, r12
	add.n	r2, r5, r17
	andi.n	r16, r3, 0xffff
	add.n	r3, r4, r2
	add.n	r3, r3, r6
	add.n	r2, r16, r7
	pop.n	{r16, r17, ra}, 0
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	cmpne	r3, r4, zero
	neg.n	r5, r5
	neg.n	r2, r4
	sub.n	r3, r5, r3
	ret.n
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	xor.n	r5, r5, r4
	srli.n	r3, r5, 16
	movi	r2, 27030
	xor	r6, r3, r5
	srli.n	r4, r6, 8
	xor	r7, r4, r6
	srli	r8, r7, 4
	xor	r9, r8, r7
	andi	r10, r9, 15
	sra	r11, r2, r10
	andi	r2, r11, 1
	ret.n
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	srli.n	r3, r4, 16
	movi	r2, 27030
	xor	r5, r3, r4
	srli.n	r4, r5, 8
	xor	r6, r4, r5
	srli	r7, r6, 4
	xor	r8, r7, r6
	andi	r9, r8, 15
	sra	r10, r2, r9
	andi	r2, r10, 1
	ret.n
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	slli.n	r2, r5, 31
	srli.n	r7, r4, 1
	srli.n	r6, r5, 1
	movhi	r3, 21845
	addi	r8, r3, 21845
	or	r9, r2, r7
	and	r10, r9, r8
	sub	r11, r4, r10
	and	r12, r6, r8
	cmpltu	r4, r4, r11
	sub	r5, r5, r12
	sub	r13, r5, r4
	slli	r14, r13, 30
	srli	r15, r11, 2
	srli	r7, r13, 2
	movhi	r2, 13107
	addi	r3, r2, 13107
	or	r6, r14, r15
	and	r8, r6, r3
	and	r9, r11, r3
	add	r10, r8, r9
	and	r11, r7, r3
	and	r12, r13, r3
	cmpltu	r4, r10, r8
	add	r5, r11, r12
	add	r13, r4, r5
	slli	r14, r13, 28
	srli	r15, r10, 4
	srli	r7, r13, 4
	movhi	r6, 3855
	or	r3, r14, r15
	add	r2, r3, r10
	add	r9, r7, r13
	cmpltu	r8, r2, r3
	addi	r10, r6, 3855
	add	r11, r8, r9
	and	r12, r2, r10
	and	r4, r11, r10
	add	r5, r4, r12
	srli	r13, r5, 16
	add	r14, r13, r5
	srli	r15, r14, 8
	add	r7, r15, r14
	andi.n	r2, r7, 127
	ret.n
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	srli.n	r2, r4, 1
	movhi	r3, 21845
	addi	r5, r3, 21845
	and	r6, r2, r5
	sub.n	r4, r4, r6
	srli.n	r7, r4, 2
	movhi	r8, 13107
	addi	r9, r8, 13107
	and	r10, r7, r9
	and	r11, r4, r9
	add	r12, r10, r11
	srli	r13, r12, 4
	movhi	r14, 3855
	addi	r15, r14, 3855
	add	r2, r13, r12
	and	r5, r2, r15
	srli.n	r3, r5, 16
	add.n	r6, r3, r5
	srli.n	r4, r6, 8
	add.n	r7, r4, r6
	andi.n	r2, r7, 63
	ret.n
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	push.n	{ra, r20, r19, r18, r17, r16}, 8
	andi.n	r2, r6, 1
	mov.n	r18, r6
	mov.n	r7, r5
	mov.n	r6, r4
	mov.n	r16, zero
	mov.n	r20, r18
	movhi	r17, 16368
	beqz.n	r2, .L1415
.L1417:
	mov.n	r4, r16
	mov.n	r5, r17
	stwsp.n	r6, 4(sp)
	stwsp.n	r7, 0(sp)
	call	__muldf3
	ldwsp.n	r7, 0(sp)
	ldwsp.n	r6, 4(sp)
	mov.n	r16, r2
	mov.n	r17, r3
.L1415:
	movi.n	r3, 2
	div	r20, r20, r3
	beq	r20, zero, .L1416
	movi	r19, 2
.L1418:
	mov.n	r4, r6
	mov.n	r5, r7
	call	__muldf3
	andi	r4, r20, 1
	mov.n	r6, r2
	mov.n	r7, r3
	bnez.n	r4, .L1417
	div	r20, r20, r19
	br.n	.L1418
.L1416:
	bge	r18, zero, .L1414
	mov.n	r2, zero
	movhi	r3, 16368
	custom	0, zero, r2, r3 # fwrx r2
	custom	13, r17, r16, r17 # fdivd r16, r2, r16
	custom	4, r16, zero, zero # frdy r16
.L1414:
	mov.n	r2, r16
	mov.n	r3, r17
	pop.n	{r16, r17, r18, r19, r20, ra}, 8
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	andi.n	r2, r5, 1
	mov.n	r6, r5
	beqz.n	r2, .L1428
	movhi	r2, 16256
.L1425:
	custom	252, r2, r2, r4 # fmuls r2, r2, r4
.L1423:
	movi.n	r3, 2
	div	r6, r6, r3
	beqz.n	r6, .L1424
	andi	r8, r6, 1
	movi.n	r7, 2
	custom	252, r4, r4, r4 # fmuls r4, r4, r4
	bne	r8, zero, .L1425
.L1429:
	div	r6, r6, r7
	andi	r8, r6, 1
	custom	252, r4, r4, r4 # fmuls r4, r4, r4
	bne	r8, zero, .L1425
	br.n	.L1429
.L1424:
	blt	r5, zero, .L1430
	ret.n
.L1428:
	movhi	r2, 16256
	br.n	.L1423
.L1430:
	movhi	r4, 16256
	custom	255, r2, r4, r2 # fdivs r2, r4, r2
	ret.n
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L1435
	bltu	r7, r5, .L1436
	bltu	r4, r6, .L1435
	bltu	r6, r4, .L1436
	movi.n	r2, 1
	ret.n
.L1435:
	mov.n	r2, zero
	ret.n
.L1436:
	movi.n	r2, 2
	ret.n
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	bltu	r5, r7, .L1441
	bltu	r7, r5, .L1440
	bltu	r4, r6, .L1441
	cmpltu	r2, r6, r4
	ret.n
.L1441:
	movi.n	r2, -1
	ret.n
.L1440:
	movi.n	r2, 1
	ret.n
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.sbss
	.type	s.0, @object
	.size	s.0, 7
	.align	0
s.0:
	.zero	7
	.type	seed, @object
	.size	seed, 8
	.align	2
seed:
	.zero	8
	.section	.rodata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsidf
	.global	__clzdi2
	.global	__clzsi2
	.global	__muldf3
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__unordsf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
