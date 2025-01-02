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
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		dmv	.s1	A5, A4, A11:A10
	||	stw	.d2t2	B14, *+B15(32)
		call	.s2	(__c6xabi_unordd)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A13, *+B15(24)
	||	addkpc	.s2	.L206, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L206:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L196
	||	mv	.l2x	A13, B5
	[A0]	dmv	.s1	A11, A10, A5:A4
	[!A0]	dmv	.s1	A13, A12, A5:A4
		nop	3
	;; condjump to .L196 occurs
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L196
	||	mv	.l2x	A13, B5
	[A0]	dmv	.s1	A13, A12, A5:A4
	[!A0]	dmv	.s1	A11, A10, A5:A4
		nop	3
	;; condjump to .L196 occurs
		callp	.s2	(__c6xabi_gtd), B3
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
	||	addkpc	.s2	.L209, B3, 0
	;; call to (__c6xabi_subd) occurs, with return value
		nop	4
.L209:
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
		call	.s2	(__c6xabi_unordf)
	||	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		stw	.d2t1	A11, *+B15(16)
	||	addkpc	.s2	.L220, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A10
	||	mv	.s1x	B4, A11
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L220:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	[A0]	b	.s1	.L210
	||[A0]	mv	.d1	A10, A4
	[!A0]	mv	.d1	A11, A4
		nop	4
	;; condjump to .L210 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	mv	.l2x	A11, B4
	[A1]	b	.s1	.L210
	||[A1]	mv	.d1	A11, A4
	[!A1]	mv	.d1	A10, A4
		nop	4
	;; condjump to .L210 occurs
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A2
	[!A2]	b	.s1	.L210
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L210 occurs
		callp	.s2	(__c6xabi_subf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A10, A4
.L210:
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
	||	addkpc	.s2	.L237, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.l1x	B5, A11
	||	mv	.l2x	A13, B5
		mv	.l1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L237:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s1	.L232
	||	mv	.l2x	A11, B5
		nop	5
	;; condjump to .L232 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A13, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A11, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L231
		nop	5
	;; condjump to .L231 occurs
	[A2]	b	.s1	.L226
		nop	5
	;; condjump to .L226 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L231
		nop	5
	;; condjump to .L231 occurs
.L232:
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
.L226:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A11, B5
	||	addkpc	.s2	.L239, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L239:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L232
		nop	5
	;; condjump to .L232 occurs
.L231:
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
	||	addkpc	.s2	.L253, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A11
	||	mv	.s1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L253:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	mv	.s1	A10, A4
	[A0]	b	.s1	.L248
		nop	5
	;; condjump to .L248 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	clr	.s1	A11, 0, 30, A3
		clr	.s1	A10, 0, 30, A4
		cmpeq	.l1	A4, A3, A2
	||[A1]	b	.s1	.L247
		nop	5
	;; condjump to .L247 occurs
	[A2]	b	.s1	.L242
		nop	5
	;; condjump to .L242 occurs
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L247
		nop	5
	;; condjump to .L247 occurs
.L248:
		mv	.d1	A10, A4
.L240:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
.L242:
		callp	.s2	(__c6xabi_ltf), B3
	||	mv	.l2x	A10, B4
	||	mv	.d1	A11, A4
		b	.s1	.L240
	||	mv	.d1	A4, A0
	[!A0]	mv	.d1	A11, A10
		mv	.d1	A10, A4
		nop	3
	;; jump to .L240 occurs
.L247:
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
	||	addkpc	.s2	.L269, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.l1x	B5, A11
	||	mv	.l2x	A13, B5
		mv	.l1x	B4, A10
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L269:
		mv	.d1	A4, A0
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s1	.L264
	||	mv	.l2x	A11, B5
		nop	5
	;; condjump to .L264 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A13, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A11, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L263
		nop	5
	;; condjump to .L263 occurs
	[A2]	b	.s1	.L258
		nop	5
	;; condjump to .L258 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L263
		nop	5
	;; condjump to .L263 occurs
.L264:
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
.L258:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A10, B4
	||	dmv	.s1	A13, A12, A5:A4
		mv	.l2x	A11, B5
	||	addkpc	.s2	.L271, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L271:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L264
		nop	5
	;; condjump to .L264 occurs
.L263:
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
	||	addkpc	.s2	.L285, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L285:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L278
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L278 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A11, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A13, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L280
		nop	5
	;; condjump to .L280 occurs
	[A2]	b	.s1	.L274
		nop	5
	;; condjump to .L274 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L278
		nop	5
	;; condjump to .L278 occurs
.L280:
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
.L274:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L287, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L287:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L280
		nop	5
	;; condjump to .L280 occurs
.L278:
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
	||	addkpc	.s2	.L301, B3, 0
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A10
	||	mv	.s1x	B4, A11
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordf) occurs, with return value
		nop	2
.L301:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	||	mv	.s1	A11, A4
	[A0]	b	.s1	.L294
		nop	5
	;; condjump to .L294 occurs
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	||	clr	.s1	A10, 0, 30, A3
		clr	.s1	A11, 0, 30, A4
		cmpeq	.l1	A4, A3, A2
	||[A1]	b	.s1	.L296
		nop	5
	;; condjump to .L296 occurs
	[A2]	b	.s1	.L290
		nop	5
	;; condjump to .L290 occurs
		mv	.d1	A3, A1
	[!A1]	b	.s1	.L294
		nop	5
	;; condjump to .L294 occurs
.L296:
		mv	.d1	A10, A4
.L288:
		ldw	.d2t2	*+B15(20), B3
		ldw	.d2t1	*+B15(12), A10
		ldw	.d2t1	*+B15(16), A11
		ldw	.d2t2	*+B15(24), B14
	||	addk	.s2	24, B15
		nop	1
		ret	.s2	B3
		nop	5
	;; return occurs
.L290:
		callp	.s2	(__c6xabi_ltf), B3
	||	mv	.d1	A10, A4
	||	mv	.l2x	A11, B4
		b	.s1	.L288
	||	mv	.d1	A4, A0
	[!A0]	mv	.d1	A11, A10
		mv	.d1	A10, A4
		nop	3
	;; jump to .L288 occurs
.L294:
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
	||	addkpc	.s2	.L317, B3, 0
		stw	.d2t1	A12, *+B15(20)
		mv	.l1x	B5, A13
	||	mv	.l2x	A11, B5
		mv	.l1x	B4, A12
	||	mv	.l2x	A4, B4
	;; call to (__c6xabi_unordd) occurs, with return value
		nop	1
.L317:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s1	.L310
	||	mv	.l2x	A13, B5
		nop	5
	;; condjump to .L310 occurs
		callp	.s2	(__c6xabi_unordd), B3
		clr	.s1	A11, 0, 30, A5
	||	mv	.d1	A4, A1
		clr	.s1	A13, 0, 30, A6
		cmpeq	.l1	A6, A5, A2
	||[A1]	b	.s1	.L312
		nop	5
	;; condjump to .L312 occurs
	[A2]	b	.s1	.L306
		nop	5
	;; condjump to .L306 occurs
		mv	.d1	A5, A1
	[!A1]	b	.s1	.L310
		nop	5
	;; condjump to .L310 occurs
.L312:
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
.L306:
		call	.s2	(__c6xabi_ltd)
	||	mv	.l2x	A12, B4
	||	dmv	.s1	A11, A10, A5:A4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L319, B3, 0
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	4
.L319:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L312
		nop	5
	;; condjump to .L312 occurs
.L310:
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
	||[!A0]	b	.s1	.L321
	[A0]	ldw	.d2t1	*+B14($GOT(digits)), A6
		nop	3
	[!A0]	mv	.d1	A4, A5
	;; condjump to .L321 occurs
		mv	.d1	A4, A5
.L322:
		and	.d1	A7, A0, A3
	||	shru	.s1	A0, 6, A0
		add	.d1	A6, A3, A8
		ldb	.d1t1	*A8, A9
	||[A0]	b	.s1	.L322
		nop	4
		stb	.d1t1	A9, *A5++[1]
	;; condjump to .L322 occurs
.L321:
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
	[!A0]	b	.s1	.L331
	||[!A0]	stw	.d1t2	B4, *A4
	[!A0]	stw	.d1t2	B4, *+A4(4)
	||[A0]	ldw	.d2t1	*B4, A3
	[A0]	stw	.d1t2	B4, *+A4(4)
		nop	3
	;; condjump to .L331 occurs
		stw	.d1t1	A3, *A4
		stw	.d2t1	A4, *B4
		ldw	.d1t1	*A4, A1
		nop	4
	[A1]	stw	.d1t1	A4, *+A1(4)
.L331:
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
	[!A0]	b	.s1	.L350
	||	stw	.d2t2	B12, *+B15(40)
		stw	.d2t2	B3, *+B15(28)
		mv	.s2x	A6, B11
	||	mv	.d1	A4, A14
	||	mv	.d2	B4, B10
		nop	3
	;; condjump to .L350 occurs
.L352:
		call	.s2x	A15
	||	mv	.d1	A14, A4
	||	add	.s1	1, A11, A11
		mv	.l2x	A10, B4
	||	addkpc	.s2	.L366, B3, 0
		mv	.l2x	A10, B12
	||	add	.d1	A10, A12, A10
	;; indirect call occurs, with return value
		nop	3
.L366:
		mv	.s1	A4, A1
	||	cmpeq	.l1	A11, A13, A2
	[!A1]	b	.s1	.L349
		nop	5
	;; condjump to .L349 occurs
	[!A2]	b	.s1	.L352
		nop	5
	;; condjump to .L352 occurs
.L350:
		mv	.d1	A12, A0
	||	mpy32	.m1	A12, A13, A4
	||	add	.l1	1, A13, A3
	||	mv	.s1	A12, A6
	||	mv	.l2x	A14, B4
	[!A0]	b	.s1	.L349
	||	stw	.d2t1	A3, *B11
		nop	3
		add	.d2x	B10, A4, B12
		nop	1
	;; condjump to .L349 occurs
		callp	.s2	(memmove), B3
	||	mv	.l1x	B12, A4
.L349:
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
	[!A0]	b	.s1	.L369
	||	stw	.d2t2	B3, *+B15(28)
		mv	.l1x	B6, A14
		mv	.l1x	B4, A10
		nop	3
	;; condjump to .L369 occurs
.L371:
		call	.s2x	A13
	||	mv	.d1	A12, A4
	||	add	.l1	1, A11, A11
	||	mv	.s1	A10, A15
		mv	.l2x	A10, B4
	||	add	.d1	A10, A14, A10
	||	addkpc	.s2	.L381, B3, 0
	;; indirect call occurs, with return value
		nop	4
.L381:
		mv	.s1	A4, A1
	||	cmpeq	.l1x	A11, B10, A2
	[!A1]	b	.s1	.L368
		nop	5
	;; condjump to .L368 occurs
	[!A2]	b	.s1	.L371
		nop	5
	;; condjump to .L371 occurs
.L369:
		mvk	.d1	0, A15
.L368:
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
	[!A1]	b	.s1	.L385
		nop	5
	;; condjump to .L385 occurs
.L386:
		ldb	.d1t1	*++A4[1], A18
		nop	4
		ext	.s1	A18, 24, 24, A5
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A17, A5, A20
	||	shl	.s1	A18, 24, A7
		cmpltu	.l1	4, A19, A21
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L386
		nop	5
	;; condjump to .L386 occurs
