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
		add	.d2x	B4, A6, B4
		add	.d1	A4, A6, A8
		add	.d1	A6, 1, A0
		b	.s2	.L3
		nop	5
.L4:
		ldb	.d2t1	*--B4[1], A9
		nop	4
		stb	.d1t1	A9, *--A8[1]
.L3:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L4
		nop	5
.L5:
		ret	.s2	B3
		nop	5
.L2:
		cmpeq	.l1	A3, A4, A1
	[A1]	b	.s2	.L5
		nop	5
		sub	.d1	A4, 1, A7
		add	.d1	A6, 1, A2
		b	.s2	.L6
		nop	5
.L7:
		ldb	.d2t1	*B4++[1], A6
		nop	4
		stb	.d1t1	A6, *++A7[1]
.L6:
		sub	.d1	A2, 1, A2
	[A2]	b	.s2	.L7
		nop	5
		b	.s2	.L5
		nop	5
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
		mv	.l1x	B6, A2
		extu	.s1	A6, 24, 24, A6
		sub	.d2	B4, 1, B4
		add	.d1	A2, 1, A1
		b	.s2	.L9
		nop	5
.L14:
		ldb	.d2t1	*++B4[1], A5
		nop	4
		stb	.d1t1	A5, *A4
		ldbu	.d1t1	*A4++[1], A7
		nop	4
		cmpeq	.l1	A7, A6, A0
	[A0]	b	.s2	.L10
		nop	5
		sub	.d1	A2, 1, A2
.L9:
		mv	.d1	A4, A3
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L14
		nop	5
.L10:
	[A2]	add	.d1	A3, 1, A4
	[!A2]	mvk	.d1	0, A4
		ret	.s2	B3
		nop	5
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
		mv	.d1	A6, A2
		extu	.s2	B4, 24, 24, B4
		add	.d1	A6, 1, A1
		b	.s2	.L16
		nop	5
.L21:
		ldbu	.d1t1	*A4++[1], A5
		nop	4
		cmpeq	.l1x	A5, B4, A0
	[A0]	b	.s2	.L17
		nop	5
		sub	.d1	A2, 1, A2
.L16:
		mv	.d1	A4, A3
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L21
		nop	5
.L17:
	[A2]	mv	.d1	A3, A4
	[!A2]	mvk	.d1	0, A4
		ret	.s2	B3
		nop	5
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
		mv	.d1	A6, A2
		add	.d1	A6, 1, A1
		b	.s2	.L23
		nop	5
.L28:
		ldbu	.d1t1	*A4++[1], A7
		nop	4
		ldbu	.d2t1	*B4++[1], A3
		nop	4
		cmpeq	.l1	A3, A7, A0
	[!A0]	b	.s2	.L24
		nop	5
		sub	.d1	A2, 1, A2
.L23:
		mv	.l1x	B4, A5
		mv	.d1	A4, A6
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L28
		nop	5
.L24:
	[A2]	ldbu	.d1t1	*A6, A4
		nop	4
	[A2]	ldbu	.d1t1	*A5, A0
		nop	4
	[A2]	sub	.d1	A4, A0, A4
	[!A2]	mvk	.d1	0, A4
		ret	.s2	B3
		nop	5
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
		sub	.d1	A4, 1, A3
		add	.d1	A6, 1, A0
		b	.s2	.L30
		nop	5
.L31:
		ldb	.d2t1	*B4++[1], A5
		nop	4
		stb	.d1t1	A5, *++A3[1]
.L30:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L31
		nop	5
		ret	.s2	B3
		nop	5
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
		extu	.s2	B4, 24, 24, B4
		sub	.d1	A6, 1, A3
		add	.d1	A6, 1, A1
.L33:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L35
		nop	5
		b	.s2	.L39
		nop	5
.L35:
		add	.d1	A4, A3, A5
		ldbu	.d1t1	*A5, A6
		nop	4
		sub	.d1	A3, 1, A7
		cmpeq	.l1x	A6, B4, A0
	[A0]	b	.s2	.L38
		nop	5
		mv	.d1	A7, A3
		b	.s2	.L33
		nop	5
.L38:
		add	.d1	A4, A3, A4
		b	.s2	.L34
		nop	5
.L39:
		mvk	.d1	0, A4
.L34:
		ret	.s2	B3
		nop	5
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
		mv	.d1	A4, A3
		add	.d1	A6, 1, A0
		b	.s2	.L41
		nop	5
.L42:
		stb	.d1t2	B4, *A3++[1]
.L41:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L42
		nop	5
		ret	.s2	B3
		nop	5
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
		sub	.d2	B4, 1, B4
		mv	.d1	A4, A3
.L44:
		mv	.d1	A3, A4
		ldb	.d2t1	*++B4[1], A5
		nop	4
		stb	.d1t1	A5, *A3++[1]
		ext	.s1	A5, 24, 24, A0
	[A0]	b	.s2	.L44
		nop	5
		ret	.s2	B3
		nop	5
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
		extu	.s2	B4, 24, 24, B4
		mv	.d1	A4, A3
.L48:
		mv	.d1	A3, A4
		ldb	.d1t1	*A3++[1], A1
		nop	4
	[!A1]	b	.s2	.L47
		nop	5
		ldbu	.d1t1	*-A3(1), A5
		nop	4
		cmpeq	.l1x	A5, B4, A0
	[!A0]	b	.s2	.L48
		nop	5
.L47:
		ret	.s2	B3
		nop	5
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
.L52:
		mv	.d1	A4, A3
		ldb	.d1t1	*A4++[1], A5
		nop	4
		cmpeq	.l1x	A5, B4, A0
	[A0]	b	.s2	.L53
		nop	5
		ldb	.d1t1	*-A4(1), A1
		nop	4
	[A1]	b	.s2	.L52
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L51
		nop	5
.L53:
		mv	.d1	A3, A4
.L51:
		ret	.s2	B3
		nop	5
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
.L57:
		mv	.l1x	B4, A5
		mv	.d1	A4, A6
		ldb	.d1t1	*A4++[1], A7
		nop	4
		ldb	.d2t1	*B4++[1], A3
		nop	4
		cmpeq	.l1	A3, A7, A0
	[!A0]	b	.s2	.L56
		nop	5
		ldb	.d1t1	*-A4(1), A1
		nop	4
	[A1]	b	.s2	.L57
		nop	5
.L56:
		ldbu	.d1t1	*A6, A4
		nop	4
		ldbu	.d1t1	*A5, A8
		nop	4
		sub	.d1	A4, A8, A4
		ret	.s2	B3
		nop	5
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
		mv	.d1	A4, A5
.L60:
		mv	.d1	A5, A3
		ldb	.d1t1	*A5++[1], A1
		nop	4
	[A1]	b	.s2	.L60
		nop	5
		sub	.d1	A3, A4, A4
		ret	.s2	B3
		nop	5
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
		mv	.d1	A6, A0
	[!A0]	mvk	.d1	0, A4
	[!A0]	b	.s2	.L63
		nop	5
		mv	.d1	A4, A5
		add	.d1	A4, A6, A4
.L65:
		mv	.l1x	B4, A6
		mv	.d1	A5, A7
		ldbu	.d1t1	*A5++[1], A1
		nop	4
	[!A1]	b	.s2	.L64
		nop	5
		cmpeq	.l1	A5, A4, A3
		cmpeq	.l1	0, A3, A8
		ldbu	.d2t1	*B4, A9
		nop	4
		cmpeq	.l1	0, A9, A16
		cmpeq	.l1	0, A16, A17
		and	.d1	A17, A8, A2
	[!A2]	b	.s2	.L64
		nop	5
		ldbu	.d1t1	*-A5(1), A18
		nop	4
		ldbu	.d2t1	*B4++[1], A19
		nop	4
		cmpeq	.l1	A19, A18, A0
	[A0]	b	.s2	.L65
		nop	5
.L64:
		ldbu	.d1t1	*A7, A20
		nop	4
		ldbu	.d1t1	*A6, A21
		nop	4
		sub	.d1	A20, A21, A4
.L63:
		ret	.s2	B3
		nop	5
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
		shru	.s1	A6, 1, A3
		add	.d1	A3, 1, A0
		cmpgt	.l1	0, A6, A1
	[A1]	mvk	.d1	1, A0
		b	.s2	.L69
		nop	5
.L70:
		ldb	.d1t1	*+A4(1), A5
		nop	4
		stb	.d2t1	A5, *B4
		ldb	.d1t1	*A4++(2), A6
		nop	4
		stb	.d2t1	A6, *+B4(1)
		add	.d2	B4, 2, B4
.L69:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L70
		nop	5
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
		cmpeq	.l1	9, A4, A0
		mvk	.s1	32, A3
	[!A0]	cmpeq	.l1	A3, A4, A0
		mv	.d1	A0, A4
		ret	.s2	B3
		nop	5
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
		cmpltu	.l1	31, A4, A3
		mvk	.s1	127, A5
		cmpeq	.l1	A5, A4, A0
	[!A0]	cmpeq	.l1	0, A3, A0
		mv	.d1	A0, A4
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
		mvk	.s1	32, A3
		cmpeq	.l1	A3, A4, A5
		sub	.d1	A4, 9, A4
		cmpltu	.l1	4, A4, A6
		cmpeq	.l1	0, A6, A7
		or	.d1	A7, A5, A4
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
		cmpltu	.l1	31, A4, A3
		cmpeq	.l1	0, A3, A6
		mvk	.s1	-127, A5
		add	.d1	A4, A5, A7
		mvk	.s1	32, A8
		cmpltu	.l1	A8, A7, A9
		cmpeq	.l1	0, A9, A16
		or	.d1	A16, A6, A0
	[A0]	mvk	.d1	1, A4
	[A0]	b	.s2	.L83
		nop	5
		mvk	.s1	-8232, A17
		add	.d1	A4, A17, A18
		cmpltu	.l1	1, A18, A1
	[!A1]	mvk	.d1	1, A4
	[!A1]	b	.s2	.L83
		nop	5
		mvk	.d1	7, A19
		mvklh	.s1	65535, A19
		add	.d1	A4, A19, A4
		cmpltu	.l1	2, A4, A20
		cmpeq	.l1	0, A20, A4
.L83:
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
	[!A0]	b	.s2	.L95
		nop	5
		mvk	.s1	8231, A5
		cmpltu	.l1	A5, A4, A6
		cmpeq	.l1	0, A6, A7
		mvk	.s1	-8234, A8
		add	.d1	A4, A8, A9
		mvk	.s1	-18475, A16
		mvklh	.s1	0, A16
		cmpltu	.l1	A16, A9, A17
		cmpeq	.l1	0, A17, A18
		or	.d1	A18, A7, A1
	[A1]	mvk	.d1	1, A4
	[A1]	b	.s2	.L90
		nop	5
		mvk	.s1	8192, A19
		mvklh	.s1	65535, A19
		add	.d1	A4, A19, A20
		mvk	.s1	8184, A21
		cmpltu	.l1	A21, A20, A2
	[!A2]	mvk	.d1	1, A4
	[!A2]	b	.s2	.L90
		nop	5
		mvk	.d1	4, A22
		mvklh	.s1	65535, A22
		add	.d1	A4, A22, A23
		mvk	.d1	3, A24
		mvklh	.s1	16, A24
		cmpltu	.l1	A24, A23, A0
	[A0]	mvk	.d1	0, A4
	[A0]	b	.s2	.L90
		nop	5
		mvk	.d1	-2, A25
		mvklh	.s1	0, A25
		and	.d1	A25, A4, A4
		cmpeq	.l1	A25, A4, A26
		cmpeq	.l1	0, A26, A4
		b	.s2	.L90
		nop	5
