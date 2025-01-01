#NO_APP
	.file	"mini-libc.c"
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%d0
	move.l 16(%sp),%a0
	move.l 20(%sp),%d1
	cmp.l %d0,%a0
	jcc .L2
	lea (%a0,%d1.l),%a1
	tst.l %d1
	jeq .L3
	move.l %d0,%a3
	lea -1(%a3,%d1.l),%a2
.L4:
	move.b -(%a1),(%a2)
	subq.l #1,%a2
	cmp.l %a0,%a1
	jne .L4
.L3:
	move.l %d0,%a0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L2:
	cmp.l %d0,%a0
	jeq .L3
	tst.l %d1
	jeq .L3
	move.l %d0,%a1
	add.l %a0,%d1
.L5:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d1
	jne .L5
	jra .L3
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.type	memccpy, @function
memccpy:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.l 24(%sp),%a1
	moveq #0,%d2
	move.b 23(%sp),%d2
	cmp.w #0,%a1
	jeq .L9
	move.l 16(%sp),%a2
	move.l %d0,%a0
.L10:
	move.l %a0,%d0
	move.b (%a2)+,%d1
	move.b %d1,(%a0)+
	and.l #255,%d1
	cmp.l %d1,%d2
	jeq .L9
	subq.l #1,%a1
	cmp.w #0,%a1
	jne .L10
	move.l %a0,%d0
.L9:
	cmp.w #0,%a1
	jeq .L13
	addq.l #1,%d0
.L8:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L13:
	moveq #0,%d0
	jra .L8
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d1
	moveq #0,%d2
	move.b 15(%sp),%d2
	tst.l %d1
	jeq .L20
	move.l 8(%sp),%a0
.L17:
	move.l %a0,%a1
	addq.l #1,%a0
	moveq #0,%d0
	move.b (%a1),%d0
	cmp.l %d0,%d2
	jeq .L16
	subq.l #1,%d1
	jne .L17
	move.l %a0,%a1
.L16:
	tst.l %d1
	jeq .L22
.L15:
	move.l %a1,%a0
	move.l %a1,%d0
	move.l (%sp)+,%d2
	rts
.L20:
	move.l 8(%sp),%a1
	jra .L16
.L22:
	sub.l %a1,%a1
	jra .L15
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%a2
	move.l 16(%sp),%a1
	move.l 20(%sp),%d0
	jeq .L24
	move.l %a2,%a0
	move.l %a1,%d1
.L25:
	move.l %d1,%a1
	move.l %a0,%a2
	addq.l #1,%a0
	addq.l #1,%d1
	move.b (%a2),%d2
	cmp.b (%a1),%d2
	jne .L24
	subq.l #1,%d0
	jne .L25
	move.l %a0,%a2
	move.l %d1,%a1
.L24:
	tst.l %d0
	jeq .L28
	moveq #0,%d0
	move.b (%a2),%d0
	moveq #0,%d1
	move.b (%a1),%d1
	sub.l %d1,%d0
.L23:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L28:
	moveq #0,%d0
	jra .L23
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	move.l 16(%sp),%d0
	jeq .L31
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L31:
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
	move.l 8(%sp),%a0
	moveq #0,%d2
	move.b 15(%sp),%d2
	move.l 16(%sp),%d1
	subq.l #1,%d1
	add.l %a0,%d1
	subq.l #1,%a0
.L33:
	cmp.l %d1,%a0
	jeq .L36
	move.l %d1,%a1
	subq.l #1,%d1
	moveq #0,%d0
	move.b (%a1),%d0
	cmp.l %d0,%d2
	jne .L33
	jra .L32
.L36:
	sub.l %a1,%a1
.L32:
	move.l %a1,%a0
	move.l %a1,%d0
	move.l (%sp)+,%d2
	rts
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d2
	tst.l 16(%sp)
	jeq .L38
	move.l 16(%sp),%d1
	add.l %d0,%d1
	move.l %d0,%a0
.L39:
	move.b %d2,(%a0)+
	cmp.l %d1,%a0
	jne .L39
.L38:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
	move.l 4(%sp),%a1
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	move.b %d0,(%a1)
	jeq .L42
.L43:
	addq.l #1,%a0
	addq.l #1,%a1
	move.b (%a0),%d0
	move.b %d0,(%a1)
	jne .L43
.L42:
	move.l %a1,%a0
	move.l %a1,%d0
	rts
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
	move.l 4(%sp),%a0
	moveq #0,%d0
	move.b 11(%sp),%d0
	move.b (%a0),%d1
	jeq .L51
.L46:
	and.l #255,%d1
	cmp.l %d1,%d0
	jeq .L52
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L46
	move.l %a0,%d0
	jra .L45
.L51:
	move.l %a0,%d0
	jra .L45
.L52:
	move.l %a0,%d0
.L45:
	move.l %d0,%a0
	rts
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d3
	move.l 12(%sp),%a1
.L55:
	move.l %a1,%d0
	move.b (%a1)+,%d2
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	cmp.l %a0,%d3
	jeq .L53
	tst.b %d2
	jne .L55
	moveq #0,%d0
.L53:
	move.l %d0,%a0
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
	jne .L59
.L58:
	tst.b %d0
	jeq .L59
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d0
	move.b (%a0),%d1
	cmp.b %d0,%d1
	jeq .L58
.L59:
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
	tst.b (%a1)
	jeq .L65
	move.l %a1,%a0
.L64:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L64
.L63:
	move.l %a0,%d0
	sub.l %a1,%d0
	rts
.L65:
	move.l %a1,%a0
	jra .L63
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a2
	move.l 20(%sp),%d1
	jeq .L72
	move.b (%a0),%d0
	jeq .L69
	move.l %a2,%a1
	lea -1(%a0,%d1.l),%a3
.L70:
	move.l %a1,%a2
	move.b (%a1)+,%d1
	jeq .L69
	cmp.l %a0,%a3
	jeq .L69
	cmp.b %d1,%d0
	jne .L69
	addq.l #1,%a0
	move.b (%a0),%d0
	jne .L70
	move.l %a1,%a2
.L69:
	and.l #255,%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
.L67:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L72:
	moveq #0,%d0
	jra .L67
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	move.l 4(%sp),%a0
	move.l 8(%sp),%a1
	moveq #1,%d0
	cmp.l 12(%sp),%d0
	jge .L74
	moveq #-2,%d0
	and.l 12(%sp),%d0
	add.l %a0,%d0
.L76:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%d0
	jne .L76
.L74:
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
	jeq .L82
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L80:
	rts
.L82:
	moveq #1,%d0
	jra .L80
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L85
	moveq #127,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L83:
	rts
.L85:
	moveq #1,%d0
	jra .L83
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
	jeq .L92
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L90:
	rts
