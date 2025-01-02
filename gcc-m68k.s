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
	movem.l #16128,-(%sp)
	move.l 28(%sp),%d2
	move.l 32(%sp),%d3
	move.l 36(%sp),%d4
	move.l 40(%sp),%d5
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L225
	tst.l %d0
	jeq .L230
.L233:
	move.l %d4,%d1
	move.l %d5,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
.L225:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L233
.L230:
	move.l %d2,%d1
	move.l %d3,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L237
	tst.l %d0
	jeq .L242
	move.l %d3,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L237:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L247
.L242:
	move.l %d2,%d0
.L248:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L247:
	move.l %d3,%d2
	move.l %d2,%d0
	jra .L248
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
	subq.l #4,%sp
	movem.l #15360,-(%sp)
	move.l %a1,%a0
	move.l 24(%sp),%d3
	move.l 28(%sp),%d4
	move.l 32(%sp),%d5
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l 36(%sp),%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L250
	tst.l %d0
	jeq .L252
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
.L252:
	move.l %d3,(%a0)
	move.l %d4,4(%a0)
	move.l %d5,8(%a0)
	movem.l (%sp)+,#60
	addq.l #4,%sp
	rts
.L250:
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a1,40(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	move.l 16(%sp),%a0
	tst.l %d0
	jlt .L263
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L264:
	move.l %d3,(%a0)
	move.l %d4,4(%a0)
	move.l %d5,8(%a0)
	movem.l (%sp)+,#60
	addq.l #4,%sp
	rts
.L263:
	move.l 36(%sp),%d0
	move.l 40(%sp),%d1
	move.l 44(%sp),%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
	jra .L264
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	movem.l #16128,-(%sp)
	move.l 28(%sp),%d4
	move.l 32(%sp),%d5
	move.l 36(%sp),%d2
	move.l 40(%sp),%d3
	move.l %d4,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L266
	tst.l %d0
	jeq .L271
.L274:
	move.l %d4,%d1
	move.l %d5,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
.L266:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L274
.L271:
	move.l %d2,%d1
	move.l %d3,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	move.l 16(%sp),%d2
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L278
	tst.l %d0
	jeq .L283
	move.l %d3,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L278:
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L288
.L283:
	move.l %d2,%d0
.L289:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L288:
	move.l %d3,%d2
	move.l %d2,%d0
	jra .L289
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
	subq.l #4,%sp
	movem.l #15360,-(%sp)
	move.l %a1,%a0
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	move.l 24(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L291
	tst.l %d0
	jeq .L293
	move.l 24(%sp),%d3
	move.l 28(%sp),%d4
	move.l 32(%sp),%d5
.L293:
	move.l %d3,(%a0)
	move.l %d4,4(%a0)
	move.l %d5,8(%a0)
	movem.l (%sp)+,#60
	addq.l #4,%sp
	rts
.L291:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l %a1,40(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	move.l 16(%sp),%a0
	tst.l %d0
	jlt .L304
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L305:
	move.l %d3,(%a0)
	move.l %d4,4(%a0)
	move.l %d5,8(%a0)
	movem.l (%sp)+,#60
	addq.l #4,%sp
	rts
.L304:
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
	jra .L305
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	lea (s.0),%a0
	jeq .L307
	lea digits,%a1
.L308:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L308
.L307:
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
	jeq .L325
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L317
	move.l %a0,4(%a1)
.L317:
	rts
.L325:
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
	jeq .L327
	move.l 4(%a0),4(%a1)
.L327:
	move.l 4(%a0),%a0
	cmp.w #0,%a0
	jeq .L326
	move.l %a1,(%a0)
.L326:
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
	jeq .L338
	move.l 40(%sp),%d2
	moveq #0,%d3
.L340:
	move.l %d2,%d6
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L337
	addq.l #1,%d3
	add.l %d5,%d2
	cmp.l %d4,%d3
	jne .L340
.L338:
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
	jeq .L337
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L337:
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
	jeq .L355
	move.l 36(%sp),%d2
	moveq #0,%d3
.L357:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L354
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d5,%d3
	jne .L357
.L355:
	moveq #0,%d4
.L354:
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
	jmi .L371
	rts
.L371:
	neg.l %d0
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a0
.L373:
	move.l %a0,%a3
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L373
	move.b %d0,%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-9,%a1),%a2
	moveq #4,%d1
	cmp.l %a2,%d1
	jcc .L373
	cmp.b #43,%d0
	jeq .L375
	cmp.b #45,%d0
	jeq .L376
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcs .L384
	move.l %a3,%a2
	sub.l %a3,%a3
.L378:
	moveq #0,%d0
.L381:
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
	jcc .L381
	cmp.w #0,%a3
	jne .L372
	move.l %a0,%d0
	sub.l %d1,%d0
.L372:
	movem.l (%sp)+,#3084
	rts
.L376:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L384
	move.w #1,%a3
	moveq #0,%d0
	jra .L381
.L375:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	sub.l %a3,%a3
	moveq #9,%d3
	cmp.l %a0,%d3
	jcc .L378
.L384:
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
.L395:
	move.l %a0,%a3
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L395
	move.b %d0,%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-9,%a1),%a2
	moveq #4,%d1
	cmp.l %a2,%d1
	jcc .L395
	cmp.b #43,%d0
	jeq .L397
	cmp.b #45,%d0
	jeq .L415
	lea (-48,%a1),%a1
	moveq #9,%d0
	move.l %a3,%a2
	cmp.l %a1,%d0
	jcs .L405
	sub.l %a3,%a3
.L399:
	moveq #0,%d0
.L402:
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
	jcc .L402
	cmp.w #0,%a3
	jne .L394
	move.l %a0,%d0
	sub.l %d1,%d0
.L394:
	movem.l (%sp)+,#3084
	rts
.L415:
	move.l %a0,%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	move.w #1,%a3
	moveq #9,%d3
	cmp.l %a0,%d3
	jcc .L399
.L405:
	moveq #0,%d0
	movem.l (%sp)+,#3084
	rts
.L397:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L405
	sub.l %a3,%a3
	jra .L399
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%a0
.L417:
	move.l %a0,%a2
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L417
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-9,%a1),%a3
	moveq #4,%d2
	cmp.l %a3,%d2
	jcc .L417
	cmp.b #43,%d0
	jeq .L419
	cmp.b #45,%d0
	jeq .L420
	lea (-48,%a1),%a1
	moveq #9,%d2
	cmp.l %a1,%d2
	jcs .L428
	move.l %a2,%a1
	sub.l %a2,%a2
