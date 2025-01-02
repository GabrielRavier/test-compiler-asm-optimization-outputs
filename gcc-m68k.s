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
	move.b (%a0)+,%d0
	move.b %d0,(%a1)+
	and.l #255,%d0
	cmp.l %d0,%d3
	jeq .L31
	subq.l #1,%d1
	jne .L19
.L18:
	sub.l %a0,%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L31:
	move.l %a1,%a0
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
	jeq .L37
	move.l 8(%sp),%a1
.L34:
	move.l %a1,%a0
	moveq #0,%d1
	move.b (%a1)+,%d1
	cmp.l %d1,%d2
	jeq .L32
	subq.l #1,%d0
	jne .L34
.L37:
	sub.l %a0,%a0
.L32:
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
	jeq .L46
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L42:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #1,%d1
	addq.l #1,%d0
	move.b (%a2),%d2
	cmp.b (%a1),%d2
	jne .L50
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L42
.L46:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L50:
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
	jeq .L52
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L52:
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
.L59:
	cmp.l %d0,%a1
	jeq .L64
	move.l %d0,%a0
	subq.l #1,%d0
	moveq #0,%d1
	move.b (%a0),%d1
	cmp.l %d1,%d2
	jne .L59
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L64:
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
	jeq .L68
	move.l %d0,-(%sp)
	moveq #0,%d0
	not.b %d0
	and.l 16(%sp),%d0
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr memset
	lea (12,%sp),%sp
.L68:
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
	jeq .L72
.L73:
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	jne .L73
.L72:
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
	jeq .L80
.L81:
	and.l #255,%d0
	cmp.l %d0,%d1
	jeq .L80
	addq.l #1,%a0
	move.b (%a0),%d0
	jne .L81
.L80:
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
.L91:
	move.l %d2,%a0
	move.b (%a0),%d1
	addq.l #1,%d2
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %a1,%d3
	jeq .L89
	tst.b %d1
	jne .L91
	sub.l %a0,%a0
.L89:
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
	jne .L101
.L96:
	tst.b %d0
	jeq .L104
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d0
	move.b (%a0),%d1
	cmp.b %d0,%d1
	jeq .L96
.L101:
	and.l #255,%d0
	and.l #255,%d1
	sub.l %d1,%d0
	rts
.L104:
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
	jeq .L108
	move.l %a1,%a0
.L107:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L107
	move.l %a0,%d0
	sub.l %a1,%d0
	rts
.L108:
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
	jeq .L120
	move.b (%a0),%d0
	jeq .L125
	move.l 16(%sp),%a1
	lea -1(%a0,%d1.l),%a2
.L116:
	move.l %a1,%a3
	move.b (%a1)+,%d1
	jeq .L122
	cmp.l %a0,%a2
	jeq .L122
	cmp.b %d1,%d0
	jne .L122
	addq.l #1,%a0
	move.b (%a0),%d0
	jne .L116
	move.b 1(%a3),%d1
	moveq #0,%d0
	and.l #255,%d1
	sub.l %d1,%d0
.L112:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L122:
	and.l #255,%d0
	and.l #255,%d1
	sub.l %d1,%d0
	jra .L112
.L120:
	moveq #0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L125:
	move.l 16(%sp),%a0
	move.b (%a0),%d1
	moveq #0,%d0
	and.l #255,%d1
	sub.l %d1,%d0
	jra .L112
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	move.l 4(%sp),%a0
	move.l 8(%sp),%a1
	moveq #1,%d0
	cmp.l 12(%sp),%d0
	jge .L126
	moveq #-2,%d0
	and.l 12(%sp),%d0
	add.l %a0,%d0
.L128:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%d0
	jne .L128
.L126:
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
	jeq .L138
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L138:
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
	jcc .L143
	moveq #127,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L143:
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
	jeq .L156
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L156:
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
	jcc .L165
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcs .L168
.L165:
	moveq #1,%d0
	rts
.L168:
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L165
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
	jls .L180
	cmp.l #8231,%d0
	jls .L176
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L176
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L176
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L177
	and.l #65534,%d0
	cmp.l #65534,%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L176:
	moveq #1,%d0
	rts
.L180:
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
.L177:
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
	jcc .L183
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
.L183:
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
	jne .L191
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L192
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L195
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
.L195:
	moveq #0,%d0
	moveq #0,%d1
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L191:
	move.l %d2,%d0
	move.l %d3,%d1
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L192:
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
	jne .L201
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L202
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L205
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	movem.l (%sp)+,#1036
	rts
.L205:
	moveq #0,%d0
	movem.l (%sp)+,#1036
	rts
.L201:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L202:
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
	jne .L216
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L215
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L210
	tst.l %d0
	jeq .L215
.L216:
	move.l %d4,%d1
	move.l %d5,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L210:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L216
.L215:
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
	jne .L229
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L228
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L234
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L229
	move.l %d3,%d2
.L229:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L234:
	tst.l %d0
	jne .L229
.L228:
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
	jne .L242
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L236
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %a4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L250
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L251
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L236:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L250:
	tst.l %d0
	jeq .L236
.L242:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L251:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
	jra .L236
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
	jne .L258
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L260
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L254
	tst.l %d0
	jeq .L258
.L260:
	move.l %d2,%d1
	move.l %d3,%d0
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L254:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L260
.L258:
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
	jne .L271
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L273
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L278
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L273
	move.l %d3,%d2
.L273:
	move.l %d2,%d0
	movem.l (%sp)+,#1036
	rts
.L278:
	tst.l %d0
	jne .L273
.L271:
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
	jne .L280
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L286
	move.l %a4,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jne .L294
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L295
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L280:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L294:
	tst.l %d0
	jeq .L280
.L286:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
.L295:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
	jra .L280
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	lea (s.0),%a0
	jeq .L297
	lea digits,%a1
.L298:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L298
.L297:
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
	jeq .L315
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L307
	move.l %a0,4(%a1)
.L307:
	rts
.L315:
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
	jeq .L317
	move.l 4(%a0),4(%a1)
.L317:
	move.l 4(%a0),%a0
	cmp.w #0,%a0
	jeq .L316
	move.l %a1,(%a0)
.L316:
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
	jeq .L328
	move.l 40(%sp),%d2
	moveq #0,%d3
.L330:
	move.l %d2,%d6
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L327
	addq.l #1,%d3
	add.l %d5,%d2
	cmp.l %d4,%d3
	jne .L330
