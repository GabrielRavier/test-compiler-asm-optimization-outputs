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
	[!A0]	b	.s2	.L2
		nop	5
		add	.d1x	A6, B4, A8
		add	.d1	A4, A6, A9
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L3
		nop	5
		sub	.d1	A8, A3, A1
.L4:
		sub	.d1	A1, 1, A1
		ldb	.d1t1	*--A8[1], A17
		nop	4
		stb	.d1t1	A17, *--A9[1]
	[A1]	b	.s2	.L4
		nop	5
.L3:
		ret	.s2	B3
		nop	5
.L2:
		cmpeq	.l1	A3, A4, A1
	[A1]	b	.s2	.L3
		nop	5
		mv	.d1	A6, A2
	[!A2]	b	.s2	.L3
		nop	5
		sub	.d1	A4, 1, A6
.L5:
		sub	.d1	A2, 1, A2
		ldb	.d2t1	*B4++[1], A7
		nop	4
		stb	.d1t1	A7, *++A6[1]
	[A2]	b	.s2	.L5
		nop	5
		b	.s2	.L3
		nop	5
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
		extu	.s1	A6, 24, 24, A6
		mv	.l1x	B6, A0
	[!A0]	b	.s2	.L20
		nop	5
		sub	.d2	B4, 1, B4
		mv	.d1	A4, A3
.L17:
		sub	.d1	A0, 1, A0
		mv	.d1	A3, A4
		ldb	.d2t1	*++B4[1], A5
		nop	4
		stb	.d1t1	A5, *A3++[1]
		extu	.s1	A5, 24, 24, A7
		cmpeq	.l1	A6, A7, A2
	[A2]	b	.s2	.L28
		nop	5
		sub	.d2	B6, 1, B6
	[A0]	b	.s2	.L17
		nop	5
.L20:
		mvk	.d1	0, A4
		b	.s2	.L15
		nop	5
.L28:
		mv	.l1x	B6, A1
	[A1]	mv	.d1	A3, A4
	[!A1]	b	.s2	.L20
		nop	5
.L15:
		ret	.s2	B3
		nop	5
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
		extu	.s2	B4, 24, 24, B4
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L35
		nop	5
		mv	.d1	A4, A3
.L31:
		sub	.d1	A0, 1, A0
		mv	.d1	A3, A4
		add	.d1	A3, 1, A3
		ldbu	.d1t1	*A4, A7
		nop	4
		mv	.l1x	B4, A5
		cmpeq	.l1	A5, A7, A2
	[A2]	b	.s2	.L39
		nop	5
		sub	.d1	A6, 1, A6
	[A0]	b	.s2	.L31
		nop	5
.L35:
		mvk	.d1	0, A4
		b	.s2	.L29
		nop	5
.L39:
		mv	.d1	A6, A1
	[!A1]	b	.s2	.L35
		nop	5
.L29:
		ret	.s2	B3
		nop	5
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L45
		nop	5
		mv	.d1	A4, A5
		mv	.l1x	B4, A3
.L42:
		sub	.d1	A0, 1, A0
		mv	.l2x	A3, B4
		mv	.d1	A5, A4
		add	.d1	A5, 1, A5
		add	.d1	A3, 1, A3
		ldbu	.d1t1	*A4, A8
		nop	4
		ldbu	.d2t1	*B4, A7
		nop	4
		cmpeq	.l1	A7, A8, A2
	[!A2]	b	.s2	.L53
		nop	5
		sub	.d1	A6, 1, A6
	[A0]	b	.s2	.L42
		nop	5
.L45:
		mvk	.d1	0, A4
		b	.s2	.L40
		nop	5
.L53:
		mv	.d1	A6, A1
	[!A1]	b	.s2	.L45
		nop	5
		ldbu	.d1t1	*A4, A6
		nop	4
		sub	.d1	A6, A7, A4
.L40:
		ret	.s2	B3
		nop	5
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L55
		nop	5
		callp	.s2	(memcpy), B3
.L55:
		mv	.d1	A10, A4
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
		extu	.s2	B4, 24, 24, B4
		sub	.d1	A6, 1, A3
		add	.d1	A4, A3, A7
		add	.d1	A6, 1, A1
.L62:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L64
		nop	5
		b	.s2	.L67
		nop	5
.L64:
		mv	.d1	A7, A4
		sub	.d1	A7, 1, A7
		ldbu	.d1t1	*A4, A6
		nop	4
		mv	.l1x	B4, A5
		cmpeq	.l1	A5, A6, A0
	[!A0]	b	.s2	.L62
		nop	5
		b	.s2	.L61
		nop	5
.L67:
		mvk	.d1	0, A4
.L61:
		ret	.s2	B3
		nop	5
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L69
		nop	5
		mv	.d1	A4, A3
.L70:
		sub	.d1	A0, 1, A0
		stb	.d1t2	B4, *A3++[1]
	[A0]	b	.s2	.L70
		nop	5
.L69:
		ret	.s2	B3
		nop	5
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
		mv	.d1	A4, A3
		ldb	.d2t1	*B4, A5
		nop	4
		stb	.d1t1	A5, *A4
		ext	.s1	A5, 24, 24, A0
	[!A0]	b	.s2	.L76
		nop	5
		add	.d1	A3, 1, A6
.L78:
		mv	.d1	A6, A4
		ldb	.d2t1	*++B4[1], A7
		nop	4
		stb	.d1t1	A7, *A6++[1]
		ext	.s1	A7, 24, 24, A1
	[A1]	b	.s2	.L78
		nop	5
.L76:
		ret	.s2	B3
		nop	5
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
		extu	.s2	B4, 24, 24, B4
		ldb	.d1t1	*A4, A6
		nop	4
		ext	.s1	A6, 24, 24, A1
	[!A1]	b	.s2	.L82
		nop	5
.L83:
		extu	.s1	A6, 24, 24, A5
		mv	.l1x	B4, A3
		cmpeq	.l1	A3, A5, A0
	[A0]	b	.s2	.L82
		nop	5
		ldb	.d1t1	*++A4[1], A6
		nop	4
		ext	.s1	A6, 24, 24, A1
	[A1]	b	.s2	.L83
		nop	5
.L82:
		ret	.s2	B3
		nop	5
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
		mv	.d1	A4, A3
.L92:
		mv	.d1	A3, A4
		ldb	.d1t1	*A3++[1], A6
		nop	4
		shl	.s1	A6, 24, A5
		ext	.s1	A6, 24, 24, A7
		mv	.l1x	B4, A8
		cmpeq	.l1	A8, A7, A0
	[A0]	b	.s2	.L90
		nop	5
		mv	.d1	A5, A1
	[A1]	b	.s2	.L92
		nop	5
		mvk	.d1	0, A4
.L90:
		ret	.s2	B3
		nop	5
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
		ldb	.d1t1	*A4, A6
		nop	4
		ldb	.d2t1	*B4, A17
		nop	4
.L102:
		ext	.s1	A6, 24, 24, A3
		cmpeq	.l1	0, A3, A7
		cmpeq	.l1	0, A7, A8
		ext	.s1	A17, 24, 24, A9
		cmpeq	.l1	A9, A3, A16
		and	.d1	A16, A8, A0
	[!A0]	b	.s2	.L96
		nop	5
		ldb	.d1t1	*++A4[1], A6
		nop	4
		ldb	.d2t1	*++B4[1], A17
		nop	4
		b	.s2	.L102
		nop	5
.L96:
		extu	.s1	A6, 24, 24, A4
		extu	.s1	A17, 24, 24, A5
		sub	.d1	A4, A5, A4
		ret	.s2	B3
		nop	5
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
		ldb	.d1t1	*A4, A0
		nop	4
	[!A0]	b	.s2	.L107
		nop	5
		mv	.d1	A4, A5
.L106:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s2	.L106
		nop	5
.L105:
		sub	.d1	A5, A4, A4
		ret	.s2	B3
		nop	5
.L107:
		mv	.d1	A4, A5
		b	.s2	.L105
		nop	5
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
		mv	.d1	A6, A0
	[!A0]	mvk	.d1	0, A4
	[!A0]	b	.s2	.L110
		nop	5
		ldbu	.d1t1	*A4, A7
		nop	4
		mv	.d1	A7, A1
	[!A1]	b	.s2	.L112
		nop	5
		mv	.l1x	B4, A5
		add	.d1	A5, A6, A6
.L113:
		mv	.l2x	A5, B4
		ldbu	.d1t1	*A5++[1], A8
		nop	4
		cmpeq	.l1	0, A8, A3
		cmpeq	.l1	0, A3, A9
		cmpeq	.l1	A7, A8, A16
		and	.d1	A16, A9, A17
		cmpeq	.l1	A5, A6, A18
		cmpeq	.l1	0, A18, A19
		and	.d1	A17, A19, A2
	[!A2]	b	.s2	.L112
		nop	5
		ldbu	.d1t1	*++A4[1], A7
		nop	4
		mv	.d1	A7, A0
	[A0]	b	.s2	.L113
		nop	5
		mv	.l2x	A5, B4
.L112:
		ldbu	.d2t1	*B4, A4
		nop	4
		sub	.d1	A7, A4, A4
.L110:
		ret	.s2	B3
		nop	5
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
		cmplt	.l1	1, A6, A0
	[!A0]	b	.s2	.L121
		nop	5
		and	.d1	-2, A6, A3
		sub	.d1	A3, 2, A6
		shru	.s1	A6, 1, A5
		add	.d1	A5, 1, A1
.L123:
		sub	.d1	A1, 1, A1
		ldb	.d1t1	*+A4(1), A7
		nop	4
		stb	.d2t1	A7, *B4
		ldb	.d1t1	*A4++(2), A8
		nop	4
		stb	.d2t1	A8, *+B4(1)
		add	.d2	B4, 2, B4
	[A1]	b	.s2	.L123
		nop	5
.L121:
		ret	.s2	B3
		nop	5
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.type	isalpha, @function
isalpha:
		set	.s1	A4, 5, 5, A4
		addk	.s1	-97, A4
		cmpltu	.l1	25, A4, A3
		xor	.d1	1, A3, A4
		ret	.s2	B3
		nop	5
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.type	isascii, @function
isascii:
		mvk	.s1	127, A3
		cmpltu	.l1	A3, A4, A4
		xor	.d1	1, A4, A4
		ret	.s2	B3
		nop	5
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.type	isblank, @function
isblank:
		cmpeq	.l1	9, A4, A1
		mvk	.s1	32, A3
	[!A1]	cmpeq	.l1	A3, A4, A1
		mv	.d1	A1, A4
		ret	.s2	B3
		nop	5
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
		cmpltu	.l1	31, A4, A3
		cmpeq	.l1	0, A3, A5
		mvk	.s1	127, A6
		cmpeq	.l1	A6, A4, A4
		or	.d1	A4, A5, A4
		ret	.s2	B3
		nop	5
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.type	isdigit, @function
isdigit:
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A4
		xor	.d1	1, A4, A4
		ret	.s2	B3
		nop	5
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.type	isgraph, @function
isgraph:
		addk	.s1	-33, A4
		mvk	.s1	93, A3
		cmpltu	.l1	A3, A4, A4
		xor	.d1	1, A4, A4
		ret	.s2	B3
		nop	5
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.type	islower, @function
islower:
		addk	.s1	-97, A4
		cmpltu	.l1	25, A4, A4
		xor	.d1	1, A4, A4
		ret	.s2	B3
		nop	5
	.size	islower, .-islower
	.align	2
	.global	isprint
	.type	isprint, @function
isprint:
		subah	.d1	A4, 16, A4
		mvk	.s1	94, A3
		cmpltu	.l1	A3, A4, A4
		xor	.d1	1, A4, A4
		ret	.s2	B3
		nop	5
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.type	isspace, @function
isspace:
		sub	.d1	A4, 9, A3
		cmpltu	.l1	4, A3, A5
		cmpeq	.l1	0, A5, A6
		mvk	.s1	32, A7
		cmpeq	.l1	A7, A4, A4
		or	.d1	A4, A6, A4
		ret	.s2	B3
		nop	5
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.type	isupper, @function
isupper:
		addk	.s1	-65, A4
		cmpltu	.l1	25, A4, A4
		xor	.d1	1, A4, A4
		ret	.s2	B3
		nop	5
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
		mvk	.s1	-127, A3
		add	.d1	A4, A3, A5
		mvk	.s1	32, A6
		cmpltu	.l1	A6, A5, A7
		cmpeq	.l1	0, A7, A8
		cmpltu	.l1	31, A4, A9
		cmpeq	.l1	0, A9, A16
		or	.d1	A16, A8, A0
	[A0]	b	.s2	.L149
		nop	5
		mvk	.s1	-8232, A17
		add	.d1	A4, A17, A18
		cmpltu	.l1	1, A18, A1
	[!A1]	b	.s2	.L149
		nop	5
		mvk	.d1	7, A19
		mvklh	.s1	65535, A19
		add	.d1	A4, A19, A4
		cmpltu	.l1	2, A4, A20
		cmpeq	.l1	0, A20, A4
		b	.s2	.L146
		nop	5
.L149:
		mvk	.d1	1, A4