.L422:
	clr.l %d4
	clr.l %d5
.L425:
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
	jcc .L425
	cmp.w #0,%a2
	jne .L416
	move.l %d6,%d4
	move.l %d7,%d5
	sub.l %d3,%d5
	subx.l %d2,%d4
.L416:
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#3324
	rts
.L420:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcs .L428
	move.w #1,%a2
	clr.l %d4
	clr.l %d5
	jra .L425
.L419:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	sub.l %a2,%a2
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L422
.L428:
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
	jeq .L439
	lea __mulsi3,%a3
.L442:
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
	jlt .L443
	jeq .L438
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	sub.l %d7,%d2
	jne .L442
.L439:
	moveq #0,%d3
.L438:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
.L443:
	move.l %d7,%d2
	jne .L442
	jra .L439
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
	jeq .L458
.L454:
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
	jeq .L453
	jle .L456
	move.l %d2,%d5
	add.l %d4,%d5
	subq.l #1,%d3
	asr.l #1,%d3
	jne .L454
.L458:
	moveq #0,%d2
.L453:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l (%sp)+,#7420
	rts
.L456:
	cmp.w #0,%a4
	jeq .L458
	move.l %a4,%d3
	jra .L454
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
	jlt .L475
	rts
.L475:
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
	jmi .L482
	rts
.L482:
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
	jlt .L489
	rts
.L489:
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
	jeq .L496
.L493:
	cmp.l %d1,%d0
	jeq .L492
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L493
.L496:
	sub.l %a0,%a0
.L492:
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
	jne .L502
.L501:
	tst.l %d0
	jeq .L502
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L501
.L502:
	cmp.l %d0,%d1
	jgt .L505
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L505:
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
.L510:
	move.l (%a2)+,%d0
	move.l %d0,(%a1)+
	jne .L510
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
	jeq .L517
	move.l %a1,%a0
.L516:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L516
	sub.l %a1,%a0
	move.l %a0,%d0
	asr.l #2,%d0
	rts
.L517:
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
	jeq .L528
	move.l 12(%sp),%a0
	move.l 16(%sp),%d0
.L523:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L524
	cmp.w #0,%a1
	jeq .L524
	subq.l #1,%d1
	jne .L523
.L528:
	moveq #0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L524:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L531
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L531:
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
	jeq .L537
	move.l 4(%sp),%a1
.L534:
	move.l %a1,%a0
	cmp.l (%a1)+,%d1
	jeq .L532
	subq.l #1,%d0
	jne .L534
.L537:
	sub.l %a0,%a0
.L532:
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
	jeq .L547
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L542:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #4,%d1
	addq.l #4,%d0
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L551
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L542
.L547:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L551:
	move.l (%a2),%d0
	move.l (%a1),%d1
	cmp.l %d0,%d1
	jgt .L552
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L552:
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
	jeq .L554
	add.l %d0,%d0
	add.l %d0,%d0
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L554:
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
	jeq .L568
	move.l %a0,%a3
	move.l %d1,%a2
	add.l %d1,%a2
	add.l %a2,%a2
	move.l %a0,%d0
	sub.l %a1,%d0
	cmp.l %d0,%a2
	jls .L576
	tst.l %d1
	jeq .L568
	lea (%a1,%a2.l),%a3
	lea (%a0,%a2.l),%a2
.L565:
	move.l -(%a3),-(%a2)
	cmp.l %a1,%a3
	jne .L565
.L568:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L576:
	move.l %d1,%d0
	subq.l #1,%d0
	tst.l %d1
	jeq .L568
.L566:
	move.l (%a1)+,(%a3)+
	dbra %d0,.L566
	clr.w %d0
	subq.l #1,%d0
	jcc .L566
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
	jeq .L578
	move.l %a0,%a1
.L579:
	move.l %d1,(%a1)+
	dbra %d0,.L579
	clr.w %d0
	subq.l #1,%d0
	jcc .L579
.L578:
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
	jls .L587
	move.l %d0,%a0
	add.l %d1,%a0
	tst.l %d1
	jeq .L586
	lea -1(%a1,%d1.l),%a1
.L589:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
	cmp.l %d0,%a0
	jne .L589
.L586:
	movem.l (%sp)+,#1036
	rts
.L587:
	cmp.l %d0,%a1
	jeq .L586
	tst.l %d1
	jeq .L586
	move.l %d1,%a0
	subq.l #1,%a0
	moveq #6,%d2
	cmp.l %a0,%d2
	jcc .L621
	move.l %a1,%d2
	or.l %d0,%d2
	moveq #3,%d3
	and.l %d3,%d2
	move.l %d0,%a0
	addq.l #1,%a0
	jne .L590
	move.l %a1,%d2
	sub.l %a0,%d2
	moveq #2,%d3
	cmp.l %d2,%d3
	jcc .L590
	move.l %d0,%a0
	moveq #-4,%d3
	and.l %d1,%d3
	move.l %a1,%d2
	add.l %d3,%d2
.L591:
	move.l (%a0)+,(%a1)+
	cmp.l %a1,%d2
	jne .L591
	add.l %d3,%d0
	move.l %d1,%a0
	sub.l %d3,%a0
	cmp.l %d1,%d3
	jeq .L586
	move.l %d0,%a2
	move.b (%a2),(%a1)
	moveq #1,%d1
	cmp.l %a0,%d1
	jeq .L586
	move.b 1(%a2),1(%a1)
	moveq #2,%d2
	cmp.l %a0,%d2
	jeq .L586
	move.b 2(%a2),2(%a1)
	movem.l (%sp)+,#1036
	rts
.L621:
	move.l %d0,%a0
	addq.l #1,%a0
.L590:
	add.l %d1,%d0
.L594:
	move.b -1(%a0),(%a1)+
	cmp.l %a0,%d0
	jeq .L586
	addq.l #1,%a0
	jra .L594
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
	jlt .L623
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
	jlt .L625
.L629:
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L623:
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
	jge .L629
.L625:
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
	jlt .L631
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
	jlt .L633
