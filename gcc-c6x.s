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
		subah	.d2	B15, 20, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L2
		nop	5
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(36)
		b	.s2	.L3
		nop	5
.L4:
		ldw	.d2t1	*+B15(28), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(36), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(36)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(36), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L3:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L4
		nop	5
		b	.s2	.L5
		nop	5
.L2:
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L5
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		stw	.d2t1	A0, *+B15(32)
		b	.s2	.L6
		nop	5
.L7:
		ldw	.d2t1	*+B15(16), A1
		nop	4
		add	.d1	A1, 1, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(32), A0
		nop	4
		add	.d1	A0, 1, A2
		stw	.d2t1	A2, *+B15(32)
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L6:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L7
		nop	5
.L5:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		stw	.d2t2	B6, *+B15(8)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L10
		nop	5
.L12:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(8)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
.L10:
		ldw	.d2t1	*+B15(8), A0
		nop	4
	[!A0]	b	.s2	.L11
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		ldw	.d2t1	*+B15(28), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L12
		nop	5
.L11:
		ldw	.d2t1	*+B15(8), A0
		nop	4
	[!A0]	b	.s2	.L13
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		b	.s2	.L14
		nop	5
.L13:
		mvk	.d1	0, A0
.L14:
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L16
		nop	5
.L18:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L16:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L17
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldbu	.d1t1	*A0, A0
		nop	4
		ldw	.d2t1	*+B15(28), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L18
		nop	5
.L17:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L19
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		b	.s2	.L21
		nop	5
.L19:
		mvk	.d1	0, A0
.L21:
	nop
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		b	.s2	.L23
		nop	5
.L25:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
.L23:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L24
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A1, 24, 24, A1
		extu	.s1	A0, 24, 24, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L25
		nop	5
.L24:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L26
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldbu	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldbu	.d1t1	*A0, A0
		nop	4
		sub	.d1	A1, A0, A0
		b	.s2	.L28
		nop	5
.L26:
		mvk	.d1	0, A0
.L28:
	nop
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L30
		nop	5
.L31:
		ldw	.d2t1	*+B15(16), A1
		nop	4
		add	.d1	A1, 1, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		add	.d1	A0, 1, A2
		stw	.d2t1	A2, *+B15(28)
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L30:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L31
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L34
		nop	5
.L36:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		ldbu	.d1t1	*A0, A0
		nop	4
		ldw	.d2t1	*+B15(28), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L34
		nop	5
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		b	.s2	.L35
		nop	5
.L34:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(12)
	[A0]	b	.s2	.L36
		nop	5
		mvk	.d1	0, A0
.L35:
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L38
		nop	5
.L39:
		ldw	.d2t1	*+B15(28), A0
		nop	4
		ldw	.d2t1	*+B15(16), A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
.L38:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L39
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		b	.s2	.L42
		nop	5
.L43:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(8)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L42:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L43
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L46
		nop	5
.L48:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L46:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[!A0]	b	.s2	.L47
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldbu	.d1t1	*A0, A0
		nop	4
		ldw	.d2t1	*+B15(20), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L48
		nop	5
.L47:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
		sub	.d2	B15, 16, B15
		mv	.d1	A4, A0
		stw	.d2t2	B4, *+B15(12)
.L53:
		ldb	.d1t1	*A0, A1
		nop	4
		shl	.s1	A1, 24, A1
		shr	.s1	A1, 24, A1
		ldw	.d2t1	*+B15(12), A2
		nop	4
		cmpeq	.l1	A1, A2, A1
	[A1]	b	.s2	.L54
		nop	5
		mv	.d1	A0, A1
		add	.d1	A1, 1, A0
		ldb	.d1t1	*A1, A1
		nop	4
		shl	.s1	A1, 24, A1
		shr	.s1	A1, 24, A1
	[A1]	b	.s2	.L53
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L52
		nop	5
.L54:
	nop
.L52:
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		b	.s2	.L56
		nop	5
.L58:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(8)
.L56:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A1, 24, A1
		shr	.s1	A1, 24, A1
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L57
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L58
		nop	5
.L57:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldbu	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldbu	.d1t1	*A0, A0
		nop	4
		sub	.d1	A1, A0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L61
		nop	5
.L62:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
.L61:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L62
		nop	5
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A1, A0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(28)
	[A0]	b	.s2	.L67
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L66
		nop	5
.L69:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
.L67:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
	[!A0]	b	.s2	.L68
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A0, 24, 24, A0
	[!A0]	b	.s2	.L68
		nop	5
		ldw	.d2t1	*+B15(28), A0
		nop	4
	[!A0]	b	.s2	.L68
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		extu	.s1	A1, 24, 24, A1
		extu	.s1	A0, 24, 24, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L69
		nop	5
.L68:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldbu	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldbu	.d1t1	*A0, A0
		nop	4
		sub	.d1	A1, A0, A0
.L66:
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		b	.s2	.L71
		nop	5
.L72:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 1, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 2, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 2, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 2, A0
		stw	.d2t1	A0, *+B15(12)
.L71:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		cmplt	.l1	1, A0, A0
	[A0]	b	.s2	.L72
		nop	5
	nop
	nop
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.type	isalpha, @function
isalpha:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		set	.s1	A0, 5, 5, A0
		mvk	.s1	-97, A3
		add	.d1	A0, A3, A1
		mvk	.s1	25, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.type	isascii, @function
isascii:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		mvk	.s1	127, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.type	isblank, @function
isblank:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		mvk	.s1	32, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L78
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		cmpeq	.l1	9, A0, A0
	[!A0]	b	.s2	.L79
		nop	5
.L78:
		mvk	.d1	1, A0
		b	.s2	.L81
		nop	5
.L79:
		mvk	.d1	0, A0
.L81:
	nop
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		cmpltu	.l1	31, A0, A0
	[!A0]	b	.s2	.L83
		nop	5
		ldw	.d2t1	*+B15(12), A1
		nop	4
		mvk	.s1	127, A0
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L84
		nop	5
.L83:
		mvk	.d1	1, A0
		b	.s2	.L86
		nop	5
.L84:
		mvk	.d1	0, A0
.L86:
	nop
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.type	isdigit, @function
isdigit:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
		cmpeq	.l1	0, A0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.type	isgraph, @function
isgraph:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mvk	.s1	-33, A3
		add	.d1	A0, A3, A1
		mvk	.s1	93, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.type	islower, @function
islower:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mvk	.s1	-97, A3
		add	.d1	A0, A3, A1
		mvk	.s1	25, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	islower, .-islower
	.align	2
	.global	isprint
	.type	isprint, @function
isprint:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		subah	.d1	A0, 16, A1
		mvk	.s1	94, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.type	isspace, @function
isspace:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		mvk	.s1	32, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L96
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 9, A0
		cmpltu	.l1	4, A0, A0
	[A0]	b	.s2	.L97
		nop	5
.L96:
		mvk	.d1	1, A0
		b	.s2	.L99
		nop	5
.L97:
		mvk	.d1	0, A0
.L99:
	nop
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.type	isupper, @function
isupper:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mvk	.s1	-65, A3
		add	.d1	A0, A3, A1
		mvk	.s1	25, A0
		cmpltu	.l1	A0, A1, A0
		cmpeq	.l1	0, A0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		cmpltu	.l1	31, A0, A0
	[!A0]	b	.s2	.L103
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mvk	.s1	-127, A3
		add	.d1	A0, A3, A1
		mvk	.s1	32, A0
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L103
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		addk	.s1	-8232, A0
		cmpltu	.l1	1, A0, A0
	[!A0]	b	.s2	.L103
		nop	5
		ldw	.d2t1	*+B15(12), A1
		nop	4
		mvk	.d1	7, A0
		mvklh	.s1	65535, A0
		add	.d1	A1, A0, A0
		cmpltu	.l1	2, A0, A0
	[A0]	b	.s2	.L104
		nop	5
.L103:
		mvk	.d1	1, A0
		b	.s2	.L106
		nop	5
.L104:
		mvk	.d1	0, A0
.L106:
	nop
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
		cmpeq	.l1	0, A0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.type	iswprint, @function
iswprint:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		mvk	.s1	254, A0
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L110
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		clr	.s1	A0, 7, 31, A1
		mvk	.s1	32, A0
		cmpltu	.l1	A0, A1, A0
		b	.s2	.L111
		nop	5
.L110:
		ldw	.d2t1	*+B15(12), A1
		nop	4
		mvk	.s1	8231, A0
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L112
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mvk	.s1	-8234, A3
		add	.d1	A0, A3, A1
		mvk	.s1	-18475, A0
		mvklh	.s1	0, A0
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L112
		nop	5
		ldw	.d2t1	*+B15(12), A1
		nop	4
		mvk	.s1	8192, A0
		mvklh	.s1	65535, A0
		add	.d1	A1, A0, A1
		mvk	.s1	8184, A0
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L113
		nop	5
.L112:
		mvk	.d1	1, A0
		b	.s2	.L111
		nop	5
.L113:
		ldw	.d2t1	*+B15(12), A1
		nop	4
		mvk	.d1	4, A0
		mvklh	.s1	65535, A0
		add	.d1	A1, A0, A1
		mvk	.d1	3, A0
		mvklh	.s1	16, A0
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L114
		nop	5
		ldw	.d2t1	*+B15(12), A1
		nop	4
		mvk	.d1	-2, A0
		mvklh	.s1	0, A0
		and	.d1	A0, A1, A1
		mvk	.d1	-2, A0
		mvklh	.s1	0, A0
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L115
		nop	5
.L114:
		mvk	.d1	0, A0
		b	.s2	.L111
		nop	5
.L115:
		mvk	.d1	1, A0
.L111:
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
	[!A0]	b	.s2	.L117
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		set	.s1	A0, 5, 5, A0
		addk	.s1	-97, A0
		cmpltu	.l1	5, A0, A0
	[A0]	b	.s2	.L118
		nop	5
.L117:
		mvk	.d1	1, A0
		b	.s2	.L120
		nop	5
.L118:
		mvk	.d1	0, A0
.L120:
	nop
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.type	toascii, @function
toascii:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		clr	.s1	A0, 7, 31, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L135
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L126
		nop	5
.L135:
		lddw	.d2t2	*+B15(8), B5:B4
		nop	4
		lddw	.d2t1	*+B15(8), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L136
		nop	5
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		b	.s2	.L126
		nop	5
.L136:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		lddw	.d2t2	*+B15(8), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L137
		nop	5
		lddw	.d2t2	*+B15(8), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_subd), B3
		dmv	.s1	A5, A4, A1:A0
		b	.s2	.L126
		nop	5
.L137:
		mvk	.d1	0, A0
		mvk	.d1	0, A1
.L126:
		dmv	.s1	A1, A0, A5:A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t2	*+B15(12), B4
		nop	4
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L154
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		b	.s2	.L145
		nop	5
.L154:
		ldw	.d2t2	*+B15(8), B4
		nop	4
		ldw	.d2t1	*+B15(8), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L155
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
		b	.s2	.L145
		nop	5
.L155:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d2t1	*+B15(8), A1
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L156
		nop	5
		ldw	.d2t2	*+B15(8), B4
		nop	4
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__c6xabi_subf), B3
		mv	.d1	A4, A0
		b	.s2	.L145
		nop	5
.L156:
		mvk	.d1	0, A0
.L145:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L176
		nop	5
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		b	.s2	.L164
		nop	5
.L176:
		lddw	.d2t2	*+B15(8), B5:B4
		nop	4
		lddw	.d2t1	*+B15(8), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L177
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L164
		nop	5
.L177:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L167
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L168
		nop	5
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		b	.s2	.L164
		nop	5
.L168:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L164
		nop	5
.L167:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		lddw	.d2t2	*+B15(8), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L178
		nop	5
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		b	.s2	.L164
		nop	5
.L178:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
.L164:
		dmv	.s1	A1, A0, A5:A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t2	*+B15(12), B4
		nop	4
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L197
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
		b	.s2	.L185
		nop	5
.L197:
		ldw	.d2t2	*+B15(8), B4
		nop	4
		ldw	.d2t1	*+B15(8), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L198
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		b	.s2	.L185
		nop	5
.L198:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d2t1	*+B15(8), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L188
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L189
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
		b	.s2	.L185
		nop	5
.L189:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		b	.s2	.L185
		nop	5
.L188:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d2t1	*+B15(8), A1
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L199
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
		b	.s2	.L185
		nop	5
.L199:
		ldw	.d2t1	*+B15(12), A0
		nop	4
.L185:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L218
		nop	5
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		b	.s2	.L206
		nop	5
.L218:
		lddw	.d2t2	*+B15(8), B5:B4
		nop	4
		lddw	.d2t1	*+B15(8), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L219
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L206
		nop	5
.L219:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L209
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L210
		nop	5
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		b	.s2	.L206
		nop	5
.L210:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L206
		nop	5
.L209:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		lddw	.d2t2	*+B15(8), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L220
		nop	5
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		b	.s2	.L206
		nop	5
.L220:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
.L206:
		dmv	.s1	A1, A0, A5:A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L239
		nop	5
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		b	.s2	.L227
		nop	5
.L239:
		lddw	.d2t2	*+B15(8), B5:B4
		nop	4
		lddw	.d2t1	*+B15(8), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L240
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L227
		nop	5
.L240:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L230
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L231
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L227
		nop	5
.L231:
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		b	.s2	.L227
		nop	5
.L230:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		lddw	.d2t2	*+B15(8), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L241
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L227
		nop	5
.L241:
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
.L227:
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t2	*+B15(12), B4
		nop	4
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L260
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
		b	.s2	.L248
		nop	5
.L260:
		ldw	.d2t2	*+B15(8), B4
		nop	4
		ldw	.d2t1	*+B15(8), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L261
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		b	.s2	.L248
		nop	5
.L261:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d2t1	*+B15(8), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L251
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L252
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		b	.s2	.L248
		nop	5
.L252:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		b	.s2	.L248
		nop	5
.L251:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d2t1	*+B15(8), A1
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L262
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		b	.s2	.L248
		nop	5
.L262:
		ldw	.d2t1	*+B15(8), A0
		nop	4
.L248:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L281
		nop	5
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		b	.s2	.L269
		nop	5
.L281:
		lddw	.d2t2	*+B15(8), B5:B4
		nop	4
		lddw	.d2t1	*+B15(8), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[!A0]	b	.s2	.L282
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L269
		nop	5
.L282:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		mv	.d1	A0, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L272
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		clr	.s1	A0, 0, 30, A0
	[!A0]	b	.s2	.L273
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L269
		nop	5
.L273:
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		b	.s2	.L269
		nop	5
.L272:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		lddw	.d2t2	*+B15(8), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L283
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L269
		nop	5
.L283:
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
.L269:
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B14($GOT(s.0)), A0
		nop	4
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L288
		nop	5
.L289:
		ldw	.d2t1	*+B15(16), A0
		nop	4
		clr	.s1	A0, 6, 31, A0
		ldw	.d2t1	*+B14($GOT(digits)), A1
		nop	4
		add	.d1	A1, A0, A0
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shru	.s1	A0, 6, A0
		stw	.d2t1	A0, *+B15(16)
