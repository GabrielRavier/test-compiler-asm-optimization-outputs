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
	jeq .L74
	moveq #0,%d0
.L71:
	rts
.L74:
	moveq #1,%d0
	jra .L71
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
	jcc .L77
	moveq #127,%d1
	cmp.l %d0,%d1
	jeq .L79
	moveq #0,%d0
	jra .L76
.L79:
	moveq #1,%d0
	jra .L76
.L77:
	moveq #1,%d0
.L76:
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
	jeq .L86
	lea (-9,%a0),%a0
	moveq #4,%d0
	cmp.l %a0,%d0
	jcs .L87
	moveq #1,%d0
	jra .L85
.L86:
	moveq #1,%d0
.L85:
	rts
.L87:
	moveq #0,%d0
	jra .L85
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
	jcc .L91
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcc .L92
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L93
	add.l #-65529,%a0
	moveq #2,%d0
	cmp.l %a0,%d0
	jcs .L94
	moveq #1,%d0
	jra .L90
.L91:
	moveq #1,%d0
.L90:
	rts
.L92:
	moveq #1,%d0
	jra .L90
.L93:
	moveq #1,%d0
	jra .L90
.L94:
	moveq #0,%d0
	jra .L90
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
	jls .L104
	cmp.l #8231,%d0
	jls .L99
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L100
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L101
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L102
	and.l #65534,%d0
	cmp.l #65534,%d0
	jeq .L103
	moveq #1,%d0
	jra .L98
.L104:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	neg.b %d0
	and.l #255,%d0
.L98:
	rts
.L99:
	moveq #1,%d0
	jra .L98
.L100:
	moveq #1,%d0
	jra .L98
.L101:
	moveq #1,%d0
	jra .L98
.L102:
	moveq #0,%d0
	jra .L98
.L103:
	moveq #0,%d0
	jra .L98
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	move.w #-48,%a0
	add.l 4(%sp),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L107
	moveq #32,%d0
	or.l 4(%sp),%d0
	move.l %d0,%a0
	lea (-97,%a0),%a0
	moveq #5,%d0
	cmp.l %a0,%d0
	jcs .L108
	moveq #1,%d0
	jra .L106
.L107:
	moveq #1,%d0
.L106:
	rts
.L108:
	moveq #0,%d0
	jra .L106
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
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d2
	move.l 24(%sp),%d3
	move.l 28(%sp),%d4
	move.l 32(%sp),%d5
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L113
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L114
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L117
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
.L111:
	movem.l (%sp)+,#60
	rts
.L113:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L111
.L114:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L111
.L117:
	clr.l %d0
	clr.l %d1
	jra .L111
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
	jne .L121
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L122
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L125
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
.L119:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L121:
	move.l %d2,%d0
	jra .L119
.L122:
	move.l %d3,%d0
	jra .L119
.L125:
	moveq #0,%d0
	jra .L119
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d2
	move.l 24(%sp),%d3
	move.l 28(%sp),%d4
	move.l 32(%sp),%d5
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L130
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L131
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d4,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L128
	tst.l %d2
	jge .L132
	move.l %d4,%d0
	move.l %d5,%d1
.L127:
	movem.l (%sp)+,#60
	rts
.L128:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L135
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L127
.L130:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L127
.L131:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L127
.L132:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L127
.L135:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L127
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L140
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L141
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L138
	tst.l %d2
	jge .L142
	move.l %d3,%d0
.L137:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L138:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L145
	move.l %d3,%d0
	jra .L137
.L140:
	move.l %d3,%d0
	jra .L137
.L141:
	move.l %d2,%d0
	jra .L137
.L142:
	move.l %d2,%d0
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
	jne .L164
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L165
	move.l %a4,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L152
	cmp.w #0,%a4
	jge .L156
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L153:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L146:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L164:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L146
.L165:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L146
.L156:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L153
.L152:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L163
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L154:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L146
.L163:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L154
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d4
	move.l 24(%sp),%d5
	move.l 28(%sp),%d2
	move.l 32(%sp),%d3
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L170
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L171
	move.l %d4,%d1
	and.l #-2147483648,%d1
	move.l %d2,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L168
	tst.l %d4
	jge .L172
	move.l %d4,%d0
	move.l %d5,%d1
.L167:
	movem.l (%sp)+,#60
	rts
.L168:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L175
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L167
.L170:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L167
.L171:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L167
.L172:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L167
.L175:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L167
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	move.l 16(%sp),%d2
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L180
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L181
	move.l %d3,%d1
	and.l #-2147483648,%d1
	move.l %d2,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L178
	tst.l %d3
	jge .L182
	move.l %d3,%d0
.L177:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L178:
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L185
	move.l %d3,%d0
	jra .L177
.L180:
	move.l %d2,%d0
	jra .L177
.L181:
	move.l %d3,%d0
	jra .L177
.L182:
	move.l %d2,%d0
	jra .L177
.L185:
	move.l %d2,%d0
	jra .L177
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
	jne .L204
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L205
	move.l %a4,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L192
	cmp.w #0,%a4
	jge .L196
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
.L193:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L186:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L204:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L186
.L205:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L186
.L196:
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L193
.L192:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L203
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
.L194:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L186
.L203:
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L194
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
	jra .L207
.L208:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
.L207:
	tst.l %d0
	jne .L208
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
	jeq .L214
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	tst.l (%a0)
	jeq .L211
	move.l (%a0),%a1
	move.l %a0,4(%a1)
.L211:
	rts
.L214:
	clr.l 4(%a0)
	clr.l (%a0)
	jra .L211
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	tst.l (%a0)
	jeq .L216
	move.l (%a0),%a1
	move.l 4(%a0),4(%a1)
.L216:
	tst.l 4(%a0)
	jeq .L215
	move.l 4(%a0),%a1
	move.l (%a0),(%a1)
.L215:
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
	jra .L219
.L220:
	addq.l #1,%d2
.L219:
	cmp.l %d2,%d4
	jeq .L223
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a3)
	add.l %d5,%d3
	addq.l #8,%sp
	tst.l %d0
	jne .L220
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %a4,%d0
	jra .L221
.L223:
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
.L221:
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
	jra .L225
.L226:
	addq.l #1,%d2
.L225:
	cmp.l %d2,%d4
	jeq .L229
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	add.l %d5,%d3
	addq.l #8,%sp
	tst.l %d0
	jne .L226
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 32(%sp),%d0
	jra .L227
.L229:
	moveq #0,%d0
.L227:
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
	jmi .L232
.L231:
	rts
