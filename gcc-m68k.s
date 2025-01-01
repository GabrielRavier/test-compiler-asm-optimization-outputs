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
	move.l 12(%sp),%d0
	move.l 24(%sp),%a0
	moveq #0,%d2
	move.b 23(%sp),%d2
	cmp.w #0,%a0
	jeq .L9
	move.l 16(%sp),%a2
	move.l %d0,%a1
.L10:
	move.l %a1,%d0
	move.b (%a2)+,%d1
	move.b %d1,(%a1)+
	and.l #255,%d1
	cmp.l %d2,%d1
	jeq .L9
	subq.l #1,%a0
	move.l %a1,%d0
	cmp.w #0,%a0
	jne .L10
.L9:
	cmp.w #0,%a0
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
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%sp),%d1
	moveq #0,%d3
	move.b 19(%sp),%d3
	tst.l %d1
	jeq .L19
	move.l 12(%sp),%a0
.L16:
	move.l %a0,%d0
	moveq #0,%d2
	move.b (%a0)+,%d2
	cmp.l %d3,%d2
	jeq .L15
	move.l %a0,%d0
	subq.l #1,%d1
	jne .L16
.L15:
	tst.l %d1
	jeq .L20
.L14:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L19:
	move.l 12(%sp),%d0
	jra .L15
.L20:
	moveq #0,%d0
	jra .L14
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a3
	move.l 16(%sp),%a2
	move.l 20(%sp),%d0
	jeq .L22
	move.l %a3,%a1
	move.l %a2,%a0
.L23:
	move.l %a0,%a2
	move.l %a1,%a3
	cmpm.b (%a0)+,(%a1)+
	jne .L22
	subq.l #1,%d0
	move.l %a1,%a3
	move.l %a0,%a2
	jne .L23
.L22:
	tst.l %d0
	jeq .L26
	moveq #0,%d0
	move.b (%a3),%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
.L21:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L26:
	moveq #0,%d0
	jra .L21
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a0
	tst.l 12(%sp)
	jeq .L28
	move.l %d0,%a1
	move.l 12(%sp),%d1
	add.l %a0,%d1
.L29:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d1
	jne .L29
.L28:
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
.L32:
	moveq #-1,%d2
	cmp.l %d1,%d2
	jeq .L36
	moveq #0,%d2
	move.b (%a0,%d1.l),%d2
	move.l %d1,%a1
	subq.l #1,%a1
	cmp.l %d0,%d2
	jeq .L37
	move.l %a1,%d1
	jra .L32
.L37:
	move.l %a0,%d0
	add.l %d1,%d0
	jra .L31
.L36:
	moveq #0,%d0
.L31:
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
	jeq .L39
	move.l 16(%sp),%d1
	add.l %d0,%d1
	move.l %d0,%a0
.L40:
	move.b %d2,(%a0)+
	cmp.l %a0,%d1
	jne .L40
.L39:
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
	jeq .L43
.L44:
	addq.l #1,%a0
	addq.l #1,%a1
	move.b (%a0),%d0
	move.b %d0,(%a1)
	jne .L44
.L43:
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
	jeq .L50
.L48:
	move.l %a0,%d0
	moveq #0,%d1
	move.b (%a0)+,%d1
	cmp.l %d2,%d1
	jeq .L46
	move.l %a0,%d0
	tst.b (%a0)
	jne .L48
.L46:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
.L50:
	move.l %a0,%d0
	jra .L46
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 8(%sp),%a0
.L53:
	move.l %a0,%d0
	move.b (%a0)+,%d1
	ext.w %d1
	move.w %d1,%a1
	cmp.l %d2,%a1
	jeq .L51
	tst.b -1(%a0)
	jne .L53
	moveq #0,%d0
.L51:
	move.l %d0,%a0
	move.l (%sp)+,%d2
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
	jne .L56
	move.l %a2,%a0
.L57:
	move.l %a0,%a2
	tst.b (%a0)+
	jeq .L56
	move.l %a0,%a2
	addq.l #1,%a1
	move.b (%a0),%d0
	cmp.b (%a1),%d0
	jeq .L57
.L56:
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
	jeq .L62
	move.l %a1,%a0
.L61:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L61
.L60:
	move.l %a0,%d0
	sub.l %a1,%d0
	rts
.L62:
	move.l %a1,%a0
	jra .L60
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	movem.l #56,-(%sp)
	move.l 16(%sp),%a2
	move.l 20(%sp),%a3
	move.l 24(%sp),%d0
	jeq .L69
	tst.b (%a2)
	jeq .L66
	move.l %a3,%a1
	move.l %a2,%a0
	lea -1(%a2,%d0.l),%a4
.L67:
	move.l %a1,%a3
	move.l %a0,%a2
	tst.b (%a1)+
	jeq .L66
	cmp.l %a0,%a4
	jeq .L66
	move.b (%a0)+,%d0
	cmp.b -1(%a1),%d0
	jne .L66
	move.l %a0,%a2
	move.l %a1,%a3
	tst.b (%a0)
	jne .L67