.L637:
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L631:
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
	jge .L637
.L633:
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
.L663:
	move.l %d2,%d1
	lsr.l %d0,%d1
	addq.l #1,%d0
	btst #0,%d1
	jne .L660
	moveq #32,%d1
	cmp.l %d0,%d1
	jne .L663
	moveq #0,%d0
.L660:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L670
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L667
	moveq #1,%d0
.L669:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L669
.L667:
	rts
.L670:
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
	jeq .L684
	tst.l %d2
	jlt .L700
	move.l #0x40000000,%d3
.L686:
	btst #0,%d2
	jeq .L687
	lea __mulsf3,%a2
.L688:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L687:
	move.l %d2,%d2
	jpl .L701
	addq.l #1,%d2
.L701:
	asr.l #1,%d2
	jeq .L684
	lea __mulsf3,%a2
.L689:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L688
	move.l %d2,%d2
	jpl .L702
	addq.l #1,%d2
.L702:
	asr.l #1,%d2
	jra .L689
.L684:
	move.l %d4,%d0
	movem.l (%sp)+,#1052
	rts
.L700:
	move.l #0x3f000000,%d3
	jra .L686
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
	jeq .L704
	tst.l %d2
	jlt .L720
	move.l #1073741824,%a4
	sub.l %a5,%a5
.L706:
	btst #0,%d2
	jeq .L707
	lea __muldf3,%a6
.L708:
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
.L707:
	move.l %d2,%d2
	jpl .L721
	addq.l #1,%d2
.L721:
	asr.l #1,%d2
	jeq .L704
	lea __muldf3,%a6
.L709:
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
	jne .L708
	move.l %d2,%d2
	jpl .L722
	addq.l #1,%d2
.L722:
	asr.l #1,%d2
	jra .L709
.L704:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31988
	rts
.L720:
	move.l #1071644672,%a4
	sub.l %a5,%a5
	jra .L706
	.size	ldexp, .-ldexp
	.section	.rodata
	.align	2
.LC0:
	.long	1073741824
	.long	-2147483648
	.long	0
	.align	2
.LC1:
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
	jeq .L724
	tst.l %d2
	jlt .L740
	move.l .LC0,%d3
	move.l .LC0+4,%d4
	move.l .LC0+8,%d5
.L726:
	btst #0,%d2
	jeq .L727
	lea __mulxf3,%a2
.L728:
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
.L727:
	move.l %d2,%d2
	jpl .L741
	addq.l #1,%d2
.L741:
	asr.l #1,%d2
	jeq .L724
	lea __mulxf3,%a2
.L729:
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
	jne .L728
	move.l %d2,%d2
	jpl .L742
	addq.l #1,%d2
.L742:
	asr.l #1,%d2
	jra .L729
.L724:
	move.l %a4,(%a3)
	move.l %a5,4(%a3)
	move.l %a6,8(%a3)
	move.l %a3,%a0
	movem.l (%sp)+,#31804
	lea (24,%sp),%sp
	rts
.L740:
	move.l .LC1,%d3
	move.l .LC1+4,%d4
	move.l .LC1+8,%d5
	jra .L726
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	movem.l #12344,-(%sp)
	move.l 24(%sp),%a0
	move.l 28(%sp),%a3
	move.l 32(%sp),%d1
	jeq .L744
	move.l %d1,%d0
	subq.l #1,%d0
	moveq #3,%d2
	cmp.l %d0,%d2
	jcc .L745
	move.l %a0,%d0
	move.l %a3,%d3
	or.l %d3,%d0
	and.l %d2,%d0
	jne .L745
	move.l %a3,%a2
	moveq #-4,%d2
	and.l %d1,%d2
	lea (%a0,%d2.l),%a4
	move.l %a0,%a1
.L746:
	move.l (%a2)+,%d0
	move.l (%a1),%d3
	eor.l %d3,%d0
	move.l %d0,(%a1)+
	cmp.l %a4,%a1
	jne .L746
	add.l %d2,%a3
	move.l %d1,%d0
	sub.l %d2,%d0
	cmp.l %d2,%d1
	jeq .L744
	move.b (%a3),%d1
	eor.b %d1,(%a4)
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L744
	move.b 1(%a3),%d3
	eor.b %d3,1(%a4)
	subq.l #2,%d0
	jeq .L744
	move.b 2(%a3),%d2
	eor.b %d2,2(%a4)
.L744:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L745:
	add.l %a3,%d1
	move.l %a0,%a1
.L748:
	addq.l #1,%a1
	move.b (%a3)+,%d3
	eor.b %d3,-1(%a1)
	cmp.l %d1,%a3
	jeq .L744
	addq.l #1,%a1
	move.b (%a3)+,%d3
	eor.b %d3,-1(%a1)
	cmp.l %d1,%a3
	jne .L748
	jra .L744
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
	jeq .L765
.L766:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L766
.L765:
	tst.l %d0
	jeq .L767
	move.l 12(%sp),%a2
.L768:
	move.b (%a2)+,%d1
	move.b %d1,(%a1)+
	jeq .L770
	subq.l #1,%d0
	jne .L768
.L767:
	clr.b (%a1)
.L770:
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
	jeq .L779
	tst.b (%a0,%d0.l)
	jne .L782
.L779:
	rts
.L782:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jeq .L779
	tst.b (%a0,%d0.l)
	jeq .L779
	jra .L782
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d2
	move.b (%a0),%d1
	jeq .L793
.L789:
	move.l %d2,%a1
.L792:
	move.b (%a1)+,%d0
	jeq .L797
	cmp.b %d0,%d1
	jne .L792
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L797:
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L789
.L793:
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
.L800:
	move.l %a2,%d2
	move.b (%a2)+,%d1
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %d3,%a1
	jeq .L804
	tst.b %d1
	jne .L800
.L805:
	move.l %a0,%d0
	movem.l (%sp)+,#1036
	rts
.L804:
	move.l %d2,%a0
	tst.b %d1
	jne .L800
	jra .L805
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #15408,-(%sp)
	move.l 28(%sp),%d1
	move.l 32(%sp),%a3
	move.b (%a3),%d3
	jeq .L816
	move.l %a3,%a0
.L808:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L808
	move.l %a0,%d5
	sub.l %a3,%d5
	cmp.l %a0,%a3
	jeq .L816
	subq.l #1,%d5
