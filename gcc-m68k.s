#NO_APP
	.file	"mini-libc.c"
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
	move.l 20(%sp),%d0
	cmp.l %a0,%a1
	jcc .L2
	lea (%a1,%d0.l),%a2
	tst.l %d0
	jeq .L3
	lea -1(%a0,%d0.l),%a3
.L4:
	move.b -(%a2),(%a3)
	subq.l #1,%a3
	cmp.l %a1,%a2
	jne .L4
.L3:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L2:
	cmp.l %a0,%a1
	jeq .L3
	tst.l %d0
	jeq .L3
	move.l %a0,%a2
	add.l %a1,%d0
.L5:
	move.b (%a1)+,(%a2)+
	cmp.l %a1,%d0
	jeq .L3
	move.b (%a1)+,(%a2)+
	cmp.l %a1,%d0
	jne .L5
	jra .L3
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
	jeq .L18
	move.l 16(%sp),%a0
	move.l 12(%sp),%a1
.L19:
	move.l %a1,%d2
	move.b (%a0)+,%d0
	move.b %d0,(%a1)+
	and.l #255,%d0
	cmp.l %d0,%d3
	jeq .L32
	subq.l #1,%d1
	jne .L19
.L18:
	sub.l %a0,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L32:
	move.l %d2,%a0
	addq.l #1,%a0
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
	jeq .L38
	move.l 8(%sp),%a1
.L35:
	move.l %a1,%a0
	moveq #0,%d1
	move.b (%a1)+,%d1
	cmp.l %d1,%d2
	jeq .L33
	subq.l #1,%d0
	jne .L35
.L38:
	sub.l %a0,%a0
.L33:
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
	jeq .L47
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L43:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #1,%d1
	addq.l #1,%d0
	move.b (%a2),%d2
	cmp.b (%a1),%d2
	jne .L51
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L43
.L47:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L51:
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
	jeq .L53
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L53:
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
.L60:
	cmp.l %d0,%a1
	jeq .L65
	move.l %d0,%a0
	subq.l #1,%d0
	moveq #0,%d1
	move.b (%a0),%d1
	cmp.l %d1,%d2
	jne .L60
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L65:
	sub.l %a0,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d1
	tst.l 12(%sp)
	jeq .L67
	move.l 12(%sp),%d0
	add.l %a0,%d0
	move.l %a0,%a1
.L68:
	move.b %d1,(%a1)+
	cmp.l %d0,%a1
	jne .L68
.L67:
	move.l %a0,%d0
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
	jeq .L76
.L77:
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	jne .L77
.L76:
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
	jeq .L84
.L85:
	and.l #255,%d0
	cmp.l %d0,%d1
	jeq .L84
	addq.l #1,%a0
	move.b (%a0),%d0
	jne .L85
.L84:
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
.L95:
	move.l %d2,%a0
	move.b (%a0),%d1
	addq.l #1,%d2
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %a1,%d3
	jeq .L93
	tst.b %d1
	jne .L95
	sub.l %a0,%a0
.L93:
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
	jne .L101
.L100:
	tst.b %d0
	jeq .L101
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d0
	move.b (%a0),%d1
	cmp.b %d0,%d1
	jeq .L100
.L101:
	and.l #255,%d0
	and.l #255,%d1
	sub.l %d1,%d0
	rts
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
	move.l 4(%sp),%a1
	move.l %a1,%a0
	tst.b (%a1)
	jeq .L107
.L108:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L108
.L107:
	move.l %a0,%d0
	sub.l %a1,%d0
	rts
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
	move.l 20(%sp),%d1
	jeq .L118
	move.b (%a0),%d0
	jeq .L115
	move.l %a1,%d2
	lea -1(%a0,%d1.l),%a2
.L116:
	move.l %d2,%a1
	move.b (%a1),%d1
	addq.l #1,%d2
	tst.b %d1
	jeq .L115
	cmp.l %a0,%a2
	jeq .L115
	cmp.b %d1,%d0
	jne .L115
	addq.l #1,%a0
	move.b (%a0),%d0
	jne .L116
	move.l %d2,%a1
.L115:
	and.l #255,%d0
	moveq #0,%d1
	move.b (%a1),%d1
	sub.l %d1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L118:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	move.l 4(%sp),%a0
	move.l 8(%sp),%a1
	moveq #1,%d0
	cmp.l 12(%sp),%d0
	jge .L128
	moveq #-2,%d0
	and.l 12(%sp),%d0
	add.l %a0,%d0
.L130:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%d0
	jne .L130
.L128:
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
	jeq .L140
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L140:
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
	jcc .L145
	moveq #127,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L145:
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
	jeq .L158
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L158:
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
	jcc .L167
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcs .L170
.L167:
	moveq #1,%d0
	rts
