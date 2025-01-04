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
		ldb	.d1t1	*A4, A3
		ldb	.d2t1	*B4, A7
		nop	3
		shl	.s1	A3, 24, A6
		cmpeq	.l1	A7, A3, A9
	||	mv	.s1	A7, A5
		mv	.d1	A9, A1
	[!A1]	b	.s1	.L119
	[!A1]	extu	.s1	A3, 24, 24, A9
		nop	4
	;; condjump to .L119 occurs
.L120:
		mv	.d1	A6, A0
	[!A0]	b	.s1	.L125
	||[A0]	ldb	.d1t1	*++A4[1], A16
	[A0]	ldb	.d2t1	*++B4[1], A18
		nop	3
		shl	.s1	A16, 24, A6
	;; condjump to .L125 occurs
		cmpeq	.l1	A18, A16, A2
	||	mv	.s1	A18, A5
	[A2]	b	.s1	.L120
		nop	5
	;; condjump to .L120 occurs
		extu	.s1	A16, 24, 24, A9
.L119:
		ret	.s2	B3
	||	extu	.s1	A5, 24, 24, A4
		sub	.d1	A9, A4, A4
		nop	4
	;; return occurs
.L125:
		ret	.s2	B3
	||	mvk	.d1	0, A9
	||	extu	.s1	A5, 24, 24, A4
		sub	.d1	A9, A4, A4
		nop	4
	;; return occurs
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
		ldb	.d1t1	*A4, A0
		nop	4
	[!A0]	b	.s1	.L126
	||[!A0]	mvk	.d1	0, A4
		mv	.d1	A4, A5
		nop	4
	;; condjump to .L126 occurs
.L128:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L128
		nop	5
	;; condjump to .L128 occurs
		sub	.d1	A5, A4, A4
.L126:
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
	[!A0]	b	.s1	.L133
	||[!A0]	mvk	.d1	0, A4
	[A0]	ldbu	.d1t1	*A4, A5
		nop	4
	;; condjump to .L133 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L136
	||[!A1]	ldbu	.d2t1	*B4, A7
	||[!A1]	mvk	.d1	0, A5
		nop	5
	;; condjump to .L136 occurs
.L137:
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
	[!A2]	b	.s1	.L136
	||[A2]	ldbu	.d1t1	*++A4[1], A5
		nop	4
		mv	.d1	A5, A0
	;; condjump to .L136 occurs
	[A0]	b	.s1	.L137
		nop	5
	;; condjump to .L137 occurs
		ldbu	.d1t1	*+A9(1), A7
	||	mvk	.l1	0, A5
		nop	4
.L136:
		sub	.d1	A5, A7, A4
.L133:
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
	||[!A0]	b	.s1	.L143
		shru	.s1	A6, 1, A5
		add	.d1	A5, 1, A1
		nop	3
	;; condjump to .L143 occurs
		mvc	.s2x	A1, ILC
		nop	3
		sploop	2
.L145:
		ldb	.d1t2	*+A4(1), B5
		ldb	.d1t1	*A4++(2), A8
		nop	2
		add	.s2	2, B4, B4
	;; load to B5 occurs
		stb	.d2t2	B5, *-B4(2)
	;; load to A8 occurs
		spkernel	3, 0
	||	stb	.d2t1	A8, *-B4(1)
.L143:
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
	[A0]	b	.s1	.L172
		nop	5
	;; condjump to .L172 occurs
		mvk	.s1	-8232, A17
	||	mvk	.d1	7, A19
		add	.d1	A4, A17, A18
	||	mvklh	.s1	65535, A19
		cmpltu	.l1	1, A18, A1
	||	add	.s1	A4, A19, A4
	[!A1]	b	.s1	.L172
	||[A1]	ret	.s2	B3
	||	cmpltu	.l1	2, A4, A20
		cmpeq	.l1	0, A20, A4
		nop	4
	;; condjump to .L172 occurs
	;; return occurs
.L172:
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
	[!A0]	b	.s1	.L185
	||	cmpltu	.l1	A23, A24, A0
		mvklh	.s1	0, A25
		nop	4
	;; condjump to .L185 occurs
	[A1]	b	.s1	.L181
	||[A0]	mvk	.d1	0, A4
	[!A0]	and	.d1	A25, A4, A4
		cmpeq	.l1	A25, A4, A26
	[!A0]	cmpeq	.l1	0, A26, A4
		nop	2
	;; condjump to .L181 occurs
	[!A2]	b	.s1	.L181
		nop	5
	;; condjump to .L181 occurs
	[A0]	b	.s1	.L177
		nop	5
	;; condjump to .L177 occurs
.L177:
		ret	.s2	B3
		nop	5
	;; return occurs
.L181:
		ret	.s2	B3
	||	mvk	.d1	1, A4
		nop	5
	;; return occurs
.L185:
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
		cmpeqdp	.s2	B5:B4, B5:B4, B6
	||	cmpeqdp	.s1	A5:A4, A5:A4, A0
		nop	1
	[!A0]	b	.s1	.L192
		mv	.l1x	B6, A1
	[A1]	cmpgtdp	.s1x	A5:A4, B5:B4, A2
		nop	3
	;; condjump to .L192 occurs
	[!A1]	b	.s1	.L196
		nop	5
	;; condjump to .L196 occurs
	[A2]	subdp	.l1x	A5:A4, B5:B4, A5:A4
	[A2]	b	.s1	.L192
		nop	5
	;; condjump to .L192 occurs
		mvk	.d1	0, A4
	||	mvk	.l1	0, A5
.L192:
		ret	.s2	B3
		nop	5
	;; return occurs
.L196:
		ret	.s2	B3
	||	mv	.l1x	B4, A4
		mv	.l1x	B5, A5
		nop	4
	;; return occurs
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
		cmpeqsp	.s1	A4, A4, A0
	||	cmpeqsp	.s2	B4, B4, B5
	[!A0]	b	.s1	.L202
		mv	.l1x	B5, A1
		nop	4
	;; condjump to .L202 occurs
	[!A1]	b	.s1	.L202
	||[!A1]	mv	.l1x	B4, A4
	[A1]	cmpgtsp	.s1x	A4, B4, A2
		nop	4
	;; condjump to .L202 occurs
	[A2]	subsp	.l1x	A4, B4, A4
	||[!A2]	mvk	.d1	0, A4
		nop	3
.L202:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
		cmpeqdp	.s2	B5:B4, B5:B4, B6
	||	mv	.l1x	B5, A7
	||	cmpeqdp	.s1	A5:A4, A5:A4, A0
		nop	1
		clr	.s1	A5, 0, 30, A6
		clr	.s1	A7, 0, 30, A8
	||	mv	.l1x	B6, A1
		cmpeq	.l1	A8, A6, A2
	||[!A0]	b	.s1	.L220
		nop	5
	;; condjump to .L220 occurs
	[!A1]	b	.s1	.L212
		nop	5
	;; condjump to .L212 occurs
	[A2]	b	.s1	.L214
		nop	5
	;; condjump to .L214 occurs
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L212
		nop	5
	;; condjump to .L212 occurs
.L220:
		mv	.l1x	B4, A4
		mv	.l1x	B5, A5
.L212:
		ret	.s2	B3
		nop	5
	;; return occurs
.L214:
		cmpltdp	.s1x	A5:A4, B5:B4, A0
		nop	1
	[!A0]	b	.s1	.L212
		nop	5
	;; condjump to .L212 occurs
		b	.s1	.L212
	||	mv	.l1x	B4, A4
		mv	.l1x	B5, A5
		nop	4
	;; jump to .L212 occurs
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
		mv	.l1x	B4, A5
	||	cmpeqsp	.s2	B4, B4, B5
	||	clr	.s1	A4, 0, 30, A3
		clr	.s1	A5, 0, 30, A6
		cmpeqsp	.s1	A4, A4, A0
	||	mv	.l1x	B5, A1
		cmpeq	.l1	A6, A3, A2
	||[!A0]	b	.s1	.L233
		nop	5
	;; condjump to .L233 occurs
	[!A1]	b	.s1	.L225
		nop	5
	;; condjump to .L225 occurs
	[A2]	b	.s1	.L227
		nop	5
	;; condjump to .L227 occurs
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L225
		nop	5
	;; condjump to .L225 occurs
.L233:
		mv	.l1x	B4, A4
.L225:
		ret	.s2	B3
		nop	5
	;; return occurs
.L227:
		b	.s1	.L225
		cmpltsp	.s1x	A4, B4, A0
	[!A0]	mv	.l2x	A4, B4
		nop	1
		mv	.l1x	B4, A4
		nop	1
	;; jump to .L225 occurs
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
		cmpeqdp	.s2	B5:B4, B5:B4, B6
	||	mv	.l1x	B5, A7
	||	cmpeqdp	.s1	A5:A4, A5:A4, A0
		nop	1
		clr	.s1	A5, 0, 30, A6
		clr	.s1	A7, 0, 30, A8
	||	mv	.l1x	B6, A1
		cmpeq	.l1	A8, A6, A2
	||[!A0]	b	.s1	.L246
		nop	5
	;; condjump to .L246 occurs
	[!A1]	b	.s1	.L238
		nop	5
	;; condjump to .L238 occurs
	[A2]	b	.s1	.L240
		nop	5
	;; condjump to .L240 occurs
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L238
		nop	5
	;; condjump to .L238 occurs
.L246:
		mv	.l1x	B4, A4
		mv	.l1x	B5, A5
.L238:
		ret	.s2	B3
		nop	5
	;; return occurs
.L240:
		cmpltdp	.s1x	A5:A4, B5:B4, A0
		nop	1
	[!A0]	b	.s1	.L238
		nop	5
	;; condjump to .L238 occurs
		b	.s1	.L238
	||	mv	.l1x	B4, A4
		mv	.l1x	B5, A5
		nop	4
	;; jump to .L238 occurs
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
		cmpeqdp	.s2	B5:B4, B5:B4, B6
	||	mv	.l1x	B5, A7
	||	cmpeqdp	.s1	A5:A4, A5:A4, A0
		nop	1
		clr	.s1	A5, 0, 30, A6
		clr	.s1	A7, 0, 30, A8
	||	mv	.l1x	B6, A1
		cmpeq	.l1	A8, A6, A2
	||[!A0]	b	.s1	.L257
		nop	5
	;; condjump to .L257 occurs
	[!A1]	b	.s1	.L251
		nop	5
	;; condjump to .L251 occurs
	[A2]	b	.s1	.L253
		nop	5
	;; condjump to .L253 occurs
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L257
		nop	5
	;; condjump to .L257 occurs
.L251:
		ret	.s2	B3
		nop	5
	;; return occurs
.L253:
		cmpltdp	.s1x	A5:A4, B5:B4, A0
		nop	1
	[A0]	b	.s1	.L251
		nop	5
	;; condjump to .L251 occurs
.L257:
		ret	.s2	B3
	||	mv	.l1x	B4, A4
		mv	.l1x	B5, A5
		nop	4
	;; return occurs
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
		mv	.l1x	B4, A5
	||	cmpeqsp	.s2	B4, B4, B5
	||	clr	.s1	A4, 0, 30, A3
		clr	.s1	A5, 0, 30, A6
		cmpeqsp	.s1	A4, A4, A0
	||	mv	.l1x	B5, A1
		cmpeq	.l1	A6, A3, A2
	||[!A0]	b	.s1	.L270
		nop	5
	;; condjump to .L270 occurs
	[!A1]	b	.s1	.L264
		nop	5
	;; condjump to .L264 occurs
	[A2]	b	.s1	.L266
		nop	5
	;; condjump to .L266 occurs
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L270
		nop	5
	;; condjump to .L270 occurs
.L264:
		ret	.s2	B3
		nop	5
	;; return occurs
.L266:
		cmpltsp	.s1x	A4, B4, A0
	[A0]	b	.s1	.L264
		nop	5
	;; condjump to .L264 occurs
.L270:
		ret	.s2	B3
	||	mv	.l1x	B4, A4
		nop	5
	;; return occurs
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
		cmpeqdp	.s2	B5:B4, B5:B4, B6
	||	mv	.l1x	B5, A7
	||	cmpeqdp	.s1	A5:A4, A5:A4, A0
		nop	1
		clr	.s1	A5, 0, 30, A6
		clr	.s1	A7, 0, 30, A8
	||	mv	.l1x	B6, A1
		cmpeq	.l1	A8, A6, A2
	||[!A0]	b	.s1	.L283
		nop	5
	;; condjump to .L283 occurs
	[!A1]	b	.s1	.L277
		nop	5
	;; condjump to .L277 occurs
	[A2]	b	.s1	.L279
		nop	5
	;; condjump to .L279 occurs
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L283
		nop	5
	;; condjump to .L283 occurs
.L277:
		ret	.s2	B3
		nop	5
	;; return occurs
.L279:
		cmpltdp	.s1x	A5:A4, B5:B4, A0
		nop	1
	[A0]	b	.s1	.L277
		nop	5
	;; condjump to .L277 occurs
.L283:
		ret	.s2	B3
	||	mv	.l1x	B4, A4
		mv	.l1x	B5, A5
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
	||	mvk	.s1	63, A6
		nop	4
		ldw	.d2t1	*+B14($GOT(s.0)), A4
	||[!A0]	b	.s1	.L291
	[A0]	ldw	.d2t1	*+B14($GOT(digits)), A7
		nop	3
	[!A0]	mv	.d1	A4, A5
	;; condjump to .L291 occurs
		mv	.d1	A4, A5
.L292:
		and	.d1	A6, A0, A3
	||	shru	.s1	A0, 6, A0
		add	.d1	A7, A3, A8
		ldb	.d1t1	*A8, A9
	||[A0]	b	.s1	.L292
		nop	4
		stb	.d1t1	A9, *A5++[1]
	;; condjump to .L292 occurs
