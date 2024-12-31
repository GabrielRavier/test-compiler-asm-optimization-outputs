#NO_APP
	.file	"mini-libc.c"
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	subq.l #8,%sp
	move.l %d2,-(%sp)
	move.l 16(%sp),8(%sp)
	move.l 20(%sp),4(%sp)
	move.l 4(%sp),%d0
	cmp.l 8(%sp),%d0
	jcc .L2
	move.l 24(%sp),%d2
	add.l %d2,4(%sp)
	move.l 24(%sp),%d0
	add.l %d0,8(%sp)
	jra .L3
.L4:
	subq.l #1,4(%sp)
	subq.l #1,8(%sp)
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	move.l 8(%sp),%a0
	move.b %d0,(%a0)
	subq.l #1,24(%sp)
.L3:
	tst.l 24(%sp)
	jne .L4
	jra .L5
.L2:
	move.l 4(%sp),%d2
	cmp.l 8(%sp),%d2
	jeq .L5
	jra .L6
.L7:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	addq.l #1,%d0
	move.l %d0,4(%sp)
	move.l 8(%sp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,8(%sp)
	move.l %d1,%a0
	move.b (%a0),%d1
	move.l %d0,%a0
	move.b %d1,(%a0)
	subq.l #1,24(%sp)
.L6:
	tst.l 24(%sp)
	jne .L7
.L5:
	move.l 16(%sp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	move.l (%sp)+,%d2
	addq.l #8,%sp
	rts
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.type	memccpy, @function
memccpy:
	subq.l #8,%sp
	move.l 12(%sp),4(%sp)
	move.l 16(%sp),(%sp)
	move.l 20(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,20(%sp)
	jra .L10
.L12:
	subq.l #1,24(%sp)
	addq.l #1,(%sp)
	addq.l #1,4(%sp)
.L10:
	tst.l 24(%sp)
	jeq .L11
	move.l (%sp),%a0
	move.b (%a0),%d0
	move.l 4(%sp),%a0
	move.b %d0,(%a0)
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 20(%sp),%d0
	jne .L12
.L11:
	tst.l 24(%sp)
	jeq .L13
	move.l 4(%sp),%d0
	addq.l #1,%d0
	jra .L14
.L13:
	moveq #0,%d0
.L14:
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #8,%sp
	rts
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	move.l 12(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,12(%sp)
	jra .L16
.L18:
	addq.l #1,(%sp)
	subq.l #1,16(%sp)
.L16:
	tst.l 16(%sp)
	jeq .L17
	move.l (%sp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 12(%sp),%d0
	jne .L18
.L17:
	tst.l 16(%sp)
	jeq .L19
	move.l (%sp),%d0
	jra .L21
.L19:
	moveq #0,%d0
.L21:
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #4,%sp
	rts
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	subq.l #8,%sp
	move.l 12(%sp),4(%sp)
	move.l 16(%sp),(%sp)
	jra .L23
.L25:
	subq.l #1,20(%sp)
	addq.l #1,4(%sp)
	addq.l #1,(%sp)
.L23:
	tst.l 20(%sp)
	jeq .L24
	move.l 4(%sp),%a0
	move.b (%a0),%d1
	move.l (%sp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jeq .L25
.L24:
	tst.l 20(%sp)
	jeq .L26
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l (%sp),%a0
	move.b (%a0),%d1
	move.b %d1,%d1
	and.l #255,%d1
	sub.l %d1,%d0
	jra .L28
.L26:
	moveq #0,%d0
.L28:
	addq.l #8,%sp
	rts
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	subq.l #8,%sp
	move.l %d2,-(%sp)
	move.l 16(%sp),8(%sp)
	move.l 20(%sp),4(%sp)
	jra .L30
.L31:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	addq.l #1,%d0
	move.l %d0,4(%sp)
	move.l 8(%sp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,8(%sp)
	move.l %d1,%a0
	move.b (%a0),%d1
	move.l %d0,%a0
	move.b %d1,(%a0)
	subq.l #1,24(%sp)
.L30:
	tst.l 24(%sp)
	jne .L31
	move.l 16(%sp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	move.l (%sp)+,%d2
	addq.l #8,%sp
	rts
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.type	memrchr, @function
memrchr:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	move.l 12(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,12(%sp)
	jra .L34
.L36:
	move.l (%sp),%a0
	add.l 16(%sp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 12(%sp),%d0
	jne .L34
	move.l (%sp),%d0
	add.l 16(%sp),%d0
	jra .L35
.L34:
	move.l 16(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%sp)
	tst.l %d0
	jne .L36
	moveq #0,%d0
.L35:
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #4,%sp
	rts
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	jra .L38
.L39:
	move.l 12(%sp),%d0
	move.l (%sp),%a0
	move.b %d0,(%a0)
	subq.l #1,16(%sp)
	addq.l #1,(%sp)
.L38:
	tst.l 16(%sp)
	jne .L39
	move.l 8(%sp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #4,%sp
	rts
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
	jra .L42
.L43:
	addq.l #1,8(%sp)
	addq.l #1,4(%sp)
.L42:
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	move.l 4(%sp),%a0
	move.b %d0,(%a0)
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	jne .L43
	move.l 4(%sp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	rts
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
	move.l 8(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,8(%sp)
	jra .L46
.L48:
	addq.l #1,4(%sp)
.L46:
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	jeq .L47
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 8(%sp),%d0
	jne .L48
.L47:
	move.l 4(%sp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	rts
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	move.l 4(%sp),%a0
.L53:
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l 8(%sp),%a1
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
	rts
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	jra .L55
.L57:
	addq.l #1,4(%sp)
	addq.l #1,8(%sp)
.L55:
	move.l 4(%sp),%a0
	move.b (%a0),%d1
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L56
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	jne .L57
.L56:
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	moveq #0,%d1
	move.b %d0,%d1
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	sub.l %d0,%d1
	move.l %d1,%d0
	rts
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	jra .L60
.L61:
	addq.l #1,8(%sp)
.L60:
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	jne .L61
	move.l 8(%sp),%d0
	sub.l (%sp),%d0
	addq.l #4,%sp
	rts
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	subq.l #8,%sp
	move.l 12(%sp),4(%sp)
	move.l 16(%sp),(%sp)
	move.l 20(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,20(%sp)
	tst.l %d0
	jne .L66
	moveq #0,%d0
	jra .L65
.L68:
	addq.l #1,4(%sp)
	addq.l #1,(%sp)
	subq.l #1,20(%sp)
.L66:
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	jeq .L67
	move.l (%sp),%a0
	move.b (%a0),%d0
	jeq .L67
	tst.l 20(%sp)
	jeq .L67
	move.l 4(%sp),%a0
	move.b (%a0),%d1
	move.l (%sp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jeq .L68
.L67:
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l (%sp),%a0
	move.b (%a0),%d1
	move.b %d1,%d1
	and.l #255,%d1
	sub.l %d1,%d0
.L65:
	addq.l #8,%sp
	rts
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	subq.l #8,%sp
	move.l 12(%sp),4(%sp)
	move.l 16(%sp),(%sp)
	jra .L70
.L71:
	move.l 4(%sp),%a0
	addq.l #1,%a0
	move.b (%a0),%d0
	move.l (%sp),%a0
	move.b %d0,(%a0)
	move.l (%sp),%a0
	addq.l #1,%a0
	move.l 4(%sp),%a1
	move.b (%a1),%d0
	move.b %d0,(%a0)
	addq.l #2,(%sp)
	addq.l #2,4(%sp)
	subq.l #2,20(%sp)
.L70:
	moveq #1,%d0
	cmp.l 20(%sp),%d0
	jlt .L71
	nop
	nop
	addq.l #8,%sp
	rts
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.type	isalpha, @function
isalpha:
	move.l 4(%sp),%d0
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
	rts
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.type	isascii, @function
isascii:
	move.l 4(%sp),%d0
	cmp.l #128,%d0
	scs %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	rts
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.type	isblank, @function
isblank:
	moveq #32,%d0
	cmp.l 4(%sp),%d0
	jeq .L77
	moveq #9,%d0
	cmp.l 4(%sp),%d0
	jne .L78
.L77:
	moveq #1,%d0
	jra .L80
.L78:
	moveq #0,%d0
.L80:
	rts
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L82
	moveq #127,%d0
	cmp.l 4(%sp),%d0
	jne .L83
.L82:
	moveq #1,%d0
	jra .L85
.L83:
	moveq #0,%d0
.L85:
	rts
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.type	isdigit, @function
isdigit:
	move.l 4(%sp),%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	rts
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.type	isgraph, @function
isgraph:
	move.l 4(%sp),%a0
	lea (-33,%a0),%a0
	moveq #93,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	rts
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.type	islower, @function
islower:
	move.l 4(%sp),%a0
	lea (-97,%a0),%a0
	moveq #25,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	rts
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.type	isprint, @function
isprint:
	move.l 4(%sp),%a0
	lea (-32,%a0),%a0
	moveq #94,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	rts
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.type	isspace, @function
isspace:
	moveq #32,%d0
	cmp.l 4(%sp),%d0
	jeq .L95
	move.l 4(%sp),%a0
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
	rts
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.type	isupper, @function
isupper:
	move.l 4(%sp),%a0
	lea (-65,%a0),%a0
	moveq #25,%d1
	cmp.l %a0,%d1
	scc %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	rts
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	moveq #31,%d0
	cmp.l 4(%sp),%d0
	jcc .L102
	moveq #-127,%d0
	add.l 4(%sp),%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	jcc .L102
	move.l 4(%sp),%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L102
	move.l 4(%sp),%d0
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
	move.b %d0,%d0
	and.l #255,%d0
	rts
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.type	iswprint, @function
iswprint:
	cmp.l #254,4(%sp)
	jhi .L109
	move.l 4(%sp),%d0
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
	cmp.l #8231,4(%sp)
	jls .L111
	move.l 4(%sp),%d0
	add.l #-8234,%d0
	cmp.l #47061,%d0
	jls .L111
	move.l 4(%sp),%d0
	add.l #-57344,%d0
	cmp.l #8184,%d0
	jhi .L112
.L111:
	moveq #1,%d0
	jra .L110
.L112:
	move.l 4(%sp),%d0
	add.l #-65532,%d0
	cmp.l #1048579,%d0
	jhi .L113
	move.l 4(%sp),%d0
	and.l #65534,%d0
	cmp.l #65534,%d0
	jne .L114
.L113:
	moveq #0,%d0
	jra .L110
.L114:
	moveq #1,%d0
.L110:
	rts
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	moveq #-48,%d0
	add.l 4(%sp),%d0
	moveq #9,%d1
	cmp.l %d0,%d1
	jcc .L116
	moveq #32,%d0
	or.l 4(%sp),%d0
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
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L134
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	jra .L125
.L134:
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L135
	move.l 20(%sp),%d1
	move.l 24(%sp),%d0
	jra .L125
.L135:
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L136
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d1
	jra .L125
.L136:
	moveq #0,%d1
	moveq #0,%d0
.L125:
	move.l %d1,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
	move.l 4(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L149
	move.l 4(%sp),%d0
	jra .L140
.L149:
	move.l 8(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L150
	move.l 8(%sp),%d0
	jra .L140
.L150:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L151
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	jra .L140
.L151:
	moveq #0,%d0
.L140:
	rts
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L167
	move.l 20(%sp),%d1
	move.l 24(%sp),%d0
	jra .L155
.L167:
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L168
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	jra .L155
.L168:
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 20(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L158
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L159
	move.l 20(%sp),%d1
	move.l 24(%sp),%d0
	jra .L155
.L159:
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	jra .L155
.L158:
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L169
	move.l 20(%sp),%d1
	move.l 24(%sp),%d0
	jra .L155
.L169:
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L155:
	move.l %d1,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	move.l 4(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L185
	move.l 8(%sp),%d0
	jra .L173
.L185:
	move.l 8(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L186
	move.l 4(%sp),%d0
	jra .L173
.L186:
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 8(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L176
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L177
	move.l 8(%sp),%d0
	jra .L173
.L177:
	move.l 4(%sp),%d0
	jra .L173
.L176:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L187
	move.l 8(%sp),%d0
	jra .L173
.L187:
	move.l 4(%sp),%d0
.L173:
	rts
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l %a1,%a2
	move.l 20(%sp),-(%sp)
	move.l 20(%sp),-(%sp)
	move.l 20(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L203
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L191
.L203:
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L204
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L191
.L204:
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 24(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L194
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L195
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
	jra .L196
.L195:
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
.L196:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L191
.L194:
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L205
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
	jra .L199
.L205:
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
.L199:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L191:
	move.l %a2,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L221
	move.l 20(%sp),%d1
	move.l 24(%sp),%d0
	jra .L209
.L221:
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L222
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	jra .L209
.L222:
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 20(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L212
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L213
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	jra .L209
.L213:
	move.l 20(%sp),%d1
	move.l 24(%sp),%d0
	jra .L209
.L212:
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L223
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	jra .L209
.L223:
	move.l 20(%sp),%d1
	move.l 24(%sp),%d0
.L209:
	move.l %d1,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	move.l 4(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L239
	move.l 8(%sp),%d0
	jra .L227
.L239:
	move.l 8(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L240
	move.l 4(%sp),%d0
	jra .L227
.L240:
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 8(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L230
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L231
	move.l 4(%sp),%d0
	jra .L227
.L231:
	move.l 8(%sp),%d0
	jra .L227
.L230:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L241
	move.l 4(%sp),%d0
	jra .L227
.L241:
	move.l 8(%sp),%d0
.L227:
	rts
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l %a1,%a2
	move.l 20(%sp),-(%sp)
	move.l 20(%sp),-(%sp)
	move.l 20(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L257
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L245
.L257:
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L258
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L245
.L258:
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 24(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L248
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L249
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
	jra .L250
.L249:
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
.L250:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L245
.L248:
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L259
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
	jra .L253
.L259:
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
.L253:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L245:
	move.l %a2,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
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
	subq.l #8,%sp
	move.l 12(%sp),(%sp)
	move.l #s.0,4(%sp)
	jra .L261
.L262:
	moveq #63,%d0
	and.l (%sp),%d0
	lea digits,%a0
	move.b (%a0,%d0.l),%d0
	move.l 4(%sp),%a0
	move.b %d0,(%a0)
	addq.l #1,4(%sp)
	move.l (%sp),%d0
	lsr.l #6,%d0
	move.l %d0,(%sp)
.L261:
	tst.l (%sp)
	jne .L262
	move.l 4(%sp),%a0
	clr.b (%a0)
	move.l #s.0,%d0
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #8,%sp
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
	moveq #0,%d1
	move.l %d1,seed
	move.l %d0,seed+4
	nop
	rts
	.size	srand, .-srand
	.align	2
	.globl	rand
	.type	rand, @function
rand:
	move.l %d3,-(%sp)
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
	move.l %d1,%d0
	move.l %a0,%d2
	move.l %d0,%d3
	clr.l %d0
	moveq #1,%d1
	add.l %d3,%d1
	addx.l %d2,%d0
	move.l %d0,seed
	move.l %d1,seed+4
	move.l seed,%d0
	lsr.l #1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	rand, .-rand
	.align	2
	.globl	insque
	.type	insque, @function
insque:
	subq.l #8,%sp
	move.l 12(%sp),4(%sp)
	move.l 16(%sp),(%sp)
	jne .L268
	move.l 4(%sp),%a0
	clr.l 4(%a0)
	move.l 4(%sp),%a0
	move.l 4(%a0),%d0
	move.l 4(%sp),%a0
	move.l %d0,(%a0)
	jra .L267
.L268:
	move.l (%sp),%a0
	move.l (%a0),%d0
	move.l 4(%sp),%a0
	move.l %d0,(%a0)
	move.l 4(%sp),%a0
	move.l (%sp),4(%a0)
	move.l (%sp),%a0
	move.l 4(%sp),(%a0)
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	jeq .L267
	move.l 4(%sp),%a0
	move.l (%a0),%a0
	move.l 4(%sp),4(%a0)
.L267:
	addq.l #8,%sp
	rts
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	move.l (%sp),%a0
	move.l (%a0),%d0
	jeq .L271
	move.l (%sp),%a0
	move.l (%a0),%a0
	move.l (%sp),%a1
	move.l 4(%a1),%d0
	move.l %d0,4(%a0)
.L271:
	move.l (%sp),%a0
	move.l 4(%a0),%d0
	jeq .L273
	move.l (%sp),%a0
	move.l 4(%a0),%a0
	move.l (%sp),%a1
	move.l (%a1),%d0
	move.l %d0,(%a0)
.L273:
	nop
	addq.l #4,%sp
	rts
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
	lea (-16,%sp),%sp
	move.l %d2,-(%sp)
	move.l 36(%sp),%d2
	move.l %d2,%d0
	subq.l #1,%d0
	move.l %d0,12(%sp)
	move.l 28(%sp),8(%sp)
	move.l 32(%sp),%a0
	move.l (%a0),4(%sp)
	clr.l 16(%sp)
	jra .L275
.L278:
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 8(%sp),%d0
	move.l %d0,-(%sp)
	move.l 28(%sp),-(%sp)
	move.l 48(%sp),%a0
	jsr (%a0)
	addq.l #8,%sp
	tst.l %d0
	jne .L276
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 8(%sp),%d0
	jra .L277
.L276:
	addq.l #1,16(%sp)
.L275:
	move.l 16(%sp),%d0
	cmp.l 4(%sp),%d0
	jcs .L278
	move.l 4(%sp),%d0
	addq.l #1,%d0
	move.l 32(%sp),%a0
	move.l %d0,(%a0)
	move.l 4(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 8(%sp),%d0
	move.l 36(%sp),-(%sp)
	move.l 28(%sp),-(%sp)
	move.l %d0,-(%sp)
	jsr memcpy
	move.l %a0,%d0
	lea (12,%sp),%sp
.L277:
	move.l %d0,%d1
	move.l %d1,%a0
	move.l (%sp)+,%d2
	lea (16,%sp),%sp
	rts
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.type	lfind, @function
lfind:
	lea (-16,%sp),%sp
	move.l %d2,-(%sp)
	move.l 36(%sp),%d2
	move.l %d2,%d0
	subq.l #1,%d0
	move.l %d0,12(%sp)
	move.l 28(%sp),8(%sp)
	move.l 32(%sp),%a0
	move.l (%a0),4(%sp)
	clr.l 16(%sp)
	jra .L280
.L283:
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 8(%sp),%d0
	move.l %d0,-(%sp)
	move.l 28(%sp),-(%sp)
	move.l 48(%sp),%a0
	jsr (%a0)
	addq.l #8,%sp
	tst.l %d0
	jne .L281
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 8(%sp),%d0
	jra .L282
.L281:
	addq.l #1,16(%sp)
.L280:
	move.l 16(%sp),%d0
	cmp.l 4(%sp),%d0
	jcs .L283
	moveq #0,%d0
.L282:
	move.l %d0,%d1
	move.l %d1,%a0
	move.l (%sp)+,%d2
	lea (16,%sp),%sp
	rts
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d0
	jpl .L285
	neg.l %d0
.L285:
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	subq.l #8,%sp
	move.l %d2,-(%sp)
	clr.l 8(%sp)
	clr.l 4(%sp)
	jra .L288
.L289:
	addq.l #1,16(%sp)
.L288:
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L289
	move.l 16(%sp),%a0
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
	move.l %d0,4(%sp)
.L290:
	addq.l #1,16(%sp)
	jra .L292
.L293:
	move.l 8(%sp),%d1
	move.l %d1,%d0
	add.l %d0,%d0
	add.l %d0,%d0
	add.l %d1,%d0
	add.l %d0,%d0
	move.l %d0,%d1
	move.l 16(%sp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,16(%sp)
	move.l %d0,%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	move.l %d1,%d0
	sub.l %a0,%d0
	move.l %d0,8(%sp)
.L292:
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcc .L293
	tst.l 4(%sp)
	jne .L294
	move.l 8(%sp),%d0
	neg.l %d0
	jra .L296
.L294:
	move.l 8(%sp),%d0
.L296:
	move.l (%sp)+,%d2
	addq.l #8,%sp
	rts
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	subq.l #8,%sp
	move.l %d2,-(%sp)
	clr.l 8(%sp)
	clr.l 4(%sp)
	jra .L298
.L299:
	addq.l #1,16(%sp)
.L298:
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L299
	move.l 16(%sp),%a0
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
	move.l %d0,4(%sp)
.L300:
	addq.l #1,16(%sp)
	jra .L302
.L303:
	move.l 8(%sp),%d1
	move.l %d1,%d0
	add.l %d0,%d0
	add.l %d0,%d0
	add.l %d1,%d0
	add.l %d0,%d0
	move.l %d0,%d1
	move.l 16(%sp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,16(%sp)
	move.l %d0,%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	move.l %d1,%d0
	sub.l %a0,%d0
	move.l %d0,8(%sp)
.L302:
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcc .L303
	tst.l 4(%sp)
	jne .L304
	move.l 8(%sp),%d0
	neg.l %d0
	jra .L306
.L304:
	move.l 8(%sp),%d0
.L306:
	move.l (%sp)+,%d2
	addq.l #8,%sp
	rts
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	lea (-12,%sp),%sp
	movem.l #15360,-(%sp)
	clr.l 20(%sp)
	clr.l 24(%sp)
	clr.l 16(%sp)
	jra .L308
.L309:
	addq.l #1,32(%sp)
.L308:
	move.l 32(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L309
	move.l 32(%sp),%a0
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
	move.l %d2,16(%sp)
.L310:
	addq.l #1,32(%sp)
	jra .L312
.L313:
	move.l 20(%sp),%a0
	move.l 24(%sp),%a1
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
	move.l 32(%sp),%d0
	move.l %d0,%d5
	addq.l #1,%d5
	move.l %d5,32(%sp)
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
	move.l %d4,20(%sp)
	move.l %d5,24(%sp)
.L312:
	move.l 32(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d5
	cmp.l %a0,%d5
	jcc .L313
	tst.l 16(%sp)
	jne .L314
	move.l 20(%sp),%d0
	move.l 24(%sp),%d1
	neg.l %d1
	negx.l %d0
	jra .L316
.L314:
	move.l 20(%sp),%d0
	move.l 24(%sp),%d1
.L316:
	move.l %d0,%a0
	move.l %d1,%d1
	move.l %a0,%d0
	movem.l (%sp)+,#60
	lea (12,%sp),%sp
	rts
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
	subq.l #8,%sp
	jra .L318
.L323:
	move.l 20(%sp),%d0
	lsr.l #1,%d0
	move.l 24(%sp),-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l 16(%sp),%d1
	add.l %d0,%d1
	move.l %d1,4(%sp)
	move.l 4(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 36(%sp),%a0
	jsr (%a0)
	move.l %d0,8(%sp)
	addq.l #8,%sp
	tst.l (%sp)
	jge .L319
	move.l 20(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,20(%sp)
	jra .L318
.L319:
	tst.l (%sp)
	jle .L321
	move.l 4(%sp),%d0
	add.l 24(%sp),%d0
	move.l %d0,16(%sp)
	move.l 20(%sp),%d0
	move.l %d0,%d1
	lsr.l #1,%d1
	move.l 20(%sp),%d0
	sub.l %d1,%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,20(%sp)
	jra .L318
.L321:
	move.l 4(%sp),%d0
	jra .L322
.L318:
	tst.l 20(%sp)
	jne .L323
	moveq #0,%d0
.L322:
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #8,%sp
	rts
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	lea (-16,%sp),%sp
	move.l 24(%sp),12(%sp)
	move.l 28(%sp),8(%sp)
	jra .L325
.L329:
	move.l 8(%sp),%d0
	asr.l #1,%d0
	move.l 32(%sp),-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l 12(%sp),%d1
	add.l %d0,%d1
	move.l %d1,4(%sp)
	move.l 40(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	move.l 28(%sp),-(%sp)
	move.l 48(%sp),%a0
	jsr (%a0)
	move.l %d0,12(%sp)
	lea (12,%sp),%sp
	tst.l (%sp)
	jne .L326
	move.l 4(%sp),%d0
	jra .L327
.L326:
	tst.l (%sp)
	jle .L328
	move.l 4(%sp),%d0
	add.l 32(%sp),%d0
	move.l %d0,12(%sp)
	subq.l #1,8(%sp)
.L328:
	move.l 8(%sp),%d0
	asr.l #1,%d0
	move.l %d0,8(%sp)
.L325:
	tst.l 8(%sp)
	jne .L329
	moveq #0,%d0
.L327:
	move.l %d0,%d1
	move.l %d1,%a0
	lea (16,%sp),%sp
	rts
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
	move.l %d2,-(%sp)
	move.l 12(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __divsi3
	addq.l #8,%sp
	move.l %d0,%d2
	move.l 8(%sp),%d0
	move.l 12(%sp),-(%sp)
	move.l %d0,-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	move.l %d2,%d1
	move.l %d1,%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	tst.l %d0
	jge .L333
	neg.l %d1
	negx.l %d0
.L333:
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %d0,%d1
	move.l %a0,%d0
	rts
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	lea (-16,%sp),%sp
	movem.l #12320,-(%sp)
	move.l %a1,%a2
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	jsr __divdi3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d3
	move.l %d0,%d2
	move.l 32(%sp),%d0
	move.l 36(%sp),%d1
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d1
	move.l %d3,(%a2)
	move.l %d2,4(%a2)
	move.l %d1,8(%a2)
	move.l %d0,12(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#1036
	lea (16,%sp),%sp
	rts
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.type	labs, @function
labs:
	move.l 4(%sp),%d0
	jpl .L338
	neg.l %d0
.L338:
	rts
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.type	ldiv, @function
ldiv:
	move.l %d2,-(%sp)
	move.l 12(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __divsi3
	addq.l #8,%sp
	move.l %d0,%d2
	move.l 8(%sp),%d0
	move.l 12(%sp),-(%sp)
	move.l %d0,-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	move.l %d2,%d1
	move.l %d1,%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.type	llabs, @function
llabs:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	tst.l %d0
	jge .L343
	neg.l %d1
	negx.l %d0
.L343:
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %d0,%d1
	move.l %a0,%d0
	rts
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.type	lldiv, @function
lldiv:
	lea (-16,%sp),%sp
	movem.l #12320,-(%sp)
	move.l %a1,%a2
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	jsr __divdi3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d3
	move.l %d0,%d2
	move.l 32(%sp),%d0
	move.l 36(%sp),%d1
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d1
	move.l %d3,(%a2)
	move.l %d2,4(%a2)
	move.l %d1,8(%a2)
	move.l %d0,12(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#1036
	lea (16,%sp),%sp
	rts
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.type	wcschr, @function
wcschr:
	jra .L348
.L350:
	addq.l #4,4(%sp)
.L348:
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	jeq .L349
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	cmp.l 8(%sp),%d0
	jne .L350
.L349:
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	jeq .L351
	move.l 4(%sp),%d0
	jra .L353
.L351:
	moveq #0,%d0
.L353:
	move.l %d0,%d1
	move.l %d1,%a0
	rts
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
	jra .L355
.L357:
	addq.l #4,4(%sp)
	addq.l #4,8(%sp)
.L355:
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jne .L356
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	jeq .L356
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	jne .L357
.L356:
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L358
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L360
.L358:
	moveq #-1,%d0
.L360:
	rts
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	nop
.L362:
	move.l 12(%sp),%d0
	move.l %d0,%d1
	addq.l #4,%d1
	move.l %d1,12(%sp)
	move.l 8(%sp),%a0
	lea (4,%a0),%a1
	move.l %a1,8(%sp)
	move.l %d0,%a1
	move.l (%a1),%d0
	move.l %d0,(%a0)
	move.l (%a0),%d0
	jne .L362
	move.l (%sp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #4,%sp
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	jra .L365
.L366:
	addq.l #4,8(%sp)
.L365:
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	jne .L366
	move.l 8(%sp),%d0
	sub.l (%sp),%d0
	asr.l #2,%d0
	addq.l #4,%sp
	rts
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	jra .L369
.L371:
	subq.l #1,12(%sp)
	addq.l #4,4(%sp)
	addq.l #4,8(%sp)
.L369:
	tst.l 12(%sp)
	jeq .L370
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jne .L370
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	jeq .L370
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	jne .L371
.L370:
	tst.l 12(%sp)
	jeq .L372
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L373
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L376
.L373:
	moveq #-1,%d0
	jra .L376
.L372:
	moveq #0,%d0
.L376:
	rts
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	jra .L378
.L380:
	subq.l #1,12(%sp)
	addq.l #4,4(%sp)
.L378:
	tst.l 12(%sp)
	jeq .L379
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	cmp.l 8(%sp),%d0
	jne .L380
.L379:
	tst.l 12(%sp)
	jeq .L381
	move.l 4(%sp),%d0
	jra .L383
.L381:
	moveq #0,%d0
.L383:
	move.l %d0,%d1
	move.l %d1,%a0
	rts
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	jra .L385
.L387:
	subq.l #1,12(%sp)
	addq.l #4,4(%sp)
	addq.l #4,8(%sp)
.L385:
	tst.l 12(%sp)
	jeq .L386
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jeq .L387
.L386:
	tst.l 12(%sp)
	jeq .L388
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L389
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L392
.L389:
	moveq #-1,%d0
	jra .L392
.L388:
	moveq #0,%d0
.L392:
	rts
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	subq.l #4,%sp
	move.l %d2,-(%sp)
	move.l 12(%sp),4(%sp)
	jra .L394
.L395:
	move.l 16(%sp),%d1
	move.l %d1,%d0
	addq.l #4,%d0
	move.l %d0,16(%sp)
	move.l 12(%sp),%d0
	move.l %d0,%d2
	addq.l #4,%d2
	move.l %d2,12(%sp)
	move.l %d1,%a0
	move.l (%a0),%d1
	move.l %d0,%a0
	move.l %d1,(%a0)
.L394:
	move.l 20(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,20(%sp)
	tst.l %d0
	jne .L395
	move.l 4(%sp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	move.l (%sp)+,%d2
	addq.l #4,%sp
	rts
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
	subq.l #4,%sp
	move.l %d2,-(%sp)
	move.l 12(%sp),4(%sp)
	move.l 12(%sp),%d0
	cmp.l 16(%sp),%d0
	jne .L398
	move.l 12(%sp),%d0
	jra .L399
.L398:
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	sub.l %d0,%d1
	move.l 20(%sp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	cmp.l %d1,%d0
	jls .L404
	jra .L401
.L402:
	move.l 20(%sp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	move.l 16(%sp),%a1
	add.l %d0,%a1
	move.l 20(%sp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	move.l 12(%sp),%a0
	add.l %d0,%a0
	move.l (%a1),%d0
	move.l %d0,(%a0)
.L401:
	move.l 20(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,20(%sp)
	tst.l %d0
	jne .L402
	jra .L403
.L405:
	move.l 16(%sp),%d1
	move.l %d1,%d2
	addq.l #4,%d2
	move.l %d2,16(%sp)
	move.l 12(%sp),%d0
	move.l %d0,%d2
	addq.l #4,%d2
	move.l %d2,12(%sp)
	move.l %d1,%a0
	move.l (%a0),%d1
	move.l %d0,%a0
	move.l %d1,(%a0)
.L404:
	move.l 20(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,20(%sp)
	tst.l %d0
	jne .L405
.L403:
	move.l 4(%sp),%d0
.L399:
	move.l %d0,%d1
	move.l %d1,%a0
	move.l (%sp)+,%d2
	addq.l #4,%sp
	rts
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	jra .L407
.L408:
	move.l 8(%sp),%d0
	move.l %d0,%d1
	addq.l #4,%d1
	move.l %d1,8(%sp)
	move.l %d0,%a0
	move.l 12(%sp),(%a0)
.L407:
	move.l 16(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%sp)
	tst.l %d0
	jne .L408
	move.l (%sp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #4,%sp
	rts
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
	subq.l #8,%sp
	move.l %d2,-(%sp)
	move.l 16(%sp),8(%sp)
	move.l 20(%sp),4(%sp)
	move.l 8(%sp),%d0
	cmp.l 4(%sp),%d0
	jcc .L411
	move.l 24(%sp),%d2
	add.l %d2,8(%sp)
	move.l 24(%sp),%d0
	add.l %d0,4(%sp)
	jra .L412
.L413:
	subq.l #1,8(%sp)
	subq.l #1,4(%sp)
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	move.l 4(%sp),%a0
	move.b %d0,(%a0)
	subq.l #1,24(%sp)
.L412:
	tst.l 24(%sp)
	jne .L413
	jra .L417
.L411:
	move.l 8(%sp),%d2
	cmp.l 4(%sp),%d2
	jeq .L417
	jra .L415
.L416:
	move.l 8(%sp),%d1
	move.l %d1,%d0
	addq.l #1,%d0
	move.l %d0,8(%sp)
	move.l 4(%sp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,4(%sp)
	move.l %d1,%a0
	move.b (%a0),%d1
	move.l %d0,%a0
	move.b %d1,(%a0)
	subq.l #1,24(%sp)
.L415:
	tst.l 24(%sp)
	jne .L416
.L417:
	nop
	move.l (%sp)+,%d2
	addq.l #8,%sp
	rts
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.type	rotl64, @function
rotl64:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	moveq #-32,%d3
	add.l 32(%sp),%d3
	jmi .L419
	move.l %d1,%d2
	lsl.l %d3,%d2
	moveq #0,%d4
	jra .L420
.L419:
	move.l %d1,%d3
	lsr.l #1,%d3
	moveq #31,%d2
	sub.l 32(%sp),%d2
	lsr.l %d2,%d3
	move.l %d0,%d2
	move.l 32(%sp),%d4
	lsl.l %d4,%d2
	or.l %d3,%d2
	move.l %d1,%d4
	move.l 32(%sp),%d5
	lsl.l %d5,%d4
.L420:
	move.l 32(%sp),%d3
	neg.l %d3
	moveq #63,%d6
	and.l %d6,%d3
	move.w #-32,%a0
	add.l %d3,%a0
	cmp.w #0,%a0
	jlt .L421
	move.l %d0,%d1
	move.l %a0,%d3
	lsr.l %d3,%d1
	moveq #0,%d0
	jra .L422
.L421:
	move.l %d0,%d5
	add.l %d5,%d5
	move.l 32(%sp),%d3
	neg.l %d3
	moveq #63,%d6
	and.l %d6,%d3
	moveq #31,%d6
	sub.l %d3,%d6
	lsl.l %d6,%d5
	move.l 32(%sp),%d3
	neg.l %d3
	moveq #63,%d6
	and.l %d6,%d3
	lsr.l %d3,%d1
	or.l %d5,%d1
	move.l 32(%sp),%d3
	neg.l %d3
	moveq #63,%d5
	and.l %d5,%d3
	lsr.l %d3,%d0
.L422:
	or.l %d2,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%d1
	move.l 28(%sp),%d0
	moveq #-32,%d3
	add.l 32(%sp),%d3
	jmi .L425
	move.l %d1,%d2
	lsr.l %d3,%d2
	moveq #0,%d4
	jra .L426
.L425:
	move.l %d1,%d3
	add.l %d3,%d3
	moveq #31,%d2
	sub.l 32(%sp),%d2
	lsl.l %d2,%d3
	move.l %d0,%d2
	move.l 32(%sp),%d4
	lsr.l %d4,%d2
	or.l %d3,%d2
	move.l %d1,%d4
	move.l 32(%sp),%d5
	lsr.l %d5,%d4
.L426:
	move.l 32(%sp),%d3
	neg.l %d3
	moveq #63,%d6
	and.l %d6,%d3
	move.w #-32,%a0
	add.l %d3,%a0
	cmp.w #0,%a0
	jlt .L427
	move.l %d0,%d1
	move.l %a0,%d3
	lsl.l %d3,%d1
	moveq #0,%d0
	jra .L428
.L427:
	move.l %d0,%d5
	lsr.l #1,%d5
	move.l 32(%sp),%d3
	neg.l %d3
	moveq #63,%d6
	and.l %d6,%d3
	moveq #31,%d6
	sub.l %d3,%d6
	lsr.l %d6,%d5
	move.l 32(%sp),%d3
	neg.l %d3
	moveq #63,%d6
	and.l %d6,%d3
	lsl.l %d3,%d1
	or.l %d5,%d1
	move.l 32(%sp),%d3
	neg.l %d3
	moveq #63,%d5
	and.l %d5,%d3
	lsl.l %d3,%d0
.L428:
	or.l %d4,%d1
	or.l %d2,%d0
	move.l %d1,%a0
	move.l %d0,%d1
	move.l %a0,%d0
	movem.l (%sp)+,#124
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
	subq.l #4,%sp
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.w %d0,%d0
	move.w %d0,6(%sp)
	moveq #0,%d0
	move.w 6(%sp),%d0
	move.l 16(%sp),%d1
	lsl.l %d1,%d0
	move.l %d0,%d2
	moveq #0,%d1
	move.w 6(%sp),%d1
	moveq #16,%d0
	sub.l 16(%sp),%d0
	lsr.l %d0,%d1
	move.l %d1,%d0
	or.w %d2,%d0
	move.l (%sp)+,%d2
	addq.l #4,%sp
	rts
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.type	rotr16, @function
rotr16:
	subq.l #4,%sp
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.w %d0,%d0
	move.w %d0,6(%sp)
	moveq #0,%d0
	move.w 6(%sp),%d0
	move.l 16(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,%d2
	moveq #0,%d1
	move.w 6(%sp),%d1
	moveq #16,%d0
	sub.l 16(%sp),%d0
	lsl.l %d0,%d1
	move.l %d1,%d0
	or.w %d2,%d0
	move.l (%sp)+,%d2
	addq.l #4,%sp
	rts
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.type	rotl8, @function
rotl8:
	subq.l #4,%sp
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.b %d0,%d0
	move.b %d0,6(%sp)
	moveq #0,%d0
	move.b 6(%sp),%d0
	move.l 16(%sp),%d1
	lsl.l %d1,%d0
	move.l %d0,%d2
	moveq #0,%d1
	move.b 6(%sp),%d1
	moveq #8,%d0
	sub.l 16(%sp),%d0
	lsr.l %d0,%d1
	move.l %d1,%d0
	or.b %d2,%d0
	move.l (%sp)+,%d2
	addq.l #4,%sp
	rts
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.type	rotr8, @function
rotr8:
	subq.l #4,%sp
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.b %d0,%d0
	move.b %d0,6(%sp)
	moveq #0,%d0
	move.b 6(%sp),%d0
	move.l 16(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,%d2
	moveq #0,%d1
	move.b 6(%sp),%d1
	moveq #8,%d0
	sub.l 16(%sp),%d0
	lsl.l %d0,%d1
	move.l %d1,%d0
	or.b %d2,%d0
	move.l (%sp)+,%d2
	addq.l #4,%sp
	rts
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
	subq.l #8,%sp
	move.l 12(%sp),%d0
	move.w %d0,%d0
	move.w %d0,2(%sp)
	move.l #255,4(%sp)
	moveq #0,%d1
	move.w 2(%sp),%d1
	move.l 4(%sp),%d0
	lsl.l #8,%d0
	and.l %d1,%d0
	lsr.l #8,%d0
	move.l %d0,%d1
	move.l 4(%sp),%d0
	and.w 2(%sp),%d0
	lsl.w #8,%d0
	or.w %d1,%d0
	addq.l #8,%sp
	rts
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
	subq.l #4,%sp
	move.l #255,(%sp)
	move.l (%sp),%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	and.l 8(%sp),%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	lsr.w #8,%d1
	move.l (%sp),%d0
	swap %d0
	clr.w %d0
	and.l 8(%sp),%d0
	lsr.l #8,%d0
	or.l %d0,%d1
	move.l (%sp),%d0
	lsl.l #8,%d0
	and.l 8(%sp),%d0
	lsl.l #8,%d0
	or.l %d0,%d1
	move.l 8(%sp),%d0
	and.l (%sp),%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d1,%d0
	addq.l #4,%sp
	rts
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
	lea (-12,%sp),%sp
	movem.l #16128,-(%sp)
	clr.l 28(%sp)
	move.l #255,32(%sp)
	move.l 32(%sp),%d4
	lsl.w #8,%d4
	swap %d4
	clr.w %d4
	and.l 40(%sp),%d4
	move.l %d4,%d5
	clr.w %d5
	swap %d5
	lsr.w #8,%d5
	moveq #0,%d7
	move.l 32(%sp),%d4
	swap %d4
	clr.w %d4
	and.l 40(%sp),%d4
	lsr.l #8,%d4
	moveq #0,%d6
	or.l %d6,%d7
	move.l %d5,%d0
	or.l %d4,%d0
	move.l %d0,24(%sp)
	move.l 32(%sp),%d4
	lsl.l #8,%d4
	moveq #0,%d5
	and.l 40(%sp),%d4
	and.l 44(%sp),%d5
	move.l %d4,%d6
	lsl.l #8,%d6
	clr.w %d5
	swap %d5
	lsr.w #8,%d5
	or.l %d6,%d5
	clr.w %d4
	swap %d4
	lsr.w #8,%d4
	or.l %d4,%d7
	move.l 24(%sp),%d6
	or.l %d5,%d6
	move.l 32(%sp),%a0
	move.l %a0,%d5
	moveq #0,%d4
	move.l 40(%sp),%d2
	and.l %d5,%d2
	move.l 44(%sp),%d3
	and.l %d4,%d3
	move.b %d2,%d3
	lsr.l #8,%d2
	ror.l #8,%d3
	move.l %d7,%d5
	or.l %d2,%d5
	move.l %d6,%d4
	or.l %d3,%d4
	move.l 32(%sp),%d2
	move.l %d2,%d3
	lsr.l #8,%d3
	move.l 28(%sp),%d2
	lsl.w #8,%d2
	swap %d2
	clr.w %d2
	or.l %d3,%d2
	move.l 32(%sp),%d3
	lsl.w #8,%d3
	swap %d3
	clr.w %d3
	move.l 40(%sp),%d0
	and.l %d2,%d0
	move.l 44(%sp),%d1
	and.l %d3,%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	or.l %d0,%d5
	or.l %d1,%d4
	move.l 28(%sp),%d0
	move.l 32(%sp),%d1
	swap %d0
	swap %d1
	move.w %d1,%d0
	clr.w %d1
	move.l 40(%sp),%d2
	and.l %d0,%d2
	move.l 44(%sp),%d0
	and.l %d1,%d0
	move.l %d0,%d3
	lsr.l #8,%d3
	move.l %d2,%d1
	lsl.w #8,%d1
	swap %d1
	clr.w %d1
	or.l %d3,%d1
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	move.l %d5,%d3
	or.l %d1,%d3
	move.l %d4,%d2
	or.l %d0,%d2
	move.l 28(%sp),%d0
	move.l 32(%sp),%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	move.l 44(%sp),%d0
	and.l %d1,%d0
	lsl.l #8,%d0
	moveq #0,%d1
	or.l %d0,%d3
	or.l %d1,%d2
	move.l 44(%sp),%d0
	and.l 32(%sp),%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	moveq #0,%d1
	or.l %d3,%d0
	or.l %d2,%d1
	movem.l (%sp)+,#252
	lea (12,%sp),%sp
	rts
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
	subq.l #4,%sp
	clr.l (%sp)
	jra .L453
.L456:
	move.l 8(%sp),%d0
	move.l (%sp),%d1
	lsr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L454
	move.l (%sp),%d0
	addq.l #1,%d0
	jra .L455
.L454:
	addq.l #1,(%sp)
.L453:
	moveq #31,%d0
	cmp.l (%sp),%d0
	jcc .L456
	moveq #0,%d0
.L455:
	addq.l #4,%sp
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	jne .L458
	moveq #0,%d0
	jra .L459
.L458:
	moveq #1,%d2
	jra .L460
.L461:
	asr.l #1,%d0
	addq.l #1,%d2
.L460:
	moveq #1,%d1
	and.l %d0,%d1
	jeq .L461
	move.l %d2,%d0
.L459:
	move.l (%sp)+,%d2
	rts
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	move.l #0xff7fffff,-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L463
	move.l #0x7f7fffff,-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L468
.L463:
	moveq #1,%d0
	jra .L467
.L468:
	moveq #0,%d0
.L467:
	rts
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	pea -1.w
	move.l #-1048577,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L470
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L475
.L470:
	moveq #1,%d0
	jra .L474
.L475:
	moveq #0,%d0
.L474:
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
	move.l .LC0+8,-(%sp)
	move.l .LC0+4,-(%sp)
	move.l .LC0,-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L477
	move.l .LC1+8,-(%sp)
	move.l .LC1+4,-(%sp)
	move.l .LC1,-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __gtxf2
	lea (24,%sp),%sp
	tst.l %d0
	jle .L482
.L477:
	moveq #1,%d0
	jra .L481
.L482:
	moveq #0,%d0
.L481:
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
	addq.l #4,%sp
	lea (4,%sp),%a0
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %a0,%a1
	jsr __extenddfxf2
	addq.l #8,%sp
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	move.l 12(%sp),%d2
	move.l 20(%sp),%a0
	move.l %d0,(%a0)
	move.l %d1,4(%a0)
	move.l %d2,8(%a0)
	nop
	move.l (%sp)+,%d2
	lea (12,%sp),%sp
	rts
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
	subq.l #4,%sp
	move.l 8(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L485
	move.l 8(%sp),%d0
	move.l %d0,-(%sp)
	move.l %d0,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L485
	tst.l 12(%sp)
	jge .L487
	move.l #0x3f000000,%d0
	jra .L488
.L487:
	move.l #0x40000000,%d0
.L488:
	move.l %d0,(%sp)
.L491:
	move.l 12(%sp),%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L489
	move.l (%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,8(%sp)
.L489:
	move.l 12(%sp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,12(%sp)
	jeq .L494
	move.l (%sp),-(%sp)
	move.l 4(%sp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,(%sp)
	jra .L491
.L494:
	nop
.L485:
	move.l 8(%sp),%d0
	addq.l #4,%sp
	rts
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
	lea (-24,%sp),%sp
	movem.l #15360,-(%sp)
	move.l 48(%sp),-(%sp)
	move.l 48(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L496
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d4
	move.l %d0,%d5
	move.l %d4,%d0
	move.l %d5,%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L496
	tst.l 52(%sp)
	jge .L498
	move.l #1071644672,%d0
	clr.l %d1
	jra .L499
.L498:
	move.l #1073741824,%d0
	clr.l %d1
.L499:
	move.l %d0,32(%sp)
	move.l %d1,36(%sp)
.L502:
	move.l 52(%sp),%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L500
	move.l 36(%sp),-(%sp)
	move.l 36(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,24(%sp)
	move.l %d1,28(%sp)
	move.l 24(%sp),44(%sp)
	move.l 28(%sp),48(%sp)
.L500:
	move.l 52(%sp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,52(%sp)
	jeq .L505
	move.l 36(%sp),-(%sp)
	move.l 36(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,16(%sp)
	move.l %d1,20(%sp)
	move.l 16(%sp),32(%sp)
	move.l 20(%sp),36(%sp)
	jra .L502
.L505:
	nop
.L496:
	move.l 44(%sp),%d1
	move.l 48(%sp),%d0
	move.l %d1,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#60
	lea (24,%sp),%sp
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
	movem.l #8248,-(%sp)
	move.l %a1,%a4
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L507
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	move.l 52(%sp),%d2
	lea (16,%sp),%a0
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %a0,%a1
	jsr __addxf3
	lea (24,%sp),%sp
	move.l 16(%sp),%a1
	move.l 20(%sp),%a2
	move.l 24(%sp),%a3
	move.l %a1,%d0
	move.l %a2,%d1
	move.l %a3,%d2
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	jsr __nexf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L507
	tst.l 56(%sp)
	jge .L509
	move.l .LC2,%d0
	move.l .LC2+4,%d1
	move.l .LC2+8,%d2
	jra .L510
.L509:
	move.l .LC3,%d0
	move.l .LC3+4,%d1
	move.l .LC3+8,%d2
.L510:
	move.l %d0,28(%sp)
	move.l %d1,32(%sp)
	move.l %d2,36(%sp)
.L513:
	move.l 56(%sp),%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L511
	lea (16,%sp),%a0
	move.l 36(%sp),-(%sp)
	move.l 36(%sp),-(%sp)
	move.l 36(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	move.l %a0,%a1
	jsr __mulxf3
	lea (24,%sp),%sp
	move.l 16(%sp),%d0
	move.l 20(%sp),%d1
	move.l 24(%sp),%d2
	move.l %d0,44(%sp)
	move.l %d1,48(%sp)
	move.l %d2,52(%sp)
.L511:
	move.l 56(%sp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,56(%sp)
	jeq .L516
	lea (16,%sp),%a0
	move.l 36(%sp),-(%sp)
	move.l 36(%sp),-(%sp)
	move.l 36(%sp),-(%sp)
	move.l 48(%sp),-(%sp)
	move.l 48(%sp),-(%sp)
	move.l 48(%sp),-(%sp)
	move.l %a0,%a1
	jsr __mulxf3
	lea (24,%sp),%sp
	move.l 16(%sp),%d0
	move.l 20(%sp),%d1
	move.l 24(%sp),%d2
	move.l %d0,28(%sp)
	move.l %d1,32(%sp)
	move.l %d2,36(%sp)
	jra .L513
.L516:
	nop
.L507:
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	move.l 52(%sp),%d2
	move.l %d0,(%a4)
	move.l %d1,4(%a4)
	move.l %d2,8(%a4)
	move.l %a4,%a0
	movem.l (%sp)+,#7172
	lea (24,%sp),%sp
	rts
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	subq.l #8,%sp
	move.l 16(%sp),4(%sp)
	move.l 12(%sp),(%sp)
	jra .L518
.L519:
	move.l 4(%sp),%d0
	move.l %d0,%d1
	addq.l #1,%d1
	move.l %d1,4(%sp)
	move.l %d0,%a0
	move.b (%a0),%d1
	move.l (%sp),%a0
	lea (1,%a0),%a1
	move.l %a1,(%sp)
	move.b (%a0),%d0
	eor.b %d1,%d0
	move.b %d0,(%a0)
	subq.l #1,20(%sp)
.L518:
	tst.l 20(%sp)
	jne .L519
	move.l 12(%sp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #8,%sp
	rts
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
	subq.l #4,%sp
	move.l 8(%sp),-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l 8(%sp),%d1
	add.l %d0,%d1
	move.l %d1,(%sp)
	jra .L522
.L524:
	addq.l #1,12(%sp)
	addq.l #1,(%sp)
	subq.l #1,16(%sp)
.L522:
	tst.l 16(%sp)
	jeq .L523
	move.l 12(%sp),%a0
	move.b (%a0),%d0
	move.l (%sp),%a0
	move.b %d0,(%a0)
	move.l (%sp),%a0
	move.b (%a0),%d0
	jne .L524
.L523:
	tst.l 16(%sp)
	jne .L525
	move.l (%sp),%a0
	clr.b (%a0)
.L525:
	move.l 8(%sp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #4,%sp
	rts
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.type	strnlen, @function
strnlen:
	subq.l #4,%sp
	clr.l (%sp)
	jra .L528
.L533:
	nop
	addq.l #1,(%sp)
.L528:
	move.l (%sp),%d0
	cmp.l 12(%sp),%d0
	jcc .L529
	move.l 8(%sp),%a0
	add.l (%sp),%a0
	move.b (%a0),%d0
	jne .L533
.L529:
	move.l (%sp),%d0
	addq.l #4,%sp
	rts
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	subq.l #4,%sp
	jra .L535
.L539:
	move.l 12(%sp),(%sp)
	jra .L536
.L538:
	move.l (%sp),%d0
	move.l %d0,%d1
	addq.l #1,%d1
	move.l %d1,(%sp)
	move.l %d0,%a0
	move.b (%a0),%d1
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L536
	move.l 8(%sp),%d0
	jra .L537
.L536:
	move.l (%sp),%a0
	move.b (%a0),%d0
	jne .L538
	addq.l #1,8(%sp)
.L535:
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	jne .L539
	moveq #0,%d0
.L537:
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #4,%sp
	rts
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	subq.l #4,%sp
	move.l 8(%sp),%a0
	clr.l (%sp)
.L542:
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l 12(%sp),%a1
	jne .L541
	move.l %a0,(%sp)
.L541:
	move.l %a0,%a1
	lea (1,%a1),%a0
	move.b (%a1),%d0
	jne .L542
	move.l (%sp),%d0
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #4,%sp
	rts
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	subq.l #8,%sp
	move.l 12(%sp),4(%sp)
	move.l 16(%sp),-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l %d0,(%sp)
	jne .L547
	move.l 12(%sp),%d0
	jra .L546
.L549:
	move.l (%sp),-(%sp)
	move.l 20(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr strncmp
	lea (12,%sp),%sp
	tst.l %d0
	jne .L548
	move.l 4(%sp),%d0
	jra .L546
.L548:
	addq.l #1,4(%sp)
.L547:
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l 8(%sp),-(%sp)
	jsr strchr
	addq.l #8,%sp
	move.l %a0,4(%sp)
	jne .L549
	moveq #0,%d0
.L546:
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #8,%sp
	rts
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L551
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L553
.L551:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L554
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L554
.L553:
	move.l 12(%sp),%d0
	bchg #31,%d0
	move.l 16(%sp),%d1
	jra .L557
.L554:
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
.L557:
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d1
	move.l %d1,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	subq.l #8,%sp
	move.l 16(%sp),%d0
	sub.l 24(%sp),%d0
	move.l 12(%sp),%d1
	add.l %d0,%d1
	move.l %d1,(%sp)
	tst.l 24(%sp)
	jne .L561
	move.l 12(%sp),%d0
	jra .L562
.L561:
	move.l 16(%sp),%d1
	cmp.l 24(%sp),%d1
	scs %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	tst.l %d0
	jeq .L563
	moveq #0,%d0
	jra .L562
.L563:
	move.l 12(%sp),4(%sp)
	jra .L564
.L566:
	move.l 4(%sp),%a0
	move.b (%a0),%d1
	move.l 20(%sp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L565
	move.l 24(%sp),%a0
	subq.l #1,%a0
	move.l 20(%sp),%d1
	addq.l #1,%d1
	move.l 4(%sp),%d0
	addq.l #1,%d0
	move.l %a0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr memcmp
	lea (12,%sp),%sp
	tst.l %d0
	jne .L565
	move.l 4(%sp),%d0
	jra .L562
.L565:
	addq.l #1,4(%sp)
.L564:
	move.l 4(%sp),%d0
	cmp.l (%sp),%d0
	jls .L566
	moveq #0,%d0
.L562:
	move.l %d0,%d1
	move.l %d1,%a0
	addq.l #8,%sp
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
	move.l %d0,%d1
	move.l %d1,%a0
	rts
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.type	frexp, @function
frexp:
	lea (-24,%sp),%sp
	movem.l #16128,-(%sp)
	clr.l 40(%sp)
	clr.l 44(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L570
	move.l 52(%sp),%d0
	bchg #31,%d0
	move.l 56(%sp),%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,52(%sp)
	move.l %d7,56(%sp)
	moveq #1,%d0
	move.l %d0,44(%sp)
.L570:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L587
	jra .L574
.L575:
	addq.l #1,40(%sp)
	clr.l -(%sp)
	move.l #1073741824,-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
	move.l %d0,32(%sp)
	move.l %d1,36(%sp)
	move.l 32(%sp),52(%sp)
	move.l 36(%sp),56(%sp)
.L574:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L575
	jra .L576
.L587:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L576
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L576
	jra .L579
.L580:
	subq.l #1,40(%sp)
	move.l 52(%sp),%d0
	move.l 56(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d0,24(%sp)
	move.l %d1,28(%sp)
	move.l 24(%sp),52(%sp)
	move.l 28(%sp),56(%sp)
.L579:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l 64(%sp),-(%sp)
	move.l 64(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L580
.L576:
	move.l 60(%sp),%a0
	move.l 40(%sp),(%a0)
	tst.l 44(%sp)
	jeq .L581
	move.l 52(%sp),%d0
	bchg #31,%d0
	move.l 56(%sp),%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l %d1,%d4
	move.l %d0,%d5
	move.l %d4,52(%sp)
	move.l %d5,56(%sp)
.L581:
	move.l 52(%sp),%d1
	move.l 56(%sp),%d0
	move.l %d1,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#252
	lea (24,%sp),%sp
	rts
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
	lea (-16,%sp),%sp
	movem.l #14336,-(%sp)
	clr.l 20(%sp)
	clr.l 24(%sp)
	move.l 32(%sp),12(%sp)
	move.l 36(%sp),16(%sp)
	jra .L589
.L591:
	moveq #0,%d0
	and.l 12(%sp),%d0
	moveq #1,%d1
	and.l 16(%sp),%d1
	move.l %d0,%d2
	or.l %d1,%d2
	jeq .L590
	move.l 40(%sp),%d3
	move.l 44(%sp),%d4
	add.l %d4,24(%sp)
	move.l 20(%sp),%d2
	addx.l %d3,%d2
	move.l %d2,20(%sp)
.L590:
	move.l 40(%sp),%d2
	move.l 44(%sp),%d3
	add.l %d3,%d3
	addx.l %d2,%d2
	move.l %d2,40(%sp)
	move.l %d3,44(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	lsr.l #1,%d2
	roxr.l #1,%d3
	move.l %d2,12(%sp)
	move.l %d3,16(%sp)
.L589:
	move.l 12(%sp),%d3
	or.l 16(%sp),%d3
	jne .L591
	move.l 20(%sp),%d1
	move.l 24(%sp),%d0
	move.l %d1,%a0
	move.l %d0,%d1
	move.l %a0,%d0
	movem.l (%sp)+,#28
	lea (16,%sp),%sp
	rts
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	subq.l #8,%sp
	moveq #1,%d0
	move.l %d0,4(%sp)
	clr.l (%sp)
	jra .L594
.L596:
	move.l 16(%sp),%d0
	add.l %d0,%d0
	move.l %d0,16(%sp)
	move.l 4(%sp),%d0
	add.l %d0,%d0
	move.l %d0,4(%sp)
.L594:
	move.l 16(%sp),%d0
	cmp.l 12(%sp),%d0
	jcc .L597
	tst.l 4(%sp)
	jeq .L597
	move.l 16(%sp),%d0
	jpl .L596
	jra .L597
.L599:
	move.l 12(%sp),%d0
	cmp.l 16(%sp),%d0
	jcs .L598
	move.l 16(%sp),%d0
	sub.l %d0,12(%sp)
	move.l 4(%sp),%d0
	or.l %d0,(%sp)
.L598:
	move.l 4(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,4(%sp)
	move.l 16(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,16(%sp)
.L597:
	tst.l 4(%sp)
	jne .L599
	tst.l 20(%sp)
	jeq .L600
	move.l 12(%sp),%d0
	jra .L601
.L600:
	move.l (%sp),%d0
.L601:
	addq.l #8,%sp
	rts
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	subq.l #8,%sp
	move.l 12(%sp),%d0
	move.b %d0,%d0
	move.b %d0,2(%sp)
	jpl .L603
	not.b 2(%sp)
.L603:
	tst.b 2(%sp)
	jne .L604
	moveq #7,%d0
	jra .L605
.L604:
	move.b 2(%sp),%d0
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	move.l %d0,4(%sp)
	move.l 4(%sp),%d0
	subq.l #1,%d0
.L605:
	addq.l #8,%sp
	rts
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	subq.l #4,%sp
	tst.l 8(%sp)
	jge .L607
	move.l 8(%sp),%d1
	not.l %d1
	move.l 12(%sp),%d0
	not.l %d0
	move.l %d1,8(%sp)
	move.l %d0,12(%sp)
.L607:
	move.l 8(%sp),%d0
	or.l 12(%sp),%d0
	jne .L608
	moveq #63,%d0
	jra .L609
.L608:
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	move.l %d0,(%sp)
	move.l (%sp),%d0
	subq.l #1,%d0
.L609:
	addq.l #4,%sp
	rts
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	subq.l #4,%sp
	clr.l (%sp)
	jra .L611
.L613:
	moveq #1,%d0
	and.l 8(%sp),%d0
	jeq .L612
	move.l 12(%sp),%d0
	add.l %d0,(%sp)
.L612:
	move.l 8(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	add.l %d0,%d0
	move.l %d0,12(%sp)
.L611:
	tst.l 8(%sp)
	jne .L613
	move.l (%sp),%d0
	addq.l #4,%sp
	rts
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
	lea (-20,%sp),%sp
	move.l 32(%sp),%d0
	lsr.l #3,%d0
	move.l %d0,8(%sp)
	moveq #-8,%d0
	and.l 32(%sp),%d0
	move.l %d0,12(%sp)
	move.l 24(%sp),4(%sp)
	move.l 28(%sp),(%sp)
	move.l 4(%sp),%d1
	cmp.l (%sp),%d1
	jcs .L616
	move.l (%sp),%d0
	add.l 32(%sp),%d0
	cmp.l 4(%sp),%d0
	jcc .L623
.L616:
	clr.l 16(%sp)
	jra .L618
.L619:
	move.l 16(%sp),%d0
	lsl.l #3,%d0
	move.l 28(%sp),%a1
	add.l %d0,%a1
	move.l 16(%sp),%d0
	lsl.l #3,%d0
	move.l 24(%sp),%a0
	add.l %d0,%a0
	move.l (%a1),%d0
	move.l 4(%a1),%d1
	move.l %d0,(%a0)
	move.l %d1,4(%a0)
	addq.l #1,16(%sp)
.L618:
	move.l 16(%sp),%d0
	cmp.l 8(%sp),%d0
	jcs .L619
	jra .L620
.L621:
	move.l (%sp),%a1
	add.l 12(%sp),%a1
	move.l 4(%sp),%a0
	add.l 12(%sp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	addq.l #1,12(%sp)
.L620:
	move.l 32(%sp),%d1
	cmp.l 12(%sp),%d1
	jhi .L621
	jra .L622
.L624:
	move.l (%sp),%a1
	add.l 32(%sp),%a1
	move.l 4(%sp),%a0
	add.l 32(%sp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L623:
	move.l 32(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,32(%sp)
	tst.l %d0
	jne .L624
	nop
.L622:
	nop
	lea (20,%sp),%sp
	rts
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
	lea (-16,%sp),%sp
	move.l 28(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,8(%sp)
	move.l 20(%sp),4(%sp)
	move.l 24(%sp),(%sp)
	move.l 4(%sp),%d0
	cmp.l (%sp),%d0
	jcs .L626
	move.l (%sp),%d0
	add.l 28(%sp),%d0
	cmp.l 4(%sp),%d0
	jcc .L632
.L626:
	clr.l 12(%sp)
	jra .L628
.L629:
	move.l 12(%sp),%d0
	add.l %d0,%d0
	move.l 24(%sp),%a1
	add.l %d0,%a1
	move.l 12(%sp),%d0
	add.l %d0,%d0
	move.l 20(%sp),%a0
	add.l %d0,%a0
	move.w (%a1),%d0
	move.w %d0,(%a0)
	addq.l #1,12(%sp)
.L628:
	move.l 12(%sp),%d1
	cmp.l 8(%sp),%d1
	jcs .L629
	moveq #1,%d0
	and.l 28(%sp),%d0
	jeq .L631
	move.l 28(%sp),%d0
	subq.l #1,%d0
	move.l (%sp),%a1
	add.l %d0,%a1
	move.l 28(%sp),%d0
	subq.l #1,%d0
	move.l 4(%sp),%a0
	add.l %d0,%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	jra .L631
.L633:
	move.l (%sp),%a1
	add.l 28(%sp),%a1
	move.l 4(%sp),%a0
	add.l 28(%sp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L632:
	move.l 28(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,28(%sp)
	tst.l %d0
	jne .L633
	nop
.L631:
	nop
	lea (16,%sp),%sp
	rts
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
	lea (-20,%sp),%sp
	move.l 32(%sp),%d0
	lsr.l #2,%d0
	move.l %d0,8(%sp)
	moveq #-4,%d0
	and.l 32(%sp),%d0
	move.l %d0,12(%sp)
	move.l 24(%sp),4(%sp)
	move.l 28(%sp),(%sp)
	move.l 4(%sp),%d1
	cmp.l (%sp),%d1
	jcs .L635
	move.l (%sp),%d0
	add.l 32(%sp),%d0
	cmp.l 4(%sp),%d0
	jcc .L642
.L635:
	clr.l 16(%sp)
	jra .L637
.L638:
	move.l 16(%sp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	move.l 28(%sp),%a1
	add.l %d0,%a1
	move.l 16(%sp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	move.l 24(%sp),%a0
	add.l %d0,%a0
	move.l (%a1),%d0
	move.l %d0,(%a0)
	addq.l #1,16(%sp)
.L637:
	move.l 16(%sp),%d0
	cmp.l 8(%sp),%d0
	jcs .L638
	jra .L639
.L640:
	move.l (%sp),%a1
	add.l 12(%sp),%a1
	move.l 4(%sp),%a0
	add.l 12(%sp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	addq.l #1,12(%sp)
.L639:
	move.l 32(%sp),%d1
	cmp.l 12(%sp),%d1
	jhi .L640
	jra .L641
.L643:
	move.l (%sp),%a1
	add.l 32(%sp),%a1
	move.l 4(%sp),%a0
	add.l 32(%sp),%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L642:
	move.l 32(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,32(%sp)
	tst.l %d0
	jne .L643
	nop
.L641:
	nop
	lea (20,%sp),%sp
	rts
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
	move.l 4(%sp),%d0
	move.l 8(%sp),-(%sp)
	move.l %d0,-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	rts
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.type	__uitod, @function
__uitod:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __floatunsidf
	addq.l #4,%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d1
	move.l %d1,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __floatundidf
	addq.l #8,%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d1
	move.l %d1,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	move.l 4(%sp),%d0
	move.l 8(%sp),-(%sp)
	move.l %d0,-(%sp)
	jsr __umodsi3
	addq.l #8,%sp
	rts
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	subq.l #8,%sp
	move.l 12(%sp),%d0
	move.w %d0,%d0
	move.w %d0,2(%sp)
	clr.l 4(%sp)
	jra .L657
.L660:
	moveq #0,%d1
	move.w 2(%sp),%d1
	moveq #15,%d0
	sub.l 4(%sp),%d0
	asr.l %d0,%d1
	moveq #1,%d0
	and.l %d1,%d0
	jne .L662
	addq.l #1,4(%sp)
.L657:
	moveq #15,%d0
	cmp.l 4(%sp),%d0
	jge .L660
	jra .L659
.L662:
	nop
.L659:
	move.l 4(%sp),%d0
	addq.l #8,%sp
	rts
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	subq.l #8,%sp
	move.l 12(%sp),%d0
	move.w %d0,%d0
	move.w %d0,2(%sp)
	clr.l 4(%sp)
	jra .L664
.L667:
	moveq #0,%d0
	move.w 2(%sp),%d0
	move.l 4(%sp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jne .L669
	addq.l #1,4(%sp)
.L664:
	moveq #15,%d0
	cmp.l 4(%sp),%d0
	jge .L667
	jra .L666
.L669:
	nop
.L666:
	move.l 4(%sp),%d0
	addq.l #8,%sp
	rts
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	move.l #0x47000000,-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __gesf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L675
	move.l #0x47000000,-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L673
.L675:
	move.l 4(%sp),-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L673:
	rts
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	lea (-12,%sp),%sp
	move.l 16(%sp),%d0
	move.w %d0,%d0
	move.w %d0,2(%sp)
	clr.l 4(%sp)
	clr.l 8(%sp)
	jra .L677
.L679:
	moveq #0,%d0
	move.w 2(%sp),%d0
	move.l 8(%sp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L678
	addq.l #1,4(%sp)
.L678:
	addq.l #1,8(%sp)
.L677:
	moveq #15,%d0
	cmp.l 8(%sp),%d0
	jge .L679
	moveq #1,%d0
	and.l 4(%sp),%d0
	lea (12,%sp),%sp
	rts
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	lea (-12,%sp),%sp
	move.l 16(%sp),%d0
	move.w %d0,%d0
	move.w %d0,2(%sp)
	clr.l 4(%sp)
	clr.l 8(%sp)
	jra .L682
.L684:
	moveq #0,%d0
	move.w 2(%sp),%d0
	move.l 8(%sp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L683
	addq.l #1,4(%sp)
.L683:
	addq.l #1,8(%sp)
.L682:
	moveq #15,%d0
	cmp.l 8(%sp),%d0
	jge .L684
	move.l 4(%sp),%d0
	lea (12,%sp),%sp
	rts
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	subq.l #4,%sp
	clr.l (%sp)
	jra .L687
.L689:
	moveq #1,%d0
	and.l 8(%sp),%d0
	jeq .L688
	move.l 12(%sp),%d0
	add.l %d0,(%sp)
.L688:
	move.l 8(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	add.l %d0,%d0
	move.l %d0,12(%sp)
.L687:
	tst.l 8(%sp)
	jne .L689
	move.l (%sp),%d0
	addq.l #4,%sp
	rts
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	subq.l #4,%sp
	clr.l (%sp)
	tst.l 8(%sp)
	jne .L694
	moveq #0,%d0
	jra .L693
.L696:
	moveq #1,%d0
	and.l 12(%sp),%d0
	jeq .L695
	move.l 8(%sp),%d0
	add.l %d0,(%sp)
.L695:
	move.l 8(%sp),%d0
	add.l %d0,%d0
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,12(%sp)
.L694:
	tst.l 12(%sp)
	jne .L696
	move.l (%sp),%d0
.L693:
	addq.l #4,%sp
	rts
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	subq.l #8,%sp
	moveq #1,%d0
	move.l %d0,4(%sp)
	clr.l (%sp)
	jra .L698
.L700:
	move.l 16(%sp),%d0
	add.l %d0,%d0
	move.l %d0,16(%sp)
	move.l 4(%sp),%d0
	add.l %d0,%d0
	move.l %d0,4(%sp)
.L698:
	move.l 16(%sp),%d0
	cmp.l 12(%sp),%d0
	jcc .L701
	tst.l 4(%sp)
	jeq .L701
	move.l 16(%sp),%d0
	jpl .L700
	jra .L701
.L703:
	move.l 12(%sp),%d0
	cmp.l 16(%sp),%d0
	jcs .L702
	move.l 16(%sp),%d0
	sub.l %d0,12(%sp)
	move.l 4(%sp),%d0
	or.l %d0,(%sp)
.L702:
	move.l 4(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,4(%sp)
	move.l 16(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,16(%sp)
.L701:
	tst.l 4(%sp)
	jne .L703
	tst.l 20(%sp)
	jeq .L704
	move.l 12(%sp),%d0
	jra .L705
.L704:
	move.l (%sp),%d0
.L705:
	addq.l #8,%sp
	rts
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L714
	moveq #-1,%d0
	jra .L709
.L714:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L715
	moveq #1,%d0
	jra .L709
.L715:
	moveq #0,%d0
.L709:
	rts
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L724
	moveq #-1,%d0
	jra .L719
.L724:
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L725
	moveq #1,%d0
	jra .L719
.L725:
	moveq #0,%d0
.L719:
	rts
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d1
	smi %d0
	ext.w %d0
	ext.l %d0
	move.l 16(%sp),%d3
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
	move.l %d1,%d0
	move.l %a0,%d1
	move.l %d1,%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d1
	move.l %d1,%a0
	move.l %d0,%d1
	move.l %a0,%d0
	rts
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	lea (-12,%sp),%sp
	clr.l 6(%sp)
	clr.l 2(%sp)
	tst.l 20(%sp)
	jge .L731
	neg.l 20(%sp)
	moveq #1,%d0
	move.l %d0,6(%sp)
.L731:
	clr.b 11(%sp)
	jra .L732
.L735:
	moveq #1,%d0
	and.l 20(%sp),%d0
	jeq .L733
	move.l 16(%sp),%d0
	add.l %d0,2(%sp)
.L733:
	move.l 16(%sp),%d0
	add.l %d0,%d0
	move.l %d0,16(%sp)
	move.l 20(%sp),%d0
	asr.l #1,%d0
	move.l %d0,20(%sp)
	move.b 11(%sp),%d0
	addq.b #1,%d0
	move.b %d0,11(%sp)
.L732:
	tst.l 20(%sp)
	jeq .L734
	move.b 11(%sp),%d0
	cmp.b #31,%d0
	jls .L735
.L734:
	tst.l 6(%sp)
	jeq .L736
	move.l 2(%sp),%d0
	neg.l %d0
	jra .L738
.L736:
	move.l 2(%sp),%d0
.L738:
	lea (12,%sp),%sp
	rts
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	subq.l #8,%sp
	clr.l 4(%sp)
	tst.l 12(%sp)
	jge .L740
	neg.l 12(%sp)
	tst.l 4(%sp)
	seq %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,4(%sp)
.L740:
	tst.l 16(%sp)
	jge .L741
	neg.l 16(%sp)
	tst.l 4(%sp)
	seq %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,4(%sp)
.L741:
	move.l 16(%sp),%d1
	move.l 12(%sp),%d0
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	move.l %d0,(%sp)
	tst.l 4(%sp)
	jeq .L742
	neg.l (%sp)
.L742:
	move.l (%sp),%d0
	addq.l #8,%sp
	rts
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	subq.l #8,%sp
	clr.l 4(%sp)
	tst.l 12(%sp)
	jge .L745
	neg.l 12(%sp)
	moveq #1,%d0
	move.l %d0,4(%sp)
.L745:
	tst.l 16(%sp)
	jge .L746
	neg.l 16(%sp)
.L746:
	move.l 16(%sp),%d1
	move.l 12(%sp),%d0
	pea 1.w
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	move.l %d0,(%sp)
	tst.l 4(%sp)
	jeq .L747
	neg.l (%sp)
.L747:
	move.l (%sp),%d0
	addq.l #8,%sp
	rts
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	subq.l #8,%sp
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	move.w %d1,%d1
	move.w %d1,2(%sp)
	move.w %d0,%d0
	move.w %d0,(%sp)
	move.w #1,6(%sp)
	clr.w 4(%sp)
	jra .L750
.L752:
	move.w (%sp),%d0
	add.w %d0,%d0
	move.w %d0,(%sp)
	move.w 6(%sp),%d0
	add.w %d0,%d0
	move.w %d0,6(%sp)
.L750:
	move.w 2(%sp),%d0
	cmp.w (%sp),%d0
	jls .L753
	tst.w 6(%sp)
	jeq .L753
	move.w (%sp),%d0
	jpl .L752
	jra .L753
.L755:
	move.w (%sp),%d0
	cmp.w 2(%sp),%d0
	jhi .L754
	move.w (%sp),%d0
	sub.w %d0,2(%sp)
	move.w 6(%sp),%d0
	or.w %d0,4(%sp)
.L754:
	move.w 6(%sp),%d0
	lsr.w #1,%d0
	move.w %d0,6(%sp)
	move.w (%sp),%d0
	lsr.w #1,%d0
	move.w %d0,(%sp)
.L753:
	tst.w 6(%sp)
	jne .L755
	tst.l 20(%sp)
	jeq .L756
	move.w 2(%sp),%d0
	jra .L757
.L756:
	move.w 4(%sp),%d0
.L757:
	addq.l #8,%sp
	rts
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	subq.l #8,%sp
	moveq #1,%d0
	move.l %d0,4(%sp)
	clr.l (%sp)
	jra .L759
.L761:
	move.l 16(%sp),%d0
	add.l %d0,%d0
	move.l %d0,16(%sp)
	move.l 4(%sp),%d0
	add.l %d0,%d0
	move.l %d0,4(%sp)
.L759:
	move.l 16(%sp),%d0
	cmp.l 12(%sp),%d0
	jcc .L762
	tst.l 4(%sp)
	jeq .L762
	move.l 16(%sp),%d0
	jpl .L761
	jra .L762
.L764:
	move.l 12(%sp),%d0
	cmp.l 16(%sp),%d0
	jcs .L763
	move.l 16(%sp),%d0
	sub.l %d0,12(%sp)
	move.l 4(%sp),%d0
	or.l %d0,(%sp)
.L763:
	move.l 4(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,4(%sp)
	move.l 16(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,16(%sp)
.L762:
	tst.l 4(%sp)
	jne .L764
	tst.l 20(%sp)
	jeq .L765
	move.l 12(%sp),%d0
	jra .L766
.L765:
	move.l (%sp),%d0
.L766:
	addq.l #8,%sp
	rts
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	lea (-20,%sp),%sp
	move.l %d2,-(%sp)
	moveq #32,%d0
	move.l %d0,20(%sp)
	move.l 28(%sp),12(%sp)
	move.l 32(%sp),16(%sp)
	move.l 36(%sp),%d0
	and.l 20(%sp),%d0
	jeq .L768
	clr.l 8(%sp)
	move.l 16(%sp),%d1
	move.l 36(%sp),%d0
	sub.l 20(%sp),%d0
	lsl.l %d0,%d1
	move.l %d1,%d0
	move.l %d0,4(%sp)
	jra .L769
.L768:
	tst.l 36(%sp)
	jne .L770
	move.l 28(%sp),%d1
	move.l 32(%sp),%d0
	jra .L772
.L770:
	move.l 16(%sp),%d0
	move.l 36(%sp),%d1
	lsl.l %d1,%d0
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	move.l %d0,%d2
	move.l 36(%sp),%d1
	lsl.l %d1,%d2
	move.l 16(%sp),%d1
	move.l 20(%sp),%d0
	sub.l 36(%sp),%d0
	lsr.l %d0,%d1
	move.l %d2,%d0
	or.l %d1,%d0
	move.l %d0,4(%sp)
.L769:
	move.l 4(%sp),%d1
	move.l 8(%sp),%d0
.L772:
	move.l %d1,%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l (%sp)+,%d2
	lea (20,%sp),%sp
	rts
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	lea (-20,%sp),%sp
	move.l %d2,-(%sp)
	moveq #32,%d0
	move.l %d0,20(%sp)
	move.l 28(%sp),12(%sp)
	move.l 32(%sp),16(%sp)
	move.l 36(%sp),%d0
	and.l 20(%sp),%d0
	jeq .L774
	move.l 12(%sp),%d1
	move.l 20(%sp),%d0
	subq.l #1,%d0
	asr.l %d0,%d1
	move.l %d1,4(%sp)
	move.l 12(%sp),%d1
	move.l 36(%sp),%d0
	sub.l 20(%sp),%d0
	asr.l %d0,%d1
	move.l %d1,%d0
	move.l %d0,8(%sp)
	jra .L775
.L774:
	tst.l 36(%sp)
	jne .L776
	move.l 28(%sp),%d1
	move.l 32(%sp),%d0
	jra .L778
.L776:
	move.l 12(%sp),%d0
	move.l 36(%sp),%d1
	asr.l %d1,%d0
	move.l %d0,4(%sp)
	move.l 12(%sp),%d0
	move.l %d0,%d1
	move.l 20(%sp),%d0
	sub.l 36(%sp),%d0
	lsl.l %d0,%d1
	move.l 16(%sp),%d0
	move.l 36(%sp),%d2
	lsr.l %d2,%d0
	or.l %d1,%d0
	move.l %d0,8(%sp)
.L775:
	move.l 4(%sp),%d1
	move.l 8(%sp),%d0
.L778:
	move.l %d1,%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l (%sp)+,%d2
	lea (20,%sp),%sp
	rts
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	lsr.w #8,%d1
	moveq #0,%d2
	move.l 16(%sp),%d0
	lsr.l #8,%d0
	moveq #0,%d3
	moveq #0,%d4
	and.l %d4,%d3
	and.l #65280,%d0
	or.l %d2,%d3
	move.l %d1,%d2
	or.l %d0,%d2
	move.l 16(%sp),%d0
	move.l %d0,%d1
	lsl.l #8,%d1
	move.l 20(%sp),%d0
	clr.w %d0
	swap %d0
	lsr.w #8,%d0
	or.l %d1,%d0
	move.l 16(%sp),%d1
	clr.w %d1
	swap %d1
	lsr.w #8,%d1
	moveq #0,%d4
	and.l %d4,%d1
	and.l #16711680,%d0
	move.l %d3,%d4
	or.l %d1,%d4
	or.l %d0,%d2
	move.l 16(%sp),%d0
	move.l 20(%sp),%d1
	move.b %d0,%d1
	lsr.l #8,%d0
	ror.l #8,%d1
	moveq #0,%d3
	and.l %d0,%d3
	move.l %d1,%d0
	and.l #-16777216,%d0
	or.l %d4,%d3
	or.l %d0,%d2
	move.l 16(%sp),%d0
	move.l 20(%sp),%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	moveq #0,%d4
	not.b %d4
	and.l %d0,%d4
	moveq #0,%d0
	and.l %d1,%d0
	or.l %d3,%d4
	or.l %d0,%d2
	move.l 20(%sp),%d0
	move.l %d0,%d1
	lsr.l #8,%d1
	move.l 16(%sp),%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d1,%d0
	move.l 20(%sp),%d1
	lsl.w #8,%d1
	swap %d1
	clr.w %d1
	move.l %d0,%d3
	and.l #65280,%d3
	moveq #0,%d0
	and.l %d1,%d0
	or.l %d3,%d4
	or.l %d0,%d2
	move.l 20(%sp),%d0
	lsl.l #8,%d0
	moveq #0,%d1
	move.l %d0,%d3
	and.l #16711680,%d3
	moveq #0,%d0
	and.l %d1,%d0
	or.l %d4,%d3
	or.l %d0,%d2
	move.l 20(%sp),%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	moveq #0,%d1
	or.l %d3,%d0
	or.l %d2,%d1
	movem.l (%sp)+,#28
	rts
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	move.l 4(%sp),%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	lsr.w #8,%d1
	move.l 4(%sp),%d0
	lsr.l #8,%d0
	and.l #65280,%d0
	or.l %d0,%d1
	move.l 4(%sp),%d0
	lsl.l #8,%d0
	and.l #16711680,%d0
	or.l %d0,%d1
	move.l 4(%sp),%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d1,%d0
	rts
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	lea (-12,%sp),%sp
	move.l 16(%sp),8(%sp)
	cmp.l #65535,8(%sp)
	jhi .L784
	moveq #16,%d0
	jra .L785
.L784:
	moveq #0,%d0
.L785:
	move.l %d0,4(%sp)
	moveq #16,%d0
	sub.l 4(%sp),%d0
	move.l 8(%sp),%d1
	lsr.l %d0,%d1
	move.l %d1,8(%sp)
	move.l 4(%sp),(%sp)
	move.l 8(%sp),%d0
	and.l #65280,%d0
	jne .L786
	moveq #8,%d0
	jra .L787
.L786:
	moveq #0,%d0
.L787:
	move.l %d0,4(%sp)
	moveq #8,%d0
	sub.l 4(%sp),%d0
	move.l 8(%sp),%d1
	lsr.l %d0,%d1
	move.l %d1,8(%sp)
	move.l 4(%sp),%d0
	add.l %d0,(%sp)
	moveq #15,%d0
	not.b %d0
	and.l 8(%sp),%d0
	jne .L788
	moveq #4,%d0
	jra .L789
.L788:
	moveq #0,%d0
.L789:
	move.l %d0,4(%sp)
	moveq #4,%d0
	sub.l 4(%sp),%d0
	move.l 8(%sp),%d1
	lsr.l %d0,%d1
	move.l %d1,8(%sp)
	move.l 4(%sp),%d0
	add.l %d0,(%sp)
	moveq #12,%d0
	and.l 8(%sp),%d0
	jne .L790
	moveq #2,%d0
	jra .L791
.L790:
	moveq #0,%d0
.L791:
	move.l %d0,4(%sp)
	moveq #2,%d0
	sub.l 4(%sp),%d0
	move.l 8(%sp),%d1
	lsr.l %d0,%d1
	move.l %d1,8(%sp)
	move.l 4(%sp),%d0
	add.l %d0,(%sp)
	moveq #2,%d0
	and.l 8(%sp),%d0
	seq %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,%d1
	moveq #2,%d0
	sub.l 8(%sp),%d0
	move.l %d0,-(%sp)
	move.l %d1,-(%sp)
	jsr __mulsi3
	add.l 8(%sp),%d0
	lea (20,%sp),%sp
	rts
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	lea (-16,%sp),%sp
	move.l 20(%sp),8(%sp)
	move.l 24(%sp),12(%sp)
	move.l 28(%sp),(%sp)
	move.l 32(%sp),4(%sp)
	move.l 8(%sp),%d1
	move.l (%sp),%d0
	cmp.l %d1,%d0
	jle .L794
	moveq #0,%d0
	jra .L799
.L794:
	move.l 8(%sp),%d1
	move.l (%sp),%d0
	cmp.l %d1,%d0
	jge .L796
	moveq #2,%d0
	jra .L799
.L796:
	move.l 12(%sp),%d1
	move.l 4(%sp),%d0
	cmp.l %d1,%d0
	jls .L797
	moveq #0,%d0
	jra .L799
.L797:
	move.l 12(%sp),%d1
	move.l 4(%sp),%d0
	cmp.l %d1,%d0
	jcc .L798
	moveq #2,%d0
	jra .L799
.L798:
	moveq #1,%d0
.L799:
	lea (16,%sp),%sp
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
	lea (-12,%sp),%sp
	move.l %d2,-(%sp)
	move.l 20(%sp),12(%sp)
	move.l 12(%sp),%d0
	and.l #65535,%d0
	jne .L803
	moveq #16,%d0
	jra .L804
.L803:
	moveq #0,%d0
.L804:
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	move.l 8(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,12(%sp)
	move.l 8(%sp),4(%sp)
	moveq #0,%d0
	not.b %d0
	and.l 12(%sp),%d0
	jne .L805
	moveq #8,%d0
	jra .L806
.L805:
	moveq #0,%d0
.L806:
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	move.l 8(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,12(%sp)
	move.l 8(%sp),%d0
	add.l %d0,4(%sp)
	moveq #15,%d0
	and.l 12(%sp),%d0
	jne .L807
	moveq #4,%d0
	jra .L808
.L807:
	moveq #0,%d0
.L808:
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	move.l 8(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,12(%sp)
	move.l 8(%sp),%d0
	add.l %d0,4(%sp)
	moveq #3,%d0
	and.l 12(%sp),%d0
	jne .L809
	moveq #2,%d0
	jra .L810
.L809:
	moveq #0,%d0
.L810:
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	move.l 8(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,12(%sp)
	moveq #3,%d0
	and.l %d0,12(%sp)
	move.l 8(%sp),%d0
	add.l %d0,4(%sp)
	move.l 12(%sp),%d0
	not.l %d0
	moveq #1,%d1
	and.l %d0,%d1
	move.l 12(%sp),%d0
	lsr.l #1,%d0
	moveq #2,%d2
	sub.l %d0,%d2
	move.l %d1,%d0
	neg.l %d0
	and.l %d2,%d0
	add.l 4(%sp),%d0
	move.l (%sp)+,%d2
	lea (12,%sp),%sp
	rts
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	lea (-20,%sp),%sp
	move.l %d2,-(%sp)
	moveq #32,%d0
	move.l %d0,20(%sp)
	move.l 28(%sp),%d0
	move.l 32(%sp),%d1
	move.l %d0,12(%sp)
	move.l %d1,16(%sp)
	move.l 36(%sp),%d0
	and.l 20(%sp),%d0
	jeq .L813
	clr.l 4(%sp)
	move.l 12(%sp),%d1
	move.l 36(%sp),%d0
	sub.l 20(%sp),%d0
	lsr.l %d0,%d1
	move.l %d1,8(%sp)
	jra .L814
.L813:
	tst.l 36(%sp)
	jne .L815
	move.l 28(%sp),%d1
	move.l 32(%sp),%d0
	jra .L817
.L815:
	move.l 12(%sp),%d0
	move.l 36(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,4(%sp)
	move.l 12(%sp),%d1
	move.l 20(%sp),%d0
	sub.l 36(%sp),%d0
	lsl.l %d0,%d1
	move.l 16(%sp),%d0
	move.l 36(%sp),%d2
	lsr.l %d2,%d0
	or.l %d1,%d0
	move.l %d0,8(%sp)
.L814:
	move.l 4(%sp),%d1
	move.l 8(%sp),%d0
.L817:
	move.l %d1,%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l (%sp)+,%d2
	lea (20,%sp),%sp
	rts
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	lea (-20,%sp),%sp
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	moveq #16,%d0
	move.l %d0,24(%sp)
	moveq #-1,%d0
	move.l 24(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,20(%sp)
	move.l 32(%sp),%d0
	and.l 20(%sp),%d0
	move.l 36(%sp),%d1
	and.l 20(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l %d0,12(%sp)
	move.l 12(%sp),%d0
	move.l 24(%sp),%d2
	lsr.l %d2,%d0
	move.l %d0,16(%sp)
	move.l 12(%sp),%d0
	and.l 20(%sp),%d0
	move.l %d0,12(%sp)
	move.l 32(%sp),%d0
	move.l 24(%sp),%d3
	lsr.l %d3,%d0
	move.l 36(%sp),%d1
	and.l 20(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d0,16(%sp)
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	and.l 20(%sp),%d0
	move.l 24(%sp),%d2
	lsl.l %d2,%d0
	add.l %d1,%d0
	move.l %d0,12(%sp)
	move.l 16(%sp),%d0
	move.l 24(%sp),%d3
	lsr.l %d3,%d0
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	move.l 24(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,16(%sp)
	move.l 12(%sp),%d0
	and.l 20(%sp),%d0
	move.l %d0,12(%sp)
	move.l 36(%sp),%d0
	move.l 24(%sp),%d2
	lsr.l %d2,%d0
	move.l 32(%sp),%d1
	and.l 20(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d0,16(%sp)
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	and.l 20(%sp),%d0
	move.l 24(%sp),%d3
	lsl.l %d3,%d0
	add.l %d1,%d0
	move.l %d0,12(%sp)
	move.l 8(%sp),%d0
	move.l %d0,%d1
	move.l 16(%sp),%d0
	move.l 24(%sp),%d2
	lsr.l %d2,%d0
	add.l %d1,%d0
	move.l %d0,8(%sp)
	move.l 8(%sp),%d0
	move.l %d0,%d2
	move.l 32(%sp),%d0
	move.l 24(%sp),%d3
	lsr.l %d3,%d0
	move.l 36(%sp),%d1
	move.l 24(%sp),%d3
	lsr.l %d3,%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d2,%d0
	move.l %d0,8(%sp)
	move.l 8(%sp),%d1
	move.l 12(%sp),%d0
	move.l %d1,%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	lea (20,%sp),%sp
	rts
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	lea (-24,%sp),%sp
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 36(%sp),24(%sp)
	move.l 40(%sp),28(%sp)
	move.l 44(%sp),16(%sp)
	move.l 48(%sp),20(%sp)
	move.l 20(%sp),%d1
	move.l 28(%sp),%d0
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __muldsi3
	addq.l #8,%sp
	move.l %d0,8(%sp)
	move.l %d1,12(%sp)
	move.l 8(%sp),%d0
	move.l %d0,%d2
	move.l 24(%sp),%d0
	move.l 20(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l %d0,%d3
	move.l 28(%sp),%d0
	move.l 16(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d3,%d0
	add.l %d2,%d0
	move.l %d0,8(%sp)
	move.l 8(%sp),%d1
	move.l 12(%sp),%d0
	move.l %d1,%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	lea (24,%sp),%sp
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
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %d0,%d1
	move.l %a0,%d0
	rts
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	lea (-12,%sp),%sp
	move.l %d2,-(%sp)
	move.l 20(%sp),4(%sp)
	move.l 24(%sp),8(%sp)
	move.l 4(%sp),%d0
	move.l %d0,%d1
	move.l 8(%sp),%d0
	move.l %d1,%d2
	eor.l %d0,%d2
	move.l %d2,12(%sp)
	move.l 12(%sp),%d0
	clr.w %d0
	swap %d0
	eor.l %d0,12(%sp)
	move.l 12(%sp),%d0
	lsr.l #8,%d0
	eor.l %d0,12(%sp)
	move.l 12(%sp),%d0
	lsr.l #4,%d0
	eor.l %d0,12(%sp)
	moveq #15,%d0
	and.l 12(%sp),%d0
	move.l #27030,%d1
	asr.l %d0,%d1
	moveq #1,%d0
	and.l %d1,%d0
	move.l (%sp)+,%d2
	lea (12,%sp),%sp
	rts
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	move.l (%sp),%d0
	clr.w %d0
	swap %d0
	eor.l %d0,(%sp)
	move.l (%sp),%d0
	lsr.l #8,%d0
	eor.l %d0,(%sp)
	move.l (%sp),%d0
	lsr.l #4,%d0
	eor.l %d0,(%sp)
	moveq #15,%d0
	and.l (%sp),%d0
	move.l #27030,%d1
	asr.l %d0,%d1
	moveq #1,%d0
	and.l %d1,%d0
	addq.l #4,%sp
	rts
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	lea (-20,%sp),%sp
	movem.l #16128,-(%sp)
	move.l 48(%sp),36(%sp)
	move.l 52(%sp),40(%sp)
	move.l 36(%sp),%d4
	move.l 40(%sp),%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	move.l %d4,%d6
	and.l #1431655765,%d6
	move.l %d5,%d7
	and.l #1431655765,%d7
	sub.l %d7,40(%sp)
	move.l 36(%sp),%d0
	subx.l %d6,%d0
	move.l %d0,36(%sp)
	move.l 36(%sp),%d4
	move.l 40(%sp),%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	move.l %d4,%d1
	and.l #858993459,%d1
	move.l %d1,24(%sp)
	move.l %d5,%d2
	and.l #858993459,%d2
	move.l %d2,28(%sp)
	move.l 36(%sp),%d2
	and.l #858993459,%d2
	move.l 40(%sp),%d3
	and.l #858993459,%d3
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	add.l %d3,%d1
	addx.l %d2,%d0
	move.l %d0,36(%sp)
	move.l %d1,40(%sp)
	move.l 36(%sp),%d2
	move.l %d2,%d3
	moveq #28,%d1
	lsl.l %d1,%d3
	move.l 40(%sp),%d2
	move.l %d2,%d1
	lsr.l #4,%d1
	or.l %d3,%d1
	move.l 36(%sp),%d2
	move.l %d2,%d0
	lsr.l #4,%d0
	move.l 36(%sp),%d2
	add.l 40(%sp),%d1
	addx.l %d2,%d0
	move.l %d0,%d2
	and.l #252645135,%d2
	move.l %d2,36(%sp)
	move.l %d1,%d2
	and.l #252645135,%d2
	move.l %d2,40(%sp)
	move.l 40(%sp),%d1
	move.l 36(%sp),%d0
	move.l %d1,%d2
	add.l %d0,%d2
	move.l %d2,32(%sp)
	move.l 32(%sp),%d0
	clr.w %d0
	swap %d0
	add.l %d0,32(%sp)
	move.l 32(%sp),%d0
	lsr.l #8,%d0
	add.l 32(%sp),%d0
	moveq #127,%d1
	and.l %d1,%d0
	movem.l (%sp)+,#252
	lea (20,%sp),%sp
	rts
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	subq.l #4,%sp
	move.l %d2,-(%sp)
	move.l 12(%sp),4(%sp)
	move.l 4(%sp),%d0
	lsr.l #1,%d0
	and.l #1431655765,%d0
	sub.l %d0,4(%sp)
	move.l 4(%sp),%d0
	lsr.l #2,%d0
	move.l %d0,%d1
	and.l #858993459,%d1
	move.l 4(%sp),%d0
	and.l #858993459,%d0
	move.l %d1,%d2
	add.l %d0,%d2
	move.l %d2,4(%sp)
	move.l 4(%sp),%d0
	lsr.l #4,%d0
	add.l 4(%sp),%d0
	move.l %d0,%d1
	and.l #252645135,%d1
	move.l %d1,4(%sp)
	move.l 4(%sp),%d0
	clr.w %d0
	swap %d0
	add.l %d0,4(%sp)
	move.l 4(%sp),%d0
	lsr.l #8,%d0
	add.l 4(%sp),%d0
	moveq #63,%d2
	and.l %d2,%d0
	move.l (%sp)+,%d2
	addq.l #4,%sp
	rts
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
	lea (-28,%sp),%sp
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 48(%sp),%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	neg.l %d0
	move.b %d0,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,24(%sp)
	move.l #1072693248,28(%sp)
	clr.l 32(%sp)
.L836:
	moveq #1,%d0
	and.l 48(%sp),%d0
	jeq .L833
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,16(%sp)
	move.l %d1,20(%sp)
	move.l 16(%sp),28(%sp)
	move.l 20(%sp),32(%sp)
.L833:
	move.l 48(%sp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,48(%sp)
	jeq .L841
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,8(%sp)
	move.l %d1,12(%sp)
	move.l 8(%sp),40(%sp)
	move.l 12(%sp),44(%sp)
	jra .L836
.L841:
	nop
	tst.l 24(%sp)
	jeq .L837
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d1
	jra .L839
.L837:
	move.l 28(%sp),%d1
	move.l 32(%sp),%d0
.L839:
	move.l %d1,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	lea (28,%sp),%sp
	rts
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
	subq.l #8,%sp
	move.l 16(%sp),%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	neg.l %d0
	move.b %d0,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,(%sp)
	move.l #0x3f800000,4(%sp)
.L846:
	moveq #1,%d0
	and.l 16(%sp),%d0
	jeq .L843
	move.l 12(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,4(%sp)
.L843:
	move.l 16(%sp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,16(%sp)
	jeq .L851
	move.l 12(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,12(%sp)
	jra .L846
.L851:
	nop
	tst.l (%sp)
	jeq .L847
	move.l 4(%sp),-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	jra .L849
.L847:
	move.l 4(%sp),%d0
.L849:
	addq.l #8,%sp
	rts
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	lea (-16,%sp),%sp
	move.l 20(%sp),8(%sp)
	move.l 24(%sp),12(%sp)
	move.l 28(%sp),(%sp)
	move.l 32(%sp),4(%sp)
	move.l 8(%sp),%d1
	move.l (%sp),%d0
	cmp.l %d1,%d0
	jls .L853
	moveq #0,%d0
	jra .L858
.L853:
	move.l 8(%sp),%d1
	move.l (%sp),%d0
	cmp.l %d1,%d0
	jcc .L855
	moveq #2,%d0
	jra .L858
.L855:
	move.l 12(%sp),%d1
	move.l 4(%sp),%d0
	cmp.l %d1,%d0
	jls .L856
	moveq #0,%d0
	jra .L858
.L856:
	move.l 12(%sp),%d1
	move.l 4(%sp),%d0
	cmp.l %d1,%d0
	jcc .L857
	moveq #2,%d0
	jra .L858
.L857:
	moveq #1,%d0
.L858:
	lea (16,%sp),%sp
	rts
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __ucmpdi2
	lea (16,%sp),%sp
	subq.l #1,%d0
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
