#NO_APP
	.file	"mini-libc.c"
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%a1
	cmp.l %d0,%d1
	jcc .L2
	lea (%a1,%d1.l),%a0
	lea -1(%a1,%d0.l),%a1
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
	move.l %d0,%a2
	add.l %d1,%a1
	move.l %d1,%a0
	jra .L6
.L7:
	move.b (%a0)+,(%a2)+
.L6:
	cmp.l %a0,%a1
	jne .L7
.L5:
	move.l %d0,%a0
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.type	memccpy, @function
memccpy:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%fp),%d1
	moveq #0,%d2
	move.b 19(%fp),%d2
	move.l 12(%fp),%a1
	move.l 8(%fp),%a0
	jra .L9
.L11:
	subq.l #1,%d1
.L9:
	move.l %a0,%d0
	tst.l %d1
	jeq .L10
	move.b (%a1)+,(%a0)+
	moveq #0,%d3
	move.b -1(%a0),%d3
	cmp.l %d2,%d3
	jne .L11
.L10:
	tst.l %d1
	jeq .L13
	addq.l #1,%d0
	jra .L12
.L13:
	moveq #0,%d0
.L12:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%fp),%d1
	moveq #0,%d2
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	jra .L15
.L17:
	subq.l #1,%d1
.L15:
	move.l %a0,%d0
	tst.l %d1
	jeq .L16
	moveq #0,%d3
	move.b (%a0)+,%d3
	cmp.l %d2,%d3
	jne .L17
.L16:
	tst.l %d1
	jne .L18
	moveq #0,%d0
.L18:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),%d0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
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
	unlk %fp
	rts
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%a0
	move.l %d0,%a1
	move.l %a0,%d1
	add.l 16(%fp),%d1
	jra .L27
.L28:
	move.b (%a0)+,(%a1)+
.L27:
	cmp.l %a0,%d1
	jne .L28
	move.l %d0,%a0
	unlk %fp
	rts
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.type	memrchr, @function
memrchr:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	moveq #0,%d1
	move.b 15(%fp),%d1
	move.l 16(%fp),%d0
	subq.l #1,%d0
	jra .L30
.L32:
	moveq #0,%d2
	move.b (%a0,%d0.l),%d2
	move.l %d0,%a1
	subq.l #1,%a1
	cmp.l %d1,%d2
	jne .L33
	add.l %a0,%d0
	jra .L31
.L33:
	move.l %a1,%d0
.L30:
	moveq #-1,%d2
	cmp.l %d0,%d2
	jne .L32
	moveq #0,%d0
.L31:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l %d0,%d1
	add.l 16(%fp),%d1
	move.l %d0,%a0
	jra .L35
.L36:
	move.b 15(%fp),(%a0)+
.L35:
	cmp.l %a0,%d1
	jne .L36
	move.l %d0,%a0
	unlk %fp
	rts
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
	link.w %fp,#0
	move.l 12(%fp),%a1
	move.l 8(%fp),%a0
.L38:
	move.l %a0,%d0
	move.b (%a1)+,(%a0)+
	tst.b -1(%a0)
	jne .L38
	move.l %d0,%a0
	unlk %fp
	rts
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
	link.w %fp,#0
	move.l %d2,-(%sp)
	moveq #0,%d1
	move.b 15(%fp),%d1
	move.l 8(%fp),%a0
.L41:
	move.l %a0,%d0
	tst.b (%a0)+
	jeq .L40
	moveq #0,%d2
	move.b -1(%a0),%d2
	cmp.l %d1,%d2
	jne .L41
.L40:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	link.w %fp,#0
	move.l 8(%fp),%a0
.L44:
	move.l %a0,%d0
	move.b (%a0)+,%d1
	ext.w %d1
	move.w %d1,%a1
	cmp.l 12(%fp),%a1
	jeq .L43
	tst.b -1(%a0)
	jne .L44
	moveq #0,%d0
.L43:
	move.l %d0,%a0
	unlk %fp
	rts
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
.L48:
	move.l %a1,%a2
	move.l %a0,%a3
	cmpm.b (%a1)+,(%a0)+
	jne .L47
	tst.b -1(%a0)
	jne .L48
.L47:
	moveq #0,%d0
	move.b (%a3),%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
	link.w %fp,#0
	move.l 8(%fp),%d1
	move.l %d1,%a0
.L50:
	move.l %a0,%d0
	tst.b (%a0)+
	jne .L50
	sub.l %d1,%d0
	unlk %fp
	rts
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),%d0
	jeq .L55
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	add.l %a0,%d0
.L54:
	move.l %a1,%a2
	move.l %a0,%a3
	tst.b (%a0)+
	jeq .L53
	tst.b (%a1)
	jeq .L53
	cmp.l %a0,%d0
	jeq .L53
	move.b -1(%a0),%d1
	cmp.b (%a1)+,%d1
	jeq .L54
.L53:
	moveq #0,%d0
	move.b (%a3),%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
	jra .L52
.L55:
	moveq #0,%d0
.L52:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d1
	move.l 12(%fp),%a1
	move.l %d1,%a0
	jra .L57
.L58:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
.L57:
	move.l 16(%fp),%d0
	add.l %d1,%d0
	sub.l %a0,%d0
	moveq #1,%d2
	cmp.l %d0,%d2
	jlt .L58
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.type	isalpha, @function
isalpha:
	link.w %fp,#0
	moveq #32,%d0
	or.l 8(%fp),%d0
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
	cmp.l #128,8(%fp)
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
	move.l 8(%fp),%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	jeq .L63
	moveq #9,%d1
	cmp.l %d0,%d1
	jne .L64
	moveq #1,%d0
	jra .L62
.L63:
	moveq #1,%d0
	jra .L62
.L64:
	moveq #0,%d0
.L62:
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
	jcc .L67
	moveq #127,%d1
	cmp.l %d0,%d1
	jne .L68
	moveq #1,%d0
	jra .L66
.L67:
	moveq #1,%d0
	jra .L66
.L68:
	moveq #0,%d0
.L66:
	unlk %fp
	rts
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.type	isdigit, @function
isdigit:
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
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.type	isgraph, @function
isgraph:
	link.w %fp,#0
	moveq #-33,%d0
	add.l 8(%fp),%d0
	moveq #93,%d1
	cmp.l %d0,%d1
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
	moveq #-97,%d0
	add.l 8(%fp),%d0
	moveq #25,%d1
	cmp.l %d0,%d1
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
	moveq #-32,%d0
	add.l 8(%fp),%d0
	moveq #94,%d1
	cmp.l %d0,%d1
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
	move.l 8(%fp),%a0
	moveq #32,%d0
	cmp.l %a0,%d0
	jeq .L75
	lea (-9,%a0),%a0
	moveq #4,%d0
	cmp.l %a0,%d0
	jcs .L76
	moveq #1,%d0
	jra .L74
.L75:
	moveq #1,%d0
	jra .L74
.L76:
	moveq #0,%d0
.L74:
	unlk %fp
	rts
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.type	isupper, @function
isupper:
	link.w %fp,#0
	moveq #-65,%d0
	add.l 8(%fp),%d0
	moveq #25,%d1
	cmp.l %d0,%d1
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
	move.l 8(%fp),%a0
	moveq #31,%d0
	cmp.l %a0,%d0
	jcc .L80
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcc .L81
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L82
	add.l #-65529,%a0
	moveq #2,%d0
	cmp.l %a0,%d0
	jcs .L83
	moveq #1,%d0
	jra .L79
.L80:
	moveq #1,%d0
	jra .L79
.L81:
	moveq #1,%d0
	jra .L79
.L82:
	moveq #1,%d0
	jra .L79
.L83:
	moveq #0,%d0
.L79:
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
	move.l 8(%fp),%d0
	cmp.l #254,%d0
	jhi .L86
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L87
.L86:
	cmp.l #8231,%d0
	jls .L88
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L89
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L90
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L91
	and.l #65534,%d0
	cmp.l #65534,%d0
	jeq .L92
	moveq #1,%d0
	jra .L87
.L88:
	moveq #1,%d0
	jra .L87
.L89:
	moveq #1,%d0
	jra .L87
.L90:
	moveq #1,%d0
	jra .L87
.L91:
	moveq #0,%d0
	jra .L87
.L92:
	moveq #0,%d0
.L87:
	unlk %fp
	rts
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	link.w %fp,#0
	move.w #-48,%a0
	add.l 8(%fp),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L95
	moveq #32,%d0
	or.l 8(%fp),%d0
	move.l %d0,%a0
	lea (-97,%a0),%a0
	moveq #5,%d0
	cmp.l %a0,%d0
	jcs .L96
	moveq #1,%d0
	jra .L94
.L95:
	moveq #1,%d0
	jra .L94
.L96:
	moveq #0,%d0
.L94:
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
	movem.l #15360,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%d5
	move.l 16(%fp),%d2
	move.l 20(%fp),%d3
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L101
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L102
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L105
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
	jra .L99
.L101:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L99
.L102:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L99
.L105:
	clr.l %d0
	clr.l %d1
.L99:
	movem.l -16(%fp),#60
	unlk %fp
	rts
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d3
	move.l 12(%fp),%d2
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L109
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L110
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L113
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	jra .L107
.L109:
	move.l %d3,%d0
	jra .L107
.L110:
	move.l %d2,%d0
	jra .L107
.L113:
	moveq #0,%d0