.L291:
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
	[!A0]	b	.s1	.L301
	||[!A0]	stw	.d1t2	B4, *A4
	[!A0]	stw	.d1t2	B4, *+A4(4)
	[A0]	ldw	.d2t2	*B4, B5
	[A0]	stw	.d1t2	B4, *+A4(4)
		nop	3
	;; condjump to .L301 occurs
		stw	.d1t2	B5, *A4
		stw	.d2t1	A4, *B4
		ldw	.d1t1	*A4, A1
		nop	4
	[A1]	stw	.d1t1	A4, *+A1(4)
.L301:
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
	[!A0]	b	.s1	.L320
	||	stw	.d2t2	B12, *+B15(40)
		stw	.d2t2	B3, *+B15(28)
		mv	.s2x	A6, B11
	||	mv	.d1	A4, A14
	||	mv	.d2	B4, B10
		nop	3
	;; condjump to .L320 occurs
.L322:
		call	.s2x	A15
	||	mv	.d1	A14, A4
	||	add	.s1	1, A11, A11
		mv	.l2x	A10, B4
	||	addkpc	.s2	.L336, B3, 0
		mv	.l2x	A10, B12
	||	add	.d1	A10, A12, A10
	;; indirect call occurs, with return value
		nop	3
.L336:
		mv	.s1	A4, A1
	||	cmpeq	.l1	A11, A13, A2
	[!A1]	b	.s1	.L319
		nop	5
	;; condjump to .L319 occurs
	[!A2]	b	.s1	.L322
		nop	5
	;; condjump to .L322 occurs
.L320:
		mv	.d1	A12, A0
	||	mpy32	.m1	A12, A13, A4
	||	add	.l1	1, A13, A3
	||	mv	.s1	A12, A6
	||	mv	.l2x	A14, B4
	[!A0]	b	.s1	.L319
	||	stw	.d2t1	A3, *B11
		nop	3
		add	.d2x	B10, A4, B12
		nop	1
	;; condjump to .L319 occurs
		callp	.s2	(memmove), B3
	||	mv	.l1x	B12, A4
.L319:
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
	[!A0]	b	.s1	.L339
	||	stw	.d2t2	B3, *+B15(28)
		mv	.l1x	B6, A14
		mv	.l1x	B4, A10
		nop	3
	;; condjump to .L339 occurs
.L341:
		call	.s2x	A13
	||	mv	.d1	A12, A4
	||	add	.l1	1, A11, A11
	||	mv	.s1	A10, A15
		mv	.l2x	A10, B4
	||	add	.d1	A10, A14, A10
	||	addkpc	.s2	.L351, B3, 0
	;; indirect call occurs, with return value
		nop	4
.L351:
		mv	.s1	A4, A1
	||	cmpeq	.l1x	A11, B10, A2
	[!A1]	b	.s1	.L338
		nop	5
	;; condjump to .L338 occurs
	[!A2]	b	.s1	.L341
		nop	5
	;; condjump to .L341 occurs
.L339:
		mvk	.d1	0, A15
.L338:
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
	[!A1]	b	.s1	.L355
		nop	5
	;; condjump to .L355 occurs
.L356:
		ldb	.d1t1	*++A4[1], A5
		nop	4
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A17, A5, A20
	||	mv	.s1	A5, A18
		cmpltu	.l1	4, A19, A21
	||	shl	.s1	A5, 24, A7
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L356
		nop	5
	;; condjump to .L356 occurs
.L355:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		cmpeq	.l1	A24, A23, A1
	||	mvk	.s1	45, A26
	[A1]	b	.s1	.L357
	||	cmpeq	.l1	A26, A23, A1
		nop	5
	;; condjump to .L357 occurs
	[A1]	b	.s1	.L358
		nop	5
	;; condjump to .L358 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B1
		cmpltu	.l1	9, A5, A2
	[A2]	b	.s1	.L366
	||[!A2]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L366 occurs
.L360:
		mvk	.d1	0, A4
.L363:
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
	[!B2]	b	.s1	.L363
		nop	5
	;; condjump to .L363 occurs
		ret	.s2	B3
	||[!B1]	sub	.d1	A29, A30, A4
		nop	5
	;; return occurs
.L358:
		ldb	.d1t1	*+A4(1), A27
	||	add	.s1	1, A4, A5
		nop	4
		mv	.s1	A27, A18
	||	subah	.d1	A27, 24, A27
		nop	1
		cmpltu	.l2x	9, A27, B0
	[!B0]	b	.s1	.L360
	||[!B0]	mvk	.d2	1, B1
		nop	5
	;; condjump to .L360 occurs
.L366:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L357:
		ldb	.d1t1	*+A4(1), A25
	||	add	.s1	1, A4, A5
	||	mvk	.d2	0, B1
		nop	4
		mv	.s1	A25, A18
	||	subah	.d1	A25, 24, A25
		cmpltu	.l1	9, A25, A0
	[A0]	b	.s1	.L366
	[!A0]	b	.s1	.L360
		nop	5
	;; condjump to .L366 occurs
	;; jump to .L360 occurs
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
	[!A1]	b	.s1	.L380
		nop	5
	;; condjump to .L380 occurs
.L381:
		ldb	.d1t1	*++A4[1], A5
		nop	4
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A17, A5, A20
	||	mv	.s1	A5, A18
		cmpltu	.l1	4, A19, A21
	||	shl	.s1	A5, 24, A7
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L381
		nop	5
	;; condjump to .L381 occurs
.L380:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		cmpeq	.l1	A24, A23, A1
	||	mvk	.s1	45, A26
	[A1]	b	.s1	.L382
	||	cmpeq	.l1	A26, A23, A1
		nop	5
	;; condjump to .L382 occurs
	[A1]	b	.s1	.L401
		nop	5
	;; condjump to .L401 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B1
		cmpltu	.l1	9, A5, A2
	[A2]	b	.s1	.L390
	||[!A2]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L390 occurs
.L384:
		mvk	.d1	0, A4
.L387:
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
	[!B2]	b	.s1	.L387
		nop	5
	;; condjump to .L387 occurs
		ret	.s2	B3
	||[!B1]	sub	.d1	A29, A30, A4
		nop	5
	;; return occurs
.L401:
		ldb	.d1t1	*+A4(1), A27
	||	add	.s1	1, A4, A5
		nop	4
		mv	.s1	A27, A18
	||	subah	.d1	A27, 24, A27
		nop	1
		cmpltu	.l2x	9, A27, B0
	[!B0]	b	.s1	.L384
	||[!B0]	mvk	.d2	1, B1
		nop	5
	;; condjump to .L384 occurs
.L390:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L382:
		ldb	.d1t1	*+A4(1), A25
	||	add	.s1	1, A4, A5
	||	mvk	.d2	0, B1
		nop	4
		mv	.s1	A25, A18
	||	subah	.d1	A25, 24, A25
		cmpltu	.l1	9, A25, A0
	[A0]	b	.s1	.L390
	[!A0]	b	.s1	.L384
		nop	5
	;; condjump to .L390 occurs
	;; jump to .L384 occurs
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
	[!A0]	b	.s1	.L403
	[A0]	mvk	.s1	32, A8
		nop	4
	;; condjump to .L403 occurs
.L404:
		ldb	.d1t1	*++A4[1], A5
		nop	4
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A8, A5, A20
	||	mv	.s1	A5, A3
		cmpltu	.l1	4, A19, A21
	||	shl	.s1	A5, 24, A7
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L404
		nop	5
	;; condjump to .L404 occurs
.L403:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		mvk	.s1	45, A26
	||	cmpeq	.l1	A24, A23, A2
		cmpeq	.l1	A26, A23, A0
	||[A2]	b	.s1	.L405
		nop	5
	;; condjump to .L405 occurs
	[A0]	b	.s1	.L406
		nop	5
	;; condjump to .L406 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B0
		nop	1
		cmpltu	.l2x	9, A5, B2
	[B2]	b	.s1	.L414
	||[!B2]	mv	.d1	A4, A8
		nop	5
	;; condjump to .L414 occurs
.L408:
		mvk	.d1	0, A4
	||	mvk	.l1	0, A5
.L411:
		ldb	.d1t1	*++A8[1], A16
	||	addu	.l1	A4, A4, A1:A0
	||	addk	.s1	-48, A3
		add	.d1	A1, A5, A29
	||	addu	.l1	A0, A0, A7:A6
	||	shl	.s1	A3, 24, A28
		add	.d1	A29, A5, A31
	||	ext	.s1	A3, 24, 24, A30
	||	addu	.l1	A6, A4, A1:A0
		add	.d1	A7, A31, A17
	||	addu	.l1	A0, A0, A7:A6
	||	shr	.s1	A28, 31, A9
		add	.d1	A17, A31, A18
		mv	.l1	A16, A3
	||	subah	.d1	A16, 24, A16
	||	add	.s1	A1, A18, A4
		cmpltu	.l1	9, A16, A2
	||	add	.d1	A4, A5, A5
	||	sub	.s1	A6, A30, A4
	[!A2]	b	.s1	.L411
	||	add	.d1	A7, A5, A19
	||	cmpltu	.l1	A6, A4, A24
		add	.d1	A19, A5, A20
		sub	.d1	A20, A9, A23
		sub	.d1	A23, A24, A5
		nop	2
	;; condjump to .L411 occurs
	[B0]	b	.s1	.L402
		nop	5
	;; condjump to .L402 occurs
		sub	.d1	A30, A6, A4
	||	sub	.s1	A9, A20, A8
		cmpltu	.l1	A30, A4, A3
		sub	.d1	A8, A3, A5
.L402:
		ret	.s2	B3
		nop	5
	;; return occurs
.L406:
		ldb	.d1t1	*+A4(1), A27
	||	add	.s1	1, A4, A8
		nop	4
		mv	.s1	A27, A3
	||	subah	.d1	A27, 24, A27
		nop	1
		cmpltu	.l2x	9, A27, B1
	[!B1]	b	.s1	.L408
	||[!B1]	mvk	.d2	1, B0
		nop	5
	;; condjump to .L408 occurs
.L414:
		ret	.s2	B3
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; return occurs
.L405:
		ldb	.d1t1	*+A4(1), A25
	||	add	.s1	1, A4, A8
		nop	4
		mv	.s1	A25, A3
	||	subah	.d1	A25, 24, A25
		nop	1
		cmpltu	.l2x	9, A25, B0
	[B0]	b	.s1	.L414
	||	mvk	.d2	0, B0
		nop	5
	;; condjump to .L414 occurs
		b	.s1	.L408
		nop	5
	;; jump to .L408 occurs
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
.L440:
		mv	.d1	A10, A0
	[!A0]	b	.s1	.L428
		nop	5
	;; condjump to .L428 occurs
.L443:
		shru	.s1	A10, 1, A12
	||	mv	.d1	A15, A4
	||	add	.l1	-1, A10, A10
		mpy32	.m1	A12, A13, A3
	||	sub	.d1	A10, A12, A10
		call	.s2	B10
		addkpc	.s2	.L444, B3, 0
		nop	1
		add	.d1	A14, A3, A11
		nop	1
	;; indirect call occurs, with return value
		mv	.l2x	A11, B4
.L444:
		cmpgt	.l1	0, A4, A1
	||	mv	.s1	A4, A2
	[A1]	b	.s1	.L432
	||[!A1]	add	.d1	A11, A13, A14
		nop	5
	;; condjump to .L432 occurs
	[A2]	b	.s1	.L440
		nop	5
	;; condjump to .L440 occurs
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
.L432:
		mv	.d1	A12, A10
		mv	.d1	A10, A0
	[A0]	b	.s1	.L443
		nop	5
	;; condjump to .L443 occurs
.L428:
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
	[!A0]	b	.s1	.L450
	||	stw	.d2t1	A14, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t2	B3, *+B15(32)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
	;; condjump to .L450 occurs
		mv	.l2x	A4, B10
	||	mv	.s1x	B4, A13
	||	mv	.d1	A8, A15
		mv	.l1x	B6, A12
	||	mv	.l2x	A6, B11
		mv	.l1x	B8, A14
.L446:
		shr	.s1x	B11, 1, A11
	||	sub	.d2	B11, 1, B11
	||	mv	.d1	A14, A6
		mpy32	.m1	A11, A12, A10
	||	mv	.l1x	B10, A4
	||	shr	.s2	B11, 1, B11
		call	.s2x	A15
		addkpc	.s2	.L461, B3, 0
		nop	1
		add	.d1	A13, A10, A10
		nop	1
	;; indirect call occurs, with return value
		mv	.l2x	A10, B4
.L461:
		mv	.s1	A4, A1
	||	cmplt	.l1	0, A4, A2
	[!A1]	b	.s1	.L445
	||	mv	.l1x	B11, A1
	||[A2]	add	.d1	A10, A12, A13
		nop	5
	;; condjump to .L445 occurs
	[!A2]	b	.s1	.L448
		nop	5
	;; condjump to .L448 occurs
	[A1]	b	.s1	.L446
		nop	5
	;; condjump to .L446 occurs
.L450:
		mvk	.d1	0, A10
.L445:
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
.L448:
		mv	.d1	A11, A0
	||	mv	.l2x	A11, B11
	[A0]	b	.s1	.L446
		nop	5
	;; condjump to .L446 occurs
		b	.s1	.L445
	||	mvk	.d1	0, A10
		nop	5
	;; jump to .L445 occurs
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(16)
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L464, B3, 0
		nop	4
.L464:
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
	||	addkpc	.s2	.L469, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L469:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L470, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L470:
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
		addkpc	.s2	.L475, B3, 0
		nop	4