.L95:
		add	.d1	A4, 1, A27
		clr	.s1	A27, 7, 31, A28
		mvk	.s1	32, A29
		cmpltu	.l1	A29, A28, A4
.L90:
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
	[A0]	b	.s2	.L102
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L102
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A0
	[!A0]	mvk	.d1	0, A4
	[!A0]	mvk	.d1	0, A5
	[!A0]	b	.s2	.L102
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_subd), B3
.L102:
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
	[A0]	b	.s2	.L114
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	mv	.d1	A11, A4
	[A1]	b	.s2	.L114
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	0, A4
	[!A2]	b	.s2	.L114
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_subf), B3
.L114:
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
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A12
		mv	.l1x	B5, A13
		mv	.l2x	A4, B4
		mv	.l2x	A11, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L126
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s2	.L126
		nop	5
		clr	.s1	A11, 0, 30, A6
		clr	.s1	A13, 0, 30, A8
		cmpeq	.l1	A8, A6, A0
	[A0]	b	.s2	.L127
		nop	5
		clr	.s1	A11, 0, 30, A1
	[A1]	dmv	.s1	A13, A12, A5:A4
	[A1]	b	.s2	.L126
		nop	5
		dmv	.s1	A11, A10, A5:A4
.L126:
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
.L127:
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L126
		nop	5
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L126
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
		mv	.d1	A4, A10
		mv	.l1x	B4, A11
		mv	.l2x	A4, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	mv	.d1	A11, A4
	[A0]	b	.s2	.L139
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	mv	.d1	A10, A4
	[A1]	b	.s2	.L139
		nop	5
		clr	.s1	A10, 0, 30, A5
		clr	.s1	A11, 0, 30, A3
		cmpeq	.l1	A3, A5, A2
	[A2]	b	.s2	.L140
		nop	5
		clr	.s1	A10, 0, 30, A1
	[A1]	mv	.d1	A11, A4
	[A1]	b	.s2	.L139
		nop	5
		mv	.d1	A10, A4
.L139:
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
.L140:
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[A0]	mv	.d1	A11, A4
	[A0]	b	.s2	.L139
		nop	5
		mv	.d1	A10, A4
		b	.s2	.L139
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
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A12
		mv	.l1x	B5, A13
		mv	.l2x	A4, B4
		mv	.l2x	A11, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L152
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s2	.L152
		nop	5
		clr	.s1	A11, 0, 30, A6
		clr	.s1	A13, 0, 30, A8
		cmpeq	.l1	A8, A6, A0
	[A0]	b	.s2	.L153
		nop	5
		clr	.s1	A11, 0, 30, A1
	[A1]	dmv	.s1	A13, A12, A5:A4
	[A1]	b	.s2	.L152
		nop	5
		dmv	.s1	A11, A10, A5:A4
.L152:
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
.L153:
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L152
		nop	5
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L152
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
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A10
		mv	.l1x	B5, A11
		mv	.l2x	A4, B4
		mv	.l2x	A13, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s2	.L165
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L165
		nop	5
		clr	.s1	A13, 0, 30, A6
		clr	.s1	A11, 0, 30, A8
		cmpeq	.l1	A8, A6, A0
	[A0]	b	.s2	.L166
		nop	5
		clr	.s1	A13, 0, 30, A1
	[A1]	dmv	.s1	A13, A12, A5:A4
	[A1]	b	.s2	.L165
		nop	5
		dmv	.s1	A11, A10, A5:A4
.L165:
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
.L166:
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L165
		nop	5
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L165
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
		mv	.d1	A4, A11
		mv	.l1x	B4, A10
		mv	.l2x	A4, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	mv	.d1	A10, A4
	[A0]	b	.s2	.L178
		nop	5
		mv	.l2x	A10, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	mv	.d1	A11, A4
	[A1]	b	.s2	.L178
		nop	5
		clr	.s1	A11, 0, 30, A5
		clr	.s1	A10, 0, 30, A3
		cmpeq	.l1	A3, A5, A2
	[A2]	b	.s2	.L179
		nop	5
		clr	.s1	A11, 0, 30, A1
	[A1]	mv	.d1	A11, A4
	[A1]	b	.s2	.L178
		nop	5
		mv	.d1	A10, A4
.L178:
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
.L179:
		mv	.l2x	A10, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[A0]	mv	.d1	A11, A4
	[A0]	b	.s2	.L178
		nop	5
		mv	.d1	A10, A4
		b	.s2	.L178
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
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A10
		mv	.l1x	B5, A11
		mv	.l2x	A4, B4
		mv	.l2x	A13, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s2	.L191
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L191
		nop	5
		clr	.s1	A13, 0, 30, A6
		clr	.s1	A11, 0, 30, A8
		cmpeq	.l1	A8, A6, A0
	[A0]	b	.s2	.L192
		nop	5
		clr	.s1	A13, 0, 30, A1
	[A1]	dmv	.s1	A13, A12, A5:A4
	[A1]	b	.s2	.L191
		nop	5
		dmv	.s1	A11, A10, A5:A4
.L191:
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
.L192:
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L191
		nop	5
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L191
		nop	5
	.size	fminl, .-fminl
	.section	.const,"a"
	.align	3
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.text;
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
		mvk	.s1	63, A6
		b	.s2	.L204
		nop	5
.L205:
		and	.d1	A6, A0, A5
		ldw	.d2t1	*+B14($GOT(digits)), A3
		nop	4
		add	.d1	A3, A5, A7
		ldb	.d1t1	*A7, A8
		nop	4
		stb	.d1t1	A8, *A4++[1]
		shru	.s1	A0, 6, A0
.L204:
	[A0]	b	.s2	.L205
		nop	5
		stb	.d1t1	A0, *A4
		ldw	.d2t1	*+B14($GOT(s.0)), A4
		nop	4
		ldw	.d2t2	*+B15(8), B14
		nop	4
		add	.d2	B15, 8, B15
		ret	.s2	B3
		nop	5
	.size	l64a, .-l64a
	.section	".bss","aw",@nobits
	.type	seed, @object
	.size	seed, 8
	.align	3
seed:
	.zero	8
.text;
	.align	2
	.global	srand
	.type	srand, @function
srand:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		sub	.d1	A4, 1, A0
		mvk	.d1	0, A1
		addaw	.d1x	B14, (seed), A3
		stdw	.d1t1	A1:A0, *A3
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
		addaw	.d1x	B14, (seed), A5
		lddw	.d1t1	*A5, A1:A0
		nop	4
		mvk	.s1	32557, A6
		mvklh	.s1	19605, A6
		mpy32	.m1	A1, A6, A3
		nop	3
		mvk	.s1	-3027, A4
		mvklh	.s1	22609, A4
		mpy32	.m1	A0, A4, A7
		nop	3
		add	.d1	A3, A7, A8
		mpy32u	.m1	A0, A6, A1:A0
		nop	3
		add	.d1	A8, A1, A9
		mvk	.d1	1, A16
		addu	.l1	A0, A16, A7:A6
		add	.d1	A7, A9, A7
		stdw	.d1t1	A7:A6, *A5
		shru	.s1	A7, 1, A4
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
	[!A0]	stw	.d1t1	A0, *+A4(4)
	[!A0]	stw	.d1t1	A0, *A4
	[!A0]	b	.s2	.L208
		nop	5
		ldw	.d2t1	*B4, A3
		nop	4
		stw	.d1t1	A3, *A4
		stw	.d1t2	B4, *+A4(4)
		stw	.d2t1	A4, *B4
		ldw	.d1t1	*A4, A1
		nop	4
	[A1]	stw	.d1t1	A4, *+A1(4)
.L208:
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
		mv	.l1x	B4, A15
		mv	.l2x	A6, B11
		mv	.l1x	B6, A12
		mv	.l2x	A8, B10
		ldw	.d1t1	*A6, A13
		nop	4
		mv	.l1x	B4, A11
		mvk	.d1	0, A10
		b	.s2	.L215
		nop	5
.L216:
		add	.d1	A10, 1, A10
.L215:
		cmpeq	.l1	A13, A10, A0
	[A0]	b	.s2	.L219
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A14, A4
		call	.s2	B10
		addkpc	.s2	.L220, B3, 4
.L220:
		add	.d1	A11, A12, A11
		mv	.d1	A4, A1
	[A1]	b	.s2	.L216
		nop	5
		mpy32	.m1	A10, A12, A4
		nop	3
		add	.d1	A15, A4, A4
		b	.s2	.L217
		nop	5
.L219:
		add	.d1	A13, 1, A3
		stw	.d2t1	A3, *B11
		mpy32	.m1	A12, A13, A13
		nop	3
		mv	.d1	A12, A6
		mv	.l2x	A14, B4
		add	.d1	A15, A13, A4
		callp	.s2	(memcpy), B3
.L217:
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
		mv	.d1	A4, A14
		mv	.l1x	B4, A15
		mv	.l1x	B6, A12
		mv	.d1	A8, A13
		ldw	.d1t2	*A6, B10
		nop	4
		mv	.l1x	B4, A11
		mvk	.d1	0, A10
		b	.s2	.L223
		nop	5
.L224:
		add	.d1	A10, 1, A10
.L223:
		mv	.l1x	B10, A3
		cmpeq	.l1	A3, A10, A0
	[A0]	b	.s2	.L227
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A14, A4
		call	.s2x	A13
		addkpc	.s2	.L228, B3, 4
.L228:
		add	.d1	A11, A12, A11
		mv	.d1	A4, A1
	[A1]	b	.s2	.L224
		nop	5
		mpy32	.m1	A10, A12, A4
		nop	3
		add	.d1	A15, A4, A4
		b	.s2	.L225
		nop	5
.L227:
		mvk	.d1	0, A4
.L225:
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A11
.L231:
		mv	.d1	A11, A10
		ldb	.d1t1	*A11++[1], A4
		nop	4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L231
		nop	5
		ldb	.d1t1	*A10, A3
		nop	4
		mvk	.s1	43, A4
		cmpeq	.l1	A4, A3, A2
	[A2]	b	.s2	.L237
		nop	5
		mvk	.s1	45, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	mvk	.d1	1, A1
	[A0]	b	.s2	.L232
		nop	5
		mvk	.d1	0, A1
		b	.s2	.L233
		nop	5
.L237:
		mvk	.d1	0, A1
.L232:
		add	.d1	A10, 1, A10
.L233:
		sub	.d1	A10, 1, A7
		mvk	.d1	0, A4
		b	.s2	.L234
		nop	5
.L235:
		shl	.s1	A4, 2, A8
		add	.d1	A8, A4, A9
		shl	.s1	A9, 1, A16
		ldb	.d1t1	*A7, A17
		nop	4
		subah	.d1	A17, 24, A17
		sub	.d1	A16, A17, A4
