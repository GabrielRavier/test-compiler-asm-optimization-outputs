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
	move.l %d0,%a1
	add.l %d1,%a1
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
	subq.l #1,%a1
	moveq #6,%d2
	cmp.l %a1,%d2
	jcc .L36
	move.l %a0,%d2
	or.l %d0,%d2
	moveq #3,%d3
	and.l %d3,%d2
	move.l %d0,%a1
	addq.l #1,%a1
	jne .L5
	move.l %a0,%d2
	sub.l %a1,%d2
	moveq #2,%d3
	cmp.l %d2,%d3
	jcc .L5
	move.l %d0,%a2
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
	moveq #1,%d1
	cmp.l %d2,%d1
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
	moveq #0,%d3
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
	moveq #0,%d2
	move.b 15(%sp),%d2
	tst.l %d0
	jeq .L57
	move.l 8(%sp),%a1
.L54:
	move.l %a1,%a0
	moveq #0,%d1
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
	cmp.w #0,%a0
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
	cmp.w #0,%a0
	jne .L62
.L66:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L70:
	moveq #0,%d0
	move.b (%a2),%d0
	moveq #0,%d1
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
	moveq #0,%d2
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
	moveq #0,%d1
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
	moveq #0,%d0
	not.b %d0
	and.l 16(%sp),%d0
	move.l %d0,-(%sp)
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
	move.b (%a1),%d0
	move.b %d0,(%a0)
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
	moveq #0,%d1
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
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d3
	move.l 12(%sp),%d2
.L111:
	move.l %d2,%a0
	move.b (%a0),%d1
	addq.l #1,%d2
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %a1,%d3
	jeq .L109
	tst.b %d1
	jne .L111
	sub.l %a0,%a0
.L109:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	moveq #0,%d0
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
	moveq #0,%d0
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
	moveq #0,%d0
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
	moveq #0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L145:
	move.l 16(%sp),%a0
	move.b (%a0),%d1
	moveq #0,%d0
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
	moveq #-2,%d0
	and.l 12(%sp),%d0
	add.l %a0,%d0
.L148:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%d0
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
	add.l %d0,%a0
	moveq #25,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
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
	ext.w %d0
	ext.l %d0
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
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
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
	moveq #127,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
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
	ext.w %d0
	ext.l %d0
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
	ext.w %d0
	ext.l %d0
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
	ext.w %d0
	ext.l %d0
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
	ext.w %d0
	ext.l %d0
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
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
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
	ext.w %d0
	ext.l %d0
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
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L185
	add.l #-65529,%a0
	moveq #2,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
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
	ext.w %d0
	ext.l %d0
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L196:
	moveq #1,%d0
	rts
.L200:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L197:
	moveq #0,%d0
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
	moveq #32,%d0
	or.l 4(%sp),%d0
	move.w #-97,%a0
	add.l %d0,%a0
	moveq #5,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
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
	movem.l #16128,-(%sp)
	move.l 28(%sp),%d2
	move.l 32(%sp),%d3
	move.l 36(%sp),%d4
	move.l 40(%sp),%d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L213
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
.L213:
	moveq #0,%d0
	moveq #0,%d1
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L221
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L221:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	moveq #1,%d7
	lea __ltdf2,%a2
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L226
	clr.b %d7
.L226:
	moveq #1,%d6
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L227
	clr.b %d6
.L227:
	cmp.b %d7,%d6
	jeq .L225
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L234
.L224:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
.L225:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L224
.L234:
	move.l %d4,%d2
	move.l %d5,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	movem.l #15392,-(%sp)
	move.l 24(%sp),%d2
	move.l 28(%sp),%d3
	moveq #1,%d5
	lea __ltsf2,%a2
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L239
	clr.b %d5
.L239:
	moveq #1,%d4
	clr.l -(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L240
	clr.b %d4
.L240:
	cmp.b %d5,%d4
	jeq .L238
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L247
.L237:
	move.l %d2,%d0
	movem.l (%sp)+,#1084
	rts
.L238:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gesf2
	addq.l #8,%sp
	tst.l %d0
	jge .L237
.L247:
	move.l %d3,%d2
	move.l %d2,%d0
	movem.l (%sp)+,#1084
	rts
	.size	fmaxf, .-fmaxf
	.section	.rodata
	.align	2
.LC0:
	.long	0
	.long	0
	.long	0
	.text
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
	movem.l #15934,-(%sp)
	move.l %a1,%a2
	move.l 44(%sp),%d3
	move.l 48(%sp),%d4
	move.l 52(%sp),%d5
	moveq #1,%d6
	move.l .LC0,%a4
	move.l .LC0+4,%a5
	move.l .LC0+8,%a6
	lea __ltxf2,%a3
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L252
	clr.b %d6
.L252:
	moveq #1,%d2
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l 76(%sp),-(%sp)
	move.l 76(%sp),-(%sp)
	move.l 76(%sp),-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L253
	clr.b %d2
.L253:
	cmp.b %d6,%d2
	jeq .L251
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L259
.L256:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31868
	rts
.L251:
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gexf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L256
.L259:
	move.l 56(%sp),%d3
	move.l 60(%sp),%d4
	move.l 64(%sp),%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31868
	rts
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	moveq #1,%d7
	lea __ltdf2,%a2
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L264
	clr.b %d7
.L264:
	moveq #1,%d6
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L265
	clr.b %d6
.L265:
	cmp.b %d7,%d6
	jeq .L263
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L262
	move.l %d4,%d2
	move.l %d5,%d3
.L262:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
.L263:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ledf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L262
	move.l %d4,%d2
	move.l %d5,%d3
	jra .L262
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	movem.l #15392,-(%sp)
	move.l 24(%sp),%d2
	move.l 28(%sp),%d3
	moveq #1,%d5
	lea __ltsf2,%a2
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L276
	clr.b %d5
.L276:
	moveq #1,%d4
	clr.l -(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L277
	clr.b %d4
.L277:
	cmp.b %d5,%d4
	jeq .L275
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L274
	move.l %d3,%d2
.L274:
	move.l %d2,%d0
	movem.l (%sp)+,#1084
	rts
.L275:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __lesf2
	addq.l #8,%sp
	tst.l %d0
	jle .L274
	move.l %d3,%d2
	jra .L274
	.size	fminf, .-fminf
	.section	.rodata
	.align	2
.LC1:
	.long	0
	.long	0
	.long	0
	.text
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
	movem.l #15934,-(%sp)
	move.l %a1,%a2
	move.l 56(%sp),%d3
	move.l 60(%sp),%d4
	move.l 64(%sp),%d5
	moveq #1,%d6
	move.l .LC1,%a4
	move.l .LC1+4,%a5
	move.l .LC1+8,%a6
	lea __ltxf2,%a3
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L288
	clr.b %d6
.L288:
	moveq #1,%d2
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L289
	clr.b %d2
.L289:
	cmp.b %d6,%d2
	jeq .L287
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L295
.L292:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31868
	rts
.L287:
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __lexf2
	lea (24,%sp),%sp
	tst.l %d0
	jle .L292
.L295:
	move.l 44(%sp),%d3
	move.l 48(%sp),%d4
	move.l 52(%sp),%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31868
	rts
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	lea (s.0),%a0
	jeq .L299
	lea digits,%a1
.L300:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L300
.L299:
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
	cmp.w #0,%a1
	jeq .L317
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L309
	move.l %a0,4(%a1)
.L309:
	rts
.L317:
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
	cmp.w #0,%a1
	jeq .L319
	move.l 4(%a0),4(%a1)
.L319:
	move.l 4(%a0),%a0
	cmp.w #0,%a0
	jeq .L318
	move.l %a1,(%a0)
.L318:
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
	jeq .L330
	move.l 40(%sp),%d2
	moveq #0,%d3
.L332:
	move.l %d2,%d6
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L329
	addq.l #1,%d3
	add.l %d5,%d2
	cmp.l %d4,%d3
	jne .L332
.L330:
	move.l %d4,%d0
	addq.l #1,%d0
	move.l %d0,(%a2)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l 40(%sp),%d6
	add.l %d0,%d6
	tst.l %d5
	jeq .L329
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L329:
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
	jeq .L347
	move.l 36(%sp),%d2
	moveq #0,%d3
.L349:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L346
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d5,%d3
	jne .L349
.L347:
	moveq #0,%d4
.L346:
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
	jmi .L363
	rts
.L363:
	neg.l %d0
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a0
.L365:
	move.l %a0,%a3
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L365
	move.b %d0,%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-9,%a1),%a2
	moveq #4,%d1
	cmp.l %a2,%d1
	jcc .L365
	cmp.b #43,%d0
	jeq .L367
	cmp.b #45,%d0
	jeq .L368
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcs .L376
	move.l %a3,%a2
	sub.l %a3,%a3
.L370:
	moveq #0,%d0
.L373:
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	addq.l #1,%a2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	move.l %d1,%d0
	sub.l %a0,%d0
	move.b (%a2),%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-48,%a1),%a1
	moveq #9,%d3
	cmp.l %a1,%d3
	jcc .L373
	cmp.w #0,%a3
	jne .L364
	move.l %a0,%d0
	sub.l %d1,%d0