.L475:
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
	||	addkpc	.s2	.L480, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L480:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L481, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L481:
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
	[!A1]	b	.s1	.L486
		nop	5
	;; condjump to .L486 occurs
.L483:
		cmpeq	.l1x	A1, B4, A0
	[A0]	b	.s1	.L482
	||[!A0]	ldw	.d1t1	*++A4[1], A1
		nop	5
	;; condjump to .L482 occurs
	[A1]	b	.s1	.L483
		nop	5
	;; condjump to .L483 occurs
.L486:
		mvk	.d1	0, A4
.L482:
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
	[!A1]	b	.s1	.L491
		nop	5
	;; condjump to .L491 occurs
.L492:
	[!A0]	b	.s1	.L491
	||[A0]	ldw	.d2t1	*++B4[1], A3
	[A0]	ldw	.d1t1	*++A4[1], A0
		nop	4
	;; condjump to .L491 occurs
		cmpeq	.l1	A3, A0, A1
	[A1]	b	.s1	.L492
		nop	5
	;; condjump to .L492 occurs
.L491:
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
.L499:
		ldw	.d2t1	*B4++[1], A0
		nop	4
	[A0]	b	.s1	.L499
	||	stw	.d1t1	A0, *++A3[1]
		nop	5
	;; condjump to .L499 occurs
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
	[!A0]	b	.s1	.L503
	||[!A0]	mvk	.d1	0, A4
		mv	.d1	A4, A5
		nop	4
	;; condjump to .L503 occurs
.L505:
		ldw	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L505
		nop	5
	;; condjump to .L505 occurs
		sub	.d1	A5, A4, A4
		shr	.s1	A4, 2, A4
.L503:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L519
		nop	5
	;; condjump to .L519 occurs
.L512:
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
	[!A0]	b	.s1	.L523
		nop	5
	;; condjump to .L523 occurs
	[A2]	b	.s1	.L512
		nop	5
	;; condjump to .L512 occurs
.L519:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L523:
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
	[!A1]	b	.s1	.L531
	||[A1]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L531 occurs
.L526:
		mv	.s1	A5, A4
	||	ldw	.d1t1	*A5++[1], A3
	||	mv	.l1x	B4, A6
		sub	.d1	A1, 1, A1
		nop	3
		cmpeq	.l1	A6, A3, A2
	[A2]	b	.s1	.L524
		nop	5
	;; condjump to .L524 occurs
	[A1]	b	.s1	.L526
		nop	5
	;; condjump to .L526 occurs
.L531:
		mvk	.d1	0, A4
.L524:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L543
		nop	5
	;; condjump to .L543 occurs
.L536:
		ldw	.d2t1	*B4, A7
	||	sub	.d1	A2, 1, A2
	||	add	.s2	4, B4, B4
		ldw	.d1t1	*A4, A8
	||	add	.s1	4, A4, A4
		nop	4
		cmpeq	.l1	A7, A8, A1
	[!A1]	b	.s1	.L547
		nop	5
	;; condjump to .L547 occurs
	[A2]	b	.s1	.L536
		nop	5
	;; condjump to .L536 occurs
.L543:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L547:
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
	[!A0]	b	.s1	.L549
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	shl	.s1	A6, 2, A6
		nop	3
	;; condjump to .L549 occurs
		callp	.s2	(memcpy), B3
.L549:
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
	||[A0]	b	.s1	.L564
		nop	5
	;; condjump to .L564 occurs
	[!A1]	b	.s1	.L571
		nop	5
	;; condjump to .L571 occurs
		mv	.d1	A6, A1
	||	add	.l1	-4, A7, A16
	||	add	.d2x	B4, A7, B4
	||	add	.s1	A4, A7, A18
	[!A1]	b	.s1	.L564
		shru	.s1	A16, 2, A17
		add	.d1	A17, 1, A2
		nop	3
	;; condjump to .L564 occurs
.L561:
		sub	.d1	A2, 1, A2
	||	ldw	.d2t1	*--B4[1], A20
	[A2]	b	.s1	.L561
		nop	3
		stw	.d1t1	A20, *--A18[1]
		nop	1
	;; condjump to .L561 occurs
.L564:
		ret	.s2	B3
		nop	5
	;; return occurs
.L571:
		mv	.d1	A6, A2
	||	add	.l1	-4, A4, A9
	||	mv	.s1	A6, A0
	[!A2]	b	.s1	.L564
		nop	5
	;; condjump to .L564 occurs
.L562:
		sub	.d1	A0, 1, A0
	||	ldw	.d2t1	*B4++[1], A20
	[A0]	b	.s1	.L562
		nop	3
		stw	.d1t1	A20, *++A9[1]
		nop	1
	;; condjump to .L562 occurs
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
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A0
	[!A0]	b	.s1	.L582
		nop	5
	;; condjump to .L582 occurs
		mv	.d1	A6, A2
	||	add	.s1	A4, A6, A31
	||	add	.d2x	B4, A6, B8
	[!A2]	b	.s1	.L581
	||	sub	.d1	A31, A4, A0
		nop	5
	;; condjump to .L581 occurs
.L584:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A31[1], A7
	[A0]	b	.s1	.L584
		nop	3
		stb	.d2t1	A7, *--B8[1]
		nop	1
	;; condjump to .L584 occurs
.L581:
		ret	.s2	B3
		nop	5
	;; return occurs
.L582:
		sub	.d1	A6, 1, A18
	||	add	.s1	1, A4, A17
	||	cmpeq	.l1	A5, A4, A1
		mv	.d1	A6, A2
	||	sub	.l1x	B4, A17, A8
	||[A1]	b	.s1	.L581
		cmpltu	.l2x	11, A18, B0
	||	neg	.l1	A4, A16
		cmpltu	.l2x	2, A8, B1
	||[!B0]	add	.d1	A4, 1, A3
	||	and	.s1	2, A16, A1
	[B0]	mv	.d1	A17, A3
	||[!A1]	add	.s1x	1, B4, A9
		nop	2
	;; condjump to .L581 occurs
	[!A2]	b	.s1	.L581
		nop	5
	;; condjump to .L581 occurs
	[!B0]	b	.s1	.L585
		nop	5
	;; condjump to .L585 occurs
	[!B1]	b	.s1	.L585
	||[B1]	and	.d1	3, A16, A3
		mv	.d1	A3, A0
		cmpeq	.l2x	3, A3, B2
		nop	3
	;; condjump to .L585 occurs
	[!A0]	b	.s1	.L595
	||[A0]	ldb	.d1t2	*A4, B5
		nop	4
	[A0]	stb	.d2t2	B5, *B4
	;; condjump to .L595 occurs
	[!A1]	b	.s1	.L586
	||[A1]	ldb	.d1t2	*+A4(1), B6
		nop	4
	[A1]	stb	.d2t2	B6, *+B4(1)
	;; condjump to .L586 occurs
	[B2]	ldb	.d1t2	*+A4(2), B6
	||[!B2]	add	.s1	2, A4, A17
	||[!B2]	add	.l1x	2, B4, A9
	[!B2]	sub	.d1	A6, 2, A18
	||[B2]	add	.s1	3, A4, A17
	||[B2]	add	.l1x	3, B4, A9
	[B2]	sub	.d1	A6, 3, A18
		nop	2
	[B2]	stb	.d2t2	B6, *+B4(2)
.L586:
		sub	.d1	A6, A3, A6
	||	add	.l1	A4, A3, A19
	||	add	.s1x	A3, B4, A21
		and	.d1	-4, A6, A20
		sub	.d1	A20, 4, A4
		shru	.s1	A4, 2, A22
		add	.d1	A22, 1, A2
.L590:
		add	.s1	-1, A2, A2
	||	ldw	.d1t1	*A19++[1], A23
	[A2]	b	.s1	.L590
		nop	3
		stnw	.d1t1	A23, *A21++[1]
		nop	1
	;; condjump to .L590 occurs
		cmpeq	.l1	A20, A6, A0
	||	add	.d1	A17, A20, A24
	||	sub	.s1	A18, A20, A25
	[A0]	b	.s1	.L581
	||[!A0]	ldb	.d1t1	*A24, A26
	||	add	.l1	A9, A20, A9
		cmpeq	.l2x	1, A25, B0
		cmpeq	.l2x	2, A25, B1
		nop	2
	[!A0]	stb	.d1t1	A26, *A9
	;; condjump to .L581 occurs
	[B0]	b	.s1	.L581
	||[!B0]	ldb	.d1t1	*+A24(1), A27
		nop	4
	[!B0]	stb	.d1t1	A27, *+A9(1)
	;; condjump to .L581 occurs
	[B1]	b	.s1	.L581
	||[!B1]	ldb	.d1t1	*+A24(2), A28
	||[!B1]	ret	.s2	B3
		nop	4
	[!B1]	stb	.d1t1	A28, *+A9(2)
	;; condjump to .L581 occurs
	;; return occurs
.L595:
		b	.s1	.L590
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
	;; jump to .L590 occurs
.L585:
		add	.d1	A4, A6, A29
	||	sub	.d2	B4, 1, B4
		sub	.d1	A29, A3, A30
		add	.d1	A30, 1, A1
		nop	1
		mvc	.s2x	A1, ILC
		nop	3
		sploop	6
.L593:
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
		mv	.l1x	B4, A16
		subah	.d1	A16, 16, A3
		cmpgt	.l1	0, A3, A1
	[A1]	mvk	.s1	31, A8
	||[!A1]	mvk	.d1	0, A7
	[A1]	shru	.s1	A4, 1, A3
	||[A1]	sub	.d1	A8, A16, A8
	[A1]	shl	.s1	A5, A16, A6
	[A1]	shru	.s1	A3, A8, A3
	[A1]	or	.d1	A6, A3, A3
	||	neg	.l1	A16, A6
	||[!A1]	shl	.s1	A4, A3, A3
		clr	.s1	A6, 6, 31, A17
		subah	.d1	A17, 16, A18
	||[A1]	shl	.s1	A4, A16, A7
		cmpgt	.l1	0, A18, A0
	[A0]	mvk	.s1	31, A9
	||[!A0]	mvk	.d1	0, A17
		ret	.s2	B3
	||[A0]	shru	.s1	A4, A17, A18
	||[A0]	sub	.d1	A9, A17, A4
	[A0]	shl	.s1	A5, 1, A8
	[A0]	shl	.s1	A8, A4, A4
	[!A0]	shru	.s1	A5, A18, A4
	||[A0]	or	.d1	A18, A4, A4
	[A0]	shru	.s1	A5, A17, A17
	||	or	.d1	A7, A4, A4
		or	.d1	A3, A17, A5
	;; return occurs
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
		mv	.l1x	B4, A16
		subah	.d1	A16, 16, A3
		cmpgt	.l1	0, A3, A1
	[A1]	mvk	.s1	31, A8
	||[!A1]	mvk	.d1	0, A7
	[A1]	shl	.s1	A5, 1, A3
	||[A1]	sub	.d1	A8, A16, A8
	[A1]	shru	.s1	A4, A16, A6
	[A1]	shl	.s1	A3, A8, A3
	[A1]	or	.d1	A6, A3, A3
	||	neg	.l1	A16, A6
	||[!A1]	shru	.s1	A5, A3, A3
		clr	.s1	A6, 6, 31, A17
		subah	.d1	A17, 16, A18
	||[A1]	shru	.s1	A5, A16, A7
		cmpgt	.l1	0, A18, A0
	[A0]	mvk	.s1	31, A9
	||[!A0]	mvk	.d1	0, A17
		ret	.s2	B3
	||[A0]	shl	.s1	A5, A17, A18
	||[A0]	sub	.d1	A9, A17, A5
	[A0]	shru	.s1	A4, 1, A8
	[A0]	shru	.s1	A8, A5, A5
	[!A0]	shl	.s1	A4, A18, A5
	||[A0]	or	.d1	A18, A5, A5
	[A0]	shl	.s1	A4, A17, A17
	||	or	.d1	A7, A5, A5
		or	.d1	A3, A17, A4
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
.L652:
		shru	.s1	A4, A3, A5
	||	sub	.d1	A1, 1, A1
	||	add	.l1	1, A3, A3
		and	.d1	1, A5, A0
	[A0]	b	.s1	.L656
		nop	5
	;; condjump to .L656 occurs
	[A1]	b	.s1	.L652
		nop	5
	;; condjump to .L652 occurs
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L656:
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
	[!A0]	b	.s1	.L657
	||[!A0]	mvk	.d1	0, A4
	[A0]	and	.d1	1, A0, A4
		mv	.d1	A4, A1
		nop	3
	;; condjump to .L657 occurs
	[A1]	b	.s1	.L657
	||[!A1]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L657 occurs
.L659:
		shr	.s1	A0, 1, A0
	||	add	.d1	A4, 1, A4
		and	.d1	1, A0, A1
	[!A1]	b	.s1	.L659
		nop	5
	;; condjump to .L659 occurs
.L657:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
		mvk	.d1	-1, A3
		mvklh	.s1	65407, A3
		cmpltsp	.s1	A4, A3, A0
	[A0]	b	.s1	.L665
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L665 occurs
		mvk	.d1	-1, A5
		mvklh	.s1	32639, A5
		cmpgtsp	.s1	A4, A5, A4
.L665:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
		mvk	.d1	-1, A1
	||	mvk	.l1	-1, A0
		mvklh	.s1	65519, A1
		cmpltdp	.s1	A5:A4, A1:A0, A0
		nop	1
	[A0]	b	.s1	.L671
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L671 occurs
		mvk	.d1	-1, A1
	||	mvk	.l1	-1, A0
		mvklh	.s1	32751, A1
		cmpgtdp	.s1	A5:A4, A1:A0, A4
		nop	1
