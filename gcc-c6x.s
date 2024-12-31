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
		add	.d1x	A6, B4, A17
		add	.d1	A4, A6, A19
		b	.s2	.L3
		nop	5
.L4:
		ldb	.d1t1	*--A17[1], A18
		nop	4
		sub	.d1	A19, 1, A19
		stb	.d1t1	A18, *A19
.L3:
		mv	.l1x	B4, A16
		cmpeq	.l1	A16, A17, A1
	[!A1]	b	.s2	.L4
		nop	5
		b	.s2	.L5
		nop	5
.L2:
		mv	.l1x	B4, A5
		cmpeq	.l1	A5, A4, A1
	[A1]	b	.s2	.L5
		nop	5
		sub	.d1	A4, 1, A9
		add	.d1x	A6, B4, A6
		mv	.l1x	B4, A7
		b	.s2	.L6
		nop	5
.L7:
		ldb	.d1t1	*A7++[1], A8
		nop	4
		add	.d1	A9, 1, A9
		stb	.d1t1	A8, *A9
.L6:
		cmpeq	.l1	A6, A7, A2
	[!A2]	b	.s2	.L7
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
		mv	.l1x	B6, A0
		extu	.s1	A6, 24, 24, A6
		sub	.d2	B4, 1, B4
		b	.s2	.L9
		nop	5
.L11:
		sub	.d1	A0, 1, A0
.L9:
		mv	.d1	A4, A3
	[!A0]	b	.s2	.L10
		nop	5
		add	.d2	B4, 1, B4
		ldb	.d2t1	*B4, A5
		nop	4
		stb	.d1t1	A5, *A4++[1]
		ldbu	.d1t1	*-A4(1), A7
		nop	4
		cmpeq	.l1	A7, A6, A1
	[!A1]	b	.s2	.L11
		nop	5
.L10:
	[!A0]	b	.s2	.L13
		nop	5
		add	.d1	A3, 1, A4
		b	.s2	.L12
		nop	5
.L13:
		mvk	.d1	0, A4
.L12:
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
		mv	.d1	A6, A0
		extu	.s2	B4, 24, 24, B4
		b	.s2	.L15
		nop	5
.L17:
		sub	.d1	A0, 1, A0
.L15:
		mv	.d1	A4, A3
	[!A0]	b	.s2	.L16
		nop	5
		ldbu	.d1t1	*A4++[1], A5
		nop	4
		cmpeq	.l1x	A5, B4, A1
	[!A1]	b	.s2	.L17
		nop	5
.L16:
	[!A0]	b	.s2	.L19
		nop	5
		mv	.d1	A3, A4
		b	.s2	.L18
		nop	5
.L19:
		mvk	.d1	0, A4
.L18:
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
		mv	.d1	A6, A0
		b	.s2	.L21
		nop	5
.L23:
		sub	.d1	A0, 1, A0
.L21:
		mv	.l1x	B4, A3
		mv	.d1	A4, A5
	[!A0]	b	.s2	.L22
		nop	5
		ldbu	.d1t1	*A4++[1], A7
		nop	4
		ldbu	.d2t1	*B4++[1], A6
		nop	4
		cmpeq	.l1	A6, A7, A1
	[A1]	b	.s2	.L23
		nop	5
.L22:
	[!A0]	b	.s2	.L25
		nop	5
		ldbu	.d1t1	*A5, A4
		nop	4
		ldbu	.d1t1	*A3, A8
		nop	4
		sub	.d1	A4, A8, A4
		b	.s2	.L24
		nop	5
.L25:
		mvk	.d1	0, A4
.L24:
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
		sub	.d1	A4, 1, A5
		add	.d1x	A6, B4, A6
		b	.s2	.L27
		nop	5
.L28:
		ldb	.d2t1	*B4++[1], A3
		nop	4
		add	.d1	A5, 1, A5
		stb	.d1t1	A3, *A5
.L27:
		cmpeq	.l1x	A6, B4, A1
	[!A1]	b	.s2	.L28
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
		sub	.d1	A6, 1, A6
		b	.s2	.L30
		nop	5
.L32:
		add	.d1	A4, A6, A3
		ldbu	.d1t1	*A3, A5
		nop	4
		sub	.d1	A6, 1, A7
		cmpeq	.l1x	A5, B4, A1
	[!A1]	b	.s2	.L33
		nop	5
		add	.d1	A4, A6, A4
		b	.s2	.L31
		nop	5
.L33:
		mv	.d1	A7, A6
.L30:
		cmpeq	.l1	-1, A6, A0
	[!A0]	b	.s2	.L32
		nop	5
		mvk	.d1	0, A4
.L31:
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
		add	.d1	A4, A6, A6
		mv	.d1	A4, A5
		b	.s2	.L35
		nop	5
.L36:
		mv	.l1x	B4, A3
		stb	.d1t1	A3, *A5++[1]
.L35:
		cmpeq	.l1	A6, A5, A1
	[!A1]	b	.s2	.L36
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
		mv	.d1	A4, A5
.L38:
		mv	.d1	A5, A4
		add	.d2	B4, 1, B4
		ldb	.d2t1	*B4, A3
		nop	4
		stb	.d1t1	A3, *A5++[1]
		ldb	.d1t1	*-A5(1), A1
		nop	4
	[A1]	b	.s2	.L38
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
.L41:
		mv	.d1	A3, A4
		ldb	.d1t1	*A3++[1], A1
		nop	4
	[!A1]	b	.s2	.L40
		nop	5
		ldbu	.d1t1	*-A3(1), A5
		nop	4
		cmpeq	.l1x	A5, B4, A0
	[!A0]	b	.s2	.L41
		nop	5
.L40:
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
.L44:
		mv	.d1	A4, A3
		ldb	.d1t1	*A4++[1], A5
		nop	4
		cmpeq	.l1x	A5, B4, A1
	[A1]	b	.s2	.L45
		nop	5
		ldb	.d1t1	*-A4(1), A0
		nop	4
	[A0]	b	.s2	.L44
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L43
		nop	5
.L45:
		mv	.d1	A3, A4
.L43:
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
.L48:
		mv	.l1x	B4, A3
		mv	.d1	A4, A5
		ldb	.d1t1	*A4++[1], A7
		nop	4
		ldb	.d2t1	*B4++[1], A6
		nop	4
		cmpeq	.l1	A6, A7, A0
	[!A0]	b	.s2	.L47
		nop	5
		ldb	.d1t1	*-A4(1), A1
		nop	4
	[A1]	b	.s2	.L48
		nop	5
.L47:
		ldbu	.d1t1	*A5, A4
		nop	4
		ldbu	.d1t1	*A3, A8
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
		mv	.d1	A4, A3
.L50:
		mv	.d1	A3, A5
		ldb	.d1t1	*A3++[1], A1
		nop	4
	[A1]	b	.s2	.L50
		nop	5
		sub	.d1	A5, A4, A4
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
	[!A1]	b	.s2	.L55
		nop	5
		mv	.d1	A4, A3
.L54:
		mv	.l1x	B4, A6
		mv	.d1	A3, A7
		ldbu	.d1t1	*A3++[1], A0
		nop	4
	[!A0]	b	.s2	.L53
		nop	5
		add	.d1	A4, A1, A5
		cmpeq	.l1	A3, A5, A8
		cmpeq	.l1	0, A8, A9
		ldbu	.d2t1	*B4, A16
		nop	4
		cmpeq	.l1	0, A16, A17
		cmpeq	.l1	0, A17, A18
		and	.d1	A18, A9, A2
	[!A2]	b	.s2	.L53
		nop	5
		ldbu	.d1t1	*-A3(1), A19
		nop	4
		ldbu	.d2t1	*B4++[1], A20
		nop	4
		cmpeq	.l1	A20, A19, A0
	[A0]	b	.s2	.L54
		nop	5
.L53:
		ldbu	.d1t1	*A7, A4
		nop	4
		ldbu	.d1t1	*A6, A21
		nop	4
		sub	.d1	A4, A21, A4
		b	.s2	.L52
		nop	5
.L55:
		mvk	.d1	0, A4
.L52:
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
		mv	.d1	A4, A3
		b	.s2	.L57
		nop	5
.L58:
		ldb	.d1t1	*+A3(1), A8
		nop	4
		stb	.d2t1	A8, *B4
		ldb	.d1t1	*A3++(2), A9
		nop	4
		stb	.d2t1	A9, *+B4(1)
		add	.d2	B4, 2, B4
.L57:
		add	.d1	A4, A6, A5
		sub	.d1	A5, A3, A7
		cmplt	.l1	1, A7, A0
	[A0]	b	.s2	.L58
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
		cmpeq	.l1	0, A3, A4
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
		cmpeq	.l1	0, A4, A4
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
		extu	.s1	A0, 24, 24, A4
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
		extu	.s1	A0, 24, 24, A4
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
		cmpeq	.l1	0, A4, A4
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
		cmpeq	.l1	0, A4, A4
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
		cmpeq	.l1	0, A4, A4
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
		cmpeq	.l1	0, A4, A4
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
		cmpeq	.l1	0, A4, A4
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
	[A0]	b	.s2	.L71
		nop	5
		mvk	.s1	-8232, A17
		add	.d1	A4, A17, A18
		cmpltu	.l1	1, A18, A1
	[!A1]	b	.s2	.L72
		nop	5
		mvk	.d1	7, A19
		mvklh	.s1	65535, A19
		add	.d1	A4, A19, A4
		cmpltu	.l1	2, A4, A2
	[A2]	b	.s2	.L73
		nop	5
		mvk	.d1	1, A4
		b	.s2	.L70
		nop	5
.L71:
		mvk	.d1	1, A4
		b	.s2	.L70
		nop	5
.L72:
		mvk	.d1	1, A4
		b	.s2	.L70
		nop	5
.L73:
		mvk	.d1	0, A4
.L70:
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
		cmpeq	.l1	0, A4, A4
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
	[A0]	b	.s2	.L76
		nop	5
		add	.d1	A4, 1, A26
		clr	.s1	A26, 7, 31, A27
		mvk	.s1	32, A28
		cmpltu	.l1	A28, A27, A4
		b	.s2	.L77
		nop	5
.L76:
		mvk	.s1	8231, A5
		cmpltu	.l1	A5, A4, A6
		cmpeq	.l1	0, A6, A7
		mvk	.s1	-18475, A8
		mvklh	.s1	0, A8
		mvk	.s1	-8234, A9
		add	.d1	A4, A9, A16
		cmpltu	.l1	A8, A16, A17
		cmpeq	.l1	0, A17, A18
		or	.d1	A18, A7, A1
	[A1]	b	.s2	.L78
		nop	5
		mvk	.s1	8192, A19
		mvklh	.s1	65535, A19
		add	.d1	A4, A19, A20
		mvk	.s1	8184, A21
		cmpltu	.l1	A21, A20, A2
	[!A2]	b	.s2	.L79
		nop	5
		mvk	.d1	4, A22
		mvklh	.s1	65535, A22
		add	.d1	A4, A22, A23
		mvk	.d1	3, A24
		mvklh	.s1	16, A24
		cmpltu	.l1	A24, A23, A0
	[A0]	b	.s2	.L80
		nop	5
		mvk	.d1	-2, A25
		mvklh	.s1	0, A25
		and	.d1	A25, A4, A4
		cmpeq	.l1	A25, A4, A1
	[A1]	b	.s2	.L81
		nop	5
		mvk	.d1	1, A4
		b	.s2	.L77
		nop	5
.L78:
		mvk	.d1	1, A4
		b	.s2	.L77
		nop	5
.L79:
		mvk	.d1	1, A4
		b	.s2	.L77
		nop	5
.L80:
		mvk	.d1	0, A4
		b	.s2	.L77
		nop	5
.L81:
		mvk	.d1	0, A4
.L77:
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
	[!A0]	b	.s2	.L84
		nop	5
		set	.s1	A4, 5, 5, A4
		addk	.s1	-97, A4
		cmpltu	.l1	5, A4, A1
	[A1]	b	.s2	.L85
		nop	5
		mvk	.d1	1, A4
		b	.s2	.L83
		nop	5