.L364:
	movem.l (%sp)+,#3084
	rts
.L368:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L376
	move.w #1,%a3
	moveq #0,%d0
	jra .L373
.L367:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	sub.l %a3,%a3
	moveq #9,%d3
	cmp.l %a0,%d3
	jcc .L370
.L376:
	moveq #0,%d0
	movem.l (%sp)+,#3084
	rts
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a0
.L387:
	move.l %a0,%a3
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L387
	move.b %d0,%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-9,%a1),%a2
	moveq #4,%d1
	cmp.l %a2,%d1
	jcc .L387
	cmp.b #43,%d0
	jeq .L389
	cmp.b #45,%d0
	jeq .L407
	lea (-48,%a1),%a1
	moveq #9,%d0
	move.l %a3,%a2
	cmp.l %a1,%d0
	jcs .L397
	sub.l %a3,%a3
.L391:
	moveq #0,%d0
.L394:
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	addq.l #1,%a2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	move.l %d1,%d0
	sub.l %a0,%d0
	move.b (%a2),%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-48,%a1),%a1
	moveq #9,%d3
	cmp.l %a1,%d3
	jcc .L394
	cmp.w #0,%a3
	jne .L386
	move.l %a0,%d0
	sub.l %d1,%d0
.L386:
	movem.l (%sp)+,#3084
	rts
.L407:
	move.l %a0,%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	move.w #1,%a3
	moveq #9,%d3
	cmp.l %a0,%d3
	jcc .L391
.L397:
	moveq #0,%d0
	movem.l (%sp)+,#3084
	rts
.L389:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L397
	sub.l %a3,%a3
	jra .L391
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%a0
.L409:
	move.l %a0,%a2
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L409
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-9,%a1),%a3
	moveq #4,%d2
	cmp.l %a3,%d2
	jcc .L409
	cmp.b #43,%d0
	jeq .L411
	cmp.b #45,%d0
	jeq .L412
	lea (-48,%a1),%a1
	moveq #9,%d2
	cmp.l %a1,%d2
	jcs .L420
	move.l %a2,%a1
	sub.l %a2,%a2
.L414:
	clr.l %d4
	clr.l %d5
.L417:
	move.l %d4,%d2
	move.l %d5,%d3
	add.l %d3,%d3
	addx.l %d2,%d2
	add.l %d3,%d3
	addx.l %d2,%d2
	add.l %d5,%d3
	addx.l %d4,%d2
	add.l %d3,%d3
	addx.l %d2,%d2
	addq.l #1,%a1
	move.w %d1,%a0
	move.l #-48,%d7
	add.l %a0,%d7
	smi %d6
	ext.w %d6
	ext.l %d6
	move.l %d2,%d4
	move.l %d3,%d5
	sub.l %d7,%d5
	subx.l %d6,%d4
	move.b (%a1),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L417
	cmp.w #0,%a2
	jne .L408
	move.l %d6,%d4
	move.l %d7,%d5
	sub.l %d3,%d5
	subx.l %d2,%d4
.L408:
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#3324
	rts
.L412:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcs .L420
	move.w #1,%a2
	clr.l %d4
	clr.l %d5
	jra .L417
.L411:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	sub.l %a2,%a2
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L414
.L420:
	clr.l %d4
	clr.l %d5
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#3324
	rts
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d6
	move.l 40(%sp),%d4
	move.l 44(%sp),%d2
	move.l 48(%sp),%d5
	move.l 52(%sp),%a2
	tst.l %d2
	jeq .L431
	lea __mulsi3,%a3
.L434:
	move.l %d2,%d7
	lsr.l #1,%d7
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	move.l %d4,%d3
	add.l %d0,%d3
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L435
	jeq .L430
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	sub.l %d7,%d2
	jne .L434
.L431:
	moveq #0,%d3
.L430:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
.L435:
	move.l %d7,%d2
	jne .L434
	jra .L431
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movem.l #16184,-(%sp)
	move.l 40(%sp),%d7
	move.l 44(%sp),%d5
	move.l 52(%sp),%d4
	move.l 56(%sp),%a3
	move.l 60(%sp),%d6
	move.l 48(%sp),%d3
	lea __mulsi3,%a2
	jeq .L450
.L446:
	move.l %d3,%d0
	asr.l #1,%d0
	move.l %d0,%a4
	move.l %d4,-(%sp)
	move.l %d0,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d5,%d2
	add.l %d0,%d2
	move.l %d6,-(%sp)
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L445
	jle .L448
	move.l %d2,%d5
	add.l %d4,%d5
	subq.l #1,%d3
	asr.l #1,%d3
	jne .L446
.L450:
	moveq #0,%d2
.L445:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l (%sp)+,#7420
	rts
.L448:
	cmp.w #0,%a4
	jeq .L450
	move.l %a4,%d3
	jra .L446
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d4
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __divsi3
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	move.l %d0,%d1
	move.l %d2,%d0
	movem.l (%sp)+,#28
	rts
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	tst.l %d0
	jlt .L467
	rts
.L467:
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
	jmi .L474
	rts
.L474:
	neg.l %d0
	rts
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.type	ldiv, @function
ldiv:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d4
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __divsi3
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	move.l %d0,%d1
	move.l %d2,%d0
	movem.l (%sp)+,#28
	rts
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.type	llabs, @function
llabs:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	tst.l %d0
	jlt .L481
	rts
.L481:
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
	jeq .L488
.L485:
	cmp.l %d1,%d0
	jeq .L484
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L485
.L488:
	sub.l %a0,%a0
.L484:
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
	jne .L494
.L493:
	tst.l %d0
	jeq .L494
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L493
.L494:
	cmp.l %d0,%d1
	jgt .L497
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L497:
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
.L502:
	move.l (%a2)+,%d0
	move.l %d0,(%a1)+
	jne .L502
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
	jeq .L509
	move.l %a1,%a0
.L508:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L508
	sub.l %a1,%a0
	move.l %a0,%d0
	asr.l #2,%d0
	rts
.L509:
	moveq #0,%d0
	rts
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d1
	jeq .L520
	move.l 12(%sp),%a0
	move.l 16(%sp),%d0
.L515:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L516
	cmp.w #0,%a1
	jeq .L516
	subq.l #1,%d1
	jne .L515
.L520:
	moveq #0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L516:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L523
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L523:
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
	jeq .L529
	move.l 4(%sp),%a1
.L526:
	move.l %a1,%a0
	cmp.l (%a1)+,%d1
	jeq .L524
	subq.l #1,%d0
	jne .L526
.L529:
	sub.l %a0,%a0
.L524:
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
	cmp.w #0,%a0
	jeq .L539
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L534:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #4,%d1
	addq.l #4,%d0
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L543
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L534
.L539:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L543:
	move.l (%a2),%d0
	move.l (%a1),%d1
	cmp.l %d0,%d1
	jgt .L544
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L544:
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
	jeq .L546
	add.l %d0,%d0
	add.l %d0,%d0
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L546:
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
	jeq .L560
	move.l %a0,%a3
	move.l %d1,%a2
	add.l %d1,%a2
	add.l %a2,%a2
	move.l %a0,%d0
	sub.l %a1,%d0
	cmp.l %d0,%a2
	jls .L568
	tst.l %d1
	jeq .L560
	lea (%a1,%a2.l),%a3
	lea (%a0,%a2.l),%a2
.L557:
	move.l -(%a3),-(%a2)
	cmp.l %a1,%a3
	jne .L557
.L560:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L568:
	move.l %d1,%d0
	subq.l #1,%d0
	tst.l %d1
	jeq .L560
.L558:
	move.l (%a1)+,(%a3)+
	dbra %d0,.L558
	clr.w %d0
	subq.l #1,%d0
	jcc .L558
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
	cmp.w #0,%a1
	jeq .L570
	move.l %a0,%a1
.L571:
	move.l %d1,(%a1)+
	dbra %d0,.L571
	clr.w %d0
	subq.l #1,%d0
	jcc .L571
.L570:
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
	jls .L579
	move.l %d0,%a0
	add.l %d1,%a0
	tst.l %d1
	jeq .L578
	lea -1(%a1,%d1.l),%a1
.L581:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
	cmp.l %d0,%a0
	jne .L581
.L578:
	movem.l (%sp)+,#1036
	rts
.L579:
	cmp.l %d0,%a1
	jeq .L578
	tst.l %d1
	jeq .L578
	move.l %d1,%a0
	subq.l #1,%a0
	moveq #6,%d2
	cmp.l %a0,%d2
	jcc .L613
	move.l %a1,%d2
	or.l %d0,%d2
	moveq #3,%d3
	and.l %d3,%d2
	move.l %d0,%a0
	addq.l #1,%a0
	jne .L582
	move.l %a1,%d2
	sub.l %a0,%d2
	moveq #2,%d3
	cmp.l %d2,%d3
	jcc .L582
	move.l %d0,%a0
	moveq #-4,%d3
	and.l %d1,%d3
	move.l %a1,%d2
	add.l %d3,%d2