.L232:
	neg.l %d0
	jra .L231
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #56,-(%sp)
	move.l 16(%sp),%a3
	lea isspace,%a4
.L234:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L234
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L240
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L241
	moveq #1,%d1
.L235:
	addq.l #1,%a2
.L236:
	sub.l %a0,%a0
	jra .L237
.L240:
	moveq #0,%d1
	jra .L235
.L241:
	moveq #0,%d1
	jra .L236
.L238:
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %d0,%d0
	add.l %d0,%a0
	move.b -1(%a2),%d0
	ext.w %d0
	move.l %a0,%a1
	sub.w %d0,%a1
	lea 48(%a1,%a0.l),%a0
.L237:
	move.b (%a2)+,%d0
	ext.w %d0
	move.w %d0,%a1
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcc .L238
	tst.l %d1
	jne .L242
	move.l %a0,%d0
	neg.l %d0
.L239:
	movem.l (%sp)+,#7168
	rts
.L242:
	move.l %a0,%d0
	jra .L239
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	movem.l #56,-(%sp)
	move.l 16(%sp),%a3
	lea isspace,%a4
.L245:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L245
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L251
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L252
	moveq #1,%d1
.L246:
	addq.l #1,%a2
.L247:
	sub.l %a0,%a0
	jra .L248
.L251:
	moveq #0,%d1
	jra .L246
.L252:
	moveq #0,%d1
	jra .L247
.L249:
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %d0,%d0
	add.l %d0,%a0
	move.b -1(%a2),%d0
	ext.w %d0
	move.l %a0,%a1
	sub.w %d0,%a1
	lea 48(%a1,%a0.l),%a0
.L248:
	move.b (%a2)+,%d0
	ext.w %d0
	move.w %d0,%a1
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcc .L249
	tst.l %d1
	jne .L253
	move.l %a0,%d0
	neg.l %d0
.L250:
	movem.l (%sp)+,#7168
	rts
.L253:
	move.l %a0,%d0
	jra .L250
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #15928,-(%sp)
	move.l 36(%sp),%a2
	lea isspace,%a4
.L256:
	move.l %a2,%a3
	move.b (%a2)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L256
	move.b (%a3),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L262
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L263
	moveq #1,%d6
.L257:
	addq.l #1,%a3
.L258:
	clr.l %d4
	clr.l %d5
	jra .L259
.L262:
	moveq #0,%d6
	jra .L257
.L263:
	moveq #0,%d6
	jra .L258
.L260:
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
.L259:
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L260
	tst.l %d6
	jne .L264
	move.l %d4,%d0
	move.l %d5,%d1
	neg.l %d1
	negx.l %d0
.L261:
	movem.l (%sp)+,#7292
	rts
.L264:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L261
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
	jra .L267
.L274:
	lsr.l #1,%d2
.L267:
	tst.l %d2
	jeq .L273
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
	jlt .L274
	jle .L272
	move.l %d3,%d5
	add.l %d4,%d5
	move.l %d2,%d0
	lsr.l #1,%d0
	subq.l #1,%d2
	sub.l %d0,%d2
	jra .L267
.L273:
	moveq #0,%d0
.L270:
	move.l %d0,%a0
	movem.l (%sp)+,#3196
	rts
.L272:
	move.l %d3,%d0
	jra .L270
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
	jra .L276
.L278:
	asr.l #1,%d2
.L276:
	tst.l %d2
	jeq .L281
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
	jeq .L280
	jle .L278
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	jra .L278
.L281:
	moveq #0,%d0
.L277:
	move.l %d0,%a0
	movem.l (%sp)+,#3324
	rts
.L280:
	move.l %d3,%d0
	jra .L277
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
	move.l %d2,%a0
	move.l %d0,%a1
	move.l %a0,%d0
	move.l %a1,%d1
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
	jlt .L285
.L284:
	rts
.L285:
	neg.l %d1
	negx.l %d0
	jra .L284
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
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d6,(%a2)
	move.l %d7,4(%a2)
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
	jmi .L289
.L288:
	rts
.L289:
	neg.l %d0
	jra .L288
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
	move.l %d2,%a0
	move.l %d0,%a1
	move.l %a0,%d0
	move.l %a1,%d1
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
	jlt .L293
.L292:
	rts
.L293:
	neg.l %d1
	negx.l %d0
	jra .L292
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
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d6,(%a2)
	move.l %d7,4(%a2)
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
.L297:
	move.l %a1,%a0
	tst.l (%a1)+
	jeq .L296
	cmp.l -4(%a1),%d0
	jne .L297
.L296:
	tst.l (%a0)
	jeq .L299
	move.l %a0,%d0
.L298:
	move.l %d0,%a0
	rts
.L299:
	moveq #0,%d0
	jra .L298
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
.L303:
	move.l %a1,%a2
	move.l %a0,%a3
	cmpm.l (%a1)+,(%a0)+
	jne .L302
	tst.l -4(%a0)
	jeq .L302
	tst.l -4(%a1)
	jne .L303
.L302:
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L305
	sgt %d0
	neg.b %d0
	and.l #255,%d0
.L304:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L305:
	moveq #-1,%d0
	jra .L304
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l %d0,%a0
.L308:
	move.l (%a1)+,(%a0)
	tst.l (%a0)+
	jne .L308
	move.l %d0,%a0
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%d1
	move.l %d1,%a0
.L311:
	move.l %a0,%d0
	tst.l (%a0)+
	jne .L311
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
.L314:
	move.l %a1,%a2
	move.l %a0,%a3
	tst.l %d0
	jeq .L315
	move.l (%a0),%d1
	cmp.l (%a1),%d1
	jne .L315
	tst.l (%a0)+
	jeq .L315
	tst.l (%a1)+
	jeq .L315
	subq.l #1,%d0
	jra .L314
.L315:
	tst.l %d0
	jeq .L318
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L319
	sgt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L317
.L318:
	moveq #0,%d0
.L317:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L319:
	moveq #-1,%d0
	jra .L317
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	move.l 4(%sp),%a1
	jra .L321
.L323:
	subq.l #1,%d1
.L321:
	move.l %a1,%d0
	tst.l %d1
	jeq .L322
	cmp.l (%a1)+,%a0
	jne .L323
.L322:
	tst.l %d1
	jeq .L326
.L324:
	move.l %d0,%a0
	rts
.L326:
	moveq #0,%d0
	jra .L324
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
	jra .L328
.L330:
	subq.l #1,%d0
