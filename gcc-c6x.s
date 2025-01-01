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
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		b	.s2	.L5
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
.L5:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		extu	.s2	B4, 24, 24, B4
		sub	.d1	A6, 1, A3
		add	.d1	A6, 1, A1
		b	.s2	.L33
		nop	5
.L35:
		add	.d1	A4, A3, A5
		ldbu	.d1t1	*A5, A6
		nop	4
		sub	.d1	A3, 1, A7
		cmpeq	.l1x	A6, B4, A0
	[!A0]	b	.s2	.L36
		nop	5
		add	.d1	A4, A3, A4
		b	.s2	.L34
		nop	5
.L36:
		mv	.d1	A7, A3
.L33:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L35
		nop	5
		mvk	.d1	0, A4
.L34:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A3
		add	.d1	A6, 1, A0
		b	.s2	.L38
		nop	5
.L39:
		stb	.d1t2	B4, *A3++[1]
.L38:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L39
		nop	5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B4, 1, B4
		mv	.d1	A4, A3
.L41:
		mv	.d1	A3, A4
		ldb	.d2t1	*++B4[1], A5
		nop	4
		stb	.d1t1	A5, *A3++[1]
		ext	.s1	A5, 24, 24, A0
	[A0]	b	.s2	.L41
		nop	5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		extu	.s2	B4, 24, 24, B4
		mv	.d1	A4, A3
.L45:
		mv	.d1	A3, A4
		ldb	.d1t1	*A3++[1], A1
		nop	4
	[!A1]	b	.s2	.L44
		nop	5
		ldbu	.d1t1	*-A3(1), A5
		nop	4
		cmpeq	.l1x	A5, B4, A0
	[!A0]	b	.s2	.L45
		nop	5
.L44:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
.L49:
		mv	.d1	A4, A3
		ldb	.d1t1	*A4++[1], A5
		nop	4
		cmpeq	.l1x	A5, B4, A0
	[A0]	b	.s2	.L50
		nop	5
		ldb	.d1t1	*-A4(1), A1
		nop	4
	[A1]	b	.s2	.L49
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L48
		nop	5
.L50:
		mv	.d1	A3, A4
.L48:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
.L54:
		mv	.l1x	B4, A5
		mv	.d1	A4, A6
		ldb	.d1t1	*A4++[1], A7
		nop	4
		ldb	.d2t1	*B4++[1], A3
		nop	4
		cmpeq	.l1	A3, A7, A0
	[!A0]	b	.s2	.L53
		nop	5
		ldb	.d1t1	*-A4(1), A1
		nop	4
	[A1]	b	.s2	.L54
		nop	5
.L53:
		ldbu	.d1t1	*A6, A4
		nop	4
		ldbu	.d1t1	*A5, A8
		nop	4
		sub	.d1	A4, A8, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A5
.L57:
		mv	.d1	A5, A3
		ldb	.d1t1	*A5++[1], A1
		nop	4
	[A1]	b	.s2	.L57
		nop	5
		sub	.d1	A3, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A6, A1
	[!A1]	mvk	.d1	0, A4
	[!A1]	b	.s2	.L60
		nop	5
		mv	.d1	A4, A5
.L62:
		mv	.l1x	B4, A6
		mv	.d1	A5, A7
		ldbu	.d1t1	*A5++[1], A0
		nop	4
	[!A0]	b	.s2	.L61
		nop	5
		add	.d1	A4, A1, A3
		cmpeq	.l1	A5, A3, A8
		cmpeq	.l1	0, A8, A9
		ldbu	.d2t1	*B4, A16
		nop	4
		cmpeq	.l1	0, A16, A17
		cmpeq	.l1	0, A17, A18
		and	.d1	A18, A9, A2
	[!A2]	b	.s2	.L61
		nop	5
		ldbu	.d1t1	*-A5(1), A19
		nop	4
		ldbu	.d2t1	*B4++[1], A20
		nop	4
		cmpeq	.l1	A20, A19, A0
	[A0]	b	.s2	.L62
		nop	5
.L61:
		ldbu	.d1t1	*A7, A4
		nop	4
		ldbu	.d1t1	*A6, A21
		nop	4
		sub	.d1	A4, A21, A4
.L60:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		shru	.s1	A6, 1, A3
		add	.d1	A3, 1, A0
		cmpgt	.l1	0, A6, A1
	[A1]	mvk	.d1	1, A0
		b	.s2	.L66
		nop	5
.L67:
		ldb	.d1t1	*+A4(1), A5
		nop	4
		stb	.d2t1	A5, *B4
		ldb	.d1t1	*A4++(2), A6
		nop	4
		stb	.d2t1	A6, *+B4(1)
		add	.d2	B4, 2, B4
.L66:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L67
		nop	5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.type	isalpha, @function
isalpha:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		set	.s1	A4, 5, 5, A4
		addk	.s1	-97, A4
		cmpltu	.l1	25, A4, A3
		xor	.d1	1, A3, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.type	isascii, @function
isascii:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mvk	.s1	127, A3
		cmpltu	.l1	A3, A4, A4
		xor	.d1	1, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.type	isblank, @function
isblank:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		cmpeq	.l1	9, A4, A0
		mvk	.s1	32, A3
	[!A0]	cmpeq	.l1	A3, A4, A0
		mv	.d1	A0, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		cmpltu	.l1	31, A4, A3
		mvk	.s1	127, A5
		cmpeq	.l1	A5, A4, A0
	[!A0]	cmpeq	.l1	0, A3, A0
		mv	.d1	A0, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.type	isdigit, @function
isdigit:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A4
		xor	.d1	1, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.type	isgraph, @function
isgraph:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		addk	.s1	-33, A4
		mvk	.s1	93, A3
		cmpltu	.l1	A3, A4, A4
		xor	.d1	1, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.type	islower, @function
islower:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		addk	.s1	-97, A4
		cmpltu	.l1	25, A4, A4
		xor	.d1	1, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	islower, .-islower
	.align	2
	.global	isprint
	.type	isprint, @function
isprint:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d1	A4, 16, A4
		mvk	.s1	94, A3
		cmpltu	.l1	A3, A4, A4
		xor	.d1	1, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.type	isspace, @function
isspace:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mvk	.s1	32, A3
		cmpeq	.l1	A3, A4, A5
		sub	.d1	A4, 9, A4
		cmpltu	.l1	4, A4, A6
		cmpeq	.l1	0, A6, A7
		or	.d1	A7, A5, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.type	isupper, @function
isupper:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		addk	.s1	-65, A4
		cmpltu	.l1	25, A4, A4
		xor	.d1	1, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		cmpltu	.l1	31, A4, A3
		cmpeq	.l1	0, A3, A6
		mvk	.s1	-127, A5
		add	.d1	A4, A5, A7
		mvk	.s1	32, A8
		cmpltu	.l1	A8, A7, A9
		cmpeq	.l1	0, A9, A16
		or	.d1	A16, A6, A0
	[A0]	mvk	.d1	1, A4
	[A0]	b	.s2	.L80
		nop	5
		mvk	.s1	-8232, A17
		add	.d1	A4, A17, A18
		cmpltu	.l1	1, A18, A1
	[!A1]	mvk	.d1	1, A4
	[!A1]	b	.s2	.L80
		nop	5
		mvk	.d1	7, A19
		mvklh	.s1	65535, A19
		add	.d1	A4, A19, A4
		cmpltu	.l1	2, A4, A20
		cmpeq	.l1	0, A20, A4
.L80:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d1	A4, 24, A4
		cmpltu	.l1	9, A4, A4
		xor	.d1	1, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.type	iswprint, @function
iswprint:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mvk	.s1	254, A3
		cmpltu	.l1	A3, A4, A0
	[A0]	b	.s2	.L86
		nop	5
		add	.d1	A4, 1, A27
		clr	.s1	A27, 7, 31, A28
		mvk	.s1	32, A29
		cmpltu	.l1	A29, A28, A4
		b	.s2	.L87
		nop	5
.L86:
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
	[A1]	b	.s2	.L87
		nop	5
		mvk	.s1	8192, A19
		mvklh	.s1	65535, A19
		add	.d1	A4, A19, A20
		mvk	.s1	8184, A21
		cmpltu	.l1	A21, A20, A2
	[!A2]	mvk	.d1	1, A4
	[!A2]	b	.s2	.L87
		nop	5
		mvk	.d1	4, A22
		mvklh	.s1	65535, A22
		add	.d1	A4, A22, A23
		mvk	.d1	3, A24
		mvklh	.s1	16, A24
		cmpltu	.l1	A24, A23, A0
	[A0]	mvk	.d1	0, A4
	[A0]	b	.s2	.L87
		nop	5
		mvk	.d1	-2, A25
		mvklh	.s1	0, A25
		and	.d1	A25, A4, A4
		cmpeq	.l1	A25, A4, A26
		cmpeq	.l1	0, A26, A4