.L234:
		ldb	.d1t1	*++A7[1], A6
		nop	4
		subah	.d1	A6, 24, A6
		cmpltu	.l2x	9, A6, B0
	[!B0]	b	.s2	.L235
		nop	5
	[!A1]	neg	.l1	A4, A4
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
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A11
.L243:
		mv	.d1	A11, A10
		ldb	.d1t1	*A11++[1], A4
		nop	4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L243
		nop	5
		ldb	.d1t1	*A10, A3
		nop	4
		mvk	.s1	43, A4
		cmpeq	.l1	A4, A3, A2
	[A2]	b	.s2	.L249
		nop	5
		mvk	.s1	45, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	mvk	.d1	1, A1
	[A0]	b	.s2	.L244
		nop	5
		mvk	.d1	0, A1
		b	.s2	.L245
		nop	5
.L249:
		mvk	.d1	0, A1
.L244:
		add	.d1	A10, 1, A10
.L245:
		sub	.d1	A10, 1, A7
		mvk	.d1	0, A4
		b	.s2	.L246
		nop	5
.L247:
		shl	.s1	A4, 2, A8
		add	.d1	A8, A4, A9
		shl	.s1	A9, 1, A16
		ldb	.d1t1	*A7, A17
		nop	4
		subah	.d1	A17, 24, A17
		sub	.d1	A16, A17, A4
.L246:
		ldb	.d1t1	*++A7[1], A6
		nop	4
		subah	.d1	A6, 24, A6
		cmpltu	.l2x	9, A6, B0
	[!B0]	b	.s2	.L247
		nop	5
	[!A1]	neg	.l1	A4, A4
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
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A13
.L255:
		mv	.d1	A13, A12
		ldb	.d1t1	*A13++[1], A4
		nop	4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L255
		nop	5
		ldb	.d1t1	*A12, A3
		nop	4
		mvk	.s1	43, A4
		cmpeq	.l1	A4, A3, A0
	[A0]	b	.s2	.L261
		nop	5
		mvk	.s1	45, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	mvk	.d1	1, A2
	[A0]	b	.s2	.L256
		nop	5
		mvk	.d1	0, A2
		b	.s2	.L257
		nop	5
.L261:
		mvk	.d1	0, A2
.L256:
		add	.d1	A12, 1, A12
.L257:
		sub	.d1	A12, 1, A8
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		b	.s2	.L258
		nop	5
.L259:
		addu	.l1	A4, A4, A1:A0
		add	.d1	A1, A5, A7
		add	.d1	A7, A5, A9
		addu	.l1	A0, A0, A7:A6
		add	.d1	A7, A9, A10
		add	.d1	A10, A9, A11
		addu	.l1	A6, A4, A1:A0
		add	.d1	A1, A11, A16
		add	.d1	A16, A5, A1
		addu	.l1	A0, A0, A7:A6
		add	.d1	A7, A1, A17
		add	.d1	A17, A1, A18
		ldb	.d1t1	*A8, A19
		nop	4
		subah	.d1	A19, 24, A19
		shr	.s1	A19, 31, A21
		sub	.d1	A6, A19, A4
		cmpltu	.l1	A6, A4, A22
		sub	.d1	A18, A21, A23
		sub	.d1	A23, A22, A5
.L258:
		ldb	.d1t1	*++A8[1], A6
		nop	4
		subah	.d1	A6, 24, A6
		cmpltu	.l1	9, A6, A0
	[!A0]	b	.s2	.L259
		nop	5
	[!A2]	neg	.l1	A4, A0
	[!A2]	cmpltu	.l1	0, A0, A8
	[!A2]	neg	.l1	A5, A1
	[!A2]	sub	.d1	A1, A8, A1
	[!A2]	dmv	.s1	A1, A0, A5:A4
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
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.type	bsearch, @function
bsearch:
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
		mv	.d1	A4, A14
		mv	.l1x	B4, A15
		mv	.d1	A6, A11
		mv	.l1x	B6, A12
		mv	.d1	A8, A13
.L267:
		mv	.d1	A11, A0
	[!A0]	b	.s2	.L273
		nop	5
		shru	.s1	A11, 1, A10
		mpy32	.m1	A10, A12, A3
		nop	3
		add	.d1	A15, A3, A10
		mv	.l2x	A10, B4
		mv	.d1	A14, A4
		call	.s2x	A13
		addkpc	.s2	.L274, B3, 4
.L274:
		cmpgt	.l1	0, A4, A1
	[A1]	shru	.s1	A11, 1, A11
	[A1]	b	.s2	.L267
		nop	5
		cmplt	.l1	0, A4, A2
	[!A2]	b	.s2	.L272
		nop	5
		add	.d1	A10, A12, A15
		shru	.s1	A11, 1, A4
		sub	.d1	A11, 1, A11
		sub	.d1	A11, A4, A11
		b	.s2	.L267
		nop	5
.L273:
		mvk	.d1	0, A4
.L270:
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
.L272:
		mv	.d1	A10, A4
		b	.s2	.L270
		nop	5
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
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
		mv	.l2x	A4, B10
		mv	.l1x	B6, A13
		mv	.d1	A8, A15
		mv	.l1x	B8, A14
		mv	.d1	A6, A11
		mv	.l1x	B4, A12
		b	.s2	.L276
		nop	5
.L282:
		cmplt	.l1	0, A4, A2
	[A2]	add	.d1	A10, A13, A12
	[A2]	sub	.d1	A11, 1, A11
		shr	.s1	A11, 1, A11
.L276:
		mv	.d1	A11, A0
	[!A0]	b	.s2	.L281
		nop	5
		shr	.s1	A11, 1, A10
		mpy32	.m1	A10, A13, A3
		nop	3
		add	.d1	A12, A3, A10
		mv	.d1	A14, A6
		mv	.l2x	A10, B4
		mv	.l1x	B10, A4
		call	.s2x	A15
		addkpc	.s2	.L283, B3, 4
.L283:
		mv	.d1	A4, A1
	[A1]	b	.s2	.L282
		nop	5
		mv	.d1	A10, A4
		b	.s2	.L277
		nop	5
.L281:
		mvk	.d1	0, A4
.L277:
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
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(16)
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L285, B3, 4
.L285:
		mv	.d1	A4, A8
		mv	.d1	A5, A9
		dmv	.s1	A9, A8, A5:A4
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
		xor	.d1	A5, A3, A7
		sub	.d1	A6, A3, A4
		cmpltu	.l1	A6, A4, A9
		sub	.d1	A7, A3, A5
		sub	.d1	A5, A9, A5
		ret	.s2	B3
		nop	5
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
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
		mv	.l2x	A3, B10
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A14
		mv	.l1x	B5, A15
		callp	.s2	(__c6xabi_divlli), B3
		dmv	.s1	A5, A4, A11:A10
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_remlli), B3
		stdw	.d2t1	A11:A10, *B10
		stdw	.d2t1	A5:A4, *+B10(8)
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
		addkpc	.s2	.L292, B3, 4
.L292:
		mv	.d1	A4, A8
		mv	.d1	A5, A9
		dmv	.s1	A9, A8, A5:A4
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
		xor	.d1	A5, A3, A7
		sub	.d1	A6, A3, A4
		cmpltu	.l1	A6, A4, A9
		sub	.d1	A7, A3, A5
		sub	.d1	A5, A9, A5
		ret	.s2	B3
		nop	5
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
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
		mv	.l2x	A3, B10
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A14
		mv	.l1x	B5, A15
		callp	.s2	(__c6xabi_divlli), B3
		dmv	.s1	A5, A4, A11:A10
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_remlli), B3
		stdw	.d2t1	A11:A10, *B10
		stdw	.d2t1	A5:A4, *+B10(8)
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
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
.L299:
		mv	.d1	A4, A3
		ldw	.d1t1	*A4++[1], A0
		nop	4
	[!A0]	b	.s2	.L298
		nop	5
		ldw	.d1t1	*-A4(4), A5
		nop	4
		cmpeq	.l1x	A5, B4, A1
	[!A1]	b	.s2	.L299
		nop	5
.L298:
		ldw	.d1t1	*A3, A2
		nop	4
	[A2]	mv	.d1	A3, A4
	[!A2]	mvk	.d1	0, A4
		ret	.s2	B3
		nop	5
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
.L305:
		mv	.l1x	B4, A5
		mv	.d1	A4, A6
		ldw	.d1t1	*A4++[1], A7
		nop	4
		ldw	.d2t1	*B4++[1], A3
		nop	4
		cmpeq	.l1	A3, A7, A0
	[!A0]	b	.s2	.L304
		nop	5
		ldw	.d1t1	*-A4(4), A1
		nop	4
	[!A1]	b	.s2	.L304
		nop	5
		ldw	.d2t1	*-B4(4), A2
		nop	4
	[A2]	b	.s2	.L305
		nop	5
.L304:
		ldw	.d1t1	*A6, A8
		nop	4
		ldw	.d1t1	*A5, A9
		nop	4
		cmpgt	.l1	A9, A8, A0
	[A0]	mvk	.d1	-1, A4
	[A0]	b	.s2	.L306
		nop	5
		ldw	.d1t1	*A6, A4
		nop	4
		cmplt	.l1	A9, A4, A4
.L306:
		ret	.s2	B3
		nop	5
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
		sub	.d1	A4, 4, A3
.L310:
		ldw	.d2t1	*B4++[1], A0
		nop	4
		stw	.d1t1	A0, *++A3[1]
	[A0]	b	.s2	.L310
		nop	5
		ret	.s2	B3
		nop	5
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
		mv	.d1	A4, A5
.L313:
		mv	.d1	A5, A3
		ldw	.d1t1	*A5++[1], A1
		nop	4
	[A1]	b	.s2	.L313
		nop	5
		sub	.d1	A3, A4, A4
		shr	.s1	A4, 2, A4
		ret	.s2	B3
		nop	5
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
		mv	.d1	A6, A2
		add	.d1	A6, 1, A1
.L316:
		mv	.l1x	B4, A5
		mv	.d1	A4, A6
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L322
		nop	5
		b	.s2	.L317
		nop	5
.L322:
		ldw	.d1t1	*A4, A7
		nop	4
		ldw	.d2t1	*B4, A3
		nop	4
		cmpeq	.l1	A3, A7, A0
	[!A0]	b	.s2	.L317
		nop	5
		ldw	.d1t1	*A4++[1], A0
		nop	4
	[!A0]	b	.s2	.L317
		nop	5
		ldw	.d2t1	*B4++[1], A0
		nop	4
	[!A0]	b	.s2	.L317
		nop	5
		sub	.d1	A2, 1, A2
		b	.s2	.L316
		nop	5
.L317:
	[!A2]	mvk	.d1	0, A4
	[!A2]	b	.s2	.L319
		nop	5
		ldw	.d1t1	*A6, A8
		nop	4
		ldw	.d1t1	*A5, A9
		nop	4
		cmpgt	.l1	A9, A8, A1
	[A1]	mvk	.d1	-1, A4
	[A1]	b	.s2	.L319
		nop	5
		ldw	.d1t1	*A6, A4
		nop	4
		cmplt	.l1	A9, A4, A4
.L319:
		ret	.s2	B3
		nop	5
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
		mv	.d1	A6, A2
		add	.d1	A6, 1, A1
		b	.s2	.L324
		nop	5
