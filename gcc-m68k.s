#NO_APP
	.file	"mini-libc.c"
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	lea (-12,%sp),%sp
	move.l %d2,-(%sp)
	move.l 24(%sp),%d0
	cmp.l 20(%sp),%d0
	jcc .L2
	move.l 24(%sp),%d2
	add.l 28(%sp),%d2
	move.l %d2,4(%sp)
	move.l 20(%sp),%d0
	add.l 28(%sp),%d0
	move.l %d0,12(%sp)
	jra .L3
.L4:
	subq.l #1,4(%sp)
	subq.l #1,12(%sp)
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	move.l 12(%sp),%a0
	move.b %d0,(%a0)
	subq.l #1,28(%sp)
.L3:
	tst.l 28(%sp)
	jne .L4
	jra .L5
.L2:
	move.l 24(%sp),%d2
	cmp.l 20(%sp),%d2
	jeq .L5
	move.l 20(%sp),8(%sp)
	jra .L6
.L7:
	move.l 24(%sp),%d1
	move.l %d1,%d0
	addq.l #1,%d0
	move.l %d0,24(%sp)
	move.l 8(%sp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,8(%sp)
	move.l %d1,%a0
	move.b (%a0),%d1
	move.l %d0,%a0
	move.b %d1,(%a0)
	subq.l #1,28(%sp)
.L6:
	tst.l 28(%sp)
	jne .L7
.L5:
	move.l 20(%sp),%d0
	move.l %d0,%a0
	move.l (%sp)+,%d2
	lea (12,%sp),%sp
	rts
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.type	memccpy, @function
memccpy:
	subq.l #4,%sp
	move.l 16(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,(%sp)
	jra .L10
.L12:
	subq.l #1,20(%sp)
	addq.l #1,12(%sp)
	addq.l #1,8(%sp)
.L10:
	tst.l 20(%sp)
	jeq .L11
	move.l 12(%sp),%a0
	move.b (%a0),%d0
	move.l 8(%sp),%a0
	move.b %d0,(%a0)
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l (%sp),%d0
	jne .L12
.L11:
	tst.l 20(%sp)
	jeq .L13
	move.l 8(%sp),%d0
	addq.l #1,%d0
	jra .L14
.L13:
	moveq #0,%d0
.L14:
	move.l %d0,%a0
	addq.l #4,%sp
	rts
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
	subq.l #4,%sp
	move.l 12(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,(%sp)
	jra .L16
.L18:
	addq.l #1,8(%sp)
	subq.l #1,16(%sp)
.L16:
	tst.l 16(%sp)
	jeq .L17
	move.l 8(%sp),%a0
	moveq #0,%d0
	move.b (%a0),%d0
	cmp.l (%sp),%d0
	jne .L18
.L17:
	tst.l 16(%sp)
	jeq .L19
	move.l 8(%sp),%d0
	jra .L21
.L19:
	moveq #0,%d0
.L21:
	nop
	move.l %d0,%a0
	addq.l #4,%sp
	rts
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	jra .L23
.L25:
	subq.l #1,12(%sp)
	addq.l #1,4(%sp)
	addq.l #1,8(%sp)
.L23:
	tst.l 12(%sp)
	jeq .L24
	move.l 4(%sp),%a0
	move.b (%a0),%d1
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jeq .L25
.L24:
	tst.l 12(%sp)
	jeq .L26
	move.l 4(%sp),%a0
	moveq #0,%d1
	move.b (%a0),%d1
	move.l 8(%sp),%a0
	moveq #0,%d0
	move.b (%a0),%d0
	sub.l %d0,%d1
	jra .L28
.L26:
	moveq #0,%d1
.L28:
	nop
	move.l %d1,%d0
	rts
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	subq.l #4,%sp
	move.l %d2,-(%sp)
	move.l 12(%sp),4(%sp)
	jra .L30
.L31:
	move.l 16(%sp),%d1
	move.l %d1,%d0
	addq.l #1,%d0
	move.l %d0,16(%sp)
	move.l 4(%sp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,4(%sp)
	move.l %d1,%a0
	move.b (%a0),%d1
	move.l %d0,%a0
	move.b %d1,(%a0)
	subq.l #1,20(%sp)
.L30:
	tst.l 20(%sp)
	jne .L31
	move.l 12(%sp),%d0
	move.l %d0,%a0
	move.l (%sp)+,%d2
	addq.l #4,%sp
	rts
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.type	memrchr, @function
memrchr:
	subq.l #4,%sp
	move.l 12(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,(%sp)
	jra .L34
.L36:
	move.l 8(%sp),%a0
	add.l 16(%sp),%a0
	moveq #0,%d0
	move.b (%a0),%d0
	cmp.l (%sp),%d0
	jne .L34
	move.l 8(%sp),%d0
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
	move.l %d0,%a0
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
	move.l (%sp),%a0
	move.b 15(%sp),(%a0)
	subq.l #1,16(%sp)
	addq.l #1,(%sp)
.L38:
	tst.l 16(%sp)
	jne .L39
	move.l 8(%sp),%d0
	move.l %d0,%a0
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
	move.l %d0,%a0
	rts
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
	subq.l #4,%sp
	move.l 12(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,(%sp)
	jra .L46
.L48:
	addq.l #1,8(%sp)
.L46:
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	jeq .L47
	move.l 8(%sp),%a0
	moveq #0,%d0
	move.b (%a0),%d0
	cmp.l (%sp),%d0
	jne .L48
.L47:
	move.l 8(%sp),%d0
	move.l %d0,%a0
	addq.l #4,%sp
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
	jeq .L54
	move.l %a0,%a1
	lea (1,%a1),%a0
	tst.b (%a1)
	jne .L53
	sub.l %a0,%a0
	jra .L52
.L54:
	nop
.L52:
	move.l %a0,%d0
	move.l %d0,%a0
	rts
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	jra .L56
.L58:
	addq.l #1,4(%sp)
	addq.l #1,8(%sp)
.L56:
	move.l 4(%sp),%a0
	move.b (%a0),%d1
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L57
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	jne .L58
.L57:
	move.l 4(%sp),%a0
	moveq #0,%d1
	move.b (%a0),%d1
	move.l 8(%sp),%a0
	moveq #0,%d0
	move.b (%a0),%d0
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
	jra .L61
.L62:
	addq.l #1,(%sp)
.L61:
	move.l (%sp),%a0
	tst.b (%a0)
	jne .L62
	move.l (%sp),%d0
	sub.l 8(%sp),%d0
	addq.l #4,%sp
	rts
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	subq.l #4,%sp
	move.l 16(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,(%sp)
	tst.l %d0
	jne .L67
	moveq #0,%d1
	jra .L66
.L69:
	addq.l #1,8(%sp)
	addq.l #1,12(%sp)
	subq.l #1,(%sp)
.L67:
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	jeq .L68
	move.l 12(%sp),%a0
	move.b (%a0),%d0
	jeq .L68
	tst.l (%sp)
	jeq .L68
	move.l 8(%sp),%a0
	move.b (%a0),%d1
	move.l 12(%sp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jeq .L69
.L68:
	move.l 8(%sp),%a0
	moveq #0,%d1
	move.b (%a0),%d1
	move.l 12(%sp),%a0
	moveq #0,%d0
	move.b (%a0),%d0
	sub.l %d0,%d1
.L66:
	move.l %d1,%d0
	addq.l #4,%sp
	rts
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	jra .L71
.L72:
	move.l 4(%sp),%a0
	addq.l #1,%a0
	move.b (%a0),%d0
	move.l 8(%sp),%a0
	move.b %d0,(%a0)
	move.l 8(%sp),%a0
	addq.l #1,%a0
	move.l 4(%sp),%a1
	move.b (%a1),%d0
	move.b %d0,(%a0)
	addq.l #2,8(%sp)
	addq.l #2,4(%sp)
	subq.l #2,12(%sp)
.L71:
	moveq #1,%d0
	cmp.l 12(%sp),%d0
	jlt .L72
	nop
	nop
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.type	isascii, @function
isascii:
	cmp.l #128,4(%sp)
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.type	isblank, @function
isblank:
	moveq #32,%d0
	cmp.l 4(%sp),%d0
	jeq .L78
	moveq #9,%d0
	cmp.l 4(%sp),%d0
	jne .L79
.L78:
	moveq #1,%d0
	jra .L81
.L79:
	moveq #0,%d0
.L81:
	nop
	rts
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L83
	moveq #127,%d0
	cmp.l 4(%sp),%d0
	jne .L84
.L83:
	moveq #1,%d0
	jra .L86
.L84:
	moveq #0,%d0
.L86:
	nop
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.type	isspace, @function
isspace:
	moveq #32,%d0
	cmp.l 4(%sp),%d0
	jeq .L96
	move.l 4(%sp),%a0
	lea (-9,%a0),%a0
	moveq #4,%d0
	cmp.l %a0,%d0
	jcs .L97
.L96:
	moveq #1,%d0
	jra .L99
.L97:
	moveq #0,%d0
.L99:
	nop
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	moveq #31,%d0
	cmp.l 4(%sp),%d0
	jcc .L103
	moveq #-127,%d0
	add.l 4(%sp),%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	jcc .L103
	move.l 4(%sp),%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L103
	move.l 4(%sp),%d0
	add.l #-65529,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	jcs .L104
.L103:
	moveq #1,%d0
	jra .L106
.L104:
	moveq #0,%d0
.L106:
	nop
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.type	iswprint, @function
iswprint:
	cmp.l #254,4(%sp)
	jhi .L110
	move.l 4(%sp),%d0
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L111
.L110:
	cmp.l #8231,4(%sp)
	jls .L112
	move.l 4(%sp),%d0
	add.l #-8234,%d0
	cmp.l #47061,%d0
	jls .L112
	move.l 4(%sp),%d0
	add.l #-57344,%d0
	cmp.l #8184,%d0
	jhi .L113
.L112:
	moveq #1,%d0
	jra .L111
.L113:
	move.l 4(%sp),%d0
	add.l #-65532,%d0
	cmp.l #1048579,%d0
	jhi .L114
	move.l 4(%sp),%d0
	and.l #65534,%d0
	cmp.l #65534,%d0
	jne .L115
.L114:
	moveq #0,%d0
	jra .L111
.L115:
	moveq #1,%d0
.L111:
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
	jcc .L117
	moveq #32,%d0
	or.l 4(%sp),%d0
	move.w #-97,%a0
	add.l %d0,%a0
	moveq #5,%d0
	cmp.l %a0,%d0
	jcs .L118
.L117:
	moveq #1,%d0
	jra .L120
.L118:
	moveq #0,%d0
.L120:
	nop
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
	jeq .L135
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	jra .L126
.L135:
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L136
	move.l 20(%sp),%d1
	move.l 24(%sp),%d0
	jra .L126
.L136:
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L137
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d1
	jra .L126
.L137:
	moveq #0,%d1
	moveq #0,%d0
.L126:
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
	jeq .L150
	move.l 4(%sp),%d0
	jra .L141
.L150:
	move.l 8(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L151
	move.l 8(%sp),%d0
	jra .L141
.L151:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L152
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	jra .L141
.L152:
	moveq #0,%d0
.L141:
	rts
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L168
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	jra .L156
.L168:
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L169
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	jra .L156
.L169:
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L159
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L160
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	jra .L156
.L160:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	jra .L156
.L159:
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L170
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	jra .L156
.L170:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
.L156:
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
	jeq .L186
	move.l 8(%sp),%d0
	jra .L174
.L186:
	move.l 8(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L187
	move.l 4(%sp),%d0
	jra .L174
.L187:
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 8(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L177
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L178
	move.l 8(%sp),%d0
	jra .L174
.L178:
	move.l 4(%sp),%d0
	jra .L174
.L177:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L188
	move.l 8(%sp),%d0
	jra .L174
.L188:
	move.l 4(%sp),%d0
.L174:
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
	jeq .L204
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L192
.L204:
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L205
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L192
.L205:
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 24(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L195
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L196
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
	jra .L197
.L196:
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
.L197:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L192
.L195:
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L206
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
	jra .L200
.L206:
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
.L200:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L192:
	move.l %a2,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L222
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	jra .L210
.L222:
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L223
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	jra .L210
.L223:
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L213
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L214
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	jra .L210
.L214:
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	jra .L210
.L213:
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L224
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	jra .L210
.L224:
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
.L210:
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
	jeq .L240
	move.l 8(%sp),%d0
	jra .L228
.L240:
	move.l 8(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L241
	move.l 4(%sp),%d0
	jra .L228
.L241:
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 8(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L231
	move.l 4(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L232
	move.l 4(%sp),%d0
	jra .L228
.L232:
	move.l 8(%sp),%d0
	jra .L228
.L231:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L242
	move.l 4(%sp),%d0
	jra .L228
.L242:
	move.l 8(%sp),%d0
.L228:
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
	jeq .L258
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L246
.L258:
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	move.l 44(%sp),-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L259
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L246
.L259:
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,%d1
	move.l 24(%sp),%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L249
	move.l 12(%sp),%d0
	and.l #-2147483648,%d0
	jeq .L250
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
	jra .L251
.L250:
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
.L251:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L246
.L249:
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L260
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
	move.l 20(%sp),%d2
	jra .L254
.L260:
	move.l 24(%sp),%d0
	move.l 28(%sp),%d1
	move.l 32(%sp),%d2
.L254:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L246:
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
	jra .L262
.L263:
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
.L262:
	tst.l (%sp)
	jne .L263
	move.l 4(%sp),%a0
	clr.b (%a0)
	move.l #s.0,%d0
	move.l %d0,%a0
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
	move.l #1284865837,-(%sp)
	move.l #1481765933,-(%sp)
	move.l seed+4,-(%sp)
	move.l seed,-(%sp)
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
	tst.l 8(%sp)
	jne .L269
	move.l 4(%sp),%a0
	clr.l 4(%a0)
	move.l 4(%sp),%a0
	move.l 4(%a0),%d0
	move.l 4(%sp),%a0
	move.l %d0,(%a0)
	jra .L268
.L269:
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	move.l 4(%sp),%a0
	move.l %d0,(%a0)
	move.l 4(%sp),%a0
	move.l 8(%sp),4(%a0)
	move.l 8(%sp),%a0
	move.l 4(%sp),(%a0)
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	jeq .L268
	move.l 4(%sp),%a0
	move.l (%a0),%a0
	move.l 4(%sp),4(%a0)
.L268:
	rts
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	jeq .L272
	move.l 4(%sp),%a0
	move.l (%a0),%a0
	move.l 4(%sp),%a1
	move.l 4(%a1),%d0
	move.l %d0,4(%a0)
.L272:
	move.l 4(%sp),%a0
	move.l 4(%a0),%d0
	jeq .L274
	move.l 4(%sp),%a0
	move.l 4(%a0),%a0
	move.l 4(%sp),%a1
	move.l (%a1),%d0
	move.l %d0,(%a0)
.L274:
	nop
	rts
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
	lea (-12,%sp),%sp
	move.l %d2,-(%sp)
	move.l 32(%sp),%d2
	move.l %d2,%d0
	subq.l #1,%d0
	move.l %d0,8(%sp)
	move.l 28(%sp),%a0
	move.l (%a0),4(%sp)
	clr.l 12(%sp)
	jra .L276
.L279:
	move.l 12(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 24(%sp),%d0
	move.l %d0,-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 44(%sp),%a0
	jsr (%a0)
	addq.l #8,%sp
	tst.l %d0
	jne .L277
	move.l 12(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 24(%sp),%d0
	jra .L278
.L277:
	addq.l #1,12(%sp)
.L276:
	move.l 12(%sp),%d0
	cmp.l 4(%sp),%d0
	jcs .L279
	move.l 4(%sp),%d0
	addq.l #1,%d0
	move.l 28(%sp),%a0
	move.l %d0,(%a0)
	move.l 4(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 24(%sp),%d0
	move.l 32(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l %d0,-(%sp)
	jsr memcpy
	move.l %a0,%d0
	lea (12,%sp),%sp
.L278:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	lea (12,%sp),%sp
	rts
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.type	lfind, @function
lfind:
	lea (-12,%sp),%sp
	move.l %d2,-(%sp)
	move.l 32(%sp),%d2
	move.l %d2,%d0
	subq.l #1,%d0
	move.l %d0,8(%sp)
	move.l 28(%sp),%a0
	move.l (%a0),4(%sp)
	clr.l 12(%sp)
	jra .L281
.L284:
	move.l 12(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 24(%sp),%d0
	move.l %d0,-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 44(%sp),%a0
	jsr (%a0)
	addq.l #8,%sp
	tst.l %d0
	jne .L282
	move.l 12(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 24(%sp),%d0
	jra .L283
.L282:
	addq.l #1,12(%sp)
.L281:
	move.l 12(%sp),%d0
	cmp.l 4(%sp),%d0
	jcs .L284
	moveq #0,%d0
.L283:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	lea (12,%sp),%sp
	rts
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d0
	jpl .L286
	neg.l %d0
.L286:
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
	jra .L289
.L290:
	addq.l #1,16(%sp)
.L289:
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L290
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	moveq #43,%d0
	cmp.l %a0,%d0
	jeq .L291
	moveq #45,%d2
	cmp.l %a0,%d2
	jne .L293
	moveq #1,%d0
	move.l %d0,4(%sp)
.L291:
	addq.l #1,16(%sp)
	jra .L293
.L294:
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
.L293:
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcc .L294
	tst.l 4(%sp)
	jne .L295
	move.l 8(%sp),%d0
	neg.l %d0
	jra .L297
.L295:
	move.l 8(%sp),%d0
.L297:
	nop
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
	jra .L299
.L300:
	addq.l #1,16(%sp)
.L299:
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L300
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	moveq #43,%d0
	cmp.l %a0,%d0
	jeq .L301
	moveq #45,%d2
	cmp.l %a0,%d2
	jne .L303
	moveq #1,%d0
	move.l %d0,4(%sp)
.L301:
	addq.l #1,16(%sp)
	jra .L303
.L304:
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
.L303:
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcc .L304
	tst.l 4(%sp)
	jne .L305
	move.l 8(%sp),%d0
	neg.l %d0
	jra .L307
.L305:
	move.l 8(%sp),%d0
.L307:
	nop
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
	jra .L309
.L310:
	addq.l #1,32(%sp)
.L309:
	move.l 32(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L310
	move.l 32(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	moveq #43,%d0
	cmp.l %a0,%d0
	jeq .L311
	moveq #45,%d1
	cmp.l %a0,%d1
	jne .L313
	moveq #1,%d2
	move.l %d2,16(%sp)
.L311:
	addq.l #1,32(%sp)
	jra .L313
.L314:
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
.L313:
	move.l 32(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d5
	cmp.l %a0,%d5
	jcc .L314
	tst.l 16(%sp)
	jne .L315
	move.l 20(%sp),%d0
	move.l 24(%sp),%d1
	neg.l %d1
	negx.l %d0
	jra .L317
.L315:
	move.l 20(%sp),%d0
	move.l 24(%sp),%d1
.L317:
	nop
	movem.l (%sp)+,#60
	lea (12,%sp),%sp
	rts
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
	subq.l #8,%sp
	jra .L319
.L324:
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
	jge .L320
	move.l 20(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,20(%sp)
	jra .L319
.L320:
	tst.l (%sp)
	jle .L322
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
	jra .L319
.L322:
	move.l 4(%sp),%d0
	jra .L323
.L319:
	tst.l 20(%sp)
	jne .L324
	moveq #0,%d0
.L323:
	move.l %d0,%a0
	addq.l #8,%sp
	rts
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	lea (-12,%sp),%sp
	move.l 24(%sp),8(%sp)
	jra .L326
.L330:
	move.l 8(%sp),%d0
	asr.l #1,%d0
	move.l 28(%sp),-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l 20(%sp),%d1
	add.l %d0,%d1
	move.l %d1,4(%sp)
	move.l 36(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 44(%sp),%a0
	jsr (%a0)
	move.l %d0,12(%sp)
	lea (12,%sp),%sp
	tst.l (%sp)
	jne .L327
	move.l 4(%sp),%d0
	jra .L328
.L327:
	tst.l (%sp)
	jle .L329
	move.l 4(%sp),%d0
	add.l 28(%sp),%d0
	move.l %d0,20(%sp)
	subq.l #1,8(%sp)
.L329:
	move.l 8(%sp),%d0
	asr.l #1,%d0
	move.l %d0,8(%sp)
.L326:
	tst.l 8(%sp)
	jne .L330
	moveq #0,%d0
.L328:
	move.l %d0,%a0
	lea (12,%sp),%sp
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
	jge .L334
	neg.l %d1
	negx.l %d0
.L334:
	move.l %d0,%a0
	move.l %d1,%d1
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
	jpl .L339
	neg.l %d0
.L339:
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
	jge .L344
	neg.l %d1
	negx.l %d0
.L344:
	move.l %d0,%a0
	move.l %d1,%d1
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
	jra .L349
.L351:
	addq.l #4,4(%sp)
.L349:
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	jeq .L350
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	cmp.l 8(%sp),%d0
	jne .L351
.L350:
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	jeq .L352
	move.l 4(%sp),%d0
	jra .L354
.L352:
	moveq #0,%d0
.L354:
	nop
	move.l %d0,%a0
	rts
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
	jra .L356
.L358:
	addq.l #4,4(%sp)
	addq.l #4,8(%sp)
.L356:
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jne .L357
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	jeq .L357
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	jne .L358
.L357:
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L359
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L361
.L359:
	moveq #-1,%d0
.L361:
	nop
	rts
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
.L363:
	move.l 12(%sp),%d0
	move.l %d0,%d1
	addq.l #4,%d1
	move.l %d1,12(%sp)
	move.l (%sp),%a0
	lea (4,%a0),%a1
	move.l %a1,(%sp)
	move.l %d0,%a1
	move.l (%a1),%d0
	move.l %d0,(%a0)
	move.l (%a0),%d0
	jne .L363
	move.l 8(%sp),%d0
	move.l %d0,%a0
	addq.l #4,%sp
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	jra .L366
.L367:
	addq.l #4,(%sp)
.L366:
	move.l (%sp),%a0
	tst.l (%a0)
	jne .L367
	move.l (%sp),%d0
	sub.l 8(%sp),%d0
	asr.l #2,%d0
	addq.l #4,%sp
	rts
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	jra .L370
.L372:
	subq.l #1,12(%sp)
	addq.l #4,4(%sp)
	addq.l #4,8(%sp)
.L370:
	tst.l 12(%sp)
	jeq .L371
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jne .L371
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	jeq .L371
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	jne .L372
.L371:
	tst.l 12(%sp)
	jeq .L373
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L374
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L377
.L374:
	moveq #-1,%d0
	jra .L377
.L373:
	moveq #0,%d0
.L377:
	nop
	rts
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	jra .L379
.L381:
	subq.l #1,12(%sp)
	addq.l #4,4(%sp)
.L379:
	tst.l 12(%sp)
	jeq .L380
	move.l 4(%sp),%a0
	move.l (%a0),%d0
	cmp.l 8(%sp),%d0
	jne .L381
.L380:
	tst.l 12(%sp)
	jeq .L382
	move.l 4(%sp),%d0
	jra .L384
.L382:
	moveq #0,%d0
.L384:
	nop
	move.l %d0,%a0
	rts
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	jra .L386
.L388:
	subq.l #1,12(%sp)
	addq.l #4,4(%sp)
	addq.l #4,8(%sp)
.L386:
	tst.l 12(%sp)
	jeq .L387
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jeq .L388
.L387:
	tst.l 12(%sp)
	jeq .L389
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	jgt .L390
	move.l 4(%sp),%a0
	move.l (%a0),%d1
	move.l 8(%sp),%a0
	move.l (%a0),%d0
	cmp.l %d1,%d0
	slt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L393
.L390:
	moveq #-1,%d0
	jra .L393
.L389:
	moveq #0,%d0
.L393:
	nop
	rts
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	subq.l #4,%sp
	move.l %d2,-(%sp)
	move.l 12(%sp),4(%sp)
	jra .L395
.L396:
	move.l 16(%sp),%d1
	move.l %d1,%d0
	addq.l #4,%d0
	move.l %d0,16(%sp)
	move.l 4(%sp),%d0
	move.l %d0,%d2
	addq.l #4,%d2
	move.l %d2,4(%sp)
	move.l %d1,%a0
	move.l (%a0),%d1
	move.l %d0,%a0
	move.l %d1,(%a0)
.L395:
	move.l 20(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,20(%sp)
	tst.l %d0
	jne .L396
	move.l 12(%sp),%d0
	move.l %d0,%a0
	move.l (%sp)+,%d2
	addq.l #4,%sp
	rts
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
	subq.l #4,%sp
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d0
	cmp.l 20(%sp),%d0
	jne .L399
	move.l 16(%sp),%d0
	jra .L400
.L399:
	move.l 16(%sp),%d1
	move.l 20(%sp),%d0
	sub.l %d0,%d1
	move.l 24(%sp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	cmp.l %d1,%d0
	jls .L401
	jra .L402
.L403:
	move.l 24(%sp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	move.l 16(%sp),%a0
	add.l %d0,%a0
	move.l 24(%sp),%d0
	add.l %d0,%d0
	move.l %d0,%a2
	add.l %d0,%a2
	move.l 20(%sp),%a1
	move.l (%a2,%a1.l),%d0
	move.l %d0,(%a0)
.L402:
	move.l 24(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,24(%sp)
	tst.l %d0
	jne .L403
	jra .L404
.L401:
	move.l 16(%sp),8(%sp)
	jra .L405
.L406:
	move.l 20(%sp),%d1
	move.l %d1,%d2
	addq.l #4,%d2
	move.l %d2,20(%sp)
	move.l 8(%sp),%d0
	move.l %d0,%d2
	addq.l #4,%d2
	move.l %d2,8(%sp)
	move.l %d1,%a0
	move.l (%a0),%d1
	move.l %d0,%a0
	move.l %d1,(%a0)
.L405:
	move.l 24(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,24(%sp)
	tst.l %d0
	jne .L406
.L404:
	move.l 16(%sp),%d0
.L400:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	addq.l #4,%sp
	rts
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	jra .L408
.L409:
	move.l (%sp),%d0
	move.l %d0,%d1
	addq.l #4,%d1
	move.l %d1,(%sp)
	move.l %d0,%a0
	move.l 12(%sp),(%a0)
.L408:
	move.l 16(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,16(%sp)
	tst.l %d0
	jne .L409
	move.l 8(%sp),%d0
	move.l %d0,%a0
	addq.l #4,%sp
	rts
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
	subq.l #8,%sp
	move.l %d2,-(%sp)
	move.l 16(%sp),%d0
	cmp.l 20(%sp),%d0
	jcc .L412
	move.l 16(%sp),%d2
	add.l 24(%sp),%d2
	move.l %d2,8(%sp)
	move.l 20(%sp),%d0
	add.l 24(%sp),%d0
	move.l %d0,4(%sp)
	jra .L413
.L414:
	subq.l #1,8(%sp)
	subq.l #1,4(%sp)
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	move.l 4(%sp),%a0
	move.b %d0,(%a0)
	subq.l #1,24(%sp)
.L413:
	tst.l 24(%sp)
	jne .L414
	jra .L418
.L412:
	move.l 16(%sp),%d2
	cmp.l 20(%sp),%d2
	jeq .L418
	jra .L416
.L417:
	move.l 16(%sp),%d1
	move.l %d1,%d0
	addq.l #1,%d0
	move.l %d0,16(%sp)
	move.l 20(%sp),%d0
	move.l %d0,%d2
	addq.l #1,%d2
	move.l %d2,20(%sp)
	move.l %d1,%a0
	move.b (%a0),%d1
	move.l %d0,%a0
	move.b %d1,(%a0)
	subq.l #1,24(%sp)
.L416:
	tst.l 24(%sp)
	jne .L417
.L418:
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
	jmi .L420
	move.l %d1,%d2
	lsl.l %d3,%d2
	moveq #0,%d4
	jra .L421
.L420:
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
.L421:
	move.l 32(%sp),%d3
	neg.l %d3
	moveq #63,%d6
	and.l %d6,%d3
	move.w #-32,%a0
	add.l %d3,%a0
	cmp.w #0,%a0
	jlt .L422
	move.l %d0,%d1
	move.l %a0,%d3
	lsr.l %d3,%d1
	moveq #0,%d0
	jra .L423
.L422:
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
.L423:
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
	moveq #-32,%d2
	add.l 32(%sp),%d2
	jmi .L426
	move.l %d1,%d3
	lsr.l %d2,%d3
	moveq #0,%d5
	jra .L427
.L426:
	move.l %d1,%d3
	add.l %d3,%d3
	moveq #31,%d2
	sub.l 32(%sp),%d2
	move.l %d3,%d4
	lsl.l %d2,%d4
	move.l %d0,%d3
	move.l 32(%sp),%d2
	lsr.l %d2,%d3
	or.l %d4,%d3
	move.l %d1,%d5
	move.l 32(%sp),%d4
	lsr.l %d4,%d5
.L427:
	move.l 32(%sp),%d2
	neg.l %d2
	moveq #63,%d6
	and.l %d6,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L428
	move.l %d0,%d1
	move.l %a0,%d2
	lsl.l %d2,%d1
	moveq #0,%d2
	jra .L429
.L428:
	move.l %d0,%d4
	lsr.l #1,%d4
	move.l 32(%sp),%d2
	neg.l %d2
	moveq #63,%d6
	and.l %d6,%d2
	moveq #31,%d6
	sub.l %d2,%d6
	lsr.l %d6,%d4
	move.l 32(%sp),%d2
	neg.l %d2
	moveq #63,%d6
	and.l %d6,%d2
	lsl.l %d2,%d1
	or.l %d4,%d1
	move.l 32(%sp),%d4
	neg.l %d4
	moveq #63,%d2
	and.l %d2,%d4
	move.l %d0,%d2
	lsl.l %d4,%d2
.L429:
	or.l %d5,%d1
	move.l %d2,%d0
	or.l %d3,%d0
	move.l %d0,%d2
	move.l %d1,%d0
	move.l %d2,%d1
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
	move.l 4(%sp),%d0
	lsl.l #8,%d0
	moveq #0,%d1
	move.w 2(%sp),%d1
	and.l %d1,%d0
	move.l %d0,%d1
	lsr.l #8,%d1
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
	jra .L454
.L457:
	move.l 8(%sp),%d0
	move.l (%sp),%d1
	lsr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L455
	move.l (%sp),%d0
	addq.l #1,%d0
	jra .L456
.L455:
	addq.l #1,(%sp)
.L454:
	moveq #31,%d0
	cmp.l (%sp),%d0
	jcc .L457
	moveq #0,%d0
.L456:
	addq.l #4,%sp
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	jne .L459
	moveq #0,%d2
	jra .L460
.L459:
	moveq #1,%d2
	jra .L461
.L462:
	asr.l #1,%d0
	addq.l #1,%d2
.L461:
	moveq #1,%d1
	and.l %d0,%d1
	jeq .L462
	nop
.L460:
	move.l %d2,%d0
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
	jlt .L464
	move.l #0x7f7fffff,-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L469
.L464:
	moveq #1,%d0
	jra .L468
.L469:
	moveq #0,%d0
.L468:
	nop
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
	jlt .L471
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L476
.L471:
	moveq #1,%d0
	jra .L475
.L476:
	moveq #0,%d0
.L475:
	nop
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
	jlt .L478
	move.l .LC1+8,-(%sp)
	move.l .LC1+4,-(%sp)
	move.l .LC1,-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __gtxf2
	lea (24,%sp),%sp
	tst.l %d0
	jle .L483
.L478:
	moveq #1,%d0
	jra .L482
.L483:
	moveq #0,%d0
.L482:
	nop
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
	jne .L486
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
	jeq .L486
	tst.l 12(%sp)
	jge .L488
	move.l #0x3f000000,%d0
	jra .L489
.L488:
	move.l #0x40000000,%d0
.L489:
	move.l %d0,(%sp)
.L492:
	moveq #1,%d0
	and.l 12(%sp),%d0
	jeq .L490
	move.l (%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,8(%sp)
.L490:
	move.l 12(%sp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,12(%sp)
	jeq .L495
	move.l (%sp),-(%sp)
	move.l 4(%sp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,(%sp)
	jra .L492
.L495:
	nop
.L486:
	move.l 8(%sp),%d0
	addq.l #4,%sp
	rts
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
	lea (-24,%sp),%sp
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	move.l 48(%sp),-(%sp)
	move.l 48(%sp),-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L497
	move.l 36(%sp),%d0
	move.l 40(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d2
	move.l %d0,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l 48(%sp),-(%sp)
	move.l 48(%sp),-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L497
	tst.l 44(%sp)
	jge .L499
	move.l #1071644672,%d0
	clr.l %d1
	jra .L500
.L499:
	move.l #1073741824,%d0
	clr.l %d1
.L500:
	move.l %d0,24(%sp)
	move.l %d1,28(%sp)
.L503:
	moveq #1,%d0
	and.l 44(%sp),%d0
	jeq .L501
	move.l 28(%sp),-(%sp)
	move.l 28(%sp),-(%sp)
	move.l 48(%sp),-(%sp)
	move.l 48(%sp),-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,16(%sp)
	move.l %d1,20(%sp)
	move.l 16(%sp),36(%sp)
	move.l 20(%sp),40(%sp)
.L501:
	move.l 44(%sp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,44(%sp)
	jeq .L506
	move.l 28(%sp),-(%sp)
	move.l 28(%sp),-(%sp)
	move.l 36(%sp),-(%sp)
	move.l 36(%sp),-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,8(%sp)
	move.l %d1,12(%sp)
	move.l 8(%sp),24(%sp)
	move.l 12(%sp),28(%sp)
	jra .L503
.L506:
	nop
.L497:
	move.l 36(%sp),%d0
	move.l 40(%sp),%d1
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	jne .L508
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
	jeq .L508
	tst.l 56(%sp)
	jge .L510
	move.l .LC2,%d0
	move.l .LC2+4,%d1
	move.l .LC2+8,%d2
	jra .L511
.L510:
	move.l .LC3,%d0
	move.l .LC3+4,%d1
	move.l .LC3+8,%d2
.L511:
	move.l %d0,28(%sp)
	move.l %d1,32(%sp)
	move.l %d2,36(%sp)
.L514:
	moveq #1,%d0
	and.l 56(%sp),%d0
	jeq .L512
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
.L512:
	move.l 56(%sp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,56(%sp)
	jeq .L517
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
	jra .L514
.L517:
	nop
.L508:
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
	subq.l #4,%sp
	move.l %d2,-(%sp)
	move.l 12(%sp),4(%sp)
	jra .L519
.L520:
	move.l 16(%sp),%d0
	move.l %d0,%d1
	addq.l #1,%d1
	move.l %d1,16(%sp)
	move.l %d0,%a0
	move.b (%a0),%d1
	move.l 4(%sp),%a0
	lea (1,%a0),%a1
	move.l %a1,4(%sp)
	move.b (%a0),%d0
	move.b %d1,%d2
	eor.b %d0,%d2
	move.b %d2,(%a0)
	subq.l #1,20(%sp)
.L519:
	tst.l 20(%sp)
	jne .L520
	move.l 12(%sp),%d0
	move.l %d0,%a0
	move.l (%sp)+,%d2
	addq.l #4,%sp
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
	jra .L523
.L525:
	addq.l #1,12(%sp)
	addq.l #1,(%sp)
	subq.l #1,16(%sp)
.L523:
	tst.l 16(%sp)
	jeq .L524
	move.l 12(%sp),%a0
	move.b (%a0),%d0
	move.l (%sp),%a0
	move.b %d0,(%a0)
	move.l (%sp),%a0
	move.b (%a0),%d0
	jne .L525
.L524:
	tst.l 16(%sp)
	jne .L526
	move.l (%sp),%a0
	clr.b (%a0)
.L526:
	move.l 8(%sp),%d0
	move.l %d0,%a0
	addq.l #4,%sp
	rts
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.type	strnlen, @function
strnlen:
	subq.l #4,%sp
	clr.l (%sp)
	jra .L529
.L534:
	nop
	addq.l #1,(%sp)
.L529:
	move.l (%sp),%d0
	cmp.l 12(%sp),%d0
	jcc .L530
	move.l 8(%sp),%a0
	add.l (%sp),%a0
	move.b (%a0),%d0
	jne .L534
.L530:
	move.l (%sp),%d0
	addq.l #4,%sp
	rts
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	subq.l #4,%sp
	jra .L536
.L540:
	move.l 12(%sp),(%sp)
	jra .L537
.L539:
	move.l (%sp),%d0
	move.l %d0,%d1
	addq.l #1,%d1
	move.l %d1,(%sp)
	move.l %d0,%a0
	move.b (%a0),%d1
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L537
	move.l 8(%sp),%d0
	jra .L538
.L537:
	move.l (%sp),%a0
	move.b (%a0),%d0
	jne .L539
	addq.l #1,8(%sp)
.L536:
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	jne .L540
	moveq #0,%d0
.L538:
	move.l %d0,%a0
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
.L543:
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l 12(%sp),%a1
	jne .L542
	move.l %a0,(%sp)
.L542:
	move.l %a0,%a1
	lea (1,%a1),%a0
	tst.b (%a1)
	jne .L543
	move.l (%sp),%d0
	move.l %d0,%a0
	addq.l #4,%sp
	rts
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	subq.l #8,%sp
	move.l 16(%sp),-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l %d0,4(%sp)
	jne .L548
	move.l 12(%sp),%d0
	jra .L547
.L550:
	move.l 4(%sp),-(%sp)
	move.l 20(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr strncmp
	lea (12,%sp),%sp
	tst.l %d0
	jne .L549
	move.l (%sp),%d0
	jra .L547
.L549:
	move.l (%sp),%d0
	addq.l #1,%d0
	move.l %d0,12(%sp)
.L548:
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l 16(%sp),-(%sp)
	jsr strchr
	addq.l #8,%sp
	move.l %a0,(%sp)
	jne .L550
	moveq #0,%d0
.L547:
	move.l %d0,%a0
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
	jge .L552
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L554
.L552:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 24(%sp),-(%sp)
	move.l 24(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L555
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L555
.L554:
	move.l 12(%sp),%d0
	bchg #31,%d0
	move.l 16(%sp),%d1
	jra .L558
.L555:
	move.l 12(%sp),%d0
	move.l 16(%sp),%d1
.L558:
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d2
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
	subq.l #4,%sp
	move.l 12(%sp),%d0
	sub.l 20(%sp),%d0
	move.l 8(%sp),%d1
	add.l %d0,%d1
	move.l %d1,(%sp)
	tst.l 20(%sp)
	jne .L562
	move.l 8(%sp),%d0
	jra .L563
.L562:
	move.l 12(%sp),%d1
	cmp.l 20(%sp),%d1
	scs %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	tst.l %d0
	jeq .L565
	moveq #0,%d0
	jra .L563
.L567:
	move.l 8(%sp),%a0
	move.b (%a0),%d1
	move.l 16(%sp),%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L566
	move.l 8(%sp),%d0
	addq.l #1,%d0
	move.l 20(%sp),%d1
	subq.l #1,%d1
	move.l %d1,-(%sp)
	move.l 20(%sp),%d1
	addq.l #1,%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr memcmp
	lea (12,%sp),%sp
	tst.l %d0
	jne .L566
	move.l 8(%sp),%d0
	jra .L563
.L566:
	addq.l #1,8(%sp)
.L565:
	move.l 8(%sp),%d0
	cmp.l (%sp),%d0
	jls .L567
	moveq #0,%d0
.L563:
	move.l %d0,%a0
	addq.l #4,%sp
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
	lea (-24,%sp),%sp
	movem.l #15360,-(%sp)
	clr.l 32(%sp)
	clr.l 36(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L571
	move.l 44(%sp),%d0
	bchg #31,%d0
	move.l 48(%sp),%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l %d1,%d4
	move.l %d0,%d5
	move.l %d4,44(%sp)
	move.l %d5,48(%sp)
	moveq #1,%d0
	move.l %d0,36(%sp)
.L571:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L588
	jra .L575
.L576:
	addq.l #1,32(%sp)
	clr.l -(%sp)
	move.l #1073741824,-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
	move.l %d0,24(%sp)
	move.l %d1,28(%sp)
	move.l 24(%sp),44(%sp)
	move.l 28(%sp),48(%sp)
.L575:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L576
	jra .L577
.L588:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L577
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L577
	jra .L580
.L581:
	subq.l #1,32(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d0,16(%sp)
	move.l %d1,20(%sp)
	move.l 16(%sp),44(%sp)
	move.l 20(%sp),48(%sp)
.L580:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L581
.L577:
	move.l 52(%sp),%a0
	move.l 32(%sp),(%a0)
	tst.l 36(%sp)
	jeq .L582
	move.l 44(%sp),%d0
	bchg #31,%d0
	move.l 48(%sp),%a0
	move.l %d0,%d1
	move.l %a0,%d0
	move.l %d1,%d2
	move.l %d0,%d3
	move.l %d2,44(%sp)
	move.l %d3,48(%sp)
.L582:
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#60
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
	jra .L590
.L592:
	moveq #0,%d0
	and.l 12(%sp),%d0
	moveq #1,%d1
	and.l 16(%sp),%d1
	move.l %d0,%d2
	or.l %d1,%d2
	jeq .L591
	move.l 40(%sp),%d3
	move.l 44(%sp),%d4
	add.l %d4,24(%sp)
	move.l 20(%sp),%d2
	addx.l %d3,%d2
	move.l %d2,20(%sp)
.L591:
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
.L590:
	move.l 12(%sp),%d3
	or.l 16(%sp),%d3
	jne .L592
	move.l 20(%sp),%d0
	move.l 24(%sp),%d1
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
	jra .L595
.L597:
	move.l 16(%sp),%d0
	add.l %d0,%d0
	move.l %d0,16(%sp)
	move.l 4(%sp),%d0
	add.l %d0,%d0
	move.l %d0,4(%sp)
.L595:
	move.l 16(%sp),%d0
	cmp.l 12(%sp),%d0
	jcc .L598
	tst.l 4(%sp)
	jeq .L598
	move.l 16(%sp),%d0
	jpl .L597
	jra .L598
.L600:
	move.l 12(%sp),%d0
	cmp.l 16(%sp),%d0
	jcs .L599
	move.l 16(%sp),%d0
	sub.l %d0,12(%sp)
	move.l 4(%sp),%d0
	or.l %d0,(%sp)
.L599:
	move.l 4(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,4(%sp)
	move.l 16(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,16(%sp)
.L598:
	tst.l 4(%sp)
	jne .L600
	tst.l 20(%sp)
	jeq .L601
	move.l 12(%sp),%d0
	jra .L602
.L601:
	move.l (%sp),%d0
.L602:
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
	jpl .L604
	not.b 2(%sp)
.L604:
	tst.b 2(%sp)
	jne .L605
	moveq #7,%d0
	jra .L606
.L605:
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
.L606:
	addq.l #8,%sp
	rts
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	subq.l #4,%sp
	tst.l 8(%sp)
	jge .L608
	move.l 8(%sp),%d1
	not.l %d1
	move.l 12(%sp),%d0
	not.l %d0
	move.l %d1,8(%sp)
	move.l %d0,12(%sp)
.L608:
	move.l 8(%sp),%d0
	or.l 12(%sp),%d0
	jne .L609
	moveq #63,%d0
	jra .L610
.L609:
	move.l 12(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	move.l %d0,(%sp)
	move.l (%sp),%d0
	subq.l #1,%d0
.L610:
	addq.l #4,%sp
	rts
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	subq.l #4,%sp
	clr.l (%sp)
	jra .L612
.L614:
	moveq #1,%d0
	and.l 8(%sp),%d0
	jeq .L613
	move.l 12(%sp),%d0
	add.l %d0,(%sp)
.L613:
	move.l 8(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	add.l %d0,%d0
	move.l %d0,12(%sp)
.L612:
	tst.l 8(%sp)
	jne .L614
	move.l (%sp),%d0
	addq.l #4,%sp
	rts
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
	lea (-12,%sp),%sp
	move.l 24(%sp),%d0
	lsr.l #3,%d0
	move.l %d0,(%sp)
	moveq #-8,%d0
	and.l 24(%sp),%d0
	move.l %d0,4(%sp)
	move.l 16(%sp),%d1
	cmp.l 20(%sp),%d1
	jcs .L617
	move.l 20(%sp),%d0
	add.l 24(%sp),%d0
	cmp.l 16(%sp),%d0
	jcc .L624
.L617:
	clr.l 8(%sp)
	jra .L619
.L620:
	move.l 8(%sp),%d0
	lsl.l #3,%d0
	move.l 16(%sp),%a0
	add.l %d0,%a0
	move.l 8(%sp),%d0
	lsl.l #3,%d0
	move.l 20(%sp),%a1
	move.l 4(%a1,%d0.l),%d1
	move.l (%a1,%d0.l),%d0
	move.l %d0,(%a0)
	move.l %d1,4(%a0)
	addq.l #1,8(%sp)
.L619:
	move.l 8(%sp),%d0
	cmp.l (%sp),%d0
	jcs .L620
	jra .L621
.L622:
	move.l 16(%sp),%a0
	add.l 4(%sp),%a0
	move.l 20(%sp),%a1
	add.l 4(%sp),%a1
	move.b (%a1),%d0
	move.b %d0,(%a0)
	addq.l #1,4(%sp)
.L621:
	move.l 24(%sp),%d1
	cmp.l 4(%sp),%d1
	jhi .L622
	jra .L623
.L625:
	move.l 16(%sp),%a0
	add.l 24(%sp),%a0
	move.l 20(%sp),%a1
	add.l 24(%sp),%a1
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L624:
	move.l 24(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,24(%sp)
	tst.l %d0
	jne .L625
	nop
.L623:
	nop
	lea (12,%sp),%sp
	rts
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
	subq.l #8,%sp
	move.l %a2,-(%sp)
	move.l 24(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,4(%sp)
	move.l 16(%sp),%d0
	cmp.l 20(%sp),%d0
	jcs .L627
	move.l 20(%sp),%d0
	add.l 24(%sp),%d0
	cmp.l 16(%sp),%d0
	jcc .L633
.L627:
	clr.l 8(%sp)
	jra .L629
.L630:
	move.l 8(%sp),%d0
	add.l %d0,%d0
	move.l 16(%sp),%a0
	add.l %d0,%a0
	move.l 8(%sp),%d0
	move.l %d0,%a2
	add.l %d0,%a2
	move.l 20(%sp),%a1
	move.w (%a2,%a1.l),%d0
	move.w %d0,(%a0)
	addq.l #1,8(%sp)
.L629:
	move.l 8(%sp),%d1
	cmp.l 4(%sp),%d1
	jcs .L630
	moveq #1,%d0
	and.l 24(%sp),%d0
	jeq .L632
	move.l 24(%sp),%d0
	subq.l #1,%d0
	move.l 16(%sp),%a0
	add.l %d0,%a0
	move.l 20(%sp),%d0
	add.l 24(%sp),%d0
	move.l %d0,%a1
	subq.l #1,%a1
	move.b (%a1),%d0
	move.b %d0,(%a0)
	jra .L632
.L634:
	move.l 16(%sp),%a0
	add.l 24(%sp),%a0
	move.l 20(%sp),%a1
	add.l 24(%sp),%a1
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L633:
	move.l 24(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,24(%sp)
	tst.l %d0
	jne .L634
	nop
.L632:
	nop
	move.l (%sp)+,%a2
	addq.l #8,%sp
	rts
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
	lea (-12,%sp),%sp
	move.l %a2,-(%sp)
	move.l 28(%sp),%d0
	lsr.l #2,%d0
	move.l %d0,4(%sp)
	moveq #-4,%d0
	and.l 28(%sp),%d0
	move.l %d0,8(%sp)
	move.l 20(%sp),%d1
	cmp.l 24(%sp),%d1
	jcs .L636
	move.l 24(%sp),%d0
	add.l 28(%sp),%d0
	cmp.l 20(%sp),%d0
	jcc .L643
.L636:
	clr.l 12(%sp)
	jra .L638
.L639:
	move.l 12(%sp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	move.l 20(%sp),%a0
	add.l %d0,%a0
	move.l 12(%sp),%d0
	add.l %d0,%d0
	move.l %d0,%a2
	add.l %d0,%a2
	move.l 24(%sp),%a1
	move.l (%a2,%a1.l),%d0
	move.l %d0,(%a0)
	addq.l #1,12(%sp)
.L638:
	move.l 12(%sp),%d0
	cmp.l 4(%sp),%d0
	jcs .L639
	jra .L640
.L641:
	move.l 20(%sp),%a0
	add.l 8(%sp),%a0
	move.l 24(%sp),%a1
	add.l 8(%sp),%a1
	move.b (%a1),%d0
	move.b %d0,(%a0)
	addq.l #1,8(%sp)
.L640:
	move.l 28(%sp),%d1
	cmp.l 8(%sp),%d1
	jhi .L641
	jra .L642
.L644:
	move.l 20(%sp),%a0
	add.l 28(%sp),%a0
	move.l 24(%sp),%a1
	add.l 28(%sp),%a1
	move.b (%a1),%d0
	move.b %d0,(%a0)
.L643:
	move.l 28(%sp),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,28(%sp)
	tst.l %d0
	jne .L644
	nop
.L642:
	nop
	move.l (%sp)+,%a2
	lea (12,%sp),%sp
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
	jra .L658
.L661:
	moveq #15,%d1
	sub.l 4(%sp),%d1
	moveq #0,%d0
	move.w 2(%sp),%d0
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jne .L663
	addq.l #1,4(%sp)
.L658:
	moveq #15,%d0
	cmp.l 4(%sp),%d0
	jge .L661
	jra .L660
.L663:
	nop
.L660:
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
	jra .L665
.L668:
	moveq #0,%d0
	move.w 2(%sp),%d0
	move.l 4(%sp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jne .L670
	addq.l #1,4(%sp)
.L665:
	moveq #15,%d0
	cmp.l 4(%sp),%d0
	jge .L668
	jra .L667
.L670:
	nop
.L667:
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
	jlt .L676
	move.l #0x47000000,-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L674
.L676:
	move.l 4(%sp),-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L674:
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
	jra .L678
.L680:
	moveq #0,%d0
	move.w 2(%sp),%d0
	move.l 8(%sp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L679
	addq.l #1,4(%sp)
.L679:
	addq.l #1,8(%sp)
.L678:
	moveq #15,%d0
	cmp.l 8(%sp),%d0
	jge .L680
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
	jra .L683
.L685:
	moveq #0,%d0
	move.w 2(%sp),%d0
	move.l 8(%sp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L684
	addq.l #1,4(%sp)
.L684:
	addq.l #1,8(%sp)
.L683:
	moveq #15,%d0
	cmp.l 8(%sp),%d0
	jge .L685
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
	jra .L688
.L690:
	moveq #1,%d0
	and.l 8(%sp),%d0
	jeq .L689
	move.l 12(%sp),%d0
	add.l %d0,(%sp)
.L689:
	move.l 8(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	add.l %d0,%d0
	move.l %d0,12(%sp)
.L688:
	tst.l 8(%sp)
	jne .L690
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
	jne .L695
	moveq #0,%d0
	jra .L694
.L697:
	moveq #1,%d0
	and.l 12(%sp),%d0
	jeq .L696
	move.l 8(%sp),%d0
	add.l %d0,(%sp)
.L696:
	move.l 8(%sp),%d0
	add.l %d0,%d0
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,12(%sp)
.L695:
	tst.l 12(%sp)
	jne .L697
	move.l (%sp),%d0
.L694:
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
	jra .L699
.L701:
	move.l 16(%sp),%d0
	add.l %d0,%d0
	move.l %d0,16(%sp)
	move.l 4(%sp),%d0
	add.l %d0,%d0
	move.l %d0,4(%sp)
.L699:
	move.l 16(%sp),%d0
	cmp.l 12(%sp),%d0
	jcc .L702
	tst.l 4(%sp)
	jeq .L702
	move.l 16(%sp),%d0
	jpl .L701
	jra .L702
.L704:
	move.l 12(%sp),%d0
	cmp.l 16(%sp),%d0
	jcs .L703
	move.l 16(%sp),%d0
	sub.l %d0,12(%sp)
	move.l 4(%sp),%d0
	or.l %d0,(%sp)
.L703:
	move.l 4(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,4(%sp)
	move.l 16(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,16(%sp)
.L702:
	tst.l 4(%sp)
	jne .L704
	tst.l 20(%sp)
	jeq .L705
	move.l 12(%sp),%d0
	jra .L706
.L705:
	move.l (%sp),%d0
.L706:
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
	jge .L715
	moveq #-1,%d0
	jra .L710
.L715:
	move.l 8(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L716
	moveq #1,%d0
	jra .L710
.L716:
	moveq #0,%d0
.L710:
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
	jge .L725
	moveq #-1,%d0
	jra .L720
.L725:
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L726
	moveq #1,%d0
	jra .L720
.L726:
	moveq #0,%d0
.L720:
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
	jge .L732
	neg.l 20(%sp)
	moveq #1,%d0
	move.l %d0,6(%sp)
.L732:
	clr.b 11(%sp)
	jra .L733
.L736:
	moveq #1,%d0
	and.l 20(%sp),%d0
	jeq .L734
	move.l 16(%sp),%d0
	add.l %d0,2(%sp)
.L734:
	move.l 16(%sp),%d0
	add.l %d0,%d0
	move.l %d0,16(%sp)
	move.l 20(%sp),%d0
	asr.l #1,%d0
	move.l %d0,20(%sp)
	move.b 11(%sp),%d0
	addq.b #1,%d0
	move.b %d0,11(%sp)
.L733:
	tst.l 20(%sp)
	jeq .L735
	move.b 11(%sp),%d0
	cmp.b #31,%d0
	jls .L736
.L735:
	tst.l 6(%sp)
	jeq .L737
	move.l 2(%sp),%d0
	neg.l %d0
	jra .L739
.L737:
	move.l 2(%sp),%d0
.L739:
	nop
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
	jge .L741
	neg.l 12(%sp)
	tst.l 4(%sp)
	seq %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,4(%sp)
.L741:
	tst.l 16(%sp)
	jge .L742
	neg.l 16(%sp)
	tst.l 4(%sp)
	seq %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,4(%sp)
.L742:
	clr.l -(%sp)
	move.l 20(%sp),-(%sp)
	move.l 20(%sp),-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	move.l %d0,(%sp)
	tst.l 4(%sp)
	jeq .L743
	neg.l (%sp)
.L743:
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
	jge .L746
	neg.l 12(%sp)
	moveq #1,%d0
	move.l %d0,4(%sp)
.L746:
	tst.l 16(%sp)
	jge .L747
	neg.l 16(%sp)
.L747:
	pea 1.w
	move.l 20(%sp),-(%sp)
	move.l 20(%sp),-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	move.l %d0,(%sp)
	tst.l 4(%sp)
	jeq .L748
	neg.l (%sp)
.L748:
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
	jra .L751
.L753:
	move.w (%sp),%d0
	add.w %d0,%d0
	move.w %d0,(%sp)
	move.w 6(%sp),%d0
	add.w %d0,%d0
	move.w %d0,6(%sp)
.L751:
	move.w 2(%sp),%d0
	cmp.w (%sp),%d0
	jls .L754
	tst.w 6(%sp)
	jeq .L754
	move.w (%sp),%d0
	jpl .L753
	jra .L754
.L756:
	move.w (%sp),%d0
	cmp.w 2(%sp),%d0
	jhi .L755
	move.w (%sp),%d0
	sub.w %d0,2(%sp)
	move.w 6(%sp),%d0
	or.w %d0,4(%sp)
.L755:
	move.w 6(%sp),%d0
	lsr.w #1,%d0
	move.w %d0,6(%sp)
	move.w (%sp),%d0
	lsr.w #1,%d0
	move.w %d0,(%sp)
.L754:
	tst.w 6(%sp)
	jne .L756
	tst.l 20(%sp)
	jeq .L757
	move.w 2(%sp),%d0
	jra .L758
.L757:
	move.w 4(%sp),%d0
.L758:
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
	jra .L760
.L762:
	move.l 16(%sp),%d0
	add.l %d0,%d0
	move.l %d0,16(%sp)
	move.l 4(%sp),%d0
	add.l %d0,%d0
	move.l %d0,4(%sp)
.L760:
	move.l 16(%sp),%d0
	cmp.l 12(%sp),%d0
	jcc .L763
	tst.l 4(%sp)
	jeq .L763
	move.l 16(%sp),%d0
	jpl .L762
	jra .L763
.L765:
	move.l 12(%sp),%d0
	cmp.l 16(%sp),%d0
	jcs .L764
	move.l 16(%sp),%d0
	sub.l %d0,12(%sp)
	move.l 4(%sp),%d0
	or.l %d0,(%sp)
.L764:
	move.l 4(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,4(%sp)
	move.l 16(%sp),%d0
	lsr.l #1,%d0
	move.l %d0,16(%sp)
.L763:
	tst.l 4(%sp)
	jne .L765
	tst.l 20(%sp)
	jeq .L766
	move.l 12(%sp),%d0
	jra .L767
.L766:
	move.l (%sp),%d0
.L767:
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
	jeq .L769
	clr.l 8(%sp)
	move.l 16(%sp),%d1
	move.l 36(%sp),%d0
	sub.l 20(%sp),%d0
	lsl.l %d0,%d1
	move.l %d1,4(%sp)
	jra .L770
.L769:
	tst.l 36(%sp)
	jne .L771
	move.l 28(%sp),%d0
	move.l 32(%sp),%d1
	jra .L773
.L771:
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
.L770:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
.L773:
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
	jeq .L775
	move.l 12(%sp),%d1
	move.l 20(%sp),%d0
	subq.l #1,%d0
	asr.l %d0,%d1
	move.l %d1,4(%sp)
	move.l 12(%sp),%d1
	move.l 36(%sp),%d0
	sub.l 20(%sp),%d0
	asr.l %d0,%d1
	move.l %d1,8(%sp)
	jra .L776
.L775:
	tst.l 36(%sp)
	jne .L777
	move.l 28(%sp),%d0
	move.l 32(%sp),%d1
	jra .L779
.L777:
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
.L776:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
.L779:
	move.l (%sp)+,%d2
	lea (20,%sp),%sp
	rts
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movem.l #15360,-(%sp)
	move.l 20(%sp),%d0
	move.l %d0,%d2
	clr.w %d2
	swap %d2
	lsr.w #8,%d2
	moveq #0,%d3
	move.l 20(%sp),%d0
	lsr.l #8,%d0
	moveq #0,%d1
	moveq #0,%d4
	and.l %d4,%d1
	and.l #65280,%d0
	or.l %d1,%d3
	or.l %d0,%d2
	move.l 20(%sp),%d0
	move.l %d0,%d1
	lsl.l #8,%d1
	move.l 24(%sp),%d0
	clr.w %d0
	swap %d0
	lsr.w #8,%d0
	or.l %d1,%d0
	move.l 20(%sp),%d1
	clr.w %d1
	swap %d1
	lsr.w #8,%d1
	moveq #0,%d4
	and.l %d4,%d1
	and.l #16711680,%d0
	move.l %d3,%d5
	or.l %d1,%d5
	move.l %d2,%d4
	or.l %d0,%d4
	move.l 20(%sp),%d0
	move.l 24(%sp),%d1
	move.b %d0,%d1
	lsr.l #8,%d0
	ror.l #8,%d1
	moveq #0,%d3
	and.l %d0,%d3
	move.l %d1,%d2
	and.l #-16777216,%d2
	move.l %d3,%d0
	move.l %d2,%d1
	move.l %d5,%d3
	or.l %d0,%d3
	or.l %d1,%d4
	move.l 20(%sp),%d0
	move.l 24(%sp),%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	moveq #0,%d5
	not.b %d5
	and.l %d0,%d5
	moveq #0,%d2
	and.l %d1,%d2
	move.l %d5,%d0
	move.l %d2,%d1
	or.l %d0,%d3
	move.l %d4,%d2
	or.l %d1,%d2
	move.l 24(%sp),%d0
	move.l %d0,%d1
	lsr.l #8,%d1
	move.l 20(%sp),%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d1,%d0
	move.l 24(%sp),%d1
	lsl.w #8,%d1
	swap %d1
	clr.w %d1
	and.l #65280,%d0
	moveq #0,%d4
	and.l %d4,%d1
	or.l %d0,%d3
	or.l %d1,%d2
	move.l 24(%sp),%d0
	lsl.l #8,%d0
	moveq #0,%d1
	and.l #16711680,%d0
	moveq #0,%d4
	and.l %d4,%d1
	or.l %d0,%d3
	or.l %d1,%d2
	move.l 24(%sp),%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	moveq #0,%d1
	or.l %d3,%d0
	or.l %d2,%d1
	movem.l (%sp)+,#60
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
	lea (-52,%sp),%sp
	move.l 56(%sp),48(%sp)
	cmp.l #65535,48(%sp)
	jhi .L785
	moveq #16,%d0
	jra .L786
.L785:
	moveq #0,%d0
.L786:
	move.l %d0,44(%sp)
	moveq #16,%d0
	sub.l 44(%sp),%d0
	move.l 48(%sp),%d1
	lsr.l %d0,%d1
	move.l %d1,40(%sp)
	move.l 44(%sp),36(%sp)
	move.l 40(%sp),%d0
	and.l #65280,%d0
	jne .L787
	moveq #8,%d0
	jra .L788
.L787:
	moveq #0,%d0
.L788:
	move.l %d0,32(%sp)
	moveq #8,%d0
	sub.l 32(%sp),%d0
	move.l 40(%sp),%d1
	lsr.l %d0,%d1
	move.l %d1,28(%sp)
	move.l 36(%sp),%d0
	add.l 32(%sp),%d0
	move.l %d0,24(%sp)
	moveq #15,%d0
	not.b %d0
	and.l 28(%sp),%d0
	jne .L789
	moveq #4,%d0
	jra .L790
.L789:
	moveq #0,%d0
.L790:
	move.l %d0,20(%sp)
	moveq #4,%d0
	sub.l 20(%sp),%d0
	move.l 28(%sp),%d1
	lsr.l %d0,%d1
	move.l %d1,16(%sp)
	move.l 24(%sp),%d0
	add.l 20(%sp),%d0
	move.l %d0,12(%sp)
	moveq #12,%d0
	and.l 16(%sp),%d0
	jne .L791
	moveq #2,%d0
	jra .L792
.L791:
	moveq #0,%d0
.L792:
	move.l %d0,8(%sp)
	moveq #2,%d0
	sub.l 8(%sp),%d0
	move.l 16(%sp),%d1
	lsr.l %d0,%d1
	move.l %d1,4(%sp)
	move.l 12(%sp),%d0
	add.l 8(%sp),%d0
	move.l %d0,(%sp)
	moveq #2,%d0
	and.l 4(%sp),%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%d1
	moveq #2,%d0
	sub.l 4(%sp),%d0
	move.l %d0,-(%sp)
	move.l %d1,-(%sp)
	jsr __mulsi3
	add.l 8(%sp),%d0
	lea (60,%sp),%sp
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
	jle .L795
	moveq #0,%d0
	jra .L800
.L795:
	move.l 8(%sp),%d1
	move.l (%sp),%d0
	cmp.l %d1,%d0
	jge .L797
	moveq #2,%d0
	jra .L800
.L797:
	move.l 12(%sp),%d1
	move.l 4(%sp),%d0
	cmp.l %d1,%d0
	jls .L798
	moveq #0,%d0
	jra .L800
.L798:
	move.l 12(%sp),%d1
	move.l 4(%sp),%d0
	cmp.l %d1,%d0
	jcc .L799
	moveq #2,%d0
	jra .L800
.L799:
	moveq #1,%d0
.L800:
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
	lea (-56,%sp),%sp
	move.l %d2,-(%sp)
	move.l 64(%sp),56(%sp)
	move.l 56(%sp),%d0
	and.l #65535,%d0
	jne .L804
	moveq #16,%d0
	jra .L805
.L804:
	moveq #0,%d0
.L805:
	move.l %d0,52(%sp)
	move.l 56(%sp),%d0
	move.l 52(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,48(%sp)
	move.l 52(%sp),44(%sp)
	moveq #0,%d0
	not.b %d0
	and.l 48(%sp),%d0
	jne .L806
	moveq #8,%d0
	jra .L807
.L806:
	moveq #0,%d0
.L807:
	move.l %d0,40(%sp)
	move.l 48(%sp),%d0
	move.l 40(%sp),%d2
	lsr.l %d2,%d0
	move.l %d0,36(%sp)
	move.l 44(%sp),%d0
	add.l 40(%sp),%d0
	move.l %d0,32(%sp)
	moveq #15,%d0
	and.l 36(%sp),%d0
	jne .L808
	moveq #4,%d0
	jra .L809
.L808:
	moveq #0,%d0
.L809:
	move.l %d0,28(%sp)
	move.l 36(%sp),%d0
	move.l 28(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,24(%sp)
	move.l 32(%sp),%d2
	add.l 28(%sp),%d2
	move.l %d2,20(%sp)
	moveq #3,%d0
	and.l 24(%sp),%d0
	jne .L810
	moveq #2,%d0
	jra .L811
.L810:
	moveq #0,%d0
.L811:
	move.l %d0,16(%sp)
	move.l 24(%sp),%d0
	move.l 16(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,12(%sp)
	moveq #3,%d2
	and.l 12(%sp),%d2
	move.l %d2,8(%sp)
	move.l 20(%sp),%d0
	add.l 16(%sp),%d0
	move.l %d0,4(%sp)
	move.l 8(%sp),%d0
	lsr.l #1,%d0
	moveq #2,%d1
	sub.l %d0,%d1
	move.l 8(%sp),%d0
	not.l %d0
	moveq #1,%d2
	and.l %d2,%d0
	neg.l %d0
	and.l %d1,%d0
	add.l 4(%sp),%d0
	move.l (%sp)+,%d2
	lea (56,%sp),%sp
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
	move.l 28(%sp),12(%sp)
	move.l 32(%sp),16(%sp)
	move.l 36(%sp),%d0
	and.l 20(%sp),%d0
	jeq .L814
	clr.l 4(%sp)
	move.l 12(%sp),%d1
	move.l 36(%sp),%d0
	sub.l 20(%sp),%d0
	lsr.l %d0,%d1
	move.l %d1,8(%sp)
	jra .L815
.L814:
	tst.l 36(%sp)
	jne .L816
	move.l 28(%sp),%d0
	move.l 32(%sp),%d1
	jra .L818
.L816:
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
.L815:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
.L818:
	move.l (%sp)+,%d2
	lea (20,%sp),%sp
	rts
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	lea (-32,%sp),%sp
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	moveq #16,%d0
	move.l %d0,36(%sp)
	moveq #-1,%d0
	move.l 36(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,32(%sp)
	move.l 44(%sp),%d0
	and.l 32(%sp),%d0
	move.l 48(%sp),%d1
	and.l 32(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l %d0,12(%sp)
	move.l 12(%sp),%d0
	move.l 36(%sp),%d2
	lsr.l %d2,%d0
	move.l %d0,28(%sp)
	move.l 12(%sp),%d0
	move.l 32(%sp),%d3
	and.l %d0,%d3
	move.l %d3,12(%sp)
	move.l 44(%sp),%d0
	move.l 36(%sp),%d1
	lsr.l %d1,%d0
	move.l 48(%sp),%d1
	and.l 32(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l 28(%sp),%d2
	add.l %d0,%d2
	move.l %d2,24(%sp)
	move.l 12(%sp),%d1
	move.l 24(%sp),%d0
	and.l 32(%sp),%d0
	move.l 36(%sp),%d3
	lsl.l %d3,%d0
	move.l %d1,%d2
	add.l %d0,%d2
	move.l %d2,12(%sp)
	move.l 24(%sp),%d0
	move.l 36(%sp),%d3
	lsr.l %d3,%d0
	move.l %d0,8(%sp)
	move.l 12(%sp),%d0
	move.l 36(%sp),%d1
	lsr.l %d1,%d0
	move.l %d0,20(%sp)
	move.l 12(%sp),%d0
	move.l 32(%sp),%d2
	and.l %d0,%d2
	move.l %d2,12(%sp)
	move.l 48(%sp),%d0
	move.l 36(%sp),%d3
	lsr.l %d3,%d0
	move.l 44(%sp),%d1
	and.l 32(%sp),%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l 20(%sp),%d1
	add.l %d0,%d1
	move.l %d1,16(%sp)
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
	and.l 32(%sp),%d0
	move.l 36(%sp),%d2
	lsl.l %d2,%d0
	move.l %d1,%d3
	add.l %d0,%d3
	move.l %d3,12(%sp)
	move.l 8(%sp),%d1
	move.l 16(%sp),%d0
	move.l 36(%sp),%d2
	lsr.l %d2,%d0
	move.l %d1,%d3
	add.l %d0,%d3
	move.l %d3,8(%sp)
	move.l 8(%sp),%d2
	move.l 44(%sp),%d0
	move.l 36(%sp),%d1
	lsr.l %d1,%d0
	move.l 48(%sp),%d1
	move.l 36(%sp),%d3
	lsr.l %d3,%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l %d2,%d1
	add.l %d0,%d1
	move.l %d1,8(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	lea (32,%sp),%sp
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
	move.l 20(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	jsr __muldsi3
	addq.l #8,%sp
	move.l %d0,8(%sp)
	move.l %d1,12(%sp)
	move.l 8(%sp),%d2
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
	move.l %d2,%d1
	add.l %d0,%d1
	move.l %d1,8(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
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
	rts
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	lea (-24,%sp),%sp
	move.l %d2,-(%sp)
	move.l 32(%sp),4(%sp)
	move.l 36(%sp),8(%sp)
	move.l 4(%sp),%d1
	move.l 8(%sp),%d0
	move.l %d1,%d2
	eor.l %d0,%d2
	move.l %d2,24(%sp)
	move.l 24(%sp),%d0
	clr.w %d0
	swap %d0
	move.l 24(%sp),%d1
	eor.l %d0,%d1
	move.l %d1,20(%sp)
	move.l 20(%sp),%d0
	lsr.l #8,%d0
	move.l 20(%sp),%d2
	eor.l %d0,%d2
	move.l %d2,16(%sp)
	move.l 16(%sp),%d0
	lsr.l #4,%d0
	move.l 16(%sp),%d1
	eor.l %d0,%d1
	move.l %d1,12(%sp)
	moveq #15,%d0
	and.l 12(%sp),%d0
	move.l #27030,%d1
	asr.l %d0,%d1
	moveq #1,%d0
	and.l %d1,%d0
	move.l (%sp)+,%d2
	lea (24,%sp),%sp
	rts
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	lea (-16,%sp),%sp
	move.l 20(%sp),12(%sp)
	move.l 12(%sp),%d0
	clr.w %d0
	swap %d0
	move.l 12(%sp),%d1
	eor.l %d0,%d1
	move.l %d1,8(%sp)
	move.l 8(%sp),%d0
	lsr.l #8,%d0
	move.l 8(%sp),%d1
	eor.l %d0,%d1
	move.l %d1,4(%sp)
	move.l 4(%sp),%d0
	lsr.l #4,%d0
	move.l 4(%sp),%d1
	eor.l %d0,%d1
	move.l %d1,(%sp)
	moveq #15,%d0
	and.l (%sp),%d0
	move.l #27030,%d1
	asr.l %d0,%d1
	moveq #1,%d0
	and.l %d1,%d0
	lea (16,%sp),%sp
	rts
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	lea (-48,%sp),%sp
	movem.l #16128,-(%sp)
	move.l 76(%sp),64(%sp)
	move.l 80(%sp),68(%sp)
	move.l 64(%sp),%d4
	move.l 68(%sp),%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	move.l %d4,%d0
	and.l #1431655765,%d0
	move.l %d0,24(%sp)
	move.l %d5,%d1
	and.l #1431655765,%d1
	move.l %d1,28(%sp)
	move.l 64(%sp),%d0
	move.l 68(%sp),%d1
	move.l 24(%sp),%d2
	sub.l 28(%sp),%d1
	subx.l %d2,%d0
	move.l %d0,56(%sp)
	move.l %d1,60(%sp)
	move.l 56(%sp),%d4
	move.l 60(%sp),%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	lsr.l #1,%d4
	roxr.l #1,%d5
	move.l %d4,%d6
	and.l #858993459,%d6
	move.l %d5,%d7
	and.l #858993459,%d7
	move.l 56(%sp),%d2
	and.l #858993459,%d2
	move.l 60(%sp),%d3
	and.l #858993459,%d3
	move.l %d6,%d0
	move.l %d7,%d1
	add.l %d3,%d1
	addx.l %d2,%d0
	move.l %d0,48(%sp)
	move.l %d1,52(%sp)
	move.l 48(%sp),%d2
	move.l %d2,%d3
	moveq #28,%d1
	lsl.l %d1,%d3
	move.l 52(%sp),%d2
	move.l %d2,%d1
	lsr.l #4,%d1
	or.l %d3,%d1
	move.l 48(%sp),%d2
	move.l %d2,%d0
	lsr.l #4,%d0
	move.l 48(%sp),%d2
	add.l 52(%sp),%d1
	addx.l %d2,%d0
	move.l %d0,%d2
	and.l #252645135,%d2
	move.l %d2,40(%sp)
	move.l %d1,%d2
	and.l #252645135,%d2
	move.l %d2,44(%sp)
	move.l 44(%sp),%d1
	move.l 40(%sp),%d0
	move.l %d1,%d2
	add.l %d0,%d2
	move.l %d2,36(%sp)
	move.l 36(%sp),%d0
	clr.w %d0
	swap %d0
	move.l 36(%sp),%d1
	add.l %d0,%d1
	move.l %d1,32(%sp)
	move.l 32(%sp),%d0
	lsr.l #8,%d0
	add.l 32(%sp),%d0
	moveq #127,%d2
	and.l %d2,%d0
	movem.l (%sp)+,#252
	lea (48,%sp),%sp
	rts
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	lea (-20,%sp),%sp
	move.l %d2,-(%sp)
	move.l 28(%sp),20(%sp)
	move.l 20(%sp),%d0
	lsr.l #1,%d0
	and.l #1431655765,%d0
	move.l 20(%sp),%d1
	sub.l %d0,%d1
	move.l %d1,16(%sp)
	move.l 16(%sp),%d0
	lsr.l #2,%d0
	move.l %d0,%d1
	and.l #858993459,%d1
	move.l 16(%sp),%d0
	and.l #858993459,%d0
	move.l %d1,%d2
	add.l %d0,%d2
	move.l %d2,12(%sp)
	move.l 12(%sp),%d0
	lsr.l #4,%d0
	add.l 12(%sp),%d0
	move.l %d0,%d1
	and.l #252645135,%d1
	move.l %d1,8(%sp)
	move.l 8(%sp),%d0
	clr.w %d0
	swap %d0
	move.l 8(%sp),%d2
	add.l %d0,%d2
	move.l %d2,4(%sp)
	move.l 4(%sp),%d0
	lsr.l #8,%d0
	add.l 4(%sp),%d0
	moveq #63,%d1
	and.l %d1,%d0
	move.l (%sp)+,%d2
	lea (20,%sp),%sp
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
.L837:
	moveq #1,%d0
	and.l 48(%sp),%d0
	jeq .L834
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
.L834:
	move.l 48(%sp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,48(%sp)
	jeq .L842
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
	jra .L837
.L842:
	nop
	tst.l 24(%sp)
	jeq .L838
	move.l 32(%sp),-(%sp)
	move.l 32(%sp),-(%sp)
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
	move.l %d0,%a0
	move.l %d1,%d0
	move.l %a0,%d1
	jra .L840
.L838:
	move.l 28(%sp),%d1
	move.l 32(%sp),%d0
.L840:
	nop
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
.L847:
	moveq #1,%d0
	and.l 16(%sp),%d0
	jeq .L844
	move.l 12(%sp),-(%sp)
	move.l 8(%sp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,4(%sp)
.L844:
	move.l 16(%sp),%d0
	move.l %d0,%d1
	add.l %d1,%d1
	subx.l %d1,%d1
	neg.l %d1
	add.l %d1,%d0
	asr.l #1,%d0
	move.l %d0,16(%sp)
	jeq .L852
	move.l 12(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,12(%sp)
	jra .L847
.L852:
	nop
	tst.l (%sp)
	jeq .L848
	move.l 4(%sp),-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	jra .L850
.L848:
	move.l 4(%sp),%d0
.L850:
	nop
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
	jls .L854
	moveq #0,%d0
	jra .L859
.L854:
	move.l 8(%sp),%d1
	move.l (%sp),%d0
	cmp.l %d1,%d0
	jcc .L856
	moveq #2,%d0
	jra .L859
.L856:
	move.l 12(%sp),%d1
	move.l 4(%sp),%d0
	cmp.l %d1,%d0
	jls .L857
	moveq #0,%d0
	jra .L859
.L857:
	move.l 12(%sp),%d1
	move.l 4(%sp),%d0
	cmp.l %d1,%d0
	jcc .L858
	moveq #2,%d0
	jra .L859
.L858:
	moveq #1,%d0
.L859:
	lea (16,%sp),%sp
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