.L92:
	moveq #1,%d0
	jra .L90
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
	jcc .L96
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcc .L97
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L98
	add.l #-65529,%a0
	moveq #2,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L94
.L96:
	moveq #1,%d0
.L94:
	rts
.L97:
	moveq #1,%d0
	jra .L94
.L98:
	moveq #1,%d0
	jra .L94
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
	jls .L107
	cmp.l #8231,%d0
	jls .L103
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L104
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L105
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L106
	and.l #65534,%d0
	cmp.l #65534,%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L100
.L107:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L100:
	rts
.L103:
	moveq #1,%d0
	jra .L100
.L104:
	moveq #1,%d0
	jra .L100
.L105:
	moveq #1,%d0
	jra .L100
.L106:
	moveq #0,%d0
	jra .L100
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	move.w #-48,%a0
	add.l 4(%sp),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L110
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
.L108:
	rts
.L110:
	moveq #1,%d0
	jra .L108
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
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L115
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L116
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L119
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
.L112:
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
.L115:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L112
.L116:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L112
.L119:
	moveq #0,%d0
	moveq #0,%d1
	jra .L112
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L123
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L124
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L127
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
.L120:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L123:
	move.l %d2,%d0
	jra .L120
.L124:
	move.l %d3,%d0
	jra .L120
.L127:
	moveq #0,%d0
	jra .L120
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
	subq.l #4,%sp
	movem.l #16128,-(%sp)
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L134
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L135
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L130
	tst.l %d0
	jne .L136
	move.l %d2,%d1
	move.l %d3,%d0
.L128:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L130:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L133
	clr.b 27(%sp)
.L133:
	tst.b 27(%sp)
	jeq .L131
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L128
.L131:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L128
.L134:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L128
.L135:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L128
.L136:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L128
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d2
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L143
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L144
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L139
	tst.l %d0
	jne .L145
	move.l %d3,%d0
	jra .L137
.L139:
	moveq #1,%d4
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L142
	clr.b %d4
.L142:
	tst.b %d4
	jne .L141
	move.l %d3,%d2
.L141:
	move.l %d2,%d0
.L137:
	movem.l (%sp)+,#28
	rts
.L143:
	move.l %d2,%d0
	jra .L137
.L144:
	move.l %d3,%d0
	jra .L137
.L145:
	move.l %d2,%d0
	jra .L137
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
	movem.l #15406,-(%sp)
	move.l %a1,%a2
	move.l 36(%sp),%a4
	move.l 40(%sp),%a5
	move.l 44(%sp),%a6
	move.l 48(%sp),%d3
	move.l 52(%sp),%d4
	move.l 56(%sp),%d5
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L153
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L147
	move.l %a4,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L148
	tst.l %d0
	jeq .L147
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
	jra .L147
.L148:
	moveq #1,%d2
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L152
	clr.b %d2
.L152:
	tst.b %d2
	jeq .L150
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L151:
	move.l %d0,%a4
	move.l %d1,%a5
	move.l %d2,%a6
.L147:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L150:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L151
.L153:
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
	jra .L147
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	subq.l #4,%sp
	movem.l #16128,-(%sp)
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L160
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L161
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L156
	tst.l %d0
	jne .L162
	move.l %d4,%d1
	move.l %d5,%d0
.L154:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L156:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L159
	clr.b 27(%sp)
.L159:
	tst.b 27(%sp)
	jeq .L157
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L154
.L157:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L154
.L160:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L154
.L161:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L154
.L162:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L154
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d2
	move.l 20(%sp),%d3
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L169
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L170
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L165
	tst.l %d0
	jne .L171
	move.l %d3,%d0
	jra .L163
.L165:
	moveq #1,%d4
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L168
	clr.b %d4
.L168:
	tst.b %d4
	jne .L167
	move.l %d3,%d2
.L167:
	move.l %d2,%d0
.L163:
	movem.l (%sp)+,#28
	rts
.L169:
	move.l %d3,%d0
	jra .L163
.L170:
	move.l %d2,%d0
	jra .L163
.L171:
	move.l %d2,%d0
	jra .L163
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
	movem.l #15406,-(%sp)
	move.l %a1,%a2
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	move.l 48(%sp),%a4
	move.l 52(%sp),%a5
	move.l 56(%sp),%a6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L173
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L179
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %a4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L174
	tst.l %d0
	jeq .L173
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
	jra .L173
.L174:
	moveq #1,%d2
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L178
	clr.b %d2
.L178:
	tst.b %d2
	jeq .L176
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L177:
	move.l %d0,%a4
	move.l %d1,%a5
	move.l %d2,%a6
.L173:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L176:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L177
.L179:
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
	jra .L173
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	jeq .L183
	lea (s.0),%a0
	lea digits,%a1
.L182:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L182
.L181:
	clr.b (%a0)
	move.l #s.0,%d0
	move.l %d0,%a0
	rts
.L183:
	lea (s.0),%a0
	jra .L181
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
	jeq .L190
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L187
	move.l %a0,4(%a1)
.L187:
	rts
.L190:
	clr.l 4(%a0)
	clr.l (%a0)
	jra .L187
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L192
	move.l 4(%a0),4(%a1)
.L192:
	move.l 4(%a0),%a1
	cmp.w #0,%a1
	jeq .L191
	move.l (%a0),(%a1)
.L191:
	rts
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
	movem.l #16184,-(%sp)
	move.l 40(%sp),%d7
	move.l 44(%sp),%a3
	move.l 48(%sp),%a2
	move.l 52(%sp),%d6
	move.l 56(%sp),%a4
	move.l (%a2),%d5
	jeq .L195
	move.l %a3,%d2
	moveq #0,%d3
.L197:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.l %d0
	jeq .L194
	addq.l #1,%d3
	add.l %d6,%d2
	cmp.l %d5,%d3
	jne .L197
.L195:
	move.l %d5,%d0
	addq.l #1,%d0
	move.l %d0,(%a2)
	move.l %d5,-(%sp)
	move.l %d6,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l %d6,-(%sp)
	move.l %d7,-(%sp)
	pea (%a3,%d0.l)
	jsr memcpy
	move.l %a0,%d4
	lea (12,%sp),%sp
.L194:
	move.l %d4,%a0
	move.l %d4,%d0
	movem.l (%sp)+,#7420
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
	jeq .L200
	move.l 36(%sp),%d2
	moveq #0,%d3
.L202:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L199
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d5,%d3
	jne .L202
.L200:
	moveq #0,%d4
.L199:
	move.l %d4,%a0
	move.l %d4,%d0
	movem.l (%sp)+,#1276
	rts
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	jmi .L206
.L205:
	rts
.L206:
	neg.l %d0
	jra .L205
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #8248,-(%sp)
	move.l 20(%sp),%a3
	lea isspace,%a4