.L288:
		ldw	.d2t1	*+B15(16), A0
		nop	4
	[A0]	b	.s2	.L289
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mvk	.d1	0, A1
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B14($GOT(s.0)), A0
		nop	4
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
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
		sub	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(16)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		mv	.d1	A0, A2
		mvk	.d1	0, A1
		addaw	.d1x	B14, (seed), A0
		stw	.d1t1	A2, *A0
		stw	.d1t1	A1, *+A0(4)
	nop
		ldw	.d2t2	*+B15(16), B14
		nop	4
		add	.d2	B15, 16, B15
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
		addaw	.d1x	B14, (seed), A0
		ldw	.d1t1	*+A0(4), A2
		nop	4
		mvk	.s1	32557, A1
		mvklh	.s1	19605, A1
		mpy32	.m1	A2, A1, A2
		nop	3
		ldw	.d1t2	*A0, B0
		nop	4
		mvk	.s1	-3027, A1
		mvklh	.s1	22609, A1
		mpy32	.m1x	A1, B0, A1
		nop	3
		add	.d1	A2, A1, A1
		ldw	.d1t1	*A0, A2
		nop	4
		mvk	.s1	32557, A0
		mvklh	.s1	19605, A0
		mpy32u	.m1	A2, A0, A5:A4
		nop	3
		mv	.l2x	A4, B0
		mv	.l2x	A5, B1
		add	.d1x	A1, B1, A0
		mv	.l2x	A0, B1
		mvk	.d1	1, A0
		mvk	.d1	0, A2
		addu	.l1x	A0, B0, A1:A0
		add	.d1x	A1, B1, A1
		add	.d1	A1, A2, A1
		addaw	.d1x	B14, (seed), A2
		stdw	.d1t1	A1:A0, *A2
		addaw	.d1x	B14, (seed), A0
		ldw	.d1t1	*+A0(4), A0
		nop	4
		shru	.s1	A0, 1, A0
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(8), A0
		nop	4
	[A0]	b	.s2	.L295
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mvk	.d1	0, A1
		stw	.d1t1	A1, *+A0(4)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*+A0(4), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		stw	.d1t1	A1, *A0
		b	.s2	.L294
		nop	5
.L295:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d2t1	*+B15(8), A1
		nop	4
		stw	.d1t1	A1, *+A0(4)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldw	.d2t1	*+B15(12), A1
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L294
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		ldw	.d2t1	*+B15(12), A1
		nop	4
		stw	.d1t1	A1, *+A0(4)
.L294:
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L298
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d1t1	*+A1(4), A1
		nop	4
		stw	.d1t1	A1, *+A0(4)
.L298:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*+A0(4), A0
		nop	4
	[!A0]	b	.s2	.L300
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*+A0(4), A0
		nop	4
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
.L300:
	nop
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
		subah	.d2	B15, 28, B15
		stw	.d2t2	B14, *+B15(56)
		stw	.d2t2	B3, *+B15(52)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(28)
		stw	.d2t2	B4, *+B15(24)
		stw	.d2t1	A6, *+B15(20)
		stw	.d2t2	B6, *+B15(16)
		stw	.d2t1	A8, *+B15(12)
		ldw	.d2t2	*+B15(16), B4
		nop	4
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(40)
		ldw	.d2t1	*+B15(8), A1
		nop	4
		mvk	.d1	0, A0
		addu	.l1	A1, A1, A5:A4
		mv	.l2x	A4, B0
		mv	.l2x	A5, B1
		add	.d2x	B1, A0, B1
		add	.d2x	B1, A0, B1
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
		mv	.l1x	B0, A1
		mv	.l1x	B1, A0
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		stw	.d2t1	A0, *+B15(36)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(44)
		b	.s2	.L302
		nop	5
.L305:
		ldw	.d2t1	*+B15(44), A0
		nop	4
		ldw	.d2t1	*+B15(8), A5
		nop	4
		mpy32	.m1	A5, A0, A0
		nop	3
		ldw	.d2t1	*+B15(24), A1
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mv	.l2x	A1, B4
		ldw	.d2t1	*+B15(28), A4
		nop	4
		call	.s2x	A0
		addkpc	.s2	.L306, B3, 4
.L306:
		mv	.d1	A4, A0
	[A0]	b	.s2	.L303
		nop	5
		ldw	.d2t1	*+B15(44), A0
		nop	4
		ldw	.d2t1	*+B15(8), A3
		nop	4
		mpy32	.m1	A3, A0, A0
		nop	3
		ldw	.d2t1	*+B15(24), A1
		nop	4
		add	.d1	A1, A0, A0
		b	.s2	.L304
		nop	5
.L303:
		ldw	.d2t1	*+B15(44), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(44)
.L302:
		ldw	.d2t1	*+B15(44), A1
		nop	4
		ldw	.d2t1	*+B15(36), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L305
		nop	5
		ldw	.d2t1	*+B15(36), A0
		nop	4
		add	.d1	A0, 1, A1
		ldw	.d2t1	*+B15(20), A0
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(36), A0
		nop	4
		ldw	.d2t1	*+B15(8), A4
		nop	4
		mpy32	.m1	A4, A0, A0
		nop	3
		ldw	.d2t1	*+B15(24), A1
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(16), A6
		nop	4
		ldw	.d2t2	*+B15(28), B4
		nop	4
		mv	.d1	A0, A4
		callp	.s2	(memcpy), B3
		mv	.d1	A4, A0
.L304:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(52), B3
		nop	4
		ldw	.d2t2	*+B15(56), B14
		nop	4
		addab	.d2	B15, 56, B15
		ret	.s2	B3
		nop	5
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
		subah	.d2	B15, 28, B15
		stw	.d2t2	B14, *+B15(56)
		stw	.d2t2	B3, *+B15(52)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(28)
		stw	.d2t2	B4, *+B15(24)
		stw	.d2t1	A6, *+B15(20)
		stw	.d2t2	B6, *+B15(16)
		stw	.d2t1	A8, *+B15(12)
		ldw	.d2t2	*+B15(16), B4
		nop	4
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(40)
		ldw	.d2t1	*+B15(8), A1
		nop	4
		mvk	.d1	0, A0
		addu	.l1	A1, A1, A5:A4
		mv	.l2x	A4, B0
		mv	.l2x	A5, B1
		add	.d2x	B1, A0, B1
		add	.d2x	B1, A0, B1
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
		mv	.l1x	B0, A1
		mv	.l1x	B1, A0
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		stw	.d2t1	A0, *+B15(36)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(44)
		b	.s2	.L309
		nop	5
.L312:
		ldw	.d2t1	*+B15(44), A0
		nop	4
		ldw	.d2t1	*+B15(8), A5
		nop	4
		mpy32	.m1	A5, A0, A0
		nop	3
		ldw	.d2t1	*+B15(24), A1
		nop	4
		add	.d1	A1, A0, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mv	.l2x	A1, B4
		ldw	.d2t1	*+B15(28), A4
		nop	4
		call	.s2x	A0
		addkpc	.s2	.L313, B3, 4
.L313:
		mv	.d1	A4, A0
	[A0]	b	.s2	.L310
		nop	5
		ldw	.d2t1	*+B15(44), A0
		nop	4
		ldw	.d2t1	*+B15(8), A3
		nop	4
		mpy32	.m1	A3, A0, A0
		nop	3
		ldw	.d2t1	*+B15(24), A1
		nop	4
		add	.d1	A1, A0, A0
		b	.s2	.L311
		nop	5
.L310:
		ldw	.d2t1	*+B15(44), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(44)
.L309:
		ldw	.d2t1	*+B15(44), A1
		nop	4
		ldw	.d2t1	*+B15(36), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L312
		nop	5
		mvk	.d1	0, A0
.L311:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(52), B3
		nop	4
		ldw	.d2t2	*+B15(56), B14
		nop	4
		addab	.d2	B15, 56, B15
		ret	.s2	B3
		nop	5
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shr	.s1	A0, 31, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		xor	.d1	A0, A1, A0
		sub	.d1	A0, A1, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(16)
		b	.s2	.L317
		nop	5
.L318:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L317:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mv	.d1	A0, A4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L318
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mvk	.s1	43, A1
		cmpeq	.l1	A1, A0, A1
	[A1]	b	.s2	.L319
		nop	5
		mvk	.s1	45, A1
		cmpeq	.l1	A1, A0, A0
	[!A0]	b	.s2	.L321
		nop	5
		mvk	.d1	1, A0
		stw	.d2t1	A0, *+B15(16)
.L319:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		b	.s2	.L321
		nop	5
.L322:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		mv	.d1	A1, A0
		shl	.s1	A0, 2, A0
		add	.d1	A0, A1, A0
		shl	.s1	A0, 1, A0
		mv	.d1	A0, A2
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(12)
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		sub	.d1	A2, A0, A0
		stw	.d2t1	A0, *+B15(20)
.L321:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
	[!A0]	b	.s2	.L322
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
	[A0]	b	.s2	.L323
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		neg	.l1	A0, A0
		b	.s2	.L325
		nop	5
.L323:
		ldw	.d2t1	*+B15(20), A0
		nop	4
.L325:
	nop
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(16)
		b	.s2	.L328
		nop	5
.L329:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L328:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mv	.d1	A0, A4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L329
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mvk	.s1	43, A1
		cmpeq	.l1	A1, A0, A1
	[A1]	b	.s2	.L330
		nop	5
		mvk	.s1	45, A1
		cmpeq	.l1	A1, A0, A0
	[!A0]	b	.s2	.L332
		nop	5
		mvk	.d1	1, A0
		stw	.d2t1	A0, *+B15(16)
.L330:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		b	.s2	.L332
		nop	5
.L333:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		mv	.d1	A1, A0
		shl	.s1	A0, 2, A0
		add	.d1	A0, A1, A0
		shl	.s1	A0, 1, A0
		mv	.d1	A0, A2
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(12)
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		sub	.d1	A2, A0, A0
		stw	.d2t1	A0, *+B15(20)
.L332:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
	[!A0]	b	.s2	.L333
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
	[A0]	b	.s2	.L334
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		neg	.l1	A0, A0
		b	.s2	.L336
		nop	5
.L334:
		ldw	.d2t1	*+B15(20), A0
		nop	4
.L336:
	nop
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
		subah	.d2	B15, 20, B15
		stw	.d2t2	B14, *+B15(40)
		stw	.d2t2	B3, *+B15(36)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		stdw	.d2t1	A1:A0, *+B15(24)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L339
		nop	5
.L340:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L339:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mv	.d1	A0, A4
		callp	.s2	(isspace), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L340
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mvk	.s1	43, A1
		cmpeq	.l1	A1, A0, A1
	[A1]	b	.s2	.L341
		nop	5
		mvk	.s1	45, A1
		cmpeq	.l1	A1, A0, A0
	[!A0]	b	.s2	.L343
		nop	5
		mvk	.d1	1, A0
		stw	.d2t1	A0, *+B15(20)
.L341:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		b	.s2	.L343
		nop	5
.L344:
		ldw	.d2t2	*+B15(24), B4
		nop	4
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t2	*+B15(28), B2
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		mv	.l1x	B2, A2
		addu	.l1	A0, A0, A1:A0
		add	.d1	A1, A2, A1
		add	.d1	A1, A2, A1
		addu	.l1	A0, A0, A5:A4
		mv	.l2x	A4, B0
		mv	.l2x	A5, B1
		add	.d2x	B1, A1, B1
		add	.d2x	B1, A1, B1
		mv	.l1x	B0, A0
		mv	.l1x	B1, A2
		ldw	.d2t1	*+B15(8), A5
		nop	4
		addu	.l1	A0, A5, A1:A0
		add	.d1	A1, A2, A1
		add	.d1x	A1, B2, A1
		addu	.l1	A0, A0, A5:A4
		mv	.l2x	A4, B0
		mv	.l2x	A5, B1
		add	.d2x	B1, A1, B1
		add	.d2x	B1, A1, B1
		mv	.l1x	B0, A0
		mv	.l1x	B1, A1
		mv	.d1	A0, A2
		mv	.l2x	A1, B1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(12)
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		mv	.l2x	A0, B2
		shr	.s1	A0, 31, A0
		mv	.l2x	A0, B0
		mv	.l1x	B2, A5
		sub	.d1	A2, A5, A1
		cmpltu	.l1	A2, A1, A2
		sub	.d2	B1, B0, B0
		mv	.l1x	B0, A0
		sub	.d1	A0, A2, A0
		stw	.d2t1	A1, *+B15(24)
		stw	.d2t1	A0, *+B15(28)
.L343:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		subah	.d1	A0, 24, A0
		cmpltu	.l1	9, A0, A0
	[!A0]	b	.s2	.L344
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
	[A0]	b	.s2	.L345
		nop	5
		mvk	.d1	0, A2
		mvk	.d2	0, B1
		ldw	.d2t2	*+B15(24), B2
		nop	4
		ldw	.d2t2	*+B15(28), B0
		nop	4
		mv	.l1x	B2, A3
		sub	.d1	A2, A3, A1
		cmpltu	.l1	A2, A1, A2
		sub	.d2	B1, B0, B0
		mv	.l1x	B0, A0
		sub	.d1	A0, A2, A0
		b	.s2	.L347
		nop	5
.L345:
		ldw	.d2t1	*+B15(24), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
.L347:
	nop
		mv	.d1	A1, A4
		mv	.d1	A0, A5
		ldw	.d2t2	*+B15(36), B3
		nop	4
		ldw	.d2t2	*+B15(40), B14
		nop	4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.type	bsearch, @function
bsearch:
		subah	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(48)
		stw	.d2t2	B3, *+B15(44)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(28)
		stw	.d2t2	B4, *+B15(24)
		stw	.d2t1	A6, *+B15(20)
		stw	.d2t2	B6, *+B15(16)
		stw	.d2t1	A8, *+B15(12)
		b	.s2	.L350
		nop	5
.L355:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shru	.s1	A0, 1, A1
		ldw	.d2t1	*+B15(16), A0
		nop	4
		mpy32	.m1	A1, A0, A0
		nop	3
		ldw	.d2t1	*+B15(24), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(36)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d2t2	*+B15(36), B4
		nop	4
		ldw	.d2t1	*+B15(28), A4
		nop	4
		call	.s2x	A0
		addkpc	.s2	.L356, B3, 4
.L356:
		stw	.d2t1	A4, *+B15(32)
		ldw	.d2t1	*+B15(32), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L351
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L350
		nop	5
.L351:
		ldw	.d2t1	*+B15(32), A0
		nop	4
		cmplt	.l1	0, A0, A0
	[!A0]	b	.s2	.L353
		nop	5
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shru	.s1	A0, 1, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		sub	.d1	A1, A0, A0
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L350
		nop	5
.L353:
		ldw	.d2t1	*+B15(36), A0
		nop	4
		b	.s2	.L354
		nop	5
.L350:
		ldw	.d2t1	*+B15(20), A0
		nop	4
	[A0]	b	.s2	.L355
		nop	5
		mvk	.d1	0, A0
