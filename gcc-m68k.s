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
	move.l %d1,%d2
	subq.l #1,%d2
	moveq #6,%d3
	cmp.l %d2,%d3
	jcc .L36
	move.l %a0,%d2
	or.l %d0,%d2
	moveq #3,%d3
	and.l %d3,%d2
	move.l %d0,%a1
	addq.l #1,%a1
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
	jne .L235
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L230
	tst.l %d0
	jeq .L235
.L236:
	move.l %d4,%d1
	move.l %d5,%d0
	move.l %d1,%d6
	move.l %d0,%d7
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
.L235:
	move.l %d2,%d1
	move.l %d3,%d0
	move.l %d1,%d6
	move.l %d0,%d7
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
	jne .L249
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L248
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L254
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L249
	move.l %d3,%d2
.L249:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L254:
	tst.l %d0
	jne .L249
.L248:
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
	jne .L262
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L256
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %a4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L270
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L271
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L256:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L270:
	tst.l %d0
	jeq .L256
.L262:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L271:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
	jra .L256
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
	jne .L278
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L280
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L274
	tst.l %d0
	jeq .L278
.L280:
	move.l %d2,%d1
	move.l %d3,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L274:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L280
.L278:
	move.l %d4,%d1
	move.l %d5,%d0
	move.l %d1,%d6
	move.l %d0,%d7
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
	jne .L291
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L293
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L298
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L293
	move.l %d3,%d2
.L293:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L298:
	tst.l %d0
	jne .L293
.L291:
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
	jne .L300
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L306
	move.l %a4,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L314
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L315
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L300:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L314:
	tst.l %d0
	jeq .L300
.L306:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L315:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
	jra .L300
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	lea (s.0),%a0
	jeq .L317
	lea digits,%a1
.L318:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L318
.L317:
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
	jeq .L335
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L327
	move.l %a0,4(%a1)
.L327:
	rts
.L335:
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
	jeq .L337
	move.l 4(%a0),4(%a1)
.L337:
	move.l 4(%a0),%a0
	cmp.w #0,%a0
	jeq .L336
	move.l %a1,(%a0)
.L336:
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
	jeq .L348
	move.l 40(%sp),%d2
	moveq #0,%d3
.L350:
	move.l %d2,%d6
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L347
	addq.l #1,%d3
	add.l %d5,%d2
	cmp.l %d4,%d3
	jne .L350
.L348:
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
	jeq .L347
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L347:
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
	jeq .L365
	move.l 36(%sp),%d2
	moveq #0,%d3
.L367:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L364
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d5,%d3
	jne .L367
.L365:
	moveq #0,%d4
.L364:
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
	jmi .L381
	rts
.L381:
	neg.l %d0
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a0
.L383:
	move.l %a0,%a3
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L383
	move.b %d0,%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-9,%a1),%a2
	moveq #4,%d1
	cmp.l %a2,%d1
	jcc .L383
	cmp.b #43,%d0
	jeq .L385
	cmp.b #45,%d0
	jeq .L386
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcs .L394
	move.l %a3,%a2
	sub.l %a3,%a3
.L388:
	moveq #0,%d0
.L391:
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
	jcc .L391
	cmp.w #0,%a3
	jne .L382
	move.l %a0,%d0
	sub.l %d1,%d0
.L382:
	movem.l (%sp)+,#3084
	rts
.L386:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L394
	move.w #1,%a3
	moveq #0,%d0
	jra .L391
.L385:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	sub.l %a3,%a3
	moveq #9,%d3
	cmp.l %a0,%d3
	jcc .L388
.L394:
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
.L405:
	move.l %a0,%a3
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L405
	move.b %d0,%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-9,%a1),%a2
	moveq #4,%d1
	cmp.l %a2,%d1
	jcc .L405
	cmp.b #43,%d0
	jeq .L407
	cmp.b #45,%d0
	jeq .L425
	lea (-48,%a1),%a1
	moveq #9,%d0
	move.l %a3,%a2
	cmp.l %a1,%d0
	jcs .L415
	sub.l %a3,%a3
.L409:
	moveq #0,%d0
.L412:
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
	jcc .L412
	cmp.w #0,%a3
	jne .L404
	move.l %a0,%d0
	sub.l %d1,%d0
.L404:
	movem.l (%sp)+,#3084
	rts
.L425:
	move.l %a0,%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	move.w #1,%a3
	moveq #9,%d3
	cmp.l %a0,%d3
	jcc .L409
.L415:
	moveq #0,%d0
	movem.l (%sp)+,#3084
	rts
.L407:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L415
	sub.l %a3,%a3
	jra .L409
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%a0
.L427:
	move.l %a0,%a2
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L427
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-9,%a1),%a3
	moveq #4,%d2
	cmp.l %a3,%d2
	jcc .L427
	cmp.b #43,%d0
	jeq .L429
	cmp.b #45,%d0
	jeq .L430
	lea (-48,%a1),%a1
	moveq #9,%d2
	cmp.l %a1,%d2
	jcs .L438
	move.l %a2,%a1
	sub.l %a2,%a2
.L432:
	clr.l %d4
	clr.l %d5
.L435:
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
	jcc .L435
	cmp.w #0,%a2
	jne .L426
	move.l %d6,%d4
	move.l %d7,%d5
	sub.l %d3,%d5
	subx.l %d2,%d4
.L426:
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#3324
	rts
.L430:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcs .L438
	move.w #1,%a2
	clr.l %d4
	clr.l %d5
	jra .L435
.L429:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	sub.l %a2,%a2
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L432
.L438:
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
	jeq .L449
	lea __mulsi3,%a3
.L452:
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
	jlt .L453
	jeq .L448
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	sub.l %d7,%d2
	jne .L452
.L449:
	moveq #0,%d3
.L448:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
.L453:
	move.l %d7,%d2
	jne .L452
	jra .L449
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
	jeq .L468
.L464:
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
	jeq .L463
	jle .L466
	move.l %d2,%d5
	add.l %d4,%d5
	subq.l #1,%d3
	asr.l #1,%d3
	jne .L464
.L468:
	moveq #0,%d2
.L463:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l (%sp)+,#7420
	rts