.L671:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
		mvk	.d1	-1, A1
	||	mvk	.l1	-1, A0
		mvklh	.s1	65519, A1
		cmpltdp	.s1	A5:A4, A1:A0, A0
		nop	1
	[A0]	b	.s1	.L677
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L677 occurs
		mvk	.d1	-1, A1
	||	mvk	.l1	-1, A0
		mvklh	.s1	32751, A1
		cmpgtdp	.s1	A5:A4, A1:A0, A4
		nop	1
.L677:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
		intdp	.l2	B4,B5:B4
	||	ret	.s2	B3
		nop	4
		stdw	.d1t2	B5:B4, *A4
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
	||[!A0]	b	.s1	.L686
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
	;; condjump to .L686 occurs
	[A1]	b	.s1	.L695
		nop	5
	;; condjump to .L695 occurs
	[!A2]	b	.s1	.L696
	||[A2]	ldb	.d1t1	*A4, A7
	[A2]	ldb	.d2t1	*B4, A18
		nop	4
	;; condjump to .L696 occurs
	[!A0]	b	.s1	.L689
	||	xor	.l1	A7, A18, A19
	||[A0]	ldb	.d1t1	*+A4(1), A17
		stb	.d1t1	A19, *A4
	[A0]	ldb	.d2t1	*+B4(1), A20
		nop	3
	;; condjump to .L689 occurs
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
.L689:
		sub	.d1	A6, A2, A6
	||	add	.s1	A4, A2, A22
	||	add	.d2x	B4, A2, B4
		and	.d1	-4, A6, A23
		sub	.d1	A23, 4, A24
		shru	.s1	A24, 2, A25
		add	.d1	A25, 1, A2
.L693:
		ldnw	.d2t1	*B4++[1], A26
	||	sub	.d1	A2, 1, A2
		ldw	.d1t1	*A22, A27
	[A2]	b	.s1	.L693
		nop	3
		xor	.d1	A27, A26, A28
		stw	.d1t1	A28, *A22++[1]
	;; condjump to .L693 occurs
		cmpeq	.l1	A6, A23, A0
	||	add	.d1	A9, A23, A9
	||	add	.s1	A17, A23, A16
	[A0]	b	.s1	.L686
	||	sub	.d1	A8, A23, A6
		mv	.l2x	A9, B4
		nop	4
	;; condjump to .L686 occurs
.L687:
		cmpeq	.l2x	1, A6, B1
	||	ldb	.d1t1	*A16, A29
	||	cmpeq	.l1	3, A6, A1
		ldb	.d2t1	*B4, A30
	||	cmpeq	.l2x	2, A6, B2
	||	cmpeq	.l1	5, A6, A2
	[B1]	b	.s1	.L686
	||[!B1]	ldb	.d1t1	*+A16(1), A5
	||	cmpeq	.l2x	4, A6, B0
	[!B1]	ldb	.d2t1	*+B4(1), A3
		nop	2
		xor	.d1	A30, A29, A31
		stb	.d1t1	A31, *A16
	;; condjump to .L686 occurs
	[B2]	b	.s1	.L686
	||	xor	.l1	A5, A3, A17
	||[!B2]	ldb	.d1t1	*+A16(2), A8
		stb	.d1t1	A17, *+A16(1)
	[!B2]	ldb	.d2t1	*+B4(2), A7
		nop	3
	;; condjump to .L686 occurs
	[A1]	b	.s1	.L686
	||[!A1]	ldb	.d1t1	*+A16(3), A19
		xor	.d1	A8, A7, A18
	||[!A1]	ldb	.d2t1	*+B4(3), A20
		stb	.d1t1	A18, *+A16(2)
		nop	3
	;; condjump to .L686 occurs
	[B0]	b	.s1	.L686
	||	xor	.l1	A19, A20, A21
	||[!B0]	ldb	.d1t1	*+A16(4), A22
		stb	.d1t1	A21, *+A16(3)
	[!B0]	ldb	.d2t1	*+B4(4), A23
		nop	3
	;; condjump to .L686 occurs
	[A2]	b	.s1	.L686
	||[!A2]	ldb	.d1t1	*+A16(5), A6
		xor	.d1	A22, A23, A24
	||[!A2]	ldb	.d2t1	*+B4(5), A25
		stb	.d1t1	A24, *+A16(4)
		nop	3
	;; condjump to .L686 occurs
		xor	.d1	A6, A25, A26
		stb	.d1t1	A26, *+A16(5)
.L686:
		ret	.s2	B3
		nop	5
	;; return occurs
.L696:
		b	.s1	.L693
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
	;; jump to .L693 occurs
.L695:
		b	.s1	.L687
	||	mv	.d1	A4, A16
		nop	5
	;; jump to .L687 occurs
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
		ldb	.d1t1	*A4, A0
	||	mv	.l1	A6, A1
	||	mv	.s1	A4, A3
		nop	4
	[!A0]	b	.s1	.L719
		nop	5
	;; condjump to .L719 occurs
.L720:
		ldb	.d1t1	*++A3[1], A2
		nop	4
	[A2]	b	.s1	.L720
		nop	5
	;; condjump to .L720 occurs
.L719:
	[!A1]	b	.s1	.L721
	||[A1]	sub	.d2	B4, 1, B4
		nop	5
	;; condjump to .L721 occurs
.L722:
		ldb	.d2t1	*++B4[1], A0
	||	sub	.d1	A1, 1, A1
		nop	4
	[!A0]	b	.s1	.L724
	||	stb	.d1t1	A0, *A3++[1]
		nop	5
	;; condjump to .L724 occurs
	[A1]	b	.s1	.L722
		nop	5
	;; condjump to .L722 occurs
.L721:
		mvk	.d1	0, A5
		stb	.d1t1	A5, *A3
.L724:
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
	[!A1]	b	.s1	.L733
		nop	5
	;; condjump to .L733 occurs
.L734:
		add	.d1	A5, A4, A3
	||	sub	.d2	B4, 1, B4
		ldb	.d1t1	*A3, A1
		nop	4
	[A1]	b	.s1	.L736
		nop	5
	;; condjump to .L736 occurs
.L733:
		ret	.s2	B3
		nop	5
	;; return occurs
.L736:
		mv	.s1x	B4, A1
	||	add	.d1	A4, 1, A4
	[A1]	b	.s1	.L734
		nop	5
	;; condjump to .L734 occurs
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
	[!A0]	b	.s1	.L747
	||[A0]	sub	.d2	B4, 1, B4
		shl	.s1	A0, 24, A6
		nop	4
	;; condjump to .L747 occurs
.L743:
		mv	.l1x	B4, A3
	||	shr	.s1	A6, 24, A5
.L746:
		ldb	.d1t1	*++A3[1], A1
		nop	4
		cmpeq	.l1	A5, A1, A0
	||[!A1]	b	.s1	.L752
		nop	5
	;; condjump to .L752 occurs
	[!A0]	b	.s1	.L746
		nop	5
	;; condjump to .L746 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L752:
		ldb	.d1t1	*++A4[1], A2
		nop	4
	[A2]	b	.s1	.L743
		shl	.s1	A2, 24, A6
		nop	4
	;; condjump to .L743 occurs
.L747:
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
	||	mvk	.d1	0, A6
.L756:
		ldb	.d1t1	*A3, A7
	||	mv	.s1x	B4, A4
		nop	4
		shl	.s1	A7, 24, A5
	||	cmpeq	.l1	A4, A7, A0
		mv	.d1	A5, A1
	||[A0]	mv	.l1	A3, A4
	||[!A0]	mv	.s1	A6, A4
	[A1]	b	.s1	.L756
	||	mv	.d1	A4, A6
	||	add	.l1	1, A3, A3
		nop	5
	;; condjump to .L756 occurs
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
	[!A0]	b	.s1	.L770
		shl	.s1	A0, 24, A17
		nop	4
	;; condjump to .L770 occurs
.L762:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L762
		nop	5
	;; condjump to .L762 occurs
		mv	.l1x	B4, A4
		sub	.d1	A5, A4, A2
	[!A2]	b	.s1	.L770
	||[A2]	add	.d1x	A2, B4, A16
	[A2]	shr	.s1	A17, 24, A17
		nop	4
	;; condjump to .L770 occurs
.L768:
		ldbu	.d1t1	*A3, A18
	||	mv	.l1	A3, A4
	||	mv	.s1	A3, A7
		add	.d1	A3, 1, A3
		nop	3
		ext	.s1	A18, 24, 24, A0
		cmpeq	.l1	A17, A0, A1
	[A1]	b	.s1	.L767
		nop	5
	;; condjump to .L767 occurs
	[A0]	b	.s1	.L768
		nop	5
	;; condjump to .L768 occurs
		mvk	.d1	0, A4
.L760:
		ret	.s2	B3
		nop	5
	;; return occurs
.L767:
		mv	.l1x	B4, A6
.L764:
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
	[!A2]	b	.s1	.L765
	||[A2]	ldbu	.d1t1	*++A7[1], A18
		nop	4
		mv	.d1	A18, A0
	;; condjump to .L765 occurs
	[A0]	b	.s1	.L764
		nop	5
	;; condjump to .L764 occurs
		mv	.d1	A6, A8
.L765:
		ldbu	.d1t1	*A8, A25
	||	add	.s1	1, A4, A3
		nop	4
		cmpeq	.l1	A25, A18, A1
	[A1]	b	.s1	.L760
	[!A1]	b	.s1	.L768
		nop	5
	;; condjump to .L760 occurs
	;; jump to .L768 occurs
.L770:
		ret	.s2	B3
	||	mv	.d1	A3, A4
		nop	5
	;; return occurs
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
		mvk	.d1	0, A0
	||	mvk	.l1	0, A1
		cmpltdp	.s1	A5:A4, A1:A0, A2
		nop	1
	[A2]	b	.s1	.L788
	[!A2]	cmpgtdp	.s1	A5:A4, A1:A0, A2
		nop	4
	;; condjump to .L788 occurs
	[!A2]	b	.s1	.L780
	||[A2]	cmpltdp	.s2x	B5:B4, A1:A0, B4
		nop	2
		mv	.l1x	B4, A0
		nop	2
	;; condjump to .L780 occurs
	[A0]	b	.s1	.L779
		nop	5
	;; condjump to .L779 occurs
.L780:
		ret	.s2	B3
		nop	5
	;; return occurs
.L788:
		cmpgtdp	.s2x	B5:B4, A1:A0, B5
		nop	2
		mv	.l1x	B5, A1
	[!A1]	b	.s1	.L780
		nop	5
	;; condjump to .L780 occurs
.L779:
		ret	.s2	B3
	||	mv	.s1	A4, A0
	||	mvk	.d1	0, A3
		mvklh	.s1	32768, A3
		xor	.d1	A3, A5, A1
		dmv	.s1	A1, A0, A5:A4
		nop	2
	;; return occurs
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
		cmpgtu	.l2	B6, B4, B5
	||	sub	.s2	B4, B6, B4
	||	mv	.l1x	B6, A0
	[!A0]	b	.s1	.L789
	||	cmpeq	.l2	1, B6, B0
		add	.d1x	A4, B4, A9
		mv	.s1x	B5, A1
	||	cmpltu	.l1	A9, A4, A2
		nop	3
	;; condjump to .L789 occurs
	[A1]	b	.s1	.L800
		nop	5
	;; condjump to .L800 occurs
	[A2]	b	.s1	.L800
	||[!A2]	ldb	.d1t1	*A6, A16
		nop	4
		shl	.s1	A16, 24, A17
	;; condjump to .L800 occurs
.L795:
		mv	.d1	A4, A3
		ldb	.d1t1	*A3++[1], A5
		nop	4
		cmpeq	.l1	A16, A5, A0
	[A0]	b	.s1	.L810
	||[!A0]	mv	.d1	A3, A4
		nop	5
	;; condjump to .L810 occurs
.L791:
		cmpgtu	.l1	A4, A9, A1
	[!A1]	b	.s1	.L795
		nop	5
	;; condjump to .L795 occurs
.L800:
		mvk	.d1	0, A4
.L789:
		ret	.s2	B3
		nop	5
	;; return occurs
.L810:
	[B0]	b	.s1	.L789
	||	sub	.d1	A3, 1, A22
	||	mv	.l1	A6, A21
		add	.l1x	-1, B6, A1
		nop	4
	;; condjump to .L789 occurs
.L792:
		ldbu	.d1t1	*++A22[1], A18
	||	add	.s1	-1, A1, A1
		ldbu	.d1t1	*++A21[1], A8
		nop	4
		cmpeq	.l1	A8, A18, A0
	[!A0]	b	.s1	.L811
		nop	5
	;; condjump to .L811 occurs
	[A1]	b	.s1	.L792
		nop	5
	;; condjump to .L792 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L811:
		cmpgtu	.l1	A3, A9, A1
	||	mv	.d1	A3, A4
	||	shr	.s1	A17, 24, A19
	[A1]	b	.s1	.L800
	||[!A1]	ldb	.d1t1	*A4++[1], A7
		nop	4
		cmpeq	.l1	A7, A19, A0
	;; condjump to .L800 occurs
	[!A0]	b	.s1	.L791
		nop	5
	;; condjump to .L791 occurs
		b	.s1	.L792
	||	mv	.d1	A3, A20
	||	mv	.l1	A4, A3
		sub	.d1	A3, 1, A22
	||	mv	.l1	A20, A4
	||	mv	.s1	A6, A21
		add	.l1x	-1, B6, A1
		nop	3
	;; jump to .L792 occurs
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
		sub	.d2	B15, 24, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(20)
	[!A0]	b	.s1	.L813
	||	stw	.d2t2	B14, *+B15(24)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A11
	||	mv	.s1	A6, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	2
	;; condjump to .L813 occurs
		callp	.s2	(memmove), B3
		nop	1