.L170:
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L167
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
	jls .L182
	cmp.l #8231,%d0
	jls .L178
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L178
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L178
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L179
	and.l #65534,%d0
	cmp.l #65534,%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L178:
	moveq #1,%d0
	rts
.L182:
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
.L179:
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
	jcc .L185
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
.L185:
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
	jne .L193
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L194
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L197
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
.L197:
	moveq #0,%d0
	moveq #0,%d1
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L193:
	move.l %d2,%d0
	move.l %d3,%d1
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L194:
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
	jne .L203
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L204
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L207
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	movem.l (%sp)+,#1036
	rts
.L207:
	moveq #0,%d0
	movem.l (%sp)+,#1036
	rts
.L203:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L204:
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
	jne .L218
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L217
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L212
	tst.l %d0
	jeq .L217
.L218:
	move.l %d4,%d1
	move.l %d5,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L212:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L218
.L217:
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
	jne .L231
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L230
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L236
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L231
	move.l %d3,%d2
.L231:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L236:
	tst.l %d0
	jne .L231
.L230:
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
	jne .L244
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L238
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %a4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L252
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L253
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L238:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L252:
	tst.l %d0
	jeq .L238
.L244:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L253:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
	jra .L238
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
	jne .L260
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L262
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L256
	tst.l %d0
	jeq .L260
.L262:
	move.l %d2,%d1
	move.l %d3,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L256:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L262
.L260:
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
	jne .L273
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L275
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L280
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L275
	move.l %d3,%d2
.L275:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L280:
	tst.l %d0
	jne .L275
.L273:
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
	jne .L282
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L288
	move.l %a4,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L296
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L297
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L282:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L296:
	tst.l %d0
	jeq .L282
.L288:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L297:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
	jra .L282
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
	move.l (%a0),%d4
	jeq .L347
	move.l 36(%sp),%d2
	moveq #0,%d3
.L349:
	move.l %d2,%d5
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L346
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d4,%d3
	jne .L349
.L347:
	moveq #0,%d5
.L346:
	move.l %d5,%a0
	move.l %d5,%d0
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
	movem.l #8240,-(%sp)
	move.l 16(%sp),%a0
.L365:
	move.l %a0,%a2
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L365
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-9,%a1),%a3
	moveq #4,%d2
	cmp.l %a3,%d2
	jcc .L365
	cmp.b #43,%d0
	jeq .L367
	cmp.b #45,%d0
	jeq .L368
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcs .L384
	move.l %a2,%a1
	sub.l %a2,%a2
.L370:
	moveq #0,%d0
.L373:
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%a0
	add.l %a0,%d0
	add.l %d0,%d0
	addq.l #1,%a1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	sub.l %a0,%d0
	move.b (%a1),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcc .L373
	cmp.w #0,%a2
	jeq .L371
	movem.l (%sp)+,#3076
	rts
.L368:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcs .L376
	move.w #1,%a2
	moveq #0,%d0
	jra .L373
.L367:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	sub.l %a2,%a2
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L370
.L384:
	moveq #0,%d0
.L371:
	neg.l %d0
	movem.l (%sp)+,#3076
	rts
.L376:
	moveq #0,%d0
	movem.l (%sp)+,#3076
	rts
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	jra atoi
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #15920,-(%sp)
	move.l 32(%sp),%a0
.L390:
	move.l %a0,%a2
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L390
	move.b %d0,%d4
	ext.w %d4
	move.w %d4,%a1
	lea (-9,%a1),%a3
	moveq #4,%d1
	cmp.l %a3,%d1
	jcc .L390
	cmp.b #43,%d0
	jeq .L392
	cmp.b #45,%d0
	jeq .L393
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcs .L409
	move.l %a2,%a1
	moveq #0,%d6
.L395:
	clr.l %d0
	clr.l %d1
.L398:
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
	move.w %d4,%a0
	move.l #-48,%d5
	add.l %a0,%d5
	smi %d4
	ext.w %d4
	ext.l %d4
	move.l %d2,%d0
	move.l %d3,%d1
	sub.l %d5,%d1
	subx.l %d4,%d0
	move.b (%a1),%d4
	ext.w %d4
	move.w %d4,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcc .L398
	tst.l %d6
	jeq .L396
	movem.l (%sp)+,#3196
	rts
.L393:
	lea (1,%a2),%a1
	move.b 1(%a2),%d4
	ext.w %d4
	move.w %d4,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L401
	moveq #1,%d6
	clr.l %d0
	clr.l %d1
	jra .L398
.L392:
	lea (1,%a2),%a1
	move.b 1(%a2),%d4
	ext.w %d4
	move.w %d4,%a0
	lea (-48,%a0),%a0
	moveq #0,%d6
	moveq #9,%d2
	cmp.l %a0,%d2
	jcc .L395
