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
	jra .L5
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
.L5:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
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
	jra .L12
.L13:
	moveq #0,%d0
.L12:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	jne .L18
	moveq #0,%d0
.L18:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
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
	jra .L21
.L23:
	subq.l #1,%d0
.L21:
	move.l %a0,%a2
	move.l %a1,%a3
	tst.l %d0
	jeq .L22
	cmpm.b (%a0)+,(%a1)+
	jeq .L23
.L22:
	tst.l %d0
	jeq .L25
	moveq #0,%d0
	move.b (%a3),%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
	jra .L24
.L25:
	moveq #0,%d0
.L24:
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
	move.l %d0,%a1
	move.l %a0,%d1
	add.l 12(%sp),%d1
	jra .L27
.L28:
	move.b (%a0)+,(%a1)+
.L27:
	cmp.l %a0,%d1
	jne .L28
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
	jra .L30
.L32:
	moveq #0,%d2
	move.b (%a0,%d1.l),%d2
	move.l %d1,%a1
	subq.l #1,%a1
	cmp.l %d0,%d2
	jne .L33
	move.l %a0,%d0
	add.l %d1,%d0
	jra .L31
.L33:
	move.l %a1,%d1
.L30:
	moveq #-1,%d2
	cmp.l %d1,%d2
	jne .L32
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
	move.l %d0,%d1
	add.l 16(%sp),%d1
	move.l %d0,%a0
	jra .L35
.L36:
	move.b %d2,(%a0)+
.L35:
	cmp.l %a0,%d1
	jne .L36
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
.L38:
	move.l %a0,%d0
	move.b (%a1)+,%d1
	move.b %d1,(%a0)+
	jne .L38
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
.L42:
	move.l %a0,%d0
	tst.b (%a0)+
	jeq .L41
	moveq #0,%d1
	move.b -1(%a0),%d1
	cmp.l %d2,%d1
	jne .L42
.L41:
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
.L46:
	move.l %a1,%d0
	move.b (%a1)+,%d1
	ext.w %d1
	move.w %d1,%a2
	cmp.l %a0,%a2
	jeq .L45
	tst.b -1(%a1)
	jne .L46
	moveq #0,%d0
.L45:
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
.L51:
	move.l %a1,%a2
	move.l %a0,%a3
	cmpm.b (%a1)+,(%a0)+
	jne .L50
	tst.b -1(%a0)
	jne .L51
.L50:
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
.L54:
	move.l %a0,%d0
	tst.b (%a0)+
	jne .L54
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
	jeq .L60
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
	move.l %a0,%d0
	add.l 20(%sp),%d0
.L59:
	move.l %a1,%a2
	move.l %a0,%a3
	tst.b (%a0)+
	jeq .L58
	tst.b (%a1)
	jeq .L58
	cmp.l %a0,%d0
	jeq .L58
	move.b -1(%a0),%d1
	cmp.b (%a1)+,%d1
	jeq .L59
.L58:
	moveq #0,%d0
	move.b (%a3),%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
	jra .L57
.L60:
	moveq #0,%d0
.L57:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
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
	jra .L63
.L64:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
.L63:
	move.l %d1,%d0
	sub.l %a0,%d0
	moveq #1,%d2
	cmp.l %d0,%d2
	jlt .L64
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
	jeq .L69
	moveq #9,%d1
	cmp.l %d0,%d1
	jne .L70
	moveq #1,%d0
	jra .L68
.L69:
	moveq #1,%d0
	jra .L68
.L70:
	moveq #0,%d0
.L68:
	rts
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L73
	moveq #127,%d1
	cmp.l %d0,%d1
	jne .L74
	moveq #1,%d0
	jra .L72
.L73:
	moveq #1,%d0
	jra .L72
.L74:
	moveq #0,%d0
.L72:
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
	jeq .L81
	lea (-9,%a0),%a0
	moveq #4,%d0
	cmp.l %a0,%d0
	jcs .L82
	moveq #1,%d0
	jra .L80
.L81:
	moveq #1,%d0
	jra .L80
.L82:
	moveq #0,%d0
.L80:
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
	moveq #2,%d0
	cmp.l %a0,%d0
	jcs .L89
	moveq #1,%d0
	jra .L85
.L86:
	moveq #1,%d0
	jra .L85
.L87:
	moveq #1,%d0
	jra .L85
.L88:
	moveq #1,%d0
	jra .L85
.L89:
	moveq #0,%d0
.L85:
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
	jhi .L92
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	neg.b %d0
	and.l #255,%d0
	jra .L93
.L92:
	cmp.l #8231,%d0
	jls .L94
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L95
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L96
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L97
	and.l #65534,%d0
	cmp.l #65534,%d0
	jeq .L98
	moveq #1,%d0
	jra .L93
.L94:
	moveq #1,%d0
	jra .L93
.L95:
	moveq #1,%d0
	jra .L93
.L96:
	moveq #1,%d0
	jra .L93
.L97:
	moveq #0,%d0
	jra .L93
.L98:
	moveq #0,%d0
.L93:
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
	jcc .L101
	moveq #32,%d0
	or.l 4(%sp),%d0
	move.l %d0,%a0
	lea (-97,%a0),%a0
	moveq #5,%d0
	cmp.l %a0,%d0
	jcs .L102
	moveq #1,%d0
	jra .L100
