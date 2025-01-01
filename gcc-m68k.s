#NO_APP
	.file	"mini-libc.c"
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
	move.l 20(%sp),%d0
	cmp.l %a0,%a1
	jcc .L2
	lea (%a1,%d0.l),%a2
	tst.l %d0
	jeq .L3
	lea -1(%a0,%d0.l),%a3
.L4:
	move.b -(%a2),(%a3)
	subq.l #1,%a3
	cmp.l %a1,%a2
	jne .L4
.L3:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L2:
	cmp.l %a0,%a1
	jeq .L3
	tst.l %d0
	jeq .L3
	move.l %a0,%a2
	add.l %a1,%d0
.L5:
	move.b (%a1)+,(%a2)+
	cmp.l %a1,%d0
	jeq .L3
	move.b (%a1)+,(%a2)+
	cmp.l %a1,%d0
	jne .L5
	jra .L3
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
	tst.l %d1
	jeq .L18
	move.l 16(%sp),%a0
	move.l 12(%sp),%a1
.L19:
	move.l %a1,%d2
	move.b (%a0)+,%d0
	move.b %d0,(%a1)+
	and.l #255,%d0
	cmp.l %d0,%d3
	jeq .L32
	subq.l #1,%d1
	jne .L19
.L18:
	sub.l %a0,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L32:
	move.l %d2,%a0
	addq.l #1,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d0
	moveq #0,%d2
	move.b 15(%sp),%d2
	tst.l %d0
	jeq .L38
	move.l 8(%sp),%a1
.L35:
	move.l %a1,%a0
	moveq #0,%d1
	move.b (%a1)+,%d1
	cmp.l %d1,%d2
	jeq .L33
	subq.l #1,%d0
	jne .L35
.L38:
	sub.l %a0,%a0
.L33:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%sp),%a0
	cmp.w #0,%a0
	jeq .L47
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L43:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #1,%d1
	addq.l #1,%d0
	move.b (%a2),%d2
	cmp.b (%a1),%d2
	jne .L51
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L43
.L47:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L51:
	moveq #0,%d0
	move.b (%a2),%d0
	moveq #0,%d1
	move.b (%a1),%d1
	sub.l %d1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	move.l 16(%sp),%d0
	jeq .L53
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L53:
	move.l %d2,%a0
	move.l %d2,%d0
	move.l (%sp)+,%d2
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
	move.l 16(%sp),%d0
	subq.l #1,%d0
	add.l %a1,%d0
	subq.l #1,%a1
.L60:
	cmp.l %d0,%a1
	jeq .L65
	move.l %d0,%a0
	subq.l #1,%d0
	moveq #0,%d1
	move.b (%a0),%d1
	cmp.l %d1,%d2
	jne .L60
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L65:
	sub.l %a0,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	move.l 16(%sp),%d0
	jeq .L67
	move.l %d0,-(%sp)
	moveq #0,%d0
	not.b %d0
	and.l 16(%sp),%d0
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr memset
	lea (12,%sp),%sp
.L67:
	move.l %d2,%a0
	move.l %d2,%d0
	move.l (%sp)+,%d2
	rts
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
	move.l 4(%sp),%a0
	move.l 8(%sp),%a1
	move.b (%a1),%d0
	move.b %d0,(%a0)
	jeq .L74
.L75:
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	jne .L75
.L74:
	move.l %a0,%d0
	rts
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
	move.l 4(%sp),%a0
	moveq #0,%d1
	move.b 11(%sp),%d1
	move.b (%a0),%d0
	jeq .L82
.L83:
	and.l #255,%d0
	cmp.l %d0,%d1
	jeq .L82
	addq.l #1,%a0
	move.b (%a0),%d0
	jne .L83
.L82:
	move.l %a0,%d0
	rts
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d3
	move.l 12(%sp),%d2
.L93:
	move.l %d2,%a0
	move.b (%a0),%d1
	addq.l #1,%d2
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %a1,%d3
	jeq .L91
	tst.b %d1
	jne .L93
	sub.l %a0,%a0
.L91:
	move.l %a0,%d0
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
	jne .L103
.L98:
	tst.b %d0
	jeq .L106
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d0
	move.b (%a0),%d1
	cmp.b %d0,%d1
	jeq .L98
.L103:
	and.l #255,%d0
	and.l #255,%d1
	sub.l %d1,%d0
	rts
.L106:
	moveq #0,%d0
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
	jeq .L110
	move.l %a1,%a0
.L109:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L109
	move.l %a0,%d0
	sub.l %a1,%d0
	rts
.L110:
	moveq #0,%d0
	rts
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 20(%sp),%d1
	jeq .L122
	move.b (%a0),%d0
	jeq .L127
	move.l 16(%sp),%a1
	lea -1(%a0,%d1.l),%a2
.L118:
	move.l %a1,%a3
	move.b (%a1)+,%d1
	jeq .L124
	cmp.l %a0,%a2
	jeq .L124
	cmp.b %d1,%d0
	jne .L124
	addq.l #1,%a0
	move.b (%a0),%d0
	jne .L118
	move.b 1(%a3),%d1
	moveq #0,%d0
	and.l #255,%d1
	sub.l %d1,%d0
.L114:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L124:
	and.l #255,%d0
	and.l #255,%d1
	sub.l %d1,%d0
	jra .L114
.L122:
	moveq #0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L127:
	move.l 16(%sp),%a0
	move.b (%a0),%d1
	moveq #0,%d0
	and.l #255,%d1
	sub.l %d1,%d0
	jra .L114
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	move.l 4(%sp),%a0
	move.l 8(%sp),%a1
	moveq #1,%d0
	cmp.l 12(%sp),%d0
	jge .L128
	moveq #-2,%d0
	and.l 12(%sp),%d0
	add.l %a0,%d0
.L130:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%d0
	jne .L130
.L128:
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
	jeq .L140
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L140:
	moveq #1,%d0
	rts
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L145
	moveq #127,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L145:
	moveq #1,%d0
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
	jeq .L158
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L158:
	moveq #1,%d0
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
	jcc .L167
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcs .L170
.L167:
	moveq #1,%d0
	rts
.L170:
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L167
	add.l #-65529,%a0
	moveq #2,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
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
	move.l 4(%sp),%d0
	cmp.l #254,%d0
	jls .L182
	cmp.l #8231,%d0
	jls .L178
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L178
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L178
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L179
	and.l #65534,%d0
	cmp.l #65534,%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L178:
	moveq #1,%d0
	rts
.L182:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L179:
	moveq #0,%d0
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
	jcc .L185
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
	rts
