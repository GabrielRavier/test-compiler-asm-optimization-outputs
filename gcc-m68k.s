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
	jne .L5
	jra .L3
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.type	memccpy, @function
memccpy:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 24(%sp),%d1
	moveq #0,%d3
	move.b 23(%sp),%d3
	tst.l %d1
	jeq .L20
	move.l 16(%sp),%a0
	move.l %d2,%a1
.L17:
	move.b (%a0)+,%d0
	move.b %d0,(%a1)+
	and.l #255,%d0
	cmp.l %d0,%d3
	jeq .L28
	subq.l #1,%d1
	jne .L17
.L20:
	sub.l %a0,%a0
	jra .L15
.L28:
	tst.l %d1
	jeq .L20
	move.l %a1,%a0
.L15:
	move.l %a0,%d0
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
	move.l 20(%sp),%d0
	moveq #0,%d3
	move.b 19(%sp),%d3
	tst.l %d0
	jeq .L35
	move.l 12(%sp),%d1
.L31:
	move.l %d1,%a0
	addq.l #1,%d1
	moveq #0,%d2
	move.b (%a0),%d2
	cmp.l %d2,%d3
	jeq .L39
	subq.l #1,%d0
	jne .L31
.L35:
	sub.l %a0,%a0
	jra .L29
.L39:
	tst.l %d0
	jeq .L35
.L29:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%a2
	move.l 16(%sp),%a1
	move.l 20(%sp),%d0
	jeq .L45
	move.l %a2,%a0
	move.l %a1,%d1
.L42:
	move.l %d1,%a1
	move.l %a0,%a2
	addq.l #1,%a0
	addq.l #1,%d1
	move.b (%a2),%d2
	cmp.b (%a1),%d2
	jne .L53
	subq.l #1,%d0
	jne .L42
.L45:
	moveq #0,%d0
	jra .L40
.L53:
	tst.l %d0
	jeq .L45
	moveq #0,%d0
	move.b %d2,%d0
	moveq #0,%d1
	move.b (%a1),%d1
	sub.l %d1,%d0
.L40:
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
	jeq .L55
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L55:
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
.L61:
	cmp.l %d0,%a1
	jeq .L65
	move.l %d0,%a0
	subq.l #1,%d0
	moveq #0,%d1
	move.b (%a0),%d1
	cmp.l %d1,%d2
	jne .L61
	jra .L60
.L65:
	sub.l %a0,%a0
.L60:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	move.l 4(%sp),%a0
	move.l 8(%sp),%d1
	tst.l 12(%sp)
	jeq .L67
	move.l 12(%sp),%d0
	add.l %a0,%d0
	move.l %a0,%a1
.L68:
	move.b %d1,(%a1)+
	cmp.l %d0,%a1
	jne .L68
.L67:
	move.l %a0,%d0
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
	jeq .L75
.L76:
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d0
	move.b %d0,(%a0)
	jne .L76
.L75:
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
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	move.l 12(%sp),%a2
.L92:
	move.l %a2,%a0
	move.b (%a2)+,%d1
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %a1,%d2
	jeq .L90
	tst.b %d1
	jne .L92
	sub.l %a0,%a0
.L90:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
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
	jne .L97
.L96:
	tst.b %d0
	jeq .L97
	addq.l #1,%a1
	addq.l #1,%a0
	move.b (%a1),%d0
	move.b (%a0),%d1
	cmp.b %d0,%d1
	jeq .L96
.L97:
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
	move.l %a1,%a0
	tst.b (%a1)
	jeq .L102
.L103:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L103
.L102:
	move.l %a0,%d0
	sub.l %a1,%d0
	rts
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
	jeq .L112
	move.b (%a0),%d0
	jeq .L109
	move.l %a2,%a1
	lea -1(%a0,%d1.l),%a3
.L110:
	move.l %a1,%a2
	move.b (%a1)+,%d1
	jeq .L109
	cmp.l %a0,%a3
	jeq .L109
	cmp.b %d1,%d0
	jne .L109
	addq.l #1,%a0
	move.b (%a0),%d0
	jne .L110
	move.l %a1,%a2
.L109:
	and.l #255,%d0
	moveq #0,%d1
	move.b (%a2),%d1
	sub.l %d1,%d0
.L107:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L112:
	moveq #0,%d0
	jra .L107
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
	move.l 4(%sp),%a0
	move.l 8(%sp),%a1
	moveq #1,%d0
	cmp.l 12(%sp),%d0
	jge .L121
	moveq #-2,%d0
	and.l 12(%sp),%d0
	add.l %a0,%d0
.L123:
	move.b 1(%a0),(%a1)
	move.b (%a0),1(%a1)
	addq.l #2,%a1
	addq.l #2,%a0
	cmp.l %a0,%d0
	jne .L123
.L121:
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
	jeq .L132
	moveq #9,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L130:
	rts
.L132:
	moveq #1,%d0
	jra .L130
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
	move.l 4(%sp),%d0
	moveq #31,%d1
	cmp.l %d0,%d1
	jcc .L136
	moveq #127,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L134:
	rts
.L136:
	moveq #1,%d0
	jra .L134
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
	jeq .L148
	lea (-9,%a0),%a0
	moveq #4,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L146:
	rts
.L148:
	moveq #1,%d0
	jra .L146
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
	jcc .L156
	lea (-127,%a0),%a1
	moveq #32,%d1
	cmp.l %a1,%d1
	jcc .L156
	move.l %a0,%d0
	add.l #-8232,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L156
	add.l #-65529,%a0
	moveq #2,%d1
	cmp.l %a0,%d1
	scc %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L152
.L156:
	moveq #1,%d0
.L152:
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
	jls .L168
	cmp.l #8231,%d0
	jls .L165
	move.l %d0,%d1
	add.l #-8234,%d1
	cmp.l #47061,%d1
	jls .L165
	add.l #-49110,%d1
	cmp.l #8184,%d1
	jls .L165
	add.l #-8188,%d1
	cmp.l #1048579,%d1
	jhi .L166
	and.l #65534,%d0
	cmp.l #65534,%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L160
.L168:
	addq.l #1,%d0
	moveq #127,%d1
	and.l %d1,%d0
	moveq #32,%d1
	cmp.l %d0,%d1
	scs %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L160
.L165:
	moveq #1,%d0
.L160:
	rts
.L166:
	moveq #0,%d0
	jra .L160
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	move.w #-48,%a0
	add.l 4(%sp),%a0
	moveq #9,%d0
	cmp.l %a0,%d0
	jcc .L171
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
.L169:
	rts
.L171:
	moveq #1,%d0
	jra .L169
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
	jne .L178
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L179
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L182
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subdf3
	lea (16,%sp),%sp