.L208:
	move.l %a3,%a2
	move.b (%a3)+,%d2
	move.b %d2,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,%a0
	tst.l %d0
	jne .L208
	cmp.b #43,%d2
	jeq .L214
	cmp.b #45,%d2
	jne .L215
	moveq #1,%d2
.L209:
	addq.l #1,%a2
.L210:
	move.b (%a2),%d0
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-48,%a1),%a1
	moveq #9,%d1
	cmp.l %a1,%d1
	jcs .L212
.L211:
	move.l %a0,%d1
	add.l %a0,%d1
	add.l %d1,%d1
	add.l %d1,%a0
	add.l %a0,%a0
	addq.l #1,%a2
	add.b #-48,%d0
	ext.w %d0
	sub.w %d0,%a0
	move.b (%a2),%d0
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-48,%a1),%a1
	moveq #9,%d1
	cmp.l %a1,%d1
	jcc .L211
.L212:
	tst.l %d2
	jne .L207
	move.l %a0,%d0
	neg.l %d0
	move.l %d0,%a0
.L207:
	move.l %a0,%d0
	movem.l (%sp)+,#7172
	rts
.L214:
	move.l %d0,%d2
	jra .L209
.L215:
	move.l %d0,%d2
	jra .L210
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	movem.l #8248,-(%sp)
	move.l 20(%sp),%a3
	lea isspace,%a4
.L220:
	move.l %a3,%a2
	move.b (%a3)+,%d2
	move.b %d2,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,%a0
	tst.l %d0
	jne .L220
	cmp.b #43,%d2
	jeq .L226
	cmp.b #45,%d2
	jne .L227
	moveq #1,%d2
.L221:
	addq.l #1,%a2
.L222:
	move.b (%a2),%d0
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-48,%a1),%a1
	moveq #9,%d1
	cmp.l %a1,%d1
	jcs .L224
.L223:
	move.l %a0,%d1
	add.l %a0,%d1
	add.l %d1,%d1
	add.l %d1,%a0
	add.l %a0,%a0
	addq.l #1,%a2
	add.b #-48,%d0
	ext.w %d0
	sub.w %d0,%a0
	move.b (%a2),%d0
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-48,%a1),%a1
	moveq #9,%d1
	cmp.l %a1,%d1
	jcc .L223
.L224:
	tst.l %d2
	jne .L219
	move.l %a0,%d0
	neg.l %d0
	move.l %d0,%a0
.L219:
	move.l %a0,%d0
	movem.l (%sp)+,#7172
	rts
.L226:
	move.l %d0,%d2
	jra .L221
.L227:
	move.l %d0,%d2
	jra .L222
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #16184,-(%sp)
	move.l 40(%sp),%a3
	lea isspace,%a4
.L232:
	move.l %a3,%a2
	move.b (%a3)+,%d2
	move.b %d2,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L232
	cmp.b #43,%d2
	jeq .L233
	cmp.b #45,%d2
	jne .L234
	moveq #1,%d0
.L233:
	addq.l #1,%a2
.L234:
	move.b (%a2),%d2
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	clr.l %d4
	clr.l %d5
	moveq #9,%d1
	cmp.l %a0,%d1
	jcs .L236
.L235:
	move.l %d4,%d6
	move.l %d5,%d7
	add.l %d7,%d7
	addx.l %d6,%d6
	add.l %d7,%d7
	addx.l %d6,%d6
	add.l %d7,%d5
	addx.l %d6,%d4
	add.l %d5,%d5
	addx.l %d4,%d4
	addq.l #1,%a2
	add.b #-48,%d2
	move.b %d2,%d3
	ext.w %d3
	ext.l %d3
	move.l %d3,%d2
	smi %d2
	sub.l %d3,%d5
	subx.l %d2,%d4
	move.b (%a2),%d2
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcc .L235
.L236:
	tst.l %d0
	jne .L231
	neg.l %d5
	negx.l %d4
.L231:
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#7420
	rts
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d7
	move.l 40(%sp),%d5
	move.l 44(%sp),%d2
	move.l 48(%sp),%d6
	move.l 52(%sp),%a2
	tst.l %d2
	jeq .L243
	lea __mulsi3,%a3
	jra .L246
.L247:
	move.l %d4,%d2
.L244:
	tst.l %d2
	jeq .L243
.L246:
	move.l %d2,%d4
	lsr.l #1,%d4
	move.l %d6,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	move.l %d5,%d3
	add.l %d0,%d3
	move.l %d3,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L247
	jle .L242
	move.l %d3,%d5
	add.l %d6,%d5
	subq.l #1,%d2
	sub.l %d4,%d2
	jra .L244
.L243:
	moveq #0,%d3
.L242:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d6
	move.l 40(%sp),%d4
	move.l 48(%sp),%d5
	move.l 52(%sp),%a2
	move.l 56(%sp),%d7
	move.l 44(%sp),%d2
	jeq .L250
	lea __mulsi3,%a3
	jra .L253
.L252:
	asr.l #1,%d2
	jeq .L250
.L253:
	move.l %d5,-(%sp)
	move.l %d2,%d0
	asr.l #1,%d0
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	move.l %d4,%d3
	add.l %d0,%d3
	move.l %d7,-(%sp)
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L249
	jle .L252
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	jra .L252
.L250:
	moveq #0,%d3
.L249:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
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
	jlt .L258
.L257:
	rts
.L258:
	neg.l %d1
	negx.l %d0
	jra .L257
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
	move.l 4(%sp),%d1
	move.l %d1,%d0
	jmi .L262
.L261:
	rts
.L262:
	neg.l %d0
	jra .L261
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
	jlt .L266
.L265:
	rts
.L266:
	neg.l %d1
	negx.l %d0
	jra .L265
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
	move.l 8(%sp),%d0
	move.l (%a0),%d1
	jeq .L275
.L269:
	cmp.l %d0,%d1
	jeq .L276
	addq.l #4,%a0
	move.l (%a0),%d1
	jne .L269
	move.l %a0,%d0
	jra .L270
.L275:
	move.l %a0,%d0
	jra .L270
.L276:
	move.l %a0,%d0
.L270:
	tst.l %d1
	jeq .L277
.L268:
	move.l %d0,%a0
	rts
.L277:
	moveq #0,%d0
	jra .L268
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
	jne .L280
.L279:
	tst.l %d0
	jeq .L280
	tst.l %d1
	jeq .L280
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L279
.L280:
	cmp.l %d0,%d1
	jgt .L283
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L278:
	rts
.L283:
	moveq #-1,%d0
	jra .L278
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l %d0,%a0
.L286:
	move.l (%a1)+,%d1
	move.l %d1,(%a0)+
	jne .L286
	move.l %d0,%a0
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%a1
	tst.l (%a1)
	jeq .L291
	move.l %a1,%a0
