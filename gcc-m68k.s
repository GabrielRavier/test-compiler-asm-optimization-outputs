#NO_APP
	.file	"mini-libc.c"
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	move.l %a2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	cmp.l %d0,%d1
	jcc .L2
	move.l 16(%sp),%a0
	add.l %d1,%a0
	move.l 16(%sp),%a1
	add.l %d0,%a1
	tst.l 16(%sp)
	jeq .L3
	subq.l #1,%a1
.L4:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
	cmp.l %d1,%a0
	jne .L4
.L3:
	move.l %d0,%a0
	move.l (%sp)+,%a2
	rts
.L2:
	cmp.l %d0,%d1
	jeq .L3
	tst.l 16(%sp)
	jeq .L3
	move.l %d0,%a2
	move.l 16(%sp),%a1
	add.l %d1,%a1
	move.l %d1,%a0
.L5:
	move.b (%a0)+,(%a2)+
	cmp.l %a0,%a1
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
	jeq .L9
	subq.l #1,%a0
	move.l %a1,%d0
	cmp.w #0,%a0
	jne .L10
.L9:
	cmp.w #0,%a0
	jeq .L14
	addq.l #1,%d0
.L12:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L13:
	move.l 12(%sp),%d0
	jra .L9
.L14:
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
	tst.l %d1
	jeq .L20
	move.l 12(%sp),%a1
.L17:
	move.l %a1,%d0
	moveq #0,%d2
	move.b (%a1)+,%d2
	cmp.l %d3,%d2
	jeq .L16
	move.l %a1,%d0
	subq.l #1,%d1
	jne .L17
.L16:
	tst.l %d1
	jeq .L22
.L19:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L20:
	move.l 12(%sp),%d0
	jra .L16
.L22:
	moveq #0,%d0
	jra .L19
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
	jne .L24
	subq.l #1,%d0
	move.l %a1,%a3
	move.l %a0,%a2
	jne .L25
.L24:
	tst.l %d0
	jeq .L29
	moveq #0,%d0
	move.b (%a3),%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
.L27:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L28:
	move.l 16(%sp),%a2
	move.l 12(%sp),%a3
	jra .L24
.L29:
	moveq #0,%d0
	jra .L27
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a0
	tst.l 12(%sp)
	jeq .L31
	move.l %d0,%a1
	move.l 12(%sp),%d1
	add.l %a0,%d1
.L32:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d1
	jne .L32
.L31:
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
.L35:
	moveq #-1,%d2
	cmp.l %d1,%d2
	jeq .L39
	moveq #0,%d2
	move.b (%a0,%d1.l),%d2
	move.l %d1,%a1
	subq.l #1,%a1
	cmp.l %d0,%d2
	jeq .L40
	move.l %a1,%d1
	jra .L35
.L40:
	move.l %a0,%d0
	add.l %d1,%d0
	jra .L36
.L39:
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
	move.l 8(%sp),%d0
	moveq #0,%d2
	move.b 15(%sp),%d2
	move.l %d0,%a0
	tst.b (%a0)
	jeq .L50
.L51:
	move.l %a0,%d0
	moveq #0,%d1
	move.b (%a0)+,%d1
	cmp.l %d2,%d1
	jeq .L50
	move.l %a0,%d0
	tst.b (%a0)
	jne .L51
.L50:
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
.L55:
	move.l %a1,%d0
	move.b (%a1)+,%d1
	ext.w %d1
	move.w %d1,%a2
	cmp.l %a0,%a2
	jeq .L54
	tst.b -1(%a1)
	jne .L55
	moveq #0,%d0
.L54:
	move.l %d0,%a0
	move.l (%sp)+,%a2
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
	movem.l #56,-(%sp)
	move.l 16(%sp),%a2
	move.l 24(%sp),%d0
	jeq .L72
	tst.b (%a2)
	jeq .L73
	move.l 20(%sp),%a1
	move.l %a2,%a0
	lea -1(%a2,%d0.l),%a4
.L70:
	move.l %a1,%a3
	move.l %a0,%a2
	tst.b (%a1)+
	jeq .L69
	cmp.l %a0,%a4
	jeq .L69
	move.b (%a0)+,%d0
	cmp.b -1(%a1),%d0
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
.L68:
	movem.l (%sp)+,#7168
	rts
.L73:
	move.l 20(%sp),%a3
	jra .L69
.L72:
	moveq #0,%d0
	jra .L68
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	moveq #1,%d0
	cmp.l 16(%sp),%d0
	jge .L74
	move.l 16(%sp),%d0
	subq.l #2,%d0
	moveq #-2,%d1
	and.l %d1,%d0
	lea 2(%a0,%d0.l),%a2
	move.l 12(%sp),%a1
.L76:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%a2
	jne .L76
.L74:
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
	jeq .L82
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	and.l #255,%d0
.L81:
	rts
.L82:
	moveq #1,%d0
	jra .L81
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
	neg.b %d0
	and.l #255,%d0
.L84:
	rts
.L85:
	moveq #1,%d0
	jra .L84
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
	jeq .L92
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	and.l #255,%d0
.L91:
	rts
.L92:
	moveq #1,%d0
	jra .L91
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
	neg.b %d0
	and.l #255,%d0
	jra .L95