.L101:
	moveq #1,%d0
	jra .L100
.L102:
	moveq #0,%d0
.L100:
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
	jne .L107
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L108
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L111
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
	jra .L105
.L107:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L105
.L108:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L105
.L111:
	clr.l %d0
	clr.l %d1
.L105:
	movem.l (%sp)+,#60
	rts
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
	jne .L115
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L116
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L119
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	jra .L113
.L115:
	move.l %d2,%d0
	jra .L113
.L116:
	move.l %d3,%d0
	jra .L113
.L119:
	moveq #0,%d0
.L113:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
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
	jeq .L122
	tst.l %d2
	jge .L126
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L121
.L122:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L129
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L121
.L124:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L121
.L125:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L121
.L126:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L121
.L129:
	move.l %d2,%d0
	move.l %d3,%d1
.L121:
	movem.l (%sp)+,#60
	rts
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
	jne .L134
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L135
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L132
	tst.l %d2
	jge .L136
	move.l %d3,%d0
	jra .L131
.L132:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L139
	move.l %d3,%d0
	jra .L131
.L134:
	move.l %d3,%d0
	jra .L131
.L135:
	move.l %d2,%d0
	jra .L131
.L136:
	move.l %d2,%d0
	jra .L131
.L139:
	move.l %d2,%d0
.L131:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
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
	jeq .L155
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L140
.L155:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L156
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L140
.L156:
	move.l %a4,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L146
	cmp.w #0,%a4
	jge .L150
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L147
.L150:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
.L147:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L140
.L146:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L157
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L148
.L157:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
.L148:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L140:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
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
	jne .L162
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L163
	move.l %d4,%d1
	and.l #-2147483648,%d1
	move.l %d2,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L160
	tst.l %d4
	jge .L164
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L159
.L160:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L167
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L159
.L162:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L159
.L163:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L159
.L164:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L159
.L167:
	move.l %d2,%d0
	move.l %d3,%d1
.L159:
	movem.l (%sp)+,#60
	rts
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
	jne .L172
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L173
	move.l %d3,%d1
	and.l #-2147483648,%d1
	move.l %d2,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L170
	tst.l %d3
	jge .L174
	move.l %d3,%d0
	jra .L169
.L170:
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L177
	move.l %d3,%d0
	jra .L169
.L172:
	move.l %d2,%d0
	jra .L169
.L173:
	move.l %d3,%d0
	jra .L169
.L174:
	move.l %d2,%d0
	jra .L169
.L177:
	move.l %d2,%d0
.L169:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
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
	jeq .L193
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L178
.L193:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L194
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	jra .L178
.L194:
	move.l %a4,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L184
	cmp.w #0,%a4
	jge .L188
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L185
.L188:
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L185:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L178
.L184:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L195
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L186
.L195:
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L186:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L178:
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
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
	jra .L197
.L198:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
.L197:
	tst.l %d0
	jne .L198
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
	jne .L202
	clr.l 4(%a0)
	clr.l (%a0)
	jra .L201
.L202:
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	tst.l (%a0)
	jeq .L201
	move.l (%a0),%a1
	move.l %a0,4(%a1)
.L201:
	rts
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	tst.l (%a0)
	jeq .L205
	move.l (%a0),%a1
	move.l 4(%a0),4(%a1)
.L205:
	tst.l 4(%a0)
	jeq .L204
	move.l 4(%a0),%a1
	move.l (%a0),(%a1)
.L204:
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
	jra .L208
.L211:
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a3)
	add.l %d5,%d3
	addq.l #8,%sp
	tst.l %d0
	jne .L209
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %a4,%d0
	jra .L210
.L209:
	addq.l #1,%d2
.L208:
	cmp.l %d2,%d4
	jne .L211
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
.L210:
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
	jra .L213
.L216:
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	add.l %d5,%d3
	addq.l #8,%sp
	tst.l %d0
	jne .L214
	move.l %d5,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 32(%sp),%d0
	jra .L215
.L214:
	addq.l #1,%d2
.L213:
	cmp.l %d2,%d4
	jne .L216
	moveq #0,%d0
.L215:
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
	jpl .L218
	neg.l %d0
.L218:
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #56,-(%sp)
	move.l 16(%sp),%a3
	lea isspace,%a4
.L220:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L220
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L226
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L227
	moveq #1,%d1
	jra .L221
.L226:
	moveq #0,%d1
.L221:
	addq.l #1,%a2
	jra .L222
.L227:
	moveq #0,%d1
.L222:
	sub.l %a0,%a0
	jra .L223
.L224:
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %d0,%d0
	add.l %d0,%a0
	move.b -1(%a2),%d0
	ext.w %d0
	move.l %a0,%a1
	sub.w %d0,%a1
	lea 48(%a1,%a0.l),%a0
.L223:
	move.b (%a2)+,%d0
	ext.w %d0
	move.w %d0,%a1
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcc .L224
	tst.l %d1
	jne .L228
	move.l %a0,%d0
	neg.l %d0
	jra .L225
.L228:
	move.l %a0,%d0
.L225:
	movem.l (%sp)+,#7168
	rts
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	movem.l #56,-(%sp)
	move.l 16(%sp),%a3
	lea isspace,%a4
.L231:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L231
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L237
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L238
	moveq #1,%d1
	jra .L232
.L237:
	moveq #0,%d1