.L146:
		ret	.s2	B3
		nop	5
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A4
		xor	.d1	1, A4, A4
		ret	.s2	B3
		nop	5
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.type	iswprint, @function
iswprint:
		mvk	.s1	254, A3
		cmpltu	.l1	A3, A4, A0
	[!A0]	b	.s2	.L160
		nop	5
		mvk	.s1	-8234, A5
		add	.d1	A4, A5, A6
		mvk	.s1	-18475, A7
		mvklh	.s1	0, A7
		cmpltu	.l1	A7, A6, A8
		cmpeq	.l1	0, A8, A9
		mvk	.s1	8231, A16
		cmpltu	.l1	A16, A4, A17
		cmpeq	.l1	0, A17, A18
		or	.d1	A18, A9, A1
	[A1]	b	.s2	.L157
		nop	5
		mvk	.s1	8192, A19
		mvklh	.s1	65535, A19
		add	.d1	A4, A19, A20
		mvk	.s1	8184, A21
		cmpltu	.l1	A21, A20, A2
	[!A2]	b	.s2	.L157
		nop	5
		mvk	.d1	4, A22
		mvklh	.s1	65535, A22
		add	.d1	A4, A22, A23
		mvk	.d1	3, A24
		mvklh	.s1	16, A24
		cmpltu	.l1	A24, A23, A0
	[A0]	mvk	.d1	0, A4
	[A0]	b	.s2	.L153
		nop	5
		mvk	.d1	-2, A25
		mvklh	.s1	0, A25
		and	.d1	A25, A4, A4
		cmpeq	.l1	A25, A4, A26
		cmpeq	.l1	0, A26, A4
		b	.s2	.L153
		nop	5
.L160:
		add	.d1	A4, 1, A27
		clr	.s1	A27, 7, 31, A28
		mvk	.s1	32, A29
		cmpltu	.l1	A29, A28, A4
		b	.s2	.L153
		nop	5
.L157:
		mvk	.d1	1, A4
.L153:
		ret	.s2	B3
		nop	5
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
		subah	.d1	A4, 24, A3
		cmpltu	.l1	9, A3, A0
	[A0]	set	.s1	A4, 5, 5, A4
	[A0]	addk	.s1	-97, A4
	[A0]	cmpltu	.l1	5, A4, A4
	[A0]	cmpeq	.l1	0, A4, A4
	[!A0]	mvk	.d1	1, A4
		ret	.s2	B3
		nop	5
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.type	toascii, @function
toascii:
		clr	.s1	A4, 7, 31, A4
		ret	.s2	B3
		nop	5
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.type	fdim, @function
fdim:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A12
		mv	.l1x	B5, A13
		mv	.l2x	A4, B4
		mv	.l2x	A11, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s2	.L167
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L167
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A0
	[!A0]	mvk	.d1	0, A4
	[!A0]	mvk	.d1	0, A5
	[!A0]	b	.s2	.L167
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_subd), B3
.L167:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t1	*+B15(24), A13
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mv	.l1x	B4, A11
		mv	.l2x	A4, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	mv	.d1	A10, A4
	[A0]	b	.s2	.L180
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	mv	.d1	A11, A4
	[A1]	b	.s2	.L180
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	0, A4
	[!A2]	b	.s2	.L180
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_subf), B3
.L180:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A10
		mv	.l1x	B5, A11
		mv	.l2x	A4, B4
		mv	.l2x	A13, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L201
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L200
		nop	5
		clr	.s1	A13, 0, 30, A4
		clr	.s1	A11, 0, 30, A6
		cmpeq	.l1	A6, A4, A2
	[A2]	b	.s2	.L195
		nop	5
		mv	.d1	A4, A1
	[A1]	b	.s2	.L201
		nop	5
.L200:
		dmv	.s1	A13, A12, A5:A4
		b	.s2	.L193
		nop	5
.L195:
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L200
		nop	5
.L201:
		dmv	.s1	A11, A10, A5:A4
.L193:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t1	*+B15(24), A13
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A11
		mv	.l1x	B4, A10
		mv	.l2x	A4, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L216
		nop	5
		mv	.l2x	A10, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L215
		nop	5
		clr	.s1	A11, 0, 30, A3
		clr	.s1	A10, 0, 30, A4
		cmpeq	.l1	A4, A3, A2
	[A2]	b	.s2	.L210
		nop	5
		mv	.d1	A3, A1
	[A1]	b	.s2	.L216
		nop	5
.L215:
		mv	.d1	A11, A4
		b	.s2	.L208
		nop	5
.L210:
		mv	.l2x	A10, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[!A0]	mv	.d1	A11, A10
.L216:
		mv	.d1	A10, A4
.L208:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A10
		mv	.l1x	B5, A11
		mv	.l2x	A4, B4
		mv	.l2x	A13, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L231
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L230
		nop	5
		clr	.s1	A13, 0, 30, A4
		clr	.s1	A11, 0, 30, A6
		cmpeq	.l1	A6, A4, A2
	[A2]	b	.s2	.L225
		nop	5
		mv	.d1	A4, A1
	[A1]	b	.s2	.L231
		nop	5
.L230:
		dmv	.s1	A13, A12, A5:A4
		b	.s2	.L223
		nop	5
.L225:
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L230
		nop	5
.L231:
		dmv	.s1	A11, A10, A5:A4
.L223:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t1	*+B15(24), A13
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A12
		mv	.l1x	B5, A13
		mv	.l2x	A4, B4
		mv	.l2x	A11, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L244
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L246
		nop	5
		clr	.s1	A11, 0, 30, A4
		clr	.s1	A13, 0, 30, A6
		cmpeq	.l1	A6, A4, A2
	[A2]	b	.s2	.L240
		nop	5
		mv	.d1	A4, A1
	[A1]	b	.s2	.L246
		nop	5
.L244:
		dmv	.s1	A13, A12, A5:A4
.L238:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t1	*+B15(24), A13
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
.L240:
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L244
		nop	5
.L246:
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L238
		nop	5
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mv	.l1x	B4, A11
		mv	.l2x	A4, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L259
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L261
		nop	5
		clr	.s1	A10, 0, 30, A3
		clr	.s1	A11, 0, 30, A4
		cmpeq	.l1	A4, A3, A2
	[A2]	b	.s2	.L255
		nop	5
		mv	.d1	A3, A1
	[A1]	b	.s2	.L261
		nop	5
.L259:
		mv	.d1	A11, A4
		b	.s2	.L253
		nop	5
.L255:
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[!A0]	mv	.d1	A11, A10
.L261:
		mv	.d1	A10, A4
.L253:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A12
		mv	.l1x	B5, A13
		mv	.l2x	A4, B4
		mv	.l2x	A11, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L274
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L276
		nop	5
		clr	.s1	A11, 0, 30, A4
		clr	.s1	A13, 0, 30, A6
		cmpeq	.l1	A6, A4, A2
	[A2]	b	.s2	.L270
		nop	5
		mv	.d1	A4, A1
	[A1]	b	.s2	.L276
		nop	5
.L274:
		dmv	.s1	A13, A12, A5:A4
.L268:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t1	*+B15(24), A13
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
.L270:
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L274
		nop	5
.L276:
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L268
		nop	5
	.size	fminl, .-fminl
	.align	2
	.global	l64a
	.type	l64a, @function
l64a:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A0
		ldw	.d2t1	*+B14($GOT(s.0)), A4
		nop	4
		mv	.d1	A4, A5
	[!A0]	b	.s2	.L284
		nop	5
		ldw	.d2t1	*+B14($GOT(digits)), A7
		nop	4
		mvk	.s1	63, A6
.L285:
		and	.d1	A6, A0, A3
		add	.d1	A7, A3, A8
		ldb	.d1t1	*A8, A9
		nop	4
		stb	.d1t1	A9, *A5++[1]
		shru	.s1	A0, 6, A0
	[A0]	b	.s2	.L285
		nop	5
.L284:
		mvk	.d1	0, A16
		stb	.d1t1	A16, *A5
		ldw	.d2t2	*+B15(8), B14
		nop	4
		add	.d2	B15, 8, B15
		ret	.s2	B3
		nop	5
	.size	l64a, .-l64a
	.align	2
	.global	srand
	.type	srand, @function
srand:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		addaw	.d1x	B14, (seed), A5
		sub	.d1	A4, 1, A4
		stw	.d1t1	A4, *A5
		mvk	.d1	0, A3
		stw	.d1t1	A3, *+A5(4)
		ldw	.d2t2	*+B15(8), B14
		nop	4
		add	.d2	B15, 8, B15
		ret	.s2	B3
		nop	5
	.size	srand, .-srand
	.align	2
	.global	rand
	.type	rand, @function
rand:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		addaw	.d1x	B14, (seed), A6
		ldw	.d1t1	*+A6(4), A3
		nop	4
		mvk	.s1	32557, A5
		mvklh	.s1	19605, A5
		mpy32	.m1	A3, A5, A7
		nop	3
		ldw	.d1t1	*A6, A8
		nop	4
		mvk	.s1	-3027, A4
		mvklh	.s1	22609, A4
		mpy32	.m1	A8, A4, A9
		nop	3
		add	.d1	A7, A9, A16
		mpy32u	.m1	A8, A5, A1:A0
		nop	3
		add	.d1	A16, A1, A17
		mvk	.d1	1, A18
		addu	.l1	A0, A18, A5:A4
		add	.d1	A5, A17, A5
		stdw	.d1t1	A5:A4, *A6
		shru	.s1	A5, 1, A4
		ldw	.d2t2	*+B15(8), B14
		nop	4
		add	.d2	B15, 8, B15
		ret	.s2	B3
		nop	5
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
		mv	.l1x	B4, A0
	[!A0]	stw	.d1t2	B4, *+A4(4)
	[!A0]	stw	.d1t2	B4, *A4
	[!A0]	b	.s2	.L293
		nop	5
		ldw	.d2t1	*B4, A3
		nop	4
		stw	.d1t1	A3, *A4
		stw	.d1t2	B4, *+A4(4)
		stw	.d2t1	A4, *B4
		ldw	.d1t1	*A4, A1
		nop	4
	[A1]	stw	.d1t1	A4, *+A1(4)
.L293:
		ret	.s2	B3
		nop	5
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
		ldw	.d1t1	*+A4(4), A1
		nop	4
	[A1]	ldw	.d1t1	*A4, A3
		nop	4
	[A1]	stw	.d1t1	A3, *A1
		ret	.s2	B3
		nop	5
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
		subah	.d2	B15, 24, B15
		stw	.d2t1	A15, *+B15(48)
		stw	.d2t2	B14, *+B15(44)
		stw	.d2t2	B12, *+B15(40)
		stdw	.d2t2	B11:B10, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A14, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A14
		mv	.d2	B4, B10
		mv	.l2x	A6, B11
		mv	.l1x	B6, A12
		mv	.d1	A8, A15
		ldw	.d1t1	*A6, A13
		nop	4
		mv	.d1	A13, A0
	[!A0]	b	.s2	.L311
		nop	5
		mv	.l1x	B4, A10
		mvk	.d1	0, A11
.L313:
		mv	.l2x	A10, B12
		mv	.l2x	A10, B4
		mv	.d1	A14, A4
		call	.s2x	A15
		addkpc	.s2	.L326, B3, 4
.L326:
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L310
		nop	5
		add	.d1	A11, 1, A11
		add	.d1	A10, A12, A10
		cmpeq	.l1	A11, A13, A2
	[!A2]	b	.s2	.L313
		nop	5
.L311:
		add	.d1	A13, 1, A3
		stw	.d2t1	A3, *B11
		mpy32	.m1	A12, A13, A4
		nop	3
		add	.d2x	B10, A4, B12
		mv	.d1	A12, A0
	[!A0]	b	.s2	.L310
		nop	5
		mv	.d1	A12, A6
		mv	.l2x	A14, B4
		mv	.l1x	B12, A4
		callp	.s2	(memmove), B3
.L310:
		mv	.l1x	B12, A4
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t1	*+B15(24), A14
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		lddw	.d2t2	*+B15(32), B11:B10
		nop	4
		ldw	.d2t2	*+B15(40), B12
		nop	4
		ldw	.d2t2	*+B15(44), B14
		nop	4
		ldw	.d2t1	*+B15(48), A15
		nop	4
		addab	.d2	B15, 48, B15
		ret	.s2	B3
		nop	5
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
		subah	.d2	B15, 20, B15
		stw	.d2t1	A15, *+B15(40)
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B10, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A14, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A12
		mv	.l1x	B6, A14
		mv	.d1	A8, A13
		ldw	.d1t1	*A6, A15
		nop	4
		mv	.d1	A15, A0
	[!A0]	b	.s2	.L329
		nop	5
		mv	.l1x	B4, A10
		mvk	.d1	0, A11
.L331:
		mv	.l2x	A10, B10
		mv	.l2x	A10, B4
		mv	.d1	A12, A4
		call	.s2x	A13
		addkpc	.s2	.L340, B3, 4
.L340:
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L328
		nop	5
		add	.d1	A11, 1, A11
		add	.d1	A10, A14, A10
		cmpeq	.l1	A11, A15, A2
	[!A2]	b	.s2	.L331
		nop	5
.L329:
		mvk	.d2	0, B10
.L328:
		mv	.l1x	B10, A4
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t1	*+B15(24), A14
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B10
		nop	4
		ldw	.d2t2	*+B15(36), B14
		nop	4
		ldw	.d2t1	*+B15(40), A15
		nop	4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
		shr	.s1	A4, 31, A3
		xor	.d1	A4, A3, A4
		sub	.d1	A4, A3, A4
		ret	.s2	B3
		nop	5
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
		mv	.d1	A4, A5
		ldb	.d1t1	*A4, A3
		nop	4
		shl	.s1	A3, 24, A4
		ext	.s1	A3, 24, 24, A7
		sub	.d1	A7, 9, A6
		cmpltu	.l1	4, A6, A8
		cmpeq	.l1	0, A8, A9
		mvk	.s1	32, A16
		cmpeq	.l1	A16, A7, A17
		or	.d1	A17, A9, A0
	[!A0]	b	.s2	.L344
		nop	5
.L345:
		ldb	.d1t1	*++A5[1], A18
		nop	4
		shl	.s1	A18, 24, A4
		ext	.s1	A18, 24, 24, A19
		sub	.d1	A19, 9, A20
		cmpltu	.l1	4, A20, A21
		cmpeq	.l1	0, A21, A22
		cmpeq	.l1	A16, A19, A23
		or	.d1	A23, A22, A1
	[A1]	b	.s2	.L345
		nop	5