.L328:
	move.l %a0,%a2
	move.l %a1,%a3
	tst.l %d0
	jeq .L329
	cmpm.l (%a0)+,(%a1)+
	jeq .L330
.L329:
	tst.l %d0
	jeq .L332
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L333
	sgt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L331
.L332:
	moveq #0,%d0
.L331:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L333:
	moveq #-1,%d0
	jra .L331
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	move.l %d0,%a0
	jra .L335
.L336:
	move.l (%a1)+,(%a0)+
.L335:
	dbra %d1,.L336
	clr.w %d1
	subq.l #1,%d1
	jcc .L336
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
	jeq .L338
	move.l %d0,%d2
	sub.l %a0,%d2
	move.l %d1,%a1
	add.l %d1,%a1
	add.l %a1,%a1
	cmp.l %d2,%a1
	jhi .L339
	move.l %d0,%a1
	jra .L340
.L339:
	move.l %d1,%a1
	subq.l #1,%a1
	add.l %a1,%a1
	add.l %a1,%a1
	add.l %a1,%a0
	add.l %d0,%a1
	jra .L341
.L342:
	move.l (%a0),(%a1)
	subq.l #4,%a0
	subq.l #4,%a1
.L341:
	dbra %d1,.L342
	clr.w %d1
	subq.l #1,%d1
	jcc .L342
.L338:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
.L343:
	move.l (%a0)+,(%a1)+
.L340:
	dbra %d1,.L343
	clr.w %d1
	subq.l #1,%d1
	jcc .L343
	jra .L338
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	move.l %d0,%a0
	jra .L345
.L346:
	move.l %a1,(%a0)+
.L345:
	dbra %d1,.L346
	clr.w %d1
	subq.l #1,%d1
	jcc .L346
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
	jls .L348
	move.l 12(%sp),%a0
	add.l %d0,%a0
	move.l 12(%sp),%d1
	lea -1(%a1,%d1.l),%a1
	jra .L349
.L350:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
.L349:
	cmp.l %a0,%d0
	jne .L350
.L347:
	rts
.L348:
	cmp.l %d0,%a1
	jeq .L347
	move.l 12(%sp),%d1
	add.l %d0,%d1
	move.l %d0,%a0
	jra .L352
.L353:
	move.b (%a0)+,(%a1)+
.L352:
	cmp.l %a0,%d1
	jne .L353
	jra .L347
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.type	rotl64, @function
rotl64:
	movem.l #16128,-(%sp)
	move.l 28(%sp),%d4
	move.l 32(%sp),%d5
	move.l 36(%sp),%d0
	move.w #-32,%a0
	add.l %d0,%a0
	cmp.w #0,%a0
	jlt .L355
	move.l %d5,%d2
	move.l %a0,%d1
	lsl.l %d1,%d2
	moveq #0,%d3
.L356:
	move.l %d0,%d1
	neg.l %d1
	moveq #63,%d6
	and.l %d1,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L357
	move.l %d4,%d7
	move.l %a0,%d0
	lsr.l %d0,%d7
	moveq #0,%d6
.L358:
	move.l %d6,%d0
	or.l %d2,%d0
	move.l %d7,%d1
	or.l %d3,%d1
	movem.l (%sp)+,#252
	rts
.L355:
	move.l %d5,%d1
	lsr.l #1,%d1
	moveq #31,%d2
	sub.l %d0,%d2
	lsr.l %d2,%d1
	move.l %d4,%d2
	lsl.l %d0,%d2
	or.l %d1,%d2
	move.l %d5,%d3
	lsl.l %d0,%d3
	jra .L356
.L357:
	move.l %d4,%d1
	add.l %d1,%d1
	neg.l %d0
	moveq #63,%d6
	and.l %d6,%d0
	moveq #31,%d6
	sub.l %d0,%d6
	lsl.l %d6,%d1
	move.l %d5,%d7
	lsr.l %d0,%d7
	or.l %d1,%d7
	move.l %d4,%d6
	lsr.l %d0,%d6
	jra .L358
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
	movem.l #16128,-(%sp)
	move.l 28(%sp),%d4
	move.l 32(%sp),%d5
	move.l 36(%sp),%d0
	move.w #-32,%a0
	add.l %d0,%a0
	cmp.w #0,%a0
	jlt .L360
	move.l %d4,%d3
	move.l %a0,%d1
	lsr.l %d1,%d3
	moveq #0,%d2
.L361:
	move.l %d0,%d1
	neg.l %d1
	moveq #63,%d6
	and.l %d1,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L362
	move.l %d5,%d6
	move.l %a0,%d0
	lsl.l %d0,%d6
	moveq #0,%d7
.L363:
	move.l %d6,%d0
	or.l %d2,%d0
	move.l %d7,%d1
	or.l %d3,%d1
	movem.l (%sp)+,#252
	rts
.L360:
	move.l %d4,%d1
	add.l %d1,%d1
	moveq #31,%d2
	sub.l %d0,%d2
	lsl.l %d2,%d1
	move.l %d5,%d3
	lsr.l %d0,%d3
	or.l %d1,%d3
	move.l %d4,%d2
	lsr.l %d0,%d2
	jra .L361
