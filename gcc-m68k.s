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
	lea 0.w,%a0
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
	lea 0.w,%a0
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
	lea 0.w,%a0
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
	lea 0.w,%a0
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
	lsr.l #1,%d0
	jeq .L185
	add.l #-65529,%a0
	move.w #2,%a1
	cmp.l %a0,%a1
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
	fdmove.d 4(%sp),%fp0
	fdmove.d 12(%sp),%fp1
	fcmp.x %fp0,%fp0
	fjun .L208
	fcmp.x %fp1,%fp1
	fjun .L212
	fcmp.x %fp1,%fp0
	fjngt .L215
	fdsub.x %fp1,%fp0
.L208:
	rts
.L215:
	fmove.d #0x000000000,%fp0
	rts
.L212:
	fdmove.x %fp1,%fp0
	rts
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
	fsmove.s 4(%sp),%fp0
	move.l 8(%sp),%d0
	fcmp.x %fp0,%fp0
	fjun .L218
	fsmove.s %d0,%fp1
	fcmp.s %d0,%fp1
	fjun .L222
	fcmp.s %d0,%fp0
	fjngt .L225
	fssub.s %d0,%fp0
.L218:
	rts
.L225:
	fmove.s #0x0,%fp0
	rts
.L222:
	fsmove.s %d0,%fp0
	rts
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
	fdmove.d 4(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L234
	fdmove.d 12(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L235
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l 12(%sp),%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L230
	tst.l %d0
	jeq .L235
.L228:
	rts
.L230:
	fdmove.d 4(%sp),%fp0
	fcmp.d 12(%sp),%fp0
	fjnlt .L228
.L234:
	fdmove.d 12(%sp),%fp0
	rts
.L235:
	fdmove.d 4(%sp),%fp0
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
	fsmove.s %d1,%fp0
	fcmp.s %d1,%fp0
	fjun .L249
	fsmove.s %d0,%fp1
	fcmp.s %d0,%fp1
	fjun .L248
	move.l %d1,%d2
	and.l #-2147483648,%d2
	move.l %d0,%d3
	and.l #-2147483648,%d3
	cmp.l %d2,%d3
	jne .L254
	fcmp.s %d0,%fp0
	fjlt .L249
	move.l %d1,%d0
.L249:
	fsmove.s %d0,%fp0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L254:
	tst.l %d2
	jne .L249
.L248:
	fsmove.s %d1,%fp0
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
	fjun .L261
	fmove.x 16(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L262
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l 16(%sp),%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L257
	tst.l %d0
	jeq .L262
.L255:
	rts
.L257:
	fmove.x 4(%sp),%fp0
	fcmp.x 16(%sp),%fp0
	fjnlt .L255
.L261:
	fmove.x 16(%sp),%fp0
	rts
.L262:
	fmove.x 4(%sp),%fp0
	rts
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	fdmove.d 4(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L274
	fdmove.d 12(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L276
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l 12(%sp),%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L270
	tst.l %d0
	jeq .L268
.L276:
	fdmove.d 4(%sp),%fp0
.L268:
	rts
.L270:
	fdmove.d 4(%sp),%fp0
	fcmp.d 12(%sp),%fp0
	fjlt .L268
.L274:
	fdmove.d 12(%sp),%fp0
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
	fsmove.s %d0,%fp0
	fcmp.s %d0,%fp0
	fjun .L287
	fsmove.s %d1,%fp0
	fcmp.s %d1,%fp0
	fjun .L289
	move.l %d0,%d2
	and.l #-2147483648,%d2
	move.l %d1,%d3
	and.l #-2147483648,%d3
	cmp.l %d2,%d3
	jne .L295
	fsmove.s %d0,%fp1
	fcmp.s %d1,%fp1
	fjlt .L289
	move.l %d1,%d0
.L289:
	fsmove.s %d0,%fp0
.L281:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L295:
	tst.l %d2
	jeq .L281
	fsmove.s %d0,%fp0
	jra .L281
.L287:
	fsmove.s %d1,%fp0
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
	fjun .L302
	fmove.x 16(%sp),%fp0
	fcmp.x %fp0,%fp0
	fjun .L304
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l 16(%sp),%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L298
	tst.l %d0
	jeq .L296
.L304:
	fmove.x 4(%sp),%fp0
.L296:
	rts
.L298:
	fmove.x 4(%sp),%fp0
	fcmp.x 16(%sp),%fp0
	fjlt .L296
.L302:
	fmove.x 16(%sp),%fp0
	rts
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	lea (s.0),%a0
	jeq .L310
	lea digits,%a1
.L311:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L311
.L310:
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
	move.l #1284865837,-(%sp)
	move.l #1481765933,-(%sp)
	move.l seed+4,-(%sp)
	move.l seed,-(%sp)
	jsr __muldi3
	lea (16,%sp),%sp
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
	jeq .L328
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	tst.l %a1
	jeq .L320
	move.l %a0,4(%a1)
.L320:
	rts
.L328:
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
	jeq .L330
	move.l 4(%a0),4(%a1)
.L330:
	move.l 4(%a0),%a0
	tst.l %a0
	jeq .L329
	move.l %a1,(%a0)
.L329:
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
	jeq .L341
	move.l 40(%sp),%d2
	clr.l %d3
.L343:
	move.l %d2,%d6
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L340
	addq.l #1,%d3
	add.l %d5,%d2
	cmp.l %d4,%d3
	jne .L343
.L341:
	move.l %d4,%d0
	addq.l #1,%d0
	move.l %d0,(%a2)
	muls.l %d5,%d4
	move.l 40(%sp),%d6
	add.l %d4,%d6
	tst.l %d5
	jeq .L340
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L340:
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
	jeq .L358
	move.l 36(%sp),%d2
	clr.l %d3
.L360:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L357
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d5,%d3
	jne .L360
.L358:
	clr.l %d4
.L357:
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
	jmi .L374
	rts
.L374:
	neg.l %d0
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a1
.L376:
	move.l %a1,%a2
	move.b (%a1)+,%d0
	cmp.b #32,%d0
	jeq .L376
	move.b %d0,%d1
	extb.l %d1
	move.l %d1,%a0
	lea (-9,%a0),%a3
	moveq #4,%d3
	cmp.l %a3,%d3
	jcc .L376
	cmp.b #43,%d0
	jeq .L378
	cmp.b #45,%d0
	jeq .L379
	lea (-48,%a0),%a1
	moveq #9,%d2
	cmp.l %a1,%d2
	jcs .L387
	move.l %a2,%a1
	clr.l %d2
.L381:
	clr.l %d0
.L384:
	moveq #10,%d1
	muls.l %d0,%d1
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
	jcc .L384
	tst.l %d2
	jne .L375
	move.l %a2,%d0
	sub.l %d1,%d0
.L375:
	movem.l (%sp)+,#3084
	rts
.L379:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	extb.l %d1
	move.l %d1,%a0
	lea (-48,%a0),%a3
	moveq #9,%d3
	cmp.l %a3,%d3
	jcs .L387
	moveq #1,%d2
	clr.l %d0
	jra .L384
.L378:
	lea (1,%a2),%a1
	move.b 1(%a2),%d2
	extb.l %d2
	move.l %d2,%a0
	lea (-48,%a0),%a2
	clr.l %d2
	moveq #9,%d0
	cmp.l %a2,%d0
	jcc .L381
.L387:
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
.L398:
	move.l %a1,%a2
	move.b (%a1)+,%d0
	cmp.b #32,%d0
	jeq .L398
	move.b %d0,%d1
	extb.l %d1
	move.l %d1,%a0
	lea (-9,%a0),%a3
	moveq #4,%d3
	cmp.l %a3,%d3
	jcc .L398
	cmp.b #43,%d0
	jeq .L400
	cmp.b #45,%d0
	jeq .L418
	lea (-48,%a0),%a1
	moveq #9,%d2
	cmp.l %a1,%d2
	jcs .L408
	move.l %a2,%a1
	clr.l %d2
.L402:
	clr.l %d0
.L405:
	moveq #10,%d1
	muls.l %d0,%d1
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
	jcc .L405
	tst.l %d2
	jne .L397
	move.l %a2,%d0
	sub.l %d1,%d0
.L397:
	movem.l (%sp)+,#3084
	rts
.L418:
	move.b 1(%a2),%d1
	extb.l %d1
	move.l %d1,%a0
	lea (-48,%a0),%a3
	moveq #1,%d2
	moveq #9,%d3
	cmp.l %a3,%d3
	jcc .L402
.L408:
	clr.l %d0
	movem.l (%sp)+,#3084
	rts
.L400:
	lea (1,%a2),%a1
	move.b 1(%a2),%d2
	extb.l %d2
	move.l %d2,%a0
	lea (-48,%a0),%a2
	moveq #9,%d0
	cmp.l %a2,%d0
	jcs .L408
	clr.l %d2
	jra .L402
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #16184,-(%sp)
	move.l 40(%sp),%a0
.L420:
	move.l %a0,%a1
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L420
	move.b %d0,%d1
	extb.l %d1
	move.l %d1,%a2
	lea (-9,%a2),%a3
	moveq #4,%d7
	cmp.l %a3,%d7
	jcc .L420
	cmp.b #43,%d0
	jeq .L422
	cmp.b #45,%d0
	jeq .L423
	lea (-48,%a2),%a3
	moveq #9,%d6
	cmp.l %a3,%d6
	jcs .L431
	move.l %a1,%a3
	clr.l %d6
.L425:
	clr.l %d0
	clr.l %d1
	lea __muldi3,%a4
.L428:
	pea 10.w
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
	addq.l #1,%a3
	move.l #-48,%d5
	add.l %a2,%d5
	smi %d4
	extb.l %d4
	move.l %d2,%d0
	move.l %d3,%d1
	sub.l %d5,%d1
	subx.l %d4,%d0
	move.b (%a3),%d7
	extb.l %d7
	move.l %d7,%a2
	lea (-48,%a2),%a1
	move.w #9,%a0
	cmp.l %a1,%a0
	jcc .L428
	tst.l %d6
	jne .L419
	move.l %d4,%d0
	move.l %d5,%d1
	sub.l %d3,%d1
	subx.l %d2,%d0
.L419:
	movem.l (%sp)+,#7420
	rts
.L423:
	lea (1,%a1),%a3
	move.b 1(%a1),%d4
	extb.l %d4
	move.l %d4,%a2
	lea (-48,%a2),%a0
	moveq #9,%d5
	cmp.l %a0,%d5
	jcs .L431
	moveq #1,%d6
	clr.l %d0
	clr.l %d1
	lea __muldi3,%a4
	jra .L428
.L422:
	lea (1,%a1),%a3
	move.b 1(%a1),%d2
	extb.l %d2
	move.l %d2,%a2
	lea (-48,%a2),%a4
	clr.l %d6
	moveq #9,%d3
	cmp.l %a4,%d3
	jcc .L425
.L431:
	clr.l %d0
	clr.l %d1
	movem.l (%sp)+,#7420
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
.L454:
	tst.l %d2
	jeq .L442
.L457:
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
	jlt .L446
	jeq .L441
	move.l %d3,%d6
	add.l %d5,%d6
	subq.l #1,%d2
	sub.l %d4,%d2
	jne .L457
.L442:
	clr.l %d3
.L441:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#1276
	rts
.L446:
	move.l %d4,%d2
	jra .L454
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
	jeq .L463
.L459:
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
	jeq .L458
	jle .L461
	move.l %d2,%d5
	add.l %d4,%d5
	subq.l #1,%d3
	asr.l #1,%d3
	jne .L459
.L463:
	clr.l %d2
.L458:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l (%sp)+,#3324
	rts
.L461:
	tst.l %d6
	jeq .L463
	move.l %d6,%d3
	jra .L459
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
	jlt .L479
	rts
.L479:
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
	jmi .L486
	rts
.L486:
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
	jlt .L493
	rts
.L493:
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
	jeq .L500
.L497:
	cmp.l %d1,%d0
	jeq .L496
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L497
.L500:
	lea 0.w,%a0
.L496:
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
	jne .L506
.L505:
	tst.l %d0
	jeq .L506
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L505
.L506:
	cmp.l %d0,%d1
	jgt .L509
	slt %d0
	extb.l %d0
	neg.l %d0
	rts
.L509:
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
.L514:
	move.l (%a2)+,%d0
	move.l %d0,(%a1)+
	jne .L514
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
	jeq .L521
	move.l %a1,%a0
.L520:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L520
	sub.l %a1,%a0
	move.l %a0,%d0
	asr.l #2,%d0
	rts
.L521:
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
	jeq .L532
	move.l 12(%sp),%a0
	move.l 16(%sp),%d0
.L527:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L528
	tst.l %a1
	jeq .L528
	subq.l #1,%d1
	jne .L527
.L532:
	clr.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L528:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L535
	slt %d0
	extb.l %d0
	neg.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L535:
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
	jeq .L541
	move.l 4(%sp),%a1
.L538:
	move.l %a1,%a0
	cmp.l (%a1)+,%d1
	jeq .L536
	subq.l #1,%d0
	jne .L538
.L541:
	lea 0.w,%a0
.L536:
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
	jeq .L551
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L546:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #4,%d1
	addq.l #4,%d0
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L555
	subq.l #1,%a0
	tst.l %a0
	jne .L546
.L551:
	clr.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L555:
	move.l (%a2),%d0
	move.l (%a1),%d1
	cmp.l %d0,%d1
	jgt .L556
	slt %d0
	extb.l %d0
	neg.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L556:
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
	jeq .L558
	lsl.l #2,%d0
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L558:
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
	jeq .L572
	move.l %a0,%a2
	move.l %d1,%d0
	lsl.l #2,%d0
	move.l %a0,%a3
	sub.l %a1,%a3
	cmp.l %a3,%d0
	jls .L580
	tst.l %d1
	jeq .L572
	lea (%a1,%d0.l),%a2
	lea (%a0,%d0.l),%a3
.L569:
	move.l -(%a2),-(%a3)
	cmp.l %a1,%a2
	jne .L569
.L572:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L580:
	move.l %d1,%d0
	subq.l #1,%d0
	tst.l %d1
	jeq .L572
.L570:
	move.l (%a1)+,(%a2)+
	dbra %d0,.L570
	clr.w %d0
	subq.l #1,%d0
	jcc .L570
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
	jeq .L582
	move.l %a0,%a1
.L583:
	move.l %d1,(%a1)+
	dbra %d0,.L583
	clr.w %d0
	subq.l #1,%d0
	jcc .L583
.L582:
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
	jls .L591
	move.l %d0,%a2
	lea (%a2,%d1.l),%a0
	tst.l %d1
	jeq .L590
	lea -1(%a1,%d1.l),%a1
.L593:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
	cmp.l %d0,%a0
	jne .L593
.L590:
	movem.l (%sp)+,#1036
	rts
.L591:
	cmp.l %d0,%a1
	jeq .L590
	tst.l %d1
	jeq .L590
	move.l %d1,%a0
	lea (-1,%a0),%a2
	moveq #6,%d2
	cmp.l %a2,%d2
	jcc .L625
	move.l %a1,%d3
	or.l %d0,%d3
	move.l %d0,%a2
	lea (1,%a2),%a0
	bftst %d3{#30:#2}
	jne .L594
	move.l %a1,%d2
	sub.l %a0,%d2
	moveq #2,%d3
	cmp.l %d2,%d3
	jcc .L594
	move.l %d0,%a0
	moveq #-4,%d3
	and.l %d1,%d3
	move.l %a1,%d2
	add.l %d3,%d2
.L595:
	move.l (%a0)+,(%a1)+
	cmp.l %a1,%d2
	jne .L595
	add.l %d3,%d0
	move.l %d1,%a0
	sub.l %d3,%a0
	cmp.l %d1,%d3
	jeq .L590
	move.l %d0,%a2
	move.b (%a2),(%a1)
	moveq #1,%d0
	cmp.l %a0,%d0
	jeq .L590
	move.b 1(%a2),1(%a1)
	moveq #2,%d1
	cmp.l %a0,%d1
	jeq .L590
	move.b 2(%a2),2(%a1)
	movem.l (%sp)+,#1036
	rts
.L625:
	move.l %d0,%a0
	addq.l #1,%a0
.L594:
	add.l %d1,%d0
.L598:
	move.b -1(%a0),(%a1)+
	cmp.l %a0,%d0
	jeq .L590
	addq.l #1,%a0
	jra .L598
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
	jlt .L627
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
	jlt .L629
.L633:
	move.l %d3,%d1
	move.l %a1,%d3
	lsr.l %d3,%d1
	clr.l %d3
	or.l %d3,%d0
	or.l %d6,%d1
	movem.l (%sp)+,#124
	rts
.L627:
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
	jge .L633
.L629:
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
	jlt .L635
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
	jlt .L637
.L641:
	move.l %d3,%d0
	move.l %a1,%d5
	lsl.l %d5,%d0
	clr.l %d3
	or.l %d6,%d0
	or.l %d3,%d1
	movem.l (%sp)+,#124
	rts
.L635:
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
	jge .L641
.L637:
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
.L667:
	move.l %d2,%d1
	lsr.l %d0,%d1
	addq.l #1,%d0
	btst #0,%d1
	jne .L664
	move.w #32,%a0
	cmp.l %d0,%a0
	jne .L667
	clr.l %d0
.L664:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L674
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L671
	moveq #1,%d0
.L673:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L673
.L671:
	rts
.L674:
	clr.l %d0
	rts
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	fsmove.s 4(%sp),%fp0
	moveq #1,%d0
	fcmp.s #0xff7fffff,%fp0
	fjlt .L679
	fcmp.s #0x7f7fffff,%fp0
	fjngt .L685
.L679:
	rts
.L685:
	clr.l %d0
	rts
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	fdmove.d 4(%sp),%fp0
	moveq #1,%d0
	fcmp.d #0xffefffffffffffff,%fp0
	fjlt .L686
	fcmp.d #0x7fefffffffffffff,%fp0
	fjngt .L692
.L686:
	rts
.L692:
	clr.l %d0
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
	moveq #1,%d0
	fcmp.x .LC0,%fp0
	fjlt .L693
	fcmp.x .LC1,%fp0
	fjngt .L699
.L693:
	rts
.L699:
	clr.l %d0
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
	fsmove.s 4(%sp),%fp0
	move.l 8(%sp),%d0
	fcmp.x %fp0,%fp0
	fjun .L703
	fsmove.x %fp0,%fp1
	fsadd.x %fp0,%fp1
	fcmp.x %fp0,%fp1
	fjeq .L703
	tst.l %d0
	jlt .L717
	fmove.s #0x40000000,%fp1
	btst #0,%d0
	jeq .L705
.L706:
	fsmul.x %fp1,%fp0
.L705:
	move.l %d0,%d0
	jpl .L718
	addq.l #1,%d0
.L718:
	asr.l #1,%d0
	jeq .L703
.L707:
	fsmul.x %fp1,%fp1
	btst #0,%d0
	jne .L706
	move.l %d0,%d0
	jpl .L719
	addq.l #1,%d0
.L719:
	asr.l #1,%d0
	jra .L707
.L703:
	rts
.L717:
	fmove.s #0x3f000000,%fp1
	btst #0,%d0
	jeq .L705
	jra .L706
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
	fmovem #4,-(%sp)
	fdmove.d 16(%sp),%fp0
	move.l 24(%sp),%d0
	fcmp.x %fp0,%fp0
	fjun .L721
	fdmove.x %fp0,%fp2
	fdadd.x %fp0,%fp2
	fcmp.x %fp0,%fp2
	fjeq .L721
	tst.l %d0
	jlt .L735
	fmove.d #0x4000000000000000,%fp1
	btst #0,%d0
	jeq .L723
.L724:
	fdmul.x %fp1,%fp0
.L723:
	move.l %d0,%d0
	jpl .L736
	addq.l #1,%d0
.L736:
	asr.l #1,%d0
	jeq .L721
.L725:
	fdmul.x %fp1,%fp1
	btst #0,%d0
	jne .L724
	move.l %d0,%d0
	jpl .L737
	addq.l #1,%d0
.L737:
	asr.l #1,%d0
	jra .L725
.L721:
	fmovem (%sp)+,#32
	rts
.L735:
	fmove.d #0x3fe0000000000000,%fp1
	btst #0,%d0
	jeq .L723
	jra .L724
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
	fjun .L739
	fmove.x %fp0,%fp2
	fadd.x %fp0,%fp2
	fcmp.x %fp0,%fp2
	fjeq .L739
	tst.l %d0
	jlt .L753
	fmove.x .LC2,%fp1
	btst #0,%d0
	jeq .L741
.L742:
	fmul.x %fp1,%fp0
.L741:
	move.l %d0,%d0
	jpl .L754
	addq.l #1,%d0
.L754:
	asr.l #1,%d0
	jeq .L739
.L743:
	fmul.x %fp1,%fp1
	btst #0,%d0
	jne .L742
	move.l %d0,%d0
	jpl .L755
	addq.l #1,%d0
.L755:
	asr.l #1,%d0
	jra .L743
.L739:
	fmovem (%sp)+,#32
	rts
.L753:
	fmove.x .LC3,%fp1
	btst #0,%d0
	jeq .L741
	jra .L742
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	movem.l #12344,-(%sp)
	move.l 24(%sp),%a0
	move.l 28(%sp),%a3
	move.l 32(%sp),%d1
	jeq .L757
	move.l %d1,%d0
	subq.l #1,%d0
	lsr.l #2,%d0
	jeq .L758
	move.l %a0,%d2
	move.l %a3,%d3
	or.l %d3,%d2
	bftst %d2{#30:#2}
	jne .L758
	move.l %a3,%a2
	moveq #-4,%d2
	and.l %d1,%d2
	lea (%a0,%d2.l),%a4
	move.l %a0,%a1
.L759:
	move.l (%a2)+,%d0
	move.l (%a1),%d3
	eor.l %d3,%d0
	move.l %d0,(%a1)+
	cmp.l %a4,%a1
	jne .L759
	add.l %d2,%a3
	move.l %d1,%d0
	sub.l %d2,%d0
	cmp.l %d2,%d1
	jeq .L757
	move.b (%a3),%d1
	eor.b %d1,(%a4)
	move.w #1,%a2
	cmp.l %d0,%a2
	jeq .L757
	move.b 1(%a3),%d2
	eor.b %d2,1(%a4)
	subq.l #2,%d0
	jeq .L757
	move.b 2(%a3),%d3
	eor.b %d3,2(%a4)
.L757:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L758:
	add.l %a3,%d1
	move.l %a0,%a4
.L761:
	addq.l #1,%a4
	move.b (%a3)+,%d0
	eor.b %d0,-1(%a4)
	cmp.l %d1,%a3
	jeq .L757
	addq.l #1,%a4
	move.b (%a3)+,%d0
	eor.b %d0,-1(%a4)
	cmp.l %d1,%a3
	jne .L761
	jra .L757
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
	jeq .L778
.L779:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L779
.L778:
	tst.l %d0
	jeq .L780
	move.l 12(%sp),%a2
.L781:
	move.b (%a2)+,%d1
	move.b %d1,(%a1)+
	jeq .L783
	subq.l #1,%d0
	jne .L781
.L780:
	clr.b (%a1)
.L783:
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
	jeq .L792
	tst.b (%a0,%d0.l)
	jne .L795
.L792:
	rts
.L795:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jeq .L792
	tst.b (%a0,%d0.l)
	jeq .L792
	jra .L795
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d2
	move.b (%a0),%d1
	jeq .L806
.L802:
	move.l %d2,%a1
.L805:
	move.b (%a1)+,%d0
	jeq .L810
	cmp.b %d0,%d1
	jne .L805
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L810:
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L802
.L806:
	lea 0.w,%a0
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
.L814:
	move.b (%a1),%d0
	move.b %d0,%d1
	extb.l %d1
	cmp.l %d1,%d3
	jne .L812
	move.l %a1,%a0
	move.l %a0,%d2
	addq.l #1,%a1
	tst.b %d0
	jne .L814
.L818:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L812:
	move.l %d2,%a0
	move.l %a0,%d2
	addq.l #1,%a1
	tst.b %d0
	jne .L814
	jra .L818
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #15408,-(%sp)
	move.l 28(%sp),%d1
	move.l 32(%sp),%a3
	move.b (%a3),%d3
	jeq .L829
	move.l %a3,%a0
.L821:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L821
	move.l %a0,%d5
	sub.l %a3,%d5
	cmp.l %a0,%a3
	jeq .L829
	subq.l #1,%d5
.L827:
	move.l %d1,%a0
	move.b (%a0),%d0
	addq.l #1,%d1
	cmp.b %d0,%d3
	jeq .L826
	tst.b %d0
	jne .L827
	lea 0.w,%a0
.L819:
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
.L826:
	move.b %d3,%d0
	move.l %a3,%d2
	move.l %a0,%d4
	add.l %d5,%d4
	move.l %a0,%a1
.L823:
	move.l %d2,%a2
	move.b (%a2),%d1
	addq.l #1,%d2
	tst.b %d1
	jeq .L824
	cmp.l %a1,%d4
	jeq .L824
	cmp.b %d1,%d0
	jne .L824
	addq.l #1,%a1
	move.b (%a1),%d0
	jne .L823
	move.l %d2,%a2
.L824:
	cmp.b (%a2),%d0
	jeq .L819
	move.l %a0,%d1
	addq.l #1,%d1
	jra .L827
.L829:
	move.l %d1,%a0
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
	fdmove.d 4(%sp),%fp0
	fjlt .L850
	fjngt .L842
	ftst.d 12(%sp)
	fjlt .L841
.L842:
	rts
.L850:
	ftst.d 12(%sp)
	fjngt .L842
.L841:
	fdneg.x %fp0,%fp0
	rts
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	movem.l #12344,-(%sp)
	move.l 24(%sp),%a0
	move.l 36(%sp),%d1
	jeq .L851
	cmp.l 28(%sp),%d1
	jhi .L862
	move.l 28(%sp),%d0
	sub.l %d1,%d0
	add.l %a0,%d0
	cmp.l %a0,%d0
	jcs .L862
	move.l 32(%sp),%a4
	move.b (%a4)+,%d3
	move.l %d1,%d2
	subq.l #1,%d2
.L857:
	move.l %a0,%a2
	cmp.b (%a2)+,%d3
	jeq .L869
	move.l %a2,%a0
.L853:
	cmp.l %d0,%a0
	jls .L857
.L862:
	lea 0.w,%a0
.L851:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L869:
	tst.l %d2
	jeq .L851
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
.L854:
	cmpm.b (%a3)+,(%a1)+
	jne .L870
.L855:
	cmp.l %a1,%d1
	jeq .L851
	cmpm.b (%a3)+,(%a1)+
	jeq .L855
.L870:
	cmp.l %d0,%a2
	jhi .L862
	move.l %a2,%a0
	cmp.b (%a0)+,%d3
	jne .L853
	move.l %a2,%a1
	move.l %a0,%a2
	move.l %a1,%a0
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
	jra .L854
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	jeq .L872
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L872:
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
	fdmove.d 16(%sp),%fp0
	fjlt .L903
	fcmp.d #0x3ff0000000000000,%fp0
	fjnge .L904
	clr.l %d1
	clr.l %d0
.L887:
	addq.l #1,%d0
	fdmul.d #0x3fe0000000000000,%fp0
	fcmp.d #0x3ff0000000000000,%fp0
	fjge .L887
.L888:
	move.l 24(%sp),%a1
	move.l %d0,(%a1)
	tst.l %d1
	jeq .L878
	fdneg.x %fp0,%fp0
.L878:
	fmovem (%sp)+,#32
	rts
.L904:
	fcmp.d #0x3fe0000000000000,%fp0
	fjnlt .L884
	ftst.x %fp0
	fjne .L893
.L884:
	move.l 24(%sp),%a0
	clr.l (%a0)
	fmovem (%sp)+,#32
	rts
.L903:
	fdneg.x %fp0,%fp2
	fcmp.d #0xbff0000000000000,%fp0
	fjnle .L905
	fdmove.x %fp2,%fp0
	moveq #1,%d1
	clr.l %d0
	jra .L887
.L905:
	fcmp.d #0xbfe0000000000000,%fp0
	fjngt .L884
	moveq #1,%d1
	fdmove.x %fp2,%fp0
	clr.l %d0
.L889:
	subq.l #1,%d0
	fdadd.x %fp0,%fp0
	fcmp.d #0x3fe0000000000000,%fp0
	fjnlt .L888
	subq.l #1,%d0
	fdadd.x %fp0,%fp0
	fcmp.d #0x3fe0000000000000,%fp0
	fjlt .L889
	jra .L888
.L893:
	fdmove.x %fp0,%fp2
	clr.l %d1
	fdmove.x %fp2,%fp0
	clr.l %d0
	jra .L889
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
	movem.l #16184,-(%sp)
	move.l 48(%sp),%d4
	move.l 52(%sp),%d5
	move.l 40(%sp),%d2
	move.l 44(%sp),%d3
	clr.l %d6
	clr.l %d7
	move.l %d2,%d0
	or.l %d3,%d0
	jeq .L906
	lea __muldi3,%a4
.L908:
	lea 0.w,%a2
	moveq #1,%d0
	and.l %d3,%d0
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	add.l %d1,%d7
	addx.l %d0,%d6
	add.l %d5,%d5
	addx.l %d4,%d4
	lsr.l #1,%d2
	roxr.l #1,%d3
	move.l %d2,%d0
	or.l %d3,%d0
	jne .L908
.L906:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#7420
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
	jls .L938
	moveq #32,%d0
	moveq #1,%d2
.L914:
	tst.l %d1
	jlt .L919
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L916
	subq.l #1,%d0
	jne .L914
	tst.l 24(%sp)
	jne .L939
.L913:
	movem.l (%sp)+,#28
	rts
.L916:
	tst.l %d2
	jeq .L929
.L919:
	clr.l %d0
.L924:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %a0,%d1
	sls %d3
	move.b %d3,%d4
	neg.b %d4
	tst.b %d3
	jeq .L921
	move.l %a1,%a0
.L921:
	tst.b %d4
	jeq .L922
	move.l %d2,%d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L924
.L940:
	tst.l 24(%sp)
	jeq .L913
	jra .L939
.L922:
	clr.l %d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L924
	jra .L940
.L939:
	move.l %a0,%d0
	movem.l (%sp)+,#28
	rts
.L938:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %d1,%a0
	scc %d2
	move.b %d2,%d0
	neg.b %d0
	tst.b %d2
	jeq .L927
	move.l %a1,%a0
.L927:
	and.l #255,%d0
	tst.l 24(%sp)
	jeq .L913
	jra .L939
.L929:
	clr.l %d0
	tst.l 24(%sp)
	jeq .L913
	jra .L939
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
	jeq .L943
	extb.l %d0
	lsl.l #8,%d0
	bfffo %d0{#0:#0},%d0
	subq.l #1,%d0
	move.l (%sp)+,%d2
	rts
.L943:
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
	jeq .L950
	tst.l %d1
	jne .L953
	bfffo %d0{#0:#0},%d0
	moveq #32,%d7
	add.l %d7,%d0
	subq.l #1,%d0
.L946:
	movem.l (%sp)+,#252
	rts
.L953:
	bfffo %d1{#0:#0},%d0
	subq.l #1,%d0
	jra .L946
.L950:
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
	move.l 12(%sp),%d1
	move.l 16(%sp),%d3
	clr.l %d0
	tst.l %d1
	jeq .L954
.L956:
	moveq #1,%d2
	and.l %d1,%d2
	muls.l %d3,%d2
	add.l %d2,%d0
	lsr.l #1,%d1
	add.l %d3,%d3
	tst.l %d1
	jne .L956
.L954:
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
	jhi .L962
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L993
.L962:
	tst.l %d0
	jeq .L965
	move.l %a3,%a4
	move.l %a2,%a0
	lsl.l #3,%d0
	add.l %a3,%d0
.L966:
	move.l (%a4)+,%d3
	move.l (%a4)+,%d4
	move.l %d3,(%a0)+
	move.l %d4,(%a0)+
	cmp.l %a4,%d0
	jne .L966
	cmp.l %d2,%d1
	jcc .L961
	move.l %d2,%d4
	sub.l %d1,%d4
	move.l %d4,%d0
	subq.l #1,%d0
	moveq #6,%d5
	cmp.l %d0,%d5
	jcc .L988
	lea (%a2,%d1.l),%a0
	move.l %a0,%d3
	move.l %a3,%d0
	add.l %d1,%d0
	lea 1(%a3,%d1.l),%a4
	move.l %a0,%a1
	sub.l %a4,%a1
	moveq #2,%d5
	cmp.l %a1,%d5
	jcc .L968
	move.l %a0,%d5
	or.l %d0,%d5
	bftst %d5{#30:#2}
	jne .L968
	move.l %d0,%a4
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L969:
	move.l (%a4)+,(%a0)+
	cmp.l %a0,%d0
	jne .L969
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L961
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d4
	addq.l #1,%d4
	cmp.l %d2,%d4
	jcc .L961
	move.b (%a3,%d4.l),(%a2,%d4.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L961
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L961:
	movem.l (%sp)+,#7228
	rts
.L993:
	lea (%a2,%d2.l),%a1
	tst.l %d2
	jeq .L961
.L973:
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jeq .L961
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jne .L973
	jra .L961
.L965:
	tst.l %d2
	jeq .L961
.L988:
	move.l %a2,%d3
	add.l %d1,%d3
	move.l %a3,%d0
	add.l %d1,%d0
.L968:
	move.l %d0,%a2
	move.l %d3,%a0
	add.l %a3,%d2
.L971:
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jeq .L961
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jne .L971
	jra .L961
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
	jhi .L995
	lea (%a3,%d0.l),%a0
	cmp.l %a0,%a2
	jls .L1025
.L995:
	tst.l %d2
	jeq .L998
	move.l %d2,%d1
	subq.l #1,%d1
	moveq #8,%d3
	cmp.l %d1,%d3
	jcc .L999
	move.l %a3,%d4
	move.l %a2,%d1
	or.l %d1,%d4
	bftst %d4{#30:#2}
	jne .L999
	move.l %a3,%d3
	addq.l #2,%d3
	cmp.l %a2,%d3
	jeq .L999
	move.l %d0,%d3
	lsr.l #2,%d3
	move.l %a3,%a1
	moveq #-4,%d4
	and.l %d0,%d4
	add.l %d4,%d1
	move.l %a2,%a0
.L1000:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d1
	jne .L1000
	add.l %d3,%d3
	cmp.l %d2,%d3
	jeq .L998
	move.w (%a3,%d4.l),(%a2,%d4.l)
.L998:
	btst #0,%d0
	jeq .L994
	move.b -1(%a3,%d0.l),-1(%a2,%d0.l)
.L994:
	movem.l (%sp)+,#3100
	rts
.L1025:
	lea (%a2,%d0.l),%a1
	tst.l %d0
	jeq .L994
.L1005:
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jeq .L994
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jne .L1005
	jra .L994
.L999:
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d2,%d2
	add.l %a3,%d2
.L1002:
	move.w (%a0)+,(%a1)+
	cmp.l %d2,%a0
	jeq .L998
	move.w (%a0)+,(%a1)+
	cmp.l %d2,%a0
	jne .L1002
	jra .L998
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
	jhi .L1027
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L1058
.L1027:
	tst.l %d0
	jeq .L1030
	move.l %a3,%a4
	move.l %a2,%a0
	lsl.l #2,%d0
	add.l %a3,%d0
.L1031:
	move.l (%a4)+,(%a0)+
	cmp.l %a4,%d0
	jne .L1031
	cmp.l %d2,%d1
	jcc .L1026
	move.l %d2,%d4
	sub.l %d1,%d4
	move.l %d4,%d5
	subq.l #1,%d5
	moveq #6,%d3
	cmp.l %d5,%d3
	jcc .L1053
	lea (%a2,%d1.l),%a0
	move.l %a0,%d3
	move.l %a3,%d0
	add.l %d1,%d0
	lea 1(%a3,%d1.l),%a4
	move.l %a0,%a1
	sub.l %a4,%a1
	moveq #2,%d5
	cmp.l %a1,%d5
	jcc .L1033
	move.l %a0,%d5
	or.l %d0,%d5
	bftst %d5{#30:#2}
	jne .L1033
	move.l %d0,%a4
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L1034:
	move.l (%a4)+,(%a0)+
	cmp.l %a0,%d0
	jne .L1034
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L1026
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d4
	addq.l #1,%d4
	cmp.l %d2,%d4
	jcc .L1026
	move.b (%a3,%d4.l),(%a2,%d4.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L1026
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L1026:
	movem.l (%sp)+,#7228
	rts
.L1058:
	lea (%a2,%d2.l),%a1
	tst.l %d2
	jeq .L1026
.L1038:
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jeq .L1026
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jne .L1038
	jra .L1026
.L1030:
	tst.l %d2
	jeq .L1026
.L1053:
	move.l %a2,%d3
	add.l %d1,%d3
	move.l %a3,%d0
	add.l %d1,%d0
.L1033:
	move.l %d0,%a2
	move.l %d3,%a0
	add.l %a3,%d2
.L1036:
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jeq .L1026
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jne .L1036
	jra .L1026
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
	fdmove.l %d0,%fp0
	tst.l %d0
	jlt .L1065
	rts
.L1065:
	fdadd.d #0x41f0000000000000,%fp0
	rts
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.type	__uitof, @function
__uitof:
	move.l 4(%sp),%d0
	fdmove.l %d0,%fp0
	tst.l %d0
	jlt .L1070
	fsmove.x %fp0,%fp0
	rts
.L1070:
	fdadd.d #0x41f0000000000000,%fp0
	fsmove.x %fp0,%fp0
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
	jmi .L1080
	move.l %d1,%d0
	moveq #14,%d3
	asr.l %d3,%d0
	jne .L1077
	move.l %d1,%d0
	moveq #13,%d3
	asr.l %d3,%d0
	jne .L1081
	move.l %d1,%d0
	moveq #12,%d3
	asr.l %d3,%d0
	jne .L1082
	move.l %d1,%d0
	moveq #11,%d3
	asr.l %d3,%d0
	jne .L1083
	move.l %d1,%d0
	moveq #10,%d3
	asr.l %d3,%d0
	jne .L1084
	move.l %d1,%d0
	moveq #9,%d3
	asr.l %d3,%d0
	jne .L1085
	move.l %d1,%d0
	asr.l #8,%d0
	jne .L1086
	move.l %d1,%d3
	asr.l #7,%d3
	jne .L1087
	move.l %d1,%d0
	asr.l #6,%d0
	jne .L1088
	move.l %d1,%d3
	asr.l #5,%d3
	jne .L1089
	move.l %d1,%d0
	asr.l #4,%d0
	jne .L1090
	move.l %d1,%d3
	asr.l #3,%d3
	jne .L1091
	move.l %d1,%d0
	asr.l #2,%d0
	jne .L1092
	asr.l #1,%d1
	jne .L1093
	moveq #16,%d0
	tst.w %d2
	jne .L1098
.L1077:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1080:
	clr.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1091:
	moveq #12,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1098:
	moveq #15,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1081:
	moveq #2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1082:
	moveq #3,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1083:
	moveq #4,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1084:
	moveq #5,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1085:
	moveq #6,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1086:
	moveq #7,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1087:
	moveq #8,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1088:
	moveq #9,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1089:
	moveq #10,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1090:
	moveq #11,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1092:
	moveq #13,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1093:
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
	jne .L1102
	btst #1,%d1
	jne .L1103
	btst #2,%d1
	jne .L1104
	btst #3,%d1
	jne .L1105
	btst #4,%d1
	jne .L1106
	btst #5,%d1
	jne .L1107
	btst #6,%d1
	jne .L1108
	tst.b %d1
	jmi .L1109
	btst #8,%d1
	jne .L1110
	btst #9,%d1
	jne .L1111
	btst #10,%d1
	jne .L1112
	btst #11,%d1
	jne .L1113
	btst #12,%d1
	jne .L1114
	btst #13,%d1
	jne .L1115
	btst #14,%d1
	jne .L1116
	moveq #16,%d0
	tst.w %d1
	jmi .L1121
	rts
.L1102:
	clr.l %d0
	rts
.L1103:
	moveq #1,%d0
	rts
.L1114:
	moveq #12,%d0
	rts
.L1121:
	moveq #15,%d0
	rts
.L1104:
	moveq #2,%d0
	rts
.L1105:
	moveq #3,%d0
	rts
.L1106:
	moveq #4,%d0
	rts
.L1107:
	moveq #5,%d0
	rts
.L1108:
	moveq #6,%d0
	rts
.L1109:
	moveq #7,%d0
	rts
.L1110:
	moveq #8,%d0
	rts
.L1111:
	moveq #9,%d0
	rts
.L1112:
	moveq #10,%d0
	rts
.L1113:
	moveq #11,%d0
	rts
.L1115:
	moveq #13,%d0
	rts
.L1116:
	moveq #14,%d0
	rts
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	fsmove.s 4(%sp),%fp0
	fcmp.s #0x47000000,%fp0
	fjge .L1130
	fintrz.x %fp0,%fp1
	fmove.l %fp1,%d0
	rts
.L1130:
	fssub.s #0x47000000,%fp0
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
	move.l 12(%sp),%d1
	move.l 16(%sp),%d3
	clr.l %d0
	tst.l %d1
	jeq .L1135
.L1137:
	moveq #1,%d2
	and.l %d1,%d2
	muls.l %d3,%d2
	add.l %d2,%d0
	lsr.l #1,%d1
	add.l %d3,%d3
	tst.l %d1
	jne .L1137
.L1135:
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
	move.l 16(%sp),%d1
	clr.l %d0
	tst.l %d3
	jeq .L1142
	tst.l %d1
	jeq .L1142
.L1144:
	moveq #1,%d2
	and.l %d1,%d2
	muls.l %d3,%d2
	add.l %d2,%d0
	add.l %d3,%d3
	lsr.l #1,%d1
	jne .L1144
.L1142:
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
	jcc .L1176
	moveq #32,%d0
	moveq #1,%d2
.L1152:
	tst.l %d1
	jlt .L1157
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1154
	subq.l #1,%d0
	jne .L1152
	tst.l 24(%sp)
	jne .L1177
.L1151:
	movem.l (%sp)+,#28
	rts
.L1154:
	tst.l %d2
	jeq .L1167
.L1157:
	clr.l %d0
.L1162:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %a0,%d1
	sls %d3
	move.b %d3,%d4
	neg.b %d4
	tst.b %d3
	jeq .L1159
	move.l %a1,%a0
.L1159:
	tst.b %d4
	jeq .L1160
	move.l %d2,%d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1162
.L1178:
	tst.l 24(%sp)
	jeq .L1151
	jra .L1177
.L1160:
	clr.l %d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1162
	jra .L1178
.L1177:
	move.l %a0,%d0
	movem.l (%sp)+,#28
	rts
.L1176:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %a0,%d1
	sls %d2
	move.b %d2,%d0
	neg.b %d0
	tst.b %d2
	jeq .L1165
	move.l %a1,%a0
.L1165:
	and.l #255,%d0
	tst.l 24(%sp)
	jeq .L1151
	jra .L1177
.L1167:
	clr.l %d0
	tst.l 24(%sp)
	jeq .L1151
	jra .L1177
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	fsmove.s 4(%sp),%fp0
	move.l 8(%sp),%d1
	fcmp.s %d1,%fp0
	fjlt .L1182
	moveq #1,%d0
	fcmp.s %d1,%fp0
	fjngt .L1185
	rts
.L1185:
	clr.l %d0
	rts
.L1182:
	moveq #-1,%d0
	rts
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	fdmove.d 4(%sp),%fp0
	fcmp.d 12(%sp),%fp0
	fjlt .L1189
	moveq #1,%d0
	fcmp.d 12(%sp),%fp0
	fjngt .L1192
	rts
.L1192:
	clr.l %d0
	rts
.L1189:
	moveq #-1,%d0
	rts
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	move.l 8(%sp),-(%sp)
	smi %d0
	extb.l %d0
	move.l %d0,-(%sp)
	move.l 12(%sp),-(%sp)
	smi %d0
	extb.l %d0
	move.l %d0,-(%sp)
	jsr __muldi3
	lea (16,%sp),%sp
	rts
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	move.l 4(%sp),%d1
	clr.l %d0
	move.l 8(%sp),%a1
	lea 0.w,%a0
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __muldi3
	lea (16,%sp),%sp
	rts
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d1
	jmi .L1213
	jeq .L1203
	lea 0.w,%a0
	moveq #32,%d4
	clr.l %d0
.L1202:
	moveq #1,%d2
	and.l %d1,%d2
	muls.l %d3,%d2
	add.l %d2,%d0
	add.l %d3,%d3
	asr.l #1,%d1
	jeq .L1201
	subq.b #1,%d4
	jne .L1202
.L1201:
	tst.l %a0
	jeq .L1197
	neg.l %d0
.L1197:
	movem.l (%sp)+,#28
	rts
.L1213:
	neg.l %d1
	move.w #1,%a0
	moveq #32,%d4
	clr.l %d0
	jra .L1202
.L1203:
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
	jlt .L1241
	moveq #1,%d1
	lea 0.w,%a1
	tst.l %d0
	jlt .L1242
.L1216:
	move.l %d0,%d1
	move.l %d3,%a0
	cmp.l %d0,%d3
	jls .L1243
	moveq #32,%d4
	moveq #1,%d2
.L1217:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1222
	subq.l #1,%d4
	jne .L1217
.L1222:
	clr.l %d0
	tst.l %d2
	jeq .L1220
.L1219:
	move.l %a0,%d5
	sub.l %d1,%d5
	cmp.l %a0,%d1
	sls %d3
	move.b %d3,%d4
	neg.b %d4
	tst.b %d3
	jeq .L1224
	move.l %d5,%a0
.L1224:
	tst.b %d4
	jeq .L1225
	move.l %d2,%d5
	or.l %d5,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1219
.L1220:
	tst.l %a1
	jeq .L1214
	neg.l %d0
.L1214:
	movem.l (%sp)+,#60
	rts
.L1225:
	clr.l %d5
	or.l %d5,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1219
	jra .L1220
.L1242:
	neg.l %d0
	move.l %d1,%a1
	jra .L1216
.L1241:
	neg.l %d3
	clr.l %d1
	move.w #1,%a1
	tst.l %d0
	jge .L1216
	jra .L1242
.L1243:
	cmp.l %d0,%d3
	scc %d0
	extb.l %d0
	neg.l %d0
	jra .L1220
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	jmi .L1271
	lea 0.w,%a1
	move.l 16(%sp),%d2
	jmi .L1272
.L1246:
	move.l %d2,%d1
	move.l %d3,%d0
	cmp.l %d2,%d3
	jls .L1273
	move.w #32,%a0
	moveq #1,%d2
.L1247:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1252
	subq.l #1,%a0
	tst.l %a0
	jne .L1247
.L1252:
	tst.l %d2
	jeq .L1268
.L1249:
	move.l %d0,%a0
	sub.l %d1,%a0
	cmp.l %d0,%d1
	jhi .L1254
	move.l %a0,%d0
.L1254:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1249
.L1250:
	tst.l %a1
	jeq .L1244
	neg.l %d0
.L1244:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1272:
	neg.l %d2
	jra .L1246
.L1271:
	neg.l %d3
	move.w #1,%a1
	move.l 16(%sp),%d2
	jpl .L1246
	jra .L1272
.L1273:
	sub.l %d2,%d0
	cmp.l %d2,%d3
	jcc .L1250
.L1268:
	move.l %d3,%d0
	jra .L1250
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
	jls .L1429
	tst.w %d2
	jlt .L1279
	lsl.w #1,%d1
	cmp.w %a0,%d1
	jcc .L1352
	tst.w %d1
	jlt .L1352
	move.w %d2,%d1
	lsl.w #2,%d1
	cmp.w %a0,%d1
	jcc .L1354
	tst.w %d1
	jlt .L1354
	move.w %d2,%d1
	lsl.w #3,%d1
	cmp.w %a0,%d1
	jcc .L1356
	tst.w %d1
	jlt .L1356
	move.w %d2,%d1
	lsl.w #4,%d1
	cmp.w %a0,%d1
	jcc .L1358
	tst.w %d1
	jlt .L1358
	move.w %d2,%d1
	lsl.w #5,%d1
	cmp.w %a0,%d1
	jcc .L1360
	tst.w %d1
	jlt .L1360
	move.w %d2,%d1
	lsl.w #6,%d1
	cmp.w %a0,%d1
	jcc .L1362
	tst.w %d1
	jlt .L1362
	move.w %d2,%d1
	lsl.w #7,%d1
	cmp.w %a0,%d1
	jcc .L1364
	tst.w %d1
	jlt .L1364
	move.w %d2,%d1
	lsl.w #8,%d1
	cmp.w %a0,%d1
	jcc .L1366
	tst.w %d1
	jlt .L1366
	move.w %d2,%d1
	moveq #9,%d4
	lsl.w %d4,%d1
	cmp.w %a0,%d1
	jcc .L1368
	tst.w %d1
	jlt .L1368
	move.w %d2,%d1
	moveq #10,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1370
	tst.w %d1
	jlt .L1370
	move.w %d2,%d1
	moveq #11,%d6
	lsl.w %d6,%d1
	cmp.w %a0,%d1
	jcc .L1372
	tst.w %d1
	jlt .L1372
	move.w %d2,%d1
	moveq #12,%d3
	lsl.w %d3,%d1
	cmp.w %a0,%d1
	jcc .L1374
	tst.w %d1
	jlt .L1374
	move.w %d2,%d1
	moveq #13,%d4
	lsl.w %d4,%d1
	cmp.w %a0,%d1
	jcc .L1376
	tst.w %d1
	jlt .L1376
	move.w %d2,%d1
	moveq #14,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1378
	tst.w %d1
	jlt .L1378
	moveq #15,%d6
	lsl.w %d6,%d2
	cmp.w %a0,%d2
	jcc .L1379
	tst.w %d2
	jne .L1430
.L1282:
	tst.l 32(%sp)
	jne .L1274
	move.w %d2,%d0
.L1274:
	movem.l (%sp)+,#124
	rts
.L1352:
	moveq #2,%d3
.L1281:
	move.w %a0,%a1
	sub.w %d1,%a1
	cmp.w %a0,%d1
	sls %d2
	jhi .L1348
	move.w %a1,%a0
.L1348:
	tst.b %d2
	jeq .L1349
	move.w %d3,%d2
.L1350:
	move.w %d3,%d4
	lsr.w #1,%d4
	move.w %d1,%d0
	lsr.w #1,%d0
	move.w %a0,%d6
	sub.w %d0,%d6
	cmp.w %a0,%d0
	sls %d5
	jhi .L1284
	move.w %d6,%a0
.L1284:
	move.w %a0,%d0
	tst.b %d5
	jne .L1286
	clr.w %d4
.L1286:
	or.w %d4,%d2
	move.w %d3,%d5
	lsr.w #2,%d5
	move.w %d1,%d4
	lsr.w #2,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1288
	move.w %a1,%a0
.L1288:
	move.w %a0,%d0
	tst.b %d6
	jne .L1290
	clr.w %d5
.L1290:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #3,%d5
	move.w %d1,%d4
	lsr.w #3,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1292
	move.w %a1,%a0
.L1292:
	move.w %a0,%d0
	tst.b %d6
	jne .L1294
	clr.w %d5
.L1294:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #4,%d5
	move.w %d1,%d4
	lsr.w #4,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1296
	move.w %a1,%a0
.L1296:
	move.w %a0,%d0
	tst.b %d6
	jne .L1298
	clr.w %d5
.L1298:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #5,%d5
	move.w %d1,%d4
	lsr.w #5,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1300
	move.w %a1,%a0
.L1300:
	move.w %a0,%d0
	tst.b %d6
	jne .L1302
	clr.w %d5
.L1302:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #6,%d5
	move.w %d1,%d4
	lsr.w #6,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1304
	move.w %a1,%a0
.L1304:
	move.w %a0,%d0
	tst.b %d6
	jne .L1306
	clr.w %d5
.L1306:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #7,%d5
	move.w %d1,%d4
	lsr.w #7,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1308
	move.w %a1,%a0
.L1308:
	move.w %a0,%d0
	tst.b %d6
	jne .L1310
	clr.w %d5
.L1310:
	or.w %d5,%d2
	move.w %d3,%d5
	lsr.w #8,%d5
	move.w %d1,%d4
	lsr.w #8,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d6
	neg.b %d6
	tst.b %d0
	jeq .L1312
	move.w %a1,%a0
.L1312:
	move.w %a0,%d0
	tst.b %d6
	jne .L1314
	clr.w %d5
.L1314:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #9,%d4
	lsr.w %d4,%d5
	move.w %d1,%d4
	moveq #9,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1316
	move.w %a1,%a0
.L1316:
	move.w %a0,%d0
	tst.b %d4
	jne .L1318
	clr.w %d5
.L1318:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #10,%d6
	lsr.w %d6,%d5
	move.w %d1,%d4
	moveq #10,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1320
	move.w %a1,%a0
.L1320:
	move.w %a0,%d0
	tst.b %d4
	jne .L1322
	clr.w %d5
.L1322:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #11,%d6
	lsr.w %d6,%d5
	move.w %d1,%d4
	moveq #11,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1324
	move.w %a1,%a0
.L1324:
	move.w %a0,%d0
	tst.b %d4
	jne .L1326
	clr.w %d5
.L1326:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #12,%d6
	lsr.w %d6,%d5
	move.w %d1,%d4
	moveq #12,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1328
	move.w %a1,%a0
.L1328:
	move.w %a0,%d0
	tst.b %d4
	jne .L1330
	clr.w %d5
.L1330:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #13,%d6
	lsr.w %d6,%d5
	move.w %d1,%d4
	moveq #13,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1332
	move.w %a1,%a0
.L1332:
	move.w %a0,%d0
	tst.b %d4
	jne .L1334
	clr.w %d5
.L1334:
	or.w %d5,%d2
	move.w %d3,%d5
	moveq #14,%d6
	lsr.w %d6,%d5
	move.w %d1,%d4
	moveq #14,%d6
	lsr.w %d6,%d4
	tst.w %d5
	jeq .L1282
	move.w %a0,%a1
	sub.w %d4,%a1
	cmp.w %a0,%d4
	sls %d0
	move.b %d0,%d4
	neg.b %d4
	tst.b %d0
	jeq .L1336
	move.w %a1,%a0
.L1336:
	move.w %a0,%d0
	tst.b %d4
	jne .L1338
	clr.w %d5
.L1338:
	or.w %d5,%d2
	moveq #15,%d6
	lsr.w %d6,%d1
	cmp.w #16384,%d3
	jeq .L1282
	move.w %a0,%a1
	sub.w %d1,%a1
	cmp.w %a0,%d1
	sls %d1
	move.b %d1,%d3
	neg.b %d3
	tst.b %d1
	jeq .L1340
	move.w %a1,%a0
.L1340:
	move.w %a0,%d0
	and.w #255,%d3
	or.w %d3,%d2
	jra .L1282
.L1349:
	clr.w %d2
	jra .L1350
.L1354:
	moveq #4,%d3
	jra .L1281
.L1356:
	moveq #8,%d3
	jra .L1281
.L1358:
	moveq #16,%d3
	jra .L1281
.L1368:
	move.w #512,%d3
	jra .L1281
.L1430:
	move.w #-32768,%d3
	move.w %d3,%d1
	jra .L1281
.L1360:
	moveq #32,%d3
	jra .L1281
.L1362:
	moveq #64,%d3
	jra .L1281
.L1364:
	move.w #128,%d3
	jra .L1281
.L1366:
	move.w #256,%d3
	jra .L1281
.L1429:
	sub.w %d2,%d0
	cmp.w %a0,%d2
	seq %d3
	jne .L1277
	move.w %d0,%a0
.L1277:
	move.w %a0,%d0
	ext.w %d3
	move.w %d3,%d2
	neg.w %d2
	jra .L1282
.L1370:
	move.w #1024,%d3
	jra .L1281
.L1372:
	move.w #2048,%d3
	jra .L1281
.L1374:
	move.w #4096,%d3
	jra .L1281
.L1376:
	move.w #8192,%d3
	jra .L1281
.L1378:
	move.w #16384,%d3
	jra .L1281
.L1379:
	move.w #-32768,%d1
	move.w %d1,%d3
	jra .L1281
.L1279:
	sub.w %d2,%d0
	moveq #1,%d2
	jra .L1282
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%a0
	move.l 20(%sp),%d1
	cmp.l %a0,%d1
	jcc .L1456
	moveq #32,%d0
	moveq #1,%d2
.L1432:
	tst.l %d1
	jlt .L1437
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1434
	subq.l #1,%d0
	jne .L1432
	tst.l 24(%sp)
	jne .L1457
.L1431:
	movem.l (%sp)+,#28
	rts
.L1434:
	tst.l %d2
	jeq .L1447
.L1437:
	clr.l %d0
.L1442:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %a0,%d1
	sls %d3
	move.b %d3,%d4
	neg.b %d4
	tst.b %d3
	jeq .L1439
	move.l %a1,%a0
.L1439:
	tst.b %d4
	jeq .L1440
	move.l %d2,%d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1442
.L1458:
	tst.l 24(%sp)
	jeq .L1431
	jra .L1457
.L1440:
	clr.l %d3
	or.l %d3,%d0
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1442
	jra .L1458
.L1457:
	move.l %a0,%d0
	movem.l (%sp)+,#28
	rts
.L1456:
	move.l %a0,%a1
	sub.l %d1,%a1
	cmp.l %a0,%d1
	sls %d2
	move.b %d2,%d0
	neg.b %d0
	tst.b %d2
	jeq .L1445
	move.l %a1,%a0
.L1445:
	and.l #255,%d0
	tst.l 24(%sp)
	jeq .L1431
	jra .L1457
.L1447:
	clr.l %d0
	tst.l 24(%sp)
	jeq .L1431
	jra .L1457
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
	jeq .L1460
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	clr.l %d1
.L1462:
	movem.l (%sp)+,#28
	rts
.L1460:
	move.l %d3,%d1
	tst.l %d2
	jeq .L1462
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
	jeq .L1467
	add.l %d0,%d0
	subx.l %d0,%d0
	move.w #-32,%a0
	add.l %a0,%d2
	asr.l %d2,%d1
	movem.l (%sp)+,#28
	rts
.L1467:
	tst.l %d2
	jeq .L1470
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1470:
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
	jne .L1478
	move.w #2,%a1
	sub.l %d1,%a1
	add.l %a0,%d0
	add.l %a1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1478:
	lea 0.w,%a1
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
	jgt .L1486
	jlt .L1487
	cmp.l %a1,%a0
	jhi .L1486
	jcs .L1487
	moveq #1,%d0
	rts
.L1486:
	clr.l %d0
	rts
.L1487:
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
	jgt .L1494
	jlt .L1493
	cmp.l %d0,%a1
	jhi .L1494
	scs %d0
	extb.l %d0
	neg.l %d0
	rts
.L1494:
	moveq #-1,%d0
	rts
.L1493:
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
	jeq .L1500
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	clr.l %d0
	movem.l (%sp)+,#28
	rts
.L1500:
	move.l %d1,%d0
	tst.l %d2
	jeq .L1503
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1503:
	move.l %d3,%d1
	movem.l (%sp)+,#28
	rts
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movem.l #16128,-(%sp)
	move.l 28(%sp),%d2
	move.l 32(%sp),%d0
	move.w %d2,%d1
	mulu.w %d0,%d1
	move.l %d1,%d4
	moveq #16,%d3
	lsr.l %d3,%d4
	move.l %d2,%d5
	lsr.l %d3,%d5
	move.w %d0,%d3
	mulu.w %d5,%d3
	add.l %d4,%d3
	clr.l %d6
	move.w %d3,%d6
	move.l %d0,%d4
	moveq #16,%d7
	lsr.l %d7,%d4
	move.w %d2,%d0
	mulu.w %d4,%d0
	add.l %d6,%d0
	and.l #65535,%d1
	move.l %d0,%d2
	lsl.l %d7,%d2
	lsr.l %d7,%d3
	mulu.w %d4,%d5
	add.l %d5,%d3
	lsr.l %d7,%d0
	add.l %d3,%d0
	add.l %d2,%d1
	movem.l (%sp)+,#252
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
	moveq #16,%d4
	lsr.l %d4,%d3
	move.l %d2,%d5
	lsr.l %d4,%d5
	move.w %d0,%d4
	mulu.w %d5,%d4
	add.l %d3,%d4
	clr.l %d6
	move.w %d4,%d6
	move.l %d0,%d7
	moveq #16,%d3
	lsr.l %d3,%d7
	move.w %d2,%d3
	mulu.w %d7,%d3
	add.l %d6,%d3
	and.l #65535,%d1
	move.l %d1,%a0
	move.l %d3,%d6
	moveq #16,%d1
	lsl.l %d1,%d6
	lsr.l %d1,%d4
	mulu.w %d7,%d5
	add.l %d5,%d4
	lsr.l %d1,%d3
	add.l %d4,%d3
	muls.l 36(%sp),%d2
	add.l %d3,%d2
	muls.l 28(%sp),%d0
	add.l %d2,%d0
	move.l %a0,%d1
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
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	eor.l %d1,%d0
	move.l %d0,%d1
	moveq #16,%d2
	lsr.l %d2,%d1
	eor.l %d0,%d1
	move.l %d1,%d0
	lsr.l #8,%d0
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #4,%d1
	eor.l %d0,%d1
	moveq #15,%d2
	and.l %d2,%d1
	move.l #27030,%d0
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	move.l (%sp)+,%d2
	rts
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l %d0,%d1
	moveq #16,%d2
	lsr.l %d2,%d1
	eor.l %d0,%d1
	move.l %d1,%d0
	lsr.l #8,%d0
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #4,%d1
	eor.l %d0,%d1
	moveq #15,%d2
	and.l %d2,%d1
	move.l #27030,%d0
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	move.l (%sp)+,%d2
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
	move.l %d0,%d2
	and.l #252645135,%d2
	move.l %d1,%d3
	and.l #252645135,%d3
	add.l %d3,%d2
	move.l %d2,%d1
	moveq #16,%d5
	lsr.l %d5,%d1
	add.l %d2,%d1
	move.l %d1,%d0
	lsr.l #8,%d0
	add.l %d1,%d0
	moveq #127,%d4
	and.l %d4,%d0
	movem.l (%sp)+,#60
	rts
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l %d0,%d1
	lsr.l #1,%d1
	and.l #1431655765,%d1
	sub.l %d1,%d0
	move.l %d0,%d2
	lsr.l #2,%d2
	and.l #858993459,%d2
	and.l #858993459,%d0
	add.l %d0,%d2
	move.l %d2,%d0
	lsr.l #4,%d0
	add.l %d2,%d0
	and.l #252645135,%d0
	move.l %d0,%d1
	moveq #16,%d2
	lsr.l %d2,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsr.l #8,%d0
	add.l %d1,%d0
	moveq #63,%d1
	and.l %d1,%d0
	move.l (%sp)+,%d2
	rts
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
	fdmove.d 4(%sp),%fp1
	move.l 12(%sp),%d1
	move.l %d1,%d0
	fmove.d #0x3ff0000000000000,%fp0
	btst #0,%d1
	jeq .L1521
.L1523:
	fdmul.x %fp1,%fp0
.L1521:
	move.l %d0,%d0
	jpl .L1530
	addq.l #1,%d0
.L1530:
	asr.l #1,%d0
	jeq .L1522
.L1524:
	fdmul.x %fp1,%fp1
	btst #0,%d0
	jne .L1523
	move.l %d0,%d0
	jpl .L1531
	addq.l #1,%d0
.L1531:
	asr.l #1,%d0
	jra .L1524
.L1522:
	tst.l %d1
	jlt .L1529
	rts
.L1529:
	fmove.d #0x3ff0000000000000,%fp1
	fddiv.x %fp0,%fp1
	fdmove.x %fp1,%fp0
	rts
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
	fsmove.s 4(%sp),%fp1
	move.l 8(%sp),%d1
	move.l %d1,%d0
	fmove.s #0x3f800000,%fp0
	btst #0,%d1
	jeq .L1533
.L1535:
	fsmul.x %fp1,%fp0
.L1533:
	move.l %d0,%d0
	jpl .L1542
	addq.l #1,%d0
.L1542:
	asr.l #1,%d0
	jeq .L1534
.L1536:
	fsmul.x %fp1,%fp1
	btst #0,%d0
	jne .L1535
	move.l %d0,%d0
	jpl .L1543
	addq.l #1,%d0
.L1543:
	asr.l #1,%d0
	jra .L1536
.L1534:
	tst.l %d1
	jlt .L1541
	rts
.L1541:
	fmove.s #0x3f800000,%fp1
	fsdiv.x %fp0,%fp1
	fsmove.x %fp1,%fp0
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
	jhi .L1548
	jcs .L1549
	cmp.l %a1,%a0
	jhi .L1548
	jcs .L1549
	moveq #1,%d0
	rts
.L1548:
	clr.l %d0
	rts
.L1549:
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
	jhi .L1556
	jcs .L1555
	cmp.l %d0,%a1
	jhi .L1556
	scs %d0
	extb.l %d0
	neg.l %d0
	rts
.L1556:
	moveq #-1,%d0
	rts
.L1555:
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
	.globl	__muldi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
