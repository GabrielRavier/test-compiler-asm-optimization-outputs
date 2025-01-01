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
	move.l 24(%sp),%a0
	moveq #0,%d2
	move.b 23(%sp),%d2
	cmp.w #0,%a0
	jeq .L13
	move.l 16(%sp),%a2
	move.l 12(%sp),%a1
.L10:
	move.l %a1,%d0
	move.b (%a2)+,%d1
	move.b %d1,(%a1)+
	and.l #255,%d1
	cmp.l %d1,%d2
	jeq .L16
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L10
	moveq #0,%d0
	jra .L8
.L13:
	moveq #0,%d0
	jra .L8
.L16:
	addq.l #1,%d0
.L8:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
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
	tst.l %d1
	jeq .L21
	move.l 12(%sp),%a0
.L19:
	move.l %a0,%d0
	moveq #0,%d2
	move.b (%a0)+,%d2
	cmp.l %d2,%d3
	jeq .L17
	subq.l #1,%d1
	jne .L19
	moveq #0,%d0
.L17:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L21:
	moveq #0,%d0
	jra .L17
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d0
	jeq .L28
	move.l 12(%sp),%a1
	move.l 16(%sp),%a0
.L25:
	move.l %a0,%a2
	move.l %a1,%a3
	cmpm.b (%a0)+,(%a1)+
	jne .L31
	subq.l #1,%d0
	jne .L25
	moveq #0,%d0
	jra .L23
.L28:
	moveq #0,%d0
	jra .L23
.L31:
	moveq #0,%d0
	move.b (%a3),%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
.L23:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a0
	tst.l 12(%sp)
	jeq .L33
	move.l %d0,%a1
	move.l 12(%sp),%d1
	add.l %a0,%d1
.L34:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d1
	jne .L34
.L33:
	move.l %d0,%a0
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
	move.l 16(%sp),%a0
	subq.l #1,%a0
	lea (%a1,%a0.l),%a0
	subq.l #1,%a1
.L37:
	cmp.l %a0,%a1
	jeq .L40
	move.l %a0,%d0
	moveq #0,%d1
	move.b (%a0),%d1
	subq.l #1,%a0
	cmp.l %d1,%d2
	jne .L37
	jra .L36
.L40:
	moveq #0,%d0
.L36:
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
	tst.l 16(%sp)
	jeq .L42
	move.l 16(%sp),%d1
	add.l %d0,%d1
	move.l %d0,%a0
.L43:
	move.b %d2,(%a0)+
	cmp.l %d1,%a0
	jne .L43
.L42:
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
	jeq .L46
.L47:
	addq.l #1,%a0
	addq.l #1,%a1
	move.b (%a0),%d0
	move.b %d0,(%a1)
	jne .L47
.L46:
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
	jeq .L55
.L50:
	and.l #255,%d1
	cmp.l %d1,%d0
	jeq .L56
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L50
	move.l %a0,%d0
	jra .L49
.L55:
	move.l %a0,%d0
	jra .L49
.L56:
	move.l %a0,%d0
.L49:
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
.L59:
	move.l %a1,%d0
	move.b (%a1)+,%d2
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	cmp.l %a0,%d3
	jeq .L57
	tst.b %d2
	jne .L59
	moveq #0,%d0
.L57:
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
	jne .L63
.L62:
	tst.b %d0
	jeq .L63
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d0
	move.b (%a0),%d1
	cmp.b %d0,%d1
	jeq .L62
.L63:
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
	jeq .L69
	move.l %a1,%a0
.L68:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L68
.L67:
	move.l %a0,%d0
	sub.l %a1,%d0
	rts