.L583:
	move.l (%a0)+,(%a1)+
	cmp.l %a1,%d2
	jne .L583
	add.l %d3,%d0
	move.l %d1,%a0
	sub.l %d3,%a0
	cmp.l %d1,%d3
	jeq .L578
	move.l %d0,%a2
	move.b (%a2),(%a1)
	moveq #1,%d1
	cmp.l %a0,%d1
	jeq .L578
	move.b 1(%a2),1(%a1)
	moveq #2,%d2
	cmp.l %a0,%d2
	jeq .L578
	move.b 2(%a2),2(%a1)
	movem.l (%sp)+,#1036
	rts
.L613:
	move.l %d0,%a0
	addq.l #1,%a0
.L582:
	add.l %d1,%d0
.L586:
	move.b -1(%a0),(%a1)+
	cmp.l %a0,%d0
	jeq .L578
	addq.l #1,%a0
	jra .L586
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.type	rotl64, @function
rotl64:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%d4
	move.l 28(%sp),%d3
	move.l 32(%sp),%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L615
	move.l %d3,%d0
	move.l %a0,%d1
	lsl.l %d1,%d0
	moveq #0,%d5
	neg.l %d2
	moveq #63,%d1
	and.l %d1,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L617
.L621:
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L615:
	moveq #31,%d0
	sub.l %d2,%d0
	move.l %d3,%d1
	lsr.l #1,%d1
	lsr.l %d0,%d1
	move.l %d4,%d0
	lsl.l %d2,%d0
	or.l %d1,%d0
	move.l %d3,%d5
	lsl.l %d2,%d5
	neg.l %d2
	moveq #63,%d1
	and.l %d1,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jge .L621
.L617:
	move.l %d4,%d6
	add.l %d6,%d6
	moveq #31,%d1
	sub.l %d2,%d1
	lsl.l %d1,%d6
	move.l %d3,%d1
	lsr.l %d2,%d1
	or.l %d6,%d1
	lsr.l %d2,%d4
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%d3
	move.l 28(%sp),%d4
	move.l 32(%sp),%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L623
	move.l %d3,%d1
	move.l %a0,%d0
	lsr.l %d0,%d1
	moveq #0,%d5
	neg.l %d2
	moveq #63,%d0
	and.l %d0,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L625
.L629:
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L623:
	moveq #31,%d1
	sub.l %d2,%d1
	move.l %d3,%d0
	add.l %d0,%d0
	lsl.l %d1,%d0
	move.l %d4,%d1
	lsr.l %d2,%d1
	or.l %d0,%d1
	move.l %d3,%d5
	lsr.l %d2,%d5
	neg.l %d2
	moveq #63,%d0
	and.l %d0,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jge .L629
.L625:
	move.l %d4,%d6
	lsr.l #1,%d6
	moveq #31,%d0
	sub.l %d2,%d0
	lsr.l %d0,%d6
	move.l %d3,%d0
	lsl.l %d2,%d0
	or.l %d6,%d0
	lsl.l %d2,%d4
	or.l %d5,%d0
	or.l %d4,%d1
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
	moveq #0,%d0
.L655:
	move.l %d2,%d1
	lsr.l %d0,%d1
	addq.l #1,%d0
	btst #0,%d1
	jne .L652
	moveq #32,%d1
	cmp.l %d0,%d1
	jne .L655
	moveq #0,%d0
.L652:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L662
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L659
	moveq #1,%d0
.L661:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L661
.L659:
	rts
.L662:
	moveq #0,%d0
	rts
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	moveq #0,%d0
	rts
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	moveq #0,%d0
	rts
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	moveq #0,%d0
	rts
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	lea (-12,%sp),%sp
	move.l %d2,-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __floatsidf
	move.l %d1,(%sp)
	move.l %d0,-(%sp)
	lea (12,%sp),%a1
	jsr __extenddfxf2
	addq.l #8,%sp
	move.l 20(%sp),%a0
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	move.l 12(%sp),%d2
	move.l %d0,(%a0)
	move.l %d1,4(%a0)
	move.l %d2,8(%a0)
	move.l (%sp)+,%d2
	lea (12,%sp),%sp
	rts
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
	movem.l #14368,-(%sp)
	move.l 20(%sp),%d4
	move.l 24(%sp),%d2
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #4,%sp
	move.l %d4,(%sp)
	move.l %d0,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L676
	tst.l %d2
	jlt .L692
	move.l #0x40000000,%d3
.L678:
	btst #0,%d2
	jeq .L679
	lea __mulsf3,%a2
.L680:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L679:
	move.l %d2,%d2
	jpl .L693
	addq.l #1,%d2
.L693:
	asr.l #1,%d2
	jeq .L676
	lea __mulsf3,%a2
.L681:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L680
	move.l %d2,%d2
	jpl .L694
	addq.l #1,%d2
.L694:
	asr.l #1,%d2
	jra .L681
.L676:
	move.l %d4,%d0
	movem.l (%sp)+,#1052
	rts
.L692:
	move.l #0x3f000000,%d3
	jra .L678
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
	movem.l #12094,-(%sp)
	move.l 44(%sp),%d6
	move.l 48(%sp),%d7
	move.l 52(%sp),%d2
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr __adddf3
	lea (12,%sp),%sp
	move.l %d7,(%sp)
	move.l %d6,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L696
	tst.l %d2
	jlt .L712
	move.l #1073741824,%a4
	sub.l %a5,%a5
.L698:
	btst #0,%d2
	jeq .L699
	lea __muldf3,%a6
.L700:
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a6)
	lea (16,%sp),%sp
	move.l %d0,%a2
	move.l %d1,%a3
	move.l %a2,%d6
	move.l %a3,%d7
.L699:
	move.l %d2,%d2
	jpl .L713
	addq.l #1,%d2
.L713:
	asr.l #1,%d2
	jeq .L696
	lea __muldf3,%a6
.L701:
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a6)
	lea (16,%sp),%sp
	move.l %d0,%d4
	move.l %d1,%d5
	move.l %d4,%a4
	move.l %d5,%a5
	btst #0,%d2
	jne .L700
	move.l %d2,%d2
	jpl .L714
	addq.l #1,%d2
.L714:
	asr.l #1,%d2
	jra .L701
.L696:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31988
	rts
.L712:
	move.l #1071644672,%a4
	sub.l %a5,%a5
	jra .L698
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
	lea (-24,%sp),%sp
	movem.l #15422,-(%sp)
	move.l %a1,%a3
	move.l 64(%sp),%a4
	move.l 68(%sp),%a5
	move.l 72(%sp),%a6
	move.l 76(%sp),%d2
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	lea (72,%sp),%a1
	jsr __addxf3
	lea (24,%sp),%sp
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l 68(%sp),-(%sp)
	move.l 68(%sp),-(%sp)
	move.l 68(%sp),-(%sp)
	jsr __nexf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L716
	tst.l %d2
	jlt .L732
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
.L718:
	btst #0,%d2
	jeq .L719
	lea __mulxf3,%a2
.L720:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	lea (60,%sp),%a1
	jsr (%a2)
	lea (24,%sp),%sp
	move.l 36(%sp),%a4
	move.l 40(%sp),%a5
	move.l 44(%sp),%a6
.L719:
	move.l %d2,%d2
	jpl .L733
	addq.l #1,%d2
.L733:
	asr.l #1,%d2
	jeq .L716
	lea __mulxf3,%a2
.L721:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	lea (72,%sp),%a1
	jsr (%a2)
	lea (24,%sp),%sp
	move.l 48(%sp),%d3
	move.l 52(%sp),%d4
	move.l 56(%sp),%d5
	btst #0,%d2
	jne .L720
	move.l %d2,%d2
	jpl .L734
	addq.l #1,%d2
.L734:
	asr.l #1,%d2
	jra .L721
.L716:
	move.l %a4,(%a3)
	move.l %a5,4(%a3)
	move.l %a6,8(%a3)
	move.l %a3,%a0
	movem.l (%sp)+,#31804
	lea (24,%sp),%sp
	rts
.L732:
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
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
	jeq .L736
	move.l %d1,%d0
	subq.l #1,%d0
	moveq #3,%d2
	cmp.l %d0,%d2
	jcc .L737
	move.l %a0,%d0
	move.l %a3,%d3
	or.l %d3,%d0
	and.l %d2,%d0
	jne .L737
	move.l %a3,%a2
	moveq #-4,%d2
	and.l %d1,%d2
	lea (%a0,%d2.l),%a4
	move.l %a0,%a1