.L362:
	move.l %d5,%d1
	lsr.l #1,%d1
	neg.l %d0
	moveq #63,%d6
	and.l %d6,%d0
	moveq #31,%d6
	sub.l %d0,%d6
	lsr.l %d6,%d1
	move.l %d4,%d6
	lsl.l %d0,%d6
	or.l %d1,%d6
	move.l %d5,%d7
	lsl.l %d0,%d7
	jra .L363
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
	movem.l #15872,-(%sp)
	move.l 24(%sp),%d0
	and.l #-16777216,%d0
	moveq #24,%d1
	lsr.l %d1,%d0
	move.l %d0,%d1
	moveq #0,%d0
	move.l 24(%sp),%d2
	and.l #16711680,%d2
	lsr.l #8,%d2
	move.l %d2,%d3
	moveq #0,%d2
	move.l %d2,%d4
	or.l %d0,%d4
	move.l %d3,%d5
	or.l %d1,%d5
	move.l 24(%sp),%d2
	and.l #65280,%d2
	move.l %d2,%d1
	lsl.l #8,%d1
	move.l %d2,%d0
	clr.w %d0
	swap %d0
	lsr.w #8,%d0
	move.l %d4,%d2
	or.l %d0,%d2
	move.l %d5,%d3
	or.l %d1,%d3
	moveq #0,%d0
	not.b %d0
	and.l 24(%sp),%d0
	moveq #0,%d1
	move.b %d0,%d1
	lsr.l #8,%d0
	ror.l #8,%d1
	move.l %d2,%d4
	or.l %d0,%d4
	move.l %d3,%d5
	or.l %d1,%d5
	clr.l %d0
	clr.l %d1
	move.l 28(%sp),%d1
	and.l #-16777216,%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	move.l %d4,%d2
	or.l %d0,%d2
	move.l %d5,%d3
	or.l %d1,%d3
	clr.l %d4
	clr.l %d5
	move.l 28(%sp),%d5
	and.l #16711680,%d5
	move.l %d5,%d6
	lsr.l #8,%d6
	move.l %d4,%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d6,%d0
	move.l %d5,%d1
	lsl.w #8,%d1
	swap %d1
	clr.w %d1
	move.l %d2,%d4
	or.l %d0,%d4
	move.l %d3,%d5
	or.l %d1,%d5
	move.l 28(%sp),%d1
	and.l #65280,%d1
	lsl.l #8,%d1
	move.l %d4,%d2
	or.l %d1,%d2
	move.l %d5,%d3
	moveq #0,%d5
	not.b %d5
	and.l 28(%sp),%d5
	moveq #24,%d4
	lsl.l %d4,%d5
	move.l %d2,%d0
	or.l %d5,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#124
	rts
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	moveq #0,%d0
.L376:
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L380
	btst %d0,%d1
	jne .L381
	addq.l #1,%d0
	jra .L376
.L381:
	addq.l #1,%d0
.L378:
	move.l (%sp)+,%d2
	rts
.L380:
	moveq #0,%d0
	jra .L378
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L386
	moveq #1,%d0
	jra .L384
.L385:
	asr.l #1,%d1
	addq.l #1,%d0
.L384:
	btst #0,%d1
	jeq .L385
.L383:
	rts
.L386:
	moveq #0,%d0
	jra .L383
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	move.l #0xff7fffff,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L390
	move.l #0x7f7fffff,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L393
	moveq #1,%d0
	jra .L388
.L390:
	moveq #1,%d0
.L388:
	move.l (%sp)+,%d2
	rts
.L393:
	moveq #0,%d0
	jra .L388
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	pea -1.w
	move.l #-1048577,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L397
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L400
	moveq #1,%d0
	jra .L395
.L397:
	moveq #1,%d0
.L395:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L400:
	moveq #0,%d0
	jra .L395
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
	movem.l #7168,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d4
	move.l 24(%sp),%d5
	move.l .LC0+8,-(%sp)
	move.l .LC0+4,-(%sp)
	move.l .LC0,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L404
	move.l .LC1+8,-(%sp)
	move.l .LC1+4,-(%sp)
	move.l .LC1,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtxf2
	lea (24,%sp),%sp
	tst.l %d0
	jle .L407
	moveq #1,%d0
	jra .L402
.L404:
	moveq #1,%d0
.L402:
	movem.l (%sp)+,#56
	rts
.L407:
	moveq #0,%d0
	jra .L402
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
	jne .L410
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	move.l %d4,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L410
	tst.l %d2
	jlt .L417
	move.l #0x40000000,%d3
.L412:
	lea __mulsf3,%a2
	jra .L414
.L417:
	move.l #0x3f000000,%d3
	jra .L412
.L413:
	move.l %d2,%d2
	jpl .L418
	addq.l #1,%d2
.L418:
	asr.l #1,%d2
	jeq .L410
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L414:
	btst #0,%d2
	jeq .L413
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L413
.L410:
	move.l %d4,%d0
	movem.l (%sp)+,#1052
	rts
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
	movem.l #12064,-(%sp)
	move.l 28(%sp),%d6
	move.l 32(%sp),%d7
	move.l 36(%sp),%d2
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L420
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L420
	tst.l %d2
	jlt .L427
	move.l #1073741824,%d4
	clr.l %d5
.L422:
	lea __muldf3,%a2
	jra .L424
.L427:
	move.l #1071644672,%d4
	clr.l %d5
	jra .L422
.L423:
	move.l %d2,%d2
	jpl .L428
	addq.l #1,%d2
.L428:
	asr.l #1,%d2
	jeq .L420
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	move.l %d0,%d4
	move.l %d1,%d5
.L424:
	btst #0,%d2
	jeq .L423
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	move.l %d0,%d6
	move.l %d1,%d7
	jra .L423
.L420:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1268
	rts
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
	jne .L430
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
	jeq .L430
	tst.l %d2
	jlt .L437
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
.L432:
	lea __mulxf3,%a2
	jra .L434
.L437:
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
	jra .L432
.L433:
	move.l %d2,%d2
	jpl .L438
	addq.l #1,%d2
.L438:
	asr.l #1,%d2
	jeq .L430
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
.L434:
	btst #0,%d2
	jeq .L433
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
	jra .L433
.L430:
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
	jra .L440
.L441:
	move.b (%a0)+,%d1
	move.b (%a1)+,%d3
	eor.b %d3,%d1
	move.b %d1,-1(%a1)
.L440:
	cmp.l %a0,%d2
	jne .L441
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
	jra .L443
.L445:
	subq.l #1,%d2
.L443:
	move.l %a0,%a2
	tst.l %d2
	jeq .L444
	move.b (%a1)+,(%a0)
	tst.b (%a0)+
	jne .L445
.L444:
	tst.l %d2
	jne .L446
	clr.b (%a2)
.L446:
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
.L448:
	cmp.l %d0,%d1
	jeq .L449
	tst.b (%a0,%d0.l)
	jne .L450
.L449:
	rts
.L450:
	addq.l #1,%d0
	jra .L448
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d1
	move.l 12(%sp),%a2
.L452:
	move.l %a2,%d0
	tst.b (%a2)+
	jeq .L457
	move.l %d1,%a1
.L455:
	tst.b (%a1)+
	jeq .L452
	move.b -1(%a1),%d2
	cmp.b -1(%a2),%d2
	jne .L455
.L453:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L457:
	moveq #0,%d0
	jra .L453
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
	jra .L460
.L459:
	tst.b -1(%a0)
	jeq .L463
.L460:
	move.l %a0,%d2
	move.b (%a0)+,%d1
	ext.w %d1
	move.w %d1,%a1
	cmp.l %d3,%a1
	jne .L459
	move.l %d2,%d0
	jra .L459
.L463:
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
	jeq .L468
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a3
	move.l 28(%sp),%d2
	lea strchr,%a4
	lea strncmp,%a5