.L185:
	moveq #1,%d0
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
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	lea __unorddf2,%a2
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L193
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L194
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L197
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L197:
	moveq #0,%d0
	moveq #0,%d1
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L193:
	move.l %d2,%d0
	move.l %d3,%d1
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L194:
	move.l %d4,%d0
	move.l %d5,%d1
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
	movem.l #12320,-(%sp)
	move.l 16(%sp),%d2
	move.l 20(%sp),%d3
	lea __unordsf2,%a2
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L203
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L204
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L207
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	movem.l (%sp)+,#1036
	rts
.L207:
	moveq #0,%d0
	movem.l (%sp)+,#1036
	rts
.L203:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L204:
	move.l %d3,%d0
	movem.l (%sp)+,#1036
	rts
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	lea __unorddf2,%a2
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L218
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L217
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L212
	tst.l %d0
	jeq .L217
.L218:
	move.l %d4,%d1
	move.l %d5,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L212:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L218
.L217:
	move.l %d2,%d1
	move.l %d3,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
	movem.l #12320,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d2
	lea __unordsf2,%a2
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L231
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L230
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L236
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L231
	move.l %d3,%d2
.L231:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L236:
	tst.l %d0
	jne .L231
.L230:
	move.l %d3,%d0
	movem.l (%sp)+,#1036
	rts
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
	movem.l #15422,-(%sp)
	move.l %a1,%a2
	move.l 40(%sp),%d3
	move.l 44(%sp),%d4
	move.l 48(%sp),%d5
	move.l 52(%sp),%a4
	move.l 56(%sp),%a5
	move.l 60(%sp),%a6
	lea __unordxf2,%a3
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L244
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L238
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %a4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L252
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L253
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L238:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L252:
	tst.l %d0
	jeq .L238
.L244:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L253:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
	jra .L238
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	move.l 40(%sp),%d4
	move.l 44(%sp),%d5
	lea __unorddf2,%a2
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L260
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L262
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L256
	tst.l %d0
	jeq .L260
.L262:
	move.l %d2,%d1
	move.l %d3,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L256:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L262
.L260:
	move.l %d4,%d1
	move.l %d5,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
	movem.l #12320,-(%sp)
	move.l 16(%sp),%d2
	move.l 20(%sp),%d3
	lea __unordsf2,%a2
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L273
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L275
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L280
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L275
	move.l %d3,%d2
.L275:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L280:
	tst.l %d0
	jne .L275
.L273:
	move.l %d3,%d0
	movem.l (%sp)+,#1036
	rts
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
	movem.l #15422,-(%sp)
	move.l %a1,%a2
	move.l 40(%sp),%a4
	move.l 44(%sp),%a5
	move.l 48(%sp),%a6
	move.l 52(%sp),%d3
	move.l 56(%sp),%d4
	move.l 60(%sp),%d5
	lea __unordxf2,%a3
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L282
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L288
	move.l %a4,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L296
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L297
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L282:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L296:
	tst.l %d0
	jeq .L282
.L288:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L297:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
	jra .L282
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	lea (s.0),%a0
	jeq .L299
	lea digits,%a1
.L300:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L300
.L299:
	clr.b (%a0)
	lea (s.0),%a0
	move.l %a0,%d0
	rts
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
	jeq .L317
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L309
	move.l %a0,4(%a1)
.L309:
	rts
.L317:
	clr.l 4(%a0)
	clr.l (%a0)
	rts
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L319
	move.l 4(%a0),4(%a1)
.L319:
	move.l 4(%a0),%a0
	cmp.w #0,%a0
	jeq .L318
	move.l %a1,(%a0)
.L318:
	rts
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d7
	move.l 44(%sp),%a2
	move.l 48(%sp),%d5
	move.l 52(%sp),%a3
	move.l (%a2),%d4
	jeq .L330
	move.l 40(%sp),%d2
	moveq #0,%d3
.L332:
	move.l %d2,%d6
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L329
	addq.l #1,%d3
	add.l %d5,%d2
	cmp.l %d4,%d3
	jne .L332
.L330:
	move.l %d4,%d0
	addq.l #1,%d0
	move.l %d0,(%a2)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l 40(%sp),%d6
	add.l %d0,%d6
	tst.l %d5
	jeq .L329
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L329:
	move.l %d6,%a0
	move.l %d6,%d0
	movem.l (%sp)+,#3324
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
	move.l (%a0),%d4
	jeq .L347
	move.l 36(%sp),%d2
	moveq #0,%d3
.L349:
	move.l %d2,%d5
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L346
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d4,%d3
	jne .L349
.L347:
	moveq #0,%d5
.L346:
	move.l %d5,%a0
	move.l %d5,%d0
	movem.l (%sp)+,#1276
	rts
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d0
	jmi .L363
	rts
.L363:
	neg.l %d0
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a0
.L365:
	move.l %a0,%a3
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L365
	move.b %d0,%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-9,%a1),%a2
	moveq #4,%d1
	cmp.l %a2,%d1
	jcc .L365
	cmp.b #43,%d0
	jeq .L367
	cmp.b #45,%d0
	jeq .L368
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcs .L376
	move.l %a3,%a2
	sub.l %a3,%a3
.L370:
	moveq #0,%d0
.L373:
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	addq.l #1,%a2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	move.l %d1,%d0
	sub.l %a0,%d0
	move.b (%a2),%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-48,%a1),%a1
	moveq #9,%d3
	cmp.l %a1,%d3
	jcc .L373
	cmp.w #0,%a3
	jne .L364
	move.l %a0,%d0
	sub.l %d1,%d0
.L364:
	movem.l (%sp)+,#3084
	rts
.L368:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L376
	move.w #1,%a3
	moveq #0,%d0
	jra .L373
.L367:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	sub.l %a3,%a3
	moveq #9,%d3
	cmp.l %a0,%d3
	jcc .L370
.L376:
	moveq #0,%d0
	movem.l (%sp)+,#3084
	rts
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	jra atoi
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%a0
.L389:
	move.l %a0,%a2
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L389
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-9,%a1),%a3
	moveq #4,%d2
	cmp.l %a3,%d2
	jcc .L389
	cmp.b #43,%d0
	jeq .L391
	cmp.b #45,%d0
	jeq .L392
	lea (-48,%a1),%a1
	moveq #9,%d2
	cmp.l %a1,%d2
	jcs .L400
	move.l %a2,%a1
	sub.l %a2,%a2
.L394:
	clr.l %d4
	clr.l %d5
