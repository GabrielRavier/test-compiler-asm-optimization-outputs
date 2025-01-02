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
	move.l %d1,%d2
	subq.l #1,%d2
	moveq #6,%d3
	cmp.l %d2,%d3
	jcc .L36
	move.l %a0,%d2
	or.l %d0,%d2
	moveq #3,%d3
	and.l %d3,%d2
	move.l %d0,%a2
	lea (1,%a2),%a1
	jne .L5
	move.l %a0,%a2
	sub.l %a1,%a2
	moveq #2,%d2
	cmp.l %a2,%d2
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
	move.l 16(%sp),%a1
	move.b (%a1),%d1
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
	move.w #9,%a0
	cmp.l %d0,%a0
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
	move.w #127,%a0
	cmp.l %d0,%a0
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
	lea (-9,%a0),%a1
	moveq #4,%d1
	cmp.l %a1,%d1
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
	move.w #1,%a1
	cmp.l %d0,%a1
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
	move.w #32,%a0
	cmp.l %d0,%a0
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
	moveq #32,%d1
	or.l 4(%sp),%d1
	move.w #-97,%a1
	lea (%a1,%d1.l),%a0
	moveq #5,%d0
	cmp.l %a0,%d0
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
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	lea __unorddf2,%a2
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L211
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L212
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L215
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
	movem.l (%sp)+,#1276
	rts
.L215:
	moveq #0,%d0
	moveq #0,%d1
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L211:
	move.l %d2,%d0
	move.l %d3,%d1
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L212:
	move.l %d4,%d0
	move.l %d5,%d1
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
	movem.l #12320,-(%sp)
	move.l 16(%sp),%d2
	move.l 20(%sp),%d3
	lea __unordsf2,%a2
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L221
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L222
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L225
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	movem.l (%sp)+,#1036
	rts
.L225:
	moveq #0,%d0
	movem.l (%sp)+,#1036
	rts
.L221:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L222:
	move.l %d3,%d0
	movem.l (%sp)+,#1036
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
	lea __unorddf2,%a2
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L236
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L228
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L230
	tst.l %d0
	jeq .L228
.L236:
	move.l %d4,%d2
	move.l %d5,%d3
.L228:
	move.l %d2,%d6
	move.l %d3,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L230:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L236
	move.l %d2,%d6
	move.l %d3,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	movem.l #12320,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d2
	lea __unordsf2,%a2
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L250
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L249
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L255
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L250
	move.l %d3,%d2
.L250:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L255:
	tst.l %d0
	jne .L250
.L249:
	move.l %d3,%d0
	movem.l (%sp)+,#1036
	rts
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
	movem.l #15422,-(%sp)
	move.l %a1,%a2
	move.l 40(%sp),%d3
	move.l 44(%sp),%d4
	move.l 48(%sp),%d5
	move.l 52(%sp),%a4
	move.l 56(%sp),%a5
	move.l 60(%sp),%a6
	lea __unordxf2,%a3
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L263
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L257
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %a4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L258
	tst.l %d0
	jeq .L257
.L263:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
.L257:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L258:
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L257
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
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
	lea __unorddf2,%a2
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L277
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L271
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L273
	tst.l %d0
	jeq .L277
.L271:
	move.l %d2,%d6
	move.l %d3,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L273:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L271
.L277:
	move.l %d4,%d2
	move.l %d5,%d3
	move.l %d2,%d6
	move.l %d3,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	movem.l #12320,-(%sp)
	move.l 16(%sp),%d2
	move.l 20(%sp),%d3
	lea __unordsf2,%a2
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L290
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L292
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L297
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L292
	move.l %d3,%d2
.L292:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L297:
	tst.l %d0
	jne .L292
.L290:
	move.l %d3,%d0
	movem.l (%sp)+,#1036
	rts
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
	movem.l #15422,-(%sp)
	move.l %a1,%a2
	move.l 40(%sp),%a4
	move.l 44(%sp),%a5
	move.l 48(%sp),%a6
	move.l 52(%sp),%d3
	move.l 56(%sp),%d4
	move.l 60(%sp),%d5
	lea __unordxf2,%a3
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L299
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L305
	move.l %a4,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L300
	tst.l %d0
	jeq .L299
.L305:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
.L299:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L300:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L299
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	lea (s.0),%a0
	jeq .L314
	lea digits,%a1
.L315:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L315
.L314:
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
	jeq .L332
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L324
	move.l %a0,4(%a1)
.L324:
	rts
.L332:
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
	jeq .L334
	move.l 4(%a0),4(%a1)
.L334:
	move.l 4(%a0),%a0
	cmp.w #0,%a0
	jeq .L333
	move.l %a1,(%a0)
.L333:
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
	jeq .L345
	move.l 40(%sp),%d2
	moveq #0,%d3
.L347:
	move.l %d2,%d6
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L344
	addq.l #1,%d3
	add.l %d5,%d2
	cmp.l %d4,%d3
	jne .L347
.L345:
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
	jeq .L344
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L344:
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
	jeq .L362
	move.l 36(%sp),%d2
	moveq #0,%d3
.L364:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L361
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d5,%d3
	jne .L364
.L362:
	moveq #0,%d4
.L361:
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
	jmi .L378
	rts
.L378:
	neg.l %d0
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a0
.L380:
	move.l %a0,%a3
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L380
	move.b %d0,%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-9,%a1),%a2
	moveq #4,%d1
	cmp.l %a2,%d1
	jcc .L380
	cmp.b #43,%d0
	jeq .L382
	cmp.b #45,%d0
	jeq .L383
	lea (-48,%a1),%a2
	moveq #9,%d1
	cmp.l %a2,%d1
	jcs .L391
	move.l %a3,%a2
	sub.l %a3,%a3
.L385:
	moveq #0,%d0
.L388:
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	addq.l #1,%a2
	move.w %d2,%a1
	lea (-48,%a1),%a0
	move.l %d1,%d0
	sub.l %a0,%d0
	move.b (%a2),%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-48,%a1),%a1
	moveq #9,%d3
	cmp.l %a1,%d3
	jcc .L388
	cmp.w #0,%a3
	jne .L379
	move.l %a0,%d0
	sub.l %d1,%d0
.L379:
	movem.l (%sp)+,#3084
	rts
.L383:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a3
	lea (-48,%a3),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L391
	move.w #1,%a3
	moveq #0,%d0
	jra .L388
.L382:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a1
	sub.l %a3,%a3
	moveq #9,%d3
	cmp.l %a1,%d3
	jcc .L385
.L391:
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
.L402:
	move.l %a0,%a3
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L402
	move.b %d0,%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-9,%a1),%a2
	moveq #4,%d1
	cmp.l %a2,%d1
	jcc .L402
	cmp.b #43,%d0
	jeq .L404
	cmp.b #45,%d0
	jeq .L422
	lea (-48,%a1),%a1
	moveq #9,%d1
	move.l %a3,%a2
	cmp.l %a1,%d1
	jcs .L412
	sub.l %a3,%a3
.L406:
	moveq #0,%d0
.L409:
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
	jcc .L409
	cmp.w #0,%a3
	jne .L401
	move.l %a0,%d0
	sub.l %d1,%d0
.L401:
	movem.l (%sp)+,#3084
	rts
.L422:
	move.l %a0,%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-48,%a1),%a0
	move.w #1,%a3
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L406
.L412:
	moveq #0,%d0
	movem.l (%sp)+,#3084
	rts