.L175:
	move.l %d0,%d6
	move.l %d1,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L178:
	move.l %d2,%d0
	move.l %d3,%d1
	jra .L175
.L179:
	move.l %d4,%d0
	move.l %d5,%d1
	jra .L175
.L182:
	moveq #0,%d0
	moveq #0,%d1
	jra .L175
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
	jne .L187
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L188
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L191
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
.L184:
	movem.l (%sp)+,#1036
	rts
.L187:
	move.l %d2,%d0
	jra .L184
.L188:
	move.l %d3,%d0
	jra .L184
.L191:
	moveq #0,%d0
	jra .L184
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
	jne .L201
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L200
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L195
	tst.l %d0
	jeq .L200
.L201:
	move.l %d4,%d1
	move.l %d5,%d0
.L193:
	move.l %d1,%d6
	move.l %d0,%d7
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#1276
	rts
.L195:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L201
.L200:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L193
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
	jne .L213
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L212
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %d2,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L207
	tst.l %d0
	jne .L213
.L212:
	move.l %d3,%d0
	jra .L205
.L207:
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L213
	move.l %d3,%d2
.L213:
	move.l %d2,%d0
.L205:
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
	jne .L224
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L218
	move.l %d3,%d0
	and.l #-2147483648,%d0
	move.l %a4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L219
	tst.l %d0
	jeq .L218
.L224:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	jra .L218
.L219:
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L231
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L222
.L231:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
.L222:
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L218:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
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
	jne .L238
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jne .L240
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d4,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L234
	tst.l %d0
	jeq .L238
.L240:
	move.l %d2,%d1
	move.l %d3,%d0
	jra .L232
.L234:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltdf2
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L240
.L238:
	move.l %d4,%d1
	move.l %d5,%d0
.L232:
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
	jne .L250
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jne .L252
	move.l %d2,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L246
	tst.l %d0
	jne .L252
.L250:
	move.l %d3,%d0
	jra .L244
.L246:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L252
	move.l %d3,%d2
.L252:
	move.l %d2,%d0
.L244:
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
	jne .L257
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a3)
	lea (24,%sp),%sp
	tst.l %d0
	jne .L263
	move.l %a4,%d0
	and.l #-2147483648,%d0
	move.l %d3,%d1
	and.l #-2147483648,%d1
	cmp.l %d0,%d1
	jeq .L258
	tst.l %d0
	jeq .L257
.L263:
	move.l %a4,%d3
	move.l %a5,%d4
	move.l %a6,%d5
	jra .L257
.L258:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a6,-(%sp)
	move.l %a5,-(%sp)
	move.l %a4,-(%sp)
	jsr __ltxf2
	lea (24,%sp),%sp
	tst.l %d0
	jlt .L270
	move.l %d3,%d0
	move.l %d4,%d1
	move.l %d5,%d2
	jra .L261
.L270:
	move.l %a4,%d0
	move.l %a5,%d1
	move.l %a6,%d2
.L261:
	move.l %d0,%d3
	move.l %d1,%d4
	move.l %d2,%d5
.L257:
	move.l %d3,(%a2)
	move.l %d4,4(%a2)
	move.l %d5,8(%a2)
	move.l %a2,%a0
	movem.l (%sp)+,#31804
	rts
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
	move.l 4(%sp),%d0
	lea (s.0),%a0
	jeq .L272
	lea digits,%a1
.L273:
	moveq #63,%d1
	and.l %d0,%d1
	move.b (%a1,%d1.l),(%a0)+
	lsr.l #6,%d0
	jne .L273
.L272:
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
	jeq .L288
	move.l (%a1),(%a0)
	move.l %a1,4(%a0)
	move.l %a0,(%a1)
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L281
	move.l %a0,4(%a1)
.L281:
	rts
.L288:
	clr.l 4(%a0)
	clr.l (%a0)
	jra .L281
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
	move.l 4(%sp),%a0
	move.l (%a0),%a1
	cmp.w #0,%a1
	jeq .L290
	move.l 4(%a0),4(%a1)
.L290:
	move.l 4(%a0),%a1
	cmp.w #0,%a1
	jeq .L289
	move.l (%a0),(%a1)
.L289:
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
	jeq .L300
	move.l 40(%sp),%d2
	moveq #0,%d3
.L302:
	move.l %d2,%d6
	move.l %d2,-(%sp)
	move.l %d7,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L299
	addq.l #1,%d3
	add.l %d5,%d2
	cmp.l %d4,%d3
	jne .L302
.L300:
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
	jeq .L299
	move.l %d5,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L299:
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
	jeq .L316
	move.l 36(%sp),%d2
	moveq #0,%d3
.L318:
	move.l %d2,%d5
	move.l %d2,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L315
	addq.l #1,%d3
	add.l %d7,%d2
	cmp.l %d4,%d3
	jne .L318
.L316:
	moveq #0,%d5
.L315:
	move.l %d5,%a0
	move.l %d5,%d0
	movem.l (%sp)+,#1276
	rts
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
	move.l 4(%sp),%d1
	move.l %d1,%d0
	jmi .L330
.L328:
	rts
.L330:
	neg.l %d0
	jra .L328
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%a2
.L344:
	move.l %a2,%a1
	move.b (%a2)+,%d2
	cmp.b #32,%d2
	jeq .L344
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-9,%a0),%a0
	moveq #4,%d0
	cmp.l %a0,%d0
	scc %d1
	ext.w %d1
	ext.l %d1
	move.l %d1,%d0
	neg.l %d0
	tst.l %d1
	jne .L344
	cmp.b #43,%d2
	jeq .L340
	cmp.b #45,%d2
	jne .L341
	move.w #1,%a2
.L334:
	addq.l #1,%a1
	jra .L335
.L340:
	sub.l %a2,%a2
	jra .L334
.L336:
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%a0
	add.l %a0,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	addq.l #1,%a1
	add.b #-48,%d1
	ext.w %d1
	sub.w %d1,%a0
	move.l %a0,%d0
.L335:
	move.b (%a1),%d1
	move.b %d1,%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcc .L336
	cmp.w #0,%a2
	jne .L331
	neg.l %d0
.L331:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L341:
	sub.l %a2,%a2
	jra .L335
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%a2
.L360:
	move.l %a2,%a1
	move.b (%a2)+,%d2
	cmp.b #32,%d2
	jeq .L360
	move.b %d2,%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-9,%a0),%a0
	moveq #4,%d0
	cmp.l %a0,%d0
	scc %d1
	ext.w %d1
	ext.l %d1
	move.l %d1,%d0
	neg.l %d0
	tst.l %d1
	jne .L360
	cmp.b #43,%d2
	jeq .L356
	cmp.b #45,%d2
	jne .L357
	move.w #1,%a2
