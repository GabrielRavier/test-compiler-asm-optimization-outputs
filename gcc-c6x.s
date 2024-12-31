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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(8), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L2
		nop	5
		ldw	.d1t1	*-A15(8), A1
		nop	4
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L3
		nop	5
.L4:
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
.L3:
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[A0]	b	.s2	.L4
		nop	5
		b	.s2	.L5
		nop	5
.L2:
		ldw	.d1t1	*-A15(8), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L5
		nop	5
		b	.s2	.L6
		nop	5
.L7:
		ldw	.d1t1	*-A15(8), A1
		nop	4
		add	.d1	A1, 1, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A2
		stw	.d1t1	A2, *-A15(4)
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
.L6:
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[A0]	b	.s2	.L7
		nop	5
.L5:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		stw	.d1t2	B6, *-A15(24)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		stw	.d1t1	A0, *-A15(20)
		b	.s2	.L10
		nop	5
.L12:
		ldw	.d1t1	*-A15(24), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L10:
		ldw	.d1t1	*-A15(24), A0
		nop	4
	[!A0]	b	.s2	.L11
		nop	5
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		ldw	.d1t1	*-A15(20), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L12
		nop	5
.L11:
		ldw	.d1t1	*-A15(24), A0
		nop	4
	[!A0]	b	.s2	.L13
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		b	.s2	.L14
		nop	5
.L13:
		mvk	.d1	0, A0
.L14:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		stw	.d1t1	A0, *-A15(16)
		b	.s2	.L16
		nop	5
.L18:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
.L16:
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[!A0]	b	.s2	.L17
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		ldw	.d1t1	*-A15(16), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L18
		nop	5
.L17:
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[!A0]	b	.s2	.L19
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		b	.s2	.L21
		nop	5
.L19:
		mvk	.d1	0, A0
.L21:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		stw	.d1t1	A0, *-A15(8)
		b	.s2	.L23
		nop	5
.L25:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
.L23:
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[!A0]	b	.s2	.L24
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A1, 24, 24, A1
		extu	.s1	A0, 24, 24, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L25
		nop	5
.L24:
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[!A0]	b	.s2	.L26
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A1
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		sub	.d1	A1, A0, A0
		b	.s2	.L28
		nop	5
.L26:
		mvk	.d1	0, A0
.L28:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		stw	.d1t1	A0, *-A15(8)
		b	.s2	.L30
		nop	5
.L31:
		ldw	.d1t1	*-A15(8), A1
		nop	4
		add	.d1	A1, 1, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A2
		stw	.d1t1	A2, *-A15(4)
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
.L30:
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[A0]	b	.s2	.L31
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		stw	.d1t1	A0, *-A15(16)
		b	.s2	.L34
		nop	5
.L36:
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A1, A0, A0
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		ldw	.d1t1	*-A15(16), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L34
		nop	5
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A1, A0, A0
		b	.s2	.L35
		nop	5
.L34:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(20)
	[A0]	b	.s2	.L36
		nop	5
		mvk	.d1	0, A0
.L35:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L38
		nop	5
.L39:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L38:
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[A0]	b	.s2	.L39
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		b	.s2	.L42
		nop	5
.L43:
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L42:
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L43
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		stw	.d1t1	A0, *-A15(8)
		b	.s2	.L46
		nop	5
.L48:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L46:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[!A0]	b	.s2	.L47
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		ldw	.d1t1	*-A15(8), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L48
		nop	5
.L47:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		mv	.d1	A4, A1
		stw	.d1t2	B4, *-A15(4)
.L53:
		ldb	.d1t1	*A1, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		ldw	.d1t1	*-A15(4), A2
		nop	4
		cmpeq	.l1	A0, A2, A0
	[!A0]	b	.s2	.L51
		nop	5
		mv	.d1	A1, A0
		b	.s2	.L52
		nop	5
.L51:
		mv	.d1	A1, A0
		add	.d1	A0, 1, A1
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L53
		nop	5
		mvk	.d1	0, A0
.L52:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		b	.s2	.L55
		nop	5
.L57:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
.L55:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A1, 24, A1
		shr	.s1	A1, 24, A1
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L56
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L57
		nop	5
.L56:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A1
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		sub	.d1	A1, A0, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L60
		nop	5
.L61:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
.L60:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L61
		nop	5
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.d1	A1, A0, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(20)
	[A0]	b	.s2	.L66
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L65
		nop	5
.L68:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
.L66:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
	[!A0]	b	.s2	.L67
		nop	5
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
	[!A0]	b	.s2	.L67
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[!A0]	b	.s2	.L67
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A1, 24, 24, A1
		extu	.s1	A0, 24, 24, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L68
		nop	5
.L67:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A1
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		sub	.d1	A1, A0, A0
.L65:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		stw	.d1t1	A0, *-A15(8)
		b	.s2	.L70
		nop	5
.L71:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 2, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 2, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 2, A0
		stw	.d1t1	A0, *-A15(20)
.L70:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		cmplt	.l1	1, A0, A0
	[A0]	b	.s2	.L71
		nop	5
	nop
	nop
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		set	.s1	A0, 5, 5, A0
		mvk	.s1	-97, A3
		add	.d1	A0, A3, A1
		mvk	.s1	25, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.s1	127, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.s1	32, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L77
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		cmpeq	.l1	9, A0, A0
	[!A0]	b	.s2	.L78
		nop	5
.L77:
		mvk	.d1	1, A0
		b	.s2	.L80
		nop	5
.L78:
		mvk	.d1	0, A0
.L80:
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		cmpltu	.l1	31, A0, A0
	[!A0]	b	.s2	.L82
		nop	5
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.s1	127, A0
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L83
		nop	5
.L82:
		mvk	.d1	1, A0
		b	.s2	.L85
		nop	5
.L83:
		mvk	.d1	0, A0
.L85:
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mvk	.s1	-33, A3
		add	.d1	A0, A3, A1
		mvk	.s1	93, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mvk	.s1	-97, A3
		add	.d1	A0, A3, A1
		mvk	.s1	25, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		subah	.d1	A0, 16, A1
		mvk	.s1	94, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.s1	32, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L95
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.d1	A0, 9, A0
		cmpltu	.l1	4, A0, A0
	[A0]	b	.s2	.L96
		nop	5
.L95:
		mvk	.d1	1, A0
		b	.s2	.L98
		nop	5
.L96:
		mvk	.d1	0, A0
.L98:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mvk	.s1	-65, A3
		add	.d1	A0, A3, A1
		mvk	.s1	25, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		cmpltu	.l1	31, A0, A0
	[!A0]	b	.s2	.L102
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mvk	.s1	-127, A3
		add	.d1	A0, A3, A1
		mvk	.s1	32, A0
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L102
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		addk	.s1	-8232, A0
		cmpltu	.l1	1, A0, A0
	[!A0]	b	.s2	.L102
		nop	5
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.d1	7, A0
		mvklh	.s1	65535, A0
		add	.d1	A1, A0, A0
		cmpltu	.l1	2, A0, A0
	[A0]	b	.s2	.L103
		nop	5
.L102:
		mvk	.d1	1, A0
		b	.s2	.L105
		nop	5
.L103:
		mvk	.d1	0, A0
.L105:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.s1	254, A0
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L109
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		clr	.s1	A0, 7, 31, A1
		mvk	.s1	32, A0
		cmpltu	.l1	A0, A1, A0
		extu	.s1	A0, 24, 24, A0
		b	.s2	.L110
		nop	5
.L109:
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.s1	8231, A0
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L111
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mvk	.s1	-8234, A3
		add	.d1	A0, A3, A1
		mvk	.s1	-18475, A0
		mvklh	.s1	0, A0
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L111
		nop	5
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.s1	8192, A0
		mvklh	.s1	65535, A0
		add	.d1	A1, A0, A1
		mvk	.s1	8184, A0
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L112
		nop	5
.L111:
		mvk	.d1	1, A0
		b	.s2	.L110
		nop	5
.L112:
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.d1	4, A0
		mvklh	.s1	65535, A0
		add	.d1	A1, A0, A1
		mvk	.d1	3, A0
		mvklh	.s1	16, A0
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L113
		nop	5
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.d1	-2, A0
		mvklh	.s1	0, A0
		and	.d1	A0, A1, A1
		mvk	.d1	-2, A0
		mvklh	.s1	0, A0
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L114
		nop	5
.L113:
		mvk	.d1	0, A0
		b	.s2	.L110
		nop	5
.L114:
		mvk	.d1	1, A0
.L110:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
	[!A0]	b	.s2	.L116
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		set	.s1	A0, 5, 5, A0
		addk	.s1	-97, A0
		cmpltu	.l1	5, A0, A0
	[A0]	b	.s2	.L117
		nop	5
.L116:
		mvk	.d1	1, A0
		b	.s2	.L119
		nop	5
.L117:
		mvk	.d1	0, A0
.L119:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		clr	.s1	A0, 7, 31, A0
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		stdw	.d1t2	B5:B4, *-A15(24)
		lddw	.d1t2	*-A15(16), B5:B4
		nop	4
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L134
		nop	5
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		b	.s2	.L125
		nop	5
.L134:
		lddw	.d1t2	*-A15(24), B5:B4
		nop	4
		lddw	.d1t1	*-A15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L135
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		b	.s2	.L125
		nop	5
.L135:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		lddw	.d1t2	*-A15(24), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L136
		nop	5
		lddw	.d1t2	*-A15(24), B5:B4
		nop	4
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_subd), B3
		dmv	.s1	A5, A4, A1:A0
		b	.s2	.L125
		nop	5
.L136:
		mvk	.d1	0, A0
		mvk	.d1	0, A1
.L125:
		dmv	.s1	A1, A0, A5:A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		ldw	.d1t2	*-A15(12), B4
		nop	4
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L153
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L144
		nop	5
.L153:
		ldw	.d1t2	*-A15(16), B4
		nop	4
		ldw	.d1t1	*-A15(16), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L154
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
		b	.s2	.L144
		nop	5
.L154:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldw	.d1t1	*-A15(16), A1
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L155
		nop	5
		ldw	.d1t2	*-A15(16), B4
		nop	4
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(__c6xabi_subf), B3
		mv	.d1	A4, A0
		b	.s2	.L144
		nop	5
.L155:
		mvk	.d1	0, A0
.L144:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		stdw	.d1t2	B5:B4, *-A15(24)
		lddw	.d1t2	*-A15(16), B5:B4
		nop	4
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L175
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		b	.s2	.L163
		nop	5
.L175:
		lddw	.d1t2	*-A15(24), B5:B4
		nop	4
		lddw	.d1t1	*-A15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L176
		nop	5
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		b	.s2	.L163
		nop	5
.L176:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L166
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L167
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		b	.s2	.L163
		nop	5
.L167:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		b	.s2	.L163
		nop	5
.L166:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		lddw	.d1t2	*-A15(24), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L177
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		b	.s2	.L163
		nop	5
.L177:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
.L163:
		dmv	.s1	A1, A0, A5:A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		ldw	.d1t2	*-A15(12), B4
		nop	4
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L196
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
		b	.s2	.L184
		nop	5
.L196:
		ldw	.d1t2	*-A15(16), B4
		nop	4
		ldw	.d1t1	*-A15(16), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L197
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L184
		nop	5
.L197:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(16), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L187
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L188
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
		b	.s2	.L184
		nop	5
.L188:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L184
		nop	5
.L187:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldw	.d1t1	*-A15(16), A1
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L198
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
		b	.s2	.L184
		nop	5
.L198:
		ldw	.d1t1	*-A15(12), A0
		nop	4
.L184:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		stdw	.d1t2	B5:B4, *-A15(24)
		lddw	.d1t2	*-A15(16), B5:B4
		nop	4
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L217
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		b	.s2	.L205
		nop	5
.L217:
		lddw	.d1t2	*-A15(24), B5:B4
		nop	4
		lddw	.d1t1	*-A15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L218
		nop	5
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		b	.s2	.L205
		nop	5
.L218:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L208
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L209
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		b	.s2	.L205
		nop	5
.L209:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		b	.s2	.L205
		nop	5
.L208:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		lddw	.d1t2	*-A15(24), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L219
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		b	.s2	.L205
		nop	5
.L219:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
.L205:
		dmv	.s1	A1, A0, A5:A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		stdw	.d1t2	B5:B4, *-A15(24)
		lddw	.d1t2	*-A15(16), B5:B4
		nop	4
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L238
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		b	.s2	.L226
		nop	5
.L238:
		lddw	.d1t2	*-A15(24), B5:B4
		nop	4
		lddw	.d1t1	*-A15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L239
		nop	5
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		b	.s2	.L226
		nop	5
.L239:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L229
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L230
		nop	5
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		b	.s2	.L226
		nop	5
.L230:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		b	.s2	.L226
		nop	5
.L229:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		lddw	.d1t2	*-A15(24), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L240
		nop	5
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		b	.s2	.L226
		nop	5
.L240:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
.L226:
		dmv	.s1	A1, A0, A5:A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		ldw	.d1t2	*-A15(12), B4
		nop	4
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L259
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
		b	.s2	.L247
		nop	5
.L259:
		ldw	.d1t2	*-A15(16), B4
		nop	4
		ldw	.d1t1	*-A15(16), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L260
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L247
		nop	5
.L260:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(16), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L250
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L251
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L247
		nop	5
.L251:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		b	.s2	.L247
		nop	5
.L250:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldw	.d1t1	*-A15(16), A1
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L261
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L247
		nop	5
.L261:
		ldw	.d1t1	*-A15(16), A0
		nop	4
.L247:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		stdw	.d1t2	B5:B4, *-A15(24)
		lddw	.d1t2	*-A15(16), B5:B4
		nop	4
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L280
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		b	.s2	.L268
		nop	5
.L280:
		lddw	.d1t2	*-A15(24), B5:B4
		nop	4
		lddw	.d1t1	*-A15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L281
		nop	5
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		b	.s2	.L268
		nop	5
.L281:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L271
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L272
		nop	5
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		b	.s2	.L268
		nop	5
.L272:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		b	.s2	.L268
		nop	5
.L271:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		lddw	.d1t2	*-A15(24), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L282
		nop	5
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		b	.s2	.L268
		nop	5
.L282:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
.L268:
		dmv	.s1	A1, A0, A5:A4
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(20)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		stw	.d1t1	A0, *-A15(16)
		ldw	.d2t1	*+B14($GOT(s.0)), A0
		nop	4
		stw	.d1t1	A0, *-A15(12)
		b	.s2	.L287
		nop	5
.L288:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		clr	.s1	A0, 6, 31, A0
		ldw	.d2t1	*+B14($GOT(digits)), A1
		nop	4
		add	.d1	A1, A0, A0
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shru	.s1	A0, 6, A0
		stw	.d1t1	A0, *-A15(16)