.L397:
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
	addq.l #1,%a1
	move.w %d1,%a0
	move.l #-48,%d7
	add.l %a0,%d7
	smi %d6
	ext.w %d6
	ext.l %d6
	move.l %d2,%d4
	move.l %d3,%d5
	sub.l %d7,%d5
	subx.l %d6,%d4
	move.b (%a1),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L397
	cmp.w #0,%a2
	jne .L388
	move.l %d6,%d4
	move.l %d7,%d5
	sub.l %d3,%d5
	subx.l %d2,%d4
.L388:
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#3324
	rts
.L392:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcs .L400
	move.w #1,%a2
	clr.l %d4
	clr.l %d5
	jra .L397
.L391:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	sub.l %a2,%a2
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L394
.L400:
	clr.l %d4
	clr.l %d5
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#3324
	rts
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d6
	move.l 40(%sp),%d4
	move.l 44(%sp),%d2
	move.l 48(%sp),%d5
	move.l 52(%sp),%a2
	tst.l %d2
	jeq .L411
	lea __mulsi3,%a3
.L414:
	move.l %d2,%d7
	lsr.l #1,%d7
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	move.l %d4,%d3
	add.l %d0,%d3
	move.l %d3,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jlt .L415
	jle .L410
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	sub.l %d7,%d2
	jne .L414
.L411:
	moveq #0,%d3
.L410:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
.L415:
	move.l %d7,%d2
	jne .L414
	jra .L411
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movem.l #16184,-(%sp)
	move.l 40(%sp),%d6
	move.l 44(%sp),%d4
	move.l 52(%sp),%d5
	move.l 56(%sp),%a2
	move.l 60(%sp),%d7
	move.l 48(%sp),%d2
	jeq .L423
	lea __mulsi3,%a3
.L426:
	move.l %d2,%d0
	asr.l #1,%d0
	move.l %d0,%a4
	move.l %d5,-(%sp)
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
	jeq .L422
	jle .L427
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	asr.l #1,%d2
	jne .L426
.L423:
	moveq #0,%d3
.L422:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#7420
	rts
.L427:
	move.l %a4,%d2
	jne .L426
	jra .L423
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
	jlt .L443
	rts
.L443:
	neg.l %d1
	negx.l %d0
	rts
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
	move.l 4(%sp),%d0
	jmi .L450
	rts
.L450:
	neg.l %d0
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
	jlt .L457
	rts
.L457:
	neg.l %d1
	negx.l %d0
	rts
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
	jeq .L464
.L461:
	cmp.l %d1,%d0
	jeq .L460
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L461
.L464:
	sub.l %a0,%a0
.L460:
	move.l %a0,%d0
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
	jne .L470
.L469:
	tst.l %d0
	jeq .L470
	tst.l %d1
	jeq .L470
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L469
.L470:
	cmp.l %d0,%d1
	jgt .L473
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L473:
	moveq #-1,%d0
	rts
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%a2
	move.l %a0,%a1
.L481:
	move.l (%a2)+,%d0
	move.l %d0,(%a1)+
	jne .L481
	move.l %a0,%d0
	move.l (%sp)+,%a2
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%a1
	tst.l (%a1)
	jeq .L488
	move.l %a1,%a0
.L487:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L487
	sub.l %a1,%a0
	move.l %a0,%d0
	asr.l #2,%d0
	rts
.L488:
	moveq #0,%d0
	rts
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%sp),%d1
	jeq .L499
	move.l 12(%sp),%a0
	move.l 16(%sp),%d0
.L494:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L495
	cmp.w #0,%a1
	jeq .L495
	subq.l #1,%d1
	jne .L494
.L499:
	moveq #0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L495:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L502
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L502:
	moveq #-1,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 8(%sp),%d1
	move.l 12(%sp),%d0
	jeq .L508
	move.l 4(%sp),%a1
.L505:
	move.l %a1,%a0
	cmp.l (%a1)+,%d1
	jeq .L503
	subq.l #1,%d0
	jne .L505
.L508:
	sub.l %a0,%a0
.L503:
	move.l %a0,%d0
	rts
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%sp),%a0
	cmp.w #0,%a0
	jeq .L518
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L513:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #4,%d1
	addq.l #4,%d0
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L522
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L513
.L518:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L522:
	move.l (%a2),%d0
	move.l (%a1),%d1
	cmp.l %d0,%d1
	jgt .L523
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L523:
	moveq #-1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	move.l 16(%sp),%d0
	jeq .L525
	add.l %d0,%d0
	add.l %d0,%d0
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L525:
	move.l %d2,%a0
	move.l %d2,%d0
	move.l (%sp)+,%d2
	rts
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 16(%sp),%a1
	move.l 20(%sp),%d1
	cmp.l %a0,%a1
	jeq .L532
	move.l %a0,%a3
	move.l %d1,%a2
	add.l %d1,%a2
	add.l %a2,%a2
	move.l %a0,%d0
	sub.l %a1,%d0
	cmp.l %d0,%a2
	jls .L545
	tst.l %d1
	jeq .L532
	lea (%a1,%a2.l),%a3
	lea (%a0,%a2.l),%a2
.L535:
	move.l -(%a3),-(%a2)
	cmp.l %a1,%a3
	jne .L535
.L532:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L545:
	move.l %d1,%d0
	subq.l #1,%d0
	tst.l %d1
	jeq .L532
.L536:
	move.l (%a1)+,(%a3)+
	dbra %d0,.L536
	clr.w %d0
	subq.l #1,%d0
	jcc .L536
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d1
	move.l 12(%sp),%a1
	move.l %a1,%d0
	subq.l #1,%d0
	cmp.w #0,%a1
	jeq .L547
	move.l %a0,%a1
.L548:
	move.l %d1,(%a1)+
	dbra %d0,.L548
	clr.w %d0
	subq.l #1,%d0
	jcc .L548
.L547:
	move.l %a0,%d0
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
	jls .L556
	lea (%a0,%d0.l),%a1
	tst.l %d0
	jeq .L555
	lea -1(%a2,%d0.l),%a2
.L558:
	move.b -(%a1),(%a2)
	subq.l #1,%a2
	cmp.l %a0,%a1
	jne .L558
.L555:
	move.l (%sp)+,%a2
	rts
.L556:
	cmp.l %a0,%a2
	jeq .L555
	tst.l %d0
	jeq .L555
	add.l %a0,%d0
.L559:
	move.b (%a0)+,(%a2)+
	cmp.l %a0,%d0
	jeq .L555
	move.b (%a0)+,(%a2)+
	cmp.l %a0,%d0
	jne .L559
	jra .L555
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
	jlt .L572
	move.l %d3,%d0
	move.l %a0,%d1
	lsl.l %d1,%d0
	moveq #0,%d5
	neg.l %d2
	moveq #63,%d1
	and.l %d1,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L574