.L69:
	move.l %a1,%a0
	jra .L67
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a2
	move.l 20(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	tst.l %d0
	jeq .L76
	move.b (%a0),%d0
	jeq .L73
	move.l %a2,%a1
	move.l %a0,%d2
	add.l %d1,%d2
.L74:
	move.l %a1,%a2
	move.b (%a1)+,%d1
	jeq .L73
	cmp.l %d2,%a0
	jeq .L73
	cmp.b %d1,%d0
	jne .L73
	addq.l #1,%a0
	move.l %a1,%a2
	move.b (%a0),%d0
	jne .L74
.L73:
	and.l #255,%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
.L71:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L76:
	moveq #0,%d0
	jra .L71
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	move.l 4(%sp),%a0
	move.l 8(%sp),%a1
	moveq #1,%d0
	cmp.l 12(%sp),%d0
	jge .L77
	moveq #-2,%d0
	and.l 12(%sp),%d0
	add.l %a0,%d0
.L79:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%d0
	jne .L79
.L77:
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
	jeq .L85
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	and.l #255,%d0
.L83:
	rts
.L85:
	moveq #1,%d0
	jra .L83
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L88
	moveq #127,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	and.l #255,%d0
.L86:
	rts
.L88:
	moveq #1,%d0
	jra .L86
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
	jeq .L95
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
.L93:
	rts
.L95:
	moveq #1,%d0
	jra .L93
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
	jcc .L99
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcc .L100
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L101
	add.l #-65529,%a0
	moveq #2,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
	jra .L97
.L99:
	moveq #1,%d0
.L97:
	rts
.L100:
	moveq #1,%d0
	jra .L97
.L101:
	moveq #1,%d0
	jra .L97
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
	jls .L110
	cmp.l #8231,%d0
	jls .L106
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L107
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L108
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L109
	and.l #65534,%d0
	cmp.l #65534,%d0
	sne %d0
	neg.b %d0
	and.l #255,%d0
	jra .L103
.L110:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	neg.b %d0
	and.l #255,%d0
.L103:
	rts
.L106:
	moveq #1,%d0
	jra .L103
.L107:
	moveq #1,%d0
	jra .L103
.L108:
	moveq #1,%d0
	jra .L103
.L109:
	moveq #0,%d0
	jra .L103
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	move.w #-48,%a0
	add.l 4(%sp),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L113
	moveq #32,%d0
	or.l 4(%sp),%d0
	move.w #-97,%a0
	add.l %d0,%a0
	moveq #5,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
.L111:
	rts
.L113:
	moveq #1,%d0
	jra .L111
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
	jne .L118
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L119
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L122
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
.L115:
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
.L118:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L115
.L119:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L115
.L122:
	moveq #0,%d0
	moveq #0,%d1
	jra .L115
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
	jne .L126
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L127
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L130
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
.L123:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L126:
	move.l %d2,%d0
	jra .L123
.L127:
	move.l %d3,%d0
	jra .L123
.L130:
	moveq #0,%d0
	jra .L123
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
	jne .L137
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L138
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L133
	tst.l %d0
	jeq .L139
	move.l %d4,%d1
	move.l %d5,%d0
.L131:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L133:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L134
	clr.b 27(%sp)
.L134:
	tst.b 27(%sp)
	jeq .L135
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L131
.L135:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L131
.L137:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L131
.L138:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L131
.L139:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L131
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
	jne .L146
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L147
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L142
	tst.l %d0
	jeq .L148
	move.l %d3,%d0
	jra .L140
.L142:
	moveq #1,%d4
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L143
	clr.b %d4
.L143:
	tst.b %d4
	jeq .L145
	move.l %d3,%d2
.L145:
	move.l %d2,%d0
.L140:
	movem.l (%sp)+,#28
	rts
.L146:
	move.l %d3,%d0
	jra .L140
.L147:
	move.l %d2,%d0
	jra .L140
.L148:
	move.l %d2,%d0
	jra .L140
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
	move.l %a4,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L155
	tst.l %d0
	jeq .L156
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
.L156:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L149
.L164:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L149
.L165:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L149
.L155:
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
	jlt .L157
	clr.b %d2
.L157:
	tst.b %d2
	jeq .L158
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L159:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L149:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L158:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L159
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
	jne .L172
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L173
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L168
	tst.l %d0
	jeq .L174
	move.l %d2,%d1
	move.l %d3,%d0
.L166:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L168:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L169
	clr.b 27(%sp)
.L169:
	tst.b 27(%sp)
	jeq .L170
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L166
.L170:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L166
.L172:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L166
.L173:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L166
.L174:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L166
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
	jne .L181
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L182
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L177
	tst.l %d0
	jeq .L183
	move.l %d3,%d0
	jra .L175
.L177:
	moveq #1,%d4
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L178
	clr.b %d4
.L178:
	tst.b %d4
	jeq .L180
	move.l %d3,%d2
.L180:
	move.l %d2,%d0
.L175:
	movem.l (%sp)+,#28
	rts
.L181:
	move.l %d2,%d0
	jra .L175
.L182:
	move.l %d3,%d0
	jra .L175
.L183:
	move.l %d2,%d0
	jra .L175
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
	jne .L199
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L200
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %a4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L190
	tst.l %d0
	jeq .L191
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
.L191:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L184
.L199:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L184
.L200:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L184
.L190:
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
	jlt .L192
	clr.b %d2
.L192:
	tst.b %d2
	jeq .L193
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L194:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L184:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L193:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
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
	jeq .L204
	lea (s.0),%a0
	lea digits,%a1
.L203:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L203
.L202:
	clr.b (%a0)
	move.l #s.0,%d0
	move.l %d0,%a0
	rts
.L204:
	lea (s.0),%a0
	jra .L202
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
	jeq .L211
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L208
	move.l %a0,4(%a1)
.L208:
	rts
.L211:
	clr.l 4(%a0)
	clr.l (%a0)
	jra .L208
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L213
	move.l 4(%a0),4(%a1)
.L213:
	move.l 4(%a0),%a1
	cmp.w #0,%a1
	jeq .L212
	move.l (%a0),(%a1)
.L212:
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
	jeq .L216
	move.l %a3,%d2
	moveq #0,%d3
.L218:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.l %d0
	jeq .L215
	addq.l #1,%d3
	add.l %d6,%d2
	cmp.l %d5,%d3
	jne .L218
.L216:
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
.L215:
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
	jeq .L223
	move.l 36(%sp),%d2
	moveq #0,%d3
.L222:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L220
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d5,%d3
	jne .L222
	moveq #0,%d4
.L220:
	move.l %d4,%a0
	move.l %d4,%d0
	movem.l (%sp)+,#1276
	rts
.L223:
	moveq #0,%d4
	jra .L220
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	jmi .L227
.L226:
	rts
.L227:
	neg.l %d0
	jra .L226
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #8248,-(%sp)
	move.l 20(%sp),%a3
	lea isspace,%a4
.L229:
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
	jne .L229
	cmp.b #43,%d2
	jeq .L235
	cmp.b #45,%d2
	jne .L236
	moveq #1,%d2
.L230:
	addq.l #1,%a2
.L231:
	move.b (%a2),%d0
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-48,%a1),%a1
	moveq #9,%d1
	cmp.l %a1,%d1
	jcs .L233