.L354:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(44), B3
		nop	4
		ldw	.d2t2	*+B15(48), B14
		nop	4
		addab	.d2	B15, 48, B15
		ret	.s2	B3
		nop	5
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
		subah	.d2	B15, 28, B15
		stw	.d2t2	B14, *+B15(56)
		stw	.d2t2	B3, *+B15(52)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(28)
		stw	.d2t2	B4, *+B15(24)
		stw	.d2t1	A6, *+B15(20)
		stw	.d2t2	B6, *+B15(16)
		stw	.d2t1	A8, *+B15(12)
		stw	.d2t2	B8, *+B15(8)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		stw	.d2t1	A0, *+B15(44)
		b	.s2	.L358
		nop	5
.L362:
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shr	.s1	A0, 1, A1
		ldw	.d2t1	*+B15(16), A0
		nop	4
		mpy32	.m1	A1, A0, A0
		nop	3
		ldw	.d2t1	*+B15(24), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(40)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d2t1	*+B15(8), A6
		nop	4
		ldw	.d2t2	*+B15(40), B4
		nop	4
		ldw	.d2t1	*+B15(28), A4
		nop	4
		call	.s2x	A0
		addkpc	.s2	.L363, B3, 4
.L363:
		stw	.d2t1	A4, *+B15(36)
		ldw	.d2t1	*+B15(36), A0
		nop	4
	[A0]	b	.s2	.L359
		nop	5
		ldw	.d2t1	*+B15(40), A0
		nop	4
		b	.s2	.L360
		nop	5
.L359:
		ldw	.d2t1	*+B15(36), A0
		nop	4
		cmplt	.l1	0, A0, A0
	[!A0]	b	.s2	.L361
		nop	5
		ldw	.d2t1	*+B15(40), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(44), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(44)
.L361:
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shr	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(44)
.L358:
		ldw	.d2t1	*+B15(44), A0
		nop	4
	[A0]	b	.s2	.L362
		nop	5
		mvk	.d1	0, A0
.L360:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(52), B3
		nop	4
		ldw	.d2t2	*+B15(56), B14
		nop	4
		addab	.d2	B15, 56, B15
		ret	.s2	B3
		nop	5
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
		subah	.d2	B15, 20, B15
		stw	.d2t2	B3, *+B15(40)
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L366, B3, 4
.L366:
		mv	.d1	A4, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L367, B3, 4
.L367:
		mv	.d1	A5, A0
		ldw	.d2t2	*+B15(12), B4
		nop	4
		stw	.d2t2	B4, *+B15(32)
		stw	.d2t1	A0, *+B15(36)
		mvk	.d1	0, A1
		ldw	.d2t1	*+B15(32), A1
		nop	4
		mvk	.d1	0, A0
		ldw	.d2t1	*+B15(36), A0
		nop	4
		mv	.d1	A1, A4
		mv	.d1	A0, A5
		ldw	.d2t2	*+B15(40), B3
		nop	4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
		sub	.d2	B15, 16, B15
		stdw	.d2t1	A5:A4, *+B15(8)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shr	.s2x	A0, 31, B2
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shr	.s2x	A0, 31, B1
		ldw	.d2t1	*+B15(8), A0
		nop	4
		xor	.d1x	A0, B2, A0
		ldw	.d2t1	*+B15(12), A1
		nop	4
		xor	.d1x	A1, B1, A1
		sub	.l2x	A0, B2, B0
		cmpltu	.l1x	A0, B0, A0
		mv	.l1x	B1, A3
		sub	.d1	A1, A3, A2
		sub	.d1	A2, A0, A0
		mv	.d1	A0, A2
		mv	.l1x	B0, A0
		mv	.d1	A2, A1
		mv	.d1	A0, A4
		mv	.d1	A1, A5
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
		subah	.d2	B15, 28, B15
		stw	.d2t2	B14, *+B15(56)
		stw	.d2t2	B3, *+B15(52)
		stw	.d2t1	A10, *+B15(48)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A3, A10
		stdw	.d2t1	A5:A4, *+B15(24)
		stdw	.d2t2	B5:B4, *+B15(16)
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		lddw	.d2t1	*+B15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_divlli), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d2t1	A1:A0, *+B15(8)
		lddw	.d2t1	*+B15(24), A1:A0
		nop	4
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_remlli), B3
		dmv	.s1	A5, A4, A1:A0
		lddw	.d2t1	*+B15(8), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *A10
		stdw	.d1t1	A1:A0, *+A10(8)
		mv	.d1	A10, A4
		ldw	.d2t1	*+B15(48), A10
		nop	4
		ldw	.d2t2	*+B15(52), B3
		nop	4
		ldw	.d2t2	*+B15(56), B14
		nop	4
		addab	.d2	B15, 56, B15
		ret	.s2	B3
		nop	5
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shr	.s1	A0, 31, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		xor	.d1	A0, A1, A0
		sub	.d1	A0, A1, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
		subah	.d2	B15, 20, B15
		stw	.d2t2	B3, *+B15(40)
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L378, B3, 4
.L378:
		mv	.d1	A4, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L379, B3, 4
.L379:
		mv	.d1	A5, A0
		ldw	.d2t2	*+B15(12), B4
		nop	4
		stw	.d2t2	B4, *+B15(32)
		stw	.d2t1	A0, *+B15(36)
		mvk	.d1	0, A1
		ldw	.d2t1	*+B15(32), A1
		nop	4
		mvk	.d1	0, A0
		ldw	.d2t1	*+B15(36), A0
		nop	4
		mv	.d1	A1, A4
		mv	.d1	A0, A5
		ldw	.d2t2	*+B15(40), B3
		nop	4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
		sub	.d2	B15, 16, B15
		stdw	.d2t1	A5:A4, *+B15(8)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shr	.s2x	A0, 31, B2
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shr	.s2x	A0, 31, B1
		ldw	.d2t1	*+B15(8), A0
		nop	4
		xor	.d1x	A0, B2, A0
		ldw	.d2t1	*+B15(12), A1
		nop	4
		xor	.d1x	A1, B1, A1
		sub	.l2x	A0, B2, B0
		cmpltu	.l1x	A0, B0, A0
		mv	.l1x	B1, A3
		sub	.d1	A1, A3, A2
		sub	.d1	A2, A0, A0
		mv	.d1	A0, A2
		mv	.l1x	B0, A0
		mv	.d1	A2, A1
		mv	.d1	A0, A4
		mv	.d1	A1, A5
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
		subah	.d2	B15, 28, B15
		stw	.d2t2	B14, *+B15(56)
		stw	.d2t2	B3, *+B15(52)
		stw	.d2t1	A10, *+B15(48)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		mv	.d1	A3, A10
		stdw	.d2t1	A5:A4, *+B15(24)
		stdw	.d2t2	B5:B4, *+B15(16)
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		lddw	.d2t1	*+B15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_divlli), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d2t1	A1:A0, *+B15(8)
		lddw	.d2t1	*+B15(24), A1:A0
		nop	4
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_remlli), B3
		dmv	.s1	A5, A4, A1:A0
		lddw	.d2t1	*+B15(8), A5:A4
		nop	4
		stdw	.d1t1	A5:A4, *A10
		stdw	.d1t1	A1:A0, *+A10(8)
		mv	.d1	A10, A4
		ldw	.d2t1	*+B15(48), A10
		nop	4
		ldw	.d2t2	*+B15(52), B3
		nop	4
		ldw	.d2t2	*+B15(56), B14
		nop	4
		addab	.d2	B15, 56, B15
		ret	.s2	B3
		nop	5
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		b	.s2	.L387
		nop	5
.L389:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d2t1	A0, *+B15(12)
.L387:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L388
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		ldw	.d2t1	*+B15(8), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L389
		nop	5
.L388:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L390
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		b	.s2	.L392
		nop	5
.L390:
		mvk	.d1	0, A0
.L392:
	nop
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		b	.s2	.L394
		nop	5
.L396:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d2t1	A0, *+B15(8)
.L394:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L395
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L395
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[A0]	b	.s2	.L396
		nop	5
.L395:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpgt	.l1	A0, A1, A0
	[A0]	b	.s2	.L397
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmplt	.l1	A0, A1, A0
		extu	.s1	A0, 24, 24, A0
		b	.s2	.L399
		nop	5
.L397:
		mvk	.d1	-1, A0
.L399:
	nop
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		stw	.d2t1	A0, *+B15(20)
.L401:
		ldw	.d2t1	*+B15(8), A1
		nop	4
		add	.d1	A1, 4, A0
		stw	.d2t1	A0, *+B15(8)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 4, A2
		stw	.d2t1	A2, *+B15(20)
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d1t1	*A0, A0
		nop	4
	[A0]	b	.s2	.L401
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L404
		nop	5
.L405:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d2t1	A0, *+B15(20)
.L404:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[A0]	b	.s2	.L405
		nop	5
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A1, A0, A0
		shr	.s1	A0, 2, A0
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		b	.s2	.L408
		nop	5
.L410:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d2t1	A0, *+B15(16)
.L408:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L409
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L409
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[!A0]	b	.s2	.L409
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
	[A0]	b	.s2	.L410
		nop	5
.L409:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L411
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpgt	.l1	A0, A1, A0
	[A0]	b	.s2	.L412
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmplt	.l1	A0, A1, A0
		extu	.s1	A0, 24, 24, A0
		b	.s2	.L415
		nop	5
.L412:
		mvk	.d1	-1, A0
		b	.s2	.L415
		nop	5
.L411:
		mvk	.d1	0, A0
.L415:
	nop
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		b	.s2	.L417
		nop	5
.L419:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d2t1	A0, *+B15(20)
.L417:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L418
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		ldw	.d2t1	*+B15(16), A1
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L419
		nop	5
.L418:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L420
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		b	.s2	.L422
		nop	5
.L420:
		mvk	.d1	0, A0
.L422:
	nop
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		b	.s2	.L424
		nop	5
.L426:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 4, A0
		stw	.d2t1	A0, *+B15(16)
.L424:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L425
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L426
		nop	5
.L425:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L427
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmpgt	.l1	A0, A1, A0
	[A0]	b	.s2	.L428
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldw	.d1t1	*A0, A0
		nop	4
		cmplt	.l1	A0, A1, A0
		extu	.s1	A0, 24, 24, A0
		b	.s2	.L431
		nop	5
.L428:
		mvk	.d1	-1, A0
		b	.s2	.L431
		nop	5
.L427:
		mvk	.d1	0, A0
.L431:
	nop
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L433
		nop	5
.L434:
		ldw	.d2t1	*+B15(16), A1
		nop	4
		add	.d1	A1, 4, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		add	.d1	A0, 4, A2
		stw	.d2t1	A2, *+B15(28)
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
.L433:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(12)
	[A0]	b	.s2	.L434
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L437
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		b	.s2	.L438
		nop	5
.L437:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		sub	.d1	A1, A0, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A0, 2, A0
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L439
		nop	5
		b	.s2	.L440
		nop	5
.L441:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A0, 2, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(12), A1
		nop	4
		shl	.s1	A1, 2, A1
		ldw	.d2t1	*+B15(16), A2
		nop	4
		add	.d1	A2, A1, A1
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
.L440:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(12)
	[A0]	b	.s2	.L441
		nop	5
		b	.s2	.L442
		nop	5
.L439:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L443
		nop	5
.L444:
		ldw	.d2t1	*+B15(16), A1
		nop	4
		add	.d1	A1, 4, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		add	.d1	A0, 4, A2
		stw	.d2t1	A2, *+B15(28)
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
.L443:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(12)
	[A0]	b	.s2	.L444
		nop	5
.L442:
		ldw	.d2t1	*+B15(20), A0
		nop	4
.L438:
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L446
		nop	5
.L447:
		ldw	.d2t1	*+B15(28), A0
		nop	4
		add	.d1	A0, 4, A1
		stw	.d2t1	A1, *+B15(28)
		ldw	.d2t1	*+B15(16), A1
		nop	4
		stw	.d1t1	A1, *A0
.L446:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(12)
	[A0]	b	.s2	.L447
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L450
		nop	5
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(24)
		b	.s2	.L451
		nop	5
.L452:
		ldw	.d2t1	*+B15(28), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(24), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(24), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L451:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L452
		nop	5
		b	.s2	.L456
		nop	5
.L450:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpeq	.l1	A0, A1, A0
	[A0]	b	.s2	.L456
		nop	5
		b	.s2	.L454
		nop	5
.L455:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		add	.d1	A1, 1, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 1, A2
		stw	.d2t1	A2, *+B15(16)
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L454:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L455
		nop	5
.L456:
	nop
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
		sub	.d2	B15, 24, B15
		stdw	.d2t1	A5:A4, *+B15(16)
		stw	.d2t2	B4, *+B15(12)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldw	.d2t1	*+B15(20), A2
		nop	4
		ldw	.d2t1	*+B15(12), A1
		nop	4
		subah	.d1	A1, 16, A1
		cmpgt	.l2x	0, A1, B0
	[B0]	b	.s2	.L458
		nop	5
		shl	.s1	A0, A1, A1
		mvk	.d2	0, B1
		b	.s2	.L459
		nop	5
.L458:
		shru	.s2x	A0, 1, B0
		mvk	.s2	31, B1
		ldw	.d2t1	*+B15(12), A1
		nop	4
		sub	.l1x	B1, A1, A1
		mv	.l2x	A1, B4
		shru	.s2	B0, B4, B0
		ldw	.d2t1	*+B15(12), A1
		nop	4
		shl	.s1	A2, A1, A1
		or	.d1x	A1, B0, A1
		ldw	.d2t2	*+B15(12), B0
		nop	4
		shl	.s2x	A0, B0, B1
.L459:
		ldw	.d2t2	*+B15(12), B0
		nop	4
		neg	.l2	B0, B0
		clr	.s2	B0, 6, 31, B0
		subah	.d2	B0, 16, B0
		cmpgt	.l2	0, B0, B2
	[B2]	b	.s2	.L460
		nop	5
		mv	.l1x	B0, A3
		shru	.s1	A2, A3, A0
		mvk	.d1	0, A2
		b	.s2	.L461
		nop	5
.L460:
		shl	.s2x	A2, 1, B2
		mvk	.s2	31, B0
		stw	.d2t2	B0, *+B15(8)
		ldw	.d2t2	*+B15(12), B0
		nop	4
		neg	.l2	B0, B0
		clr	.s2	B0, 6, 31, B0
		ldw	.d2t2	*+B15(8), B4
		nop	4
		sub	.d2	B4, B0, B0
		shl	.s2	B2, B0, B2
		ldw	.d2t2	*+B15(12), B0
		nop	4
		neg	.l2	B0, B0
		clr	.s2	B0, 6, 31, B0
		mv	.l1x	B0, A3
		shru	.s1	A0, A3, A0
		or	.d1x	A0, B2, A0
		ldw	.d2t2	*+B15(12), B0
		nop	4
		neg	.l2	B0, B0
		clr	.s2	B0, 6, 31, B0
		mv	.l1x	B0, A3
		shru	.s1	A2, A3, A2
.L461:
		or	.d1x	A0, B1, A0
		or	.d1	A1, A2, A1
		mv	.d1	A1, A2
		mv	.d1	A0, A4
		mv	.d1	A2, A5
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
		sub	.d2	B15, 24, B15
		stdw	.d2t1	A5:A4, *+B15(16)
		stw	.d2t2	B4, *+B15(12)
		ldw	.d2t1	*+B15(16), A2
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldw	.d2t1	*+B15(12), A1
		nop	4
		subah	.d1	A1, 16, A1
		cmpgt	.l2x	0, A1, B0
	[B0]	b	.s2	.L464
		nop	5
		shru	.s1	A0, A1, A1
		mvk	.d2	0, B1
		b	.s2	.L465
		nop	5