.L466:
	cmp.w #0,%a4
	jeq .L468
	move.l %a4,%d3
	jra .L464
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
	jlt .L485
	rts
.L485:
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
	jmi .L492
	rts
.L492:
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
	jlt .L499
	rts
.L499:
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
	jeq .L506
.L503:
	cmp.l %d1,%d0
	jeq .L502
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L503
.L506:
	sub.l %a0,%a0
.L502:
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
	jne .L512
.L511:
	tst.l %d0
	jeq .L512
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L511
.L512:
	cmp.l %d0,%d1
	jgt .L515
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L515:
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
.L520:
	move.l (%a2)+,%d0
	move.l %d0,(%a1)+
	jne .L520
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
	jeq .L527
	move.l %a1,%a0
.L526:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L526
	sub.l %a1,%a0
	move.l %a0,%d0
	asr.l #2,%d0
	rts
.L527:
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
	jeq .L538
	move.l 12(%sp),%a0
	move.l 16(%sp),%d0
.L533:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L534
	cmp.w #0,%a1
	jeq .L534
	subq.l #1,%d1
	jne .L533
.L538:
	moveq #0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L534:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L541
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L541:
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
	jeq .L547
	move.l 4(%sp),%a1
.L544:
	move.l %a1,%a0
	cmp.l (%a1)+,%d1
	jeq .L542
	subq.l #1,%d0
	jne .L544
.L547:
	sub.l %a0,%a0
.L542:
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
	jeq .L557
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L552:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #4,%d1
	addq.l #4,%d0
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L561
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L552
.L557:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L561:
	move.l (%a2),%d0
	move.l (%a1),%d1
	cmp.l %d0,%d1
	jgt .L562
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L562:
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
	jeq .L564
	add.l %d0,%d0
	add.l %d0,%d0
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L564:
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
	jeq .L578
	move.l %a0,%a3
	move.l %d1,%a2
	add.l %d1,%a2
	add.l %a2,%a2
	move.l %a0,%d0
	sub.l %a1,%d0
	cmp.l %d0,%a2
	jls .L586
	tst.l %d1
	jeq .L578
	lea (%a1,%a2.l),%a3
	lea (%a0,%a2.l),%a2
.L575:
	move.l -(%a3),-(%a2)
	cmp.l %a1,%a3
	jne .L575
.L578:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L586:
	move.l %d1,%d0
	subq.l #1,%d0
	tst.l %d1
	jeq .L578
.L576:
	move.l (%a1)+,(%a3)+
	dbra %d0,.L576
	clr.w %d0
	subq.l #1,%d0
	jcc .L576
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
	jeq .L588
	move.l %a0,%a1
.L589:
	move.l %d1,(%a1)+
	dbra %d0,.L589
	clr.w %d0
	subq.l #1,%d0
	jcc .L589
.L588:
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
	jls .L597
	move.l %d0,%a0
	add.l %d1,%a0
	tst.l %d1
	jeq .L596
	lea -1(%a1,%d1.l),%a1
.L599:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
	cmp.l %d0,%a0
	jne .L599
.L596:
	movem.l (%sp)+,#1036
	rts
.L597:
	cmp.l %d0,%a1
	jeq .L596
	tst.l %d1
	jeq .L596
	move.l %d1,%a0
	subq.l #1,%a0
	moveq #6,%d2
	cmp.l %a0,%d2
	jcc .L631
	move.l %a1,%d2
	or.l %d0,%d2
	moveq #3,%d3
	and.l %d3,%d2
	move.l %d0,%a0
	addq.l #1,%a0
	jne .L600
	move.l %a1,%d2
	sub.l %a0,%d2
	moveq #2,%d3
	cmp.l %d2,%d3
	jcc .L600
	move.l %d0,%a0
	moveq #-4,%d3
	and.l %d1,%d3
	move.l %a1,%d2
	add.l %d3,%d2
.L601:
	move.l (%a0)+,(%a1)+
	cmp.l %a1,%d2
	jne .L601
	add.l %d3,%d0
	move.l %d1,%a0
	sub.l %d3,%a0
	cmp.l %d1,%d3
	jeq .L596
	move.l %d0,%a2
	move.b (%a2),(%a1)
	moveq #1,%d1
	cmp.l %a0,%d1
	jeq .L596
	move.b 1(%a2),1(%a1)
	moveq #2,%d2
	cmp.l %a0,%d2
	jeq .L596
	move.b 2(%a2),2(%a1)
	movem.l (%sp)+,#1036
	rts
.L631:
	move.l %d0,%a0
	addq.l #1,%a0
.L600:
	add.l %d1,%d0
.L604:
	move.b -1(%a0),(%a1)+
	cmp.l %a0,%d0
	jeq .L596
	addq.l #1,%a0
	jra .L604
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
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L633
	move.l %d5,%d0
	move.l %a0,%d1
	lsl.l %d1,%d0
	moveq #0,%d6
	neg.l %d2
	moveq #63,%d1
	and.l %d1,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L635
.L639:
	move.l %d3,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d3
	or.l %d3,%d0
	or.l %d6,%d1
	movem.l (%sp)+,#124
	rts
.L633:
	moveq #31,%d1
	sub.l %d2,%d1
	move.l %d5,%d0
	lsr.l #1,%d0
	lsr.l %d1,%d0
	move.l %d3,%d1
	lsl.l %d2,%d1
	or.l %d1,%d0
	move.l %d5,%d6
	lsl.l %d2,%d6
	neg.l %d2
	moveq #63,%d1
	and.l %d1,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jge .L639
.L635:
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
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L641
	move.l %d5,%d1
	move.l %a0,%d0
	lsr.l %d0,%d1
	moveq #0,%d6
	neg.l %d2
	moveq #63,%d0
	and.l %d0,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L643
.L647:
	move.l %d3,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d3
	or.l %d6,%d0
	or.l %d3,%d1
	movem.l (%sp)+,#124
	rts