.L814:
	move.l %d1,%a0
	move.b (%a0),%d0
	addq.l #1,%d1
	cmp.b %d0,%d3
	jeq .L813
	tst.b %d0
	jne .L814
	sub.l %a0,%a0
.L806:
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
.L813:
	move.b %d3,%d0
	move.l %a3,%d2
	move.l %a0,%d4
	add.l %d5,%d4
	move.l %a0,%a1
.L810:
	move.l %d2,%a2
	move.b (%a2),%d1
	addq.l #1,%d2
	tst.b %d1
	jeq .L811
	cmp.l %a1,%d4
	jeq .L811
	cmp.b %d1,%d0
	jne .L811
	addq.l #1,%a1
	move.b (%a1),%d0
	jne .L810
	move.l %d2,%a2
.L811:
	cmp.b (%a2),%d0
	jeq .L806
	move.l %a0,%d1
	addq.l #1,%d1
	jra .L814
.L816:
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
	jlt .L837
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L829
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L828
.L829:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
.L837:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L829
.L828:
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
	jeq .L838
	cmp.l 28(%sp),%d1
	jhi .L849
	move.l 28(%sp),%d0
	sub.l %d1,%d0
	add.l %a0,%d0
	cmp.l %a0,%d0
	jcs .L849
	move.l 32(%sp),%a4
	move.b (%a4)+,%d3
	move.l %d1,%d2
	subq.l #1,%d2
.L844:
	move.l %a0,%a2
	cmp.b (%a2)+,%d3
	jeq .L856
	move.l %a2,%a0
.L840:
	cmp.l %d0,%a0
	jls .L844
.L849:
	sub.l %a0,%a0
.L838:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L856:
	tst.l %d2
	jeq .L838
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
.L841:
	cmpm.b (%a3)+,(%a1)+
	jne .L857
.L842:
	cmp.l %a1,%d1
	jeq .L838
	cmpm.b (%a3)+,(%a1)+
	jeq .L842
.L857:
	cmp.l %d0,%a2
	jhi .L849
	move.l %a2,%a0
	cmp.b (%a0)+,%d3
	jne .L840
	move.l %a2,%d1
	move.l %a0,%a2
	move.l %d1,%a0
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
	jra .L841
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	jeq .L859
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L859:
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
	jlt .L890
	lea __gedf2,%a4
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L891
	moveq #0,%d7
	moveq #0,%d6
	lea __muldf3,%a5
.L874:
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
	jge .L874
.L875:
	move.l 72(%sp),%a0
	move.l %d6,(%a0)
	move.l %d2,%a1
	tst.l %d7
	jeq .L881
	add.l #-2147483648,%a1
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (16,%sp),%sp
	rts
.L891:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L871
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L880
.L871:
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
.L890:
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
	jgt .L892
	move.l %d4,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	moveq #1,%d7
	lea __gedf2,%a4
	moveq #0,%d6
	lea __muldf3,%a5
	jra .L874
.L881:
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (16,%sp),%sp
	rts
.L892:
	clr.l -(%sp)
	move.l #-1075838976,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L871
	moveq #1,%d7
	move.l %d4,52(%sp)
	move.l %d5,56(%sp)
	move.l 52(%sp),%d2
	move.l 56(%sp),%d3
	moveq #0,%d6
	lea __adddf3,%a3
.L876:
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
	jge .L875
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
	jlt .L876
	jra .L875
.L880:
	move.l %d2,%d4
	move.l %d3,%d5
	moveq #0,%d7
	move.l %d4,52(%sp)
	move.l %d5,56(%sp)
	move.l 52(%sp),%d2
	move.l 56(%sp),%d3
	moveq #0,%d6
	lea __adddf3,%a3
	jra .L876
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
	jeq .L893
.L895:
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
	jne .L895
.L893:
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
	jls .L902
	moveq #32,%d0
	moveq #1,%d2
.L901:
	tst.l %d1
	jlt .L902
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L903
	subq.l #1,%d0
	jne .L901
	tst.l 16(%sp)
	jne .L918
.L900:
	move.l (%sp)+,%d2
	rts
.L903:
	tst.l %d2
	jeq .L910
.L902:
	moveq #0,%d0
.L907:
	cmp.l %a0,%d1
	jhi .L906
	sub.l %d1,%a0
	or.l %d2,%d0
.L906:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L907
	tst.l 16(%sp)
	jeq .L900
.L918:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L910:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L900
	jra .L918
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
	jeq .L921
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
	move.l (%sp)+,%d2
	rts
.L921:
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
	jeq .L926
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
	movem.l (%sp)+,#252
	rts
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
	moveq #0,%d0
	tst.l %d2
	jeq .L929
.L931:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L931
.L929:
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
	jhi .L937
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L968
.L937:
	tst.l %d0
	jeq .L940
	move.l %a3,%a0
	move.l %a2,%a1
	lsl.l #3,%d0
	add.l %a3,%d0
