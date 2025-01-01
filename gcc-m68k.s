#NO_APP
	.file	"mini-libc.c"
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	cmp.l %d0,%d1
	jcc .L2
	move.l 20(%sp),%a0
	add.l %d1,%a0
	move.l 20(%sp),%a2
	lea -1(%a2,%d0.l),%a1
	jra .L3
.L4:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
.L3:
	cmp.l %a0,%d1
	jne .L4
.L5:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L2:
	cmp.l %d0,%d1
	jeq .L5
	move.l %d0,%a1
	move.l 20(%sp),%d2
	add.l %d1,%d2
	move.l %d1,%a0
	jra .L6
.L7:
	move.b (%a0)+,(%a1)+
.L6:
	cmp.l %a0,%d2
	jne .L7
	jra .L5
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
	move.l 16(%sp),%a0
	move.l 12(%sp),%a1
	jra .L9
.L11:
	subq.l #1,%d1
.L9:
	move.l %a1,%d2
	tst.l %d1
	jeq .L10
	move.b (%a0)+,(%a1)
	moveq #0,%d0
	move.b (%a1)+,%d0
	cmp.l %d3,%d0
	jne .L11
.L10:
	tst.l %d1
	jeq .L13
	move.l %d2,%d0
	addq.l #1,%d0
.L12:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L13:
	moveq #0,%d0
	jra .L12
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%sp),%d1
	moveq #0,%d3
	move.b 19(%sp),%d3
	move.l 12(%sp),%a1
	jra .L15
.L17:
	subq.l #1,%d1
.L15:
	move.l %a1,%d0
	tst.l %d1
	jeq .L16
	moveq #0,%d2
	move.b (%a1)+,%d2
	cmp.l %d3,%d2
	jne .L17
.L16:
	tst.l %d1
	jeq .L20
.L18:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L20:
	moveq #0,%d0
	jra .L18
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d0
	move.l 12(%sp),%a1
	move.l 16(%sp),%a0
	jra .L22
.L24:
	subq.l #1,%d0
.L22:
	move.l %a0,%a2
	move.l %a1,%a3
	tst.l %d0
	jeq .L23
	cmpm.b (%a0)+,(%a1)+
	jeq .L24
.L23:
	tst.l %d0
	jeq .L26
	moveq #0,%d0
	move.b (%a3),%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
.L25:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L26:
	moveq #0,%d0
	jra .L25
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a0
	move.l %d0,%a1
	move.l %a0,%d1
	add.l 12(%sp),%d1
	jra .L28
.L29:
	move.b (%a0)+,(%a1)+
.L28:
	cmp.l %a0,%d1
	jne .L29
	move.l %d0,%a0
	rts
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.type	memrchr, @function
memrchr:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	moveq #0,%d0
	move.b 15(%sp),%d0
	move.l 16(%sp),%d1
	subq.l #1,%d1
.L31:
	moveq #-1,%d2
	cmp.l %d1,%d2
	jeq .L35
	moveq #0,%d2
	move.b (%a0,%d1.l),%d2
	move.l %d1,%a1
	subq.l #1,%a1
	cmp.l %d0,%d2
	jeq .L36
	move.l %a1,%d1
	jra .L31
.L36:
	move.l %a0,%d0
	add.l %d1,%d0
	jra .L32
.L35:
	moveq #0,%d0
.L32:
	move.l %d0,%a0
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
	move.l %d0,%d1
	add.l 16(%sp),%d1
	move.l %d0,%a0
	jra .L38
.L39:
	move.b %d2,(%a0)+
.L38:
	cmp.l %a0,%d1
	jne .L39
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
	move.l 8(%sp),%a1
	move.l 4(%sp),%a0
.L41:
	move.l %a0,%d0
	move.b (%a1)+,%d1
	move.b %d1,(%a0)+
	jne .L41
	move.l %d0,%a0
	rts
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
	move.l %d2,-(%sp)
	moveq #0,%d2
	move.b 15(%sp),%d2
	move.l 8(%sp),%a0
.L45:
	move.l %a0,%d0
	tst.b (%a0)+
	jeq .L44
	moveq #0,%d1
	move.b -1(%a0),%d1
	cmp.l %d2,%d1
	jne .L45
.L44:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 8(%sp),%a1
.L49:
	move.l %a1,%d0
	move.b (%a1)+,%d1
	ext.w %d1
	move.w %d1,%a2
	cmp.l %a0,%a2
	jeq .L48
	tst.b -1(%a1)
	jne .L49
	moveq #0,%d0
.L48:
	move.l %d0,%a0
	move.l (%sp)+,%a2
	rts
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
.L54:
	move.l %a1,%a2
	move.l %a0,%a3
	cmpm.b (%a1)+,(%a0)+
	jne .L53
	tst.b -1(%a0)
	jne .L54
.L53:
	moveq #0,%d0
	move.b (%a3),%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
	move.l 4(%sp),%d1
	move.l %d1,%a0
.L57:
	move.l %a0,%d0
	tst.b (%a0)+
	jne .L57
	sub.l %d1,%d0
	rts
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	tst.l 20(%sp)
	jeq .L63
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
	move.l %a0,%d0
	add.l 20(%sp),%d0
.L62:
	move.l %a1,%a2
	move.l %a0,%a3
	tst.b (%a0)+
	jeq .L61
	tst.b (%a1)
	jeq .L61
	cmp.l %a0,%d0
	jeq .L61
	move.b -1(%a0),%d1
	cmp.b (%a1)+,%d1
	jeq .L62
.L61:
	moveq #0,%d0
	move.b (%a3),%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
.L60:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L63:
	moveq #0,%d0
	jra .L60
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	move.l 12(%sp),%a1
	move.l %d1,%a0
	add.l 16(%sp),%d1
	jra .L66
.L67:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
.L66:
	move.l %d1,%d0
	sub.l %a0,%d0
	moveq #1,%d2
	cmp.l %d0,%d2
	jlt .L67
	move.l (%sp)+,%d2
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
	neg.b %d0
	and.l #255,%d0
	rts
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.type	isascii, @function
isascii:
	moveq #127,%d1
	cmp.l 4(%sp),%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
	rts
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.type	isblank, @function
isblank:
	move.l 4(%sp),%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	jeq .L72
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	and.l #255,%d0
.L71:
	rts
.L72:
	moveq #1,%d0
	jra .L71
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L75
	moveq #127,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	and.l #255,%d0
.L74:
	rts
.L75:
	moveq #1,%d0
	jra .L74
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
	neg.b %d0
	and.l #255,%d0
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
	neg.b %d0
	and.l #255,%d0
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
	neg.b %d0
	and.l #255,%d0
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
	neg.b %d0
	and.l #255,%d0
	rts
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.type	isspace, @function
isspace:
	move.l 4(%sp),%a0
	moveq #32,%d0
	cmp.l %a0,%d0
	jeq .L82
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
.L81:
	rts
.L82:
	moveq #1,%d0
	jra .L81
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
	neg.b %d0
	and.l #255,%d0
	rts
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	move.l 4(%sp),%a0
	moveq #31,%d0
	cmp.l %a0,%d0
	jcc .L86
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcc .L87
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L88
	add.l #-65529,%a0
	moveq #2,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
	jra .L85
.L86:
	moveq #1,%d0
.L85:
	rts
.L87:
	moveq #1,%d0
	jra .L85