.L328:
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
	jeq .L327
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L327:
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
	move.l (%a0),%d5
	jeq .L345
	move.l 36(%sp),%d2
	moveq #0,%d3
.L347:
	move.l %d2,%d4
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L344
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d5,%d3
	jne .L347
.L345:
	moveq #0,%d4
.L344:
	move.l %d4,%a0
	move.l %d4,%d0
	movem.l (%sp)+,#1276
	rts
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d0
	jmi .L361
	rts
.L361:
	neg.l %d0
	rts
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a0
.L363:
	move.l %a0,%a3
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L363
	move.b %d0,%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-9,%a1),%a2
	moveq #4,%d1
	cmp.l %a2,%d1
	jcc .L363
	cmp.b #43,%d0
	jeq .L365
	cmp.b #45,%d0
	jeq .L366
	lea (-48,%a1),%a1
	moveq #9,%d0
	cmp.l %a1,%d0
	jcs .L374
	move.l %a3,%a2
	sub.l %a3,%a3
.L368:
	moveq #0,%d0
.L371:
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
	jcc .L371
	cmp.w #0,%a3
	jne .L362
	move.l %a0,%d0
	sub.l %d1,%d0
.L362:
	movem.l (%sp)+,#3084
	rts
.L366:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L374
	move.w #1,%a3
	moveq #0,%d0
	jra .L371
.L365:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	sub.l %a3,%a3
	moveq #9,%d3
	cmp.l %a0,%d3
	jcc .L368
.L374:
	moveq #0,%d0
	movem.l (%sp)+,#3084
	rts
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	movem.l #12336,-(%sp)
	move.l 20(%sp),%a0
.L385:
	move.l %a0,%a3
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L385
	move.b %d0,%d2
	ext.w %d2
	move.w %d2,%a1
	lea (-9,%a1),%a2
	moveq #4,%d1
	cmp.l %a2,%d1
	jcc .L385
	cmp.b #43,%d0
	jeq .L387
	cmp.b #45,%d0
	jeq .L405
	lea (-48,%a1),%a1
	moveq #9,%d0
	move.l %a3,%a2
	cmp.l %a1,%d0
	jcs .L395
	sub.l %a3,%a3
.L389:
	moveq #0,%d0
.L392:
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
	jcc .L392
	cmp.w #0,%a3
	jne .L384
	move.l %a0,%d0
	sub.l %d1,%d0
.L384:
	movem.l (%sp)+,#3084
	rts
.L405:
	move.l %a0,%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	move.w #1,%a3
	moveq #9,%d3
	cmp.l %a0,%d3
	jcc .L389
.L395:
	moveq #0,%d0
	movem.l (%sp)+,#3084
	rts
.L387:
	lea (1,%a3),%a2
	move.b 1(%a3),%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcs .L395
	sub.l %a3,%a3
	jra .L389
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%a0
.L407:
	move.l %a0,%a2
	move.b (%a0)+,%d0
	cmp.b #32,%d0
	jeq .L407
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a1
	lea (-9,%a1),%a3
	moveq #4,%d2
	cmp.l %a3,%d2
	jcc .L407
	cmp.b #43,%d0
	jeq .L409
	cmp.b #45,%d0
	jeq .L410
	lea (-48,%a1),%a1
	moveq #9,%d2
	cmp.l %a1,%d2
	jcs .L418
	move.l %a2,%a1
	sub.l %a2,%a2
.L412:
	clr.l %d4
	clr.l %d5
.L415:
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
	jcc .L415
	cmp.w #0,%a2
	jne .L406
	move.l %d6,%d4
	move.l %d7,%d5
	sub.l %d3,%d5
	subx.l %d2,%d4
.L406:
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#3324
	rts
.L410:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcs .L418
	move.w #1,%a2
	clr.l %d4
	clr.l %d5
	jra .L415
.L409:
	lea (1,%a2),%a1
	move.b 1(%a2),%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	sub.l %a2,%a2
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L412
.L418:
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
	jeq .L429
	lea __mulsi3,%a3
.L432:
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
	jlt .L433
	jeq .L428
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	sub.l %d7,%d2
	jne .L432
.L429:
	moveq #0,%d3
.L428:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
.L433:
	move.l %d7,%d2
	jne .L432
	jra .L429
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movem.l #16184,-(%sp)
	move.l 40(%sp),%d7
	move.l 44(%sp),%d5
	move.l 52(%sp),%d4
	move.l 56(%sp),%a3
	move.l 60(%sp),%d6
	move.l 48(%sp),%d3
	lea __mulsi3,%a2
	jeq .L448
.L444:
	move.l %d3,%d0
	asr.l #1,%d0
	move.l %d0,%a4
	move.l %d4,-(%sp)
	move.l %d0,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d5,%d2
	add.l %d0,%d2
	move.l %d6,-(%sp)
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L443
	jle .L446
	move.l %d2,%d5
	add.l %d4,%d5
	subq.l #1,%d3
	asr.l #1,%d3
	jne .L444
.L448:
	moveq #0,%d2
.L443:
	move.l %d2,%a0
	move.l %d2,%d0
	movem.l (%sp)+,#7420
	rts
.L446:
	cmp.w #0,%a4
	jeq .L448
	move.l %a4,%d3
	jra .L444
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
	jlt .L465
	rts
.L465:
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
	jmi .L472
	rts
.L472:
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
	jlt .L479
	rts
.L479:
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
	jeq .L486
.L483:
	cmp.l %d1,%d0
	jeq .L482
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L483
.L486:
	sub.l %a0,%a0
.L482:
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
	jne .L492
.L491:
	tst.l %d0
	jeq .L492
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L491
.L492:
	cmp.l %d0,%d1
	jgt .L495
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L495:
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
.L500:
	move.l (%a2)+,%d0
	move.l %d0,(%a1)+
	jne .L500
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
	jeq .L507
	move.l %a1,%a0
.L506:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L506
	sub.l %a1,%a0
	move.l %a0,%d0
	asr.l #2,%d0
	rts
.L507:
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
	jeq .L518
	move.l 12(%sp),%a0
	move.l 16(%sp),%d0
.L513:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L514
	cmp.w #0,%a1
	jeq .L514
	subq.l #1,%d1
	jne .L513
.L518:
	moveq #0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L514:
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L521
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L521:
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
	jeq .L527
	move.l 4(%sp),%a1
.L524:
	move.l %a1,%a0
	cmp.l (%a1)+,%d1
	jeq .L522
	subq.l #1,%d0
	jne .L524