.L466:
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %a0,%d2
	jeq .L470
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L469
	addq.l #1,%d2
	jra .L466
.L470:
	moveq #0,%d0
	jra .L465
.L468:
	move.l 28(%sp),%d0
.L465:
	move.l %d0,%a0
	movem.l (%sp)+,#15372
	rts
.L469:
	move.l %d2,%d0
	jra .L465
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L484
.L472:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L482
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L474
	move.l %d2,%d0
	move.l %d3,%d1
.L475:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L484:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L472
.L474:
	move.l %d2,%d0
	add.l #-2147483648,%d0
	move.l %d3,%d1
	jra .L475
.L482:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L475
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
	jeq .L490
	cmp.l 36(%sp),%d0
	jhi .L491
	move.l %d0,%d4
	subq.l #1,%d4
	move.l %a3,%d5
	addq.l #1,%d5
	lea memcmp,%a4
.L487:
	move.l %a2,%d3
	cmp.l %a2,%d2
	jcs .L493
	move.b (%a2)+,%d0
	cmp.b (%a3),%d0
	jne .L487
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L487
	move.l %d3,%d0
	jra .L486
.L493:
	moveq #0,%d0
.L486:
	move.l %d0,%a0
	movem.l (%sp)+,#7228
	rts
.L490:
	move.l %a2,%d0
	jra .L486
.L491:
	moveq #0,%d0
	jra .L486
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
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d2
	move.l 40(%sp),%d3
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L515
	moveq #0,%d5
.L496:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L516
	moveq #0,%d4
	move.l #1072693248,%d6
	clr.l %d7
	lea __gedf2,%a2
	lea __muldf3,%a3
	jra .L498
.L515:
	move.l %d2,%d0
	add.l #-2147483648,%d0
	move.l %d3,%d1
	move.l %d0,%d2
	move.l %d1,%d3
	moveq #1,%d5
	jra .L496
.L500:
	addq.l #1,%d4
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
.L498:
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L500
.L501:
	move.l 44(%sp),%a0
	move.l %d4,(%a0)
	tst.l %d5
	jeq .L505
	move.l %d2,%d0
	add.l #-2147483648,%d0
	move.l %d3,%d1
	move.l %d0,%d2
	move.l %d1,%d3
.L505:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#3324
	rts
.L516:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L514
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L509
	moveq #0,%d4
	jra .L501
.L504:
	subq.l #1,%d4
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
.L503:
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L504
	jra .L501
.L509:
	moveq #0,%d4
	move.l #1071644672,%d6
	clr.l %d7
	lea __ltdf2,%a2
	lea __adddf3,%a3
	jra .L503
.L514:
	moveq #0,%d4
	jra .L501
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
	subq.l #8,%sp
	movem.l #16128,-(%sp)
	move.l 44(%sp),%d6
	move.l 48(%sp),%d7
	move.l 36(%sp),%d2
	move.l 40(%sp),%d3
	clr.l 24(%sp)
	clr.l 28(%sp)
	jra .L518
.L519:
	add.l %d7,%d7
	addx.l %d6,%d6
	lsr.l #1,%d2
	roxr.l #1,%d3
.L518:
	move.l %d2,%d0
	or.l %d3,%d0
	jeq .L521
	moveq #0,%d4
	moveq #1,%d5
	and.l %d3,%d5
	move.l %d4,%d0
	or.l %d5,%d0
	jeq .L519
	add.l %d7,28(%sp)
	move.l 24(%sp),%d0
	addx.l %d6,%d0
	move.l %d0,24(%sp)
	jra .L519
.L521:
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	movem.l (%sp)+,#252
	addq.l #8,%sp
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
	jra .L523
.L525:
	add.l %d1,%d1
	add.l %d2,%d2
.L523:
	cmp.l %d1,%a1
	jls .L530
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L531
	tst.l %d1
	jge .L525
	moveq #0,%d0
	jra .L526
.L530:
	moveq #0,%d0
	jra .L526
.L531:
	moveq #0,%d0
	jra .L526
.L527:
	lsr.l #1,%d2
	lsr.l #1,%d1
.L526:
	tst.l %d2
	jeq .L533
	cmp.l %a1,%d1
	jhi .L527
	sub.l %d1,%a1
	or.l %d2,%d0
	jra .L527
.L533:
	tst.l 16(%sp)
	jne .L534
.L529:
	move.l (%sp)+,%d2
	rts
.L534:
	move.l %a1,%d0
	jra .L529
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	move.l 4(%sp),%d1
	move.b %d1,%d0
	jmi .L539
.L536:
	tst.b %d0
	jeq .L538
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
.L537:
	rts
.L539:
	not.b %d0
	jra .L536
.L538:
	moveq #7,%d0
	jra .L537
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	tst.l %d0
	jlt .L544
.L541:
	move.l %d0,%d2
	or.l %d1,%d2
	jeq .L543
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
.L542:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L544:
	move.l %d0,%d2
	not.l %d2
	move.l %d1,%d3
	not.l %d3
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L541
.L543:
	moveq #63,%d0
	jra .L542
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	move.l 4(%sp),%d1
	move.l 8(%sp),%a0
	moveq #0,%d0
	jra .L546
.L547:
	lsr.l #1,%d1
	add.l %a0,%a0
.L546:
	tst.l %d1
	jeq .L549
	btst #0,%d1
	jeq .L547
	add.l %a0,%d0
	jra .L547
.L549:
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
	jls .L551
.L553:
	move.l %a3,%a2
	move.l %a0,%a1
	moveq #0,%d1
	jra .L552
.L551:
	move.l %a3,%d1
	add.l %d2,%d1
	cmp.l %d1,%a0
	jhi .L553
	subq.l #1,%d2
	lea (%a3,%d2.l),%a1
	add.l %d2,%a0
	subq.l #1,%a3
	jra .L554
.L555:
	move.l (%a2)+,%d4
	move.l (%a2)+,%d5
	move.l %d4,(%a1)+
	move.l %d5,(%a1)+
	addq.l #1,%d1
.L552:
	cmp.l %d1,%d3
	jne .L555
	jra .L556
.L557:
	move.b (%a3,%d0.l),(%a0,%d0.l)
	addq.l #1,%d0
.L556:
	cmp.l %d2,%d0
	jcs .L557
.L550:
	movem.l (%sp)+,#3132
	rts
.L559:
	move.b (%a1),(%a0)
	subq.l #1,%a1
	subq.l #1,%a0
.L554:
	cmp.l %a1,%a3
	jne .L559
	jra .L550
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
	jls .L561