.L232:
	addq.l #1,%a2
	jra .L233
.L238:
	moveq #0,%d1
.L233:
	sub.l %a0,%a0
	jra .L234
.L235:
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %d0,%d0
	add.l %d0,%a0
	move.b -1(%a2),%d0
	ext.w %d0
	move.l %a0,%a1
	sub.w %d0,%a1
	lea 48(%a1,%a0.l),%a0
.L234:
	move.b (%a2)+,%d0
	ext.w %d0
	move.w %d0,%a1
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcc .L235
	tst.l %d1
	jne .L239
	move.l %a0,%d0
	neg.l %d0
	jra .L236
.L239:
	move.l %a0,%d0
.L236:
	movem.l (%sp)+,#7168
	rts
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #15928,-(%sp)
	move.l 36(%sp),%a2
	lea isspace,%a4
.L242:
	move.l %a2,%a3
	move.b (%a2)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L242
	move.b (%a3),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L248
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L249
	moveq #1,%d6
	jra .L243
.L248:
	moveq #0,%d6
.L243:
	addq.l #1,%a3
	jra .L244
.L249:
	moveq #0,%d6
.L244:
	clr.l %d4
	clr.l %d5
	jra .L245
.L246:
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
.L245:
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L246
	tst.l %d6
	jne .L250
	move.l %d4,%d0
	move.l %d5,%d1
	neg.l %d1
	negx.l %d0
	jra .L247
.L250:
	move.l %d4,%d0
	move.l %d5,%d1
.L247:
	movem.l (%sp)+,#7292
	rts
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
	jra .L253
.L257:
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
	jge .L254
	lsr.l #1,%d2
	jra .L253
.L254:
	tst.l %d0
	jle .L258
	move.l %d3,%d5
	add.l %d4,%d5
	move.l %d2,%d0
	lsr.l #1,%d0
	subq.l #1,%d2
	sub.l %d0,%d2
.L253:
	tst.l %d2
	jne .L257
	moveq #0,%d0
	jra .L256
.L258:
	move.l %d3,%d0
.L256:
	move.l %d0,%a0
	movem.l (%sp)+,#3196
	rts
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
.L263:
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
.L262:
	asr.l #1,%d2
.L260:
	tst.l %d2
	jne .L263
	moveq #0,%d0
	jra .L261
.L264:
	move.l %d3,%d0
.L261:
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
	jge .L267
	neg.l %d1
	negx.l %d0
.L267:
	rts
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
	jpl .L270
	neg.l %d0
.L270:
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
	jge .L273
	neg.l %d1
	negx.l %d0
.L273:
	rts
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
.L277:
	move.l %a1,%a0
	tst.l (%a1)+
	jeq .L276
	cmp.l -4(%a1),%d0
	jne .L277
.L276:
	tst.l (%a0)
	jeq .L279
	move.l %a0,%d0
	jra .L278
.L279:
	moveq #0,%d0
.L278:
	move.l %d0,%a0
	rts
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
.L283:
	move.l %a1,%a2
	move.l %a0,%a3
	cmpm.l (%a1)+,(%a0)+
	jne .L282
	tst.l -4(%a0)
	jeq .L282
	tst.l -4(%a1)
	jne .L283
.L282:
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L285
	sgt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L284
.L285:
	moveq #-1,%d0
.L284:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l %d0,%a0
.L288:
	move.l (%a1)+,(%a0)
	tst.l (%a0)+
	jne .L288
	move.l %d0,%a0
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%d1
	move.l %d1,%a0
.L291:
	move.l %a0,%d0
	tst.l (%a0)+
	jne .L291
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
	jra .L294
.L296:
	subq.l #1,%d0
.L294:
	move.l %a1,%a2
	move.l %a0,%a3
	tst.l %d0
	jeq .L295
	move.l (%a0),%d1
	cmp.l (%a1),%d1
	jne .L295
	tst.l (%a0)+
	jeq .L295
	tst.l (%a1)+
	jne .L296
.L295:
	tst.l %d0
	jeq .L298
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L299
	sgt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L297
.L298:
	moveq #0,%d0
	jra .L297
.L299:
	moveq #-1,%d0
.L297:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	move.l 4(%sp),%a1
	jra .L301
.L303:
	subq.l #1,%d1
.L301:
	move.l %a1,%d0
	tst.l %d1
	jeq .L302
	cmp.l (%a1)+,%a0
	jne .L303
.L302:
	tst.l %d1
	jne .L304
	moveq #0,%d0
.L304:
	move.l %d0,%a0
	rts
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
	jra .L307
.L309:
	subq.l #1,%d0
.L307:
	move.l %a0,%a2
	move.l %a1,%a3
	tst.l %d0
	jeq .L308
	cmpm.l (%a0)+,(%a1)+
	jeq .L309
.L308:
	tst.l %d0
	jeq .L311
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L312
	sgt %d0
	neg.b %d0
	and.l #255,%d0
	jra .L310
.L311:
	moveq #0,%d0
	jra .L310
.L312:
	moveq #-1,%d0
.L310:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	move.l %d0,%a0
	jra .L314
.L315:
	move.l (%a1)+,(%a0)+