.L344:
		mvk	.d1	0, A24
		mvklh	.s1	11008, A24
		cmpeq	.l1	A24, A4, A2
	[A2]	b	.s2	.L351
		nop	5
		mvk	.d1	0, A25
		mvklh	.s1	11520, A25
		cmpeq	.l1	A25, A4, A0
	[A0]	mvk	.d2	1, B0
	[A0]	b	.s2	.L346
		nop	5
		mvk	.d2	0, B0
		b	.s2	.L347
		nop	5
.L351:
		mvk	.d2	0, B0
.L346:
		add	.d1	A5, 1, A5
.L347:
		ldb	.d1t1	*A5, A26
		nop	4
		ext	.s1	A26, 24, 24, A27
		subah	.d1	A27, 24, A27
		mvk	.d1	0, A4
		cmpltu	.l2x	9, A27, B1
	[B1]	b	.s2	.L349
		nop	5
.L348:
		shl	.s1	A4, 2, A28
		add	.d1	A28, A4, A29
		shl	.s1	A29, 1, A30
		subah	.d1	A26, 24, A26
		ext	.s1	A26, 24, 24, A31
		sub	.d1	A30, A31, A4
		ldb	.d1t1	*++A5[1], A26
		nop	4
		ext	.s1	A26, 24, 24, A3
		subah	.d1	A3, 24, A3
		cmpltu	.l2x	9, A3, B2
	[!B2]	b	.s2	.L348
		nop	5
.L349:
	[!B0]	neg	.l1	A4, A4
		ret	.s2	B3
		nop	5
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
		mv	.d1	A4, A5
		ldb	.d1t1	*A4, A3
		nop	4
		shl	.s1	A3, 24, A4
		ext	.s1	A3, 24, 24, A7
		sub	.d1	A7, 9, A6
		cmpltu	.l1	4, A6, A8
		cmpeq	.l1	0, A8, A9
		mvk	.s1	32, A16
		cmpeq	.l1	A16, A7, A17
		or	.d1	A17, A9, A0
	[!A0]	b	.s2	.L361
		nop	5
.L362:
		ldb	.d1t1	*++A5[1], A18
		nop	4
		shl	.s1	A18, 24, A4
		ext	.s1	A18, 24, 24, A19
		sub	.d1	A19, 9, A20
		cmpltu	.l1	4, A20, A21
		cmpeq	.l1	0, A21, A22
		cmpeq	.l1	A16, A19, A23
		or	.d1	A23, A22, A1
	[A1]	b	.s2	.L362
		nop	5
.L361:
		mvk	.d1	0, A24
		mvklh	.s1	11008, A24
		cmpeq	.l1	A24, A4, A2
	[A2]	b	.s2	.L368
		nop	5
		mvk	.d1	0, A25
		mvklh	.s1	11520, A25
		cmpeq	.l1	A25, A4, A0
	[A0]	mvk	.d2	1, B0
	[A0]	b	.s2	.L363
		nop	5
		mvk	.d2	0, B0
		b	.s2	.L364
		nop	5
.L368:
		mvk	.d2	0, B0
.L363:
		add	.d1	A5, 1, A5
.L364:
		ldb	.d1t1	*A5, A26
		nop	4
		ext	.s1	A26, 24, 24, A27
		subah	.d1	A27, 24, A27
		mvk	.d1	0, A4
		cmpltu	.l2x	9, A27, B1
	[B1]	b	.s2	.L366
		nop	5
.L365:
		shl	.s1	A4, 2, A28
		add	.d1	A28, A4, A29
		shl	.s1	A29, 1, A30
		subah	.d1	A26, 24, A26
		ext	.s1	A26, 24, 24, A31
		sub	.d1	A30, A31, A4
		ldb	.d1t1	*++A5[1], A26
		nop	4
		ext	.s1	A26, 24, 24, A3
		subah	.d1	A3, 24, A3
		cmpltu	.l2x	9, A3, B2
	[!B2]	b	.s2	.L365
		nop	5
.L366:
	[!B0]	neg	.l1	A4, A4
		ret	.s2	B3
		nop	5
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
		mv	.d1	A4, A8
		ldb	.d1t1	*A4, A3
		nop	4
		shl	.s1	A3, 24, A4
		ext	.s1	A3, 24, 24, A6
		sub	.d1	A6, 9, A5
		cmpltu	.l1	4, A5, A7
		cmpeq	.l1	0, A7, A9
		mvk	.s1	32, A16
		cmpeq	.l1	A16, A6, A17
		or	.d1	A17, A9, A0
	[!A0]	b	.s2	.L378
		nop	5
.L379:
		ldb	.d1t1	*++A8[1], A18
		nop	4
		shl	.s1	A18, 24, A4
		ext	.s1	A18, 24, 24, A19
		sub	.d1	A19, 9, A20
		cmpltu	.l1	4, A20, A21
		cmpeq	.l1	0, A21, A22
		cmpeq	.l1	A16, A19, A23
		or	.d1	A23, A22, A1
	[A1]	b	.s2	.L379
		nop	5
.L378:
		mvk	.d1	0, A24
		mvklh	.s1	11008, A24
		cmpeq	.l1	A24, A4, A2
	[A2]	b	.s2	.L385
		nop	5
		mvk	.d1	0, A25
		mvklh	.s1	11520, A25
		cmpeq	.l1	A25, A4, A0
	[A0]	mvk	.d2	1, B0
	[A0]	b	.s2	.L380
		nop	5
		mvk	.d2	0, B0
		b	.s2	.L381
		nop	5
.L385:
		mvk	.d2	0, B0
.L380:
		add	.d1	A8, 1, A8
.L381:
		ldb	.d1t1	*A8, A26
		nop	4
		ext	.s1	A26, 24, 24, A27
		subah	.d1	A27, 24, A27
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		cmpltu	.l1	9, A27, A1
	[A1]	b	.s2	.L383
		nop	5
.L382:
		addu	.l1	A4, A4, A1:A0
		add	.d1	A1, A5, A28
		add	.d1	A28, A5, A29
		addu	.l1	A0, A0, A7:A6
		add	.d1	A7, A29, A30
		add	.d1	A30, A29, A31
		addu	.l1	A6, A4, A1:A0
		add	.d1	A1, A31, A7
		add	.d1	A7, A5, A5
		addu	.l1	A0, A0, A7:A6
		add	.d1	A7, A5, A9
		add	.d1	A9, A5, A5
		subah	.d1	A26, 24, A26
		ext	.s1	A26, 24, 24, A17
		shr	.s1	A17, 31, A18
		sub	.d1	A6, A17, A4
		cmpltu	.l1	A6, A4, A19
		sub	.d1	A5, A18, A20
		sub	.d1	A20, A19, A5
		ldb	.d1t1	*++A8[1], A26
		nop	4
		ext	.s1	A26, 24, 24, A21
		subah	.d1	A21, 24, A21
		cmpltu	.l1	9, A21, A1
	[!A1]	b	.s2	.L382
		nop	5
.L383:
	[!B0]	neg	.l1	A4, A4
	[!B0]	cmpltu	.l1	0, A4, A1
	[!B0]	neg	.l1	A5, A5
	[!B0]	sub	.d1	A5, A1, A5
		ret	.s2	B3
		nop	5
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.type	bsearch, @function
bsearch:
		subah	.d2	B15, 20, B15
		stw	.d2t1	A15, *+B15(40)
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B10, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A14, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A14
		mv	.l1x	B4, A13
		mv	.d1	A6, A10
		mv	.l1x	B6, A12
		mv	.d1	A8, A15
		b	.s2	.L404
		nop	5
.L399:
		mv	.l1x	B10, A10
.L404:
		mv	.d1	A10, A0
	[!A0]	b	.s2	.L395
		nop	5
		shru	.s2x	A10, 1, B10
		mpy32	.m1x	A12, B10, A3
		nop	3
		add	.d1	A13, A3, A11
		mv	.l2x	A11, B4
		mv	.d1	A14, A4
		call	.s2x	A15
		addkpc	.s2	.L406, B3, 4
.L406:
		cmpgt	.l1	0, A4, A1
	[A1]	b	.s2	.L399
		nop	5
		cmplt	.l1	0, A4, A2
	[!A2]	b	.s2	.L394
		nop	5
		add	.d1	A11, A12, A13
		sub	.d1	A10, 1, A10
		mv	.l1x	B10, A4
		sub	.d1	A10, A4, A10
		b	.s2	.L404
		nop	5
.L395:
		mvk	.d1	0, A11
.L394:
		mv	.d1	A11, A4
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t1	*+B15(24), A14
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B10
		nop	4
		ldw	.d2t2	*+B15(36), B14
		nop	4
		ldw	.d2t1	*+B15(40), A15
		nop	4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
		subah	.d2	B15, 24, B15
		stw	.d2t1	A15, *+B15(48)
		stw	.d2t2	B14, *+B15(44)
		stw	.d2t2	B11, *+B15(40)
		stw	.d2t2	B10, *+B15(36)
		stw	.d2t2	B3, *+B15(32)
		stw	.d2t1	A14, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A14
		mv	.l1x	B4, A12
		mv	.d1	A6, A10
		mv	.l1x	B6, A11
		mv	.d1	A8, A15
		mv	.l1x	B8, A13
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L408
		nop	5
.L411:
		shr	.s2x	A10, 1, B11
		mpy32	.m2x	B11, A11, B10
		nop	3
		add	.d2x	B10, A12, B10
		mv	.d1	A13, A6
		mv	.d2	B10, B4
		mv	.d1	A14, A4
		call	.s2x	A15
		addkpc	.s2	.L420, B3, 4
.L420:
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L407
		nop	5
		cmplt	.l1	0, A4, A2
	[A2]	add	.d1x	A11, B10, A12
	[A2]	sub	.d1	A10, 1, A10
	[A2]	shr	.s2x	A10, 1, B11
		mv	.l1x	B11, A10
		mv	.l1x	B11, A0
	[A0]	b	.s2	.L411
		nop	5
.L408:
		mvk	.d2	0, B10
.L407:
		mv	.l1x	B10, A4
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t1	*+B15(24), A13
		nop	4
		ldw	.d2t1	*+B15(28), A14
		nop	4
		ldw	.d2t2	*+B15(32), B3
		nop	4
		ldw	.d2t2	*+B15(36), B10
		nop	4
		ldw	.d2t2	*+B15(40), B11
		nop	4
		ldw	.d2t2	*+B15(44), B14
		nop	4
		ldw	.d2t1	*+B15(48), A15
		nop	4
		addab	.d2	B15, 48, B15
		ret	.s2	B3
		nop	5
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(16)
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L423, B3, 4
.L423:
		ldw	.d2t2	*+B15(16), B3
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
		shr	.s1	A5, 31, A3
		xor	.d1	A4, A3, A6
		xor	.d1	A5, A3, A5
		sub	.d1	A6, A3, A4
		cmpltu	.l1	A6, A4, A7
		sub	.d1	A5, A3, A8
		sub	.d1	A8, A7, A5
		ret	.s2	B3
		nop	5
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A14, *+B15(20)
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A3, A10
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A14
		mv	.l1x	B5, A15
		callp	.s2	(__c6xabi_divlli), B3
		stdw	.d1t1	A5:A4, *A10
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_remlli), B3
		stdw	.d1t1	A5:A4, *+A10(8)
		mv	.d1	A10, A4
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t1	*+B15(12), A12
		nop	4
		ldw	.d2t1	*+B15(16), A13
		nop	4
		ldw	.d2t1	*+B15(20), A14
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		ldw	.d2t1	*+B15(32), A15
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
		shr	.s1	A4, 31, A3
		xor	.d1	A4, A3, A4
		sub	.d1	A4, A3, A4
		ret	.s2	B3
		nop	5
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(16)
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L434, B3, 4
.L434:
		ldw	.d2t2	*+B15(16), B3
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
		shr	.s1	A5, 31, A3
		xor	.d1	A4, A3, A6
		xor	.d1	A5, A3, A5
		sub	.d1	A6, A3, A4
		cmpltu	.l1	A6, A4, A7
		sub	.d1	A5, A3, A8
		sub	.d1	A8, A7, A5
		ret	.s2	B3
		nop	5
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A14, *+B15(20)
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A3, A10
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A14
		mv	.l1x	B5, A15
		callp	.s2	(__c6xabi_divlli), B3
		stdw	.d1t1	A5:A4, *A10
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_remlli), B3
		stdw	.d1t1	A5:A4, *+A10(8)
		mv	.d1	A10, A4
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t1	*+B15(12), A12
		nop	4
		ldw	.d2t1	*+B15(16), A13
		nop	4
		ldw	.d2t1	*+B15(20), A14
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		ldw	.d2t1	*+B15(32), A15
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
		ldw	.d1t1	*A4, A5
		nop	4
		cmpeq	.l1x	A5, B4, A9
.L449:
		cmpeq	.l1	0, A9, A6
		cmpeq	.l1	0, A5, A3
		cmpeq	.l1	0, A3, A7
		and	.d1	A7, A6, A0
	[!A0]	b	.s2	.L442
		nop	5
		ldw	.d1t1	*++A4[1], A5
		nop	4
		mv	.l1x	B4, A8
		cmpeq	.l1	A8, A5, A9
		b	.s2	.L449
		nop	5
.L442:
		mv	.d1	A5, A1
	[!A1]	mvk	.d1	0, A4
		ret	.s2	B3
		nop	5
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
		ldw	.d1t1	*A4, A5
		nop	4
		ldw	.d2t1	*B4, A6
		nop	4
