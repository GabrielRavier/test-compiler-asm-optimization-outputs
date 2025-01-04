#NO_APP
	.file	"mini-libc.c"
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	movem.l #12320,-(%sp)
	move.l 16(%sp),%a0
	move.l 20(%sp),%d0
	move.l 24(%sp),%d1
	cmp.l %a0,%d0
	jcc .L2
	move.l %d0,%a2
	lea (%a2,%d1.l),%a1
	tst.l %d1
	jeq .L3
	lea -1(%a0,%d1.l),%a2
.L4:
	move.b -(%a1),(%a2)
	subq.l #1,%a2
	cmp.l %d0,%a1
	jne .L4
.L3:
	move.l %a0,%d0
	movem.l (%sp)+,#1036
	rts
.L2:
	cmp.l %a0,%d0
	jeq .L3
	tst.l %d1
	jeq .L3
	move.l %d1,%a1
	lea (-1,%a1),%a2
	moveq #6,%d2
	cmp.l %a2,%d2
	jcc .L36
	move.l %a0,%d3
	or.l %d0,%d3
	move.l %d0,%a2
	lea (1,%a2),%a1
	bftst %d3{#30:#2}
	jne .L5
	move.l %a0,%d2
	sub.l %a1,%d2
	moveq #2,%d3
	cmp.l %d2,%d3
	jcc .L5
	moveq #-4,%d3
	and.l %d1,%d3
	move.l %a0,%d2
	add.l %d3,%d2
	move.l %a0,%a1
.L6:
	move.l (%a2)+,(%a1)+
	cmp.l %a1,%d2
	jne .L6
	add.l %d3,%d0
	move.l %d1,%d2
	sub.l %d3,%d2
	cmp.l %d1,%d3
	jeq .L3
	move.l %d0,%a2
	move.b (%a2),(%a1)
	moveq #1,%d0
	cmp.l %d2,%d0
	jeq .L3
	move.b 1(%a2),1(%a1)
	subq.l #2,%d2
	jeq .L3
	move.b 2(%a2),2(%a1)
	move.l %a0,%d0
	movem.l (%sp)+,#1036
	rts
.L36:
	move.l %d0,%a1
	addq.l #1,%a1
.L5:
	move.l %a0,%a2
	add.l %d1,%d0
.L9:
	move.b -1(%a1),(%a2)+
	cmp.l %a1,%d0
	jeq .L3
	addq.l #1,%a1
	jra .L9
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.type	memccpy, @function
memccpy:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 24(%sp),%d1
	clr.l %d3
	move.b 23(%sp),%d3
	tst.l %d1
	jeq .L38
	move.l 16(%sp),%a0
	move.l 12(%sp),%a1
.L39:
	move.b (%a0)+,%d0
	move.b %d0,(%a1)+
	and.l #255,%d0
	cmp.l %d0,%d3
	jeq .L51
	subq.l #1,%d1
	jne .L39
.L38:
	sub.l %a0,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L51:
	move.l %a1,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d0
	clr.l %d2
	move.b 15(%sp),%d2
	tst.l %d0
	jeq .L57
	move.l 8(%sp),%a1
.L54:
	move.l %a1,%a0
	clr.l %d1
	move.b (%a1)+,%d1
	cmp.l %d1,%d2
	jeq .L52
	subq.l #1,%d0
	jne .L54
.L57:
	sub.l %a0,%a0
.L52:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%sp),%a0
	tst.l %a0
	jeq .L66
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L62:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #1,%d1
	addq.l #1,%d0
	move.b (%a2),%d2
	cmp.b (%a1),%d2
	jne .L70
	subq.l #1,%a0
	tst.l %a0
	jne .L62
.L66:
	clr.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L70:
	clr.l %d0
	move.b (%a2),%d0
	clr.l %d1
	move.b (%a1),%d1
	sub.l %d1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	move.l 16(%sp),%d0
	jeq .L72
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L72:
	move.l %d2,%a0
	move.l %d2,%d0
	move.l (%sp)+,%d2
	rts
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.type	memrchr, @function
memrchr:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a1
	clr.l %d2
	move.b 15(%sp),%d2
	move.l 16(%sp),%d0
	subq.l #1,%d0
	add.l %a1,%d0
	subq.l #1,%a1