.L314:
	dbra %d1,.L315
	clr.w %d1
	subq.l #1,%d1
	jcc .L315
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
	jeq .L317
	move.l %d0,%d2
	sub.l %a0,%d2
	move.l %d1,%a1
	add.l %d1,%a1
	add.l %a1,%a1
	cmp.l %d2,%a1
	jhi .L318
	move.l %d0,%a1
	jra .L319
.L318:
	move.l %d1,%a1
	subq.l #1,%a1
	add.l %a1,%a1
	add.l %a1,%a1
	add.l %a1,%a0
	add.l %d0,%a1
	jra .L320
.L321:
	move.l (%a0),(%a1)
	subq.l #4,%a0
	subq.l #4,%a1
.L320:
	dbra %d1,.L321
	clr.w %d1
	subq.l #1,%d1
	jcc .L321
	jra .L317
.L322:
	move.l (%a0)+,(%a1)+
.L319:
	dbra %d1,.L322
	clr.w %d1
	subq.l #1,%d1
	jcc .L322
.L317:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l 12(%sp),%d1
	move.l %d0,%a0
	jra .L324
.L325:
	move.l %a1,(%a0)+
.L324:
	dbra %d1,.L325
	clr.w %d1
	subq.l #1,%d1
	jcc .L325
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
	jls .L327
	move.l 12(%sp),%a0
	add.l %d0,%a0
	move.l 12(%sp),%d1
	lea -1(%a1,%d1.l),%a1
	jra .L328
.L329:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
.L328:
	cmp.l %a0,%d0
	jne .L329
	jra .L326
.L327:
	cmp.l %d0,%a1
	jeq .L326
	move.l 12(%sp),%d1
	add.l %d0,%d1
	move.l %d0,%a0
	jra .L331
.L332:
	move.b (%a0)+,(%a1)+
.L331:
	cmp.l %a0,%d1
	jne .L332
.L326:
	rts
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
	jlt .L334
	move.l %d5,%d2
	move.l %a0,%d1
	lsl.l %d1,%d2
	moveq #0,%d3
	jra .L335
.L334:
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
.L335:
	move.l %d0,%d1
	neg.l %d1
	moveq #63,%d6
	and.l %d1,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L336
	move.l %d4,%d7
	move.l %a0,%d0
	lsr.l %d0,%d7
	moveq #0,%d6
	jra .L337
.L336:
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
.L337:
	move.l %d6,%d0
	or.l %d2,%d0
	move.l %d7,%d1
	or.l %d3,%d1
	movem.l (%sp)+,#252
	rts
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
	jlt .L339
	move.l %d4,%d3
	move.l %a0,%d1
	lsr.l %d1,%d3
	moveq #0,%d2
	jra .L340
.L339:
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
.L340:
	move.l %d0,%d1
	neg.l %d1
	moveq #63,%d6
	and.l %d1,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L341
	move.l %d5,%d6
	move.l %a0,%d0
	lsl.l %d0,%d6
	moveq #0,%d7
	jra .L342
.L341:
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
.L342:
	move.l %d6,%d0
	or.l %d2,%d0
	move.l %d7,%d1
	or.l %d3,%d1
	movem.l (%sp)+,#252
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
	jra .L355
.L358:
	btst %d0,%d1
	jeq .L356
	addq.l #1,%d0
	jra .L357
.L356:
	addq.l #1,%d0
.L355:
	moveq #32,%d2
	cmp.l %d0,%d2
	jne .L358
	moveq #0,%d0
.L357:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L363
	moveq #1,%d0
	jra .L361
.L362:
	asr.l #1,%d1
	addq.l #1,%d0
.L361:
	btst #0,%d1
	jeq .L362
	jra .L360
.L363:
	moveq #0,%d0
.L360:
	rts
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
	jlt .L367
	move.l #0x7f7fffff,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L370
	moveq #1,%d0
	jra .L365
.L367:
	moveq #1,%d0
	jra .L365
.L370:
	moveq #0,%d0
.L365:
	move.l (%sp)+,%d2
	rts
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
	jlt .L374
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L377
	moveq #1,%d0
	jra .L372
.L374:
	moveq #1,%d0
	jra .L372
.L377:
	moveq #0,%d0
.L372:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
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
	jlt .L381
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
	moveq #1,%d0
	jra .L379
.L381:
	moveq #1,%d0
	jra .L379
.L384:
	moveq #0,%d0
.L379:
	movem.l (%sp)+,#56
	rts
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
	move.l %d0,-(%sp)
	move.l %d4,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L387
	tst.l %d2
	jge .L392
	move.l #0x3f000000,%d3
	jra .L389
.L392:
	move.l #0x40000000,%d3
.L389:
	lea __mulsf3,%a2
.L391:
	btst #0,%d2
	jeq .L390
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L390:
	move.l %d2,%d2
	jpl .L394
	addq.l #1,%d2
.L394:
	asr.l #1,%d2
	jeq .L387
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	jra .L391
.L387:
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
	jne .L396
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
	jeq .L396
	tst.l %d2
	jge .L401
	move.l #1071644672,%d4
	clr.l %d5
	jra .L398
.L401:
	move.l #1073741824,%d4
	clr.l %d5
.L398:
	lea __muldf3,%a2
.L400:
	btst #0,%d2
	jeq .L399
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	move.l %d0,%d6
	move.l %d1,%d7
.L399:
	move.l %d2,%d2
	jpl .L403
	addq.l #1,%d2