.L96:
	moveq #1,%d0
.L95:
	rts
.L97:
	moveq #1,%d0
	jra .L95
.L98:
	moveq #1,%d0
	jra .L95
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
	neg.b %d0
	and.l #255,%d0
	jra .L102
.L107:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	neg.b %d0
	and.l #255,%d0
.L102:
	rts
.L103:
	moveq #1,%d0
	jra .L102
.L104:
	moveq #1,%d0
	jra .L102
.L105:
	moveq #1,%d0
	jra .L102
.L106:
	moveq #0,%d0
	jra .L102
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
	neg.b %d0
	and.l #255,%d0
.L109:
	rts
.L110:
	moveq #1,%d0
	jra .L109
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
.L113:
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
.L115:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L113
.L116:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L113
.L119:
	moveq #0,%d0
	moveq #0,%d1
	jra .L113
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
.L121:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L123:
	move.l %d2,%d0
	jra .L121
.L124:
	move.l %d3,%d0
	jra .L121
.L127:
	moveq #0,%d0
	jra .L121
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
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d4,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L130
	tst.l %d2
	jge .L136
	move.l %d4,%d1
	move.l %d5,%d0
.L129:
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
	jlt .L131
	clr.b 27(%sp)
.L131:
	tst.b 27(%sp)
	jeq .L132
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L129
.L132:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L129
.L134:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L129
.L135:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L129
.L136:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L129
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
	jne .L143
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L144
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L139
	tst.l %d2
	jge .L145
	move.l %d3,%d0
	jra .L138
.L139:
	moveq #1,%d4
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L140
	clr.b %d4
.L140:
	tst.b %d4
	jeq .L142
	move.l %d3,%d2
.L142:
	move.l %d2,%d0
.L138:
	movem.l (%sp)+,#28
	rts
.L143:
	move.l %d3,%d0
	jra .L138
.L144:
	move.l %d2,%d0
	jra .L138
.L145:
	move.l %d2,%d0
	jra .L138
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
	jne .L162
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L163
	move.l %a4,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L152
	cmp.w #0,%a4
	jge .L157
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L153:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L146
.L162:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L146
.L163:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L146
.L157:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L153
.L152:
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
	jlt .L154
	clr.b %d2
.L154:
	tst.b %d2
	jeq .L155
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L156:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L146:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L155:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L156
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
	jne .L170
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L171
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d4,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L166
	tst.l %d2
	jge .L172
	move.l %d2,%d1
	move.l %d3,%d0
.L165:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L166:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L167
	clr.b 27(%sp)
.L167:
	tst.b 27(%sp)
	jeq .L168
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L165
.L168:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L165
.L170:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L165
.L171:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L165
.L172:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L165
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
	jne .L179
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L180
	move.l %d3,%d1
	and.l #-2147483648,%d1
	move.l %d2,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L175
	tst.l %d3
	jge .L181
	move.l %d3,%d0
	jra .L174
.L175:
	moveq #1,%d4
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L176
	clr.b %d4
.L176:
	tst.b %d4
	jeq .L178
	move.l %d3,%d2
.L178:
	move.l %d2,%d0
.L174:
	movem.l (%sp)+,#28
	rts
.L179:
	move.l %d2,%d0
	jra .L174
.L180:
	move.l %d3,%d0
	jra .L174
.L181:
	move.l %d2,%d0
	jra .L174
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
	jne .L198
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
	move.l %a4,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L188
	cmp.w #0,%a4
	jge .L193
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
.L189:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L182
.L198:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L182
.L199:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L182
.L193:
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L189
.L188:
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
	jlt .L190
	clr.b %d2
.L190:
	tst.b %d2
	jeq .L191
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
.L192:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L182:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L191:
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L192
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
	jeq .L203
	lea (s.0),%a0
	lea digits,%a1
.L202:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L202
.L201:
	clr.b (%a0)
	move.l #s.0,%d0
	move.l %d0,%a0
	rts
.L203:
	lea (s.0),%a0
	jra .L201
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
	jeq .L210
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	tst.l (%a0)
	jeq .L207
	move.l (%a0),%a1
	move.l %a0,4(%a1)
.L207:
	rts
.L210:
	clr.l 4(%a0)
	clr.l (%a0)
	jra .L207
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	tst.l (%a0)
	jeq .L212
	move.l (%a0),%a1
	move.l 4(%a0),4(%a1)
.L212:
	tst.l 4(%a0)
	jeq .L211
	move.l 4(%a0),%a1
	move.l (%a0),(%a1)
.L211:
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
	jeq .L215
	move.l %a4,%d3
	moveq #0,%d2
.L218:
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L220
	addq.l #1,%d2
	add.l %d5,%d3
	cmp.l %d2,%d4
	jne .L218
.L215:
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
.L217:
	move.l %d0,%a0
	movem.l (%sp)+,#7292
	rts
.L220:
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %a4,%d0
	jra .L217
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
	jeq .L225
	move.l 32(%sp),%d3
	moveq #0,%d2
.L224:
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L227
	addq.l #1,%d2
	add.l %d5,%d3
	cmp.l %d2,%d4
	jne .L224
	moveq #0,%d0
	jra .L222
.L227:
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 32(%sp),%d0
.L222:
	move.l %d0,%a0
	movem.l (%sp)+,#1148
	rts