.L404:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a3
	moveq #9,%d3
	cmp.l %a3,%d3
	jcs .L412
	sub.l %a3,%a3
	jra .L406
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%a0
.L424:
	move.l %a0,%a2
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L424
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-9,%a1),%a3
	moveq #4,%d2
	cmp.l %a3,%d2
	jcc .L424
	cmp.b #43,%d0
	jeq .L426
	cmp.b #45,%d0
	jeq .L427
	lea (-48,%a1),%a1
	moveq #9,%d5
	cmp.l %a1,%d5
	jcs .L435
	move.l %a2,%a1
	sub.l %a2,%a2
.L429:
	clr.l %d4
	clr.l %d5
.L432:
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
	move.w %d1,%a3
	move.l #-48,%d7
	add.l %a3,%d7
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
	lea (-48,%a0),%a3
	moveq #9,%d0
	cmp.l %a3,%d0
	jcc .L432
	cmp.w #0,%a2
	jne .L423
	move.l %d6,%d4
	move.l %d7,%d5
	sub.l %d3,%d5
	subx.l %d2,%d4
.L423:
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#3324
	rts
.L427:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a2
	lea (-48,%a2),%a0
	moveq #9,%d4
	cmp.l %a0,%d4
	jcs .L435
	move.w #1,%a2
	clr.l %d4
	clr.l %d5
	jra .L432
.L426:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a3
	sub.l %a2,%a2
	moveq #9,%d3
	cmp.l %a3,%d3
	jcc .L429
.L435:
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
	jeq .L446
	lea __mulsi3,%a3
.L449:
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
	jlt .L450
	jeq .L445
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	sub.l %d7,%d2
	jne .L449
.L446:
	moveq #0,%d3
.L445:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
.L450:
	move.l %d7,%d2
	jne .L449
	jra .L446
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
	jeq .L465
.L461:
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
	jeq .L460
	jle .L463
	move.l %d2,%d5
	add.l %d4,%d5
	subq.l #1,%d3
	asr.l #1,%d3
	jne .L461
.L465:
	moveq #0,%d2
.L460:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l (%sp)+,#7420
	rts
.L463:
	cmp.w #0,%a4
	jeq .L465
	move.l %a4,%d3
	jra .L461
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
	jlt .L482
	rts
.L482:
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
	jmi .L489
	rts
.L489:
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
	jlt .L496
	rts
.L496:
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
	jeq .L503
.L500:
	cmp.l %d1,%d0
	jeq .L499
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L500
.L503:
	sub.l %a0,%a0
.L499:
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
	jne .L509
.L508:
	tst.l %d0
	jeq .L509
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L508
.L509:
	cmp.l %d0,%d1
	jgt .L512
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L512:
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
.L517:
	move.l (%a2)+,%d0
	move.l %d0,(%a1)+
	jne .L517
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
	jeq .L524
	move.l %a1,%a0
.L523:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L523
	sub.l %a1,%a0
	move.l %a0,%d0
	asr.l #2,%d0
	rts
.L524:
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
	jeq .L535
	move.l 12(%sp),%a0
	move.l 16(%sp),%d0
.L530:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L531
	cmp.w #0,%a1
	jeq .L531
	subq.l #1,%d1
	jne .L530
.L535:
	moveq #0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L531:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L538
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L538:
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
	jeq .L544
	move.l 4(%sp),%a1
.L541:
	move.l %a1,%a0
	cmp.l (%a1)+,%d1
	jeq .L539
	subq.l #1,%d0
	jne .L541
.L544:
	sub.l %a0,%a0
.L539:
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
	jeq .L554
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L549:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #4,%d1
	addq.l #4,%d0
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L558
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L549
.L554:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L558:
	move.l (%a2),%d0
	move.l (%a1),%d1
	cmp.l %d0,%d1
	jgt .L559
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L559:
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
	jeq .L561
	add.l %d0,%d0
	add.l %d0,%d0
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L561:
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
	jeq .L575
	move.l %a0,%a3
	move.l %d1,%a2
	add.l %d1,%a2
	add.l %a2,%a2
	move.l %a0,%d0
	sub.l %a1,%d0
	cmp.l %d0,%a2
	jls .L583
	tst.l %d1
	jeq .L575
	lea (%a1,%a2.l),%a3
	lea (%a0,%a2.l),%a2
.L572:
	move.l -(%a3),-(%a2)
	cmp.l %a1,%a3
	jne .L572
.L575:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L583:
	move.l %d1,%d0
	subq.l #1,%d0
	tst.l %d1
	jeq .L575
.L573:
	move.l (%a1)+,(%a3)+
	dbra %d0,.L573
	clr.w %d0
	subq.l #1,%d0
	jcc .L573
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
	jeq .L585
	move.l %a0,%a1
.L586:
	move.l %d1,(%a1)+
	dbra %d0,.L586
	clr.w %d0
	subq.l #1,%d0
	jcc .L586
.L585:
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
	jls .L594
	move.l %d0,%a2
	lea (%a2,%d1.l),%a0
	tst.l %d1
	jeq .L593
	lea -1(%a1,%d1.l),%a1
.L596:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
	cmp.l %d0,%a0
	jne .L596
.L593:
	movem.l (%sp)+,#1036
	rts
.L594:
	cmp.l %d0,%a1
	jeq .L593
	tst.l %d1
	jeq .L593
	move.l %d1,%a0
	lea (-1,%a0),%a2
	moveq #6,%d2
	cmp.l %a2,%d2
	jcc .L628
	move.l %a1,%d2
	or.l %d0,%d2
	moveq #3,%d3
	and.l %d3,%d2
	move.l %d0,%a2
	lea (1,%a2),%a0
	jne .L597
	move.l %a1,%d2
	sub.l %a0,%d2
	moveq #2,%d3
	cmp.l %d2,%d3
	jcc .L597
	move.l %d0,%a0
	moveq #-4,%d3
	and.l %d1,%d3
	move.l %a1,%d2
	add.l %d3,%d2
.L598:
	move.l (%a0)+,(%a1)+
	cmp.l %a1,%d2
	jne .L598
	add.l %d3,%d0
	move.l %d1,%a0
	sub.l %d3,%a0
	cmp.l %d1,%d3
	jeq .L593
	move.l %d0,%a2
	move.b (%a2),(%a1)
	moveq #1,%d0
	cmp.l %a0,%d0
	jeq .L593
	move.b 1(%a2),1(%a1)
	moveq #2,%d1
	cmp.l %a0,%d1
	jeq .L593
	move.b 2(%a2),2(%a1)
	movem.l (%sp)+,#1036
	rts
.L628:
	move.l %d0,%a0
	addq.l #1,%a0
.L597:
	add.l %d1,%d0
.L601:
	move.b -1(%a0),(%a1)+
	cmp.l %a0,%d0
	jeq .L593
	addq.l #1,%a0
	jra .L601
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
	cmp.w #0,%a1
	jlt .L630
	move.l %d5,%d0
	move.l %a1,%d1
	lsl.l %d1,%d0
	moveq #0,%d6
	neg.l %d2
	moveq #63,%d1
	and.l %d1,%d2
	move.w #-32,%a0
	lea (%a0,%d2.l),%a1
	cmp.w #0,%a1
	jlt .L632
.L636:
	move.l %d3,%d1
	move.l %a1,%d3
	lsr.l %d3,%d1
	moveq #0,%d3
	or.l %d3,%d0
	or.l %d6,%d1
	movem.l (%sp)+,#124
	rts
.L630:
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
	cmp.w #0,%a1
	jge .L636