.L87:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d1	A4, 24, A3
		cmpltu	.l1	9, A3, A0
	[A0]	set	.s1	A4, 5, 5, A4
	[A0]	addk	.s1	-97, A4
	[A0]	cmpltu	.l1	5, A4, A4
	[A0]	cmpeq	.l1	0, A4, A4
	[!A0]	mvk	.d1	1, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.type	toascii, @function
toascii:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		clr	.s1	A4, 7, 31, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.type	fdim, @function
fdim:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
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
	[A0]	b	.s2	.L98
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L98
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A0
	[!A0]	mvk	.d1	0, A4
	[!A0]	mvk	.d1	0, A5
	[!A0]	b	.s2	.L98
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_subd), B3
.L98:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mv	.l1x	B4, A11
		mv	.l2x	A4, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	mv	.d1	A10, A4
	[A0]	b	.s2	.L110
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	mv	.d1	A11, A4
	[A1]	b	.s2	.L110
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A2
	[!A2]	mvk	.d1	0, A4
	[!A2]	b	.s2	.L110
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_subf), B3
.L110:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
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
	[A0]	b	.s2	.L122
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A11, A10, A5:A4
	[A0]	b	.s2	.L122
		nop	5
		clr	.s1	A11, 0, 30, A6
		clr	.s1	A13, 0, 30, A8
		cmpeq	.l1	A8, A6, A0
	[A0]	b	.s2	.L123
		nop	5
		clr	.s1	A11, 0, 30, A1
	[A1]	dmv	.s1	A13, A12, A5:A4
	[A1]	b	.s2	.L122
		nop	5
		b	.s2	.L131
		nop	5
.L123:
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L122
		nop	5
		b	.s2	.L132
		nop	5
.L131:
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L122
		nop	5
.L132:
		dmv	.s1	A11, A10, A5:A4
.L122:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mv	.l1x	B4, A11
		mv	.l2x	A4, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	mv	.d1	A11, A4
	[A0]	b	.s2	.L137
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	mv	.d1	A10, A4
	[A1]	b	.s2	.L137
		nop	5
		clr	.s1	A10, 0, 30, A5
		clr	.s1	A11, 0, 30, A3
		cmpeq	.l1	A3, A5, A2
	[A2]	b	.s2	.L138
		nop	5
		clr	.s1	A10, 0, 30, A1
	[A1]	mv	.d1	A11, A4
	[A1]	b	.s2	.L137
		nop	5
		b	.s2	.L146
		nop	5
.L138:
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[A0]	mv	.d1	A11, A4
	[A0]	b	.s2	.L137
		nop	5
		b	.s2	.L147
		nop	5
.L146:
		mv	.d1	A10, A4
		b	.s2	.L137
		nop	5
.L147:
		mv	.d1	A10, A4
.L137:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
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
		b	.s2	.L161
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
		b	.s2	.L162
		nop	5
.L161:
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L152
		nop	5
.L162:
		dmv	.s1	A11, A10, A5:A4
.L152:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
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
	[A0]	b	.s2	.L167
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L167
		nop	5
		clr	.s1	A13, 0, 30, A6
		clr	.s1	A11, 0, 30, A8
		cmpeq	.l1	A8, A6, A0
	[A0]	b	.s2	.L168
		nop	5
		clr	.s1	A13, 0, 30, A1
	[A1]	dmv	.s1	A13, A12, A5:A4
	[A1]	b	.s2	.L167
		nop	5
		b	.s2	.L176
		nop	5
.L168:
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L167
		nop	5
		b	.s2	.L177
		nop	5
.L176:
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L167
		nop	5
.L177:
		dmv	.s1	A11, A10, A5:A4
.L167:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A11
		mv	.l1x	B4, A10
		mv	.l2x	A4, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	mv	.d1	A10, A4
	[A0]	b	.s2	.L182
		nop	5
		mv	.l2x	A10, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	mv	.d1	A11, A4
	[A1]	b	.s2	.L182
		nop	5
		clr	.s1	A11, 0, 30, A5
		clr	.s1	A10, 0, 30, A3
		cmpeq	.l1	A3, A5, A2
	[A2]	b	.s2	.L183
		nop	5
		clr	.s1	A11, 0, 30, A1
	[A1]	mv	.d1	A11, A4
	[A1]	b	.s2	.L182
		nop	5
		b	.s2	.L191
		nop	5
.L183:
		mv	.l2x	A10, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[A0]	mv	.d1	A11, A4
	[A0]	b	.s2	.L182
		nop	5
		b	.s2	.L192
		nop	5
.L191:
		mv	.d1	A10, A4
		b	.s2	.L182
		nop	5
.L192:
		mv	.d1	A10, A4
.L182:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
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
	[A0]	b	.s2	.L197
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L197
		nop	5
		clr	.s1	A13, 0, 30, A6
		clr	.s1	A11, 0, 30, A8
		cmpeq	.l1	A8, A6, A0
	[A0]	b	.s2	.L198
		nop	5
		clr	.s1	A13, 0, 30, A1
	[A1]	dmv	.s1	A13, A12, A5:A4
	[A1]	b	.s2	.L197
		nop	5
		b	.s2	.L206
		nop	5
.L198:
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	dmv	.s1	A13, A12, A5:A4
	[A0]	b	.s2	.L197
		nop	5
		b	.s2	.L207
		nop	5
.L206:
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L197
		nop	5
.L207:
		dmv	.s1	A11, A10, A5:A4
.L197:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
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
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A0
		ldw	.d2t1	*+B14($GOT(s.0)), A4
		nop	4
		b	.s2	.L212
		nop	5
.L213:
		clr	.s1	A0, 6, 31, A5
		ldw	.d2t1	*+B14($GOT(digits)), A3
		nop	4
		add	.d1	A3, A5, A6
		ldb	.d1t1	*A6, A7
		nop	4
		stb	.d1t1	A7, *A4++[1]
		shru	.s1	A0, 6, A0
.L212:
	[A0]	b	.s2	.L213
		nop	5
		stb	.d1t1	A0, *A4
		ldw	.d2t1	*+B14($GOT(s.0)), A4
		nop	4
		ldw	.d2t2	*+B15(12), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
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
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		sub	.d1	A4, 1, A0
		mvk	.d1	0, A1
		addaw	.d1x	B14, (seed), A3
		stdw	.d1t1	A1:A0, *A3
		ldw	.d2t2	*+B15(12), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	srand, .-srand
	.align	2
	.global	rand
	.type	rand, @function
rand:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(12)
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
		ldw	.d2t2	*+B15(12), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.l1x	B4, A0
	[!A0]	stw	.d1t1	A0, *+A4(4)
	[!A0]	stw	.d1t1	A0, *A4
	[!A0]	b	.s2	.L216
		nop	5
		ldw	.d2t1	*B4, A3
		nop	4
		stw	.d1t1	A3, *A4
		stw	.d1t2	B4, *+A4(4)
		stw	.d2t1	A4, *B4
		ldw	.d1t1	*A4, A1
		nop	4
	[A1]	stw	.d1t1	A4, *+A1(4)
.L216:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d2	B15, 20, B15
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
		mv	.d2	B4, B11
		mv	.l2x	A6, B12
		mv	.l1x	B6, A12
		mv	.l2x	A8, B10
		ldw	.d1t1	*A6, A13
		nop	4
		mv	.l1x	B4, A11
		mvk	.d1	0, A10
		b	.s2	.L223
		nop	5
.L226:
		mv	.l2x	A11, B4
		mv	.d1	A14, A4
		call	.s2	B10
		addkpc	.s2	.L227, B3, 4
.L227:
		add	.d1	A11, A12, A11
		mv	.d1	A4, A1
	[A1]	b	.s2	.L224
		nop	5
		mpy32	.m1	A10, A12, A5
		nop	3
		add	.d1x	A5, B11, A4
		b	.s2	.L225
		nop	5
.L224:
		add	.d1	A10, 1, A10
.L223:
		cmpeq	.l1	A13, A10, A0
	[!A0]	b	.s2	.L226
		nop	5
		add	.d1	A13, 1, A3
		stw	.d2t1	A3, *B12
		mpy32	.m1	A12, A13, A4
		nop	3
		mv	.d1	A12, A6
		mv	.l2x	A14, B4
		add	.d1x	A4, B11, A4
		callp	.s2	(memcpy), B3
