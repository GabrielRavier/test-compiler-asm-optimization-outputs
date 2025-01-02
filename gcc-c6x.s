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
		nop	4
		extu	.s1	A5, 24, 24, A4
	||	stb	.d1t1	A5, *A3++[1]
		cmpeq	.l1	A6, A4, A0
	[A0]	b	.s1	.L30
		nop	5
	;; condjump to .L30 occurs
	[A1]	b	.s1	.L18
		nop	5
	;; condjump to .L18 occurs
.L17:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L30:
		ret	.s2	B3
	||	mv	.d1	A3, A4
		nop	5
	;; return occurs
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
		mv	.d1	A6, A1
	||	extu	.s2	B4, 24, 24, B4
	[!A1]	b	.s1	.L38
	||[A1]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L38 occurs
.L33:
		mv	.s1	A5, A4
	||	ldbu	.d1t1	*A5++[1], A3
	||	mv	.l1x	B4, A6
		sub	.d1	A1, 1, A1
		nop	3
		cmpeq	.l1	A6, A3, A2
	[A2]	b	.s1	.L31
		nop	5
	;; condjump to .L31 occurs
	[A1]	b	.s1	.L33
		nop	5
	;; condjump to .L33 occurs
.L38:
		mvk	.d1	0, A4
.L31:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
		mv	.d1	A6, A0
	[!A0]	b	.s1	.L49
		nop	5
	;; condjump to .L49 occurs
.L43:
		ldbu	.d2t1	*B4, A7
	||	sub	.d1	A0, 1, A0
	||	add	.s2	1, B4, B4
		ldbu	.d1t1	*A4, A8
	||	add	.s1	1, A4, A4
		nop	4
		cmpeq	.l1	A7, A8, A1
	[!A1]	b	.s1	.L53
		nop	5
	;; condjump to .L53 occurs
	[A0]	b	.s1	.L43
		nop	5
	;; condjump to .L43 occurs
.L49:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L53:
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
	[!A0]	b	.s1	.L55
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	3
	;; condjump to .L55 occurs
		callp	.s2	(memcpy), B3
.L55:
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
	[A1]	b	.s1	.L65
	||	mv	.d1	A7, A4
	||	add	.l1	-1, A7, A7
		nop	5
	;; condjump to .L65 occurs
.L68:
		mvk	.d1	0, A4
.L62:
		ret	.s2	B3
		nop	5
	;; return occurs
.L65:
		ldbu	.d1t1	*A4, A6
	||	mv	.l1x	B4, A5
	||	add	.s1	-1, A1, A1
		nop	4
		cmpeq	.l1	A5, A6, A0
	[A0]	b	.s1	.L62
	||[!A0]	mv	.d1	A7, A4
	||	add	.l1	-1, A7, A7
		nop	5
	;; condjump to .L62 occurs
	[A1]	b	.s1	.L65
		nop	5
	;; condjump to .L65 occurs
		b	.s1	.L68
		nop	5
	;; jump to .L68 occurs
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
		sub	.d2	B15, 16, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(12)
	[!A0]	b	.s1	.L72
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	extu	.s2	B4, 24, 24, B4
		nop	3
	;; condjump to .L72 occurs
		callp	.s2	(memset), B3
.L72:
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
	[!A0]	b	.s1	.L76
		nop	5
	;; condjump to .L76 occurs
.L78:
		ldb	.d2t1	*++B4[1], A7
	||	mv	.d1	A6, A4
		nop	4
		ext	.s1	A7, 24, 24, A1
	||	stb	.d1t1	A7, *A6++[1]
	[A1]	b	.s1	.L78
		nop	5
	;; condjump to .L78 occurs
.L76:
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
	[!A1]	b	.s1	.L83
		nop	5
	;; condjump to .L83 occurs
.L84:
		extu	.s1	A6, 24, 24, A5
	||	mv	.l1x	B4, A3
		cmpeq	.l1	A3, A5, A0
	[A0]	b	.s1	.L83
	||[!A0]	ldb	.d1t1	*++A4[1], A6
		nop	4
		ext	.s1	A6, 24, 24, A1
	;; condjump to .L83 occurs
	[A1]	b	.s1	.L84
		nop	5
	;; condjump to .L84 occurs
.L83:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
		mv	.d1	A4, A3
.L94:
		ldb	.d1t1	*A3, A5
	||	mv	.l1x	B4, A6
	||	mv	.s1	A3, A4
		add	.d1	A3, 1, A3
		nop	3
		ext	.s1	A5, 24, 24, A0
		cmpeq	.l1	A6, A0, A1
	[A1]	b	.s1	.L92
		nop	5
	;; condjump to .L92 occurs
	[A0]	b	.s1	.L94
		nop	5
	;; condjump to .L94 occurs
		mvk	.d1	0, A4
.L92:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
		ldb	.d1t1	*A4, A8
		ldb	.d2t1	*B4, A5
		nop	3
		ext	.s1	A8, 24, 24, A7
		ext	.s1	A5, 24, 24, A6
		cmpeq	.l1	A6, A7, A0
	||	shl	.s1	A8, 24, A1
	[!A0]	b	.s1	.L109
		nop	5
	;; condjump to .L109 occurs
.L101:
	[!A1]	b	.s1	.L110
	||[A1]	ldb	.d1t1	*++A4[1], A8
	[A1]	ldb	.d2t1	*++B4[1], A5
		nop	3
		ext	.s1	A8, 24, 24, A7
	;; condjump to .L110 occurs
		ext	.s1	A5, 24, 24, A6
		cmpeq	.l1	A6, A7, A0
	||	shl	.s1	A8, 24, A1
	[A0]	b	.s1	.L101
		nop	5
	;; condjump to .L101 occurs
.L109:
		ret	.s2	B3
	||	extu	.s1	A8, 24, 24, A3
		extu	.s1	A5, 24, 24, A4
		sub	.d1	A3, A4, A4
		nop	3
	;; return occurs
.L110:
		ret	.s2	B3
	||	mvk	.d1	0, A3
	||	extu	.s1	A5, 24, 24, A4
		sub	.d1	A3, A4, A4
		nop	4
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
		stw	.d2t2	B10, *+B15(32)
		ldw	.d1t2	*A6, B10
	||	stdw	.d2t1	A13:A12, *+B15(16)
		stw	.d2t2	B14, *+B15(36)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.d1	A4, A12
	||	mv	.s1	A8, A13
		stdw	.d2t1	A11:A10, *+B15(8)
		stw	.d2t1	A14, *+B15(24)
		mv	.s1x	B10, A0
	||	mvk	.d1	0, A11
	||	stw	.d2t1	A15, *+B15(40)
	[!A0]	b	.s1	.L350
	||	stw	.d2t2	B3, *+B15(28)
		mv	.l1x	B6, A14
		mv	.l1x	B4, A10
		nop	3
	;; condjump to .L350 occurs
.L352:
		call	.s2x	A13
	||	mv	.d1	A12, A4
	||	add	.l1	1, A11, A11
	||	mv	.s1	A10, A15
		mv	.l2x	A10, B4
	||	add	.d1	A10, A14, A10
	||	addkpc	.s2	.L362, B3, 0
	;; indirect call occurs, with return value
		nop	4
.L362:
		mv	.s1	A4, A1
	||	cmpeq	.l1x	A11, B10, A2
	[!A1]	b	.s1	.L349
		nop	5
	;; condjump to .L349 occurs
	[!A2]	b	.s1	.L352
		nop	5
	;; condjump to .L352 occurs
.L350:
		mvk	.d1	0, A15
.L349:
		ldw	.d2t2	*+B15(28), B3
	||	mv	.d1	A15, A4
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
	[!A0]	b	.s1	.L393
		nop	5
	;; condjump to .L393 occurs
.L415:
		ldb	.d1t1	*++A4[1], A26
		nop	4
		ext	.s1	A26, 24, 24, A27
		sub	.d1	A27, 9, A29
	||	cmpeq	.l1	A6, A27, A5
	||	shl	.s1	A26, 24, A28
		cmpltu	.l1	4, A29, A7
		cmpeq	.l1	0, A7, A8
		or	.d1	A5, A8, A0
	[A0]	b	.s1	.L415
		nop	5
	;; condjump to .L415 occurs
.L393:
		shr	.s1	A28, 24, A9
		mvk	.s1	43, A16
		mvk	.s1	45, A17
	||	cmpeq	.l1	A16, A9, A1
		cmpeq	.l1	A17, A9, A0
	||[A1]	b	.s1	.L395
		nop	5
	;; condjump to .L395 occurs
	[A0]	b	.s1	.L416
		nop	5
	;; condjump to .L416 occurs
		ldb	.d1t1	*A4, A19
	||	mvk	.d2	0, B2
		nop	4
		ext	.s1	A19, 24, 24, A20
		subah	.d1	A20, 24, A20
		nop	1
		cmpltu	.l2x	9, A20, B1
	[B1]	b	.s1	.L403
	||[!B1]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L403 occurs
.L397:
		mvk	.d1	0, A4
.L400:
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
	[!A1]	b	.s1	.L400
		nop	5
	;; condjump to .L400 occurs
		ret	.s2	B3
	||[!B2]	sub	.d1	A23, A24, A4
		nop	5
	;; return occurs
.L416:
		ldb	.d1t1	*+A4(1), A19
	||	add	.s1	1, A4, A5
		nop	4
		ext	.s1	A19, 24, 24, A18
		subah	.d1	A18, 24, A18
		nop	1
		cmpltu	.l2x	9, A18, B0
	[!B0]	b	.s1	.L397
	||[!B0]	mvk	.d2	1, B2
		nop	5
	;; condjump to .L397 occurs
.L403:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L395:
		ldb	.d1t1	*+A4(1), A19
	||	add	.s1	1, A4, A5
	||	mvk	.d2	0, B2
		nop	4
		ext	.s1	A19, 24, 24, A4
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A2
	[A2]	b	.s1	.L403
	[!A2]	b	.s1	.L397
		nop	5
	;; condjump to .L403 occurs
	;; jump to .L397 occurs
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
	[!A0]	b	.s1	.L418
		nop	5
	;; condjump to .L418 occurs
.L443:
		ldb	.d1t1	*++A4[1], A19
		nop	4
		ext	.s1	A19, 24, 24, A20
		sub	.d1	A20, 9, A22
	||	cmpeq	.l1	A6, A20, A5
	||	shl	.s1	A19, 24, A21
		cmpltu	.l1	4, A22, A7
		cmpeq	.l1	0, A7, A9
		or	.d1	A5, A9, A0
	[A0]	b	.s1	.L443
		nop	5
	;; condjump to .L443 occurs