.L107:
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	rts
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l 16(%fp),%d4
	move.l 20(%fp),%d5
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
	jne .L115
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d4,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L116
	move.l %d2,%d0
	move.l %d1,%d0
	jeq .L115
	move.l %d4,%d2
	move.l %d5,%d3
	jra .L115
.L116:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L115
	move.l %d4,%d2
	move.l %d5,%d3
	jra .L115
.L118:
	move.l %d4,%d2
	move.l %d5,%d3
.L115:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l -16(%fp),#60
	unlk %fp
	rts
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L128
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L125
	move.l %d2,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L126
	move.l %d2,%d0
	move.l %d1,%d0
	jeq .L125
	move.l %d3,%d2
	jra .L125
.L126:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L125
	move.l %d3,%d2
	jra .L125
.L128:
	move.l %d3,%d2
.L125:
	move.l %d2,%d0
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	rts
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
	link.w %fp,#0
	movem.l #15420,-(%sp)
	move.l %a1,%a2
	move.l 8(%fp),%d3
	move.l 12(%fp),%d4
	move.l 16(%fp),%d5
	move.l 20(%fp),%a3
	move.l 24(%fp),%a4
	move.l 28(%fp),%a5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L149
	move.l %a3,(%a2)
	move.l %a4,4(%a2)
	move.l %a5,8(%a2)
	jra .L134
.L149:
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L150
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L134
.L150:
	move.l %d3,%d1
	and.l #-2147483648,%d1
	move.l %a3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L140
	move.l %d3,%d0
	move.l %d1,%d0
	jeq .L144
	move.l %a3,%d0
	move.l %a4,%d1
	move.l %a5,%d2
	jra .L141
.L144:
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L141:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L134
.L140:
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L151
	move.l %a3,%d0
	move.l %a4,%d1
	move.l %a5,%d2
	jra .L142
.L151:
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L142:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L134:
	move.l %a2,%a0
	movem.l -32(%fp),#15420
	unlk %fp
	rts
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%d5
	move.l 16(%fp),%d2
	move.l 20(%fp),%d3
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L153
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L157
	move.l %d4,%d1
	and.l #-2147483648,%d1
	move.l %d2,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L154
	move.l %d4,%d0
	move.l %d1,%d0
	jeq .L153
	move.l %d4,%d2
	move.l %d5,%d3
	jra .L153
.L154:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L153
	move.l %d4,%d2
	move.l %d5,%d3
	jra .L153
.L157:
	move.l %d4,%d2
	move.l %d5,%d3
.L153:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l -16(%fp),#60
	unlk %fp
	rts
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d3
	move.l 12(%fp),%d2
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L163
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L167
	move.l %d3,%d1
	and.l #-2147483648,%d1
	move.l %d2,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L164
	move.l %d3,%d0
	move.l %d1,%d0
	jeq .L163
	move.l %d3,%d2
	jra .L163
.L164:
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jge .L163
	move.l %d3,%d2
	jra .L163
.L167:
	move.l %d3,%d2
.L163:
	move.l %d2,%d0
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	rts
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
	link.w %fp,#0
	movem.l #15420,-(%sp)
	move.l %a1,%a2
	move.l 8(%fp),%d3
	move.l 12(%fp),%d4
	move.l 16(%fp),%d5
	move.l 20(%fp),%a3
	move.l 24(%fp),%a4
	move.l 28(%fp),%a5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L187
	move.l %a3,(%a2)
	move.l %a4,4(%a2)
	move.l %a5,8(%a2)
	jra .L172
.L187:
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L188
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	jra .L172
.L188:
	move.l %d3,%d1
	and.l #-2147483648,%d1
	move.l %a3,%d0
	and.l #-2147483648,%d0
	cmp.l %d1,%d0
	jeq .L178
	move.l %d3,%d0
	move.l %d1,%d0
	jeq .L182
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L179
.L182:
	move.l %a3,%d0
	move.l %a4,%d1
	move.l %a5,%d2
.L179:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
	jra .L172
.L178:
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jge .L189
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L180
.L189:
	move.l %a3,%d0
	move.l %a4,%d1
	move.l %a5,%d2
.L180:
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d2,8(%a2)
.L172:
	move.l %a2,%a0
	movem.l -32(%fp),#15420
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
	link.w %fp,#0
	move.l 8(%fp),%d0
	lea (s.0),%a0
	jra .L191
.L192:
	moveq #63,%d1
	and.l %d0,%d1
	lea digits,%a1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
.L191:
	tst.l %d0
	jne .L192
	clr.b (%a0)
	move.l #s.0,%d0
	move.l %d0,%a0
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
	move.l 8(%fp),%d0
	subq.l #1,%d0
	move.l %d0,seed+4
	clr.l seed
	unlk %fp
	rts
	.size	srand, .-srand
	.align	2
	.globl	rand
	.type	rand, @function
rand:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l #1284865837,-(%sp)
	move.l #1481765933,-(%sp)
	move.l seed+4,-(%sp)
	move.l seed,-(%sp)
	jsr __muldi3
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
	clr.l %d0
	moveq #1,%d1
	add.l %d3,%d1
	addx.l %d2,%d0
	move.l %d0,seed
	move.l %d1,seed+4
	lsr.l #1,%d0
	move.l %d0,%d1
	moveq #0,%d0
	move.l %d1,%d0
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	rts
	.size	rand, .-rand
	.align	2
	.globl	insque
	.type	insque, @function
insque:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	cmp.w #0,%a1
	jne .L196
	clr.l 4(%a0)
	clr.l (%a0)
	jra .L195
.L196:
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	tst.l (%a0)
	jeq .L195
	move.l (%a0),%a1
	move.l %a0,4(%a1)
.L195:
	unlk %fp
	rts
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.l (%a0)
	jeq .L199
	move.l (%a0),%a1
	move.l 4(%a0),4(%a1)
.L199:
	tst.l 4(%a0)
	jeq .L198
	move.l 4(%a0),%a1
	move.l (%a0),(%a1)
.L198:
	unlk %fp
	rts
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
	link.w %fp,#0
	movem.l #16160,-(%sp)
	move.l 8(%fp),%d7
	move.l 12(%fp),%d2
	move.l 16(%fp),%a2
	move.l 20(%fp),%d3
	move.l (%a2),%d5
	move.l %d2,%d6
	moveq #0,%d4
	jra .L202
.L205:
	move.l %d6,-(%sp)
	move.l %d7,-(%sp)
	move.l 24(%fp),%a0
	jsr (%a0)
	addq.l #8,%sp
	add.l %d3,%d6
	tst.l %d0
	jne .L203
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d2,%d0
	jra .L204
.L203:
	addq.l #1,%d4
.L202:
	cmp.l %d4,%d5
	jne .L205
	move.l %d5,%d0
	addq.l #1,%d0
	move.l %d0,(%a2)
	move.l %d5,-(%sp)
	move.l %d3,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d0,%d2
	move.l %d3,-(%sp)
	move.l %d7,-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
	move.l %a0,%d0
.L204:
	move.l %d0,%a0
	movem.l -28(%fp),#1276
	unlk %fp
	rts
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.type	lfind, @function
lfind:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 20(%fp),%d4
	move.l 16(%fp),%a0
	move.l (%a0),%d5
	move.l 12(%fp),%d3
	moveq #0,%d2
	jra .L207
.L210:
	move.l %d3,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 24(%fp),%a0
	jsr (%a0)
	addq.l #8,%sp
	add.l %d4,%d3
	tst.l %d0
	jne .L208
	move.l %d4,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l 12(%fp),%d0
	jra .L209
.L208:
	addq.l #1,%d2
.L207:
	cmp.l %d2,%d5
	jne .L210
	moveq #0,%d0
.L209:
	move.l %d0,%a0
	movem.l -16(%fp),#60
	unlk %fp
	rts
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	link.w %fp,#0
	move.l 8(%fp),%d0
	jpl .L212
	neg.l %d0
.L212:
	unlk %fp
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a3
.L214:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L214
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L220
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L221
	move.w #1,%a1
	jra .L215
.L220:
	sub.l %a1,%a1
.L215:
	addq.l #1,%a2
	jra .L216
.L221:
	sub.l %a1,%a1
.L216:
	moveq #0,%d0
	jra .L217