.L350:
	addq.l #1,%a1
	jra .L351
.L356:
	sub.l %a2,%a2
	jra .L350
.L352:
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%a0
	add.l %a0,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	addq.l #1,%a1
	add.b #-48,%d1
	ext.w %d1
	sub.w %d1,%a0
	move.l %a0,%d0
.L351:
	move.b (%a1),%d1
	move.b %d1,%d2
	ext.w %d2
	move.w %d2,%a0
	lea (-48,%a0),%a0
	moveq #9,%d2
	cmp.l %a0,%d2
	jcc .L352
	cmp.w #0,%a2
	jne .L347
	neg.l %d0
.L347:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L357:
	sub.l %a2,%a2
	jra .L351
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
	movem.l #15904,-(%sp)
	move.l 28(%sp),%a2
.L377:
	move.l %a2,%a1
	move.b (%a2)+,%d1
	cmp.b #32,%d1
	jeq .L377
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a0
	lea (-9,%a0),%a0
	moveq #4,%d2
	cmp.l %a0,%d2
	scc %d0
	ext.w %d0
	ext.l %d0
	move.l %d0,%d6
	neg.l %d6
	tst.l %d0
	jne .L377
	cmp.b #43,%d1
	jeq .L366
	cmp.b #45,%d1
	jne .L367
	moveq #1,%d6
.L366:
	addq.l #1,%a1
.L367:
	move.b (%a1),%d0
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	clr.l %d4
	clr.l %d5
	moveq #9,%d2
	cmp.l %a0,%d2
	jcs .L369
.L368:
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
	add.b #-48,%d0
	move.b %d0,%d1
	ext.w %d1
	ext.l %d1
	move.l %d1,%d0
	smi %d0
	move.l %d2,%d4
	move.l %d3,%d5
	sub.l %d1,%d5
	subx.l %d0,%d4
	move.b (%a1),%d0
	move.b %d0,%d1
	ext.w %d1
	move.w %d1,%a0
	lea (-48,%a0),%a0
	moveq #9,%d1
	cmp.l %a0,%d1
	jcc .L368
.L369:
	tst.l %d6
	jne .L363
	neg.l %d5
	negx.l %d4
.L363:
	move.l %d4,%d0
	move.l %d5,%d1
	movem.l (%sp)+,#1148
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
	jeq .L382
	lea __mulsi3,%a3
	jra .L385
.L386:
	move.l %d7,%d2
.L383:
	tst.l %d2
	jeq .L382
.L385:
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
	jlt .L386
	jle .L381
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	sub.l %d7,%d2
	jra .L383
.L382:
	moveq #0,%d3
.L381:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#3324
	rts
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	movem.l #16184,-(%sp)
	move.l 40(%sp),%a4
	move.l 44(%sp),%d4
	move.l 52(%sp),%d5
	move.l 56(%sp),%a2
	move.l 60(%sp),%d7
	move.l 48(%sp),%d2
	jeq .L393
	lea __mulsi3,%a3
	jra .L396
.L395:
	move.l %d6,%d2
	jeq .L393
.L396:
	move.l %d2,%d6
	asr.l #1,%d6
	move.l %d5,-(%sp)
	move.l %d6,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	move.l %d4,%d3
	add.l %d0,%d3
	move.l %d7,-(%sp)
	move.l %d3,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L392
	jle .L395
	move.l %d3,%d4
	add.l %d5,%d4
	subq.l #1,%d2
	move.l %d2,%d6
	asr.l #1,%d6
	jra .L395
.L393:
	moveq #0,%d3
.L392:
	move.l %d3,%a0
	move.l %d3,%d0
	movem.l (%sp)+,#7420
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
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	move.l %d2,%d0
	move.l %d3,%d1
	tst.l %d2
	jlt .L410
.L408:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L410:
	neg.l %d1
	negx.l %d0
	jra .L408
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
	jmi .L416
.L414:
	rts
.L416:
	neg.l %d0
	jra .L414
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
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d3
	move.l %d2,%d0
	move.l %d3,%d1
	tst.l %d2
	jlt .L422
.L420:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L422:
	neg.l %d1
	negx.l %d0
	jra .L420
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
	jeq .L431
.L426:
	cmp.l %d1,%d0
	jeq .L435
	addq.l #4,%a0
	move.l (%a0),%d0
	jne .L426
.L431:
	sub.l %a0,%a0
	jra .L425
.L435:
	tst.l %d0
	jeq .L431
.L425:
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
	jne .L438
.L437:
	tst.l %d0
	jeq .L438
	tst.l %d1
	jeq .L438
	addq.l #4,%a1
	addq.l #4,%a0
	move.l (%a1),%d0
	move.l (%a0),%d1
	cmp.l %d0,%d1
	jeq .L437
.L438:
	cmp.l %d0,%d1
	jgt .L441
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
.L436:
	rts
.L441:
	moveq #-1,%d0
	jra .L436
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%a2
	move.l %a0,%a1
.L448:
	move.l (%a2)+,%d0
	move.l %d0,(%a1)+
	jne .L448
	move.l %a0,%d0
	move.l (%sp)+,%a2
	rts
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
	move.l 4(%sp),%a1
	move.l %a1,%a0
	tst.l (%a1)
	jeq .L452
.L453:
	addq.l #4,%a0
	tst.l (%a0)
	jne .L453
.L452:
	sub.l %a1,%a0
	move.l %a0,%d0
	asr.l #2,%d0
	rts
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a3
	move.l 16(%sp),%a2
	move.l 20(%sp),%d1
	jeq .L462
	move.l %a3,%a0
	move.l %a2,%d0
.L459:
	move.l %d0,%a2
	move.l %a0,%a3
	move.l (%a0)+,%a1
	addq.l #4,%d0
	cmp.l (%a2),%a1
	jne .L458
	cmp.w #0,%a1
	jeq .L458
	subq.l #1,%d1
	jne .L459
.L462:
	moveq #0,%d0
.L457:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L458:
	tst.l %d1
	jeq .L462
	move.l (%a3),%d0
	move.l (%a2),%d1
	cmp.l %d0,%d1
	jgt .L463
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L457
.L463:
	moveq #-1,%d0
	jra .L457
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
	move.l 8(%sp),%a1
	move.l 12(%sp),%d0
	jeq .L477
	move.l 4(%sp),%d1
.L473:
	move.l %d1,%a0
	addq.l #4,%d1
	cmp.l (%a0),%a1
	jeq .L481
	subq.l #1,%d0
	jne .L473