.L578:
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L572:
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
	neg.l %d2
	moveq #63,%d1
	and.l %d1,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jge .L578
.L574:
	move.l %d4,%d6
	add.l %d6,%d6
	moveq #31,%d1
	sub.l %d2,%d1
	lsl.l %d1,%d6
	move.l %d3,%d1
	lsr.l %d2,%d1
	or.l %d6,%d1
	lsr.l %d2,%d4
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
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
	jlt .L580
	move.l %d3,%d1
	move.l %a0,%d0
	lsr.l %d0,%d1
	moveq #0,%d5
	neg.l %d2
	moveq #63,%d0
	and.l %d0,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L582
.L586:
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L580:
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
	neg.l %d2
	moveq #63,%d0
	and.l %d0,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jge .L586
.L582:
	move.l %d4,%d6
	lsr.l #1,%d6
	moveq #31,%d0
	sub.l %d2,%d0
	lsr.l %d0,%d6
	move.l %d3,%d0
	lsl.l %d2,%d0
	or.l %d6,%d0
	lsl.l %d2,%d4
	or.l %d5,%d0
	or.l %d4,%d1
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
	move.l 4(%sp),%d0
	ror.w #8,%d0
	rts
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
	move.l 4(%sp),%d0
	ror.w #8,%d0
	swap %d0
	ror.w #8,%d0
	rts
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
	move.l 4(%sp),%d1
	ror.w #8,%d1
	swap %d1
	ror.w #8,%d1
	move.l 8(%sp),%d0
	ror.w #8,%d0
	swap %d0
	ror.w #8,%d0
	rts
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	moveq #0,%d0
.L612:
	move.l %d2,%d1
	lsr.l %d0,%d1
	addq.l #1,%d0
	btst #0,%d1
	jne .L609
	moveq #32,%d1
	cmp.l %d0,%d1
	jne .L612
	moveq #0,%d0
.L609:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L619
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L616
	moveq #1,%d0
.L618:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L618
.L616:
	rts
.L619:
	moveq #0,%d0
	rts
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
	jlt .L627
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L630
	move.l %d2,%d0
.L624:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L627:
	moveq #1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L630:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L624
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
	jlt .L634
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L637
	move.l %d2,%d0
.L631:
	movem.l (%sp)+,#52
	rts
.L634:
	moveq #1,%d0
	movem.l (%sp)+,#52
	rts
.L637:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L631
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
	jlt .L641
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
	jle .L644
	move.l %d2,%d0
.L638:
	movem.l (%sp)+,#60
	rts
.L641:
	moveq #1,%d0
	movem.l (%sp)+,#60
	rts
.L644:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L638
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
	jne .L648
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #4,%sp
	move.l %d4,(%sp)
	move.l %d0,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L648
	tst.l %d2
	jlt .L664
	move.l #0x40000000,%d3
.L650:
	btst #0,%d2
	jeq .L651
	lea __mulsf3,%a2
.L652:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L651:
	move.l %d2,%d2
	jpl .L665
	addq.l #1,%d2
.L665:
	asr.l #1,%d2
	jeq .L648
	lea __mulsf3,%a2
.L653:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L652
	move.l %d2,%d2
	jpl .L666
	addq.l #1,%d2
.L666:
	asr.l #1,%d2
	jra .L653
.L648:
	move.l %d4,%d0
	movem.l (%sp)+,#1052
	rts
.L664:
	move.l #0x3f000000,%d3
	jra .L650
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
	movem.l #12094,-(%sp)
	move.l 44(%sp),%d6
	move.l 48(%sp),%d7
	move.l 52(%sp),%d2
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr __unorddf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L668
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr __adddf3
	lea (12,%sp),%sp
	move.l %d7,(%sp)
	move.l %d6,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L668
	tst.l %d2
	jlt .L684
	move.l #1073741824,%a4
	sub.l %a5,%a5
.L670:
	btst #0,%d2
	jeq .L671
	lea __muldf3,%a6
.L672:
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a6)
	lea (16,%sp),%sp
	move.l %d0,%a2
	move.l %d1,%a3
	move.l %a2,%d6
	move.l %a3,%d7
.L671:
	move.l %d2,%d2
	jpl .L685
	addq.l #1,%d2
.L685:
	asr.l #1,%d2
	jeq .L668
	lea __muldf3,%a6
.L673:
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a6)
	lea (16,%sp),%sp
	move.l %d0,%d4
	move.l %d1,%d5
	move.l %d4,%a4
	move.l %d5,%a5
	btst #0,%d2
	jne .L672
	move.l %d2,%d2
	jpl .L686
	addq.l #1,%d2
.L686:
	asr.l #1,%d2
	jra .L673
.L668:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31988
	rts
.L684:
	move.l #1071644672,%a4
	sub.l %a5,%a5
	jra .L670
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
	jne .L688
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
	jeq .L688
	tst.l %d2
	jlt .L704
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
.L690:
	btst #0,%d2
	jeq .L691
	lea __mulxf3,%a2
.L692:
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
.L691:
	move.l %d2,%d2
	jpl .L705
	addq.l #1,%d2
.L705:
	asr.l #1,%d2
	jeq .L688
	lea __mulxf3,%a2
.L693:
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
	btst #0,%d2
	jne .L692
	move.l %d2,%d2
	jpl .L706
	addq.l #1,%d2
.L706:
	asr.l #1,%d2
	jra .L693
.L688:
	move.l %a4,(%a3)
	move.l %a5,4(%a3)
	move.l %a6,8(%a3)
	move.l %a3,%a0
	movem.l (%sp)+,#31804
	lea (24,%sp),%sp
	rts
.L704:
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
	jra .L690
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%a2
	tst.l 16(%sp)
	jeq .L708
	move.l 16(%sp),%d0
	add.l %a2,%d0
	move.l %a0,%a1
.L709:
	addq.l #1,%a1
	move.b (%a2)+,%d1
	eor.b %d1,-1(%a1)
	cmp.l %d0,%a2
	jne .L709
.L708:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	rts
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	move.l 16(%sp),%d0
	move.l %a0,%a1
	tst.b (%a0)
	jeq .L717
.L718:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L718
.L717:
	tst.l %d0
	jeq .L719
	move.l 12(%sp),%a2
.L720:
	move.b (%a2)+,%d1
	move.b %d1,(%a1)+
	jeq .L722
	subq.l #1,%d0
	jne .L720