.L218:
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	move.b -1(%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	move.l %d1,%d0
	sub.l %a0,%d0
.L217:
	move.b (%a2)+,%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcc .L218
	cmp.w #0,%a1
	jne .L219
	neg.l %d0
.L219:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a3
.L224:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
	addq.l #4,%sp
	tst.l %d0
	jne .L224
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	cmp.w #43,%d0
	jeq .L230
	moveq #45,%d0
	cmp.l %a0,%d0
	jne .L231
	move.w #1,%a1
	jra .L225
.L230:
	sub.l %a1,%a1
.L225:
	addq.l #1,%a2
	jra .L226
.L231:
	sub.l %a1,%a1
.L226:
	moveq #0,%d0
	jra .L227
.L228:
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	move.b -1(%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	move.l %d1,%d0
	sub.l %a0,%d0
.L227:
	move.b (%a2)+,%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcc .L228
	cmp.w #0,%a1
	jne .L229
	neg.l %d0
.L229:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
.L234:
	move.l %a3,%a2
	move.b (%a3)+,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr isspace
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
	move.w #1,%a1
	jra .L235
.L240:
	sub.l %a1,%a1
.L235:
	addq.l #1,%a2
	jra .L236
.L241:
	sub.l %a1,%a1
.L236:
	clr.l %d2
	clr.l %d3
	jra .L237
.L238:
	move.l %d2,%d0
	move.l %d3,%d1
	add.l %d1,%d1
	addx.l %d0,%d0
	add.l %d1,%d1
	addx.l %d0,%d0
	add.l %d3,%d1
	addx.l %d2,%d0
	move.l %d0,%d2
	move.l %d1,%d3
	add.l %d3,%d3
	addx.l %d2,%d2
	move.l %d2,%d0
	move.l %d3,%d1
	move.b -1(%a2),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l #-48,%d1
	add.l %a0,%d1
	smi %d0
	ext.w %d0
	ext.l %d0
	sub.l %d1,%d3
	subx.l %d0,%d2
.L237:
	move.b (%a2)+,%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L238
	cmp.w #0,%a1
	jne .L242
	move.l %d2,%d0
	move.l %d3,%d1
	neg.l %d1
	negx.l %d0
	jra .L239
.L242:
	move.l %d2,%d0
	move.l %d3,%d1
.L239:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
	link.w %fp,#0
	movem.l #14336,-(%sp)
	move.l 16(%fp),%d3
	move.l 20(%fp),%d4
	jra .L244
.L248:
	move.l %d4,-(%sp)
	move.l %d3,%d0
	lsr.l #1,%d0
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l 12(%fp),%d2
	add.l %d0,%d2
	move.l %d2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 24(%fp),%a0
	jsr (%a0)
	addq.l #8,%sp
	tst.l %d0
	jge .L245
	lsr.l #1,%d3
	jra .L244
.L245:
	tst.l %d0
	jle .L249
	add.l %d4,%d2
	move.l %d2,12(%fp)
	move.l %d3,%d0
	lsr.l #1,%d0
	subq.l #1,%d3
	sub.l %d0,%d3
.L244:
	tst.l %d3
	jne .L248
	moveq #0,%d0
	jra .L247
.L249:
	move.l %d2,%d0
.L247:
	move.l %d0,%a0
	movem.l -12(%fp),#28
	unlk %fp
	rts
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 20(%fp),%d5
	move.l 16(%fp),%d3
	move.l 12(%fp),%d4
	jra .L251
.L254:
	move.l %d5,-(%sp)
	move.l %d3,%d0
	asr.l #1,%d0
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l %d4,%d2
	add.l %d0,%d2
	move.l 28(%fp),-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 24(%fp),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L255
	jle .L253
	move.l %d2,%d4
	add.l %d5,%d4
	subq.l #1,%d3
.L253:
	asr.l #1,%d3
.L251:
	tst.l %d3
	jne .L254
	moveq #0,%d0
	jra .L252
.L255:
	move.l %d2,%d0
.L252:
	move.l %d0,%a0
	movem.l -16(%fp),#60
	unlk %fp
	rts
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
	link.w %fp,#0
	movem.l #14336,-(%sp)
	move.l 8(%fp),%d3
	move.l 12(%fp),%d4
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __divsi3
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	move.l %d0,%a0
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	move.l %a0,%d1
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
	jge .L258
	neg.l %d1
	negx.l %d0
.L258:
	unlk %fp
	rts
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	link.w %fp,#0
	movem.l #16160,-(%sp)
	move.l %a1,%a2
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l 16(%fp),%d4
	move.l 20(%fp),%d5
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
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %d6,(%a2)
	move.l %d7,4(%a2)
	move.l %a0,8(%a2)
	move.l %a1,12(%a2)
	move.l %a2,%a0
	movem.l -28(%fp),#1276
	unlk %fp
	rts
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.type	labs, @function
labs:
	link.w %fp,#0
	move.l 8(%fp),%d0
	jpl .L261
	neg.l %d0
.L261:
	unlk %fp
	rts
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.type	ldiv, @function
ldiv:
	link.w %fp,#0
	movem.l #14336,-(%sp)
	move.l 8(%fp),%d3
	move.l 12(%fp),%d4
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __divsi3
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	move.l %d0,%a0
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	move.l %a0,%d1
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
	jge .L264
	neg.l %d1
	negx.l %d0
.L264:
	unlk %fp
	rts
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.type	lldiv, @function
lldiv:
	link.w %fp,#0
	movem.l #16160,-(%sp)
	move.l %a1,%a2
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l 16(%fp),%d4
	move.l 20(%fp),%d5
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
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %d6,(%a2)
	move.l %d7,4(%a2)
	move.l %a0,8(%a2)
	move.l %a1,12(%a2)
	move.l %a2,%a0
	movem.l -28(%fp),#1276
	unlk %fp
	rts
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.type	wcschr, @function
wcschr:
	link.w %fp,#0
	move.l 12(%fp),%d1
	move.l 8(%fp),%a0
.L268:
	move.l %a0,%d0
	tst.l (%a0)+
	jeq .L267
	cmp.l -4(%a0),%d1
	jne .L268
.L267:
	move.l %d0,%a0
	tst.l (%a0)
	jne .L269
	moveq #0,%d0
.L269:
	move.l %d0,%a0
	unlk %fp
	rts
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
.L273:
	move.l %a0,%a2
	move.l %a1,%a3
	cmpm.l (%a0)+,(%a1)+
	jne .L272
	tst.l -4(%a1)
	jeq .L272
	tst.l -4(%a0)
	jne .L273
.L272:
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L275
	sgt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L274
.L275:
	moveq #-1,%d0
.L274:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%a1
	move.l %d0,%a0
.L277:
	move.l (%a1)+,(%a0)+
	tst.l -4(%a0)
	jne .L277
	move.l %d0,%a0
	unlk %fp
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	link.w %fp,#0
	move.l 8(%fp),%d1
	move.l %d1,%a0
.L279:
	move.l %a0,%d0
	tst.l (%a0)+
	jne .L279
	sub.l %d1,%d0
	asr.l #2,%d0
	unlk %fp
	rts
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),%d0
	move.l 12(%fp),%a1
	move.l 8(%fp),%a0
	jra .L281
.L283:
	subq.l #1,%d0
.L281:
	move.l %a1,%a2
	move.l %a0,%a3
	tst.l %d0
	jeq .L282
	move.l (%a0),%d1
	cmp.l (%a1),%d1
	jne .L282
	tst.l (%a0)+
	jeq .L282
	tst.l (%a1)+
	jne .L283
.L282:
	tst.l %d0
	jeq .L285
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L286
	sgt %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	jra .L284
.L285:
	moveq #0,%d0
	jra .L284
.L286:
	moveq #-1,%d0
.L284:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	link.w %fp,#0
	move.l 12(%fp),%a1
	move.l 16(%fp),%d1
	move.l 8(%fp),%a0
	jra .L288
.L290:
	subq.l #1,%d1
.L288:
	move.l %a0,%d0
	tst.l %d1
	jeq .L289
	cmp.l (%a0)+,%a1
	jne .L290
.L289:
	tst.l %d1
	jne .L291
	moveq #0,%d0
.L291:
	move.l %d0,%a0
	unlk %fp
	rts
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),%d0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	jra .L294
.L296:
	subq.l #1,%d0
.L294:
	move.l %a0,%a2
	move.l %a1,%a3
	tst.l %d0
	jeq .L295
	cmpm.l (%a0)+,(%a1)+
	jeq .L296
.L295:
	tst.l %d0
	jeq .L298
	move.l (%a3),%d0
	cmp.l (%a2),%d0
	jlt .L299
	sgt %d0
	neg.b %d0
	move.b %d0,%d0
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
	unlk %fp
	rts
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%a1
	move.l 16(%fp),%d1
	move.l %d0,%a0
	jra .L301
.L302:
	move.l (%a1)+,(%a0)+
.L301:
	dbra %d1,.L302
	clr.w %d1
	subq.l #1,%d1
	jcc .L302
	move.l %d0,%a0
	unlk %fp
	rts
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%a1
	move.l 16(%fp),%d1
	cmp.l %d0,%a1
	jeq .L304
	move.l %d0,%d2
	sub.l %a1,%d2
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%a0
	cmp.l %d2,%a0
	jhi .L305
	move.l %d0,%a0
	jra .L306
.L305:
	move.l %d1,%a0
	subq.l #1,%a0
	add.l %a0,%a0
	add.l %a0,%a0
	add.l %a0,%a1
	add.l %d0,%a0
	jra .L307
.L308:
	move.l (%a1),(%a0)
	subq.l #4,%a1
	subq.l #4,%a0
.L307:
	dbra %d1,.L308
	clr.w %d1
	subq.l #1,%d1
	jcc .L308
	jra .L304
.L309:
	move.l (%a1)+,(%a0)+
.L306:
	dbra %d1,.L309
	clr.w %d1
	subq.l #1,%d1
	jcc .L309
.L304:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 16(%fp),%d1
	move.l %d0,%a0
	jra .L311
.L312:
	move.l 12(%fp),(%a0)+
.L311:
	dbra %d1,.L312
	clr.w %d1
	subq.l #1,%d1
	jcc .L312
	move.l %d0,%a0
	unlk %fp
	rts
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%a1
	move.l 16(%fp),%d1
	cmp.l %d0,%a1
	jls .L314
	move.l %d0,%a0
	add.l %d1,%a0
	lea -1(%a1,%d1.l),%a1
	jra .L315
.L316:
	move.b -(%a0),(%a1)
	subq.l #1,%a1
.L315:
	cmp.l %a0,%d0
	jne .L316
	jra .L313
.L314:
	cmp.l %d0,%a1
	jeq .L313
	add.l %d0,%d1
	move.l %d0,%a0
	jra .L318