.L418:
		shr	.s1	A21, 24, A16
		mvk	.s1	43, A17
		mvk	.s1	45, A18
	||	cmpeq	.l1	A17, A16, A1
		cmpeq	.l1	A18, A16, A0
	||[A1]	b	.s1	.L420
		nop	5
	;; condjump to .L420 occurs
	[A0]	b	.s1	.L421
		nop	5
	;; condjump to .L421 occurs
		ldb	.d1t1	*A4, A20
	||	mvk	.d2	0, B2
		nop	4
		ext	.s1	A20, 24, 24, A21
		subah	.d1	A21, 24, A21
		nop	1
		cmpltu	.l2x	9, A21, B0
	[B0]	b	.s1	.L429
	||[!B0]	mv	.d1	A4, A8
		nop	5
	;; condjump to .L429 occurs
.L423:
		mvk	.d1	0, A4
	||	mvk	.l1	0, A5
.L426:
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
	[!A2]	b	.s1	.L426
	||	sub	.d1	A7, A25, A16
		sub	.d1	A16, A17, A5
		nop	4
	;; condjump to .L426 occurs
	[B2]	b	.s1	.L417
		nop	5
	;; condjump to .L417 occurs
		sub	.d1	A23, A9, A4
	||	sub	.s1	A25, A7, A8
		cmpltu	.l1	A23, A4, A18
		sub	.d1	A8, A18, A5
.L417:
		ret	.s2	B3
		nop	5
	;; return occurs
.L421:
		ldb	.d1t1	*+A4(1), A20
	||	add	.s1	1, A4, A8
		nop	4
		ext	.s1	A20, 24, 24, A19
		subah	.d1	A19, 24, A19
		nop	1
		cmpltu	.l2x	9, A19, B1
	[!B1]	b	.s1	.L423
	||[!B1]	mvk	.d2	1, B2
		nop	5
	;; condjump to .L423 occurs
.L429:
		ret	.s2	B3
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; return occurs
.L420:
		ldb	.d1t1	*+A4(1), A20
	||	add	.s1	1, A4, A8
	||	mvk	.d2	0, B2
		nop	4
		ext	.s1	A20, 24, 24, A4
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A2
	[A2]	b	.s1	.L429
	[!A2]	b	.s1	.L423
		nop	5
	;; condjump to .L429 occurs
	;; jump to .L423 occurs
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
.L457:
		mv	.d1	A10, A0
	[!A0]	b	.s1	.L445
		nop	5
	;; condjump to .L445 occurs
.L460:
		shru	.s2x	A10, 1, B10
	||	mv	.d1	A14, A4
	||	add	.s1	-1, A10, A10
		nop	1
		mpy32	.m1x	A12, B10, A3
		call	.s2x	A15
		addkpc	.s2	.L461, B3, 0
		nop	1
		add	.d1	A13, A3, A11
		nop	1
	;; indirect call occurs, with return value
		mv	.l2x	A11, B4
.L461:
		cmpgt	.l1	0, A4, A1
	||	mv	.d1	A4, A2
	||	mv	.s1x	B10, A5
	[A1]	b	.s1	.L449
	||[!A1]	add	.d1	A11, A12, A13
	||	sub	.l1	A10, A5, A10
		nop	5
	;; condjump to .L449 occurs
	[A2]	b	.s1	.L457
		nop	5
	;; condjump to .L457 occurs
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
.L449:
		mv	.l1x	B10, A10
		mv	.d1	A10, A0
	[A0]	b	.s1	.L460
		nop	5
	;; condjump to .L460 occurs
.L445:
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
	[!A0]	b	.s1	.L477
	||	stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t2	B11, *+B15(40)
		stw	.d2t2	B10, *+B15(36)
		stw	.d2t2	B3, *+B15(32)
	;; condjump to .L477 occurs
		mv	.d1	A4, A15
	||	mv	.l1x	B4, A12
	||	mv	.s1	A8, A14
		mv	.l1x	B6, A11
		mv	.l1x	B8, A13
.L463:
		shr	.s2x	A10, 1, B11
	||	sub	.d1	A10, 1, A10
	||	mv	.l1	A13, A6
	||	mv	.s1	A15, A4
		mpy32	.m2x	B11, A11, B10
	||	shr	.s1	A10, 1, A10
		call	.s2x	A14
		addkpc	.s2	.L478, B3, 0
		nop	1
		add	.d2x	B10, A12, B10
		mv	.d2	B10, B4
	;; indirect call occurs, with return value
		nop	1
.L478:
		cmplt	.l1	0, A4, A2
	||	mv	.s1	A4, A1
	[!A2]	mv	.l1x	B11, A10
	||[!A1]	b	.s1	.L462
		mv	.d1	A10, A0
	||[A2]	add	.s1x	A11, B10, A12
		nop	4
	;; condjump to .L462 occurs
	[A0]	b	.s1	.L463
		nop	5
	;; condjump to .L463 occurs
.L477:
		mvk	.d2	0, B10
.L462:
		ldw	.d2t2	*+B15(32), B3
	||	mv	.l1x	B10, A4
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t1	*+B15(20), A12
		ldw	.d2t1	*+B15(24), A13
		ldw	.d2t1	*+B15(28), A14
		ldw	.d2t2	*+B15(36), B10
		ldw	.d2t2	*+B15(40), B11
		ret	.s2	B3
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
		addkpc	.s2	.L481, B3, 0
		nop	4
.L481:
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
	||	addkpc	.s2	.L486, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L486:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L487, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L487:
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
		addkpc	.s2	.L492, B3, 0
		nop	4
.L492:
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
	||	addkpc	.s2	.L497, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L497:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L498, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L498:
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
		ldw	.d1t1	*A4, A1
		nop	4
	[!A1]	b	.s1	.L503
		nop	5
	;; condjump to .L503 occurs
.L500:
		cmpeq	.l1x	A1, B4, A0
	[A0]	b	.s1	.L499
	||[!A0]	ldw	.d1t1	*++A4[1], A1
		nop	5
	;; condjump to .L499 occurs
	[A1]	b	.s1	.L500
		nop	5
	;; condjump to .L500 occurs
.L503:
		mvk	.d1	0, A4
.L499:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
		ldw	.d1t1	*A4, A0
		ldw	.d2t1	*B4, A3
		nop	4
		cmpeq	.l1	A3, A0, A1
	[!A1]	b	.s1	.L508
		nop	5
	;; condjump to .L508 occurs
.L509:
	[!A0]	b	.s1	.L508
	||[A0]	ldw	.d2t1	*++B4[1], A3
	[A0]	ldw	.d1t1	*++A4[1], A0
		nop	4
	;; condjump to .L508 occurs
		cmpeq	.l1	A3, A0, A1
	[A1]	b	.s1	.L509
		nop	5
	;; condjump to .L509 occurs
.L508:
		ret	.s2	B3
	||	cmpgt	.l1	A3, A0, A4
		mv	.d1	A4, A2
	[!A2]	cmplt	.l1	A3, A0, A4
	||[A2]	mvk	.d1	-1, A4
		nop	3
	;; return occurs
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
		sub	.d1	A4, 4, A3
.L516:
		ldw	.d2t1	*B4++[1], A0
		nop	4
	[A0]	b	.s1	.L516
	||	stw	.d1t1	A0, *++A3[1]
		nop	5
	;; condjump to .L516 occurs
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
	[!A0]	b	.s1	.L520
	||[!A0]	mvk	.d1	0, A4
		mv	.d1	A4, A5
		nop	4
	;; condjump to .L520 occurs
.L522:
		ldw	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L522
		nop	5
	;; condjump to .L522 occurs
		sub	.d1	A5, A4, A4
		shr	.s1	A4, 2, A4
.L520:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L536
		nop	5
	;; condjump to .L536 occurs
.L529:
		mv	.l1	A4, A6
	||	ldw	.d1t1	*A4++[1], A7
	||	add	.s1	-1, A2, A2
		ldw	.d2t1	*B4, A5
	||	add	.s2	4, B4, B4
		nop	3
		cmpeq	.l1	0, A7, A9
		cmpeq	.l1	A7, A5, A8
		cmpeq	.l1	0, A9, A16
		and	.d1	A16, A8, A0
	[!A0]	b	.s1	.L540
		nop	5
	;; condjump to .L540 occurs
	[A2]	b	.s1	.L529
		nop	5
	;; condjump to .L529 occurs
.L536:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L540:
		ldw	.d1t1	*A6, A4
		ret	.s2	B3
		nop	3
		cmpgt	.l1	A5, A4, A1
	[!A1]	cmplt	.l1	A5, A4, A4
	||[A1]	mvk	.d1	-1, A4
	;; return occurs
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L548
	||[A1]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L548 occurs
.L543:
		mv	.s1	A5, A4
	||	ldw	.d1t1	*A5++[1], A3
	||	mv	.l1x	B4, A6
		sub	.d1	A1, 1, A1
		nop	3
		cmpeq	.l1	A6, A3, A2
	[A2]	b	.s1	.L541
		nop	5
	;; condjump to .L541 occurs
	[A1]	b	.s1	.L543
		nop	5
	;; condjump to .L543 occurs
.L548:
		mvk	.d1	0, A4
.L541:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L560
		nop	5
	;; condjump to .L560 occurs
.L553:
		ldw	.d2t1	*B4, A7
	||	sub	.d1	A2, 1, A2
	||	add	.s2	4, B4, B4
		ldw	.d1t1	*A4, A8
	||	add	.s1	4, A4, A4
		nop	4
		cmpeq	.l1	A7, A8, A1
	[!A1]	b	.s1	.L564
		nop	5
	;; condjump to .L564 occurs
	[A2]	b	.s1	.L553
		nop	5
	;; condjump to .L553 occurs
.L560:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L564:
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
	[!A0]	b	.s1	.L566
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	shl	.s1	A6, 2, A6
		nop	3
	;; condjump to .L566 occurs
		callp	.s2	(memcpy), B3
.L566:
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
	||[A0]	b	.s1	.L581
		nop	5
	;; condjump to .L581 occurs
	[!A1]	b	.s1	.L588
		nop	5
	;; condjump to .L588 occurs
		mv	.d1	A6, A1
	||	add	.l1	-4, A7, A16
	||	add	.d2x	B4, A7, B4
	||	add	.s1	A4, A7, A18
	[!A1]	b	.s1	.L581
		shru	.s1	A16, 2, A17
		add	.d1	A17, 1, A2
		nop	3
	;; condjump to .L581 occurs
.L578:
		sub	.d1	A2, 1, A2
	||	ldw	.d2t1	*--B4[1], A20
	[A2]	b	.s1	.L578
		nop	3
		stw	.d1t1	A20, *--A18[1]
		nop	1
	;; condjump to .L578 occurs