.L738:
	move.l (%a2)+,%d0
	move.l (%a1),%d3
	eor.l %d3,%d0
	move.l %d0,(%a1)+
	cmp.l %a4,%a1
	jne .L738
	add.l %d2,%a3
	move.l %d1,%d0
	sub.l %d2,%d0
	cmp.l %d2,%d1
	jeq .L736
	move.b (%a3),%d1
	eor.b %d1,(%a4)
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L736
	move.b 1(%a3),%d3
	eor.b %d3,1(%a4)
	subq.l #2,%d0
	jeq .L736
	move.b 2(%a3),%d2
	eor.b %d2,2(%a4)
.L736:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L737:
	add.l %a3,%d1
	move.l %a0,%a1
.L740:
	addq.l #1,%a1
	move.b (%a3)+,%d3
	eor.b %d3,-1(%a1)
	cmp.l %d1,%a3
	jeq .L736
	addq.l #1,%a1
	move.b (%a3)+,%d3
	eor.b %d3,-1(%a1)
	cmp.l %d1,%a3
	jne .L740
	jra .L736
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
	jeq .L757
.L758:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L758
.L757:
	tst.l %d0
	jeq .L759
	move.l 12(%sp),%a2
.L760:
	move.b (%a2)+,%d1
	move.b %d1,(%a1)+
	jeq .L762
	subq.l #1,%d0
	jne .L760
.L759:
	clr.b (%a1)
.L762:
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
	moveq #0,%d0
	tst.l %d1
	jeq .L771
	tst.b (%a0,%d0.l)
	jne .L774
.L771:
	rts
.L774:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jeq .L771
	tst.b (%a0,%d0.l)
	jeq .L771
	jra .L774
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d2
	move.b (%a0),%d1
	jeq .L785
.L781:
	move.l %d2,%a1
.L784:
	move.b (%a1)+,%d0
	jeq .L789
	cmp.b %d0,%d1
	jne .L784
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L789:
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L781
.L785:
	sub.l %a0,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	movem.l #12320,-(%sp)
	move.l 20(%sp),%d3
	move.l 16(%sp),%a2
	sub.l %a0,%a0
.L792:
	move.l %a2,%d2
	move.b (%a2)+,%d1
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %d3,%a1
	jeq .L796
	tst.b %d1
	jne .L792
.L797:
	move.l %a0,%d0
	movem.l (%sp)+,#1036
	rts
.L796:
	move.l %d2,%a0
	tst.b %d1
	jne .L792
	jra .L797
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #15408,-(%sp)
	move.l 28(%sp),%d1
	move.l 32(%sp),%a3
	move.b (%a3),%d3
	jeq .L808
	move.l %a3,%a0
.L800:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L800
	move.l %a0,%d5
	sub.l %a3,%d5
	cmp.l %a0,%a3
	jeq .L808
	subq.l #1,%d5
.L806:
	move.l %d1,%a0
	move.b (%a0),%d0
	addq.l #1,%d1
	cmp.b %d0,%d3
	jeq .L805
	tst.b %d0
	jne .L806
	sub.l %a0,%a0
.L798:
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
.L805:
	move.b %d3,%d0
	move.l %a3,%d2
	move.l %a0,%d4
	add.l %d5,%d4
	move.l %a0,%a1
.L802:
	move.l %d2,%a2
	move.b (%a2),%d1
	addq.l #1,%d2
	tst.b %d1
	jeq .L803
	cmp.l %a1,%d4
	jeq .L803
	cmp.b %d1,%d0
	jne .L803
	addq.l #1,%a1
	move.b (%a1),%d0
	jne .L802
	move.l %d2,%a2
.L803:
	cmp.b (%a2),%d0
	jeq .L798
	move.l %a0,%d1
	addq.l #1,%d1
	jra .L806
.L808:
	move.l %d1,%a0
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	clr.l %d4
	clr.l %d5
	lea __ltdf2,%a2
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L829
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L821
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L820
.L821:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
.L829:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L821
.L820:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	movem.l #12344,-(%sp)
	move.l 24(%sp),%a0
	move.l 36(%sp),%d1
	jeq .L830
	cmp.l 28(%sp),%d1
	jhi .L841
	move.l 28(%sp),%d0
	sub.l %d1,%d0
	add.l %a0,%d0
	cmp.l %a0,%d0
	jcs .L841
	move.l 32(%sp),%a4
	move.b (%a4)+,%d3
	move.l %d1,%d2
	subq.l #1,%d2
.L836:
	move.l %a0,%a2
	cmp.b (%a2)+,%d3
	jeq .L848
	move.l %a2,%a0
.L832:
	cmp.l %d0,%a0
	jls .L836
.L841:
	sub.l %a0,%a0
.L830:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L848:
	tst.l %d2
	jeq .L830
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
.L833:
	cmpm.b (%a3)+,(%a1)+
	jne .L849
.L834:
	cmp.l %a1,%d1
	jeq .L830
	cmpm.b (%a3)+,(%a1)+
	jeq .L834
.L849:
	cmp.l %d0,%a2
	jhi .L841
	move.l %a2,%a0
	cmp.b (%a0)+,%d3
	jne .L832
	move.l %a2,%d1
	move.l %a0,%a2
	move.l %d1,%a0
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
	jra .L833
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	jeq .L851
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L851:
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
	lea (-16,%sp),%sp
	movem.l #16190,-(%sp)
	move.l 64(%sp),%d2
	move.l 68(%sp),%d3
	clr.l %d4
	clr.l %d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L883
	lea __gedf2,%a4
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L884
	moveq #0,%d7
	moveq #0,%d6
	lea __muldf3,%a5
.L866:
	addq.l #1,%d6
	move.l %d2,%d4
	move.l %d3,%d5
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (16,%sp),%sp
	move.l %d0,%a2
	move.l %d1,%a3
	move.l %a2,%d2
	move.l %a3,%d3
	clr.l -(%sp)
	move.l #1073741824,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L866
.L867:
	move.l 72(%sp),%a0
	move.l %d6,(%a0)
	move.l %d2,%a1
	tst.l %d7
	jeq .L873
	add.l #-2147483648,%a1
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (16,%sp),%sp
	rts
.L884:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L879
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L872
.L879:
	move.l 72(%sp),%a0
	clr.l (%a0)
	move.l %d2,%a1
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (16,%sp),%sp
	rts
.L883:
	move.l %d2,%d4
	add.l #-2147483648,%d4
	move.l %d3,%d5
	clr.l -(%sp)
	move.l #-1074790400,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ledf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L885
	move.l %d4,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	moveq #1,%d7
	lea __gedf2,%a4
	moveq #0,%d6
	lea __muldf3,%a5
	jra .L866
.L873:
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (16,%sp),%sp
	rts
.L885:
	clr.l -(%sp)
	move.l #-1075838976,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L879
	moveq #1,%d7
	move.l %d4,52(%sp)
	move.l %d5,56(%sp)
	move.l 52(%sp),%d2
	move.l 56(%sp),%d3
	moveq #0,%d6
	lea __adddf3,%a3
.L868:
	subq.l #1,%d6
	move.l %d2,%d4
	move.l %d3,%d5
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	move.l %d0,%a5
	move.l %d1,%a6
	move.l %a5,%d2
	move.l %a6,%d3
	clr.l -(%sp)
	move.l #1070596096,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L867
	subq.l #1,%d6
	move.l %d2,%d4
	move.l %d3,%d5
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	move.l %d0,%a5
	move.l %d1,%a6
	move.l %a5,%d2
	move.l %a6,%d3
	clr.l -(%sp)
	move.l #1070596096,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L868
	jra .L867
.L872:
	move.l %d2,%d4
	move.l %d3,%d5
	moveq #0,%d7
	move.l %d4,52(%sp)
	move.l %d5,56(%sp)
	move.l 52(%sp),%d2
	move.l 56(%sp),%d3
	moveq #0,%d6
	lea __adddf3,%a3
	jra .L868
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
	jeq .L886
.L888:
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
	jne .L888
.L886:
	move.l %a2,%d0
	move.l %a3,%d1
	movem.l (%sp)+,#15612
	rts
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	moveq #1,%d2
	cmp.l %d1,%a0
	jls .L895
	moveq #32,%d0
	moveq #1,%d2
.L894:
	tst.l %d1
	jlt .L895
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L896
	subq.l #1,%d0
	jne .L894
	tst.l 16(%sp)
	jne .L911
.L893:
	move.l (%sp)+,%d2
	rts
.L896:
	tst.l %d2
	jeq .L903
.L895:
	moveq #0,%d0
.L900:
	cmp.l %a0,%d1
	jhi .L899
	sub.l %d1,%a0
	or.l %d2,%d0
.L899:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L900
	tst.l 16(%sp)
	jeq .L893
.L911:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L903:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L893
	jra .L911
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
	jeq .L914
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
	move.l (%sp)+,%d2
	rts