.L287:
		ldw	.d1t1	*-A15(16), A0
		nop	4
	[A0]	b	.s2	.L288
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mvk	.d1	0, A1
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B14($GOT(s.0)), A0
		nop	4
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(28), B14
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
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A2
		nop	4
		sub	.d1	A2, 1, A2
		mv	.d1	A2, A0
		mvk	.d1	0, A1
		addaw	.d1x	B14, (seed), A2
		stdw	.d1t1	A1:A0, *A2
	nop
		ldw	.d2t2	*+B15(20), B14
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		addaw	.d1x	B14, (seed), A0
		lddw	.d1t1	*A0, A1:A0
		nop	4
		mvk	.s1	32557, A2
		mvklh	.s1	19605, A2
		mpy32	.m1	A1, A2, A2
		nop	3
		mv	.l2x	A2, B0
		mvk	.s1	-3027, A2
		mvklh	.s1	22609, A2
		mpy32	.m1	A0, A2, A2
		nop	3
		add	.d1x	A2, B0, A2
		mvk	.s2	32557, B0
		mvklh	.s2	19605, B0
		mpy32u	.m2x	B0, A0, B1:B0
		nop	3
		add	.d1x	A2, B1, A0
		mv	.l2x	A0, B1
		mvk	.d1	1, A4
		mvk	.d1	0, A5
		stdw	.d1t1	A5:A4, *-A15(24)
		ldw	.d1t1	*-A15(24), A5
		nop	4
		addu	.l1x	A5, B0, A1:A0
		add	.d1x	A1, B1, A1
		ldw	.d1t1	*-A15(20), A3
		nop	4
		add	.d1	A1, A3, A1
		addaw	.d1x	B14, (seed), A2
		stdw	.d1t1	A1:A0, *A2
		addaw	.d1x	B14, (seed), A0
		lddw	.d1t1	*A0, A1:A0
		nop	4
		shru	.s1	A1, 1, A4
		stw	.d1t1	A4, *-A15(16)
		mvk	.d1	0, A5
		stw	.d1t1	A5, *-A15(12)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(28), B14
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(8), A0
		nop	4
	[A0]	b	.s2	.L294
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mvk	.d1	0, A1
		stw	.d1t1	A1, *+A0(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*+A0(4), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		stw	.d1t1	A1, *A0
		b	.s2	.L293
		nop	5
.L294:
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*-A15(8), A1
		nop	4
		stw	.d1t1	A1, *+A0(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*-A15(4), A1
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L293
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		ldw	.d1t1	*-A15(4), A1
		nop	4
		stw	.d1t1	A1, *+A0(4)
.L293:
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L297
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*+A1(4), A1
		nop	4
		stw	.d1t1	A1, *+A0(4)
.L297:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*+A0(4), A0
		nop	4
	[!A0]	b	.s2	.L299
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*+A0(4), A0
		nop	4
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
.L299:
	nop
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
		subah	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(52)
		stw	.d2t2	B3, *+B15(48)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(28)
		stw	.d1t2	B4, *-A15(32)
		stw	.d1t1	A6, *-A15(36)
		stw	.d1t2	B6, *-A15(40)
		stw	.d1t1	A8, *-A15(44)
		ldw	.d1t1	*-A15(40), A3
		nop	4
		stw	.d1t1	A3, *-A15(48)
		ldw	.d1t1	*-A15(48), A2
		nop	4
		sub	.d1	A2, 1, A2
		stw	.d1t1	A2, *-A15(16)
		ldw	.d1t1	*-A15(48), A0
		nop	4
		mvk	.d1	0, A1
		addu	.l1	A0, A0, A5:A4
		mv	.l2x	A4, B0
		mv	.l2x	A5, B1
		add	.d2x	B1, A1, B1
		add	.d2x	B1, A1, B1
		addu	.l2	B0, B0, B5:B4
		mv	.l1x	B4, A0
		mv	.l1x	B5, A1
		add	.d1x	A1, B1, A1
		add	.d1x	A1, B1, A1
		addu	.l1	A0, A0, A5:A4
		mv	.l2x	A4, B0
		mv	.l2x	A5, B1
		add	.d2x	B1, A1, B1
		add	.d2x	B1, A1, B1
		ldw	.d1t1	*-A15(32), A0
		nop	4
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(36), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		stw	.d1t1	A0, *-A15(24)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(12)
		b	.s2	.L301
		nop	5
.L304:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldw	.d1t1	*-A15(48), A5
		nop	4
		mpy32	.m1	A5, A0, A0
		nop	3
		ldw	.d1t1	*-A15(20), A1
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(44), A0
		nop	4
		mv	.l2x	A1, B4
		ldw	.d1t1	*-A15(28), A4
		nop	4
		call	.s2x	A0
		addkpc	.s2	.L305, B3, 4
.L305:
		mv	.d1	A4, A0
	[A0]	b	.s2	.L302
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldw	.d1t1	*-A15(48), A3
		nop	4
		mpy32	.m1	A3, A0, A0
		nop	3
		ldw	.d1t1	*-A15(20), A1
		nop	4
		add	.d1	A1, A0, A0
		b	.s2	.L303
		nop	5
.L302:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
.L301:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(24), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L304
		nop	5
		ldw	.d1t1	*-A15(24), A0
		nop	4
		add	.d1	A0, 1, A1
		ldw	.d1t1	*-A15(36), A0
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(24), A0
		nop	4
		ldw	.d1t1	*-A15(48), A4
		nop	4
		mpy32	.m1	A4, A0, A0
		nop	3
		ldw	.d1t1	*-A15(20), A1
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d1t1	*-A15(40), A6
		nop	4
		ldw	.d1t2	*-A15(28), B4
		nop	4
		mv	.d1	A0, A4
		callp	.s2	(memcpy), B3
		mv	.d1	A4, A0
.L303:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(48), B3
		nop	4
		ldw	.d2t2	*+B15(52), B14
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
		subah	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(52)
		stw	.d2t2	B3, *+B15(48)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(28)
		stw	.d1t2	B4, *-A15(32)
		stw	.d1t1	A6, *-A15(36)
		stw	.d1t2	B6, *-A15(40)
		stw	.d1t1	A8, *-A15(44)
		ldw	.d1t1	*-A15(40), A3
		nop	4
		stw	.d1t1	A3, *-A15(48)
		ldw	.d1t1	*-A15(48), A2
		nop	4
		sub	.d1	A2, 1, A2
		stw	.d1t1	A2, *-A15(16)
		ldw	.d1t1	*-A15(48), A0
		nop	4
		mvk	.d1	0, A1
		addu	.l1	A0, A0, A5:A4
		mv	.l2x	A4, B0
		mv	.l2x	A5, B1
		add	.d2x	B1, A1, B1
		add	.d2x	B1, A1, B1
		addu	.l2	B0, B0, B5:B4
		mv	.l1x	B4, A0
		mv	.l1x	B5, A1
		add	.d1x	A1, B1, A1
		add	.d1x	A1, B1, A1
		addu	.l1	A0, A0, A5:A4
		mv	.l2x	A4, B0
		mv	.l2x	A5, B1
		add	.d2x	B1, A1, B1
		add	.d2x	B1, A1, B1
		ldw	.d1t1	*-A15(32), A0
		nop	4
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(36), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		stw	.d1t1	A0, *-A15(24)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(12)
		b	.s2	.L308
		nop	5
.L311:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldw	.d1t1	*-A15(48), A5
		nop	4
		mpy32	.m1	A5, A0, A0
		nop	3
		ldw	.d1t1	*-A15(20), A1
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(44), A0
		nop	4
		mv	.l2x	A1, B4
		ldw	.d1t1	*-A15(28), A4
		nop	4
		call	.s2x	A0
		addkpc	.s2	.L312, B3, 4
.L312:
		mv	.d1	A4, A0
	[A0]	b	.s2	.L309
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldw	.d1t1	*-A15(48), A3
		nop	4
		mpy32	.m1	A3, A0, A0
		nop	3
		ldw	.d1t1	*-A15(20), A1
		nop	4
		add	.d1	A1, A0, A0
		b	.s2	.L310
		nop	5
.L309:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
.L308:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(24), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L311
		nop	5
		mvk	.d1	0, A0
.L310:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(48), B3
		nop	4
		ldw	.d2t2	*+B15(52), B14
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shr	.s1	A0, 31, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		xor	.d1	A0, A1, A0
		sub	.d1	A0, A1, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(20)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(12)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(16)
		b	.s2	.L316
		nop	5
.L317:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
.L316:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mv	.d1	A0, A4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L317
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mvk	.s1	43, A1
		cmpeq	.l1	A1, A0, A1
	[A1]	b	.s2	.L318
		nop	5
		mvk	.s1	45, A1
		cmpeq	.l1	A1, A0, A0
	[!A0]	b	.s2	.L320
		nop	5
		mvk	.d1	1, A0
		stw	.d1t1	A0, *-A15(16)
.L318:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
		b	.s2	.L320
		nop	5
.L321:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		mv	.d1	A1, A0
		shl	.s1	A0, 2, A0
		add	.d1	A0, A1, A0
		shl	.s1	A0, 1, A0
		mv	.d1	A0, A2
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(20)
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		sub	.d1	A2, A0, A0
		stw	.d1t1	A0, *-A15(12)
.L320:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
	[!A0]	b	.s2	.L321
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
	[A0]	b	.s2	.L322
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		neg	.l1	A0, A0
		b	.s2	.L324
		nop	5
.L322:
		ldw	.d1t1	*-A15(12), A0
		nop	4
.L324:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(20)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(12)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(16)
		b	.s2	.L327
		nop	5
.L328:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
.L327:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mv	.d1	A0, A4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L328
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mvk	.s1	43, A1
		cmpeq	.l1	A1, A0, A1
	[A1]	b	.s2	.L329
		nop	5
		mvk	.s1	45, A1
		cmpeq	.l1	A1, A0, A0
	[!A0]	b	.s2	.L331
		nop	5
		mvk	.d1	1, A0
		stw	.d1t1	A0, *-A15(16)
.L329:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
		b	.s2	.L331
		nop	5
.L332:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		mv	.d1	A1, A0
		shl	.s1	A0, 2, A0
		add	.d1	A0, A1, A0
		shl	.s1	A0, 1, A0
		mv	.d1	A0, A2
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(20)
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		sub	.d1	A2, A0, A0
		stw	.d1t1	A0, *-A15(12)
.L331:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
	[!A0]	b	.s2	.L332
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
	[A0]	b	.s2	.L333
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		neg	.l1	A0, A0
		b	.s2	.L335
		nop	5
.L333:
		ldw	.d1t1	*-A15(12), A0
		nop	4
.L335:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
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
		subah	.d2	B15, 28, B15
		stw	.d2t2	B14, *+B15(60)
		stw	.d2t2	B3, *+B15(56)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(28)
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		stdw	.d1t1	A1:A0, *-A15(16)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(20)
		b	.s2	.L338
		nop	5
.L339:
		ldw	.d1t1	*-A15(28), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(28)
.L338:
		ldw	.d1t1	*-A15(28), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mv	.d1	A0, A4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L339
		nop	5
		ldw	.d1t1	*-A15(28), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mvk	.s1	43, A1
		cmpeq	.l1	A1, A0, A1
	[A1]	b	.s2	.L340
		nop	5
		mvk	.s1	45, A1
		cmpeq	.l1	A1, A0, A0
	[!A0]	b	.s2	.L342
		nop	5
		mvk	.d1	1, A0
		stw	.d1t1	A0, *-A15(20)
.L340:
		ldw	.d1t1	*-A15(28), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(28)
		b	.s2	.L342
		nop	5
.L343:
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(48)
		lddw	.d1t2	*-A15(48), B1:B0
		nop	4
		addu	.l2	B0, B0, B5:B4
		mv	.l1x	B4, A0
		mv	.l1x	B5, A1
		add	.d1x	A1, B1, A1
		add	.d1x	A1, B1, A1
		addu	.l1	A0, A0, A5:A4
		mv	.l2x	A4, B0
		mv	.l2x	A5, B1
		add	.d2x	B1, A1, B1
		add	.d2x	B1, A1, B1
		ldw	.d1t1	*-A15(48), A5
		nop	4
		addu	.l1x	A5, B0, A1:A0
		add	.d1x	A1, B1, A1
		ldw	.d1t1	*-A15(44), A3
		nop	4
		add	.d1	A1, A3, A1
		addu	.l1	A0, A0, A5:A4
		mv	.l2x	A4, B0
		mv	.l2x	A5, B1
		add	.d2x	B1, A1, B1
		add	.d2x	B1, A1, B1
		mv	.l1x	B0, A0
		mv	.l1x	B1, A1
		mv	.l2x	A0, B0
		mv	.l2x	A1, B1
		ldw	.d1t1	*-A15(28), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(28)
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		stw	.d1t1	A0, *-A15(40)
		shr	.s1	A0, 31, A0
		stw	.d1t1	A0, *-A15(36)
		ldw	.d1t1	*-A15(40), A5
		nop	4
		sub	.l1x	B0, A5, A0
		mv	.l1x	B0, A3
		cmpltu	.l1	A3, A0, A2
		ldw	.d1t1	*-A15(36), A4
		nop	4
		sub	.l1x	B1, A4, A1
		sub	.d1	A1, A2, A2
		mv	.d1	A2, A1
		stdw	.d1t1	A1:A0, *-A15(16)
.L342:
		ldw	.d1t1	*-A15(28), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
	[!A0]	b	.s2	.L343
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[A0]	b	.s2	.L344
		nop	5
		mvk	.d2	0, B0
		mvk	.d2	0, B1
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(56)
		ldw	.d1t1	*-A15(56), A5
		nop	4
		sub	.l1x	B0, A5, A0
		mv	.l1x	B0, A3
		cmpltu	.l1	A3, A0, A2
		ldw	.d1t1	*-A15(52), A4
		nop	4
		sub	.l1x	B1, A4, A1
		sub	.d1	A1, A2, A2
		mv	.d1	A2, A1
		b	.s2	.L346
		nop	5
.L344:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
.L346:
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(56), B3
		nop	4
		ldw	.d2t2	*+B15(60), B14
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
		subah	.d2	B15, 20, B15
		stw	.d2t2	B14, *+B15(44)
		stw	.d2t2	B3, *+B15(40)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(20)
		stw	.d1t2	B4, *-A15(24)
		stw	.d1t1	A6, *-A15(28)
		stw	.d1t2	B6, *-A15(32)
		stw	.d1t1	A8, *-A15(36)
		b	.s2	.L349
		nop	5
.L353:
		ldw	.d1t1	*-A15(28), A0
		nop	4
		shru	.s1	A0, 1, A1
		ldw	.d1t1	*-A15(32), A0
		nop	4
		mpy32	.m1	A1, A0, A0
		nop	3
		ldw	.d1t1	*-A15(24), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(36), A0
		nop	4
		ldw	.d1t2	*-A15(12), B4
		nop	4
		ldw	.d1t1	*-A15(20), A4
		nop	4
		call	.s2x	A0
		addkpc	.s2	.L354, B3, 4
.L354:
		stw	.d1t1	A4, *-A15(16)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L350
		nop	5
		ldw	.d1t1	*-A15(28), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(28)
		b	.s2	.L349
		nop	5
.L350:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmplt	.l1	0, A0, A0
	[!A0]	b	.s2	.L351
		nop	5
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(32), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(28), A0
		nop	4
		shru	.s1	A0, 1, A0
		ldw	.d1t1	*-A15(28), A1
		nop	4
		sub	.d1	A1, A0, A0
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(28)
		b	.s2	.L349
		nop	5
.L351:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L352
		nop	5
.L349:
		ldw	.d1t1	*-A15(28), A0
		nop	4
	[A0]	b	.s2	.L353
		nop	5
		mvk	.d1	0, A0
.L352:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(40), B3
		nop	4
		ldw	.d2t2	*+B15(44), B14
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
		subah	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(52)
		stw	.d2t2	B3, *+B15(48)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(28)
		stw	.d1t2	B4, *-A15(32)
		stw	.d1t1	A6, *-A15(36)
		stw	.d1t2	B6, *-A15(40)
		stw	.d1t1	A8, *-A15(44)
		stw	.d1t2	B8, *-A15(48)
		ldw	.d1t1	*-A15(32), A0
		nop	4
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(36), A0
		nop	4
		stw	.d1t1	A0, *-A15(16)
		b	.s2	.L356
		nop	5
.L360:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shr	.s1	A0, 1, A0
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(40), A0
		nop	4
		mpy32	.m1	A1, A0, A0
		nop	3
		ldw	.d1t1	*-A15(12), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(44), A0
		nop	4
		ldw	.d1t1	*-A15(48), A6
		nop	4
		ldw	.d1t2	*-A15(20), B4
		nop	4
		ldw	.d1t1	*-A15(28), A4
		nop	4
		call	.s2x	A0
		addkpc	.s2	.L361, B3, 4
.L361:
		stw	.d1t1	A4, *-A15(24)
		ldw	.d1t1	*-A15(24), A0
		nop	4
	[A0]	b	.s2	.L357
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
		b	.s2	.L358
		nop	5
.L357:
		ldw	.d1t1	*-A15(24), A0
		nop	4
		cmplt	.l1	0, A0, A0
	[!A0]	b	.s2	.L359
		nop	5
		ldw	.d1t1	*-A15(20), A1
		nop	4
		ldw	.d1t1	*-A15(40), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
.L359:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shr	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
.L356:
		ldw	.d1t1	*-A15(16), A0
		nop	4
	[A0]	b	.s2	.L360
		nop	5
		mvk	.d1	0, A0
.L358:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(48), B3
		nop	4
		ldw	.d2t2	*+B15(52), B14
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
		subah	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(52)
		stw	.d1t1	A4, *-A15(28)
		stw	.d1t2	B4, *-A15(32)
		ldw	.d1t1	*-A15(28), A1
		nop	4
		ldw	.d1t1	*-A15(32), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L364, B3, 4
.L364:
		mv	.d1	A4, A0
		stw	.d1t1	A0, *-A15(36)
		ldw	.d1t1	*-A15(28), A1
		nop	4
		ldw	.d1t1	*-A15(32), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L365, B3, 4
.L365:
		mv	.d1	A5, A0
		ldw	.d1t1	*-A15(36), A3
		nop	4
		stw	.d1t1	A3, *-A15(16)
		stw	.d1t1	A0, *-A15(12)
		mvk	.d1	0, A1
		ldw	.d1t1	*-A15(16), A1
		nop	4
		mvk	.d1	0, A0
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A1, *-A15(48)
		stw	.d1t1	A0, *-A15(44)
		lddw	.d1t1	*-A15(48), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(52), B3
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
		sub	.d2	B15, 16, B15
		stdw	.d1t1	A5:A4, *-A15(8)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shr	.s1	A2, 31, A0
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shr	.s1	A2, 31, A1
		ldw	.d1t1	*-A15(8), A2
		nop	4
		xor	.d1	A0, A2, A2
		mv	.l2x	A2, B0
		ldw	.d1t1	*-A15(4), A2
		nop	4
		xor	.d1	A1, A2, A2
		mv	.l2x	A2, B1
		sub	.l1x	B0, A0, A3
		stw	.d1t1	A3, *-A15(16)
		ldw	.d1t1	*-A15(16), A4
		nop	4
		mv	.l1x	B0, A3
		cmpltu	.l1	A3, A4, A2
		sub	.l1x	B1, A1, A4
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A3
		nop	4
		sub	.d1	A3, A2, A0
		stw	.d1t1	A0, *-A15(12)
		lddw	.d1t2	*-A15(16), B1:B0
		nop	4
		mv	.l1x	B0, A0
		mv	.l1x	B1, A1
		dmv	.s1	A1, A0, A5:A4
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
		subah	.d2	B15, 28, B15
		stw	.d2t2	B14, *+B15(60)
		stw	.d2t2	B3, *+B15(56)
		stw	.d2t1	A10, *+B15(52)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A3, A10
		stdw	.d1t1	A5:A4, *-A15(40)
		stdw	.d1t2	B5:B4, *-A15(48)
		lddw	.d1t2	*-A15(48), B5:B4
		nop	4
		lddw	.d1t1	*-A15(40), A5:A4
		nop	4
		callp	.s2	(__c6xabi_divlli), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d1t1	A1:A0, *-A15(56)
		lddw	.d1t1	*-A15(40), A1:A0
		nop	4
		lddw	.d1t2	*-A15(48), B5:B4
		nop	4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_remlli), B3
		dmv	.s1	A5, A4, A1:A0
		lddw	.d1t1	*-A15(56), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *A10
		stdw	.d1t1	A1:A0, *+A10(8)
		mv	.d1	A10, A4
		ldw	.d2t1	*+B15(52), A10
		nop	4
		ldw	.d2t2	*+B15(56), B3
		nop	4
		ldw	.d2t2	*+B15(60), B14
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shr	.s1	A0, 31, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		xor	.d1	A0, A1, A0
		sub	.d1	A0, A1, A0
		mv	.d1	A0, A4
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
		subah	.d2	B15, 24, B15
		stw	.d2t2	B3, *+B15(52)
		stw	.d1t1	A4, *-A15(28)
		stw	.d1t2	B4, *-A15(32)
		ldw	.d1t1	*-A15(28), A1
		nop	4
		ldw	.d1t1	*-A15(32), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L376, B3, 4
.L376:
		mv	.d1	A4, A0
		stw	.d1t1	A0, *-A15(36)
		ldw	.d1t1	*-A15(28), A1
		nop	4
		ldw	.d1t1	*-A15(32), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L377, B3, 4
.L377:
		mv	.d1	A5, A0
		ldw	.d1t1	*-A15(36), A3
		nop	4
		stw	.d1t1	A3, *-A15(16)
		stw	.d1t1	A0, *-A15(12)
		mvk	.d1	0, A1
		ldw	.d1t1	*-A15(16), A1
		nop	4
		mvk	.d1	0, A0
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A1, *-A15(48)
		stw	.d1t1	A0, *-A15(44)
		lddw	.d1t1	*-A15(48), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(52), B3
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
		sub	.d2	B15, 16, B15
		stdw	.d1t1	A5:A4, *-A15(8)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shr	.s1	A2, 31, A0
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shr	.s1	A2, 31, A1
		ldw	.d1t1	*-A15(8), A2
		nop	4
		xor	.d1	A0, A2, A2
		mv	.l2x	A2, B0
		ldw	.d1t1	*-A15(4), A2
		nop	4
		xor	.d1	A1, A2, A2
		mv	.l2x	A2, B1
		sub	.l1x	B0, A0, A3
		stw	.d1t1	A3, *-A15(16)
		ldw	.d1t1	*-A15(16), A4
		nop	4
		mv	.l1x	B0, A3
		cmpltu	.l1	A3, A4, A2
		sub	.l1x	B1, A1, A4
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A3
		nop	4
		sub	.d1	A3, A2, A0
		stw	.d1t1	A0, *-A15(12)
		lddw	.d1t2	*-A15(16), B1:B0
		nop	4
		mv	.l1x	B0, A0
		mv	.l1x	B1, A1
		dmv	.s1	A1, A0, A5:A4
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
		subah	.d2	B15, 28, B15
		stw	.d2t2	B14, *+B15(60)
		stw	.d2t2	B3, *+B15(56)
		stw	.d2t1	A10, *+B15(52)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A3, A10
		stdw	.d1t1	A5:A4, *-A15(40)
		stdw	.d1t2	B5:B4, *-A15(48)
		lddw	.d1t2	*-A15(48), B5:B4
		nop	4
		lddw	.d1t1	*-A15(40), A5:A4
		nop	4
		callp	.s2	(__c6xabi_divlli), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d1t1	A1:A0, *-A15(56)
		lddw	.d1t1	*-A15(40), A1:A0
		nop	4
		lddw	.d1t2	*-A15(48), B5:B4
		nop	4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_remlli), B3
		dmv	.s1	A5, A4, A1:A0
		lddw	.d1t1	*-A15(56), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *A10
		stdw	.d1t1	A1:A0, *+A10(8)
		mv	.d1	A10, A4
		ldw	.d2t1	*+B15(52), A10
		nop	4
		ldw	.d2t2	*+B15(56), B3
		nop	4
		ldw	.d2t2	*+B15(60), B14
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		b	.s2	.L385
		nop	5