.L319:
	move.b (%a0)+,(%a1)+
.L318:
	cmp.l %a0,%d1
	jne .L319
.L313:
	unlk %fp
	rts
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.type	rotl64, @function
rotl64:
	link.w %fp,#0
	movem.l #16128,-(%sp)
	move.l 8(%fp),%d6
	move.l 12(%fp),%d7
	move.l 16(%fp),%d0
	moveq #-32,%d1
	add.l %d0,%d1
	jmi .L321
	clr.l %d4
	clr.l %d5
	move.l %d7,%d4
	lsl.l %d1,%d4
	moveq #0,%d5
	jra .L322
.L321:
	move.l %d7,%d1
	lsr.l #1,%d1
	moveq #31,%d2
	sub.l %d0,%d2
	lsr.l %d2,%d1
	clr.l %d4
	clr.l %d5
	move.l %d6,%d4
	lsl.l %d0,%d4
	or.l %d1,%d4
	move.l %d7,%d5
	lsl.l %d0,%d5
.L322:
	move.l %d0,%d1
	neg.l %d1
	moveq #63,%d2
	and.l %d2,%d1
	moveq #-32,%d2
	add.l %d2,%d1
	jmi .L323
	clr.l %d2
	clr.l %d3
	move.l %d6,%d3
	lsr.l %d1,%d3
	moveq #0,%d2
	jra .L324
.L323:
	move.l %d6,%d1
	add.l %d1,%d1
	neg.l %d0
	moveq #63,%d2
	and.l %d2,%d0
	moveq #31,%d2
	sub.l %d0,%d2
	lsl.l %d2,%d1
	clr.l %d2
	clr.l %d3
	move.l %d7,%d3
	lsr.l %d0,%d3
	or.l %d1,%d3
	move.l %d6,%d2
	lsr.l %d0,%d2
.L324:
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	or.l %d4,%d0
	move.l %d3,%d1
	or.l %d5,%d1
	move.l %d0,%d2
	move.l %d1,%d3
	movem.l (%sp)+,#252
	unlk %fp
	rts
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
	link.w %fp,#0
	movem.l #16128,-(%sp)
	move.l 8(%fp),%d6
	move.l 12(%fp),%d7
	move.l 16(%fp),%d0
	moveq #-32,%d1
	add.l %d0,%d1
	jmi .L326
	clr.l %d4
	clr.l %d5
	move.l %d6,%d5
	lsr.l %d1,%d5
	moveq #0,%d4
	jra .L327
.L326:
	move.l %d6,%d1
	add.l %d1,%d1
	moveq #31,%d2
	sub.l %d0,%d2
	lsl.l %d2,%d1
	clr.l %d4
	clr.l %d5
	move.l %d7,%d5
	lsr.l %d0,%d5
	or.l %d1,%d5
	move.l %d6,%d4
	lsr.l %d0,%d4
.L327:
	move.l %d0,%d1
	neg.l %d1
	moveq #63,%d2
	and.l %d2,%d1
	moveq #-32,%d2
	add.l %d2,%d1
	jmi .L328
	clr.l %d2
	clr.l %d3
	move.l %d7,%d2
	lsl.l %d1,%d2
	moveq #0,%d3
	jra .L329
.L328:
	move.l %d7,%d1
	lsr.l #1,%d1
	neg.l %d0
	moveq #63,%d2
	and.l %d2,%d0
	moveq #31,%d2
	sub.l %d0,%d2
	lsr.l %d2,%d1
	clr.l %d2
	clr.l %d3
	move.l %d6,%d2
	lsl.l %d0,%d2
	or.l %d1,%d2
	move.l %d7,%d3
	lsl.l %d0,%d3
.L329:
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	or.l %d4,%d0
	move.l %d3,%d1
	or.l %d5,%d1
	move.l %d0,%d2
	move.l %d1,%d3
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
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%fp),%d0
	moveq #0,%d1
	move.w 10(%fp),%d1
	move.l %d1,%d2
	lsl.l %d0,%d2
	moveq #16,%d3
	sub.l %d0,%d3
	move.l %d1,%d0
	lsr.l %d3,%d0
	or.w %d2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.type	rotr16, @function
rotr16:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%fp),%d0
	moveq #0,%d1
	move.w 10(%fp),%d1
	move.l %d1,%d2
	lsr.l %d0,%d2
	moveq #16,%d3
	sub.l %d0,%d3
	move.l %d1,%d0
	lsl.l %d3,%d0
	or.w %d2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.type	rotl8, @function
rotl8:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%fp),%d0
	moveq #0,%d1
	move.b 11(%fp),%d1
	move.l %d1,%d2
	lsl.l %d0,%d2
	moveq #8,%d3
	sub.l %d0,%d3
	move.l %d1,%d0
	lsr.l %d3,%d0
	or.b %d2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.type	rotr8, @function
rotr8:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%fp),%d0
	moveq #0,%d1
	move.b 11(%fp),%d1
	move.l %d1,%d2
	lsr.l %d0,%d2
	moveq #8,%d3
	sub.l %d0,%d3
	move.l %d1,%d0
	lsl.l %d3,%d0
	or.b %d2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
	link.w %fp,#0
	clr.w %d0
	move.b 10(%fp),%d0
	clr.w %d1
	move.b 11(%fp),%d1
	lsl.w #8,%d1
	or.w %d1,%d0
	unlk %fp
	rts
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d1
	move.l %d1,%d2
	clr.w %d2
	swap %d2
	lsr.w #8,%d2
	move.l %d1,%d0
	and.l #16711680,%d0
	lsr.l #8,%d0
	or.l %d2,%d0
	move.l %d1,%d2
	and.l #65280,%d2
	lsl.l #8,%d2
	or.l %d2,%d0
	lsl.w #8,%d1
	swap %d1
	clr.w %d1
	or.l %d1,%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
	link.w %fp,#0
	movem.l #15872,-(%sp)
	clr.l %d0
	clr.l %d1
	move.l 8(%fp),%d0
	and.l #-16777216,%d0
	moveq #0,%d1
	moveq #24,%d1
	lsr.l %d1,%d0
	move.l %d0,%d1
	moveq #0,%d0
	clr.l %d2
	clr.l %d3
	move.l 8(%fp),%d2
	and.l #16711680,%d2
	moveq #0,%d3
	lsr.l #8,%d2
	move.l %d2,%d3
	moveq #0,%d2
	clr.l %d4
	clr.l %d5
	move.l %d2,%d4
	or.l %d0,%d4
	move.l %d3,%d5
	or.l %d1,%d5
	clr.l %d2
	clr.l %d3
	move.l 8(%fp),%d2
	and.l #65280,%d2
	moveq #0,%d3
	clr.l %d0
	clr.l %d1
	move.l %d2,%d1
	lsl.l #8,%d1
	move.l %d2,%d0
	clr.w %d0
	swap %d0
	lsr.w #8,%d0
	clr.l %d2
	clr.l %d3
	move.l %d4,%d2
	or.l %d0,%d2
	move.l %d5,%d3
	or.l %d1,%d3
	clr.l %d0
	clr.l %d1
	moveq #0,%d0
	not.b %d0
	and.l 8(%fp),%d0
	moveq #0,%d1
	move.b %d0,%d1
	lsr.l #8,%d0
	ror.l #8,%d1
	clr.l %d4
	clr.l %d5
	move.l %d2,%d4
	or.l %d0,%d4
	move.l %d3,%d5
	or.l %d1,%d5
	clr.l %d0
	clr.l %d1
	move.l 12(%fp),%d1
	and.l #-16777216,%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	clr.l %d2
	clr.l %d3
	move.l %d4,%d2
	or.l %d0,%d2
	move.l %d5,%d3
	or.l %d1,%d3
	clr.l %d4
	clr.l %d5
	move.l 12(%fp),%d5
	and.l #16711680,%d5
	move.l %d5,%d6
	lsr.l #8,%d6
	clr.l %d0
	clr.l %d1
	move.l %d4,%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d6,%d0
	move.l %d5,%d1
	lsl.w #8,%d1
	swap %d1
	clr.w %d1
	clr.l %d4
	clr.l %d5
	move.l %d2,%d4
	or.l %d0,%d4
	move.l %d3,%d5
	or.l %d1,%d5
	clr.l %d0
	clr.l %d1
	move.l 12(%fp),%d1
	and.l #65280,%d1
	lsl.l #8,%d1
	move.l %d1,%d0
	moveq #0,%d1
	clr.l %d2
	clr.l %d3
	move.l %d4,%d2
	or.l %d0,%d2
	move.l %d5,%d3
	or.l %d1,%d3
	clr.l %d4
	clr.l %d5
	moveq #0,%d5
	not.b %d5
	and.l 12(%fp),%d5
	moveq #24,%d4
	lsl.l %d4,%d5
	move.l %d5,%d4
	moveq #0,%d5
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	or.l %d4,%d0
	move.l %d3,%d1
	or.l %d5,%d1
	movem.l (%sp)+,#124
	unlk %fp
	rts
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d1
	moveq #0,%d0
	jra .L342
.L345:
	btst %d0,%d1
	jeq .L343
	addq.l #1,%d0
	jra .L344
.L343:
	addq.l #1,%d0
.L342:
	moveq #32,%d2
	cmp.l %d0,%d2
	jne .L345
	moveq #0,%d0
.L344:
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	link.w %fp,#0
	move.l 8(%fp),%d1
	jeq .L350
	moveq #1,%d0
	jra .L348