.L84:
		mvk	.d1	1, A4
		b	.s2	.L83
		nop	5
.L85:
		mvk	.d1	0, A4
.L83:
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
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A10
		mv	.l1x	B5, A11
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L90
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L91
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A2
	[!A2]	b	.s2	.L94
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_subd), B3
		b	.s2	.L88
		nop	5
.L90:
		dmv	.s1	A13, A12, A5:A4
		b	.s2	.L88
		nop	5
.L91:
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L88
		nop	5
.L94:
		mvk	.d1	0, A4
		mvk	.d1	0, A5
.L88:
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
		mv	.d1	A4, A11
		mv	.l1x	B4, A10
		mv	.l2x	A11, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L102
		nop	5
		mv	.l2x	A10, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L103
		nop	5
		mv	.l2x	A10, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A2
	[!A2]	b	.s2	.L106
		nop	5
		mv	.l2x	A10, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_subf), B3
		b	.s2	.L100
		nop	5
.L102:
		mv	.d1	A11, A4
		b	.s2	.L100
		nop	5
.L103:
		mv	.d1	A10, A4
		b	.s2	.L100
		nop	5
.L106:
		mvk	.d1	0, A4
.L100:
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
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L115
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L112
		nop	5
		mv	.d1	A11, A3
		clr	.s1	A3, 0, 30, A4
		mv	.d1	A13, A5
		clr	.s1	A5, 0, 30, A6
		cmpeq	.l1	A6, A4, A2
	[A2]	b	.s2	.L113
		nop	5
		mv	.d1	A11, A7
		clr	.s1	A7, 0, 30, A1
	[!A1]	b	.s2	.L112
		nop	5
		dmv	.s1	A13, A12, A11:A10
		b	.s2	.L112
		nop	5
.L113:
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L112
		nop	5
		dmv	.s1	A13, A12, A11:A10
		b	.s2	.L112
		nop	5
.L115:
		dmv	.s1	A13, A12, A11:A10
.L112:
		dmv	.s1	A11, A10, A5:A4
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
		mv	.l2x	A10, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L128
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L125
		nop	5
		clr	.s1	A10, 0, 30, A4
		clr	.s1	A11, 0, 30, A3
		cmpeq	.l1	A3, A4, A2
	[A2]	b	.s2	.L126
		nop	5
		clr	.s1	A10, 0, 30, A1
	[!A1]	b	.s2	.L125
		nop	5
		mv	.d1	A11, A10
		b	.s2	.L125
		nop	5
.L126:
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L125
		nop	5
		mv	.d1	A11, A10
		b	.s2	.L125
		nop	5
.L128:
		mv	.d1	A11, A10
.L125:
		mv	.d1	A10, A4
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
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L141
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L138
		nop	5
		mv	.d1	A11, A3
		clr	.s1	A3, 0, 30, A4
		mv	.d1	A13, A5
		clr	.s1	A5, 0, 30, A6
		cmpeq	.l1	A6, A4, A2
	[A2]	b	.s2	.L139
		nop	5
		mv	.d1	A11, A7
		clr	.s1	A7, 0, 30, A1
	[!A1]	b	.s2	.L138
		nop	5
		dmv	.s1	A13, A12, A11:A10
		b	.s2	.L138
		nop	5
.L139:
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L138
		nop	5
		dmv	.s1	A13, A12, A11:A10
		b	.s2	.L138
		nop	5
.L141:
		dmv	.s1	A13, A12, A11:A10
.L138:
		dmv	.s1	A11, A10, A5:A4
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
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L151
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L155
		nop	5
		mv	.d1	A13, A3
		clr	.s1	A3, 0, 30, A4
		mv	.d1	A11, A5
		clr	.s1	A5, 0, 30, A6
		cmpeq	.l1	A6, A4, A2
	[A2]	b	.s2	.L152
		nop	5
		mv	.d1	A13, A7
		clr	.s1	A7, 0, 30, A1
	[!A1]	b	.s2	.L151
		nop	5
		dmv	.s1	A13, A12, A11:A10
		b	.s2	.L151
		nop	5
.L152:
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L151
		nop	5
		dmv	.s1	A13, A12, A11:A10
		b	.s2	.L151
		nop	5
.L155:
		dmv	.s1	A13, A12, A11:A10
.L151:
		dmv	.s1	A11, A10, A5:A4
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
		mv	.l2x	A11, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L164
		nop	5
		mv	.l2x	A10, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L168
		nop	5
		clr	.s1	A11, 0, 30, A4
		clr	.s1	A10, 0, 30, A3
		cmpeq	.l1	A3, A4, A2
	[A2]	b	.s2	.L165
		nop	5
		clr	.s1	A11, 0, 30, A1
	[!A1]	b	.s2	.L164
		nop	5
		mv	.d1	A11, A10
		b	.s2	.L164
		nop	5
.L165:
		mv	.l2x	A10, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L164
		nop	5
		mv	.d1	A11, A10
		b	.s2	.L164
		nop	5
.L168:
		mv	.d1	A11, A10
.L164:
		mv	.d1	A10, A4
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
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L177
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L181
		nop	5
		mv	.d1	A13, A3
		clr	.s1	A3, 0, 30, A4
		mv	.d1	A11, A5
		clr	.s1	A5, 0, 30, A6
		cmpeq	.l1	A6, A4, A2
	[A2]	b	.s2	.L178
		nop	5
		mv	.d1	A13, A7
		clr	.s1	A7, 0, 30, A1
	[!A1]	b	.s2	.L177
		nop	5
		dmv	.s1	A13, A12, A11:A10
		b	.s2	.L177
		nop	5
.L178:
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L177
		nop	5
		dmv	.s1	A13, A12, A11:A10
		b	.s2	.L177
		nop	5
.L181:
		dmv	.s1	A13, A12, A11:A10
.L177:
		dmv	.s1	A11, A10, A5:A4
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
		ldw	.d2t1	*+B14($GOT(s.0)), A3
		nop	4
		b	.s2	.L190
		nop	5
.L191:
		clr	.s1	A0, 6, 31, A5
		ldw	.d2t1	*+B14($GOT(digits)), A4
		nop	4
		add	.d1	A4, A5, A6
		ldb	.d1t1	*A6, A7
		nop	4
		stb	.d1t1	A7, *A3++[1]
		shru	.s1	A0, 6, A0
.L190:
	[A0]	b	.s2	.L191
		nop	5
		stb	.d1t1	A0, *A3
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
		mvk	.d1	0, A0
		mvk	.d1	0, A1
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
		mvk	.d1	0, A7
		addu	.l1	A0, A16, A7:A6
		add	.d1	A7, A9, A7
		stdw	.d1t1	A7:A6, *A5
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		shru	.s1	A7, 1, A4
		mvk	.d1	0, A5
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
	[A0]	b	.s2	.L195
		nop	5
		stw	.d1t1	A0, *+A4(4)
		stw	.d1t1	A0, *A4
		b	.s2	.L194
		nop	5
.L195:
		ldw	.d1t1	*A0, A3
		nop	4
		stw	.d1t1	A3, *A4
		stw	.d1t1	A0, *+A4(4)
		stw	.d1t1	A4, *A0
		ldw	.d1t1	*A4, A1
		nop	4
	[!A1]	b	.s2	.L194
		nop	5
		stw	.d1t1	A4, *+A1(4)
.L194:
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
	[!A0]	b	.s2	.L198
		nop	5
		ldw	.d1t1	*+A4(4), A3
		nop	4
		stw	.d1t1	A3, *+A0(4)
.L198:
		ldw	.d1t1	*+A4(4), A1
		nop	4
	[!A1]	b	.s2	.L197
		nop	5
		ldw	.d1t1	*A4, A4
		nop	4
		stw	.d1t1	A4, *A1
.L197:
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
		mv	.l1x	B4, A10
		mv	.l2x	A6, B10
		mv	.l1x	B6, A11
		mv	.l2x	A8, B12
		ldw	.d2t1	*B10, A13
		nop	4
		mv	.l2x	A10, B11
		mvk	.d1	0, A12
		b	.s2	.L201
		nop	5
.L204:
		mv	.d2	B11, B4
		mv	.d1	A14, A4
		call	.s2	B12
		addkpc	.s2	.L205, B3, 4
.L205:
		add	.d2x	B11, A11, B11
		mv	.d1	A4, A1
	[A1]	b	.s2	.L202
		nop	5
		mpy32	.m1	A12, A11, A4
		nop	3
		add	.d1	A10, A4, A4
		b	.s2	.L203
		nop	5
.L202:
		add	.d1	A12, 1, A12
.L201:
		cmpeq	.l1	A13, A12, A0
	[!A0]	b	.s2	.L204
		nop	5
		add	.d1	A13, 1, A3
		stw	.d2t1	A3, *B10
		mpy32	.m1	A11, A13, A13
		nop	3
		add	.d1	A10, A13, A4
		mv	.d1	A11, A6
		mv	.l2x	A14, B4
		callp	.s2	(memcpy), B3
.L203:
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
		mv	.l2x	A4, B11
		mv	.l1x	B4, A10
		mv	.l1x	B6, A12
		mv	.d1	A8, A14
		ldw	.d1t2	*A6, B10
		nop	4
		mv	.d1	A10, A13
		mvk	.d1	0, A11
		b	.s2	.L208
		nop	5
.L211:
		mv	.l2x	A13, B4
		mv	.l1x	B11, A4
		call	.s2x	A14
		addkpc	.s2	.L212, B3, 4
.L212:
		add	.d1	A13, A12, A13
		mv	.d1	A4, A1
	[A1]	b	.s2	.L209
		nop	5
		mpy32	.m1	A11, A12, A4
		nop	3
		add	.d1	A10, A4, A4
		b	.s2	.L210
		nop	5
.L209:
		add	.d1	A11, 1, A11
.L208:
		mv	.l1x	B10, A3
		cmpeq	.l1	A3, A11, A0
	[!A0]	b	.s2	.L211
		nop	5
		mvk	.d1	0, A4
.L210:
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
		mv	.d1	A11, A10
.L215:
		mv	.d1	A11, A10
		ldb	.d1t1	*A11++[1], A4
		nop	4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L215
		nop	5
		ldb	.d1t1	*A10, A4
		nop	4
		mvk	.s1	43, A3
		cmpeq	.l1	A3, A4, A1
	[A1]	b	.s2	.L221
		nop	5
		mvk	.s1	45, A5
		cmpeq	.l1	A5, A4, A2
	[!A2]	b	.s2	.L222
		nop	5
		mvk	.d2	1, B1
		b	.s2	.L216
		nop	5
.L221:
		mvk	.d2	0, B1
.L216:
		add	.d1	A10, 1, A10
		b	.s2	.L217
		nop	5
.L222:
		mvk	.d2	0, B1
.L217:
		sub	.d1	A10, 1, A6
		mvk	.d1	0, A4
		b	.s2	.L218
		nop	5
.L219:
		shl	.s1	A4, 2, A8
		add	.d1	A8, A4, A9
		shl	.s1	A9, 1, A16
		mv	.d1	A16, A0
		ldb	.d1t1	*A6, A17
		nop	4
		subah	.d1	A17, 24, A17
		sub	.d1	A16, A17, A4
.L218:
		add	.d1	A6, 1, A6
		ldb	.d1t1	*A6, A7
		nop	4
		subah	.d1	A7, 24, A7
		cmpltu	.l2x	9, A7, B0
	[!B0]	b	.s2	.L219
		nop	5
	[B1]	b	.s2	.L220
		nop	5
		neg	.l1	A4, A4
.L220:
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
		mv	.d1	A11, A10
.L226:
		mv	.d1	A11, A10
		ldb	.d1t1	*A11++[1], A4
		nop	4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L226
		nop	5
		ldb	.d1t1	*A10, A4
		nop	4
		mvk	.s1	43, A3
		cmpeq	.l1	A3, A4, A1
	[A1]	b	.s2	.L232
		nop	5
		mvk	.s1	45, A5
		cmpeq	.l1	A5, A4, A2
	[!A2]	b	.s2	.L233
		nop	5
		mvk	.d2	1, B1
		b	.s2	.L227
		nop	5
.L232:
		mvk	.d2	0, B1