.L290:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L290
.L289:
	move.l %a0,%d0
	sub.l %a1,%d0
	asr.l #2,%d0
	rts
.L291:
	move.l %a1,%a0
	jra .L289
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a3
	move.l 16(%sp),%a2
	move.l 20(%sp),%d1
	jeq .L294
	move.l %a3,%a0
	move.l %a2,%d0
.L295:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L294
	cmp.w #0,%a1
	jeq .L294
	subq.l #1,%d1
	jne .L295
	move.l %a0,%a3
	move.l %d0,%a2
.L294:
	tst.l %d1
	jeq .L298
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L299
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L293
.L298:
	moveq #0,%d0
.L293:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L299:
	moveq #-1,%d0
	jra .L293
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	jeq .L306
	move.l 4(%sp),%a0
.L303:
	move.l %a0,%a1
	addq.l #4,%a0
	cmp.l (%a1),%d0
	jeq .L302
	subq.l #1,%d1
	jne .L303
	move.l %a0,%a1
.L302:
	tst.l %d1
	jeq .L308
.L301:
	move.l %a1,%a0
	move.l %a1,%d0
	rts
.L306:
	move.l 4(%sp),%a1
	jra .L302
.L308:
	sub.l %a1,%a1
	jra .L301
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%a2
	move.l 16(%sp),%a1
	move.l 20(%sp),%d0
	jeq .L310
	move.l %a2,%a0
	move.l %a1,%d1
.L311:
	move.l %d1,%a1
	move.l %a0,%a2
	addq.l #4,%a0
	addq.l #4,%d1
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L310
	subq.l #1,%d0
	jne .L311
	move.l %a0,%a2
	move.l %d1,%a1
.L310:
	tst.l %d0
	jeq .L314
	move.l (%a2),%d0
	move.l (%a1),%d1
	cmp.l %d0,%d1
	jgt .L315
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L309
.L314:
	moveq #0,%d0
.L309:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L315:
	moveq #-1,%d0
	jra .L309
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	move.l 16(%sp),%d0
	jeq .L318
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a0.l)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L318:
	move.l %d2,%a0
	move.l %d2,%d0
	move.l (%sp)+,%d2
	rts
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
	movem.l #12320,-(%sp)
	move.l 16(%sp),%d0
	move.l 20(%sp),%a0
	move.l 24(%sp),%d2
	cmp.l %d0,%a0
	jeq .L320
	move.l %d0,%a2
	move.l %a0,%d1
	move.l %d2,%a1
	add.l %d2,%a1
	add.l %a1,%a1
	move.l %d0,%d3
	sub.l %a0,%d3
	cmp.l %d3,%a1
	jhi .L321
	move.l %d2,%d1
	subq.l #1,%d1
	tst.l %d2
	jeq .L320
.L322:
	move.l (%a0)+,(%a2)+
	dbra %d1,.L322
	clr.w %d1
	subq.l #1,%d1
	jcc .L322
	jra .L320
.L321:
	tst.l %d2
	jeq .L320
	add.l %a1,%a0
	add.l %d0,%a1
.L323:
	move.l -(%a0),-(%a1)
	cmp.l %d1,%a0
	jne .L323
.L320:
	move.l %d0,%a0
	movem.l (%sp)+,#1036
	rts
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l 12(%sp),%a0
	move.l %a0,%d1
	subq.l #1,%d1
	cmp.w #0,%a0
	jeq .L328
	move.l %d0,%a0
.L329:
	move.l %a1,(%a0)+
	dbra %d1,.L329
	clr.w %d1
	subq.l #1,%d1
	jcc .L329
.L328:
	move.l %d0,%a0
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
	jls .L332
	lea (%a0,%d0.l),%a1
	tst.l %d0
	jeq .L331
	lea -1(%a2,%d0.l),%a2
.L334:
	move.b -(%a1),(%a2)
	subq.l #1,%a2
	cmp.l %a0,%a1
	jne .L334
.L331:
	move.l (%sp)+,%a2
	rts
.L332:
	cmp.l %a0,%a2
	jeq .L331
	tst.l %d0
	jeq .L331
	add.l %a0,%d0
.L335:
	move.b (%a0)+,(%a2)+
	cmp.l %a0,%d0
	jne .L335
	jra .L331
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
	jlt .L339
	move.l %d3,%d0
	move.l %a0,%d1
	lsl.l %d1,%d0
	moveq #0,%d5
.L340:
	move.l %d2,%d1
	neg.l %d1
	moveq #63,%d6
	and.l %d1,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L341
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
.L342:
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L339:
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
	jra .L340
.L341:
	move.l %d4,%d6
	add.l %d6,%d6
	neg.l %d2
	moveq #63,%d1
	and.l %d1,%d2
	moveq #31,%d1
	sub.l %d2,%d1
	lsl.l %d1,%d6
	move.l %d3,%d1
	lsr.l %d2,%d1
	or.l %d6,%d1
	lsr.l %d2,%d4
	jra .L342
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
	jlt .L344
	move.l %d3,%d1
	move.l %a0,%d0
	lsr.l %d0,%d1
	moveq #0,%d5
.L345:
	move.l %d2,%d0
	neg.l %d0
	moveq #63,%d6
	and.l %d0,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L346
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
.L347:
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L344:
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
	jra .L345
.L346:
	move.l %d4,%d6
	lsr.l #1,%d6
	neg.l %d2
	moveq #63,%d0
	and.l %d0,%d2
	moveq #31,%d0
	sub.l %d2,%d0
	lsr.l %d0,%d6
	move.l %d3,%d0
	lsl.l %d2,%d0
	or.l %d6,%d0
	lsl.l %d2,%d4
	jra .L347
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
	moveq #0,%d0
	move.b 6(%sp),%d0
	move.l 4(%sp),%d1
	lsl.w #8,%d1
	or.w %d1,%d0
	rts
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	move.l %d1,%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	move.l %d1,%d2
	clr.w %d2
	swap %d2
	lsr.w #8,%d2
	or.l %d2,%d0
	move.l %d1,%d2
	lsr.l #8,%d2
	and.l #65280,%d2
	or.l %d2,%d0
	lsl.l #8,%d1
	and.l #16711680,%d1
	or.l %d1,%d0
	move.l (%sp)+,%d2
	rts
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
	movem.l #15104,-(%sp)
	move.l 24(%sp),%d2
	move.l 28(%sp),%d3
	move.l %d3,%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	move.l %d2,%d4
	clr.w %d4
	swap %d4
	lsr.w #8,%d4
	move.l %d2,%d1
	lsr.l #8,%d1
	and.l #65280,%d1
	or.l %d1,%d4
	move.l %d2,%d1
	lsl.l #8,%d1
	and.l #16711680,%d1
	or.l %d1,%d4
	move.l %d2,%d6
	move.l %d3,%d7
	move.b %d2,%d7
	ror.l #8,%d7
	move.l %d7,%d1
	and.l #-16777216,%d1
	move.l %d2,%d6
	move.l %d3,%d7
	rol.l #8,%d6
	rol.l #8,%d7
	move.b %d7,%d6
	or.b %d6,%d0
	move.l %d3,%d2
	lsr.l #8,%d2
	and.l #65280,%d2
	or.l %d2,%d0
	move.l %d3,%d2
	lsl.l #8,%d2
	and.l #16711680,%d2
	or.l %d2,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#220
	rts
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	moveq #0,%d0
.L362:
	btst %d0,%d1
	jne .L364
	addq.l #1,%d0
	moveq #32,%d2
	cmp.l %d0,%d2
	jne .L362
	moveq #0,%d0
	jra .L359