.L329:
		ldw	.d1t1	*A4++[1], A5
		nop	4
		cmpeq	.l1x	A5, B4, A0
	[A0]	b	.s2	.L325
		nop	5
		sub	.d1	A2, 1, A2
.L324:
		mv	.d1	A4, A3
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L329
		nop	5
.L325:
	[A2]	mv	.d1	A3, A4
	[!A2]	mvk	.d1	0, A4
		ret	.s2	B3
		nop	5
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
		mv	.d1	A6, A2
		add	.d1	A6, 1, A1
		b	.s2	.L331
		nop	5
.L337:
		ldw	.d1t1	*A4++[1], A7
		nop	4
		ldw	.d2t1	*B4++[1], A3
		nop	4
		cmpeq	.l1	A3, A7, A0
	[!A0]	b	.s2	.L332
		nop	5
		sub	.d1	A2, 1, A2
.L331:
		mv	.l1x	B4, A5
		mv	.d1	A4, A6
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L337
		nop	5
.L332:
	[!A2]	mvk	.d1	0, A4
	[!A2]	b	.s2	.L334
		nop	5
		ldw	.d1t1	*A6, A8
		nop	4
		ldw	.d1t1	*A5, A9
		nop	4
		cmpgt	.l1	A9, A8, A1
	[A1]	mvk	.d1	-1, A4
	[A1]	b	.s2	.L334
		nop	5
		ldw	.d1t1	*A6, A4
		nop	4
		cmplt	.l1	A9, A4, A4
.L334:
		ret	.s2	B3
		nop	5
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
		sub	.d1	A4, 4, A3
		add	.d1	A6, 1, A0
		b	.s2	.L339
		nop	5
.L340:
		ldw	.d2t1	*B4++[1], A5
		nop	4
		stw	.d1t1	A5, *++A3[1]
.L339:
		sub	.d1	A6, 1, A6
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L340
		nop	5
		ret	.s2	B3
		nop	5
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
		mv	.l1x	B4, A3
		cmpeq	.l1	A3, A4, A0
	[A0]	b	.s2	.L342
		nop	5
		sub	.d1	A4, A3, A5
		shl	.s1	A6, 2, A7
		cmpgtu	.l1	A7, A5, A1
	[A1]	b	.s2	.L343
		nop	5
		sub	.d1	A4, 4, A8
		add	.d1	A6, 1, A2
		b	.s2	.L344
		nop	5
.L343:
		shl	.s1	A6, 2, A6
		add	.d2x	B4, A6, B4
		add	.d1	A4, A6, A17
		shru	.s1	A6, 2, A16
		add	.d1	A16, 1, A0
		b	.s2	.L345
		nop	5
.L346:
		ldw	.d2t1	*--B4[1], A18
		nop	4
		stw	.d1t1	A18, *--A17[1]
.L345:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L346
		nop	5
.L342:
		ret	.s2	B3
		nop	5
.L347:
		ldw	.d2t1	*B4++[1], A9
		nop	4
		stw	.d1t1	A9, *++A8[1]
.L344:
		sub	.d1	A6, 1, A6
		sub	.d1	A2, 1, A2
	[A2]	b	.s2	.L347
		nop	5
		b	.s2	.L342
		nop	5
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
		mv	.d1	A4, A3
		add	.d1	A6, 1, A0
		b	.s2	.L349
		nop	5
.L350:
		stw	.d1t2	B4, *A3++[1]
.L349:
		sub	.d1	A6, 1, A6
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L350
		nop	5
		ret	.s2	B3
		nop	5
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
		mv	.l1x	B4, A3
		cmpgtu	.l1	A3, A4, A0
	[!A0]	b	.s2	.L352
		nop	5
		add	.d1	A4, A6, A4
		add	.d2x	B4, A6, B5
		add	.d1	A6, 1, A0
		b	.s2	.L353
		nop	5
.L354:
		ldb	.d1t1	*--A4[1], A7
		nop	4
		stb	.d2t1	A7, *--B5[1]
.L353:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L354
		nop	5
.L351:
		ret	.s2	B3
		nop	5
.L352:
		cmpeq	.l1	A3, A4, A1
	[A1]	b	.s2	.L351
		nop	5
		sub	.d2	B4, 1, B4
		add	.d1	A6, 1, A2
		b	.s2	.L356
		nop	5
.L357:
		ldb	.d1t1	*A4++[1], A6
		nop	4
		stb	.d2t1	A6, *++B4[1]
.L356:
		sub	.d1	A2, 1, A2
	[A2]	b	.s2	.L357
		nop	5
		b	.s2	.L351
		nop	5
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
		mv	.l1x	B4, A9
		subah	.d1	A9, 16, A9
		cmpgt	.l1	0, A9, A1
	[!A1]	mvk	.d1	0, A6
	[!A1]	mvk	.d1	0, A7
	[!A1]	shl	.s1	A4, A9, A7
	[A1]	shru	.s1	A4, 1, A9
	[A1]	mvk	.s1	31, A3
	[A1]	mv	.l1x	B4, A6
	[A1]	sub	.d1	A3, A6, A3
	[A1]	shru	.s1	A9, A3, A9
	[A1]	mvk	.d1	0, A6
	[A1]	mvk	.d1	0, A7
	[A1]	mv	.l1x	B4, A8
	[A1]	shl	.s1	A5, A8, A7
	[A1]	or	.d1	A7, A9, A7
	[A1]	shl	.s1	A4, A8, A6
		neg	.l1x	B4, A3
		clr	.s1	A3, 6, 31, A16
		subah	.d1	A16, 16, A16
		cmpgt	.l1	0, A16, A0
	[A0]	b	.s2	.L361
		nop	5
		shru	.s1	A5, A16, A22
		mvk	.d1	0, A23
.L362:
		or	.d1	A6, A22, A4
		or	.d1	A7, A23, A5
		ret	.s2	B3
		nop	5
.L361:
		shl	.s1	A5, 1, A17
		neg	.l2	B4, B4
		clr	.s2	B4, 6, 31, B5
		mvk	.s1	31, A18
		mv	.l1x	B5, A8
		sub	.d1	A18, A8, A19
		shl	.s1	A17, A19, A20
		shru	.s1	A4, A8, A4
		or	.d1	A4, A20, A22
		shru	.s1	A5, A8, A23
		b	.s2	.L362
		nop	5
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
		mv	.l1x	B4, A3
		subah	.d1	A3, 16, A3
		cmpgt	.l1	0, A3, A1
	[A1]	b	.s2	.L364
		nop	5
		shru	.s1	A5, A3, A19
		mvk	.d1	0, A20
.L365:
		neg	.l1x	B4, A21
		clr	.s1	A21, 6, 31, A22
		subah	.d1	A22, 16, A22
		cmpgt	.l1	0, A22, A0
	[!A0]	mvk	.d1	0, A8
	[!A0]	mvk	.d1	0, A9
	[!A0]	shl	.s1	A4, A22, A9
	[A0]	b	.s2	.L368
		nop	5
.L367:
		or	.d1	A19, A8, A4
		or	.d1	A20, A9, A5
		ret	.s2	B3
		nop	5
.L364:
		shl	.s1	A5, 1, A7
		mvk	.s1	31, A8
		mv	.l1x	B4, A6
		sub	.d1	A8, A6, A16
		shl	.s1	A7, A16, A17
		mv	.l1x	B4, A8
		shru	.s1	A4, A6, A18
		or	.d1	A18, A17, A19
		shru	.s1	A5, A6, A20
		b	.s2	.L365
		nop	5
.L368:
		shru	.s1	A4, 1, A9
		neg	.l2	B4, B4
		clr	.s2	B4, 6, 31, B5
		mvk	.s1	31, A23
		mv	.l1x	B5, A24
		sub	.d1	A23, A24, A25
		shru	.s1	A9, A25, A26
		shl	.s1	A5, A24, A5
		or	.d1	A5, A26, A9
		shl	.s1	A4, A24, A8
		b	.s2	.L367
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
		extu	.s1	A4, 16, 16, A6
		mv	.l1x	B4, A3
		shl	.s1	A6, A3, A4
		mvk	.s1	16, A7
		sub	.d1	A7, A3, A8
		shru	.s1	A6, A8, A9
		or	.d1	A9, A4, A4
		ret	.s2	B3
		nop	5
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
		extu	.s1	A4, 16, 16, A6
		mv	.l1x	B4, A3
		shru	.s1	A6, A3, A4
		mvk	.s1	16, A7
		sub	.d1	A7, A3, A8
		shl	.s1	A6, A8, A9
		or	.d1	A9, A4, A4
		ret	.s2	B3
		nop	5
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
		extu	.s1	A4, 24, 24, A5
		mv	.l1x	B4, A3
		shl	.s1	A5, A3, A4
		sub	.l2	8, B4, B4
		mv	.l1x	B4, A6
		shru	.s1	A5, A6, A7
		or	.d1	A7, A4, A4
		ret	.s2	B3
		nop	5
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
		extu	.s1	A4, 24, 24, A5
		mv	.l1x	B4, A3
		shru	.s1	A5, A3, A4
		sub	.l2	8, B4, B4
		mv	.l1x	B4, A6
		shl	.s1	A5, A6, A7
		or	.d1	A7, A4, A4
		ret	.s2	B3
		nop	5
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
		extu	.s1	A4, 16, 24, A3
		extu	.s1	A4, 24, 24, A4
		shl	.s1	A4, 8, A5
		or	.d1	A5, A3, A4
		ret	.s2	B3
		nop	5
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
		shru	.s1	A4, 24, A3
		mvk	.d1	0, A5
		mvklh	.s1	255, A5
		and	.d1	A5, A4, A6
		shru	.s1	A6, 8, A7
		or	.d1	A3, A7, A8
		mvk	.s1	-256, A9
		mvklh	.s1	0, A9
		and	.d1	A9, A4, A16
		shl	.s1	A16, 8, A17
		or	.d1	A17, A8, A18
		shl	.s1	A4, 24, A4
		or	.d1	A4, A18, A4
		ret	.s2	B3
		nop	5
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
		clr	.s1	A5, 0, 23, A7
		shru	.s1	A7, 24, A3
		mvk	.d1	0, A18
		mvklh	.s1	255, A18
		and	.d1	A18, A5, A9
		shru	.s1	A9, 8, A6
		or	.d1	A3, A6, A16
		mvk	.d1	0, A8
		mvk	.s1	-256, A17
		mvklh	.s1	0, A17
		and	.d1	A17, A5, A19
		shl	.s1	A19, 8, A20
		shru	.s1	A8, 24, A21
		or	.d1	A21, A20, A22
		shru	.s1	A19, 24, A23
		or	.d1	A22, A16, A24
		mvk	.d1	0, A26
		mvk	.s1	255, A27
		and	.d1	A5, A27, A28
		shl	.s1	A28, 24, A5
		shru	.s1	A26, 8, A29
		or	.d1	A29, A5, A30
		shru	.s1	A28, 8, A31
		or	.d1	A30, A24, A3
		or	.d1	A31, A23, A2
		clr	.s1	A4, 0, 23, A7
		shru	.s1	A7, 24, A6
		shl	.s1	A7, 8, A16
		or	.d1	A16, A3, A8
		or	.d1	A6, A2, A9
		and	.d1	A18, A4, A18
		shru	.s1	A18, 8, A19
		shl	.s1	A18, 24, A20
		or	.d1	A20, A8, A21
		or	.d1	A19, A9, A22
		and	.d1	A17, A4, A17
		shl	.s1	A17, 8, A23
		or	.d1	A23, A22, A25
		and	.d1	A4, A27, A4
		shl	.s1	A4, 24, A26
		mv	.d1	A21, A4
		or	.d1	A26, A25, A5
		ret	.s2	B3
		nop	5
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
		mvk	.d1	0, A3
		mvk	.s1	33, A1