.L409:
	clr.l %d0
	clr.l %d1
.L396:
	neg.l %d1
	negx.l %d0
	movem.l (%sp)+,#3196
	rts
.L401:
	clr.l %d0
	clr.l %d1
	movem.l (%sp)+,#3196
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
	jeq .L413
	lea __mulsi3,%a3
.L416:
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
	jlt .L417
	jle .L412
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	sub.l %d7,%d2
	jne .L416
.L413:
	moveq #0,%d3
.L412:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
.L417:
	move.l %d7,%d2
	jne .L416
	jra .L413
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movem.l #16184,-(%sp)
	move.l 40(%sp),%a4
	move.l 44(%sp),%d4
	move.l 52(%sp),%d5
	move.l 56(%sp),%a2
	move.l 60(%sp),%d7
	move.l 48(%sp),%d2
	jeq .L425
	lea __mulsi3,%a3
.L428:
	move.l %d2,%d6
	asr.l #1,%d6
	move.l %d5,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	move.l %d4,%d3
	add.l %d0,%d3
	move.l %d7,-(%sp)
	move.l %d3,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L424
	jle .L427
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	move.l %d2,%d6
	asr.l #1,%d6
.L427:
	move.l %d6,%d2
	jne .L428
.L425:
	moveq #0,%d3
.L424:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#7420
	rts
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
	jlt .L444
	rts
.L444:
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
	jmi .L451
	rts
.L451:
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
	jlt .L458
	rts
.L458:
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
	jeq .L465
.L462:
	cmp.l %d1,%d0
	jeq .L461
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L462
.L465:
	sub.l %a0,%a0
.L461:
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
	jne .L471
.L470:
	tst.l %d0
	jeq .L471
	tst.l %d1
	jeq .L471
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L470
.L471:
	cmp.l %d0,%d1
	jgt .L474
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L474:
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
.L482:
	move.l (%a2)+,%d0
	move.l %d0,(%a1)+
	jne .L482
	move.l %a0,%d0
	move.l (%sp)+,%a2
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%a1
	move.l %a1,%a0
	tst.l (%a1)
	jeq .L487
.L488:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L488
.L487:
	sub.l %a1,%a0
	move.l %a0,%d0
	asr.l #2,%d0
	rts
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d1
	jeq .L500
	move.l 12(%sp),%a0
	move.l 16(%sp),%d0
.L495:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L496
	cmp.w #0,%a1
	jeq .L496
	subq.l #1,%d1
	jne .L495
.L500:
	moveq #0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L496:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L503
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L503:
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
	jeq .L509
	move.l 4(%sp),%a1
.L506:
	move.l %a1,%a0
	cmp.l (%a1)+,%d1
	jeq .L504
	subq.l #1,%d0
	jne .L506
.L509:
	sub.l %a0,%a0
.L504:
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
	jeq .L519
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L514:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #4,%d1
	addq.l #4,%d0
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L523
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L514
.L519:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L523:
	move.l (%a2),%d0
	move.l (%a1),%d1
	cmp.l %d0,%d1
	jgt .L524
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L524:
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
	jeq .L526
	add.l %d0,%d0
	add.l %d0,%d0
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L526:
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
	jeq .L533
	move.l %a0,%a3
	move.l %d1,%a2
	add.l %d1,%a2
	add.l %a2,%a2
	move.l %a0,%d0
	sub.l %a1,%d0
	cmp.l %d0,%a2
	jls .L546
	tst.l %d1
	jeq .L533
	lea (%a1,%a2.l),%a3
	lea (%a0,%a2.l),%a2
.L536:
	move.l -(%a3),-(%a2)
	cmp.l %a1,%a3
	jne .L536
.L533:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L546:
	move.l %d1,%d0
	subq.l #1,%d0
	tst.l %d1
	jeq .L533
.L537:
	move.l (%a1)+,(%a3)+
	dbra %d0,.L537
	clr.w %d0
	subq.l #1,%d0
	jcc .L537
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
	jeq .L548
	move.l %a0,%a1
.L549:
	move.l %d1,(%a1)+
	dbra %d0,.L549
	clr.w %d0
	subq.l #1,%d0
	jcc .L549
.L548:
	move.l %a0,%d0
	rts
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%a2
	move.l 16(%sp),%d0
	cmp.l %a0,%a2
	jls .L557
	lea (%a0,%d0.l),%a1
	tst.l %d0
	jeq .L556
	lea -1(%a2,%d0.l),%a2
.L559:
	move.b -(%a1),(%a2)
	subq.l #1,%a2
	cmp.l %a0,%a1
	jne .L559
.L556:
	move.l (%sp)+,%a2
	rts