.L719:
	clr.b (%a1)
.L722:
	move.l %a0,%d0
	move.l (%sp)+,%a2
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
	jeq .L731
	tst.b (%a0,%d0.l)
	jne .L734
.L731:
	rts
.L734:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jeq .L731
	tst.b (%a0,%d0.l)
	jeq .L731
	jra .L734
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d2
	move.b (%a0),%d1
	jeq .L745
.L741:
	move.l %d2,%a1
.L744:
	move.b (%a1)+,%d0
	jeq .L749
	cmp.b %d0,%d1
	jne .L744
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L749:
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L741
.L745:
	sub.l %a0,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	movem.l #12320,-(%sp)
	move.l 20(%sp),%d3
	move.l 16(%sp),%a2
	sub.l %a0,%a0
.L752:
	move.l %a2,%d2
	move.b (%a2)+,%d1
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %d3,%a1
	jeq .L756
	tst.b %d1
	jne .L752
.L757:
	move.l %a0,%d0
	movem.l (%sp)+,#1036
	rts
.L756:
	move.l %d2,%a0
	tst.b %d1
	jne .L752
	jra .L757
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #15408,-(%sp)
	move.l 28(%sp),%d1
	move.l 32(%sp),%a3
	move.b (%a3),%d3
	jeq .L768
	move.l %a3,%a0
.L760:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L760
	move.l %a0,%d5
	sub.l %a3,%d5
	cmp.l %a0,%a3
	jeq .L768
	subq.l #1,%d5
.L766:
	move.l %d1,%a0
	move.b (%a0),%d0
	addq.l #1,%d1
	cmp.b %d0,%d3
	jeq .L765
	tst.b %d0
	jne .L766
	sub.l %a0,%a0
.L758:
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
.L765:
	move.b %d3,%d0
	move.l %a3,%d2
	move.l %a0,%d4
	add.l %d5,%d4
	move.l %a0,%a1
.L762:
	move.l %d2,%a2
	move.b (%a2),%d1
	addq.l #1,%d2
	tst.b %d1
	jeq .L763
	cmp.l %a1,%d4
	jeq .L763
	cmp.b %d1,%d0
	jne .L763
	addq.l #1,%a1
	move.b (%a1),%d0
	jne .L762
	move.l %d2,%a2
.L763:
	cmp.b (%a2),%d0
	jeq .L758
	move.l %a0,%d1
	addq.l #1,%d1
	jra .L766
.L768:
	move.l %d1,%a0
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
	movem.l #16160,-(%sp)
	move.l 32(%sp),%d2
	move.l 36(%sp),%d3
	clr.l %d4
	clr.l %d5
	lea __ltdf2,%a2
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L789
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L781
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L780
.L781:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
.L789:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L781
.L780:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	movem.l #14392,-(%sp)
	move.l 28(%sp),%a3
	move.l 40(%sp),%d4
	jeq .L796
	cmp.l 32(%sp),%d4
	jhi .L798
	move.l 32(%sp),%d0
	sub.l %d4,%d0
	move.l %a3,%d2
	add.l %d0,%d2
	cmp.l %a3,%d2
	jcs .L798
	move.l 36(%sp),%a4
	move.b (%a4)+,%d3
	move.l %a3,%d0
	add.l %d4,%d0
.L795:
	move.b (%a3),%d1
	move.l %a3,%a0
	addq.l #1,%a3
	cmp.b %d1,%d3
	jeq .L806
.L792:
	addq.l #1,%d0
	cmp.l %d2,%a3
	jls .L795
.L798:
	sub.l %a0,%a0
.L790:
	move.l %a0,%d0
	movem.l (%sp)+,#7196
	rts
.L806:
	moveq #1,%d1
	cmp.l %d4,%d1
	jeq .L790
	move.l %a3,%a1
	move.l %a4,%a2
.L793:
	cmpm.b (%a2)+,(%a1)+
	jne .L792
	cmp.l %a1,%d0
	jne .L793
	move.l %a0,%d0
	movem.l (%sp)+,#7196
	rts
.L796:
	move.l %a3,%a0
	move.l %a0,%d0
	movem.l (%sp)+,#7196
	rts
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	jeq .L808
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L808:
	move.l 8(%sp),%a0
	add.l %d2,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.type	frexp, @function
frexp:
	lea (-20,%sp),%sp
	movem.l #16190,-(%sp)
	move.l 68(%sp),%d2
	move.l 72(%sp),%d3
	clr.l %d6
	clr.l %d7
	lea __ltdf2,%a2
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L839
	lea __gedf2,%a4
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L840
	moveq #0,%d7
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
.L823:
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
	jge .L823
.L824:
	move.l 76(%sp),%a0
	move.l %d6,(%a0)
	move.l %d2,%a1
	tst.l %d7
	jeq .L830
	add.l #-2147483648,%a1
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (20,%sp),%sp
	rts
.L840:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L820
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L829
.L820:
	move.l 76(%sp),%a0
	clr.l (%a0)
	move.l %d2,%a1
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (20,%sp),%sp
	rts
.L839:
	move.l %d2,%d6
	add.l #-2147483648,%d6
	move.l %d3,52(%sp)
	clr.l -(%sp)
	move.l #-1074790400,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ledf2
	lea (16,%sp),%sp
	tst.l %d0
	jgt .L841
	move.l %d6,%a3
	move.l %d3,%a4
	move.l %a3,%d2
	move.l %a4,%d3
	moveq #1,%d7
	lea __gedf2,%a4
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
	jra .L823
.L830:
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (20,%sp),%sp
	rts
.L841:
	clr.l -(%sp)
	move.l #-1075838976,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L820
	moveq #1,%d7
	move.l 52(%sp),%d0
	move.l %d6,56(%sp)
	move.l %d0,60(%sp)
	move.l 56(%sp),%d2
	move.l 60(%sp),%d3
	moveq #0,%d6
	lea __adddf3,%a3
	move.l #1071644672,%d4
	clr.l %d5
.L825:
	subq.l #1,%d6
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	move.l %d0,%a5
	move.l %d1,%a6
	move.l %a5,%d2
	move.l %a6,%d3
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L824
	subq.l #1,%d6
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	move.l %d0,%a5
	move.l %d1,%a6
	move.l %a5,%d2
	move.l %a6,%d3
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L825
	jra .L824