.L79:
	cmp.l %d0,%a1
	jeq .L84
	move.l %d0,%a0
	subq.l #1,%d0
	clr.l %d1
	move.b (%a0),%d1
	cmp.l %d1,%d2
	jne .L79
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L84:
	sub.l %a0,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	move.l 16(%sp),%d0
	jeq .L88
	move.l %d0,-(%sp)
	moveq #0,%d1
	not.b %d1
	and.l 16(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d2,-(%sp)
	jsr memset
	lea (12,%sp),%sp
.L88:
	move.l %d2,%a0
	move.l %d2,%d0
	move.l (%sp)+,%d2
	rts
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
	move.l 4(%sp),%a0
	move.l 8(%sp),%a1
	move.b (%a1),%d0
	move.b %d0,(%a0)
	jeq .L92
.L93:
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d1
	move.b %d1,(%a0)
	jne .L93
.L92:
	move.l %a0,%d0
	rts
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
	move.l 4(%sp),%a0
	clr.l %d1
	move.b 11(%sp),%d1
	move.b (%a0),%d0
	jeq .L100
.L101:
	and.l #255,%d0
	cmp.l %d0,%d1
	jeq .L100
	addq.l #1,%a0
	move.b (%a0),%d0
	jne .L101
.L100:
	move.l %a0,%d0
	rts
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	move.l %d2,-(%sp)
	move.l 12(%sp),%a1
	move.l 8(%sp),%d1
.L111:
	move.l %d1,%a0
	move.b (%a0),%d0
	addq.l #1,%d1
	move.b %d0,%d2
	extb.l %d2
	cmp.l %d2,%a1
	jeq .L109
	tst.b %d0
	jne .L111
	sub.l %a0,%a0
.L109:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	move.l 4(%sp),%a1
	move.l 8(%sp),%a0
	move.b (%a1),%d0
	move.b (%a0),%d1
	cmp.b %d0,%d1
	jne .L121
.L116:
	tst.b %d0
	jeq .L124
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d0
	move.b (%a0),%d1
	cmp.b %d0,%d1
	jeq .L116
.L121:
	and.l #255,%d0
	and.l #255,%d1
	sub.l %d1,%d0
	rts
.L124:
	clr.l %d0
	and.l #255,%d1
	sub.l %d1,%d0
	rts
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
	move.l 4(%sp),%a1
	tst.b (%a1)
	jeq .L128
	move.l %a1,%a0
.L127:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L127
	move.l %a0,%d0
	sub.l %a1,%d0
	rts
.L128:
	clr.l %d0
	rts
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 20(%sp),%d1
	jeq .L140
	move.b (%a0),%d0
	jeq .L145
	move.l 16(%sp),%a1
	lea -1(%a0,%d1.l),%a2
.L136:
	move.l %a1,%a3
	move.b (%a1)+,%d1
	jeq .L142
	cmp.l %a0,%a2
	jeq .L142
	cmp.b %d1,%d0
	jne .L142
	addq.l #1,%a0
	move.b (%a0),%d0
	jne .L136
	move.b 1(%a3),%d1
	clr.l %d0
	and.l #255,%d1
	sub.l %d1,%d0
.L132:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L142:
	and.l #255,%d0
	and.l #255,%d1
	sub.l %d1,%d0
	jra .L132
.L140:
	clr.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L145:
	move.l 16(%sp),%a1
	move.b (%a1),%d1
	clr.l %d0
	and.l #255,%d1
	sub.l %d1,%d0
	jra .L132
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	move.l 4(%sp),%a0
	move.l 8(%sp),%a1
	moveq #1,%d0
	cmp.l 12(%sp),%d0
	jge .L146
	moveq #-2,%d1
	and.l 12(%sp),%d1
	add.l %a0,%d1
.L148:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%d1
	jne .L148
.L146:
	rts
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.type	isalpha, @function
isalpha:
	moveq #32,%d0
	or.l 4(%sp),%d0
	move.w #-97,%a0
	lea (%a0,%d0.l),%a1
	moveq #25,%d1
	cmp.l %a1,%d1
	scc %d0
	extb.l %d0
	neg.l %d0
	rts
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.type	isascii, @function
isascii:
	moveq #127,%d1
	cmp.l 4(%sp),%d1
	scc %d0
	extb.l %d0
	neg.l %d0
	rts
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.type	isblank, @function
isblank:
	move.l 4(%sp),%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	jeq .L158
	move.w #9,%a0
	cmp.l %d0,%a0
	seq %d0
	extb.l %d0
	neg.l %d0
	rts
.L158:
	moveq #1,%d0
	rts
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L163
	move.w #127,%a0
	cmp.l %d0,%a0
	seq %d0
	extb.l %d0
	neg.l %d0
	rts
.L163:
	moveq #1,%d0
	rts
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.type	isdigit, @function
isdigit:
	moveq #-48,%d0
	add.l 4(%sp),%d0
	moveq #9,%d1
	cmp.l %d0,%d1
	scc %d0
	extb.l %d0
	neg.l %d0
	rts
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.type	isgraph, @function
isgraph:
	moveq #-33,%d0
	add.l 4(%sp),%d0
	moveq #93,%d1
	cmp.l %d0,%d1
	scc %d0
	extb.l %d0
	neg.l %d0
	rts
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.type	islower, @function
islower:
	moveq #-97,%d0
	add.l 4(%sp),%d0
	moveq #25,%d1
	cmp.l %d0,%d1
	scc %d0
	extb.l %d0
	neg.l %d0
	rts
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.type	isprint, @function
isprint:
	moveq #-32,%d0
	add.l 4(%sp),%d0
	moveq #94,%d1
	cmp.l %d0,%d1
	scc %d0
	extb.l %d0
	neg.l %d0
	rts
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.type	isspace, @function
isspace:
	move.l 4(%sp),%a0
	moveq #32,%d0
	cmp.l %a0,%d0
	jeq .L176
	lea (-9,%a0),%a1
	moveq #4,%d1
	cmp.l %a1,%d1
	scc %d0
	extb.l %d0
	neg.l %d0
	rts
.L176:
	moveq #1,%d0
	rts
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.type	isupper, @function
isupper:
	moveq #-65,%d0
	add.l 4(%sp),%d0
	moveq #25,%d1
	cmp.l %d0,%d1
	scc %d0
	extb.l %d0
	neg.l %d0
	rts
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	move.l 4(%sp),%a0
	moveq #31,%d0
	cmp.l %a0,%d0
	jcc .L185
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcs .L188
.L185:
	moveq #1,%d0
	rts
.L188:
	move.l %a0,%d0
	add.l #-8232,%d0
	move.w #1,%a1
	cmp.l %d0,%a1
	jcc .L185
	add.l #-65529,%a0
	moveq #2,%d1
	cmp.l %a0,%d1
	scc %d0
	extb.l %d0
	neg.l %d0
	rts
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
	moveq #-48,%d0
	add.l 4(%sp),%d0
	moveq #9,%d1
	cmp.l %d0,%d1
	scc %d0
	extb.l %d0
	neg.l %d0
	rts
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.type	iswprint, @function
iswprint:
	move.l 4(%sp),%d0
	cmp.l #254,%d0
	jls .L200
	cmp.l #8231,%d0
	jls .L196
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L196
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L196
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L197
	and.l #65534,%d0
	cmp.l #65534,%d0
	sne %d0
	extb.l %d0
	neg.l %d0
	rts
.L196:
	moveq #1,%d0
	rts
.L200:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	move.w #32,%a0
	cmp.l %d0,%a0
	scs %d0
	extb.l %d0
	neg.l %d0
	rts
.L197:
	clr.l %d0
	rts
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	move.w #-48,%a0
	add.l 4(%sp),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L203
	moveq #32,%d1
	or.l 4(%sp),%d1
	move.w #-97,%a1
	lea (%a1,%d1.l),%a0
	moveq #5,%d0
	cmp.l %a0,%d0
	scc %d0
	extb.l %d0
	neg.l %d0
	rts
.L203:
	moveq #1,%d0
	rts
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.type	toascii, @function
toascii:
	moveq #127,%d0
	and.l 4(%sp),%d0
	rts
	.size	toascii, .-toascii
	.align	2
	.globl	fdim
	.type	fdim, @function
fdim:
	fmove.d 4(%sp),%fp0
	fmove.d 12(%sp),%fp1
	fcmp.x %fp0,%fp0
	fjun .L208
	fcmp.x %fp1,%fp1
	fjun .L212
	fcmp.x %fp1,%fp0
	fjngt .L215
	fsub.x %fp1,%fp0
.L208:
	rts
.L215:
	fmovecr #0xf,%fp0
	rts
.L212:
	fmove.x %fp1,%fp0
	rts
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
	fmove.s 4(%sp),%fp0
	move.l 8(%sp),%d0
	fcmp.x %fp0,%fp0
	fjun .L218
	fmove.s %d0,%fp1
	fcmp.s %d0,%fp1
	fjun .L222
	fcmp.s %d0,%fp0
	fjngt .L225
	fsub.s %d0,%fp0
.L218:
	rts
.L225:
	fmovecr #0xf,%fp0
	rts
.L222:
	fmove.s %d0,%fp0
	rts
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
	fmove.d 4(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L233
	fmove.d 12(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L234
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l 12(%sp),%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L230
	tst.l %d0
	jeq .L234
.L228:
	rts
.L230:
	fmove.d 4(%sp),%fp0
	fcmp.d 12(%sp),%fp0
	fslt %d0
	tst.b %d0
	jeq .L228
.L233:
	fmove.d 12(%sp),%fp0
	rts
.L234:
	fmove.d 4(%sp),%fp0
	rts
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	fmove.s %d1,%fp0
	fcmp.s %d1,%fp0
	fjun .L245
	fmove.s %d0,%fp1
	fcmp.s %d0,%fp1
	fjun .L244
	move.l %d1,%d2
	and.l #-2147483648,%d2
	move.l %d0,%d3
	and.l #-2147483648,%d3
	cmp.l %d2,%d3
	jne .L248
	fcmp.s %d0,%fp0
	fslt %d2
	tst.b %d2
	jne .L245
	move.l %d1,%d0
.L245:
	fmove.s %d0,%fp0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L248:
	tst.l %d2
	jne .L245
.L244:
	fmove.s %d1,%fp0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
	fmove.x 4(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L254
	fmove.x 16(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L255
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l 16(%sp),%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L251
	tst.l %d0
	jeq .L255
.L249:
	rts
.L251:
	fmove.x 4(%sp),%fp0
	fcmp.x 16(%sp),%fp0
	fslt %d0
	tst.b %d0
	jeq .L249
.L254:
	fmove.x 16(%sp),%fp0
	rts
.L255:
	fmove.x 4(%sp),%fp0
	rts
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	fmove.d 4(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L264
	fmove.d 12(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L266
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l 12(%sp),%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L261
	tst.l %d0
	jeq .L259
.L266:
	fmove.d 4(%sp),%fp0
.L259:
	rts
.L261:
	fmove.d 4(%sp),%fp0
	fcmp.d 12(%sp),%fp0
	fslt %d0
	tst.b %d0
	jne .L259
.L264:
	fmove.d 12(%sp),%fp0
	rts
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	fmove.s %d0,%fp0
	fcmp.s %d0,%fp0
	fjun .L274
	fmove.s %d1,%fp0
	fcmp.s %d1,%fp0
	fjun .L276
	move.l %d0,%d2
	and.l #-2147483648,%d2
	move.l %d1,%d3
	and.l #-2147483648,%d3
	cmp.l %d2,%d3
	jne .L280
	fmove.s %d0,%fp1
	fcmp.s %d1,%fp1
	fslt %d2
	tst.b %d2
	jne .L276
	move.l %d1,%d0
.L276:
	fmove.s %d0,%fp0
.L269:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L280:
	tst.l %d2
	jeq .L269
	fmove.s %d0,%fp0
	jra .L269
.L274:
	fmove.s %d1,%fp0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
	fmove.x 4(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L286
	fmove.x 16(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L288
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l 16(%sp),%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L283
	tst.l %d0
	jeq .L281
.L288:
	fmove.x 4(%sp),%fp0
.L281:
	rts
.L283:
	fmove.x 4(%sp),%fp0
	fcmp.x 16(%sp),%fp0
	fslt %d0
	tst.b %d0
	jne .L281
.L286:
	fmove.x 16(%sp),%fp0
	rts
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	lea (s.0),%a0
	jeq .L292
	lea digits,%a1
.L293:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L293
.L292:
	clr.b (%a0)
	lea (s.0),%a0
	move.l %a0,%d0
	rts
	.size	l64a, .-l64a
	.align	2
	.globl	srand
	.type	srand, @function
srand:
	move.l 4(%sp),%d0
	subq.l #1,%d0
	move.l %d0,seed+4
	clr.l seed
	rts
	.size	srand, .-srand
	.align	2
	.globl	rand
	.type	rand, @function
rand:
	move.l %d2,-(%sp)
	move.l seed,%d0
	muls.l #1284865837,%d0
	move.l seed+4,%d1
	muls.l #1481765933,%d1
	move.l %d0,%a0
	lea (%a0,%d1.l),%a1
	move.l #1284865837,%d2
	move.l seed+4,%d1
	mulu.l %d2,%d0:%d1
	add.l %a1,%d0
	clr.l %d2
	addq.l #1,%d1
	addx.l %d2,%d0
	move.l %d0,seed
	move.l %d1,seed+4
	lsr.l #1,%d0
	move.l (%sp)+,%d2
	rts
	.size	rand, .-rand
	.align	2
	.globl	insque
	.type	insque, @function
insque:
	move.l 4(%sp),%a0
	move.l 8(%sp),%a1
	tst.l %a1
	jeq .L310
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	tst.l %a1
	jeq .L302
	move.l %a0,4(%a1)
.L302:
	rts
.L310:
	clr.l 4(%a0)
	clr.l (%a0)
	rts
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	move.l (%a0),%a1
	tst.l %a1
	jeq .L312
	move.l 4(%a0),4(%a1)
.L312:
	move.l 4(%a0),%a0
	tst.l %a0
	jeq .L311
	move.l %a1,(%a0)
.L311:
	rts
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d7
	move.l 44(%sp),%a2
	move.l 48(%sp),%d5
	move.l 52(%sp),%a3
	move.l (%a2),%d4
	jeq .L323
	move.l 40(%sp),%d2
	clr.l %d3
.L325:
	move.l %d2,%d6
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L322
	addq.l #1,%d3
	add.l %d5,%d2
	cmp.l %d4,%d3
	jne .L325
.L323:
	move.l %d4,%d0
	addq.l #1,%d0
	move.l %d0,(%a2)
	muls.l %d5,%d4
	move.l 40(%sp),%d6
	add.l %d4,%d6
	tst.l %d5
	jeq .L322
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L322:
	move.l %d6,%a0
	move.l %d6,%d0
	movem.l (%sp)+,#3324
	rts
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.type	lfind, @function
lfind:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d6
	move.l 44(%sp),%d7
	move.l 48(%sp),%a2
	move.l 40(%sp),%a0
	move.l (%a0),%d5
	jeq .L340
	move.l 36(%sp),%d2
	clr.l %d3
.L342:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L339
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d5,%d3
	jne .L342
.L340:
	clr.l %d4
.L339:
	move.l %d4,%a0
	move.l %d4,%d0
	movem.l (%sp)+,#1276
	rts
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d0
	jmi .L356
	rts
.L356:
	neg.l %d0
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a1
.L358:
	move.l %a1,%a2
	move.b (%a1)+,%d0
	cmp.b #32,%d0
	jeq .L358
	move.b %d0,%d1
	extb.l %d1
	move.l %d1,%a0
	lea (-9,%a0),%a3
	moveq #4,%d3
	cmp.l %a3,%d3
	jcc .L358
	cmp.b #43,%d0
	jeq .L360
	cmp.b #45,%d0
	jeq .L361
	lea (-48,%a0),%a1
	moveq #9,%d2
	cmp.l %a1,%d2
	jcs .L369
	move.l %a2,%a1
	clr.l %d2
.L363:
	clr.l %d0
.L366:
	move.l %d0,%d1
	lsl.l #2,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	addq.l #1,%a1
	lea (-48,%a0),%a2
	move.l %d1,%d0
	sub.l %a2,%d0
	move.b (%a1),%d3
	extb.l %d3
	move.l %d3,%a0
	lea (-48,%a0),%a3
	moveq #9,%d3
	cmp.l %a3,%d3
	jcc .L366
	tst.l %d2
	jne .L357
	move.l %a2,%d0
	sub.l %d1,%d0
.L357:
	movem.l (%sp)+,#3084
	rts
.L361:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	extb.l %d1
	move.l %d1,%a0
	lea (-48,%a0),%a3
	moveq #9,%d3
	cmp.l %a3,%d3
	jcs .L369
	moveq #1,%d2
	clr.l %d0
	jra .L366
.L360:
	lea (1,%a2),%a1
	move.b 1(%a2),%d2
	extb.l %d2
	move.l %d2,%a0
	lea (-48,%a0),%a2
	clr.l %d2
	moveq #9,%d0
	cmp.l %a2,%d0
	jcc .L363
.L369:
	clr.l %d0
	movem.l (%sp)+,#3084
	rts
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a1
.L380:
	move.l %a1,%a2
	move.b (%a1)+,%d0
	cmp.b #32,%d0
	jeq .L380
	move.b %d0,%d1
	extb.l %d1
	move.l %d1,%a0
	lea (-9,%a0),%a3
	moveq #4,%d3
	cmp.l %a3,%d3
	jcc .L380
	cmp.b #43,%d0
	jeq .L382
	cmp.b #45,%d0
	jeq .L400
	lea (-48,%a0),%a1
	moveq #9,%d2
	cmp.l %a1,%d2
	jcs .L390
	move.l %a2,%a1
	clr.l %d2
.L384:
	clr.l %d0
.L387:
	move.l %d0,%d1
	lsl.l #2,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	addq.l #1,%a1
	lea (-48,%a0),%a2
	move.l %d1,%d0
	sub.l %a2,%d0
	move.b (%a1),%d3
	extb.l %d3
	move.l %d3,%a0
	lea (-48,%a0),%a3
	moveq #9,%d3
	cmp.l %a3,%d3
	jcc .L387
	tst.l %d2
	jne .L379
	move.l %a2,%d0
	sub.l %d1,%d0
.L379:
	movem.l (%sp)+,#3084
	rts
.L400:
	move.b 1(%a2),%d1
	extb.l %d1
	move.l %d1,%a0
	lea (-48,%a0),%a3
	moveq #1,%d2
	moveq #9,%d3
	cmp.l %a3,%d3
	jcc .L384
.L390:
	clr.l %d0
	movem.l (%sp)+,#3084
	rts
.L382:
	lea (1,%a2),%a1
	move.b 1(%a2),%d2
	extb.l %d2
	move.l %d2,%a0
	lea (-48,%a0),%a2
	moveq #9,%d0
	cmp.l %a2,%d0
	jcs .L390
	clr.l %d2
	jra .L384
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #15920,-(%sp)
	move.l 32(%sp),%a1
.L402:
	move.l %a1,%a2
	move.b (%a1)+,%d0
	cmp.b #32,%d0
	jeq .L402
	move.b %d0,%d1
	extb.l %d1
	move.l %d1,%a0
	lea (-9,%a0),%a3
	moveq #4,%d6
	cmp.l %a3,%d6
	jcc .L402
	cmp.b #43,%d0
	jeq .L404
	cmp.b #45,%d0
	jeq .L405
	lea (-48,%a0),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcs .L413
	move.l %a2,%a1
	sub.l %a3,%a3
.L407:
	clr.l %d0
	clr.l %d1
.L410:
	move.l %d0,%d2
	move.l %d1,%d3
	add.l %d3,%d3
	addx.l %d2,%d2
	add.l %d3,%d3
	addx.l %d2,%d2
	add.l %d1,%d3
	addx.l %d0,%d2
	add.l %d3,%d3
	addx.l %d2,%d2
	addq.l #1,%a1
	move.l #-48,%d5
	add.l %a0,%d5
	smi %d4
	extb.l %d4
	move.l %d2,%d0
	move.l %d3,%d1
	sub.l %d5,%d1
	subx.l %d4,%d0
	move.b (%a1),%d6
	extb.l %d6
	move.l %d6,%a0
	lea (-48,%a0),%a2
	moveq #9,%d6
	cmp.l %a2,%d6
	jcc .L410
	tst.l %a3
	jne .L401
	move.l %d4,%d0
	move.l %d5,%d1
	sub.l %d3,%d1
	subx.l %d2,%d0
.L401:
	movem.l (%sp)+,#3196
	rts
.L405:
	lea (1,%a2),%a1
	move.b 1(%a2),%d4
	extb.l %d4
	move.l %d4,%a0
	lea (-48,%a0),%a3
	moveq #9,%d5
	cmp.l %a3,%d5
	jcs .L413
	move.w #1,%a3
	clr.l %d0
	clr.l %d1
	jra .L410
.L404:
	lea (1,%a2),%a1
	move.b 1(%a2),%d2
	extb.l %d2
	move.l %d2,%a0
	lea (-48,%a0),%a2
	sub.l %a3,%a3
	moveq #9,%d3
	cmp.l %a2,%d3
	jcc .L407
.L413:
	clr.l %d0
	clr.l %d1
	movem.l (%sp)+,#3196
	rts
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d7
	move.l 36(%sp),%d6
	move.l 40(%sp),%d2
	move.l 44(%sp),%d5
	move.l 48(%sp),%a2
.L436:
	tst.l %d2
	jeq .L424
.L439:
	move.l %d2,%d4
	lsr.l #1,%d4
	move.l %d4,%d3
	muls.l %d5,%d3
	add.l %d6,%d3
	move.l %d3,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L428
	jeq .L423
	move.l %d3,%d6
	add.l %d5,%d6
	subq.l #1,%d2
	sub.l %d4,%d2
	jne .L439
.L424:
	clr.l %d3
.L423:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#1276
	rts
.L428:
	move.l %d4,%d2
	jra .L436
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d7
	move.l 40(%sp),%d5
	move.l 48(%sp),%d4
	move.l 52(%sp),%a2
	move.l 56(%sp),%a3
	move.l 44(%sp),%d3
	jeq .L445
.L441:
	move.l %d3,%d6
	asr.l #1,%d6
	move.l %d6,%d2
	muls.l %d4,%d2
	add.l %d5,%d2
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L440
	jle .L443
	move.l %d2,%d5
	add.l %d4,%d5
	subq.l #1,%d3
	asr.l #1,%d3
	jne .L441
.L445:
	clr.l %d2
.L440:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l (%sp)+,#3324
	rts
.L443:
	tst.l %d6
	jeq .L445
	move.l %d6,%d3
	jra .L441
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
	move.l 4(%sp),%d0
	rems.l 8(%sp),%d1:%d0
	divs.l 8(%sp),%d0
	rts
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	tst.l %d0
	jlt .L461
	rts
.L461:
	neg.l %d1
	negx.l %d0
	rts
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	movem.l #15392,-(%sp)
	move.l %a1,%a2
	move.l 24(%sp),%d2
	move.l 28(%sp),%d3
	move.l 32(%sp),%d4
	move.l 36(%sp),%d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __divdi3
	lea (16,%sp),%sp
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d0,8(%a2)
	move.l %d1,12(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#1084
	rts
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.type	labs, @function
labs:
	move.l 4(%sp),%d0
	jmi .L468
	rts
.L468:
	neg.l %d0
	rts
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.type	ldiv, @function
ldiv:
	move.l 4(%sp),%d0
	rems.l 8(%sp),%d1:%d0
	divs.l 8(%sp),%d0
	rts
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.type	llabs, @function
llabs:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	tst.l %d0
	jlt .L475
	rts
.L475:
	neg.l %d1
	negx.l %d0
	rts
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.type	lldiv, @function
lldiv:
	movem.l #15392,-(%sp)
	move.l %a1,%a2
	move.l 24(%sp),%d2
	move.l 28(%sp),%d3
	move.l 32(%sp),%d4
	move.l 36(%sp),%d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __divdi3
	lea (16,%sp),%sp
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d0,8(%a2)
	move.l %d1,12(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#1084
	rts
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.type	wcschr, @function
wcschr:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d1
	move.l (%a0),%d0
	jeq .L482
.L479:
	cmp.l %d1,%d0
	jeq .L478
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L479
.L482:
	sub.l %a0,%a0
.L478:
	move.l %a0,%d0
	rts
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
	move.l 4(%sp),%a1
	move.l 8(%sp),%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jne .L488
.L487:
	tst.l %d0
	jeq .L488
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L487
.L488:
	cmp.l %d0,%d1
	jgt .L491
	slt %d0
	extb.l %d0
	neg.l %d0
	rts
.L491:
	moveq #-1,%d0
	rts
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%a2
	move.l %a0,%a1
.L496:
	move.l (%a2)+,%d0
	move.l %d0,(%a1)+
	jne .L496
	move.l %a0,%d0
	move.l (%sp)+,%a2
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%a1
	tst.l (%a1)
	jeq .L503
	move.l %a1,%a0
.L502:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L502
	sub.l %a1,%a0
	move.l %a0,%d0
	asr.l #2,%d0
	rts
.L503:
	clr.l %d0
	rts
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d1
	jeq .L514
	move.l 12(%sp),%a0
	move.l 16(%sp),%d0
.L509:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L510
	tst.l %a1
	jeq .L510
	subq.l #1,%d1
	jne .L509
.L514:
	clr.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L510:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L517
	slt %d0
	extb.l %d0
	neg.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L517:
	moveq #-1,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 8(%sp),%d1
	move.l 12(%sp),%d0
	jeq .L523
	move.l 4(%sp),%a1
.L520:
	move.l %a1,%a0
	cmp.l (%a1)+,%d1
	jeq .L518
	subq.l #1,%d0
	jne .L520
.L523:
	sub.l %a0,%a0
.L518:
	move.l %a0,%d0
	rts
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%sp),%a0
	tst.l %a0
	jeq .L533
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L528:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #4,%d1
	addq.l #4,%d0
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L537
	subq.l #1,%a0
	tst.l %a0
	jne .L528
.L533:
	clr.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L537:
	move.l (%a2),%d0
	move.l (%a1),%d1
	cmp.l %d0,%d1
	jgt .L538
	slt %d0
	extb.l %d0
	neg.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L538:
	moveq #-1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	move.l 16(%sp),%d0
	jeq .L540
	lsl.l #2,%d0
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L540:
	move.l %d2,%a0
	move.l %d2,%d0
	move.l (%sp)+,%d2
	rts
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
	move.l 20(%sp),%d1
	cmp.l %a0,%a1
	jeq .L554
	move.l %a0,%a2
	move.l %d1,%d0
	lsl.l #2,%d0
	move.l %a0,%a3
	sub.l %a1,%a3
	cmp.l %a3,%d0
	jls .L562
	tst.l %d1
	jeq .L554
	lea (%a1,%d0.l),%a2
	lea (%a0,%d0.l),%a3
.L551:
	move.l -(%a2),-(%a3)
	cmp.l %a1,%a2
	jne .L551
.L554:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L562:
	move.l %d1,%d0
	subq.l #1,%d0
	tst.l %d1
	jeq .L554
.L552:
	move.l (%a1)+,(%a2)+
	dbra %d0,.L552
	clr.w %d0
	subq.l #1,%d0
	jcc .L552
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d1
	move.l 12(%sp),%a1
	move.l %a1,%d0
	subq.l #1,%d0
	tst.l %a1
	jeq .L564
	move.l %a0,%a1
.L565:
	move.l %d1,(%a1)+
	dbra %d0,.L565
	clr.w %d0
	subq.l #1,%d0
	jcc .L565
.L564:
	move.l %a0,%d0
	rts
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
	movem.l #12320,-(%sp)
	move.l 16(%sp),%d0
	move.l 20(%sp),%a1
	move.l 24(%sp),%d1
	cmp.l %d0,%a1
	jls .L573
	move.l %d0,%a2
	lea (%a2,%d1.l),%a0
	tst.l %d1
	jeq .L572
	lea -1(%a1,%d1.l),%a1
.L575:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
	cmp.l %d0,%a0
	jne .L575
.L572:
	movem.l (%sp)+,#1036
	rts
.L573:
	cmp.l %d0,%a1
	jeq .L572
	tst.l %d1
	jeq .L572
	move.l %d1,%a0
	lea (-1,%a0),%a2
	moveq #6,%d2
	cmp.l %a2,%d2
	jcc .L607
	move.l %a1,%d3
	or.l %d0,%d3
	move.l %d0,%a2
	lea (1,%a2),%a0
	bftst %d3{#30:#2}
	jne .L576
	move.l %a1,%d2
	sub.l %a0,%d2
	moveq #2,%d3
	cmp.l %d2,%d3
	jcc .L576
	move.l %d0,%a0
	moveq #-4,%d3
	and.l %d1,%d3
	move.l %a1,%d2
	add.l %d3,%d2
.L577:
	move.l (%a0)+,(%a1)+
	cmp.l %a1,%d2
	jne .L577
	add.l %d3,%d0
	move.l %d1,%a0
	sub.l %d3,%a0
	cmp.l %d1,%d3
	jeq .L572
	move.l %d0,%a2
	move.b (%a2),(%a1)
	moveq #1,%d0
	cmp.l %a0,%d0
	jeq .L572
	move.b 1(%a2),1(%a1)
	moveq #2,%d1
	cmp.l %a0,%d1
	jeq .L572
	move.b 2(%a2),2(%a1)
	movem.l (%sp)+,#1036
	rts
.L607:
	move.l %d0,%a0
	addq.l #1,%a0
.L576:
	add.l %d1,%d0
.L580:
	move.b -1(%a0),(%a1)+
	cmp.l %a0,%d0
	jeq .L572
	addq.l #1,%a0
	jra .L580
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.type	rotl64, @function
rotl64:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%d3
	move.l 28(%sp),%d5
	move.l 32(%sp),%d2
	move.w #-32,%a0
	lea (%a0,%d2.l),%a1
	tst.l %a1
	jlt .L609
	move.l %d5,%d0
	move.l %a1,%d1
	lsl.l %d1,%d0
	clr.l %d6
	neg.l %d2
	moveq #63,%d1
	and.l %d1,%d2
	move.w #-32,%a0
	lea (%a0,%d2.l),%a1
	tst.l %a1
	jlt .L611
.L615:
	move.l %d3,%d1
	move.l %a1,%d3
	lsr.l %d3,%d1
	clr.l %d3
	or.l %d3,%d0
	or.l %d6,%d1
	movem.l (%sp)+,#124
	rts
.L609:
	moveq #31,%d4
	sub.l %d2,%d4
	move.l %d5,%d0
	lsr.l #1,%d0
	lsr.l %d4,%d0
	move.l %d3,%d6
	lsl.l %d2,%d6
	or.l %d6,%d0
	move.l %d5,%d6
	lsl.l %d2,%d6
	neg.l %d2
	moveq #63,%d1
	and.l %d1,%d2
	move.w #-32,%a0
	lea (%a0,%d2.l),%a1
	tst.l %a1
	jge .L615
.L611:
	move.l %d3,%d4
	add.l %d4,%d4
	moveq #31,%d1
	sub.l %d2,%d1
	lsl.l %d1,%d4
	lsr.l %d2,%d5
	move.l %d4,%d1
	or.l %d5,%d1
	lsr.l %d2,%d3
	or.l %d3,%d0
	or.l %d6,%d1
	movem.l (%sp)+,#124
	rts
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%d5
	move.l 28(%sp),%d3
	move.l 32(%sp),%d2
	move.w #-32,%a0
	lea (%a0,%d2.l),%a1
	tst.l %a1
	jlt .L617
	move.l %d5,%d1
	move.l %a1,%d0
	lsr.l %d0,%d1
	clr.l %d6
	neg.l %d2
	moveq #63,%d0
	and.l %d0,%d2
	move.w #-32,%a0
	lea (%a0,%d2.l),%a1
	tst.l %a1
	jlt .L619
.L623:
	move.l %d3,%d0
	move.l %a1,%d5
	lsl.l %d5,%d0
	clr.l %d3
	or.l %d6,%d0
	or.l %d3,%d1
	movem.l (%sp)+,#124
	rts
.L617:
	moveq #31,%d4
	sub.l %d2,%d4
	move.l %d5,%d1
	add.l %d1,%d1
	lsl.l %d4,%d1
	move.l %d3,%d6
	lsr.l %d2,%d6
	or.l %d6,%d1
	move.l %d5,%d6
	lsr.l %d2,%d6
	neg.l %d2
	moveq #63,%d0
	and.l %d0,%d2
	move.w #-32,%a0
	lea (%a0,%d2.l),%a1
	tst.l %a1
	jge .L623
.L619:
	move.l %d3,%d4
	lsr.l #1,%d4
	moveq #31,%d0
	sub.l %d2,%d0
	lsr.l %d0,%d4
	lsl.l %d2,%d5
	move.l %d4,%d0
	or.l %d5,%d0
	lsl.l %d2,%d3
	or.l %d6,%d0
	or.l %d3,%d1
	movem.l (%sp)+,#124
	rts
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.type	rotl32, @function
rotl32:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	rol.l %d1,%d0
	rts
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.type	rotr32, @function
rotr32:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	ror.l %d1,%d0
	rts
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	rol.l %d1,%d0
	rts
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	ror.l %d1,%d0
	rts
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.type	rotl16, @function
rotl16:
	moveq #15,%d1
	and.l 8(%sp),%d1
	move.l 4(%sp),%d0
	rol.w %d1,%d0
	rts
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.type	rotr16, @function
rotr16:
	moveq #15,%d1
	and.l 8(%sp),%d1
	move.l 4(%sp),%d0
	ror.w %d1,%d0
	rts
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.type	rotl8, @function
rotl8:
	moveq #7,%d1
	and.l 8(%sp),%d1
	move.l 4(%sp),%d0
	rol.b %d1,%d0
	rts
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.type	rotr8, @function
rotr8:
	moveq #7,%d1
	and.l 8(%sp),%d1
	move.l 4(%sp),%d0
	ror.b %d1,%d0
	rts
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
	move.l 4(%sp),%d0
	ror.w #8,%d0
	rts
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
	move.l 4(%sp),%d0
	ror.w #8,%d0
	swap %d0
	ror.w #8,%d0
	rts
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
	move.l 4(%sp),%d1
	ror.w #8,%d1
	swap %d1
	ror.w #8,%d1
	move.l 8(%sp),%d0
	ror.w #8,%d0
	swap %d0
	ror.w #8,%d0
	rts
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	clr.l %d0
.L649:
	move.l %d2,%d1
	lsr.l %d0,%d1
	addq.l #1,%d0
	btst #0,%d1
	jne .L646
	move.w #32,%a0
	cmp.l %d0,%a0
	jne .L649
	clr.l %d0
.L646:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L656
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L653
	moveq #1,%d0
.L655:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L655
.L653:
	rts
.L656:
	clr.l %d0
	rts
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	fmove.s 4(%sp),%fp0
	fcmp.s #0xff7fffff,%fp0
	fjlt .L663
	fcmp.s #0x7f7fffff,%fp0
	fsgt %d0
	extb.l %d0
	neg.l %d0
	rts
.L663:
	moveq #1,%d0
	rts
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	fmove.d 4(%sp),%fp0
	fcmp.d #0xffefffffffffffff,%fp0
	fjlt .L668
	fcmp.d #0x7fefffffffffffff,%fp0
	fsgt %d0
	extb.l %d0
	neg.l %d0
	rts
.L668:
	moveq #1,%d0
	rts
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata
	.align	2
.LC0:
	.long	-131072
	.long	-1
	.long	-1
	.align	2
.LC1:
	.long	2147352576
	.long	-1
	.long	-1
	.text
	.align	2
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	fmove.x 4(%sp),%fp0
	fcmp.x .LC0,%fp0
	fjlt .L673
	fcmp.x .LC1,%fp0
	fsgt %d0
	extb.l %d0
	neg.l %d0
	rts
.L673:
	moveq #1,%d0
	rts
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	move.l 4(%sp),%a0
	fmove.l 8(%sp),%fp0
	fmove.x %fp0,(%a0)
	rts
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
	fmove.s 4(%sp),%fp0
	move.l 8(%sp),%d0
	fcmp.x %fp0,%fp0
	fjun .L679
	fmove.x %fp0,%fp1
	fadd.x %fp0,%fp1
	fcmp.x %fp0,%fp1
	fjeq .L679
	tst.l %d0
	jlt .L693
	fmove.s #0x40000000,%fp1
	btst #0,%d0
	jeq .L681
.L682:
	fsglmul.x %fp1,%fp0
.L681:
	move.l %d0,%d0
	jpl .L694
	addq.l #1,%d0
.L694:
	asr.l #1,%d0
	jeq .L679
.L683:
	fsglmul.x %fp1,%fp1
	btst #0,%d0
	jne .L682
	move.l %d0,%d0
	jpl .L695
	addq.l #1,%d0
.L695:
	asr.l #1,%d0
	jra .L683
.L679:
	rts
.L693:
	fmove.s #0x3f000000,%fp1
	btst #0,%d0
	jeq .L681
	jra .L682
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
	fmovem #4,-(%sp)
	fmove.d 16(%sp),%fp0
	move.l 24(%sp),%d0
	fcmp.x %fp0,%fp0
	fjun .L697
	fmove.x %fp0,%fp2
	fadd.x %fp0,%fp2
	fcmp.x %fp0,%fp2
	fjeq .L697
	tst.l %d0
	jlt .L711
	fmove.d #0x4000000000000000,%fp1
	btst #0,%d0
	jeq .L699
.L700:
	fmul.x %fp1,%fp0
.L699:
	move.l %d0,%d0
	jpl .L712
	addq.l #1,%d0
.L712:
	asr.l #1,%d0
	jeq .L697
.L701:
	fmul.x %fp1,%fp1
	btst #0,%d0
	jne .L700
	move.l %d0,%d0
	jpl .L713
	addq.l #1,%d0
.L713:
	asr.l #1,%d0
	jra .L701
.L697:
	fmovem (%sp)+,#32
	rts
.L711:
	fmove.d #0x3fe0000000000000,%fp1
	btst #0,%d0
	jeq .L699
	jra .L700
	.size	ldexp, .-ldexp
	.section	.rodata
	.align	2
.LC2:
	.long	1073741824
	.long	-2147483648
	.long	0
	.align	2
.LC3:
	.long	1073610752
	.long	-2147483648
	.long	0
	.text
	.align	2
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
	fmovem #4,-(%sp)
	fmove.x 16(%sp),%fp0
	move.l 28(%sp),%d0
	fcmp.x %fp0,%fp0
	fjun .L715
	fmove.x %fp0,%fp2
	fadd.x %fp0,%fp2
	fcmp.x %fp0,%fp2
	fjeq .L715
	tst.l %d0
	jlt .L729
	fmove.x .LC2,%fp1
	btst #0,%d0
	jeq .L717
.L718:
	fmul.x %fp1,%fp0
.L717:
	move.l %d0,%d0
	jpl .L730
	addq.l #1,%d0
.L730:
	asr.l #1,%d0
	jeq .L715
.L719:
	fmul.x %fp1,%fp1
	btst #0,%d0
	jne .L718
	move.l %d0,%d0
	jpl .L731
	addq.l #1,%d0
.L731:
	asr.l #1,%d0
	jra .L719
.L715:
	fmovem (%sp)+,#32
	rts
.L729:
	fmove.x .LC3,%fp1
	btst #0,%d0
	jeq .L717
	jra .L718
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	movem.l #12344,-(%sp)
	move.l 24(%sp),%a0
	move.l 28(%sp),%a3
	move.l 32(%sp),%d1
	jeq .L733
	move.l %d1,%d0
	subq.l #1,%d0
	moveq #3,%d2
	cmp.l %d0,%d2
	jcc .L734
	move.l %a0,%d0
	move.l %a3,%d3
	or.l %d3,%d0
	bftst %d0{#30:#2}
	jne .L734
	move.l %a3,%a2
	moveq #-4,%d2
	and.l %d1,%d2
	lea (%a0,%d2.l),%a4
	move.l %a0,%a1
.L735:
	move.l (%a2)+,%d0
	move.l (%a1),%d3
	eor.l %d3,%d0
	move.l %d0,(%a1)+
	cmp.l %a4,%a1
	jne .L735
	add.l %d2,%a3
	move.l %d1,%d0
	sub.l %d2,%d0
	cmp.l %d2,%d1
	jeq .L733
	move.b (%a3),%d1
	eor.b %d1,(%a4)
	move.w #1,%a2
	cmp.l %d0,%a2
	jeq .L733
	move.b 1(%a3),%d2
	eor.b %d2,1(%a4)
	subq.l #2,%d0
	jeq .L733
	move.b 2(%a3),%d3
	eor.b %d3,2(%a4)
.L733:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L734:
	add.l %a3,%d1
	move.l %a0,%a4
.L737:
	addq.l #1,%a4
	move.b (%a3)+,%d0
	eor.b %d0,-1(%a4)
	cmp.l %d1,%a3
	jeq .L733
	addq.l #1,%a4
	move.b (%a3)+,%d0
	eor.b %d0,-1(%a4)
	cmp.l %d1,%a3
	jne .L737
	jra .L733
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	move.l 16(%sp),%d0
	move.l %a0,%a1
	tst.b (%a0)
	jeq .L754
.L755:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L755
.L754:
	tst.l %d0
	jeq .L756
	move.l 12(%sp),%a2
.L757:
	move.b (%a2)+,%d1
	move.b %d1,(%a1)+
	jeq .L759
	subq.l #1,%d0
	jne .L757
.L756:
	clr.b (%a1)
.L759:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	rts
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.type	strnlen, @function
strnlen:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d1
	clr.l %d0
	tst.l %d1
	jeq .L768
	tst.b (%a0,%d0.l)
	jne .L771
.L768:
	rts
.L771:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jeq .L768
	tst.b (%a0,%d0.l)
	jeq .L768
	jra .L771
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d2
	move.b (%a0),%d1
	jeq .L782
.L778:
	move.l %d2,%a1
.L781:
	move.b (%a1)+,%d0
	jeq .L786
	cmp.b %d0,%d1
	jne .L781
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L786:
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L778
.L782:
	sub.l %a0,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%a1
	move.l 16(%sp),%d3
	clr.l %d2
.L790:
	move.b (%a1),%d0
	move.b %d0,%d1
	extb.l %d1
	cmp.l %d1,%d3
	jne .L788
	move.l %a1,%a0
	move.l %a0,%d2
	addq.l #1,%a1
	tst.b %d0
	jne .L790
.L794:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L788:
	move.l %d2,%a0
	move.l %a0,%d2
	addq.l #1,%a1
	tst.b %d0
	jne .L790
	jra .L794
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #15408,-(%sp)
	move.l 28(%sp),%d1
	move.l 32(%sp),%a3
	move.b (%a3),%d3
	jeq .L805
	move.l %a3,%a0
.L797:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L797
	move.l %a0,%d5
	sub.l %a3,%d5
	cmp.l %a0,%a3
	jeq .L805
	subq.l #1,%d5
.L803:
	move.l %d1,%a0
	move.b (%a0),%d0
	addq.l #1,%d1
	cmp.b %d0,%d3
	jeq .L802
	tst.b %d0
	jne .L803
	sub.l %a0,%a0
.L795:
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
.L802:
	move.b %d3,%d0
	move.l %a3,%d2
	move.l %a0,%d4
	add.l %d5,%d4
	move.l %a0,%a1
.L799:
	move.l %d2,%a2
	move.b (%a2),%d1
	addq.l #1,%d2
	tst.b %d1
	jeq .L800
	cmp.l %a1,%d4
	jeq .L800
	cmp.b %d1,%d0
	jne .L800
	addq.l #1,%a1
	move.b (%a1),%d0
	jne .L799
	move.l %d2,%a2
.L800:
	cmp.b (%a2),%d0
	jeq .L795
	move.l %a0,%d1
	addq.l #1,%d1
	jra .L803
.L805:
	move.l %d1,%a0
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
	fmove.d 4(%sp),%fp0
	fjlt .L826
	fjngt .L818
	ftst.d 12(%sp)
	fjlt .L817
.L818:
	rts
.L826:
	ftst.d 12(%sp)
	fjngt .L818
.L817:
	fneg.x %fp0,%fp0
	rts
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	movem.l #12344,-(%sp)
	move.l 24(%sp),%a0
	move.l 36(%sp),%d1
	jeq .L827
	cmp.l 28(%sp),%d1
	jhi .L838
	move.l 28(%sp),%d0
	sub.l %d1,%d0
	add.l %a0,%d0
	cmp.l %a0,%d0
	jcs .L838
	move.l 32(%sp),%a4
	move.b (%a4)+,%d3
	move.l %d1,%d2
	subq.l #1,%d2
.L833:
	move.l %a0,%a2
	cmp.b (%a2)+,%d3
	jeq .L845
	move.l %a2,%a0
.L829:
	cmp.l %d0,%a0
	jls .L833
.L838:
	sub.l %a0,%a0
.L827:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L845:
	tst.l %d2
	jeq .L827
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
.L830:
	cmpm.b (%a3)+,(%a1)+
	jne .L846
.L831:
	cmp.l %a1,%d1
	jeq .L827
	cmpm.b (%a3)+,(%a1)+
	jeq .L831
.L846:
	cmp.l %d0,%a2
	jhi .L838
	move.l %a2,%a0
	cmp.b (%a0)+,%d3
	jne .L829
	move.l %a2,%a1
	move.l %a0,%a2
	move.l %a1,%a0
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
	jra .L830
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	jeq .L848
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L848:
	move.l 8(%sp),%a0
	add.l %d2,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.type	frexp, @function
frexp:
	fmovem #4,-(%sp)
	fmove.d 16(%sp),%fp0
	fjlt .L879
	fmovecr #0x32,%fp2
	fcmp.x %fp2,%fp0
	fjnge .L880
	clr.l %d1
	clr.l %d0
	fmovecr #0x32,%fp2
.L863:
	addq.l #1,%d0
	fmul.d #0x3fe0000000000000,%fp0
	fcmp.x %fp2,%fp0
	fjge .L863
.L864:
	move.l 24(%sp),%a1
	move.l %d0,(%a1)
	tst.l %d1
	jeq .L854
	fneg.x %fp0,%fp0
.L854:
	fmovem (%sp)+,#32
	rts
.L880:
	fcmp.d #0x3fe0000000000000,%fp0
	fjnlt .L860
	ftst.x %fp0
	fjne .L869
.L860:
	move.l 24(%sp),%a0
	clr.l (%a0)
	fmovem (%sp)+,#32
	rts
.L879:
	fneg.x %fp0,%fp1
	fcmp.d #0xbff0000000000000,%fp0
	fjnle .L881
	fmove.x %fp1,%fp0
	moveq #1,%d1
	clr.l %d0
	fmovecr #0x32,%fp2
	jra .L863
.L881:
	fcmp.d #0xbfe0000000000000,%fp0
	fjngt .L860
	moveq #1,%d1
	fmove.x %fp1,%fp0
	clr.l %d0
.L865:
	subq.l #1,%d0
	fadd.x %fp0,%fp0
	fcmp.d #0x3fe0000000000000,%fp0
	fjnlt .L864
	subq.l #1,%d0
	fadd.x %fp0,%fp0
	fcmp.d #0x3fe0000000000000,%fp0
	fjlt .L865
	jra .L864
.L869:
	fmove.x %fp0,%fp1
	clr.l %d1
	fmove.x %fp1,%fp0
	clr.l %d0
	jra .L865
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
	movem.l #16188,-(%sp)
	move.l 52(%sp),%d2
	move.l 56(%sp),%d3
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	sub.l %a2,%a2
	sub.l %a3,%a3
	move.l %d0,%d4
	or.l %d1,%d4
	jeq .L882
.L884:
	sub.l %a4,%a4
	moveq #1,%d5
	and.l %d1,%d5
	move.l %d5,%a5
	move.l %a4,%d4
	move.l %a5,%d5
	neg.l %d5
	negx.l %d4
	move.l %d4,%a0
	move.l %d5,%a1
	move.l %d4,%d6
	and.l %d2,%d6
	move.l %a1,%d7
	and.l %d3,%d7
	move.l %a2,%d4
	move.l %a3,%d5
	add.l %d7,%d5
	addx.l %d6,%d4
	move.l %d4,%a2
	move.l %d5,%a3
	add.l %d3,%d3
	addx.l %d2,%d2
	lsr.l #1,%d0
	roxr.l #1,%d1
	move.l %d0,%d5
	or.l %d1,%d5
	jne .L884
.L882:
	move.l %a2,%d0
	move.l %a3,%d1
	movem.l (%sp)+,#15612
	rts
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%a0
	move.l 20(%sp),%d1
	cmp.l %d1,%a0
	jls .L914
	moveq #32,%d0
	moveq #1,%d2
.L890:
	tst.l %d1
	jlt .L895
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L892
	subq.l #1,%d0
	jne .L890
	tst.l 24(%sp)
	jne .L915
.L889:
	movem.l (%sp)+,#28
	rts
.L892:
	tst.l %d2
	jeq .L905
.L895:
	clr.l %d0
.L900:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %a0,%d1
	sls %d3
	move.b %d3,%d4
	neg.b %d4
	tst.b %d3
	jeq .L897
	move.l %a1,%a0
.L897:
	tst.b %d4
	jeq .L898
	move.l %d2,%d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L900
.L916:
	tst.l 24(%sp)
	jeq .L889
	jra .L915
.L898:
	clr.l %d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L900
	jra .L916
.L915:
	move.l %a0,%d0
	movem.l (%sp)+,#28
	rts
.L914:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %d1,%a0
	scc %d2
	move.b %d2,%d0
	neg.b %d0
	tst.b %d2
	jeq .L903
	move.l %a1,%a0
.L903:
	and.l #255,%d0
	tst.l 24(%sp)
	jeq .L889
	jra .L915
.L905:
	clr.l %d0
	tst.l 24(%sp)
	jeq .L889
	jra .L915
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	move.b %d1,%d2
	asr.b #7,%d2
	move.b %d2,%d0
	eor.b %d1,%d0
	cmp.b %d2,%d1
	jeq .L919
	extb.l %d0
	lsl.l #8,%d0
	bfffo %d0{#0:#0},%d0
	subq.l #1,%d0
	move.l (%sp)+,%d2
	rts
.L919:
	moveq #7,%d0
	move.l (%sp)+,%d2
	rts
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	movem.l #16128,-(%sp)
	move.l 28(%sp),%d2
	move.l 32(%sp),%d3
	move.l %d2,%d4
	move.l %d3,%d5
	add.l %d4,%d4
	subx.l %d4,%d4
	move.l %d4,%d5
	move.l %d2,%d1
	eor.l %d4,%d1
	move.l %d3,%d0
	eor.l %d4,%d0
	sub.l %d5,%d3
	subx.l %d4,%d2
	jeq .L926
	tst.l %d1
	jne .L929
	bfffo %d0{#0:#0},%d0
	moveq #32,%d7
	add.l %d7,%d0
	subq.l #1,%d0
.L922:
	movem.l (%sp)+,#252
	rts
.L929:
	bfffo %d1{#0:#0},%d0
	subq.l #1,%d0
	jra .L922
.L926:
	moveq #63,%d0
	movem.l (%sp)+,#252
	rts
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	clr.l %d0
	tst.l %d2
	jeq .L930
.L932:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L932
.L930:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
	movem.l #15416,-(%sp)
	move.l 32(%sp),%a2
	move.l 36(%sp),%a3
	move.l 40(%sp),%d2
	move.l %d2,%d0
	lsr.l #3,%d0
	moveq #-8,%d1
	and.l %d2,%d1
	cmp.l %a2,%a3
	jhi .L938
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L969
.L938:
	tst.l %d0
	jeq .L941
	move.l %a3,%a4
	move.l %a2,%a0
	lsl.l #3,%d0
	add.l %a3,%d0
.L942:
	move.l (%a4)+,%d3
	move.l (%a4)+,%d4
	move.l %d3,(%a0)+
	move.l %d4,(%a0)+
	cmp.l %a4,%d0
	jne .L942
	cmp.l %d2,%d1
	jcc .L937
	move.l %d2,%d4
	sub.l %d1,%d4
	move.l %d4,%d0
	subq.l #1,%d0
	moveq #6,%d5
	cmp.l %d0,%d5
	jcc .L964
	lea (%a2,%d1.l),%a0
	move.l %a0,%d3
	move.l %a3,%d0
	add.l %d1,%d0
	lea 1(%a3,%d1.l),%a4
	move.l %a0,%a1
	sub.l %a4,%a1
	moveq #2,%d5
	cmp.l %a1,%d5
	jcc .L944
	move.l %a0,%d5
	or.l %d0,%d5
	bftst %d5{#30:#2}
	jne .L944
	move.l %d0,%a4
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L945:
	move.l (%a4)+,(%a0)+
	cmp.l %a0,%d0
	jne .L945
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L937
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d4
	addq.l #1,%d4
	cmp.l %d2,%d4
	jcc .L937
	move.b (%a3,%d4.l),(%a2,%d4.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L937
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L937:
	movem.l (%sp)+,#7228
	rts
.L969:
	lea (%a2,%d2.l),%a1
	tst.l %d2
	jeq .L937
.L949:
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jeq .L937
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jne .L949
	jra .L937
.L941:
	tst.l %d2
	jeq .L937
.L964:
	move.l %a2,%d3
	add.l %d1,%d3
	move.l %a3,%d0
	add.l %d1,%d0
.L944:
	move.l %d0,%a2
	move.l %d3,%a0
	add.l %a3,%d2
.L947:
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jeq .L937
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jne .L947
	jra .L937
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
	movem.l #14384,-(%sp)
	move.l 24(%sp),%a2
	move.l 28(%sp),%a3
	move.l 32(%sp),%d0
	move.l %d0,%d2
	lsr.l #1,%d2
	cmp.l %a2,%a3
	jhi .L971
	lea (%a3,%d0.l),%a0
	cmp.l %a0,%a2
	jls .L1001
.L971:
	tst.l %d2
	jeq .L974
	move.l %d2,%d1
	subq.l #1,%d1
	moveq #8,%d3
	cmp.l %d1,%d3
	jcc .L975
	move.l %a3,%d4
	move.l %a2,%d1
	or.l %d1,%d4
	bftst %d4{#30:#2}
	jne .L975
	move.l %a3,%d3
	addq.l #2,%d3
	cmp.l %a2,%d3
	jeq .L975
	move.l %d0,%d3
	lsr.l #2,%d3
	move.l %a3,%a1
	moveq #-4,%d4
	and.l %d0,%d4
	add.l %d4,%d1
	move.l %a2,%a0
.L976:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d1
	jne .L976
	add.l %d3,%d3
	cmp.l %d2,%d3
	jeq .L974
	move.w (%a3,%d4.l),(%a2,%d4.l)
.L974:
	btst #0,%d0
	jeq .L970
	move.b -1(%a3,%d0.l),-1(%a2,%d0.l)
.L970:
	movem.l (%sp)+,#3100
	rts
.L1001:
	lea (%a2,%d0.l),%a1
	tst.l %d0
	jeq .L970
.L981:
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jeq .L970
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jne .L981
	jra .L970
.L975:
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d2,%d2
	add.l %a3,%d2
.L978:
	move.w (%a0)+,(%a1)+
	cmp.l %d2,%a0
	jeq .L974
	move.w (%a0)+,(%a1)+
	cmp.l %d2,%a0
	jne .L978
	jra .L974
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
	movem.l #15416,-(%sp)
	move.l 32(%sp),%a2
	move.l 36(%sp),%a3
	move.l 40(%sp),%d2
	move.l %d2,%d0
	lsr.l #2,%d0
	moveq #-4,%d1
	and.l %d2,%d1
	cmp.l %a2,%a3
	jhi .L1003
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L1034
.L1003:
	tst.l %d0
	jeq .L1006
	move.l %a3,%a4
	move.l %a2,%a0
	lsl.l #2,%d0
	add.l %a3,%d0
.L1007:
	move.l (%a4)+,(%a0)+
	cmp.l %a4,%d0
	jne .L1007
	cmp.l %d2,%d1
	jcc .L1002
	move.l %d2,%d4
	sub.l %d1,%d4
	move.l %d4,%d5
	subq.l #1,%d5
	moveq #6,%d3
	cmp.l %d5,%d3
	jcc .L1029
	lea (%a2,%d1.l),%a0
	move.l %a0,%d3
	move.l %a3,%d0
	add.l %d1,%d0
	lea 1(%a3,%d1.l),%a4
	move.l %a0,%a1
	sub.l %a4,%a1
	moveq #2,%d5
	cmp.l %a1,%d5
	jcc .L1009
	move.l %a0,%d5
	or.l %d0,%d5
	bftst %d5{#30:#2}
	jne .L1009
	move.l %d0,%a4
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L1010:
	move.l (%a4)+,(%a0)+
	cmp.l %a0,%d0
	jne .L1010
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L1002
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d4
	addq.l #1,%d4
	cmp.l %d2,%d4
	jcc .L1002
	move.b (%a3,%d4.l),(%a2,%d4.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L1002
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L1002:
	movem.l (%sp)+,#7228
	rts
.L1034:
	lea (%a2,%d2.l),%a1
	tst.l %d2
	jeq .L1002
.L1014:
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jeq .L1002
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jne .L1014
	jra .L1002
.L1006:
	tst.l %d2
	jeq .L1002
.L1029:
	move.l %a2,%d3
	add.l %d1,%d3
	move.l %a3,%d0
	add.l %d1,%d0
.L1009:
	move.l %d0,%a2
	move.l %d3,%a0
	add.l %a3,%d2
.L1012:
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jeq .L1002
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jne .L1012
	jra .L1002
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
	move.l 4(%sp),%d1
	rems.l 8(%sp),%d0:%d1
	rts
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.type	__uitod, @function
__uitod:
	move.l 4(%sp),%d0
	fmove.l %d0,%fp0
	tst.l %d0
	jlt .L1041
	rts
.L1041:
	fadd.d #0x41f0000000000000,%fp0
	rts
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.type	__uitof, @function
__uitof:
	move.l 4(%sp),%d0
	fmove.l %d0,%fp0
	tst.l %d0
	jlt .L1046
	fmove.s %fp0,%d1
	fmove.s %d1,%fp0
	rts
.L1046:
	fadd.d #0x41f0000000000000,%fp0
	fmove.s %fp0,%d1
	fmove.s %d1,%fp0
	rts
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __floatundidf
	addq.l #8,%sp
	rts
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __floatundisf
	addq.l #8,%sp
	rts
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.type	__umodi, @function
__umodi:
	move.l 4(%sp),%d1
	remu.l 8(%sp),%d0:%d1
	rts
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.w %d0,%d2
	clr.l %d1
	move.w %d0,%d1
	tst.w %d0
	jmi .L1056
	move.l %d1,%d0
	moveq #14,%d3
	asr.l %d3,%d0
	jne .L1053
	move.l %d1,%d0
	moveq #13,%d3
	asr.l %d3,%d0
	jne .L1057
	move.l %d1,%d0
	moveq #12,%d3
	asr.l %d3,%d0
	jne .L1058
	move.l %d1,%d0
	moveq #11,%d3
	asr.l %d3,%d0
	jne .L1059
	move.l %d1,%d0
	moveq #10,%d3
	asr.l %d3,%d0
	jne .L1060
	move.l %d1,%d0
	moveq #9,%d3
	asr.l %d3,%d0
	jne .L1061
	move.l %d1,%d0
	asr.l #8,%d0
	jne .L1062
	move.l %d1,%d3
	asr.l #7,%d3
	jne .L1063
	move.l %d1,%d0
	asr.l #6,%d0
	jne .L1064
	move.l %d1,%d3
	asr.l #5,%d3
	jne .L1065
	move.l %d1,%d0
	asr.l #4,%d0
	jne .L1066
	move.l %d1,%d3
	asr.l #3,%d3
	jne .L1067
	move.l %d1,%d0
	asr.l #2,%d0
	jne .L1068
	asr.l #1,%d1
	jne .L1069
	moveq #16,%d0
	tst.w %d2
	jne .L1074
.L1053:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1056:
	clr.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1067:
	moveq #12,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1074:
	moveq #15,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1057:
	moveq #2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1058:
	moveq #3,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1059:
	moveq #4,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1060:
	moveq #5,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1061:
	moveq #6,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1062:
	moveq #7,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1063:
	moveq #8,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1064:
	moveq #9,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1065:
	moveq #10,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1066:
	moveq #11,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1068:
	moveq #13,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1069:
	moveq #14,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	move.l 4(%sp),%d1
	btst #0,%d1
	jne .L1078
	btst #1,%d1
	jne .L1079
	btst #2,%d1
	jne .L1080
	btst #3,%d1
	jne .L1081
	btst #4,%d1
	jne .L1082
	btst #5,%d1
	jne .L1083
	btst #6,%d1
	jne .L1084
	tst.b %d1
	jmi .L1085
	btst #8,%d1
	jne .L1086
	btst #9,%d1
	jne .L1087
	btst #10,%d1
	jne .L1088
	btst #11,%d1
	jne .L1089
	btst #12,%d1
	jne .L1090
	btst #13,%d1
	jne .L1091
	btst #14,%d1
	jne .L1092
	moveq #16,%d0
	tst.w %d1
	jmi .L1097
	rts
.L1078:
	clr.l %d0
	rts
.L1079:
	moveq #1,%d0
	rts
.L1090:
	moveq #12,%d0
	rts
.L1097:
	moveq #15,%d0
	rts
.L1080:
	moveq #2,%d0
	rts
.L1081:
	moveq #3,%d0
	rts
.L1082:
	moveq #4,%d0
	rts
.L1083:
	moveq #5,%d0
	rts
.L1084:
	moveq #6,%d0
	rts
.L1085:
	moveq #7,%d0
	rts
.L1086:
	moveq #8,%d0
	rts
.L1087:
	moveq #9,%d0
	rts
.L1088:
	moveq #10,%d0
	rts
.L1089:
	moveq #11,%d0
	rts
.L1091:
	moveq #13,%d0
	rts
.L1092:
	moveq #14,%d0
	rts
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	fmove.s 4(%sp),%fp0
	fcmp.s #0x47000000,%fp0
	fjge .L1106
	fintrz.x %fp0,%fp1
	fmove.l %fp1,%d0
	rts
.L1106:
	fsub.s #0x47000000,%fp0
	fintrz.x %fp0,%fp0
	fmove.l %fp0,%d0
	add.l #32768,%d0
	rts
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	bfextu %d0{#30:#1},%d2
	moveq #1,%d1
	and.l %d0,%d1
	move.l %d1,%a0
	lea (%a0,%d2.l),%a1
	bfextu %d0{#29:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#28:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#27:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#26:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#25:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#24:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#23:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#22:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#21:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#20:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#19:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#18:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#17:#1},%d2
	add.l %a1,%d2
	bfextu %d0{#16:#1},%d0
	add.l %d2,%d0
	moveq #1,%d1
	and.l %d1,%d0
	move.l (%sp)+,%d2
	rts
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	bfextu %d0{#30:#1},%d2
	moveq #1,%d1
	and.l %d0,%d1
	move.l %d1,%a0
	lea (%a0,%d2.l),%a1
	bfextu %d0{#29:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#28:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#27:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#26:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#25:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#24:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#23:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#22:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#21:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#20:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#19:#1},%d2
	lea (%a1,%d2.l),%a0
	bfextu %d0{#18:#1},%d1
	lea (%a0,%d1.l),%a1
	bfextu %d0{#17:#1},%d2
	add.l %a1,%d2
	bfextu %d0{#16:#1},%d0
	add.l %d2,%d0
	move.l (%sp)+,%d2
	rts
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	clr.l %d0
	tst.l %d2
	jeq .L1111
.L1113:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L1113
.L1111:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	move.l 16(%sp),%d2
	clr.l %d0
	tst.l %d3
	jeq .L1118
	tst.l %d2
	jeq .L1118
.L1120:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	lsr.l #1,%d2
	jne .L1120
.L1118:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%a0
	move.l 20(%sp),%d1
	cmp.l %a0,%d1
	jcc .L1152
	moveq #32,%d0
	moveq #1,%d2
.L1128:
	tst.l %d1
	jlt .L1133
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1130
	subq.l #1,%d0
	jne .L1128
	tst.l 24(%sp)
	jne .L1153
.L1127:
	movem.l (%sp)+,#28
	rts
.L1130:
	tst.l %d2
	jeq .L1143
.L1133:
	clr.l %d0
.L1138:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %a0,%d1
	sls %d3
	move.b %d3,%d4
	neg.b %d4
	tst.b %d3
	jeq .L1135
	move.l %a1,%a0
.L1135:
	tst.b %d4
	jeq .L1136
	move.l %d2,%d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1138
.L1154:
	tst.l 24(%sp)
	jeq .L1127
	jra .L1153
.L1136:
	clr.l %d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1138
	jra .L1154
.L1153:
	move.l %a0,%d0
	movem.l (%sp)+,#28
	rts
.L1152:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %a0,%d1
	sls %d2
	move.b %d2,%d0
	neg.b %d0
	tst.b %d2
	jeq .L1141
	move.l %a1,%a0
.L1141:
	and.l #255,%d0
	tst.l 24(%sp)
	jeq .L1127
	jra .L1153
.L1143:
	clr.l %d0
	tst.l 24(%sp)
	jeq .L1127
	jra .L1153
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	fmove.s 4(%sp),%fp0
	move.l 8(%sp),%d1
	fcmp.s %d1,%fp0
	fjlt .L1157
	fsgt %d0
	extb.l %d0
	neg.l %d0
	rts
.L1157:
	moveq #-1,%d0
	rts
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	fmove.d 4(%sp),%fp0
	fcmp.d 12(%sp),%fp0
	fjlt .L1162
	fsgt %d0
	extb.l %d0
	neg.l %d0
	rts
.L1162:
	moveq #-1,%d0
	rts
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	move.l 4(%sp),%d1
	muls.l 8(%sp),%d0:%d1
	rts
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	move.l 4(%sp),%d1
	mulu.l 8(%sp),%d0:%d1
	rts
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d2
	jmi .L1185
	jeq .L1175
	sub.l %a0,%a0
	moveq #32,%d4
	clr.l %d0
.L1174:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L1173
	subq.b #1,%d4
	jne .L1174
.L1173:
	tst.l %a0
	jeq .L1169
	neg.l %d0
.L1169:
	movem.l (%sp)+,#28
	rts
.L1185:
	neg.l %d2
	move.w #1,%a0
	moveq #32,%d4
	clr.l %d0
	jra .L1174
.L1175:
	clr.l %d0
	movem.l (%sp)+,#28
	rts
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d3
	move.l 24(%sp),%d0
	tst.l %d3
	jlt .L1213
	moveq #1,%d1
	sub.l %a1,%a1
	tst.l %d0
	jlt .L1214
.L1188:
	move.l %d0,%d1
	move.l %d3,%a0
	cmp.l %d0,%d3
	jls .L1215
	moveq #32,%d4
	moveq #1,%d2
.L1189:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1194
	subq.l #1,%d4
	jne .L1189
.L1194:
	clr.l %d0
	tst.l %d2
	jeq .L1192
.L1191:
	move.l %a0,%d5
	sub.l %d1,%d5
	cmp.l %a0,%d1
	sls %d3
	move.b %d3,%d4
	neg.b %d4
	tst.b %d3
	jeq .L1196
	move.l %d5,%a0
.L1196:
	tst.b %d4
	jeq .L1197
	move.l %d2,%d5
	or.l %d5,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1191
.L1192:
	tst.l %a1
	jeq .L1186
	neg.l %d0
.L1186:
	movem.l (%sp)+,#60
	rts
.L1197:
	clr.l %d5
	or.l %d5,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1191
	jra .L1192
.L1214:
	neg.l %d0
	move.l %d1,%a1
	jra .L1188
.L1213:
	neg.l %d3
	clr.l %d1
	move.w #1,%a1
	tst.l %d0
	jge .L1188
	jra .L1214
.L1215:
	cmp.l %d0,%d3
	scc %d0
	extb.l %d0
	neg.l %d0
	jra .L1192
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	jmi .L1243
	sub.l %a1,%a1
	move.l 16(%sp),%d2
	jmi .L1244
.L1218:
	move.l %d2,%d1
	move.l %d3,%d0
	cmp.l %d2,%d3
	jls .L1245
	move.w #32,%a0
	moveq #1,%d2
.L1219:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1224
	subq.l #1,%a0
	tst.l %a0
	jne .L1219
.L1224:
	tst.l %d2
	jeq .L1240
.L1221:
	move.l %d0,%a0
	sub.l %d1,%a0
	cmp.l %d0,%d1
	jhi .L1226
	move.l %a0,%d0
.L1226:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1221
.L1222:
	tst.l %a1
	jeq .L1216
	neg.l %d0
.L1216:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1244:
	neg.l %d2
	jra .L1218
.L1243:
	neg.l %d3
	move.w #1,%a1
	move.l 16(%sp),%d2
	jpl .L1218
	jra .L1244
.L1245:
	sub.l %d2,%d0
	cmp.l %d2,%d3
	jcc .L1222
.L1240:
	move.l %d3,%d0
	jra .L1222
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%a0
	move.l 28(%sp),%d2
	move.w %a0,%d0
	move.w %d2,%d1
	cmp.w %d2,%d0
	jls .L1401
	tst.w %d2
	jlt .L1251
	lsl.w #1,%d1
	cmp.w %a0,%d1
	jcc .L1324
	tst.w %d1
	jlt .L1324
	move.w %d2,%d1
	lsl.w #2,%d1
	cmp.w %a0,%d1
	jcc .L1326
	tst.w %d1
	jlt .L1326
	move.w %d2,%d1
	lsl.w #3,%d1
	cmp.w %a0,%d1
	jcc .L1328
	tst.w %d1
	jlt .L1328
	move.w %d2,%d1
	lsl.w #4,%d1
	cmp.w %a0,%d1
	jcc .L1330
	tst.w %d1
	jlt .L1330
	move.w %d2,%d1
	lsl.w #5,%d1
	cmp.w %a0,%d1
	jcc .L1332
	tst.w %d1
	jlt .L1332
	move.w %d2,%d1
	lsl.w #6,%d1
	cmp.w %a0,%d1
	jcc .L1334
	tst.w %d1
	jlt .L1334
	move.w %d2,%d1
	lsl.w #7,%d1
	cmp.w %a0,%d1
	jcc .L1336
	tst.w %d1
	jlt .L1336
	move.w %d2,%d1
	lsl.w #8,%d1
	cmp.w %a0,%d1
	jcc .L1338
	tst.w %d1
	jlt .L1338
	move.w %d2,%d1
	moveq #9,%d4
	lsl.w %d4,%d1
	cmp.w %a0,%d1
	jcc .L1340
	tst.w %d1
	jlt .L1340
	move.w %d2,%d1
	moveq #10,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1342
	tst.w %d1
	jlt .L1342
	move.w %d2,%d1
	moveq #11,%d6
	lsl.w %d6,%d1
	cmp.w %a0,%d1
	jcc .L1344
	tst.w %d1
	jlt .L1344
	move.w %d2,%d1
	moveq #12,%d3
	lsl.w %d3,%d1
	cmp.w %a0,%d1
	jcc .L1346
	tst.w %d1
	jlt .L1346
	move.w %d2,%d1
	moveq #13,%d4
	lsl.w %d4,%d1
	cmp.w %a0,%d1
	jcc .L1348
	tst.w %d1
	jlt .L1348
	move.w %d2,%d1
	moveq #14,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1350
	tst.w %d1
	jlt .L1350
	moveq #15,%d6
	lsl.w %d6,%d2
	cmp.w %a0,%d2
	jcc .L1351
	tst.w %d2
	jne .L1402
.L1254:
	tst.l 32(%sp)
	jne .L1246
	move.w %d2,%d0
.L1246:
	movem.l (%sp)+,#124
	rts
.L1324:
	moveq #2,%d3
.L1253:
	move.w %a0,%a1
	sub.w %d1,%a1
	cmp.w %a0,%d1
	sls %d2
	jhi .L1320
	move.w %a1,%a0
.L1320:
	tst.b %d2
	jeq .L1321
	move.w %d3,%d2
.L1322:
	move.w %d3,%d4
	lsr.w #1,%d4
	move.w %d1,%d0
	lsr.w #1,%d0
	move.w %a0,%d6
	sub.w %d0,%d6
	cmp.w %a0,%d0
	sls %d5
	jhi .L1256
	move.w %d6,%a0
.L1256:
	move.w %a0,%d0
	tst.b %d5
	jne .L1258
	clr.w %d4
.L1258:
	or.w %d4,%d2
	move.w %d3,%d5
	lsr.w #2,%d5
	move.w %d1,%d4
	lsr.w #2,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1260
	move.w %a1,%a0
.L1260:
	move.w %a0,%d0
	tst.b %d6
	jne .L1262
	clr.w %d5
.L1262:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #3,%d5
	move.w %d1,%d4
	lsr.w #3,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1264
	move.w %a1,%a0
.L1264:
	move.w %a0,%d0
	tst.b %d6
	jne .L1266
	clr.w %d5
.L1266:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #4,%d5
	move.w %d1,%d4
	lsr.w #4,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1268
	move.w %a1,%a0
.L1268:
	move.w %a0,%d0
	tst.b %d6
	jne .L1270
	clr.w %d5
.L1270:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #5,%d5
	move.w %d1,%d4
	lsr.w #5,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1272
	move.w %a1,%a0
.L1272:
	move.w %a0,%d0
	tst.b %d6
	jne .L1274
	clr.w %d5
.L1274:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #6,%d5
	move.w %d1,%d4
	lsr.w #6,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1276
	move.w %a1,%a0
.L1276:
	move.w %a0,%d0
	tst.b %d6
	jne .L1278
	clr.w %d5
.L1278:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #7,%d5
	move.w %d1,%d4
	lsr.w #7,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1280
	move.w %a1,%a0
.L1280:
	move.w %a0,%d0
	tst.b %d6
	jne .L1282
	clr.w %d5
.L1282:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #8,%d5
	move.w %d1,%d4
	lsr.w #8,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1284
	move.w %a1,%a0
.L1284:
	move.w %a0,%d0
	tst.b %d6
	jne .L1286
	clr.w %d5
.L1286:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #9,%d4
	lsr.w %d4,%d5
	move.w %d1,%d4
	moveq #9,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1288
	move.w %a1,%a0
.L1288:
	move.w %a0,%d0
	tst.b %d4
	jne .L1290
	clr.w %d5
.L1290:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #10,%d6
	lsr.w %d6,%d5
	move.w %d1,%d4
	moveq #10,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1292
	move.w %a1,%a0
.L1292:
	move.w %a0,%d0
	tst.b %d4
	jne .L1294
	clr.w %d5
.L1294:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #11,%d6
	lsr.w %d6,%d5
	move.w %d1,%d4
	moveq #11,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1296
	move.w %a1,%a0
.L1296:
	move.w %a0,%d0
	tst.b %d4
	jne .L1298
	clr.w %d5
.L1298:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #12,%d6
	lsr.w %d6,%d5
	move.w %d1,%d4
	moveq #12,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1300
	move.w %a1,%a0
.L1300:
	move.w %a0,%d0
	tst.b %d4
	jne .L1302
	clr.w %d5
.L1302:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #13,%d6
	lsr.w %d6,%d5
	move.w %d1,%d4
	moveq #13,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1304
	move.w %a1,%a0
.L1304:
	move.w %a0,%d0
	tst.b %d4
	jne .L1306
	clr.w %d5
.L1306:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #14,%d6
	lsr.w %d6,%d5
	move.w %d1,%d4
	moveq #14,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1254
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1308
	move.w %a1,%a0
.L1308:
	move.w %a0,%d0
	tst.b %d4
	jne .L1310
	clr.w %d5
.L1310:
	or.w %d5,%d2
	moveq #15,%d6
	lsr.w %d6,%d1
	cmp.w #16384,%d3
	jeq .L1254
	move.w %a0,%a1
	sub.w %d1,%a1
	cmp.w %a0,%d1
	sls %d1
	move.b %d1,%d3
	neg.b %d3
	tst.b %d1
	jeq .L1312
	move.w %a1,%a0
.L1312:
	move.w %a0,%d0
	and.w #255,%d3
	or.w %d3,%d2
	jra .L1254
.L1321:
	clr.w %d2
	jra .L1322
.L1326:
	moveq #4,%d3
	jra .L1253
.L1328:
	moveq #8,%d3
	jra .L1253
.L1330:
	moveq #16,%d3
	jra .L1253
.L1340:
	move.w #512,%d3
	jra .L1253
.L1402:
	move.w #-32768,%d3
	move.w %d3,%d1
	jra .L1253
.L1332:
	moveq #32,%d3
	jra .L1253
.L1334:
	moveq #64,%d3
	jra .L1253
.L1336:
	move.w #128,%d3
	jra .L1253
.L1338:
	move.w #256,%d3
	jra .L1253
.L1401:
	sub.w %d2,%d0
	cmp.w %a0,%d2
	seq %d3
	jne .L1249
	move.w %d0,%a0
.L1249:
	move.w %a0,%d0
	ext.w %d3
	move.w %d3,%d2
	neg.w %d2
	jra .L1254
.L1342:
	move.w #1024,%d3
	jra .L1253
.L1344:
	move.w #2048,%d3
	jra .L1253
.L1346:
	move.w #4096,%d3
	jra .L1253
.L1348:
	move.w #8192,%d3
	jra .L1253
.L1350:
	move.w #16384,%d3
	jra .L1253
.L1351:
	move.w #-32768,%d1
	move.w %d1,%d3
	jra .L1253
.L1251:
	sub.w %d2,%d0
	moveq #1,%d2
	jra .L1254
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%a0
	move.l 20(%sp),%d1
	cmp.l %a0,%d1
	jcc .L1428
	moveq #32,%d0
	moveq #1,%d2
.L1404:
	tst.l %d1
	jlt .L1409
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1406
	subq.l #1,%d0
	jne .L1404
	tst.l 24(%sp)
	jne .L1429
.L1403:
	movem.l (%sp)+,#28
	rts
.L1406:
	tst.l %d2
	jeq .L1419
.L1409:
	clr.l %d0
.L1414:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %a0,%d1
	sls %d3
	move.b %d3,%d4
	neg.b %d4
	tst.b %d3
	jeq .L1411
	move.l %a1,%a0
.L1411:
	tst.b %d4
	jeq .L1412
	move.l %d2,%d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1414
.L1430:
	tst.l 24(%sp)
	jeq .L1403
	jra .L1429
.L1412:
	clr.l %d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1414
	jra .L1430
.L1429:
	move.l %a0,%d0
	movem.l (%sp)+,#28
	rts
.L1428:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %a0,%d1
	sls %d2
	move.b %d2,%d0
	neg.b %d0
	tst.b %d2
	jeq .L1417
	move.l %a1,%a0
.L1417:
	and.l #255,%d0
	tst.l 24(%sp)
	jeq .L1403
	jra .L1429
.L1419:
	clr.l %d0
	tst.l 24(%sp)
	jeq .L1403
	jra .L1429
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d0
	move.l 20(%sp),%d3
	move.l 24(%sp),%d2
	btst #5,%d2
	jeq .L1432
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	clr.l %d1
.L1434:
	movem.l (%sp)+,#28
	rts
.L1432:
	move.l %d3,%d1
	tst.l %d2
	jeq .L1434
	lsl.l %d2,%d1
	moveq #32,%d4
	sub.l %d2,%d4
	lsr.l %d4,%d3
	lsl.l %d2,%d0
	or.l %d3,%d0
	movem.l (%sp)+,#28
	rts
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d1
	move.l 20(%sp),%d3
	move.l 24(%sp),%d2
	move.l %d1,%d0
	btst #5,%d2
	jeq .L1439
	add.l %d0,%d0
	subx.l %d0,%d0
	move.w #-32,%a0
	add.l %a0,%d2
	asr.l %d2,%d1
	movem.l (%sp)+,#28
	rts
.L1439:
	tst.l %d2
	jeq .L1442
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1442:
	move.l %d3,%d1
	movem.l (%sp)+,#28
	rts
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	move.l 4(%sp),%d1
	ror.w #8,%d1
	swap %d1
	ror.w #8,%d1
	move.l 8(%sp),%d0
	ror.w #8,%d0
	swap %d0
	ror.w #8,%d0
	rts
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	move.l 4(%sp),%d0
	ror.w #8,%d0
	swap %d0
	ror.w #8,%d0
	rts
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d1
	cmp.l #65535,%d1
	sls %d2
	extb.l %d2
	neg.l %d2
	lsl.l #4,%d2
	moveq #16,%d0
	sub.l %d2,%d0
	lsr.l %d0,%d1
	move.l %d1,%d3
	and.l #65280,%d3
	tst.l %d3
	seq %d0
	extb.l %d0
	neg.l %d0
	lsl.l #3,%d0
	moveq #8,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d1
	move.l %d0,%a0
	lea (%a0,%d2.l),%a1
	moveq #15,%d2
	not.b %d2
	and.l %d1,%d2
	seq %d0
	extb.l %d0
	neg.l %d0
	lsl.l #2,%d0
	moveq #4,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d1
	lea (%a1,%d0.l),%a0
	moveq #12,%d2
	and.l %d1,%d2
	seq %d0
	extb.l %d0
	neg.l %d0
	add.l %d0,%d0
	moveq #2,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d1
	bfextu %d1{#30:#1},%d2
	tst.b %d2
	jne .L1450
	move.w #2,%a1
	sub.l %d1,%a1
	add.l %a0,%d0
	add.l %a1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1450:
	sub.l %a1,%a1
	add.l %a0,%d0
	add.l %a1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	move.l 4(%sp),%d1
	move.l 8(%sp),%a1
	move.l 12(%sp),%d0
	move.l 16(%sp),%a0
	cmp.l %d1,%d0
	jgt .L1458
	jlt .L1459
	cmp.l %a1,%a0
	jhi .L1458
	jcs .L1459
	moveq #1,%d0
	rts
.L1458:
	clr.l %d0
	rts
.L1459:
	moveq #2,%d0
	rts
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	move.l 16(%sp),%a1
	cmp.l %a0,%d1
	jgt .L1466
	jlt .L1465
	cmp.l %d0,%a1
	jhi .L1466
	scs %d0
	extb.l %d0
	neg.l %d0
	rts
.L1466:
	moveq #-1,%d0
	rts
.L1465:
	moveq #1,%d0
	rts
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d1
	tst.w %d1
	seq %d2
	extb.l %d2
	neg.l %d2
	lsl.l #4,%d2
	lsr.l %d2,%d1
	tst.b %d1
	seq %d0
	extb.l %d0
	neg.l %d0
	lsl.l #3,%d0
	lsr.l %d0,%d1
	move.l %d0,%a0
	lea (%a0,%d2.l),%a1
	bftst %d1{#28:#4}
	seq %d3
	extb.l %d3
	neg.l %d3
	lsl.l #2,%d3
	lsr.l %d3,%d1
	lea (%a1,%d3.l),%a0
	bftst %d1{#30:#2}
	seq %d2
	extb.l %d2
	neg.l %d2
	add.l %d2,%d2
	lsr.l %d2,%d1
	moveq #3,%d0
	and.l %d0,%d1
	move.l %d1,%d0
	not.l %d0
	moveq #1,%d3
	and.l %d3,%d0
	lsr.l #1,%d1
	moveq #2,%d3
	sub.l %d1,%d3
	mulu.w %d3,%d0
	add.l %a0,%d2
	add.l %d2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d1
	move.l 20(%sp),%d3
	move.l 24(%sp),%d2
	btst #5,%d2
	jeq .L1472
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	clr.l %d0
	movem.l (%sp)+,#28
	rts
.L1472:
	move.l %d1,%d0
	tst.l %d2
	jeq .L1475
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1475:
	move.l %d3,%d1
	movem.l (%sp)+,#28
	rts
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%d2
	move.l 28(%sp),%d0
	move.w %d2,%d1
	mulu.w %d0,%d1
	move.l %d1,%d4
	clr.w %d4
	swap %d4
	move.l %d2,%d5
	clr.w %d5
	swap %d5
	move.w %d0,%d3
	mulu.w %d5,%d3
	add.l %d4,%d3
	clr.l %d6
	move.w %d3,%d6
	move.l %d0,%d4
	clr.w %d4
	swap %d4
	move.w %d2,%d0
	mulu.w %d4,%d0
	add.l %d6,%d0
	and.l #65535,%d1
	move.l %d0,%d2
	swap %d2
	clr.w %d2
	clr.w %d3
	swap %d3
	mulu.w %d4,%d5
	add.l %d5,%d3
	clr.w %d0
	swap %d0
	add.l %d3,%d0
	add.l %d2,%d1
	movem.l (%sp)+,#124
	rts
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	movem.l #16128,-(%sp)
	move.l 32(%sp),%d2
	move.l 40(%sp),%d0
	move.w %d2,%d1
	mulu.w %d0,%d1
	move.l %d1,%d3
	clr.w %d3
	swap %d3
	move.l %d2,%d5
	clr.w %d5
	swap %d5
	move.w %d0,%d4
	mulu.w %d5,%d4
	add.l %d3,%d4
	clr.l %d6
	move.w %d4,%d6
	move.l %d0,%d7
	clr.w %d7
	swap %d7
	move.w %d2,%d3
	mulu.w %d7,%d3
	add.l %d6,%d3
	and.l #65535,%d1
	move.l %d3,%d6
	swap %d6
	clr.w %d6
	clr.w %d4
	swap %d4
	mulu.w %d7,%d5
	add.l %d5,%d4
	clr.w %d3
	swap %d3
	add.l %d4,%d3
	muls.l 36(%sp),%d2
	add.l %d3,%d2
	muls.l 28(%sp),%d0
	add.l %d2,%d0
	add.l %d6,%d1
	movem.l (%sp)+,#252
	rts
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	neg.l %d1
	negx.l %d0
	rts
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	eor.l %d1,%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	eor.l %d0,%d1
	move.l %d1,%d0
	lsr.l #8,%d0
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #4,%d1
	eor.l %d0,%d1
	moveq #15,%d0
	and.l %d0,%d1
	move.l #27030,%d0
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	rts
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	move.l 4(%sp),%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	eor.l %d0,%d1
	move.l %d1,%d0
	lsr.l #8,%d0
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #4,%d1
	eor.l %d0,%d1
	moveq #15,%d0
	and.l %d0,%d1
	move.l #27030,%d0
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	rts
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d0
	move.l 24(%sp),%d1
	move.l %d0,%d4
	move.l %d1,%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	move.l %d4,%d2
	and.l #1431655765,%d2
	move.l %d5,%d3
	and.l #1431655765,%d3
	sub.l %d3,%d1
	subx.l %d2,%d0
	move.l %d0,%d4
	move.l %d1,%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	move.l %d4,%d2
	and.l #858993459,%d2
	move.l %d5,%d3
	and.l #858993459,%d3
	move.l %d0,%d4
	and.l #858993459,%d4
	move.l %d1,%d5
	and.l #858993459,%d5
	add.l %d5,%d3
	addx.l %d4,%d2
	move.l %d2,%d4
	moveq #28,%d0
	lsl.l %d0,%d4
	move.l %d3,%d1
	lsr.l #4,%d1
	or.l %d4,%d1
	move.l %d2,%d0
	lsr.l #4,%d0
	add.l %d3,%d1
	addx.l %d2,%d0
	and.l #252645135,%d0
	and.l #252645135,%d1
	add.l %d1,%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsr.l #8,%d0
	add.l %d1,%d0
	moveq #127,%d2
	and.l %d2,%d0
	movem.l (%sp)+,#60
	rts
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	move.l 4(%sp),%d0
	move.l %d0,%d1
	lsr.l #1,%d1
	and.l #1431655765,%d1
	sub.l %d1,%d0
	move.l %d0,%d1
	lsr.l #2,%d1
	and.l #858993459,%d1
	and.l #858993459,%d0
	add.l %d0,%d1
	move.l %d1,%d0
	lsr.l #4,%d0
	add.l %d1,%d0
	and.l #252645135,%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsr.l #8,%d0
	add.l %d1,%d0
	moveq #63,%d1
	and.l %d1,%d0
	rts
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
	fmove.d 4(%sp),%fp1
	move.l 12(%sp),%d1
	move.l %d1,%d0
	fmovecr #0x32,%fp0
	btst #0,%d1
	jeq .L1493
.L1495:
	fmul.x %fp1,%fp0
.L1493:
	move.l %d0,%d0
	jpl .L1502
	addq.l #1,%d0
.L1502:
	asr.l #1,%d0
	jeq .L1494
.L1496:
	fmul.x %fp1,%fp1
	btst #0,%d0
	jne .L1495
	move.l %d0,%d0
	jpl .L1503
	addq.l #1,%d0
.L1503:
	asr.l #1,%d0
	jra .L1496
.L1494:
	tst.l %d1
	jlt .L1501
	rts
.L1501:
	fmovecr #0x32,%fp1
	fdiv.x %fp0,%fp1
	fmove.x %fp1,%fp0
	rts
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
	fmove.s 4(%sp),%fp1
	move.l 8(%sp),%d1
	move.l %d1,%d0
	fmovecr #0x32,%fp0
	btst #0,%d1
	jeq .L1505
.L1507:
	fsglmul.x %fp1,%fp0
.L1505:
	move.l %d0,%d0
	jpl .L1514
	addq.l #1,%d0
.L1514:
	asr.l #1,%d0
	jeq .L1506
.L1508:
	fsglmul.x %fp1,%fp1
	btst #0,%d0
	jne .L1507
	move.l %d0,%d0
	jpl .L1515
	addq.l #1,%d0
.L1515:
	asr.l #1,%d0
	jra .L1508
.L1506:
	tst.l %d1
	jlt .L1513
	rts
.L1513:
	fmovecr #0x32,%fp1
	fsgldiv.x %fp0,%fp1
	fmove.x %fp1,%fp0
	rts
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	move.l 4(%sp),%d1
	move.l 8(%sp),%a1
	move.l 12(%sp),%d0
	move.l 16(%sp),%a0
	cmp.l %d1,%d0
	jhi .L1520
	jcs .L1521
	cmp.l %a1,%a0
	jhi .L1520
	jcs .L1521
	moveq #1,%d0
	rts
.L1520:
	clr.l %d0
	rts
.L1521:
	moveq #2,%d0
	rts
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	move.l 16(%sp),%a1
	cmp.l %a0,%d1
	jhi .L1528
	jcs .L1527
	cmp.l %d0,%a1
	jhi .L1528
	scs %d0
	extb.l %d0
	neg.l %d0
	rts
.L1528:
	moveq #-1,%d0
	rts
.L1527:
	moveq #1,%d0
	rts
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
	.local	seed
	.comm	seed,8,2
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