.L527:
	sub.l %a0,%a0
.L522:
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
	jeq .L537
	move.l 12(%sp),%d1
	move.l 16(%sp),%d0
.L532:
	move.l %d0,%a1
	move.l %d1,%a2
	addq.l #4,%d1
	addq.l #4,%d0
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L541
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L532
.L537:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L541:
	move.l (%a2),%d0
	move.l (%a1),%d1
	cmp.l %d0,%d1
	jgt .L542
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L542:
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
	jeq .L544
	add.l %d0,%d0
	add.l %d0,%d0
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L544:
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
	jeq .L558
	move.l %a0,%a3
	move.l %d1,%a2
	add.l %d1,%a2
	add.l %a2,%a2
	move.l %a0,%d0
	sub.l %a1,%d0
	cmp.l %d0,%a2
	jls .L566
	tst.l %d1
	jeq .L558
	lea (%a1,%a2.l),%a3
	lea (%a0,%a2.l),%a2
.L555:
	move.l -(%a3),-(%a2)
	cmp.l %a1,%a3
	jne .L555
.L558:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L566:
	move.l %d1,%d0
	subq.l #1,%d0
	tst.l %d1
	jeq .L558
.L556:
	move.l (%a1)+,(%a3)+
	dbra %d0,.L556
	clr.w %d0
	subq.l #1,%d0
	jcc .L556
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
	jeq .L568
	move.l %a0,%a1
.L569:
	move.l %d1,(%a1)+
	dbra %d0,.L569
	clr.w %d0
	subq.l #1,%d0
	jcc .L569
.L568:
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
	jls .L577
	lea (%a0,%d0.l),%a1
	tst.l %d0
	jeq .L576
	lea -1(%a2,%d0.l),%a2
.L579:
	move.b -(%a1),(%a2)
	subq.l #1,%a2
	cmp.l %a0,%a1
	jne .L579
.L576:
	move.l (%sp)+,%a2
	rts
.L577:
	cmp.l %a0,%a2
	jeq .L576
	tst.l %d0
	jeq .L576
	add.l %a0,%d0
.L580:
	move.b (%a0)+,(%a2)+
	cmp.l %a0,%d0
	jeq .L576
	move.b (%a0)+,(%a2)+
	cmp.l %a0,%d0
	jne .L580
	jra .L576
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
	jlt .L593
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
	jlt .L595
.L599:
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L593:
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
	jge .L599
.L595:
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
	jlt .L601
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
	jlt .L603
.L607:
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L601:
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
	jge .L607
.L603:
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
.L633:
	move.l %d2,%d1
	lsr.l %d0,%d1
	addq.l #1,%d0
	btst #0,%d1
	jne .L630
	moveq #32,%d1
	cmp.l %d0,%d1
	jne .L633
	moveq #0,%d0
.L630:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L640
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L637
	moveq #1,%d0
.L639:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L639
.L637:
	rts
.L640:
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
	jlt .L648
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L651
	move.l %d2,%d0
.L645:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L648:
	moveq #1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L651:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L645
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
	jlt .L655
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L658
	move.l %d2,%d0
.L652:
	movem.l (%sp)+,#52
	rts
.L655:
	moveq #1,%d0
	movem.l (%sp)+,#52
	rts
.L658:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L652
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
	jlt .L662
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
	jle .L665
	move.l %d2,%d0
.L659:
	movem.l (%sp)+,#60
	rts
.L662:
	moveq #1,%d0
	movem.l (%sp)+,#60
	rts
.L665:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L659
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
	jne .L669
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #4,%sp
	move.l %d4,(%sp)
	move.l %d0,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L669
	tst.l %d2
	jlt .L685
	move.l #0x40000000,%d3
.L671:
	btst #0,%d2
	jeq .L672
	lea __mulsf3,%a2
.L673:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L672:
	move.l %d2,%d2
	jpl .L686
	addq.l #1,%d2
.L686:
	asr.l #1,%d2
	jeq .L669
	lea __mulsf3,%a2
.L674:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L673
	move.l %d2,%d2
	jpl .L687
	addq.l #1,%d2
.L687:
	asr.l #1,%d2
	jra .L674
.L669:
	move.l %d4,%d0
	movem.l (%sp)+,#1052
	rts
.L685:
	move.l #0x3f000000,%d3
	jra .L671
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
	jne .L689
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
	jeq .L689
	tst.l %d2
	jlt .L705
	move.l #1073741824,%a4
	sub.l %a5,%a5
.L691:
	btst #0,%d2
	jeq .L692
	lea __muldf3,%a6
.L693:
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
.L692:
	move.l %d2,%d2
	jpl .L706
	addq.l #1,%d2
.L706:
	asr.l #1,%d2
	jeq .L689
	lea __muldf3,%a6
.L694:
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
	jne .L693
	move.l %d2,%d2
	jpl .L707
	addq.l #1,%d2
.L707:
	asr.l #1,%d2
	jra .L694
.L689:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31988
	rts
.L705:
	move.l #1071644672,%a4
	sub.l %a5,%a5
	jra .L691
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
	jne .L709
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
	jeq .L709
	tst.l %d2
	jlt .L725
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
.L711:
	btst #0,%d2
	jeq .L712
	lea __mulxf3,%a2
.L713:
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
.L712:
	move.l %d2,%d2
	jpl .L726
	addq.l #1,%d2
.L726:
	asr.l #1,%d2
	jeq .L709
	lea __mulxf3,%a2
.L714:
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
	jne .L713
	move.l %d2,%d2
	jpl .L727
	addq.l #1,%d2
.L727:
	asr.l #1,%d2
	jra .L714
.L709:
	move.l %a4,(%a3)
	move.l %a5,4(%a3)
	move.l %a6,8(%a3)
	move.l %a3,%a0
	movem.l (%sp)+,#31804
	lea (24,%sp),%sp
	rts
.L725:
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
	jra .L711
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%a2
	tst.l 16(%sp)
	jeq .L729
	move.l 16(%sp),%d0
	add.l %a2,%d0
	move.l %a0,%a1
.L730:
	addq.l #1,%a1
	move.b (%a2)+,%d1
	eor.b %d1,-1(%a1)
	cmp.l %a2,%d0
	jne .L730
.L729:
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
	jeq .L738
.L739:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L739
.L738:
	tst.l %d0
	jeq .L740
	move.l 12(%sp),%a2
.L741:
	move.b (%a2)+,%d1
	move.b %d1,(%a1)+
	jeq .L743
	subq.l #1,%d0
	jne .L741