.L557:
	cmp.l %a0,%a2
	jeq .L556
	tst.l %d0
	jeq .L556
	add.l %a0,%d0
.L560:
	move.b (%a0)+,(%a2)+
	cmp.l %a0,%d0
	jeq .L556
	move.b (%a0)+,(%a2)+
	cmp.l %a0,%d0
	jne .L560
	jra .L556
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
	jlt .L573
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
	jlt .L575
.L579:
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L573:
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
	jge .L579
.L575:
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
	jlt .L581
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
	jlt .L583
.L587:
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L581:
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
	jge .L587
.L583:
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
.L613:
	move.l %d2,%d1
	lsr.l %d0,%d1
	addq.l #1,%d0
	btst #0,%d1
	jne .L610
	moveq #32,%d1
	cmp.l %d0,%d1
	jne .L613
	moveq #0,%d0
.L610:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L620
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L617
	moveq #1,%d0
.L619:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L619
.L617:
	rts
.L620:
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
	jlt .L628
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L631
	move.l %d2,%d0
.L625:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L628:
	moveq #1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L631:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L625
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
	jlt .L635
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L638
	move.l %d2,%d0
.L632:
	movem.l (%sp)+,#52
	rts
.L635:
	moveq #1,%d0
	movem.l (%sp)+,#52
	rts
.L638:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L632
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
	jlt .L642
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
	jle .L645
	move.l %d2,%d0
.L639:
	movem.l (%sp)+,#60
	rts
.L642:
	moveq #1,%d0
	movem.l (%sp)+,#60
	rts
.L645:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L639
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
	jne .L649
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #4,%sp
	move.l %d4,(%sp)
	move.l %d0,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L649
	tst.l %d2
	jlt .L665
	move.l #0x40000000,%d3
.L651:
	btst #0,%d2
	jeq .L652
	lea __mulsf3,%a2
.L653:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L652:
	move.l %d2,%d2
	jpl .L666
	addq.l #1,%d2
.L666:
	asr.l #1,%d2
	jeq .L649
	lea __mulsf3,%a2
.L654:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L653
	move.l %d2,%d2
	jpl .L667
	addq.l #1,%d2
.L667:
	asr.l #1,%d2
	jra .L654
.L649:
	move.l %d4,%d0
	movem.l (%sp)+,#1052
	rts
.L665:
	move.l #0x3f000000,%d3
	jra .L651
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
	jne .L669
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
	jeq .L669
	tst.l %d2
	jlt .L685
	move.l #1073741824,%a4
	sub.l %a5,%a5
.L671:
	btst #0,%d2
	jeq .L672
	lea __muldf3,%a6
.L673:
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
.L672:
	move.l %d2,%d2
	jpl .L686
	addq.l #1,%d2
.L686:
	asr.l #1,%d2
	jeq .L669
	lea __muldf3,%a6
.L674:
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
	jne .L673
	move.l %d2,%d2
	jpl .L687
	addq.l #1,%d2
.L687:
	asr.l #1,%d2
	jra .L674
.L669:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31988
	rts
.L685:
	move.l #1071644672,%a4
	sub.l %a5,%a5
	jra .L671
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
	jne .L689
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
	jeq .L689
	tst.l %d2
	jlt .L705
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
.L691:
	btst #0,%d2
	jeq .L692
	lea __mulxf3,%a2
.L693:
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
.L692:
	move.l %d2,%d2
	jpl .L706
	addq.l #1,%d2
.L706:
	asr.l #1,%d2
	jeq .L689
	lea __mulxf3,%a2
.L694:
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
	jne .L693
	move.l %d2,%d2
	jpl .L707
	addq.l #1,%d2
.L707:
	asr.l #1,%d2
	jra .L694
.L689:
	move.l %a4,(%a3)
	move.l %a5,4(%a3)
	move.l %a6,8(%a3)
	move.l %a3,%a0
	movem.l (%sp)+,#31804
	lea (24,%sp),%sp
	rts
.L705:
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
	jra .L691
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%a2
	tst.l 16(%sp)
	jeq .L709
	move.l 16(%sp),%d0
	add.l %a2,%d0
	move.l %a0,%a1
.L710:
	addq.l #1,%a1
	move.b (%a2)+,%d1
	eor.b %d1,-1(%a1)
	cmp.l %d0,%a2
	jne .L710
.L709:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	rts
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
	jeq .L718
.L719:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L719
.L718:
	tst.l %d0
	jeq .L720
	move.l 12(%sp),%a2
.L721:
	move.b (%a2)+,%d1
	move.b %d1,(%a1)+
	jeq .L723
	subq.l #1,%d0
	jne .L721
.L720:
	clr.b (%a1)
.L723:
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
	jeq .L732
	tst.b (%a0,%d0.l)
	jne .L735
