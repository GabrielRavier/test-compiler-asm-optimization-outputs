#NO_APP
	.file	"mini-libc.c"
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	link.w %fp,#-8
	move.l %d2,-(%sp)
	move.l 8(%fp),-4(%fp)
	move.l 12(%fp),-8(%fp)
	move.l -8(%fp),%d0
	cmp.l -4(%fp),%d0
	jcc .L2
	move.l 16(%fp),%d2
	add.l %d2,-8(%fp)
	move.l 16(%fp),%d0
	add.l %d0,-4(%fp)
	jra .L3
.L4:
	subq.l #1,-8(%fp)
	subq.l #1,-4(%fp)
	move.l -8(%fp),%a0
	move.b (%a0),%d0
	move.l -4(%fp),%a0
	move.b %d0,(%a0)
	subq.l #1,16(%fp)
.L3:
	tst.l 16(%fp)
	jne .L4
	jra .L5
.L2:
	move.l -8(%fp),%d2
	cmp.l -4(%fp),%d2
	jeq .L5
	jra .L6
.L7:
	move.l -8(%fp),%d1
	move.l %d1,%d0
	addq.l #1,%d0
	move.l %d0,-8(%fp)
	move.l -4(%fp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,-4(%fp)
	move.l %d1,%a0
	move.b (%a0),%d1
	move.l %d0,%a0
	move.b %d1,(%a0)
	subq.l #1,16(%fp)
.L6:
	tst.l 16(%fp)
	jne .L7
.L5:
	move.l 8(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.type	memccpy, @function
memccpy:
	link.w %fp,#-8
	move.l 8(%fp),-4(%fp)
	move.l 12(%fp),-8(%fp)
	move.l 16(%fp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,16(%fp)
	jra .L10
.L12:
	subq.l #1,20(%fp)
	addq.l #1,-8(%fp)
	addq.l #1,-4(%fp)
.L10:
	tst.l 20(%fp)
	jeq .L11
	move.l -8(%fp),%a0
	move.b (%a0),%d0
	move.l -4(%fp),%a0
	move.b %d0,(%a0)
	move.l -4(%fp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 16(%fp),%d0
	jne .L12
.L11:
	tst.l 20(%fp)
	jeq .L13
	move.l -4(%fp),%d0
	addq.l #1,%d0
	jra .L14
.L13:
	moveq #0,%d0
.L14:
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
	link.w %fp,#-4
	move.l 8(%fp),-4(%fp)
	move.l 12(%fp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,12(%fp)
	jra .L16
.L18:
	addq.l #1,-4(%fp)
	subq.l #1,16(%fp)
.L16:
	tst.l 16(%fp)
	jeq .L17
	move.l -4(%fp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 12(%fp),%d0
	jne .L18
.L17:
	tst.l 16(%fp)
	jeq .L19
	move.l -4(%fp),%d0
	jra .L21
.L19:
	moveq #0,%d0
.L21:
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	link.w %fp,#-8
	move.l 8(%fp),-4(%fp)
	move.l 12(%fp),-8(%fp)
	jra .L23
.L25:
	subq.l #1,16(%fp)
	addq.l #1,-4(%fp)
	addq.l #1,-8(%fp)
.L23:
	tst.l 16(%fp)
	jeq .L24
	move.l -4(%fp),%a0
	move.b (%a0),%d1
	move.l -8(%fp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jeq .L25
.L24:
	tst.l 16(%fp)
	jeq .L26
	move.l -4(%fp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l -8(%fp),%a0
	move.b (%a0),%d1
	move.b %d1,%d1
	and.l #255,%d1
	sub.l %d1,%d0
	jra .L28
.L26:
	moveq #0,%d0
.L28:
	unlk %fp
	rts
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	link.w %fp,#-8
	move.l %d2,-(%sp)
	move.l 8(%fp),-4(%fp)
	move.l 12(%fp),-8(%fp)
	jra .L30
.L31:
	move.l -8(%fp),%d1
	move.l %d1,%d0
	addq.l #1,%d0
	move.l %d0,-8(%fp)
	move.l -4(%fp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,-4(%fp)
	move.l %d1,%a0
	move.b (%a0),%d1
	move.l %d0,%a0
	move.b %d1,(%a0)
	subq.l #1,16(%fp)
.L30:
	tst.l 16(%fp)
	jne .L31
	move.l 8(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.type	memrchr, @function
memrchr:
	link.w %fp,#-4
	move.l 8(%fp),-4(%fp)
	move.l 12(%fp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,12(%fp)
	jra .L34
.L36:
	move.l -4(%fp),%a0
	add.l 16(%fp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 12(%fp),%d0
	jne .L34
	move.l -4(%fp),%d0
	add.l 16(%fp),%d0
	jra .L35
.L34:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L36
	moveq #0,%d0
.L35:
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	link.w %fp,#-4
	move.l 8(%fp),-4(%fp)
	jra .L38
.L39:
	move.l 12(%fp),%d0
	move.l -4(%fp),%a0
	move.b %d0,(%a0)
	subq.l #1,16(%fp)
	addq.l #1,-4(%fp)
.L38:
	tst.l 16(%fp)
	jne .L39
	move.l 8(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
	link.w %fp,#0
	jra .L42
.L43:
	addq.l #1,12(%fp)
	addq.l #1,8(%fp)
.L42:
	move.l 12(%fp),%a0
	move.b (%a0),%d0
	move.l 8(%fp),%a0
	move.b %d0,(%a0)
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	jne .L43
	move.l 8(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
	link.w %fp,#0
	move.l 12(%fp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,12(%fp)
	jra .L46
.L48:
	addq.l #1,8(%fp)
.L46:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	jeq .L47
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 12(%fp),%d0
	jne .L48
.L47:
	move.l 8(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	link.w %fp,#0
	move.l 8(%fp),%a0
.L53:
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l 12(%fp),%a1
	jne .L51
	move.l %a0,%d0
	jra .L52
.L51:
	move.l %a0,%a1
	lea (1,%a1),%a0
	move.b (%a1),%d0
	jne .L53
	moveq #0,%d0
.L52:
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	link.w %fp,#0
	jra .L55
.L57:
	addq.l #1,8(%fp)
	addq.l #1,12(%fp)
.L55:
	move.l 8(%fp),%a0
	move.b (%a0),%d1
	move.l 12(%fp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L56
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	jne .L57
.L56:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	moveq #0,%d1
	move.b %d0,%d1
	move.l 12(%fp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	sub.l %d0,%d1
	move.l %d1,%d0
	unlk %fp
	rts
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
	link.w %fp,#-4
	move.l 8(%fp),-4(%fp)
	jra .L60
.L61:
	addq.l #1,8(%fp)
.L60:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	jne .L61
	move.l 8(%fp),%d0
	sub.l -4(%fp),%d0
	unlk %fp
	rts
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	link.w %fp,#-8
	move.l 8(%fp),-4(%fp)
	move.l 12(%fp),-8(%fp)
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L66
	moveq #0,%d0
	jra .L65
.L68:
	addq.l #1,-4(%fp)
	addq.l #1,-8(%fp)
	subq.l #1,16(%fp)
.L66:
	move.l -4(%fp),%a0
	move.b (%a0),%d0
	jeq .L67
	move.l -8(%fp),%a0
	move.b (%a0),%d0
	jeq .L67
	tst.l 16(%fp)
	jeq .L67
	move.l -4(%fp),%a0
	move.b (%a0),%d1
	move.l -8(%fp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jeq .L68
.L67:
	move.l -4(%fp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l -8(%fp),%a0
	move.b (%a0),%d1
	move.b %d1,%d1
	and.l #255,%d1
	sub.l %d1,%d0
.L65:
	unlk %fp
	rts
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	link.w %fp,#-8
	move.l 8(%fp),-4(%fp)
	move.l 12(%fp),-8(%fp)
	jra .L70
.L71:
	move.l -4(%fp),%a0
	addq.l #1,%a0
	move.b (%a0),%d0
	move.l -8(%fp),%a0
	move.b %d0,(%a0)
	move.l -8(%fp),%a0
	addq.l #1,%a0
	move.l -4(%fp),%a1
	move.b (%a1),%d0
	move.b %d0,(%a0)
	addq.l #2,-8(%fp)
	addq.l #2,-4(%fp)
	subq.l #2,16(%fp)
.L70:
	moveq #1,%d0
	cmp.l 16(%fp),%d0
	jlt .L71
	nop
	nop
	unlk %fp
	rts
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.type	isalpha, @function
isalpha:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #32,%d1
	or.l %d1,%d0
	move.w #-97,%a0
	add.l %d0,%a0
	moveq #25,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	unlk %fp
	rts
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.type	isascii, @function
isascii:
	link.w %fp,#0
	move.l 8(%fp),%d0
	cmp.l #128,%d0
	scs %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	unlk %fp
	rts
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.type	isblank, @function
isblank:
	link.w %fp,#0
	moveq #32,%d0
	cmp.l 8(%fp),%d0
	jeq .L77
	moveq #9,%d0
	cmp.l 8(%fp),%d0
	jne .L78
.L77:
	moveq #1,%d0
	jra .L80
.L78:
	moveq #0,%d0
.L80:
	unlk %fp
	rts
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L82
	moveq #127,%d0
	cmp.l 8(%fp),%d0
	jne .L83
.L82:
	moveq #1,%d0
	jra .L85
.L83:
	moveq #0,%d0
.L85:
	unlk %fp
	rts
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.type	isdigit, @function
isdigit:
	link.w %fp,#0
	move.l 8(%fp),%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	unlk %fp
	rts
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.type	isgraph, @function
isgraph:
	link.w %fp,#0
	move.l 8(%fp),%a0
	lea (-33,%a0),%a0
	moveq #93,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	unlk %fp
	rts
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.type	islower, @function
islower:
	link.w %fp,#0
	move.l 8(%fp),%a0
	lea (-97,%a0),%a0
	moveq #25,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	unlk %fp
	rts
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.type	isprint, @function
isprint:
	link.w %fp,#0
	move.l 8(%fp),%a0
	lea (-32,%a0),%a0
	moveq #94,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	unlk %fp
	rts
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.type	isspace, @function
isspace:
	link.w %fp,#0
	moveq #32,%d0
	cmp.l 8(%fp),%d0
	jeq .L95
	move.l 8(%fp),%a0
	lea (-9,%a0),%a0
	moveq #4,%d0
	cmp.l %a0,%d0
	jcs .L96
.L95:
	moveq #1,%d0
	jra .L98
.L96:
	moveq #0,%d0
.L98:
	unlk %fp
	rts
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.type	isupper, @function
isupper:
	link.w %fp,#0
	move.l 8(%fp),%a0
	lea (-65,%a0),%a0
	moveq #25,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	unlk %fp
	rts
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	link.w %fp,#0
	moveq #31,%d0
	cmp.l 8(%fp),%d0
	jcc .L102
	moveq #-127,%d0
	add.l 8(%fp),%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	jcc .L102
	move.l 8(%fp),%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L102
	move.l 8(%fp),%d0
	add.l #-65529,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	jcs .L103
.L102:
	moveq #1,%d0
	jra .L105
.L103:
	moveq #0,%d0
.L105:
	unlk %fp
	rts
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
	link.w %fp,#0
	moveq #-48,%d0
	add.l 8(%fp),%d0
	moveq #9,%d1
	cmp.l %d0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	unlk %fp
	rts
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.type	iswprint, @function
iswprint:
	link.w %fp,#0
	cmp.l #254,8(%fp)
	jhi .L109
	move.l 8(%fp),%d0
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L110
.L109:
	cmp.l #8231,8(%fp)
	jls .L111
	move.l 8(%fp),%d0
	add.l #-8234,%d0
	cmp.l #47061,%d0
	jls .L111
	move.l 8(%fp),%d0
	add.l #-57344,%d0
	cmp.l #8184,%d0
	jhi .L112
.L111:
	moveq #1,%d0
	jra .L110
.L112:
	move.l 8(%fp),%d0
	add.l #-65532,%d0
	cmp.l #1048579,%d0
	jhi .L113
	move.l 8(%fp),%d0
	and.l #65534,%d0
	cmp.l #65534,%d0
	jne .L114
.L113:
	moveq #0,%d0
	jra .L110
.L114:
	moveq #1,%d0
.L110:
	unlk %fp
	rts
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	link.w %fp,#0
	moveq #-48,%d0
	add.l 8(%fp),%d0
	moveq #9,%d1
	cmp.l %d0,%d1
	jcc .L116
	moveq #32,%d0
	or.l 8(%fp),%d0
	move.w #-97,%a0
	add.l %d0,%a0
	moveq #5,%d0
	cmp.l %a0,%d0
	jcs .L117
.L116:
	moveq #1,%d0
	jra .L119
.L117:
	moveq #0,%d0
.L119:
	unlk %fp
	rts
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.type	toascii, @function
toascii:
	link.w %fp,#0
	moveq #127,%d0
	and.l 8(%fp),%d0
	unlk %fp
	rts
	.size	toascii, .-toascii
	.align	2
	.globl	fdim
	.type	fdim, @function
fdim:
	link.w %fp,#0
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L134
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L125
.L134:
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L135
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
	jra .L125
.L135:
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L136
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
	jra .L125
.L136:
	clr.l %d0
	clr.l %d1
.L125:
	unlk %fp
	rts
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
	link.w %fp,#0
	move.l 8(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L149
	move.l 8(%fp),%d0
	jra .L140
.L149:
	move.l 12(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L150
	move.l 12(%fp),%d0
	jra .L140
.L150:
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L151
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	jra .L140
.L151:
	moveq #0,%d0
.L140:
	unlk %fp
	rts
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
	link.w %fp,#0
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L167
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
	jra .L155
.L167:
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L168
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L155
.L168:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 16(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L158
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L159
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
	jra .L155
.L159:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L155
.L158:
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L169
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
	jra .L155
.L169:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
.L155:
	unlk %fp
	rts
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	link.w %fp,#0
	move.l 8(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L185
	move.l 12(%fp),%d0
	jra .L173
.L185:
	move.l 12(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L186
	move.l 8(%fp),%d0
	jra .L173
.L186:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 12(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L176
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L177
	move.l 12(%fp),%d0
	jra .L173
.L177:
	move.l 8(%fp),%d0
	jra .L173
.L176:
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L187
	move.l 12(%fp),%d0
	jra .L173
.L187:
	move.l 8(%fp),%d0
.L173:
	unlk %fp
	rts
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l %a1,%a2
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L203
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L191
.L203:
	move.l 28(%fp),-(%sp)
	move.l 24(%fp),-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 28(%fp),-(%sp)
	move.l 24(%fp),-(%sp)
	move.l 20(%fp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L204
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L191
.L204:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 20(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L194
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L195
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
	jra .L196
.L195:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
.L196:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L191
.L194:
	move.l 28(%fp),-(%sp)
	move.l 24(%fp),-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L205
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
	jra .L199
.L205:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
.L199:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L191:
	move.l %a2,%a0
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	link.w %fp,#0
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L221
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
	jra .L209
.L221:
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L222
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L209
.L222:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 16(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L212
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L213
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L209
.L213:
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
	jra .L209
.L212:
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L223
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L209
.L223:
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
.L209:
	unlk %fp
	rts
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	link.w %fp,#0
	move.l 8(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L239
	move.l 12(%fp),%d0
	jra .L227
.L239:
	move.l 12(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L240
	move.l 8(%fp),%d0
	jra .L227
.L240:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 12(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L230
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L231
	move.l 8(%fp),%d0
	jra .L227
.L231:
	move.l 12(%fp),%d0
	jra .L227
.L230:
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L241
	move.l 8(%fp),%d0
	jra .L227
.L241:
	move.l 12(%fp),%d0
.L227:
	unlk %fp
	rts
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l %a1,%a2
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L257
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L245
.L257:
	move.l 28(%fp),-(%sp)
	move.l 24(%fp),-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 28(%fp),-(%sp)
	move.l 24(%fp),-(%sp)
	move.l 20(%fp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L258
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L245
.L258:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 20(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L248
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L249
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	jra .L250
.L249:
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
.L250:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L245
.L248:
	move.l 28(%fp),-(%sp)
	move.l 24(%fp),-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L259
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	jra .L253
.L259:
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
.L253:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L245:
	move.l %a2,%a0
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
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
	link.w %fp,#-8
	move.l 8(%fp),-8(%fp)
	move.l #s.0,-4(%fp)
	jra .L261
.L262:
	moveq #63,%d0
	and.l -8(%fp),%d0
	lea digits,%a0
	move.b (%a0,%d0.l),%d0
	move.l -4(%fp),%a0
	move.b %d0,(%a0)
	addq.l #1,-4(%fp)
	move.l -8(%fp),%d0
	lsr.l #6,%d0
	move.l %d0,-8(%fp)
.L261:
	tst.l -8(%fp)
	jne .L262
	move.l -4(%fp),%a0
	clr.b (%a0)
	move.l #s.0,%d0
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,2
	.align	2
	.globl	srand
	.type	srand, @function
srand:
	link.w %fp,#0
	move.l 8(%fp),%a0
	subq.l #1,%a0
	move.l %a0,%d1
	moveq #0,%d0
	move.l %d0,seed
	move.l %d1,seed+4
	nop
	unlk %fp
	rts
	.size	srand, .-srand
	.align	2
	.globl	rand
	.type	rand, @function
rand:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l seed,%d0
	move.l seed+4,%d1
	move.l #1284865837,-(%sp)
	move.l #1481765933,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __muldi3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	clr.l %d2
	addq.l #1,%d1
	addx.l %d2,%d0
	move.l %d0,seed
	move.l %d1,seed+4
	move.l seed,%d0
	move.l seed+4,%d1
	lsr.l #1,%d0
	move.l %d0,%d1
	moveq #0,%d0
	move.l %d1,%d0
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.size	rand, .-rand
	.align	2
	.globl	insque
	.type	insque, @function
insque:
	link.w %fp,#-8
	move.l 8(%fp),-4(%fp)
	move.l 12(%fp),-8(%fp)
	jne .L268
	move.l -4(%fp),%a0
	clr.l 4(%a0)
	move.l -4(%fp),%a0
	move.l 4(%a0),%d0
	move.l -4(%fp),%a0
	move.l %d0,(%a0)
	jra .L267
.L268:
	move.l -8(%fp),%a0
	move.l (%a0),%d0
	move.l -4(%fp),%a0
	move.l %d0,(%a0)
	move.l -4(%fp),%a0
	move.l -8(%fp),4(%a0)
	move.l -8(%fp),%a0
	move.l -4(%fp),(%a0)
	move.l -4(%fp),%a0
	move.l (%a0),%d0
	jeq .L267
	move.l -4(%fp),%a0
	move.l (%a0),%a0
	move.l -4(%fp),4(%a0)
.L267:
	unlk %fp
	rts
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	link.w %fp,#-4
	move.l 8(%fp),-4(%fp)
	move.l -4(%fp),%a0
	move.l (%a0),%d0
	jeq .L271
	move.l -4(%fp),%a0
	move.l (%a0),%a0
	move.l -4(%fp),%a1
	move.l 4(%a1),%d0
	move.l %d0,4(%a0)
.L271:
	move.l -4(%fp),%a0
	move.l 4(%a0),%d0
	jeq .L273
	move.l -4(%fp),%a0
	move.l 4(%a0),%a0
	move.l -4(%fp),%a1
	move.l (%a1),%d0
	move.l %d0,(%a0)
.L273:
	nop
	unlk %fp
	rts
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
	link.w %fp,#-16
	move.l %d2,-(%sp)
	move.l 20(%fp),%d2
	move.l %d2,%d0
	subq.l #1,%d0
	move.l %d0,-8(%fp)
	move.l 12(%fp),-12(%fp)
	move.l 16(%fp),%a0
	move.l (%a0),-16(%fp)
	clr.l -4(%fp)
	jra .L275
.L278:
	move.l -4(%fp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l -12(%fp),%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 24(%fp),%a0
	jsr (%a0)
	addq.l #8,%sp
	tst.l %d0
	jne .L276
	move.l -4(%fp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l -12(%fp),%d0
	jra .L277
.L276:
	addq.l #1,-4(%fp)
.L275:
	move.l -4(%fp),%d0
	cmp.l -16(%fp),%d0
	jcs .L278
	move.l -16(%fp),%d0
	addq.l #1,%d0
	move.l 16(%fp),%a0
	move.l %d0,(%a0)
	move.l -16(%fp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l -12(%fp),%d0
	move.l 20(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
	move.l %a0,%d0
.L277:
	move.l %d0,%d1
	move.l %d1,%a0
	move.l -20(%fp),%d2
	unlk %fp
	rts
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.type	lfind, @function
lfind:
	link.w %fp,#-16
	move.l %d2,-(%sp)
	move.l 20(%fp),%d2
	move.l %d2,%d0
	subq.l #1,%d0
	move.l %d0,-8(%fp)
	move.l 12(%fp),-12(%fp)
	move.l 16(%fp),%a0
	move.l (%a0),-16(%fp)
	clr.l -4(%fp)
	jra .L280
.L283:
	move.l -4(%fp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l -12(%fp),%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 24(%fp),%a0
	jsr (%a0)
	addq.l #8,%sp
	tst.l %d0
	jne .L281
	move.l -4(%fp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l -12(%fp),%d0
	jra .L282
.L281:
	addq.l #1,-4(%fp)
.L280:
	move.l -4(%fp),%d0
	cmp.l -16(%fp),%d0
	jcs .L283
	moveq #0,%d0
.L282:
	move.l %d0,%d1
	move.l %d1,%a0
	move.l -20(%fp),%d2
	unlk %fp
	rts
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	link.w %fp,#0
	move.l 8(%fp),%d0
	jpl .L285
	neg.l %d0
.L285:
	unlk %fp
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	link.w %fp,#-8
	move.l %d2,-(%sp)
	clr.l -4(%fp)
	clr.l -8(%fp)
	jra .L288
.L289:
	addq.l #1,8(%fp)
.L288:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L289
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	moveq #43,%d0
	cmp.l %a0,%d0
	jeq .L290
	moveq #45,%d2
	cmp.l %a0,%d2
	jne .L292
	moveq #1,%d0
	move.l %d0,-8(%fp)
.L290:
	addq.l #1,8(%fp)
	jra .L292
.L293:
	move.l -4(%fp),%d1
	move.l %d1,%d0
	add.l %d0,%d0
	add.l %d0,%d0
	add.l %d1,%d0
	add.l %d0,%d0
	move.l %d0,%d1
	move.l 8(%fp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,8(%fp)
	move.l %d0,%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	move.l %d1,%d0
	sub.l %a0,%d0
	move.l %d0,-4(%fp)
.L292:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcc .L293
	tst.l -8(%fp)
	jne .L294
	move.l -4(%fp),%d0
	neg.l %d0
	jra .L296
.L294:
	move.l -4(%fp),%d0
.L296:
	move.l -12(%fp),%d2
	unlk %fp
	rts
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	link.w %fp,#-8
	move.l %d2,-(%sp)
	clr.l -4(%fp)
	clr.l -8(%fp)
	jra .L298
.L299:
	addq.l #1,8(%fp)
.L298:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L299
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	moveq #43,%d0
	cmp.l %a0,%d0
	jeq .L300
	moveq #45,%d2
	cmp.l %a0,%d2
	jne .L302
	moveq #1,%d0
	move.l %d0,-8(%fp)
.L300:
	addq.l #1,8(%fp)
	jra .L302
.L303:
	move.l -4(%fp),%d1
	move.l %d1,%d0
	add.l %d0,%d0
	add.l %d0,%d0
	add.l %d1,%d0
	add.l %d0,%d0
	move.l %d0,%d1
	move.l 8(%fp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,8(%fp)
	move.l %d0,%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	move.l %d1,%d0
	sub.l %a0,%d0
	move.l %d0,-4(%fp)
.L302:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcc .L303
	tst.l -8(%fp)
	jne .L304
	move.l -4(%fp),%d0
	neg.l %d0
	jra .L306
.L304:
	move.l -4(%fp),%d0
.L306:
	move.l -12(%fp),%d2
	unlk %fp
	rts
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	link.w %fp,#-12
	movem.l #15360,-(%sp)
	clr.l -8(%fp)
	clr.l -4(%fp)
	clr.l -12(%fp)
	jra .L308
.L309:
	addq.l #1,8(%fp)
.L308:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L309
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	moveq #43,%d0
	cmp.l %a0,%d0
	jeq .L310
	moveq #45,%d1
	cmp.l %a0,%d1
	jne .L312
	moveq #1,%d2
	move.l %d2,-12(%fp)
.L310:
	addq.l #1,8(%fp)
	jra .L312
.L313:
	move.l -8(%fp),%a0
	move.l -4(%fp),%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l %d0,%d2
	move.l %d1,%d3
	add.l %d3,%d3
	addx.l %d2,%d2
	add.l %d3,%d3
	addx.l %d2,%d2
	move.l %d2,%d0
	move.l %d3,%d1
	move.l %a0,%d4
	add.l %a1,%d1
	addx.l %d4,%d0
	move.l %d0,%d2
	move.l %d1,%d3
	add.l %d3,%d3
	addx.l %d2,%d2
	move.l %d2,%d0
	move.l %d3,%d1
	move.l %d0,%d2
	move.l %d1,%d3
	move.l 8(%fp),%d0
	move.l %d0,%d5
	addq.l #1,%d5
	move.l %d5,8(%fp)
	move.l %d0,%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	move.l %a0,%d1
	smi %d0
	ext.w %d0
	ext.l %d0
	move.l %d2,%d4
	move.l %d3,%d5
	sub.l %d1,%d5
	subx.l %d0,%d4
	move.l %d4,-8(%fp)
	move.l %d5,-4(%fp)
.L312:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d5
	cmp.l %a0,%d5
	jcc .L313
	tst.l -12(%fp)
	jne .L314
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	neg.l %d1
	negx.l %d0
	jra .L316
.L314:
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
.L316:
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	movem.l -28(%fp),#60
	unlk %fp
	rts
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
	link.w %fp,#-8
	jra .L318
.L322:
	move.l 16(%fp),%d0
	lsr.l #1,%d0
	move.l 20(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l 12(%fp),%d1
	add.l %d0,%d1
	move.l %d1,-4(%fp)
	move.l -4(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 24(%fp),%a0
	jsr (%a0)
	addq.l #8,%sp
	move.l %d0,-8(%fp)
	jpl .L319
	move.l 16(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,16(%fp)
	jra .L318
.L319:
	tst.l -8(%fp)
	jle .L320
	move.l -4(%fp),%d0
	add.l 20(%fp),%d0
	move.l %d0,12(%fp)
	move.l 16(%fp),%d0
	move.l %d0,%d1
	lsr.l #1,%d1
	move.l 16(%fp),%d0
	sub.l %d1,%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	jra .L318
.L320:
	move.l -4(%fp),%d0
	jra .L321
.L318:
	tst.l 16(%fp)
	jne .L322
	moveq #0,%d0
.L321:
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	link.w %fp,#-16
	move.l 12(%fp),-4(%fp)
	move.l 16(%fp),-8(%fp)
	jra .L324
.L328:
	move.l -8(%fp),%d0
	asr.l #1,%d0
	move.l 20(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l -4(%fp),%d1
	add.l %d0,%d1
	move.l %d1,-12(%fp)
	move.l 28(%fp),-(%sp)
	move.l -12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 24(%fp),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.l %d0,-16(%fp)
	jne .L325
	move.l -12(%fp),%d0
	jra .L326
.L325:
	tst.l -16(%fp)
	jle .L327
	move.l -12(%fp),%d0
	add.l 20(%fp),%d0
	move.l %d0,-4(%fp)
	subq.l #1,-8(%fp)
.L327:
	move.l -8(%fp),%d0
	asr.l #1,%d0
	move.l %d0,-8(%fp)
.L324:
	tst.l -8(%fp)
	jne .L328
	moveq #0,%d0
.L326:
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
	link.w %fp,#0
	movem.l #14336,-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __divsi3
	addq.l #8,%sp
	move.l %d0,%d4
	move.l 8(%fp),%d0
	move.l 12(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	move.l %d4,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l -12(%fp),#28
	unlk %fp
	rts
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	tst.l %d0
	jge .L332
	neg.l %d1
	negx.l %d0
.L332:
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	unlk %fp
	rts
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	link.w %fp,#-16
	movem.l #12320,-(%sp)
	move.l %a1,%a2
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __divdi3
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l %d2,(%a2)
	move.l %d3,4(%a2)
	move.l %d0,8(%a2)
	move.l %d1,12(%a2)
	move.l %a2,%a0
	movem.l -28(%fp),#1036
	unlk %fp
	rts
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.type	labs, @function
labs:
	link.w %fp,#0
	move.l 8(%fp),%d0
	jpl .L337
	neg.l %d0
.L337:
	unlk %fp
	rts
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.type	ldiv, @function
ldiv:
	link.w %fp,#0
	movem.l #14336,-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __divsi3
	addq.l #8,%sp
	move.l %d0,%d4
	move.l 8(%fp),%d0
	move.l 12(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	move.l %d4,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l -12(%fp),#28
	unlk %fp
	rts
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.type	llabs, @function
llabs:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	tst.l %d0
	jge .L342
	neg.l %d1
	negx.l %d0
.L342:
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	unlk %fp
	rts
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.type	lldiv, @function
lldiv:
	link.w %fp,#-16
	movem.l #12320,-(%sp)
	move.l %a1,%a2
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __divdi3
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l %d2,(%a2)
	move.l %d3,4(%a2)
	move.l %d0,8(%a2)
	move.l %d1,12(%a2)
	move.l %a2,%a0
	movem.l -28(%fp),#1036
	unlk %fp
	rts
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.type	wcschr, @function
wcschr:
	link.w %fp,#0
	jra .L347
.L349:
	addq.l #4,8(%fp)
.L347:
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	jeq .L348
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	cmp.l 12(%fp),%d0
	jne .L349
.L348:
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	jeq .L350
	move.l 8(%fp),%d0
	jra .L352
.L350:
	moveq #0,%d0
.L352:
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
	link.w %fp,#0
	jra .L354
.L356:
	addq.l #4,8(%fp)
	addq.l #4,12(%fp)
.L354:
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jne .L355
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	jeq .L355
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	jne .L356
.L355:
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L357
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L359
.L357:
	moveq #-1,%d0
.L359:
	unlk %fp
	rts
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	link.w %fp,#-4
	move.l 8(%fp),-4(%fp)
	nop
.L361:
	move.l 12(%fp),%d0
	move.l %d0,%d1
	addq.l #4,%d1
	move.l %d1,12(%fp)
	move.l 8(%fp),%a0
	lea (4,%a0),%a1
	move.l %a1,8(%fp)
	move.l %d0,%a1
	move.l (%a1),%d0
	move.l %d0,(%a0)
	move.l (%a0),%d0
	jne .L361
	move.l -4(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	link.w %fp,#-4
	move.l 8(%fp),-4(%fp)
	jra .L364
.L365:
	addq.l #4,8(%fp)
.L364:
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	jne .L365
	move.l 8(%fp),%d0
	sub.l -4(%fp),%d0
	asr.l #2,%d0
	unlk %fp
	rts
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	link.w %fp,#0
	jra .L368
.L370:
	subq.l #1,16(%fp)
	addq.l #4,8(%fp)
	addq.l #4,12(%fp)
.L368:
	tst.l 16(%fp)
	jeq .L369
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jne .L369
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	jeq .L369
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	jne .L370
.L369:
	tst.l 16(%fp)
	jeq .L371
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L372
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L375
.L372:
	moveq #-1,%d0
	jra .L375
.L371:
	moveq #0,%d0
.L375:
	unlk %fp
	rts
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	link.w %fp,#0
	jra .L377
.L379:
	subq.l #1,16(%fp)
	addq.l #4,8(%fp)
.L377:
	tst.l 16(%fp)
	jeq .L378
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	cmp.l 12(%fp),%d0
	jne .L379
.L378:
	tst.l 16(%fp)
	jeq .L380
	move.l 8(%fp),%d0
	jra .L382
.L380:
	moveq #0,%d0
.L382:
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	link.w %fp,#0
	jra .L384
.L386:
	subq.l #1,16(%fp)
	addq.l #4,8(%fp)
	addq.l #4,12(%fp)
.L384:
	tst.l 16(%fp)
	jeq .L385
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jeq .L386
.L385:
	tst.l 16(%fp)
	jeq .L387
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L388
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L391
.L388:
	moveq #-1,%d0
	jra .L391
.L387:
	moveq #0,%d0
.L391:
	unlk %fp
	rts
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	link.w %fp,#-4
	move.l %d2,-(%sp)
	move.l 8(%fp),-4(%fp)
	jra .L393
.L394:
	move.l 12(%fp),%d1
	move.l %d1,%d0
	addq.l #4,%d0
	move.l %d0,12(%fp)
	move.l 8(%fp),%d0
	move.l %d0,%d2
	addq.l #4,%d2
	move.l %d2,8(%fp)
	move.l %d1,%a0
	move.l (%a0),%d1
	move.l %d0,%a0
	move.l %d1,(%a0)
.L393:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L394
	move.l -4(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
	link.w %fp,#-4
	move.l %d2,-(%sp)
	move.l 8(%fp),-4(%fp)
	move.l 8(%fp),%d0
	cmp.l 12(%fp),%d0
	jne .L397
	move.l 8(%fp),%d0
	jra .L398
.L397:
	move.l 8(%fp),%d1
	move.l 12(%fp),%d0
	sub.l %d0,%d1
	move.l 16(%fp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	cmp.l %d1,%d0
	jls .L403
	jra .L400
.L401:
	move.l 16(%fp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	move.l 12(%fp),%a1
	add.l %d0,%a1
	move.l 16(%fp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	move.l 8(%fp),%a0
	add.l %d0,%a0
	move.l (%a1),%d0
	move.l %d0,(%a0)
.L400:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L401
	jra .L402
.L404:
	move.l 12(%fp),%d1
	move.l %d1,%d2
	addq.l #4,%d2
	move.l %d2,12(%fp)
	move.l 8(%fp),%d0
	move.l %d0,%d2
	addq.l #4,%d2
	move.l %d2,8(%fp)
	move.l %d1,%a0
	move.l (%a0),%d1
	move.l %d0,%a0
	move.l %d1,(%a0)
.L403:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L404
.L402:
	move.l -4(%fp),%d0
.L398:
	move.l %d0,%d1
	move.l %d1,%a0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
	link.w %fp,#-4
	move.l 8(%fp),-4(%fp)
	jra .L406
.L407:
	move.l 8(%fp),%d0
	move.l %d0,%d1
	addq.l #4,%d1
	move.l %d1,8(%fp)
	move.l %d0,%a0
	move.l 12(%fp),(%a0)
.L406:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L407
	move.l -4(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
	link.w %fp,#-8
	move.l %d2,-(%sp)
	move.l 8(%fp),-4(%fp)
	move.l 12(%fp),-8(%fp)
	move.l -4(%fp),%d0
	cmp.l -8(%fp),%d0
	jcc .L410
	move.l 16(%fp),%d2
	add.l %d2,-4(%fp)
	move.l 16(%fp),%d0
	add.l %d0,-8(%fp)
	jra .L411
.L412:
	subq.l #1,-4(%fp)
	subq.l #1,-8(%fp)
	move.l -4(%fp),%a0
	move.b (%a0),%d0
	move.l -8(%fp),%a0
	move.b %d0,(%a0)
	subq.l #1,16(%fp)
.L411:
	tst.l 16(%fp)
	jne .L412
	jra .L416
.L410:
	move.l -4(%fp),%d2
	cmp.l -8(%fp),%d2
	jeq .L416
	jra .L414
.L415:
	move.l -4(%fp),%d1
	move.l %d1,%d0
	addq.l #1,%d0
	move.l %d0,-4(%fp)
	move.l -8(%fp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,-8(%fp)
	move.l %d1,%a0
	move.b (%a0),%d1
	move.l %d0,%a0
	move.b %d1,(%a0)
	subq.l #1,16(%fp)
.L414:
	tst.l 16(%fp)
	jne .L415
.L416:
	nop
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.type	rotl64, @function
rotl64:
	link.w %fp,#-12
	movem.l #16128,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #-32,%d6
	add.l 16(%fp),%d6
	jmi .L418
	move.l %d1,%d4
	lsl.l %d6,%d4
	moveq #0,%d5
	jra .L419
.L418:
	move.l %d1,%d7
	lsr.l #1,%d7
	moveq #31,%d6
	sub.l 16(%fp),%d6
	lsr.l %d6,%d7
	move.l %d0,%d4
	move.l 16(%fp),%d6
	lsl.l %d6,%d4
	or.l %d7,%d4
	move.l %d1,%d5
	move.l 16(%fp),%d7
	lsl.l %d7,%d5
.L419:
	move.l 16(%fp),%d6
	neg.l %d6
	moveq #63,%d7
	and.l %d7,%d6
	move.w #-32,%a0
	add.l %d6,%a0
	cmp.w #0,%a0
	jlt .L420
	move.l %d0,%d3
	move.l %a0,%d6
	lsr.l %d6,%d3
	moveq #0,%d2
	jra .L421
.L420:
	move.l %d0,%d7
	add.l %d7,%d7
	move.l 16(%fp),%d6
	neg.l %d6
	moveq #63,%d2
	and.l %d2,%d6
	moveq #31,%d2
	sub.l %d6,%d2
	move.l %d2,-4(%fp)
	move.l -4(%fp),%d6
	lsl.l %d6,%d7
	move.l 16(%fp),%d6
	neg.l %d6
	moveq #63,%d2
	and.l %d2,%d6
	move.l %d1,%d3
	lsr.l %d6,%d3
	or.l %d7,%d3
	move.l 16(%fp),%d6
	neg.l %d6
	moveq #63,%d7
	and.l %d7,%d6
	move.l %d0,%d2
	lsr.l %d6,%d2
.L421:
	move.l %d2,%d0
	or.l %d4,%d0
	move.l %d0,-12(%fp)
	move.l %d3,%d6
	or.l %d5,%d6
	move.l %d6,-8(%fp)
	move.l -12(%fp),%d2
	move.l -8(%fp),%d3
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#252
	unlk %fp
	rts
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
	link.w %fp,#-12
	movem.l #16128,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #-32,%d6
	add.l 16(%fp),%d6
	jmi .L424
	move.l %d0,%d5
	lsr.l %d6,%d5
	moveq #0,%d4
	jra .L425
.L424:
	move.l %d0,%d7
	add.l %d7,%d7
	moveq #31,%d6
	sub.l 16(%fp),%d6
	lsl.l %d6,%d7
	move.l %d1,%d5
	move.l 16(%fp),%d6
	lsr.l %d6,%d5
	or.l %d7,%d5
	move.l %d0,%d4
	move.l 16(%fp),%d7
	lsr.l %d7,%d4
.L425:
	move.l 16(%fp),%d6
	neg.l %d6
	moveq #63,%d7
	and.l %d7,%d6
	move.w #-32,%a0
	add.l %d6,%a0
	cmp.w #0,%a0
	jlt .L426
	move.l %d1,%d2
	move.l %a0,%d6
	lsl.l %d6,%d2
	moveq #0,%d3
	jra .L427
.L426:
	move.l %d1,%d7
	lsr.l #1,%d7
	move.l 16(%fp),%d6
	neg.l %d6
	moveq #63,%d2
	and.l %d2,%d6
	moveq #31,%d2
	sub.l %d6,%d2
	move.l %d2,-4(%fp)
	move.l -4(%fp),%d6
	lsr.l %d6,%d7
	move.l 16(%fp),%d6
	neg.l %d6
	moveq #63,%d2
	and.l %d2,%d6
	move.l %d0,%d2
	lsl.l %d6,%d2
	or.l %d7,%d2
	move.l 16(%fp),%d6
	neg.l %d6
	moveq #63,%d7
	and.l %d7,%d6
	move.l %d1,%d3
	lsl.l %d6,%d3
.L427:
	move.l %d2,%d0
	or.l %d4,%d0
	move.l %d0,-12(%fp)
	move.l %d3,%d6
	or.l %d5,%d6
	move.l %d6,-8(%fp)
	move.l -12(%fp),%d2
	move.l -8(%fp),%d3
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#252
	unlk %fp
	rts
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.type	rotl32, @function
rotl32:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	rol.l %d1,%d0
	unlk %fp
	rts
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.type	rotr32, @function
rotr32:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	ror.l %d1,%d0
	unlk %fp
	rts
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	rol.l %d1,%d0
	unlk %fp
	rts
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	ror.l %d1,%d0
	unlk %fp
	rts
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.type	rotl16, @function
rotl16:
	link.w %fp,#-4
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.w %d0,%d0
	move.w %d0,-2(%fp)
	moveq #0,%d0
	move.w -2(%fp),%d0
	move.l 12(%fp),%d1
	lsl.l %d1,%d0
	move.l %d0,%d2
	moveq #0,%d1
	move.w -2(%fp),%d1
	moveq #16,%d0
	sub.l 12(%fp),%d0
	lsr.l %d0,%d1
	move.l %d1,%d0
	or.w %d2,%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.type	rotr16, @function
rotr16:
	link.w %fp,#-4
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.w %d0,%d0
	move.w %d0,-2(%fp)
	moveq #0,%d0
	move.w -2(%fp),%d0
	move.l 12(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,%d2
	moveq #0,%d1
	move.w -2(%fp),%d1
	moveq #16,%d0
	sub.l 12(%fp),%d0
	lsl.l %d0,%d1
	move.l %d1,%d0
	or.w %d2,%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.type	rotl8, @function
rotl8:
	link.w %fp,#-4
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.b %d0,%d0
	move.b %d0,-2(%fp)
	moveq #0,%d0
	move.b -2(%fp),%d0
	move.l 12(%fp),%d1
	lsl.l %d1,%d0
	move.l %d0,%d2
	moveq #0,%d1
	move.b -2(%fp),%d1
	moveq #8,%d0
	sub.l 12(%fp),%d0
	lsr.l %d0,%d1
	move.l %d1,%d0
	or.b %d2,%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.type	rotr8, @function
rotr8:
	link.w %fp,#-4
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.b %d0,%d0
	move.b %d0,-2(%fp)
	moveq #0,%d0
	move.b -2(%fp),%d0
	move.l 12(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,%d2
	moveq #0,%d1
	move.b -2(%fp),%d1
	moveq #8,%d0
	sub.l 12(%fp),%d0
	lsl.l %d0,%d1
	move.l %d1,%d0
	or.b %d2,%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
	link.w %fp,#-8
	move.l 8(%fp),%d0
	move.w %d0,%d0
	move.w %d0,-6(%fp)
	move.l #255,-4(%fp)
	moveq #0,%d1
	move.w -6(%fp),%d1
	move.l -4(%fp),%d0
	lsl.l #8,%d0
	and.l %d1,%d0
	lsr.l #8,%d0
	move.l %d0,%d1
	move.l -4(%fp),%d0
	and.w -6(%fp),%d0
	lsl.w #8,%d0
	or.w %d1,%d0
	unlk %fp
	rts
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
	link.w %fp,#-4
	move.l #255,-4(%fp)
	move.l -4(%fp),%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	and.l 8(%fp),%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	lsr.w #8,%d1
	move.l -4(%fp),%d0
	swap %d0
	clr.w %d0
	and.l 8(%fp),%d0
	lsr.l #8,%d0
	or.l %d0,%d1
	move.l -4(%fp),%d0
	lsl.l #8,%d0
	and.l 8(%fp),%d0
	lsl.l #8,%d0
	or.l %d0,%d1
	move.l 8(%fp),%d0
	and.l -4(%fp),%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d1,%d0
	unlk %fp
	rts
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
	link.w %fp,#-128
	movem.l #16128,-(%sp)
	clr.l -8(%fp)
	move.l #255,-4(%fp)
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	moveq #24,%d0
	lsl.l %d0,%d1
	move.l %d1,%d0
	moveq #0,%d1
	move.l 8(%fp),%d2
	and.l %d0,%d2
	move.l 12(%fp),%d3
	and.l %d1,%d3
	moveq #24,%d3
	lsr.l %d3,%d2
	move.l %d2,%d3
	moveq #0,%d2
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	move.l %d1,%d0
	swap %d0
	moveq #0,%d1
	clr.w %d0
	move.l 8(%fp),%d6
	and.l %d0,%d6
	move.l 12(%fp),%d7
	and.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	lsr.l #8,%d0
	move.l %d0,%d1
	moveq #0,%d0
	move.l %d2,%d4
	or.l %d0,%d4
	move.l %d4,-16(%fp)
	move.l %d3,%d4
	or.l %d1,%d4
	move.l %d4,-12(%fp)
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	lsl.l #8,%d1
	move.l %d1,%d0
	moveq #0,%d1
	move.l 8(%fp),%d4
	and.l %d0,%d4
	move.l 12(%fp),%d5
	and.l %d1,%d5
	move.l %d4,%d0
	lsl.l #8,%d0
	move.l %d5,%d1
	clr.w %d1
	swap %d1
	lsr.w #8,%d1
	move.l %d1,-20(%fp)
	or.l %d0,-20(%fp)
	move.l %d4,%d2
	clr.w %d2
	swap %d2
	lsr.w #8,%d2
	move.l %d2,-24(%fp)
	move.l -16(%fp),%d4
	or.l -24(%fp),%d4
	move.l %d4,-32(%fp)
	move.l -12(%fp),%d0
	or.l -20(%fp),%d0
	move.l %d0,-28(%fp)
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	move.l %d1,%d0
	moveq #0,%d1
	move.l 8(%fp),%d2
	and.l %d0,%d2
	move.l %d2,-40(%fp)
	move.l 12(%fp),%d4
	and.l %d1,%d4
	move.l %d4,-36(%fp)
	move.l -40(%fp),%d0
	move.l -36(%fp),%d1
	move.b %d0,%d1
	lsr.l #8,%d0
	ror.l #8,%d1
	move.l -32(%fp),%d2
	or.l %d0,%d2
	move.l %d2,-48(%fp)
	move.l -28(%fp),%d4
	or.l %d1,%d4
	move.l %d4,-44(%fp)
	move.l -4(%fp),%d0
	move.l %d0,%d1
	lsr.l #8,%d1
	move.l -8(%fp),%d0
	move.l %d0,%d2
	lsl.w #8,%d2
	swap %d2
	clr.w %d2
	move.l %d2,-56(%fp)
	or.l %d1,-56(%fp)
	move.l -4(%fp),%d0
	move.l %d0,%d4
	lsl.w #8,%d4
	swap %d4
	clr.w %d4
	move.l %d4,-52(%fp)
	move.l 8(%fp),%d0
	and.l -56(%fp),%d0
	move.l %d0,-64(%fp)
	move.l 12(%fp),%d1
	and.l -52(%fp),%d1
	move.l %d1,-60(%fp)
	move.l -64(%fp),%d0
	move.l -60(%fp),%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	move.l -48(%fp),%d2
	or.l %d0,%d2
	move.l %d2,-72(%fp)
	move.l -44(%fp),%d4
	or.l %d1,%d4
	move.l %d4,-68(%fp)
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	swap %d0
	swap %d1
	move.w %d1,%d0
	clr.w %d1
	move.l 8(%fp),%d2
	and.l %d0,%d2
	move.l %d2,-80(%fp)
	move.l 12(%fp),%d4
	and.l %d1,%d4
	move.l %d4,-76(%fp)
	move.l -76(%fp),%d0
	lsr.l #8,%d0
	move.l -80(%fp),%d1
	lsl.w #8,%d1
	swap %d1
	clr.w %d1
	move.l %d1,-88(%fp)
	or.l %d0,-88(%fp)
	move.l -76(%fp),%d2
	lsl.w #8,%d2
	swap %d2
	clr.w %d2
	move.l %d2,-84(%fp)
	move.l -72(%fp),%d4
	or.l -88(%fp),%d4
	move.l %d4,-96(%fp)
	move.l -68(%fp),%d0
	or.l -84(%fp),%d0
	move.l %d0,-92(%fp)
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	move.l 8(%fp),%d2
	and.l %d0,%d2
	move.l %d2,-104(%fp)
	move.l 12(%fp),%d4
	and.l %d1,%d4
	move.l %d4,-100(%fp)
	move.l -104(%fp),%d0
	move.l -100(%fp),%d1
	lsl.l #8,%d1
	move.l %d1,%d0
	moveq #0,%d1
	move.l -96(%fp),%d2
	or.l %d0,%d2
	move.l %d2,-112(%fp)
	move.l -92(%fp),%d4
	or.l %d1,%d4
	move.l %d4,-108(%fp)
	move.l 8(%fp),%d0
	and.l -8(%fp),%d0
	move.l %d0,-120(%fp)
	move.l 12(%fp),%d1
	and.l -4(%fp),%d1
	move.l %d1,-116(%fp)
	move.l -120(%fp),%d0
	move.l -116(%fp),%d1
	moveq #24,%d0
	lsl.l %d0,%d1
	move.l %d1,%d0
	moveq #0,%d1
	move.l -112(%fp),%d2
	or.l %d0,%d2
	move.l %d2,-128(%fp)
	move.l -108(%fp),%d4
	or.l %d1,%d4
	move.l %d4,-124(%fp)
	move.l -128(%fp),%d0
	move.l -124(%fp),%d1
	movem.l (%sp)+,#252
	unlk %fp
	rts
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
	link.w %fp,#-4
	clr.l -4(%fp)
	jra .L452
.L455:
	move.l 8(%fp),%d0
	move.l -4(%fp),%d1
	lsr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L453
	move.l -4(%fp),%d0
	addq.l #1,%d0
	jra .L454
.L453:
	addq.l #1,-4(%fp)
.L452:
	moveq #31,%d0
	cmp.l -4(%fp),%d0
	jcc .L455
	moveq #0,%d0
.L454:
	unlk %fp
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	jne .L457
	moveq #0,%d0
	jra .L458
.L457:
	moveq #1,%d2
	jra .L459
.L460:
	asr.l #1,%d0
	addq.l #1,%d2
.L459:
	moveq #1,%d1
	and.l %d0,%d1
	jeq .L460
	move.l %d2,%d0
.L458:
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	link.w %fp,#0
	move.l #0xff7fffff,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L462
	move.l #0x7f7fffff,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L467
.L462:
	moveq #1,%d0
	jra .L466
.L467:
	moveq #0,%d0
.L466:
	unlk %fp
	rts
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	link.w %fp,#0
	pea -1.w
	move.l #-1048577,-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L469
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L474
.L469:
	moveq #1,%d0
	jra .L473
.L474:
	moveq #0,%d0
.L473:
	unlk %fp
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
	link.w %fp,#0
	move.l .LC0+8,-(%sp)
	move.l .LC0+4,-(%sp)
	move.l .LC0,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L476
	move.l .LC1+8,-(%sp)
	move.l .LC1+4,-(%sp)
	move.l .LC1,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __gtxf2
	lea (24,%sp),%sp
	tst.l %d0
	jle .L481
.L476:
	moveq #1,%d0
	jra .L480
.L481:
	moveq #0,%d0
.L480:
	unlk %fp
	rts
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	link.w %fp,#-12
	move.l %d2,-(%sp)
	move.l 12(%fp),-(%sp)
	jsr __floatsidf
	addq.l #4,%sp
	lea (-12,%fp),%a0
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %a0,%a1
	jsr __extenddfxf2
	addq.l #8,%sp
	move.l -12(%fp),%d0
	move.l -8(%fp),%d1
	move.l -4(%fp),%d2
	move.l 8(%fp),%a0
	move.l %d0,(%a0)
	move.l %d1,4(%a0)
	move.l %d2,8(%a0)
	nop
	move.l -16(%fp),%d2
	unlk %fp
	rts
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
	link.w %fp,#-4
	move.l 8(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L484
	move.l 8(%fp),%d0
	move.l %d0,-(%sp)
	move.l %d0,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L484
	tst.l 12(%fp)
	jge .L486
	move.l #0x3f000000,%d0
	jra .L487
.L486:
	move.l #0x40000000,%d0
.L487:
	move.l %d0,-4(%fp)
.L490:
	move.l 12(%fp),%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L488
	move.l -4(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,8(%fp)
.L488:
	move.l 12(%fp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,12(%fp)
	jeq .L493
	move.l -4(%fp),-(%sp)
	move.l -4(%fp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,-4(%fp)
	jra .L490
.L493:
	nop
.L484:
	move.l 8(%fp),%d0
	unlk %fp
	rts
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
	link.w %fp,#-24
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L495
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L495
	tst.l 16(%fp)
	jge .L497
	move.l #1071644672,%d0
	clr.l %d1
	jra .L498
.L497:
	move.l #1073741824,%d0
	clr.l %d1
.L498:
	move.l %d0,-8(%fp)
	move.l %d1,-4(%fp)
.L501:
	move.l 16(%fp),%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L499
	move.l -4(%fp),-(%sp)
	move.l -8(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,-16(%fp)
	move.l %d1,-12(%fp)
	move.l -16(%fp),8(%fp)
	move.l -12(%fp),12(%fp)
.L499:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,16(%fp)
	jeq .L504
	move.l -4(%fp),-(%sp)
	move.l -8(%fp),-(%sp)
	move.l -4(%fp),-(%sp)
	move.l -8(%fp),-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,-24(%fp)
	move.l %d1,-20(%fp)
	move.l -24(%fp),-8(%fp)
	move.l -20(%fp),-4(%fp)
	jra .L501
.L504:
	nop
.L495:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	unlk %fp
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
	link.w %fp,#-24
	movem.l #8248,-(%sp)
	move.l %a1,%a4
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L506
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	lea (-24,%fp),%a0
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %a0,%a1
	jsr __addxf3
	lea (24,%sp),%sp
	move.l -24(%fp),%a1
	move.l -20(%fp),%a2
	move.l -16(%fp),%a3
	move.l %a1,%d0
	move.l %a2,%d1
	move.l %a3,%d2
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __nexf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L506
	tst.l 20(%fp)
	jge .L508
	move.l .LC2,%d0
	move.l .LC2+4,%d1
	move.l .LC2+8,%d2
	jra .L509
.L508:
	move.l .LC3,%d0
	move.l .LC3+4,%d1
	move.l .LC3+8,%d2
.L509:
	move.l %d0,-12(%fp)
	move.l %d1,-8(%fp)
	move.l %d2,-4(%fp)
.L512:
	move.l 20(%fp),%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L510
	lea (-24,%fp),%a0
	move.l -4(%fp),-(%sp)
	move.l -8(%fp),-(%sp)
	move.l -12(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l %a0,%a1
	jsr __mulxf3
	lea (24,%sp),%sp
	move.l -24(%fp),%d0
	move.l -20(%fp),%d1
	move.l -16(%fp),%d2
	move.l %d0,8(%fp)
	move.l %d1,12(%fp)
	move.l %d2,16(%fp)
.L510:
	move.l 20(%fp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,20(%fp)
	jeq .L515
	lea (-24,%fp),%a0
	move.l -4(%fp),-(%sp)
	move.l -8(%fp),-(%sp)
	move.l -12(%fp),-(%sp)
	move.l -4(%fp),-(%sp)
	move.l -8(%fp),-(%sp)
	move.l -12(%fp),-(%sp)
	move.l %a0,%a1
	jsr __mulxf3
	lea (24,%sp),%sp
	move.l -24(%fp),%d0
	move.l -20(%fp),%d1
	move.l -16(%fp),%d2
	move.l %d0,-12(%fp)
	move.l %d1,-8(%fp)
	move.l %d2,-4(%fp)
	jra .L512
.L515:
	nop
.L506:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	move.l %d0,(%a4)
	move.l %d1,4(%a4)
	move.l %d2,8(%a4)
	move.l %a4,%a0
	movem.l -40(%fp),#7172
	unlk %fp
	rts
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	link.w %fp,#-8
	move.l 12(%fp),-4(%fp)
	move.l 8(%fp),-8(%fp)
	jra .L517
.L518:
	move.l -4(%fp),%d0
	move.l %d0,%d1
	addq.l #1,%d1
	move.l %d1,-4(%fp)
	move.l %d0,%a0
	move.b (%a0),%d1
	move.l -8(%fp),%a0
	lea (1,%a0),%a1
	move.l %a1,-8(%fp)
	move.b (%a0),%d0
	eor.b %d1,%d0
	move.b %d0,(%a0)
	subq.l #1,16(%fp)
.L517:
	tst.l 16(%fp)
	jne .L518
	move.l 8(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
	link.w %fp,#-4
	move.l 8(%fp),-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l 8(%fp),%d1
	add.l %d0,%d1
	move.l %d1,-4(%fp)
	jra .L521
.L523:
	addq.l #1,12(%fp)
	addq.l #1,-4(%fp)
	subq.l #1,16(%fp)
.L521:
	tst.l 16(%fp)
	jeq .L522
	move.l 12(%fp),%a0
	move.b (%a0),%d0
	move.l -4(%fp),%a0
	move.b %d0,(%a0)
	move.l -4(%fp),%a0
	move.b (%a0),%d0
	jne .L523
.L522:
	tst.l 16(%fp)
	jne .L524
	move.l -4(%fp),%a0
	clr.b (%a0)
.L524:
	move.l 8(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.type	strnlen, @function
strnlen:
	link.w %fp,#-4
	clr.l -4(%fp)
	jra .L527
.L532:
	nop
	addq.l #1,-4(%fp)
.L527:
	move.l -4(%fp),%d0
	cmp.l 12(%fp),%d0
	jcc .L528
	move.l 8(%fp),%a0
	add.l -4(%fp),%a0
	move.b (%a0),%d0
	jne .L532
.L528:
	move.l -4(%fp),%d0
	unlk %fp
	rts
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	link.w %fp,#-4
	jra .L534
.L538:
	move.l 12(%fp),-4(%fp)
	jra .L535
.L537:
	move.l -4(%fp),%d0
	move.l %d0,%d1
	addq.l #1,%d1
	move.l %d1,-4(%fp)
	move.l %d0,%a0
	move.b (%a0),%d1
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L535
	move.l 8(%fp),%d0
	jra .L536
.L535:
	move.l -4(%fp),%a0
	move.b (%a0),%d0
	jne .L537
	addq.l #1,8(%fp)
.L534:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	jne .L538
	moveq #0,%d0
.L536:
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	link.w %fp,#-4
	move.l 8(%fp),%a0
	clr.l -4(%fp)
.L541:
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l 12(%fp),%a1
	jne .L540
	move.l %a0,-4(%fp)
.L540:
	move.l %a0,%a1
	lea (1,%a1),%a0
	move.b (%a1),%d0
	jne .L541
	move.l -4(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	link.w %fp,#-8
	move.l 8(%fp),-4(%fp)
	move.l 12(%fp),-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l %d0,-8(%fp)
	jne .L546
	move.l 8(%fp),%d0
	jra .L545
.L548:
	move.l -8(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l -4(%fp),-(%sp)
	jsr strncmp
	lea (12,%sp),%sp
	tst.l %d0
	jne .L547
	move.l -4(%fp),%d0
	jra .L545
.L547:
	addq.l #1,-4(%fp)
.L546:
	move.l 12(%fp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l -4(%fp),-(%sp)
	jsr strchr
	addq.l #8,%sp
	move.l %a0,-4(%fp)
	jne .L548
	moveq #0,%d0
.L545:
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L550
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L552
.L550:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L553
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L553
.L552:
	move.l 8(%fp),%d2
	bchg #31,%d2
	move.l 12(%fp),%d3
	jra .L556
.L553:
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
.L556:
	move.l %d2,%d0
	move.l %d3,%d1
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	rts
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	link.w %fp,#-8
	move.l 12(%fp),%d0
	sub.l 20(%fp),%d0
	move.l 8(%fp),%d1
	add.l %d0,%d1
	move.l %d1,-8(%fp)
	tst.l 20(%fp)
	jne .L560
	move.l 8(%fp),%d0
	jra .L561
.L560:
	move.l 12(%fp),%d1
	cmp.l 20(%fp),%d1
	scs %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	tst.l %d0
	jeq .L562
	moveq #0,%d0
	jra .L561
.L562:
	move.l 8(%fp),-4(%fp)
	jra .L563
.L565:
	move.l -4(%fp),%a0
	move.b (%a0),%d1
	move.l 16(%fp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L564
	move.l 20(%fp),%a0
	subq.l #1,%a0
	move.l 16(%fp),%d1
	addq.l #1,%d1
	move.l -4(%fp),%d0
	addq.l #1,%d0
	move.l %a0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr memcmp
	lea (12,%sp),%sp
	tst.l %d0
	jne .L564
	move.l -4(%fp),%d0
	jra .L561
.L564:
	addq.l #1,-4(%fp)
.L563:
	move.l -4(%fp),%d0
	cmp.l -8(%fp),%d0
	jls .L565
	moveq #0,%d0
.L561:
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	link.w %fp,#0
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
	move.l %a0,%d0
	add.l 16(%fp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	unlk %fp
	rts
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.type	frexp, @function
frexp:
	link.w %fp,#-24
	movem.l #15360,-(%sp)
	clr.l -8(%fp)
	clr.l -4(%fp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L569
	move.l 8(%fp),%d4
	bchg #31,%d4
	move.l 12(%fp),%d5
	move.l %d4,8(%fp)
	move.l %d5,12(%fp)
	moveq #1,%d0
	move.l %d0,-4(%fp)
.L569:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L586
	jra .L573
.L574:
	addq.l #1,-8(%fp)
	clr.l -(%sp)
	move.l #1073741824,-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
	move.l %d0,-16(%fp)
	move.l %d1,-12(%fp)
	move.l -16(%fp),8(%fp)
	move.l -12(%fp),12(%fp)
.L573:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L574
	jra .L575
.L586:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L575
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L575
	jra .L578
.L579:
	subq.l #1,-8(%fp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d0,-24(%fp)
	move.l %d1,-20(%fp)
	move.l -24(%fp),8(%fp)
	move.l -20(%fp),12(%fp)
.L578:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L579
.L575:
	move.l 16(%fp),%a0
	move.l -8(%fp),(%a0)
	tst.l -4(%fp)
	jeq .L580
	move.l 8(%fp),%d2
	bchg #31,%d2
	move.l 12(%fp),%d3
	move.l %d2,8(%fp)
	move.l %d3,12(%fp)
.L580:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	movem.l -40(%fp),#60
	unlk %fp
	rts
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
	link.w %fp,#-16
	movem.l #14336,-(%sp)
	clr.l -8(%fp)
	clr.l -4(%fp)
	move.l 8(%fp),-16(%fp)
	move.l 12(%fp),-12(%fp)
	jra .L588
.L590:
	moveq #0,%d0
	and.l -16(%fp),%d0
	moveq #1,%d1
	and.l -12(%fp),%d1
	move.l %d0,%d2
	or.l %d1,%d2
	jeq .L589
	move.l 16(%fp),%d3
	move.l 20(%fp),%d4
	add.l %d4,-4(%fp)
	move.l -8(%fp),%d2
	addx.l %d3,%d2
	move.l %d2,-8(%fp)
.L589:
	move.l 16(%fp),%d2
	move.l 20(%fp),%d3
	add.l %d3,%d3
	addx.l %d2,%d2
	move.l %d2,16(%fp)
	move.l %d3,20(%fp)
	move.l -16(%fp),%d2
	move.l -12(%fp),%d3
	lsr.l #1,%d2
	roxr.l #1,%d3
	move.l %d2,-16(%fp)
	move.l %d3,-12(%fp)
.L588:
	move.l -16(%fp),%d3
	or.l -12(%fp),%d3
	jne .L590
	move.l -8(%fp),%a0
	move.l -4(%fp),%a1
	move.l %a0,%d0
	move.l %a1,%d1
	movem.l (%sp)+,#28
	unlk %fp
	rts
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	link.w %fp,#-8
	moveq #1,%d0
	move.l %d0,-4(%fp)
	clr.l -8(%fp)
	jra .L593
.L595:
	move.l 12(%fp),%d0
	add.l %d0,%d0
	move.l %d0,12(%fp)
	move.l -4(%fp),%d0
	add.l %d0,%d0
	move.l %d0,-4(%fp)
.L593:
	move.l 12(%fp),%d0
	cmp.l 8(%fp),%d0
	jcc .L596
	tst.l -4(%fp)
	jeq .L596
	move.l 12(%fp),%d0
	jpl .L595
	jra .L596
.L598:
	move.l 8(%fp),%d0
	cmp.l 12(%fp),%d0
	jcs .L597
	move.l 12(%fp),%d0
	sub.l %d0,8(%fp)
	move.l -4(%fp),%d0
	or.l %d0,-8(%fp)
.L597:
	move.l -4(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,-4(%fp)
	move.l 12(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,12(%fp)
.L596:
	tst.l -4(%fp)
	jne .L598
	tst.l 16(%fp)
	jeq .L599
	move.l 8(%fp),%d0
	jra .L600
.L599:
	move.l -8(%fp),%d0
.L600:
	unlk %fp
	rts
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	link.w %fp,#-8
	move.l 8(%fp),%d0
	move.b %d0,%d0
	move.b %d0,-6(%fp)
	jpl .L602
	not.b -6(%fp)
.L602:
	tst.b -6(%fp)
	jne .L603
	moveq #7,%d0
	jra .L604
.L603:
	move.b -6(%fp),%d0
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	move.l %d0,-4(%fp)
	move.l -4(%fp),%d0
	subq.l #1,%d0
.L604:
	unlk %fp
	rts
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	link.w %fp,#-4
	tst.l 8(%fp)
	jge .L606
	move.l 8(%fp),%d0
	not.l %d0
	move.l 12(%fp),%d1
	not.l %d1
	move.l %d0,8(%fp)
	move.l %d1,12(%fp)
.L606:
	move.l 8(%fp),%d0
	or.l 12(%fp),%d0
	jne .L607
	moveq #63,%d0
	jra .L608
.L607:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	move.l %d0,-4(%fp)
	move.l -4(%fp),%d0
	subq.l #1,%d0
.L608:
	unlk %fp
	rts
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	link.w %fp,#-4
	clr.l -4(%fp)
	jra .L610
.L612:
	moveq #1,%d0
	and.l 8(%fp),%d0
	jeq .L611
	move.l 12(%fp),%d0
	add.l %d0,-4(%fp)
.L611:
	move.l 8(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,8(%fp)
	move.l 12(%fp),%d0
	add.l %d0,%d0
	move.l %d0,12(%fp)
.L610:
	tst.l 8(%fp)
	jne .L612
	move.l -4(%fp),%d0
	unlk %fp
	rts
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
	link.w %fp,#-20
	move.l 16(%fp),%d0
	lsr.l #3,%d0
	move.l %d0,-12(%fp)
	moveq #-8,%d0
	and.l 16(%fp),%d0
	move.l %d0,-8(%fp)
	move.l 8(%fp),-16(%fp)
	move.l 12(%fp),-20(%fp)
	move.l -16(%fp),%d1
	cmp.l -20(%fp),%d1
	jcs .L615
	move.l -20(%fp),%d0
	add.l 16(%fp),%d0
	cmp.l -16(%fp),%d0
	jcc .L622
.L615:
	clr.l -4(%fp)
	jra .L617
.L618:
	move.l -4(%fp),%d0
	lsl.l #3,%d0
	move.l 12(%fp),%a1
	add.l %d0,%a1
	move.l -4(%fp),%d0
	lsl.l #3,%d0
	move.l 8(%fp),%a0
	add.l %d0,%a0
	move.l (%a1),%d0
	move.l 4(%a1),%d1
	move.l %d0,(%a0)
	move.l %d1,4(%a0)
	addq.l #1,-4(%fp)
.L617:
	move.l -4(%fp),%d0
	cmp.l -12(%fp),%d0
	jcs .L618
	jra .L619
.L620:
	move.l -20(%fp),%a1
	add.l -8(%fp),%a1
	move.l -16(%fp),%a0
	add.l -8(%fp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	addq.l #1,-8(%fp)
.L619:
	move.l 16(%fp),%d1
	cmp.l -8(%fp),%d1
	jhi .L620
	jra .L621
.L623:
	move.l -20(%fp),%a1
	add.l 16(%fp),%a1
	move.l -16(%fp),%a0
	add.l 16(%fp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L622:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L623
	nop
.L621:
	nop
	unlk %fp
	rts
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
	link.w %fp,#-16
	move.l 16(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,-8(%fp)
	move.l 8(%fp),-12(%fp)
	move.l 12(%fp),-16(%fp)
	move.l -12(%fp),%d0
	cmp.l -16(%fp),%d0
	jcs .L625
	move.l -16(%fp),%d0
	add.l 16(%fp),%d0
	cmp.l -12(%fp),%d0
	jcc .L631
.L625:
	clr.l -4(%fp)
	jra .L627
.L628:
	move.l -4(%fp),%d0
	add.l %d0,%d0
	move.l 12(%fp),%a1
	add.l %d0,%a1
	move.l -4(%fp),%d0
	add.l %d0,%d0
	move.l 8(%fp),%a0
	add.l %d0,%a0
	move.w (%a1),%d0
	move.w %d0,(%a0)
	addq.l #1,-4(%fp)
.L627:
	move.l -4(%fp),%d1
	cmp.l -8(%fp),%d1
	jcs .L628
	moveq #1,%d0
	and.l 16(%fp),%d0
	jeq .L630
	move.l 16(%fp),%d0
	subq.l #1,%d0
	move.l -16(%fp),%a1
	add.l %d0,%a1
	move.l 16(%fp),%d0
	subq.l #1,%d0
	move.l -12(%fp),%a0
	add.l %d0,%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	jra .L630
.L632:
	move.l -16(%fp),%a1
	add.l 16(%fp),%a1
	move.l -12(%fp),%a0
	add.l 16(%fp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L631:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L632
	nop
.L630:
	nop
	unlk %fp
	rts
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
	link.w %fp,#-20
	move.l 16(%fp),%d0
	lsr.l #2,%d0
	move.l %d0,-12(%fp)
	moveq #-4,%d0
	and.l 16(%fp),%d0
	move.l %d0,-8(%fp)
	move.l 8(%fp),-16(%fp)
	move.l 12(%fp),-20(%fp)
	move.l -16(%fp),%d1
	cmp.l -20(%fp),%d1
	jcs .L634
	move.l -20(%fp),%d0
	add.l 16(%fp),%d0
	cmp.l -16(%fp),%d0
	jcc .L641
.L634:
	clr.l -4(%fp)
	jra .L636
.L637:
	move.l -4(%fp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	move.l 12(%fp),%a1
	add.l %d0,%a1
	move.l -4(%fp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	move.l 8(%fp),%a0
	add.l %d0,%a0
	move.l (%a1),%d0
	move.l %d0,(%a0)
	addq.l #1,-4(%fp)
.L636:
	move.l -4(%fp),%d0
	cmp.l -12(%fp),%d0
	jcs .L637
	jra .L638
.L639:
	move.l -20(%fp),%a1
	add.l -8(%fp),%a1
	move.l -16(%fp),%a0
	add.l -8(%fp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	addq.l #1,-8(%fp)
.L638:
	move.l 16(%fp),%d1
	cmp.l -8(%fp),%d1
	jhi .L639
	jra .L640
.L642:
	move.l -20(%fp),%a1
	add.l 16(%fp),%a1
	move.l -16(%fp),%a0
	add.l 16(%fp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L641:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L642
	nop
.L640:
	nop
	unlk %fp
	rts
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	unlk %fp
	rts
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.type	__uitod, @function
__uitod:
	link.w %fp,#0
	move.l 8(%fp),-(%sp)
	jsr __floatunsidf
	addq.l #4,%sp
	unlk %fp
	rts
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.type	__uitof, @function
__uitof:
	link.w %fp,#0
	move.l 8(%fp),-(%sp)
	jsr __floatunsisf
	addq.l #4,%sp
	unlk %fp
	rts
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
	link.w %fp,#0
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __floatundidf
	addq.l #8,%sp
	unlk %fp
	rts
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
	link.w %fp,#0
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __floatundisf
	addq.l #8,%sp
	unlk %fp
	rts
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.type	__umodi, @function
__umodi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr __umodsi3
	addq.l #8,%sp
	unlk %fp
	rts
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	link.w %fp,#-8
	move.l 8(%fp),%d0
	move.w %d0,%d0
	move.w %d0,-6(%fp)
	clr.l -4(%fp)
	jra .L656
.L659:
	moveq #0,%d1
	move.w -6(%fp),%d1
	moveq #15,%d0
	sub.l -4(%fp),%d0
	asr.l %d0,%d1
	moveq #1,%d0
	and.l %d1,%d0
	jne .L661
	addq.l #1,-4(%fp)
.L656:
	moveq #15,%d0
	cmp.l -4(%fp),%d0
	jge .L659
	jra .L658
.L661:
	nop
.L658:
	move.l -4(%fp),%d0
	unlk %fp
	rts
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	link.w %fp,#-8
	move.l 8(%fp),%d0
	move.w %d0,%d0
	move.w %d0,-6(%fp)
	clr.l -4(%fp)
	jra .L663
.L666:
	moveq #0,%d0
	move.w -6(%fp),%d0
	move.l -4(%fp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jne .L668
	addq.l #1,-4(%fp)
.L663:
	moveq #15,%d0
	cmp.l -4(%fp),%d0
	jge .L666
	jra .L665
.L668:
	nop
.L665:
	move.l -4(%fp),%d0
	unlk %fp
	rts
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	link.w %fp,#0
	move.l #0x47000000,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __gesf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L674
	move.l #0x47000000,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L672
.L674:
	move.l 8(%fp),-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L672:
	unlk %fp
	rts
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	link.w %fp,#-12
	move.l 8(%fp),%d0
	move.w %d0,%d0
	move.w %d0,-10(%fp)
	clr.l -8(%fp)
	clr.l -4(%fp)
	jra .L676
.L678:
	moveq #0,%d0
	move.w -10(%fp),%d0
	move.l -4(%fp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L677
	addq.l #1,-8(%fp)
.L677:
	addq.l #1,-4(%fp)
.L676:
	moveq #15,%d0
	cmp.l -4(%fp),%d0
	jge .L678
	moveq #1,%d0
	and.l -8(%fp),%d0
	unlk %fp
	rts
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	link.w %fp,#-12
	move.l 8(%fp),%d0
	move.w %d0,%d0
	move.w %d0,-10(%fp)
	clr.l -8(%fp)
	clr.l -4(%fp)
	jra .L681
.L683:
	moveq #0,%d0
	move.w -10(%fp),%d0
	move.l -4(%fp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L682
	addq.l #1,-8(%fp)
.L682:
	addq.l #1,-4(%fp)
.L681:
	moveq #15,%d0
	cmp.l -4(%fp),%d0
	jge .L683
	move.l -8(%fp),%d0
	unlk %fp
	rts
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	link.w %fp,#-4
	clr.l -4(%fp)
	jra .L686
.L688:
	moveq #1,%d0
	and.l 8(%fp),%d0
	jeq .L687
	move.l 12(%fp),%d0
	add.l %d0,-4(%fp)
.L687:
	move.l 8(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,8(%fp)
	move.l 12(%fp),%d0
	add.l %d0,%d0
	move.l %d0,12(%fp)
.L686:
	tst.l 8(%fp)
	jne .L688
	move.l -4(%fp),%d0
	unlk %fp
	rts
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	link.w %fp,#-4
	clr.l -4(%fp)
	tst.l 8(%fp)
	jne .L693
	moveq #0,%d0
	jra .L692
.L695:
	moveq #1,%d0
	and.l 12(%fp),%d0
	jeq .L694
	move.l 8(%fp),%d0
	add.l %d0,-4(%fp)
.L694:
	move.l 8(%fp),%d0
	add.l %d0,%d0
	move.l %d0,8(%fp)
	move.l 12(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,12(%fp)
.L693:
	tst.l 12(%fp)
	jne .L695
	move.l -4(%fp),%d0
.L692:
	unlk %fp
	rts
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	link.w %fp,#-8
	moveq #1,%d0
	move.l %d0,-4(%fp)
	clr.l -8(%fp)
	jra .L697
.L699:
	move.l 12(%fp),%d0
	add.l %d0,%d0
	move.l %d0,12(%fp)
	move.l -4(%fp),%d0
	add.l %d0,%d0
	move.l %d0,-4(%fp)
.L697:
	move.l 12(%fp),%d0
	cmp.l 8(%fp),%d0
	jcc .L700
	tst.l -4(%fp)
	jeq .L700
	move.l 12(%fp),%d0
	jpl .L699
	jra .L700
.L702:
	move.l 8(%fp),%d0
	cmp.l 12(%fp),%d0
	jcs .L701
	move.l 12(%fp),%d0
	sub.l %d0,8(%fp)
	move.l -4(%fp),%d0
	or.l %d0,-8(%fp)
.L701:
	move.l -4(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,-4(%fp)
	move.l 12(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,12(%fp)
.L700:
	tst.l -4(%fp)
	jne .L702
	tst.l 16(%fp)
	jeq .L703
	move.l 8(%fp),%d0
	jra .L704
.L703:
	move.l -8(%fp),%d0
.L704:
	unlk %fp
	rts
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	link.w %fp,#0
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L713
	moveq #-1,%d0
	jra .L708
.L713:
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L714
	moveq #1,%d0
	jra .L708
.L714:
	moveq #0,%d0
.L708:
	unlk %fp
	rts
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	link.w %fp,#0
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L723
	moveq #-1,%d0
	jra .L718
.L723:
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L724
	moveq #1,%d0
	jra .L718
.L724:
	moveq #0,%d0
.L718:
	unlk %fp
	rts
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d1
	smi %d0
	ext.w %d0
	ext.l %d0
	move.l 12(%fp),%d3
	smi %d2
	ext.w %d2
	ext.l %d2
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __muldi3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	rts
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	link.w %fp,#0
	move.l 8(%fp),%d1
	moveq #0,%d0
	move.l 12(%fp),%a1
	sub.l %a0,%a0
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __muldi3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	unlk %fp
	rts
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	link.w %fp,#-12
	clr.l -6(%fp)
	clr.l -10(%fp)
	tst.l 12(%fp)
	jge .L730
	neg.l 12(%fp)
	moveq #1,%d0
	move.l %d0,-6(%fp)
.L730:
	clr.b -1(%fp)
	jra .L731
.L734:
	moveq #1,%d0
	and.l 12(%fp),%d0
	jeq .L732
	move.l 8(%fp),%d0
	add.l %d0,-10(%fp)
.L732:
	move.l 8(%fp),%d0
	add.l %d0,%d0
	move.l %d0,8(%fp)
	move.l 12(%fp),%d0
	asr.l #1,%d0
	move.l %d0,12(%fp)
	move.b -1(%fp),%d0
	addq.b #1,%d0
	move.b %d0,-1(%fp)
.L731:
	tst.l 12(%fp)
	jeq .L733
	move.b -1(%fp),%d0
	cmp.b #31,%d0
	jls .L734
.L733:
	tst.l -6(%fp)
	jeq .L735
	move.l -10(%fp),%d0
	neg.l %d0
	jra .L737
.L735:
	move.l -10(%fp),%d0
.L737:
	unlk %fp
	rts
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	link.w %fp,#-8
	clr.l -4(%fp)
	tst.l 8(%fp)
	jge .L739
	neg.l 8(%fp)
	tst.l -4(%fp)
	seq %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-4(%fp)
.L739:
	tst.l 12(%fp)
	jge .L740
	neg.l 12(%fp)
	tst.l -4(%fp)
	seq %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-4(%fp)
.L740:
	move.l 12(%fp),%d1
	move.l 8(%fp),%d0
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	move.l %d0,-8(%fp)
	tst.l -4(%fp)
	jeq .L741
	neg.l -8(%fp)
.L741:
	move.l -8(%fp),%d0
	unlk %fp
	rts
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	link.w %fp,#-8
	clr.l -4(%fp)
	tst.l 8(%fp)
	jge .L744
	neg.l 8(%fp)
	moveq #1,%d0
	move.l %d0,-4(%fp)
.L744:
	tst.l 12(%fp)
	jge .L745
	neg.l 12(%fp)
.L745:
	move.l 12(%fp),%d1
	move.l 8(%fp),%d0
	pea 1.w
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	move.l %d0,-8(%fp)
	tst.l -4(%fp)
	jeq .L746
	neg.l -8(%fp)
.L746:
	move.l -8(%fp),%d0
	unlk %fp
	rts
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	link.w %fp,#-8
	move.l 8(%fp),%d1
	move.l 12(%fp),%d0
	move.w %d1,%d1
	move.w %d1,-6(%fp)
	move.w %d0,%d0
	move.w %d0,-8(%fp)
	move.w #1,-2(%fp)
	clr.w -4(%fp)
	jra .L749
.L751:
	move.w -8(%fp),%d0
	add.w %d0,%d0
	move.w %d0,-8(%fp)
	move.w -2(%fp),%d0
	add.w %d0,%d0
	move.w %d0,-2(%fp)
.L749:
	move.w -6(%fp),%d0
	cmp.w -8(%fp),%d0
	jls .L752
	tst.w -2(%fp)
	jeq .L752
	move.w -8(%fp),%d0
	jpl .L751
	jra .L752
.L754:
	move.w -8(%fp),%d0
	cmp.w -6(%fp),%d0
	jhi .L753
	move.w -8(%fp),%d0
	sub.w %d0,-6(%fp)
	move.w -2(%fp),%d0
	or.w %d0,-4(%fp)
.L753:
	move.w -2(%fp),%d0
	lsr.w #1,%d0
	move.w %d0,-2(%fp)
	move.w -8(%fp),%d0
	lsr.w #1,%d0
	move.w %d0,-8(%fp)
.L752:
	tst.w -2(%fp)
	jne .L754
	tst.l 16(%fp)
	jeq .L755
	move.w -6(%fp),%d0
	jra .L756
.L755:
	move.w -4(%fp),%d0
.L756:
	unlk %fp
	rts
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	link.w %fp,#-8
	moveq #1,%d0
	move.l %d0,-4(%fp)
	clr.l -8(%fp)
	jra .L758
.L760:
	move.l 12(%fp),%d0
	add.l %d0,%d0
	move.l %d0,12(%fp)
	move.l -4(%fp),%d0
	add.l %d0,%d0
	move.l %d0,-4(%fp)
.L758:
	move.l 12(%fp),%d0
	cmp.l 8(%fp),%d0
	jcc .L761
	tst.l -4(%fp)
	jeq .L761
	move.l 12(%fp),%d0
	jpl .L760
	jra .L761
.L763:
	move.l 8(%fp),%d0
	cmp.l 12(%fp),%d0
	jcs .L762
	move.l 12(%fp),%d0
	sub.l %d0,8(%fp)
	move.l -4(%fp),%d0
	or.l %d0,-8(%fp)
.L762:
	move.l -4(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,-4(%fp)
	move.l 12(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,12(%fp)
.L761:
	tst.l -4(%fp)
	jne .L763
	tst.l 16(%fp)
	jeq .L764
	move.l 8(%fp),%d0
	jra .L765
.L764:
	move.l -8(%fp),%d0
.L765:
	unlk %fp
	rts
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	link.w %fp,#-20
	move.l %d2,-(%sp)
	moveq #32,%d0
	move.l %d0,-4(%fp)
	move.l 8(%fp),-12(%fp)
	move.l 12(%fp),-8(%fp)
	move.l 16(%fp),%d0
	and.l -4(%fp),%d0
	jeq .L767
	clr.l -16(%fp)
	move.l -8(%fp),%d1
	move.l 16(%fp),%d0
	sub.l -4(%fp),%d0
	lsl.l %d0,%d1
	move.l %d1,%d0
	move.l %d0,-20(%fp)
	jra .L768
.L767:
	tst.l 16(%fp)
	jne .L769
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L771
.L769:
	move.l -8(%fp),%d0
	move.l 16(%fp),%d1
	lsl.l %d1,%d0
	move.l %d0,-16(%fp)
	move.l -12(%fp),%d0
	move.l %d0,%d2
	move.l 16(%fp),%d1
	lsl.l %d1,%d2
	move.l -8(%fp),%d1
	move.l -4(%fp),%d0
	sub.l 16(%fp),%d0
	lsr.l %d0,%d1
	move.l %d2,%d0
	or.l %d1,%d0
	move.l %d0,-20(%fp)
.L768:
	move.l -20(%fp),%d0
	move.l -16(%fp),%d1
.L771:
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	link.w %fp,#-20
	move.l %d2,-(%sp)
	moveq #32,%d0
	move.l %d0,-4(%fp)
	move.l 8(%fp),-12(%fp)
	move.l 12(%fp),-8(%fp)
	move.l 16(%fp),%d0
	and.l -4(%fp),%d0
	jeq .L773
	move.l -12(%fp),%d1
	move.l -4(%fp),%d0
	subq.l #1,%d0
	asr.l %d0,%d1
	move.l %d1,-20(%fp)
	move.l -12(%fp),%d1
	move.l 16(%fp),%d0
	sub.l -4(%fp),%d0
	asr.l %d0,%d1
	move.l %d1,%d0
	move.l %d0,-16(%fp)
	jra .L774
.L773:
	tst.l 16(%fp)
	jne .L775
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L777
.L775:
	move.l -12(%fp),%d0
	move.l 16(%fp),%d1
	asr.l %d1,%d0
	move.l %d0,-20(%fp)
	move.l -12(%fp),%d0
	move.l %d0,%d1
	move.l -4(%fp),%d0
	sub.l 16(%fp),%d0
	lsl.l %d0,%d1
	move.l -8(%fp),%d0
	move.l 16(%fp),%d2
	lsr.l %d2,%d0
	or.l %d1,%d0
	move.l %d0,-16(%fp)
.L774:
	move.l -20(%fp),%d0
	move.l -16(%fp),%d1
.L777:
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	link.w %fp,#-104
	movem.l #16128,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l %d0,%d2
	move.l %d1,%d3
	moveq #24,%d3
	lsr.l %d3,%d2
	move.l %d2,%d3
	moveq #0,%d2
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	lsr.l #8,%d0
	move.l %d0,%d1
	moveq #0,%d0
	moveq #0,%d6
	and.l %d0,%d6
	move.l %d1,%d7
	and.l #65280,%d7
	move.l %d2,%d0
	or.l %d6,%d0
	move.l %d0,-8(%fp)
	move.l %d3,%d1
	or.l %d7,%d1
	move.l %d1,-4(%fp)
	move.l 8(%fp),%d0
	move.l %d0,%d1
	lsl.l #8,%d1
	move.l 12(%fp),%d0
	move.l %d0,%d5
	clr.w %d5
	swap %d5
	lsr.w #8,%d5
	or.l %d1,%d5
	move.l 8(%fp),%d0
	move.l %d0,%d4
	clr.w %d4
	swap %d4
	lsr.w #8,%d4
	moveq #0,%d2
	and.l %d4,%d2
	move.l %d2,-16(%fp)
	move.l %d5,%d0
	and.l #16711680,%d0
	move.l %d0,-12(%fp)
	move.l -8(%fp),%d1
	or.l -16(%fp),%d1
	move.l %d1,-24(%fp)
	move.l -4(%fp),%d2
	or.l -12(%fp),%d2
	move.l %d2,-20(%fp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.b %d0,%d1
	lsr.l #8,%d0
	ror.l #8,%d1
	moveq #0,%d2
	and.l %d0,%d2
	move.l %d2,-32(%fp)
	move.l %d1,%d2
	and.l #-16777216,%d2
	move.l %d2,-28(%fp)
	move.l -24(%fp),%d0
	or.l -32(%fp),%d0
	move.l %d0,-40(%fp)
	move.l -20(%fp),%d1
	or.l -28(%fp),%d1
	move.l %d1,-36(%fp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	moveq #0,%d2
	not.b %d2
	and.l %d0,%d2
	move.l %d2,-48(%fp)
	moveq #0,%d2
	and.l %d1,%d2
	move.l %d2,-44(%fp)
	move.l -40(%fp),%d0
	or.l -48(%fp),%d0
	move.l %d0,-56(%fp)
	move.l -36(%fp),%d1
	or.l -44(%fp),%d1
	move.l %d1,-52(%fp)
	move.l 12(%fp),%d0
	move.l %d0,%d1
	lsr.l #8,%d1
	move.l 8(%fp),%d0
	move.l %d0,%d2
	lsl.w #8,%d2
	swap %d2
	clr.w %d2
	move.l %d2,-64(%fp)
	or.l %d1,-64(%fp)
	move.l 12(%fp),%d0
	move.l %d0,%d1
	lsl.w #8,%d1
	swap %d1
	clr.w %d1
	move.l %d1,-60(%fp)
	move.l -64(%fp),%d2
	and.l #65280,%d2
	move.l %d2,-72(%fp)
	moveq #0,%d0
	and.l -60(%fp),%d0
	move.l %d0,-68(%fp)
	move.l -56(%fp),%d1
	or.l -72(%fp),%d1
	move.l %d1,-80(%fp)
	move.l -52(%fp),%d2
	or.l -68(%fp),%d2
	move.l %d2,-76(%fp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	lsl.l #8,%d1
	move.l %d1,%d0
	moveq #0,%d1
	move.l %d0,%d2
	and.l #16711680,%d2
	move.l %d2,-88(%fp)
	moveq #0,%d2
	and.l %d1,%d2
	move.l %d2,-84(%fp)
	move.l -80(%fp),%d0
	or.l -88(%fp),%d0
	move.l %d0,-96(%fp)
	move.l -76(%fp),%d1
	or.l -84(%fp),%d1
	move.l %d1,-92(%fp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #24,%d0
	lsl.l %d0,%d1
	move.l %d1,%d0
	moveq #0,%d1
	move.l -96(%fp),%d2
	or.l %d0,%d2
	move.l %d2,-104(%fp)
	move.l -92(%fp),%d2
	or.l %d1,%d2
	move.l %d2,-100(%fp)
	move.l -104(%fp),%d0
	move.l -100(%fp),%d1
	movem.l (%sp)+,#252
	unlk %fp
	rts
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	lsr.w #8,%d1
	move.l 8(%fp),%d0
	lsr.l #8,%d0
	and.l #65280,%d0
	or.l %d0,%d1
	move.l 8(%fp),%d0
	lsl.l #8,%d0
	and.l #16711680,%d0
	or.l %d0,%d1
	move.l 8(%fp),%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d1,%d0
	unlk %fp
	rts
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	link.w %fp,#-12
	move.l 8(%fp),-4(%fp)
	cmp.l #65535,-4(%fp)
	jhi .L783
	moveq #16,%d0
	jra .L784
.L783:
	moveq #0,%d0
.L784:
	move.l %d0,-8(%fp)
	moveq #16,%d0
	sub.l -8(%fp),%d0
	move.l -4(%fp),%d1
	lsr.l %d0,%d1
	move.l %d1,-4(%fp)
	move.l -8(%fp),-12(%fp)
	move.l -4(%fp),%d0
	and.l #65280,%d0
	jne .L785
	moveq #8,%d0
	jra .L786
.L785:
	moveq #0,%d0
.L786:
	move.l %d0,-8(%fp)
	moveq #8,%d0
	sub.l -8(%fp),%d0
	move.l -4(%fp),%d1
	lsr.l %d0,%d1
	move.l %d1,-4(%fp)
	move.l -8(%fp),%d0
	add.l %d0,-12(%fp)
	moveq #15,%d0
	not.b %d0
	and.l -4(%fp),%d0
	jne .L787
	moveq #4,%d0
	jra .L788
.L787:
	moveq #0,%d0
.L788:
	move.l %d0,-8(%fp)
	moveq #4,%d0
	sub.l -8(%fp),%d0
	move.l -4(%fp),%d1
	lsr.l %d0,%d1
	move.l %d1,-4(%fp)
	move.l -8(%fp),%d0
	add.l %d0,-12(%fp)
	moveq #12,%d0
	and.l -4(%fp),%d0
	jne .L789
	moveq #2,%d0
	jra .L790
.L789:
	moveq #0,%d0
.L790:
	move.l %d0,-8(%fp)
	moveq #2,%d0
	sub.l -8(%fp),%d0
	move.l -4(%fp),%d1
	lsr.l %d0,%d1
	move.l %d1,-4(%fp)
	move.l -8(%fp),%d0
	add.l %d0,-12(%fp)
	moveq #2,%d0
	and.l -4(%fp),%d0
	seq %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,%d1
	moveq #2,%d0
	sub.l -4(%fp),%d0
	move.l %d0,-(%sp)
	move.l %d1,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l -12(%fp),%d0
	unlk %fp
	rts
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	link.w %fp,#-16
	move.l 8(%fp),-8(%fp)
	move.l 12(%fp),-4(%fp)
	move.l 16(%fp),-16(%fp)
	move.l 20(%fp),-12(%fp)
	move.l -8(%fp),%d1
	move.l -16(%fp),%d0
	cmp.l %d1,%d0
	jle .L793
	moveq #0,%d0
	jra .L798
.L793:
	move.l -8(%fp),%d1
	move.l -16(%fp),%d0
	cmp.l %d1,%d0
	jge .L795
	moveq #2,%d0
	jra .L798
.L795:
	move.l -4(%fp),%d1
	move.l -12(%fp),%d0
	cmp.l %d1,%d0
	jls .L796
	moveq #0,%d0
	jra .L798
.L796:
	move.l -4(%fp),%d1
	move.l -12(%fp),%d0
	cmp.l %d1,%d0
	jcc .L797
	moveq #2,%d0
	jra .L798
.L797:
	moveq #1,%d0
.L798:
	unlk %fp
	rts
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	link.w %fp,#0
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __cmpdi2
	lea (16,%sp),%sp
	subq.l #1,%d0
	unlk %fp
	rts
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	link.w %fp,#-12
	move.l %d2,-(%sp)
	move.l 8(%fp),-4(%fp)
	move.l -4(%fp),%d0
	and.l #65535,%d0
	jne .L802
	moveq #16,%d0
	jra .L803
.L802:
	moveq #0,%d0
.L803:
	move.l %d0,-8(%fp)
	move.l -4(%fp),%d0
	move.l -8(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-4(%fp)
	move.l -8(%fp),-12(%fp)
	moveq #0,%d0
	not.b %d0
	and.l -4(%fp),%d0
	jne .L804
	moveq #8,%d0
	jra .L805
.L804:
	moveq #0,%d0
.L805:
	move.l %d0,-8(%fp)
	move.l -4(%fp),%d0
	move.l -8(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-4(%fp)
	move.l -8(%fp),%d0
	add.l %d0,-12(%fp)
	moveq #15,%d0
	and.l -4(%fp),%d0
	jne .L806
	moveq #4,%d0
	jra .L807
.L806:
	moveq #0,%d0
.L807:
	move.l %d0,-8(%fp)
	move.l -4(%fp),%d0
	move.l -8(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-4(%fp)
	move.l -8(%fp),%d0
	add.l %d0,-12(%fp)
	moveq #3,%d0
	and.l -4(%fp),%d0
	jne .L808
	moveq #2,%d0
	jra .L809
.L808:
	moveq #0,%d0
.L809:
	move.l %d0,-8(%fp)
	move.l -4(%fp),%d0
	move.l -8(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-4(%fp)
	moveq #3,%d0
	and.l %d0,-4(%fp)
	move.l -8(%fp),%d0
	add.l %d0,-12(%fp)
	move.l -4(%fp),%d0
	not.l %d0
	moveq #1,%d1
	and.l %d0,%d1
	move.l -4(%fp),%d0
	lsr.l #1,%d0
	moveq #2,%d2
	sub.l %d0,%d2
	move.l %d1,%d0
	neg.l %d0
	and.l %d2,%d0
	add.l -12(%fp),%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	link.w %fp,#-20
	move.l %d2,-(%sp)
	moveq #32,%d0
	move.l %d0,-4(%fp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l %d0,-12(%fp)
	move.l %d1,-8(%fp)
	move.l 16(%fp),%d0
	and.l -4(%fp),%d0
	jeq .L812
	clr.l -20(%fp)
	move.l -12(%fp),%d1
	move.l 16(%fp),%d0
	sub.l -4(%fp),%d0
	lsr.l %d0,%d1
	move.l %d1,-16(%fp)
	jra .L813
.L812:
	tst.l 16(%fp)
	jne .L814
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L816
.L814:
	move.l -12(%fp),%d0
	move.l 16(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-20(%fp)
	move.l -12(%fp),%d1
	move.l -4(%fp),%d0
	sub.l 16(%fp),%d0
	lsl.l %d0,%d1
	move.l -8(%fp),%d0
	move.l 16(%fp),%d2
	lsr.l %d2,%d0
	or.l %d1,%d0
	move.l %d0,-16(%fp)
.L813:
	move.l -20(%fp),%a0
	move.l -16(%fp),%a1
	move.l %a0,%d0
	move.l %a1,%d1
.L816:
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	link.w %fp,#-20
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	moveq #16,%d0
	move.l %d0,-4(%fp)
	moveq #-1,%d0
	move.l -4(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-8(%fp)
	move.l 8(%fp),%d0
	and.l -8(%fp),%d0
	move.l 12(%fp),%d1
	and.l -8(%fp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l %d0,-16(%fp)
	move.l -16(%fp),%d0
	move.l -4(%fp),%d2
	lsr.l %d2,%d0
	move.l %d0,-12(%fp)
	move.l -16(%fp),%d0
	and.l -8(%fp),%d0
	move.l %d0,-16(%fp)
	move.l 8(%fp),%d0
	move.l -4(%fp),%d3
	lsr.l %d3,%d0
	move.l 12(%fp),%d1
	and.l -8(%fp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d0,-12(%fp)
	move.l -16(%fp),%d1
	move.l -12(%fp),%d0
	and.l -8(%fp),%d0
	move.l -4(%fp),%d2
	lsl.l %d2,%d0
	add.l %d1,%d0
	move.l %d0,-16(%fp)
	move.l -12(%fp),%d0
	move.l -4(%fp),%d3
	lsr.l %d3,%d0
	move.l %d0,-20(%fp)
	move.l -16(%fp),%d0
	move.l -4(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-12(%fp)
	move.l -16(%fp),%d0
	and.l -8(%fp),%d0
	move.l %d0,-16(%fp)
	move.l 12(%fp),%d0
	move.l -4(%fp),%d2
	lsr.l %d2,%d0
	move.l 8(%fp),%d1
	and.l -8(%fp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d0,-12(%fp)
	move.l -16(%fp),%d1
	move.l -12(%fp),%d0
	and.l -8(%fp),%d0
	move.l -4(%fp),%d3
	lsl.l %d3,%d0
	add.l %d1,%d0
	move.l %d0,-16(%fp)
	move.l -20(%fp),%d0
	move.l %d0,%d1
	move.l -12(%fp),%d0
	move.l -4(%fp),%d2
	lsr.l %d2,%d0
	add.l %d1,%d0
	move.l %d0,-20(%fp)
	move.l -20(%fp),%d0
	move.l %d0,%d2
	move.l 8(%fp),%d0
	move.l -4(%fp),%d3
	lsr.l %d3,%d0
	move.l 12(%fp),%d1
	move.l -4(%fp),%d3
	lsr.l %d3,%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d2,%d0
	move.l %d0,-20(%fp)
	move.l -20(%fp),%a0
	move.l -16(%fp),%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l -28(%fp),%d2
	move.l -24(%fp),%d3
	unlk %fp
	rts
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	link.w %fp,#-24
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),-8(%fp)
	move.l 12(%fp),-4(%fp)
	move.l 16(%fp),-16(%fp)
	move.l 20(%fp),-12(%fp)
	move.l -12(%fp),%d1
	move.l -4(%fp),%d0
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __muldsi3
	addq.l #8,%sp
	move.l %d0,-24(%fp)
	move.l %d1,-20(%fp)
	move.l -24(%fp),%d0
	move.l %d0,%d2
	move.l -8(%fp),%d0
	move.l -12(%fp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l %d0,%d3
	move.l -4(%fp),%d0
	move.l -16(%fp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d3,%d0
	add.l %d2,%d0
	move.l %d0,-24(%fp)
	move.l -24(%fp),%a0
	move.l -20(%fp),%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l -32(%fp),%d2
	move.l -28(%fp),%d3
	unlk %fp
	rts
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	neg.l %d1
	negx.l %d0
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	unlk %fp
	rts
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	link.w %fp,#-12
	move.l %d2,-(%sp)
	move.l 8(%fp),-12(%fp)
	move.l 12(%fp),-8(%fp)
	move.l -12(%fp),%d0
	move.l %d0,%d1
	move.l -8(%fp),%d0
	move.l %d1,%d2
	eor.l %d0,%d2
	move.l %d2,-4(%fp)
	move.l -4(%fp),%d0
	clr.w %d0
	swap %d0
	eor.l %d0,-4(%fp)
	move.l -4(%fp),%d0
	lsr.l #8,%d0
	eor.l %d0,-4(%fp)
	move.l -4(%fp),%d0
	lsr.l #4,%d0
	eor.l %d0,-4(%fp)
	moveq #15,%d0
	and.l -4(%fp),%d0
	move.l #27030,%d1
	asr.l %d0,%d1
	moveq #1,%d0
	and.l %d1,%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	link.w %fp,#-4
	move.l 8(%fp),-4(%fp)
	move.l -4(%fp),%d0
	clr.w %d0
	swap %d0
	eor.l %d0,-4(%fp)
	move.l -4(%fp),%d0
	lsr.l #8,%d0
	eor.l %d0,-4(%fp)
	move.l -4(%fp),%d0
	lsr.l #4,%d0
	eor.l %d0,-4(%fp)
	moveq #15,%d0
	and.l -4(%fp),%d0
	move.l #27030,%d1
	asr.l %d0,%d1
	moveq #1,%d0
	and.l %d1,%d0
	unlk %fp
	rts
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	link.w %fp,#-20
	movem.l #16128,-(%sp)
	move.l 8(%fp),-8(%fp)
	move.l 12(%fp),-4(%fp)
	move.l -8(%fp),%d4
	move.l -4(%fp),%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	move.l %d4,%d6
	and.l #1431655765,%d6
	move.l %d5,%d7
	and.l #1431655765,%d7
	sub.l %d7,-4(%fp)
	move.l -8(%fp),%d0
	subx.l %d6,%d0
	move.l %d0,-8(%fp)
	move.l -8(%fp),%d4
	move.l -4(%fp),%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	move.l %d4,%d1
	and.l #858993459,%d1
	move.l %d1,-20(%fp)
	move.l %d5,%d2
	and.l #858993459,%d2
	move.l %d2,-16(%fp)
	move.l -8(%fp),%d2
	and.l #858993459,%d2
	move.l -4(%fp),%d3
	and.l #858993459,%d3
	move.l -20(%fp),%d0
	move.l -16(%fp),%d1
	add.l %d3,%d1
	addx.l %d2,%d0
	move.l %d0,-8(%fp)
	move.l %d1,-4(%fp)
	move.l -8(%fp),%d2
	move.l %d2,%d3
	moveq #28,%d1
	lsl.l %d1,%d3
	move.l -4(%fp),%d2
	move.l %d2,%d1
	lsr.l #4,%d1
	or.l %d3,%d1
	move.l -8(%fp),%d2
	move.l %d2,%d0
	lsr.l #4,%d0
	move.l -8(%fp),%d2
	add.l -4(%fp),%d1
	addx.l %d2,%d0
	move.l %d0,%d2
	and.l #252645135,%d2
	move.l %d2,-8(%fp)
	move.l %d1,%d2
	and.l #252645135,%d2
	move.l %d2,-4(%fp)
	move.l -4(%fp),%a0
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	move.l %d0,%d1
	moveq #0,%d0
	move.l %d1,%d0
	add.l %d0,%a0
	move.l %a0,-12(%fp)
	move.l -12(%fp),%d0
	clr.w %d0
	swap %d0
	add.l %d0,-12(%fp)
	move.l -12(%fp),%d0
	lsr.l #8,%d0
	add.l -12(%fp),%d0
	moveq #127,%d1
	and.l %d1,%d0
	movem.l (%sp)+,#252
	unlk %fp
	rts
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	link.w %fp,#-4
	move.l %d2,-(%sp)
	move.l 8(%fp),-4(%fp)
	move.l -4(%fp),%d0
	lsr.l #1,%d0
	and.l #1431655765,%d0
	sub.l %d0,-4(%fp)
	move.l -4(%fp),%d0
	lsr.l #2,%d0
	move.l %d0,%d1
	and.l #858993459,%d1
	move.l -4(%fp),%d0
	and.l #858993459,%d0
	move.l %d1,%d2
	add.l %d0,%d2
	move.l %d2,-4(%fp)
	move.l -4(%fp),%d0
	lsr.l #4,%d0
	add.l -4(%fp),%d0
	move.l %d0,%d1
	and.l #252645135,%d1
	move.l %d1,-4(%fp)
	move.l -4(%fp),%d0
	clr.w %d0
	swap %d0
	add.l %d0,-4(%fp)
	move.l -4(%fp),%d0
	lsr.l #8,%d0
	add.l -4(%fp),%d0
	moveq #63,%d2
	and.l %d2,%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
	link.w %fp,#-28
	move.l 16(%fp),%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	neg.l %d0
	move.b %d0,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-12(%fp)
	move.l #1072693248,-8(%fp)
	clr.l -4(%fp)
.L835:
	moveq #1,%d0
	and.l 16(%fp),%d0
	jeq .L832
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l -4(%fp),-(%sp)
	move.l -8(%fp),-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,-20(%fp)
	move.l %d1,-16(%fp)
	move.l -20(%fp),-8(%fp)
	move.l -16(%fp),-4(%fp)
.L832:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,16(%fp)
	jeq .L840
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,-28(%fp)
	move.l %d1,-24(%fp)
	move.l -28(%fp),8(%fp)
	move.l -24(%fp),12(%fp)
	jra .L835
.L840:
	nop
	tst.l -12(%fp)
	jeq .L836
	move.l -4(%fp),-(%sp)
	move.l -8(%fp),-(%sp)
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
	jra .L838
.L836:
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
.L838:
	unlk %fp
	rts
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
	link.w %fp,#-8
	move.l 12(%fp),%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	neg.l %d0
	move.b %d0,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-8(%fp)
	move.l #0x3f800000,-4(%fp)
.L845:
	moveq #1,%d0
	and.l 12(%fp),%d0
	jeq .L842
	move.l 8(%fp),-(%sp)
	move.l -4(%fp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,-4(%fp)
.L842:
	move.l 12(%fp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,12(%fp)
	jeq .L850
	move.l 8(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,8(%fp)
	jra .L845
.L850:
	nop
	tst.l -8(%fp)
	jeq .L846
	move.l -4(%fp),-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	jra .L848
.L846:
	move.l -4(%fp),%d0
.L848:
	unlk %fp
	rts
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	link.w %fp,#-16
	move.l 8(%fp),-8(%fp)
	move.l 12(%fp),-4(%fp)
	move.l 16(%fp),-16(%fp)
	move.l 20(%fp),-12(%fp)
	move.l -8(%fp),%d1
	move.l -16(%fp),%d0
	cmp.l %d1,%d0
	jls .L852
	moveq #0,%d0
	jra .L857
.L852:
	move.l -8(%fp),%d1
	move.l -16(%fp),%d0
	cmp.l %d1,%d0
	jcc .L854
	moveq #2,%d0
	jra .L857
.L854:
	move.l -4(%fp),%d1
	move.l -12(%fp),%d0
	cmp.l %d1,%d0
	jls .L855
	moveq #0,%d0
	jra .L857
.L855:
	move.l -4(%fp),%d1
	move.l -12(%fp),%d0
	cmp.l %d1,%d0
	jcc .L856
	moveq #2,%d0
	jra .L857
.L856:
	moveq #1,%d0
.L857:
	unlk %fp
	rts
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	link.w %fp,#0
	move.l 16(%fp),%a0
	move.l 20(%fp),%a1
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __ucmpdi2
	lea (16,%sp),%sp
	subq.l #1,%d0
	unlk %fp
	rts
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
	.globl	__divsf3
	.globl	__fixsfsi
	.globl	__gesf2
	.globl	__umodsi3
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__floatunsisf
	.globl	__floatunsidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__divdf3
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