.L225:
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d2	B15, 20, B15
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
		mv	.d2	B4, B10
		mv	.l1x	B6, A12
		mv	.d1	A8, A13
		ldw	.d1t2	*A6, B11
		nop	4
		mv	.l1x	B4, A11
		mvk	.d1	0, A10
		b	.s2	.L230
		nop	5
.L233:
		mv	.l2x	A11, B4
		mv	.d1	A14, A4
		call	.s2x	A13
		addkpc	.s2	.L234, B3, 4
.L234:
		add	.d1	A11, A12, A11
		mv	.d1	A4, A1
	[A1]	b	.s2	.L231
		nop	5
		mpy32	.m1	A10, A12, A4
		nop	3
		add	.d1x	A4, B10, A4
		b	.s2	.L232
		nop	5
.L231:
		add	.d1	A10, 1, A10
.L230:
		mv	.l1x	B11, A3
		cmpeq	.l1	A3, A10, A0
	[!A0]	b	.s2	.L233
		nop	5
		mvk	.d1	0, A4
.L232:
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		shr	.s1	A4, 31, A3
		xor	.d1	A4, A3, A4
		sub	.d1	A4, A3, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A11
.L237:
		mv	.d1	A11, A10
		ldb	.d1t1	*A11++[1], A4
		nop	4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L237
		nop	5
		ldb	.d1t1	*A10, A3
		nop	4
		mvk	.s1	43, A4
		cmpeq	.l1	A4, A3, A2
	[A2]	b	.s2	.L243
		nop	5
		mvk	.s1	45, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	mvk	.d1	1, A1
	[A0]	b	.s2	.L238
		nop	5
		b	.s2	.L247
		nop	5
.L243:
		mvk	.d1	0, A1
.L238:
		add	.d1	A10, 1, A10
		b	.s2	.L239
		nop	5
.L247:
		mvk	.d1	0, A1
.L239:
		sub	.d1	A10, 1, A7
		mvk	.d1	0, A4
		b	.s2	.L240
		nop	5
.L241:
		shl	.s1	A4, 2, A8
		add	.d1	A8, A4, A9
		shl	.s1	A9, 1, A16
		ldb	.d1t1	*A7, A17
		nop	4
		subah	.d1	A17, 24, A17
		sub	.d1	A16, A17, A4
.L240:
		ldb	.d1t1	*++A7[1], A6
		nop	4
		subah	.d1	A6, 24, A6
		cmpltu	.l2x	9, A6, B0
	[!B0]	b	.s2	.L241
		nop	5
	[!A1]	neg	.l1	A4, A4
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A11
.L250:
		mv	.d1	A11, A10
		ldb	.d1t1	*A11++[1], A4
		nop	4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L250
		nop	5
		ldb	.d1t1	*A10, A3
		nop	4
		mvk	.s1	43, A4
		cmpeq	.l1	A4, A3, A2
	[A2]	b	.s2	.L256
		nop	5
		mvk	.s1	45, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	mvk	.d1	1, A1
	[A0]	b	.s2	.L251
		nop	5
		b	.s2	.L260
		nop	5
.L256:
		mvk	.d1	0, A1
.L251:
		add	.d1	A10, 1, A10
		b	.s2	.L252
		nop	5
.L260:
		mvk	.d1	0, A1
.L252:
		sub	.d1	A10, 1, A7
		mvk	.d1	0, A4
		b	.s2	.L253
		nop	5
.L254:
		shl	.s1	A4, 2, A8
		add	.d1	A8, A4, A9
		shl	.s1	A9, 1, A16
		ldb	.d1t1	*A7, A17
		nop	4
		subah	.d1	A17, 24, A17
		sub	.d1	A16, A17, A4
.L253:
		ldb	.d1t1	*++A7[1], A6
		nop	4
		subah	.d1	A6, 24, A6
		cmpltu	.l2x	9, A6, B0
	[!B0]	b	.s2	.L254
		nop	5
	[!A1]	neg	.l1	A4, A4
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A13
.L263:
		mv	.d1	A13, A12
		ldb	.d1t1	*A13++[1], A4
		nop	4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L263
		nop	5
		ldb	.d1t1	*A12, A3
		nop	4
		mvk	.s1	43, A4
		cmpeq	.l1	A4, A3, A0
	[A0]	b	.s2	.L269
		nop	5
		mvk	.s1	45, A5
		cmpeq	.l1	A5, A3, A0
	[A0]	mvk	.d1	1, A2
	[A0]	b	.s2	.L264
		nop	5
		b	.s2	.L273
		nop	5
.L269:
		mvk	.d1	0, A2
.L264:
		add	.d1	A12, 1, A12
		b	.s2	.L265
		nop	5
.L273:
		mvk	.d1	0, A2
.L265:
		sub	.d1	A12, 1, A8
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		b	.s2	.L266
		nop	5
.L267:
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
.L266:
		ldb	.d1t1	*++A8[1], A6
		nop	4
		subah	.d1	A6, 24, A6
		cmpltu	.l1	9, A6, A0
	[!A0]	b	.s2	.L267
		nop	5
	[!A2]	neg	.l1	A4, A0
	[!A2]	cmpltu	.l1	0, A0, A8
	[!A2]	neg	.l1	A5, A1
	[!A2]	sub	.d1	A1, A8, A1
	[!A2]	dmv	.s1	A1, A0, A5:A4
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.type	bsearch, @function
bsearch:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B10, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A14, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A14
		mv	.d2	B4, B10
		mv	.d1	A6, A11
		mv	.l1x	B6, A12
		mv	.d1	A8, A13
		b	.s2	.L276
		nop	5
.L280:
		shru	.s1	A11, 1, A10
		mpy32	.m1	A10, A12, A3
		nop	3
		add	.d1x	A3, B10, A10
		mv	.l2x	A10, B4
		mv	.d1	A14, A4
		call	.s2x	A13
		addkpc	.s2	.L282, B3, 4
.L282:
		cmpgt	.l1	0, A4, A1
	[A1]	shru	.s1	A11, 1, A11
	[A1]	b	.s2	.L276
		nop	5
		cmplt	.l1	0, A4, A2
	[!A2]	b	.s2	.L281
		nop	5
		add	.d1	A10, A12, A4
		mv	.l2x	A4, B10
		shru	.s1	A11, 1, A5
		sub	.d1	A11, 1, A11
		sub	.d1	A11, A5, A11
.L276:
		mv	.d1	A11, A0
	[A0]	b	.s2	.L280
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L279
		nop	5
.L281:
		mv	.d1	A10, A4
.L279:
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d2	B15, 20, B15
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
		mv	.l2x	A4, B11
		mv	.l1x	B6, A13
		mv	.l2x	A8, B10
		mv	.l1x	B8, A14
		mv	.d1	A6, A11
		mv	.l1x	B4, A12
		b	.s2	.L284
		nop	5
.L287:
		shr	.s1	A11, 1, A10
		mpy32	.m1	A10, A13, A3
		nop	3
		add	.d1	A12, A3, A10
		mv	.d1	A14, A6
		mv	.l2x	A10, B4
		mv	.l1x	B11, A4
		call	.s2	B10
		addkpc	.s2	.L289, B3, 4
.L289:
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L288
		nop	5
		cmplt	.l1	0, A4, A2
	[A2]	add	.d1	A10, A13, A12
	[A2]	sub	.d1	A11, 1, A11
		shr	.s1	A11, 1, A11
.L284:
		mv	.d1	A11, A0
	[A0]	b	.s2	.L287
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L285
		nop	5
.L288:
		mv	.d1	A10, A4
.L285:
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(20)
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L291, B3, 4
.L291:
		mv	.d1	A4, A8
		mv	.d1	A5, A9
		dmv	.s1	A9, A8, A5:A4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		shr	.s1	A5, 31, A3
		xor	.d1	A4, A3, A6
		xor	.d1	A5, A3, A7
		sub	.d1	A6, A3, A4
		cmpltu	.l1	A6, A4, A9
		sub	.d1	A7, A3, A5
		sub	.d1	A5, A9, A5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d2	B15, 20, B15
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
		mv	.d1	A3, A14
		dmv	.s1	A5, A4, A13:A12
		dmv	.s2	B5, B4, B11:B10
		callp	.s2	(__c6xabi_divlli), B3
		dmv	.s1	A5, A4, A11:A10
		dmv	.s2	B11, B10, B5:B4
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_remlli), B3
		stdw	.d1t1	A11:A10, *A14
		stdw	.d1t1	A5:A4, *+A14(8)
		mv	.d1	A14, A4
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		shr	.s1	A4, 31, A3
		xor	.d1	A4, A3, A4
		sub	.d1	A4, A3, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(20)
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L298, B3, 4
.L298:
		mv	.d1	A4, A8
		mv	.d1	A5, A9
		dmv	.s1	A9, A8, A5:A4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		shr	.s1	A5, 31, A3
		xor	.d1	A4, A3, A6
		xor	.d1	A5, A3, A7
		sub	.d1	A6, A3, A4
		cmpltu	.l1	A6, A4, A9
		sub	.d1	A7, A3, A5
		sub	.d1	A5, A9, A5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d2	B15, 20, B15
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
		mv	.d1	A3, A14
		dmv	.s1	A5, A4, A13:A12
		dmv	.s2	B5, B4, B11:B10
		callp	.s2	(__c6xabi_divlli), B3
		dmv	.s1	A5, A4, A11:A10
		dmv	.s2	B11, B10, B5:B4
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_remlli), B3
		stdw	.d1t1	A11:A10, *A14
		stdw	.d1t1	A5:A4, *+A14(8)
		mv	.d1	A14, A4
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
.L305:
		mv	.d1	A4, A3
		ldw	.d1t1	*A4++[1], A0
		nop	4
	[!A0]	b	.s2	.L304
		nop	5
		ldw	.d1t1	*-A4(4), A5
		nop	4
		cmpeq	.l1x	A5, B4, A1
	[!A1]	b	.s2	.L305
		nop	5