.L225:
	moveq #0,%d0
	jra .L222
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	jmi .L230
.L229:
	rts
.L230:
	neg.l %d0
	jra .L229
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #56,-(%sp)
	move.l 16(%sp),%a3
	lea isspace,%a4
.L232:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L232
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L238
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L239
	moveq #1,%d1
.L233:
	addq.l #1,%a2
.L234:
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L240
	sub.l %a0,%a0
.L236:
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
	jcc .L236
.L235:
	tst.l %d1
	jne .L241
	move.l %a0,%d0
	neg.l %d0
.L237:
	movem.l (%sp)+,#7168
	rts
.L238:
	moveq #0,%d1
	jra .L233
.L239:
	moveq #0,%d1
	jra .L234
.L240:
	sub.l %a0,%a0
	jra .L235
.L241:
	move.l %a0,%d0
	jra .L237
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
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L253
	sub.l %a0,%a0
.L249:
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
	jcc .L249
.L248:
	tst.l %d1
	jne .L254
	move.l %a0,%d0
	neg.l %d0
.L250:
	movem.l (%sp)+,#7168
	rts
.L251:
	moveq #0,%d1
	jra .L246
.L252:
	moveq #0,%d1
	jra .L247
.L253:
	sub.l %a0,%a0
	jra .L248
.L254:
	move.l %a0,%d0
	jra .L250
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #12344,-(%sp)
	move.l 24(%sp),%a3
	lea isspace,%a4
.L258:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L258
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L264
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L265
	move.w #1,%a1
.L259:
	addq.l #1,%a2
.L260:
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L266
	clr.l %d2
	clr.l %d3
.L262:
	move.l %d2,%d0
	move.l %d3,%d1
	add.l %d1,%d1
	addx.l %d0,%d0
	add.l %d1,%d1
	addx.l %d0,%d0
	add.l %d1,%d3
	addx.l %d0,%d2
	add.l %d3,%d3
	addx.l %d2,%d2
	move.b (%a2)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l #-48,%d1
	add.l %a0,%d1
	smi %d0
	ext.w %d0
	ext.l %d0
	sub.l %d1,%d3
	subx.l %d0,%d2
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L262
.L261:
	cmp.w #0,%a1
	jne .L267
	move.l %d2,%d0
	move.l %d3,%d1
	neg.l %d1
	negx.l %d0
.L263:
	movem.l (%sp)+,#7180
	rts
.L264:
	sub.l %a1,%a1
	jra .L259
.L265:
	sub.l %a1,%a1
	jra .L260
.L266:
	clr.l %d2
	clr.l %d3
	jra .L261
.L267:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L263
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
	jeq .L275
	lea __mulsi3,%a3
	jra .L274
.L279:
	lsr.l #1,%d2
.L273:
	tst.l %d2
	jeq .L278
.L274:
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
	jlt .L279
	jle .L276
	move.l %d3,%d4
	add.l %d5,%d4
	move.l %d2,%d0
	lsr.l #1,%d0
	subq.l #1,%d2
	sub.l %d0,%d2
	jra .L273
.L278:
	moveq #0,%d0
.L271:
	move.l %d0,%a0
	movem.l (%sp)+,#3196
	rts
.L275:
	moveq #0,%d0
	jra .L271
.L276:
	move.l %d3,%d0
	jra .L271
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d6
	move.l 48(%sp),%d4
	move.l 52(%sp),%a2
	move.l 56(%sp),%d7
	move.l 44(%sp),%d2
	jeq .L284
	move.l 40(%sp),%d5
	lea __mulsi3,%a3
	jra .L283
.L282:
	asr.l #1,%d2
	jeq .L287
.L283:
	move.l %d4,-(%sp)
	move.l %d2,%d0
	asr.l #1,%d0
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	move.l %d5,%d3
	add.l %d0,%d3
	move.l %d7,-(%sp)
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L285
	jle .L282
	move.l %d3,%d5
	add.l %d4,%d5
	subq.l #1,%d2
	jra .L282
.L287:
	moveq #0,%d0
	jra .L281
.L284:
	moveq #0,%d0
	jra .L281
.L285:
	move.l %d3,%d0
.L281:
	move.l %d0,%a0
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
	jlt .L291
.L290:
	rts
.L291:
	neg.l %d1
	negx.l %d0
	jra .L290
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
	jmi .L295
.L294:
	rts
.L295:
	neg.l %d0
	jra .L294
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
	jlt .L299
.L298:
	rts
.L299:
	neg.l %d1
	negx.l %d0
	jra .L298
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
	move.l 8(%sp),%d0
	tst.l (%a0)
	jeq .L302
	move.l %a0,%a1
.L303:
	move.l %a1,%a0
	cmp.l (%a1)+,%d0
	jeq .L302
	move.l %a1,%a0
	tst.l (%a1)
	jne .L303
.L302:
	tst.l (%a0)
	jeq .L307
	move.l %a0,%d0
.L305:
	move.l %d0,%a0
	rts
.L307:
	moveq #0,%d0
	jra .L305
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
	jne .L309
	move.l %a3,%a0
	move.l %a2,%a1