.L403:
	asr.l #1,%d2
	jeq .L396
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	move.l %d0,%d4
	move.l %d1,%d5
	jra .L400
.L396:
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
	jne .L405
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
	jeq .L405
	tst.l %d2
	jge .L410
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
	jra .L407
.L410:
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
.L407:
	lea __mulxf3,%a2
.L409:
	btst #0,%d2
	jeq .L408
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
.L408:
	move.l %d2,%d2
	jpl .L412
	addq.l #1,%d2
.L412:
	asr.l #1,%d2
	jeq .L405
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
	jra .L409
.L405:
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
	jra .L414
.L415:
	move.b (%a0)+,%d1
	move.b (%a1)+,%d3
	eor.b %d3,%d1
	move.b %d1,-1(%a1)
.L414:
	cmp.l %a0,%d2
	jne .L415
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
	jra .L417
.L419:
	subq.l #1,%d2
.L417:
	move.l %a0,%a2
	tst.l %d2
	jeq .L418
	move.b (%a1)+,(%a0)
	tst.b (%a0)+
	jne .L419
.L418:
	tst.l %d2
	jne .L420
	clr.b (%a2)
.L420:
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
	jra .L422
.L424:
	addq.l #1,%d0
.L422:
	cmp.l %d0,%d1
	jeq .L423
	tst.b (%a0,%d0.l)
	jne .L424
.L423:
	rts
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d1
	move.l 12(%sp),%a2
	jra .L426
.L428:
	move.b -1(%a1),%d2
	cmp.b -1(%a2),%d2
	jeq .L427
.L429:
	tst.b (%a1)+
	jne .L428
.L426:
	move.l %a2,%d0
	tst.b (%a2)+
	jeq .L431
	move.l %d1,%a1
	jra .L429
.L431:
	moveq #0,%d0
.L427:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
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
.L434:
	move.l %a0,%d2
	move.b (%a0)+,%d1
	ext.w %d1
	move.w %d1,%a1
	cmp.l %d3,%a1
	jne .L433
	move.l %d2,%d0
.L433:
	tst.b -1(%a0)
	jne .L434
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
	jeq .L441
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a3
	move.l 28(%sp),%d2
	lea strchr,%a4
	lea strncmp,%a5
	jra .L439
.L440:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L442
	addq.l #1,%d2
.L439:
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %a0,%d2
	jne .L440
	moveq #0,%d0
	jra .L438
.L441:
	move.l 28(%sp),%d0
	jra .L438
.L442:
	move.l %d2,%d0
.L438:
	move.l %d0,%a0
	movem.l (%sp)+,#15372
	rts
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
	jge .L444
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L446
.L444:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L454
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L455
.L446:
	move.l %d2,%d0
	add.l #-2147483648,%d0
	move.l %d3,%d1
	jra .L447
.L454:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L447
.L455:
	move.l %d2,%d0
	move.l %d3,%d1
.L447:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
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
	jeq .L461
	cmp.l 36(%sp),%d0
	jhi .L462
	move.l %d0,%d4
	subq.l #1,%d4
	move.l %a3,%d5
	addq.l #1,%d5
	lea memcmp,%a4
	jra .L458
.L460:
	move.b (%a2)+,%d0
	cmp.b (%a3),%d0
	jne .L458
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L463
.L458:
	move.l %a2,%d3
	cmp.l %a2,%d2
	jcc .L460
	moveq #0,%d0
	jra .L457
.L461:
	move.l %a2,%d0
	jra .L457
.L462:
	moveq #0,%d0
	jra .L457
.L463:
	move.l %d3,%d0
.L457:
	move.l %d0,%a0
	movem.l (%sp)+,#7228
	rts
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
	jge .L482
	move.l %d2,%d0
	add.l #-2147483648,%d0
	move.l %d3,%d1
	move.l %d0,%d2
	move.l %d1,%d3
	moveq #1,%d5
	jra .L466
.L482:
	moveq #0,%d5
.L466:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L477
	jra .L483
.L470:
	addq.l #1,%d4
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
	jra .L468
.L477:
	moveq #0,%d4
	move.l #1072693248,%d6
	clr.l %d7
	lea __gedf2,%a2
	lea __muldf3,%a3
.L468:
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L470
	jra .L471
.L483:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L484
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L479
	moveq #0,%d4
	jra .L471
.L474:
	subq.l #1,%d4
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
	jra .L473
.L479:
	moveq #0,%d4
	move.l #1071644672,%d6
	clr.l %d7
	lea __ltdf2,%a2
	lea __adddf3,%a3
.L473:
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L474
	jra .L471
.L484:
	moveq #0,%d4
.L471:
	move.l 44(%sp),%a0
	move.l %d4,(%a0)
	tst.l %d5
	jeq .L475
	move.l %d2,%d0
	add.l #-2147483648,%d0
	move.l %d3,%d1
	move.l %d0,%d2
	move.l %d1,%d3
.L475:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#3324
	rts
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
	jra .L486
.L488:
	moveq #0,%d4
	moveq #1,%d5
	and.l %d3,%d5
	move.l %d4,%d0
	or.l %d5,%d0
	jeq .L487
	add.l %d7,28(%sp)
	move.l 24(%sp),%d0
	addx.l %d6,%d0
	move.l %d0,24(%sp)