.L364:
	addq.l #1,%d0
.L359:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L368
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L365
	moveq #1,%d0
.L367:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L367
.L365:
	rts
.L368:
	move.l %d1,%d0
	jra .L365
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
	jlt .L373
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L374
.L372:
	move.l %d2,%d0
.L370:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L374:
	moveq #0,%d2
	jra .L372
.L373:
	moveq #1,%d0
	jra .L370
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
	jlt .L378
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L379
.L377:
	move.l %d2,%d0
.L375:
	movem.l (%sp)+,#52
	rts
.L379:
	moveq #0,%d2
	jra .L377
.L378:
	moveq #1,%d0
	jra .L375
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
	jlt .L383
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
	jle .L384
.L382:
	move.l %d2,%d0
.L380:
	movem.l (%sp)+,#60
	rts
.L384:
	moveq #0,%d2
	jra .L382
.L383:
	moveq #1,%d0
	jra .L380
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
	jne .L387
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d4,-(%sp)
	move.l %d0,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L387
	tst.l %d2
	jlt .L394
	move.l #0x40000000,%d3
.L389:
	lea __mulsf3,%a2
	jra .L391
.L394:
	move.l #0x3f000000,%d3
	jra .L389
.L390:
	move.l %d2,%d2
	jpl .L395
	addq.l #1,%d2
.L395:
	asr.l #1,%d2
	jeq .L387
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L391:
	btst #0,%d2
	jeq .L390
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L390
.L387:
	move.l %d4,%d0
	movem.l (%sp)+,#1052
	rts
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
	subq.l #8,%sp
	movem.l #15924,-(%sp)
	move.l 44(%sp),%d4
	move.l 48(%sp),%d5
	move.l 52(%sp),%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L397
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L397
	tst.l %d6
	jlt .L404
	move.l #1073741824,%a2
	sub.l %a3,%a3
.L399:
	lea __muldf3,%a5
	jra .L401
.L404:
	move.l #1071644672,%a2
	sub.l %a3,%a3
	jra .L399
.L400:
	move.l %d6,%d6
	jpl .L405
	addq.l #1,%d6
.L405:
	asr.l #1,%d6
	jeq .L397
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
.L401:
	btst #0,%d6
	jeq .L400
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	lea (16,%sp),%sp
	move.l %d0,32(%sp)
	move.l %d1,36(%sp)
	move.l 32(%sp),%d4
	move.l 36(%sp),%d5
	jra .L400
.L397:
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#11388
	addq.l #8,%sp
	rts
	.size	ldexp, .-ldexp
	.section	.rodata
	.align	2
.LC2:
	.long	1073610752
	.long	-2147483648
	.long	0
	.align	2
.LC3:
	.long	1073741824
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
	jne .L407
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
	jeq .L407
	tst.l %d2
	jlt .L414
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
.L409:
	lea __mulxf3,%a2
	jra .L411
.L414:
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
	jra .L409
.L410:
	move.l %d2,%d2
	jpl .L415
	addq.l #1,%d2
.L415:
	asr.l #1,%d2
	jeq .L407
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
.L411:
	btst #0,%d2
	jeq .L410
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
	jra .L410
.L407:
	move.l %a4,(%a3)
	move.l %a5,4(%a3)
	move.l %a6,8(%a3)
	move.l %a3,%a0
	movem.l (%sp)+,#31804
	lea (24,%sp),%sp
	rts
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%a1
	tst.l 16(%sp)
	jeq .L417
	move.l 16(%sp),%d1
	add.l %a1,%d1
	move.l %d0,%a0
.L418:
	addq.l #1,%a0
	move.b (%a1)+,%d2
	eor.b %d2,-1(%a0)
	cmp.l %d1,%a1
	jne .L418
.L417:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
	movem.l #12320,-(%sp)
	move.l 16(%sp),%d3
	move.l 24(%sp),%d2
	move.l %d3,-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l %d3,%a2
	add.l %d0,%a2
	tst.l %d2
	jeq .L421
	move.l 20(%sp),%a1
	move.l %a2,%a0
.L422:
	move.l %a0,%a2
	move.b (%a1)+,%d1
	move.b %d1,(%a0)+
	jeq .L421
	subq.l #1,%d2
	jne .L422
	move.l %a0,%a2
.L421:
	tst.l %d2
	jne .L424
	clr.b (%a2)
.L424:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#1036
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
	jeq .L433
.L427:
	tst.b (%a0,%d0.l)
	jne .L434
.L426:
	rts
.L433:
	move.l %d1,%d0
	jra .L426
.L434:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jne .L427
	move.l %d1,%d0
	jra .L426
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%a1
	move.l %d0,%a0
	move.b (%a0),%d2
	jeq .L442
.L436:
	move.l %a1,%a0
.L439:
	move.b (%a0)+,%d1
	jeq .L443
	cmp.b %d1,%d2
	jne .L439
.L437:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
.L442:
	moveq #0,%d0
	jra .L437
.L443:
	addq.l #1,%d0
	move.l %d0,%a0
	move.b (%a0),%d2
	jne .L436
	moveq #0,%d0
	jra .L437
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	movem.l #14336,-(%sp)
	move.l 20(%sp),%d4
	move.l 16(%sp),%a1
	moveq #0,%d0
	jra .L446
.L445:
	tst.b %d2
	jeq .L449
.L446:
	move.l %a1,%d3
	move.b (%a1)+,%d2
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	cmp.l %a0,%d4
	jne .L445
	move.l %d3,%d0
	jra .L445
.L449:
	move.l %d0,%a0
	movem.l (%sp)+,#28
	rts
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #12348,-(%sp)
	move.l 28(%sp),%d2
	move.l 32(%sp),%a2
	move.l %a2,-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l %d0,%d3
	jeq .L450
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a3
	lea strchr,%a4
	lea strncmp,%a5
.L452:
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %a0,%d2
	jeq .L450
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L450
	addq.l #1,%d2
	jra .L452