.L304:
		ldw	.d1t1	*A3, A2
		nop	4
	[A2]	mv	.d1	A3, A4
	[!A2]	mvk	.d1	0, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
.L311:
		mv	.l1x	B4, A5
		mv	.d1	A4, A6
		ldw	.d1t1	*A4++[1], A7
		nop	4
		ldw	.d2t1	*B4++[1], A3
		nop	4
		cmpeq	.l1	A3, A7, A0
	[!A0]	b	.s2	.L310
		nop	5
		ldw	.d1t1	*-A4(4), A1
		nop	4
	[!A1]	b	.s2	.L310
		nop	5
		ldw	.d2t1	*-B4(4), A2
		nop	4
	[A2]	b	.s2	.L311
		nop	5
.L310:
		ldw	.d1t1	*A6, A8
		nop	4
		ldw	.d1t1	*A5, A9
		nop	4
		cmpgt	.l1	A9, A8, A0
	[A0]	mvk	.d1	-1, A4
	[A0]	b	.s2	.L312
		nop	5
		ldw	.d1t1	*A6, A4
		nop	4
		cmplt	.l1	A9, A4, A4
.L312:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d1	A4, 4, A3
.L316:
		ldw	.d2t1	*B4++[1], A0
		nop	4
		stw	.d1t1	A0, *++A3[1]
	[A0]	b	.s2	.L316
		nop	5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A5
.L319:
		mv	.d1	A5, A3
		ldw	.d1t1	*A5++[1], A1
		nop	4
	[A1]	b	.s2	.L319
		nop	5
		sub	.d1	A3, A4, A4
		shr	.s1	A4, 2, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A6, A2
		add	.d1	A6, 1, A1
		b	.s2	.L322
		nop	5
.L324:
		sub	.d1	A2, 1, A2
.L322:
		mv	.l1x	B4, A5
		mv	.d1	A4, A6
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L328
		nop	5
		b	.s2	.L323
		nop	5
.L328:
		ldw	.d1t1	*A4, A7
		nop	4
		ldw	.d2t1	*B4, A3
		nop	4
		cmpeq	.l1	A3, A7, A0
	[!A0]	b	.s2	.L323
		nop	5
		ldw	.d1t1	*A4++[1], A0
		nop	4
	[!A0]	b	.s2	.L323
		nop	5
		ldw	.d2t1	*B4++[1], A0
		nop	4
	[A0]	b	.s2	.L324
		nop	5
.L323:
	[!A2]	mvk	.d1	0, A4
	[!A2]	b	.s2	.L325
		nop	5
		ldw	.d1t1	*A6, A8
		nop	4
		ldw	.d1t1	*A5, A9
		nop	4
		cmpgt	.l1	A9, A8, A1
	[A1]	mvk	.d1	-1, A4
	[A1]	b	.s2	.L325
		nop	5
		ldw	.d1t1	*A6, A4
		nop	4
		cmplt	.l1	A9, A4, A4
.L325:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A6, A2
		add	.d1	A6, 1, A1
		b	.s2	.L330
		nop	5
.L335:
		ldw	.d1t1	*A4++[1], A5
		nop	4
		cmpeq	.l1x	A5, B4, A0
	[A0]	b	.s2	.L331
		nop	5
		sub	.d1	A2, 1, A2
.L330:
		mv	.d1	A4, A3
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L335
		nop	5
.L331:
	[A2]	mv	.d1	A3, A4
	[!A2]	mvk	.d1	0, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A6, A2
		add	.d1	A6, 1, A1
		b	.s2	.L337
		nop	5
.L343:
		ldw	.d1t1	*A4++[1], A7
		nop	4
		ldw	.d2t1	*B4++[1], A3
		nop	4
		cmpeq	.l1	A3, A7, A0
	[!A0]	b	.s2	.L338
		nop	5
		sub	.d1	A2, 1, A2
.L337:
		mv	.l1x	B4, A5
		mv	.d1	A4, A6
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L343
		nop	5
.L338:
	[!A2]	mvk	.d1	0, A4
	[!A2]	b	.s2	.L340
		nop	5
		ldw	.d1t1	*A6, A8
		nop	4
		ldw	.d1t1	*A5, A9
		nop	4
		cmpgt	.l1	A9, A8, A1
	[A1]	mvk	.d1	-1, A4
	[A1]	b	.s2	.L340
		nop	5
		ldw	.d1t1	*A6, A4
		nop	4
		cmplt	.l1	A9, A4, A4
.L340:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d1	A4, 4, A3
		add	.d1	A6, 1, A0
		b	.s2	.L345
		nop	5
.L346:
		ldw	.d2t1	*B4++[1], A5
		nop	4
		stw	.d1t1	A5, *++A3[1]
.L345:
		sub	.d1	A6, 1, A6
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L346
		nop	5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.l1x	B4, A3
		cmpeq	.l1	A3, A4, A0
	[A0]	b	.s2	.L348
		nop	5
		sub	.d1	A4, A3, A5
		shl	.s1	A6, 2, A7
		cmpgtu	.l1	A7, A5, A1
	[A1]	b	.s2	.L349
		nop	5
		sub	.d1	A4, 4, A8
		add	.d1	A6, 1, A2
		b	.s2	.L350
		nop	5
.L349:
		shl	.s1	A6, 2, A6
		add	.d2x	B4, A6, B4
		add	.d1	A4, A6, A17
		shru	.s1	A6, 2, A16
		add	.d1	A16, 1, A0
		b	.s2	.L351
		nop	5
.L352:
		ldw	.d2t1	*--B4[1], A18
		nop	4
		stw	.d1t1	A18, *--A17[1]
.L351:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L352
		nop	5
		b	.s2	.L348
		nop	5
.L353:
		ldw	.d2t1	*B4++[1], A9
		nop	4
		stw	.d1t1	A9, *++A8[1]
.L350:
		sub	.d1	A6, 1, A6
		sub	.d1	A2, 1, A2
	[A2]	b	.s2	.L353
		nop	5
.L348:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A3
		add	.d1	A6, 1, A0
		b	.s2	.L355
		nop	5
.L356:
		stw	.d1t2	B4, *A3++[1]
.L355:
		sub	.d1	A6, 1, A6
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L356
		nop	5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.l1x	B4, A3
		cmpgtu	.l1	A3, A4, A0
	[!A0]	b	.s2	.L358
		nop	5
		add	.d1	A4, A6, A4
		add	.d2x	B4, A6, B5
		add	.d1	A6, 1, A0
		b	.s2	.L359
		nop	5
.L360:
		ldb	.d1t1	*--A4[1], A7
		nop	4
		stb	.d2t1	A7, *--B5[1]
.L359:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L360
		nop	5
		b	.s2	.L357
		nop	5
.L358:
		cmpeq	.l1	A3, A4, A1
	[A1]	b	.s2	.L357
		nop	5
		sub	.d2	B4, 1, B4
		add	.d1	A6, 1, A2
		b	.s2	.L362
		nop	5
.L363:
		ldb	.d1t1	*A4++[1], A6
		nop	4
		stb	.d2t1	A6, *++B4[1]
.L362:
		sub	.d1	A2, 1, A2
	[A2]	b	.s2	.L363
		nop	5
.L357:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
	[A0]	b	.s2	.L367
		nop	5
		shru	.s1	A5, A16, A22
		mvk	.d1	0, A23
		b	.s2	.L368
		nop	5
