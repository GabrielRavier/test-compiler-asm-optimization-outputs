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
	move.l %d2,-(%sp)
	move.l 16(%sp),%a0
	moveq #0,%d2
	move.b 15(%sp),%d2
	cmp.w #0,%a0
	jeq .L21
	move.l 8(%sp),%d1
.L19:
	move.l %d1,%a1
	addq.l #1,%d1
	moveq #0,%d0
	move.b (%a1),%d0
	cmp.l %d0,%d2
	jeq .L17
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L19
	sub.l %a1,%a1
.L17:
	move.l %a1,%a0
	move.l %a1,%d0
	move.l (%sp)+,%d2
	rts
.L21:
	sub.l %a1,%a1
	jra .L17
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%sp),%a0
	cmp.w #0,%a0
	jeq .L28
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L25:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #1,%d1
	addq.l #1,%d0
	move.b (%a2),%d2
	cmp.b (%a1),%d2
	jne .L31
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L25
	moveq #0,%d0
	jra .L23
.L28:
	moveq #0,%d0
	jra .L23
.L31:
	moveq #0,%d0
	move.b (%a2),%d0
	moveq #0,%d1
	move.b (%a1),%d1
	sub.l %d1,%d0
.L23:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
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
	move.l 8(%sp),%a0
	moveq #0,%d2
	move.b 15(%sp),%d2
	move.l 16(%sp),%d1
	subq.l #1,%d1
	add.l %a0,%d1
	subq.l #1,%a0
.L37:
	cmp.l %d1,%a0
	jeq .L40
	move.l %d1,%a1
	subq.l #1,%d1
	moveq #0,%d0
	move.b (%a1),%d0
	cmp.l %d0,%d2
	jne .L37
	jra .L36
.L40:
	sub.l %a1,%a1
.L36:
	move.l %a1,%a0
	move.l %a1,%d0
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
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a2
	move.l 20(%sp),%d1
	jeq .L76
	move.b (%a0),%d0
	jeq .L73
	move.l %a2,%a1
	lea -1(%a0,%d1.l),%a3
.L74:
	move.l %a1,%a2
	move.b (%a1)+,%d1
	jeq .L73
	cmp.l %a0,%a3
	jeq .L73
	cmp.b %d1,%d0
	jne .L73
	addq.l #1,%a0
	move.b (%a0),%d0
	jne .L74
	move.l %a1,%a2
.L73:
	and.l #255,%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
.L71:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
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
	jge .L78
	moveq #-2,%d0
	and.l 12(%sp),%d0
	add.l %a0,%d0
.L80:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%d0
	jne .L80
.L78:
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.type	isascii, @function
isascii:
	moveq #127,%d1
	cmp.l 4(%sp),%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.type	isblank, @function
isblank:
	move.l 4(%sp),%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	jeq .L86
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L84:
	rts
.L86:
	moveq #1,%d0
	jra .L84
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L89
	moveq #127,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L87:
	rts
.L89:
	moveq #1,%d0
	jra .L87
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.type	isspace, @function
isspace:
	move.l 4(%sp),%a0
	moveq #32,%d0
	cmp.l %a0,%d0
	jeq .L96
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L94:
	rts
.L96:
	moveq #1,%d0
	jra .L94
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
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	move.l 4(%sp),%a0
	moveq #31,%d0
	cmp.l %a0,%d0
	jcc .L100
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcc .L101
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L102
	add.l #-65529,%a0
	moveq #2,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L98
.L100:
	moveq #1,%d0
.L98:
	rts
.L101:
	moveq #1,%d0
	jra .L98
.L102:
	moveq #1,%d0
	jra .L98
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
	move.l 4(%sp),%d0
	cmp.l #254,%d0
	jls .L111
	cmp.l #8231,%d0
	jls .L107
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L108
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L109
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L110
	and.l #65534,%d0
	cmp.l #65534,%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L104
.L111:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L104:
	rts
.L107:
	moveq #1,%d0
	jra .L104
.L108:
	moveq #1,%d0
	jra .L104
.L109:
	moveq #1,%d0
	jra .L104
.L110:
	moveq #0,%d0
	jra .L104
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	move.w #-48,%a0
	add.l 4(%sp),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L114
	moveq #32,%d0
	or.l 4(%sp),%d0
	move.w #-97,%a0
	add.l %d0,%a0
	moveq #5,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L112:
	rts
.L114:
	moveq #1,%d0
	jra .L112
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
	jne .L119
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L120
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L123
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
.L116:
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	rts
.L119:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L116
.L120:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L116
.L123:
	moveq #0,%d0
	moveq #0,%d1
	jra .L116
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
	jne .L127
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L128
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L131
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
.L124:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L127:
	move.l %d2,%d0
	jra .L124
.L128:
	move.l %d3,%d0
	jra .L124
.L131:
	moveq #0,%d0
	jra .L124
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
	jne .L138
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L139
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L134
	tst.l %d0
	jeq .L140
	move.l %d4,%d1
	move.l %d5,%d0
.L132:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L134:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L137
	clr.b 27(%sp)
.L137:
	tst.b 27(%sp)
	jeq .L135
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L132
.L135:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L132
.L138:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L132
.L139:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L132
.L140:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L132
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
	jne .L147
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L148
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L143
	tst.l %d0
	jeq .L149
	move.l %d3,%d0
	jra .L141
.L143:
	moveq #1,%d4
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L146
	clr.b %d4
.L146:
	tst.b %d4
	jeq .L145
	move.l %d3,%d2
.L145:
	move.l %d2,%d0
.L141:
	movem.l (%sp)+,#28
	rts
.L147:
	move.l %d3,%d0
	jra .L141