.L464:
		shl	.s2x	A0, 1, B0
		mvk	.s2	31, B1
		ldw	.d2t1	*+B15(12), A1
		nop	4
		sub	.l1x	B1, A1, A1
		mv	.l2x	A1, B4
		shl	.s2	B0, B4, B0
		ldw	.d2t1	*+B15(12), A1
		nop	4
		shru	.s1	A2, A1, A1
		or	.d1x	A1, B0, A1
		ldw	.d2t2	*+B15(12), B0
		nop	4
		shru	.s2x	A0, B0, B1
.L465:
		ldw	.d2t2	*+B15(12), B0
		nop	4
		neg	.l2	B0, B0
		clr	.s2	B0, 6, 31, B0
		subah	.d2	B0, 16, B0
		cmpgt	.l2	0, B0, B2
	[B2]	b	.s2	.L466
		nop	5
		mv	.l1x	B0, A3
		shl	.s1	A2, A3, A0
		mvk	.d1	0, A2
		b	.s2	.L467
		nop	5
.L466:
		shru	.s2x	A2, 1, B2
		mvk	.s2	31, B0
		stw	.d2t2	B0, *+B15(8)
		ldw	.d2t2	*+B15(12), B0
		nop	4
		neg	.l2	B0, B0
		clr	.s2	B0, 6, 31, B0
		ldw	.d2t2	*+B15(8), B4
		nop	4
		sub	.d2	B4, B0, B0
		shru	.s2	B2, B0, B2
		ldw	.d2t2	*+B15(12), B0
		nop	4
		neg	.l2	B0, B0
		clr	.s2	B0, 6, 31, B0
		mv	.l1x	B0, A3
		shl	.s1	A0, A3, A0
		or	.d1x	A0, B2, A0
		ldw	.d2t2	*+B15(12), B0
		nop	4
		neg	.l2	B0, B0
		clr	.s2	B0, 6, 31, B0
		mv	.l1x	B0, A3
		shl	.s1	A2, A3, A2
.L467:
		or	.d1	A1, A2, A1
		or	.d1x	A0, B1, A0
		mv	.d1	A1, A2
		mv	.d1	A2, A4
		mv	.d1	A0, A5
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.type	rotl32, @function
rotl32:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		rotl	.m1	A1, A0, A0
		nop	1
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.type	rotr32, @function
rotr32:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		mvk	.s1	32, A1
		ldw	.d2t1	*+B15(8), A0
		nop	4
		sub	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(12), A1
		nop	4
		rotl	.m1	A1, A0, A0
		nop	1
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		rotl	.m1	A1, A0, A0
		nop	1
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		mvk	.s1	32, A1
		ldw	.d2t1	*+B15(8), A0
		nop	4
		sub	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(12), A1
		nop	4
		rotl	.m1	A1, A0, A0
		nop	1
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.type	rotl16, @function
rotl16:
		sub	.d2	B15, 16, B15
		sth	.d2t1	A4, *+B15(14)
		stw	.d2t2	B4, *+B15(8)
		ldhu	.d2t1	*+B15(14), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shl	.s1	A1, A0, A0
		mv	.l2x	A0, B0
		ldhu	.d2t1	*+B15(14), A1
		nop	4
		mvk	.s1	16, A2
		ldw	.d2t1	*+B15(8), A0
		nop	4
		sub	.d1	A2, A0, A0
		shru	.s1	A1, A0, A0
		or	.d1x	A0, B0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
		sub	.d2	B15, 16, B15
		sth	.d2t1	A4, *+B15(14)
		stw	.d2t2	B4, *+B15(8)
		ldhu	.d2t1	*+B15(14), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shru	.s1	A1, A0, A0
		mv	.l2x	A0, B0
		ldhu	.d2t1	*+B15(14), A1
		nop	4
		mvk	.s1	16, A2
		ldw	.d2t1	*+B15(8), A0
		nop	4
		sub	.d1	A2, A0, A0
		shl	.s1	A1, A0, A0
		or	.d1x	A0, B0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
		sub	.d2	B15, 16, B15
		stb	.d2t1	A4, *+B15(15)
		stw	.d2t2	B4, *+B15(8)
		ldbu	.d2t1	*+B15(15), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shl	.s1	A1, A0, A0
		mv	.d1	A0, A2
		ldbu	.d2t1	*+B15(15), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		sub	.l1	8, A0, A0
		shru	.s1	A1, A0, A0
		or	.d1	A0, A2, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
		sub	.d2	B15, 16, B15
		stb	.d2t1	A4, *+B15(15)
		stw	.d2t2	B4, *+B15(8)
		ldbu	.d2t1	*+B15(15), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shru	.s1	A1, A0, A0
		mv	.d1	A0, A2
		ldbu	.d2t1	*+B15(15), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		sub	.l1	8, A0, A0
		shl	.s1	A1, A0, A0
		or	.d1	A0, A2, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
		sub	.d2	B15, 24, B15
		sth	.d2t1	A4, *+B15(14)
		mvk	.s1	255, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shl	.s1	A0, 8, A0
		ldhu	.d2t1	*+B15(14), A1
		nop	4
		and	.d1	A0, A1, A0
		shru	.s1	A0, 8, A1
		ldw	.d2t1	*+B15(20), A2
		nop	4
		ldh	.d2t1	*+B15(14), A0
		nop	4
		and	.d1	A2, A0, A0
		shl	.s1	A0, 8, A0
		or	.d1	A0, A1, A0
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		mvk	.s1	255, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shl	.s1	A0, 24, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		and	.d1	A0, A1, A0
		shru	.s1	A0, 24, A1
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shl	.s1	A0, 16, A2
		ldw	.d2t1	*+B15(12), A0
		nop	4
		and	.d1	A0, A2, A0
		shru	.s1	A0, 8, A0
		or	.d1	A0, A1, A1
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shl	.s1	A0, 8, A2
		ldw	.d2t1	*+B15(12), A0
		nop	4
		and	.d1	A0, A2, A0
		shl	.s1	A0, 8, A0
		or	.d1	A0, A1, A1
		ldw	.d2t1	*+B15(12), A2
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		and	.d1	A0, A2, A0
		shl	.s1	A0, 24, A0
		or	.d1	A0, A1, A0
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
		sub	.d2	B15, 24, B15
		stdw	.d2t1	A5:A4, *+B15(8)
		mvk	.s1	255, A0
		mvk	.d1	0, A1
		stdw	.d2t1	A1:A0, *+B15(16)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shl	.s1	A0, 24, A0
		ldw	.d2t1	*+B15(12), A1
		nop	4
		and	.d1	A0, A1, A0
		shru	.s2x	A0, 24, B0
		mvk	.d1	0, A1
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shl	.s1	A0, 16, A0
		ldw	.d2t1	*+B15(12), A2
		nop	4
		and	.d1	A0, A2, A0
		shru	.s1	A0, 8, A2
		mvk	.d1	0, A0
		or	.d2x	B0, A2, B0
		or	.d1	A0, A1, A2
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shl	.s1	A0, 8, A1
		mvk	.d1	0, A0
		ldw	.d2t2	*+B15(8), B1
		nop	4
		and	.d1x	A0, B1, A0
		ldw	.d2t2	*+B15(12), B1
		nop	4
		and	.d1x	A1, B1, A1
		shl	.s2x	A1, 8, B1
		shru	.s1	A0, 24, A0
		or	.d1x	A0, B1, A0
		shru	.s1	A1, 24, A1
		or	.d2x	B0, A0, B0
		or	.d1	A1, A2, A2
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shl	.s1	A0, 0, A1
		mvk	.d1	0, A0
		ldw	.d2t2	*+B15(8), B1
		nop	4
		and	.d1x	A0, B1, A0
		ldw	.d2t2	*+B15(12), B1
		nop	4
		and	.d1x	A1, B1, A1
		shl	.s2x	A1, 24, B1
		shru	.s1	A0, 8, A0
		or	.d1x	A0, B1, A0
		shru	.s1	A1, 8, A1
		or	.d2x	B0, A0, B0
		or	.d1	A1, A2, A2
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shru	.s1	A0, 8, A1
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shl	.s1	A0, 24, A0
		or	.d1	A0, A1, A0
		ldw	.d2t1	*+B15(16), A1
		nop	4
		shl	.s1	A1, 24, A1
		ldw	.d2t2	*+B15(8), B1
		nop	4
		and	.d1x	A1, B1, A1
		ldw	.d2t2	*+B15(12), B1
		nop	4
		and	.d1x	A0, B1, A0
		shlmb	.l1	A1, A0, A0
		shl	.s1	A1, 8, A1
		or	.d2x	B0, A1, B0
		or	.d1	A0, A2, A2
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shru	.s1	A0, 16, A1
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shl	.s1	A0, 16, A0
		or	.d1	A0, A1, A0
		ldw	.d2t1	*+B15(16), A1
		nop	4
		shl	.s1	A1, 16, A1
		ldw	.d2t2	*+B15(8), B1
		nop	4
		and	.d1x	A1, B1, A1
		ldw	.d2t2	*+B15(12), B1
		nop	4
		and	.d1x	A0, B1, A0
		shru	.s2x	A1, 8, B1
		shl	.s1	A0, 24, A0
		or	.d1x	A0, B1, A0
		shl	.s1	A1, 24, A1
		or	.d2x	B0, A1, B0
		or	.d1	A0, A2, A1
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shl	.s1	A0, 8, A0
		ldw	.d2t1	*+B15(8), A2
		nop	4
		and	.d1	A0, A2, A0
		shl	.s1	A0, 8, A0
		mvk	.d1	0, A2
		or	.d2x	B0, A2, B0
		or	.d1	A0, A1, A1
		ldw	.d2t1	*+B15(8), A2
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		and	.d1	A0, A2, A0
		shl	.s1	A0, 24, A0
		mvk	.d1	0, A2
		or	.d1x	A2, B0, A2
		or	.d1	A0, A1, A0
		mv	.d1	A2, A4
		mv	.d1	A0, A5
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L492
		nop	5
.L495:
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shru	.s1	A1, A0, A0
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L493
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		b	.s2	.L494
		nop	5
.L493:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
.L492:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmpltu	.l1	31, A0, A0
	[!A0]	b	.s2	.L495
		nop	5
		mvk	.d1	0, A0
.L494:
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
		sub	.d2	B15, 8, B15
		stw	.d2t1	A10, *+B15(8)
		mv	.d1	A4, A0
	[A0]	b	.s2	.L497
		nop	5
		mvk	.d1	0, A10
		b	.s2	.L498
		nop	5
.L497:
		mvk	.d1	1, A10
		b	.s2	.L499
		nop	5
.L500:
		shr	.s1	A0, 1, A0
		add	.d1	A10, 1, A10
.L499:
		and	.d1	1, A0, A1
	[!A1]	b	.s2	.L500
		nop	5
	nop
.L498:
		mv	.d1	A10, A4
		ldw	.d2t1	*+B15(8), A10
		nop	4
		add	.d2	B15, 8, B15
		ret	.s2	B3
		nop	5
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mvk	.d1	-1, A3
		mvklh	.s1	65407, A3
		mv	.l2x	A3, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L502
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mvk	.d1	-1, A3
		mvklh	.s1	32639, A3
		mv	.l2x	A3, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L507
		nop	5
.L502:
		mvk	.d1	1, A0
		b	.s2	.L506
		nop	5
.L507:
		mvk	.d1	0, A0
.L506:
	nop
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(8)
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		mvk	.d1	-1, A4
		mvk	.d1	-1, A5
		mvklh	.s1	65519, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L511
		nop	5
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		mvk	.d1	-1, A4
		mvk	.d1	-1, A5
		mvklh	.s1	32751, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L516
		nop	5
.L511:
		mvk	.d1	1, A0
		b	.s2	.L515
		nop	5
.L516:
		mvk	.d1	0, A0
.L515:
	nop
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(8)
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		mvk	.d1	-1, A4
		mvk	.d1	-1, A5
		mvklh	.s1	65519, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L520
		nop	5
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		mvk	.d1	-1, A4
		mvk	.d1	-1, A5
		mvklh	.s1	32751, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L525
		nop	5
.L520:
		mvk	.d1	1, A0
		b	.s2	.L524
		nop	5
.L525:
		mvk	.d1	0, A0
.L524:
	nop
		mv	.d1	A0, A4
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
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(8), A4
		nop	4
		callp	.s2	(__c6xabi_fltid), B3
		dmv	.s1	A5, A4, A1:A0
		ldw	.d2t1	*+B15(12), A2
		nop	4
		stdw	.d1t1	A1:A0, *A2
	nop
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t2	*+B15(12), B4
		nop	4
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__c6xabi_unordf), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L531
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mv	.l2x	A0, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_addf), B3
		mv	.d1	A4, A0
		mv	.d1	A0, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_eqf), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L531
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L532
		nop	5
		mvk	.d1	0, A0
		mvklh	.s1	16128, A0
		b	.s2	.L533
		nop	5
.L532:
		mvk	.d1	0, A0
		mvklh	.s1	16384, A0
.L533:
		stw	.d2t1	A0, *+B15(20)
.L536:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L534
		nop	5
		ldw	.d2t2	*+B15(20), B4
		nop	4
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A0
		stw	.d2t1	A0, *+B15(12)
.L534:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shru	.s1	A0, 31, A1
		add	.d1	A1, A0, A0
		shr	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(8)
		ldw	.d2t1	*+B15(8), A0
		nop	4
	[!A0]	b	.s2	.L538
		nop	5
		ldw	.d2t2	*+B15(20), B4
		nop	4
		ldw	.d2t1	*+B15(20), A4
		nop	4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L536
		nop	5
.L538:
	nop
.L531:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
		subah	.d2	B15, 20, B15
		stw	.d2t2	B14, *+B15(40)
		stw	.d2t2	B3, *+B15(36)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stw	.d2t2	B4, *+B15(12)
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L545
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		mv	.l2x	A0, B4
		mv	.l2x	A1, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		dmv	.s1	A5, A4, A1:A0
		mv	.l2x	A0, B0
		mv	.l2x	A1, B1
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L545
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L546
		nop	5
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mvklh	.s1	16352, A1
		b	.s2	.L547
		nop	5
.L546:
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mvklh	.s1	16384, A1
.L547:
		stdw	.d2t1	A1:A0, *+B15(24)
.L550:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L548
		nop	5
		lddw	.d2t2	*+B15(24), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d2t1	A1:A0, *+B15(16)
.L548:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 31, A1
		add	.d1	A1, A0, A0
		shr	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L552
		nop	5
		lddw	.d2t2	*+B15(24), B5:B4
		nop	4
		lddw	.d2t1	*+B15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d2t1	A1:A0, *+B15(24)
		b	.s2	.L550
		nop	5
.L552:
	nop