.L367:
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
.L368:
		or	.d1	A6, A22, A4
		or	.d1	A7, A23, A5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.l1x	B4, A3
		subah	.d1	A3, 16, A3
		cmpgt	.l1	0, A3, A1
	[A1]	b	.s2	.L370
		nop	5
		shru	.s1	A5, A3, A19
		mvk	.d1	0, A20
		b	.s2	.L371
		nop	5
.L370:
		shl	.s1	A5, 1, A7
		mvk	.s1	31, A8
		mv	.l1x	B4, A6
		sub	.d1	A8, A6, A16
		shl	.s1	A7, A16, A17
		mv	.l1x	B4, A8
		shru	.s1	A4, A6, A18
		or	.d1	A18, A17, A19
		shru	.s1	A5, A6, A20
.L371:
		neg	.l1x	B4, A21
		clr	.s1	A21, 6, 31, A22
		subah	.d1	A22, 16, A22
		cmpgt	.l1	0, A22, A0
	[!A0]	mvk	.d1	0, A8
	[!A0]	mvk	.d1	0, A9
	[!A0]	shl	.s1	A4, A22, A9
	[!A0]	b	.s2	.L373
		nop	5
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
.L373:
		or	.d1	A19, A8, A4
		or	.d1	A20, A9, A5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.type	rotl32, @function
rotl32:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.l1x	B4, A3
		rotl	.m1	A4, A3, A4
		nop	1
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.type	rotr32, @function
rotr32:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mvk	.s1	32, A5
		mv	.l1x	B4, A3
		sub	.d1	A5, A3, A6
		rotl	.m1	A4, A6, A4
		nop	1
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.l1x	B4, A3
		rotl	.m1	A4, A3, A4
		nop	1
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mvk	.s1	32, A5
		mv	.l1x	B4, A3
		sub	.d1	A5, A3, A6
		rotl	.m1	A4, A6, A4
		nop	1
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.type	rotl16, @function
rotl16:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		extu	.s1	A4, 16, 16, A6
		mv	.l1x	B4, A3
		shl	.s1	A6, A3, A4
		mvk	.s1	16, A7
		sub	.d1	A7, A3, A8
		shru	.s1	A6, A8, A9
		or	.d1	A9, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		extu	.s1	A4, 16, 16, A6
		mv	.l1x	B4, A3
		shru	.s1	A6, A3, A4
		mvk	.s1	16, A7
		sub	.d1	A7, A3, A8
		shl	.s1	A6, A8, A9
		or	.d1	A9, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		extu	.s1	A4, 24, 24, A5
		mv	.l1x	B4, A3
		shl	.s1	A5, A3, A4
		sub	.l2	8, B4, B4
		mv	.l1x	B4, A6
		shru	.s1	A5, A6, A7
		or	.d1	A7, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		extu	.s1	A4, 24, 24, A5
		mv	.l1x	B4, A3
		shru	.s1	A5, A3, A4
		sub	.l2	8, B4, B4
		mv	.l1x	B4, A6
		shl	.s1	A5, A6, A7
		or	.d1	A7, A4, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		extu	.s1	A4, 16, 24, A3
		extu	.s1	A4, 24, 24, A4
		shl	.s1	A4, 8, A5
		or	.d1	A5, A3, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mvk	.d1	0, A3
		mvk	.s1	33, A1
		b	.s2	.L386
		nop	5
.L389:
		shru	.s1	A4, A3, A5
		and	.d1	1, A5, A0
	[!A0]	b	.s2	.L387
		nop	5
		add	.d1	A3, 1, A4
		b	.s2	.L388
		nop	5
.L387:
		add	.d1	A3, 1, A3
.L386:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L389
		nop	5
		mvk	.d1	0, A4
.L388:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A0
	[A0]	mvk	.d1	1, A4
	[A0]	b	.s2	.L392
		nop	5
		b	.s2	.L395
		nop	5
.L393:
		shr	.s1	A0, 1, A0
		add	.d1	A4, 1, A4
.L392:
		and	.d1	1, A0, A1
	[!A1]	b	.s2	.L393
		nop	5
		b	.s2	.L391
		nop	5
.L395:
		mvk	.d1	0, A4
.L391:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mvk	.d2	-1, B4
		mvklh	.s2	65407, B4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[A0]	mvk	.d1	1, A4
	[A0]	b	.s2	.L397
		nop	5
		mvk	.d2	-1, B4
		mvklh	.s2	32639, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_gtf), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L397:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	65519, B5
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	mvk	.d1	1, A4
	[A0]	b	.s2	.L405
		nop	5
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	32751, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L405:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	65519, B5
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	mvk	.d1	1, A4
	[A0]	b	.s2	.L413
		nop	5
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	32751, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L413:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mv	.l1x	B4, A4
		callp	.s2	(__c6xabi_fltid), B3
		stdw	.d1t1	A5:A4, *A10
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A12
		mv	.l1x	B4, A10
		mv	.l2x	A4, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L423
		nop	5
		mv	.l2x	A12, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_addf), B3
		mv	.l2x	A4, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_eqf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L423
		nop	5
		cmpgt	.l1	0, A10, A2
		mvk	.d1	0, A11
	[A2]	mvklh	.s1	16128, A11
	[!A2]	mvklh	.s1	16384, A11
.L426:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L425
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A12
.L425:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L423
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A11
		b	.s2	.L426
		nop	5
.L423:
		mv	.d1	A12, A4
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B11, *+B15(32)
		stw	.d2t2	B10, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.l2x	A4, B10
		mv	.l2x	A5, B11
		mv	.l1x	B4, A10
		dmv	.s2	B11, B10, B5:B4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L434
		nop	5
		dmv	.s2	B11, B10, B5:B4
		mv	.l1x	B10, A4
		mv	.l1x	B11, A5
		callp	.s2	(__c6xabi_addd), B3
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		mv	.l1x	B10, A4
		mv	.l1x	B11, A5
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L434
		nop	5
		cmpgt	.l1	0, A10, A2
		mvk	.d1	0, A12
		mvk	.d1	0, A13
	[A2]	mvklh	.s1	16352, A13
	[!A2]	mvklh	.s1	16384, A13
.L437:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L436
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		mv	.l1x	B10, A4
		mv	.l1x	B11, A5
		callp	.s2	(__c6xabi_mpyd), B3
		mv	.l2x	A4, B10
		mv	.l2x	A5, B11
.L436:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L434
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A13:A12
		b	.s2	.L437
		nop	5
.L434:
		mv	.l1x	B10, A4
		mv	.l1x	B11, A5
		ldw	.d2t1	*+B15(12), A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B10
		nop	4
		ldw	.d2t2	*+B15(32), B11
		nop	4
		ldw	.d2t2	*+B15(36), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B11, *+B15(32)
		stw	.d2t2	B10, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.l2x	A4, B10
		mv	.l2x	A5, B11
		mv	.l1x	B4, A10
		dmv	.s2	B11, B10, B5:B4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L445
		nop	5
		dmv	.s2	B11, B10, B5:B4
		mv	.l1x	B10, A4
		mv	.l1x	B11, A5
		callp	.s2	(__c6xabi_addd), B3
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		mv	.l1x	B10, A4
		mv	.l1x	B11, A5
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L445
		nop	5
		cmpgt	.l1	0, A10, A2
		mvk	.d1	0, A12
		mvk	.d1	0, A13
	[A2]	mvklh	.s1	16352, A13
	[!A2]	mvklh	.s1	16384, A13
.L448:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L447
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		mv	.l1x	B10, A4
		mv	.l1x	B11, A5
		callp	.s2	(__c6xabi_mpyd), B3
		mv	.l2x	A4, B10
		mv	.l2x	A5, B11
.L447:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L445
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A13:A12
		b	.s2	.L448
		nop	5
.L445:
		mv	.l1x	B10, A4
		mv	.l1x	B11, A5
		ldw	.d2t1	*+B15(12), A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B10
		nop	4
		ldw	.d2t2	*+B15(32), B11
		nop	4
		ldw	.d2t2	*+B15(36), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A3
		add	.d1	A6, 1, A1
		b	.s2	.L456
		nop	5
.L457:
		ldb	.d2t1	*B4++[1], A6
		nop	4
		ldb	.d1t1	*A3++[1], A5
		nop	4
		xor	.d1	A5, A6, A7
		stb	.d1t1	A7, *-A3(1)
.L456:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L457
		nop	5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A12
		mv	.l1x	B4, A10
		mv	.d1	A6, A11
		callp	.s2	(strlen), B3
		add	.l2x	-1, A10, B4
		add	.d1	A12, A4, A5
		add	.d1	A11, 1, A1
		b	.s2	.L459
		nop	5
