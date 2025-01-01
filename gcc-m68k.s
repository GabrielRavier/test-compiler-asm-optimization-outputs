#NO_APP
	.file	"mini-libc.c"
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	move.l %a2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%a0
	cmp.l %d0,%a0
	jcc .L2
	move.l 16(%sp),%a2
	add.l %a0,%a2
	move.l 16(%sp),%a1
	add.l %d0,%a1
	tst.l 16(%sp)
	jeq .L3
	subq.l #1,%a1
.L4:
	move.b -(%a2),(%a1)
	subq.l #1,%a1
	cmp.l %a0,%a2
	jne .L4
.L3:
	move.l %d0,%a0
	move.l (%sp)+,%a2
	rts
.L2:
	cmp.l %d0,%a0
	jeq .L3
	tst.l 16(%sp)
	jeq .L3
	move.l %d0,%a1
	move.l 16(%sp),%d1
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
	cmp.l %d2,%d1
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
	cmp.l %d3,%d2
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
	cmp.l %d2,%d1
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
	cmp.l %a0,%d1
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
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	moveq #0,%d2
	move.b 15(%sp),%d2
	tst.b (%a0)
	jeq .L53
.L51:
	move.l %a0,%d0
	moveq #0,%d1
	move.b (%a0)+,%d1
	cmp.l %d2,%d1
	jeq .L49
	move.l %a0,%d0
	tst.b (%a0)
	jne .L51
.L49:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
.L53:
	move.l %a0,%d0
	jra .L49
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d3
	move.l 12(%sp),%a1
.L56:
	move.l %a1,%d0
	move.b (%a1)+,%d2
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	cmp.l %d3,%a0
	jeq .L54
	tst.b %d2
	jne .L56
	moveq #0,%d0
.L54:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a2
	move.l 12(%sp),%a1
	move.b (%a2),%d0
	cmp.b (%a1),%d0
	jne .L59
	move.l %a2,%a0
.L60:
	move.l %a0,%a2
	tst.b (%a0)+
	jeq .L59
	move.l %a0,%a2
	addq.l #1,%a1
	move.b (%a0),%d0
	cmp.b (%a1),%d0
	jeq .L60