.L477:
	sub.l %a0,%a0
	jra .L471
.L481:
	tst.l %d0
	jeq .L477
.L471:
	move.l %a0,%d0
	rts
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%a2
	move.l 16(%sp),%a1
	move.l 20(%sp),%d0
	jeq .L487
	move.l %a2,%a0
	move.l %a1,%d1
.L484:
	move.l %d1,%a1
	move.l %a0,%a2
	addq.l #4,%a0
	addq.l #4,%d1
	move.l (%a2),%d2
	cmp.l (%a1),%d2
	jne .L496
	subq.l #1,%d0
	jne .L484
.L487:
	moveq #0,%d0
.L482:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	rts
.L496:
	tst.l %d0
	jeq .L487
	move.l (%a1),%d1
	cmp.l %d2,%d1
	jgt .L488
	slt %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	jra .L482
.L488:
	moveq #-1,%d0
	jra .L482
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	move.l %d2,-(%sp)
	move.l 8(%sp),%d2
	move.l 16(%sp),%d0
	jeq .L498
	add.l %d0,%d0
	add.l %d0,%d0
	move.l %d0,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l %d2,-(%sp)
	jsr memcpy
	lea (12,%sp),%sp
.L498:
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
	jeq .L504
	move.l %a0,%a3
	move.l %d1,%a2
	add.l %d1,%a2
	add.l %a2,%a2
	move.l %a0,%d0
	sub.l %a1,%d0
	cmp.l %d0,%a2
	jhi .L505
	move.l %d1,%d0
	subq.l #1,%d0
	tst.l %d1
	jeq .L504
.L508:
	move.l (%a1)+,(%a3)+
	dbra %d0,.L508
	clr.w %d0
	subq.l #1,%d0
	jcc .L508
	jra .L504
.L505:
	tst.l %d1
	jeq .L504
	lea (%a1,%a2.l),%a3
	lea (%a0,%a2.l),%a2
.L507:
	move.l -(%a3),-(%a2)
	cmp.l %a1,%a3
	jne .L507
.L504:
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
	jeq .L517
	move.l %a0,%a1
.L518:
	move.l %d1,(%a1)+
	dbra %d0,.L518
	clr.w %d0
	subq.l #1,%d0
	jcc .L518
.L517:
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
	jls .L525
	lea (%a0,%d0.l),%a1
	tst.l %d0
	jeq .L524
	lea -1(%a2,%d0.l),%a2
.L527:
	move.b -(%a1),(%a2)
	subq.l #1,%a2
	cmp.l %a0,%a1
	jne .L527
.L524:
	move.l (%sp)+,%a2
	rts
.L525:
	cmp.l %a0,%a2
	jeq .L524
	tst.l %d0
	jeq .L524
	add.l %a0,%d0
.L528:
	move.b (%a0)+,(%a2)+
	cmp.l %a0,%d0
	jne .L528
	jra .L524
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
	jlt .L539
	move.l %d3,%d0
	move.l %a0,%d1
	lsl.l %d1,%d0
	moveq #0,%d5
.L540:
	neg.l %d2
	moveq #63,%d1
	and.l %d1,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L541
	move.l %d4,%d1
	move.l %a0,%d2
	lsr.l %d2,%d1
	moveq #0,%d4
.L542:
	or.l %d4,%d0
	or.l %d5,%d1
	movem.l (%sp)+,#124
	rts
.L539:
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
	jra .L540
.L541:
	move.l %d4,%d6
	add.l %d6,%d6
	moveq #31,%d1
	sub.l %d2,%d1
	lsl.l %d1,%d6
	move.l %d3,%d1
	lsr.l %d2,%d1
	or.l %d6,%d1
	lsr.l %d2,%d4
	jra .L542
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
	jlt .L545
	move.l %d3,%d1
	move.l %a0,%d0
	lsr.l %d0,%d1
	moveq #0,%d5
.L546:
	neg.l %d2
	moveq #63,%d0
	and.l %d0,%d2
	move.w #-32,%a0
	add.l %d2,%a0
	cmp.w #0,%a0
	jlt .L547
	move.l %d4,%d0
	move.l %a0,%d2
	lsl.l %d2,%d0
	moveq #0,%d4
.L548:
	or.l %d5,%d0
	or.l %d4,%d1
	movem.l (%sp)+,#124
	rts
.L545:
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
	jra .L546
.L547:
	move.l %d4,%d6
	lsr.l #1,%d6
	moveq #31,%d0
	sub.l %d2,%d0
	lsr.l %d0,%d6
	move.l %d3,%d0
	lsl.l %d2,%d0
	or.l %d6,%d0
	lsl.l %d2,%d4
	jra .L548
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
.L575:
	move.l %d2,%d1
	lsr.l %d0,%d1
	addq.l #1,%d0
	btst #0,%d1
	jne .L572
	moveq #32,%d1
	cmp.l %d0,%d1
	jne .L575
	moveq #0,%d0
.L572:
	move.l (%sp)+,%d2
	rts
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	move.l 4(%sp),%d1
	jeq .L581
	moveq #1,%d0
	and.l %d1,%d0
	btst #0,%d1
	jne .L578
	moveq #1,%d0
.L580:
	asr.l #1,%d1
	addq.l #1,%d0
	btst #0,%d1
	jeq .L580
.L578:
	rts
.L581:
	moveq #0,%d0
	jra .L578
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
	jlt .L588
	moveq #1,%d2
	move.l #0x7f7fffff,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L590
.L587:
	move.l %d2,%d0
.L585:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L590:
	moveq #0,%d2
	jra .L587
.L588:
	moveq #1,%d0
	jra .L585
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
	jlt .L594
	moveq #1,%d2
	pea -1.w
	move.l #2146435071,-(%sp)
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L596
.L593:
	move.l %d2,%d0
.L591:
	movem.l (%sp)+,#52
	rts
.L596:
	moveq #0,%d2
	jra .L593
.L594:
	moveq #1,%d0
	jra .L591
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
	jlt .L600
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
	jle .L602
.L599:
	move.l %d2,%d0
.L597:
	movem.l (%sp)+,#60
	rts
.L602:
	moveq #0,%d2
	jra .L599
.L600:
	moveq #1,%d0
	jra .L597
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
	jne .L606
	move.l %d4,-(%sp)
	move.l %d4,-(%sp)
	jsr __addsf3
	addq.l #8,%sp
	move.l %d4,-(%sp)
	move.l %d0,-(%sp)
	jsr __nesf2
	addq.l #8,%sp
	tst.l %d0
	jeq .L606
	tst.l %d2
	jlt .L620
	move.l #0x40000000,%d3
