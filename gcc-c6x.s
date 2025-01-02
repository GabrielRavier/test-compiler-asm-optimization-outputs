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
		mv	.l1x	B4, A7
		cmpltu	.l1	A7, A4, A0
	[!A0]	b	.s1	.L2
		nop	5
	;; condjump to .L2 occurs
		mv	.d1	A6, A2
	||	add	.l1x	A6, B4, A16
	||	add	.s1	A4, A6, A3
	[!A2]	b	.s1	.L3
	||	sub	.d1	A16, A7, A0
		nop	5
	;; condjump to .L3 occurs
.L4:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A16[1], A19
	[A0]	b	.s1	.L4
		nop	3
		stb	.d1t1	A19, *--A3[1]
		nop	1
	;; condjump to .L4 occurs
.L3:
		ret	.s2	B3
		nop	5
	;; return occurs
.L2:
		sub	.d1	A6, 1, A18
	||	add	.s1x	1, B4, A17
	||	cmpeq	.l1	A7, A4, A1
		mv	.d1	A6, A2
	||	sub	.l1	A4, A17, A9
	||[A1]	b	.s1	.L3
		cmpltu	.l2x	11, A18, B0
		cmpltu	.l2x	2, A9, B1
	||[!B0]	add	.l1x	1, B4, A3
	[B0]	mv	.d1	A17, A3
		nop	2
	;; condjump to .L3 occurs
	[!A2]	b	.s1	.L3
		nop	5
	;; condjump to .L3 occurs
	[!B0]	b	.s1	.L5
		nop	5
	;; condjump to .L5 occurs
	[!B1]	b	.s1	.L5
	||[B1]	neg	.l1	A4, A3
		and	.d1	3, A3, A0
	||	and	.s1	2, A3, A1
	[!A1]	add	.d1	A4, 1, A16
		cmpeq	.l2x	3, A0, B2
		nop	2
	;; condjump to .L5 occurs
	[!A0]	b	.s1	.L15
	||[A0]	ldb	.d2t1	*B4, A19
		nop	4
	[A0]	stb	.d1t1	A19, *A4
	;; condjump to .L15 occurs
	[!A1]	b	.s1	.L6
	||[A1]	ldb	.d2t1	*+B4(1), A20
		nop	4
	[A1]	stb	.d1t1	A20, *+A4(1)
	;; condjump to .L6 occurs
	[B2]	ldb	.d2t1	*+B4(2), A5
	||[!B2]	add	.l1x	2, B4, A17
	||[!B2]	add	.d1	A4, 2, A16
	||[!B2]	add	.s1	-2, A6, A18
	[B2]	add	.l1x	3, B4, A17
	||[B2]	add	.d1	A4, 3, A16
	||[B2]	add	.s1	-3, A6, A18
		nop	3
	[B2]	stb	.d1t1	A5, *+A4(2)
.L6:
		sub	.d1	A6, A0, A6
	||	add	.l1	A4, A0, A21
	||	add	.s1x	A0, B4, A23
		and	.d1	-4, A6, A22
		sub	.d1	A22, 4, A5
		shru	.s1	A5, 2, A24
		add	.d1	A24, 1, A2
.L10:
		add	.s1	-1, A2, A2
	||	ldnw	.d1t1	*A23++[1], A25
	[A2]	b	.s1	.L10
		nop	3
		stw	.d1t1	A25, *A21++[1]
		nop	1
	;; condjump to .L10 occurs
		cmpeq	.l1	A22, A6, A0
	||	add	.d1	A17, A22, A26
	||	sub	.s1	A18, A22, A28
	[A0]	b	.s1	.L3
	||[!A0]	ldb	.d1t1	*A26, A29
	||	add	.l1	A16, A22, A27
		cmpeq	.l2x	1, A28, B0
		cmpeq	.l2x	2, A28, B1
		nop	2
	[!A0]	stb	.d1t1	A29, *A27
	;; condjump to .L3 occurs
	[B0]	b	.s1	.L3
	||[!B0]	ldb	.d1t1	*+A26(1), A30
		nop	4
	[!B0]	stb	.d1t1	A30, *+A27(1)
	;; condjump to .L3 occurs
	[B1]	b	.s1	.L3
	||[!B1]	ldb	.d1t1	*+A26(2), A31
	||[!B1]	ret	.s2	B3
		nop	4
	[!B1]	stb	.d1t1	A31, *+A27(2)
	;; condjump to .L3 occurs
	;; return occurs
.L15:
		b	.s1	.L10
	||	mv	.d1	A6, A18
	||	sub	.l1	A6, A0, A6
		and	.d1	-4, A6, A22
	||	mv	.l1x	B4, A17
	||	mv	.s1	A4, A16
		sub	.d1	A22, 4, A5
	||	add	.l1	A4, A0, A21
	||	add	.s1x	A0, B4, A23
		shru	.s1	A5, 2, A24
		add	.d1	A24, 1, A2
		nop	1
	;; jump to .L10 occurs
.L5:
		add	.d1x	A6, B4, A7
	||	add	.s1	-1, A4, A8
		sub	.d1	A7, A3, A9
		add	.d1	A9, 1, A1
		nop	1
		mvc	.s2x	A1, ILC
		nop	3
		sploop	6
.L13:
		add	.s1	1, A3, A3
		ldb	.d1t1	*-A3(2), A19
		nop	4
	;; load to A19 occurs
		spkernel	1, 0
	||	stb	.d1t1	A19, *++A8[1]
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
	[!A1]	b	.s1	.L36
		nop	5
	;; condjump to .L36 occurs
.L37:
		ldbu	.d2t1	*++B4[1], A5
	||	sub	.d1	A1, 1, A1
		nop	4
		cmpeq	.l1	A6, A5, A0
	||	stb	.d1t1	A5, *A3++[1]
	[A0]	b	.s1	.L49
		nop	5
	;; condjump to .L49 occurs
	[A1]	b	.s1	.L37
		nop	5
	;; condjump to .L37 occurs
.L36:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L49:
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
	[!A1]	b	.s1	.L57
	||[A1]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L57 occurs
.L52:
		mv	.s1	A5, A4
	||	ldbu	.d1t1	*A5++[1], A3
	||	mv	.l1x	B4, A6
		sub	.d1	A1, 1, A1
		nop	3
		cmpeq	.l1	A6, A3, A2
	[A2]	b	.s1	.L50
		nop	5
	;; condjump to .L50 occurs
	[A1]	b	.s1	.L52
		nop	5
	;; condjump to .L52 occurs
.L57:
		mvk	.d1	0, A4
.L50:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
		mv	.d1	A6, A0
	[!A0]	b	.s1	.L68
		nop	5
	;; condjump to .L68 occurs
.L62:
		ldbu	.d2t1	*B4, A7
	||	sub	.d1	A0, 1, A0
	||	add	.s2	1, B4, B4
		ldbu	.d1t1	*A4, A8
	||	add	.s1	1, A4, A4
		nop	4
		cmpeq	.l1	A7, A8, A1
	[!A1]	b	.s1	.L72
		nop	5
	;; condjump to .L72 occurs
	[A0]	b	.s1	.L62
		nop	5
	;; condjump to .L62 occurs
.L68:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L72:
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
	[!A0]	b	.s1	.L74
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	3
	;; condjump to .L74 occurs
		callp	.s2	(memcpy), B3
.L74:
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
	[A1]	b	.s1	.L84
	||	mv	.d1	A7, A4
	||	add	.l1	-1, A7, A7
		nop	5
	;; condjump to .L84 occurs
.L87:
		mvk	.d1	0, A4
.L81:
		ret	.s2	B3
		nop	5
	;; return occurs
.L84:
		ldbu	.d1t1	*A4, A6
	||	mv	.l1x	B4, A5
	||	add	.s1	-1, A1, A1
		nop	4
		cmpeq	.l1	A5, A6, A0
	[A0]	b	.s1	.L81
	||[!A0]	mv	.d1	A7, A4
	||	add	.l1	-1, A7, A7
		nop	5
	;; condjump to .L81 occurs
	[A1]	b	.s1	.L84
		nop	5
	;; condjump to .L84 occurs
		b	.s1	.L87
		nop	5
	;; jump to .L87 occurs
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
		sub	.d2	B15, 16, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(12)
	[!A0]	b	.s1	.L91
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	extu	.s2	B4, 24, 24, B4
		nop	3
	;; condjump to .L91 occurs
		callp	.s2	(memset), B3
.L91:
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
		ldb	.d2t1	*B4, A0
	||	mv	.d1	A4, A3
		add	.d1	A3, 1, A5
		nop	3
	[!A0]	b	.s1	.L95
	||	stb	.d1t1	A0, *A4
		nop	5
	;; condjump to .L95 occurs
.L97:
		ldb	.d2t1	*++B4[1], A1
	||	mv	.d1	A5, A4
		nop	4
	[A1]	b	.s1	.L97
	||	stb	.d1t1	A1, *A5++[1]
		nop	5
	;; condjump to .L97 occurs
.L95:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
		ldb	.d1t1	*A4, A1
	||	extu	.s2	B4, 24, 24, B4
		nop	4
	[!A1]	b	.s1	.L102
	||	mv	.d1	A1, A6
		nop	5
	;; condjump to .L102 occurs
.L103:
		extu	.s1	A6, 24, 24, A5
	||	mv	.l1x	B4, A3
		cmpeq	.l1	A3, A5, A0
	[A0]	b	.s1	.L102
	||[!A0]	ldb	.d1t1	*++A4[1], A1
		nop	4
		mv	.d1	A1, A6
	;; condjump to .L102 occurs
	[A1]	b	.s1	.L103
		nop	5
	;; condjump to .L103 occurs
.L102:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
		mv	.d1	A4, A3
.L113:
		ldb	.d1t1	*A3, A0
	||	mv	.l1x	B4, A5
	||	mv	.s1	A3, A4
		add	.d1	A3, 1, A3
		nop	3
		cmpeq	.l1	A5, A0, A1
	[A1]	b	.s1	.L111
		nop	5
	;; condjump to .L111 occurs
	[A0]	b	.s1	.L113
		nop	5
	;; condjump to .L113 occurs
		mvk	.d1	0, A4
.L111:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
		ldb	.d1t1	*A4, A8
		ldb	.d2t1	*B4, A7
		nop	3
		shl	.s1	A8, 24, A6
	||	mv	.d1	A8, A16
		cmpeq	.l1	A7, A8, A0
	||	mv	.s1	A7, A5
	[!A0]	b	.s1	.L123
		nop	5
	;; condjump to .L123 occurs
.L120:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L126
	||[A1]	ldb	.d1t1	*++A4[1], A9
	[A1]	ldb	.d2t1	*++B4[1], A17
		nop	3
		mv	.d1	A9, A16
	||	shl	.s1	A9, 24, A6
	;; condjump to .L126 occurs
		cmpeq	.l1	A17, A9, A2
	||	mv	.s1	A17, A5
	[A2]	b	.s1	.L120
		nop	5
	;; condjump to .L120 occurs
.L123:
		ret	.s2	B3
	||	extu	.s1	A16, 24, 24, A3
		extu	.s1	A5, 24, 24, A4
		sub	.d1	A3, A4, A4
		nop	3
	;; return occurs
.L126:
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
	[!A0]	b	.s1	.L127
	||[!A0]	mvk	.d1	0, A4
		mv	.d1	A4, A5
		nop	4
	;; condjump to .L127 occurs
.L129:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L129
		nop	5
	;; condjump to .L129 occurs
		sub	.d1	A5, A4, A4
.L127:
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
	[!A0]	b	.s1	.L134
	||[!A0]	mvk	.d1	0, A4
	[A0]	ldbu	.d1t1	*A4, A5
		nop	4
	;; condjump to .L134 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L137
	||[!A1]	ldbu	.d2t1	*B4, A7
	||[!A1]	mvk	.d1	0, A5
		nop	5
	;; condjump to .L137 occurs
.L138:
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
	[!A2]	b	.s1	.L137
	||[A2]	ldbu	.d1t1	*++A4[1], A5
		nop	4
		mv	.d1	A5, A0
	;; condjump to .L137 occurs
	[A0]	b	.s1	.L138
		nop	5
	;; condjump to .L138 occurs
		ldbu	.d1t1	*+A9(1), A7
	||	mvk	.l1	0, A5
		nop	4
.L137:
		sub	.d1	A5, A7, A4
.L134:
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
	||[!A0]	b	.s1	.L144
		shru	.s1	A6, 1, A5
		add	.d1	A5, 1, A1
		nop	3
	;; condjump to .L144 occurs
		mvc	.s2x	A1, ILC
		nop	3
		sploop	2
.L146:
		ldb	.d1t2	*+A4(1), B5
		ldb	.d1t1	*A4++(2), A8
		nop	2
		add	.s2	2, B4, B4
	;; load to B5 occurs
		stb	.d2t2	B5, *-B4(2)
	;; load to A8 occurs
		spkernel	3, 0
	||	stb	.d2t1	A8, *-B4(1)
.L144:
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
		mvk	.s1	32, A5
	||	add	.d1	A4, A3, A6
	||	cmpeq	.l1	0, A7, A9
		cmpltu	.l1	A5, A6, A8
		cmpeq	.l1	0, A8, A16
		or	.d1	A9, A16, A0
	[A0]	b	.s1	.L173
		nop	5
	;; condjump to .L173 occurs
		mvk	.s1	-8232, A17
	||	mvk	.d1	7, A19
		add	.d1	A4, A17, A18
	||	mvklh	.s1	65535, A19
		cmpltu	.l1	1, A18, A1
	||	add	.s1	A4, A19, A4
	[!A1]	b	.s1	.L173
	||[A1]	ret	.s2	B3
	||	cmpltu	.l1	2, A4, A20
		cmpeq	.l1	0, A20, A4
		nop	4
	;; condjump to .L173 occurs
	;; return occurs