.L641:
	moveq #31,%d0
	sub.l %d2,%d0
	move.l %d5,%d1
	add.l %d1,%d1
	lsl.l %d0,%d1
	move.l %d3,%d0
	lsr.l %d2,%d0
	or.l %d0,%d1
	move.l %d5,%d6
	lsr.l %d2,%d6
	neg.l %d2
	moveq #63,%d0
	and.l %d0,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jge .L647
.L643:
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
.L673:
	move.l %d2,%d1
	lsr.l %d0,%d1
	addq.l #1,%d0
	btst #0,%d1
	jne .L670
	moveq #32,%d1
	cmp.l %d0,%d1
	jne .L673
	moveq #0,%d0
.L670:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L680
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L677
	moveq #1,%d0
.L679:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L679
.L677:
	rts
.L680:
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
	jlt .L688
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L691
	move.l %d2,%d0
.L685:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L688:
	moveq #1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L691:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L685
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
	jlt .L695
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L698
	move.l %d2,%d0
.L692:
	movem.l (%sp)+,#52
	rts
.L695:
	moveq #1,%d0
	movem.l (%sp)+,#52
	rts
.L698:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L692
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
	jlt .L702
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
	jle .L705
	move.l %d2,%d0
.L699:
	movem.l (%sp)+,#60
	rts
.L702:
	moveq #1,%d0
	movem.l (%sp)+,#60
	rts
.L705:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L699
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
	jne .L709
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #4,%sp
	move.l %d4,(%sp)
	move.l %d0,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L709
	tst.l %d2
	jlt .L725
	move.l #0x40000000,%d3
.L711:
	btst #0,%d2
	jeq .L712
	lea __mulsf3,%a2
.L713:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L712:
	move.l %d2,%d2
	jpl .L726
	addq.l #1,%d2
.L726:
	asr.l #1,%d2
	jeq .L709
	lea __mulsf3,%a2
.L714:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L713
	move.l %d2,%d2
	jpl .L727
	addq.l #1,%d2
.L727:
	asr.l #1,%d2
	jra .L714
.L709:
	move.l %d4,%d0
	movem.l (%sp)+,#1052
	rts
.L725:
	move.l #0x3f000000,%d3
	jra .L711
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
	jne .L729
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
	jeq .L729
	tst.l %d2
	jlt .L745
	move.l #1073741824,%a4
	sub.l %a5,%a5
.L731:
	btst #0,%d2
	jeq .L732
	lea __muldf3,%a6
.L733:
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
.L732:
	move.l %d2,%d2
	jpl .L746
	addq.l #1,%d2
.L746:
	asr.l #1,%d2
	jeq .L729
	lea __muldf3,%a6
.L734:
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
	jne .L733
	move.l %d2,%d2
	jpl .L747
	addq.l #1,%d2
.L747:
	asr.l #1,%d2
	jra .L734
.L729:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31988
	rts
.L745:
	move.l #1071644672,%a4
	sub.l %a5,%a5
	jra .L731
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
	jne .L749
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
	jeq .L749
	tst.l %d2
	jlt .L765
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
.L751:
	btst #0,%d2
	jeq .L752
	lea __mulxf3,%a2
.L753:
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
.L752:
	move.l %d2,%d2
	jpl .L766
	addq.l #1,%d2
.L766:
	asr.l #1,%d2
	jeq .L749
	lea __mulxf3,%a2
.L754:
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
	jne .L753
	move.l %d2,%d2
	jpl .L767
	addq.l #1,%d2
.L767:
	asr.l #1,%d2
	jra .L754
.L749:
	move.l %a4,(%a3)
	move.l %a5,4(%a3)
	move.l %a6,8(%a3)
	move.l %a3,%a0
	movem.l (%sp)+,#31804
	lea (24,%sp),%sp
	rts
.L765:
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
	jra .L751
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	movem.l #12344,-(%sp)
	move.l 24(%sp),%a0
	move.l 28(%sp),%a3
	move.l 32(%sp),%d1
	jeq .L769
	move.l %d1,%d0
	subq.l #1,%d0
	moveq #3,%d2
	cmp.l %d0,%d2
	jcc .L770
	move.l %a0,%d0
	move.l %a3,%d3
	or.l %d3,%d0
	and.l %d2,%d0
	jne .L770
	move.l %a3,%a2
	moveq #-4,%d2
	and.l %d1,%d2
	lea (%a0,%d2.l),%a4
	move.l %a0,%a1
.L771:
	move.l (%a2)+,%d0
	move.l (%a1),%d3
	eor.l %d3,%d0
	move.l %d0,(%a1)+
	cmp.l %a4,%a1
	jne .L771
	add.l %d2,%a3
	move.l %d1,%d0
	sub.l %d2,%d0
	cmp.l %d2,%d1
	jeq .L769
	move.b (%a3),%d1
	eor.b %d1,(%a4)
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L769
	move.b 1(%a3),%d3
	eor.b %d3,1(%a4)
	subq.l #2,%d0
	jeq .L769
	move.b 2(%a3),%d2
	eor.b %d2,2(%a4)
.L769:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L770:
	add.l %a3,%d1
	move.l %a0,%a1
.L773:
	addq.l #1,%a1
	move.b (%a3)+,%d3
	eor.b %d3,-1(%a1)
	cmp.l %d1,%a3
	jeq .L769
	addq.l #1,%a1
	move.b (%a3)+,%d3
	eor.b %d3,-1(%a1)
	cmp.l %d1,%a3
	jne .L773
	jra .L769
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
	jeq .L790
.L791:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L791
.L790:
	tst.l %d0
	jeq .L792
	move.l 12(%sp),%a2
.L793:
	move.b (%a2)+,%d1
	move.b %d1,(%a1)+
	jeq .L795
	subq.l #1,%d0
	jne .L793
.L792:
	clr.b (%a1)
.L795:
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
	jeq .L804
	tst.b (%a0,%d0.l)
	jne .L807
.L804:
	rts
.L807:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jeq .L804
	tst.b (%a0,%d0.l)
	jeq .L804
	jra .L807
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d2
	move.b (%a0),%d1
	jeq .L818
.L814:
	move.l %d2,%a1