.L385:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		cmpeq	.l1	A24, A23, A1
	||	mvk	.s1	45, A25
	[A1]	b	.s1	.L387
	||	cmpeq	.l1	A25, A23, A1
		nop	5
	;; condjump to .L387 occurs
	[A1]	b	.s1	.L388
		nop	5
	;; condjump to .L388 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B1
		cmpltu	.l1	9, A5, A2
	[A2]	b	.s1	.L396
	||[!A2]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L396 occurs
.L390:
		mvk	.d1	0, A4
.L393:
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
	[!B2]	b	.s1	.L393
		nop	5
	;; condjump to .L393 occurs
		ret	.s2	B3
	||[!B1]	sub	.d1	A29, A30, A4
		nop	5
	;; return occurs
.L388:
		ldb	.d1t1	*+A4(1), A18
	||	add	.s1	1, A4, A5
		nop	4
		ext	.s1	A18, 24, 24, A26
		subah	.d1	A26, 24, A26
		nop	1
		cmpltu	.l2x	9, A26, B0
	[!B0]	b	.s1	.L390
	||[!B0]	mvk	.d2	1, B1
		nop	5
	;; condjump to .L390 occurs
.L396:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L387:
		ldb	.d1t1	*+A4(1), A18
	||	add	.s1	1, A4, A5
	||	mvk	.d2	0, B1
		nop	4
		ext	.s1	A18, 24, 24, A4
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A0
	[A0]	b	.s1	.L396
	[!A0]	b	.s1	.L390
		nop	5
	;; condjump to .L396 occurs
	;; jump to .L390 occurs
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
	[!A1]	b	.s1	.L410
		nop	5
	;; condjump to .L410 occurs
.L411:
		ldb	.d1t1	*++A4[1], A18
		nop	4
		ext	.s1	A18, 24, 24, A5
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A17, A5, A20
	||	shl	.s1	A18, 24, A7
		cmpltu	.l1	4, A19, A21
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L411
		nop	5
	;; condjump to .L411 occurs
.L410:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		cmpeq	.l1	A24, A23, A1
	||	mvk	.s1	45, A25
	[A1]	b	.s1	.L412
	||	cmpeq	.l1	A25, A23, A1
		nop	5
	;; condjump to .L412 occurs
	[A1]	b	.s1	.L431
		nop	5
	;; condjump to .L431 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B1
		cmpltu	.l1	9, A5, A2
	[A2]	b	.s1	.L420
	||[!A2]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L420 occurs
.L414:
		mvk	.d1	0, A4
.L417:
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
	[!B2]	b	.s1	.L417
		nop	5
	;; condjump to .L417 occurs
		ret	.s2	B3
	||[!B1]	sub	.d1	A29, A30, A4
		nop	5
	;; return occurs
.L431:
		ldb	.d1t1	*+A4(1), A18
	||	add	.s1	1, A4, A5
		nop	4
		ext	.s1	A18, 24, 24, A26
		subah	.d1	A26, 24, A26
		nop	1
		cmpltu	.l2x	9, A26, B0
	[!B0]	b	.s1	.L414
	||[!B0]	mvk	.d2	1, B1
		nop	5
	;; condjump to .L414 occurs
.L420:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L412:
		ldb	.d1t1	*+A4(1), A18
	||	add	.s1	1, A4, A5
	||	mvk	.d2	0, B1
		nop	4
		ext	.s1	A18, 24, 24, A4
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A0
	[A0]	b	.s1	.L420
	[!A0]	b	.s1	.L414
		nop	5
	;; condjump to .L420 occurs
	;; jump to .L414 occurs
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
	[!A0]	b	.s1	.L433
	[A0]	mvk	.s1	32, A8
		nop	4
	;; condjump to .L433 occurs
.L434:
		ldb	.d1t1	*++A4[1], A3
		nop	4
		ext	.s1	A3, 24, 24, A5
		sub	.d1	A5, 9, A19
	||	cmpeq	.l1	A8, A5, A20
	||	shl	.s1	A3, 24, A7
		cmpltu	.l1	4, A19, A21
		cmpeq	.l1	0, A21, A22
		or	.d1	A20, A22, A1
	[A1]	b	.s1	.L434
		nop	5
	;; condjump to .L434 occurs
.L433:
		shr	.s1	A7, 24, A23
		mvk	.s1	43, A24
		mvk	.s1	45, A25
	||	cmpeq	.l1	A24, A23, A2
		cmpeq	.l1	A25, A23, A0
	||[A2]	b	.s1	.L435
		nop	5
	;; condjump to .L435 occurs
	[A0]	b	.s1	.L436
		nop	5
	;; condjump to .L436 occurs
		subah	.d1	A5, 24, A5
	||	mvk	.d2	0, B0
		nop	1
		cmpltu	.l2x	9, A5, B2
	[B2]	b	.s1	.L444
	||[!B2]	mv	.d1	A4, A8
		nop	5
	;; condjump to .L444 occurs
.L438:
		mvk	.d1	0, A4
	||	mvk	.l1	0, A5
.L441:
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
	[!A2]	b	.s1	.L441
	||	sub	.d1	A19, A30, A22
		sub	.d1	A22, A23, A5
		nop	4
	;; condjump to .L441 occurs
	[B0]	b	.s1	.L432
		nop	5
	;; condjump to .L432 occurs
		sub	.d1	A28, A6, A4
	||	sub	.s1	A30, A19, A8
		cmpltu	.l1	A28, A4, A3
		sub	.d1	A8, A3, A5
.L432:
		ret	.s2	B3
		nop	5
	;; return occurs
.L436:
		ldb	.d1t1	*+A4(1), A3
	||	add	.s1	1, A4, A8
		nop	4
		ext	.s1	A3, 24, 24, A26
		subah	.d1	A26, 24, A26
		nop	1
		cmpltu	.l2x	9, A26, B1
	[!B1]	b	.s1	.L438
	||[!B1]	mvk	.d2	1, B0
		nop	5
	;; condjump to .L438 occurs
.L444:
		ret	.s2	B3
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; return occurs
.L435:
		ldb	.d1t1	*+A4(1), A3
	||	add	.s1	1, A4, A8
		nop	4
		ext	.s1	A3, 24, 24, A4
		subah	.d1	A4, 24, A4
		nop	1
		cmpltu	.l2x	9, A4, B0
	[B0]	b	.s1	.L444
	||	mvk	.d2	0, B0
		nop	5
	;; condjump to .L444 occurs
		b	.s1	.L438
		nop	5
	;; jump to .L438 occurs
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
.L470:
		mv	.d1	A10, A0
	[!A0]	b	.s1	.L458
		nop	5
	;; condjump to .L458 occurs
.L473:
		shru	.s2x	A10, 1, B10
	||	mv	.d1	A14, A4
	||	add	.s1	-1, A10, A10
		nop	1
		mpy32	.m1x	A12, B10, A3
		call	.s2x	A15
		addkpc	.s2	.L474, B3, 0
		nop	1
		add	.d1	A13, A3, A11
		nop	1
	;; indirect call occurs, with return value
		mv	.l2x	A11, B4
.L474:
		cmpgt	.l1	0, A4, A1
	||	mv	.d1	A4, A2
	||	mv	.s1x	B10, A5
	[A1]	b	.s1	.L462
	||[!A1]	add	.d1	A11, A12, A13
	||	sub	.l1	A10, A5, A10
		nop	5
	;; condjump to .L462 occurs
	[A2]	b	.s1	.L470
		nop	5
	;; condjump to .L470 occurs
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
.L462:
		mv	.l1x	B10, A10
		mv	.d1	A10, A0
	[A0]	b	.s1	.L473
		nop	5
	;; condjump to .L473 occurs
.L458:
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
	[!A0]	b	.s1	.L480
	||	stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B11, *+B15(40)
		stw	.d2t2	B10, *+B15(36)
		stw	.d2t2	B3, *+B15(32)
	;; condjump to .L480 occurs
		mv	.d1	A4, A15
	||	mv	.l1x	B4, A12
	||	mv	.s1	A8, A14
		mv	.s1x	B6, A11
	||	mv	.d1	A6, A10
		mv	.l1x	B8, A13
.L476:
		shr	.s2x	A10, 1, B11
	||	sub	.d1	A10, 1, A10
	||	mv	.l1	A13, A6
	||	mv	.s1	A15, A4
		mpy32	.m2x	B11, A11, B10
	||	shr	.s1	A10, 1, A10
		call	.s2x	A14
		addkpc	.s2	.L491, B3, 0
		nop	1
		add	.d2x	B10, A12, B10
		mv	.d2	B10, B4
	;; indirect call occurs, with return value
		nop	1
.L491:
		mv	.s1	A4, A1
	||	cmplt	.l1	0, A4, A2
	[!A1]	b	.s1	.L475
	||	mv	.d1	A10, A1
	||[A2]	add	.l1x	A11, B10, A12
		nop	5
	;; condjump to .L475 occurs
	[!A2]	b	.s1	.L478
		nop	5
	;; condjump to .L478 occurs
	[A1]	b	.s1	.L476
		nop	5
	;; condjump to .L476 occurs
.L480:
		mvk	.d2	0, B10
.L475:
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
.L478:
		mv	.l1x	B11, A0
	[A0]	b	.s1	.L476
	||	mv	.l1x	B11, A10
		nop	5
	;; condjump to .L476 occurs
		b	.s1	.L475
	||	mvk	.d2	0, B10
		nop	5
	;; jump to .L475 occurs
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(16)
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L494, B3, 0
		nop	4
.L494:
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
	||	addkpc	.s2	.L499, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L499:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L500, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L500:
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
		addkpc	.s2	.L505, B3, 0
		nop	4
.L505:
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
	||	addkpc	.s2	.L510, B3, 0
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
	;; call to (__c6xabi_divlli) occurs, with return value
		dmv	.s1	A5, A4, A13:A12
	||	mv	.d1	A3, A10
	||	mv	.l1x	B4, A14
.L510:
		call	.s2	(__c6xabi_remlli)
	||	dmv	.s1	A5, A4, A7:A6
	||	mv	.l2x	A15, B5
		mv	.l2x	A14, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	stdw	.d1t1	A7:A6, *A10
	||	addkpc	.s2	.L511, B3, 0
	;; call to (__c6xabi_remlli) occurs, with return value
		nop	4
.L511:
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
	[!A1]	b	.s1	.L516
		nop	5
	;; condjump to .L516 occurs
.L513:
		cmpeq	.l1x	A1, B4, A0
	[A0]	b	.s1	.L512
	||[!A0]	ldw	.d1t1	*++A4[1], A1
		nop	5
	;; condjump to .L512 occurs
	[A1]	b	.s1	.L513
		nop	5
	;; condjump to .L513 occurs
.L516:
		mvk	.d1	0, A4
.L512:
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
	[!A1]	b	.s1	.L521
		nop	5
	;; condjump to .L521 occurs
.L522:
	[!A0]	b	.s1	.L521
	||[A0]	ldw	.d2t1	*++B4[1], A3
	[A0]	ldw	.d1t1	*++A4[1], A0
		nop	4
	;; condjump to .L521 occurs
		cmpeq	.l1	A3, A0, A1
	[A1]	b	.s1	.L522
		nop	5
	;; condjump to .L522 occurs