.L545:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(36), B3
		nop	4
		ldw	.d2t2	*+B15(40), B14
		nop	4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
		subah	.d2	B15, 20, B15
		stw	.d2t2	B14, *+B15(40)
		stw	.d2t2	B3, *+B15(36)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stw	.d2t2	B4, *+B15(12)
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_unordd), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L559
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		mv	.l2x	A0, B4
		mv	.l2x	A1, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		dmv	.s1	A5, A4, A1:A0
		mv	.l2x	A0, B0
		mv	.l2x	A1, B1
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L559
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L560
		nop	5
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mvklh	.s1	16352, A1
		b	.s2	.L561
		nop	5
.L560:
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mvklh	.s1	16384, A1
.L561:
		stdw	.d2t1	A1:A0, *+B15(24)
.L564:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L562
		nop	5
		lddw	.d2t2	*+B15(24), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d2t1	A1:A0, *+B15(16)
.L562:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 31, A1
		add	.d1	A1, A0, A0
		shr	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L566
		nop	5
		lddw	.d2t2	*+B15(24), B5:B4
		nop	4
		lddw	.d2t1	*+B15(24), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d2t1	A1:A0, *+B15(24)
		b	.s2	.L564
		nop	5
.L566:
	nop
.L559:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(36), B3
		nop	4
		ldw	.d2t2	*+B15(40), B14
		nop	4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L573
		nop	5
.L574:
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(16)
		ldb	.d1t1	*A0, A2
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(28)
		ldb	.d1t1	*A0, A1
		nop	4
		xor	.d1	A1, A2, A1
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L573:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L574
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
		subah	.d2	B15, 20, B15
		stw	.d2t2	B14, *+B15(40)
		stw	.d2t2	B3, *+B15(36)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(20), A4
		nop	4
		callp	.s2	(strlen), B3
		mv	.d1	A4, A1
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L577
		nop	5
.L579:
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L577:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L578
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(28), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L579
		nop	5
.L578:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L580
		nop	5
		ldw	.d2t1	*+B15(28), A0
		nop	4
		mvk	.d1	0, A1
		stb	.d1t1	A1, *A0
.L580:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(36), B3
		nop	4
		ldw	.d2t2	*+B15(40), B14
		nop	4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L584
		nop	5
.L589:
	nop
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
.L584:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L585
		nop	5
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A1, A0, A0
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L589
		nop	5
.L585:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		b	.s2	.L591
		nop	5
.L595:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L592
		nop	5
.L594:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(20)
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A1, 24, A1
		shr	.s1	A1, 24, A1
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L592
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		b	.s2	.L593
		nop	5
.L592:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L594
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L591:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L595
		nop	5
		mvk	.d1	0, A0
.L593:
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
		sub	.d2	B15, 24, B15
		mv	.d1	A4, A1
		stw	.d2t2	B4, *+B15(12)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
.L598:
		ldb	.d1t1	*A1, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		ldw	.d2t1	*+B15(12), A2
		nop	4
		cmpeq	.l1	A0, A2, A0
	[!A0]	b	.s2	.L597
		nop	5
		stw	.d2t1	A1, *+B15(20)
.L597:
		mv	.d1	A1, A0
		add	.d1	A0, 1, A1
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L598
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(8), A4
		nop	4
		callp	.s2	(strlen), B3
		stw	.d2t1	A4, *+B15(20)
		ldw	.d2t1	*+B15(20), A0
		nop	4
	[A0]	b	.s2	.L603
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		b	.s2	.L602
		nop	5
.L605:
		ldw	.d2t1	*+B15(20), A6
		nop	4
		ldw	.d2t2	*+B15(8), B4
		nop	4
		ldw	.d2t1	*+B15(16), A4
		nop	4
		callp	.s2	(strncmp), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L604
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		b	.s2	.L602
		nop	5
.L604:
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
.L603:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		mv	.l2x	A0, B4
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(strchr), B3
		stw	.d2t1	A4, *+B15(16)
		ldw	.d2t1	*+B15(16), A0
		nop	4
	[A0]	b	.s2	.L605
		nop	5
		mvk	.d1	0, A0
.L602:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
		subah	.d2	B15, 20, B15
		stw	.d2t2	B14, *+B15(40)
		stw	.d2t2	B3, *+B15(36)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(24)
		stdw	.d2t2	B5:B4, *+B15(16)
		lddw	.d2t1	*+B15(24), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L610
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L612
		nop	5
.L610:
		lddw	.d2t1	*+B15(24), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L613
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L613
		nop	5
.L612:
		ldw	.d2t2	*+B15(24), B4
		nop	4
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(28), A1
		nop	4
		mvk	.d1	0, A0
		mvklh	.s1	32768, A0
		xor	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(12)
		b	.s2	.L616
		nop	5
.L613:
		lddw	.d2t2	*+B15(24), B5:B4
		nop	4
		stdw	.d2t2	B5:B4, *+B15(8)
.L616:
		lddw	.d2t1	*+B15(8), A5:A4
		nop	4
		ldw	.d2t2	*+B15(36), B3
		nop	4
		ldw	.d2t2	*+B15(40), B14
		nop	4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
		subah	.d2	B15, 20, B15
		stw	.d2t2	B14, *+B15(40)
		stw	.d2t2	B3, *+B15(36)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		stw	.d2t2	B6, *+B15(8)
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		sub	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(8), A0
		nop	4
	[A0]	b	.s2	.L624
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		b	.s2	.L625
		nop	5
.L624:
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
		extu	.s1	A0, 24, 24, A0
	[!A0]	b	.s2	.L627
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L625
		nop	5
.L629:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		ldb	.d1t1	*A0, A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldb	.d1t1	*A0, A0
		nop	4
		shl	.s1	A1, 24, A1
		shr	.s1	A1, 24, A1
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		cmpeq	.l1	A0, A1, A0
	[!A0]	b	.s2	.L628
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A3
		ldw	.d2t1	*+B15(8), A0
		nop	4
		sub	.d1	A0, 1, A4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A0, 1, A0
		mv	.d1	A4, A6
		mv	.l2x	A0, B4
		mv	.d1	A3, A4
		callp	.s2	(memcmp), B3
		mv	.d1	A4, A0
	[A0]	b	.s2	.L628
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		b	.s2	.L625
		nop	5
.L628:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
.L627:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L629
		nop	5
		mvk	.d1	0, A0
.L625:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(36), B3
		nop	4
		ldw	.d2t2	*+B15(40), B14
		nop	4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(12), A6
		nop	4
		ldw	.d2t2	*+B15(16), B4
		nop	4
		ldw	.d2t1	*+B15(20), A4
		nop	4
		callp	.s2	(memcpy), B3
		mv	.d1	A4, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, @function
frexp:
		subah	.d2	B15, 28, B15
		stw	.d2t2	B14, *+B15(56)
		stw	.d2t2	B3, *+B15(52)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(32)
		stw	.d2t2	B4, *+B15(28)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(40)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(44)
		lddw	.d2t1	*+B15(32), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L635
		nop	5
		ldw	.d2t2	*+B15(32), B4
		nop	4
		stw	.d2t2	B4, *+B15(16)
		ldw	.d2t1	*+B15(36), A1
		nop	4
		mvk	.d1	0, A0
		mvklh	.s1	32768, A0
		xor	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(20)
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		stdw	.d2t2	B5:B4, *+B15(32)
		mvk	.d1	1, A0
		stw	.d2t1	A0, *+B15(44)
.L635:
		lddw	.d2t1	*+B15(32), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16368, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L650
		nop	5
		b	.s2	.L639
		nop	5
.L640:
		ldw	.d2t1	*+B15(40), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(40)
		mvk	.d2	0, B4
		mvk	.d2	0, B5
		mvklh	.s2	16384, B5
		lddw	.d2t1	*+B15(32), A5:A4
		nop	4
		callp	.s2	(__c6xabi_divd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d2t1	A1:A0, *+B15(32)
.L639:
		lddw	.d2t1	*+B15(32), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16368, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ged), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L640
		nop	5
		b	.s2	.L641
		nop	5
.L650:
		lddw	.d2t1	*+B15(32), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16352, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L641
		nop	5
		lddw	.d2t1	*+B15(32), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_eqd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L641
		nop	5
		b	.s2	.L643
		nop	5
.L644:
		ldw	.d2t1	*+B15(40), A0
		nop	4
		sub	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(40)
		lddw	.d2t1	*+B15(32), A1:A0
		nop	4
		mv	.l2x	A0, B4
		mv	.l2x	A1, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_addd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d2t1	A1:A0, *+B15(32)
.L643:
		lddw	.d2t1	*+B15(32), A1:A0
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16352, A5
		mv	.l2x	A4, B4
		mv	.l2x	A5, B5
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[A1]	b	.s2	.L644
		nop	5
.L641:
		ldw	.d2t1	*+B15(28), A0
		nop	4
		ldw	.d2t1	*+B15(40), A1
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(44), A0
		nop	4
	[!A0]	b	.s2	.L645
		nop	5
		ldw	.d2t2	*+B15(32), B4
		nop	4
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(36), A1
		nop	4
		mvk	.d1	0, A0
		mvklh	.s1	32768, A0
		xor	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(12)
		lddw	.d2t2	*+B15(8), B5:B4
		nop	4
		stdw	.d2t2	B5:B4, *+B15(32)
.L645:
		lddw	.d2t1	*+B15(32), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(52), B3
		nop	4
		ldw	.d2t2	*+B15(56), B14
		nop	4
		addab	.d2	B15, 56, B15
		ret	.s2	B3
		nop	5
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
		subah	.d2	B15, 20, B15
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		stdw	.d2t1	A1:A0, *+B15(32)
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(24)
		b	.s2	.L660
		nop	5
.L662:
		ldw	.d2t1	*+B15(24), A0
		nop	4
		and	.d1	1, A0, A1
		ldw	.d2t1	*+B15(28), A0
		nop	4
		and	.d1	0, A0, A0
		or	.d1	A0, A1, A0
	[!A0]	b	.s2	.L661
		nop	5
		ldw	.d2t1	*+B15(32), A1
		nop	4
		ldw	.d2t2	*+B15(36), B0
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldw	.d2t1	*+B15(12), A2
		nop	4
		addu	.l1	A1, A0, A1:A0
		add	.d1x	A1, B0, A1
		add	.d1	A1, A2, A1
		stdw	.d2t1	A1:A0, *+B15(32)
.L661:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		ldw	.d2t1	*+B15(12), A2
		nop	4
		addu	.l1	A0, A0, A1:A0
		add	.d1	A1, A2, A1
		add	.d1	A1, A2, A1
		stdw	.d2t1	A1:A0, *+B15(8)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shl	.s1	A0, 31, A1
		ldw	.d2t1	*+B15(24), A0
		nop	4
		shru	.s1	A0, 1, A0
		or	.d1	A0, A1, A0
		ldw	.d2t1	*+B15(28), A1
		nop	4
		shru	.s1	A1, 1, A1
		stw	.d2t1	A0, *+B15(24)
		stw	.d2t1	A1, *+B15(28)
.L660:
		ldw	.d2t1	*+B15(24), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		or	.d1	A0, A1, A0
	[A0]	b	.s2	.L662
		nop	5
		lddw	.d2t1	*+B15(32), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		mvk	.d1	1, A0
		stw	.d2t1	A0, *+B15(28)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(24)
		b	.s2	.L665
		nop	5
.L667:
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
.L665:
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L668
		nop	5
		ldw	.d2t1	*+B15(28), A0
		nop	4
	[!A0]	b	.s2	.L668
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L667
		nop	5
		b	.s2	.L668
		nop	5
.L670:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L669
		nop	5
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		sub	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(24), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		or	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(24)
.L669:
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
.L668:
		ldw	.d2t1	*+B15(28), A0
		nop	4
	[A0]	b	.s2	.L670
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L671
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		b	.s2	.L672
		nop	5
.L671:
		ldw	.d2t1	*+B15(24), A0
		nop	4
.L672:
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
		sub	.d2	B15, 24, B15
		stb	.d2t1	A4, *+B15(15)
		ldb	.d2t1	*+B15(15), A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L674
		nop	5
		ldb	.d2t1	*+B15(15), A0
		nop	4
		not	.l1	A0, A0
		stb	.d2t1	A0, *+B15(15)
.L674:
		ldb	.d2t1	*+B15(15), A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
	[A0]	b	.s2	.L675
		nop	5
		mvk	.d1	7, A0
		b	.s2	.L676
		nop	5
.L675:
		ldb	.d2t1	*+B15(15), A0
		nop	4
		shl	.s1	A0, 24, A0
		shr	.s1	A0, 24, A0
		shl	.s1	A0, 8, A0
		lmbd	.l1	1, A0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
.L676:
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
		sub	.d2	B15, 24, B15
		stdw	.d2t1	A5:A4, *+B15(8)
		ldw	.d2t1	*+B15(8), A2
		nop	4
		ldw	.d2t1	*+B15(12), A1
		nop	4
		cmpgt	.l1	0, A1, A0
		cmpeq	.l1	0, A1, A1
	[A1]	cmpgtu	.l1	0, A2, A1
		or	.d1	A1, A0, A0
	[!A0]	b	.s2	.L678
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
		not	.l1	A0, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		not	.l1	A0, A0
		stw	.d2t1	A1, *+B15(8)
		stw	.d2t1	A0, *+B15(12)
.L678:
		ldw	.d2t1	*+B15(8), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		or	.d1	A0, A1, A0
	[A0]	b	.s2	.L679
		nop	5
		mvk	.s1	63, A0
		b	.s2	.L680
		nop	5
.L679:
		ldw	.d2t1	*+B15(8), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L681
		nop	5
		lmbd	.l1	1, A0, A0
		b	.s2	.L682
		nop	5
.L681:
		lmbd	.l1	1, A1, A0
		addah	.d1	A0, 16, A0
.L682:
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		sub	.d1	A0, 1, A0
.L680:
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L684
		nop	5
.L686:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L685
		nop	5
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
.L685:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(8)
.L684:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L686
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
		subah	.d2	B15, 20, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 3, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		and	.d1	-8, A0, A0
		stw	.d2t1	A0, *+B15(32)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L689
		nop	5
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L696
		nop	5
.L689:
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(36)
		b	.s2	.L691
		nop	5
.L692:
		ldw	.d2t1	*+B15(36), A0
		nop	4
		shl	.s1	A0, 3, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		add	.d1	A1, A0, A2
		ldw	.d2t1	*+B15(36), A0
		nop	4
		shl	.s1	A0, 3, A0
		ldw	.d2t1	*+B15(16), A1
		nop	4
		add	.d1	A1, A0, A0
		lddw	.d1t1	*A0, A1:A0
		nop	4
		stdw	.d1t1	A1:A0, *A2
		ldw	.d2t1	*+B15(36), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(36)
.L691:
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L692
		nop	5
		b	.s2	.L693
		nop	5
.L694:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(32), A0
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(16), A2
		nop	4
		ldw	.d2t1	*+B15(32), A1
		nop	4
		add	.d1	A2, A1, A1
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(32), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(32)
.L693:
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(32), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L694
		nop	5
		b	.s2	.L695
		nop	5
.L697:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(16), A2
		nop	4
		ldw	.d2t1	*+B15(12), A1
		nop	4
		add	.d1	A2, A1, A1
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
.L696:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(12)
	[A0]	b	.s2	.L697
		nop	5
	nop
