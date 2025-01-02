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
	||	ldb	.d1t1	*--A16[1], A18
	[A0]	b	.s1	.L4
		nop	3
		stb	.d1t1	A18, *--A3[1]
		nop	1
	;; condjump to .L4 occurs
.L3:
		ret	.s2	B3
		nop	5
	;; return occurs
.L2:
		sub	.d1	A6, 1, A8
	||	add	.s1x	1, B4, A17
	||	cmpeq	.l1	A7, A4, A1
		mv	.d1	A6, A2
	||	sub	.l1	A4, A17, A9
	||[A1]	b	.s1	.L3
		cmpltu	.l2x	11, A8, B0
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
	||[A0]	ldb	.d2t1	*B4, A18
		nop	4
	[A0]	stb	.d1t1	A18, *A4
	;; condjump to .L15 occurs
	[!A1]	b	.s1	.L6
	||[A1]	ldb	.d2t1	*+B4(1), A19
		nop	4
	[A1]	stb	.d1t1	A19, *+A4(1)
	;; condjump to .L6 occurs
	[B2]	ldb	.d2t1	*+B4(2), A19
	||[!B2]	add	.l1x	2, B4, A17
	||[!B2]	add	.d1	A4, 2, A16
	||[!B2]	add	.s1	-2, A6, A8
	[B2]	add	.l1x	3, B4, A17
	||[B2]	add	.d1	A4, 3, A16
	||[B2]	add	.s1	-3, A6, A8
		nop	3
	[B2]	stb	.d1t1	A19, *+A4(2)
.L6:
		sub	.d1	A6, A0, A6
	||	add	.l1	A4, A0, A20
	||	add	.s1x	A0, B4, A22
		and	.d1	-4, A6, A21
		sub	.d1	A21, 4, A23
		shru	.s1	A23, 2, A24
		add	.d1	A24, 1, A2
.L10:
		add	.s1	-1, A2, A2
	||	ldnw	.d1t1	*A22++[1], A25
	[A2]	b	.s1	.L10
		nop	3
		stw	.d1t1	A25, *A20++[1]
		nop	1
	;; condjump to .L10 occurs
		cmpeq	.l1	A21, A6, A0
	||	add	.d1	A17, A21, A26
	||	sub	.s1	A8, A21, A28
	[A0]	b	.s1	.L3
	||[!A0]	ldb	.d1t1	*A26, A29
	||	add	.l1	A16, A21, A27
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
	||	mv	.d1	A6, A8
	||	sub	.l1	A6, A0, A6
		and	.d1	-4, A6, A21
	||	mv	.l1x	B4, A17
	||	mv	.s1	A4, A16
		sub	.d1	A21, 4, A23
	||	add	.l1	A4, A0, A20
	||	add	.s1x	A0, B4, A22
		shru	.s1	A23, 2, A24
		add	.d1	A24, 1, A2
		nop	1
	;; jump to .L10 occurs
.L5:
		add	.d1x	A6, B4, A7
	||	add	.s1	-1, A4, A5
		sub	.d1	A7, A3, A9
		add	.d1	A9, 1, A1
		nop	1
		mvc	.s2x	A1, ILC
		nop	3
		sploop	6
.L13:
		add	.s1	1, A3, A3
		ldb	.d1t1	*-A3(2), A18
		nop	4
	;; load to A18 occurs
		spkernel	1, 0
	||	stb	.d1t1	A18, *++A5[1]
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
		ldb	.d2t1	*++B4[1], A5
	||	sub	.d1	A1, 1, A1
		nop	4
		extu	.s1	A5, 24, 24, A4
	||	stb	.d1t1	A5, *A3++[1]
		cmpeq	.l1	A6, A4, A0
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
		ldb	.d2t1	*B4, A5
	||	mv	.d1	A4, A3
		add	.d1	A3, 1, A6
		nop	3
		ext	.s1	A5, 24, 24, A0
	||	stb	.d1t1	A5, *A4
	[!A0]	b	.s1	.L95
		nop	5
	;; condjump to .L95 occurs
.L97:
		ldb	.d2t1	*++B4[1], A7
	||	mv	.d1	A6, A4
		nop	4
		ext	.s1	A7, 24, 24, A1
	||	stb	.d1t1	A7, *A6++[1]
	[A1]	b	.s1	.L97
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
		ldb	.d1t1	*A4, A6
	||	extu	.s2	B4, 24, 24, B4
		nop	4
		ext	.s1	A6, 24, 24, A1
	[!A1]	b	.s1	.L102
		nop	5
	;; condjump to .L102 occurs
.L103:
		extu	.s1	A6, 24, 24, A5
	||	mv	.l1x	B4, A3
		cmpeq	.l1	A3, A5, A0
	[A0]	b	.s1	.L102
	||[!A0]	ldb	.d1t1	*++A4[1], A6
		nop	4
		ext	.s1	A6, 24, 24, A1
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
		ldb	.d1t1	*A3, A5
	||	mv	.l1x	B4, A6
	||	mv	.s1	A3, A4
		add	.d1	A3, 1, A3
		nop	3
		ext	.s1	A5, 24, 24, A0
		cmpeq	.l1	A6, A0, A1
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
		ldb	.d2t1	*B4, A5
		nop	3
		ext	.s1	A8, 24, 24, A7
		ext	.s1	A5, 24, 24, A6
		cmpeq	.l1	A6, A7, A0
	||	shl	.s1	A8, 24, A1
	[!A0]	b	.s1	.L128
		nop	5
	;; condjump to .L128 occurs
.L120:
	[!A1]	b	.s1	.L129
	||[A1]	ldb	.d1t1	*++A4[1], A8
	[A1]	ldb	.d2t1	*++B4[1], A5
		nop	3
		ext	.s1	A8, 24, 24, A7
	;; condjump to .L129 occurs
		ext	.s1	A5, 24, 24, A6
		cmpeq	.l1	A6, A7, A0
	||	shl	.s1	A8, 24, A1
	[A0]	b	.s1	.L120
		nop	5
	;; condjump to .L120 occurs
.L128:
		ret	.s2	B3
	||	extu	.s1	A8, 24, 24, A3
		extu	.s1	A5, 24, 24, A4
		sub	.d1	A3, A4, A4
		nop	3
	;; return occurs
.L129:
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
	[!A0]	b	.s1	.L130
	||[!A0]	mvk	.d1	0, A4
		mv	.d1	A4, A5
		nop	4
	;; condjump to .L130 occurs
.L132:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L132
		nop	5
	;; condjump to .L132 occurs
		sub	.d1	A5, A4, A4
.L130:
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
	[!A0]	b	.s1	.L137
	||[!A0]	mvk	.d1	0, A4
	[A0]	ldbu	.d1t1	*A4, A5
		nop	4
	;; condjump to .L137 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L140
	||[!A1]	ldbu	.d2t1	*B4, A7
	||[!A1]	mvk	.d1	0, A5
		nop	5
	;; condjump to .L140 occurs
.L141:
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
	[!A2]	b	.s1	.L140
	||[A2]	ldbu	.d1t1	*++A4[1], A5
		nop	4
		mv	.d1	A5, A0
	;; condjump to .L140 occurs
	[A0]	b	.s1	.L141
		nop	5
	;; condjump to .L141 occurs
		ldbu	.d1t1	*+A9(1), A7
	||	mvk	.l1	0, A5
		nop	4
.L140:
		sub	.d1	A5, A7, A4
.L137:
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
	||[!A0]	b	.s1	.L147
		shru	.s1	A6, 1, A5
		add	.d1	A5, 1, A1
		nop	3
	;; condjump to .L147 occurs
		mvc	.s2x	A1, ILC
		nop	3
		sploop	2
.L149:
		ldb	.d1t2	*+A4(1), B5
		ldb	.d1t1	*A4++(2), A8
		nop	2
		add	.s2	2, B4, B4
	;; load to B5 occurs
		stb	.d2t2	B5, *-B4(2)
	;; load to A8 occurs
		spkernel	3, 0
	||	stb	.d2t1	A8, *-B4(1)
.L147:
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
	[A0]	b	.s1	.L176
		nop	5
	;; condjump to .L176 occurs
		mvk	.s1	-8232, A17
	||	mvk	.d1	7, A19
		add	.d1	A4, A17, A18
	||	mvklh	.s1	65535, A19
		cmpltu	.l1	1, A18, A1
	||	add	.s1	A4, A19, A4
	[!A1]	b	.s1	.L176
	||[A1]	ret	.s2	B3
	||	cmpltu	.l1	2, A4, A20
		cmpeq	.l1	0, A20, A4
		nop	4
	;; condjump to .L176 occurs
	;; return occurs
.L176:
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
	[!A0]	b	.s1	.L189
	||	cmpltu	.l1	A24, A23, A0
		mvklh	.s1	0, A25
		nop	4
	;; condjump to .L189 occurs
	[A1]	b	.s1	.L185
	||[A0]	mvk	.d1	0, A4
	[!A0]	and	.d1	A25, A4, A4
		cmpeq	.l1	A25, A4, A26
	[!A0]	cmpeq	.l1	0, A26, A4
		nop	2
	;; condjump to .L185 occurs
	[!A2]	b	.s1	.L185
		nop	5
	;; condjump to .L185 occurs
	[A0]	b	.s1	.L181
		nop	5
	;; condjump to .L181 occurs
.L181:
		ret	.s2	B3
		nop	5
	;; return occurs
.L185:
		ret	.s2	B3
	||	mvk	.d1	1, A4
		nop	5
	;; return occurs