.L232:
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
	jcc .L232
.L233:
	tst.l %d2
	jne .L228
	move.l %a0,%d0
	neg.l %d0
	move.l %d0,%a0
.L228:
	move.l %a0,%d0
	movem.l (%sp)+,#7172
	rts
.L235:
	move.l %d0,%d2
	jra .L230
.L236:
	move.l %d0,%d2
	jra .L231
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	movem.l #8248,-(%sp)
	move.l 20(%sp),%a3
	lea isspace,%a4
.L241:
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
	jne .L241
	cmp.b #43,%d2
	jeq .L247
	cmp.b #45,%d2
	jne .L248
	moveq #1,%d2
.L242:
	addq.l #1,%a2
.L243:
	move.b (%a2),%d0
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-48,%a1),%a1
	moveq #9,%d1
	cmp.l %a1,%d1
	jcs .L245
.L244:
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
	jcc .L244
.L245:
	tst.l %d2
	jne .L240
	move.l %a0,%d0
	neg.l %d0
	move.l %d0,%a0
.L240:
	move.l %a0,%d0
	movem.l (%sp)+,#7172
	rts
.L247:
	move.l %d0,%d2
	jra .L242
.L248:
	move.l %d0,%d2
	jra .L243
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #16184,-(%sp)
	move.l 40(%sp),%a3
	lea isspace,%a4
.L253:
	move.l %a3,%a2
	move.b (%a3)+,%d2
	move.b %d2,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L253
	cmp.b #43,%d2
	jeq .L254
	cmp.b #45,%d2
	jne .L255
	moveq #1,%d0
.L254:
	addq.l #1,%a2
.L255:
	move.b (%a2),%d2
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	clr.l %d4
	clr.l %d5
	moveq #9,%d1
	cmp.l %a0,%d1
	jcs .L257
.L256:
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
	jcc .L256
.L257:
	tst.l %d0
	jne .L252
	neg.l %d5
	negx.l %d4
.L252:
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
	move.l 44(%sp),%d3
	move.l 48(%sp),%d6
	move.l 52(%sp),%a2
	tst.l %d3
	jeq .L267
	lea __mulsi3,%a3
	jra .L266
.L268:
	move.l %d4,%d3
.L265:
	tst.l %d3
	jeq .L270
.L266:
	move.l %d3,%d4
	lsr.l #1,%d4
	move.l %d6,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	move.l %d5,%d2
	add.l %d0,%d2
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L268
	jle .L263
	move.l %d2,%d5
	add.l %d6,%d5
	subq.l #1,%d3
	sub.l %d4,%d3
	jra .L265
.L270:
	moveq #0,%d2
.L263:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l (%sp)+,#3324
	rts
.L267:
	moveq #0,%d2
	jra .L263
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
	jeq .L275
	lea __mulsi3,%a3
	jra .L274
.L273:
	asr.l #1,%d2
	jeq .L277
.L274:
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
	jeq .L271
	jle .L273
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	jra .L273
.L277:
	moveq #0,%d3
.L271:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
.L275:
	moveq #0,%d3
	jra .L271
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
	jlt .L281
.L280:
	rts
.L281:
	neg.l %d1
	negx.l %d0
	jra .L280
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
	jmi .L285
.L284:
	rts
.L285:
	neg.l %d0
	jra .L284
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
	jlt .L289
.L288:
	rts
.L289:
	neg.l %d1
	negx.l %d0
	jra .L288
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
	move.l 4(%sp),%a0
	move.l 8(%sp),%d1
	move.l (%a0),%d0
	jeq .L291
.L292:
	cmp.l %d1,%d0
	jeq .L297
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L292
	moveq #0,%d0
	jra .L291
.L297:
	move.l %a0,%d0
.L291:
	move.l %d0,%a0
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
	jne .L300
.L299:
	tst.l %d0
	jeq .L300
	tst.l %d1
	jeq .L300
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L299
.L300:
	cmp.l %d0,%d1
	jgt .L303
	slt %d0
	neg.b %d0
	and.l #255,%d0
.L298:
	rts
.L303:
	moveq #-1,%d0
	jra .L298
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l %d0,%a0
.L306:
	move.l (%a1)+,%d1
	move.l %d1,(%a0)+
	jne .L306
	move.l %d0,%a0
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%a1
	tst.l (%a1)
	jeq .L311
	move.l %a1,%a0
.L310:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L310
.L309:
	move.l %a0,%d0
	sub.l %a1,%d0
	asr.l #2,%d0
	rts
.L311:
	move.l %a1,%a0
	jra .L309
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d0
	jeq .L319
	move.l 12(%sp),%a1
	move.l 16(%sp),%a0
.L315:
	move.l %a0,%a2
	move.l %a1,%a3
	move.l (%a1)+,%d1
	cmp.l (%a0)+,%d1
	jne .L316
	tst.l %d1
	jeq .L316
	subq.l #1,%d0
	jne .L315
	moveq #0,%d0
	jra .L313
.L318:
	cmp.l %d0,%d1
	slt %d0
	neg.b %d0
	and.l #255,%d0
.L313:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L319:
	moveq #0,%d0
	jra .L313
.L316:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jle .L318
	moveq #-1,%d0
	jra .L313
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	jeq .L325
	move.l 4(%sp),%a0