.L813:
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
	[!A0]	b	.s1	.L820
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; condjump to .L820 occurs
.L822:
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
	[A1]	b	.s1	.L822
	||	mv	.d1	A0, A4
	||	add	.l1x	A17, B5, A19
		nop	1
		mv	.l2x	A19, B5
		nop	3
	;; condjump to .L822 occurs
.L820:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
		cmpgtu	.l1x	A4, B4, A3
	||	mv	.s1	A4, A9
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L849
	||[A1]	mvk	.d1	1, A3
		nop	5
	;; condjump to .L849 occurs
.L828:
		cmpgt	.l1x	0, B4, A2
	[A2]	b	.s1	.L832
	||[!A2]	shl	.s2	B4, 1, B4
	[!A2]	shl	.s1	A3, 1, A3
		mv	.s1x	B4, A5
	||	cmpeq	.l1	0, A3, A7
		cmpltu	.l1	A5, A9, A4
		cmpeq	.l1	0, A7, A8
		and	.d1	A8, A4, A4
	;; condjump to .L832 occurs
		mv	.d1	A4, A0
	[A0]	b	.s1	.L828
		nop	5
	;; condjump to .L828 occurs
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L833
	||[!A1]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L833 occurs
.L832:
		mvk	.d1	0, A4
.L838:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A9, A18
	||	sub	.s1	A9, A16, A17
		xor	.d1	1, A18, A19
	||	mv	.s1	A18, A2
		mv	.d1	A19, A0
	||[!A2]	mv	.s1	A17, A9
	[A0]	mv	.l1	A3, A18
	||	shru	.s1	A3, 1, A3
	||[!A0]	mvk	.d1	0, A18
		mv	.d1	A3, A1
	||	or	.s1	A18, A4, A4
	[A1]	b	.s1	.L838
		nop	5
	;; condjump to .L838 occurs
.L833:
		ret	.s2	B3
	||	mv	.d1	A6, A2
	[A2]	mv	.d1	A9, A4
		nop	4
	;; return occurs
.L849:
		ret	.s2	B3
	||	cmpltu	.l1x	A4, B4, A1
	||	sub	.l2x	A4, B4, B4
	||	mv	.s1	A6, A2
		xor	.d1	1, A1, A4
	[!A1]	mv	.l1x	B4, A9
	[A2]	mv	.d1	A9, A4
		nop	2
	;; return occurs
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
		shl	.s1	A4, 24, A5
		ext	.s1	A4, 24, 24, A3
		shr	.s1	A5, 31, A6
	||	ret	.s2	B3
		xor	.s1	A4, A6, A4
	||	cmpeq	.l1	A6, A3, A0
	[!A0]	ext	.s1	A4, 24, 24, A4
	||[A0]	mvk	.d1	7, A4
	[!A0]	shl	.s1	A4, 8, A4
	[!A0]	lmbd	.l1	1, A4, A4
	[!A0]	sub	.d1	A4, 1, A4
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
	[A0]	b	.s1	.L854
	[A0]	mvk	.s1	63, A4
		nop	4
	;; condjump to .L854 occurs
	[!A1]	lmbd	.l1	1, A4, A4
	[!A1]	addk	.s1	32, A4
	||[A1]	lmbd	.l1	1, A6, A4
		sub	.d1	A4, 1, A4
.L854:
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
	[!A0]	b	.s1	.L861
		nop	5
	;; condjump to .L861 occurs
.L863:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L863
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L863 occurs
.L861:
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
	[A1]	b	.s1	.L869
		nop	5
	;; condjump to .L869 occurs
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[!A1]	b	.s1	.L894
		nop	5
	;; condjump to .L894 occurs
.L869:
	[!A0]	b	.s1	.L872
	||	add	.l1x	-8, B4, A16
	||	sub	.d1	A4, 8, A19
		shl	.s1	A0, 3, A9
		sub	.d1	A9, 8, A17
		shru	.s1	A17, 3, A20
		add	.d1	A20, 1, A2
		nop	1
	;; condjump to .L872 occurs
.L873:
		add	.s1	-1, A2, A2
	||	lddw	.d1t1	*++A16[1], A21:A20
	[A2]	b	.s1	.L873
		nop	3
		stdw	.d1t1	A21:A20, *++A19[1]
		nop	1
	;; condjump to .L873 occurs
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
	||[!A0]	b	.s1	.L868
	||	add	.l1x	A18, B4, A29
		cmpltu	.l2x	2, A26, B1
	||[!A1]	mv	.d1	A18, A7
	||	and	.s1	2, A27, A2
		cmpeq	.l2x	3, A28, B2
	||	add	.d1	A4, A7, A31
		nop	3
	;; condjump to .L868 occurs
	[!B0]	b	.s1	.L875
		nop	5
	;; condjump to .L875 occurs
	[!B1]	b	.s1	.L875
		nop	5
	;; condjump to .L875 occurs
	[!A1]	b	.s1	.L876
	||[A1]	ldb	.d1t1	*A29, A30
		nop	4
	[A1]	stb	.d1t1	A30, *A24
	;; condjump to .L876 occurs
	[!A2]	b	.s1	.L876
	||[A2]	ldb	.d1t1	*A25, A3
	||[A2]	add	.l1	2, A18, A7
		add	.d1x	A7, B4, A5
	||	add	.s1	A4, A7, A9
		nop	3
	[A2]	stb	.d1t1	A3, *A31
	;; condjump to .L876 occurs
	[!B2]	b	.s1	.L876
	||[B2]	ldb	.d1t1	*A5, A8
	||[B2]	add	.l1	3, A18, A7
		nop	4
	[B2]	stb	.d1t1	A8, *A9
	;; condjump to .L876 occurs
.L876:
		sub	.d1	A21, A28, A16
	||	or	.s1	A28, A18, A18
		and	.d1	-4, A16, A19
	||	add	.l1	A4, A18, A17
	||	add	.s1x	A18, B4, A20
		sub	.d1	A19, 4, A22
		shru	.s1	A22, 2, A21
		add	.d1	A21, 1, A0
.L878:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A20++[1], A23
	[A0]	b	.s1	.L878
		nop	3
		stw	.d1t1	A23, *A17++[1]
		nop	1
	;; condjump to .L878 occurs
		cmpeq	.l1	A16, A19, A0
	||	add	.s1	A19, A7, A24
	[A0]	b	.s1	.L868
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
	;; condjump to .L868 occurs
	[!A1]	b	.s1	.L868
	||	stb	.d1t1	A26, *A28
	[A1]	ldb	.d1t1	*A29, A30
		nop	4
	;; condjump to .L868 occurs
	[!A0]	b	.s1	.L868
	||	stb	.d1t1	A30, *A31
	[A0]	ldb	.d1t1	*A6, A5
		nop	4
	;; condjump to .L868 occurs
		stb	.d1t1	A5, *A4
.L868:
		ret	.s2	B3
		nop	5
	;; return occurs
.L894:
		mv	.d1	A6, A2
	||	mv	.l2x	A5, B4
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A5, A3, A0
	[!A2]	b	.s1	.L868
		nop	5
	;; condjump to .L868 occurs
.L882:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*--B4[1], A19
	[A0]	b	.s1	.L882
		nop	3
		stb	.d1t1	A19, *--A4[1]
		nop	1
	;; condjump to .L882 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L872:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L868
		nop	5
	;; condjump to .L868 occurs
.L875:
		sub	.d1	A18, 1, A8
	||	add	.s1x	-1, B4, A9
		add	.d1x	A8, B4, A7
	||	add	.l1	A9, A6, A18
	||	add	.s1	A4, A8, A16
		sub	.d1	A18, A7, A2
.L880:
		add	.s1	-1, A2, A2
	||	ldb	.d1t1	*++A7[1], A19
	[A2]	b	.s1	.L880
		nop	3
		stb	.d1t1	A19, *++A16[1]
		nop	1
	;; condjump to .L880 occurs
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
	[A1]	b	.s1	.L896
		nop	5
	;; condjump to .L896 occurs
		add	.d1x	A6, B4, A7
		cmpgtu	.l1	A4, A7, A5
		mv	.d1	A5, A2
	[!A2]	b	.s1	.L923
		nop	5
	;; condjump to .L923 occurs
.L896:
		sub	.d1	A0, 1, A8
	||	add	.l1x	2, B4, A16
	||[!A0]	b	.s1	.L899
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
	;; condjump to .L899 occurs
	[!B0]	b	.s1	.L900
	||	sub	.d1	A24, 4, A25
		shru	.s1	A25, 2, A26
		nop	4
	;; condjump to .L900 occurs
	[A1]	b	.s1	.L900
	||[!A1]	add	.d1	A26, 1, A0
		nop	5
	;; condjump to .L900 occurs
	[A2]	ldh	.d2t1	*B4, A5
		nop	4
	[A2]	sth	.d1t1	A5, *A4
.L902:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A23++[1], A27
	[A0]	b	.s1	.L902
		nop	3
		stw	.d1t1	A27, *A21++[1]
		nop	1
	;; condjump to .L902 occurs
		and	.d1	1, A20, A1
	||	and	.s1	-2, A20, A28
	[!A1]	b	.s1	.L899
	||	add	.d1	A28, A9, A9
		shl	.s1	A9, 1, A29
		add	.d1x	A29, B4, A30
	||	add	.s1	A4, A29, A3
	[A1]	ldh	.d1t1	*A30, A31
		nop	4
	;; condjump to .L899 occurs
		sth	.d1t1	A31, *A3
.L899:
		and	.d1	1, A6, A0
	[!A0]	b	.s1	.L895
		nop	5
	;; condjump to .L895 occurs
.L924:
		sub	.d1	A6, 1, A6
		add	.d1x	A6, B4, A19
	||	add	.s1	A4, A6, A4
		ldb	.d1t1	*A19, A20
		nop	4
		stb	.d1t1	A20, *A4
.L895:
		ret	.s2	B3
		nop	5
	;; return occurs
.L923:
		mv	.d1	A6, A0
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A7, A3, A1
	[!A0]	b	.s1	.L895
		nop	5
	;; condjump to .L895 occurs
.L907:
		add	.s1	-1, A1, A1
	||	ldb	.d1t1	*--A7[1], A21
	[A1]	b	.s1	.L907
		nop	3
		stb	.d1t1	A21, *--A4[1]
		nop	1
	;; condjump to .L907 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L900:
		shl	.s1	A0, 1, A7
	||	add	.l1x	-2, B4, A5
	||	sub	.d1	A4, 2, A16
		sub	.d1	A7, 2, A8
		shru	.s1	A8, 1, A17
		add	.d1	A17, 1, A2
.L904:
		add	.s1	-1, A2, A2
	||	ldh	.d1t1	*++A5[1], A21
	[A2]	b	.s1	.L904
		nop	3
		sth	.d1t1	A21, *++A16[1]
		nop	1
	;; condjump to .L904 occurs
		and	.d1	1, A6, A0
	[!A0]	b	.s1	.L895
		nop	5
	;; condjump to .L895 occurs
		b	.s1	.L924
		nop	5
	;; jump to .L924 occurs
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
		mv	.l1x	B4, A3
	||	shru	.s1	A6, 2, A0
	||	and	.d1	-4, A6, A18
		cmpgtu	.l1	A3, A4, A1
	[A1]	b	.s1	.L926
		nop	5
	;; condjump to .L926 occurs
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[!A1]	b	.s1	.L951
		nop	5
	;; condjump to .L951 occurs
.L926:
	[!A0]	b	.s1	.L929
	||	add	.l1x	-4, B4, A16
	||	sub	.d1	A4, 4, A19
		shl	.s1	A0, 2, A9
		sub	.d1	A9, 4, A17
		shru	.s1	A17, 2, A20
		add	.d1	A20, 1, A2
		nop	1
	;; condjump to .L929 occurs
.L930:
		add	.s1	-1, A2, A2
	||	ldw	.d1t1	*++A16[1], A20
	[A2]	b	.s1	.L930
		nop	3
		stw	.d1t1	A20, *++A19[1]
		nop	1
	;; condjump to .L930 occurs
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
	||[!A0]	b	.s1	.L925
	||	add	.l1x	A18, B4, A29
		cmpltu	.l2x	2, A26, B1
	||[!A1]	mv	.d1	A18, A7
	||	and	.s1	2, A27, A2
		cmpeq	.l2x	3, A28, B2
	||	add	.d1	A4, A7, A31
		nop	3
	;; condjump to .L925 occurs
	[!B0]	b	.s1	.L932
		nop	5
	;; condjump to .L932 occurs
	[!B1]	b	.s1	.L932
		nop	5
	;; condjump to .L932 occurs
	[!A1]	b	.s1	.L933
	||[A1]	ldb	.d1t1	*A29, A30
		nop	4
	[A1]	stb	.d1t1	A30, *A24
	;; condjump to .L933 occurs
	[!A2]	b	.s1	.L933
	||[A2]	ldb	.d1t1	*A25, A3
	||[A2]	add	.l1	2, A18, A7
		add	.d1x	A7, B4, A5
	||	add	.s1	A4, A7, A9
		nop	3
	[A2]	stb	.d1t1	A3, *A31
	;; condjump to .L933 occurs
	[!B2]	b	.s1	.L933
	||[B2]	ldb	.d1t1	*A5, A8
	||[B2]	add	.l1	3, A18, A7
		nop	4
	[B2]	stb	.d1t1	A8, *A9
	;; condjump to .L933 occurs