.L581:
		ret	.s2	B3
		nop	5
	;; return occurs
.L588:
		mv	.d1	A6, A2
	||	add	.l1	-4, A4, A9
	||	mv	.s1	A6, A0
	[!A2]	b	.s1	.L581
		nop	5
	;; condjump to .L581 occurs
.L579:
		sub	.d1	A0, 1, A0
	||	ldw	.d2t1	*B4++[1], A20
	[A0]	b	.s1	.L579
		nop	3
		stw	.d1t1	A20, *++A9[1]
		nop	1
	;; condjump to .L579 occurs
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
	[!A0]	b	.s1	.L590
		mvc	.s2x	A0, ILC
		nop	4
	;; condjump to .L590 occurs
		sploop	1
.L591:
		stw	.d1t2	B4, *A3++[1]
		spkernel	1, 0
.L590:
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
	[!A0]	b	.s1	.L599
		nop	5
	;; condjump to .L599 occurs
		mv	.d1	A6, A0
	||	add	.s1	A4, A6, A7
	||	add	.d2x	B4, A6, B5
	[!A0]	b	.s1	.L598
	||	sub	.d1	A7, A4, A1
		nop	5
	;; condjump to .L598 occurs
.L601:
		add	.s1	-1, A1, A1
	||	ldb	.d1t1	*--A7[1], A8
	[A1]	b	.s1	.L601
		nop	3
		stb	.d2t1	A8, *--B5[1]
		nop	1
	;; condjump to .L601 occurs
.L598:
		ret	.s2	B3
		nop	5
	;; return occurs
.L599:
		cmpeq	.l1	A3, A4, A1
	||	mv	.s1	A6, A2
	||	sub	.d2	B4, 1, B4
	[A1]	b	.s1	.L598
		nop	5
	;; condjump to .L598 occurs
	[!A2]	b	.s1	.L598
		nop	5
	;; condjump to .L598 occurs
.L602:
		add	.s1	-1, A2, A2
	||	ldb	.d1t1	*A4++[1], A8
	[A2]	b	.s1	.L602
		nop	3
		stb	.d2t1	A8, *++B4[1]
		nop	1
	;; condjump to .L602 occurs
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
.L650:
		shru	.s1	A4, A3, A5
	||	sub	.d1	A1, 1, A1
	||	add	.l1	1, A3, A3
		and	.d1	1, A5, A0
	[A0]	b	.s1	.L654
		nop	5
	;; condjump to .L654 occurs
	[A1]	b	.s1	.L650
		nop	5
	;; condjump to .L650 occurs
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L654:
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
	[!A0]	b	.s1	.L655
	||[!A0]	mvk	.d1	0, A4
	[A0]	and	.d1	1, A0, A4
		mv	.d1	A4, A1
		nop	3
	;; condjump to .L655 occurs
	[A1]	b	.s1	.L655
	||[!A1]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L655 occurs
.L657:
		shr	.s1	A0, 1, A0
	||	add	.d1	A4, 1, A4
		and	.d1	1, A0, A1
	[!A1]	b	.s1	.L657
		nop	5
	;; condjump to .L657 occurs
.L655:
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
	||	addkpc	.s2	.L669, B3, 0
		mvklh	.s2	65407, B4
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	3
.L669:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L663
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L663 occurs
		call	.s2	(__c6xabi_gtf)
	||	mv	.d1	A10, A4
	||	mvk	.l2	-1, B4
		addkpc	.s2	.L670, B3, 0
		mvklh	.s2	32639, B4
	;; call to (__c6xabi_gtf) occurs, with return value
		nop	3
.L670:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L663:
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
	||	addkpc	.s2	.L677, B3, 0
		mvklh	.s2	65519, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L677:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L671
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L671 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	-1, B4
	||	mvk	.l2	-1, B5
		addkpc	.s2	.L678, B3, 0
		mvklh	.s2	32751, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L678:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L671:
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
	||	addkpc	.s2	.L685, B3, 0
		mvklh	.s2	65519, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L685:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L679
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L679 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	-1, B4
	||	mvk	.l2	-1, B5
		addkpc	.s2	.L686, B3, 0
		mvklh	.s2	32751, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L686:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L679:
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
	||	addkpc	.s2	.L689, B3, 0
	;; call to (__c6xabi_fltid) occurs, with return value
		nop	4
.L689:
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
	||	addkpc	.s2	.L705, B3, 0
		stdw	.d2t1	A11:A10, *+B15(8)
		mv	.d1	A4, A12
	||	mv	.s1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L705:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	mv	.s1	A12, A4
	[A0]	b	.s1	.L691
		nop	5
	;; condjump to .L691 occurs
		callp	.s2	(__c6xabi_addf), B3
		callp	.s2	(__c6xabi_eqf), B3
	||	mv	.l2x	A12, B4
		mv	.d1	A4, A1
	[A1]	b	.s1	.L691
		nop	5
	;; condjump to .L691 occurs
		and	.s1	1, A10, A0
	||	mvk	.d1	0, A11
	||	cmpgt	.l1	0, A10, A2
	[!A0]	b	.s1	.L693
	[A2]	mvklh	.s1	16128, A11
	[!A2]	mvklh	.s1	16384, A11
		nop	3
	;; condjump to .L693 occurs
.L694:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.d1	A12, A4
	||	mv	.l2x	A11, B4
		mv	.d1	A4, A12
.L693:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L691
		nop	5
	;; condjump to .L691 occurs
.L695:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A11, A4
		and	.d1	1, A10, A2
	||	mv	.s1	A4, A11
	[A2]	b	.s1	.L694
		nop	5
	;; condjump to .L694 occurs
		b	.s1	.L695
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L695 occurs
.L691:
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
	||	addkpc	.s2	.L725, B3, 0
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t1	A14, *+B15(20)
		mv	.l2x	A13, B5
	||	mv	.l1x	B4, A10
	;; call to (__c6xabi_unordd) occurs, with return value
		mv	.l2x	A4, B4
.L725:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L711
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L711 occurs
		callp	.s2	(__c6xabi_addd), B3
		call	.s2	(__c6xabi_eqd)
	||	mv	.l2x	A12, B4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L727, B3, 0
	;; call to (__c6xabi_eqd) occurs, with return value
		nop	4
.L727:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L711
		nop	5
	;; condjump to .L711 occurs
		and	.s1	1, A10, A0
	||	mvk	.d1	0, A15
	||	cmpgt	.l1	0, A10, A2
	[!A0]	b	.s1	.L713
	||	mvk	.d1	0, A14
	[A2]	mvklh	.s1	16352, A15
	[!A2]	mvklh	.s1	16384, A15
		nop	3
	;; condjump to .L713 occurs
.L714:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A13, A12, A5:A4
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L728, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L728:
		dmv	.s1	A5, A4, A13:A12
.L713:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L711
		nop	5
	;; condjump to .L711 occurs
.L715:
		call	.s2	(__c6xabi_mpyd)
	||	mv	.l2x	A14, B4
	||	mv	.d1	A14, A4
	||	mv	.s1	A15, A5
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L729, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L729:
		and	.d1	1, A10, A2
	||	dmv	.s1	A5, A4, A15:A14
	[A2]	b	.s1	.L714
		nop	5
	;; condjump to .L714 occurs
		b	.s1	.L715
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L715 occurs
.L711:
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
	||	addkpc	.s2	.L745, B3, 0
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t1	A14, *+B15(20)
		mv	.l2x	A13, B5
	||	mv	.l1x	B4, A10
	;; call to (__c6xabi_unordd) occurs, with return value
		mv	.l2x	A4, B4
.L745:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L731
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L731 occurs
		callp	.s2	(__c6xabi_addd), B3
		call	.s2	(__c6xabi_eqd)
	||	mv	.l2x	A4, B4
		mv	.l2x	A5, B5
	||	dmv	.s1	A13, A12, A5:A4
	||	addkpc	.s2	.L747, B3, 0
	;; call to (__c6xabi_eqd) occurs, with return value
		nop	4
.L747:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L731
		nop	5
	;; condjump to .L731 occurs
		and	.s1	1, A10, A0
	||	mvk	.d1	0, A15
	||	cmpgt	.l1	0, A10, A2
	[!A0]	b	.s1	.L733
	||	mvk	.d1	0, A14
	[A2]	mvklh	.s1	16352, A15
	[!A2]	mvklh	.s1	16384, A15
		nop	3
	;; condjump to .L733 occurs
.L734:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A13, A12, A5:A4
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L748, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L748:
		dmv	.s1	A5, A4, A13:A12
.L733:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L731
		nop	5
	;; condjump to .L731 occurs
.L735:
		call	.s2	(__c6xabi_mpyd)
	||	mv	.l2x	A14, B4
	||	mv	.d1	A14, A4
	||	mv	.s1	A15, A5
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L749, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L749:
		and	.d1	1, A10, A2
	||	dmv	.s1	A5, A4, A15:A14
	[A2]	b	.s1	.L734
		nop	5
	;; condjump to .L734 occurs
		b	.s1	.L735
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L735 occurs
.L731:
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
	[!A1]	b	.s1	.L751
		nop	5
	;; condjump to .L751 occurs
.L752:
		ldb	.d1t1	*A3++[1], A6
	||	add	.s1	-1, A1, A1
		ldb	.d2t1	*B4++[1], A5
	[A1]	b	.s1	.L752
		nop	3
		xor	.d1	A5, A6, A7
		stb	.d1t1	A7, *-A3(1)
	;; condjump to .L752 occurs
.L751:
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
	[!A0]	b	.s1	.L760
		nop	5
	;; condjump to .L760 occurs
.L761:
		ldb	.d1t1	*++A3[1], A2
		nop	4
	[A2]	b	.s1	.L761
		nop	5
	;; condjump to .L761 occurs
.L760:
	[!A1]	b	.s1	.L762
	||[A1]	sub	.d2	B4, 1, B4
		nop	5
	;; condjump to .L762 occurs
.L763:
		ldb	.d2t1	*++B4[1], A5
	||	sub	.d1	A1, 1, A1
		nop	4
		ext	.s1	A5, 24, 24, A0
	||	stb	.d1t1	A5, *A3++[1]
	[!A0]	b	.s1	.L765
		nop	5
	;; condjump to .L765 occurs
	[A1]	b	.s1	.L763
		nop	5
	;; condjump to .L763 occurs
.L762:
		mvk	.d1	0, A6
		stb	.d1t1	A6, *A3
.L765:
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
	[!A1]	b	.s1	.L774
		nop	5
	;; condjump to .L774 occurs