.L521:
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
.L529:
		ldw	.d2t1	*B4++[1], A0
		nop	4
	[A0]	b	.s1	.L529
	||	stw	.d1t1	A0, *++A3[1]
		nop	5
	;; condjump to .L529 occurs
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
	[!A0]	b	.s1	.L533
	||[!A0]	mvk	.d1	0, A4
		mv	.d1	A4, A5
		nop	4
	;; condjump to .L533 occurs
.L535:
		ldw	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L535
		nop	5
	;; condjump to .L535 occurs
		sub	.d1	A5, A4, A4
		shr	.s1	A4, 2, A4
.L533:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L549
		nop	5
	;; condjump to .L549 occurs
.L542:
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
	[!A0]	b	.s1	.L553
		nop	5
	;; condjump to .L553 occurs
	[A2]	b	.s1	.L542
		nop	5
	;; condjump to .L542 occurs
.L549:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L553:
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
	[!A1]	b	.s1	.L561
	||[A1]	mv	.d1	A4, A5
		nop	5
	;; condjump to .L561 occurs
.L556:
		mv	.s1	A5, A4
	||	ldw	.d1t1	*A5++[1], A3
	||	mv	.l1x	B4, A6
		sub	.d1	A1, 1, A1
		nop	3
		cmpeq	.l1	A6, A3, A2
	[A2]	b	.s1	.L554
		nop	5
	;; condjump to .L554 occurs
	[A1]	b	.s1	.L556
		nop	5
	;; condjump to .L556 occurs
.L561:
		mvk	.d1	0, A4
.L554:
		ret	.s2	B3
		nop	5
	;; return occurs
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
		mv	.d1	A6, A2
	[!A2]	b	.s1	.L573
		nop	5
	;; condjump to .L573 occurs
.L566:
		ldw	.d2t1	*B4, A7
	||	sub	.d1	A2, 1, A2
	||	add	.s2	4, B4, B4
		ldw	.d1t1	*A4, A8
	||	add	.s1	4, A4, A4
		nop	4
		cmpeq	.l1	A7, A8, A1
	[!A1]	b	.s1	.L577
		nop	5
	;; condjump to .L577 occurs
	[A2]	b	.s1	.L566
		nop	5
	;; condjump to .L566 occurs
.L573:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L577:
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
	[!A0]	b	.s1	.L579
	||	stw	.d2t2	B14, *+B15(16)
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
	||	shl	.s1	A6, 2, A6
		nop	3
	;; condjump to .L579 occurs
		callp	.s2	(memcpy), B3
.L579:
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
	||[A0]	b	.s1	.L594
		nop	5
	;; condjump to .L594 occurs
	[!A1]	b	.s1	.L601
		nop	5
	;; condjump to .L601 occurs
		mv	.d1	A6, A1
	||	add	.l1	-4, A7, A16
	||	add	.d2x	B4, A7, B4
	||	add	.s1	A4, A7, A18
	[!A1]	b	.s1	.L594
		shru	.s1	A16, 2, A17
		add	.d1	A17, 1, A2
		nop	3
	;; condjump to .L594 occurs
.L591:
		sub	.d1	A2, 1, A2
	||	ldw	.d2t1	*--B4[1], A20
	[A2]	b	.s1	.L591
		nop	3
		stw	.d1t1	A20, *--A18[1]
		nop	1
	;; condjump to .L591 occurs
.L594:
		ret	.s2	B3
		nop	5
	;; return occurs
.L601:
		mv	.d1	A6, A2
	||	add	.l1	-4, A4, A9
	||	mv	.s1	A6, A0
	[!A2]	b	.s1	.L594
		nop	5
	;; condjump to .L594 occurs
.L592:
		sub	.d1	A0, 1, A0
	||	ldw	.d2t1	*B4++[1], A20
	[A0]	b	.s1	.L592
		nop	3
		stw	.d1t1	A20, *++A9[1]
		nop	1
	;; condjump to .L592 occurs
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
	[!A0]	b	.s1	.L603
		mvc	.s2x	A0, ILC
		nop	4
	;; condjump to .L603 occurs
		sploop	1
.L604:
		stw	.d1t2	B4, *A3++[1]
		spkernel	1, 0
.L603:
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
	[!A0]	b	.s1	.L612
		nop	5
	;; condjump to .L612 occurs
		mv	.d1	A6, A2
	||	add	.s1	A4, A6, A16
	||	add	.d2x	B4, A6, B5
	[!A2]	b	.s1	.L611
	||	sub	.d1	A16, A4, A0
		nop	5
	;; condjump to .L611 occurs
.L614:
		add	.s1	-1, A0, A0
	||	ldb	.d1t1	*--A16[1], A17
	[A0]	b	.s1	.L614
		nop	3
		stb	.d2t1	A17, *--B5[1]
		nop	1
	;; condjump to .L614 occurs
.L611:
		ret	.s2	B3
		nop	5
	;; return occurs
.L612:
		sub	.d1	A6, 1, A18
	||	add	.s1	1, A4, A17
	||	cmpeq	.l1	A5, A4, A1
		mv	.d1	A6, A2
	||	sub	.l1x	B4, A17, A8
	||[A1]	b	.s1	.L611
		cmpltu	.l2x	11, A18, B0
	||	neg	.l1	A4, A16
		cmpltu	.l2x	2, A8, B1
	||[!B0]	add	.d1	A4, 1, A3
	||	and	.s1	2, A16, A1
	[B0]	mv	.d1	A17, A3
	||[!A1]	add	.s1x	1, B4, A9
		nop	2
	;; condjump to .L611 occurs
	[!A2]	b	.s1	.L611
		nop	5
	;; condjump to .L611 occurs
	[!B0]	b	.s1	.L615
		nop	5
	;; condjump to .L615 occurs
	[!B1]	b	.s1	.L615
	||[B1]	and	.d1	3, A16, A3
		mv	.d1	A3, A0
		cmpeq	.l2x	3, A3, B2
		nop	3
	;; condjump to .L615 occurs
	[!A0]	b	.s1	.L625
	||[A0]	ldb	.d1t1	*A4, A19
		nop	4
	[A0]	stb	.d2t1	A19, *B4
	;; condjump to .L625 occurs
	[!A1]	b	.s1	.L616
	||[A1]	ldb	.d1t1	*+A4(1), A20
		nop	4
	[A1]	stb	.d2t1	A20, *+B4(1)
	;; condjump to .L616 occurs
	[!B2]	b	.s1	.L616
	||[!B2]	add	.d1	A4, 2, A17
	||[!B2]	add	.l1x	2, B4, A9
	[!B2]	add	.l1	-2, A6, A18
	||[B2]	ldb	.d1t1	*+A4(2), A21
	||[B2]	add	.s1	3, A4, A17
	[B2]	add	.s1x	3, B4, A9
	||[B2]	sub	.d1	A6, 3, A18
		nop	3
	;; condjump to .L616 occurs
		stb	.d2t1	A21, *+B4(2)
.L616:
		sub	.d1	A6, A3, A6
	||	add	.l1	A4, A3, A22
	||	add	.s1x	A3, B4, A24
		and	.d1	-4, A6, A23
		sub	.d1	A23, 4, A4
		shru	.s1	A4, 2, A25
		add	.d1	A25, 1, A2
.L620:
		add	.s1	-1, A2, A2
	||	ldw	.d1t1	*A22++[1], A26
	[A2]	b	.s1	.L620
		nop	3
		stnw	.d1t1	A26, *A24++[1]
		nop	1
	;; condjump to .L620 occurs
		cmpeq	.l1	A23, A6, A0
	||	add	.d1	A17, A23, A27
	||	sub	.s1	A18, A23, A28
	[A0]	b	.s1	.L611
	||[!A0]	ldb	.d1t1	*A27, A29
	||	add	.l1	A9, A23, A9
		cmpeq	.l2x	1, A28, B0
		cmpeq	.l2x	2, A28, B1
		nop	2
	[!A0]	stb	.d1t1	A29, *A9
	;; condjump to .L611 occurs
	[B0]	b	.s1	.L611
	||[!B0]	ldb	.d1t1	*+A27(1), A30
		nop	4
	[!B0]	stb	.d1t1	A30, *+A9(1)
	;; condjump to .L611 occurs
	[B1]	b	.s1	.L611
	||[!B1]	ldb	.d1t1	*+A27(2), A31
	||[!B1]	ret	.s2	B3
		nop	4
	[!B1]	stb	.d1t1	A31, *+A9(2)
	;; condjump to .L611 occurs
	;; return occurs
.L625:
		b	.s1	.L620
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
	;; jump to .L620 occurs
.L615:
		add	.d1	A4, A6, A5
	||	sub	.d2	B4, 1, B4
		sub	.d1	A5, A3, A7
		add	.d1	A7, 1, A1
		nop	1
		mvc	.s2x	A1, ILC
		nop	3
		sploop	6
.L623:
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
.L682:
		shru	.s1	A4, A3, A5
	||	sub	.d1	A1, 1, A1
	||	add	.l1	1, A3, A3
		and	.d1	1, A5, A0
	[A0]	b	.s1	.L686
		nop	5
	;; condjump to .L686 occurs
	[A1]	b	.s1	.L682
		nop	5
	;; condjump to .L682 occurs
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L686:
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
	[!A0]	b	.s1	.L687
	||[!A0]	mvk	.d1	0, A4
	[A0]	and	.d1	1, A0, A4
		mv	.d1	A4, A1
		nop	3
	;; condjump to .L687 occurs
	[A1]	b	.s1	.L687
	||[!A1]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L687 occurs
.L689:
		shr	.s1	A0, 1, A0
	||	add	.d1	A4, 1, A4
		and	.d1	1, A0, A1
	[!A1]	b	.s1	.L689
		nop	5
	;; condjump to .L689 occurs
.L687:
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
	||	addkpc	.s2	.L701, B3, 0
		mvklh	.s2	65407, B4
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	3
.L701:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L695
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L695 occurs
		call	.s2	(__c6xabi_gtf)
	||	mv	.d1	A10, A4
	||	mvk	.l2	-1, B4
		addkpc	.s2	.L702, B3, 0
		mvklh	.s2	32639, B4
	;; call to (__c6xabi_gtf) occurs, with return value
		nop	3
.L702:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L695:
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
	||	addkpc	.s2	.L709, B3, 0
		mvklh	.s2	65519, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L709:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L703
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L703 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	-1, B4
	||	mvk	.l2	-1, B5
		addkpc	.s2	.L710, B3, 0
		mvklh	.s2	32751, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L710:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L703:
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
	||	addkpc	.s2	.L717, B3, 0
		mvklh	.s2	65519, B5
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L717:
		mv	.d1	A4, A0
	[A0]	b	.s1	.L711
	||[A0]	mvk	.d1	1, A4
		nop	5
	;; condjump to .L711 occurs
		call	.s2	(__c6xabi_gtd)
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.d2	-1, B4
	||	mvk	.l2	-1, B5
		addkpc	.s2	.L718, B3, 0
		mvklh	.s2	32751, B5
	;; call to (__c6xabi_gtd) occurs, with return value
		nop	3
.L718:
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L711:
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
	||	addkpc	.s2	.L721, B3, 0
	;; call to (__c6xabi_fltid) occurs, with return value
		nop	4
