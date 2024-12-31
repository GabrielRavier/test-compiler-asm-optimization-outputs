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
	clr.l %d0
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
	clr.l %d0
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
	clr.l %d0
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
	clr.l %d0
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
	extb.l %d0
	cmp.l 12(%fp),%d0
	jne .L51
	move.l %a0,%d0
	jra .L52
.L51:
	move.l %a0,%a1
	lea (1,%a1),%a0
	move.b (%a1),%d0
	jne .L53
	clr.l %d0
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
	clr.l %d1
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
	clr.l %d0
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
	clr.l %d0
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
	clr.l %d0
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
	clr.l %d0
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
	clr.l %d0
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
	clr.l %d0
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
	clr.l %d0
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
	fmove.d 8(%fp),%fp0
	fcmp.d 8(%fp),%fp0
	fjor .L123
	fmove.d 8(%fp),%fp0
	jra .L124
.L123:
	fmove.d 16(%fp),%fp0
	fcmp.d 16(%fp),%fp0
	fjor .L125
	fmove.d 16(%fp),%fp0
	jra .L124
.L125:
	fmove.d 8(%fp),%fp0
	fcmp.d 16(%fp),%fp0
	fjngt .L130
	fmove.d 8(%fp),%fp0
	fsub.d 16(%fp),%fp0
	jra .L124
.L130:
	fmovecr #0xf,%fp0
.L124:
	unlk %fp
	rts
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
	link.w %fp,#0
	fmove.s 8(%fp),%fp0
	fcmp.s 8(%fp),%fp0
	fjor .L132
	fmove.s 8(%fp),%fp0
	jra .L133
.L132:
	fmove.s 12(%fp),%fp0
	fcmp.s 12(%fp),%fp0
	fjor .L134
	fmove.s 12(%fp),%fp0
	jra .L133
.L134:
	fmove.s 8(%fp),%fp0
	fcmp.s 12(%fp),%fp0
	fjngt .L139
	fmove.s 8(%fp),%fp0
	fsub.s 12(%fp),%fp0
	jra .L133
.L139:
	fmovecr #0xf,%fp0
.L133:
	unlk %fp
	rts
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
	link.w %fp,#0
	fmove.d 8(%fp),%fp0
	fcmp.d 8(%fp),%fp0
	fjor .L141
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
	jra .L142