.L227:
		add	.d1	A10, 1, A10
		b	.s2	.L228
		nop	5
.L233:
		mvk	.d2	0, B1
.L228:
		sub	.d1	A10, 1, A6
		mvk	.d1	0, A4
		b	.s2	.L229
		nop	5
.L230:
		shl	.s1	A4, 2, A8
		add	.d1	A8, A4, A9
		shl	.s1	A9, 1, A16
		mv	.d1	A16, A0
		ldb	.d1t1	*A6, A17
		nop	4
		subah	.d1	A17, 24, A17
		sub	.d1	A16, A17, A4
.L229:
		add	.d1	A6, 1, A6
		ldb	.d1t1	*A6, A7
		nop	4
		subah	.d1	A7, 24, A7
		cmpltu	.l2x	9, A7, B0
	[!B0]	b	.s2	.L230
		nop	5
	[B1]	b	.s2	.L231
		nop	5
		neg	.l1	A4, A4
.L231:
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
		mv	.d1	A13, A12
.L237:
		mv	.d1	A13, A12
		ldb	.d1t1	*A13++[1], A4
		nop	4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L237
		nop	5
		ldb	.d1t1	*A12, A4
		nop	4
		mvk	.s1	43, A3
		cmpeq	.l1	A3, A4, A1
	[A1]	b	.s2	.L243
		nop	5
		mvk	.s1	45, A5
		cmpeq	.l1	A5, A4, A2
	[!A2]	b	.s2	.L244
		nop	5
		mvk	.d2	1, B1
		b	.s2	.L238
		nop	5
.L243:
		mvk	.d2	0, B1
.L238:
		add	.d1	A12, 1, A12
		b	.s2	.L239
		nop	5
.L244:
		mvk	.d2	0, B1
.L239:
		sub	.d1	A12, 1, A8
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		b	.s2	.L240
		nop	5
.L241:
		addu	.l1	A4, A4, A1:A0
		add	.d1	A1, A5, A10
		add	.d1	A10, A5, A11
		addu	.l1	A0, A0, A7:A6
		add	.d1	A7, A11, A16
		add	.d1	A16, A11, A17
		addu	.l1	A6, A4, A1:A0
		add	.d1	A1, A17, A18
		add	.d1	A18, A5, A19
		addu	.l1	A0, A0, A7:A6
		add	.d1	A7, A19, A20
		add	.d1	A20, A19, A7
		dmv	.s1	A7, A6, A1:A0
		ldb	.d1t1	*A8, A21
		nop	4
		subah	.d1	A21, 24, A21
		mv	.d1	A21, A22
		shr	.s1	A21, 31, A23
		sub	.d1	A6, A22, A4
		cmpltu	.l1	A6, A4, A24
		sub	.d1	A7, A23, A25
		sub	.d1	A25, A24, A5
.L240:
		add	.d1	A8, 1, A8
		ldb	.d1t1	*A8, A6
		nop	4
		subah	.d1	A6, 24, A6
		cmpltu	.l2x	9, A6, B0
	[!B0]	b	.s2	.L241
		nop	5
	[B1]	b	.s2	.L242
		nop	5
		neg	.l1	A4, A0
		cmpltu	.l1	0, A0, A7
		neg	.l1	A5, A9
		sub	.d1	A9, A7, A1
		dmv	.s1	A1, A0, A5:A4
.L242:
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
		mv	.d1	A6, A10
		mv	.l1x	B6, A12
		mv	.d1	A8, A13
		b	.s2	.L248
		nop	5
.L252:
		shru	.s1	A10, 1, A11
		mpy32	.m1	A11, A12, A3
		nop	3
		add	.d1x	A3, B10, A11
		mv	.l2x	A11, B4
		mv	.d1	A14, A4
		call	.s2x	A13
		addkpc	.s2	.L254, B3, 4
.L254:
		cmpgt	.l1	0, A4, A1
	[!A1]	b	.s2	.L249
		nop	5
		shru	.s1	A10, 1, A10
		b	.s2	.L248
		nop	5
.L249:
		cmplt	.l1	0, A4, A2
	[!A2]	b	.s2	.L253
		nop	5
		add	.d1	A11, A12, A4
		mv	.l2x	A4, B10
		shru	.s1	A10, 1, A5
		sub	.d1	A10, 1, A10
		sub	.d1	A10, A5, A10
.L248:
		mv	.d1	A10, A0
	[A0]	b	.s2	.L252
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L251
		nop	5
.L253:
		mv	.d1	A11, A4
.L251:
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
		b	.s2	.L256
		nop	5
.L259:
		shr	.s1	A11, 1, A10
		mpy32	.m1	A10, A13, A3
		nop	3
		add	.d1	A12, A3, A10
		mv	.d1	A14, A6
		mv	.l2x	A10, B4
		mv	.l1x	B11, A4
		call	.s2	B10
		addkpc	.s2	.L261, B3, 4
.L261:
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L260
		nop	5
		cmplt	.l1	0, A1, A2
	[!A2]	b	.s2	.L258
		nop	5
		add	.d1	A10, A13, A12
		sub	.d1	A11, 1, A11
.L258:
		shr	.s1	A11, 1, A11
.L256:
		mv	.d1	A11, A0
	[A0]	b	.s2	.L259
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L257
		nop	5
.L260:
		mv	.d1	A10, A4
.L257:
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
		mv	.d1	A4, A3
		mv	.l1x	B4, A9
		mv	.d1	A3, A4
		mv	.l2x	A9, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L263, B3, 4
.L263:
		mv	.d1	A4, A8
		mv	.d1	A5, A7
		mv	.d1	A3, A4
		mv	.l2x	A9, B4
		mv	.d1	A8, A4
		stw	.d1t1	A8, *-A15(16)
		stw	.d1t1	A7, *-A15(12)
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.d1	A8, A4
		mv	.d1	A7, A5
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
		dmv	.s1	A5, A4, A7:A6
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shr	.s1	A7, 31, A3
		mv	.d1	A3, A8
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		xor	.d1	A6, A3, A4
		xor	.d1	A7, A8, A5
		sub	.d1	A4, A3, A6
		cmpltu	.l1	A4, A6, A9
		sub	.d1	A5, A8, A7
		sub	.d1	A7, A9, A7
		dmv	.s1	A7, A6, A5:A4
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
		mv	.d1	A4, A3
		mv	.l1x	B4, A9
		mv	.d1	A3, A4
		mv	.l2x	A9, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L270, B3, 4
.L270:
		mv	.d1	A4, A8
		mv	.d1	A5, A7
		mv	.d1	A3, A4
		mv	.l2x	A9, B4
		mv	.d1	A8, A4
		stw	.d1t1	A8, *-A15(16)
		stw	.d1t1	A7, *-A15(12)
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.d1	A8, A4
		mv	.d1	A7, A5
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
		dmv	.s1	A5, A4, A7:A6
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shr	.s1	A7, 31, A3
		mv	.d1	A3, A8
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		xor	.d1	A6, A3, A4
		xor	.d1	A7, A8, A5
		sub	.d1	A4, A3, A6
		cmpltu	.l1	A4, A6, A9
		sub	.d1	A5, A8, A7
		sub	.d1	A7, A9, A7
		dmv	.s1	A7, A6, A5:A4
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
.L277:
		mv	.d1	A4, A3
		ldw	.d1t1	*A4++[1], A1
		nop	4
	[!A1]	b	.s2	.L276
		nop	5
		ldw	.d1t1	*-A4(4), A5
		nop	4
		cmpeq	.l1x	A5, B4, A0
	[!A0]	b	.s2	.L277
		nop	5
.L276:
		ldw	.d1t1	*A3, A2
		nop	4
	[!A2]	b	.s2	.L279
		nop	5
		mv	.d1	A3, A4
		b	.s2	.L278
		nop	5
.L279:
		mvk	.d1	0, A4
.L278:
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
.L282:
		mv	.l1x	B4, A3
		mv	.d1	A4, A5
		ldw	.d1t1	*A4++[1], A7
		nop	4
		ldw	.d2t1	*B4++[1], A6
		nop	4
		cmpeq	.l1	A6, A7, A0
	[!A0]	b	.s2	.L281
		nop	5
		ldw	.d1t1	*-A4(4), A1
		nop	4
	[!A1]	b	.s2	.L281
		nop	5
		ldw	.d2t1	*-B4(4), A2
		nop	4
	[A2]	b	.s2	.L282
		nop	5
.L281:
		ldw	.d1t1	*A5, A8
		nop	4
		ldw	.d1t1	*A3, A4
		nop	4
		cmpgt	.l1	A4, A8, A0
	[A0]	b	.s2	.L284
		nop	5
		ldw	.d1t1	*A5, A9
		nop	4
		ldw	.d1t1	*A3, A16
		nop	4
		cmplt	.l1	A16, A9, A4
		b	.s2	.L283
		nop	5
.L284:
		mvk	.d1	-1, A4
.L283:
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
.L286:
		ldw	.d2t1	*B4++[1], A1
		nop	4
		add	.d1	A3, 4, A3
		stw	.d1t1	A1, *A3
	[A1]	b	.s2	.L286
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
		mv	.d1	A4, A3
.L288:
		mv	.d1	A3, A5
		ldw	.d1t1	*A3++[1], A1
		nop	4
	[A1]	b	.s2	.L288
		nop	5
		sub	.d1	A5, A4, A4
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
		mv	.d1	A6, A0
		b	.s2	.L290
		nop	5
.L292:
		sub	.d1	A0, 1, A0
.L290:
		mv	.l1x	B4, A3
		mv	.d1	A4, A5
	[!A0]	b	.s2	.L291
		nop	5
		ldw	.d1t1	*A4, A7
		nop	4
		ldw	.d2t1	*B4, A6
		nop	4
		cmpeq	.l1	A6, A7, A1
	[!A1]	b	.s2	.L291
		nop	5
		ldw	.d1t1	*A4++[1], A2
		nop	4
	[!A2]	b	.s2	.L291
		nop	5
		ldw	.d2t1	*B4++[1], A1
		nop	4
	[A1]	b	.s2	.L292
		nop	5
.L291:
	[!A0]	b	.s2	.L294
		nop	5
		ldw	.d1t1	*A5, A8
		nop	4
		ldw	.d1t1	*A3, A4
		nop	4
		cmpgt	.l1	A4, A8, A0
	[A0]	b	.s2	.L295
		nop	5
		ldw	.d1t1	*A5, A9
		nop	4
		ldw	.d1t1	*A3, A16
		nop	4
		cmplt	.l1	A16, A9, A4
		b	.s2	.L293
		nop	5
.L294:
		mvk	.d1	0, A4
		b	.s2	.L293
		nop	5
.L295:
		mvk	.d1	-1, A4
.L293:
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
		mv	.d1	A6, A0
		b	.s2	.L297
		nop	5
.L299:
		sub	.d1	A0, 1, A0
.L297:
		mv	.d1	A4, A3
	[!A0]	b	.s2	.L298
		nop	5
		ldw	.d1t1	*A4++[1], A5
		nop	4
		cmpeq	.l1x	A5, B4, A1
	[!A1]	b	.s2	.L299
		nop	5
.L298:
	[!A0]	b	.s2	.L301
		nop	5
		mv	.d1	A3, A4
		b	.s2	.L300
		nop	5
.L301:
		mvk	.d1	0, A4
.L300:
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
		b	.s2	.L303
		nop	5
.L305:
		sub	.d1	A2, 1, A2
.L303:
		mv	.l1x	B4, A3
		mv	.d1	A4, A5
	[!A2]	b	.s2	.L304
		nop	5
		ldw	.d1t1	*A4++[1], A7
		nop	4
		ldw	.d2t1	*B4++[1], A6
		nop	4
		cmpeq	.l1	A6, A7, A1
	[A1]	b	.s2	.L305
		nop	5
.L304:
	[!A2]	b	.s2	.L307
		nop	5
		ldw	.d1t1	*A5, A8
		nop	4
		ldw	.d1t1	*A3, A4
		nop	4
		cmpgt	.l1	A4, A8, A0
	[A0]	b	.s2	.L308
		nop	5
		ldw	.d1t1	*A5, A9
		nop	4
		ldw	.d1t1	*A3, A16
		nop	4
		cmplt	.l1	A16, A9, A4
		b	.s2	.L306
		nop	5