.L740:
	clr.b (%a1)
.L743:
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
	jeq .L752
	tst.b (%a0,%d0.l)
	jne .L755
.L752:
	rts
.L755:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jeq .L752
	tst.b (%a0,%d0.l)
	jeq .L752
	jra .L755
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d2
	move.b (%a0),%d1
	jeq .L766
.L762:
	move.l %d2,%a1
.L765:
	move.b (%a1)+,%d0
	jeq .L770
	cmp.b %d0,%d1
	jne .L765
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L770:
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L762
.L766:
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
.L773:
	move.l %a2,%d2
	move.b (%a2)+,%d1
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %d3,%a1
	jeq .L777
	tst.b %d1
	jne .L773
.L778:
	move.l %a0,%d0
	movem.l (%sp)+,#1036
	rts
.L777:
	move.l %d2,%a0
	tst.b %d1
	jne .L773
	jra .L778
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #15408,-(%sp)
	move.l 28(%sp),%d1
	move.l 32(%sp),%a3
	move.b (%a3),%d3
	jeq .L789
	move.l %a3,%a0
.L781:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L781
	move.l %a0,%d5
	sub.l %a3,%d5
	cmp.l %a0,%a3
	jeq .L789
	subq.l #1,%d5
.L787:
	move.l %d1,%a0
	move.b (%a0),%d0
	addq.l #1,%d1
	cmp.b %d0,%d3
	jeq .L786
	tst.b %d0
	jne .L787
	sub.l %a0,%a0
.L779:
	move.l %a0,%d0
	movem.l (%sp)+,#3132
	rts
.L786:
	move.b %d3,%d0
	move.l %a3,%d2
	move.l %a0,%d4
	add.l %d5,%d4
	move.l %a0,%a1
.L783:
	move.l %d2,%a2
	move.b (%a2),%d1
	addq.l #1,%d2
	tst.b %d1
	jeq .L784
	cmp.l %a1,%d4
	jeq .L784
	cmp.b %d1,%d0
	jne .L784
	addq.l #1,%a1
	move.b (%a1),%d0
	jne .L783
	move.l %d2,%a2
.L784:
	cmp.b (%a2),%d0
	jeq .L779
	move.l %a0,%d1
	addq.l #1,%d1
	jra .L787
.L789:
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
	jlt .L810
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L802
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L801
.L802:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#1276
	rts
.L810:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 52(%sp),-(%sp)
	move.l 52(%sp),-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L802
.L801:
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
	movem.l #12344,-(%sp)
	move.l 24(%sp),%a0
	move.l 36(%sp),%d1
	jeq .L811
	cmp.l 28(%sp),%d1
	jhi .L822
	move.l 28(%sp),%d0
	sub.l %d1,%d0
	add.l %a0,%d0
	cmp.l %a0,%d0
	jcs .L822
	move.l 32(%sp),%a4
	move.b (%a4)+,%d3
	move.l %d1,%d2
	subq.l #1,%d2
.L817:
	move.l %a0,%a2
	cmp.b (%a2)+,%d3
	jeq .L829
	move.l %a2,%a0
.L813:
	cmp.l %d0,%a0
	jls .L817
.L822:
	sub.l %a0,%a0
.L811:
	move.l %a0,%d0
	movem.l (%sp)+,#7180
	rts
.L829:
	tst.l %d2
	jeq .L811
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
.L814:
	cmpm.b (%a3)+,(%a1)+
	jne .L830
.L815:
	cmp.l %a1,%d1
	jeq .L811
	cmpm.b (%a3)+,(%a1)+
	jeq .L815
.L830:
	cmp.l %d0,%a2
	jhi .L822
	move.l %a2,%a0
	cmp.b (%a0)+,%d3
	jne .L813
	move.l %a2,%d1
	move.l %a0,%a2
	move.l %d1,%a0
	move.l %a4,%a3
	move.l %a2,%a1
	move.l %a2,%d1
	add.l %d2,%d1
	jra .L814
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	jeq .L832
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L832:
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
	jlt .L863
	lea __gedf2,%a4
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L864
	moveq #0,%d7
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
.L847:
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
	jge .L847
.L848:
	move.l 76(%sp),%a0
	move.l %d6,(%a0)
	move.l %d2,%a1
	tst.l %d7
	jeq .L854
	add.l #-2147483648,%a1
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (20,%sp),%sp
	rts
.L864:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L844
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jne .L853
.L844:
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
.L863:
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
	jgt .L865
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
	jra .L847
.L854:
	move.l %d3,%a0
	move.l %a1,44(%sp)
	move.l %a0,48(%sp)
	move.l 44(%sp),%d0
	move.l 48(%sp),%d1
	movem.l (%sp)+,#31996
	lea (20,%sp),%sp
	rts
.L865:
	clr.l -(%sp)
	move.l #-1075838976,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L844
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
.L849:
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
	jge .L848
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
	jlt .L849
	jra .L848
.L853:
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
	jra .L849
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
	jeq .L866
.L868:
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
	jne .L868
.L866:
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
	jls .L875
	moveq #32,%d0
	moveq #1,%d2
.L874:
	tst.l %d1
	jlt .L875
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L876
	subq.l #1,%d0
	jne .L874
	tst.l 16(%sp)
	jne .L891
.L873:
	move.l (%sp)+,%d2
	rts
.L876:
	tst.l %d2
	jeq .L883
.L875:
	moveq #0,%d0
.L880:
	cmp.l %a0,%d1
	jhi .L879
	sub.l %d1,%a0
	or.l %d2,%d0
.L879:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L880
	tst.l 16(%sp)
	jeq .L873
.L891:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L883:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L873
	jra .L891
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
	jeq .L894
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
	move.l (%sp)+,%d2
	rts
.L894:
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
	jeq .L899
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
	movem.l (%sp)+,#252
	rts
.L899:
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
	jeq .L902
.L904:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L904
.L902:
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
	jhi .L910
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jls .L926
.L910:
	tst.l %d2
	jeq .L913
	move.l %d3,%a0
	move.l %d4,%a1
	lsl.l #3,%d2
	add.l %d3,%d2
.L914:
	move.l (%a0)+,%d5
	move.l (%a0)+,%d6
	move.l %d5,(%a1)+
	move.l %d6,(%a1)+
	cmp.l %a0,%d2
	jne .L914
.L913:
	cmp.l %d0,%d1
	jcc .L909
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L915:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L915
.L909:
	movem.l (%sp)+,#124
	rts