.L632:
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
	cmp.w #0,%a1
	jlt .L638
	move.l %d5,%d1
	move.l %a1,%d0
	lsr.l %d0,%d1
	moveq #0,%d6
	neg.l %d2
	moveq #63,%d0
	and.l %d0,%d2
	move.w #-32,%a0
	lea (%a0,%d2.l),%a1
	cmp.w #0,%a1
	jlt .L640
.L644:
	move.l %d3,%d0
	move.l %a1,%d5
	lsl.l %d5,%d0
	moveq #0,%d3
	or.l %d6,%d0
	or.l %d3,%d1
	movem.l (%sp)+,#124
	rts
.L638:
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
	cmp.w #0,%a1
	jge .L644
.L640:
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
	moveq #0,%d0
.L670:
	move.l %d2,%d1
	lsr.l %d0,%d1
	addq.l #1,%d0
	btst #0,%d1
	jne .L667
	move.w #32,%a0
	cmp.l %d0,%a0
	jne .L670
	moveq #0,%d0
.L667:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L677
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L674
	moveq #1,%d0
.L676:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L676
.L674:
	rts
.L677:
	moveq #0,%d0
	rts
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	move.l #0xff7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L685
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L688
	move.l %d2,%d0
.L682:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L685:
	moveq #1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L688:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L682
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	movem.l #11264,-(%sp)
	move.l 16(%sp),%d4
	move.l 20(%sp),%d5
	pea -1.w
	move.l #-1048577,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L692
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L695
	move.l %d2,%d0
.L689:
	movem.l (%sp)+,#52
	rts
.L692:
	moveq #1,%d0
	movem.l (%sp)+,#52
	rts
.L695:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L689
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
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d3
	move.l 24(%sp),%d4
	move.l 28(%sp),%d5
	move.l .LC0+8,-(%sp)
	move.l .LC0+4,-(%sp)
	move.l .LC0,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L699
	moveq #1,%d2
	move.l .LC1+8,-(%sp)
	move.l .LC1+4,-(%sp)
	move.l .LC1,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtxf2
	lea (24,%sp),%sp
	tst.l %d0
	jle .L702
	move.l %d2,%d0
.L696:
	movem.l (%sp)+,#60
	rts
.L699:
	moveq #1,%d0
	movem.l (%sp)+,#60
	rts
.L702:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L696
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
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L706
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #4,%sp
	move.l %d4,(%sp)
	move.l %d0,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L706
	tst.l %d2
	jlt .L722
	move.l #0x40000000,%d3
.L708:
	btst #0,%d2
	jeq .L709
	lea __mulsf3,%a2
.L710:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L709:
	move.l %d2,%d2
	jpl .L723
	addq.l #1,%d2
.L723:
	asr.l #1,%d2
	jeq .L706
	lea __mulsf3,%a2
.L711:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L710
	move.l %d2,%d2
	jpl .L724
	addq.l #1,%d2
.L724:
	asr.l #1,%d2
	jra .L711
.L706:
	move.l %d4,%d0
	movem.l (%sp)+,#1052
	rts
.L722:
	move.l #0x3f000000,%d3
	jra .L708
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
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L726
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
	jeq .L726
	tst.l %d2
	jlt .L742
	move.l #1073741824,%a4
	sub.l %a5,%a5
.L728:
	btst #0,%d2
	jeq .L729
	lea __muldf3,%a6
.L730:
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
.L729:
	move.l %d2,%d2
	jpl .L743
	addq.l #1,%d2
.L743:
	asr.l #1,%d2
	jeq .L726
	lea __muldf3,%a6
.L731:
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
	jne .L730
	move.l %d2,%d2
	jpl .L744
	addq.l #1,%d2
.L744:
	asr.l #1,%d2
	jra .L731
.L726:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31988
	rts
.L742:
	move.l #1071644672,%a4
	sub.l %a5,%a5
	jra .L728
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
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L746
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
	jeq .L746
	tst.l %d2
	jlt .L762
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
.L748:
	btst #0,%d2
	jeq .L749
	lea __mulxf3,%a2
.L750:
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
.L749:
	move.l %d2,%d2
	jpl .L763
	addq.l #1,%d2
.L763:
	asr.l #1,%d2
	jeq .L746
	lea __mulxf3,%a2
.L751:
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
	jne .L750
	move.l %d2,%d2
	jpl .L764
	addq.l #1,%d2
.L764:
	asr.l #1,%d2
	jra .L751
.L746:
	move.l %a4,(%a3)
	move.l %a5,4(%a3)
	move.l %a6,8(%a3)
	move.l %a3,%a0
	movem.l (%sp)+,#31804
	lea (24,%sp),%sp
	rts
.L762:
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
	jra .L748
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	movem.l #12344,-(%sp)
	move.l 24(%sp),%a0
	move.l 28(%sp),%a3
	move.l 32(%sp),%d1
	jeq .L766
	move.l %d1,%d0
	subq.l #1,%d0
	moveq #3,%d2
	cmp.l %d0,%d2
	jcc .L767
	move.l %a0,%d0
	move.l %a3,%d3
	or.l %d3,%d0
	and.l %d2,%d0
	jne .L767
	move.l %a3,%a2
	moveq #-4,%d2
	and.l %d1,%d2
	lea (%a0,%d2.l),%a4
	move.l %a0,%a1
.L768:
	move.l (%a2)+,%d0
	move.l (%a1),%d3
	eor.l %d3,%d0
	move.l %d0,(%a1)+
	cmp.l %a4,%a1
	jne .L768
	add.l %d2,%a3
	move.l %d1,%d0
	sub.l %d2,%d0
	cmp.l %d2,%d1
	jeq .L766
	move.b (%a3),%d1
	eor.b %d1,(%a4)
	move.w #1,%a2
	cmp.l %d0,%a2
	jeq .L766
	move.b 1(%a3),%d2
	eor.b %d2,1(%a4)
	subq.l #2,%d0
	jeq .L766
	move.b 2(%a3),%d3
	eor.b %d3,2(%a4)
.L766:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L767:
	add.l %a3,%d1
	move.l %a0,%a4
.L770:
	addq.l #1,%a4
	move.b (%a3)+,%d0
	eor.b %d0,-1(%a4)
	cmp.l %d1,%a3
	jeq .L766
	addq.l #1,%a4
	move.b (%a3)+,%d0
	eor.b %d0,-1(%a4)
	cmp.l %d1,%a3
	jne .L770
	jra .L766
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
	jeq .L787
.L788:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L788
.L787:
	tst.l %d0
	jeq .L789
	move.l 12(%sp),%a2
.L790:
	move.b (%a2)+,%d1
	move.b %d1,(%a1)+
	jeq .L792
	subq.l #1,%d0
	jne .L790
.L789:
	clr.b (%a1)
.L792:
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
	jeq .L801
	tst.b (%a0,%d0.l)
	jne .L804
.L801:
	rts
.L804:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jeq .L801
	tst.b (%a0,%d0.l)
	jeq .L801
	jra .L804
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d2
	move.b (%a0),%d1
	jeq .L815
.L811:
	move.l %d2,%a1
.L814:
	move.b (%a1)+,%d0
	jeq .L819
	cmp.b %d0,%d1
	jne .L814
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L819:
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L811
.L815:
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
.L822:
	move.l %a2,%d2
	move.b (%a2)+,%d1
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %d3,%a1
	jeq .L826
	tst.b %d1
	jne .L822
.L827:
	move.l %a0,%d0
	movem.l (%sp)+,#1036
	rts