.L775:
		add	.d1	A5, A4, A3
	||	sub	.d2	B4, 1, B4
		ldb	.d1t1	*A3, A1
		nop	4
	[A1]	b	.s1	.L777
		nop	5
	;; condjump to .L777 occurs
.L774:
		ret	.s2	B3
		nop	5
	;; return occurs
.L777:
		mv	.s1x	B4, A1
	||	add	.d1	A4, 1, A4
	[A1]	b	.s1	.L775
		nop	5
	;; condjump to .L775 occurs
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
	[!A0]	b	.s1	.L788
	||[A0]	sub	.d2	B4, 1, B4
		shl	.s1	A3, 24, A8
		nop	4
	;; condjump to .L788 occurs
.L784:
		mv	.l1x	B4, A6
	||	shr	.s1	A8, 24, A5
.L787:
		ldb	.d1t1	*++A6[1], A1
		nop	4
		cmpeq	.l1	A5, A1, A0
	||[!A1]	b	.s1	.L793
		nop	5
	;; condjump to .L793 occurs
	[!A0]	b	.s1	.L787
		nop	5
	;; condjump to .L787 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L793:
		ldb	.d1t1	*++A4[1], A7
		nop	4
		ext	.s1	A7, 24, 24, A2
	[A2]	b	.s1	.L784
		shl	.s1	A7, 24, A8
		nop	4
	;; condjump to .L784 occurs
.L788:
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
.L796:
		mv	.s1	A3, A6
	||	ldb	.d1t1	*A3++[1], A7
		nop	4
		shl	.s1	A7, 24, A5
		mv	.d1	A5, A1
	||	ext	.s1	A7, 24, 24, A8
	[A1]	b	.s1	.L796
	||	cmpeq	.l1x	A8, B4, A0
	[A0]	mv	.d1	A6, A4
		nop	4
	;; condjump to .L796 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
		mv	.d1	A4, A3
	||	ldb	.d2t1	*B4, A4
	||	mv	.s1x	B4, A5
		nop	4
		ext	.s1	A4, 24, 24, A0
	[!A0]	b	.s1	.L810
		shl	.s1	A4, 24, A17
		nop	4
	;; condjump to .L810 occurs
.L802:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L802
		nop	5
	;; condjump to .L802 occurs
		mv	.l1x	B4, A6
		sub	.d1	A5, A6, A2
	[!A2]	b	.s1	.L810
	||[A2]	add	.d1x	A2, B4, A16
	[A2]	shr	.s1	A17, 24, A17
		nop	4
	;; condjump to .L810 occurs
.L808:
		ldb	.d1t1	*A3, A8
	||	mv	.l1	A3, A4
	||	mv	.s1	A3, A7
		add	.d1	A3, 1, A3
		nop	3
		ext	.s1	A8, 24, 24, A0
		cmpeq	.l1	A17, A0, A1
	[A1]	b	.s1	.L807
		nop	5
	;; condjump to .L807 occurs
	[A0]	b	.s1	.L808
		nop	5
	;; condjump to .L808 occurs
		mvk	.d1	0, A4
.L800:
		ret	.s2	B3
		nop	5
	;; return occurs
.L807:
		mv	.l1x	B4, A20
	||	extu	.s1	A8, 24, 24, A27
.L804:
		ldb	.d1t1	*A20, A9
	||	mv	.l1	A20, A18
	||	add	.s1	1, A20, A20
		cmpeq	.l1	A20, A16, A23
		cmpeq	.l1	0, A23, A25
		nop	2
		extu	.s1	A9, 24, 24, A19
		cmpeq	.l1	0, A19, A22
		cmpeq	.l1	A27, A19, A21
		cmpeq	.l1	0, A22, A24
		and	.d1	A21, A24, A26
		and	.d1	A26, A25, A2
	[!A2]	b	.s1	.L805
	||[A2]	ldbu	.d1t1	*++A7[1], A27
		nop	4
		mv	.d1	A27, A0
	;; condjump to .L805 occurs
	[A0]	b	.s1	.L804
		nop	5
	;; condjump to .L804 occurs
		mv	.d1	A20, A18
.L805:
		ldbu	.d1t1	*A18, A28
	||	add	.s1	1, A4, A3
		nop	4
		cmpeq	.l1	A28, A27, A1
	[A1]	b	.s1	.L800
	[!A1]	b	.s1	.L808
		nop	5
	;; condjump to .L800 occurs
	;; jump to .L808 occurs
.L810:
		ret	.s2	B3
	||	mv	.d1	A3, A4
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
	||	addkpc	.s2	.L829, B3, 0
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		dmv	.s1	A5, A4, A11:A10
	||	mv	.l1x	B4, A12
	||	mvk	.d2	0, B4
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	1
.L829:
		mv	.d1	A4, A0
	||	mvk	.d2	0, B4
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.l2	0, B5
	[A0]	b	.s1	.L828
		nop	5
	;; condjump to .L828 occurs
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	||	mvk	.d2	0, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.l2	0, B5
	[!A1]	b	.s1	.L820
		nop	5
	;; condjump to .L820 occurs
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A2
	[A2]	b	.s1	.L819
		nop	5
	;; condjump to .L819 occurs
.L820:
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
.L828:
		callp	.s2	(__c6xabi_gtd), B3
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L820
		nop	5
	;; condjump to .L820 occurs
.L819:
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
		mv	.d1	A4, A3
	||	cmpgtu	.l2	B6, B4, B5
	||	sub	.s2	B4, B6, B4
	||	mv	.s1x	B6, A0
	[!A0]	b	.s1	.L833
	||	cmpeq	.l2	1, B6, B0
		add	.d1x	A3, B4, A9
		mv	.s1x	B5, A1
	||	cmpltu	.l1	A9, A3, A2
		nop	3
	;; condjump to .L833 occurs
	[A1]	b	.s1	.L841
		nop	5
	;; condjump to .L841 occurs
	[A2]	b	.s1	.L841
	||[!A2]	ldb	.d1t1	*A6, A16
		nop	5
	;; condjump to .L841 occurs
.L838:
		ldb	.d1t1	*A3, A5
	||	mv	.l1	A3, A4
	||	add	.s1	1, A3, A3
		nop	4
		cmpeq	.l1	A16, A5, A0
	[A0]	b	.s1	.L850
		nop	5
	;; condjump to .L850 occurs
.L835:
		cmpgtu	.l1	A3, A9, A1
	[!A1]	b	.s1	.L838
		nop	5
	;; condjump to .L838 occurs
.L841:
		mvk	.d1	0, A4
.L833:
		ret	.s2	B3
		nop	5
	;; return occurs
.L850:
	[B0]	b	.s1	.L833
	||	sub	.d1	A3, 1, A7
	||	mv	.l1	A6, A18
		add	.l1x	-1, B6, A1
		nop	4
	;; condjump to .L833 occurs
.L836:
		ldbu	.d1t1	*++A7[1], A17
	||	add	.s1	-1, A1, A1
		ldbu	.d1t1	*++A18[1], A8
		nop	4
		cmpeq	.l1	A8, A17, A0
	[!A0]	b	.s1	.L835
		nop	5
	;; condjump to .L835 occurs
	[A1]	b	.s1	.L836
		nop	5
	;; condjump to .L836 occurs
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
	[!A0]	b	.s1	.L852
	||	stw	.d2t2	B14, *+B15(24)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A11
	||	mv	.s1	A6, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	2
	;; condjump to .L852 occurs
		callp	.s2	(memmove), B3
		nop	1
.L852:
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
	||	addkpc	.s2	.L888, B3, 0
		stw	.d2t1	A15, *+B15(48)
		dmv	.s1	A5, A4, A11:A10
	||	stdw	.d2t2	B11:B10, *+B15(32)
		stw	.d2t1	A14, *+B15(24)
	;; call to (__c6xabi_ltd) occurs, with return value
		mv	.l1x	B4, A13
	||	mvk	.d2	0, B4
.L888:
		mv	.d1	A4, A0
	||	mvk	.d2	0, B5
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.l2	0, B4
	[A0]	b	.s1	.L886
	||	mvklh	.s2	16368, B5
		nop	5
	;; condjump to .L886 occurs
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[!A1]	b	.s1	.L887
	||[A1]	mvk	.d2	0, B12
		nop	5
	;; condjump to .L887 occurs
.L862:
		mvk	.d2	0, B11
	||	mvk	.d1	0, A15
	||	mvk	.l1	0, A12
	||	mvk	.l2	0, B10
		mvklh	.s2	16352, B11
	||	mvk	.d1	0, A14
	||	mvklh	.s1	16368, A15
.L869:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A11, A10, A5:A4
	||	add	.d1	A12, 1, A12
		addkpc	.s2	.L890, B3, 0
		dmv	.s2	B11, B10, B5:B4
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	3
.L890:
		call	.s2	(__c6xabi_ged)
	||	dmv	.s1	A5, A4, A11:A10
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L891, B3, 0
	;; call to (__c6xabi_ged) occurs, with return value
		nop	4
.L891:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L869
		nop	5
	;; condjump to .L869 occurs
.L870:
		mv	.s1x	B12, A1
	||	stw	.d1t1	A12, *A13
	[!A1]	b	.s1	.L859
	[!A1]	dmv	.s1	A11, A10, A5:A4
	[A1]	mvk	.d1	0, A5
	||[A1]	mv	.s1	A10, A4
	[A1]	mvklh	.s1	32768, A5
	[A1]	xor	.d1	A5, A11, A5
		nop	1
	;; condjump to .L859 occurs