.L487:
	add.l %d7,%d7
	addx.l %d6,%d6
	lsr.l #1,%d2
	roxr.l #1,%d3
.L486:
	move.l %d2,%d0
	or.l %d3,%d0
	jne .L488
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
	jra .L490
.L492:
	add.l %d1,%d1
	add.l %d2,%d2
.L490:
	cmp.l %d1,%a1
	jls .L497
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L498
	tst.l %d1
	jge .L492
	moveq #0,%d0
	jra .L493
.L497:
	moveq #0,%d0
	jra .L493
.L498:
	moveq #0,%d0
	jra .L493
.L495:
	cmp.l %a1,%d1
	jhi .L494
	sub.l %d1,%a1
	or.l %d2,%d0
.L494:
	lsr.l #1,%d2
	lsr.l #1,%d1
.L493:
	tst.l %d2
	jne .L495
	tst.l 16(%sp)
	jeq .L496
	move.l %a1,%d0
.L496:
	move.l (%sp)+,%d2
	rts
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	move.l 4(%sp),%d1
	move.b %d1,%d0
	jpl .L501
	not.b %d0
.L501:
	tst.b %d0
	jeq .L503
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
	jra .L502
.L503:
	moveq #7,%d0
.L502:
	rts
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
	jge .L505
	move.l %d0,%d2
	not.l %d2
	move.l %d1,%d3
	not.l %d3
	move.l %d2,%d0
	move.l %d3,%d1
.L505:
	move.l %d0,%d2
	or.l %d1,%d2
	jeq .L507
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
	jra .L506
.L507:
	moveq #63,%d0
.L506:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	move.l 4(%sp),%d1
	move.l 8(%sp),%a0
	moveq #0,%d0
	jra .L509
.L511:
	btst #0,%d1
	jeq .L510
	add.l %a0,%d0
.L510:
	lsr.l #1,%d1
	add.l %a0,%a0
.L509:
	tst.l %d1
	jne .L511
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
	jls .L513
.L515:
	move.l %a3,%a2
	move.l %a0,%a1
	moveq #0,%d1
	jra .L514
.L513:
	move.l %a3,%d1
	add.l %d2,%d1
	cmp.l %d1,%a0
	jhi .L515
	subq.l #1,%d2
	lea (%a3,%d2.l),%a1
	add.l %d2,%a0
	subq.l #1,%a3
	jra .L516
.L517:
	move.l (%a2)+,%d4
	move.l (%a2)+,%d5
	move.l %d4,(%a1)+
	move.l %d5,(%a1)+
	addq.l #1,%d1
.L514:
	cmp.l %d1,%d3
	jne .L517
	jra .L518
.L519:
	move.b (%a3,%d0.l),(%a0,%d0.l)
	addq.l #1,%d0
.L518:
	cmp.l %d2,%d0
	jcs .L519
	jra .L512
.L521:
	move.b (%a1),(%a0)
	subq.l #1,%a1
	subq.l #1,%a0
.L516:
	cmp.l %a1,%a3
	jne .L521
.L512:
	movem.l (%sp)+,#3132
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
	jls .L523
.L525:
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
	jra .L524
.L523:
	lea (%a3,%d1.l),%a0
	cmp.l %a0,%a2
	jhi .L525
	subq.l #1,%d1
	lea (%a3,%d1.l),%a1
	add.l %d1,%a2
	subq.l #1,%a3
	jra .L526
.L527:
	move.w (%a0)+,(%a1)+
.L524:
	cmp.l %a0,%d0
	jne .L527
	btst #0,%d1
	jeq .L522
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
	jra .L522
.L529:
	move.b (%a1),(%a2)
	subq.l #1,%a1
	subq.l #1,%a2
.L526:
	cmp.l %a1,%a3
	jne .L529
.L522:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
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
	jls .L531
.L533:
	move.l %a3,%a2
	move.l %a0,%a1
	moveq #0,%d1
	jra .L532
.L531:
	move.l %a3,%d1
	add.l %d2,%d1
	cmp.l %d1,%a0
	jhi .L533
	subq.l #1,%d2
	lea (%a3,%d2.l),%a1
	add.l %d2,%a0
	subq.l #1,%a3
	jra .L534
.L535:
	move.l (%a2)+,(%a1)+
	addq.l #1,%d1
.L532:
	cmp.l %d1,%d3
	jne .L535
	jra .L536
.L537:
	move.b (%a3,%d0.l),(%a0,%d0.l)
	addq.l #1,%d0
.L536:
	cmp.l %d2,%d0
	jcs .L537
	jra .L530
.L539:
	move.b (%a1),(%a0)
	subq.l #1,%a1
	subq.l #1,%a0
.L534:
	cmp.l %a1,%a3
	jne .L539
.L530:
	movem.l (%sp)+,#3084
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
	jra .L547
.L549:
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L548
	addq.l #1,%d0
.L547:
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L549
.L548:
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
	jra .L551
.L553:
	btst %d0,%d1
	jne .L552
	addq.l #1,%d0
.L551:
	moveq #16,%d2
	cmp.l %d0,%d2
	jne .L553
.L552:
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
	jlt .L559
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L557
.L559:
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L557:
	move.l (%sp)+,%d2
	rts
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
	jra .L561
.L563:
	btst %d1,%d2
	jeq .L562
	addq.l #1,%d0
.L562:
	addq.l #1,%d1