.L826:
	move.l %d2,%a0
	tst.b %d1
	jne .L822
	jra .L827
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #15408,-(%sp)
	move.l 28(%sp),%d1
	move.l 32(%sp),%a3
	move.b (%a3),%d3
	jeq .L838
	move.l %a3,%a0
.L830:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L830
	move.l %a0,%d5
	sub.l %a3,%d5
	cmp.l %a0,%a3
	jeq .L838
	subq.l #1,%d5
.L836:
	move.l %d1,%a0
	move.b (%a0),%d0
	addq.l #1,%d1
	cmp.b %d0,%d3
	jeq .L835
	tst.b %d0
	jne .L836
	sub.l %a0,%a0
.L828:
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
.L835:
	move.b %d3,%d0
	move.l %a3,%d2
	move.l %a0,%d4
	add.l %d5,%d4
	move.l %a0,%a1
.L832:
	move.l %d2,%a2
	move.b (%a2),%d1
	addq.l #1,%d2
	tst.b %d1
	jeq .L833
	cmp.l %a1,%d4
	jeq .L833
	cmp.b %d1,%d0
	jne .L833
	addq.l #1,%a1
	move.b (%a1),%d0
	jne .L832
	move.l %d2,%a2
.L833:
	cmp.b (%a2),%d0
	jeq .L828
	move.l %a0,%d1
	addq.l #1,%d1
	jra .L836
.L838:
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
	jlt .L859
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L851
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L850
.L851:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
.L859:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L851
.L850:
	move.l %d2,%d6
	add.l #-2147483648,%d6
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
	jeq .L860
	cmp.l 28(%sp),%d1
	jhi .L871
	move.l 28(%sp),%d0
	sub.l %d1,%d0
	add.l %a0,%d0
	cmp.l %a0,%d0
	jcs .L871
	move.l 32(%sp),%a4
	move.b (%a4)+,%d3
	move.l %d1,%d2
	subq.l #1,%d2
.L866:
	move.l %a0,%a2
	cmp.b (%a2)+,%d3
	jeq .L878
	move.l %a2,%a0
.L862:
	cmp.l %d0,%a0
	jls .L866
.L871:
	sub.l %a0,%a0
.L860:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L878:
	tst.l %d2
	jeq .L860
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
.L863:
	cmpm.b (%a3)+,(%a1)+
	jne .L879
.L864:
	cmp.l %a1,%d1
	jeq .L860
	cmpm.b (%a3)+,(%a1)+
	jeq .L864
.L879:
	cmp.l %d0,%a2
	jhi .L871
	move.l %a2,%a0
	cmp.b (%a0)+,%d3
	jne .L862
	move.l %a2,%a1
	move.l %a0,%a2
	move.l %a1,%a0
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
	jra .L863
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	jeq .L881
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L881:
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
	lea (-20,%sp),%sp
	movem.l #16190,-(%sp)
	move.l 68(%sp),%d2
	move.l 72(%sp),%d3
	clr.l %d6
	clr.l %d7
	lea __ltdf2,%a2
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L912
	lea __gedf2,%a4
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L913
	moveq #0,%d7
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
.L896:
	addq.l #1,%d6
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (16,%sp),%sp
	move.l %d0,%d4
	move.l %d1,%d5
	move.l %d4,%d2
	move.l %d5,%d3
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L896
.L897:
	move.l 76(%sp),%a1
	move.l %d6,(%a1)
	move.l %d2,%a6
	tst.l %d7
	jeq .L903
	add.l #-2147483648,%a6
	move.l %d3,%d2
	move.l %a6,44(%sp)
	move.l %d2,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (20,%sp),%sp
	rts
.L913:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L893
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L902
.L893:
	move.l 76(%sp),%a0
	clr.l (%a0)
	move.l %d2,%a6
	move.l %d3,%d2
	move.l %a6,44(%sp)
	move.l %d2,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (20,%sp),%sp
	rts
.L912:
	move.l %d2,%d6
	add.l #-2147483648,%d6
	move.l %d3,52(%sp)
	clr.l -(%sp)
	move.l #-1074790400,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ledf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L914
	move.l %d6,%a3
	move.l %d3,%a4
	move.l %a3,%d2
	move.l %a4,%d3
	moveq #1,%d7
	lea __gedf2,%a4
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
	jra .L896
.L903:
	move.l %d3,%d2
	move.l %a6,44(%sp)
	move.l %d2,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (20,%sp),%sp
	rts
.L914:
	clr.l -(%sp)
	move.l #-1075838976,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L893
	moveq #1,%d7
	move.l 52(%sp),%d0
	move.l %d6,56(%sp)
	move.l %d0,60(%sp)
	move.l 56(%sp),%d2
	move.l 60(%sp),%d3
	moveq #0,%d6
	lea __adddf3,%a3
	move.l #1071644672,%d4
	clr.l %d5
.L898:
	subq.l #1,%d6
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	move.l %d0,%a5
	move.l %d1,%a6
	move.l %a5,%d2
	move.l %a6,%d3
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L897
	subq.l #1,%d6
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	move.l %d0,%a5
	move.l %d1,%a6
	move.l %a5,%d2
	move.l %a6,%d3
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L898
	jra .L897
.L902:
	move.l %d2,%d6
	move.l %d3,52(%sp)
	moveq #0,%d7
	move.l 52(%sp),%d0
	move.l %d6,56(%sp)
	move.l %d0,60(%sp)
	move.l 56(%sp),%d2
	move.l 60(%sp),%d3
	moveq #0,%d6
	lea __adddf3,%a3
	move.l #1071644672,%d4
	clr.l %d5
	jra .L898
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
	jeq .L915
.L917:
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
	jne .L917
.L915:
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
	jls .L924
	moveq #32,%d0
	moveq #1,%d2
.L923:
	tst.l %d1
	jlt .L924
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L925
	subq.l #1,%d0
	jne .L923
	tst.l 16(%sp)
	jne .L940
.L922:
	move.l (%sp)+,%d2
	rts
.L925:
	tst.l %d2
	jeq .L932
.L924:
	moveq #0,%d0
.L929:
	cmp.l %a0,%d1
	jhi .L928
	sub.l %d1,%a0
	or.l %d2,%d0
.L928:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L929
	tst.l 16(%sp)
	jeq .L922
.L940:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L932:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L922
	jra .L940
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
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
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
	sub.l %d3,%d1
	subx.l %d2,%d0
	jeq .L948
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
	movem.l (%sp)+,#252
	rts
.L948:
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
	jeq .L951
.L953:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L953
.L951:
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
	jhi .L959
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L990
.L959:
	tst.l %d0
	jeq .L962
	move.l %a3,%a4
	move.l %a2,%a0
	lsl.l #3,%d0
	add.l %a3,%d0