.L695:
	nop
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L699
		nop	5
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L705
		nop	5
.L699:
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L701
		nop	5
.L702:
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shl	.s1	A0, 1, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(28), A1
		nop	4
		shl	.s1	A1, 1, A1
		ldw	.d2t1	*+B15(16), A2
		nop	4
		add	.d1	A2, A1, A1
		ldh	.d1t1	*A1, A1
		nop	4
		sth	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(28), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
.L701:
		ldw	.d2t1	*+B15(28), A1
		nop	4
		ldw	.d2t1	*+B15(24), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L702
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L704
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(16), A2
		nop	4
		ldw	.d2t1	*+B15(12), A1
		nop	4
		add	.d1	A2, A1, A1
		sub	.d1	A1, 1, A3
		ldb	.d1t1	*A3, A1
		nop	4
		stb	.d1t1	A1, *A0
		b	.s2	.L704
		nop	5
.L706:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(16), A2
		nop	4
		ldw	.d2t1	*+B15(12), A1
		nop	4
		add	.d1	A2, A1, A1
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
.L705:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(12)
	[A0]	b	.s2	.L706
		nop	5
	nop
.L704:
	nop
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
		subah	.d2	B15, 20, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 2, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		and	.d1	-4, A0, A0
		stw	.d2t1	A0, *+B15(32)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L708
		nop	5
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L715
		nop	5
.L708:
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(36)
		b	.s2	.L710
		nop	5
.L711:
		ldw	.d2t1	*+B15(36), A0
		nop	4
		shl	.s1	A0, 2, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(36), A1
		nop	4
		shl	.s1	A1, 2, A1
		ldw	.d2t1	*+B15(16), A2
		nop	4
		add	.d1	A2, A1, A1
		ldw	.d1t1	*A1, A1
		nop	4
		stw	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(36), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(36)
.L710:
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L711
		nop	5
		b	.s2	.L712
		nop	5
.L713:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(32), A0
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(16), A2
		nop	4
		ldw	.d2t1	*+B15(32), A1
		nop	4
		add	.d1	A2, A1, A1
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
		ldw	.d2t1	*+B15(32), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(32)
.L712:
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(32), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L713
		nop	5
		b	.s2	.L714
		nop	5
.L716:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(16), A2
		nop	4
		ldw	.d2t1	*+B15(12), A1
		nop	4
		add	.d1	A2, A1, A1
		ldb	.d1t1	*A1, A1
		nop	4
		stb	.d1t1	A1, *A0
.L715:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A0, 1, A1
		stw	.d2t1	A1, *+B15(12)
	[A0]	b	.s2	.L716
		nop	5
	nop
.L714:
	nop
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(16)
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremi
		addkpc	.s2	.L719, B3, 4
.L719:
		mv	.d1	A5, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.type	__uitod, @function
__uitod:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__c6xabi_fltud), B3
		dmv	.s1	A5, A4, A1:A0
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.type	__uitof, @function
__uitof:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__c6xabi_fltuf), B3
		mv	.d1	A4, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(8)
		lddw	.d2t1	*+B15(8), A5:A4
		nop	4
		callp	.s2	(__c6xabi_fltulld), B3
		dmv	.s1	A5, A4, A1:A0
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(8)
		lddw	.d2t1	*+B15(8), A5:A4
		nop	4
		callp	.s2	(__c6xabi_fltullf), B3
		mv	.d1	A4, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.type	__umodi, @function
__umodi:
		sub	.d2	B15, 16, B15
		stw	.d2t2	B3, *+B15(16)
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		mv	.d1	A1, A4
		mv	.l2x	A0, B4
		call	.s2	__c6xabi_divremu
		addkpc	.s2	.L734, B3, 4
.L734:
		mv	.d1	A5, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(16), B3
		nop	4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
		sub	.d2	B15, 24, B15
		sth	.d2t1	A4, *+B15(14)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L736
		nop	5
.L739:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		sub	.l1	15, A0, A0
		ldhu	.d2t1	*+B15(14), A1
		nop	4
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
	[A0]	b	.s2	.L741
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
.L736:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmplt	.l1	15, A0, A0
	[!A0]	b	.s2	.L739
		nop	5
		b	.s2	.L738
		nop	5
.L741:
	nop
.L738:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
		sub	.d2	B15, 24, B15
		sth	.d2t1	A4, *+B15(14)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L743
		nop	5
.L746:
		ldhu	.d2t1	*+B15(14), A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
	[A0]	b	.s2	.L748
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
.L743:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmplt	.l1	15, A0, A0
	[!A0]	b	.s2	.L746
		nop	5
		b	.s2	.L745
		nop	5
.L748:
	nop
.L745:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
		sub	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(24)
		stw	.d2t2	B3, *+B15(20)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mvk	.d1	0, A3
		mvklh	.s1	18176, A3
		mv	.l2x	A3, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_gef), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L754
		nop	5
		mvk	.d2	0, B4
		mvklh	.s2	18176, B4
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__c6xabi_subf), B3
		mv	.d1	A4, A0
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_fixfi), B3
		mv	.d1	A4, A1
		mvk	.s1	-32768, A0
		mvklh	.s1	0, A0
		add	.d1	A1, A0, A0
		b	.s2	.L752
		nop	5
.L754:
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__c6xabi_fixfi), B3
		mv	.d1	A4, A0
.L752:
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(20), B3
		nop	4
		ldw	.d2t2	*+B15(24), B14
		nop	4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
		sub	.d2	B15, 24, B15
		sth	.d2t1	A4, *+B15(14)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(16)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L760
		nop	5
.L762:
		ldhu	.d2t1	*+B15(14), A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L761
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
.L761:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
.L760:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmplt	.l1	15, A0, A0
	[!A0]	b	.s2	.L762
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		and	.d1	1, A0, A0
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
		sub	.d2	B15, 24, B15
		sth	.d2t1	A4, *+B15(14)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(16)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L765
		nop	5
.L767:
		ldhu	.d2t1	*+B15(14), A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L766
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
.L766:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A0, 1, A0
		stw	.d2t1	A0, *+B15(20)
.L765:
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmplt	.l1	15, A0, A0
	[!A0]	b	.s2	.L767
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		b	.s2	.L770
		nop	5
.L772:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L771
		nop	5
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(8), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
.L771:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(8)
.L770:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L772
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
		sub	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L777
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L776
		nop	5
.L779:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L778
		nop	5
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
.L778:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(8)
.L777:
		ldw	.d2t1	*+B15(8), A0
		nop	4
	[A0]	b	.s2	.L779
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
.L776:
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		mvk	.d1	1, A0
		stw	.d2t1	A0, *+B15(28)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(24)
		b	.s2	.L781
		nop	5
.L783:
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
.L781:
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L784
		nop	5
		ldw	.d2t1	*+B15(28), A0
		nop	4
	[!A0]	b	.s2	.L784
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L783
		nop	5
		b	.s2	.L784
		nop	5
.L786:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L785
		nop	5
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		sub	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(24), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		or	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(24)
.L785:
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
.L784:
		ldw	.d2t1	*+B15(28), A0
		nop	4
	[A0]	b	.s2	.L786
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L787
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		b	.s2	.L788
		nop	5
.L787:
		ldw	.d2t1	*+B15(24), A0
		nop	4
.L788:
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d2t1	*+B15(8), A1
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_ltf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L797
		nop	5
		mvk	.d1	-1, A0
		b	.s2	.L792
		nop	5
.L797:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		ldw	.d2t1	*+B15(8), A1
		nop	4
		mv	.l2x	A1, B4
		mv	.d1	A0, A4
		callp	.s2	(__c6xabi_gtf), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L798
		nop	5
		mvk	.d1	1, A0
		b	.s2	.L792
		nop	5
.L798:
		mvk	.d1	0, A0
.L792:
		mv	.d1	A0, A4
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		lddw	.d2t2	*+B15(8), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_ltd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L809
		nop	5
		mvk	.d1	-1, A0
		b	.s2	.L804
		nop	5
.L809:
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		lddw	.d2t2	*+B15(8), B1:B0
		nop	4
		dmv	.s2	B1, B0, B5:B4
		dmv	.s1	A1, A0, A5:A4
		callp	.s2	(__c6xabi_gtd), B3
		mv	.d1	A4, A1
	[!A1]	b	.s2	.L810
		nop	5
		mvk	.d1	1, A0
		b	.s2	.L804
		nop	5
.L810:
		mvk	.d1	0, A0
.L804:
		mv	.d1	A0, A4
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
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mv	.d1	A0, A1
		shr	.s1	A0, 31, A0
		mv	.l2x	A0, B0
		ldw	.d2t1	*+B15(8), A2
		nop	4
		mv	.d1	A2, A0
		shr	.s1	A2, 31, A2
		mpy32	.m2x	B0, A0, B0
		nop	3
		mpy32	.m1	A2, A1, A2
		nop	3
		add	.d1x	A2, B0, A2
		mpy32u	.m1	A1, A0, A1:A0
		nop	3
		add	.d1	A2, A1, A2
		mv	.d1	A2, A1
		dmv	.s1	A1, A0, A5:A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		mv	.d1	A0, A1
		mvk	.d2	0, B0
		ldw	.d2t1	*+B15(8), A0
		nop	4
		mvk	.d1	0, A2
		mpy32	.m2x	B0, A0, B0
		nop	3
		mpy32	.m1	A2, A1, A2
		nop	3
		add	.d1x	A2, B0, A2
		mpy32u	.m1	A1, A0, A1:A0
		nop	3
		add	.d1	A2, A1, A2
		mv	.d1	A2, A1
		dmv	.s1	A1, A0, A5:A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(24)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L818
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d2t1	A0, *+B15(8)
		mvk	.d1	1, A0
		stw	.d2t1	A0, *+B15(24)
.L818:
		mvk	.d1	0, A0
		stb	.d2t1	A0, *+B15(31)
		b	.s2	.L819
		nop	5
.L822:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L820
		nop	5
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
.L820:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shr	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(8)
		ldb	.d2t1	*+B15(31), A0
		nop	4
		add	.d1	A0, 1, A0
		stb	.d2t1	A0, *+B15(31)
.L819:
		ldw	.d2t1	*+B15(8), A0
		nop	4
	[!A0]	b	.s2	.L821
		nop	5
		ldb	.d2t1	*+B15(31), A0
		nop	4
		extu	.s1	A0, 24, 24, A0
		cmpltu	.l1	31, A0, A0
	[!A0]	b	.s2	.L822
		nop	5
.L821:
		ldw	.d2t1	*+B15(24), A0
		nop	4
	[!A0]	b	.s2	.L823
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		neg	.l1	A0, A0
		b	.s2	.L825
		nop	5
.L823:
		ldw	.d2t1	*+B15(20), A0
		nop	4
.L825:
	nop
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L827
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		stw	.d2t1	A0, *+B15(20)
.L827:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L828
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d2t1	A0, *+B15(8)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmpeq	.l1	0, A0, A0
		extu	.s1	A0, 24, 24, A0
		stw	.d2t1	A0, *+B15(20)
.L828:
		mvk	.d1	0, A6
		ldw	.d2t2	*+B15(8), B4
		nop	4
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__udivmodsi4), B3
		mv	.d1	A4, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(20), A0
		nop	4
	[!A0]	b	.s2	.L829
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d2t1	A0, *+B15(16)
.L829:
		ldw	.d2t1	*+B15(16), A0
		nop	4
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L833
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d2t1	A0, *+B15(12)
		mvk	.d1	1, A0
		stw	.d2t1	A0, *+B15(20)
.L833:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L834
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d2t1	A0, *+B15(8)
.L834:
		mvk	.d1	1, A6
		ldw	.d2t2	*+B15(8), B4
		nop	4
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__udivmodsi4), B3
		mv	.d1	A4, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(20), A0
		nop	4
	[!A0]	b	.s2	.L835
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		neg	.l1	A0, A0
		stw	.d2t1	A0, *+B15(16)
.L835:
		ldw	.d2t1	*+B15(16), A0
		nop	4
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
		sub	.d2	B15, 24, B15
		sth	.d2t1	A4, *+B15(14)
		sth	.d2t2	B4, *+B15(12)
		stw	.d2t1	A6, *+B15(8)
		mvk	.d1	1, A0
		sth	.d2t1	A0, *+B15(22)
		mvk	.d1	0, A0
		sth	.d2t1	A0, *+B15(20)
		b	.s2	.L839
		nop	5
.L841:
		ldh	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A0, 1, A0
		sth	.d2t1	A0, *+B15(12)
		ldh	.d2t1	*+B15(22), A0
		nop	4
		shl	.s1	A0, 1, A0
		sth	.d2t1	A0, *+B15(22)
.L839:
		ldhu	.d2t1	*+B15(12), A1
		nop	4
		ldhu	.d2t1	*+B15(14), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L842
		nop	5
		ldhu	.d2t1	*+B15(22), A0
		nop	4
	[!A0]	b	.s2	.L842
		nop	5
		ldh	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A0, 16, A0
		shr	.s1	A0, 16, A0
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L841
		nop	5
		b	.s2	.L842
		nop	5
.L844:
		ldhu	.d2t1	*+B15(14), A1
		nop	4
		ldhu	.d2t1	*+B15(12), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L843
		nop	5
		ldh	.d2t1	*+B15(14), A1
		nop	4
		ldh	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A1, A0, A0
		sth	.d2t1	A0, *+B15(14)
		ldh	.d2t1	*+B15(20), A1
		nop	4
		ldh	.d2t1	*+B15(22), A0
		nop	4
		or	.d1	A0, A1, A0
		sth	.d2t1	A0, *+B15(20)
.L843:
		ldhu	.d2t1	*+B15(22), A0
		nop	4
		shru	.s1	A0, 1, A0
		sth	.d2t1	A0, *+B15(22)
		ldhu	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 1, A0
		sth	.d2t1	A0, *+B15(12)
.L842:
		ldhu	.d2t1	*+B15(22), A0
		nop	4
	[A0]	b	.s2	.L844
		nop	5
		ldw	.d2t1	*+B15(8), A0
		nop	4
	[!A0]	b	.s2	.L845
		nop	5
		ldh	.d2t1	*+B15(14), A0
		nop	4
		b	.s2	.L846
		nop	5
.L845:
		ldh	.d2t1	*+B15(20), A0
		nop	4
.L846:
		mv	.d1	A0, A4
		add	.d2	B15, 24, B15
		ret	.s2	B3
		nop	5
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(20)
		stw	.d2t2	B4, *+B15(16)
		stw	.d2t1	A6, *+B15(12)
		mvk	.d1	1, A0
		stw	.d2t1	A0, *+B15(28)
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(24)
		b	.s2	.L848
		nop	5
.L850:
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shl	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
.L848:
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(20), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L851
		nop	5
		ldw	.d2t1	*+B15(28), A0
		nop	4
	[!A0]	b	.s2	.L851
		nop	5
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpgt	.l1	0, A0, A0
	[!A0]	b	.s2	.L850
		nop	5
		b	.s2	.L851
		nop	5
