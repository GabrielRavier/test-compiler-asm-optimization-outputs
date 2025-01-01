	.file	"mini-libc.c"
	.c6xabi_attribute Tag_ABI_array_object_alignment, 0
	.c6xabi_attribute Tag_ABI_array_object_align_expected, 0
	.c6xabi_attribute Tag_ABI_stack_align_needed, 0
	.c6xabi_attribute Tag_ABI_stack_align_preserved, 0
	.c6xabi_attribute Tag_ABI_conformance, "1.0"
.text;
	.align	2
	.global	memmove
	.type	memmove, @function
memmove:
		mv	.l1x	B4, A3
		cmpltu	.l1	A3, A4, A0
	[!A0]	b	.s1	.L2
		nop	5
	;; condjump to .L2 occurs
		mv	.d1	A6, A0
	||	add	.l1x	A6, B4, A8
	||	add	.s1	A4, A6, A9
	[!A0]	b	.s1	.L3
	||	sub	.d1	A8, A3, A1
		nop	5
	;; condjump to .L3 occurs
.L4:
		add	.s1	-1, A1, A1
	||	ldb	.d1t1	*--A8[1], A18
	[A1]	b	.s1	.L4
		nop	3
		stb	.d1t1	A18, *--A9[1]
		nop	1
	;; condjump to .L4 occurs
.L3:
		ret	.s2	B3
		nop	5
	;; return occurs
.L2:
		cmpeq	.l1	A3, A4, A1
	||	mv	.d1	A6, A2
	||	add	.s1	-1, A4, A6
	[A1]	b	.s1	.L3
		nop	5
	;; condjump to .L3 occurs
	[!A2]	b	.s1	.L3
		nop	5
	;; condjump to .L3 occurs
.L5:
		sub	.d1	A2, 1, A2
	||	ldb	.d2t1	*B4++[1], A18
	[A2]	b	.s1	.L5
		nop	3
		stb	.d1t1	A18, *++A6[1]
		nop	1
	;; condjump to .L5 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
		mv	.l1x	B6, A1
	||	extu	.s1	A6, 24, 24, A6
	||	sub	.d2	B4, 1, B4
	||	mv	.d1	A4, A3
	[!A1]	b	.s1	.L17
		nop	5
	;; condjump to .L17 occurs
.L18:
		ldb	.d2t1	*++B4[1], A5
	||	sub	.d1	A1, 1, A1
	||	mv	.s1	A3, A4
		nop	4
		extu	.s1	A5, 24, 24, A7
	||	stb	.d1t1	A5, *A3++[1]
		cmpeq	.l1	A6, A7, A0
	[A0]	b	.s1	.L31
		nop	5
	;; condjump to .L31 occurs
	[A1]	b	.s1	.L18
		nop	5
	;; condjump to .L18 occurs
.L17:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L31:
		ret	.s2	B3
	||	add	.d1	A4, 1, A4
		nop	5
	;; return occurs
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
		mv	.d1	A6, A1
	||	extu	.s2	B4, 24, 24, B4
	[!A1]	b	.s1	.L39
	||[A1]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L39 occurs
.L34:
		mv	.s1	A5, A4
	||	ldbu	.d1t1	*A5++[1], A3
	||	mv	.l1x	B4, A6
		sub	.d1	A1, 1, A1
		nop	3
		cmpeq	.l1	A6, A3, A2
	[A2]	b	.s1	.L32
		nop	5
	;; condjump to .L32 occurs
	[A1]	b	.s1	.L34
		nop	5
	;; condjump to .L34 occurs
.L39:
		mvk	.d1	0, A4
.L32:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
		mv	.d1	A6, A0
	[!A0]	b	.s1	.L50
		nop	5
	;; condjump to .L50 occurs
.L44:
		ldbu	.d2t1	*B4, A7
	||	sub	.d1	A0, 1, A0
	||	add	.s2	1, B4, B4
		ldbu	.d1t1	*A4, A8
	||	add	.s1	1, A4, A4
		nop	4
		cmpeq	.l1	A7, A8, A1
	[!A1]	b	.s1	.L54
		nop	5
	;; condjump to .L54 occurs
	[A0]	b	.s1	.L44
		nop	5
	;; condjump to .L44 occurs
.L50:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L54:
		ret	.s2	B3
	||	sub	.d1	A8, A7, A4
		nop	5
	;; return occurs
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
		sub	.d2	B15, 16, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(12)
	[!A0]	b	.s1	.L56
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	3
	;; condjump to .L56 occurs
		callp	.s2	(memcpy), B3
.L56:
		ldw	.d2t2	*+B15(12), B3
	||	mv	.d1	A10, A4
		ldw	.d2t1	*+B15(8), A10
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	2
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
		add	.d1	A6, 1, A1
	||	add	.s1	-1, A6, A3
	||	extu	.s2	B4, 24, 24, B4
		sub	.d1	A1, 1, A1
	||	add	.s1	A4, A3, A7
	[A1]	b	.s1	.L66
	||	mv	.d1	A7, A4
	||	add	.l1	-1, A7, A7
		nop	5
	;; condjump to .L66 occurs
.L69:
		mvk	.d1	0, A4
.L63:
		ret	.s2	B3
		nop	5
	;; return occurs
.L66:
		ldbu	.d1t1	*A4, A6
	||	mv	.l1x	B4, A5
	||	add	.s1	-1, A1, A1
		nop	4
		cmpeq	.l1	A5, A6, A0
	[A0]	b	.s1	.L63
	||[!A0]	mv	.d1	A7, A4
	||	add	.l1	-1, A7, A7
		nop	5
	;; condjump to .L63 occurs
	[A1]	b	.s1	.L66
		nop	5
	;; condjump to .L66 occurs
		b	.s1	.L69
		nop	5
	;; jump to .L69 occurs
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
		sub	.d2	B15, 16, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(12)
	[!A0]	b	.s1	.L71
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	extu	.s2	B4, 24, 24, B4
		nop	3
	;; condjump to .L71 occurs
		callp	.s2	(memset), B3
.L71:
		ldw	.d2t2	*+B15(12), B3
	||	mv	.d1	A10, A4
		ldw	.d2t1	*+B15(8), A10
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	2
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
		ldb	.d2t1	*B4, A5
	||	mv	.d1	A4, A3
		add	.d1	A3, 1, A6
		nop	3
		ext	.s1	A5, 24, 24, A0
	||	stb	.d1t1	A5, *A4
	[!A0]	b	.s1	.L78
		nop	5
	;; condjump to .L78 occurs
.L80:
		ldb	.d2t1	*++B4[1], A7
	||	mv	.d1	A6, A4
		nop	4
		ext	.s1	A7, 24, 24, A1
	||	stb	.d1t1	A7, *A6++[1]
	[A1]	b	.s1	.L80
		nop	5
	;; condjump to .L80 occurs
.L78:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
		ldb	.d1t1	*A4, A6
	||	extu	.s2	B4, 24, 24, B4
		nop	4
		ext	.s1	A6, 24, 24, A1
	[!A1]	b	.s1	.L85
		nop	5
	;; condjump to .L85 occurs
.L86:
		extu	.s1	A6, 24, 24, A5
	||	mv	.l1x	B4, A3
		cmpeq	.l1	A3, A5, A0
	[A0]	b	.s1	.L85
	||[!A0]	ldb	.d1t1	*++A4[1], A6
		nop	4
		ext	.s1	A6, 24, 24, A1
	;; condjump to .L85 occurs
	[A1]	b	.s1	.L86
		nop	5
	;; condjump to .L86 occurs
.L85:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
		mv	.d1	A4, A3
.L96:
		ldb	.d1t1	*A3, A5
	||	mv	.l1x	B4, A6
	||	mv	.s1	A3, A4
		add	.d1	A3, 1, A3
		nop	3
		ext	.s1	A5, 24, 24, A0
		cmpeq	.l1	A6, A0, A1
	[A1]	b	.s1	.L94
		nop	5
	;; condjump to .L94 occurs
	[A0]	b	.s1	.L96
		nop	5
	;; condjump to .L96 occurs
		mvk	.d1	0, A4
.L94:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
		ldb	.d1t1	*A4, A6
		ldb	.d2t1	*B4, A17
		nop	3
		ext	.s1	A6, 24, 24, A3
		ext	.s1	A17, 24, 24, A7
	||	cmpeq	.l1	0, A3, A8
		cmpeq	.l1	A7, A3, A9
		cmpeq	.l1	0, A8, A16
		and	.d1	A9, A16, A0
	[!A0]	b	.s1	.L101
		nop	5
	;; condjump to .L101 occurs
.L110:
		ldb	.d1t1	*++A4[1], A6
		ldb	.d2t1	*++B4[1], A17
		nop	3
		ext	.s1	A6, 24, 24, A3
		ext	.s1	A17, 24, 24, A7
	||	cmpeq	.l1	0, A3, A8
		cmpeq	.l1	A7, A3, A9
		cmpeq	.l1	0, A8, A16
		and	.d1	A9, A16, A0
	[A0]	b	.s1	.L110
		nop	5
	;; condjump to .L110 occurs
.L101:
		ret	.s2	B3
	||	extu	.s1	A6, 24, 24, A4
		extu	.s1	A17, 24, 24, A5
		sub	.d1	A4, A5, A4
		nop	3
	;; return occurs
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
		ldb	.d1t1	*A4, A0
		nop	4
	[!A0]	b	.s1	.L111
	||[!A0]	mvk	.d1	0, A4
		mv	.d1	A4, A5
		nop	4
	;; condjump to .L111 occurs
.L113:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L113
		nop	5
	;; condjump to .L113 occurs
		sub	.d1	A5, A4, A4
.L111:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
		mv	.d1	A6, A0
	||	add	.s1x	A6, B4, A6
	[!A0]	b	.s1	.L118
	||[!A0]	mvk	.d1	0, A4
	[A0]	ldbu	.d1t1	*A4, A5
		nop	4
	;; condjump to .L118 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L121
	||[!A1]	ldbu	.d2t1	*B4, A7
	||[!A1]	mvk	.d1	0, A5
		nop	5
	;; condjump to .L121 occurs
.L122:
		mv	.l1x	B4, A9
	||	ldbu	.d2t1	*B4++[1], A7
		nop	1
		mv	.l1x	B4, A16
		cmpeq	.l1	A16, A6, A17
		cmpeq	.l1	0, A17, A19
		cmpeq	.l1	0, A7, A3
		cmpeq	.l1	A5, A7, A8
		cmpeq	.l1	0, A3, A18
		and	.d1	A8, A18, A20
		and	.d1	A20, A19, A2
	[!A2]	b	.s1	.L121
	||[A2]	ldbu	.d1t1	*++A4[1], A5
		nop	4
		mv	.d1	A5, A0
	;; condjump to .L121 occurs
	[A0]	b	.s1	.L122
		nop	5
	;; condjump to .L122 occurs
		ldbu	.d1t1	*+A9(1), A7
	||	mvk	.l1	0, A5
		nop	4
.L121:
		sub	.d1	A5, A7, A4
.L118:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
		and	.s1	-2, A6, A3
	||	cmplt	.l1	1, A6, A0
		sub	.d1	A3, 2, A6
	||[!A0]	b	.s1	.L128
		shru	.s1	A6, 1, A5
		add	.d1	A5, 1, A1
		nop	3
	;; condjump to .L128 occurs
		mvc	.s2x	A1, ILC
		nop	3
		sploop	2
.L130:
		ldb	.d1t2	*+A4(1), B5
		ldb	.d1t1	*A4++(2), A8
		nop	2
		add	.s2	2, B4, B4
	;; load to B5 occurs
		stb	.d2t2	B5, *-B4(2)
	;; load to A8 occurs
		spkernel	3, 0
	||	stb	.d2t1	A8, *-B4(1)
.L128:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.type	isalpha, @function
isalpha:
		ret	.s2	B3
	||	set	.s1	A4, 5, 5, A4
		addk	.s1	-97, A4
		cmpltu	.l1	25, A4, A3
		xor	.d1	1, A3, A4
		nop	2
	;; return occurs
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.type	isascii, @function
isascii:
		ret	.s2	B3
	||	mvk	.s1	127, A3
		cmpltu	.l1	A3, A4, A4
		xor	.d1	1, A4, A4
		nop	3
	;; return occurs
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.type	isblank, @function
isblank:
		ret	.s2	B3
	||	mvk	.s1	32, A3
	||	cmpeq	.l1	9, A4, A1
	[!A1]	cmpeq	.l1	A3, A4, A1
		mv	.d1	A1, A4
		nop	3
	;; return occurs
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
		ret	.s2	B3
	||	cmpltu	.l1	31, A4, A5
	||	mvk	.s1	127, A3
		cmpeq	.l1	A3, A4, A4
		cmpeq	.l1	0, A5, A6
		or	.d1	A4, A6, A4
		nop	2
	;; return occurs
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.type	isdigit, @function
isdigit:
		ret	.s2	B3
	||	subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A4
		xor	.d1	1, A4, A4
		nop	3
	;; return occurs
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.type	isgraph, @function
isgraph:
		ret	.s2	B3
	||	mvk	.s1	93, A3
		addk	.s1	-33, A4
		cmpltu	.l1	A3, A4, A4
		xor	.d1	1, A4, A4
		nop	2
	;; return occurs
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.type	islower, @function
islower:
		ret	.s2	B3
	||	addk	.s1	-97, A4
		cmpltu	.l1	25, A4, A4
		xor	.d1	1, A4, A4
		nop	3
	;; return occurs
	.size	islower, .-islower
	.align	2
	.global	isprint
	.type	isprint, @function
isprint:
		ret	.s2	B3
	||	mvk	.s1	94, A3
	||	subah	.d1	A4, 16, A4
		cmpltu	.l1	A3, A4, A4
		xor	.d1	1, A4, A4
		nop	3
	;; return occurs
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.type	isspace, @function
isspace:
		ret	.s2	B3
	||	sub	.d1	A4, 9, A5
	||	mvk	.s1	32, A3
		cmpltu	.l1	4, A5, A6
		cmpeq	.l1	A3, A4, A4
		cmpeq	.l1	0, A6, A7
		or	.d1	A4, A7, A4
		nop	1
	;; return occurs
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.type	isupper, @function
isupper:
		ret	.s2	B3
	||	addk	.s1	-65, A4
		cmpltu	.l1	25, A4, A4
		xor	.d1	1, A4, A4
		nop	3
	;; return occurs
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
		mvk	.s1	-127, A3
	||	cmpltu	.l1	31, A4, A7
		add	.d1	A4, A3, A6
	||	mvk	.s1	32, A5
	||	cmpeq	.l1	0, A7, A9
		cmpltu	.l1	A5, A6, A8
		cmpeq	.l1	0, A8, A16
		or	.d1	A9, A16, A0
	[A0]	b	.s1	.L157
		nop	5
	;; condjump to .L157 occurs
		mvk	.s1	-8232, A17
	||	mvk	.d1	7, A19
		add	.d1	A4, A17, A18
	||	mvklh	.s1	65535, A19
		cmpltu	.l1	1, A18, A1
	||	add	.s1	A4, A19, A4
	[!A1]	b	.s1	.L157
	||[A1]	ret	.s2	B3
	||	cmpltu	.l1	2, A4, A20
		cmpeq	.l1	0, A20, A4
		nop	4
	;; condjump to .L157 occurs
	;; return occurs
.L157:
		ret	.s2	B3
	||	mvk	.d1	1, A4
		nop	5
	;; return occurs
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
		ret	.s2	B3
	||	subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A4
		xor	.d1	1, A4, A4
		nop	3
	;; return occurs
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.type	iswprint, @function
iswprint:
		mvk	.s1	-8234, A5
	||	mvk	.d1	4, A22
	||	mvk	.l1	3, A24
		mvk	.s1	-18475, A7
	||	add	.l1	A4, A5, A6
	||	mvk	.d1	-2, A25
		mvklh	.s1	0, A7
		mvk	.s1	8231, A9
	||	cmpltu	.l1	A7, A6, A8
		mvk	.s1	8192, A19
	||	cmpltu	.l1	A9, A4, A16
		mvk	.s1	254, A3
	||	cmpeq	.l1	0, A8, A17
		mvklh	.s1	65535, A19
	||	cmpltu	.l1	A3, A4, A0
		mvklh	.s1	65535, A22
	||	cmpeq	.l1	0, A16, A18
	||	add	.d1	A4, A19, A20
		mvk	.s1	8184, A21
	||	add	.d1	A4, A22, A23
	||	or	.l1	A18, A17, A1
		mvklh	.s1	16, A24
	||	cmpltu	.l1	A21, A20, A2
	[!A0]	b	.s1	.L170
	||	cmpltu	.l1	A24, A23, A0
		mvklh	.s1	0, A25
		nop	4
	;; condjump to .L170 occurs
	[A1]	b	.s1	.L166
	||[A0]	mvk	.d1	0, A4
	[!A0]	and	.d1	A25, A4, A4
		cmpeq	.l1	A25, A4, A26
	[!A0]	cmpeq	.l1	0, A26, A4
		nop	2
	;; condjump to .L166 occurs
	[!A2]	b	.s1	.L166
		nop	5
	;; condjump to .L166 occurs
	[A0]	b	.s1	.L162
		nop	5
	;; condjump to .L162 occurs
.L162:
		ret	.s2	B3
		nop	5
	;; return occurs