.L387:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d1t1	A0, *-A15(4)
.L385:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L386
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		ldw	.d1t1	*-A15(8), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L387
		nop	5
.L386:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L388
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		b	.s2	.L390
		nop	5
.L388:
		mvk	.d1	0, A0
.L390:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		b	.s2	.L392
		nop	5
.L394:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d1t1	A0, *-A15(8)
.L392:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L393
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L393
		nop	5
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[A0]	b	.s2	.L394
		nop	5
.L393:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpgt	.l1	A0, A1, A0
	[A0]	b	.s2	.L395
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmplt	.l1	A0, A1, A0
		extu	.s1	A0, 24, 24, A0
		b	.s2	.L397
		nop	5
.L395:
		mvk	.d1	-1, A0
.L397:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
	nop
.L399:
		ldw	.d1t1	*-A15(16), A1
		nop	4
		add	.d1	A1, 4, A0
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 4, A2
		stw	.d1t1	A2, *-A15(12)
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d1t1	*A0, A0
		nop	4
	[A0]	b	.s2	.L399
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L402
		nop	5
.L403:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d1t1	A0, *-A15(12)
.L402:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[A0]	b	.s2	.L403
		nop	5
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.d1	A1, A0, A0
		shr	.s1	A0, 2, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		stw	.d1t1	A6, *-A15(12)
		b	.s2	.L406
		nop	5
.L408:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d1t1	A0, *-A15(8)
.L406:
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[!A0]	b	.s2	.L407
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L407
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L407
		nop	5
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[A0]	b	.s2	.L408
		nop	5
.L407:
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[!A0]	b	.s2	.L409
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpgt	.l1	A0, A1, A0
	[A0]	b	.s2	.L410
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmplt	.l1	A0, A1, A0
		extu	.s1	A0, 24, 24, A0
		b	.s2	.L413
		nop	5
.L410:
		mvk	.d1	-1, A0
		b	.s2	.L413
		nop	5
.L409:
		mvk	.d1	0, A0
.L413:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		stw	.d1t1	A6, *-A15(12)
		b	.s2	.L415
		nop	5
.L417:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d1t1	A0, *-A15(4)
.L415:
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[!A0]	b	.s2	.L416
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		ldw	.d1t1	*-A15(8), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L417
		nop	5
.L416:
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[!A0]	b	.s2	.L418
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		b	.s2	.L420
		nop	5
.L418:
		mvk	.d1	0, A0
.L420:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		stw	.d1t1	A6, *-A15(12)
		b	.s2	.L422
		nop	5
.L424:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d1t1	A0, *-A15(8)
.L422:
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[!A0]	b	.s2	.L423
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L424
		nop	5
.L423:
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[!A0]	b	.s2	.L425
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpgt	.l1	A0, A1, A0
	[A0]	b	.s2	.L426
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmplt	.l1	A0, A1, A0
		extu	.s1	A0, 24, 24, A0
		b	.s2	.L429
		nop	5
.L426:
		mvk	.d1	-1, A0
		b	.s2	.L429
		nop	5
.L425:
		mvk	.d1	0, A0
.L429:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L431
		nop	5
.L432:
		ldw	.d1t1	*-A15(16), A1
		nop	4
		add	.d1	A1, 4, A0
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 4, A2
		stw	.d1t1	A2, *-A15(12)
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
.L431:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(20)
	[A0]	b	.s2	.L432
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L435
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L436
		nop	5
.L435:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		sub	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(20), A0
		nop	4
		shl	.s1	A0, 2, A0
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L441
		nop	5
		b	.s2	.L438
		nop	5
.L439:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		shl	.s1	A0, 2, A0
		ldw	.d1t1	*-A15(16), A1
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(20), A0
		nop	4
		shl	.s1	A0, 2, A0
		ldw	.d1t1	*-A15(12), A2
		nop	4
		add	.d1	A2, A0, A0
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
.L438:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(20)
	[A0]	b	.s2	.L439
		nop	5
		b	.s2	.L440
		nop	5
.L442:
		ldw	.d1t1	*-A15(16), A1
		nop	4
		add	.d1	A1, 4, A0
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 4, A2
		stw	.d1t1	A2, *-A15(12)
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
.L441:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(20)
	[A0]	b	.s2	.L442
		nop	5
.L440:
		ldw	.d1t1	*-A15(4), A0
		nop	4
.L436:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L444
		nop	5
.L445:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 4, A1
		stw	.d1t1	A1, *-A15(12)
		ldw	.d1t1	*-A15(16), A1
		nop	4
		stw	.d1t1	A1, *A0
.L444:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(20)
	[A0]	b	.s2	.L445
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L448
		nop	5
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A1
		nop	4
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(8)
		b	.s2	.L449
		nop	5
.L450:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
.L449:
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[A0]	b	.s2	.L450
		nop	5
		b	.s2	.L454
		nop	5
.L448:
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L454
		nop	5
		b	.s2	.L452
		nop	5
.L453:
		ldw	.d1t1	*-A15(4), A1
		nop	4
		add	.d1	A1, 1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A2
		stw	.d1t1	A2, *-A15(8)
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
.L452:
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[A0]	b	.s2	.L453
		nop	5
.L454:
	nop
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
		subah	.d2	B15, 20, B15
		stdw	.d1t1	A5:A4, *-A15(8)
		stw	.d1t2	B4, *-A15(12)
		lddw	.d1t1	*-A15(8), A1:A0
		nop	4
		ldw	.d1t1	*-A15(12), A2
		nop	4
		subah	.d1	A2, 16, A2
		cmpgt	.l2x	0, A2, B2
	[B2]	b	.s2	.L456
		nop	5
		shl	.s1	A0, A2, A2
		stw	.d1t1	A2, *-A15(20)
		mvk	.d1	0, A2
		stw	.d1t1	A2, *-A15(24)
		b	.s2	.L457
		nop	5
.L456:
		shru	.s2x	A0, 1, B2
		mvk	.s1	31, A2
		stw	.d1t1	A2, *-A15(16)
		ldw	.d1t1	*-A15(12), A2
		nop	4
		ldw	.d1t1	*-A15(16), A3
		nop	4
		sub	.d1	A3, A2, A2
		shru	.s1x	B2, A2, A2
		ldw	.d1t2	*-A15(12), B2
		nop	4
		shl	.s2x	A1, B2, B2
		stw	.d1t2	B2, *-A15(20)
		ldw	.d1t1	*-A15(20), A3
		nop	4
		or	.d1	A3, A2, A2
		stw	.d1t1	A2, *-A15(20)
		ldw	.d1t1	*-A15(12), A2
		nop	4
		shl	.s1	A0, A2, A2
		stw	.d1t1	A2, *-A15(24)
.L457:
		ldw	.d1t1	*-A15(12), A2
		nop	4
		neg	.l1	A2, A2
		clr	.s1	A2, 6, 31, A2
		subah	.d1	A2, 16, A2
		cmpgt	.l2x	0, A2, B2
	[B2]	b	.s2	.L458
		nop	5
		shru	.s1	A1, A2, A2
		mv	.l2x	A2, B0
		mvk	.d2	0, B1
		b	.s2	.L459
		nop	5
.L458:
		shl	.s2x	A1, 1, B2
		mvk	.s1	31, A2
		stw	.d1t1	A2, *-A15(28)
		ldw	.d1t1	*-A15(12), A2
		nop	4
		neg	.l1	A2, A2
		clr	.s1	A2, 6, 31, A2
		ldw	.d1t1	*-A15(28), A3
		nop	4
		sub	.d1	A3, A2, A2
		mv	.l2x	A2, B4
		shl	.s2	B2, B4, B2
		ldw	.d1t1	*-A15(12), A2
		nop	4
		neg	.l1	A2, A2
		clr	.s1	A2, 6, 31, A2
		shru	.s1	A0, A2, A2
		mv	.l2x	A2, B0
		or	.d2	B0, B2, B0
		ldw	.d1t1	*-A15(12), A2
		nop	4
		neg	.l1	A2, A2
		clr	.s1	A2, 6, 31, A2
		shru	.s1	A1, A2, A2
		mv	.l2x	A2, B1
.L459:
		ldw	.d1t2	*-A15(24), B4
		nop	4
		or	.d2	B4, B0, B4
		stw	.d1t2	B4, *-A15(40)
		ldw	.d1t2	*-A15(20), B4
		nop	4
		or	.d2	B4, B1, B4
		stw	.d1t2	B4, *-A15(36)
		lddw	.d1t2	*-A15(40), B1:B0
		nop	4
		mv	.l1x	B0, A0
		mv	.l1x	B1, A1
		dmv	.s1	A1, A0, A5:A4
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
		subah	.d2	B15, 20, B15
		stdw	.d1t1	A5:A4, *-A15(8)
		stw	.d1t2	B4, *-A15(12)
		lddw	.d1t1	*-A15(8), A1:A0
		nop	4
		ldw	.d1t1	*-A15(12), A2
		nop	4
		subah	.d1	A2, 16, A2
		cmpgt	.l2x	0, A2, B2
	[B2]	b	.s2	.L462
		nop	5
		shru	.s1	A1, A2, A2
		stw	.d1t1	A2, *-A15(24)
		mvk	.d1	0, A2
		stw	.d1t1	A2, *-A15(20)
		b	.s2	.L463
		nop	5
.L462:
		shl	.s2x	A1, 1, B2
		mvk	.s1	31, A2
		stw	.d1t1	A2, *-A15(16)
		ldw	.d1t1	*-A15(12), A2
		nop	4
		ldw	.d1t1	*-A15(16), A3
		nop	4
		sub	.d1	A3, A2, A2
		shl	.s1x	B2, A2, A2
		ldw	.d1t2	*-A15(12), B2
		nop	4
		shru	.s2x	A0, B2, B2
		stw	.d1t2	B2, *-A15(24)
		ldw	.d1t1	*-A15(24), A3
		nop	4
		or	.d1	A3, A2, A2
		stw	.d1t1	A2, *-A15(24)
		ldw	.d1t1	*-A15(12), A2
		nop	4
		shru	.s1	A1, A2, A2
		stw	.d1t1	A2, *-A15(20)
.L463:
		ldw	.d1t1	*-A15(12), A2
		nop	4
		neg	.l1	A2, A2
		clr	.s1	A2, 6, 31, A2
		subah	.d1	A2, 16, A2
		cmpgt	.l2x	0, A2, B2
	[B2]	b	.s2	.L464
		nop	5
		shl	.s1	A0, A2, A2
		mv	.l2x	A2, B1
		mvk	.d2	0, B0
		b	.s2	.L465
		nop	5