.L310:
	move.l %a1,%a2
	move.l %a0,%a3
	tst.l (%a0)+
	jeq .L309
	tst.l (%a1)+
	jeq .L309
	move.l %a0,%a3
	move.l %a1,%a2
	move.l (%a0),%d0
	cmp.l (%a1),%d0
	jeq .L310
.L309:
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L313
	sgt %d0
	neg.b %d0
	and.l #255,%d0
.L312:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L313:
	moveq #-1,%d0
	jra .L312
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l %d0,%a0
.L315:
	move.l (%a1)+,(%a0)
	tst.l (%a0)+
	jne .L315
	move.l %d0,%a0
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%a1
	tst.l (%a1)
	jeq .L320
	move.l %a1,%a0
.L319:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L319
.L318:
	move.l %a0,%d0
	sub.l %a1,%d0
	asr.l #2,%d0
	rts
.L320:
	move.l %a1,%a0
	jra .L318
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
	jeq .L323
	move.l %a3,%a0
	move.l %a2,%a1
.L324:
	move.l %a1,%a2
	move.l %a0,%a3
	cmpm.l (%a1)+,(%a0)+
	jne .L323
	tst.l -4(%a0)
	jeq .L323
	tst.l -4(%a1)
	jeq .L323
	subq.l #1,%d0
	move.l %a0,%a3
	move.l %a1,%a2
	jne .L324
.L323:
	tst.l %d0
	jeq .L327
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L328
	sgt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L326
.L327:
	moveq #0,%d0
.L326:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L328:
	moveq #-1,%d0
	jra .L326
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	jeq .L330
	move.l %d0,%a1
.L331:
	move.l %a1,%d0
	cmp.l (%a1)+,%a0
	jeq .L330
	subq.l #1,%d1
	move.l %a1,%d0
	tst.l %d1
	jne .L331
.L330:
	tst.l %d1
	jeq .L335
.L333:
	move.l %d0,%a0
	rts
.L335:
	moveq #0,%d0
	jra .L333
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
	jeq .L337
	move.l %a3,%a1
	move.l %a2,%a0
.L338:
	move.l %a0,%a2
	move.l %a1,%a3
	cmpm.l (%a0)+,(%a1)+
	jne .L337
	subq.l #1,%d0
	move.l %a1,%a3
	move.l %a0,%a2
	jne .L338
.L337:
	tst.l %d0
	jeq .L341
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L342
	sgt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L340
.L341:
	moveq #0,%d0
.L340:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L342:
	moveq #-1,%d0
	jra .L340
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%a0
	move.l 16(%sp),%d1
	move.l %d1,%d2
	subq.l #1,%d2
	tst.l %d1
	jeq .L344
	move.l %d0,%a1
	move.l %d2,%d1
.L345:
	move.l (%a0)+,(%a1)+
	dbra %d1,.L345
	clr.w %d1
	subq.l #1,%d1
	jcc .L345
.L344:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
	move.l %a2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%a1
	move.l 16(%sp),%d1
	cmp.l %d0,%a1
	jeq .L348
	move.l %d0,%a2
	sub.l %a1,%a2
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%a0
	cmp.l %a2,%a0
	jhi .L349
	move.l %d1,%a2
	subq.l #1,%a2
	tst.l %d1
	jeq .L348
	move.l %d0,%a0
	move.l %a2,%d1
.L352:
	move.l (%a1)+,(%a0)+
	dbra %d1,.L352
	clr.w %d1
	subq.l #1,%d1
	jcc .L352
	jra .L348
.L349:
	tst.l %d1
	jeq .L348
	add.l %d1,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	lea (%a1,%a0.l),%a2
	add.l %d0,%a0
.L351:
	move.l -(%a2),-(%a0)
	cmp.l %a2,%a1
	jne .L351
.L348:
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
	move.l 12(%sp),%d1
	move.l %d1,%a0
	subq.l #1,%a0
	jeq .L356
	move.l %a0,%d1
	move.l %d0,%a0
.L357:
	move.l %a1,(%a0)+
	dbra %d1,.L357
	clr.w %d1
	subq.l #1,%d1
	jcc .L357
.L356:
	move.l %d0,%a0
	rts
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	cmp.l %d0,%a0
	jls .L360
	move.l %d0,%a1
	add.l %d1,%a1
	add.l %d1,%a0
	tst.l %d1
	jeq .L359
	subq.l #1,%a0
.L362:
	move.b -(%a1),(%a0)
	subq.l #1,%a0
	cmp.l %d0,%a1
	jne .L362
.L359:
	rts
.L360:
	cmp.l %d0,%a0
	jeq .L359
	tst.l %d1
	jeq .L359
	add.l %d0,%d1
	move.l %d0,%a1
.L363:
	move.b (%a1)+,(%a0)+
	cmp.l %a1,%d1
	jne .L363
	jra .L359
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
	jlt .L367
	move.l %d3,%d0
	move.l %a0,%d1
	lsl.l %d1,%d0
	moveq #0,%d5
.L368:
	move.l %d2,%d1
	neg.l %d1
	moveq #63,%d6
	and.l %d1,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L369
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
.L370:
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L367:
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
	jra .L368
.L369:
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
	jra .L370
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
	jlt .L372
	move.l %d3,%d1
	move.l %a0,%d0
	lsr.l %d0,%d1
	moveq #0,%d5