.L732:
	rts
.L735:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jeq .L732
	tst.b (%a0,%d0.l)
	jeq .L732
	jra .L735
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d2
	move.b (%a0),%d1
	jeq .L746
.L742:
	move.l %d2,%a1
.L745:
	move.b (%a1)+,%d0
	jeq .L750
	cmp.b %d0,%d1
	jne .L745
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L750:
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L742
.L746:
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
.L753:
	move.l %a2,%d2
	move.b (%a2)+,%d1
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %d3,%a1
	jeq .L757
	tst.b %d1
	jne .L753
.L758:
	move.l %a0,%d0
	movem.l (%sp)+,#1036
	rts
.L757:
	move.l %d2,%a0
	tst.b %d1
	jne .L753
	jra .L758
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #15408,-(%sp)
	move.l 28(%sp),%d1
	move.l 32(%sp),%a3
	move.b (%a3),%d3
	jeq .L769
	move.l %a3,%a0
.L761:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L761
	move.l %a0,%d5
	sub.l %a3,%d5
	cmp.l %a0,%a3
	jeq .L769
	subq.l #1,%d5
.L767:
	move.l %d1,%a0
	move.b (%a0),%d0
	addq.l #1,%d1
	cmp.b %d0,%d3
	jeq .L766
	tst.b %d0
	jne .L767
	sub.l %a0,%a0
.L759:
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
.L766:
	move.b %d3,%d0
	move.l %a3,%d2
	move.l %a0,%d4
	add.l %d5,%d4
	move.l %a0,%a1
.L763:
	move.l %d2,%a2
	move.b (%a2),%d1
	addq.l #1,%d2
	tst.b %d1
	jeq .L764
	cmp.l %a1,%d4
	jeq .L764
	cmp.b %d1,%d0
	jne .L764
	addq.l #1,%a1
	move.b (%a1),%d0
	jne .L763
	move.l %d2,%a2
.L764:
	cmp.b (%a2),%d0
	jeq .L759
	move.l %a0,%d1
	addq.l #1,%d1
	jra .L767
.L769:
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
	jlt .L790
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L782
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L781
.L782:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
.L790:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L782
.L781:
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
	movem.l #14392,-(%sp)
	move.l 28(%sp),%a3
	move.l 40(%sp),%d4
	jeq .L797
	cmp.l 32(%sp),%d4
	jhi .L799
	move.l 32(%sp),%d0
	sub.l %d4,%d0
	move.l %a3,%d2
	add.l %d0,%d2
	cmp.l %a3,%d2
	jcs .L799
	move.l 36(%sp),%a4
	move.b (%a4)+,%d3
	move.l %a3,%d0
	add.l %d4,%d0
.L796:
	move.b (%a3),%d1
	move.l %a3,%a0
	addq.l #1,%a3
	cmp.b %d1,%d3
	jeq .L807
.L793:
	addq.l #1,%d0
	cmp.l %d2,%a3
	jls .L796
.L799:
	sub.l %a0,%a0
.L791:
	move.l %a0,%d0
	movem.l (%sp)+,#7196
	rts
.L807:
	moveq #1,%d1
	cmp.l %d4,%d1
	jeq .L791
	move.l %a3,%a1
	move.l %a4,%a2
.L794:
	cmpm.b (%a2)+,(%a1)+
	jne .L793
	cmp.l %a1,%d0
	jne .L794
	move.l %a0,%d0
	movem.l (%sp)+,#7196
	rts
.L797:
	move.l %a3,%a0
	move.l %a0,%d0
	movem.l (%sp)+,#7196
	rts
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	jeq .L809
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L809:
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
	lea (-28,%sp),%sp
	movem.l #16190,-(%sp)
	move.l 76(%sp),%d2
	move.l 80(%sp),%d3
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
	jlt .L840
	lea __gedf2,%a4
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L841
	moveq #0,%d7
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
.L824:
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
	jge .L824
.L825:
	move.l 84(%sp),%a0
	move.l %d6,(%a0)
	tst.l %d7
	jeq .L831
	move.l %d2,%a1
	add.l #-2147483648,%a1
	move.l %d3,%a0
.L815:
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (28,%sp),%sp
	rts
.L831:
	move.l %d2,%a1
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (28,%sp),%sp
	rts
.L841:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L821
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L830
.L821:
	move.l 84(%sp),%a0
	clr.l (%a0)
	move.l %d2,%a1
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (28,%sp),%sp
	rts
.L840:
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
	jgt .L842
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
	jra .L824