.L963:
	move.l (%a4)+,%d3
	move.l (%a4)+,%d4
	move.l %d3,(%a0)+
	move.l %d4,(%a0)+
	cmp.l %a4,%d0
	jne .L963
	cmp.l %d2,%d1
	jcc .L958
	move.l %d2,%d4
	sub.l %d1,%d4
	move.l %d4,%d6
	subq.l #1,%d6
	moveq #6,%d5
	cmp.l %d6,%d5
	jcc .L985
	lea (%a2,%d1.l),%a0
	move.l %a0,%d3
	move.l %a3,%d0
	add.l %d1,%d0
	lea 1(%a3,%d1.l),%a4
	move.l %a0,%a1
	sub.l %a4,%a1
	moveq #2,%d6
	cmp.l %a1,%d6
	jcc .L965
	move.l %a0,%d5
	or.l %d0,%d5
	moveq #3,%d6
	and.l %d6,%d5
	jne .L965
	move.l %d0,%a4
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L966:
	move.l (%a4)+,(%a0)+
	cmp.l %a0,%d0
	jne .L966
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L958
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d4
	addq.l #1,%d4
	cmp.l %d2,%d4
	jcc .L958
	move.b (%a3,%d4.l),(%a2,%d4.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L958
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L958:
	movem.l (%sp)+,#7292
	rts
.L990:
	lea (%a2,%d2.l),%a1
	tst.l %d2
	jeq .L958
.L970:
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jeq .L958
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jne .L970
	jra .L958
.L962:
	tst.l %d2
	jeq .L958
.L985:
	move.l %a2,%d3
	add.l %d1,%d3
	move.l %a3,%d0
	add.l %d1,%d0
.L965:
	move.l %d0,%a2
	move.l %d3,%a0
	add.l %a3,%d2
.L968:
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jeq .L958
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jne .L968
	jra .L958
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
	jhi .L992
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L1022
.L992:
	tst.l %d3
	jeq .L995
	move.l %d3,%d0
	subq.l #1,%d0
	moveq #8,%d1
	cmp.l %d0,%d1
	jcc .L996
	move.l %a3,%d0
	move.l %a2,%d1
	or.l %d1,%d0
	moveq #3,%d1
	and.l %d1,%d0
	jne .L996
	move.l %a3,%d0
	addq.l #2,%d0
	cmp.l %a2,%d0
	jeq .L996
	move.l %d2,%d0
	lsr.l #2,%d0
	move.l %a3,%a1
	add.l %d0,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %a2,%d1
	move.l %a2,%a0
.L997:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d1
	jne .L997
	cmp.l %d3,%d0
	jeq .L995
	add.l %d0,%d0
	move.w (%a3,%d0.l),(%a2,%d0.l)
.L995:
	btst #0,%d2
	jeq .L991
	move.b -1(%a3,%d2.l),-1(%a2,%d2.l)
.L991:
	movem.l (%sp)+,#3084
	rts
.L1022:
	lea (%a2,%d2.l),%a1
	tst.l %d2
	jeq .L991
.L1002:
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jeq .L991
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jne .L1002
	jra .L991
.L996:
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d3,%d3
	add.l %a3,%d3
.L999:
	move.w (%a0)+,(%a1)+
	cmp.l %d3,%a0
	jeq .L995
	move.w (%a0)+,(%a1)+
	cmp.l %d3,%a0
	jne .L999
	jra .L995
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
	jhi .L1024
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L1055
.L1024:
	tst.l %d0
	jeq .L1027
	move.l %a3,%a4
	move.l %a2,%a0
	add.l %d0,%d0
	add.l %d0,%d0
	add.l %a3,%d0
.L1028:
	move.l (%a4)+,(%a0)+
	cmp.l %a4,%d0
	jne .L1028
	cmp.l %d2,%d1
	jcc .L1023
	move.l %d2,%d4
	sub.l %d1,%d4
	move.l %d4,%d5
	subq.l #1,%d5
	moveq #6,%d3
	cmp.l %d5,%d3
	jcc .L1050
	lea (%a2,%d1.l),%a0
	move.l %a0,%d3
	move.l %a3,%d0
	add.l %d1,%d0
	lea 1(%a3,%d1.l),%a4
	move.l %a0,%a1
	sub.l %a4,%a1
	moveq #2,%d6
	cmp.l %a1,%d6
	jcc .L1030
	move.l %a0,%d5
	or.l %d0,%d5
	moveq #3,%d6
	and.l %d6,%d5
	jne .L1030
	move.l %d0,%a4
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L1031:
	move.l (%a4)+,(%a0)+
	cmp.l %a0,%d0
	jne .L1031
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L1023
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d4
	addq.l #1,%d4
	cmp.l %d2,%d4
	jcc .L1023
	move.b (%a3,%d4.l),(%a2,%d4.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L1023
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L1023:
	movem.l (%sp)+,#7292
	rts
.L1055:
	lea (%a2,%d2.l),%a1
	tst.l %d2
	jeq .L1023
.L1035:
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jeq .L1023
	move.b -(%a0),-(%a1)
	cmp.l %a3,%a0
	jne .L1035
	jra .L1023
.L1027:
	tst.l %d2
	jeq .L1023
.L1050:
	move.l %a2,%d3
	add.l %d1,%d3
	move.l %a3,%d0
	add.l %d1,%d0
.L1030:
	move.l %d0,%a2
	move.l %d3,%a0
	add.l %a3,%d2
.L1033:
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jeq .L1023
	move.b (%a2)+,(%a0)+
	cmp.l %a2,%d2
	jne .L1033
	jra .L1023
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
	jmi .L1071
	move.l %d1,%d0
	moveq #14,%d3
	asr.l %d3,%d0
	jne .L1068
	move.l %d1,%d0
	moveq #13,%d3
	asr.l %d3,%d0
	jne .L1072
	move.l %d1,%d0
	moveq #12,%d3
	asr.l %d3,%d0
	jne .L1073
	move.l %d1,%d0
	moveq #11,%d3
	asr.l %d3,%d0
	jne .L1074
	move.l %d1,%d0
	moveq #10,%d3
	asr.l %d3,%d0
	jne .L1075
	move.l %d1,%d0
	moveq #9,%d3
	asr.l %d3,%d0
	jne .L1076
	move.l %d1,%d0
	asr.l #8,%d0
	jne .L1077
	move.l %d1,%d3
	asr.l #7,%d3
	jne .L1078
	move.l %d1,%d0
	asr.l #6,%d0
	jne .L1079
	move.l %d1,%d3
	asr.l #5,%d3
	jne .L1080
	move.l %d1,%d0
	asr.l #4,%d0
	jne .L1081
	move.l %d1,%d3
	asr.l #3,%d3
	jne .L1082
	move.l %d1,%d0
	asr.l #2,%d0
	jne .L1083
	asr.l #1,%d1
	jne .L1084
	moveq #16,%d0
	tst.w %d2
	jne .L1089
.L1068:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1071:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1082:
	moveq #12,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1089:
	moveq #15,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1072:
	moveq #2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1073:
	moveq #3,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1074:
	moveq #4,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1075:
	moveq #5,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1076:
	moveq #6,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1077:
	moveq #7,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1078:
	moveq #8,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1079:
	moveq #9,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1080:
	moveq #10,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1081:
	moveq #11,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1083:
	moveq #13,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1084:
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
	jne .L1093
	btst #1,%d1
	jne .L1094
	btst #2,%d1
	jne .L1095
	btst #3,%d1
	jne .L1096
	btst #4,%d1
	jne .L1097
	btst #5,%d1
	jne .L1098
	btst #6,%d1
	jne .L1099
	tst.b %d1
	jmi .L1100
	btst #8,%d1
	jne .L1101
	btst #9,%d1
	jne .L1102
	btst #10,%d1
	jne .L1103
	btst #11,%d1
	jne .L1104
	btst #12,%d1
	jne .L1105
	btst #13,%d1
	jne .L1106
	btst #14,%d1
	jne .L1107
	moveq #16,%d0
	tst.w %d1
	jmi .L1112
	rts
.L1093:
	moveq #0,%d0
	rts
.L1094:
	moveq #1,%d0
	rts
.L1105:
	moveq #12,%d0
	rts
.L1112:
	moveq #15,%d0
	rts
.L1095:
	moveq #2,%d0
	rts
.L1096:
	moveq #3,%d0
	rts
.L1097:
	moveq #4,%d0
	rts
.L1098:
	moveq #5,%d0
	rts
.L1099:
	moveq #6,%d0
	rts
.L1100:
	moveq #7,%d0
	rts
.L1101:
	moveq #8,%d0
	rts
.L1102:
	moveq #9,%d0
	rts
.L1103:
	moveq #10,%d0
	rts
.L1104:
	moveq #11,%d0
	rts
.L1106:
	moveq #13,%d0
	rts
.L1107:
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
	jge .L1121
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1121:
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
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	asr.l #4,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a1,%d1
	move.l %d0,%d2
	asr.l #5,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	asr.l #6,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a1,%d1
	move.l %d0,%d2
	asr.l #7,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	asr.l #8,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a1,%d1
	move.l %d0,%d2
	moveq #9,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	moveq #10,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a1,%d1
	move.l %d0,%d2
	moveq #11,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	moveq #12,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a1,%d1
	move.l %d0,%d2
	moveq #13,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	moveq #14,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a1,%d1
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
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	asr.l #4,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a1,%d1
	move.l %d0,%d2
	asr.l #5,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	asr.l #6,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a1,%d1
	move.l %d0,%d2
	asr.l #7,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	asr.l #8,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a1,%d1
	move.l %d0,%d2
	moveq #9,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	moveq #10,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a1,%d1
	move.l %d0,%d2
	moveq #11,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	moveq #12,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a1,%d1
	move.l %d0,%d2
	moveq #13,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	lea (%a0,%d1.l),%a1
	move.l %d0,%d1
	moveq #14,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a1,%d1
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
	jeq .L1126
.L1128:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L1128
.L1126:
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
	jeq .L1133
	tst.l %d3
	jeq .L1133
.L1135:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L1135
.L1133:
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
	jcc .L1144
	moveq #32,%d0
	moveq #1,%d2
.L1143:
	tst.l %d1
	jlt .L1144
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1145
	subq.l #1,%d0
	jne .L1143
	tst.l 16(%sp)
	jne .L1160
.L1142:
	move.l (%sp)+,%d2
	rts
.L1145:
	tst.l %d2
	jeq .L1152
.L1144:
	moveq #0,%d0
.L1149:
	cmp.l %a0,%d1
	jhi .L1148
	sub.l %d1,%a0
	or.l %d2,%d0
.L1148:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1149
	tst.l 16(%sp)
	jeq .L1142
.L1160:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1152:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1142
	jra .L1160
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
	jlt .L1164
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L1167
	move.l %d2,%d0
.L1161:
	movem.l (%sp)+,#28
	rts
.L1167:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L1161
.L1164:
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
	jlt .L1171
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L1174
	move.l %d6,%d0
.L1168:
	movem.l (%sp)+,#124
	rts
.L1174:
	moveq #0,%d6
	move.l %d6,%d0
	jra .L1168
.L1171:
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
	jmi .L1195
	jeq .L1185
	sub.l %a0,%a0
	moveq #32,%d4
	moveq #0,%d0
.L1184:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L1183
	subq.b #1,%d4
	jne .L1184
.L1183:
	cmp.w #0,%a0
	jeq .L1179
	neg.l %d0
.L1179:
	movem.l (%sp)+,#28
	rts
.L1195:
	neg.l %d2
	move.w #1,%a0
	moveq #32,%d4
	moveq #0,%d0
	jra .L1184
.L1185:
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
	jlt .L1216
	moveq #1,%d0
	sub.l %a1,%a1
	tst.l %d1
	jlt .L1217
.L1198:
	move.l %d3,%a0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1200
	moveq #32,%d0
	moveq #1,%d2
.L1199:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1203
	subq.l #1,%d0
	jne .L1199
.L1203:
	moveq #0,%d0
	tst.l %d2
	jeq .L1201
.L1200:
	moveq #0,%d0
.L1205:
	cmp.l %a0,%d1
	jhi .L1204
	sub.l %d1,%a0
	or.l %d2,%d0
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
	move.l %d0,%a1
	jra .L1198
.L1216:
	neg.l %d3
	moveq #0,%d0
	move.w #1,%a1
	tst.l %d1
	jge .L1198
	jra .L1217
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	jmi .L1238
	sub.l %a1,%a1
	move.l 16(%sp),%d1
	jmi .L1239
.L1220:
	move.l %d3,%d0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1227
	move.w #32,%a0
	moveq #1,%d2
.L1221:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1225
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L1221
.L1225:
	tst.l %d2
	jeq .L1240
.L1227:
	cmp.l %d0,%d1
	jhi .L1226
	sub.l %d1,%d0
.L1226:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1227
.L1223:
	cmp.w #0,%a1
	jeq .L1218
	neg.l %d0
.L1218:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1239:
	neg.l %d1
	jra .L1220
.L1238:
	neg.l %d3
	move.w #1,%a1
	move.l 16(%sp),%d1
	jpl .L1220
	jra .L1239
.L1240:
	move.l %d3,%d0
	jra .L1223
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
	jls .L1356
	tst.w %d3
	jlt .L1244
	add.w %d3,%d1
	cmp.w %a0,%d1
	jcc .L1245
	tst.w %d1
	jlt .L1246
	add.w %d1,%d1
	cmp.w %a0,%d1
	jcc .L1247
	tst.w %d1
	jlt .L1248
	move.w %d3,%d1
	lsl.w #3,%d1
	cmp.w %a0,%d1
	jcc .L1249
	tst.w %d1
	jlt .L1250
	move.w %d3,%d1
	lsl.w #4,%d1
	cmp.w %a0,%d1
	jcc .L1251
	tst.w %d1
	jlt .L1252
	move.w %d3,%d1
	lsl.w #5,%d1
	cmp.w %a0,%d1
	jcc .L1253
	tst.w %d1
	jlt .L1254
	move.w %d3,%d1
	lsl.w #6,%d1
	cmp.w %a0,%d1
	jcc .L1255
	tst.w %d1
	jlt .L1256
	move.w %d3,%d1
	lsl.w #7,%d1
	cmp.w %a0,%d1
	jcc .L1257
	tst.w %d1
	jlt .L1258
	move.w %d3,%d1
	lsl.w #8,%d1
	cmp.w %a0,%d1
	jcc .L1259
	tst.w %d1
	jlt .L1260
	move.w %d3,%d1
	moveq #9,%d2
	lsl.w %d2,%d1
	cmp.w %a0,%d1
	jcc .L1261
	tst.w %d1
	jlt .L1262
	move.w %d3,%d1
	moveq #10,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1263
	tst.w %d1
	jlt .L1264
	move.w %d3,%d1
	moveq #11,%d6
	lsl.w %d6,%d1
	cmp.w %a0,%d1
	jcc .L1265
	tst.w %d1
	jlt .L1266
	move.w %d3,%d1
	moveq #12,%d4
	lsl.w %d4,%d1
	cmp.w %a0,%d1
	jcc .L1267
	tst.w %d1
	jlt .L1268
	move.w %d3,%d1
	moveq #13,%d2
	lsl.w %d2,%d1
	cmp.w %a0,%d1
	jcc .L1269
	tst.w %d1
	jlt .L1270
	move.w %d3,%d1
	moveq #14,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1271
	tst.w %d1
	jlt .L1272
	moveq #15,%d1
	lsl.w %d1,%d3
	cmp.w %a0,%d3
	jcc .L1273
	tst.w %d3
	jne .L1357
.L1274:
	tst.l 32(%sp)
	jne .L1241
	move.w %d3,%d0
.L1241:
	movem.l (%sp)+,#124
	rts
.L1261:
	cmp.w %a0,%d1
	jhi .L1307
	sub.w %d1,%d0
	move.w #512,%d4
	move.w %d4,%d3
.L1276:
	move.w %d4,%d6
	lsr.w #2,%d6
	move.w %d1,%d5
	lsr.w #2,%d5
	tst.w %d6
	jeq .L1274
	cmp.w %d0,%d5
	jhi .L1277
	sub.w %d5,%d0
	or.w %d6,%d3
.L1277:
	move.w %d4,%d2
	lsr.w #3,%d2
	move.w %d1,%d6
	lsr.w #3,%d6
	tst.w %d2
	jeq .L1274
	cmp.w %d0,%d6
	jhi .L1278
	sub.w %d6,%d0
	or.w %d2,%d3
.L1278:
	move.w %d4,%d2
	lsr.w #4,%d2
	move.w %d1,%d5
	lsr.w #4,%d5
	tst.w %d2
	jeq .L1274
	cmp.w %d0,%d5
	jhi .L1279
	sub.w %d5,%d0
	or.w %d2,%d3
.L1279:
	move.w %d4,%d6
	lsr.w #5,%d6
	move.w %d1,%d2
	lsr.w #5,%d2
	tst.w %d6
	jeq .L1274
	cmp.w %d0,%d2
	jhi .L1280
	sub.w %d2,%d0
	or.w %d6,%d3
.L1280:
	move.w %d4,%d6
	lsr.w #6,%d6
	move.w %d1,%d5
	lsr.w #6,%d5
	tst.w %d6
	jeq .L1274
	cmp.w %d0,%d5
	jhi .L1281
	sub.w %d5,%d0
	or.w %d6,%d3
.L1281:
	move.w %d4,%d2
	lsr.w #7,%d2
	move.w %d1,%d6
	lsr.w #7,%d6
	tst.w %d2
	jeq .L1274
	cmp.w %d0,%d6
	jhi .L1282
	sub.w %d6,%d0
	or.w %d2,%d3
.L1282:
	move.w %d4,%d2
	lsr.w #8,%d2
	move.w %d1,%d5
	lsr.w #8,%d5
	tst.w %d2
	jeq .L1274
	cmp.w %d0,%d5
	jhi .L1283
	sub.w %d5,%d0
	or.w %d2,%d3
.L1283:
	move.w %d4,%d2
	moveq #9,%d6
	lsr.w %d6,%d2
	move.w %d1,%d5
	moveq #9,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1274
	cmp.w %d0,%d5
	jhi .L1284
	sub.w %d5,%d0
	or.w %d2,%d3
.L1284:
	move.w %d4,%d2
	moveq #10,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #10,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1274
	cmp.w %d0,%d5
	jhi .L1285
	sub.w %d5,%d0
	or.w %d2,%d3
.L1285:
	move.w %d4,%d2
	moveq #11,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #11,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1274
	cmp.w %d0,%d5
	jhi .L1286
	sub.w %d5,%d0
	or.w %d2,%d3
.L1286:
	move.w %d4,%d2
	moveq #12,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #12,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1274
	cmp.w %d0,%d5
	jhi .L1287
	sub.w %d5,%d0
	or.w %d2,%d3
.L1287:
	move.w %d4,%d2
	moveq #13,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #13,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1274
	cmp.w %d0,%d5
	jhi .L1288
	sub.w %d5,%d0
	or.w %d2,%d3
.L1288:
	move.w %d4,%d2
	moveq #14,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #14,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1274
	cmp.w %d0,%d5
	jhi .L1289
	sub.w %d5,%d0
	or.w %d2,%d3
.L1289:
	moveq #15,%d2
	lsr.w %d2,%d1
	cmp.w #16384,%d4
	jeq .L1274
	cmp.w %d0,%d1
	jhi .L1297
	sub.w %d1,%d0
	or.w #1,%d3
	jra .L1274
.L1357:
	add.w #-32768,%d0
	move.w #16384,%d6
	move.w %d6,%d2
	move.w #-32768,%d1
	move.w %d1,%d4
	move.w %d1,%d3
.L1294:
	cmp.w %d0,%d6
	jhi .L1276
	sub.w %d6,%d0
	or.w %d2,%d3
	jra .L1276
.L1297:
	clr.w %d0
	jra .L1274
.L1356:
	cmp.w %d3,%d0
	jeq .L1295
	clr.w %d3
	jra .L1274
.L1244:
	sub.w %d3,%d0
	moveq #1,%d3
	jra .L1274
.L1245:
	cmp.w %a0,%d1
	jhi .L1299
	sub.w %d1,%d0
	moveq #2,%d4
	moveq #2,%d3
	jra .L1276
.L1246:
	sub.w %d1,%d0
	move.w %d3,%d6
	and.w #32767,%d6
	moveq #1,%d2
	moveq #2,%d4
	moveq #2,%d3
	jra .L1294
.L1247:
	cmp.w %a0,%d1
	jhi .L1300
	sub.w %d1,%d0
	moveq #4,%d4
	moveq #4,%d3
	jra .L1276
.L1248:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	moveq #2,%d2
	moveq #4,%d4
	moveq #4,%d3
	jra .L1294
.L1249:
	cmp.w %a0,%d1
	jhi .L1301
	sub.w %d1,%d0
	moveq #8,%d4
	moveq #8,%d3
	jra .L1276
.L1250:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	moveq #4,%d2
	moveq #8,%d4
	moveq #8,%d3
	jra .L1294
.L1251:
	cmp.w %a0,%d1
	jhi .L1302
	sub.w %d1,%d0
	moveq #16,%d4
	moveq #16,%d3
	jra .L1276
.L1252:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	moveq #8,%d2
	moveq #16,%d4
	moveq #16,%d3
	jra .L1294
.L1253:
	cmp.w %a0,%d1
	jhi .L1303
	sub.w %d1,%d0
	moveq #32,%d4
	moveq #32,%d3
	jra .L1276
.L1254:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	moveq #16,%d2
	moveq #32,%d4
	moveq #32,%d3
	jra .L1294
.L1255:
	cmp.w %a0,%d1
	jhi .L1304
	sub.w %d1,%d0
	moveq #64,%d4
	moveq #64,%d3
	jra .L1276
.L1256:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	moveq #32,%d2
	moveq #64,%d4
	moveq #64,%d3
	jra .L1294
.L1257:
	cmp.w %a0,%d1
	jhi .L1305
	sub.w %d1,%d0
	move.w #128,%d4
	move.w %d4,%d3
	jra .L1276
.L1258:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	moveq #64,%d2
	move.w #128,%d4
	move.w %d4,%d3
	jra .L1294
.L1260:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w #128,%d2
	move.w #256,%d4
	move.w %d4,%d3
	jra .L1294
.L1295:
	moveq #1,%d3
	clr.w %d0
	jra .L1274
.L1262:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w #256,%d2
	move.w #512,%d4
	move.w %d4,%d3
	jra .L1294
.L1299:
	moveq #2,%d4
.L1293:
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1264:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w #512,%d2
	move.w #1024,%d4
	move.w %d4,%d3
	jra .L1294
.L1300:
	moveq #4,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1266:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w #1024,%d2
	move.w #2048,%d4
	move.w %d4,%d3
	jra .L1294
.L1301:
	moveq #8,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1268:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w #2048,%d2
	move.w #4096,%d4
	move.w %d4,%d3
	jra .L1294
.L1270:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w #4096,%d2
	move.w #8192,%d4
	move.w %d4,%d3
	jra .L1294
.L1302:
	moveq #16,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1272:
	sub.w %d1,%d0
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w #8192,%d2
	move.w #16384,%d4
	move.w %d4,%d3
	jra .L1294
.L1303:
	moveq #32,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1304:
	moveq #64,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1273:
	move.w #-32768,%d1
	move.w %d1,%d4
	tst.w %d0
	jge .L1293
	move.w %d1,%d3
	clr.w %d0
	jra .L1276
.L1305:
	move.w #128,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1259:
	cmp.w %a0,%d1
	jhi .L1306
	sub.w %d1,%d0
	move.w #256,%d4
	move.w %d4,%d3
	jra .L1276
.L1306:
	move.w #256,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1269:
	cmp.w %a0,%d1
	jhi .L1311
	sub.w %d1,%d0
	move.w #8192,%d4
	move.w %d4,%d3
	jra .L1276
.L1263:
	cmp.w %a0,%d1
	jhi .L1308
	sub.w %d1,%d0
	move.w #1024,%d4
	move.w %d4,%d3
	jra .L1276
.L1311:
	move.w #8192,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1308:
	move.w #1024,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1307:
	move.w #512,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1267:
	cmp.w %a0,%d1
	jhi .L1310
	sub.w %d1,%d0
	move.w #4096,%d4
	move.w %d4,%d3
	jra .L1276
.L1265:
	cmp.w %a0,%d1
	jhi .L1309
	sub.w %d1,%d0
	move.w #2048,%d4
	move.w %d4,%d3
	jra .L1276
.L1271:
	cmp.w %a0,%d1
	jhi .L1312
	sub.w %d1,%d0
	move.w #16384,%d4
	move.w %d4,%d3
	jra .L1276
.L1310:
	move.w #4096,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1309:
	move.w #2048,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
.L1312:
	move.w #16384,%d4
	move.w %d4,%d2
	lsr.w #1,%d2
	move.w %d1,%d6
	lsr.w #1,%d6
	move.w %a0,%d0
	clr.w %d3
	jra .L1294
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
	jcc .L1360
	moveq #32,%d0
	moveq #1,%d2
.L1359:
	tst.l %d1
	jlt .L1360
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1361
	subq.l #1,%d0
	jne .L1359
	tst.l 16(%sp)
	jne .L1376
.L1358:
	move.l (%sp)+,%d2
	rts
.L1361:
	tst.l %d2
	jeq .L1368
.L1360:
	moveq #0,%d0
.L1365:
	cmp.l %a0,%d1
	jhi .L1364
	sub.l %d1,%a0
	or.l %d2,%d0
.L1364:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1365
	tst.l 16(%sp)
	jeq .L1358
.L1376:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1368:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1358
	jra .L1376
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
	jeq .L1378
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	moveq #0,%d1
.L1380:
	movem.l (%sp)+,#28
	rts
.L1378:
	move.l %d3,%d1
	tst.l %d2
	jeq .L1380
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
	jeq .L1385
	add.l %d0,%d0
	subx.l %d0,%d0
	move.w #-32,%a0
	add.l %a0,%d2
	asr.l %d2,%d1
	movem.l (%sp)+,#28
	rts
.L1385:
	tst.l %d2
	jeq .L1388
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1388:
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
	move.l %d2,%d3
	and.l #65280,%d3
	tst.l %d3
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
	seq %d3
	ext.w %d3
	move.w %d3,%a0
	move.l %a0,%d0
	neg.l %d0
	move.l %d0,%a1
	lea (%a1,%d0.l),%a0
	moveq #2,%d3
	sub.l %a0,%d3
	lsr.l %d3,%d2
	btst #1,%d2
	jne .L1396
	moveq #2,%d0
	sub.l %d2,%d0
	lea (%a0,%d1.l),%a1
	add.l %a1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1396:
	moveq #0,%d0
	lea (%a0,%d1.l),%a1
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
	jgt .L1404
	jlt .L1405
	cmp.l %a1,%a0
	jhi .L1404
	jcs .L1405
	moveq #1,%d0
	rts
.L1404:
	moveq #0,%d0
	rts
.L1405:
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
	jgt .L1412
	jlt .L1411
	cmp.l %d0,%a1
	jhi .L1412
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1412:
	moveq #-1,%d0
	rts
.L1411:
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
	moveq #15,%d3
	and.l %d2,%d3
	seq %d4
	ext.w %d4
	ext.l %d4
	neg.l %d4
	add.l %d4,%d4
	add.l %d4,%d4
	lsr.l %d4,%d2
	add.l %d4,%d1
	moveq #3,%d0
	and.l %d2,%d0
	seq %d3
	ext.w %d3
	ext.l %d3
	neg.l %d3
	add.l %d3,%d3
	lsr.l %d3,%d2
	moveq #3,%d4
	and.l %d4,%d2
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
	jeq .L1418
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	moveq #0,%d0
	movem.l (%sp)+,#28
	rts
.L1418:
	move.l %d1,%d0
	tst.l %d2
	jeq .L1421
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1421:
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
	jeq .L1439
	lea __muldf3,%a5
.L1441:
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
.L1439:
	move.l %a4,%d1
	jpl .L1448
	addq.l #1,%d1
.L1448:
	asr.l #1,%d1
	move.l %d1,%a4
	jeq .L1440
	lea __muldf3,%a5
.L1442:
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
	move.l %a4,%d2
	btst #0,%d2
	jne .L1441
	move.l %a4,%d3
	jpl .L1449
	addq.l #1,%d3
.L1449:
	asr.l #1,%d3
	move.l %d3,%a4
	jra .L1442
.L1440:
	cmp.w #0,%a6
	jlt .L1447
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31996
	addq.l #8,%sp
	rts
.L1447:
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
	jeq .L1451
	lea __mulsf3,%a2
.L1453:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L1451:
	move.l %d2,%d2
	jpl .L1460
	addq.l #1,%d2
.L1460:
	asr.l #1,%d2
	jeq .L1452
	lea __mulsf3,%a2
.L1454:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L1453
	move.l %d2,%d2
	jpl .L1461
	addq.l #1,%d2
.L1461:
	asr.l #1,%d2
	jra .L1454
.L1452:
	tst.l %d5
	jlt .L1459
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
.L1459:
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
	jhi .L1466
	jcs .L1467
	cmp.l %a1,%a0
	jhi .L1466
	jcs .L1467
	moveq #1,%d0
	rts
.L1466:
	moveq #0,%d0
	rts
.L1467:
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
	jhi .L1474
	jcs .L1473
	cmp.l %d0,%a1
	jhi .L1474
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1474:
	moveq #-1,%d0
	rts
.L1473:
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
	.globl	__gtxf2
	.globl	__moddi3
	.globl	__divdi3
	.globl	__modsi3
	.globl	__divsi3
	.globl	__mulsi3
	.globl	__muldi3
	.globl	__ltxf2
	.globl	__unordxf2
	.globl	__ltsf2
	.globl	__ltdf2
	.globl	__subsf3
	.globl	__gtsf2
	.globl	__unordsf2
	.globl	__subdf3
	.globl	__gtdf2
	.globl	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