.L464:
		shru	.s2x	A0, 1, B2
		mvk	.s1	31, A2
		stw	.d1t1	A2, *-A15(28)
		ldw	.d1t1	*-A15(12), A2
		nop	4
		neg	.l1	A2, A2
		clr	.s1	A2, 6, 31, A2
		ldw	.d1t1	*-A15(28), A3
		nop	4
		sub	.d1	A3, A2, A2
		mv	.l2x	A2, B4
		shru	.s2	B2, B4, B2
		ldw	.d1t1	*-A15(12), A2
		nop	4
		neg	.l1	A2, A2
		clr	.s1	A2, 6, 31, A2
		shl	.s1	A1, A2, A2
		mv	.l2x	A2, B1
		or	.d2	B1, B2, B1
		ldw	.d1t1	*-A15(12), A2
		nop	4
		neg	.l1	A2, A2
		clr	.s1	A2, 6, 31, A2
		shl	.s1	A0, A2, A2
		mv	.l2x	A2, B0
.L465:
		ldw	.d1t2	*-A15(24), B4
		nop	4
		or	.d2	B4, B0, B4
		stw	.d1t2	B4, *-A15(40)
		ldw	.d1t2	*-A15(20), B4
		nop	4
		or	.d2	B4, B1, B4
		stw	.d1t2	B4, *-A15(36)
		lddw	.d1t2	*-A15(40), B1:B0
		nop	4
		mv	.l1x	B0, A0
		mv	.l1x	B1, A1
		dmv	.s1	A1, A0, A5:A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		rotl	.m1	A1, A0, A0
		nop	1
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		mvk	.s1	32, A1
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.d1	A1, A0, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		rotl	.m1	A1, A0, A0
		nop	1
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		rotl	.m1	A1, A0, A0
		nop	1
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		mvk	.s1	32, A1
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.d1	A1, A0, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		rotl	.m1	A1, A0, A0
		nop	1
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		sth	.d1t1	A4, *-A15(2)
		stw	.d1t2	B4, *-A15(8)
		ldhu	.d1t1	*-A15(2), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		shl	.s1	A1, A0, A0
		mv	.l2x	A0, B0
		ldhu	.d1t1	*-A15(2), A1
		nop	4
		mvk	.s1	16, A2
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.d1	A2, A0, A0
		shru	.s1	A1, A0, A0
		or	.d1x	A0, B0, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		sth	.d1t1	A4, *-A15(2)
		stw	.d1t2	B4, *-A15(8)
		ldhu	.d1t1	*-A15(2), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		shru	.s1	A1, A0, A0
		mv	.l2x	A0, B0
		ldhu	.d1t1	*-A15(2), A1
		nop	4
		mvk	.s1	16, A2
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.d1	A2, A0, A0
		shl	.s1	A1, A0, A0
		or	.d1x	A0, B0, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stb	.d1t1	A4, *-A15(1)
		stw	.d1t2	B4, *-A15(8)
		ldbu	.d1t1	*-A15(1), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		shl	.s1	A1, A0, A0
		mv	.d1	A0, A2
		ldbu	.d1t1	*-A15(1), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.l1	8, A0, A0
		shru	.s1	A1, A0, A0
		or	.d1	A0, A2, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stb	.d1t1	A4, *-A15(1)
		stw	.d1t2	B4, *-A15(8)
		ldbu	.d1t1	*-A15(1), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		shru	.s1	A1, A0, A0
		mv	.d1	A0, A2
		ldbu	.d1t1	*-A15(1), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.l1	8, A0, A0
		shl	.s1	A1, A0, A0
		or	.d1	A0, A2, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		sth	.d1t1	A4, *-A15(10)
		mvk	.s1	255, A0
		stw	.d1t1	A0, *-A15(4)
		ldhu	.d1t1	*-A15(10), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 8, A0
		and	.d1	A0, A1, A0
		shru	.s1	A0, 8, A0
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A2
		ldh	.d1t1	*-A15(10), A0
		nop	4
		and	.d1	A2, A0, A0
		shl	.s1	A0, 8, A0
		or	.d1	A0, A1, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		mvk	.s1	255, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 24, A1
		ldw	.d1t1	*-A15(12), A0
		nop	4
		and	.d1	A0, A1, A0
		shru	.s1	A0, 24, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 16, A2
		ldw	.d1t1	*-A15(12), A0
		nop	4
		and	.d1	A0, A2, A0
		shru	.s1	A0, 8, A0
		or	.d1	A0, A1, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 8, A2
		ldw	.d1t1	*-A15(12), A0
		nop	4
		and	.d1	A0, A2, A0
		shl	.s1	A0, 8, A0
		or	.d1	A0, A1, A1
		ldw	.d1t1	*-A15(12), A2
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	A0, A2, A0
		shl	.s1	A0, 24, A0
		or	.d1	A0, A1, A0
		mv	.d1	A0, A4
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
		addk	.s2	-248, B15
		stdw	.d1t1	A5:A4, *-A15(16)
		mvk	.s1	255, A4
		mvk	.d1	0, A5
		stdw	.d1t1	A5:A4, *-A15(248)
		lddw	.d1t1	*-A15(248), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(8)
		ldw	.d1t1	*-A15(8), A2
		nop	4
		shl	.s1	A2, 24, A2
		stw	.d1t1	A2, *-A15(20)
		mvk	.d1	0, A5
		stw	.d1t1	A5, *-A15(24)
		ldw	.d1t1	*-A15(16), A2
		nop	4
		ldw	.d1t1	*-A15(24), A3
		nop	4
		and	.d1	A3, A2, A2
		stw	.d1t1	A2, *-A15(32)
		ldw	.d1t1	*-A15(12), A2
		nop	4
		ldw	.d1t1	*-A15(20), A4
		nop	4
		and	.d1	A4, A2, A2
		stw	.d1t1	A2, *-A15(28)
		ldw	.d1t1	*-A15(28), A5
		nop	4
		shru	.s1	A5, 24, A5
		stw	.d1t1	A5, *-A15(40)
		mvk	.d1	0, A3
		stw	.d1t1	A3, *-A15(36)
		ldw	.d1t1	*-A15(8), A2
		nop	4
		shl	.s1	A2, 16, A2
		stw	.d1t1	A2, *-A15(44)
		mvk	.d1	0, A4
		stw	.d1t1	A4, *-A15(48)
		ldw	.d1t1	*-A15(16), A2
		nop	4
		ldw	.d1t1	*-A15(48), A5
		nop	4
		and	.d1	A5, A2, A2
		stw	.d1t1	A2, *-A15(56)
		ldw	.d1t1	*-A15(12), A2
		nop	4
		ldw	.d1t1	*-A15(44), A3
		nop	4
		and	.d1	A3, A2, A2
		stw	.d1t1	A2, *-A15(52)
		ldw	.d1t1	*-A15(52), A4
		nop	4
		shru	.s1	A4, 8, A4
		stw	.d1t1	A4, *-A15(64)
		mvk	.d1	0, A5
		stw	.d1t1	A5, *-A15(60)
		ldw	.d1t1	*-A15(40), A3
		nop	4
		ldw	.d1t1	*-A15(64), A4
		nop	4
		or	.d1	A4, A3, A3
		stw	.d1t1	A3, *-A15(72)
		ldw	.d1t1	*-A15(36), A5
		nop	4
		ldw	.d1t1	*-A15(60), A3
		nop	4
		or	.d1	A3, A5, A5
		stw	.d1t1	A5, *-A15(68)
		ldw	.d1t1	*-A15(8), A2
		nop	4
		shl	.s1	A2, 8, A2
		stw	.d1t1	A2, *-A15(76)
		mvk	.d1	0, A4
		stw	.d1t1	A4, *-A15(80)
		ldw	.d1t1	*-A15(16), A2
		nop	4
		ldw	.d1t1	*-A15(80), A5
		nop	4
		and	.d1	A5, A2, A2
		stw	.d1t1	A2, *-A15(88)
		ldw	.d1t1	*-A15(12), A2
		nop	4
		ldw	.d1t1	*-A15(76), A3
		nop	4
		and	.d1	A3, A2, A2
		stw	.d1t1	A2, *-A15(84)
		ldw	.d1t1	*-A15(84), A4
		nop	4
		shl	.s1	A4, 8, A2
		ldw	.d1t1	*-A15(88), A5
		nop	4
		shru	.s1	A5, 24, A5
		stw	.d1t1	A5, *-A15(96)
		ldw	.d1t1	*-A15(96), A3
		nop	4
		or	.d1	A3, A2, A2
		stw	.d1t1	A2, *-A15(96)
		ldw	.d1t1	*-A15(84), A4
		nop	4
		shru	.s1	A4, 24, A4
		stw	.d1t1	A4, *-A15(92)
		ldw	.d1t1	*-A15(72), A5
		nop	4
		ldw	.d1t1	*-A15(96), A3
		nop	4
		or	.d1	A3, A5, A5
		stw	.d1t1	A5, *-A15(104)
		ldw	.d1t1	*-A15(68), A4
		nop	4
		ldw	.d1t1	*-A15(92), A5
		nop	4
		or	.d1	A5, A4, A4
		stw	.d1t1	A4, *-A15(100)
		ldw	.d1t1	*-A15(8), A2
		nop	4
		shl	.s1	A2, 0, A2
		stw	.d1t1	A2, *-A15(108)
		mvk	.d1	0, A3
		stw	.d1t1	A3, *-A15(112)
		ldw	.d1t1	*-A15(16), A2
		nop	4
		ldw	.d1t1	*-A15(112), A4
		nop	4
		and	.d1	A4, A2, A2
		stw	.d1t1	A2, *-A15(120)
		ldw	.d1t1	*-A15(12), A2
		nop	4
		ldw	.d1t1	*-A15(108), A5
		nop	4
		and	.d1	A5, A2, A2
		stw	.d1t1	A2, *-A15(116)
		ldw	.d1t1	*-A15(116), A3
		nop	4
		shl	.s1	A3, 24, A2
		ldw	.d1t1	*-A15(120), A4
		nop	4
		shru	.s1	A4, 8, A4
		mvk	.s1	-128, A5
		add	.d1	A5, A15, A5
		stw	.d1t1	A4, *A5
		mvk	.s1	-128, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		or	.d1	A3, A2, A3
		mvk	.s1	-128, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		ldw	.d1t1	*-A15(116), A4
		nop	4
		shru	.s1	A4, 8, A4
		subaw	.d1	A15, 31, A5
		stw	.d1t1	A4, *A5
		ldw	.d1t1	*-A15(104), A3
		nop	4
		mvk	.s1	-128, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		or	.d1	A4, A3, A3
		mvk	.s1	-136, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		ldw	.d1t1	*-A15(100), A5
		nop	4
		subaw	.d1	A15, 31, A3
		ldw	.d1t1	*A3, A3
		nop	4
		or	.d1	A3, A5, A5
		mvk	.s1	-132, A3
		add	.d1	A3, A15, A3
		stw	.d1t1	A5, *A3
		ldw	.d1t1	*-A15(8), A2
		nop	4
		shru	.s1	A2, 8, A2
		ldw	.d1t2	*-A15(4), B2
		nop	4
		shl	.s2	B2, 24, B4
		mvk	.s1	-140, A3
		add	.d1	A3, A15, A3
		stw	.d1t2	B4, *A3
		mvk	.s1	-140, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		or	.d1	A4, A2, A4
		mvk	.s1	-140, A5
		add	.d1	A5, A15, A5
		stw	.d1t1	A4, *A5
		ldw	.d1t1	*-A15(8), A2
		nop	4
		shl	.s1	A2, 24, A5
		mvk	.s2	-144, B4
		add	.d2x	B4, A15, B4
		stw	.d2t1	A5, *B4
		ldw	.d1t1	*-A15(16), A2
		nop	4
		mvk	.s1	-144, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		and	.d1	A3, A2, A3
		mvk	.s1	-152, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		ldw	.d1t1	*-A15(12), A2
		nop	4
		mvk	.s1	-140, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		and	.d1	A4, A2, A4
		mvk	.s1	-148, A5
		add	.d1	A5, A15, A5
		stw	.d1t1	A4, *A5
		mvk	.s1	-148, A5
		add	.d1	A5, A15, A5
		ldw	.d1t1	*A5, A5
		nop	4
		mvk	.s1	-152, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		shlmb	.l1	A3, A5, A5
		mvk	.s1	-156, A3
		add	.d1	A3, A15, A3
		stw	.d1t1	A5, *A3
		mvk	.s1	-152, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		shl	.s1	A4, 8, A4
		mvk	.s1	-160, A5
		add	.d1	A5, A15, A5
		stw	.d1t1	A4, *A5
		mvk	.s1	-136, A5
		add	.d1	A5, A15, A5
		ldw	.d1t1	*A5, A5
		nop	4
		mvk	.s1	-160, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		or	.d1	A3, A5, A5
		mvk	.s1	-168, A3
		add	.d1	A3, A15, A3
		stw	.d1t1	A5, *A3
		mvk	.s1	-132, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		mvk	.s1	-156, A5
		add	.d1	A5, A15, A5
		ldw	.d1t1	*A5, A5
		nop	4
		or	.d1	A5, A4, A4
		mvk	.s1	-164, A5
		add	.d1	A5, A15, A5
		stw	.d1t1	A4, *A5
		ldw	.d1t1	*-A15(8), A2
		nop	4
		shru	.s1	A2, 16, A2
		ldw	.d1t2	*-A15(4), B2
		nop	4
		shl	.s2	B2, 16, B1
		or	.d2x	B1, A2, B1
		ldw	.d1t1	*-A15(8), A2
		nop	4
		shl	.s2x	A2, 16, B0
		ldw	.d1t1	*-A15(16), A2
		nop	4
		and	.d1x	A2, B0, A3
		mvk	.s1	-176, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		ldw	.d1t1	*-A15(12), A2
		nop	4
		and	.d1x	A2, B1, A5
		mvk	.s2	-172, B4
		add	.d2x	B4, A15, B4
		stw	.d2t1	A5, *B4
		mvk	.s1	-176, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		shru	.s1	A3, 8, A2
		mvk	.s1	-172, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		shl	.s1	A4, 24, A1
		or	.d1	A1, A2, A1
		mvk	.s1	-176, A5
		add	.d1	A5, A15, A5
		ldw	.d1t1	*A5, A5
		nop	4
		shl	.s1	A5, 24, A0
		mvk	.s1	-168, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		or	.d1	A0, A3, A3
		mvk	.s1	-184, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		mvk	.s1	-164, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		or	.d1	A1, A4, A4
		mvk	.s1	-180, A5
		add	.d1	A5, A15, A5
		stw	.d1t1	A4, *A5
		lddw	.d1t1	*-A15(8), A1:A0
		nop	4
		shlmb	.l1	A0, A1, A5
		mvk	.s2	-188, B4
		add	.d2x	B4, A15, B4
		stw	.d2t1	A5, *B4
		shl	.s1	A0, 8, A3
		mvk	.s1	-192, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		mvk	.s1	-192, A5
		add	.d1	A5, A15, A5
		ldw	.d1t1	*A5, A5
		nop	4
		and	.d1	A5, A0, A5
		mvk	.s2	-200, B4
		add	.d2x	B4, A15, B4
		stw	.d2t1	A5, *B4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mvk	.s1	-188, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		and	.d1	A3, A0, A3
		mvk	.s1	-196, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		mvk	.s1	-200, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		shl	.s1	A4, 8, A4
		mvk	.s1	-204, A5
		add	.d1	A5, A15, A5
		stw	.d1t1	A4, *A5
		mvk	.d1	0, A5
		mvk	.s2	-208, B4
		add	.d2x	B4, A15, B4
		stw	.d2t1	A5, *B4
		mvk	.s1	-184, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		mvk	.s1	-208, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		or	.d1	A4, A3, A3
		mvk	.s1	-216, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		mvk	.s1	-180, A5
		add	.d1	A5, A15, A5
		ldw	.d1t1	*A5, A5
		nop	4
		mvk	.s1	-204, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		or	.d1	A3, A5, A5
		mvk	.s1	-212, A3
		add	.d1	A3, A15, A3
		stw	.d1t1	A5, *A3
		ldw	.d1t1	*-A15(16), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		and	.d1	A0, A1, A4
		mvk	.s1	-224, A5
		add	.d1	A5, A15, A5
		stw	.d1t1	A4, *A5
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	A0, A1, A3
		mvk	.s1	-220, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		mvk	.s1	-224, A5
		add	.d1	A5, A15, A5
		ldw	.d1t1	*A5, A5
		nop	4
		shl	.s1	A5, 24, A5
		mvk	.s2	-228, B4
		add	.d2x	B4, A15, B4
		stw	.d2t1	A5, *B4
		mvk	.d1	0, A3
		mvk	.s1	-232, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		mvk	.s1	-216, A5
		add	.d1	A5, A15, A5
		ldw	.d1t1	*A5, A5
		nop	4
		mvk	.s1	-232, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		or	.d1	A3, A5, A5
		mvk	.s1	-240, A3
		add	.d1	A3, A15, A3
		stw	.d1t1	A5, *A3
		mvk	.s1	-212, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		mvk	.s1	-228, A5
		add	.d1	A5, A15, A5
		ldw	.d1t1	*A5, A5
		nop	4
		or	.d1	A5, A4, A4
		mvk	.s1	-236, A5
		add	.d1	A5, A15, A5
		stw	.d1t1	A4, *A5
		lddw	.d1t1	*-A15(240), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L490
		nop	5