.L842:
	clr.l -(%sp)
	move.l #-1075838976,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L828
	move.l 84(%sp),%a0
	clr.l (%a0)
	move.l %d6,64(%sp)
	move.l %d3,68(%sp)
	move.l 64(%sp),%d2
	move.l 68(%sp),%d3
	move.l %d2,%a1
	add.l #-2147483648,%a1
	move.l %d3,%a0
	jra .L815
.L828:
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
.L826:
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
	jge .L825
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
	jlt .L826
	jra .L825
.L830:
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
	jra .L826
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
	jeq .L843
.L845:
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
	jne .L845
.L843:
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
	jls .L852
	moveq #32,%d0
	moveq #1,%d2
.L851:
	tst.l %d1
	jlt .L852
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L867
	subq.l #1,%d0
	jne .L851
.L854:
	tst.l 16(%sp)
	jne .L868
.L850:
	move.l (%sp)+,%d2
	rts
.L867:
	moveq #0,%d0
	tst.l %d2
	jeq .L854
.L852:
	moveq #0,%d0
.L857:
	cmp.l %a0,%d1
	jhi .L856
	sub.l %d1,%a0
	or.l %d2,%d0
.L856:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L857
	tst.l 16(%sp)
	jeq .L850
.L868:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
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
	jeq .L871
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
	move.l (%sp)+,%d2
	rts
.L871:
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
	jeq .L876
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
	movem.l (%sp)+,#252
	rts
.L876:
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
	jeq .L879
.L881:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L881
.L879:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%d4
	move.l 28(%sp),%d3
	move.l 32(%sp),%d0
	move.l %d0,%d2
	lsr.l #3,%d2
	moveq #-8,%d1
	and.l %d0,%d1
	cmp.l %d4,%d3
	jhi .L887
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jls .L903
.L887:
	tst.l %d2
	jeq .L890
	move.l %d3,%a0
	move.l %d4,%a1
	lsl.l #3,%d2
	add.l %d3,%d2
.L891:
	move.l (%a0)+,%d5
	move.l (%a0)+,%d6
	move.l %d5,(%a1)+
	move.l %d6,(%a1)+
	cmp.l %a0,%d2
	jne .L891
.L890:
	cmp.l %d0,%d1
	jcc .L886
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L892:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L892
.L886:
	movem.l (%sp)+,#124
	rts
.L903:
	tst.l %d0
	jeq .L886
	move.l %d4,%a0
	add.l %d0,%a0
.L893:
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jeq .L886
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jne .L893
	jra .L886
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a2
	move.l 16(%sp),%a3
	move.l 20(%sp),%d1
	move.l %d1,%d0
	lsr.l #1,%d0
	cmp.l %a2,%a3
	jhi .L905
	lea (%a3,%d1.l),%a1
	cmp.l %a1,%a2
	jls .L922