.L66:
	moveq #0,%d0
	move.b (%a2),%d0
	moveq #0,%d1
	move.b (%a3),%d1
	sub.l %d1,%d0
.L64:
	movem.l (%sp)+,#7168
	rts
.L69:
	moveq #0,%d0
	jra .L64
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
	jge .L70
	move.l 16(%sp),%d0
	subq.l #2,%d0
	moveq #-2,%d1
	and.l %d1,%d0
	lea 2(%a0,%d0.l),%a2
.L72:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%a2
	jne .L72
.L70:
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
	jeq .L78
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	and.l #255,%d0
.L76:
	rts
.L78:
	moveq #1,%d0
	jra .L76
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L81
	moveq #127,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	and.l #255,%d0
.L79:
	rts
.L81:
	moveq #1,%d0
	jra .L79
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
	jeq .L88
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
.L86:
	rts
.L88:
	moveq #1,%d0
	jra .L86
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
	jcc .L92
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcc .L93
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L94
	add.l #-65529,%a0
	moveq #2,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
	jra .L90
.L92:
	moveq #1,%d0
.L90:
	rts
.L93:
	moveq #1,%d0
	jra .L90
.L94:
	moveq #1,%d0
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
	jls .L103
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
	sne %d0
	neg.b %d0
	and.l #255,%d0
	jra .L96
.L103:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	neg.b %d0
	and.l #255,%d0
.L96:
	rts
.L99:
	moveq #1,%d0
	jra .L96
.L100:
	moveq #1,%d0
	jra .L96
.L101:
	moveq #1,%d0
	jra .L96
.L102:
	moveq #0,%d0
	jra .L96
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	move.w #-48,%a0
	add.l 4(%sp),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L106
	moveq #32,%d0
	or.l 4(%sp),%d0
	move.w #-97,%a0
	add.l %d0,%a0
	moveq #5,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
.L104:
	rts
.L106:
	moveq #1,%d0
	jra .L104
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
	jne .L111
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L112
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L115
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
.L108:
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
.L111:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L108
.L112:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L108
.L115:
	moveq #0,%d0
	moveq #0,%d1
	jra .L108
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
	jne .L119
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L120
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L123
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
.L116:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L119:
	move.l %d2,%d0
	jra .L116
.L120:
	move.l %d3,%d0
	jra .L116
.L123:
	moveq #0,%d0
	jra .L116
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
	jeq .L126
	tst.l %d2
	jge .L132
	move.l %d4,%d1
	move.l %d5,%d0
.L124:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L126:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L127
	clr.b 27(%sp)
.L127:
	tst.b 27(%sp)
	jeq .L128
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L124
.L128:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L124
.L130:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L124
.L131:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L124
.L132:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L124
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
	jne .L139
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L140
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L135
	tst.l %d2
	jge .L141
	move.l %d3,%d0
	jra .L133
.L135:
	moveq #1,%d4
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L136
	clr.b %d4
.L136:
	tst.b %d4
	jeq .L138
	move.l %d3,%d2
.L138:
	move.l %d2,%d0
.L133:
	movem.l (%sp)+,#28
	rts
.L139:
	move.l %d3,%d0
	jra .L133
.L140:
	move.l %d2,%d0
	jra .L133
.L141:
	move.l %d2,%d0
	jra .L133
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
	jne .L157
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L158
	move.l %d3,%d1
	and.l #-2147483648,%d1
	move.l %a4,%d0
	and.l #-2147483648,%d0
	cmp.l %d0,%d1
	jeq .L148
	cmp.w #0,%a4
	jge .L149
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
.L149:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L142
.L157:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L142
.L158:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L142
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
	jlt .L150
	clr.b %d2
.L150:
	tst.b %d2
	jeq .L151
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L152:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L142:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L151:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L152
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
	jne .L165
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L166
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d4,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L161
	tst.l %d2
	jge .L167
	move.l %d2,%d1
	move.l %d3,%d0
.L159:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L161:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L162
	clr.b 27(%sp)
.L162:
	tst.b 27(%sp)
	jeq .L163
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L159
.L163:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L159
.L165:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L159
.L166:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L159
.L167:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L159
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
	jne .L174
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L175
	move.l %d3,%d1
	and.l #-2147483648,%d1
	move.l %d2,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L170
	tst.l %d3
	jge .L176
	move.l %d3,%d0
	jra .L168
.L170:
	moveq #1,%d4
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L171
	clr.b %d4
.L171:
	tst.b %d4
	jeq .L173
	move.l %d3,%d2
.L173:
	move.l %d2,%d0
.L168:
	movem.l (%sp)+,#28
	rts
.L174:
	move.l %d2,%d0
	jra .L168
.L175:
	move.l %d3,%d0
	jra .L168
.L176:
	move.l %d2,%d0
	jra .L168
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
	jne .L192
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L193
	move.l %a4,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L183
	cmp.w #0,%a4
	jge .L184
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
.L184:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L177
.L192:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L177
.L193:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L177
.L183:
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
	jlt .L185
	clr.b %d2