.L88:
	moveq #1,%d0
	jra .L85
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
	neg.b %d0
	and.l #255,%d0
	rts
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.type	iswprint, @function
iswprint:
	move.l 4(%sp),%d0
	cmp.l #254,%d0
	jls .L97
	cmp.l #8231,%d0
	jls .L93
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L94
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L95
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L96
	and.l #65534,%d0
	cmp.l #65534,%d0
	sne %d0
	neg.b %d0
	and.l #255,%d0
	jra .L92
.L97:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	neg.b %d0
	and.l #255,%d0
.L92:
	rts
.L93:
	moveq #1,%d0
	jra .L92
.L94:
	moveq #1,%d0
	jra .L92
.L95:
	moveq #1,%d0
	jra .L92
.L96:
	moveq #0,%d0
	jra .L92
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	move.w #-48,%a0
	add.l 4(%sp),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L100
	moveq #32,%d0
	or.l 4(%sp),%d0
	move.w #-97,%a0
	add.l %d0,%a0
	moveq #5,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
.L99:
	rts
.L100:
	moveq #1,%d0
	jra .L99
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
	jne .L105
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L106
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L109
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
.L103:
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
.L105:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L103
.L106:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L103
.L109:
	moveq #0,%d0
	moveq #0,%d1
	jra .L103
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
	jne .L113
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L114
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L117
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
.L111:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L113:
	move.l %d2,%d0
	jra .L111
.L114:
	move.l %d3,%d0
	jra .L111
.L117:
	moveq #0,%d0
	jra .L111
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
	jne .L124
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L125
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d4,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L120
	tst.l %d2
	jge .L126
	move.l %d4,%d1
	move.l %d5,%d0
.L119:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L120:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L121
	clr.b 27(%sp)
.L121:
	tst.b 27(%sp)
	jeq .L122
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L119
.L122:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L119
.L124:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L119
.L125:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L119
.L126:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L119
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d2
	move.l 20(%sp),%d3
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L133
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L134
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L129
	tst.l %d2
	jge .L135
	move.l %d3,%d0
	jra .L128
.L129:
	moveq #1,%d4
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L130
	clr.b %d4
.L130:
	tst.b %d4
	jeq .L132
	move.l %d3,%d2
.L132:
	move.l %d2,%d0
.L128:
	movem.l (%sp)+,#28
	rts
.L133:
	move.l %d3,%d0
	jra .L128
.L134:
	move.l %d2,%d0
	jra .L128
.L135:
	move.l %d2,%d0
	jra .L128
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
	jne .L152
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L153
	move.l %a4,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L142
	cmp.w #0,%a4
	jge .L147
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L143:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L136
.L152:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L136
.L153:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L136
.L147:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L143
.L142:
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
	jlt .L144
	clr.b %d2
.L144:
	tst.b %d2
	jeq .L145
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L146:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L136:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L145:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L146
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
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d4,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L156
	tst.l %d2
	jge .L162
	move.l %d2,%d1
	move.l %d3,%d0
.L155:
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
	jlt .L157
	clr.b 27(%sp)
.L157:
	tst.b 27(%sp)
	jeq .L158
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L155
.L158:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L155
.L160:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L155
.L161:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L155
.L162:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L155
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d2
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L169
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L170
	move.l %d3,%d1
	and.l #-2147483648,%d1
	move.l %d2,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L165
	tst.l %d3
	jge .L171
	move.l %d3,%d0
	jra .L164
.L165:
	moveq #1,%d4
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L166
	clr.b %d4
.L166:
	tst.b %d4
	jeq .L168
	move.l %d3,%d2
.L168:
	move.l %d2,%d0
.L164:
	movem.l (%sp)+,#28
	rts
.L169:
	move.l %d2,%d0
	jra .L164
.L170:
	move.l %d3,%d0
	jra .L164
.L171:
	move.l %d2,%d0
	jra .L164
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
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
	jne .L188
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L189
	move.l %a4,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L178
	cmp.w #0,%a4
	jge .L183
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
.L179:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L172
.L188:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L172
.L189:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L172
.L183:
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L179
.L178:
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
	jlt .L180
	clr.b %d2
.L180:
	tst.b %d2
	jeq .L181
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
.L182:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L172:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L181:
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L182
	.size	fminl, .-fminl
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	lea (s.0),%a0
	lea digits,%a1
	jra .L191
.L192:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
.L191:
	tst.l %d0
	jne .L192
	clr.b (%a0)
	move.l #s.0,%d0
	move.l %d0,%a0
	rts
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,2
	.align	2
	.globl	srand
	.type	srand, @function
srand:
	clr.l seed
	move.l 4(%sp),%d0
	subq.l #1,%d0
	move.l %d0,seed+4
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
	jeq .L198
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	tst.l (%a0)
	jeq .L195
	move.l (%a0),%a1
	move.l %a0,4(%a1)
.L195:
	rts
.L198:
	clr.l 4(%a0)
	clr.l (%a0)
	jra .L195
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	tst.l (%a0)
	jeq .L200
	move.l (%a0),%a1
	move.l 4(%a0),4(%a1)
.L200:
	tst.l 4(%a0)
	jeq .L199
	move.l 4(%a0),%a1
	move.l (%a0),(%a1)
.L199:
	rts
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
	movem.l #15928,-(%sp)
	move.l 36(%sp),%d6
	move.l 40(%sp),%a4
	move.l 44(%sp),%a2
	move.l 48(%sp),%d5
	move.l 52(%sp),%a3
	move.l (%a2),%d4
	move.l %a4,%d3
	moveq #0,%d2
	jra .L203
.L204:
	addq.l #1,%d2
.L203:
	cmp.l %d2,%d4
	jeq .L207
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a3)
	add.l %d5,%d3
	addq.l #8,%sp
	tst.l %d0
	jne .L204
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %a4,%d0
	jra .L205
.L207:
	move.l %d4,%d0
	addq.l #1,%d0
	move.l %d0,(%a2)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l %d5,-(%sp)
	move.l %d6,-(%sp)
	pea (%a4,%d0.l)
	jsr memcpy
	move.l %a0,%d0
	lea (12,%sp),%sp
.L205:
	move.l %d0,%a0
	movem.l (%sp)+,#7292
	rts
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.type	lfind, @function
lfind:
	movem.l #15904,-(%sp)
	move.l 28(%sp),%d6
	move.l 40(%sp),%d5
	move.l 44(%sp),%a2
	move.l 36(%sp),%a0
	move.l (%a0),%d4
	move.l 32(%sp),%d3
	moveq #0,%d2
	jra .L209
.L210:
	addq.l #1,%d2
.L209:
	cmp.l %d2,%d4
	jeq .L213
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	add.l %d5,%d3
	addq.l #8,%sp
	tst.l %d0
	jne .L210
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 32(%sp),%d0
	jra .L211
.L213:
	moveq #0,%d0
.L211:
	move.l %d0,%a0
	movem.l (%sp)+,#1148
	rts
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	jmi .L216
.L215:
	rts
.L216:
	neg.l %d0
	jra .L215
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #56,-(%sp)
	move.l 16(%sp),%a3
	lea isspace,%a4
.L218:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L218
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L224
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L225
	moveq #1,%d1
.L219:
	addq.l #1,%a2
.L220:
	sub.l %a0,%a0
	jra .L221
.L224:
	moveq #0,%d1
	jra .L219