.L933:
		sub	.d1	A22, A28, A16
	||	or	.s1	A28, A18, A18
		and	.d1	-4, A16, A19
	||	add	.l1	A4, A18, A17
	||	add	.s1x	A18, B4, A20
		sub	.d1	A19, 4, A21
		shru	.s1	A21, 2, A22
		add	.d1	A22, 1, A0
.L935:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A20++[1], A23
	[A0]	b	.s1	.L935
		nop	3
		stw	.d1t1	A23, *A17++[1]
		nop	1
	;; condjump to .L935 occurs
		cmpeq	.l1	A16, A19, A0
	||	add	.s1	A19, A7, A24
	[A0]	b	.s1	.L925
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
	;; condjump to .L925 occurs
	[!A1]	b	.s1	.L925
	||	stb	.d1t1	A26, *A28
	[A1]	ldb	.d1t1	*A29, A30
		nop	4
	;; condjump to .L925 occurs
	[!A0]	b	.s1	.L925
	||	stb	.d1t1	A30, *A31
	[A0]	ldb	.d1t1	*A6, A5
		nop	4
	;; condjump to .L925 occurs
		stb	.d1t1	A5, *A4
.L925:
		ret	.s2	B3
		nop	5
	;; return occurs
.L951:
		mv	.d1	A6, A2
	||	mv	.l2x	A5, B4
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A5, A3, A0
	[!A2]	b	.s1	.L925
		nop	5
	;; condjump to .L925 occurs
.L939:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*--B4[1], A19
	[A0]	b	.s1	.L939
		nop	3
		stb	.d1t1	A19, *--A4[1]
		nop	1
	;; condjump to .L939 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L929:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L925
		nop	5
	;; condjump to .L925 occurs
.L932:
		sub	.d1	A18, 1, A8
	||	add	.s1x	-1, B4, A9
		add	.d1x	A8, B4, A7
	||	add	.l1	A9, A6, A18
	||	add	.s1	A4, A8, A16
		sub	.d1	A18, A7, A2
.L937:
		add	.s1	-1, A2, A2
	||	ldb	.d1t1	*++A7[1], A19
	[A2]	b	.s1	.L937
		nop	3
		stb	.d1t1	A19, *++A16[1]
		nop	1
	;; condjump to .L937 occurs
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
		addkpc	.s2	.L954, B3, 0
		nop	4
.L954:
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
		ret	.s2	B3
	||	intdpu	.l1	A4,A5:A4
		nop	5
	;; return occurs
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.type	__uitof, @function
__uitof:
		ret	.s2	B3
	||	intspu	.l1	A4,A4
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
	||	addkpc	.s2	.L961, B3, 0
	;; call to (__c6xabi_fltulld) occurs, with return value
		nop	4
.L961:
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
	||	addkpc	.s2	.L964, B3, 0
	;; call to (__c6xabi_fltullf) occurs, with return value
		nop	4
.L964:
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
		addkpc	.s2	.L967, B3, 0
		nop	4
.L967:
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
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	0, A4
	[!A1]	shr	.s1	A0, 14, A4
		mv	.d1	A4, A2
	||	shr	.s1	A0, 13, A1
		nop	3
	;; condjump to .L968 occurs
	[A2]	b	.s1	.L968
		nop	5
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	2, A4
		shr	.s1	A0, 12, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	3, A4
		shr	.s1	A0, 11, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	4, A4
		shr	.s1	A0, 10, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	5, A4
		shr	.s1	A0, 9, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	6, A4
		shr	.s1	A0, 8, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	7, A4
		shr	.s1	A0, 7, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	8, A4
		shr	.s1	A0, 6, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	9, A4
		shr	.s1	A0, 5, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	10, A4
		shr	.s1	A0, 4, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	11, A4
		shr	.s1	A0, 3, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	12, A4
		shr	.s1	A0, 2, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	13, A4
		shr	.s1	A0, 1, A1
		nop	4
	;; condjump to .L968 occurs
	[A1]	b	.s1	.L968
	||[A1]	mvk	.d1	14, A4
		nop	5
	;; condjump to .L968 occurs
	[A0]	mvk	.d1	15, A4
	||[!A0]	mvk	.s1	16, A4
.L968:
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
	[A0]	b	.s1	.L988
	||[A0]	mvk	.d1	0, A4
		and	.d1	2, A4, A1
	||	mvk	.s1	32, A5
		mvk	.s1	64, A6
		mvk	.s1	128, A7
		mvk	.s1	256, A8
		mvk	.s1	512, A9
	;; condjump to .L988 occurs
	[A1]	b	.s1	.L988
	||[A1]	mvk	.d1	1, A4
		and	.d1	4, A4, A2
	||	mvk	.s1	1024, A16
		mvk	.s1	2048, A17
		mvk	.s1	4096, A18
		mvk	.s1	8192, A19
		mvk	.s1	16384, A20
	;; condjump to .L988 occurs
	[A2]	b	.s1	.L988
	||[A2]	mvk	.d1	2, A4
		and	.d1	8, A4, A0
		nop	4
	;; condjump to .L988 occurs
	[A0]	b	.s1	.L988
	||[A0]	mvk	.d1	3, A4
		and	.d1	A3, A4, A1
		nop	4
	;; condjump to .L988 occurs
	[A1]	b	.s1	.L988
	||[A1]	mvk	.d1	4, A4
		and	.d1	A5, A4, A2
		nop	4
	;; condjump to .L988 occurs
	[A2]	b	.s1	.L988
	||[A2]	mvk	.d1	5, A4
		and	.d1	A6, A4, A0
		nop	4
	;; condjump to .L988 occurs
	[A0]	b	.s1	.L988
	||[A0]	mvk	.d1	6, A4
		and	.d1	A7, A4, A1
		nop	4
	;; condjump to .L988 occurs
	[A1]	b	.s1	.L988
	||[A1]	mvk	.d1	7, A4
		and	.d1	A8, A4, A2
		nop	4
	;; condjump to .L988 occurs
	[A2]	b	.s1	.L988
	||[A2]	mvk	.d1	8, A4
		and	.d1	A9, A4, A0
		nop	4
	;; condjump to .L988 occurs
	[A0]	b	.s1	.L988
	||[A0]	mvk	.d1	9, A4
		and	.d1	A16, A4, A1
		nop	4
	;; condjump to .L988 occurs
	[A1]	b	.s1	.L988
	||[A1]	mvk	.d1	10, A4
		and	.d1	A17, A4, A2
		nop	4
	;; condjump to .L988 occurs
	[A2]	b	.s1	.L988
	||[A2]	mvk	.d1	11, A4
		and	.d1	A18, A4, A0
		nop	4
	;; condjump to .L988 occurs
	[A0]	b	.s1	.L988
	||[A0]	mvk	.d1	12, A4
		and	.d1	A19, A4, A1
		nop	4
	;; condjump to .L988 occurs
	[A1]	mvk	.d1	13, A4
	||[A1]	b	.s1	.L988
		and	.d1	A20, A4, A2
		nop	4
	;; condjump to .L988 occurs
	[A2]	b	.s1	.L988
	||[A2]	mvk	.d1	14, A4
	[!A2]	extu	.s1	A4, 16, 16, A4
	[!A2]	shr	.s1	A4, 15, A4
		mv	.d1	A4, A0
		nop	2
	;; condjump to .L988 occurs
	[A0]	mvk	.d1	15, A4
	||[!A0]	mvk	.s1	16, A4
.L988:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
		mvk	.d1	0, A3
		mvklh	.s1	18176, A3
		cmpgtsp	.s1	A4, A3, A0
	[!A0]	cmpeqsp	.s1	A4, A3, A0
	[A0]	b	.s1	.L1017
	||[!A0]	sptrunc	.l1	A4,A4
	||[!A0]	ret	.s2	B3
		nop	5
	;; condjump to .L1017 occurs
	;; return occurs
.L1017:
		subsp	.l1	A4, A3, A4
	||	mvk	.s1	-32768, A5
		mvklh	.s1	0, A5
		nop	1
		ret	.s2	B3
		sptrunc	.l1	A4,A6
		nop	3
		add	.d1	A6, A5, A4
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
	[!A0]	b	.s1	.L1022
		nop	5
	;; condjump to .L1022 occurs
.L1024:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L1024
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L1024 occurs
.L1022:
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
	[!A0]	b	.s1	.L1029
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1029 occurs
	[!A1]	b	.s1	.L1029
		nop	5
	;; condjump to .L1029 occurs
.L1031:
		and	.d1x	1, B4, A5
	||	shru	.s2	B4, 1, B4
		neg	.l1	A5, A6
		mv	.l1x	B4, A2
	||	and	.d1	A3, A6, A7
	||	shl	.s1	A3, 1, A3
	[A2]	b	.s1	.L1031
	||	add	.d1	A4, A7, A4
		nop	5
	;; condjump to .L1031 occurs
.L1029:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
		mv	.s1x	B4, A3
	||	mv	.d1	A4, A9
		cmpltu	.l1	A3, A4, A21
		mv	.d1	A21, A1
	[!A1]	b	.s1	.L1059
	||[A1]	mvk	.d1	1, A21
		nop	5
	;; condjump to .L1059 occurs
.L1038:
		cmpgt	.l1x	0, B4, A2
	[A2]	b	.s1	.L1042
	||[!A2]	shl	.s2	B4, 1, B4
	[!A2]	shl	.s1	A21, 1, A21
		mv	.s1x	B4, A5
	||	cmpeq	.l1	0, A21, A8
		cmpltu	.l1	A5, A9, A7
		cmpeq	.l1	0, A8, A16
		and	.d1	A16, A7, A4
	;; condjump to .L1042 occurs
		mv	.d1	A4, A0
	[A0]	b	.s1	.L1038
		nop	5
	;; condjump to .L1038 occurs
		mv	.d1	A21, A1
	[!A1]	b	.s1	.L1043
	||[!A1]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1043 occurs
.L1042:
		mvk	.d1	0, A4
.L1048:
		mv	.l1x	B4, A17
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A17, A9, A19
	||	sub	.s1	A9, A17, A18
		xor	.d1	1, A19, A20
	||	mv	.s1	A19, A2
		mv	.d1	A20, A0
	||[!A2]	mv	.s1	A18, A9
	[A0]	mv	.l1	A21, A19
	||	shru	.s1	A21, 1, A21
	||[!A0]	mvk	.d1	0, A19
		mv	.d1	A21, A1
	||	or	.s1	A19, A4, A4
	[A1]	b	.s1	.L1048
		nop	5
	;; condjump to .L1048 occurs
.L1043:
		ret	.s2	B3
	||	mv	.d1	A6, A2
	[A2]	mv	.d1	A9, A4
		nop	4
	;; return occurs
.L1059:
		ret	.s2	B3
	||	cmpgtu	.l1	A3, A9, A1
	||	sub	.l2x	A9, B4, B4
	||	mv	.s1	A6, A2
		xor	.d1	1, A1, A4
	[!A1]	mv	.l1x	B4, A9
	[A2]	mv	.d1	A9, A4
		nop	2
	;; return occurs
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
		ret	.s2	B3
	||	cmpltsp	.s1x	A4, B4, A0
	[!A0]	cmpgtsp	.s1x	A4, B4, A4
	||[A0]	mvk	.d1	-1, A4
		nop	4
	;; return occurs
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
		ret	.s2	B3
	||	cmpltdp	.s1x	A5:A4, B5:B4, A0
		nop	1
	[!A0]	cmpgtdp	.s1x	A5:A4, B5:B4, A4
	||[A0]	mvk	.l1	-1, A4
		nop	3
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
	||[A0]	b	.s1	.L1076
	||[A0]	mvk	.d1	1, A2
	[!A0]	mvk	.d1	0, A2
		mv	.l1x	B4, A1
	[!A1]	mvk	.d1	0, A4
		nop	2
	;; condjump to .L1076 occurs
	[!A1]	b	.s1	.L1074
		nop	5
	;; condjump to .L1074 occurs
.L1076:
		mvk	.d1	1, A6
	||	mvk	.l1	0, A4
	||	mvk	.s1	32, A8
.L1078:
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
	[A0]	b	.s1	.L1078
		nop	5
	;; condjump to .L1078 occurs
	[A2]	neg	.l1	A4, A4
.L1074:
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
	||[A0]	mvk	.d1	0, A3
	||[A0]	mvk	.l1	1, A1
	[!A0]	mvk	.d1	1, A3
	||[!A0]	mvk	.l1	0, A1
	||	mv	.s1x	B4, A19
	[A2]	mv	.d1	A3, A1
	||	cmpltu	.l1	A19, A4, A3
	||	mv	.s1	A4, A7
		mv	.d1	A3, A2
	[!A2]	b	.s1	.L1112
	||[A2]	mvk	.d1	1, A3
		nop	5
	;; condjump to .L1112 occurs
.L1089:
		shl	.s1	A3, 1, A3
		shl	.s1	A19, 1, A19
	||	cmpeq	.l1	0, A3, A6
		cmpltu	.l1	A19, A4, A8
		cmpeq	.l1	0, A6, A9
		and	.d1	A9, A8, A2
	[A2]	b	.s1	.L1089
		nop	5
	;; condjump to .L1089 occurs
		mv	.s1	A3, A2
	||	mvk	.d1	0, A4
	[!A2]	b	.s1	.L1092
		nop	5
	;; condjump to .L1092 occurs