.L914:
	moveq #7,%d0
	move.l (%sp)+,%d2
	rts
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	movem.l #16128,-(%sp)
	move.l 28(%sp),%d0
	move.l 32(%sp),%d1
	move.l %d0,%d2
	move.l %d1,%d3
	add.l %d2,%d2
	subx.l %d2,%d2
	move.l %d2,%d3
	move.l %d0,%d4
	eor.l %d2,%d4
	move.l %d1,%d5
	eor.l %d2,%d5
	move.l %d0,%d6
	move.l %d1,%d7
	sub.l %d3,%d7
	subx.l %d2,%d6
	jeq .L919
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
	movem.l (%sp)+,#252
	rts
.L919:
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
	moveq #0,%d0
	tst.l %d2
	jeq .L922
.L924:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L924
.L922:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
	movem.l #15928,-(%sp)
	move.l 36(%sp),%a2
	move.l 40(%sp),%a3
	move.l 44(%sp),%d2
	move.l %d2,%d0
	lsr.l #3,%d0
	moveq #-8,%d1
	and.l %d2,%d1
	cmp.l %a2,%a3
	jhi .L930
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L961
.L930:
	tst.l %d0
	jeq .L933
	move.l %a3,%a0
	move.l %a2,%a1
	lsl.l #3,%d0
	add.l %a3,%d0