.L185:
	tst.b %d2
	jeq .L186
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
.L187:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L177:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L186:
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L187
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
	jeq .L197
	lea (s.0),%a0
	lea digits,%a1
.L196:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L196
.L195:
	clr.b (%a0)
	move.l #s.0,%d0
	move.l %d0,%a0
	rts
.L197:
	lea (s.0),%a0
	jra .L195
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
	jeq .L204
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	tst.l (%a0)
	jeq .L201
	move.l (%a0),%a1
	move.l %a0,4(%a1)
.L201:
	rts
.L204:
	clr.l 4(%a0)
	clr.l (%a0)
	jra .L201
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	tst.l (%a0)
	jeq .L206
	move.l (%a0),%a1
	move.l 4(%a0),4(%a1)
.L206:
	tst.l 4(%a0)
	jeq .L205
	move.l 4(%a0),%a1
	move.l (%a0),(%a1)
.L205:
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
	jeq .L209
	move.l %a4,%d3
	moveq #0,%d2
.L212:
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L214
	addq.l #1,%d2
	add.l %d5,%d3
	cmp.l %d2,%d4
	jne .L212
.L209:
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
.L208:
	move.l %d0,%a0
	movem.l (%sp)+,#7292
	rts
.L214:
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %a4,%d0
	jra .L208
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
	jeq .L219
	move.l 32(%sp),%d3
	moveq #0,%d2
.L218:
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L221
	addq.l #1,%d2
	add.l %d5,%d3
	cmp.l %d2,%d4
	jne .L218
	moveq #0,%d0
	jra .L215
.L221:
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 32(%sp),%d0
.L215:
	move.l %d0,%a0
	movem.l (%sp)+,#1148
	rts
.L219:
	moveq #0,%d0
	jra .L215
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	jmi .L224
.L223:
	rts
.L224:
	neg.l %d0
	jra .L223
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #56,-(%sp)
	move.l 16(%sp),%a3
	lea isspace,%a4
.L226:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L226
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L232
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L233
	moveq #1,%d1
.L227:
	addq.l #1,%a2
.L228:
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L234
	sub.l %a0,%a0
.L230:
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %d0,%d0
	add.l %d0,%a0
	move.b (%a2)+,%d0
	ext.w %d0
	move.l %a0,%a1
	sub.w %d0,%a1
	lea 48(%a1,%a0.l),%a0
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a1
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcc .L230
.L229:
	tst.l %d1
	jne .L225
	move.l %a0,%d0
	neg.l %d0
	move.l %d0,%a0
.L225:
	move.l %a0,%d0
	movem.l (%sp)+,#7168
	rts
.L232:
	moveq #0,%d1
	jra .L227
.L233:
	moveq #0,%d1
	jra .L228
.L234:
	sub.l %a0,%a0
	jra .L229
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	movem.l #56,-(%sp)
	move.l 16(%sp),%a3
	lea isspace,%a4
.L238:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L238
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L244
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L245
	moveq #1,%d1
.L239:
	addq.l #1,%a2
.L240:
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L246
	sub.l %a0,%a0
.L242:
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %d0,%d0
	add.l %d0,%a0
	move.b (%a2)+,%d0
	ext.w %d0
	move.l %a0,%a1
	sub.w %d0,%a1
	lea 48(%a1,%a0.l),%a0
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a1
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcc .L242
.L241:
	tst.l %d1
	jne .L237
	move.l %a0,%d0
	neg.l %d0
	move.l %d0,%a0
.L237:
	move.l %a0,%d0
	movem.l (%sp)+,#7168
	rts
.L244:
	moveq #0,%d1
	jra .L239
.L245:
	moveq #0,%d1
	jra .L240
.L246:
	sub.l %a0,%a0
	jra .L241
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #15416,-(%sp)
	move.l 32(%sp),%a3
	lea isspace,%a4
.L250:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L250
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L256
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L257
	move.w #1,%a1
.L251:
	addq.l #1,%a2
.L252:
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L258
	clr.l %d4
	clr.l %d5