.L463:
		ldb	.d2t1	*++B4[1], A3
		nop	4
		stb	.d1t1	A3, *A5
		ldb	.d1t1	*A5++[1], A2
		nop	4
	[!A2]	b	.s2	.L460
		nop	5
		sub	.d1	A11, 1, A11
.L459:
		mv	.d1	A5, A4
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L463
		nop	5
.L460:
		mv	.d1	A11, A0
	[!A0]	stb	.d1t1	A11, *A4
		mv	.d1	A12, A4
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A3
		mvk	.d1	0, A4
		add	.l1x	1, B4, A0
		b	.s2	.L466
		nop	5
.L469:
		add	.d1	A3, A4, A5
		ldb	.d1t1	*A5, A1
		nop	4
	[!A1]	b	.s2	.L467
		nop	5
		add	.d1	A4, 1, A4
.L466:
		sub	.d1	A0, 1, A0
	[A0]	b	.s2	.L469
		nop	5
.L467:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		b	.s2	.L471
		nop	5
.L473:
		ldb	.d1t1	*A3, A7
		nop	4
		ldb	.d1t1	*-A4(1), A5
		nop	4
		cmpeq	.l1	A5, A7, A2
	[A2]	b	.s2	.L475
		nop	5
.L474:
		ldb	.d1t1	*++A3[1], A1
		nop	4
	[A1]	b	.s2	.L473
		nop	5
.L471:
		mv	.d1	A4, A6
		ldb	.d1t1	*A4++[1], A0
		nop	4
	[!A0]	b	.s2	.L476
		nop	5
		add	.l1x	-1, B4, A3
		b	.s2	.L474
		nop	5
.L475:
		mv	.d1	A6, A4
		b	.s2	.L472
		nop	5
.L476:
		mvk	.d1	0, A4
.L472:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A5
		mvk	.d1	0, A4
.L479:
		mv	.d1	A5, A3
		ldb	.d1t1	*A5++[1], A6
		nop	4
		cmpeq	.l1x	A6, B4, A1
	[A1]	mv	.d1	A3, A4
		ldb	.d1t1	*-A5(1), A0
		nop	4
	[A0]	b	.s2	.L479
		nop	5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
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
	[A0]	b	.s2	.L484
		nop	5
		b	.s2	.L488
		nop	5
.L485:
		mv	.d1	A12, A6
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(strncmp), B3
		mv	.d1	A4, A2
	[!A2]	b	.s2	.L487
		nop	5
		add	.d1	A10, 1, A10
.L484:
		mv	.l2x	A13, B4
		mv	.d1	A10, A4
		callp	.s2	(strchr), B3
		mv	.d1	A4, A10
		mv	.d1	A4, A1
	[A1]	b	.s2	.L485
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L483
		nop	5
.L488:
		mv	.d1	A10, A4
		b	.s2	.L483
		nop	5
.L487:
		mv	.d1	A10, A4
.L483:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A12
		mv	.l1x	B5, A13
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L493
		nop	5
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L495
		nop	5
.L493:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A0
	[!A0]	dmv	.s1	A11, A10, A5:A4
	[!A0]	b	.s2	.L496
		nop	5
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	dmv	.s1	A11, A10, A5:A4
	[!A0]	b	.s2	.L496
		nop	5
.L495:
		mv	.d1	A10, A4
		mvk	.d1	0, A3
		mvklh	.s1	32768, A3
		xor	.d1	A3, A11, A5
.L496:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B10, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.l2x	A6, B10
		mv	.l1x	B6, A12
		sub	.l1x	B4, A12, A11
		add	.d1	A4, A11, A11
		mv	.l1x	B6, A0
	[!A0]	b	.s2	.L510
		nop	5
		cmpgtu	.l1x	A12, B4, A1
	[!A1]	mv	.d1	A4, A10
	[!A1]	b	.s2	.L511
		nop	5
		b	.s2	.L517
		nop	5
.L513:
		ldb	.d1t1	*A10++[1], A4
		nop	4
		ldb	.d2t1	*B10, A3
		nop	4
		cmpeq	.l1	A3, A4, A0
	[!A0]	b	.s2	.L511
		nop	5
		sub	.d1	A12, 1, A6
		add	.d2	B10, 1, B4
		mv	.d1	A10, A4
		callp	.s2	(memcmp), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L516
		nop	5
.L511:
		mv	.d1	A10, A13
		cmpltu	.l1	A11, A10, A2
	[!A2]	b	.s2	.L513
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L510
		nop	5
.L517:
		mvk	.d1	0, A4
		b	.s2	.L510
		nop	5
.L516:
		mv	.d1	A13, A4
.L510:
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
		ldw	.d2t2	*+B15(32), B10
		nop	4
		ldw	.d2t2	*+B15(36), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A6, A10
		callp	.s2	(memcpy), B3
		add	.d1	A4, A10, A4
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, @function
frexp:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B3, *+B15(32)
		stw	.d2t1	A14, *+B15(28)
		stw	.d2t1	A13, *+B15(24)
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A13
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	mvk	.d1	0, A14
	[!A0]	b	.s2	.L522
		nop	5
		mv	.d1	A10, A0
		mvk	.d1	0, A3
		mvklh	.s1	32768, A3
		xor	.d1	A3, A11, A1
		dmv	.s1	A1, A0, A11:A10
		mvk	.d1	1, A14
.L522:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16368, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[A1]	mvk	.d1	0, A12
	[A1]	b	.s2	.L524
		nop	5
		b	.s2	.L539
		nop	5
.L526:
		add	.d1	A12, 1, A12
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16352, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A11:A10
.L524:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16368, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L526
		nop	5
		b	.s2	.L527
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
	[!A2]	mvk	.d1	0, A12
	[!A2]	b	.s2	.L527
		nop	5
		b	.s2	.L540
		nop	5
.L531:
		sub	.d1	A12, 1, A12
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		dmv	.s1	A5, A4, A11:A10
		b	.s2	.L530
		nop	5
.L540:
		mvk	.d1	0, A12
.L530:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16352, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L531
		nop	5
.L527:
		stw	.d1t1	A12, *A13
		mv	.d1	A14, A2
	[!A2]	b	.s2	.L532
		nop	5
		mv	.d1	A10, A0
		mvk	.d1	0, A6
		mvklh	.s1	32768, A6
		xor	.d1	A6, A11, A1
		dmv	.s1	A1, A0, A11:A10
.L532:
		dmv	.s1	A11, A10, A5:A4
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		dmv	.s1	A5, A4, A1:A0
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		b	.s2	.L550
		nop	5
.L552:
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
.L550:
		or	.d1	A1, A0, A2
	[A2]	b	.s2	.L552
		nop	5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A6, A2
		mvk	.d1	1, A0
		b	.s2	.L554
		nop	5
.L556:
		shl	.s2	B4, 1, B4
		shl	.s1	A0, 1, A0
.L554:
		cmpgtu	.l1x	A4, B4, A5
		cmpeq	.l1	0, A0, A3
		cmpeq	.l1	0, A3, A6
		and	.d1	A6, A5, A1
	[!A1]	b	.s2	.L561
		nop	5
		cmpgt	.l2	0, B4, B0
	[!B0]	b	.s2	.L556
		nop	5
		mvk	.d1	0, A7
		b	.s2	.L557
		nop	5
.L561:
		mvk	.d1	0, A7
		b	.s2	.L557
		nop	5
.L559:
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A1
	[!A1]	sub	.d1	A4, A8, A4
	[!A1]	or	.d1	A0, A7, A7
		shru	.s1	A0, 1, A0
		shru	.s2	B4, 1, B4
.L557:
	[A0]	b	.s2	.L559
		nop	5
	[!A2]	mv	.d1	A7, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		ext	.s1	A4, 24, 24, A3
		cmpgt	.l1	0, A3, A0
	[A0]	not	.l1	A4, A4
		ext	.s1	A4, 24, 24, A1
	[A1]	mv	.d1	A1, A4
	[A1]	shl	.s1	A4, 8, A4
	[A1]	lmbd	.l1	1, A4, A4
	[A1]	sub	.d1	A4, 1, A4
	[!A1]	mvk	.d1	7, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		b	.s2	.L569
		nop	5
.L572:
		mvk	.s1	63, A4
.L569:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		b	.s2	.L577
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
.L577:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		b	.s2	.L588
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
.L588:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		b	.s2	.L596
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
.L596:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 8, B15
		stw	.d2t2	B3, *+B15(12)
		call	.s2	__c6xabi_remi
		addkpc	.s2	.L608, B3, 4
.L608:
		ldw	.d2t2	*+B15(12), B3
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.type	__uitod, @function
__uitod:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(12)
		stw	.d2t2	B3, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__c6xabi_fltud), B3
		ldw	.d2t2	*+B15(8), B3
		nop	4
		ldw	.d2t2	*+B15(12), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.type	__uitof, @function