.L373:
	move.l %d2,%d0
	neg.l %d0
	moveq #63,%d6
	and.l %d0,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L374
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
.L375:
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L372:
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
	jra .L373
.L374:
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
	jra .L375
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
.L390:
	btst %d0,%d1
	jne .L392
	addq.l #1,%d0
	moveq #32,%d2
	cmp.l %d0,%d2
	jne .L390
	moveq #0,%d0
	jra .L389
.L392:
	addq.l #1,%d0
.L389:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L396
	btst #0,%d1
	jne .L397
	moveq #1,%d0
.L395:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L395
.L394:
	rts
.L396:
	moveq #0,%d0
	jra .L394
.L397:
	moveq #1,%d0
	jra .L394
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
	jlt .L402
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L403
.L401:
	moveq #0,%d0
	move.b %d2,%d0
.L400:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L403:
	clr.b %d2
	jra .L401
.L402:
	moveq #1,%d0
	jra .L400
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
	jlt .L407
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L408
.L406:
	moveq #0,%d0
	move.b %d2,%d0
.L405:
	movem.l (%sp)+,#52
	rts
.L408:
	clr.b %d2
	jra .L406
.L407:
	moveq #1,%d0
	jra .L405
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
	jlt .L412
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
	jle .L413
.L411:
	moveq #0,%d0
	move.b %d2,%d0
.L410:
	movem.l (%sp)+,#60
	rts
.L413:
	clr.b %d2
	jra .L411
.L412:
	moveq #1,%d0
	jra .L410
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
	jne .L416
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	move.l %d4,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L416
	tst.l %d2
	jlt .L423
	move.l #0x40000000,%d3
.L418:
	lea __mulsf3,%a2
	jra .L420
.L423:
	move.l #0x3f000000,%d3
	jra .L418
.L419:
	move.l %d2,%d2
	jpl .L424
	addq.l #1,%d2
.L424:
	asr.l #1,%d2
	jeq .L416
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L420:
	btst #0,%d2
	jeq .L419
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L419
.L416:
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
	jne .L426
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
	jeq .L426
	tst.l %d6
	jlt .L433
	move.l #1073741824,%a2
	sub.l %a3,%a3
.L428:
	lea __muldf3,%a5
	jra .L430
.L433:
	move.l #1071644672,%a2
	sub.l %a3,%a3
	jra .L428
.L429:
	move.l %d6,%d6
	jpl .L434
	addq.l #1,%d6
.L434:
	asr.l #1,%d6
	jeq .L426
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
.L430:
	btst #0,%d6
	jeq .L429
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
	jra .L429
.L426:
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
	jne .L436
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
	jeq .L436
	tst.l %d2
	jlt .L443
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
.L438:
	lea __mulxf3,%a2
	jra .L440
.L443:
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
	jra .L438
.L439:
	move.l %d2,%d2
	jpl .L444
	addq.l #1,%d2
.L444:
	asr.l #1,%d2
	jeq .L436
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
.L440:
	btst #0,%d2
	jeq .L439
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
	jra .L439
.L436:
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
	jeq .L446
	move.l 20(%sp),%d2
	add.l %a0,%d2
	move.l %d0,%a1
.L447:
	move.b (%a1)+,%d1
	move.b (%a0)+,%d3
	eor.b %d3,%d1
	move.b %d1,-1(%a1)
	cmp.l %a0,%d2
	jne .L447
.L446:
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
	jeq .L450
	move.l 20(%sp),%a2
	move.l %a1,%a0
.L451:
	move.l %a0,%a1
	move.b (%a2)+,%d1
	move.b %d1,(%a0)+
	jeq .L450
	move.l %a0,%a1
	subq.l #1,%d2
	jne .L451
.L450:
	tst.l %d2
	jne .L453
	clr.b (%a1)
.L453:
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
	jeq .L456
.L455:
	tst.b (%a0,%d0.l)
	jne .L457
.L456:
	rts
.L457:
	addq.l #1,%d0
	cmp.l %d0,%d1
	jne .L455
	jra .L456
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d0
	tst.b (%a0)
	jeq .L468
.L461:
	move.l %d0,%a1
.L464:
	tst.b (%a1)+
	jeq .L469
	move.b -1(%a1),%d1
	cmp.b (%a0),%d1
	jne .L464
	move.l %a0,%d0
.L462:
	move.l %d0,%a0
	rts
.L468:
	moveq #0,%d0
	jra .L462
.L469:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L461
	moveq #0,%d0
	jra .L462
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
	jra .L472
.L471:
	tst.b -1(%a0)
	jeq .L475
.L472:
	move.l %a0,%d2
	move.b (%a0)+,%d1
	ext.w %d1
	move.w %d1,%a1
	cmp.l %d3,%a1
	jne .L471
	move.l %d2,%d0
	jra .L471
.L475:
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
	jeq .L480
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a3
	move.l 28(%sp),%d2
	lea strchr,%a4
	lea strncmp,%a5
.L478:
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %a0,%d2
	jeq .L482
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L481
	addq.l #1,%d2
	jra .L478
.L482:
	moveq #0,%d0
	jra .L477
.L480:
	move.l 28(%sp),%d0