.L323:
	move.l %a0,%d0
	cmp.l (%a0)+,%a1
	jeq .L321
	subq.l #1,%d1
	jne .L323
	moveq #0,%d0
.L321:
	move.l %d0,%a0
	rts
.L325:
	moveq #0,%d0
	jra .L321
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d0
	jeq .L333
	move.l 12(%sp),%a1
	move.l 16(%sp),%a0
.L329:
	move.l %a0,%a2
	move.l %a1,%a3
	cmpm.l (%a0)+,(%a1)+
	jne .L336
	subq.l #1,%d0
	jne .L329
	moveq #0,%d0
.L327:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L332:
	cmp.l %d0,%d1
	slt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L327
.L333:
	moveq #0,%d0
	jra .L327
.L336:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jle .L332
	moveq #-1,%d0
	jra .L327
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a0
	move.l 12(%sp),%a1
	move.l %a1,%d1
	subq.l #1,%d1
	cmp.w #0,%a1
	jeq .L338
	move.l %d0,%a1
.L339:
	move.l (%a0)+,(%a1)+
	dbra %d1,.L339
	clr.w %d1
	subq.l #1,%d1
	jcc .L339
.L338:
	move.l %d0,%a0
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
	jeq .L342
	move.l %d0,%a2
	move.l %a0,%d1
	move.l %d0,%d3
	sub.l %a0,%d3
	move.l %d2,%a1
	add.l %d2,%a1
	add.l %a1,%a1
	cmp.l %d3,%a1
	jhi .L343
	move.l %d2,%d1
	subq.l #1,%d1
	tst.l %d2
	jeq .L342
.L344:
	move.l (%a0)+,(%a2)+
	dbra %d1,.L344
	clr.w %d1
	subq.l #1,%d1
	jcc .L344
	jra .L342
.L343:
	tst.l %d2
	jeq .L342
	add.l %a1,%a0
	add.l %d0,%a1
.L345:
	move.l -(%a0),-(%a1)
	cmp.l %d1,%a0
	jne .L345
.L342:
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
	jeq .L350
	move.l %d0,%a0
.L351:
	move.l %a1,(%a0)+
	dbra %d1,.L351
	clr.w %d1
	subq.l #1,%d1
	jcc .L351
.L350:
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
	jls .L354
	lea (%a0,%d0.l),%a1
	tst.l %d0
	jeq .L353
	lea -1(%a2,%d0.l),%a2
.L356:
	move.b -(%a1),(%a2)
	subq.l #1,%a2
	cmp.l %a0,%a1
	jne .L356
.L353:
	move.l (%sp)+,%a2
	rts
.L354:
	cmp.l %a0,%a2
	jeq .L353
	tst.l %d0
	jeq .L353
	add.l %a0,%d0
.L357:
	move.b (%a0)+,(%a2)+
	cmp.l %a0,%d0
	jne .L357
	jra .L353
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
	jlt .L361
	move.l %d3,%d0
	move.l %a0,%d1
	lsl.l %d1,%d0
	moveq #0,%d5
.L362:
	move.l %d2,%d1
	neg.l %d1
	moveq #63,%d6
	and.l %d1,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L363
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
.L364:
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L361:
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
	jra .L362
.L363:
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
	jra .L364
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
	jlt .L366
	move.l %d3,%d1
	move.l %a0,%d0
	lsr.l %d0,%d1
	moveq #0,%d5
.L367:
	move.l %d2,%d0
	neg.l %d0
	moveq #63,%d6
	and.l %d0,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L368
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
.L369:
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L366:
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
	jra .L367
.L368:
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
	jra .L369
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
	or.l %d1,%d2
	or.l %d2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
	movem.l #16128,-(%sp)
	move.l 28(%sp),%d2
	move.l 32(%sp),%d3
	move.l %d2,%d0
	clr.w %d0
	swap %d0
	lsr.w #8,%d0
	move.l %d0,%a0
	move.l %d2,%d5
	lsr.l #8,%d5
	and.l #65280,%d5
	move.l %d2,%d4
	lsl.l #8,%d4
	and.l #16711680,%d4
	move.l %d2,%d0
	move.l %d3,%d1
	move.b %d2,%d1
	ror.l #8,%d1
	move.l %d1,%d7
	and.l #-16777216,%d7
	move.l %d2,%d1
	move.l %d3,%d2
	rol.l #8,%d1
	rol.l #8,%d2
	move.b %d2,%d1
	move.l %d3,%d2
	lsr.l #8,%d2
	move.l %d3,%d6
	lsl.w #8,%d6
	swap %d6
	clr.w %d6
	and.l #65280,%d2
	move.l %d3,%d0
	lsl.l #8,%d0
	and.l #16711680,%d0
	move.l %a0,%d3
	or.l %d3,%d5
	or.l %d5,%d4
	move.l %d6,%d3
	or.b %d1,%d3
	or.l %d3,%d2
	or.l %d2,%d0
	move.l %d7,%d1
	or.l %d4,%d1
	movem.l (%sp)+,#252
	rts
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	moveq #0,%d0
.L384:
	btst %d0,%d1
	jne .L386
	addq.l #1,%d0
	moveq #32,%d2
	cmp.l %d0,%d2
	jne .L384
	moveq #0,%d0
	jra .L381
.L386:
	addq.l #1,%d0
.L381:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L390
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L387
	moveq #1,%d0