.L493:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A1, A0, A0
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L491
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		b	.s2	.L492
		nop	5
.L491:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L490:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		cmpltu	.l1	31, A0, A0
	[!A0]	b	.s2	.L493
		nop	5
		mvk	.d1	0, A0
.L492:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		mv	.d1	A4, A0
	[A0]	b	.s2	.L495
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L496
		nop	5
.L495:
		mvk	.d1	1, A1
		stw	.d1t1	A1, *-A15(4)
		b	.s2	.L497
		nop	5
.L498:
		shr	.s1	A0, 1, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		add	.d1	A1, 1, A1
		stw	.d1t1	A1, *-A15(4)
.L497:
		and	.d1	1, A0, A1
	[!A1]	b	.s2	.L498
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
.L496:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mvk	.d1	-1, A3
		mvklh	.s1	65407, A3
		mv	.l2x	A3, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L500
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mvk	.d1	-1, A3
		mvklh	.s1	32639, A3
		mv	.l2x	A3, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L505
		nop	5
.L500:
		mvk	.d1	1, A0
		b	.s2	.L504
		nop	5
.L505:
		mvk	.d1	0, A0
.L504:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		mvk	.d1	-1, A4
		mvk	.d1	-1, A5
		mvklh	.s1	65519, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L509
		nop	5
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		mvk	.d1	-1, A4
		mvk	.d1	-1, A5
		mvklh	.s1	32751, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L514
		nop	5
.L509:
		mvk	.d1	1, A0
		b	.s2	.L513
		nop	5
.L514:
		mvk	.d1	0, A0
.L513:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		mvk	.d1	-1, A4
		mvk	.d1	-1, A5
		mvklh	.s1	65519, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L518
		nop	5
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		mvk	.d1	-1, A4
		mvk	.d1	-1, A5
		mvklh	.s1	32751, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L523
		nop	5
.L518:
		mvk	.d1	1, A0
		b	.s2	.L522
		nop	5
.L523:
		mvk	.d1	0, A0
.L522:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		ldw	.d1t1	*-A15(16), A4
		nop	4
		callp	.s2	(__c6xabi_fltid), B3
		dmv	.s1	A5, A4, A1:A0
		ldw	.d1t1	*-A15(12), A2
		nop	4
		stdw	.d1t1	A1:A0, *A2
	nop
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(20)
		stw	.d1t2	B4, *-A15(24)
		ldw	.d1t2	*-A15(20), B4
		nop	4
		ldw	.d1t1	*-A15(20), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L529
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
		mv	.l2x	A0, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_addf), B3
		mv	.d1	A4, A0
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(20), A0
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_eqf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L529
		nop	5
		ldw	.d1t1	*-A15(24), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L530
		nop	5
		mvk	.d1	0, A0
		mvklh	.s1	16128, A0
		b	.s2	.L531
		nop	5
.L530:
		mvk	.d1	0, A0
		mvklh	.s1	16384, A0
.L531:
		stw	.d1t1	A0, *-A15(12)
.L534:
		ldw	.d1t1	*-A15(24), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L532
		nop	5
		ldw	.d1t2	*-A15(12), B4
		nop	4
		ldw	.d1t1	*-A15(20), A4
		nop	4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A0
		stw	.d1t1	A0, *-A15(20)
.L532:
		ldw	.d1t1	*-A15(24), A0
		nop	4
		shru	.s1	A0, 31, A1
		add	.d1	A1, A0, A0
		shr	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(24), A0
		nop	4
	[!A0]	b	.s2	.L536
		nop	5
		ldw	.d1t2	*-A15(12), B4
		nop	4
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A0
		stw	.d1t1	A0, *-A15(12)
		b	.s2	.L534
		nop	5
.L536:
	nop
.L529:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		mv	.d1	A0, A4
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
		stw	.d2t2	B3, *+B15(32)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(24)
		stw	.d1t2	B4, *-A15(28)
		lddw	.d1t2	*-A15(24), B5:B4
		nop	4
		lddw	.d1t1	*-A15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L543
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		mv	.l2x	A0, B4
		mv	.l2x	A1, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		dmv	.s1	A5, A4, A1:A0
		mv	.l2x	A0, B0
		mv	.l2x	A1, B1
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L543
		nop	5
		ldw	.d1t1	*-A15(28), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L544
		nop	5
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mvklh	.s1	16352, A1
		b	.s2	.L545
		nop	5
.L544:
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mvklh	.s1	16384, A1
.L545:
		stdw	.d1t1	A1:A0, *-A15(16)
.L548:
		ldw	.d1t1	*-A15(28), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L546
		nop	5
		lddw	.d1t2	*-A15(16), B5:B4
		nop	4
		lddw	.d1t1	*-A15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d1t1	A1:A0, *-A15(24)
.L546:
		ldw	.d1t1	*-A15(28), A0
		nop	4
		shru	.s1	A0, 31, A1
		add	.d1	A1, A0, A0
		shr	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(28)
		ldw	.d1t1	*-A15(28), A0
		nop	4
	[!A0]	b	.s2	.L550
		nop	5
		lddw	.d1t2	*-A15(16), B5:B4
		nop	4
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d1t1	A1:A0, *-A15(16)
		b	.s2	.L548
		nop	5
.L550:
	nop
.L543:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(32), B3
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
		stw	.d2t2	B3, *+B15(32)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(24)
		stw	.d1t2	B4, *-A15(28)
		lddw	.d1t2	*-A15(24), B5:B4
		nop	4
		lddw	.d1t1	*-A15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L557
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		mv	.l2x	A0, B4
		mv	.l2x	A1, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		dmv	.s1	A5, A4, A1:A0
		mv	.l2x	A0, B0
		mv	.l2x	A1, B1
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L557
		nop	5
		ldw	.d1t1	*-A15(28), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L558
		nop	5
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mvklh	.s1	16352, A1
		b	.s2	.L559
		nop	5
.L558:
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mvklh	.s1	16384, A1
.L559:
		stdw	.d1t1	A1:A0, *-A15(16)
.L562:
		ldw	.d1t1	*-A15(28), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L560
		nop	5
		lddw	.d1t2	*-A15(16), B5:B4
		nop	4
		lddw	.d1t1	*-A15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d1t1	A1:A0, *-A15(24)
.L560:
		ldw	.d1t1	*-A15(28), A0
		nop	4
		shru	.s1	A0, 31, A1
		add	.d1	A1, A0, A0
		shr	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(28)
		ldw	.d1t1	*-A15(28), A0
		nop	4
	[!A0]	b	.s2	.L564
		nop	5
		lddw	.d1t2	*-A15(16), B5:B4
		nop	4
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d1t1	A1:A0, *-A15(16)
		b	.s2	.L562
		nop	5
.L564:
	nop
.L557:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(32), B3
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(8)
		b	.s2	.L571
		nop	5
.L572:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(4)
		ldb	.d1t1	*A0, A2
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(8)
		ldb	.d1t1	*A0, A1
		nop	4
		xor	.d1	A1, A2, A1
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
.L571:
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[A0]	b	.s2	.L572
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mv	.d1	A0, A4
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
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B3, *+B15(32)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(20)
		stw	.d1t2	B4, *-A15(24)
		stw	.d1t1	A6, *-A15(28)
		ldw	.d1t1	*-A15(20), A4
		nop	4
		callp	.s2	(strlen), B3
		mv	.d1	A4, A1
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(12)
		b	.s2	.L575
		nop	5
.L577:
		ldw	.d1t1	*-A15(24), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(28), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(28)
.L575:
		ldw	.d1t1	*-A15(28), A0
		nop	4
	[!A0]	b	.s2	.L576
		nop	5
		ldw	.d1t1	*-A15(24), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L577
		nop	5
.L576:
		ldw	.d1t1	*-A15(28), A0
		nop	4
	[A0]	b	.s2	.L578
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mvk	.d1	0, A1
		stb	.d1t1	A1, *A0
.L578:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(32), B3
		nop	4
		ldw	.d2t2	*+B15(36), B14
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L582
		nop	5
.L587:
	nop
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L582:
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L583
		nop	5
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A1, A0, A0
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L587
		nop	5
.L583:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		b	.s2	.L589
		nop	5
.L593:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L590
		nop	5
.L592:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(4)
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A1, 24, A1
		shr	.s1	A1, 24, A1
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L590
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L591
		nop	5
.L590:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L592
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
.L589:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L593
		nop	5
		mvk	.d1	0, A0
.L591:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		mv	.d1	A4, A1
		stw	.d1t2	B4, *-A15(12)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
.L596:
		ldb	.d1t1	*A1, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		ldw	.d1t1	*-A15(12), A2
		nop	4
		cmpeq	.l1	A0, A2, A0
	[!A0]	b	.s2	.L595
		nop	5
		stw	.d1t1	A1, *-A15(4)
.L595:
		mv	.d1	A1, A0
		add	.d1	A0, 1, A1
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L596
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(20)
		stw	.d1t2	B4, *-A15(24)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(24), A4
		nop	4
		callp	.s2	(strlen), B3
		stw	.d1t1	A4, *-A15(16)
		ldw	.d1t1	*-A15(16), A0
		nop	4
	[A0]	b	.s2	.L601
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
		b	.s2	.L600
		nop	5
.L603:
		ldw	.d1t1	*-A15(16), A6
		nop	4
		ldw	.d1t2	*-A15(24), B4
		nop	4
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(strncmp), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L602
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L600
		nop	5
.L602:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
.L601:
		ldw	.d1t1	*-A15(24), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mv	.l2x	A0, B4
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(strchr), B3
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[A0]	b	.s2	.L603
		nop	5
		mvk	.d1	0, A0
.L600:
		mv	.d1	A0, A4
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
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(36)
		stw	.d2t2	B3, *+B15(32)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		stdw	.d1t2	B5:B4, *-A15(24)
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L608
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L610
		nop	5
.L608:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L611
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L611
		nop	5
.L610:
		ldw	.d1t1	*-A15(16), A3
		nop	4
		stw	.d1t1	A3, *-A15(32)
		ldw	.d1t1	*-A15(12), A1
		nop	4
		mvk	.d1	0, A0
		mvklh	.s1	32768, A0
		xor	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(28)
		b	.s2	.L614
		nop	5
.L611:
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(32)
.L614:
		lddw	.d1t1	*-A15(32), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(32), B3
		nop	4
		ldw	.d2t2	*+B15(36), B14
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
		stw	.d2t2	B3, *+B15(32)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(20)
		stw	.d1t2	B4, *-A15(24)
		stw	.d1t1	A6, *-A15(28)
		stw	.d1t2	B6, *-A15(32)
		ldw	.d1t1	*-A15(24), A1
		nop	4
		ldw	.d1t1	*-A15(32), A0
		nop	4
		sub	.d1	A1, A0, A0
		ldw	.d1t1	*-A15(20), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(32), A0
		nop	4
	[A0]	b	.s2	.L622
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
		b	.s2	.L623
		nop	5
.L622:
		ldw	.d1t1	*-A15(24), A1
		nop	4
		ldw	.d1t1	*-A15(32), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
		extu	.s1	A0, 24, 24, A0
	[!A0]	b	.s2	.L624
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L623
		nop	5
.L624:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		stw	.d1t1	A0, *-A15(12)
		b	.s2	.L625
		nop	5
.L627:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d1t1	*-A15(28), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A1, 24, A1
		shr	.s1	A1, 24, A1
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L626
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 1, A3
		ldw	.d1t1	*-A15(28), A0
		nop	4
		add	.d1	A0, 1, A4
		ldw	.d1t1	*-A15(32), A0
		nop	4
		sub	.d1	A0, 1, A0
		mv	.d1	A0, A6
		mv	.l2x	A4, B4
		mv	.d1	A3, A4
		callp	.s2	(memcmp), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L626
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L623
		nop	5
.L626:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
.L625:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L627
		nop	5
		mvk	.d1	0, A0
.L623:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(32), B3
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		ldw	.d1t1	*-A15(20), A6
		nop	4
		ldw	.d1t2	*-A15(16), B4
		nop	4
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(memcpy), B3
		mv	.d1	A4, A1
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A1, A0, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
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
		subah	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(52)
		stw	.d2t2	B3, *+B15(48)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(24)
		stw	.d1t2	B4, *-A15(28)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(16)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(12)
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L633
		nop	5
		ldw	.d1t1	*-A15(24), A3
		nop	4
		stw	.d1t1	A3, *-A15(40)
		ldw	.d1t1	*-A15(20), A1
		nop	4
		mvk	.d1	0, A0
		mvklh	.s1	32768, A0
		xor	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(36)
		lddw	.d1t1	*-A15(40), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(24)
		mvk	.d1	1, A0
		stw	.d1t1	A0, *-A15(12)
.L633:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16368, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L648
		nop	5
		b	.s2	.L637
		nop	5
.L638:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16384, B5
		lddw	.d1t1	*-A15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_divd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d1t1	A1:A0, *-A15(24)
.L637:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16368, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L638
		nop	5
		b	.s2	.L639
		nop	5
.L648:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16352, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L639
		nop	5
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L639
		nop	5
		b	.s2	.L641
		nop	5
.L642:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		mv	.l2x	A0, B4
		mv	.l2x	A1, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d1t1	A1:A0, *-A15(24)
.L641:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16352, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L642
		nop	5
.L639:
		ldw	.d1t1	*-A15(28), A0
		nop	4
		ldw	.d1t1	*-A15(16), A1
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[!A0]	b	.s2	.L643
		nop	5
		ldw	.d1t1	*-A15(24), A3
		nop	4
		stw	.d1t1	A3, *-A15(48)
		ldw	.d1t1	*-A15(20), A1
		nop	4
		mvk	.d1	0, A0
		mvklh	.s1	32768, A0
		xor	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(44)
		lddw	.d1t1	*-A15(48), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(24)
.L643:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(48), B3
		nop	4
		ldw	.d2t2	*+B15(52), B14
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
		subaw	.d2	B15, 16, B15
		stdw	.d1t1	A5:A4, *-A15(24)
		stdw	.d1t2	B5:B4, *-A15(32)
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		stdw	.d1t1	A1:A0, *-A15(8)
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *-A15(16)
		b	.s2	.L658
		nop	5
.L660:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		and	.d1	1, A0, A0
		stw	.d1t1	A0, *-A15(40)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		and	.d1	0, A0, A0
		stw	.d1t1	A0, *-A15(36)
		ldw	.d1t1	*-A15(40), A3
		nop	4
		ldw	.d1t1	*-A15(36), A4
		nop	4
		or	.d1	A4, A3, A0
	[!A0]	b	.s2	.L659
		nop	5
		lddw	.d1t1	*-A15(8), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(48)
		lddw	.d1t1	*-A15(32), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(56)
		ldw	.d1t1	*-A15(48), A5
		nop	4
		ldw	.d1t1	*-A15(56), A3
		nop	4
		addu	.l1	A5, A3, A1:A0
		ldw	.d1t1	*-A15(44), A4
		nop	4
		add	.d1	A1, A4, A1
		ldw	.d1t1	*-A15(52), A5
		nop	4
		add	.d1	A1, A5, A1
		stdw	.d1t1	A1:A0, *-A15(8)
.L659:
		lddw	.d1t1	*-A15(32), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(64)
		ldw	.d1t1	*-A15(64), A5
		nop	4
		ldw	.d1t1	*-A15(64), A5
		nop	4
		addu	.l1	A5, A5, A1:A0
		ldw	.d1t1	*-A15(60), A3
		nop	4
		add	.d1	A1, A3, A1
		ldw	.d1t1	*-A15(60), A4
		nop	4
		add	.d1	A1, A4, A1
		stdw	.d1t1	A1:A0, *-A15(32)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		shl	.s1	A0, 31, A0
		ldw	.d1t1	*-A15(16), A1
		nop	4
		shru	.s2x	A1, 1, B0
		or	.d2x	B0, A0, B0
		ldw	.d1t1	*-A15(12), A0
		nop	4
		shru	.s2x	A0, 1, B1
		stdw	.d1t2	B1:B0, *-A15(16)