.L561:
	moveq #16,%d3
	cmp.l %d1,%d3
	jne .L563
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
	jra .L565
.L567:
	btst %d1,%d2
	jeq .L566
	addq.l #1,%d0
.L566:
	addq.l #1,%d1
.L565:
	moveq #16,%d3
	cmp.l %d1,%d3
	jne .L567
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
	jra .L569
.L571:
	btst #0,%d1
	jeq .L570
	add.l %a0,%d0
.L570:
	lsr.l #1,%d1
	add.l %a0,%a0
.L569:
	tst.l %d1
	jne .L571
	rts
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d1
	cmp.w #0,%a0
	jeq .L577
	moveq #0,%d0
	jra .L574
.L576:
	btst #0,%d1
	jeq .L575
	add.l %a0,%d0
.L575:
	add.l %a0,%a0
	lsr.l #1,%d1
.L574:
	tst.l %d1
	jne .L576
	jra .L573
.L577:
	moveq #0,%d0
.L573:
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
	jra .L579
.L581:
	add.l %d1,%d1
	add.l %d2,%d2
.L579:
	cmp.l %d1,%a1
	jls .L586
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L587
	tst.l %d1
	jge .L581
	moveq #0,%d0
	jra .L582
.L586:
	moveq #0,%d0
	jra .L582
.L587:
	moveq #0,%d0
	jra .L582
.L584:
	cmp.l %a1,%d1
	jhi .L583
	sub.l %d1,%a1
	or.l %d2,%d0
.L583:
	lsr.l #1,%d2
	lsr.l #1,%d1
.L582:
	tst.l %d2
	jne .L584
	tst.l 16(%sp)
	jeq .L585
	move.l %a1,%d0
.L585:
	move.l (%sp)+,%d2
	rts
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
	jlt .L591
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L592
	moveq #0,%d0
	jra .L590
.L591:
	moveq #-1,%d0
	jra .L590
.L592:
	moveq #1,%d0
.L590:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
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
	jlt .L595
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L596
	moveq #0,%d0
	jra .L594
.L595:
	moveq #-1,%d0
	jra .L594
.L596:
	moveq #1,%d0
.L594:
	movem.l (%sp)+,#60
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
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	jpl .L606
	neg.l %d1
	move.w #1,%a1
	jra .L600
.L606:
	sub.l %a1,%a1
.L600:
	moveq #33,%d2
	moveq #0,%d0
	jra .L601
.L604:
	btst #0,%d1
	jeq .L602
	add.l %a0,%d0
.L602:
	add.l %a0,%a0
	asr.l #1,%d1
.L601:
	tst.l %d1
	jeq .L603
	subq.b #1,%d2
	jne .L604
.L603:
	cmp.w #0,%a1
	jeq .L605
	neg.l %d0
.L605:
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
	jge .L612
	neg.l %d0
	moveq #1,%d2
	jra .L609
.L612:
	moveq #0,%d2
.L609:
	tst.l %d1
	jge .L610
	neg.l %d1
	tst.l %d2
	seq %d2
	neg.b %d2
	and.l #255,%d2
.L610:
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d2
	jeq .L611
	neg.l %d0
.L611:
	move.l (%sp)+,%d2
	rts
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	tst.l %d0
	jge .L617
	neg.l %d0
	moveq #1,%d2
	jra .L614
.L617:
	moveq #0,%d2
.L614:
	tst.l %d1
	jge .L615
	neg.l %d1
.L615:
	pea 1.w
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d2
	jeq .L616
	neg.l %d0
.L616:
	move.l (%sp)+,%d2
	rts
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
	jra .L619
.L621:
	add.w %d1,%d1
	add.w %d2,%d2
.L619:
	cmp.w %a0,%d1
	jcc .L626
	subq.l #1,%d0
	jeq .L627
	tst.w %d1
	jge .L621
	clr.w %d0
	jra .L622
.L626:
	clr.w %d0
	jra .L622
.L627:
	clr.w %d0
	jra .L622
.L624:
	cmp.w %a0,%d1
	jhi .L623
	sub.w %d1,%a0
	or.w %d2,%d0
.L623:
	lsr.w #1,%d2
	lsr.w #1,%d1
.L622:
	tst.w %d2
	jne .L624
	tst.l 16(%sp)
	jeq .L625
	move.w %a0,%d0
.L625:
	move.l (%sp)+,%d2
	rts
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
	jra .L630
.L632:
	add.l %d1,%d1
	add.l %d2,%d2
.L630:
	cmp.l %d1,%a1
	jls .L637
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L638
	tst.l %d1
	jge .L632
	moveq #0,%d0
	jra .L633
.L637:
	moveq #0,%d0
	jra .L633
.L638:
	moveq #0,%d0
	jra .L633
.L635:
	cmp.l %a1,%d1
	jhi .L634
	sub.l %d1,%a1
	or.l %d2,%d0
.L634:
	lsr.l #1,%d2
	lsr.l #1,%d1
.L633:
	tst.l %d2
	jne .L635
	tst.l 16(%sp)
	jeq .L636
	move.l %a1,%d0
.L636:
	move.l (%sp)+,%d2
	rts
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
	jeq .L641
	clr.l %d4
	clr.l %d5
	moveq #-32,%d1
	add.l %d1,%d0
	move.l %d3,%d4
	lsl.l %d0,%d4
	jra .L642