.L817:
	move.b (%a1)+,%d0
	jeq .L822
	cmp.b %d0,%d1
	jne .L817
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L822:
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L814
.L818:
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
.L825:
	move.l %a2,%d2
	move.b (%a2)+,%d1
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %d3,%a1
	jeq .L829
	tst.b %d1
	jne .L825
.L830:
	move.l %a0,%d0
	movem.l (%sp)+,#1036
	rts
.L829:
	move.l %d2,%a0
	tst.b %d1
	jne .L825
	jra .L830
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #15408,-(%sp)
	move.l 28(%sp),%d1
	move.l 32(%sp),%a3
	move.b (%a3),%d3
	jeq .L841
	move.l %a3,%a0
.L833:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L833
	move.l %a0,%d5
	sub.l %a3,%d5
	cmp.l %a0,%a3
	jeq .L841
	subq.l #1,%d5
.L839:
	move.l %d1,%a0
	move.b (%a0),%d0
	addq.l #1,%d1
	cmp.b %d0,%d3
	jeq .L838
	tst.b %d0
	jne .L839
	sub.l %a0,%a0
.L831:
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
.L838:
	move.b %d3,%d0
	move.l %a3,%d2
	move.l %a0,%d4
	add.l %d5,%d4
	move.l %a0,%a1
.L835:
	move.l %d2,%a2
	move.b (%a2),%d1
	addq.l #1,%d2
	tst.b %d1
	jeq .L836
	cmp.l %a1,%d4
	jeq .L836
	cmp.b %d1,%d0
	jne .L836
	addq.l #1,%a1
	move.b (%a1),%d0
	jne .L835
	move.l %d2,%a2
.L836:
	cmp.b (%a2),%d0
	jeq .L831
	move.l %a0,%d1
	addq.l #1,%d1
	jra .L839
.L841:
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
	jlt .L862
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L854
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L853
.L854:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
.L862:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L854
.L853:
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
	jeq .L863
	cmp.l 28(%sp),%d1
	jhi .L874
	move.l 28(%sp),%d0
	sub.l %d1,%d0
	add.l %a0,%d0
	cmp.l %a0,%d0
	jcs .L874
	move.l 32(%sp),%a4
	move.b (%a4)+,%d3
	move.l %d1,%d2
	subq.l #1,%d2
.L869:
	move.l %a0,%a2
	cmp.b (%a2)+,%d3
	jeq .L881
	move.l %a2,%a0
.L865:
	cmp.l %d0,%a0
	jls .L869
.L874:
	sub.l %a0,%a0
.L863:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L881:
	tst.l %d2
	jeq .L863
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
.L866:
	cmpm.b (%a3)+,(%a1)+
	jne .L882
.L867:
	cmp.l %a1,%d1
	jeq .L863
	cmpm.b (%a3)+,(%a1)+
	jeq .L867
.L882:
	cmp.l %d0,%a2
	jhi .L874
	move.l %a2,%a0
	cmp.b (%a0)+,%d3
	jne .L865
	move.l %a2,%d1
	move.l %a0,%a2
	move.l %d1,%a0
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
	jra .L866
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	jeq .L884
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L884:
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
	jlt .L915
	lea __gedf2,%a4
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L916
	moveq #0,%d7
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
.L899:
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
	jge .L899
.L900:
	move.l 76(%sp),%a0
	move.l %d6,(%a0)
	move.l %d2,%a1
	tst.l %d7
	jeq .L906
	add.l #-2147483648,%a1
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (20,%sp),%sp
	rts
.L916:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L896
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L905
.L896:
	move.l 76(%sp),%a0
	clr.l (%a0)
	move.l %d2,%a1
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (20,%sp),%sp
	rts
.L915:
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
	jgt .L917
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
	jra .L899
.L906:
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (20,%sp),%sp
	rts
.L917:
	clr.l -(%sp)
	move.l #-1075838976,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L896
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
.L901:
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
	jge .L900
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
	jlt .L901
	jra .L900
.L905:
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
	jra .L901
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
	jeq .L918
.L920:
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
	jne .L920
.L918:
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
	jls .L927
	moveq #32,%d0
	moveq #1,%d2
.L926:
	tst.l %d1
	jlt .L927
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L928
	subq.l #1,%d0
	jne .L926
	tst.l 16(%sp)
	jne .L943
.L925:
	move.l (%sp)+,%d2
	rts
.L928:
	tst.l %d2
	jeq .L935
.L927:
	moveq #0,%d0
.L932:
	cmp.l %a0,%d1
	jhi .L931
	sub.l %d1,%a0
	or.l %d2,%d0
.L931:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L932
	tst.l 16(%sp)
	jeq .L925
.L943:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L935:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L925
	jra .L943
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
	jeq .L946
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
	move.l (%sp)+,%d2
	rts
.L946:
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
	jeq .L951
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
	movem.l (%sp)+,#252
	rts
.L951:
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
	jeq .L954
.L956:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
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
	movem.l #15928,-(%sp)
	move.l 36(%sp),%a2
	move.l 40(%sp),%a3
	move.l 44(%sp),%d2
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
	move.l %a3,%a0
	move.l %a2,%a1
	lsl.l #3,%d0
	add.l %a3,%d0