.L905:
	tst.l %d0
	jeq .L908
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
.L909:
	move.w (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L909
.L908:
	btst #0,%d1
	jeq .L904
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L904:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L922:
	add.l %d1,%a2
	tst.l %d1
	jeq .L904
.L910:
	move.b -(%a1),-(%a2)
	cmp.l %a3,%a1
	jeq .L904
	move.b -(%a1),-(%a2)
	cmp.l %a3,%a1
	jne .L910
	jra .L904
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
	movem.l #14368,-(%sp)
	move.l 20(%sp),%d4
	move.l 24(%sp),%d3
	move.l 28(%sp),%d0
	move.l %d0,%d2
	lsr.l #2,%d2
	moveq #-4,%d1
	and.l %d0,%d1
	cmp.l %d4,%d3
	jhi .L924
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jls .L940
.L924:
	tst.l %d2
	jeq .L927
	move.l %d3,%a0
	move.l %d4,%a2
	add.l %d2,%d2
	add.l %d2,%d2
	move.l %d2,%a1
	add.l %d3,%a1
.L928:
	move.l (%a0)+,(%a2)+
	cmp.l %a0,%a1
	jne .L928
.L927:
	cmp.l %d0,%d1
	jcc .L923
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L929:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L929
.L923:
	movem.l (%sp)+,#1052
	rts
.L940:
	tst.l %d0
	jeq .L923
	move.l %d4,%a0
	add.l %d0,%a0
.L930:
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jeq .L923
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jne .L930
	jra .L923
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
	move.l %d2,-(%sp)
	moveq #0,%d0
	moveq #0,%d2
	move.w 10(%sp),%d2
.L955:
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L953
	addq.l #1,%d0
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L955
.L953:
	move.l (%sp)+,%d2
	rts
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	move.l %d2,-(%sp)
	moveq #0,%d0
	moveq #0,%d1
	move.w 10(%sp),%d1
.L961:
	btst %d0,%d1
	jne .L959
	addq.l #1,%d0
	moveq #16,%d2
	cmp.l %d0,%d2
	jne .L961
.L959:
	move.l (%sp)+,%d2
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
	jge .L973
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L973:
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
	movem.l #14336,-(%sp)
	moveq #0,%d0
	moveq #0,%d1
	moveq #0,%d3
	move.w 18(%sp),%d3
.L975:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L975
	and.l %d4,%d0
	movem.l (%sp)+,#28
	rts
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	movem.l #14336,-(%sp)
	moveq #0,%d0
	moveq #0,%d1
	moveq #0,%d3
	move.w 18(%sp),%d3
.L980:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L980
	movem.l (%sp)+,#28
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
	jeq .L984
.L986:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L986
.L984:
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
	jeq .L991
	tst.l %d3
	jeq .L991
.L993:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L993
.L991:
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
	jcc .L1002
	moveq #32,%d0
	moveq #1,%d2
.L1001:
	tst.l %d1
	jlt .L1002
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1003
	subq.l #1,%d0
	jne .L1001
	tst.l 16(%sp)
	jne .L1018
.L1000:
	move.l (%sp)+,%d2
	rts
.L1003:
	tst.l %d2
	jeq .L1010
.L1002:
	moveq #0,%d0
.L1007:
	cmp.l %a0,%d1
	jhi .L1006
	sub.l %d1,%a0
	or.l %d2,%d0
.L1006:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1007
	tst.l 16(%sp)
	jeq .L1000
.L1018:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1010:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1000
	jra .L1018
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
	jlt .L1022
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L1025
	move.l %d2,%d0
.L1019:
	movem.l (%sp)+,#28
	rts
.L1025:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L1019
.L1022:
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
	jlt .L1029
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L1032
	move.l %d6,%d0
.L1026:
	movem.l (%sp)+,#124
	rts
.L1032:
	moveq #0,%d6
	move.l %d6,%d0
	jra .L1026
.L1029:
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
	jmi .L1053
	jeq .L1043
	sub.l %a0,%a0
	moveq #32,%d4
	moveq #0,%d0
.L1042:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L1041
	subq.b #1,%d4
	jne .L1042
.L1041:
	cmp.w #0,%a0
	jeq .L1037
	neg.l %d0
.L1037:
	movem.l (%sp)+,#28
	rts
.L1053:
	neg.l %d2
	move.w #1,%a0
	moveq #32,%d4
	moveq #0,%d0
	jra .L1042
.L1043:
	moveq #0,%d0
	movem.l (%sp)+,#28
	rts
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d1
	tst.l %d3
	jlt .L1076
	moveq #0,%d4
	tst.l %d1
	jlt .L1077
.L1056:
	move.l %d3,%a0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1058
	moveq #32,%d0
	moveq #1,%d2
.L1057:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1060
	subq.l #1,%d0
	jne .L1057
.L1060:
	moveq #0,%d0
	tst.l %d2
	jeq .L1059
.L1058:
	moveq #0,%d0
.L1063:
	cmp.l %d1,%a0
	jcs .L1062
	sub.l %d1,%a0
	or.l %d2,%d0
.L1062:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1063
.L1059:
	tst.l %d4
	jeq .L1054
	neg.l %d0
.L1054:
	movem.l (%sp)+,#28
	rts
.L1077:
	neg.l %d1
	eor.w #1,%d4
	jra .L1056
.L1076:
	neg.l %d3
	moveq #1,%d4
	tst.l %d1
	jge .L1056
	jra .L1077
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	jmi .L1101
	sub.l %a1,%a1
	move.l 16(%sp),%d1
	jmi .L1102
.L1080:
	move.l %d3,%d0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1087
	move.w #32,%a0
	moveq #1,%d2
.L1081:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1098
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L1081
.L1098:
	tst.l %d2
	jeq .L1103
.L1087:
	cmp.l %d0,%d1
	jhi .L1086
	sub.l %d1,%d0
.L1086:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1087
.L1103:
	cmp.w #0,%a1
	jeq .L1078
	neg.l %d0
.L1078:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1102:
	neg.l %d1
	jra .L1080
.L1101:
	neg.l %d3
	move.w #1,%a1
	move.l 16(%sp),%d1
	jpl .L1080
	jra .L1102
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	move.l %d2,-(%sp)
	move.w 10(%sp),%a0
	move.w 14(%sp),%d1
	moveq #1,%d2
	cmp.w %a0,%d1
	jcc .L1106
	moveq #16,%d0
	moveq #1,%d2
.L1105:
	tst.w %d1
	jlt .L1106
	add.w %d1,%d1
	add.w %d2,%d2
	cmp.w %a0,%d1
	jcc .L1119
	subq.l #1,%d0
	jne .L1105
.L1114:
	clr.w %d0
	tst.l 16(%sp)
	jne .L1120
.L1104:
	move.l (%sp)+,%d2
	rts
.L1119:
	tst.w %d2
	jeq .L1114
.L1106:
	clr.w %d0
.L1111:
	cmp.w %a0,%d1
	jhi .L1110
	sub.w %d1,%a0
	or.w %d2,%d0
.L1110:
	lsr.w #1,%d2
	lsr.w #1,%d1
	tst.w %d2
	jne .L1111
	tst.l 16(%sp)
	jeq .L1104
.L1120:
	move.w %a0,%d0
	move.l (%sp)+,%d2
	rts
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
	jcc .L1123
	moveq #32,%d0
	moveq #1,%d2
.L1122:
	tst.l %d1
	jlt .L1123
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1124
	subq.l #1,%d0
	jne .L1122
	tst.l 16(%sp)
	jne .L1139
.L1121:
	move.l (%sp)+,%d2
	rts
.L1124:
	tst.l %d2
	jeq .L1131
.L1123:
	moveq #0,%d0
.L1128:
	cmp.l %a0,%d1
	jhi .L1127
	sub.l %d1,%a0
	or.l %d2,%d0
.L1127:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1128
	tst.l 16(%sp)
	jeq .L1121
.L1139:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1131:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1121
	jra .L1139
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
	jeq .L1141
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	moveq #0,%d1
.L1143:
	movem.l (%sp)+,#28
	rts
.L1141:
	move.l %d3,%d1
	tst.l %d2
	jeq .L1143
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
	jeq .L1148
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
	movem.l (%sp)+,#28
	rts
.L1148:
	tst.l %d2
	jeq .L1151
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1151:
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
	jne .L1159
	moveq #2,%d0
	sub.l %d2,%d0
	add.l %d1,%a0
	add.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1159:
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
	jgt .L1167
	jlt .L1168
	cmp.l %a1,%a0
	jhi .L1167
	jcs .L1168
	moveq #1,%d0
	rts
.L1167:
	moveq #0,%d0
	rts
.L1168:
	moveq #2,%d0
	rts
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	move.l 4(%sp),%d1
	move.l 8(%sp),%a1
	move.l 12(%sp),%d0
	move.l 16(%sp),%a0
	cmp.l %d1,%d0
	jgt .L1175
	jlt .L1176
	cmp.l %a1,%a0
	jhi .L1175
	jcs .L1176
	moveq #1,%d0
	subq.l #1,%d0
	rts
.L1175:
	moveq #0,%d0
	subq.l #1,%d0
	rts
.L1176:
	moveq #2,%d0
	subq.l #1,%d0
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
	jeq .L1182
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	moveq #0,%d0
	movem.l (%sp)+,#28
	rts
.L1182:
	move.l %d1,%d0
	tst.l %d2
	jeq .L1185
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1185:
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
	jeq .L1203
	lea __muldf3,%a5
.L1205:
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
.L1203:
	move.l %a4,%d0
	jpl .L1212
	addq.l #1,%d0
.L1212:
	asr.l #1,%d0
	move.l %d0,%a4
	jeq .L1204
	lea __muldf3,%a5
.L1206:
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
	jne .L1205
	move.l %a4,%d0
	jpl .L1213
	addq.l #1,%d0
.L1213:
	asr.l #1,%d0
	move.l %d0,%a4
	jra .L1206
.L1204:
	cmp.w #0,%a6
	jlt .L1211
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31996
	addq.l #8,%sp
	rts
.L1211:
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
	jeq .L1215
	lea __mulsf3,%a2
.L1217:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L1215:
	move.l %d2,%d2
	jpl .L1224
	addq.l #1,%d2
.L1224:
	asr.l #1,%d2
	jeq .L1216
	lea __mulsf3,%a2
.L1218:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L1217
	move.l %d2,%d2
	jpl .L1225
	addq.l #1,%d2
.L1225:
	asr.l #1,%d2
	jra .L1218
.L1216:
	tst.l %d5
	jlt .L1223
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
.L1223:
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
	jhi .L1230
	jcs .L1231
	cmp.l %a1,%a0
	jhi .L1230
	jcs .L1231
	moveq #1,%d0
	rts
.L1230:
	moveq #0,%d0
	rts
.L1231:
	moveq #2,%d0
	rts
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	move.l 4(%sp),%d1
	move.l 8(%sp),%a1
	move.l 12(%sp),%d0
	move.l 16(%sp),%a0
	cmp.l %d1,%d0
	jhi .L1238
	jcs .L1239
	cmp.l %a1,%a0
	jhi .L1238
	jcs .L1239
	moveq #1,%d0
	subq.l #1,%d0
	rts
.L1238:
	moveq #0,%d0
	subq.l #1,%d0
	rts
.L1239:
	moveq #2,%d0
	subq.l #1,%d0
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