.L563:
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
	jra .L562
.L561:
	lea (%a3,%d1.l),%a0
	cmp.l %a0,%a2
	jhi .L563
	subq.l #1,%d1
	lea (%a3,%d1.l),%a1
	add.l %d1,%a2
	subq.l #1,%a3
	jra .L564
.L565:
	move.w (%a0)+,(%a1)+
.L562:
	cmp.l %a0,%d0
	jne .L565
	btst #0,%d1
	jeq .L560
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L560:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L567:
	move.b (%a1),(%a2)
	subq.l #1,%a1
	subq.l #1,%a2
.L564:
	cmp.l %a1,%a3
	jne .L567
	jra .L560
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
	jls .L569
.L571:
	move.l %a3,%a2
	move.l %a0,%a1
	moveq #0,%d1
	jra .L570
.L569:
	move.l %a3,%d1
	add.l %d2,%d1
	cmp.l %d1,%a0
	jhi .L571
	subq.l #1,%d2
	lea (%a3,%d2.l),%a1
	add.l %d2,%a0
	subq.l #1,%a3
	jra .L572
.L573:
	move.l (%a2)+,(%a1)+
	addq.l #1,%d1
.L570:
	cmp.l %d1,%d3
	jne .L573
	jra .L574
.L575:
	move.b (%a3,%d0.l),(%a0,%d0.l)
	addq.l #1,%d0
.L574:
	cmp.l %d2,%d0
	jcs .L575
.L568:
	movem.l (%sp)+,#3084
	rts
.L577:
	move.b (%a1),(%a0)
	subq.l #1,%a1
	subq.l #1,%a0
.L572:
	cmp.l %a1,%a3
	jne .L577
	jra .L568
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
.L585:
	moveq #16,%d1
	cmp.l %d0,%d1
	jeq .L586
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L586
	addq.l #1,%d0
	jra .L585
.L586:
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
.L589:
	moveq #16,%d2
	cmp.l %d0,%d2
	jeq .L590
	btst %d0,%d1
	jne .L590
	addq.l #1,%d0
	jra .L589
.L590:
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
	jge .L598
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L595:
	move.l (%sp)+,%d2
	rts
.L598:
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L595
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	moveq #0,%d0
	moveq #0,%d1
	moveq #0,%d2
	move.w 14(%sp),%d2
	jra .L600
.L601:
	addq.l #1,%d1
.L600:
	moveq #16,%d3
	cmp.l %d1,%d3
	jeq .L603
	btst %d1,%d2
	jeq .L601
	addq.l #1,%d0
	jra .L601
.L603:
	moveq #1,%d1
	and.l %d1,%d0
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
	moveq #0,%d0
	moveq #0,%d1
	moveq #0,%d2
	move.w 14(%sp),%d2
	jra .L605
.L606:
	addq.l #1,%d1
.L605:
	moveq #16,%d3
	cmp.l %d1,%d3
	jeq .L608
	btst %d1,%d2
	jeq .L606
	addq.l #1,%d0
	jra .L606
.L608:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	move.l 4(%sp),%d1
	move.l 8(%sp),%a0
	moveq #0,%d0
	jra .L610
.L611:
	lsr.l #1,%d1
	add.l %a0,%a0
.L610:
	tst.l %d1
	jeq .L613
	btst #0,%d1
	jeq .L611
	add.l %a0,%d0
	jra .L611
.L613:
	rts
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d1
	cmp.w #0,%a0
	jeq .L619
	moveq #0,%d0
	jra .L616
.L617:
	add.l %a0,%a0
	lsr.l #1,%d1
.L616:
	tst.l %d1
	jeq .L615
	btst #0,%d1
	jeq .L617
	add.l %a0,%d0
	jra .L617
.L619:
	moveq #0,%d0
.L615:
	rts
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
	jra .L621
.L623:
	add.l %d1,%d1
	add.l %d2,%d2
.L621:
	cmp.l %d1,%a1
	jls .L628
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L629
	tst.l %d1
	jge .L623
	moveq #0,%d0
	jra .L624
.L628:
	moveq #0,%d0
	jra .L624
.L629:
	moveq #0,%d0
	jra .L624
.L625:
	lsr.l #1,%d2
	lsr.l #1,%d1
.L624:
	tst.l %d2
	jeq .L631
	cmp.l %a1,%d1
	jhi .L625
	sub.l %d1,%a1
	or.l %d2,%d0
	jra .L625
.L631:
	tst.l 16(%sp)
	jne .L632
.L627:
	move.l (%sp)+,%d2
	rts
.L632:
	move.l %a1,%d0
	jra .L627
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L635
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L636
	moveq #0,%d0
.L634:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L635:
	moveq #-1,%d0
	jra .L634
.L636:
	moveq #1,%d0
	jra .L634
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d2
	move.l 24(%sp),%d3
	move.l 28(%sp),%d4
	move.l 32(%sp),%d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L639
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L640
	moveq #0,%d0
.L638:
	movem.l (%sp)+,#60
	rts
.L639:
	moveq #-1,%d0
	jra .L638
.L640:
	moveq #1,%d0
	jra .L638
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
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	jmi .L652
	sub.l %a1,%a1
.L644:
	moveq #33,%d2
	moveq #0,%d0
	jra .L645
.L652:
	neg.l %d1
	move.w #1,%a1
	jra .L644
.L646:
	add.l %a0,%a0
	asr.l #1,%d1
.L645:
	tst.l %d1
	jeq .L647
	subq.b #1,%d2
	jeq .L647
	btst #0,%d1
	jeq .L646
	add.l %a0,%d0
	jra .L646
.L647:
	cmp.w #0,%a1
	jeq .L649
	neg.l %d0
.L649:
	move.l (%sp)+,%d2
	rts
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	tst.l %d0
	jlt .L658
	moveq #0,%d2
.L654:
	tst.l %d1
	jlt .L659
.L655:
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d2
	jeq .L656
	neg.l %d0
.L656:
	move.l (%sp)+,%d2
	rts
.L658:
	neg.l %d0
	moveq #1,%d2
	jra .L654
.L659:
	neg.l %d1
	tst.l %d2
	seq %d2
	neg.b %d2
	and.l #255,%d2
	jra .L655
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	tst.l %d0
	jlt .L665
	moveq #0,%d2
.L661:
	tst.l %d1
	jlt .L666
.L662:
	pea 1.w
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d2
	jeq .L663
	neg.l %d0
.L663:
	move.l (%sp)+,%d2
	rts