.L608:
	lea __mulsf3,%a2
	jra .L610
.L620:
	move.l #0x3f000000,%d3
	jra .L608
.L609:
	move.l %d2,%d2
	jpl .L621
	addq.l #1,%d2
.L621:
	asr.l #1,%d2
	jeq .L606
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L610:
	btst #0,%d2
	jeq .L609
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L609
.L606:
	move.l %d4,%d0
	movem.l (%sp)+,#1052
	rts
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
	jne .L623
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	jsr __adddf3
	lea (16,%sp),%sp
	move.l %d7,-(%sp)
	move.l %d6,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	tst.l %d0
	jeq .L623
	tst.l %d2
	jlt .L637
	move.l #1073741824,%a4
	sub.l %a5,%a5
.L625:
	lea __muldf3,%a6
	jra .L627
.L637:
	move.l #1071644672,%a4
	sub.l %a5,%a5
	jra .L625
.L626:
	move.l %d2,%d2
	jpl .L638
	addq.l #1,%d2
.L638:
	asr.l #1,%d2
	jeq .L623
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
.L627:
	btst #0,%d2
	jeq .L626
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
	jra .L626
.L623:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31988
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
	jne .L640
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
	jeq .L640
	tst.l %d2
	jlt .L654
	move.l .LC3,%d3
	move.l .LC3+4,%d4
	move.l .LC3+8,%d5
.L642:
	lea __mulxf3,%a2
	jra .L644
.L654:
	move.l .LC2,%d3
	move.l .LC2+4,%d4
	move.l .LC2+8,%d5
	jra .L642
.L643:
	move.l %d2,%d2
	jpl .L655
	addq.l #1,%d2
.L655:
	asr.l #1,%d2
	jeq .L640
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
.L644:
	btst #0,%d2
	jeq .L643
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
	jra .L643
.L640:
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
	move.l %a2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%a2
	tst.l 16(%sp)
	jeq .L657
	move.l 16(%sp),%d0
	add.l %a2,%d0
	move.l %a0,%a1
.L658:
	addq.l #1,%a1
	move.b (%a2)+,%d1
	eor.b %d1,-1(%a1)
	cmp.l %d0,%a2
	jne .L658
.L657:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	rts
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%sp),%a0
	move.l 20(%sp),%d0
	move.l %a0,%a1
	tst.b (%a0)
	jeq .L665
.L666:
	addq.l #1,%a1
	tst.b (%a1)
	jne .L666
.L665:
	tst.l %d0
	jeq .L673
	move.l 16(%sp),%a3
	move.l %a1,%a2
.L668:
	move.l %a2,%a1
	move.b (%a3)+,%d1
	move.b %d1,(%a2)+
	jeq .L679
	subq.l #1,%d0
	jne .L668
	move.l %a2,%a1
	jra .L673
.L679:
	tst.l %d0
	jne .L670
.L673:
	clr.b (%a1)
.L670:
	move.l %a0,%d0
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
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
	jeq .L680
.L681:
	tst.b (%a0,%d0.l)
	jne .L683
.L680:
	rts
.L683:
	addq.l #1,%d0
	cmp.l %d1,%d0
	jne .L681
	jra .L680
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	move.l %d2,-(%sp)
	move.l 8(%sp),%a0
	move.l 12(%sp),%d2
	move.b (%a0),%d1
	jeq .L693
.L689:
	move.l %d2,%a1
.L692:
	move.b (%a1)+,%d0
	jeq .L696
	cmp.b %d0,%d1
	jne .L692
.L690:
	move.l %a0,%d0
	move.l (%sp)+,%d2
	rts
.L696:
	addq.l #1,%a0
	move.b (%a0),%d1
	jne .L689
.L693:
	sub.l %a0,%a0
	jra .L690
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	movem.l #12320,-(%sp)
	move.l 20(%sp),%d3
	move.l 16(%sp),%a2
	sub.l %a0,%a0
	jra .L699
.L698:
	tst.b %d1
	jeq .L703
.L699:
	move.l %a2,%d2
	move.b (%a2)+,%d1
	move.b %d1,%d0
	ext.w %d0
	move.w %d0,%a1
	cmp.l %a1,%d3
	jne .L698
	move.l %d2,%a0
	jra .L698
.L703:
	move.l %a0,%d0
	movem.l (%sp)+,#1036
	rts
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
	movem.l #14392,-(%sp)
	move.l 28(%sp),%a1
	move.l 32(%sp),%a4
	move.b (%a4),%d2
	move.l %a4,%a0
	jeq .L705
.L706:
	addq.l #1,%a0
	tst.b (%a0)
	jne .L706
.L705:
	move.l %a0,%d4
	sub.l %a4,%d4
	cmp.l %a0,%a4
	jeq .L716
	subq.l #1,%d4
	jra .L713
.L717:
	move.l %a4,%a3
	jra .L709
.L712:
	cmp.w #0,%a0
	jeq .L704
	move.b (%a0),%d0
	jeq .L717
	move.l %a4,%a2
	move.l %a0,%d3
	add.l %d4,%d3
	move.l %a0,%a1
.L710:
	move.l %a2,%a3
	move.b (%a2)+,%d1
	jeq .L709
	cmp.l %a1,%d3
	jeq .L709
	cmp.b %d1,%d0
	jne .L709
	addq.l #1,%a1
	move.b (%a1),%d0
	jne .L710
	move.l %a2,%a3
.L709:
	cmp.b (%a3),%d0
	jeq .L704
	lea (1,%a0),%a1
.L713:
	move.l %a1,%a0
	move.b (%a1)+,%d0
	cmp.b %d0,%d2
	jeq .L712
	tst.b %d0
	jne .L713
	sub.l %a0,%a0
.L704:
	move.l %a0,%d0
	movem.l (%sp)+,#7196
	rts
.L716:
	move.l %a1,%a0
	jra .L704
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
	movem.l #16176,-(%sp)
	move.l 36(%sp),%d2
	move.l 40(%sp),%d3
	clr.l %d4
	clr.l %d5
	lea __ltdf2,%a2
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	lea __gtdf2,%a3
	tst.l %d0
	jlt .L732
.L726:
	clr.l %d4
	clr.l %d5
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	tst.l %d0
	jle .L729
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L728
.L729:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#3324
	rts
.L732:
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l 56(%sp),-(%sp)
	move.l 56(%sp),-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	tst.l %d0
	jle .L726