.L721:
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
	||[!A0]	b	.s1	.L723
		add	.d1	A2, 3, A3
		cmpgtu	.l1	5, A3, A1
	||	cmpeq	.l2x	3, A2, B0
	[A1]	mvk	.d1	5, A3
		cmpgtu	.l1	A3, A9, A1
		nop	1
	;; condjump to .L723 occurs
	[A1]	b	.s1	.L732
	||	and	.d1	2, A5, A1
	[!A1]	add	.l1x	1, B4, A16
		nop	4
	;; condjump to .L732 occurs
	[!A2]	b	.s1	.L733
	||[A2]	ldb	.d1t1	*A4, A17
	[A2]	ldb	.d2t1	*B4, A8
		nop	4
	;; condjump to .L733 occurs
	[!A1]	b	.s1	.L726
	||	xor	.d1	A17, A8, A18
	||[!A1]	add	.l1	1, A4, A17
	||[A1]	ldb	.d2t1	*+B4(1), A20
		stb	.d1t1	A18, *A4
	[A1]	ldb	.d1t1	*+A4(1), A19
		nop	3
	;; condjump to .L726 occurs
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
.L726:
		sub	.d1	A6, A2, A6
	||	add	.s1	A4, A2, A22
	||	add	.d2x	B4, A2, B4
		and	.d1	-4, A6, A23
		sub	.d1	A23, 4, A24
		shru	.s1	A24, 2, A25
		add	.d1	A25, 1, A2
.L730:
		ldw	.d1t1	*A22, A26
	||	add	.s1	-1, A2, A2
		ldnw	.d2t1	*B4++[1], A27
	[A2]	b	.s1	.L730
		nop	3
		xor	.d1	A26, A27, A28
		stw	.d1t1	A28, *A22++[1]
	;; condjump to .L730 occurs
		cmpeq	.l1	A6, A23, A0
	||	add	.d1	A16, A23, A29
	||	add	.s1	A17, A23, A7
	[A0]	b	.s1	.L723
	||	sub	.d1	A9, A23, A6
		mv	.l2x	A29, B4
		nop	4
	;; condjump to .L723 occurs
.L724:
		cmpeq	.l2x	1, A6, B1
	||	ldb	.d1t1	*A7, A30
	||	cmpeq	.l1	3, A6, A1
		ldb	.d2t1	*B4, A31
	||	cmpeq	.l2x	2, A6, B2
	||	cmpeq	.l1	5, A6, A2
	[B1]	b	.s1	.L723
	||[!B1]	ldb	.d1t1	*+A7(1), A3
	||	cmpeq	.l2x	4, A6, B0
	[!B1]	ldb	.d2t1	*+B4(1), A17
		nop	2
		xor	.d1	A31, A30, A5
		stb	.d1t1	A5, *A7
	;; condjump to .L723 occurs
	[B2]	b	.s1	.L723
	||	xor	.l1	A3, A17, A16
	||[!B2]	ldb	.d1t1	*+A7(2), A9
		stb	.d1t1	A16, *+A7(1)
	[!B2]	ldb	.d2t1	*+B4(2), A8
		nop	3
	;; condjump to .L723 occurs
	[A1]	b	.s1	.L723
	||[!A1]	ldb	.d1t1	*+A7(3), A19
		xor	.d1	A9, A8, A18
	||[!A1]	ldb	.d2t1	*+B4(3), A20
		stb	.d1t1	A18, *+A7(2)
		nop	3
	;; condjump to .L723 occurs
	[B0]	b	.s1	.L723
	||	xor	.l1	A19, A20, A21
	||[!B0]	ldb	.d1t1	*+A7(4), A22
		stb	.d1t1	A21, *+A7(3)
	[!B0]	ldb	.d2t1	*+B4(4), A23
		nop	3
	;; condjump to .L723 occurs
	[A2]	b	.s1	.L723
	||[!A2]	ldb	.d1t1	*+A7(5), A6
		xor	.d1	A22, A23, A24
	||[!A2]	ldb	.d2t1	*+B4(5), A25
		stb	.d1t1	A24, *+A7(4)
		nop	3
	;; condjump to .L723 occurs
		xor	.d1	A6, A25, A26
		stb	.d1t1	A26, *+A7(5)
.L723:
		ret	.s2	B3
		nop	5
	;; return occurs
.L733:
		b	.s1	.L730
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
	;; jump to .L730 occurs
.L732:
		b	.s1	.L724
	||	mv	.d1	A4, A7
		nop	5
	;; jump to .L724 occurs
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
		ldb	.d1t1	*A4, A0
	||	mv	.l1	A6, A1
	||	mv	.s1	A4, A3
		nop	4
	[!A0]	b	.s1	.L756
		nop	5
	;; condjump to .L756 occurs
.L757:
		ldb	.d1t1	*++A3[1], A2
		nop	4
	[A2]	b	.s1	.L757
		nop	5
	;; condjump to .L757 occurs
.L756:
	[!A1]	b	.s1	.L758
	||[A1]	sub	.d2	B4, 1, B4
		nop	5
	;; condjump to .L758 occurs
.L759:
		ldb	.d2t1	*++B4[1], A5
	||	sub	.d1	A1, 1, A1
		nop	4
		ext	.s1	A5, 24, 24, A0
	||	stb	.d1t1	A5, *A3++[1]
	[!A0]	b	.s1	.L761
		nop	5
	;; condjump to .L761 occurs
	[A1]	b	.s1	.L759
		nop	5
	;; condjump to .L759 occurs
.L758:
		mvk	.d1	0, A6
		stb	.d1t1	A6, *A3
.L761:
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
	[!A1]	b	.s1	.L770
		nop	5
	;; condjump to .L770 occurs
.L771:
		add	.d1	A5, A4, A3
	||	sub	.d2	B4, 1, B4
		ldb	.d1t1	*A3, A1
		nop	4
	[A1]	b	.s1	.L773
		nop	5
	;; condjump to .L773 occurs
.L770:
		ret	.s2	B3
		nop	5
	;; return occurs
.L773:
		mv	.s1x	B4, A1
	||	add	.d1	A4, 1, A4
	[A1]	b	.s1	.L771
		nop	5
	;; condjump to .L771 occurs
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
	[!A0]	b	.s1	.L784
	||[A0]	sub	.d2	B4, 1, B4
		shl	.s1	A3, 24, A8
		nop	4
	;; condjump to .L784 occurs
.L780:
		mv	.l1x	B4, A6
	||	shr	.s1	A8, 24, A5
.L783:
		ldb	.d1t1	*++A6[1], A1
		nop	4
		cmpeq	.l1	A5, A1, A0
	||[!A1]	b	.s1	.L789
		nop	5
	;; condjump to .L789 occurs
	[!A0]	b	.s1	.L783
		nop	5
	;; condjump to .L783 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L789:
		ldb	.d1t1	*++A4[1], A7
		nop	4
		ext	.s1	A7, 24, 24, A2
	[A2]	b	.s1	.L780
		shl	.s1	A7, 24, A8
		nop	4
	;; condjump to .L780 occurs
.L784:
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
.L792:
		mv	.s1	A3, A6
	||	ldb	.d1t1	*A3++[1], A7
		nop	4
		shl	.s1	A7, 24, A5
		mv	.d1	A5, A1
	||	ext	.s1	A7, 24, 24, A8
	[A1]	b	.s1	.L792
	||	cmpeq	.l1x	A8, B4, A0
	[A0]	mv	.d1	A6, A4
		nop	4
	;; condjump to .L792 occurs
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
	[!A0]	b	.s1	.L806
		shl	.s1	A4, 24, A17
		nop	4
	;; condjump to .L806 occurs
.L798:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s1	.L798
		nop	5
	;; condjump to .L798 occurs
		mv	.l1x	B4, A6
		sub	.d1	A5, A6, A2
	[!A2]	b	.s1	.L806
	||[A2]	add	.d1x	A2, B4, A16
	[A2]	shr	.s1	A17, 24, A17
		nop	4
	;; condjump to .L806 occurs
.L804:
		ldb	.d1t1	*A3, A8
	||	mv	.l1	A3, A4
	||	mv	.s1	A3, A7
		add	.d1	A3, 1, A3
		nop	3
		ext	.s1	A8, 24, 24, A0
		cmpeq	.l1	A17, A0, A1
	[A1]	b	.s1	.L803
		nop	5
	;; condjump to .L803 occurs
	[A0]	b	.s1	.L804
		nop	5
	;; condjump to .L804 occurs
		mvk	.d1	0, A4
.L796:
		ret	.s2	B3
		nop	5
	;; return occurs
.L803:
		mv	.l1x	B4, A20
	||	extu	.s1	A8, 24, 24, A27
.L800:
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
	[!A2]	b	.s1	.L801
	||[A2]	ldbu	.d1t1	*++A7[1], A27
		nop	4
		mv	.d1	A27, A0
	;; condjump to .L801 occurs
	[A0]	b	.s1	.L800
		nop	5
	;; condjump to .L800 occurs
		mv	.d1	A20, A18
.L801:
		ldbu	.d1t1	*A18, A28
	||	add	.s1	1, A4, A3
		nop	4
		cmpeq	.l1	A28, A27, A1
	[A1]	b	.s1	.L796
	[!A1]	b	.s1	.L804
		nop	5
	;; condjump to .L796 occurs
	;; jump to .L804 occurs
.L806:
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
	||	addkpc	.s2	.L825, B3, 0
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		dmv	.s1	A5, A4, A11:A10
	||	mv	.l1x	B4, A12
	||	mvk	.d2	0, B4
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	1
.L825:
		mv	.d1	A4, A0
	||	mvk	.d2	0, B4
	||	dmv	.s1	A11, A10, A5:A4
	||	mvk	.l2	0, B5
	[A0]	b	.s1	.L824
		nop	5
	;; condjump to .L824 occurs
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	||	mvk	.d2	0, B4
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.l2	0, B5
	[!A1]	b	.s1	.L816
		nop	5
	;; condjump to .L816 occurs
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A2
	[A2]	b	.s1	.L815
		nop	5
	;; condjump to .L815 occurs
.L816:
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
.L824:
		callp	.s2	(__c6xabi_gtd), B3
	||	dmv	.s1	A13, A12, A5:A4
	||	mvk	.d2	0, B4
	||	mvk	.l2	0, B5
		mv	.d1	A4, A0
	[!A0]	b	.s1	.L816
		nop	5
	;; condjump to .L816 occurs
.L815:
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
	[!A0]	b	.s1	.L829
	||	cmpeq	.l2	1, B6, B0
		add	.d1x	A4, B4, A9
		mv	.s1x	B5, A1
	||	cmpltu	.l1	A9, A4, A2
		nop	3
	;; condjump to .L829 occurs
	[A1]	b	.s1	.L840
		nop	5
	;; condjump to .L840 occurs
	[A2]	b	.s1	.L840
	||[!A2]	ldb	.d1t1	*A6, A16
		nop	4
		shl	.s1	A16, 24, A17
	;; condjump to .L840 occurs
		ext	.s1	A16, 24, 24, A23
.L835:
		mv	.d1	A4, A3
		ldb	.d1t1	*A3++[1], A5
		nop	4
		cmpeq	.l1	A23, A5, A0
	[A0]	b	.s1	.L850
	||[!A0]	mv	.d1	A3, A4
		nop	5
	;; condjump to .L850 occurs
.L831:
		cmpgtu	.l1	A4, A9, A1
	[!A1]	b	.s1	.L835
		nop	5
	;; condjump to .L835 occurs
.L840:
		mvk	.d1	0, A4
.L829:
		ret	.s2	B3
		nop	5
	;; return occurs