.L381:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L384
		nop	5
		b	.s2	.L387
		nop	5
.L384:
		shru	.s1	A4, A3, A5
		and	.d1	1, A5, A0
	[A0]	b	.s2	.L386
		nop	5
		add	.d1	A3, 1, A3
		b	.s2	.L381
		nop	5
.L386:
		add	.d1	A3, 1, A4
.L383:
		ret	.s2	B3
		nop	5
.L387:
		mvk	.d1	0, A4
		b	.s2	.L383
		nop	5
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
		mv	.d1	A4, A0
	[A0]	mvk	.d1	1, A4
	[A0]	b	.s2	.L390
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L389
		nop	5
.L391:
		shr	.s1	A0, 1, A0
		add	.d1	A4, 1, A4
.L390:
		and	.d1	1, A0, A1
	[!A1]	b	.s2	.L391
		nop	5
.L389:
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
	[A0]	b	.s2	.L394
		nop	5
		mvk	.d2	-1, B4
		mvklh	.s2	32639, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_gtf), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L394:
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
	[A0]	b	.s2	.L402
		nop	5
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	32751, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L402:
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
	[A0]	b	.s2	.L410
		nop	5
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	32751, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L410:
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
	[A0]	b	.s2	.L420
		nop	5
		mv	.l2x	A12, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_addf), B3
		mv	.l2x	A4, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_eqf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L420
		nop	5
		cmpgt	.l1	0, A10, A2
		mvk	.d1	0, A11
	[A2]	mvklh	.s1	16128, A11
	[!A2]	mvklh	.s1	16384, A11
		b	.s2	.L423
		nop	5
.L422:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L420
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A11
.L423:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L422
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A12
		b	.s2	.L422
		nop	5
.L420:
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
	[A0]	b	.s2	.L431
		nop	5
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L431
		nop	5
		cmpgt	.l1	0, A10, A2
		mvk	.d1	0, A12
		mvk	.d1	0, A13
	[A2]	mvklh	.s1	16352, A13
	[!A2]	mvklh	.s1	16384, A13
		b	.s2	.L434
		nop	5
.L433:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L431
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A13:A12
.L434:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L433
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A15:A14
		b	.s2	.L433
		nop	5
.L431:
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
	[A0]	b	.s2	.L442
		nop	5
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L442
		nop	5
		cmpgt	.l1	0, A10, A2
		mvk	.d1	0, A12
		mvk	.d1	0, A13
	[A2]	mvklh	.s1	16352, A13
	[!A2]	mvklh	.s1	16384, A13
		b	.s2	.L445
		nop	5
.L444:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L442
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A13:A12
.L445:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L444
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A15:A14
		b	.s2	.L444
		nop	5
.L442:
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
		mv	.d1	A4, A3
		add	.d1	A6, 1, A1
		b	.s2	.L453
		nop	5
.L454:
		ldb	.d2t1	*B4++[1], A6
		nop	4
		ldb	.d1t1	*A3++[1], A5
		nop	4
		xor	.d1	A5, A6, A7
		stb	.d1t1	A7, *-A3(1)
.L453:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L454
		nop	5
		ret	.s2	B3
		nop	5
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A12
		mv	.l1x	B4, A10
		mv	.d1	A6, A11
		callp	.s2	(strlen), B3
		add	.l2x	-1, A10, B4
		add	.d1	A12, A4, A5
		add	.d1	A11, 1, A1
		b	.s2	.L456
		nop	5
.L460:
		ldb	.d2t1	*++B4[1], A3
		nop	4
		stb	.d1t1	A3, *A5
		ldb	.d1t1	*A5++[1], A2
		nop	4
	[!A2]	b	.s2	.L457
		nop	5
		sub	.d1	A11, 1, A11
.L456:
		mv	.d1	A5, A4
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L460
		nop	5
.L457:
		mv	.d1	A11, A0
	[!A0]	stb	.d1t1	A11, *A4
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
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
		mv	.d1	A4, A3
		mvk	.d1	0, A4
		add	.l1x	1, B4, A0
.L463:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L466
		nop	5
		b	.s2	.L464
		nop	5
.L466:
		add	.d1	A3, A4, A5
		ldb	.d1t1	*A5, A1
		nop	4
	[A1]	b	.s2	.L465
		nop	5
.L464:
		ret	.s2	B3
		nop	5
.L465:
		add	.d1	A4, 1, A4
		b	.s2	.L463
		nop	5
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L468:
		mv	.d1	A4, A6
		ldb	.d1t1	*A4++[1], A0
		nop	4
	[!A0]	b	.s2	.L473
		nop	5
		add	.l1x	-1, B4, A3
.L471:
		ldb	.d1t1	*++A3[1], A1
		nop	4
	[!A1]	b	.s2	.L468
		nop	5
		ldb	.d1t1	*A3, A7
		nop	4
		ldb	.d1t1	*-A4(1), A5
		nop	4
		cmpeq	.l1	A5, A7, A2
	[!A2]	b	.s2	.L471
		nop	5
		mv	.d1	A6, A4
.L469:
		ret	.s2	B3
		nop	5
.L473:
		mvk	.d1	0, A4
		b	.s2	.L469
		nop	5
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
		mv	.d1	A4, A5
		mvk	.d1	0, A4
.L476:
		mv	.d1	A5, A3
		ldb	.d1t1	*A5++[1], A6
		nop	4
		cmpeq	.l1x	A6, B4, A1
	[A1]	mv	.d1	A3, A4
		ldb	.d1t1	*-A5(1), A0
		nop	4
	[A0]	b	.s2	.L476
		nop	5
		ret	.s2	B3
		nop	5
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mv	.l1x	B4, A11
		mv	.l1x	B4, A4
		callp	.s2	(strlen), B3
		mv	.d1	A4, A12
		mv	.d1	A4, A0
	[A0]	ldb	.d1t1	*A11, A13
		nop	4
	[!A0]	b	.s2	.L485
		nop	5
.L481:
		mv	.l2x	A13, B4
		mv	.d1	A10, A4
		callp	.s2	(strchr), B3
		mv	.d1	A4, A10
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L486
		nop	5
		mv	.d1	A12, A6
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(strncmp), B3
		mv	.d1	A4, A2
	[!A2]	b	.s2	.L484
		nop	5
		add	.d1	A10, 1, A10
		b	.s2	.L481
		nop	5
.L486:
		mvk	.d1	0, A4
		b	.s2	.L480
		nop	5
.L485:
		mv	.d1	A10, A4
.L480:
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
.L484:
		mv	.d1	A10, A4
		b	.s2	.L480
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
	[A0]	b	.s2	.L503
		nop	5
.L491:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A0
	[!A0]	dmv	.s1	A11, A10, A5:A4
	[!A0]	b	.s2	.L494
		nop	5
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s2	.L493
		nop	5
.L494:
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
.L503:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L491
		nop	5
.L493:
		mv	.d1	A10, A4
		mvk	.d1	0, A3
		mvklh	.s1	32768, A3
		xor	.d1	A3, A11, A5
		b	.s2	.L494
		nop	5
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
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
		mv	.d1	A6, A11
		mv	.l1x	B6, A0
		sub	.l1x	B4, A0, A12
		add	.d1	A4, A12, A12
	[!A0]	b	.s2	.L509
		nop	5
		cmpgtu	.l1x	A0, B4, A1
	[A1]	mvk	.d1	0, A4
	[A1]	b	.s2	.L509
		nop	5
		mv	.d1	A4, A10
		add	.d1	A6, 1, A14
		sub	.d1	A0, 1, A15
.L510:
		mv	.d1	A10, A13
		cmpltu	.l1	A12, A10, A2
	[A2]	b	.s2	.L516
		nop	5
		ldb	.d1t1	*A10++[1], A4
		nop	4
		ldb	.d1t1	*A11, A3
		nop	4
		cmpeq	.l1	A3, A4, A0
	[!A0]	b	.s2	.L510
		nop	5
		mv	.d1	A15, A6
		mv	.l2x	A14, B4
		mv	.d1	A10, A4
		callp	.s2	(memcmp), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L510
		nop	5
		mv	.d1	A13, A4
		b	.s2	.L509
		nop	5
.L516:
		mvk	.d1	0, A4
.L509:
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
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A6, A10
		callp	.s2	(memcpy), B3
		add	.d1	A4, A10, A4
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
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
		mv	.d2	B4, B11
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	mvk	.d2	0, B12
	[A0]	b	.s2	.L538
		nop	5
.L521:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16368, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L539
		nop	5
		mvk	.d2	0, B10
		mvk	.d1	0, A12
		mvk	.d1	0, A13
		mvklh	.s1	16368, A13
		mvk	.d1	0, A14
		mvk	.d1	0, A15
		mvklh	.s1	16352, A15
		b	.s2	.L523
		nop	5
.L538:
		mv	.d1	A10, A0
		mvk	.d1	0, A3
		mvklh	.s1	32768, A3
		xor	.d1	A3, A11, A1
		dmv	.s1	A1, A0, A11:A10
		mvk	.d2	1, B12
		b	.s2	.L521
		nop	5
.L525:
		add	.d2	B10, 1, B10
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A11:A10
.L523:
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L525
		nop	5
.L526:
		stw	.d2t2	B10, *B11
		mv	.l1x	B12, A2
	[!A2]	b	.s2	.L531
		nop	5
		mv	.d1	A10, A0
		mvk	.d1	0, A6
		mvklh	.s1	32768, A6
		xor	.d1	A6, A11, A1
		dmv	.s1	A1, A0, A11:A10
.L531:
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
.L539:
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
		cmpeq	.l1	0, A4, A5
		and	.d1	A12, A5, A2
	[!A2]	mvk	.d2	0, B10
	[!A2]	b	.s2	.L526
		nop	5
		mvk	.d2	0, B10
		mvk	.d1	0, A14
		mvk	.d1	0, A13
		mvklh	.s1	16352, A13
		b	.s2	.L529
		nop	5
.L530:
		sub	.d2	B10, 1, B10
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		dmv	.s1	A5, A4, A11:A10
.L529:
		mv	.l2x	A14, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L530
		nop	5
		b	.s2	.L526
		nop	5
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
		dmv	.s1	A5, A4, A1:A0
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		b	.s2	.L549
		nop	5
.L551:
		and	.d1	1, A0, A2
	[A2]	addu	.l1x	A4, B4, A7:A6
	[A2]	add	.d1	A7, A5, A7
	[A2]	add	.d1x	A7, B5, A7
	[A2]	dmv	.s1	A7, A6, A5:A4
		addu	.l2	B4, B4, B7:B6
		mv	.l1x	B6, A6
		mv	.l1x	B7, A7
		add	.d1x	A7, B5, A3
		add	.d1x	A3, B5, A7
		mv	.d2	B6, B4
		mv	.l2x	A7, B5
		shl	.s1	A1, 31, A9
		shru	.s1	A0, 1, A8
		or	.d1	A8, A9, A8
		shru	.s1	A1, 1, A9
		dmv	.s1	A9, A8, A1:A0