.L148:
	move.l %d2,%d0
	jra .L141
.L149:
	move.l %d2,%d0
	jra .L141
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
	jne .L151
	move.l %a4,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L152
	tst.l %d0
	jeq .L151
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
	jra .L151
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
	jlt .L156
	clr.b %d2
.L156:
	tst.b %d2
	jeq .L154
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L155:
	move.l %d0,%a4
	move.l %d1,%a5
	move.l %d2,%a6
.L151:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L154:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L155
.L157:
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
	jra .L151
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
	jne .L164
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L165
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L160
	tst.l %d0
	jeq .L166
	move.l %d2,%d1
	move.l %d3,%d0
.L158:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#252
	addq.l #4,%sp
	rts
.L160:
	move.b #1,27(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L163
	clr.b 27(%sp)
.L163:
	tst.b 27(%sp)
	jeq .L161
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L158
.L161:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L158
.L164:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L158
.L165:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L158
.L166:
	move.l %d4,%d1
	move.l %d5,%d0
	jra .L158
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
	jne .L173
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr __unordsf2
	addq.l #8,%sp
	tst.l %d0
	jne .L174
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L169
	tst.l %d0
	jeq .L175
	move.l %d3,%d0
	jra .L167
.L169:
	moveq #1,%d4
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L172
	clr.b %d4
.L172:
	tst.b %d4
	jeq .L171
	move.l %d3,%d2
.L171:
	move.l %d2,%d0
.L167:
	movem.l (%sp)+,#28
	rts
.L173:
	move.l %d2,%d0
	jra .L167
.L174:
	move.l %d3,%d0
	jra .L167
.L175:
	move.l %d2,%d0
	jra .L167
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
	jne .L177
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L183
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %a4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L178
	tst.l %d0
	jeq .L177
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
	jra .L177
.L178:
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
	jlt .L182
	clr.b %d2
.L182:
	tst.b %d2
	jeq .L180
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
.L181:
	move.l %d0,%a4
	move.l %d1,%a5
	move.l %d2,%a6
.L177:
	move.l %a4,(%a2)
	move.l %a5,4(%a2)
	move.l %a6,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#29756
	rts
.L180:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	jra .L181
.L183:
	move.l %d3,%a4
	move.l %d4,%a5
	move.l %d5,%a6
	jra .L177
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	jeq .L187
	lea (s.0),%a0
	lea digits,%a1
.L186:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L186
.L185:
	clr.b (%a0)
	move.l #s.0,%d0
	move.l %d0,%a0
	rts
.L187:
	lea (s.0),%a0
	jra .L185
	.size	l64a, .-l64a
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
	jeq .L194
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L191
	move.l %a0,4(%a1)
.L191:
	rts
.L194:
	clr.l 4(%a0)
	clr.l (%a0)
	jra .L191
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L196
	move.l 4(%a0),4(%a1)
.L196:
	move.l 4(%a0),%a1
	cmp.w #0,%a1
	jeq .L195
	move.l (%a0),(%a1)
.L195:
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
	jeq .L199
	move.l %a3,%d2
	moveq #0,%d3
.L201:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.l %d0
	jeq .L198
	addq.l #1,%d3
	add.l %d6,%d2
	cmp.l %d5,%d3
	jne .L201
.L199:
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
.L198:
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
	jeq .L206
	move.l 36(%sp),%d2
	moveq #0,%d3
.L205:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L203
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d5,%d3
	jne .L205
	moveq #0,%d4
.L203:
	move.l %d4,%a0
	move.l %d4,%d0
	movem.l (%sp)+,#1276
	rts
.L206:
	moveq #0,%d4
	jra .L203
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	jmi .L210
.L209:
	rts
.L210:
	neg.l %d0
	jra .L209
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #8248,-(%sp)
	move.l 20(%sp),%a3
	lea isspace,%a4
.L212:
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
	jne .L212
	cmp.b #43,%d2
	jeq .L218
	cmp.b #45,%d2
	jne .L219
	moveq #1,%d2
.L213:
	addq.l #1,%a2
.L214:
	move.b (%a2),%d0
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-48,%a1),%a1
	moveq #9,%d1
	cmp.l %a1,%d1
	jcs .L216
.L215:
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
	jcc .L215
.L216:
	tst.l %d2
	jne .L211
	move.l %a0,%d0
	neg.l %d0
	move.l %d0,%a0
.L211:
	move.l %a0,%d0
	movem.l (%sp)+,#7172
	rts
.L218:
	move.l %d0,%d2
	jra .L213
.L219:
	move.l %d0,%d2
	jra .L214
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	movem.l #8248,-(%sp)
	move.l 20(%sp),%a3
	lea isspace,%a4
.L224:
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
	jne .L224
	cmp.b #43,%d2
	jeq .L230
	cmp.b #45,%d2
	jne .L231
	moveq #1,%d2
.L225:
	addq.l #1,%a2
.L226:
	move.b (%a2),%d0
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-48,%a1),%a1
	moveq #9,%d1
	cmp.l %a1,%d1
	jcs .L228
.L227:
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
	jcc .L227
.L228:
	tst.l %d2
	jne .L223
	move.l %a0,%d0
	neg.l %d0
	move.l %d0,%a0
.L223:
	move.l %a0,%d0
	movem.l (%sp)+,#7172
	rts
.L230:
	move.l %d0,%d2
	jra .L225
.L231:
	move.l %d0,%d2
	jra .L226
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #16184,-(%sp)
	move.l 40(%sp),%a3
	lea isspace,%a4