__uitof:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(12)
		stw	.d2t2	B3, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__c6xabi_fltuf), B3
		ldw	.d2t2	*+B15(8), B3
		nop	4
		ldw	.d2t2	*+B15(12), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(12)
		stw	.d2t2	B3, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__c6xabi_fltulld), B3
		ldw	.d2t2	*+B15(8), B3
		nop	4
		ldw	.d2t2	*+B15(12), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(12)
		stw	.d2t2	B3, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__c6xabi_fltullf), B3
		ldw	.d2t2	*+B15(8), B3
		nop	4
		ldw	.d2t2	*+B15(12), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.type	__umodi, @function
__umodi:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 8, B15
		stw	.d2t2	B3, *+B15(12)
		call	.s2	__c6xabi_remu
		addkpc	.s2	.L618, B3, 4
.L618:
		ldw	.d2t2	*+B15(12), B3
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A5
		mvk	.d1	0, A4
		mvk	.s1	17, A1
		b	.s2	.L620
		nop	5
.L622:
		extu	.s1	A5, 16, 16, A6
		sub	.l1	15, A4, A3
		shr	.s1	A6, A3, A7
		and	.d1	1, A7, A0
	[A0]	b	.s2	.L621
		nop	5
		add	.d1	A4, 1, A4
.L620:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L622
		nop	5
.L621:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A3
		mvk	.d1	0, A4
		mvk	.s1	17, A1
		b	.s2	.L624
		nop	5
.L626:
		extu	.s1	A3, 16, 16, A5
		shr	.s1	A5, A4, A6
		and	.d1	1, A6, A0
	[A0]	b	.s2	.L625
		nop	5
		add	.d1	A4, 1, A4
.L624:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L626
		nop	5
.L625:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mvk	.d2	0, B4
		mvklh	.s2	18176, B4
		callp	.s2	(__c6xabi_gef), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L632
		nop	5
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
.L632:
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_fixfi), B3
.L630:
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mvk	.d1	0, A5
		mvk	.d1	0, A3
		mvk	.s1	17, A1
		b	.s2	.L638
		nop	5
.L640:
		extu	.s1	A4, 16, 16, A6
		shr	.s1	A6, A3, A7
		and	.d1	1, A7, A0
	[A0]	add	.d1	A5, 1, A5
		add	.d1	A3, 1, A3
.L638:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L640
		nop	5
		and	.d1	1, A5, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A5
		mvk	.d1	0, A4
		mvk	.d1	0, A3
		mvk	.s1	17, A1
		b	.s2	.L642
		nop	5
.L644:
		extu	.s1	A5, 16, 16, A6
		shr	.s1	A6, A3, A7
		and	.d1	1, A7, A0
	[A0]	add	.d1	A4, 1, A4
		add	.d1	A3, 1, A3
.L642:
		sub	.d1	A1, 1, A1
	[A1]	b	.s2	.L644
		nop	5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A0
		mvk	.d1	0, A4
		b	.s2	.L646
		nop	5
.L648:
		and	.d1	1, A0, A1
	[A1]	add	.d1x	A4, B4, A4
		shru	.s1	A0, 1, A0
		shl	.s2	B4, 1, B4
.L646:
	[A0]	b	.s2	.L648
		nop	5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A1
		mv	.l1x	B4, A0
	[A1]	mvk	.d1	0, A4
	[A1]	b	.s2	.L651
		nop	5
		b	.s2	.L655
		nop	5
.L653:
		and	.d1	1, A0, A2
	[A2]	add	.d1	A4, A1, A4
		shl	.s1	A1, 1, A1
		shru	.s1	A0, 1, A0
.L651:
	[A0]	b	.s2	.L653
		nop	5
		b	.s2	.L650
		nop	5
.L655:
		mvk	.d1	0, A4
.L650:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		b	.s2	.L660
		nop	5
.L662:
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A1
	[!A1]	sub	.d1	A4, A8, A4
	[!A1]	or	.d1	A0, A7, A7
		shru	.s1	A0, 1, A0
		shru	.s2	B4, 1, B4
.L660:
	[A0]	b	.s2	.L662
		nop	5
	[!A2]	mv	.d1	A7, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A10
		mv	.l1x	B4, A11
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[A0]	mvk	.d1	-1, A4
	[A0]	b	.s2	.L667
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_gtf), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L667:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A12
		mv	.l1x	B5, A13
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	mvk	.d1	-1, A4
	[A0]	b	.s2	.L673
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		cmpeq	.l1	0, A4, A4
		cmpeq	.l1	0, A4, A4
.L673:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A4, A6
		mv	.l1x	B4, A4
		mpy32u	.m1	A6, A4, A5:A4
		nop	3
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		cmpgt	.l1x	0, B4, A0
	[A0]	neg	.l2	B4, B4
	[A0]	mvk	.d1	1, A1
	[!A0]	mvk	.d1	0, A1
		mvk	.d1	0, A6
		mvk	.d1	0, A5
		b	.s2	.L682
		nop	5
.L684:
		and	.d1x	1, B4, A0
	[A0]	add	.d1	A6, A4, A6
		shl	.s1	A4, 1, A4
		shr	.s2	B4, 1, B4
		add	.d1	A5, 1, A5
.L682:
		cmpeq	.l1x	0, B4, A3
		cmpeq	.l1	0, A3, A7
		extu	.s1	A5, 24, 24, A8
		cmpltu	.l1	31, A8, A9
		cmpeq	.l1	0, A9, A16
		and	.d1	A16, A7, A2
	[A2]	b	.s2	.L684
		nop	5
	[A1]	neg	.l1	A6, A4
	[!A1]	mv	.d1	A6, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
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
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
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
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A6, A1
		mvk	.d1	1, A3
		b	.s2	.L701
		nop	5
.L703:
		shl	.s2	B4, 1, B4
		shl	.s1	A3, 1, A3
.L701:
		mv	.l1x	B4, A5
		extu	.s1	A5, 16, 16, A6
		extu	.s1	A4, 16, 16, A7
		cmpgtu	.l1	A7, A6, A8
		extu	.s1	A3, 16, 16, A9
		cmpeq	.l1	0, A9, A16
		cmpeq	.l1	0, A16, A17
		and	.d1	A17, A8, A0
	[!A0]	b	.s2	.L708
		nop	5
		ext	.s1	A5, 16, 16, A19
		cmpgt	.l1	0, A19, A2
	[!A2]	b	.s2	.L703
		nop	5
		mvk	.d1	0, A24
		b	.s2	.L704
		nop	5
.L708:
		mvk	.d1	0, A24
		b	.s2	.L704
		nop	5
.L706:
		extu	.s1	A4, 16, 16, A20
		mv	.l1x	B4, A21
		extu	.s1	A21, 16, 16, A22
		cmpgtu	.l1	A22, A20, A2
	[A2]	b	.s2	.L705
		nop	5
		mv	.l1x	B4, A23
		sub	.d1	A4, A23, A4
		or	.d1	A3, A24, A24
.L705:
		extu	.s1	A3, 16, 17, A3
		extu	.s2	B4, 16, 17, B4
.L704:
		extu	.s1	A3, 16, 16, A0
	[A0]	b	.s2	.L706
		nop	5
	[!A1]	mv	.d1	A24, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.d1	A6, A2
		mvk	.d1	1, A0
		b	.s2	.L711
		nop	5
.L713:
		shl	.s2	B4, 1, B4
		shl	.s1	A0, 1, A0
.L711:
		cmpgtu	.l1x	A4, B4, A5
		cmpeq	.l1	0, A0, A3
		cmpeq	.l1	0, A3, A6
		and	.d1	A6, A5, A1
	[!A1]	b	.s2	.L718
		nop	5
		cmpgt	.l2	0, B4, B0
	[!B0]	b	.s2	.L713
		nop	5
		mvk	.d1	0, A7
		b	.s2	.L714
		nop	5
.L718:
		mvk	.d1	0, A7
		b	.s2	.L714
		nop	5
.L716:
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A1
	[!A1]	sub	.d1	A4, A8, A4
	[!A1]	or	.d1	A0, A7, A7
		shru	.s1	A0, 1, A0
		shru	.s2	B4, 1, B4
.L714:
	[A0]	b	.s2	.L716
		nop	5
	[!A2]	mv	.d1	A7, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mvk	.s1	32, A3
		and	.d1x	A3, B4, A0
	[!A0]	b	.s2	.L721
		nop	5
		mvk	.d1	0, A0
		subah	.d2	B4, 16, B4
		mv	.l1x	B4, A17
		shl	.s1	A4, A17, A1
		b	.s2	.L722
		nop	5