.L853:
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[A0]	b	.s2	.L852
		nop	5
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		sub	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(24), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		or	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(24)
.L852:
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shru	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(16)
.L851:
		ldw	.d2t1	*+B15(28), A0
		nop	4
	[A0]	b	.s2	.L853
		nop	5
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L854
		nop	5
		ldw	.d2t1	*+B15(20), A0
		nop	4
		b	.s2	.L855
		nop	5
.L854:
		ldw	.d2t1	*+B15(24), A0
		nop	4
.L855:
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
		subah	.d2	B15, 24, B15
		stdw	.d2t1	A5:A4, *+B15(16)
		stw	.d2t2	B4, *+B15(12)
		mvk	.s1	32, A0
		stw	.d2t1	A0, *+B15(44)
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(32)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		and	.d1	A0, A1, A0
	[!A0]	b	.s2	.L857
		nop	5
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(32), A1
		nop	4
		ldw	.d2t1	*+B15(12), A2
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		sub	.d1	A2, A0, A0
		shl	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(28)
		b	.s2	.L858
		nop	5
.L857:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L859
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L861
		nop	5
.L859:
		ldw	.d2t1	*+B15(32), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(36), A0
		nop	4
		mv	.d1	A0, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A1, A0, A1
		ldw	.d2t1	*+B15(32), A2
		nop	4
		ldw	.d2t2	*+B15(44), B0
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.l1x	B0, A0, A0
		shru	.s1	A2, A0, A0
		or	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(28)
.L858:
		lddw	.d2t1	*+B15(24), A1:A0
		nop	4
.L861:
		dmv	.s1	A1, A0, A5:A4
		addab	.d2	B15, 48, B15
		ret	.s2	B3
		nop	5
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
		subah	.d2	B15, 24, B15
		stdw	.d2t1	A5:A4, *+B15(16)
		stw	.d2t2	B4, *+B15(12)
		mvk	.s1	32, A0
		stw	.d2t1	A0, *+B15(44)
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(32)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		and	.d1	A0, A1, A0
	[!A0]	b	.s2	.L863
		nop	5
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		sub	.d1	A0, 1, A0
		shr	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(12), A2
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		sub	.d1	A2, A0, A0
		shr	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(24)
		b	.s2	.L864
		nop	5
.L863:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L865
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L867
		nop	5
.L865:
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shr	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(36), A0
		nop	4
		mv	.d1	A0, A2
		ldw	.d2t1	*+B15(44), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A1, A0, A0
		shl	.s1	A2, A0, A1
		ldw	.d2t1	*+B15(32), A2
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A2, A0, A0
		or	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(24)
.L864:
		lddw	.d2t1	*+B15(24), A1:A0
		nop	4
.L867:
		dmv	.s1	A1, A0, A5:A4
		addab	.d2	B15, 48, B15
		ret	.s2	B3
		nop	5
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
		sub	.d2	B15, 16, B15
		stdw	.d2t1	A5:A4, *+B15(8)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s2x	A0, 24, B0
		mvk	.d1	0, A2
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 8, A1
		mvk	.d1	0, A0
		mvk	.s2	-256, B1
		mvklh	.s2	0, B1
		and	.d1x	A1, B1, A1
		and	.d1	0, A0, A0
		or	.d2x	B0, A1, B0
		or	.d1	A0, A2, A2
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A0, 8, A1
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shru	.s1	A0, 24, A0
		or	.d1	A0, A1, A0
		ldw	.d2t1	*+B15(12), A1
		nop	4
		shru	.s1	A1, 24, A1
		mvk	.d2	0, B1
		mvklh	.s2	255, B1
		and	.d1x	A0, B1, A0
		and	.d1	0, A1, A1
		or	.d2x	B0, A0, B0
		or	.d1	A1, A2, A2
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A0, 24, A1
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shru	.s1	A0, 8, A0
		or	.d1	A0, A1, A0
		ldw	.d2t1	*+B15(12), A1
		nop	4
		shru	.s1	A1, 8, A1
		clr	.s1	A0, 0, 23, A0
		and	.d1	0, A1, A1
		or	.d2x	B0, A0, B0
		or	.d1	A1, A2, A2
		ldw	.d2t1	*+B15(8), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shlmb	.l1	A1, A0, A0
		shl	.s1	A1, 8, A1
		and	.d1	0, A1, A1
		clr	.s1	A0, 8, 31, A0
		or	.d2x	B0, A1, B0
		or	.d1	A0, A2, A2
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shru	.s1	A0, 8, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A0, 24, A0
		or	.d1	A0, A1, A0
		ldw	.d2t1	*+B15(8), A1
		nop	4
		shl	.s1	A1, 24, A1
		and	.d2x	0, A1, B1
		mvk	.s1	-256, A1
		mvklh	.s1	0, A1
		and	.d1	A1, A0, A0
		mv	.l1x	B1, A1
		or	.d2x	B0, A1, B0
		or	.d1	A0, A2, A2
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shl	.s1	A0, 8, A0
		mvk	.d1	0, A1
		and	.d2x	0, A1, B1
		mvk	.d1	0, A1
		mvklh	.s1	255, A1
		and	.d1	A1, A0, A0
		mv	.l1x	B1, A1
		or	.d2x	B0, A1, B0
		or	.d1	A0, A2, A1
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shl	.s1	A0, 24, A0
		mvk	.d1	0, A2
		or	.d1x	A2, B0, A2
		or	.d1	A0, A1, A0
		mv	.d1	A2, A4
		mv	.d1	A0, A5
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
		sub	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 24, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 8, A0
		mvk	.s1	-256, A2
		mvklh	.s1	0, A2
		and	.d1	A2, A0, A0
		or	.d1	A0, A1, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A0, 8, A0
		mvk	.d1	0, A2
		mvklh	.s1	255, A2
		and	.d1	A2, A0, A0
		or	.d1	A0, A1, A1
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shl	.s1	A0, 24, A0
		or	.d1	A0, A1, A0
		mv	.d1	A0, A4
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
		subaw	.d2	B15, 18, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		stw	.d2t1	A0, *+B15(68)
		ldw	.d2t1	*+B15(68), A1
		nop	4
		mvk	.d1	-1, A0
		mvklh	.s1	0, A0
		cmpltu	.l1	A0, A1, A0
	[A0]	b	.s2	.L873
		nop	5
		mvk	.s1	16, A0
		b	.s2	.L874
		nop	5
.L873:
		mvk	.d1	0, A0
.L874:
		stw	.d2t1	A0, *+B15(64)
		mvk	.s1	16, A1
		ldw	.d2t1	*+B15(64), A0
		nop	4
		sub	.d1	A1, A0, A0
		ldw	.d2t1	*+B15(68), A1
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(60)
		ldw	.d2t1	*+B15(64), A0
		nop	4
		stw	.d2t1	A0, *+B15(56)
		ldw	.d2t1	*+B15(60), A1
		nop	4
		mvk	.s1	-256, A0
		mvklh	.s1	0, A0
		and	.d1	A0, A1, A0
	[A0]	b	.s2	.L875
		nop	5
		mvk	.d1	8, A0
		b	.s2	.L876
		nop	5
.L875:
		mvk	.d1	0, A0
.L876:
		stw	.d2t1	A0, *+B15(52)
		ldw	.d2t1	*+B15(52), A0
		nop	4
		sub	.l1	8, A0, A0
		ldw	.d2t1	*+B15(60), A1
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(48)
		ldw	.d2t1	*+B15(56), A1
		nop	4
		ldw	.d2t1	*+B15(52), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(44)
		ldw	.d2t1	*+B15(48), A1
		nop	4
		mvk	.s1	240, A0
		and	.d1	A0, A1, A0
	[A0]	b	.s2	.L877
		nop	5
		mvk	.d1	4, A0
		b	.s2	.L878
		nop	5
.L877:
		mvk	.d1	0, A0
.L878:
		stw	.d2t1	A0, *+B15(40)
		ldw	.d2t1	*+B15(40), A0
		nop	4
		sub	.l1	4, A0, A0
		ldw	.d2t1	*+B15(48), A1
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(36)
		ldw	.d2t1	*+B15(44), A1
		nop	4
		ldw	.d2t1	*+B15(40), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(32)
		ldw	.d2t1	*+B15(36), A0
		nop	4
		and	.d1	12, A0, A0
	[A0]	b	.s2	.L879
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L880
		nop	5
.L879:
		mvk	.d1	0, A0
.L880:
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		sub	.l1	2, A0, A0
		ldw	.d2t1	*+B15(36), A1
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(32), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(24), A0
		nop	4
		and	.d1	2, A0, A0
		cmpeq	.l1	0, A0, A0
		mv	.d1	A0, A1
		ldw	.d2t1	*+B15(24), A0
		nop	4
		sub	.l1	2, A0, A0
		mpy32	.m1	A1, A0, A1
		nop	3
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A1, A0, A0
		mv	.d1	A0, A4
		addab	.d2	B15, 72, B15
		ret	.s2	B3
		nop	5
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
		subah	.d2	B15, 20, B15
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(32)
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(24)
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		cmpgt	.l1	A0, A1, A0
	[!A0]	b	.s2	.L883
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L888
		nop	5
.L883:
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		cmplt	.l1	A0, A1, A0
	[!A0]	b	.s2	.L885
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L888
		nop	5
.L885:
		ldw	.d2t1	*+B15(32), A1
		nop	4
		ldw	.d2t1	*+B15(24), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L886
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L888
		nop	5
.L886:
		ldw	.d2t1	*+B15(32), A1
		nop	4
		ldw	.d2t1	*+B15(24), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L887
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L888
		nop	5
.L887:
		mvk	.d1	1, A0
.L888:
		mv	.d1	A0, A4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		lddw	.d2t2	*+B15(8), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__cmpdi2), B3
		mv	.d1	A4, A0
		sub	.d1	A0, 1, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
		subaw	.d2	B15, 18, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		stw	.d2t1	A0, *+B15(68)
		ldw	.d2t1	*+B15(68), A0
		nop	4
		clr	.s1	A0, 16, 31, A0
	[A0]	b	.s2	.L893
		nop	5
		mvk	.s1	16, A0
		b	.s2	.L894
		nop	5
.L893:
		mvk	.d1	0, A0
.L894:
		stw	.d2t1	A0, *+B15(64)
		ldw	.d2t1	*+B15(68), A1
		nop	4
		ldw	.d2t1	*+B15(64), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(60)
		ldw	.d2t1	*+B15(64), A0
		nop	4
		stw	.d2t1	A0, *+B15(56)
		ldw	.d2t1	*+B15(60), A0
		nop	4
		clr	.s1	A0, 8, 31, A0
	[A0]	b	.s2	.L895
		nop	5
		mvk	.d1	8, A0
		b	.s2	.L896
		nop	5
.L895:
		mvk	.d1	0, A0
.L896:
		stw	.d2t1	A0, *+B15(52)
		ldw	.d2t1	*+B15(60), A1
		nop	4
		ldw	.d2t1	*+B15(52), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(48)
		ldw	.d2t1	*+B15(56), A1
		nop	4
		ldw	.d2t1	*+B15(52), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(44)
		ldw	.d2t1	*+B15(48), A0
		nop	4
		and	.d1	15, A0, A0
	[A0]	b	.s2	.L897
		nop	5
		mvk	.d1	4, A0
		b	.s2	.L898
		nop	5
.L897:
		mvk	.d1	0, A0
.L898:
		stw	.d2t1	A0, *+B15(40)
		ldw	.d2t1	*+B15(48), A1
		nop	4
		ldw	.d2t1	*+B15(40), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(36)
		ldw	.d2t1	*+B15(44), A1
		nop	4
		ldw	.d2t1	*+B15(40), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(32)
		ldw	.d2t1	*+B15(36), A0
		nop	4
		and	.d1	3, A0, A0
	[A0]	b	.s2	.L899
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L900
		nop	5
.L899:
		mvk	.d1	0, A0
.L900:
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(24), A0
		nop	4
		and	.d1	3, A0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(32), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shru	.s1	A0, 1, A0
		sub	.l1	2, A0, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		not	.l1	A1, A1
		and	.d1	1, A1, A1
		neg	.l1	A1, A1
		and	.d1	A0, A1, A1
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A1, A0, A0
		mv	.d1	A0, A4
		addab	.d2	B15, 72, B15
		ret	.s2	B3
		nop	5
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
		subah	.d2	B15, 24, B15
		stdw	.d2t1	A5:A4, *+B15(16)
		stw	.d2t2	B4, *+B15(12)
		mvk	.s1	32, A0
		stw	.d2t1	A0, *+B15(44)
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(32)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		and	.d1	A0, A1, A0
	[!A0]	b	.s2	.L903
		nop	5
		mvk	.d1	0, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(12), A2
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		sub	.d1	A2, A0, A0
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(24)
		b	.s2	.L904
		nop	5
.L903:
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[A0]	b	.s2	.L905
		nop	5
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		b	.s2	.L907
		nop	5
.L905:
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(44), A2
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		sub	.d1	A2, A0, A0
		shl	.s1	A1, A0, A1
		ldw	.d2t1	*+B15(32), A2
		nop	4
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A2, A0, A0
		or	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(24)
.L904:
		lddw	.d2t1	*+B15(24), A1:A0
		nop	4