.L225:
	moveq #0,%d1
	jra .L220
.L222:
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %d0,%d0
	add.l %d0,%a0
	move.b -1(%a2),%d0
	ext.w %d0
	move.l %a0,%a1
	sub.w %d0,%a1
	lea 48(%a1,%a0.l),%a0
.L221:
	move.b (%a2)+,%d0
	ext.w %d0
	move.w %d0,%a1
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcc .L222
	tst.l %d1
	jne .L226
	move.l %a0,%d0
	neg.l %d0
.L223:
	movem.l (%sp)+,#7168
	rts
.L226:
	move.l %a0,%d0
	jra .L223
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	movem.l #56,-(%sp)
	move.l 16(%sp),%a3
	lea isspace,%a4
.L229:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L229
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L235
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L236
	moveq #1,%d1
.L230:
	addq.l #1,%a2
.L231:
	sub.l %a0,%a0
	jra .L232
.L235:
	moveq #0,%d1
	jra .L230
.L236:
	moveq #0,%d1
	jra .L231
.L233:
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %d0,%d0
	add.l %d0,%a0
	move.b -1(%a2),%d0
	ext.w %d0
	move.l %a0,%a1
	sub.w %d0,%a1
	lea 48(%a1,%a0.l),%a0
.L232:
	move.b (%a2)+,%d0
	ext.w %d0
	move.w %d0,%a1
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcc .L233
	tst.l %d1
	jne .L237
	move.l %a0,%d0
	neg.l %d0
.L234:
	movem.l (%sp)+,#7168
	rts
.L237:
	move.l %a0,%d0
	jra .L234
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #15928,-(%sp)
	move.l 36(%sp),%a2
	lea isspace,%a4
.L240:
	move.l %a2,%a3
	move.b (%a2)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L240
	move.b (%a3),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L246
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L247
	moveq #1,%d6
.L241:
	addq.l #1,%a3
.L242:
	clr.l %d4
	clr.l %d5
	jra .L243
.L246:
	moveq #0,%d6
	jra .L241
.L247:
	moveq #0,%d6
	jra .L242
.L244:
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
	move.b -1(%a3),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l #-48,%d1
	add.l %a0,%d1
	smi %d0
	ext.w %d0
	ext.l %d0
	move.l %d2,%d4
	move.l %d3,%d5
	sub.l %d1,%d5
	subx.l %d0,%d4
.L243:
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L244
	tst.l %d6
	jne .L248
	move.l %d4,%d0
	move.l %d5,%d1
	neg.l %d1
	negx.l %d0
.L245:
	movem.l (%sp)+,#7292
	rts
.L248:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L245
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
	movem.l #15920,-(%sp)
	move.l 32(%sp),%d6
	move.l 36(%sp),%d5
	move.l 40(%sp),%d2
	move.l 44(%sp),%d4
	move.l 48(%sp),%a3
	lea __mulsi3,%a2
	jra .L251
.L258:
	lsr.l #1,%d2
.L251:
	tst.l %d2
	jeq .L257
	move.l %d4,-(%sp)
	move.l %d2,%d0
	lsr.l #1,%d0
	move.l %d0,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d5,%d3
	add.l %d0,%d3
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jlt .L258
	jle .L256
	move.l %d3,%d5
	add.l %d4,%d5
	move.l %d2,%d0
	lsr.l #1,%d0
	subq.l #1,%d2
	sub.l %d0,%d2
	jra .L251
.L257:
	moveq #0,%d0
.L254:
	move.l %d0,%a0
	movem.l (%sp)+,#3196
	rts
.L256:
	move.l %d3,%d0
	jra .L254
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d7
	move.l 48(%sp),%d5
	move.l 52(%sp),%a3
	move.l 56(%sp),%d6
	move.l 44(%sp),%d2
	move.l 40(%sp),%d4
	lea __mulsi3,%a2
	jra .L260
.L262:
	asr.l #1,%d2
.L260:
	tst.l %d2
	jeq .L265
	move.l %d5,-(%sp)
	move.l %d2,%d0
	asr.l #1,%d0
	move.l %d0,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d4,%d3
	add.l %d0,%d3
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L264
	jle .L262
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	jra .L262
.L265:
	moveq #0,%d0
.L261:
	move.l %d0,%a0
	movem.l (%sp)+,#3324
	rts
.L264:
	move.l %d3,%d0
	jra .L261
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
	jlt .L269
.L268:
	rts