.L236:
	move.l %a3,%a2
	move.b (%a3)+,%d2
	move.b %d2,%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	tst.l %d0
	jne .L236
	cmp.b #43,%d2
	jeq .L237
	cmp.b #45,%d2
	jne .L238
	moveq #1,%d0
.L237:
	addq.l #1,%a2
.L238:
	move.b (%a2),%d2
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	clr.l %d4
	clr.l %d5
	moveq #9,%d1
	cmp.l %a0,%d1
	jcs .L240
.L239:
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
	jcc .L239
.L240:
	tst.l %d0
	jne .L235
	neg.l %d5
	negx.l %d4
.L235:
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
	jeq .L250
	lea __mulsi3,%a3
	jra .L249
.L251:
	move.l %d4,%d3
.L248:
	tst.l %d3
	jeq .L253
.L249:
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
	jlt .L251
	jle .L246
	move.l %d2,%d5
	add.l %d6,%d5
	subq.l #1,%d3
	sub.l %d4,%d3
	jra .L248
.L253:
	moveq #0,%d2
.L246:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l (%sp)+,#3324
	rts
.L250:
	moveq #0,%d2
	jra .L246
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
	jeq .L258
	lea __mulsi3,%a3
	jra .L257
.L256:
	asr.l #1,%d2
	jeq .L260
.L257:
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
	jeq .L254
	jle .L256
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	jra .L256
.L260:
	moveq #0,%d3
.L254:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
.L258:
	moveq #0,%d3
	jra .L254
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
	jlt .L264
.L263:
	rts