.L189:
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
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		call	.s2	(__c6xabi_gtd)
	||	stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	dmv	.s1	A5, A4, A11:A10
	||	mv	.l1x	B4, A12
	||	addkpc	.s2	.L204, B3, 0
		mv	.l1x	B5, A13
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L204:
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L196
	||[!A0]	mvk	.d1	0, A4
	||[!A0]	mvk	.l1	0, A5
		nop	5
	;; condjump to .L196 occurs
		call	.s2	(__c6xabi_subd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L205, B3, 0
	;; call to (__c6xabi_subd) occurs, with return value
		nop	4
.L205:
.L196:
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
		stw	.d2t1	A11, *+B15(16)
		call	.s2	(__c6xabi_gtf)
	||	stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.d1	A4, A10
	||	mv	.s1x	B4, A11
	||	addkpc	.s2	.L214, B3, 0
	;; call to (__c6xabi_gtf) occurs, with return value
		nop	4
.L214:
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L206
	||[!A0]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L206 occurs
		callp	.s2	(__c6xabi_subf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A10, A4
.L206:
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
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t2	B14, *+B15(28)
		call	.s2	(__c6xabi_ltd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.l1x	B5, A15
	||	mvk	.l2	0, B5
		stw	.d2t1	A14, *+B15(20)
	||	addkpc	.s2	.L229, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_ltd) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.l1x	B4, A14
	||	mvk	.d2	0, B4
.L229:
		call	.s2	(__c6xabi_ltd)
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
	||	cmpeq	.l1	0, A4, A10
	||	dmv	.s1	A15, A14, A5:A4
		xor	.d1	1, A10, A10
	||	addkpc	.s2	.L230, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L230:
		cmpeq	.l1	0, A4, A4
	||	extu	.s1	A10, 24, 24, A3
		xor	.d1	1, A4, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	b	.s1	.L217
		nop	5
	;; condjump to .L217 occurs
		callp	.s2	(__c6xabi_ltd), B3
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A2
	[A2]	b	.s1	.L226
		nop	5
	;; condjump to .L226 occurs
.L216:
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
.L217:
		call	.s2	(__c6xabi_ged)
	||	mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L232, B3, 0
	;; call to (__c6xabi_ged) occurs, with return value
		nop	4
.L232:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L216
		nop	5
	;; condjump to .L216 occurs
.L226:
		ldw	.d2t2	*+B15(24), B3
	||	dmv	.s1	A15, A14, A13:A12
		dmv	.s1	A13, A12, A5:A4
	||	ldw	.d2t1	*+B15(8), A10
		ldw	.d2t1	*+B15(12), A12
		ldw	.d2t1	*+B15(16), A13
		ldw	.d2t1	*+B15(20), A14
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(28), B14
		ldw	.d2t1	*+B15(32), A15
	||	addk	.s2	32, B15
		nop	4
	;; return occurs
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(20)
		stdw	.d2t1	A11:A10, *+B15(8)
		stw	.d2t2	B14, *+B15(24)
		call	.s2	(__c6xabi_ltf)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.d1	A4, A11
		stw	.d2t1	A12, *+B15(16)
	||	addkpc	.s2	.L246, B3, 0
		mv	.l1x	B4, A12
	||	mvk	.d2	0, B4
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	3
.L246:
		call	.s2	(__c6xabi_ltf)
	||	mvk	.l2	0, B4
	||	cmpeq	.l1	0, A4, A10
	||	mv	.s1	A12, A4
		xor	.d1	1, A10, A10
	||	addkpc	.s2	.L247, B3, 0
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	4
.L247:
		cmpeq	.l1	0, A4, A4
	||	extu	.s1	A10, 24, 24, A3
		xor	.d1	1, A4, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	b	.s1	.L234
		nop	5
	;; condjump to .L234 occurs
		callp	.s2	(__c6xabi_ltf), B3
	||	mv	.d1	A11, A4
	||	mvk	.l2	0, B4
		mv	.d1	A4, A2
	[A2]	b	.s1	.L243
		nop	5
	;; condjump to .L243 occurs
.L233:
		ldw	.d2t2	*+B15(20), B3
	||	mv	.d1	A11, A4
		lddw	.d2t1	*+B15(8), A11:A10
		ldw	.d2t1	*+B15(16), A12
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
.L234:
		callp	.s2	(__c6xabi_gef), B3
	||	mv	.l2x	A12, B4
	||	mv	.d1	A11, A4
		mv	.d1	A4, A1
	[A1]	b	.s1	.L233
		nop	5
	;; condjump to .L233 occurs
.L243:
		ldw	.d2t2	*+B15(20), B3
	||	mv	.d1	A12, A11
		mv	.d1	A11, A4
	||	ldw	.d2t1	*+B15(16), A12
		lddw	.d2t1	*+B15(8), A11:A10
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
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t2	B14, *+B15(28)
		call	.s2	(__c6xabi_ltd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.l1x	B5, A15
	||	mvk	.l2	0, B5
		stw	.d2t1	A14, *+B15(20)
	||	addkpc	.s2	.L263, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_ltd) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.l1x	B4, A14
	||	mvk	.d2	0, B4
.L263:
		call	.s2	(__c6xabi_ltd)
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
	||	cmpeq	.l1	0, A4, A10
	||	dmv	.s1	A15, A14, A5:A4
		xor	.d1	1, A10, A10
	||	addkpc	.s2	.L264, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L264:
		cmpeq	.l1	0, A4, A4
	||	extu	.s1	A10, 24, 24, A3
		xor	.d1	1, A4, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	b	.s1	.L251
		nop	5
	;; condjump to .L251 occurs
		callp	.s2	(__c6xabi_ltd), B3
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A2
	[A2]	b	.s1	.L260
		nop	5
	;; condjump to .L260 occurs
.L250:
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
.L251:
		call	.s2	(__c6xabi_ged)
	||	mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L266, B3, 0
	;; call to (__c6xabi_ged) occurs, with return value
		nop	4
.L266:
		mv	.d1	A4, A1
	[A1]	b	.s1	.L250
		nop	5
	;; condjump to .L250 occurs
.L260:
		ldw	.d2t2	*+B15(24), B3
	||	dmv	.s1	A15, A14, A13:A12
		dmv	.s1	A13, A12, A5:A4
	||	ldw	.d2t1	*+B15(8), A10
		ldw	.d2t1	*+B15(12), A12
		ldw	.d2t1	*+B15(16), A13
		ldw	.d2t1	*+B15(20), A14
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(28), B14
		ldw	.d2t1	*+B15(32), A15
	||	addk	.s2	32, B15
		nop	4
	;; return occurs
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t2	B14, *+B15(28)
		call	.s2	(__c6xabi_ltd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.l1x	B5, A15
	||	mvk	.l2	0, B5
		stw	.d2t1	A14, *+B15(20)
	||	addkpc	.s2	.L280, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_ltd) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.l1x	B4, A14
	||	mvk	.d2	0, B4
.L280:
		call	.s2	(__c6xabi_ltd)
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
	||	cmpeq	.l1	0, A4, A10
	||	dmv	.s1	A15, A14, A5:A4
		xor	.d1	1, A10, A10
	||	addkpc	.s2	.L281, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L281:
		cmpeq	.l1	0, A4, A4
	||	extu	.s1	A10, 24, 24, A3
		xor	.d1	1, A4, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	b	.s1	.L268
		nop	5
	;; condjump to .L268 occurs
		callp	.s2	(__c6xabi_ltd), B3
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A2
	[A2]	b	.s1	.L267
		nop	5
	;; condjump to .L267 occurs
.L276:
		dmv	.s1	A15, A14, A13:A12
.L267:
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
.L268:
		call	.s2	(__c6xabi_led)
	||	mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L283, B3, 0
	;; call to (__c6xabi_led) occurs, with return value
		nop	4
.L283:
		mv	.d1	A4, A1
	[!A1]	b	.s1	.L276
		nop	5
	;; condjump to .L276 occurs
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
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(20)
		stdw	.d2t1	A11:A10, *+B15(8)
		stw	.d2t2	B14, *+B15(24)
		call	.s2	(__c6xabi_ltf)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.d1	A4, A11
		stw	.d2t1	A12, *+B15(16)
	||	addkpc	.s2	.L297, B3, 0
		mv	.l1x	B4, A12
	||	mvk	.d2	0, B4
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	3
.L297:
		call	.s2	(__c6xabi_ltf)
	||	mvk	.l2	0, B4
	||	cmpeq	.l1	0, A4, A10
	||	mv	.s1	A12, A4
		xor	.d1	1, A10, A10
	||	addkpc	.s2	.L298, B3, 0
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	4
.L298:
		cmpeq	.l1	0, A4, A4
	||	extu	.s1	A10, 24, 24, A3
		xor	.d1	1, A4, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	b	.s1	.L285
		nop	5
	;; condjump to .L285 occurs
		callp	.s2	(__c6xabi_ltf), B3
	||	mv	.d1	A11, A4
	||	mvk	.l2	0, B4
		mv	.d1	A4, A2
	[A2]	b	.s1	.L284
		nop	5
	;; condjump to .L284 occurs
.L293:
		mv	.d1	A12, A11
.L284:
		ldw	.d2t2	*+B15(20), B3
	||	mv	.d1	A11, A4
		lddw	.d2t1	*+B15(8), A11:A10
		ldw	.d2t1	*+B15(16), A12
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
.L285:
		callp	.s2	(__c6xabi_lef), B3
	||	mv	.l2x	A12, B4
	||	mv	.d1	A11, A4
		mv	.d1	A4, A1
	[!A1]	b	.s1	.L293
		nop	5
	;; condjump to .L293 occurs
		ldw	.d2t2	*+B15(20), B3
	||	mv	.d1	A11, A4
		lddw	.d2t1	*+B15(8), A11:A10
		ldw	.d2t1	*+B15(16), A12
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
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t2	B14, *+B15(28)
		call	.s2	(__c6xabi_ltd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.l1x	B5, A15
	||	mvk	.l2	0, B5
		stw	.d2t1	A14, *+B15(20)
	||	addkpc	.s2	.L314, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_ltd) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.l1x	B4, A14
	||	mvk	.d2	0, B4
.L314:
		call	.s2	(__c6xabi_ltd)
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
	||	cmpeq	.l1	0, A4, A10
	||	dmv	.s1	A15, A14, A5:A4
		xor	.d1	1, A10, A10
	||	addkpc	.s2	.L315, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L315:
		cmpeq	.l1	0, A4, A4
	||	extu	.s1	A10, 24, 24, A3
		xor	.d1	1, A4, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	b	.s1	.L302
		nop	5
	;; condjump to .L302 occurs
		callp	.s2	(__c6xabi_ltd), B3
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A2
	[A2]	b	.s1	.L301
		nop	5
	;; condjump to .L301 occurs
.L310:
		dmv	.s1	A15, A14, A13:A12
.L301:
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
.L302:
		call	.s2	(__c6xabi_led)
	||	mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A15, B5
	||	addkpc	.s2	.L317, B3, 0
	;; call to (__c6xabi_led) occurs, with return value
		nop	4
.L317:
		mv	.d1	A4, A1
	[!A1]	b	.s1	.L310
		nop	5
	;; condjump to .L310 occurs
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
	||[!A0]	b	.s1	.L319
	[A0]	ldw	.d2t1	*+B14($GOT(digits)), A6
		nop	3
	[!A0]	mv	.d1	A4, A5
	;; condjump to .L319 occurs
		mv	.d1	A4, A5
.L320:
		and	.d1	A7, A0, A3
	||	shru	.s1	A0, 6, A0
		add	.d1	A6, A3, A8
		ldb	.d1t1	*A8, A9
	||[A0]	b	.s1	.L320
		nop	4
		stb	.d1t1	A9, *A5++[1]
	;; condjump to .L320 occurs
.L319:
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
	[!A0]	b	.s1	.L329
	||[!A0]	stw	.d1t2	B4, *A4
	[!A0]	stw	.d1t2	B4, *+A4(4)
	||[A0]	ldw	.d2t1	*B4, A3
	[A0]	stw	.d1t2	B4, *+A4(4)
		nop	3
	;; condjump to .L329 occurs
		stw	.d1t1	A3, *A4
		stw	.d2t1	A4, *B4
		ldw	.d1t1	*A4, A1
		nop	4
	[A1]	stw	.d1t1	A4, *+A1(4)
.L329:
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
	[!A0]	b	.s1	.L348
	||	stw	.d2t2	B12, *+B15(40)
		stw	.d2t2	B3, *+B15(28)
		mv	.s2x	A6, B11
	||	mv	.d1	A4, A14
	||	mv	.d2	B4, B10
		nop	3
	;; condjump to .L348 occurs
.L350:
		call	.s2x	A15
	||	mv	.d1	A14, A4
	||	add	.s1	1, A11, A11
		mv	.l2x	A10, B4
	||	addkpc	.s2	.L364, B3, 0
		mv	.l2x	A10, B12
	||	add	.d1	A10, A12, A10
	;; indirect call occurs, with return value
		nop	3
.L364:
		mv	.s1	A4, A1
	||	cmpeq	.l1	A11, A13, A2
	[!A1]	b	.s1	.L347
		nop	5
	;; condjump to .L347 occurs
	[!A2]	b	.s1	.L350
		nop	5
	;; condjump to .L350 occurs
.L348:
		mv	.d1	A12, A0
	||	mpy32	.m1	A12, A13, A4
	||	add	.l1	1, A13, A3
	||	mv	.s1	A12, A6
	||	mv	.l2x	A14, B4
	[!A0]	b	.s1	.L347
	||	stw	.d2t1	A3, *B11
		nop	3
		add	.d2x	B10, A4, B12
		nop	1
	;; condjump to .L347 occurs
		callp	.s2	(memmove), B3
	||	mv	.l1x	B12, A4
.L347:
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
	[!A0]	b	.s1	.L367
	||	stw	.d2t2	B3, *+B15(28)
		mv	.l1x	B6, A14
		mv	.l1x	B4, A10
		nop	3
	;; condjump to .L367 occurs
.L369:
		call	.s2x	A13
	||	mv	.d1	A12, A4
	||	add	.l1	1, A11, A11
	||	mv	.s1	A10, A15
		mv	.l2x	A10, B4
	||	add	.d1	A10, A14, A10
	||	addkpc	.s2	.L379, B3, 0
	;; indirect call occurs, with return value
		nop	4
.L379:
		mv	.s1	A4, A1
	||	cmpeq	.l1x	A11, B10, A2
	[!A1]	b	.s1	.L366
		nop	5
	;; condjump to .L366 occurs
	[!A2]	b	.s1	.L369
		nop	5
	;; condjump to .L369 occurs
.L367:
		mvk	.d1	0, A15
.L366:
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
		ldb	.d1t1	*A4, A18
	||	mvk	.s1	32, A6
		mvk	.s1	32, A17
		nop	3
		ext	.s1	A18, 24, 24, A5
		sub	.d1	A5, 9, A3
	||	cmpeq	.l1	A6, A5, A8
	||	shl	.s1	A18, 24, A7
		cmpltu	.l1	4, A3, A9
		cmpeq	.l1	0, A9, A16
		or	.d1	A8, A16, A1
	[!A1]	b	.s1	.L383
		nop	5
	;; condjump to .L383 occurs
.L384:
		ldb	.d1t1	*++A4[1], A18
		nop	4
		ext	.s1	A18, 24, 24, A5
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A17, A5, A20
	||	shl	.s1	A18, 24, A7
		cmpltu	.l1	4, A19, A21
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L384
		nop	5
	;; condjump to .L384 occurs
.L383:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		cmpeq	.l1	A24, A23, A1
	||	mvk	.s1	45, A25
	[A1]	b	.s1	.L385
	||	cmpeq	.l1	A25, A23, A1
		nop	5
	;; condjump to .L385 occurs
	[A1]	b	.s1	.L386
		nop	5
	;; condjump to .L386 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B1
		cmpltu	.l1	9, A5, A2
	[A2]	b	.s1	.L394
	||[!A2]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L394 occurs
.L388:
		mvk	.d1	0, A4
.L391:
		subah	.d1	A18, 24, A18
	||	shl	.s1	A4, 2, A27
		ext	.s1	A18, 24, 24, A29
	||	ldb	.d1t1	*++A5[1], A18
	||	add	.l1	A27, A4, A28
		shl	.s1	A28, 1, A30
		sub	.d1	A30, A29, A4
		nop	2
		ext	.s1	A18, 24, 24, A31
		subah	.d1	A31, 24, A31
		nop	1
		cmpltu	.l2x	9, A31, B2
	[!B2]	b	.s1	.L391
		nop	5
	;; condjump to .L391 occurs
		ret	.s2	B3
	||[!B1]	sub	.d1	A29, A30, A4
		nop	5
	;; return occurs
.L386:
		ldb	.d1t1	*+A4(1), A18
	||	add	.s1	1, A4, A5
		nop	4
		ext	.s1	A18, 24, 24, A26
		subah	.d1	A26, 24, A26
		nop	1
		cmpltu	.l2x	9, A26, B0
	[!B0]	b	.s1	.L388
	||[!B0]	mvk	.d2	1, B1
		nop	5
	;; condjump to .L388 occurs
.L394:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L385:
		ldb	.d1t1	*+A4(1), A18
	||	add	.s1	1, A4, A5
	||	mvk	.d2	0, B1
		nop	4
		ext	.s1	A18, 24, 24, A4
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A0
	[A0]	b	.s1	.L394
	[!A0]	b	.s1	.L388
		nop	5
	;; condjump to .L394 occurs
	;; jump to .L388 occurs
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
		ldb	.d1t1	*A4, A18
	||	mvk	.s1	32, A6
		mvk	.s1	32, A17
		nop	3
		ext	.s1	A18, 24, 24, A5
		sub	.d1	A5, 9, A3
	||	cmpeq	.l1	A6, A5, A8
	||	shl	.s1	A18, 24, A7
		cmpltu	.l1	4, A3, A9
		cmpeq	.l1	0, A9, A16
		or	.d1	A8, A16, A1
	[!A1]	b	.s1	.L408
		nop	5
	;; condjump to .L408 occurs
.L409:
		ldb	.d1t1	*++A4[1], A18
		nop	4
		ext	.s1	A18, 24, 24, A5
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A17, A5, A20
	||	shl	.s1	A18, 24, A7
		cmpltu	.l1	4, A19, A21
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L409
		nop	5
	;; condjump to .L409 occurs
.L408:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		cmpeq	.l1	A24, A23, A1
	||	mvk	.s1	45, A25
	[A1]	b	.s1	.L410
	||	cmpeq	.l1	A25, A23, A1
		nop	5
	;; condjump to .L410 occurs
	[A1]	b	.s1	.L429
		nop	5
	;; condjump to .L429 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B1
		cmpltu	.l1	9, A5, A2
	[A2]	b	.s1	.L418
	||[!A2]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L418 occurs
.L412:
		mvk	.d1	0, A4
.L415:
		subah	.d1	A18, 24, A18
	||	shl	.s1	A4, 2, A27
		ext	.s1	A18, 24, 24, A29
	||	ldb	.d1t1	*++A5[1], A18
	||	add	.l1	A27, A4, A28
		shl	.s1	A28, 1, A30
		sub	.d1	A30, A29, A4
		nop	2
		ext	.s1	A18, 24, 24, A31
		subah	.d1	A31, 24, A31
		nop	1
		cmpltu	.l2x	9, A31, B2
	[!B2]	b	.s1	.L415
		nop	5
	;; condjump to .L415 occurs
		ret	.s2	B3
	||[!B1]	sub	.d1	A29, A30, A4
		nop	5
	;; return occurs
.L429:
		ldb	.d1t1	*+A4(1), A18
	||	add	.s1	1, A4, A5
		nop	4
		ext	.s1	A18, 24, 24, A26
		subah	.d1	A26, 24, A26
		nop	1
		cmpltu	.l2x	9, A26, B0
	[!B0]	b	.s1	.L412
	||[!B0]	mvk	.d2	1, B1
		nop	5
	;; condjump to .L412 occurs
.L418:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L410:
		ldb	.d1t1	*+A4(1), A18
	||	add	.s1	1, A4, A5
	||	mvk	.d2	0, B1
		nop	4
		ext	.s1	A18, 24, 24, A4
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A0
	[A0]	b	.s1	.L418
	[!A0]	b	.s1	.L412
		nop	5
	;; condjump to .L418 occurs
	;; jump to .L412 occurs
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
		ldb	.d1t1	*A4, A3
	||	mvk	.s1	32, A6
		nop	4
		ext	.s1	A3, 24, 24, A5
		sub	.d1	A5, 9, A9
	||	cmpeq	.l1	A6, A5, A16
	||	shl	.s1	A3, 24, A7
		cmpltu	.l1	4, A9, A17
		cmpeq	.l1	0, A17, A18
		or	.d1	A16, A18, A0
	[!A0]	b	.s1	.L431
	[A0]	mvk	.s1	32, A8
		nop	4
	;; condjump to .L431 occurs
.L432:
		ldb	.d1t1	*++A4[1], A3
		nop	4
		ext	.s1	A3, 24, 24, A5
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A8, A5, A20
	||	shl	.s1	A3, 24, A7
		cmpltu	.l1	4, A19, A21
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L432
		nop	5
	;; condjump to .L432 occurs
.L431:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		mvk	.s1	45, A25
	||	cmpeq	.l1	A24, A23, A2
		cmpeq	.l1	A25, A23, A0
	||[A2]	b	.s1	.L433
		nop	5
	;; condjump to .L433 occurs
	[A0]	b	.s1	.L434
		nop	5
	;; condjump to .L434 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B0
		nop	1
		cmpltu	.l2x	9, A5, B2
	[B2]	b	.s1	.L442
	||[!B2]	mv	.d1	A4, A8
		nop	5
	;; condjump to .L442 occurs
.L436:
		mvk	.d1	0, A4
	||	mvk	.l1	0, A5
.L439:
		addk	.s1	-48, A3
	||	addu	.l1	A4, A4, A1:A0
		ext	.s1	A3, 24, 24, A28
	||	ldb	.d1t1	*++A8[1], A3
	||	add	.l1	A1, A5, A27
		add	.d1	A27, A5, A29
	||	addu	.l1	A0, A0, A7:A6
	||	shr	.s1	A28, 31, A30
		add	.s1	A7, A29, A31
	||	addu	.l1	A6, A4, A1:A0
		add	.s1	A31, A29, A16
	||	addu	.l1	A0, A0, A7:A6
		add	.d1	A1, A16, A18
	||	sub	.s1	A6, A28, A4
		ext	.s1	A3, 24, 24, A9
	||	add	.d1	A18, A5, A5
	||	cmpltu	.l1	A6, A4, A23
		subah	.d1	A9, 24, A9
	||	add	.s1	A7, A5, A7
		cmpltu	.l1	9, A9, A2
	||	add	.s1	A7, A5, A19
	[!A2]	b	.s1	.L439
	||	sub	.d1	A19, A30, A22
		sub	.d1	A22, A23, A5
		nop	4
	;; condjump to .L439 occurs
	[B0]	b	.s1	.L430
		nop	5
	;; condjump to .L430 occurs
		sub	.d1	A28, A6, A4
	||	sub	.s1	A30, A19, A8
		cmpltu	.l1	A28, A4, A3
		sub	.d1	A8, A3, A5
.L430:
		ret	.s2	B3
		nop	5
	;; return occurs
.L434:
		ldb	.d1t1	*+A4(1), A3
	||	add	.s1	1, A4, A8
		nop	4
		ext	.s1	A3, 24, 24, A26
		subah	.d1	A26, 24, A26
		nop	1
		cmpltu	.l2x	9, A26, B1
	[!B1]	b	.s1	.L436
	||[!B1]	mvk	.d2	1, B0
		nop	5
	;; condjump to .L436 occurs
.L442:
		ret	.s2	B3
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; return occurs
.L433:
		ldb	.d1t1	*+A4(1), A3
	||	add	.s1	1, A4, A8
		nop	4
		ext	.s1	A3, 24, 24, A4
		subah	.d1	A4, 24, A4
		nop	1
		cmpltu	.l2x	9, A4, B0
	[B0]	b	.s1	.L442
	||	mvk	.d2	0, B0
		nop	5
	;; condjump to .L442 occurs
		b	.s1	.L436
		nop	5
	;; jump to .L436 occurs
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
.L468:
		mv	.d1	A10, A0
	[!A0]	b	.s1	.L456
		nop	5
	;; condjump to .L456 occurs
.L471:
		shru	.s2x	A10, 1, B10
	||	mv	.d1	A14, A4
	||	add	.s1	-1, A10, A10
		nop	1
		mpy32	.m1x	A12, B10, A3
		call	.s2x	A15
		addkpc	.s2	.L472, B3, 0
		nop	1
		add	.d1	A13, A3, A11
		nop	1
	;; indirect call occurs, with return value
		mv	.l2x	A11, B4
.L472:
		cmpgt	.l1	0, A4, A1
	||	mv	.d1	A4, A2
	||	mv	.s1x	B10, A5
	[A1]	b	.s1	.L460
	||[!A1]	add	.d1	A11, A12, A13
	||	sub	.l1	A10, A5, A10
		nop	5
	;; condjump to .L460 occurs
	[A2]	b	.s1	.L468
		nop	5
	;; condjump to .L468 occurs
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
.L460:
		mv	.l1x	B10, A10
		mv	.d1	A10, A0
	[A0]	b	.s1	.L471
		nop	5
	;; condjump to .L471 occurs
.L456:
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
	[!A0]	b	.s1	.L478
	||	stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B11, *+B15(40)
		stw	.d2t2	B10, *+B15(36)
		stw	.d2t2	B3, *+B15(32)
	;; condjump to .L478 occurs
		mv	.d1	A4, A15
	||	mv	.l1x	B4, A12
	||	mv	.s1	A8, A14
		mv	.s1x	B6, A11
	||	mv	.d1	A6, A10
		mv	.l1x	B8, A13
.L474:
		shr	.s2x	A10, 1, B11
	||	sub	.d1	A10, 1, A10
	||	mv	.l1	A13, A6
	||	mv	.s1	A15, A4
		mpy32	.m2x	B11, A11, B10
	||	shr	.s1	A10, 1, A10
		call	.s2x	A14
		addkpc	.s2	.L489, B3, 0
		nop	1
		add	.d2x	B10, A12, B10
		mv	.d2	B10, B4
	;; indirect call occurs, with return value
		nop	1
.L489:
		mv	.s1	A4, A1
	||	cmplt	.l1	0, A4, A2
	[!A1]	b	.s1	.L473
	||	mv	.d1	A10, A1
	||[A2]	add	.l1x	A11, B10, A12
		nop	5
	;; condjump to .L473 occurs
	[!A2]	b	.s1	.L476
		nop	5
	;; condjump to .L476 occurs
	[A1]	b	.s1	.L474
		nop	5
	;; condjump to .L474 occurs
.L478:
		mvk	.d2	0, B10
.L473:
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
.L476:
		mv	.l1x	B11, A0
	[A0]	b	.s1	.L474
	||	mv	.l1x	B11, A10
		nop	5
	;; condjump to .L474 occurs
		b	.s1	.L473
	||	mvk	.d2	0, B10
		nop	5
	;; jump to .L473 occurs
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
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
		addkpc	.s2	.L503, B3, 0
		nop	4
.L503:
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
	||	addkpc	.s2	.L508, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L508:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L509, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L509:
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
	[!A1]	b	.s1	.L514
		nop	5
	;; condjump to .L514 occurs
.L511:
		cmpeq	.l1x	A1, B4, A0
	[A0]	b	.s1	.L510
	||[!A0]	ldw	.d1t1	*++A4[1], A1
		nop	5
	;; condjump to .L510 occurs
	[A1]	b	.s1	.L511
		nop	5
	;; condjump to .L511 occurs
.L514:
		mvk	.d1	0, A4
.L510:
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
	[!A1]	b	.s1	.L519
		nop	5
	;; condjump to .L519 occurs
.L520:
	[!A0]	b	.s1	.L519
	||[A0]	ldw	.d2t1	*++B4[1], A3
	[A0]	ldw	.d1t1	*++A4[1], A0
		nop	4
	;; condjump to .L519 occurs
		cmpeq	.l1	A3, A0, A1
	[A1]	b	.s1	.L520
		nop	5
	;; condjump to .L520 occurs
.L519:
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
.L527:
		ldw	.d2t1	*B4++[1], A0
		nop	4
	[A0]	b	.s1	.L527
	||	stw	.d1t1	A0, *++A3[1]
		nop	5
	;; condjump to .L527 occurs
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
	[!A0]	b	.s1	.L531
	||[!A0]	mvk	.d1	0, A4
		mv	.d1	A4, A5
		nop	4
	;; condjump to .L531 occurs
.L533:
		ldw	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L533
		nop	5
	;; condjump to .L533 occurs
		sub	.d1	A5, A4, A4
		shr	.s1	A4, 2, A4
.L531:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L547
		nop	5
	;; condjump to .L547 occurs
.L540:
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
	[!A0]	b	.s1	.L551
		nop	5
	;; condjump to .L551 occurs
	[A2]	b	.s1	.L540
		nop	5
	;; condjump to .L540 occurs
.L547:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L551:
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
	[!A1]	b	.s1	.L559
	||[A1]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L559 occurs
.L554:
		mv	.s1	A5, A4
	||	ldw	.d1t1	*A5++[1], A3
	||	mv	.l1x	B4, A6
		sub	.d1	A1, 1, A1
		nop	3
		cmpeq	.l1	A6, A3, A2
	[A2]	b	.s1	.L552
		nop	5
	;; condjump to .L552 occurs
	[A1]	b	.s1	.L554
		nop	5
	;; condjump to .L554 occurs
.L559:
		mvk	.d1	0, A4
.L552:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L571
		nop	5
	;; condjump to .L571 occurs
.L564:
		ldw	.d2t1	*B4, A7
	||	sub	.d1	A2, 1, A2
	||	add	.s2	4, B4, B4
		ldw	.d1t1	*A4, A8
	||	add	.s1	4, A4, A4
		nop	4
		cmpeq	.l1	A7, A8, A1
	[!A1]	b	.s1	.L575
		nop	5
	;; condjump to .L575 occurs
	[A2]	b	.s1	.L564
		nop	5
	;; condjump to .L564 occurs
.L571:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L575:
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
	[!A0]	b	.s1	.L577
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	shl	.s1	A6, 2, A6
		nop	3
	;; condjump to .L577 occurs
		callp	.s2	(memcpy), B3
.L577:
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
	||[A0]	b	.s1	.L592
		nop	5
	;; condjump to .L592 occurs
	[!A1]	b	.s1	.L599
		nop	5
	;; condjump to .L599 occurs
		mv	.d1	A6, A1
	||	add	.l1	-4, A7, A16
	||	add	.d2x	B4, A7, B4
	||	add	.s1	A4, A7, A18
	[!A1]	b	.s1	.L592
		shru	.s1	A16, 2, A17
		add	.d1	A17, 1, A2
		nop	3
	;; condjump to .L592 occurs
.L589:
		sub	.d1	A2, 1, A2
	||	ldw	.d2t1	*--B4[1], A20
	[A2]	b	.s1	.L589
		nop	3
		stw	.d1t1	A20, *--A18[1]
		nop	1
	;; condjump to .L589 occurs
.L592:
		ret	.s2	B3
		nop	5
	;; return occurs
.L599:
		mv	.d1	A6, A2
	||	add	.l1	-4, A4, A9
	||	mv	.s1	A6, A0
	[!A2]	b	.s1	.L592
		nop	5
	;; condjump to .L592 occurs
.L590:
		sub	.d1	A0, 1, A0
	||	ldw	.d2t1	*B4++[1], A20
	[A0]	b	.s1	.L590
		nop	3
		stw	.d1t1	A20, *++A9[1]
		nop	1
	;; condjump to .L590 occurs
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
	[!A0]	b	.s1	.L601
		mvc	.s2x	A0, ILC
		nop	4
	;; condjump to .L601 occurs
		sploop	1
.L602:
		stw	.d1t2	B4, *A3++[1]
		spkernel	1, 0
.L601:
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
	[!A0]	b	.s1	.L610
		nop	5
	;; condjump to .L610 occurs
		mv	.d1	A6, A2
	||	add	.s1	A4, A6, A16
	||	add	.d2x	B4, A6, B5
	[!A2]	b	.s1	.L609
	||	sub	.d1	A16, A4, A0
		nop	5
	;; condjump to .L609 occurs
.L612:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A16[1], A17
	[A0]	b	.s1	.L612
		nop	3
		stb	.d2t1	A17, *--B5[1]
		nop	1
	;; condjump to .L612 occurs
.L609:
		ret	.s2	B3
		nop	5
	;; return occurs
.L610:
		sub	.d1	A6, 1, A18
	||	add	.s1	1, A4, A17
	||	cmpeq	.l1	A5, A4, A1
		mv	.d1	A6, A2
	||	sub	.l1x	B4, A17, A8
	||[A1]	b	.s1	.L609
		cmpltu	.l2x	11, A18, B0
	||	neg	.l1	A4, A16
		cmpltu	.l2x	2, A8, B1
	||[!B0]	add	.d1	A4, 1, A3
	||	and	.s1	2, A16, A1
	[B0]	mv	.d1	A17, A3
	||[!A1]	add	.s1x	1, B4, A9
		nop	2
	;; condjump to .L609 occurs
	[!A2]	b	.s1	.L609
		nop	5
	;; condjump to .L609 occurs
	[!B0]	b	.s1	.L613
		nop	5
	;; condjump to .L613 occurs
	[!B1]	b	.s1	.L613
	||[B1]	and	.d1	3, A16, A3
		mv	.d1	A3, A0
		cmpeq	.l2x	3, A3, B2
		nop	3
	;; condjump to .L613 occurs
	[!A0]	b	.s1	.L623
	||[A0]	ldb	.d1t1	*A4, A19
		nop	4
	[A0]	stb	.d2t1	A19, *B4
	;; condjump to .L623 occurs
	[!A1]	b	.s1	.L614
	||[A1]	ldb	.d1t1	*+A4(1), A20
		nop	4
	[A1]	stb	.d2t1	A20, *+B4(1)
	;; condjump to .L614 occurs
	[!B2]	b	.s1	.L614
	||[!B2]	add	.d1	A4, 2, A17
	||[!B2]	add	.l1x	2, B4, A9
	[!B2]	add	.l1	-2, A6, A18
	||[B2]	ldb	.d1t1	*+A4(2), A21
	||[B2]	add	.s1	3, A4, A17
	[B2]	add	.s1x	3, B4, A9
	||[B2]	sub	.d1	A6, 3, A18
		nop	3
	;; condjump to .L614 occurs
		stb	.d2t1	A21, *+B4(2)
.L614:
		sub	.d1	A6, A3, A6
	||	add	.l1	A4, A3, A22
	||	add	.s1x	A3, B4, A24
		and	.d1	-4, A6, A23
		sub	.d1	A23, 4, A4
		shru	.s1	A4, 2, A25
		add	.d1	A25, 1, A2
.L618:
		add	.s1	-1, A2, A2
	||	ldw	.d1t1	*A22++[1], A26
	[A2]	b	.s1	.L618
		nop	3
		stnw	.d1t1	A26, *A24++[1]
		nop	1
	;; condjump to .L618 occurs
		cmpeq	.l1	A23, A6, A0
	||	add	.d1	A17, A23, A27
	||	sub	.s1	A18, A23, A28
	[A0]	b	.s1	.L609
	||[!A0]	ldb	.d1t1	*A27, A29
	||	add	.l1	A9, A23, A9
		cmpeq	.l2x	1, A28, B0
		cmpeq	.l2x	2, A28, B1
		nop	2
	[!A0]	stb	.d1t1	A29, *A9
	;; condjump to .L609 occurs
	[B0]	b	.s1	.L609
	||[!B0]	ldb	.d1t1	*+A27(1), A30
		nop	4
	[!B0]	stb	.d1t1	A30, *+A9(1)
	;; condjump to .L609 occurs
	[B1]	b	.s1	.L609
	||[!B1]	ldb	.d1t1	*+A27(2), A31
	||[!B1]	ret	.s2	B3
		nop	4
	[!B1]	stb	.d1t1	A31, *+A9(2)
	;; condjump to .L609 occurs
	;; return occurs
.L623:
		b	.s1	.L618
	||	mv	.d1	A6, A18
	||	sub	.l1	A6, A3, A6
		and	.d1	-4, A6, A23
	||	mv	.l1	A4, A17
	||	add	.s1	A4, A3, A22
		sub	.d1	A23, 4, A4
	||	mv	.s1x	B4, A9
		shru	.s1	A4, 2, A25
	||	add	.d1x	A3, B4, A24
		add	.d1	A25, 1, A2
		nop	1
	;; jump to .L618 occurs
.L613:
		add	.d1	A4, A6, A5
	||	sub	.d2	B4, 1, B4
		sub	.d1	A5, A3, A7
		add	.d1	A7, 1, A1
		nop	1
		mvc	.s2x	A1, ILC
		nop	3
		sploop	6
.L621:
		add	.d1	A3, 1, A3
		ldb	.d1t1	*-A3(2), A17
		nop	4
	;; load to A17 occurs
		spkernel	1, 0
	||	stb	.d2t1	A17, *++B4[1]
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
.L680:
		shru	.s1	A4, A3, A5
	||	sub	.d1	A1, 1, A1
	||	add	.l1	1, A3, A3
		and	.d1	1, A5, A0
	[A0]	b	.s1	.L684
		nop	5
	;; condjump to .L684 occurs
	[A1]	b	.s1	.L680
		nop	5
	;; condjump to .L680 occurs
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L684:
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
	[!A0]	b	.s1	.L685
	||[!A0]	mvk	.d1	0, A4
	[A0]	and	.d1	1, A0, A4
		mv	.d1	A4, A1
		nop	3
	;; condjump to .L685 occurs
	[A1]	b	.s1	.L685
	||[!A1]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L685 occurs
.L687:
		shr	.s1	A0, 1, A0
	||	add	.d1	A4, 1, A4
		and	.d1	1, A0, A1
	[!A1]	b	.s1	.L687
		nop	5
	;; condjump to .L687 occurs
.L685:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
		ret	.s2	B3
	||	mvk	.d1	0, A4
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
	||	addkpc	.s2	.L701, B3, 0
	;; call to (__c6xabi_fltid) occurs, with return value
		nop	4
.L701:
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
	||	sub	.d1	A6, 1, A9
	||	mv	.s1	A6, A0
		and	.d1	3, A5, A2
	||[!A0]	b	.s1	.L703
		add	.d1	A2, 3, A3
		cmpgtu	.l1	5, A3, A1
	||	cmpeq	.l2x	3, A2, B0
	[A1]	mvk	.d1	5, A3
		cmpgtu	.l1	A3, A9, A1
		nop	1
	;; condjump to .L703 occurs
	[A1]	b	.s1	.L712
	||	and	.d1	2, A5, A1
	[!A1]	add	.l1x	1, B4, A16
		nop	4
	;; condjump to .L712 occurs
	[!A2]	b	.s1	.L713
	||[A2]	ldb	.d1t1	*A4, A17
	[A2]	ldb	.d2t1	*B4, A8
		nop	4
	;; condjump to .L713 occurs
	[!A1]	b	.s1	.L706
	||	xor	.d1	A17, A8, A18
	||[!A1]	add	.l1	1, A4, A17
	||[A1]	ldb	.d2t1	*+B4(1), A20
		stb	.d1t1	A18, *A4
	[A1]	ldb	.d1t1	*+A4(1), A19
		nop	3
	;; condjump to .L706 occurs
	[!B0]	add	.l1x	2, B4, A16
	||[!B0]	add	.d1	A4, 2, A17
	||[!B0]	add	.s1	-2, A6, A9
		xor	.s1	A19, A20, A21
	||[B0]	ldb	.d1t1	*+A4(2), A19
	||[B0]	add	.l1x	3, B4, A16
		stb	.d1t1	A21, *+A4(1)
	||[B0]	add	.l1	3, A4, A17
	||[B0]	add	.s1	-3, A6, A9
	[B0]	ldb	.d2t1	*+B4(2), A21
		nop	4
	[B0]	xor	.d1	A19, A21, A21
	[B0]	stb	.d1t1	A21, *+A4(2)
.L706:
		sub	.d1	A6, A2, A6
	||	add	.s1	A4, A2, A22
	||	add	.d2x	B4, A2, B4
		and	.d1	-4, A6, A23
		sub	.d1	A23, 4, A24
		shru	.s1	A24, 2, A25
		add	.d1	A25, 1, A2
.L710:
		ldw	.d1t1	*A22, A26
	||	add	.s1	-1, A2, A2
		ldnw	.d2t1	*B4++[1], A27
	[A2]	b	.s1	.L710
		nop	3
		xor	.d1	A26, A27, A28
		stw	.d1t1	A28, *A22++[1]
	;; condjump to .L710 occurs
		cmpeq	.l1	A6, A23, A0
	||	add	.d1	A16, A23, A29
	||	add	.s1	A17, A23, A7
	[A0]	b	.s1	.L703
	||	sub	.d1	A9, A23, A6
		mv	.l2x	A29, B4
		nop	4
	;; condjump to .L703 occurs
.L704:
		cmpeq	.l2x	1, A6, B1
	||	ldb	.d1t1	*A7, A30
	||	cmpeq	.l1	3, A6, A1
		ldb	.d2t1	*B4, A31
	||	cmpeq	.l2x	2, A6, B2
	||	cmpeq	.l1	5, A6, A2
	[B1]	b	.s1	.L703
	||[!B1]	ldb	.d1t1	*+A7(1), A3
	||	cmpeq	.l2x	4, A6, B0
	[!B1]	ldb	.d2t1	*+B4(1), A17
		nop	2
		xor	.d1	A31, A30, A5
		stb	.d1t1	A5, *A7
	;; condjump to .L703 occurs
	[B2]	b	.s1	.L703
	||	xor	.l1	A3, A17, A16
	||[!B2]	ldb	.d1t1	*+A7(2), A9
		stb	.d1t1	A16, *+A7(1)
	[!B2]	ldb	.d2t1	*+B4(2), A8
		nop	3
	;; condjump to .L703 occurs
	[A1]	b	.s1	.L703
	||[!A1]	ldb	.d1t1	*+A7(3), A19
		xor	.d1	A9, A8, A18
	||[!A1]	ldb	.d2t1	*+B4(3), A20
		stb	.d1t1	A18, *+A7(2)
		nop	3
	;; condjump to .L703 occurs
	[B0]	b	.s1	.L703
	||	xor	.l1	A19, A20, A21
	||[!B0]	ldb	.d1t1	*+A7(4), A22
		stb	.d1t1	A21, *+A7(3)
	[!B0]	ldb	.d2t1	*+B4(4), A23
		nop	3
	;; condjump to .L703 occurs
	[A2]	b	.s1	.L703
	||[!A2]	ldb	.d1t1	*+A7(5), A6
		xor	.d1	A22, A23, A24
	||[!A2]	ldb	.d2t1	*+B4(5), A25
		stb	.d1t1	A24, *+A7(4)
		nop	3
	;; condjump to .L703 occurs
		xor	.d1	A6, A25, A26
		stb	.d1t1	A26, *+A7(5)
.L703:
		ret	.s2	B3
		nop	5
	;; return occurs
.L713:
		b	.s1	.L710
	||	mv	.d1	A6, A9
	||	sub	.l1	A6, A2, A6
		and	.d1	-4, A6, A23
	||	mv	.l1x	B4, A16
	||	add	.s1	A4, A2, A22
	||	add	.d2x	B4, A2, B4
		sub	.d1	A23, 4, A24
	||	mv	.s1	A4, A17
		shru	.s1	A24, 2, A25
		add	.d1	A25, 1, A2
		nop	1
	;; jump to .L710 occurs
.L712:
		b	.s1	.L704
	||	mv	.d1	A4, A7
		nop	5
	;; jump to .L704 occurs
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
		ldb	.d1t1	*A4, A0
	||	mv	.l1	A6, A1
	||	mv	.s1	A4, A3
		nop	4
	[!A0]	b	.s1	.L736
		nop	5
	;; condjump to .L736 occurs
.L737:
		ldb	.d1t1	*++A3[1], A2
		nop	4
	[A2]	b	.s1	.L737
		nop	5
	;; condjump to .L737 occurs
.L736:
	[!A1]	b	.s1	.L738
	||[A1]	sub	.d2	B4, 1, B4
		nop	5
	;; condjump to .L738 occurs
.L739:
		ldb	.d2t1	*++B4[1], A5
	||	sub	.d1	A1, 1, A1
		nop	4
		ext	.s1	A5, 24, 24, A0
	||	stb	.d1t1	A5, *A3++[1]
	[!A0]	b	.s1	.L741
		nop	5
	;; condjump to .L741 occurs
	[A1]	b	.s1	.L739
		nop	5
	;; condjump to .L739 occurs
.L738:
		mvk	.d1	0, A6
		stb	.d1t1	A6, *A3
.L741:
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
	[!A1]	b	.s1	.L750
		nop	5
	;; condjump to .L750 occurs
.L751:
		add	.d1	A5, A4, A3
	||	sub	.d2	B4, 1, B4
		ldb	.d1t1	*A3, A1
		nop	4
	[A1]	b	.s1	.L753
		nop	5
	;; condjump to .L753 occurs
.L750:
		ret	.s2	B3
		nop	5
	;; return occurs
.L753:
		mv	.s1x	B4, A1
	||	add	.d1	A4, 1, A4
	[A1]	b	.s1	.L751
		nop	5
	;; condjump to .L751 occurs
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
	[!A0]	b	.s1	.L764
	||[A0]	sub	.d2	B4, 1, B4
		shl	.s1	A3, 24, A8
		nop	4
	;; condjump to .L764 occurs
.L760:
		mv	.l1x	B4, A6
	||	shr	.s1	A8, 24, A5
.L763:
		ldb	.d1t1	*++A6[1], A1
		nop	4
		cmpeq	.l1	A5, A1, A0
	||[!A1]	b	.s1	.L769
		nop	5
	;; condjump to .L769 occurs
	[!A0]	b	.s1	.L763
		nop	5
	;; condjump to .L763 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L769:
		ldb	.d1t1	*++A4[1], A7
		nop	4
		ext	.s1	A7, 24, 24, A2
	[A2]	b	.s1	.L760
		shl	.s1	A7, 24, A8
		nop	4
	;; condjump to .L760 occurs
.L764:
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
.L772:
		mv	.s1	A3, A6
	||	ldb	.d1t1	*A3++[1], A7
		nop	4
		shl	.s1	A7, 24, A5
		mv	.d1	A5, A1
	||	ext	.s1	A7, 24, 24, A8
	[A1]	b	.s1	.L772
	||	cmpeq	.l1x	A8, B4, A0
	[A0]	mv	.d1	A6, A4
		nop	4
	;; condjump to .L772 occurs
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
	[!A0]	b	.s1	.L786
		shl	.s1	A4, 24, A17
		nop	4
	;; condjump to .L786 occurs
.L778:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L778
		nop	5
	;; condjump to .L778 occurs
		mv	.l1x	B4, A6
		sub	.d1	A5, A6, A2
	[!A2]	b	.s1	.L786
	||[A2]	add	.d1x	A2, B4, A16
	[A2]	shr	.s1	A17, 24, A17
		nop	4
	;; condjump to .L786 occurs
.L784:
		ldb	.d1t1	*A3, A8
	||	mv	.l1	A3, A4
	||	mv	.s1	A3, A7
		add	.d1	A3, 1, A3
		nop	3
		ext	.s1	A8, 24, 24, A0
		cmpeq	.l1	A17, A0, A1
	[A1]	b	.s1	.L783
		nop	5
	;; condjump to .L783 occurs
	[A0]	b	.s1	.L784
		nop	5
	;; condjump to .L784 occurs
		mvk	.d1	0, A4
.L776:
		ret	.s2	B3
		nop	5
	;; return occurs
.L783:
		mv	.l1x	B4, A20
	||	extu	.s1	A8, 24, 24, A27
.L780:
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
	[!A2]	b	.s1	.L781
	||[A2]	ldbu	.d1t1	*++A7[1], A27
		nop	4
		mv	.d1	A27, A0
	;; condjump to .L781 occurs
	[A0]	b	.s1	.L780
		nop	5
	;; condjump to .L780 occurs
		mv	.d1	A20, A18
.L781:
		ldbu	.d1t1	*A18, A28
	||	add	.s1	1, A4, A3
		nop	4
		cmpeq	.l1	A28, A27, A1
	[A1]	b	.s1	.L776
	[!A1]	b	.s1	.L784
		nop	5
	;; condjump to .L776 occurs
	;; jump to .L784 occurs
.L786:
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
		stdw	.d2t1	A13:A12, *+B15(16)
		stw	.d2t2	B14, *+B15(32)
		call	.s2	(__c6xabi_ltd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	mv	.l1x	B4, A12
	||	mvk	.l2	0, B4
		stw	.d2t1	A14, *+B15(24)
	||	addkpc	.s2	.L802, B3, 0
		stdw	.d2t1	A11:A10, *+B15(8)
		dmv	.s1	A5, A4, A11:A10
	||	mv	.l1x	B5, A13
	||	mvk	.d2	0, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	2
.L802:
		call	.s2	(__c6xabi_gtd)
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
	||	cmpeq	.l1	0, A4, A14
	||	dmv	.s1	A13, A12, A5:A4
		xor	.d1	1, A14, A14
	||	addkpc	.s2	.L803, B3, 0
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	4
.L803:
		cmpeq	.l1	0, A4, A3
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		xor	.d1	1, A3, A4
		and	.d1	A14, A4, A0
	||	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s1	.L793
		nop	5
	;; condjump to .L793 occurs
		callp	.s2	(__c6xabi_gtd), B3
		call	.s2	(__c6xabi_ltd)
	||	cmpeq	.l1	0, A4, A0
	||	mvk	.d2	0, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.l2	0, B5
		xor	.d1	1, A0, A12
	||	addkpc	.s2	.L805, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L805:
		cmpeq	.l1	0, A4, A4
		xor	.d1	1, A4, A4
		and	.d1	A12, A4, A4
		mv	.d1	A4, A0
	[A0]	b	.s1	.L793
	||[!A0]	ldw	.d2t2	*+B15(28), B3
	[!A0]	dmv	.s1	A11, A10, A5:A4
	||[!A0]	lddw	.d2t1	*+B15(16), A13:A12
	[!A0]	lddw	.d2t1	*+B15(8), A11:A10
	[!A0]	ldw	.d2t1	*+B15(24), A14
	[!A0]	ldw	.d2t2	*+B15(32), B14
	||[!A0]	addk	.s2	32, B15
	[!A0]	ret	.s2	B3
		nop	5
	;; condjump to .L793 occurs
	;; return occurs
.L793:
		ldw	.d2t2	*+B15(28), B3
	||	mvk	.d1	0, A5
	||	mv	.s1	A10, A4
		mvklh	.s1	32768, A5
	||	lddw	.d2t1	*+B15(16), A13:A12
		xor	.d1	A5, A11, A5
	||	ldw	.d2t1	*+B15(24), A14
		lddw	.d2t1	*+B15(8), A11:A10
		ldw	.d2t2	*+B15(32), B14
	||	addk	.s2	32, B15
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
		cmpgtu	.l2	B6, B4, B5
	||	sub	.s2	B4, B6, B4
	||	mv	.l1x	B6, A0
	[!A0]	b	.s1	.L806
	||	cmpeq	.l2	1, B6, B0
		add	.d1x	A4, B4, A9
		mv	.s1x	B5, A1
	||	cmpltu	.l1	A9, A4, A2
		nop	3
	;; condjump to .L806 occurs
	[A1]	b	.s1	.L817
		nop	5
	;; condjump to .L817 occurs
	[A2]	b	.s1	.L817
	||[!A2]	ldb	.d1t1	*A6, A16
		nop	4
		shl	.s1	A16, 24, A17
	;; condjump to .L817 occurs
		ext	.s1	A16, 24, 24, A23
.L812:
		mv	.d1	A4, A3
		ldb	.d1t1	*A3++[1], A5
		nop	4
		cmpeq	.l1	A23, A5, A0
	[A0]	b	.s1	.L827
	||[!A0]	mv	.d1	A3, A4
		nop	5
	;; condjump to .L827 occurs
.L808:
		cmpgtu	.l1	A4, A9, A1
	[!A1]	b	.s1	.L812
		nop	5
	;; condjump to .L812 occurs
.L817:
		mvk	.d1	0, A4
.L806:
		ret	.s2	B3
		nop	5
	;; return occurs
.L827:
	[B0]	b	.s1	.L806
	||	sub	.d1	A3, 1, A22
	||	mv	.l1	A6, A21
		add	.l1x	-1, B6, A1
		nop	4
	;; condjump to .L806 occurs
.L809:
		ldbu	.d1t1	*++A22[1], A18
	||	add	.s1	-1, A1, A1
		ldbu	.d1t1	*++A21[1], A8
		nop	4
		cmpeq	.l1	A8, A18, A0
	[!A0]	b	.s1	.L828
		nop	5
	;; condjump to .L828 occurs
	[A1]	b	.s1	.L809
		nop	5
	;; condjump to .L809 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L828:
		cmpgtu	.l1	A3, A9, A1
	||	mv	.d1	A3, A4
	||	shr	.s1	A17, 24, A7
	[A1]	b	.s1	.L817
	||[!A1]	ldb	.d1t1	*A4++[1], A19
		nop	4
		cmpeq	.l1	A19, A7, A0
	;; condjump to .L817 occurs
	[!A0]	b	.s1	.L808
		nop	5
	;; condjump to .L808 occurs
		b	.s1	.L809
	||	mv	.d1	A3, A20
	||	mv	.l1	A4, A3
		sub	.d1	A3, 1, A22
	||	mv	.l1	A20, A4
	||	mv	.s1	A6, A21
		add	.l1x	-1, B6, A1
		nop	3
	;; jump to .L809 occurs
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
		sub	.d2	B15, 24, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(20)
	[!A0]	b	.s1	.L830
	||	stw	.d2t2	B14, *+B15(24)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A11
	||	mv	.s1	A6, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	2
	;; condjump to .L830 occurs
		callp	.s2	(memmove), B3
		nop	1
.L830:
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
	[!A0]	b	.s1	.L837
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; condjump to .L837 occurs
.L839:
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
	[A1]	b	.s1	.L839
	||	mv	.d1	A0, A4
	||	add	.l1x	A17, B5, A19
		nop	1
		mv	.l2x	A19, B5
		nop	3
	;; condjump to .L839 occurs
.L837:
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
	[!A0]	b	.s1	.L859
		nop	5
	;; condjump to .L859 occurs
.L845:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L846
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A3
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A3, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L846 occurs
	[A1]	b	.s1	.L845
		nop	5
	;; condjump to .L845 occurs
	[!A2]	b	.s1	.L849
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L849 occurs
.L846:
		mvk	.d1	0, A4
.L851:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L851
		nop	5
	;; condjump to .L851 occurs
.L849:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L859:
		b	.s1	.L851
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L851 occurs
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
	[A0]	b	.s1	.L864
	[A0]	mvk	.s1	63, A4
		nop	4
	;; condjump to .L864 occurs
	[!A1]	lmbd	.l1	1, A4, A4
	[!A1]	addk	.s1	32, A4
	||[A1]	lmbd	.l1	1, A6, A4
		sub	.d1	A4, 1, A4
.L864:
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
	[!A0]	b	.s1	.L871
		nop	5
	;; condjump to .L871 occurs
.L873:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L873
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L873 occurs
.L871:
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
	[A1]	b	.s1	.L879
		nop	5
	;; condjump to .L879 occurs
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[!A1]	b	.s1	.L904
		nop	5
	;; condjump to .L904 occurs
.L879:
	[!A0]	b	.s1	.L882
	||	add	.l1x	-8, B4, A16
	||	sub	.d1	A4, 8, A19
		shl	.s1	A0, 3, A9
		sub	.d1	A9, 8, A17
		shru	.s1	A17, 3, A20
		add	.d1	A20, 1, A2
		nop	1
	;; condjump to .L882 occurs
.L883:
		add	.s1	-1, A2, A2
	||	lddw	.d1t1	*++A16[1], A21:A20
	[A2]	b	.s1	.L883
		nop	3
		stdw	.d1t1	A21:A20, *++A19[1]
		nop	1
	;; condjump to .L883 occurs
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
	||[!A0]	b	.s1	.L878
	||	add	.l1x	A18, B4, A29
		cmpltu	.l2x	2, A26, B1
	||[!A1]	mv	.d1	A18, A7
	||	and	.s1	2, A27, A2
		cmpeq	.l2x	3, A28, B2
	||	add	.d1	A4, A7, A31
		nop	3
	;; condjump to .L878 occurs
	[!B0]	b	.s1	.L885
		nop	5
	;; condjump to .L885 occurs
	[!B1]	b	.s1	.L885
		nop	5
	;; condjump to .L885 occurs
	[!A1]	b	.s1	.L886
	||[A1]	ldb	.d1t1	*A29, A30
		nop	4
	[A1]	stb	.d1t1	A30, *A24
	;; condjump to .L886 occurs
	[!A2]	b	.s1	.L886
	||[A2]	ldb	.d1t1	*A25, A3
	||[A2]	add	.l1	2, A18, A7
		add	.d1x	A7, B4, A5
	||	add	.s1	A4, A7, A9
		nop	3
	[A2]	stb	.d1t1	A3, *A31
	;; condjump to .L886 occurs
	[!B2]	b	.s1	.L886
	||[B2]	ldb	.d1t1	*A5, A8
	||[B2]	add	.l1	3, A18, A7
		nop	4
	[B2]	stb	.d1t1	A8, *A9
	;; condjump to .L886 occurs
.L886:
		sub	.d1	A21, A28, A16
	||	or	.s1	A28, A18, A18
		and	.d1	-4, A16, A19
	||	add	.l1	A4, A18, A17
	||	add	.s1x	A18, B4, A20
		sub	.d1	A19, 4, A22
		shru	.s1	A22, 2, A21
		add	.d1	A21, 1, A0
.L888:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A20++[1], A23
	[A0]	b	.s1	.L888
		nop	3
		stw	.d1t1	A23, *A17++[1]
		nop	1
	;; condjump to .L888 occurs
		cmpeq	.l1	A16, A19, A0
	||	add	.s1	A19, A7, A24
	[A0]	b	.s1	.L878
	||	add	.d1	A24, 1, A28
	||	add	.l1x	A24, B4, A25
		cmpltu	.l1	A28, A6, A1
	||[!A0]	ldb	.d1t1	*A25, A26
	||	add	.s1	A4, A24, A27
		add	.d1	A24, 2, A3
	||	add	.l1x	A28, B4, A29
	||	add	.s1	A4, A28, A31
		cmpltu	.l1	A3, A6, A0
	||	add	.d1x	A3, B4, A6
	||	add	.s1	A4, A3, A4
		nop	2
	;; condjump to .L878 occurs
	[!A1]	b	.s1	.L878
	||	stb	.d1t1	A26, *A27
	[A1]	ldb	.d1t1	*A29, A30
		nop	4
	;; condjump to .L878 occurs
	[!A0]	b	.s1	.L878
	||	stb	.d1t1	A30, *A31
	[A0]	ldb	.d1t1	*A6, A5
		nop	4
	;; condjump to .L878 occurs
		stb	.d1t1	A5, *A4
.L878:
		ret	.s2	B3
		nop	5
	;; return occurs
.L904:
		mv	.d1	A6, A2
	||	mv	.l2x	A5, B4
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A5, A3, A0
	[!A2]	b	.s1	.L878
		nop	5
	;; condjump to .L878 occurs
.L892:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*--B4[1], A19
	[A0]	b	.s1	.L892
		nop	3
		stb	.d1t1	A19, *--A4[1]
		nop	1
	;; condjump to .L892 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L882:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L878
		nop	5
	;; condjump to .L878 occurs
.L885:
		sub	.d1	A18, 1, A8
	||	add	.s1x	-1, B4, A9
		add	.d1x	A8, B4, A7
	||	add	.l1	A9, A6, A18
	||	add	.s1	A4, A8, A16
		sub	.d1	A18, A7, A2
.L890:
		add	.s1	-1, A2, A2
	||	ldb	.d1t1	*++A7[1], A19
	[A2]	b	.s1	.L890
		nop	3
		stb	.d1t1	A19, *++A16[1]
		nop	1
	;; condjump to .L890 occurs
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
	[A1]	b	.s1	.L906
		nop	5
	;; condjump to .L906 occurs
		add	.d1x	A6, B4, A7
		cmpgtu	.l1	A4, A7, A5
		mv	.d1	A5, A2
	[!A2]	b	.s1	.L933
		nop	5
	;; condjump to .L933 occurs
.L906:
		sub	.d1	A0, 1, A8
	||	add	.l1x	2, B4, A16
	||[!A0]	b	.s1	.L909
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
	;; condjump to .L909 occurs
	[!B0]	b	.s1	.L910
	||	sub	.d1	A24, 4, A25
		shru	.s1	A25, 2, A26
		nop	4
	;; condjump to .L910 occurs
	[A1]	b	.s1	.L910
	||[!A1]	add	.d1	A26, 1, A0
		nop	5
	;; condjump to .L910 occurs
	[A2]	ldh	.d2t1	*B4, A5
		nop	4
	[A2]	sth	.d1t1	A5, *A4
.L912:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A23++[1], A27
	[A0]	b	.s1	.L912
		nop	3
		stw	.d1t1	A27, *A21++[1]
		nop	1
	;; condjump to .L912 occurs
		and	.d1	1, A20, A1
	||	and	.s1	-2, A20, A28
	[!A1]	b	.s1	.L909
	||	add	.d1	A28, A9, A9
		shl	.s1	A9, 1, A29
		add	.d1x	A29, B4, A30
	||	add	.s1	A4, A29, A3
	[A1]	ldh	.d1t1	*A30, A31
		nop	4
	;; condjump to .L909 occurs
		sth	.d1t1	A31, *A3
.L909:
		and	.d1	1, A6, A0
	[!A0]	b	.s1	.L905
		nop	5
	;; condjump to .L905 occurs
.L934:
		sub	.d1	A6, 1, A6
		add	.d1x	A6, B4, A19
	||	add	.s1	A4, A6, A4
		ldb	.d1t1	*A19, A20
		nop	4
		stb	.d1t1	A20, *A4
.L905:
		ret	.s2	B3
		nop	5
	;; return occurs
.L933:
		mv	.d1	A6, A0
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A7, A3, A1
	[!A0]	b	.s1	.L905
		nop	5
	;; condjump to .L905 occurs
.L917:
		add	.s1	-1, A1, A1
	||	ldb	.d1t1	*--A7[1], A21
	[A1]	b	.s1	.L917
		nop	3
		stb	.d1t1	A21, *--A4[1]
		nop	1
	;; condjump to .L917 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L910:
		shl	.s1	A0, 1, A7
	||	add	.l1x	-2, B4, A5
	||	sub	.d1	A4, 2, A16
		sub	.d1	A7, 2, A8
		shru	.s1	A8, 1, A17
		add	.d1	A17, 1, A2
.L914:
		add	.s1	-1, A2, A2
	||	ldh	.d1t1	*++A5[1], A21
	[A2]	b	.s1	.L914
		nop	3
		sth	.d1t1	A21, *++A16[1]
		nop	1
	;; condjump to .L914 occurs
		and	.d1	1, A6, A0
	[!A0]	b	.s1	.L905
		nop	5
	;; condjump to .L905 occurs
		b	.s1	.L934
		nop	5
	;; jump to .L934 occurs
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
		mv	.l1x	B4, A3
	||	shru	.s1	A6, 2, A0
	||	and	.d1	-4, A6, A18
		cmpgtu	.l1	A3, A4, A1
	[A1]	b	.s1	.L936
		nop	5
	;; condjump to .L936 occurs
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[!A1]	b	.s1	.L961
		nop	5
	;; condjump to .L961 occurs
.L936:
	[!A0]	b	.s1	.L939
	||	add	.l1x	-4, B4, A16
	||	sub	.d1	A4, 4, A19
		shl	.s1	A0, 2, A9
		sub	.d1	A9, 4, A17
		shru	.s1	A17, 2, A20
		add	.d1	A20, 1, A2
		nop	1
	;; condjump to .L939 occurs
.L940:
		add	.s1	-1, A2, A2
	||	ldw	.d1t1	*++A16[1], A20
	[A2]	b	.s1	.L940
		nop	3
		stw	.d1t1	A20, *++A19[1]
		nop	1
	;; condjump to .L940 occurs
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
	||[!A0]	b	.s1	.L935
	||	add	.l1x	A18, B4, A29
		cmpltu	.l2x	2, A26, B1
	||[!A1]	mv	.d1	A18, A7
	||	and	.s1	2, A27, A2
		cmpeq	.l2x	3, A28, B2
	||	add	.d1	A4, A7, A31
		nop	3
	;; condjump to .L935 occurs
	[!B0]	b	.s1	.L942
		nop	5
	;; condjump to .L942 occurs
	[!B1]	b	.s1	.L942
		nop	5
	;; condjump to .L942 occurs
	[!A1]	b	.s1	.L943
	||[A1]	ldb	.d1t1	*A29, A30
		nop	4
	[A1]	stb	.d1t1	A30, *A24
	;; condjump to .L943 occurs
	[!A2]	b	.s1	.L943
	||[A2]	ldb	.d1t1	*A25, A3
	||[A2]	add	.l1	2, A18, A7
		add	.d1x	A7, B4, A5
	||	add	.s1	A4, A7, A9
		nop	3
	[A2]	stb	.d1t1	A3, *A31
	;; condjump to .L943 occurs
	[!B2]	b	.s1	.L943
	||[B2]	ldb	.d1t1	*A5, A8
	||[B2]	add	.l1	3, A18, A7
		nop	4
	[B2]	stb	.d1t1	A8, *A9
	;; condjump to .L943 occurs
.L943:
		sub	.d1	A22, A28, A16
	||	or	.s1	A28, A18, A18
		and	.d1	-4, A16, A19
	||	add	.l1	A4, A18, A17
	||	add	.s1x	A18, B4, A20
		sub	.d1	A19, 4, A21
		shru	.s1	A21, 2, A22
		add	.d1	A22, 1, A0
.L945:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A20++[1], A23
	[A0]	b	.s1	.L945
		nop	3
		stw	.d1t1	A23, *A17++[1]
		nop	1
	;; condjump to .L945 occurs
		cmpeq	.l1	A16, A19, A0
	||	add	.s1	A19, A7, A24
	[A0]	b	.s1	.L935
	||	add	.d1	A24, 1, A28
	||	add	.l1x	A24, B4, A25
		cmpltu	.l1	A28, A6, A1
	||[!A0]	ldb	.d1t1	*A25, A26
	||	add	.s1	A4, A24, A27
		add	.d1	A24, 2, A3
	||	add	.l1x	A28, B4, A29
	||	add	.s1	A4, A28, A31
		cmpltu	.l1	A3, A6, A0
	||	add	.d1x	A3, B4, A6
	||	add	.s1	A4, A3, A4
		nop	2
	;; condjump to .L935 occurs
	[!A1]	b	.s1	.L935
	||	stb	.d1t1	A26, *A27
	[A1]	ldb	.d1t1	*A29, A30
		nop	4
	;; condjump to .L935 occurs
	[!A0]	b	.s1	.L935
	||	stb	.d1t1	A30, *A31
	[A0]	ldb	.d1t1	*A6, A5
		nop	4
	;; condjump to .L935 occurs
		stb	.d1t1	A5, *A4
.L935:
		ret	.s2	B3
		nop	5
	;; return occurs
.L961:
		mv	.d1	A6, A2
	||	mv	.l2x	A5, B4
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A5, A3, A0
	[!A2]	b	.s1	.L935
		nop	5
	;; condjump to .L935 occurs
.L949:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*--B4[1], A19
	[A0]	b	.s1	.L949
		nop	3
		stb	.d1t1	A19, *--A4[1]
		nop	1
	;; condjump to .L949 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L939:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L935
		nop	5
	;; condjump to .L935 occurs
.L942:
		sub	.d1	A18, 1, A8
	||	add	.s1x	-1, B4, A9
		add	.d1x	A8, B4, A7
	||	add	.l1	A9, A6, A18
	||	add	.s1	A4, A8, A16
		sub	.d1	A18, A7, A2
.L947:
		add	.s1	-1, A2, A2
	||	ldb	.d1t1	*++A7[1], A19
	[A2]	b	.s1	.L947
		nop	3
		stb	.d1t1	A19, *++A16[1]
		nop	1
	;; condjump to .L947 occurs
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
		addkpc	.s2	.L964, B3, 0
		nop	4
.L964:
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
	||	addkpc	.s2	.L967, B3, 0
	;; call to (__c6xabi_fltud) occurs, with return value
		nop	4
.L967:
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
	||	addkpc	.s2	.L970, B3, 0
	;; call to (__c6xabi_fltuf) occurs, with return value
		nop	4
.L970:
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
	||	addkpc	.s2	.L973, B3, 0
	;; call to (__c6xabi_fltulld) occurs, with return value
		nop	4
.L973:
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
	||	addkpc	.s2	.L976, B3, 0
	;; call to (__c6xabi_fltullf) occurs, with return value
		nop	4
.L976:
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
		addkpc	.s2	.L979, B3, 0
		nop	4
.L979:
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
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	0, A4
	[!A1]	shr	.s1	A0, 14, A4
		mv	.d1	A4, A2
	||	shr	.s1	A0, 13, A1
		nop	3
	;; condjump to .L980 occurs
	[A2]	b	.s1	.L980
		nop	5
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	2, A4
		shr	.s1	A0, 12, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	3, A4
		shr	.s1	A0, 11, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	4, A4
		shr	.s1	A0, 10, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	5, A4
		shr	.s1	A0, 9, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	6, A4
		shr	.s1	A0, 8, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	7, A4
		shr	.s1	A0, 7, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	8, A4
		shr	.s1	A0, 6, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	9, A4
		shr	.s1	A0, 5, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	10, A4
		shr	.s1	A0, 4, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	11, A4
		shr	.s1	A0, 3, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	12, A4
		shr	.s1	A0, 2, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	13, A4
		shr	.s1	A0, 1, A1
		nop	4
	;; condjump to .L980 occurs
	[A1]	b	.s1	.L980
	||[A1]	mvk	.d1	14, A4
		nop	5
	;; condjump to .L980 occurs
	[A0]	mvk	.d1	15, A4
	||[!A0]	mvk	.s1	16, A4
.L980:
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
	[A0]	b	.s1	.L1000
	||[A0]	mvk	.d1	0, A4
		and	.d1	2, A4, A1
	||	mvk	.s1	32, A5
		mvk	.s1	64, A6
		mvk	.s1	128, A7
		mvk	.s1	256, A8
		mvk	.s1	512, A9
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	1, A4
		and	.d1	4, A4, A2
	||	mvk	.s1	1024, A16
		mvk	.s1	2048, A17
		mvk	.s1	4096, A18
		mvk	.s1	8192, A19
		mvk	.s1	16384, A20
	;; condjump to .L1000 occurs
	[A2]	b	.s1	.L1000
	||[A2]	mvk	.d1	2, A4
		and	.d1	8, A4, A0
		nop	4
	;; condjump to .L1000 occurs
	[A0]	b	.s1	.L1000
	||[A0]	mvk	.d1	3, A4
		and	.d1	A3, A4, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	4, A4
		and	.d1	A5, A4, A2
		nop	4
	;; condjump to .L1000 occurs
	[A2]	b	.s1	.L1000
	||[A2]	mvk	.d1	5, A4
		and	.d1	A6, A4, A0
		nop	4
	;; condjump to .L1000 occurs
	[A0]	b	.s1	.L1000
	||[A0]	mvk	.d1	6, A4
		and	.d1	A7, A4, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	7, A4
		and	.d1	A8, A4, A2
		nop	4
	;; condjump to .L1000 occurs
	[A2]	b	.s1	.L1000
	||[A2]	mvk	.d1	8, A4
		and	.d1	A9, A4, A0
		nop	4
	;; condjump to .L1000 occurs
	[A0]	b	.s1	.L1000
	||[A0]	mvk	.d1	9, A4
		and	.d1	A16, A4, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	b	.s1	.L1000
	||[A1]	mvk	.d1	10, A4
		and	.d1	A17, A4, A2
		nop	4
	;; condjump to .L1000 occurs
	[A2]	b	.s1	.L1000
	||[A2]	mvk	.d1	11, A4
		and	.d1	A18, A4, A0
		nop	4
	;; condjump to .L1000 occurs
	[A0]	b	.s1	.L1000
	||[A0]	mvk	.d1	12, A4
		and	.d1	A19, A4, A1
		nop	4
	;; condjump to .L1000 occurs
	[A1]	mvk	.d1	13, A4
	||[A1]	b	.s1	.L1000
		and	.d1	A20, A4, A2
		nop	4
	;; condjump to .L1000 occurs
	[A2]	b	.s1	.L1000
	||[A2]	mvk	.d1	14, A4
	[!A2]	extu	.s1	A4, 16, 16, A4
	[!A2]	shr	.s1	A4, 15, A4
		mv	.d1	A4, A0
		nop	2
	;; condjump to .L1000 occurs
	[A0]	mvk	.d1	15, A4
	||[!A0]	mvk	.s1	16, A4
.L1000:
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
	||	addkpc	.s2	.L1030, B3, 0
		mvklh	.s2	18176, B4
	||	mv	.d1	A4, A10
	;; call to (__c6xabi_gef) occurs, with return value
		nop	3
.L1030:
		mv	.d1	A4, A0
	||	mv	.s1	A10, A4
	[A0]	b	.s1	.L1029
		nop	5
	;; condjump to .L1029 occurs
		callp	.s2	(__c6xabi_fixfi), B3
		ldw	.d2t2	*+B15(12), B3
		ldw	.d2t1	*+B15(8), A10
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	2
		ret	.s2	B3
		nop	5
	;; return occurs
.L1029:
		call	.s2	(__c6xabi_subf)
	||	mvk	.l2	0, B4
		addkpc	.s2	.L1032, B3, 0
		mvklh	.s2	18176, B4
	;; call to (__c6xabi_subf) occurs, with return value
		nop	3
.L1032:
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
	[!A0]	b	.s1	.L1038
		nop	5
	;; condjump to .L1038 occurs
.L1040:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L1040
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L1040 occurs
.L1038:
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
	[!A0]	b	.s1	.L1045
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1045 occurs
	[!A1]	b	.s1	.L1045
		nop	5
	;; condjump to .L1045 occurs
.L1047:
		and	.d1x	1, B4, A5
	||	shru	.s2	B4, 1, B4
		neg	.l1	A5, A6
		mv	.l1x	B4, A2
	||	and	.d1	A3, A6, A7
	||	shl	.s1	A3, 1, A3
	[A2]	b	.s1	.L1047
	||	add	.d1	A4, A7, A4
		nop	5
	;; condjump to .L1047 occurs
.L1045:
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
	[!A0]	b	.s1	.L1068
		nop	5
	;; condjump to .L1068 occurs
.L1054:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1055
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1055 occurs
	[A1]	b	.s1	.L1054
		nop	5
	;; condjump to .L1054 occurs
	[!A2]	b	.s1	.L1058
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1058 occurs
.L1055:
		mvk	.d1	0, A4
.L1060:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L1060
		nop	5
	;; condjump to .L1060 occurs
.L1058:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1068:
		b	.s1	.L1060
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1060 occurs
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
	||	addkpc	.s2	.L1075, B3, 0
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	4
.L1075:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	[A0]	b	.s1	.L1069
	||[A0]	mvk	.d1	-1, A4
	[!A0]	mv	.d1	A10, A4
		nop	4
	;; condjump to .L1069 occurs
		callp	.s2	(__c6xabi_gtf), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L1069:
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
	||	addkpc	.s2	.L1083, B3, 0
		mv	.l1x	B5, A13
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L1083:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L1077
	||[A0]	mvk	.d1	-1, A4
	||	mv	.l2x	A13, B5
	[!A0]	dmv	.s1	A11, A10, A5:A4
		nop	4
	;; condjump to .L1077 occurs
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L1077:
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
	||[A0]	b	.s1	.L1091
	||[A0]	mvk	.d1	1, A2
	[!A0]	mvk	.d1	0, A2
		mv	.l1x	B4, A1
	[!A1]	mvk	.d1	0, A4
		nop	2
	;; condjump to .L1091 occurs
	[!A1]	b	.s1	.L1089
		nop	5
	;; condjump to .L1089 occurs
.L1091:
		mvk	.d1	1, A6
	||	mvk	.l1	0, A4
	||	mvk	.s1	32, A8
.L1093:
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
	[A0]	b	.s1	.L1093
		nop	5
	;; condjump to .L1093 occurs
	[A2]	neg	.l1	A4, A4
.L1089:
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
	[!A0]	b	.s1	.L1121
	||	mvk	.d1	1, A0
		nop	5
	;; condjump to .L1121 occurs
.L1104:
		shl	.s2	B4, 1, B4
	||	shl	.s1	A0, 1, A0
		cmpeq	.l1	0, A0, A8
		mv	.s1x	B4, A5
	||	cmpeq	.l1	0, A8, A9
		cmpltu	.l1	A5, A4, A7
		and	.d1	A9, A7, A2
	[A2]	b	.s1	.L1104
		nop	5
	;; condjump to .L1104 occurs
	[!A0]	b	.s1	.L1106
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1106 occurs
.L1109:
		cmpltu	.l1x	A6, B4, A16
		mv	.d1	A16, A2
	[!A2]	or	.d1	A0, A4, A4
	||	shru	.s1	A0, 1, A0
	||[!A2]	mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
	[A0]	b	.s1	.L1109
	||[!A2]	sub	.d1	A6, A16, A6
		nop	5
	;; condjump to .L1109 occurs
.L1106:
		ret	.s2	B3
	||[A1]	neg	.l1	A4, A4
		nop	5
	;; return occurs
.L1121:
		b	.s1	.L1109
	||	mvk	.d1	1, A0
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1109 occurs
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
	[!A2]	b	.s1	.L1129
		nop	5
	;; condjump to .L1129 occurs
.L1124:
		shl	.s1	A16, 1, A16
		shl	.s1	A17, 1, A17
	||	cmpeq	.l1	0, A16, A6
		cmpltu	.l1	A17, A4, A8
		cmpeq	.l1	0, A6, A9
		and	.d1	A9, A8, A2
	[A2]	b	.s1	.L1124
		nop	5
	;; condjump to .L1124 occurs
		mv	.d1	A16, A2
	[!A2]	b	.s1	.L1126
		nop	5
	;; condjump to .L1126 occurs
.L1129:
		shru	.s1	A16, 1, A16
	||	cmpltu	.l1	A7, A17, A2
		mv	.d1	A16, A0
	||[!A2]	sub	.l1	A7, A17, A7
	||	shru	.s1	A17, 1, A17
	[A0]	b	.s1	.L1129
		nop	5
	;; condjump to .L1129 occurs
		mv	.d1	A7, A4
.L1126:
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
	||[!A1]	b	.s1	.L1190
	||[A1]	mvk	.d1	1, A7
		nop	5
	;; condjump to .L1190 occurs
	[A2]	b	.s1	.L1191
		nop	5
	;; condjump to .L1191 occurs
.L1145:
		shl	.s1	A7, 1, A22
		shl	.s1x	B4, 1, A23
		extu	.s1	A22, 16, 16, A24
		extu	.s1	A23, 16, 16, A25
	||	cmpeq	.l1	0, A24, A18
		cmpeq	.l1	0, A18, A27
	||	mv	.s1	A22, A18
		cmpltu	.l1	A25, A17, A26
		and	.d1	A27, A26, A0
	[!A0]	b	.s1	.L1144
	||[A0]	mv	.l2x	A23, B4
	||[A0]	mv	.d1	A22, A7
		nop	1
		mv	.l1x	B4, A8
		ext	.s1	A8, 16, 16, A9
		cmpgt	.l1	0, A9, A2
		nop	1
	;; condjump to .L1144 occurs
	[!A2]	b	.s1	.L1145
		nop	5
	;; condjump to .L1145 occurs
.L1191:
		extu	.s1	A8, 16, 16, A19
		cmpgtu	.l1	A19, A17, A1
	[A1]	b	.s1	.L1168
	||[A1]	mvk	.d1	0, A18
		nop	5
	;; condjump to .L1168 occurs
		sub	.l2x	A4, B4, B4
	||	mv	.d1	A7, A18
		nop	1
		mv	.l1x	B4, A4
.L1168:
		extu	.s1	A7, 16, 16, A7
		shru	.s1	A7, 1, A1
	[!A1]	b	.s1	.L1147
	||	mv	.d1	A1, A21
		shru	.s1	A19, 1, A20
		extu	.s1	A4, 16, 16, A17
		nop	3
	;; condjump to .L1147 occurs
.L1149:
		extu	.s1	A20, 16, 16, A3
		cmpgtu	.l1	A3, A17, A1
	||	shru	.s1	A7, 2, A8
	[!A1]	sub	.d1	A4, A20, A20
	||[!A1]	or	.l1	A21, A18, A18
	||	shru	.s1	A19, 2, A9
	[!A1]	mv	.d1	A20, A4
	||	mv	.l1	A8, A1
	||	shru	.s1	A7, 3, A20
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A16
		cmpgtu	.l1	A9, A16, A1
	||	shru	.s1	A19, 3, A21
	[!A1]	sub	.d1	A4, A9, A9
	||	shru	.s1	A7, 4, A22
		shru	.s1	A19, 4, A23
		shru	.s1	A7, 5, A25
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A9, A4
	||[!A1]	or	.l1	A18, A8, A18
	||	mv	.s1	A20, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A17
		cmpgtu	.l1	A21, A17, A1
	||	shru	.s1	A19, 5, A26
	[!A1]	sub	.d1	A4, A21, A21
	||	shru	.s1	A7, 6, A28
		shru	.s1	A19, 6, A0
		shru	.s1	A7, 7, A29
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A21, A4
	||[!A1]	or	.l1	A18, A20, A18
	||	mv	.s1	A22, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A24
		cmpgtu	.l1	A23, A24, A1
	||	shru	.s1	A19, 7, A30
	[!A1]	sub	.d1	A4, A23, A23
	||	shru	.s1	A7, 8, A2
		shru	.s1	A19, 8, A8
		shru	.s1	A7, 9, A9
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A23, A4
	||[!A1]	or	.l1	A18, A22, A18
	||	mv	.s1	A25, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A27
		cmpgtu	.l1	A26, A27, A1
	||	shru	.s1	A19, 9, A16
	[!A1]	sub	.d1	A4, A26, A26
	||	shru	.s1	A7, 10, A21
		shru	.s1	A19, 10, A17
		shru	.s1	A7, 11, A23
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A26, A4
	||[!A1]	or	.l1	A18, A25, A18
	||	mv	.s1	A28, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A5
		cmpgtu	.l1	A0, A5, A1
	||	shru	.s1	A19, 11, A24
	[!A1]	sub	.d1	A4, A0, A0
	||	shru	.s1	A7, 12, A26
		shru	.s1	A19, 12, A27
		nop	1
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A0, A4
	||[!A1]	or	.l1	A18, A28, A18
	||	mv	.s1	A29, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A31
		cmpgtu	.l1	A30, A31, A1
	||	shru	.s1	A19, 13, A0
	[!A1]	sub	.d1	A4, A30, A30
	||	shru	.s1	A19, 14, A31
		shru	.s1	A19, 15, A19
		nop	1
	;; condjump to .L1147 occurs
	[!A2]	b	.s1	.L1147
	||[!A1]	mv	.d1	A30, A4
	||[!A1]	or	.l1	A18, A29, A18
		extu	.s1	A4, 16, 16, A3
		cmpgtu	.l1	A8, A3, A1
	||	shru	.s1	A7, 13, A29
	[!A1]	sub	.d1	A4, A8, A8
	||	shru	.s1	A7, 14, A30
		nop	2
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A8, A4
	||[!A1]	or	.l1	A18, A2, A18
	||	mv	.s1	A9, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A20
		cmpgtu	.l1	A16, A20, A1
	[!A1]	sub	.d1	A4, A16, A16
		nop	2
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A16, A4
	||[!A1]	or	.l1	A18, A9, A18
	||	mv	.s1	A21, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A22
		cmpgtu	.l1	A17, A22, A1
	[!A1]	sub	.d1	A4, A17, A17
		nop	2
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A17, A4
	||[!A1]	or	.l1	A18, A21, A18
	||	mv	.s1	A23, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A25
		cmpgtu	.l1	A24, A25, A1
	[!A1]	sub	.d1	A4, A24, A24
		nop	2
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A24, A4
	||[!A1]	or	.l1	A18, A23, A18
	||	mv	.s1	A26, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A28
		cmpgtu	.l1	A27, A28, A1
	[!A1]	sub	.d1	A4, A27, A27
		nop	2
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A27, A4
	||[!A1]	or	.l1	A18, A26, A18
	||	mv	.s1	A29, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A5
		cmpgtu	.l1	A0, A5, A1
	[!A1]	sub	.d1	A4, A0, A0
		nop	2
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A0, A4
	||[!A1]	or	.l1	A18, A29, A18
	||	mv	.s1	A30, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A8
		cmpgtu	.l1	A31, A8, A1
	[!A1]	sub	.d1	A4, A31, A31
		nop	2
	;; condjump to .L1147 occurs
	[!A1]	mv	.d1	A31, A4
	||[!A1]	or	.l1	A18, A30, A18
	||	shru	.s1	A7, 15, A1
	[!A1]	b	.s1	.L1147
		extu	.s1	A4, 16, 16, A7
		cmpgtu	.l1	A19, A7, A1
		nop	3
	;; condjump to .L1147 occurs
	[!A1]	sub	.l1	A4, A19, A4
	||[!A1]	or	.s1	1, A18, A18
	||[A1]	mvk	.d1	0, A4
.L1147:
		ret	.s2	B3
	||	mv	.d1	A6, A2
	[!A2]	mv	.d1	A18, A4
		nop	4
	;; return occurs
.L1144:
		mv	.d1	A24, A2
	||	cmpgtu	.l1	A25, A17, A1
	||	mvk	.s1	32767, A28
	[!A2]	b	.s1	.L1147
		nop	5
	;; condjump to .L1147 occurs
	[A1]	b	.s1	.L1148
		nop	5
	;; condjump to .L1148 occurs
		b	.s1	.L1149
	||	sub	.d1	A4, A23, A4
	||	and	.l1	A28, A7, A21
		and	.d1x	A28, B4, A20
	||	extu	.s1	A4, 16, 16, A17
		extu	.s1	A23, 16, 16, A19
		extu	.s1	A22, 16, 16, A7
		nop	2
	;; jump to .L1149 occurs
.L1148:
		b	.s1	.L1149
	||	and	.l1	A28, A7, A21
	||	mvk	.d1	0, A18
		and	.d1x	A28, B4, A20
	||	extu	.s1	A22, 16, 16, A7
		extu	.s1	A23, 16, 16, A19
		nop	3
	;; jump to .L1149 occurs
.L1190:
		cmpeq	.l1	A17, A5, A0
	[A0]	b	.s1	.L1147
	||[A0]	mvk	.d1	1, A18
	||[A0]	mvk	.l1	0, A4
		nop	5
	;; condjump to .L1147 occurs
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
	[!A0]	b	.s1	.L1207
		nop	5
	;; condjump to .L1207 occurs
.L1193:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1194
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1194 occurs
	[A1]	b	.s1	.L1193
		nop	5
	;; condjump to .L1193 occurs
	[!A2]	b	.s1	.L1197
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1197 occurs
.L1194:
		mvk	.d1	0, A4
.L1199:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L1199
		nop	5
	;; condjump to .L1199 occurs
.L1197:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1207:
		b	.s1	.L1199
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1199 occurs
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1209
		nop	5
	;; condjump to .L1209 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shl	.s1	A4, A9, A5
	||	mv	.d1	A8, A4
.L1211:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1209:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1211
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1211
		shru	.s1	A4, A3, A7
	[A2]	shl	.s1	A5, A2, A5
		shl	.s1	A4, A2, A8
	||[A2]	or	.d1	A5, A7, A5
	[A2]	mv	.d1	A8, A4
		nop	1
	;; condjump to .L1211 occurs
	;; jump to .L1211 occurs
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1216
		nop	5
	;; condjump to .L1216 occurs
		subah	.d2	B4, 16, B4
	||	shr	.s1	A5, 31, A8
		nop	1
		mv	.l1x	B4, A9
		shr	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1218:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1216:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1218
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1218
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shr	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1218 occurs
	;; jump to .L1218 occurs
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
	[A0]	b	.s1	.L1234
	||	cmplt	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1234 occurs
	[A0]	b	.s1	.L1235
		nop	5
	;; condjump to .L1235 occurs
	[A1]	b	.s1	.L1234
		nop	5
	;; condjump to .L1234 occurs
	[A2]	b	.s1	.L1235
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1235 occurs
	;; return occurs
.L1234:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1235:
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
	[A0]	b	.s1	.L1242
	||	cmplt	.l1	A3, A5, A0
	[A0]	mvk	.d1	1, A4
	||	mv	.s1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		nop	3
	;; condjump to .L1242 occurs
	[A0]	b	.s1	.L1238
		nop	5
	;; condjump to .L1238 occurs
	[A1]	b	.s1	.L1242
	||[!A1]	cmpltu	.l1	A5, A4, A4
		nop	5
	;; condjump to .L1242 occurs
.L1238:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1242:
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
	[!A1]	b	.s1	.L1248
		nop	5
	;; condjump to .L1248 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shru	.s1	A5, A9, A4
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
		shru	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1250 occurs
	;; jump to .L1250 occurs
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
	[!A0]	b	.s1	.L1269
	||	stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(32)
		dmv	.s1	A5, A4, A13:A12
	||	mv	.l1x	B4, A10
	||	mvk	.d1	0, A14
		mvklh	.s1	16368, A15
	;; condjump to .L1269 occurs
.L1271:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A15, A14, A5:A4
	||	mv	.l2x	A12, B4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L1278, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L1278:
		dmv	.s1	A5, A4, A15:A14
.L1269:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1270
		nop	5
	;; condjump to .L1270 occurs
.L1272:
		call	.s2	(__c6xabi_mpyd)
	||	mv	.l2x	A12, B4
	||	mv	.d1	A12, A4
	||	mv	.s1	A13, A5
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L1279, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L1279:
		and	.d1	1, A10, A2
	||	dmv	.s1	A5, A4, A13:A12
	[A2]	b	.s1	.L1271
		nop	5
	;; condjump to .L1271 occurs
		b	.s1	.L1272
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L1272 occurs
.L1270:
		cmpgt	.l2x	0, A11, B0
	||	dmv	.s1	A15, A14, A5:A4
	[B0]	b	.s1	.L1277
	||[!B0]	ldw	.d2t2	*+B15(32), B3
	[!B0]	ldw	.d2t1	*+B15(12), A10
	[!B0]	ldw	.d2t1	*+B15(16), A11
	[!B0]	ldw	.d2t1	*+B15(20), A12
	[!B0]	ldw	.d2t1	*+B15(24), A13
	[!B0]	ldw	.d2t1	*+B15(28), A14
	;; condjump to .L1277 occurs
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(36), B14
		ldw	.d2t1	*+B15(40), A15
	||	addk	.s2	40, B15
		nop	4
	;; return occurs
.L1277:
		call	.s2	(__c6xabi_divd)
	||	mv	.l2x	A14, B4
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		mv	.l2x	A15, B5
	||	mvklh	.s1	16368, A5
	||	addkpc	.s2	.L1280, B3, 0
	;; call to (__c6xabi_divd) occurs, with return value
		nop	4
.L1280:
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
	[!A0]	b	.s1	.L1282
	||	stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(28)
		mv	.l1	A4, A11
	||	mv	.s1x	B4, A10
	||	mvk	.d1	0, A12
		mvklh	.s1	16256, A12
	;; condjump to .L1282 occurs
.L1284:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.d1	A12, A4
	||	mv	.l2x	A11, B4
		mv	.d1	A4, A12
.L1282:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1283
		nop	5
	;; condjump to .L1283 occurs
.L1285:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A11, A4
		and	.d1	1, A10, A2
	||	mv	.s1	A4, A11
	[A2]	b	.s1	.L1284
		nop	5
	;; condjump to .L1284 occurs
		b	.s1	.L1285
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L1285 occurs
.L1283:
		cmpgt	.l2x	0, A13, B0
	||	mv	.d1	A12, A4
	[B0]	b	.s1	.L1290
	||[!B0]	ldw	.d2t2	*+B15(28), B3
	[!B0]	ldw	.d2t1	*+B15(12), A10
	[!B0]	ldw	.d2t1	*+B15(16), A11
	[!B0]	ldw	.d2t1	*+B15(20), A12
	[!B0]	ldw	.d2t1	*+B15(24), A13
	[!B0]	ret	.s2	B3
	||[!B0]	ldw	.d2t2	*+B15(32), B14
	;; condjump to .L1290 occurs
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
.L1290:
		call	.s2	(__c6xabi_divf)
	||	mv	.l2x	A12, B4
	||	mvk	.d1	0, A4
		mvklh	.s1	16256, A4
	||	addkpc	.s2	.L1293, B3, 0
	;; call to (__c6xabi_divf) occurs, with return value
		nop	4
.L1293:
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
	[A0]	b	.s1	.L1298
	||	cmpltu	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1298 occurs
	[A0]	b	.s1	.L1299
		nop	5
	;; condjump to .L1299 occurs
	[A1]	b	.s1	.L1298
		nop	5
	;; condjump to .L1298 occurs
	[A2]	b	.s1	.L1299
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1299 occurs
	;; return occurs
.L1298:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1299:
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
	[A0]	b	.s1	.L1306
	||	cmpltu	.l1	A3, A5, A0
	[A0]	mvk	.d1	1, A4
	||	mv	.s1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		nop	3
	;; condjump to .L1306 occurs
	[A0]	b	.s1	.L1302
		nop	5
	;; condjump to .L1302 occurs
	[A1]	b	.s1	.L1306
	||[!A1]	cmpltu	.l1	A5, A4, A4
		nop	5
	;; condjump to .L1306 occurs
.L1302:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1306:
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
	.global	__c6xabi_fltullf
	.global	__c6xabi_fltulld
	.global	__c6xabi_fltuf
	.global	__c6xabi_fltud
	.global	__c6xabi_fltid
	.global	__c6xabi_remlli
	.global	__c6xabi_divlli
	.global	__c6xabi_lef
	.global	__c6xabi_led
	.global	__c6xabi_gef
	.global	__c6xabi_ltf
	.global	__c6xabi_ged
	.global	__c6xabi_ltd
	.global	__c6xabi_subf
	.global	__c6xabi_gtf
	.global	__c6xabi_subd
	.global	__c6xabi_gtd
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
