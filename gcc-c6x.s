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
		mv	.l1x	B6, A0
	||	extu	.s1	A6, 24, 24, A6
	||	sub	.d2	B4, 1, B4
	||	mv	.d1	A4, A3
	[!A0]	b	.s1	.L21
		nop	5
	;; condjump to .L21 occurs
.L18:
		ldb	.d2t1	*++B4[1], A5
	||	sub	.d1	A0, 1, A0
	||	mv	.s1	A3, A4
		nop	4
		extu	.s1	A5, 24, 24, A7
	||	stb	.d1t1	A5, *A3++[1]
		cmpeq	.l1	A6, A7, A2
	[A2]	b	.s1	.L31
	||[!A2]	sub	.d2	B6, 1, B6
		nop	5
	;; condjump to .L31 occurs
	[A0]	b	.s1	.L18
		nop	5
	;; condjump to .L18 occurs
.L21:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L31:
		mv	.l1x	B6, A1
	[!A1]	b	.s1	.L21
	||[A1]	ret	.s2	B3
	||[A1]	mv	.d1	A3, A4
		nop	5
	;; condjump to .L21 occurs
	;; return occurs
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
		mv	.d1	A6, A0
	||	extu	.s2	B4, 24, 24, B4
	||	mv	.s1	A4, A5
	[!A0]	b	.s1	.L38
		nop	5
	;; condjump to .L38 occurs
.L34:
		mv	.s1	A5, A4
	||	ldbu	.d1t1	*A5++[1], A3
	||	mv	.l1x	B4, A7
		sub	.d1	A0, 1, A0
		nop	3
		cmpeq	.l1	A7, A3, A2
	[A2]	b	.s1	.L44
	||[!A2]	sub	.d1	A6, 1, A6
		nop	5
	;; condjump to .L44 occurs
	[A0]	b	.s1	.L34
		nop	5
	;; condjump to .L34 occurs
.L38:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L44:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L38
	||[A1]	ret	.s2	B3
		nop	5
	;; condjump to .L38 occurs
	;; return occurs
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
		mv	.d1	A6, A0
	||	mv	.s1	A4, A3
	||	mv	.l1x	B4, A8
	[!A0]	b	.s1	.L50
		nop	5
	;; condjump to .L50 occurs
.L47:
		ldbu	.d1t1	*A8, A5
	||	add	.l1	-1, A0, A0
	||	add	.s1	1, A8, A8
		ldbu	.d1t1	*A3, A4
	||	add	.s1	1, A3, A3
		nop	4
		cmpeq	.l1	A5, A4, A2
	[!A2]	b	.s1	.L59
	||[A2]	sub	.d1	A6, 1, A6
		nop	5
	;; condjump to .L59 occurs
	[A0]	b	.s1	.L47
		nop	5
	;; condjump to .L47 occurs
.L50:
		mvk	.d1	0, A4
.L45:
		ret	.s2	B3
		nop	5
	;; return occurs
.L59:
		mv	.d1	A6, A1
	[A1]	b	.s1	.L45
	||[A1]	sub	.d1	A4, A5, A4
		nop	5
	;; condjump to .L45 occurs
		b	.s1	.L45
	||	mvk	.d1	0, A4
		nop	5
	;; jump to .L45 occurs
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
		sub	.d2	B15, 16, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(12)
	[!A0]	b	.s1	.L61
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	3
	;; condjump to .L61 occurs
		callp	.s2	(memcpy), B3
.L61:
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
	[A1]	b	.s1	.L71
	||	mv	.d1	A7, A4
	||	add	.l1	-1, A7, A7
		nop	5
	;; condjump to .L71 occurs
.L74:
		mvk	.d1	0, A4
.L68:
		ret	.s2	B3
		nop	5
	;; return occurs
.L71:
		ldbu	.d1t1	*A4, A6
	||	mv	.l1x	B4, A5
	||	add	.s1	-1, A1, A1
		nop	4
		cmpeq	.l1	A5, A6, A0
	[A0]	b	.s1	.L68
	||[!A0]	mv	.d1	A7, A4
	||	add	.l1	-1, A7, A7
		nop	5
	;; condjump to .L68 occurs
	[A1]	b	.s1	.L71
		nop	5
	;; condjump to .L71 occurs
		b	.s1	.L74
		nop	5
	;; jump to .L74 occurs
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
		mv	.d1	A6, A0
	||	mv	.s1	A4, A3
	[!A0]	b	.s1	.L76
		mvc	.s2x	A0, ILC
		nop	4
	;; condjump to .L76 occurs
		sploop	1
.L77:
		stb	.d1t2	B4, *A3++[1]
		spkernel	1, 0
.L76:
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
	[!A0]	b	.s1	.L84
		nop	5
	;; condjump to .L84 occurs
.L86:
		ldb	.d2t1	*++B4[1], A7
	||	mv	.d1	A6, A4
		nop	4
		ext	.s1	A7, 24, 24, A1
	||	stb	.d1t1	A7, *A6++[1]
	[A1]	b	.s1	.L86
		nop	5
	;; condjump to .L86 occurs
.L84:
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
	[!A1]	b	.s1	.L91
		nop	5
	;; condjump to .L91 occurs
.L92:
		extu	.s1	A6, 24, 24, A5
	||	mv	.l1x	B4, A3
		cmpeq	.l1	A3, A5, A0
	[A0]	b	.s1	.L91
	||[!A0]	ldb	.d1t1	*++A4[1], A6
		nop	4
		ext	.s1	A6, 24, 24, A1
	;; condjump to .L91 occurs
	[A1]	b	.s1	.L92
		nop	5
	;; condjump to .L92 occurs
.L91:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
		mv	.d1	A4, A3
.L102:
		ldb	.d1t1	*A3, A5
	||	mv	.l1x	B4, A6
	||	mv	.s1	A3, A4
		add	.d1	A3, 1, A3
		nop	3
		ext	.s1	A5, 24, 24, A0
		cmpeq	.l1	A6, A0, A1
	[A1]	b	.s1	.L100
		nop	5
	;; condjump to .L100 occurs
	[A0]	b	.s1	.L102
		nop	5
	;; condjump to .L102 occurs
		mvk	.d1	0, A4
.L100:
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
	[!A0]	b	.s1	.L107
		nop	5
	;; condjump to .L107 occurs
.L116:
		ldb	.d1t1	*++A4[1], A6
		ldb	.d2t1	*++B4[1], A17
		nop	3
		ext	.s1	A6, 24, 24, A3
		ext	.s1	A17, 24, 24, A7
	||	cmpeq	.l1	0, A3, A8
		cmpeq	.l1	A7, A3, A9
		cmpeq	.l1	0, A8, A16
		and	.d1	A9, A16, A0
	[A0]	b	.s1	.L116
		nop	5
	;; condjump to .L116 occurs
.L107:
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
	||	mv	.s1	A4, A5
		nop	4
	[!A0]	b	.s1	.L120
		nop	5
	;; condjump to .L120 occurs
.L119:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L119
		nop	5
	;; condjump to .L119 occurs
		ret	.s2	B3
	||	sub	.d1	A5, A4, A4
		nop	5
	;; return occurs
.L120:
		ret	.s2	B3
	||	mv	.d1	A4, A5
		sub	.d1	A5, A4, A4
		nop	4
	;; return occurs
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
		mv	.d1	A6, A0
	||	mv	.s1x	B4, A5
	[!A0]	b	.s1	.L124
	||[!A0]	mvk	.d1	0, A4
	||	add	.l1	A5, A6, A6
	[A0]	ldbu	.d1t1	*A4, A7
		nop	4
	;; condjump to .L124 occurs
		mv	.d1	A7, A1
	[!A1]	b	.s1	.L126
		nop	5
	;; condjump to .L126 occurs
.L127:
		ldb	.d1t1	*A5, A3
	||	mv	.l2x	A5, B4
		nop	1
		add	.l1x	1, B4, A5
		cmpeq	.l1	A5, A6, A17
		cmpeq	.l1	0, A17, A19
		extu	.s1	A3, 24, 24, A9
		cmpeq	.l1	0, A9, A16
		cmpeq	.l1	A7, A9, A8
		cmpeq	.l1	0, A16, A18
		and	.d1	A8, A18, A20
		and	.d1	A20, A19, A2
	[!A2]	b	.s1	.L126
	||[A2]	ldbu	.d1t1	*++A4[1], A7
		nop	4
		mv	.d1	A7, A0
	;; condjump to .L126 occurs
	[A0]	b	.s1	.L127
		nop	5
	;; condjump to .L127 occurs
		mv	.l2x	A5, B4
.L126:
		ldbu	.d2t1	*B4, A4
		nop	4
		sub	.d1	A7, A4, A4
.L124:
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
	||[!A0]	b	.s1	.L136
		shru	.s1	A6, 1, A5
		add	.d1	A5, 1, A1
		nop	3
	;; condjump to .L136 occurs
		mvc	.s2x	A1, ILC
		nop	3
		sploop	2
.L138:
		ldb	.d1t2	*+A4(1), B5
		ldb	.d1t1	*A4++(2), A8
		nop	2
		add	.s2	2, B4, B4
	;; load to B5 occurs
		stb	.d2t2	B5, *-B4(2)
	;; load to A8 occurs
		spkernel	3, 0
	||	stb	.d2t1	A8, *-B4(1)
.L136:
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
	[A0]	b	.s1	.L165
		nop	5
	;; condjump to .L165 occurs
		mvk	.s1	-8232, A17
	||	mvk	.d1	7, A19
		add	.d1	A4, A17, A18
	||	mvklh	.s1	65535, A19
		cmpltu	.l1	1, A18, A1
	||	add	.s1	A4, A19, A4
	[!A1]	b	.s1	.L165
	||[A1]	ret	.s2	B3
	||	cmpltu	.l1	2, A4, A20
		cmpeq	.l1	0, A20, A4
		nop	4
	;; condjump to .L165 occurs
	;; return occurs
.L165:
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
	[!A0]	b	.s1	.L178
	||	cmpltu	.l1	A24, A23, A0
		mvklh	.s1	0, A25
		nop	4
	;; condjump to .L178 occurs
	[A1]	b	.s1	.L174
	||[A0]	mvk	.d1	0, A4
	[!A0]	and	.d1	A25, A4, A4
		cmpeq	.l1	A25, A4, A26
	[!A0]	cmpeq	.l1	0, A26, A4
		nop	2
	;; condjump to .L174 occurs
	[!A2]	b	.s1	.L174
		nop	5
	;; condjump to .L174 occurs
	[A0]	b	.s1	.L170
		nop	5
	;; condjump to .L170 occurs