.L850:
	[B0]	b	.s1	.L829
	||	sub	.d1	A3, 1, A22
	||	mv	.l1	A6, A21
		add	.l1x	-1, B6, A1
		nop	4
	;; condjump to .L829 occurs
.L832:
		ldbu	.d1t1	*++A22[1], A18
	||	add	.s1	-1, A1, A1
		ldbu	.d1t1	*++A21[1], A8
		nop	4
		cmpeq	.l1	A8, A18, A0
	[!A0]	b	.s1	.L851
		nop	5
	;; condjump to .L851 occurs
	[A1]	b	.s1	.L832
		nop	5
	;; condjump to .L832 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L851:
		cmpgtu	.l1	A3, A9, A1
	||	mv	.d1	A3, A4
	||	shr	.s1	A17, 24, A7
	[A1]	b	.s1	.L840
	||[!A1]	ldb	.d1t1	*A4++[1], A19
		nop	4
		cmpeq	.l1	A19, A7, A0
	;; condjump to .L840 occurs
	[!A0]	b	.s1	.L831
		nop	5
	;; condjump to .L831 occurs
		b	.s1	.L832
	||	mv	.d1	A3, A20
	||	mv	.l1	A4, A3
		sub	.d1	A3, 1, A22
	||	mv	.l1	A20, A4
	||	mv	.s1	A6, A21
		add	.l1x	-1, B6, A1
		nop	3
	;; jump to .L832 occurs
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
		sub	.d2	B15, 24, B15
		mv	.d1	A6, A0
	||	stw	.d2t2	B3, *+B15(20)
	[!A0]	b	.s1	.L853
	||	stw	.d2t2	B14, *+B15(24)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		mv	.d1	A4, A11
	||	mv	.s1	A6, A10
	||[A0]	ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	2
	;; condjump to .L853 occurs
		callp	.s2	(memmove), B3
		nop	1
.L853:
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
	[!A0]	b	.s1	.L860
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		nop	5
	;; condjump to .L860 occurs
.L862:
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
	[A1]	b	.s1	.L862
	||	mv	.d1	A0, A4
	||	add	.l1x	A17, B5, A19
		nop	1
		mv	.l2x	A19, B5
		nop	3
	;; condjump to .L862 occurs
.L860:
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
	[!A0]	b	.s1	.L882
		nop	5
	;; condjump to .L882 occurs
.L868:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L869
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A3
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A3, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L869 occurs
	[A1]	b	.s1	.L868
		nop	5
	;; condjump to .L868 occurs
	[!A2]	b	.s1	.L872
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L872 occurs
.L869:
		mvk	.d1	0, A4
.L874:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L874
		nop	5
	;; condjump to .L874 occurs
.L872:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L882:
		b	.s1	.L874
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L874 occurs
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
	[A0]	b	.s1	.L887
	[A0]	mvk	.s1	63, A4
		nop	4
	;; condjump to .L887 occurs
	[!A1]	lmbd	.l1	1, A4, A4
	[!A1]	addk	.s1	32, A4
	||[A1]	lmbd	.l1	1, A6, A4
		sub	.d1	A4, 1, A4
.L887:
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
	[!A0]	b	.s1	.L894
		nop	5
	;; condjump to .L894 occurs
.L896:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L896
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L896 occurs
.L894:
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
	[A1]	b	.s1	.L902
		nop	5
	;; condjump to .L902 occurs
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[!A1]	b	.s1	.L927
		nop	5
	;; condjump to .L927 occurs
.L902:
	[!A0]	b	.s1	.L905
	||	add	.l1x	-8, B4, A16
	||	sub	.d1	A4, 8, A19
		shl	.s1	A0, 3, A9
		sub	.d1	A9, 8, A17
		shru	.s1	A17, 3, A20
		add	.d1	A20, 1, A2
		nop	1
	;; condjump to .L905 occurs
.L906:
		add	.s1	-1, A2, A2
	||	lddw	.d1t1	*++A16[1], A21:A20
	[A2]	b	.s1	.L906
		nop	3
		stdw	.d1t1	A21:A20, *++A19[1]
		nop	1
	;; condjump to .L906 occurs
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
	||[!A0]	b	.s1	.L901
	||	add	.l1x	A18, B4, A29
		cmpltu	.l2x	2, A26, B1
	||[!A1]	mv	.d1	A18, A7
	||	and	.s1	2, A27, A2
		cmpeq	.l2x	3, A28, B2
	||	add	.d1	A4, A7, A31
		nop	3
	;; condjump to .L901 occurs
	[!B0]	b	.s1	.L908
		nop	5
	;; condjump to .L908 occurs
	[!B1]	b	.s1	.L908
		nop	5
	;; condjump to .L908 occurs
	[!A1]	b	.s1	.L909
	||[A1]	ldb	.d1t1	*A29, A30
		nop	4
	[A1]	stb	.d1t1	A30, *A24
	;; condjump to .L909 occurs
	[!A2]	b	.s1	.L909
	||[A2]	ldb	.d1t1	*A25, A3
	||[A2]	add	.l1	2, A18, A7
		add	.d1x	A7, B4, A5
	||	add	.s1	A4, A7, A9
		nop	3
	[A2]	stb	.d1t1	A3, *A31
	;; condjump to .L909 occurs
	[!B2]	b	.s1	.L909
	||[B2]	ldb	.d1t1	*A5, A8
	||[B2]	add	.l1	3, A18, A7
		nop	4
	[B2]	stb	.d1t1	A8, *A9
	;; condjump to .L909 occurs
.L909:
		sub	.d1	A21, A28, A16
	||	or	.s1	A28, A18, A18
		and	.d1	-4, A16, A19
	||	add	.l1	A4, A18, A17
	||	add	.s1x	A18, B4, A20
		sub	.d1	A19, 4, A22
		shru	.s1	A22, 2, A21
		add	.d1	A21, 1, A0
.L911:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A20++[1], A23
	[A0]	b	.s1	.L911
		nop	3
		stw	.d1t1	A23, *A17++[1]
		nop	1
	;; condjump to .L911 occurs
		cmpeq	.l1	A16, A19, A0
	||	add	.s1	A19, A7, A24
	[A0]	b	.s1	.L901
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
	;; condjump to .L901 occurs
	[!A1]	b	.s1	.L901
	||	stb	.d1t1	A26, *A27
	[A1]	ldb	.d1t1	*A29, A30
		nop	4
	;; condjump to .L901 occurs
	[!A0]	b	.s1	.L901
	||	stb	.d1t1	A30, *A31
	[A0]	ldb	.d1t1	*A6, A5
		nop	4
	;; condjump to .L901 occurs
		stb	.d1t1	A5, *A4
.L901:
		ret	.s2	B3
		nop	5
	;; return occurs
.L927:
		mv	.d1	A6, A2
	||	mv	.l2x	A5, B4
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A5, A3, A0
	[!A2]	b	.s1	.L901
		nop	5
	;; condjump to .L901 occurs
.L915:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*--B4[1], A19
	[A0]	b	.s1	.L915
		nop	3
		stb	.d1t1	A19, *--A4[1]
		nop	1
	;; condjump to .L915 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L905:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L901
		nop	5
	;; condjump to .L901 occurs
.L908:
		sub	.d1	A18, 1, A8
	||	add	.s1x	-1, B4, A9
		add	.d1x	A8, B4, A7
	||	add	.l1	A9, A6, A18
	||	add	.s1	A4, A8, A16
		sub	.d1	A18, A7, A2
.L913:
		add	.s1	-1, A2, A2
	||	ldb	.d1t1	*++A7[1], A19
	[A2]	b	.s1	.L913
		nop	3
		stb	.d1t1	A19, *++A16[1]
		nop	1
	;; condjump to .L913 occurs
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
	[A1]	b	.s1	.L929
		nop	5
	;; condjump to .L929 occurs
		add	.d1x	A6, B4, A7
		cmpgtu	.l1	A4, A7, A5
		mv	.d1	A5, A2
	[!A2]	b	.s1	.L956
		nop	5
	;; condjump to .L956 occurs
.L929:
		sub	.d1	A0, 1, A8
	||	add	.l1x	2, B4, A16
	||[!A0]	b	.s1	.L932
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
	;; condjump to .L932 occurs
	[!B0]	b	.s1	.L933
	||	sub	.d1	A24, 4, A25
		shru	.s1	A25, 2, A26
		nop	4
	;; condjump to .L933 occurs
	[A1]	b	.s1	.L933
	||[!A1]	add	.d1	A26, 1, A0
		nop	5
	;; condjump to .L933 occurs
	[A2]	ldh	.d2t1	*B4, A5
		nop	4
	[A2]	sth	.d1t1	A5, *A4
.L935:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A23++[1], A27
	[A0]	b	.s1	.L935
		nop	3
		stw	.d1t1	A27, *A21++[1]
		nop	1
	;; condjump to .L935 occurs
		and	.d1	1, A20, A1
	||	and	.s1	-2, A20, A28
	[!A1]	b	.s1	.L932
	||	add	.d1	A28, A9, A9
		shl	.s1	A9, 1, A29
		add	.d1x	A29, B4, A30
	||	add	.s1	A4, A29, A3
	[A1]	ldh	.d1t1	*A30, A31
		nop	4
	;; condjump to .L932 occurs
		sth	.d1t1	A31, *A3
.L932:
		and	.d1	1, A6, A0
	[!A0]	b	.s1	.L928
		nop	5
	;; condjump to .L928 occurs
.L957:
		sub	.d1	A6, 1, A6
		add	.d1x	A6, B4, A19
	||	add	.s1	A4, A6, A4
		ldb	.d1t1	*A19, A20
		nop	4
		stb	.d1t1	A20, *A4
.L928:
		ret	.s2	B3
		nop	5
	;; return occurs
.L956:
		mv	.d1	A6, A0
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A7, A3, A1
	[!A0]	b	.s1	.L928
		nop	5
	;; condjump to .L928 occurs
.L940:
		add	.s1	-1, A1, A1
	||	ldb	.d1t1	*--A7[1], A21
	[A1]	b	.s1	.L940
		nop	3
		stb	.d1t1	A21, *--A4[1]
		nop	1
	;; condjump to .L940 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L933:
		shl	.s1	A0, 1, A7
	||	add	.l1x	-2, B4, A5
	||	sub	.d1	A4, 2, A16
		sub	.d1	A7, 2, A8
		shru	.s1	A8, 1, A17
		add	.d1	A17, 1, A2
.L937:
		add	.s1	-1, A2, A2
	||	ldh	.d1t1	*++A5[1], A21
	[A2]	b	.s1	.L937
		nop	3
		sth	.d1t1	A21, *++A16[1]
		nop	1
	;; condjump to .L937 occurs
		and	.d1	1, A6, A0
	[!A0]	b	.s1	.L928
		nop	5
	;; condjump to .L928 occurs
		b	.s1	.L957
		nop	5
	;; jump to .L957 occurs
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
		mv	.l1x	B4, A3
	||	shru	.s1	A6, 2, A0
	||	and	.d1	-4, A6, A18
		cmpgtu	.l1	A3, A4, A1
	[A1]	b	.s1	.L959
		nop	5
	;; condjump to .L959 occurs
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[!A1]	b	.s1	.L984
		nop	5
	;; condjump to .L984 occurs