.L1091:
		cmpgtu	.l1	A19, A7, A17
	||	sub	.d1	A7, A19, A16
	||	shru	.s1	A19, 1, A19
		mv	.d1	A17, A2
	||	xor	.s1	1, A17, A18
	[!A2]	mv	.d1	A16, A7
	||	mv	.s1	A18, A2
	[A2]	mv	.l1	A3, A17
	||	shru	.s1	A3, 1, A3
	||[!A2]	mvk	.d1	0, A17
		mv	.d1	A3, A0
	||	or	.s1	A17, A4, A4
	[A0]	b	.s1	.L1091
		nop	5
	;; condjump to .L1091 occurs
.L1092:
		ret	.s2	B3
	||[A1]	neg	.l1	A4, A4
		nop	5
	;; return occurs
.L1112:
		ret	.s2	B3
	||	cmpgtu	.l1	A19, A4, A4
		cmpeq	.l1	0, A4, A4
	[A1]	neg	.l1	A4, A4
		nop	3
	;; return occurs
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
		shr	.s1x	B4, 31, A3
	||	cmpgt	.l1	0, A4, A0
		xor	.l1x	A3, B4, A5
	||[A0]	neg	.s1	A4, A4
	||[A0]	mvk	.d1	1, A1
		sub	.l1	A5, A3, A18
	||	mv	.s1	A4, A7
	||[!A0]	mvk	.d1	0, A1
		cmpltu	.l1	A18, A4, A17
		mv	.d1	A17, A2
	[!A2]	b	.s1	.L1138
	||[A2]	mvk	.d1	1, A17
		nop	5
	;; condjump to .L1138 occurs
.L1115:
		shl	.s1	A17, 1, A17
		shl	.s1	A18, 1, A18
	||	cmpeq	.l1	0, A17, A6
		cmpltu	.l1	A18, A4, A8
		cmpeq	.l1	0, A6, A9
		and	.d1	A9, A8, A2
	[A2]	b	.s1	.L1115
		nop	5
	;; condjump to .L1115 occurs
		mv	.d1	A17, A2
	[!A2]	b	.s1	.L1118
		nop	5
	;; condjump to .L1118 occurs
.L1117:
		shru	.s1	A17, 1, A17
	||	sub	.d1	A7, A18, A16
	||	cmpgtu	.l1	A18, A7, A2
		mv	.d1	A17, A0
	||[!A2]	mv	.l1	A16, A7
	||	shru	.s1	A18, 1, A18
	[A0]	b	.s1	.L1117
		nop	5
	;; condjump to .L1117 occurs
		mv	.d1	A7, A4
.L1118:
		ret	.s2	B3
	||[A1]	neg	.l1	A4, A4
		nop	5
	;; return occurs
.L1138:
		b	.s1	.L1118
	||	sub	.d1	A4, A18, A7
	||	cmpgtu	.l1	A18, A4, A0
	[A0]	mv	.d1	A4, A7
		mv	.d1	A7, A4
		nop	3
	;; jump to .L1118 occurs
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
		mv	.l1x	B4, A3
	||	extu	.s1	A4, 16, 16, A20
		mv	.l1x	B4, A5
	||	extu	.s1	A3, 16, 16, A3
		ext	.s1	A5, 16, 16, A7
	||	cmpgtu	.l1	A20, A3, A1
		cmpgt	.l1	0, A7, A2
	||[!A1]	b	.s1	.L1263
	||[A1]	mvk	.d1	1, A3
		nop	5
	;; condjump to .L1263 occurs
	[A2]	b	.s1	.L1264
		nop	5
	;; condjump to .L1264 occurs
.L1145:
		shl	.s1	A3, 1, A21
		shl	.s1x	B4, 1, A22
		extu	.s1	A21, 16, 16, A23
		extu	.s1	A22, 16, 16, A16
	||	cmpeq	.l1	0, A23, A9
		cmpeq	.l1	0, A9, A25
	||	mv	.s1	A21, A9
		cmpltu	.l1	A16, A20, A24
		and	.d1	A25, A24, A1
	[!A1]	b	.s1	.L1144
	||[A1]	mv	.l2x	A22, B4
	||[A1]	mv	.d1	A21, A3
		nop	1
		mv	.l1x	B4, A5
		ext	.s1	A5, 16, 16, A7
		cmpgt	.l1	0, A7, A2
		nop	1
	;; condjump to .L1144 occurs
	[!A2]	b	.s1	.L1145
		nop	5
	;; condjump to .L1145 occurs
.L1264:
		extu	.s1	A5, 16, 16, A17
	||	sub	.l2x	A4, B4, B5
		cmpgtu	.l1	A17, A20, A1
	||	extu	.s1	A3, 16, 16, A18
	[!A1]	mv	.s1x	B5, A4
	||	cmpgtu	.l1	A17, A20, A1
	||	shru	.s2x	A17, 1, B6
	[!A1]	mv	.l1	A3, A9
	||[A1]	mvk	.d1	0, A9
	||	shru	.s1	A18, 1, A1
	[!A1]	b	.s1	.L1147
	||	mv	.d1	A9, A16
	||	mv	.l1	A1, A19
		nop	5
	;; condjump to .L1147 occurs
.L1215:
		mv	.l1x	B6, A28
	||	extu	.s1	A4, 16, 16, A30
	||	sub	.l2x	A4, B6, B7
		extu	.s1	A28, 16, 16, A29
		cmpltu	.l1	A30, A29, A1
	||	shru	.s1	A18, 2, A5
	[A1]	mv	.l2x	A4, B7
	||	xor	.d1	1, A1, A31
	||	mv	.l1	A5, A1
	||	shru	.s1	A17, 2, A7
	[!A1]	b	.s1	.L1147
	||	mv	.d1	A31, A0
		mv	.l1x	B7, A4
	||[!A0]	mvk	.d1	0, A19
	||	shru	.s1	A18, 3, A21
		or	.d1	A16, A19, A3
	||	extu	.s1	A4, 16, 16, A16
	||	sub	.l1x	B7, A7, A8
		mv	.d1	A3, A9
	||	cmpgtu	.l1	A7, A16, A1
	||	shru	.s1	A17, 3, A22
	[!A1]	mv	.l2x	A8, B7
	||	xor	.d1	1, A1, A19
	||	mv	.l1	A21, A1
	||	shru	.s1	A18, 4, A27
		mv	.d1	A19, A2
	||	shru	.s1	A17, 4, A28
	;; condjump to .L1147 occurs
	[!A1]	b	.s1	.L1147
	||	mv	.l1x	B7, A4
	||[!A2]	mvk	.d1	0, A5
		extu	.s1	A4, 16, 16, A24
	||	sub	.l1x	B7, A22, A23
	||	or	.d1	A5, A3, A20
		mv	.d1	A20, A9
	||	cmpgtu	.l1	A22, A24, A1
	||	shru	.s1	A18, 5, A5
	[!A1]	mv	.l2x	A23, B7
	||	xor	.d1	1, A1, A25
	||	mv	.l1	A27, A1
	||	shru	.s1	A17, 5, A7
		mv	.d1	A25, A0
	||	shru	.s1	A18, 6, A22
	[!A0]	mvk	.d1	0, A21
	||	sub	.l1x	B7, A28, A29
	||	shru	.s1	A17, 6, A23
	;; condjump to .L1147 occurs
	[!A1]	b	.s1	.L1147
	||	mv	.l1x	B7, A4
	||	or	.d1	A21, A20, A26
		mv	.d1	A26, A9
	||	extu	.s1	A4, 16, 16, A31
		cmpgtu	.l1	A28, A31, A1
	||	shru	.s1	A18, 7, A28
	[!A1]	mv	.l2x	A29, B7
	||	xor	.d1	1, A1, A3
	||	mv	.l1	A5, A1
	||	shru	.s1	A17, 7, A29
		mv	.d1	A3, A2
	||	shru	.s1	A17, 9, A24
		sub	.s1x	B7, A7, A19
	||[!A2]	mvk	.d1	0, A27
	;; condjump to .L1147 occurs
		mv	.l1x	B7, A4
	||[!A1]	b	.s1	.L1147
	||	or	.d1	A27, A26, A8
		mv	.d1	A8, A9
	||	extu	.s1	A4, 16, 16, A16
		cmpgtu	.l1	A7, A16, A1
	||	shru	.s1	A17, 8, A7
	[!A1]	mv	.l2x	A19, B7
	||	xor	.d1	1, A1, A20
	||	mv	.s1	A22, A1
		mv	.d1	A20, A0
	[!A0]	mvk	.d1	0, A5
	;; condjump to .L1147 occurs
	[!A1]	b	.s1	.L1147
	||	mv	.l1x	B7, A4
	||	or	.d1	A5, A8, A21
		mv	.d1	A21, A9
	||	extu	.s1	A4, 16, 16, A25
	[A1]	sub	.s1x	B7, A23, A9
	||	cmpgtu	.l1	A23, A25, A1
		xor	.d1	1, A1, A26
	||	shru	.s1	A18, 8, A5
	[!A1]	mv	.l2x	A9, B7
	||	mv	.d1	A28, A1
	||	mv	.l1	A26, A2
	||	shru	.s1	A18, 9, A23
	[!A2]	mvk	.d1	0, A22
	||	shru	.s1	A17, 12, A25
	;; condjump to .L1147 occurs
	[!A1]	b	.s1	.L1147
	||	mv	.l1x	B7, A4
	||	or	.d1	A22, A21, A27
		mv	.d1	A27, A9
	||	extu	.s1	A4, 16, 16, A3
	||	sub	.l1x	B7, A29, A30
		cmpgtu	.l1	A29, A3, A1
	||	shru	.s1	A18, 10, A29
	[!A1]	mv	.l2x	A30, B7
	||	xor	.d1	1, A1, A8
	||	mv	.l1	A5, A1
	||	shru	.s1	A17, 10, A30
		mv	.d1	A8, A0
		sub	.s1x	B7, A7, A20
	||[!A0]	mvk	.d1	0, A28
	;; condjump to .L1147 occurs
		mv	.l1x	B7, A4
	||[!A1]	b	.s1	.L1147
	||	or	.d1	A28, A27, A19
		mv	.d1	A19, A9
	||	extu	.s1	A4, 16, 16, A16
		cmpgtu	.l1	A7, A16, A1
	||	shru	.s1	A17, 11, A7
	[!A1]	mv	.l2x	A20, B7
	||	xor	.d1	1, A1, A21
	||	mv	.s1	A23, A1
		mv	.d1	A21, A2
	[!A2]	mvk	.d1	0, A5
	;; condjump to .L1147 occurs
	[!A1]	b	.s1	.L1147
	||	mv	.l1x	B7, A4
	||	or	.d1	A5, A19, A22
		mv	.d1	A22, A9
	||	extu	.s1	A4, 16, 16, A26
	[A1]	sub	.s1x	B7, A24, A9
	||	cmpgtu	.l1	A24, A26, A1
		xor	.d1	1, A1, A27
	||	shru	.s1	A18, 11, A5
	[!A1]	mv	.l2x	A9, B7
	||	mv	.d1	A29, A1
	||	mv	.l1	A27, A0
	||	shru	.s1	A18, 12, A24
	[!A0]	mvk	.d1	0, A23
	;; condjump to .L1147 occurs
	[!A1]	b	.s1	.L1147
	||	mv	.l1x	B7, A4
	||	or	.d1	A23, A22, A28
		mv	.d1	A28, A9
	||	extu	.s1	A4, 16, 16, A8
	||	sub	.l1x	B7, A30, A31
		cmpgtu	.l1	A30, A8, A1
	||	shru	.s1	A18, 13, A30
	[!A1]	mv	.l2x	A31, B7
	||	xor	.d1	1, A1, A19
	||	mv	.l1	A5, A1
	||	shru	.s1	A17, 13, A31
		mv	.d1	A19, A2
		sub	.s1x	B7, A7, A21
	||[!A2]	mvk	.d1	0, A29
	;; condjump to .L1147 occurs
		mv	.l1x	B7, A4
	||[!A1]	b	.s1	.L1147
	||	or	.d1	A29, A28, A20
		mv	.d1	A20, A9
	||	extu	.s1	A4, 16, 16, A16
		cmpgtu	.l1	A7, A16, A1
	||	shru	.s1	A17, 14, A7
	[!A1]	mv	.l2x	A21, B7
	||	xor	.d1	1, A1, A22
	||	mv	.l1	A24, A1
	||	shru	.s1	A17, 15, A17
		mv	.d1	A22, A0
	[!A0]	mvk	.d1	0, A5
	;; condjump to .L1147 occurs
	[!A1]	b	.s1	.L1147
	||	mv	.l1x	B7, A4
	||	or	.d1	A5, A20, A23
		mv	.d1	A23, A9
	||	extu	.s1	A4, 16, 16, A27
	[A1]	sub	.s1x	B7, A25, A9
	||	cmpgtu	.l1	A25, A27, A1
		xor	.d1	1, A1, A28
	||	shru	.s1	A18, 14, A5
	[!A1]	mv	.l2x	A9, B7
	||	mv	.d1	A30, A1
	||	mv	.s1	A28, A2
	[!A2]	mvk	.d1	0, A24
	;; condjump to .L1147 occurs
	[!A1]	b	.s1	.L1147
	||	mv	.l1x	B7, A4
	||	or	.d1	A24, A23, A29
		mv	.d1	A29, A9
	||	extu	.s1	A4, 16, 16, A19
	||	sub	.l1x	B7, A31, A3
		cmpgtu	.l1	A31, A19, A1
	[!A1]	mv	.l2x	A3, B7
	||	xor	.d1	1, A1, A20
	||	mv	.s1	A5, A1
		mv	.d1	A20, A0
		sub	.s1x	B7, A7, A22
	||[!A0]	mvk	.d1	0, A30
	;; condjump to .L1147 occurs
		mv	.l1x	B7, A4
	||[!A1]	b	.s1	.L1147
	||	or	.d1	A30, A29, A21
		mv	.d1	A21, A9
	||	extu	.s1	A4, 16, 16, A16
		cmpgtu	.l1	A7, A16, A1
	[!A1]	mv	.l2x	A22, B7
	||	xor	.d1	1, A1, A23
	||	shru	.s1	A18, 15, A1
		mv	.d1	A23, A2
	[!A2]	mvk	.d1	0, A5
	||	sub	.s1x	B7, A17, A18
	;; condjump to .L1147 occurs
	[!A1]	b	.s1	.L1147
	||	mv	.l1x	B7, A4
	||	or	.d1	A5, A21, A24
		mv	.d1	A24, A9
	[A1]	extu	.s1	A4, 16, 16, A9
		cmpgtu	.l1	A17, A9, A1
		xor	.d1	1, A1, A26
	||[!A1]	mv	.l2x	A18, B7
		nop	1
	;; condjump to .L1147 occurs
		mv	.s1x	B7, A4
	||	or	.d1	A26, A24, A9