.L307:
		mvk	.d1	0, A4
		b	.s2	.L306
		nop	5
.L308:
		mvk	.d1	-1, A4
.L306:
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
		sub	.d1	A4, 4, A5
		b	.s2	.L310
		nop	5
.L311:
		ldw	.d2t1	*B4++[1], A3
		nop	4
		add	.d1	A5, 4, A5
		stw	.d1t1	A3, *A5
.L310:
		sub	.d1	A6, 1, A6
		cmpeq	.l1	-1, A6, A1
	[!A1]	b	.s2	.L311
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
	[A0]	b	.s2	.L313
		nop	5
		sub	.d1	A4, A3, A5
		shl	.s1	A6, 2, A7
		cmpgtu	.l1	A7, A5, A1
	[A1]	b	.s2	.L314
		nop	5
		sub	.d1	A4, 4, A9
		b	.s2	.L315
		nop	5
.L314:
		shl	.s1	A6, 2, A6
		add	.d2x	B4, A6, B4
		add	.d1	A4, A6, A18
		mv	.d1	A4, A16
		b	.s2	.L316
		nop	5
.L317:
		sub	.d2	B4, 4, B4
		ldw	.d2t1	*B4, A17
		nop	4
		sub	.d1	A18, 4, A18
		stw	.d1t1	A17, *A18
.L316:
		cmpeq	.l1	A16, A18, A1
	[!A1]	b	.s2	.L317
		nop	5
		b	.s2	.L313
		nop	5
.L318:
		ldw	.d2t1	*B4++[1], A8
		nop	4
		add	.d1	A9, 4, A9
		stw	.d1t1	A8, *A9
.L315:
		sub	.d1	A6, 1, A6
		cmpeq	.l1	-1, A6, A2
	[!A2]	b	.s2	.L318
		nop	5
.L313:
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
		b	.s2	.L320
		nop	5
.L321:
		stw	.d1t2	B4, *A3++[1]
.L320:
		sub	.d1	A6, 1, A6
		cmpeq	.l1	-1, A6, A1
	[!A1]	b	.s2	.L321
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
	[!A0]	b	.s2	.L323
		nop	5
		add	.d1	A4, A6, A8
		add	.d2x	B4, A6, B5
		b	.s2	.L324
		nop	5
.L325:
		ldb	.d1t1	*--A8[1], A9
		nop	4
		sub	.d2	B5, 1, B5
		stb	.d2t1	A9, *B5
.L324:
		cmpeq	.l1	A4, A8, A1
	[!A1]	b	.s2	.L325
		nop	5
		b	.s2	.L322
		nop	5
.L323:
		mv	.l1x	B4, A5
		cmpeq	.l1	A5, A4, A1
	[A1]	b	.s2	.L322
		nop	5
		sub	.d2	B4, 1, B4
		add	.d1	A4, A6, A6
		mv	.d1	A4, A4
		b	.s2	.L327
		nop	5
.L328:
		ldb	.d1t1	*A4++[1], A7
		nop	4
		add	.d2	B4, 1, B4
		stb	.d2t1	A7, *B4
.L327:
		cmpeq	.l1	A6, A4, A2
	[!A2]	b	.s2	.L328
		nop	5
.L322:
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
		mv	.l1x	B4, A3
		subah	.d1	A3, 16, A3
		cmpgt	.l1	0, A3, A1
	[A1]	b	.s2	.L330
		nop	5
		mvk	.d1	0, A20
		mvk	.d1	0, A7
		shl	.s1	A4, A3, A19
		b	.s2	.L331
		nop	5
.L330:
		shru	.s1	A4, 1, A7
		mvk	.s1	31, A8
		mv	.l1x	B4, A6
		sub	.d1	A8, A6, A9
		shru	.s1	A7, A9, A16
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		mv	.l1x	B4, A17
		shl	.s1	A5, A17, A18
		or	.d1	A18, A16, A19
		shl	.s1	A4, A17, A20
.L331:
		neg	.l1x	B4, A21
		clr	.s1	A21, 6, 31, A22
		subah	.d1	A22, 16, A22
		cmpgt	.l1	0, A22, A0
	[A0]	b	.s2	.L332
		nop	5
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A5, A22, A28
		mvk	.d1	0, A29
		b	.s2	.L333
		nop	5
.L332:
		shl	.s1	A5, 1, A23
		neg	.l2	B4, B4
		clr	.s2	B4, 6, 31, B5
		mvk	.s1	31, A24
		mv	.l1x	B5, A25
		sub	.d1	A24, A25, A26
		shl	.s1	A23, A26, A27
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A4, A25, A4
		or	.d1	A4, A27, A28
		shru	.s1	A5, A25, A29
.L333:
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		or	.d1	A20, A28, A4
		or	.d1	A19, A29, A5
		dmv	.s1	A5, A4, A1:A0
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
	[A1]	b	.s2	.L335
		nop	5
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		shru	.s1	A5, A3, A19
		mvk	.d1	0, A20
		b	.s2	.L336
		nop	5
.L335:
		shl	.s1	A5, 1, A7
		mvk	.s1	31, A8
		mv	.l1x	B4, A6
		sub	.d1	A8, A6, A9
		shl	.s1	A7, A9, A16
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		mv	.l1x	B4, A17
		shru	.s1	A4, A17, A18
		or	.d1	A18, A16, A19
		shru	.s1	A5, A17, A20
.L336:
		neg	.l1x	B4, A21
		clr	.s1	A21, 6, 31, A22
		subah	.d1	A22, 16, A22
		cmpgt	.l1	0, A22, A0
	[A0]	b	.s2	.L337
		nop	5
		mvk	.d1	0, A29
		mvk	.d1	0, A1
		shl	.s1	A4, A22, A28
		b	.s2	.L338
		nop	5
.L337:
		shru	.s1	A4, 1, A23
		neg	.l2	B4, B4
		clr	.s2	B4, 6, 31, B5
		mvk	.s1	31, A24
		mv	.l1x	B5, A25
		sub	.d1	A24, A25, A26
		shru	.s1	A23, A26, A27
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shl	.s1	A5, A25, A5
		or	.d1	A5, A27, A28
		shl	.s1	A4, A25, A29
.L338:
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		or	.d1	A19, A29, A4
		or	.d1	A20, A28, A5
		dmv	.s1	A5, A4, A1:A0
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
		extu	.s1	A4, 16, 16, A4
		mv	.l1x	B4, A3
		shl	.s1	A4, A3, A6
		mvk	.s1	16, A7
		mv	.l1x	B4, A5
		sub	.d1	A7, A5, A8
		shru	.s1	A4, A8, A9
		or	.d1	A6, A9, A4
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
		extu	.s1	A4, 16, 16, A4
		mv	.l1x	B4, A3
		shru	.s1	A4, A3, A6
		mvk	.s1	16, A7
		mv	.l1x	B4, A5
		sub	.d1	A7, A5, A8
		shl	.s1	A4, A8, A9
		or	.d1	A6, A9, A4
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
		extu	.s1	A4, 24, 24, A4
		mv	.l1x	B4, A3
		shl	.s1	A4, A3, A5
		sub	.l2	8, B4, B4
		mv	.l1x	B4, A6
		shru	.s1	A4, A6, A7
		or	.d1	A5, A7, A4
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
		extu	.s1	A4, 24, 24, A4
		mv	.l1x	B4, A3
		shru	.s1	A4, A3, A5
		sub	.l2	8, B4, B4
		mv	.l1x	B4, A6
		shl	.s1	A4, A6, A7
		or	.d1	A5, A7, A4
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
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		clr	.s1	A5, 0, 23, A7
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A7, 24, A3
		mvk	.d1	0, A1
		mvk	.d1	0, A8
		mvk	.d1	0, A9
		mvk	.d1	0, A18
		mvklh	.s1	255, A18
		and	.d1	A18, A5, A9
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		shru	.s1	A9, 8, A6
		mvk	.d1	0, A7
		mvk	.d1	0, A16
		mvk	.d1	0, A17
		or	.d1	A3, A6, A16
		mvk	.d1	0, A17
		mvk	.d1	0, A8
		mvk	.d1	0, A7
		mvk	.s1	-256, A17
		mvklh	.s1	0, A17
		and	.d1	A17, A5, A19
		shl	.s1	A19, 8, A20
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A8, 24, A21
		or	.d1	A21, A20, A22
		shru	.s1	A19, 24, A23
		mvk	.d1	0, A8
		mvk	.d1	0, A9
		or	.d1	A22, A16, A24
		mv	.d1	A23, A25
		mvk	.d1	0, A26
		mvk	.d1	0, A7
		mvk	.s1	255, A27
		and	.d1	A5, A27, A28
		shl	.s1	A28, 24, A5
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A26, 8, A29
		or	.d1	A29, A5, A30
		shru	.s1	A28, 8, A31
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		or	.d1	A30, A24, A3
		or	.d1	A31, A25, A2
		mvk	.d1	0, A8
		mvk	.d1	0, A9
		clr	.s1	A4, 0, 23, A7
		mvk	.d1	0, A9
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A7, 24, A6
		shl	.s1	A7, 8, A16
		mvk	.d1	0, A8
		mvk	.d1	0, A9
		or	.d1	A16, A3, A8
		or	.d1	A6, A2, A9
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		and	.d1	A18, A4, A18
		mvk	.d1	0, A7
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A18, 8, A19
		shl	.s1	A18, 24, A20
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		or	.d1	A20, A8, A21
		or	.d1	A19, A9, A22
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		and	.d1	A17, A4, A17
		mvk	.d1	0, A1
		mvk	.d1	0, A8
		mvk	.d1	0, A9
		shl	.s1	A17, 8, A23
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mv	.d1	A21, A24
		or	.d1	A23, A22, A25
		mvk	.d1	0, A8
		mvk	.d1	0, A9
		and	.d1	A4, A27, A4
		mvk	.d1	0, A9
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		shl	.s1	A4, 24, A26
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.d1	A24, A4
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
		mvk	.d1	0, A6
		b	.s2	.L351
		nop	5
.L354:
		shru	.s1	A4, A6, A5
		and	.d1	1, A5, A2
	[!A2]	b	.s2	.L352
		nop	5
		add	.d1	A6, 1, A4
		b	.s2	.L353
		nop	5
.L352:
		add	.d1	A6, 1, A6
.L351:
		mvk	.s1	32, A3
		cmpeq	.l1	A3, A6, A1
	[!A1]	b	.s2	.L354
		nop	5
		mvk	.d1	0, A4
.L353:
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
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L359
		nop	5
		mvk	.d1	1, A4
		b	.s2	.L357
		nop	5
.L358:
		shr	.s1	A1, 1, A1
		add	.d1	A4, 1, A4
.L357:
		and	.d1	1, A1, A2
	[!A2]	b	.s2	.L358
		nop	5
		b	.s2	.L356
		nop	5
.L359:
		mvk	.d1	0, A4
.L356:
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
	[A0]	b	.s2	.L363
		nop	5
		mvk	.d2	-1, B4
		mvklh	.s2	32639, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L366
		nop	5
		mvk	.d1	1, A4
		b	.s2	.L361
		nop	5
.L363:
		mvk	.d1	1, A4
		b	.s2	.L361
		nop	5
.L366:
		mvk	.d1	0, A4
.L361:
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
	[A0]	b	.s2	.L372
		nop	5
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	32751, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L375
		nop	5
		mvk	.d1	1, A4
		b	.s2	.L370
		nop	5
.L372:
		mvk	.d1	1, A4
		b	.s2	.L370
		nop	5
.L375:
		mvk	.d1	0, A4
.L370:
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
	[A0]	b	.s2	.L381
		nop	5
		mvk	.d2	-1, B4
		mvk	.d2	-1, B5
		mvklh	.s2	32751, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L384
		nop	5
		mvk	.d1	1, A4
		b	.s2	.L379
		nop	5
.L381:
		mvk	.d1	1, A4
		b	.s2	.L379
		nop	5
.L384:
		mvk	.d1	0, A4