.L173:
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
	||	mvk	.l1	3, A23
		mvk	.s1	-18475, A7
	||	add	.l1	A4, A5, A6
	||	mvk	.d1	-2, A25
		mvklh	.s1	0, A7
		mvk	.s1	8231, A8
	||	cmpltu	.l1	A7, A6, A9
		mvk	.s1	8192, A19
	||	cmpltu	.l1	A8, A4, A16
		mvk	.s1	254, A3
	||	cmpeq	.l1	0, A9, A17
		mvklh	.s1	65535, A19
	||	cmpltu	.l1	A3, A4, A0
		mvklh	.s1	65535, A22
	||	cmpeq	.l1	0, A16, A18
	||	add	.d1	A4, A19, A21
		mvk	.s1	8184, A20
	||	add	.d1	A4, A22, A24
	||	or	.l1	A18, A17, A1
		mvklh	.s1	16, A23
	||	cmpltu	.l1	A20, A21, A2
	[!A0]	b	.s1	.L186
	||	cmpltu	.l1	A23, A24, A0
		mvklh	.s1	0, A25
		nop	4
	;; condjump to .L186 occurs
	[A1]	b	.s1	.L182
	||[A0]	mvk	.d1	0, A4
	[!A0]	and	.d1	A25, A4, A4
		cmpeq	.l1	A25, A4, A26
	[!A0]	cmpeq	.l1	0, A26, A4
		nop	2
	;; condjump to .L182 occurs
	[!A2]	b	.s1	.L182
		nop	5
	;; condjump to .L182 occurs
	[A0]	b	.s1	.L178
		nop	5
	;; condjump to .L178 occurs
.L178:
		ret	.s2	B3
		nop	5
	;; return occurs
.L182:
		ret	.s2	B3
	||	mvk	.d1	1, A4
		nop	5
	;; return occurs