.L460:
		cmpeq	.l1	0, A5, A3
		cmpeq	.l1	0, A3, A7
		cmpeq	.l1	A6, A5, A8
		and	.d1	A8, A7, A9
		cmpeq	.l1	0, A6, A16
		cmpeq	.l1	0, A16, A17
		and	.d1	A9, A17, A0
	[!A0]	b	.s2	.L452
		nop	5
		ldw	.d1t1	*++A4[1], A5
		nop	4
		ldw	.d2t1	*++B4[1], A6
		nop	4
		b	.s2	.L460
		nop	5
.L452:
		cmpgt	.l1	A6, A5, A1
	[!A1]	cmplt	.l1	A6, A5, A4
	[A1]	mvk	.d1	-1, A4
		ret	.s2	B3
		nop	5
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
		sub	.d1	A4, 4, A3
.L463:
		ldw	.d2t1	*B4++[1], A0
		nop	4
		stw	.d1t1	A0, *++A3[1]
	[A0]	b	.s2	.L463
		nop	5
		ret	.s2	B3
		nop	5
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
		ldw	.d1t1	*A4, A0
		nop	4
	[!A0]	b	.s2	.L469
		nop	5
		mv	.d1	A4, A5
.L468:
		ldw	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s2	.L468
		nop	5
.L467:
		sub	.d1	A5, A4, A4
		shr	.s1	A4, 2, A4
		ret	.s2	B3
		nop	5
.L469:
		mv	.d1	A4, A5
		b	.s2	.L467
		nop	5
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L477
		nop	5
		mv	.d1	A4, A8
		mv	.l1x	B4, A7
.L474:
		sub	.d1	A0, 1, A0
		mv	.l2x	A7, B4
		mv	.d1	A8, A4
		ldw	.d1t1	*A8++[1], A5
		nop	4
		ldw	.d1t1	*A7++[1], A9
		nop	4
		cmpeq	.l1	0, A5, A3
		cmpeq	.l1	0, A3, A16
		cmpeq	.l1	A9, A5, A17
		and	.d1	A17, A16, A18
		cmpeq	.l1	0, A9, A19
		cmpeq	.l1	0, A19, A20
		and	.d1	A18, A20, A2
	[!A2]	b	.s2	.L486
		nop	5
		sub	.d1	A6, 1, A6
	[A0]	b	.s2	.L474
		nop	5
.L477:
		mvk	.d1	0, A4
.L472:
		ret	.s2	B3
		nop	5
.L486:
		mv	.d1	A6, A1
	[!A1]	b	.s2	.L477
		nop	5
		ldw	.d1t1	*A4, A4
		nop	4
		ldw	.d2t1	*B4, A6
		nop	4
		cmpgt	.l1	A6, A4, A1
	[!A1]	cmplt	.l1	A6, A4, A4
	[!A1]	b	.s2	.L472
		nop	5
		mvk	.d1	-1, A4
		b	.s2	.L472
		nop	5
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L493
		nop	5
		mv	.d1	A4, A3
.L489:
		sub	.d1	A0, 1, A0
		mv	.d1	A3, A4
		add	.d1	A3, 4, A3
		ldw	.d1t1	*A4, A7
		nop	4
		mv	.l1x	B4, A5
		cmpeq	.l1	A5, A7, A2
	[A2]	b	.s2	.L497
		nop	5
		sub	.d1	A6, 1, A6
	[A0]	b	.s2	.L489
		nop	5
.L493:
		mvk	.d1	0, A4
		b	.s2	.L487
		nop	5
.L497:
		mv	.d1	A6, A1
	[!A1]	b	.s2	.L493
		nop	5
.L487:
		ret	.s2	B3
		nop	5
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L503
		nop	5
		mv	.d1	A4, A5
		mv	.l1x	B4, A3
.L500:
		sub	.d1	A0, 1, A0
		mv	.l2x	A3, B4
		mv	.d1	A5, A4
		add	.d1	A5, 4, A5
		add	.d1	A3, 4, A3
		ldw	.d1t1	*A4, A8
		nop	4
		ldw	.d2t1	*B4, A7
		nop	4
		cmpeq	.l1	A7, A8, A2
	[!A2]	b	.s2	.L512
		nop	5
		sub	.d1	A6, 1, A6
	[A0]	b	.s2	.L500
		nop	5
.L503:
		mvk	.d1	0, A4
.L498:
		ret	.s2	B3
		nop	5
.L512:
		mv	.d1	A6, A1
	[!A1]	b	.s2	.L503
		nop	5
		ldw	.d1t1	*A4, A4
		nop	4
		cmpgt	.l1	A7, A4, A1
	[!A1]	cmplt	.l1	A7, A4, A4
	[!A1]	b	.s2	.L498
		nop	5
		mvk	.d1	-1, A4
		b	.s2	.L498
		nop	5
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L514
		nop	5
		shl	.s1	A6, 2, A6
		callp	.s2	(memcpy), B3
.L514:
		mv	.d1	A10, A4
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
		mv	.l1x	B4, A3
		cmpeq	.l1	A3, A4, A0
	[A0]	b	.s2	.L521
		nop	5
		shl	.s1	A6, 2, A5
		sub	.d1	A4, A3, A7
		cmpgtu	.l1	A5, A7, A1
	[A1]	b	.s2	.L522
		nop	5
		mv	.d1	A6, A2
	[!A2]	b	.s2	.L521
		nop	5
		sub	.d1	A4, 4, A8
		mv	.d1	A6, A0
.L525:
		sub	.d1	A0, 1, A0
		ldw	.d2t1	*B4++[1], A6
		nop	4
		stw	.d1t1	A6, *++A8[1]
	[A0]	b	.s2	.L525
		nop	5
		b	.s2	.L521
		nop	5
.L522:
		mv	.d1	A6, A1
	[!A1]	b	.s2	.L521
		nop	5
		add	.d2x	B4, A5, B4
		add	.d1	A4, A5, A9
		sub	.d1	A5, 4, A16
		shru	.s1	A16, 2, A17
		add	.d1	A17, 1, A2
.L524:
		sub	.d1	A2, 1, A2
		ldw	.d2t1	*--B4[1], A18
		nop	4
		stw	.d1t1	A18, *--A9[1]
	[A2]	b	.s2	.L524
		nop	5
.L521:
		ret	.s2	B3
		nop	5
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
		mv	.d1	A6, A1
	[!A1]	b	.s2	.L533
		nop	5
		mv	.d1	A4, A3
		mv	.d1	A6, A0
.L534:
		sub	.d1	A0, 1, A0
		stw	.d1t2	B4, *A3++[1]
	[A0]	b	.s2	.L534
		nop	5
.L533:
		ret	.s2	B3
		nop	5
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
		mv	.l1x	B4, A3
		cmpgtu	.l1	A3, A4, A0
	[!A0]	b	.s2	.L541
		nop	5
		add	.d1	A4, A6, A7
		add	.d2x	B4, A6, B5
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L540
		nop	5
		sub	.d1	A7, A4, A1
.L543:
		sub	.d1	A1, 1, A1
		ldb	.d1t1	*--A7[1], A4
		nop	4
		stb	.d2t1	A4, *--B5[1]
	[A1]	b	.s2	.L543
		nop	5
.L540:
		ret	.s2	B3
		nop	5
.L541:
		cmpeq	.l1	A3, A4, A1
	[A1]	b	.s2	.L540
		nop	5
		mv	.d1	A6, A2
	[!A2]	b	.s2	.L540
		nop	5
		sub	.d2	B4, 1, B4
.L544:
		sub	.d1	A2, 1, A2
		ldb	.d1t1	*A4++[1], A6
		nop	4
		stb	.d2t1	A6, *++B4[1]
	[A2]	b	.s2	.L544
		nop	5
		b	.s2	.L540
		nop	5
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
		mv	.l1x	B4, A3
		subah	.d1	A3, 16, A3
		cmpgt	.l1	0, A3, A1
	[!A1]	shl	.s1	A4, A3, A3
	[!A1]	mvk	.d1	0, A7
	[A1]	shru	.s1	A4, 1, A6
	[A1]	mvk	.s1	31, A3
	[A1]	mv	.l1x	B4, A9
	[A1]	sub	.d1	A3, A9, A3
	[A1]	shru	.s1	A6, A3, A6
	[A1]	shl	.s1	A5, A9, A3
	[A1]	or	.d1	A3, A6, A3
	[A1]	shl	.s1	A4, A9, A7
		neg	.l1x	B4, A6
		clr	.s1	A6, 6, 31, A16
		subah	.d1	A16, 16, A17
		cmpgt	.l1	0, A17, A0
	[!A0]	shru	.s1	A5, A17, A4
	[!A0]	mvk	.d1	0, A5
	[A0]	shl	.s1	A5, 1, A17
	[A0]	mvk	.s1	31, A8
	[A0]	sub	.d1	A8, A16, A8
	[A0]	shl	.s1	A17, A8, A17
	[A0]	shru	.s1	A4, A16, A4
	[A0]	or	.d1	A4, A17, A4
	[A0]	shru	.s1	A5, A16, A5
		or	.d1	A7, A4, A4
		or	.d1	A3, A5, A5
		ret	.s2	B3
		nop	5
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
		mv	.l1x	B4, A6
		subah	.d1	A6, 16, A6
		cmpgt	.l1	0, A6, A1
	[!A1]	shru	.s1	A5, A6, A6
	[!A1]	mvk	.d1	0, A7
	[A1]	shl	.s1	A5, 1, A3
	[A1]	mvk	.s1	31, A6
	[A1]	mv	.l1x	B4, A9
	[A1]	sub	.d1	A6, A9, A6
	[A1]	shl	.s1	A3, A6, A3
	[A1]	shru	.s1	A4, A9, A6
	[A1]	or	.d1	A6, A3, A6
	[A1]	shru	.s1	A5, A9, A7
		neg	.l1x	B4, A3
		clr	.s1	A3, 6, 31, A16
		subah	.d1	A16, 16, A17
		cmpgt	.l1	0, A17, A0
	[!A0]	shl	.s1	A4, A17, A5
	[!A0]	mvk	.d1	0, A4
	[A0]	shru	.s1	A4, 1, A17
	[A0]	mvk	.s1	31, A8
	[A0]	sub	.d1	A8, A16, A8
	[A0]	shru	.s1	A17, A8, A17
	[A0]	shl	.s1	A5, A16, A5
	[A0]	or	.d1	A5, A17, A5
	[A0]	shl	.s1	A4, A16, A4
		or	.d1	A6, A4, A4
		or	.d1	A7, A5, A5
		ret	.s2	B3
		nop	5
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.type	rotl32, @function
rotl32:
		mv	.l1x	B4, A3
		rotl	.m1	A4, A3, A4
		nop	1
		ret	.s2	B3
		nop	5
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.type	rotr32, @function
rotr32:
		mvk	.s1	32, A5
		mv	.l1x	B4, A3
		sub	.d1	A5, A3, A6
		rotl	.m1	A4, A6, A4
		nop	1
		ret	.s2	B3
		nop	5
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
		mv	.l1x	B4, A3
		rotl	.m1	A4, A3, A4
		nop	1
		ret	.s2	B3
		nop	5
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
		mvk	.s1	32, A5
		mv	.l1x	B4, A3
		sub	.d1	A5, A3, A6
		rotl	.m1	A4, A6, A4
		nop	1
		ret	.s2	B3
		nop	5
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.type	rotl16, @function
rotl16:
		and	.d1x	15, B4, A5
		shl	.s1	A4, A5, A3
		extu	.s1	A4, 16, 16, A4
		neg	.l1	A5, A6
		and	.d1	15, A6, A7
		shru	.s1	A4, A7, A8
		or	.d1	A8, A3, A4
		ret	.s2	B3
		nop	5
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
		and	.d1x	15, B4, A5
		extu	.s1	A4, 16, 16, A3
		shru	.s1	A3, A5, A6
		neg	.l1	A5, A7
		and	.d1	15, A7, A8
		shl	.s1	A4, A8, A4
		or	.d1	A4, A6, A4
		ret	.s2	B3
		nop	5
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
		and	.d1x	7, B4, A5
		shl	.s1	A4, A5, A3
		extu	.s1	A4, 24, 24, A4
		neg	.l1	A5, A6
		and	.d1	7, A6, A7
		shru	.s1	A4, A7, A8
		or	.d1	A8, A3, A4
		ret	.s2	B3
		nop	5
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
		and	.d1x	7, B4, A5
		extu	.s1	A4, 24, 24, A3
		shru	.s1	A3, A5, A6
		neg	.l1	A5, A7
		and	.d1	7, A7, A8
		shl	.s1	A4, A8, A4
		or	.d1	A4, A6, A4
		ret	.s2	B3
		nop	5
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
		extu	.s1	A4, 16, 16, A3
		shru	.s1	A3, 8, A5
		shl	.s1	A4, 8, A4
		or	.d1	A4, A5, A4
		ret	.s2	B3
		nop	5
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
		rotl	.m1	A4, 16, A4
		nop	1
		swap4	.l1	A4, A4
		ret	.s2	B3
		nop	5
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
		rotl	.m1	A4, 16, A3
		nop	1
		rotl	.m1	A5, 16, A4
		nop	1
		swap4	.l1	A4, A4
		swap4	.l1	A3, A5
		ret	.s2	B3
		nop	5
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
		mvk	.d1	0, A3
		mvk	.s1	32, A1
.L591:
		sub	.d1	A1, 1, A1
		shru	.s1	A4, A3, A5
		and	.d1	1, A5, A0
		add	.d1	A3, 1, A3
	[A0]	b	.s2	.L594
		nop	5
	[A1]	b	.s2	.L591
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L588
		nop	5
.L594:
		mv	.d1	A3, A4
.L588:
		ret	.s2	B3
		nop	5
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
		mv	.d1	A4, A0
	[!A0]	mvk	.d1	0, A4
	[!A0]	b	.s2	.L595
		nop	5
		and	.d1	1, A0, A4
		mv	.d1	A4, A1
	[A1]	b	.s2	.L595
		nop	5
		mvk	.d1	1, A4