.L254:
	move.l %d4,%d0
	move.l %d5,%d1
	add.l %d1,%d1
	addx.l %d0,%d0
	add.l %d1,%d1
	addx.l %d0,%d0
	add.l %d5,%d1
	addx.l %d4,%d0
	add.l %d1,%d1
	addx.l %d0,%d0
	move.b (%a2)+,%d2
	ext.w %d2
	move.w %d2,%a0
	move.l #-48,%d3
	add.l %a0,%d3
	smi %d2
	ext.w %d2
	ext.l %d2
	move.l %d0,%d4
	move.l %d1,%d5
	sub.l %d3,%d5
	subx.l %d2,%d4
	move.b (%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L254
.L253:
	cmp.w #0,%a1
	jne .L249
	neg.l %d5
	negx.l %d4
.L249:
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#7228
	rts
.L256:
	sub.l %a1,%a1
	jra .L251
.L257:
	sub.l %a1,%a1
	jra .L252
.L258:
	clr.l %d4
	clr.l %d5
	jra .L253
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
	movem.l #15920,-(%sp)
	move.l 32(%sp),%d6
	move.l 36(%sp),%d4
	move.l 40(%sp),%d2
	move.l 44(%sp),%d5
	move.l 48(%sp),%a2
	tst.l %d2
	jeq .L266
	lea __mulsi3,%a3
	jra .L265
.L269:
	lsr.l #1,%d2
.L264:
	tst.l %d2
	jeq .L268
.L265:
	move.l %d5,-(%sp)
	move.l %d2,%d0
	lsr.l #1,%d0
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	move.l %d4,%d3
	add.l %d0,%d3
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L269
	jle .L261
	move.l %d3,%d4
	add.l %d5,%d4
	move.l %d2,%d0
	lsr.l #1,%d0
	subq.l #1,%d2
	sub.l %d0,%d2
	jra .L264
.L268:
	moveq #0,%d3
.L261:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3196
	rts
.L266:
	moveq #0,%d3
	jra .L261
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
	jeq .L274
	lea __mulsi3,%a3
	jra .L273
.L272:
	asr.l #1,%d2
	jeq .L276
.L273:
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
	jeq .L270
	jle .L272
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	jra .L272
.L276:
	moveq #0,%d3
.L270:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
.L274:
	moveq #0,%d3
	jra .L270
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
	jlt .L280
.L279:
	rts
.L280:
	neg.l %d1
	negx.l %d0
	jra .L279
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
	jmi .L284
.L283:
	rts
.L284:
	neg.l %d0
	jra .L283
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
	jlt .L288
.L287:
	rts
.L288:
	neg.l %d1
	negx.l %d0
	jra .L287
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
	jeq .L295
.L292:
	move.l %a0,%d0
	cmp.l (%a0)+,%d1
	jeq .L291
	move.l %a0,%d0
	tst.l (%a0)
	jne .L292
.L291:
	move.l %d0,%a0
	tst.l (%a0)
	jeq .L296
.L290:
	move.l %d0,%a0
	rts
.L295:
	move.l %a0,%d0
	jra .L291
.L296:
	moveq #0,%d0
	jra .L290
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
	jne .L298
	move.l %a3,%a0
	move.l %a2,%a1
.L299:
	move.l %a1,%a2
	move.l %a0,%a3
	tst.l (%a0)+
	jeq .L298
	tst.l (%a1)+
	jeq .L298
	move.l %a0,%a3
	move.l %a1,%a2
	move.l (%a0),%d0
	cmp.l (%a1),%d0
	jeq .L299
.L298:
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L302
	sgt %d0
	neg.b %d0
	and.l #255,%d0
.L297:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L302:
	moveq #-1,%d0
	jra .L297
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l %d0,%a0
.L304:
	move.l (%a1)+,(%a0)
	tst.l (%a0)+
	jne .L304
	move.l %d0,%a0
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%a1
	tst.l (%a1)
	jeq .L309
	move.l %a1,%a0
.L308:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L308
.L307:
	move.l %a0,%d0
	sub.l %a1,%d0
	asr.l #2,%d0
	rts
.L309:
	move.l %a1,%a0
	jra .L307
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a3
	move.l 16(%sp),%a2
	move.l 20(%sp),%d0
	jeq .L312
	move.l %a3,%a0
	move.l %a2,%a1
.L313:
	move.l %a1,%a2
	move.l %a0,%a3
	cmpm.l (%a1)+,(%a0)+
	jne .L312
	tst.l -4(%a0)
	jeq .L312
	tst.l -4(%a1)
	jeq .L312
	subq.l #1,%d0
	move.l %a0,%a3
	move.l %a1,%a2
	jne .L313
.L312:
	tst.l %d0
	jeq .L316
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L317
	sgt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L311
.L316:
	moveq #0,%d0
.L311:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L317:
	moveq #-1,%d0
	jra .L311
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	jeq .L323
	move.l 4(%sp),%a0
.L320:
	move.l %a0,%d0
	cmp.l (%a0)+,%a1
	jeq .L319
	subq.l #1,%d1
	move.l %a0,%d0
	tst.l %d1
	jne .L320
.L319:
	tst.l %d1
	jeq .L324
.L318:
	move.l %d0,%a0
	rts
.L323:
	move.l 4(%sp),%d0
	jra .L319
.L324:
	moveq #0,%d0
	jra .L318
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a3
	move.l 16(%sp),%a2
	move.l 20(%sp),%d0
	jeq .L326
	move.l %a3,%a1
	move.l %a2,%a0
.L327:
	move.l %a0,%a2
	move.l %a1,%a3
	cmpm.l (%a0)+,(%a1)+
	jne .L326
	subq.l #1,%d0
	move.l %a1,%a3
	move.l %a0,%a2
	jne .L327
.L326:
	tst.l %d0
	jeq .L330
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L331
	sgt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L325
.L330:
	moveq #0,%d0
.L325:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L331:
	moveq #-1,%d0
	jra .L325
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
	jeq .L333
	move.l %d0,%a1
.L334:
	move.l (%a0)+,(%a1)+
	dbra %d1,.L334
	clr.w %d1
	subq.l #1,%d1
	jcc .L334
.L333:
	move.l %d0,%a0
	rts
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
	move.l %a2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
	cmp.l %d0,%a0
	jeq .L337
	move.l %d0,%a2
	sub.l %a0,%a2
	move.l %a1,%d1
	add.l %a1,%d1
	add.l %d1,%d1
	cmp.l %a2,%d1
	jhi .L338
	move.l %a1,%d1
	subq.l #1,%d1
	move.l %d0,%a2
	cmp.w #0,%a1
	jeq .L337
.L341:
	move.l (%a0)+,(%a2)+
	dbra %d1,.L341
	clr.w %d1
	subq.l #1,%d1
	jcc .L341
	jra .L337
.L338:
	cmp.w #0,%a1
	jeq .L337
	add.l %a1,%a1
	add.l %a1,%a1
	lea (%a0,%a1.l),%a2
	add.l %d0,%a1
.L340:
	move.l -(%a2),-(%a1)
	cmp.l %a2,%a0
	jne .L340
.L337:
	move.l %d0,%a0
	move.l (%sp)+,%a2
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
	jeq .L346
	move.l %d0,%a0
.L347:
	move.l %a1,(%a0)+
	dbra %d1,.L347
	clr.w %d1
	subq.l #1,%d1
	jcc .L347
.L346:
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
	jls .L350
	lea (%a1,%d0.l),%a2
	add.l %d0,%a0
	tst.l %d0
	jeq .L349
	subq.l #1,%a0
.L352:
	move.b -(%a2),(%a0)
	subq.l #1,%a0
	cmp.l %a1,%a2
	jne .L352
.L349:
	move.l (%sp)+,%a2
	rts
.L350:
	cmp.l %a1,%a0
	jeq .L349
	tst.l %d0
	jeq .L349
	add.l %a1,%d0
.L353:
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d0
	jne .L353
	jra .L349
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
	jlt .L357
	move.l %d3,%d0
	move.l %a0,%d1
	lsl.l %d1,%d0
	moveq #0,%d5
.L358:
	move.l %d2,%d1
	neg.l %d1
	moveq #63,%d6
	and.l %d1,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L359
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
.L360:
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L357:
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
	jra .L358
.L359:
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
	jra .L360
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
	jlt .L362
	move.l %d3,%d1
	move.l %a0,%d0
	lsr.l %d0,%d1
	moveq #0,%d5
.L363:
	move.l %d2,%d0
	neg.l %d0
	moveq #63,%d6
	and.l %d0,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L364
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
.L365:
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L362:
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
	jra .L363
.L364:
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
	jra .L365
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
.L380:
	btst %d0,%d1
	jne .L382
	addq.l #1,%d0
	moveq #32,%d2
	cmp.l %d0,%d2
	jne .L380
	moveq #0,%d0
	jra .L377
.L382:
	addq.l #1,%d0
.L377:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L386
	btst #0,%d1
	jne .L387
	moveq #1,%d0
.L385:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L385
.L383:
	rts
.L386:
	moveq #0,%d0
	jra .L383
.L387:
	moveq #1,%d0
	jra .L383
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
	jlt .L392
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L393
.L391:
	moveq #0,%d0
	move.b %d2,%d0
.L389:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L393:
	clr.b %d2
	jra .L391
.L392:
	moveq #1,%d0
	jra .L389
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
	jlt .L397
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L398
.L396:
	moveq #0,%d0
	move.b %d2,%d0
.L394:
	movem.l (%sp)+,#52
	rts
.L398:
	clr.b %d2
	jra .L396
.L397:
	moveq #1,%d0
	jra .L394
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
	jlt .L402
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
	jle .L403
.L401:
	moveq #0,%d0
	move.b %d2,%d0
.L399:
	movem.l (%sp)+,#60
	rts
.L403:
	clr.b %d2
	jra .L401
.L402:
	moveq #1,%d0
	jra .L399
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
	jne .L406
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	move.l %d4,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L406
	tst.l %d2
	jlt .L413
	move.l #0x40000000,%d3
.L408:
	lea __mulsf3,%a2
	jra .L410
.L413:
	move.l #0x3f000000,%d3
	jra .L408
.L409:
	move.l %d2,%d2
	jpl .L414
	addq.l #1,%d2
.L414:
	asr.l #1,%d2
	jeq .L406
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L410:
	btst #0,%d2
	jeq .L409
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L409
.L406:
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
	jne .L416
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
	jeq .L416
	tst.l %d6
	jlt .L423
	move.l #1073741824,%a2
	sub.l %a3,%a3
.L418:
	lea __muldf3,%a5
	jra .L420
.L423:
	move.l #1071644672,%a2
	sub.l %a3,%a3
	jra .L418
.L419:
	move.l %d6,%d6
	jpl .L424
	addq.l #1,%d6
.L424:
	asr.l #1,%d6
	jeq .L416
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
.L420:
	btst #0,%d6
	jeq .L419
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
	jra .L419
.L416:
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
	jne .L426
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
	jeq .L426
	tst.l %d2
	jlt .L433
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
.L428:
	lea __mulxf3,%a2
	jra .L430
.L433:
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
	jra .L428
.L429:
	move.l %d2,%d2
	jpl .L434
	addq.l #1,%d2
.L434:
	asr.l #1,%d2
	jeq .L426
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
.L430:
	btst #0,%d2
	jeq .L429
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
	jra .L429
.L426:
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
	jeq .L436
	move.l 20(%sp),%d2
	add.l %a0,%d2
	move.l %d0,%a1
.L437:
	move.b (%a1)+,%d1
	move.b (%a0)+,%d3
	eor.b %d3,%d1
	move.b %d1,-1(%a1)
	cmp.l %a0,%d2
	jne .L437
.L436:
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
	move.l %d3,%a1
	add.l %d0,%a1
	tst.l %d2
	jeq .L440
	move.l 20(%sp),%a2
	move.l %a1,%a0
.L441:
	move.l %a0,%a1
	move.b (%a2)+,%d1
	move.b %d1,(%a0)+
	jeq .L440
	move.l %a0,%a1
	subq.l #1,%d2
	jne .L441
.L440:
	tst.l %d2
	jne .L443
	clr.b (%a1)
.L443:
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
	jeq .L444
.L445:
	tst.b (%a0,%d0.l)
	jne .L447
.L444:
	rts
.L447:
	addq.l #1,%d0
	cmp.l %d0,%d1
	jne .L445
	jra .L444
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l 4(%sp),%a1
	move.l 8(%sp),%d0
	tst.b (%a1)
	jeq .L457
.L451:
	move.l %d0,%a0
.L454:
	tst.b (%a0)+
	jeq .L458
	move.b -1(%a0),%d1
	cmp.b (%a1),%d1
	jne .L454
.L452:
	move.l %a1,%a0
	move.l %a1,%d0
	rts
.L457:
	sub.l %a1,%a1
	jra .L452
.L458:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L451
	sub.l %a1,%a1
	jra .L452
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
	jra .L461
.L460:
	tst.b -1(%a0)
	jeq .L464
.L461:
	move.l %a0,%d2
	move.b (%a0)+,%d1
	ext.w %d1
	move.w %d1,%a1
	cmp.l %d3,%a1
	jne .L460
	move.l %d2,%d0
	jra .L460
.L464:
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
	move.l 28(%sp),%d2
	move.l 32(%sp),%a2
	move.l %a2,-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l %d0,%d3
	jeq .L465
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a3
	lea strchr,%a4
	lea strncmp,%a5
.L467:
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %a0,%d2
	jeq .L465
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L465
	addq.l #1,%d2
	jra .L467
.L465:
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
	jlt .L479
.L471:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L474
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L473
.L474:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#60
	rts
.L479:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L471
.L473:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d4
	move.l %d3,%d5
	move.l %d4,%d2
	move.l %d5,%d3
	jra .L474
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
	jeq .L484
	cmp.l 36(%sp),%d0
	jhi .L485
	cmp.l %a2,%d2
	jcs .L486
	move.l 40(%sp),%a3
	move.b (%a3)+,%d4
	move.l %d0,%d5
	subq.l #1,%d5
	lea memcmp,%a4
	jra .L483
.L482:
	cmp.l %d2,%a2
	jhi .L488
.L483:
	move.l %a2,%d3
	cmp.b (%a2)+,%d4
	jne .L482
	move.l %d5,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L482
	jra .L480
.L488:
	moveq #0,%d3
.L480:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#7228
	rts
.L484:
	move.l %a2,%d3
	jra .L480
.L485:
	moveq #0,%d3
	jra .L480
.L486:
	moveq #0,%d3
	jra .L480
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
	jlt .L514
	moveq #0,%d7
.L491:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L511
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
	lea __gedf2,%a4
.L495:
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
	jge .L495
.L496:
	move.l 60(%sp),%a0
	move.l %d6,(%a0)
	tst.l %d7
	jeq .L500
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,40(%sp)
	move.l %d3,44(%sp)
	move.l 40(%sp),%d2
	move.l 44(%sp),%d3
.L500:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#15612
	addq.l #8,%sp
	rts
.L514:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	moveq #1,%d7
	jra .L491
.L511:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L512
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L513
	moveq #0,%d6
	lea __adddf3,%a5
	move.l #1071644672,%d4
	clr.l %d5
	lea __ltdf2,%a4
.L499:
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
	jlt .L499
	jra .L496
.L512:
	moveq #0,%d6
	jra .L496
.L513:
	moveq #0,%d6
	jra .L496
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
	jeq .L518
	clr.l 32(%sp)
	clr.l 36(%sp)
.L517:
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
	jne .L517
.L515:
	move.l 32(%sp),%d0
	move.l 36(%sp),%d1
	movem.l (%sp)+,#252
	lea (16,%sp),%sp
	rts
.L518:
	clr.l 32(%sp)
	clr.l 36(%sp)
	jra .L515
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
	jls .L522
	moveq #32,%d0
	moveq #1,%d2
.L521:
	tst.l %d1
	jlt .L522
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L522
	subq.l #1,%d0
	jne .L521
.L522:
	moveq #0,%d0
	tst.l %d2
	jne .L524
.L525:
	tst.l 16(%sp)
	jne .L534
.L520:
	move.l (%sp)+,%d2
	rts
.L527:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L525
.L524:
	cmp.l %a0,%d1
	jhi .L527
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L527
.L534:
	move.l %a0,%d0
	jra .L520
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
	jeq .L537
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
.L535:
	move.l (%sp)+,%d2
	rts
.L537:
	moveq #7,%d0
	jra .L535
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
	jeq .L540
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
.L538:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L540:
	moveq #63,%d0
	jra .L538
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
	jeq .L544
	moveq #0,%d0
.L543:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L543
.L541:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L544:
	moveq #0,%d0
	jra .L541
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
	jhi .L547
	move.l %d3,%a0
	add.l %d0,%a0
	cmp.l %a0,%d4
	jhi .L547
	tst.l %d0
	jeq .L546
	move.l %d3,%a1
	add.l %d0,%a1
	move.l %d4,%a0
	add.l %d0,%a0
.L553:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L553
	jra .L546
.L547:
	tst.l %d2
	jeq .L550
	move.l %d3,%a0
	move.l %d4,%a1
	lsl.l #3,%d2
	add.l %d3,%d2
.L551:
	move.l (%a0)+,%d5
	move.l (%a0)+,%d6
	move.l %d5,(%a1)+
	move.l %d6,(%a1)+
	cmp.l %a0,%d2
	jne .L551
.L550:
	cmp.l %d0,%d1
	jcc .L546
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L552:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L552
.L546:
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
	jhi .L558
	lea (%a3,%d1.l),%a0
	cmp.l %a0,%a2
	jhi .L558
	tst.l %d1
	jeq .L557
	lea (%a3,%d1.l),%a1
	add.l %d1,%a2
.L563:
	move.b -(%a1),-(%a2)
	cmp.l %a1,%a3
	jne .L563
	jra .L557
.L558:
	tst.l %d0
	jeq .L561
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
.L562:
	move.w (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L562
.L561:
	btst #0,%d1
	jeq .L557
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L557:
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
	jhi .L567
	move.l %d3,%a0
	add.l %d0,%a0
	cmp.l %a0,%d4
	jhi .L567
	tst.l %d0
	jeq .L566
	move.l %d3,%a1
	add.l %d0,%a1
	move.l %d4,%a0
	add.l %d0,%a0
.L573:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L573
	jra .L566
.L567:
	tst.l %d2
	jeq .L570
	move.l %d3,%a0
	move.l %d4,%a2
	add.l %d2,%d2
	add.l %d2,%d2
	move.l %d2,%a1
	add.l %d3,%a1
.L571:
	move.l (%a0)+,(%a2)+
	cmp.l %a0,%a1
	jne .L571
.L570:
	cmp.l %d0,%d1
	jcc .L566
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L572:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L572
.L566:
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
.L585:
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L583
	addq.l #1,%d0
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L585
.L583:
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
	btst %d0,%d1
	jne .L587
	addq.l #1,%d0
	moveq #16,%d2
	cmp.l %d0,%d2
	jne .L589
.L587:
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
	jge .L597
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L591:
	move.l (%sp)+,%d2
	rts
.L597:
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L591
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
.L599:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L599
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
.L602:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L602
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
	jeq .L607
	moveq #0,%d0
.L606:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L606
.L604:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L607:
	moveq #0,%d0
	jra .L604
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
	jeq .L612
	tst.l %d3
	jeq .L613
	moveq #0,%d0
.L611:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L611
.L609:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L612:
	moveq #0,%d0
	jra .L609
.L613:
	moveq #0,%d0
	jra .L609
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
	jls .L617
	moveq #32,%d0
	moveq #1,%d2
.L616:
	tst.l %d1
	jlt .L617
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L617
	subq.l #1,%d0
	jne .L616
.L617:
	moveq #0,%d0
	tst.l %d2
	jne .L619
.L620:
	tst.l 16(%sp)
	jne .L629
.L615:
	move.l (%sp)+,%d2
	rts
.L622:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L620
.L619:
	cmp.l %a0,%d1
	jhi .L622
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L622
.L629:
	move.l %a0,%d0
	jra .L615
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
	jlt .L633
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L634
.L632:
	moveq #0,%d0
	move.b %d2,%d0
.L630:
	movem.l (%sp)+,#28
	rts
.L634:
	clr.b %d2
	jra .L632
.L633:
	moveq #-1,%d0
	jra .L630
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
	jlt .L638
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L639
.L637:
	moveq #0,%d0
	move.b %d6,%d0
.L635:
	movem.l (%sp)+,#124
	rts
.L639:
	clr.b %d6
	jra .L637
.L638:
	moveq #-1,%d0
	jra .L635
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
	jmi .L650
	sub.l %a0,%a0
.L643:
	tst.l %d2
	jeq .L648
	moveq #32,%d4
	moveq #0,%d0
.L645:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L644
	subq.b #1,%d4
	jne .L645
.L644:
	cmp.w #0,%a0
	jeq .L642
	neg.l %d0
.L642:
	movem.l (%sp)+,#28
	rts
.L650:
	neg.l %d2
	move.w #1,%a0
	jra .L643
.L648:
	moveq #0,%d0
	jra .L644
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
	jlt .L656
	moveq #0,%d2
.L652:
	tst.l %d1
	jlt .L657
.L653:
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d2
	jeq .L651
	neg.l %d0
.L651:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L656:
	neg.l %d0
	moveq #1,%d2
	jra .L652
.L657:
	neg.l %d1
	moveq #1,%d3
	sub.l %d2,%d3
	move.l %d3,%d2
	jra .L653
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
	jlt .L663
	moveq #0,%d3
.L659:
	move.l %d2,%d1
	jmi .L664
.L660:
	pea 1.w
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d3
	jeq .L658
	neg.l %d0
.L658:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L663:
	neg.l %d0
	moveq #1,%d3
	jra .L659
.L664:
	neg.l %d1
	jra .L660
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
	jcc .L667
	moveq #16,%d0
	moveq #1,%d2
.L666:
	tst.w %d1
	jlt .L667
	add.w %d1,%d1
	add.w %d2,%d2
	cmp.w %a0,%d1
	jcc .L667
	subq.l #1,%d0
	jne .L666
.L667:
	clr.w %d0
	tst.w %d2
	jne .L669
.L670:
	tst.l 16(%sp)
	jne .L679
.L665:
	move.l (%sp)+,%d2
	rts
.L672:
	lsr.w #1,%d2
	lsr.w #1,%d1
	tst.w %d2
	jeq .L670
.L669:
	cmp.w %a0,%d1
	jhi .L672
	sub.w %d1,%a0
	or.w %d2,%d0
	jra .L672
.L679:
	move.w %a0,%d0
	jra .L665
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
	jls .L682
	moveq #32,%d0
	moveq #1,%d2
.L681:
	tst.l %d1
	jlt .L682
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L682
	subq.l #1,%d0
	jne .L681
.L682:
	moveq #0,%d0
	tst.l %d2
	jne .L684
.L685:
	tst.l 16(%sp)
	jne .L694
.L680:
	move.l (%sp)+,%d2
	rts
.L687:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L685
.L684:
	cmp.l %a0,%d1
	jhi .L687
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L687
.L694:
	move.l %a0,%d0
	jra .L680
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
	jeq .L696
	moveq #0,%d1
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
.L698:
	movem.l (%sp)+,#28
	rts
.L696:
	tst.l %d2
	jeq .L699
	move.l %d3,%d1
	lsl.l %d2,%d1
	lsl.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsr.l %d4,%d3
	or.l %d3,%d0
	jra .L698
.L699:
	move.l %d3,%d1
	jra .L698
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
	jeq .L701
	move.l %d1,%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
.L703:
	movem.l (%sp)+,#28
	rts
.L701:
	tst.l %d2
	jeq .L704
	move.l %d1,%d0
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L703
.L704:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L703
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
	move.l 4(%sp),%d1
	move.l 8(%sp),%a1
	move.l 12(%sp),%d0
	move.l 16(%sp),%a0
	cmp.l %d1,%d0
	jgt .L710
	jlt .L711
	cmp.l %a1,%a0
	jhi .L712
	jcs .L713
	moveq #1,%d0
	jra .L709
.L710:
	moveq #0,%d0
.L709:
	rts
.L711:
	moveq #2,%d0
	jra .L709
.L712:
	moveq #0,%d0
	jra .L709
.L713:
	moveq #2,%d0
	jra .L709
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
	jeq .L717
	moveq #0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	lsr.l %d2,%d1
.L719:
	movem.l (%sp)+,#28
	rts
.L717:
	tst.l %d2
	jeq .L720
	move.l %d1,%d0
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L719
.L720:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L719
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
	jra .L731
.L729:
	move.l %d4,%d4
	jpl .L733
	addq.l #1,%d4
.L733:
	asr.l #1,%d4
	jeq .L730
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
.L731:
	btst #0,%d4
	jeq .L729
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
	jra .L729
.L730:
	cmp.w #0,%a6
	jeq .L728
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
.L728:
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
	jra .L737
.L735:
	move.l %d2,%d2
	jpl .L739
	addq.l #1,%d2
.L739:
	asr.l #1,%d2
	jeq .L736
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L737:
	btst #0,%d2
	jeq .L735
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L735
.L736:
	tst.l %d5
	jeq .L734
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	move.l %d0,%d4
.L734:
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
	jhi .L742
	jcs .L743
	cmp.l %a1,%a0
	jhi .L744
	jcs .L745
	moveq #1,%d0
	jra .L741
.L742:
	moveq #0,%d0
.L741:
	rts
.L743:
	moveq #2,%d0
	jra .L741
.L744:
	moveq #0,%d0
	jra .L741
.L745:
	moveq #2,%d0
	jra .L741
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