.L665:
	neg.l %d0
	moveq #1,%d2
	jra .L661
.L666:
	neg.l %d1
	jra .L662
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
.L668:
	cmp.w %a0,%d1
	jcc .L675
	subq.l #1,%d0
	jeq .L676
	tst.w %d1
	jlt .L678
	add.w %d1,%d1
	add.w %d2,%d2
	jra .L668
.L678:
	clr.w %d0
	jra .L671
.L675:
	clr.w %d0
	jra .L671
.L676:
	clr.w %d0
	jra .L671
.L672:
	lsr.w #1,%d2
	lsr.w #1,%d1
.L671:
	tst.w %d2
	jeq .L679
	cmp.w %a0,%d1
	jhi .L672
	sub.w %d1,%a0
	or.w %d2,%d0
	jra .L672
.L679:
	tst.l 16(%sp)
	jne .L680
.L674:
	move.l (%sp)+,%d2
	rts
.L680:
	move.w %a0,%d0
	jra .L674
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
	jra .L682
.L684:
	add.l %d1,%d1
	add.l %d2,%d2
.L682:
	cmp.l %d1,%a1
	jls .L689
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L690
	tst.l %d1
	jge .L684
	moveq #0,%d0
	jra .L685
.L689:
	moveq #0,%d0
	jra .L685
.L690:
	moveq #0,%d0
	jra .L685
.L686:
	lsr.l #1,%d2
	lsr.l #1,%d1
.L685:
	tst.l %d2
	jeq .L692
	cmp.l %a1,%d1
	jhi .L686
	sub.l %d1,%a1
	or.l %d2,%d0
	jra .L686
.L692:
	tst.l 16(%sp)
	jne .L693
.L688:
	move.l (%sp)+,%d2
	rts
.L693:
	move.l %a1,%d0
	jra .L688
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d2
	move.l 24(%sp),%d3
	move.l 28(%sp),%d0
	btst #5,%d0
	jeq .L695
	clr.l %d4
	clr.l %d5
	moveq #-32,%d1
	add.l %d1,%d0
	move.l %d3,%d4
	lsl.l %d0,%d4
.L696:
	move.l %d4,%d0
	move.l %d5,%d1
.L697:
	movem.l (%sp)+,#60
	rts
.L695:
	tst.l %d0
	jeq .L698
	move.l %d3,%d5
	lsl.l %d0,%d5
	move.l %d2,%d1
	lsl.l %d0,%d1
	moveq #32,%d2
	sub.l %d0,%d2
	move.l %d3,%d0
	lsr.l %d2,%d0
	move.l %d0,%d4
	or.l %d1,%d4
	jra .L696
.L698:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L697
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d4
	move.l 24(%sp),%d5
	move.l 28(%sp),%d0
	btst #5,%d0
	jeq .L700
	move.l %d4,%d2
	add.l %d2,%d2
	subx.l %d2,%d2
	moveq #-32,%d1
	add.l %d1,%d0
	move.l %d4,%d3
	asr.l %d0,%d3
.L701:
	move.l %d2,%d0
	move.l %d3,%d1
.L702:
	movem.l (%sp)+,#60
	rts
.L700:
	tst.l %d0
	jeq .L703
	move.l %d4,%d2
	asr.l %d0,%d2
	moveq #32,%d1
	sub.l %d0,%d1
	lsl.l %d1,%d4
	move.l %d5,%d1
	lsr.l %d0,%d1
	move.l %d4,%d3
	or.l %d1,%d3
	jra .L701
.L703:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L702
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	lea (-24,%sp),%sp
	movem.l #16188,-(%sp)
	move.l 68(%sp),%d2
	move.l 72(%sp),%d3
	move.l %d2,%d6
	move.l %d3,%d7
	moveq #24,%d7
	lsr.l %d7,%d6
	move.l %d6,%d7
	moveq #0,%d6
	move.l %d2,%d0
	move.l %d3,%d1
	lsr.l #8,%d0
	clr.l 40(%sp)
	clr.l 44(%sp)
	move.l %d0,%d4
	and.l #65280,%d4
	move.l %d4,44(%sp)
	move.l %d2,%d4
	lsl.l #8,%d4
	move.l %d3,%d1
	clr.w %d1
	swap %d1
	lsr.w #8,%d1
	or.l %d4,%d1
	clr.l 48(%sp)
	clr.l 52(%sp)
	move.l %d1,%d4
	and.l #16711680,%d4
	move.l %d4,52(%sp)
	move.l %d2,%d0
	move.l %d3,%d1
	move.b %d2,%d1
	ror.l #8,%d1
	clr.l 56(%sp)
	clr.l 60(%sp)
	move.l %d1,%d4
	and.l #-16777216,%d4
	move.l %d4,60(%sp)
	move.l %d2,%d0
	move.l %d3,%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	moveq #0,%d4
	not.b %d4
	and.l %d0,%d4
	move.l %d4,%a2
	move.l %d3,%d4
	lsr.l #8,%d4
	move.l %d2,%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d4,%d0
	move.l %d0,%d4
	and.l #65280,%d4
	move.l %d2,%d0
	move.l %d3,%d1
	lsl.l #8,%d1
	move.l %d1,%d0
	moveq #0,%d1
	move.l %d0,%a4
	move.l %d1,%a5
	move.l %a4,%d1
	and.l #16711680,%d1
	move.l %d1,%a0
	moveq #24,%d2
	lsl.l %d2,%d3
	move.l %d3,%d0
	or.l %d6,%d0
	move.l %d0,%d2
	or.l 40(%sp),%d2
	move.l %d7,%d3
	or.l 44(%sp),%d3
	move.l %d2,%d0
	or.l 48(%sp),%d0
	move.l %d3,%d1
	or.l 52(%sp),%d1
	move.l %d0,%d2
	or.l 56(%sp),%d2
	move.l %d1,%d3
	or.l 60(%sp),%d3
	move.l %a2,%d0
	or.l %d2,%d0
	move.l %d3,%d1
	move.l %d0,%d2
	or.l %d4,%d2
	move.l %a0,%d0
	or.l %d2,%d0
	movem.l (%sp)+,#15612
	lea (24,%sp),%sp
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
	move.l 12(%sp),%d1
	cmp.l #65535,%d1
	jhi .L711
	moveq #16,%d0
.L707:
	moveq #16,%d2
	sub.l %d0,%d2
	lsr.l %d2,%d1
	move.l %d0,%d2
	move.l %d1,%d0
	and.l #65280,%d0
	jne .L712
	move.w #8,%a0