.L926:
	tst.l %d0
	jeq .L909
	move.l %d4,%a0
	add.l %d0,%a0
.L916:
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jeq .L909
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jne .L916
	jra .L909
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
	jhi .L928
	lea (%a3,%d1.l),%a1
	cmp.l %a1,%a2
	jls .L946
.L928:
	tst.l %d0
	jeq .L931
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
.L932:
	move.w (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L932
.L931:
	btst #0,%d1
	jeq .L927
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L927:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L946:
	add.l %d1,%a2
	tst.l %d1
	jeq .L927
.L934:
	move.b -(%a1),-(%a2)
	cmp.l %a3,%a1
	jeq .L927
	move.b -(%a1),-(%a2)
	cmp.l %a3,%a1
	jne .L934
	jra .L927
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
	jhi .L948
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jls .L964
.L948:
	tst.l %d2
	jeq .L951
	move.l %d3,%a0
	move.l %d4,%a2
	add.l %d2,%d2
	add.l %d2,%d2
	move.l %d2,%a1
	add.l %d3,%a1
.L952:
	move.l (%a0)+,(%a2)+
	cmp.l %a0,%a1
	jne .L952
.L951:
	cmp.l %d0,%d1
	jcc .L947
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L953:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L953
.L947:
	movem.l (%sp)+,#1052
	rts
.L964:
	tst.l %d0
	jeq .L947
	move.l %d4,%a0
	add.l %d0,%a0
.L954:
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jeq .L947
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jne .L954
	jra .L947
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
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d0
	move.w %d0,%d2
	moveq #0,%d1
	move.w %d0,%d1
	tst.w %d0
	jmi .L980
	move.l %d1,%d0
	moveq #14,%d3
	asr.l %d3,%d0
	jne .L977
	move.l %d1,%d0
	moveq #13,%d3
	asr.l %d3,%d0
	jne .L981
	move.l %d1,%d0
	moveq #12,%d3
	asr.l %d3,%d0
	jne .L982
	move.l %d1,%d0
	moveq #11,%d3
	asr.l %d3,%d0
	jne .L983
	move.l %d1,%d0
	moveq #10,%d3
	asr.l %d3,%d0
	jne .L984
	move.l %d1,%d0
	moveq #9,%d3
	asr.l %d3,%d0
	jne .L985
	move.l %d1,%d0
	asr.l #8,%d0
	jne .L986
	move.l %d1,%d0
	asr.l #7,%d0
	jne .L987
	move.l %d1,%d0
	asr.l #6,%d0
	jne .L988
	move.l %d1,%d0
	asr.l #5,%d0
	jne .L989
	move.l %d1,%d0
	asr.l #4,%d0
	jne .L990
	move.l %d1,%d0
	asr.l #3,%d0
	jne .L991
	move.l %d1,%d0
	asr.l #2,%d0
	jne .L992
	asr.l #1,%d1
	jne .L993
	moveq #16,%d0
	tst.w %d2
	jne .L998
.L977:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L980:
	moveq #0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L991:
	moveq #12,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L998:
	moveq #15,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L981:
	moveq #2,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L982:
	moveq #3,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L983:
	moveq #4,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L984:
	moveq #5,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L985:
	moveq #6,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L986:
	moveq #7,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L987:
	moveq #8,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L988:
	moveq #9,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L989:
	moveq #10,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L990:
	moveq #11,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L992:
	moveq #13,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L993:
	moveq #14,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	move.l 4(%sp),%d1
	btst #0,%d1
	jne .L1002
	btst #1,%d1
	jne .L1003
	btst #2,%d1
	jne .L1004
	btst #3,%d1
	jne .L1005
	btst #4,%d1
	jne .L1006
	btst #5,%d1
	jne .L1007
	btst #6,%d1
	jne .L1008
	tst.b %d1
	jmi .L1009
	btst #8,%d1
	jne .L1010
	btst #9,%d1
	jne .L1011
	btst #10,%d1
	jne .L1012
	btst #11,%d1
	jne .L1013
	btst #12,%d1
	jne .L1014
	btst #13,%d1
	jne .L1015
	btst #14,%d1
	jne .L1016
	moveq #16,%d0
	tst.w %d1
	jmi .L1021
	rts
.L1002:
	moveq #0,%d0
	rts
.L1003:
	moveq #1,%d0
	rts
.L1014:
	moveq #12,%d0
	rts
.L1021:
	moveq #15,%d0
	rts
.L1004:
	moveq #2,%d0
	rts
.L1005:
	moveq #3,%d0
	rts
.L1006:
	moveq #4,%d0
	rts
.L1007:
	moveq #5,%d0
	rts
.L1008:
	moveq #6,%d0
	rts
.L1009:
	moveq #7,%d0
	rts
.L1010:
	moveq #8,%d0
	rts
.L1011:
	moveq #9,%d0
	rts
.L1012:
	moveq #10,%d0
	rts
.L1013:
	moveq #11,%d0
	rts
.L1015:
	moveq #13,%d0
	rts
.L1016:
	moveq #14,%d0
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
	jge .L1030
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1030:
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
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d1
	moveq #0,%d0
	move.w %d1,%d0
	move.l %d0,%d2
	asr.l #1,%d2
	moveq #1,%d3
	and.l %d3,%d2
	and.l %d3,%d1
	add.l %d2,%d1
	move.l %d0,%d2
	asr.l #2,%d2
	and.l %d3,%d2
	add.l %d2,%d1
	move.l %d0,%d2
	asr.l #3,%d2
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #4,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	asr.l #5,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #6,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	asr.l #7,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #8,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #9,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #10,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #11,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #12,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #13,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #14,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	moveq #15,%d2
	asr.l %d2,%d0
	add.l %d1,%d0
	and.l %d3,%d0
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
	move.l 12(%sp),%d1
	moveq #0,%d0
	move.w %d1,%d0
	move.l %d0,%d2
	asr.l #1,%d2
	moveq #1,%d3
	and.l %d3,%d2
	and.l %d3,%d1
	add.l %d2,%d1
	move.l %d0,%d2
	asr.l #2,%d2
	and.l %d3,%d2
	add.l %d2,%d1
	move.l %d0,%d2
	asr.l #3,%d2
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #4,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	asr.l #5,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #6,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	asr.l #7,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	asr.l #8,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #9,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #10,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #11,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #12,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	move.l %d0,%d2
	moveq #13,%d3
	asr.l %d3,%d2
	moveq #1,%d3
	and.l %d2,%d3
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d0,%d1
	moveq #14,%d2
	asr.l %d2,%d1
	moveq #1,%d3
	and.l %d3,%d1
	add.l %a0,%d1
	moveq #15,%d2
	asr.l %d2,%d0
	add.l %d1,%d0
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
	moveq #0,%d0
	tst.l %d2
	jeq .L1035
.L1037:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L1037
.L1035:
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
	jeq .L1042
	tst.l %d3
	jeq .L1042
.L1044:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
	jne .L1044
.L1042:
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
	jcc .L1053
	moveq #32,%d0
	moveq #1,%d2
.L1052:
	tst.l %d1
	jlt .L1053
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1054
	subq.l #1,%d0
	jne .L1052
	tst.l 16(%sp)
	jne .L1069
.L1051:
	move.l (%sp)+,%d2
	rts
.L1054:
	tst.l %d2
	jeq .L1061
.L1053:
	moveq #0,%d0
.L1058:
	cmp.l %a0,%d1
	jhi .L1057
	sub.l %d1,%a0
	or.l %d2,%d0
.L1057:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1058
	tst.l 16(%sp)
	jeq .L1051
.L1069:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1061:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1051
	jra .L1069
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
	jlt .L1073
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L1076
	move.l %d2,%d0
.L1070:
	movem.l (%sp)+,#28
	rts
.L1076:
	moveq #0,%d2
	move.l %d2,%d0
	jra .L1070
.L1073:
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
	jlt .L1080
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L1083
	move.l %d6,%d0
.L1077:
	movem.l (%sp)+,#124
	rts
.L1083:
	moveq #0,%d6
	move.l %d6,%d0
	jra .L1077
.L1080:
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
	jmi .L1104
	jeq .L1094
	sub.l %a0,%a0
	moveq #32,%d4
	moveq #0,%d0
.L1093:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L1092
	subq.b #1,%d4
	jne .L1093
.L1092:
	cmp.w #0,%a0
	jeq .L1088
	neg.l %d0
.L1088:
	movem.l (%sp)+,#28
	rts
.L1104:
	neg.l %d2
	move.w #1,%a0
	moveq #32,%d4
	moveq #0,%d0
	jra .L1093
.L1094:
	moveq #0,%d0
	movem.l (%sp)+,#28
	rts
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	move.l 16(%sp),%d1
	tst.l %d3
	jlt .L1125
	moveq #1,%d0
	sub.l %a1,%a1
	tst.l %d1
	jlt .L1126
.L1107:
	move.l %d3,%a0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1109
	moveq #32,%d0
	moveq #1,%d2
.L1108:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1112
	subq.l #1,%d0
	jne .L1108
.L1112:
	moveq #0,%d0
	tst.l %d2
	jeq .L1110
.L1109:
	moveq #0,%d0
.L1114:
	cmp.l %a0,%d1
	jhi .L1113
	sub.l %d1,%a0
	or.l %d2,%d0
.L1113:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1114
.L1110:
	cmp.w #0,%a1
	jeq .L1105
	neg.l %d0
.L1105:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1126:
	neg.l %d1
	move.l %d0,%a1
	jra .L1107
.L1125:
	neg.l %d3
	moveq #0,%d0
	move.w #1,%a1
	tst.l %d1
	jge .L1107
	jra .L1126
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	jmi .L1147
	sub.l %a1,%a1
	move.l 16(%sp),%d1
	jmi .L1148
.L1129:
	move.l %d3,%d0
	moveq #1,%d2
	cmp.l %d1,%d3
	jls .L1136
	move.w #32,%a0
	moveq #1,%d2
.L1130:
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %d3,%d1
	jcc .L1134
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L1130
.L1134:
	tst.l %d2
	jeq .L1149
.L1136:
	cmp.l %d0,%d1
	jhi .L1135
	sub.l %d1,%d0
.L1135:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1136
.L1132:
	cmp.w #0,%a1
	jeq .L1127
	neg.l %d0
.L1127:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1148:
	neg.l %d1
	jra .L1129
.L1147:
	neg.l %d3
	move.w #1,%a1
	move.l 16(%sp),%d1
	jpl .L1129
	jra .L1148
.L1149:
	move.l %d3,%d0
	jra .L1132
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movem.l #15872,-(%sp)
	move.l 24(%sp),%a0
	move.l 28(%sp),%d3
	move.w %a0,%d0
	move.w %d3,%d1
	cmp.w %d3,%d0
	jls .L1265
	tst.w %d3
	jlt .L1153
	add.w %d3,%d1
	cmp.w %a0,%d1
	jcc .L1154
	tst.w %d1
	jlt .L1155
	add.w %d1,%d1
	cmp.w %a0,%d1
	jcc .L1156
	tst.w %d1
	jlt .L1157
	move.w %d3,%d1
	lsl.w #3,%d1
	cmp.w %a0,%d1
	jcc .L1158
	tst.w %d1
	jlt .L1159
	move.w %d3,%d1
	lsl.w #4,%d1
	cmp.w %a0,%d1
	jcc .L1160
	tst.w %d1
	jlt .L1161
	move.w %d3,%d1
	lsl.w #5,%d1
	cmp.w %a0,%d1
	jcc .L1162
	tst.w %d1
	jlt .L1163
	move.w %d3,%d1
	lsl.w #6,%d1
	cmp.w %a0,%d1
	jcc .L1164
	tst.w %d1
	jlt .L1165
	move.w %d3,%d1
	lsl.w #7,%d1
	cmp.w %a0,%d1
	jcc .L1166
	tst.w %d1
	jlt .L1167
	move.w %d3,%d1
	lsl.w #8,%d1
	cmp.w %a0,%d1
	jcc .L1168
	tst.w %d1
	jlt .L1169
	move.w %d3,%d1
	moveq #9,%d2
	lsl.w %d2,%d1
	cmp.w %a0,%d1
	jcc .L1170
	tst.w %d1
	jlt .L1171
	move.w %d3,%d1
	moveq #10,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1172
	tst.w %d1
	jlt .L1173
	move.w %d3,%d1
	moveq #11,%d6
	lsl.w %d6,%d1
	cmp.w %a0,%d1
	jcc .L1174
	tst.w %d1
	jlt .L1175
	move.w %d3,%d1
	moveq #12,%d2
	lsl.w %d2,%d1
	cmp.w %a0,%d1
	jcc .L1176
	tst.w %d1
	jlt .L1177
	move.w %d3,%d1
	moveq #13,%d5
	lsl.w %d5,%d1
	cmp.w %a0,%d1
	jcc .L1178
	tst.w %d1
	jlt .L1179
	move.w %d3,%d1
	moveq #14,%d6
	lsl.w %d6,%d1
	cmp.w %a0,%d1
	jcc .L1180
	tst.w %d1
	jlt .L1181
	moveq #15,%d1
	lsl.w %d1,%d3
	cmp.w %a0,%d3
	jcc .L1182
	tst.w %d3
	jne .L1266
.L1183:
	tst.l 32(%sp)
	jne .L1150
	move.w %d3,%d0
.L1150:
	movem.l (%sp)+,#124
	rts
.L1170:
	cmp.w %a0,%d1
	jhi .L1216
	sub.w %d1,%d0
	move.w #512,%d4
	move.w %d4,%d3
.L1185:
	move.w %d4,%d2
	lsr.w #2,%d2
	move.w %d1,%d5
	lsr.w #2,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1186
	sub.w %d5,%d0
	or.w %d2,%d3
.L1186:
	move.w %d4,%d2
	lsr.w #3,%d2
	move.w %d1,%d5
	lsr.w #3,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1187
	sub.w %d5,%d0
	or.w %d2,%d3
.L1187:
	move.w %d4,%d2
	lsr.w #4,%d2
	move.w %d1,%d5
	lsr.w #4,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1188
	sub.w %d5,%d0
	or.w %d2,%d3
.L1188:
	move.w %d4,%d2
	lsr.w #5,%d2
	move.w %d1,%d5
	lsr.w #5,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1189
	sub.w %d5,%d0
	or.w %d2,%d3
.L1189:
	move.w %d4,%d2
	lsr.w #6,%d2
	move.w %d1,%d5
	lsr.w #6,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1190
	sub.w %d5,%d0
	or.w %d2,%d3
.L1190:
	move.w %d4,%d2
	lsr.w #7,%d2
	move.w %d1,%d5
	lsr.w #7,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1191
	sub.w %d5,%d0
	or.w %d2,%d3
.L1191:
	move.w %d4,%d2
	lsr.w #8,%d2
	move.w %d1,%d5
	lsr.w #8,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1192
	sub.w %d5,%d0
	or.w %d2,%d3
.L1192:
	move.w %d4,%d2
	moveq #9,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #9,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1193
	sub.w %d5,%d0
	or.w %d2,%d3
.L1193:
	move.w %d4,%d2
	moveq #10,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #10,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1194
	sub.w %d5,%d0
	or.w %d2,%d3
.L1194:
	move.w %d4,%d2
	moveq #11,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #11,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1195
	sub.w %d5,%d0
	or.w %d2,%d3
.L1195:
	move.w %d4,%d2
	moveq #12,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #12,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1196
	sub.w %d5,%d0
	or.w %d2,%d3
.L1196:
	move.w %d4,%d2
	moveq #13,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #13,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1197
	sub.w %d5,%d0
	or.w %d2,%d3
.L1197:
	move.w %d4,%d2
	moveq #14,%d5
	lsr.w %d5,%d2
	move.w %d1,%d5
	moveq #14,%d6
	lsr.w %d6,%d5
	tst.w %d2
	jeq .L1183
	cmp.w %d0,%d5
	jhi .L1198
	sub.w %d5,%d0
	or.w %d2,%d3
.L1198:
	moveq #15,%d2
	lsr.w %d2,%d1
	cmp.w #16384,%d4
	jeq .L1183
	cmp.w %d0,%d1
	jhi .L1206
	sub.w %d1,%d0
	or.w #1,%d3
	jra .L1183
.L1266:
	add.w #-32768,%d0
	move.w #16384,%d2
	move.w %d2,%d5
	move.w #-32768,%d1
	move.w %d1,%d4
	move.w %d1,%d3
.L1203:
	cmp.w %d0,%d2
	jhi .L1185
	sub.w %d2,%d0
	or.w %d5,%d3
	jra .L1185
.L1206:
	clr.w %d0
	jra .L1183
.L1265:
	cmp.w %d3,%d0
	jeq .L1204
	clr.w %d3
	jra .L1183
.L1153:
	sub.w %d3,%d0
	moveq #1,%d3
	jra .L1183
.L1154:
	cmp.w %a0,%d1
	jhi .L1208
	sub.w %d1,%d0
	moveq #2,%d4
	moveq #2,%d3
	jra .L1185
.L1155:
	sub.w %d1,%d0
	move.w %d3,%d2
	and.w #32767,%d2
	moveq #1,%d5
	moveq #2,%d4
	moveq #2,%d3
	jra .L1203
.L1156:
	cmp.w %a0,%d1
	jhi .L1209
	sub.w %d1,%d0
	moveq #4,%d4
	moveq #4,%d3
	jra .L1185
.L1157:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #2,%d5
	moveq #4,%d4
	moveq #4,%d3
	jra .L1203
.L1158:
	cmp.w %a0,%d1
	jhi .L1210
	sub.w %d1,%d0
	moveq #8,%d4
	moveq #8,%d3
	jra .L1185
.L1159:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #4,%d5
	moveq #8,%d4
	moveq #8,%d3
	jra .L1203
.L1160:
	cmp.w %a0,%d1
	jhi .L1211
	sub.w %d1,%d0
	moveq #16,%d4
	moveq #16,%d3
	jra .L1185
.L1161:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #8,%d5
	moveq #16,%d4
	moveq #16,%d3
	jra .L1203
.L1162:
	cmp.w %a0,%d1
	jhi .L1212
	sub.w %d1,%d0
	moveq #32,%d4
	moveq #32,%d3
	jra .L1185
.L1163:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #16,%d5
	moveq #32,%d4
	moveq #32,%d3
	jra .L1203
.L1164:
	cmp.w %a0,%d1
	jhi .L1213
	sub.w %d1,%d0
	moveq #64,%d4
	moveq #64,%d3
	jra .L1185
.L1165:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #32,%d5
	moveq #64,%d4
	moveq #64,%d3
	jra .L1203
.L1166:
	cmp.w %a0,%d1
	jhi .L1214
	sub.w %d1,%d0
	move.w #128,%d4
	move.w %d4,%d3
	jra .L1185
.L1167:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	moveq #64,%d5
	move.w #128,%d4
	move.w %d4,%d3
	jra .L1203
.L1169:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #128,%d5
	move.w #256,%d4
	move.w %d4,%d3
	jra .L1203
.L1204:
	moveq #1,%d3
	clr.w %d0
	jra .L1183
.L1171:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #256,%d5
	move.w #512,%d4
	move.w %d4,%d3
	jra .L1203
.L1208:
	moveq #2,%d4
.L1202:
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1173:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #512,%d5
	move.w #1024,%d4
	move.w %d4,%d3
	jra .L1203
.L1209:
	moveq #4,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1175:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #1024,%d5
	move.w #2048,%d4
	move.w %d4,%d3
	jra .L1203
.L1210:
	moveq #8,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1177:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #2048,%d5
	move.w #4096,%d4
	move.w %d4,%d3
	jra .L1203
.L1179:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #4096,%d5
	move.w #8192,%d4
	move.w %d4,%d3
	jra .L1203
.L1211:
	moveq #16,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1181:
	sub.w %d1,%d0
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w #8192,%d5
	move.w #16384,%d4
	move.w %d4,%d3
	jra .L1203
.L1212:
	moveq #32,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1213:
	moveq #64,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1182:
	move.w #-32768,%d1
	move.w %d1,%d4
	tst.w %d0
	jge .L1202
	move.w %d1,%d3
	clr.w %d0
	jra .L1185
.L1214:
	move.w #128,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1168:
	cmp.w %a0,%d1
	jhi .L1215
	sub.w %d1,%d0
	move.w #256,%d4
	move.w %d4,%d3
	jra .L1185
.L1215:
	move.w #256,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1178:
	cmp.w %a0,%d1
	jhi .L1220
	sub.w %d1,%d0
	move.w #8192,%d4
	move.w %d4,%d3
	jra .L1185
.L1172:
	cmp.w %a0,%d1
	jhi .L1217
	sub.w %d1,%d0
	move.w #1024,%d4
	move.w %d4,%d3
	jra .L1185
.L1220:
	move.w #8192,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1217:
	move.w #1024,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1216:
	move.w #512,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1176:
	cmp.w %a0,%d1
	jhi .L1219
	sub.w %d1,%d0
	move.w #4096,%d4
	move.w %d4,%d3
	jra .L1185
.L1174:
	cmp.w %a0,%d1
	jhi .L1218
	sub.w %d1,%d0
	move.w #2048,%d4
	move.w %d4,%d3
	jra .L1185
.L1180:
	cmp.w %a0,%d1
	jhi .L1221
	sub.w %d1,%d0
	move.w #16384,%d4
	move.w %d4,%d3
	jra .L1185
.L1219:
	move.w #4096,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1218:
	move.w #2048,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
.L1221:
	move.w #16384,%d4
	move.w %d4,%d5
	lsr.w #1,%d5
	move.w %d1,%d2
	lsr.w #1,%d2
	move.w %a0,%d0
	clr.w %d3
	jra .L1203
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
	jcc .L1269
	moveq #32,%d0
	moveq #1,%d2
.L1268:
	tst.l %d1
	jlt .L1269
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1270
	subq.l #1,%d0
	jne .L1268
	tst.l 16(%sp)
	jne .L1285
.L1267:
	move.l (%sp)+,%d2
	rts
.L1270:
	tst.l %d2
	jeq .L1277
.L1269:
	moveq #0,%d0
.L1274:
	cmp.l %a0,%d1
	jhi .L1273
	sub.l %d1,%a0
	or.l %d2,%d0
.L1273:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jne .L1274
	tst.l 16(%sp)
	jeq .L1267
.L1285:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L1277:
	moveq #0,%d0
	tst.l 16(%sp)
	jeq .L1267
	jra .L1285
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
	jeq .L1287
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	moveq #0,%d1
.L1289:
	movem.l (%sp)+,#28
	rts
.L1287:
	move.l %d3,%d1
	tst.l %d2
	jeq .L1289
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
	jeq .L1294
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
	movem.l (%sp)+,#28
	rts
.L1294:
	tst.l %d2
	jeq .L1297
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1297:
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
	jne .L1305
	moveq #2,%d0
	sub.l %d2,%d0
	add.l %d1,%a0
	add.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1305:
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
	jgt .L1313
	jlt .L1314
	cmp.l %a1,%a0
	jhi .L1313
	jcs .L1314
	moveq #1,%d0
	rts
.L1313:
	moveq #0,%d0
	rts
.L1314:
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
	jgt .L1321
	jlt .L1320
	cmp.l %d0,%a1
	jhi .L1321
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1321:
	moveq #-1,%d0
	rts
.L1320:
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
	jeq .L1327
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	moveq #0,%d0
	movem.l (%sp)+,#28
	rts
.L1327:
	move.l %d1,%d0
	tst.l %d2
	jeq .L1330
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	movem.l (%sp)+,#28
	rts
.L1330:
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
	jeq .L1348
	lea __muldf3,%a5
.L1350:
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
.L1348:
	move.l %a4,%d0
	jpl .L1357
	addq.l #1,%d0
.L1357:
	asr.l #1,%d0
	move.l %d0,%a4
	jeq .L1349
	lea __muldf3,%a5
.L1351:
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
	jne .L1350
	move.l %a4,%d0
	jpl .L1358
	addq.l #1,%d0
.L1358:
	asr.l #1,%d0
	move.l %d0,%a4
	jra .L1351
.L1349:
	cmp.w #0,%a6
	jlt .L1356
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31996
	addq.l #8,%sp
	rts
.L1356:
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
	jeq .L1360
	lea __mulsf3,%a2
.L1362:
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
.L1360:
	move.l %d2,%d2
	jpl .L1369
	addq.l #1,%d2
.L1369:
	asr.l #1,%d2
	jeq .L1361
	lea __mulsf3,%a2
.L1363:
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
	btst #0,%d2
	jne .L1362
	move.l %d2,%d2
	jpl .L1370
	addq.l #1,%d2
.L1370:
	asr.l #1,%d2
	jra .L1363
.L1361:
	tst.l %d5
	jlt .L1368
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
.L1368:
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
	jhi .L1375
	jcs .L1376
	cmp.l %a1,%a0
	jhi .L1375
	jcs .L1376
	moveq #1,%d0
	rts
.L1375:
	moveq #0,%d0
	rts
.L1376:
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
	jhi .L1383
	jcs .L1382
	cmp.l %d0,%a1
	jhi .L1383
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	rts
.L1383:
	moveq #-1,%d0
	rts
.L1382:
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