.L859:
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
.L887:
		call	.s2	(__c6xabi_ltd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		addkpc	.s2	.L892, B3, 0
		mvklh	.s2	16352, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L892:
		mv	.d1	A4, A2
	[!A2]	b	.s1	.L865
		nop	5
	;; condjump to .L865 occurs
		callp	.s2	(__c6xabi_eqd), B3
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L882
		nop	5
	;; condjump to .L882 occurs
.L865:
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
.L886:
		call	.s2	(__c6xabi_led)
	||	mvk	.d2	0, B4
	||	mvk	.d1	0, A6
	||	mvk	.l2	0, B5
	||	mv	.s1	A10, A14
		mvklh	.s1	32768, A6
	||	addkpc	.s2	.L894, B3, 0
		xor	.d1	A6, A11, A15
	||	mvklh	.s2	49136, B5
	;; call to (__c6xabi_led) occurs, with return value
		nop	3
.L894:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L862
	||[A1]	mvk	.d2	1, B12
	[A1]	dmv	.s1	A15, A14, A11:A10
		nop	4
	;; condjump to .L862 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		addkpc	.s2	.L895, B3, 0
		mvklh	.s2	49120, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L895:
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L859
	||[!A0]	stw	.d1t1	A0, *A13
	[!A0]	dmv	.s1	A11, A10, A5:A4
		nop	4
	;; condjump to .L859 occurs
		dmv	.s1	A15, A14, A11:A10
	||	mvk	.d1	0, A15
	||	mvk	.d2	1, B12
	||	mvk	.l1	0, A12
		mvk	.d1	0, A14
	||	mvklh	.s1	16352, A15
.L871:
		call	.s2	(__c6xabi_addd)
	||	mv	.l2x	A10, B4
	||	mv	.d1	A10, A4
	||	mv	.l1	A11, A5
	||	add	.s1	-1, A12, A12
		mv	.l2x	A11, B5
	||	addkpc	.s2	.L896, B3, 0
	;; call to (__c6xabi_addd) occurs, with return value
		nop	4
.L896:
		call	.s2	(__c6xabi_ltd)
	||	dmv	.s1	A5, A4, A11:A10
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L897, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L897:
		mv	.d1	A4, A2
	||	mv	.l2x	A10, B4
	[!A2]	b	.s1	.L870
	||	mv	.l2x	A11, B5
	||[A2]	mv	.d1	A10, A4
	||[A2]	mv	.l1	A11, A5
	[A2]	sub	.d1	A12, 1, A12
		nop	4
	;; condjump to .L870 occurs
		callp	.s2	(__c6xabi_addd), B3
		call	.s2	(__c6xabi_ltd)
	||	dmv	.s1	A5, A4, A11:A10
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L899, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L899:
		mv	.d1	A4, A2
	[A2]	b	.s1	.L871
		nop	5
	;; condjump to .L871 occurs
		b	.s1	.L870
		nop	5
	;; jump to .L870 occurs
.L882:
		b	.s1	.L871
	||	mvk	.d2	0, B12
	||	mvk	.d1	0, A12
		dmv	.s1	A11, A10, A15:A14
		dmv	.s1	A15, A14, A11:A10
	||	mvk	.d1	0, A14
	||	mvk	.l1	0, A15
		mvklh	.s1	16352, A15
		nop	2
	;; jump to .L871 occurs
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
		or	.d1	A5, A4, A0
	||	mv	.l1	A4, A23
	||	mv	.s1	A5, A9
	[!A0]	b	.s1	.L900
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; condjump to .L900 occurs
.L902:
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
	[A1]	b	.s1	.L902
	||	mv	.d1	A0, A4
	||	add	.l1x	A17, B5, A19
		nop	1
		mv	.l2x	A19, B5
		nop	3
	;; condjump to .L902 occurs
.L900:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
		cmpgtu	.l1x	A4, B4, A0
	||	mvk	.d1	1, A2
	||	mv	.s1	A4, A7
	[!A0]	b	.s1	.L922
		nop	5
	;; condjump to .L922 occurs
.L908:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L909
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A3
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A3, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L909 occurs
	[A1]	b	.s1	.L908
		nop	5
	;; condjump to .L908 occurs
	[!A2]	b	.s1	.L912
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L912 occurs
.L909:
		mvk	.d1	0, A4
.L914:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L914
		nop	5
	;; condjump to .L914 occurs
.L912:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L922:
		b	.s1	.L914
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L914 occurs
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
	[A0]	b	.s1	.L927
	[A0]	mvk	.s1	63, A4
		nop	4
	;; condjump to .L927 occurs
	[!A1]	lmbd	.l1	1, A4, A4
	[!A1]	addk	.s1	32, A4
	||[A1]	lmbd	.l1	1, A6, A4
		sub	.d1	A4, 1, A4
.L927:
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
	[!A0]	b	.s1	.L934
		nop	5
	;; condjump to .L934 occurs
.L936:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L936
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L936 occurs
.L934:
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
	[A1]	b	.s1	.L942
		nop	5
	;; condjump to .L942 occurs
		add	.d1x	A6, B4, A8
		cmpgtu	.l1	A4, A8, A1
	[!A1]	b	.s1	.L957
		nop	5
	;; condjump to .L957 occurs
.L942:
	[!A0]	b	.s1	.L945
	||	add	.l1x	-8, B4, A16
	||	sub	.d1	A4, 8, A18
		shl	.s1	A0, 3, A9
		sub	.d1	A9, 8, A17
		shru	.s1	A17, 3, A19
		add	.d1	A19, 1, A1
		nop	1
	;; condjump to .L945 occurs
.L946:
		add	.s1	-1, A1, A1
	||	lddw	.d1t1	*++A16[1], A29:A28
	[A1]	b	.s1	.L946
		nop	3
		stdw	.d1t1	A29:A28, *++A18[1]
		nop	1
	;; condjump to .L946 occurs
.L945:
		cmpltu	.l1	A7, A6, A2
	||	sub	.d1	A7, 1, A21
	||	add	.s1x	-1, B4, A22
	[!A2]	b	.s1	.L941
	||	add	.d1	A22, A6, A23
	||	add	.l1	A4, A21, A24
		add	.d2x	B4, A21, B4
		nop	1
		mv	.l1x	B4, A25
		sub	.d1	A23, A25, A0
		nop	1
	;; condjump to .L941 occurs
.L947:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*++B4[1], A27
	[A0]	b	.s1	.L947
		nop	3
		stb	.d1t1	A27, *++A24[1]
		nop	1
	;; condjump to .L947 occurs
.L941:
		ret	.s2	B3
		nop	5
	;; return occurs
.L957:
		mv	.d1	A6, A2
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A8, A3, A0
	[!A2]	b	.s1	.L941
		nop	5
	;; condjump to .L941 occurs
.L948:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A8[1], A27
	[A0]	b	.s1	.L948
		nop	3
		stb	.d1t1	A27, *--A4[1]
		nop	1
	;; condjump to .L948 occurs
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
	[A1]	b	.s1	.L959
		nop	5
	;; condjump to .L959 occurs
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[!A1]	b	.s1	.L976
		nop	5
	;; condjump to .L976 occurs
.L959:
	[!A0]	b	.s1	.L962
	||	add	.l1x	-2, B4, A9
	||	sub	.d1	A4, 2, A17
		shl	.s1	A0, 1, A8
		sub	.d1	A8, 2, A16
		shru	.s1	A16, 1, A18
		add	.d1	A18, 1, A1
		nop	1
	;; condjump to .L962 occurs
.L963:
		add	.s1	-1, A1, A1
	||	ldh	.d1t1	*++A9[1], A24
	[A1]	b	.s1	.L963
		nop	3
		sth	.d1t1	A24, *++A17[1]
		nop	1
	;; condjump to .L963 occurs
.L962:
		and	.d1	1, A6, A2
	[!A2]	b	.s1	.L958
		nop	5
	;; condjump to .L958 occurs
		sub	.d1	A6, 1, A20
		add	.d1x	A20, B4, A21
	||	add	.s1	A4, A20, A22
		ldb	.d1t1	*A21, A23
		nop	4
		stb	.d1t1	A23, *A22
.L958:
		ret	.s2	B3
		nop	5
	;; return occurs
.L976:
		mv	.d1	A6, A2
	||	sub	.l1	A5, A3, A0
	||	add	.s1	A4, A6, A6
	[!A2]	b	.s1	.L958
		nop	5
	;; condjump to .L958 occurs
.L965:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A5[1], A24
	[A0]	b	.s1	.L965
		nop	3
		stb	.d1t1	A24, *--A6[1]
		nop	1
	;; condjump to .L965 occurs
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
	[A1]	b	.s1	.L978
		nop	5
	;; condjump to .L978 occurs
		add	.d1x	A6, B4, A7
		cmpgtu	.l1	A4, A7, A1
	[!A1]	b	.s1	.L993
		nop	5
	;; condjump to .L993 occurs
.L978:
	[!A0]	b	.s1	.L981
	||	add	.l1x	-4, B4, A16
	||	sub	.d1	A4, 4, A18
		shl	.s1	A0, 2, A9
		sub	.d1	A9, 4, A17
		shru	.s1	A17, 2, A19
		add	.d1	A19, 1, A1
		nop	1
	;; condjump to .L981 occurs
.L982:
		add	.s1	-1, A1, A1
	||	ldw	.d1t1	*++A16[1], A27
	[A1]	b	.s1	.L982
		nop	3
		stw	.d1t1	A27, *++A18[1]
		nop	1
	;; condjump to .L982 occurs
.L981:
		cmpltu	.l1	A8, A6, A2
	||	sub	.d1	A8, 1, A21
	||	add	.s1x	-1, B4, A22
	[!A2]	b	.s1	.L977
	||	add	.d1	A22, A6, A23
	||	add	.l1	A4, A21, A24
		add	.d2x	B4, A21, B4
		nop	1
		mv	.l1x	B4, A25
		sub	.d1	A23, A25, A0
		nop	1
	;; condjump to .L977 occurs
.L983:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*++B4[1], A27
	[A0]	b	.s1	.L983
		nop	3
		stb	.d1t1	A27, *++A24[1]
		nop	1
	;; condjump to .L983 occurs
.L977:
		ret	.s2	B3
		nop	5
	;; return occurs
.L993:
		mv	.d1	A6, A2
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A7, A3, A0
	[!A2]	b	.s1	.L977
		nop	5
	;; condjump to .L977 occurs
.L984:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A7[1], A27
	[A0]	b	.s1	.L984
		nop	3
		stb	.d1t1	A27, *--A4[1]
		nop	1
	;; condjump to .L984 occurs
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
		addkpc	.s2	.L996, B3, 0
		nop	4
.L996:
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
	||	addkpc	.s2	.L999, B3, 0
	;; call to (__c6xabi_fltud) occurs, with return value
		nop	4
.L999:
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
	||	addkpc	.s2	.L1002, B3, 0
	;; call to (__c6xabi_fltuf) occurs, with return value
		nop	4
.L1002:
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
	||	addkpc	.s2	.L1005, B3, 0
	;; call to (__c6xabi_fltulld) occurs, with return value
		nop	4
.L1005:
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
	||	addkpc	.s2	.L1008, B3, 0
	;; call to (__c6xabi_fltullf) occurs, with return value
		nop	4
.L1008:
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
		addkpc	.s2	.L1011, B3, 0
		nop	4
.L1011:
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
		extu	.s1	A4, 16, 16, A0
		shr	.s1	A0, 15, A1
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	0, A4
	[!A1]	shr	.s1	A0, 14, A4
		mv	.d1	A4, A2
	||	shr	.s1	A0, 13, A1
		nop	3
	;; condjump to .L1012 occurs
	[A2]	b	.s1	.L1012
		nop	5
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	2, A4
		shr	.s1	A0, 12, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	3, A4
		shr	.s1	A0, 11, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	4, A4
		shr	.s1	A0, 10, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	5, A4
		shr	.s1	A0, 9, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	6, A4
		shr	.s1	A0, 8, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	7, A4
		shr	.s1	A0, 7, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	8, A4
		shr	.s1	A0, 6, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	9, A4
		shr	.s1	A0, 5, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	10, A4
		shr	.s1	A0, 4, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	11, A4
		shr	.s1	A0, 3, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	12, A4
		shr	.s1	A0, 2, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	13, A4
		shr	.s1	A0, 1, A1
		nop	4
	;; condjump to .L1012 occurs
	[A1]	b	.s1	.L1012
	||[A1]	mvk	.d1	14, A4
		nop	5
	;; condjump to .L1012 occurs
	[A0]	mvk	.d1	15, A4
	||[!A0]	mvk	.s1	16, A4
.L1012:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
		and	.d1	1, A4, A0
	||	mvk	.s1	16, A3
	[A0]	b	.s1	.L1032
	||[A0]	mvk	.d1	0, A4
		and	.d1	2, A4, A1
	||	mvk	.s1	32, A5
		mvk	.s1	64, A6
		mvk	.s1	128, A7
		mvk	.s1	256, A8
		mvk	.s1	512, A9
	;; condjump to .L1032 occurs
	[A1]	b	.s1	.L1032
	||[A1]	mvk	.d1	1, A4
		and	.d1	4, A4, A2
	||	mvk	.s1	1024, A16
		mvk	.s1	2048, A17
		mvk	.s1	4096, A18
		mvk	.s1	8192, A19
		mvk	.s1	16384, A20
	;; condjump to .L1032 occurs
	[A2]	b	.s1	.L1032
	||[A2]	mvk	.d1	2, A4
		and	.d1	8, A4, A0
		nop	4
	;; condjump to .L1032 occurs
	[A0]	b	.s1	.L1032
	||[A0]	mvk	.d1	3, A4
		and	.d1	A3, A4, A1
		nop	4
	;; condjump to .L1032 occurs
	[A1]	b	.s1	.L1032
	||[A1]	mvk	.d1	4, A4
		and	.d1	A5, A4, A2
		nop	4
	;; condjump to .L1032 occurs
	[A2]	b	.s1	.L1032
	||[A2]	mvk	.d1	5, A4
		and	.d1	A6, A4, A0
		nop	4
	;; condjump to .L1032 occurs
	[A0]	b	.s1	.L1032
	||[A0]	mvk	.d1	6, A4
		and	.d1	A7, A4, A1
		nop	4
	;; condjump to .L1032 occurs
	[A1]	b	.s1	.L1032
	||[A1]	mvk	.d1	7, A4
		and	.d1	A8, A4, A2
		nop	4
	;; condjump to .L1032 occurs
	[A2]	b	.s1	.L1032
	||[A2]	mvk	.d1	8, A4
		and	.d1	A9, A4, A0
		nop	4
	;; condjump to .L1032 occurs
	[A0]	b	.s1	.L1032
	||[A0]	mvk	.d1	9, A4
		and	.d1	A16, A4, A1
		nop	4
	;; condjump to .L1032 occurs
	[A1]	b	.s1	.L1032
	||[A1]	mvk	.d1	10, A4
		and	.d1	A17, A4, A2
		nop	4
	;; condjump to .L1032 occurs
	[A2]	b	.s1	.L1032
	||[A2]	mvk	.d1	11, A4
		and	.d1	A18, A4, A0
		nop	4
	;; condjump to .L1032 occurs
	[A0]	b	.s1	.L1032
	||[A0]	mvk	.d1	12, A4
		and	.d1	A19, A4, A1
		nop	4
	;; condjump to .L1032 occurs
	[A1]	mvk	.d1	13, A4
	||[A1]	b	.s1	.L1032
		and	.d1	A20, A4, A2
		nop	4
	;; condjump to .L1032 occurs
	[A2]	b	.s1	.L1032
	||[A2]	mvk	.d1	14, A4
	[!A2]	extu	.s1	A4, 16, 16, A4
	[!A2]	shr	.s1	A4, 15, A4
		mv	.d1	A4, A0
		nop	2
	;; condjump to .L1032 occurs
	[A0]	mvk	.d1	15, A4
	||[!A0]	mvk	.s1	16, A4
.L1032:
		ret	.s2	B3
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
	||	addkpc	.s2	.L1062, B3, 0
		mvklh	.s2	18176, B4
	||	mv	.d1	A4, A10
	;; call to (__c6xabi_gef) occurs, with return value
		nop	3
.L1062:
		mv	.d1	A4, A0
	||	mv	.s1	A10, A4
	[A0]	b	.s1	.L1061
		nop	5
	;; condjump to .L1061 occurs
		callp	.s2	(__c6xabi_fixfi), B3
		ldw	.d2t2	*+B15(12), B3
		ldw	.d2t1	*+B15(8), A10
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	2
		ret	.s2	B3
		nop	5
	;; return occurs
.L1061:
		call	.s2	(__c6xabi_subf)
	||	mvk	.l2	0, B4
		addkpc	.s2	.L1064, B3, 0
		mvklh	.s2	18176, B4
	;; call to (__c6xabi_subf) occurs, with return value
		nop	3
.L1064:
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
		extu	.s1	A4, 16, 16, A7
	||	and	.d1	1, A4, A3
		shr	.s1	A7, 1, A4
		shr	.s1	A7, 2, A6
	||	and	.d1	1, A4, A5
		add	.d1	A5, A3, A9
	||	and	.l1	1, A6, A8
	||	shr	.s1	A7, 3, A16
		add	.d1	A9, A8, A17
	||	and	.l1	1, A16, A18
	||	shr	.s1	A7, 4, A19
		add	.d1	A17, A18, A20
	||	and	.l1	1, A19, A21
	||	shr	.s1	A7, 5, A22
		add	.d1	A20, A21, A23
	||	and	.l1	1, A22, A24
	||	shr	.s1	A7, 6, A25
		add	.d1	A23, A24, A26
	||	and	.l1	1, A25, A27
	||	shr	.s1	A7, 7, A28
		add	.d1	A26, A27, A29
	||	and	.l1	1, A28, A30
	||	shr	.s1	A7, 8, A31
		shr	.s1	A7, 9, A3
	||	add	.d1	A29, A30, A0
	||	and	.l1	1, A31, A1
		and	.d1	1, A3, A4
	||	shr	.s1	A7, 10, A6
	||	add	.l1	A0, A1, A2
		add	.d1	A2, A4, A8
	||	shr	.s1	A7, 11, A5
	||	and	.l1	1, A6, A9
		shr	.s1	A7, 12, A18
	||	add	.d1	A8, A9, A16
	||	and	.l1	1, A5, A17
		shr	.s1	A7, 13, A21
	||	add	.d1	A16, A17, A19
	||	and	.l1	1, A18, A20
	||	ret	.s2	B3
		shr	.s1	A7, 14, A24
	||	add	.d1	A19, A20, A22
	||	and	.l1	1, A21, A23
		add	.d1	A22, A23, A25
	||	and	.l1	1, A24, A26
	||	shr	.s1	A7, 15, A7
		add	.d1	A25, A26, A27
		add	.d1	A27, A7, A28
		and	.d1	1, A28, A4
	;; return occurs
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
		extu	.s1	A4, 16, 16, A3
	||	and	.d1	1, A4, A4
		shr	.s1	A3, 1, A6
		shr	.s1	A3, 2, A5
	||	and	.d1	1, A6, A7
		add	.d1	A7, A4, A9
	||	and	.l1	1, A5, A8
	||	shr	.s1	A3, 3, A16
		add	.d1	A9, A8, A17
	||	and	.l1	1, A16, A18
	||	shr	.s1	A3, 4, A19
		add	.d1	A17, A18, A20
	||	and	.l1	1, A19, A21
	||	shr	.s1	A3, 5, A22
		add	.d1	A20, A21, A23
	||	and	.l1	1, A22, A24
	||	shr	.s1	A3, 6, A25
		add	.d1	A23, A24, A26
	||	and	.l1	1, A25, A27
	||	shr	.s1	A3, 7, A28
		add	.d1	A26, A27, A29
	||	shr	.s1	A3, 8, A31
	||	and	.l1	1, A28, A30
		shr	.s1	A3, 9, A1
	||	add	.d1	A29, A30, A6
	||	and	.l1	1, A31, A0
		shr	.s1	A3, 10, A4
	||	add	.d1	A6, A0, A7
	||	and	.l1	1, A1, A2
		and	.d1	1, A4, A5
	||	shr	.s1	A3, 11, A9
	||	add	.l1	A7, A2, A8
		shr	.s1	A3, 12, A18
	||	add	.d1	A8, A5, A16
	||	and	.l1	1, A9, A17
	||	ret	.s2	B3
		shr	.s1	A3, 13, A21
	||	add	.d1	A16, A17, A19
	||	and	.l1	1, A18, A20
		shr	.s1	A3, 14, A24
	||	add	.d1	A19, A20, A22
	||	and	.l1	1, A21, A23
		add	.d1	A22, A23, A25
	||	and	.l1	1, A24, A26
	||	shr	.s1	A3, 15, A3
		add	.d1	A25, A26, A27
		add	.d1	A27, A3, A4
	;; return occurs
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
		mv	.l1	A4, A0
	||	mv	.s1	A4, A3
	||	mvk	.d1	0, A4
	[!A0]	b	.s1	.L1070
		nop	5
	;; condjump to .L1070 occurs
.L1072:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L1072
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L1072 occurs
.L1070:
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
	[!A0]	b	.s1	.L1077
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1077 occurs
	[!A1]	b	.s1	.L1077
		nop	5
	;; condjump to .L1077 occurs
.L1079:
		and	.d1x	1, B4, A5
	||	shru	.s2	B4, 1, B4
		neg	.l1	A5, A6
		mv	.l1x	B4, A2
	||	and	.d1	A3, A6, A7
	||	shl	.s1	A3, 1, A3
	[A2]	b	.s1	.L1079
	||	add	.d1	A4, A7, A4
		nop	5
	;; condjump to .L1079 occurs
.L1077:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
		mv	.s1x	B4, A3
	||	mvk	.d1	1, A2
	||	mv	.l1	A4, A7
		cmpltu	.l1	A3, A4, A0
	[!A0]	b	.s1	.L1100
		nop	5
	;; condjump to .L1100 occurs
.L1086:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1087
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1087 occurs
	[A1]	b	.s1	.L1086
		nop	5
	;; condjump to .L1086 occurs
	[!A2]	b	.s1	.L1090
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1090 occurs
.L1087:
		mvk	.d1	0, A4
.L1092:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L1092
		nop	5
	;; condjump to .L1092 occurs
.L1090:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1100:
		b	.s1	.L1092
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1092 occurs
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
	||	addkpc	.s2	.L1107, B3, 0
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	4
.L1107:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	[A0]	b	.s1	.L1101
	||[A0]	mvk	.d1	-1, A4
	[!A0]	mv	.d1	A10, A4
		nop	4
	;; condjump to .L1101 occurs
		callp	.s2	(__c6xabi_gtf), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L1101:
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
	||	addkpc	.s2	.L1115, B3, 0
		mv	.l1x	B5, A13
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L1115:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L1109
	||[A0]	mvk	.d1	-1, A4
	||	mv	.l2x	A13, B5
	[!A0]	dmv	.s1	A11, A10, A5:A4
		nop	4
	;; condjump to .L1109 occurs
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L1109:
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
	||[A0]	b	.s1	.L1123
	||[A0]	mvk	.d1	1, A2
	[!A0]	mvk	.d1	0, A2
		mv	.l1x	B4, A1
	[!A1]	mvk	.d1	0, A4
		nop	2
	;; condjump to .L1123 occurs
	[!A1]	b	.s1	.L1121
		nop	5
	;; condjump to .L1121 occurs
.L1123:
		mvk	.d1	1, A6
	||	mvk	.l1	0, A4
	||	mvk	.s1	32, A8
.L1125:
		and	.d1x	1, B4, A5
	||	extu	.s1	A6, 24, 24, A3
	||	shr	.s2	B4, 1, B4
	||	add	.l1	1, A6, A6
		cmpeq	.l1	A8, A3, A18
	||	neg	.s1	A5, A9
		cmpeq	.l1x	0, B4, A17
	||	and	.d1	A7, A9, A16
	||	shl	.s1	A7, 1, A7
		cmpeq	.l1	0, A17, A19
	||	add	.s1	A4, A16, A4
		cmpeq	.l1	0, A18, A20
		and	.d1	A20, A19, A0
	[A0]	b	.s1	.L1125
		nop	5
	;; condjump to .L1125 occurs
	[A2]	neg	.l1	A4, A4
.L1121:
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
	[!A0]	b	.s1	.L1153
	||	mvk	.d1	1, A0
		nop	5
	;; condjump to .L1153 occurs
.L1136:
		shl	.s2	B4, 1, B4
	||	shl	.s1	A0, 1, A0
		cmpeq	.l1	0, A0, A8
		mv	.s1x	B4, A5
	||	cmpeq	.l1	0, A8, A9
		cmpltu	.l1	A5, A4, A7
		and	.d1	A9, A7, A2
	[A2]	b	.s1	.L1136
		nop	5
	;; condjump to .L1136 occurs
	[!A0]	b	.s1	.L1138
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1138 occurs
.L1141:
		cmpltu	.l1x	A6, B4, A16
		mv	.d1	A16, A2
	[!A2]	or	.d1	A0, A4, A4
	||	shru	.s1	A0, 1, A0
	||[!A2]	mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
	[A0]	b	.s1	.L1141
	||[!A2]	sub	.d1	A6, A16, A6
		nop	5
	;; condjump to .L1141 occurs
.L1138:
		ret	.s2	B3
	||[A1]	neg	.l1	A4, A4
		nop	5
	;; return occurs
.L1153:
		b	.s1	.L1141
	||	mvk	.d1	1, A0
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1141 occurs
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
		shr	.s1x	B4, 31, A3
	||	cmpgt	.l1	0, A4, A0
	||	mvk	.d1	1, A16
		xor	.l1x	A3, B4, A5
	||[A0]	neg	.s1	A4, A4
	||[A0]	mvk	.d1	1, A1
		sub	.l1	A5, A3, A17
	||[!A0]	mvk	.d1	0, A1
	||	mv	.s1	A4, A7
		cmpltu	.l1	A17, A4, A2
	[!A2]	b	.s1	.L1161
		nop	5
	;; condjump to .L1161 occurs
.L1156:
		shl	.s1	A16, 1, A16
		shl	.s1	A17, 1, A17
	||	cmpeq	.l1	0, A16, A6
		cmpltu	.l1	A17, A4, A8
		cmpeq	.l1	0, A6, A9
		and	.d1	A9, A8, A2
	[A2]	b	.s1	.L1156
		nop	5
	;; condjump to .L1156 occurs
		mv	.d1	A16, A2
	[!A2]	b	.s1	.L1158
		nop	5
	;; condjump to .L1158 occurs
.L1161:
		shru	.s1	A16, 1, A16
	||	cmpltu	.l1	A7, A17, A2
		mv	.d1	A16, A0
	||[!A2]	sub	.l1	A7, A17, A7
	||	shru	.s1	A17, 1, A17
	[A0]	b	.s1	.L1161
		nop	5
	;; condjump to .L1161 occurs
		mv	.d1	A7, A4
.L1158:
		ret	.s2	B3
	||[A1]	neg	.l1	A4, A4
		nop	5
	;; return occurs
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
		mv	.l1x	B4, A3
	||	extu	.s1	A4, 16, 16, A17
		mv	.l1x	B4, A8
	||	extu	.s1	A3, 16, 16, A5
		ext	.s1	A8, 16, 16, A9
	||	cmpgtu	.l1	A17, A5, A1
		cmpgt	.l1	0, A9, A2
	||[!A1]	b	.s1	.L1222
	||[A1]	mvk	.d1	1, A7
		nop	5
	;; condjump to .L1222 occurs
	[A2]	b	.s1	.L1223
		nop	5
	;; condjump to .L1223 occurs
.L1177:
		shl	.s1	A7, 1, A22
		shl	.s1x	B4, 1, A23
		extu	.s1	A22, 16, 16, A24
		extu	.s1	A23, 16, 16, A25
	||	cmpeq	.l1	0, A24, A18
		cmpeq	.l1	0, A18, A27
	||	mv	.s1	A22, A18
		cmpltu	.l1	A25, A17, A26
		and	.d1	A27, A26, A0
	[!A0]	b	.s1	.L1176
	||[A0]	mv	.l2x	A23, B4
	||[A0]	mv	.d1	A22, A7
		nop	1
		mv	.l1x	B4, A8
		ext	.s1	A8, 16, 16, A9
		cmpgt	.l1	0, A9, A2
		nop	1
	;; condjump to .L1176 occurs
	[!A2]	b	.s1	.L1177
		nop	5
	;; condjump to .L1177 occurs
.L1223:
		extu	.s1	A8, 16, 16, A19
		cmpgtu	.l1	A19, A17, A1
	[A1]	b	.s1	.L1200
	||[A1]	mvk	.d1	0, A18
		nop	5
	;; condjump to .L1200 occurs
		sub	.l2x	A4, B4, B4
	||	mv	.d1	A7, A18
		nop	1
		mv	.l1x	B4, A4
.L1200:
		extu	.s1	A7, 16, 16, A7
		shru	.s1	A7, 1, A1
	[!A1]	b	.s1	.L1179
	||	mv	.d1	A1, A21
		shru	.s1	A19, 1, A20
		extu	.s1	A4, 16, 16, A17
		nop	3
	;; condjump to .L1179 occurs
.L1181:
		extu	.s1	A20, 16, 16, A3
		cmpgtu	.l1	A3, A17, A1
	||	shru	.s1	A7, 2, A8
	[!A1]	sub	.d1	A4, A20, A20
	||[!A1]	or	.l1	A21, A18, A18
	||	shru	.s1	A19, 2, A9
	[!A1]	mv	.d1	A20, A4
	||	mv	.l1	A8, A1
	||	shru	.s1	A7, 3, A20
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A16
		cmpgtu	.l1	A9, A16, A1
	||	shru	.s1	A19, 3, A21
	[!A1]	sub	.d1	A4, A9, A9
	||	shru	.s1	A7, 4, A22
		shru	.s1	A19, 4, A23
		shru	.s1	A7, 5, A25
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A9, A4
	||[!A1]	or	.l1	A18, A8, A18
	||	mv	.s1	A20, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A17
		cmpgtu	.l1	A21, A17, A1
	||	shru	.s1	A19, 5, A26
	[!A1]	sub	.d1	A4, A21, A21
	||	shru	.s1	A7, 6, A28
		shru	.s1	A19, 6, A0
		shru	.s1	A7, 7, A29
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A21, A4
	||[!A1]	or	.l1	A18, A20, A18
	||	mv	.s1	A22, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A24
		cmpgtu	.l1	A23, A24, A1
	||	shru	.s1	A19, 7, A30
	[!A1]	sub	.d1	A4, A23, A23
	||	shru	.s1	A7, 8, A2
		shru	.s1	A19, 8, A8
		shru	.s1	A7, 9, A9
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A23, A4
	||[!A1]	or	.l1	A18, A22, A18
	||	mv	.s1	A25, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A27
		cmpgtu	.l1	A26, A27, A1
	||	shru	.s1	A19, 9, A16
	[!A1]	sub	.d1	A4, A26, A26
	||	shru	.s1	A7, 10, A21
		shru	.s1	A19, 10, A17
		shru	.s1	A7, 11, A23
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A26, A4
	||[!A1]	or	.l1	A18, A25, A18
	||	mv	.s1	A28, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A5
		cmpgtu	.l1	A0, A5, A1
	||	shru	.s1	A19, 11, A24
	[!A1]	sub	.d1	A4, A0, A0
	||	shru	.s1	A7, 12, A26
		shru	.s1	A19, 12, A27
		nop	1
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A0, A4
	||[!A1]	or	.l1	A18, A28, A18
	||	mv	.s1	A29, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A31
		cmpgtu	.l1	A30, A31, A1
	||	shru	.s1	A19, 13, A0
	[!A1]	sub	.d1	A4, A30, A30
	||	shru	.s1	A19, 14, A31
		shru	.s1	A19, 15, A19
		nop	1
	;; condjump to .L1179 occurs
	[!A2]	b	.s1	.L1179
	||[!A1]	mv	.d1	A30, A4
	||[!A1]	or	.l1	A18, A29, A18
		extu	.s1	A4, 16, 16, A3
		cmpgtu	.l1	A8, A3, A1
	||	shru	.s1	A7, 13, A29
	[!A1]	sub	.d1	A4, A8, A8
	||	shru	.s1	A7, 14, A30
		nop	2
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A8, A4
	||[!A1]	or	.l1	A18, A2, A18
	||	mv	.s1	A9, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A20
		cmpgtu	.l1	A16, A20, A1
	[!A1]	sub	.d1	A4, A16, A16
		nop	2
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A16, A4
	||[!A1]	or	.l1	A18, A9, A18
	||	mv	.s1	A21, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A22
		cmpgtu	.l1	A17, A22, A1
	[!A1]	sub	.d1	A4, A17, A17
		nop	2
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A17, A4
	||[!A1]	or	.l1	A18, A21, A18
	||	mv	.s1	A23, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A25
		cmpgtu	.l1	A24, A25, A1
	[!A1]	sub	.d1	A4, A24, A24
		nop	2
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A24, A4
	||[!A1]	or	.l1	A18, A23, A18
	||	mv	.s1	A26, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A28
		cmpgtu	.l1	A27, A28, A1
	[!A1]	sub	.d1	A4, A27, A27
		nop	2
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A27, A4
	||[!A1]	or	.l1	A18, A26, A18
	||	mv	.s1	A29, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A5
		cmpgtu	.l1	A0, A5, A1
	[!A1]	sub	.d1	A4, A0, A0
		nop	2
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A0, A4
	||[!A1]	or	.l1	A18, A29, A18
	||	mv	.s1	A30, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A8
		cmpgtu	.l1	A31, A8, A1
	[!A1]	sub	.d1	A4, A31, A31
		nop	2
	;; condjump to .L1179 occurs
	[!A1]	mv	.d1	A31, A4
	||[!A1]	or	.l1	A18, A30, A18
	||	shru	.s1	A7, 15, A1
	[!A1]	b	.s1	.L1179
		extu	.s1	A4, 16, 16, A7
		cmpgtu	.l1	A19, A7, A1
		nop	3
	;; condjump to .L1179 occurs
	[!A1]	sub	.l1	A4, A19, A4
	||[!A1]	or	.s1	1, A18, A18
	||[A1]	mvk	.d1	0, A4
.L1179:
		ret	.s2	B3
	||	mv	.d1	A6, A2
	[!A2]	mv	.d1	A18, A4
		nop	4
	;; return occurs
.L1176:
		mv	.d1	A24, A2
	||	cmpgtu	.l1	A25, A17, A1
	||	mvk	.s1	32767, A28
	[!A2]	b	.s1	.L1179
		nop	5
	;; condjump to .L1179 occurs
	[A1]	b	.s1	.L1180
		nop	5
	;; condjump to .L1180 occurs
		b	.s1	.L1181
	||	sub	.d1	A4, A23, A4
	||	and	.l1	A28, A7, A21
		and	.d1x	A28, B4, A20
	||	extu	.s1	A4, 16, 16, A17
		extu	.s1	A23, 16, 16, A19
		extu	.s1	A22, 16, 16, A7
		nop	2
	;; jump to .L1181 occurs
.L1180:
		b	.s1	.L1181
	||	and	.l1	A28, A7, A21
	||	mvk	.d1	0, A18
		and	.d1x	A28, B4, A20
	||	extu	.s1	A22, 16, 16, A7
		extu	.s1	A23, 16, 16, A19
		nop	3
	;; jump to .L1181 occurs
.L1222:
		cmpeq	.l1	A17, A5, A0
	[A0]	b	.s1	.L1179
	||[A0]	mvk	.d1	1, A18
	||[A0]	mvk	.l1	0, A4
		nop	5
	;; condjump to .L1179 occurs
		ret	.s2	B3
	||	mvk	.d1	0, A18
	||	mv	.s1	A6, A2
	[!A2]	mv	.d1	A18, A4
		nop	4
	;; return occurs
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
		mv	.s1x	B4, A3
	||	mvk	.d1	1, A2
	||	mv	.l1	A4, A7
		cmpltu	.l1	A3, A4, A0
	[!A0]	b	.s1	.L1239
		nop	5
	;; condjump to .L1239 occurs
.L1225:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1226
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1226 occurs
	[A1]	b	.s1	.L1225
		nop	5
	;; condjump to .L1225 occurs
	[!A2]	b	.s1	.L1229
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1229 occurs
.L1226:
		mvk	.d1	0, A4
.L1231:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L1231
		nop	5
	;; condjump to .L1231 occurs
.L1229:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1239:
		b	.s1	.L1231
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1231 occurs
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1241
		nop	5
	;; condjump to .L1241 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shl	.s1	A4, A9, A5
	||	mv	.d1	A8, A4
.L1243:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1241:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1243
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1243
		shru	.s1	A4, A3, A7
	[A2]	shl	.s1	A5, A2, A5
		shl	.s1	A4, A2, A8
	||[A2]	or	.d1	A5, A7, A5
	[A2]	mv	.d1	A8, A4
		nop	1
	;; condjump to .L1243 occurs
	;; jump to .L1243 occurs
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1248
		nop	5
	;; condjump to .L1248 occurs
		subah	.d2	B4, 16, B4
	||	shr	.s1	A5, 31, A8
		nop	1
		mv	.l1x	B4, A9
		shr	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1250:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1248:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1250
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1250
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shr	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1250 occurs
	;; jump to .L1250 occurs
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
	[A0]	b	.s1	.L1266
	||	cmplt	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1266 occurs
	[A0]	b	.s1	.L1267
		nop	5
	;; condjump to .L1267 occurs
	[A1]	b	.s1	.L1266
		nop	5
	;; condjump to .L1266 occurs
	[A2]	b	.s1	.L1267
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1267 occurs
	;; return occurs
.L1266:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1267:
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
	[A0]	b	.s1	.L1274
	||	cmplt	.l1	A3, A5, A0
	[A0]	mvk	.d1	1, A4
	||	mv	.s1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		nop	3
	;; condjump to .L1274 occurs
	[A0]	b	.s1	.L1270
		nop	5
	;; condjump to .L1270 occurs
	[A1]	b	.s1	.L1274
	||[!A1]	cmpltu	.l1	A5, A4, A4
		nop	5
	;; condjump to .L1274 occurs
.L1270:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1274:
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
	[!A1]	b	.s1	.L1280
		nop	5
	;; condjump to .L1280 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shru	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1282:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1280:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1282
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1282
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shru	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1282 occurs
	;; jump to .L1282 occurs
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
	[!A0]	b	.s1	.L1301
	||	stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(32)
		dmv	.s1	A5, A4, A13:A12
	||	mv	.l1x	B4, A10
	||	mvk	.d1	0, A14
		mvklh	.s1	16368, A15
	;; condjump to .L1301 occurs
.L1303:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A15, A14, A5:A4
	||	mv	.l2x	A12, B4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L1310, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L1310:
		dmv	.s1	A5, A4, A15:A14
.L1301:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1302
		nop	5
	;; condjump to .L1302 occurs
.L1304:
		call	.s2	(__c6xabi_mpyd)
	||	mv	.l2x	A12, B4
	||	mv	.d1	A12, A4
	||	mv	.s1	A13, A5
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L1311, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L1311:
		and	.d1	1, A10, A2
	||	dmv	.s1	A5, A4, A13:A12
	[A2]	b	.s1	.L1303
		nop	5
	;; condjump to .L1303 occurs
		b	.s1	.L1304
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L1304 occurs
.L1302:
		cmpgt	.l2x	0, A11, B0
	||	dmv	.s1	A15, A14, A5:A4
	[B0]	b	.s1	.L1309
	||[!B0]	ldw	.d2t2	*+B15(32), B3
	[!B0]	ldw	.d2t1	*+B15(12), A10
	[!B0]	ldw	.d2t1	*+B15(16), A11
	[!B0]	ldw	.d2t1	*+B15(20), A12
	[!B0]	ldw	.d2t1	*+B15(24), A13
	[!B0]	ldw	.d2t1	*+B15(28), A14
	;; condjump to .L1309 occurs
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(36), B14
		ldw	.d2t1	*+B15(40), A15
	||	addk	.s2	40, B15
		nop	4
	;; return occurs
.L1309:
		call	.s2	(__c6xabi_divd)
	||	mv	.l2x	A14, B4
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		mv	.l2x	A15, B5
	||	mvklh	.s1	16368, A5
	||	addkpc	.s2	.L1312, B3, 0
	;; call to (__c6xabi_divd) occurs, with return value
		nop	4
.L1312:
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
	[!A0]	b	.s1	.L1314
	||	stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(28)
		mv	.l1	A4, A11
	||	mv	.s1x	B4, A10
	||	mvk	.d1	0, A12
		mvklh	.s1	16256, A12
	;; condjump to .L1314 occurs
.L1316:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.d1	A12, A4
	||	mv	.l2x	A11, B4
		mv	.d1	A4, A12
.L1314:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1315
		nop	5
	;; condjump to .L1315 occurs
.L1317:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A11, A4
		and	.d1	1, A10, A2
	||	mv	.s1	A4, A11
	[A2]	b	.s1	.L1316
		nop	5
	;; condjump to .L1316 occurs
		b	.s1	.L1317
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L1317 occurs
.L1315:
		cmpgt	.l2x	0, A13, B0
	||	mv	.d1	A12, A4
	[B0]	b	.s1	.L1322
	||[!B0]	ldw	.d2t2	*+B15(28), B3
	[!B0]	ldw	.d2t1	*+B15(12), A10
	[!B0]	ldw	.d2t1	*+B15(16), A11
	[!B0]	ldw	.d2t1	*+B15(20), A12
	[!B0]	ldw	.d2t1	*+B15(24), A13
	[!B0]	ret	.s2	B3
	||[!B0]	ldw	.d2t2	*+B15(32), B14
	;; condjump to .L1322 occurs
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
.L1322:
		call	.s2	(__c6xabi_divf)
	||	mv	.l2x	A12, B4
	||	mvk	.d1	0, A4
		mvklh	.s1	16256, A4
	||	addkpc	.s2	.L1325, B3, 0
	;; call to (__c6xabi_divf) occurs, with return value
		nop	4
.L1325:
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
	[A0]	b	.s1	.L1330
	||	cmpltu	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1330 occurs
	[A0]	b	.s1	.L1331
		nop	5
	;; condjump to .L1331 occurs
	[A1]	b	.s1	.L1330
		nop	5
	;; condjump to .L1330 occurs
	[A2]	b	.s1	.L1331
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1331 occurs
	;; return occurs
.L1330:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1331:
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
	[A0]	b	.s1	.L1338
	||	cmpltu	.l1	A3, A5, A0
	[A0]	mvk	.d1	1, A4
	||	mv	.s1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		nop	3
	;; condjump to .L1338 occurs
	[A0]	b	.s1	.L1334
		nop	5
	;; condjump to .L1334 occurs
	[A1]	b	.s1	.L1338
	||[!A1]	cmpltu	.l1	A5, A4, A4
		nop	5
	;; condjump to .L1338 occurs
.L1334:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1338:
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