.L477:
	move.l %d0,%a0
	movem.l (%sp)+,#15372
	rts
.L481:
	move.l %d2,%d0
	jra .L477
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
	jlt .L496
.L484:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L494
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L486
	move.l %d2,%a1
	move.l %d3,%a0
.L487:
	move.l %a1,%d4
	move.l %a0,%d5
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#60
	rts
.L496:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L484
.L486:
	move.l %d2,%a1
	add.l #-2147483648,%a1
	move.l %d3,%a0
	jra .L487
.L494:
	move.l %d2,%a1
	move.l %d3,%a0
	jra .L487
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
	jeq .L501
	cmp.l 36(%sp),%d0
	jhi .L502
	cmp.l %a2,%d2
	jcs .L503
	move.l 40(%sp),%a3
	move.b (%a3)+,%d3
	move.l %d0,%d5
	subq.l #1,%d5
	lea memcmp,%a4
	jra .L500
.L499:
	cmp.l %d2,%a2
	jhi .L506
.L500:
	move.l %a2,%d4
	cmp.b (%a2)+,%d3
	jne .L499
	move.l %d5,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L499
	move.l %d4,%d0
	jra .L498
.L506:
	moveq #0,%d0
.L498:
	move.l %d0,%a0
	movem.l (%sp)+,#7228
	rts
.L501:
	move.l %a2,%d0
	jra .L498
.L502:
	moveq #0,%d0
	jra .L498
.L503:
	moveq #0,%d0
	jra .L498
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
	jlt .L532
	moveq #0,%d7
.L509:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L529
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
	lea __gedf2,%a4
.L513:
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
	jge .L513
.L514:
	move.l 60(%sp),%a0
	move.l %d6,(%a0)
	tst.l %d7
	jeq .L518
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,40(%sp)
	move.l %d3,44(%sp)
	move.l 40(%sp),%d2
	move.l 44(%sp),%d3
.L518:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#15612
	addq.l #8,%sp
	rts
.L532:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	moveq #1,%d7
	jra .L509
.L529:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L530
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L531
	moveq #0,%d6
	lea __adddf3,%a5
	move.l #1071644672,%d4
	clr.l %d5
	lea __ltdf2,%a4
.L517:
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
	jlt .L517
	jra .L514
.L530:
	moveq #0,%d6
	jra .L514
.L531:
	moveq #0,%d6
	jra .L514
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
	subq.l #8,%sp
	movem.l #16176,-(%sp)
	move.l 52(%sp),%d4
	move.l 56(%sp),%d5
	move.l 44(%sp),%d2
	move.l 48(%sp),%d3
	move.l %d2,%d0
	or.l %d3,%d0
	jeq .L536
	sub.l %a0,%a0
	sub.l %a1,%a1
	jra .L535
.L537:
	move.l %d6,%a0
	move.l %d7,%a1
.L535:
	sub.l %a2,%a2
	moveq #1,%d6
	and.l %d3,%d6
	move.l %d6,%a3
	move.l %a2,%d0
	move.l %a3,%d1
	neg.l %d1
	negx.l %d0
	move.l %d4,%d6
	and.l %d0,%d6
	move.l %d6,32(%sp)
	move.l %d5,%d6
	and.l %d1,%d6
	move.l %d6,36(%sp)
	move.l 32(%sp),%d6
	move.l 36(%sp),%d7
	move.l %a0,%d0
	add.l %a1,%d7
	addx.l %d0,%d6
	add.l %d5,%d5
	addx.l %d4,%d4
	lsr.l #1,%d2
	roxr.l #1,%d3
	move.l %d2,%d0
	or.l %d3,%d0
	jne .L537
	move.l %d6,%a0
	move.l %d7,%a1
.L534:
	move.l %a0,%d0
	move.l %a1,%d1
	movem.l (%sp)+,#3324
	addq.l #8,%sp
	rts
.L536:
	sub.l %a0,%a0
	sub.l %a1,%a1
	jra .L534
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
	jls .L540
	moveq #32,%d0
	moveq #1,%d2
.L539:
	tst.l %d1
	jlt .L540
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L540
	subq.l #1,%d0
	jne .L539
.L540:
	moveq #0,%d0
	tst.l %d2
	jne .L542
.L543:
	tst.l 16(%sp)
	jne .L552
.L546:
	move.l (%sp)+,%d2
	rts
.L545:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L543
.L542:
	cmp.l %a0,%d1
	jhi .L545
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L545
.L552:
	move.l %a0,%d0
	jra .L546
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
	jeq .L555
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
.L554:
	move.l (%sp)+,%d2
	rts
.L555:
	moveq #7,%d0
	jra .L554
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
	jeq .L558
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
.L557:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L558:
	moveq #63,%d0
	jra .L557
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
	jeq .L562
	moveq #0,%d0
	jra .L561
.L563:
	move.l %d1,%d0
.L561:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d0,%d1
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L563
	move.l %d1,%d0
.L560:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L562:
	moveq #0,%d0
	jra .L560
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
	jhi .L565
	move.l %d3,%a0
	add.l %d0,%a0
	cmp.l %a0,%d4
	jhi .L565
	tst.l %d0
	jeq .L564
	move.l %d3,%a1
	add.l %d0,%a1
	move.l %d4,%a0
	add.l %d0,%a0