.L379:
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
		mv	.d1	A4, A10
		mv	.l1x	B4, A11
		mv	.l2x	A10, B4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L390
		nop	5
		mv	.l2x	A10, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_addf), B3
		mv	.l2x	A4, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_eqf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L390
		nop	5
		cmpgt	.l1	0, A11, A2
	[!A2]	b	.s2	.L394
		nop	5
		mvk	.d1	0, A12
		mvklh	.s1	16128, A12
		b	.s2	.L393
		nop	5
.L394:
		mvk	.d1	0, A12
		mvklh	.s1	16384, A12
.L393:
		and	.d1	1, A11, A0
	[!A0]	b	.s2	.L392
		nop	5
		mv	.l2x	A12, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A10
.L392:
		shru	.s1	A11, 31, A3
		add	.d1	A3, A11, A11
		shr	.s1	A11, 1, A11
		mv	.d1	A11, A1
	[!A1]	b	.s2	.L390
		nop	5
		mv	.l2x	A12, B4
		mv	.d1	A12, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A12
		b	.s2	.L393
		nop	5
.L390:
		mv	.d1	A10, A4
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
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A12
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L401
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L401
		nop	5
		cmpgt	.l1	0, A12, A2
	[!A2]	b	.s2	.L405
		nop	5
		mvk	.d2	0, B10
		mvk	.d2	0, B11
		mvklh	.s2	16352, B11
		b	.s2	.L404
		nop	5
.L405:
		mvk	.d2	0, B10
		mvk	.d2	0, B11
		mvklh	.s2	16384, B11
.L404:
		and	.d1	1, A12, A0
	[!A0]	b	.s2	.L403
		nop	5
		dmv	.s2	B11, B10, B5:B4
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A11:A10
.L403:
		shru	.s1	A12, 31, A3
		add	.d1	A3, A12, A12
		shr	.s1	A12, 1, A12
		mv	.d1	A12, A1
	[!A1]	b	.s2	.L401
		nop	5
		dmv	.s2	B11, B10, B5:B4
		mv	.l1x	B10, A4
		mv	.l1x	B11, A5
		callp	.s2	(__c6xabi_mpyd), B3
		mv	.l2x	A4, B10
		mv	.l2x	A5, B11
		b	.s2	.L404
		nop	5
.L401:
		dmv	.s1	A11, A10, A5:A4
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
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
		stw	.d2t1	A12, *+B15(20)
		stw	.d2t1	A11, *+B15(16)
		stw	.d2t1	A10, *+B15(12)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		mv	.l1x	B4, A12
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L412
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L412
		nop	5
		cmpgt	.l1	0, A12, A2
	[!A2]	b	.s2	.L416
		nop	5
		mvk	.d2	0, B10
		mvk	.d2	0, B11
		mvklh	.s2	16352, B11
		b	.s2	.L415
		nop	5
.L416:
		mvk	.d2	0, B10
		mvk	.d2	0, B11
		mvklh	.s2	16384, B11
.L415:
		and	.d1	1, A12, A0
	[!A0]	b	.s2	.L414
		nop	5
		dmv	.s2	B11, B10, B5:B4
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A11:A10
.L414:
		shru	.s1	A12, 31, A3
		add	.d1	A3, A12, A12
		shr	.s1	A12, 1, A12
		mv	.d1	A12, A1
	[!A1]	b	.s2	.L412
		nop	5
		dmv	.s2	B11, B10, B5:B4
		mv	.l1x	B10, A4
		mv	.l1x	B11, A5
		callp	.s2	(__c6xabi_mpyd), B3
		mv	.l2x	A4, B10
		mv	.l2x	A5, B11
		b	.s2	.L415
		nop	5
.L412:
		dmv	.s1	A11, A10, A5:A4
		ldw	.d2t1	*+B15(12), A10
		nop	4
		ldw	.d2t1	*+B15(16), A11
		nop	4
		ldw	.d2t1	*+B15(20), A12
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
		add	.d1x	A6, B4, A6
		mv	.d1	A4, A7
		b	.s2	.L423
		nop	5
.L424:
		ldb	.d2t1	*B4++[1], A3
		nop	4
		ldb	.d1t1	*A7++[1], A5
		nop	4
		xor	.d1	A5, A3, A8
		stb	.d1t1	A8, *-A7(1)
.L423:
		cmpeq	.l1x	A6, B4, A1
	[!A1]	b	.s2	.L424
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
		add	.d1	A12, A4, A4
		b	.s2	.L426
		nop	5
.L428:
		sub	.d1	A11, 1, A11
.L426:
		mv	.d1	A4, A3
		mv	.d1	A11, A0
	[!A0]	b	.s2	.L427
		nop	5
		add	.d2	B4, 1, B4
		ldb	.d2t1	*B4, A5
		nop	4
		stb	.d1t1	A5, *A4++[1]
		ldb	.d1t1	*-A4(1), A1
		nop	4
	[A1]	b	.s2	.L428
		nop	5
.L427:
		mv	.d1	A11, A2
	[A2]	b	.s2	.L429
		nop	5
		stb	.d1t1	A2, *A3
.L429:
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
		mv	.d1	A4, A6
		mvk	.d1	0, A4
		b	.s2	.L432
		nop	5
.L434:
		add	.d1	A4, 1, A4
.L432:
		mv	.l1x	B4, A3
		cmpeq	.l1	A3, A4, A1
	[A1]	b	.s2	.L433
		nop	5
		add	.d1	A6, A4, A5
		ldb	.d1t1	*A5, A2
		nop	4
	[A2]	b	.s2	.L434
		nop	5
.L433:
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
		b	.s2	.L436
		nop	5
.L438:
		ldb	.d1t1	*A3, A7
		nop	4
		ldb	.d1t1	*-A4(1), A5
		nop	4
		cmpeq	.l1	A5, A7, A2
	[A2]	b	.s2	.L440
		nop	5
.L439:
		add	.d1	A3, 1, A3
		ldb	.d1t1	*A3, A0
		nop	4
	[A0]	b	.s2	.L438
		nop	5
.L436:
		mv	.d1	A4, A6
		ldb	.d1t1	*A4++[1], A1
		nop	4
	[!A1]	b	.s2	.L441
		nop	5
		add	.l1x	-1, B4, A3
		b	.s2	.L439
		nop	5
.L440:
		mv	.d1	A6, A4
		b	.s2	.L437
		nop	5
.L441:
		mvk	.d1	0, A4
.L437:
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
.L444:
		mv	.d1	A5, A3
		ldb	.d1t1	*A5++[1], A6
		nop	4
		cmpeq	.l1x	A6, B4, A1
	[!A1]	b	.s2	.L443
		nop	5
		mv	.d1	A3, A4
.L443:
		ldb	.d1t1	*-A5(1), A0
		nop	4
	[A0]	b	.s2	.L444
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
		mv	.d1	A11, A4
		callp	.s2	(strlen), B3
		mv	.d1	A4, A12
		mv	.d1	A12, A0
	[!A0]	b	.s2	.L450
		nop	5
		ldb	.d1t1	*A11, A13
		nop	4
		b	.s2	.L448
		nop	5
.L449:
		mv	.d1	A12, A6
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(strncmp), B3
		mv	.d1	A4, A2
	[!A2]	b	.s2	.L451
		nop	5
		add	.d1	A10, 1, A10
.L448:
		mv	.l2x	A13, B4
		mv	.d1	A10, A4
		callp	.s2	(strchr), B3
		mv	.d1	A4, A10
		mv	.d1	A10, A1
	[A1]	b	.s2	.L449
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L447
		nop	5
.L450:
		mv	.d1	A10, A4
		b	.s2	.L447
		nop	5
.L451:
		mv	.d1	A10, A4
.L447:
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
	[!A0]	b	.s2	.L456
		nop	5
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L458
		nop	5
.L456:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A2
	[!A2]	b	.s2	.L466
		nop	5
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L467
		nop	5
.L458:
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.d1	A10, A4
		mvk	.d1	0, A3
		mvklh	.s1	32768, A3
		xor	.d1	A3, A11, A5
		b	.s2	.L459
		nop	5
.L466:
		dmv	.s1	A11, A10, A5:A4
		b	.s2	.L459
		nop	5
.L467:
		dmv	.s1	A11, A10, A5:A4
.L459:
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
		mv	.l1x	B6, A11
		sub	.l1x	B4, A11, A13
		add	.d1	A4, A13, A13
		mv	.d1	A11, A0
	[!A0]	b	.s2	.L473
		nop	5
		cmpgtu	.l1x	A11, B4, A1
	[A1]	b	.s2	.L477
		nop	5
		mv	.d1	A4, A12
		b	.s2	.L474
		nop	5
.L475:
		ldb	.d1t1	*A12++[1], A4
		nop	4
		ldb	.d2t1	*B10, A3
		nop	4
		cmpeq	.l1	A3, A4, A0
	[!A0]	b	.s2	.L474
		nop	5
		sub	.d1	A11, 1, A6
		add	.d2	B10, 1, B4
		mv	.d1	A12, A4
		callp	.s2	(memcmp), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L478
		nop	5
.L474:
		mv	.d1	A12, A10
		cmpltu	.l1	A13, A12, A2
	[!A2]	b	.s2	.L475
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L473
		nop	5
.L477:
		mvk	.d1	0, A4
		b	.s2	.L473
		nop	5
.L478:
		mv	.d1	A10, A4
.L473:
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
		stw	.d2t2	B10, *+B15(32)
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
	[!A0]	b	.s2	.L498
		nop	5
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mv	.d1	A10, A0
		mvk	.d1	0, A3
		mvklh	.s1	32768, A3
		xor	.d1	A3, A11, A1
		dmv	.s1	A1, A0, A11:A10
		mvk	.d1	1, A14
		b	.s2	.L483
		nop	5
.L498:
		mvk	.d1	0, A14
.L483:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16368, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L495
		nop	5
		b	.s2	.L500
		nop	5
.L487:
		add	.d1	A12, 1, A12
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16352, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A11:A10
		b	.s2	.L485
		nop	5
.L495:
		mvk	.d1	0, A12
.L485:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16368, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L487
		nop	5
		b	.s2	.L488
		nop	5
.L500:
		mvk	.d2	0, B10
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A2
	[A2]	b	.s2	.L489
		nop	5
		mvk	.d2	1, B10
.L489:
		mvk	.d1	1, A12
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16352, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L490
		nop	5
		mvk	.d1	0, A12
.L490:
		and	.d1x	A12, B10, A4
		extu	.s1	A4, 24, 24, A1
	[A1]	b	.s2	.L496
		nop	5
		mvk	.d1	0, A12
		b	.s2	.L488
		nop	5
.L492:
		sub	.d1	A12, 1, A12
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		dmv	.s1	A5, A4, A11:A10
		b	.s2	.L491
		nop	5
.L496:
		mvk	.d1	0, A12
.L491:
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16352, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A2
	[A2]	b	.s2	.L492
		nop	5
.L488:
		stw	.d1t1	A12, *A13
		mv	.d1	A14, A1
	[!A1]	b	.s2	.L493
		nop	5
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mv	.d1	A10, A0
		mvk	.d1	0, A5
		mvklh	.s1	32768, A5
		xor	.d1	A5, A11, A1
		dmv	.s1	A1, A0, A11:A10
.L493:
		dmv	.s1	A11, A10, A5:A4
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
		b	.s2	.L510
		nop	5
.L512:
		and	.d1	1, A0, A2
		mvk	.d1	0, A17
		mv	.d1	A2, A2
	[!A2]	b	.s2	.L511
		nop	5
		addu	.l1x	A4, B4, A7:A6
		add	.d1	A7, A5, A7
		add	.d1x	A7, B5, A7
		dmv	.s1	A7, A6, A5:A4
.L511:
		addu	.l2	B4, B4, B7:B6
		mv	.l1x	B6, A6
		mv	.l1x	B7, A3
		add	.d1x	A3, B5, A8
		add	.d1x	A8, B5, A9
		mv	.l2x	A6, B4
		mv	.l2x	A9, B5
		shl	.s1	A1, 31, A16
		shru	.s1	A0, 1, A17
		or	.d1	A17, A16, A8
		shru	.s1	A1, 1, A9
		dmv	.s1	A9, A8, A1:A0