.L907:
		dmv	.s1	A1, A0, A5:A4
		addab	.d2	B15, 48, B15
		ret	.s2	B3
		nop	5
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
		subah	.d2	B15, 24, B15
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		mvk	.s1	16, A0
		stw	.d2t1	A0, *+B15(44)
		mvk	.d1	-1, A1
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(40)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(40), A0
		nop	4
		and	.d1	A0, A1, A1
		ldw	.d2t1	*+B15(8), A2
		nop	4
		ldw	.d2t1	*+B15(40), A0
		nop	4
		and	.d1	A0, A2, A0
		mpy32	.m1	A1, A0, A0
		nop	3
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(36)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldw	.d2t1	*+B15(40), A1
		nop	4
		and	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(12), A1
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shru	.s1	A1, A0, A1
		ldw	.d2t1	*+B15(8), A2
		nop	4
		ldw	.d2t1	*+B15(40), A0
		nop	4
		and	.d1	A0, A2, A0
		mpy32	.m1	A1, A0, A0
		nop	3
		ldw	.d2t1	*+B15(36), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(32)
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(32), A2
		nop	4
		ldw	.d2t1	*+B15(40), A0
		nop	4
		and	.d1	A0, A2, A2
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shl	.s1	A2, A0, A0
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(32), A1
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shru	.s1	A1, A0, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		ldw	.d2t1	*+B15(40), A1
		nop	4
		and	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(8), A1
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shru	.s1	A1, A0, A1
		ldw	.d2t1	*+B15(12), A2
		nop	4
		ldw	.d2t1	*+B15(40), A0
		nop	4
		and	.d1	A0, A2, A0
		mpy32	.m1	A1, A0, A0
		nop	3
		ldw	.d2t1	*+B15(28), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(16), A1
		nop	4
		ldw	.d2t1	*+B15(24), A2
		nop	4
		ldw	.d2t1	*+B15(40), A0
		nop	4
		and	.d1	A0, A2, A2
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shl	.s1	A2, A0, A0
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(24), A2
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shru	.s1	A2, A0, A0
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(12), A2
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shru	.s1	A2, A0, A2
		ldw	.d2t2	*+B15(8), B0
		nop	4
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shru	.s1x	B0, A0, A0
		mpy32	.m1	A2, A0, A0
		nop	3
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		addab	.d2	B15, 48, B15
		ret	.s2	B3
		nop	5
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
		subah	.d2	B15, 28, B15
		stw	.d2t2	B14, *+B15(56)
		stw	.d2t2	B3, *+B15(52)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(40)
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(32)
		ldw	.d2t2	*+B15(32), B4
		nop	4
		ldw	.d2t1	*+B15(40), A4
		nop	4
		callp	.s2	(__muldsi3), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d2t1	A1:A0, *+B15(24)
		ldw	.d2t1	*+B15(28), A1
		nop	4
		ldw	.d2t1	*+B15(44), A2
		nop	4
		ldw	.d2t1	*+B15(32), A0
		nop	4
		mpy32	.m1	A2, A0, A2
		nop	3
		ldw	.d2t2	*+B15(40), B0
		nop	4
		ldw	.d2t1	*+B15(36), A0
		nop	4
		mpy32	.m1x	A0, B0, A0
		nop	3
		add	.d1	A2, A0, A0
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(28)
		lddw	.d2t1	*+B15(24), A1:A0
		nop	4
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(52), B3
		nop	4
		ldw	.d2t2	*+B15(56), B14
		nop	4
		addab	.d2	B15, 56, B15
		ret	.s2	B3
		nop	5
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
		sub	.d2	B15, 16, B15
		stdw	.d2t1	A5:A4, *+B15(8)
		ldw	.d2t2	*+B15(8), B2
		nop	4
		ldw	.d2t2	*+B15(12), B0
		nop	4
		mvk	.d1	0, A2
		mvk	.d2	0, B1
		mv	.l1x	B2, A3
		sub	.d1	A2, A3, A1
		cmpltu	.l1	A2, A1, A2
		sub	.d2	B1, B0, B1
		mv	.l1x	B1, A0
		sub	.d1	A0, A2, A0
		mv	.d1	A1, A4
		mv	.d1	A0, A5
		add	.d2	B15, 16, B15
		ret	.s2	B3
		nop	5
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
		subah	.d2	B15, 20, B15
		stdw	.d2t1	A5:A4, *+B15(8)
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(16)
		ldw	.d2t1	*+B15(20), A1
		nop	4
		ldw	.d2t1	*+B15(16), A0
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(36)
		ldw	.d2t1	*+B15(36), A0
		nop	4
		shru	.s1	A0, 16, A0
		ldw	.d2t1	*+B15(36), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(32)
		ldw	.d2t1	*+B15(32), A0
		nop	4
		shru	.s1	A0, 8, A0
		ldw	.d2t1	*+B15(32), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shru	.s1	A0, 4, A0
		ldw	.d2t1	*+B15(28), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(24), A0
		nop	4
		and	.d1	15, A0, A0
		mvk	.s1	27030, A1
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
		mv	.d1	A0, A4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
		subah	.d2	B15, 16, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shru	.s1	A0, 16, A0
		ldw	.d2t1	*+B15(28), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(24), A0
		nop	4
		shru	.s1	A0, 8, A0
		ldw	.d2t1	*+B15(24), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shru	.s1	A0, 4, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		xor	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		and	.d1	15, A0, A0
		mvk	.s1	27030, A1
		shr	.s1	A1, A0, A0
		and	.d1	1, A0, A0
		mv	.d1	A0, A4
		addab	.d2	B15, 32, B15
		ret	.s2	B3
		nop	5
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
		subah	.d2	B15, 28, B15
		stdw	.d2t1	A5:A4, *+B15(8)
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(48)
		ldw	.d2t1	*+B15(52), A0
		nop	4
		shl	.s1	A0, 31, A1
		ldw	.d2t1	*+B15(48), A0
		nop	4
		shru	.s1	A0, 1, A0
		or	.d1	A0, A1, A0
		ldw	.d2t1	*+B15(52), A1
		nop	4
		shru	.s1	A1, 1, A1
		mvk	.s1	21845, A2
		mvklh	.s1	21845, A2
		and	.d1	A2, A0, A0
		mv	.l2x	A0, B2
		mvk	.s1	21845, A0
		mvklh	.s1	21845, A0
		and	.d1	A0, A1, A1
		mv	.l2x	A1, B0
		ldw	.d2t1	*+B15(48), A2
		nop	4
		ldw	.d2t2	*+B15(52), B1
		nop	4
		mv	.l1x	B2, A3
		sub	.d1	A2, A3, A1
		cmpltu	.l1	A2, A1, A2
		sub	.d2	B1, B0, B1
		mv	.l1x	B1, A0
		sub	.d1	A0, A2, A0
		stw	.d2t1	A1, *+B15(40)
		stw	.d2t1	A0, *+B15(44)
		ldw	.d2t1	*+B15(44), A0
		nop	4
		shl	.s1	A0, 30, A1
		ldw	.d2t1	*+B15(40), A0
		nop	4
		shru	.s1	A0, 2, A0
		or	.d1	A0, A1, A0
		ldw	.d2t1	*+B15(44), A1
		nop	4
		shru	.s1	A1, 2, A2
		mvk	.s1	13107, A1
		mvklh	.s1	13107, A1
		and	.d1	A1, A0, A1
		mvk	.s1	13107, A0
		mvklh	.s1	13107, A0
		and	.d1	A0, A2, A2
		mv	.l2x	A2, B0
		ldw	.d2t1	*+B15(40), A2
		nop	4
		mvk	.s1	13107, A0
		mvklh	.s1	13107, A0
		and	.d1	A0, A2, A0
		ldw	.d2t2	*+B15(44), B1
		nop	4
		mvk	.s1	13107, A2
		mvklh	.s1	13107, A2
		and	.d1x	A2, B1, A2
		addu	.l1	A1, A0, A1:A0
		add	.d1x	A1, B0, A1
		add	.d1	A1, A2, A1
		stdw	.d2t1	A1:A0, *+B15(32)
		ldw	.d2t1	*+B15(36), A0
		nop	4
		shl	.s1	A0, 28, A1
		ldw	.d2t1	*+B15(32), A0
		nop	4
		shru	.s1	A0, 4, A0
		or	.d1	A0, A1, A0
		ldw	.d2t1	*+B15(36), A1
		nop	4
		shru	.s2x	A1, 4, B0
		ldw	.d2t1	*+B15(32), A1
		nop	4
		ldw	.d2t1	*+B15(36), A2
		nop	4
		addu	.l1	A0, A1, A1:A0
		add	.d1x	A1, B0, A1
		add	.d1	A1, A2, A1
		mvk	.s1	3855, A2
		mvklh	.s1	3855, A2
		and	.d1	A2, A0, A2
		stw	.d2t1	A2, *+B15(24)
		mvk	.s1	3855, A2
		mvklh	.s1	3855, A2
		and	.d1	A2, A1, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(24), A0
		nop	4
		ldw	.d2t1	*+B15(28), A1
		nop	4
		shru	.s1	A1, 0, A1
		add	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shru	.s1	A0, 16, A0
		ldw	.d2t1	*+B15(20), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(16)
		ldw	.d2t1	*+B15(16), A0
		nop	4
		shru	.s1	A0, 8, A1
		ldw	.d2t1	*+B15(16), A0
		nop	4
		add	.d1	A1, A0, A0
		clr	.s1	A0, 7, 31, A0
		mv	.d1	A0, A4
		addab	.d2	B15, 56, B15
		ret	.s2	B3
		nop	5
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
		subah	.d2	B15, 20, B15
		stw	.d2t1	A4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		stw	.d2t1	A0, *+B15(36)
		ldw	.d2t1	*+B15(36), A0
		nop	4
		shru	.s1	A0, 1, A1
		mvk	.s1	21845, A0
		mvklh	.s1	21845, A0
		and	.d1	A0, A1, A0
		ldw	.d2t1	*+B15(36), A1
		nop	4
		sub	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(32)
		ldw	.d2t1	*+B15(32), A0
		nop	4
		shru	.s1	A0, 2, A1
		mvk	.s1	13107, A0
		mvklh	.s1	13107, A0
		and	.d1	A0, A1, A1
		ldw	.d2t1	*+B15(32), A2
		nop	4
		mvk	.s1	13107, A0
		mvklh	.s1	13107, A0
		and	.d1	A0, A2, A0
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(28)
		ldw	.d2t1	*+B15(28), A0
		nop	4
		shru	.s1	A0, 4, A1
		ldw	.d2t1	*+B15(28), A0
		nop	4
		add	.d1	A1, A0, A1
		mvk	.s1	3855, A0
		mvklh	.s1	3855, A0
		and	.d1	A0, A1, A0
		stw	.d2t1	A0, *+B15(24)
		ldw	.d2t1	*+B15(24), A0
		nop	4
		shru	.s1	A0, 16, A0
		ldw	.d2t1	*+B15(24), A1
		nop	4
		add	.d1	A1, A0, A0
		stw	.d2t1	A0, *+B15(20)
		ldw	.d2t1	*+B15(20), A0
		nop	4
		shru	.s1	A0, 8, A1
		ldw	.d2t1	*+B15(20), A0
		nop	4
		add	.d1	A1, A0, A0
		clr	.s1	A0, 6, 31, A0
		mv	.d1	A0, A4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
		subah	.d2	B15, 24, B15
		stw	.d2t2	B14, *+B15(48)
		stw	.d2t2	B3, *+B15(44)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stw	.d2t2	B4, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 31, A0
		extu	.s1	A0, 24, 24, A0
		stw	.d2t1	A0, *+B15(28)
		mvk	.d1	0, A0
		mvk	.d1	0, A1
		mvklh	.s1	16368, A1
		stdw	.d2t1	A1:A0, *+B15(32)
.L927:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L924
		nop	5
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		lddw	.d2t1	*+B15(32), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d2t1	A1:A0, *+B15(32)
.L924:
		ldw	.d2t1	*+B15(12), A0
		nop	4
		shru	.s1	A0, 31, A1
		add	.d1	A1, A0, A0
		shr	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(12)
		ldw	.d2t1	*+B15(12), A0
		nop	4
	[!A0]	b	.s2	.L932
		nop	5
		lddw	.d2t2	*+B15(16), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__c6xabi_mpyd), B3
		dmv	.s1	A5, A4, A1:A0
		stdw	.d2t1	A1:A0, *+B15(16)
		b	.s2	.L927
		nop	5
.L932:
	nop
		ldw	.d2t1	*+B15(28), A0
		nop	4
	[!A0]	b	.s2	.L928
		nop	5
		lddw	.d2t2	*+B15(32), B5:B4
		nop	4
		mvk	.d1	0, A4
		mvk	.d1	0, A5
		mvklh	.s1	16368, A5
		callp	.s2	(__c6xabi_divd), B3
		dmv	.s1	A5, A4, A1:A0
		b	.s2	.L930
		nop	5
.L928:
		lddw	.d2t1	*+B15(32), A1:A0
		nop	4
.L930:
	nop
		dmv	.s1	A1, A0, A5:A4
		ldw	.d2t2	*+B15(44), B3
		nop	4
		ldw	.d2t2	*+B15(48), B14
		nop	4
		addab	.d2	B15, 48, B15
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
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stw	.d2t1	A4, *+B15(12)
		stw	.d2t2	B4, *+B15(8)
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shru	.s1	A0, 31, A0
		extu	.s1	A0, 24, 24, A0
		stw	.d2t1	A0, *+B15(16)
		mvk	.d1	0, A0
		mvklh	.s1	16256, A0
		stw	.d2t1	A0, *+B15(20)
.L940:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		and	.d1	1, A0, A0
	[!A0]	b	.s2	.L937
		nop	5
		ldw	.d2t2	*+B15(12), B4
		nop	4
		ldw	.d2t1	*+B15(20), A4
		nop	4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A0
		stw	.d2t1	A0, *+B15(20)
.L937:
		ldw	.d2t1	*+B15(8), A0
		nop	4
		shru	.s1	A0, 31, A1
		add	.d1	A1, A0, A0
		shr	.s1	A0, 1, A0
		stw	.d2t1	A0, *+B15(8)
		ldw	.d2t1	*+B15(8), A0
		nop	4
	[!A0]	b	.s2	.L945
		nop	5
		ldw	.d2t2	*+B15(12), B4
		nop	4
		ldw	.d2t1	*+B15(12), A4
		nop	4
		callp	.s2	(__c6xabi_mpyf), B3
		mv	.d1	A4, A0
		stw	.d2t1	A0, *+B15(12)
		b	.s2	.L940
		nop	5
.L945:
	nop
		ldw	.d2t1	*+B15(16), A0
		nop	4
	[!A0]	b	.s2	.L941
		nop	5
		ldw	.d2t2	*+B15(20), B4
		nop	4
		mvk	.d1	0, A4
		mvklh	.s1	16256, A4
		callp	.s2	(__c6xabi_divf), B3
		mv	.d1	A4, A0
		b	.s2	.L943
		nop	5
.L941:
		ldw	.d2t1	*+B15(20), A0
		nop	4
.L943:
	nop
		mv	.d1	A0, A4
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
		subah	.d2	B15, 20, B15
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		lddw	.d2t1	*+B15(16), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(32)
		lddw	.d2t1	*+B15(8), A1:A0
		nop	4
		stdw	.d2t1	A1:A0, *+B15(24)
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L950
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L955
		nop	5
.L950:
		ldw	.d2t1	*+B15(36), A1
		nop	4
		ldw	.d2t1	*+B15(28), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L952
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L955
		nop	5
.L952:
		ldw	.d2t1	*+B15(32), A1
		nop	4
		ldw	.d2t1	*+B15(24), A0
		nop	4
		cmpgtu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L953
		nop	5
		mvk	.d1	0, A0
		b	.s2	.L955
		nop	5
.L953:
		ldw	.d2t1	*+B15(32), A1
		nop	4
		ldw	.d2t1	*+B15(24), A0
		nop	4
		cmpltu	.l1	A0, A1, A0
	[!A0]	b	.s2	.L954
		nop	5
		mvk	.d1	2, A0
		b	.s2	.L955
		nop	5
.L954:
		mvk	.d1	1, A0
.L955:
		mv	.d1	A0, A4
		addab	.d2	B15, 40, B15
		ret	.s2	B3
		nop	5
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
		subah	.d2	B15, 16, B15
		stw	.d2t2	B14, *+B15(32)
		stw	.d2t2	B3, *+B15(28)
		ldw	.d2t2	*+B14($DSBT_index(__c6xabi_DSBT_BASE)), B14
		nop	4
		stdw	.d2t1	A5:A4, *+B15(16)
		stdw	.d2t2	B5:B4, *+B15(8)
		lddw	.d2t2	*+B15(8), B5:B4
		nop	4
		lddw	.d2t1	*+B15(16), A5:A4
		nop	4
		callp	.s2	(__ucmpdi2), B3
		mv	.d1	A4, A0
		sub	.d1	A0, 1, A0
		mv	.d1	A0, A4
		ldw	.d2t2	*+B15(28), B3
		nop	4
		ldw	.d2t2	*+B15(32), B14
		nop	4
		addab	.d2	B15, 32, B15
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