.L186:
		ret	.s2	B3
	||	add	.d1	A4, 1, A27
	||	mvk	.s1	32, A28
		clr	.s1	A27, 7, 31, A29
		cmpltu	.l1	A28, A29, A4
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
	||	addkpc	.s2	.L203, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L203:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L193
	||	mv	.l2x	A13, B5
	[A0]	dmv	.s1	A11, A10, A5:A4
	[!A0]	dmv	.s1	A13, A12, A5:A4
		nop	3
	;; condjump to .L193 occurs
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L193
	||	mv	.l2x	A13, B5
	[A0]	dmv	.s1	A13, A12, A5:A4
	[!A0]	dmv	.s1	A11, A10, A5:A4
		nop	3
	;; condjump to .L193 occurs
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L193
	||[!A0]	mvk	.d1	0, A4
	||[!A0]	mvk	.l1	0, A5
		nop	5
	;; condjump to .L193 occurs
		call	.s2	(__c6xabi_subd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L206, B3, 0
	;; call to (__c6xabi_subd) occurs, with return value
		nop	4
.L206:
.L193:
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
	||	addkpc	.s2	.L217, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A10
	||	mv	.s1x	B4, A11
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L217:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	[A0]	b	.s1	.L207
	||[A0]	mv	.d1	A10, A4
	[!A0]	mv	.d1	A11, A4
		nop	4
	;; condjump to .L207 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	mv	.l2x	A11, B4
	[A1]	b	.s1	.L207
	||[A1]	mv	.d1	A11, A4
	[!A1]	mv	.d1	A10, A4
		nop	4
	;; condjump to .L207 occurs
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A2
	[!A2]	b	.s1	.L207
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L207 occurs
		callp	.s2	(__c6xabi_subf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A10, A4
.L207:
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
	||	addkpc	.s2	.L234, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.l1x	B5, A11
	||	mv	.l2x	A13, B5
		mv	.l1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L234:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s1	.L229
	||	mv	.l2x	A11, B5
		nop	5
	;; condjump to .L229 occurs
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	||	clr	.s1	A11, 0, 30, A6
		clr	.s1	A13, 0, 30, A4
		cmpeq	.l1	A6, A4, A2
	||[A1]	b	.s1	.L228
		nop	5
	;; condjump to .L228 occurs
	[A2]	b	.s1	.L223
		nop	5
	;; condjump to .L223 occurs
		mv	.d1	A4, A1
	[!A1]	b	.s1	.L228
		nop	5
	;; condjump to .L228 occurs
.L229:
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
.L223:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A11, B5
	||	addkpc	.s2	.L236, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L236:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L229
		nop	5
	;; condjump to .L229 occurs
.L228:
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
	||	addkpc	.s2	.L250, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A11
	||	mv	.s1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L250:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	mv	.s1	A10, A4
	[A0]	b	.s1	.L245
		nop	5
	;; condjump to .L245 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	clr	.s1	A11, 0, 30, A3
		clr	.s1	A10, 0, 30, A4
		cmpeq	.l1	A4, A3, A2
	||[A1]	b	.s1	.L244
		nop	5
	;; condjump to .L244 occurs
	[A2]	b	.s1	.L239
		nop	5
	;; condjump to .L239 occurs
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L244
		nop	5
	;; condjump to .L244 occurs
.L245:
		mv	.d1	A10, A4
.L237:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
.L239:
		callp	.s2	(__c6xabi_ltf), B3
	||	mv	.l2x	A10, B4
	||	mv	.d1	A11, A4
		b	.s1	.L237
	||	mv	.d1	A4, A0
	[!A0]	mv	.d1	A11, A10
		mv	.d1	A10, A4
		nop	3
	;; jump to .L237 occurs
.L244:
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
	||	addkpc	.s2	.L266, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.l1x	B5, A11
	||	mv	.l2x	A13, B5
		mv	.l1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L266:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s1	.L261
	||	mv	.l2x	A11, B5
		nop	5
	;; condjump to .L261 occurs
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	||	clr	.s1	A11, 0, 30, A6
		clr	.s1	A13, 0, 30, A4
		cmpeq	.l1	A6, A4, A2
	||[A1]	b	.s1	.L260
		nop	5
	;; condjump to .L260 occurs
	[A2]	b	.s1	.L255
		nop	5
	;; condjump to .L255 occurs
		mv	.d1	A4, A1
	[!A1]	b	.s1	.L260
		nop	5
	;; condjump to .L260 occurs
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
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A11, B5
	||	addkpc	.s2	.L268, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L268:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L261
		nop	5
	;; condjump to .L261 occurs
.L260:
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
	||	addkpc	.s2	.L282, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L282:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L275
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L275 occurs
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	||	clr	.s1	A13, 0, 30, A6
		clr	.s1	A11, 0, 30, A4
		cmpeq	.l1	A6, A4, A2
	||[A1]	b	.s1	.L277
		nop	5
	;; condjump to .L277 occurs
	[A2]	b	.s1	.L271
		nop	5
	;; condjump to .L271 occurs
		mv	.d1	A4, A1
	[!A1]	b	.s1	.L275
		nop	5
	;; condjump to .L275 occurs
.L277:
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
.L271:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L284, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L284:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L277
		nop	5
	;; condjump to .L277 occurs
.L275:
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
	||	addkpc	.s2	.L298, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A10
	||	mv	.s1x	B4, A11
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L298:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	||	mv	.s1	A11, A4
	[A0]	b	.s1	.L291
		nop	5
	;; condjump to .L291 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	clr	.s1	A10, 0, 30, A3
		clr	.s1	A11, 0, 30, A4
		cmpeq	.l1	A4, A3, A2
	||[A1]	b	.s1	.L293
		nop	5
	;; condjump to .L293 occurs
	[A2]	b	.s1	.L287
		nop	5
	;; condjump to .L287 occurs
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L291
		nop	5
	;; condjump to .L291 occurs
.L293:
		mv	.d1	A10, A4
.L285:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
.L287:
		callp	.s2	(__c6xabi_ltf), B3
	||	mv	.d1	A10, A4
	||	mv	.l2x	A11, B4
		b	.s1	.L285
	||	mv	.d1	A4, A0
	[!A0]	mv	.d1	A11, A10
		mv	.d1	A10, A4
		nop	3
	;; jump to .L285 occurs
.L291:
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
	||	addkpc	.s2	.L314, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L314:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L307
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L307 occurs
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	||	clr	.s1	A13, 0, 30, A6
		clr	.s1	A11, 0, 30, A4
		cmpeq	.l1	A6, A4, A2
	||[A1]	b	.s1	.L309
		nop	5
	;; condjump to .L309 occurs
	[A2]	b	.s1	.L303
		nop	5
	;; condjump to .L303 occurs
		mv	.d1	A4, A1
	[!A1]	b	.s1	.L307
		nop	5
	;; condjump to .L307 occurs
.L309:
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
.L303:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L316, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L316:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L309
		nop	5
	;; condjump to .L309 occurs
.L307:
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
	||[!A0]	b	.s1	.L318
	[A0]	ldw	.d2t1	*+B14($GOT(digits)), A6
		nop	3
	[!A0]	mv	.d1	A4, A5
	;; condjump to .L318 occurs
		mv	.d1	A4, A5
.L319:
		and	.d1	A7, A0, A3
	||	shru	.s1	A0, 6, A0
		add	.d1	A6, A3, A8
		ldb	.d1t1	*A8, A9
	||[A0]	b	.s1	.L319
		nop	4
		stb	.d1t1	A9, *A5++[1]
	;; condjump to .L319 occurs
.L318:
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
	||	mvk	.d1	0, A3
	||	add	.s1	-1, A4, A4
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
	||	mvk	.s1	32557, A7
	||	mvk	.d1	1, A17
		mvk	.s1	-3027, A4
		mvklh	.s1	19605, A7
		mvklh	.s1	22609, A4
		nop	1
		addaw	.d1x	B14, (seed), A6
	||	ldw	.d2t2	*+B15(8), B14
	||	add	.s2	8, B15, B15
		ldw	.d1t1	*+A6(4), A5
		ldw	.d1t1	*A6, A8
		nop	3
		mpy32	.m1	A5, A7, A3
		mpy32	.m1	A8, A4, A9
		mpy32u	.m1	A8, A7, A1:A0
		ret	.s2	B3
		nop	1
		add	.d1	A3, A9, A16
		addu	.l1	A0, A17, A5:A4
	||	add	.s1	A16, A1, A18
		add	.d1	A5, A18, A5
		stdw	.d1t1	A5:A4, *A6
	||	shru	.s1	A5, 1, A4
	;; return occurs
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
		mv	.l1x	B4, A0
	[!A0]	b	.s1	.L328
	||[!A0]	stw	.d1t2	B4, *A4
	[!A0]	stw	.d1t2	B4, *+A4(4)
	[A0]	ldw	.d2t2	*B4, B5
	[A0]	stw	.d1t2	B4, *+A4(4)
		nop	3
	;; condjump to .L328 occurs
		stw	.d1t2	B5, *A4
		stw	.d2t1	A4, *B4
		ldw	.d1t1	*A4, A1
		nop	4
	[A1]	stw	.d1t1	A4, *+A1(4)
.L328:
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
		ldw	.d1t1	*+A4(4), A4
		ret	.s2	B3
		nop	3
		mv	.d1	A4, A1
	[A1]	stw	.d1t1	A0, *A4
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
	[!A0]	b	.s1	.L347
	||	stw	.d2t2	B12, *+B15(40)
		stw	.d2t2	B3, *+B15(28)
		mv	.s2x	A6, B11
	||	mv	.d1	A4, A14
	||	mv	.d2	B4, B10
		nop	3
	;; condjump to .L347 occurs
.L349:
		call	.s2x	A15
	||	mv	.d1	A14, A4
	||	add	.s1	1, A11, A11
		mv	.l2x	A10, B4
	||	addkpc	.s2	.L363, B3, 0
		mv	.l2x	A10, B12
	||	add	.d1	A10, A12, A10
	;; indirect call occurs, with return value
		nop	3
.L363:
		mv	.s1	A4, A1
	||	cmpeq	.l1	A11, A13, A2
	[!A1]	b	.s1	.L346
		nop	5
	;; condjump to .L346 occurs
	[!A2]	b	.s1	.L349
		nop	5
	;; condjump to .L349 occurs
.L347:
		mv	.d1	A12, A0
	||	mpy32	.m1	A12, A13, A4
	||	add	.l1	1, A13, A3
	||	mv	.s1	A12, A6
	||	mv	.l2x	A14, B4
	[!A0]	b	.s1	.L346
	||	stw	.d2t1	A3, *B11
		nop	3
		add	.d2x	B10, A4, B12
		nop	1
	;; condjump to .L346 occurs
		callp	.s2	(memmove), B3
	||	mv	.l1x	B12, A4
.L346:
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
	[!A0]	b	.s1	.L366
	||	stw	.d2t2	B3, *+B15(28)
		mv	.l1x	B6, A14
		mv	.l1x	B4, A10
		nop	3
	;; condjump to .L366 occurs
.L368:
		call	.s2x	A13
	||	mv	.d1	A12, A4
	||	add	.l1	1, A11, A11
	||	mv	.s1	A10, A15
		mv	.l2x	A10, B4
	||	add	.d1	A10, A14, A10
	||	addkpc	.s2	.L378, B3, 0
	;; indirect call occurs, with return value
		nop	4
.L378:
		mv	.s1	A4, A1
	||	cmpeq	.l1x	A11, B10, A2
	[!A1]	b	.s1	.L365
		nop	5
	;; condjump to .L365 occurs
	[!A2]	b	.s1	.L368
		nop	5
	;; condjump to .L368 occurs
.L366:
		mvk	.d1	0, A15
.L365:
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
		ldb	.d1t1	*A4, A5
	||	mvk	.s1	32, A6
		mvk	.s1	32, A17
		nop	3
		sub	.d1	A5, 9, A3
	||	cmpeq	.l1	A6, A5, A8
	||	mv	.s1	A5, A18
		cmpltu	.l1	4, A3, A9
	||	shl	.s1	A5, 24, A7
		cmpeq	.l1	0, A9, A16
		or	.d1	A8, A16, A1
	[!A1]	b	.s1	.L382
		nop	5
	;; condjump to .L382 occurs
.L383:
		ldb	.d1t1	*++A4[1], A5
		nop	4
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A17, A5, A20
	||	mv	.s1	A5, A18
		cmpltu	.l1	4, A19, A21
	||	shl	.s1	A5, 24, A7
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L383
		nop	5
	;; condjump to .L383 occurs
.L382:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		cmpeq	.l1	A24, A23, A1
	||	mvk	.s1	45, A26
	[A1]	b	.s1	.L384
	||	cmpeq	.l1	A26, A23, A1
		nop	5
	;; condjump to .L384 occurs
	[A1]	b	.s1	.L385
		nop	5
	;; condjump to .L385 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B1
		cmpltu	.l1	9, A5, A2
	[A2]	b	.s1	.L393
	||[!A2]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L393 occurs
.L387:
		mvk	.d1	0, A4
.L390:
		ldb	.d1t1	*++A5[1], A31
	||	addk	.s1	-48, A18
		ext	.s1	A18, 24, 24, A29
		shl	.s1	A4, 2, A28
		add	.d1	A28, A4, A4
		shl	.s1	A4, 1, A30
		mv	.l1	A31, A18
	||	subah	.d1	A31, 24, A31
	||	sub	.s1	A30, A29, A4
		nop	1
		cmpltu	.l2x	9, A31, B2
	[!B2]	b	.s1	.L390
		nop	5
	;; condjump to .L390 occurs
		ret	.s2	B3
	||[!B1]	sub	.d1	A29, A30, A4
		nop	5
	;; return occurs
.L385:
		ldb	.d1t1	*+A4(1), A27
	||	add	.s1	1, A4, A5
		nop	4
		mv	.s1	A27, A18
	||	subah	.d1	A27, 24, A27
		nop	1
		cmpltu	.l2x	9, A27, B0
	[!B0]	b	.s1	.L387
	||[!B0]	mvk	.d2	1, B1
		nop	5
	;; condjump to .L387 occurs
.L393:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L384:
		ldb	.d1t1	*+A4(1), A25
	||	add	.s1	1, A4, A5
	||	mvk	.d2	0, B1
		nop	4
		mv	.s1	A25, A18
	||	subah	.d1	A25, 24, A25
		cmpltu	.l1	9, A25, A0
	[A0]	b	.s1	.L393
	[!A0]	b	.s1	.L387
		nop	5
	;; condjump to .L393 occurs
	;; jump to .L387 occurs
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
		ldb	.d1t1	*A4, A5
	||	mvk	.s1	32, A6
		mvk	.s1	32, A17
		nop	3
		sub	.d1	A5, 9, A3
	||	cmpeq	.l1	A6, A5, A8
	||	mv	.s1	A5, A18
		cmpltu	.l1	4, A3, A9
	||	shl	.s1	A5, 24, A7
		cmpeq	.l1	0, A9, A16
		or	.d1	A8, A16, A1
	[!A1]	b	.s1	.L407
		nop	5
	;; condjump to .L407 occurs
.L408:
		ldb	.d1t1	*++A4[1], A5
		nop	4
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A17, A5, A20
	||	mv	.s1	A5, A18
		cmpltu	.l1	4, A19, A21
	||	shl	.s1	A5, 24, A7
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L408
		nop	5
	;; condjump to .L408 occurs
.L407:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		cmpeq	.l1	A24, A23, A1
	||	mvk	.s1	45, A26
	[A1]	b	.s1	.L409
	||	cmpeq	.l1	A26, A23, A1
		nop	5
	;; condjump to .L409 occurs
	[A1]	b	.s1	.L428
		nop	5
	;; condjump to .L428 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B1
		cmpltu	.l1	9, A5, A2
	[A2]	b	.s1	.L417
	||[!A2]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L417 occurs
.L411:
		mvk	.d1	0, A4
.L414:
		ldb	.d1t1	*++A5[1], A31
	||	addk	.s1	-48, A18
		ext	.s1	A18, 24, 24, A29
		shl	.s1	A4, 2, A28
		add	.d1	A28, A4, A4
		shl	.s1	A4, 1, A30
		mv	.l1	A31, A18
	||	subah	.d1	A31, 24, A31
	||	sub	.s1	A30, A29, A4
		nop	1
		cmpltu	.l2x	9, A31, B2
	[!B2]	b	.s1	.L414
		nop	5
	;; condjump to .L414 occurs
		ret	.s2	B3
	||[!B1]	sub	.d1	A29, A30, A4
		nop	5
	;; return occurs
.L428:
		ldb	.d1t1	*+A4(1), A27
	||	add	.s1	1, A4, A5
		nop	4
		mv	.s1	A27, A18
	||	subah	.d1	A27, 24, A27
		nop	1
		cmpltu	.l2x	9, A27, B0
	[!B0]	b	.s1	.L411
	||[!B0]	mvk	.d2	1, B1
		nop	5
	;; condjump to .L411 occurs
.L417:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L409:
		ldb	.d1t1	*+A4(1), A25
	||	add	.s1	1, A4, A5
	||	mvk	.d2	0, B1
		nop	4
		mv	.s1	A25, A18
	||	subah	.d1	A25, 24, A25
		cmpltu	.l1	9, A25, A0
	[A0]	b	.s1	.L417
	[!A0]	b	.s1	.L411
		nop	5
	;; condjump to .L417 occurs
	;; jump to .L411 occurs
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
		ldb	.d1t1	*A4, A5
	||	mvk	.s1	32, A6
		nop	4
		sub	.d1	A5, 9, A9
	||	cmpeq	.l1	A6, A5, A16
	||	mv	.s1	A5, A3
		cmpltu	.l1	4, A9, A17
	||	shl	.s1	A5, 24, A7
		cmpeq	.l1	0, A17, A18
		or	.d1	A16, A18, A0
	[!A0]	b	.s1	.L430
	[A0]	mvk	.s1	32, A8
		nop	4
	;; condjump to .L430 occurs
.L431:
		ldb	.d1t1	*++A4[1], A5
		nop	4
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A8, A5, A20
	||	mv	.s1	A5, A3
		cmpltu	.l1	4, A19, A21
	||	shl	.s1	A5, 24, A7
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L431
		nop	5
	;; condjump to .L431 occurs
.L430:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		mvk	.s1	45, A26
	||	cmpeq	.l1	A24, A23, A2
		cmpeq	.l1	A26, A23, A0
	||[A2]	b	.s1	.L432
		nop	5
	;; condjump to .L432 occurs
	[A0]	b	.s1	.L433
		nop	5
	;; condjump to .L433 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B0
		nop	1
		cmpltu	.l2x	9, A5, B2
	[B2]	b	.s1	.L441
	||[!B2]	mv	.d1	A4, A8
		nop	5
	;; condjump to .L441 occurs
.L435:
		mvk	.d1	0, A4
	||	mvk	.l1	0, A5
.L438:
		ldb	.d1t1	*++A8[1], A9
	||	addu	.l1	A4, A4, A1:A0
	||	addk	.s1	-48, A3
		add	.d1	A1, A5, A28
	||	addu	.l1	A0, A0, A7:A6
	||	ext	.s1	A3, 24, 24, A29
		add	.d1	A28, A5, A30
	||	addu	.l1	A6, A4, A1:A0
	||	shr	.s1	A29, 31, A31
		add	.s1	A7, A30, A16
	||	addu	.l1	A0, A0, A7:A6
		add	.d1	A16, A30, A17
		mv	.l1	A9, A3
	||	subah	.d1	A9, 24, A9
	||	add	.s1	A1, A17, A4
		cmpltu	.l1	9, A9, A2
	||	add	.d1	A4, A5, A5
	||	sub	.s1	A6, A29, A4
	[!A2]	b	.s1	.L438
	||	add	.d1	A7, A5, A7
	||	cmpltu	.l1	A6, A4, A23
		add	.d1	A7, A5, A19
		sub	.d1	A19, A31, A22
		sub	.d1	A22, A23, A5
		nop	2
	;; condjump to .L438 occurs
	[B0]	b	.s1	.L429
		nop	5
	;; condjump to .L429 occurs
		sub	.d1	A29, A6, A4
	||	sub	.s1	A31, A19, A8
		cmpltu	.l1	A29, A4, A3
		sub	.d1	A8, A3, A5
.L429:
		ret	.s2	B3
		nop	5
	;; return occurs
.L433:
		ldb	.d1t1	*+A4(1), A27
	||	add	.s1	1, A4, A8
		nop	4
		mv	.s1	A27, A3
	||	subah	.d1	A27, 24, A27
		nop	1
		cmpltu	.l2x	9, A27, B1
	[!B1]	b	.s1	.L435
	||[!B1]	mvk	.d2	1, B0
		nop	5
	;; condjump to .L435 occurs
.L441:
		ret	.s2	B3
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; return occurs
.L432:
		ldb	.d1t1	*+A4(1), A25
	||	add	.s1	1, A4, A8
		nop	4
		mv	.s1	A25, A3
	||	subah	.d1	A25, 24, A25
		nop	1
		cmpltu	.l2x	9, A25, B0
	[B0]	b	.s1	.L441
	||	mvk	.d2	0, B0
		nop	5
	;; condjump to .L441 occurs
		b	.s1	.L435
		nop	5
	;; jump to .L435 occurs
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.type	bsearch, @function
bsearch:
		subah	.d2	B15, 20, B15
		stw	.d2t2	B14, *+B15(36)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A15, *+B15(40)
		stw	.d2t2	B10, *+B15(32)
		stw	.d2t1	A14, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		stw	.d2t2	B3, *+B15(28)
		mv	.d1	A4, A15
	||	mv	.l1x	B4, A14
	||	mv	.s1	A6, A10
	||	mv	.l2x	A8, B10
		mv	.l1x	B6, A13
.L467:
		mv	.d1	A10, A0
	[!A0]	b	.s1	.L455
		nop	5
	;; condjump to .L455 occurs
.L470:
		shru	.s1	A10, 1, A12
	||	mv	.d1	A15, A4
	||	add	.l1	-1, A10, A10
		mpy32	.m1	A12, A13, A3
	||	sub	.d1	A10, A12, A10
		call	.s2	B10
		addkpc	.s2	.L471, B3, 0
		nop	1
		add	.d1	A14, A3, A11
		nop	1
	;; indirect call occurs, with return value
		mv	.l2x	A11, B4
.L471:
		cmpgt	.l1	0, A4, A1
	||	mv	.s1	A4, A2
	[A1]	b	.s1	.L459
	||[!A1]	add	.d1	A11, A13, A14
		nop	5
	;; condjump to .L459 occurs
	[A2]	b	.s1	.L467
		nop	5
	;; condjump to .L467 occurs
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
.L459:
		mv	.d1	A12, A10
		mv	.d1	A10, A0
	[A0]	b	.s1	.L470
		nop	5
	;; condjump to .L470 occurs
.L455:
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
		stw	.d2t2	B11, *+B15(40)
		stw	.d2t2	B10, *+B15(36)
	[!A0]	b	.s1	.L477
	||	stw	.d2t1	A14, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t2	B3, *+B15(32)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
	;; condjump to .L477 occurs
		mv	.l2x	A4, B10
	||	mv	.s1x	B4, A13
	||	mv	.d1	A8, A15
		mv	.l1x	B6, A12
	||	mv	.l2x	A6, B11
		mv	.l1x	B8, A14
.L473:
		shr	.s1x	B11, 1, A11
	||	sub	.d2	B11, 1, B11
	||	mv	.d1	A14, A6
		mpy32	.m1	A11, A12, A10
	||	mv	.l1x	B10, A4
	||	shr	.s2	B11, 1, B11
		call	.s2x	A15
		addkpc	.s2	.L488, B3, 0
		nop	1
		add	.d1	A13, A10, A10
		nop	1
	;; indirect call occurs, with return value
		mv	.l2x	A10, B4
.L488:
		mv	.s1	A4, A1
	||	cmplt	.l1	0, A4, A2
	[!A1]	b	.s1	.L472
	||	mv	.l1x	B11, A1
	||[A2]	add	.d1	A10, A12, A13
		nop	5
	;; condjump to .L472 occurs
	[!A2]	b	.s1	.L475
		nop	5
	;; condjump to .L475 occurs
	[A1]	b	.s1	.L473
		nop	5
	;; condjump to .L473 occurs
.L477:
		mvk	.d1	0, A10
.L472:
		ldw	.d2t2	*+B15(32), B3
	||	mv	.d1	A10, A4
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
.L475:
		mv	.d1	A11, A0
	||	mv	.l2x	A11, B11
	[A0]	b	.s1	.L473
		nop	5
	;; condjump to .L473 occurs
		b	.s1	.L472
	||	mvk	.d1	0, A10
		nop	5
	;; jump to .L472 occurs
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(16)
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L491, B3, 0
		nop	4
.L491:
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
	||	addkpc	.s2	.L496, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L496:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L497, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L497:
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
		addkpc	.s2	.L502, B3, 0
		nop	4
.L502:
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
	||	addkpc	.s2	.L507, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L507:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L508, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L508:
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
	[!A1]	b	.s1	.L513
		nop	5
	;; condjump to .L513 occurs
.L510:
		cmpeq	.l1x	A1, B4, A0
	[A0]	b	.s1	.L509
	||[!A0]	ldw	.d1t1	*++A4[1], A1
		nop	5
	;; condjump to .L509 occurs
	[A1]	b	.s1	.L510
		nop	5
	;; condjump to .L510 occurs
.L513:
		mvk	.d1	0, A4
.L509:
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
	[!A1]	b	.s1	.L518
		nop	5
	;; condjump to .L518 occurs
.L519:
	[!A0]	b	.s1	.L518
	||[A0]	ldw	.d2t1	*++B4[1], A3
	[A0]	ldw	.d1t1	*++A4[1], A0
		nop	4
	;; condjump to .L518 occurs
		cmpeq	.l1	A3, A0, A1
	[A1]	b	.s1	.L519
		nop	5
	;; condjump to .L519 occurs
.L518:
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
.L526:
		ldw	.d2t1	*B4++[1], A0
		nop	4
	[A0]	b	.s1	.L526
	||	stw	.d1t1	A0, *++A3[1]
		nop	5
	;; condjump to .L526 occurs
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
	[!A0]	b	.s1	.L530
	||[!A0]	mvk	.d1	0, A4
		mv	.d1	A4, A5
		nop	4
	;; condjump to .L530 occurs
.L532:
		ldw	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L532
		nop	5
	;; condjump to .L532 occurs
		sub	.d1	A5, A4, A4
		shr	.s1	A4, 2, A4
.L530:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L546
		nop	5
	;; condjump to .L546 occurs
.L539:
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
	[!A0]	b	.s1	.L550
		nop	5
	;; condjump to .L550 occurs
	[A2]	b	.s1	.L539
		nop	5
	;; condjump to .L539 occurs
.L546:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L550:
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
	[!A1]	b	.s1	.L558
	||[A1]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L558 occurs
.L553:
		mv	.s1	A5, A4
	||	ldw	.d1t1	*A5++[1], A3
	||	mv	.l1x	B4, A6
		sub	.d1	A1, 1, A1
		nop	3
		cmpeq	.l1	A6, A3, A2
	[A2]	b	.s1	.L551
		nop	5
	;; condjump to .L551 occurs
	[A1]	b	.s1	.L553
		nop	5
	;; condjump to .L553 occurs
.L558:
		mvk	.d1	0, A4
.L551:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L570
		nop	5
	;; condjump to .L570 occurs
.L563:
		ldw	.d2t1	*B4, A7
	||	sub	.d1	A2, 1, A2
	||	add	.s2	4, B4, B4
		ldw	.d1t1	*A4, A8
	||	add	.s1	4, A4, A4
		nop	4
		cmpeq	.l1	A7, A8, A1
	[!A1]	b	.s1	.L574
		nop	5
	;; condjump to .L574 occurs
	[A2]	b	.s1	.L563
		nop	5
	;; condjump to .L563 occurs
.L570:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L574:
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
	[!A0]	b	.s1	.L576
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	shl	.s1	A6, 2, A6
		nop	3
	;; condjump to .L576 occurs
		callp	.s2	(memcpy), B3
.L576:
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
	||[A0]	b	.s1	.L591
		nop	5
	;; condjump to .L591 occurs
	[!A1]	b	.s1	.L598
		nop	5
	;; condjump to .L598 occurs
		mv	.d1	A6, A1
	||	add	.l1	-4, A7, A16
	||	add	.d2x	B4, A7, B4
	||	add	.s1	A4, A7, A18
	[!A1]	b	.s1	.L591
		shru	.s1	A16, 2, A17
		add	.d1	A17, 1, A2
		nop	3
	;; condjump to .L591 occurs
.L588:
		sub	.d1	A2, 1, A2
	||	ldw	.d2t1	*--B4[1], A20
	[A2]	b	.s1	.L588
		nop	3
		stw	.d1t1	A20, *--A18[1]
		nop	1
	;; condjump to .L588 occurs
.L591:
		ret	.s2	B3
		nop	5
	;; return occurs
.L598:
		mv	.d1	A6, A2
	||	add	.l1	-4, A4, A9
	||	mv	.s1	A6, A0
	[!A2]	b	.s1	.L591
		nop	5
	;; condjump to .L591 occurs
.L589:
		sub	.d1	A0, 1, A0
	||	ldw	.d2t1	*B4++[1], A20
	[A0]	b	.s1	.L589
		nop	3
		stw	.d1t1	A20, *++A9[1]
		nop	1
	;; condjump to .L589 occurs
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
	[!A0]	b	.s1	.L600
		mvc	.s2x	A0, ILC
		nop	4
	;; condjump to .L600 occurs
		sploop	1
.L601:
		stw	.d1t2	B4, *A3++[1]
		spkernel	1, 0
.L600:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A0
	[!A0]	b	.s1	.L609
		nop	5
	;; condjump to .L609 occurs
		mv	.d1	A6, A2
	||	add	.s1	A4, A6, A31
	||	add	.d2x	B4, A6, B8
	[!A2]	b	.s1	.L608
	||	sub	.d1	A31, A4, A0
		nop	5
	;; condjump to .L608 occurs
.L611:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A31[1], A7
	[A0]	b	.s1	.L611
		nop	3
		stb	.d2t1	A7, *--B8[1]
		nop	1
	;; condjump to .L611 occurs
.L608:
		ret	.s2	B3
		nop	5
	;; return occurs
.L609:
		sub	.d1	A6, 1, A18
	||	add	.s1	1, A4, A17
	||	cmpeq	.l1	A5, A4, A1
		mv	.d1	A6, A2
	||	sub	.l1x	B4, A17, A8
	||[A1]	b	.s1	.L608
		cmpltu	.l2x	11, A18, B0
	||	neg	.l1	A4, A16
		cmpltu	.l2x	2, A8, B1
	||[!B0]	add	.d1	A4, 1, A3
	||	and	.s1	2, A16, A1
	[B0]	mv	.d1	A17, A3
	||[!A1]	add	.s1x	1, B4, A9
		nop	2
	;; condjump to .L608 occurs
	[!A2]	b	.s1	.L608
		nop	5
	;; condjump to .L608 occurs
	[!B0]	b	.s1	.L612
		nop	5
	;; condjump to .L612 occurs
	[!B1]	b	.s1	.L612
	||[B1]	and	.d1	3, A16, A3
		mv	.d1	A3, A0
		cmpeq	.l2x	3, A3, B2
		nop	3
	;; condjump to .L612 occurs
	[!A0]	b	.s1	.L622
	||[A0]	ldb	.d1t2	*A4, B5
		nop	4
	[A0]	stb	.d2t2	B5, *B4
	;; condjump to .L622 occurs
	[!A1]	b	.s1	.L613
	||[A1]	ldb	.d1t2	*+A4(1), B6
		nop	4
	[A1]	stb	.d2t2	B6, *+B4(1)
	;; condjump to .L613 occurs
	[B2]	ldb	.d1t2	*+A4(2), B6
	||[!B2]	add	.s1	2, A4, A17
	||[!B2]	add	.l1x	2, B4, A9
	[!B2]	sub	.d1	A6, 2, A18
	||[B2]	add	.s1	3, A4, A17
	||[B2]	add	.l1x	3, B4, A9
	[B2]	sub	.d1	A6, 3, A18
		nop	2
	[B2]	stb	.d2t2	B6, *+B4(2)
.L613:
		sub	.d1	A6, A3, A6
	||	add	.l1	A4, A3, A19
	||	add	.s1x	A3, B4, A21
		and	.d1	-4, A6, A20
		sub	.d1	A20, 4, A4
		shru	.s1	A4, 2, A22
		add	.d1	A22, 1, A2
.L617:
		add	.s1	-1, A2, A2
	||	ldw	.d1t1	*A19++[1], A23
	[A2]	b	.s1	.L617
		nop	3
		stnw	.d1t1	A23, *A21++[1]
		nop	1
	;; condjump to .L617 occurs
		cmpeq	.l1	A20, A6, A0
	||	add	.d1	A17, A20, A24
	||	sub	.s1	A18, A20, A25
	[A0]	b	.s1	.L608
	||[!A0]	ldb	.d1t1	*A24, A26
	||	add	.l1	A9, A20, A9
		cmpeq	.l2x	1, A25, B0
		cmpeq	.l2x	2, A25, B1
		nop	2
	[!A0]	stb	.d1t1	A26, *A9
	;; condjump to .L608 occurs
	[B0]	b	.s1	.L608
	||[!B0]	ldb	.d1t1	*+A24(1), A27
		nop	4
	[!B0]	stb	.d1t1	A27, *+A9(1)
	;; condjump to .L608 occurs
	[B1]	b	.s1	.L608
	||[!B1]	ldb	.d1t1	*+A24(2), A28
	||[!B1]	ret	.s2	B3
		nop	4
	[!B1]	stb	.d1t1	A28, *+A9(2)
	;; condjump to .L608 occurs
	;; return occurs
.L622:
		b	.s1	.L617
	||	mv	.d1	A6, A18
	||	sub	.l1	A6, A3, A6
		and	.d1	-4, A6, A20
	||	mv	.l1	A4, A17
	||	add	.s1	A4, A3, A19
		sub	.d1	A20, 4, A4
	||	mv	.s1x	B4, A9
		shru	.s1	A4, 2, A22
	||	add	.d1x	A3, B4, A21
		add	.d1	A22, 1, A2
		nop	1
	;; jump to .L617 occurs
.L612:
		add	.d1	A4, A6, A29
	||	sub	.d2	B4, 1, B4
		sub	.d1	A29, A3, A30
		add	.d1	A30, 1, A1
		nop	1
		mvc	.s2x	A1, ILC
		nop	3
		sploop	6
.L620:
		add	.d1	A3, 1, A3
		ldb	.d1t2	*-A3(2), B9
		nop	4
	;; load to B9 occurs
		spkernel	1, 0
	||	stb	.d2t2	B9, *++B4[1]
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
		mv	.l1x	B4, A9
		subah	.d1	A9, 16, A3
		cmpgt	.l1	0, A3, A1
	[A1]	mvk	.s1	31, A8
	||[!A1]	mvk	.d1	0, A7
	[A1]	shru	.s1	A4, 1, A6
	||[A1]	sub	.d1	A8, A9, A8
	[A1]	shl	.s1	A5, A9, A3
	[A1]	shru	.s1	A6, A8, A6
	[A1]	or	.d1	A3, A6, A3
	||	neg	.l1	A9, A6
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
		mv	.l1x	B4, A9
		subah	.d1	A9, 16, A6
		cmpgt	.l1	0, A6, A1
	[A1]	mvk	.s1	31, A8
	||[!A1]	mvk	.d1	0, A7
	[A1]	shl	.s1	A5, 1, A3
	||[A1]	sub	.d1	A8, A9, A8
	[A1]	shru	.s1	A4, A9, A6
	[A1]	shl	.s1	A3, A8, A3
	[A1]	or	.d1	A6, A3, A6
	||	neg	.l1	A9, A3
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
.L679:
		shru	.s1	A4, A3, A5
	||	sub	.d1	A1, 1, A1
	||	add	.l1	1, A3, A3
		and	.d1	1, A5, A0
	[A0]	b	.s1	.L683
		nop	5
	;; condjump to .L683 occurs
	[A1]	b	.s1	.L679
		nop	5
	;; condjump to .L679 occurs
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L683:
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
	[!A0]	b	.s1	.L684
	||[!A0]	mvk	.d1	0, A4
	[A0]	and	.d1	1, A0, A4
		mv	.d1	A4, A1
		nop	3
	;; condjump to .L684 occurs
	[A1]	b	.s1	.L684
	||[!A1]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L684 occurs
.L686:
		shr	.s1	A0, 1, A0
	||	add	.d1	A4, 1, A4
		and	.d1	1, A0, A1
	[!A1]	b	.s1	.L686
		nop	5
	;; condjump to .L686 occurs
.L684:
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
	||	addkpc	.s2	.L698, B3, 0
		mvklh	.s2	65407, B4
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	3
.L698:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L692
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L692 occurs
		call	.s2	(__c6xabi_gtf)
	||	mv	.d1	A10, A4
	||	mvk	.l2	-1, B4
		addkpc	.s2	.L699, B3, 0
		mvklh	.s2	32639, B4
	;; call to (__c6xabi_gtf) occurs, with return value
		nop	3
.L699:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L692:
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
	||	addkpc	.s2	.L706, B3, 0
		mvklh	.s2	65519, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L706:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L700
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L700 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	-1, B4
	||	mvk	.l2	-1, B5
		addkpc	.s2	.L707, B3, 0
		mvklh	.s2	32751, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L707:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L700:
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
	||	addkpc	.s2	.L714, B3, 0
		mvklh	.s2	65519, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L714:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L708
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L708 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	-1, B4
	||	mvk	.l2	-1, B5
		addkpc	.s2	.L715, B3, 0
		mvklh	.s2	32751, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L715:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L708:
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
	||	addkpc	.s2	.L718, B3, 0
	;; call to (__c6xabi_fltid) occurs, with return value
		nop	4
.L718:
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
	.global	memxor
	.type	memxor, @function
memxor:
		neg	.l1	A4, A5
	||	sub	.d1	A6, 1, A8
	||	mv	.s1	A6, A0
		and	.d1	3, A5, A2
	||[!A0]	b	.s1	.L720
	||	and	.l1	2, A5, A17
		add	.d1	A2, 3, A3
	||	mv	.s1	A17, A0
		cmpgtu	.l1	5, A3, A1
	||[!A0]	add	.d1	A4, 1, A17
	||[!A0]	add	.s1x	1, B4, A9
	||	cmpeq	.l2x	3, A2, B0
	[A1]	mvk	.d1	5, A3
		cmpgtu	.l1	A3, A8, A1
		nop	1
	;; condjump to .L720 occurs
	[A1]	b	.s1	.L729
		nop	5
	;; condjump to .L729 occurs
	[!A2]	b	.s1	.L730
	||[A2]	ldb	.d1t1	*A4, A7
	[A2]	ldb	.d2t1	*B4, A18
		nop	4
	;; condjump to .L730 occurs
	[!A0]	b	.s1	.L723
	||	xor	.l1	A7, A18, A19
	||[A0]	ldb	.d1t1	*+A4(1), A17
		stb	.d1t1	A19, *A4
	[A0]	ldb	.d2t1	*+B4(1), A20
		nop	3
	;; condjump to .L723 occurs
	[!B0]	add	.l1x	2, B4, A9
	||[!B0]	sub	.d1	A6, 2, A8
	||[B0]	add	.s1	-3, A6, A8
		xor	.l1	A17, A20, A21
	||[B0]	ldb	.d1t1	*+A4(2), A17
	||[!B0]	add	.s1	2, A4, A17
		stb	.d1t1	A21, *+A4(1)
	||[B0]	add	.s1x	3, B4, A9
	[B0]	ldb	.d2t1	*+B4(2), A21
		nop	4
	[B0]	xor	.d1	A17, A21, A21
	||[B0]	add	.s1	3, A4, A17
	[B0]	stb	.d1t1	A21, *+A4(2)
.L723:
		sub	.d1	A6, A2, A6
	||	add	.s1	A4, A2, A22
	||	add	.d2x	B4, A2, B4
		and	.d1	-4, A6, A23
		sub	.d1	A23, 4, A24
		shru	.s1	A24, 2, A25
		add	.d1	A25, 1, A2
.L727:
		ldnw	.d2t1	*B4++[1], A26
	||	sub	.d1	A2, 1, A2
		ldw	.d1t1	*A22, A27
	[A2]	b	.s1	.L727
		nop	3
		xor	.d1	A27, A26, A28
		stw	.d1t1	A28, *A22++[1]
	;; condjump to .L727 occurs
		cmpeq	.l1	A6, A23, A0
	||	add	.d1	A9, A23, A9
	||	add	.s1	A17, A23, A16
	[A0]	b	.s1	.L720
	||	sub	.d1	A8, A23, A6
		mv	.l2x	A9, B4
		nop	4
	;; condjump to .L720 occurs
.L721:
		cmpeq	.l2x	1, A6, B1
	||	ldb	.d1t1	*A16, A29
	||	cmpeq	.l1	3, A6, A1
		ldb	.d2t1	*B4, A30
	||	cmpeq	.l2x	2, A6, B2
	||	cmpeq	.l1	5, A6, A2
	[B1]	b	.s1	.L720
	||[!B1]	ldb	.d1t1	*+A16(1), A5
	||	cmpeq	.l2x	4, A6, B0
	[!B1]	ldb	.d2t1	*+B4(1), A3
		nop	2
		xor	.d1	A30, A29, A31
		stb	.d1t1	A31, *A16
	;; condjump to .L720 occurs
	[B2]	b	.s1	.L720
	||	xor	.l1	A5, A3, A17
	||[!B2]	ldb	.d1t1	*+A16(2), A8
		stb	.d1t1	A17, *+A16(1)
	[!B2]	ldb	.d2t1	*+B4(2), A7
		nop	3
	;; condjump to .L720 occurs
	[A1]	b	.s1	.L720
	||[!A1]	ldb	.d1t1	*+A16(3), A19
		xor	.d1	A8, A7, A18
	||[!A1]	ldb	.d2t1	*+B4(3), A20
		stb	.d1t1	A18, *+A16(2)
		nop	3
	;; condjump to .L720 occurs
	[B0]	b	.s1	.L720
	||	xor	.l1	A19, A20, A21
	||[!B0]	ldb	.d1t1	*+A16(4), A22
		stb	.d1t1	A21, *+A16(3)
	[!B0]	ldb	.d2t1	*+B4(4), A23
		nop	3
	;; condjump to .L720 occurs
	[A2]	b	.s1	.L720
	||[!A2]	ldb	.d1t1	*+A16(5), A6
		xor	.d1	A22, A23, A24
	||[!A2]	ldb	.d2t1	*+B4(5), A25
		stb	.d1t1	A24, *+A16(4)
		nop	3
	;; condjump to .L720 occurs
		xor	.d1	A6, A25, A26
		stb	.d1t1	A26, *+A16(5)
.L720:
		ret	.s2	B3
		nop	5
	;; return occurs
.L730:
		b	.s1	.L727
	||	mv	.d1	A6, A8
	||	sub	.l1	A6, A2, A6
		and	.d1	-4, A6, A23
	||	mv	.l1x	B4, A9
	||	add	.s1	A4, A2, A22
	||	add	.d2x	B4, A2, B4
		sub	.d1	A23, 4, A24
	||	mv	.s1	A4, A17
		shru	.s1	A24, 2, A25
		add	.d1	A25, 1, A2
		nop	1
	;; jump to .L727 occurs
.L729:
		b	.s1	.L721
	||	mv	.d1	A4, A16
		nop	5
	;; jump to .L721 occurs
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
		ldb	.d1t1	*A4, A0
	||	mv	.l1	A6, A1
	||	mv	.s1	A4, A3
		nop	4
	[!A0]	b	.s1	.L753
		nop	5
	;; condjump to .L753 occurs
.L754:
		ldb	.d1t1	*++A3[1], A2
		nop	4
	[A2]	b	.s1	.L754
		nop	5
	;; condjump to .L754 occurs
.L753:
	[!A1]	b	.s1	.L755
	||[A1]	sub	.d2	B4, 1, B4
		nop	5
	;; condjump to .L755 occurs
.L756:
		ldb	.d2t1	*++B4[1], A0
	||	sub	.d1	A1, 1, A1
		nop	4
	[!A0]	b	.s1	.L758
	||	stb	.d1t1	A0, *A3++[1]
		nop	5
	;; condjump to .L758 occurs
	[A1]	b	.s1	.L756
		nop	5
	;; condjump to .L756 occurs
.L755:
		mvk	.d1	0, A5
		stb	.d1t1	A5, *A3
.L758:
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
	[!A1]	b	.s1	.L767
		nop	5
	;; condjump to .L767 occurs
.L768:
		add	.d1	A5, A4, A3
	||	sub	.d2	B4, 1, B4
		ldb	.d1t1	*A3, A1
		nop	4
	[A1]	b	.s1	.L770
		nop	5
	;; condjump to .L770 occurs
.L767:
		ret	.s2	B3
		nop	5
	;; return occurs
.L770:
		mv	.s1x	B4, A1
	||	add	.d1	A4, 1, A4
	[A1]	b	.s1	.L768
		nop	5
	;; condjump to .L768 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
		ldb	.d1t1	*A4, A0
		nop	4
	[!A0]	b	.s1	.L781
	||[A0]	sub	.d2	B4, 1, B4
		shl	.s1	A0, 24, A6
		nop	4
	;; condjump to .L781 occurs
.L777:
		mv	.l1x	B4, A3
	||	shr	.s1	A6, 24, A5
.L780:
		ldb	.d1t1	*++A3[1], A1
		nop	4
		cmpeq	.l1	A5, A1, A0
	||[!A1]	b	.s1	.L786
		nop	5
	;; condjump to .L786 occurs
	[!A0]	b	.s1	.L780
		nop	5
	;; condjump to .L780 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L786:
		ldb	.d1t1	*++A4[1], A2
		nop	4
	[A2]	b	.s1	.L777
		shl	.s1	A2, 24, A6
		nop	4
	;; condjump to .L777 occurs
.L781:
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
.L789:
		mv	.s1	A3, A6
	||	ldb	.d1t1	*A3++[1], A7
		nop	4
		shl	.s1	A7, 24, A5
	||	cmpeq	.l1x	A7, B4, A0
		mv	.d1	A5, A1
	||[A0]	mv	.s1	A6, A4
	[A1]	b	.s1	.L789
		nop	5
	;; condjump to .L789 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
		ldb	.d2t1	*B4, A0
	||	mv	.s1x	B4, A5
	||	mv	.d1	A4, A3
		nop	4
	[!A0]	b	.s1	.L803
		shl	.s1	A0, 24, A17
		nop	4
	;; condjump to .L803 occurs
.L795:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L795
		nop	5
	;; condjump to .L795 occurs
		mv	.l1x	B4, A4
		sub	.d1	A5, A4, A2
	[!A2]	b	.s1	.L803
	||[A2]	add	.d1x	A2, B4, A16
	[A2]	shr	.s1	A17, 24, A17
		nop	4
	;; condjump to .L803 occurs
.L801:
		ldbu	.d1t1	*A3, A18
	||	mv	.l1	A3, A4
	||	mv	.s1	A3, A7
		add	.d1	A3, 1, A3
		nop	3
		ext	.s1	A18, 24, 24, A0
		cmpeq	.l1	A17, A0, A1
	[A1]	b	.s1	.L800
		nop	5
	;; condjump to .L800 occurs
	[A0]	b	.s1	.L801
		nop	5
	;; condjump to .L801 occurs
		mvk	.d1	0, A4
.L793:
		ret	.s2	B3
		nop	5
	;; return occurs
.L800:
		mv	.l1x	B4, A6
.L797:
		ldbu	.d1t1	*A6, A19
	||	mv	.l1	A6, A8
	||	add	.s1	1, A6, A6
		cmpeq	.l1	A6, A16, A21
		cmpeq	.l1	0, A21, A23
		nop	2
		cmpeq	.l1	0, A19, A20
		cmpeq	.l1	A18, A19, A9
		cmpeq	.l1	0, A20, A22
		and	.d1	A9, A22, A24
		and	.d1	A24, A23, A2
	[!A2]	b	.s1	.L798
	||[A2]	ldbu	.d1t1	*++A7[1], A18
		nop	4
		mv	.d1	A18, A0
	;; condjump to .L798 occurs
	[A0]	b	.s1	.L797
		nop	5
	;; condjump to .L797 occurs
		mv	.d1	A6, A8
.L798:
		ldbu	.d1t1	*A8, A25
	||	add	.s1	1, A4, A3
		nop	4
		cmpeq	.l1	A25, A18, A1
	[A1]	b	.s1	.L793
	[!A1]	b	.s1	.L801
		nop	5
	;; condjump to .L793 occurs
	;; jump to .L801 occurs
.L803:
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
	||	addkpc	.s2	.L822, B3, 0
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		dmv	.s1	A5, A4, A11:A10
	||	mv	.l1x	B4, A12
	||	mvk	.d2	0, B4
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	1
.L822:
		mv	.d1	A4, A0
	||	mvk	.d2	0, B4
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.l2	0, B5
	[A0]	b	.s1	.L821
		nop	5
	;; condjump to .L821 occurs
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	||	mvk	.d2	0, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.l2	0, B5
	[!A1]	b	.s1	.L813
		nop	5
	;; condjump to .L813 occurs
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A2
	[A2]	b	.s1	.L812
		nop	5
	;; condjump to .L812 occurs
.L813:
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
.L821:
		callp	.s2	(__c6xabi_gtd), B3
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L813
		nop	5
	;; condjump to .L813 occurs
.L812:
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
	||	mv	.l1x	B6, A0
	[!A0]	b	.s1	.L826
	||	cmpeq	.l2	1, B6, B0
		add	.d1x	A4, B4, A9
		mv	.s1x	B5, A1
	||	cmpltu	.l1	A9, A4, A2
		nop	3
	;; condjump to .L826 occurs
	[A1]	b	.s1	.L837
		nop	5
	;; condjump to .L837 occurs
	[A2]	b	.s1	.L837
	||[!A2]	ldb	.d1t1	*A6, A16
		nop	4
		shl	.s1	A16, 24, A17
	;; condjump to .L837 occurs
.L832:
		mv	.d1	A4, A3
		ldb	.d1t1	*A3++[1], A5
		nop	4
		cmpeq	.l1	A16, A5, A0
	[A0]	b	.s1	.L847
	||[!A0]	mv	.d1	A3, A4
		nop	5
	;; condjump to .L847 occurs
.L828:
		cmpgtu	.l1	A4, A9, A1
	[!A1]	b	.s1	.L832
		nop	5
	;; condjump to .L832 occurs
.L837:
		mvk	.d1	0, A4
.L826:
		ret	.s2	B3
		nop	5
	;; return occurs
.L847:
	[B0]	b	.s1	.L826
	||	sub	.d1	A3, 1, A22
	||	mv	.l1	A6, A21
		add	.l1x	-1, B6, A1
		nop	4
	;; condjump to .L826 occurs
.L829:
		ldbu	.d1t1	*++A22[1], A18
	||	add	.s1	-1, A1, A1
		ldbu	.d1t1	*++A21[1], A8
		nop	4
		cmpeq	.l1	A8, A18, A0
	[!A0]	b	.s1	.L848
		nop	5
	;; condjump to .L848 occurs
	[A1]	b	.s1	.L829
		nop	5
	;; condjump to .L829 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L848:
		cmpgtu	.l1	A3, A9, A1
	||	mv	.d1	A3, A4
	||	shr	.s1	A17, 24, A19
	[A1]	b	.s1	.L837
	||[!A1]	ldb	.d1t1	*A4++[1], A7
		nop	4
		cmpeq	.l1	A7, A19, A0
	;; condjump to .L837 occurs
	[!A0]	b	.s1	.L828
		nop	5
	;; condjump to .L828 occurs
		b	.s1	.L829
	||	mv	.d1	A3, A20
	||	mv	.l1	A4, A3
		sub	.d1	A3, 1, A22
	||	mv	.l1	A20, A4
	||	mv	.s1	A6, A21
		add	.l1x	-1, B6, A1
		nop	3
	;; jump to .L829 occurs
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
		sub	.d2	B15, 24, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(20)
	[!A0]	b	.s1	.L850
	||	stw	.d2t2	B14, *+B15(24)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A11
	||	mv	.s1	A6, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	2
	;; condjump to .L850 occurs
		callp	.s2	(memmove), B3
		nop	1
.L850:
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
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
		or	.d1	A5, A4, A0
	||	mv	.l1	A4, A23
	||	mv	.s1	A5, A9
	[!A0]	b	.s1	.L857
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; condjump to .L857 occurs
.L859:
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
	[A1]	b	.s1	.L859
	||	mv	.d1	A0, A4
	||	add	.l1x	A17, B5, A19
		nop	1
		mv	.l2x	A19, B5
		nop	3
	;; condjump to .L859 occurs
.L857:
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
	[!A0]	b	.s1	.L879
		nop	5
	;; condjump to .L879 occurs
.L865:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L866
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A3
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A3, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L866 occurs
	[A1]	b	.s1	.L865
		nop	5
	;; condjump to .L865 occurs
	[!A2]	b	.s1	.L869
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L869 occurs
.L866:
		mvk	.d1	0, A4
.L871:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L871
		nop	5
	;; condjump to .L871 occurs
.L869:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L879:
		b	.s1	.L871
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L871 occurs
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
	[A0]	b	.s1	.L884
	[A0]	mvk	.s1	63, A4
		nop	4
	;; condjump to .L884 occurs
	[!A1]	lmbd	.l1	1, A4, A4
	[!A1]	addk	.s1	32, A4
	||[A1]	lmbd	.l1	1, A6, A4
		sub	.d1	A4, 1, A4
.L884:
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
	[!A0]	b	.s1	.L891
		nop	5
	;; condjump to .L891 occurs
.L893:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L893
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L893 occurs
.L891:
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
	||	and	.d1	-8, A6, A18
		cmpgtu	.l1	A3, A4, A1
	[A1]	b	.s1	.L899
		nop	5
	;; condjump to .L899 occurs
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[!A1]	b	.s1	.L924
		nop	5
	;; condjump to .L924 occurs
.L899:
	[!A0]	b	.s1	.L902
	||	add	.l1x	-8, B4, A16
	||	sub	.d1	A4, 8, A19
		shl	.s1	A0, 3, A9
		sub	.d1	A9, 8, A17
		shru	.s1	A17, 3, A20
		add	.d1	A20, 1, A2
		nop	1
	;; condjump to .L902 occurs
.L903:
		add	.s1	-1, A2, A2
	||	lddw	.d1t1	*++A16[1], A21:A20
	[A2]	b	.s1	.L903
		nop	3
		stdw	.d1t1	A21:A20, *++A19[1]
		nop	1
	;; condjump to .L903 occurs
		add	.d1	A18, 1, A7
	||	add	.l1	A4, A18, A24
	||	sub	.s1	A6, A18, A21
		add	.d1x	A7, B4, A25
	||	neg	.l1	A24, A27
	||	add	.s1	-1, A21, A23
		sub	.d1	A24, A25, A26
	||	and	.s1	3, A27, A28
	||	cmpltu	.l1	A18, A6, A0
		cmpltu	.l2x	11, A23, B0
	||	mv	.d1	A28, A1
	||[!A0]	b	.s1	.L898
	||	add	.l1x	A18, B4, A29
		cmpltu	.l2x	2, A26, B1
	||[!A1]	mv	.d1	A18, A7
	||	and	.s1	2, A27, A2
		cmpeq	.l2x	3, A28, B2
	||	add	.d1	A4, A7, A31
		nop	3
	;; condjump to .L898 occurs
	[!B0]	b	.s1	.L905
		nop	5
	;; condjump to .L905 occurs
	[!B1]	b	.s1	.L905
		nop	5
	;; condjump to .L905 occurs
	[!A1]	b	.s1	.L906
	||[A1]	ldb	.d1t1	*A29, A30
		nop	4
	[A1]	stb	.d1t1	A30, *A24
	;; condjump to .L906 occurs
	[!A2]	b	.s1	.L906
	||[A2]	ldb	.d1t1	*A25, A3
	||[A2]	add	.l1	2, A18, A7
		add	.d1x	A7, B4, A5
	||	add	.s1	A4, A7, A9
		nop	3
	[A2]	stb	.d1t1	A3, *A31
	;; condjump to .L906 occurs
	[!B2]	b	.s1	.L906
	||[B2]	ldb	.d1t1	*A5, A8
	||[B2]	add	.l1	3, A18, A7
		nop	4
	[B2]	stb	.d1t1	A8, *A9
	;; condjump to .L906 occurs
.L906:
		sub	.d1	A21, A28, A16
	||	or	.s1	A28, A18, A18
		and	.d1	-4, A16, A19
	||	add	.l1	A4, A18, A17
	||	add	.s1x	A18, B4, A20
		sub	.d1	A19, 4, A22
		shru	.s1	A22, 2, A21
		add	.d1	A21, 1, A0
.L908:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A20++[1], A23
	[A0]	b	.s1	.L908
		nop	3
		stw	.d1t1	A23, *A17++[1]
		nop	1
	;; condjump to .L908 occurs
		cmpeq	.l1	A16, A19, A0
	||	add	.s1	A19, A7, A24
	[A0]	b	.s1	.L898
	||	add	.d1	A24, 1, A27
	||	add	.l1x	A24, B4, A25
		cmpltu	.l1	A27, A6, A1
	||[!A0]	ldb	.d1t1	*A25, A26
	||	add	.s1	A4, A24, A28
		add	.d1	A24, 2, A3
	||	add	.l1x	A27, B4, A29
	||	add	.s1	A4, A27, A31
		cmpltu	.l1	A3, A6, A0
	||	add	.d1x	A3, B4, A6
	||	add	.s1	A4, A3, A4
		nop	2
	;; condjump to .L898 occurs
	[!A1]	b	.s1	.L898
	||	stb	.d1t1	A26, *A28
	[A1]	ldb	.d1t1	*A29, A30
		nop	4
	;; condjump to .L898 occurs
	[!A0]	b	.s1	.L898
	||	stb	.d1t1	A30, *A31
	[A0]	ldb	.d1t1	*A6, A5
		nop	4
	;; condjump to .L898 occurs
		stb	.d1t1	A5, *A4
.L898:
		ret	.s2	B3
		nop	5
	;; return occurs
.L924:
		mv	.d1	A6, A2
	||	mv	.l2x	A5, B4
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A5, A3, A0
	[!A2]	b	.s1	.L898
		nop	5
	;; condjump to .L898 occurs
.L912:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*--B4[1], A19
	[A0]	b	.s1	.L912
		nop	3
		stb	.d1t1	A19, *--A4[1]
		nop	1
	;; condjump to .L912 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L902:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L898
		nop	5
	;; condjump to .L898 occurs
.L905:
		sub	.d1	A18, 1, A8
	||	add	.s1x	-1, B4, A9
		add	.d1x	A8, B4, A7
	||	add	.l1	A9, A6, A18
	||	add	.s1	A4, A8, A16
		sub	.d1	A18, A7, A2
.L910:
		add	.s1	-1, A2, A2
	||	ldb	.d1t1	*++A7[1], A19
	[A2]	b	.s1	.L910
		nop	3
		stb	.d1t1	A19, *++A16[1]
		nop	1
	;; condjump to .L910 occurs
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
	[A1]	b	.s1	.L926
		nop	5
	;; condjump to .L926 occurs
		add	.d1x	A6, B4, A7
		cmpgtu	.l1	A4, A7, A5
		mv	.d1	A5, A2
	[!A2]	b	.s1	.L953
		nop	5
	;; condjump to .L953 occurs
.L926:
		sub	.d1	A0, 1, A8
	||	add	.l1x	2, B4, A16
	||[!A0]	b	.s1	.L929
		cmpeq	.l1	A16, A4, A1
	||	shru	.s1	A4, 1, A17
		cmpltu	.l2x	23, A8, B0
	||	and	.d1	1, A17, A18
		mv	.d1	A18, A2
	||	sub	.l1	A0, A18, A20
	||	shl	.s1	A18, 1, A19
		shru	.s1	A20, 1, A22
	||[A2]	mv	.l1	A18, A9
	||[!A2]	mvk	.d1	0, A9
		shl	.s1	A22, 2, A24
	||	add	.d1	A4, A19, A21
	||	add	.l1x	A19, B4, A23
	;; condjump to .L929 occurs
	[!B0]	b	.s1	.L930
	||	sub	.d1	A24, 4, A25
		shru	.s1	A25, 2, A26
		nop	4
	;; condjump to .L930 occurs
	[A1]	b	.s1	.L930
	||[!A1]	add	.d1	A26, 1, A0
		nop	5
	;; condjump to .L930 occurs
	[A2]	ldh	.d2t1	*B4, A5
		nop	4
	[A2]	sth	.d1t1	A5, *A4
.L932:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A23++[1], A27
	[A0]	b	.s1	.L932
		nop	3
		stw	.d1t1	A27, *A21++[1]
		nop	1
	;; condjump to .L932 occurs
		and	.d1	1, A20, A1
	||	and	.s1	-2, A20, A28
	[!A1]	b	.s1	.L929
	||	add	.d1	A28, A9, A9
		shl	.s1	A9, 1, A29
		add	.d1x	A29, B4, A30
	||	add	.s1	A4, A29, A3
	[A1]	ldh	.d1t1	*A30, A31
		nop	4
	;; condjump to .L929 occurs
		sth	.d1t1	A31, *A3
.L929:
		and	.d1	1, A6, A0
	[!A0]	b	.s1	.L925
		nop	5
	;; condjump to .L925 occurs
.L954:
		sub	.d1	A6, 1, A6
		add	.d1x	A6, B4, A19
	||	add	.s1	A4, A6, A4
		ldb	.d1t1	*A19, A20
		nop	4
		stb	.d1t1	A20, *A4
.L925:
		ret	.s2	B3
		nop	5
	;; return occurs
.L953:
		mv	.d1	A6, A0
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A7, A3, A1
	[!A0]	b	.s1	.L925
		nop	5
	;; condjump to .L925 occurs
.L937:
		add	.s1	-1, A1, A1
	||	ldb	.d1t1	*--A7[1], A21
	[A1]	b	.s1	.L937
		nop	3
		stb	.d1t1	A21, *--A4[1]
		nop	1
	;; condjump to .L937 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L930:
		shl	.s1	A0, 1, A7
	||	add	.l1x	-2, B4, A5
	||	sub	.d1	A4, 2, A16
		sub	.d1	A7, 2, A8
		shru	.s1	A8, 1, A17
		add	.d1	A17, 1, A2
.L934:
		add	.s1	-1, A2, A2
	||	ldh	.d1t1	*++A5[1], A21
	[A2]	b	.s1	.L934
		nop	3
		sth	.d1t1	A21, *++A16[1]
		nop	1
	;; condjump to .L934 occurs
		and	.d1	1, A6, A0
	[!A0]	b	.s1	.L925
		nop	5
	;; condjump to .L925 occurs
		b	.s1	.L954
		nop	5
	;; jump to .L954 occurs
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
		mv	.l1x	B4, A3
	||	shru	.s1	A6, 2, A0
	||	and	.d1	-4, A6, A18
		cmpgtu	.l1	A3, A4, A1
	[A1]	b	.s1	.L956
		nop	5
	;; condjump to .L956 occurs
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[!A1]	b	.s1	.L981
		nop	5
	;; condjump to .L981 occurs
.L956:
	[!A0]	b	.s1	.L959
	||	add	.l1x	-4, B4, A16
	||	sub	.d1	A4, 4, A19
		shl	.s1	A0, 2, A9
		sub	.d1	A9, 4, A17
		shru	.s1	A17, 2, A20
		add	.d1	A20, 1, A2
		nop	1
	;; condjump to .L959 occurs
.L960:
		add	.s1	-1, A2, A2
	||	ldw	.d1t1	*++A16[1], A20
	[A2]	b	.s1	.L960
		nop	3
		stw	.d1t1	A20, *++A19[1]
		nop	1
	;; condjump to .L960 occurs
		add	.d1	A18, 1, A7
	||	add	.l1	A4, A18, A24
	||	sub	.s1	A6, A18, A22
		add	.d1x	A7, B4, A25
	||	neg	.l1	A24, A27
	||	add	.s1	-1, A22, A23
		sub	.d1	A24, A25, A26
	||	and	.s1	3, A27, A28
	||	cmpltu	.l1	A18, A6, A0
		cmpltu	.l2x	11, A23, B0
	||	mv	.d1	A28, A1
	||[!A0]	b	.s1	.L955
	||	add	.l1x	A18, B4, A29
		cmpltu	.l2x	2, A26, B1
	||[!A1]	mv	.d1	A18, A7
	||	and	.s1	2, A27, A2
		cmpeq	.l2x	3, A28, B2
	||	add	.d1	A4, A7, A31
		nop	3
	;; condjump to .L955 occurs
	[!B0]	b	.s1	.L962
		nop	5
	;; condjump to .L962 occurs
	[!B1]	b	.s1	.L962
		nop	5
	;; condjump to .L962 occurs
	[!A1]	b	.s1	.L963
	||[A1]	ldb	.d1t1	*A29, A30
		nop	4
	[A1]	stb	.d1t1	A30, *A24
	;; condjump to .L963 occurs
	[!A2]	b	.s1	.L963
	||[A2]	ldb	.d1t1	*A25, A3
	||[A2]	add	.l1	2, A18, A7
		add	.d1x	A7, B4, A5
	||	add	.s1	A4, A7, A9
		nop	3
	[A2]	stb	.d1t1	A3, *A31
	;; condjump to .L963 occurs
	[!B2]	b	.s1	.L963
	||[B2]	ldb	.d1t1	*A5, A8
	||[B2]	add	.l1	3, A18, A7
		nop	4
	[B2]	stb	.d1t1	A8, *A9
	;; condjump to .L963 occurs
.L963:
		sub	.d1	A22, A28, A16
	||	or	.s1	A28, A18, A18
		and	.d1	-4, A16, A19
	||	add	.l1	A4, A18, A17
	||	add	.s1x	A18, B4, A20
		sub	.d1	A19, 4, A21
		shru	.s1	A21, 2, A22
		add	.d1	A22, 1, A0
.L965:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A20++[1], A23
	[A0]	b	.s1	.L965
		nop	3
		stw	.d1t1	A23, *A17++[1]
		nop	1
	;; condjump to .L965 occurs
		cmpeq	.l1	A16, A19, A0
	||	add	.s1	A19, A7, A24
	[A0]	b	.s1	.L955
	||	add	.d1	A24, 1, A27
	||	add	.l1x	A24, B4, A25
		cmpltu	.l1	A27, A6, A1
	||[!A0]	ldb	.d1t1	*A25, A26
	||	add	.s1	A4, A24, A28
		add	.d1	A24, 2, A3
	||	add	.l1x	A27, B4, A29
	||	add	.s1	A4, A27, A31
		cmpltu	.l1	A3, A6, A0
	||	add	.d1x	A3, B4, A6
	||	add	.s1	A4, A3, A4
		nop	2
	;; condjump to .L955 occurs
	[!A1]	b	.s1	.L955
	||	stb	.d1t1	A26, *A28
	[A1]	ldb	.d1t1	*A29, A30
		nop	4
	;; condjump to .L955 occurs
	[!A0]	b	.s1	.L955
	||	stb	.d1t1	A30, *A31
	[A0]	ldb	.d1t1	*A6, A5
		nop	4
	;; condjump to .L955 occurs
		stb	.d1t1	A5, *A4
.L955:
		ret	.s2	B3
		nop	5
	;; return occurs
.L981:
		mv	.d1	A6, A2
	||	mv	.l2x	A5, B4
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A5, A3, A0
	[!A2]	b	.s1	.L955
		nop	5
	;; condjump to .L955 occurs
.L969:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*--B4[1], A19
	[A0]	b	.s1	.L969
		nop	3
		stb	.d1t1	A19, *--A4[1]
		nop	1
	;; condjump to .L969 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L959:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L955
		nop	5
	;; condjump to .L955 occurs
.L962:
		sub	.d1	A18, 1, A8
	||	add	.s1x	-1, B4, A9
		add	.d1x	A8, B4, A7
	||	add	.l1	A9, A6, A18
	||	add	.s1	A4, A8, A16
		sub	.d1	A18, A7, A2
.L967:
		add	.s1	-1, A2, A2
	||	ldb	.d1t1	*++A7[1], A19
	[A2]	b	.s1	.L967
		nop	3
		stb	.d1t1	A19, *++A16[1]
		nop	1
	;; condjump to .L967 occurs
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
		addkpc	.s2	.L984, B3, 0
		nop	4
.L984:
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
	||	addkpc	.s2	.L987, B3, 0
	;; call to (__c6xabi_fltud) occurs, with return value
		nop	4
.L987:
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
	||	addkpc	.s2	.L990, B3, 0
	;; call to (__c6xabi_fltuf) occurs, with return value
		nop	4
.L990:
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
	||	addkpc	.s2	.L993, B3, 0
	;; call to (__c6xabi_fltulld) occurs, with return value
		nop	4
.L993:
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
	||	addkpc	.s2	.L996, B3, 0
	;; call to (__c6xabi_fltullf) occurs, with return value
		nop	4
.L996:
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
		addkpc	.s2	.L999, B3, 0
		nop	4
.L999:
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
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	0, A4
	[!A1]	shr	.s1	A0, 14, A4
		mv	.d1	A4, A2
	||	shr	.s1	A0, 13, A1
		nop	3
	;; condjump to .L1000 occurs
	[A2]	b	.s1	.L1000
		nop	5
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	2, A4
		shr	.s1	A0, 12, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	3, A4
		shr	.s1	A0, 11, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	4, A4
		shr	.s1	A0, 10, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	5, A4
		shr	.s1	A0, 9, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	6, A4
		shr	.s1	A0, 8, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	7, A4
		shr	.s1	A0, 7, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	8, A4
		shr	.s1	A0, 6, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	9, A4
		shr	.s1	A0, 5, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	10, A4
		shr	.s1	A0, 4, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	11, A4
		shr	.s1	A0, 3, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	12, A4
		shr	.s1	A0, 2, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	13, A4
		shr	.s1	A0, 1, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	14, A4
		nop	5
	;; condjump to .L1000 occurs
	[A0]	mvk	.d1	15, A4
	||[!A0]	mvk	.s1	16, A4
.L1000:
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
	[A0]	b	.s1	.L1020
	||[A0]	mvk	.d1	0, A4
		and	.d1	2, A4, A1
	||	mvk	.s1	32, A5
		mvk	.s1	64, A6
		mvk	.s1	128, A7
		mvk	.s1	256, A8
		mvk	.s1	512, A9
	;; condjump to .L1020 occurs
	[A1]	b	.s1	.L1020
	||[A1]	mvk	.d1	1, A4
		and	.d1	4, A4, A2
	||	mvk	.s1	1024, A16
		mvk	.s1	2048, A17
		mvk	.s1	4096, A18
		mvk	.s1	8192, A19
		mvk	.s1	16384, A20
	;; condjump to .L1020 occurs
	[A2]	b	.s1	.L1020
	||[A2]	mvk	.d1	2, A4
		and	.d1	8, A4, A0
		nop	4
	;; condjump to .L1020 occurs
	[A0]	b	.s1	.L1020
	||[A0]	mvk	.d1	3, A4
		and	.d1	A3, A4, A1
		nop	4
	;; condjump to .L1020 occurs
	[A1]	b	.s1	.L1020
	||[A1]	mvk	.d1	4, A4
		and	.d1	A5, A4, A2
		nop	4
	;; condjump to .L1020 occurs
	[A2]	b	.s1	.L1020
	||[A2]	mvk	.d1	5, A4
		and	.d1	A6, A4, A0
		nop	4
	;; condjump to .L1020 occurs
	[A0]	b	.s1	.L1020
	||[A0]	mvk	.d1	6, A4
		and	.d1	A7, A4, A1
		nop	4
	;; condjump to .L1020 occurs
	[A1]	b	.s1	.L1020
	||[A1]	mvk	.d1	7, A4
		and	.d1	A8, A4, A2
		nop	4
	;; condjump to .L1020 occurs
	[A2]	b	.s1	.L1020
	||[A2]	mvk	.d1	8, A4
		and	.d1	A9, A4, A0
		nop	4
	;; condjump to .L1020 occurs
	[A0]	b	.s1	.L1020
	||[A0]	mvk	.d1	9, A4
		and	.d1	A16, A4, A1
		nop	4
	;; condjump to .L1020 occurs
	[A1]	b	.s1	.L1020
	||[A1]	mvk	.d1	10, A4
		and	.d1	A17, A4, A2
		nop	4
	;; condjump to .L1020 occurs
	[A2]	b	.s1	.L1020
	||[A2]	mvk	.d1	11, A4
		and	.d1	A18, A4, A0
		nop	4
	;; condjump to .L1020 occurs
	[A0]	b	.s1	.L1020
	||[A0]	mvk	.d1	12, A4
		and	.d1	A19, A4, A1
		nop	4
	;; condjump to .L1020 occurs
	[A1]	mvk	.d1	13, A4
	||[A1]	b	.s1	.L1020
		and	.d1	A20, A4, A2
		nop	4
	;; condjump to .L1020 occurs
	[A2]	b	.s1	.L1020
	||[A2]	mvk	.d1	14, A4
	[!A2]	extu	.s1	A4, 16, 16, A4
	[!A2]	shr	.s1	A4, 15, A4
		mv	.d1	A4, A0
		nop	2
	;; condjump to .L1020 occurs
	[A0]	mvk	.d1	15, A4
	||[!A0]	mvk	.s1	16, A4
.L1020:
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
	||	addkpc	.s2	.L1050, B3, 0
		mvklh	.s2	18176, B4
	||	mv	.d1	A4, A10
	;; call to (__c6xabi_gef) occurs, with return value
		nop	3
.L1050:
		mv	.d1	A4, A0
	||	mv	.s1	A10, A4
	[A0]	b	.s1	.L1049
		nop	5
	;; condjump to .L1049 occurs
		callp	.s2	(__c6xabi_fixfi), B3
		ldw	.d2t2	*+B15(12), B3
		ldw	.d2t1	*+B15(8), A10
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	2
		ret	.s2	B3
		nop	5
	;; return occurs
.L1049:
		call	.s2	(__c6xabi_subf)
	||	mvk	.l2	0, B4
		addkpc	.s2	.L1052, B3, 0
		mvklh	.s2	18176, B4
	;; call to (__c6xabi_subf) occurs, with return value
		nop	3
.L1052:
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
	[!A0]	b	.s1	.L1058
		nop	5
	;; condjump to .L1058 occurs
.L1060:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L1060
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L1060 occurs
.L1058:
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
	[!A0]	b	.s1	.L1065
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1065 occurs
	[!A1]	b	.s1	.L1065
		nop	5
	;; condjump to .L1065 occurs
.L1067:
		and	.d1x	1, B4, A5
	||	shru	.s2	B4, 1, B4
		neg	.l1	A5, A6
		mv	.l1x	B4, A2
	||	and	.d1	A3, A6, A7
	||	shl	.s1	A3, 1, A3
	[A2]	b	.s1	.L1067
	||	add	.d1	A4, A7, A4
		nop	5
	;; condjump to .L1067 occurs
.L1065:
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
	[!A0]	b	.s1	.L1088
		nop	5
	;; condjump to .L1088 occurs
.L1074:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1075
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1075 occurs
	[A1]	b	.s1	.L1074
		nop	5
	;; condjump to .L1074 occurs
	[!A2]	b	.s1	.L1078
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1078 occurs
.L1075:
		mvk	.d1	0, A4
.L1080:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L1080
		nop	5
	;; condjump to .L1080 occurs
.L1078:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1088:
		b	.s1	.L1080
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1080 occurs
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
	||	addkpc	.s2	.L1095, B3, 0
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	4
.L1095:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	[A0]	b	.s1	.L1089
	||[A0]	mvk	.d1	-1, A4
	[!A0]	mv	.d1	A10, A4
		nop	4
	;; condjump to .L1089 occurs
		callp	.s2	(__c6xabi_gtf), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L1089:
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
	||	addkpc	.s2	.L1103, B3, 0
		mv	.l1x	B5, A13
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L1103:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L1097
	||[A0]	mvk	.d1	-1, A4
	||	mv	.l2x	A13, B5
	[!A0]	dmv	.s1	A11, A10, A5:A4
		nop	4
	;; condjump to .L1097 occurs
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L1097:
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
	||[A0]	b	.s1	.L1111
	||[A0]	mvk	.d1	1, A2
	[!A0]	mvk	.d1	0, A2
		mv	.l1x	B4, A1
	[!A1]	mvk	.d1	0, A4
		nop	2
	;; condjump to .L1111 occurs
	[!A1]	b	.s1	.L1109
		nop	5
	;; condjump to .L1109 occurs
.L1111:
		mvk	.d1	1, A6
	||	mvk	.l1	0, A4
	||	mvk	.s1	32, A8
.L1113:
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
	[A0]	b	.s1	.L1113
		nop	5
	;; condjump to .L1113 occurs
	[A2]	neg	.l1	A4, A4
.L1109:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
		cmpgt	.l1	0, A4, A0
		cmpgt	.l1x	0, B4, A2
	||[A0]	mvk	.d1	0, A3
	||[A0]	neg	.s1	A4, A4
	[A0]	mvk	.d1	1, A1
	||[!A0]	mvk	.l1	1, A3
	||[A2]	neg	.l2	B4, B4
	||	mv	.s1	A4, A6
	[!A0]	mvk	.d1	0, A1
	[A2]	mv	.d1	A3, A1
	||	mv	.s1x	B4, A3
		cmpltu	.l1	A3, A4, A0
	[!A0]	b	.s1	.L1141
	||	mvk	.d1	1, A0
		nop	5
	;; condjump to .L1141 occurs
.L1124:
		shl	.s2	B4, 1, B4
	||	shl	.s1	A0, 1, A0
		cmpeq	.l1	0, A0, A8
		mv	.s1x	B4, A5
	||	cmpeq	.l1	0, A8, A9
		cmpltu	.l1	A5, A4, A7
		and	.d1	A9, A7, A2
	[A2]	b	.s1	.L1124
		nop	5
	;; condjump to .L1124 occurs
	[!A0]	b	.s1	.L1126
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1126 occurs
.L1129:
		cmpltu	.l1x	A6, B4, A16
		mv	.d1	A16, A2
	[!A2]	or	.d1	A0, A4, A4
	||	shru	.s1	A0, 1, A0
	||[!A2]	mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
	[A0]	b	.s1	.L1129
	||[!A2]	sub	.d1	A6, A16, A6
		nop	5
	;; condjump to .L1129 occurs
.L1126:
		ret	.s2	B3
	||[A1]	neg	.l1	A4, A4
		nop	5
	;; return occurs
.L1141:
		b	.s1	.L1129
	||	mvk	.d1	1, A0
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1129 occurs
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
	[!A2]	b	.s1	.L1149
		nop	5
	;; condjump to .L1149 occurs
.L1144:
		shl	.s1	A16, 1, A16
		shl	.s1	A17, 1, A17
	||	cmpeq	.l1	0, A16, A6
		cmpltu	.l1	A17, A4, A8
		cmpeq	.l1	0, A6, A9
		and	.d1	A9, A8, A2
	[A2]	b	.s1	.L1144
		nop	5
	;; condjump to .L1144 occurs
		mv	.d1	A16, A2
	[!A2]	b	.s1	.L1146
		nop	5
	;; condjump to .L1146 occurs
.L1149:
		shru	.s1	A16, 1, A16
	||	cmpltu	.l1	A7, A17, A2
		mv	.d1	A16, A0
	||[!A2]	sub	.l1	A7, A17, A7
	||	shru	.s1	A17, 1, A17
	[A0]	b	.s1	.L1149
		nop	5
	;; condjump to .L1149 occurs
		mv	.d1	A7, A4
.L1146:
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
	||[!A1]	b	.s1	.L1210
	||[A1]	mvk	.d1	1, A7
		nop	5
	;; condjump to .L1210 occurs
	[A2]	b	.s1	.L1211
		nop	5
	;; condjump to .L1211 occurs
.L1165:
		shl	.s1	A7, 1, A22
		shl	.s1x	B4, 1, A23
		extu	.s1	A22, 16, 16, A24
		extu	.s1	A23, 16, 16, A25
	||	cmpeq	.l1	0, A24, A18
		cmpeq	.l1	0, A18, A27
	||	mv	.s1	A22, A18
		cmpltu	.l1	A25, A17, A26
		and	.d1	A27, A26, A0
	[!A0]	b	.s1	.L1164
	||[A0]	mv	.l2x	A23, B4
	[A0]	extu	.s1	A22, 16, 16, A7
		mv	.l1x	B4, A8
		ext	.s1	A8, 16, 16, A9
		cmpgt	.l1	0, A9, A2
		nop	1
	;; condjump to .L1164 occurs
	[!A2]	b	.s1	.L1165
		nop	5
	;; condjump to .L1165 occurs
.L1211:
		extu	.s1	A8, 16, 16, A19
		cmpgtu	.l1	A19, A17, A1
	[A1]	b	.s1	.L1188
	||[A1]	mvk	.d1	0, A18
		nop	5
	;; condjump to .L1188 occurs
		sub	.l2x	A4, B4, B4
	||	mv	.d1	A7, A18
		nop	1
		mv	.l1x	B4, A4
.L1188:
		shru	.s1	A7, 1, A1
	[!A1]	b	.s1	.L1167
	||	mv	.d1	A1, A21
		shru	.s1	A19, 1, A20
		extu	.s1	A4, 16, 16, A17
		nop	3
	;; condjump to .L1167 occurs
.L1169:
		extu	.s1	A20, 16, 16, A31
		cmpgtu	.l1	A31, A17, A1
	||	shru	.s1	A7, 2, A8
	[!A1]	sub	.d1	A4, A20, A20
	||[!A1]	or	.l1	A21, A18, A18
	||	shru	.s1	A19, 2, A5
	[!A1]	mv	.d1	A20, A4
	||	mv	.l1	A8, A1
	||	shru	.s1	A7, 3, A9
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A3
		cmpgtu	.l1	A5, A3, A1
	||	shru	.s1	A19, 3, A16
	[!A1]	sub	.d1	A4, A5, A5
	||	shru	.s1	A7, 4, A21
		shru	.s1	A19, 4, A17
		shru	.s1	A7, 5, A23
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A5, A4
	||[!A1]	or	.l1	A18, A8, A18
	||	mv	.s1	A9, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A20
		cmpgtu	.l1	A16, A20, A1
	||	shru	.s1	A19, 5, A24
	[!A1]	sub	.d1	A4, A16, A16
	||	shru	.s1	A7, 6, A26
		shru	.s1	A19, 6, A27
		shru	.s1	A7, 7, A29
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A16, A4
	||[!A1]	or	.l1	A18, A9, A18
	||	mv	.s1	A21, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A22
		cmpgtu	.l1	A17, A22, A1
	||	shru	.s1	A19, 7, A30
	[!A1]	sub	.d1	A4, A17, A17
	||	shru	.s1	A7, 8, A0
		shru	.s1	A19, 8, A8
		shru	.s1	A7, 9, A9
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A17, A4
	||[!A1]	or	.l1	A18, A21, A18
	||	mv	.s1	A23, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A25
		cmpgtu	.l1	A24, A25, A1
	||	shru	.s1	A19, 9, A16
	[!A1]	sub	.d1	A4, A24, A24
	||	shru	.s1	A7, 10, A20
		shru	.s1	A19, 10, A21
		shru	.s1	A7, 11, A17
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A24, A4
	||[!A1]	or	.l1	A18, A23, A18
	||	mv	.s1	A26, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A28
		cmpgtu	.l1	A27, A28, A1
	||	shru	.s1	A19, 11, A22
	[!A1]	sub	.d1	A4, A27, A27
	||	shru	.s1	A7, 12, A24
		shru	.s1	A19, 12, A25
		shru	.s1	A19, 13, A28
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A27, A4
	||[!A1]	or	.l1	A18, A26, A18
	||	mv	.s1	A29, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A31
		cmpgtu	.l1	A30, A31, A1
	||	shru	.s1	A7, 13, A27
	[!A1]	sub	.d1	A4, A30, A30
	||	shru	.s1	A19, 14, A31
		shru	.s1	A19, 15, A19
		nop	1
	;; condjump to .L1167 occurs
	[!A0]	b	.s1	.L1167
	||[!A1]	mv	.d1	A30, A4
	||[!A1]	or	.l1	A18, A29, A18
		extu	.s1	A4, 16, 16, A5
		cmpgtu	.l1	A8, A5, A1
	||	shru	.s1	A7, 14, A30
	[!A1]	sub	.d1	A4, A8, A8
		nop	2
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A8, A4
	||[!A1]	or	.l1	A18, A0, A18
	||	mv	.s1	A9, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A2
		cmpgtu	.l1	A16, A2, A1
	[!A1]	sub	.d1	A4, A16, A16
		nop	2
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A16, A4
	||[!A1]	or	.l1	A18, A9, A18
	||	mv	.s1	A20, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A3
		cmpgtu	.l1	A21, A3, A1
	[!A1]	sub	.d1	A4, A21, A21
		nop	2
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A21, A4
	||[!A1]	or	.l1	A18, A20, A18
	||	mv	.s1	A17, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A23
		cmpgtu	.l1	A22, A23, A1
	[!A1]	sub	.d1	A4, A22, A22
		nop	2
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A22, A4
	||[!A1]	or	.l1	A18, A17, A18
	||	mv	.s1	A24, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A26
		cmpgtu	.l1	A25, A26, A1
	[!A1]	sub	.d1	A4, A25, A25
		nop	2
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A25, A4
	||[!A1]	or	.l1	A18, A24, A18
	||	mv	.s1	A27, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A29
		cmpgtu	.l1	A28, A29, A1
	[!A1]	sub	.d1	A4, A28, A28
		nop	2
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A28, A4
	||[!A1]	or	.l1	A18, A27, A18
	||	mv	.s1	A30, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A8
		cmpgtu	.l1	A31, A8, A1
	[!A1]	sub	.d1	A4, A31, A31
		nop	2
	;; condjump to .L1167 occurs
	[!A1]	mv	.d1	A31, A4
	||[!A1]	or	.l1	A18, A30, A18
	||	shru	.s1	A7, 15, A1
	[!A1]	b	.s1	.L1167
		extu	.s1	A4, 16, 16, A7
		cmpgtu	.l1	A19, A7, A1
		nop	3
	;; condjump to .L1167 occurs
	[!A1]	sub	.l1	A4, A19, A4
	||[!A1]	or	.s1	1, A18, A18
	||[A1]	mvk	.d1	0, A4
.L1167:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[!A0]	mv	.d1	A18, A4
		nop	4
	;; return occurs
.L1164:
		mv	.d1	A24, A2
	||	cmpgtu	.l1	A25, A17, A1
	||	mvk	.s1	32767, A28
	[!A2]	b	.s1	.L1167
		nop	5
	;; condjump to .L1167 occurs
	[A1]	b	.s1	.L1168
		nop	5
	;; condjump to .L1168 occurs
		b	.s1	.L1169
	||	sub	.d1	A4, A23, A4
	||	and	.l1	A28, A7, A21
		and	.d1x	A28, B4, A20
	||	extu	.s1	A22, 16, 16, A7
		extu	.s1	A4, 16, 16, A17
		extu	.s1	A23, 16, 16, A19
		nop	2
	;; jump to .L1169 occurs
.L1168:
		b	.s1	.L1169
	||	and	.l1	A28, A7, A21
	||	mvk	.d1	0, A18
		and	.d1x	A28, B4, A20
	||	extu	.s1	A22, 16, 16, A7
		extu	.s1	A23, 16, 16, A19
		nop	3
	;; jump to .L1169 occurs
.L1210:
		cmpeq	.l1	A17, A5, A0
	[A0]	b	.s1	.L1167
	||[A0]	mvk	.d1	1, A18
	||[A0]	mvk	.l1	0, A4
		nop	5
	;; condjump to .L1167 occurs
		ret	.s2	B3
	||	mvk	.d1	0, A18
	||	mv	.s1	A6, A0
	[!A0]	mv	.d1	A18, A4
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
	[!A0]	b	.s1	.L1227
		nop	5
	;; condjump to .L1227 occurs
.L1213:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1214
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1214 occurs
	[A1]	b	.s1	.L1213
		nop	5
	;; condjump to .L1213 occurs
	[!A2]	b	.s1	.L1217
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1217 occurs
.L1214:
		mvk	.d1	0, A4
.L1219:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L1219
		nop	5
	;; condjump to .L1219 occurs
.L1217:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1227:
		b	.s1	.L1219
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1219 occurs
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1229
		nop	5
	;; condjump to .L1229 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shl	.s1	A4, A9, A5
	||	mv	.d1	A8, A4
.L1231:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1229:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1231
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1231
		shru	.s1	A4, A3, A7
	[A2]	shl	.s1	A5, A2, A5
		shl	.s1	A4, A2, A8
	||[A2]	or	.d1	A5, A7, A5
	[A2]	mv	.d1	A8, A4
		nop	1
	;; condjump to .L1231 occurs
	;; jump to .L1231 occurs
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1236
		nop	5
	;; condjump to .L1236 occurs
		subah	.d2	B4, 16, B4
	||	shr	.s1	A5, 31, A8
		nop	1
		mv	.l1x	B4, A9
		shr	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1238:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1236:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1238
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1238
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shr	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1238 occurs
	;; jump to .L1238 occurs
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
		mvk	.d1	-1, A6
	||	mvk	.s1	16, A7
		mvklh	.s1	0, A6
		cmpltu	.l1	A6, A4, A3
	||	mvk	.s1	-256, A5
		cmpeq	.l1	0, A3, A8
	||	mvklh	.s1	0, A5
		shl	.s1	A8, 4, A16
		sub	.d1	A7, A16, A17
	||	mvk	.s1	240, A9
		shru	.s1	A4, A17, A18
		and	.d1	A5, A18, A4
		cmpeq	.l1	0, A4, A19
		shl	.s1	A19, 3, A20
		sub	.s1	8, A20, A21
	||	add	.d1	A20, A16, A22
		shru	.s1	A18, A21, A23
		and	.d1	A9, A23, A24
		cmpeq	.l1	0, A24, A25
		shl	.s1	A25, 2, A26
		sub	.s1	4, A26, A27
	||	add	.d1	A26, A22, A28
		shru	.s1	A23, A27, A29
		and	.d1	12, A29, A30
		cmpeq	.l1	0, A30, A31
		shl	.s1	A31, 1, A6
		sub	.s1	2, A6, A7
	||	add	.d1	A6, A28, A5
		shru	.s1	A29, A7, A3
	||	ret	.s2	B3
		extu	.s1	A3, 30, 31, A0
		xor	.d1	1, A0, A1
		extu	.s1	A1, 24, 24, A1
	[A1]	sub	.s1	2, A3, A3
	||[!A1]	mvk	.d1	0, A3
		add	.d1	A3, A5, A4
	;; return occurs
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
		mv	.l1x	B5, A3
		cmpgt	.l1	A3, A5, A0
	[A0]	b	.s1	.L1254
	||	cmplt	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1254 occurs
	[A0]	b	.s1	.L1255
		nop	5
	;; condjump to .L1255 occurs
	[A1]	b	.s1	.L1254
		nop	5
	;; condjump to .L1254 occurs
	[A2]	b	.s1	.L1255
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1255 occurs
	;; return occurs
.L1254:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1255:
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
	[A0]	b	.s1	.L1262
	||	cmplt	.l1	A3, A5, A0
	[A0]	mvk	.d1	1, A4
	||	mv	.s1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		nop	3
	;; condjump to .L1262 occurs
	[A0]	b	.s1	.L1258
		nop	5
	;; condjump to .L1258 occurs
	[A1]	b	.s1	.L1262
	||[!A1]	cmpltu	.l1	A5, A4, A4
		nop	5
	;; condjump to .L1262 occurs
.L1258:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1262:
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
	[!A1]	b	.s1	.L1268
		nop	5
	;; condjump to .L1268 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shru	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1270:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1268:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1270
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1270
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shru	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1270 occurs
	;; jump to .L1270 occurs
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
	||	neg	.s1	A4, A4
	||	mvk	.d1	0, A3
	||	neg	.l1	A5, A5
		cmpltu	.l1	A3, A4, A6
		sub	.d1	A5, A6, A5
		nop	3
	;; return occurs
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
		xor	.d1	A4, A5, A5
	||	mvk	.s1	27030, A6
		shru	.s1	A5, 16, A3
		xor	.d1	A5, A3, A4
		shru	.s1	A4, 8, A7
		xor	.d1	A4, A7, A8
	||	ret	.s2	B3
		shru	.s1	A8, 4, A9
		xor	.d1	A8, A9, A16
		and	.d1	15, A16, A17
		shr	.s1	A6, A17, A18
		and	.d1	1, A18, A4
	;; return occurs
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
		shru	.s1	A4, 16, A3
		xor	.d1	A4, A3, A4
	||	mvk	.s1	27030, A5
		shru	.s1	A4, 8, A6
		xor	.d1	A4, A6, A7
	||	ret	.s2	B3
		shru	.s1	A7, 4, A8
		xor	.d1	A7, A8, A9
		and	.d1	15, A9, A16
		shr	.s1	A5, A16, A17
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
		shru	.s1	A4, 1, A7
		mvklh	.s1	21845, A3
		and	.d1	A3, A7, A8
	||	mvk	.s1	13107, A5
		sub	.d1	A4, A8, A4
	||	mvklh	.s1	13107, A5
		shru	.s1	A4, 2, A9
	||	and	.d1	A5, A4, A16
		and	.d1	A5, A9, A17
	||	mvk	.s1	3855, A6
		add	.d1	A17, A16, A18
	||	mvklh	.s1	3855, A6
		shru	.s1	A18, 4, A19
		add	.d1	A19, A18, A20
		and	.d1	A6, A20, A21
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
	[!A0]	b	.s1	.L1289
	||	stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(32)
		dmv	.s1	A5, A4, A13:A12
	||	mv	.l1x	B4, A10
	||	mvk	.d1	0, A14
		mvklh	.s1	16368, A15
	;; condjump to .L1289 occurs
.L1291:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A15, A14, A5:A4
	||	mv	.l2x	A12, B4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L1298, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L1298:
		dmv	.s1	A5, A4, A15:A14
.L1289:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A4
		shr	.s1	A4, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1290
		nop	5
	;; condjump to .L1290 occurs
.L1292:
		call	.s2	(__c6xabi_mpyd)
	||	mv	.l2x	A12, B4
	||	mv	.d1	A12, A4
	||	mv	.s1	A13, A5
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L1299, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L1299:
		and	.d1	1, A10, A2
	||	dmv	.s1	A5, A4, A13:A12
	[A2]	b	.s1	.L1291
		nop	5
	;; condjump to .L1291 occurs
		b	.s1	.L1292
		shru	.s1	A10, 31, A5
		add	.d1	A5, A10, A6
		shr	.s1	A6, 1, A10
		nop	2
	;; jump to .L1292 occurs
.L1290:
		cmpgt	.l2x	0, A11, B0
	||	dmv	.s1	A15, A14, A5:A4
	[B0]	b	.s1	.L1297
	||[!B0]	ldw	.d2t2	*+B15(32), B3
	[!B0]	ldw	.d2t1	*+B15(12), A10
	[!B0]	ldw	.d2t1	*+B15(16), A11
	[!B0]	ldw	.d2t1	*+B15(20), A12
	[!B0]	ldw	.d2t1	*+B15(24), A13
	[!B0]	ldw	.d2t1	*+B15(28), A14
	;; condjump to .L1297 occurs
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(36), B14
		ldw	.d2t1	*+B15(40), A15
	||	addk	.s2	40, B15
		nop	4
	;; return occurs
.L1297:
		call	.s2	(__c6xabi_divd)
	||	mv	.l2x	A14, B4
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		mv	.l2x	A15, B5
	||	mvklh	.s1	16368, A5
	||	addkpc	.s2	.L1300, B3, 0
	;; call to (__c6xabi_divd) occurs, with return value
		nop	4
.L1300:
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
	[!A0]	b	.s1	.L1302
	||	stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(28)
		mv	.l1	A4, A11
	||	mv	.s1x	B4, A10
	||	mvk	.d1	0, A12
		mvklh	.s1	16256, A12
	;; condjump to .L1302 occurs
.L1304:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.d1	A12, A4
	||	mv	.l2x	A11, B4
		mv	.d1	A4, A12
.L1302:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1303
		nop	5
	;; condjump to .L1303 occurs
.L1305:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A11, A4
		and	.d1	1, A10, A2
	||	mv	.s1	A4, A11
	[A2]	b	.s1	.L1304
		nop	5
	;; condjump to .L1304 occurs
		b	.s1	.L1305
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L1305 occurs
.L1303:
		cmpgt	.l2x	0, A13, B0
	||	mv	.d1	A12, A4
	[B0]	b	.s1	.L1310
	||[!B0]	ldw	.d2t2	*+B15(28), B3
	[!B0]	ldw	.d2t1	*+B15(12), A10
	[!B0]	ldw	.d2t1	*+B15(16), A11
	[!B0]	ldw	.d2t1	*+B15(20), A12
	[!B0]	ldw	.d2t1	*+B15(24), A13
	[!B0]	ret	.s2	B3
	||[!B0]	ldw	.d2t2	*+B15(32), B14
	;; condjump to .L1310 occurs
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
.L1310:
		call	.s2	(__c6xabi_divf)
	||	mv	.l2x	A12, B4
	||	mvk	.d1	0, A4
		mvklh	.s1	16256, A4
	||	addkpc	.s2	.L1313, B3, 0
	;; call to (__c6xabi_divf) occurs, with return value
		nop	4
.L1313:
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
	[A0]	b	.s1	.L1318
	||	cmpltu	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1318 occurs
	[A0]	b	.s1	.L1319
		nop	5
	;; condjump to .L1319 occurs
	[A1]	b	.s1	.L1318
		nop	5
	;; condjump to .L1318 occurs
	[A2]	b	.s1	.L1319
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1319 occurs
	;; return occurs
.L1318:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1319:
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
	[A0]	b	.s1	.L1326
	||	cmpltu	.l1	A3, A5, A0
	[A0]	mvk	.d1	1, A4
	||	mv	.s1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		nop	3
	;; condjump to .L1326 occurs
	[A0]	b	.s1	.L1322
		nop	5
	;; condjump to .L1322 occurs
	[A1]	b	.s1	.L1326
	||[!A1]	cmpltu	.l1	A5, A4, A4
		nop	5
	;; condjump to .L1326 occurs
.L1322:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1326:
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
	.global	__c6xabi_mpyf
	.global	__c6xabi_divd
	.global	__c6xabi_mpyd
	.global	__c6xabi_fixfi
	.global	__c6xabi_gef
	.global	__c6xabi_fltullf
	.global	__c6xabi_fltulld
	.global	__c6xabi_fltuf
	.global	__c6xabi_fltud
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