.L1147:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[!A0]	mv	.d1	A9, A4
		nop	4
	;; return occurs
.L1144:
		mv	.d1	A23, A2
	||	cmpgtu	.l1	A16, A20, A1
	||	sub	.s1	A4, A22, A26
	[!A2]	b	.s1	.L1147
		mvk	.s1	32767, A27
	[A2]	b	.s1	.L1215
	||	and	.d1	A27, A3, A19
		and	.d2x	B4, A27, B6
	||	extu	.s1	A22, 16, 16, A17
		extu	.s1	A21, 16, 16, A18
		nop	1
	;; condjump to .L1147 occurs
	[!A1]	mv	.s1	A26, A4
	||	cmpgtu	.l1	A16, A20, A1
	[!A1]	mv	.s1	A21, A16
	||[A1]	mvk	.d1	0, A16
	;; jump to .L1215 occurs
.L1263:
		ret	.s2	B3
	||	sub	.l2x	A4, B4, B4
	||	cmpeq	.l1	A20, A3, A1
	||	mv	.s1	A6, A0
		cmpeq	.l1	A20, A3, A9
	[A1]	mv	.l1x	B4, A4
	[!A0]	mv	.d1	A9, A4
		nop	2
	;; return occurs
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
		mv	.s1x	B4, A3
	||	mv	.d1	A4, A9
		cmpltu	.l1	A3, A4, A21
		mv	.d1	A21, A1
	[!A1]	b	.s1	.L1287
	||[A1]	mvk	.d1	1, A21
		nop	5
	;; condjump to .L1287 occurs
.L1266:
		cmpgt	.l1x	0, B4, A2
	[A2]	b	.s1	.L1270
	||[!A2]	shl	.s2	B4, 1, B4
	[!A2]	shl	.s1	A21, 1, A21
		mv	.s1x	B4, A5
	||	cmpeq	.l1	0, A21, A8
		cmpltu	.l1	A5, A9, A7
		cmpeq	.l1	0, A8, A16
		and	.d1	A16, A7, A4
	;; condjump to .L1270 occurs
		mv	.d1	A4, A0
	[A0]	b	.s1	.L1266
		nop	5
	;; condjump to .L1266 occurs
		mv	.d1	A21, A1
	[!A1]	b	.s1	.L1271
	||[!A1]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1271 occurs
.L1270:
		mvk	.d1	0, A4
.L1276:
		mv	.l1x	B4, A17
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A17, A9, A19
	||	sub	.s1	A9, A17, A18
		xor	.d1	1, A19, A20
	||	mv	.s1	A19, A2
		mv	.d1	A20, A0
	||[!A2]	mv	.s1	A18, A9
	[A0]	mv	.l1	A21, A19
	||	shru	.s1	A21, 1, A21
	||[!A0]	mvk	.d1	0, A19
		mv	.d1	A21, A1
	||	or	.s1	A19, A4, A4
	[A1]	b	.s1	.L1276
		nop	5
	;; condjump to .L1276 occurs
.L1271:
		ret	.s2	B3
	||	mv	.d1	A6, A2
	[A2]	mv	.d1	A9, A4
		nop	4
	;; return occurs
.L1287:
		ret	.s2	B3
	||	cmpgtu	.l1	A3, A9, A1
	||	sub	.l2x	A9, B4, B4
	||	mv	.s1	A6, A2
		xor	.d1	1, A1, A4
	[!A1]	mv	.l1x	B4, A9
	[A2]	mv	.d1	A9, A4
		nop	2
	;; return occurs
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1289
		nop	5
	;; condjump to .L1289 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shl	.s1	A4, A9, A5
	||	mv	.d1	A8, A4
.L1291:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1289:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1291
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1291
		shru	.s1	A4, A3, A7
	[A2]	shl	.s1	A5, A2, A5
		shl	.s1	A4, A2, A8
	||[A2]	or	.d1	A5, A7, A5
	[A2]	mv	.d1	A8, A4
		nop	1
	;; condjump to .L1291 occurs
	;; jump to .L1291 occurs
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1296
		nop	5
	;; condjump to .L1296 occurs
		subah	.d2	B4, 16, B4
	||	shr	.s1	A5, 31, A8
		nop	1
		mv	.l1x	B4, A9
		shr	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1298:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1296:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1298
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1298
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shr	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1298 occurs
	;; jump to .L1298 occurs
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
	[A0]	b	.s1	.L1314
	||	cmplt	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1314 occurs
	[A0]	b	.s1	.L1315
		nop	5
	;; condjump to .L1315 occurs
	[A1]	b	.s1	.L1314
		nop	5
	;; condjump to .L1314 occurs
	[A2]	b	.s1	.L1315
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1315 occurs
	;; return occurs
.L1314:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1315:
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
	[A0]	b	.s1	.L1322
	||	cmplt	.l1	A3, A5, A0
	[A0]	mvk	.d1	1, A4
	||	mv	.s1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		nop	3
	;; condjump to .L1322 occurs
	[A0]	b	.s1	.L1318
		nop	5
	;; condjump to .L1318 occurs
	[A1]	b	.s1	.L1322
	||[!A1]	cmpltu	.l1	A5, A4, A4
		nop	5
	;; condjump to .L1322 occurs
.L1318:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1322:
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
	[!A1]	b	.s1	.L1328
		nop	5
	;; condjump to .L1328 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shru	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1330:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1328:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1330
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1330
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shru	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1330 occurs
	;; jump to .L1330 occurs
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
		shru	.s1	A4, 1, A9
	||	mv	.d1	A5, A3
		shl	.s1	A5, 31, A16
		mvk	.s1	21845, A8
	||	or	.d1	A9, A16, A17
		mvklh	.s1	21845, A8
		and	.d1	A8, A17, A19
	||	shru	.s1	A5, 1, A5
		sub	.d1	A4, A19, A21
	||	and	.l1	A8, A5, A18
	||	mvk	.s1	13107, A7
		sub	.d1	A3, A18, A20
	||	cmpltu	.l1	A4, A21, A22
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
	||	shru	.s1	A0, 4, A4
		add	.d1	A7, A31, A8
		shl	.s1	A8, 28, A1
		or	.d1	A4, A1, A3
	||	shru	.s1	A8, 4, A2
		addu	.l1	A3, A0, A5:A4
		add	.d1	A5, A2, A9
	||	and	.s1	A6, A4, A5
		add	.d1	A9, A8, A16
		and	.d1	A6, A16, A0
		add	.d1	A0, A5, A6
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
		and	.d1x	1, B4, A0
	||	dmv	.s1	A5, A4, A7:A6
	[!A0]	b	.s1	.L1354
		nop	5
	;; condjump to .L1354 occurs
		mvk	.d1	0, A9
	||	mv	.s1x	B4, A2
	||	mvk	.l1	0, A8
		mvklh	.s1	16368, A9
.L1351:
		mpydp	.m1	A9:A8, A7:A6, A9:A8
	||	shru	.s1	A2, 31, A3
		add	.d1	A3, A2, A4
		shr	.s1	A4, 1, A2
		nop	1
	[!A2]	b	.s1	.L1350
		nop	5
	;; condjump to .L1350 occurs
.L1352:
		mpydp	.m1	A7:A6, A7:A6, A7:A6
	||	and	.d1	1, A2, A1
	||	shru	.s1	A2, 31, A5
		add	.d1	A5, A2, A16
		nop	2
	[A1]	b	.s1	.L1351
		nop	5
	;; condjump to .L1351 occurs
		b	.s1	.L1352
		shr	.s1	A16, 1, A2
		nop	4
	;; jump to .L1352 occurs
.L1350:
		cmpgt	.l2	0, B4, B0
	||	dmv	.s1	A9, A8, A5:A4
	[B0]	b	.s1	.L1357
	||[!B0]	ret	.s2	B3
		nop	5
	;; condjump to .L1357 occurs
	;; return occurs
.L1354:
		mv	.s1x	B4, A2
	||	mvk	.d1	0, A9
	||	mvk	.l1	0, A8
		shru	.s1	A2, 31, A3
		add	.d1	A3, A2, A4
	||	mvklh	.s1	16368, A9
		shr	.s1	A4, 1, A2
	[A2]	b	.s1	.L1352
		nop	5
	;; condjump to .L1352 occurs
		b	.s1	.L1350
		nop	5
	;; jump to .L1350 occurs
.L1357:
		rcpdp	.s1	A9:A8, A19:A18
	||	mvk	.d1	0, A5
	||	mvk	.l1	0, A4
		nop	1
		mpydp	.m1	A9:A8, A19:A18, A21:A20
	||	mvklh	.s1	16384, A5
		nop	9
		subdp	.l1	A5:A4, A21:A20, A23:A22
		nop	6
		mpydp	.m1	A19:A18, A23:A22, A25:A24
		nop	9
		mpydp	.m1	A9:A8, A25:A24, A27:A26
		nop	9
		subdp	.l1	A5:A4, A27:A26, A29:A28
		nop	6
		mpydp	.m1	A25:A24, A29:A28, A31:A30
		nop	9
		mpydp	.m1	A9:A8, A31:A30, A9:A8
		nop	9
		subdp	.l1	A5:A4, A9:A8, A5:A4
		nop	6
		mpydp	.m1	A31:A30, A5:A4, A9:A8
		nop	4
		ret	.s2	B3
		nop	4
		dmv	.s1	A9, A8, A5:A4
	;; return occurs
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
		and	.d1x	1, B4, A0
	||	mv	.s1	A4, A5
	[!A0]	b	.s1	.L1364
		nop	5
	;; condjump to .L1364 occurs
		mvk	.d1	0, A4
	||	mv	.s1x	B4, A2
		mvklh	.s1	16256, A4
.L1361:
		shru	.s1	A2, 31, A3
	||	mpysp	.m1	A4, A5, A4
		add	.d1	A3, A2, A6
		shr	.s1	A6, 1, A2
	[!A2]	b	.s1	.L1360
		nop	5
	;; condjump to .L1360 occurs
.L1362:
		and	.d1	1, A2, A1
	||	mpysp	.m1	A5, A5, A5
	[A1]	b	.s1	.L1361
		nop	5
	;; condjump to .L1361 occurs
		b	.s1	.L1362
		shru	.s1	A2, 31, A7
		add	.d1	A7, A2, A8
		shr	.s1	A8, 1, A2
		nop	2
	;; jump to .L1362 occurs
.L1360:
		cmpgt	.l2	0, B4, B0
	[B0]	b	.s1	.L1367
	||[!B0]	ret	.s2	B3
		nop	5
	;; condjump to .L1367 occurs
	;; return occurs
.L1364:
		mv	.s1x	B4, A2
	||	mvk	.d1	0, A4
		shru	.s1	A2, 31, A3
		add	.d1	A3, A2, A6
	||	mvklh	.s1	16256, A4
		shr	.s1	A6, 1, A2
	[A2]	b	.s1	.L1362
		nop	5
	;; condjump to .L1362 occurs
		b	.s1	.L1360
		nop	5
	;; jump to .L1360 occurs
.L1367:
		rcpsp	.s1	A4, A9
	||	mvk	.d1	0, A16
		mpysp	.m1	A4, A9, A17
	||	mvklh	.s1	16384, A16
		nop	3
		subsp	.l1	A16, A17, A18
		nop	3
		mpysp	.m1	A9, A18, A19
		nop	3
		mpysp	.m1	A4, A19, A4
		nop	3
		subsp	.l1	A16, A4, A20
		nop	1
		ret	.s2	B3
		nop	1
		mpysp	.m1	A19, A20, A4
		nop	3
	;; return occurs
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
		mv	.l1x	B5, A3
		cmpgtu	.l1	A3, A5, A0
	[A0]	b	.s1	.L1372
	||	cmpltu	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1372 occurs
	[A0]	b	.s1	.L1373
		nop	5
	;; condjump to .L1373 occurs
	[A1]	b	.s1	.L1372
		nop	5
	;; condjump to .L1372 occurs
	[A2]	b	.s1	.L1373
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1373 occurs
	;; return occurs
.L1372:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1373:
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
	[A0]	b	.s1	.L1380
	||	cmpltu	.l1	A3, A5, A0
	[A0]	mvk	.d1	1, A4
	||	mv	.s1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		nop	3
	;; condjump to .L1380 occurs
	[A0]	b	.s1	.L1376
		nop	5
	;; condjump to .L1376 occurs
	[A1]	b	.s1	.L1380
	||[!A1]	cmpltu	.l1	A5, A4, A4
		nop	5
	;; condjump to .L1380 occurs
.L1376:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1380:
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
	.global	__c6xabi_fltullf
	.global	__c6xabi_fltulld
	.global	__c6xabi_remlli
	.global	__c6xabi_divlli
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