.L510:
		or	.d1	A1, A0, A2
	[A2]	b	.s2	.L512
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
		b	.s2	.L514
		nop	5
.L516:
		shl	.s2	B4, 1, B4
		shl	.s1	A0, 1, A0
.L514:
		cmpgtu	.l1x	A4, B4, A5
		cmpeq	.l1	0, A0, A3
		cmpeq	.l1	0, A3, A6
		and	.d1	A6, A5, A1
	[!A1]	b	.s2	.L521
		nop	5
		cmpgt	.l2	0, B4, B0
	[!B0]	b	.s2	.L516
		nop	5
		mvk	.d1	0, A7
		b	.s2	.L518
		nop	5
.L519:
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A1
	[A1]	b	.s2	.L517
		nop	5
		sub	.d1	A4, A8, A4
		or	.d1	A0, A7, A7
.L517:
		shru	.s1	A0, 1, A0
		shru	.s2	B4, 1, B4
		b	.s2	.L518
		nop	5
.L521:
		mvk	.d1	0, A7
.L518:
	[A0]	b	.s2	.L519
		nop	5
	[A2]	b	.s2	.L520
		nop	5
		mv	.d1	A7, A4
.L520:
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
	[!A0]	b	.s2	.L524
		nop	5
		not	.l1	A4, A4
.L524:
		ext	.s1	A4, 24, 24, A1
	[!A1]	b	.s2	.L526
		nop	5
		mv	.d1	A1, A0
		shl	.s1	A0, 8, A4
		lmbd	.l1	1, A4, A5
		sub	.d1	A5, 1, A4
		b	.s2	.L525
		nop	5
.L526:
		mvk	.d1	7, A4
.L525:
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
		cmpgt	.l1	0, A5, A0
	[!A0]	b	.s2	.L528
		nop	5
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		not	.l1	A4, A0
		not	.l1	A5, A1
		dmv	.s1	A1, A0, A5:A4
.L528:
		or	.d1	A5, A4, A1
	[!A1]	b	.s2	.L532
		nop	5
		mv	.d1	A5, A2
	[!A2]	b	.s2	.L530
		nop	5
		lmbd	.l1	1, A5, A4
		b	.s2	.L531
		nop	5
.L530:
		lmbd	.l1	1, A4, A4
		addah	.d1	A4, 16, A4
.L531:
		sub	.d1	A4, 1, A4
		b	.s2	.L529
		nop	5
.L532:
		mvk	.s1	63, A4
.L529:
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
		b	.s2	.L534
		nop	5
.L536:
		and	.d1	1, A0, A1
	[!A1]	b	.s2	.L535
		nop	5
		add	.d1x	A4, B4, A4
.L535:
		shru	.s1	A0, 1, A0
		shl	.s2	B4, 1, B4
.L534:
	[A0]	b	.s2	.L536
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
		shru	.s1	A6, 3, A3
		and	.d1	-8, A6, A21
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
	[!A1]	b	.s2	.L538
		nop	5
.L540:
		add	.l1x	-8, B4, A23
		sub	.d1	A4, 8, A26
		shl	.s1	A3, 3, A17
		add	.d1	A23, A17, A22
		b	.s2	.L539
		nop	5
.L538:
		add	.d1x	A6, B4, A7
		cmpgtu	.l1	A4, A7, A2
	[A2]	b	.s2	.L540
		nop	5
		b	.s2	.L541
		nop	5
.L542:
		add	.d1	A23, 8, A23
		lddw	.d1t1	*A23, A25:A24
		nop	4
		add	.d1	A26, 8, A26
		stdw	.d1t1	A25:A24, *A26
.L539:
		cmpeq	.l1	A22, A23, A1
	[!A1]	b	.s2	.L542
		nop	5
		b	.s2	.L543
		nop	5
.L544:
		add	.d1x	A21, B4, A18
		ldb	.d1t1	*A18, A19
		nop	4
		add	.d1	A4, A21, A20
		stb	.d1t1	A19, *A20
		add	.d1	A21, 1, A21
.L543:
		cmpltu	.l1	A21, A6, A2
	[A2]	b	.s2	.L544
		nop	5
		b	.s2	.L537
		nop	5
.L546:
		add	.d1x	A6, B4, A8
		ldb	.d1t1	*A8, A9
		nop	4
		add	.d1	A4, A6, A16
		stb	.d1t1	A9, *A16
.L541:
		sub	.d1	A6, 1, A6
		cmpeq	.l1	-1, A6, A0
	[!A0]	b	.s2	.L546
		nop	5
.L537:
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
		shru	.s1	A6, 1, A7
		mv	.l1x	B4, A3
		cmpgtu	.l1	A3, A4, A1
	[!A1]	b	.s2	.L548
		nop	5
.L550:
		add	.l1x	-2, B4, A20
		sub	.d1	A4, 2, A22
		shl	.s1	A7, 1, A17
		add	.d1	A20, A17, A19
		b	.s2	.L549
		nop	5
.L548:
		add	.d1x	A6, B4, A5
		cmpgtu	.l1	A4, A5, A0
	[A0]	b	.s2	.L550
		nop	5
		b	.s2	.L551
		nop	5
.L552:
		add	.d1	A20, 2, A20
		ldh	.d1t1	*A20, A21
		nop	4
		add	.d1	A22, 2, A22
		sth	.d1t1	A21, *A22
.L549:
		cmpeq	.l1	A19, A20, A1
	[!A1]	b	.s2	.L552
		nop	5
		and	.d1	1, A6, A0
	[!A0]	b	.s2	.L547
		nop	5
		sub	.d1	A6, 1, A6
		add	.d2x	B4, A6, B4
		add	.d1	A4, A6, A4
		ldb	.d2t1	*B4, A18
		nop	4
		stb	.d1t1	A18, *A4
		b	.s2	.L547
		nop	5
.L554:
		add	.d1x	A6, B4, A8
		ldb	.d1t1	*A8, A9
		nop	4
		add	.d1	A4, A6, A16
		stb	.d1t1	A9, *A16
.L551:
		sub	.d1	A6, 1, A6
		cmpeq	.l1	-1, A6, A2
	[!A2]	b	.s2	.L554
		nop	5
.L547:
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
		shru	.s1	A6, 2, A3
		and	.d1	-4, A6, A21
		mv	.l1x	B4, A5
		cmpgtu	.l1	A5, A4, A1
	[!A1]	b	.s2	.L556
		nop	5
.L558:
		add	.l1x	-4, B4, A23
		sub	.d1	A4, 4, A25
		shl	.s1	A3, 2, A17
		add	.d1	A23, A17, A22
		b	.s2	.L557
		nop	5
.L556:
		add	.d1x	A6, B4, A7
		cmpgtu	.l1	A4, A7, A2
	[A2]	b	.s2	.L558
		nop	5
		b	.s2	.L559
		nop	5
.L560:
		add	.d1	A23, 4, A23
		ldw	.d1t1	*A23, A24
		nop	4
		add	.d1	A25, 4, A25
		stw	.d1t1	A24, *A25
.L557:
		cmpeq	.l1	A22, A23, A1
	[!A1]	b	.s2	.L560
		nop	5
		b	.s2	.L561
		nop	5
.L562:
		add	.d1x	A21, B4, A18
		ldb	.d1t1	*A18, A19
		nop	4
		add	.d1	A4, A21, A20
		stb	.d1t1	A19, *A20
		add	.d1	A21, 1, A21
.L561:
		cmpltu	.l1	A21, A6, A2
	[A2]	b	.s2	.L562
		nop	5
		b	.s2	.L555
		nop	5
.L564:
		add	.d1x	A6, B4, A8
		ldb	.d1t1	*A8, A9
		nop	4
		add	.d1	A4, A6, A16
		stb	.d1t1	A9, *A16
.L559:
		sub	.d1	A6, 1, A6
		cmpeq	.l1	-1, A6, A0
	[!A0]	b	.s2	.L564
		nop	5
.L555:
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
		addkpc	.s2	.L566, B3, 4
.L566:
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
		addkpc	.s2	.L576, B3, 4
.L576:
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
		mv	.d1	A4, A3
		mvk	.d1	0, A4
		b	.s2	.L578
		nop	5
.L580:
		extu	.s1	A3, 16, 16, A6
		sub	.l1	15, A4, A7
		shr	.s1	A6, A7, A8
		and	.d1	1, A8, A1
	[A1]	b	.s2	.L579
		nop	5
		add	.d1	A4, 1, A4
.L578:
		mvk	.s1	16, A5
		cmpeq	.l1	A5, A4, A0
	[!A0]	b	.s2	.L580
		nop	5
.L579:
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
		b	.s2	.L582
		nop	5
.L584:
		extu	.s1	A3, 16, 16, A6
		shr	.s1	A6, A4, A7
		and	.d1	1, A7, A1
	[A1]	b	.s2	.L583
		nop	5
		add	.d1	A4, 1, A4
.L582:
		mvk	.s1	16, A5
		cmpeq	.l1	A5, A4, A0
	[!A0]	b	.s2	.L584
		nop	5
.L583:
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
	[!A0]	b	.s2	.L590
		nop	5
		mvk	.d2	0, B4
		mvklh	.s2	18176, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_subf), B3
		callp	.s2	(__c6xabi_fixfi), B3
		mvk	.s1	-32768, A3
		mvklh	.s1	0, A3
		add	.d1	A4, A3, A4
		b	.s2	.L588
		nop	5
.L590:
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_fixfi), B3
.L588:
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
		mvk	.d1	0, A8
		mvk	.d1	0, A3
		b	.s2	.L596
		nop	5
.L598:
		extu	.s1	A4, 16, 16, A6
		shr	.s1	A6, A3, A7
		and	.d1	1, A7, A2
	[!A2]	b	.s2	.L597
		nop	5
		add	.d1	A8, 1, A8
.L597:
		add	.d1	A3, 1, A3
.L596:
		mvk	.s1	16, A5
		cmpeq	.l1	A5, A3, A1
	[!A1]	b	.s2	.L598
		nop	5
		and	.d1	1, A8, A4
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
		b	.s2	.L600
		nop	5
.L602:
		extu	.s1	A5, 16, 16, A7
		shr	.s1	A7, A3, A8
		and	.d1	1, A8, A1
	[!A1]	b	.s2	.L601
		nop	5
		add	.d1	A4, 1, A4
.L601:
		add	.d1	A3, 1, A3
.L600:
		mvk	.s1	16, A6
		cmpeq	.l1	A6, A3, A0
	[!A0]	b	.s2	.L602
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
		b	.s2	.L604
		nop	5
.L606:
		and	.d1	1, A0, A1
	[!A1]	b	.s2	.L605
		nop	5
		add	.d1x	A4, B4, A4
.L605:
		shru	.s1	A0, 1, A0
		shl	.s2	B4, 1, B4
.L604:
	[A0]	b	.s2	.L606
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
		mv	.l1x	B4, A2
	[!A1]	b	.s2	.L612
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L609
		nop	5
.L611:
		and	.d2x	1, A2, B0
	[!B0]	b	.s2	.L610
		nop	5
		add	.d1	A4, A1, A4
.L610:
		shl	.s1	A1, 1, A1
		shru	.s1	A2, 1, A2
.L609:
	[A2]	b	.s2	.L611
		nop	5
		b	.s2	.L608
		nop	5
.L612:
		mvk	.d1	0, A4
.L608:
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
		b	.s2	.L614
		nop	5
.L616:
		shl	.s2	B4, 1, B4
		shl	.s1	A0, 1, A0
.L614:
		cmpgtu	.l1x	A4, B4, A5
		cmpeq	.l1	0, A0, A3
		cmpeq	.l1	0, A3, A6
		and	.d1	A6, A5, A1
	[!A1]	b	.s2	.L621
		nop	5
		cmpgt	.l2	0, B4, B0
	[!B0]	b	.s2	.L616
		nop	5
		mvk	.d1	0, A7
		b	.s2	.L618
		nop	5
.L619:
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A1
	[A1]	b	.s2	.L617
		nop	5
		sub	.d1	A4, A8, A4
		or	.d1	A0, A7, A7