.L389:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L389
.L387:
	rts
.L390:
	move.l %d1,%d0
	jra .L387
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
	jlt .L395
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L396
.L394:
	moveq #0,%d0
	move.b %d2,%d0
.L392:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L396:
	clr.b %d2
	jra .L394
.L395:
	moveq #1,%d0
	jra .L392
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
	jlt .L400
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L401
.L399:
	moveq #0,%d0
	move.b %d2,%d0
.L397:
	movem.l (%sp)+,#52
	rts
.L401:
	clr.b %d2
	jra .L399
.L400:
	moveq #1,%d0
	jra .L397
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
	jlt .L405
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
	jle .L406
.L404:
	moveq #0,%d0
	move.b %d2,%d0
.L402:
	movem.l (%sp)+,#60
	rts
.L406:
	clr.b %d2
	jra .L404
.L405:
	moveq #1,%d0
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
	jne .L409
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d4,-(%sp)
	move.l %d0,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L409
	tst.l %d2
	jlt .L416
	move.l #0x40000000,%d3
.L411:
	lea __mulsf3,%a2
	jra .L413
.L416:
	move.l #0x3f000000,%d3
	jra .L411
.L412:
	move.l %d2,%d2
	jpl .L417
	addq.l #1,%d2
.L417:
	asr.l #1,%d2
	jeq .L409
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L413:
	btst #0,%d2
	jeq .L412
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L412
.L409:
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
	jne .L419
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
	jeq .L419
	tst.l %d6
	jlt .L426
	move.l #1073741824,%a2
	sub.l %a3,%a3
.L421:
	lea __muldf3,%a5
	jra .L423
.L426:
	move.l #1071644672,%a2
	sub.l %a3,%a3
	jra .L421
.L422:
	move.l %d6,%d6
	jpl .L427
	addq.l #1,%d6
.L427:
	asr.l #1,%d6
	jeq .L419
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
.L423:
	btst #0,%d6
	jeq .L422
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
	jra .L422
.L419:
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
	jne .L429
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	lea (60,%sp),%a1
	jsr __addxf3
	lea (24,%sp),%sp
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr __nexf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L429
	tst.l %d2
	jlt .L436
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
.L431:
	lea __mulxf3,%a2
	jra .L433
.L436:
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
	jra .L431
.L432:
	move.l %d2,%d2
	jpl .L437
	addq.l #1,%d2
.L437:
	asr.l #1,%d2
	jeq .L429
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
.L433:
	btst #0,%d2
	jeq .L432
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
	jra .L432
.L429:
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
	tst.l 20(%sp)
	jeq .L439
	move.l 20(%sp),%d2
	add.l %a0,%d2
	move.l %d0,%a1
.L440:
	move.b (%a1)+,%d1
	move.b (%a0)+,%d3
	eor.b %d3,%d1
	move.b %d1,-1(%a1)
	cmp.l %d2,%a0
	jne .L440
.L439:
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
	move.l %d3,%a2
	add.l %d0,%a2
	tst.l %d2
	jeq .L443
	move.l 20(%sp),%a1
	move.l %a2,%a0
.L444:
	move.b (%a1)+,%d0
	move.b %d0,(%a0)+
	jeq .L446
	move.l %a0,%a2
	subq.l #1,%d2
	jne .L444
.L443:
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
	tst.l %d1
	jeq .L454
.L448:
	tst.b (%a0,%d0.l)
	jne .L455
.L447:
	rts
.L454:
	move.l %d1,%d0
	jra .L447
.L455:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jne .L448
	move.l %d1,%d0
	jra .L447
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
	jeq .L463
.L457:
	move.l %a1,%a0
.L460:
	move.b (%a0)+,%d1
	jeq .L464
	cmp.b %d1,%d2
	jne .L460
.L458:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
.L463:
	moveq #0,%d0
	jra .L458
.L464:
	addq.l #1,%d0
	move.l %d0,%a0
	move.b (%a0),%d2
	jne .L457
	moveq #0,%d0
	jra .L458
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	movem.l #14336,-(%sp)
	move.l 20(%sp),%d4
	move.l 16(%sp),%a1
	moveq #0,%d0
	jra .L467
.L466:
	tst.b %d2
	jeq .L470
.L467:
	move.l %a1,%d3
	move.b (%a1)+,%d2
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	cmp.l %a0,%d4
	jne .L466
	move.l %d3,%d0
	jra .L466
.L470:
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
	jeq .L471
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a3
	lea strchr,%a4
	lea strncmp,%a5
.L473:
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %a0,%d2
	jeq .L471
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L471
	addq.l #1,%d2
	jra .L473
.L471:
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
	jlt .L486
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L480
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L479
.L480:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#60
	rts
.L486:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L480
.L479:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d4
	move.l %d3,%d5
	move.l %d4,%d2
	move.l %d5,%d3
	jra .L480
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	movem.l #15416,-(%sp)
	move.l 32(%sp),%a2
	move.l 44(%sp),%d0
	move.l 36(%sp),%d2
	sub.l %d0,%d2
	add.l %a2,%d2
	tst.l %d0
	jeq .L491
	cmp.l 36(%sp),%d0
	jhi .L492
	cmp.l %a2,%d2
	jcs .L493
	move.l 40(%sp),%a3
	move.b (%a3)+,%d4
	move.l %d0,%d5
	subq.l #1,%d5
	lea memcmp,%a4
	jra .L490