.L966:
	move.l (%a0)+,%d3
	move.l (%a0)+,%d4
	move.l %d3,(%a1)+
	move.l %d4,(%a1)+
	cmp.l %a0,%d0
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
	moveq #2,%d6
	cmp.l %a1,%d6
	jcc .L968
	move.l %a0,%d5
	or.l %d0,%d5
	moveq #3,%d6
	and.l %d6,%d5
	jne .L968
	move.l %d0,%a1
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L969:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d0
	jne .L969
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L961
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d0
	addq.l #1,%d0
	cmp.l %d2,%d0
	jcc .L961
	move.b (%a3,%d0.l),(%a2,%d0.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L961
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L961:
	movem.l (%sp)+,#7292
	rts
.L993:
	add.l %d2,%a2
	tst.l %d2
	jeq .L961
.L973:
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jeq .L961
	move.b -(%a0),-(%a2)
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
	move.l %d0,%a1
	move.l %d3,%a0
	add.l %a3,%d2
.L971:
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jeq .L961
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jne .L971
	jra .L961
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
	jhi .L995
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L1025
.L995:
	tst.l %d3
	jeq .L998
	move.l %d3,%d0
	subq.l #1,%d0
	moveq #8,%d1
	cmp.l %d0,%d1
	jcc .L999
	move.l %a3,%d0
	move.l %a2,%d1
	or.l %d1,%d0
	moveq #3,%d1
	and.l %d1,%d0
	jne .L999
	move.l %a3,%d0
	addq.l #2,%d0
	cmp.l %a2,%d0
	jeq .L999
	move.l %d2,%d0
	lsr.l #2,%d0
	move.l %a3,%a1
	add.l %d0,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %a2,%d1
	move.l %a2,%a0
.L1000:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d1
	jne .L1000
	cmp.l %d3,%d0
	jeq .L998
	add.l %d0,%d0
	move.w (%a3,%d0.l),(%a2,%d0.l)
.L998:
	btst #0,%d2
	jeq .L994
	move.b -1(%a3,%d2.l),-1(%a2,%d2.l)
.L994:
	movem.l (%sp)+,#3084
	rts
.L1025:
	add.l %d2,%a2
	tst.l %d2
	jeq .L994
.L1005:
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jeq .L994
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jne .L1005
	jra .L994
.L999:
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d3,%d3
	move.l %d3,%d0
	add.l %a3,%d0
.L1002:
	move.w (%a0)+,(%a1)+
	cmp.l %d0,%a0
	jeq .L998
	move.w (%a0)+,(%a1)+
	cmp.l %d0,%a0
	jne .L1002
	jra .L998
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
	jhi .L1027
	lea (%a3,%d2.l),%a0
	cmp.l %a0,%a2
	jls .L1058
.L1027:
	tst.l %d0
	jeq .L1030
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %d0,%d0
	add.l %a3,%d0
.L1031:
	move.l (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L1031
	cmp.l %d2,%d1
	jcc .L1026
	move.l %d2,%d4
	sub.l %d1,%d4
	move.l %d4,%d0
	subq.l #1,%d0
	moveq #6,%d3
	cmp.l %d0,%d3
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
	moveq #3,%d6
	and.l %d6,%d5
	jne .L1033
	move.l %d0,%a1
	moveq #-4,%d3
	and.l %d4,%d3
	move.l %a0,%d0
	add.l %d3,%d0
.L1034:
	move.l (%a1)+,(%a0)+
	cmp.l %a0,%d0
	jne .L1034
	add.l %d3,%d1
	cmp.l %d4,%d3
	jeq .L1026
	move.b (%a3,%d1.l),(%a2,%d1.l)
	move.l %d1,%d0
	addq.l #1,%d0
	cmp.l %d2,%d0
	jcc .L1026
	move.b (%a3,%d0.l),(%a2,%d0.l)
	addq.l #2,%d1
	cmp.l %d2,%d1
	jcc .L1026
	move.b (%a3,%d1.l),(%a2,%d1.l)
.L1026:
	movem.l (%sp)+,#7292
	rts
.L1058:
	add.l %d2,%a2
	tst.l %d2
	jeq .L1026
.L1038:
	move.b -(%a0),-(%a2)
	cmp.l %a3,%a0
	jeq .L1026
	move.b -(%a0),-(%a2)
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
	move.l %d0,%a1
	move.l %d3,%a0
	add.l %a3,%d2
.L1036:
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jeq .L1026
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d2
	jne .L1036
	jra .L1026
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
	jmi .L1074
	move.l %d1,%d0
	moveq #14,%d3
	asr.l %d3,%d0
	jne .L1071
	move.l %d1,%d0
	moveq #13,%d3
	asr.l %d3,%d0
	jne .L1075
	move.l %d1,%d0
	moveq #12,%d3
	asr.l %d3,%d0
	jne .L1076
	move.l %d1,%d0
	moveq #11,%d3
	asr.l %d3,%d0
	jne .L1077
	move.l %d1,%d0
	moveq #10,%d3
	asr.l %d3,%d0
	jne .L1078
	move.l %d1,%d0
	moveq #9,%d3
	asr.l %d3,%d0
	jne .L1079
	move.l %d1,%d0
	asr.l #8,%d0
	jne .L1080
	move.l %d1,%d0
	asr.l #7,%d0
	jne .L1081
	move.l %d1,%d0
	asr.l #6,%d0
	jne .L1082
	move.l %d1,%d0
	asr.l #5,%d0
	jne .L1083
	move.l %d1,%d0
	asr.l #4,%d0
	jne .L1084
	move.l %d1,%d0
	asr.l #3,%d0
	jne .L1085
	move.l %d1,%d0
	asr.l #2,%d0
	jne .L1086
	asr.l #1,%d1
	jne .L1087
	moveq #16,%d0
	tst.w %d2
	jne .L1092
.L1071:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1074:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1085:
	moveq #12,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1092:
	moveq #15,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1075:
	moveq #2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1076:
	moveq #3,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1077:
	moveq #4,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1078:
	moveq #5,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1079:
	moveq #6,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1080:
	moveq #7,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1081:
	moveq #8,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1082:
	moveq #9,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1083:
	moveq #10,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1084:
	moveq #11,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1086:
	moveq #13,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1087:
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
	jne .L1096
	btst #1,%d1
	jne .L1097
	btst #2,%d1
	jne .L1098
	btst #3,%d1
	jne .L1099
	btst #4,%d1
	jne .L1100
	btst #5,%d1
	jne .L1101
	btst #6,%d1
	jne .L1102
	tst.b %d1
	jmi .L1103
	btst #8,%d1
	jne .L1104
	btst #9,%d1
	jne .L1105
	btst #10,%d1
	jne .L1106
	btst #11,%d1
	jne .L1107
	btst #12,%d1
	jne .L1108
	btst #13,%d1
	jne .L1109
	btst #14,%d1
	jne .L1110
	moveq #16,%d0
	tst.w %d1
	jmi .L1115
	rts
.L1096:
	moveq #0,%d0
	rts
.L1097:
	moveq #1,%d0
	rts
.L1108:
	moveq #12,%d0
	rts
.L1115:
	moveq #15,%d0
	rts
.L1098:
	moveq #2,%d0
	rts
.L1099:
	moveq #3,%d0
	rts
.L1100:
	moveq #4,%d0
	rts
.L1101:
	moveq #5,%d0
	rts
.L1102:
	moveq #6,%d0
	rts
.L1103:
	moveq #7,%d0
	rts
.L1104:
	moveq #8,%d0
	rts
.L1105:
	moveq #9,%d0
	rts
.L1106:
	moveq #10,%d0
	rts
.L1107:
	moveq #11,%d0
	rts
.L1109:
	moveq #13,%d0
	rts
.L1110:
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
	jge .L1124
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1124:
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
	jeq .L1129
.L1131:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L1131
.L1129:
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
	jeq .L1136
	tst.l %d3
	jeq .L1136
.L1138:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L1138
.L1136:
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
	jcc .L1147
	moveq #32,%d0
	moveq #1,%d2
.L1146:
	tst.l %d1
	jlt .L1147
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1148
	subq.l #1,%d0
	jne .L1146
	tst.l 16(%sp)
	jne .L1163
.L1145:
	move.l (%sp)+,%d2
	rts
.L1148:
	tst.l %d2
	jeq .L1155
.L1147:
	moveq #0,%d0
.L1152:
	cmp.l %a0,%d1
	jhi .L1151
	sub.l %d1,%a0
	or.l %d2,%d0
.L1151:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1152
	tst.l 16(%sp)
	jeq .L1145
.L1163:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1155:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1145
	jra .L1163
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
	jlt .L1167
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L1170
	move.l %d2,%d0
.L1164:
	movem.l (%sp)+,#28
	rts
.L1170:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L1164
.L1167:
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
	jlt .L1174
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L1177
	move.l %d6,%d0
.L1171:
	movem.l (%sp)+,#124
	rts
.L1177:
	moveq #0,%d6
	move.l %d6,%d0
	jra .L1171
.L1174:
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
	jmi .L1198
	jeq .L1188
	sub.l %a0,%a0
	moveq #32,%d4
	moveq #0,%d0
.L1187:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L1186
	subq.b #1,%d4
	jne .L1187
.L1186:
	cmp.w #0,%a0
	jeq .L1182
	neg.l %d0
.L1182:
	movem.l (%sp)+,#28
	rts
.L1198:
	neg.l %d2
	move.w #1,%a0
	moveq #32,%d4
	moveq #0,%d0
	jra .L1187
.L1188:
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
	jlt .L1219
	moveq #1,%d0
	sub.l %a1,%a1
	tst.l %d1
	jlt .L1220
.L1201:
	move.l %d3,%a0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1203
	moveq #32,%d0
	moveq #1,%d2
.L1202:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1206
	subq.l #1,%d0
	jne .L1202
.L1206:
	moveq #0,%d0
	tst.l %d2
	jeq .L1204
.L1203:
	moveq #0,%d0
.L1208:
	cmp.l %a0,%d1
	jhi .L1207
	sub.l %d1,%a0
	or.l %d2,%d0
.L1207:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1208
.L1204:
	cmp.w #0,%a1
	jeq .L1199
	neg.l %d0
.L1199:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1220:
	neg.l %d1
	move.l %d0,%a1
	jra .L1201
.L1219:
	neg.l %d3
	moveq #0,%d0
	move.w #1,%a1
	tst.l %d1
	jge .L1201
	jra .L1220
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	jmi .L1241
	sub.l %a1,%a1
	move.l 16(%sp),%d1
	jmi .L1242
.L1223:
	move.l %d3,%d0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1230
	move.w #32,%a0
	moveq #1,%d2
.L1224:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1228
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L1224
.L1228:
	tst.l %d2
	jeq .L1243
.L1230:
	cmp.l %d0,%d1
	jhi .L1229
	sub.l %d1,%d0
.L1229:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1230
.L1226:
	cmp.w #0,%a1
	jeq .L1221
	neg.l %d0
.L1221:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1242:
	neg.l %d1
	jra .L1223
.L1241:
	neg.l %d3
	move.w #1,%a1
	move.l 16(%sp),%d1
	jpl .L1223
	jra .L1242
.L1243:
	move.l %d3,%d0
	jra .L1226
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
	jls .L1359
	tst.w %d3
	jlt .L1247
	add.w %d3,%d1
	cmp.w %a0,%d1
	jcc .L1248
	tst.w %d1
	jlt .L1249
	add.w %d1,%d1
	cmp.w %a0,%d1
	jcc .L1250
	tst.w %d1
	jlt .L1251
	move.w %d3,%d1
	lsl.w #3,%d1
	cmp.w %a0,%d1
	jcc .L1252
	tst.w %d1
	jlt .L1253
	move.w %d3,%d1
	lsl.w #4,%d1
	cmp.w %a0,%d1
	jcc .L1254
	tst.w %d1
	jlt .L1255
	move.w %d3,%d1
	lsl.w #5,%d1
	cmp.w %a0,%d1
	jcc .L1256
	tst.w %d1
	jlt .L1257
	move.w %d3,%d1
	lsl.w #6,%d1
	cmp.w %a0,%d1
	jcc .L1258
	tst.w %d1
	jlt .L1259
	move.w %d3,%d1
	lsl.w #7,%d1
	cmp.w %a0,%d1
	jcc .L1260
	tst.w %d1
	jlt .L1261
	move.w %d3,%d1
	lsl.w #8,%d1
	cmp.w %a0,%d1
	jcc .L1262
	tst.w %d1
	jlt .L1263
	move.w %d3,%d1
	moveq #9,%d2
	lsl.w %d2,%d1
	cmp.w %a0,%d1
	jcc .L1264
	tst.w %d1
	jlt .L1265
	move.w %d3,%d1
	moveq #10,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1266
	tst.w %d1
	jlt .L1267
	move.w %d3,%d1
	moveq #11,%d6
	lsl.w %d6,%d1
	cmp.w %a0,%d1
	jcc .L1268
	tst.w %d1
	jlt .L1269
	move.w %d3,%d1
	moveq #12,%d2
	lsl.w %d2,%d1
	cmp.w %a0,%d1
	jcc .L1270
	tst.w %d1
	jlt .L1271
	move.w %d3,%d1
	moveq #13,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1272
	tst.w %d1
	jlt .L1273
	move.w %d3,%d1
	moveq #14,%d6
	lsl.w %d6,%d1
	cmp.w %a0,%d1
	jcc .L1274
	tst.w %d1
	jlt .L1275
	moveq #15,%d1
	lsl.w %d1,%d3
	cmp.w %a0,%d3
	jcc .L1276
	tst.w %d3
	jne .L1360
.L1277:
	tst.l 32(%sp)
	jne .L1244
	move.w %d3,%d0
.L1244:
	movem.l (%sp)+,#124
	rts
.L1264:
	cmp.w %a0,%d1
	jhi .L1310
	sub.w %d1,%d0
	move.w #512,%d4
	move.w %d4,%d3
.L1279:
	move.w %d4,%d2
	lsr.w #2,%d2
	move.w %d1,%d5
	lsr.w #2,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1280
	sub.w %d5,%d0
	or.w %d2,%d3
.L1280:
	move.w %d4,%d2
	lsr.w #3,%d2
	move.w %d1,%d5
	lsr.w #3,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1281
	sub.w %d5,%d0
	or.w %d2,%d3
.L1281:
	move.w %d4,%d2
	lsr.w #4,%d2
	move.w %d1,%d5
	lsr.w #4,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1282
	sub.w %d5,%d0
	or.w %d2,%d3
.L1282:
	move.w %d4,%d2
	lsr.w #5,%d2
	move.w %d1,%d5
	lsr.w #5,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1283
	sub.w %d5,%d0
	or.w %d2,%d3
.L1283:
	move.w %d4,%d2
	lsr.w #6,%d2
	move.w %d1,%d5
	lsr.w #6,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1284
	sub.w %d5,%d0
	or.w %d2,%d3
.L1284:
	move.w %d4,%d2
	lsr.w #7,%d2
	move.w %d1,%d5
	lsr.w #7,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1285
	sub.w %d5,%d0
	or.w %d2,%d3
.L1285:
	move.w %d4,%d2
	lsr.w #8,%d2
	move.w %d1,%d5
	lsr.w #8,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1286
	sub.w %d5,%d0
	or.w %d2,%d3
.L1286:
	move.w %d4,%d2
	moveq #9,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #9,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1287
	sub.w %d5,%d0
	or.w %d2,%d3
.L1287:
	move.w %d4,%d2
	moveq #10,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #10,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1288
	sub.w %d5,%d0
	or.w %d2,%d3
.L1288:
	move.w %d4,%d2
	moveq #11,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #11,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1289
	sub.w %d5,%d0
	or.w %d2,%d3
.L1289:
	move.w %d4,%d2
	moveq #12,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #12,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1290
	sub.w %d5,%d0
	or.w %d2,%d3
.L1290:
	move.w %d4,%d2
	moveq #13,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #13,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1291
	sub.w %d5,%d0
	or.w %d2,%d3
.L1291:
	move.w %d4,%d2
	moveq #14,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #14,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1277
	cmp.w %d0,%d5
	jhi .L1292
	sub.w %d5,%d0
	or.w %d2,%d3
.L1292:
	moveq #15,%d2
	lsr.w %d2,%d1
	cmp.w #16384,%d4
	jeq .L1277
	cmp.w %d0,%d1
	jhi .L1300
	sub.w %d1,%d0
	or.w #1,%d3
	jra .L1277
.L1360:
	add.w #-32768,%d0
	move.w #16384,%d2
	move.w %d2,%d5
	move.w #-32768,%d1
	move.w %d1,%d4
	move.w %d1,%d3
.L1297:
	cmp.w %d0,%d2
	jhi .L1279
	sub.w %d2,%d0
	or.w %d5,%d3
	jra .L1279
.L1300:
	clr.w %d0
	jra .L1277
.L1359:
	cmp.w %d3,%d0
	jeq .L1298
	clr.w %d3
	jra .L1277
.L1247:
	sub.w %d3,%d0
	moveq #1,%d3
	jra .L1277
.L1248:
	cmp.w %a0,%d1
	jhi .L1302
	sub.w %d1,%d0
	moveq #2,%d4
	moveq #2,%d3
	jra .L1279
.L1249:
	sub.w %d1,%d0
	move.w %d3,%d2
	and.w #32767,%d2
	moveq #1,%d5
	moveq #2,%d4
	moveq #2,%d3
	jra .L1297
.L1250:
	cmp.w %a0,%d1
	jhi .L1303
	sub.w %d1,%d0
	moveq #4,%d4
	moveq #4,%d3
	jra .L1279
.L1251:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #2,%d5
	moveq #4,%d4
	moveq #4,%d3
	jra .L1297
.L1252:
	cmp.w %a0,%d1
	jhi .L1304
	sub.w %d1,%d0
	moveq #8,%d4
	moveq #8,%d3
	jra .L1279
.L1253:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #4,%d5
	moveq #8,%d4
	moveq #8,%d3
	jra .L1297
.L1254:
	cmp.w %a0,%d1
	jhi .L1305
	sub.w %d1,%d0
	moveq #16,%d4
	moveq #16,%d3
	jra .L1279
.L1255:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #8,%d5
	moveq #16,%d4
	moveq #16,%d3
	jra .L1297
.L1256:
	cmp.w %a0,%d1
	jhi .L1306
	sub.w %d1,%d0
	moveq #32,%d4
	moveq #32,%d3
	jra .L1279
.L1257:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #16,%d5
	moveq #32,%d4
	moveq #32,%d3
	jra .L1297
.L1258:
	cmp.w %a0,%d1
	jhi .L1307
	sub.w %d1,%d0
	moveq #64,%d4
	moveq #64,%d3
	jra .L1279
.L1259:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #32,%d5
	moveq #64,%d4
	moveq #64,%d3
	jra .L1297
.L1260:
	cmp.w %a0,%d1
	jhi .L1308
	sub.w %d1,%d0
	move.w #128,%d4
	move.w %d4,%d3
	jra .L1279
.L1261:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #64,%d5
	move.w #128,%d4
	move.w %d4,%d3
	jra .L1297
.L1263:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #128,%d5
	move.w #256,%d4
	move.w %d4,%d3
	jra .L1297
.L1298:
	moveq #1,%d3
	clr.w %d0
	jra .L1277
.L1265:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #256,%d5
	move.w #512,%d4
	move.w %d4,%d3
	jra .L1297
.L1302:
	moveq #2,%d4
.L1296:
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1267:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #512,%d5
	move.w #1024,%d4
	move.w %d4,%d3
	jra .L1297
.L1303:
	moveq #4,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1269:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #1024,%d5
	move.w #2048,%d4
	move.w %d4,%d3
	jra .L1297
.L1304:
	moveq #8,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1271:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #2048,%d5
	move.w #4096,%d4
	move.w %d4,%d3
	jra .L1297
.L1273:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #4096,%d5
	move.w #8192,%d4
	move.w %d4,%d3
	jra .L1297
.L1305:
	moveq #16,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1275:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #8192,%d5
	move.w #16384,%d4
	move.w %d4,%d3
	jra .L1297
.L1306:
	moveq #32,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1307:
	moveq #64,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1276:
	move.w #-32768,%d1
	move.w %d1,%d4
	tst.w %d0
	jge .L1296
	move.w %d1,%d3
	clr.w %d0
	jra .L1279
.L1308:
	move.w #128,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1262:
	cmp.w %a0,%d1
	jhi .L1309
	sub.w %d1,%d0
	move.w #256,%d4
	move.w %d4,%d3
	jra .L1279
.L1309:
	move.w #256,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1272:
	cmp.w %a0,%d1
	jhi .L1314
	sub.w %d1,%d0
	move.w #8192,%d4
	move.w %d4,%d3
	jra .L1279
.L1266:
	cmp.w %a0,%d1
	jhi .L1311
	sub.w %d1,%d0
	move.w #1024,%d4
	move.w %d4,%d3
	jra .L1279
.L1314:
	move.w #8192,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1311:
	move.w #1024,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1310:
	move.w #512,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1270:
	cmp.w %a0,%d1
	jhi .L1313
	sub.w %d1,%d0
	move.w #4096,%d4
	move.w %d4,%d3
	jra .L1279
.L1268:
	cmp.w %a0,%d1
	jhi .L1312
	sub.w %d1,%d0
	move.w #2048,%d4
	move.w %d4,%d3
	jra .L1279
.L1274:
	cmp.w %a0,%d1
	jhi .L1315
	sub.w %d1,%d0
	move.w #16384,%d4
	move.w %d4,%d3
	jra .L1279
.L1313:
	move.w #4096,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1312:
	move.w #2048,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
.L1315:
	move.w #16384,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1297
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
	jcc .L1363
	moveq #32,%d0
	moveq #1,%d2
.L1362:
	tst.l %d1
	jlt .L1363
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1364
	subq.l #1,%d0
	jne .L1362
	tst.l 16(%sp)
	jne .L1379
.L1361:
	move.l (%sp)+,%d2
	rts
.L1364:
	tst.l %d2
	jeq .L1371
.L1363:
	moveq #0,%d0
.L1368:
	cmp.l %a0,%d1
	jhi .L1367
	sub.l %d1,%a0
	or.l %d2,%d0
.L1367:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1368
	tst.l 16(%sp)
	jeq .L1361
.L1379:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1371:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1361
	jra .L1379
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
	jeq .L1381
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	moveq #0,%d1
.L1383:
	movem.l (%sp)+,#28
	rts
.L1381:
	move.l %d3,%d1
	tst.l %d2
	jeq .L1383
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
	jeq .L1388
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
	movem.l (%sp)+,#28
	rts
.L1388:
	tst.l %d2
	jeq .L1391
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1391:
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
	jne .L1399
	moveq #2,%d0
	sub.l %d2,%d0
	add.l %d1,%a0
	add.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1399:
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
	jgt .L1407
	jlt .L1408
	cmp.l %a1,%a0
	jhi .L1407
	jcs .L1408
	moveq #1,%d0
	rts
.L1407:
	moveq #0,%d0
	rts
.L1408:
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
	jgt .L1415
	jlt .L1414
	cmp.l %d0,%a1
	jhi .L1415
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1415:
	moveq #-1,%d0
	rts
.L1414:
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
	jeq .L1421
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	moveq #0,%d0
	movem.l (%sp)+,#28
	rts
.L1421:
	move.l %d1,%d0
	tst.l %d2
	jeq .L1424
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1424:
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
	jeq .L1442
	lea __muldf3,%a5
.L1444:
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
.L1442:
	move.l %a4,%d0
	jpl .L1451
	addq.l #1,%d0
.L1451:
	asr.l #1,%d0
	move.l %d0,%a4
	jeq .L1443
	lea __muldf3,%a5
.L1445:
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
	jne .L1444
	move.l %a4,%d0
	jpl .L1452
	addq.l #1,%d0
.L1452:
	asr.l #1,%d0
	move.l %d0,%a4
	jra .L1445
.L1443:
	cmp.w #0,%a6
	jlt .L1450
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31996
	addq.l #8,%sp
	rts
.L1450:
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
	jeq .L1454
	lea __mulsf3,%a2
.L1456:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L1454:
	move.l %d2,%d2
	jpl .L1463
	addq.l #1,%d2
.L1463:
	asr.l #1,%d2
	jeq .L1455
	lea __mulsf3,%a2
.L1457:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L1456
	move.l %d2,%d2
	jpl .L1464
	addq.l #1,%d2
.L1464:
	asr.l #1,%d2
	jra .L1457
.L1455:
	tst.l %d5
	jlt .L1462
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
.L1462:
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
	jhi .L1469
	jcs .L1470
	cmp.l %a1,%a0
	jhi .L1469
	jcs .L1470
	moveq #1,%d0
	rts
.L1469:
	moveq #0,%d0
	rts
.L1470:
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
	jhi .L1477
	jcs .L1476
	cmp.l %d0,%a1
	jhi .L1477
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1477:
	moveq #-1,%d0
	rts
.L1476:
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