.L59:
	moveq #0,%d0
	move.b (%a2),%d0
	moveq #0,%d1
	move.b (%a1),%d1
	sub.l %d1,%d0
	move.l (%sp)+,%a2
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
	move.l 12(%sp),%a2
	move.l 16(%sp),%a3
	move.l 20(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	tst.l %d0
	jeq .L72
	tst.b (%a2)
	jeq .L69
	move.l %a3,%a1
	move.l %a2,%a0
	add.l %a2,%d1
.L70:
	move.l %a1,%a3
	move.l %a0,%a2
	move.b (%a1)+,%d0
	jeq .L69
	cmp.l %a0,%d1
	jeq .L69
	cmp.b (%a0)+,%d0
	jne .L69
	move.l %a0,%a2
	move.l %a1,%a3
	tst.b (%a0)
	jne .L70
.L69:
	moveq #0,%d0
	move.b (%a2),%d0
	moveq #0,%d1
	move.b (%a3),%d1
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
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%a1
	moveq #1,%d0
	cmp.l 16(%sp),%d0
	jge .L73
	move.l 16(%sp),%d0
	subq.l #2,%d0
	moveq #-2,%d1
	and.l %d1,%d0
	lea 2(%a0,%d0.l),%a2
.L75:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%a2
	jne .L75
.L73:
	move.l (%sp)+,%a2
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
	jeq .L81
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	and.l #255,%d0
.L79:
	rts
.L81:
	moveq #1,%d0
	jra .L79
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L84
	moveq #127,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	and.l #255,%d0
.L82:
	rts
.L84:
	moveq #1,%d0
	jra .L82
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
	jeq .L91
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
.L89:
	rts
.L91:
	moveq #1,%d0
	jra .L89
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
	jcc .L95
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcc .L96
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L97
	add.l #-65529,%a0
	moveq #2,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
	jra .L93
.L95:
	moveq #1,%d0
.L93:
	rts
.L96:
	moveq #1,%d0
	jra .L93
.L97:
	moveq #1,%d0
	jra .L93
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
	jls .L106
	cmp.l #8231,%d0
	jls .L102
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L103
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L104
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L105
	and.l #65534,%d0
	cmp.l #65534,%d0
	sne %d0
	neg.b %d0
	and.l #255,%d0
	jra .L99
.L106:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	neg.b %d0
	and.l #255,%d0
.L99:
	rts
.L102:
	moveq #1,%d0
	jra .L99
.L103:
	moveq #1,%d0
	jra .L99
.L104:
	moveq #1,%d0
	jra .L99
.L105:
	moveq #0,%d0
	jra .L99
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	move.w #-48,%a0
	add.l 4(%sp),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L109
	moveq #32,%d0
	or.l 4(%sp),%d0
	move.w #-97,%a0
	add.l %d0,%a0
	moveq #5,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
.L107:
	rts
.L109:
	moveq #1,%d0
	jra .L107
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
	jne .L114
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L115
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L118
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
.L111:
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
.L114:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L111
.L115:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L111
.L118:
	moveq #0,%d0
	moveq #0,%d1
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
	jne .L122
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L123
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L126
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
.L119:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L122:
	move.l %d2,%d0
	jra .L119
.L123:
	move.l %d3,%d0
	jra .L119
.L126:
	moveq #0,%d0
	jra .L119
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
	jne .L133
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L134
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L129
	tst.l %d0
	jeq .L135
	move.l %d4,%d1
	move.l %d5,%d0
.L127:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L129:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L130
	clr.b 27(%sp)
.L130:
	tst.b 27(%sp)
	jeq .L131
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L127
.L131:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L127
.L133:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L127
.L134:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L127
.L135:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L127
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
	jne .L142
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L143
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L138
	tst.l %d0
	jeq .L144
	move.l %d3,%d0
	jra .L136
.L138:
	moveq #1,%d4
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L139
	clr.b %d4
.L139:
	tst.b %d4
	jeq .L141
	move.l %d3,%d2
.L141:
	move.l %d2,%d0
.L136:
	movem.l (%sp)+,#28
	rts
.L142:
	move.l %d3,%d0
	jra .L136
.L143:
	move.l %d2,%d0
	jra .L136
.L144:
	move.l %d2,%d0
	jra .L136
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
	jne .L160
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L161
	move.l %a4,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L151
	tst.l %d0
	jeq .L152
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
.L152:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L145
.L160:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L145
.L161:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L145
.L151:
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
	jlt .L153
	clr.b %d2
.L153:
	tst.b %d2
	jeq .L154
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L155:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L145:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L154:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L155
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
	jne .L168
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L169
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L164
	tst.l %d0
	jeq .L170
	move.l %d2,%d1
	move.l %d3,%d0
.L162:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L164:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L165
	clr.b 27(%sp)
.L165:
	tst.b 27(%sp)
	jeq .L166
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L162
.L166:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L162
.L168:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L162
.L169:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L162
.L170:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L162
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
	jne .L177
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L178
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L173
	tst.l %d0
	jeq .L179
	move.l %d3,%d0
	jra .L171
.L173:
	moveq #1,%d4
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L174
	clr.b %d4
.L174:
	tst.b %d4
	jeq .L176
	move.l %d3,%d2
.L176:
	move.l %d2,%d0
.L171:
	movem.l (%sp)+,#28
	rts
.L177:
	move.l %d2,%d0
	jra .L171
.L178:
	move.l %d3,%d0
	jra .L171
.L179:
	move.l %d2,%d0
	jra .L171
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
	jne .L195
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L196
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %a4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L186
	tst.l %d0
	jeq .L187
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
.L187:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L180
.L195:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L180
.L196:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L180
.L186:
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
	jlt .L188
	clr.b %d2
.L188:
	tst.b %d2
	jeq .L189
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L190:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L180:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L189:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L190
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
	jeq .L200
	lea (s.0),%a0
	lea digits,%a1
.L199:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L199
.L198:
	clr.b (%a0)
	move.l #s.0,%d0
	move.l %d0,%a0
	rts
.L200:
	lea (s.0),%a0
	jra .L198
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
	jeq .L207
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L204
	move.l %a0,4(%a1)
.L204:
	rts
.L207:
	clr.l 4(%a0)
	clr.l (%a0)
	jra .L204
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L209
	move.l 4(%a0),4(%a1)
.L209:
	move.l 4(%a0),%a1
	cmp.w #0,%a1
	jeq .L208
	move.l (%a0),(%a1)
.L208:
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
	jeq .L212
	move.l %a3,%d2
	moveq #0,%d3
.L214:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.l %d0
	jeq .L211
	addq.l #1,%d3
	add.l %d6,%d2
	cmp.l %d3,%d5
	jne .L214
.L212:
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
.L211:
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
	jeq .L219
	move.l 36(%sp),%d2
	moveq #0,%d3
.L218:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L216
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d3,%d5
	jne .L218
	moveq #0,%d4
.L216:
	move.l %d4,%a0
	move.l %d4,%d0
	movem.l (%sp)+,#1276
	rts
.L219:
	moveq #0,%d4
	jra .L216
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	jmi .L223
.L222:
	rts
.L223:
	neg.l %d0
	jra .L222
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #60,-(%sp)
	move.l 20(%sp),%a4
	lea isspace,%a5
.L225:
	move.l %a4,%a3
	move.b (%a4)+,%d0
	ext.w %d0
	move.w %d0,%a2
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	tst.l %d0
	jne .L225
	moveq #43,%d1
	cmp.l %a2,%d1
	jeq .L231
	moveq #45,%d1
	cmp.l %a2,%d1
	jne .L232
	move.w #1,%a1
.L226:
	addq.l #1,%a3
.L227:
	move.b (%a3),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcs .L228
.L229:
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	move.l %d1,%a2
	add.l %d0,%a2
	move.b (%a3)+,%d1
	ext.w %d1
	move.l %a2,%a0
	sub.w %d1,%a0
	lea 48(%a0,%a2.l),%a2
	move.l %a2,%d0
	move.b (%a3),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcc .L229
.L228:
	cmp.w #0,%a1
	jne .L224
	neg.l %d0
.L224:
	movem.l (%sp)+,#15360
	rts
.L231:
	move.l %d0,%a1
	jra .L226
.L232:
	move.l %d0,%a1
	jra .L227
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	movem.l #60,-(%sp)
	move.l 20(%sp),%a4
	lea isspace,%a5
.L236:
	move.l %a4,%a3
	move.b (%a4)+,%d0
	ext.w %d0
	move.w %d0,%a2
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	tst.l %d0
	jne .L236
	moveq #43,%d1
	cmp.l %a2,%d1
	jeq .L242
	moveq #45,%d1
	cmp.l %a2,%d1
	jne .L243
	move.w #1,%a1
.L237:
	addq.l #1,%a3
.L238:
	move.b (%a3),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcs .L239
.L240:
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	move.l %d1,%a2
	add.l %d0,%a2
	move.b (%a3)+,%d1
	ext.w %d1
	move.l %a2,%a0
	sub.w %d1,%a0
	lea 48(%a0,%a2.l),%a2
	move.l %a2,%d0
	move.b (%a3),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcc .L240
.L239:
	cmp.w #0,%a1
	jne .L235
	neg.l %d0
.L235:
	movem.l (%sp)+,#15360
	rts
.L242:
	move.l %d0,%a1
	jra .L237
.L243:
	move.l %d0,%a1
	jra .L238
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #15420,-(%sp)
	move.l 36(%sp),%a4
	lea isspace,%a5
.L247:
	move.l %a4,%a2
	move.b (%a4)+,%d0
	ext.w %d0
	move.w %d0,%a3
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	tst.l %d0
	jne .L247
	moveq #43,%d1
	cmp.l %a3,%d1
	jeq .L248
	moveq #45,%d1
	cmp.l %a3,%d1
	jne .L249
	moveq #1,%d0
.L248:
	addq.l #1,%a2
.L249:
	move.b (%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcs .L253
	clr.l %d4
	clr.l %d5
.L251:
	move.l %d4,%d2
	move.l %d5,%d3
	add.l %d3,%d3
	addx.l %d2,%d2
	add.l %d3,%d3
	addx.l %d2,%d2
	add.l %d3,%d5
	addx.l %d2,%d4
	add.l %d5,%d5
	addx.l %d4,%d4
	move.b (%a2)+,%d2
	ext.w %d2
	move.w %d2,%a0
	move.l #-48,%d3
	add.l %a0,%d3
	smi %d2
	ext.w %d2
	ext.l %d2
	sub.l %d3,%d5
	subx.l %d2,%d4
	move.b (%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcc .L251
.L250:
	tst.l %d0
	jne .L246
	neg.l %d5
	negx.l %d4
.L246:
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#15420
	rts
.L253:
	clr.l %d4
	clr.l %d5
	jra .L250
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
	jeq .L260
	lea __mulsi3,%a3
	jra .L259
.L261:
	move.l %d4,%d3
.L258:
	tst.l %d3
	jeq .L263
.L259:
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
	jlt .L261
	jle .L256
	move.l %d2,%d5
	add.l %d6,%d5
	subq.l #1,%d3
	sub.l %d4,%d3
	jra .L258
.L263:
	moveq #0,%d2
.L256:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l (%sp)+,#3324
	rts
.L260:
	moveq #0,%d2
	jra .L256
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
	jeq .L268
	lea __mulsi3,%a3
	jra .L267
.L266:
	asr.l #1,%d2
	jeq .L270
.L267:
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
	jeq .L264
	jle .L266
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	jra .L266
.L270:
	moveq #0,%d3
.L264:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
.L268:
	moveq #0,%d3
	jra .L264
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
	jlt .L274
.L273:
	rts
.L274:
	neg.l %d1
	negx.l %d0
	jra .L273
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
	jmi .L278
.L277:
	rts
.L278:
	neg.l %d0
	jra .L277
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
	jlt .L282
.L281:
	rts
.L282:
	neg.l %d1
	negx.l %d0
	jra .L281
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
	tst.l (%a0)
	jeq .L289
.L286:
	move.l %a0,%d0
	cmp.l (%a0)+,%d1
	jeq .L287
	move.l %a0,%d0
	tst.l (%a0)
	jne .L286
.L287:
	move.l %d0,%a0
	tst.l (%a0)
	jeq .L290
.L284:
	move.l %d0,%a0
	rts
.L290:
	moveq #0,%d0
	jra .L284
.L289:
	moveq #0,%d0
	jra .L284
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a3
	move.l 16(%sp),%a2
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jne .L292
	move.l %a3,%a0
	move.l %a2,%a1
.L293:
	move.l %a1,%a2
	move.l %a0,%a3
	tst.l (%a0)+
	jeq .L292
	tst.l (%a1)+
	jeq .L292
	move.l %a0,%a3
	move.l %a1,%a2
	move.l (%a0),%d0
	cmp.l (%a1),%d0
	jeq .L293
.L292:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L296
	slt %d0
	neg.b %d0
	and.l #255,%d0
.L291:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L296:
	moveq #-1,%d0
	jra .L291
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l %d0,%a0
.L298:
	move.l (%a1)+,%d1
	move.l %d1,(%a0)+
	jne .L298
	move.l %d0,%a0
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%a1
	tst.l (%a1)
	jeq .L303
	move.l %a1,%a0
.L302:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L302
.L301:
	move.l %a0,%d0
	sub.l %a1,%d0
	asr.l #2,%d0
	rts
.L303:
	move.l %a1,%a0
	jra .L301
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d0
	jeq .L311
	move.l 12(%sp),%a1
	move.l 16(%sp),%a0
.L307:
	move.l %a0,%a2
	move.l %a1,%a3
	move.l (%a1)+,%d1
	cmp.l (%a0)+,%d1
	jne .L308
	tst.l %d1
	jeq .L308
	subq.l #1,%d0
	jne .L307
	moveq #0,%d0
	jra .L305
.L310:
	cmp.l %d0,%d1
	slt %d0
	neg.b %d0
	and.l #255,%d0
.L305:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L311:
	moveq #0,%d0
	jra .L305
.L308:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jle .L310
	moveq #-1,%d0
	jra .L305
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	jeq .L317
	move.l 4(%sp),%a0
.L315:
	move.l %a0,%d0
	cmp.l (%a0)+,%a1
	jeq .L313
	subq.l #1,%d1
	jne .L315
	moveq #0,%d0
.L313:
	move.l %d0,%a0
	rts
.L317:
	moveq #0,%d0
	jra .L313
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d0
	jeq .L325
	move.l 12(%sp),%a1
	move.l 16(%sp),%a0
.L321:
	move.l %a0,%a2
	move.l %a1,%a3
	cmpm.l (%a0)+,(%a1)+
	jne .L328
	subq.l #1,%d0
	jne .L321
	moveq #0,%d0
.L319:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L324:
	cmp.l %d0,%d1
	slt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L319
.L325:
	moveq #0,%d0
	jra .L319
.L328:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jle .L324
	moveq #-1,%d0
	jra .L319
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
	jeq .L330
	move.l %d0,%a1
.L331:
	move.l (%a0)+,(%a1)+
	dbra %d1,.L331
	clr.w %d1
	subq.l #1,%d1
	jcc .L331
.L330:
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
	jeq .L334
	move.l %d0,%a2
	move.l %a0,%d1
	move.l %d0,%d3
	sub.l %a0,%d3
	move.l %d2,%a1
	add.l %d2,%a1
	add.l %a1,%a1
	cmp.l %d3,%a1
	jhi .L335
	move.l %d2,%d1
	subq.l #1,%d1
	tst.l %d2
	jeq .L334
.L336:
	move.l (%a0)+,(%a2)+
	dbra %d1,.L336
	clr.w %d1
	subq.l #1,%d1
	jcc .L336
	jra .L334
.L335:
	tst.l %d2
	jeq .L334
	add.l %a1,%a0
	add.l %d0,%a1
.L337:
	move.l -(%a0),-(%a1)
	cmp.l %d1,%a0
	jne .L337
.L334:
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
	jeq .L342
	move.l %d0,%a0
.L343:
	move.l %a1,(%a0)+
	dbra %d1,.L343
	clr.w %d1
	subq.l #1,%d1
	jcc .L343
.L342:
	move.l %d0,%a0
	rts
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a1
	move.l 12(%sp),%a0
	move.l 16(%sp),%d0
	cmp.l %a1,%a0
	jls .L346
	lea (%a1,%d0.l),%a2
	add.l %d0,%a0
	tst.l %d0
	jeq .L345
	subq.l #1,%a0
.L348:
	move.b -(%a2),(%a0)
	subq.l #1,%a0
	cmp.l %a1,%a2
	jne .L348
.L345:
	move.l (%sp)+,%a2
	rts
.L346:
	cmp.l %a1,%a0
	jeq .L345
	tst.l %d0
	jeq .L345
	add.l %a1,%d0
.L349:
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d0
	jne .L349
	jra .L345
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
	jlt .L353
	move.l %d3,%d0
	move.l %a0,%d1
	lsl.l %d1,%d0
	moveq #0,%d5
.L354:
	move.l %d2,%d1
	neg.l %d1
	moveq #63,%d6
	and.l %d1,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L355
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
.L356:
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L353:
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
	jra .L354
.L355:
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
	jra .L356
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
	jlt .L358
	move.l %d3,%d1
	move.l %a0,%d0
	lsr.l %d0,%d1
	moveq #0,%d5
.L359:
	move.l %d2,%d0
	neg.l %d0
	moveq #63,%d6
	and.l %d0,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L360
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
.L361:
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L358:
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
	jra .L359
.L360:
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
	jra .L361
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
.L376:
	btst %d0,%d1
	jne .L378
	addq.l #1,%d0
	moveq #32,%d2
	cmp.l %d0,%d2
	jne .L376
	moveq #0,%d0
	jra .L373
.L378:
	addq.l #1,%d0
.L373:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L382
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L379
	moveq #1,%d0
.L381:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L381
.L379:
	rts
.L382:
	move.l %d1,%d0
	jra .L379
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
	jlt .L387
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L388
.L386:
	moveq #0,%d0
	move.b %d2,%d0
.L384:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L388:
	clr.b %d2
	jra .L386
.L387:
	moveq #1,%d0
	jra .L384
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
	jlt .L392
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L393
.L391:
	moveq #0,%d0
	move.b %d2,%d0
.L389:
	movem.l (%sp)+,#52
	rts
.L393:
	clr.b %d2
	jra .L391
.L392:
	moveq #1,%d0
	jra .L389
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
	jlt .L397
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
	jle .L398
.L396:
	moveq #0,%d0
	move.b %d2,%d0
.L394:
	movem.l (%sp)+,#60
	rts
.L398:
	clr.b %d2
	jra .L396
.L397:
	moveq #1,%d0
	jra .L394
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
	jne .L401
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	move.l %d4,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L401
	tst.l %d2
	jlt .L408
	move.l #0x40000000,%d3
.L403:
	lea __mulsf3,%a2
	jra .L405
.L408:
	move.l #0x3f000000,%d3
	jra .L403
.L404:
	move.l %d2,%d2
	jpl .L409
	addq.l #1,%d2
.L409:
	asr.l #1,%d2
	jeq .L401
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L405:
	btst #0,%d2
	jeq .L404
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L404
.L401:
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
	jne .L411
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
	jeq .L411
	tst.l %d6
	jlt .L418
	move.l #1073741824,%a2
	sub.l %a3,%a3
.L413:
	lea __muldf3,%a5
	jra .L415
.L418:
	move.l #1071644672,%a2
	sub.l %a3,%a3
	jra .L413
.L414:
	move.l %d6,%d6
	jpl .L419
	addq.l #1,%d6
.L419:
	asr.l #1,%d6
	jeq .L411
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
.L415:
	btst #0,%d6
	jeq .L414
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
	jra .L414
.L411:
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
	jne .L421
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
	jeq .L421
	tst.l %d2
	jlt .L428
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
.L423:
	lea __mulxf3,%a2
	jra .L425
.L428:
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
	jra .L423
.L424:
	move.l %d2,%d2
	jpl .L429
	addq.l #1,%d2
.L429:
	asr.l #1,%d2
	jeq .L421
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
.L425:
	btst #0,%d2
	jeq .L424
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
	jra .L424
.L421:
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
	jeq .L431
	move.l 20(%sp),%d2
	add.l %a0,%d2
	move.l %d0,%a1
.L432:
	move.b (%a1)+,%d1
	move.b (%a0)+,%d3
	eor.b %d3,%d1
	move.b %d1,-1(%a1)
	cmp.l %a0,%d2
	jne .L432
.L431:
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
	jeq .L435
	move.l 20(%sp),%a1
	move.l %a2,%a0
.L436:
	move.b (%a1)+,%d0
	move.b %d0,(%a0)+
	jeq .L438
	move.l %a0,%a2
	subq.l #1,%d2
	jne .L436
.L435:
	clr.b (%a2)
.L438:
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
	jeq .L446
.L440:
	tst.b (%a0,%d0.l)
	jne .L447
.L439:
	rts
.L446:
	move.l %d1,%d0
	jra .L439
.L447:
	addq.l #1,%d0
	cmp.l %d0,%d1
	jne .L440
	move.l %d1,%d0
	jra .L439
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l 4(%sp),%a1
	move.l 8(%sp),%d0
	tst.b (%a1)
	jeq .L455
.L449:
	move.l %d0,%a0
.L452:
	move.b (%a0)+,%d1
	jeq .L456
	cmp.b (%a1),%d1
	jne .L452
.L450:
	move.l %a1,%a0
	move.l %a1,%d0
	rts
.L455:
	sub.l %a1,%a1
	jra .L450
.L456:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L449
	sub.l %a1,%a1
	jra .L450
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	movem.l #14336,-(%sp)
	move.l 20(%sp),%d4
	move.l 16(%sp),%a1
	moveq #0,%d0
	jra .L459
.L458:
	tst.b %d2
	jeq .L462
.L459:
	move.l %a1,%d3
	move.b (%a1)+,%d2
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	cmp.l %d4,%a0
	jne .L458
	move.l %d3,%d0
	jra .L458
.L462:
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
	jeq .L463
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a3
	lea strchr,%a4
	lea strncmp,%a5
.L465:
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %a0,%d2
	jeq .L463
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L463
	addq.l #1,%d2
	jra .L465
.L463:
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
	jlt .L478
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L472
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L471
.L472:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#60
	rts
.L478:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L472
.L471:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d4
	move.l %d3,%d5
	move.l %d4,%d2
	move.l %d5,%d3
	jra .L472
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
	jeq .L483
	cmp.l 36(%sp),%d0
	jhi .L484
	cmp.l %a2,%d2
	jcs .L485
	move.l 40(%sp),%a3
	move.b (%a3)+,%d4
	move.l %d0,%d5
	subq.l #1,%d5
	lea memcmp,%a4
	jra .L482
.L481:
	cmp.l %d2,%a2
	jhi .L487
.L482:
	move.l %a2,%d3
	cmp.b (%a2)+,%d4
	jne .L481
	move.l %d5,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L481
	jra .L479
.L487:
	moveq #0,%d3
.L479:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#7228
	rts
.L483:
	move.l %a2,%d3
	jra .L479
.L484:
	moveq #0,%d3
	jra .L479
.L485:
	moveq #0,%d3
	jra .L479
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
	jlt .L513
	moveq #0,%d7
.L490:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L510
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
	lea __gedf2,%a4
.L494:
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
	jge .L494
.L495:
	move.l 60(%sp),%a0
	move.l %d6,(%a0)
	tst.l %d7
	jeq .L499
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,40(%sp)
	move.l %d3,44(%sp)
	move.l 40(%sp),%d2
	move.l 44(%sp),%d3
.L499:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#15612
	addq.l #8,%sp
	rts
.L513:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	moveq #1,%d7
	jra .L490
.L510:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L511
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L512
	moveq #0,%d6
	lea __adddf3,%a5
	move.l #1071644672,%d4
	clr.l %d5
	lea __ltdf2,%a4
.L498:
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
	jlt .L498
	jra .L495
.L511:
	moveq #0,%d6
	jra .L495
.L512:
	moveq #0,%d6
	jra .L495
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
	jeq .L517
	clr.l 32(%sp)
	clr.l 36(%sp)
.L516:
	sub.l %a0,%a0
	moveq #1,%d1
	and.l %d3,%d1
	move.l %d1,%a1
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
	jne .L516
.L514:
	move.l 32(%sp),%d0
	move.l 36(%sp),%d1
	movem.l (%sp)+,#252
	lea (16,%sp),%sp
	rts
.L517:
	clr.l 32(%sp)
	clr.l 36(%sp)
	jra .L514
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
	jls .L523
	moveq #32,%d0
	moveq #1,%d2
.L520:
	tst.l %d1
	jlt .L523
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L532
	subq.l #1,%d0
	jne .L520
.L524:
	tst.l 16(%sp)
	jne .L533
.L519:
	move.l (%sp)+,%d2
	rts
.L532:
	move.l %d2,%d0
	jeq .L524
.L523:
	moveq #0,%d0
	jra .L527
.L526:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L524
.L527:
	cmp.l %a0,%d1
	jhi .L526
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L526
.L533:
	move.l %a0,%d0
	jra .L519
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
	jeq .L536
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
.L534:
	move.l (%sp)+,%d2
	rts
.L536:
	moveq #7,%d0
	jra .L534
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
	jeq .L539
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
.L537:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L539:
	moveq #63,%d0
	jra .L537
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
	jeq .L543
	moveq #0,%d0
.L542:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L542
.L540:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L543:
	move.l %d2,%d0
	jra .L540
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
	jhi .L546
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jhi .L546
	tst.l %d0
	jeq .L545
	move.l %d4,%a0
	add.l %d0,%a0
.L552:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L552
	jra .L545
.L546:
	tst.l %d2
	jeq .L549
	move.l %d3,%a0
	move.l %d4,%a1
	lsl.l #3,%d2
	add.l %d3,%d2
.L550:
	move.l (%a0)+,%d5
	move.l (%a0)+,%d6
	move.l %d5,(%a1)+
	move.l %d6,(%a1)+
	cmp.l %a0,%d2
	jne .L550
.L549:
	cmp.l %d0,%d1
	jcc .L545
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L551:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L551
.L545:
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
	jhi .L557
	lea (%a3,%d1.l),%a1
	cmp.l %a1,%a2
	jhi .L557
	add.l %d1,%a2
	tst.l %d1
	jeq .L556
.L562:
	move.b -(%a1),-(%a2)
	cmp.l %a1,%a3
	jne .L562
	jra .L556
.L557:
	tst.l %d0
	jeq .L560
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
.L561:
	move.w (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L561
.L560:
	btst #0,%d1
	jeq .L556
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L556:
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
	jhi .L566
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jhi .L566
	tst.l %d0
	jeq .L565
	move.l %d4,%a0
	add.l %d0,%a0
.L572:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L572
	jra .L565
.L566:
	tst.l %d2
	jeq .L569
	move.l %d3,%a0
	move.l %d4,%a2
	add.l %d2,%d2
	add.l %d2,%d2
	lea (%a0,%d2.l),%a1
.L570:
	move.l (%a0)+,(%a2)+
	cmp.l %a0,%a1
	jne .L570
.L569:
	cmp.l %d0,%d1
	jcc .L565
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L571:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L571
.L565:
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
.L584:
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L582
	addq.l #1,%d0
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L584
.L582:
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
.L588:
	btst %d0,%d1
	jne .L586
	addq.l #1,%d0
	moveq #16,%d2
	cmp.l %d0,%d2
	jne .L588
.L586:
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
	jge .L596
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L590:
	move.l (%sp)+,%d2
	rts
.L596:
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L590
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
.L598:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L598
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
.L601:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L601
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
	jeq .L606
	moveq #0,%d0
.L605:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L605
.L603:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L606:
	move.l %d2,%d0
	jra .L603
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
	jeq .L611
	tst.l %d3
	jeq .L612
	moveq #0,%d0
.L610:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L610
.L608:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L611:
	move.l %d2,%d0
	jra .L608
.L612:
	move.l %d3,%d0
	jra .L608
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
	jls .L618
	moveq #32,%d0
	moveq #1,%d2
.L615:
	tst.l %d1
	jlt .L618
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L627
	subq.l #1,%d0
	jne .L615
.L619:
	tst.l 16(%sp)
	jne .L628
.L614:
	move.l (%sp)+,%d2
	rts
.L627:
	move.l %d2,%d0
	jeq .L619
.L618:
	moveq #0,%d0
	jra .L622
.L621:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L619
.L622:
	cmp.l %a0,%d1
	jhi .L621
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L621
.L628:
	move.l %a0,%d0
	jra .L614
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
	jlt .L632
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L633
.L631:
	moveq #0,%d0
	move.b %d2,%d0
.L629:
	movem.l (%sp)+,#28
	rts
.L633:
	clr.b %d2
	jra .L631
.L632:
	moveq #-1,%d0
	jra .L629
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
	jlt .L637
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L638
.L636:
	moveq #0,%d0
	move.b %d6,%d0
.L634:
	movem.l (%sp)+,#124
	rts
.L638:
	clr.b %d6
	jra .L636
.L637:
	moveq #-1,%d0
	jra .L634
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
	jmi .L649
	sub.l %a0,%a0
	tst.l %d2
	jeq .L650
.L646:
	moveq #32,%d4
	moveq #0,%d0
.L644:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L643
	subq.b #1,%d4
	jne .L644
.L643:
	cmp.w #0,%a0
	jeq .L641
	neg.l %d0
.L641:
	movem.l (%sp)+,#28
	rts
.L649:
	neg.l %d2
	move.w #1,%a0
	jra .L646
.L650:
	move.l %d2,%d0
	jra .L641
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	tst.l %d0
	jlt .L659
	tst.l %d1
	jlt .L660
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L651
.L659:
	neg.l %d0
	tst.l %d1
	jlt .L661
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
.L655:
	neg.l %d0
.L651:
	rts
.L660:
	clr.l -(%sp)
	neg.l %d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L655
.L661:
	clr.l -(%sp)
	neg.l %d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L651
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	tst.l %d0
	jlt .L667
	move.l %d1,%d2
	jmi .L668
.L665:
	pea 1.w
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L662
.L667:
	neg.l %d0
	move.l %d1,%d2
	jmi .L669
.L664:
	pea 1.w
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	neg.l %d0
.L662:
	move.l (%sp)+,%d2
	rts
.L669:
	neg.l %d2
	jra .L664
.L668:
	neg.l %d2
	jra .L665
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
	jcc .L674
	moveq #16,%d0
	moveq #1,%d2
.L671:
	tst.w %d1
	jlt .L674
	add.w %d1,%d1
	add.w %d2,%d2
	cmp.w %a0,%d1
	jcc .L684
	subq.l #1,%d0
	jne .L671
	clr.w %d0
.L675:
	tst.l 16(%sp)
	jne .L685
.L670:
	move.l (%sp)+,%d2
	rts
.L684:
	move.w %d2,%d0
	jeq .L675
.L674:
	clr.w %d0
	jra .L678
.L677:
	lsr.w #1,%d2
	lsr.w #1,%d1
	tst.w %d2
	jeq .L675
.L678:
	cmp.w %a0,%d1
	jhi .L677
	sub.w %d1,%a0
	or.w %d2,%d0
	jra .L677
.L685:
	move.w %a0,%d0
	jra .L670
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
	jls .L690
	moveq #32,%d0
	moveq #1,%d2
.L687:
	tst.l %d1
	jlt .L690
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L699
	subq.l #1,%d0
	jne .L687
.L691:
	tst.l 16(%sp)
	jne .L700
.L686:
	move.l (%sp)+,%d2
	rts
.L699:
	move.l %d2,%d0
	jeq .L691
.L690:
	moveq #0,%d0
	jra .L694
.L693:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L691
.L694:
	cmp.l %a0,%d1
	jhi .L693
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L693
.L700:
	move.l %a0,%d0
	jra .L686
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
	jeq .L702
	moveq #0,%d1
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
.L704:
	movem.l (%sp)+,#28
	rts
.L702:
	tst.l %d2
	jeq .L705
	move.l %d3,%d1
	lsl.l %d2,%d1
	lsl.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsr.l %d4,%d3
	or.l %d3,%d0
	jra .L704
.L705:
	move.l %d3,%d1
	jra .L704
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
	jeq .L707
	move.l %d1,%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
.L709:
	movem.l (%sp)+,#28
	rts
.L707:
	tst.l %d2
	jeq .L710
	move.l %d1,%d0
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L709
.L710:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L709
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
	add.l %d1,%d0
	moveq #15,%d1
	not.b %d1
	and.l %d2,%d1
	seq %d1
	neg.b %d1
	and.l #255,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	moveq #4,%d3
	sub.l %d1,%d3
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
	move.l 8(%sp),%d1
	move.l 16(%sp),%d0
	move.l 4(%sp),%a1
	move.l 12(%sp),%a0
	cmp.l %a1,%a0
	jgt .L716
	jlt .L717
	cmp.l %d1,%d0
	jhi .L718
	jcs .L719
	moveq #1,%d0
	jra .L715
.L716:
	moveq #0,%d0
.L715:
	rts
.L717:
	moveq #2,%d0
	jra .L715
.L718:
	moveq #0,%d0
	jra .L715
.L719:
	moveq #2,%d0
	jra .L715
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
	move.l %d1,%d3
	not.l %d3
	moveq #1,%d0
	and.l %d0,%d3
	lsr.l #1,%d1
	moveq #2,%d0
	sub.l %d1,%d0
	neg.l %d3
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
	jeq .L723
	moveq #0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	lsr.l %d2,%d1
.L725:
	movem.l (%sp)+,#28
	rts
.L723:
	tst.l %d2
	jeq .L726
	move.l %d1,%d0
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L725
.L726:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L725
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
	move.l %d6,-(%sp)
	move.l %d4,-(%sp)
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
	add.l %d6,%d2
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d2,%d0
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
	move.l 8(%sp),%d1
	move.l 4(%sp),%d0
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
	move.l 64(%sp),%d4
	move.l %d4,%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	neg.l %d0
	move.l %d0,%a6
	move.l #1072693248,%d6
	clr.l %d7
	lea __muldf3,%a5
	jra .L737
.L735:
	move.l %d4,%d4
	jpl .L739
	addq.l #1,%d4
.L739:
	asr.l #1,%d4
	jeq .L736
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
.L737:
	btst #0,%d4
	jeq .L735
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
	jra .L735
.L736:
	cmp.w #0,%a6
	jeq .L734
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
.L734:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#27868
	lea (16,%sp),%sp
	rts
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
	jra .L743
.L741:
	move.l %d2,%d2
	jpl .L745
	addq.l #1,%d2
.L745:
	asr.l #1,%d2
	jeq .L742
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L743:
	btst #0,%d2
	jeq .L741
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L741
.L742:
	tst.l %d5
	jeq .L740
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	move.l %d0,%d4
.L740:
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
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
	jhi .L748
	jcs .L749
	cmp.l %d1,%d0
	jhi .L750
	jcs .L751
	moveq #1,%d0
	jra .L747
.L748:
	moveq #0,%d0
.L747:
	rts
.L749:
	moveq #2,%d0
	jra .L747
.L750:
	moveq #0,%d0
	jra .L747
.L751:
	moveq #2,%d0
	jra .L747
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