.L617:
		shru	.s1	A0, 1, A0
		shru	.s2	B4, 1, B4
		b	.s2	.L618
		nop	5
.L621:
		mvk	.d1	0, A7
.L618:
	[A0]	b	.s2	.L619
		nop	5
	[A2]	b	.s2	.L620
		nop	5
		mv	.d1	A7, A4
.L620:
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
	[A0]	b	.s2	.L625
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L626
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L624
		nop	5
.L625:
		mvk	.d1	-1, A4
		b	.s2	.L624
		nop	5
.L626:
		mvk	.d1	1, A4
.L624:
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
	[A0]	b	.s2	.L631
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L632
		nop	5
		mvk	.d1	0, A4
		b	.s2	.L630
		nop	5
.L631:
		mvk	.d1	-1, A4
		b	.s2	.L630
		nop	5
.L632:
		mvk	.d1	1, A4
.L630:
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
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mv	.d1	A4, A6
		shr	.s1	A4, 31, A3
		mvk	.d1	0, A4
		mvk	.d1	0, A5
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
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mv	.d1	A4, A3
		mvk	.d1	0, A1
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l1x	B4, A4
		mvk	.d1	0, A5
		mpy32u	.m1	A3, A4, A5:A4
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
	[!A0]	b	.s2	.L643
		nop	5
		neg	.l2	B4, B4
		mvk	.d1	1, A2
		b	.s2	.L638
		nop	5
.L643:
		mvk	.d1	0, A2
.L638:
		mvk	.d1	0, A16
		mvk	.d1	0, A3
		b	.s2	.L639
		nop	5
.L641:
		and	.d1x	1, B4, A1
	[!A1]	b	.s2	.L640
		nop	5
		add	.d1	A16, A4, A16
.L640:
		shl	.s1	A4, 1, A4
		shr	.s2	B4, 1, B4
		add	.d1	A3, 1, A3
.L639:
		cmpeq	.l1x	0, B4, A5
		cmpeq	.l1	0, A5, A6
		extu	.s1	A3, 24, 24, A7
		cmpltu	.l1	31, A7, A8
		cmpeq	.l1	0, A8, A9
		and	.d1	A9, A6, A1
	[A1]	b	.s2	.L641
		nop	5
	[!A2]	b	.s2	.L644
		nop	5
		neg	.l1	A16, A4
		b	.s2	.L642
		nop	5
.L644:
		mv	.d1	A16, A4
.L642:
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
	[!A0]	b	.s2	.L649
		nop	5
		neg	.l1	A4, A4
		mvk	.d1	1, A10
		b	.s2	.L646
		nop	5
.L649:
		mvk	.d1	0, A10
.L646:
		cmpgt	.l1x	0, B4, A1
	[!A1]	b	.s2	.L647
		nop	5
		neg	.l2	B4, B4
		cmpeq	.l1	0, A10, A10
.L647:
		mvk	.d1	0, A6
		callp	.s2	(__udivmodsi4), B3
		mv	.d1	A10, A2
	[!A2]	b	.s2	.L648
		nop	5
		neg	.l1	A4, A4
.L648:
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
	[!A0]	b	.s2	.L655
		nop	5
		neg	.l1	A4, A4
		mvk	.d1	1, A10
		b	.s2	.L652
		nop	5
.L655:
		mvk	.d1	0, A10
.L652:
		cmpgt	.l1x	0, B4, A1
	[!A1]	b	.s2	.L653
		nop	5
		neg	.l2	B4, B4
.L653:
		mvk	.d1	1, A6
		callp	.s2	(__udivmodsi4), B3
		mv	.d1	A10, A2
	[!A2]	b	.s2	.L654
		nop	5
		neg	.l1	A4, A4
.L654:
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
		mv	.d1	A6, A2
		mvk	.d1	1, A24
		b	.s2	.L658
		nop	5
.L660:
		shl	.s2	B4, 1, B4
		shl	.s1	A24, 1, A24
.L658:
		mv	.l1x	B4, A3
		extu	.s1	A3, 16, 16, A5
		extu	.s1	A4, 16, 16, A6
		cmpgtu	.l1	A6, A5, A7
		extu	.s1	A24, 16, 16, A8
		cmpeq	.l1	0, A8, A9
		cmpeq	.l1	0, A9, A16
		and	.d1	A16, A7, A1
	[!A1]	b	.s2	.L665
		nop	5
		mv	.l1x	B4, A18
		ext	.s1	A18, 16, 16, A19
		cmpgt	.l2x	0, A19, B0
	[!B0]	b	.s2	.L660
		nop	5
		mvk	.d1	0, A17
		b	.s2	.L662
		nop	5
.L663:
		extu	.s1	A4, 16, 16, A20
		mv	.l1x	B4, A21
		extu	.s1	A21, 16, 16, A22
		cmpgtu	.l1	A22, A20, A1
	[A1]	b	.s2	.L661
		nop	5
		mv	.l1x	B4, A23
		sub	.d1	A4, A23, A4
		or	.d1	A24, A17, A17
.L661:
		extu	.s1	A24, 16, 17, A24
		extu	.s2	B4, 16, 17, B4
		b	.s2	.L662
		nop	5
.L665:
		mvk	.d1	0, A17
.L662:
		extu	.s1	A24, 16, 16, A1
	[A1]	b	.s2	.L663
		nop	5
	[A2]	b	.s2	.L664
		nop	5
		mv	.d1	A17, A4
.L664:
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
		b	.s2	.L668
		nop	5
.L670:
		shl	.s2	B4, 1, B4
		shl	.s1	A0, 1, A0
.L668:
		cmpgtu	.l1x	A4, B4, A5
		cmpeq	.l1	0, A0, A3
		cmpeq	.l1	0, A3, A6
		and	.d1	A6, A5, A1
	[!A1]	b	.s2	.L675
		nop	5
		cmpgt	.l2	0, B4, B0
	[!B0]	b	.s2	.L670
		nop	5
		mvk	.d1	0, A7
		b	.s2	.L672
		nop	5
.L673:
		mv	.l1x	B4, A8
		cmpgtu	.l1	A8, A4, A1
	[A1]	b	.s2	.L671
		nop	5
		sub	.d1	A4, A8, A4
		or	.d1	A0, A7, A7
.L671:
		shru	.s1	A0, 1, A0
		shru	.s2	B4, 1, B4
		b	.s2	.L672
		nop	5
.L675:
		mvk	.d1	0, A7
.L672:
	[A0]	b	.s2	.L673
		nop	5
	[A2]	b	.s2	.L674
		nop	5
		mv	.d1	A7, A4
.L674:
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
		mv	.l1x	B4, A0
		dmv	.s1	A5, A4, A9:A8
		mvk	.s1	32, A3
		and	.d1	A3, A0, A1
	[!A1]	b	.s2	.L678
		nop	5
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		subah	.d1	A0, 16, A0
		shl	.s1	A8, A0, A7
		mv	.d1	A7, A7
		b	.s2	.L679
		nop	5
.L678:
	[!A0]	b	.s2	.L680
		nop	5
		mv	.d1	A8, A8
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		shl	.s1	A8, A0, A6
		mv	.d1	A9, A4
		shl	.s1	A4, A0, A7
		mvk	.s1	32, A5
		sub	.d1	A5, A0, A9
		shru	.s1	A8, A9, A16
		or	.d1	A7, A16, A7
		mv	.d1	A7, A7
.L679:
		dmv	.s1	A7, A6, A5:A4
.L680:
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
		mv	.l1x	B4, A0
		dmv	.s1	A5, A4, A9:A8
		mvk	.s1	32, A3
		and	.d1	A3, A0, A1
	[!A1]	b	.s2	.L683
		nop	5
		mv	.d1	A9, A16
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		shr	.s1	A16, 31, A7
		subah	.d1	A0, 16, A0
		shr	.s1	A16, A0, A6
		mv	.d1	A6, A6
		b	.s2	.L684
		nop	5
.L683:
	[!A0]	b	.s2	.L685
		nop	5
		mv	.d1	A9, A5
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		shr	.s1	A5, A0, A7
		mvk	.s1	32, A4
		sub	.d1	A4, A0, A6
		shl	.s1	A5, A6, A9
		shru	.s1	A8, A0, A8
		or	.d1	A8, A9, A6
.L684:
		dmv	.s1	A7, A6, A5:A4
.L685:
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
		mvk	.d1	0, A26
		mvk	.d1	0, A27
		shru	.s1	A5, 24, A26
		mvk	.d1	0, A27
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A5, 8, A3
		mvk	.d1	0, A1
		mvk	.s1	-256, A24
		mvklh	.s1	0, A24
		mvk	.d1	0, A22
		mvk	.d1	0, A23
		and	.d1	A24, A3, A22
		mvk	.d1	0, A23
		shl	.s1	A5, 8, A6
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A4, 24, A7
		or	.d1	A7, A6, A8
		mv	.d1	A26, A1
		mvk	.d1	0, A23
		mvklh	.s1	255, A23
		mvk	.d1	0, A20
		mvk	.d1	0, A21
		and	.d1	A23, A8, A20
		mvk	.d1	0, A21
		shl	.s1	A5, 24, A9
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A4, 8, A16
		or	.d1	A16, A9, A17
		shru	.s1	A5, 8, A1
		mvk	.d1	0, A18
		mvk	.d1	0, A19
		clr	.s1	A17, 0, 23, A18
		mvk	.d1	0, A19
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		shlmb	.l1	A4, A5, A5
		shl	.s1	A4, 8, A19
		mvk	.d1	0, A21
		mvk	.d1	0, A17
		extu	.s1	A5, 24, 24, A27
		shru	.s1	A4, 8, A25
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mv	.d1	A9, A28
		or	.d1	A28, A25, A29
		shl	.s1	A4, 24, A30
		mvk	.d1	0, A31
		mvk	.d1	0, A9
		and	.d1	A24, A29, A3
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.d1	A19, A4
		mvk	.d1	0, A2
		mvk	.d1	0, A7
		and	.d1	A23, A4, A6
		mvk	.d1	0, A24
		mvk	.d1	0, A25
		mv	.d1	A30, A24
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.d1	A26, A26
		mv	.d1	A24, A7
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		or	.d1	A22, A26, A22
		mv	.d1	A7, A8
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		or	.d1	A20, A22, A23
		mv	.d1	A8, A20
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		or	.d1	A18, A23, A9
		mv	.d1	A20, A16
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		or	.d1	A21, A9, A17
		or	.d1	A27, A16, A18
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		or	.d1	A31, A17, A19
		or	.d1	A3, A18, A21
		mvk	.d1	0, A4
		mvk	.d1	0, A5
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
		mvk	.d1	-1, A3
		mvklh	.s1	0, A3
		cmpltu	.l1	A3, A4, A0
	[A0]	b	.s2	.L694
		nop	5
		mvk	.s1	16, A6
		b	.s2	.L690
		nop	5
.L694:
		mvk	.d1	0, A6
.L690:
		mvk	.s1	16, A5
		sub	.d1	A5, A6, A7
		shru	.s1	A4, A7, A4
		mvk	.s1	-256, A8
		mvklh	.s1	0, A8
		and	.d1	A8, A4, A1
	[A1]	b	.s2	.L695
		nop	5
		mvk	.d1	8, A9
		b	.s2	.L691
		nop	5
.L695:
		mvk	.d1	0, A9
.L691:
		sub	.l1	8, A9, A16
		shru	.s1	A4, A16, A17
		add	.d1	A6, A9, A18
		mvk	.s1	240, A19
		and	.d1	A19, A17, A2
	[A2]	b	.s2	.L696
		nop	5
		mvk	.d1	4, A20
		b	.s2	.L692
		nop	5
.L696:
		mvk	.d1	0, A20
.L692:
		sub	.l1	4, A20, A21
		shru	.s1	A17, A21, A22
		add	.d1	A18, A20, A23
		and	.d1	12, A22, A0
	[A0]	b	.s2	.L697
		nop	5
		mvk	.d1	2, A24
		b	.s2	.L693
		nop	5
.L697:
		mvk	.d1	0, A24