.L349:
	asr.l #1,%d1
	addq.l #1,%d0
.L348:
	btst #0,%d1
	jeq .L349
	jra .L347
.L350:
	moveq #0,%d0
.L347:
	unlk %fp
	rts
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	move.l #0xff7fffff,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L354
	move.l #0x7f7fffff,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L357
	moveq #1,%d0
	jra .L352
.L354:
	moveq #1,%d0
	jra .L352
.L357:
	moveq #0,%d0
.L352:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	pea -1.w
	move.l #-1048577,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L361
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L364
	moveq #1,%d0
	jra .L359
.L361:
	moveq #1,%d0
	jra .L359
.L364:
	moveq #0,%d0
.L359:
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
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
	movem.l #7168,-(%sp)
	move.l 8(%fp),%d3
	move.l 12(%fp),%d4
	move.l 16(%fp),%d5
	move.l .LC0+8,-(%sp)
	move.l .LC0+4,-(%sp)
	move.l .LC0,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L368
	move.l .LC1+8,-(%sp)
	move.l .LC1+4,-(%sp)
	move.l .LC1,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtxf2
	lea (24,%sp),%sp
	tst.l %d0
	jle .L371
	moveq #1,%d0
	jra .L366
.L368:
	moveq #1,%d0
	jra .L366
.L371:
	moveq #0,%d0
.L366:
	movem.l -12(%fp),#56
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
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	lea (-12,%fp),%a1
	jsr __extenddfxf2
	addq.l #8,%sp
	move.l 8(%fp),%a0
	move.l -12(%fp),%d0
	move.l -8(%fp),%d1
	move.l -4(%fp),%d2
	move.l %d0,(%a0)
	move.l %d1,4(%a0)
	move.l %d2,8(%a0)
	move.l -16(%fp),%d2
	unlk %fp
	rts
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
	link.w %fp,#0
	movem.l #14336,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L374
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L374
	tst.l %d3
	jge .L379
	move.l #0x3f000000,%d4
	jra .L378
.L379:
	move.l #0x40000000,%d4
.L378:
	btst #0,%d3
	jeq .L377
	move.l %d4,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,%d2
.L377:
	move.l %d3,%d3
	jpl .L381
	addq.l #1,%d3
.L381:
	asr.l #1,%d3
	jeq .L374
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L378
.L374:
	move.l %d2,%d0
	movem.l -12(%fp),#28
	unlk %fp
	rts
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
	link.w %fp,#0
	movem.l #15104,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l 16(%fp),%d4
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L383
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L383
	tst.l %d4
	jge .L388
	move.l #1071644672,%d6
	clr.l %d7
	jra .L387
.L388:
	move.l #1073741824,%d6
	clr.l %d7
.L387:
	btst #0,%d4
	jeq .L386
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
.L386:
	move.l %d4,%d4
	jpl .L390
	addq.l #1,%d4
.L390:
	asr.l #1,%d4
	jeq .L383
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,%d6
	move.l %d1,%d7
	jra .L387
.L383:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l -20(%fp),#220
	unlk %fp
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
	link.w %fp,#-12
	movem.l #15420,-(%sp)
	move.l %a1,%a5
	move.l 8(%fp),%d3
	move.l 12(%fp),%d4
	move.l 16(%fp),%d5
	move.l 20(%fp),%d2
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L392
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	lea (-12,%fp),%a1
	jsr __addxf3
	lea (24,%sp),%sp
	move.l -4(%fp),-(%sp)
	move.l -8(%fp),-(%sp)
	move.l -12(%fp),-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __nexf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L392
	tst.l %d2
	jge .L397
	move.l .LC3,%a2
	move.l .LC3+4,%a3
	move.l .LC3+8,%a4
	jra .L396
.L397:
	move.l .LC2,%a2
	move.l .LC2+4,%a3
	move.l .LC2+8,%a4
.L396:
	btst #0,%d2
	jeq .L395
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	lea (-12,%fp),%a1
	jsr __mulxf3
	lea (24,%sp),%sp
	move.l -12(%fp),%d3
	move.l -8(%fp),%d4
	move.l -4(%fp),%d5
.L395:
	move.l %d2,%d2
	jpl .L399
	addq.l #1,%d2
.L399:
	asr.l #1,%d2
	jeq .L392
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	lea (-12,%fp),%a1
	jsr __mulxf3
	lea (24,%sp),%sp
	move.l -12(%fp),%a2
	move.l -8(%fp),%a3
	move.l -4(%fp),%a4
	jra .L396
.L392:
	move.l %d3,(%a5)
	move.l %d4,4(%a5)
	move.l %d5,8(%a5)
	move.l %a5,%a0
	movem.l -44(%fp),#15420
	unlk %fp
	rts
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%a0
	move.l %a0,%d1
	add.l 16(%fp),%d1
	move.l %d0,%a1
	jra .L401
.L402:
	move.b (%a0)+,%d2
	move.b (%a1)+,%d3
	eor.b %d3,%d2
	move.b %d2,-1(%a1)
.L401:
	cmp.l %a0,%d1
	jne .L402
	move.l %d0,%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 8(%fp),%d2
	move.l 16(%fp),%d3
	move.l %d2,-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l 12(%fp),%a1
	move.l %d2,%a0
	add.l %d0,%a0
	jra .L404
.L406:
	subq.l #1,%d3
.L404:
	move.l %a0,%a2
	tst.l %d3
	jeq .L405
	move.b (%a1)+,(%a0)+
	tst.b -1(%a0)
	jne .L406
.L405:
	tst.l %d3
	jne .L407
	clr.b (%a2)
.L407:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l -12(%fp),#1036
	unlk %fp
	rts
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.type	strnlen, @function
strnlen:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #0,%d0
	jra .L409
.L411:
	addq.l #1,%d0
.L409:
	cmp.l 12(%fp),%d0
	jeq .L410
	tst.b (%a0,%d0.l)
	jne .L411
.L410:
	unlk %fp
	rts
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	link.w %fp,#0
	move.l 8(%fp),%a0
	jra .L413
.L415:
	move.b -1(%a1),%d1
	cmp.b -1(%a0),%d1
	jeq .L414
.L416:
	tst.b (%a1)+
	jne .L415
.L413:
	move.l %a0,%d0
	tst.b (%a0)+
	jeq .L418
	move.l 12(%fp),%a1
	jra .L416
.L418:
	moveq #0,%d0
.L414:
	move.l %d0,%a0
	unlk %fp
	rts
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	moveq #0,%d0
.L421:
	move.l %a0,%d2
	move.b (%a0)+,%d1
	ext.w %d1
	move.w %d1,%a1
	cmp.l 12(%fp),%a1
	jne .L420
	move.l %d2,%d0
.L420:
	tst.b -1(%a0)
	jne .L421
	move.l %d0,%a0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a3
	move.l %a3,-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l %d0,%d3
	jeq .L427
	move.b (%a3),%d0
	ext.w %d0
	move.w %d0,%a2
	jra .L425
.L426:
	move.l %d3,-(%sp)
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr strncmp
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L428
	addq.l #1,%d2
.L425:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr strchr
	addq.l #8,%sp
	move.l %a0,%d2
	jne .L426
	moveq #0,%d0
	jra .L424
.L427:
	move.l %d2,%d0
	jra .L424
.L428:
	move.l %d2,%d0
.L424:
	move.l %d0,%a0
	movem.l -16(%fp),#3084
	unlk %fp
	rts
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l 16(%fp),%d4
	move.l 20(%fp),%d5
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L430
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L432
.L430:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L440
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L441
.L432:
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	add.l #-2147483648,%d0
	move.l %d3,%d1
	jra .L433
.L440:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L433
.L441:
	move.l %d2,%d0
	move.l %d3,%d1
.L433:
	movem.l -16(%fp),#60
	unlk %fp
	rts
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%a4
	move.l 20(%fp),%a3
	move.l %d1,%d3
	sub.l %a3,%d3
	add.l %d0,%d3
	cmp.w #0,%a3
	jeq .L443
	cmp.l %d1,%a3
	shi %d1
	neg.b %d1
	jne .L447
	move.l %d0,%a2
	jra .L444
.L445:
	move.b (%a2)+,%d0
	cmp.b (%a4),%d0
	jne .L444
	pea -1(%a3)
	pea 1(%a4)
	move.l %a2,-(%sp)
	jsr memcmp
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L448
.L444:
	move.l %a2,%d2
	cmp.l %a2,%d3
	jcc .L445
	moveq #0,%d0
	jra .L443
.L447:
	moveq #0,%d0
	jra .L443
.L448:
	move.l %d2,%d0
.L443:
	move.l %d0,%a0
	movem.l -20(%fp),#7180
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
	move.l 16(%fp),%d0
	add.l %a0,%d0
	move.l %d0,%a0
	unlk %fp
	rts
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.type	frexp, @function
frexp:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L467
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	add.l #-2147483648,%d0
	move.l %d3,%d1
	move.l %d0,%d2
	move.l %d1,%d3
	moveq #1,%d5
	jra .L451
.L467:
	moveq #0,%d5
.L451:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L462
	jra .L468
.L455:
	addq.l #1,%d4
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
	jra .L453
.L462:
	moveq #0,%d4
.L453:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L455
	jra .L456
.L468:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L469
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L464
	moveq #0,%d4
	jra .L456
.L459:
	subq.l #1,%d4
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
	jra .L458
.L464:
	moveq #0,%d4