.L829:
	move.l %d2,%d6
	move.l %d3,52(%sp)
	moveq #0,%d7
	move.l 52(%sp),%d0
	move.l %d6,56(%sp)
	move.l %d0,60(%sp)
	move.l 56(%sp),%d2
	move.l 60(%sp),%d3
	moveq #0,%d6
	lea __adddf3,%a3
	move.l #1071644672,%d4
	clr.l %d5
	jra .L825
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
	movem.l #16188,-(%sp)
	move.l 52(%sp),%d2
	move.l 56(%sp),%d3
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	sub.l %a2,%a2
	sub.l %a3,%a3
	move.l %d0,%d4
	or.l %d1,%d4
	jeq .L842
.L844:
	sub.l %a4,%a4
	moveq #1,%d5
	and.l %d1,%d5
	move.l %d5,%a5
	move.l %a4,%d4
	move.l %a5,%d5
	neg.l %d5
	negx.l %d4
	move.l %d4,%a0
	move.l %d5,%a1
	move.l %d4,%d6
	and.l %d2,%d6
	move.l %a1,%d7
	and.l %d3,%d7
	move.l %a2,%d4
	move.l %a3,%d5
	add.l %d7,%d5
	addx.l %d6,%d4
	move.l %d4,%a2
	move.l %d5,%a3
	add.l %d3,%d3
	addx.l %d2,%d2
	lsr.l #1,%d0
	roxr.l #1,%d1
	move.l %d0,%d5
	or.l %d1,%d5
	jne .L844
.L842:
	move.l %a2,%d0
	move.l %a3,%d1
	movem.l (%sp)+,#15612
	rts
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
	jls .L851
	moveq #32,%d0
	moveq #1,%d2
.L850:
	tst.l %d1
	jlt .L851
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L866
	subq.l #1,%d0
	jne .L850
.L853:
	tst.l 16(%sp)
	jne .L867
.L849:
	move.l (%sp)+,%d2
	rts
.L866:
	moveq #0,%d0
	tst.l %d2
	jeq .L853
.L851:
	moveq #0,%d0
.L856:
	cmp.l %a0,%d1
	jhi .L855
	sub.l %d1,%a0
	or.l %d2,%d0
.L855:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L856
	tst.l 16(%sp)
	jeq .L849
.L867:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
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
	jeq .L870
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
	move.l (%sp)+,%d2
	rts
.L870:
	moveq #7,%d0
	move.l (%sp)+,%d2
	rts
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
	jeq .L875
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
	movem.l (%sp)+,#252
	rts
.L875:
	moveq #63,%d0
	movem.l (%sp)+,#252
	rts
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	moveq #0,%d0
	tst.l %d2
	jeq .L878
.L880:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L880
.L878:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
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
	jhi .L886
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jls .L902
.L886:
	tst.l %d2
	jeq .L889
	move.l %d3,%a0
	move.l %d4,%a1
	lsl.l #3,%d2
	add.l %d3,%d2
.L890:
	move.l (%a0)+,%d5
	move.l (%a0)+,%d6
	move.l %d5,(%a1)+
	move.l %d6,(%a1)+
	cmp.l %a0,%d2
	jne .L890
.L889:
	cmp.l %d0,%d1
	jcc .L885
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L891:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L891
.L885:
	movem.l (%sp)+,#124
	rts
.L902:
	tst.l %d0
	jeq .L885
	move.l %d4,%a0
	add.l %d0,%a0
.L892:
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jeq .L885
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jne .L892
	jra .L885
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
	jhi .L904
	lea (%a3,%d1.l),%a1
	cmp.l %a1,%a2
	jls .L921