.L934:
	move.l (%a0)+,%d3
	move.l (%a0)+,%d4
	move.l %d3,(%a1)+
	move.l %d4,(%a1)+
	cmp.l %a0,%d0
	jne .L934
	cmp.l %d2,%d1
	jcc .L929
	move.l %d2,%d4
	sub.l %d1,%d4
	move.l %d4,%d0
	subq.l #1,%d0
	moveq #6,%d5
	cmp.l %d0,%d5
	jcc .L956
	lea (%a2,%d1.l),%a0
	move.l %a0,%d3
	move.l %a3,%d0
	add.l %d1,%d0
	lea 1(%a3,%d1.l),%a4
	move.l %a0,%a1
	sub.l %a4,%a1
	moveq #2,%d6
	cmp.l %a1,%d6
	jcc .L936
	move.l %a0,%d5
	or.l %d0,%d5
	moveq #3,%d6
	and.l %d6,%d5
	jne .L936
	move.l %d0,%a1
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L937:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d0
	jne .L937
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L929
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d0
	addq.l #1,%d0
	cmp.l %d2,%d0
	jcc .L929
	move.b (%a3,%d0.l),(%a2,%d0.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L929
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L929:
	movem.l (%sp)+,#7292
	rts
.L961:
	add.l %d2,%a2
	tst.l %d2
	jeq .L929
.L941:
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jeq .L929
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jne .L941
	jra .L929
.L933:
	tst.l %d2
	jeq .L929
.L956:
	move.l %a2,%d3
	add.l %d1,%d3
	move.l %a3,%d0
	add.l %d1,%d0
.L936:
	move.l %d0,%a1
	move.l %d3,%a0
	add.l %a3,%d2
.L939:
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jeq .L929
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jne .L939
	jra .L929
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a2
	move.l 24(%sp),%a3
	move.l 28(%sp),%d2
	move.l %d2,%d3
	lsr.l #1,%d3
	cmp.l %a2,%a3
	jhi .L963
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L993
.L963:
	tst.l %d3
	jeq .L966
	move.l %d3,%d0
	subq.l #1,%d0
	moveq #8,%d1
	cmp.l %d0,%d1
	jcc .L967
	move.l %a3,%d0
	move.l %a2,%d1
	or.l %d1,%d0
	moveq #3,%d1
	and.l %d1,%d0
	jne .L967
	move.l %a3,%d0
	addq.l #2,%d0
	cmp.l %a2,%d0
	jeq .L967
	move.l %d2,%d0
	lsr.l #2,%d0
	move.l %a3,%a1
	add.l %d0,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %a2,%d1
	move.l %a2,%a0
.L968:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d1
	jne .L968
	cmp.l %d3,%d0
	jeq .L966
	add.l %d0,%d0
	move.w (%a3,%d0.l),(%a2,%d0.l)
.L966:
	btst #0,%d2
	jeq .L962
	move.b -1(%a3,%d2.l),-1(%a2,%d2.l)
.L962:
	movem.l (%sp)+,#3084
	rts
.L993:
	add.l %d2,%a2
	tst.l %d2
	jeq .L962
.L973:
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jeq .L962
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jne .L973
	jra .L962
.L967:
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d3,%d3
	move.l %d3,%d0
	add.l %a3,%d0
.L970:
	move.w (%a0)+,(%a1)+
	cmp.l %d0,%a0
	jeq .L966
	move.w (%a0)+,(%a1)+
	cmp.l %d0,%a0
	jne .L970
	jra .L966
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
	movem.l #15928,-(%sp)
	move.l 36(%sp),%a2
	move.l 40(%sp),%a3
	move.l 44(%sp),%d2
	move.l %d2,%d0
	lsr.l #2,%d0
	moveq #-4,%d1
	and.l %d2,%d1
	cmp.l %a2,%a3
	jhi .L995
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L1026
.L995:
	tst.l %d0
	jeq .L998
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %d0,%d0
	add.l %a3,%d0
.L999:
	move.l (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L999
	cmp.l %d2,%d1
	jcc .L994
	move.l %d2,%d4
	sub.l %d1,%d4
	move.l %d4,%d0
	subq.l #1,%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jcc .L1021
	lea (%a2,%d1.l),%a0
	move.l %a0,%d3
	move.l %a3,%d0
	add.l %d1,%d0
	lea 1(%a3,%d1.l),%a4
	move.l %a0,%a1
	sub.l %a4,%a1
	moveq #2,%d5
	cmp.l %a1,%d5
	jcc .L1001
	move.l %a0,%d5
	or.l %d0,%d5
	moveq #3,%d6
	and.l %d6,%d5
	jne .L1001
	move.l %d0,%a1
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L1002:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d0
	jne .L1002
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L994
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d0
	addq.l #1,%d0
	cmp.l %d2,%d0
	jcc .L994
	move.b (%a3,%d0.l),(%a2,%d0.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L994
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L994:
	movem.l (%sp)+,#7292
	rts
.L1026:
	add.l %d2,%a2
	tst.l %d2
	jeq .L994
.L1006:
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jeq .L994
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jne .L1006
	jra .L994
.L998:
	tst.l %d2
	jeq .L994
.L1021:
	move.l %a2,%d3
	add.l %d1,%d3
	move.l %a3,%d0
	add.l %d1,%d0
.L1001:
	move.l %d0,%a1
	move.l %d3,%a0
	add.l %a3,%d2
.L1004:
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jeq .L994
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jne .L1004
	jra .L994
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	rts
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.type	__uitod, @function
__uitod:
	move.l 4(%sp),-(%sp)
	jsr __floatunsidf
	addq.l #4,%sp
	rts
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.type	__uitof, @function
__uitof:
	move.l 4(%sp),-(%sp)
	jsr __floatunsisf
	addq.l #4,%sp
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
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __umodsi3
	addq.l #8,%sp
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
	moveq #0,%d1
	move.w %d0,%d1
	tst.w %d0
	jmi .L1042
	move.l %d1,%d0
	moveq #14,%d3
	asr.l %d3,%d0
	jne .L1039
	move.l %d1,%d0
	moveq #13,%d3
	asr.l %d3,%d0
	jne .L1043
	move.l %d1,%d0
	moveq #12,%d3
	asr.l %d3,%d0
	jne .L1044
	move.l %d1,%d0
	moveq #11,%d3
	asr.l %d3,%d0
	jne .L1045
	move.l %d1,%d0
	moveq #10,%d3
	asr.l %d3,%d0
	jne .L1046
	move.l %d1,%d0
	moveq #9,%d3
	asr.l %d3,%d0
	jne .L1047
	move.l %d1,%d0
	asr.l #8,%d0
	jne .L1048
	move.l %d1,%d0
	asr.l #7,%d0
	jne .L1049
	move.l %d1,%d0
	asr.l #6,%d0
	jne .L1050
	move.l %d1,%d0
	asr.l #5,%d0
	jne .L1051
	move.l %d1,%d0
	asr.l #4,%d0
	jne .L1052
	move.l %d1,%d0
	asr.l #3,%d0
	jne .L1053
	move.l %d1,%d0
	asr.l #2,%d0
	jne .L1054
	asr.l #1,%d1
	jne .L1055
	moveq #16,%d0
	tst.w %d2
	jne .L1060
.L1039:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1042:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1053:
	moveq #12,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1060:
	moveq #15,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1043:
	moveq #2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1044:
	moveq #3,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1045:
	moveq #4,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1046:
	moveq #5,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1047:
	moveq #6,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1048:
	moveq #7,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1049:
	moveq #8,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1050:
	moveq #9,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1051:
	moveq #10,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1052:
	moveq #11,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1054:
	moveq #13,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1055:
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
	jne .L1064
	btst #1,%d1
	jne .L1065
	btst #2,%d1
	jne .L1066
	btst #3,%d1
	jne .L1067
	btst #4,%d1
	jne .L1068
	btst #5,%d1
	jne .L1069
	btst #6,%d1
	jne .L1070
	tst.b %d1
	jmi .L1071
	btst #8,%d1
	jne .L1072
	btst #9,%d1
	jne .L1073
	btst #10,%d1
	jne .L1074
	btst #11,%d1
	jne .L1075
	btst #12,%d1
	jne .L1076
	btst #13,%d1
	jne .L1077
	btst #14,%d1
	jne .L1078
	moveq #16,%d0
	tst.w %d1
	jmi .L1083
	rts
.L1064:
	moveq #0,%d0
	rts
.L1065:
	moveq #1,%d0
	rts
.L1076:
	moveq #12,%d0
	rts
.L1083:
	moveq #15,%d0
	rts
.L1066:
	moveq #2,%d0
	rts
.L1067:
	moveq #3,%d0
	rts
.L1068:
	moveq #4,%d0
	rts
.L1069:
	moveq #5,%d0
	rts
.L1070:
	moveq #6,%d0
	rts
.L1071:
	moveq #7,%d0
	rts
.L1072:
	moveq #8,%d0
	rts
.L1073:
	moveq #9,%d0
	rts
.L1074:
	moveq #10,%d0
	rts
.L1075:
	moveq #11,%d0
	rts
.L1077:
	moveq #13,%d0
	rts
.L1078:
	moveq #14,%d0
	rts
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l #0x47000000,%d3
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gesf2
	addq.l #8,%sp
	tst.l %d0
	jge .L1092
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1092:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d1
	moveq #0,%d0
	move.w %d1,%d0
	move.l %d0,%d2
	asr.l #1,%d2
	moveq #1,%d3
	and.l %d3,%d2
	and.l %d3,%d1
	add.l %d2,%d1
	move.l %d0,%d2
	asr.l #2,%d2
	and.l %d3,%d2
	add.l %d2,%d1
	move.l %d0,%d2
	asr.l #3,%d2
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #4,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	asr.l #5,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #6,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	asr.l #7,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #8,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #9,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #10,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #11,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #12,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #13,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #14,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	moveq #15,%d2
	asr.l %d2,%d0
	add.l %d1,%d0
	and.l %d3,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d1
	moveq #0,%d0
	move.w %d1,%d0
	move.l %d0,%d2
	asr.l #1,%d2
	moveq #1,%d3
	and.l %d3,%d2
	and.l %d3,%d1
	add.l %d2,%d1
	move.l %d0,%d2
	asr.l #2,%d2
	and.l %d3,%d2
	add.l %d2,%d1
	move.l %d0,%d2
	asr.l #3,%d2
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #4,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	asr.l #5,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #6,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	asr.l #7,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #8,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #9,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #10,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #11,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #12,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #13,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #14,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	moveq #15,%d2
	asr.l %d2,%d0
	add.l %d1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	moveq #0,%d0
	tst.l %d2
	jeq .L1097
.L1099:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L1099
.L1097:
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
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	moveq #0,%d0
	tst.l %d2
	jeq .L1104
	tst.l %d3
	jeq .L1104
.L1106:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L1106
.L1104:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	moveq #1,%d2
	cmp.l %a0,%d1
	jcc .L1115
	moveq #32,%d0
	moveq #1,%d2
.L1114:
	tst.l %d1
	jlt .L1115
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1116
	subq.l #1,%d0
	jne .L1114
	tst.l 16(%sp)
	jne .L1131
.L1113:
	move.l (%sp)+,%d2
	rts
.L1116:
	tst.l %d2
	jeq .L1123
.L1115:
	moveq #0,%d0
.L1120:
	cmp.l %a0,%d1
	jhi .L1119
	sub.l %d1,%a0
	or.l %d2,%d0
.L1119:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1120
	tst.l 16(%sp)
	jeq .L1113
.L1131:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1123:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1113
	jra .L1131
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d4
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L1135
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L1138
	move.l %d2,%d0
.L1132:
	movem.l (%sp)+,#28
	rts
.L1138:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L1132
.L1135:
	moveq #-1,%d0
	movem.l (%sp)+,#28
	rts
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%d2
	move.l 28(%sp),%d3
	move.l 32(%sp),%d4
	move.l 36(%sp),%d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L1142
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L1145
	move.l %d6,%d0
.L1139:
	movem.l (%sp)+,#124
	rts
.L1145:
	moveq #0,%d6
	move.l %d6,%d0
	jra .L1139
.L1142:
	moveq #-1,%d0
	movem.l (%sp)+,#124
	rts
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	move.l 8(%sp),-(%sp)
	smi %d0
	ext.w %d0
	ext.l %d0
	move.l %d0,-(%sp)
	move.l 12(%sp),-(%sp)
	smi %d0
	ext.w %d0
	ext.l %d0
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
	moveq #0,%d0
	move.l 8(%sp),%a1
	sub.l %a0,%a0
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
	move.l 20(%sp),%d2
	jmi .L1166
	jeq .L1156
	sub.l %a0,%a0
	moveq #32,%d4
	moveq #0,%d0
.L1155:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L1154
	subq.b #1,%d4
	jne .L1155
.L1154:
	cmp.w #0,%a0
	jeq .L1150
	neg.l %d0
.L1150:
	movem.l (%sp)+,#28
	rts
.L1166:
	neg.l %d2
	move.w #1,%a0
	moveq #32,%d4
	moveq #0,%d0
	jra .L1155
.L1156:
	moveq #0,%d0
	movem.l (%sp)+,#28
	rts
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	move.l 16(%sp),%d1
	tst.l %d3
	jlt .L1187
	moveq #1,%d0
	sub.l %a1,%a1
	tst.l %d1
	jlt .L1188
.L1169:
	move.l %d3,%a0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1171
	moveq #32,%d0
	moveq #1,%d2
.L1170:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1174
	subq.l #1,%d0
	jne .L1170
.L1174:
	moveq #0,%d0
	tst.l %d2
	jeq .L1172
.L1171:
	moveq #0,%d0
.L1176:
	cmp.l %a0,%d1
	jhi .L1175
	sub.l %d1,%a0
	or.l %d2,%d0
.L1175:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1176
.L1172:
	cmp.w #0,%a1
	jeq .L1167
	neg.l %d0
.L1167:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1188:
	neg.l %d1
	move.l %d0,%a1
	jra .L1169
.L1187:
	neg.l %d3
	moveq #0,%d0
	move.w #1,%a1
	tst.l %d1
	jge .L1169
	jra .L1188
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	jmi .L1209
	sub.l %a1,%a1
	move.l 16(%sp),%d1
	jmi .L1210
.L1191:
	move.l %d3,%d0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1198
	move.w #32,%a0
	moveq #1,%d2
.L1192:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1196
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L1192
.L1196:
	tst.l %d2
	jeq .L1211
.L1198:
	cmp.l %d0,%d1
	jhi .L1197
	sub.l %d1,%d0
.L1197:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1198
.L1194:
	cmp.w #0,%a1
	jeq .L1189
	neg.l %d0
.L1189:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1210:
	neg.l %d1
	jra .L1191
.L1209:
	neg.l %d3
	move.w #1,%a1
	move.l 16(%sp),%d1
	jpl .L1191
	jra .L1210
.L1211:
	move.l %d3,%d0
	jra .L1194
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%a0
	move.l 28(%sp),%d3
	move.w %a0,%d0
	move.w %d3,%d1
	cmp.w %d3,%d0
	jls .L1327
	tst.w %d3
	jlt .L1215
	add.w %d3,%d1
	cmp.w %a0,%d1
	jcc .L1216
	tst.w %d1
	jlt .L1217
	add.w %d1,%d1
	cmp.w %a0,%d1
	jcc .L1218
	tst.w %d1
	jlt .L1219
	move.w %d3,%d1
	lsl.w #3,%d1
	cmp.w %a0,%d1
	jcc .L1220
	tst.w %d1
	jlt .L1221
	move.w %d3,%d1
	lsl.w #4,%d1
	cmp.w %a0,%d1
	jcc .L1222
	tst.w %d1
	jlt .L1223
	move.w %d3,%d1
	lsl.w #5,%d1
	cmp.w %a0,%d1
	jcc .L1224
	tst.w %d1
	jlt .L1225
	move.w %d3,%d1
	lsl.w #6,%d1
	cmp.w %a0,%d1
	jcc .L1226
	tst.w %d1
	jlt .L1227
	move.w %d3,%d1
	lsl.w #7,%d1
	cmp.w %a0,%d1
	jcc .L1228
	tst.w %d1
	jlt .L1229
	move.w %d3,%d1
	lsl.w #8,%d1
	cmp.w %a0,%d1
	jcc .L1230
	tst.w %d1
	jlt .L1231
	move.w %d3,%d1
	moveq #9,%d2
	lsl.w %d2,%d1
	cmp.w %a0,%d1
	jcc .L1232
	tst.w %d1
	jlt .L1233
	move.w %d3,%d1
	moveq #10,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1234
	tst.w %d1
	jlt .L1235
	move.w %d3,%d1
	moveq #11,%d6
	lsl.w %d6,%d1
	cmp.w %a0,%d1
	jcc .L1236
	tst.w %d1
	jlt .L1237
	move.w %d3,%d1
	moveq #12,%d2
	lsl.w %d2,%d1
	cmp.w %a0,%d1
	jcc .L1238
	tst.w %d1
	jlt .L1239
	move.w %d3,%d1
	moveq #13,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1240
	tst.w %d1
	jlt .L1241
	move.w %d3,%d1
	moveq #14,%d6
	lsl.w %d6,%d1
	cmp.w %a0,%d1
	jcc .L1242
	tst.w %d1
	jlt .L1243
	moveq #15,%d1
	lsl.w %d1,%d3
	cmp.w %a0,%d3
	jcc .L1244
	tst.w %d3
	jne .L1328
.L1245:
	tst.l 32(%sp)
	jne .L1212
	move.w %d3,%d0
.L1212:
	movem.l (%sp)+,#124
	rts
.L1232:
	cmp.w %a0,%d1
	jhi .L1278
	sub.w %d1,%d0
	move.w #512,%d4
	move.w %d4,%d3
.L1247:
	move.w %d4,%d2
	lsr.w #2,%d2
	move.w %d1,%d5
	lsr.w #2,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1248
	sub.w %d5,%d0
	or.w %d2,%d3
.L1248:
	move.w %d4,%d2
	lsr.w #3,%d2
	move.w %d1,%d5
	lsr.w #3,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1249
	sub.w %d5,%d0
	or.w %d2,%d3
.L1249:
	move.w %d4,%d2
	lsr.w #4,%d2
	move.w %d1,%d5
	lsr.w #4,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1250
	sub.w %d5,%d0
	or.w %d2,%d3
.L1250:
	move.w %d4,%d2
	lsr.w #5,%d2
	move.w %d1,%d5
	lsr.w #5,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1251
	sub.w %d5,%d0
	or.w %d2,%d3
.L1251:
	move.w %d4,%d2
	lsr.w #6,%d2
	move.w %d1,%d5
	lsr.w #6,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1252
	sub.w %d5,%d0
	or.w %d2,%d3
.L1252:
	move.w %d4,%d2
	lsr.w #7,%d2
	move.w %d1,%d5
	lsr.w #7,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1253
	sub.w %d5,%d0
	or.w %d2,%d3
.L1253:
	move.w %d4,%d2
	lsr.w #8,%d2
	move.w %d1,%d5
	lsr.w #8,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1254
	sub.w %d5,%d0
	or.w %d2,%d3
.L1254:
	move.w %d4,%d2
	moveq #9,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #9,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1255
	sub.w %d5,%d0
	or.w %d2,%d3
.L1255:
	move.w %d4,%d2
	moveq #10,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #10,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1256
	sub.w %d5,%d0
	or.w %d2,%d3
.L1256:
	move.w %d4,%d2
	moveq #11,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #11,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1257
	sub.w %d5,%d0
	or.w %d2,%d3
.L1257:
	move.w %d4,%d2
	moveq #12,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #12,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1258
	sub.w %d5,%d0
	or.w %d2,%d3
.L1258:
	move.w %d4,%d2
	moveq #13,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #13,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1259
	sub.w %d5,%d0
	or.w %d2,%d3
.L1259:
	move.w %d4,%d2
	moveq #14,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #14,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1245
	cmp.w %d0,%d5
	jhi .L1260
	sub.w %d5,%d0
	or.w %d2,%d3
.L1260:
	moveq #15,%d2
	lsr.w %d2,%d1
	cmp.w #16384,%d4
	jeq .L1245
	cmp.w %d0,%d1
	jhi .L1268
	sub.w %d1,%d0
	or.w #1,%d3
	jra .L1245
.L1328:
	add.w #-32768,%d0
	move.w #16384,%d2
	move.w %d2,%d5
	move.w #-32768,%d1
	move.w %d1,%d4
	move.w %d1,%d3
.L1265:
	cmp.w %d0,%d2
	jhi .L1247
	sub.w %d2,%d0
	or.w %d5,%d3
	jra .L1247
.L1268:
	clr.w %d0
	jra .L1245
.L1327:
	cmp.w %d3,%d0
	jeq .L1266
	clr.w %d3
	jra .L1245
.L1215:
	sub.w %d3,%d0
	moveq #1,%d3
	jra .L1245
.L1216:
	cmp.w %a0,%d1
	jhi .L1270
	sub.w %d1,%d0
	moveq #2,%d4
	moveq #2,%d3
	jra .L1247
.L1217:
	sub.w %d1,%d0
	move.w %d3,%d2
	and.w #32767,%d2
	moveq #1,%d5
	moveq #2,%d4
	moveq #2,%d3
	jra .L1265
.L1218:
	cmp.w %a0,%d1
	jhi .L1271
	sub.w %d1,%d0
	moveq #4,%d4
	moveq #4,%d3
	jra .L1247
.L1219:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #2,%d5
	moveq #4,%d4
	moveq #4,%d3
	jra .L1265
.L1220:
	cmp.w %a0,%d1
	jhi .L1272
	sub.w %d1,%d0
	moveq #8,%d4
	moveq #8,%d3
	jra .L1247
.L1221:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #4,%d5
	moveq #8,%d4
	moveq #8,%d3
	jra .L1265
.L1222:
	cmp.w %a0,%d1
	jhi .L1273
	sub.w %d1,%d0
	moveq #16,%d4
	moveq #16,%d3
	jra .L1247
.L1223:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #8,%d5
	moveq #16,%d4
	moveq #16,%d3
	jra .L1265
.L1224:
	cmp.w %a0,%d1
	jhi .L1274
	sub.w %d1,%d0
	moveq #32,%d4
	moveq #32,%d3
	jra .L1247
.L1225:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #16,%d5
	moveq #32,%d4
	moveq #32,%d3
	jra .L1265
.L1226:
	cmp.w %a0,%d1
	jhi .L1275
	sub.w %d1,%d0
	moveq #64,%d4
	moveq #64,%d3
	jra .L1247
.L1227:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #32,%d5
	moveq #64,%d4
	moveq #64,%d3
	jra .L1265
.L1228:
	cmp.w %a0,%d1
	jhi .L1276
	sub.w %d1,%d0
	move.w #128,%d4
	move.w %d4,%d3
	jra .L1247
.L1229:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #64,%d5
	move.w #128,%d4
	move.w %d4,%d3
	jra .L1265
.L1231:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #128,%d5
	move.w #256,%d4
	move.w %d4,%d3
	jra .L1265
.L1266:
	moveq #1,%d3
	clr.w %d0
	jra .L1245
.L1233:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #256,%d5
	move.w #512,%d4
	move.w %d4,%d3
	jra .L1265
.L1270:
	moveq #2,%d4
.L1264:
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1235:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #512,%d5
	move.w #1024,%d4
	move.w %d4,%d3
	jra .L1265
.L1271:
	moveq #4,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1237:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #1024,%d5
	move.w #2048,%d4
	move.w %d4,%d3
	jra .L1265
.L1272:
	moveq #8,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1239:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #2048,%d5
	move.w #4096,%d4
	move.w %d4,%d3
	jra .L1265
.L1241:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #4096,%d5
	move.w #8192,%d4
	move.w %d4,%d3
	jra .L1265
.L1273:
	moveq #16,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1243:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #8192,%d5
	move.w #16384,%d4
	move.w %d4,%d3
	jra .L1265
.L1274:
	moveq #32,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1275:
	moveq #64,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1244:
	move.w #-32768,%d1
	move.w %d1,%d4
	tst.w %d0
	jge .L1264
	move.w %d1,%d3
	clr.w %d0
	jra .L1247
.L1276:
	move.w #128,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1230:
	cmp.w %a0,%d1
	jhi .L1277
	sub.w %d1,%d0
	move.w #256,%d4
	move.w %d4,%d3
	jra .L1247
.L1277:
	move.w #256,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1240:
	cmp.w %a0,%d1
	jhi .L1282
	sub.w %d1,%d0
	move.w #8192,%d4
	move.w %d4,%d3
	jra .L1247
.L1234:
	cmp.w %a0,%d1
	jhi .L1279
	sub.w %d1,%d0
	move.w #1024,%d4
	move.w %d4,%d3
	jra .L1247
.L1282:
	move.w #8192,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1279:
	move.w #1024,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1278:
	move.w #512,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1238:
	cmp.w %a0,%d1
	jhi .L1281
	sub.w %d1,%d0
	move.w #4096,%d4
	move.w %d4,%d3
	jra .L1247
.L1236:
	cmp.w %a0,%d1
	jhi .L1280
	sub.w %d1,%d0
	move.w #2048,%d4
	move.w %d4,%d3
	jra .L1247
.L1242:
	cmp.w %a0,%d1
	jhi .L1283
	sub.w %d1,%d0
	move.w #16384,%d4
	move.w %d4,%d3
	jra .L1247
.L1281:
	move.w #4096,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1280:
	move.w #2048,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
.L1283:
	move.w #16384,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1265
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	moveq #1,%d2
	cmp.l %a0,%d1
	jcc .L1331
	moveq #32,%d0
	moveq #1,%d2
.L1330:
	tst.l %d1
	jlt .L1331
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1332
	subq.l #1,%d0
	jne .L1330
	tst.l 16(%sp)
	jne .L1347
.L1329:
	move.l (%sp)+,%d2
	rts
.L1332:
	tst.l %d2
	jeq .L1339
.L1331:
	moveq #0,%d0
.L1336:
	cmp.l %a0,%d1
	jhi .L1335
	sub.l %d1,%a0
	or.l %d2,%d0
.L1335:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1336
	tst.l 16(%sp)
	jeq .L1329
.L1347:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1339:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1329
	jra .L1347
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
	jeq .L1349
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	moveq #0,%d1
.L1351:
	movem.l (%sp)+,#28
	rts
.L1349:
	move.l %d3,%d1
	tst.l %d2
	jeq .L1351
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
	jeq .L1356
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
	movem.l (%sp)+,#28
	rts
.L1356:
	tst.l %d2
	jeq .L1359
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1359:
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
	move.l 12(%sp),%d2
	cmp.l #65535,%d2
	sls %d1
	ext.w %d1
	ext.l %d1
	neg.l %d1
	lsl.l #4,%d1
	moveq #16,%d0
	sub.l %d1,%d0
	lsr.l %d0,%d2
	move.l %d2,%d0
	and.l #65280,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	lsl.l #3,%d0
	moveq #8,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d2
	add.l %d0,%d1
	moveq #15,%d0
	not.b %d0
	and.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	add.l %d0,%d0
	add.l %d0,%d0
	moveq #4,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d2
	add.l %d0,%d1
	moveq #12,%d0
	and.l %d2,%d0
	seq %d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,%d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	moveq #2,%d0
	sub.l %a0,%d0
	lsr.l %d0,%d2
	btst #1,%d2
	jne .L1367
	moveq #2,%d0
	sub.l %d2,%d0
	add.l %d1,%a0
	add.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1367:
	moveq #0,%d0
	add.l %d1,%a0
	add.l %a0,%d0
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
	jgt .L1375
	jlt .L1376
	cmp.l %a1,%a0
	jhi .L1375
	jcs .L1376
	moveq #1,%d0
	rts
.L1375:
	moveq #0,%d0
	rts
.L1376:
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
	jgt .L1383
	jlt .L1382
	cmp.l %d0,%a1
	jhi .L1383
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1383:
	moveq #-1,%d0
	rts
.L1382:
	moveq #1,%d0
	rts
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d2
	tst.w %d2
	seq %d1
	ext.w %d1
	ext.l %d1
	neg.l %d1
	lsl.l #4,%d1
	lsr.l %d1,%d2
	tst.b %d2
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	lsl.l #3,%d0
	lsr.l %d0,%d2
	add.l %d0,%d1
	moveq #15,%d0
	and.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	add.l %d0,%d0
	add.l %d0,%d0
	lsr.l %d0,%d2
	add.l %d0,%d1
	moveq #3,%d3
	and.l %d2,%d3
	seq %d3
	ext.w %d3
	ext.l %d3
	neg.l %d3
	add.l %d3,%d3
	lsr.l %d3,%d2
	moveq #3,%d0
	and.l %d0,%d2
	move.l %d2,%d0
	not.l %d0
	moveq #1,%d4
	and.l %d4,%d0
	lsr.l #1,%d2
	moveq #2,%d4
	sub.l %d2,%d4
	mulu.w %d4,%d0
	add.l %d1,%d3
	add.l %d3,%d0
	movem.l (%sp)+,#28
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
	jeq .L1389
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	moveq #0,%d0
	movem.l (%sp)+,#28
	rts
.L1389:
	move.l %d1,%d0
	tst.l %d2
	jeq .L1392
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1392:
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
	moveq #0,%d6
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
	movem.l #16160,-(%sp)
	move.l 36(%sp),%d3
	move.l 44(%sp),%d6
	move.w %d3,%d1
	mulu.w %d6,%d1
	move.l %d1,%d0
	clr.w %d0
	swap %d0
	move.l %d3,%d4
	clr.w %d4
	swap %d4
	move.w %d6,%d2
	mulu.w %d4,%d2
	add.l %d0,%d2
	moveq #0,%d5
	move.w %d2,%d5
	move.l %d6,%d7
	clr.w %d7
	swap %d7
	move.w %d3,%d0
	mulu.w %d7,%d0
	add.l %d5,%d0
	move.w %d1,%d5
	move.l %d0,%d1
	swap %d1
	clr.w %d1
	add.l %d1,%d5
	clr.w %d2
	swap %d2
	mulu.w %d7,%d4
	add.l %d4,%d2
	clr.w %d0
	swap %d0
	add.l %d0,%d2
	lea __mulsi3,%a2
	move.l 40(%sp),-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d2
	move.l 32(%sp),-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d2,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#1276
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
	moveq #0,%d1
	move.w 4(%sp),%d1
	move.l 4(%sp),%d0
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
	moveq #127,%d1
	and.l %d1,%d0
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
	subq.l #8,%sp
	movem.l #16190,-(%sp)
	move.l 56(%sp),%a2
	move.l 60(%sp),%a3
	move.l 64(%sp),%a6
	move.l %a6,%d0
	move.l %a6,%a4
	move.l #1072693248,%d6
	clr.l %d7
	btst #0,%d0
	jeq .L1410
	lea __muldf3,%a5
.L1412:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a5)
	lea (16,%sp),%sp
	move.l %d0,%d4
	move.l %d1,%d5
	move.l %d4,%d6
	move.l %d5,%d7
.L1410:
	move.l %a4,%d0
	jpl .L1419
	addq.l #1,%d0
.L1419:
	asr.l #1,%d0
	move.l %d0,%a4
	jeq .L1411
	lea __muldf3,%a5
.L1413:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
	move.l %d2,%a2
	move.l %d3,%a3
	move.l %a4,%d0
	btst #0,%d0
	jne .L1412
	move.l %a4,%d0
	jpl .L1420
	addq.l #1,%d0
.L1420:
	asr.l #1,%d0
	move.l %d0,%a4
	jra .L1413
.L1411:
	cmp.w #0,%a6
	jlt .L1418
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31996
	addq.l #8,%sp
	rts
.L1418:
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
	move.l %d0,44(%sp)
	move.l %d1,48(%sp)
	move.l 44(%sp),%d6
	move.l 48(%sp),%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31996
	addq.l #8,%sp
	rts
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
	movem.l #15392,-(%sp)
	move.l 24(%sp),%d3
	move.l 28(%sp),%d5
	move.l %d5,%d2
	move.l #0x3f800000,%d4
	btst #0,%d5
	jeq .L1422
	lea __mulsf3,%a2
.L1424:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L1422:
	move.l %d2,%d2
	jpl .L1431
	addq.l #1,%d2
.L1431:
	asr.l #1,%d2
	jeq .L1423
	lea __mulsf3,%a2
.L1425:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L1424
	move.l %d2,%d2
	jpl .L1432
	addq.l #1,%d2
.L1432:
	asr.l #1,%d2
	jra .L1425
.L1423:
	tst.l %d5
	jlt .L1430
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
.L1430:
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	move.l %d0,%d4
	move.l %d4,%d0
	movem.l (%sp)+,#1084
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
	jhi .L1437
	jcs .L1438
	cmp.l %a1,%a0
	jhi .L1437
	jcs .L1438
	moveq #1,%d0
	rts
.L1437:
	moveq #0,%d0
	rts
.L1438:
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
	jhi .L1445
	jcs .L1444
	cmp.l %d0,%a1
	jhi .L1445
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1445:
	moveq #-1,%d0
	rts
.L1444:
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
	.globl	__divsf3
	.globl	__divdf3
	.globl	__fixsfsi
	.globl	__umodsi3
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__floatunsisf
	.globl	__floatunsidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__mulxf3
	.globl	__nexf2
	.globl	__addxf3
	.globl	__muldf3
	.globl	__nedf2
	.globl	__adddf3
	.globl	__mulsf3
	.globl	__nesf2
	.globl	__addsf3
	.globl	__extenddfxf2
	.globl	__floatsidf
	.globl	__moddi3
	.globl	__divdi3
	.globl	__modsi3
	.globl	__divsi3
	.globl	__mulsi3
	.globl	__muldi3
	.globl	__lexf2
	.globl	__lesf2
	.globl	__ledf2
	.globl	__gexf2
	.globl	__ltxf2
	.globl	__gesf2
	.globl	__ltsf2
	.globl	__gedf2
	.globl	__ltdf2
	.globl	__subsf3
	.globl	__gtsf2
	.globl	__subdf3
	.globl	__gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