.L458:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L459
	jra .L456
.L469:
	moveq #0,%d4
.L456:
	move.l 16(%fp),%a0
	move.l %d4,(%a0)
	tst.l %d5
	jeq .L460
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	add.l #-2147483648,%d0
	move.l %d3,%d1
	move.l %d0,%d2
	move.l %d1,%d3
.L460:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l -16(%fp),#60
	unlk %fp
	rts
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
	link.w %fp,#0
	movem.l #16128,-(%sp)
	move.l 16(%fp),%d4
	move.l 20(%fp),%d5
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	clr.l %d0
	clr.l %d1
	jra .L471
.L473:
	sub.l %a0,%a0
	moveq #1,%d6
	and.l %d3,%d6
	move.l %d6,%a1
	cmp.w #0,%a0
	jne .L474
	cmp.w #0,%a1
	jeq .L472
.L474:
	add.l %d5,%d1
	addx.l %d4,%d0
.L472:
	add.l %d5,%d5
	addx.l %d4,%d4
	lsr.l #1,%d2
	roxr.l #1,%d3
.L471:
	move.l %d2,%d6
	or.l %d3,%d6
	jne .L473
	movem.l (%sp)+,#252
	unlk %fp
	rts
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.w #33,%a0
	moveq #1,%d2
	jra .L476
.L478:
	add.l %d1,%d1
	add.l %d2,%d2
.L476:
	cmp.l %d1,%d0
	jls .L483
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L484
	tst.l %d1
	jge .L478
	moveq #0,%d3
	jra .L480
.L481:
	cmp.l %d0,%d1
	jhi .L479
	sub.l %d1,%d0
	or.l %d2,%d3
.L479:
	lsr.l #1,%d2
	lsr.l #1,%d1
	jra .L480
.L483:
	moveq #0,%d3
	jra .L480
.L484:
	moveq #0,%d3
.L480:
	tst.l %d2
	jne .L481
	tst.l 16(%fp)
	jne .L482
	move.l %d3,%d0
.L482:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	link.w %fp,#0
	move.b 11(%fp),%d0
	jpl .L487
	not.b %d0
.L487:
	tst.b %d0
	jeq .L489
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
	jra .L488
.L489:
	moveq #7,%d0
.L488:
	unlk %fp
	rts
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	tst.l %d0
	jge .L491
	clr.l %d2
	clr.l %d3
	move.l %d0,%d2
	not.l %d2
	move.l %d1,%d3
	not.l %d3
	move.l %d2,%d0
	move.l %d3,%d1
.L491:
	move.l %d0,%d2
	or.l %d1,%d2
	jeq .L493
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
	jra .L492
.L493:
	moveq #63,%d0
.L492:
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	rts
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d1
	moveq #0,%d0
	jra .L495
.L497:
	btst #0,%d2
	jeq .L496
	add.l %d1,%d0
.L496:
	lsr.l #1,%d2
	add.l %d1,%d1
.L495:
	tst.l %d2
	jne .L497
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%d0
	move.l %d0,%d2
	lsr.l #3,%d2
	moveq #-8,%d1
	and.l %d0,%d1
	cmp.l %a0,%a1
	jls .L499
.L501:
	move.l %a1,%a4
	move.l %a0,%a3
	sub.l %a2,%a2
	jra .L500
.L499:
	lea (%a1,%d0.l),%a2
	cmp.l %a2,%a0
	jhi .L501
	subq.l #1,%d0
	lea (%a1,%d0.l),%a2
	add.l %d0,%a0
	subq.l #1,%a1
	jra .L502
.L503:
	move.l (%a4)+,%d3
	move.l (%a4)+,%d4
	move.l %d3,(%a3)+
	move.l %d4,(%a3)+
	addq.l #1,%a2
.L500:
	cmp.l %a2,%d2
	jne .L503
	jra .L504
.L505:
	move.b (%a1,%d1.l),(%a0,%d1.l)
	addq.l #1,%d1
.L504:
	cmp.l %d0,%d1
	jcs .L505
	jra .L498
.L507:
	move.b (%a2),(%a0)
	subq.l #1,%a2
	subq.l #1,%a0
.L502:
	cmp.l %a2,%a1
	jne .L507
.L498:
	movem.l (%sp)+,#7196
	unlk %fp
	rts
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%d0
	move.l %d0,%d1
	lsr.l #1,%d1
	cmp.l %a0,%a1
	jls .L509
.L511:
	move.l %a1,%a2
	move.l %a0,%a3
	add.l %d1,%d1
	add.l %a1,%d1
	jra .L510
.L509:
	lea (%a1,%d0.l),%a2
	cmp.l %a2,%a0
	jhi .L511
	subq.l #1,%d0
	lea (%a1,%d0.l),%a2
	add.l %d0,%a0
	subq.l #1,%a1
	jra .L512
.L513:
	move.w (%a2)+,(%a3)+
.L510:
	cmp.l %a2,%d1
	jne .L513
	btst #0,%d0
	jeq .L508
	subq.l #1,%d0
	move.b (%a1,%d0.l),(%a0,%d0.l)
	jra .L508
.L515:
	move.b (%a2),(%a0)
	subq.l #1,%a2
	subq.l #1,%a0
.L512:
	cmp.l %a2,%a1
	jne .L515
.L508:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%d0
	move.l %d0,%d2
	lsr.l #2,%d2
	moveq #-4,%d1
	and.l %d0,%d1
	cmp.l %a0,%a1
	jls .L517
.L519:
	move.l %a1,%a4
	move.l %a0,%a3
	sub.l %a2,%a2
	jra .L518
.L517:
	lea (%a1,%d0.l),%a2
	cmp.l %a2,%a0
	jhi .L519
	subq.l #1,%d0
	lea (%a1,%d0.l),%a2
	add.l %d0,%a0
	subq.l #1,%a1
	jra .L520
.L521:
	move.l (%a4)+,(%a3)+
	addq.l #1,%a2
.L518:
	cmp.l %a2,%d2
	jne .L521
	jra .L522
.L523:
	move.b (%a1,%d1.l),(%a0,%d1.l)
	addq.l #1,%d1
.L522:
	cmp.l %d0,%d1
	jcs .L523
	jra .L516
.L525:
	move.b (%a2),(%a0)
	subq.l #1,%a2
	subq.l #1,%a0
.L520:
	cmp.l %a2,%a1
	jne .L525
.L516:
	movem.l (%sp)+,#7172
	unlk %fp
	rts
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
	link.w %fp,#0
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
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
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __umodsi3
	addq.l #8,%sp
	unlk %fp
	rts
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.w 10(%fp),%a0
	moveq #0,%d0
	jra .L533
.L535:
	moveq #0,%d1
	move.w %a0,%d1
	moveq #15,%d2
	sub.l %d0,%d2
	btst %d2,%d1
	jne .L534
	addq.l #1,%d0
.L533:
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L535
.L534:
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.w 10(%fp),%d1
	moveq #0,%d0
	jra .L537
.L539:
	moveq #0,%d2
	move.w %d1,%d2
	btst %d0,%d2
	jne .L538
	addq.l #1,%d0
.L537:
	moveq #16,%d2
	cmp.l %d0,%d2
	jne .L539
.L538:
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __gesf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L545
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L543
.L545:
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L543:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.w 10(%fp),%a0
	moveq #0,%d0
	moveq #0,%d1
	jra .L547
.L549:
	moveq #0,%d2
	move.w %a0,%d2
	btst %d1,%d2
	jeq .L548
	addq.l #1,%d0
.L548:
	addq.l #1,%d1
.L547:
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L549
	moveq #1,%d1
	and.l %d1,%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.w 10(%fp),%a0
	moveq #0,%d0
	moveq #0,%d1
	jra .L551
.L553:
	moveq #0,%d2
	move.w %a0,%d2
	btst %d1,%d2
	jeq .L552
	addq.l #1,%d0
.L552:
	addq.l #1,%d1
.L551:
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L553
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d1
	moveq #0,%d0
	jra .L555
.L557:
	btst #0,%d2
	jeq .L556
	add.l %d1,%d0
.L556:
	lsr.l #1,%d2
	add.l %d1,%d1
.L555:
	tst.l %d2
	jne .L557
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d1
	move.l 12(%fp),%d2
	tst.l %d1
	jeq .L563
	moveq #0,%d0
	jra .L560
.L562:
	btst #0,%d2
	jeq .L561
	add.l %d1,%d0
.L561:
	add.l %d1,%d1
	lsr.l #1,%d2
.L560:
	tst.l %d2
	jne .L562
	jra .L559
.L563:
	moveq #0,%d0
.L559:
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.w #33,%a0
	moveq #1,%d2
	jra .L565
.L567:
	add.l %d1,%d1
	add.l %d2,%d2
.L565:
	cmp.l %d1,%d0
	jls .L572
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L573
	tst.l %d1
	jge .L567
	moveq #0,%d3
	jra .L569
.L570:
	cmp.l %d0,%d1
	jhi .L568
	sub.l %d1,%d0
	or.l %d2,%d3
.L568:
	lsr.l #1,%d2
	lsr.l #1,%d1
	jra .L569
.L572:
	moveq #0,%d3
	jra .L569
.L573:
	moveq #0,%d3
.L569:
	tst.l %d2
	jne .L570
	tst.l 16(%fp)
	jne .L571
	move.l %d3,%d0
.L571:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L577
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L578
	moveq #0,%d0
	jra .L576
.L577:
	moveq #-1,%d0
	jra .L576