.L489:
	cmp.l %d2,%a2
	jhi .L495
.L490:
	move.l %a2,%d3
	cmp.b (%a2)+,%d4
	jne .L489
	move.l %d5,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L489
	jra .L487
.L495:
	moveq #0,%d3
.L487:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#7228
	rts
.L491:
	move.l %a2,%d3
	jra .L487
.L492:
	moveq #0,%d3
	jra .L487
.L493:
	moveq #0,%d3
	jra .L487
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
	jlt .L521
	moveq #0,%d7
.L498:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L518
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
	lea __gedf2,%a4
.L502:
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
	jge .L502
.L503:
	move.l 60(%sp),%a0
	move.l %d6,(%a0)
	tst.l %d7
	jeq .L507
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,40(%sp)
	move.l %d3,44(%sp)
	move.l 40(%sp),%d2
	move.l 44(%sp),%d3
.L507:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#15612
	addq.l #8,%sp
	rts
.L521:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	moveq #1,%d7
	jra .L498
.L518:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L519
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L520
	moveq #0,%d6
	lea __adddf3,%a5
	move.l #1071644672,%d4
	clr.l %d5
	lea __ltdf2,%a4
.L506:
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
	jlt .L506
	jra .L503
.L519:
	moveq #0,%d6
	jra .L503
.L520:
	moveq #0,%d6
	jra .L503
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
	jeq .L525
	clr.l 32(%sp)
	clr.l 36(%sp)
.L524:
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
	jne .L524
.L522:
	move.l 32(%sp),%d0
	move.l 36(%sp),%d1
	movem.l (%sp)+,#252
	lea (16,%sp),%sp
	rts
.L525:
	clr.l 32(%sp)
	clr.l 36(%sp)
	jra .L522
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
	jls .L535
	moveq #32,%d0
	moveq #1,%d2
.L528:
	tst.l %d1
	jlt .L535
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L530
	subq.l #1,%d0
	jne .L528
.L531:
	tst.l 16(%sp)
	jne .L540
.L527:
	move.l (%sp)+,%d2
	rts
.L533:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L531
.L534:
	cmp.l %a0,%d1
	jhi .L533
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L533
.L530:
	tst.l %d2
	jeq .L541
.L535:
	moveq #0,%d0
	jra .L534
.L541:
	move.l %d2,%d0
	jra .L531
.L540:
	move.l %a0,%d0
	jra .L527
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
	jeq .L544
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
.L542:
	move.l (%sp)+,%d2
	rts
.L544:
	moveq #7,%d0
	jra .L542
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
	move.l %d0,%d5
	eor.l %d2,%d5
	move.l %d1,%d4
	eor.l %d2,%d4
	move.l %d0,%d6
	move.l %d1,%d7
	sub.l %d3,%d7
	subx.l %d2,%d6
	jeq .L547
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
.L545:
	movem.l (%sp)+,#252
	rts
.L547:
	moveq #63,%d0
	jra .L545
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
	jeq .L551
	moveq #0,%d0
.L550:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L550
.L548:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L551:
	move.l %d2,%d0
	jra .L548
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
	jhi .L554
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jhi .L554
	tst.l %d0
	jeq .L553
	move.l %d4,%a0
	add.l %d0,%a0
.L560:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L560
	jra .L553
.L554:
	tst.l %d2
	jeq .L557
	move.l %d3,%a0
	move.l %d4,%a1
	lsl.l #3,%d2
	add.l %d3,%d2
.L558:
	move.l (%a0)+,%d5
	move.l (%a0)+,%d6
	move.l %d5,(%a1)+
	move.l %d6,(%a1)+
	cmp.l %a0,%d2
	jne .L558
.L557:
	cmp.l %d0,%d1
	jcc .L553
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L559:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L559
.L553:
	movem.l (%sp)+,#124
	rts
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
	jhi .L565
	lea (%a3,%d1.l),%a1
	cmp.l %a1,%a2
	jhi .L565
	add.l %d1,%a2
	tst.l %d1
	jeq .L564
.L570:
	move.b -(%a1),-(%a2)
	cmp.l %a1,%a3
	jne .L570
	jra .L564