.L597:
		shr	.s1	A0, 1, A0
		add	.d1	A4, 1, A4
		and	.d1	1, A0, A1
	[!A1]	b	.s2	.L597
		nop	5
.L595:
		ret	.s2	B3
		nop	5
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mvk	.d2	-1, B4
		mvklh	.s2	65407, B4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[A0]	mvk	.d1	1, A4
	[A0]	b	.s2	.L602
		nop	5
		mvk	.d2	-1, B4
		mvklh	.s2	32639, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_gtf), B3
		cmpeq	.l1	0, A4, A4
		xor	.d1	1, A4, A4
.L602:
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	65519, B5
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	mvk	.d1	1, A4
	[A0]	b	.s2	.L609
		nop	5
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	32751, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		xor	.d1	1, A4, A4
.L609:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	65519, B5
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	mvk	.d1	1, A4
	[A0]	b	.s2	.L616
		nop	5
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	32751, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		xor	.d1	1, A4, A4
.L616:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mv	.l1x	B4, A4
		callp	.s2	(__c6xabi_fltid), B3
		stdw	.d1t1	A5:A4, *A10
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A12
		mv	.l1x	B4, A10
		mv	.l2x	A4, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L627
		nop	5
		mv	.l2x	A12, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_addf), B3
		mv	.l2x	A12, B4
		callp	.s2	(__c6xabi_eqf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L627
		nop	5
		mvk	.d1	0, A11
		cmpgt	.l1	0, A10, A2
	[A2]	mvklh	.s1	16128, A11
	[!A2]	mvklh	.s1	16384, A11
		b	.s2	.L630
		nop	5
.L629:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L627
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A11
.L630:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L629
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A12
		b	.s2	.L629
		nop	5
.L627:
		mv	.d1	A12, A4
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		ldw	.d2t1	*+B15(16), A12
		nop	4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A14, *+B15(20)
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A15:A14
		mv	.l1x	B4, A10
		mv	.l2x	A4, B4
		mv	.l2x	A15, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L645
		nop	5
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L645
		nop	5
		mvk	.d1	0, A12
		mvk	.d1	0, A13
		cmpgt	.l1	0, A10, A2
	[A2]	mvklh	.s1	16352, A13
	[!A2]	mvklh	.s1	16384, A13
		b	.s2	.L648
		nop	5
.L647:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L645
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		mv	.d1	A12, A4
		mv	.d1	A13, A5
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A13:A12
.L648:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L647
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A15:A14
		b	.s2	.L647
		nop	5
.L645:
		dmv	.s1	A15, A14, A5:A4
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t1	*+B15(12), A12
		nop	4
		ldw	.d2t1	*+B15(16), A13
		nop	4
		ldw	.d2t1	*+B15(20), A14
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		ldw	.d2t1	*+B15(32), A15
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A15, *+B15(32)
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A14, *+B15(20)
		stw	.d2t1	A13, *+B15(16)
		stw	.d2t1	A12, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A15:A14
		mv	.l1x	B4, A10
		mv	.l2x	A4, B4
		mv	.l2x	A15, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L663
		nop	5
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L663
		nop	5
		mvk	.d1	0, A12
		mvk	.d1	0, A13
		cmpgt	.l1	0, A10, A2
	[A2]	mvklh	.s1	16352, A13
	[!A2]	mvklh	.s1	16384, A13
		b	.s2	.L666
		nop	5
.L665:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L663
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		mv	.d1	A12, A4
		mv	.d1	A13, A5
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A13:A12
.L666:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L665
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A15:A14
		b	.s2	.L665
		nop	5
.L663:
		dmv	.s1	A15, A14, A5:A4
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t1	*+B15(12), A12
		nop	4
		ldw	.d2t1	*+B15(16), A13
		nop	4
		ldw	.d2t1	*+B15(20), A14
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		ldw	.d2t1	*+B15(32), A15
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
		mv	.d1	A6, A1
	[!A1]	b	.s2	.L681
		nop	5
		mv	.d1	A4, A3
.L682:
		sub	.d1	A1, 1, A1
		ldb	.d1t1	*A3++[1], A6
		nop	4
		ldb	.d2t1	*B4++[1], A5
		nop	4
		xor	.d1	A5, A6, A7
		stb	.d1t1	A7, *-A3(1)
	[A1]	b	.s2	.L682
		nop	5
.L681:
		ret	.s2	B3
		nop	5
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
		ldb	.d1t1	*A4, A0
		nop	4
		mv	.d1	A4, A5
	[!A0]	b	.s2	.L689
		nop	5
.L690:
		ldb	.d1t1	*++A5[1], A1
		nop	4
	[A1]	b	.s2	.L690
		nop	5
.L689:
		mv	.d1	A6, A2
	[!A2]	b	.s2	.L697
		nop	5
		sub	.d2	B4, 1, B4
		mv	.d1	A5, A3
.L692:
		sub	.d1	A2, 1, A2
		mv	.d1	A3, A5
		ldb	.d2t1	*++B4[1], A7
		nop	4
		stb	.d1t1	A7, *A3++[1]
		ext	.s1	A7, 24, 24, A0
	[!A0]	b	.s2	.L703
		nop	5
		sub	.d1	A6, 1, A6
	[A2]	b	.s2	.L692
		nop	5
		mv	.d1	A3, A5
		b	.s2	.L697
		nop	5
.L703:
		mv	.d1	A6, A1
	[A1]	b	.s2	.L694
		nop	5
.L697:
		mvk	.d1	0, A6
		stb	.d1t1	A6, *A5
.L694:
		ret	.s2	B3
		nop	5
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
		mv	.d1	A4, A5
		mv	.l1x	B4, A1
		mvk	.d1	0, A4
	[!A1]	b	.s2	.L704
		nop	5
.L705:
		sub	.d2	B4, 1, B4
		add	.d1	A5, A4, A3
		ldb	.d1t1	*A3, A1
		nop	4
	[A1]	b	.s2	.L707
		nop	5
.L704:
		ret	.s2	B3
		nop	5
.L707:
		add	.d1	A4, 1, A4
		mv	.l1x	B4, A1
	[A1]	b	.s2	.L705
		nop	5
		b	.s2	.L704
		nop	5
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
		ldb	.d1t1	*A4, A3
		nop	4
		shl	.s1	A3, 24, A16
		ext	.s1	A3, 24, 24, A0
	[A0]	sub	.d2	B4, 1, B4
	[!A0]	b	.s2	.L717
		nop	5
.L713:
		mv	.l1x	B4, A5
		shr	.s1	A16, 24, A6
.L716:
		ldb	.d1t1	*++A5[1], A7
		nop	4
		shl	.s1	A7, 24, A8
		ext	.s1	A7, 24, 24, A1
	[!A1]	b	.s2	.L721
		nop	5
		shr	.s1	A8, 24, A17
		cmpeq	.l1	A6, A17, A0
	[!A0]	b	.s2	.L716
		nop	5
.L714:
		ret	.s2	B3
		nop	5
.L721:
		ldb	.d1t1	*++A4[1], A9
		nop	4
		shl	.s1	A9, 24, A16
		ext	.s1	A9, 24, 24, A2
	[A2]	b	.s2	.L713
		nop	5
.L717:
		mvk	.d1	0, A4
		b	.s2	.L714
		nop	5
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
		mv	.d1	A4, A3
		mvk	.d1	0, A4
.L724:
		mv	.d1	A3, A6
		ldb	.d1t1	*A3++[1], A7
		nop	4
		shl	.s1	A7, 24, A5
		ext	.s1	A7, 24, 24, A8
		mv	.l1x	B4, A9
		cmpeq	.l1	A9, A8, A0
	[A0]	mv	.d1	A6, A4
		mv	.d1	A5, A1
	[A1]	b	.s2	.L724
		nop	5
		ret	.s2	B3
		nop	5
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
		mv	.d1	A4, A29
		ldb	.d2t1	*B4, A4
		nop	4
		shl	.s1	A4, 24, A8
		ext	.s1	A4, 24, 24, A0
		mv	.l1x	B4, A9
	[!A0]	b	.s2	.L729
		nop	5
.L730:
		ldb	.d1t1	*++A9[1], A1
		nop	4
	[A1]	b	.s2	.L730
		nop	5
.L729:
		mv	.l1x	B4, A5
		sub	.d1	A9, A5, A26
		mv	.d1	A26, A2
	[A2]	shr	.s1	A8, 24, A8
	[A2]	add	.d1x	A26, B4, A26
	[A2]	b	.s2	.L737
		nop	5
		mv	.d1	A29, A4
		b	.s2	.L728
		nop	5
.L741:
		mv	.l1x	B4, A17
		b	.s2	.L733
		nop	5
.L736:
		mv	.d1	A4, A2
	[!A2]	b	.s2	.L728
		nop	5
		ldbu	.d1t1	*A4, A27
		nop	4
		mv	.d1	A27, A0
	[!A0]	b	.s2	.L741
		nop	5
		mv	.d1	A4, A25
		mv	.l1x	B4, A24
.L734:
		mv	.d1	A24, A17
		ldbu	.d1t1	*A24++[1], A18
		nop	4
		cmpeq	.l1	0, A18, A3
		cmpeq	.l1	0, A3, A19
		cmpeq	.l1	A27, A18, A20
		and	.d1	A20, A19, A21
		cmpeq	.l1	A24, A26, A22
		cmpeq	.l1	0, A22, A23
		and	.d1	A21, A23, A1
	[!A1]	b	.s2	.L733
		nop	5
		ldbu	.d1t1	*++A25[1], A27
		nop	4
		mv	.d1	A27, A2
	[A2]	b	.s2	.L734
		nop	5
		mv	.d1	A24, A17
.L733:
		ldbu	.d1t1	*A17, A28
		nop	4
		cmpeq	.l1	A27, A28, A0
	[A0]	b	.s2	.L728
		nop	5
		add	.d1	A4, 1, A29
.L737:
		mv	.d1	A29, A4
		ldb	.d1t1	*A29++[1], A6
		nop	4
		shl	.s1	A6, 24, A7
		ext	.s1	A6, 24, 24, A16
		cmpeq	.l1	A8, A16, A0
	[A0]	b	.s2	.L736
		nop	5
		mv	.d1	A7, A1
	[A1]	b	.s2	.L737
		nop	5
		mvk	.d1	0, A4
.L728:
		ret	.s2	B3
		nop	5
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A12
		mv	.l1x	B5, A13
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L756
		nop	5
.L747:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A2
	[!A2]	b	.s2	.L750
		nop	5
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L749
		nop	5
.L750:
		dmv	.s1	A11, A10, A5:A4
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t1	*+B15(24), A13
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
.L756:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L747
		nop	5
.L749:
		mv	.d1	A10, A0
		mvk	.d1	0, A3
		mvklh	.s1	32768, A3
		xor	.d1	A3, A11, A1
		dmv	.s1	A1, A0, A11:A10
		b	.s2	.L750
		nop	5
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
		mv	.d1	A4, A16
		mv	.l1x	B6, A0
	[!A0]	b	.s2	.L761
		nop	5
		cmpgtu	.l2	B6, B4, B5
		mv	.l1x	B5, A1
	[A1]	b	.s2	.L771
		nop	5
		sub	.d2	B4, B6, B4
		mv	.l1x	B4, A17
		add	.d1	A16, A17, A23
		cmpltu	.l1	A23, A16, A2
	[A2]	b	.s2	.L771
		nop	5
		ldb	.d1t1	*A6++[1], A18
		nop	4
		b	.s2	.L768
		nop	5
.L783:
	[!A2]	b	.s2	.L761
		nop	5
		ldbu	.d1t1	*A8, A22
		nop	4
		sub	.d1	A22, A9, A1
	[!A1]	b	.s2	.L761
		nop	5
.L763:
		cmpltu	.l1	A23, A16, A2
	[A2]	b	.s2	.L771
		nop	5
.L768:
		ldb	.d1t1	*A16, A3
		nop	4
		mv	.d1	A16, A4
		add	.d1	A16, 1, A16
		ext	.s1	A3, 24, 24, A5
		cmpeq	.l1	A18, A5, A0
	[!A0]	b	.s2	.L763
		nop	5
		add	.l1x	-1, B6, A2
	[!A2]	b	.s2	.L761
		nop	5
		mv	.d1	A16, A19
		mv	.d1	A6, A20
		mv	.d1	A2, A1
.L765:
		sub	.d1	A1, 1, A1
		mv	.d1	A20, A7
		mv	.d1	A19, A8
		add	.d1	A19, 1, A19
		add	.d1	A20, 1, A20
		ldbu	.d1t1	*A8, A21
		nop	4
		ldbu	.d1t1	*A7, A9
		nop	4
		cmpeq	.l1	A9, A21, A0
	[!A0]	b	.s2	.L783
		nop	5
		sub	.d1	A2, 1, A2
	[A1]	b	.s2	.L765
		nop	5
.L761:
		ret	.s2	B3
		nop	5
.L771:
		mvk	.d1	0, A4
		b	.s2	.L761
		nop	5
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A11
		mv	.d1	A6, A10
		mv	.d1	A6, A0
	[!A0]	b	.s2	.L785
		nop	5
		callp	.s2	(memmove), B3
.L785:
		add	.d1	A11, A10, A4
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, @function
frexp:
		subah	.d2	B15, 24, B15
		stw	.d2t1	A15, *+B15(48)
		stw	.d2t2	B14, *+B15(44)
		stw	.d2t2	B12, *+B15(40)
		stdw	.d2t2	B11:B10, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A14, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A13
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	mvk	.d2	0, B12
	[A0]	b	.s2	.L814
		nop	5
.L792:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16368, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L812
		nop	5
		mvk	.d1	0, A12
		mvk	.d2	0, B10
		mvk	.d2	0, B11
		mvklh	.s2	16352, B11
		mvk	.d1	0, A14
		mvk	.d1	0, A15
		mvklh	.s1	16368, A15
.L796:
		add	.d1	A12, 1, A12
		dmv	.s2	B11, B10, B5:B4
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A11:A10
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L796
		nop	5
.L797:
		stw	.d1t1	A12, *A13
		mv	.l1x	B12, A0
	[!A0]	b	.s2	.L801
		nop	5
		mv	.d1	A10, A0
		mvk	.d1	0, A6
		mvklh	.s1	32768, A6
		xor	.d1	A6, A11, A1
		dmv	.s1	A1, A0, A11:A10
.L801:
		dmv	.s1	A11, A10, A5:A4
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t1	*+B15(24), A14
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		lddw	.d2t2	*+B15(32), B11:B10
		nop	4
		ldw	.d2t2	*+B15(40), B12
		nop	4
		ldw	.d2t2	*+B15(44), B14
		nop	4
		ldw	.d2t1	*+B15(48), A15
		nop	4
		addab	.d2	B15, 48, B15
		ret	.s2	B3
		nop	5
.L814:
		mv	.d1	A10, A0
		mvk	.d1	0, A3
		mvklh	.s1	32768, A3
		xor	.d1	A3, A11, A1
		dmv	.s1	A1, A0, A11:A10
		mvk	.d2	1, B12
		b	.s2	.L792
		nop	5
.L812:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		cmpeq	.l1	0, A4, A12
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16352, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		cmpeq	.l1	0, A4, A4
		xor	.d1	1, A4, A5
		and	.d1	A12, A5, A0
		mvk	.d1	0, A12
	[!A0]	b	.s2	.L797
		nop	5
		mvk	.d1	0, A14
		mvk	.d1	0, A15
		mvklh	.s1	16352, A15
.L800:
		sub	.d1	A12, 1, A12
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		mv	.d1	A10, A4
		mv	.d1	A11, A5
		callp	.s2	(__c6xabi_addd), B3
		dmv	.s1	A5, A4, A11:A10
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A2
	[A2]	b	.s2	.L800
		nop	5
		b	.s2	.L797
		nop	5
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
		mv	.d1	A4, A23
		mv	.d1	A5, A7
		or	.d1	A5, A4, A0
		mvk	.d1	0, A4
		mvk	.d1	0, A5
	[!A0]	b	.s2	.L823
		nop	5
.L825:
		and	.d1	1, A23, A6
		neg	.l1	A6, A8
		and	.d1x	A8, B4, A16
		and	.d1x	A8, B5, A17
		addu	.l1	A16, A4, A1:A0
		add	.d1	A1, A17, A4
		add	.d1	A4, A5, A5
		mv	.d1	A0, A4
		addu	.l2	B4, B4, B7:B6
		mv	.l1x	B7, A19
		add	.d1x	A19, B5, A20
		add	.d1x	A20, B5, A21
		mv	.d2	B6, B4
		mv	.l2x	A21, B5
		shl	.s1	A7, 31, A22
		shru	.s1	A23, 1, A3
		or	.d1	A3, A22, A23
		shru	.s1	A7, 1, A7
		or	.d1	A7, A23, A1
	[A1]	b	.s2	.L825
		nop	5
.L823:
		ret	.s2	B3
		nop	5
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
		mv	.d1	A4, A7
		cmpgtu	.l1x	A4, B4, A0
	[!A0]	b	.s2	.L843
		nop	5
		mvk	.d1	1, A2
.L830:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s2	.L831
		nop	5
		shl	.s2	B4, 1, B4
		shl	.s1	A2, 1, A2
		mv	.l1x	B4, A3
		cmpltu	.l1	A3, A7, A8
		cmpeq	.l1	0, A2, A5
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	[A1]	b	.s2	.L830
		nop	5
.L831:
	[!A2]	mvk	.d1	0, A4
	[!A2]	b	.s2	.L833
		nop	5
.L838:
		mvk	.d1	0, A4
.L832:
		mv	.l1x	B4, A16
		cmpgtu	.l1	A16, A7, A1
	[!A1]	sub	.d1	A7, A16, A7
	[!A1]	or	.d1	A2, A4, A4
		shru	.s1	A2, 1, A2
		shru	.s2	B4, 1, B4
	[A2]	b	.s2	.L832
		nop	5
.L833:
		mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		ret	.s2	B3
		nop	5
.L843:
		mvk	.d1	1, A2
		b	.s2	.L838
		nop	5
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
		ext	.s1	A4, 24, 24, A3
		shr	.s1	A3, 7, A5
		xor	.d1	A4, A5, A4
		shl	.s1	A5, 24, A6
		shr	.s1	A6, 24, A7
		cmpeq	.l1	A7, A3, A0
	[!A0]	ext	.s1	A4, 24, 24, A4
	[!A0]	shl	.s1	A4, 8, A4
	[!A0]	lmbd	.l1	1, A4, A4
	[!A0]	sub	.d1	A4, 1, A4
	[A0]	mvk	.d1	7, A4
		ret	.s2	B3
		nop	5
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
		shr	.s1	A5, 31, A3
		xor	.d1	A3, A4, A7
		xor	.d1	A3, A5, A6
		cmpeq	.l1	A3, A4, A4
		mv	.d1	A4, A1
	[A1]	cmpeq	.l1	A3, A5, A1
	[A1]	mvk	.s1	63, A4
	[A1]	b	.s2	.L848
		nop	5
		mv	.d1	A6, A0
	[A0]	lmbd	.l1	1, A6, A4
	[!A0]	lmbd	.l1	1, A7, A4
	[!A0]	addah	.d1	A4, 16, A4
		sub	.d1	A4, 1, A4
.L848:
		ret	.s2	B3
		nop	5
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
		mv	.d1	A4, A3
		mv	.d1	A4, A0
		mvk	.d1	0, A4
	[!A0]	b	.s2	.L854
		nop	5
.L856:
		and	.d1	1, A3, A5
		neg	.l1	A5, A6
		and	.d1x	A6, B4, A7
		add	.d1	A4, A7, A4
		shru	.s1	A3, 1, A3
		shl	.s2	B4, 1, B4
		mv	.d1	A3, A1
	[A1]	b	.s2	.L856
		nop	5
.L854:
		ret	.s2	B3
		nop	5
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
		shru	.s1	A6, 3, A0
		and	.d1	-8, A6, A7
		mv	.l1x	B4, A3
		cmpgtu	.l1	A3, A4, A1
	[!A1]	b	.s2	.L861
		nop	5
.L864:
	[!A0]	b	.s2	.L863
		nop	5
		add	.l1x	-8, B4, A16
		sub	.d1	A4, 8, A17
		shl	.s1	A0, 3, A9
		sub	.d1	A9, 8, A18
		shru	.s1	A18, 3, A19
		add	.d1	A19, 1, A1
.L867:
		sub	.d1	A1, 1, A1
		lddw	.d1t1	*++A16[1], A21:A20
		nop	4
		stdw	.d1t1	A21:A20, *++A17[1]
	[A1]	b	.s2	.L867
		nop	5
.L863:
		cmpltu	.l1	A7, A6, A2
	[!A2]	b	.s2	.L860
		nop	5
		sub	.d1	A7, 1, A21
		add	.d1x	A21, B4, A22
		add	.d1	A4, A21, A23
		add	.l1x	-1, B4, A24
		add	.d1	A24, A6, A25
		sub	.d1	A25, A22, A0
.L868:
		sub	.d1	A0, 1, A0
		ldb	.d1t1	*++A22[1], A26
		nop	4
		stb	.d1t1	A26, *++A23[1]
	[A0]	b	.s2	.L868
		nop	5
.L860:
		ret	.s2	B3
		nop	5
.L861:
		add	.d1x	A6, B4, A8
		cmpgtu	.l1	A4, A8, A1
	[A1]	b	.s2	.L864
		nop	5
		mv	.d1	A6, A2
	[!A2]	b	.s2	.L860
		nop	5
		add	.d1	A4, A6, A4
		sub	.d1	A8, A3, A0
.L869:
		sub	.d1	A0, 1, A0
		ldb	.d1t1	*--A8[1], A6
		nop	4
		stb	.d1t1	A6, *--A4[1]
	[A0]	b	.s2	.L869
		nop	5
		b	.s2	.L860
		nop	5
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
		shru	.s1	A6, 1, A0
		mv	.l1x	B4, A3
		cmpgtu	.l1	A3, A4, A1
	[!A1]	b	.s2	.L875
		nop	5
.L878:
	[!A0]	b	.s2	.L877
		nop	5
		add	.l1x	-2, B4, A8
		sub	.d1	A4, 2, A9
		shl	.s1	A0, 1, A16
		sub	.d1	A16, 2, A17
		shru	.s1	A17, 1, A18
		add	.d1	A18, 1, A1
.L881:
		sub	.d1	A1, 1, A1
		ldh	.d1t1	*++A8[1], A19
		nop	4
		sth	.d1t1	A19, *++A9[1]
	[A1]	b	.s2	.L881
		nop	5
.L877:
		and	.d1	1, A6, A2
	[!A2]	b	.s2	.L874
		nop	5
		sub	.d1	A6, 1, A20
		add	.d1x	A20, B4, A21
		ldb	.d1t1	*A21, A22
		nop	4
		add	.d1	A4, A20, A23
		stb	.d1t1	A22, *A23
.L874:
		ret	.s2	B3
		nop	5
.L875:
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A1
	[A1]	b	.s2	.L878
		nop	5
		mv	.d1	A6, A2
	[!A2]	b	.s2	.L874
		nop	5
		add	.d1	A4, A6, A6
		sub	.d1	A5, A3, A0
.L882:
		sub	.d1	A0, 1, A0
		ldb	.d1t1	*--A5[1], A7
		nop	4
		stb	.d1t1	A7, *--A6[1]
	[A0]	b	.s2	.L882
		nop	5
		b	.s2	.L874
		nop	5
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
		shru	.s1	A6, 2, A0
		and	.d1	-4, A6, A8
		mv	.l1x	B4, A3
		cmpgtu	.l1	A3, A4, A1
	[!A1]	b	.s2	.L890
		nop	5
.L893:
	[!A0]	b	.s2	.L892
		nop	5
		add	.l1x	-4, B4, A9
		sub	.d1	A4, 4, A16
		shl	.s1	A0, 2, A17
		sub	.d1	A17, 4, A18
		shru	.s1	A18, 2, A19
		add	.d1	A19, 1, A1
.L896:
		sub	.d1	A1, 1, A1
		ldw	.d1t1	*++A9[1], A20
		nop	4
		stw	.d1t1	A20, *++A16[1]
	[A1]	b	.s2	.L896
		nop	5
.L892:
		cmpltu	.l1	A8, A6, A2
	[!A2]	b	.s2	.L889
		nop	5
		sub	.d1	A8, 1, A21
		add	.d1x	A21, B4, A22
		add	.d1	A4, A21, A23
		add	.l1x	-1, B4, A24
		add	.d1	A24, A6, A25
		sub	.d1	A25, A22, A0
.L897:
		sub	.d1	A0, 1, A0
		ldb	.d1t1	*++A22[1], A26
		nop	4
		stb	.d1t1	A26, *++A23[1]
	[A0]	b	.s2	.L897
		nop	5
.L889:
		ret	.s2	B3
		nop	5
.L890:
		add	.d1x	A6, B4, A7
		cmpgtu	.l1	A4, A7, A1
	[A1]	b	.s2	.L893
		nop	5
		mv	.d1	A6, A2
	[!A2]	b	.s2	.L889
		nop	5
		add	.d1	A4, A6, A4
		sub	.d1	A7, A3, A0
.L898:
		sub	.d1	A0, 1, A0
		ldb	.d1t1	*--A7[1], A6
		nop	4
		stb	.d1t1	A6, *--A4[1]
	[A0]	b	.s2	.L898
		nop	5
		b	.s2	.L889
		nop	5
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B3, *+B15(8)
		call	.s2	__c6xabi_remi
		addkpc	.s2	.L905, B3, 4
.L905:
		ldw	.d2t2	*+B15(8), B3
		nop	4
		add	.d2	B15, 8, B15
		ret	.s2	B3
		nop	5
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.type	__uitod, @function
__uitod:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__c6xabi_fltud), B3
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.type	__uitof, @function
__uitof:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__c6xabi_fltuf), B3
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__c6xabi_fltulld), B3
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__c6xabi_fltullf), B3
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.type	__umodi, @function
__umodi:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B3, *+B15(8)
		call	.s2	__c6xabi_remu
		addkpc	.s2	.L920, B3, 4