.L549:
		or	.d1	A1, A0, A2
	[A2]	b	.s2	.L551
		nop	5
		ret	.s2	B3
		nop	5
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
		mv	.d1	A6, A2
		mvk	.d1	1, A0
		b	.s2	.L553
		nop	5
.L555:
		shl	.s2	B4, 1, B4
		shl	.s1	A0, 1, A0
.L553:
		cmpgtu	.l1x	A4, B4, A5
		cmpeq	.l1	0, A0, A3
		cmpeq	.l1	0, A3, A6
		and	.d1	A6, A5, A1
	[!A1]	b	.s2	.L560
		nop	5
		cmpgt	.l2	0, B4, B0
	[!B0]	b	.s2	.L555
		nop	5
		mvk	.d1	0, A7
		b	.s2	.L556
		nop	5
.L560:
		mvk	.d1	0, A7
.L556:
	[!A0]	b	.s2	.L562
		nop	5
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A1
	[!A1]	sub	.d1	A4, A8, A4
	[!A1]	or	.d1	A0, A7, A7
		shru	.s1	A0, 1, A0
		shru	.s2	B4, 1, B4
		b	.s2	.L556
		nop	5
.L562:
	[!A2]	mv	.d1	A7, A4
		ret	.s2	B3
		nop	5
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
		ext	.s1	A4, 24, 24, A3
		cmpgt	.l1	0, A3, A0
	[A0]	not	.l1	A4, A4
		ext	.s1	A4, 24, 24, A1
	[A1]	mv	.d1	A1, A4
	[A1]	shl	.s1	A4, 8, A4
	[A1]	lmbd	.l1	1, A4, A4
	[A1]	sub	.d1	A4, 1, A4
	[!A1]	mvk	.d1	7, A4
		ret	.s2	B3
		nop	5
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
		dmv	.s1	A5, A4, A1:A0
		cmpgt	.l1	0, A1, A2
	[A2]	mvk	.d1	0, A4
	[A2]	mvk	.d1	0, A5
	[A2]	not	.l1	A0, A4
	[A2]	not	.l1	A1, A5
	[A2]	dmv	.s1	A5, A4, A1:A0
		or	.d1	A1, A0, A2
	[!A2]	b	.s2	.L572
		nop	5
	[A1]	lmbd	.l1	1, A1, A4
	[!A1]	lmbd	.l1	1, A0, A4
	[!A1]	addah	.d1	A4, 16, A4
		sub	.d1	A4, 1, A4
.L569:
		ret	.s2	B3
		nop	5
.L572:
		mvk	.s1	63, A4
		b	.s2	.L569
		nop	5
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
		mv	.d1	A4, A0
		mvk	.d1	0, A4
		b	.s2	.L574
		nop	5
.L576:
		and	.d1	1, A0, A1
	[A1]	add	.d1x	A4, B4, A4
		shru	.s1	A0, 1, A0
		shl	.s2	B4, 1, B4
.L574:
	[A0]	b	.s2	.L576
		nop	5
		ret	.s2	B3
		nop	5
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
		mv	.d1	A6, A1
		shru	.s1	A6, 3, A0
		and	.d1	-8, A6, A19
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A2
	[!A2]	b	.s2	.L578
		nop	5
.L580:
		add	.l1x	-8, B4, A21
		sub	.d1	A4, 8, A20
		add	.d1	A0, 1, A2
		b	.s2	.L579
		nop	5
.L578:
		add	.d1x	A6, B4, A6
		cmpgtu	.l1	A4, A6, A2
	[!A2]	add	.d1	A1, 1, A0
	[!A2]	b	.s2	.L581
		nop	5
		b	.s2	.L580
		nop	5
.L582:
		lddw	.d1t1	*++A21[1], A23:A22
		nop	4
		stdw	.d1t1	A23:A22, *++A20[1]
.L579:
		sub	.d1	A2, 1, A2
	[A2]	b	.s2	.L582
		nop	5
		sub	.d1	A1, A19, A9
		add	.d1	A9, 1, A0
		cmpltu	.l1	A1, A19, A2
	[A2]	b	.s2	.L587
		nop	5
	[A1]	b	.s2	.L583
		nop	5
.L587:
		mvk	.d1	1, A0
		b	.s2	.L583
		nop	5
.L584:
		add	.d1x	A19, B4, A16
		ldb	.d1t1	*A16, A17
		nop	4
		add	.d1	A4, A19, A18
		stb	.d1t1	A17, *A18
		add	.d1	A19, 1, A19
.L583:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L584
		nop	5
.L577:
		ret	.s2	B3
		nop	5
.L586:
		add	.d1x	A1, B4, A3
		ldb	.d1t1	*A3, A7
		nop	4
		add	.d1	A4, A1, A8
		stb	.d1t1	A7, *A8
.L581:
		sub	.d1	A1, 1, A1
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L586
		nop	5
		b	.s2	.L577
		nop	5
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
		shru	.s1	A6, 1, A0
		mv	.l1x	B4, A3
		cmpgtu	.l1	A3, A4, A1
	[!A1]	b	.s2	.L589
		nop	5
.L591:
		add	.l1x	-2, B4, A18
		sub	.d1	A4, 2, A17
		add	.d1	A0, 1, A2
		b	.s2	.L590
		nop	5
.L589:
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A2
	[!A2]	add	.d1	A6, 1, A0
	[!A2]	b	.s2	.L592
		nop	5
		b	.s2	.L591
		nop	5
.L593:
		ldh	.d1t1	*++A18[1], A19
		nop	4
		sth	.d1t1	A19, *++A17[1]
.L590:
		sub	.d1	A2, 1, A2
	[A2]	b	.s2	.L593
		nop	5
		and	.d1	1, A6, A1
	[!A1]	b	.s2	.L588
		nop	5
		sub	.d1	A6, 1, A6
		add	.d2x	B4, A6, B4
		add	.d1	A4, A6, A4
		ldb	.d2t1	*B4, A16
		nop	4
		stb	.d1t1	A16, *A4
.L588:
		ret	.s2	B3
		nop	5
.L595:
		add	.d1x	A6, B4, A7
		ldb	.d1t1	*A7, A8
		nop	4
		add	.d1	A4, A6, A9
		stb	.d1t1	A8, *A9
.L592:
		sub	.d1	A6, 1, A6
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L595
		nop	5
		b	.s2	.L588
		nop	5
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
		mv	.d1	A6, A1
		shru	.s1	A6, 2, A0
		and	.d1	-4, A6, A19
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A2
	[!A2]	b	.s2	.L597
		nop	5
.L599:
		add	.l1x	-4, B4, A21
		sub	.d1	A4, 4, A20
		add	.d1	A0, 1, A2
		b	.s2	.L598
		nop	5
.L597:
		add	.d1x	A6, B4, A6
		cmpgtu	.l1	A4, A6, A2
	[!A2]	add	.d1	A1, 1, A0
	[!A2]	b	.s2	.L600
		nop	5
		b	.s2	.L599
		nop	5
.L601:
		ldw	.d1t1	*++A21[1], A22
		nop	4
		stw	.d1t1	A22, *++A20[1]
.L598:
		sub	.d1	A2, 1, A2
	[A2]	b	.s2	.L601
		nop	5
		sub	.d1	A1, A19, A9
		add	.d1	A9, 1, A0
		cmpltu	.l1	A1, A19, A2
	[A2]	b	.s2	.L606
		nop	5
	[A1]	b	.s2	.L602
		nop	5
.L606:
		mvk	.d1	1, A0
		b	.s2	.L602
		nop	5
.L603:
		add	.d1x	A19, B4, A16
		ldb	.d1t1	*A16, A17
		nop	4
		add	.d1	A4, A19, A18
		stb	.d1t1	A17, *A18
		add	.d1	A19, 1, A19
.L602:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L603
		nop	5
.L596:
		ret	.s2	B3
		nop	5
.L605:
		add	.d1x	A1, B4, A3
		ldb	.d1t1	*A3, A7
		nop	4
		add	.d1	A4, A1, A8
		stb	.d1t1	A7, *A8
.L600:
		sub	.d1	A1, 1, A1
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L605
		nop	5
		b	.s2	.L596
		nop	5
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
		sub	.d2	B15, 8, B15
		stw	.d2t2	B3, *+B15(8)
		call	.s2	__c6xabi_remi
		addkpc	.s2	.L608, B3, 4
.L608:
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
		addkpc	.s2	.L618, B3, 4
.L618:
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
		mvk	.s1	17, A1
.L620:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L622
		nop	5
		b	.s2	.L621
		nop	5
.L622:
		sub	.l1	15, A3, A5
		shr	.s1	A4, A5, A6
		and	.d1	1, A6, A0
	[A0]	b	.s2	.L621
		nop	5
		add	.d1	A3, 1, A3
		b	.s2	.L620
		nop	5
.L621:
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
		mvk	.s1	17, A1
.L624:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L626
		nop	5
		b	.s2	.L625
		nop	5
.L626:
		shr	.s1	A4, A3, A5
		and	.d1	1, A5, A0
	[A0]	b	.s2	.L625
		nop	5
		add	.d1	A3, 1, A3
		b	.s2	.L624
		nop	5
.L625:
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
	[A0]	b	.s2	.L633
		nop	5
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_fixfi), B3
.L630:
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
.L633:
		mvk	.d2	0, B4
		mvklh	.s2	18176, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_subf), B3
		callp	.s2	(__c6xabi_fixfi), B3
		mvk	.s1	-32768, A3
		mvklh	.s1	0, A3
		add	.d1	A4, A3, A4
		b	.s2	.L630
		nop	5
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
		mvk	.d1	0, A6
		mvk	.d1	0, A3
		extu	.s1	A4, 16, 16, A4
		mvk	.s1	17, A1
		b	.s2	.L639
		nop	5
.L641:
		shr	.s1	A4, A3, A5
		and	.d1	1, A5, A0
	[A0]	add	.d1	A6, 1, A6
		add	.d1	A3, 1, A3
.L639:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L641
		nop	5
		and	.d1	1, A6, A4
		ret	.s2	B3
		nop	5
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
		mv	.d1	A4, A5
		mvk	.d1	0, A4
		mvk	.d1	0, A3
		extu	.s1	A5, 16, 16, A6
		mvk	.s1	17, A1
		b	.s2	.L643
		nop	5
.L645:
		shr	.s1	A6, A3, A7
		and	.d1	1, A7, A0
	[A0]	add	.d1	A4, 1, A4
		add	.d1	A3, 1, A3
.L643:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L645
		nop	5
		ret	.s2	B3
		nop	5
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
		mv	.d1	A4, A0
		mvk	.d1	0, A4
		b	.s2	.L647
		nop	5
.L649:
		and	.d1	1, A0, A1
	[A1]	add	.d1x	A4, B4, A4
		shru	.s1	A0, 1, A0
		shl	.s2	B4, 1, B4