.L578:
	moveq #1,%d0
.L576:
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	rts
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l 16(%fp),%d4
	move.l 20(%fp),%d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L581
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L582
	moveq #0,%d0
	jra .L580
.L581:
	moveq #-1,%d0
	jra .L580
.L582:
	moveq #1,%d0
.L580:
	movem.l -16(%fp),#60
	unlk %fp
	rts
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	link.w %fp,#0
	move.l 12(%fp),-(%sp)
	smi %d0
	ext.w %d0
	ext.l %d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	smi %d0
	ext.w %d0
	ext.l %d0
	move.l %d0,-(%sp)
	jsr __muldi3
	lea (16,%sp),%sp
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
	unlk %fp
	rts
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%d1
	jpl .L592
	neg.l %d1
	move.w #1,%a1
	jra .L586
.L592:
	sub.l %a1,%a1
.L586:
	moveq #33,%d2
	moveq #0,%d0
	jra .L587
.L590:
	btst #0,%d1
	jeq .L588
	add.l %a0,%d0
.L588:
	add.l %a0,%a0
	asr.l #1,%d1
.L587:
	tst.l %d1
	jeq .L589
	subq.b #1,%d2
	jne .L590
.L589:
	cmp.w #0,%a1
	jeq .L591
	neg.l %d0
.L591:
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	tst.l %d0
	jge .L598
	neg.l %d0
	moveq #1,%d2
	jra .L595
.L598:
	moveq #0,%d2
.L595:
	tst.l %d1
	jge .L596
	neg.l %d1
	tst.l %d2
	seq %d2
	neg.b %d2
	move.b %d2,%d2
	and.l #255,%d2
.L596:
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d2
	jeq .L597
	neg.l %d0
.L597:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	tst.l %d0
	jge .L603
	neg.l %d0
	moveq #1,%d2
	jra .L600
.L603:
	moveq #0,%d2
.L600:
	tst.l %d1
	jge .L601
	neg.l %d1
.L601:
	pea 1.w
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	tst.l %d2
	jeq .L602
	neg.l %d0
.L602:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.w 10(%fp),%d0
	move.w 14(%fp),%d1
	move.w #17,%a0
	moveq #1,%d2
	jra .L605
.L607:
	add.w %d1,%d1
	add.w %d2,%d2
.L605:
	cmp.w %d1,%d0
	jls .L612
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L613
	tst.w %d1
	jge .L607
	clr.w %d3
	jra .L609
.L610:
	cmp.w %d0,%d1
	jhi .L608
	sub.w %d1,%d0
	or.w %d2,%d3
.L608:
	lsr.w #1,%d2
	lsr.w #1,%d1
	jra .L609
.L612:
	clr.w %d3
	jra .L609
.L613:
	clr.w %d3
.L609:
	tst.w %d2
	jne .L610
	tst.l 16(%fp)
	jne .L611
	move.w %d3,%d0
.L611:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.w #33,%a0
	moveq #1,%d2
	jra .L616
.L618:
	add.l %d1,%d1
	add.l %d2,%d2
.L616:
	cmp.l %d1,%d0
	jls .L623
	subq.l #1,%a0
	cmp.w #0,%a0
	jeq .L624
	tst.l %d1
	jge .L618
	moveq #0,%d3
	jra .L620
.L621:
	cmp.l %d0,%d1
	jhi .L619
	sub.l %d1,%d0
	or.l %d2,%d3
.L619:
	lsr.l #1,%d2
	lsr.l #1,%d1
	jra .L620
.L623:
	moveq #0,%d3
	jra .L620
.L624:
	moveq #0,%d3
.L620:
	tst.l %d2
	jne .L621
	tst.l 16(%fp)
	jne .L622
	move.l %d3,%d0
.L622:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 16(%fp),%d0
	move.l 8(%fp),%d4
	move.l 12(%fp),%d5
	btst #5,%d0
	jeq .L627
	clr.l %d2
	clr.l %d3
	moveq #-32,%d1
	add.l %d1,%d0
	move.l %d5,%d1
	lsl.l %d0,%d1
	move.l %d1,%d2
	jra .L628
.L627:
	tst.l %d0
	jeq .L630
	move.l %d5,%d1
	clr.l %d2
	clr.l %d3
	move.l %d1,%d3
	lsl.l %d0,%d3
	lsl.l %d0,%d4
	moveq #32,%d5
	sub.l %d0,%d5
	lsr.l %d5,%d1
	or.l %d4,%d1
	move.l %d1,%d2
.L628:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L629
.L630:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
.L629:
	movem.l (%sp)+,#60
	unlk %fp
	rts
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 16(%fp),%d0
	move.l 8(%fp),%d4
	move.l 12(%fp),%d5
	btst #5,%d0
	jeq .L632
	clr.l %d2
	clr.l %d3
	move.l %d4,%d2
	add.l %d2,%d2
	subx.l %d2,%d2
	moveq #-32,%d1
	add.l %d1,%d0
	asr.l %d0,%d4
	move.l %d4,%d3
	jra .L633
.L632:
	tst.l %d0
	jeq .L635
	move.l %d4,%d1
	clr.l %d2
	clr.l %d3
	move.l %d1,%d2
	asr.l %d0,%d2
	moveq #32,%d4
	sub.l %d0,%d4
	lsl.l %d4,%d1
	move.l %d5,%d4
	lsr.l %d0,%d4
	move.l %d1,%d3
	or.l %d4,%d3
.L633:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L634
.L635:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
.L634:
	movem.l (%sp)+,#60
	unlk %fp
	rts
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	link.w %fp,#-32
	movem.l #16128,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l %d2,%d0
	move.l %d3,%d1
	moveq #24,%d1
	lsr.l %d1,%d0
	move.l %d0,%d1
	moveq #0,%d0
	move.l %d0,-32(%fp)
	move.l %d1,-28(%fp)
	move.l %d2,%d0
	move.l %d3,%d1
	lsr.l #8,%d0
	move.l %d0,%d1
	moveq #0,%d0
	clr.l -8(%fp)
	clr.l -4(%fp)
	move.l %d1,%d4
	and.l #65280,%d4
	move.l %d4,-4(%fp)
	move.l %d2,%d4
	lsl.l #8,%d4
	clr.l %d0
	clr.l %d1
	move.l %d3,%d1
	clr.w %d1
	swap %d1
	lsr.w #8,%d1
	or.l %d4,%d1
	move.l %d2,%d0
	clr.w %d0
	swap %d0
	lsr.w #8,%d0
	clr.l -16(%fp)
	clr.l -12(%fp)
	move.l %d1,%d4
	and.l #16711680,%d4
	move.l %d4,-12(%fp)
	move.l %d2,%d0
	move.l %d3,%d1
	move.b %d0,%d1
	lsr.l #8,%d0
	ror.l #8,%d1
	clr.l -24(%fp)
	clr.l -20(%fp)
	move.l %d1,%d4
	and.l #-16777216,%d4
	move.l %d4,-20(%fp)
	move.l %d2,%d0
	move.l %d3,%d1
	rol.l #8,%d0
	rol.l #8,%d1
	move.b %d1,%d0
	clr.b %d1
	sub.l %a0,%a0
	sub.l %a1,%a1
	moveq #0,%d4
	not.b %d4
	and.l %d0,%d4
	move.l %d4,%a0
	sub.l %a1,%a1
	move.l %d3,%d4
	lsr.l #8,%d4
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d4,%d0
	move.l %d3,%d1
	lsl.w #8,%d1
	swap %d1
	clr.w %d1
	clr.l %d6
	clr.l %d7
	move.l %d0,%d6
	and.l #65280,%d6
	moveq #0,%d7
	move.l %d2,%d0
	move.l %d3,%d1
	lsl.l #8,%d1
	move.l %d1,%d0
	moveq #0,%d1
	clr.l %d4
	clr.l %d5
	move.l %d0,%d4
	and.l #16711680,%d4
	moveq #0,%d5
	moveq #24,%d2
	lsl.l %d2,%d3
	move.l %d3,%d2
	moveq #0,%d3
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	or.l -32(%fp),%d0
	move.l %d3,%d1
	or.l -28(%fp),%d1
	clr.l %d2
	clr.l %d3
	move.l %d0,%d2
	or.l -8(%fp),%d2
	move.l %d1,%d3
	or.l -4(%fp),%d3
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	or.l -16(%fp),%d0
	move.l %d3,%d1
	or.l -12(%fp),%d1
	clr.l %d2
	clr.l %d3
	move.l %d0,%d2
	or.l -24(%fp),%d2
	move.l %d1,%d3
	or.l -20(%fp),%d3
	clr.l %d0
	clr.l %d1
	move.l %a0,%d0
	or.l %d2,%d0
	move.l %d3,%d1
	clr.l %d2
	clr.l %d3
	move.l %d0,%d2
	or.l %d6,%d2
	move.l %d1,%d3
	clr.l %d0
	clr.l %d1
	move.l %d2,%d0
	or.l %d4,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#252
	unlk %fp
	rts
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	link.w %fp,#0
	movem.l #14336,-(%sp)
	move.l 8(%fp),%d0
	move.l %d0,%d4
	clr.w %d4
	swap %d4
	lsr.w #8,%d4
	move.l %d0,%d3
	lsr.l #8,%d3
	and.l #65280,%d3
	move.l %d0,%d2
	lsl.l #8,%d2
	and.l #16711680,%d2
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	or.l %d4,%d0
	or.l %d3,%d0
	or.l %d2,%d0
	movem.l (%sp)+,#28
	unlk %fp
	rts
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d1
	cmp.l #65535,%d1
	jhi .L643
	moveq #16,%d2
	jra .L639