.L920:
		ldw	.d2t2	*+B15(8), B3
		nop	4
		add	.d2	B15, 8, B15
		ret	.s2	B3
		nop	5
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
		mvk	.d1	0, A3
		extu	.s1	A4, 16, 16, A4
		mvk	.s1	16, A1
.L923:
		sub	.d1	A1, 1, A1
		sub	.l1	15, A3, A5
		shr	.s1	A4, A5, A6
		and	.d1	1, A6, A0
	[A0]	b	.s2	.L921
		nop	5
		add	.d1	A3, 1, A3
	[A1]	b	.s2	.L923
		nop	5
.L921:
		mv	.d1	A3, A4
		ret	.s2	B3
		nop	5
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
		mvk	.d1	0, A3
		extu	.s1	A4, 16, 16, A4
		mvk	.s1	16, A1
.L928:
		sub	.d1	A1, 1, A1
		shr	.s1	A4, A3, A5
		and	.d1	1, A5, A0
	[A0]	b	.s2	.L926
		nop	5
		add	.d1	A3, 1, A3
	[A1]	b	.s2	.L928
		nop	5
.L926:
		mv	.d1	A3, A4
		ret	.s2	B3
		nop	5
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mvk	.d2	0, B4
		mvklh	.s2	18176, B4
		callp	.s2	(__c6xabi_gef), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L938
		nop	5
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_fixfi), B3
.L931:
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
.L938:
		mvk	.d2	0, B4
		mvklh	.s2	18176, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_subf), B3
		callp	.s2	(__c6xabi_fixfi), B3
		mvk	.s1	-32768, A3
		mvklh	.s1	0, A3
		add	.d1	A4, A3, A4
		b	.s2	.L931
		nop	5
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
		mvk	.d1	0, A5
		mvk	.d1	0, A3
		extu	.s1	A4, 16, 16, A4
		mvk	.s1	16, A1