.L658:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		or	.d1	A1, A0, A0
	[A0]	b	.s2	.L660
		nop	5
		lddw	.d1t1	*-A15(8), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		mvk	.d1	1, A0
		stw	.d1t1	A0, *-A15(4)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(8)
		b	.s2	.L663
		nop	5
.L665:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L663:
		ldw	.d1t1	*-A15(16), A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L666
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
	[!A0]	b	.s2	.L666
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L665
		nop	5
		b	.s2	.L666
		nop	5
.L668:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L667
		nop	5
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		sub	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(8), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		or	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(8)
.L667:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
.L666:
		ldw	.d1t1	*-A15(4), A0
		nop	4
	[A0]	b	.s2	.L668
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[!A0]	b	.s2	.L669
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L670
		nop	5
.L669:
		ldw	.d1t1	*-A15(8), A0
		nop	4
.L670:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stb	.d1t1	A4, *-A15(9)
		ldb	.d1t1	*-A15(9), A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L672
		nop	5
		ldb	.d1t1	*-A15(9), A0
		nop	4
		not	.l1	A0, A0
		stb	.d1t1	A0, *-A15(9)
.L672:
		ldb	.d1t1	*-A15(9), A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L673
		nop	5
		mvk	.d1	7, A0
		b	.s2	.L674
		nop	5
.L673:
		ldb	.d1t1	*-A15(9), A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		shl	.s1	A0, 8, A0
		lmbd	.l1	1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.d1	A0, 1, A0
.L674:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stdw	.d1t1	A5:A4, *-A15(16)
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		cmpgt	.l1	0, A1, A2
		cmpeq	.l2x	0, A1, B2
	[B2]	cmpgtu	.l2x	0, A0, B2
		or	.d1x	A2, B2, A2
	[!A2]	b	.s2	.L676
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
		not	.l2x	A0, B0
		ldw	.d1t1	*-A15(12), A0
		nop	4
		not	.l2x	A0, B1
		stdw	.d1t2	B1:B0, *-A15(16)
.L676:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		or	.d1	A1, A0, A0
	[A0]	b	.s2	.L677
		nop	5
		mvk	.s1	63, A0
		b	.s2	.L678
		nop	5
.L677:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
	[!A1]	b	.s2	.L679
		nop	5
		lmbd	.l1	1, A1, A0
		b	.s2	.L680
		nop	5
.L679:
		lmbd	.l1	1, A0, A0
		addah	.d1	A0, 16, A0
.L680:
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.d1	A0, 1, A0
.L678:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L682
		nop	5
.L684:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L683
		nop	5
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
.L683:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
.L682:
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[A0]	b	.s2	.L684
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A4
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
		subah	.d2	B15, 20, B15
		stw	.d1t1	A4, *-A15(28)
		stw	.d1t2	B4, *-A15(32)
		stw	.d1t1	A6, *-A15(36)
		ldw	.d1t1	*-A15(36), A0
		nop	4
		shru	.s1	A0, 3, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(36), A0
		nop	4
		and	.d1	-8, A0, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(28), A0
		nop	4
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(32), A0
		nop	4
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(16), A1
		nop	4
		ldw	.d1t1	*-A15(20), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L687
		nop	5
		ldw	.d1t1	*-A15(20), A1
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d1t1	*-A15(16), A1
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L694
		nop	5
.L687:
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L689
		nop	5
.L690:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 3, A0
		ldw	.d1t1	*-A15(32), A1
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		shl	.s1	A1, 3, A1
		ldw	.d1t1	*-A15(28), A2
		nop	4
		add	.d1	A2, A1, A2
		lddw	.d1t1	*A0, A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *A2
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L689:
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L690
		nop	5
		b	.s2	.L691
		nop	5
.L692:
		ldw	.d1t1	*-A15(20), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(16), A2
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A2, A0, A0
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
.L691:
		ldw	.d1t1	*-A15(36), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L692
		nop	5
		b	.s2	.L693
		nop	5
.L695:
		ldw	.d1t1	*-A15(20), A1
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(16), A2
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		add	.d1	A2, A0, A0
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
.L694:
		ldw	.d1t1	*-A15(36), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(36)
	[A0]	b	.s2	.L695
		nop	5
	nop
.L693:
	nop
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
		subah	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(20)
		stw	.d1t2	B4, *-A15(24)
		stw	.d1t1	A6, *-A15(28)
		ldw	.d1t1	*-A15(28), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(24), A0
		nop	4
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L697
		nop	5
		ldw	.d1t1	*-A15(16), A1
		nop	4
		ldw	.d1t1	*-A15(28), A0
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d1t1	*-A15(12), A1
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L703
		nop	5
.L697:
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L699
		nop	5
.L700:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 1, A0
		ldw	.d1t1	*-A15(24), A1
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 1, A0
		ldw	.d1t1	*-A15(20), A2
		nop	4
		add	.d1	A2, A0, A0
		ldh	.d1t1	*A1, A1
		nop	4
		sth	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L699:
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L700
		nop	5
		ldw	.d1t1	*-A15(28), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L702
		nop	5
		ldw	.d1t1	*-A15(28), A0
		nop	4
		sub	.d1	A0, 1, A0
		ldw	.d1t1	*-A15(16), A1
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(28), A0
		nop	4
		sub	.d1	A0, 1, A0
		ldw	.d1t1	*-A15(12), A2
		nop	4
		add	.d1	A2, A0, A0
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		b	.s2	.L702
		nop	5
.L704:
		ldw	.d1t1	*-A15(16), A1
		nop	4
		ldw	.d1t1	*-A15(28), A0
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(12), A2
		nop	4
		ldw	.d1t1	*-A15(28), A0
		nop	4
		add	.d1	A2, A0, A0
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
.L703:
		ldw	.d1t1	*-A15(28), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(28)
	[A0]	b	.s2	.L704
		nop	5
	nop
.L702:
	nop
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
		subah	.d2	B15, 20, B15
		stw	.d1t1	A4, *-A15(28)
		stw	.d1t2	B4, *-A15(32)
		stw	.d1t1	A6, *-A15(36)
		ldw	.d1t1	*-A15(36), A0
		nop	4
		shru	.s1	A0, 2, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(36), A0
		nop	4
		and	.d1	-4, A0, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(28), A0
		nop	4
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(32), A0
		nop	4
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(16), A1
		nop	4
		ldw	.d1t1	*-A15(20), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L706
		nop	5
		ldw	.d1t1	*-A15(20), A1
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d1t1	*-A15(16), A1
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L713
		nop	5
.L706:
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L708
		nop	5
.L709:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 2, A0
		ldw	.d1t1	*-A15(32), A1
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 2, A0
		ldw	.d1t1	*-A15(28), A2
		nop	4
		add	.d1	A2, A0, A0
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L708:
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L709
		nop	5
		b	.s2	.L710
		nop	5
.L711:
		ldw	.d1t1	*-A15(20), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(16), A2
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A2, A0, A0
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
.L710:
		ldw	.d1t1	*-A15(36), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L711
		nop	5
		b	.s2	.L712
		nop	5
.L714:
		ldw	.d1t1	*-A15(20), A1
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d1t1	*-A15(16), A2
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		add	.d1	A2, A0, A0
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
.L713:
		ldw	.d1t1	*-A15(36), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d1t1	A1, *-A15(36)
	[A0]	b	.s2	.L714
		nop	5
	nop
.L712:
	nop
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
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(20)
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L717, B3, 4
.L717:
		mv	.d1	A5, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(20), B3
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
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(__c6xabi_fltud), B3
		dmv	.s1	A5, A4, A1:A0
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
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
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(__c6xabi_fltuf), B3
		mv	.d1	A4, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
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
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_fltulld), B3
		dmv	.s1	A5, A4, A1:A0
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
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
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(20)
		stw	.d2t2	B3, *+B15(16)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_fltullf), B3
		mv	.d1	A4, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		ldw	.d2t2	*+B15(20), B14
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
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(20)
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremu
		addkpc	.s2	.L732, B3, 4
.L732:
		mv	.d1	A5, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(20), B3
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
		sub	.d2	B15, 16, B15
		sth	.d1t1	A4, *-A15(10)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L734
		nop	5
.L737:
		ldhu	.d1t1	*-A15(10), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.l1	15, A0, A0
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
	[A0]	b	.s2	.L739
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L734:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		cmplt	.l1	15, A0, A0
	[!A0]	b	.s2	.L737
		nop	5
		b	.s2	.L736
		nop	5
.L739:
	nop
.L736:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		sth	.d1t1	A4, *-A15(10)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L741
		nop	5
.L744:
		ldhu	.d1t1	*-A15(10), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
	[A0]	b	.s2	.L746
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L741:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		cmplt	.l1	15, A0, A0
	[!A0]	b	.s2	.L744
		nop	5
		b	.s2	.L743
		nop	5
.L746:
	nop
.L743:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mvk	.d1	0, A3
		mvklh	.s1	18176, A3
		mv	.l2x	A3, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_gef), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L752
		nop	5
		mvk	.d2	0, B4
		mvklh	.s2	18176, B4
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(__c6xabi_subf), B3
		mv	.d1	A4, A0
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_fixfi), B3
		mv	.d1	A4, A1
		mvk	.s1	-32768, A0
		mvklh	.s1	0, A0
		add	.d1	A1, A0, A0
		b	.s2	.L750
		nop	5
.L752:
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(__c6xabi_fixfi), B3
		mv	.d1	A4, A0
.L750:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		sth	.d1t1	A4, *-A15(10)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(8)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L758
		nop	5
.L760:
		ldhu	.d1t1	*-A15(10), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L759
		nop	5
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
.L759:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L758:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		cmplt	.l1	15, A0, A0
	[!A0]	b	.s2	.L760
		nop	5
		ldw	.d1t1	*-A15(8), A0
		nop	4
		and	.d1	1, A0, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		sth	.d1t1	A4, *-A15(10)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(8)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L763
		nop	5
.L765:
		ldhu	.d1t1	*-A15(10), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L764
		nop	5
		ldw	.d1t1	*-A15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(8)
.L764:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L763:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		cmplt	.l1	15, A0, A0
	[!A0]	b	.s2	.L765
		nop	5
		ldw	.d1t1	*-A15(8), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		b	.s2	.L768
		nop	5
.L770:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L769
		nop	5
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
.L769:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
.L768:
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[A0]	b	.s2	.L770
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[A0]	b	.s2	.L775
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L774
		nop	5
.L777:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L776
		nop	5
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
.L776:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
.L775:
		ldw	.d1t1	*-A15(16), A0
		nop	4
	[A0]	b	.s2	.L777
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
.L774:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		mvk	.d1	1, A0
		stw	.d1t1	A0, *-A15(4)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(8)
		b	.s2	.L779
		nop	5
.L781:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L779:
		ldw	.d1t1	*-A15(16), A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L782
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
	[!A0]	b	.s2	.L782
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L781
		nop	5
		b	.s2	.L782
		nop	5
.L784:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L783
		nop	5
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		sub	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(8), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		or	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(8)
.L783:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
.L782:
		ldw	.d1t1	*-A15(4), A0
		nop	4
	[A0]	b	.s2	.L784
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[!A0]	b	.s2	.L785
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L786
		nop	5
.L785:
		ldw	.d1t1	*-A15(8), A0
		nop	4
.L786:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldw	.d1t1	*-A15(16), A1
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L795
		nop	5
		mvk	.d1	-1, A0
		b	.s2	.L790
		nop	5
.L795:
		ldw	.d1t1	*-A15(12), A0
		nop	4
		ldw	.d1t1	*-A15(16), A1
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L796
		nop	5
		mvk	.d1	1, A0
		b	.s2	.L790
		nop	5
.L796:
		mvk	.d1	0, A0
.L790:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		stdw	.d1t2	B5:B4, *-A15(24)
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		lddw	.d1t2	*-A15(24), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L807
		nop	5
		mvk	.d1	-1, A0
		b	.s2	.L802
		nop	5
.L807:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		lddw	.d1t2	*-A15(24), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L808
		nop	5
		mvk	.d1	1, A0
		b	.s2	.L802
		nop	5
.L808:
		mvk	.d1	0, A0
.L802:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		mv	.l2x	A2, B0
		shr	.s1	A2, 31, A2
		mv	.l2x	A2, B1
		ldw	.d1t1	*-A15(8), A2
		nop	4
		mv	.d1	A2, A0
		shr	.s1	A2, 31, A2
		mv	.d1	A2, A1
		mpy32	.m2x	B1, A0, B2
		nop	3
		mpy32	.m1x	A1, B0, A2
		nop	3
		add	.d1x	A2, B2, A2
		mpy32u	.m1x	A0, B0, A1:A0
		nop	3
		add	.d1	A2, A1, A2
		mv	.d1	A2, A1
		dmv	.s1	A1, A0, A5:A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		stw	.d1t2	B4, *-A15(8)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		mv	.l2x	A2, B0
		mvk	.d2	0, B1
		ldw	.d1t1	*-A15(8), A2
		nop	4
		mv	.d1	A2, A0
		mvk	.d1	0, A1
		mpy32	.m2x	B1, A0, B2
		nop	3
		mpy32	.m1x	A1, B0, A2
		nop	3
		add	.d1x	A2, B2, A2
		mpy32u	.m1x	A0, B0, A1:A0
		nop	3
		add	.d1	A2, A1, A2
		mv	.d1	A2, A1
		dmv	.s1	A1, A0, A5:A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(20)
		stw	.d1t2	B4, *-A15(24)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(8)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(24), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L816
		nop	5
		ldw	.d1t1	*-A15(24), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d1t1	A0, *-A15(24)
		mvk	.d1	1, A0
		stw	.d1t1	A0, *-A15(8)
.L816:
		mvk	.d1	0, A0
		stb	.d1t1	A0, *-A15(1)
		b	.s2	.L817
		nop	5
.L820:
		ldw	.d1t1	*-A15(24), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L818
		nop	5
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(20), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
.L818:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(24), A0
		nop	4
		shr	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(24)
		ldb	.d1t1	*-A15(1), A0
		nop	4
		add	.d1	A0, 1, A0
		stb	.d1t1	A0, *-A15(1)
.L817:
		ldw	.d1t1	*-A15(24), A0
		nop	4
	[!A0]	b	.s2	.L819
		nop	5
		ldb	.d1t1	*-A15(1), A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		cmpltu	.l1	31, A0, A0
	[!A0]	b	.s2	.L820
		nop	5
.L819:
		ldw	.d1t1	*-A15(8), A0
		nop	4
	[!A0]	b	.s2	.L821
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		neg	.l1	A0, A0
		b	.s2	.L823
		nop	5
.L821:
		ldw	.d1t1	*-A15(12), A0
		nop	4
.L823:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(20)
		stw	.d1t2	B4, *-A15(24)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L825
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		stw	.d1t1	A0, *-A15(12)
.L825:
		ldw	.d1t1	*-A15(24), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L826
		nop	5
		ldw	.d1t1	*-A15(24), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		stw	.d1t1	A0, *-A15(12)
.L826:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		ldw	.d1t1	*-A15(24), A1
		nop	4
		mvk	.d1	0, A6
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__udivmodsi4), B3
		mv	.d1	A4, A0
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[!A0]	b	.s2	.L827
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d1t1	A0, *-A15(16)
.L827:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(20)
		stw	.d1t2	B4, *-A15(24)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L831
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d1t1	A0, *-A15(20)
		mvk	.d1	1, A0
		stw	.d1t1	A0, *-A15(12)
.L831:
		ldw	.d1t1	*-A15(24), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L832
		nop	5
		ldw	.d1t1	*-A15(24), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d1t1	A0, *-A15(24)
.L832:
		ldw	.d1t1	*-A15(20), A0
		nop	4
		ldw	.d1t1	*-A15(24), A1
		nop	4
		mvk	.d1	1, A6
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__udivmodsi4), B3
		mv	.d1	A4, A0
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(12), A0
		nop	4
	[!A0]	b	.s2	.L833
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d1t1	A0, *-A15(16)
.L833:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
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
		sub	.d2	B15, 16, B15
		sth	.d1t1	A4, *-A15(10)
		sth	.d1t2	B4, *-A15(12)
		stw	.d1t1	A6, *-A15(16)
		mvk	.d1	1, A0
		sth	.d1t1	A0, *-A15(2)
		mvk	.d1	0, A0
		sth	.d1t1	A0, *-A15(4)
		b	.s2	.L837
		nop	5
.L839:
		ldh	.d1t1	*-A15(12), A0
		nop	4
		shl	.s1	A0, 1, A0
		sth	.d1t1	A0, *-A15(12)
		ldh	.d1t1	*-A15(2), A0
		nop	4
		shl	.s1	A0, 1, A0
		sth	.d1t1	A0, *-A15(2)