.L693:
		sub	.l1	2, A24, A25
		shru	.s1	A22, A25, A26
		add	.d1	A23, A24, A27
		and	.d1	2, A26, A28
		cmpeq	.l1	0, A28, A29
		sub	.l1	2, A26, A30
		mpy32	.m1	A29, A30, A31
		nop	3
		add	.d1	A27, A31, A4
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
		dmv	.s1	A5, A4, A1:A0
		mv	.d1	A1, A4
		mv	.l1x	B5, A3
		cmpgt	.l1	A3, A4, A2
	[A2]	b	.s2	.L700
		nop	5
		mv	.d1	A1, A5
		cmplt	.l1	A3, A5, A1
	[A1]	b	.s2	.L701
		nop	5
		mv	.d1	A0, A6
		mv	.l1x	B4, A7
		cmpgtu	.l1	A7, A6, A2
	[A2]	b	.s2	.L702
		nop	5
		cmpltu	.l1	A7, A0, A0
	[A0]	b	.s2	.L703
		nop	5
		mvk	.d1	1, A4
		b	.s2	.L699
		nop	5
.L700:
		mvk	.d1	0, A4
		b	.s2	.L699
		nop	5
.L701:
		mvk	.d1	2, A4
		b	.s2	.L699
		nop	5
.L702:
		mvk	.d1	0, A4
		b	.s2	.L699
		nop	5
.L703:
		mvk	.d1	2, A4
.L699:
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
	[A0]	b	.s2	.L711
		nop	5
		mvk	.s1	16, A3
		b	.s2	.L707
		nop	5
.L711:
		mvk	.d1	0, A3
.L707:
		shru	.s1	A4, A3, A4
		extu	.s1	A4, 24, 24, A1
	[A1]	b	.s2	.L712
		nop	5
		mvk	.d1	8, A5
		b	.s2	.L708
		nop	5
.L712:
		mvk	.d1	0, A5
.L708:
		shru	.s1	A4, A5, A6
		add	.d1	A3, A5, A7
		and	.d1	15, A6, A2
	[A2]	b	.s2	.L713
		nop	5
		mvk	.d1	4, A8
		b	.s2	.L709
		nop	5
.L713:
		mvk	.d1	0, A8
.L709:
		shru	.s1	A6, A8, A9
		add	.d1	A7, A8, A16
		and	.d1	3, A9, A0
	[A0]	b	.s2	.L714
		nop	5
		mvk	.d1	2, A17
		b	.s2	.L710
		nop	5
.L714:
		mvk	.d1	0, A17
.L710:
		shru	.s1	A9, A17, A18
		and	.d1	3, A18, A19
		add	.d1	A16, A17, A20
		not	.l1	A19, A21
		and	.d1	1, A21, A22
		shru	.s1	A19, 1, A23
		sub	.l1	2, A23, A24
		neg	.l1	A22, A25
		and	.d1	A25, A24, A26
		add	.d1	A20, A26, A4
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
		mv	.l1x	B4, A0
		dmv	.s1	A5, A4, A9:A8
		mvk	.s1	32, A3
		and	.d1	A3, A0, A1
	[!A1]	b	.s2	.L716
		nop	5
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		mv	.d1	A9, A16
		subah	.d1	A0, 16, A0
		shru	.s1	A16, A0, A6
		b	.s2	.L717
		nop	5
.L716:
	[!A0]	b	.s2	.L718
		nop	5
		mv	.d1	A9, A5
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		shru	.s1	A5, A0, A7
		mvk	.s1	32, A4
		sub	.d1	A4, A0, A6
		shl	.s1	A5, A6, A9
		shru	.s1	A8, A0, A8
		or	.d1	A8, A9, A6
.L717:
		dmv	.s1	A7, A6, A5:A4
.L718:
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
		clr	.s1	A4, 16, 31, A5
		mv	.l1x	B4, A3
		clr	.s1	A3, 16, 31, A8
		mpy32	.m1	A5, A8, A9
		nop	3
		mvk	.d1	0, A6
		mvk	.d1	0, A7
		mv	.d1	A9, A6
		shru	.s1	A9, 16, A7
		clr	.s1	A9, 16, 31, A16
		mv	.d1	A16, A6
		shru	.s1	A4, 16, A4
		mpy32	.m1	A4, A8, A6
		nop	3
		add	.d1	A7, A6, A17
		shl	.s1	A17, 16, A18
		add	.d1	A18, A16, A3
		shru	.s1	A17, 16, A7
		mv	.d1	A7, A7
		mv	.d1	A3, A3
		shru	.s1	A3, 16, A19
		clr	.s1	A3, 16, 31, A20
		mv	.d1	A20, A6
		shru	.s2	B4, 16, B4
		mpy32	.m1x	A5, B4, A21
		nop	3
		add	.d1	A19, A21, A22
		shl	.s1	A22, 16, A23
		add	.d1	A23, A20, A6
		mv	.d1	A7, A24
		shru	.s1	A22, 16, A25
		add	.d1	A25, A24, A26
		mv	.d1	A26, A7
		mpy32	.m1x	A4, B4, A27
		nop	3
		add	.d1	A27, A26, A28
		mv	.d1	A28, A7
		dmv	.s1	A7, A6, A5:A4
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
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B11, *+B15(32)
		stw	.d2t2	B10, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A11:A10
		dmv	.s2	B5, B4, B11:B10
		mv	.d1	A10, A12
		mv	.l1x	B10, A13
		mv	.d2	B10, B4
		mv	.d1	A10, A4
		callp	.s2	(__muldsi3), B3
		dmv	.s1	A5, A4, A7:A6
		mv	.d1	A5, A4
		mv	.d1	A11, A3
		mpy32	.m1	A3, A13, A5
		nop	3
		mv	.l1x	B11, A7
		mpy32	.m1	A7, A12, A8
		nop	3
		add	.d1	A5, A8, A9
		add	.d1	A9, A4, A10
		mv	.d1	A10, A7
		dmv	.s1	A7, A6, A5:A4
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
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
		stw	.d2t1	A15, *B15--(8)
		add	.l1x	8, B15, A15
		dmv	.s1	A5, A4, A1:A0
		neg	.l1	A0, A4
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
		mv	.d1	A5, A3
		xor	.d1	A4, A3, A4
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
		mv	.d1	A4, A0
		shru	.s1	A4, 16, A3
		xor	.d1	A3, A4, A4
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
		dmv	.s1	A5, A4, A1:A0
		shl	.s1	A5, 31, A3
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A4, 1, A6
		or	.d1	A6, A3, A7
		shru	.s1	A5, 1, A16
		mvk	.s1	21845, A17
		mvklh	.s1	21845, A17
		mvk	.d1	0, A8
		mvk	.d1	0, A9
		and	.d1	A17, A7, A8
		and	.d1	A17, A16, A9
		sub	.d1	A4, A8, A6
		cmpltu	.l1	A4, A6, A4
		sub	.d1	A5, A9, A5
		sub	.d1	A5, A4, A7
		dmv	.s1	A7, A6, A1:A0
		shl	.s1	A7, 30, A18
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		shru	.s1	A6, 2, A19
		or	.d1	A19, A18, A20
		shru	.s1	A7, 2, A21
		mvk	.s1	13107, A22
		mvklh	.s1	13107, A22
		mvk	.d1	0, A8
		mvk	.d1	0, A9
		and	.d1	A22, A20, A23
		and	.d1	A22, A21, A24
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		and	.d1	A22, A6, A25
		and	.d1	A22, A7, A26
		addu	.l1	A23, A25, A1:A0
		add	.d1	A1, A24, A27
		add	.d1	A27, A26, A28
		shl	.s1	A28, 28, A29
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		shru	.s1	A0, 4, A30
		or	.d1	A30, A29, A31
		shru	.s1	A28, 4, A3
		addu	.l1	A31, A0, A7:A6
		add	.d1	A7, A3, A0
		add	.d1	A0, A28, A1
		mvk	.s1	3855, A7
		mvklh	.s1	3855, A7
		and	.d1	A7, A6, A6
		and	.d1	A7, A1, A16
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.d1	A16, A17
		mvk	.d1	0, A5
		add	.d1	A17, A6, A8
		shru	.s1	A8, 16, A9
		add	.d1	A8, A9, A2
		shru	.s1	A2, 8, A4
		add	.d1	A4, A2, A5
		clr	.s1	A5, 7, 31, A4
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
		mv	.d1	A4, A0
		shru	.s1	A4, 1, A5
		mvk	.s1	21845, A3
		mvklh	.s1	21845, A3
		and	.d1	A3, A5, A6
		sub	.d1	A4, A6, A7
		shru	.s1	A7, 2, A8
		mvk	.s1	13107, A4
		mvklh	.s1	13107, A4
		and	.d1	A4, A8, A9
		and	.d1	A4, A7, A16
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
		stw	.d2t2	B10, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		stw	.d2t1	A14, *+B15(24)
		stdw	.d2t1	A13:A12, *+B15(16)
		stdw	.d2t1	A11:A10, *+B15(8)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		dmv	.s1	A5, A4, A13:A12
		mv	.l1x	B4, A14
		shru	.s2	B4, 31, B10
		mvk	.d1	0, A10
		mvk	.d1	0, A11
		mvklh	.s1	16368, A11
.L731:
		and	.d1	1, A14, A0
	[!A0]	b	.s2	.L729
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A11, A10, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A11:A10
.L729:
		shru	.s1	A14, 31, A3
		add	.d1	A3, A14, A14
		shr	.s1	A14, 1, A14
		mv	.d1	A14, A1
	[!A1]	b	.s2	.L730
		nop	5
		mv	.l2x	A12, B4
		mv	.l2x	A13, B5
		dmv	.s1	A13, A12, A5:A4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A13:A12
		b	.s2	.L731
		nop	5
.L730:
		mv	.l1x	B10, A2
	[!A2]	b	.s2	.L733
		nop	5
		mv	.l2x	A10, B4
		mv	.l2x	A11, B5
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16368, A5
		callp	.s2	(__c6xabi_divd), B3
		b	.s2	.L732
		nop	5
.L733:
		dmv	.s1	A11, A10, A5:A4
.L732:
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
		mv	.l1x	B4, A12
		shru	.s1x	B4, 31, A13
		mvk	.d1	0, A10
		mvklh	.s1	16256, A10
.L740:
		and	.d1	1, A12, A0
	[!A0]	b	.s2	.L738
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A10, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A10
.L738:
		shru	.s1	A12, 31, A3
		add	.d1	A3, A12, A12
		shr	.s1	A12, 1, A12
		mv	.d1	A12, A1
	[!A1]	b	.s2	.L739
		nop	5
		mv	.l2x	A11, B4
		mv	.d1	A11, A4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A11
		b	.s2	.L740
		nop	5
.L739:
		mv	.d1	A13, A2
	[!A2]	b	.s2	.L742
		nop	5
		mv	.l2x	A10, B4
		mvk	.d1	0, A4
		mvklh	.s1	16256, A4
		callp	.s2	(__c6xabi_divf), B3
		b	.s2	.L741
		nop	5
.L742:
		mv	.d1	A10, A4
.L741:
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
		dmv	.s1	A5, A4, A1:A0
		mv	.d1	A1, A4
		mv	.l1x	B5, A3
		cmpgtu	.l1	A3, A4, A2
	[A2]	b	.s2	.L748
		nop	5
		mv	.d1	A1, A5
		cmpltu	.l1	A3, A5, A1
	[A1]	b	.s2	.L749
		nop	5
		mv	.d1	A0, A6
		mv	.l1x	B4, A7
		cmpgtu	.l1	A7, A6, A2
	[A2]	b	.s2	.L750
		nop	5
		cmpltu	.l1	A7, A0, A0
	[A0]	b	.s2	.L751
		nop	5
		mvk	.d1	1, A4
		b	.s2	.L747
		nop	5
.L748:
		mvk	.d1	0, A4
		b	.s2	.L747
		nop	5
.L749:
		mvk	.d1	2, A4
		b	.s2	.L747
		nop	5
.L750:
		mvk	.d1	0, A4
		b	.s2	.L747
		nop	5
.L751:
		mvk	.d1	2, A4
.L747:
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