.L170:
		ret	.s2	B3
		nop	5
	;; return occurs
.L174:
		ret	.s2	B3
	||	mvk	.d1	1, A4
		nop	5
	;; return occurs
.L178:
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
	||	addkpc	.s2	.L195, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L195:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L185
	||	mv	.l2x	A13, B5
	[A0]	dmv	.s1	A11, A10, A5:A4
	[!A0]	dmv	.s1	A13, A12, A5:A4
		nop	3
	;; condjump to .L185 occurs
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L185
	||	mv	.l2x	A13, B5
	[A0]	dmv	.s1	A13, A12, A5:A4
	[!A0]	dmv	.s1	A11, A10, A5:A4
		nop	3
	;; condjump to .L185 occurs
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L185
	||[!A0]	mvk	.d1	0, A4
	||[!A0]	mvk	.l1	0, A5
		nop	5
	;; condjump to .L185 occurs
		call	.s2	(__c6xabi_subd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L198, B3, 0
	;; call to (__c6xabi_subd) occurs, with return value
		nop	4
.L198:
.L185:
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
	||	addkpc	.s2	.L209, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A10
	||	mv	.s1x	B4, A11
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L209:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	[A0]	b	.s1	.L199
	||[A0]	mv	.d1	A10, A4
	[!A0]	mv	.d1	A11, A4
		nop	4
	;; condjump to .L199 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	mv	.l2x	A11, B4
	[A1]	b	.s1	.L199
	||[A1]	mv	.d1	A11, A4
	[!A1]	mv	.d1	A10, A4
		nop	4
	;; condjump to .L199 occurs
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A2
	[!A2]	b	.s1	.L199
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L199 occurs
		callp	.s2	(__c6xabi_subf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A10, A4
.L199:
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
	||	addkpc	.s2	.L226, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.l1x	B5, A11
	||	mv	.l2x	A13, B5
		mv	.l1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L226:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s1	.L221
	||	mv	.l2x	A11, B5
		nop	5
	;; condjump to .L221 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A13, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A11, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L220
		nop	5
	;; condjump to .L220 occurs
	[A2]	b	.s1	.L215
		nop	5
	;; condjump to .L215 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L220
		nop	5
	;; condjump to .L220 occurs
.L221:
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
.L215:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A11, B5
	||	addkpc	.s2	.L228, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L228:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L221
		nop	5
	;; condjump to .L221 occurs
.L220:
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
	||	addkpc	.s2	.L242, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A11
	||	mv	.s1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L242:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	mv	.s1	A10, A4
	[A0]	b	.s1	.L237
		nop	5
	;; condjump to .L237 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	clr	.s1	A11, 0, 30, A3
		clr	.s1	A10, 0, 30, A4
		cmpeq	.l1	A4, A3, A2
	||[A1]	b	.s1	.L236
		nop	5
	;; condjump to .L236 occurs
	[A2]	b	.s1	.L231
		nop	5
	;; condjump to .L231 occurs
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L236
		nop	5
	;; condjump to .L236 occurs
.L237:
		mv	.d1	A10, A4
.L229:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
.L231:
		callp	.s2	(__c6xabi_ltf), B3
	||	mv	.l2x	A10, B4
	||	mv	.d1	A11, A4
		b	.s1	.L229
	||	mv	.d1	A4, A0
	[!A0]	mv	.d1	A11, A10
		mv	.d1	A10, A4
		nop	3
	;; jump to .L229 occurs
.L236:
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
	||	addkpc	.s2	.L258, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.l1x	B5, A11
	||	mv	.l2x	A13, B5
		mv	.l1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L258:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s1	.L253
	||	mv	.l2x	A11, B5
		nop	5
	;; condjump to .L253 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A13, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A11, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L252
		nop	5
	;; condjump to .L252 occurs
	[A2]	b	.s1	.L247
		nop	5
	;; condjump to .L247 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L252
		nop	5
	;; condjump to .L252 occurs
.L253:
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
.L247:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A11, B5
	||	addkpc	.s2	.L260, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L260:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L253
		nop	5
	;; condjump to .L253 occurs
.L252:
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
	||	addkpc	.s2	.L274, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L274:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L267
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L267 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A11, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A13, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L269
		nop	5
	;; condjump to .L269 occurs
	[A2]	b	.s1	.L263
		nop	5
	;; condjump to .L263 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L267
		nop	5
	;; condjump to .L267 occurs
.L269:
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
.L263:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L276, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L276:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L269
		nop	5
	;; condjump to .L269 occurs
.L267:
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
	||	addkpc	.s2	.L290, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A10
	||	mv	.s1x	B4, A11
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L290:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	||	mv	.s1	A11, A4
	[A0]	b	.s1	.L283
		nop	5
	;; condjump to .L283 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	clr	.s1	A10, 0, 30, A3
		clr	.s1	A11, 0, 30, A4
		cmpeq	.l1	A4, A3, A2
	||[A1]	b	.s1	.L285
		nop	5
	;; condjump to .L285 occurs
	[A2]	b	.s1	.L279
		nop	5
	;; condjump to .L279 occurs
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L283
		nop	5
	;; condjump to .L283 occurs
.L285:
		mv	.d1	A10, A4
.L277:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
.L279:
		callp	.s2	(__c6xabi_ltf), B3
	||	mv	.d1	A10, A4
	||	mv	.l2x	A11, B4
		b	.s1	.L277
	||	mv	.d1	A4, A0
	[!A0]	mv	.d1	A11, A10
		mv	.d1	A10, A4
		nop	3
	;; jump to .L277 occurs
.L283:
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
	||	addkpc	.s2	.L306, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L306:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L299
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L299 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A11, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A13, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L301
		nop	5
	;; condjump to .L301 occurs
	[A2]	b	.s1	.L295
		nop	5
	;; condjump to .L295 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L299
		nop	5
	;; condjump to .L299 occurs
.L301:
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
.L295:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L308, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L308:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L301
		nop	5
	;; condjump to .L301 occurs
.L299:
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
	||[!A0]	b	.s1	.L310
	[A0]	ldw	.d2t1	*+B14($GOT(digits)), A6
		nop	3
	[!A0]	mv	.d1	A4, A5
	;; condjump to .L310 occurs
		mv	.d1	A4, A5
.L311:
		and	.d1	A7, A0, A3
	||	shru	.s1	A0, 6, A0
		add	.d1	A6, A3, A8
		ldb	.d1t1	*A8, A9
	||[A0]	b	.s1	.L311
		nop	4
		stb	.d1t1	A9, *A5++[1]
	;; condjump to .L311 occurs
.L310:
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
	[!A0]	b	.s1	.L320
	||[!A0]	stw	.d1t2	B4, *A4
	[!A0]	stw	.d1t2	B4, *+A4(4)
	||[A0]	ldw	.d2t1	*B4, A3
	[A0]	stw	.d1t2	B4, *+A4(4)
		nop	3
	;; condjump to .L320 occurs
		stw	.d1t1	A3, *A4
		stw	.d2t1	A4, *B4
		ldw	.d1t1	*A4, A1
		nop	4
	[A1]	stw	.d1t1	A4, *+A1(4)
.L320:
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
	[!A0]	b	.s1	.L339
	||	stw	.d2t2	B12, *+B15(40)
		stw	.d2t2	B3, *+B15(28)
		mv	.s2x	A6, B11
	||	mv	.d1	A4, A14
	||	mv	.d2	B4, B10
		nop	3
	;; condjump to .L339 occurs
.L341:
		call	.s2x	A15
	||	mv	.d1	A14, A4
	||	add	.s1	1, A11, A11
		mv	.l2x	A10, B4
	||	addkpc	.s2	.L355, B3, 0
		mv	.l2x	A10, B12
	||	add	.d1	A10, A12, A10
	;; indirect call occurs, with return value
		nop	3
.L355:
		mv	.s1	A4, A1
	||	cmpeq	.l1	A11, A13, A2
	[!A1]	b	.s1	.L338
		nop	5
	;; condjump to .L338 occurs
	[!A2]	b	.s1	.L341
		nop	5
	;; condjump to .L341 occurs
.L339:
		mv	.d1	A12, A0
	||	mpy32	.m1	A12, A13, A4
	||	add	.l1	1, A13, A3
	||	mv	.s1	A12, A6
	||	mv	.l2x	A14, B4
	[!A0]	b	.s1	.L338
	||	stw	.d2t1	A3, *B11
		nop	3
		add	.d2x	B10, A4, B12
		nop	1
	;; condjump to .L338 occurs
		callp	.s2	(memmove), B3
	||	mv	.l1x	B12, A4
.L338:
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
	[!A0]	b	.s1	.L358
	||	stw	.d2t2	B3, *+B15(28)
		mv	.l1	A8, A13
	||	mv	.s1x	B4, A10
	||	mvk	.d1	0, A11
		nop	4
	;; condjump to .L358 occurs
.L360:
		call	.s2x	A13
	||	mv	.d1	A12, A4
	||	add	.s1	1, A11, A11
		mv	.l2x	A10, B4
	||	addkpc	.s2	.L370, B3, 0
		mv	.l2x	A10, B10
	||	add	.d1	A10, A14, A10
	;; indirect call occurs, with return value
		nop	3
.L370:
		mv	.s1	A4, A1
	||	cmpeq	.l1	A11, A15, A2
	[!A1]	b	.s1	.L357
		nop	5
	;; condjump to .L357 occurs
	[!A2]	b	.s1	.L360
		nop	5
	;; condjump to .L360 occurs
.L358:
		mvk	.d2	0, B10
.L357:
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
	||	mv	.l1	A4, A6
	||	mvk	.s1	32, A5
		mvk	.s1	32, A17
		nop	3
		ext	.s1	A3, 24, 24, A4
		sub	.d1	A4, 9, A7
	||	cmpeq	.l1	A5, A4, A8
	||	shl	.s1	A3, 24, A20
		cmpltu	.l1	4, A7, A9
		cmpeq	.l1	0, A9, A16
		or	.d1	A8, A16, A0
	[!A0]	b	.s1	.L374
		nop	5
	;; condjump to .L374 occurs
.L375:
		ldb	.d1t1	*++A6[1], A18
		nop	4
		ext	.s1	A18, 24, 24, A19
		sub	.d1	A19, 9, A21
	||	cmpeq	.l1	A17, A19, A22
	||	shl	.s1	A18, 24, A20
		cmpltu	.l1	4, A21, A23
		cmpeq	.l1	0, A23, A24
		or	.d1	A22, A24, A1
	[A1]	b	.s1	.L375
		nop	5
	;; condjump to .L375 occurs
.L374:
		shr	.s1	A20, 24, A25
		mvk	.s1	43, A26
		mvk	.s1	45, A27
	||	cmpeq	.l1	A26, A25, A1
		cmpeq	.l1	A27, A25, A2
	||[A1]	b	.s1	.L381
	[A2]	mvk	.d1	1, A1
		nop	4
	;; condjump to .L381 occurs
	[!A2]	b	.s1	.L391
		nop	5
	;; condjump to .L391 occurs
		add	.d1	A6, 1, A6
.L377:
		ldb	.d1t1	*A6, A28
	||	mvk	.l1	0, A4
		nop	4
		ext	.s1	A28, 24, 24, A29
		subah	.d1	A29, 24, A29
		nop	1
		cmpltu	.l2x	9, A29, B0
	[B0]	b	.s1	.L379
		nop	5
	;; condjump to .L379 occurs
.L378:
		subah	.d1	A28, 24, A28
	||	shl	.s1	A4, 2, A30
		ext	.s1	A28, 24, 24, A3
	||	ldb	.d1t1	*++A6[1], A28
	||	add	.l1	A30, A4, A31
		shl	.s1	A31, 1, A4
		sub	.d1	A4, A3, A4
		nop	2
		ext	.s1	A28, 24, 24, A7
		subah	.d1	A7, 24, A7
		nop	1
		cmpltu	.l2x	9, A7, B1
	[!B1]	b	.s1	.L378
		nop	5
	;; condjump to .L378 occurs
.L379:
		ret	.s2	B3
	||[!A1]	neg	.l1	A4, A4
		nop	5
	;; return occurs
.L391:
		ldb	.d1t1	*A6, A28
	||	mvk	.l1	0, A1
		mvk	.d1	0, A4
		nop	3
		ext	.s1	A28, 24, 24, A29
		subah	.d1	A29, 24, A29
		nop	1
		cmpltu	.l2x	9, A29, B0
	[!B0]	b	.s1	.L378
		nop	5
	;; condjump to .L378 occurs
		b	.s1	.L379
		nop	5
	;; jump to .L379 occurs
.L381:
		b	.s1	.L377
	||	mvk	.d1	0, A1
	||	add	.l1	1, A6, A6
		nop	5
	;; jump to .L377 occurs
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
	||	mv	.l1	A4, A8
	||	mvk	.s1	32, A5
		mvk	.s1	32, A17
		nop	3
		ext	.s1	A3, 24, 24, A4
		sub	.d1	A4, 9, A6
	||	cmpeq	.l1	A5, A4, A7
	||	shl	.s1	A3, 24, A20
		cmpltu	.l1	4, A6, A9
		cmpeq	.l1	0, A9, A16
		or	.d1	A7, A16, A0
	[!A0]	b	.s1	.L396
		nop	5
	;; condjump to .L396 occurs
.L397:
		ldb	.d1t1	*++A8[1], A18
		nop	4
		ext	.s1	A18, 24, 24, A19
		sub	.d1	A19, 9, A21
	||	cmpeq	.l1	A17, A19, A22
	||	shl	.s1	A18, 24, A20
		cmpltu	.l1	4, A21, A23
		cmpeq	.l1	0, A23, A24
		or	.d1	A22, A24, A1
	[A1]	b	.s1	.L397
		nop	5
	;; condjump to .L397 occurs
.L396:
		shr	.s1	A20, 24, A25
		mvk	.s1	43, A26
		mvk	.s1	45, A27
	||	cmpeq	.l1	A26, A25, A1
		cmpeq	.l1	A27, A25, A2
	||[A1]	b	.s1	.L403
	[A2]	mvk	.d2	1, B0
		nop	4
	;; condjump to .L403 occurs
	[!A2]	b	.s1	.L413
		nop	5
	;; condjump to .L413 occurs
		add	.d1	A8, 1, A8
.L399:
		ldb	.d1t1	*A8, A28
	||	mvk	.l1	0, A4
		mvk	.d1	0, A5
		nop	3
		ext	.s1	A28, 24, 24, A29
		subah	.d1	A29, 24, A29
		cmpltu	.l1	9, A29, A0
	[A0]	b	.s1	.L401
		nop	5
	;; condjump to .L401 occurs
.L400:
		addk	.s1	-48, A28
	||	addu	.l1	A4, A4, A1:A0
		ext	.s1	A28, 24, 24, A31
	||	ldb	.d1t1	*++A8[1], A28
	||	add	.l1	A1, A5, A30
		add	.d1	A30, A5, A3
	||	addu	.l1	A0, A0, A7:A6
	||	shr	.s1	A31, 31, A9
		add	.s1	A7, A3, A7
	||	addu	.l1	A6, A4, A1:A0
		add	.s1	A7, A3, A17
	||	addu	.l1	A0, A0, A7:A6
		add	.d1	A1, A17, A4
		ext	.s1	A28, 24, 24, A16
	||	add	.d1	A4, A5, A5
	||	sub	.l1	A6, A31, A4
		subah	.d1	A16, 24, A16
	||	add	.s1	A7, A5, A19
	||	cmpltu	.l1	A6, A4, A0
		add	.d1	A19, A5, A5
		cmpltu	.l2x	9, A16, B1
	||	sub	.d1	A5, A9, A21
	[!B1]	b	.s1	.L400
	||	sub	.d1	A21, A0, A5
		nop	5
	;; condjump to .L400 occurs
.L401:
		ret	.s2	B3
	||[!B0]	neg	.l1	A4, A4
	||[!B0]	neg	.s1	A5, A5
	[!B0]	cmpltu	.l1	0, A4, A0
	[!B0]	sub	.d1	A5, A0, A5
		nop	3
	;; return occurs
.L413:
		ldb	.d1t1	*A8, A28
	||	mvk	.d2	0, B0
	||	mvk	.l1	0, A4
		mvk	.d1	0, A5
		nop	3
		ext	.s1	A28, 24, 24, A29
		subah	.d1	A29, 24, A29
		cmpltu	.l1	9, A29, A0
	[!A0]	b	.s1	.L400
		nop	5
	;; condjump to .L400 occurs
		b	.s1	.L401
		nop	5
	;; jump to .L401 occurs
.L403:
		b	.s1	.L399
	||	mvk	.d2	0, B0
	||	add	.d1	A8, 1, A8
		nop	5
	;; jump to .L399 occurs
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
.L424:
		mv	.d1	A10, A0
	[!A0]	b	.s1	.L415
		nop	5
	;; condjump to .L415 occurs
.L427:
		shru	.s2x	A10, 1, B10
	||	mv	.d1	A14, A4
	||	add	.s1	-1, A10, A10
		nop	1
		mpy32	.m1x	A12, B10, A3
		call	.s2x	A15
		addkpc	.s2	.L428, B3, 0
		nop	1
		add	.d1	A13, A3, A11
		nop	1
	;; indirect call occurs, with return value
		mv	.l2x	A11, B4
.L428:
		cmpgt	.l1	0, A4, A1
		cmplt	.l1	0, A4, A2
	||[A1]	b	.s1	.L419
	||[!A1]	add	.d1	A11, A12, A13
		mv	.l1x	B10, A4
		sub	.d1	A10, A4, A10
		nop	3
	;; condjump to .L419 occurs
	[A2]	b	.s1	.L424
		nop	5
	;; condjump to .L424 occurs
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
.L419:
		mv	.l1x	B10, A10
		mv	.d1	A10, A0
	[A0]	b	.s1	.L427
		nop	5
	;; condjump to .L427 occurs
.L415:
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
		mv	.d1	A6, A0
	||	stw	.d2t2	B14, *+B15(44)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A15, *+B15(48)
		stw	.d2t1	A14, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
	[!A0]	b	.s1	.L430
	||	stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B11, *+B15(40)
		stw	.d2t2	B10, *+B15(36)
		stw	.d2t2	B3, *+B15(32)
	;; condjump to .L430 occurs
		mv	.d1	A4, A15
	||	mv	.l1x	B4, A12
	||	mv	.s1	A8, A14
		mv	.s1x	B6, A11
	||	mv	.d1	A6, A10
		mv	.l1x	B8, A13
.L433:
		shr	.s2x	A10, 1, B11
	||	mv	.d1	A13, A6
	||	mv	.l1	A15, A4
	||	add	.s1	-1, A10, A10
		mpy32	.m2x	B11, A11, B10
		call	.s2x	A14
		addkpc	.s2	.L443, B3, 0
		nop	1
		add	.d2x	B10, A12, B10
		mv	.d2	B10, B4
	;; indirect call occurs, with return value
		nop	1
.L443:
		cmplt	.l1	0, A4, A2
	||	mv	.s1	A4, A1
	[A2]	shr	.s2x	A10, 1, B11
	||[!A1]	b	.s1	.L429
	||[A2]	add	.d1x	A11, B10, A12
		nop	1
		mv	.l1x	B11, A0
		mv	.l1x	B11, A10
		nop	2
	;; condjump to .L429 occurs
	[A0]	b	.s1	.L433
		nop	5
	;; condjump to .L433 occurs
.L430:
		mvk	.d2	0, B10
.L429:
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
		addkpc	.s2	.L446, B3, 0
		nop	4
.L446:
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
	||	addkpc	.s2	.L451, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L451:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L452, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L452:
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
		addkpc	.s2	.L457, B3, 0
		nop	4
.L457:
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
	[!A0]	b	.s1	.L465
		nop	5
	;; condjump to .L465 occurs
.L475:
		ldw	.d1t1	*++A4[1], A5
	||	mv	.s1x	B4, A8
		nop	4
		cmpeq	.l1	A8, A5, A9
		cmpeq	.l1	0, A5, A3
		cmpeq	.l1	0, A9, A6
		cmpeq	.l1	0, A3, A7
		and	.d1	A7, A6, A0
	[A0]	b	.s1	.L475
		nop	5
	;; condjump to .L475 occurs
.L465:
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
	[!A0]	b	.s1	.L477
		nop	5
	;; condjump to .L477 occurs
.L488:
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
	[A0]	b	.s1	.L488
		nop	5
	;; condjump to .L488 occurs
.L477:
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
.L490:
		ldw	.d2t1	*B4++[1], A0
		nop	4
	[A0]	b	.s1	.L490
	||	stw	.d1t1	A0, *++A3[1]
		nop	5
	;; condjump to .L490 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
		ldw	.d1t1	*A4, A0
	||	mv	.s1	A4, A5
		nop	4
	[!A0]	b	.s1	.L497
		nop	5
	;; condjump to .L497 occurs
.L496:
		ldw	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L496
		nop	5
	;; condjump to .L496 occurs
		ret	.s2	B3
	||	sub	.d1	A5, A4, A4
		shr	.s1	A4, 2, A4
		nop	4
	;; return occurs
.L497:
		ret	.s2	B3
	||	mv	.d1	A4, A5
		sub	.d1	A5, A4, A4
		shr	.s1	A4, 2, A4
		nop	3
	;; return occurs
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
		mv	.d1	A6, A0
	||	mv	.s1	A4, A8
	||	mv	.l1x	B4, A7
	[!A0]	b	.s1	.L506
		nop	5
	;; condjump to .L506 occurs
.L503:
		mv	.l1	A8, A4
	||	ldw	.d1t1	*A8++[1], A5
	||	add	.s1	-1, A0, A0
		ldw	.d1t1	*A7++[1], A9
		nop	3
		cmpeq	.l1	0, A5, A3
		cmpeq	.l1	0, A9, A16
		cmpeq	.l1	A9, A5, A17
		cmpeq	.l1	0, A3, A18
		cmpeq	.l1	0, A16, A19
	||	and	.s1	A17, A18, A20
		and	.d1	A20, A19, A2
	[!A2]	b	.s1	.L516
	||[A2]	sub	.d1	A6, 1, A6
		nop	5
	;; condjump to .L516 occurs
	[A0]	b	.s1	.L503
		nop	5
	;; condjump to .L503 occurs
.L506:
		mvk	.d1	0, A4
.L501:
		ret	.s2	B3
		nop	5
	;; return occurs
.L516:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L506
		nop	5
	;; condjump to .L506 occurs
		ldw	.d1t1	*A4, A4
		nop	4
		cmpgt	.l1	A9, A4, A1
	[!A1]	b	.s1	.L501
	||[!A1]	cmplt	.l1	A9, A4, A4
		nop	5
	;; condjump to .L501 occurs
		ret	.s2	B3
	||	mvk	.d1	-1, A4
		nop	5
	;; return occurs
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
		mv	.d1	A6, A0
	||	mv	.s1	A4, A5
	[!A0]	b	.s1	.L523
		nop	5
	;; condjump to .L523 occurs
.L519:
		mv	.s1	A5, A4
	||	ldw	.d1t1	*A5++[1], A3
	||	mv	.l1x	B4, A7
		sub	.d1	A0, 1, A0
		nop	3
		cmpeq	.l1	A7, A3, A2
	[A2]	b	.s1	.L529
	||[!A2]	sub	.d1	A6, 1, A6
		nop	5
	;; condjump to .L529 occurs
	[A0]	b	.s1	.L519
		nop	5
	;; condjump to .L519 occurs
.L523:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L529:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L523
	||[A1]	ret	.s2	B3
		nop	5
	;; condjump to .L523 occurs
	;; return occurs
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
		mv	.d1	A6, A0
	||	mv	.s1	A4, A3
	||	mv	.l1x	B4, A8
	[!A0]	b	.s1	.L535
	||	mv	.d1	A6, A1
		nop	5
	;; condjump to .L535 occurs
.L532:
		ldw	.d1t1	*A8, A5
	||	add	.l1	-1, A1, A1
	||	add	.s1	4, A8, A8
		ldw	.d1t1	*A3, A4
	||	add	.s1	4, A3, A3
		nop	4
		cmpeq	.l1	A5, A4, A2
	[!A2]	b	.s1	.L545
	||[A2]	sub	.d1	A6, 1, A6
		nop	5
	;; condjump to .L545 occurs
	[A1]	b	.s1	.L532
		nop	5
	;; condjump to .L532 occurs
.L535:
		mvk	.d1	0, A4
.L530:
		ret	.s2	B3
		nop	5
	;; return occurs
.L545:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L535
		nop	5
	;; condjump to .L535 occurs
		cmpgt	.l1	A5, A4, A0
	[!A0]	b	.s1	.L530
	||[!A0]	cmplt	.l1	A5, A4, A4
		nop	5
	;; condjump to .L530 occurs
		ret	.s2	B3
	||	mvk	.d1	-1, A4
		nop	5
	;; return occurs
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
		sub	.d2	B15, 16, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(12)
	[!A0]	b	.s1	.L547
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	shl	.s1	A6, 2, A6
		nop	3
	;; condjump to .L547 occurs
		callp	.s2	(memcpy), B3
.L547:
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
	||[A0]	b	.s1	.L555
		nop	5
	;; condjump to .L555 occurs
	[!A1]	b	.s1	.L567
		nop	5
	;; condjump to .L567 occurs
		mv	.d1	A6, A1
	||	add	.l1	-4, A7, A16
	||	add	.d2x	B4, A7, B4
	||	add	.s1	A4, A7, A18
	[!A1]	b	.s1	.L555
		shru	.s1	A16, 2, A17
		add	.d1	A17, 1, A2
		nop	3
	;; condjump to .L555 occurs
.L558:
		sub	.d1	A2, 1, A2
	||	ldw	.d2t1	*--B4[1], A20
	[A2]	b	.s1	.L558
		nop	3
		stw	.d1t1	A20, *--A18[1]
		nop	1
	;; condjump to .L558 occurs
.L555:
		ret	.s2	B3
		nop	5
	;; return occurs
.L567:
		mv	.d1	A6, A2
	||	add	.l1	-4, A4, A9
	||	mv	.s1	A6, A0
	[!A2]	b	.s1	.L555
		nop	5
	;; condjump to .L555 occurs
.L559:
		sub	.d1	A0, 1, A0
	||	ldw	.d2t1	*B4++[1], A20
	[A0]	b	.s1	.L559
		nop	3
		stw	.d1t1	A20, *++A9[1]
		nop	1
	;; condjump to .L559 occurs
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
	[!A0]	b	.s1	.L569
		mvc	.s2x	A0, ILC
		nop	4
	;; condjump to .L569 occurs
		sploop	1
.L570:
		stw	.d1t2	B4, *A3++[1]
		spkernel	1, 0
.L569:
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
	[!A0]	b	.s1	.L578
		nop	5
	;; condjump to .L578 occurs
		mv	.d1	A6, A0
	||	add	.s1	A4, A6, A7
	||	add	.d2x	B4, A6, B5
	[!A0]	b	.s1	.L577
	||	sub	.d1	A7, A4, A1
		nop	5
	;; condjump to .L577 occurs
.L580:
		add	.s1	-1, A1, A1
	||	ldb	.d1t1	*--A7[1], A8
	[A1]	b	.s1	.L580
		nop	3
		stb	.d2t1	A8, *--B5[1]
		nop	1
	;; condjump to .L580 occurs
.L577:
		ret	.s2	B3
		nop	5
	;; return occurs
.L578:
		cmpeq	.l1	A3, A4, A1
	||	mv	.s1	A6, A2
	||	sub	.d2	B4, 1, B4
	[A1]	b	.s1	.L577
		nop	5
	;; condjump to .L577 occurs
	[!A2]	b	.s1	.L577
		nop	5
	;; condjump to .L577 occurs
.L581:
		add	.s1	-1, A2, A2
	||	ldb	.d1t1	*A4++[1], A8
	[A2]	b	.s1	.L581
		nop	3
		stb	.d2t1	A8, *++B4[1]
		nop	1
	;; condjump to .L581 occurs
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
.L629:
		shru	.s1	A4, A3, A5
	||	sub	.d1	A1, 1, A1
	||	add	.l1	1, A3, A3
		and	.d1	1, A5, A0
	[A0]	b	.s1	.L633
		nop	5
	;; condjump to .L633 occurs
	[A1]	b	.s1	.L629
		nop	5
	;; condjump to .L629 occurs
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L633:
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
	[!A0]	b	.s1	.L634
	||[!A0]	mvk	.d1	0, A4
	[A0]	and	.d1	1, A0, A4
		mv	.d1	A4, A1
		nop	3
	;; condjump to .L634 occurs
	[A1]	b	.s1	.L634
	||[!A1]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L634 occurs
.L636:
		shr	.s1	A0, 1, A0
	||	add	.d1	A4, 1, A4
		and	.d1	1, A0, A1
	[!A1]	b	.s1	.L636
		nop	5
	;; condjump to .L636 occurs
.L634:
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
	||	addkpc	.s2	.L648, B3, 0
		mvklh	.s2	65407, B4
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	3
.L648:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L642
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L642 occurs
		call	.s2	(__c6xabi_gtf)
	||	mv	.d1	A10, A4
	||	mvk	.l2	-1, B4
		addkpc	.s2	.L649, B3, 0
		mvklh	.s2	32639, B4
	;; call to (__c6xabi_gtf) occurs, with return value
		nop	3
.L649:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L642:
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
	||	addkpc	.s2	.L656, B3, 0
		mvklh	.s2	65519, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L656:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L650
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L650 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	-1, B4
	||	mvk	.l2	-1, B5
		addkpc	.s2	.L657, B3, 0
		mvklh	.s2	32751, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L657:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L650:
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
	||	addkpc	.s2	.L664, B3, 0
		mvklh	.s2	65519, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L664:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L658
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L658 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	-1, B4
	||	mvk	.l2	-1, B5
		addkpc	.s2	.L665, B3, 0
		mvklh	.s2	32751, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L665:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L658:
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
	||	addkpc	.s2	.L668, B3, 0
	;; call to (__c6xabi_fltid) occurs, with return value
		nop	4
.L668:
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
	||	addkpc	.s2	.L683, B3, 0
		stdw	.d2t1	A11:A10, *+B15(8)
		mv	.d1	A4, A12
	||	mv	.s1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L683:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	mv	.s1	A12, A4
	[A0]	b	.s1	.L670
		nop	5
	;; condjump to .L670 occurs
		callp	.s2	(__c6xabi_addf), B3
		callp	.s2	(__c6xabi_eqf), B3
	||	mv	.l2x	A12, B4
		mv	.d1	A4, A1
	[A1]	b	.s1	.L670
		nop	5
	;; condjump to .L670 occurs
		mvk	.d1	0, A11
	||	cmpgt	.l1	0, A10, A2
	[A2]	mvklh	.s1	16128, A11
	[!A2]	mvklh	.s1	16384, A11
.L673:
		and	.d1	1, A10, A0
	||	mv	.l2x	A11, B4
	||	mv	.s1	A12, A4
	[!A0]	b	.s1	.L672
		nop	5
	;; condjump to .L672 occurs
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A12
.L672:
		shru	.s1	A10, 31, A3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A11, A4
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L670
		nop	5
	;; condjump to .L670 occurs
		callp	.s2	(__c6xabi_mpyf), B3
		b	.s1	.L673
	||	mv	.d1	A4, A11
		nop	5
	;; jump to .L673 occurs
.L670:
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
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t1	A14, *+B15(20)
		dmv	.s1	A5, A4, A15:A14
	||	stw	.d2t2	B14, *+B15(28)
		call	.s2	(__c6xabi_unordd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A10, *+B15(8)
	||	addkpc	.s2	.L702, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		mv	.l2x	A15, B5
	||	mv	.l1x	B4, A10
	;; call to (__c6xabi_unordd) occurs, with return value
		mv	.l2x	A4, B4
.L702:
		mv	.d1	A4, A0
	||	mv	.l2x	A14, B4
	||	dmv	.s1	A15, A14, A5:A4
	[A0]	b	.s1	.L689
	||	mv	.l2x	A15, B5
		nop	5
	;; condjump to .L689 occurs
		callp	.s2	(__c6xabi_addd), B3
		call	.s2	(__c6xabi_eqd)
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L704, B3, 0
	;; call to (__c6xabi_eqd) occurs, with return value
		nop	4
.L704:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L689
		nop	5
	;; condjump to .L689 occurs
		mvk	.d1	0, A13
	||	cmpgt	.l1	0, A10, A2
		mvk	.d1	0, A12
	||[A2]	mvklh	.s1	16352, A13
	[!A2]	mvklh	.s1	16384, A13
.L692:
		and	.d1	1, A10, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A15, A14, A5:A4
	[!A0]	b	.s1	.L691
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L691 occurs
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A15:A14
.L691:
		shru	.s1	A10, 31, A3
	||	mv	.l2x	A12, B4
	||	mv	.d1	A12, A4
	||	mv	.l1	A13, A5
		add	.d1	A3, A10, A10
	||	mv	.l2x	A13, B5
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L689
		nop	5
	;; condjump to .L689 occurs
		callp	.s2	(__c6xabi_mpyd), B3
		b	.s1	.L692
		dmv	.s1	A5, A4, A13:A12
		nop	4
	;; jump to .L692 occurs
.L689:
		ldw	.d2t2	*+B15(24), B3
	||	dmv	.s1	A15, A14, A5:A4
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
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t1	A14, *+B15(20)
		dmv	.s1	A5, A4, A15:A14
	||	stw	.d2t2	B14, *+B15(28)
		call	.s2	(__c6xabi_unordd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A10, *+B15(8)
	||	addkpc	.s2	.L721, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		mv	.l2x	A15, B5
	||	mv	.l1x	B4, A10
	;; call to (__c6xabi_unordd) occurs, with return value
		mv	.l2x	A4, B4
.L721:
		mv	.d1	A4, A0
	||	mv	.l2x	A14, B4
	||	dmv	.s1	A15, A14, A5:A4
	[A0]	b	.s1	.L708
	||	mv	.l2x	A15, B5
		nop	5
	;; condjump to .L708 occurs
		callp	.s2	(__c6xabi_addd), B3
		call	.s2	(__c6xabi_eqd)
	||	mv	.l2x	A4, B4
		mv	.l2x	A5, B5
	||	dmv	.s1	A15, A14, A5:A4
	||	addkpc	.s2	.L723, B3, 0
	;; call to (__c6xabi_eqd) occurs, with return value
		nop	4
.L723:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L708
		nop	5
	;; condjump to .L708 occurs
		mvk	.d1	0, A13
	||	cmpgt	.l1	0, A10, A2
		mvk	.d1	0, A12
	||[A2]	mvklh	.s1	16352, A13
	[!A2]	mvklh	.s1	16384, A13
.L711:
		and	.d1	1, A10, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A15, A14, A5:A4
	[!A0]	b	.s1	.L710
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L710 occurs
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A15:A14
.L710:
		shru	.s1	A10, 31, A3
	||	mv	.l2x	A12, B4
	||	mv	.d1	A12, A4
	||	mv	.l1	A13, A5
		add	.d1	A3, A10, A10
	||	mv	.l2x	A13, B5
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L708
		nop	5
	;; condjump to .L708 occurs
		callp	.s2	(__c6xabi_mpyd), B3
		b	.s1	.L711
		dmv	.s1	A5, A4, A13:A12
		nop	4
	;; jump to .L711 occurs
.L708:
		ldw	.d2t2	*+B15(24), B3
	||	dmv	.s1	A15, A14, A5:A4
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
	[!A1]	b	.s1	.L727
		nop	5
	;; condjump to .L727 occurs
.L728:
		ldb	.d1t1	*A3++[1], A6
	||	add	.s1	-1, A1, A1
		ldb	.d2t1	*B4++[1], A5
	[A1]	b	.s1	.L728
		nop	3
		xor	.d1	A5, A6, A7
		stb	.d1t1	A7, *-A3(1)
	;; condjump to .L728 occurs
.L727:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
		ldb	.d1t1	*A4, A0
	||	mv	.s1	A4, A3
		nop	4
	[!A0]	b	.s1	.L736
		nop	5
	;; condjump to .L736 occurs
.L737:
		ldb	.d1t1	*++A3[1], A1
		nop	4
	[A1]	b	.s1	.L737
		nop	5
	;; condjump to .L737 occurs
.L736:
		mv	.d1	A6, A2
	||	sub	.d2	B4, 1, B4
	||	mv	.s1	A3, A5
	[!A2]	b	.s1	.L744
		nop	5
	;; condjump to .L744 occurs
.L739:
		ldb	.d2t1	*++B4[1], A7
	||	sub	.d1	A2, 1, A2
	||	mv	.s1	A5, A3
		nop	4
		ext	.s1	A7, 24, 24, A0
	||	stb	.d1t1	A7, *A5
	||	add	.l1	1, A5, A5
	[!A0]	b	.s1	.L751
	||[A0]	sub	.d1	A6, 1, A6
		nop	5
	;; condjump to .L751 occurs
	[A2]	b	.s1	.L739
		nop	5
	;; condjump to .L739 occurs
		mv	.d1	A5, A3
.L744:
		mvk	.d1	0, A6
		stb	.d1t1	A6, *A3
.L741:
		ret	.s2	B3
		nop	5
	;; return occurs
.L751:
		mv	.d1	A6, A1
	[A1]	b	.s1	.L741
		nop	5
	;; condjump to .L741 occurs
		b	.s1	.L741
	||	mvk	.d1	0, A6
		stb	.d1t1	A6, *A3
		nop	4
	;; jump to .L741 occurs
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
		mv	.s1x	B4, A1
	||	mv	.l1	A4, A5
	||	mvk	.d1	0, A4
	[!A1]	b	.s1	.L752
		nop	5
	;; condjump to .L752 occurs
.L753:
		add	.d1	A5, A4, A3
	||	sub	.d2	B4, 1, B4
		ldb	.d1t1	*A3, A1
		nop	4
	[A1]	b	.s1	.L755
		nop	5
	;; condjump to .L755 occurs
.L752:
		ret	.s2	B3
		nop	5
	;; return occurs
.L755:
		mv	.s1x	B4, A1
	||	add	.d1	A4, 1, A4
	[A1]	b	.s1	.L753
		nop	5
	;; condjump to .L753 occurs
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
	[!A0]	b	.s1	.L766
	||[A0]	sub	.d2	B4, 1, B4
		shl	.s1	A3, 24, A8
		nop	4
	;; condjump to .L766 occurs
.L762:
		mv	.l1x	B4, A6
	||	shr	.s1	A8, 24, A5
.L765:
		ldb	.d1t1	*++A6[1], A1
		nop	4
		cmpeq	.l1	A5, A1, A0
	||[!A1]	b	.s1	.L771
		nop	5
	;; condjump to .L771 occurs
	[!A0]	b	.s1	.L765
		nop	5
	;; condjump to .L765 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L771:
		ldb	.d1t1	*++A4[1], A7
		nop	4
		ext	.s1	A7, 24, 24, A2
	[A2]	b	.s1	.L762
		shl	.s1	A7, 24, A8
		nop	4
	;; condjump to .L762 occurs
.L766:
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
.L774:
		mv	.s1	A3, A6
	||	ldb	.d1t1	*A3++[1], A7
	||	mv	.l1x	B4, A9
		nop	4
		shl	.s1	A7, 24, A5
		mv	.d1	A5, A1
	||	ext	.s1	A7, 24, 24, A8
	[A1]	b	.s1	.L774
	||	cmpeq	.l1	A9, A8, A0
	[A0]	mv	.d1	A6, A4
		nop	4
	;; condjump to .L774 occurs
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
	||	mv	.s1x	B4, A17
		nop	4
		ext	.s1	A4, 24, 24, A0
	[!A0]	b	.s1	.L780
		shl	.s1	A4, 24, A16
		nop	4
	;; condjump to .L780 occurs
.L781:
		ldb	.d1t1	*++A17[1], A1
		nop	4
	[A1]	b	.s1	.L781
		nop	5
	;; condjump to .L781 occurs
.L780:
		mv	.l1x	B4, A5
		sub	.d1	A17, A5, A27
		mv	.d1	A27, A2
	[!A2]	b	.s1	.L798
	||[A2]	add	.d1x	A27, B4, A27
	[A2]	shr	.s1	A16, 24, A16
		nop	4
	;; condjump to .L798 occurs
.L788:
		ldb	.d1t1	*A3, A7
	||	mv	.l1	A3, A4
	||	add	.s1	1, A3, A3
		nop	4
		ext	.s1	A7, 24, 24, A8
		cmpeq	.l1	A16, A8, A1
	||	mv	.s1	A8, A0
	[A1]	b	.s1	.L787
		nop	5
	;; condjump to .L787 occurs
	[A0]	b	.s1	.L788
		nop	5
	;; condjump to .L788 occurs
		mvk	.d1	0, A4
.L779:
		ret	.s2	B3
		nop	5
	;; return occurs
.L787:
		extu	.s1	A7, 24, 24, A28
	||	mv	.d1	A4, A2
	||	mv	.l1	A4, A26
		mv	.d1	A28, A1
	||[!A2]	b	.s1	.L779
	||	mv	.l1x	B4, A6
		nop	5
	;; condjump to .L779 occurs
	[!A1]	b	.s1	.L792
		nop	5
	;; condjump to .L792 occurs
.L785:
		ldb	.d1t1	*A6, A9
	||	mv	.l1	A6, A18
	||	add	.s1	1, A6, A6
		cmpeq	.l1	A6, A27, A22
		cmpeq	.l1	0, A22, A24
		nop	2
		extu	.s1	A9, 24, 24, A19
		cmpeq	.l1	0, A19, A21
		cmpeq	.l1	A28, A19, A20
		cmpeq	.l1	0, A21, A23
		and	.d1	A20, A23, A25
		and	.d1	A25, A24, A0
	[!A0]	b	.s1	.L784
	||[A0]	ldbu	.d1t1	*++A26[1], A28
		nop	4
		mv	.d1	A28, A2
	;; condjump to .L784 occurs
	[A2]	b	.s1	.L785
		nop	5
	;; condjump to .L785 occurs
		mv	.d1	A6, A18
.L784:
		ldbu	.d1t1	*A18, A29
	||	add	.s1	1, A4, A3
		nop	4
		cmpeq	.l1	A28, A29, A1
	[A1]	b	.s1	.L779
	[!A1]	b	.s1	.L788
		nop	5
	;; condjump to .L779 occurs
	;; jump to .L788 occurs
.L798:
		ret	.s2	B3
	||	mv	.d1	A3, A4
		nop	5
	;; return occurs
.L792:
		b	.s1	.L784
	||	mv	.l1x	B4, A18
		nop	5
	;; jump to .L784 occurs
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
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
	||	mvk	.l2	0, B4
	||	addkpc	.s2	.L811, B3, 0
		mv	.l1x	B5, A13
	||	mvk	.d2	0, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L811:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L810
		nop	5
	;; condjump to .L810 occurs
.L800:
		callp	.s2	(__c6xabi_gtd), B3
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A2
	||	mvk	.d2	0, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.l2	0, B5
	[!A2]	b	.s1	.L803
		nop	5
	;; condjump to .L803 occurs
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	b	.s1	.L802
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
.L810:
		callp	.s2	(__c6xabi_gtd), B3
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A1
	[!A1]	b	.s1	.L800
		nop	5
	;; condjump to .L800 occurs
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
	||	mv	.d1	A4, A9
	||	mv	.s1x	B6, A0
	[!A0]	b	.s1	.L815
		mv	.l1x	B4, A16
		add	.d1	A9, A16, A22
	||	mv	.s1x	B5, A1
		cmpltu	.l1	A22, A9, A2
		nop	2
	;; condjump to .L815 occurs
	[A1]	b	.s1	.L825
		nop	5
	;; condjump to .L825 occurs
	[A2]	b	.s1	.L825
	||[!A2]	ldb	.d1t1	*A6++[1], A17
		nop	5
	;; condjump to .L825 occurs
.L822:
		ldb	.d1t1	*A9, A3
	||	mv	.l1	A9, A4
	||	add	.s1	1, A9, A9
		cmpltu	.l1	A22, A9, A1
		nop	3
		cmpeq	.l1	A17, A3, A0
	[A0]	b	.s1	.L838
		nop	5
	;; condjump to .L838 occurs
	[!A1]	b	.s1	.L822
		nop	5
	;; condjump to .L822 occurs
.L825:
		mvk	.d1	0, A4
.L815:
		ret	.s2	B3
		nop	5
	;; return occurs
.L838:
		add	.l1x	-1, B6, A2
	||	mv	.d1	A9, A20
	||	mv	.s1	A6, A21
	[!A2]	b	.s1	.L815
	||	mv	.d1	A2, A0
		nop	5
	;; condjump to .L815 occurs
.L819:
		ldbu	.d1t1	*A21, A18
	||	add	.l1	-1, A0, A0
	||	add	.s1	1, A21, A21
		ldbu	.d1t1	*A20, A19
	||	add	.s1	1, A20, A20
		nop	4
		cmpeq	.l1	A18, A19, A8
		nop	1
		mv	.l2x	A8, B0
	[!B0]	b	.s1	.L839
	||[B0]	sub	.d1	A2, 1, A2
		nop	5
	;; condjump to .L839 occurs
	[A0]	b	.s1	.L819
		nop	5
	;; condjump to .L819 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L839:
	[!A2]	b	.s1	.L815
		nop	5
	;; condjump to .L815 occurs
		sub	.s1	A19, A18, A0
	||	cmpltu	.l1	A22, A9, A1
	[!A0]	b	.s1	.L815
		nop	5
	;; condjump to .L815 occurs
	[!A1]	b	.s1	.L822
		nop	5
	;; condjump to .L822 occurs
		b	.s1	.L825
		nop	5
	;; jump to .L825 occurs
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
		sub	.d2	B15, 24, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(20)
	[!A0]	b	.s1	.L841
	||	stw	.d2t2	B14, *+B15(24)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A11
	||	mv	.s1	A6, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	2
	;; condjump to .L841 occurs
		callp	.s2	(memmove), B3
		nop	1
.L841:
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
	||	addkpc	.s2	.L875, B3, 0
		stw	.d2t1	A15, *+B15(48)
		dmv	.s1	A5, A4, A11:A10
	||	stdw	.d2t2	B11:B10, *+B15(32)
		stw	.d2t1	A14, *+B15(24)
	;; call to (__c6xabi_ltd) occurs, with return value
		mv	.l1x	B4, A13
	||	mvk	.d2	0, B4
.L875:
		mv	.d1	A4, A0
	||	mvk	.d2	0, B5
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.l2	0, B4
	[A0]	b	.s1	.L873
	||[!A0]	mvk	.d2	0, B12
	||	mvklh	.s2	16368, B5
		nop	5
	;; condjump to .L873 occurs
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[!A1]	b	.s1	.L869
		nop	5
	;; condjump to .L869 occurs
.L874:
		mvk	.d2	0, B11
	||	mvk	.d1	0, A15
	||	mvk	.l1	0, A12
	||	mvk	.l2	0, B10
		mvklh	.s2	16352, B11
	||	mvk	.d1	0, A14
	||	mvklh	.s1	16368, A15
.L853:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A11, A10, A5:A4
	||	add	.d1	A12, 1, A12
		addkpc	.s2	.L877, B3, 0
		dmv	.s2	B11, B10, B5:B4
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	3
.L877:
		call	.s2	(__c6xabi_ged)
	||	dmv	.s1	A5, A4, A11:A10
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L878, B3, 0
	;; call to (__c6xabi_ged) occurs, with return value
		nop	4
.L878:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L853
		nop	5
	;; condjump to .L853 occurs
.L854:
		mv	.s1x	B12, A0
	||	stw	.d1t1	A12, *A13
	[!A0]	b	.s1	.L858
		nop	5
	;; condjump to .L858 occurs
		mvk	.d1	0, A6
	||	mv	.s1	A10, A0
		mvklh	.s1	32768, A6
		xor	.d1	A6, A11, A1
		dmv	.s1	A1, A0, A11:A10
.L858:
		ldw	.d2t2	*+B15(28), B3
	||	dmv	.s1	A11, A10, A5:A4
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
.L873:
		call	.s2	(__c6xabi_ged)
	||	mv	.s1	A10, A0
	||	mvk	.d2	0, B4
	||	mvk	.d1	0, A3
	||	mvk	.l2	0, B5
		mvklh	.s1	32768, A3
	||	mvk	.d2	1, B12
	||	addkpc	.s2	.L879, B3, 0
		xor	.d1	A3, A11, A1
	||	mvklh	.s2	16368, B5
		dmv	.s1	A1, A0, A11:A10
		dmv	.s1	A11, A10, A5:A4
	;; call to (__c6xabi_ged) occurs, with return value
		nop	1
.L879:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L874
		nop	5
	;; condjump to .L874 occurs
.L869:
		callp	.s2	(__c6xabi_eqd), B3
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		call	.s2	(__c6xabi_ltd)
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
	||	cmpeq	.l1	0, A4, A12
	||	dmv	.s1	A11, A10, A5:A4
		addkpc	.s2	.L881, B3, 0
		mvklh	.s2	16352, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L881:
		cmpeq	.l1	0, A4, A4
		xor	.d1	1, A4, A5
		and	.s1	A12, A5, A0
	||	mvk	.d1	0, A12
	[!A0]	b	.s1	.L854
		nop	5
	;; condjump to .L854 occurs
		mvk	.d1	0, A15
	||	mvk	.l1	0, A14
		mvklh	.s1	16352, A15
.L857:
		call	.s2	(__c6xabi_addd)
	||	mv	.l2x	A10, B4
	||	mv	.d1	A10, A4
	||	mv	.l1	A11, A5
	||	add	.s1	-1, A12, A12
		mv	.l2x	A11, B5
	||	addkpc	.s2	.L882, B3, 0
	;; call to (__c6xabi_addd) occurs, with return value
		nop	4
.L882:
		call	.s2	(__c6xabi_ltd)
	||	dmv	.s1	A5, A4, A11:A10
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L883, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L883:
		mv	.d1	A4, A2
	||	mv	.l2x	A10, B4
	||	mv	.l1	A10, A4
	||	mv	.s1	A11, A5
	[!A2]	b	.s1	.L854
	||	mv	.l2x	A11, B5
	||[A2]	sub	.d1	A12, 1, A12
		nop	5
	;; condjump to .L854 occurs
		callp	.s2	(__c6xabi_addd), B3
		call	.s2	(__c6xabi_ltd)
	||	dmv	.s1	A5, A4, A11:A10
	||	mv	.l2x	A14, B4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L885, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L885:
		mv	.d1	A4, A2
	[A2]	b	.s1	.L857
		nop	5
	;; condjump to .L857 occurs
		b	.s1	.L854
		nop	5
	;; jump to .L854 occurs
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
		or	.d1	A5, A4, A0
	||	mv	.l1	A4, A23
	||	mv	.s1	A5, A9
	[!A0]	b	.s1	.L886
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; condjump to .L886 occurs
.L888:
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
	[A1]	b	.s1	.L888
	||	mv	.d1	A0, A4
	||	add	.l1x	A17, B5, A19
		nop	1
		mv	.l2x	A19, B5
		nop	3
	;; condjump to .L888 occurs
.L886:
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
	[!A0]	b	.s1	.L908
		nop	5
	;; condjump to .L908 occurs
.L894:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L895
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A3
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A3, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L895 occurs
	[A1]	b	.s1	.L894
		nop	5
	;; condjump to .L894 occurs
.L895:
	[!A2]	b	.s1	.L897
	||[!A2]	mvk	.d1	0, A4
	[A2]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L897 occurs
.L896:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L896
		nop	5
	;; condjump to .L896 occurs
.L897:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L908:
		b	.s1	.L896
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L896 occurs
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
	[A0]	b	.s1	.L913
	[A0]	mvk	.s1	63, A4
		nop	4
	;; condjump to .L913 occurs
	[!A1]	lmbd	.l1	1, A4, A4
	[!A1]	addk	.s1	32, A4
	||[A1]	lmbd	.l1	1, A6, A4
		sub	.d1	A4, 1, A4
.L913:
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
	[!A0]	b	.s1	.L920
		nop	5
	;; condjump to .L920 occurs
.L922:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L922
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L922 occurs
.L920:
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
	[A1]	b	.s1	.L931
		nop	5
	;; condjump to .L931 occurs
		add	.d1x	A6, B4, A8
		cmpgtu	.l1	A4, A8, A1
	[!A1]	b	.s1	.L942
		nop	5
	;; condjump to .L942 occurs
.L931:
	[!A0]	b	.s1	.L930
	||	add	.l1x	-8, B4, A16
	||	sub	.d1	A4, 8, A18
		shl	.s1	A0, 3, A9
		sub	.d1	A9, 8, A17
		shru	.s1	A17, 3, A19
		add	.d1	A19, 1, A1
		nop	1
	;; condjump to .L930 occurs
.L934:
		add	.s1	-1, A1, A1
	||	lddw	.d1t1	*++A16[1], A29:A28
	[A1]	b	.s1	.L934
		nop	3
		stdw	.d1t1	A29:A28, *++A18[1]
		nop	1
	;; condjump to .L934 occurs
.L930:
		cmpltu	.l1	A7, A6, A2
	||	sub	.d1	A7, 1, A21
	||	add	.s1x	-1, B4, A22
	[!A2]	b	.s1	.L927
	||	add	.d1	A22, A6, A23
	||	add	.l1	A4, A21, A24
		add	.d2x	B4, A21, B4
		nop	1
		mv	.l1x	B4, A25
		sub	.d1	A23, A25, A0
		nop	1
	;; condjump to .L927 occurs
.L935:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*++B4[1], A27
	[A0]	b	.s1	.L935
		nop	3
		stb	.d1t1	A27, *++A24[1]
		nop	1
	;; condjump to .L935 occurs
.L927:
		ret	.s2	B3
		nop	5
	;; return occurs
.L942:
		mv	.d1	A6, A2
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A8, A3, A0
	[!A2]	b	.s1	.L927
		nop	5
	;; condjump to .L927 occurs
.L936:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A8[1], A27
	[A0]	b	.s1	.L936
		nop	3
		stb	.d1t1	A27, *--A4[1]
		nop	1
	;; condjump to .L936 occurs
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
	[A1]	b	.s1	.L947
		nop	5
	;; condjump to .L947 occurs
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[!A1]	b	.s1	.L959
		nop	5
	;; condjump to .L959 occurs
.L947:
	[!A0]	b	.s1	.L946
	||	add	.l1x	-2, B4, A9
	||	sub	.d1	A4, 2, A17
		shl	.s1	A0, 1, A8
		sub	.d1	A8, 2, A16
		shru	.s1	A16, 1, A18
		add	.d1	A18, 1, A1
		nop	1
	;; condjump to .L946 occurs
.L950:
		add	.s1	-1, A1, A1
	||	ldh	.d1t1	*++A9[1], A24
	[A1]	b	.s1	.L950
		nop	3
		sth	.d1t1	A24, *++A17[1]
		nop	1
	;; condjump to .L950 occurs
.L946:
		and	.d1	1, A6, A2
	[!A2]	b	.s1	.L943
		nop	5
	;; condjump to .L943 occurs
		sub	.d1	A6, 1, A20
		add	.d1x	A20, B4, A21
	||	add	.s1	A4, A20, A22
		ldb	.d1t1	*A21, A23
		nop	4
		stb	.d1t1	A23, *A22
.L943:
		ret	.s2	B3
		nop	5
	;; return occurs
.L959:
		mv	.d1	A6, A2
	||	sub	.l1	A5, A3, A0
	||	add	.s1	A4, A6, A6
	[!A2]	b	.s1	.L943
		nop	5
	;; condjump to .L943 occurs
.L951:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A5[1], A24
	[A0]	b	.s1	.L951
		nop	3
		stb	.d1t1	A24, *--A6[1]
		nop	1
	;; condjump to .L951 occurs
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
	[A1]	b	.s1	.L964
		nop	5
	;; condjump to .L964 occurs
		add	.d1x	A6, B4, A7
		cmpgtu	.l1	A4, A7, A1
	[!A1]	b	.s1	.L975
		nop	5
	;; condjump to .L975 occurs
.L964:
	[!A0]	b	.s1	.L963
	||	add	.l1x	-4, B4, A16
	||	sub	.d1	A4, 4, A18
		shl	.s1	A0, 2, A9
		sub	.d1	A9, 4, A17
		shru	.s1	A17, 2, A19
		add	.d1	A19, 1, A1
		nop	1
	;; condjump to .L963 occurs
.L967:
		add	.s1	-1, A1, A1
	||	ldw	.d1t1	*++A16[1], A27
	[A1]	b	.s1	.L967
		nop	3
		stw	.d1t1	A27, *++A18[1]
		nop	1
	;; condjump to .L967 occurs
.L963:
		cmpltu	.l1	A8, A6, A2
	||	sub	.d1	A8, 1, A21
	||	add	.s1x	-1, B4, A22
	[!A2]	b	.s1	.L960
	||	add	.d1	A22, A6, A23
	||	add	.l1	A4, A21, A24
		add	.d2x	B4, A21, B4
		nop	1
		mv	.l1x	B4, A25
		sub	.d1	A23, A25, A0
		nop	1
	;; condjump to .L960 occurs
.L968:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*++B4[1], A27
	[A0]	b	.s1	.L968
		nop	3
		stb	.d1t1	A27, *++A24[1]
		nop	1
	;; condjump to .L968 occurs
.L960:
		ret	.s2	B3
		nop	5
	;; return occurs
.L975:
		mv	.d1	A6, A2
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A7, A3, A0
	[!A2]	b	.s1	.L960
		nop	5
	;; condjump to .L960 occurs
.L969:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A7[1], A27
	[A0]	b	.s1	.L969
		nop	3
		stb	.d1t1	A27, *--A4[1]
		nop	1
	;; condjump to .L969 occurs
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
	||	mvk	.d1	1, A2
	||	mv	.l1	A4, A7
		cmpltu	.l1	A3, A4, A0
	[!A0]	b	.s1	.L1059
		nop	5
	;; condjump to .L1059 occurs
.L1045:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1046
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
	[!A1]	mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1046 occurs
	[A1]	b	.s1	.L1045
		nop	5
	;; condjump to .L1045 occurs
.L1046:
	[!A2]	b	.s1	.L1048
	||[!A2]	mvk	.d1	0, A4
	[A2]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1048 occurs
.L1047:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L1047
		nop	5
	;; condjump to .L1047 occurs
.L1048:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1059:
		b	.s1	.L1047
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1047 occurs
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
	||	mvk	.d1	1, A6
	[A0]	neg	.l2	B4, B4
	||[A0]	mvk	.d1	1, A1
	||[!A0]	mvk	.l1	0, A1
	||	mvk	.s1	31, A8
		nop	1
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1082
	||[!A2]	mvk	.d1	0, A4
	[A2]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1082 occurs
.L1083:
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
	[A0]	b	.s1	.L1083
		nop	5
	;; condjump to .L1083 occurs
.L1082:
		ret	.s2	B3
	||[A1]	neg	.l1	A4, A4
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
	[!A0]	b	.s1	.L1103
	||	mvk	.d1	1, A0
		nop	5
	;; condjump to .L1103 occurs
.L1097:
		shl	.s2	B4, 1, B4
	||	shl	.s1	A0, 1, A0
		cmpeq	.l1	0, A0, A8
		mv	.s1x	B4, A5
	||	cmpeq	.l1	0, A8, A9
		cmpltu	.l1	A5, A4, A7
		and	.d1	A9, A7, A2
	[A2]	b	.s1	.L1097
		nop	5
	;; condjump to .L1097 occurs
	[!A0]	b	.s1	.L1098
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1098 occurs
.L1100:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A6, A2
	[!A2]	or	.d1	A0, A4, A4
	||	shru	.s1	A0, 1, A0
	||[!A2]	sub	.l1	A6, A16, A6
	[A0]	b	.s1	.L1100
		nop	5
	;; condjump to .L1100 occurs
.L1098:
		ret	.s2	B3
	||[A1]	neg	.l1	A4, A4
		nop	5
	;; return occurs
.L1103:
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
	[!A2]	b	.s1	.L1123
		nop	5
	;; condjump to .L1123 occurs
.L1117:
		shl	.s2	B6, 1, B6
	||	shl	.s1	A0, 1, A0
		cmpeq	.l1	0, A0, A9
		mv	.s1x	B6, A7
	||	cmpeq	.l1	0, A9, A16
		cmpltu	.l1	A7, A4, A8
		and	.d1	A16, A8, A2
	[A2]	b	.s1	.L1117
		nop	5
	;; condjump to .L1117 occurs
	[!A0]	b	.s1	.L1137
		nop	5
	;; condjump to .L1137 occurs
.L1128:
		mv	.l1x	B6, A4
	||	shru	.s1	A0, 1, A0
	||	shru	.s2	B6, 1, B6
		cmpgtu	.l1	A4, A6, A2
	[!A2]	sub	.d1	A6, A4, A6
.L1138:
	[A0]	b	.s1	.L1128
		nop	5
	;; condjump to .L1128 occurs
.L1137:
		ret	.s2	B3
	||	mv	.d1	A6, A4
	[A1]	neg	.l1	A6, A4
		nop	4
	;; return occurs
.L1123:
		b	.s1	.L1138
	||	mv	.l1x	B6, A4
	||	shru	.s2	B6, 1, B6
	||	mvk	.d1	1, A0
		cmpgtu	.l1	A4, A6, A2
	||	shru	.s1	A0, 1, A0
	[!A2]	sub	.d1	A6, A4, A6
		nop	3
	;; jump to .L1138 occurs
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
		mv	.l1x	B4, A3
	||	extu	.s1	A4, 16, 16, A7
	||	mvk	.d1	1, A20
		extu	.s1	A3, 16, 16, A22
	||	mv	.d1	A4, A8
		cmpgtu	.l1	A7, A22, A0
	[!A0]	b	.s1	.L1156
		nop	5
	;; condjump to .L1156 occurs
.L1140:
		mv	.l1x	B4, A5
		ext	.s1	A5, 16, 16, A9
		cmpgt	.l1	0, A9, A1
	[A1]	b	.s1	.L1141
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A20, 1, A20
	[!A1]	mv	.l1x	B4, A5
	||	extu	.s1	A20, 16, 16, A17
		extu	.s1	A5, 16, 16, A16
	||	cmpeq	.l1	0, A17, A19
		cmpltu	.l1	A16, A7, A18
	[!A1]	cmpeq	.l1	0, A19, A5
	;; condjump to .L1141 occurs
		and	.d1	A5, A18, A1
	[A1]	b	.s1	.L1140
		nop	5
	;; condjump to .L1140 occurs
.L1141:
		extu	.s1	A20, 16, 16, A23
		mv	.d1	A23, A2
	[!A2]	b	.s1	.L1143
	||[!A2]	mv	.d1	A20, A4
	[A2]	mv	.l1x	B4, A4
		extu	.s1	A4, 16, 16, A22
	||[A2]	mvk	.d1	0, A4
		nop	3
	;; condjump to .L1143 occurs
.L1142:
		cmpgtu	.l1	A22, A7, A1
	[!A1]	mv	.s1x	B4, A5
	||	shru	.s2x	A22, 1, B4
	||[!A1]	or	.d1	A4, A20, A4
	[!A1]	sub	.d1	A8, A5, A8
	||	shru	.s1	A23, 1, A5
		mv	.d1	A5, A0
	||	mv	.l1x	B4, A21
	||	mv	.s1	A5, A20
	[A0]	b	.s1	.L1142
		extu	.s1	A8, 16, 16, A7
		extu	.s1	A21, 16, 16, A22
		extu	.s1	A5, 16, 16, A23
		nop	2
	;; condjump to .L1142 occurs
.L1143:
		ret	.s2	B3
	||	mv	.d1	A6, A2
	[A2]	mv	.d1	A8, A4
		nop	4
	;; return occurs
.L1156:
		b	.s1	.L1142
	||	mvk	.d1	1, A20
	||	mvk	.l1	1, A23
		mvk	.d1	0, A4
		nop	4
	;; jump to .L1142 occurs
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
		mv	.s1x	B4, A3
	||	mvk	.d1	1, A2
	||	mv	.l1	A4, A7
		cmpltu	.l1	A3, A4, A0
	[!A0]	b	.s1	.L1172
		nop	5
	;; condjump to .L1172 occurs
.L1158:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1159
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
	[!A1]	mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1159 occurs
	[A1]	b	.s1	.L1158
		nop	5
	;; condjump to .L1158 occurs
.L1159:
	[!A2]	b	.s1	.L1161
	||[!A2]	mvk	.d1	0, A4
	[A2]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1161 occurs
.L1160:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L1160
		nop	5
	;; condjump to .L1160 occurs
.L1161:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1172:
		b	.s1	.L1160
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1160 occurs
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1174
		nop	5
	;; condjump to .L1174 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shl	.s1	A4, A9, A5
	||	mv	.d1	A8, A4
.L1176:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1174:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1176
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1176
		shru	.s1	A4, A3, A7
	[A2]	shl	.s1	A5, A2, A5
		shl	.s1	A4, A2, A8
	||[A2]	or	.d1	A5, A7, A5
	[A2]	mv	.d1	A8, A4
		nop	1
	;; condjump to .L1176 occurs
	;; jump to .L1176 occurs
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1181
		nop	5
	;; condjump to .L1181 occurs
		subah	.d2	B4, 16, B4
	||	shr	.s1	A5, 31, A8
		nop	1
		mv	.l1x	B4, A9
		shr	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1183:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1181:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1183
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1183
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shr	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1183 occurs
	;; jump to .L1183 occurs
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
	[A0]	b	.s1	.L1199
	||	cmplt	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1199 occurs
	[A0]	b	.s1	.L1200
		nop	5
	;; condjump to .L1200 occurs
	[A1]	b	.s1	.L1199
		nop	5
	;; condjump to .L1199 occurs
	[A2]	b	.s1	.L1200
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1200 occurs
	;; return occurs
.L1199:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1200:
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
	[A0]	b	.s1	.L1207
	||	cmplt	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1207 occurs
	[A0]	b	.s1	.L1208
	||	sub	.d1	A4, 1, A4
		nop	5
	;; condjump to .L1208 occurs
	[A1]	b	.s1	.L1207
		nop	5
	;; condjump to .L1207 occurs
	[A2]	b	.s1	.L1208
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1208 occurs
	;; return occurs
.L1207:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		sub	.d1	A4, 1, A4
		nop	4
	;; return occurs
.L1208:
		ret	.s2	B3
	||	mvk	.d1	2, A4
		sub	.d1	A4, 1, A4
		nop	4
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
	[!A1]	b	.s1	.L1214
		nop	5
	;; condjump to .L1214 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shru	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1216:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1214:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1216
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1216
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shru	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1216 occurs
	;; jump to .L1216 occurs
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
		stw	.d2t2	B14, *+B15(36)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A15, *+B15(40)
		mvk	.d1	0, A15
	||	stw	.d2t1	A14, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(32)
		dmv	.s1	A5, A4, A13:A12
	||	mv	.l1x	B4, A11
	||	mvk	.d1	0, A14
		mvklh	.s1	16368, A15
	||	mv	.l1x	B4, A10
.L1237:
		and	.d1	1, A10, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A15, A14, A5:A4
	[!A0]	b	.s1	.L1235
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L1235 occurs
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A15:A14
.L1235:
		shru	.s1	A10, 31, A3
	||	mv	.l2x	A12, B4
	||	mv	.d1	A12, A4
	||	mv	.l1	A13, A5
		add	.d1	A3, A10, A10
	||	mv	.l2x	A13, B5
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1236
		nop	5
	;; condjump to .L1236 occurs
		callp	.s2	(__c6xabi_mpyd), B3
		b	.s1	.L1237
		dmv	.s1	A5, A4, A13:A12
		nop	4
	;; jump to .L1237 occurs
.L1236:
		cmpgt	.l1	0, A11, A2
	||	dmv	.s1	A15, A14, A5:A4
	[A2]	b	.s1	.L1244
	||[!A2]	ldw	.d2t2	*+B15(32), B3
	[!A2]	ldw	.d2t1	*+B15(12), A10
	[!A2]	ldw	.d2t1	*+B15(16), A11
	[!A2]	ldw	.d2t1	*+B15(20), A12
	[!A2]	ldw	.d2t1	*+B15(24), A13
	[!A2]	ldw	.d2t1	*+B15(28), A14
	;; condjump to .L1244 occurs
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(36), B14
		ldw	.d2t1	*+B15(40), A15
	||	addk	.s2	40, B15
		nop	4
	;; return occurs
.L1244:
		call	.s2	(__c6xabi_divd)
	||	mv	.l2x	A14, B4
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		mv	.l2x	A15, B5
	||	mvklh	.s1	16368, A5
	||	addkpc	.s2	.L1247, B3, 0
	;; call to (__c6xabi_divd) occurs, with return value
		nop	4
.L1247:
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
		stw	.d2t2	B14, *+B15(32)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A12, *+B15(20)
		mvk	.d1	0, A12
	||	stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(28)
		mv	.d1	A4, A11
	||	mv	.l1x	B4, A13
	||	mvklh	.s1	16256, A12
		mv	.l1x	B4, A10
.L1251:
		and	.d1	1, A10, A0
	||	mv	.l2x	A11, B4
	||	mv	.s1	A12, A4
	[!A0]	b	.s1	.L1249
		nop	5
	;; condjump to .L1249 occurs
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A12
.L1249:
		shru	.s1	A10, 31, A3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A11, A4
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1250
		nop	5
	;; condjump to .L1250 occurs
		callp	.s2	(__c6xabi_mpyf), B3
		b	.s1	.L1251
	||	mv	.d1	A4, A11
		nop	5
	;; jump to .L1251 occurs
.L1250:
		cmpgt	.l1	0, A13, A2
	||	mv	.s1	A12, A4
	[A2]	b	.s1	.L1258
	||[!A2]	ldw	.d2t2	*+B15(28), B3
	[!A2]	ldw	.d2t1	*+B15(12), A10
	[!A2]	ldw	.d2t1	*+B15(16), A11
	[!A2]	ldw	.d2t1	*+B15(20), A12
	[!A2]	ldw	.d2t1	*+B15(24), A13
	[!A2]	ret	.s2	B3
	||[!A2]	ldw	.d2t2	*+B15(32), B14
	;; condjump to .L1258 occurs
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
.L1258:
		call	.s2	(__c6xabi_divf)
	||	mv	.l2x	A12, B4
	||	mvk	.d1	0, A4
		mvklh	.s1	16256, A4
	||	addkpc	.s2	.L1261, B3, 0
	;; call to (__c6xabi_divf) occurs, with return value
		nop	4
.L1261:
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
	[A0]	b	.s1	.L1266
	||	cmpltu	.l1	A3, A5, A0
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
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
		mv	.l1x	B5, A3
		cmpgtu	.l1	A3, A5, A0
	[A0]	b	.s1	.L1274
	||	cmpltu	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1274 occurs
	[A0]	b	.s1	.L1275
	||	sub	.d1	A4, 1, A4
		nop	5
	;; condjump to .L1275 occurs
	[A1]	b	.s1	.L1274
		nop	5
	;; condjump to .L1274 occurs
	[A2]	b	.s1	.L1275
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1275 occurs
	;; return occurs
.L1274:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		sub	.d1	A4, 1, A4
		nop	4
	;; return occurs
.L1275:
		ret	.s2	B3
	||	mvk	.d1	2, A4
		sub	.d1	A4, 1, A4
		nop	4
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