.L643:
	moveq #0,%d2
.L639:
	moveq #16,%d0
	sub.l %d2,%d0
	lsr.l %d0,%d1
	move.l %d1,%d0
	and.l #65280,%d0
	jne .L644
	moveq #8,%d0
	jra .L640
.L644:
	moveq #0,%d0
.L640:
	moveq #8,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d1
	add.l %d0,%d2
	moveq #15,%d0
	not.b %d0
	and.l %d1,%d0
	jne .L645
	moveq #4,%d0
	jra .L641
.L645:
	moveq #0,%d0
.L641:
	moveq #4,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d1
	add.l %d0,%d2
	moveq #12,%d0
	and.l %d1,%d0
	jne .L646
	moveq #2,%d0
	jra .L642
.L646:
	moveq #0,%d0
.L642:
	moveq #2,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d1
	add.l %d0,%d2
	moveq #2,%d0
	and.l %d1,%d0
	seq %d0
	neg.b %d0
	move.b %d0,%d0
	and.l #255,%d0
	moveq #2,%d3
	sub.l %d1,%d3
	move.l %d3,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	add.l %d2,%d0
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	rts
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l 16(%fp),%a0
	move.l 20(%fp),%a1
	cmp.l %a0,%d2
	jlt .L649
	jgt .L650
	cmp.l %a1,%d3
	jcs .L651
	jhi .L652
	moveq #1,%d0
	jra .L648
.L649:
	moveq #0,%d0
	jra .L648
.L650:
	moveq #2,%d0
	jra .L648
.L651:
	moveq #0,%d0
	jra .L648
.L652:
	moveq #2,%d0
.L648:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d1
	tst.w %d1
	jne .L659
	moveq #16,%d0
	jra .L655
.L659:
	moveq #0,%d0
.L655:
	lsr.l %d0,%d1
	move.l %d0,%a0
	tst.b %d1
	jne .L660
	moveq #8,%d0
	jra .L656
.L660:
	moveq #0,%d0
.L656:
	lsr.l %d0,%d1
	add.l %d0,%a0
	moveq #15,%d0
	and.l %d1,%d0
	jne .L661
	moveq #4,%d0
	jra .L657
.L661:
	moveq #0,%d0
.L657:
	lsr.l %d0,%d1
	add.l %d0,%a0
	moveq #3,%d0
	and.l %d1,%d0
	jne .L662
	moveq #2,%d0
	jra .L658
.L662:
	moveq #0,%d0
.L658:
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
	unlk %fp
	rts
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 16(%fp),%d0
	move.l 8(%fp),%d4
	move.l 12(%fp),%d5
	btst #5,%d0
	jeq .L664
	clr.l %d2
	clr.l %d3
	moveq #-32,%d1
	add.l %d1,%d0
	move.l %d4,%d3
	lsr.l %d0,%d3
	jra .L665
.L664:
	tst.l %d0
	jeq .L667
	move.l %d4,%d1
	clr.l %d2
	clr.l %d3
	move.l %d1,%d2
	lsr.l %d0,%d2
	moveq #32,%d4
	sub.l %d0,%d4
	lsl.l %d4,%d1
	move.l %d5,%d4
	lsr.l %d0,%d4
	move.l %d1,%d3
	or.l %d4,%d3
.L665:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L666
.L667:
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
.L666:
	movem.l (%sp)+,#60
	unlk %fp
	rts
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	link.w %fp,#0
	movem.l #16184,-(%sp)
	move.l 8(%fp),%d3
	move.l 12(%fp),%d6
	move.l %d3,%d7
	and.l #65535,%d7
	move.l %d6,%d0
	and.l #65535,%d0
	move.l %d0,%a3
	lea __mulsi3,%a2
	move.l %a3,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	clr.l %d4
	clr.l %d5
	move.l %d0,%d5
	move.l %d0,%d2
	clr.w %d2
	swap %d2
	and.l #65535,%d0
	move.l %d0,%a4
	move.l %a4,%d5
	clr.w %d3
	swap %d3
	move.l %a3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d2
	move.l %d2,%d0
	swap %d0
	clr.w %d0
	move.l %d0,%d5
	add.l %a4,%d5
	clr.w %d2
	swap %d2
	move.l %d2,%d4
	move.l %d5,%d0
	move.l %d0,%d2
	clr.w %d2
	swap %d2
	and.l #65535,%d0
	move.l %d0,%a3
	move.l %a3,%d5
	clr.w %d6
	swap %d6
	move.l %d6,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d2
	move.l %d2,%d0
	swap %d0
	clr.w %d0
	move.l %d0,%d5
	add.l %a3,%d5
	clr.w %d2
	swap %d2
	add.l %d4,%d2
	move.l %d2,%d4
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d2,%d0
	move.l %d0,%d4
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l -36(%fp),#7420
	unlk %fp
	rts
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	link.w %fp,#0
	movem.l #16184,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.l 16(%fp),%d6
	move.l 20(%fp),%d7
	move.l %d7,-(%sp)
	move.l %a3,-(%sp)
	jsr __muldsi3
	addq.l #8,%sp
	move.l %d0,%a0
	move.l %d1,%a1
	move.l %a0,%d4
	move.l %a1,%d5
	move.l %a0,%d3
	lea __mulsi3,%a4
	move.l %d7,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %a3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	add.l %d0,%d2
	add.l %d3,%d2
	move.l %d2,%d4
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l -36(%fp),#7420
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
	unlk %fp
	rts
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	link.w %fp,#0
	move.l 12(%fp),%d0
	move.l 8(%fp),%d1
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
	and.l %d1,%d0
	move.l #27030,%d1
	asr.l %d0,%d1
	moveq #1,%d0
	and.l %d1,%d0
	unlk %fp
	rts
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	link.w %fp,#0
	move.l 8(%fp),%d1
	move.l %d1,%d0
	clr.w %d0
	swap %d0
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #8,%d1
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #4,%d1
	eor.l %d1,%d0
	moveq #15,%d1
	and.l %d1,%d0
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
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l %d2,%d0
	move.l %d3,%d1
	lsr.l #1,%d0
	roxr.l #1,%d1
	clr.l %d4
	clr.l %d5
	move.l %d0,%d4
	and.l #1431655765,%d4
	move.l %d1,%d5
	and.l #1431655765,%d5
	move.l %d2,%d0
	move.l %d3,%d1
	sub.l %d5,%d1
	subx.l %d4,%d0
	move.l %d0,%d2
	move.l %d1,%d3
	lsr.l #1,%d2
	roxr.l #1,%d3
	lsr.l #1,%d2
	roxr.l #1,%d3
	clr.l %d4
	clr.l %d5
	move.l %d2,%d4
	and.l #858993459,%d4
	move.l %d3,%d5
	and.l #858993459,%d5
	clr.l %d2
	clr.l %d3
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
	clr.l %d2
	clr.l %d3
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
	unlk %fp
	rts
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	move.l %d2,%d1
	move.l %d2,%d0
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
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
	link.w %fp,#0
	movem.l #16128,-(%sp)
	move.l 8(%fp),%d6
	move.l 12(%fp),%d7
	move.l 16(%fp),%d4
	move.l %d4,%d5
	add.l %d5,%d5
	subx.l %d5,%d5
	neg.l %d5
	move.l #1072693248,%d2
	clr.l %d3
.L678:
	btst #0,%d4
	jeq .L676
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,%d2
	move.l %d1,%d3
.L676:
	move.l %d4,%d4
	jpl .L681
	addq.l #1,%d4
.L681:
	asr.l #1,%d4
	jeq .L677
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr __muldf3
	lea (16,%sp),%sp
	move.l %d0,%d6
	move.l %d1,%d7
	jra .L678
.L677:
	tst.l %d5
	jeq .L680
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	jsr __divdf3
	lea (16,%sp),%sp
	jra .L679
.L680:
	move.l %d2,%d0
	move.l %d3,%d1
.L679:
	movem.l -24(%fp),#252
	unlk %fp
	rts
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%d3
	move.l %d3,%d5
	add.l %d5,%d5
	subx.l %d5,%d5
	neg.l %d5
	move.l #0x3f800000,%d2
.L685:
	btst #0,%d3
	jeq .L683
	move.l %d4,-(%sp)
	move.l %d2,-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,%d2
.L683:
	move.l %d3,%d3
	jpl .L688
	addq.l #1,%d3
.L688:
	asr.l #1,%d3
	jeq .L684
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __mulsf3
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L685
.L684:
	tst.l %d5
	jeq .L687
	move.l %d2,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	jra .L686
.L687:
	move.l %d2,%d0
.L686:
	movem.l -16(%fp),#60
	unlk %fp
	rts
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l 16(%fp),%a0
	move.l 20(%fp),%a1
	cmp.l %a0,%d2
	jcs .L691
	jhi .L692
	cmp.l %a1,%d3
	jcs .L693
	jhi .L694
	moveq #1,%d0
	jra .L690
.L691:
	moveq #0,%d0
	jra .L690
.L692:
	moveq #2,%d0
	jra .L690
.L693:
	moveq #0,%d0
	jra .L690
.L694:
	moveq #2,%d0
.L690:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	link.w %fp,#0
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __ucmpdi2
	lea (16,%sp),%sp
	subq.l #1,%d0
	unlk %fp
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