.L904:
	tst.l %d0
	jeq .L907
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
.L908:
	move.w (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L908
.L907:
	btst #0,%d1
	jeq .L903
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L903:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L921:
	add.l %d1,%a2
	tst.l %d1
	jeq .L903
.L909:
	move.b -(%a1),-(%a2)
	cmp.l %a3,%a1
	jeq .L903
	move.b -(%a1),-(%a2)
	cmp.l %a3,%a1
	jne .L909
	jra .L903
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
	jhi .L923
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jls .L939
.L923:
	tst.l %d2
	jeq .L926
	move.l %d3,%a0
	move.l %d4,%a2
	add.l %d2,%d2
	add.l %d2,%d2
	move.l %d2,%a1
	add.l %d3,%a1
.L927:
	move.l (%a0)+,(%a2)+
	cmp.l %a0,%a1
	jne .L927
.L926:
	cmp.l %d0,%d1
	jcc .L922
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L928:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L928
.L922:
	movem.l (%sp)+,#1052
	rts
.L939:
	tst.l %d0
	jeq .L922
	move.l %d4,%a0
	add.l %d0,%a0
.L929:
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jeq .L922
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jne .L929
	jra .L922
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
	moveq #0,%d2
	move.w 10(%sp),%d2
	moveq #0,%d0
.L954:
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L952
	addq.l #1,%d0
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L954
.L952:
	move.l (%sp)+,%d2
	rts
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	move.l %d2,-(%sp)
	moveq #0,%d1
	move.w 10(%sp),%d1
	moveq #0,%d0
.L960:
	btst %d0,%d1
	jne .L958
	addq.l #1,%d0
	moveq #16,%d2
	cmp.l %d0,%d2
	jne .L960
.L958:
	move.l (%sp)+,%d2
	rts
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l #0x47000000,%d3
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gesf2
	addq.l #8,%sp
	tst.l %d0
	jge .L972
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L972:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	movem.l #14336,-(%sp)
	moveq #0,%d3
	move.w 18(%sp),%d3
	moveq #0,%d0
	moveq #0,%d1
.L974:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L974
	and.l %d4,%d0
	movem.l (%sp)+,#28
	rts
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	movem.l #14336,-(%sp)
	moveq #0,%d3
	move.w 18(%sp),%d3
	moveq #0,%d0
	moveq #0,%d1
.L979:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L979
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
	moveq #0,%d0
	tst.l %d2
	jeq .L983
.L985:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L985
.L983:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	moveq #0,%d0
	tst.l %d2
	jeq .L990
	tst.l %d3
	jeq .L990
.L992:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L992
.L990:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	moveq #1,%d2
	cmp.l %a0,%d1
	jcc .L1001
	moveq #32,%d0
	moveq #1,%d2
.L1000:
	tst.l %d1
	jlt .L1001
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1002
	subq.l #1,%d0
	jne .L1000
	tst.l 16(%sp)
	jne .L1017
.L999:
	move.l (%sp)+,%d2
	rts
.L1002:
	tst.l %d2
	jeq .L1009
.L1001:
	moveq #0,%d0
.L1006:
	cmp.l %a0,%d1
	jhi .L1005
	sub.l %d1,%a0
	or.l %d2,%d0
.L1005:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1006
	tst.l 16(%sp)
	jeq .L999
.L1017:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1009:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L999
	jra .L1017
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
	jlt .L1021
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L1024
	move.l %d2,%d0
.L1018:
	movem.l (%sp)+,#28
	rts
.L1024:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L1018
.L1021:
	moveq #-1,%d0
	movem.l (%sp)+,#28
	rts
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
	jlt .L1028
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L1031
	move.l %d6,%d0
.L1025:
	movem.l (%sp)+,#124
	rts
.L1031:
	moveq #0,%d6
	move.l %d6,%d0
	jra .L1025
.L1028:
	moveq #-1,%d0
	movem.l (%sp)+,#124
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
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d2
	jmi .L1052
	jeq .L1042
	sub.l %a0,%a0
	moveq #32,%d4
	moveq #0,%d0
.L1041:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L1040
	subq.b #1,%d4
	jne .L1041
.L1040:
	cmp.w #0,%a0
	jeq .L1036
	neg.l %d0
.L1036:
	movem.l (%sp)+,#28
	rts
.L1052:
	neg.l %d2
	move.w #1,%a0
	moveq #32,%d4
	moveq #0,%d0
	jra .L1041
.L1042:
	moveq #0,%d0
	movem.l (%sp)+,#28
	rts
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d3
	move.l 20(%sp),%d1
	tst.l %d3
	jlt .L1075
	moveq #0,%d4
	tst.l %d1
	jlt .L1076
.L1055:
	move.l %d3,%a0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1057
	moveq #32,%d0
	moveq #1,%d2
.L1056:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1059
	subq.l #1,%d0
	jne .L1056
.L1059:
	moveq #0,%d0
	tst.l %d2
	jeq .L1058
.L1057:
	moveq #0,%d0
.L1062:
	cmp.l %d1,%a0
	jcs .L1061
	sub.l %d1,%a0
	or.l %d2,%d0
.L1061:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1062
.L1058:
	tst.l %d4
	jeq .L1053
	neg.l %d0
.L1053:
	movem.l (%sp)+,#28
	rts
.L1076:
	neg.l %d1
	eor.w #1,%d4
	jra .L1055
.L1075:
	neg.l %d3
	moveq #1,%d4
	tst.l %d1
	jge .L1055
	jra .L1076
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	jmi .L1099
	sub.l %a1,%a1
	move.l 16(%sp),%d1
	jmi .L1100
.L1079:
	move.l %d3,%d0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1086
	move.w #32,%a0
	moveq #1,%d2
.L1080:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1083
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L1080
.L1083:
	tst.l %d2
	jeq .L1101
.L1086:
	cmp.l %d0,%d1
	jhi .L1085
	sub.l %d1,%d0
.L1085:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1086
.L1082:
	cmp.w #0,%a1
	jeq .L1077
	neg.l %d0
.L1077:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1100:
	neg.l %d1
	jra .L1079
.L1099:
	neg.l %d3
	move.w #1,%a1
	move.l 16(%sp),%d1
	jpl .L1079
	jra .L1100
.L1101:
	move.l %d3,%d0
	jra .L1082
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
	jcc .L1104
	moveq #16,%d0
	moveq #1,%d2
.L1103:
	tst.w %d1
	jlt .L1104
	add.w %d1,%d1
	add.w %d2,%d2
	cmp.w %a0,%d1
	jcc .L1117
	subq.l #1,%d0
	jne .L1103
.L1112:
	clr.w %d0
	tst.l 16(%sp)
	jne .L1118
.L1102:
	move.l (%sp)+,%d2
	rts
.L1117:
	tst.w %d2
	jeq .L1112
.L1104:
	clr.w %d0
.L1109:
	cmp.w %a0,%d1
	jhi .L1108
	sub.w %d1,%a0
	or.w %d2,%d0
.L1108:
	lsr.w #1,%d2
	lsr.w #1,%d1
	tst.w %d2
	jne .L1109
	tst.l 16(%sp)
	jeq .L1102
.L1118:
	move.w %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d1
	moveq #1,%d2
	cmp.l %a0,%d1
	jcc .L1121
	moveq #32,%d0
	moveq #1,%d2
.L1120:
	tst.l %d1
	jlt .L1121
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1122
	subq.l #1,%d0
	jne .L1120
	tst.l 16(%sp)
	jne .L1137
.L1119:
	move.l (%sp)+,%d2
	rts
.L1122:
	tst.l %d2
	jeq .L1129
.L1121:
	moveq #0,%d0
.L1126:
	cmp.l %a0,%d1
	jhi .L1125
	sub.l %d1,%a0
	or.l %d2,%d0
.L1125:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1126
	tst.l 16(%sp)
	jeq .L1119
.L1137:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1129:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1119
	jra .L1137
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
	jeq .L1139
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	moveq #0,%d1
.L1141:
	movem.l (%sp)+,#28
	rts
.L1139:
	move.l %d3,%d1
	tst.l %d2
	jeq .L1141
	lsl.l %d2,%d1
	moveq #32,%d4
	sub.l %d2,%d4
	lsr.l %d4,%d3
	lsl.l %d2,%d0
	or.l %d3,%d0
	movem.l (%sp)+,#28
	rts
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d1
	move.l 20(%sp),%d3
	move.l 24(%sp),%d2
	move.l %d1,%d0
	btst #5,%d2
	jeq .L1146
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
	movem.l (%sp)+,#28
	rts
.L1146:
	tst.l %d2
	jeq .L1149
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1149:
	move.l %d3,%d1
	movem.l (%sp)+,#28
	rts
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	move.l 4(%sp),%d1
	ror.w #8,%d1
	swap %d1
	ror.w #8,%d1
	move.l 8(%sp),%d0
	ror.w #8,%d0
	swap %d0
	ror.w #8,%d0
	rts
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	move.l 4(%sp),%d0
	ror.w #8,%d0
	swap %d0
	ror.w #8,%d0
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
	jne .L1157
	moveq #2,%d0
	sub.l %d2,%d0
	add.l %d1,%a0
	add.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1157:
	moveq #0,%d0
	add.l %d1,%a0
	add.l %a0,%d0
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
	jgt .L1165
	jlt .L1166
	cmp.l %a1,%a0
	jhi .L1165
	jcs .L1166
	moveq #1,%d0
	rts
.L1165:
	moveq #0,%d0
	rts
.L1166:
	moveq #2,%d0
	rts
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	move.l 16(%sp),%a1
	cmp.l %a0,%d1
	jgt .L1173
	jlt .L1172
	cmp.l %d0,%a1
	jhi .L1173
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1173:
	moveq #-1,%d0
	rts
.L1172:
	moveq #1,%d0
	rts
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	movem.l #14336,-(%sp)
	move.l 16(%sp),%d2
	tst.w %d2
	seq %d1
	ext.w %d1
	ext.l %d1
	neg.l %d1
	lsl.l #4,%d1
	lsr.l %d1,%d2
	tst.b %d2
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	lsl.l #3,%d0
	lsr.l %d0,%d2
	add.l %d0,%d1
	moveq #15,%d0
	and.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	add.l %d0,%d0
	add.l %d0,%d0
	lsr.l %d0,%d2
	add.l %d0,%d1
	moveq #3,%d3
	and.l %d2,%d3
	seq %d3
	ext.w %d3
	ext.l %d3
	neg.l %d3
	add.l %d3,%d3
	lsr.l %d3,%d2
	moveq #3,%d0
	and.l %d0,%d2
	move.l %d2,%d0
	not.l %d0
	moveq #1,%d4
	and.l %d4,%d0
	lsr.l #1,%d2
	moveq #2,%d4
	sub.l %d2,%d4
	mulu.w %d4,%d0
	add.l %d1,%d3
	add.l %d3,%d0
	movem.l (%sp)+,#28
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
	jeq .L1179
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	moveq #0,%d0
	movem.l (%sp)+,#28
	rts
.L1179:
	move.l %d1,%d0
	tst.l %d2
	jeq .L1182
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1182:
	move.l %d3,%d1
	movem.l (%sp)+,#28
	rts
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%d2
	move.l 28(%sp),%d0
	move.w %d2,%d1
	mulu.w %d0,%d1
	move.l %d1,%d4
	clr.w %d4
	swap %d4
	move.l %d2,%d5
	clr.w %d5
	swap %d5
	move.w %d0,%d3
	mulu.w %d5,%d3
	add.l %d4,%d3
	moveq #0,%d6
	move.w %d3,%d6
	move.l %d0,%d4
	clr.w %d4
	swap %d4
	move.w %d2,%d0
	mulu.w %d4,%d0
	add.l %d6,%d0
	and.l #65535,%d1
	move.l %d0,%d2
	swap %d2
	clr.w %d2
	clr.w %d3
	swap %d3
	mulu.w %d4,%d5
	add.l %d5,%d3
	clr.w %d0
	swap %d0
	add.l %d3,%d0
	add.l %d2,%d1
	movem.l (%sp)+,#124
	rts
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	movem.l #16160,-(%sp)
	move.l 36(%sp),%d3
	move.l 44(%sp),%d6
	move.w %d3,%d1
	mulu.w %d6,%d1
	move.l %d1,%d0
	clr.w %d0
	swap %d0
	move.l %d3,%d4
	clr.w %d4
	swap %d4
	move.w %d6,%d2
	mulu.w %d4,%d2
	add.l %d0,%d2
	moveq #0,%d5
	move.w %d2,%d5
	move.l %d6,%d7
	clr.w %d7
	swap %d7
	move.w %d3,%d0
	mulu.w %d7,%d0
	add.l %d5,%d0
	move.w %d1,%d5
	move.l %d0,%d1
	swap %d1
	clr.w %d1
	add.l %d1,%d5
	clr.w %d2
	swap %d2
	mulu.w %d7,%d4
	add.l %d4,%d2
	clr.w %d0
	swap %d0
	add.l %d0,%d2
	lea __mulsi3,%a2
	move.l 40(%sp),-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d0,%d2
	move.l 32(%sp),-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	add.l %d2,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#1276
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
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	eor.l %d1,%d0
	move.l %d0,%d1
	clr.w %d1
	swap %d1
	eor.l %d0,%d1
	move.l %d1,%d0
	lsr.l #8,%d0
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #4,%d1
	eor.l %d0,%d1
	moveq #15,%d0
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
	moveq #0,%d1
	move.w 4(%sp),%d1
	move.l 4(%sp),%d0
	eor.l %d0,%d1
	move.l %d1,%d0
	lsr.l #8,%d0
	eor.l %d1,%d0
	move.l %d0,%d1
	lsr.l #4,%d1
	eor.l %d0,%d1
	moveq #15,%d0
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
	subq.l #8,%sp
	movem.l #16190,-(%sp)
	move.l 56(%sp),%a2
	move.l 60(%sp),%a3
	move.l 64(%sp),%a6
	move.l %a6,%d0
	move.l %a6,%a4
	move.l #1072693248,%d6
	clr.l %d7
	btst #0,%d0
	jeq .L1200
	lea __muldf3,%a5
.L1202:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a5)
	lea (16,%sp),%sp
	move.l %d0,%d4
	move.l %d1,%d5
	move.l %d4,%d6
	move.l %d5,%d7