.L837:
		ldhu	.d1t1	*-A15(12), A1
		nop	4
		ldhu	.d1t1	*-A15(10), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L840
		nop	5
		ldhu	.d1t1	*-A15(2), A0
		nop	4
	[!A0]	b	.s2	.L840
		nop	5
		ldh	.d1t1	*-A15(12), A0
		nop	4
		shl	.s1	A0, 16, A0
		shr	.s1	A0, 16, A0
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L839
		nop	5
		b	.s2	.L840
		nop	5
.L842:
		ldhu	.d1t1	*-A15(10), A1
		nop	4
		ldhu	.d1t1	*-A15(12), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L841
		nop	5
		ldh	.d1t1	*-A15(10), A1
		nop	4
		ldh	.d1t1	*-A15(12), A0
		nop	4
		sub	.d1	A1, A0, A0
		sth	.d1t1	A0, *-A15(10)
		ldh	.d1t1	*-A15(4), A1
		nop	4
		ldh	.d1t1	*-A15(2), A0
		nop	4
		or	.d1	A0, A1, A0
		sth	.d1t1	A0, *-A15(4)
.L841:
		ldhu	.d1t1	*-A15(2), A0
		nop	4
		shru	.s1	A0, 1, A0
		sth	.d1t1	A0, *-A15(2)
		ldhu	.d1t1	*-A15(12), A0
		nop	4
		shru	.s1	A0, 1, A0
		sth	.d1t1	A0, *-A15(12)
.L840:
		ldhu	.d1t1	*-A15(2), A0
		nop	4
	[A0]	b	.s2	.L842
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
	[!A0]	b	.s2	.L843
		nop	5
		ldh	.d1t1	*-A15(10), A0
		nop	4
		b	.s2	.L844
		nop	5
.L843:
		ldh	.d1t1	*-A15(4), A0
		nop	4
.L844:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(12)
		stw	.d1t2	B4, *-A15(16)
		stw	.d1t1	A6, *-A15(20)
		mvk	.d1	1, A0
		stw	.d1t1	A0, *-A15(4)
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(8)
		b	.s2	.L846
		nop	5
.L848:
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
.L846:
		ldw	.d1t1	*-A15(16), A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L849
		nop	5
		ldw	.d1t1	*-A15(4), A0
		nop	4
	[!A0]	b	.s2	.L849
		nop	5
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L848
		nop	5
		b	.s2	.L849
		nop	5
.L851:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L850
		nop	5
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		sub	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(8), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		or	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(8)
.L850:
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(16)
.L849:
		ldw	.d1t1	*-A15(4), A0
		nop	4
	[A0]	b	.s2	.L851
		nop	5
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[!A0]	b	.s2	.L852
		nop	5
		ldw	.d1t1	*-A15(12), A0
		nop	4
		b	.s2	.L853
		nop	5
.L852:
		ldw	.d1t1	*-A15(8), A0
		nop	4
.L853:
		mv	.d1	A0, A4
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
		subah	.d2	B15, 20, B15
		stdw	.d1t1	A5:A4, *-A15(32)
		stw	.d1t2	B4, *-A15(36)
		mvk	.s1	32, A0
		stw	.d1t1	A0, *-A15(4)
		lddw	.d1t1	*-A15(32), A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *-A15(16)
		ldw	.d1t1	*-A15(36), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	A0, A1, A0
	[!A0]	b	.s2	.L855
		nop	5
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(16), A1
		nop	4
		ldw	.d1t1	*-A15(36), A2
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.d1	A2, A0, A0
		shl	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(20)
		b	.s2	.L856
		nop	5
.L855:
		ldw	.d1t1	*-A15(36), A0
		nop	4
	[A0]	b	.s2	.L857
		nop	5
		lddw	.d1t1	*-A15(32), A1:A0
		nop	4
		b	.s2	.L859
		nop	5
.L857:
		ldw	.d1t1	*-A15(16), A1
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		shl	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(36), A0
		nop	4
		shl	.s1	A1, A0, A1
		ldw	.d1t1	*-A15(16), A2
		nop	4
		ldw	.d1t2	*-A15(4), B0
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		sub	.l1x	B0, A0, A0
		shru	.s1	A2, A0, A0
		or	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(20)
.L856:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
.L859:
		dmv	.s1	A1, A0, A5:A4
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
		subah	.d2	B15, 20, B15
		stdw	.d1t1	A5:A4, *-A15(32)
		stw	.d1t2	B4, *-A15(36)
		mvk	.s1	32, A0
		stw	.d1t1	A0, *-A15(4)
		lddw	.d1t1	*-A15(32), A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *-A15(16)
		ldw	.d1t1	*-A15(36), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	A0, A1, A0
	[!A0]	b	.s2	.L861
		nop	5
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.d1	A0, 1, A0
		shr	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(36), A2
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.d1	A2, A0, A0
		shr	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(24)
		b	.s2	.L862
		nop	5
.L861:
		ldw	.d1t1	*-A15(36), A0
		nop	4
	[A0]	b	.s2	.L863
		nop	5
		lddw	.d1t1	*-A15(32), A1:A0
		nop	4
		b	.s2	.L865
		nop	5
.L863:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		shr	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mv	.d1	A0, A2
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		sub	.d1	A1, A0, A0
		shl	.s1	A2, A0, A1
		ldw	.d1t1	*-A15(16), A2
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		shru	.s1	A2, A0, A0
		or	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(24)
.L862:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
.L865:
		dmv	.s1	A1, A0, A5:A4
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
		addk	.s2	-160, B15
		stdw	.d1t1	A5:A4, *-A15(8)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shru	.s1	A2, 24, A2
		stw	.d1t1	A2, *-A15(16)
		mvk	.d1	0, A3
		stw	.d1t1	A3, *-A15(12)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shru	.s1	A2, 8, A2
		stw	.d1t1	A2, *-A15(24)
		mvk	.d1	0, A4
		stw	.d1t1	A4, *-A15(20)
		mvk	.s1	-256, A2
		mvklh	.s1	0, A2
		ldw	.d1t1	*-A15(24), A3
		nop	4
		and	.d1	A2, A3, A2
		stw	.d1t1	A2, *-A15(32)
		ldw	.d1t1	*-A15(20), A4
		nop	4
		and	.d1	0, A4, A4
		stw	.d1t1	A4, *-A15(28)
		ldw	.d1t1	*-A15(16), A3
		nop	4
		ldw	.d1t1	*-A15(32), A4
		nop	4
		or	.d1	A4, A3, A3
		stw	.d1t1	A3, *-A15(40)
		ldw	.d1t1	*-A15(12), A3
		nop	4
		ldw	.d1t1	*-A15(28), A4
		nop	4
		or	.d1	A4, A3, A3
		stw	.d1t1	A3, *-A15(36)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shl	.s1	A2, 8, A2
		ldw	.d1t2	*-A15(8), B2
		nop	4
		shru	.s2	B2, 24, B2
		stw	.d1t2	B2, *-A15(48)
		ldw	.d1t1	*-A15(48), A3
		nop	4
		or	.d1	A3, A2, A2
		stw	.d1t1	A2, *-A15(48)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shru	.s1	A2, 24, A2
		stw	.d1t1	A2, *-A15(44)
		mvk	.d1	0, A2
		mvklh	.s1	255, A2
		ldw	.d1t1	*-A15(48), A4
		nop	4
		and	.d1	A2, A4, A2
		stw	.d1t1	A2, *-A15(56)
		ldw	.d1t1	*-A15(44), A3
		nop	4
		and	.d1	0, A3, A3
		stw	.d1t1	A3, *-A15(52)
		ldw	.d1t1	*-A15(40), A4
		nop	4
		ldw	.d1t1	*-A15(56), A3
		nop	4
		or	.d1	A3, A4, A4
		stw	.d1t1	A4, *-A15(64)
		ldw	.d1t1	*-A15(36), A4
		nop	4
		ldw	.d1t1	*-A15(52), A3
		nop	4
		or	.d1	A3, A4, A4
		stw	.d1t1	A4, *-A15(60)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shl	.s1	A2, 24, A2
		ldw	.d1t2	*-A15(8), B2
		nop	4
		shru	.s2	B2, 8, B0
		or	.d2x	B0, A2, B0
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shru	.s2x	A2, 8, B1
		clr	.s2	B0, 0, 23, B4
		stw	.d1t2	B4, *-A15(72)
		and	.d2	0, B1, B4
		stw	.d1t2	B4, *-A15(68)
		ldw	.d1t1	*-A15(64), A3
		nop	4
		ldw	.d1t1	*-A15(72), A4
		nop	4
		or	.d1	A4, A3, A3
		stw	.d1t1	A3, *-A15(80)
		ldw	.d1t1	*-A15(60), A3
		nop	4
		ldw	.d1t1	*-A15(68), A4
		nop	4
		or	.d1	A4, A3, A3
		stw	.d1t1	A3, *-A15(76)
		lddw	.d1t2	*-A15(8), B1:B0
		nop	4
		shlmb	.l2	B0, B1, B4
		stw	.d1t2	B4, *-A15(84)
		shl	.s2	B0, 8, B4
		stw	.d1t2	B4, *-A15(88)
		ldw	.d1t1	*-A15(88), A3
		nop	4
		and	.d1	0, A3, A3
		stw	.d1t1	A3, *-A15(96)
		ldw	.d1t1	*-A15(84), A4
		nop	4
		clr	.s1	A4, 8, 31, A4
		stw	.d1t1	A4, *-A15(92)
		ldw	.d1t1	*-A15(80), A3
		nop	4
		ldw	.d1t1	*-A15(96), A4
		nop	4
		or	.d1	A4, A3, A3
		stw	.d1t1	A3, *-A15(104)
		ldw	.d1t1	*-A15(76), A3
		nop	4
		ldw	.d1t1	*-A15(92), A4
		nop	4
		or	.d1	A4, A3, A3
		stw	.d1t1	A3, *-A15(100)
		ldw	.d1t1	*-A15(8), A2
		nop	4
		shru	.s1	A2, 8, A2
		ldw	.d1t2	*-A15(4), B0
		nop	4
		shl	.s1x	B0, 24, A1
		or	.d1	A1, A2, A1
		ldw	.d1t1	*-A15(8), A2
		nop	4
		shl	.s1	A2, 24, A0
		and	.d1	0, A0, A3
		stw	.d1t1	A3, *-A15(112)
		mvk	.s1	-256, A2
		mvklh	.s1	0, A2
		and	.d1	A2, A1, A2
		stw	.d1t1	A2, *-A15(108)
		ldw	.d1t1	*-A15(104), A4
		nop	4
		ldw	.d1t1	*-A15(112), A3
		nop	4
		or	.d1	A3, A4, A4
		stw	.d1t1	A4, *-A15(120)
		ldw	.d1t1	*-A15(100), A4
		nop	4
		ldw	.d1t1	*-A15(108), A3
		nop	4
		or	.d1	A3, A4, A4
		stw	.d1t1	A4, *-A15(116)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		shl	.s1	A0, 8, A4
		mvk	.s2	-124, B4
		add	.d2x	B4, A15, B4
		stw	.d2t1	A4, *B4
		mvk	.d1	0, A3
		mvk	.s1	-128, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		mvk	.s1	-128, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		and	.d1	0, A3, A3
		mvk	.s1	-136, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		mvk	.d1	0, A0
		mvklh	.s1	255, A0
		subaw	.d1	A15, 31, A4
		ldw	.d1t1	*A4, A4
		nop	4
		and	.d1	A0, A4, A4
		mvk	.s2	-132, B4
		add	.d2x	B4, A15, B4
		stw	.d2t1	A4, *B4
		ldw	.d1t1	*-A15(120), A3
		nop	4
		mvk	.s1	-136, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		or	.d1	A4, A3, A3
		mvk	.s1	-144, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		ldw	.d1t1	*-A15(116), A3
		nop	4
		mvk	.s1	-132, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		or	.d1	A4, A3, A3
		mvk	.s1	-140, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		shl	.s1	A0, 24, A3
		mvk	.s1	-148, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		mvk	.d1	0, A3
		mvk	.s1	-152, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		mvk	.s1	-144, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		mvk	.s1	-152, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		or	.d1	A4, A3, A3
		mvk	.s1	-160, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		mvk	.s1	-140, A3
		add	.d1	A3, A15, A3
		ldw	.d1t1	*A3, A3
		nop	4
		mvk	.s1	-148, A4
		add	.d1	A4, A15, A4
		ldw	.d1t1	*A4, A4
		nop	4
		or	.d1	A4, A3, A3
		mvk	.s1	-156, A4
		add	.d1	A4, A15, A4
		stw	.d1t1	A3, *A4
		lddw	.d1t1	*-A15(160), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
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
		sub	.d2	B15, 8, B15
		stw	.d1t1	A4, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 24, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 8, A2
		mvk	.s1	-256, A0
		mvklh	.s1	0, A0
		and	.d1	A0, A2, A0
		or	.d1	A0, A1, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 8, A2
		mvk	.d1	0, A0
		mvklh	.s1	255, A0
		and	.d1	A0, A2, A0
		or	.d1	A0, A1, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 24, A0
		or	.d1	A0, A1, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(20)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.d1	-1, A0
		mvklh	.s1	0, A0
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L871
		nop	5
		mvk	.s1	16, A0
		b	.s2	.L872
		nop	5
.L871:
		mvk	.d1	0, A0
.L872:
		stw	.d1t1	A0, *-A15(8)
		mvk	.s1	16, A1
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.d1	A1, A0, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.s1	-256, A0
		mvklh	.s1	0, A0
		and	.d1	A0, A1, A0
	[A0]	b	.s2	.L873
		nop	5
		mvk	.d1	8, A0
		b	.s2	.L874
		nop	5
.L873:
		mvk	.d1	0, A0
.L874:
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.l1	8, A0, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*-A15(12), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.s1	240, A0
		and	.d1	A0, A1, A0
	[A0]	b	.s2	.L875
		nop	5
		mvk	.d1	4, A0
		b	.s2	.L876
		nop	5
.L875:
		mvk	.d1	0, A0
.L876:
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.l1	4, A0, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*-A15(12), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	12, A0, A0
	[A0]	b	.s2	.L877
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L878
		nop	5
.L877:
		mvk	.d1	0, A0
.L878:
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		sub	.l1	2, A0, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*-A15(12), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	2, A0, A0
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.l1	2, A0, A0
		mpy32	.m1	A1, A0, A1
		nop	3
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		mv	.d1	A0, A4
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
		subah	.d2	B15, 16, B15
		stdw	.d1t1	A5:A4, *-A15(24)
		stdw	.d1t2	B5:B4, *-A15(32)
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *-A15(8)
		lddw	.d1t1	*-A15(32), A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *-A15(16)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		cmpgt	.l1	A0, A1, A0
	[!A0]	b	.s2	.L881
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L886
		nop	5
.L881:
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		cmplt	.l1	A0, A1, A0
	[!A0]	b	.s2	.L883
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L886
		nop	5
.L883:
		ldw	.d1t1	*-A15(8), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L884
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L886
		nop	5
.L884:
		ldw	.d1t1	*-A15(8), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L885
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L886
		nop	5
.L885:
		mvk	.d1	1, A0
.L886:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		stdw	.d1t2	B5:B4, *-A15(24)
		lddw	.d1t2	*-A15(24), B5:B4
		nop	4
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__cmpdi2), B3
		mv	.d1	A4, A0
		sub	.d1	A0, 1, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
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
		sub	.d2	B15, 24, B15
		stw	.d1t1	A4, *-A15(20)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		clr	.s1	A0, 16, 31, A0
	[A0]	b	.s2	.L891
		nop	5
		mvk	.s1	16, A0
		b	.s2	.L892
		nop	5
.L891:
		mvk	.d1	0, A0
.L892:
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		clr	.s1	A0, 8, 31, A0
	[A0]	b	.s2	.L893
		nop	5
		mvk	.d1	8, A0
		b	.s2	.L894
		nop	5
.L893:
		mvk	.d1	0, A0
.L894:
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*-A15(12), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	15, A0, A0
	[A0]	b	.s2	.L895
		nop	5
		mvk	.d1	4, A0
		b	.s2	.L896
		nop	5
.L895:
		mvk	.d1	0, A0
.L896:
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*-A15(12), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	3, A0, A0
	[A0]	b	.s2	.L897
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L898
		nop	5
.L897:
		mvk	.d1	0, A0