.L959:
	[!A0]	b	.s1	.L962
	||	add	.l1x	-4, B4, A16
	||	sub	.d1	A4, 4, A19
		shl	.s1	A0, 2, A9
		sub	.d1	A9, 4, A17
		shru	.s1	A17, 2, A20
		add	.d1	A20, 1, A2
		nop	1
	;; condjump to .L962 occurs
.L963:
		add	.s1	-1, A2, A2
	||	ldw	.d1t1	*++A16[1], A20
	[A2]	b	.s1	.L963
		nop	3
		stw	.d1t1	A20, *++A19[1]
		nop	1
	;; condjump to .L963 occurs
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
	||[!A0]	b	.s1	.L958
	||	add	.l1x	A18, B4, A29
		cmpltu	.l2x	2, A26, B1
	||[!A1]	mv	.d1	A18, A7
	||	and	.s1	2, A27, A2
		cmpeq	.l2x	3, A28, B2
	||	add	.d1	A4, A7, A31
		nop	3
	;; condjump to .L958 occurs
	[!B0]	b	.s1	.L965
		nop	5
	;; condjump to .L965 occurs
	[!B1]	b	.s1	.L965
		nop	5
	;; condjump to .L965 occurs
	[!A1]	b	.s1	.L966
	||[A1]	ldb	.d1t1	*A29, A30
		nop	4
	[A1]	stb	.d1t1	A30, *A24
	;; condjump to .L966 occurs
	[!A2]	b	.s1	.L966
	||[A2]	ldb	.d1t1	*A25, A3
	||[A2]	add	.l1	2, A18, A7
		add	.d1x	A7, B4, A5
	||	add	.s1	A4, A7, A9
		nop	3
	[A2]	stb	.d1t1	A3, *A31
	;; condjump to .L966 occurs
	[!B2]	b	.s1	.L966
	||[B2]	ldb	.d1t1	*A5, A8
	||[B2]	add	.l1	3, A18, A7
		nop	4
	[B2]	stb	.d1t1	A8, *A9
	;; condjump to .L966 occurs
.L966:
		sub	.d1	A22, A28, A16
	||	or	.s1	A28, A18, A18
		and	.d1	-4, A16, A19
	||	add	.l1	A4, A18, A17
	||	add	.s1x	A18, B4, A20
		sub	.d1	A19, 4, A21
		shru	.s1	A21, 2, A22
		add	.d1	A22, 1, A0
.L968:
		add	.s1	-1, A0, A0
	||	ldnw	.d1t1	*A20++[1], A23
	[A0]	b	.s1	.L968
		nop	3
		stw	.d1t1	A23, *A17++[1]
		nop	1
	;; condjump to .L968 occurs
		cmpeq	.l1	A16, A19, A0
	||	add	.s1	A19, A7, A24
	[A0]	b	.s1	.L958
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
	;; condjump to .L958 occurs
	[!A1]	b	.s1	.L958
	||	stb	.d1t1	A26, *A27
	[A1]	ldb	.d1t1	*A29, A30
		nop	4
	;; condjump to .L958 occurs
	[!A0]	b	.s1	.L958
	||	stb	.d1t1	A30, *A31
	[A0]	ldb	.d1t1	*A6, A5
		nop	4
	;; condjump to .L958 occurs
		stb	.d1t1	A5, *A4
.L958:
		ret	.s2	B3
		nop	5
	;; return occurs
.L984:
		mv	.d1	A6, A2
	||	mv	.l2x	A5, B4
	||	add	.l1	A4, A6, A4
	||	sub	.s1	A5, A3, A0
	[!A2]	b	.s1	.L958
		nop	5
	;; condjump to .L958 occurs
.L972:
		sub	.d1	A0, 1, A0
	||	ldb	.d2t1	*--B4[1], A19
	[A0]	b	.s1	.L972
		nop	3
		stb	.d1t1	A19, *--A4[1]
		nop	1
	;; condjump to .L972 occurs
		ret	.s2	B3
		nop	5
	;; return occurs
.L962:
		mv	.d1	A6, A1
	[!A1]	b	.s1	.L958
		nop	5
	;; condjump to .L958 occurs
.L965:
		sub	.d1	A18, 1, A8
	||	add	.s1x	-1, B4, A9
		add	.d1x	A8, B4, A7
	||	add	.l1	A9, A6, A18
	||	add	.s1	A4, A8, A16
		sub	.d1	A18, A7, A2
.L970:
		add	.s1	-1, A2, A2
	||	ldb	.d1t1	*++A7[1], A19
	[A2]	b	.s1	.L970
		nop	3
		stb	.d1t1	A19, *++A16[1]
		nop	1
	;; condjump to .L970 occurs
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
		addkpc	.s2	.L987, B3, 0
		nop	4
.L987:
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
	||	addkpc	.s2	.L990, B3, 0
	;; call to (__c6xabi_fltud) occurs, with return value
		nop	4
.L990:
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
	||	addkpc	.s2	.L993, B3, 0
	;; call to (__c6xabi_fltuf) occurs, with return value
		nop	4
.L993:
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
	||	addkpc	.s2	.L996, B3, 0
	;; call to (__c6xabi_fltulld) occurs, with return value
		nop	4
.L996:
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
	||	addkpc	.s2	.L999, B3, 0
	;; call to (__c6xabi_fltullf) occurs, with return value
		nop	4
.L999:
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
		addkpc	.s2	.L1002, B3, 0
		nop	4
.L1002:
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
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	0, A4
	[!A1]	shr	.s1	A0, 14, A4
		mv	.d1	A4, A2
	||	shr	.s1	A0, 13, A1
		nop	3
	;; condjump to .L1003 occurs
	[A2]	b	.s1	.L1003
		nop	5
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	2, A4
		shr	.s1	A0, 12, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	3, A4
		shr	.s1	A0, 11, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	4, A4
		shr	.s1	A0, 10, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	5, A4
		shr	.s1	A0, 9, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	6, A4
		shr	.s1	A0, 8, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	7, A4
		shr	.s1	A0, 7, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	8, A4
		shr	.s1	A0, 6, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	9, A4
		shr	.s1	A0, 5, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	10, A4
		shr	.s1	A0, 4, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	11, A4
		shr	.s1	A0, 3, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	12, A4
		shr	.s1	A0, 2, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	13, A4
		shr	.s1	A0, 1, A1
		nop	4
	;; condjump to .L1003 occurs
	[A1]	b	.s1	.L1003
	||[A1]	mvk	.d1	14, A4
		nop	5
	;; condjump to .L1003 occurs
	[A0]	mvk	.d1	15, A4
	||[!A0]	mvk	.s1	16, A4
.L1003:
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
	[A0]	b	.s1	.L1023
	||[A0]	mvk	.d1	0, A4
		and	.d1	2, A4, A1
	||	mvk	.s1	32, A5
		mvk	.s1	64, A6
		mvk	.s1	128, A7
		mvk	.s1	256, A8
		mvk	.s1	512, A9
	;; condjump to .L1023 occurs
	[A1]	b	.s1	.L1023
	||[A1]	mvk	.d1	1, A4
		and	.d1	4, A4, A2
	||	mvk	.s1	1024, A16
		mvk	.s1	2048, A17
		mvk	.s1	4096, A18
		mvk	.s1	8192, A19
		mvk	.s1	16384, A20
	;; condjump to .L1023 occurs
	[A2]	b	.s1	.L1023
	||[A2]	mvk	.d1	2, A4
		and	.d1	8, A4, A0
		nop	4
	;; condjump to .L1023 occurs
	[A0]	b	.s1	.L1023
	||[A0]	mvk	.d1	3, A4
		and	.d1	A3, A4, A1
		nop	4
	;; condjump to .L1023 occurs
	[A1]	b	.s1	.L1023
	||[A1]	mvk	.d1	4, A4
		and	.d1	A5, A4, A2
		nop	4
	;; condjump to .L1023 occurs
	[A2]	b	.s1	.L1023
	||[A2]	mvk	.d1	5, A4
		and	.d1	A6, A4, A0
		nop	4
	;; condjump to .L1023 occurs
	[A0]	b	.s1	.L1023
	||[A0]	mvk	.d1	6, A4
		and	.d1	A7, A4, A1
		nop	4
	;; condjump to .L1023 occurs
	[A1]	b	.s1	.L1023
	||[A1]	mvk	.d1	7, A4
		and	.d1	A8, A4, A2
		nop	4
	;; condjump to .L1023 occurs
	[A2]	b	.s1	.L1023
	||[A2]	mvk	.d1	8, A4
		and	.d1	A9, A4, A0
		nop	4
	;; condjump to .L1023 occurs
	[A0]	b	.s1	.L1023
	||[A0]	mvk	.d1	9, A4
		and	.d1	A16, A4, A1
		nop	4
	;; condjump to .L1023 occurs
	[A1]	b	.s1	.L1023
	||[A1]	mvk	.d1	10, A4
		and	.d1	A17, A4, A2
		nop	4
	;; condjump to .L1023 occurs
	[A2]	b	.s1	.L1023
	||[A2]	mvk	.d1	11, A4
		and	.d1	A18, A4, A0
		nop	4
	;; condjump to .L1023 occurs
	[A0]	b	.s1	.L1023
	||[A0]	mvk	.d1	12, A4
		and	.d1	A19, A4, A1
		nop	4
	;; condjump to .L1023 occurs
	[A1]	mvk	.d1	13, A4
	||[A1]	b	.s1	.L1023
		and	.d1	A20, A4, A2
		nop	4
	;; condjump to .L1023 occurs
	[A2]	b	.s1	.L1023
	||[A2]	mvk	.d1	14, A4
	[!A2]	extu	.s1	A4, 16, 16, A4
	[!A2]	shr	.s1	A4, 15, A4
		mv	.d1	A4, A0
		nop	2
	;; condjump to .L1023 occurs
	[A0]	mvk	.d1	15, A4
	||[!A0]	mvk	.s1	16, A4
.L1023:
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
	||	addkpc	.s2	.L1053, B3, 0
		mvklh	.s2	18176, B4
	||	mv	.d1	A4, A10
	;; call to (__c6xabi_gef) occurs, with return value
		nop	3
.L1053:
		mv	.d1	A4, A0
	||	mv	.s1	A10, A4
	[A0]	b	.s1	.L1052
		nop	5
	;; condjump to .L1052 occurs
		callp	.s2	(__c6xabi_fixfi), B3
		ldw	.d2t2	*+B15(12), B3
		ldw	.d2t1	*+B15(8), A10
		ldw	.d2t2	*+B15(16), B14
	||	addk	.s2	16, B15
		nop	2
		ret	.s2	B3
		nop	5
	;; return occurs
.L1052:
		call	.s2	(__c6xabi_subf)
	||	mvk	.l2	0, B4
		addkpc	.s2	.L1055, B3, 0
		mvklh	.s2	18176, B4
	;; call to (__c6xabi_subf) occurs, with return value
		nop	3
.L1055:
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
	[!A0]	b	.s1	.L1061
		nop	5
	;; condjump to .L1061 occurs
.L1063:
		and	.d1	1, A3, A5
	||	shru	.s1	A3, 1, A3
		mv	.d1	A3, A1
	||	neg	.s1	A5, A6
	[A1]	b	.s1	.L1063
	||	and	.d1x	A6, B4, A7
	||	shl	.s2	B4, 1, B4
		add	.d1	A4, A7, A4
		nop	4
	;; condjump to .L1063 occurs