.L450:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l (%sp)+,#15372
	rts
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d2
	move.l 24(%sp),%d3
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L464
.L456:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L459
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L458
.L459:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#60
	rts
.L464:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L456
.L458:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d4
	move.l %d3,%d5
	move.l %d4,%d2
	move.l %d5,%d3
	jra .L459
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	movem.l #15416,-(%sp)
	move.l 32(%sp),%d2
	move.l 44(%sp),%d0
	jeq .L469
	cmp.l 36(%sp),%d0
	jhi .L470
	move.l 36(%sp),%d3
	sub.l %d0,%d3
	add.l %d2,%d3
	cmp.l %d2,%d3
	jcs .L471
	move.l 40(%sp),%a3
	move.b (%a3)+,%d4
	move.l %d0,%d5
	subq.l #1,%d5
	lea memcmp,%a4
	jra .L468
.L467:
	cmp.l %d3,%d2
	jhi .L473
.L468:
	move.l %d2,%a2
	addq.l #1,%d2
	cmp.b (%a2),%d4
	jne .L467
	move.l %d5,-(%sp)
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L467
	jra .L465
.L473:
	sub.l %a2,%a2
.L465:
	move.l %a2,%a0
	move.l %a2,%d0
	movem.l (%sp)+,#7228
	rts
.L469:
	move.l %d2,%a2
	jra .L465
.L470:
	sub.l %a2,%a2
	jra .L465