.L944:
		sub	.d1	A1, 1, A1
		shr	.s1	A4, A3, A6
		and	.d1	1, A6, A7
		add	.d1	A5, A7, A5
		add	.d1	A3, 1, A3
	[A1]	b	.s2	.L944
		nop	5
		and	.d1	1, A5, A4
		ret	.s2	B3
		nop	5
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
		mvk	.d1	0, A5
		mvk	.d1	0, A3
		extu	.s1	A4, 16, 16, A4
		mvk	.s1	16, A1
.L948:
		sub	.d1	A1, 1, A1
		shr	.s1	A4, A3, A6
		and	.d1	1, A6, A7
		add	.d1	A5, A7, A5
		add	.d1	A3, 1, A3
	[A1]	b	.s2	.L948
		nop	5
		mv	.d1	A5, A4
		ret	.s2	B3
		nop	5
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
		mv	.d1	A4, A3
		mv	.d1	A4, A0
		mvk	.d1	0, A4
	[!A0]	b	.s2	.L951
		nop	5
.L953:
		and	.d1	1, A3, A5
		neg	.l1	A5, A6
		and	.d1x	A6, B4, A7
		add	.d1	A4, A7, A4
		shru	.s1	A3, 1, A3
		shl	.s2	B4, 1, B4
		mv	.d1	A3, A1
	[A1]	b	.s2	.L953
		nop	5
.L951:
		ret	.s2	B3
		nop	5
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
		mv	.d1	A4, A3
		mv	.d1	A4, A0
	[!A0]	mvk	.d1	0, A4
	[!A0]	b	.s2	.L957
		nop	5
		mv	.l1x	B4, A1
		mvk	.d1	0, A4
	[!A1]	b	.s2	.L957
		nop	5
.L959:
		and	.d1x	1, B4, A5
		neg	.l1	A5, A6
		and	.d1	A3, A6, A7
		add	.d1	A4, A7, A4
		shl	.s1	A3, 1, A3
		shru	.s2	B4, 1, B4
		mv	.l1x	B4, A2
	[A2]	b	.s2	.L959
		nop	5
.L957:
		ret	.s2	B3
		nop	5
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
		mv	.d1	A4, A7
		cmpgtu	.l1x	A4, B4, A0
	[!A0]	b	.s2	.L978
		nop	5
		mvk	.d1	1, A2
.L965:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s2	.L966
		nop	5
		shl	.s2	B4, 1, B4
		shl	.s1	A2, 1, A2
		mv	.l1x	B4, A3
		cmpltu	.l1	A3, A7, A8
		cmpeq	.l1	0, A2, A5
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	[A1]	b	.s2	.L965
		nop	5
.L966:
	[!A2]	mvk	.d1	0, A4
	[!A2]	b	.s2	.L968
		nop	5
.L973:
		mvk	.d1	0, A4
.L967:
		mv	.l1x	B4, A16
		cmpgtu	.l1	A16, A7, A1
	[!A1]	sub	.d1	A7, A16, A7
	[!A1]	or	.d1	A2, A4, A4
		shru	.s1	A2, 1, A2
		shru	.s2	B4, 1, B4
	[A2]	b	.s2	.L967
		nop	5
.L968:
		mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		ret	.s2	B3
		nop	5
.L978:
		mvk	.d1	1, A2
		b	.s2	.L973
		nop	5
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mv	.l1x	B4, A11
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[A0]	mvk	.d1	-1, A4
	[A0]	b	.s2	.L979
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_gtf), B3
		cmpeq	.l1	0, A4, A4
		xor	.d1	1, A4, A4
.L979:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A12
		mv	.l1x	B5, A13
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	mvk	.d1	-1, A4
	[A0]	b	.s2	.L986
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		xor	.d1	1, A4, A4
.L986:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t1	*+B15(24), A13
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
		mpy32	.m1x	A4, B4, A5:A4
		nop	3
		ret	.s2	B3
		nop	5
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
		mpy32u	.m1x	A4, B4, A5:A4
		nop	3
		ret	.s2	B3
		nop	5
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
		mv	.d1	A4, A6
		cmpgt	.l1x	0, B4, A0
	[A0]	neg	.l2	B4, B4
	[A0]	mvk	.d1	1, A1
	[!A0]	mvk	.d1	0, A1
		mv	.l1x	B4, A2
	[!A2]	mvk	.d1	0, A4
	[!A2]	b	.s2	.L999
		nop	5
		mvk	.d1	1, A5
		mvk	.d1	0, A4
		mvk	.s1	31, A7
.L1000:
		and	.d1x	1, B4, A3
		neg	.l1	A3, A8
		and	.d1	A6, A8, A9
		add	.d1	A4, A9, A4
		shl	.s1	A6, 1, A6
		shr	.s2	B4, 1, B4
		cmpeq	.l1x	0, B4, A16
		cmpeq	.l1	0, A16, A17
		extu	.s1	A5, 24, 24, A18
		cmpltu	.l1	A7, A18, A19
		cmpeq	.l1	0, A19, A20
		add	.d1	A5, 1, A5
		and	.d1	A20, A17, A0
	[A0]	b	.s2	.L1000
		nop	5
.L999:
	[A1]	neg	.l1	A4, A4
		ret	.s2	B3
		nop	5
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
		cmpgt	.l1	0, A4, A0
	[A0]	neg	.l1	A4, A4
	[A0]	mvk	.d1	1, A1
	[!A0]	mvk	.d1	0, A1
		cmpgt	.l1x	0, B4, A2
	[A2]	neg	.l2	B4, B4
	[A2]	xor	.d1	1, A1, A1
		mv	.d1	A4, A6
		mv	.l1x	B4, A3
		cmpltu	.l1	A3, A4, A0
	[!A0]	b	.s2	.L1019
		nop	5
		mvk	.d1	1, A0
.L1013:
		shl	.s2	B4, 1, B4
		shl	.s1	A0, 1, A0
		mv	.l1x	B4, A5
		cmpltu	.l1	A5, A4, A7
		cmpeq	.l1	0, A0, A8
		cmpeq	.l1	0, A8, A9
		and	.d1	A9, A7, A2
	[A2]	b	.s2	.L1013
		nop	5
	[!A0]	mvk	.d1	0, A9
	[!A0]	b	.s2	.L1014
		nop	5
.L1027:
		mvk	.d1	0, A9
.L1016:
		mv	.l1x	B4, A4
		cmpgtu	.l1	A4, A6, A2
	[!A2]	sub	.d1	A6, A4, A6
	[!A2]	or	.d1	A0, A9, A9
		shru	.s1	A0, 1, A0
		shru	.s2	B4, 1, B4
	[A0]	b	.s2	.L1016
		nop	5
.L1014:
		mv	.d1	A9, A4
	[A1]	neg	.l1	A9, A4
		ret	.s2	B3
		nop	5
.L1019:
		mvk	.d1	1, A0
		b	.s2	.L1027
		nop	5
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
		cmpgt	.l1	0, A4, A0
	[A0]	neg	.l1	A4, A4
	[A0]	mvk	.d1	1, A1
	[!A0]	mvk	.d1	0, A1
		mv	.d1	A4, A6
		shr	.s1x	B4, 31, A3
		xor	.d2x	B4, A3, B4
		mv	.l2x	A3, B5
		sub	.d2	B4, B5, B6
		mv	.l1x	B6, A5
		cmpltu	.l1	A5, A4, A2
	[!A2]	b	.s2	.L1038
		nop	5
		mvk	.d1	1, A0
.L1032:
		shl	.s2	B6, 1, B6
		shl	.s1	A0, 1, A0
		mv	.l1x	B6, A7
		cmpltu	.l1	A7, A4, A8
		cmpeq	.l1	0, A0, A9
		cmpeq	.l1	0, A9, A16
		and	.d1	A16, A8, A2
	[A2]	b	.s2	.L1032
		nop	5
.L1049:
	[!A0]	b	.s2	.L1051
		nop	5
.L1043:
		mv	.l1x	B6, A4
		cmpgtu	.l1	A4, A6, A2
	[!A2]	sub	.d1	A6, A4, A6
		shru	.s1	A0, 1, A0
		shru	.s2	B6, 1, B6
		b	.s2	.L1049
		nop	5
.L1038:
		mvk	.d1	1, A0
		b	.s2	.L1043
		nop	5
.L1051:
		mv	.d1	A6, A4
	[A1]	neg	.l1	A6, A4
		ret	.s2	B3
		nop	5
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
		mv	.d1	A4, A8
		mv	.l1x	B4, A3
		extu	.s1	A3, 16, 16, A25
		extu	.s1	A4, 16, 16, A26
		mvk	.d1	1, A7
		cmpgtu	.l1	A26, A25, A0
	[!A0]	b	.s2	.L1068
		nop	5
.L1053:
		mv	.l1x	B4, A9
		ext	.s1	A9, 16, 16, A16
		cmpgt	.l1	0, A16, A1
	[A1]	b	.s2	.L1054
		nop	5
		shl	.s1x	B4, 1, A17
		mv	.l2x	A17, B4
		shl	.s1	A7, 1, A18
		mv	.d1	A18, A7
		extu	.s1	A17, 16, 16, A19
		cmpltu	.l1	A19, A26, A20
		extu	.s1	A18, 16, 16, A21
		cmpeq	.l1	0, A21, A22
		cmpeq	.l1	0, A22, A23
		and	.d1	A23, A20, A2
	[A2]	b	.s2	.L1053
		nop	5
.L1054:
		extu	.s1	A7, 16, 16, A0
	[!A0]	mv	.d1	A7, A4
	[!A0]	b	.s2	.L1056
		nop	5
		mv	.l1x	B4, A4
		extu	.s1	A4, 16, 16, A25
.L1061:
		mvk	.d1	0, A4
		b	.s2	.L1055
		nop	5
.L1068:
		mvk	.d1	1, A0
		b	.s2	.L1061
		nop	5
.L1069:
		mv	.l1x	B4, A24
		extu	.s1	A24, 16, 16, A25
		extu	.s1	A8, 16, 16, A26
		extu	.s1	A0, 16, 16, A0
.L1055:
		cmpgtu	.l1	A25, A26, A5
		mv	.d1	A5, A1
	[!A1]	mv	.l1x	B4, A5
	[!A1]	sub	.d1	A8, A5, A8
	[!A1]	or	.d1	A4, A7, A4
		shru	.s1	A0, 1, A0
		mv	.d1	A0, A7
		shru	.s2x	A25, 1, B4
	[A0]	b	.s2	.L1069
		nop	5
.L1056:
		mv	.d1	A6, A2
	[A2]	mv	.d1	A8, A4
		ret	.s2	B3
		nop	5
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
		mv	.d1	A4, A7
		cmpgtu	.l1x	A4, B4, A0
	[!A0]	b	.s2	.L1084
		nop	5
		mvk	.d1	1, A2
.L1071:
		cmpgt	.l1x	0, B4, A1
	[A1]	b	.s2	.L1072
		nop	5
		shl	.s2	B4, 1, B4
		shl	.s1	A2, 1, A2
		mv	.l1x	B4, A3
		cmpltu	.l1	A3, A7, A8
		cmpeq	.l1	0, A2, A5
		cmpeq	.l1	0, A5, A9
		and	.d1	A9, A8, A1
	[A1]	b	.s2	.L1071
		nop	5
.L1072:
	[!A2]	mvk	.d1	0, A4
	[!A2]	b	.s2	.L1074
		nop	5
.L1079:
		mvk	.d1	0, A4
.L1073:
		mv	.l1x	B4, A16
		cmpgtu	.l1	A16, A7, A1
	[!A1]	sub	.d1	A7, A16, A7
	[!A1]	or	.d1	A2, A4, A4
		shru	.s1	A2, 1, A2
		shru	.s2	B4, 1, B4
	[A2]	b	.s2	.L1073
		nop	5
.L1074:
		mv	.d1	A6, A0
	[A0]	mv	.d1	A7, A4
		ret	.s2	B3
		nop	5
.L1084:
		mvk	.d1	1, A2
		b	.s2	.L1079
		nop	5
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s2	.L1086
		nop	5
		subah	.d2	B4, 16, B4
		mv	.l1x	B4, A8
		shl	.s1	A4, A8, A5
		mvk	.d1	0, A3
.L1087:
		mv	.d1	A3, A4
.L1088:
		ret	.s2	B3
		nop	5
.L1086:
		mv	.l1x	B4, A2
	[!A2]	b	.s2	.L1088
		nop	5
		shl	.s1	A4, A2, A3
		sub	.d1	A6, A2, A7
		shru	.s1	A4, A7, A4
		shl	.s1	A5, A2, A5
		or	.d1	A5, A4, A5
		b	.s2	.L1087
		nop	5
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s2	.L1092
		nop	5
		shr	.s1	A5, 31, A3
		subah	.d2	B4, 16, B4
		mv	.l1x	B4, A8
		shr	.s1	A5, A8, A4
.L1093:
		mv	.d1	A3, A5
.L1094:
		ret	.s2	B3
		nop	5