.L898:
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	3, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*-A15(12), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		not	.l1	A0, A0
		and	.d1	1, A0, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 1, A0
		sub	.l1	2, A0, A0
		neg	.l1	A1, A1
		and	.d1	A0, A1, A1
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		mv	.d1	A0, A4
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
		subah	.d2	B15, 20, B15
		stdw	.d1t1	A5:A4, *-A15(32)
		stw	.d1t2	B4, *-A15(36)
		mvk	.s1	32, A0
		stw	.d1t1	A0, *-A15(4)
		lddw	.d1t1	*-A15(32), A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *-A15(16)
		ldw	.d1t1	*-A15(36), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	A0, A1, A0
	[!A0]	b	.s2	.L901
		nop	5
		mvk	.d1	0, A0
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(36), A2
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		sub	.d1	A2, A0, A0
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(24)
		b	.s2	.L902
		nop	5
.L901:
		ldw	.d1t1	*-A15(36), A0
		nop	4
	[A0]	b	.s2	.L903
		nop	5
		lddw	.d1t1	*-A15(32), A1:A0
		nop	4
		b	.s2	.L905
		nop	5
.L903:
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(4), A2
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		sub	.d1	A2, A0, A0
		shl	.s1	A1, A0, A1
		ldw	.d1t1	*-A15(16), A2
		nop	4
		ldw	.d1t1	*-A15(36), A0
		nop	4
		shru	.s1	A2, A0, A0
		or	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(24)
.L902:
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
.L905:
		dmv	.s1	A1, A0, A5:A4
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
		subah	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(28)
		stw	.d1t2	B4, *-A15(32)
		mvk	.s1	16, A0
		stw	.d1t1	A0, *-A15(4)
		mvk	.d1	-1, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(8)
		ldw	.d1t1	*-A15(28), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		and	.d1	A0, A1, A1
		ldw	.d1t1	*-A15(32), A2
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		and	.d1	A0, A2, A0
		mpy32	.m1	A1, A0, A0
		nop	3
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(24), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(24), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		and	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(28), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A1, A0, A1
		ldw	.d1t1	*-A15(32), A2
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		and	.d1	A0, A2, A0
		mpy32	.m1	A1, A0, A0
		nop	3
		ldw	.d1t1	*-A15(12), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(24), A1
		nop	4
		ldw	.d1t1	*-A15(12), A2
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		and	.d1	A0, A2, A2
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A2, A0, A0
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(24), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(24), A1
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		and	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(32), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A1, A0, A1
		ldw	.d1t1	*-A15(28), A2
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		and	.d1	A0, A2, A0
		mpy32	.m1	A1, A0, A0
		nop	3
		ldw	.d1t1	*-A15(12), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(24), A1
		nop	4
		ldw	.d1t1	*-A15(12), A2
		nop	4
		ldw	.d1t1	*-A15(8), A0
		nop	4
		and	.d1	A0, A2, A2
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A2, A0, A0
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		mv	.d1	A0, A2
		ldw	.d1t1	*-A15(12), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A1, A0, A0
		add	.d1	A2, A0, A0
		stw	.d1t1	A0, *-A15(20)
		ldw	.d1t1	*-A15(20), A0
		nop	4
		mv	.l2x	A0, B0
		ldw	.d1t1	*-A15(28), A1
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A1, A0, A1
		ldw	.d1t1	*-A15(32), A2
		nop	4
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A2, A0, A0
		mpy32	.m1	A1, A0, A0
		nop	3
		add	.d1x	A0, B0, A0
		stw	.d1t1	A0, *-A15(20)
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
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
		subah	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(52)
		stw	.d2t2	B3, *+B15(48)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(40)
		stdw	.d1t2	B5:B4, *-A15(48)
		lddw	.d1t1	*-A15(40), A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *-A15(16)
		lddw	.d1t1	*-A15(48), A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *-A15(24)
		ldw	.d1t1	*-A15(16), A0
		nop	4
		ldw	.d1t1	*-A15(24), A1
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__muldsi3), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d1t1	A1:A0, *-A15(32)
		ldw	.d1t1	*-A15(28), A0
		nop	4
		mv	.d1	A0, A2
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(24), A0
		nop	4
		mpy32	.m1	A1, A0, A1
		nop	3
		ldw	.d1t1	*-A15(16), A0
		nop	4
		ldw	.d1t2	*-A15(20), B0
		nop	4
		mpy32	.m1x	A0, B0, A0
		nop	3
		add	.d1	A1, A0, A0
		add	.d1	A2, A0, A0
		stw	.d1t1	A0, *-A15(28)
		lddw	.d1t1	*-A15(32), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(48), B3
		nop	4
		ldw	.d2t2	*+B15(52), B14
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
		sub	.d2	B15, 16, B15
		stdw	.d1t1	A5:A4, *-A15(8)
		lddw	.d1t1	*-A15(8), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		mvk	.d2	0, B0
		mvk	.d2	0, B1
		ldw	.d1t1	*-A15(16), A5
		nop	4
		sub	.l1x	B0, A5, A0
		mv	.l1x	B0, A3
		cmpltu	.l1	A3, A0, A2
		ldw	.d1t1	*-A15(12), A4
		nop	4
		sub	.l1x	B1, A4, A1
		sub	.d1	A1, A2, A2
		mv	.d1	A2, A1
		dmv	.s1	A1, A0, A5:A4
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
		sub	.d2	B15, 24, B15
		stdw	.d1t1	A5:A4, *-A15(24)
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *-A15(16)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		mv	.d1	A0, A1
		ldw	.d1t1	*-A15(16), A0
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 16, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 8, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 4, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	15, A0, A0
		mvk	.s1	27030, A1
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 16, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 8, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 4, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		and	.d1	15, A0, A0
		mvk	.s1	27030, A1
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
		mv	.d1	A0, A4
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
		subaw	.d2	B15, 24, B15
		stdw	.d1t1	A5:A4, *-A15(24)
		lddw	.d1t1	*-A15(24), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(72)
		lddw	.d1t1	*-A15(72), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(8)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shl	.s1	A2, 31, A2
		ldw	.d1t2	*-A15(8), B2
		nop	4
		shru	.s2	B2, 1, B2
		stw	.d1t2	B2, *-A15(32)
		ldw	.d1t1	*-A15(32), A5
		nop	4
		or	.d1	A5, A2, A2
		stw	.d1t1	A2, *-A15(32)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shru	.s1	A2, 1, A2
		stw	.d1t1	A2, *-A15(28)
		mvk	.s1	21845, A2
		mvklh	.s1	21845, A2
		ldw	.d1t1	*-A15(32), A3
		nop	4
		and	.d1	A2, A3, A2
		stw	.d1t1	A2, *-A15(40)
		mvk	.s1	21845, A2
		mvklh	.s1	21845, A2
		ldw	.d1t1	*-A15(28), A4
		nop	4
		and	.d1	A2, A4, A2
		stw	.d1t1	A2, *-A15(36)
		lddw	.d1t1	*-A15(8), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(80)
		ldw	.d1t1	*-A15(80), A5
		nop	4
		ldw	.d1t1	*-A15(40), A3
		nop	4
		sub	.d1	A5, A3, A5
		stw	.d1t1	A5, *-A15(88)
		ldw	.d1t1	*-A15(88), A4
		nop	4
		ldw	.d1t1	*-A15(80), A5
		nop	4
		cmpltu	.l1	A5, A4, A2
		ldw	.d1t1	*-A15(76), A3
		nop	4
		ldw	.d1t1	*-A15(36), A4
		nop	4
		sub	.d1	A3, A4, A3
		stw	.d1t1	A3, *-A15(84)
		ldw	.d1t1	*-A15(84), A5
		nop	4
		sub	.d1	A5, A2, A2
		stw	.d1t1	A2, *-A15(84)
		lddw	.d1t1	*-A15(88), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(8)
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shl	.s1	A2, 30, A2
		ldw	.d1t2	*-A15(8), B2
		nop	4
		shru	.s1x	B2, 2, A0
		or	.d1	A0, A2, A0
		ldw	.d1t1	*-A15(4), A2
		nop	4
		shru	.s1	A2, 2, A1
		mvk	.s1	13107, A2
		mvklh	.s1	13107, A2
		and	.d1	A2, A0, A2
		stw	.d1t1	A2, *-A15(48)
		mvk	.s1	13107, A2
		mvklh	.s1	13107, A2
		and	.d1	A2, A1, A2
		stw	.d1t1	A2, *-A15(44)
		ldw	.d1t1	*-A15(8), A1
		nop	4
		mvk	.s1	13107, A0
		mvklh	.s1	13107, A0
		and	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(56)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		mvk	.s1	13107, A0
		mvklh	.s1	13107, A0
		and	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(52)
		ldw	.d1t1	*-A15(48), A5
		nop	4
		ldw	.d1t1	*-A15(56), A3
		nop	4
		addu	.l1	A5, A3, A1:A0
		ldw	.d1t1	*-A15(44), A4
		nop	4
		add	.d1	A1, A4, A1
		ldw	.d1t1	*-A15(52), A5
		nop	4
		add	.d1	A1, A5, A1
		stdw	.d1t1	A1:A0, *-A15(8)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shl	.s1	A0, 28, A0
		ldw	.d1t1	*-A15(8), A1
		nop	4
		shru	.s2x	A1, 4, B0
		or	.d2x	B0, A0, B0
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s2x	A0, 4, B1
		lddw	.d1t1	*-A15(8), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *-A15(96)
		ldw	.d1t1	*-A15(96), A5
		nop	4
		addu	.l1x	A5, B0, A1:A0
		add	.d1x	A1, B1, A1
		ldw	.d1t1	*-A15(92), A3
		nop	4
		add	.d1	A1, A3, A1
		mvk	.s1	3855, A2
		mvklh	.s1	3855, A2
		and	.d1	A2, A0, A2
		stw	.d1t1	A2, *-A15(8)
		mvk	.s1	3855, A2
		mvklh	.s1	3855, A2
		and	.d1	A2, A1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(8), A0
		nop	4
		ldw	.d1t1	*-A15(4), A1
		nop	4
		shru	.s1	A1, 0, A1
		stw	.d1t1	A1, *-A15(64)
		mvk	.d1	0, A4
		stw	.d1t1	A4, *-A15(60)
		ldw	.d1t1	*-A15(64), A1
		nop	4
		add	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		shru	.s1	A0, 16, A0
		ldw	.d1t1	*-A15(12), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(12)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		shru	.s1	A0, 8, A1
		ldw	.d1t1	*-A15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		clr	.s1	A0, 7, 31, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d1t1	A4, *-A15(12)
		ldw	.d1t1	*-A15(12), A0
		nop	4
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 1, A1
		mvk	.s1	21845, A0
		mvklh	.s1	21845, A0
		and	.d1	A0, A1, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		sub	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 2, A1
		mvk	.s1	13107, A0
		mvklh	.s1	13107, A0
		and	.d1	A0, A1, A1
		ldw	.d1t1	*-A15(4), A2
		nop	4
		mvk	.s1	13107, A0
		mvklh	.s1	13107, A0
		and	.d1	A0, A2, A0
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 4, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A1, A0, A1
		mvk	.s1	3855, A0
		mvklh	.s1	3855, A0
		and	.d1	A0, A1, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 16, A0
		ldw	.d1t1	*-A15(4), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d1t1	A0, *-A15(4)
		ldw	.d1t1	*-A15(4), A0
		nop	4
		shru	.s1	A0, 8, A1
		ldw	.d1t1	*-A15(4), A0
		nop	4
		add	.d1	A1, A0, A0
		clr	.s1	A0, 6, 31, A0
		mv	.d1	A0, A4
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
		subah	.d2	B15, 20, B15
		stw	.d2t2	B14, *+B15(44)
		stw	.d2t2	B3, *+B15(40)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(32)
		stw	.d1t2	B4, *-A15(36)
		ldw	.d1t1	*-A15(36), A0
		nop	4
		shru	.s1	A0, 31, A0
		extu	.s1	A0, 24, 24, A0
		stw	.d1t1	A0, *-A15(20)
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mvklh	.s1	16368, A1
		stdw	.d1t1	A1:A0, *-A15(16)
.L925:
		ldw	.d1t1	*-A15(36), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L922
		nop	5
		lddw	.d1t2	*-A15(32), B5:B4
		nop	4
		lddw	.d1t1	*-A15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d1t1	A1:A0, *-A15(16)
.L922:
		ldw	.d1t1	*-A15(36), A0
		nop	4
		shru	.s1	A0, 31, A1
		add	.d1	A1, A0, A0
		shr	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(36)
		ldw	.d1t1	*-A15(36), A0
		nop	4
	[!A0]	b	.s2	.L930
		nop	5
		lddw	.d1t2	*-A15(32), B5:B4
		nop	4
		lddw	.d1t1	*-A15(32), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d1t1	A1:A0, *-A15(32)
		b	.s2	.L925
		nop	5
.L930:
	nop
		ldw	.d1t1	*-A15(20), A0
		nop	4
	[!A0]	b	.s2	.L926
		nop	5
		lddw	.d1t2	*-A15(16), B5:B4
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16368, A5
		callp	.s2	(__c6xabi_divd), B3
		dmv	.s1	A5, A4, A1:A0
		b	.s2	.L928
		nop	5
.L926:
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
.L928:
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(40), B3
		nop	4
		ldw	.d2t2	*+B15(44), B14
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d1t1	A4, *-A15(20)
		stw	.d1t2	B4, *-A15(24)
		ldw	.d1t1	*-A15(24), A0
		nop	4
		shru	.s1	A0, 31, A0
		extu	.s1	A0, 24, 24, A0
		stw	.d1t1	A0, *-A15(16)
		mvk	.d1	0, A0
		mvklh	.s1	16256, A0
		stw	.d1t1	A0, *-A15(12)
.L938:
		ldw	.d1t1	*-A15(24), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L935
		nop	5
		ldw	.d1t2	*-A15(20), B4
		nop	4
		ldw	.d1t1	*-A15(12), A4
		nop	4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A0
		stw	.d1t1	A0, *-A15(12)
.L935:
		ldw	.d1t1	*-A15(24), A0
		nop	4
		shru	.s1	A0, 31, A1
		add	.d1	A1, A0, A0
		shr	.s1	A0, 1, A0
		stw	.d1t1	A0, *-A15(24)
		ldw	.d1t1	*-A15(24), A0
		nop	4
	[!A0]	b	.s2	.L943
		nop	5
		ldw	.d1t2	*-A15(20), B4
		nop	4
		ldw	.d1t1	*-A15(20), A4
		nop	4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A0
		stw	.d1t1	A0, *-A15(20)
		b	.s2	.L938
		nop	5
.L943:
	nop
		ldw	.d1t1	*-A15(16), A0
		nop	4
	[!A0]	b	.s2	.L939
		nop	5
		ldw	.d1t2	*-A15(12), B4
		nop	4
		mvk	.d1	0, A4
		mvklh	.s1	16256, A4
		callp	.s2	(__c6xabi_divf), B3
		mv	.d1	A4, A0
		b	.s2	.L941
		nop	5
.L939:
		ldw	.d1t1	*-A15(12), A0
		nop	4
.L941:
		mv	.d1	A0, A4
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
		subah	.d2	B15, 16, B15
		stdw	.d1t1	A5:A4, *-A15(24)
		stdw	.d1t2	B5:B4, *-A15(32)
		lddw	.d1t1	*-A15(24), A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *-A15(8)
		lddw	.d1t1	*-A15(32), A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *-A15(16)
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L948
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L953
		nop	5
.L948:
		ldw	.d1t1	*-A15(4), A1
		nop	4
		ldw	.d1t1	*-A15(12), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L950
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L953
		nop	5
.L950:
		ldw	.d1t1	*-A15(8), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L951
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L953
		nop	5
.L951:
		ldw	.d1t1	*-A15(8), A1
		nop	4
		ldw	.d1t1	*-A15(16), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L952
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L953
		nop	5
.L952:
		mvk	.d1	1, A0
.L953:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(28)
		stw	.d2t2	B3, *+B15(24)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d1t1	A5:A4, *-A15(16)
		stdw	.d1t2	B5:B4, *-A15(24)
		lddw	.d1t1	*-A15(16), A1:A0
		nop	4
		lddw	.d1t2	*-A15(24), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__ucmpdi2), B3
		mv	.d1	A4, A0
		sub	.d1	A0, 1, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(24), B3
		nop	4
		ldw	.d2t2	*+B15(28), B14
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
	.global	__c6xabi_fixfi
	.global	__c6xabi_gef
	.global	__c6xabi_fltullf
	.global	__c6xabi_fltulld
	.global	__c6xabi_fltuf
	.global	__c6xabi_fltud
	.global	__c6xabi_divd
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