.L647:
	[A0]	b	.s2	.L649
		nop	5
		ret	.s2	B3
		nop	5
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
		mv	.d1	A4, A1
		mv	.l1x	B4, A0
	[A1]	mvk	.d1	0, A4
	[A1]	b	.s2	.L652
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L651
		nop	5
.L654:
		and	.d1	1, A0, A2
	[A2]	add	.d1	A4, A1, A4
		shl	.s1	A1, 1, A1
		shru	.s1	A0, 1, A0
.L652:
	[A0]	b	.s2	.L654
		nop	5
.L651:
		ret	.s2	B3
		nop	5
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
		mv	.d1	A6, A2
		mvk	.d1	1, A0
		b	.s2	.L657
		nop	5
.L659:
		shl	.s2	B4, 1, B4
		shl	.s1	A0, 1, A0
.L657:
		cmpgtu	.l1x	A4, B4, A5
		cmpeq	.l1	0, A0, A3
		cmpeq	.l1	0, A3, A6
		and	.d1	A6, A5, A1
	[!A1]	b	.s2	.L664
		nop	5
		cmpgt	.l2	0, B4, B0
	[!B0]	b	.s2	.L659
		nop	5
		mvk	.d1	0, A7
		b	.s2	.L660
		nop	5
.L664:
		mvk	.d1	0, A7
.L660:
	[!A0]	b	.s2	.L666
		nop	5
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A1
	[!A1]	sub	.d1	A4, A8, A4
	[!A1]	or	.d1	A0, A7, A7
		shru	.s1	A0, 1, A0
		shru	.s2	B4, 1, B4
		b	.s2	.L660
		nop	5
.L666:
	[!A2]	mv	.d1	A7, A4
		ret	.s2	B3
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
	[A0]	b	.s2	.L668
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_gtf), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L668:
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
	[A0]	b	.s2	.L674
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L674:
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
		mv	.d1	A4, A6
		shr	.s1	A4, 31, A3
		mv	.l1x	B4, A4
		shr	.s1x	B4, 31, A5
		mpy32	.m1	A3, A4, A7
		nop	3
		mpy32	.m1	A5, A6, A8
		nop	3
		add	.d1	A7, A8, A9
		mpy32u	.m1	A6, A4, A5:A4
		nop	3
		add	.d1	A9, A5, A5
		ret	.s2	B3
		nop	5
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
		mv	.d1	A4, A6
		mv	.l1x	B4, A4
		mpy32u	.m1	A6, A4, A5:A4
		nop	3
		ret	.s2	B3
		nop	5
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
		cmpgt	.l1x	0, B4, A0
	[A0]	neg	.l2	B4, B4
	[A0]	mvk	.d1	1, A1
	[!A0]	mvk	.d1	0, A1
		mvk	.d1	0, A6
		mvk	.d1	0, A5
		mvk	.s1	31, A7
		b	.s2	.L683
		nop	5
.L685:
		and	.d1x	1, B4, A0
	[A0]	add	.d1	A6, A4, A6
		shl	.s1	A4, 1, A4
		shr	.s2	B4, 1, B4
		add	.d1	A5, 1, A5
.L683:
		cmpeq	.l1x	0, B4, A3
		cmpeq	.l1	0, A3, A8
		extu	.s1	A5, 24, 24, A9
		cmpltu	.l1	A7, A9, A16
		cmpeq	.l1	0, A16, A17
		and	.d1	A17, A8, A2
	[A2]	b	.s2	.L685
		nop	5
	[A1]	neg	.l1	A6, A4
	[!A1]	mv	.d1	A6, A4
		ret	.s2	B3
		nop	5
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		cmpgt	.l1	0, A4, A0
	[A0]	neg	.l1	A4, A4
	[A0]	mvk	.d1	1, A10
	[!A0]	mvk	.d1	0, A10
		cmpgt	.l1x	0, B4, A1
	[A1]	neg	.l2	B4, B4
	[A1]	xor	.d1	1, A10, A10
		mvk	.d1	0, A6
		callp	.s2	(__udivmodsi4), B3
		mv	.d1	A10, A2
	[A2]	neg	.l1	A4, A4
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		stw	.d2t1	A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		cmpgt	.l1	0, A4, A0
	[A0]	neg	.l1	A4, A4
	[A0]	mvk	.d1	1, A10
	[!A0]	mvk	.d1	0, A10
		shr	.s2	B4, 31, B5
		xor	.d2	B5, B4, B4
		mvk	.d1	1, A6
		sub	.d2	B4, B5, B4
		callp	.s2	(__udivmodsi4), B3
		mv	.d1	A10, A1
	[A1]	neg	.l1	A4, A4
		ldw	.d2t1	*+B15(8), A10
		nop	4
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
		mv	.d1	A6, A2
		mvk	.d1	1, A22
		extu	.s1	A4, 16, 16, A23
		b	.s2	.L702
		nop	5
.L704:
		shl	.s2	B4, 1, B4
		shl	.s1	A22, 1, A22
.L702:
		mv	.l1x	B4, A3
		extu	.s1	A3, 16, 16, A6
		cmpgtu	.l1	A23, A6, A7
		extu	.s1	A22, 16, 16, A8
		cmpeq	.l1	0, A8, A9
		cmpeq	.l1	0, A9, A16
		and	.d1	A16, A7, A1
	[!A1]	b	.s2	.L709
		nop	5
		ext	.s1	A3, 16, 16, A18
		cmpgt	.l2x	0, A18, B0
	[!B0]	b	.s2	.L704
		nop	5
		mvk	.d1	0, A5
		b	.s2	.L705
		nop	5
.L709:
		mvk	.d1	0, A5
.L705:
		extu	.s1	A22, 16, 16, A1
	[!A1]	b	.s2	.L711
		nop	5
		extu	.s1	A4, 16, 16, A19
		mv	.l1x	B4, A20
		extu	.s1	A20, 16, 16, A21
		cmpgtu	.l1	A21, A19, A1
	[!A1]	mv	.l1x	B4, A21
	[!A1]	sub	.d1	A4, A21, A4
	[!A1]	or	.d1	A22, A5, A5
		extu	.s1	A22, 16, 17, A22
		extu	.s2	B4, 16, 17, B4
		b	.s2	.L705
		nop	5
.L711:
	[!A2]	mv	.d1	A5, A4
		ret	.s2	B3
		nop	5
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
		mv	.d1	A6, A2
		mvk	.d1	1, A0
		b	.s2	.L713
		nop	5
.L715:
		shl	.s2	B4, 1, B4
		shl	.s1	A0, 1, A0
.L713:
		cmpgtu	.l1x	A4, B4, A5
		cmpeq	.l1	0, A0, A3
		cmpeq	.l1	0, A3, A6
		and	.d1	A6, A5, A1
	[!A1]	b	.s2	.L720
		nop	5
		cmpgt	.l2	0, B4, B0
	[!B0]	b	.s2	.L715
		nop	5
		mvk	.d1	0, A7
		b	.s2	.L716
		nop	5
.L720:
		mvk	.d1	0, A7
.L716:
	[!A0]	b	.s2	.L722
		nop	5
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A1
	[!A1]	sub	.d1	A4, A8, A4
	[!A1]	or	.d1	A0, A7, A7
		shru	.s1	A0, 1, A0
		shru	.s2	B4, 1, B4
		b	.s2	.L716
		nop	5
.L722:
	[!A2]	mv	.d1	A7, A4
		ret	.s2	B3
		nop	5
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
		mvk	.s1	32, A3
		and	.d1x	A3, B4, A0
	[!A0]	b	.s2	.L724
		nop	5
		mvk	.d1	0, A0
		subah	.d2	B4, 16, B4
		mv	.l1x	B4, A17
		shl	.s1	A4, A17, A1
.L725:
		dmv	.s1	A1, A0, A5:A4
.L726:
		ret	.s2	B3
		nop	5
.L724:
		mv	.l1x	B4, A1
	[!A1]	b	.s2	.L726
		nop	5
		shl	.s1	A4, A1, A0
		shl	.s1	A5, A1, A8
		mvk	.s1	32, A5
		sub	.d1	A5, A1, A9
		shru	.s1	A4, A9, A16
		or	.d1	A8, A16, A1
		b	.s2	.L725
		nop	5
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
		mvk	.s1	32, A3
		and	.d1x	A3, B4, A0
	[!A0]	b	.s2	.L729
		nop	5
		shr	.s1	A5, 31, A7
		subah	.d2	B4, 16, B4
		mv	.l1x	B4, A19
		shr	.s1	A5, A19, A6
.L730:
		dmv	.s1	A7, A6, A5:A4
.L731:
		ret	.s2	B3
		nop	5
.L729:
		mv	.l1x	B4, A1
	[!A1]	b	.s2	.L731
		nop	5
		shr	.s1	A5, A1, A7
		mvk	.s1	32, A9
		sub	.d1	A9, A1, A16
		shl	.s1	A5, A16, A17
		shru	.s1	A4, A1, A4
		or	.d1	A4, A17, A6
		b	.s2	.L730
		nop	5
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
		shru	.s1	A5, 24, A26
		shru	.s1	A5, 8, A3
		mvk	.s1	-256, A24
		mvklh	.s1	0, A24
		and	.d1	A24, A3, A22
		shl	.s1	A5, 8, A6
		shru	.s1	A4, 24, A7
		or	.d1	A7, A6, A8
		mvk	.d1	0, A23
		mvklh	.s1	255, A23
		and	.d1	A23, A8, A20
		shl	.s1	A5, 24, A9
		shru	.s1	A4, 8, A16
		or	.d1	A16, A9, A17
		clr	.s1	A17, 0, 23, A18
		shlmb	.l1	A4, A5, A5
		shl	.s1	A4, 8, A19
		mvk	.d1	0, A21
		extu	.s1	A5, 24, 24, A27
		shru	.s1	A4, 8, A25
		or	.d1	A9, A25, A29
		shl	.s1	A4, 24, A30
		mvk	.d1	0, A31
		and	.d1	A24, A29, A3
		mvk	.d1	0, A2
		and	.d1	A23, A19, A6
		or	.d1	A22, A26, A22
		or	.d1	A20, A22, A23
		or	.d1	A18, A23, A9
		or	.d1	A21, A9, A17
		or	.d1	A27, A30, A18
		or	.d1	A31, A17, A19
		or	.d1	A3, A18, A21
		or	.d1	A2, A19, A4
		or	.d1	A6, A21, A5
		ret	.s2	B3
		nop	5
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
		shru	.s1	A4, 24, A5
		shru	.s1	A4, 8, A3
		mvk	.s1	-256, A6
		mvklh	.s1	0, A6
		and	.d1	A6, A3, A7
		shl	.s1	A4, 8, A8
		mvk	.d1	0, A9
		mvklh	.s1	255, A9
		and	.d1	A9, A8, A16
		shl	.s1	A4, 24, A4
		or	.d1	A5, A4, A17
		or	.d1	A7, A17, A18
		or	.d1	A16, A18, A4
		ret	.s2	B3
		nop	5
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
		mvk	.d1	-1, A5
		mvklh	.s1	0, A5
		cmpltu	.l1	A5, A4, A0
	[!A0]	mvk	.s1	16, A3
	[A0]	mvk	.d1	0, A3
		mvk	.s1	16, A6
		sub	.d1	A6, A3, A7
		shru	.s1	A4, A7, A4
		mvk	.s1	-256, A8
		mvklh	.s1	0, A8
		and	.d1	A8, A4, A1
	[A1]	b	.s2	.L741
		nop	5
		mvk	.d1	8, A9