.L141:
	fmove.d 16(%fp),%fp0
	fcmp.d 16(%fp),%fp0
	fjor .L143
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L142
.L143:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 16(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L144
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L145
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
	jra .L142
.L145:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L142
.L144:
	fmove.d 8(%fp),%fp0
	fcmp.d 16(%fp),%fp0
	fjnlt .L151
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
	jra .L142
.L151:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
.L142:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	fmove.d (%sp)+,%fp0
	unlk %fp
	rts
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	link.w %fp,#0
	fmove.s 8(%fp),%fp0
	fcmp.s 8(%fp),%fp0
	fjor .L153
	move.l 12(%fp),%d0
	jra .L154
.L153:
	fmove.s 12(%fp),%fp0
	fcmp.s 12(%fp),%fp0
	fjor .L155
	move.l 8(%fp),%d0
	jra .L154
.L155:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 12(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L156
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L157
	move.l 12(%fp),%d0
	jra .L154
.L157:
	move.l 8(%fp),%d0
	jra .L154
.L156:
	fmove.s 8(%fp),%fp0
	fcmp.s 12(%fp),%fp0
	fjnlt .L163
	move.l 12(%fp),%d0
	jra .L154
.L163:
	move.l 8(%fp),%d0
.L154:
	fmove.s %d0,%fp0
	unlk %fp
	rts
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
	link.w %fp,#0
	move.l %d2,-(%sp)
	fmove.x 8(%fp),%fp0
	fcmp.x 8(%fp),%fp0
	fjor .L165
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
	jra .L166
.L165:
	fmove.x 20(%fp),%fp0
	fcmp.x 20(%fp),%fp0
	fjor .L167
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	jra .L166
.L167:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 20(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L168
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L169
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
	jra .L166
.L169:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	jra .L166
.L168:
	fmove.x 8(%fp),%fp0
	fcmp.x 20(%fp),%fp0
	fjnlt .L175
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
	jra .L166
.L175:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
.L166:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	fmove.x (%sp)+,%fp0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	link.w %fp,#0
	fmove.d 8(%fp),%fp0
	fcmp.d 8(%fp),%fp0
	fjor .L177
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
	jra .L178
.L177:
	fmove.d 16(%fp),%fp0
	fcmp.d 16(%fp),%fp0
	fjor .L179
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L178
.L179:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 16(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L180
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L181
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L178
.L181:
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
	jra .L178
.L180:
	fmove.d 8(%fp),%fp0
	fcmp.d 16(%fp),%fp0
	fjnlt .L187
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L178
.L187:
	move.l 16(%fp),%d0
	move.l 20(%fp),%d1
.L178:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	fmove.d (%sp)+,%fp0
	unlk %fp
	rts
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	link.w %fp,#0
	fmove.s 8(%fp),%fp0
	fcmp.s 8(%fp),%fp0
	fjor .L189
	move.l 12(%fp),%d0
	jra .L190
.L189:
	fmove.s 12(%fp),%fp0
	fcmp.s 12(%fp),%fp0
	fjor .L191
	move.l 8(%fp),%d0
	jra .L190
.L191:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 12(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L192
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L193
	move.l 8(%fp),%d0
	jra .L190
.L193:
	move.l 12(%fp),%d0
	jra .L190
.L192:
	fmove.s 8(%fp),%fp0
	fcmp.s 12(%fp),%fp0
	fjnlt .L199
	move.l 8(%fp),%d0
	jra .L190
.L199:
	move.l 12(%fp),%d0
.L190:
	fmove.s %d0,%fp0
	unlk %fp
	rts
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
	link.w %fp,#0
	move.l %d2,-(%sp)
	fmove.x 8(%fp),%fp0
	fcmp.x 8(%fp),%fp0
	fjor .L201
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
	jra .L202
.L201:
	fmove.x 20(%fp),%fp0
	fcmp.x 20(%fp),%fp0
	fjor .L203
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	jra .L202
.L203:
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 20(%fp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L204
	move.l 8(%fp),%d0
	and.l #-2147483648,%d0
	jeq .L205
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	jra .L202
.L205:
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
	jra .L202
.L204:
	fmove.x 8(%fp),%fp0
	fcmp.x 20(%fp),%fp0
	fjnlt .L211
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	jra .L202
.L211:
	move.l 20(%fp),%d0
	move.l 24(%fp),%d1
	move.l 28(%fp),%d2
.L202:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	fmove.x (%sp)+,%fp0
	move.l (%sp)+,%d2
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
	jra .L213
.L214:
	moveq #63,%d0
	and.l -8(%fp),%d0
	move.b digits(%d0.l),%d0
	move.l -4(%fp),%a0
	move.b %d0,(%a0)
	addq.l #1,-4(%fp)
	move.l -8(%fp),%d0
	lsr.l #6,%d0
	move.l %d0,-8(%fp)
.L213:
	tst.l -8(%fp)
	jne .L214
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
	clr.l %d0
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
	movem.l #15360,-(%sp)
	move.l seed,%d2
	move.l seed+4,%d3
	move.l %d2,%d5
	muls.l #1284865837,%d5
	move.l %d3,%d4
	muls.l #1481765933,%d4
	move.l %d5,%a0
	add.l %d4,%a0
	move.l #1284865837,%d4
	move.l %d3,%d1
	mulu.l %d4,%d0:%d1
	add.l %d0,%a0
	move.l %a0,%d0
	clr.l %d2
	addq.l #1,%d1
	addx.l %d2,%d0
	move.l %d0,seed
	move.l %d1,seed+4
	move.l seed,%d0
	move.l seed+4,%d1
	lsr.l #1,%d0
	move.l %d0,%d1
	clr.l %d0
	move.l %d1,%d0
	movem.l (%sp)+,#60
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
	jne .L220
	move.l -4(%fp),%a0
	clr.l 4(%a0)
	move.l -4(%fp),%a0
	move.l 4(%a0),%d0
	move.l -4(%fp),%a0
	move.l %d0,(%a0)
	jra .L219
.L220:
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
	jeq .L219
	move.l -4(%fp),%a0
	move.l (%a0),%a0
	move.l -4(%fp),4(%a0)
.L219:
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
	jeq .L223
	move.l -4(%fp),%a0
	move.l (%a0),%a0
	move.l -4(%fp),%a1
	move.l 4(%a1),%d0
	move.l %d0,4(%a0)
.L223:
	move.l -4(%fp),%a0
	move.l 4(%a0),%d0
	jeq .L225
	move.l -4(%fp),%a0
	move.l 4(%a0),%a0
	move.l -4(%fp),%a1
	move.l (%a1),%d0
	move.l %d0,(%a0)
.L225:
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
	jra .L227
.L230:
	move.l %d2,%d0
	muls.l -4(%fp),%d0
	add.l -12(%fp),%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 24(%fp),%a0
	jsr (%a0)
	addq.l #8,%sp
	tst.l %d0
	jne .L228
	move.l %d2,%d0
	muls.l -4(%fp),%d0
	add.l -12(%fp),%d0
	jra .L229
.L228:
	addq.l #1,-4(%fp)
.L227:
	move.l -4(%fp),%d0
	cmp.l -16(%fp),%d0
	jcs .L230
	move.l -16(%fp),%d0
	addq.l #1,%d0
	move.l 16(%fp),%a0
	move.l %d0,(%a0)
	move.l %d2,%d0
	muls.l -16(%fp),%d0
	add.l -12(%fp),%d0
	move.l 20(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
	move.l %a0,%d0
.L229:
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
	jra .L232
.L235:
	move.l %d2,%d0
	muls.l -4(%fp),%d0
	add.l -12(%fp),%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 24(%fp),%a0
	jsr (%a0)
	addq.l #8,%sp
	tst.l %d0
	jne .L233
	move.l %d2,%d0
	muls.l -4(%fp),%d0
	add.l -12(%fp),%d0
	jra .L234
.L233:
	addq.l #1,-4(%fp)
.L232:
	move.l -4(%fp),%d0
	cmp.l -16(%fp),%d0
	jcs .L235
	clr.l %d0
.L234:
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
	jpl .L237
	neg.l %d0
.L237:
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
	jra .L240
.L241:
	addq.l #1,8(%fp)
.L240:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	extb.l %d0
	move.l %d0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L241
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	extb.l %d0
	moveq #43,%d1
	cmp.l %d0,%d1
	jeq .L242
	moveq #45,%d2
	cmp.l %d0,%d2
	jne .L244
	moveq #1,%d0
	move.l %d0,-8(%fp)
.L242:
	addq.l #1,8(%fp)
	jra .L244
.L245:
	move.l -4(%fp),%d1
	move.l %d1,%d0
	lsl.l #2,%d0
	add.l %d1,%d0
	add.l %d0,%d0
	move.l %d0,%d1
	move.l 8(%fp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,8(%fp)
	move.l %d0,%a0
	move.b (%a0),%d0
	extb.l %d0
	move.w #-48,%a0
	add.l %d0,%a0
	move.l %d1,%d0
	sub.l %a0,%d0
	move.l %d0,-4(%fp)
.L244:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	extb.l %d0
	move.w #-48,%a0
	add.l %d0,%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcc .L245
	tst.l -8(%fp)
	jne .L246
	move.l -4(%fp),%d0
	neg.l %d0
	jra .L248
.L246:
	move.l -4(%fp),%d0
.L248:
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
	jra .L250
.L251:
	addq.l #1,8(%fp)
.L250:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	extb.l %d0
	move.l %d0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L251
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	extb.l %d0
	moveq #43,%d1
	cmp.l %d0,%d1
	jeq .L252
	moveq #45,%d2
	cmp.l %d0,%d2
	jne .L254
	moveq #1,%d0
	move.l %d0,-8(%fp)
.L252:
	addq.l #1,8(%fp)
	jra .L254
.L255:
	move.l -4(%fp),%d1
	move.l %d1,%d0
	lsl.l #2,%d0
	add.l %d1,%d0
	add.l %d0,%d0
	move.l %d0,%d1
	move.l 8(%fp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,8(%fp)
	move.l %d0,%a0
	move.b (%a0),%d0
	extb.l %d0
	move.w #-48,%a0
	add.l %d0,%a0
	move.l %d1,%d0
	sub.l %a0,%d0
	move.l %d0,-4(%fp)
.L254:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	extb.l %d0
	move.w #-48,%a0
	add.l %d0,%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcc .L255
	tst.l -8(%fp)
	jne .L256
	move.l -4(%fp),%d0
	neg.l %d0
	jra .L258
.L256:
	move.l -4(%fp),%d0
.L258:
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
	jra .L260
.L261:
	addq.l #1,8(%fp)
.L260:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	extb.l %d0
	move.l %d0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L261
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	extb.l %d0
	moveq #43,%d1
	cmp.l %d0,%d1
	jeq .L262
	moveq #45,%d2
	cmp.l %d0,%d2
	jne .L264
	moveq #1,%d4
	move.l %d4,-12(%fp)
.L262:
	addq.l #1,8(%fp)
	jra .L264
.L265:
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
	move.l %a0,%d5
	add.l %a1,%d1
	addx.l %d5,%d0
	move.l %d0,%d2
	move.l %d1,%d3
	add.l %d3,%d3
	addx.l %d2,%d2
	move.l %d2,%d0
	move.l %d3,%d1
	move.l %d0,%d2
	move.l %d1,%d3
	move.l 8(%fp),%d0
	move.l %d0,%d1
	addq.l #1,%d1
	move.l %d1,8(%fp)
	move.l %d0,%a0
	move.b (%a0),%d0
	extb.l %d0
	move.w #-48,%a0
	add.l %d0,%a0
	move.l %a0,%d1
	smi %d0
	extb.l %d0
	move.l %d2,%d4
	move.l %d3,%d5
	sub.l %d1,%d5
	subx.l %d0,%d4
	move.l %d4,-8(%fp)
	move.l %d5,-4(%fp)
.L264:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	extb.l %d0
	move.w #-48,%a0
	add.l %d0,%a0
	moveq #9,%d5
	cmp.l %a0,%d5
	jcc .L265
	tst.l -12(%fp)
	jne .L266
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	neg.l %d1
	negx.l %d0
	jra .L268
.L266:
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
.L268:
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
	jra .L270
.L274:
	move.l 16(%fp),%d0
	lsr.l #1,%d0
	muls.l 20(%fp),%d0
	move.l 12(%fp),%d1
	add.l %d0,%d1
	move.l %d1,-4(%fp)
	move.l -4(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 24(%fp),%a0
	jsr (%a0)
	addq.l #8,%sp
	move.l %d0,-8(%fp)
	jpl .L271
	move.l 16(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,16(%fp)
	jra .L270
.L271:
	tst.l -8(%fp)
	jle .L272
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
	jra .L270
.L272:
	move.l -4(%fp),%d0
	jra .L273
.L270:
	tst.l 16(%fp)
	jne .L274
	clr.l %d0
.L273:
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
	jra .L276
.L280:
	move.l -8(%fp),%d0
	asr.l #1,%d0
	muls.l 20(%fp),%d0
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
	jne .L277
	move.l -12(%fp),%d0
	jra .L278
.L277:
	tst.l -16(%fp)
	jle .L279
	move.l -12(%fp),%d0
	add.l 20(%fp),%d0
	move.l %d0,-4(%fp)
	subq.l #1,-8(%fp)
.L279:
	move.l -8(%fp),%d0
	asr.l #1,%d0
	move.l %d0,-8(%fp)
.L276:
	tst.l -8(%fp)
	jne .L280
	clr.l %d0
.L278:
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
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	divsl.l 12(%fp),%d3:%d2
	move.l %d2,%a1
	move.l 8(%fp),%d2
	move.l %d2,%d3
	divsl.l 12(%fp),%d2:%d3
	move.l %d2,%a0
	move.l %a1,%d0
	move.l %a0,%d1
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	jge .L284
	neg.l %d1
	negx.l %d0
.L284:
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
	jpl .L289
	neg.l %d0
.L289:
	unlk %fp
	rts
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.type	ldiv, @function
ldiv:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	divsl.l 12(%fp),%d3:%d2
	move.l %d2,%a1
	move.l 8(%fp),%d2
	move.l %d2,%d3
	divsl.l 12(%fp),%d2:%d3
	move.l %d2,%a0
	move.l %a1,%d0
	move.l %a0,%d1
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	jge .L294
	neg.l %d1
	negx.l %d0
.L294:
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
	jra .L299
.L301:
	addq.l #4,8(%fp)
.L299:
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	jeq .L300
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	cmp.l 12(%fp),%d0
	jne .L301
.L300:
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	jeq .L302
	move.l 8(%fp),%d0
	jra .L304
.L302:
	clr.l %d0
.L304:
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
	jra .L306
.L308:
	addq.l #4,8(%fp)
	addq.l #4,12(%fp)
.L306:
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jne .L307
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	jeq .L307
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	jne .L308
.L307:
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L309
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L311
.L309:
	moveq #-1,%d0
.L311:
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
.L313:
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
	jne .L313
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
	jra .L316
.L317:
	addq.l #4,8(%fp)
.L316:
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	jne .L317
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
	jra .L320
.L322:
	subq.l #1,16(%fp)
	addq.l #4,8(%fp)
	addq.l #4,12(%fp)
.L320:
	tst.l 16(%fp)
	jeq .L321
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jne .L321
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	jeq .L321
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	jne .L322
.L321:
	tst.l 16(%fp)
	jeq .L323
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L324
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L327
.L324:
	moveq #-1,%d0
	jra .L327
.L323:
	clr.l %d0
.L327:
	unlk %fp
	rts
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	link.w %fp,#0
	jra .L329
.L331:
	subq.l #1,16(%fp)
	addq.l #4,8(%fp)
.L329:
	tst.l 16(%fp)
	jeq .L330
	move.l 8(%fp),%a0
	move.l (%a0),%d0
	cmp.l 12(%fp),%d0
	jne .L331
.L330:
	tst.l 16(%fp)
	jeq .L332
	move.l 8(%fp),%d0
	jra .L334
.L332:
	clr.l %d0
.L334:
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
	jra .L336
.L338:
	subq.l #1,16(%fp)
	addq.l #4,8(%fp)
	addq.l #4,12(%fp)
.L336:
	tst.l 16(%fp)
	jeq .L337
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jeq .L338
.L337:
	tst.l 16(%fp)
	jeq .L339
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L340
	move.l 8(%fp),%a0
	move.l (%a0),%d1
	move.l 12(%fp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L343
.L340:
	moveq #-1,%d0
	jra .L343
.L339:
	clr.l %d0
.L343:
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
	jra .L345
.L346:
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
.L345:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L346
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
	jne .L349
	move.l 8(%fp),%d0
	jra .L350
.L349:
	move.l 8(%fp),%d1
	move.l 12(%fp),%d0
	sub.l %d0,%d1
	move.l 16(%fp),%d0
	lsl.l #2,%d0
	cmp.l %d1,%d0
	jls .L355
	jra .L352
.L353:
	move.l 16(%fp),%d0
	lsl.l #2,%d0
	move.l 12(%fp),%a1
	add.l %d0,%a1
	move.l 16(%fp),%d0
	lsl.l #2,%d0
	move.l 8(%fp),%a0
	add.l %d0,%a0
	move.l (%a1),%d0
	move.l %d0,(%a0)
.L352:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L353
	jra .L354
.L356:
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
.L355:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L356
.L354:
	move.l -4(%fp),%d0
.L350:
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
	jra .L358
.L359:
	move.l 8(%fp),%d0
	move.l %d0,%d1
	addq.l #4,%d1
	move.l %d1,8(%fp)
	move.l %d0,%a0
	move.l 12(%fp),(%a0)
.L358:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L359
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
	jcc .L362
	move.l 16(%fp),%d2
	add.l %d2,-4(%fp)
	move.l 16(%fp),%d0
	add.l %d0,-8(%fp)
	jra .L363
.L364:
	subq.l #1,-4(%fp)
	subq.l #1,-8(%fp)
	move.l -4(%fp),%a0
	move.b (%a0),%d0
	move.l -8(%fp),%a0
	move.b %d0,(%a0)
	subq.l #1,16(%fp)
.L363:
	tst.l 16(%fp)
	jne .L364
	jra .L368
.L362:
	move.l -4(%fp),%d2
	cmp.l -8(%fp),%d2
	jeq .L368
	jra .L366
.L367:
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
.L366:
	tst.l 16(%fp)
	jne .L367
.L368:
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
	jmi .L370
	move.l %d1,%d4
	lsl.l %d6,%d4
	clr.l %d5
	jra .L371
.L370:
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
.L371:
	move.l 16(%fp),%d6
	neg.l %d6
	moveq #63,%d7
	and.l %d7,%d6
	move.w #-32,%a0
	add.l %d6,%a0
	tst.l %a0
	jlt .L372
	move.l %d0,%d3
	move.l %a0,%d6
	lsr.l %d6,%d3
	clr.l %d2
	jra .L373
.L372:
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
.L373:
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
	jmi .L376
	move.l %d0,%d5
	lsr.l %d6,%d5
	clr.l %d4
	jra .L377
.L376:
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
.L377:
	move.l 16(%fp),%d6
	neg.l %d6
	moveq #63,%d7
	and.l %d7,%d6
	move.w #-32,%a0
	add.l %d6,%a0
	tst.l %a0
	jlt .L378
	move.l %d1,%d2
	move.l %a0,%d6
	lsl.l %d6,%d2
	clr.l %d3
	jra .L379
.L378:
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
.L379:
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
	clr.l %d0
	move.w -2(%fp),%d0
	move.l 12(%fp),%d1
	lsl.l %d1,%d0
	move.l %d0,%d2
	clr.l %d1
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
	clr.l %d0
	move.w -2(%fp),%d0
	move.l 12(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,%d2
	clr.l %d1
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
	clr.l %d0
	move.b -2(%fp),%d0
	move.l 12(%fp),%d1
	lsl.l %d1,%d0
	move.l %d0,%d2
	clr.l %d1
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
	clr.l %d0
	move.b -2(%fp),%d0
	move.l 12(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,%d2
	clr.l %d1
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
	clr.l %d1
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
	move.l %d2,-(%sp)
	move.l #255,-4(%fp)
	move.l -4(%fp),%d0
	moveq #24,%d1
	lsl.l %d1,%d0
	and.l 8(%fp),%d0
	move.l %d0,%d1
	moveq #24,%d2
	lsr.l %d2,%d1
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
	moveq #24,%d2
	lsl.l %d2,%d0
	or.l %d1,%d0
	move.l (%sp)+,%d2
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
	clr.l %d1
	move.l 8(%fp),%d2
	and.l %d0,%d2
	move.l 12(%fp),%d3
	and.l %d1,%d3
	moveq #24,%d3
	lsr.l %d3,%d2
	move.l %d2,%d3
	clr.l %d2
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	move.l %d1,%d0
	swap %d0
	clr.l %d1
	clr.w %d0
	move.l 8(%fp),%d6
	and.l %d0,%d6
	move.l 12(%fp),%d7
	and.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	lsr.l #8,%d0
	move.l %d0,%d1
	clr.l %d0
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
	clr.l %d1
	move.l 8(%fp),%d4
	and.l %d0,%d4
	move.l 12(%fp),%d5
	and.l %d1,%d5
	move.l %d4,%d0
	lsl.l #8,%d0
	move.l %d5,%d1
	moveq #24,%d2
	lsr.l %d2,%d1
	move.l %d1,-20(%fp)
	or.l %d0,-20(%fp)
	move.l %d4,%d3
	moveq #24,%d0
	lsr.l %d0,%d3
	move.l %d3,-24(%fp)
	move.l -16(%fp),%d1
	or.l -24(%fp),%d1
	move.l %d1,-32(%fp)
	move.l -12(%fp),%d2
	or.l -20(%fp),%d2
	move.l %d2,-28(%fp)
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	move.l %d1,%d0
	clr.l %d1
	move.l 8(%fp),%d3
	and.l %d0,%d3
	move.l %d3,-40(%fp)
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
	move.l -28(%fp),%d3
	or.l %d1,%d3
	move.l %d3,-44(%fp)
	move.l -4(%fp),%d0
	move.l %d0,%d1
	lsr.l #8,%d1
	move.l -8(%fp),%d0
	move.l %d0,%d4
	moveq #24,%d2
	lsl.l %d2,%d4
	move.l %d4,-56(%fp)
	or.l %d1,-56(%fp)
	move.l -4(%fp),%d0
	move.l %d0,%d3
	moveq #24,%d4
	lsl.l %d4,%d3
	move.l %d3,-52(%fp)
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
	move.l -44(%fp),%d3
	or.l %d1,%d3
	move.l %d3,-68(%fp)
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	swap %d0
	swap %d1
	move.w %d1,%d0
	clr.w %d1
	move.l 8(%fp),%d4
	and.l %d0,%d4
	move.l %d4,-80(%fp)
	move.l 12(%fp),%d2
	and.l %d1,%d2
	move.l %d2,-76(%fp)
	move.l -76(%fp),%d0
	lsr.l #8,%d0
	move.l -80(%fp),%d3
	moveq #24,%d4
	lsl.l %d4,%d3
	move.l %d3,-88(%fp)
	or.l %d0,-88(%fp)
	move.l -76(%fp),%d0
	moveq #24,%d1
	lsl.l %d1,%d0
	move.l %d0,-84(%fp)
	move.l -72(%fp),%d2
	or.l -88(%fp),%d2
	move.l %d2,-96(%fp)
	move.l -68(%fp),%d3
	or.l -84(%fp),%d3
	move.l %d3,-92(%fp)
	move.l -8(%fp),%d0
	move.l -4(%fp),%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	move.l 8(%fp),%d4
	and.l %d0,%d4
	move.l %d4,-104(%fp)
	move.l 12(%fp),%d2
	and.l %d1,%d2
	move.l %d2,-100(%fp)
	move.l -104(%fp),%d0
	move.l -100(%fp),%d1
	lsl.l #8,%d1
	move.l %d1,%d0
	clr.l %d1
	move.l -96(%fp),%d3
	or.l %d0,%d3
	move.l %d3,-112(%fp)
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
	clr.l %d1
	move.l -112(%fp),%d2
	or.l %d0,%d2
	move.l %d2,-128(%fp)
	move.l -108(%fp),%d3
	or.l %d1,%d3
	move.l %d3,-124(%fp)
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
	jra .L404
.L407:
	move.l 8(%fp),%d0
	move.l -4(%fp),%d1
	lsr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L405
	move.l -4(%fp),%d0
	addq.l #1,%d0
	jra .L406
.L405:
	addq.l #1,-4(%fp)
.L404:
	moveq #31,%d0
	cmp.l -4(%fp),%d0
	jcc .L407
	clr.l %d0
.L406:
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
	jne .L409
	clr.l %d0
	jra .L410
.L409:
	moveq #1,%d2
	jra .L411
.L412:
	asr.l #1,%d0
	addq.l #1,%d2
.L411:
	moveq #1,%d1
	and.l %d0,%d1
	jeq .L412
	move.l %d2,%d0
.L410:
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	link.w %fp,#0
	fmove.s 8(%fp),%fp0
	fcmp.s #0xff7fffff,%fp0
	fjlt .L414
	fmove.s 8(%fp),%fp0
	fcmp.s #0x7f7fffff,%fp0
	fjngt .L419
.L414:
	moveq #1,%d0
	jra .L418
.L419:
	clr.l %d0
.L418:
	unlk %fp
	rts
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	link.w %fp,#0
	fmove.d 8(%fp),%fp0
	fcmp.d #0xffefffffffffffff,%fp0
	fjlt .L421
	fmove.d 8(%fp),%fp0
	fcmp.d #0x7fefffffffffffff,%fp0
	fjngt .L426
.L421:
	moveq #1,%d0
	jra .L425
.L426:
	clr.l %d0
.L425:
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
	fmove.x 8(%fp),%fp1
	fmove.x .LC0,%fp0
	fcmp.x %fp0,%fp1
	fjlt .L428
	fmove.x 8(%fp),%fp1
	fmove.x .LC1,%fp0
	fcmp.x %fp0,%fp1
	fjngt .L433
.L428:
	moveq #1,%d0
	jra .L432
.L433:
	clr.l %d0
.L432:
	unlk %fp
	rts
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	link.w %fp,#0
	fmove.l 12(%fp),%fp0
	move.l 8(%fp),%a0
	fmove.x %fp0,(%a0)
	nop
	unlk %fp
	rts
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
	link.w %fp,#-4
	fmove.s 8(%fp),%fp0
	fcmp.s 8(%fp),%fp0
	fjun .L436
	move.l 8(%fp),%d0
	fmove.s %d0,%fp0
	fadd.s %d0,%fp0
	move.l 8(%fp),%d0
	fcmp.s %d0,%fp0
	fjeq .L436
	tst.l 12(%fp)
	jge .L437
	move.l #0x3f000000,%d0
	jra .L438
.L437:
	move.l #0x40000000,%d0
.L438:
	move.l %d0,-4(%fp)
.L441:
	move.l 12(%fp),%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L439
	fmove.s 8(%fp),%fp0
	fsglmul.s -4(%fp),%fp0
	fmove.s %fp0,8(%fp)
.L439:
	move.l 12(%fp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,12(%fp)
	jeq .L443
	fmove.s -4(%fp),%fp0
	fsglmul.s -4(%fp),%fp0
	fmove.s %fp0,-4(%fp)
	jra .L441
.L443:
	nop
.L436:
	move.l 8(%fp),%d0
	fmove.s %d0,%fp0
	unlk %fp
	rts
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
	link.w %fp,#-8
	fmove.d 8(%fp),%fp0
	fcmp.d 8(%fp),%fp0
	fjun .L445
	fmove.d 8(%fp),%fp0
	fadd.x %fp0,%fp0
	fmove.d 8(%fp),%fp1
	fcmp.x %fp0,%fp1
	fjeq .L445
	tst.l 16(%fp)
	jge .L446
	fmove.d #0x3fe0000000000000,%fp0
	jra .L447
.L446:
	fmove.d #0x4000000000000000,%fp0
.L447:
	fmove.d %fp0,-8(%fp)
.L450:
	move.l 16(%fp),%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L448
	fmove.d 8(%fp),%fp0
	fmul.d -8(%fp),%fp0
	fmove.d %fp0,8(%fp)
.L448:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,16(%fp)
	jeq .L452
	fmove.d -8(%fp),%fp0
	fmul.d -8(%fp),%fp0
	fmove.d %fp0,-8(%fp)
	jra .L450
.L452:
	nop
.L445:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	fmove.d (%sp)+,%fp0
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
	link.w %fp,#-12
	move.l %d2,-(%sp)
	fmove.x 8(%fp),%fp0
	fcmp.x 8(%fp),%fp0
	fjun .L454
	fmove.x 8(%fp),%fp0
	fadd.x %fp0,%fp0
	fmove.x 8(%fp),%fp1
	fcmp.x %fp0,%fp1
	fjeq .L454
	tst.l 20(%fp)
	jge .L455
	move.l .LC2,%d0
	move.l .LC2+4,%d1
	move.l .LC2+8,%d2
	jra .L456
.L455:
	move.l .LC3,%d0
	move.l .LC3+4,%d1
	move.l .LC3+8,%d2
.L456:
	move.l %d0,-12(%fp)
	move.l %d1,-8(%fp)
	move.l %d2,-4(%fp)
.L459:
	move.l 20(%fp),%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L457
	fmove.x 8(%fp),%fp0
	fmul.x -12(%fp),%fp0
	fmove.x %fp0,8(%fp)
.L457:
	move.l 20(%fp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,20(%fp)
	jeq .L461
	fmove.x -12(%fp),%fp0
	fmul.x -12(%fp),%fp0
	fmove.x %fp0,-12(%fp)
	jra .L459
.L461:
	nop
.L454:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%d2
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	fmove.x (%sp)+,%fp0
	move.l (%sp)+,%d2
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
	jra .L463
.L464:
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
.L463:
	tst.l 16(%fp)
	jne .L464
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
	jra .L467
.L469:
	addq.l #1,12(%fp)
	addq.l #1,-4(%fp)
	subq.l #1,16(%fp)
.L467:
	tst.l 16(%fp)
	jeq .L468
	move.l 12(%fp),%a0
	move.b (%a0),%d0
	move.l -4(%fp),%a0
	move.b %d0,(%a0)
	move.l -4(%fp),%a0
	move.b (%a0),%d0
	jne .L469
.L468:
	tst.l 16(%fp)
	jne .L470
	move.l -4(%fp),%a0
	clr.b (%a0)
.L470:
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
	jra .L473
.L478:
	nop
	addq.l #1,-4(%fp)
.L473:
	move.l -4(%fp),%d0
	cmp.l 12(%fp),%d0
	jcc .L474
	move.l 8(%fp),%a0
	add.l -4(%fp),%a0
	move.b (%a0),%d0
	jne .L478
.L474:
	move.l -4(%fp),%d0
	unlk %fp
	rts
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	link.w %fp,#-4
	jra .L480
.L484:
	move.l 12(%fp),-4(%fp)
	jra .L481
.L483:
	move.l -4(%fp),%d0
	move.l %d0,%d1
	addq.l #1,%d1
	move.l %d1,-4(%fp)
	move.l %d0,%a0
	move.b (%a0),%d1
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L481
	move.l 8(%fp),%d0
	jra .L482
.L481:
	move.l -4(%fp),%a0
	move.b (%a0),%d0
	jne .L483
	addq.l #1,8(%fp)
.L480:
	move.l 8(%fp),%a0
	move.b (%a0),%d0
	jne .L484
	clr.l %d0
.L482:
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
.L487:
	move.b (%a0),%d0
	extb.l %d0
	cmp.l 12(%fp),%d0
	jne .L486
	move.l %a0,-4(%fp)
.L486:
	move.l %a0,%a1
	lea (1,%a1),%a0
	move.b (%a1),%d0
	jne .L487
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
	jne .L492
	move.l 8(%fp),%d0
	jra .L491
.L494:
	move.l -8(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l -4(%fp),-(%sp)
	jsr strncmp
	lea (12,%sp),%sp
	tst.l %d0
	jne .L493
	move.l -4(%fp),%d0
	jra .L491
.L493:
	addq.l #1,-4(%fp)
.L492:
	move.l 12(%fp),%a0
	move.b (%a0),%d0
	extb.l %d0
	move.l %d0,-(%sp)
	move.l -4(%fp),-(%sp)
	jsr strchr
	addq.l #8,%sp
	move.l %a0,-4(%fp)
	jne .L494
	clr.l %d0
.L491:
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
	fmove.d 8(%fp),%fp0
	fjnlt .L496
	fmove.d 16(%fp),%fp0
	fjgt .L498
.L496:
	fmove.d 8(%fp),%fp0
	fjngt .L499
	fmove.d 16(%fp),%fp0
	fjnlt .L499
.L498:
	fneg.d 8(%fp),%fp0
	jra .L502
.L499:
	fmove.d 8(%fp),%fp0
.L502:
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
	jne .L506
	move.l 8(%fp),%d0
	jra .L507
.L506:
	move.l 12(%fp),%d1
	cmp.l 20(%fp),%d1
	scs %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	tst.l %d0
	jeq .L508
	clr.l %d0
	jra .L507
.L508:
	move.l 8(%fp),-4(%fp)
	jra .L509
.L511:
	move.l -4(%fp),%a0
	move.b (%a0),%d1
	move.l 16(%fp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L510
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
	jne .L510
	move.l -4(%fp),%d0
	jra .L507
.L510:
	addq.l #1,-4(%fp)
.L509:
	move.l -4(%fp),%d0
	cmp.l -8(%fp),%d0
	jls .L511
	clr.l %d0
.L507:
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
	link.w %fp,#-8
	clr.l -8(%fp)
	clr.l -4(%fp)
	fmove.d 8(%fp),%fp0
	fjnlt .L515
	fneg.d 8(%fp),%fp0
	fmove.d %fp0,8(%fp)
	moveq #1,%d0
	move.l %d0,-4(%fp)
.L515:
	fmove.d 8(%fp),%fp1
	fmovecr #0x32,%fp0
	fcmp.x %fp0,%fp1
	fjnge .L530
	jra .L519
.L520:
	addq.l #1,-8(%fp)
	fmove.d 8(%fp),%fp0
	fdiv.d #0x4000000000000000,%fp0
	fmove.d %fp0,8(%fp)
.L519:
	fmove.d 8(%fp),%fp1
	fmovecr #0x32,%fp0
	fcmp.x %fp0,%fp1
	fjge .L520
	jra .L521
.L530:
	fmove.d 8(%fp),%fp0
	fcmp.d #0x3fe0000000000000,%fp0
	fjnlt .L521
	fmove.d 8(%fp),%fp0
	fjeq .L521
	jra .L523
.L524:
	subq.l #1,-8(%fp)
	fmove.d 8(%fp),%fp0
	fmove.x %fp0,%fp1
	fadd.x %fp0,%fp1
	fmove.d %fp1,8(%fp)
.L523:
	fmove.d 8(%fp),%fp0
	fcmp.d #0x3fe0000000000000,%fp0
	fjlt .L524
.L521:
	move.l 16(%fp),%a0
	move.l -8(%fp),(%a0)
	tst.l -4(%fp)
	jeq .L525
	fneg.d 8(%fp),%fp0
	fmove.d %fp0,8(%fp)
.L525:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	fmove.d (%sp)+,%fp0
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
	jra .L532
.L534:
	clr.l %d0
	and.l -16(%fp),%d0
	moveq #1,%d1
	and.l -12(%fp),%d1
	move.l %d0,%d2
	or.l %d1,%d2
	jeq .L533
	move.l 16(%fp),%d3
	move.l 20(%fp),%d4
	add.l %d4,-4(%fp)
	move.l -8(%fp),%d2
	addx.l %d3,%d2
	move.l %d2,-8(%fp)
.L533:
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
.L532:
	move.l -16(%fp),%d3
	or.l -12(%fp),%d3
	jne .L534
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
	jra .L537
.L539:
	move.l 12(%fp),%d0
	add.l %d0,%d0
	move.l %d0,12(%fp)
	move.l -4(%fp),%d0
	add.l %d0,%d0
	move.l %d0,-4(%fp)
.L537:
	move.l 12(%fp),%d0
	cmp.l 8(%fp),%d0
	jcc .L540
	tst.l -4(%fp)
	jeq .L540
	move.l 12(%fp),%d0
	jpl .L539
	jra .L540
.L542:
	move.l 8(%fp),%d0
	cmp.l 12(%fp),%d0
	jcs .L541
	move.l 12(%fp),%d0
	sub.l %d0,8(%fp)
	move.l -4(%fp),%d0
	or.l %d0,-8(%fp)
.L541:
	move.l -4(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,-4(%fp)
	move.l 12(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,12(%fp)
.L540:
	tst.l -4(%fp)
	jne .L542
	tst.l 16(%fp)
	jeq .L543
	move.l 8(%fp),%d0
	jra .L544
.L543:
	move.l -8(%fp),%d0
.L544:
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
	jpl .L546
	not.b -6(%fp)
.L546:
	tst.b -6(%fp)
	jne .L547
	moveq #7,%d0
	jra .L548
.L547:
	move.b -6(%fp),%d0
	extb.l %d0
	lsl.l #8,%d0
	bfffo %d0{#0:#0},%d0
	move.l %d0,-4(%fp)
	move.l -4(%fp),%d0
	subq.l #1,%d0
.L548:
	unlk %fp
	rts
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	link.w %fp,#-4
	tst.l 8(%fp)
	jge .L550
	move.l 8(%fp),%d0
	not.l %d0
	move.l 12(%fp),%d1
	not.l %d1
	move.l %d0,8(%fp)
	move.l %d1,12(%fp)
.L550:
	move.l 8(%fp),%d0
	or.l 12(%fp),%d0
	jne .L551
	moveq #63,%d0
	jra .L552
.L551:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	tst.l %d0
	jeq .L553
	bfffo %d0{#0:#0},%d0
	jra .L554
.L553:
	bfffo %d1{#0:#0},%d0
	moveq #32,%d1
	add.l %d1,%d0
.L554:
	move.l %d0,-4(%fp)
	move.l -4(%fp),%d0
	subq.l #1,%d0
.L552:
	unlk %fp
	rts
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	link.w %fp,#-4
	clr.l -4(%fp)
	jra .L556
.L558:
	moveq #1,%d0
	and.l 8(%fp),%d0
	jeq .L557
	move.l 12(%fp),%d0
	add.l %d0,-4(%fp)
.L557:
	move.l 8(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,8(%fp)
	move.l 12(%fp),%d0
	add.l %d0,%d0
	move.l %d0,12(%fp)
.L556:
	tst.l 8(%fp)
	jne .L558
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
	jcs .L561
	move.l -20(%fp),%d0
	add.l 16(%fp),%d0
	cmp.l -16(%fp),%d0
	jcc .L568
.L561:
	clr.l -4(%fp)
	jra .L563
.L564:
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
.L563:
	move.l -4(%fp),%d0
	cmp.l -12(%fp),%d0
	jcs .L564
	jra .L565
.L566:
	move.l -20(%fp),%a1
	add.l -8(%fp),%a1
	move.l -16(%fp),%a0
	add.l -8(%fp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	addq.l #1,-8(%fp)
.L565:
	move.l 16(%fp),%d1
	cmp.l -8(%fp),%d1
	jhi .L566
	jra .L567
.L569:
	move.l -20(%fp),%a1
	add.l 16(%fp),%a1
	move.l -16(%fp),%a0
	add.l 16(%fp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L568:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L569
	nop
.L567:
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
	jcs .L571
	move.l -16(%fp),%d0
	add.l 16(%fp),%d0
	cmp.l -12(%fp),%d0
	jcc .L577
.L571:
	clr.l -4(%fp)
	jra .L573
.L574:
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
.L573:
	move.l -4(%fp),%d1
	cmp.l -8(%fp),%d1
	jcs .L574
	moveq #1,%d0
	and.l 16(%fp),%d0
	jeq .L576
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
	jra .L576
.L578:
	move.l -16(%fp),%a1
	add.l 16(%fp),%a1
	move.l -12(%fp),%a0
	add.l 16(%fp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L577:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L578
	nop
.L576:
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
	jcs .L580
	move.l -20(%fp),%d0
	add.l 16(%fp),%d0
	cmp.l -16(%fp),%d0
	jcc .L587
.L580:
	clr.l -4(%fp)
	jra .L582
.L583:
	move.l -4(%fp),%d0
	lsl.l #2,%d0
	move.l 12(%fp),%a1
	add.l %d0,%a1
	move.l -4(%fp),%d0
	lsl.l #2,%d0
	move.l 8(%fp),%a0
	add.l %d0,%a0
	move.l (%a1),%d0
	move.l %d0,(%a0)
	addq.l #1,-4(%fp)
.L582:
	move.l -4(%fp),%d0
	cmp.l -12(%fp),%d0
	jcs .L583
	jra .L584
.L585:
	move.l -20(%fp),%a1
	add.l -8(%fp),%a1
	move.l -16(%fp),%a0
	add.l -8(%fp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	addq.l #1,-8(%fp)
.L584:
	move.l 16(%fp),%d1
	cmp.l -8(%fp),%d1
	jhi .L585
	jra .L586
.L588:
	move.l -20(%fp),%a1
	add.l 16(%fp),%a1
	move.l -16(%fp),%a0
	add.l 16(%fp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L587:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%fp)
	tst.l %d0
	jne .L588
	nop
.L586:
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
	move.l %d0,%d1
	divsl.l 12(%fp),%d0:%d1
	unlk %fp
	rts
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.type	__uitod, @function
__uitod:
	link.w %fp,#0
	fmove.l 8(%fp),%fp0
	tst.l 8(%fp)
	jge .L593
	fadd.d #0x41f0000000000000,%fp0
.L593:
	unlk %fp
	rts
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.type	__uitof, @function
__uitof:
	link.w %fp,#0
	fmove.l 8(%fp),%fp0
	tst.l 8(%fp)
	jge .L595
	fadd.d #0x41f0000000000000,%fp0
.L595:
	fmove.s %fp0,%d0
	fmove.s %d0,%fp0
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
	move.l %d0,%d1
	divul.l 12(%fp),%d0:%d1
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
	jra .L604
.L607:
	clr.l %d1
	move.w -6(%fp),%d1
	moveq #15,%d0
	sub.l -4(%fp),%d0
	asr.l %d0,%d1
	moveq #1,%d0
	and.l %d1,%d0
	jne .L609
	addq.l #1,-4(%fp)
.L604:
	moveq #15,%d0
	cmp.l -4(%fp),%d0
	jge .L607
	jra .L606
.L609:
	nop
.L606:
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
	jra .L611
.L614:
	clr.l %d0
	move.w -6(%fp),%d0
	move.l -4(%fp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jne .L616
	addq.l #1,-4(%fp)
.L611:
	moveq #15,%d0
	cmp.l -4(%fp),%d0
	jge .L614
	jra .L613
.L616:
	nop
.L613:
	move.l -4(%fp),%d0
	unlk %fp
	rts
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	link.w %fp,#0
	fmove.s 8(%fp),%fp0
	fcmp.s #0x47000000,%fp0
	fjnge .L622
	fmove.s 8(%fp),%fp0
	fsub.s #0x47000000,%fp0
	fintrz.x %fp0,%fp0
	fmove.l %fp0,%d0
	add.l #32768,%d0
	jra .L620
.L622:
	fintrz.s 8(%fp),%fp0
	fmove.l %fp0,%d0
.L620:
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
	jra .L624
.L626:
	clr.l %d0
	move.w -10(%fp),%d0
	move.l -4(%fp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L625
	addq.l #1,-8(%fp)
.L625:
	addq.l #1,-4(%fp)
.L624:
	moveq #15,%d0
	cmp.l -4(%fp),%d0
	jge .L626
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
	jra .L629
.L631:
	clr.l %d0
	move.w -10(%fp),%d0
	move.l -4(%fp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L630
	addq.l #1,-8(%fp)
.L630:
	addq.l #1,-4(%fp)
.L629:
	moveq #15,%d0
	cmp.l -4(%fp),%d0
	jge .L631
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
	jra .L634
.L636:
	moveq #1,%d0
	and.l 8(%fp),%d0
	jeq .L635
	move.l 12(%fp),%d0
	add.l %d0,-4(%fp)
.L635:
	move.l 8(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,8(%fp)
	move.l 12(%fp),%d0
	add.l %d0,%d0
	move.l %d0,12(%fp)
.L634:
	tst.l 8(%fp)
	jne .L636
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
	jne .L641
	clr.l %d0
	jra .L640
.L643:
	moveq #1,%d0
	and.l 12(%fp),%d0
	jeq .L642
	move.l 8(%fp),%d0
	add.l %d0,-4(%fp)
.L642:
	move.l 8(%fp),%d0
	add.l %d0,%d0
	move.l %d0,8(%fp)
	move.l 12(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,12(%fp)
.L641:
	tst.l 12(%fp)
	jne .L643
	move.l -4(%fp),%d0
.L640:
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
	jra .L645
.L647:
	move.l 12(%fp),%d0
	add.l %d0,%d0
	move.l %d0,12(%fp)
	move.l -4(%fp),%d0
	add.l %d0,%d0
	move.l %d0,-4(%fp)
.L645:
	move.l 12(%fp),%d0
	cmp.l 8(%fp),%d0
	jcc .L648
	tst.l -4(%fp)
	jeq .L648
	move.l 12(%fp),%d0
	jpl .L647
	jra .L648
.L650:
	move.l 8(%fp),%d0
	cmp.l 12(%fp),%d0
	jcs .L649
	move.l 12(%fp),%d0
	sub.l %d0,8(%fp)
	move.l -4(%fp),%d0
	or.l %d0,-8(%fp)
.L649:
	move.l -4(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,-4(%fp)
	move.l 12(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,12(%fp)
.L648:
	tst.l -4(%fp)
	jne .L650
	tst.l 16(%fp)
	jeq .L651
	move.l 8(%fp),%d0
	jra .L652
.L651:
	move.l -8(%fp),%d0
.L652:
	unlk %fp
	rts
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	link.w %fp,#0
	fmove.s 8(%fp),%fp0
	fcmp.s 12(%fp),%fp0
	fjnlt .L661
	moveq #-1,%d0
	jra .L656
.L661:
	fmove.s 8(%fp),%fp0
	fcmp.s 12(%fp),%fp0
	fjngt .L662
	moveq #1,%d0
	jra .L656
.L662:
	clr.l %d0
.L656:
	unlk %fp
	rts
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	link.w %fp,#0
	fmove.d 8(%fp),%fp0
	fcmp.d 16(%fp),%fp0
	fjnlt .L671
	moveq #-1,%d0
	jra .L666
.L671:
	fmove.d 8(%fp),%fp0
	fcmp.d 16(%fp),%fp0
	fjngt .L672
	moveq #1,%d0
	jra .L666
.L672:
	clr.l %d0
.L666:
	unlk %fp
	rts
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	link.w %fp,#0
	movem.l #16128,-(%sp)
	move.l 8(%fp),%d5
	smi %d4
	extb.l %d4
	move.l 12(%fp),%d3
	smi %d2
	extb.l %d2
	move.l %d4,%d7
	muls.l %d3,%d7
	move.l %d2,%d6
	muls.l %d5,%d6
	move.l %d7,%a0
	add.l %d6,%a0
	move.l %d5,%d1
	mulu.l %d3,%d0:%d1
	add.l %d0,%a0
	move.l %a0,%d0
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	movem.l (%sp)+,#252
	unlk %fp
	rts
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	link.w %fp,#0
	movem.l #16128,-(%sp)
	move.l 8(%fp),%d5
	clr.l %d4
	move.l 12(%fp),%d3
	clr.l %d2
	move.l %d4,%d7
	muls.l %d3,%d7
	move.l %d2,%d6
	muls.l %d5,%d6
	move.l %d7,%a0
	add.l %d6,%a0
	move.l %d5,%d1
	mulu.l %d3,%d0:%d1
	add.l %d0,%a0
	move.l %a0,%d0
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d0
	move.l %a1,%d1
	movem.l (%sp)+,#252
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
	jge .L678
	neg.l 12(%fp)
	moveq #1,%d0
	move.l %d0,-6(%fp)
.L678:
	clr.b -1(%fp)
	jra .L679
.L682:
	moveq #1,%d0
	and.l 12(%fp),%d0
	jeq .L680
	move.l 8(%fp),%d0
	add.l %d0,-10(%fp)
.L680:
	move.l 8(%fp),%d0
	add.l %d0,%d0
	move.l %d0,8(%fp)
	move.l 12(%fp),%d0
	asr.l #1,%d0
	move.l %d0,12(%fp)
	move.b -1(%fp),%d0
	addq.b #1,%d0
	move.b %d0,-1(%fp)
.L679:
	tst.l 12(%fp)
	jeq .L681
	move.b -1(%fp),%d0
	cmp.b #31,%d0
	jls .L682
.L681:
	tst.l -6(%fp)
	jeq .L683
	move.l -10(%fp),%d0
	neg.l %d0
	jra .L685
.L683:
	move.l -10(%fp),%d0
.L685:
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
	jge .L687
	neg.l 8(%fp)
	tst.l -4(%fp)
	seq %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-4(%fp)
.L687:
	tst.l 12(%fp)
	jge .L688
	neg.l 12(%fp)
	tst.l -4(%fp)
	seq %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-4(%fp)
.L688:
	move.l 12(%fp),%d1
	move.l 8(%fp),%d0
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	move.l %d0,-8(%fp)
	tst.l -4(%fp)
	jeq .L689
	neg.l -8(%fp)
.L689:
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
	jge .L692
	neg.l 8(%fp)
	moveq #1,%d0
	move.l %d0,-4(%fp)
.L692:
	tst.l 12(%fp)
	jge .L693
	neg.l 12(%fp)
.L693:
	move.l 12(%fp),%d1
	move.l 8(%fp),%d0
	pea 1.w
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	move.l %d0,-8(%fp)
	tst.l -4(%fp)
	jeq .L694
	neg.l -8(%fp)
.L694:
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
	jra .L697
.L699:
	move.w -8(%fp),%d0
	lsl.w #1,%d0
	move.w %d0,-8(%fp)
	move.w -2(%fp),%d0
	lsl.w #1,%d0
	move.w %d0,-2(%fp)
.L697:
	move.w -6(%fp),%d0
	cmp.w -8(%fp),%d0
	jls .L700
	tst.w -2(%fp)
	jeq .L700
	move.w -8(%fp),%d0
	jpl .L699
	jra .L700
.L702:
	move.w -8(%fp),%d0
	cmp.w -6(%fp),%d0
	jhi .L701
	move.w -8(%fp),%d0
	sub.w %d0,-6(%fp)
	move.w -2(%fp),%d0
	or.w %d0,-4(%fp)
.L701:
	move.w -2(%fp),%d0
	lsr.w #1,%d0
	move.w %d0,-2(%fp)
	move.w -8(%fp),%d0
	lsr.w #1,%d0
	move.w %d0,-8(%fp)
.L700:
	tst.w -2(%fp)
	jne .L702
	tst.l 16(%fp)
	jeq .L703
	move.w -6(%fp),%d0
	jra .L704
.L703:
	move.w -4(%fp),%d0
.L704:
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
	jra .L706
.L708:
	move.l 12(%fp),%d0
	add.l %d0,%d0
	move.l %d0,12(%fp)
	move.l -4(%fp),%d0
	add.l %d0,%d0
	move.l %d0,-4(%fp)
.L706:
	move.l 12(%fp),%d0
	cmp.l 8(%fp),%d0
	jcc .L709
	tst.l -4(%fp)
	jeq .L709
	move.l 12(%fp),%d0
	jpl .L708
	jra .L709
.L711:
	move.l 8(%fp),%d0
	cmp.l 12(%fp),%d0
	jcs .L710
	move.l 12(%fp),%d0
	sub.l %d0,8(%fp)
	move.l -4(%fp),%d0
	or.l %d0,-8(%fp)
.L710:
	move.l -4(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,-4(%fp)
	move.l 12(%fp),%d0
	lsr.l #1,%d0
	move.l %d0,12(%fp)
.L709:
	tst.l -4(%fp)
	jne .L711
	tst.l 16(%fp)
	jeq .L712
	move.l 8(%fp),%d0
	jra .L713
.L712:
	move.l -8(%fp),%d0
.L713:
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
	jeq .L715
	clr.l -16(%fp)
	move.l -8(%fp),%d1
	move.l 16(%fp),%d0
	sub.l -4(%fp),%d0
	lsl.l %d0,%d1
	move.l %d1,%d0
	move.l %d0,-20(%fp)
	jra .L716
.L715:
	tst.l 16(%fp)
	jne .L717
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L719
.L717:
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
.L716:
	move.l -20(%fp),%d0
	move.l -16(%fp),%d1
.L719:
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
	jeq .L721
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
	jra .L722
.L721:
	tst.l 16(%fp)
	jne .L723
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L725
.L723:
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
.L722:
	move.l -20(%fp),%d0
	move.l -16(%fp),%d1
.L725:
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
	clr.l %d2
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	lsr.l #8,%d0
	move.l %d0,%d1
	clr.l %d0
	clr.l %d4
	and.l %d0,%d4
	move.l %d4,-8(%fp)
	move.l %d1,%d4
	and.l #65280,%d4
	move.l %d4,-4(%fp)
	move.l %d2,%d0
	or.l -8(%fp),%d0
	move.l %d0,-16(%fp)
	move.l %d3,%d1
	or.l -4(%fp),%d1
	move.l %d1,-12(%fp)
	move.l 8(%fp),%d0
	move.l %d0,%d1
	lsl.l #8,%d1
	move.l 12(%fp),%d0
	move.l %d0,%d5
	moveq #24,%d2
	lsr.l %d2,%d5
	or.l %d1,%d5
	move.l 8(%fp),%d0
	move.l %d0,%d4
	moveq #24,%d1
	lsr.l %d1,%d4
	clr.l %d2
	and.l %d4,%d2
	move.l %d2,-24(%fp)
	move.l %d5,%d0
	and.l #16711680,%d0
	move.l %d0,-20(%fp)
	move.l -16(%fp),%d1
	or.l -24(%fp),%d1
	move.l %d1,-32(%fp)
	move.l -12(%fp),%d2
	or.l -20(%fp),%d2
	move.l %d2,-28(%fp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.b %d0,%d1
	lsr.l #8,%d0
	ror.l #8,%d1
	clr.l %d4
	and.l %d0,%d4
	move.l %d4,-40(%fp)
	move.l %d1,%d2
	and.l #-16777216,%d2
	move.l %d2,-36(%fp)
	move.l -32(%fp),%d4
	or.l -40(%fp),%d4
	move.l %d4,-48(%fp)
	move.l -28(%fp),%d0
	or.l -36(%fp),%d0
	move.l %d0,-44(%fp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	moveq #0,%d2
	not.b %d2
	and.l %d0,%d2
	move.l %d2,-56(%fp)
	clr.l %d4
	and.l %d1,%d4
	move.l %d4,-52(%fp)
	move.l -48(%fp),%d0
	or.l -56(%fp),%d0
	move.l %d0,-64(%fp)
	move.l -44(%fp),%d1
	or.l -52(%fp),%d1
	move.l %d1,-60(%fp)
	move.l 12(%fp),%d0
	move.l %d0,%d1
	lsr.l #8,%d1
	move.l 8(%fp),%d0
	move.l %d0,%d6
	moveq #24,%d2
	lsl.l %d2,%d6
	or.l %d1,%d6
	move.l 12(%fp),%d0
	move.l %d0,%d7
	moveq #24,%d4
	lsl.l %d4,%d7
	move.l %d6,%d0
	and.l #65280,%d0
	move.l %d0,-72(%fp)
	clr.l %d1
	and.l %d7,%d1
	move.l %d1,-68(%fp)
	move.l -64(%fp),%d2
	or.l -72(%fp),%d2
	move.l %d2,-80(%fp)
	move.l -60(%fp),%d4
	or.l -68(%fp),%d4
	move.l %d4,-76(%fp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	lsl.l #8,%d1
	move.l %d1,%d0
	clr.l %d1
	move.l %d0,%d2
	and.l #16711680,%d2
	move.l %d2,-88(%fp)
	clr.l %d4
	and.l %d1,%d4
	move.l %d4,-84(%fp)
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
	clr.l %d1
	move.l -96(%fp),%d2
	or.l %d0,%d2
	move.l %d2,-104(%fp)
	move.l -92(%fp),%d4
	or.l %d1,%d4
	move.l %d4,-100(%fp)
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
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l %d0,%d1
	moveq #24,%d2
	lsr.l %d2,%d1
	move.l 8(%fp),%d0
	lsr.l #8,%d0
	and.l #65280,%d0
	or.l %d0,%d1
	move.l 8(%fp),%d0
	lsl.l #8,%d0
	and.l #16711680,%d0
	or.l %d0,%d1
	move.l 8(%fp),%d0
	moveq #24,%d2
	lsl.l %d2,%d0
	or.l %d1,%d0
	move.l (%sp)+,%d2
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
	jhi .L731
	moveq #16,%d0
	jra .L732
.L731:
	clr.l %d0
.L732:
	move.l %d0,-8(%fp)
	moveq #16,%d0
	sub.l -8(%fp),%d0
	move.l -4(%fp),%d1
	lsr.l %d0,%d1
	move.l %d1,-4(%fp)
	move.l -8(%fp),-12(%fp)
	move.l -4(%fp),%d0
	and.l #65280,%d0
	jne .L733
	moveq #8,%d0
	jra .L734
.L733:
	clr.l %d0
.L734:
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
	jne .L735
	moveq #4,%d0
	jra .L736
.L735:
	clr.l %d0
.L736:
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
	jne .L737
	moveq #2,%d0
	jra .L738
.L737:
	clr.l %d0
.L738:
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
	muls.l %d1,%d0
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
	jle .L741
	clr.l %d0
	jra .L746
.L741:
	move.l -8(%fp),%d1
	move.l -16(%fp),%d0
	cmp.l %d1,%d0
	jge .L743
	moveq #2,%d0
	jra .L746
.L743:
	move.l -4(%fp),%d1
	move.l -12(%fp),%d0
	cmp.l %d1,%d0
	jls .L744
	clr.l %d0
	jra .L746
.L744:
	move.l -4(%fp),%d1
	move.l -12(%fp),%d0
	cmp.l %d1,%d0
	jcc .L745
	moveq #2,%d0
	jra .L746
.L745:
	moveq #1,%d0
.L746:
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
	jne .L750
	moveq #16,%d0
	jra .L751
.L750:
	clr.l %d0
.L751:
	move.l %d0,-8(%fp)
	move.l -4(%fp),%d0
	move.l -8(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-4(%fp)
	move.l -8(%fp),-12(%fp)
	moveq #0,%d0
	not.b %d0
	and.l -4(%fp),%d0
	jne .L752
	moveq #8,%d0
	jra .L753
.L752:
	clr.l %d0
.L753:
	move.l %d0,-8(%fp)
	move.l -4(%fp),%d0
	move.l -8(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-4(%fp)
	move.l -8(%fp),%d0
	add.l %d0,-12(%fp)
	moveq #15,%d0
	and.l -4(%fp),%d0
	jne .L754
	moveq #4,%d0
	jra .L755
.L754:
	clr.l %d0
.L755:
	move.l %d0,-8(%fp)
	move.l -4(%fp),%d0
	move.l -8(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-4(%fp)
	move.l -8(%fp),%d0
	add.l %d0,-12(%fp)
	moveq #3,%d0
	and.l -4(%fp),%d0
	jne .L756
	moveq #2,%d0
	jra .L757
.L756:
	clr.l %d0
.L757:
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
	jeq .L760
	clr.l -20(%fp)
	move.l -12(%fp),%d1
	move.l 16(%fp),%d0
	sub.l -4(%fp),%d0
	lsr.l %d0,%d1
	move.l %d1,-16(%fp)
	jra .L761
.L760:
	tst.l 16(%fp)
	jne .L762
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	jra .L764
.L762:
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
.L761:
	move.l -20(%fp),%a0
	move.l -16(%fp),%a1
	move.l %a0,%d0
	move.l %a1,%d1
.L764:
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
	move.l %d2,-(%sp)
	moveq #16,%d0
	move.l %d0,-4(%fp)
	moveq #-1,%d0
	move.l -4(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-8(%fp)
	move.l 8(%fp),%d1
	and.l -8(%fp),%d1
	move.l 12(%fp),%d0
	and.l -8(%fp),%d0
	muls.l %d1,%d0
	move.l %d0,-16(%fp)
	move.l -16(%fp),%d0
	move.l -4(%fp),%d2
	lsr.l %d2,%d0
	move.l %d0,-12(%fp)
	move.l -16(%fp),%d0
	and.l -8(%fp),%d0
	move.l %d0,-16(%fp)
	move.l 8(%fp),%d0
	move.l %d0,%d1
	move.l -4(%fp),%d2
	lsr.l %d2,%d1
	move.l 12(%fp),%d0
	and.l -8(%fp),%d0
	muls.l %d1,%d0
	add.l %d0,-12(%fp)
	move.l -16(%fp),%d1
	move.l -12(%fp),%d0
	and.l -8(%fp),%d0
	move.l -4(%fp),%d2
	lsl.l %d2,%d0
	add.l %d1,%d0
	move.l %d0,-16(%fp)
	move.l -12(%fp),%d0
	move.l -4(%fp),%d1
	lsr.l %d1,%d0
	move.l %d0,-20(%fp)
	move.l -16(%fp),%d0
	move.l -4(%fp),%d2
	lsr.l %d2,%d0
	move.l %d0,-12(%fp)
	move.l -16(%fp),%d0
	and.l -8(%fp),%d0
	move.l %d0,-16(%fp)
	move.l 12(%fp),%d0
	move.l %d0,%d1
	move.l -4(%fp),%d2
	lsr.l %d2,%d1
	move.l 8(%fp),%d0
	and.l -8(%fp),%d0
	muls.l %d1,%d0
	add.l %d0,-12(%fp)
	move.l -16(%fp),%d1
	move.l -12(%fp),%d0
	and.l -8(%fp),%d0
	move.l -4(%fp),%d2
	lsl.l %d2,%d0
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
	move.l %d0,%a0
	move.l 8(%fp),%d0
	move.l %d0,%d1
	move.l -4(%fp),%d2
	lsr.l %d2,%d1
	move.l 12(%fp),%d0
	move.l -4(%fp),%d2
	lsr.l %d2,%d0
	muls.l %d1,%d0
	add.l %a0,%d0
	move.l %d0,-20(%fp)
	move.l -20(%fp),%a0
	move.l -16(%fp),%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	link.w %fp,#-24
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
	move.l %d0,%a0
	move.l -8(%fp),%d0
	move.l %d0,%d1
	move.l -12(%fp),%d0
	move.l %d1,%d2
	muls.l %d0,%d2
	move.l -4(%fp),%d1
	move.l -16(%fp),%d0
	muls.l %d1,%d0
	add.l %d2,%d0
	add.l %a0,%d0
	move.l %d0,-24(%fp)
	move.l -24(%fp),%a0
	move.l -20(%fp),%a1
	move.l %a0,%d0
	move.l %a1,%d1
	move.l -28(%fp),%d2
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
	clr.l %d0
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
	link.w %fp,#-12
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
.L783:
	moveq #1,%d0
	and.l 16(%fp),%d0
	jeq .L780
	fmove.d -8(%fp),%fp0
	fmul.d 8(%fp),%fp0
	fmove.d %fp0,-8(%fp)
.L780:
	move.l 16(%fp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,16(%fp)
	jeq .L788
	fmove.d 8(%fp),%fp0
	fmul.d 8(%fp),%fp0
	fmove.d %fp0,8(%fp)
	jra .L783
.L788:
	nop
	tst.l -12(%fp)
	jeq .L784
	fmovecr #0x32,%fp0
	fdiv.d -8(%fp),%fp0
	jra .L786
.L784:
	fmove.d -8(%fp),%fp0
.L786:
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
.L793:
	moveq #1,%d0
	and.l 12(%fp),%d0
	jeq .L790
	fmove.s -4(%fp),%fp0
	fsglmul.s 8(%fp),%fp0
	fmove.s %fp0,-4(%fp)
.L790:
	move.l 12(%fp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,12(%fp)
	jeq .L798
	fmove.s 8(%fp),%fp0
	fsglmul.s 8(%fp),%fp0
	fmove.s %fp0,8(%fp)
	jra .L793
.L798:
	nop
	tst.l -8(%fp)
	jeq .L794
	fmovecr #0x32,%fp0
	fsgldiv.s -4(%fp),%fp0
	jra .L796
.L794:
	fmove.s -4(%fp),%fp0
.L796:
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
	jls .L800
	clr.l %d0
	jra .L805
.L800:
	move.l -8(%fp),%d1
	move.l -16(%fp),%d0
	cmp.l %d1,%d0
	jcc .L802
	moveq #2,%d0
	jra .L805
.L802:
	move.l -4(%fp),%d1
	move.l -12(%fp),%d0
	cmp.l %d1,%d0
	jls .L803
	clr.l %d0
	jra .L805
.L803:
	move.l -4(%fp),%d1
	move.l -12(%fp),%d0
	cmp.l %d1,%d0
	jcc .L804
	moveq #2,%d0
	jra .L805
.L804:
	moveq #1,%d0
.L805:
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
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