.L1092:
		mv	.l1x	B4, A2
	[!A2]	b	.s2	.L1094
		nop	5
		shr	.s1	A5, A2, A3
		sub	.d1	A6, A2, A7
		shl	.s1	A5, A7, A5
		shru	.s1	A4, A2, A4
		or	.d1	A4, A5, A4
		b	.s2	.L1093
		nop	5
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
		rotl	.m1	A4, 16, A3
		nop	1
		rotl	.m1	A5, 16, A4
		nop	1
		swap4	.l1	A4, A4
		swap4	.l1	A3, A5
		ret	.s2	B3
		nop	5
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
		rotl	.m1	A4, 16, A4
		nop	1
		swap4	.l1	A4, A4
		ret	.s2	B3
		nop	5
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
		mvk	.d1	-1, A5
		mvklh	.s1	0, A5
		cmpltu	.l1	A5, A4, A3
		cmpeq	.l1	0, A3, A6
		shl	.s1	A6, 4, A7
		mvk	.s1	16, A8
		sub	.d1	A8, A7, A9
		shru	.s1	A4, A9, A16
		mvk	.s1	-256, A4
		mvklh	.s1	0, A4
		and	.d1	A4, A16, A17
		cmpeq	.l1	0, A17, A18
		shl	.s1	A18, 3, A19
		sub	.l1	8, A19, A20
		shru	.s1	A16, A20, A21
		add	.d1	A19, A7, A22
		mvk	.s1	240, A23
		and	.d1	A23, A21, A24
		cmpeq	.l1	0, A24, A25
		shl	.s1	A25, 2, A26
		sub	.l1	4, A26, A27
		shru	.s1	A21, A27, A28
		add	.d1	A26, A22, A29
		and	.d1	12, A28, A30
		cmpeq	.l1	0, A30, A31
		shl	.s1	A31, 1, A3
		sub	.l1	2, A3, A0
		shru	.s1	A28, A0, A6
		extu	.s1	A6, 30, 31, A1
		xor	.d1	1, A1, A2
		extu	.s1	A2, 24, 24, A1
	[A1]	sub	.l1	2, A6, A6
	[!A1]	mvk	.d1	0, A6
		add	.d1	A3, A29, A5
		add	.d1	A6, A5, A4
		ret	.s2	B3
		nop	5
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
		mv	.l1x	B5, A3
		cmpgt	.l1	A3, A5, A0
	[A0]	b	.s2	.L1109
		nop	5
		cmplt	.l1	A3, A5, A0
	[A0]	b	.s2	.L1110
		nop	5
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
	[A1]	b	.s2	.L1109
		nop	5
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	[!A2]	b	.s2	.L1105
		nop	5
.L1110:
		mvk	.d1	2, A4
		b	.s2	.L1105
		nop	5
.L1109:
		mvk	.d1	0, A4
.L1105:
		ret	.s2	B3
		nop	5
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
		mv	.l1x	B5, A3
		cmpgt	.l1	A3, A5, A0
	[A0]	b	.s2	.L1116
		nop	5
		cmplt	.l1	A3, A5, A0
	[A0]	b	.s2	.L1117
		nop	5
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
	[A1]	b	.s2	.L1116
		nop	5
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	[!A2]	b	.s2	.L1113
		nop	5
.L1117:
		mvk	.d1	2, A4
		b	.s2	.L1113
		nop	5
.L1116:
		mvk	.d1	0, A4
.L1113:
		sub	.d1	A4, 1, A4
		ret	.s2	B3
		nop	5
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
		add	.d1	A9, A6, A17
		and	.d1	15, A16, A18
		cmpeq	.l1	0, A18, A19
		shl	.s1	A19, 2, A20
		shru	.s1	A16, A20, A21
		add	.d1	A20, A17, A22
		and	.d1	3, A21, A23
		cmpeq	.l1	0, A23, A24
		shl	.s1	A24, 1, A25
		shru	.s1	A21, A25, A26
		and	.d1	3, A26, A27
		not	.l1	A27, A28
		and	.d1	1, A28, A29
		shru	.s1	A27, 1, A30
		sub	.l1	2, A30, A31
		mpyu	.m1	A29, A31, A5
		nop	1
		add	.d1	A25, A22, A0
		add	.d1	A5, A0, A4
		ret	.s2	B3
		nop	5
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
		mvk	.s1	32, A6
		and	.d1x	A6, B4, A1
	[!A1]	b	.s2	.L1122
		nop	5
		subah	.d2	B4, 16, B4
		mv	.l1x	B4, A8
		shru	.s1	A5, A8, A4
		mvk	.d1	0, A3
.L1123:
		mv	.d1	A3, A5
.L1124:
		ret	.s2	B3
		nop	5
.L1122:
		mv	.l1x	B4, A2
	[!A2]	b	.s2	.L1124
		nop	5
		shru	.s1	A5, A2, A3
		sub	.d1	A6, A2, A7
		shl	.s1	A5, A7, A5
		shru	.s1	A4, A2, A4
		or	.d1	A4, A5, A4
		b	.s2	.L1123
		nop	5
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
		mpyu	.m1x	A4, B4, A3
		nop	1
		shru	.s1	A3, 16, A5
		mpyhlu	.m1x	A4, B4, A6
		nop	1
		add	.d1	A6, A5, A8
		extu	.s1	A8, 16, 16, A9
		mv	.l1x	B4, A7
		mpyhlu	.m1	A7, A4, A16
		nop	1
		add	.d1	A16, A9, A17
		extu	.s1	A3, 16, 16, A18
		shl	.s1	A17, 16, A19
		shru	.s1	A8, 16, A20
		mpyhu	.m1x	A4, B4, A4
		nop	1
		add	.d1	A20, A4, A21
		shru	.s1	A17, 16, A22
		add	.d1	A18, A19, A4
		add	.d1	A21, A22, A5
		ret	.s2	B3
		nop	5
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
		mv	.l1x	B4, A6
		mpyu	.m1	A4, A6, A3
		nop	1
		shru	.s1	A3, 16, A7
		mpyhlu	.m1	A4, A6, A8
		nop	1
		add	.d1	A8, A7, A16
		extu	.s1	A16, 16, 16, A9
		mpyhlu	.m1	A6, A4, A17
		nop	1
		add	.d1	A17, A9, A18
		extu	.s1	A3, 16, 16, A19
		shl	.s1	A18, 16, A20
		shru	.s1	A16, 16, A21
		mpyhu	.m1	A6, A4, A22
		nop	1
		add	.d1	A21, A22, A23
		shru	.s1	A18, 16, A24
		add	.d1	A23, A24, A25
		mpy32	.m1x	A4, B5, A4
		nop	3
		add	.d1	A4, A25, A26
		mpy32	.m1	A6, A5, A5
		nop	3
		add	.d1	A19, A20, A4
		add	.d1	A26, A5, A5
		ret	.s2	B3
		nop	5
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
		neg	.l1	A4, A4
		cmpltu	.l1	0, A4, A3
		neg	.l1	A5, A5
		sub	.d1	A5, A3, A5
		ret	.s2	B3
		nop	5
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
		xor	.d1	A4, A5, A5
		shru	.s1	A5, 16, A3
		xor	.d1	A5, A3, A4
		shru	.s1	A4, 8, A6
		xor	.d1	A4, A6, A7
		shru	.s1	A7, 4, A8
		xor	.d1	A7, A8, A9
		and	.d1	15, A9, A16
		mvk	.s1	27030, A17
		shr	.s1	A17, A16, A18
		and	.d1	1, A18, A4
		ret	.s2	B3
		nop	5
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
		shru	.s1	A4, 16, A3
		xor	.d1	A4, A3, A5
		shru	.s1	A5, 8, A4
		xor	.d1	A5, A4, A6
		shru	.s1	A6, 4, A7
		xor	.d1	A6, A7, A8
		and	.d1	15, A8, A9
		mvk	.s1	27030, A16
		shr	.s1	A16, A9, A17
		and	.d1	1, A17, A4
		ret	.s2	B3
		nop	5
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
		mv	.d1	A4, A7
		mv	.d1	A5, A3
		shl	.s1	A5, 31, A5
		shru	.s1	A4, 1, A4
		or	.d1	A4, A5, A8
		shru	.s1	A3, 1, A9
		mvk	.s1	21845, A6
		mvklh	.s1	21845, A6
		and	.d1	A6, A8, A16
		and	.d1	A6, A9, A17
		sub	.d1	A7, A16, A18
		cmpltu	.l1	A7, A18, A19
		sub	.d1	A3, A17, A20
		sub	.d1	A20, A19, A21
		shl	.s1	A21, 30, A22
		shru	.s1	A18, 2, A23
		or	.d1	A23, A22, A24
		shru	.s1	A21, 2, A25
		mvk	.s1	13107, A26
		mvklh	.s1	13107, A26
		and	.d1	A26, A24, A27
		and	.d1	A26, A25, A28
		and	.d1	A26, A18, A29
		and	.d1	A26, A21, A30
		addu	.l1	A27, A29, A1:A0
		add	.d1	A1, A28, A31
		add	.d1	A31, A30, A7
		shl	.s1	A7, 28, A1
		shru	.s1	A0, 4, A3
		or	.d1	A3, A1, A5
		shru	.s1	A7, 4, A8
		addu	.l1	A5, A0, A5:A4
		add	.d1	A5, A8, A9
		add	.d1	A9, A7, A6
		mvk	.s1	3855, A16
		mvklh	.s1	3855, A16
		and	.d1	A16, A4, A4
		and	.d1	A16, A6, A17
		add	.d1	A17, A4, A18
		shru	.s1	A18, 16, A19
		add	.d1	A19, A18, A20
		shru	.s1	A20, 8, A21
		add	.d1	A21, A20, A22
		clr	.s1	A22, 7, 31, A4
		ret	.s2	B3
		nop	5
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
		shru	.s1	A4, 1, A5
		mvk	.s1	21845, A3
		mvklh	.s1	21845, A3
		and	.d1	A3, A5, A6
		sub	.d1	A4, A6, A4
		shru	.s1	A4, 2, A7
		mvk	.s1	13107, A8
		mvklh	.s1	13107, A8
		and	.d1	A8, A7, A9
		and	.d1	A8, A4, A16
		add	.d1	A9, A16, A17
		shru	.s1	A17, 4, A18
		add	.d1	A18, A17, A19
		mvk	.s1	3855, A20
		mvklh	.s1	3855, A20
		and	.d1	A20, A19, A21
		shru	.s1	A21, 16, A22
		add	.d1	A22, A21, A23
		shru	.s1	A23, 8, A24
		add	.d1	A24, A23, A25
		clr	.s1	A25, 6, 31, A4
		ret	.s2	B3
		nop	5
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
		subah	.d2	B15, 20, B15
		stw	.d2t1	A15, *+B15(40)
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B3, *+B15(32)
		stw	.d2t1	A14, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A11
		mv	.l1x	B4, A10
		mvk	.d1	0, A14
		mvk	.d1	0, A15
		mvklh	.s1	16368, A15
		b	.s2	.L1144
		nop	5
.L1142:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L1143
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		mv	.d1	A12, A4
		mv	.d1	A13, A5
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A13:A12
.L1144:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L1142
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A15:A14
		b	.s2	.L1142
		nop	5
.L1143:
		cmpgt	.l1	0, A11, A2
	[A2]	b	.s2	.L1150
		nop	5
.L1141:
		dmv	.s1	A15, A14, A5:A4
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t1	*+B15(24), A13
		nop	4
		ldw	.d2t1	*+B15(28), A14
		nop	4
		ldw	.d2t2	*+B15(32), B3
		nop	4
		ldw	.d2t2	*+B15(36), B14
		nop	4
		ldw	.d2t1	*+B15(40), A15
		nop	4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
.L1150:
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16368, A5
		callp	.s2	(__c6xabi_divd), B3
		dmv	.s1	A5, A4, A15:A14
		b	.s2	.L1141
		nop	5
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A11
		mv	.l1x	B4, A13
		mv	.l1x	B4, A10
		mvk	.d1	0, A12
		mvklh	.s1	16256, A12
		b	.s2	.L1157
		nop	5
.L1155:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L1156
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A11
.L1157:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L1155
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A12
		b	.s2	.L1155
		nop	5
.L1156:
		cmpgt	.l1	0, A13, A2
	[A2]	b	.s2	.L1163
		nop	5
.L1154:
		mv	.d1	A12, A4
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t1	*+B15(24), A13
		nop	4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
.L1163:
		mv	.l2x	A12, B4
		mvk	.d1	0, A4
		mvklh	.s1	16256, A4
		callp	.s2	(__c6xabi_divf), B3
		mv	.d1	A4, A12
		b	.s2	.L1154
		nop	5
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
		mv	.l1x	B5, A3
		cmpgtu	.l1	A3, A5, A0
	[A0]	b	.s2	.L1171
		nop	5
		cmpltu	.l1	A3, A5, A0
	[A0]	b	.s2	.L1172
		nop	5
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
	[A1]	b	.s2	.L1171
		nop	5
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	[!A2]	b	.s2	.L1167
		nop	5
.L1172:
		mvk	.d1	2, A4
		b	.s2	.L1167
		nop	5
.L1171:
		mvk	.d1	0, A4
.L1167:
		ret	.s2	B3
		nop	5
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
		mv	.l1x	B5, A3
		cmpgtu	.l1	A3, A5, A0
	[A0]	b	.s2	.L1178
		nop	5
		cmpltu	.l1	A3, A5, A0
	[A0]	b	.s2	.L1179
		nop	5
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
	[A1]	b	.s2	.L1178
		nop	5
		cmpltu	.l1	A5, A4, A4
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	1, A4
	[!A2]	b	.s2	.L1175
		nop	5
.L1179:
		mvk	.d1	2, A4
		b	.s2	.L1175
		nop	5
.L1178:
		mvk	.d1	0, A4
.L1175:
		sub	.d1	A4, 1, A4
		ret	.s2	B3
		nop	5
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