.L1061:
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
	[!A0]	b	.s1	.L1068
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1068 occurs
	[!A1]	b	.s1	.L1068
		nop	5
	;; condjump to .L1068 occurs
.L1070:
		and	.d1x	1, B4, A5
	||	shru	.s2	B4, 1, B4
		neg	.l1	A5, A6
		mv	.l1x	B4, A2
	||	and	.d1	A3, A6, A7
	||	shl	.s1	A3, 1, A3
	[A2]	b	.s1	.L1070
	||	add	.d1	A4, A7, A4
		nop	5
	;; condjump to .L1070 occurs
.L1068:
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
	[!A0]	b	.s1	.L1091
		nop	5
	;; condjump to .L1091 occurs
.L1077:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1078
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1078 occurs
	[A1]	b	.s1	.L1077
		nop	5
	;; condjump to .L1077 occurs
	[!A2]	b	.s1	.L1081
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1081 occurs
.L1078:
		mvk	.d1	0, A4
.L1083:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L1083
		nop	5
	;; condjump to .L1083 occurs
.L1081:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1091:
		b	.s1	.L1083
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1083 occurs
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
	||	addkpc	.s2	.L1098, B3, 0
	;; call to (__c6xabi_ltf) occurs, with return value
		nop	4
.L1098:
		mv	.d1	A4, A0
	||	mv	.l2x	A11, B4
	[A0]	b	.s1	.L1092
	||[A0]	mvk	.d1	-1, A4
	[!A0]	mv	.d1	A10, A4
		nop	4
	;; condjump to .L1092 occurs
		callp	.s2	(__c6xabi_gtf), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L1092:
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
	||	addkpc	.s2	.L1106, B3, 0
		mv	.l1x	B5, A13
	;; call to (__c6xabi_ltd) occurs, with return value
		nop	3
.L1106:
		mv	.d1	A4, A0
	||	mv	.l2x	A12, B4
	[A0]	b	.s1	.L1100
	||[A0]	mvk	.d1	-1, A4
	||	mv	.l2x	A13, B5
	[!A0]	dmv	.s1	A11, A10, A5:A4
		nop	4
	;; condjump to .L1100 occurs
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L1100:
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
	||[A0]	b	.s1	.L1114
	||[A0]	mvk	.d1	1, A2
	[!A0]	mvk	.d1	0, A2
		mv	.l1x	B4, A1
	[!A1]	mvk	.d1	0, A4
		nop	2
	;; condjump to .L1114 occurs
	[!A1]	b	.s1	.L1112
		nop	5
	;; condjump to .L1112 occurs
.L1114:
		mvk	.d1	1, A6
	||	mvk	.l1	0, A4
	||	mvk	.s1	32, A8
.L1116:
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
	[A0]	b	.s1	.L1116
		nop	5
	;; condjump to .L1116 occurs
	[A2]	neg	.l1	A4, A4
.L1112:
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
	[!A0]	b	.s1	.L1144
	||	mvk	.d1	1, A0
		nop	5
	;; condjump to .L1144 occurs
.L1127:
		shl	.s2	B4, 1, B4
	||	shl	.s1	A0, 1, A0
		cmpeq	.l1	0, A0, A8
		mv	.s1x	B4, A5
	||	cmpeq	.l1	0, A8, A9
		cmpltu	.l1	A5, A4, A7
		and	.d1	A9, A7, A2
	[A2]	b	.s1	.L1127
		nop	5
	;; condjump to .L1127 occurs
	[!A0]	b	.s1	.L1129
	||[!A0]	mvk	.d1	0, A4
	[A0]	mvk	.d1	0, A4
		nop	4
	;; condjump to .L1129 occurs
.L1132:
		cmpltu	.l1x	A6, B4, A16
		mv	.d1	A16, A2
	[!A2]	or	.d1	A0, A4, A4
	||	shru	.s1	A0, 1, A0
	||[!A2]	mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
	[A0]	b	.s1	.L1132
	||[!A2]	sub	.d1	A6, A16, A6
		nop	5
	;; condjump to .L1132 occurs
.L1129:
		ret	.s2	B3
	||[A1]	neg	.l1	A4, A4
		nop	5
	;; return occurs
.L1144:
		b	.s1	.L1132
	||	mvk	.d1	1, A0
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1132 occurs
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
	[!A2]	b	.s1	.L1152
		nop	5
	;; condjump to .L1152 occurs
.L1147:
		shl	.s1	A16, 1, A16
		shl	.s1	A17, 1, A17
	||	cmpeq	.l1	0, A16, A6
		cmpltu	.l1	A17, A4, A8
		cmpeq	.l1	0, A6, A9
		and	.d1	A9, A8, A2
	[A2]	b	.s1	.L1147
		nop	5
	;; condjump to .L1147 occurs
		mv	.d1	A16, A2
	[!A2]	b	.s1	.L1149
		nop	5
	;; condjump to .L1149 occurs
.L1152:
		shru	.s1	A16, 1, A16
	||	cmpltu	.l1	A7, A17, A2
		mv	.d1	A16, A0
	||[!A2]	sub	.l1	A7, A17, A7
	||	shru	.s1	A17, 1, A17
	[A0]	b	.s1	.L1152
		nop	5
	;; condjump to .L1152 occurs
		mv	.d1	A7, A4
.L1149:
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
	||[!A1]	b	.s1	.L1213
	||[A1]	mvk	.d1	1, A7
		nop	5
	;; condjump to .L1213 occurs
	[A2]	b	.s1	.L1214
		nop	5
	;; condjump to .L1214 occurs
.L1168:
		shl	.s1	A7, 1, A22
		shl	.s1x	B4, 1, A23
		extu	.s1	A22, 16, 16, A24
		extu	.s1	A23, 16, 16, A25
	||	cmpeq	.l1	0, A24, A18
		cmpeq	.l1	0, A18, A27
	||	mv	.s1	A22, A18
		cmpltu	.l1	A25, A17, A26
		and	.d1	A27, A26, A0
	[!A0]	b	.s1	.L1167
	||[A0]	mv	.l2x	A23, B4
	||[A0]	mv	.d1	A22, A7
		nop	1
		mv	.l1x	B4, A8
		ext	.s1	A8, 16, 16, A9
		cmpgt	.l1	0, A9, A2
		nop	1
	;; condjump to .L1167 occurs
	[!A2]	b	.s1	.L1168
		nop	5
	;; condjump to .L1168 occurs
.L1214:
		extu	.s1	A8, 16, 16, A19
		cmpgtu	.l1	A19, A17, A1
	[A1]	b	.s1	.L1191
	||[A1]	mvk	.d1	0, A18
		nop	5
	;; condjump to .L1191 occurs
		sub	.l2x	A4, B4, B4
	||	mv	.d1	A7, A18
		nop	1
		mv	.l1x	B4, A4
.L1191:
		extu	.s1	A7, 16, 16, A7
		shru	.s1	A7, 1, A1
	[!A1]	b	.s1	.L1170
	||	mv	.d1	A1, A21
		shru	.s1	A19, 1, A20
		extu	.s1	A4, 16, 16, A17
		nop	3
	;; condjump to .L1170 occurs
.L1172:
		extu	.s1	A20, 16, 16, A3
		cmpgtu	.l1	A3, A17, A1
	||	shru	.s1	A7, 2, A8
	[!A1]	sub	.d1	A4, A20, A20
	||[!A1]	or	.l1	A21, A18, A18
	||	shru	.s1	A19, 2, A9
	[!A1]	mv	.d1	A20, A4
	||	mv	.l1	A8, A1
	||	shru	.s1	A7, 3, A20
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A16
		cmpgtu	.l1	A9, A16, A1
	||	shru	.s1	A19, 3, A21
	[!A1]	sub	.d1	A4, A9, A9
	||	shru	.s1	A7, 4, A22
		shru	.s1	A19, 4, A23
		shru	.s1	A7, 5, A25
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A9, A4
	||[!A1]	or	.l1	A18, A8, A18
	||	mv	.s1	A20, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A17
		cmpgtu	.l1	A21, A17, A1
	||	shru	.s1	A19, 5, A26
	[!A1]	sub	.d1	A4, A21, A21
	||	shru	.s1	A7, 6, A28
		shru	.s1	A19, 6, A0
		shru	.s1	A7, 7, A29
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A21, A4
	||[!A1]	or	.l1	A18, A20, A18
	||	mv	.s1	A22, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A24
		cmpgtu	.l1	A23, A24, A1
	||	shru	.s1	A19, 7, A30
	[!A1]	sub	.d1	A4, A23, A23
	||	shru	.s1	A7, 8, A2
		shru	.s1	A19, 8, A8
		shru	.s1	A7, 9, A9
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A23, A4
	||[!A1]	or	.l1	A18, A22, A18
	||	mv	.s1	A25, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A27
		cmpgtu	.l1	A26, A27, A1
	||	shru	.s1	A19, 9, A16
	[!A1]	sub	.d1	A4, A26, A26
	||	shru	.s1	A7, 10, A21
		shru	.s1	A19, 10, A17
		shru	.s1	A7, 11, A23
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A26, A4
	||[!A1]	or	.l1	A18, A25, A18
	||	mv	.s1	A28, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A5
		cmpgtu	.l1	A0, A5, A1
	||	shru	.s1	A19, 11, A24
	[!A1]	sub	.d1	A4, A0, A0
	||	shru	.s1	A7, 12, A26
		shru	.s1	A19, 12, A27
		nop	1
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A0, A4
	||[!A1]	or	.l1	A18, A28, A18
	||	mv	.s1	A29, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A31
		cmpgtu	.l1	A30, A31, A1
	||	shru	.s1	A19, 13, A0
	[!A1]	sub	.d1	A4, A30, A30
	||	shru	.s1	A19, 14, A31
		shru	.s1	A19, 15, A19
		nop	1
	;; condjump to .L1170 occurs
	[!A2]	b	.s1	.L1170
	||[!A1]	mv	.d1	A30, A4
	||[!A1]	or	.l1	A18, A29, A18
		extu	.s1	A4, 16, 16, A3
		cmpgtu	.l1	A8, A3, A1
	||	shru	.s1	A7, 13, A29
	[!A1]	sub	.d1	A4, A8, A8
	||	shru	.s1	A7, 14, A30
		nop	2
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A8, A4
	||[!A1]	or	.l1	A18, A2, A18
	||	mv	.s1	A9, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A20
		cmpgtu	.l1	A16, A20, A1
	[!A1]	sub	.d1	A4, A16, A16
		nop	2
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A16, A4
	||[!A1]	or	.l1	A18, A9, A18
	||	mv	.s1	A21, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A22
		cmpgtu	.l1	A17, A22, A1
	[!A1]	sub	.d1	A4, A17, A17
		nop	2
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A17, A4
	||[!A1]	or	.l1	A18, A21, A18
	||	mv	.s1	A23, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A25
		cmpgtu	.l1	A24, A25, A1
	[!A1]	sub	.d1	A4, A24, A24
		nop	2
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A24, A4
	||[!A1]	or	.l1	A18, A23, A18
	||	mv	.s1	A26, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A28
		cmpgtu	.l1	A27, A28, A1
	[!A1]	sub	.d1	A4, A27, A27
		nop	2
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A27, A4
	||[!A1]	or	.l1	A18, A26, A18
	||	mv	.s1	A29, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A5
		cmpgtu	.l1	A0, A5, A1
	[!A1]	sub	.d1	A4, A0, A0
		nop	2
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A0, A4
	||[!A1]	or	.l1	A18, A29, A18
	||	mv	.s1	A30, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A8
		cmpgtu	.l1	A31, A8, A1
	[!A1]	sub	.d1	A4, A31, A31
		nop	2
	;; condjump to .L1170 occurs
	[!A1]	mv	.d1	A31, A4
	||[!A1]	or	.l1	A18, A30, A18
	||	shru	.s1	A7, 15, A1
	[!A1]	b	.s1	.L1170
		extu	.s1	A4, 16, 16, A7
		cmpgtu	.l1	A19, A7, A1
		nop	3
	;; condjump to .L1170 occurs
	[!A1]	sub	.l1	A4, A19, A4
	||[!A1]	or	.s1	1, A18, A18
	||[A1]	mvk	.d1	0, A4