.L728:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	jra .L729
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
	movem.l #15420,-(%sp)
	move.l 36(%sp),%a4
	move.l 48(%sp),%d3
	jeq .L743
	cmp.l 40(%sp),%d3
	jhi .L745
	move.l 40(%sp),%d0
	sub.l %d3,%d0
	move.l %a4,%d2
	add.l %d0,%d2
	cmp.l %a4,%d2
	jcs .L745
	move.l 44(%sp),%a5
	move.b (%a5)+,%d4
	jra .L742
.L757:
	cmp.w #0,%a1
	jeq .L735
	move.b (%a3),%d0
	cmp.b %d0,%d5
	jeq .L735
.L737:
	cmp.l %a4,%d2
	jcs .L745
.L742:
	move.b (%a4),%d0
	move.l %a4,%a0
	addq.l #1,%a4
	cmp.b %d0,%d4
	jne .L737
	move.l %d3,%a1
	subq.l #1,%a1
	moveq #1,%d0
	cmp.l %d3,%d0
	jeq .L735
	move.l %a4,%d1
	move.l %a5,%d0
.L739:
	move.l %d0,%a3
	move.l %d1,%a2
	addq.l #1,%d1
	addq.l #1,%d0
	move.b (%a2),%d5
	cmp.b (%a3),%d5
	jne .L757
	subq.l #1,%a1
	cmp.w #0,%a1
	jne .L739
.L735:
	move.l %a0,%d0
	movem.l (%sp)+,#15420
	rts
.L743:
	move.l %a4,%a0
	jra .L735
.L745:
	sub.l %a0,%a0
	jra .L735
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	jeq .L759
	move.l %d2,-(%sp)
	move.l 16(%sp),-(%sp)
	move.l 16(%sp),-(%sp)
	jsr memmove
	lea (12,%sp),%sp
.L759:
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
	subq.l #8,%sp
	movem.l #16188,-(%sp)
	move.l 52(%sp),%d2
	move.l 56(%sp),%d3
	lea __ltdf2,%a5
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L792
	moveq #0,%d7
.L765:
	lea __gedf2,%a4
	clr.l -(%sp)
	move.l #1072693248,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L788
	moveq #0,%d6
	lea __muldf3,%a5
	move.l #1072693248,%a2
	sub.l %a3,%a3
.L769:
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
	jge .L769
.L770:
	move.l 60(%sp),%a0
	move.l %d6,(%a0)
	tst.l %d7
	jeq .L774
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,40(%sp)
	move.l %d3,44(%sp)
	move.l 40(%sp),%d2
	move.l 44(%sp),%d3
.L774:
	move.l %d2,%d0
	move.l %d3,%d1
	movem.l (%sp)+,#15612
	addq.l #8,%sp
	rts
.L792:
	move.l %d2,%d1
	add.l #-2147483648,%d1
	move.l %d1,%d6
	move.l %d3,%d7
	move.l %d6,%d2
	move.l %d7,%d3
	moveq #1,%d7
	jra .L765