.L708:
	moveq #8,%d0
	sub.l %a0,%d0
	lsr.l %d0,%d1
	add.l %a0,%d2
	moveq #15,%d0
	not.b %d0
	and.l %d1,%d0
	jne .L713
	move.w #4,%a0
.L709:
	moveq #4,%d0
	sub.l %a0,%d0
	lsr.l %d0,%d1
	add.l %a0,%d2
	moveq #12,%d0
	and.l %d1,%d0
	jne .L714
	move.w #2,%a0
.L710:
	moveq #2,%d0
	sub.l %a0,%d0
	lsr.l %d0,%d1
	add.l %a0,%d2
	moveq #2,%d0
	and.l %d1,%d0
	seq %d0
	neg.b %d0
	and.l #255,%d0
	moveq #2,%d3
	sub.l %d1,%d3
	move.l %d3,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L711:
	moveq #0,%d0
	jra .L707
.L712:
	sub.l %a0,%a0
	jra .L708
.L713:
	sub.l %a0,%a0
	jra .L709
.L714:
	sub.l %a0,%a0
	jra .L710
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
	cmp.l %a0,%d0
	jlt .L717
	jgt .L718
	cmp.l %a1,%d1
	jcs .L719
	jhi .L720
	moveq #1,%d0
	jra .L716
.L717:
	moveq #0,%d0
.L716:
	rts
.L718:
	moveq #2,%d0
	jra .L716
.L719:
	moveq #0,%d0
	jra .L716
.L720:
	moveq #2,%d0
	jra .L716
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
	jne .L727
	moveq #16,%d0
.L723:
	lsr.l %d0,%d1
	move.l %d0,%a0
	tst.b %d1
	jne .L728
	moveq #8,%d0
.L724:
	lsr.l %d0,%d1
	add.l %d0,%a0
	moveq #15,%d0
	and.l %d1,%d0
	jne .L729
	moveq #4,%d0
.L725:
	lsr.l %d0,%d1
	add.l %d0,%a0
	moveq #3,%d0
	and.l %d1,%d0
	jne .L730
	moveq #2,%d0
.L726:
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
.L727:
	moveq #0,%d0
	jra .L723
.L728:
	moveq #0,%d0
	jra .L724
.L729:
	moveq #0,%d0
	jra .L725
.L730:
	moveq #0,%d0
	jra .L726
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d2
	move.l 24(%sp),%d3
	move.l 28(%sp),%d0
	btst #5,%d0
	jeq .L732
	clr.l %d4
	clr.l %d5
	moveq #-32,%d1
	add.l %d1,%d0
	move.l %d2,%d5
	lsr.l %d0,%d5
.L733:
	move.l %d4,%d0
	move.l %d5,%d1
.L734:
	movem.l (%sp)+,#60
	rts
.L732:
	tst.l %d0
	jeq .L735
	move.l %d2,%d4
	lsr.l %d0,%d4
	moveq #32,%d1
	sub.l %d0,%d1
	lsl.l %d1,%d2
	move.l %d3,%d1
	lsr.l %d0,%d1
	move.l %d2,%d5
	or.l %d1,%d5
	jra .L733
.L735:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L734
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movem.l #16184,-(%sp)
	move.l 40(%sp),%d3
	move.l 44(%sp),%d6
	move.l %d3,%d0
	and.l #65535,%d0
	move.l %d0,%a3
	move.l %d6,%d0
	and.l #65535,%d0
	move.l %d0,%a4
	lea __mulsi3,%a2
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d2
	clr.w %d2
	swap %d2
	move.l %d0,%d7
	and.l #65535,%d7
	clr.w %d3
	swap %d3
	move.l %a4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d2
	move.l %d2,%d0
	swap %d0
	clr.w %d0
	move.l %d0,%d5
	add.l %d7,%d5
	move.l %d2,%d4
	clr.w %d4
	swap %d4
	move.l %d5,%d2
	clr.w %d2
	swap %d2
	move.l %d5,%d7
	and.l #65535,%d7
	clr.w %d6
	swap %d6
	move.l %d6,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d2
	move.l %d2,%d0
	swap %d0
	clr.w %d0
	move.l %d0,%d5
	add.l %d7,%d5
	clr.w %d2
	swap %d2
	add.l %d4,%d2
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	add.l %d2,%d4
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#7420
	rts
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d4
	move.l 40(%sp),%d5
	move.l 44(%sp),%d2
	move.l 48(%sp),%d3
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	jsr __muldsi3
	addq.l #8,%sp
	move.l %d0,%a2
	move.l %d1,%a3
	move.l %d0,%d6
	move.l %d1,%d7
	lea __mulsi3,%a3
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	move.l %d0,%d3
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	add.l %d0,%d3
	move.l %d3,%d6
	add.l %a2,%d6
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#3324
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
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d4
	move.l 36(%sp),%d5
	move.l 40(%sp),%d2
	move.l %d2,%d3
	add.l %d3,%d3
	subx.l %d3,%d3
	neg.l %d3
	move.l #1072693248,%d6
	clr.l %d7
	lea __muldf3,%a2
	jra .L746
.L744:
	move.l %d2,%d2
	jpl .L749
	addq.l #1,%d2
.L749:
	asr.l #1,%d2
	jeq .L745
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	move.l %d0,%d4
	move.l %d1,%d5
.L746:
	btst #0,%d2
	jeq .L744
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	move.l %d0,%d6
	move.l %d1,%d7
	jra .L744
.L745:
	tst.l %d3
	jeq .L748
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
.L747:
	movem.l (%sp)+,#1276
	rts
.L748:
	move.l %d6,%d0
	move.l %d7,%d1
	jra .L747
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
	jra .L753
.L751:
	move.l %d2,%d2
	jpl .L756
	addq.l #1,%d2
.L756:
	asr.l #1,%d2
	jeq .L752
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L753:
	btst #0,%d2
	jeq .L751
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L751
.L752:
	tst.l %d5
	jeq .L755
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
.L754:
	movem.l (%sp)+,#1084
	rts
.L755:
	move.l %d4,%d0
	jra .L754
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
	cmp.l %a0,%d0
	jcs .L759
	jhi .L760
	cmp.l %a1,%d1
	jcs .L761
	jhi .L762
	moveq #1,%d0
	jra .L758
.L759:
	moveq #0,%d0
.L758:
	rts
.L760:
	moveq #2,%d0
	jra .L758
.L761:
	moveq #0,%d0
	jra .L758
.L762:
	moveq #2,%d0
	jra .L758
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