.L641:
	tst.l %d0
	jeq .L644
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
.L642:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L643
.L644:
	move.l %d2,%d0
	move.l %d3,%d1
.L643:
	movem.l (%sp)+,#60
	rts
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
	jeq .L646
	move.l %d4,%d2
	add.l %d2,%d2
	subx.l %d2,%d2
	moveq #-32,%d1
	add.l %d1,%d0
	move.l %d4,%d3
	asr.l %d0,%d3
	jra .L647
.L646:
	tst.l %d0
	jeq .L649
	move.l %d4,%d2
	asr.l %d0,%d2
	moveq #32,%d1
	sub.l %d0,%d1
	lsl.l %d1,%d4
	move.l %d5,%d1
	lsr.l %d0,%d1
	move.l %d4,%d3
	or.l %d1,%d3
.L647:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L648
.L649:
	move.l %d4,%d0
	move.l %d5,%d1
.L648:
	movem.l (%sp)+,#60
	rts
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
	jhi .L657
	moveq #16,%d0
	jra .L653
.L657:
	moveq #0,%d0
.L653:
	moveq #16,%d2
	sub.l %d0,%d2
	lsr.l %d2,%d1
	move.l %d0,%d2
	move.l %d1,%d0
	and.l #65280,%d0
	jne .L658
	move.w #8,%a0
	jra .L654
.L658:
	sub.l %a0,%a0
.L654:
	moveq #8,%d0
	sub.l %a0,%d0
	lsr.l %d0,%d1
	add.l %a0,%d2
	moveq #15,%d0
	not.b %d0
	and.l %d1,%d0
	jne .L659
	move.w #4,%a0
	jra .L655
.L659:
	sub.l %a0,%a0
.L655:
	moveq #4,%d0
	sub.l %a0,%d0
	lsr.l %d0,%d1
	add.l %a0,%d2
	moveq #12,%d0
	and.l %d1,%d0
	jne .L660
	move.w #2,%a0
	jra .L656
.L660:
	sub.l %a0,%a0
.L656:
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
	jlt .L663
	jgt .L664
	cmp.l %a1,%d1
	jcs .L665
	jhi .L666
	moveq #1,%d0
	jra .L662
.L663:
	moveq #0,%d0
	jra .L662
.L664:
	moveq #2,%d0
	jra .L662
.L665:
	moveq #0,%d0
	jra .L662
.L666:
	moveq #2,%d0
.L662:
	rts
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
	jne .L673
	moveq #16,%d0
	jra .L669
.L673:
	moveq #0,%d0
.L669:
	lsr.l %d0,%d1
	move.l %d0,%a0
	tst.b %d1
	jne .L674
	moveq #8,%d0
	jra .L670
.L674:
	moveq #0,%d0
.L670:
	lsr.l %d0,%d1
	add.l %d0,%a0
	moveq #15,%d0
	and.l %d1,%d0
	jne .L675
	moveq #4,%d0
	jra .L671
.L675:
	moveq #0,%d0
.L671:
	lsr.l %d0,%d1
	add.l %d0,%a0
	moveq #3,%d0
	and.l %d1,%d0
	jne .L676
	moveq #2,%d0
	jra .L672
.L676:
	moveq #0,%d0
.L672:
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
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d2
	move.l 24(%sp),%d3
	move.l 28(%sp),%d0
	btst #5,%d0
	jeq .L678
	clr.l %d4
	clr.l %d5
	moveq #-32,%d1
	add.l %d1,%d0
	move.l %d2,%d5
	lsr.l %d0,%d5
	jra .L679
.L678:
	tst.l %d0
	jeq .L681
	move.l %d2,%d4
	lsr.l %d0,%d4
	moveq #32,%d1
	sub.l %d0,%d1
	lsl.l %d1,%d2
	move.l %d3,%d1
	lsr.l %d0,%d1
	move.l %d2,%d5
	or.l %d1,%d5
.L679:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L680
.L681:
	move.l %d2,%d0
	move.l %d3,%d1
.L680:
	movem.l (%sp)+,#60
	rts
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
.L692:
	btst #0,%d2
	jeq .L690
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	move.l %d0,%d6
	move.l %d1,%d7
.L690:
	move.l %d2,%d2
	jpl .L695
	addq.l #1,%d2
.L695:
	asr.l #1,%d2
	jeq .L691
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	move.l %d0,%d4
	move.l %d1,%d5
	jra .L692
.L691:
	tst.l %d3
	jeq .L694
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
	jra .L693
.L694:
	move.l %d6,%d0
	move.l %d7,%d1
.L693:
	movem.l (%sp)+,#1276
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
.L699:
	btst #0,%d2
	jeq .L697
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
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
	jra .L699
.L698:
	tst.l %d5
	jeq .L701
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	jra .L700
.L701:
	move.l %d4,%d0
.L700:
	movem.l (%sp)+,#1084
	rts
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
	jcs .L705
	jhi .L706
	cmp.l %a1,%d1
	jcs .L707
	jhi .L708
	moveq #1,%d0
	jra .L704
.L705:
	moveq #0,%d0
	jra .L704
.L706:
	moveq #2,%d0
	jra .L704
.L707:
	moveq #0,%d0
	jra .L704
.L708:
	moveq #2,%d0
.L704:
	rts
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