.L941:
	move.l (%a0)+,%d3
	move.l (%a0)+,%d4
	move.l %d3,(%a1)+
	move.l %d4,(%a1)+
	cmp.l %a0,%d0
	jne .L941
	cmp.l %d2,%d1
	jcc .L936
	move.l %d2,%d4
	sub.l %d1,%d4
	move.l %d4,%d0
	subq.l #1,%d0
	moveq #6,%d5
	cmp.l %d0,%d5
	jcc .L963
	lea (%a2,%d1.l),%a0
	move.l %a0,%d3
	move.l %a3,%d0
	add.l %d1,%d0
	lea 1(%a3,%d1.l),%a4
	move.l %a0,%a1
	sub.l %a4,%a1
	moveq #2,%d6
	cmp.l %a1,%d6
	jcc .L943
	move.l %a0,%d5
	or.l %d0,%d5
	moveq #3,%d6
	and.l %d6,%d5
	jne .L943
	move.l %d0,%a1
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L944:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d0
	jne .L944
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L936
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d0
	addq.l #1,%d0
	cmp.l %d2,%d0
	jcc .L936
	move.b (%a3,%d0.l),(%a2,%d0.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L936
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L936:
	movem.l (%sp)+,#7292
	rts
.L968:
	add.l %d2,%a2
	tst.l %d2
	jeq .L936
.L948:
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jeq .L936
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jne .L948
	jra .L936
.L940:
	tst.l %d2
	jeq .L936
.L963:
	move.l %a2,%d3
	add.l %d1,%d3
	move.l %a3,%d0
	add.l %d1,%d0
.L943:
	move.l %d0,%a1
	move.l %d3,%a0
	add.l %a3,%d2
.L946:
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jeq .L936
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jne .L946
	jra .L936
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
	jhi .L970
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L1000
.L970:
	tst.l %d3
	jeq .L973
	move.l %d3,%d0
	subq.l #1,%d0
	moveq #8,%d1
	cmp.l %d0,%d1
	jcc .L974
	move.l %a3,%d0
	move.l %a2,%d1
	or.l %d1,%d0
	moveq #3,%d1
	and.l %d1,%d0
	jne .L974
	move.l %a3,%d0
	addq.l #2,%d0
	cmp.l %a2,%d0
	jeq .L974
	move.l %d2,%d0
	lsr.l #2,%d0
	move.l %a3,%a1
	add.l %d0,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %a2,%d1
	move.l %a2,%a0
.L975:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d1
	jne .L975
	cmp.l %d3,%d0
	jeq .L973
	add.l %d0,%d0
	move.w (%a3,%d0.l),(%a2,%d0.l)
.L973:
	btst #0,%d2
	jeq .L969
	move.b -1(%a3,%d2.l),-1(%a2,%d2.l)
.L969:
	movem.l (%sp)+,#3084
	rts
.L1000:
	add.l %d2,%a2
	tst.l %d2
	jeq .L969
.L980:
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jeq .L969
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jne .L980
	jra .L969
.L974:
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d3,%d3
	move.l %d3,%d0
	add.l %a3,%d0
.L977:
	move.w (%a0)+,(%a1)+
	cmp.l %d0,%a0
	jeq .L973
	move.w (%a0)+,(%a1)+
	cmp.l %d0,%a0
	jne .L977
	jra .L973
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
	jhi .L1002
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L1033
.L1002:
	tst.l %d0
	jeq .L1005
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %d0,%d0
	add.l %a3,%d0
.L1006:
	move.l (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L1006
	cmp.l %d2,%d1
	jcc .L1001
	move.l %d2,%d4
	sub.l %d1,%d4
	move.l %d4,%d0
	subq.l #1,%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jcc .L1028
	lea (%a2,%d1.l),%a0
	move.l %a0,%d3
	move.l %a3,%d0
	add.l %d1,%d0
	lea 1(%a3,%d1.l),%a4
	move.l %a0,%a1
	sub.l %a4,%a1
	moveq #2,%d5
	cmp.l %a1,%d5
	jcc .L1008
	move.l %a0,%d5
	or.l %d0,%d5
	moveq #3,%d6
	and.l %d6,%d5
	jne .L1008
	move.l %d0,%a1
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L1009:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d0
	jne .L1009
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L1001
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d0
	addq.l #1,%d0
	cmp.l %d2,%d0
	jcc .L1001
	move.b (%a3,%d0.l),(%a2,%d0.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L1001
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L1001:
	movem.l (%sp)+,#7292
	rts
.L1033:
	add.l %d2,%a2
	tst.l %d2
	jeq .L1001
.L1013:
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jeq .L1001
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jne .L1013
	jra .L1001
.L1005:
	tst.l %d2
	jeq .L1001
.L1028:
	move.l %a2,%d3
	add.l %d1,%d3
	move.l %a3,%d0
	add.l %d1,%d0
.L1008:
	move.l %d0,%a1
	move.l %d3,%a0
	add.l %a3,%d2
.L1011:
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jeq .L1001
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jne .L1011
	jra .L1001
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
	jmi .L1049
	move.l %d1,%d0
	moveq #14,%d3
	asr.l %d3,%d0
	jne .L1046
	move.l %d1,%d0
	moveq #13,%d3
	asr.l %d3,%d0
	jne .L1050
	move.l %d1,%d0
	moveq #12,%d3
	asr.l %d3,%d0
	jne .L1051
	move.l %d1,%d0
	moveq #11,%d3
	asr.l %d3,%d0
	jne .L1052
	move.l %d1,%d0
	moveq #10,%d3
	asr.l %d3,%d0
	jne .L1053
	move.l %d1,%d0
	moveq #9,%d3
	asr.l %d3,%d0
	jne .L1054
	move.l %d1,%d0
	asr.l #8,%d0
	jne .L1055
	move.l %d1,%d0
	asr.l #7,%d0
	jne .L1056
	move.l %d1,%d0
	asr.l #6,%d0
	jne .L1057
	move.l %d1,%d0
	asr.l #5,%d0
	jne .L1058
	move.l %d1,%d0
	asr.l #4,%d0
	jne .L1059
	move.l %d1,%d0
	asr.l #3,%d0
	jne .L1060
	move.l %d1,%d0
	asr.l #2,%d0
	jne .L1061
	asr.l #1,%d1
	jne .L1062
	moveq #16,%d0
	tst.w %d2
	jne .L1067
.L1046:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1049:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1060:
	moveq #12,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1067:
	moveq #15,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1050:
	moveq #2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1051:
	moveq #3,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1052:
	moveq #4,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1053:
	moveq #5,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1054:
	moveq #6,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1055:
	moveq #7,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1056:
	moveq #8,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1057:
	moveq #9,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1058:
	moveq #10,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1059:
	moveq #11,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1061:
	moveq #13,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1062:
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
	jne .L1071
	btst #1,%d1
	jne .L1072
	btst #2,%d1
	jne .L1073
	btst #3,%d1
	jne .L1074
	btst #4,%d1
	jne .L1075
	btst #5,%d1
	jne .L1076
	btst #6,%d1
	jne .L1077
	tst.b %d1
	jmi .L1078
	btst #8,%d1
	jne .L1079
	btst #9,%d1
	jne .L1080
	btst #10,%d1
	jne .L1081
	btst #11,%d1
	jne .L1082
	btst #12,%d1
	jne .L1083
	btst #13,%d1
	jne .L1084
	btst #14,%d1
	jne .L1085
	moveq #16,%d0
	tst.w %d1
	jmi .L1090
	rts
.L1071:
	moveq #0,%d0
	rts
.L1072:
	moveq #1,%d0
	rts
.L1083:
	moveq #12,%d0
	rts
.L1090:
	moveq #15,%d0
	rts
.L1073:
	moveq #2,%d0
	rts
.L1074:
	moveq #3,%d0
	rts
.L1075:
	moveq #4,%d0
	rts
.L1076:
	moveq #5,%d0
	rts
.L1077:
	moveq #6,%d0
	rts
.L1078:
	moveq #7,%d0
	rts
.L1079:
	moveq #8,%d0
	rts
.L1080:
	moveq #9,%d0
	rts
.L1081:
	moveq #10,%d0
	rts
.L1082:
	moveq #11,%d0
	rts
.L1084:
	moveq #13,%d0
	rts
.L1085:
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
	jge .L1099
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1099:
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
	jeq .L1104
.L1106:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L1106
.L1104:
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
	jeq .L1111
	tst.l %d3
	jeq .L1111
.L1113:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L1113
.L1111:
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
	jcc .L1122
	moveq #32,%d0
	moveq #1,%d2
.L1121:
	tst.l %d1
	jlt .L1122
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1123
	subq.l #1,%d0
	jne .L1121
	tst.l 16(%sp)
	jne .L1138
.L1120:
	move.l (%sp)+,%d2
	rts
.L1123:
	tst.l %d2
	jeq .L1130
.L1122:
	moveq #0,%d0
.L1127:
	cmp.l %a0,%d1
	jhi .L1126
	sub.l %d1,%a0
	or.l %d2,%d0
.L1126:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1127
	tst.l 16(%sp)
	jeq .L1120
.L1138:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1130:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1120
	jra .L1138
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
	jlt .L1142
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L1145
	move.l %d2,%d0
.L1139:
	movem.l (%sp)+,#28
	rts
.L1145:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L1139
.L1142:
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
	jlt .L1149
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L1152
	move.l %d6,%d0
.L1146:
	movem.l (%sp)+,#124
	rts
.L1152:
	moveq #0,%d6
	move.l %d6,%d0
	jra .L1146
.L1149:
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
	jmi .L1173
	jeq .L1163
	sub.l %a0,%a0
	moveq #32,%d4
	moveq #0,%d0
.L1162:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L1161
	subq.b #1,%d4
	jne .L1162
.L1161:
	cmp.w #0,%a0
	jeq .L1157
	neg.l %d0
.L1157:
	movem.l (%sp)+,#28
	rts
.L1173:
	neg.l %d2
	move.w #1,%a0
	moveq #32,%d4
	moveq #0,%d0
	jra .L1162
.L1163:
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
	jlt .L1194
	moveq #1,%d0
	sub.l %a1,%a1
	tst.l %d1
	jlt .L1195
.L1176:
	move.l %d3,%a0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1178
	moveq #32,%d0
	moveq #1,%d2
.L1177:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1181
	subq.l #1,%d0
	jne .L1177
.L1181:
	moveq #0,%d0
	tst.l %d2
	jeq .L1179
.L1178:
	moveq #0,%d0
.L1183:
	cmp.l %a0,%d1
	jhi .L1182
	sub.l %d1,%a0
	or.l %d2,%d0
.L1182:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1183
.L1179:
	cmp.w #0,%a1
	jeq .L1174
	neg.l %d0
.L1174:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1195:
	neg.l %d1
	move.l %d0,%a1
	jra .L1176
.L1194:
	neg.l %d3
	moveq #0,%d0
	move.w #1,%a1
	tst.l %d1
	jge .L1176
	jra .L1195
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	jmi .L1216
	sub.l %a1,%a1
	move.l 16(%sp),%d1
	jmi .L1217
.L1198:
	move.l %d3,%d0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1205
	move.w #32,%a0
	moveq #1,%d2
.L1199:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1203
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L1199
.L1203:
	tst.l %d2
	jeq .L1218
.L1205:
	cmp.l %d0,%d1
	jhi .L1204
	sub.l %d1,%d0
.L1204:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1205
.L1201:
	cmp.w #0,%a1
	jeq .L1196
	neg.l %d0
.L1196:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1217:
	neg.l %d1
	jra .L1198
.L1216:
	neg.l %d3
	move.w #1,%a1
	move.l 16(%sp),%d1
	jpl .L1198
	jra .L1217
.L1218:
	move.l %d3,%d0
	jra .L1201
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
	jls .L1334
	tst.w %d3
	jlt .L1222
	add.w %d3,%d1
	cmp.w %a0,%d1
	jcc .L1223
	tst.w %d1
	jlt .L1224
	add.w %d1,%d1
	cmp.w %a0,%d1
	jcc .L1225
	tst.w %d1
	jlt .L1226
	move.w %d3,%d1
	lsl.w #3,%d1
	cmp.w %a0,%d1
	jcc .L1227
	tst.w %d1
	jlt .L1228
	move.w %d3,%d1
	lsl.w #4,%d1
	cmp.w %a0,%d1
	jcc .L1229
	tst.w %d1
	jlt .L1230
	move.w %d3,%d1
	lsl.w #5,%d1
	cmp.w %a0,%d1
	jcc .L1231
	tst.w %d1
	jlt .L1232
	move.w %d3,%d1
	lsl.w #6,%d1
	cmp.w %a0,%d1
	jcc .L1233
	tst.w %d1
	jlt .L1234
	move.w %d3,%d1
	lsl.w #7,%d1
	cmp.w %a0,%d1
	jcc .L1235
	tst.w %d1
	jlt .L1236
	move.w %d3,%d1
	lsl.w #8,%d1
	cmp.w %a0,%d1
	jcc .L1237
	tst.w %d1
	jlt .L1238
	move.w %d3,%d1
	moveq #9,%d2
	lsl.w %d2,%d1
	cmp.w %a0,%d1
	jcc .L1239
	tst.w %d1
	jlt .L1240
	move.w %d3,%d1
	moveq #10,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1241
	tst.w %d1
	jlt .L1242
	move.w %d3,%d1
	moveq #11,%d6
	lsl.w %d6,%d1
	cmp.w %a0,%d1
	jcc .L1243
	tst.w %d1
	jlt .L1244
	move.w %d3,%d1
	moveq #12,%d2
	lsl.w %d2,%d1
	cmp.w %a0,%d1
	jcc .L1245
	tst.w %d1
	jlt .L1246
	move.w %d3,%d1
	moveq #13,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1247
	tst.w %d1
	jlt .L1248
	move.w %d3,%d1
	moveq #14,%d6
	lsl.w %d6,%d1
	cmp.w %a0,%d1
	jcc .L1249
	tst.w %d1
	jlt .L1250
	moveq #15,%d1
	lsl.w %d1,%d3
	cmp.w %a0,%d3
	jcc .L1251
	tst.w %d3
	jne .L1335
.L1252:
	tst.l 32(%sp)
	jne .L1219
	move.w %d3,%d0
.L1219:
	movem.l (%sp)+,#124
	rts
.L1239:
	cmp.w %a0,%d1
	jhi .L1285
	sub.w %d1,%d0
	move.w #512,%d4
	move.w %d4,%d3
.L1254:
	move.w %d4,%d2
	lsr.w #2,%d2
	move.w %d1,%d5
	lsr.w #2,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1255
	sub.w %d5,%d0
	or.w %d2,%d3
.L1255:
	move.w %d4,%d2
	lsr.w #3,%d2
	move.w %d1,%d5
	lsr.w #3,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1256
	sub.w %d5,%d0
	or.w %d2,%d3
.L1256:
	move.w %d4,%d2
	lsr.w #4,%d2
	move.w %d1,%d5
	lsr.w #4,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1257
	sub.w %d5,%d0
	or.w %d2,%d3
.L1257:
	move.w %d4,%d2
	lsr.w #5,%d2
	move.w %d1,%d5
	lsr.w #5,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1258
	sub.w %d5,%d0
	or.w %d2,%d3
.L1258:
	move.w %d4,%d2
	lsr.w #6,%d2
	move.w %d1,%d5
	lsr.w #6,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1259
	sub.w %d5,%d0
	or.w %d2,%d3
.L1259:
	move.w %d4,%d2
	lsr.w #7,%d2
	move.w %d1,%d5
	lsr.w #7,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1260
	sub.w %d5,%d0
	or.w %d2,%d3
.L1260:
	move.w %d4,%d2
	lsr.w #8,%d2
	move.w %d1,%d5
	lsr.w #8,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1261
	sub.w %d5,%d0
	or.w %d2,%d3
.L1261:
	move.w %d4,%d2
	moveq #9,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #9,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1262
	sub.w %d5,%d0
	or.w %d2,%d3
.L1262:
	move.w %d4,%d2
	moveq #10,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #10,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1263
	sub.w %d5,%d0
	or.w %d2,%d3
.L1263:
	move.w %d4,%d2
	moveq #11,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #11,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1264
	sub.w %d5,%d0
	or.w %d2,%d3
.L1264:
	move.w %d4,%d2
	moveq #12,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #12,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1265
	sub.w %d5,%d0
	or.w %d2,%d3
.L1265:
	move.w %d4,%d2
	moveq #13,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #13,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1266
	sub.w %d5,%d0
	or.w %d2,%d3
.L1266:
	move.w %d4,%d2
	moveq #14,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #14,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1252
	cmp.w %d0,%d5
	jhi .L1267
	sub.w %d5,%d0
	or.w %d2,%d3
.L1267:
	moveq #15,%d2
	lsr.w %d2,%d1
	cmp.w #16384,%d4
	jeq .L1252
	cmp.w %d0,%d1
	jhi .L1275
	sub.w %d1,%d0
	or.w #1,%d3
	jra .L1252
.L1335:
	add.w #-32768,%d0
	move.w #16384,%d2
	move.w %d2,%d5
	move.w #-32768,%d1
	move.w %d1,%d4
	move.w %d1,%d3
.L1272:
	cmp.w %d0,%d2
	jhi .L1254
	sub.w %d2,%d0
	or.w %d5,%d3
	jra .L1254
.L1275:
	clr.w %d0
	jra .L1252
.L1334:
	cmp.w %d3,%d0
	jeq .L1273
	clr.w %d3
	jra .L1252
.L1222:
	sub.w %d3,%d0
	moveq #1,%d3
	jra .L1252
.L1223:
	cmp.w %a0,%d1
	jhi .L1277
	sub.w %d1,%d0
	moveq #2,%d4
	moveq #2,%d3
	jra .L1254
.L1224:
	sub.w %d1,%d0
	move.w %d3,%d2
	and.w #32767,%d2
	moveq #1,%d5
	moveq #2,%d4
	moveq #2,%d3
	jra .L1272
.L1225:
	cmp.w %a0,%d1
	jhi .L1278
	sub.w %d1,%d0
	moveq #4,%d4
	moveq #4,%d3
	jra .L1254
.L1226:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #2,%d5
	moveq #4,%d4
	moveq #4,%d3
	jra .L1272
.L1227:
	cmp.w %a0,%d1
	jhi .L1279
	sub.w %d1,%d0
	moveq #8,%d4
	moveq #8,%d3
	jra .L1254
.L1228:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #4,%d5
	moveq #8,%d4
	moveq #8,%d3
	jra .L1272
.L1229:
	cmp.w %a0,%d1
	jhi .L1280
	sub.w %d1,%d0
	moveq #16,%d4
	moveq #16,%d3
	jra .L1254
.L1230:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #8,%d5
	moveq #16,%d4
	moveq #16,%d3
	jra .L1272
.L1231:
	cmp.w %a0,%d1
	jhi .L1281
	sub.w %d1,%d0
	moveq #32,%d4
	moveq #32,%d3
	jra .L1254
.L1232:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #16,%d5
	moveq #32,%d4
	moveq #32,%d3
	jra .L1272
.L1233:
	cmp.w %a0,%d1
	jhi .L1282
	sub.w %d1,%d0
	moveq #64,%d4
	moveq #64,%d3
	jra .L1254
.L1234:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #32,%d5
	moveq #64,%d4
	moveq #64,%d3
	jra .L1272
.L1235:
	cmp.w %a0,%d1
	jhi .L1283
	sub.w %d1,%d0
	move.w #128,%d4
	move.w %d4,%d3
	jra .L1254
.L1236:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #64,%d5
	move.w #128,%d4
	move.w %d4,%d3
	jra .L1272
.L1238:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #128,%d5
	move.w #256,%d4
	move.w %d4,%d3
	jra .L1272
.L1273:
	moveq #1,%d3
	clr.w %d0
	jra .L1252
.L1240:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #256,%d5
	move.w #512,%d4
	move.w %d4,%d3
	jra .L1272
.L1277:
	moveq #2,%d4
.L1271:
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1242:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #512,%d5
	move.w #1024,%d4
	move.w %d4,%d3
	jra .L1272
.L1278:
	moveq #4,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1244:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #1024,%d5
	move.w #2048,%d4
	move.w %d4,%d3
	jra .L1272
.L1279:
	moveq #8,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1246:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #2048,%d5
	move.w #4096,%d4
	move.w %d4,%d3
	jra .L1272
.L1248:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #4096,%d5
	move.w #8192,%d4
	move.w %d4,%d3
	jra .L1272
.L1280:
	moveq #16,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1250:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #8192,%d5
	move.w #16384,%d4
	move.w %d4,%d3
	jra .L1272
.L1281:
	moveq #32,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1282:
	moveq #64,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1251:
	move.w #-32768,%d1
	move.w %d1,%d4
	tst.w %d0
	jge .L1271
	move.w %d1,%d3
	clr.w %d0
	jra .L1254
.L1283:
	move.w #128,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1237:
	cmp.w %a0,%d1
	jhi .L1284
	sub.w %d1,%d0
	move.w #256,%d4
	move.w %d4,%d3
	jra .L1254
.L1284:
	move.w #256,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1247:
	cmp.w %a0,%d1
	jhi .L1289
	sub.w %d1,%d0
	move.w #8192,%d4
	move.w %d4,%d3
	jra .L1254
.L1241:
	cmp.w %a0,%d1
	jhi .L1286
	sub.w %d1,%d0
	move.w #1024,%d4
	move.w %d4,%d3
	jra .L1254
.L1289:
	move.w #8192,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1286:
	move.w #1024,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1285:
	move.w #512,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1245:
	cmp.w %a0,%d1
	jhi .L1288
	sub.w %d1,%d0
	move.w #4096,%d4
	move.w %d4,%d3
	jra .L1254
.L1243:
	cmp.w %a0,%d1
	jhi .L1287
	sub.w %d1,%d0
	move.w #2048,%d4
	move.w %d4,%d3
	jra .L1254
.L1249:
	cmp.w %a0,%d1
	jhi .L1290
	sub.w %d1,%d0
	move.w #16384,%d4
	move.w %d4,%d3
	jra .L1254
.L1288:
	move.w #4096,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1287:
	move.w #2048,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
.L1290:
	move.w #16384,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1272
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
	jcc .L1338
	moveq #32,%d0
	moveq #1,%d2
.L1337:
	tst.l %d1
	jlt .L1338
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1339
	subq.l #1,%d0
	jne .L1337
	tst.l 16(%sp)
	jne .L1354
.L1336:
	move.l (%sp)+,%d2
	rts
.L1339:
	tst.l %d2
	jeq .L1346
.L1338:
	moveq #0,%d0
.L1343:
	cmp.l %a0,%d1
	jhi .L1342
	sub.l %d1,%a0
	or.l %d2,%d0
.L1342:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1343
	tst.l 16(%sp)
	jeq .L1336
.L1354:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1346:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1336
	jra .L1354
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
	jeq .L1356
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	moveq #0,%d1
.L1358:
	movem.l (%sp)+,#28
	rts
.L1356:
	move.l %d3,%d1
	tst.l %d2
	jeq .L1358
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
	jeq .L1363
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
	movem.l (%sp)+,#28
	rts
.L1363:
	tst.l %d2
	jeq .L1366
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1366:
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
	jne .L1374
	moveq #2,%d0
	sub.l %d2,%d0
	add.l %d1,%a0
	add.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1374:
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
	jgt .L1382
	jlt .L1383
	cmp.l %a1,%a0
	jhi .L1382
	jcs .L1383
	moveq #1,%d0
	rts
.L1382:
	moveq #0,%d0
	rts
.L1383:
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
	jgt .L1390
	jlt .L1389
	cmp.l %d0,%a1
	jhi .L1390
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1390:
	moveq #-1,%d0
	rts
.L1389:
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
	jeq .L1396
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	moveq #0,%d0
	movem.l (%sp)+,#28
	rts
.L1396:
	move.l %d1,%d0
	tst.l %d2
	jeq .L1399
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1399:
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
	jeq .L1417
	lea __muldf3,%a5
.L1419:
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
.L1417:
	move.l %a4,%d0
	jpl .L1426
	addq.l #1,%d0
.L1426:
	asr.l #1,%d0
	move.l %d0,%a4
	jeq .L1418
	lea __muldf3,%a5
.L1420:
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
	jne .L1419
	move.l %a4,%d0
	jpl .L1427
	addq.l #1,%d0
.L1427:
	asr.l #1,%d0
	move.l %d0,%a4
	jra .L1420
.L1418:
	cmp.w #0,%a6
	jlt .L1425
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31996
	addq.l #8,%sp
	rts
.L1425:
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
	jeq .L1429
	lea __mulsf3,%a2
.L1431:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L1429:
	move.l %d2,%d2
	jpl .L1438
	addq.l #1,%d2
.L1438:
	asr.l #1,%d2
	jeq .L1430
	lea __mulsf3,%a2
.L1432:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L1431
	move.l %d2,%d2
	jpl .L1439
	addq.l #1,%d2
.L1439:
	asr.l #1,%d2
	jra .L1432
.L1430:
	tst.l %d5
	jlt .L1437
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
.L1437:
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
	jhi .L1444
	jcs .L1445
	cmp.l %a1,%a0
	jhi .L1444
	jcs .L1445
	moveq #1,%d0
	rts
.L1444:
	moveq #0,%d0
	rts
.L1445:
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
	jhi .L1452
	jcs .L1451
	cmp.l %d0,%a1
	jhi .L1452
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1452:
	moveq #-1,%d0
	rts
.L1451:
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
	.globl	__gesf2
	.globl	__umodsi3
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__floatunsisf
	.globl	__floatunsidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__gedf2
	.globl	__ledf2
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
	.globl	__ltxf2
	.globl	__ltsf2
	.globl	__ltdf2
	.globl	__subsf3
	.globl	__gtsf2
	.globl	__subdf3
	.globl	__gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