.L166:
		ret	.s2	B3
	||	mvk	.d1	1, A4
		nop	5
	;; return occurs
.L170:
		ret	.s2	B3
	||	add	.d1	A4, 1, A27
	||	mvk	.s1	32, A29
		clr	.s1	A27, 7, 31, A28
		cmpltu	.l1	A29, A28, A4
		nop	3
	;; return occurs
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
		subah	.d1	A4, 24, A3
	||	ret	.s2	B3
		cmpltu	.l1	9, A3, A0
	[A0]	set	.s1	A4, 5, 5, A4
	||[!A0]	mvk	.d1	1, A4
	[A0]	addk	.s1	-97, A4
	[A0]	cmpltu	.l1	5, A4, A4
	[A0]	cmpeq	.l1	0, A4, A4
	;; return occurs
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.type	toascii, @function
toascii:
		ret	.s2	B3
	||	clr	.s1	A4, 7, 31, A4
		nop	5
	;; return occurs
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.type	fdim, @function
fdim:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		dmv	.s1	A5, A4, A11:A10
	||	stw	.d2t2	B14, *+B15(32)
		call	.s2	(__c6xabi_unordd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A13, *+B15(24)
	||	addkpc	.s2	.L187, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L187:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L177
	||	mv	.l2x	A13, B5
	[A0]	dmv	.s1	A11, A10, A5:A4
	[!A0]	dmv	.s1	A13, A12, A5:A4
		nop	3
	;; condjump to .L177 occurs
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L177
	||	mv	.l2x	A13, B5
	[A0]	dmv	.s1	A13, A12, A5:A4
	[!A0]	dmv	.s1	A11, A10, A5:A4
		nop	3
	;; condjump to .L177 occurs
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L177
	||[!A0]	mvk	.d1	0, A4
	||[!A0]	mvk	.l1	0, A5
		nop	5
	;; condjump to .L177 occurs
		call	.s2	(__c6xabi_subd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L190, B3, 0
	;; call to (__c6xabi_subd) occurs, with return value
		nop	4
.L190:
.L177:
		ldw	.d2t2	*+B15(28), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t2	B14, *+B15(24)
		call	.s2	(__c6xabi_unordf)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A11, *+B15(16)
	||	addkpc	.s2	.L201, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A10
	||	mv	.s1x	B4, A11
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L201:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	[A0]	b	.s1	.L191
	||[A0]	mv	.d1	A10, A4
	[!A0]	mv	.d1	A11, A4
		nop	4
	;; condjump to .L191 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	mv	.l2x	A11, B4
	[A1]	b	.s1	.L191
	||[A1]	mv	.d1	A11, A4
	[!A1]	mv	.d1	A10, A4
		nop	4
	;; condjump to .L191 occurs
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A2
	[!A2]	b	.s1	.L191
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L191 occurs
		callp	.s2	(__c6xabi_subf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A10, A4
.L191:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		dmv	.s1	A5, A4, A13:A12
	||	stw	.d2t2	B14, *+B15(32)
		call	.s2	(__c6xabi_unordd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A11, *+B15(16)
	||	addkpc	.s2	.L218, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.l1x	B5, A11
	||	mv	.l2x	A13, B5
		mv	.l1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L218:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s1	.L213
	||	mv	.l2x	A11, B5
		nop	5
	;; condjump to .L213 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A13, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A11, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L212
		nop	5
	;; condjump to .L212 occurs
	[A2]	b	.s1	.L207
		nop	5
	;; condjump to .L207 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L212
		nop	5
	;; condjump to .L212 occurs
.L213:
		ldw	.d2t2	*+B15(28), B3
	||	dmv	.s1	A11, A10, A5:A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
.L207:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A11, B5
	||	addkpc	.s2	.L220, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L220:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L213
		nop	5
	;; condjump to .L213 occurs
.L212:
		ldw	.d2t2	*+B15(28), B3
	||	dmv	.s1	A13, A12, A5:A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t2	B14, *+B15(24)
		call	.s2	(__c6xabi_unordf)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A11, *+B15(16)
	||	addkpc	.s2	.L234, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A11
	||	mv	.s1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L234:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	mv	.s1	A10, A4
	[A0]	b	.s1	.L229
		nop	5
	;; condjump to .L229 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	clr	.s1	A11, 0, 30, A3
		clr	.s1	A10, 0, 30, A4
		cmpeq	.l1	A4, A3, A2
	||[A1]	b	.s1	.L228
		nop	5
	;; condjump to .L228 occurs
	[A2]	b	.s1	.L223
		nop	5
	;; condjump to .L223 occurs
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L228
		nop	5
	;; condjump to .L228 occurs
.L229:
		mv	.d1	A10, A4
.L221:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
.L223:
		callp	.s2	(__c6xabi_ltf), B3
	||	mv	.l2x	A10, B4
	||	mv	.d1	A11, A4
		b	.s1	.L221
	||	mv	.d1	A4, A0
	[!A0]	mv	.d1	A11, A10
		mv	.d1	A10, A4
		nop	3
	;; jump to .L221 occurs
.L228:
		ldw	.d2t2	*+B15(20), B3
	||	mv	.d1	A11, A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		dmv	.s1	A5, A4, A13:A12
	||	stw	.d2t2	B14, *+B15(32)
		call	.s2	(__c6xabi_unordd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A11, *+B15(16)
	||	addkpc	.s2	.L250, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.l1x	B5, A11
	||	mv	.l2x	A13, B5
		mv	.l1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L250:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s1	.L245
	||	mv	.l2x	A11, B5
		nop	5
	;; condjump to .L245 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A13, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A11, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L244
		nop	5
	;; condjump to .L244 occurs
	[A2]	b	.s1	.L239
		nop	5
	;; condjump to .L239 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L244
		nop	5
	;; condjump to .L244 occurs
.L245:
		ldw	.d2t2	*+B15(28), B3
	||	dmv	.s1	A11, A10, A5:A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
.L239:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A11, B5
	||	addkpc	.s2	.L252, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L252:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L245
		nop	5
	;; condjump to .L245 occurs
.L244:
		ldw	.d2t2	*+B15(28), B3
	||	dmv	.s1	A13, A12, A5:A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		dmv	.s1	A5, A4, A11:A10
	||	stw	.d2t2	B14, *+B15(32)
		call	.s2	(__c6xabi_unordd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A13, *+B15(24)
	||	addkpc	.s2	.L266, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L266:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L259
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L259 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A11, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A13, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L261
		nop	5
	;; condjump to .L261 occurs
	[A2]	b	.s1	.L255
		nop	5
	;; condjump to .L255 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L259
		nop	5
	;; condjump to .L259 occurs
.L261:
		ldw	.d2t2	*+B15(28), B3
	||	dmv	.s1	A11, A10, A5:A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
.L255:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L268, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L268:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L261
		nop	5
	;; condjump to .L261 occurs
.L259:
		ldw	.d2t2	*+B15(28), B3
	||	dmv	.s1	A13, A12, A5:A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t2	B14, *+B15(24)
		call	.s2	(__c6xabi_unordf)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A11, *+B15(16)
	||	addkpc	.s2	.L282, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A10
	||	mv	.s1x	B4, A11
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L282:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	||	mv	.s1	A11, A4
	[A0]	b	.s1	.L275
		nop	5
	;; condjump to .L275 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	clr	.s1	A10, 0, 30, A3
		clr	.s1	A11, 0, 30, A4
		cmpeq	.l1	A4, A3, A2
	||[A1]	b	.s1	.L277
		nop	5
	;; condjump to .L277 occurs
	[A2]	b	.s1	.L271
		nop	5
	;; condjump to .L271 occurs
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L275
		nop	5
	;; condjump to .L275 occurs
.L277:
		mv	.d1	A10, A4
.L269:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
.L271:
		callp	.s2	(__c6xabi_ltf), B3
	||	mv	.d1	A10, A4
	||	mv	.l2x	A11, B4
		b	.s1	.L269
	||	mv	.d1	A4, A0
	[!A0]	mv	.d1	A11, A10
		mv	.d1	A10, A4
		nop	3
	;; jump to .L269 occurs
.L275:
		ldw	.d2t2	*+B15(20), B3
	||	mv	.d1	A11, A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		dmv	.s1	A5, A4, A11:A10
	||	stw	.d2t2	B14, *+B15(32)
		call	.s2	(__c6xabi_unordd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A13, *+B15(24)
	||	addkpc	.s2	.L298, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L298:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L291
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L291 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A11, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A13, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L293
		nop	5
	;; condjump to .L293 occurs
	[A2]	b	.s1	.L287
		nop	5
	;; condjump to .L287 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L291
		nop	5
	;; condjump to .L291 occurs
.L293:
		ldw	.d2t2	*+B15(28), B3
	||	dmv	.s1	A11, A10, A5:A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
.L287:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L300, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L300:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L293
		nop	5
	;; condjump to .L293 occurs
.L291:
		ldw	.d2t2	*+B15(28), B3
	||	dmv	.s1	A13, A12, A5:A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
	.size	fminl, .-fminl
	.align	2
	.global	l64a
	.type	l64a, @function
l64a:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.d1	A4, A0
	||	mvk	.s1	63, A7
		nop	4
		ldw	.d2t1	*+B14($GOT(s.0)), A4
	||[!A0]	b	.s1	.L302
	[A0]	ldw	.d2t1	*+B14($GOT(digits)), A6
		nop	3
	[!A0]	mv	.d1	A4, A5
	;; condjump to .L302 occurs
		mv	.d1	A4, A5
.L303:
		and	.d1	A7, A0, A3
	||	shru	.s1	A0, 6, A0
		add	.d1	A6, A3, A8
		ldb	.d1t1	*A8, A9
	||[A0]	b	.s1	.L303
		nop	4
		stb	.d1t1	A9, *A5++[1]
	;; condjump to .L303 occurs
.L302:
		mvk	.d1	0, A16
		stb	.d1t1	A16, *A5
	||	ret	.s2	B3
		ldw	.d2t2	*+B15(8), B14
	||	add	.s2	8, B15, B15
		nop	4
	;; return occurs
	.size	l64a, .-l64a
	.align	2
	.global	srand
	.type	srand, @function
srand:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	add	.s1	-1, A4, A4
	||	mvk	.d1	0, A3
		nop	3
		ret	.s2	B3
		addaw	.d1x	B14, (seed), A5
	||	ldw	.d2t2	*+B15(8), B14
	||	add	.s2	8, B15, B15
		stw	.d1t1	A3, *+A5(4)
		stw	.d1t1	A4, *A5
		nop	2
	;; return occurs
	.size	srand, .-srand
	.align	2
	.global	rand
	.type	rand, @function
rand:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mvk	.s1	32557, A5
	||	mvk	.d1	1, A18
		mvk	.s1	-3027, A4
		mvklh	.s1	19605, A5
		mvklh	.s1	22609, A4
		nop	1
		addaw	.d1x	B14, (seed), A6
	||	ldw	.d2t2	*+B15(8), B14
	||	add	.s2	8, B15, B15
		ldw	.d1t1	*A6, A7
		ldw	.d1t1	*+A6(4), A3
		nop	3
		mpy32	.m1	A7, A4, A9
		mpy32	.m1	A3, A5, A8
		mpy32u	.m1	A7, A5, A1:A0
		ret	.s2	B3
		nop	1
		add	.d1	A8, A9, A16
		addu	.l1	A0, A18, A5:A4
	||	add	.s1	A16, A1, A17
		add	.d1	A5, A17, A5
		stdw	.d1t1	A5:A4, *A6
	||	shru	.s1	A5, 1, A4
	;; return occurs
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
		mv	.l1x	B4, A0
	[!A0]	b	.s1	.L312
	||[!A0]	stw	.d1t2	B4, *A4
	[!A0]	stw	.d1t2	B4, *+A4(4)
	||[A0]	ldw	.d2t1	*B4, A3
	[A0]	stw	.d1t2	B4, *+A4(4)
		nop	3
	;; condjump to .L312 occurs
		stw	.d1t1	A3, *A4
		stw	.d2t1	A4, *B4
		ldw	.d1t1	*A4, A1
		nop	4
	[A1]	stw	.d1t1	A4, *+A1(4)
.L312:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
		ldw	.d1t1	*A4, A0
		nop	4
	[A0]	ldw	.d1t1	*+A4(4), A3
		nop	4
	[A0]	stw	.d1t1	A3, *+A0(4)
		ldw	.d1t1	*+A4(4), A3
		ret	.s2	B3
		nop	3
		mv	.d1	A3, A1
	[A1]	stw	.d1t1	A0, *A3
	;; return occurs
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
		subah	.d2	B15, 24, B15
		stdw	.d2t1	A13:A12, *+B15(16)
		ldw	.d1t1	*A6, A13
	||	stw	.d2t2	B14, *+B15(44)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.l1x	B6, A12
		stdw	.d2t1	A11:A10, *+B15(8)
		stw	.d2t1	A15, *+B15(48)
		mv	.l1	A8, A15
	||	mv	.s1x	B4, A10
	||	mvk	.d1	0, A11
	||	stdw	.d2t2	B11:B10, *+B15(32)
		mv	.d1	A13, A0
	||	stw	.d2t1	A14, *+B15(24)
	[!A0]	b	.s1	.L331
	||	stw	.d2t2	B12, *+B15(40)
		stw	.d2t2	B3, *+B15(28)
		mv	.s2x	A6, B11
	||	mv	.d1	A4, A14
	||	mv	.d2	B4, B10
		nop	3
	;; condjump to .L331 occurs
.L333:
		call	.s2x	A15
	||	mv	.d1	A14, A4
	||	add	.s1	1, A11, A11
		mv	.l2x	A10, B4
	||	addkpc	.s2	.L347, B3, 0
		mv	.l2x	A10, B12
	||	add	.d1	A10, A12, A10
	;; indirect call occurs, with return value
		nop	3
.L347:
		mv	.s1	A4, A1
	||	cmpeq	.l1	A11, A13, A2
	[!A1]	b	.s1	.L330
		nop	5
	;; condjump to .L330 occurs
	[!A2]	b	.s1	.L333
		nop	5
	;; condjump to .L333 occurs
.L331:
		mv	.d1	A12, A0
	||	mpy32	.m1	A12, A13, A4
	||	add	.l1	1, A13, A3
	||	mv	.s1	A12, A6
	||	mv	.l2x	A14, B4
	[!A0]	b	.s1	.L330
	||	stw	.d2t1	A3, *B11
		nop	3
		add	.d2x	B10, A4, B12
		nop	1
	;; condjump to .L330 occurs
		callp	.s2	(memmove), B3
	||	mv	.l1x	B12, A4
.L330:
		ldw	.d2t2	*+B15(28), B3
	||	mv	.l1x	B12, A4
		lddw	.d2t1	*+B15(8), A11:A10
		lddw	.d2t1	*+B15(16), A13:A12
		ldw	.d2t1	*+B15(24), A14
		lddw	.d2t2	*+B15(32), B11:B10
		ldw	.d2t2	*+B15(40), B12
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(44), B14
		ldw	.d2t1	*+B15(48), A15
	||	addk	.s2	48, B15
		nop	4
	;; return occurs
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
		subah	.d2	B15, 20, B15
		stw	.d2t1	A15, *+B15(40)
		ldw	.d1t1	*A6, A15
	||	stw	.d2t2	B14, *+B15(36)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		stw	.d2t1	A14, *+B15(24)
		mv	.d1	A15, A0
	||	mv	.s1	A4, A12
	||	mv	.l1x	B6, A14
	||	stw	.d2t2	B10, *+B15(32)
	[!A0]	b	.s1	.L350
	||	stw	.d2t2	B3, *+B15(28)
		mv	.l1	A8, A13
	||	mv	.s1x	B4, A10
	||	mvk	.d1	0, A11
		nop	4
	;; condjump to .L350 occurs
.L352:
		call	.s2x	A13
	||	mv	.d1	A12, A4
	||	add	.s1	1, A11, A11
		mv	.l2x	A10, B4
	||	addkpc	.s2	.L362, B3, 0
		mv	.l2x	A10, B10
	||	add	.d1	A10, A14, A10
	;; indirect call occurs, with return value
		nop	3
.L362:
		mv	.s1	A4, A1
	||	cmpeq	.l1	A11, A15, A2
	[!A1]	b	.s1	.L349
		nop	5
	;; condjump to .L349 occurs
	[!A2]	b	.s1	.L352
		nop	5
	;; condjump to .L352 occurs
.L350:
		mvk	.d2	0, B10
.L349:
		ldw	.d2t2	*+B15(28), B3
	||	mv	.l1x	B10, A4
		lddw	.d2t1	*+B15(8), A11:A10
		lddw	.d2t1	*+B15(16), A13:A12
		ldw	.d2t1	*+B15(24), A14
		ldw	.d2t2	*+B15(32), B10
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(36), B14
		ldw	.d2t1	*+B15(40), A15
	||	addk	.s2	40, B15
		nop	4
	;; return occurs
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
		ret	.s2	B3
	||	shr	.s1	A4, 31, A3
		xor	.d1	A4, A3, A4
		sub	.d1	A4, A3, A4
		nop	3
	;; return occurs
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
		ldb	.d1t1	*A4, A3
	||	mvk	.s1	32, A6
		nop	4
		ext	.s1	A3, 24, 24, A27
		sub	.d1	A27, 9, A29
	||	cmpeq	.l1	A6, A27, A5
	||	shl	.s1	A3, 24, A28
		cmpltu	.l1	4, A29, A7
		cmpeq	.l1	0, A7, A8
		or	.d1	A5, A8, A0
	[!A0]	b	.s1	.L366
		nop	5
	;; condjump to .L366 occurs
.L391:
		ldb	.d1t1	*++A4[1], A26
		nop	4
		ext	.s1	A26, 24, 24, A27
		sub	.d1	A27, 9, A29
	||	cmpeq	.l1	A6, A27, A5
	||	shl	.s1	A26, 24, A28
		cmpltu	.l1	4, A29, A7
		cmpeq	.l1	0, A7, A8
		or	.d1	A5, A8, A0
	[A0]	b	.s1	.L391
		nop	5
	;; condjump to .L391 occurs
.L366:
		shr	.s1	A28, 24, A9
		mvk	.s1	43, A16
		mvk	.s1	45, A17
	||	cmpeq	.l1	A16, A9, A1
		cmpeq	.l1	A17, A9, A0
	||[A1]	b	.s1	.L368
		nop	5
	;; condjump to .L368 occurs
	[A0]	b	.s1	.L369
		nop	5
	;; condjump to .L369 occurs
		ldb	.d1t1	*A4, A19
	||	mvk	.d2	0, B2
		nop	4
		ext	.s1	A19, 24, 24, A20
		subah	.d1	A20, 24, A20
		nop	1
		cmpltu	.l2x	9, A20, B1
	[B1]	b	.s1	.L377
	||[!B1]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L377 occurs
.L371:
		mvk	.d1	0, A4
.L374:
		subah	.d1	A19, 24, A19
	||	shl	.s1	A4, 2, A21
		ext	.s1	A19, 24, 24, A23
	||	ldb	.d1t1	*++A5[1], A19
	||	add	.l1	A21, A4, A22
		shl	.s1	A22, 1, A24
		sub	.d1	A24, A23, A4
		nop	2
		ext	.s1	A19, 24, 24, A25
		subah	.d1	A25, 24, A25
		cmpltu	.l1	9, A25, A1
	[!A1]	b	.s1	.L374
		nop	5
	;; condjump to .L374 occurs
		ret	.s2	B3
	||[!B2]	sub	.d1	A23, A24, A4
		nop	5
	;; return occurs
.L369:
		ldb	.d1t1	*+A4(1), A19
	||	add	.s1	1, A4, A5
		nop	4
		ext	.s1	A19, 24, 24, A18
		subah	.d1	A18, 24, A18
		nop	1
		cmpltu	.l2x	9, A18, B0
	[!B0]	b	.s1	.L371
	||[!B0]	mvk	.d2	1, B2
		nop	5
	;; condjump to .L371 occurs
.L377:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L368:
		ldb	.d1t1	*+A4(1), A19
	||	add	.s1	1, A4, A5
	||	mvk	.d2	0, B2
		nop	4
		ext	.s1	A19, 24, 24, A4
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A2
	[A2]	b	.s1	.L377
	[!A2]	b	.s1	.L371
		nop	5
	;; condjump to .L377 occurs
	;; jump to .L371 occurs
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(12)
		call	.s2	(atoi)
	||	stw	.d2t2	B14, *+B15(16)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	addkpc	.s2	.L394, B3, 0
	;; call to (atoi) occurs, with return value
		nop	4
.L394:
		ldw	.d2t2	*+B15(12), B3
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	3
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
		ldb	.d1t1	*A4, A3
	||	mvk	.s1	32, A6
		nop	4
		ext	.s1	A3, 24, 24, A20
		sub	.d1	A20, 9, A22
	||	cmpeq	.l1	A6, A20, A5
	||	shl	.s1	A3, 24, A21
		cmpltu	.l1	4, A22, A7
		cmpeq	.l1	0, A7, A9
		or	.d1	A5, A9, A0
	[!A0]	b	.s1	.L396
		nop	5
	;; condjump to .L396 occurs
.L421:
		ldb	.d1t1	*++A4[1], A19
		nop	4
		ext	.s1	A19, 24, 24, A20
		sub	.d1	A20, 9, A22
	||	cmpeq	.l1	A6, A20, A5
	||	shl	.s1	A19, 24, A21
		cmpltu	.l1	4, A22, A7
		cmpeq	.l1	0, A7, A9
		or	.d1	A5, A9, A0
	[A0]	b	.s1	.L421
		nop	5
	;; condjump to .L421 occurs
.L396:
		shr	.s1	A21, 24, A16
		mvk	.s1	43, A17
		mvk	.s1	45, A18
	||	cmpeq	.l1	A17, A16, A1
		cmpeq	.l1	A18, A16, A0
	||[A1]	b	.s1	.L398
		nop	5
	;; condjump to .L398 occurs
	[A0]	b	.s1	.L399
		nop	5
	;; condjump to .L399 occurs
		ldb	.d1t1	*A4, A20
	||	mvk	.d2	0, B2
		nop	4
		ext	.s1	A20, 24, 24, A21
		subah	.d1	A21, 24, A21
		nop	1
		cmpltu	.l2x	9, A21, B0
	[B0]	b	.s1	.L407
	||[!B0]	mv	.d1	A4, A8
		nop	5
	;; condjump to .L407 occurs
.L401:
		mvk	.d1	0, A4
	||	mvk	.l1	0, A5
.L404:
		addk	.s1	-48, A20
	||	addu	.l1	A4, A4, A1:A0
		ext	.s1	A20, 24, 24, A23
	||	ldb	.d1t1	*++A8[1], A20
	||	add	.l1	A1, A5, A22
		add	.d1	A22, A5, A24
	||	addu	.l1	A0, A0, A7:A6
	||	shr	.s1	A23, 31, A25
		add	.s1	A7, A24, A26
	||	addu	.l1	A6, A4, A1:A0
		add	.s1	A26, A24, A28
	||	addu	.l1	A0, A0, A7:A6
		add	.d1	A1, A28, A31
	||	sub	.l1	A6, A23, A4
	||	mv	.s1	A6, A9
		ext	.s1	A20, 24, 24, A27
	||	add	.d1	A31, A5, A3
	||	cmpltu	.l1	A6, A4, A17
		subah	.d1	A27, 24, A27
	||	add	.s1	A7, A3, A5
		cmpltu	.l1	9, A27, A2
	||	add	.s1	A5, A3, A7
	[!A2]	b	.s1	.L404
	||	sub	.d1	A7, A25, A16
		sub	.d1	A16, A17, A5
		nop	4
	;; condjump to .L404 occurs
	[B2]	b	.s1	.L395
		nop	5
	;; condjump to .L395 occurs
		sub	.d1	A23, A9, A4
	||	sub	.s1	A25, A7, A8
		cmpltu	.l1	A23, A4, A18
		sub	.d1	A8, A18, A5
.L395:
		ret	.s2	B3
		nop	5
	;; return occurs
.L399:
		ldb	.d1t1	*+A4(1), A20
	||	add	.s1	1, A4, A8
		nop	4
		ext	.s1	A20, 24, 24, A19
		subah	.d1	A19, 24, A19
		nop	1
		cmpltu	.l2x	9, A19, B1
	[!B1]	b	.s1	.L401
	||[!B1]	mvk	.d2	1, B2
		nop	5
	;; condjump to .L401 occurs
.L407:
		ret	.s2	B3
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; return occurs
.L398:
		ldb	.d1t1	*+A4(1), A20
	||	add	.s1	1, A4, A8
	||	mvk	.d2	0, B2
		nop	4
		ext	.s1	A20, 24, 24, A4
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A2
	[A2]	b	.s1	.L407
	[!A2]	b	.s1	.L401
		nop	5
	;; condjump to .L407 occurs
	;; jump to .L401 occurs
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.type	bsearch, @function
bsearch:
		subah	.d2	B15, 20, B15
		stw	.d2t2	B14, *+B15(36)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stdw	.d2t1	A13:A12, *+B15(16)
		stw	.d2t1	A15, *+B15(40)
		stw	.d2t1	A14, *+B15(24)
		stdw	.d2t1	A11:A10, *+B15(8)
		stw	.d2t2	B10, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		mv	.d1	A4, A14
	||	mv	.l1x	B4, A13
	||	mv	.s1	A6, A10
		mv	.s1x	B6, A12
	||	mv	.d1	A8, A15
.L432:
		mv	.d1	A10, A0
	[!A0]	b	.s1	.L423
		nop	5
	;; condjump to .L423 occurs
.L435:
		shru	.s2x	A10, 1, B10
	||	mv	.d1	A14, A4
	||	add	.s1	-1, A10, A10
		nop	1
		mpy32	.m1x	A12, B10, A3
		call	.s2x	A15
		addkpc	.s2	.L436, B3, 0
		nop	1
		add	.d1	A13, A3, A11
		nop	1
	;; indirect call occurs, with return value
		mv	.l2x	A11, B4
.L436:
		cmpgt	.l1	0, A4, A1
		cmplt	.l1	0, A4, A2
	||[A1]	b	.s1	.L427
	||[!A1]	add	.d1	A11, A12, A13
		mv	.l1x	B10, A4
		sub	.d1	A10, A4, A10
		nop	3
	;; condjump to .L427 occurs
	[A2]	b	.s1	.L432
		nop	5
	;; condjump to .L432 occurs
		ldw	.d2t2	*+B15(28), B3
	||	mv	.d1	A11, A4
		lddw	.d2t1	*+B15(8), A11:A10
		lddw	.d2t1	*+B15(16), A13:A12
		ldw	.d2t1	*+B15(24), A14
		ldw	.d2t2	*+B15(32), B10
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(36), B14
		ldw	.d2t1	*+B15(40), A15
	||	addk	.s2	40, B15
		nop	4
	;; return occurs
.L427:
		mv	.l1x	B10, A10
		mv	.d1	A10, A0
	[A0]	b	.s1	.L435
		nop	5
	;; condjump to .L435 occurs
.L423:
		ldw	.d2t2	*+B15(28), B3
	||	mvk	.d1	0, A11
		mv	.d1	A11, A4
	||	lddw	.d2t1	*+B15(16), A13:A12
		lddw	.d2t1	*+B15(8), A11:A10
		ldw	.d2t1	*+B15(24), A14
		ldw	.d2t2	*+B15(32), B10
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(36), B14
		ldw	.d2t1	*+B15(40), A15
	||	addk	.s2	40, B15
		nop	4
	;; return occurs
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
		subah	.d2	B15, 24, B15
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A6, A10
	||	stw	.d2t2	B14, *+B15(44)
		mv	.d1	A10, A0
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A15, *+B15(48)
		stw	.d2t1	A14, *+B15(28)
	[!A0]	b	.s1	.L438
	||	stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t2	B11, *+B15(40)
		stw	.d2t2	B10, *+B15(36)
		stw	.d2t2	B3, *+B15(32)
	;; condjump to .L438 occurs
		mv	.d1	A4, A15
	||	mv	.l1x	B4, A12
	||	mv	.s1	A8, A14
		mv	.l1x	B6, A11
		mv	.l1x	B8, A13
.L453:
		shr	.s2x	A10, 1, B11
	||	sub	.d1	A10, 1, A10
	||	mv	.l1	A13, A6
	||	mv	.s1	A15, A4
		mpy32	.m2x	B11, A11, B3
	||	shr	.s1	A10, 1, A10
		nop	3
		add	.d2x	B3, A12, B10
		call	.s2x	A14
	||	mv	.l2	B10, B4
		addkpc	.s2	.L454, B3, 0
	;; indirect call occurs, with return value
		nop	4
.L454:
		cmplt	.l1	0, A4, A2
	||	mv	.s1	A4, A1
	[!A2]	mv	.l1x	B11, A10
	||[!A1]	b	.s1	.L437
		mv	.d1	A10, A0
	||[A2]	add	.s1x	A11, B10, A12
		nop	4
	;; condjump to .L437 occurs
	[A0]	b	.s1	.L453
		nop	5
	;; condjump to .L453 occurs
.L438:
		mvk	.d2	0, B10
.L437:
		ldw	.d2t2	*+B15(32), B4
	||	mv	.l1x	B10, A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ldw	.d2t1	*+B15(28), A14
		ldw	.d2t2	*+B15(36), B10
		ldw	.d2t2	*+B15(40), B11
		ret	.s2	B4
	||	ldw	.d2t2	*+B15(44), B14
		ldw	.d2t1	*+B15(48), A15
	||	addk	.s2	48, B15
		nop	4
	;; return occurs
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(16)
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L457, B3, 0
		nop	4
.L457:
		ldw	.d2t2	*+B15(16), B3
	||	addk	.s2	16, B15
		nop	4
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
		ret	.s2	B3
	||	shr	.s1	A5, 31, A3
		xor	.d1	A4, A3, A6
	||	xor	.s1	A5, A3, A5
		sub	.d1	A6, A3, A4
	||	sub	.s1	A5, A3, A7
		cmpltu	.l1	A6, A4, A8
		sub	.d1	A7, A8, A5
		nop	1
	;; return occurs
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t2	B14, *+B15(28)
		call	.s2	(__c6xabi_divlli)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.l1x	B5, A15
		stw	.d2t1	A14, *+B15(20)
	||	addkpc	.s2	.L462, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L462:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L463, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L463:
		ldw	.d2t2	*+B15(24), B3
	||	dmv	.s1	A5, A4, A9:A8
	||	mv	.d1	A10, A4
		ldw	.d2t1	*+B15(12), A12
		ldw	.d2t1	*+B15(16), A13
		ldw	.d2t1	*+B15(20), A14
		ldw	.d2t2	*+B15(28), B14
	||	stdw	.d1t1	A9:A8, *+A10(8)
		ret	.s2	B3
	||	ldw	.d2t1	*+B15(8), A10
		ldw	.d2t1	*+B15(32), A15
	||	addk	.s2	32, B15
		nop	4
	;; return occurs
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
		ret	.s2	B3
	||	shr	.s1	A4, 31, A3
		xor	.d1	A4, A3, A4
		sub	.d1	A4, A3, A4
		nop	3
	;; return occurs
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(16)
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L468, B3, 0
		nop	4
.L468:
		ldw	.d2t2	*+B15(16), B3
	||	addk	.s2	16, B15
		nop	4
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
		ret	.s2	B3
	||	shr	.s1	A5, 31, A3
		xor	.d1	A4, A3, A6
	||	xor	.s1	A5, A3, A5
		sub	.d1	A6, A3, A4
	||	sub	.s1	A5, A3, A7
		cmpltu	.l1	A6, A4, A8
		sub	.d1	A7, A8, A5
		nop	1
	;; return occurs
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t2	B14, *+B15(28)
		call	.s2	(__c6xabi_divlli)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.l1x	B5, A15
		stw	.d2t1	A14, *+B15(20)
	||	addkpc	.s2	.L473, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L473:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L474, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L474:
		ldw	.d2t2	*+B15(24), B3
	||	dmv	.s1	A5, A4, A9:A8
	||	mv	.d1	A10, A4
		ldw	.d2t1	*+B15(12), A12
		ldw	.d2t1	*+B15(16), A13
		ldw	.d2t1	*+B15(20), A14
		ldw	.d2t2	*+B15(28), B14
	||	stdw	.d1t1	A9:A8, *+A10(8)
		ret	.s2	B3
	||	ldw	.d2t1	*+B15(8), A10
		ldw	.d2t1	*+B15(32), A15
	||	addk	.s2	32, B15
		nop	4
	;; return occurs
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
		ldw	.d1t1	*A4, A5
		nop	4
		cmpeq	.l1x	A5, B4, A9
		cmpeq	.l1	0, A5, A3
		cmpeq	.l1	0, A9, A6
		cmpeq	.l1	0, A3, A7
		and	.d1	A7, A6, A0
	[!A0]	b	.s1	.L476
		nop	5
	;; condjump to .L476 occurs
.L486:
		ldw	.d1t1	*++A4[1], A5
	||	mv	.s1x	B4, A8
		nop	4
		cmpeq	.l1	A8, A5, A9
		cmpeq	.l1	0, A5, A3
		cmpeq	.l1	0, A9, A6
		cmpeq	.l1	0, A3, A7
		and	.d1	A7, A6, A0
	[A0]	b	.s1	.L486
		nop	5
	;; condjump to .L486 occurs
.L476:
		ret	.s2	B3
	||	mv	.d1	A5, A1
	[!A1]	mvk	.d1	0, A4
		nop	4
	;; return occurs
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
		ldw	.d1t1	*A4, A5
		ldw	.d2t1	*B4, A6
		nop	3
		cmpeq	.l1	0, A5, A3
		cmpeq	.l1	A6, A5, A7
		cmpeq	.l1	0, A3, A8
		cmpeq	.l1	0, A6, A9
	||	and	.s1	A7, A8, A16
		cmpeq	.l1	0, A9, A17
		and	.d1	A16, A17, A0
	[!A0]	b	.s1	.L488
		nop	5
	;; condjump to .L488 occurs
.L499:
		ldw	.d1t1	*++A4[1], A5
		ldw	.d2t1	*++B4[1], A6
		nop	3
		cmpeq	.l1	0, A5, A3
		cmpeq	.l1	A6, A5, A7
		cmpeq	.l1	0, A3, A8
		cmpeq	.l1	0, A6, A9
	||	and	.s1	A7, A8, A16
		cmpeq	.l1	0, A9, A17
		and	.d1	A16, A17, A0
	[A0]	b	.s1	.L499
		nop	5
	;; condjump to .L499 occurs
.L488:
		ret	.s2	B3
	||	cmpgt	.l1	A6, A5, A1
	[!A1]	cmplt	.l1	A6, A5, A4
	||[A1]	mvk	.d1	-1, A4
		nop	4
	;; return occurs
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
		sub	.d1	A4, 4, A3
.L501:
		ldw	.d2t1	*B4++[1], A0
		nop	4
	[A0]	b	.s1	.L501
	||	stw	.d1t1	A0, *++A3[1]
		nop	5
	;; condjump to .L501 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
		ldw	.d1t1	*A4, A0
		nop	4
	[!A0]	b	.s1	.L505
	||[!A0]	mvk	.d1	0, A4
		mv	.d1	A4, A5
		nop	4
	;; condjump to .L505 occurs
.L507:
		ldw	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L507
		nop	5
	;; condjump to .L507 occurs
		sub	.d1	A5, A4, A4
		shr	.s1	A4, 2, A4
.L505:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L521
		nop	5
	;; condjump to .L521 occurs
.L514:
		mv	.s1	A4, A8
	||	ldw	.d1t1	*A4++[1], A5
	||	mv	.l1x	B4, A7
		ldw	.d2t1	*B4++[1], A6
	||	sub	.d1	A2, 1, A2
		nop	3
		cmpeq	.l1	0, A5, A3
		cmpeq	.l1	0, A6, A9
		cmpeq	.l1	A6, A5, A16
		cmpeq	.l1	0, A3, A17
		cmpeq	.l1	0, A9, A18
	||	and	.s1	A16, A17, A19
		and	.d1	A19, A18, A0
	[!A0]	b	.s1	.L525
		nop	5
	;; condjump to .L525 occurs
	[A2]	b	.s1	.L514
		nop	5
	;; condjump to .L514 occurs
.L521:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L525:
		ldw	.d1t1	*A8, A4
		ldw	.d1t1	*A7, A20
		ret	.s2	B3
		nop	3
		cmpgt	.l1	A20, A4, A1
	[!A1]	cmplt	.l1	A20, A4, A4
	||[A1]	mvk	.d1	-1, A4
	;; return occurs
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L533
	||[A1]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L533 occurs
.L528:
		mv	.s1	A5, A4
	||	ldw	.d1t1	*A5++[1], A3
	||	mv	.l1x	B4, A6
		sub	.d1	A1, 1, A1
		nop	3
		cmpeq	.l1	A6, A3, A2
	[A2]	b	.s1	.L526
		nop	5
	;; condjump to .L526 occurs
	[A1]	b	.s1	.L528
		nop	5
	;; condjump to .L528 occurs
.L533:
		mvk	.d1	0, A4
.L526:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L545
		nop	5
	;; condjump to .L545 occurs
.L538:
		ldw	.d2t1	*B4, A7
	||	sub	.d1	A2, 1, A2
	||	add	.s2	4, B4, B4
		ldw	.d1t1	*A4, A8
	||	add	.s1	4, A4, A4
		nop	4
		cmpeq	.l1	A7, A8, A1
	[!A1]	b	.s1	.L549
		nop	5
	;; condjump to .L549 occurs
	[A2]	b	.s1	.L538
		nop	5
	;; condjump to .L538 occurs
.L545:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L549:
		ret	.s2	B3
	||	cmpgt	.l1	A7, A8, A0
	[!A0]	cmplt	.l1	A7, A8, A4
	||[A0]	mvk	.d1	-1, A4
		nop	4
	;; return occurs
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
		sub	.d2	B15, 16, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(12)
	[!A0]	b	.s1	.L551
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	shl	.s1	A6, 2, A6
		nop	3
	;; condjump to .L551 occurs
		callp	.s2	(memcpy), B3
.L551:
		ldw	.d2t2	*+B15(12), B3
	||	mv	.d1	A10, A4
		ldw	.d2t1	*+B15(8), A10
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	2
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
		mv	.l1x	B4, A3
	||	shl	.s1	A6, 2, A7
		sub	.s1	A4, A3, A8
	||	cmpeq	.l1	A3, A4, A0
		cmpgtu	.l1	A7, A8, A1
	||[A0]	b	.s1	.L559
		nop	5
	;; condjump to .L559 occurs
	[!A1]	b	.s1	.L571
		nop	5
	;; condjump to .L571 occurs
		mv	.d1	A6, A1
	||	add	.l1	-4, A7, A16
	||	add	.d2x	B4, A7, B4
	||	add	.s1	A4, A7, A18
	[!A1]	b	.s1	.L559
		shru	.s1	A16, 2, A17
		add	.d1	A17, 1, A2
		nop	3
	;; condjump to .L559 occurs
.L562:
		sub	.d1	A2, 1, A2
	||	ldw	.d2t1	*--B4[1], A20
	[A2]	b	.s1	.L562
		nop	3
		stw	.d1t1	A20, *--A18[1]
		nop	1
	;; condjump to .L562 occurs
.L559:
		ret	.s2	B3
		nop	5
	;; return occurs
.L571:
		mv	.d1	A6, A2
	||	add	.l1	-4, A4, A9
	||	mv	.s1	A6, A0
	[!A2]	b	.s1	.L559
		nop	5
	;; condjump to .L559 occurs
.L563:
		sub	.d1	A0, 1, A0
	||	ldw	.d2t1	*B4++[1], A20
	[A0]	b	.s1	.L563
		nop	3
		stw	.d1t1	A20, *++A9[1]
		nop	1
	;; condjump to .L563 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
		mv	.d1	A6, A0
	||	mv	.s1	A4, A3
	[!A0]	b	.s1	.L573
		mvc	.s2x	A0, ILC
		nop	4
	;; condjump to .L573 occurs
		sploop	1
.L574:
		stw	.d1t2	B4, *A3++[1]
		spkernel	1, 0
.L573:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
		mv	.l1x	B4, A3
		cmpgtu	.l1	A3, A4, A0
	[!A0]	b	.s1	.L582
		nop	5
	;; condjump to .L582 occurs
		mv	.d1	A6, A0
	||	add	.s1	A4, A6, A7
	||	add	.d2x	B4, A6, B5
	[!A0]	b	.s1	.L581
	||	sub	.d1	A7, A4, A1
		nop	5
	;; condjump to .L581 occurs
.L584:
		add	.s1	-1, A1, A1
	||	ldb	.d1t1	*--A7[1], A8
	[A1]	b	.s1	.L584
		nop	3
		stb	.d2t1	A8, *--B5[1]
		nop	1
	;; condjump to .L584 occurs
.L581:
		ret	.s2	B3
		nop	5
	;; return occurs
.L582:
		cmpeq	.l1	A3, A4, A1
	||	mv	.s1	A6, A2
	||	sub	.d2	B4, 1, B4
	[A1]	b	.s1	.L581
		nop	5
	;; condjump to .L581 occurs
	[!A2]	b	.s1	.L581
		nop	5
	;; condjump to .L581 occurs
.L585:
		add	.s1	-1, A2, A2
	||	ldb	.d1t1	*A4++[1], A8
	[A2]	b	.s1	.L585
		nop	3
		stb	.d2t1	A8, *++B4[1]
		nop	1
	;; condjump to .L585 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
		mv	.l1x	B4, A3
		subah	.d1	A3, 16, A3
		cmpgt	.l1	0, A3, A1
	[A1]	mvk	.s1	31, A8
	||[A1]	mv	.l1x	B4, A9
	||[!A1]	mvk	.d1	0, A7
	[A1]	shru	.s1	A4, 1, A6
	||[A1]	sub	.d1	A8, A9, A8
	[A1]	shl	.s1	A5, A9, A3
	[A1]	shru	.s1	A6, A8, A6
	[A1]	or	.d1	A3, A6, A3
	||	neg	.l1x	B4, A6
	||[!A1]	shl	.s1	A4, A3, A3
		clr	.s1	A6, 6, 31, A16
		subah	.d1	A16, 16, A17
	||[A1]	shl	.s1	A4, A9, A7
		cmpgt	.l1	0, A17, A0
	[A0]	mvk	.s1	31, A8
		ret	.s2	B3
	||[A0]	shl	.s1	A5, 1, A17
	||[A0]	sub	.d1	A8, A16, A8
	[A0]	shru	.s1	A4, A16, A4
	[A0]	shl	.s1	A17, A8, A17
	[!A0]	shru	.s1	A5, A17, A4
	||[A0]	or	.l1	A4, A17, A4
	||[!A0]	mvk	.d1	0, A5
	[A0]	shru	.s1	A5, A16, A5
	||	or	.d1	A7, A4, A4
		or	.d1	A3, A5, A5
	;; return occurs
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
		mv	.l1x	B4, A6
		subah	.d1	A6, 16, A6
		cmpgt	.l1	0, A6, A1
	[A1]	mvk	.s1	31, A8
	||[A1]	mv	.l1x	B4, A9
	||[!A1]	mvk	.d1	0, A7
	[A1]	shl	.s1	A5, 1, A3
	||[A1]	sub	.d1	A8, A9, A8
	[A1]	shru	.s1	A4, A9, A6
	[A1]	shl	.s1	A3, A8, A3
	[A1]	or	.d1	A6, A3, A6
	||	neg	.l1x	B4, A3
	||[!A1]	shru	.s1	A5, A6, A6
		clr	.s1	A3, 6, 31, A16
		subah	.d1	A16, 16, A17
	||[A1]	shru	.s1	A5, A9, A7
		cmpgt	.l1	0, A17, A0
	[A0]	mvk	.s1	31, A8
		ret	.s2	B3
	||[A0]	shru	.s1	A4, 1, A17
	||[A0]	sub	.d1	A8, A16, A8
	[A0]	shl	.s1	A5, A16, A5
	[A0]	shru	.s1	A17, A8, A17
	[!A0]	shl	.s1	A4, A17, A5
	||[A0]	or	.l1	A5, A17, A5
	||[!A0]	mvk	.d1	0, A4
	[A0]	shl	.s1	A4, A16, A4
	||	or	.d1	A7, A5, A5
		or	.d1	A6, A4, A4
	;; return occurs
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.type	rotl32, @function
rotl32:
		ret	.s2	B3
	||	mv	.l1x	B4, A3
		rotl	.m1	A4, A3, A4
		nop	4
	;; return occurs
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.type	rotr32, @function
rotr32:
		ret	.s2	B3
	||	mvk	.s1	32, A5
	||	mv	.l1x	B4, A3
		sub	.d1	A5, A3, A6
		rotl	.m1	A4, A6, A4
		nop	3
	;; return occurs
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
		ret	.s2	B3
	||	mv	.l1x	B4, A3
		rotl	.m1	A4, A3, A4
		nop	4
	;; return occurs
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
		ret	.s2	B3
	||	mvk	.s1	32, A5
	||	mv	.l1x	B4, A3
		sub	.d1	A5, A3, A6
		rotl	.m1	A4, A6, A4
		nop	3
	;; return occurs
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.type	rotl16, @function
rotl16:
		ret	.s2	B3
	||	and	.d1x	15, B4, A5
	||	extu	.s1	A4, 16, 16, A3
		neg	.l1	A5, A6
	||	shl	.s1	A4, A5, A4
		and	.d1	15, A6, A7
		shru	.s1	A3, A7, A8
		or	.d1	A8, A4, A4
		nop	1
	;; return occurs
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
		ret	.s2	B3
	||	and	.d1x	15, B4, A6
	||	extu	.s1	A4, 16, 16, A3
		neg	.l1	A6, A5
	||	shru	.s1	A3, A6, A7
		and	.d1	15, A5, A8
		shl	.s1	A4, A8, A4
		or	.d1	A4, A7, A4
		nop	1
	;; return occurs
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
		ret	.s2	B3
	||	and	.d1x	7, B4, A5
	||	extu	.s1	A4, 24, 24, A3
		neg	.l1	A5, A6
	||	shl	.s1	A4, A5, A4
		and	.d1	7, A6, A7
		shru	.s1	A3, A7, A8
		or	.d1	A8, A4, A4
		nop	1
	;; return occurs
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
		ret	.s2	B3
	||	and	.d1x	7, B4, A6
	||	extu	.s1	A4, 24, 24, A3
		neg	.l1	A6, A5
	||	shru	.s1	A3, A6, A7
		and	.d1	7, A5, A8
		shl	.s1	A4, A8, A4
		or	.d1	A4, A7, A4
		nop	1
	;; return occurs
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
		ret	.s2	B3
	||	extu	.s1	A4, 16, 16, A3
		shru	.s1	A3, 8, A5
		shl	.s1	A4, 8, A4
		or	.d1	A4, A5, A4
		nop	2
	;; return occurs
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
		ret	.s2	B3
	||	rotl	.m1	A4, 16, A4
		nop	1
		swap4	.l1	A4, A4
		nop	3
	;; return occurs
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
		ret	.s2	B3
	||	rotl	.m1	A4, 16, A3
		rotl	.m1	A5, 16, A4
		swap4	.l1	A3, A5
		swap4	.l1	A4, A4
		nop	2
	;; return occurs
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
		mvk	.d1	0, A3
	||	mvk	.s1	32, A1
.L633:
		shru	.s1	A4, A3, A5
	||	sub	.d1	A1, 1, A1
	||	add	.l1	1, A3, A3
		and	.d1	1, A5, A0
	[A0]	b	.s1	.L637
		nop	5
	;; condjump to .L637 occurs
	[A1]	b	.s1	.L633
		nop	5
	;; condjump to .L633 occurs
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L637:
		ret	.s2	B3
	||	mv	.d1	A3, A4
		nop	5
	;; return occurs
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L638
	||[!A0]	mvk	.d1	0, A4
	[A0]	and	.d1	1, A0, A4
		mv	.d1	A4, A1
		nop	3
	;; condjump to .L638 occurs
	[A1]	b	.s1	.L638
	||[!A1]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L638 occurs
.L640:
		shr	.s1	A0, 1, A0
	||	add	.d1	A4, 1, A4
		and	.d1	1, A0, A1
	[!A1]	b	.s1	.L640
		nop	5
	;; condjump to .L640 occurs
.L638:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(12)
		mvk	.l2	-1, B4
	||	stw	.d2t2	B14, *+B15(16)
		call	.s2	(__c6xabi_ltf)
	||	stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.d1	A4, A10
	||	addkpc	.s2	.L652, B3, 0
		mvklh	.s2	65407, B4
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	3
.L652:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L646
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L646 occurs
		call	.s2	(__c6xabi_gtf)
	||	mv	.d1	A10, A4
	||	mvk	.l2	-1, B4
		addkpc	.s2	.L653, B3, 0
		mvklh	.s2	32639, B4
	;; call to (__c6xabi_gtf) occurs, with return value
		nop	3
.L653:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L646:
		ldw	.d2t2	*+B15(12), B3
		ldw	.d2t1	*+B15(8), A10
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	2
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(20)
		mvk	.l2	-1, B5
	||	stw	.d2t2	B14, *+B15(24)
		stw	.d2t1	A11, *+B15(16)
		call	.s2	(__c6xabi_ltd)
	||	stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	dmv	.s1	A5, A4, A11:A10
	||	mvk	.l2	-1, B4
	||	addkpc	.s2	.L660, B3, 0
		mvklh	.s2	65519, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L660:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L654
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L654 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	-1, B4
	||	mvk	.l2	-1, B5
		addkpc	.s2	.L661, B3, 0
		mvklh	.s2	32751, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L661:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L654:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(20)
		mvk	.l2	-1, B5
	||	stw	.d2t2	B14, *+B15(24)
		stw	.d2t1	A11, *+B15(16)
		call	.s2	(__c6xabi_ltd)
	||	stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	dmv	.s1	A5, A4, A11:A10
	||	mvk	.l2	-1, B4
	||	addkpc	.s2	.L668, B3, 0
		mvklh	.s2	65519, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L668:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L662
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L662 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	-1, B4
	||	mvk	.l2	-1, B5
		addkpc	.s2	.L669, B3, 0
		mvklh	.s2	32751, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L669:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L662:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(12)
		stw	.d2t2	B14, *+B15(16)
		call	.s2	(__c6xabi_fltid)
	||	stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.d1	A4, A10
	||	mv	.s1x	B4, A4
	||	addkpc	.s2	.L672, B3, 0
	;; call to (__c6xabi_fltid) occurs, with return value
		nop	4
.L672:
		ldw	.d2t2	*+B15(12), B3
	||	stdw	.d1t1	A5:A4, *A10
		ldw	.d2t2	*+B15(16), B14
		ldw	.d2t1	*+B15(8), A10
	||	addk	.s2	16, B15
		nop	2
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t2	B14, *+B15(24)
		call	.s2	(__c6xabi_unordf)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A12, *+B15(16)
	||	addkpc	.s2	.L688, B3, 0
		stdw	.d2t1	A11:A10, *+B15(8)
		mv	.d1	A4, A12
	||	mv	.s1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L688:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	mv	.s1	A12, A4
	[A0]	b	.s1	.L674
		nop	5
	;; condjump to .L674 occurs
		callp	.s2	(__c6xabi_addf), B3
		callp	.s2	(__c6xabi_eqf), B3
	||	mv	.l2x	A12, B4
		mv	.d1	A4, A1
	[A1]	b	.s1	.L674
		nop	5
	;; condjump to .L674 occurs
		and	.s1	1, A10, A0
	||	mvk	.d1	0, A11
	||	cmpgt	.l1	0, A10, A2
	[!A0]	b	.s1	.L676
	[A2]	mvklh	.s1	16128, A11
	[!A2]	mvklh	.s1	16384, A11
		nop	3
	;; condjump to .L676 occurs
.L677:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.d1	A12, A4
	||	mv	.l2x	A11, B4
		mv	.d1	A4, A12
.L676:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L674
		nop	5
	;; condjump to .L674 occurs
.L678:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A11, A4
		and	.d1	1, A10, A2
	||	mv	.s1	A4, A11
	[A2]	b	.s1	.L677
		nop	5
	;; condjump to .L677 occurs
		b	.s1	.L678
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L678 occurs
.L674:
		ldw	.d2t2	*+B15(20), B3
	||	mv	.d1	A12, A4
		lddw	.d2t1	*+B15(8), A11:A10
		ldw	.d2t1	*+B15(16), A12
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		dmv	.s1	A5, A4, A13:A12
	||	stw	.d2t2	B14, *+B15(28)
		call	.s2	(__c6xabi_unordd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A10, *+B15(8)
	||	addkpc	.s2	.L708, B3, 0
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t1	A14, *+B15(20)
		mv	.l2x	A13, B5
	||	mv	.l1x	B4, A10
	;; call to (__c6xabi_unordd) occurs, with return value
		mv	.l2x	A4, B4
.L708:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L694
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L694 occurs
		callp	.s2	(__c6xabi_addd), B3
		call	.s2	(__c6xabi_eqd)
	||	mv	.l2x	A12, B4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L710, B3, 0
	;; call to (__c6xabi_eqd) occurs, with return value
		nop	4
.L710:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L694
		nop	5
	;; condjump to .L694 occurs
		and	.s1	1, A10, A0
	||	mvk	.d1	0, A15
	||	cmpgt	.l1	0, A10, A2
	[!A0]	b	.s1	.L696
	||	mvk	.d1	0, A14
	[A2]	mvklh	.s1	16352, A15
	[!A2]	mvklh	.s1	16384, A15
		nop	3
	;; condjump to .L696 occurs
.L697:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A13, A12, A5:A4
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L711, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L711:
		dmv	.s1	A5, A4, A13:A12
.L696:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L694
		nop	5
	;; condjump to .L694 occurs
.L698:
		call	.s2	(__c6xabi_mpyd)
	||	mv	.l2x	A14, B4
	||	mv	.d1	A14, A4
	||	mv	.s1	A15, A5
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L712, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L712:
		and	.d1	1, A10, A2
	||	dmv	.s1	A5, A4, A15:A14
	[A2]	b	.s1	.L697
		nop	5
	;; condjump to .L697 occurs
		b	.s1	.L698
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L698 occurs
.L694:
		ldw	.d2t2	*+B15(24), B3
	||	dmv	.s1	A13, A12, A5:A4
		ldw	.d2t1	*+B15(8), A10
		ldw	.d2t1	*+B15(12), A12
		ldw	.d2t1	*+B15(16), A13
		ldw	.d2t1	*+B15(20), A14
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(28), B14
		ldw	.d2t1	*+B15(32), A15
	||	addk	.s2	32, B15
		nop	4
	;; return occurs
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		dmv	.s1	A5, A4, A13:A12
	||	stw	.d2t2	B14, *+B15(28)
		call	.s2	(__c6xabi_unordd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A10, *+B15(8)
	||	addkpc	.s2	.L728, B3, 0
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t1	A14, *+B15(20)
		mv	.l2x	A13, B5
	||	mv	.l1x	B4, A10
	;; call to (__c6xabi_unordd) occurs, with return value
		mv	.l2x	A4, B4
.L728:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L714
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L714 occurs
		callp	.s2	(__c6xabi_addd), B3
		call	.s2	(__c6xabi_eqd)
	||	mv	.l2x	A4, B4
		mv	.l2x	A5, B5
	||	dmv	.s1	A13, A12, A5:A4
	||	addkpc	.s2	.L730, B3, 0
	;; call to (__c6xabi_eqd) occurs, with return value
		nop	4
.L730:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L714
		nop	5
	;; condjump to .L714 occurs
		and	.s1	1, A10, A0
	||	mvk	.d1	0, A15
	||	cmpgt	.l1	0, A10, A2
	[!A0]	b	.s1	.L716
	||	mvk	.d1	0, A14
	[A2]	mvklh	.s1	16352, A15
	[!A2]	mvklh	.s1	16384, A15
		nop	3
	;; condjump to .L716 occurs
.L717:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A13, A12, A5:A4
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L731, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L731:
		dmv	.s1	A5, A4, A13:A12
.L716:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L714
		nop	5
	;; condjump to .L714 occurs
.L718:
		call	.s2	(__c6xabi_mpyd)
	||	mv	.l2x	A14, B4
	||	mv	.d1	A14, A4
	||	mv	.s1	A15, A5
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L732, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L732:
		and	.d1	1, A10, A2
	||	dmv	.s1	A5, A4, A15:A14
	[A2]	b	.s1	.L717
		nop	5
	;; condjump to .L717 occurs
		b	.s1	.L718
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L718 occurs
.L714:
		ldw	.d2t2	*+B15(24), B3
	||	dmv	.s1	A13, A12, A5:A4
		ldw	.d2t1	*+B15(8), A10
		ldw	.d2t1	*+B15(12), A12
		ldw	.d2t1	*+B15(16), A13
		ldw	.d2t1	*+B15(20), A14
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(28), B14
		ldw	.d2t1	*+B15(32), A15
	||	addk	.s2	32, B15
		nop	4
	;; return occurs
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
		mv	.d1	A6, A1
	||	mv	.s1	A4, A3
	[!A1]	b	.s1	.L734
		nop	5
	;; condjump to .L734 occurs
.L735:
		ldb	.d1t1	*A3++[1], A6
	||	add	.s1	-1, A1, A1
		ldb	.d2t1	*B4++[1], A5
	[A1]	b	.s1	.L735
		nop	3
		xor	.d1	A5, A6, A7
		stb	.d1t1	A7, *-A3(1)
	;; condjump to .L735 occurs
.L734:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
		ldb	.d1t1	*A4, A0
	||	mv	.l1	A6, A1
	||	mv	.s1	A4, A3
		nop	4
	[!A0]	b	.s1	.L743
		nop	5
	;; condjump to .L743 occurs
.L744:
		ldb	.d1t1	*++A3[1], A2
		nop	4
	[A2]	b	.s1	.L744
		nop	5
	;; condjump to .L744 occurs
.L743:
	[!A1]	b	.s1	.L745
	||[A1]	sub	.d2	B4, 1, B4
		nop	5
	;; condjump to .L745 occurs
.L746:
		ldb	.d2t1	*++B4[1], A5
	||	sub	.d1	A1, 1, A1
		nop	4
		ext	.s1	A5, 24, 24, A0
	||	stb	.d1t1	A5, *A3++[1]
	[!A0]	b	.s1	.L748
		nop	5
	;; condjump to .L748 occurs
	[A1]	b	.s1	.L746
		nop	5
	;; condjump to .L746 occurs
.L745:
		mvk	.d1	0, A6
		stb	.d1t1	A6, *A3
.L748:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
		mv	.s1x	B4, A1
	||	mv	.l1	A4, A5
	||	mvk	.d1	0, A4
	[!A1]	b	.s1	.L757
		nop	5
	;; condjump to .L757 occurs
.L758:
		add	.d1	A5, A4, A3
	||	sub	.d2	B4, 1, B4
		ldb	.d1t1	*A3, A1
		nop	4
	[A1]	b	.s1	.L760
		nop	5
	;; condjump to .L760 occurs
.L757:
		ret	.s2	B3
		nop	5
	;; return occurs
.L760:
		mv	.s1x	B4, A1
	||	add	.d1	A4, 1, A4
	[A1]	b	.s1	.L758
		nop	5
	;; condjump to .L758 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
		ldb	.d1t1	*A4, A3
		nop	4
		ext	.s1	A3, 24, 24, A0
	[!A0]	b	.s1	.L771
	||[A0]	sub	.d2	B4, 1, B4
		shl	.s1	A3, 24, A8
		nop	4
	;; condjump to .L771 occurs
.L767:
		mv	.l1x	B4, A6
	||	shr	.s1	A8, 24, A5
.L770:
		ldb	.d1t1	*++A6[1], A1
		nop	4
		cmpeq	.l1	A5, A1, A0
	||[!A1]	b	.s1	.L776
		nop	5
	;; condjump to .L776 occurs
	[!A0]	b	.s1	.L770
		nop	5
	;; condjump to .L770 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L776:
		ldb	.d1t1	*++A4[1], A7
		nop	4
		ext	.s1	A7, 24, 24, A2
	[A2]	b	.s1	.L767
		shl	.s1	A7, 24, A8
		nop	4
	;; condjump to .L767 occurs
.L771:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
		mv	.s1	A4, A3
	||	mvk	.d1	0, A4
.L779:
		mv	.s1	A3, A6
	||	ldb	.d1t1	*A3++[1], A7
		nop	4
		shl	.s1	A7, 24, A5
		mv	.d1	A5, A1
	||	ext	.s1	A7, 24, 24, A8
	[A1]	b	.s1	.L779
	||	cmpeq	.l1x	A8, B4, A0
	[A0]	mv	.d1	A6, A4
		nop	4
	;; condjump to .L779 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
		ldb	.d2t1	*B4, A3
	||	mv	.d1	A4, A5
	||	mv	.s1x	B4, A4
		nop	4
		ext	.s1	A3, 24, 24, A0
	[!A0]	b	.s1	.L793
		shl	.s1	A3, 24, A16
		nop	4
	;; condjump to .L793 occurs
.L785:
		ldb	.d1t1	*++A4[1], A1
		nop	4
	[A1]	b	.s1	.L785
		nop	5
	;; condjump to .L785 occurs
		mv	.l1x	B4, A6
		sub	.d1	A4, A6, A2
	[!A2]	b	.s1	.L793
	||[A2]	add	.d1x	A2, B4, A17
	[A2]	shr	.s1	A16, 24, A16
		nop	4
	;; condjump to .L793 occurs
.L791:
		ldb	.d1t1	*A5, A8
	||	mv	.l1	A5, A4
	||	mv	.s1	A5, A7
		add	.d1	A5, 1, A5
		nop	3
		ext	.s1	A8, 24, 24, A9
		cmpeq	.l1	A16, A9, A1
	||	mv	.s1	A9, A0
	[A1]	b	.s1	.L790
		nop	5
	;; condjump to .L790 occurs
	[A0]	b	.s1	.L791
		nop	5
	;; condjump to .L791 occurs
		mvk	.d1	0, A4
.L783:
		ret	.s2	B3
		nop	5
	;; return occurs
.L790:
		mv	.l1x	B4, A21
	||	extu	.s1	A8, 24, 24, A28
.L787:
		ldb	.d1t1	*A21, A18
	||	mv	.l1	A21, A19
	||	add	.s1	1, A21, A21
		cmpeq	.l1	A21, A17, A24
		cmpeq	.l1	0, A24, A26
		nop	2
		extu	.s1	A18, 24, 24, A20
		cmpeq	.l1	0, A20, A23
		cmpeq	.l1	A28, A20, A22
		cmpeq	.l1	0, A23, A25
		and	.d1	A22, A25, A27
		and	.d1	A27, A26, A2
	[!A2]	b	.s1	.L788
	||[A2]	ldbu	.d1t1	*++A7[1], A28
		nop	4
		mv	.d1	A28, A1
	;; condjump to .L788 occurs
	[A1]	b	.s1	.L787
		nop	5
	;; condjump to .L787 occurs
		mv	.d1	A21, A19
.L788:
		ldbu	.d1t1	*A19, A29
	||	add	.s1	1, A4, A5
		nop	4
		cmpeq	.l1	A28, A29, A0
	[A0]	b	.s1	.L783
	[!A0]	b	.s1	.L791
		nop	5
	;; condjump to .L783 occurs
	;; jump to .L791 occurs
.L793:
		ret	.s2	B3
	||	mv	.d1	A5, A4
		nop	5
	;; return occurs
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t1	A13, *+B15(24)
		call	.s2	(__c6xabi_ltd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.l1x	B5, A13
	||	mvk	.l2	0, B5
		stw	.d2t1	A12, *+B15(20)
	||	addkpc	.s2	.L812, B3, 0
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		dmv	.s1	A5, A4, A11:A10
	||	mv	.l1x	B4, A12
	||	mvk	.d2	0, B4
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	1
.L812:
		mv	.d1	A4, A0
	||	mvk	.d2	0, B4
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.l2	0, B5
	[A0]	b	.s1	.L811
		nop	5
	;; condjump to .L811 occurs
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	||	mvk	.d2	0, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.l2	0, B5
	[!A1]	b	.s1	.L803
		nop	5
	;; condjump to .L803 occurs
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A2
	[A2]	b	.s1	.L802
		nop	5
	;; condjump to .L802 occurs
.L803:
		ldw	.d2t2	*+B15(28), B3
	||	dmv	.s1	A11, A10, A5:A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
.L811:
		callp	.s2	(__c6xabi_gtd), B3
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L803
		nop	5
	;; condjump to .L803 occurs
.L802:
		ldw	.d2t2	*+B15(28), B3
	||	mvk	.d1	0, A3
	||	mv	.s1	A10, A0
		mvklh	.s1	32768, A3
	||	ldw	.d2t1	*+B15(20), A12
		xor	.d1	A3, A11, A1
	||	ldw	.d2t1	*+B15(24), A13
		dmv	.s1	A1, A0, A11:A10
	||	ldw	.d2t2	*+B15(32), B14
		dmv	.s1	A11, A10, A5:A4
	||	ldw	.d2t1	*+B15(12), A10
		ret	.s2	B3
	||	ldw	.d2t1	*+B15(16), A11
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
		cmpgtu	.l2	B6, B4, B5
	||	sub	.s2	B4, B6, B4
	||	mv	.d1	A4, A7
	||	mv	.s1x	B6, A0
	[!A0]	b	.s1	.L816
	||	add	.d1x	A7, B6, A9
	||	cmpeq	.l2	1, B6, B0
		mv	.l1x	B4, A16
		add	.d1	A7, A16, A20
	||	mv	.s1x	B5, A1
		cmpltu	.l1	A20, A7, A2
		nop	2
	;; condjump to .L816 occurs
	[A1]	b	.s1	.L824
		nop	5
	;; condjump to .L824 occurs
	[A2]	b	.s1	.L824
	||[!A2]	ldb	.d1t1	*A6, A17
		nop	5
	;; condjump to .L824 occurs
.L821:
		ldb	.d1t1	*A7, A3
	||	mv	.l1	A7, A4
	||	add	.s1	1, A7, A7
		nop	4
		cmpeq	.l1	A17, A3, A0
	[A0]	b	.s1	.L833
		nop	5
	;; condjump to .L833 occurs
.L818:
		cmpgtu	.l1	A7, A20, A1
	||	add	.s1	1, A9, A9
	[!A1]	b	.s1	.L821
		nop	5
	;; condjump to .L821 occurs
.L824:
		mvk	.d1	0, A4
.L816:
		ret	.s2	B3
		nop	5
	;; return occurs
.L833:
	[B0]	b	.s1	.L816
	||	sub	.d1	A7, 1, A5
	||	mv	.l1	A6, A19
		sub	.d1	A9, A7, A1
		nop	4
	;; condjump to .L816 occurs
.L819:
		ldbu	.d1t1	*++A5[1], A18
	||	add	.s1	-1, A1, A1
		ldbu	.d1t1	*++A19[1], A8
		nop	4
		cmpeq	.l1	A8, A18, A0
	[!A0]	b	.s1	.L818
		nop	5
	;; condjump to .L818 occurs
	[A1]	b	.s1	.L819
		nop	5
	;; condjump to .L819 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
		sub	.d2	B15, 24, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(20)
	[!A0]	b	.s1	.L835
	||	stw	.d2t2	B14, *+B15(24)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A11
	||	mv	.s1	A6, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	2
	;; condjump to .L835 occurs
		callp	.s2	(memmove), B3
		nop	1
.L835:
		ldw	.d2t2	*+B15(20), B3
	||	add	.d1	A11, A10, A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, @function
frexp:
		subah	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t2	B14, *+B15(44)
		stw	.d2t2	B12, *+B15(40)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mvk	.l2	0, B5
		call	.s2	(__c6xabi_ltd)
	||	stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
	||	addkpc	.s2	.L871, B3, 0
		stw	.d2t1	A15, *+B15(48)
		dmv	.s1	A5, A4, A11:A10
	||	stdw	.d2t2	B11:B10, *+B15(32)
		stw	.d2t1	A14, *+B15(24)
	;; call to (__c6xabi_ltd) occurs, with return value
		mv	.l1x	B4, A13
	||	mvk	.d2	0, B4
.L871:
		mv	.d1	A4, A0
	||	mvk	.d2	0, B5
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.l2	0, B4
	[A0]	b	.s1	.L869
	||	mvklh	.s2	16368, B5
		nop	5
	;; condjump to .L869 occurs
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[!A1]	b	.s1	.L870
	||[A1]	mvk	.d2	0, B12
		nop	5
	;; condjump to .L870 occurs
.L845:
		mvk	.d2	0, B11
	||	mvk	.d1	0, A15
	||	mvk	.l1	0, A12
	||	mvk	.l2	0, B10
		mvklh	.s2	16352, B11
	||	mvk	.d1	0, A14
	||	mvklh	.s1	16368, A15
.L852:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A11, A10, A5:A4
	||	add	.d1	A12, 1, A12
		addkpc	.s2	.L873, B3, 0
		dmv	.s2	B11, B10, B5:B4
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	3
.L873:
		call	.s2	(__c6xabi_ged)
	||	dmv	.s1	A5, A4, A11:A10
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L874, B3, 0
	;; call to (__c6xabi_ged) occurs, with return value
		nop	4
.L874:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L852
		nop	5
	;; condjump to .L852 occurs
.L853:
		mv	.s1x	B12, A1
	||	stw	.d1t1	A12, *A13
	[!A1]	b	.s1	.L842
	[!A1]	dmv	.s1	A11, A10, A5:A4
	[A1]	mvk	.d1	0, A5
	||[A1]	mv	.s1	A10, A4
	[A1]	mvklh	.s1	32768, A5
	[A1]	xor	.d1	A5, A11, A5
		nop	1
	;; condjump to .L842 occurs
.L842:
		ldw	.d2t2	*+B15(28), B3
		lddw	.d2t1	*+B15(8), A11:A10
		lddw	.d2t1	*+B15(16), A13:A12
		ldw	.d2t1	*+B15(24), A14
		lddw	.d2t2	*+B15(32), B11:B10
		ldw	.d2t2	*+B15(40), B12
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(44), B14
		ldw	.d2t1	*+B15(48), A15
	||	addk	.s2	48, B15
		nop	4
	;; return occurs
.L870:
		call	.s2	(__c6xabi_ltd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		addkpc	.s2	.L875, B3, 0
		mvklh	.s2	16352, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L875:
		mv	.d1	A4, A2
	[!A2]	b	.s1	.L848
		nop	5
	;; condjump to .L848 occurs
		callp	.s2	(__c6xabi_eqd), B3
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L865
		nop	5
	;; condjump to .L865 occurs
.L848:
		ldw	.d2t2	*+B15(28), B3
	||	mvk	.d1	0, A3
	||	dmv	.s1	A11, A10, A5:A4
		lddw	.d2t1	*+B15(8), A11:A10
		ldw	.d2t1	*+B15(24), A14
		lddw	.d2t2	*+B15(32), B11:B10
	||	stw	.d1t1	A3, *A13
		ldw	.d2t2	*+B15(40), B12
		lddw	.d2t1	*+B15(16), A13:A12
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(44), B14
		ldw	.d2t1	*+B15(48), A15
	||	addk	.s2	48, B15
		nop	4
	;; return occurs
.L869:
		call	.s2	(__c6xabi_led)
	||	mvk	.d2	0, B4
	||	mvk	.d1	0, A6
	||	mvk	.l2	0, B5
	||	mv	.s1	A10, A14
		mvklh	.s1	32768, A6
	||	addkpc	.s2	.L877, B3, 0
		xor	.d1	A6, A11, A15
	||	mvklh	.s2	49136, B5
	;; call to (__c6xabi_led) occurs, with return value
		nop	3
.L877:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L845
	||[A1]	mvk	.d2	1, B12
	[A1]	dmv	.s1	A15, A14, A11:A10
		nop	4
	;; condjump to .L845 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		addkpc	.s2	.L878, B3, 0
		mvklh	.s2	49120, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L878:
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L842
	||[!A0]	stw	.d1t1	A0, *A13
	[!A0]	dmv	.s1	A11, A10, A5:A4
		nop	4
	;; condjump to .L842 occurs
		dmv	.s1	A15, A14, A11:A10
	||	mvk	.d1	0, A15
	||	mvk	.d2	1, B12
	||	mvk	.l1	0, A12
		mvk	.d1	0, A14
	||	mvklh	.s1	16352, A15
.L854:
		call	.s2	(__c6xabi_addd)
	||	mv	.l2x	A10, B4
	||	mv	.d1	A10, A4
	||	mv	.l1	A11, A5
	||	add	.s1	-1, A12, A12
		mv	.l2x	A11, B5
	||	addkpc	.s2	.L879, B3, 0
	;; call to (__c6xabi_addd) occurs, with return value
		nop	4
.L879:
		call	.s2	(__c6xabi_ltd)
	||	dmv	.s1	A5, A4, A11:A10
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L880, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L880:
		mv	.d1	A4, A2
	||	mv	.l2x	A10, B4
	[!A2]	b	.s1	.L853
	||	mv	.l2x	A11, B5
	||[A2]	mv	.d1	A10, A4
	||[A2]	mv	.l1	A11, A5
	[A2]	sub	.d1	A12, 1, A12
		nop	4
	;; condjump to .L853 occurs
		callp	.s2	(__c6xabi_addd), B3
		call	.s2	(__c6xabi_ltd)
	||	dmv	.s1	A5, A4, A11:A10
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L882, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L882:
		mv	.d1	A4, A2
	[A2]	b	.s1	.L854
		nop	5
	;; condjump to .L854 occurs
		b	.s1	.L853
		nop	5
	;; jump to .L853 occurs
.L865:
		b	.s1	.L854
	||	mvk	.d2	0, B12
	||	mvk	.d1	0, A12
		dmv	.s1	A11, A10, A15:A14
		dmv	.s1	A15, A14, A11:A10
	||	mvk	.d1	0, A14
	||	mvk	.l1	0, A15
		mvklh	.s1	16352, A15
		nop	2
	;; jump to .L854 occurs
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
		or	.d1	A5, A4, A0
	||	mv	.l1	A4, A23
	||	mv	.s1	A5, A9
	[!A0]	b	.s1	.L883
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; condjump to .L883 occurs
.L885:
		and	.d1	1, A23, A3
	||	shl	.s1	A9, 31, A16
	||	addu	.l2	B4, B4, B7:B6
		neg	.l1	A3, A18
	||	neg	.s1	A3, A21
		and	.d1x	A18, B4, A20
	||	shru	.s1	A23, 1, A8
	||	mv	.d2	B6, B4
		addu	.l1	A20, A4, A1:A0
	||	or	.d1	A8, A16, A23
	||	and	.s1x	A21, B5, A4
		shru	.s1	A9, 1, A9
	||	add	.d1	A1, A4, A22
	||	mv	.l1x	B7, A7
		or	.d1	A9, A23, A1
	||	add	.l1x	A7, B5, A17
	||	add	.s1	A22, A5, A5
	[A1]	b	.s1	.L885
	||	mv	.d1	A0, A4
	||	add	.l1x	A17, B5, A19
		nop	1
		mv	.l2x	A19, B5
		nop	3
	;; condjump to .L885 occurs
.L883:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
		cmpgtu	.l1x	A4, B4, A0
	||	mv	.s1	A4, A7
	[!A0]	b	.s1	.L905
	||	mvk	.d1	1, A0
		nop	5
	;; condjump to .L905 occurs
.L891:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L892
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A0, 1, A0
		mv	.s1x	B4, A3
	||	cmpeq	.l1	0, A0, A5
		cmpltu	.l1	A3, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L892 occurs
	[A1]	b	.s1	.L891
		nop	5
	;; condjump to .L891 occurs
	[!A0]	b	.s1	.L895
	||[!A0]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L895 occurs
.L892:
		mvk	.d1	0, A4
.L897:
		cmpltu	.l1x	A7, B4, A16
		mv	.d1	A16, A2
	[!A2]	or	.d1	A0, A4, A4
	||	shru	.s1	A0, 1, A0
	||[!A2]	mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
	[A0]	b	.s1	.L897
	||[!A2]	sub	.d1	A7, A16, A7
		nop	5
	;; condjump to .L897 occurs
.L895:
		ret	.s2	B3
	||	mv	.d1	A6, A1
	[A1]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L905:
		b	.s1	.L897
	||	mvk	.d1	1, A0
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L897 occurs
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
		ext	.s1	A4, 24, 24, A3
		shr	.s1	A3, 7, A6
		shl	.s1	A6, 24, A5
	||	xor	.d1	A4, A6, A7
		shr	.s1	A5, 24, A8
	||	ret	.s2	B3
		cmpeq	.l1	A8, A3, A1
	[!A1]	ext	.s1	A7, 24, 24, A4
	||[A1]	mvk	.d1	7, A4
	[!A1]	shl	.s1	A4, 8, A4
	[!A1]	lmbd	.l1	1, A4, A4
	[!A1]	sub	.d1	A4, 1, A4
	;; return occurs
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
		shr	.s1	A5, 31, A3
		cmpeq	.l1	A3, A4, A0
	||	xor	.d1	A3, A5, A6
	||	xor	.s1	A3, A4, A4
	[A0]	cmpeq	.l1	A3, A5, A0
	||	mv	.s1	A6, A1
	[A0]	b	.s1	.L910
	[A0]	mvk	.s1	63, A4
		nop	4
	;; condjump to .L910 occurs
	[!A1]	lmbd	.l1	1, A4, A4
	[!A1]	addk	.s1	32, A4
	||[A1]	lmbd	.l1	1, A6, A4
		sub	.d1	A4, 1, A4
.L910:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
		mv	.l1	A4, A0
	||	mv	.s1	A4, A3
	||	mvk	.d1	0, A4
	[!A0]	b	.s1	.L917
		nop	5
	;; condjump to .L917 occurs
.L919:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L919
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L919 occurs
.L917:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
		mv	.l1x	B4, A3
	||	shru	.s1	A6, 3, A0
	||	and	.d1	-8, A6, A7
		cmpgtu	.l1	A3, A4, A1
	[A1]	b	.s1	.L925
		nop	5
	;; condjump to .L925 occurs
		add	.d1x	A6, B4, A8
		cmpgtu	.l1	A4, A8, A1
	[!A1]	b	.s1	.L940
		nop	5
	;; condjump to .L940 occurs
.L925:
	[!A0]	b	.s1	.L928
	||	add	.l1x	-8, B4, A16
	||	sub	.d1	A4, 8, A18
		shl	.s1	A0, 3, A9
		sub	.d1	A9, 8, A17
		shru	.s1	A17, 3, A19
		add	.d1	A19, 1, A1
		nop	1
	;; condjump to .L928 occurs
.L929:
		add	.s1	-1, A1, A1
	||	lddw	.d1t1	*++A16[1], A29:A28
	[A1]	b	.s1	.L929
		nop	3
		stdw	.d1t1	A29:A28, *++A18[1]
		nop	1
	;; condjump to .L929 occurs
.L928:
		cmpltu	.l1	A7, A6, A2
	||	sub	.d1	A7, 1, A21
	||	add	.s1x	-1, B4, A22
	[!A2]	b	.s1	.L924
	||	add	.d1	A22, A6, A23
	||	add	.l1	A4, A21, A24
		add	.d2x	B4, A21, B4
		nop	1
		mv	.l1x	B4, A25
		sub	.d1	A23, A25, A0
		nop	1
	;; condjump to .L924 occurs
.L930:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*++B4[1], A27
	[A0]	b	.s1	.L930
		nop	3
		stb	.d1t1	A27, *++A24[1]
		nop	1
	;; condjump to .L930 occurs
.L924:
		ret	.s2	B3
		nop	5
	;; return occurs
.L940:
		mv	.d1	A6, A2
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A8, A3, A0
	[!A2]	b	.s1	.L924
		nop	5
	;; condjump to .L924 occurs
.L931:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A8[1], A27
	[A0]	b	.s1	.L931
		nop	3
		stb	.d1t1	A27, *--A4[1]
		nop	1
	;; condjump to .L931 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
		mv	.l1x	B4, A3
	||	shru	.s1	A6, 1, A0
		cmpgtu	.l1	A3, A4, A1
	[A1]	b	.s1	.L942
		nop	5
	;; condjump to .L942 occurs
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[!A1]	b	.s1	.L958
		nop	5
	;; condjump to .L958 occurs
.L942:
	[!A0]	b	.s1	.L945
	||	add	.l1x	-2, B4, A9
	||	sub	.d1	A4, 2, A17
		shl	.s1	A0, 1, A8
		sub	.d1	A8, 2, A16
		shru	.s1	A16, 1, A18
		add	.d1	A18, 1, A1
		nop	1
	;; condjump to .L945 occurs
.L946:
		add	.s1	-1, A1, A1
	||	ldh	.d1t1	*++A9[1], A24
	[A1]	b	.s1	.L946
		nop	3
		sth	.d1t1	A24, *++A17[1]
		nop	1
	;; condjump to .L946 occurs
.L945:
		and	.d1	1, A6, A2
	[!A2]	b	.s1	.L941
		nop	5
	;; condjump to .L941 occurs
		sub	.d1	A6, 1, A20
		add	.d1x	A20, B4, A21
	||	add	.s1	A4, A20, A22
		ldb	.d1t1	*A21, A23
		nop	4
		stb	.d1t1	A23, *A22
.L941:
		ret	.s2	B3
		nop	5
	;; return occurs
.L958:
		mv	.d1	A6, A2
	||	sub	.l1	A5, A3, A0
	||	add	.s1	A4, A6, A6
	[!A2]	b	.s1	.L941
		nop	5
	;; condjump to .L941 occurs
.L947:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A5[1], A24
	[A0]	b	.s1	.L947
		nop	3
		stb	.d1t1	A24, *--A6[1]
		nop	1
	;; condjump to .L947 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
		mv	.l1x	B4, A3
	||	shru	.s1	A6, 2, A0
	||	and	.d1	-4, A6, A8
		cmpgtu	.l1	A3, A4, A1
	[A1]	b	.s1	.L960
		nop	5
	;; condjump to .L960 occurs
		add	.d1x	A6, B4, A7
		cmpgtu	.l1	A4, A7, A1
	[!A1]	b	.s1	.L975
		nop	5
	;; condjump to .L975 occurs
.L960:
	[!A0]	b	.s1	.L963
	||	add	.l1x	-4, B4, A16
	||	sub	.d1	A4, 4, A18
		shl	.s1	A0, 2, A9
		sub	.d1	A9, 4, A17
		shru	.s1	A17, 2, A19
		add	.d1	A19, 1, A1
		nop	1
	;; condjump to .L963 occurs
.L964:
		add	.s1	-1, A1, A1
	||	ldw	.d1t1	*++A16[1], A27
	[A1]	b	.s1	.L964
		nop	3
		stw	.d1t1	A27, *++A18[1]
		nop	1
	;; condjump to .L964 occurs
.L963:
		cmpltu	.l1	A8, A6, A2
	||	sub	.d1	A8, 1, A21
	||	add	.s1x	-1, B4, A22
	[!A2]	b	.s1	.L959
	||	add	.d1	A22, A6, A23
	||	add	.l1	A4, A21, A24
		add	.d2x	B4, A21, B4
		nop	1
		mv	.l1x	B4, A25
		sub	.d1	A23, A25, A0
		nop	1
	;; condjump to .L959 occurs
.L965:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*++B4[1], A27
	[A0]	b	.s1	.L965
		nop	3
		stb	.d1t1	A27, *++A24[1]
		nop	1
	;; condjump to .L965 occurs
.L959:
		ret	.s2	B3
		nop	5
	;; return occurs
.L975:
		mv	.d1	A6, A2
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A7, A3, A0
	[!A2]	b	.s1	.L959
		nop	5
	;; condjump to .L959 occurs
.L966:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A7[1], A27
	[A0]	b	.s1	.L966
		nop	3
		stb	.d1t1	A27, *--A4[1]
		nop	1
	;; condjump to .L966 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B3, *+B15(8)
		call	.s2	__c6xabi_remi
		addkpc	.s2	.L978, B3, 0
		nop	4
.L978:
		ldw	.d2t2	*+B15(8), B3
	||	add	.s2	8, B15, B15
		nop	4
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.type	__uitod, @function
__uitod:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(12)
		call	.s2	(__c6xabi_fltud)
	||	stw	.d2t2	B14, *+B15(16)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	addkpc	.s2	.L981, B3, 0
	;; call to (__c6xabi_fltud) occurs, with return value
		nop	4
.L981:
		ldw	.d2t2	*+B15(12), B3
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	3
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.type	__uitof, @function
__uitof:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(12)
		call	.s2	(__c6xabi_fltuf)
	||	stw	.d2t2	B14, *+B15(16)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	addkpc	.s2	.L984, B3, 0
	;; call to (__c6xabi_fltuf) occurs, with return value
		nop	4
.L984:
		ldw	.d2t2	*+B15(12), B3
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	3
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(12)
		call	.s2	(__c6xabi_fltulld)
	||	stw	.d2t2	B14, *+B15(16)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	addkpc	.s2	.L987, B3, 0
	;; call to (__c6xabi_fltulld) occurs, with return value
		nop	4
.L987:
		ldw	.d2t2	*+B15(12), B3
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	3
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(12)
		call	.s2	(__c6xabi_fltullf)
	||	stw	.d2t2	B14, *+B15(16)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	addkpc	.s2	.L990, B3, 0
	;; call to (__c6xabi_fltullf) occurs, with return value
		nop	4
.L990:
		ldw	.d2t2	*+B15(12), B3
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	3
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.type	__umodi, @function
__umodi:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B3, *+B15(8)
		call	.s2	__c6xabi_remu
		addkpc	.s2	.L993, B3, 0
		nop	4
.L993:
		ldw	.d2t2	*+B15(8), B3
	||	add	.s2	8, B15, B15
		nop	4
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
		mvk	.d1	0, A3
	||	extu	.s1	A4, 16, 16, A4
		mvk	.s1	16, A1
.L996:
		sub	.s1	15, A3, A5
	||	sub	.d1	A1, 1, A1
		shr	.s1	A4, A5, A6
		and	.d1	1, A6, A0
	[A0]	b	.s1	.L994
	||[!A0]	add	.d1	A3, 1, A3
		nop	5
	;; condjump to .L994 occurs
	[A1]	b	.s1	.L996
		nop	5
	;; condjump to .L996 occurs
.L994:
		ret	.s2	B3
	||	mv	.d1	A3, A4
		nop	5
	;; return occurs
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
		mvk	.d1	0, A3
	||	extu	.s1	A4, 16, 16, A4
		mvk	.s1	16, A1
.L1002:
		shr	.s1	A4, A3, A5
	||	sub	.d1	A1, 1, A1
		and	.d1	1, A5, A0
	[A0]	b	.s1	.L1000
	||[!A0]	add	.d1	A3, 1, A3
		nop	5
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1002
		nop	5
	;; condjump to .L1002 occurs
.L1000:
		ret	.s2	B3
	||	mv	.d1	A3, A4
		nop	5
	;; return occurs
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(12)
		mvk	.l2	0, B4
	||	stw	.d2t2	B14, *+B15(16)
		call	.s2	(__c6xabi_gef)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A10, *+B15(8)
	||	addkpc	.s2	.L1015, B3, 0
		mvklh	.s2	18176, B4
	||	mv	.d1	A4, A10
	;; call to (__c6xabi_gef) occurs, with return value
		nop	3
.L1015:
		mv	.d1	A4, A0
	||	mv	.s1	A10, A4
	[A0]	b	.s1	.L1014
		nop	5
	;; condjump to .L1014 occurs
		callp	.s2	(__c6xabi_fixfi), B3
		ldw	.d2t2	*+B15(12), B3
		ldw	.d2t1	*+B15(8), A10
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	2
		ret	.s2	B3
		nop	5
	;; return occurs
.L1014:
		call	.s2	(__c6xabi_subf)
	||	mvk	.l2	0, B4
		addkpc	.s2	.L1017, B3, 0
		mvklh	.s2	18176, B4
	;; call to (__c6xabi_subf) occurs, with return value
		nop	3
.L1017:
		callp	.s2	(__c6xabi_fixfi), B3
		ldw	.d2t2	*+B15(12), B3
	||	mvk	.s1	-32768, A3
		ldw	.d2t1	*+B15(8), A10
	||	mvklh	.s1	0, A3
		ldw	.d2t2	*+B15(16), B14
	||	add	.d1	A4, A3, A4
	||	addk	.s2	16, B15
		nop	2
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
		mvk	.s1	16, A1
	||	mvk	.d1	0, A5
	||	mvk	.l1	0, A3
		extu	.s1	A4, 16, 16, A4
		mvc	.s2x	A1, ILC
		nop	3
		sploop	2
.L1020:
		shr	.s1	A4, A3, A6
	||	add	.l1	1, A3, A3
		and	.d1	1, A6, A7
		spkernel	1, 0
	||	add	.d1	A5, A7, A5
		ret	.s2	B3
	||	and	.d1	1, A5, A4
		nop	5
	;; return occurs
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
		mvk	.s1	16, A1
	||	mvk	.d1	0, A5
	||	mvk	.l1	0, A3
		extu	.s1	A4, 16, 16, A4
		mvc	.s2x	A1, ILC
		nop	3
		sploop	2
.L1025:
		shr	.s1	A4, A3, A6
	||	add	.l1	1, A3, A3
		and	.d1	1, A6, A7
		spkernel	1, 0
	||	add	.d1	A5, A7, A5
		ret	.s2	B3
	||	mv	.d1	A5, A4
		nop	5
	;; return occurs
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
		mv	.l1	A4, A0
	||	mv	.s1	A4, A3
	||	mvk	.d1	0, A4
	[!A0]	b	.s1	.L1029
		nop	5
	;; condjump to .L1029 occurs
.L1031:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L1031
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L1031 occurs
.L1029:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
		mv	.d1	A4, A0
	||	mv	.l1x	B4, A1
	||	mv	.s1	A4, A3
	[!A0]	b	.s1	.L1036
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1036 occurs
	[!A1]	b	.s1	.L1036
		nop	5
	;; condjump to .L1036 occurs
.L1038:
		and	.d1x	1, B4, A5
	||	shru	.s2	B4, 1, B4
		neg	.l1	A5, A6
		mv	.l1x	B4, A2
	||	and	.d1	A3, A6, A7
	||	shl	.s1	A3, 1, A3
	[A2]	b	.s1	.L1038
	||	add	.d1	A4, A7, A4
		nop	5
	;; condjump to .L1038 occurs
.L1036:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
		mv	.s1x	B4, A3
	||	mv	.d1	A4, A7
		cmpltu	.l1	A3, A4, A0
	[!A0]	b	.s1	.L1059
	||	mvk	.d1	1, A0
		nop	5
	;; condjump to .L1059 occurs
.L1045:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1046
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A0, 1, A0
		mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A0, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1046 occurs
	[A1]	b	.s1	.L1045
		nop	5
	;; condjump to .L1045 occurs
	[!A0]	b	.s1	.L1049
	||[!A0]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1049 occurs
.L1046:
		mvk	.d1	0, A4
.L1051:
		cmpltu	.l1x	A7, B4, A16
		mv	.d1	A16, A2
	[!A2]	or	.d1	A0, A4, A4
	||	shru	.s1	A0, 1, A0
	||[!A2]	mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
	[A0]	b	.s1	.L1051
	||[!A2]	sub	.d1	A7, A16, A7
		nop	5
	;; condjump to .L1051 occurs
.L1049:
		ret	.s2	B3
	||	mv	.d1	A6, A1
	[A1]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1059:
		b	.s1	.L1051
	||	mvk	.d1	1, A0
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1051 occurs
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t1	A11, *+B15(16)
		call	.s2	(__c6xabi_ltf)
	||	stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.d1	A4, A10
	||	mv	.s1x	B4, A11
	||	addkpc	.s2	.L1066, B3, 0
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	4
.L1066:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	[A0]	b	.s1	.L1060
	||[A0]	mvk	.d1	-1, A4
	[!A0]	mv	.d1	A10, A4
		nop	4
	;; condjump to .L1060 occurs
		callp	.s2	(__c6xabi_gtf), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L1060:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		call	.s2	(__c6xabi_ltd)
	||	stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	dmv	.s1	A5, A4, A11:A10
	||	mv	.l1x	B4, A12
	||	addkpc	.s2	.L1074, B3, 0
		mv	.l1x	B5, A13
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L1074:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L1068
	||[A0]	mvk	.d1	-1, A4
	||	mv	.l2x	A13, B5
	[!A0]	dmv	.s1	A11, A10, A5:A4
		nop	4
	;; condjump to .L1068 occurs
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L1068:
		ldw	.d2t2	*+B15(28), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
		ret	.s2	B3
	||	mpy32	.m1x	A4, B4, A5:A4
		nop	5
	;; return occurs
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
		ret	.s2	B3
	||	mpy32u	.m1x	A4, B4, A5:A4
		nop	5
	;; return occurs
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
		cmpgt	.l1x	0, B4, A0
	||	mv	.s1	A4, A7
	[A0]	neg	.l2	B4, B4
	||[A0]	b	.s1	.L1082
	||[A0]	mvk	.d1	1, A2
	[!A0]	mvk	.d1	0, A2
		mv	.l1x	B4, A1
	[!A1]	mvk	.d1	0, A4
		nop	2
	;; condjump to .L1082 occurs
	[!A1]	b	.s1	.L1080
		nop	5
	;; condjump to .L1080 occurs
.L1082:
		mvk	.d1	1, A6
	||	mvk	.l1	0, A4
	||	mvk	.s1	31, A8
.L1084:
		and	.d1x	1, B4, A5
	||	extu	.s1	A6, 24, 24, A3
	||	shr	.s2	B4, 1, B4
	||	add	.l1	1, A6, A6
		cmpltu	.l1	A8, A3, A18
	||	neg	.s1	A5, A9
		cmpeq	.l1x	0, B4, A17
	||	and	.d1	A7, A9, A16
	||	shl	.s1	A7, 1, A7
		cmpeq	.l1	0, A17, A19
	||	add	.s1	A4, A16, A4
		cmpeq	.l1	0, A18, A20
		and	.d1	A20, A19, A0
	[A0]	b	.s1	.L1084
		nop	5
	;; condjump to .L1084 occurs
	[A2]	neg	.l1	A4, A4
.L1080:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
		cmpgt	.l1x	0, B4, A2
		cmpgt	.l1	0, A4, A0
	||[A2]	neg	.l2	B4, B4
	[A0]	neg	.s1	A4, A4
	||[A0]	mvk	.d1	1, A1
	||[!A0]	mvk	.l1	0, A1
		mv	.l1x	B4, A3
	||[A2]	xor	.d1	1, A1, A1
	||	mv	.s1	A4, A6
		cmpltu	.l1	A3, A4, A0
	[!A0]	b	.s1	.L1112
	||	mvk	.d1	1, A0
		nop	5
	;; condjump to .L1112 occurs
.L1095:
		shl	.s2	B4, 1, B4
	||	shl	.s1	A0, 1, A0
		cmpeq	.l1	0, A0, A8
		mv	.s1x	B4, A5
	||	cmpeq	.l1	0, A8, A9
		cmpltu	.l1	A5, A4, A7
		and	.d1	A9, A7, A2
	[A2]	b	.s1	.L1095
		nop	5
	;; condjump to .L1095 occurs
	[!A0]	b	.s1	.L1097
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1097 occurs
.L1100:
		cmpltu	.l1x	A6, B4, A16
		mv	.d1	A16, A2
	[!A2]	or	.d1	A0, A4, A4
	||	shru	.s1	A0, 1, A0
	||[!A2]	mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
	[A0]	b	.s1	.L1100
	||[!A2]	sub	.d1	A6, A16, A6
		nop	5
	;; condjump to .L1100 occurs
.L1097:
		ret	.s2	B3
	||[A1]	neg	.l1	A4, A4
		nop	5
	;; return occurs
.L1112:
		b	.s1	.L1100
	||	mvk	.d1	1, A0
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1100 occurs
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
		shr	.s1x	B4, 31, A3
	||	cmpgt	.l1	0, A4, A0
	[A0]	neg	.s1	A4, A4
	||[A0]	mvk	.d1	1, A1
	||[!A0]	mvk	.l1	0, A1
		xor	.d2x	B4, A3, B4
	||	mvk	.d1	1, A0
	||	mv	.s1	A4, A6
		mv	.l2x	A3, B5
		sub	.d2	B4, B5, B6
		nop	1
		mv	.l1x	B6, A5
		cmpltu	.l1	A5, A4, A2
	[!A2]	b	.s1	.L1132
		nop	5
	;; condjump to .L1132 occurs
.L1115:
		shl	.s2	B6, 1, B6
	||	shl	.s1	A0, 1, A0
		cmpeq	.l1	0, A0, A9
		mv	.s1x	B6, A7
	||	cmpeq	.l1	0, A9, A16
		cmpltu	.l1	A7, A4, A8
		and	.d1	A16, A8, A2
	[A2]	b	.s1	.L1115
		nop	5
	;; condjump to .L1115 occurs
	[!A0]	b	.s1	.L1117
		nop	5
	;; condjump to .L1117 occurs
.L1120:
		shru	.s1	A0, 1, A0
	||	cmpltu	.l1x	A6, B6, A4
	[A0]	b	.s1	.L1120
	||	mv	.d1	A4, A2
	[!A2]	mv	.l1x	B6, A4
	||	shru	.s2	B6, 1, B6
	[!A2]	sub	.d1	A6, A4, A6
		nop	3
	;; condjump to .L1120 occurs
.L1133:
		mv	.d1	A6, A4
.L1117:
		ret	.s2	B3
	||[A1]	neg	.l1	A4, A4
		nop	5
	;; return occurs
.L1132:
		mvk	.d1	1, A0
	||	cmpltu	.l1x	A6, B6, A4
		shru	.s1	A0, 1, A0
	||	mv	.d1	A4, A2
	[A0]	b	.s1	.L1120
	||[!A2]	mv	.l1x	B6, A4
	||	shru	.s2	B6, 1, B6
	[!A2]	sub	.d1	A6, A4, A6
		nop	4
	;; condjump to .L1120 occurs
		b	.s1	.L1133
		nop	5
	;; jump to .L1133 occurs
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
		mv	.l1x	B4, A3
	||	extu	.s1	A4, 16, 16, A27
	||	mvk	.d1	1, A24
		extu	.s1	A3, 16, 16, A26
	||	mv	.d1	A4, A9
		cmpgtu	.l1	A27, A26, A0
	[!A0]	b	.s1	.L1149
		nop	5
	;; condjump to .L1149 occurs
.L1135:
		mv	.l1x	B4, A4
	||	shl	.s1	A24, 1, A16
		ext	.s1	A4, 16, 16, A7
		cmpgt	.l1	0, A7, A1
	[A1]	b	.s1	.L1150
	||[!A1]	shl	.s2	B4, 1, B4
	||[!A1]	mv	.d1	A16, A24
	[!A1]	extu	.s1	A16, 16, 16, A4
		mv	.s1x	B4, A8
	||	cmpeq	.l1	0, A4, A19
		extu	.s1	A8, 16, 16, A17
	||	cmpeq	.l1	0, A19, A20
		cmpltu	.l1	A17, A27, A18
		and	.d1	A20, A18, A1
	;; condjump to .L1150 occurs
	[A1]	b	.s1	.L1135
		nop	5
	;; condjump to .L1135 occurs
		mv	.d1	A4, A2
	||	extu	.s1	A8, 16, 16, A26
	[!A2]	b	.s1	.L1139
	||[!A2]	mv	.d1	A16, A4
	[A2]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1139 occurs
.L1141:
		extu	.s1	A24, 16, 16, A22
	||	cmpltu	.l1	A27, A26, A5
		shru	.s1	A22, 1, A23
	||	mv	.d1	A5, A1
		mv	.d1	A23, A0
	||[!A1]	mv	.l1x	B4, A5
	||	shru	.s2x	A26, 1, B4
	||[!A1]	or	.s1	A24, A4, A4
	[A0]	b	.s1	.L1141
	||[!A1]	sub	.d1	A9, A5, A9
	||	mv	.l1	A23, A24
		extu	.s1	A9, 16, 16, A27
	||	mv	.l1x	B4, A25
		extu	.s1	A25, 16, 16, A26
		nop	3
	;; condjump to .L1141 occurs
.L1139:
		ret	.s2	B3
	||	mv	.d1	A6, A2
	[A2]	mv	.d1	A9, A4
		nop	4
	;; return occurs
.L1150:
		b	.s1	.L1141
		extu	.s1	A4, 16, 16, A26
	||	mvk	.d1	0, A4
		nop	4
	;; jump to .L1141 occurs
.L1149:
		b	.s1	.L1141
	||	mvk	.d1	1, A24
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1141 occurs
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
		mv	.s1x	B4, A3
	||	mv	.d1	A4, A7
		cmpltu	.l1	A3, A4, A0
	[!A0]	b	.s1	.L1166
	||	mvk	.d1	1, A0
		nop	5
	;; condjump to .L1166 occurs
.L1152:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1153
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A0, 1, A0
		mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A0, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1153 occurs
	[A1]	b	.s1	.L1152
		nop	5
	;; condjump to .L1152 occurs
	[!A0]	b	.s1	.L1156
	||[!A0]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1156 occurs
.L1153:
		mvk	.d1	0, A4
.L1158:
		cmpltu	.l1x	A7, B4, A16
		mv	.d1	A16, A2
	[!A2]	or	.d1	A0, A4, A4
	||	shru	.s1	A0, 1, A0
	||[!A2]	mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
	[A0]	b	.s1	.L1158
	||[!A2]	sub	.d1	A7, A16, A7
		nop	5
	;; condjump to .L1158 occurs
.L1156:
		ret	.s2	B3
	||	mv	.d1	A6, A1
	[A1]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1166:
		b	.s1	.L1158
	||	mvk	.d1	1, A0
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1158 occurs
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1168
		nop	5
	;; condjump to .L1168 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shl	.s1	A4, A9, A5
	||	mv	.d1	A8, A4
.L1170:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1168:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1170
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1170
		shru	.s1	A4, A3, A7
	[A2]	shl	.s1	A5, A2, A5
		shl	.s1	A4, A2, A8
	||[A2]	or	.d1	A5, A7, A5
	[A2]	mv	.d1	A8, A4
		nop	1
	;; condjump to .L1170 occurs
	;; jump to .L1170 occurs
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1175
		nop	5
	;; condjump to .L1175 occurs
		subah	.d2	B4, 16, B4
	||	shr	.s1	A5, 31, A8
		nop	1
		mv	.l1x	B4, A9
		shr	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1177:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1175:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1177
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1177
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shr	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1177 occurs
	;; jump to .L1177 occurs
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
		ret	.s2	B3
	||	rotl	.m1	A4, 16, A3
		rotl	.m1	A5, 16, A4
		swap4	.l1	A3, A5
		swap4	.l1	A4, A4
		nop	2
	;; return occurs
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
		ret	.s2	B3
	||	rotl	.m1	A4, 16, A4
		nop	1
		swap4	.l1	A4, A4
		nop	3
	;; return occurs
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
		mvk	.d1	-1, A5
	||	mvk	.s1	16, A8
		mvklh	.s1	0, A5
		cmpltu	.l1	A5, A4, A3
	||	mvk	.s1	240, A23
		cmpeq	.l1	0, A3, A6
		shl	.s1	A6, 4, A7
		sub	.d1	A8, A7, A9
		shru	.s1	A4, A9, A16
		mvk	.s1	-256, A4
		mvklh	.s1	0, A4
		and	.d1	A4, A16, A17
		cmpeq	.l1	0, A17, A18
		shl	.s1	A18, 3, A19
		sub	.s1	8, A19, A20
	||	add	.d1	A19, A7, A21
		shru	.s1	A16, A20, A22
		and	.d1	A23, A22, A24
		cmpeq	.l1	0, A24, A25
		shl	.s1	A25, 2, A26
		sub	.s1	4, A26, A27
	||	add	.d1	A26, A21, A28
		shru	.s1	A22, A27, A29
		and	.d1	12, A29, A30
		cmpeq	.l1	0, A30, A31
		shl	.s1	A31, 1, A3
		sub	.s1	2, A3, A0
	||	add	.d1	A3, A28, A5
		shru	.s1	A29, A0, A6
	||	ret	.s2	B3
		extu	.s1	A6, 30, 31, A1
		xor	.d1	1, A1, A2
		extu	.s1	A2, 24, 24, A1
	[A1]	sub	.s1	2, A6, A6
	||[!A1]	mvk	.d1	0, A6
		add	.d1	A6, A5, A4
	;; return occurs
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
		mv	.l1x	B5, A3
		cmpgt	.l1	A3, A5, A0
	[A0]	b	.s1	.L1193
	||	cmplt	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1193 occurs
	[A0]	b	.s1	.L1194
		nop	5
	;; condjump to .L1194 occurs
	[A1]	b	.s1	.L1193
		nop	5
	;; condjump to .L1193 occurs
	[A2]	b	.s1	.L1194
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1194 occurs
	;; return occurs
.L1193:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1194:
		ret	.s2	B3
	||	mvk	.d1	2, A4
		nop	5
	;; return occurs
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
		mv	.l1x	B5, A3
		cmpgt	.l1	A3, A5, A0
	[A0]	b	.s1	.L1201
	||	cmplt	.l1	A3, A5, A0
	[A0]	mvk	.d1	1, A4
	||	mv	.s1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		nop	3
	;; condjump to .L1201 occurs
	[A0]	b	.s1	.L1197
		nop	5
	;; condjump to .L1197 occurs
	[A1]	b	.s1	.L1201
	||[!A1]	cmpltu	.l1	A5, A4, A4
		nop	5
	;; condjump to .L1201 occurs
.L1197:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1201:
		ret	.s2	B3
	||	mvk	.d1	-1, A4
		nop	5
	;; return occurs
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
		clr	.s1	A4, 16, 31, A5
		cmpeq	.l1	0, A5, A3
		shl	.s1	A3, 4, A6
		shru	.s1	A4, A6, A4
		extu	.s1	A4, 24, 24, A7
		cmpeq	.l1	0, A7, A8
		shl	.s1	A8, 3, A9
		shru	.s1	A4, A9, A16
	||	add	.d1	A9, A6, A17
		and	.d1	15, A16, A18
		cmpeq	.l1	0, A18, A19
		shl	.s1	A19, 2, A20
		shru	.s1	A16, A20, A21
	||	add	.d1	A20, A17, A22
		and	.d1	3, A21, A23
		cmpeq	.l1	0, A23, A24
		shl	.s1	A24, 1, A25
		shru	.s1	A21, A25, A26
	||	add	.d1	A25, A22, A27
		and	.d1	3, A26, A28
	||	ret	.s2	B3
		not	.l1	A28, A29
	||	shru	.s1	A28, 1, A30
		and	.d1	1, A29, A31
	||	sub	.s1	2, A30, A5
		mpyu	.m1	A31, A5, A3
		nop	1
		add	.d1	A3, A27, A4
	;; return occurs
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1207
		nop	5
	;; condjump to .L1207 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shru	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1209:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1207:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1209
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1209
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shru	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1209 occurs
	;; jump to .L1209 occurs
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
		mpyu	.m1x	A4, B4, A3
		mpyhlu	.m1x	A4, B4, A8
		shru	.s1	A3, 16, A6
	||	mv	.l1x	B4, A7
		ret	.s2	B3
	||	mpyhlu	.m1	A7, A4, A5
	||	add	.d1	A8, A6, A9
	||	extu	.s1	A3, 16, 16, A16
		mpyhu	.m1x	A4, B4, A20
	||	extu	.s1	A9, 16, 16, A17
		add	.d1	A5, A17, A19
	||	shru	.s1	A9, 16, A18
		shl	.s1	A19, 16, A4
	||	add	.d1	A18, A20, A21
		shru	.s1	A19, 16, A22
	||	add	.d1	A16, A4, A4
		add	.d1	A21, A22, A5
	;; return occurs
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
		mv	.l1x	B4, A3
		mpyu	.m1	A4, A3, A6
		mpyhlu	.m1	A4, A3, A16
		shru	.s1	A6, 16, A9
	||	mpyhlu	.m1	A3, A4, A7
		add	.d1	A16, A9, A17
	||	mpy32	.m1x	A4, B5, A8
	||	extu	.s1	A6, 16, 16, A18
		mpyhu	.m1	A3, A4, A22
	||	extu	.s1	A17, 16, 16, A19
	||	ret	.s2	B3
		mpy32	.m1	A3, A5, A25
	||	add	.d1	A7, A19, A21
	||	shru	.s1	A17, 16, A20
		add	.d1	A20, A22, A23
	||	shru	.s1	A21, 16, A24
		add	.d1	A23, A24, A5
	||	shl	.s1	A21, 16, A4
		add	.d1	A8, A5, A26
	||	add	.s1	A18, A4, A4
		add	.d1	A26, A25, A5
	;; return occurs
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
		ret	.s2	B3
	||	neg	.l1	A4, A4
	||	neg	.s1	A5, A5
		cmpltu	.l1	0, A4, A3
		sub	.d1	A5, A3, A5
		nop	3
	;; return occurs
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
		xor	.d1	A4, A5, A5
	||	mvk	.s1	27030, A17
		shru	.s1	A5, 16, A3
		xor	.d1	A5, A3, A4
		shru	.s1	A4, 8, A6
		xor	.d1	A4, A6, A7
	||	ret	.s2	B3
		shru	.s1	A7, 4, A8
		xor	.d1	A7, A8, A9
		and	.d1	15, A9, A16
		shr	.s1	A17, A16, A18
		and	.d1	1, A18, A4
	;; return occurs
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
		shru	.s1	A4, 16, A3
		xor	.d1	A4, A3, A5
	||	mvk	.s1	27030, A16
		shru	.s1	A5, 8, A4
		xor	.d1	A5, A4, A6
	||	ret	.s2	B3
		shru	.s1	A6, 4, A7
		xor	.d1	A6, A7, A8
		and	.d1	15, A8, A9
		shr	.s1	A16, A9, A17
		and	.d1	1, A17, A4
	;; return occurs
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
		mv	.d1	A4, A16
	||	shl	.s1	A5, 31, A9
	||	mv	.l1	A5, A3
		shru	.s1	A4, 1, A4
		mvk	.s1	21845, A8
	||	or	.d1	A4, A9, A17
		mvklh	.s1	21845, A8
		and	.d1	A8, A17, A19
	||	shru	.s1	A5, 1, A5
		sub	.d1	A16, A19, A21
	||	and	.l1	A8, A5, A18
	||	mvk	.s1	13107, A7
		sub	.d1	A3, A18, A20
	||	cmpltu	.l1	A16, A21, A22
	||	shru	.s1	A21, 2, A23
		sub	.d1	A20, A22, A24
	||	mvklh	.s1	13107, A7
		shl	.s1	A24, 30, A26
	||	and	.d1	A7, A21, A25
	||	and	.l1	A7, A24, A31
		or	.d1	A23, A26, A28
	||	shru	.s1	A24, 2, A27
		and	.d1	A7, A28, A30
	||	and	.l1	A7, A27, A29
	||	mvk	.s1	3855, A6
		addu	.l1	A30, A25, A1:A0
	||	mvklh	.s1	3855, A6
		add	.d1	A1, A29, A7
	||	shru	.s1	A0, 4, A1
		add	.d1	A7, A31, A8
		shl	.s1	A8, 28, A16
		or	.d1	A1, A16, A3
	||	shru	.s1	A8, 4, A2
		addu	.l1	A3, A0, A5:A4
		add	.d1	A5, A2, A9
	||	and	.s1	A6, A4, A4
		add	.d1	A9, A8, A5
		and	.d1	A6, A5, A0
		add	.d1	A0, A4, A6
	||	ret	.s2	B3
		shru	.s1	A6, 16, A17
		add	.d1	A17, A6, A18
		shru	.s1	A18, 8, A19
		add	.d1	A19, A18, A20
		clr	.s1	A20, 7, 31, A4
	;; return occurs
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
		mvk	.s1	21845, A3
		shru	.s1	A4, 1, A6
		mvklh	.s1	21845, A3
		and	.d1	A3, A6, A7
	||	mvk	.s1	13107, A5
		sub	.d1	A4, A7, A4
	||	mvklh	.s1	13107, A5
		shru	.s1	A4, 2, A8
	||	and	.d1	A5, A4, A9
		and	.d1	A5, A8, A16
	||	mvk	.s1	3855, A20
		add	.d1	A16, A9, A17
	||	mvklh	.s1	3855, A20
		shru	.s1	A17, 4, A18
		add	.d1	A18, A17, A19
		and	.d1	A20, A19, A21
	||	ret	.s2	B3
		shru	.s1	A21, 16, A22
		add	.d1	A22, A21, A23
		shru	.s1	A23, 8, A24
		add	.d1	A24, A23, A25
		clr	.s1	A25, 6, 31, A4
	;; return occurs
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
		subah	.d2	B15, 20, B15
		stw	.d2t1	A11, *+B15(16)
		mv	.l1x	B4, A11
	||	stw	.d2t2	B14, *+B15(36)
		and	.d1	1, A11, A0
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A15, *+B15(40)
		mvk	.d1	0, A15
	||	stw	.d2t1	A14, *+B15(28)
	[!A0]	b	.s1	.L1228
	||	stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(32)
		dmv	.s1	A5, A4, A13:A12
	||	mv	.l1x	B4, A10
	||	mvk	.d1	0, A14
		mvklh	.s1	16368, A15
	;; condjump to .L1228 occurs
.L1230:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A15, A14, A5:A4
	||	mv	.l2x	A12, B4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L1237, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L1237:
		dmv	.s1	A5, A4, A15:A14
.L1228:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1229
		nop	5
	;; condjump to .L1229 occurs
.L1231:
		call	.s2	(__c6xabi_mpyd)
	||	mv	.l2x	A12, B4
	||	mv	.d1	A12, A4
	||	mv	.s1	A13, A5
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L1238, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L1238:
		and	.d1	1, A10, A2
	||	dmv	.s1	A5, A4, A13:A12
	[A2]	b	.s1	.L1230
		nop	5
	;; condjump to .L1230 occurs
		b	.s1	.L1231
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L1231 occurs
.L1229:
		cmpgt	.l2x	0, A11, B0
	||	dmv	.s1	A15, A14, A5:A4
	[B0]	b	.s1	.L1236
	||[!B0]	ldw	.d2t2	*+B15(32), B3
	[!B0]	ldw	.d2t1	*+B15(12), A10
	[!B0]	ldw	.d2t1	*+B15(16), A11
	[!B0]	ldw	.d2t1	*+B15(20), A12
	[!B0]	ldw	.d2t1	*+B15(24), A13
	[!B0]	ldw	.d2t1	*+B15(28), A14
	;; condjump to .L1236 occurs
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(36), B14
		ldw	.d2t1	*+B15(40), A15
	||	addk	.s2	40, B15
		nop	4
	;; return occurs
.L1236:
		call	.s2	(__c6xabi_divd)
	||	mv	.l2x	A14, B4
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		mv	.l2x	A15, B5
	||	mvklh	.s1	16368, A5
	||	addkpc	.s2	.L1239, B3, 0
	;; call to (__c6xabi_divd) occurs, with return value
		nop	4
.L1239:
		ldw	.d2t2	*+B15(32), B3
	||	dmv	.s1	A5, A4, A15:A14
		dmv	.s1	A15, A14, A5:A4
	||	ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ldw	.d2t1	*+B15(28), A14
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(36), B14
		ldw	.d2t1	*+B15(40), A15
	||	addk	.s2	40, B15
		nop	4
	;; return occurs
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A13, *+B15(24)
		mv	.l1x	B4, A13
	||	stw	.d2t2	B14, *+B15(32)
		and	.d1	1, A13, A0
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	[!A0]	b	.s1	.L1241
	||	stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(28)
		mv	.l1	A4, A11
	||	mv	.s1x	B4, A10
	||	mvk	.d1	0, A12
		mvklh	.s1	16256, A12
	;; condjump to .L1241 occurs
.L1243:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.d1	A12, A4
	||	mv	.l2x	A11, B4
		mv	.d1	A4, A12
.L1241:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1242
		nop	5
	;; condjump to .L1242 occurs
.L1244:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A11, A4
		and	.d1	1, A10, A2
	||	mv	.s1	A4, A11
	[A2]	b	.s1	.L1243
		nop	5
	;; condjump to .L1243 occurs
		b	.s1	.L1244
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L1244 occurs
.L1242:
		cmpgt	.l2x	0, A13, B0
	||	mv	.d1	A12, A4
	[B0]	b	.s1	.L1249
	||[!B0]	ldw	.d2t2	*+B15(28), B3
	[!B0]	ldw	.d2t1	*+B15(12), A10
	[!B0]	ldw	.d2t1	*+B15(16), A11
	[!B0]	ldw	.d2t1	*+B15(20), A12
	[!B0]	ldw	.d2t1	*+B15(24), A13
	[!B0]	ret	.s2	B3
	||[!B0]	ldw	.d2t2	*+B15(32), B14
	;; condjump to .L1249 occurs
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
.L1249:
		call	.s2	(__c6xabi_divf)
	||	mv	.l2x	A12, B4
	||	mvk	.d1	0, A4
		mvklh	.s1	16256, A4
	||	addkpc	.s2	.L1252, B3, 0
	;; call to (__c6xabi_divf) occurs, with return value
		nop	4
.L1252:
		ldw	.d2t2	*+B15(28), B3
	||	mv	.d1	A4, A12
		mv	.d1	A12, A4
	||	ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(32), B14
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
		mv	.l1x	B5, A3
		cmpgtu	.l1	A3, A5, A0
	[A0]	b	.s1	.L1257
	||	cmpltu	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1257 occurs
	[A0]	b	.s1	.L1258
		nop	5
	;; condjump to .L1258 occurs
	[A1]	b	.s1	.L1257
		nop	5
	;; condjump to .L1257 occurs
	[A2]	b	.s1	.L1258
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1258 occurs
	;; return occurs
.L1257:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1258:
		ret	.s2	B3
	||	mvk	.d1	2, A4
		nop	5
	;; return occurs
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
		mv	.l1x	B5, A3
		cmpgtu	.l1	A3, A5, A0
	[A0]	b	.s1	.L1265
	||	cmpltu	.l1	A3, A5, A0
	[A0]	mvk	.d1	1, A4
	||	mv	.s1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		nop	3
	;; condjump to .L1265 occurs
	[A0]	b	.s1	.L1261
		nop	5
	;; condjump to .L1261 occurs
	[A1]	b	.s1	.L1265
	||[!A1]	cmpltu	.l1	A5, A4, A4
		nop	5
	;; condjump to .L1265 occurs
.L1261:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1265:
		ret	.s2	B3
	||	mvk	.d1	-1, A4
		nop	5
	;; return occurs
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	".far","aw",@nobits
	.type	s.0, @object
	.size	s.0, 7
	.align	3
s.0:
	.zero	7
	.section	".bss","aw",@nobits
	.type	seed, @object
	.size	seed, 8
	.align	3
seed:
	.zero	8
	.section	.const,"a"
	.align	3
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.global	__c6xabi_divf
	.global	__c6xabi_divd
	.global	__c6xabi_fixfi
	.global	__c6xabi_gef
	.global	__c6xabi_fltullf
	.global	__c6xabi_fltulld
	.global	__c6xabi_fltuf
	.global	__c6xabi_fltud
	.global	__c6xabi_ged
	.global	__c6xabi_led
	.global	__c6xabi_mpyd
	.global	__c6xabi_eqd
	.global	__c6xabi_addd
	.global	__c6xabi_mpyf
	.global	__c6xabi_eqf
	.global	__c6xabi_addf
	.global	__c6xabi_fltid
	.global	__c6xabi_remlli
	.global	__c6xabi_divlli
	.global	__c6xabi_ltf
	.global	__c6xabi_ltd
	.global	__c6xabi_subf
	.global	__c6xabi_gtf
	.global	__c6xabi_unordf
	.global	__c6xabi_subd
	.global	__c6xabi_gtd
	.global	__c6xabi_unordd
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