.L264:
	neg.l %d1
	negx.l %d0
	jra .L263
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	movem.l #15392,-(%sp)
	move.l %a1,%a2
	move.l 24(%sp),%d2
	move.l 28(%sp),%d3
	move.l 32(%sp),%d4
	move.l 36(%sp),%d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __divdi3
	lea (16,%sp),%sp
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d0,8(%a2)
	move.l %d1,12(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#1084
	rts
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.type	labs, @function
labs:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	jmi .L268
.L267:
	rts
.L268:
	neg.l %d0
	jra .L267
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
	jlt .L272
.L271:
	rts
.L272:
	neg.l %d1
	negx.l %d0
	jra .L271
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.type	lldiv, @function
lldiv:
	movem.l #15392,-(%sp)
	move.l %a1,%a2
	move.l 24(%sp),%d2
	move.l 28(%sp),%d3
	move.l 32(%sp),%d4
	move.l 36(%sp),%d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __divdi3
	lea (16,%sp),%sp
	move.l %d0,(%a2)
	move.l %d1,4(%a2)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __moddi3
	lea (16,%sp),%sp
	move.l %d0,8(%a2)
	move.l %d1,12(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#1084
	rts
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.type	wcschr, @function
wcschr:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d1
	move.l (%a0),%d0
	jeq .L274
.L275:
	cmp.l %d1,%d0
	jeq .L280
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L275
	moveq #0,%d0
	jra .L274
.L280:
	move.l %a0,%d0
.L274:
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
	jne .L283
.L282:
	tst.l %d0
	jeq .L283
	tst.l %d1
	jeq .L283
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L282
.L283:
	cmp.l %d0,%d1
	jgt .L286
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L281:
	rts
.L286:
	moveq #-1,%d0
	jra .L281
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l 4(%sp),%d0
	move.l 8(%sp),%a1
	move.l %d0,%a0
.L289:
	move.l (%a1)+,%d1
	move.l %d1,(%a0)+
	jne .L289
	move.l %d0,%a0
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%a1
	tst.l (%a1)
	jeq .L294
	move.l %a1,%a0
.L293:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L293
.L292:
	move.l %a0,%d0
	sub.l %a1,%d0
	asr.l #2,%d0
	rts
.L294:
	move.l %a1,%a0
	jra .L292
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d1
	jeq .L302
	move.l 12(%sp),%a0
	move.l 16(%sp),%d0
.L298:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L299
	cmp.w #0,%a1
	jeq .L299
	subq.l #1,%d1
	jne .L298
	moveq #0,%d0
	jra .L296
.L301:
	cmp.l %d0,%d1
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L296:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L302:
	moveq #0,%d0
	jra .L296
.L299:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jle .L301
	moveq #-1,%d0
	jra .L296
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 8(%sp),%d0
	move.l 12(%sp),%a0
	cmp.w #0,%a0
	jeq .L308
	move.l 4(%sp),%d1
.L306:
	move.l %d1,%a1
	addq.l #4,%d1
	cmp.l (%a1),%d0
	jeq .L304
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L306
	sub.l %a1,%a1
.L304:
	move.l %a1,%a0
	move.l %a1,%d0
	rts
.L308:
	sub.l %a1,%a1
	jra .L304
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%sp),%a0
	cmp.w #0,%a0
	jeq .L316
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L312:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #4,%d1
	addq.l #4,%d0
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L319
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L312
	moveq #0,%d0
.L310:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L315:
	cmp.l %d0,%d1
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L310
.L316:
	moveq #0,%d0
	jra .L310
.L319:
	move.l (%a2),%d0
	move.l (%a1),%d1
	cmp.l %d0,%d1
	jle .L315
	moveq #-1,%d0
	jra .L310
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
	jeq .L321
	move.l %d0,%a1
.L322:
	move.l (%a0)+,(%a1)+
	dbra %d1,.L322
	clr.w %d1
	subq.l #1,%d1
	jcc .L322
.L321:
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
	jeq .L325
	move.l %d0,%a2
	move.l %a0,%d1
	move.l %d2,%a1
	add.l %d2,%a1
	add.l %a1,%a1
	move.l %d0,%d3
	sub.l %a0,%d3
	cmp.l %d3,%a1
	jhi .L326
	move.l %d2,%d1
	subq.l #1,%d1
	tst.l %d2
	jeq .L325
.L327:
	move.l (%a0)+,(%a2)+
	dbra %d1,.L327
	clr.w %d1
	subq.l #1,%d1
	jcc .L327
	jra .L325
.L326:
	tst.l %d2
	jeq .L325
	add.l %a1,%a0
	add.l %d0,%a1
.L328:
	move.l -(%a0),-(%a1)
	cmp.l %d1,%a0
	jne .L328
.L325:
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
	jeq .L333
	move.l %d0,%a0
.L334:
	move.l %a1,(%a0)+
	dbra %d1,.L334
	clr.w %d1
	subq.l #1,%d1
	jcc .L334
.L333:
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
	jls .L337
	lea (%a0,%d0.l),%a1
	tst.l %d0
	jeq .L336
	lea -1(%a2,%d0.l),%a2
.L339:
	move.b -(%a1),(%a2)
	subq.l #1,%a2
	cmp.l %a0,%a1
	jne .L339
.L336:
	move.l (%sp)+,%a2
	rts
.L337:
	cmp.l %a0,%a2
	jeq .L336
	tst.l %d0
	jeq .L336
	add.l %a0,%d0
.L340:
	move.b (%a0)+,(%a2)+
	cmp.l %a0,%d0
	jne .L340
	jra .L336
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
	jlt .L344
	move.l %d3,%d0
	move.l %a0,%d1
	lsl.l %d1,%d0
	moveq #0,%d5
.L345:
	move.l %d2,%d1
	neg.l %d1
	moveq #63,%d6
	and.l %d1,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L346
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
.L347:
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L344:
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
	jra .L345
.L346:
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
	jra .L347
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
	jlt .L349
	move.l %d3,%d1
	move.l %a0,%d0
	lsr.l %d0,%d1
	moveq #0,%d5
.L350:
	move.l %d2,%d0
	neg.l %d0
	moveq #63,%d6
	and.l %d0,%d6
	move.l %d6,%a0
	lea (-32,%a0),%a0
	cmp.w #0,%a0
	jlt .L351
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
.L352:
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L349:
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
	jra .L350
.L351:
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
	jra .L352
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
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	move.l %d1,%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	move.l %d1,%d2
	clr.w %d2
	swap %d2
	lsr.w #8,%d2
	or.l %d2,%d0
	move.l %d1,%d2
	lsr.l #8,%d2
	and.l #65280,%d2
	or.l %d2,%d0
	lsl.l #8,%d1
	and.l #16711680,%d1
	or.l %d1,%d0
	move.l (%sp)+,%d2
	rts
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
	movem.l #15104,-(%sp)
	move.l 24(%sp),%d2
	move.l 28(%sp),%d3
	move.l %d3,%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	move.l %d2,%d4
	clr.w %d4
	swap %d4
	lsr.w #8,%d4
	move.l %d2,%d1
	lsr.l #8,%d1
	and.l #65280,%d1
	or.l %d1,%d4
	move.l %d2,%d1
	lsl.l #8,%d1
	and.l #16711680,%d1
	or.l %d1,%d4
	move.l %d2,%d6
	move.l %d3,%d7
	move.b %d2,%d7
	ror.l #8,%d7
	move.l %d7,%d1
	and.l #-16777216,%d1
	move.l %d2,%d6
	move.l %d3,%d7
	rol.l #8,%d6
	rol.l #8,%d7
	move.b %d7,%d6
	or.b %d6,%d0
	move.l %d3,%d2
	lsr.l #8,%d2
	and.l #65280,%d2
	or.l %d2,%d0
	move.l %d3,%d2
	lsl.l #8,%d2
	and.l #16711680,%d2
	or.l %d2,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#220
	rts
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	moveq #0,%d0
.L367:
	btst %d0,%d1
	jne .L369
	addq.l #1,%d0
	moveq #32,%d2
	cmp.l %d0,%d2
	jne .L367
	moveq #0,%d0
	jra .L364
.L369:
	addq.l #1,%d0
.L364:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L373
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L370
	moveq #1,%d0
.L372:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L372
.L370:
	rts
.L373:
	move.l %d1,%d0
	jra .L370
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
	jlt .L378
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L379
.L377:
	move.l %d2,%d0
.L375:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L379:
	moveq #0,%d2
	jra .L377
.L378:
	moveq #1,%d0
	jra .L375
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
	jlt .L383
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L384
.L382:
	move.l %d2,%d0
.L380:
	movem.l (%sp)+,#52
	rts
.L384:
	moveq #0,%d2
	jra .L382
.L383:
	moveq #1,%d0
	jra .L380
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
	jlt .L388
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
	jle .L389
.L387:
	move.l %d2,%d0
.L385:
	movem.l (%sp)+,#60
	rts
.L389:
	moveq #0,%d2
	jra .L387
.L388:
	moveq #1,%d0
	jra .L385
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
	jne .L392
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d4,-(%sp)
	move.l %d0,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L392
	tst.l %d2
	jlt .L399
	move.l #0x40000000,%d3
.L394:
	lea __mulsf3,%a2
	jra .L396
.L399:
	move.l #0x3f000000,%d3
	jra .L394
.L395:
	move.l %d2,%d2
	jpl .L400
	addq.l #1,%d2
.L400:
	asr.l #1,%d2
	jeq .L392
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L396:
	btst #0,%d2
	jeq .L395
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L395
.L392:
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
	jne .L402
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
	jeq .L402
	tst.l %d6
	jlt .L409
	move.l #1073741824,%a2
	sub.l %a3,%a3
.L404:
	lea __muldf3,%a5
	jra .L406
.L409:
	move.l #1071644672,%a2
	sub.l %a3,%a3
	jra .L404
.L405:
	move.l %d6,%d6
	jpl .L410
	addq.l #1,%d6
.L410:
	asr.l #1,%d6
	jeq .L402
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
.L406:
	btst #0,%d6
	jeq .L405
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
	jra .L405
.L402:
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
	lea (-24,%sp),%sp
	movem.l #15422,-(%sp)
	move.l %a1,%a3
	move.l 64(%sp),%a4
	move.l 68(%sp),%a5
	move.l 72(%sp),%a6
	move.l 76(%sp),%d2
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __unordxf2
	lea (24,%sp),%sp
	tst.l %d0
	jne .L412
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	lea (72,%sp),%a1
	jsr __addxf3
	lea (24,%sp),%sp
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l 68(%sp),-(%sp)
	move.l 68(%sp),-(%sp)
	move.l 68(%sp),-(%sp)
	jsr __nexf2
	lea (24,%sp),%sp
	tst.l %d0
	jeq .L412
	tst.l %d2
	jlt .L419
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
.L414:
	lea __mulxf3,%a2
	jra .L416
.L419:
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
	jra .L414
.L415:
	move.l %d2,%d2
	jpl .L420
	addq.l #1,%d2
.L420:
	asr.l #1,%d2
	jeq .L412
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	lea (72,%sp),%a1
	jsr (%a2)
	lea (24,%sp),%sp
	move.l 48(%sp),%d3
	move.l 52(%sp),%d4
	move.l 56(%sp),%d5
.L416:
	btst #0,%d2
	jeq .L415
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
	jra .L415
.L412:
	move.l %a4,(%a3)
	move.l %a5,4(%a3)
	move.l %a6,8(%a3)
	move.l %a3,%a0
	movem.l (%sp)+,#31804
	lea (24,%sp),%sp
	rts
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%a1
	tst.l 16(%sp)
	jeq .L422
	move.l 16(%sp),%d1
	add.l %a1,%d1
	move.l %d0,%a0
.L423:
	addq.l #1,%a0
	move.b (%a1)+,%d2
	eor.b %d2,-1(%a0)
	cmp.l %d1,%a1
	jne .L423
.L422:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	move.l 20(%sp),%d2
	move.l %d3,-(%sp)
	jsr strlen
	addq.l #4,%sp
	move.l %d3,%a0
	add.l %d0,%a0
	tst.l %d2
	jeq .L426
	move.l 16(%sp),%a1
.L427:
	move.b (%a1)+,%d1
	move.b %d1,(%a0)+
	jeq .L429
	subq.l #1,%d2
	jne .L427
.L426:
	clr.b (%a0)
.L429:
	move.l %d3,%a0
	move.l %d3,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
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
	jeq .L438
.L432:
	tst.b (%a0,%d0.l)
	jne .L439
.L431:
	rts
.L438:
	move.l %d1,%d0
	jra .L431
.L439:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jne .L432
	move.l %d1,%d0
	jra .L431
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
	jeq .L447
.L441:
	move.l %a1,%a0
.L444:
	move.b (%a0)+,%d1
	jeq .L448
	cmp.b %d1,%d2
	jne .L444
.L442:
	move.l %d0,%a0
	move.l (%sp)+,%d2
	rts
.L447:
	moveq #0,%d0
	jra .L442
.L448:
	addq.l #1,%d0
	move.l %d0,%a0
	move.b (%a0),%d2
	jne .L441
	moveq #0,%d0
	jra .L442
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	movem.l #14336,-(%sp)
	move.l 20(%sp),%d4
	move.l 16(%sp),%a1
	moveq #0,%d0
	jra .L451
.L450:
	tst.b %d2
	jeq .L454
.L451:
	move.l %a1,%d3
	move.b (%a1)+,%d2
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	cmp.l %a0,%d4
	jne .L450
	move.l %d3,%d0
	jra .L450
.L454:
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
	jeq .L455
	move.b (%a2),%d0
	ext.w %d0
	move.w %d0,%a3
	lea strchr,%a4
	lea strncmp,%a5
.L457:
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %a0,%d2
	jeq .L455
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L455
	addq.l #1,%d2
	jra .L457
.L455:
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
	jlt .L470
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L464
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L463
.L464:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#60
	rts
.L470:
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%sp),-(%sp)
	move.l 40(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L464
.L463:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d4
	move.l %d3,%d5
	move.l %d4,%d2
	move.l %d5,%d3
	jra .L464
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	movem.l #15416,-(%sp)
	move.l 32(%sp),%d2
	move.l 44(%sp),%d0
	jeq .L475
	cmp.l 36(%sp),%d0
	jhi .L476
	move.l 36(%sp),%d3
	sub.l %d0,%d3
	add.l %d2,%d3
	cmp.l %d2,%d3
	jcs .L477
	move.l 40(%sp),%a3
	move.b (%a3)+,%d4
	move.l %d0,%d5
	subq.l #1,%d5
	lea memcmp,%a4
	jra .L474
.L473:
	cmp.l %d3,%d2
	jhi .L479
.L474:
	move.l %d2,%a2
	addq.l #1,%d2
	cmp.b (%a2),%d4
	jne .L473
	move.l %d5,-(%sp)
	move.l %a3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L473
	jra .L471
.L479:
	sub.l %a2,%a2
.L471:
	move.l %a2,%a0
	move.l %a2,%d0
	movem.l (%sp)+,#7228
	rts
.L475:
	move.l %d2,%a2
	jra .L471
.L476:
	sub.l %a2,%a2
	jra .L471
.L477:
	sub.l %a2,%a2
	jra .L471
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
	jlt .L505
	moveq #0,%d7
.L482:
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gedf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L502
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
	lea __gedf2,%a4
.L486:
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
	jge .L486
.L487:
	move.l 60(%sp),%a0
	move.l %d6,(%a0)
	tst.l %d7
	jeq .L491
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,40(%sp)
	move.l %d3,44(%sp)
	move.l 40(%sp),%d2
	move.l 44(%sp),%d3
.L491:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#15612
	addq.l #8,%sp
	rts
.L505:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	moveq #1,%d7
	jra .L482
.L502:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jge .L503
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L504
	moveq #0,%d6
	lea __adddf3,%a5
	move.l #1071644672,%d4
	clr.l %d5
	lea __ltdf2,%a4
.L490:
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
	jlt .L490
	jra .L487
.L503:
	moveq #0,%d6
	jra .L487
.L504:
	moveq #0,%d6
	jra .L487
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
	jeq .L509
	clr.l 32(%sp)
	clr.l 36(%sp)
.L508:
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
	jne .L508
.L506:
	move.l 32(%sp),%d0
	move.l 36(%sp),%d1
	movem.l (%sp)+,#252
	lea (16,%sp),%sp
	rts
.L509:
	clr.l 32(%sp)
	clr.l 36(%sp)
	jra .L506
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
	jls .L519
	moveq #32,%d0
	moveq #1,%d2
.L512:
	tst.l %d1
	jlt .L519
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L514
	subq.l #1,%d0
	jne .L512
.L515:
	tst.l 16(%sp)
	jne .L524
.L511:
	move.l (%sp)+,%d2
	rts
.L517:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L515
.L518:
	cmp.l %a0,%d1
	jhi .L517
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L517
.L514:
	tst.l %d2
	jeq .L525
.L519:
	moveq #0,%d0
	jra .L518
.L525:
	move.l %d2,%d0
	jra .L515
.L524:
	move.l %a0,%d0
	jra .L511
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
	jeq .L528
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
.L526:
	move.l (%sp)+,%d2
	rts
.L528:
	moveq #7,%d0
	jra .L526
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
	move.l %d0,%d4
	eor.l %d2,%d4
	move.l %d1,%d5
	eor.l %d2,%d5
	move.l %d0,%d6
	move.l %d1,%d7
	sub.l %d3,%d7
	subx.l %d2,%d6
	jeq .L531
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
.L529:
	movem.l (%sp)+,#252
	rts
.L531:
	moveq #63,%d0
	jra .L529
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
	jeq .L535
	moveq #0,%d0
.L534:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L534
.L532:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L535:
	move.l %d2,%d0
	jra .L532
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
	jhi .L538
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jhi .L538
	tst.l %d0
	jeq .L537
	move.l %d4,%a0
	add.l %d0,%a0
.L544:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L544
	jra .L537
.L538:
	tst.l %d2
	jeq .L541
	move.l %d3,%a0
	move.l %d4,%a1
	lsl.l #3,%d2
	add.l %d3,%d2
.L542:
	move.l (%a0)+,%d5
	move.l (%a0)+,%d6
	move.l %d5,(%a1)+
	move.l %d6,(%a1)+
	cmp.l %a0,%d2
	jne .L542
.L541:
	cmp.l %d0,%d1
	jcc .L537
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L543:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L543
.L537:
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
	jhi .L549
	lea (%a3,%d1.l),%a1
	cmp.l %a1,%a2
	jhi .L549
	add.l %d1,%a2
	tst.l %d1
	jeq .L548
.L554:
	move.b -(%a1),-(%a2)
	cmp.l %a1,%a3
	jne .L554
	jra .L548
.L549:
	tst.l %d0
	jeq .L552
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
.L553:
	move.w (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L553
.L552:
	btst #0,%d1
	jeq .L548
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L548:
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
	jhi .L558
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jhi .L558
	tst.l %d0
	jeq .L557
	move.l %d4,%a0
	add.l %d0,%a0
.L564:
	move.b -(%a1),-(%a0)
	cmp.l %a1,%d3
	jne .L564
	jra .L557
.L558:
	tst.l %d2
	jeq .L561
	move.l %d3,%a0
	move.l %d4,%a2
	add.l %d2,%d2
	add.l %d2,%d2
	move.l %d2,%a1
	add.l %d3,%a1
.L562:
	move.l (%a0)+,(%a2)+
	cmp.l %a0,%a1
	jne .L562
.L561:
	cmp.l %d0,%d1
	jcc .L557
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L563:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L563
.L557:
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
.L576:
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L574
	addq.l #1,%d0
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L576
.L574:
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
.L580:
	btst %d0,%d1
	jne .L578
	addq.l #1,%d0
	moveq #16,%d2
	cmp.l %d0,%d2
	jne .L580
.L578:
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
	jge .L588
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L582:
	move.l (%sp)+,%d2
	rts
.L588:
	move.l #0x47000000,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L582
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
.L590:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L590
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
.L593:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L593
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
	jeq .L598
	moveq #0,%d0
.L597:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L597
.L595:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L598:
	move.l %d2,%d0
	jra .L595
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
	jeq .L603
	tst.l %d3
	jeq .L604
	moveq #0,%d0
.L602:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L602
.L600:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L603:
	move.l %d2,%d0
	jra .L600
.L604:
	move.l %d3,%d0
	jra .L600
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
	jls .L614
	moveq #32,%d0
	moveq #1,%d2
.L607:
	tst.l %d1
	jlt .L614
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L609
	subq.l #1,%d0
	jne .L607
.L610:
	tst.l 16(%sp)
	jne .L619
.L606:
	move.l (%sp)+,%d2
	rts
.L612:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L610
.L613:
	cmp.l %a0,%d1
	jhi .L612
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L612
.L609:
	tst.l %d2
	jeq .L620
.L614:
	moveq #0,%d0
	jra .L613
.L620:
	move.l %d2,%d0
	jra .L610
.L619:
	move.l %a0,%d0
	jra .L606
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
	jlt .L624
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L625
.L623:
	move.l %d2,%d0
.L621:
	movem.l (%sp)+,#28
	rts
.L625:
	moveq #0,%d2
	jra .L623
.L624:
	moveq #-1,%d0
	jra .L621
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
	jlt .L629
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L630
.L628:
	move.l %d6,%d0
.L626:
	movem.l (%sp)+,#124
	rts
.L630:
	moveq #0,%d6
	jra .L628
.L629:
	moveq #-1,%d0
	jra .L626
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
	jmi .L641
	sub.l %a0,%a0
	tst.l %d2
	jeq .L642
.L638:
	moveq #32,%d4
	moveq #0,%d0
.L636:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L635
	subq.b #1,%d4
	jne .L636
.L635:
	cmp.w #0,%a0
	jeq .L633
	neg.l %d0
.L633:
	movem.l (%sp)+,#28
	rts
.L641:
	neg.l %d2
	move.w #1,%a0
	jra .L638
.L642:
	move.l %d2,%d0
	jra .L633
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	tst.l %d0
	jlt .L651
	tst.l %d1
	jlt .L652
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L643
.L651:
	neg.l %d0
	tst.l %d1
	jlt .L653
	clr.l -(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
.L647:
	neg.l %d0
.L643:
	rts
.L652:
	clr.l -(%sp)
	neg.l %d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L647
.L653:
	clr.l -(%sp)
	neg.l %d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L643
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	tst.l %d0
	jlt .L659
	pea 1.w
	move.l %d1,%d2
	jmi .L660
.L657:
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	jra .L654
.L659:
	pea 1.w
	move.l %d1,%d2
	jmi .L661
.L656:
	move.l %d2,-(%sp)
	neg.l %d0
	move.l %d0,-(%sp)
	jsr __udivmodsi4
	lea (12,%sp),%sp
	neg.l %d0
.L654:
	move.l (%sp)+,%d2
	rts
.L661:
	neg.l %d2
	jra .L656
.L660:
	neg.l %d2
	jra .L657
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
	jcc .L670
	moveq #16,%d0
	moveq #1,%d2
.L663:
	tst.w %d1
	jlt .L670
	add.w %d1,%d1
	add.w %d2,%d2
	cmp.w %a0,%d1
	jcc .L665
	subq.l #1,%d0
	jne .L663
	clr.w %d0
.L666:
	tst.l 16(%sp)
	jne .L676
.L662:
	move.l (%sp)+,%d2
	rts
.L668:
	lsr.w #1,%d2
	lsr.w #1,%d1
	tst.w %d2
	jeq .L666
.L669:
	cmp.w %a0,%d1
	jhi .L668
	sub.w %d1,%a0
	or.w %d2,%d0
	jra .L668
.L665:
	move.w %d2,%d0
	jeq .L666
.L670:
	clr.w %d0
	jra .L669
.L676:
	move.w %a0,%d0
	jra .L662
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
	jls .L685
	moveq #32,%d0
	moveq #1,%d2
.L678:
	tst.l %d1
	jlt .L685
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L680
	subq.l #1,%d0
	jne .L678
.L681:
	tst.l 16(%sp)
	jne .L690
.L677:
	move.l (%sp)+,%d2
	rts
.L683:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L681
.L684:
	cmp.l %a0,%d1
	jhi .L683
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L683
.L680:
	tst.l %d2
	jeq .L691
.L685:
	moveq #0,%d0
	jra .L684
.L691:
	move.l %d2,%d0
	jra .L681
.L690:
	move.l %a0,%d0
	jra .L677
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
	jeq .L693
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	moveq #0,%d1
.L695:
	movem.l (%sp)+,#28
	rts
.L693:
	tst.l %d2
	jeq .L696
	move.l %d3,%d1
	lsl.l %d2,%d1
	moveq #32,%d4
	sub.l %d2,%d4
	lsr.l %d4,%d3
	lsl.l %d2,%d0
	or.l %d3,%d0
	jra .L695
.L696:
	move.l %d3,%d1
	jra .L695
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
	jeq .L698
	move.l %d1,%d0
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
.L700:
	movem.l (%sp)+,#28
	rts
.L698:
	tst.l %d2
	jeq .L701
	move.l %d1,%d0
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L700
.L701:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L700
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	movem.l #15104,-(%sp)
	move.l 24(%sp),%d2
	move.l 28(%sp),%d3
	move.l %d2,%d4
	clr.w %d4
	swap %d4
	lsr.w #8,%d4
	move.l %d3,%d0
	lsl.w #8,%d0
	swap %d0
	clr.w %d0
	move.l %d2,%d1
	lsr.l #8,%d1
	and.l #65280,%d1
	or.l %d1,%d4
	move.l %d2,%d1
	lsl.l #8,%d1
	and.l #16711680,%d1
	or.l %d1,%d4
	move.l %d2,%d6
	move.l %d3,%d7
	move.b %d2,%d7
	ror.l #8,%d7
	move.l %d7,%d1
	and.l #-16777216,%d1
	move.l %d2,%d6
	move.l %d3,%d7
	rol.l #8,%d6
	rol.l #8,%d7
	move.b %d7,%d6
	or.b %d6,%d0
	move.l %d3,%d2
	lsr.l #8,%d2
	and.l #65280,%d2
	or.l %d2,%d0
	move.l %d3,%d2
	lsl.l #8,%d2
	and.l #16711680,%d2
	or.l %d2,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#220
	rts
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d1
	move.l %d1,%d0
	clr.w %d0
	swap %d0
	lsr.w #8,%d0
	move.l %d1,%d2
	lsl.w #8,%d2
	swap %d2
	clr.w %d2
	or.l %d2,%d0
	move.l %d1,%d2
	lsr.l #8,%d2
	and.l #65280,%d2
	or.l %d2,%d0
	lsl.l #8,%d1
	and.l #16711680,%d1
	or.l %d1,%d0
	move.l (%sp)+,%d2
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
	ext.w %d1
	ext.l %d1
	neg.l %d1
	lsl.l #4,%d1
	moveq #16,%d0
	sub.l %d1,%d0
	lsr.l %d0,%d2
	move.l %d2,%d0
	and.l #65280,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	lsl.l #3,%d0
	moveq #8,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d2
	add.l %d0,%d1
	moveq #15,%d0
	not.b %d0
	and.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	add.l %d0,%d0
	add.l %d0,%d0
	moveq #4,%d3
	sub.l %d0,%d3
	lsr.l %d3,%d2
	add.l %d0,%d1
	moveq #12,%d0
	and.l %d2,%d0
	seq %d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,%d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	moveq #2,%d0
	sub.l %a0,%d0
	lsr.l %d0,%d2
	btst #1,%d2
	jne .L705
	moveq #2,%d0
	sub.l %d2,%d0
.L706:
	add.l %d1,%a0
	add.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L705:
	moveq #0,%d0
	jra .L706
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
	jlt .L709
	jgt .L710
	cmp.l %d1,%d0
	jhi .L711
	jcs .L712
	moveq #1,%d0
	jra .L707
.L709:
	moveq #0,%d0
.L707:
	rts
.L710:
	moveq #2,%d0
	jra .L707
.L711:
	moveq #0,%d0
	jra .L707
.L712:
	moveq #2,%d0
	jra .L707
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
	ext.w %d2
	ext.l %d2
	neg.l %d2
	lsl.l #4,%d2
	move.l %d0,%d1
	lsr.l %d2,%d1
	tst.b %d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	lsl.l #3,%d0
	lsr.l %d0,%d1
	move.l %d0,%a0
	add.l %d2,%a0
	moveq #15,%d0
	and.l %d1,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	add.l %d0,%d0
	add.l %d0,%d0
	lsr.l %d0,%d1
	add.l %d0,%a0
	moveq #3,%d2
	and.l %d1,%d2
	seq %d2
	ext.w %d2
	ext.l %d2
	neg.l %d2
	add.l %d2,%d2
	lsr.l %d2,%d1
	moveq #3,%d0
	and.l %d0,%d1
	move.l %d1,%d0
	not.l %d0
	moveq #1,%d3
	and.l %d3,%d0
	lsr.l #1,%d1
	moveq #2,%d3
	sub.l %d1,%d3
	neg.l %d0
	and.l %d3,%d0
	add.l %a0,%d2
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
	jeq .L716
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	moveq #0,%d0
.L718:
	movem.l (%sp)+,#28
	rts
.L716:
	tst.l %d2
	jeq .L719
	move.l %d1,%d0
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L718
.L719:
	move.l %d1,%d0
	move.l %d3,%d1
	jra .L718
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d6
	move.l 36(%sp),%d5
	move.l %d6,%d7
	and.l #65535,%d7
	move.l %d5,%d3
	and.l #65535,%d3
	lea __mulsi3,%a2
	move.l %d3,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,%d4
	clr.w %d4
	swap %d4
	clr.w %d6
	swap %d6
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d4
	and.l #65535,%d2
	move.l %d4,%d3
	swap %d3
	clr.w %d3
	add.l %d3,%d2
	clr.w %d3
	swap %d3
	clr.w %d5
	swap %d5
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d3
	and.l #65535,%d2
	move.l %d3,%d0
	swap %d0
	clr.w %d0
	add.l %d0,%d2
	clr.w %d4
	swap %d4
	move.l %d5,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d4
	move.l %d3,%d0
	clr.w %d0
	swap %d0
	add.l %d4,%d0
	move.l %d2,%d1
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
	move.l 24(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l 32(%sp),-(%sp)
	move.l %d5,-(%sp)
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
	move.l 64(%sp),%a6
	move.l %a6,%d4
	move.l #1072693248,%d6
	clr.l %d7
	lea __muldf3,%a5
	jra .L730
.L728:
	move.l %d4,%d4
	jpl .L733
	addq.l #1,%d4
.L733:
	asr.l #1,%d4
	jeq .L729
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
.L730:
	btst #0,%d4
	jeq .L728
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
	jra .L728
.L729:
	cmp.w #0,%a6
	jlt .L732
.L727:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#27868
	lea (16,%sp),%sp
	rts
.L732:
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
	jra .L727
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
	jra .L737
.L735:
	move.l %d2,%d2
	jpl .L740
	addq.l #1,%d2
.L740:
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
	jlt .L739
.L734:
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
.L739:
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L734
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
	jcs .L743
	jhi .L744
	cmp.l %d1,%d0
	jhi .L745
	jcs .L746
	moveq #1,%d0
	jra .L741
.L743:
	moveq #0,%d0
.L741:
	rts
.L744:
	moveq #2,%d0
	jra .L741
.L745:
	moveq #0,%d0
	jra .L741
.L746:
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
	.local	seed
	.comm	seed,8,2
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