.L721:
		mv	.l1x	B4, A1
	[!A1]	b	.s2	.L723
		nop	5
		shl	.s1	A4, A1, A0
		shl	.s1	A5, A1, A8
		mvk	.s1	32, A5
		sub	.d1	A5, A1, A9
		shru	.s1	A4, A9, A16
		or	.d1	A8, A16, A1
.L722:
		dmv	.s1	A1, A0, A5:A4
.L723:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mvk	.s1	32, A3
		and	.d1x	A3, B4, A0
	[!A0]	b	.s2	.L726
		nop	5
		shr	.s1	A5, 31, A7
		subah	.d2	B4, 16, B4
		mv	.l1x	B4, A19
		shr	.s1	A5, A19, A6
		b	.s2	.L727
		nop	5
.L726:
		mv	.l1x	B4, A1
	[!A1]	b	.s2	.L728
		nop	5
		shr	.s1	A5, A1, A7
		mvk	.s1	32, A9
		sub	.d1	A9, A1, A16
		shl	.s1	A5, A16, A17
		shru	.s1	A4, A1, A4
		or	.d1	A4, A17, A6
.L727:
		dmv	.s1	A7, A6, A5:A4
.L728:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
	[A1]	b	.s2	.L738
		nop	5
		mvk	.d1	8, A9
		b	.s2	.L734
		nop	5
.L738:
		mvk	.d1	0, A9
.L734:
		sub	.l1	8, A9, A16
		shru	.s1	A4, A16, A17
		add	.d1	A3, A9, A3
		mvk	.s1	240, A18
		and	.d1	A18, A17, A2
	[A2]	b	.s2	.L739
		nop	5
		mvk	.d1	4, A19
		b	.s2	.L735
		nop	5
.L739:
		mvk	.d1	0, A19
.L735:
		sub	.l1	4, A19, A20
		shru	.s1	A17, A20, A21
		add	.d1	A3, A19, A22
		and	.d1	12, A21, A0
	[A0]	b	.s2	.L740
		nop	5
		mvk	.d1	2, A23
		b	.s2	.L736
		nop	5
.L740:
		mvk	.d1	0, A23
.L736:
		sub	.l1	2, A23, A24
		shru	.s1	A21, A24, A25
		add	.d1	A22, A23, A26
		and	.d1	2, A25, A27
		cmpeq	.l1	0, A27, A28
		sub	.l1	2, A25, A29
		mpy32	.m1	A28, A29, A30
		nop	3
		add	.d1	A26, A30, A4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.l1x	B5, A3
		cmpgt	.l1	A3, A5, A0
	[A0]	mvk	.d1	0, A4
	[A0]	b	.s2	.L742
		nop	5
		cmplt	.l1	A3, A5, A1
	[A1]	mvk	.d1	2, A4
	[A1]	b	.s2	.L742
		nop	5
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A2
	[A2]	mvk	.d1	0, A4
	[A2]	b	.s2	.L742
		nop	5
		cmpltu	.l1	A8, A4, A0
	[!A0]	mvk	.d1	1, A4
	[A0]	mvk	.d1	2, A4
.L742:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(12)
		stw	.d2t2	B3, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__cmpdi2), B3
		sub	.d1	A4, 1, A4
		ldw	.d2t2	*+B15(8), B3
		nop	4
		ldw	.d2t2	*+B15(12), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		clr	.s1	A4, 16, 31, A0
	[!A0]	mvk	.s1	16, A3
	[A0]	mvk	.d1	0, A3
		shru	.s1	A4, A3, A4
		extu	.s1	A4, 24, 24, A1
	[A1]	b	.s2	.L755
		nop	5
		mvk	.d1	8, A5
		b	.s2	.L751
		nop	5
.L755:
		mvk	.d1	0, A5
.L751:
		shru	.s1	A4, A5, A6
		add	.d1	A3, A5, A3
		and	.d1	15, A6, A2
	[A2]	b	.s2	.L756
		nop	5
		mvk	.d1	4, A7
		b	.s2	.L752
		nop	5
.L756:
		mvk	.d1	0, A7
.L752:
		shru	.s1	A6, A7, A8
		add	.d1	A3, A7, A9
		and	.d1	3, A8, A0
	[A0]	b	.s2	.L757
		nop	5
		mvk	.d1	2, A16
		b	.s2	.L753
		nop	5
.L757:
		mvk	.d1	0, A16
.L753:
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mvk	.s1	32, A3
		and	.d1x	A3, B4, A0
	[!A0]	b	.s2	.L759
		nop	5
		mvk	.d1	0, A7
		subah	.d2	B4, 16, B4
		mv	.l1x	B4, A19
		shru	.s1	A5, A19, A6
		b	.s2	.L760
		nop	5
.L759:
		mv	.l1x	B4, A1
	[!A1]	b	.s2	.L761
		nop	5
		shru	.s1	A5, A1, A7
		mvk	.s1	32, A9
		sub	.d1	A9, A1, A16
		shl	.s1	A5, A16, A17
		shru	.s1	A4, A1, A4
		or	.d1	A4, A17, A6
.L760:
		dmv	.s1	A7, A6, A5:A4
.L761:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B11, *+B15(24)
		stw	.d2t2	B10, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
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
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B10
		nop	4
		ldw	.d2t2	*+B15(24), B11
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		dmv	.s1	A5, A4, A1:A0
		neg	.l1	A4, A4
		cmpltu	.l1	0, A4, A3
		neg	.l1	A1, A5
		sub	.d1	A5, A3, A5
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
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
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B11, *+B15(32)
		stw	.d2t2	B10, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A10
		shru	.s1	A10, 31, A11
		mvk	.d2	0, B10
		mvk	.d2	0, B11
		mvklh	.s2	16368, B11
.L774:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L772
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		mv	.l1x	B10, A4
		mv	.l1x	B11, A5
		callp	.s2	(__c6xabi_mpyd), B3
		mv	.l2x	A4, B10
		mv	.l2x	A5, B11
.L772:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L773
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A13:A12
		b	.s2	.L774
		nop	5
.L773:
		mv	.d1	A11, A2
	[!A2]	mv	.l1x	B10, A4
	[!A2]	mv	.l1x	B11, A5
	[!A2]	b	.s2	.L775
		nop	5
		dmv	.s2	B11, B10, B5:B4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16368, A5
		callp	.s2	(__c6xabi_divd), B3
.L775:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B10
		nop	4
		ldw	.d2t2	*+B15(32), B11
		nop	4
		ldw	.d2t2	*+B15(36), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A4, A11
		mv	.l1x	B4, A10
		shru	.s1	A10, 31, A13
		mvk	.d1	0, A12
		mvklh	.s1	16256, A12
.L783:
		and	.d1	1, A10, A0
	[!A0]	b	.s2	.L781
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A12
.L781:
		shru	.s1	A10, 31, A3
		add	.d1	A3, A10, A10
		shr	.s1	A10, 1, A10
		mv	.d1	A10, A1
	[!A1]	b	.s2	.L782
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A11
		b	.s2	.L783
		nop	5
.L782:
		mv	.d1	A13, A2
	[!A2]	mv	.d1	A12, A4
	[!A2]	b	.s2	.L784
		nop	5
		mv	.l2x	A12, B4
		mvk	.d1	0, A4
		mvklh	.s1	16256, A4
		callp	.s2	(__c6xabi_divf), B3
.L784:
		lddw	.d2t1	*+B15(8), A11:A10
		nop	4
		lddw	.d2t1	*+B15(16), A13:A12
		nop	4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		mv	.l1x	B5, A3
		cmpgtu	.l1	A3, A5, A0
	[A0]	mvk	.d1	0, A4
	[A0]	b	.s2	.L790
		nop	5
		cmpltu	.l1	A3, A5, A1
	[A1]	mvk	.d1	2, A4
	[A1]	b	.s2	.L790
		nop	5
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A2
	[A2]	mvk	.d1	0, A4
	[A2]	b	.s2	.L790
		nop	5
		cmpltu	.l1	A8, A4, A0
	[!A0]	mvk	.d1	1, A4
	[A0]	mvk	.d1	2, A4
.L790:
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
		ret	.s2	B3
		nop	5
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		sub	.d2	B15, 8, B15
		stw	.d2t2	B14, *+B15(12)
		stw	.d2t2	B3, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		callp	.s2	(__ucmpdi2), B3
		sub	.d1	A4, 1, A4
		ldw	.d2t2	*+B15(8), B3
		nop	4
		ldw	.d2t2	*+B15(12), B14
		nop	4
		add	.l2x	-8, A15, B15
		ldw	.d2t1	*++B15(8), A15
		nop	4
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