.L565:
	tst.l %d0
	jeq .L568
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
.L569:
	move.w (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L569
.L568:
	btst #0,%d1
	jeq .L564
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L564:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
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
	jhi .L574
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jhi .L574
	tst.l %d0
	jeq .L573
	move.l %d4,%a0
	add.l %d0,%a0
.L580:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L580
	jra .L573
.L574:
	tst.l %d2
	jeq .L577
	move.l %d3,%a0
	move.l %d4,%a2
	add.l %d2,%d2
	add.l %d2,%d2
	lea (%a0,%d2.l),%a1
.L578:
	move.l (%a0)+,(%a2)+
	cmp.l %a0,%a1
	jne .L578
.L577:
	cmp.l %d0,%d1
	jcc .L573
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L579:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L579
.L573:
	movem.l (%sp)+,#1052
	rts
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
.L592:
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L590
	addq.l #1,%d0
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L592
.L590:
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
.L596:
	btst %d0,%d1
	jne .L594
	addq.l #1,%d0
	moveq #16,%d2
	cmp.l %d0,%d2
	jne .L596
.L594:
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
	jge .L604
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L598:
	move.l (%sp)+,%d2
	rts
.L604:
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L598
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
.L606:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L606
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
.L609:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L609
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
	jeq .L614
	moveq #0,%d0
.L613:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L613
.L611:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L614:
	move.l %d2,%d0
	jra .L611
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
	jeq .L619
	tst.l %d3
	jeq .L620
	moveq #0,%d0
.L618:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L618
.L616:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L619:
	move.l %d2,%d0
	jra .L616
.L620:
	move.l %d3,%d0
	jra .L616
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
	jls .L630
	moveq #32,%d0
	moveq #1,%d2
.L623:
	tst.l %d1
	jlt .L630
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L625
	subq.l #1,%d0
	jne .L623
.L626:
	tst.l 16(%sp)
	jne .L635
.L622:
	move.l (%sp)+,%d2
	rts
.L628:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L626
.L629:
	cmp.l %a0,%d1
	jhi .L628
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L628
.L625:
	tst.l %d2
	jeq .L636
.L630:
	moveq #0,%d0
	jra .L629
.L636:
	move.l %d2,%d0
	jra .L626
.L635:
	move.l %a0,%d0
	jra .L622
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
	jlt .L640
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L641
.L639:
	moveq #0,%d0
	move.b %d2,%d0
.L637:
	movem.l (%sp)+,#28
	rts
.L641:
	clr.b %d2
	jra .L639
.L640:
	moveq #-1,%d0
	jra .L637
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
	jlt .L645
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L646
.L644:
	moveq #0,%d0
	move.b %d6,%d0
.L642:
	movem.l (%sp)+,#124
	rts
.L646:
	clr.b %d6
	jra .L644
.L645:
	moveq #-1,%d0
	jra .L642
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
	jmi .L657
	sub.l %a0,%a0
	tst.l %d2
	jeq .L658
.L654:
	moveq #32,%d4
	moveq #0,%d0
.L652:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L651
	subq.b #1,%d4
	jne .L652
.L651:
	cmp.w #0,%a0
	jeq .L649
	neg.l %d0
.L649:
	movem.l (%sp)+,#28
	rts
.L657:
	neg.l %d2
	move.w #1,%a0
	jra .L654
.L658:
	move.l %d2,%d0
	jra .L649
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	tst.l %d0
	jlt .L667
	tst.l %d1
	jlt .L668
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L659
.L667:
	neg.l %d0
	tst.l %d1
	jlt .L669
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
.L663:
	neg.l %d0
.L659:
	rts
.L668:
	clr.l -(%sp)
	neg.l %d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L663
.L669:
	clr.l -(%sp)
	neg.l %d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L659
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	tst.l %d0
	jlt .L675
	move.l %d1,%d2
	jmi .L676
.L673:
	pea 1.w
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L670
.L675:
	neg.l %d0
	move.l %d1,%d2
	jmi .L677
.L672:
	pea 1.w
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	neg.l %d0
.L670:
	move.l (%sp)+,%d2
	rts
.L677:
	neg.l %d2
	jra .L672
.L676:
	neg.l %d2
	jra .L673
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
	jcc .L686
	moveq #16,%d0
	moveq #1,%d2
.L679:
	tst.w %d1
	jlt .L686
	add.w %d1,%d1
	add.w %d2,%d2
	cmp.w %a0,%d1
	jcc .L681
	subq.l #1,%d0
	jne .L679
	clr.w %d0
.L682:
	tst.l 16(%sp)
	jne .L692
.L678:
	move.l (%sp)+,%d2
	rts
.L684:
	lsr.w #1,%d2
	lsr.w #1,%d1
	tst.w %d2
	jeq .L682
.L685:
	cmp.w %a0,%d1
	jhi .L684
	sub.w %d1,%a0
	or.w %d2,%d0
	jra .L684
.L681:
	move.w %d2,%d0
	jeq .L682
.L686:
	clr.w %d0
	jra .L685
.L692:
	move.w %a0,%d0
	jra .L678
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
	jls .L701
	moveq #32,%d0
	moveq #1,%d2
.L694:
	tst.l %d1
	jlt .L701
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L696
	subq.l #1,%d0
	jne .L694
.L697:
	tst.l 16(%sp)
	jne .L706
.L693:
	move.l (%sp)+,%d2
	rts
.L699:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L697
.L700:
	cmp.l %a0,%d1
	jhi .L699
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L699
.L696:
	tst.l %d2
	jeq .L707
.L701:
	moveq #0,%d0
	jra .L700
.L707:
	move.l %d2,%d0
	jra .L697
.L706:
	move.l %a0,%d0
	jra .L693
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
	jeq .L709
	moveq #0,%d1
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
.L711:
	movem.l (%sp)+,#28
	rts
.L709:
	tst.l %d2
	jeq .L712
	move.l %d3,%d1
	lsl.l %d2,%d1
	lsl.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsr.l %d4,%d3
	or.l %d3,%d0
	jra .L711
.L712:
	move.l %d3,%d1
	jra .L711
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
	jeq .L714
	move.l %d1,%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
.L716:
	movem.l (%sp)+,#28
	rts
.L714:
	tst.l %d2
	jeq .L717
	move.l %d1,%d0
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L716
.L717:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L716
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movem.l #16128,-(%sp)
	move.l 28(%sp),%d2
	move.l 32(%sp),%d3
	move.l %d2,%d0
	clr.w %d0
	swap %d0
	lsr.w #8,%d0
	move.l %d0,%a0
	move.l %d2,%d5
	lsr.l #8,%d5
	and.l #65280,%d5
	move.l %d2,%d4
	lsl.l #8,%d4
	and.l #16711680,%d4
	move.l %d2,%d0
	move.l %d3,%d1
	move.b %d2,%d1
	ror.l #8,%d1
	move.l %d1,%d7
	and.l #-16777216,%d7
	move.l %d2,%d1
	move.l %d3,%d2
	rol.l #8,%d1
	rol.l #8,%d2
	move.b %d2,%d1
	move.l %d3,%d2
	lsr.l #8,%d2
	move.l %d3,%d6
	lsl.w #8,%d6
	swap %d6
	clr.w %d6
	and.l #65280,%d2
	move.l %d3,%d0
	lsl.l #8,%d0
	and.l #16711680,%d0
	move.l %a0,%d3
	or.l %d3,%d5
	or.l %d5,%d4
	move.l %d6,%d3
	or.b %d1,%d3
	or.l %d3,%d2
	or.l %d2,%d0
	move.l %d7,%d1
	or.l %d4,%d1
	movem.l (%sp)+,#252
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
	or.l %d1,%d2
	or.l %d2,%d0
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
	add.l %d1,%d0
	moveq #2,%d1
	sub.l %d2,%d1
	btst #1,%d2
	jeq .L722
	moveq #0,%d1
.L722:
	add.l %d1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	move.l 8(%sp),%d1
	move.l 16(%sp),%d0
	move.l 4(%sp),%a0
	move.l 12(%sp),%a1
	cmp.l %a1,%a0
	jlt .L725
	jgt .L726
	cmp.l %d1,%d0
	jhi .L727
	jcs .L728
	moveq #1,%d0
	jra .L723
.L725:
	moveq #0,%d0
.L723:
	rts
.L726:
	moveq #2,%d0
	jra .L723
.L727:
	moveq #0,%d0
	jra .L723
.L728:
	moveq #2,%d0
	jra .L723
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
	neg.b %d2
	and.l #255,%d2
	lsl.l #4,%d2
	move.l %d0,%d1
	lsr.l %d2,%d1
	tst.b %d1
	seq %d0
	neg.b %d0
	and.l #255,%d0
	lsl.l #3,%d0
	lsr.l %d0,%d1
	move.l %d0,%a0
	add.l %d2,%a0
	moveq #15,%d0
	and.l %d1,%d0
	seq %d0
	neg.b %d0
	and.l #255,%d0
	add.l %d0,%d0
	add.l %d0,%d0
	lsr.l %d0,%d1
	add.l %a0,%d0
	moveq #3,%d2
	and.l %d1,%d2
	seq %d2
	neg.b %d2
	and.l #255,%d2
	add.l %d2,%d2
	lsr.l %d2,%d1
	moveq #3,%d3
	and.l %d3,%d1
	add.l %d0,%d2
	move.l %d1,%d0
	not.l %d0
	moveq #1,%d3
	and.l %d3,%d0
	lsr.l #1,%d1
	moveq #2,%d3
	sub.l %d1,%d3
	neg.l %d0
	and.l %d3,%d0
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
	jeq .L732
	moveq #0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	lsr.l %d2,%d1
.L734:
	movem.l (%sp)+,#28
	rts
.L732:
	tst.l %d2
	jeq .L735
	move.l %d1,%d0
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L734
.L735:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L734
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d4
	move.l 36(%sp),%d3
	move.l %d4,%d5
	and.l #65535,%d5
	move.l %d3,%d6
	and.l #65535,%d6
	lea __mulsi3,%a2
	move.l %d6,-(%sp)
	move.l %d5,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d2
	clr.w %d2
	swap %d2
	move.l %d0,%d7
	and.l #65535,%d7
	clr.w %d4
	swap %d4
	move.l %d4,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d2
	move.l %d2,%d6
	clr.w %d6
	swap %d6
	and.l #65535,%d2
	clr.w %d3
	swap %d3
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d2
	move.l %d2,%d5
	swap %d5
	clr.w %d5
	add.l %d7,%d5
	clr.w %d2
	swap %d2
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d6
	move.l %d2,%d0
	add.l %d6,%d0
	move.l %d5,%d1
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
	move.l %d0,%d2
	and.l #252645135,%d2
	move.l %d1,%d0
	and.l #252645135,%d0
	add.l %d2,%d0
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
	jra .L746
.L744:
	move.l %d4,%d4
	jpl .L749
	addq.l #1,%d4
.L749:
	asr.l #1,%d4
	jeq .L745
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
.L746:
	btst #0,%d4
	jeq .L744
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
	jra .L744
.L745:
	cmp.w #0,%a6
	jlt .L748
.L743:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#27868
	lea (16,%sp),%sp
	rts
.L748:
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
	jra .L743
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
	jlt .L755
.L750:
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
.L755:
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L750
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	move.l 8(%sp),%d1
	move.l 16(%sp),%d0
	move.l 4(%sp),%a0
	move.l 12(%sp),%a1
	cmp.l %a1,%a0
	jcs .L759
	jhi .L760
	cmp.l %d1,%d0
	jhi .L761
	jcs .L762
	moveq #1,%d0
	jra .L757
.L759:
	moveq #0,%d0
.L757:
	rts
.L760:
	moveq #2,%d0
	jra .L757
.L761:
	moveq #0,%d0
	jra .L757
.L762:
	moveq #2,%d0
	jra .L757
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