.L737:
		sub	.l1	8, A9, A16
		shru	.s1	A4, A16, A17
		add	.d1	A3, A9, A3
		mvk	.s1	240, A18
		and	.d1	A18, A17, A2
	[A2]	b	.s2	.L742
		nop	5
		mvk	.d1	4, A19
.L738:
		sub	.l1	4, A19, A20
		shru	.s1	A17, A20, A21
		add	.d1	A3, A19, A22
		and	.d1	12, A21, A0
	[A0]	b	.s2	.L743
		nop	5
		mvk	.d1	2, A23
.L739:
		sub	.l1	2, A23, A24
		shru	.s1	A21, A24, A25
		add	.d1	A22, A23, A26
		and	.d1	2, A25, A27
		cmpeq	.l1	0, A27, A28
		sub	.l1	2, A25, A29
		mpy32	.m1	A28, A29, A30
		nop	3
		add	.d1	A26, A30, A4
		ret	.s2	B3
		nop	5
.L741:
		mvk	.d1	0, A9
		b	.s2	.L737
		nop	5
.L742:
		mvk	.d1	0, A19
		b	.s2	.L738
		nop	5
.L743:
		mvk	.d1	0, A23
		b	.s2	.L739
		nop	5
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
		mv	.l1x	B5, A3
		cmpgt	.l1	A3, A5, A0
	[A0]	mvk	.d1	0, A4
	[A0]	b	.s2	.L745
		nop	5
		cmplt	.l1	A3, A5, A1
	[A1]	mvk	.d1	2, A4
	[A1]	b	.s2	.L745
		nop	5
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A2
	[A2]	mvk	.d1	0, A4
	[A2]	b	.s2	.L745
		nop	5
		cmpltu	.l1	A8, A4, A0
	[!A0]	mvk	.d1	1, A4
	[A0]	mvk	.d1	2, A4
.L745:
		ret	.s2	B3
		nop	5
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__cmpdi2), B3
		sub	.d1	A4, 1, A4
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
		clr	.s1	A4, 16, 31, A0
	[!A0]	mvk	.s1	16, A3
	[A0]	mvk	.d1	0, A3
		shru	.s1	A4, A3, A4
		extu	.s1	A4, 24, 24, A1
	[A1]	b	.s2	.L758
		nop	5
		mvk	.d1	8, A5
.L754:
		shru	.s1	A4, A5, A6
		add	.d1	A3, A5, A3
		and	.d1	15, A6, A2
	[A2]	b	.s2	.L759
		nop	5
		mvk	.d1	4, A7
.L755:
		shru	.s1	A6, A7, A8
		add	.d1	A3, A7, A9
		and	.d1	3, A8, A0
	[A0]	b	.s2	.L760
		nop	5
		mvk	.d1	2, A16
.L756:
		shru	.s1	A8, A16, A17
		and	.d1	3, A17, A18
		add	.d1	A9, A16, A19
		not	.l1	A18, A20
		and	.d1	1, A20, A21
		shru	.s1	A18, 1, A22
		sub	.l1	2, A22, A23
		neg	.l1	A21, A24
		and	.d1	A24, A23, A25
		add	.d1	A19, A25, A4
		ret	.s2	B3
		nop	5
.L758:
		mvk	.d1	0, A5
		b	.s2	.L754
		nop	5
.L759:
		mvk	.d1	0, A7
		b	.s2	.L755
		nop	5
.L760:
		mvk	.d1	0, A16
		b	.s2	.L756
		nop	5
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
		mvk	.s1	32, A3
		and	.d1x	A3, B4, A0
	[!A0]	b	.s2	.L762
		nop	5
		mvk	.d1	0, A7
		subah	.d2	B4, 16, B4
		mv	.l1x	B4, A19
		shru	.s1	A5, A19, A6
.L763:
		dmv	.s1	A7, A6, A5:A4
.L764:
		ret	.s2	B3
		nop	5
.L762:
		mv	.l1x	B4, A1
	[!A1]	b	.s2	.L764
		nop	5
		shru	.s1	A5, A1, A7
		mvk	.s1	32, A9
		sub	.d1	A9, A1, A16
		shl	.s1	A5, A16, A17
		shru	.s1	A4, A1, A4
		or	.d1	A4, A17, A6
		b	.s2	.L763
		nop	5
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
		mv	.d1	A4, A3
		clr	.s1	A4, 16, 31, A7
		mv	.l1x	B4, A4
		clr	.s1	A4, 16, 31, A8
		mpy32	.m1	A7, A8, A6
		nop	3
		shru	.s1	A6, 16, A5
		clr	.s1	A6, 16, 31, A9
		shru	.s1	A3, 16, A16
		mpy32	.m1	A16, A8, A17
		nop	3
		add	.d1	A5, A17, A18
		shl	.s1	A18, 16, A19
		add	.d1	A19, A9, A6
		shru	.s1	A18, 16, A20
		shru	.s1	A6, 16, A21
		clr	.s1	A6, 16, 31, A22
		shru	.s2	B4, 16, B4
		mpy32	.m1x	A7, B4, A23
		nop	3
		add	.d1	A21, A23, A24
		shl	.s1	A24, 16, A25
		add	.d1	A25, A22, A4
		shru	.s1	A24, 16, A27
		add	.d1	A27, A20, A28
		mpy32	.m1x	A16, B4, A29
		nop	3
		add	.d1	A29, A28, A5
		ret	.s2	B3
		nop	5
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stdw	.d2t2	B11:B10, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		dmv	.s2	B5, B4, B11:B10
		callp	.s2	(__muldsi3), B3
		dmv	.s1	A5, A4, A1:A0
		dmv	.s1	A1, A0, A5:A4
		mpy32	.m1x	A11, B10, A5
		nop	3
		mpy32	.m1x	A10, B11, A10
		nop	3
		add	.d1	A5, A10, A6
		add	.d1	A6, A1, A5
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		lddw	.d2t2	*+B15(24), B11:B10
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
		dmv	.s1	A5, A4, A1:A0
		neg	.l1	A4, A4
		cmpltu	.l1	0, A4, A3
		neg	.l1	A1, A5
		sub	.d1	A5, A3, A5
		ret	.s2	B3
		nop	5
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
		xor	.d1	A4, A5, A4
		shru	.s1	A4, 16, A5
		xor	.d1	A5, A4, A6
		shru	.s1	A6, 8, A7
		xor	.d1	A7, A6, A8
		shru	.s1	A8, 4, A9
		xor	.d1	A9, A8, A16
		and	.d1	15, A16, A17
		mvk	.s1	27030, A18
		shr	.s1	A18, A17, A19
		and	.d1	1, A19, A4
		ret	.s2	B3
		nop	5
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
		shru	.s1	A4, 16, A3
		xor	.d1	A4, A3, A4
		shru	.s1	A4, 8, A5
		xor	.d1	A5, A4, A6
		shru	.s1	A6, 4, A7
		xor	.d1	A7, A6, A8
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
		shl	.s1	A5, 31, A3
		shru	.s1	A4, 1, A6
		or	.d1	A6, A3, A8
		shru	.s1	A5, 1, A9
		mvk	.s1	21845, A16
		mvklh	.s1	21845, A16
		and	.d1	A16, A8, A17
		and	.d1	A16, A9, A7
		sub	.d1	A4, A17, A18
		cmpltu	.l1	A4, A18, A4
		sub	.d1	A5, A7, A5
		sub	.d1	A5, A4, A19
		shl	.s1	A19, 30, A20
		shru	.s1	A18, 2, A21
		or	.d1	A21, A20, A22
		shru	.s1	A19, 2, A23
		mvk	.s1	13107, A24
		mvklh	.s1	13107, A24
		and	.d1	A24, A22, A25
		and	.d1	A24, A23, A26
		and	.d1	A24, A18, A27
		and	.d1	A24, A19, A28
		addu	.l1	A25, A27, A1:A0
		add	.d1	A1, A26, A29
		add	.d1	A29, A28, A30
		shl	.s1	A30, 28, A31
		shru	.s1	A0, 4, A3
		or	.d1	A3, A31, A1
		shru	.s1	A30, 4, A6
		addu	.l1	A1, A0, A5:A4
		add	.d1	A5, A6, A8
		add	.d1	A8, A30, A9
		mvk	.s1	3855, A16
		mvklh	.s1	3855, A16
		and	.d1	A16, A4, A17
		and	.d1	A16, A9, A7
		add	.d1	A7, A17, A2
		shru	.s1	A2, 16, A4
		add	.d1	A2, A4, A5
		shru	.s1	A5, 8, A19
		add	.d1	A19, A5, A20
		clr	.s1	A20, 7, 31, A4
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
		add	.d1	A21, A22, A23
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
		mv	.l1x	B4, A10
		shru	.s1	A10, 31, A11
		mvk	.d1	0, A14
		mvk	.d1	0, A15
		mvklh	.s1	16368, A15
		b	.s2	.L777
		nop	5
.L775:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L776
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A13:A12
.L777:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L775
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A15, A14, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A15:A14
		b	.s2	.L775
		nop	5
.L776:
		mv	.d1	A11, A2
	[!A2]	dmv	.s1	A15, A14, A5:A4
	[!A2]	b	.s2	.L778
		nop	5
		mv	.l2x	A14, B4
		mv	.l2x	A15, B5
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16368, A5
		callp	.s2	(__c6xabi_divd), B3
.L778:
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
		mv	.l1x	B4, A10
		shru	.s1	A10, 31, A13
		mvk	.d1	0, A12
		mvklh	.s1	16256, A12
		b	.s2	.L786
		nop	5
.L784:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L785
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A11
.L786:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L784
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A12
		b	.s2	.L784
		nop	5
.L785:
		mv	.d1	A13, A2
	[!A2]	mv	.d1	A12, A4
	[!A2]	b	.s2	.L787
		nop	5
		mv	.l2x	A12, B4
		mvk	.d1	0, A4
		mvklh	.s1	16256, A4
		callp	.s2	(__c6xabi_divf), B3
.L787:
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
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
		mv	.l1x	B5, A3
		cmpgtu	.l1	A3, A5, A0
	[A0]	mvk	.d1	0, A4
	[A0]	b	.s2	.L793
		nop	5
		cmpltu	.l1	A3, A5, A1
	[A1]	mvk	.d1	2, A4
	[A1]	b	.s2	.L793
		nop	5
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A2
	[A2]	mvk	.d1	0, A4
	[A2]	b	.s2	.L793
		nop	5
		cmpltu	.l1	A8, A4, A0
	[!A0]	mvk	.d1	1, A4
	[A0]	mvk	.d1	2, A4
.L793:
		ret	.s2	B3
		nop	5
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		stw	.d2t2	B3, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__ucmpdi2), B3
		sub	.d1	A4, 1, A4
		ldw	.d2t2	*+B15(12), B3
		nop	4
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	".far","aw",@nobits
	.type	s.0, @object
	.size	s.0, 7
	.align	3
s.0:
	.zero	7
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