.L471:
	sub.l %a2,%a2
	jra .L465
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	move.l 12(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr memcpy
	move.l %a0,%d0
	add.l 24(%sp),%d0
	lea (12,%sp),%sp
	move.l %d0,%a0
	rts
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.type	frexp, @function
frexp:
	subq.l #8,%sp
	movem.l #16188,-(%sp)
	move.l 52(%sp),%d2
	move.l 56(%sp),%d3
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L499
	moveq #0,%d7
.L476:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L496
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
	lea __gedf2,%a4
.L480:
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
	jge .L480
.L481:
	move.l 60(%sp),%a0
	move.l %d6,(%a0)
	tst.l %d7
	jeq .L485
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,40(%sp)
	move.l %d3,44(%sp)
	move.l 40(%sp),%d2
	move.l 44(%sp),%d3
.L485:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#15612
	addq.l #8,%sp
	rts
.L499:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	moveq #1,%d7
	jra .L476
.L496:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L497
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L498
	moveq #0,%d6
	lea __adddf3,%a5
	move.l #1071644672,%d4
	clr.l %d5
	lea __ltdf2,%a4
.L484:
	subq.l #1,%d6
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (16,%sp),%sp
	move.l %d0,%a2
	move.l %d1,%a3
	move.l %a2,%d2
	move.l %a3,%d3
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L484
	jra .L481
.L497:
	moveq #0,%d6
	jra .L481
.L498:
	moveq #0,%d6
	jra .L481
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
	lea (-16,%sp),%sp
	movem.l #16128,-(%sp)
	move.l 52(%sp),%d6
	move.l 56(%sp),%d7
	move.l 44(%sp),%d2
	move.l 48(%sp),%d3
	move.l %d2,%d0
	or.l %d3,%d0
	jeq .L503
	clr.l 32(%sp)
	clr.l 36(%sp)
.L502:
	sub.l %a0,%a0
	moveq #1,%d1
	and.l %d3,%d1
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	neg.l %d1
	negx.l %d0
	move.l %d0,%d4
	and.l %d6,%d4
	move.l %d4,24(%sp)
	move.l %d1,%d5
	and.l %d7,%d5
	move.l %d5,28(%sp)
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	add.l %d1,36(%sp)
	move.l 32(%sp),%d4
	addx.l %d0,%d4
	move.l %d4,32(%sp)
	add.l %d7,%d7
	addx.l %d6,%d6
	lsr.l #1,%d2
	roxr.l #1,%d3
	move.l %d2,%d5
	or.l %d3,%d5
	jne .L502
.L500:
	move.l 32(%sp),%d0
	move.l 36(%sp),%d1
	movem.l (%sp)+,#252
	lea (16,%sp),%sp
	rts
.L503:
	clr.l 32(%sp)
	clr.l 36(%sp)
	jra .L500
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
	jls .L507
	moveq #32,%d0
	moveq #1,%d2
.L506:
	tst.l %d1
	jlt .L507
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L507
	subq.l #1,%d0
	jne .L506
	move.l %d0,%d2
.L507:
	moveq #0,%d0
	tst.l %d2
	jne .L508
	move.l %d2,%d0
.L509:
	tst.l 16(%sp)
	jne .L519
.L505:
	move.l (%sp)+,%d2
	rts
.L511:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L509
.L508:
	cmp.l %a0,%d1
	jhi .L511
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L511
.L519:
	move.l %a0,%d0
	jra .L505
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
	jeq .L522
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
.L520:
	move.l (%sp)+,%d2
	rts
.L522:
	moveq #7,%d0
	jra .L520
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
	jeq .L525
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
.L523:
	movem.l (%sp)+,#252
	rts
.L525:
	moveq #63,%d0
	jra .L523
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	tst.l %d2
	jeq .L529
	moveq #0,%d0
.L528:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L528
.L526:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L529:
	move.l %d2,%d0
	jra .L526
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
	jls .L532
.L535:
	tst.l %d2
	jeq .L534
	move.l %d3,%a0
	move.l %d4,%a1
	lsl.l #3,%d2
	add.l %d3,%d2
.L538:
	move.l (%a0)+,%d5
	move.l (%a0)+,%d6
	move.l %d5,(%a1)+
	move.l %d6,(%a1)+
	cmp.l %a0,%d2
	jne .L538
.L534:
	cmp.l %d0,%d1
	jcc .L531
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L539:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L539
.L531:
	movem.l (%sp)+,#124
	rts
.L532:
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jhi .L535
	tst.l %d0
	jeq .L531
	move.l %d4,%a0
	add.l %d0,%a0
.L540:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L540
	jra .L531
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
	jls .L545
.L548:
	tst.l %d0
	jeq .L547
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
.L551:
	move.w (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L551
.L547:
	btst #0,%d1
	jeq .L544
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L544:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L545:
	lea (%a3,%d1.l),%a1
	cmp.l %a1,%a2
	jhi .L548
	add.l %d1,%a2
	tst.l %d1
	jeq .L544
.L552:
	move.b -(%a1),-(%a2)
	cmp.l %a1,%a3
	jne .L552
	jra .L544
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
	jls .L556
.L559:
	tst.l %d2
	jeq .L558
	move.l %d3,%a0
	move.l %d4,%a2
	add.l %d2,%d2
	add.l %d2,%d2
	move.l %d2,%a1
	add.l %d3,%a1
.L562:
	move.l (%a0)+,(%a2)+
	cmp.l %a0,%a1
	jne .L562
.L558:
	cmp.l %d0,%d1
	jcc .L555
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L563:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L563
.L555:
	movem.l (%sp)+,#1052
	rts
.L556:
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jhi .L559
	tst.l %d0
	jeq .L555
	move.l %d4,%a0
	add.l %d0,%a0
.L564:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L564
	jra .L555
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
.L576:
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L574
	addq.l #1,%d0
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L576
.L574:
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
.L580:
	btst %d0,%d1
	jne .L578
	addq.l #1,%d0
	moveq #16,%d2
	cmp.l %d0,%d2
	jne .L580
.L578:
	move.l (%sp)+,%d2
	rts
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __gesf2
	addq.l #8,%sp
	tst.l %d0
	jge .L588
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L582:
	move.l (%sp)+,%d2
	rts
.L588:
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L582
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
.L590:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L590
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
.L593:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L593
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
	tst.l %d2
	jeq .L598
	moveq #0,%d0
.L597:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L597
.L595:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L598:
	move.l %d2,%d0
	jra .L595
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	tst.l %d2
	jeq .L603
	tst.l %d3
	jeq .L604
	moveq #0,%d0
.L602:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L602
.L600:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L603:
	move.l %d2,%d0
	jra .L600
.L604:
	move.l %d3,%d0
	jra .L600
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	moveq #1,%d2
	cmp.l %d1,%a0
	jls .L608
	moveq #32,%d0
	moveq #1,%d2
.L607:
	tst.l %d1
	jlt .L608
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L608
	subq.l #1,%d0
	jne .L607
	move.l %d0,%d2
.L608:
	moveq #0,%d0
	tst.l %d2
	jne .L609
	move.l %d2,%d0
.L610:
	tst.l 16(%sp)
	jne .L620
.L606:
	move.l (%sp)+,%d2
	rts
.L612:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L610
.L609:
	cmp.l %a0,%d1
	jhi .L612
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L612
.L620:
	move.l %a0,%d0
	jra .L606
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
	jlt .L624
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L625
.L623:
	move.l %d2,%d0
.L621:
	movem.l (%sp)+,#28
	rts
.L625:
	moveq #0,%d2
	jra .L623
.L624:
	moveq #-1,%d0
	jra .L621
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
	jlt .L629
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L630
.L628:
	move.l %d6,%d0
.L626:
	movem.l (%sp)+,#124
	rts
.L630:
	moveq #0,%d6
	jra .L628
.L629:
	moveq #-1,%d0
	jra .L626
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
	jmi .L641
	sub.l %a0,%a0
.L634:
	tst.l %d2
	jeq .L639
	moveq #32,%d4
	moveq #0,%d0
.L636:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L635
	subq.b #1,%d4
	jne .L636
.L635:
	cmp.w #0,%a0
	jeq .L633
	neg.l %d0
.L633:
	movem.l (%sp)+,#28
	rts
.L641:
	neg.l %d2
	move.w #1,%a0
	jra .L634
.L639:
	move.l %d2,%d0
	jra .L635
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	tst.l %d0
	jlt .L647
	moveq #0,%d2
.L643:
	tst.l %d1
	jlt .L648
.L644:
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d2
	jeq .L642
	neg.l %d0
.L642:
	move.l (%sp)+,%d2
	rts
.L647:
	neg.l %d0
	moveq #1,%d2
	jra .L643
.L648:
	neg.l %d1
	eor.w #1,%d2
	jra .L644
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.l 16(%sp),%d2
	tst.l %d0
	jlt .L654
	moveq #0,%d3
.L650:
	pea 1.w
	move.l %d2,%d1
	jmi .L655
.L651:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d3
	jeq .L649
	neg.l %d0
.L649:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L654:
	neg.l %d0
	moveq #1,%d3
	jra .L650
.L655:
	neg.l %d1
	jra .L651
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
	jcc .L658
	moveq #16,%d0
	moveq #1,%d2
.L657:
	tst.w %d1
	jlt .L658
	add.w %d1,%d1
	add.w %d2,%d2
	cmp.w %a0,%d1
	jcc .L658
	subq.l #1,%d0
	jne .L657
	clr.w %d2
.L658:
	clr.w %d0
	tst.w %d2
	jne .L659
	move.w %d2,%d0
.L660:
	tst.l 16(%sp)
	jne .L670
.L656:
	move.l (%sp)+,%d2
	rts
.L662:
	lsr.w #1,%d2
	lsr.w #1,%d1
	tst.w %d2
	jeq .L660
.L659:
	cmp.w %a0,%d1
	jhi .L662
	sub.w %d1,%a0
	or.w %d2,%d0
	jra .L662
.L670:
	move.w %a0,%d0
	jra .L656
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	moveq #1,%d2
	cmp.l %d1,%a0
	jls .L673
	moveq #32,%d0
	moveq #1,%d2
.L672:
	tst.l %d1
	jlt .L673
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L673
	subq.l #1,%d0
	jne .L672
	move.l %d0,%d2
.L673:
	moveq #0,%d0
	tst.l %d2
	jne .L674
	move.l %d2,%d0
.L675:
	tst.l 16(%sp)
	jne .L685
.L671:
	move.l (%sp)+,%d2
	rts
.L677:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L675
.L674:
	cmp.l %a0,%d1
	jhi .L677
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L677
.L685:
	move.l %a0,%d0
	jra .L671
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
	jeq .L687
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	moveq #0,%d1
.L689:
	movem.l (%sp)+,#28
	rts
.L687:
	tst.l %d2
	jeq .L690
	move.l %d3,%d1
	lsl.l %d2,%d1
	moveq #32,%d4
	sub.l %d2,%d4
	lsr.l %d4,%d3
	lsl.l %d2,%d0
	or.l %d3,%d0
	jra .L689
.L690:
	move.l %d3,%d1
	jra .L689
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d1
	move.l 20(%sp),%d3
	move.l 24(%sp),%d2
	btst #5,%d2
	jeq .L692
	move.l %d1,%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
.L694:
	movem.l (%sp)+,#28
	rts
.L692:
	tst.l %d2
	jeq .L695
	move.l %d1,%d0
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L694
.L695:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L694
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movem.l #15104,-(%sp)
	move.l 24(%sp),%d2
	move.l 28(%sp),%d3
	move.l %d2,%d4
	clr.w %d4
	swap %d4
	lsr.w #8,%d4
	move.l %d3,%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	move.l %d2,%d1
	lsr.l #8,%d1
	and.l #65280,%d1
	or.l %d1,%d4
	move.l %d2,%d1
	lsl.l #8,%d1
	and.l #16711680,%d1
	or.l %d1,%d4
	move.l %d2,%d6
	move.l %d3,%d7
	move.b %d2,%d7
	ror.l #8,%d7
	move.l %d7,%d1
	and.l #-16777216,%d1
	move.l %d2,%d6
	move.l %d3,%d7
	rol.l #8,%d6
	rol.l #8,%d7
	move.b %d7,%d6
	or.b %d6,%d0
	move.l %d3,%d2
	lsr.l #8,%d2
	and.l #65280,%d2
	or.l %d2,%d0
	move.l %d3,%d2
	lsl.l #8,%d2
	and.l #16711680,%d2
	or.l %d2,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#220
	rts
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	move.l %d1,%d0
	clr.w %d0
	swap %d0
	lsr.w #8,%d0
	move.l %d1,%d2
	lsl.w #8,%d2
	swap %d2
	clr.w %d2
	or.l %d2,%d0
	move.l %d1,%d2
	lsr.l #8,%d2
	and.l #65280,%d2
	or.l %d2,%d0
	lsl.l #8,%d1
	and.l #16711680,%d1
	or.l %d1,%d0
	move.l (%sp)+,%d2
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
	jne .L699
	moveq #2,%d0
	sub.l %d2,%d0
.L700:
	add.l %d1,%a0
	add.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L699:
	moveq #0,%d0
	jra .L700
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	move.l 8(%sp),%d1
	move.l 16(%sp),%d0
	move.l 4(%sp),%a1
	move.l 12(%sp),%a0
	cmp.l %a1,%a0
	jgt .L703
	jlt .L704
	cmp.l %d1,%d0
	jhi .L705
	jcs .L706
	moveq #1,%d0
	jra .L701
.L703:
	moveq #0,%d0
.L701:
	rts
.L704:
	moveq #2,%d0
	jra .L701
.L705:
	moveq #0,%d0
	jra .L701
.L706:
	moveq #2,%d0
	jra .L701
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __cmpdi2
	lea (16,%sp),%sp
	subq.l #1,%d0
	rts
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	tst.w %d0
	seq %d2
	ext.w %d2
	ext.l %d2
	neg.l %d2
	lsl.l #4,%d2
	move.l %d0,%d1
	lsr.l %d2,%d1
	tst.b %d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	lsl.l #3,%d0
	lsr.l %d0,%d1
	move.l %d0,%a0
	add.l %d2,%a0
	moveq #15,%d0
	and.l %d1,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	add.l %d0,%d0
	add.l %d0,%d0
	lsr.l %d0,%d1
	add.l %d0,%a0
	moveq #3,%d2
	and.l %d1,%d2
	seq %d2
	ext.w %d2
	ext.l %d2
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
	neg.l %d0
	and.l %d3,%d0
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
	jeq .L710
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	moveq #0,%d0
.L712:
	movem.l (%sp)+,#28
	rts
.L710:
	tst.l %d2
	jeq .L713
	move.l %d1,%d0
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L712
.L713:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L712
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d6
	move.l 36(%sp),%d5
	move.l %d6,%d7
	and.l #65535,%d7
	move.l %d5,%d3
	and.l #65535,%d3
	lea __mulsi3,%a2
	move.l %d3,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,%d4
	clr.w %d4
	swap %d4
	clr.w %d6
	swap %d6
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d4
	and.l #65535,%d2
	move.l %d4,%d3
	swap %d3
	clr.w %d3
	add.l %d3,%d2
	clr.w %d3
	swap %d3
	clr.w %d5
	swap %d5
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d3
	and.l #65535,%d2
	move.l %d3,%d0
	swap %d0
	clr.w %d0
	add.l %d0,%d2
	clr.w %d4
	swap %d4
	move.l %d5,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d4
	move.l %d3,%d0
	clr.w %d0
	swap %d0
	add.l %d4,%d0
	move.l %d2,%d1
	movem.l (%sp)+,#1276
	rts
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	movem.l #15392,-(%sp)
	move.l 28(%sp),%d5
	move.l 36(%sp),%d2
	move.l %d2,-(%sp)
	move.l %d5,-(%sp)
	jsr __muldsi3
	addq.l #8,%sp
	move.l %d0,%d4
	move.l %d1,%d3
	lea __mulsi3,%a2
	move.l 24(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l 32(%sp),-(%sp)
	move.l %d5,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d2,%d0
	add.l %d4,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1084
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
	move.l 4(%sp),%d1
	move.l 8(%sp),%d0
	eor.l %d0,%d1
	move.l %d1,%d0
	clr.w %d0
	swap %d0
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #8,%d1
	eor.l %d0,%d1
	move.l %d1,%d0
	lsr.l #4,%d0
	eor.l %d1,%d0
	moveq #15,%d1
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
	moveq #0,%d0
	move.w 4(%sp),%d0
	move.l 4(%sp),%d1
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #8,%d1
	eor.l %d0,%d1
	move.l %d1,%d0
	lsr.l #4,%d0
	eor.l %d1,%d0
	moveq #15,%d1
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
	lea (-16,%sp),%sp
	movem.l #15158,-(%sp)
	move.l 56(%sp),%a2
	move.l 60(%sp),%a3
	move.l 64(%sp),%a6
	move.l %a6,%d4
	move.l #1072693248,%d6
	clr.l %d7
	lea __muldf3,%a5
	jra .L724
.L722:
	move.l %d4,%d4
	jpl .L727
	addq.l #1,%d4
.L727:
	asr.l #1,%d4
	jeq .L723
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
.L724:
	btst #0,%d4
	jeq .L722
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a5)
	lea (16,%sp),%sp
	move.l %d0,36(%sp)
	move.l %d1,40(%sp)
	move.l 36(%sp),%d6
	move.l 40(%sp),%d7
	jra .L722
.L723:
	cmp.w #0,%a6
	jlt .L726
.L721:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#27868
	lea (16,%sp),%sp
	rts
.L726:
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
	jra .L721
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
	lea __mulsf3,%a2
	jra .L731
.L729:
	move.l %d2,%d2
	jpl .L734
	addq.l #1,%d2
.L734:
	asr.l #1,%d2
	jeq .L730
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L731:
	btst #0,%d2
	jeq .L729
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L729
.L730:
	tst.l %d5
	jlt .L733
.L728:
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
.L733:
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L728
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	move.l 8(%sp),%d1
	move.l 16(%sp),%d0
	move.l 4(%sp),%a1
	move.l 12(%sp),%a0
	cmp.l %a1,%a0
	jhi .L737
	jcs .L738
	cmp.l %d1,%d0
	jhi .L739
	jcs .L740
	moveq #1,%d0
	jra .L735
.L737:
	moveq #0,%d0
.L735:
	rts
.L738:
	moveq #2,%d0
	jra .L735
.L739:
	moveq #0,%d0
	jra .L735
.L740:
	moveq #2,%d0
	jra .L735
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __ucmpdi2
	lea (16,%sp),%sp
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