.L1200:
	move.l %a4,%d0
	jpl .L1209
	addq.l #1,%d0
.L1209:
	asr.l #1,%d0
	move.l %d0,%a4
	jeq .L1201
	lea __muldf3,%a5
.L1203:
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
	move.l %a4,%d0
	btst #0,%d0
	jne .L1202
	move.l %a4,%d0
	jpl .L1210
	addq.l #1,%d0
.L1210:
	asr.l #1,%d0
	move.l %d0,%a4
	jra .L1203
.L1201:
	cmp.w #0,%a6
	jlt .L1208
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31996
	addq.l #8,%sp
	rts
.L1208:
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
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31996
	addq.l #8,%sp
	rts
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
	btst #0,%d5
	jeq .L1212
	lea __mulsf3,%a2
.L1214:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L1212:
	move.l %d2,%d2
	jpl .L1221
	addq.l #1,%d2
.L1221:
	asr.l #1,%d2
	jeq .L1213
	lea __mulsf3,%a2
.L1215:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L1214
	move.l %d2,%d2
	jpl .L1222
	addq.l #1,%d2
.L1222:
	asr.l #1,%d2
	jra .L1215
.L1213:
	tst.l %d5
	jlt .L1220
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
.L1220:
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	move.l %d0,%d4
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
	jhi .L1227
	jcs .L1228
	cmp.l %a1,%a0
	jhi .L1227
	jcs .L1228
	moveq #1,%d0
	rts
.L1227:
	moveq #0,%d0
	rts
.L1228:
	moveq #2,%d0
	rts
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	move.l 16(%sp),%a1
	cmp.l %a0,%d1
	jhi .L1235
	jcs .L1234
	cmp.l %d0,%a1
	jhi .L1235
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1235:
	moveq #-1,%d0
	rts
.L1234:
	moveq #1,%d0
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
	.globl	__ledf2
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