.L571:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L571
	jra .L564
.L565:
	tst.l %d2
	jeq .L568
	move.l %d3,%a0
	move.l %d4,%a1
	lsl.l #3,%d2
	add.l %d3,%d2
.L569:
	move.l (%a0)+,%d5
	move.l (%a0)+,%d6
	move.l %d5,(%a1)+
	move.l %d6,(%a1)+
	cmp.l %a0,%d2
	jne .L569
.L568:
	cmp.l %d0,%d1
	jcc .L564
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L570:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L570
.L564:
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
	jhi .L576
	lea (%a3,%d1.l),%a0
	cmp.l %a0,%a2
	jhi .L576
	tst.l %d1
	jeq .L575
	lea (%a3,%d1.l),%a1
	add.l %d1,%a2
.L581:
	move.b -(%a1),-(%a2)
	cmp.l %a1,%a3
	jne .L581
	jra .L575
.L576:
	tst.l %d0
	jeq .L579
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
.L580:
	move.w (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L580
.L579:
	btst #0,%d1
	jeq .L575
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L575:
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
	jhi .L585
	move.l %d3,%a0
	add.l %d0,%a0
	cmp.l %a0,%d4
	jhi .L585
	tst.l %d0
	jeq .L584
	move.l %d3,%a1
	add.l %d0,%a1
	move.l %d4,%a0
	add.l %d0,%a0
.L591:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L591
	jra .L584
.L585:
	tst.l %d2
	jeq .L588
	move.l %d3,%a0
	move.l %d4,%a2
	add.l %d2,%d2
	add.l %d2,%d2
	move.l %d2,%a1
	add.l %d3,%a1
.L589:
	move.l (%a0)+,(%a2)+
	cmp.l %a0,%a1
	jne .L589
.L588:
	cmp.l %d0,%d1
	jcc .L584
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L590:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L590
.L584:
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
.L603:
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L602
	addq.l #1,%d0
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L603
.L602:
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
.L607:
	btst %d0,%d1
	jne .L606
	addq.l #1,%d0
	moveq #16,%d2
	cmp.l %d0,%d2
	jne .L607
.L606:
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
	jge .L615
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L612:
	move.l (%sp)+,%d2
	rts
.L615:
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L612
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	sub.l %a0,%a0
	moveq #0,%d1
	moveq #0,%d2
	move.w 14(%sp),%d2
	jra .L617
.L618:
	move.l %d0,%a0
.L617:
	move.l %d2,%d0
	asr.l %d1,%d0
	moveq #1,%d3
	and.l %d3,%d0
	add.l %a0,%d0
	addq.l #1,%d1
	moveq #16,%d3
	cmp.l %d1,%d3
	jne .L618
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
	sub.l %a0,%a0
	moveq #0,%d1
	moveq #0,%d2
	move.w 14(%sp),%d2
	jra .L620
.L621:
	move.l %d0,%a0
.L620:
	move.l %d2,%d0
	asr.l %d1,%d0
	moveq #1,%d3
	and.l %d3,%d0
	add.l %a0,%d0
	addq.l #1,%d1
	moveq #16,%d3
	cmp.l %d1,%d3
	jne .L621
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
	tst.l %d2
	jeq .L625
	moveq #0,%d0
	jra .L624
.L626:
	move.l %d1,%d0
.L624:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d0,%d1
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L626
	move.l %d1,%d0
.L623:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L625:
	moveq #0,%d0
	jra .L623
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	move.l 12(%sp),%d2
	tst.l %d1
	jeq .L630
	tst.l %d2
	jeq .L631
	sub.l %a0,%a0
	jra .L629
.L632:
	move.l %d0,%a0
.L629:
	moveq #1,%d0
	and.l %d2,%d0
	neg.l %d0
	and.l %d1,%d0
	add.l %a0,%d0
	add.l %d1,%d1
	lsr.l #1,%d2
	jne .L632
.L628:
	move.l (%sp)+,%d2
	rts
.L630:
	moveq #0,%d0
	jra .L628
.L631:
	moveq #0,%d0
	jra .L628
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
	jls .L635
	moveq #32,%d0
	moveq #1,%d2
.L634:
	tst.l %d1
	jlt .L635
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L635
	subq.l #1,%d0
	jne .L634
.L635:
	moveq #0,%d0
	tst.l %d2
	jne .L637
.L638:
	tst.l 16(%sp)
	jne .L647
.L641:
	move.l (%sp)+,%d2
	rts
.L640:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L638
.L637:
	cmp.l %a0,%d1
	jhi .L640
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L640
.L647:
	move.l %a0,%d0
	jra .L641
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
	jlt .L651
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L652
.L650:
	moveq #0,%d0
	move.b %d2,%d0
.L649:
	movem.l (%sp)+,#28
	rts
.L652:
	clr.b %d2
	jra .L650
.L651:
	moveq #-1,%d0
	jra .L649
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
	jlt .L656
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L657
.L655:
	moveq #0,%d0
	move.b %d6,%d0
.L654:
	movem.l (%sp)+,#124
	rts
.L657:
	clr.b %d6
	jra .L655
.L656:
	moveq #-1,%d0
	jra .L654
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
	jmi .L670
	sub.l %a0,%a0
.L661:
	tst.l %d2
	jeq .L666
	moveq #32,%d4
	moveq #0,%d0
.L663:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L662
	subq.b #1,%d4
	jne .L663
.L662:
	cmp.w #0,%a0
	jeq .L664
	neg.l %d0
.L664:
	movem.l (%sp)+,#28
	rts
.L670:
	neg.l %d2
	move.w #1,%a0
	jra .L661
.L666:
	moveq #0,%d0
	jra .L662
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
	jlt .L676
	moveq #0,%d2
.L672:
	tst.l %d1
	jlt .L677
.L673:
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d2
	jeq .L674
	neg.l %d0
.L674:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L676:
	neg.l %d0
	moveq #1,%d2
	jra .L672
.L677:
	neg.l %d1
	moveq #1,%d3
	sub.l %d2,%d3
	move.l %d3,%d2
	jra .L673
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
	jlt .L683
	moveq #0,%d3
.L679:
	move.l %d2,%d1
	jmi .L684
.L680:
	pea 1.w
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d3
	jeq .L681
	neg.l %d0
.L681:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L683:
	neg.l %d0
	moveq #1,%d3
	jra .L679
.L684:
	neg.l %d1
	jra .L680
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
	jcc .L687
	moveq #16,%d0
	moveq #1,%d2
.L686:
	tst.w %d1
	jlt .L687
	add.w %d1,%d1
	add.w %d2,%d2
	cmp.w %a0,%d1
	jcc .L687
	subq.l #1,%d0
	jne .L686
.L687:
	clr.w %d0
	tst.w %d2
	jne .L689
.L690:
	tst.l 16(%sp)
	jne .L699
.L693:
	move.l (%sp)+,%d2
	rts
.L692:
	lsr.w #1,%d2
	lsr.w #1,%d1
	tst.w %d2
	jeq .L690
.L689:
	cmp.w %a0,%d1
	jhi .L692
	sub.w %d1,%a0
	or.w %d2,%d0
	jra .L692
.L699:
	move.w %a0,%d0
	jra .L693
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
	jls .L702
	moveq #32,%d0
	moveq #1,%d2
.L701:
	tst.l %d1
	jlt .L702
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L702
	subq.l #1,%d0
	jne .L701
.L702:
	moveq #0,%d0
	tst.l %d2
	jne .L704
.L705:
	tst.l 16(%sp)
	jne .L714
.L708:
	move.l (%sp)+,%d2
	rts
.L707:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L705
.L704:
	cmp.l %a0,%d1
	jhi .L707
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L707
.L714:
	move.l %a0,%d0
	jra .L708
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
	jeq .L716
	moveq #0,%d1
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
.L718:
	movem.l (%sp)+,#28
	rts
.L716:
	tst.l %d2
	jeq .L719
	move.l %d3,%d1
	lsl.l %d2,%d1
	lsl.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsr.l %d4,%d3
	or.l %d3,%d0
	jra .L718
.L719:
	move.l %d3,%d1
	jra .L718
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
	jeq .L721
	move.l %d1,%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
.L723:
	movem.l (%sp)+,#28
	rts
.L721:
	tst.l %d2
	jeq .L724
	move.l %d1,%d0
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L723
.L724:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L723
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
	jgt .L730
	jlt .L731
	cmp.l %a1,%a0
	jhi .L732
	jcs .L733
	moveq #1,%d0
	jra .L729
.L730:
	moveq #0,%d0
.L729:
	rts
.L731:
	moveq #2,%d0
	jra .L729
.L732:
	moveq #0,%d0
	jra .L729
.L733:
	moveq #2,%d0
	jra .L729
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
	jeq .L737
	moveq #0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	lsr.l %d2,%d1
.L739:
	movem.l (%sp)+,#28
	rts
.L737:
	tst.l %d2
	jeq .L740
	move.l %d1,%d0
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L739
.L740:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L739
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
	jra .L751
.L749:
	move.l %d4,%d4
	jpl .L754
	addq.l #1,%d4
.L754:
	asr.l #1,%d4
	jeq .L750
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
.L751:
	btst #0,%d4
	jeq .L749
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
	jra .L749
.L750:
	cmp.w #0,%a6
	jeq .L753
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
.L752:
	move.l %d0,44(%sp)
	move.l %d1,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#27868
	lea (16,%sp),%sp
	rts
.L753:
	move.l %d6,%d0
	move.l %d7,%d1
	jra .L752
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
	jra .L758
.L756:
	move.l %d2,%d2
	jpl .L761
	addq.l #1,%d2
.L761:
	asr.l #1,%d2
	jeq .L757
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L758:
	btst #0,%d2
	jeq .L756
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L756
.L757:
	tst.l %d5
	jeq .L760
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
.L759:
	movem.l (%sp)+,#1084
	rts
.L760:
	move.l %d4,%d0
	jra .L759
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
	jhi .L764
	jcs .L765
	cmp.l %a1,%a0
	jhi .L766
	jcs .L767
	moveq #1,%d0
	jra .L763
.L764:
	moveq #0,%d0
.L763:
	rts
.L765:
	moveq #2,%d0
	jra .L763
.L766:
	moveq #0,%d0
	jra .L763
.L767:
	moveq #2,%d0
	jra .L763
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