.L1170:
		ret	.s2	B3
	||	mv	.d1	A6, A2
	[!A2]	mv	.d1	A18, A4
		nop	4
	;; return occurs
.L1167:
		mv	.d1	A24, A2
	||	cmpgtu	.l1	A25, A17, A1
	||	mvk	.s1	32767, A28
	[!A2]	b	.s1	.L1170
		nop	5
	;; condjump to .L1170 occurs
	[A1]	b	.s1	.L1171
		nop	5
	;; condjump to .L1171 occurs
		b	.s1	.L1172
	||	sub	.d1	A4, A23, A4
	||	and	.l1	A28, A7, A21
		and	.d1x	A28, B4, A20
	||	extu	.s1	A4, 16, 16, A17
		extu	.s1	A23, 16, 16, A19
		extu	.s1	A22, 16, 16, A7
		nop	2
	;; jump to .L1172 occurs
.L1171:
		b	.s1	.L1172
	||	and	.l1	A28, A7, A21
	||	mvk	.d1	0, A18
		and	.d1x	A28, B4, A20
	||	extu	.s1	A22, 16, 16, A7
		extu	.s1	A23, 16, 16, A19
		nop	3
	;; jump to .L1172 occurs
.L1213:
		cmpeq	.l1	A17, A5, A0
	[A0]	b	.s1	.L1170
	||[A0]	mvk	.d1	1, A18
	||[A0]	mvk	.l1	0, A4
		nop	5
	;; condjump to .L1170 occurs
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
	[!A0]	b	.s1	.L1230
		nop	5
	;; condjump to .L1230 occurs
.L1216:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s1	.L1217
	||[!A1]	shl	.s2	B4, 1, B4
	[!A1]	shl	.s1	A2, 1, A2
		mv	.s1x	B4, A4
	||	cmpeq	.l1	0, A2, A5
		cmpltu	.l1	A4, A7, A8
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	;; condjump to .L1217 occurs
	[A1]	b	.s1	.L1216
		nop	5
	;; condjump to .L1216 occurs
	[!A2]	b	.s1	.L1220
	||[!A2]	mvk	.d1	0, A4
		nop	5
	;; condjump to .L1220 occurs
.L1217:
		mvk	.d1	0, A4
.L1222:
		mv	.l1x	B4, A16
	||	shru	.s2	B4, 1, B4
		cmpgtu	.l1	A16, A7, A1
	[!A1]	or	.d1	A2, A4, A4
	||	shru	.s1	A2, 1, A2
	||[!A1]	sub	.l1	A7, A16, A7
	[A2]	b	.s1	.L1222
		nop	5
	;; condjump to .L1222 occurs
.L1220:
		ret	.s2	B3
	||	mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		nop	4
	;; return occurs
.L1230:
		b	.s1	.L1222
	||	mvk	.d1	1, A2
	||	mvk	.l1	0, A4
		nop	5
	;; jump to .L1222 occurs
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1232
		nop	5
	;; condjump to .L1232 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shl	.s1	A4, A9, A5
	||	mv	.d1	A8, A4
.L1234:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1232:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1234
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1234
		shru	.s1	A4, A3, A7
	[A2]	shl	.s1	A5, A2, A5
		shl	.s1	A4, A2, A8
	||[A2]	or	.d1	A5, A7, A5
	[A2]	mv	.d1	A8, A4
		nop	1
	;; condjump to .L1234 occurs
	;; jump to .L1234 occurs
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s1	.L1239
		nop	5
	;; condjump to .L1239 occurs
		subah	.d2	B4, 16, B4
	||	shr	.s1	A5, 31, A8
		nop	1
		mv	.l1x	B4, A9
		shr	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1241:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1239:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1241
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1241
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shr	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1241 occurs
	;; jump to .L1241 occurs
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
	[A0]	b	.s1	.L1257
	||	cmplt	.l1	A3, A5, A0
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
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
		mv	.l1x	B5, A3
		cmpgt	.l1	A3, A5, A0
	[A0]	b	.s1	.L1265
	||	cmplt	.l1	A3, A5, A0
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
	[!A1]	b	.s1	.L1271
		nop	5
	;; condjump to .L1271 occurs
		subah	.d2	B4, 16, B4
	||	mvk	.d1	0, A8
		nop	1
		mv	.l1x	B4, A9
		shru	.s1	A5, A9, A4
	||	mv	.d1	A8, A5
.L1273:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1271:
		mv	.l1x	B4, A2
	[!A2]	b	.s1	.L1273
	||	sub	.d1	A6, A2, A3
	[A2]	b	.s1	.L1273
		shl	.s1	A5, A3, A7
	[A2]	shru	.s1	A4, A2, A4
		shru	.s1	A5, A2, A8
	||[A2]	or	.d1	A4, A7, A4
	[A2]	mv	.d1	A8, A5
		nop	1
	;; condjump to .L1273 occurs
	;; jump to .L1273 occurs
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
	[!A0]	b	.s1	.L1292
	||	stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(32)
		dmv	.s1	A5, A4, A13:A12
	||	mv	.l1x	B4, A10
	||	mvk	.d1	0, A14
		mvklh	.s1	16368, A15
	;; condjump to .L1292 occurs
.L1294:
		call	.s2	(__c6xabi_mpyd)
	||	dmv	.s1	A15, A14, A5:A4
	||	mv	.l2x	A12, B4
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L1301, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L1301:
		dmv	.s1	A5, A4, A15:A14
.L1292:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1293
		nop	5
	;; condjump to .L1293 occurs
.L1295:
		call	.s2	(__c6xabi_mpyd)
	||	mv	.l2x	A12, B4
	||	mv	.d1	A12, A4
	||	mv	.s1	A13, A5
		mv	.l2x	A13, B5
	||	addkpc	.s2	.L1302, B3, 0
	;; call to (__c6xabi_mpyd) occurs, with return value
		nop	4
.L1302:
		and	.d1	1, A10, A2
	||	dmv	.s1	A5, A4, A13:A12
	[A2]	b	.s1	.L1294
		nop	5
	;; condjump to .L1294 occurs
		b	.s1	.L1295
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L1295 occurs
.L1293:
		cmpgt	.l2x	0, A11, B0
	||	dmv	.s1	A15, A14, A5:A4
	[B0]	b	.s1	.L1300
	||[!B0]	ldw	.d2t2	*+B15(32), B3
	[!B0]	ldw	.d2t1	*+B15(12), A10
	[!B0]	ldw	.d2t1	*+B15(16), A11
	[!B0]	ldw	.d2t1	*+B15(20), A12
	[!B0]	ldw	.d2t1	*+B15(24), A13
	[!B0]	ldw	.d2t1	*+B15(28), A14
	;; condjump to .L1300 occurs
		ret	.s2	B3
	||	ldw	.d2t2	*+B15(36), B14
		ldw	.d2t1	*+B15(40), A15
	||	addk	.s2	40, B15
		nop	4
	;; return occurs
.L1300:
		call	.s2	(__c6xabi_divd)
	||	mv	.l2x	A14, B4
	||	mvk	.d1	0, A4
	||	mvk	.l1	0, A5
		mv	.l2x	A15, B5
	||	mvklh	.s1	16368, A5
	||	addkpc	.s2	.L1303, B3, 0
	;; call to (__c6xabi_divd) occurs, with return value
		nop	4
.L1303:
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
	[!A0]	b	.s1	.L1305
	||	stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		stw	.d2t2	B3, *+B15(28)
		mv	.l1	A4, A11
	||	mv	.s1x	B4, A10
	||	mvk	.d1	0, A12
		mvklh	.s1	16256, A12
	;; condjump to .L1305 occurs
.L1307:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.d1	A12, A4
	||	mv	.l2x	A11, B4
		mv	.d1	A4, A12
.L1305:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s1	.L1306
		nop	5
	;; condjump to .L1306 occurs
.L1308:
		callp	.s2	(__c6xabi_mpyf), B3
	||	mv	.l2x	A11, B4
	||	mv	.d1	A11, A4
		and	.d1	1, A10, A2
	||	mv	.s1	A4, A11
	[A2]	b	.s1	.L1307
		nop	5
	;; condjump to .L1307 occurs
		b	.s1	.L1308
		shru	.s1	A10, 31, A4
		add	.d1	A4, A10, A5
		shr	.s1	A5, 1, A10
		nop	2
	;; jump to .L1308 occurs
.L1306:
		cmpgt	.l2x	0, A13, B0
	||	mv	.d1	A12, A4
	[B0]	b	.s1	.L1313
	||[!B0]	ldw	.d2t2	*+B15(28), B3
	[!B0]	ldw	.d2t1	*+B15(12), A10
	[!B0]	ldw	.d2t1	*+B15(16), A11
	[!B0]	ldw	.d2t1	*+B15(20), A12
	[!B0]	ldw	.d2t1	*+B15(24), A13
	[!B0]	ret	.s2	B3
	||[!B0]	ldw	.d2t2	*+B15(32), B14
	;; condjump to .L1313 occurs
		addab	.d2	B15, 32, B15
		nop	4
	;; return occurs
.L1313:
		call	.s2	(__c6xabi_divf)
	||	mv	.l2x	A12, B4
	||	mvk	.d1	0, A4
		mvklh	.s1	16256, A4
	||	addkpc	.s2	.L1316, B3, 0
	;; call to (__c6xabi_divf) occurs, with return value
		nop	4
.L1316:
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
	[A0]	b	.s1	.L1321
	||	cmpltu	.l1	A3, A5, A0
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	;; condjump to .L1321 occurs
	[A0]	b	.s1	.L1322
		nop	5
	;; condjump to .L1322 occurs
	[A1]	b	.s1	.L1321
		nop	5
	;; condjump to .L1321 occurs
	[A2]	b	.s1	.L1322
	||[!A2]	ret	.s2	B3
		nop	5
	;; condjump to .L1322 occurs
	;; return occurs
.L1321:
		ret	.s2	B3
	||	mvk	.d1	0, A4
		nop	5
	;; return occurs
.L1322:
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
	[A0]	b	.s1	.L1329
	||	cmpltu	.l1	A3, A5, A0
	[A0]	mvk	.d1	1, A4
	||	mv	.s1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
		nop	3
	;; condjump to .L1329 occurs
	[A0]	b	.s1	.L1325
		nop	5
	;; condjump to .L1325 occurs
	[A1]	b	.s1	.L1329
	||[!A1]	cmpltu	.l1	A5, A4, A4
		nop	5
	;; condjump to .L1329 occurs
.L1325:
		ret	.s2	B3
		nop	5
	;; return occurs
.L1329:
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