.L269:
	neg.l %d1
	negx.l %d0
	jra .L268
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	movem.l #16160,-(%sp)
	move.l %a1,%a2
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __divdi3
	lea (16,%sp),%sp
	move.l %d0,%d7
	move.l %d1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d7,(%a2)
	move.l %d6,4(%a2)
	move.l %d0,8(%a2)
	move.l %d1,12(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#1276
	rts
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.type	labs, @function
labs:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	jmi .L273
.L272:
	rts
.L273:
	neg.l %d0
	jra .L272
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
	jlt .L277
.L276:
	rts
.L277:
	neg.l %d1
	negx.l %d0
	jra .L276
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.type	lldiv, @function
lldiv:
	movem.l #16160,-(%sp)
	move.l %a1,%a2
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __divdi3
	lea (16,%sp),%sp
	move.l %d0,%d7
	move.l %d1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d7,(%a2)
	move.l %d6,4(%a2)
	move.l %d0,8(%a2)
	move.l %d1,12(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#1276
	rts
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.type	wcschr, @function
wcschr:
	move.l 8(%sp),%d0
	move.l 4(%sp),%a1
.L281:
	move.l %a1,%a0
	tst.l (%a1)+
	jeq .L280
	cmp.l -4(%a1),%d0
	jne .L281
.L280:
	tst.l (%a0)
	jeq .L285
	move.l %a0,%d0
.L282:
	move.l %d0,%a0
	rts
.L285:
	moveq #0,%d0
	jra .L282
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
.L288:
	move.l %a1,%a2
	move.l %a0,%a3
	cmpm.l (%a1)+,(%a0)+
	jne .L287
	tst.l -4(%a0)
	jeq .L287
	tst.l -4(%a1)
	jne .L288
.L287:
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L290
	sgt %d0
	neg.b %d0
	and.l #255,%d0
.L289:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L290:
	moveq #-1,%d0
	jra .L289
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l %d0,%a0
.L293:
	move.l (%a1)+,(%a0)
	tst.l (%a0)+
	jne .L293
	move.l %d0,%a0
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%d1
	move.l %d1,%a0
.L296:
	move.l %a0,%d0
	tst.l (%a0)+
	jne .L296
	sub.l %d1,%d0
	asr.l #2,%d0
	rts
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d0
	move.l 16(%sp),%a1
	move.l 12(%sp),%a0
.L299:
	move.l %a1,%a2
	move.l %a0,%a3
	tst.l %d0
	jeq .L300
	move.l (%a0),%d1
	cmp.l (%a1),%d1
	jne .L300
	tst.l (%a0)+
	jeq .L300
	tst.l (%a1)+
	jeq .L300
	subq.l #1,%d0
	jra .L299
.L300:
	tst.l %d0
	jeq .L303
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L304
	sgt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L302
.L303:
	moveq #0,%d0
.L302:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L304:
	moveq #-1,%d0
	jra .L302
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	move.l 4(%sp),%a1
	jra .L306
.L308:
	subq.l #1,%d1
.L306:
	move.l %a1,%d0
	tst.l %d1
	jeq .L307
	cmp.l (%a1)+,%a0
	jne .L308
.L307:
	tst.l %d1
	jeq .L311
.L309:
	move.l %d0,%a0
	rts
.L311:
	moveq #0,%d0
	jra .L309
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d0
	move.l 12(%sp),%a1
	move.l 16(%sp),%a0
	jra .L313
.L315:
	subq.l #1,%d0
.L313:
	move.l %a0,%a2
	move.l %a1,%a3
	tst.l %d0
	jeq .L314
	cmpm.l (%a0)+,(%a1)+
	jeq .L315
.L314:
	tst.l %d0
	jeq .L317
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L318
	sgt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L316
.L317:
	moveq #0,%d0
.L316:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L318:
	moveq #-1,%d0
	jra .L316
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	move.l %d0,%a0
	jra .L320
.L321:
	move.l (%a1)+,(%a0)+
.L320:
	dbra %d1,.L321
	clr.w %d1
	subq.l #1,%d1
	jcc .L321
	move.l %d0,%a0
	rts
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%a0
	move.l 16(%sp),%d1
	cmp.l %d0,%a0
	jeq .L323
	move.l %d0,%d2
	sub.l %a0,%d2
	move.l %d1,%a1
	add.l %d1,%a1
	add.l %a1,%a1
	cmp.l %d2,%a1
	jhi .L324
	move.l %d0,%a1
	jra .L325
.L324:
	move.l %d1,%a1
	subq.l #1,%a1
	add.l %a1,%a1
	add.l %a1,%a1
	add.l %a1,%a0
	add.l %d0,%a1
	jra .L326
.L327:
	move.l (%a0),(%a1)
	subq.l #4,%a0
	subq.l #4,%a1
.L326:
	dbra %d1,.L327
	clr.w %d1
	subq.l #1,%d1
	jcc .L327
.L323:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
.L328:
	move.l (%a0)+,(%a1)+
.L325:
	dbra %d1,.L328
	clr.w %d1
	subq.l #1,%d1
	jcc .L328
	jra .L323
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	move.l %d0,%a0
	jra .L330
.L331:
	move.l %a1,(%a0)+
.L330:
	dbra %d1,.L331
	clr.w %d1
	subq.l #1,%d1
	jcc .L331
	move.l %d0,%a0
	rts
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	cmp.l %d0,%a1
	jls .L333
	move.l 12(%sp),%a0
	add.l %d0,%a0
	move.l 12(%sp),%d1
	lea -1(%a1,%d1.l),%a1
	jra .L334
.L335:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
.L334:
	cmp.l %a0,%d0
	jne .L335
.L332:
	rts
.L333:
	cmp.l %d0,%a1
	jeq .L332
	move.l 12(%sp),%d1
	add.l %d0,%d1
	move.l %d0,%a0
	jra .L337
.L338:
	move.b (%a0)+,(%a1)+
.L337:
	cmp.l %a0,%d1
	jne .L338
	jra .L332
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
	jlt .L340
	move.l %d3,%d0
	move.l %a0,%d1
	lsl.l %d1,%d0
	moveq #0,%d5
.L341:
	move.l %d2,%d1
	neg.l %d1
	moveq #63,%d6
	and.l %d1,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L342
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
.L343:
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L340:
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
	jra .L341
.L342:
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
	jra .L343
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
	jlt .L345
	move.l %d3,%d1
	move.l %a0,%d0
	lsr.l %d0,%d1
	moveq #0,%d5
.L346:
	move.l %d2,%d0
	neg.l %d0
	moveq #63,%d6
	and.l %d0,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L347
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
.L348:
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L345:
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
	jra .L346
.L347:
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
	jra .L348
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
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	moveq #0,%d1
	move.w 14(%sp),%d1
	move.l %d1,%d0
	lsl.l %d2,%d0
	moveq #16,%d3
	sub.l %d2,%d3
	lsr.l %d3,%d1
	or.w %d1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.type	rotr16, @function
rotr16:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	moveq #0,%d1
	move.w 14(%sp),%d1
	move.l %d1,%d0
	lsr.l %d2,%d0
	moveq #16,%d3
	sub.l %d2,%d3
	lsl.l %d3,%d1
	or.w %d1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.type	rotl8, @function
rotl8:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	moveq #0,%d1
	move.b 15(%sp),%d1
	move.l %d1,%d0
	lsl.l %d2,%d0
	moveq #8,%d3
	sub.l %d2,%d3
	lsr.l %d3,%d1
	or.b %d1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.type	rotr8, @function
rotr8:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	moveq #0,%d1
	move.b 15(%sp),%d1
	move.l %d1,%d0
	lsr.l %d2,%d0
	moveq #8,%d3
	sub.l %d2,%d3
	lsl.l %d3,%d1
	or.b %d1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
	moveq #0,%d1
	move.b 6(%sp),%d1
	clr.w %d0
	move.b 7(%sp),%d0
	lsl.w #8,%d0
	or.w %d1,%d0
	rts
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l %d0,%d2
	clr.w %d2
	swap %d2
	lsr.w #8,%d2
	move.l %d0,%d1
	and.l #16711680,%d1
	lsr.l #8,%d1
	or.l %d2,%d1
	move.l %d0,%d2
	and.l #65280,%d2
	lsl.l #8,%d2
	or.l %d2,%d1
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d1,%d0
	move.l (%sp)+,%d2
	rts
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
	movem.l #15360,-(%sp)
	move.l 24(%sp),%d0
	move.l 20(%sp),%d2
	clr.w %d2
	swap %d2
	lsr.w #8,%d2
	move.l 20(%sp),%d1
	and.l #16711680,%d1
	lsr.l #8,%d1
	or.l %d2,%d1
	move.l 20(%sp),%d2
	and.l #65280,%d2
	lsl.l #8,%d2
	or.l %d2,%d1
	moveq #0,%d2
	not.b %d2
	and.l 20(%sp),%d2
	moveq #0,%d3
	move.b %d2,%d3
	lsr.l #8,%d2
	ror.l #8,%d3
	or.l %d3,%d1
	clr.l %d4
	clr.l %d5
	move.l %d0,%d5
	and.l #-16777216,%d5
	rol.l #8,%d4
	rol.l #8,%d5
	move.b %d5,%d4
	clr.b %d5
	or.l %d4,%d2
	move.l %d0,%d3
	and.l #16711680,%d3
	lsr.l #8,%d3
	or.l %d3,%d2
	move.l %d0,%d3
	and.l #65280,%d3
	lsl.l #8,%d3
	or.l %d3,%d2
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d2,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#60
	rts
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	moveq #0,%d0
.L361:
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L365
	btst %d0,%d1
	jne .L366
	addq.l #1,%d0
	jra .L361
.L366:
	addq.l #1,%d0
.L363:
	move.l (%sp)+,%d2
	rts
.L365:
	moveq #0,%d0
	jra .L363
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L371
	moveq #1,%d0
	jra .L369
.L370:
	asr.l #1,%d1
	addq.l #1,%d0
.L369:
	btst #0,%d1
	jeq .L370
.L368:
	rts
.L371:
	moveq #0,%d0
	jra .L368
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
	jlt .L375
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L376
.L374:
	moveq #0,%d0
	move.b %d2,%d0
.L373:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L376:
	clr.b %d2
	jra .L374
.L375:
	moveq #1,%d0
	jra .L373
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
	jlt .L380
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L381
.L379:
	moveq #0,%d0
	move.b %d2,%d0
.L378:
	movem.l (%sp)+,#52
	rts
.L381:
	clr.b %d2
	jra .L379
.L380:
	moveq #1,%d0
	jra .L378
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
	jlt .L385
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
	jle .L386
.L384:
	moveq #0,%d0
	move.b %d2,%d0
.L383:
	movem.l (%sp)+,#60
	rts
.L386:
	clr.b %d2
	jra .L384
.L385:
	moveq #1,%d0
	jra .L383
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
	jne .L389
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	move.l %d4,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L389
	tst.l %d2
	jlt .L396
	move.l #0x40000000,%d3
.L391:
	lea __mulsf3,%a2
	jra .L393
.L396:
	move.l #0x3f000000,%d3
	jra .L391
.L392:
	move.l %d2,%d2
	jpl .L397
	addq.l #1,%d2
.L397:
	asr.l #1,%d2
	jeq .L389
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L393:
	btst #0,%d2
	jeq .L392
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L392
.L389:
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
	jne .L399
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L399
	tst.l %d6
	jlt .L406
	move.l #1073741824,%a2
	sub.l %a3,%a3
.L401:
	lea __muldf3,%a5
	jra .L403
.L406:
	move.l #1071644672,%a2
	sub.l %a3,%a3
	jra .L401
.L402:
	move.l %d6,%d6
	jpl .L407
	addq.l #1,%d6
.L407:
	asr.l #1,%d6
	jeq .L399
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
.L403:
	btst #0,%d6
	jeq .L402
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
	jra .L402
.L399:
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
	lea (-12,%sp),%sp
	movem.l #15422,-(%sp)
	move.l %a1,%a3
	move.l 52(%sp),%a4
	move.l 56(%sp),%a5
	move.l 60(%sp),%a6
	move.l 64(%sp),%d2
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L409
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	lea (60,%sp),%a1
	jsr __addxf3
	lea (24,%sp),%sp
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __nexf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L409
	tst.l %d2
	jlt .L416
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
.L411:
	lea __mulxf3,%a2
	jra .L413
.L416:
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
	jra .L411
.L412:
	move.l %d2,%d2
	jpl .L417
	addq.l #1,%d2
.L417:
	asr.l #1,%d2
	jeq .L409
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	lea (60,%sp),%a1
	jsr (%a2)
	lea (24,%sp),%sp
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
.L413:
	btst #0,%d2
	jeq .L412
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
	jra .L412
.L409:
	move.l %a4,(%a3)
	move.l %a5,4(%a3)
	move.l %a6,8(%a3)
	move.l %a3,%a0
	movem.l (%sp)+,#31804
	lea (12,%sp),%sp
	rts
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.l 16(%sp),%a0
	move.l %a0,%d2
	add.l 20(%sp),%d2
	move.l %d0,%a1
	jra .L419
.L420:
	move.b (%a0)+,%d1
	move.b (%a1)+,%d3
	eor.b %d3,%d1
	move.b %d1,-1(%a1)
.L419:
	cmp.l %a0,%d2
	jne .L420
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	move.l 20(%sp),%a1
	move.l %d3,%a0
	add.l %d0,%a0
	jra .L422
.L424:
	subq.l #1,%d2
.L422:
	move.l %a0,%a2
	tst.l %d2
	jeq .L423
	move.b (%a1)+,(%a0)
	tst.b (%a0)+
	jne .L424
.L423:
	tst.l %d2
	jne .L425
	clr.b (%a2)
.L425:
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
.L427:
	cmp.l %d0,%d1
	jeq .L428
	tst.b (%a0,%d0.l)
	jne .L429
.L428:
	rts
.L429:
	addq.l #1,%d0
	jra .L427
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d1
	move.l 12(%sp),%a2
.L431:
	move.l %a2,%d0
	tst.b (%a2)+
	jeq .L436
	move.l %d1,%a1
.L434:
	tst.b (%a1)+
	jeq .L431
	move.b -1(%a1),%d2
	cmp.b -1(%a2),%d2
	jne .L434
.L432:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L436:
	moveq #0,%d0
	jra .L432
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d3
	move.l 12(%sp),%a0
	moveq #0,%d0
	jra .L439
.L438:
	tst.b -1(%a0)
	jeq .L442
.L439:
	move.l %a0,%d2
	move.b (%a0)+,%d1
	ext.w %d1
	move.w %d1,%a1
	cmp.l %d3,%a1
	jne .L438
	move.l %d2,%d0
	jra .L438
.L442:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #12348,-(%sp)
	move.l 32(%sp),%a2
	move.l %a2,-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l %d0,%d3
	jeq .L447
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a3
	move.l 28(%sp),%d2
	lea strchr,%a4
	lea strncmp,%a5
.L445:
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %a0,%d2
	jeq .L449
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L448
	addq.l #1,%d2
	jra .L445
.L449:
	moveq #0,%d0
	jra .L444
.L447:
	move.l 28(%sp),%d0
.L444:
	move.l %d0,%a0
	movem.l (%sp)+,#15372
	rts
.L448:
	move.l %d2,%d0
	jra .L444
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
	jlt .L463
.L451:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L461
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L453
	move.l %d2,%a1
	move.l %d3,%a0
.L454:
	move.l %a1,%d4
	move.l %a0,%d5
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#60
	rts
.L463:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L451
.L453:
	move.l %d2,%a1
	add.l #-2147483648,%a1
	move.l %d3,%a0
	jra .L454
.L461:
	move.l %d2,%a1
	move.l %d3,%a0
	jra .L454
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	movem.l #15416,-(%sp)
	move.l 32(%sp),%a2
	move.l 40(%sp),%a3
	move.l 44(%sp),%d0
	move.l 36(%sp),%d2
	sub.l %d0,%d2
	add.l %a2,%d2
	tst.l %d0
	jeq .L469
	cmp.l 36(%sp),%d0
	jhi .L470
	move.l %d0,%d4
	subq.l #1,%d4
	move.l %a3,%d5
	addq.l #1,%d5
	lea memcmp,%a4
.L466:
	move.l %a2,%d3
	cmp.l %a2,%d2
	jcs .L472
	move.b (%a2)+,%d0
	cmp.b (%a3),%d0
	jne .L466
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L466
	move.l %d3,%d0
	jra .L465
.L472:
	moveq #0,%d0
.L465:
	move.l %d0,%a0
	movem.l (%sp)+,#7228
	rts
.L469:
	move.l %a2,%d0
	jra .L465
.L470:
	moveq #0,%d0
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
	jlt .L494
	moveq #0,%d7
.L475:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L495
	moveq #0,%d6
	move.l #1072693248,%a2
	sub.l %a3,%a3
	lea __gedf2,%a4
	lea __muldf3,%a5
	jra .L477
.L494:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	moveq #1,%d7
	jra .L475
.L479:
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
.L477:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L479
.L480:
	move.l 60(%sp),%a0
	move.l %d6,(%a0)
	tst.l %d7
	jeq .L484
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,40(%sp)
	move.l %d3,44(%sp)
	move.l 40(%sp),%d2
	move.l 44(%sp),%d3
.L484:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#15612
	addq.l #8,%sp
	rts
.L495:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L493
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L488
	moveq #0,%d6
	jra .L480
.L483:
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
.L482:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L483
	jra .L480
.L488:
	moveq #0,%d6
	move.l #1071644672,%d4
	clr.l %d5
	lea __ltdf2,%a4
	lea __adddf3,%a5
	jra .L482
.L493:
	moveq #0,%d6
	jra .L480
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
	clr.l 32(%sp)
	clr.l 36(%sp)
	jra .L497
.L498:
	sub.l %a0,%a0
	moveq #1,%d0
	and.l %d3,%d0
	move.l %d0,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	neg.l %d1
	negx.l %d0
	move.l %d6,%d4
	and.l %d0,%d4
	move.l %d4,24(%sp)
	move.l %d7,%d5
	and.l %d1,%d5
	move.l %d5,28(%sp)
	add.l %d7,%d7
	addx.l %d6,%d6
	lsr.l #1,%d2
	roxr.l #1,%d3
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	add.l %d1,36(%sp)
	move.l 32(%sp),%d4
	addx.l %d0,%d4
	move.l %d4,32(%sp)
.L497:
	move.l %d2,%d5
	or.l %d3,%d5
	jne .L498
	move.l 32(%sp),%d0
	move.l 36(%sp),%d1
	movem.l (%sp)+,#252
	lea (16,%sp),%sp
	rts
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	move.w #33,%a0
	moveq #1,%d2
	jra .L500
.L502:
	add.l %d1,%d1
	add.l %d2,%d2
.L500:
	cmp.l %d1,%a1
	jls .L507
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L508
	tst.l %d1
	jge .L502
	moveq #0,%d0
	jra .L503
.L507:
	moveq #0,%d0
	jra .L503
.L508:
	moveq #0,%d0
	jra .L503
.L504:
	lsr.l #1,%d2
	lsr.l #1,%d1
.L503:
	tst.l %d2
	jeq .L510
	cmp.l %a1,%d1
	jhi .L504
	sub.l %d1,%a1
	or.l %d2,%d0
	jra .L504
.L510:
	tst.l 16(%sp)
	jne .L511
.L506:
	move.l (%sp)+,%d2
	rts
.L511:
	move.l %a1,%d0
	jra .L506
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
	jeq .L514
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
.L513:
	move.l (%sp)+,%d2
	rts
.L514:
	moveq #7,%d0
	jra .L513
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	move.l %d3,%d2
	add.l %d2,%d2
	subx.l %d2,%d2
	move.l %d2,%d0
	eor.l %d3,%d0
	move.l 16(%sp),%d1
	eor.l %d2,%d1
	move.l %d0,%d2
	or.l %d1,%d2
	jeq .L517
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
.L516:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L517:
	moveq #63,%d0
	jra .L516
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
	jra .L519
.L520:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	lsr.l #1,%d2
	add.l %d3,%d3
	add.l %d1,%d0
.L519:
	tst.l %d2
	jne .L520
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
	movem.l #15408,-(%sp)
	move.l 28(%sp),%a0
	move.l 32(%sp),%a3
	move.l 36(%sp),%d2
	move.l %d2,%d3
	lsr.l #3,%d3
	moveq #-8,%d0
	and.l %d2,%d0
	cmp.l %a0,%a3
	jhi .L522
	move.l %a3,%d1
	add.l %d2,%d1
	cmp.l %d1,%a0
	jhi .L522
	subq.l #1,%d2
	lea (%a3,%d2.l),%a1
	add.l %d2,%a0
	subq.l #1,%a3
	jra .L523
.L522:
	move.l %a3,%a2
	move.l %a0,%a1
	moveq #0,%d1
	jra .L524
.L525:
	move.l (%a2)+,%d4
	move.l (%a2)+,%d5
	move.l %d4,(%a1)+
	move.l %d5,(%a1)+
	addq.l #1,%d1
.L524:
	cmp.l %d1,%d3
	jne .L525
	jra .L526
.L527:
	move.b (%a3,%d0.l),(%a0,%d0.l)
	addq.l #1,%d0
.L526:
	cmp.l %d2,%d0
	jcs .L527
.L521:
	movem.l (%sp)+,#3132
	rts
.L529:
	move.b (%a1),(%a0)
	subq.l #1,%a1
	subq.l #1,%a0
.L523:
	cmp.l %a1,%a3
	jne .L529
	jra .L521
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
	jhi .L531
	lea (%a3,%d1.l),%a0
	cmp.l %a0,%a2
	jhi .L531
	subq.l #1,%d1
	lea (%a3,%d1.l),%a1
	add.l %d1,%a2
	subq.l #1,%a3
	jra .L532
.L531:
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
	jra .L533
.L534:
	move.w (%a0)+,(%a1)+
.L533:
	cmp.l %a0,%d0
	jne .L534
	btst #0,%d1
	jeq .L530
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L530:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L536:
	move.b (%a1),(%a2)
	subq.l #1,%a1
	subq.l #1,%a2
.L532:
	cmp.l %a1,%a3
	jne .L536
	jra .L530
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a0
	move.l 24(%sp),%a3
	move.l 28(%sp),%d2
	move.l %d2,%d3
	lsr.l #2,%d3
	moveq #-4,%d0
	and.l %d2,%d0
	cmp.l %a0,%a3
	jhi .L538
	move.l %a3,%d1
	add.l %d2,%d1
	cmp.l %d1,%a0
	jhi .L538
	subq.l #1,%d2
	lea (%a3,%d2.l),%a1
	add.l %d2,%a0
	subq.l #1,%a3
	jra .L539
.L538:
	move.l %a3,%a2
	move.l %a0,%a1
	moveq #0,%d1
	jra .L540
.L541:
	move.l (%a2)+,(%a1)+
	addq.l #1,%d1
.L540:
	cmp.l %d1,%d3
	jne .L541
	jra .L542
.L543:
	move.b (%a3,%d0.l),(%a0,%d0.l)
	addq.l #1,%d0
.L542:
	cmp.l %d2,%d0
	jcs .L543
.L537:
	movem.l (%sp)+,#3084
	rts
.L545:
	move.b (%a1),(%a0)
	subq.l #1,%a1
	subq.l #1,%a0
.L539:
	cmp.l %a1,%a3
	jne .L545
	jra .L537
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
.L553:
	moveq #16,%d1
	cmp.l %d0,%d1
	jeq .L554
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L554
	addq.l #1,%d0
	jra .L553
.L554:
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
.L557:
	moveq #16,%d2
	cmp.l %d0,%d2
	jeq .L558
	btst %d0,%d1
	jne .L558
	addq.l #1,%d0
	jra .L557
.L558:
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
	jge .L566
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L563:
	move.l (%sp)+,%d2
	rts
.L566:
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L563
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
	jra .L568
.L569:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	addq.l #1,%d1
	add.l %d2,%d0
.L568:
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L569
	moveq #1,%d4
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
	jra .L571
.L572:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	addq.l #1,%d1
	add.l %d2,%d0
.L571:
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L572
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
	jra .L574
.L575:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	lsr.l #1,%d2
	add.l %d3,%d3
	add.l %d1,%d0
.L574:
	tst.l %d2
	jne .L575
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
	tst.l %d2
	jeq .L580
	moveq #0,%d0
	jra .L578
.L579:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d2,%d2
	lsr.l #1,%d3
	add.l %d1,%d0
.L578:
	tst.l %d3
	jne .L579
.L577:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L580:
	moveq #0,%d0
	jra .L577
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	move.w #33,%a0
	moveq #1,%d2
	jra .L582
.L584:
	add.l %d1,%d1
	add.l %d2,%d2
.L582:
	cmp.l %d1,%a1
	jls .L589
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L590
	tst.l %d1
	jge .L584
	moveq #0,%d0
	jra .L585
.L589:
	moveq #0,%d0
	jra .L585
.L590:
	moveq #0,%d0
	jra .L585
.L586:
	lsr.l #1,%d2
	lsr.l #1,%d1
.L585:
	tst.l %d2
	jeq .L592
	cmp.l %a1,%d1
	jhi .L586
	sub.l %d1,%a1
	or.l %d2,%d0
	jra .L586
.L592:
	tst.l 16(%sp)
	jne .L593
.L588:
	move.l (%sp)+,%d2
	rts
.L593:
	move.l %a1,%d0
	jra .L588
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
	jlt .L597
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L598
.L596:
	moveq #0,%d0
	move.b %d2,%d0
.L595:
	movem.l (%sp)+,#28
	rts
.L598:
	clr.b %d2
	jra .L596
.L597:
	moveq #-1,%d0
	jra .L595
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
	jlt .L602
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L603
.L601:
	moveq #0,%d0
	move.b %d6,%d0
.L600:
	movem.l (%sp)+,#124
	rts
.L603:
	clr.b %d6
	jra .L601
.L602:
	moveq #-1,%d0
	jra .L600
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
	jmi .L614
	sub.l %a0,%a0
.L607:
	moveq #33,%d4
	moveq #0,%d0
	jra .L608
.L614:
	neg.l %d2
	move.w #1,%a0
	jra .L607
.L610:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d3,%d3
	asr.l #1,%d2
	add.l %d1,%d0
.L608:
	tst.l %d2
	jeq .L609
	subq.b #1,%d4
	jne .L610
.L609:
	cmp.w #0,%a0
	jeq .L611
	neg.l %d0
.L611:
	movem.l (%sp)+,#28
	rts
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	tst.l %d0
	jlt .L620
	moveq #0,%d2
.L616:
	tst.l %d1
	jlt .L621
.L617:
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d2
	jeq .L618
	neg.l %d0
.L618:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L620:
	neg.l %d0
	moveq #1,%d2
	jra .L616
.L621:
	neg.l %d1
	moveq #1,%d3
	sub.l %d2,%d3
	move.l %d3,%d2
	jra .L617
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
	jlt .L627
	moveq #0,%d3
.L623:
	move.l %d2,%d1
	jmi .L628
.L624:
	pea 1.w
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d3
	jeq .L625
	neg.l %d0
.L625:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L627:
	neg.l %d0
	moveq #1,%d3
	jra .L623
.L628:
	neg.l %d1
	jra .L624
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	move.l %d2,-(%sp)
	move.w 10(%sp),%a0
	move.w 14(%sp),%d1
	moveq #17,%d0
	moveq #1,%d2
.L630:
	cmp.w %a0,%d1
	jcc .L637
	subq.l #1,%d0
	jeq .L638
	tst.w %d1
	jlt .L640
	add.w %d1,%d1
	add.w %d2,%d2
	jra .L630
.L640:
	clr.w %d0
	jra .L633
.L637:
	clr.w %d0
	jra .L633
.L638:
	clr.w %d0
	jra .L633
.L634:
	lsr.w #1,%d2
	lsr.w #1,%d1
.L633:
	tst.w %d2
	jeq .L641
	cmp.w %a0,%d1
	jhi .L634
	sub.w %d1,%a0
	or.w %d2,%d0
	jra .L634
.L641:
	tst.l 16(%sp)
	jne .L642
.L636:
	move.l (%sp)+,%d2
	rts
.L642:
	move.w %a0,%d0
	jra .L636
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	move.w #33,%a0
	moveq #1,%d2
	jra .L644
.L646:
	add.l %d1,%d1
	add.l %d2,%d2
.L644:
	cmp.l %d1,%a1
	jls .L651
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L652
	tst.l %d1
	jge .L646
	moveq #0,%d0
	jra .L647
.L651:
	moveq #0,%d0
	jra .L647
.L652:
	moveq #0,%d0
	jra .L647
.L648:
	lsr.l #1,%d2
	lsr.l #1,%d1
.L647:
	tst.l %d2
	jeq .L654
	cmp.l %a1,%d1
	jhi .L648
	sub.l %d1,%a1
	or.l %d2,%d0
	jra .L648
.L654:
	tst.l 16(%sp)
	jne .L655
.L650:
	move.l (%sp)+,%d2
	rts
.L655:
	move.l %a1,%d0
	jra .L650
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
	jeq .L657
	moveq #0,%d1
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
.L659:
	movem.l (%sp)+,#28
	rts
.L657:
	tst.l %d2
	jeq .L660
	move.l %d3,%d1
	lsl.l %d2,%d1
	lsl.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsr.l %d4,%d3
	or.l %d3,%d0
	jra .L659
.L660:
	move.l %d3,%d1
	jra .L659
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
	jeq .L662
	move.l %d1,%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
.L664:
	movem.l (%sp)+,#28
	rts
.L662:
	tst.l %d2
	jeq .L665
	move.l %d1,%d0
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L664
.L665:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L664
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	subq.l #4,%sp
	movem.l #16128,-(%sp)
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	move.l %d2,%d4
	clr.w %d4
	swap %d4
	lsr.w #8,%d4
	move.l %d2,%d1
	lsr.l #8,%d1
	and.l #65280,%d1
	move.l %d1,24(%sp)
	move.l %d2,%d7
	lsl.l #8,%d7
	and.l #16711680,%d7
	move.l %d2,%d0
	move.l %d3,%d1
	move.b %d2,%d1
	ror.l #8,%d1
	and.l #-16777216,%d1
	move.l %d2,%d5
	move.l %d3,%d6
	rol.l #8,%d5
	rol.l #8,%d6
	move.b %d6,%d5
	clr.b %d6
	move.l %d5,%a0
	move.l %d6,%a1
	move.l %d3,%d6
	lsr.l #8,%d6
	move.l %d3,%d5
	lsl.w #8,%d5
	swap %d5
	clr.w %d5
	and.l #65280,%d6
	move.l %d3,%d0
	lsl.l #8,%d0
	and.l #16711680,%d0
	move.l 24(%sp),%d2
	or.l %d4,%d2
	or.l %d7,%d2
	move.l %d5,%d3
	move.w %a0,%d4
	or.b %d4,%d3
	or.l %d6,%d3
	or.l %d3,%d0
	or.l %d2,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d1
	move.l %d1,%d3
	clr.w %d3
	swap %d3
	lsr.w #8,%d3
	move.l %d1,%d2
	lsr.l #8,%d2
	and.l #65280,%d2
	move.l %d1,%d0
	lsl.l #8,%d0
	and.l #16711680,%d0
	lsl.w #8,%d1
	swap %d1
	clr.w %d1
	or.l %d3,%d1
	or.l %d2,%d1
	or.l %d1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	neg.b %d1
	and.l #255,%d1
	lsl.l #4,%d1
	moveq #16,%d0
	sub.l %d1,%d0
	lsr.l %d0,%d2
	move.l %d2,%d0
	and.l #65280,%d0
	seq %d0
	neg.b %d0
	and.l #255,%d0
	lsl.l #3,%d0
	moveq #8,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d2
	add.l %d0,%d1
	moveq #15,%d0
	not.b %d0
	and.l %d2,%d0
	seq %d0
	neg.b %d0
	and.l #255,%d0
	add.l %d0,%d0
	add.l %d0,%d0
	moveq #4,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d2
	add.l %d0,%d1
	moveq #12,%d0
	and.l %d2,%d0
	seq %d0
	neg.b %d0
	and.l #255,%d0
	add.l %d0,%d0
	moveq #2,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d2
	add.l %d0,%d1
	move.l %d2,%d0
	lsr.l #1,%d0
	moveq #1,%d3
	and.l %d3,%d0
	eor.b #1,%d0
	and.l #255,%d0
	moveq #2,%d3
	sub.l %d2,%d3
	neg.l %d0
	and.l %d3,%d0
	add.l %d1,%d0
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
	jgt .L671
	jlt .L672
	cmp.l %a1,%a0
	jhi .L673
	jcs .L674
	moveq #1,%d0
	jra .L670
.L671:
	moveq #0,%d0
.L670:
	rts
.L672:
	moveq #2,%d0
	jra .L670
.L673:
	moveq #0,%d0
	jra .L670
.L674:
	moveq #2,%d0
	jra .L670
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
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	tst.w %d1
	seq %d2
	neg.b %d2
	and.l #255,%d2
	lsl.l #4,%d2
	lsr.l %d2,%d1
	tst.b %d1
	seq %d0
	neg.b %d0
	and.l #255,%d0
	lsl.l #3,%d0
	lsr.l %d0,%d1
	move.l %d2,%a0
	add.l %d0,%a0
	moveq #15,%d0
	and.l %d1,%d0
	seq %d0
	neg.b %d0
	and.l #255,%d0
	add.l %d0,%d0
	add.l %d0,%d0
	lsr.l %d0,%d1
	add.l %d0,%a0
	moveq #3,%d0
	and.l %d1,%d0
	seq %d0
	neg.b %d0
	and.l #255,%d0
	add.l %d0,%d0
	lsr.l %d0,%d1
	moveq #3,%d2
	and.l %d2,%d1
	add.l %d0,%a0
	move.l %d1,%d2
	not.l %d2
	moveq #1,%d0
	and.l %d0,%d2
	lsr.l #1,%d1
	moveq #2,%d0
	sub.l %d1,%d0
	neg.l %d2
	and.l %d2,%d0
	add.l %a0,%d0
	move.l (%sp)+,%d2
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
	jeq .L678
	moveq #0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	lsr.l %d2,%d1
.L680:
	movem.l (%sp)+,#28
	rts
.L678:
	tst.l %d2
	jeq .L681
	move.l %d1,%d0
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L680
.L681:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L680
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d5
	move.l 36(%sp),%d4
	move.l %d5,%d6
	and.l #65535,%d6
	move.l %d4,%d7
	and.l #65535,%d7
	lea __mulsi3,%a2
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d2
	clr.w %d2
	swap %d2
	move.l %d0,%d3
	and.l #65535,%d3
	clr.w %d5
	swap %d5
	move.l %d7,-(%sp)
	move.l %d5,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d2
	move.l %d2,%d7
	clr.w %d7
	swap %d7
	and.l #65535,%d2
	clr.w %d4
	swap %d4
	move.l %d4,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d2
	move.l %d2,%d0
	swap %d0
	clr.w %d0
	add.l %d0,%d3
	clr.w %d2
	swap %d2
	add.l %d7,%d2
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d2,%d0
	move.l %d3,%d1
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
	move.l %d2,-(%sp)
	move.l 28(%sp),-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d5,-(%sp)
	move.l 36(%sp),-(%sp)
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
	move.l 8(%sp),%d0
	move.l 4(%sp),%d1
	eor.l %d1,%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #8,%d1
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #4,%d1
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
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #4,%d1
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
	move.l %d0,%d2
	move.l %d1,%d3
	lsr.l #1,%d2
	roxr.l #1,%d3
	lsr.l #1,%d2
	roxr.l #1,%d3
	move.l %d2,%d4
	and.l #858993459,%d4
	move.l %d3,%d5
	and.l #858993459,%d5
	move.l %d0,%d2
	and.l #858993459,%d2
	move.l %d1,%d3
	and.l #858993459,%d3
	move.l %d4,%d0
	move.l %d5,%d1
	add.l %d3,%d1
	addx.l %d2,%d0
	move.l %d0,%d4
	moveq #28,%d2
	lsl.l %d2,%d4
	move.l %d1,%d3
	lsr.l #4,%d3
	or.l %d4,%d3
	move.l %d0,%d2
	lsr.l #4,%d2
	add.l %d1,%d3
	addx.l %d0,%d2
	move.l %d2,%d0
	and.l #252645135,%d0
	move.l %d3,%d1
	and.l #252645135,%d1
	add.l %d1,%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	add.l %d1,%d0
	move.l %d0,%d1
	lsr.l #8,%d1
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
	move.l 4(%sp),%d1
	move.l %d1,%d0
	lsr.l #1,%d0
	and.l #1431655765,%d0
	sub.l %d0,%d1
	move.l %d1,%d0
	lsr.l #2,%d0
	and.l #858993459,%d0
	and.l #858993459,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsr.l #4,%d0
	add.l %d0,%d1
	and.l #252645135,%d1
	move.l %d1,%d0
	clr.w %d0
	swap %d0
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
	move.l 64(%sp),%d4
	move.l %d4,%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	neg.l %d0
	move.l %d0,%a6
	move.l #1072693248,%d6
	clr.l %d7
	lea __muldf3,%a5
	jra .L692
.L690:
	move.l %d4,%d4
	jpl .L695
	addq.l #1,%d4
.L695:
	asr.l #1,%d4
	jeq .L691
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
.L692:
	btst #0,%d4
	jeq .L690
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
	jra .L690
.L691:
	cmp.w #0,%a6
	jeq .L694
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
.L693:
	move.l %d0,44(%sp)
	move.l %d1,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#27868
	lea (16,%sp),%sp
	rts
.L694:
	move.l %d6,%d0
	move.l %d7,%d1
	jra .L693
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
	movem.l #15392,-(%sp)
	move.l 24(%sp),%d3
	move.l 28(%sp),%d2
	move.l %d2,%d5
	add.l %d5,%d5
	subx.l %d5,%d5
	neg.l %d5
	move.l #0x3f800000,%d4
	lea __mulsf3,%a2
	jra .L699
.L697:
	move.l %d2,%d2
	jpl .L702
	addq.l #1,%d2
.L702:
	asr.l #1,%d2
	jeq .L698
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L699:
	btst #0,%d2
	jeq .L697
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L697
.L698:
	tst.l %d5
	jeq .L701
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
.L700:
	movem.l (%sp)+,#1084
	rts
.L701:
	move.l %d4,%d0
	jra .L700
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
	jhi .L705
	jcs .L706
	cmp.l %a1,%a0
	jhi .L707
	jcs .L708
	moveq #1,%d0
	jra .L704
.L705:
	moveq #0,%d0
.L704:
	rts
.L706:
	moveq #2,%d0
	jra .L704
.L707:
	moveq #0,%d0
	jra .L704
.L708:
	moveq #2,%d0
	jra .L704
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