.L788:
	clr.l -(%sp)
	move.l #1071644672,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (16,%sp),%sp
	tst.l %d0
	jge .L789
	clr.l -(%sp)
	clr.l -(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __nedf2
	lea (16,%sp),%sp
	moveq #0,%d6
	tst.l %d0
	jeq .L770
	lea __adddf3,%a4
	move.l #1071644672,%d4
	clr.l %d5
.L773:
	subq.l #1,%d6
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	lea (16,%sp),%sp
	move.l %d0,%a2
	move.l %d1,%a3
	move.l %a2,%d2
	move.l %a3,%d3
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (16,%sp),%sp
	tst.l %d0
	jlt .L773
	jra .L770
.L789:
	moveq #0,%d6
	jra .L770
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
	jeq .L793
.L795:
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
	jne .L795
.L793:
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
	jls .L808
	moveq #32,%d0
	moveq #1,%d2
.L800:
	tst.l %d1
	jlt .L801
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L801
	subq.l #1,%d0
	jne .L800
.L812:
	moveq #0,%d0
.L803:
	tst.l 16(%sp)
	jne .L814
.L799:
	move.l (%sp)+,%d2
	rts
.L801:
	tst.l %d2
	jeq .L812
.L808:
	moveq #0,%d0
	jra .L802
.L805:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L803
.L802:
	cmp.l %a0,%d1
	jhi .L805
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L805
.L814:
	move.l %a0,%d0
	jra .L799
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
	jeq .L817
	ext.w %d0
	ext.l %d0
	lsl.l #8,%d0
	move.l %d0,-(%sp)
	jsr __clzsi2
	addq.l #4,%sp
	subq.l #1,%d0
.L815:
	move.l (%sp)+,%d2
	rts
.L817:
	moveq #7,%d0
	jra .L815
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
	jeq .L821
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	jsr __clzdi2
	addq.l #8,%sp
	subq.l #1,%d0
.L819:
	movem.l (%sp)+,#252
	rts
.L821:
	moveq #63,%d0
	jra .L819
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
	jeq .L823
.L825:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L825
.L823:
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
	jls .L830
.L833:
	tst.l %d2
	jeq .L832
	move.l %d3,%a0
	move.l %d4,%a1
	lsl.l #3,%d2
	add.l %d3,%d2
.L836:
	move.l (%a0)+,%d5
	move.l (%a0)+,%d6
	move.l %d5,(%a1)+
	move.l %d6,(%a1)+
	cmp.l %a0,%d2
	jne .L836
.L832:
	cmp.l %d0,%d1
	jcc .L829
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L837:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L837
.L829:
	movem.l (%sp)+,#124
	rts
.L830:
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jhi .L833
	tst.l %d0
	jeq .L829
	move.l %d4,%a0
	add.l %d0,%a0
.L838:
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jne .L838
	jra .L829
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
	jls .L844
.L847:
	tst.l %d0
	jeq .L846
	move.l %a3,%a0
	move.l %a2,%a1
	add.l %d0,%d0
	add.l %a3,%d0
.L850:
	move.w (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L850
.L846:
	btst #0,%d1
	jeq .L843
	move.b -1(%a3,%d1.l),-1(%a2,%d1.l)
.L843:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	rts
.L844:
	lea (%a3,%d1.l),%a1
	cmp.l %a1,%a2
	jhi .L847
	add.l %d1,%a2
	tst.l %d1
	jeq .L843
.L851:
	move.b -(%a1),-(%a2)
	cmp.l %a3,%a1
	jne .L851
	jra .L843
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
	jls .L859
.L862:
	tst.l %d2
	jeq .L861
	move.l %d3,%a0
	move.l %d4,%a2
	add.l %d2,%d2
	add.l %d2,%d2
	move.l %d2,%a1
	add.l %d3,%a1
.L865:
	move.l (%a0)+,(%a2)+
	cmp.l %a0,%a1
	jne .L865
.L861:
	cmp.l %d0,%d1
	jcc .L858
	move.l %d3,%a0
	add.l %d1,%a0
	move.l %d4,%a1
	add.l %d1,%a1
	add.l %d3,%d0
.L866:
	move.b (%a0)+,(%a1)+
	cmp.l %a0,%d0
	jne .L866
.L858:
	movem.l (%sp)+,#1052
	rts
.L859:
	move.l %d3,%a1
	add.l %d0,%a1
	cmp.l %a1,%d4
	jhi .L862
	tst.l %d0
	jeq .L858
	move.l %d4,%a0
	add.l %d0,%a0
.L867:
	move.b -(%a1),-(%a0)
	cmp.l %d3,%a1
	jne .L867
	jra .L858
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
.L886:
	moveq #15,%d1
	sub.l %d0,%d1
	btst %d1,%d2
	jne .L884
	addq.l #1,%d0
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L886
.L884:
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
.L891:
	btst %d0,%d1
	jne .L889
	addq.l #1,%d0
	moveq #16,%d2
	cmp.l %d0,%d2
	jne .L891
.L889:
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
	jge .L901
	move.l %d2,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
.L894:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L901:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __subsf3
	addq.l #8,%sp
	move.l %d0,-(%sp)
	jsr __fixsfsi
	addq.l #4,%sp
	add.l #32768,%d0
	jra .L894
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
.L903:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L903
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
.L907:
	move.l %d3,%d2
	asr.l %d1,%d2
	moveq #1,%d4
	and.l %d4,%d2
	add.l %d2,%d0
	addq.l #1,%d1
	moveq #16,%d2
	cmp.l %d1,%d2
	jne .L907
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
	jeq .L910
.L912:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	lsr.l #1,%d2
	add.l %d3,%d3
	tst.l %d2
	jne .L912
.L910:
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
	jne .L922
	jra .L916
.L918:
	moveq #1,%d1
	and.l %d3,%d1
	neg.l %d1
	and.l %d2,%d1
	add.l %d1,%d0
	add.l %d2,%d2
	lsr.l #1,%d3
.L922:
	tst.l %d3
	jne .L918
.L916:
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
	cmp.l %d1,%a0
	jls .L933
	moveq #32,%d0
	moveq #1,%d2
.L925:
	tst.l %d1
	jlt .L926
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L926
	subq.l #1,%d0
	jne .L925
.L937:
	moveq #0,%d0
.L928:
	tst.l 16(%sp)
	jne .L939
.L924:
	move.l (%sp)+,%d2
	rts
.L926:
	tst.l %d2
	jeq .L937
.L933:
	moveq #0,%d0
	jra .L927
.L930:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L928
.L927:
	cmp.l %a0,%d1
	jhi .L930
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L930
.L939:
	move.l %a0,%d0
	jra .L924
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
	jlt .L943
	moveq #1,%d2
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	jsr __gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L945
.L942:
	move.l %d2,%d0
.L940:
	movem.l (%sp)+,#28
	rts
.L945:
	moveq #0,%d2
	jra .L942
.L943:
	moveq #-1,%d0
	jra .L940
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
	jlt .L949
	moveq #1,%d6
	move.l %d5,-(%sp)
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	jsr __gtdf2
	lea (16,%sp),%sp
	tst.l %d0
	jle .L951
.L948:
	move.l %d6,%d0
.L946:
	movem.l (%sp)+,#124
	rts
.L951:
	moveq #0,%d6
	jra .L948
.L949:
	moveq #-1,%d0
	jra .L946
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
	jmi .L971
	sub.l %a0,%a0
.L957:
	tst.l %d2
	jeq .L962
	moveq #32,%d4
	moveq #0,%d0
.L959:
	moveq #1,%d1
	and.l %d2,%d1
	neg.l %d1
	and.l %d3,%d1
	add.l %d1,%d0
	add.l %d3,%d3
	asr.l #1,%d2
	jeq .L958
	subq.b #1,%d4
	jne .L959
.L958:
	cmp.w #0,%a0
	jeq .L956
	neg.l %d0
.L956:
	movem.l (%sp)+,#28
	rts
.L971:
	neg.l %d2
	move.w #1,%a0
	jra .L957
.L962:
	moveq #0,%d0
	jra .L958
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d2
	move.l 16(%sp),%d0
	tst.l %d2
	jlt .L993
	moveq #0,%d3
.L973:
	tst.l %d0
	jlt .L994
.L974:
	move.l %d2,%a1
	cmp.l %d0,%d2
	jls .L982
	move.w #32,%a0
	moveq #1,%d1
.L976:
	add.l %d0,%d0
	add.l %d1,%d1
	cmp.l %d2,%d0
	jcc .L975
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L976
.L983:
	moveq #0,%d2
.L977:
	move.l %d2,%d0
	tst.l %d3
	jeq .L972
	neg.l %d0
.L972:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L993:
	neg.l %d2
	moveq #1,%d3
	jra .L973
.L994:
	neg.l %d0
	eor.w #1,%d3
	jra .L974
.L982:
	moveq #1,%d1
	jra .L991
.L975:
	tst.l %d1
	jeq .L983
.L991:
	moveq #0,%d2
	jra .L979
.L995:
	sub.l %d0,%a1
	or.l %d1,%d2
.L978:
	lsr.l #1,%d1
	lsr.l #1,%d0
	tst.l %d1
	jeq .L977
.L979:
	cmp.l %a1,%d0
	jhi .L978
	jra .L995
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%sp),%d3
	move.l 16(%sp),%d1
	tst.l %d3
	jlt .L1018
	sub.l %a1,%a1
.L997:
	move.l %d1,%d0
	jmi .L1019
.L998:
	move.l %d3,%d2
	cmp.l %d0,%d3
	jls .L1006
	move.w #32,%a0
	moveq #1,%d1
.L1000:
	add.l %d0,%d0
	add.l %d1,%d1
	cmp.l %d3,%d0
	jcc .L1016
	subq.l #1,%a0
	cmp.w #0,%a0
	jne .L1000
.L1001:
	move.l %d2,%d0
	cmp.w #0,%a1
	jeq .L996
	neg.l %d0
.L996:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1018:
	neg.l %d3
	move.w #1,%a1
	jra .L997
.L1019:
	neg.l %d0
	jra .L998
.L1006:
	moveq #1,%d1
	jra .L1011
.L1020:
	sub.l %d0,%d2
.L1002:
	lsr.l #1,%d1
	lsr.l #1,%d0
.L1016:
	tst.l %d1
	jeq .L1001
.L1011:
	cmp.l %d2,%d0
	jhi .L1002
	jra .L1020
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
	jcc .L1030
	moveq #16,%d0
	moveq #1,%d2
.L1022:
	tst.w %d1
	jlt .L1023
	add.w %d1,%d1
	add.w %d2,%d2
	cmp.w %a0,%d1
	jcc .L1023
	subq.l #1,%d0
	jne .L1022
.L1034:
	clr.w %d0
.L1025:
	tst.l 16(%sp)
	jne .L1036
.L1021:
	move.l (%sp)+,%d2
	rts
.L1023:
	tst.w %d2
	jeq .L1034
.L1030:
	clr.w %d0
	jra .L1024
.L1027:
	lsr.w #1,%d2
	lsr.w #1,%d1
	tst.w %d2
	jeq .L1025
.L1024:
	cmp.w %a0,%d1
	jhi .L1027
	sub.w %d1,%a0
	or.w %d2,%d0
	jra .L1027
.L1036:
	move.w %a0,%d0
	jra .L1021
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
	jls .L1046
	moveq #32,%d0
	moveq #1,%d2
.L1038:
	tst.l %d1
	jlt .L1039
	add.l %d1,%d1
	add.l %d2,%d2
	cmp.l %a0,%d1
	jcc .L1039
	subq.l #1,%d0
	jne .L1038
.L1050:
	moveq #0,%d0
.L1041:
	tst.l 16(%sp)
	jne .L1052
.L1037:
	move.l (%sp)+,%d2
	rts
.L1039:
	tst.l %d2
	jeq .L1050
.L1046:
	moveq #0,%d0
	jra .L1040
.L1043:
	lsr.l #1,%d2
	lsr.l #1,%d1
	tst.l %d2
	jeq .L1041
.L1040:
	cmp.l %a0,%d1
	jhi .L1043
	sub.l %d1,%a0
	or.l %d2,%d0
	jra .L1043
.L1052:
	move.l %a0,%d0
	jra .L1037
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
	jeq .L1054
	moveq #-32,%d0
	add.l %d0,%d2
	move.l %d3,%d0
	lsl.l %d2,%d0
	moveq #0,%d1
.L1056:
	movem.l (%sp)+,#28
	rts
.L1054:
	move.l %d3,%d1
	tst.l %d2
	jeq .L1056
	lsl.l %d2,%d1
	moveq #32,%d4
	sub.l %d2,%d4
	lsr.l %d4,%d3
	lsl.l %d2,%d0
	or.l %d3,%d0
	jra .L1056
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
	jeq .L1060
	add.l %d0,%d0
	subx.l %d0,%d0
	moveq #-32,%d3
	add.l %d3,%d2
	asr.l %d2,%d1
.L1062:
	movem.l (%sp)+,#28
	rts
.L1060:
	tst.l %d2
	jeq .L1063
	asr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L1062
.L1063:
	move.l %d3,%d1
	jra .L1062
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
	jne .L1070
	moveq #2,%d0
	sub.l %d2,%d0
.L1071:
	add.l %d1,%a0
	add.l %a0,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	rts
.L1070:
	moveq #0,%d0
	jra .L1071
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
	jgt .L1077
	jlt .L1078
	cmp.l %a1,%a0
	jhi .L1077
	jcs .L1078
	moveq #1,%d0
	jra .L1073
.L1077:
	moveq #0,%d0
.L1073:
	rts
.L1078:
	moveq #2,%d0
	jra .L1073
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	move.l 4(%sp),%d1
	move.l 8(%sp),%a1
	move.l 12(%sp),%d0
	move.l 16(%sp),%a0
	cmp.l %d1,%d0
	jgt .L1084
	jlt .L1085
	cmp.l %a1,%a0
	jhi .L1084
	jcs .L1085
	moveq #1,%d0
	jra .L1081
.L1084:
	moveq #0,%d0
.L1081:
	subq.l #1,%d0
	rts
.L1085:
	moveq #2,%d0
	jra .L1081
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
	jeq .L1090
	moveq #-32,%d0
	add.l %d0,%d2
	lsr.l %d2,%d1
	moveq #0,%d0
.L1092:
	movem.l (%sp)+,#28
	rts
.L1090:
	move.l %d1,%d0
	tst.l %d2
	jeq .L1093
	lsr.l %d2,%d0
	moveq #32,%d4
	sub.l %d2,%d4
	lsl.l %d4,%d1
	lsr.l %d2,%d3
	or.l %d3,%d1
	jra .L1092
.L1093:
	move.l %d3,%d1
	jra .L1092
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
	moveq #0,%d5
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
	move.l %a6,%a4
	move.l #1072693248,%d6
	clr.l %d7
	lea __muldf3,%a5
	jra .L1112
.L1110:
	move.l %a4,%d0
	jpl .L1119
	addq.l #1,%d0
.L1119:
	asr.l #1,%d0
	move.l %d0,%a4
	jeq .L1111
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
.L1112:
	move.l %a4,%d0
	btst #0,%d0
	jeq .L1110
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
	jra .L1110
.L1111:
	cmp.w #0,%a6
	jlt .L1118
.L1109:
	move.l %d6,%d0
	move.l %d7,%d1
	movem.l (%sp)+,#31996
	addq.l #8,%sp
	rts
.L1118:
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
	jra .L1109
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
	jra .L1123
.L1121:
	move.l %d2,%d2
	jpl .L1130
	addq.l #1,%d2
.L1130:
	asr.l #1,%d2
	jeq .L1122
	move.l %d3,-(%sp)
	move.l %d3,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d3
.L1123:
	btst #0,%d2
	jeq .L1121
	move.l %d3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L1121
.L1122:
	tst.l %d5
	jlt .L1129
.L1120:
	move.l %d4,%d0
	movem.l (%sp)+,#1084
	rts
.L1129:
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	jsr __divsf3
	addq.l #8,%sp
	move.l %d0,%d4
	jra .L1120
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
	jhi .L1135
	jcs .L1136
	cmp.l %a1,%a0
	jhi .L1135
	jcs .L1136
	moveq #1,%d0
	jra .L1131
.L1135:
	moveq #0,%d0
.L1131:
	rts
.L1136:
	moveq #2,%d0
	jra .L1131
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	move.l 4(%sp),%d1
	move.l 8(%sp),%a1
	move.l 12(%sp),%d0
	move.l 16(%sp),%a0
	cmp.l %d1,%d0
	jhi .L1142
	jcs .L1143
	cmp.l %a1,%a0
	jhi .L1142
	jcs .L1143
	moveq #1,%d0
	jra .L1139
.L1142:
	moveq #0,%d0
.L1139:
	subq.l #1,%d0
	rts
.L1143:
	moveq #2,%d0
	jra .L1139
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
